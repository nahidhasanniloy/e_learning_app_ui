import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? width;
   final void Function()? onTap;


  const CustomButton({super.key, required this.title, this.width, this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);


    return InkWell(
      onTap: onTap ,
      child: Container(
        width:width ?? size.width * .8,
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow( color: AppColors.primaryColor.withValues(alpha:.6),
                blurRadius: 10,
                spreadRadius: 5,
                offset:Offset(2, 6)

            )
          ],
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Center(child: Text(title, style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize:18,),)),
      ),
    );
  }
}
