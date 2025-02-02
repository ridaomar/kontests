class Api::V1Controller < ApplicationController
  def all
    render json: ::All.all
  end

  def codeforces
    render json: Codeforces.all
  end

  def codeforces_gym
    render json: CodeforcesGym.all
  end

  def top_coder
    render json: TopCoder.all
  end

  def at_coder
    render json: AtCoder.all
  end

  def cs_academy
    render json: CsAcademy.all
  end

  def code_chef
    render json: CodeChef.all
  end

  def hacker_rank
    render json: HackerRank.all
  end

  def hacker_earth
    render json: HackerEarth.all
  end

  def kick_start
    render json: KickStart.all
  end

  def leet_code
    render json: LeetCode.all
  end

  def a2oj
    render json: A2oj.all
  end

  def sites
    render json: SITES[1..-1]
  end
end
