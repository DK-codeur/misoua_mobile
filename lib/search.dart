import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 64, 120, 1),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(9, 64, 120, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.location_searching),
            Text('Misoua', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ],
        ),

        actions: <Widget>[
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
            child: FlutterLogo(),
          ),
          SizedBox(width: 6,)
        ],
      ),
      
      body: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 4,
                      width: 70,
                      color: Colors.grey.shade300,
                    ),
                  )
                ],
              ),

              Text('Recherche', 
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              Text('Recherchez les plus belle maison pres de vous',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
              ),

              SizedBox(height: 15,),

              Text('Ville/ commune'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ex: Port bouet',
                    hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue.shade200),
                  ),
                ),
              ),

              SizedBox(height: 10,),
          

              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Date pub'),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 1),
                          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_today, size: 18),
                              border: InputBorder.none,
                              hintText: '24 Oct 2019',
                              hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue.shade200),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Type'),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'vente/location',
                              hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue.shade200),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 10,),
            

              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Budget'),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Text('-', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                              ),

                              Container(
                                child: Center(child: Text('12000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
                              ),

                              InkWell(
                                onTap: () {},
                                child: Text('+', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Code pro'),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'P43OM',
                              hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue.shade200),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.map, color: Colors.blue),
                  ),

                  Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: GestureDetector(
                        
                        child: Text(
                          'Search',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17, letterSpacing: 1.2),
                        ),
                      ),
                    ),

                  )
                ],
              ),
              SizedBox(height: 10,),

              Divider(),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     Text('Promo this Month', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              //     Icon(Icons.arrow_forward_ios, size: 15,)
              //   ],
              // ),
              SizedBox(height: 5,),

              // SizedBox(
              //   height: 55,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: <Widget>[
              //       Container(
              //         margin: EdgeInsets.symmetric(horizontal: 5),
              //         padding: EdgeInsets.all(7),
              //         decoration: BoxDecoration(
              //           border: Border.all(color: Colors.grey[300]),
              //           borderRadius: BorderRadius.circular(20)
              //         ),
              //         child: Row(
              //           children: <Widget>[
              //             Container(
              //               width: 55,
              //               height: 50,
              //               child: Icon(Icons.card_giftcard),
              //             ),
              //             Container(
              //               padding: EdgeInsets.only(right: 4),
              //               width: 90,
              //               height: 60,
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: <Widget>[
              //                   Text('60% Disc', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),
              //                   Text('Up to \$100')
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       ),

              //       Container(
              //         margin: EdgeInsets.symmetric(horizontal: 5),
              //         padding: EdgeInsets.all(7),
              //         decoration: BoxDecoration(
              //           border: Border.all(color: Colors.grey[300]),
              //           borderRadius: BorderRadius.circular(20)
              //         ),
              //         child: Row(
              //           children: <Widget>[
              //             Container(
              //               width: 55,
              //               height: 60,
              //               child: Icon(Icons.pin_drop, color: Colors.teal.shade300),
              //             ),
              //             Container(
              //               padding: EdgeInsets.only(right: 4),
              //               width: 90,
              //               height: 60,
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: <Widget>[
              //                   Text('40% Disc', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),
              //                   Text('Up to \$480')
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       ),

              //       Container(
              //         margin: EdgeInsets.symmetric(horizontal: 5),
              //         padding: EdgeInsets.all(7),
              //         decoration: BoxDecoration(
              //           border: Border.all(color: Colors.grey[300]),
              //           borderRadius: BorderRadius.circular(20)
              //         ),
              //         child: Row(
              //           children: <Widget>[
              //             Container(
              //               width: 55,
              //               height: 60,
              //               child: Icon(Icons.flip_to_front, color: Colors.teal.shade300),
              //             ),
              //             Container(
              //               padding: EdgeInsets.only(right: 4),
              //               width: 90,
              //               height: 60,
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: <Widget>[
              //                   Text('40% Disc', style: TextStyle(color: Color.fromRGBO(9, 64, 120, 1), fontWeight: FontWeight.bold)),
              //                   Text('Up to \$480')
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}