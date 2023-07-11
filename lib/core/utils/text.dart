// ignore_for_file: prefer_equal_for_default_values, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/utils/textstyles.dart';

class GenericText extends StatelessWidget {
  final String? text;
  final TextStyle style;
  final bool multiText;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;

  /// font `montheading1`
  ///  fontSize `20`
  ///  fontWeight `700`
  GenericText.montheading1(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.centered = false,
    this.textAlign,
    this.color,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.montheading1.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `montheading2`
  ///  fontSize `14`
  ///  fontWeight `600`
  GenericText.montheading2(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.montheading2.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `mont3`
  ///  fontSize `12`
  ///  fontWeight `600`
  GenericText.montheading3(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.centered = false,
    this.textAlign,
    this.color,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.montheading3.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `mont4`
  ///  fontSize `13`
  ///  fontWeight `400`
  GenericText.montheading4(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.montheading4.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `roboto`
  ///  fontSize `14`
  ///  fontWeight `400`
  GenericText.roboto(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.centered = false,
    this.textAlign,
    this.color,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.roboto.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `nunito1`
  ///  fontSize `12`
  ///  fontWeight `500`
  GenericText.nunito1(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.nunito1.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `e-ukraine`
  ///  fontSize `12`
  ///  fontWeight `400`
  GenericText.hintText(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.hintText.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `e-ukraine`
  ///  fontSize `32`
  ///  fontWeight `500`
  GenericText.amount(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.amount.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  /// font `e-ukraine`
  ///  fontSize `20`
  ///  fontWeight `500`
  GenericText.percentage(
    this.text, {
    this.multiText = false,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : style = GenericTextStyle.percentage.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      maxLines: multiText || maxLines != null ? maxLines ?? 9999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,
      style: style,
    );
  }
}
