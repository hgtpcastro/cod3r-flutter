import 'package:flutter/material.dart';

import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;

  final Function(Settings) onSettingsChanged;

  const SettingsScreen({this.settings, this.onSettingsChanged});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch({
    String title,
    String subTitle,
    bool value,
    Function(bool) onChanged,
  }) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        value: value,
        onChanged: (value) {
          onChanged(value);
          widget.onSettingsChanged(settings);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  title: 'Sem Glutén',
                  subTitle: 'Só exibe refeições sem glutén',
                  value: settings.isGlutenFree,
                  onChanged: (value) =>
                      setState(() => settings.isGlutenFree = value),
                ),
                _createSwitch(
                  title: 'Sem Lactose',
                  subTitle: 'Só exibe refeições sem lactose',
                  value: settings.isLactoseFree,
                  onChanged: (value) =>
                      setState(() => settings.isLactoseFree = value),
                ),
                _createSwitch(
                  title: 'Vegana',
                  subTitle: 'Só exibe refeições veganas',
                  value: settings.isVegan,
                  onChanged: (value) =>
                      setState(() => settings.isVegan = value),
                ),
                _createSwitch(
                  title: 'Vegetariana',
                  subTitle: 'Só exibe refeições vegetarianas',
                  value: settings.isVegetarian,
                  onChanged: (value) =>
                      setState(() => settings.isVegetarian = value),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
