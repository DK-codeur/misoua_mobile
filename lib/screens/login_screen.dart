import 'package:flutter/material.dart';
import 'package:misoua/shared/colors.dart';


class LoginScreen extends StatelessWidget {

  static const routeName = '/login';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/LOG.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(flex: 2,),
                  Container(
                    child: Text(
                      'Misoua',
                      style: TextStyle(fontSize: 30, fontFamily: 'Raleway', fontWeight: FontWeight.bold, color: Colors.white)
                    ),
                  ),
                  Spacer(flex: 2,),
                  // myRaisedButton('Login With FaceBook', Icons.face, Colors.blue, Colors.white),
                  SizedBox(height: 20,),
                  myRaisedButton('Connexion par code OTP', Icons.phone_android, blueColor, Colors.white),
                  Spacer(flex: 1,),
                  Text('OR', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                  Spacer(flex: 1,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Email",
                                icon: Icon(Icons.mail_outline)
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Password",
                                icon: Icon(Icons.lock_outline)
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),

                        InkWell(
                          child: Container(
                            child: Text("Havn't Account? Sign up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                        )


                      ],
                    ),
                  ),
                  Spacer(flex: 2,),
                  customButton(),
                  Spacer(flex: 2,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget myRaisedButton(String data, IconData iconData, Color back, Color textColor) {
    return RaisedButton(
        onPressed: () => null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0))
      ),
      color: back,
      child: Container(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, color: Colors.white,),
            SizedBox(width: 10.0,),
            Text(data, style: TextStyle(color: textColor),)
          ],
        ),
      ),
    );
  }

  Widget customButton() {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40.0)),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.deepPurple[900], Colors.purple],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 1.5),
                blurRadius: 1.5,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: () => null,
              child: Center(
                child: customText("Login", size: 20, weight: FontWeight.bold),
              )),
        ),
      ),
    );
  }


  Widget customText(String data, {double size, FontWeight weight, Color color: Colors.white}) {
    return Text(data, style: TextStyle(color: color, fontWeight: weight, fontSize: size,), textAlign: TextAlign.center,);
  }
}
