List dataList = [
  {
    "name": "AC Services",
    "subMenu": [
      {"name": "Orders"},
      {"name": "Invoices"}
    ]
  },
  {
    "name": "Plumbling Service",
    "subMenu": [
      {"name": "Orders"},
      {"name": "Invoices"}
    ]
  },
  {
    "name": "Civil",
    "subMenu": [
      {"name": "Orders"},
      {"name": "Invoices"}
    ]
  },
  {
    "name": "Electrical",
    "subMenu": [
      {"name": "Orders"},
      {"name": "Invoices"}
    ]
    /*"subMenu": [
      {
        "name": "Promotions",
        "subMenu": [
          {"name": "Catalog Price Rule"},
          {"name": "Cart Price Rules"}
        ]
      },
      {
        "name": "Communications",
        "subMenu": [
          {"name": "Newsletter Subscribers"}
        ]
      },
      {
        "name": "SEO & Search",
        "subMenu": [
          {"name": "Search Terms"},
          {"name": "Search Synonyms"}
        ]
      },
      {
        "name": "User Content",
        "subMenu": [
          {"name": "All Reviews"},
          {"name": "Pending Reviews"}
        ]
      }
    ]*/
  },
];

class Menu {
  late String name;
  List<Menu> subMenu = [];

  Menu({required this.name, required this.subMenu});

  Menu.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['subMenu'] != null) {
      subMenu.clear();
      json['subMenu'].forEach((v) {
        subMenu.add(new Menu.fromJson(v));
      });
    }
  }
}
