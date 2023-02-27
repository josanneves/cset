﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSETWebCore.Model.C2M2.Tables
{
    /// <summary>
    /// Domain container for question tables in report.
    /// </summary>
    public class Domain
    {
        public string Title { get; set; }
        public int Sequence { get; set; }
        public List<Objective> Objectives { get; set; } = new List<Objective>();
    }


    /// <summary>
    /// Objective container for question tables in report.
    /// </summary>
    public class Objective
    {
        public string Title { set; get; }
        public List<Practice> Practices { get; set; } = new List<Practice>();
    }


    /// <summary>
    /// Practice container for question tables in report.
    /// </summary>
    public class Practice
    {
        public string Title { set; get; }
        public string QuestionText { set; get; }
        public string AnswerText { set; get; }

        public string Mil { set; get; }
    }

}