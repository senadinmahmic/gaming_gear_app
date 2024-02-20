class CustomCardModel {
  final String image;
  final String title;
  final String subtitle;
  final String? description;

  CustomCardModel({
    required this.image,
    required this.title,
    required this.subtitle,
    this.description,
  });
}
