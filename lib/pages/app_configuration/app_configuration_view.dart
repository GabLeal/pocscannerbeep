import 'package:flutter/material.dart';
import 'package:pocscanner/pages/app_configuration/card_switch_option_widget.dart';
import 'package:pocscanner/shared/app_colors.dart';

class AppConfigurationView extends StatelessWidget {
  const AppConfigurationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Configurações',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: const [
                CardSwitchOptionWidget(
                  title: 'Vibração',
                  description:
                      'Defina se o celular irá vibrar ou não ao ler um QR code.',
                ),
                SizedBox(
                  height: 10,
                ),
                CardSwitchOptionWidget(
                  title: 'Apitar',
                  description:
                      'Define se o celular irá apitar ou não ao ler um QR code.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
