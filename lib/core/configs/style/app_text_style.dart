import 'package:components/core/configs/confgs.dart';
import 'package:flutter/material.dart';

const String font = 'Poppins';
const String fontFamily = 'Furious';

const TextStyle textStyle = TextStyle(
  fontFamily: font,
  color: ComColors.gs1000,
);

const TextStyle textStyleFurious = TextStyle(
  fontFamily: fontFamily,
  color: ComColors.gsWhite,
);

const double _display96Size = 96;
const double _display60Size = 60;
const double _display64Size = 64;
const double _display48Size = 48;
const double _display36Size = 36;
const double _display34Size = 34;
const double _display24Size = 24;
const double _display20Size = 20;
const double _display16Size = 16;
const double _display14Size = 14;
const double _display12Size = 12;
const double _display10Size = 10;

extension TextStyleWeightExtension on TextStyle {
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);
}

extension TextStyleColorExtension on TextStyle {
  // this grupo vitality colors is same to Colors.green light
  TextStyle get pri100 => copyWith(color: ComColors.pri100);
  TextStyle get pri200 => copyWith(color: ComColors.pri200);
  TextStyle get pri300 => copyWith(color: ComColors.pri300);
  TextStyle get pri400 => copyWith(color: ComColors.pri400);
  TextStyle get pri500 => copyWith(color: ComColors.pri500);
  TextStyle get pri600 => copyWith(color: ComColors.pri600);
  TextStyle get pri700 => copyWith(color: ComColors.pri700);
  TextStyle get pri800 => copyWith(color: ComColors.pri800);
  TextStyle get pri900 => copyWith(color: ComColors.pri900);
  TextStyle get pri1000 => copyWith(color: ComColors.pri1000);

  // this group of dark colors is equal to Colors.black
  TextStyle get sec100 => copyWith(color: ComColors.sec100);
  TextStyle get sec200 => copyWith(color: ComColors.sec200);
  TextStyle get sec300 => copyWith(color: ComColors.sec300);
  TextStyle get sec400 => copyWith(color: ComColors.sec400);
  TextStyle get sec500 => copyWith(color: ComColors.sec500);
  TextStyle get sec600 => copyWith(color: ComColors.sec600);
  TextStyle get sec700 => copyWith(color: ComColors.sec700);
  TextStyle get sec800 => copyWith(color: ComColors.sec800);
  TextStyle get sec900 => copyWith(color: ComColors.sec900);
  TextStyle get sec1000 => copyWith(color: ComColors.sec1000);

  // this group of warning colors is equal to Colors.red light
  TextStyle get act100 => copyWith(color: ComColors.act100);
  TextStyle get act200 => copyWith(color: ComColors.act200);
  TextStyle get act300 => copyWith(color: ComColors.act300);
  TextStyle get act400 => copyWith(color: ComColors.act400);
  TextStyle get act500 => copyWith(color: ComColors.act500);
  TextStyle get act600 => copyWith(color: ComColors.act600);
  TextStyle get act700 => copyWith(color: ComColors.act700);
  TextStyle get act800 => copyWith(color: ComColors.act800);
  TextStyle get act900 => copyWith(color: ComColors.act900);
  TextStyle get act1000 => copyWith(color: ComColors.act1000);

  // this group of atention colors is equal to Colors.amber
  TextStyle get acce100 => copyWith(color: ComColors.acce100);
  TextStyle get acce200 => copyWith(color: ComColors.acce200);
  TextStyle get acce300 => copyWith(color: ComColors.acce300);
  TextStyle get acce400 => copyWith(color: ComColors.acce400);
  TextStyle get acce500 => copyWith(color: ComColors.acce500);
  TextStyle get acce600 => copyWith(color: ComColors.acce600);
  TextStyle get acce700 => copyWith(color: ComColors.acce700);
  TextStyle get acce800 => copyWith(color: ComColors.acce800);
  TextStyle get acce900 => copyWith(color: ComColors.acce900);
  TextStyle get acce1000 => copyWith(color: ComColors.acce1000);

  // this group of support colors is equal to Colors.purple
  TextStyle get supp100 => copyWith(color: ComColors.supp100);
  TextStyle get supp200 => copyWith(color: ComColors.supp200);
  TextStyle get supp300 => copyWith(color: ComColors.supp300);
  TextStyle get supp400 => copyWith(color: ComColors.supp400);
  TextStyle get supp500 => copyWith(color: ComColors.supp500);
  TextStyle get supp600 => copyWith(color: ComColors.supp600);
  TextStyle get supp700 => copyWith(color: ComColors.supp700);
  TextStyle get supp800 => copyWith(color: ComColors.supp800);
  TextStyle get supp900 => copyWith(color: ComColors.supp900);
  TextStyle get supp1000 => copyWith(color: ComColors.supp1000);

  // this group of success colors is equal to Colors.green
  TextStyle get succ100 => copyWith(color: ComColors.succ100);
  TextStyle get succ200 => copyWith(color: ComColors.succ200);
  TextStyle get succ300 => copyWith(color: ComColors.succ300);
  TextStyle get succ400 => copyWith(color: ComColors.succ400);
  TextStyle get succ500 => copyWith(color: ComColors.succ500);
  TextStyle get succ600 => copyWith(color: ComColors.succ600);
  TextStyle get succ700 => copyWith(color: ComColors.succ700);
  TextStyle get succ800 => copyWith(color: ComColors.succ800);
  TextStyle get succ900 => copyWith(color: ComColors.succ900);
  TextStyle get succ1000 => copyWith(color: ComColors.succ1000);

  // this grupo warning colors is same to Colors.orange
  TextStyle get war100 => copyWith(color: ComColors.war100);
  TextStyle get war200 => copyWith(color: ComColors.war200);
  TextStyle get war300 => copyWith(color: ComColors.war300);
  TextStyle get war400 => copyWith(color: ComColors.war400);
  TextStyle get war500 => copyWith(color: ComColors.war500);
  TextStyle get war600 => copyWith(color: ComColors.war600);
  TextStyle get war700 => copyWith(color: ComColors.war700);
  TextStyle get war800 => copyWith(color: ComColors.war800);
  TextStyle get war900 => copyWith(color: ComColors.war900);
  TextStyle get war1000 => copyWith(color: ComColors.war1000);

  // this grupo error colors is same to Colors.red
  TextStyle get err100 => copyWith(color: ComColors.err100);
  TextStyle get err200 => copyWith(color: ComColors.err200);
  TextStyle get err300 => copyWith(color: ComColors.err300);
  TextStyle get err400 => copyWith(color: ComColors.err400);
  TextStyle get err500 => copyWith(color: ComColors.err500);
  TextStyle get err600 => copyWith(color: ComColors.err600);
  TextStyle get err700 => copyWith(color: ComColors.err700);
  TextStyle get err800 => copyWith(color: ComColors.err800);
  TextStyle get err900 => copyWith(color: ComColors.err900);
  TextStyle get err1000 => copyWith(color: ComColors.err1000);

  // this grupo information colors is same to Colors.blue
  TextStyle get inf100 => copyWith(color: ComColors.inf100);
  TextStyle get inf200 => copyWith(color: ComColors.inf200);
  TextStyle get inf300 => copyWith(color: ComColors.inf300);
  TextStyle get inf400 => copyWith(color: ComColors.inf400);
  TextStyle get inf500 => copyWith(color: ComColors.inf500);
  TextStyle get inf600 => copyWith(color: ComColors.inf600);
  TextStyle get inf700 => copyWith(color: ComColors.inf700);
  TextStyle get inf800 => copyWith(color: ComColors.inf800);
  TextStyle get inf900 => copyWith(color: ComColors.inf900);
  TextStyle get inf1000 => copyWith(color: ComColors.inf1000);

  // this grupo grayscale colors is same to Colors.gray
  TextStyle get gsWhite => copyWith(color: ComColors.gsWhite);
  TextStyle get gs100 => copyWith(color: ComColors.gs100);
  TextStyle get gs200 => copyWith(color: ComColors.gs200);
  TextStyle get gs300 => copyWith(color: ComColors.gs300);
  TextStyle get gs400 => copyWith(color: ComColors.gs400);
  TextStyle get gs500 => copyWith(color: ComColors.gs500);
  TextStyle get gs600 => copyWith(color: ComColors.gs600);
  TextStyle get gs700 => copyWith(color: ComColors.gs700);
  TextStyle get gs800 => copyWith(color: ComColors.gs800);
  TextStyle get gs900 => copyWith(color: ComColors.gs900);
  TextStyle get gs1000 => copyWith(color: ComColors.gs1000);
}

abstract class ComTextStyle {
  static TextStyle displayXL = textStyleFurious.copyWith(
    fontSize: _display96Size,
    fontWeight: FontWeight.w400,
  );

  static TextStyle displayM = textStyleFurious.copyWith(
    fontSize: _display64Size,
    fontWeight: FontWeight.w400,
  );
  static TextStyle displayS = textStyleFurious.copyWith(
    fontSize: _display36Size,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h1 = textStyle.copyWith(
    fontSize: _display96Size,
    fontWeight: FontWeight.w800,
  );

  static TextStyle h2 = textStyle.copyWith(
    fontSize: _display60Size,
    fontWeight: FontWeight.w800,
  );
  static TextStyle h3 = textStyle.copyWith(
    fontSize: _display48Size,
    fontWeight: FontWeight.w800,
  );
  static TextStyle h4 = textStyle.copyWith(
    fontSize: _display34Size,
    fontWeight: FontWeight.w800,
  );
  static TextStyle h5 = textStyle.copyWith(
    fontSize: _display24Size,
    fontWeight: FontWeight.w900,
  );
  static TextStyle h6 = textStyle.copyWith(
    fontSize: _display20Size,
    fontWeight: FontWeight.w900,
  );
  static TextStyle subtitle1 = textStyle.copyWith(
    fontSize: _display16Size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle subtitle2 = textStyle.copyWith(
    fontSize: _display14Size,
    fontWeight: FontWeight.w800,
  );
  static TextStyle body1 = textStyle.copyWith(
    fontSize: _display16Size,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body2 = textStyle.copyWith(
    fontSize: _display14Size,
    fontWeight: FontWeight.w500,
  );
  static TextStyle button1 = textStyle.copyWith(
    fontSize: _display14Size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle button2 = textStyle.copyWith(
    fontSize: _display16Size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle overline = textStyle.copyWith(
    fontSize: _display10Size,
    fontWeight: FontWeight.w400,
  );
  static TextStyle caption = textStyle.copyWith(
    fontSize: _display12Size,
    fontWeight: FontWeight.w500,
  );
  static TextStyle tinyCaption = textStyle.copyWith(
    fontSize: _display10Size,
    fontWeight: FontWeight.w600,
  );
}
