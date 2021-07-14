import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:issaapp/models/swipe_card_details.dart';

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
            print(index);
            final person = SwipeData.samples[index];

            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(person.imageUrl.toString()),
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
                        person.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                        ),
                      ),
                      SizedBox(
                        width: 240,
                        child: Text(
                          person.description,
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
          itemCount: SwipeData.samples.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      ),
    );
  }
}
