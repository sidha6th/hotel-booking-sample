import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_sample/constants/const_colors.dart';
import 'package:hotel_booking_sample/constants/const_datas.dart';
import 'package:hotel_booking_sample/extra/extension.dart';
import 'package:hotel_booking_sample/screens/widgets/appbar_widget.dart';
import 'package:hotel_booking_sample/screens/widgets/txt_widdget.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/backgroundimg.jpeg',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: transp,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: AppbarWidget(
            leadingWidth: 60,
            leadingWidget: Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 50,
              height: 50,
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 142, 159, 254),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: FittedBox(
                      child: TxtWidget(
                        text: 'Hotel Booking',
                        color: white,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: TxtWidget(
                      text: '2,133 World class Hotel for You and Your Family',
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        40,
                      ),
                      topRight: Radius.circular(
                        40,
                      ),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              bookingModelList.length,
                              (index) => ListTile(
                                    leading: Card(
                                      color: const Color.fromARGB(
                                          255, 238, 228, 228),
                                      elevation: 0,
                                      child: SizedBox(
                                        width: 45,
                                        height: 45,
                                        child: bookingModelList[index].icon,
                                      ),
                                    ),
                                    title: TxtWidget(
                                      text: bookingModelList[index].title,
                                      weight: FontWeight.bold,
                                    ),
                                    subtitle: TxtWidget(
                                      text: bookingModelList[index].subTitle,
                                      weight: FontWeight.bold,
                                    ),
                                  )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 142, 159, 254),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                fixedSize: Size(context.getSize().width, 60)),
                            onPressed: () {},
                            child: const TxtWidget(
                              text: 'SEARCH',
                              size: 18,
                              color: white,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
