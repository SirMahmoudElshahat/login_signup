import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "MyFont",
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  width: 280,
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
                          EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "LOGIN",
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
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: 150,
            ),
          ),
          
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: 110,
            ),
          ),
        ],
      ),
    )
  );
  }
}
