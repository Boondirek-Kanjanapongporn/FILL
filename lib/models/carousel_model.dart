class CarouselModel {
  String image;
  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsList.map((item) => CarouselModel(item)).toList();

var carouselsData = [
  {"image": "assets/images/carousel_flash.png"},
  {"image": "assets/images/carousel_fillman.png"},
  {"image": "assets/images/carousel_dinner.png"},
];

var carouselsList = [
  "assets/images/carousel_flash.png",
  "assets/images/carousel_fillman.png",
  "assets/images/carousel_dinner.png"
];
