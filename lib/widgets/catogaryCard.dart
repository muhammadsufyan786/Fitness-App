import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget{
  final String svgSrc;
  final String title;
  final Function press;
//Constructor
  const CategoryCard({super.key,
  required this.svgSrc,
  required this.title,
  required this.press,
  });

  @override
  Widget build(BuildContext context) {      
   return  
   ClipRRect(
    borderRadius: BorderRadius.circular(14),
     child: Container(
      // padding:  EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow:const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: Colors.black45,
          )
        ]
      ),
      child:  Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: ()=>press(),
          child: Padding(
              padding: const  EdgeInsets.all(20),
            child: Column(
              children: [
               const Spacer(),
                SvgPicture.asset(svgSrc),
               const Spacer(),
                Text(title,textAlign: TextAlign.center,style: const TextStyle(fontSize: 14,fontWeight :FontWeight.w500),)
              ]
            ),
          ),
        ),
      ),   
     ),
   );
  }
}
