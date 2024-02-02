// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

#variable "tenancy_ocid" {
#}
#
#variable "user_ocid" {
#}
#
#variable "fingerprint" {
#}
#
#variable "private_key_path" {
#}
#
#variable "compartment_ocid" {
#}
#
#variable "region" {
#}

provider "oci" {
  region           = "ap-seoul-1"
  ignore_defined_tags      = ["testexamples-tag-namespace.tf-example-tag"]
}


resource "oci_core_vcn" "vcn" {
  cidr_blocks    = ["10.0.0.0/16","11.0.0.0/16"]
  dns_label      = "vcn"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaa77t5pz2cq6vlngxlaejgxg6frbtduveaehyqxijyfq2gr2mds7pa"
  display_name   = "vcn_demo"
}

output "vcn_id" {
  value = oci_core_vcn.vcn.id
}
