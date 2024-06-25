import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,
      height: 52,
      child: TextFormField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Find things to do',
          hintStyle: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.w400),
          filled: true,
          fillColor: const Color(0xFFF3F8FE),
          prefixIcon: Container(
            padding: const EdgeInsets.all(10),
            constraints: const BoxConstraints(
              maxHeight: 20,
              maxWidth: 20,
            ),
            child: SvgPicture.asset(
              'assets/icons/Search.svg',
              width: 12,
              height: 12,
              fit: BoxFit.fitWidth,
            ),
          ),
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
