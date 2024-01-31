
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class  BottomNavItem extends StatelessWidget{

  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive ;
  const BottomNavItem({
    super.key,
   required this.svgSrc,
   required this.title,
   required this.press,
   this.isActive=false,
  });

  
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: press(),
    child: Column(  
      mainAxisAlignment:  MainAxisAlignment.spaceAround,
      children: [
        // ignore: deprecated_member_use
        SvgPicture.asset(svgSrc,color:  isActive? Colors.orangeAccent : Colors.black ),
        Text(title,style: TextStyle(color:  isActive? Colors.orangeAccent : Colors.black ,fontWeight: FontWeight.bold,fontSize: 12),),
      ]
      ),
   );
  }
}



