import 'package:expense_management_app/utils/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //circle avatar
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),

              const Row(
                children: [
                  Icon(CupertinoIcons.chevron_down),
                  Text("October"),
                ],
              ),
              //bell icon
              Icon(CupertinoIcons.bell_fill, color: AppColors.violetColor),
            ],
          ),
          const Text(
            'Account Balance',
            style: TextStyle(
              color: Color(0xFF90909F),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 500,
            height: 40,
            child: Text(
              '\$9400',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF161719),
                fontSize: 40,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(CupertinoIcons.camera_fill,
                        color: Colors.white, size: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Income", style: TextStyle(color: Colors.white)),
                        Text("\$5000", style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(CupertinoIcons.camera_fill,
                        color: Colors.white, size: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Expenses", style: TextStyle(color: Colors.white)),
                        Text("\$1200", style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            //margin left
            margin: const EdgeInsets.only(top: 40, right: 200),
            child: const Text(
              'Spend Frequency',
              style: TextStyle(
                color: Color(0xFF161719),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //image chart
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: Image.asset('assets/images/chart.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // children: [
            //   Text(
            //     'Today',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Color(0xFFFCAC12),
            //       fontSize: 15,
            //       fontFamily: 'Inter',
            //       fontWeight: FontWeight.w700,
            //       height: 0.09,
            //     ),
            //   ),
            //   Text(
            //     'Week',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Color(0xFF90909F),
            //       fontSize: 15,
            //       fontFamily: 'Inter',
            //       fontWeight: FontWeight.w500,
            //       height: 0.09,
            //     ),
            //   ),
            //   Text(
            //     'Week',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Color(0xFF90909F),
            //       fontSize: 15,
            //       fontFamily: 'Inter',
            //       fontWeight: FontWeight.w500,
            //       height: 0.09,
            //     ),
            //   ),
            //   Text(
            //     'Month',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Color(0xFF90909F),
            //       fontSize: 15,
            //       fontFamily: 'Inter',
            //       fontWeight: FontWeight.w500,
            //       height: 0.09,
            //     ),
            //   ),
            // ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFFBFBFB)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFCEED3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Today',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFCAC12),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Opacity(
                      opacity: 0.80,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Week',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF90909F),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.80,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Month',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF90909F),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Year',
                            style: TextStyle(
                              color: Color(0xFF90909F),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.09,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Recent Transactions",
                    style: TextStyle(
                        color: AppColors.mainBlackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                // margin: const EdgeInsets.only(left: 150),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("See all",
                    style: TextStyle(color: AppColors.violetColor)),
              )
            ],
          ),
          // Column(
          //   children: [
          //     SizedBox(
          //       child: Stack(
          //         children: [
          //           Positioned(
          //             left: 0,
          //             top: 0,
          //             child: Container(
          //               // width: 336,
          //               // height: 89,
          //               decoration: ShapeDecoration(
          //                 color: const Color(0xFFFBFBFB),
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(24),
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Positioned(
          //             left: 17,
          //             top: 14,
          //             child: SizedBox(
          //               // width: 303,
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 mainAxisAlignment: MainAxisAlignment.start,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Container(
          //                     padding: const EdgeInsets.all(10),
          //                     decoration: ShapeDecoration(
          //                       color: const Color(0xFFFCEED3),
          //                       shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(16),
          //                       ),
          //                     ),
          //                     child: Row(
          //                       mainAxisSize: MainAxisSize.min,
          //                       mainAxisAlignment: MainAxisAlignment.start,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Container(
          //                           width: 40,
          //                           height: 40,
          //                           padding: const EdgeInsets.all(5),
          //                           clipBehavior: Clip.antiAlias,
          //                           decoration: const BoxDecoration(),
          //                           child: const Row(
          //                             mainAxisSize: MainAxisSize.min,
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.center,
          //                             children: [
          //                               SizedBox(
          //                                 width: 30,
          //                                 child: Stack(children: [
          //                                   //shopping icon
          //                                   Icon(
          //                                     Icons.shopping_bag_outlined,
          //                                   ),
          //                                 ]),
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                   const SizedBox(width: 9),
          //                   Expanded(
          //                     child: SizedBox(
          //                       height: 60,
          //                       child: Row(
          //                         mainAxisSize: MainAxisSize.min,
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.spaceBetween,
          //                         crossAxisAlignment: CrossAxisAlignment.center,
          //                         children: [
          //                           Container(
          //                             height: 60,
          //                             padding: const EdgeInsets.symmetric(
          //                                 vertical: 6),
          //                             child: const Column(
          //                               mainAxisSize: MainAxisSize.min,
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceBetween,
          //                               crossAxisAlignment:
          //                                   CrossAxisAlignment.start,
          //                               children: [
          //                                 Text(
          //                                   'Shopping',
          //                                   style: TextStyle(
          //                                     color: Color(0xFF292B2D),
          //                                     fontSize: 16,
          //                                     fontFamily: 'Inter',
          //                                     fontWeight: FontWeight.w500,
          //                                     height: 0,
          //                                   ),
          //                                 ),
          //                                 SizedBox(height: 11),
          //                                 Text(
          //                                   'Buy some grocery',
          //                                   style: TextStyle(
          //                                     color: Color(0xFF90909F),
          //                                     fontSize: 13,
          //                                     fontFamily: 'Inter',
          //                                     fontWeight: FontWeight.w500,
          //                                     height: 0,
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                           const SizedBox(width: 9),
          //                           const SizedBox(
          //                             height: double.infinity,
          //                             child: Column(
          //                               mainAxisSize: MainAxisSize.min,
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.center,
          //                               crossAxisAlignment:
          //                                   CrossAxisAlignment.end,
          //                               children: [
          //                                 Text(
          //                                   '- \$120',
          //                                   style: TextStyle(
          //                                     color: Color(0xFFFD3C4A),
          //                                     fontSize: 16,
          //                                     fontFamily: 'Inter',
          //                                     fontWeight: FontWeight.w600,
          //                                     height: 0,
          //                                   ),
          //                                 ),
          //                                 SizedBox(height: 12),
          //                                 Text(
          //                                   '10:00 AM',
          //                                   style: TextStyle(
          //                                     color: Color(0xFF90909F),
          //                                     fontSize: 13,
          //                                     fontFamily: 'Inter',
          //                                     fontWeight: FontWeight.w500,
          //                                     height: 0,
          //                                   ),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // )
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40),
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFCEED3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart_sharp,
                  color: Color.fromARGB(255, 131, 90, 9),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shopping",
                      style: TextStyle(
                          color: AppColors.mainBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  Text("Buy some grocery",
                      style: TextStyle(
                          color: AppColors.paraColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  const Text("- \$120",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text("10:00 AM",
                      style: TextStyle(
                          color: AppColors.paraColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.clock_fill), label: "Transaction"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.star_circle_fill),
                label: "Statistics"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "Profile"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AppColors.violetColor,
        child: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
