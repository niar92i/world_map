import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';
import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/services.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:world_map/controller/home_controller.dart';
import 'package:world_map/network/country_model.dart';
import 'package:world_map/network/country_service.dart';

T? ambiguate<T>(T? object) => object;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController homeController = HomeController();
  CountryService countryService = CountryService();
  late List<CountryModel> country;

  @override
  void dispose() {
    homeController.removeOverlay();
    super.dispose();
  }

  void getCountryData(String countryCode) async {
    CountryService countryService = CountryService();
    List<dynamic> jsonList =
        await countryService.fetchCountryInformations(countryCode);
    country = jsonList.map((json) => CountryModel.fromJson(json)).toList();
    Navigator.pop(context);
    homeController.createOverlay(context, widget, country);
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = const AlertDialog(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      content:Center(
                child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white))),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text(widget.title),
        // ),
        body: Stack(
      children: [
        ShowCaseWidget(
          onStart: (index, key) {
            print('onStart: $index, $key');
          },
          onComplete: (index, key) {
            print('onComplete: $index, $key');
            if (index == 1) {
              SystemChrome.setSystemUIOverlayStyle(
                SystemUiOverlayStyle.light.copyWith(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.white,
                ),
              );
            }
          },
          blurValue: 1,
          builder: Builder(
            builder: (context) => Container(
              margin: const EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: InteractiveViewer(
                maxScale: 100,
                child: SimpleMap(
                  instructions: SMapWorld.instructions,

                  defaultColor: Colors.blueGrey,

                  // colors: const SMapWorldColors(
                  //   mG: Colors.blue,
                  // ).toMap(),

                  callback: (id, name, tapdetails) {
                    print(id);
                    if (id != "") {
                      setState(() {
                        homeController.idCountry = id;
                      });
                      showLoaderDialog(context);
                      getCountryData(id.toUpperCase());
                      // homeController.createOverlay(context, widget);
                    } else {
                      homeController.removeOverlay();
                    }
                  },
                ),
              ),
            ),
          ),
          autoPlayDelay: const Duration(seconds: 3),
        ),
      ],
    ));
  }
}
