import 'package:freezed_annotation/freezed_annotation.dart';

part 'output_union.freezed.dart';

@freezed
abstract class OutputUnion with _$OutputUnion {
  const factory OutputUnion.noOutput() = _NoOutput;
  const factory OutputUnion.output(Map<String, int> variables) = _Output;
  const factory OutputUnion.error() = _Error;
}
