# ###################################################################################################### #
# Copyright (c) 2023 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

resource "oci_bastion_bastion" "bastion" {
  #Required
  bastion_type = "STANDARD"
  compartment_id = var.compartment_id
  target_subnet_id = var.target_subnet_id

  #Optional
  client_cidr_block_allow_list = var.bastion_client_cidr_block_allow_list
  name = var.bastion_name
}