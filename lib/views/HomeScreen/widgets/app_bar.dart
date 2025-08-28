import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

Widget homeAppBar(Size size) {
  return Container(
    padding: EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
    height: size.height * .25,
    width: size.width,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [AppColors.secondColor, AppColors.primaryColor],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: .5),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: .1),
                shape: BoxShape.circle,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Icon(Icons.notifications, color: Colors.white),
                  Positioned(
                    right: 2,
                    top: 2,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: .6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search Your Topic!',
              suffixIcon: Icon(Icons.mic, color: AppColors.primaryColor),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black.withValues(alpha: .6),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
