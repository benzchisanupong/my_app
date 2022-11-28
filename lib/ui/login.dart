import 'package:flutter/material.dart';
import 'package:my_app/value.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Container(
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 360, child: Image.asset('images/pmii.jpg')),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Username",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: ColorSelect.grey,
                        border: Border.all(color: ColorSelect.border, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none))),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
