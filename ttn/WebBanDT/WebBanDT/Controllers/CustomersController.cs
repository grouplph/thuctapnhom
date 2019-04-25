using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDT.Models;
using WebBanDT.Models.Data;
using WebBanDT.Models.Function;

namespace WebBanDT.Controllers
{
    public class CustomersController : Controller
    {
        // GET: Customers
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            var cart = (Customer)Session["CustomerSession"];
            return View();
        }
        public ActionResult HoanThanh()
        {
            return View();
        }
    }
}