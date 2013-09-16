# Ref: https://github.com/plataformatec/devise/wiki/How-To%3a-Controllers-tests-with-Rails-3-%28and-rspec%29
# Ref: http://stackoverflow.com/questions/8409787/factorygirl-factory-not-registered-user-argumenterror
# Ref: http://www.sarahmei.com/blog/2010/05/29/outside-in-bdd/

require "spec_helper"
require "recipes_controller"

describe RecipesController do
  include Devise::TestHelpers

  before(:each) do
    # Define required fields to avoid error: Factory not registered: user
    FactoryGirl.factories.clear  # Clear factories to avoid duplicate error: Factory already registered: user
    FactoryGirl.define do
      factory :user do
        name 'Mia'                           # optional
        email 'mia@mail.com'                 # required field
        password 'railstesting'              # required field
        password_confirmation 'railstesting' # optional
      end
    end
  end

  # Login user for each test
  login_user

  # NEW
  describe "#new" do
    before do
      get :new
    end
    it "should be successful" do
      response.should be_success
    end
    it "should create a recipe object" do
      assigns(:recipe).should_not be_nil
    end
  end

  it "should have a current_user" do
     subject.current_user.should_not be_nil
  end

  # INDEX
  describe "#index" do
    it "should be successful" do
      get :index
      response.should be_success
    end
  end

  # CREATE
  describe "#create" do
    it "should create a new recipe" do
      xhr :post, :create, "recipe" => {"title" => "Banana Bread", "body" => "Ingredients and Directions"}
      assigns(:recipe).should_not be_nil
      assigns(:recipe).title.should == "Banana Bread"
    end
  end

  # UPDATE
  describe "#update" do
    it "should update the fields of the recipe" do
      # create
      xhr :post, :create, :id => 1, "recipe" => {"title" => "Apple Pie", "body" => "Apple Pie body"}
      xhr :post, :create, :id => 2, "recipe" => {"title" => "Brownies", "body" => "Brownies body"}
      xhr :post, :create, :id => 3, "recipe" => {"title" => "Cheesecake", "body" => "Cheesecake body"}

      # then update
      put :update, :id => 3, "recipe" => {"title" => "Doughnut", "body" => "Doughnut body"}
      assigns(:recipe).should_not be_nil
      assigns(:recipe).title.should == "Doughnut"
      assigns(:recipe).body.should == "Doughnut body"
    end
  end

end
