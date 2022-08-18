import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalColors {
  static Color colorPrimary([double opacity = 1]) =>
      const Color(0x001567A4).withOpacity(opacity);
  static Color colorPrimaryVariant([double opacity = 1]) =>
      const Color(0x001C8ADB).withOpacity(opacity);
  static Color colorOnPrimary([double opacity = 1]) =>
      const Color(0x00000000).withOpacity(opacity);
  static Color colorSecondary([double opacity = 1]) =>
      const Color(0x003C4656).withOpacity(opacity);
  static Color colorSecondaryVariant([double opacity = 1]) =>
      const Color(0x00596780).withOpacity(opacity);
  static Color colorOnSecondary([double opacity = 1]) =>
      const Color(0x00D5E5F3).withOpacity(opacity);
  static Color colorOnError([double opacity = 1]) =>
      const Color(0x00B00020).withOpacity(opacity);

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
  static MediaQueryData _mediaQuery = MediaQueryData();
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

class FontStyle {
  static TextStyle fontTitle([double length = 18]) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: PersonalColors.colorOnPrimary(),
      fontSize: length,
    );
  }

  static TextStyle fontTitleDark([double length = 18]) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: PersonalColors.colorOnSecondary(),
      fontSize: length,
    );
  }

  static TextStyle fontItemMenu([double length = 18]) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: PersonalColors.colorOnPrimary(),
      fontSize: length,
    );
  }

  static TextStyle fontItemMenuDark([double length = 18]) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: PersonalColors.colorOnSecondary(),
      fontSize: length,
    );
  }

  static TextStyle fontLabel([double length = 18]) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: PersonalColors.colorOnPrimary(),
      fontSize: length,
    );
  }

  static TextStyle fontLabelDark([double length = 18]) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: PersonalColors.colorOnSecondary(),
      fontSize: length,
    );
  }

  static TextStyle fontLabelBold([double length = 18]) {
    return GoogleFonts.poppins(
      color: PersonalColors.colorOnPrimary(),
      fontSize: length,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fontLabelDarkBold([double length = 18]) {
    return GoogleFonts.poppins(
      color: PersonalColors.colorOnSecondary(),
      fontSize: length,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fontTextDark([double length = 18]) {
    return GoogleFonts.ptSans(
      color: PersonalColors.colorOnSecondary(),
      fontSize: length,
    );
  }

  static TextStyle fontTextClean([double length = 18]) {
    return GoogleFonts.ptSans(
      color: PersonalColors.colorOnPrimary(),
      fontSize: length,
    );
  }

  static TextStyle fontTextCleanBold([double length = 18]) {
    return GoogleFonts.ptSans(
      color: PersonalColors.colorOnPrimary(),
      fontSize: length,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fontTextDarkBold([double length = 18]) {
    return GoogleFonts.ptSans(
      color: PersonalColors.colorOnSecondary(),
      fontSize: length,
      fontWeight: FontWeight.bold,
    );
  }
}

class ButtonStyle {
  static Map<String, dynamic> typeFontLabelLight = {
    'textColor': PersonalColors.colorPrimaryVariant(),
    'font': 'Roboto',
    'fontLength': 10.0,
  };
}

class Icons {
  static Icon iconEdit([double length = 20]) => Icon(
    FontAwesomeIcons.edit,
    color: PersonalColors.colorOnPrimary(),
    size: length,
  );
  static Icon iconDelete([double length = 20]) => Icon(
    FontAwesomeIcons.trashAlt,
    color: PersonalColors.colorOnError(),
    size: length,
  );
  static Icon iconPicture([double length = 20]) => Icon(
    FontAwesomeIcons.image,
    color: PersonalColors.colorOnPrimary(),
    size: length,
  );
  static Icon iconSetting([double length = 20]) => Icon(
    FontAwesomeIcons.cogs,
    color: PersonalColors.colorOnPrimary(),
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
            color: cor ?? PersonalColors.colorPrimary(),
          ),
          left: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary(),
          ),
          right: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary(),
          ),
          bottom: BorderSide(
            width: widthEdge,
            color: cor ?? PersonalColors.colorPrimary(),
          ),
        ),
      );
}
