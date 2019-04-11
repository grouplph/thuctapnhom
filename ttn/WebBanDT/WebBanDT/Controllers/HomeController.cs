using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanDT.Models.Data;

namespace WebBanDT.Controllers
{
    public class HomeController : Controller
    {
        BanDT1 db = new BanDT1();
        // GET: Home
        public ActionResult Index(int? pageTemp)
        {
            int pageSize = 5;
            int pageNumber = pageTemp ?? 1;
            return View(db.Phones.ToList().OrderBy(a => a.Id).ToPagedList(pageNumber, pageSize));
            
        }
    }
}