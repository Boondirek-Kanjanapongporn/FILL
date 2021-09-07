class SpecialCouponModel {
  String name;
  String text;
  String image;

  SpecialCouponModel(this.name, this.text, this.image);
}

List<SpecialCouponModel> specials = specialDataList
    .map((item) =>
        SpecialCouponModel(listname(item), listtext(item), listimage(item)))
    .toList();

String listname(List templist) {
  templist.asMap();
  return templist[0];
}

String listtext(List templist) {
  templist.asMap();
  return templist[1];
}

String listimage(List templist) {
  templist.asMap();
  return templist[2];
}

var specialDataList = [
  ["CIMB", "Order now!", "assets/images/special_CIMB.jpg"],
  ["Citi", "Order now!", "assets/images/special_Citi.jpg"],
  ["KBank", "Order now!", "assets/images/special_KBank.jpg"],
  ["Krungsri", "Order now!", "assets/images/special_Krungsri.jpg"],
  ["Visa", "Order now!", "assets/images/special_Visa.jpg"],
  ["GSB", "Order now!", "assets/images/special_GSB.jpg"]
];
