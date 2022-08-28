import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class TextField extends TextFormField {
  TextField(
    label, {
    Color? labelColor,
    Function(String)? onValidation,
    GlobalKey? keyForm,
    Icon? startIcon,
    List<TextInputFormatter>? formats,
    String? Function(String?)? validation,
    String? placeHolder,
    TextStyle? textStyle,
    Widget? icon,
    bool numbersOnly = false,
    bool? hide,
    bool? withEdges = true,
    bool? withLabel = true,
    required TextEditingController controller,
    void Function()? onPressed,
  }) : super(
          key: keyForm,
          style: textStyle,
          controller: controller,
          inputFormatters: formats,
          obscureText: hide ?? false,
          decoration: InputDecoration(
            labelText: label,
            hintText: placeHolder,
            errorStyle: const TextStyle(
              color: PersonalColors.colorOnError,
            ),
            border: withEdges!
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                : InputBorder.none,
            labelStyle: TextStyle(
              color: withLabel !
                ? PersonalColors.colorPrimaryVariant
                : PersonalColors.colorPrimary,
            ),
            suffixIcon: (icon != null)
                ? IconButton(
                    onPressed: onPressed,
                    icon: icon,
                  )
                : null,
            prefixIcon: startIcon,
          ),
          validator: validation,
          onFieldSubmitted: onValidation,
          keyboardType: numbersOnly
              ? const TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
        );
}
