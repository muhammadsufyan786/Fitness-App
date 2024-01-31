import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/main.dart';

import 'package:meditation_app/widgets/search_Bar.dart';

class MedDetailScreen extends StatelessWidget{
  const MedDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
   return Scaffold(
    bottomNavigationBar: const bottomNavBar(),
    body: Stack(
      children: [
        Container(
          height: size.height*.45,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade400,
            image: const DecorationImage(
              image: AssetImage('assets/images/meditation_bg.png'),
              fit: BoxFit.fitWidth),
          ),
        ),
          
          SafeArea(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox( height: size.height*0.05),
                  
                 
                const  Text("Meditation",style: TextStyle(fontFamily: 'Cario',fontSize: 26,fontWeight: FontWeight.w900)),

                const  SizedBox(height: 10),

                const  Text(
                    "3-10 MIN Course",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,),
                    ),
                  SizedBox(
                    width: size.width*0.8,
                    child: const Text("Live happier and healthier by learning the fundamentals of meditation and mindfulness",style: TextStyle(fontWeight: FontWeight.w500),)
                
                  ),
                const  SizedBox(height: 10,),
                  SizedBox(
                   
                    width: size.width*0.6,
                     child: const search_Bar(),
                  ),
                   const SizedBox(height: 30),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      sessionCard( isDone: true,
                      press: (){},
                      sessionNum: 1
                      ),
                      sessionCard( 
                        press: (){},
                      sessionNum: 2
                      ),
                       sessionCard( press: (){},
                      sessionNum: 3
                      ),
                       sessionCard( press: (){},
                      sessionNum: 4
                      ),
                       sessionCard( press: (){},
                      sessionNum: 5
                      ),
                       sessionCard( press: (){},
                      sessionNum: 6
                      ),
                     
                    ],
                  ),

                const  SizedBox(height: 20),

                const  Text('Meditation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black)),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(10),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                          BoxShadow(
                  offset:  Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.black45,
                      )
                      ],                     
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset('assets/icons/Meditation_women_small.svg')),

                         const SizedBox(width: 20),

                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Basic 2",style:Theme.of(context).textTheme.subtitle2 ),
                            const  Text('Start Your deppen practice'),
                            ],
                          )
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg')
                            )
                      ],
                    ),
                  )
                
                ]
                ),
              ),
            )
          )         
      ],
    ) ,
   );
  }
}

// ignore: camel_case_types
class  sessionCard extends StatelessWidget{
   final int sessionNum;
  final bool isDone;
  final Function press;

  const sessionCard({super.key,
  required this.sessionNum,
   this.isDone=false,
    required this.press,
  
  });
  
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
    
      builder: (context, constraint) {
        return 
        ClipRRect(
           borderRadius: BorderRadius.circular(14),
          child: Container(
           
           width: constraint.maxWidth/2-10,  // provide max width availible for  us
           
                 
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset:  Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: Colors.black45,
                
                
              )
            ]
          ),
          child:  Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press(),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone? Colors.blueGrey: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.lightBlue.shade400)
                      
                    ),
                    child:  Icon(Icons.play_arrow,color: isDone ? Colors.white : Colors.blueGrey,),
                  ),

              const  SizedBox(height: 10),
                
                Padding( padding:const EdgeInsets.symmetric(horizontal: 10), 
                  child:  Text("Season ${sessionNum}",style: const TextStyle(fontWeight: FontWeight.w600),))
                ]),
              ),
            ),
          ),          
          ),
        );
      }
    );
  }

}