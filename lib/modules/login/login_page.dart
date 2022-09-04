import 'package:price_controller/widgets/textField/text_field_custom.dart';
import 'package:price_controller/modules/login/login_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _loginUserController = TextEditingController();
  final _loginUserPassWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PersonalColors.colorPrimaryMaterial.shade500,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(16, 100, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Entrar',
                      style: FontStyle.fontTextCleanVeryStrong,
                    ),
                  ],
                ),
              ),
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: TextFieldCustom(
                            'E-mail',
                            controller: _loginUserController,
                            placeHolder: 'example@ex.com',
                            withLabel: true,
                            inputType: TextInputType.emailAddress,
                            validation: (value) {
                              if(value!.isEmpty){
                                return "Digite um e-mail!";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: TextFieldCustom(
                            'Senha',
                            controller: _loginUserPassWord,
                            placeHolder: '',
                            withLabel: true,
                            hide: true,
                            inputType: TextInputType.text,
                            validation: (value) {
                              if(value!.isEmpty){
                                return "Digite sua senha!";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: PersonalColors.colorPrimaryVariant,
                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                textStyle: FontStyle.fontTextCleanBig,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('Entrar'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
                                    child: InkWell(
                                      onTap: () {  },
                                      child: const Text(
                                          'Registra-se.',
                                          style : TextStyle(
                                              color: PersonalColors.colorOnPrimary,
                                              fontFamily: 'Roboto'
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: InkWell(
                                      onTap: () {  },
                                      child: const Text(
                                          'Esqueci minha senha.',
                                        style: TextStyle(
                                            color: PersonalColors.colorOnPrimary,
                                          fontFamily: 'Roboto'
                                        )
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
