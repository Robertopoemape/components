import 'package:flutter/material.dart';
import '../../../core/configs/confgs.dart';
import '../../../core/configs/style/app_text_style.dart';

enum ButtonState {
  enabled,
  hovered,
  pressed,
  focused,
  disabled,
  loading,
}

enum ThemeButton {
  light,
  dark,
}

abstract class ButtonStyleBase {
  Widget buildButton(ComButton widget, ComButtonState state);
}

class ComButton extends StatefulWidget {
  const ComButton({
    required this.nameStyleColor,
    required this.nameButton,
    this.borderColor = ComColors.gsWhite,
    this.suffixIcon,
    this.prefixIcon,
    this.onPressed,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.theme = ThemeButton.light,
    this.style = ButtonStyleType.basic,
    super.key,
  });

  final Color nameStyleColor;
  final Color? borderColor;
  final String nameButton;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Future<void> Function()? onPressed;
  final ThemeButton? theme;
  final EdgeInsets contentPadding;
  final ButtonStyleType style;

  @override
  State<ComButton> createState() => ComButtonState();
}

enum ButtonStyleType {
  basic,
  animated,
  iconOnly,
}

class ComButtonState extends State<ComButton> {
  ButtonState _currentButtonState = ButtonState.enabled;

  ButtonState get currentButtonState => _currentButtonState;

  set currentButtonState(ButtonState value) {
    if (mounted) {
      setState(() {
        _currentButtonState = value;
      });
    }
  }

  Future<void> _handleOnPressed() async {
    if (_currentButtonState == ButtonState.loading ||
        widget.onPressed == null) {
      return;
    }
    currentButtonState = ButtonState.loading;
    await widget.onPressed?.call();
    currentButtonState = ButtonState.enabled;
  }

  Color _getIconColor() {
    if (widget.onPressed == null) {
      return widget.theme == ThemeButton.light
          ? ComColors.gs600
          : ComColors.gs800;
    }
    return widget.nameStyleColor;
  }

  TextStyle _getTextStyle() {
    final baseStyle =
        widget.onPressed == null ? ComTextStyle.body1 : ComTextStyle.body1.w600;
    return baseStyle.copyWith(
      color: widget.onPressed == null
          ? widget.theme == ThemeButton.light
              ? ComColors.gs600
              : ComColors.gs800
          : widget.nameStyleColor,
      fontSize: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyleBase style = _getButtonStyle(widget.style);
    return style.buildButton(widget, this);
  }

  ButtonStyleBase _getButtonStyle(ButtonStyleType style) {
    switch (style) {
      case ButtonStyleType.animated:
        return AnimatedButtonStyle();

      case ButtonStyleType.iconOnly:
        return IconOnlyButtonStyle();
      default:
        return BasicButtonStyle();
    }
  }
}

class BasicButtonStyle extends ButtonStyleBase {
  @override
  Widget buildButton(ComButton widget, ComButtonState state) {
    return Container(
      margin: widget.contentPadding,
      height: 32,
      child: ElevatedButton(
        onPressed: widget.onPressed != null ? state._handleOnPressed : null,
        onFocusChange: (onFocus) {
          state.currentButtonState =
              onFocus ? ButtonState.focused : ButtonState.enabled;
        },
        onHover: (onHover) {
          state.currentButtonState =
              onHover ? ButtonState.hovered : ButtonState.enabled;
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: widget.borderColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (state.currentButtonState == ButtonState.loading)
              SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: widget.nameStyleColor,
                  strokeWidth: 2,
                ),
              )
            else ...[
              if (widget.prefixIcon != null)
                Icon(widget.prefixIcon, color: state._getIconColor(), size: 20),
              Text(widget.nameButton, style: state._getTextStyle()),
              if (widget.suffixIcon != null)
                Icon(widget.suffixIcon, color: state._getIconColor(), size: 20),
            ],
          ],
        ),
      ),
    );
  }
}

class AnimatedButtonStyle extends ButtonStyleBase {
  @override
  Widget buildButton(ComButton widget, ComButtonState state) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: widget.contentPadding,
      height: 32,
      decoration: BoxDecoration(
        color: widget.borderColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: state.currentButtonState == ButtonState.hovered
            ? [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5)]
            : [],
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed != null ? state._handleOnPressed : null,
        onFocusChange: (onFocus) {
          state.currentButtonState =
              onFocus ? ButtonState.focused : ButtonState.enabled;
        },
        onHover: (onHover) {
          state.currentButtonState =
              onHover ? ButtonState.hovered : ButtonState.enabled;
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (state.currentButtonState == ButtonState.loading)
              SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: widget.nameStyleColor,
                  strokeWidth: 2,
                ),
              )
            else ...[
              if (widget.prefixIcon != null)
                Icon(widget.prefixIcon, color: state._getIconColor(), size: 20),
              Text(widget.nameButton, style: state._getTextStyle()),
              if (widget.suffixIcon != null)
                Icon(widget.suffixIcon, color: state._getIconColor(), size: 20),
            ],
          ],
        ),
      ),
    );
  }
}

class IconOnlyButtonStyle extends ButtonStyleBase {
  @override
  Widget buildButton(ComButton widget, ComButtonState state) {
    return Container(
      margin: widget.contentPadding,
      height: 32,
      child: ElevatedButton(
        onPressed: widget.onPressed != null ? state._handleOnPressed : null,
        onFocusChange: (onFocus) {
          state.currentButtonState =
              onFocus ? ButtonState.focused : ButtonState.enabled;
        },
        onHover: (onHover) {
          state.currentButtonState =
              onHover ? ButtonState.hovered : ButtonState.enabled;
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: widget.borderColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (state.currentButtonState == ButtonState.loading)
              SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: widget.nameStyleColor,
                  strokeWidth: 2,
                ),
              )
            else ...[
              Icon(widget.prefixIcon, color: state._getIconColor(), size: 20),
            ],
          ],
        ),
      ),
    );
  }
}
