# Phase-3 Final Project Back-End - The SkinWish Cosmetic Website

## Learning Goals

*  Understand how and why Active Record implements associations between models
*  Use Active Record migrations and methods to build out a domain model that
   associates classes
*  Establish the one-to-many (or **has-many/belongs-to**) association in Active
   Record
*  Handle `GET, POST, PATCH, DELETE` requests in a controller.
*  Use the params hash to look up and access data with Active Record.
*  Perform CRUD actions with Active Record from the controller

## Introduction

The Back-End app is the most critical part in the phase-3 project. I created two tables for `Brands` and `Products` and use Active Record to implement one-to-many relationship between the two models. I wrote a migration that create tables with associations. A product belongs to a single brand, so the products table has to have a `brand_id` column. Active Record **macros** is also used to generate additional methods that use the relationship between two database tables.

In the controller, I built a Sinatra API and perform various CRUD actions using Active Record. Defining routes that responds to `GET, POST` requests to `/brands` and `POST, PATCH, DELETE` requests to products and returns an array of JSON objects for all products in the database.

