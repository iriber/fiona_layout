import 'package:fiona_layout/src/presentation/layouts/fiona_appbar_layout.dart';
import 'package:fiona_layout/src/presentation/layouts/ifiona_appbar_layout_page.dart';
import 'package:flutter/material.dart';


class FionaAppBarLogoLayout extends FionaAppBarLayout{

  AssetImage logo;

  FionaAppBarLogoLayout(IFionaAppBarLayoutPage page, this.logo) : super(page);

  FionaAppBarLogoLayout.withDefaultPass(super.page,this.logo, {  super.backButton=true, super.settingsButton=false, super.defaultPassIcon=true, super.onClose, super.customIconBack  });

  FionaAppBarLogoLayout.likePopup(super.page, this.logo, {super.backButton=true, super.settingsButton=false, super.onClose, super.customIconBack });

  @override
  List<Widget> buildScaffoldWidgets(BuildContext context) {

    Widget logo = buildLogo(context);
    Widget body = buildBody(context);
    Widget footer = buildFooter();

    return [
      Expanded(
        flex: 3,
        child: logo,
      ),
      Expanded(
          flex: 10,
          child: body
      ),
      Expanded(
          flex: 1,
          child: footer
      ),
    ];
  }

  Widget buildLogo(BuildContext context) {
    return Container(
      //color: Environment().config.appTheme.getBodyBackgroundColor(),
      padding: EdgeInsets.only(bottom: 5, top: 10),
      child:
      ListView(
          children:[Image(image: logo, height: 100)]
      ),
    );
  }




}