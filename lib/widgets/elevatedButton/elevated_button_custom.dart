import 'package:flutter/src/material/icons.dart';
import 'package:flutter/material.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final void Function() onPressed;
  final String label;

  final void Function()? onLongPressed;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Icon? icon;

  const ElevatedButtonCustom({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPressed,
    this.focusNode,
    this.autofocus,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 25,
              offset: Offset(0, 3),
            )
          ],
      ),
      child: (icon != null )?
        ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shadowColor: PersonalColors.colorOnShadow,
          primary: PersonalColors.colorPrimaryVariant,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          textStyle: FontStyle.fontTextCleanBoldBig,
        ),
        icon: (icon != null)? icon! : const Icon(
          Icons.error
        ),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(label),
          ],
        )
      ) : ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shadowColor: PersonalColors.colorOnShadow,
            primary: PersonalColors.colorPrimaryVariant,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            textStyle: FontStyle.fontTextCleanBoldBig,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(label),
            ],
          )
      ),

    );
  }
}
