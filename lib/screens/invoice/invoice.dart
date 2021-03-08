import 'package:billingsystem/constants.dart';
import 'package:billingsystem/screens/invoice/invoice_body.dart';
import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig.init(context);
    return Column(
      children: [
        invoiceHeader(),
        InvoiceBody(),
      ],
    );
  }

  Widget invoiceHeader() {
    return Container(
      width: ScreenConfig.deviceWidth,
      height: ScreenConfig.getProportionalHeight(374),
      color: Color(0xFF4D4F52),
      padding: EdgeInsets.only(
          top: ScreenConfig.getProportionalHeight(50),
          left: ScreenConfig.getProportionalWidth(40),
          right: ScreenConfig.getProportionalWidth(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Invoice",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenConfig.getProportionalHeight(56)),
              ),
              SizedBox(
                height: ScreenConfig.getProportionalHeight(20),
              ),
              topHeaderText("#123456789A"),
              SizedBox(
                height: ScreenConfig.getProportionalHeight(20),
              ),
              topHeaderText("2nd March, 2021"),
            ],
          ),
          SizedBox(
            height: ScreenConfig.getProportionalHeight(20),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icons/receipt.png",
                    height: ScreenConfig.getProportionalHeight(78),
                    color: Colors.white,
                  ),
                  deliveryAddressColumn(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Column deliveryAddressColumn() {
    return Column(
      children: [
        Text(
          "Delivery address",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Force Park, Gothatar"),
        Text("Kathmandu, Nepal"),
      ],
    );
  }

  Text topHeaderText(String label) {
    return Text(
      label,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.5),
          fontSize: ScreenConfig.getProportionalHeight(20)),
    );
  }
}
