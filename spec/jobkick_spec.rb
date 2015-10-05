require 'spec_helper'
require 'jobkick'

TRAVIS_API = 'https://api.travis-ci.com'
TRAVIS_TOKEN = 'secretkey'

describe JobKick do
  it 'has a version number' do
    expect(JobKick::VERSION).not_to be nil
  end

  it 'Client should has Travis CI Access Token' do
    cli = JobKick::Client.new(TRAVIS_API, TRAVIS_TOKEN)
    expect(cli.dummy).to eq(TRAVIS_API + TRAVIS_TOKEN)
  end
end
