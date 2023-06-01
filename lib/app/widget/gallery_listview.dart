import '../../theme/theme.dart';
import '../app.dart';

class GalleryListView extends StatelessWidget {
  const GalleryListView({
    required this.date,
    super.key,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date, style: TextStyles.p1Bold.copyWith(color: AppColor.gray)),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100.h, // adjust height as needed
                  width: MediaQuery.of(context).size.width, // adjust width as needed
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 110.w,
                        // adjust width as needed
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).r,
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Center(
                                    child: Image.asset('assets/images/exc$index.png'),
                                  );
                                },
                              );
                            },
                            child: Image.asset('assets/images/exc$index.png'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
