class StatsController < ApplicationController
	def index
		@page_views = [{
            name: 'Home - Index',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "home", action: "index", message: "page_view"}).collect { |x| [ x.created_at, x.count ] }
        }, {
            name: 'About - Index',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "about", action: "index", message: "page_view"}).collect { |x| [ x.created_at, x.count ] }
        }, {
            name: 'Prices - Index',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "prices", action: "index", message: "page_view"}).collect { |x| [ x.created_at, x.count ] }
        }, {
            name: 'Prices - Trends',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "prices", action: "trends", message: "page_view"}).collect { |x| [ x.created_at, x.count ] }
        }, {
            name: 'Prices - Weekly Updates',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "prices", action: "weekly_updates", message: "page_view"}).collect { |x| [ x.created_at, x.count ] }
        }, {
            name: 'Prices - API',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "prices", action: "api", message: "page_view"}).collect { |x| [ x.created_at, x.count ] }
        }]

        @api_views = [{
            name: 'XML',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "prices", action: "get", message: "api_xml"}).collect { |x| [ x.created_at, x.count ] }
        }, {
            name: 'JSON',
            data: Stat.order("created_at").select("count, date(created_at) as created_at").where("controller = :controller and action = :action and message = :message", {controller: "prices", action: "get", message: "api_json"}).collect { |x| [ x.created_at, x.count ] }
        }]
	end
end
