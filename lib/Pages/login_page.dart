import "package:flutter/material.dart";

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
              "Welcome",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
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
                    ElevatedButton(
                        onPressed: () {
                          print("Hello neeraj");
                        },
                        child: Text("login"))
                  ],
                ))
          ],
        ));
  }
}
