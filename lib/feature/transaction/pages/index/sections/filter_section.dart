part of '../page.dart';

class _FilterSection extends StatefulWidget {
  const _FilterSection();

  @override
  State<_FilterSection> createState() => __FilterSectionState();
}

class __FilterSectionState extends State<_FilterSection> {
  String selected = 'Done';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildContainer(context, label: 'Done'),
          Dimens.dp16.width,
          _buildContainer(context, label: 'Draft'),
        ],
      ),
    );
  }

  Widget _buildContainer(
    BuildContext context, {
    required String label,
  }) {
    final isActive = selected == label;
    return InkWell(
      onTap: () {
        setState(() {
          selected = label;
        });
      },
      borderRadius: BorderRadius.circular(Dimens.dp8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultSize,
          vertical: Dimens.dp8,
        ),
        decoration: BoxDecoration(
            color: isActive ? context.theme.primaryColor : null,
            borderRadius: BorderRadius.circular(Dimens.dp8),
            border: Border.all(
                color: isActive
                    ? context.theme.primaryColor
                    : AppColor.white[500]!)),
        child: RegularText.semiBold(
          label,
          style: TextStyle(
            fontSize: Dimens.dp12,
            color: isActive ? AppColor.white : AppColor.black[200],
          ),
        ),
      ),
    );
  }
}
