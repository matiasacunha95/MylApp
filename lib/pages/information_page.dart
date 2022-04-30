import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mylapp/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                )),
            const Center(
                child:
                    Hero(tag: 'logo', child: Image(image: NetworkImage(logo)))),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                  'Esta es una aplicación hecha por admiradores de los productos Mitos y Leyendas. Todos los derechos de la información de cartas e imágenes pertenecen a Fenix Entertainment S.P.A y Klu Trending & Novelties',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text('Visita sus canales oficiales',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _aportButton('https://myl.cl/', 'Sitio Web',
                      FontAwesomeIcons.link, 24),
                  _aportButton('https://tor.myl.cl/cartas/', 'TOR',
                      FontAwesomeIcons.trophy, 24),
                  _aportButton('https://www.instagram.com/myl_oficial/',
                      'Instagram', FontAwesomeIcons.instagram, 24),
                ],
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 30.0),
            //   child: Text('Apoya al desarrollador',
            //       textAlign: TextAlign.justify,
            //       style: TextStyle(color: Colors.white)),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       _aportButton('https://www.buymeacoffee.com/matiasacunha95',
            //           'Cómprame un café', FontAwesomeIcons.coffee, 24),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget _aportButton(String url, String text, IconData icon, double size) {
    return GestureDetector(
      onTap: () async {
        await launchUrlString(url);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color.fromRGBO(220, 20, 60, 0.7)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: size,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Center(
                  child:
                      Text(text, style: const TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
