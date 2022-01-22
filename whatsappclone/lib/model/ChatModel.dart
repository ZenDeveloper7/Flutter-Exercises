import 'package:freezed_annotation/freezed_annotation.dart';
part 'ChatModel.freezed.dart';

@freezed
class ChatModel with _$ChatModel{

  const factory ChatModel({
    required  String name,
  required String message,
  required String time,
  required String imageUrl}) = _ChatModel;

}
