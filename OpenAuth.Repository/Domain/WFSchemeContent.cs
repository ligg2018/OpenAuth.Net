﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
//     Author:Yubao Li
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Text;

namespace OpenAuth.Repository.Domain
{
    /// <summary>
	/// 工作流模板内容表
	/// </summary>
    public partial class WFSchemeContent : Entity
    {
        public WFSchemeContent()
        {
          this.SchemeInfoId= string.Empty;
          this.SchemeVersion= string.Empty;
          this.SchemeContent= string.Empty;
          this.CreateDate= DateTime.Now;
          this.CreateUserId= string.Empty;
          this.CreateUserName= string.Empty;
        }

        /// <summary>
	    /// 工作流模板信息主键Id
	    /// </summary>
        public string SchemeInfoId { get; set; }
        /// <summary>
	    /// 流程内容版本
	    /// </summary>
        public string SchemeVersion { get; set; }
        /// <summary>
	    /// 流程内容
	    /// </summary>
        public string SchemeContent { get; set; }
        /// <summary>
	    /// 创建时间
	    /// </summary>
        public System.DateTime? CreateDate { get; set; }
        /// <summary>
	    /// 创建用户主键
	    /// </summary>
        public string CreateUserId { get; set; }
        /// <summary>
	    /// 创建用户
	    /// </summary>
        public string CreateUserName { get; set; }

    }
}