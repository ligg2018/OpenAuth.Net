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
    public partial class ResourceMap
        : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<OpenAuth.Repository.Domain.Resource>
    {
        public ResourceMap()
        {
            // table
            ToTable("Resource", "dbo");

            // keys
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Id)
                .HasColumnName("Id")
                .HasMaxLength(50)
                .IsRequired();
            Property(t => t.CascadeId)
                .HasColumnName("CascadeId")
                .HasMaxLength(255)
                .IsRequired();
            Property(t => t.Key)
                .HasColumnName("Key")
                .HasMaxLength(200)
                .IsRequired();
            Property(t => t.Name)
                .HasColumnName("Name")
                .HasMaxLength(255)
                .IsRequired();
            Property(t => t.Status)
                .HasColumnName("Status")
                .IsRequired();
            Property(t => t.SortNo)
                .HasColumnName("SortNo")
                .IsRequired();
            Property(t => t.Description)
                .HasColumnName("Description")
                .HasMaxLength(500)
                .IsRequired();
            Property(t => t.ParentId)
                .HasColumnName("ParentId")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.AppId)
                .HasColumnName("AppId")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.TypeName)
                .HasColumnName("TypeName")
                .HasMaxLength(20)
                .IsOptional();
            Property(t => t.TypeId)
                .HasColumnName("TypeId")
                .HasMaxLength(50)
                .IsOptional();

            // Relationships
        }
    }
}
