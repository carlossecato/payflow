import 'package:flutter/material.dart';
import 'package:payflow/shared/app_text_style.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:payflow/shared/widgets/divider/divider.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível  identificar um código  de barras.",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto. ",
      primaryLabel: "Escanear Novamente",
      primaryOnPressed: () {},
      secondaryLabel: "Digitar Código",
      secondaryOnPressed: () {},
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.8),
            title: Text(
              "Escaneie o codigo de barras do boleto",
              style: TextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.black.withOpacity(0.8),
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  )),
              Expanded(
                  child: Container(
                color: Colors.black.withOpacity(0.8),
              )),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir Código de Boleto",
            primaryOnPressed: () {},
            secondaryLabel: "Adicionar da Galeria",
            secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
