import "package:firstflutterproject/utils/routes.dart";
import "package:flutter/material.dart";

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assests/images/undraw_secure_login_pdn4.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30.0,
            ),
            //  sized box provide the space between image and the text welcome of height 5o
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your name",
                      labelText: "Username",
                    ),
                    onChanged: (value) => {
                      name = value,
                      setState(() {
                        // name = value;
                      })
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter your password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                  // )
                  InkWell(
                    onTap: ()  async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                                          Navigator.pushNamed(context, MyRoutes.homeRoute);

                    },
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 140,
                      alignment: Alignment.center,
                      height: 50,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        shape:
                            changeButton ? BoxShape.circle : BoxShape.rectangle,
                        color: Colors.deepPurple,
                        // borderRadius: BorderRadius.circular(changeButton?20:8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
