import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text("Catalog App") or
        "BookNook"
            .text
            .xl5
            .bold
            .color(MyTheme.darkBluishColor)
            .make(), //xl5size
        "Trending Books".text.xl2.make(),
      ],
    );
  }
}
