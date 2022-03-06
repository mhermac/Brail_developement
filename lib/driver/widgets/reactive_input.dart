import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_nov_29_new/utility/styles/colors.dart';

class ReactiveInput extends StatelessWidget {
  RxBool showSuffix = false.obs;
  final GlobalKey? globalKey;
  // final FocusNode? focusNode;
  final bool useCounter;
  final int? maxLength;
  VoidCallback? onSuffixTap;
  final String hintText;
  final int? limit;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefix;
  final TextInputFormatter textInputFormatter;
  final bool? obscureText;
  final int? maxLines;
  final String? labelText;
  final String? helperText;
  final String? formControlName;
  final AbstractControl? formControl;
  final void Function()? onEditingComplete;
  final double prefixIconConstraints;
  final Function()? onSubmitted;
  final VoidCallback? ontap;
  final bool readOnly;

  Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;

  final ValidationMessagesFunction? validationMessages;
  ReactiveInput({
    Key? key,
    this.readOnly= false,
    this.onSuffixTap,
    this.ontap,
    this.onSubmitted,
    this.onEditingComplete,
    this.buildCounter,
    this.useCounter = false,
    this.maxLength,
    this.formControl,
    this.validationMessages,
    required this.formControlName,
    this.globalKey,
    // this.focusNode,
    this.helperText,
    this.textInputType,
    required this.hintText,
    this.suffixIcon,
    this.maxLines = 1,
    this.limit,
    this.labelText,
    required this.textInputFormatter,
    this.prefix,
    this.prefixIconConstraints = 85,
    this.obscureText = false,
  }) : super(key: key);

  final RxBool suffixVis = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18.h),
      key: globalKey,
      child: ReactiveTextField(
          onTap: ontap,
          readOnly: readOnly,
          onEditingComplete: onEditingComplete,
          maxLength: maxLength,
          buildCounter: (
              BuildContext context, {
                required int currentLength,
                required bool isFocused,
                required int? maxLength,
              }) {
            if (buildCounter != null) {
              buildCounter!(context,
                  currentLength: currentLength,
                  isFocused: isFocused,
                  maxLength: maxLength);
            }
            if(currentLength >=0?showSuffix.value = true:showSuffix.value=false);
            // if (maxLength != null) {
            //   _counterText.value = (maxLength - currentLength).toString();
            //   // return Text("${maxLength - currentLength}");
            // }
          },

          onSubmitted: onSubmitted,
          textInputAction: TextInputAction.done,

          validationMessages: validationMessages,
          formControlName: formControlName,
          maxLines: maxLines,
          keyboardType: textInputType,
          inputFormatters: [
            LengthLimitingTextInputFormatter(limit),
            textInputFormatter
          ],
          // focusNode: focusNode,
          cursorColor: BrailColors.backgroundColor,
          obscureText: obscureText!,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            prefixIconConstraints: prefix == null
                ? const BoxConstraints(minWidth: 0)
                : BoxConstraints(minWidth: prefixIconConstraints),
            // suffixIconConstraints:
            //     const BoxConstraints(minWidth: 0, maxHeight: 50),
            contentPadding: EdgeInsets.zero,
            helperText: helperText,
            helperStyle: Theme.of(context).textTheme.headline5,
            // errorBorder: OutlineInputBorder(
            //     borderRadius: Corners.smBorder, borderSide: Borders.errorBorder),
            errorStyle: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Colors.red),
            focusColor: BrailColors.grey,
            //  fillColor: TeleportColors.greyLight,
            fillColor: BrailColors.textFieldGrey,
            filled: true,
            // border: OutlineInputBorder(
            //     borderRadius: Corners.smBorder, borderSide: Borders.borderWith1),
            isDense: false,
            // hintStyle:
            // Get.textTheme.headline4?.copyWith(color: BerqColors.textBright),
            hintText: hintText,
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: Corners.smBorder, borderSide: Borders.borderWith1),
            // enabledBorder: const OutlineInputBorder(
            //   borderRadius: Corners.smBorder,
            //   // borderSide: Borders.borderWith1,
            //
            //   borderSide: BorderSide(
            //     color: Color(0xFFE8E8E8),
            //   ),
            // ),
            // focusedErrorBorder: OutlineInputBorder(
            //   borderRadius: Corners.smBorder,
            //   borderSide: Borders.errorBorder,
            // ),
            prefixIcon: prefix == null
                ? const SizedBox(
              width: 15,
            )
                : SizedBox(
              width: prefixIconConstraints,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  prefix!,
                ],
              ),
            ),
            suffixIcon:suffixIcon !=null?
            Obx(() =>showSuffix.value?IconButton(onPressed: onSuffixTap, icon: suffixIcon!):SizedBox()
            ):null,
          )
      ),
    );
  }
}
