// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'output_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OutputUnionTearOff {
  const _$OutputUnionTearOff();

// ignore: unused_element
  _NoOutput noOutput() {
    return const _NoOutput();
  }

// ignore: unused_element
  _Output output(Map<String, int> variables) {
    return _Output(
      variables,
    );
  }

// ignore: unused_element
  _Error error(String error) {
    return _Error(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OutputUnion = _$OutputUnionTearOff();

/// @nodoc
mixin _$OutputUnion {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noOutput(),
    @required Result output(Map<String, int> variables),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noOutput(),
    Result output(Map<String, int> variables),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noOutput(_NoOutput value),
    @required Result output(_Output value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noOutput(_NoOutput value),
    Result output(_Output value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $OutputUnionCopyWith<$Res> {
  factory $OutputUnionCopyWith(
          OutputUnion value, $Res Function(OutputUnion) then) =
      _$OutputUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$OutputUnionCopyWithImpl<$Res> implements $OutputUnionCopyWith<$Res> {
  _$OutputUnionCopyWithImpl(this._value, this._then);

  final OutputUnion _value;
  // ignore: unused_field
  final $Res Function(OutputUnion) _then;
}

/// @nodoc
abstract class _$NoOutputCopyWith<$Res> {
  factory _$NoOutputCopyWith(_NoOutput value, $Res Function(_NoOutput) then) =
      __$NoOutputCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoOutputCopyWithImpl<$Res> extends _$OutputUnionCopyWithImpl<$Res>
    implements _$NoOutputCopyWith<$Res> {
  __$NoOutputCopyWithImpl(_NoOutput _value, $Res Function(_NoOutput) _then)
      : super(_value, (v) => _then(v as _NoOutput));

  @override
  _NoOutput get _value => super._value as _NoOutput;
}

/// @nodoc
class _$_NoOutput implements _NoOutput {
  const _$_NoOutput();

  @override
  String toString() {
    return 'OutputUnion.noOutput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoOutput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noOutput(),
    @required Result output(Map<String, int> variables),
    @required Result error(String error),
  }) {
    assert(noOutput != null);
    assert(output != null);
    assert(error != null);
    return noOutput();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noOutput(),
    Result output(Map<String, int> variables),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noOutput != null) {
      return noOutput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noOutput(_NoOutput value),
    @required Result output(_Output value),
    @required Result error(_Error value),
  }) {
    assert(noOutput != null);
    assert(output != null);
    assert(error != null);
    return noOutput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noOutput(_NoOutput value),
    Result output(_Output value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noOutput != null) {
      return noOutput(this);
    }
    return orElse();
  }
}

abstract class _NoOutput implements OutputUnion {
  const factory _NoOutput() = _$_NoOutput;
}

/// @nodoc
abstract class _$OutputCopyWith<$Res> {
  factory _$OutputCopyWith(_Output value, $Res Function(_Output) then) =
      __$OutputCopyWithImpl<$Res>;
  $Res call({Map<String, int> variables});
}

/// @nodoc
class __$OutputCopyWithImpl<$Res> extends _$OutputUnionCopyWithImpl<$Res>
    implements _$OutputCopyWith<$Res> {
  __$OutputCopyWithImpl(_Output _value, $Res Function(_Output) _then)
      : super(_value, (v) => _then(v as _Output));

  @override
  _Output get _value => super._value as _Output;

  @override
  $Res call({
    Object variables = freezed,
  }) {
    return _then(_Output(
      variables == freezed ? _value.variables : variables as Map<String, int>,
    ));
  }
}

/// @nodoc
class _$_Output implements _Output {
  const _$_Output(this.variables) : assert(variables != null);

  @override
  final Map<String, int> variables;

  @override
  String toString() {
    return 'OutputUnion.output(variables: $variables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Output &&
            (identical(other.variables, variables) ||
                const DeepCollectionEquality()
                    .equals(other.variables, variables)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(variables);

  @override
  _$OutputCopyWith<_Output> get copyWith =>
      __$OutputCopyWithImpl<_Output>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noOutput(),
    @required Result output(Map<String, int> variables),
    @required Result error(String error),
  }) {
    assert(noOutput != null);
    assert(output != null);
    assert(error != null);
    return output(variables);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noOutput(),
    Result output(Map<String, int> variables),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (output != null) {
      return output(variables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noOutput(_NoOutput value),
    @required Result output(_Output value),
    @required Result error(_Error value),
  }) {
    assert(noOutput != null);
    assert(output != null);
    assert(error != null);
    return output(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noOutput(_NoOutput value),
    Result output(_Output value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (output != null) {
      return output(this);
    }
    return orElse();
  }
}

abstract class _Output implements OutputUnion {
  const factory _Output(Map<String, int> variables) = _$_Output;

  Map<String, int> get variables;
  _$OutputCopyWith<_Output> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$OutputUnionCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Error(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'OutputUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noOutput(),
    @required Result output(Map<String, int> variables),
    @required Result error(String error),
  }) {
    assert(noOutput != null);
    assert(output != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noOutput(),
    Result output(Map<String, int> variables),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noOutput(_NoOutput value),
    @required Result output(_Output value),
    @required Result error(_Error value),
  }) {
    assert(noOutput != null);
    assert(output != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noOutput(_NoOutput value),
    Result output(_Output value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OutputUnion {
  const factory _Error(String error) = _$_Error;

  String get error;
  _$ErrorCopyWith<_Error> get copyWith;
}
