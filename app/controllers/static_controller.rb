class StaticController < ApplicationController
  #caches_page :portfolio

  def portfolio
    @projects = PROJECTS.select { |p| p[:display] }
  end

  def team
    @team_members = TEAM_MEMBERS.select { |t| t[:display] }
  end

  def home
    testimonies = TESTIMONIES.select{|e| e[:display]}
    size = testimonies.size
    index = rand(size)
    @testimony = testimonies[index]
  end

  def testimonials
    @testimonies = TESTIMONIES.select{|e| e[:display]}
  end

end
