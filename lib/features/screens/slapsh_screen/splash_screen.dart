
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class SplashScreen extends StatelessWidget {
  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(
        onTap: (){
               //context.router.push(const HomeRoute());
        },
        child: const Center(
          child: Text('Başla') 
        ),
      ),
    ) ;
  }
}
