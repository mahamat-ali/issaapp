import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String paragraph =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae viverra orci, ac euismod ante. Maecenas feugiat vehicula dictum. Nam sodales semper nunc, non porta massa ornare et. ';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              width: 200,
              child: Image(
                image: AssetImage('assets/profile0.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text.rich(
              TextSpan(text: paragraph),
              softWrap: true,
              textAlign: TextAlign.justify,
              style: GoogleFonts.aBeeZee(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 14,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Take my to home'),
          )
        ],
      ),
    );
  }
}
