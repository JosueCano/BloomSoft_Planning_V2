namespace BloomSoft_V2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Licencia")]
    public partial class Licencia
    {
        [Key]
        public int id_licencia { get; set; }

        public int cantidadRequerimientos { get; set; }

        public int cantidadProyectos { get; set; }

        public TimeSpan tiempo { get; set; }

        public virtual LicenciaUsuario LicenciaUsuario { get; set; }
    }
}
