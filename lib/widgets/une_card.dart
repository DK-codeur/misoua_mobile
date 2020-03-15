import 'package:flutter/material.dart';

class UneCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Size mediaQ = MediaQuery.of(context).size;
    
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: mediaQ.height /6.5,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Positioned(
              //   bottom: 20.0,
              //   right: 10.0,
              //   child: Container(
                  
              //   ),
              // ),
            ],
          ),

          Container(
            padding: EdgeInsets.only(left: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Duplex', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', fontWeight: FontWeight.bold)),
                Text('200.000 F', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', )),
              ],
            ),
          )
        ],
      ),
    );
    
  }
  }






  //   padding: EdgeInsets.symmetric( vertical: 6, horizontal: 0),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Text('Duplex', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', fontWeight: FontWeight.bold)),
          //           SizedBox(width: 105,),
          //           Text('200.000 F', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', )),
          //         ],
          //       ),

          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Text('Port bouet', style: TextStyle(fontSize: 12, fontFamily: 'CenturyGothic', fontWeight: FontWeight.bold, color: Colors.grey)),
          //           SizedBox(width: 105,),
          //           Row(children: <Widget>[
          //             Icon(Icons.star, size: 10,color: Colors.orange,),
          //             Icon(Icons.star, size: 10,color: Colors.orange,),
          //             Icon(Icons.star, size: 10, color: Colors.orange),
          //             Icon(Icons.star_border, size: 10,color: Colors.orange,),
          //           ],)
          //         ],
          //       ),
          //     ],
          //   ),