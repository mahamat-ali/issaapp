import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String paragraph =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae viverra orci, ac euismod ante. Maecenas feugiat vehicula dictum. Nam sodales semper nunc, non porta massa ornare et. Donec justo lectus, pulvinar in auctor a, tincidunt at quam. In non tempor tellus, sit amet malesuada metus. Praesent consequat libero non enim gravida, ut tempor sem ornare. Curabitur pulvinar nulla est, in sollicitudin sem congue quis. Ut et pharetra tortor. Vivamus turpis tellus, venenatis a hendrerit vel, porta quis ante.';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text.rich(
              TextSpan(text: paragraph),
              softWrap: true,
              textAlign: TextAlign.justify,
              style: GoogleFonts.laila(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          )
        ],
      ),
    );
  }
}
