import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:zul_route/global/appbar/app_bar_widget.dart';
import 'package:zul_route/screens/home_page/home_page_viewmodel.dart';

class VerifyOtpView extends StatelessWidget {
  final TextStyle headingStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle subHeadingStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final String title;

  VerifyOtpView({required this.title});

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (m) => m.init(),
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, _) => Scaffold(
        appBar: getAppBarWidget(title, context),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    controller: model.scrollController,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Verify Your Account',
                              style: headingStyle,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              model.driverName,
                              style: subHeadingStyle,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      // Column(
                      //   children: [
                      //     Image.asset(
                      //       VERIFY_OTP,
                      //       scale: 3,
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Enter your password here',
                              style: subHeadingStyle,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      PinPut(
                        autofocus: true,
                        //focusNode: FocusScope.of(context).,
                        onSubmit: (s) async {
                          model.navigateToAdminHome(context);
                        },
                        textInputAction: TextInputAction.next,
                        textStyle: subHeadingStyle,
                        eachFieldMargin:
                            const EdgeInsets.symmetric(horizontal: 16),
                        controller: model.otpController,
                        fieldsCount: 4,
                        onChanged: (String value) {
                          print("TEXT VALUE: $value");
                          model.validateOtp(value);
                        },
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        eachFieldConstraints:
                            const BoxConstraints(minHeight: 60, minWidth: 45),
                        fieldsAlignment: MainAxisAlignment.center,
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Row(
                    children: [
                      Expanded(child: Text('IP : ' + model.ip)),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: model.isButtonEnabled
                                ? () {
                                    model.navigateToAdminHome(context);
                                  }
                                : null,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text('Continue'),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
