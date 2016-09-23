/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package flag;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 *
 * @author Jiaming
 */
public class NationalFlagServlevtModel {

    String pageURL;
    String pageContent;

    public String getPictureURL(String shortName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/");
        stringBuilder.append(shortName);
        stringBuilder.append("-lgflag.gif");
        return stringBuilder.toString();
    }

    public void fetchPageContent(String shortName) {
        pageURL = "https://www.cia.gov/library/publications/the-world-factbook/geos/" + shortName + ".html";
        pageContent = fetch(pageURL);
    }

    public String fetch(String urlString) {
        String response = "";
        try {

            URL url = new URL(urlString);

            /*
             * Create an HttpURLConnection.  This is useful for setting headers
             * and for getting the path of the resource that is returned (which 
             * may be different than the URL above if redirected).
             * HttpsURLConnection (with an "s") can be used if required by the site.
             */
            HttpURLConnection connect = (HttpURLConnection) url.openConnection();

            // Read all the text returned by the server
            BufferedReader in = new BufferedReader(new InputStreamReader(connect.getInputStream(), "UTF-8"));

            String str;
            // Read each line of "in" until done, adding each to "response"
            while ((str = in.readLine()) != null) {
                // str is one line of text readLine() strips newline characters
                response += str;
            }
            in.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return response;
    }

    public String getPageContent() {
        return pageContent;
    }

    public String getDescription(String pageContent) {

        // generate the url of the country page
        // fetch the page
        String response = pageContent;

        // Screen scraping
        // find the location Flag description:
        int cutLeft = response.indexOf("Flag description:");
        if (cutLeft == -1) {
            return null;
        }

        response = new String(response.substring(cutLeft));
        response = response.split("<div")[1];

        cutLeft = response.indexOf(">");
        int cutRight = response.indexOf("<");

        String result = new String(response.substring(cutLeft + 1, cutRight));
        return result;
    }
    
    public String getCountryName(String pageContent) {
        // Screen scraping
        // find the location of country name;
        int cutLeft = pageContent.indexOf("region_name1 countryName");
        String result = new String(pageContent.substring(cutLeft));

        cutLeft = result.indexOf(">");
        int cutRight = result.indexOf("<");
        result = new String(result.substring(cutLeft + 1, cutRight));
        return result;
    }
}
