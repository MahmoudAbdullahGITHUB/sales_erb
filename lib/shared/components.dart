import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/Colors.dart';

List<Map> productsMap = [];


Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function validate,
  String? label,
  String? hint,
  required IconData prefix,
  // required Widget prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  int? linesNumber,
  bool expands = false,
  int? maxLines,
  int? minLines,
  TextAlignVertical? textAlignVertical,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: TextFormField(
        textAlignVertical: textAlignVertical,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w600, letterSpacing: 0.0),
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit as void Function(String)?,
        onChanged: onChange as void Function(String)?,
        onTap: onTap as void Function()?,
        validator: validate as String? Function(String?)?,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 17.0,
            color: KAppColor,
          ),
          // prefixIcon: Icon(
          //   prefix,
          // ),
          prefixIcon: expands == false
              ? Icon(prefix)
              : Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.description_outlined,
                      ),
                    ],
                  ),
                ),

          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed as void Function()?,
                  icon: Icon(
                    suffix,
                  ),
                )
              : null,
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 2.0,
            ),
          ),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.red,
          //     width: 2.0,
          //   ),
          //   borderRadius: const BorderRadius.all(
          //     const Radius.circular(25.0),
          //   ),
          // ),
        ),
      ),
    );





