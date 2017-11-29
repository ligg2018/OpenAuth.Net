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
	/// 表单模板表
	/// </summary>
    public partial class WFFrmMain : Entity
    {
        public WFFrmMain()
        {
          this.FrmCode= string.Empty;
          this.FrmName= string.Empty;
          this.FrmType= string.Empty;
          this.FrmTable= string.Empty;
          this.FrmTableId= string.Empty;
          this.FrmContent= string.Empty;
          this.FrmDbId= string.Empty;
          this.Description= string.Empty;
          this.CreateDate= DateTime.Now;
          this.CreateUserId= string.Empty;
          this.CreateUserName= string.Empty;
          this.ModifyDate= DateTime.Now;
          this.ModifyUserId= string.Empty;
          this.ModifyUserName= string.Empty;
        }

        /// <summary>
	    /// 表单编号
	    /// </summary>
        public string FrmCode { get; set; }
        /// <summary>
	    /// 表单名称
	    /// </summary>
        public string FrmName { get; set; }
        /// <summary>
	    /// 表单分类
	    /// </summary>
        public string FrmType { get; set; }
        /// <summary>
	    /// 数据表
	    /// </summary>
        public string FrmTable { get; set; }
        /// <summary>
	    /// 关联表的主键
	    /// </summary>
        public string FrmTableId { get; set; }
        /// <summary>
	    /// 是否需要建表0不建表,1建表
	    /// </summary>
        public int? IsSystemTable { get; set; }
        /// <summary>
	    /// 表单内容
	    /// </summary>
        public string FrmContent { get; set; }
        /// <summary>
	    /// 排序码
	    /// </summary>
        public int? SortCode { get; set; }
        /// <summary>
	    /// 删除标记
	    /// </summary>
        public int? DeleteMark { get; set; }
        /// <summary>
	    /// 数据库Id
	    /// </summary>
        public string FrmDbId { get; set; }
        /// <summary>
	    /// 有效
	    /// </summary>
        public int? EnabledMark { get; set; }
        /// <summary>
	    /// 备注
	    /// </summary>
        public string Description { get; set; }
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
        /// <summary>
	    /// 修改时间
	    /// </summary>
        public System.DateTime? ModifyDate { get; set; }
        /// <summary>
	    /// 修改用户主键
	    /// </summary>
        public string ModifyUserId { get; set; }
        /// <summary>
	    /// 修改用户
	    /// </summary>
        public string ModifyUserName { get; set; }

    }
}