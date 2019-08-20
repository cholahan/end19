---
layout: post
title : Process
permalink: /process/
subtitle: "Our project planning"
feature-img: "assets/img/process.jpg"
---

* TOC
{:toc}

---
# Reserach Questions

When thinking of a project for the Early Novels Database, we aim to utilize the information from the dataset to answer questions concerning metadata and literary trends. The inspiration behind this particular project stemmed from Ina Chen’s previous summer END project, [“Plotting Defoe's Adventure Novels: 18th Century Adventure and Travel Literature Emotion Map Project”](https://redadvance.github.io/defoemap/), a personal project that aimed to map out titles using the same Early Novels Dataset. From there we decided to use this year’s project to delve deeper into the element of place in early novels. As seen in English adventure novels such as Gulliver’s Tales and Robinson Crusoe, the author’s focus and description of a certain location not only reflected their own preconceptions of that place but the preconceptions of their fellow countrymen.

We wanted to know what places were most frequently mentioned in the title pages during the rise of travel literature in the long 18th century. We also wanted to know whether there was a greater number of male authors than there is female. Ina thought that female authors were more likely to have ‘domestic’ places in the title, such as London or England while Cassidy thought that female authors would have more places outside of England. We also wanted to know what time period was places in America most mentioned in the title. Furthermore, we were curious about the most popular narrative forms for these novels with places mentioned in the title page.

# Dealing with the Data

We began with MARC XML data for 2,002 novels catalogued by the Early Novels Database (END) Project at the University of Pennsylvania. The data set is open to the public and downloaded from END’s github [here](https://github.com/earlynovels/end-dataset). For each novel catalogued, a MARC catalog record was created with uniform subfields to collect information about the text (the full title, narrative form, authorship claim, paratexts, etc.) and the codex (size, marginalia, inscriptions, illustrations, etc.)

## Dataset
To begin, we ran a Python script to convert the MARC XML records into a TSV file. Once the MARC XML files were converted into a spreadsheet-compatible form, we used OpenRefine to clean our dataset. Given that many titles mentioned multiple locations, we decided to create a unique record for each location, rather than each novel. Using OpenRefine, we split up the locations and created unique records for each location: increasing our dataset of 2,002 to 2,479. Next, we eliminated all of the records that did not contain locations, and were left with 1,073 locations. These records came from a total of 623 novels, meaning that many of our locations come from a novel that mentioned more than one place.

Once we had our dataset of 1,073 locations, another problem arose: how to format the locations so that ArcGIS or other software could geocode the locations—that is, could pinpoint them on the map. When we first ran our map through the ArcMAP program, over 75% of our locations were tied with multiple locations on the map. Rather than try to correct each pinpoint in ArcMAP manually, we went back to our dataset. We created a new datapoint called “controlled location” based off of the location in the title page. While 'controlling' for the location, we found numerous errors made by the catalogers; either, a location was 'tagged' twice, or a name was assumed to be a location. Once we cleaned up the places, we were left with at total of 943 locations to map. For many of them, the controlled location was about specifying the location so that it was readable for geocoding; for example, London was changed to London, England and Beaufort was changed to Beaufort Castle, Scotland. In many cases, we wanted to be able to map the locations approximately on the map, if we knew the general area that the author was referring to. So, for example, we decided to place Atalantis in the Mediterranean Sea; Constantinople was controlled as Istanbul, Turkey. In line with these, we also tried to standardize many of the locations to the best of our ability: for all mentions of “East”, for example, we decided to locate as “Asia”.  Because of this standardizing, there will be some human error in our dataset. We had a few locations that we either did not know how to map, or were impossible to pinpoint on the map: we labeled these ‘unknown.’ Nine locations were marked as ‘unknown’, including “the equator”, “Continent of Glory,” and “St. A---n.”  There were also multiple locations which we believed to be imaginary, such as “Fairy-lodge” and “Mount Henneth”; all were marked with the new location as “Imaginary Place.” In total, we had 67 places tagged as potentially imaginary. In order to map both the ‘unknown’ places and the ‘imaginary places’ on an actual world map, we decided to place both of these “locations” in oceans, away from other real and exact places.  Given that the Atlantic Ocean, the Pacific Ocean, and the Indian Ocean were already part of our dataset, we used two smaller bodies of water, the Bay of Bengal and the Arabian Ocean, as our points for these locations. All supposed “imaginary places” can be found in the Bay of Bengal and all ‘unknown’ places can be found in the Arabian Sea. You can see our completed dataset [here](/end19/data).

## Geocoding
Once our dataset was formalized, we began by using the ArcMAP software. Special thanks to Girmaye Misgna on help with this tool. ArcGIS automatically geocoded our locations to correspoinding GPS points; there is therfore some margin of error, given that so many of our locations (London; Boston) are broad and can often refer to multiple locations. We then went through and corrected some of the geocodes manually.  We ended up deciding on using ArcGIS Online mapping to display and share our map, given its user-friendliness for displaying and accessing our content.

Once we mapped the locations, we created four additional maps: a heat map showing the prevalence of locations in certain countries and areas; a map indicating the gender of the author when it has been confirmed by the cataloger; the narrative form; and the publication date. You can see our maps [here](/end19/map).

# Conclusions: Takeaways

See our conclusions and takeaways here.
