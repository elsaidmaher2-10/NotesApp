import 'package:flutter/material.dart';
import 'package:notesapp/components/Bottomsheetcomponen.dart';

class Editviewnote extends StatefulWidget {
  const Editviewnote({super.key});

  @override
  State<Editviewnote> createState() => _EditviewnoteState();
}

class _EditviewnoteState extends State<Editviewnote> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(16), child: CustomForm());
  }
}

class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String? title, subtitle;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode, // لتشغيل التحقق بعد أول محاولة
      child: Column(
        children: [
          Customtextfiled(
            hint: "Title",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "هذا الحقل مطلوب";
              }
              title = value;
              return null;
            },
          ),
          const SizedBox(height: 20),
          Customtextfiled(
            hint: "Content",
            maxlines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "هذا الحقل مطلوب";
              }
              subtitle = value;
              return null;
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            ontap: () {
              if (formKey.currentState?.validate() ?? false) {
                // تم التحقق بنجاح
                formKey.currentState!.save();

                print("تم الحفظ بنجاح: العنوان: $title، المحتوى: $subtitle");
              } else {
                // تشغيل التحقق تلقائيًا عند محاولة الحفظ
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
