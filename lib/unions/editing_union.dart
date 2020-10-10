import 'package:freezed_annotation/freezed_annotation.dart';

part 'editing_union.freezed.dart';

@freezed
abstract class EditingUnion with _$EditingUnion {
  const factory EditingUnion.script(String script) = _Script;
  const factory EditingUnion.noScript() = _NoScript;
}
