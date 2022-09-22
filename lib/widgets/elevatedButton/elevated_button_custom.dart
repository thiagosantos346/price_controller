import 'package:flutter/src/material/icons.dart';
import 'package:flutter/material.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final void Function() onPressed;
  final Widget? label;

  final void Function()? onLongPressed;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Widget? icon;
  final double? heigth;
  final EdgeInsets? edges;
  final Color? color;

  const ElevatedButtonCustom({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPressed,
    this.focusNode,
    this.autofocus,
    this.icon,
    this.heigth,
    this.edges,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (heigth != null) ? heigth : 45,
      padding: (edges != null) ? edges : const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 25,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: (icon != null)
          ? ElevatedButton.icon(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                alignment: Alignment.centerLeft,
                shadowColor: PersonalColors.colorOnShadow,
                primary: (color != null)
                    ? color
                    : PersonalColors.colorPrimaryVariant,
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                textStyle: FontStyle.fontTextCleanBoldBig,
              ),
              icon: (icon != null) ? icon! : const Icon(Icons.error),
              label: (label != null)
                  ? label!
                  : const Text('Defina seu texto'),
          )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shadowColor: PersonalColors.colorOnShadow,
                primary: (color != null)
                    ? color
                    : PersonalColors.colorPrimaryVariant,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                textStyle: FontStyle.fontTextCleanBoldBig,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (label != null)
                  ? label!
                  : const Text('Defina seu texto'),
                ],
              )),
    );
  }
}
