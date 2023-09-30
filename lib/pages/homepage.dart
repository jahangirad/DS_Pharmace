import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils/colors_code.dart';
import '../utils/styles.dart';
import 'drawer_page/drawer_page.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: Drawer(
        child: MainDrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          _drawer.currentState!.openDrawer();
        }, icon: Icon(Icons.menu, size: 25,)),
        actions: <Widget>[
          IconButton(
            icon: Stack(
              children: const [
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.red,
                    size: 9,
                  ),
                )
              ],
            ),
            onPressed: () {
            },
          ),

        ],
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
            ),
          ),
          SizedBox(height: 15,),
          CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  height: 200,
                  width: 300,
                  color: ColorsCode.primary_color,
                );
              },
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height *
                    .12,
                autoPlay: true,
                aspectRatio: 1 / 2,
              )),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    color:
                    ColorsCode.page_background_color, //E9F2F2
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Center(
                  child: InkWell(
                    onTap: () {
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Text(
                          "123",
                          style: Style.dashboardBlackText700,
                        ),
                        Text(
                          'Today’s patient',
                          style: Style.dashboardBlackText400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                child: Container(
                  height:
                  MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: const Color(0xff0097E6), //E9F2F2
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            "123",
                            style: Style.dashboardBlackText700,
                          ),
                          const Text(
                            'Patient in queue',
                            style: Style.dashboardBlackText400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Style.distan_size10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                // ignore: unrelated_type_equality_checks
                child: Container(
                  height:
                  MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: ColorsCode
                          .snackbar_error_color, //E9F2F2
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            "123",
                            style: Style.dashboardBlackText700,
                          ),
                          const Text(
                            'Emergency patient',
                            style: Style.dashboardBlackText400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                // ignore: unrelated_type_equality_checks
                child: Container(
                  height:
                  MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: ColorsCode
                          .page_background_color, //E9F2F2
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Text(
                          "123",
                          style: Style.dashboardBlackText700,
                        ),
                        const Text(
                          'Total appointment',
                          style: Style.dashboardBlackText400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Style.distan_size10,
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                SizedBox(
                  // ignore: unrelated_type_equality_checks
                    child: Text(
                      'Be a Donor',
                      style: Style.dashboardBlackText400,
                    )),
                const Spacer(),
                SizedBox(
                  // ignore: unrelated_type_equality_checks
                    child: Text(
                      'See all',
                      style: Style.block_text_style,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // ignore: unrelated_type_equality_checks
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height *
                            0.16,
                        width: MediaQuery.of(context).size.width *
                            0.45,
                        decoration: BoxDecoration(
                            color: ColorsCode
                                .page_background_color, //E9F2F2
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/blooddonation.png',
                            ),
                            const Text(
                              'Bload donation',
                            ),
                          ],
                        ),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  // ignore: unrelated_type_equality_checks
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height:
                      MediaQuery.of(context).size.height * 0.16,
                      width:
                      MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          color: ColorsCode
                              .page_background_color, //E9F2F2
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/donation.png'),
                          const Text(
                            'Donation',
                            style: Style.dashboardBlackText400,
                          ),
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

