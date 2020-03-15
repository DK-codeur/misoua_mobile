import 'package:flutter/material.dart';
import 'package:misoua/widgets/une_card.dart';

import '../widgets/header.dart';
import './productPage_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {

    final Size mediaQ = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(),
              SizedBox(height: 14,),

              Padding(
                padding: const EdgeInsets.only(left:14.0, top: 8),
                child: Row(
                  children: <Widget>[
                    Text('Près de chez vous', style: TextStyle(fontSize: 16, fontFamily: 'Raleway')),
                  ],
                ),
              ), 

              SizedBox(
                height: mediaQ.height / 4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    UneCard(),
                    UneCard(),
                    UneCard(),
                  ],
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left:14.0, top: 8),
                child: Row(
                  children: <Widget>[
                    Text('Explorez', style: TextStyle(fontSize: 16, fontFamily: 'Raleway')),
                  ],
                ),
              ),

              Column(
                children: <Widget>[
                  buildCardExpl(),
                  buildCardExpl(),
                ],
              )

            ],
          )
        ),
      ),

    );
  }

  

  



    Card buildCardExpl() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)
        ),
      ),
      elevation: 1,
      margin: EdgeInsets.all(13),

      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).pushNamed(ProductPageScreen.routeName),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)
                  ),
                  child: Image.asset(
                    'images/bd.jpg',
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                bottom: 20.0,
                right: 10.0,
                child: Container(
                  
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.symmetric( vertical: 8, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Duplex', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', fontWeight: FontWeight.bold)),
                    SizedBox(width: 105,),
                    Text('200.000 F', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', )),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Port bouet', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', fontWeight: FontWeight.bold, color: Colors.grey)),
                    SizedBox(width: 105,),
                    Row(children: <Widget>[
                      Icon(Icons.star, size: 10,color: Colors.orange,),
                      Icon(Icons.star, size: 10,color: Colors.orange,),
                      Icon(Icons.star, size: 10, color: Colors.orange),
                      Icon(Icons.star_border, size: 10,color: Colors.orange,),
                    ],)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
    
  }
}