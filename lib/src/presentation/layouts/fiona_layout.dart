import 'package:fiona_layout/src/presentation/layouts/ifiona_layout_page.dart';
import 'package:flutter/material.dart';

class FionaLayout extends StatelessWidget{

  IFionaLayoutPage page;

  FionaLayout(this.page);

  Widget build(BuildContext context){
    return page.buildBody(context);
  }
}