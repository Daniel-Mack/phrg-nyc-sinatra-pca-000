# frozen_string_literal: true

class LandmarksController < ApplicationController
  get "/landmarks" do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get "/landmarks/new" do
    erb :'landmarks/new'
  end

  post "/landmarks" do
    @landmark = Landmark.create(params[:landmark])
    @landmark.save
  end

  get "/landmarks/:id" do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'landmarks/show'
  end

  get "/landmarks/:id/edit" do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'landmarks/edit'
  end

  post "/landmarks/:id" do
    @landmark = Landmark.find(params[:id])
    @landmark.name = params["landmark"]["name"]
    @landmark.year_completed = params["landmark"]["year_completed"]
    @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
  end

  post "/landmarks" do
    Landmark.create(params)
    redirect "/landmarks"
  end
end
