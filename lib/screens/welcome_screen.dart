import 'package:flutter/material.dart';
import 'package:my_app/widgets/app_large_text.dart';
import 'package:my_app/widgets/app_text.dart';
import 'package:my_app/widgets/responsive_button.dart';

class WelcomeScreen extends StatefulWidget {

  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    'image_1.PNG',
    'image_2.PNG',
    'image_3.PNG'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/" + images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: 'MB Bank', color: Colors.white,),
                    AppText(text: 'MB', color: Colors.white),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: AppText(
                          text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod.',
                          color: Colors.white,
                          size: 14,
                      ),
                    ),
                    ResponsiveButton(width: 120,)
                  ],
                ),
                Column(
                  children: List.generate(3, (indexDots){
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index == indexDots ? 28 : 8,
                      decoration: BoxDecoration(
                        color: index == indexDots ? Colors.white : Colors.white54,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
