﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebBanDT.Models
{
    public class PhoneDuoi5tr
    {

        [StringLength(10)]
        public string Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string Image { get; set; }

        [Display(Name = "Manufacturer")]
        [StringLength(10)]
        public string ManufacturerName { get; set; }

        public string Price { get; set; }

        [StringLength(50)]
        public string Status { get; set; }

        [StringLength(1000)]
        public string Configuration { get; set; }
        public SelectList PhoneDuoi5trList { get; set; }
        public List<PhoneDuoi5tr> GetHome()
        {
            List<PhoneDuoi5tr> strList = new List<PhoneDuoi5tr>();
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-U7VSIPA\SQLEXPRESS01;Initial Catalog=BanDT;Integrated Security=True");
            //string sql = "select Phone.Id as 'maDT', Phone.Name as 'PhoneName',Phone.Image,Manufacturer.Name as 'NameNSX',Price,Status,configuration from " +
            //    "Phone,Manufacturer where Phone.Id = Manufacturer.Id";
            string sql1 = @"select Phone.Id as 'maDT', Phone.Name as 'PhoneName', Phone.[Image], Manufacturer.[Name] as 'NameNSX',Price, [Status], [configuration] from Phone,Manufacturer where Phone.Manufacturerid = Manufacturer.Id and Phone.Price <5000000";
            SqlDataAdapter cmd = new SqlDataAdapter(sql1, con);
            DataTable dt = new DataTable();
            con.Open();
            cmd.Fill(dt);
            con.Close();
            PhoneDuoi5tr strHome;
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                strHome = new PhoneDuoi5tr();
                strHome.Id = dt.Rows[i]["maDT"].ToString();
                strHome.Name = dt.Rows[i]["PhoneName"].ToString();
                strHome.Image = dt.Rows[i]["Image"].ToString();
                strHome.ManufacturerName = dt.Rows[i]["NameNSX"].ToString();
                strHome.Price = Convert.ToInt32(dt.Rows[i]["Price"]).ToString();
                strHome.Status = dt.Rows[i]["Status"].ToString();
                strHome.Configuration = dt.Rows[i]["configuration"].ToString();

                strList.Add(strHome);

            }
            return strList;
        }
    }
}