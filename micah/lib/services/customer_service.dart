

import 'package:myapp/models/customer.dart';
import 'package:riverpod/riverpod.dart';

class CustomerService{
  final Ref container;
  final List<Customer> _customer=[];

  CustomerService(this.container);

  void addCustomer(String name, String email){
    final newCustomer = Customer(name,email);
    _customer.add(newCustomer);
    print('$name(Email: $email)has been added');
  }

    void viewCustomer(){
      if(_customer.isEmpty){
        print('No customer available.');
      }else{
        print('Customer:');
        for(var customer in _customer){
        print(customer);
        }
      }
    }
    List<Customer>get customers => _customer;
  
}