import 'package:myapp/services/customer_service.dart';
import 'package:myapp/services/product_service.dart';
import 'package:myapp/services/purchase_service.dart';
import 'package:riverpod/riverpod.dart';

final productServiceProvider = Provider((ref) => ProductService(ref));
final customerServiceProvider = Provider((ref) => CustomerService(ref));
final purchaseServiceProvider = Provider((ref) => PurchaseService(ref));