require 'rubygems'
require 'sinatra'
require './app'

use Rack::ShowExceptions

run WhatWebApp.new
