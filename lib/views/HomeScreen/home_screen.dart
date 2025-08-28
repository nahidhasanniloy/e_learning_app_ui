import 'package:e_learning_app/utils/colors.dart';
import 'package:e_learning_app/views/HomeScreen/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Column(children: [
          homeAppBar(size),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Explore Categories',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize:20, color: Colors.black),
                        ),
                        Text('See all',
                          style: TextStyle(fontWeight: FontWeight.w700,fontSize:16, color: AppColors.primaryColor),
                        )
                      ],
                    ),
                    // grid view builder
                    GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                        crossAxisSpacing: 15,


                      ), itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                           color:Colors.white,
                           borderRadius: BorderRadius.circular(20),
                          boxShadow: [ BoxShadow(
                            color: Colors.black.withValues(alpha: .1),
                            blurRadius: 10,
                            spreadRadius: .3,
                          )]






                        ),

                      );
                            
                    },)
                            
                            
                            
                            
                  ],
                ),
              ),
            ),
          )




            ])
    );
  }
}
