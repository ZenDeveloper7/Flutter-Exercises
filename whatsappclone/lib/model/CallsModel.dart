import 'package:freezed_annotation/freezed_annotation.dart';

part 'CallsModel.freezed.dart';


@freezed
class CallsModel with _$CallsModel {
  const factory CallsModel(
      {required String name,
      required String time,
      required String imageUrl}) = _CallsModel;
}
