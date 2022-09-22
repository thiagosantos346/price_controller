import 'package:flutter/material.dart';
import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

import '../../modules/login/login_page.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: PersonalColors.colorPrimary,
        shadowColor: PersonalColors.colorOnShadow,
        elevation: 10,
        child: Column(
          children: [
            Row(children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: PersonalIcons.assaiIco(),
              ),
              PersonalDecorations.centeredLabelButtonMultiLines([
                Text(
                  'Lista de compras..: Assaí Atacadista',
                  style: FontStyle.fontTextAlternativeCleanSmall,
                ),
                Text(
                  'Data de criação...: 24/08/2022',
                  style: FontStyle.fontTextAlternativeCleanSmall,
                ),
                Text(
                  'Status............: Guardada',
                  style: FontStyle.fontTextAlternativeCleanSmall,
                ),
                Text(
                  'Total da lista....: RS 90,50',
                  style: FontStyle.fontTextAlternativeCleanSmall,
                ),
              ]),
            ]),
            const Divider(
              height: 5,
              color: PersonalColors.colorOnPrimary,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButtonCustom(
                  heigth: 30,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  label: PersonalDecorations.centeredLabelButton(
                      'Usar', FontStyle.fontTextCleanSmall),
                  icon: const Icon(
                    Icons.unarchive,
                    size: 15,
                  ),
                ),
                ElevatedButtonCustom(
                  heigth: 30,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  label: PersonalDecorations.centeredLabelButton(
                      'Editar', FontStyle.fontTextCleanSmall),
                  icon: const Icon(
                    Icons.edit,
                    size: 15,
                  ),
                ),
                ElevatedButtonCustom(
                  heigth: 30,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  label: PersonalDecorations.centeredLabelButton(
                    'Apagar',
                    FontStyle.fontTextCleanSmall,
                  ),
                  icon: const Icon(
                    Icons.delete,
                    size: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
