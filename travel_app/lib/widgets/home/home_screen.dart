import 'package:flutter/material.dart';
import 'package:travel_app/widgets/home/widgets/CategoriesScreen.dart';
import 'package:travel_app/widgets/home/widgets/home_bottom_navigation_bar.dart';
import 'package:travel_app/widgets/home/widgets/leading.dart';
import 'package:travel_app/widgets/home/widgets/popular_screen.dart';
import 'package:travel_app/widgets/home/widgets/recommended.dart';
import 'package:travel_app/widgets/home/widgets/search-home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 44,
          ),
          HeaderHome(),
          SizedBox(
            height: 24,
          ),
          SearchHome(),
          SizedBox(
            height: 32,
          ),
          CategoriesScreen(),
          SizedBox(
            height: 32,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // đang hot
                  PopularScreen(),
                  SizedBox(height: 32,),
                  // khuyến khích
                  RecommendedScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomNavigationBar()
    );
  }
}
