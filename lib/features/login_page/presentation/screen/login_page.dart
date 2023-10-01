import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sample/features/core/utils/app_colors.dart';
import '../GetX/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
            ),
            body: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * (1 / 15),
                  right: MediaQuery.of(context).size.width * (1 / 15),
                  top: MediaQuery.of(context).size.height * (1 / 18),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Log in",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: AppColors.primaryColor),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 1 / 20,
                          ),
                          TextField(
                            autofocus: true,
                            onChanged: (value) {
                              controller.validateEmail(value);
                            },
                            decoration: const InputDecoration(
                                labelText: "E-mail",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            floatingActionButton: Container(
              height: MediaQuery.of(context).size.height * (1 / 7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                        },
                        child: const Text(
                          "Find e-mail",
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 1 / 35,
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 1 / 35,
                      ),
                      const Text(
                        "Find password",
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * (1 / 29),
                  ),
                  Obx(
                    () => Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * (1 / 15),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ElevatedButton(
                        onPressed: controller.isValid.value ? () {} : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.isValid.value
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                          foregroundColor: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          controller.isValid.value
                              ? "Next"
                              : "Enter your e-mail address",
                          style: const TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
        });
  }
}
