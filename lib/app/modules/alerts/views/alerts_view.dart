import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/alerts_controller.dart';

class AlertsView extends GetView<AlertsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AlertsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
