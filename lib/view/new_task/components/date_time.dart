import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/view_model/controller/new_task_controller.dart';

import '../../../res/constants.dart';

class DateTimeInput extends StatelessWidget {
  DateTimeInput({super.key});

  final controller = Get.put(NewTaskController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Date',
                style:
                    TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              InkWell(
                  onTap: () => controller.showDatePick(context),
                  child: Obx(() => DateTimeContainer(
                      text: controller.selectedDate.isEmpty
                          ? 'dd/mm/yyyy'
                          : controller.selectedDate.value, style:TextStyle(color: Colors.white),)))
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'S-Time',
                style:
                    TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              InkWell(
                  onTap: () => controller.picStartTime(context),
                  child: Obx(() => DateTimeContainer(
                      text: controller.startTime.isEmpty
                          ? "hh:mm:a"
                          : controller.startTime.value,style:const TextStyle(color: Colors.white),)))
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'E-Time',
                style:
                    TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              InkWell(
                  onTap: () => controller.picEndTime(context),
                  child: Obx(() => DateTimeContainer(
                      text: controller.endTime.isEmpty
                          ? "hh:mm:a"
                          : controller.endTime.value,style:const TextStyle(color: Colors.white),) ))
            ],
          ),
        ],
      ),
    );
  }
}

class DateTimeContainer extends StatelessWidget {
  const DateTimeContainer({super.key, required this.text, this.style});

  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.date_range,
            color: Colors.white,
            size: 16,
          ),
          const SizedBox(
            width: defaultPadding / 4,
          ),
          Text(text,style: style,),
        ],
      ),
    );
  }
}
