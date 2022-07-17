library custom_radio;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({Key? key}) : super(key: key);

  @override
  createState() {
    return _CustomRadioState();
  }
}

class _CustomRadioState extends State<CustomRadio> {
  bool _switchActive = false; //单选按钮状态

  void _switchActiveChanged() {
    setState(() {
      _switchActive = !_switchActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _switchActiveChanged,
      child: Container(
        width: 12.sp,
        height: 12.sp,
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 6.sp, 0.0),
        child: _switchActive
            ? Image.asset('assets/images/selected.png')
            : Image.asset('assets/images/select.png'),
      ),
    );
  }
}
