import 'package:flutter/material.dart';
import 'package:hotel_booking_sample/constants/const_colors.dart';
import 'package:hotel_booking_sample/constants/const_datas.dart';
import 'package:hotel_booking_sample/extra/extension.dart';
import 'package:hotel_booking_sample/screens/home_screen/widget/bottom_navigation_widget.dart';
import 'package:hotel_booking_sample/screens/home_screen/widget/grid_data_holding_widget.dart';
import 'package:hotel_booking_sample/screens/home_screen/widget/plans_widget.dart';
import 'package:hotel_booking_sample/screens/widgets/appbar_widget.dart';
import 'package:hotel_booking_sample/screens/widgets/txt_widdget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 40),
        child: AppbarWidget(
          leadingWidth: 240,
          shouldNeedtrailing: true,
          leadingWidget: FittedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TxtWidget(
                text: 'Hi Antenio !',
                weight: FontWeight.bold,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IgnorePointer(
              ignoring: true,
              child: SizedBox(
                width: context.getSize().width / 2,
                child: ExpansionTile(
                  title: FittedBox(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'Where To ',
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '54 KING PORTS',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 233, 68, 68),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const PlansWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                plansList.length,
                (index) => TxtWidget(
                  weight: FontWeight.bold,
                  text: plansList[index].name,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 0.1,
              thickness: 1.1,
              color: Color.fromARGB(72, 104, 104, 104),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: context.getSize().width / 2,
                  child: const FittedBox(
                    child: TxtWidget(
                      text: 'Best Destination',
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                const TxtWidget(
                  text: 'SEE ALL',
                  color: Colors.grey,
                  weight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const GridDataHoldingWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
