import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/core/utils/constance.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          children: [backgroundPage(), background_Musk(), body()],
        ),
      ),
    );
  }
}

class body extends StatelessWidget {
  const body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "مرحباً هذه أول مرة ؟",
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 25),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "قم بملئ بياناتك لإنشاء حساب",
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.6,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const UserNameTextField(),

                    /*  const Row(
                      children: [
                        Text(
                          "اختر الدولة:",
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        CountryCodePicker(
                          showFlagDialog: false,
                          flagWidth: 35,
                          dialogSize: Size(300, 600),
                          initialSelection: 'EG',
                          favorite: ['+213', '+20'],
                          // alignLeft: true,
                          showDropDownButton: true,
                          closeIcon: Icon(Icons.dangerous),
                        ),
                      ],
                    ), */
                    const SizedBox(
                      height: 10,
                    ),
                    const phone_Number_TextField(),
                    const SizedBox(
                      height: 10,
                    ),
                    const PasswordTextField(),
                    const SizedBox(
                      height: 10,
                    ),
                    const ConfirmPasswordTextField(),
                    const SizedBox(
                      height: 25,
                    ),
                    const Submit_Button(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text("لديك حساب بالفعل ؟ "),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "قم بتسجيل الدخول من هنا",
                            style: TextStyle(color: AppColors.primamryColor),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text("Developed By Xenon")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Submit_Button extends StatelessWidget {
  const Submit_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.primamryColor,
              Color.fromARGB(255, 55, 0, 0),
            ], begin: Alignment.centerRight, end: Alignment.centerLeft),
            borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "إنشاء حساب",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.whiteColor),
          ),
        ));
  }
}

class ConfirmPasswordTextField extends StatelessWidget {
  const ConfirmPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromARGB(255, 240, 20, 4),
      decoration: InputDecoration(
        label: const Text("تأكيد كلمة المرور:"),
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.primamryColor),
        // hintText: "من فضلك اكتب كلمة مرور قوية",
        helperStyle: const TextStyle(color: Colors.black),
      ),
      textAlign: TextAlign.left,
      showCursor: true,
      style: const TextStyle(fontFamily: "cairo", color: Colors.black),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromARGB(255, 240, 20, 4),
      decoration: InputDecoration(
        label: const Text("كلمة المرور:"),
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.primamryColor),
        // hintText: "من فضلك اكتب كلمة مرور قوية",
        helperStyle: const TextStyle(color: Colors.black),
      ),
      textAlign: TextAlign.left,
      showCursor: true,
      style: const TextStyle(fontFamily: "cairo", color: Colors.black),
    );
  }
}

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromARGB(255, 240, 20, 4),
      decoration: InputDecoration(
        labelText: "اسم المستخدم:",
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.primamryColor),
      ),
      textAlign: TextAlign.right,
      style: const TextStyle(fontFamily: "cairo", color: Colors.black),
    );
  }
}

class phone_Number_TextField extends StatelessWidget {
  const phone_Number_TextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [],
      cursorColor: const Color.fromARGB(255, 240, 20, 4),
      decoration: InputDecoration(
        label: const Text("رقم الهاتف:"),
        helperText: "من فضلك اكتب رقم الهاتف الحقيقي لتفعيل خدمة الدعم الفني  ",
        helperStyle: const TextStyle(color: Colors.black),
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.primamryColor),
        hintText: "10xxxx",
      ),
      textAlign: TextAlign.left,
      keyboardType: TextInputType.phone,
      style: const TextStyle(fontFamily: "cairo", color: Colors.black),
    );
  }
}

class background_Musk extends StatelessWidget {
  const background_Musk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        const Color.fromARGB(255, 193, 11, 11),
        Color.fromARGB(255, 55, 0, 0),
      ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
    );
  }
}

class backgroundPage extends StatelessWidget {
  const backgroundPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
      image: const DecorationImage(
          image: AssetImage("assets/images/notFound.png"), fit: BoxFit.fill),
    ));
  }
}
