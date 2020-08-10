// Common data for Ad
google_ad_client = "pub-4639088530133416";
google_ad_width = 120;
google_ad_height = 60;
google_ad_format = "120x60_as_rimg";

var adnumber = 9;                 // Numero de ads
var ads = new Array(adnumber); // Arreglo con ID de ads

// ID de ads 
ads[0] = "CAAQ5eibzgEaCMTDHZQfZyoRKJfE93M"; // Firefox
//ads[1] = "CAAQobnzzwEaCKpGUqsOStq1KKW393M"; // Adsense
ads[1] = "CAAQ-7nzzwEaCAZtsaK0qPCiKKW393M"; // Firefox
ads[2] = "CAAQ-7nzzwEaCAZtsaK0qPCiKKW393M"; // Firefox
//ads[3] = "CAAQg-mbzgEaCAUtlBTsrlXmKJfE93M"; // Adsense
ads[3] = "CAAQkOm28QEaCB4vWWwM2kBcKNDR6n4"; // Adwords
ads[4] = "CAAQkOm28QEaCB4vWWwM2kBcKNDR6n4"; // Adwords
ads[5] = "CAAQlKHI-wEaCKJ64tBx1393KLCKs4MB"; // Picasa
ads[6] = "CAAQlKHI-wEaCKJ64tBx1393KLCKs4MB"; // Picasa
ads[7] = "CAAQkMnDmwIaCJtC3PjHA7UdKKi6uosB"; // Pack
ads[8] = "CAAQkMnDmwIaCJtC3PjHA7UdKKi6uosB"; // Pack





function pickRandom(range) {
        if (Math.random)
            return Math.round(Math.random() * (range-1));
        else {
            var now = new Date();
            return (now.getTime() / 1000) % range;
        }
}

var selection = pickRandom(adnumber);
google_cpa_choice = ads[selection];

