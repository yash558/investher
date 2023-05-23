import 'package:flutter/material.dart';
import './size_configs.dart';

const Color kPrimaryColor = Color(0xffFC9D45);
const Color kSecondaryColor = Color(0xff573353);
const Color kScaffoldBackground = Color(0xffFFF3E9);

const kTitle = TextStyle(
  fontFamily: 'Klasik',
  fontSize: 25,
  color: kSecondaryColor,
  fontWeight: FontWeight.bold,
);

const kTitle2 = TextStyle(
  fontFamily: 'Klasik',
  fontSize: 16,
  color: kSecondaryColor,
);

const kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kBodyText2 = TextStyle(
  color: kSecondaryColor,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kBodyText3 = TextStyle(
    color: kSecondaryColor, fontSize: 20, fontWeight: FontWeight.normal);

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide.none,
);

final kInputHintStyle = kBodyText2.copyWith(
  fontWeight: FontWeight.normal,
  color: kSecondaryColor.withOpacity(0.5),
);
