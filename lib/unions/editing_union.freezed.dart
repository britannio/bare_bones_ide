// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'editing_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditingUnionTearOff {
  const _$EditingUnionTearOff();

// ignore: unused_element
  _Script script(String script) {
    return _Script(
      script,
    );
  }

// ignore: unused_element
  _NoScript noScript() {
    return const _NoScript();
  }
}

/// @nodoc
// ignore: unused_element
const $EditingUnion = _$EditingUnionTearOff();

/// @nodoc
mixin _$EditingUnion {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result script(String script),
    @required Result noScript(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result script(String script),
    Result noScript(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result script(_Script value),
    @required Result noScript(_NoScript value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result script(_Script value),
    Result noScript(_NoScript value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EditingUnionCopyWith<$Res> {
  factory $EditingUnionCopyWith(
          EditingUnion value, $Res Function(EditingUnion) then) =
      _$EditingUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditingUnionCopyWithImpl<$Res> implements $EditingUnionCopyWith<$Res> {
  _$EditingUnionCopyWithImpl(this._value, this._then);

  final EditingUnion _value;
  // ignore: unused_field
  final $Res Function(EditingUnion) _then;
}

/// @nodoc
abstract class _$ScriptCopyWith<$Res> {
  factory _$ScriptCopyWith(_Script value, $Res Function(_Script) then) =
      __$ScriptCopyWithImpl<$Res>;
  $Res call({String script});
}

/// @nodoc
class __$ScriptCopyWithImpl<$Res> extends _$EditingUnionCopyWithImpl<$Res>
    implements _$ScriptCopyWith<$Res> {
  __$ScriptCopyWithImpl(_Script _value, $Res Function(_Script) _then)
      : super(_value, (v) => _then(v as _Script));

  @override
  _Script get _value => super._value as _Script;

  @override
  $Res call({
    Object script = freezed,
  }) {
    return _then(_Script(
      script == freezed ? _value.script : script as String,
    ));
  }
}

/// @nodoc
class _$_Script implements _Script {
  const _$_Script(this.script) : assert(script != null);

  @override
  final String script;

  @override
  String toString() {
    return 'EditingUnion.script(script: $script)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Script &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(script);

  @override
  _$ScriptCopyWith<_Script> get copyWith =>
      __$ScriptCopyWithImpl<_Script>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result script(String script),
    @required Result noScript(),
  }) {
    assert(script != null);
    assert(noScript != null);
    return script(this.script);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result script(String script),
    Result noScript(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (script != null) {
      return script(this.script);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result script(_Script value),
    @required Result noScript(_NoScript value),
  }) {
    assert(script != null);
    assert(noScript != null);
    return script(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result script(_Script value),
    Result noScript(_NoScript value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (script != null) {
      return script(this);
    }
    return orElse();
  }
}

abstract class _Script implements EditingUnion {
  const factory _Script(String script) = _$_Script;

  String get script;
  _$ScriptCopyWith<_Script> get copyWith;
}

/// @nodoc
abstract class _$NoScriptCopyWith<$Res> {
  factory _$NoScriptCopyWith(_NoScript value, $Res Function(_NoScript) then) =
      __$NoScriptCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoScriptCopyWithImpl<$Res> extends _$EditingUnionCopyWithImpl<$Res>
    implements _$NoScriptCopyWith<$Res> {
  __$NoScriptCopyWithImpl(_NoScript _value, $Res Function(_NoScript) _then)
      : super(_value, (v) => _then(v as _NoScript));

  @override
  _NoScript get _value => super._value as _NoScript;
}

/// @nodoc
class _$_NoScript implements _NoScript {
  const _$_NoScript();

  @override
  String toString() {
    return 'EditingUnion.noScript()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoScript);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result script(String script),
    @required Result noScript(),
  }) {
    assert(script != null);
    assert(noScript != null);
    return noScript();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result script(String script),
    Result noScript(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noScript != null) {
      return noScript();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result script(_Script value),
    @required Result noScript(_NoScript value),
  }) {
    assert(script != null);
    assert(noScript != null);
    return noScript(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result script(_Script value),
    Result noScript(_NoScript value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noScript != null) {
      return noScript(this);
    }
    return orElse();
  }
}

abstract class _NoScript implements EditingUnion {
  const factory _NoScript() = _$_NoScript;
}
