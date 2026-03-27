terraform {
  backend "azurerm" {
    resource_group_name  = "ResourceofJoy" # Required: Add the RG where the storage lives
    storage_account_name = "joymaz1234"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"

    use_oidc         = true
    use_azuread_auth = true

    # These IDs are typically passed as environment variables in CI/CD 
    # but can be explicitly set here if they are static.
    tenant_id       = "467c20b7-8e4b-4564-8c7f-8d81ca869b4d"
    client_id       = "13d67ee6-fc1a-4073-b393-08bbcd951d48"
    subscription_id = "5b142d4f-8b9f-4227-93b5-62db77533fc2" # Highly recommended to include

    # Only required for Azure DevOps Service Connections
    # oidc_azure_service_connection_id = "00000000-0000-0000-0000-000000000000" 
  }
}
