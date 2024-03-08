import 'package:yes_no_maybe_app/domain/entities/message.dart';

class YesNoModel {
  String answer;
  bool forced;
  String? image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

//factory pattern.
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
      answer: json['answer'], forced: json['forced'], image: json['image']);

  Message toMessageEntitiy() => Message(
      text: answer == 'Yes' ? 'Si' : 'No',
      fromWho: FromWho.hers,
      imageUrl: (image != null)
          ? image
          : 'https://upload.wikimedia.org/wikipedia/commons/6/65/No-Image-Placeholder.svg');
}
