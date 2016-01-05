require 'spec_helper'

RSpec.describe PragmaticSegmenter::Languages::Bulgarian, '(bg)' do

  describe '#segment' do

    it 'correctly segments text #001' do
      ps = PragmaticSegmenter::Segmenter.new(text: "В първата половина на ноември т.г. ще бъде свикан Консултативният съвет за национална сигурност, обяви държавният глава.", language: 'bg')
      expect(ps.segment).to eq(["В първата половина на ноември т.г. ще бъде свикан Консултативният съвет за национална сигурност, обяви държавният глава."])
    end

    it 'correctly segments text #002' do
      ps = PragmaticSegmenter::Segmenter.new(text: "Компютърът е устройство с общо предназначение, което може да бъде програмирано да извършва набор от аритметични и/или логически операции. Възможността поредицата такива операции да бъде променяна позволява компютърът да се използва за решаването на теоретично всяка изчислителна/логическа задача. Обикновено целта на тези операции е обработката на въведена информация (данни), представена в цифров (дигитален) вид, резултатът от които може да се изведе в най-общо казано използваема форма.", language: 'bg')
      expect(ps.segment).to eq(["Компютърът е устройство с общо предназначение, което може да бъде програмирано да извършва набор от аритметични и/или логически операции.", "Възможността поредицата такива операции да бъде променяна позволява компютърът да се използва за решаването на теоретично всяка изчислителна/логическа задача.", "Обикновено целта на тези операции е обработката на въведена информация (данни), представена в цифров (дигитален) вид, резултатът от които може да се изведе в най-общо казано използваема форма."])
    end

    it 'correctly segments text #003' do
      ps = PragmaticSegmenter::Segmenter.new(text: "Пл. \"20 Април\"", language: 'bg')
      expect(ps.segment).to eq(["Пл. \"20 Април\""])
    end
  end
end