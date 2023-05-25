import 'package:flex_color_scheme/flex_color_scheme.dart';

extension FlexSchemeExtension on FlexScheme {
  String get schemeName {
    switch (this) {
      case FlexScheme.material:
        return 'Material';
      case FlexScheme.materialHc:
        return 'Material HC';
      case FlexScheme.blue:
        return 'Blue';
      case FlexScheme.indigo:
        return 'Indigo';
      case FlexScheme.hippieBlue:
        return 'Hippie Blue';
      case FlexScheme.aquaBlue:
        return 'Aqua Blue';
      case FlexScheme.brandBlue:
        return 'Brand Blue';
      case FlexScheme.deepBlue:
        return 'Deep Blue';
      case FlexScheme.sakura:
        return 'Sakura';
      case FlexScheme.mandyRed:
        return 'Mandy Red';
      case FlexScheme.red:
        return 'Red';
      case FlexScheme.redWine:
        return 'Red Wine';
      case FlexScheme.purpleBrown:
        return 'Purple Brown';
      case FlexScheme.green:
        return 'Green';
      case FlexScheme.money:
        return 'Money';
      case FlexScheme.jungle:
        return 'Jungle';
      case FlexScheme.greyLaw:
        return 'Grey Law';
      case FlexScheme.wasabi:
        return 'Wasabi';
      case FlexScheme.gold:
        return 'Gold';
      case FlexScheme.mango:
        return 'Mango';
      case FlexScheme.amber:
        return 'Amber';
      case FlexScheme.vesuviusBurn:
        return 'Vesuvius Burn';
      case FlexScheme.deepPurple:
        return 'Deep Purple';
      case FlexScheme.ebonyClay:
        return 'Ebony Clay';
      case FlexScheme.barossa:
        return 'Barossa';
      case FlexScheme.shark:
        return 'Shark';
      case FlexScheme.bigStone:
        return 'Big Stone';
      case FlexScheme.damask:
        return 'Damask';
      case FlexScheme.bahamaBlue:
        return 'Bahama Blue';
      case FlexScheme.mallardGreen:
        return 'Mallard Green';
      case FlexScheme.espresso:
        return 'Espresso';
      case FlexScheme.outerSpace:
        return 'Outer Space';
      case FlexScheme.blueWhale:
        return 'Blue Whale';
      case FlexScheme.sanJuanBlue:
        return 'San Juan Blue';
      case FlexScheme.rosewood:
        return 'Rosewood';
      case FlexScheme.blumineBlue:
        return 'Blumine Blue';
      case FlexScheme.flutterDash:
        return 'Flutter Dash';
      case FlexScheme.materialBaseline:
        return 'Material Baseline';
      case FlexScheme.verdunHemlock:
        return 'Verdun Hemlock';
      case FlexScheme.dellGenoa:
        return 'Dell Genoa';
      case FlexScheme.redM3:
        return 'Red M3';
      case FlexScheme.pinkM3:
        return 'Pink M3';
      case FlexScheme.purpleM3:
        return 'Purple M3';
      case FlexScheme.indigoM3:
        return 'Indigo M3';
      case FlexScheme.blueM3:
        return 'Blue M3';
      case FlexScheme.cyanM3:
        return 'Cyan M3';
      case FlexScheme.tealM3:
        return 'Teal M3';
      case FlexScheme.greenM3:
        return 'Green M3';
      case FlexScheme.limeM3:
        return 'Lime M3';
      case FlexScheme.yellowM3:
        return 'Yellow M3';
      case FlexScheme.orangeM3:
        return 'Orange M3';
      case FlexScheme.deepOrangeM3:
        return 'Deep Orange M3';
      case FlexScheme.custom:
        return 'Custom';
    }
  }
}
