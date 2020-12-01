/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services" ### updated
  version = "~> 9.2.0" ### Updated

  project_id = var.project_id

  # Don't disable the services
  disable_services_on_destroy = false
  disable_dependent_services  = false

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "sqladmin.googleapis.com",
    "artifactregistry.googleapis.com",
    "gkehub.googleapis.com",
    "multiclusteringress.googleapis.com"    
  ]
}