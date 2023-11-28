import 'package:auto_route/annotations.dart';import 'package:auto_route/auto_route.dart';import 'package:flutter/material.dart';import 'package:flutter_svg/flutter_svg.dart';@RoutePage()class DetailsPage extends StatelessWidget {  const DetailsPage({super.key});  @override  Widget build(BuildContext context) {    return Container(      decoration: BoxDecoration(          gradient: LinearGradient(        begin: Alignment.topLeft,        end: Alignment.bottomRight,        colors: [          Color.fromRGBO(54, 115, 135, 1),          Color.fromRGBO(134, 192, 211, 1),        ],      )),      child: Scaffold(        backgroundColor: Colors.transparent,        body: Padding(          padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 32),          child: Column(            children: [              Row(                mainAxisAlignment: MainAxisAlignment.spaceBetween,                children: [                  IconButton(                    color: Colors.white,                    icon: Icon(Icons.arrow_back_ios),                    iconSize: 24,                    onPressed: () {                      context.router.pop();                    },                  ),                  Text(                    "London",                    style: TextStyle(                        fontSize: 20,                        color: Colors.white,                        fontWeight: FontWeight.bold),                  ),                  IconButton(                    color: Colors.white,                    icon: Icon(Icons.more_vert),                    iconSize: 24,                    onPressed: () {},                  ),                ],              ),              SizedBox(height: 16),              Row(                mainAxisAlignment: MainAxisAlignment.spaceBetween,                children: [                  Column(                    children: [                      Text(                        "Now",                        style: TextStyle(color: Colors.white),                      ),                      Text(                        "24" + "°",                        style: TextStyle(                            color: Colors.white, fontWeight: FontWeight.bold),                      ),                      Icon(                        Icons.cloud,                        size: 32,                        color: Colors.white,                      ),                      Row(                        mainAxisAlignment: MainAxisAlignment.center,                        children: [                          Icon(                            Icons.play_arrow_outlined,                            color: Colors.white,                          ),                          Text(                            "3" + "km/h",                            style: TextStyle(                              color: Colors.white,                            ),                          )                        ],                      ),                    ],                  ),                  Column(                    children: [                      Text(                        "Now",                        style: TextStyle(color: Colors.white),                      ),                      Text(                        "24" + "°",                        style: TextStyle(                            color: Colors.white, fontWeight: FontWeight.bold),                      ),                      Icon(                        Icons.cloud,                        size: 32,                        color: Colors.white,                      ),                      Row(                        mainAxisAlignment: MainAxisAlignment.center,                        children: [                          Icon(                            Icons.play_arrow_outlined,                            color: Colors.white,                          ),                          Text(                            "3" + "km/h",                            style: TextStyle(                              color: Colors.white,                            ),                          )                        ],                      ),                    ],                  ),                  Column(                    children: [                      Text(                        "Now",                        style: TextStyle(color: Colors.white),                      ),                      Text(                        "24" + "°",                        style: TextStyle(                            color: Colors.white, fontWeight: FontWeight.bold),                      ),                      Icon(                        Icons.cloud,                        size: 32,                        color: Colors.white,                      ),                      Row(                        mainAxisAlignment: MainAxisAlignment.center,                        children: [                          Icon(                            Icons.play_arrow_outlined,                            color: Colors.white,                          ),                          Text(                            "3" + "km/h",                            style: TextStyle(                              color: Colors.white,                            ),                          )                        ],                      ),                    ],                  ),                  Column(                    children: [                      Text(                        "Now",                        style: TextStyle(color: Colors.white),                      ),                      Text(                        "24" + "°",                        style: TextStyle(                            color: Colors.white, fontWeight: FontWeight.bold),                      ),                      Icon(                        Icons.cloud,                        size: 32,                        color: Colors.white,                      ),                      Row(                        mainAxisAlignment: MainAxisAlignment.center,                        children: [                          Icon(                            Icons.play_arrow_outlined,                            color: Colors.white,                          ),                          Text(                            "3" + "km/h",                            style: TextStyle(                              color: Colors.white,                            ),                          )                        ],                      ),                    ],                  ),                ],              ),              Spacer(),              Container(                decoration: BoxDecoration(                    color: Colors.white.withOpacity(0.2),                    borderRadius: BorderRadius.circular(32)),                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),                child: Column(                  children: [                    Row(                      mainAxisAlignment: MainAxisAlignment.start,                      children: [                        Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            Text("Real feel", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                            Text("25,7" + "°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                        SizedBox(width: 100,),                        Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            Text("Humidity", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                            Text("80" + "%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                      ],                    ),                    SizedBox(                      height: 16,                    ),                    Row(                      mainAxisAlignment: MainAxisAlignment.start,                      children: [                        Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            Text("Chance of rain", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                            Text("60" + "%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                        SizedBox(width: 60,),                        Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            Text("Pressure", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                            Text("1"+"Bar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                      ],                    ),                    SizedBox(                      height: 16,                    ),                    Row(                      mainAxisAlignment: MainAxisAlignment.start,                      children: [                        Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            Text("Wind speed", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                            Text("10" + "km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                        SizedBox(width: 80,),                        Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            Text("UV index", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                            Text("0", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                      ],                    ),                  ],                ),              ),              Spacer(),              Container(                decoration: BoxDecoration(                    color: Colors.white.withOpacity(0.2),                    borderRadius: BorderRadius.circular(32)),                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),                child: Column(                  crossAxisAlignment: CrossAxisAlignment.start,                  children: [                    Text("Air Quality Index", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 16),),                    Row(                      children: [                        Row(                          children: [                            Icon(Icons.energy_savings_leaf, color: Colors.white,),                            Text("20", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),),                          ],                        ),                        Spacer(),                        Row(                          children: [                            Text("Full air quality forecast", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12),),                            Icon(Icons.arrow_forward_ios_sharp, color: Colors.white.withOpacity(0.7),size: 14,),                          ],                        ),                      ],                    )                  ],                ),              ),              SizedBox(height: 16,),              Row(                mainAxisAlignment: MainAxisAlignment.center,                children: [                  Text(                    "Data Provided by",                    style: TextStyle(                      color: Colors.white,                    ),                  ),                  SizedBox(width: 4),                  Text(                    "Weatherapi.com",                    style: TextStyle(                        color: Colors.white, fontWeight: FontWeight.bold),                  ),                ],              )            ],          ),        ),      ),    );  }}