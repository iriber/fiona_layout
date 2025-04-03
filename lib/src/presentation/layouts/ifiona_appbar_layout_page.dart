
import 'package:fiona_layout/src/presentation/layouts/ifiona_layout_page.dart';
import 'package:flutter/material.dart';

abstract class  IFionaAppBarLayoutPage extends IFionaLayoutPage{

  Future<String> getTitle();

  Widget? getTitleWidget(){}

}