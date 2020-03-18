# == Schema Information
#
# Table name: wines
#
#  id          :integer          not null, primary key
#  alc         :decimal(, )
#  label       :string
#  name        :string
#  origin      :string
#  price       :integer
#  sugar       :integer
#  wherebought :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class WineTest < ActiveSupport::TestCase
   test "should not save wine without name" do
   	 testinstanz_wine = Wine.new
     assert_not testinstanz_wine.save
   end

   test "should not save wine if year before 1995" do
   	 testinstanz_wine = Wine.new(name: "ABC", year: 1994)
     assert_not testinstanz_wine.save
   end

   test "should not save wine if year after today" do
   	 testinstanz_wine = Wine.new(name: "ABC2", year: 2021)
     assert_not testinstanz_wine.save
   end

   test "should save wine without year" do
   	 testinstanz_wine = Wine.new(name: "ABC3")
     assert testinstanz_wine.save
   end

   test "should NOT save wine if name not unique" do
   	 Wine.create(name: "ABC4", year: 2000)
   	 testinstanz_wine = Wine.new(name: "ABC4", year: 2001)
     assert_not testinstanz_wine.save
   end

   test "should NOT save wine if alcohol more than 20 percent" do
   	 testinstanz_wine = Wine.new(name: "ABC20", alc: 21.7)
     assert_not testinstanz_wine.save
   end

   test "should NOT save wine if alcohol less than 9 percent" do
   	 testinstanz_wine = Wine.new(name: "ABC21", alc: 8.5)
     assert_not testinstanz_wine.save
   end
end
