﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OpenAuth.Repository.Mapping
{
    public partial class CategoryTypeMap
        : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<OpenAuth.Repository.Domain.CategoryType>
    {
        public CategoryTypeMap()
        {
            // table
            ToTable("CategoryType", "dbo");

            // keys
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Id)
                .HasColumnName("Id")
                .HasMaxLength(50)
                .IsRequired();
            Property(t => t.Name)
                .HasColumnName("Name")
                .HasMaxLength(255)
                .IsRequired();
            Property(t => t.CreateTime)
                .HasColumnName("CreateTime")
                .IsRequired();

            // Relationships
        }
    }
}
