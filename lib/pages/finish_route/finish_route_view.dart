import 'package:flutter/material.dart';
import 'package:pocscanner/components/button_custom.dart';
import 'package:pocscanner/shared/app_images.dart';

class FinishRouteView extends StatelessWidget {
  const FinishRouteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Parabéns, você finalizou o seu trajeto. Clique em "finalizar” e volte para tela inicial.',
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Image.asset(AppImages.finishRoute),
              ),
            ),
            ButtonCustom(
              title: 'Finalizar',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
