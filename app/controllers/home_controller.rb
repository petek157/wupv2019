class HomeController < ApplicationController

  # layout 'front'

  def index
    @test = "Im Peter"
    render layout: "index"
  end

  def explore
    @title = "Lets Explore"
    @subtitle = "These are things to do"
    @message = "There is an endless variety of things to do in the UP for those that are willing to adventure to find them. From skiing, hiking, biking, boating, and fishing to waterfalling, eating and shopping."
    render layout: "index"
  end

  def shop
    @title = "Local Businesses"
    @subtitle = "Find the products and service you need."
    @message = "This will be the general welcome message. It should be about 5-8 lines long on a full screen and can be clip shorter on a mobile device. 'alihs'lhglkjnafdgm fg kjnfaj skdnf sn kj dfoigIOPqj jkdf gj wd kdfj hdwkjfhv jlwhjhe jfhq jhe fgjh wdfjgh dwjfhg j,wdhf gwhdf g.hwdf.gh feg;qheghqjfhv jhd vjqh dgh ejrhg jhfg jhdfgjqejrgquertiuqergiuqf gjh qdfgjh qehgjqh egjh qjge qjfgiuqeg qjegh qidf gjh qefghqihe gjhq egjh qejg jqfgj qfegh qejhr fjh dfjh qjerh tjqh ejrth qjerht jqr efjhqrehrf."
    render layout: "front"
  end

  def stay
    @test = "Lets Sleep"
    render layout: "front"
  end

  def maps
    @test = "Where am I?"
    render layout: "map"
  end

  def conditions
    @test = "What are the trails like?"
    render layout: "front"
  end
end
