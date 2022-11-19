import 'package:flutter/material.dart';
import 'package:my_app/value.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/line.png',
                      ),
                      fit: BoxFit.cover),
                  color: ColorSelect.primary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28))),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Hey Marimar !",
                            style: TextStyle(color: ColorSelect.secondary),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 16),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Let's find your best project!",
                            style: TextStyle(
                                color: ColorSelect.secondary,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1), // Border radius
                          child: ClipOval(
                              child: Image.asset('images/neekolabs_black.png')),
                        ),
                      ),
                    ),
                    flex: 5,
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.all(24),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: ColorSelect.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
