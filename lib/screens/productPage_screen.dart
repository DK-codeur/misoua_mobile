import 'package:flutter/material.dart';

class ProductPageScreen extends StatelessWidget {
  static const routeName = '/ProductPageScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height /1.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'images/bd.jpg',
                    )
                  )
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(top: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      onPressed: () => Navigator.of(context).pop((context)),
                    ),
                    
                    Icon(Icons.favorite_border, color: Colors.white,),
                  ],
                ),
              ),

              Container(
                height: 270,
                padding: EdgeInsets.only(top: 230),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 251, 234, 0.7),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Room', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),),
                    ),
                    
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 251, 234, 0.7),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Room', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 251, 234, 0.7),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Room', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 251, 234, 0.7),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Room', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 251, 234, 0.7),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Room', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 251, 234, 0.7),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Room', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 275),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 16, 30, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.bookmark_border, color: Colors.deepOrange,),
                          Text('Recommended Rooms', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        ],
                      ),

                      SizedBox(height: 7,),

                      Row(
                        children: <Widget>[
                          Text('Duplex avec piscine', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                          SizedBox(width: 40,),
                          CircleAvatar(backgroundColor: Colors.teal.shade100, child: Icon(Icons.map, color: Colors.teal,)),
                        ],
                      ),

                      SizedBox(height: 7,),

                      Row(
                        children: <Widget>[
                          Icon(Icons.star_border, color: Colors.teal),
                          Text('4,6', style: TextStyle(color: Colors.grey,),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            height: 15,
                            width: 1,
                            decoration: BoxDecoration(
                              border: Border.all()
                            ),
                          ),
                          Text('123 Reviews', style: TextStyle(color: Colors.grey,),),

                        ],
                      ),

                      SizedBox(height: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('loremmmm lorem lorem jucbs dk yzkh', style: TextStyle(color: Colors.grey,),),
                          Text('loremmmm lorem lorem jucbs trkeuejl yzkh', style: TextStyle(color: Colors.grey,),),
                          Text('loremmmm lorem lorem jucbs dk yz', style: TextStyle(color: Colors.grey,),),
                        ],
                      ),

                      SizedBox(height: 15,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                
                                height: 40,
                                width: 45,
                                color: Color.fromRGBO(231, 251, 234, 0.7),
                                child: Icon(
                                  Icons.wifi, color: Color.fromRGBO(9, 64, 120, 1), 
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text('wifi', style: TextStyle(color: Colors.grey))
                              
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              Container(
                                
                                height: 40,
                                width: 45,
                                color: Color.fromRGBO(231, 251, 234, 0.7),
                                child: Icon(
                                  Icons.local_pizza, color: Color.fromRGBO(9, 64, 120, 1), 
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text('Food', style: TextStyle(color: Colors.grey))
                              
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              Container(
                                
                                height: 40,
                                width: 45,
                                color: Color.fromRGBO(231, 251, 234, 0.7),
                                child: Icon(
                                  Icons.satellite, color: Color.fromRGBO(9, 64, 120, 1), 
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text('Gym', style: TextStyle(color: Colors.grey))
                              
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              Container(
                                
                                height: 40,
                                width: 45,
                                color: Color.fromRGBO(231, 251, 234, 0.7),
                                child: Icon(
                                  Icons.hot_tub, color: Color.fromRGBO(9, 64, 120, 1), 
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text('Hotel', style: TextStyle(color: Colors.grey))
                              
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              Container(
                                
                                height: 40,
                                width: 45,
                                color: Color.fromRGBO(231, 251, 234, 0.7),
                                child: Icon(
                                  Icons.more_horiz, color: Color.fromRGBO(9, 64, 120, 1), 
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text('More', style: TextStyle(color: Colors.grey))
                              
                            ],
                          ),

                          
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(9, 64, 120, 1),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'JE SUIS INTERRESSE',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17, letterSpacing: 1.2),
                                ),
                              ),
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                ),
                
              )



              
            ],
          ),

         
        ],
      ),


    );
  }
}