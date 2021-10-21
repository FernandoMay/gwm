import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gwm/constants.dart';
import 'package:gwm/registerViewController.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool topico = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.all(4.0),
          middle: Text("GWM"),
        ),
        // resizeToAvoidBottomInset: true,
        child: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: topico ? 0 : 90),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 32.0),
                      child: Text(
                        "Iniciar sesión",
                        style: sonoroH3Blue,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 26.0),
                      child: Text(
                        "Usuario",
                        style: sonoroH1Black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CupertinoTextField(
                        padding: EdgeInsets.all(12.0),
                        onChanged: (value) => print(value),
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.emailAddress,
                        prefix: Container(
                            height: 20.0,
                            margin: EdgeInsets.only(left: 12.0),
                            child: Icon(Icons.person)),
                        // placeholder: "Usuario",
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: greyLightColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 26.0),
                      child: Text(
                        "Contraseña",
                        style: sonoroH1Black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CupertinoTextField(
                        padding: EdgeInsets.all(12.0),
                        onChanged: (value) => print(value),
                        cursorColor: primaryColor,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        prefix: Container(
                            height: 20.0,
                            margin: EdgeInsets.only(left: 12.0),
                            child: Icon(Icons.lock)),
                        // placeholder: "Contraseña",
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: greyLightColor),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin:
                          EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                        child: Text(
                          "Regístro",
                          style: sonoroH1Blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: Container(
                    width: double.infinity,
                    child: CupertinoButton(
                      color: secondaryColor,
                      // padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                      child: Text("Iniciar sesión"),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Plans(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
