import 'package:flutter/material.dart';
import 'package:pocscanner/components/button_custom.dart';
import 'package:pocscanner/shared/app_images.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('App Marley'),
            Expanded(
              child: Semantics(
                label: 'Imagem do logo do app',
                child: Image.asset(AppImages.appLogo),
              ),
            ),
            ButtonCustom(
              title: 'Iniciar Rota',
              onTap: () {},
            ),
            ButtonCustom(
              title: 'Configurações',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, '/configuration');
              },
            ),
            ButtonCustom(
              title: 'Ajuda',
              onTap: () {
                //Navigator.pushNamed(context, '/help');
                Navigator.pushNamed(context, '/help');
              },
            ),
          ],
        ),
      ),
    );
  }
}
