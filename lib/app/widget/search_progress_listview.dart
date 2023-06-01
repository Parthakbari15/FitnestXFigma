import 'package:fitnestx/utils/const/const_list.dart';
import '../../theme/theme.dart';
import '../app.dart';

class SearchProgressList extends StatelessWidget {
  const SearchProgressList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: latestActivityTitle.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: SvgPicture.asset('assets/images/Latest-Pic$index.svg'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_right_outlined, color: AppColor.purple),
          ),
          title: Text(latestActivityTitle[index]),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                latestAcitivitySubtitle[index],
                style: TextStyles.p3Normal,
              ),
            ],
          ),
        );
      },
    );
  }
}
