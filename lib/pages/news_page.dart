import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/model/news_item.dart';
import 'package:note_app/pages/description_news_page.dart';
import 'package:note_app/widgets/bottom_bar.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title:
          'Small business optimism hits 11-year low as inflation fears won’t go away',
      text:
          'Small business confidence hit its lowest level in more than 11 years for March as proprietors worried that inflation is still very much a problem. At a time when other data points show inflation receding, the National Federation of Independent Business reported Tuesday that its survey showed a reading of 88.5, down nearly a point from February and the lowest since December 2012. A quarter of all respondents reported that rising costs were the biggest problem. “Small business optimism has reached the lowest level since 2012 as owners continue to manage numerous economic headwinds,” NFIB Chief Economist Bill Dunkelberg said. “Inflation has once again been reported as the top business problem on Main Street and the labor market has only eased slightly.” A quarter of all respondents cited inflation, and in particular higher input and labor costs, as their most pressing issue. A net 28% reported raising average selling prices for the month and 33% planned additional price hikes, according to seasonally adjusted data. As part of those escalating costs, a net 38% said they raised compensation, up 3 percentage points from the February reading that was the lowest since May 2021. The Labor Department on Friday reported that average hourly earnings rose 0.3% in March and 4.1% from a year ago.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107396717-1712232017285-gettyimages-2136931160-_dsc3973.jpeg?v=1712232068&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'TSMC Will Receive \$6.6 Billion to Bolster U.S. Chip Manufacturing',
      text:
          'The Biden administration will award up to \$6.6 billion in grants to Taiwan Semiconductor Manufacturing Company, the leading maker of the most advanced microchips, in a bid to bring some of the most cutting-edge semiconductor technology to the United States. The funds, which come from the bipartisan CHIPS and Science Act, will help support the construction of TSMC’s first major U.S. hub, in Phoenix. The company has already committed to building two plants at the site and will use some of the grant money to build a third factory in Phoenix, U.S. officials said on Sunday. TSMC will also increase its total investments in the United States to more than \$65 billion, up from \$40 billion. Bringing the world’s most sophisticated chip manufacturing to the United States has been a major goal for the Biden administration. TSMC announced that it would now produce two-nanometer chips at the hub, a significant step forward given that the United States currently produces none of the most advanced semiconductors. Federal officials view the investment as vital for building up a reliable domestic supply of semiconductors, the small chips that power everything from phones and supercomputers to cars and fighter jets. Although semiconductors were invented in the United States, production has largely shifted overseas in recent decades. Only about 10 percent of the world’s chips are made in the United States.',
      image:
          'https://static01.nyt.com/images/2024/04/08/multimedia/08dc-TSMC-gqcj/08dc-TSMC-gqcj-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'Is Corporate America in Denial About Trump?',
      text:
          'There was anxiety in the thin mountain air when the planet’s economic leaders gathered in January at Davos for the 54th meeting of the World Economic Forum. Donald Trump had just trounced Nikki Haley in the Iowa caucuses, all but securing the Republican nomination for president. Haley was reliable, a known quantity. A resurgent Trump, on the other hand, was more worrying. The Davos attendees needed reassurance, and Jamie Dimon, the chairman and chief executive of JPMorgan Chase, had some to offer. In an interview with CNBC that made headlines around the world, Dimon praised Trump’s economic policies as president. “Be honest,” Dimon said, sitting against a backdrop of snow-dusted evergreens, dressed casually in a dark blazer and polo shirt. “He was kind of right about NATO, kind of right on immigration. He grew the economy quite well. Trade. Tax reform worked. He was right about some of China.” Asked which of the likely presidential candidates would be better for business, he opted not to pick a side. “I will be prepared for both,” he said. “We will deal with both.” Dimon presides over the largest and most profitable bank in the United States and has done so for nearly 20 years. Maybe more than any single individual, he stands in for the Wall Street establishment and, by extension, corporate America. With his comments at Davos, he seemed to be sending a message of good will to Trump on their behalf. But he also appeared to be trying to put his fellow globalists at ease, reassuring them that America, long a haven for investors fleeing risk in less-stable democracies, would remain a safe destination for their money in a second Trump administration.',
      image:
          'https://static01.nyt.com/images/2024/04/14/magazine/14mag-TrumpBiz/14mag-TrumpBiz-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'Consumers Hate ‘Price Discrimination,’ but They Sure Love a Discount',
      text:
          'It’s been a strange and maddening couple of years for consumers, with prices of essential goods soaring and then sinking, turning household budgets upside down. Perhaps that’s why, in late February, the internet revolted over Wendy’s plan to test changing its menu prices across the day. If the Breakfast Baconator winds up costing \$6.99 at 7 a.m. and \$7.99 three hours later, what in life can you really count on anymore? The company later issued a statement saying it would not raise prices during busy parts of the day, but rather add discounts during slower hours. Nevertheless, the episode won’t stop the continued spread of so-called dynamic pricing, which describes an approach of setting prices in response to shifting patterns of demand and supply. It might not even stop the growth of “personalized pricing,” which targets individuals based on their personal willingness to pay. And in many circumstances, customers may come around — if they feel companies are being forthright about how they’re changing prices and what information they’re using to do it. “There’s a need for some transparency, and it has to make sense to consumers,” said Craig Zawada, a pricing expert with PROS, a consultancy that helped pioneer dynamic pricing by airlines in the 1980s and now works across dozens of other industries. “In general, from a buyer standpoint, there has to be this perception of fairness.” Dynamic pricing, by one name or another, has been around since the dawn of merchandising. Sometimes it’s a means of maximizing return on fixed expenses, such as labor: Happy hour is a way to boost bar traffic before the after-work rush, for example. (You might say Wendy’s was attempting a happy hour for Baconators.) “Load balancing” is a similar concept in energy and transportation. Utilities charge less for power overnight, and transit agencies impose higher fares during rush hour to encourage users to shift toward off-peak times, when energy and trains are in less demand. Other times, it’s an effort to liquidate perishable or seasonal goods, like fresh produce at a grocery store or winter coats at Macy’s. Then there’s “surge pricing” on ride-hailing platforms, which is meant to quickly prod more drivers to start picking up passengers. Some commodity goods, like gasoline, fluctuate daily with international markets.',
      image:
          'https://static01.nyt.com/images/2024/04/02/business/00dynamic-pricing-still/00dynamic-pricing-still-jumbo-v2.gif?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'Mercedes-Benz Workers in Alabama Ask for Unionization Vote',
      text:
          'Workers at a Mercedes-Benz factory in Alabama have petitioned federal officials to hold a vote on whether to join the United Automobile Workers, the union said on Friday, a step forward for its drive to organize workers at car factories in the South. The union is trying to build on the momentum from the contracts it won last year at Ford Motor, General Motors and Stellantis, which gave workers at the three Detroit carmakers their biggest raises in decades. The U.A.W. is also trying to organize workers at a Volkswagen factory in Tennessee and a Hyundai factory in Alabama, establishing a bigger presence in states that have drawn much of the new investment in automobile manufacturing in recent decades. A vote at the Volkswagen plant is scheduled for April 17 to 19. The drive has taken on added importance as Southern states like South Carolina and Georgia attract billions of dollars in investment in electric vehicle and battery manufacturing. The U.A.W. is trying to ensure that jobs created by electric vehicles do not pay less than jobs at traditional auto factories. A large majority of workers at the Mercedes plant, near Tuscaloosa, had earlier signed cards expressing support for a vote. On Friday they formally petitioned the National Labor Relations Board to hold an election on whether to be represented by the U.A.W., the union said. Mercedes, which makes luxury sport utility vehicles in Alabama, said in a statement that it “fully respects our team members’ choice whether to unionize” and that it would ensure that workers had “access to the information necessary to make an informed choice.”',
      image:
          'https://static01.nyt.com/images/2024/04/05/multimedia/05uaw-mercedes-mhfl/05uaw-mercedes-mhfl-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'New Questions on How a Key Agency Shared Inflation Data',
      text:
          'The Bureau of Labor Statistics shared more information about inflation with Wall Street “super users” than previously disclosed, emails from the agency show. The revelation is likely to prompt further scrutiny of the way the government shares economic data at a time when such information keenly interests investors. An economist at the agency set off a firestorm in February when he sent an email to a group of data users explaining how a methodological tweak could have contributed to an unexpected jump in housing costs in the Consumer Price Index the previous month. The email, addressed to “Super Users,” circulated rapidly around Wall Street, where every detail of inflation data can affect the bond market. At the time, the Bureau of Labor Statistics said the email had been an isolated “mistake” and denied that it maintained a list of users who received special access to information. But emails obtained through a Freedom of Information Act request show that the agency — or at least the economist who sent the original email, a longtime but relatively low-ranking employee — was in regular communication with data users in the finance industry, apparently including analysts at major hedge funds. And they suggest that there was a list of super users, contrary to the agency’s denials. “Would it be possible to be on the super user email list?” one user asked in mid-February. “Yes I can add you to the list,” the employee replied minutes later. A reporter’s efforts to reach the employee, whose identity the bureau confirmed, were unsuccessful. Emily Liddel, an associate commissioner at the Bureau of Labor Statistics, said that the agency did not maintain an official list of super users and that the employee appeared to have created the list on his own.',
      image:
          'https://static01.nyt.com/images/2024/04/05/multimedia/05super-users-fmct/05super-users-fmct-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'U.S. Employers Added 303,000 Jobs in 39th Straight Month of Growth',
      text:
          'Another month, another burst of better-than-expected job gains. Employers added 303,000 jobs in March on a seasonally adjusted basis, the Labor Department reported on Friday, and the unemployment rate fell to 3.8 percent, from 3.9 percent in February. Expectations of a recession among experts, once widespread, are now increasingly rare. It was the 39th straight month of job growth. And employment levels are now more than three million greater than forecast by the nonpartisan Congressional Budget Office just before the pandemic shock. The resilient data generally increased confidence among economists and market investors that the U.S. economy has reached a healthy equilibrium in which a steady roll of commercial activity, growing employment and rising wages can coexist, despite the high interest rate levels of the last two years. From late 2021 to early 2023, inflation was outstripping wage gains, but that also now appears to have firmly shifted, even as wage increases decelerate from their roaring rates of growth in 2022. Average hourly earnings for workers rose 0.3 percent in March from the previous month and were up 4.1 percent from March 2023.',
      image:
          'https://static01.nytimes.com/newsgraphics/march-24-jobsday/9f584fa4-9836-49c5-bdf3-fba5c4e4ffb8/_assets/overall-jobs-600.png',
    ),
    NewsItem(
      title: 'How to Revive a Burned Forest? Rebuild the Tree Supply Chain',
      text:
          'When it came to wildfires, 2021 was an increasingly common kind of year in Montana: Flames consumed 747,000 acres, an area nearly the size of Long Island. About 2,700 of those acres were on Don Harland’s Sheep Creek Ranch, where ever-drier summers have turned lodgepole pines into matchsticks ready to ignite. After the smoke cleared, Mr. Harland found creeks running black with soot and the ground hardening more with every day that passed. A former timber industry executive, Mr. Harland knew the forest wouldn’t grow back on its own. The land is high and dry, the ground rocky and inhospitable — not like the rainy coastal Northwest, where trees grow thick and fast. Nor did he have the money to carry out a replanting operation, since growing for timber wouldn’t pay for itself; most of the nearby sawmills had shut down long ago anyway. The state government offered a few grants, but nothing on the scale needed to heal the scar. Then a local forester Mr. Harland knew suggested he get in touch with a new company out of Seattle, called Mast Reforestation. After visiting to scope out the site, Mast’s staff proposed to replant the whole acreage, free, and even pay Mr. Harland a bit at the end. Mast, in turn, was to earn money from companies that wanted to offset their carbon emissions and would put millions of dollars into planting trees that otherwise wouldn’t exist. Mr. Harland said he had his doubts about the carbon-selling part of the plan, but he was impressed with Mast’s operations, so he said yes. Two years later, after seeds had been collected from similar trees on nearby lands, crews of planters came out with bags full of seedlings, rapidly plunking them into the ashen ground. As part of the deal, Mr. Harland signed an agreement to let the trees grow for at least 100 years, so they can keep sucking greenhouse gases out of the air as they mature.',
      image:
          'https://static01.nyt.com/images/2024/04/04/multimedia/00hy-reforestationHeader-zmgf/00hy-reforestationHeader-zmgf-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'Poor Nations Are Writing a New Handbook for Getting Rich',
      text:
          'For more than half a century, the handbook for how developing countries can grow rich hasn’t changed much: Move subsistence farmers into manufacturing jobs, and then sell what they produce to the rest of the world. The recipe — customized in varying ways by Hong Kong, Singapore, South Korea, Taiwan and China — has produced the most potent engine the world has ever known for generating economic growth. It has helped lift hundreds of millions of people out of poverty, create jobs and raise standards of living. The Asian Tigers and China succeeded by combining vast pools of cheap labor with access to international know-how and financing, and buyers that reached from Kalamazoo to Kuala Lumpur. Governments provided the scaffolding: They built up roads and schools, offered business-friendly rules and incentives, developed capable administrative institutions and nurtured incipient industries. But technology is advancing, supply chains are shifting, and political tensions are reshaping trade patterns. And with that, doubts are growing about whether industrialization can still deliver the miracle growth it once did. For developing countries, which contain 85 percent of the globe’s population — 6.8 billion people — the implications are profound. Today, manufacturing accounts for a smaller share of the world’s output, and China already does more than a third of it. At the same time, more emerging countries are selling inexpensive goods abroad, increasing competition. There are not as many gains to be squeezed out: Not everyone can be a net exporter or offer the world’s lowest wages and overhead.',
      image:
          'https://static01.nyt.com/images/2024/04/04/multimedia/00global-econ-01-kgbz/00global-econ-01-kgbz-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'A Key Inflation Gauge Hovers Above Fed’s Target',
      text:
          'The latest reading of the Federal Reserve’s favorite inflation gauge was in line with economists’ expectations, as price increases hovered above the central bank’s target even after months of cooling. The Personal Consumption Expenditures inflation measure climbed by 2.5 percent in February compared with a year earlier, according to a report released by the Commerce Department on Friday. Economists in a Bloomberg survey had expected an increase of that size, a tick higher than the rise of 2.4 percent in January. The Fed officially targets that measure as it tries to achieve 2 percent annual inflation, so the latest reading, while widely anticipated, is evidence that inflation still has farther to fall. The fresh reading is unlikely to shake Fed officials from the cautious and patient stance they have taken in recent months as they contemplate when and how much to cut interest rates this year. The report’s details underscored that inflation continues to moderate, even if the process is bumpy. A closely watched measure that strips out volatile food and fuel prices for a clearer reading of underlying inflation climbed 2.8 percent, in line with what economists had expected for that “core” index and slightly cooler than the previous month. And on a monthly basis, inflation cooled slightly. The latest inflation readings are much milder than the highs reached in 2022, when overall inflation peaked at 7.1 percent and core at nearly 5.6 percent on an annual basis.',
      image:
          'https://static01.nyt.com/images/2024/03/29/multimedia/29dc-pce-wlbm/29dc-pce-wlbm-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: '‘Winners and Losers’ as \$20 Fast-Food Wage Nears in California',
      text:
          'A decade ago, Jamie Bynum poured his life savings into a barbecue restaurant now tucked between a Thai eatery and a nutrition store in a Southern California strip mall. As a franchise owner of a Dickey’s Barbecue Pit, Mr. Bynum is pridefully particular about the details of his establishment — the size of the hickory wood pile on display near the entrance, the positioning of paper towel rolls on each table, the careful calibration it takes to keep his restaurant staffed 10 hours a day with a small crew. The staffing, he said, has become harder in recent years, as the state’s minimum wage has steadily increased since 2017, often rising by a dollar per year. Today, it’s \$16 an hour. But on Monday, it will jump to \$20 an hour for most fast-food workers in California, propelling them to the top of what minimum-wage earners make anywhere in the country. (Only Tukwila, Wash., a small city outside Seattle, sets the bar higher, with a minimum wage of \$20.29 for many employees.) The ambitious law, which supporters hope to see replicated nationwide, has been characterized by opposing sides in stark terms. To backers, it is a step toward fair compensation for low-wage workers who faced significant risk during the pandemic. To opponents, it is a cataclysmic move that will raise food prices, lead to job losses and force some franchisees to consider closing. “People don’t understand that when wages rise, so do the prices,” Mr. Bynum said. Mr. Bynum has, in recent years, raised prices to try to maintain profit margins — and each time, he said, he has noticed a drop in customers. That, in turn, forced painful decisions about cutting staffing and trimming hours. The new minimum wage will add \$3,000 to \$4,000 to his monthly expenses, he said, and while he hopes to keep all eight of his employees, he doesn’t know if he can make the numbers add up. One employee, Josue Reyes, has worked at the restaurant on and off over the past decade.',
      image:
          'https://static01.nyt.com/images/2024/03/29/multimedia/00cal-fast-food-01-lkqm/00cal-fast-food-01-lkqm-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'Another Wayward Container Ship Shows World Trade’s Fragility',
      text:
          'Even before an enormous container ship rammed a bridge in Baltimore in the early hours of Tuesday, sending the span hurtling into the Patapsco River, and halting cargo traffic at a major American port, there was ample reason to worry about the troubles dogging the global supply chain. Between swirling geopolitical winds, the variables of climate change and continued disruptions resulting from the pandemic, the risks of depending on ships to carry goods around the planet were already conspicuous. The pitfalls of relying on factories across oceans to supply everyday items like clothing and critical wares like medical devices were at once vivid and unrelenting. Off Yemen, Houthi rebels have been firing missiles at container ships in what they say is a show of solidarity with Palestinians in the Gaza Strip. That has forced ocean carriers to largely bypass the Suez Canal, the vital waterway linking Asia to Europe, and instead circumnavigate Africa — adding days and weeks to journeys, while forcing vessels to burn additional fuel. In Central America, a dearth of rainfall, linked to climate change, has limited passage through the Panama Canal. That has impeded a crucial link between the Atlantic and the Pacific, delaying shipments to the East Coast of the United States from Asia. These episodes have played out amid memories of another recent blow to commerce: the closing of the Suez Canal three years ago, when the container ship Ever Given hit the side of the waterway and got stuck. While the vessel sat, and social media filled with memes of modern life stopped, traffic halted for six days, freezing trade estimated at \$10 billion a day.',
      image:
          'https://static01.nyt.com/images/2024/03/27/multimedia/00global-shipping-vulnerabilities-01-qflg/00global-shipping-vulnerabilities-01-qflg-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'They Grow Your Berries and Peaches, but Often Lack One Item: Insurance',
      text:
          'Farmers who grow fresh fruits and vegetables are often finding crop insurance prohibitively expensive — or even unavailable — as climate change escalates the likelihood of drought and floods capable of decimating harvests. Their predicament has left some small farmers questioning their future on the land. Efforts to increase the availability and affordability of crop insurance are being considered in Congress as part of the next farm bill, but divisions between the interests of big and small farmers loom over the debate. The threat to farms from climate change is not hypothetical. A 2021 study from researchers at Stanford University found that rising temperatures were responsible for 19 percent of the \$27 billion in crop insurance payouts from 1991 to 2017 and concluded that additional warming substantially increases the likelihood of future crop losses. About 85 percent of the nation’s commodity crops — which include row crops like corn, soybeans and wheat — are insured, according to the National Sustainable Agriculture Coalition, a nonprofit promoting environmentally friendly food production. In contrast, barely half the land devoted to specialty crops — supermarket staples like strawberries, apples, asparagus and peaches — was insured in 2022, federal statistics show. Among those going without insurance is Bernie Smiarowski, who farms potatoes on 700 acres in western Massachusetts, along with 12 acres for strawberries. His soil is considered some of the nation’s most fertile. The trade-off is the proximity to the Connecticut River, a bargain that grows more tenuous as a warming world heightens the likelihood of flooding.',
      image:
          'https://static01.nyt.com/images/2024/03/19/multimedia/00crop-insurance-gjlh/00crop-insurance-gjlh-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'The Realtors settlement is already changing the way some Americans buy and sell homes',
      text:
          'The mere prospect of a future settlement has already caused some Americans to change their behavior when buying and selling their homes. Some prospective homebuyers said they plan to restart their housing search after the new rules are in place in hopes of finding lower home prices, while some homesellers aren’t waiting for the new rules to take effect in July to lower — or even eliminate — the commission they offer to buyers’ agents. Housing experts say the \$418 million settlement will effectively demolish the current real estate business model, in which home sellers pay both their agent and their buyers’ agent, which critics say inflated housing prices. If approved by a judge, the settlement comes with new rules for Realtors. “This is unchartered territory,” said Debra Dobbs, a Realtor in Chicago, of the potential new rules. The new rules could help lower home prices, experts say. That’s what Jeremy Cannon, a 34-year-old teacher in Corona, California, hopes. Last year, Cannon and his wife tried to buy their first home, putting in offers for multiple properties. “All of our offers got denied because other people were bidding higher than us,” Cannon said. “We were already trying to bid above asking price for pretty much every place.” At the time, Cannon decided to hit pause on his dream of owning a home. But, to Cannon, the new rules established by the NAR settlement could potentially clear what felt like an intractable hurdle for him: the high cost of housing. Sales commissions, traditionally shared between a buyers’ agent and the agent who lists a home on the market, are usually between 5% and 6% of a home’s selling price. The median price of a home in the US is \$417,000, according to census data, meaning the average seller could be paying more than \$25,000 in brokerage fees.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2086941806.jpg?c=16x9&q=h_144,w_256,c_fill',
    ),
    NewsItem(
      title:
          'US inflation ticked higher last month, reversing some recent progress',
      text:
          'New York — The latest US inflation report showed that rising prices continue to weigh on American consumers. The Federal Reserve’s preferred inflation gauge, the Personal Consumption Expenditures price index, was up 2.5% for the 12 months that ended in February, a faster pace than January’s 2.4% rise in prices. However, it was in line with FactSet consensus estimates. Driving the increase in the annual inflation rate was a 2.3% jump last month in energy prices. The Commerce Department data released Friday means the Fed is even further from achieving its goal of 2% inflation. But Fed Chair Jerome Powell wasn’t fretting about it. The data was “pretty much in line with our expectations,” Powell said Friday at an event hosted by the San Francisco Fed. He added that it’s generally good when data aligns with the central bank’s forecasts. The report also contained some welcome news. Central bankers will likely take some solace in the core PCE index that excludes energy and food. That index slowed slightly to 2.8% from the 2.9% annual rate seen in January. And, on a monthly basis, it slowed to 0.3% from 0.5% in January. Both core inflation measures were in line with expectations. Another bright spot was the 0.3% overall monthly pace of price increases, a slight drop from 0.4% in January. That was below what economists polled by FactSet forecast. At 0.5%, the monthly rise in the price of goods outpaced the 0.3% rise in the price of services. That’s significant because service-side inflation has been a huge driver of overall inflation in the economy for the past two years.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2076705995.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF191D21),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => DescriptionNewsPage(
                      news: news,
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 132,
                  width: 132,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            news.image!,
                          ))),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                news.title!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    color: Color(0xFF191D21),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                news.text!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    color: const Color(0xFF191D21)
                                        .withOpacity(0.7),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF87112),
                            borderRadius: BorderRadius.circular(32)),
                        child: const Text(
                          'Read more',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
