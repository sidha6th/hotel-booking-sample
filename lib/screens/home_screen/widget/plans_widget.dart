import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_sample/constants/const_datas.dart';
import 'package:hotel_booking_sample/extra/extension.dart';

class PlansWidget extends StatelessWidget {
  const PlansWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          plansList.length,
          (index) => Expanded(
            child: Card(
              borderOnForeground: false,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: plansList[index].color,
              child: SizedBox(
                height: context.getSize().width / 4,
                child: plansList[index].svgIcon != null
                    ? Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(plansList[index].svgIcon!),
                      )
                    : plansList[index].icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
