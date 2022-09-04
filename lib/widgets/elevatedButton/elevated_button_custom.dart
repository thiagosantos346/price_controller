
import 'package:flutter/material.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class ElevatedButtonCustom extends StatelessWidget {

  final void Function() onPressed;
  final String label;

  final void Function()? onLongPressed;
  final FocusNode? focusNode;
  final bool? autofocus;

  const ElevatedButtonCustom({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPressed,
    this.focusNode,
    this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
     return ElevatedButton(
       onPressed: onPressed,
       style: ElevatedButton.styleFrom(
         primary: PersonalColors.colorPrimaryVariant,
         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
         textStyle: FontStyle.fontTextCleanBig,
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(label),
         ],
       ),
     );
  }


}
