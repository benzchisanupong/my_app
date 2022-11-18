import 'package:flutter/material.dart';
import 'package:my_app/value.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  String homeButton = '5';

  void onTapped() {
    setState(() {
      homeButton = 'home';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorSelect.background,
          child: GestureDetector(onTap: () {
            changetext();
          }),
        ),
        bottomNavigationBar: myNavigationBar(context));
  }

  Widget myNavigationBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: ColorSelect.secondary,
      child: Row(children: [
        Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                changetext();
              },
              child: Stack(
                children: [
                  Container(
                    child: Center(
                      child: Icon(
                        Icons.home,
                        color: ColorSelect.primary,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        homeButton,
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            )),
      ]),
    );
  }
}
