class Item {
  final String id;
  final String bookname;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.bookname, this.desc, this.price, this.color, this.image);
}

final products = [
  Item("apsara-001", "fault in our stars", "mostly sailing book", 999, "blue",
      "image"),
  Item("apsara-001", "fault in our stars", "mostly sailing book", 999, "pink",
      "image"),
  Item("apsara-001", "fault in our stars", "mostly sailing book", 999, "pink",
      "image"),
  Item("apsara-001", "fault in our stars", "mostly sailing book", 999, "pink",
      "image"),
  Item("apsara-001", "fault in our stars", "mostly sailing book", 999, "pink",
      "https://upload.wikimedia.org/wikipedia/en/a/a9/The_Fault_in_Our_Stars.jpg")
];
