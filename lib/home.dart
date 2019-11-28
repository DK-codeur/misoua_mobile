import 'package:flutter/material.dart';
import 'package:misoua/detail_page.dart';
import 'package:misoua/login..dart';
import 'package:misoua/search.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "/home";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Mi', style: TextStyle(fontSize: 30, fontFamily: 'Raleway')),
                        Text('Soua', style: TextStyle(fontSize: 30, fontFamily: 'Raleway', fontWeight: FontWeight.bold))
                      ],
                    ),

                    IconButton(
                      icon: Icon(Icons.account_circle),
                      onPressed: () => Navigator.of(context).pushNamed(LoginPage.routeName),
                    )
                  ],
                ),
              ), 

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 3),
                      height: 42,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.5, 0.5),
                            color: Colors.black45,
                            blurRadius: 4
                          )
                        ]
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search, size: 30,),
                            Text('Search here')
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(9, 64, 120, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )
                      ),
                      child: IconButton(
                        icon : Icon(Icons.settings, color: Colors.white),
                        onPressed: () => Navigator.of(context).pushNamed(FormPage.routeName),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 14,),

              Padding(
                padding: const EdgeInsets.only(left:14.0, top: 8),
                child: Row(
                  children: <Widget>[
                    Text('Pres de vous chez vous', style: TextStyle(fontSize: 16, fontFamily: 'Raleway')),
                  ],
                ),
              ), 


              SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    buildCard(),
                    buildCard(),
                    buildCard(),
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

  Card buildCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: EdgeInsets.all(10),

      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                ),
                child: Image.asset(
                  'images/bed.jpg',
                  height: 160.0,
                  // width: double.infinity,
                  fit: BoxFit.cover,
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
            padding: EdgeInsets.symmetric( vertical: 6, horizontal: 0),
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
                onTap: () => Navigator.of(context).pushNamed(DetailPage.routeName),
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