import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({
    Key? key,
    required this.text,
    this.enabled = true,
    this.color,
    this.transparent = false,
    this.onTap,
    this.width,
    this.height,
    this.textColor,
  }) : super(key: key);
  final String text;
  final VoidCallback? onTap;
  final bool enabled;
  final Color? color;
  final bool transparent;
  final double? width;
  final double? height;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: width ?? (transparent ? null : double.infinity),
      height: height ?? (transparent ? null : 56),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: transparent
            ? Theme.of(context).scaffoldBackgroundColor
            : enabled
                ? color ?? AppColors.gold
                : Colors.grey.shade600,
      ),
      child: TextButton(
        onPressed: enabled ? onTap : null,
        child: GenericText.montheading2(
          text,
          fontSize: 15,
          color: textColor ?? Colors.black,
        ),
      ),
    );
  }
}
