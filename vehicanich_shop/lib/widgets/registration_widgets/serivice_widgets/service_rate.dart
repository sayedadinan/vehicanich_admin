import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';

class CustomServiceTextField extends StatelessWidget {
  const CustomServiceTextField({
    Key? key,
    required this.enabled,
  }) : super(key: key);

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 36,
      child: TextField(
        cursorColor: Appallcolor().buttonforgroundcolor,
        keyboardType: TextInputType.number,
        maxLength: 5,
        textAlign: TextAlign.center, cursorWidth: 2.0,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appallcolor().buttonforgroundcolor),
          ),
          counterText: "",
          hintStyle: TextStyle(
            color: enabled
                ? Appallcolor().colorblack
                : Appallcolor().placeholderimagecolor,
            fontSize: 14,
          ),
          border: OutlineInputBorder(),
          filled: true,
          fillColor: enabled
              ? Appallcolor().colorwhite
              : Appallcolor().placeholderimagecolor,
          contentPadding: EdgeInsets.symmetric(horizontal: 5),
          enabled: enabled,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appallcolor().placeholderimagecolor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appallcolor().buttonforgroundcolor),
          ),
          hintText: "Rate",
        ),

        // Set the width of the TextField
        // You can adjust this value according to your requirement
        // For example, width: 100,
        // You can use constraints or other layout widgets to control the width
        // of the TextField
        // width: 100,
      ),
    );
  }
}
