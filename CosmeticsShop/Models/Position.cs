//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CosmeticsShop.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Position
    {
        public int id { get; set; }
        public string name { get; set; }
        public System.Data.Entity.Spatial.DbGeometry GeomCol1 { get; set; }
        public string GeomCol2 { get; set; }
    }
}