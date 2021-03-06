﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web.Mvc;

namespace Meek
{
    public class AcceptParameterAttribute : ActionMethodSelectorAttribute
    {

        public override bool IsValidForRequest(ControllerContext controllerContext, MethodInfo methodInfo)
        {
            var req = controllerContext.RequestContext.HttpContext.Request;
            return req.Form[Name] == Value;
        }

        public string Name { get; set; }
        public string Value { get; set; }

    }
}
