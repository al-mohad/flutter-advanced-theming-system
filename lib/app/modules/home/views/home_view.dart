import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scheme: ${controller.scheme.value.name}'),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Obx(() => SwitchListTile(
                  title: const Text('Dark Mode'),
                  value: controller.isDarkMode.value,
                  onChanged: (value) {
                    controller.changeThemeMode(value);
                  },
                )),
            const SizedBox(height: 50),
            Obx(
              () => ListTile(
                title: const Text('Color Scheme'),
                trailing: DropdownButton<FlexScheme>(
                  value: controller.scheme.value,
                  onChanged: (value) {
                    controller.changeScheme(value!);
                  },
                  items: FlexScheme.values
                      .map((scheme) => DropdownMenuItem<FlexScheme>(
                            value: scheme,
                            child: Text(scheme.name),
                          ))
                      .toList(),
                ),
              ),
            ),
            ListTile(
              leading: const CircleAvatar(),
              title: const Text('Muhammad Buhari'),
              subtitle: const Text('Administrator'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility),
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(),
                title: const Text('Muhammad Buhari'),
                subtitle: const Text('Administrator'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility),
                ),
              ),
            ),
            Wrap(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).primaryColor,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).primaryColorDark,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).primaryColorLight,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).cardColor,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).hintColor,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              // padding: const EdgeInsets.all(16.0),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
              itemCount: controller.allSchemes.length,
              itemBuilder: (BuildContext context, int index) {
                FlexScheme scheme = controller.allSchemes[index];
                FlexColorScheme flexScheme = FlexColorScheme.light(
                  colors: FlexColor.schemes[scheme]?.light,
                );

                Color? primaryColor = flexScheme.primary;
                return GestureDetector(
                  onTap: () => controller.changeScheme(scheme),
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
