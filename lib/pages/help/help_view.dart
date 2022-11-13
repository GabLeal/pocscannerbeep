import 'package:flutter/material.dart';
import 'package:pocscanner/pages/help/instruction_widget.dart';
import 'package:pocscanner/shared/app_colors.dart';

class HelpView extends StatelessWidget {
  const HelpView({Key? key}) : super(key: key);

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
          'Ajuda',
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
            child: Wrap(
              runSpacing: 16,
              children: const [
                InstructionWidget(
                  title: '1. Funcionamento do App',
                  description:
                      'Descrição do fluxo do aplicativo, explicando a que tela cada botão leva e qual a finalidade daquela tela.',
                ),
                InstructionWidget(
                  title: '2. Instruções de Uso',
                  description:
                      'Instruções de como navegar com o aplicativo, por exemplo, QR codes sempre ficarão à direita, antes de uma curva sempre haverá um QR Code...',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
