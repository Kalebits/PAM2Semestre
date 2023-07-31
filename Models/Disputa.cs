using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace RpgApi.Models
{
    //using System.ComponentModel.DataAnnotations.Schema;
    [Table("TB_Disputas")]
    public class Disputa
    {
        [Key] //using System.ComponentModel.DataAnnotations;
        [Column("Id")]
        public int Id { get; set; }
        
        [Column("Dt_Disputa")]
        public DateTime? DataDisputa { get; set; }
        
        [Column("AtacanteId")]
        public int AtacanteId { get; set; }

        [Column("OponenteId")]
        public int OponenteId { get; set; }

        [Column("Tx_Narracao")]
        public string Narracao { get; set; }
    }
}