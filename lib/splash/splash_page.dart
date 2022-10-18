import 'package:app_figurinhas_copa22/splash/view/nova_tela.dart';
import 'package:app_figurinhas_copa22/styles/colors_styles.dart';
import 'package:app_figurinhas_copa22/styles/text_styles.dart';
import 'package:app_figurinhas_copa22/styles/text_styles.dart';
import 'package:app_figurinhas_copa22/ui/helpers/loader.dart';
import 'package:app_figurinhas_copa22/ui/helpers/messages.dart';
import 'package:app_figurinhas_copa22/widgets/button.dart';

import 'package:flutter/material.dart';

import '../styles/buttton_styles.dart';

class Splash_page extends StatefulWidget {
  Splash_page({super.key});

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page>
    with Loader<Splash_page>, Messages<Splash_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_splash.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .08),
                child: Image.asset(
                  'assets/images/fifa_logo.png',
                  height: MediaQuery.of(context).size.height * .25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .19),
                child: Button(
                  width: MediaQuery.of(context).size.width * .9,
                  onPressed: () {
                    // showInfo('messege');
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => NovaTela()),
                    );
                  },
                  style: context.buttonStyles.yellowButton,
                  labelStyle:
                      context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
                  label: 'Acessar',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Image.asset('assets/images/bandeiras.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
