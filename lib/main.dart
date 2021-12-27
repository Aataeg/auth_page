import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(color: Color(0xFFECEFF1), width: 2),
    );

    const linkTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xFF0079D0),
    );

    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset : false,
          body:
      Container(
        padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
        width: double.infinity,
          child: Column(
            children: [
              SizedBox(width: 103, height: 80, child:  Image(image: AssetImage('assets/dart-logo 1.png'),),),
              SizedBox(height: 19,),
              const SizedBox(
                width: 244,
                child: Text('Введите логин в виде 10 цифр номера телефона',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
                color: Color(0x99000000)),)
 //                 style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),)
                ),
              SizedBox(height: 20,),
              const SizedBox(
                width: 244,
                height: 34,
                child: TextField(
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    hintText: '+7',
                    contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    hintStyle: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4), ),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              const SizedBox(
                width: 244,
                height: 34,
                child: TextField(
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4)),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    hintText: 'Пароль',
                    contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    hintStyle: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4), ),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(height: 42, width: 154,
                  child: ElevatedButton( onPressed: () {},
                    child: Text('Войти'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)
                      ),
                    ),
                  )
              ),
              SizedBox(height: 62,),
              InkWell(child: Text('Регистрация', style: linkTextStyle,), onTap: () {},),
              SizedBox(height: 19,),
              InkWell(child: Text('Забыли пароль?', style: linkTextStyle,), onTap: () {},),
            ],
          ),
      ))
      );
  }
}
