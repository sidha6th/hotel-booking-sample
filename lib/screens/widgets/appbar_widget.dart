import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_sample/constants/const_colors.dart';
import 'package:hotel_booking_sample/screens/booking_screen/bookin_screen.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget(
      {this.leadingWidth = 250,
      this.shouldNeedtrailing = false,
      required this.leadingWidget,
      Key? key})
      : super(key: key);
  final Widget leadingWidget;
  final bool shouldNeedtrailing;
  final double leadingWidth;

  @override
  Widget build(BuildContext context) => AppBar(
        leading: leadingWidget,
        automaticallyImplyLeading: false,
        backgroundColor: transp,
        leadingWidth: leadingWidth,
        actions: shouldNeedtrailing
            ? <IconButton>[
                IconButton(
                  onPressed: () {
                    Get.to(const BookingScreen());
                  },
                  icon: const Icon(Icons.search),
                ),
              ]
            : [],
        elevation: 0,
        toolbarHeight: 40,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: transp,
          statusBarBrightness: Brightness.light,
          statusBarColor: transp,
          statusBarIconBrightness: Brightness.dark,
        ),
      );
}
