using CruiseBookingWeb.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruiseBookingWeb
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetWeatherInfo(object sender, EventArgs e)
        {
            string appId = "1f20cce5f84887acc5f87f9dd72a888c";
            string url = string.Format("https://api.openweathermap.org/data/2.5/forecast?lat={0}&lon={2}&&APPID={1}", txtLatitude.Text.Trim(), appId,txtLong.Text.Trim());
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(url);

                WeatherInfo weatherInfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
                lblCity_Country.Text = weatherInfo.city.name + "," + weatherInfo.city.country;
                imgCountryFlag.ImageUrl = string.Format("http://openweathermap.org/images/flags/{0}.png", weatherInfo.city.country.ToLower());
                lblDescription.Text = weatherInfo.list[0].weather[0].description;
                imgWeatherIcon.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherInfo.list[0].weather[0].icon);
                lblTempMin.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp_min , 1));
                lblTempMax.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp_max, 1));
                lblTempDay.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp, 1));
                lblTempNight.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp_kf, 1));
                lblHumidity.Text = weatherInfo.list[0].main.humidity.ToString();
                tblWeather.Visible = true;

            }
        }


        protected void GetNewsInfo(object sender, EventArgs e)
        {
            string Url = "https://newsapi.org/v2/top-headlines/sources?apiKey=59944f43b73e43c0b0898613d425a8a8";
            if(!string.IsNullOrEmpty(txtCountry.Text))
            {
                Url = Url + "&country="+txtCountry.Text;
            }

            if (!string.IsNullOrEmpty(txtCategory.Text))
            {
                Url = Url + "&category=" + txtCategory.Text;
            }


            if (!string.IsNullOrEmpty(txtLanguage.Text))
            {
                Url = Url + "&language=" + txtLanguage.Text;
            }

             
            using (WebClient client = new WebClient())
            {
                client.Headers.Add("user-agent", "foo");
                string json = client.DownloadString(Url);

                NewsDTO newInfo = (new JavaScriptSerializer()).Deserialize<NewsDTO>(json);

                grdNews.DataSource = newInfo.sources;
                grdNews.DataBind();
            }
        }

        protected void getCrimeData(object sender, EventArgs e)
        {

            string Url = string.Format("https://api.usa.gov/crime/fbi/sapi/api/summarized/agencies/{0}/{1}/{2}/{3}?API_KEY=n7HLOqpRPZkkSYAqb7fGjTu41EzJr3HXPA2zNfpP",tbORI.Text.Trim(),tbOffense.Text.Trim(),tbFrom.Text.Trim(),tbTO.Text.Trim());
     


            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(Url);

                CrimeDataDTO crimeData = (new JavaScriptSerializer()).Deserialize<CrimeDataDTO>(json);

                grdCrimeView.DataSource = crimeData.results;
                grdCrimeView.DataBind();
            }

        }
    }
}