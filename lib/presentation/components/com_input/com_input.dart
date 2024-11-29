import 'package:flutter/material.dart';

import '../../../core/configs/confgs.dart';
import 'widgets/text_input.dart';

class ComInput extends StatefulWidget {
  const ComInput({
    required this.hintText,
    required this.onChanged,
    super.key,
    this.isError = false,
    this.label = '',
    this.errorLabel = '',
    this.colorInputText = ComColors.sec600,
    this.styleInput = StyleInput.textInput,
    this.isPassword = false,
    this.readOnly = false,
    this.screenHeight = jcs60,
    this.iconInsideInput = Icons.error,
    this.iconError = Icons.error,
    this.imgCountry = '',
    this.styleSizeInput = StyleSizeInput.medium,
    this.contentPadding = EdgeInsets.zero,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onPressedCleanSearch,
    this.controller,
    this.successLabel = 'Completado',
    this.prefixIcon,
    this.widthBorder = 2,
    this.borderColor = ComColors.gs700,
    this.isOptionalField = false,
    this.borderRadius = 8,
    this.colorHinText,
    this.keyboardType = TextInputType.text,
  });

  final StyleInput? styleInput;
  final String hintText;
  final bool? readOnly;
  final TextEditingController? controller;
  final bool isError;
  final String label;
  final String? errorLabel;
  final Color? colorInputText;
  final EdgeInsets contentPadding;
  final StyleSizeInput? styleSizeInput;
  final double screenHeight;
  final bool isPassword;
  final String? successLabel;
  final IconData iconInsideInput;
  final IconData iconError;
  final String imgCountry;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final VoidCallback? onPressedCleanSearch;
  final Function(String) onChanged;
  final Widget? prefixIcon;
  final bool isOptionalField;
  final double widthBorder;
  final Color borderColor;
  final double borderRadius;
  final Color? colorHinText;
  final TextInputType keyboardType;

  @override
  State<ComInput> createState() => _ComInputState();
}

class _ComInputState extends State<ComInput> {
  late DateTime initialDate;
  late DateTime firstDate;
  late DateTime lastDate;

  @override
  void initState() {
    super.initState();
    initialDate = widget.initialDate ?? DateTime.now();
    firstDate = widget.firstDate ?? DateTime(2000);
    lastDate = widget.lastDate ?? DateTime(2101);
  }

  void _increment() {
    setState(() {
      final currentValue = int.tryParse(widget.controller!.text) ?? 0;
      widget.controller!.text = (currentValue + 1).toString();
    });
  }

  void _decrement() {
    setState(() {
      final currentValue = int.tryParse(widget.controller!.text) ?? 0;
      if (currentValue > 0) {
        widget.controller!.text = (currentValue - 1).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final effectiveInitialDate = widget.initialDate ?? DateTime.now();
    final effectiveFirstDate = widget.firstDate ?? DateTime(2000);
    final effectiveLastDate = widget.lastDate ?? DateTime(2101);
    return _buildBody(
      context: context,
      controller: widget.controller ?? TextEditingController(),
      readOnly: widget.readOnly!,
      hintText: widget.hintText,
      label: widget.label,
      errorLabel: widget.errorLabel!,
      isError: widget.isError,
      isCompleted: true,
      isEmptyText: false,
      colorInputText: widget.colorInputText!,
      contentPadding: widget.contentPadding,
      styleSizeInput: widget.styleSizeInput!,
      screenHeight: widget.screenHeight,
      isPassword: widget.isPassword,
      successLabel: widget.successLabel!,
      iconInsideInput: widget.iconInsideInput,
      imgCountry: widget.imgCountry,
      iconError: widget.iconError,
      initialDate: effectiveInitialDate,
      firstDate: effectiveFirstDate,
      lastDate: effectiveLastDate,
      onPressedCleanSearch: widget.onPressedCleanSearch ?? () {},
      onChanged: widget.onChanged,
      prefixIcon: widget.prefixIcon,
      isOptionalField: widget.isOptionalField,
      widthBorder: widget.widthBorder,
      borderColor: widget.borderColor,
      borderRadius: widget.borderRadius,
      colorHinText: widget.colorHinText,
      keyboardType: widget.keyboardType,
    );
  }

  Widget _buildBody({
    required BuildContext context,
    required TextEditingController controller,
    required bool readOnly,
    required String hintText,
    required String label,
    required String errorLabel,
    required bool isError,
    required bool isEmptyText,
    required bool isCompleted,
    required Color colorInputText,
    required EdgeInsets contentPadding,
    required StyleSizeInput styleSizeInput,
    required double screenHeight,
    required bool isPassword,
    required String successLabel,
    required IconData iconError,
    required IconData iconInsideInput,
    required String imgCountry,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    required VoidCallback onPressedCleanSearch,
    required Function(String) onChanged,
    required bool isOptionalField,
    required double widthBorder,
    required Color borderColor,
    required double borderRadius,
    required TextInputType keyboardType,
    Color? colorHinText,
    Widget? prefixIcon,
  }) {
    switch (widget.styleInput) {
      /* case StyleInput.searchInput:
        return SearchInput(
          controller: controller,
          styleSizeInput: styleSizeInput,
          readOnly: readOnly,
          hintText: hintText,
          isError: isError,
          colorInputText: colorInputText,
          label: label,
          iconInsideInput: iconInsideInput,
          errorLabel: errorLabel,
          contentPadding: contentPadding,
          iconError: iconError,
          onPressedCleanSearch: onPressedCleanSearch,
          onChangedSearch: onChanged,
        );
      case StyleInput.dateInput:
        return DateInput(
          controller: controller,
          styleSizeInput: styleSizeInput,
          readOnly: readOnly,
          hintText: hintText,
          isError: isError,
          label: label,
          errorLabel: errorLabel,
          iconError: iconError,
          colorInputText: colorInputText,
          iconInsideInput: iconInsideInput,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          contentPadding: contentPadding,
          onChangedDate: onChanged,
        );
      case StyleInput.numberInput:
        return NumberInput(
          controller: controller,
          readOnly: readOnly,
          hintText: hintText,
          label: label,
          colorInputText: colorInputText,
          onPressedDecrement: _decrement,
          onPressedIncrement: _increment,
          isError: isError,
          errorLabel: errorLabel,
          iconInsideInput: iconInsideInput,
          styleSizeInput: styleSizeInput,
          contentPadding: EdgeInsets.zero,
          onChangedNumber: onChanged,
        );
      case StyleInput.phoneInput:
        return PhoneInput(
          controller: controller,
          readOnly: readOnly,
          hintText: hintText,
          label: label,
          errorLabel: errorLabel,
          isError: isError,
          colorInputText: colorInputText,
          contentPadding: contentPadding,
          iconError: iconInsideInput,
          imgCountry: imgCountry,
          countryItems: countryItems,
          styleSizeInput: styleSizeInput,
          onChangedPhone: onChanged,
        );
      case StyleInput.textAreaInput:
        return TextAreaInput(
          controller: controller,
          styleSizeInput: styleSizeInput,
          readOnly: readOnly,
          hintText: hintText,
          label: label,
          errorLabel: errorLabel,
          isError: isError,
          colorInputText: colorInputText,
          contentPadding: contentPadding,
          iconError: iconInsideInput,
          onChangedArea: onChanged,
        );*/
      case StyleInput.textInput:
        return TextInput(
          prefixIcon: prefixIcon,
          colorInputText: colorInputText,
          readOnly: readOnly,
          controller: controller,
          contentPadding: contentPadding,
          label: label,
          errorLabel: errorLabel,
          hintText: hintText,
          isError: isError,
          styleSizeInput: styleSizeInput,
          successLabel: successLabel,
          isPassword: isPassword,
          iconInsideInput: iconInsideInput,
          onChangedText: onChanged,
          isOptionalField: isOptionalField,
          widthBorder: widthBorder,
          borderColor: borderColor,
          borderRadius: borderRadius,
          colorHinText: colorHinText,
          keyboardType: keyboardType,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
