// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Materials {
  final String name;
  final double price;
  final IconData icon;

Materials({required this.name, required this.price, required this.icon});

}

     final List<Materials> items =[
    Materials(name:"Desktop", price:200.0 , icon:Icons.desktop_mac , ),
    Materials(name:"Smart phone", price:1000.0 , icon:Icons.phone_android_outlined  ),
    Materials(name:"Cable", price:10.0 , icon:Icons.cable  ),
    Materials(name:"Mouse", price:200.0 , icon:Icons.mouse),
    Materials(name:"Smart screen", price:200.0 , icon:Icons.smart_screen ),
    Materials(name:"Tablet", price:1000.0 , icon:Icons.tablet),
    Materials(name:"Camera", price:1000.0 , icon:Icons.camera_alt),
];

class ItemWidget extends StatelessWidget{
  final Materials item;

  ItemWidget({required this.item});

  
  @override
  Widget build(BuildContext context) {
   return Card(
child: Padding(
  padding: EdgeInsets.all(19.0),
  child: Row(
    children: [
      Icon(item.icon),
      SizedBox(width: 14.0),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Text(item.name),
            SizedBox(height: 10.0),
            Text('\$${item.price.toStringAsFixed(2)}'),



           ], 
          ),
     ),

    IconButton(
      icon: Icon(Icons.edit),
      onPressed: (){
        //do something when the edit icon is clicked

        },
      )
    ],
   )
   ),
  
);
  }
}

class ItemListWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return ListView.builder(
       itemCount: items.length,
       itemBuilder: (BuildContext context, int index){
        return ItemWidget(item: items[index]);
      }
    );
  }

}
class DrawerWidget extends StatelessWidget{
  const DrawerWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          DrawerHeader(
            decoration:BoxDecoration(
              color: Colors.blue
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'images/Snapchat-18711034.jpg'
                      ),
                      
                    ),
                ),
                  SizedBox(height: 18.0,
                  ),
                  Center(
                    child: Text(
                      'Eleni Beyene',
                    style: TextStyle(
                      color: Colors.white,
                       fontSize: 18.0,
                    ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'elenibeyene5@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashbord'),
                onTap: (){
                  //update ui
                },
              ),
            ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ListTile(
                      leading: Icon(Icons.data_object),
                                title: Text('Items'),
                                onTap: (){
                                  //update ui
                                },
                              ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ListTile(
                      leading: Icon(Icons.settings),
                                title: Text('Setting'),
                                onTap: (){
                                  //update ui
                                },
                              ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ListTile(
                  leading: Icon(Icons.person),
                title: Text('Account'),
                onTap: (){
                  //update ui
                },
                           ),
              ),
            ],
           ),
       ); 
  }
}

void main() {
  
  runApp(MaterialApp(

    
    title: '{ }   List of Items',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.data_object),
            Text('  List of Items'),
          ],
        ),
        actions:const <Widget> [
          Icon(Icons.more_vert),
        ],
      ),
      drawer: DrawerWidget(),
      body: ItemListWidget(),
    ),
  ));
}
