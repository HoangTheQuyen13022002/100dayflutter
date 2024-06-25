import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendedScreen extends StatefulWidget {
  const RecommendedScreen({super.key});

  @override
  State<RecommendedScreen> createState() => _RecommendedState();
}

class _RecommendedState extends State<RecommendedScreen> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: 364,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
                'Recommended',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 142,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 174,
                        height: 142,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 166,
                                height: 96,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/image3.png'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 16,
                              top: 90,
                              child: Container(
                                width: 41,
                                height: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xFF3A544F),
                                  border: Border.all(
                                    color: const Color(0xFFFFFFFF),
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '4N/5D',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                                left: 4,
                                top: 110,
                                child: Text(
                                  'Explore Aspen',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF232323),
                                      fontWeight: FontWeight.w600),
                                )),
                            Positioned(
                              left: 4,
                              top: 128,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/trending.svg'),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    'Hot Deal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF3A544F),
                                        fontSize: 10),
                                  ),
                                ],
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
