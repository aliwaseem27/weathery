import 'package:auto_route/annotations.dart';
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
                    icon: Icon(Icons.add),
                    iconSize: 24,
                    onPressed: () {},
                  ),
                  Column(
                    children: [
                      Text(
                        "London",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 18),
                        child: Row(
                          children: [
                            Text(
                              "Turn on location",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.circle,
                              color: Color.fromRGBO(243, 196, 53, 1),
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.more_vert),
                    iconSize: 24,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 66,
              ),
              Text(
                "Wednesday, 02 Jul",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    "24",
                    style: TextStyle(color: Colors.white, fontSize: 96),
                  ),
                  Positioned(
                    left: 112,
                    top: 24,
                    child: Text(
                      "°C",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Cloudy",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/humidity.svg",
                        width: 20,
                        height: 20,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      Text(
                        "80" + "%",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/eco.svg",
                        width: 20,
                        height: 20,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      Text(
                        "AQI " + "20",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/air.svg",
                        width: 20,
                        height: 20,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      Text(
                        "10" + "Km/h",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "More Info",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.cloud, color: Colors.white,),
                        SizedBox(width: 8,),
                        Text("Today" + " . " + "Cloudy", style: TextStyle(color: Colors.white, fontSize: 18),),
                        Spacer(),
                        Text("30"+"°" + " / " + "21"
                            ""+"°", style: TextStyle(color: Colors.white, fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.cloudy_snowing, color: Colors.white,),
                        SizedBox(width: 8,),
                        Text("Today" + " . " + "Cloudy", style: TextStyle(color: Colors.white, fontSize: 18),),
                        Spacer(),
                        Text("28"+"°" + " / " + "20"+"°", style: TextStyle(color: Colors.white, fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.sunny, color: Colors.white,),
                        SizedBox(width: 8,),
                        Text("Today" + " . " + "Cloudy", style: TextStyle(color: Colors.white, fontSize: 18),),
                        Spacer(),
                        Text("31"+"°" + " / " + "22"+"°", style: TextStyle(color: Colors.white, fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
