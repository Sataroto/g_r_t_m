import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../viewmodel/tratamientosViewModel.dart';

class TratamientosView extends GetView<TratamientosViewModel>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Tratamientos"),
      ),
      body: Container(
        child: const Center(
          child: Text(
            "Tratamientos",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}