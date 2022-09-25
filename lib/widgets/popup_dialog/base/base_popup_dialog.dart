import 'package:flutter/material.dart';
import 'package:price_controller/widgets/popup_dialog/base/base_popup_dialog_state.dart';

class BasePopupUpDialog extends StatefulWidget{

  const BasePopupUpDialog({
    Key? key,
    required this.formKey,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final VoidCallback onPressed;
  final Widget child;

  @override
  BasePopupDialogState createState() => BasePopupDialogState();

}