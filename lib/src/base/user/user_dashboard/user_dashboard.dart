import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/user/user_dashboard/about_us.dart';
import 'package:secure_it/src/base/user/user_dashboard/settings.dart';
import 'package:secure_it/src/base/user/volunteer_view.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ZoomDrawer(
          controller: zoomDrawerController,
          borderRadius: 24,
          angle: -1,
          style: DrawerStyle.defaultStyle,
          // showShadow: true,
          openCurve: Curves.fastOutSlowIn,
          // slideWidth: 70.w,
          menuScreenWidth: 70.w,
          duration: const Duration(milliseconds: 500),
          menuBackgroundColor: Colors.indigo,
          mainScreen: home(),
          menuScreen: Theme(
            data: ThemeData.dark(),
            child: Scaffold(
              backgroundColor: R.colors.themeColor,
              body: menuWidget(),
            ),
          ),
        ),
      ),
    );
  }

  List<String> images = [
    R.images.home,
    R.images.settings,
    R.images.info,
  ];

  List<String> titles = [
    "Apply for Voluntear",
    "Settings",
    "About Us",
  ];

  Widget menuWidget() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        h10,
        h10,
        ...List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(top: 40),
            child: menuItem(
              titles[index],
              images[index],
              index,
            ),
          ),
        ),
      ],
    );
  }

  Widget menuItem(String title, String image, int index) {
    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            Get.to(VolunteerView());
            break;
          case 1:
            Get.to(SettingsView());
            break;
          case 2:
            Get.to(AboutUSView());
            break;

          default:
        }
      },
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(left: 12),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              image,
            ),
          ),
          w2,
          Text(
            title,
            textAlign: TextAlign.center,
            style: R.textStyles.poppins(
              color: R.colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget home() {
    return Stack(
      children: [
        googleMap(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                zoomDrawerController.toggle!();
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 18,
                  height: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    R.images.menu,
                  ),
                ),
              ),
            ),
            Container(
              width: 100.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: R.colors.white,
              ),
              child: Column(
                children: [
                  h3,
                  Image.asset(
                    R.images.red_button,
                    height: 80,
                  ),
                  h3,
                  Text(
                    "  If you press the power button 4 times,the emergency button would be pressed automatically.",
                    textAlign: TextAlign.center,
                    style: R.textStyles.poppins(
                      color: Color(0x72000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget googleMap() {
    return GoogleMap(
      onMapCreated: onMapCreated,
      initialCameraPosition: _kInitialPosition,
    );
  }

  static const CameraPosition _kInitialPosition = CameraPosition(
    target: LatLng(-33.852, 151.211),
    zoom: 11.0,
  );
  late GoogleMapController _controller;
  bool _isMapCreated = false;

  CameraPosition _position = _kInitialPosition;
  void _updateCameraPosition(CameraPosition position) {
    setState(() {
      _position = position;
    });
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _controller = controller;
      _isMapCreated = true;
    });
  }
}
