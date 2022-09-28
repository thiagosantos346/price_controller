import 'dart:io';

import 'package:flutter/material.dart';
import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

import '../../modules/login/login_page.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    this.onPressedUseButton,
    this.onPressedEditButton,
    this.onPressedDeleteButton,
    this.iconCard,
    required this.textValueListName,
    required this.textValueCreatedAt,
    required this.textValueStatus,
    required this.textValueTotalList,
  });

  static const double _elevatedButtonHeigth = 25;
  static const double _elevatedButtonWidth = 80;
  static const double _elevatedIconButtonSize = 15;
  static const double _dividerMiddleHeight = 10;
  static const double _dividerBottomHeight = 5;
  static const double _dividerBottomThickness = 1;
  static const double _cardElevation = 10;
  static const double _cardIconSize = 70;
  static const EdgeInsets _cardIconEdges = EdgeInsets.fromLTRB(5, 5, 5, 5);

  final String textValueListName;
  final String textValueCreatedAt;
  final String textValueStatus;
  final String textValueTotalList;
  final void Function()? onPressedUseButton;
  final void Function()? onPressedEditButton;
  final void Function()? onPressedDeleteButton;
  final Widget? iconCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: PersonalColors.colorPrimaryVariant,
        shadowColor: PersonalColors.colorOnShadow,
        elevation: _cardElevation,
        child: Column(
          children: [
            Row(children: <Widget>[
              Container(
                padding: _cardIconEdges,
                child: SizedBox(
                  height: _cardIconSize,
                  width: _cardIconSize,
                  child:
                      (iconCard != null) ? iconCard! : PersonalIcons.assaiIco(),
                ),
              ),
              PersonalDecorations.centeredLabelButtonMultiLines([
                Text(
                  'Lista de compras..: $textValueListName',
                  style: FontStyle.fontTextAlternativeBoldLittleSmall,
                ),
                Text(
                  'Data de criação...: $textValueCreatedAt',
                  style: FontStyle.fontTextAlternativeBoldLittleSmall,
                ),
                Text(
                  'Status............: $textValueStatus',
                  style: FontStyle.fontTextAlternativeBoldLittleSmall,
                ),
                Text(
                  'Total da lista....: RS $textValueTotalList',
                  style: FontStyle.fontTextAlternativeBoldLittleSmall,
                ),
              ]),
            ]),
            const Divider(
              height: _dividerMiddleHeight,
              color: PersonalColors.colorOnPrimary,
              thickness: _dividerBottomThickness,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButtonCustom(
                  heigth: _elevatedButtonHeigth,
                  width: _elevatedButtonWidth,
                  onPressed: (onPressedUseButton != null)
                      ? onPressedUseButton!
                      : () {
                          return;
                        },
                  label: PersonalDecorations.centeredLabelButton(
                    'Usar',
                    FontStyle.fontTextCleanSmall,
                  ),
                  icon: const Icon(
                    Icons.unarchive,
                    size: _elevatedIconButtonSize,
                  ),
                ),
                ElevatedButtonCustom(
                  heigth: _elevatedButtonHeigth,
                  width: _elevatedButtonWidth,
                  onPressed: (onPressedEditButton != null)
                      ? onPressedEditButton!
                      : () {
                          return;
                        },
                  label: PersonalDecorations.centeredLabelButton(
                    'Editar',
                    FontStyle.fontTextCleanSmall,
                  ),
                  icon: const Icon(
                    Icons.edit,
                    size: _elevatedIconButtonSize,
                  ),
                ),
                ElevatedButtonCustom(
                  heigth: _elevatedButtonHeigth,
                  width: _elevatedButtonWidth,
                  onPressed: (onPressedDeleteButton != null)
                      ? onPressedDeleteButton!
                      : () {
                          return;
                        },
                  label: PersonalDecorations.centeredLabelButton(
                    'Apagar',
                    FontStyle.fontTextCleanSmall,
                  ),
                  icon: const Icon(
                    Icons.delete,
                    size: _elevatedIconButtonSize,
                  ),
                )
              ],
            ),
            Divider(
              height: _dividerBottomHeight,
              color: PersonalColors.colorPrimary.withOpacity(0.1),
            ),
          ],
        ),
      ),
    );
  }
}
