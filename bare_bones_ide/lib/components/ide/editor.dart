import 'package:bare_bones_ide/components/toolbar.dart';
import 'package:bare_bones_ide/intents/line_comment_intent.dart';
import 'package:bare_bones_ide/intents/run_intent.dart';
import 'package:bare_bones_ide/intents/tab_intent.dart';
import 'package:bare_bones_ide/notifiers/ide_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class Editor extends StatelessWidget {
  void _run(BuildContext context) {
    final ideNotifier = context.read<IdeNotifier>();
    ideNotifier.runScript();
  }

  @override
  Widget build(BuildContext context) {
    final ideNotifier = context.watch<IdeNotifier>();
    final editingUnion = ideNotifier.editingUnion;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Toolbar(
          child: Text(
            'EDITOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              editingUnion.when(
                script: (script) {
                  return _ScriptEditor(script: script);
                },
                noScript: () {
                  return Container();
                },
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    /* Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          ...editingUnion.when(
                            script: (_) => [
                              CloseScriptBtn(),
                            ],
                            noScript: () => [
                              OpenScriptBtn(),
                              NewScriptBtn(),
                            ],
                          ),
                        ],
                      ),
                    ), */
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16, right: 16),
                      child: FloatingActionButton(
                        backgroundColor: Colors.green.shade300,
                        onPressed: () => _run(context),
                        child: Icon(
                          Icons.play_arrow,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OpenScriptBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open Script'),
      onPressed: () {},
    );
  }
}

class NewScriptBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('New Script'),
      onPressed: () {},
    );
  }
}

class CloseScriptBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Close Script'),
      onPressed: () {},
    );
  }
}

class _ScriptEditor extends StatefulWidget {
  final String script;
  const _ScriptEditor({Key key, @required this.script}) : super(key: key);

  @override
  __ScriptEditorState createState() => __ScriptEditorState();
}

class __ScriptEditorState extends State<_ScriptEditor> {
  TextEditingController _textController;
  final _scrollController = ScrollController();
  final _lineCountController = ScrollController();

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.script);

    _scrollController.addListener(() {
      if (_scrollController.offset != _lineCountController.offset) {
        _lineCountController.jumpTo(_scrollController.offset);
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _lineCountController.dispose();
    super.dispose();
  }

  void _onChanged(String script) {
    final notifier = context.read<IdeNotifier>();
    notifier.script = script;
    setState(() {});
  }

  int _lineCount() => _textController.text.split('\n').length;

  void _insertText(String textInsert) {
    final offset = _textController.selection.baseOffset;
    String text = _textController.text;
    text = text.substring(0, offset) +
        textInsert +
        text.substring(offset, text.length);

    _textController.value = TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(
        offset: offset + textInsert.length,
      ),
    );
  }

  void _insertTab() => _insertText(' ' * 4);

  // TODO support removal of comments
  void _insertComment() => _insertText('// ');

  void _runScript() {
    final notifier = context.read<IdeNotifier>();
    notifier.runScript();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryScrollController(
          controller: _lineCountController,
          child: _LineCounter(lineCount: _lineCount()),
        ),
        Expanded(
          child: Shortcuts(
            shortcuts: {
              LogicalKeySet(LogicalKeyboardKey.tab): const TabIntent(),
              LogicalKeySet(
                LogicalKeyboardKey.control,
                LogicalKeyboardKey.keyL,
              ): const LineCommentIntent(),
              LogicalKeySet(
                LogicalKeyboardKey.control,
                LogicalKeyboardKey.keyR,
              ): const RunIntent(),
            },
            child: Actions(
              actions: {
                TabIntent: CallbackAction<TabIntent>(
                  onInvoke: (intent) => _insertTab(),
                ),
                LineCommentIntent: CallbackAction<LineCommentIntent>(
                  onInvoke: (intent) => _insertComment(),
                ),
                RunIntent: CallbackAction<RunIntent>(
                  onInvoke: (_) => _runScript(),
                )
              },
              child: TextField(
                controller: _textController,
                scrollController: _scrollController,
                onChanged: _onChanged,
                // Makes the TextField take up all space
                minLines: null,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 12, left: 8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _LineCounter extends StatelessWidget {
  const _LineCounter({Key key, @required this.lineCount}) : super(key: key);
  final int lineCount;

  double logBase10(num number) => math.log(number) / math.ln10;

  @override
  Widget build(BuildContext context) {
    final lineCountWidth = logBase10(lineCount).truncate() + 1;
    return Container(
      color: Color(0xFF31373a),
      width: 14.0 * lineCountWidth,
      child: ListView.builder(
        controller: PrimaryScrollController.of(context),
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 8),
        itemCount: lineCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Center(
              child: Text(
                '${index + 1}'.padLeft(lineCountWidth),
                style: TextStyle(fontSize: 16, letterSpacing: 1.2),
              ),
            ),
          );
        },
      ),
    );
  }
}
