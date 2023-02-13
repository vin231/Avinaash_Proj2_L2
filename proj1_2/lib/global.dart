class reg {
  String userid;
  String pwd;
  String email;
  String name;

 getUserData(){
   return [userid,pwd,email,name];
 } 

}

class MyData {
  final String userid;
  MyData(this.userid);
}

class GlobalVars {
  static reg myreg;
}

reg user = new reg();

class Place {
  String image;
  String name;
  String location;
  String describe;

  Place({this.image, this.name, this.location, this.describe});
}

  List favs = [
    Place(
        image: 'images/hdb.jpg',
        name: 'Home',
        location: 'Ang Mo Kio',
        describe:
            'Block 50, Ang Mo Kio Avenue 5, S888999'),
    Place(
        image: 'images/office.jpg',
        name: 'Work',
        location: 'Jurong',
        describe:
            '85, Jurong Port Road, S353098'),
    Place(
        image: 'images/ion.jpg',
        name: 'ION Orchard',
        location: 'Orchard',
        describe:
            '2, Orchard Turn, Singapore 238801'),
    Place(
        image: 'images/mcd.jpg',
        name: 'Mcdonalds J-One',
        location: 'Woodlands',
        describe:
            '21, Woodlands Drive 50, S738042'),
  ];

