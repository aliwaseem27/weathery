import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(54, 115, 135, 1),
          Color.fromRGBO(134, 192, 211, 1),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 32),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.arrow_back_ios),
                    iconSize: 24,
                    onPressed: () {context.router.pop();},
                  ),
                  Text(
                    "London",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.more_vert),
                    iconSize: 24,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
