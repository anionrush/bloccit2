FactoryGirl.define do
   factory :label do
     sequence (:name) { |n| "#{n}#{RandomData.random_word}" }
   end
 end
 