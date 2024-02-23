// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "key_vault_id" {
  value = azurerm_key_vault.key_vault.id
}

output "vault_uri" {
  value = azurerm_key_vault.key_vault.vault_uri
}

output "access_policies_object_ids" {
  value = try(azurerm_key_vault.key_vault.access_policy[*].object_id)
}

output "key_vault_name" {
  value = azurerm_key_vault.key_vault.name
}

output "certificate_ids" {
  value = [
    for cert in azurerm_key_vault_certificate.certs : cert.id
  ]
  sensitive = false
}

output "secret_ids" {
  value = [
    for secret in azurerm_key_vault_secret.vault_secrets : secret.id
  ]
  sensitive = false
}

output "key_ids" {
  value = [
    for key in azurerm_key_vault_key.vault_keys : key.id
  ]
  sensitive = false
}