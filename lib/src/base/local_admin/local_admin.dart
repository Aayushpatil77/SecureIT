import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:secure_it/resources/resources.dart';
import 'package:secure_it/src/base/local_admin/send_request_screen.dart';
import 'package:secure_it/utils/heights_widths.dart';
import 'package:sizer/sizer.dart';

class LocalAdminView extends StatefulWidget {
  const LocalAdminView({super.key});

  @override
  State<LocalAdminView> createState() => _LocalAdminViewState();
}

class _LocalAdminViewState extends State<LocalAdminView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: R.colors.white,
      elevation: 0,
      leading: GestureDetector(
          onTap: () {
            Get.to(SendRequestScreen());
          },
          child: Image.asset(
            R.images.menu,
            scale: 4,
          )),
    );
  }

  Padding body() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "The help seekers\nbetween 1 km",
            style: R.textStyles.poppins(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          h3,
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 70.h,
              child: googleMap(),
            ),
          ),
        ],
      ),
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
