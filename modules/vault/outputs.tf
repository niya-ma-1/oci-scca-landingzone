# ###################################################################################################### #
# Copyright (c) 2023 Oracle and/or its affiliates, All rights reserved.                                  #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
# ###################################################################################################### #

output "management_endpoint" {
  value       = oci_kms_vault.vault.management_endpoint
  description = "The endpoint OCID of the valut"
}