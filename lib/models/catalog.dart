class CatalogModel {
  static final items = [
    Item("apsara-001", "Ijoriyaa ", "mostly sailing book", 999, "blue",
        "https://media.thuprai.com/__sized__/front_covers/Ijoriya_by_subin_bhattarai_-f-thumbnail-280x405-70.jpg"),
    Item("apsara-002", "It Ends With Us", "mostly sailing book", 999, "pink",
        "https://4.bp.blogspot.com/-CDuBRNrcv9g/WBo-FKvDWoI/AAAAAAAADeI/cLa5i9qwmbQsMOM5GRrdY1LnqX0ieWCFwCLcB/s1600/it-ends-with-us.jpg"),
    Item("apsara-003", "It starts With Us", "mostly sailing book", 999, "pink",
        "https://tse3.mm.bing.net/th?id=OIP.XkiKLh_NoyfxNfLmcrqBXAHaLg&pid=Api&P=0"),
    Item("apsara-004", "Muna-Madan", "mostly sailing book", 999, "pink",
        "https://images.gr-assets.com/books/1373541710l/6771558.jpg"),
    Item("apsara-005", "fault in our stars", "mostly sailing book", 999, "pink",
        "https://upload.wikimedia.org/wikipedia/en/a/a9/The_Fault_in_Our_Stars.jpg"),
    Item("apsara-006", "fault in our stars", "mostly sailing book", 999, "pink",
        "https://upload.wikimedia.org/wikipedia/en/a/a9/The_Fault_in_Our_Stars.jpg"),
    Item("apsara-007", "fault in our stars", "mostly sailing book", 999, "pink",
        "https://upload.wikimedia.org/wikipedia/en/a/a9/The_Fault_in_Our_Stars.jpg")
  ];
}

class Item {
  final String id;
  final String bookname;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.bookname, this.desc, this.price, this.color, this.image);
}
