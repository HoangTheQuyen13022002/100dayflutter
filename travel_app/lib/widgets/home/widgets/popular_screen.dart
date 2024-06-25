import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/widgets/detail_screen.dart';
import 'package:travel_app/widgets/home/models/destination.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  final List<Destination> destinations = [
    Destination(
      id: 1,
      image: 'assets/images/image1.png',
      name: 'Alley Palace',
      rating: '4.1',
      price: '199',
      description:
          'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ',
    ),
    Destination(
      id: 2,
      image: 'assets/images/image2.png',
      name: 'Coeurdes Alpes',
      rating: '4.5',
      price: '199',
      description:
          'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 335,
        height: 274,
        child: Column(
          children: [
            const SizedBox(
              height: 22,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                        color: Color(0xFF232323),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Container(
                        width: 188,
                        height: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(destinations[index].image),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 175,
                              left: 12,
                              child: Container(
                                width: 90,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFF4D5652),
                                ),
                                child: Center(
                                    child: Text(
                                  destinations[index].name,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )),
                              ),
                            ),
                            Positioned(
                              top: 204,
                              left: 12,
                              child: Container(
                                width: 52,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFF4D5652),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/star.svg'),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      destinations[index].rating,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 16,
                              bottom: 16,
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFF3F8FE)),
                                child: Center(
                                  child: SvgPicture.asset(
                                      'assets/icons/heart.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
