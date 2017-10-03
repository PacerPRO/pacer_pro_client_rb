=begin
#PacerPro

#PacerPro API documentation.

OpenAPI spec version: 0.5.0
Contact: ken@pacerpro.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for PacerProClient::DocumentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DocumentsApi' do
  before do
    # run before each test
    @instance = PacerProClient::DocumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentsApi' do
    it 'should create an instact of DocumentsApi' do
      expect(@instance).to be_instance_of(PacerProClient::DocumentsApi)
    end
  end

  # unit tests for documents_get_one
  # A single document.
  # Get a single document, specified by &#x60;documentId&#x60; in the path.
  # @param document_id The database identifier of the document.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer {...JSON Web Token...}
  # @return [Document]
  describe 'documents_get_one test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
