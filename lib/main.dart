import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/screen/Med_Detail_Screen.dart';
import 'package:meditation_app/widgets/bottom_NavBar.dart';
import 'package:meditation_app/widgets/catogaryCard.dart';
import 'package:meditation_app/widgets/search_Bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        fontFamily: 'Cario',
      ),
      home:       
       HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height*0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CE88),
              image: DecorationImage(image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              alignment: Alignment.centerLeft,
              )
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,

                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF2BEA1),
                        
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                ),
               const SizedBox(height: 10),

            const  Align( alignment: Alignment.topLeft,
            
                child: Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text("Good Morning \n Sufyan !",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600 )))),

                const  SizedBox(height :18),

                const search_Bar(),

              const  SizedBox(height: 20),
              
                Expanded(
                  child:
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 27),
                   child:  GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children:  [
                   CategoryCard(svgSrc: "assets/icons/Hamburger.svg",title: "Diet \nRecommendation",press : (){}),
                    CategoryCard(svgSrc: "assets/icons/Meditation.svg",title: "Meditation",press : (){
                      Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context){
                        return  const MedDetailScreen();
                      }));
                    }),
                   CategoryCard(svgSrc: "assets/icons/Excrecises.svg",title: "Kegel Exercises",press : (){}),
                    CategoryCard(svgSrc: "assets/icons/yoga.svg",title: "Yoga",press : (){}),                  
                  ]))                
                  )
              ],
            ))
        ], 
      )     
    );
  }
}

// ignore: camel_case_types
class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
      height:  80,
      color:  Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "Today", press: (){},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "GYM", press: (){},
            isActive: true,
          ),
           BottomNavItem(
           svgSrc: "assets/icons/Settings.svg",
            title: "Setting", press: (){},
          ),   
      ]
      ),
    );
  }
}



