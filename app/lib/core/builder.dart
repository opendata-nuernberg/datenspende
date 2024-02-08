import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

class Container {}

Future<Container> build() async {
  const pocketBaseUrl = "https://datenspende.pockethost.io/";
  final pocketBase = PocketBase(pocketBaseUrl);

  final container = Container();
  return container;
}

class ContainerWidget extends InheritedWidget {
  const ContainerWidget({
    super.key,
    required this.container,
    required super.child,
  });

  final Container container;

  static Container? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ContainerWidget>()
        ?.container;
  }

  static Container of(BuildContext context) {
    final Container? result = maybeOf(context);
    assert(result != null, 'No Container found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ContainerWidget oldWidget) => false;
}
