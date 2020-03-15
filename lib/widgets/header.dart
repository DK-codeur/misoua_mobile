import 'package:flutter/material.dart';
import 'package:misoua/screens/login_screen.dart';
import 'package:misoua/shared/colors.dart';
import 'package:misoua/widgets/search.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Text('Mi',
                      style: TextStyle(fontSize: 30, fontFamily: 'Raleway', color: Colors.blue)
                    ),
                    Text('Soua',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold))
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.person_outline),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(LoginScreen.routeName),
                )
              ],
            ),
          ),

          Container(
            
            child: Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.1, 0.1),
                              color: Colors.blueAccent,
                              blurRadius: 3
                          )
                        ]
                      ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefix: Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
                        hintText: 'Search here',
                        suffixIcon: Material(
                          shadowColor: Colors.blue,
                          elevation: 7.0,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Icon(
                            Icons.search,
                            color: blueColor,
                          )
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15,),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    // width: 90,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )),
                    child: IconButton(
                      icon: Icon(Icons.settings, color: Colors.white),
                      onPressed: () => Navigator.of(context)
                          .pushNamed(AdvanceSearchScreen.routeName),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
