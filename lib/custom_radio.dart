library custom_radio;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadio extends StatelessWidget {
  CustomRadio({Key? key, this.switchActive: false, this.onChanged}) : super(key: key);
  final bool switchActive;
  final ValueChanged<bool> onChanged;

  void _switchActiveChanged() {
    onChanged(!switchActive);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _switchActiveChanged,
      child: Container(
        width: 12.sp,
        height: 12.sp,
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 6.sp, 0.0),
        child: switchActive
            ? Image.asset('assets/images/selected.png')
            : Image.asset('assets/images/select.png'),
      ),
    );
  }
}
