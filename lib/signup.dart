import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "SIGNUP",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "MyFont",
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  width: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                        hintText: "example@mail.com",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.purple[900],
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                        hintText: "Password",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 92, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    )),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Colors.purple[200],
                      )),
                      Text("OR"),
                      Expanded(
                          child: Divider(
                        color: Colors.purple[200],
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 0),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        width: 22,
                        color: Colors.purple[500],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 0),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        width: 22,
                        color: Colors.purple[500],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 0),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        width: 22,
                        color: Colors.purple[500],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: 130,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 80,
            ),
          ),
        ],
      ),
    ));
  }
}
