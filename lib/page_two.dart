import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 450,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/profile.jpg'),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(600),
                  ),
                ),
                Positioned(
                  top: 280,
                  child: Column(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                        ),
                      ),
                      SizedBox(
                        width: 240,
                        child: Text(
                          'Nam sodales semper nunc, non porta massa ornare et. Donec justo lectus, pulvinar in auctor a, tincidunt at quam. In non tempor tellus, sit amet malesuada metus',
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
          itemCount: 3,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      ),
    );
  }
}
