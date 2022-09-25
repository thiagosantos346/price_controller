import 'package:flutter/material.dart';
import 'package:price_controller/widgets/popup_dialog/base/base_popup_dialog.dart';

abstract class BasePopupDialogControllers {}

class BasePopupDialogState extends State<BasePopupUpDialog> {
  late final GlobalKey<FormState> formKey;
  late final VoidCallback onPressed;
  late final Widget child;

  BasePopupDialogState(){
    formKey = widget.formKey;
    onPressed = widget.onPressed;
    child = widget.child;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      child: Column(
        children: [
          Form(
            key: formKey,
            child: child,
          ),
        ],
      ),
    );
  }
}
