import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 335,
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Explore',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/location.svg',
                      width: 16,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Aspen,USA',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      'assets/icons/down.svg',
                      width: 16,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 0,
            ),
            const Text(
              'Aspen',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
