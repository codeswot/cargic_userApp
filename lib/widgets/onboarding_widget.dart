library flutteronboardingscreens;

import 'package:cargig_user_app/utils/colors.dart';
import 'package:cargig_user_app/widgets/onboarding_data.dart';
import 'package:flutter/material.dart';

/// A IntroScreen Class.
///
///
class IntroScreen extends StatefulWidget {
  final List<CargicOnbordingData> onbordingDataList;
  final MaterialPageRoute pageRoute;
  IntroScreen(this.onbordingDataList, this.pageRoute);

  void skipPage(BuildContext context) {
    Navigator.push(context, pageRoute);
  }

  @override
  IntroScreenState createState() {
    return new IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.onbordingDataList.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: page == currentPage ? 10.0 : 6.0,
      width: page == currentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: page == currentPage
            ? CargicColors.brandBlue
            : CargicColors.smoothGray,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CargicColors.plainWhite,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 50),
            new Expanded(
              flex: 3,
              child: new PageView(
                physics: BouncingScrollPhysics(), //TODO:remove scroll drag
                children: widget.onbordingDataList,
                controller: controller,
                onPageChanged: _onPageChanged,
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new FlatButton(
                    child: new Text(lastPage ? "" : "SKIP",
                        style: new TextStyle(
                            color: CargicColors.outwitBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    onPressed: () => lastPage
                        ? null
                        : widget.skipPage(
                            context,
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      child: Row(
                        children: [
                          _buildPageIndicator(0),
                          _buildPageIndicator(1),
                          _buildPageIndicator(2),
                          _buildPageIndicator(3),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    child: new Text(lastPage ? "DONE" : "NEXT",
                        style: new TextStyle(
                            color: CargicColors.outwitBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    onPressed: () => lastPage
                        ? widget.skipPage(context)
                        : controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
