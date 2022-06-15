import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hotel_booking_sample/constants/const_colors.dart';
import 'package:hotel_booking_sample/controllers/home_screen_controller.dart';
import 'package:hotel_booking_sample/model/destination_model/destination_model.dart';
import 'package:hotel_booking_sample/screens/widgets/txt_widdget.dart';

class GridDataHoldingWidget extends StatelessWidget {
  const GridDataHoldingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
          future: HomeScreenController.getDestination(),
          builder: (context, AsyncSnapshot<List<Data>?> snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? MasonryGridView.extent(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        itemCount: snapshot.data?.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        maxCrossAxisExtent: 200,
                        itemBuilder: (_, index) => SizedBox(
                          child: Stack(
                            fit: StackFit.passthrough,
                            alignment: Alignment.bottomLeft,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                    fit: BoxFit.cover,
                                    snapshot.data![index].avatar!),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      TxtWidget(
                                        text: snapshot.data?[index].firstName ??
                                            'Unknown',
                                        color: white,
                                        weight: FontWeight.bold,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Card(
                                          color: const Color.fromARGB(
                                              133, 255, 255, 255),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: const [
                                              TxtWidget(
                                                text: '4.0',
                                                color: white,
                                                weight: FontWeight.bold,
                                              ),
                                              Icon(
                                                Icons.star_border,
                                                color: white,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : const Center(
                        child: TxtWidget(text: 'No Data Found'),
                      )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
