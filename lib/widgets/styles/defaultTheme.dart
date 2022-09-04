import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalColors {

  static const int _colorPrimaryValue = 0xFF1567A4;
  static const colorOnSecondary       = Color(0xFFD5E5F3);
  static const colorPrimary           = Color(_colorPrimaryValue);
  static const colorPrimaryVariant    = Color(0xFF1C8ADB);
  static const colorOnPrimary         = Color(0xFFD5E5F0);
  static const colorSecondary         = Color(0xFF3C4656);
  static const colorSecondaryVariant  = Color(0xFF596780);
  static const colorOnError           = Color(0xFFB00020);
  static const colorOnShadow          = Color(0xFF000000);

  static const MaterialColor colorPrimaryMaterial = MaterialColor(
    _colorPrimaryValue,
    <int, Color>{
      50: Color(0xFF1567A9),
      100: Color(0xFF1567A8),
      200: Color(0xFF1567A7),
      300: Color(0xFF1567A6),
      400: Color(0xFF1567A5),
      500: Color(_colorPrimaryValue),
      600: Color(0xFF1567A3),
      700: Color(0xFF1567A2),
      800: Color(0xFF1567A1),
      900: Color(0xFF1567A0),
    },
  );


  static LinearGradient gradientH([double opacity = 1]) => LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      Colors.white,
      Colors.blueGrey.shade400,
      Colors.blueGrey.shade800,
    ],
  );
  static LinearGradient gradientV() => LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Colors.white,
      Colors.blueGrey.shade400,
      Colors.blueGrey.shade800,
    ],
  );
  static LinearGradient gradientVH() => LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: [
      Colors.blueGrey.shade400,
      Colors.blueGrey.shade700,
      Colors.blueGrey.shade800,
    ],
  );
}

class ScreenSize {
  static MediaQueryData _mediaQuery = const MediaQueryData();
  static double width = 0;
  static double height = 0;
  static double appBarHeight = 0;
  static Orientation screenOrientation = Orientation.landscape;

  static init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    width = _mediaQuery.size.width;
    height = _mediaQuery.size.height - _mediaQuery.padding.top;
    appBarHeight = _mediaQuery.padding.top;
    screenOrientation = _mediaQuery.orientation;
  }
}

class Edges {
  static const edgeToLeft = EdgeInsets.fromLTRB(0, 0, 250, 550);
  static const edgeToLeftInMiddle = EdgeInsets.fromLTRB(10, 150, 10, 0);
}

class FontStyle {

  static const double small   = 12.0;
  static const double normal  = 14.0;
  static const double big     = 18.0;
  static const double veryBig = 32.0;
  static const double strong  = 42.0;

  static const fontShadow = <Shadow>[
    Shadow(
      offset: Offset(1.5, 1.5),
      blurRadius: 4.0,
      color: PersonalColors.colorOnShadow,
    ),
  ];

  static TextStyle fontTitle = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontWeight : FontWeight.bold,
    fontSize: normal,
  );

  static TextStyle fontTitleDark = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: normal,
  );

  static TextStyle fontItemMenu = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: normal,
  );

  static TextStyle fontItemMenuDark = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: normal,
  );

  static TextStyle fontLabel = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: normal,
  );

  static TextStyle fontLabelDark = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: normal,
  );

  static TextStyle fontLabelBold = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontLabelDarkBold = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextDark = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: normal,
  );

  // Font Text Clean
  static TextStyle fontTextCleanSmall = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: small,
  );

  static TextStyle fontTextClean = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: normal,
  );

  static TextStyle fontTextCleanBig = GoogleFonts.comfortaa(
      color: PersonalColors.colorOnPrimary,
      fontSize: big,
  );

  static TextStyle fontTextCleanVeryBig = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontWeight: FontWeight.bold,
    fontSize: veryBig,
    shadows: fontShadow,
  );

  static TextStyle fontTextCleanVeryStrong = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontWeight: FontWeight.bold,
    fontSize: strong,
    shadows: fontShadow,
  );
  // Font Text Clean

  // Font Text Clean Bold
  static TextStyle fontTextCleanBoldSmall  = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: small,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextCleanBold  = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextCleanBoldBig  = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: big,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextCleanBoldVeryBig  = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: veryBig,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextCleanBoldStrong  = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnPrimary,
    fontSize: strong,
    fontWeight: FontWeight.bold,
  );
  // Font Text Clean Bold


  // Font Text Dark Bold
  static TextStyle fontTextDarkBoldSmall = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: small,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextDarkBold = GoogleFonts.comfortaa(
      color: PersonalColors.colorOnSecondary,
      fontSize: normal,
      fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextDarkBoldBig = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: big,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextDarkBoldVeryBig = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: veryBig,
    fontWeight: FontWeight.bold,
  );

  static TextStyle fontTextDarkBoldStrong = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnSecondary,
    fontSize: strong,
    fontWeight: FontWeight.bold,
  );
  // Font Text Dark Bold

  // Font Text Dark Bold
  static TextStyle fontTextOnErro = GoogleFonts.comfortaa(
    color: PersonalColors.colorOnError,
    fontSize: normal,
    fontWeight: FontWeight.normal,
  );
  // Font Text Dark Bold

}

class ButtonStyle {
  static Map<String, dynamic> typeFontLabelLight = {
    'textColor': PersonalColors.colorPrimaryVariant,
    'font': 'Roboto',
    'fontLength': 10.0,
  };
}

class Icons {
  static Icon iconEdit([double length = 20]) => Icon(
    FontAwesomeIcons.edit,
    color: PersonalColors.colorOnPrimary,
    size: length,
  );
  static Icon iconDelete([double length = 20]) => Icon(
    FontAwesomeIcons.trashAlt,
    color: PersonalColors.colorOnError,
    size: length,
  );
  static Icon iconPicture([double length = 20]) => Icon(
    FontAwesomeIcons.image,
    color: PersonalColors.colorOnPrimary,
    size: length,
  );
  static Icon iconSetting([double length = 20]) => Icon(
    FontAwesomeIcons.cogs,
    color: PersonalColors.colorOnPrimary,
    size: length,
  );
}

class Decorations {
  static BoxDecoration edgeContainers(
      {Gradient? gradient, Color? cor, double widthEdge = 0.5}) =>
      BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(10.0),
        border: Border(
          top: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary,
          ),
          left: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary,
          ),
          right: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary,
          ),
          bottom: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary,
          ),
        ),
      );
}