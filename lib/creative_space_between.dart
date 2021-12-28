library creative_space_between;

import 'package:creative_padding_values/creative_padding_values.dart';
import 'package:creative_responsive_widget/creative_responsive_widget.dart';
import 'package:flutter/material.dart';

class CreativeSpaceBetween extends StatelessWidget {
  final double? value;
  final double times;
  const CreativeSpaceBetween({Key? key, this.times = 1, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (value != null) {
      return SizedBox(
        width: value! * times,
        height: value! * times,
      );
    }
    return CreativeResponsiveWidget(
        desktop: SizedBox(
          width: CreativePaddingValues.desktop * times,
          height: CreativePaddingValues.desktop * times,
        ),
        tablet: SizedBox(
          width: CreativePaddingValues.tablet * times,
          height: CreativePaddingValues.tablet * times,
        ),
        mobile: SizedBox(
          width: CreativePaddingValues.mobile * times,
          height: CreativePaddingValues.mobile * times,
        ));
  }
}
