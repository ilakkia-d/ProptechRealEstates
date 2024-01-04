class Item {
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  double? price;

  Item(this.title, this.category, this.location, this.price, this.thumb_url);
//lets declare dummy data so we can display it
//  can replace this data by another from an API or your database
// made two list
// - on for the recommendation
  //UI only
  //-  for the nearby location
  // used pixels to get some picture,"https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg"
  static List<Item> recommendation = [
    Item('Modern House for Renting', 'House', 'thambaram,Tamilnadu', 250000,
        'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg'),
    Item('Big villa', "House", "thuraipakkam,TamilNadu", 350000,
        'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg'),
    Item('Luxurious Apartment', 'Apartment', 'perungulathur,TamilNadu', 550000,
        'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg'),
  ];
  static List<Item> nearby = [
    Item('student Apartment', 'Apartment', 'thambaram,TamilNadu', 45000,
        'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg'),
    Item('smallHouse', 'House', 'vizhupuram,TamilNadu', 50000,
        'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg'),
  ];
}
