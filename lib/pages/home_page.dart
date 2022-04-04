import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custome_dropdown.dart';

class MyHomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitile(),
                  _imageWidget(),
                  _BookRideWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/image.JPG"),
        ),
      ),
    );
  }

  Widget _pageTitile() {
    return const Text(
      "Methodist Church",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 40),
    );
  }

  Widget _destinationdropdown() {
    return CustomeDropDownClass(values: const [
      'rivaldo',
      'simo',
      'kelvin',
    ], width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomeDropDownClass(
          values: const [
            '1',
            '2',
            '3',
          ],
          width: _deviceWidth * 0.45,
        ),
        CustomeDropDownClass(
          values: const [
            'Economy',
            'First',
            'Private',
          ],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _BookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationdropdown(),
          _travellersInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.001),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
