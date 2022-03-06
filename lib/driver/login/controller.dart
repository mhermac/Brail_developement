import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DriverLogInController extends GetxController{


  final FormGroup loginForm = FormGroup({
    'email': FormControl<double>(validators: [Validators.required,Validators.email]),
    'password': FormControl<double>(validators: [Validators.required]),
  });

}
