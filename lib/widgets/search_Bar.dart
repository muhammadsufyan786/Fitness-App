import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class search_Bar extends StatelessWidget {
  const search_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 50,
     width: 320,
     margin: const EdgeInsets.symmetric(vertical: 10),
     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(30), 
     color: Colors.white
                    ),
    
     child: TextField(                    
       decoration: InputDecoration(
         hintText: "Search",
         icon: SvgPicture.asset('assets/icons/search.svg'),
         border: InputBorder.none ,
       ),
     ),
    );
  }
}