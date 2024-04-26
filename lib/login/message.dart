import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class textmessage extends StatefulWidget {
  const textmessage({super.key});

  @override
  State<textmessage> createState() => _textmessageState();
}

class _textmessageState extends State<textmessage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backgroundd.png'), fit: BoxFit.cover)),
      child: Padding(
          padding: const EdgeInsets.all(35),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('WELCOME',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 25,
                ),
                Text('Forgot Password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "How would you like to reset your password?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 0,
                      groupValue: _value,
                      onChanged: (value) {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Text Message (SMS)",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "We will send a verification code to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 45,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "  xx xx xx xx xx",
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Center(
                            child: Text(
                              "Text me",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "already have an acount ?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: TextStyle(
                        color: Colors.grey,
                      )),
                      onPressed: () {},
                      child: const Text('Send again'),
                    )
                  ],
                ),
              ],
            ),
          )),
    ));
  }
}
