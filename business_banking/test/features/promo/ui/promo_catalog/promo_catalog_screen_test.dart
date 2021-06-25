import 'package:business_banking/features/promo/ui/promo_catalog/promo_catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  Widget testWidget;

  testWidget = MaterialApp(
    home: PromoCatalogScreen(),
  );

  testWidgets('PromoCatalogScreen initialization', (tester) async {
    await mockNetworkImagesFor(() => tester.pumpWidget(testWidget));
    expect(find.byType(PromoCatalogScreen), findsOneWidget);
  });
}
