import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingOverlay extends StatelessWidget{
  final Widget child;
  final bool isLoading;

  const LoadingOverlay({
    Key? key, required this.isLoading, required this.child
    }) : assert(child != null),
         super(key: key);

  @override
  Widget build(BuildContext context) {
    if(isLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return child;
  }

}