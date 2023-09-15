import 'package:flutter/material.dart';

String baconText = "Becoming rich is a goal that many people aspire to, but it requires a combination of discipline, determination, and smart financial decisions. Firstly, it's essential to focus on increasing your income. This can be achieved by acquiring new skills, pursuing higher education, starting a successful business, or seeking opportunities for career advancement. Identifying a lucrative niche or industry and positioning yourself as an expert in that area can also open doors to higher earning potential. \n Secondly, effective money management is crucial for accumulating wealth. Creating a budget and tracking expenses can help you identify areas where you can save and invest wisely. Prioritize paying off high-interest debts and consider investing in diverse assets such as stocks, real estate, or mutual funds to grow your wealth over time. It's essential to balance risk and reward and seek professional advice if needed. \n Lastly, cultivating a long-term mindset and practicing patience are key to becoming rich. Wealth accumulation often takes time, so avoid the temptation of get-rich-quick schemes that promise instant results. Stay committed to your financial goals and regularly review and adjust your strategies as needed. Building a solid financial foundation through prudent saving, wise investing, and continuous learning will pave the way for long-term prosperity and financial security.";

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key,
  required this.title,
  required this.imagePath,
  });

  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
            children: [
            Image.asset(imagePath),
             Text(title,
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 20),
             Text(baconText,
            style:const TextStyle(
              fontSize: 18,
              
            ),
            textAlign: TextAlign.justify,
            ),
               ],
               ),
         ),
       ),
    );
  }
}