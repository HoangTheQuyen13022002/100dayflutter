import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 335,
                height: 386,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/image4.png',
                      width: 355,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_back_ios_new_rounded),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 4,
                      top: 321,
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFFFFFFF)),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/heart.svg',
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 335,
                height: 167,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coeurdes Alpes',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Show map',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/star.svg'),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF606060),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '(335 Reviews)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF606060),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF3A544F),
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          const Text(
                            'Read more',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF196EEE),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          SvgPicture.asset('assets/icons/down.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 335,
                height: 112,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Facilities',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 77,
                          height: 74,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE4ECFB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/wifi.svg'),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                '1 heater',
                                style: TextStyle(
                                    color: Color(0xFFB8B8B8), fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 77,
                          height: 74,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE4ECFB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/cutlery.svg'),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Dinner',
                                style: TextStyle(
                                    color: Color(0xFFB8B8B8), fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 77,
                          height: 74,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE4ECFB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/tub.svg'),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Tub',
                                style: TextStyle(
                                    color: Color(0xFFB8B8B8), fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 77,
                          height: 74,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE4ECFB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/pool.svg'),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Pool',
                                style: TextStyle(
                                    color: Color(0xFFB8B8B8), fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 335,
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          '\$199',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFF2DD7A4),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 223,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF186FF2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Book Now',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            SvgPicture.asset('assets/icons/arrow_right.svg'),
                          ],
                        ),
                      ),
                    ),
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
