import 'package:flutter/material.dart';
import 'package:food_ordering/constants.dart';
import 'package:food_ordering/widgets/categories_list_view.dart';
import 'package:food_ordering/widgets/custom_app_bar.dart';
import 'package:food_ordering/widgets/custom_search_bar.dart';
import 'package:food_ordering/widgets/header_of_list_view.dart';
import 'package:food_ordering/widgets/popular_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> foods1 = ['Chicken Burger', 'Cheese Pizza'];
  List<String> foods = ['Burger', 'Pizza', 'Snacks', 'Water'];
  List<Color> bgColors = [
    const Color(0xFFFBDCDA),
    const Color(0xFFD4EEF3),
    const Color(0xFFFAE6D5),
    const Color(0xFFEFCFE7),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            const CustomAppBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            const CustomSearchBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(kBannerImage),
              ),
            ),
            const HeaderOfListView(
              type: 'Categories',
              color: kColor,
            ),
            CategoriesListView(foods: foods, bgColors: bgColors,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const HeaderOfListView(
              type: 'Popular',
              color: kColor,
            ),
            PopularListView(foods: foods1),
            // const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}