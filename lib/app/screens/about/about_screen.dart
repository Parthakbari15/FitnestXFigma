import 'package:fitnestx/app/app.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../theme/theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.all(25.0).w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8, left: 16, top: 4),
                  child: Text('About', style: TextStyles.h2Bold),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85554400?v=4'),
                ),
                title: Text('Parth Akbari', style: TextStyles.p1Bold),
                subtitle: Text('Developer'),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Connect with me', style: TextStyles.p1Bold),
                ),
              ),
              ListTile(
                onTap: launchInsta,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                leading: IconButton(
                  onPressed: launchInsta,
                  icon: Icon(PhosphorIcons.fill.instagramLogo),
                  color: AppColor.purpleLinear1,
                ),
                title: const Text('@_parth._111_', style: TextStyles.p1Bold),
                subtitle: const Text('Instagram'),
              ),
              ListTile(
                onTap: launchLinkedin,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                leading: IconButton(
                  onPressed: launchLinkedin,
                  icon: Icon(PhosphorIcons.fill.linkedinLogo),
                  color: AppColor.blueLinear1,
                ),
                title: const Text('Parth Akbari', style: TextStyles.p1Bold),
                subtitle: const Text('Linkedin'),
              ),
              ListTile(
                onTap: launchGithub,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                leading: IconButton(
                  onPressed: launchGithub,
                  icon: Icon(PhosphorIcons.fill.githubLogo),
                  color: AppColor.gray,
                ),
                title: const Text('ParthAkbari15', style: TextStyles.p1Bold),
                subtitle: const Text('Github'),
              ),
              const Text('Made with Love ❤️ in Flutter', textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  void launchInsta() => _launchUrl('https://www.instagram.com/_parth._111_/');

  void launchLinkedin() => _launchUrl('https://www.linkedin.com/in/parth-akbari-b93968214/');

  void launchGithub() => _launchUrl('https://github.com/Parthakbari15/');

  Future<void> _launchUrl(String url) => launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}
