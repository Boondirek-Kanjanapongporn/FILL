class KeepExplore {
  String content;
  String date;
  String image;

  KeepExplore(this.content, this.date, this.image);
}

List<KeepExplore> explores = exploresDataList
    .map((item) =>
        KeepExplore(listcontent(item), listdate(item), listimage(item)))
    .toList();

String listcontent(List templist) {
  templist.asMap();
  return templist[0];
}

String listdate(List templist) {
  templist.asMap();
  return templist[1];
}

String listimage(List templist) {
  templist.asMap();
  return templist[2];
}

var exploresDataList = [
  [
    "Explore special deals\n@FillRewards",
    ": Until 31 Jul 2021",
    "assets/images/explore_fillreward.png"
  ],
  [
    "Order THE BTS MEAL\nnow with ฿40 off",
    ": Until 06 Aug 2021",
    "assets/images/explore_btsmeal.png"
  ],
  [
    "Discounts from your favourite restaurants",
    ": Until 25 Jul 2021",
    "assets/images/explore_fillfood.png"
  ],
  [
    "Explore special deals\n@FillRewards",
    ": Until 31 Jul 2021",
    "assets/images/explore_fillreward.png"
  ],
  [
    "Order THE BTS MEAL\nnow with ฿40 off",
    ": Until 06 Aug 2021",
    "assets/images/explore_btsmeal.png"
  ],
  [
    "Discounts from your favourite restaurants",
    ": Until 25 Jul 2021",
    "assets/images/explore_fillfood.png"
  ]
];
