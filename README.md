# SQL-Yelp-Project
	SQL (SQLite) Yelp Data Analysis
	Introduction: 
	The goal of this project was to see if there was a correlation between 
	a business on yelp having photos posted and the percentage chance that
	the business was still open or had closed down. Further, based on the
	results, I wanted to see if there were any other trends when comparing
	between those businesses with photos and those without.
	
	Methods: 
	Since my goal was to try and find a link between the numbers 
	of photos a business has, and the number of reviews, whether it was open 
	or not, and the number of stars, I started by trying to find out which 
	ranges of reviews businesses with photos tend to have. This would allow 
	me to see if there were any trends in the number of photos. From there I 
	would be able to divide the ranges where photos were posted into relatively 
	equal bins based on the presence of photos and the number of reviews. These 
	bins would be based on the number of reviews in ranges (0 reviews, 1-5 reviews, 
	6-45, and 46+). The three bins ranged from 46 to 80 reviews (with 8 photo 
	captions in the group), 81 to 165 reviews (16 photo captions), and 166+ reviews
	(20 captions in the group). Next was to get the percentage of the restaurants 
	that were open versus closed. Then compare between the five ranges to 
	determine whether there was a liklihood that the businesses with photos 
	were positively or negatively affected by having higher concentrations of
	photo captions within their group, and whether there is a correlation between 
	number of reviews, average stars, open or closed, and photos.
	
	Results:
	+---+-----+------+-----+------------------+---------------+----------------+----------------------+
	| 0 | 1-5 | 6-45 | 46+ | how_many_reviews |     avg_stars |   percent_open | total_photo_captions |
	+---+-----+------+-----+------------------+---------------+----------------+----------------------+
	| 0 | 215 |    0 |   0 | 001 to 005       | 3.72093023256 | 0.748837209302 |                    0 |
	| 0 |   0 |  326 |   0 | 006 to 045       | 3.92484662577 | 0.889570552147 |                    0 |
	| 0 |   0 |    0 |  54 | 046 to 080       | 3.71296296296 |  0.87037037037 |                    8 |
	| 0 |   0 |    0 |  50 | 081 to 165       |          3.69 |           0.64 |                   16 |
	| 0 |   0 |    0 |  58 | 166 +            | 4.29310344828 | 0.758620689655 |                   20 |
	+---+-----+------+-----+------------------+---------------+----------------+----------------------+
	
	Conclusion:
	Higher numbers of photos in Yelp reviews do not correlate linearly with the 
	number of positive reviews a business receives. It also does not linearly 
	correlate with the chances that a business is still operating. However, there 
	does appear to be a correlation between increased numbers of reviews and the 
	numbers of photos. Businesses in the 81 to 165 reviews range tended to have 
	the lowest chance of being in business, while also having the lowest average 
	star ratings out of any group analyzed. Data-wise, this group appears to 
	represent a local minimum for both characteristics, and as such could be a
	trend relating to break-even points, business profitability, or critical growth
	periods within the market and warrants further investigation.
