import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../network/country_model.dart';

class HomeController {
  String idCountry = "";
  OverlayEntry? overlayEntry;

  void createOverlay(
      BuildContext context, Widget widget, List<CountryModel> countryDetail) {
    removeOverlay();
    assert(overlayEntry == null);
    overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return SafeArea(
        child: Align(
          alignment: Alignment.topRight,
          child: DefaultTextStyle(
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(8)),
              child: Container(
                margin: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(countryDetail[0].flag),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            child: Text(
                          countryDetail[0].name.common,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        )),
                        Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              removeOverlay();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              'Official name: ${countryDetail[0].name.official}'),
                          const Divider(),
                          const Text('Native name'),
                          const SizedBox(height: 4.0),
                          ...countryDetail[0]
                              .name
                              .nativeName
                              .entries
                              .map((entry) {
                            String languageCode = entry.key;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Language code: $languageCode'),
                                Text('Official: ${entry.value.official}'),
                                Text('Common: ${entry.value.common}'),
                                const SizedBox(height: 4.0),
                              ],
                            );
                          }).toList(),
                          const Divider(),
                          const Text('Flag'),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 60,
                                  width: 90,
                                  child: Image.network(
                                    countryDetail[0].flags.png,
                                    fit: BoxFit.cover,
                                  )),
                              Expanded(
                                  child: countryDetail[0].flags.alt != null
                                      ? Text(countryDetail[0].flags.alt!)
                                      : Container()),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          const Text('Coat of arms'),
                          Container(
                              margin: const EdgeInsets.all(5),
                              height: 90,
                              width: 90,
                              child: Image.network(
                                countryDetail[0].coatOfArms.png,
                                fit: BoxFit.fill,
                              )),
                          const Divider(),
                          Text(
                              'Capital: ${countryDetail[0].capital.join(', ')}'),
                          Text('Region: ${countryDetail[0].region}'),
                          Text('Subregion: ${countryDetail[0].subregion}'),
                          Text(
                              'Alternative spellings: ${countryDetail[0].altSpellings.join(', ')}'),
                          const Divider(),
                          const Text('Languages'),
                          const SizedBox(height: 4.0),
                          ...countryDetail[0].languages.entries.map((e) {
                            return Text(e.value);
                          }).toList(),
                          const Divider(),
                          const Text('Maps'),
                          const SizedBox(height: 4.0),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Google Maps: ',
                                ),
                                TextSpan(
                                  text: countryDetail[0].maps.googleMaps,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'OpenStreet Maps: ',
                                ),
                                TextSpan(
                                  text: countryDetail[0].maps.openStreetMaps,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          const Text('Demonyms'),
                          const SizedBox(height: 4.0),
                          ...countryDetail[0].demonyms.entries.map((e) {
                            String demonymLanguage = e.key;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                demonymLanguage == 'fra'
                                    ? const Text('French demonym')
                                    : const Text('English demonym'),
                                Text('Female: ${e.value.f}'),
                                Text('Male: ${e.value.m}'),
                                const SizedBox(height: 4.0),
                              ],
                            );
                          }).toList(),
                          const Divider(),
                          Text(
                              'Top-level domain: ${countryDetail[0].tld.join(', ')}'),
                          const Divider(),
                          Text('CCA2: ${countryDetail[0].cca2}'),
                          Text('CCN3: ${countryDetail[0].ccn3}'),
                          Text('CCA3: ${countryDetail[0].cca3}'),
                          countryDetail[0].cioc == null
                              ? const Text('CIOC: N/A')
                              : Text('CIOC: ${countryDetail[0].cioc}'),
                          const Divider(),
                          ...countryDetail[0].currencies.entries.map((entry) {
                            String currencyCode = entry.key;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Currency code: $currencyCode'),
                                Text('Currency name: ${entry.value.name}'),
                                entry.value.symbol == null
                                    ? const Text('Currency symbol: N/A')
                                    : Text(
                                        'Currency symbol: ${entry.value.symbol}'),
                                const SizedBox(height: 4.0),
                              ],
                            );
                          }).toList(),
                          const Divider(),
                          const Text('International direct dialing'),
                          const SizedBox(height: 4.0),
                          Text('Root: ${countryDetail[0].idd.root}'),
                          Text(
                              'Suffixes: ${countryDetail[0].idd.suffixes.join(', ')}'),
                          const Divider(),
                          Text('Population: ${countryDetail[0].population}'),
                          countryDetail[0].gini != null ?
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...countryDetail[0].gini!.entries.map((e) {
                                if (countryDetail[0].gini != null) {
                                  return Column(
                                    children: [
                                      Text('Gini index in ${e.key}: ${e.value}')
                                    ],
                                  );
                                } else {
                                  return Container();
                                }

                              }).toList(),
                            ],
                          ) : Container(),
                          countryDetail[0].independent
                              ? const Text('Independent: YES')
                              : const Text('Independent: NO'),
                          Text('Status: ${countryDetail[0].status}'),
                          countryDetail[0].unMember
                              ? const Text('UN member: YES')
                              : const Text('UN member: NO'),
                          const Divider(),
                          Text('Latitude: ${countryDetail[0].latlng[0]}'),
                          Text('Longitude: ${countryDetail[0].latlng[1]}'),
                          Text('Area: ${countryDetail[0].area.toInt()} km²'),
                          countryDetail[0].landlocked
                              ? const Text('Landlocked: YES')
                              : const Text('Landlocked: NO'),
                          Text(
                              'Timezones: ${countryDetail[0].timezones.join(', ')}'),
                          Text(
                              'Continents: ${countryDetail[0].continents.join(', ')}'),
                          countryDetail[0].borders != null ?
                          Text(
                              'Borders: ${countryDetail[0].borders?.join(', ')}') : const Text('Borders : N/A'),
                          Text(
                              'Start of week: ${countryDetail[0].startOfWeek}'),
                          const Divider(),
                          const Text('Cars'),
                          const SizedBox(height: 4.0),
                          Text(
                              'Signs: ${countryDetail[0].car.signs.join(', ')}'),
                          Text('Side: ${countryDetail[0].car.side}'),
                          const Divider(),
                          const Text('Translations'),
                          ...countryDetail[0].translations.entries.map((e) {
                            String language = e.key;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Language code: $language'),
                                Text('Official: ${e.value.official}'),
                                Text('Common: ${e.value.common}'),
                                const SizedBox(height: 4.0),
                              ],
                            );
                          }).toList(),
                          const Divider(),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
    Overlay.of(context, debugRequiredFor: widget).insert(overlayEntry!);
  }

  void removeOverlay() {
    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }
}
