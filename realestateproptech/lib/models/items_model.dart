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
        'src'),
    Item('Big villa', "House", "thuraipakkam,TamilNadu", 350000, 'src'),
    Item('Luxurious Apartment', 'Apartment', 'perungulathur,TamilNadu', 550000,
        'src'),
  ];
  static List<Item> nearby = [
    Item('student Apartment', 'Apartment', 'thambaram,TamilNadu', 45000, 'src'),
    Item('smallHouse', 'House', 'vizhupuram,TamilNadu', 50000, 'src'),
  ];
}
