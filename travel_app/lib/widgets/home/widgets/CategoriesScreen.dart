import 'package:flutter/material.dart';
import 'package:travel_app/widgets/home/models/category.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Categories> categories = [
    const Categories(
      id: 1,
      name: 'Location',
      active: true,
    ),
    const Categories(
      id: 2,
      name: 'Hotels',
      active: false,
    ),
    const Categories(
      id: 3,
      name: 'Food',
      active: false,
    ),
    const Categories(
      id: 4,
      name: 'Adventure',
      active: false,
    ),
    const Categories(
      id: 5,
      name: 'Adventure',
      active: false,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 41,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () => _onCategoryTap(index),
                child: Container(
                  width: 89,
                  height: 41,
                  decoration: categories[index].active == true ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF5493F1).withOpacity(0.1)
                  ) : BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent
                  ),
                  child: Center(child: Text(categories[index].name,style: TextStyle(color: categories[index].active == true ? const Color(0xFF1154E6) : Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  void _onCategoryTap(int index) {
    setState(() {
      for (int i = 0; i < categories.length; i++) {
        categories[i] = categories[i].copyWith(active: i == index);
      }
    });
  }
}
