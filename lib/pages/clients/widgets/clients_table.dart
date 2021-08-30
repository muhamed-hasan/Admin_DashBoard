import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

/// Example without datasource
class ClientsTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12),
          ],
          border: Border.all(color: lightGrey, width: .5)),
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: [
            DataColumn2(
              label: Text('Name'),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Location'),
            ),
            DataColumn(
              label: Text('Rating'),
            ),
            DataColumn(
              label: Text('Action'),
            ),
          ],
          rows: List<DataRow>.generate(
              7,
              (index) => DataRow(cells: [
                    DataCell(CustomText(
                      text: "Mohamed Hasan",
                    )),
                    DataCell(CustomText(
                      text: "New Yourk City",
                    )),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomText(
                          text: "4.$index",
                        )
                      ],
                    )),
                    DataCell(Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: active, width: .5),
                          color: light,
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: CustomText(
                        text: "Block Client",
                        color: active.withOpacity(.7),
                        weight: FontWeight.bold,
                      ),
                    ))
                  ]))),
    );
  }
}
