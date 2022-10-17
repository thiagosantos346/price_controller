import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class TextFieldCustom extends TextFormField {
  TextFieldCustom(
    String label, {
        required TextEditingController controller,
        void Function()? onPressed,
        GlobalKey? keyForm,

        Widget? icon,
        List<TextInputFormatter>? formats,
        Color? labelColor,

        Icon? startIcon,
        String? Function(String?)? validation,
        String? placeHolder,

        bool? hide       = false,
        bool? withLabel  = true,

        required TextInputType inputType,

  }) : super(
          key: keyForm,
          style: FontStyle.fontTextCleanBig,
          cursorColor: PersonalColors.colorOnPrimary,
          controller: controller,
          inputFormatters: formats,
          obscureText: hide ?? false,
          decoration: InputDecoration(
            filled: true,
            fillColor: PersonalColors.colorPrimaryVariant,
            labelText: label,
            hintText: placeHolder,
            hintStyle: FontStyle.fontTextCleanBig,
            errorStyle: FontStyle.fontTextOnErro,
            errorMaxLines: 1,
            isDense: true,
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(10),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  width: 3,
                  color: PersonalColors.colorOnPrimary,
                  style: BorderStyle.solid,
                )
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  width: 3,
                  color: PersonalColors.colorOnPrimary,
                  style: BorderStyle.solid,
                )
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: const BorderSide(
                width: 3,
                color: PersonalColors.colorOnPrimary,
                style: BorderStyle.solid,
              )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  width: 3,
                  color: PersonalColors.colorOnPrimary,
                  style: BorderStyle.solid,
                )
            ),
            labelStyle: FontStyle.fontTextClean,
            suffixIcon: (icon != null)
                ? IconButton(
                    onPressed: onPressed,
                    icon: icon,
                  )
                : null,
            prefixIcon: startIcon,

          ),
          validator: validation,
          onFieldSubmitted: validation,
          keyboardType: inputType,
        );
}
