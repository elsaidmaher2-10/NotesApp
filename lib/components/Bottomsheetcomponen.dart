import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return FromWidget();
  }
}

class FromWidget extends StatefulWidget {
  @override
  _FromWidgetState createState() => _FromWidgetState();
}

class _FromWidgetState extends State<FromWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 40),
            Customtextfiled(
              hint: "Title",
              validator: (p) {
                if (p == null || p.isEmpty) {
                  return "هذا الحقل مطلوب";
                }
                title = p;
                return null;
              },
            ),
            SizedBox(height: 20),
            Customtextfiled(
              hint: "Content",
              maxlines: 5,
              validator: (p) {
                if (p == null || p.isEmpty) {
                  return "هذا الحقل مطلوب";
                }
                subtitle = p;
                return null;
              },
            ),
            SizedBox(height: 50),
            CustomButton(
              ontap: () {
                if (formKey.currentState?.validate() ?? false) {
                  formKey.currentState!.save();
                  print("تم الحفظ بنجاح: العنوان: $title، المحتوى: $subtitle");
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Customtextfiled extends StatelessWidget {
  Customtextfiled({required this.hint, this.maxlines = 1, this.validator});

  final String hint;
  final int maxlines;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: TextStyle(color: Colors.white),
      maxLines: maxlines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.cyanAccent, fontSize: 20),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({required this.ontap});

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: ontap,
        child: Text(
          "SAVE",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
