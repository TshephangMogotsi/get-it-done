import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBackgroundCircle extends StatelessWidget {
  const TopBackgroundCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 200,
      bottom: -210,
      child: SvgPicture.asset(
        'assets/Circle.svg',
      ),
    );
  }
}

class BottomBackgroundCircle extends StatelessWidget {
  const BottomBackgroundCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 160,
      top: -170,
      child: SvgPicture.asset(
        'assets/Circle.svg',
      ),
    );
  }
}

class HomePageBackgroundCircle extends StatelessWidget {
  const HomePageBackgroundCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: SvgPicture.asset(
        'assets/MainCircle.svg',
        
      ),
      
    );
  }
}
