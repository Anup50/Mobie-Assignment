import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/view_model/controller/new_task_controller.dart';
import '../../../res/constants.dart';
class CreateTaskButton extends StatelessWidget {
   CreateTaskButton({super.key});
   final controller=Get.put(NewTaskController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(80),
              topLeft: Radius.circular(80)),
      color: Colors.black87),
      child: Obx(() => controller.loading.value ? const SizedBox(
        height: 15,
        width: 15,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ) :const Text(
        'Create Task',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),)
    );
  }
}
