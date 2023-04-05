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

void main() {
  
  runApp(MaterialApp(
    title: '{ }   List of Items',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('{ }   List of Items'),
        actions:const <Widget> [
          
          Icon(Icons.more_vert),

        ],
      ),
     
      body: ItemListWidget(),
    ),
  )
  );
}
