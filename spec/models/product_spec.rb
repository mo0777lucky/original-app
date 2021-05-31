require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe '新規投稿' do
    context '新規投稿できるとき' do
      it '全ての情報を正しく入力すれば、新規投稿できる' do
        expect(@product).to be_valid
      end
    end

    context '新規投稿できないとき' do
      it 'imageが空では投稿できない' do
        @product.image = nil
        @product.valid?
        expect(@product.errors.full_messages).to include ("Image can't be blank")
      end

      it 'titleが空では投稿できない' do
        @product.title = ''
        @product.valid?
        expect(@product.errors.full_messages).to include ("Title can't be blank")
      end

      it 'category_idが空では投稿できない' do
        @product.category_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include ("Category can't be blank")
      end

      it 'category_id選択が--では投稿できない' do
        @product.category_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include ("カテゴリーを選択してください")
      end
      
      it 'descriptionが空では投稿できない' do
        @item.description = ''
        @item.valid?
        expect(@item.errors.full_messages).to include ("Description can't be blank")
      end

      it 'descriptionが1000字以上だと投稿できない' do
        @product.description = 1000
        @product.valid?
        expect(@product.errors.full_messages).to include ("Description be less than or equal to 1000 length")
      end

      it 'prefecture_idが空では投稿できない' do
        @product.prefecture_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include ("Prefecture id can't be blank")
      end

      it 'prefecture_id選択が--は投稿できない' do
        @product.prefecture_id = 1
        @product.valid?
        expect(@product.errors.full_messages).to include ("発送元の地域を選択してください")
      end
  
      it 'municipalityが空では投稿できない' do
        @product.municipality = ''
        @product.valid?
        expect(@product.errors.full_messages).to include ("Municipality id can't be blank")
      end

      it 'userが紐付いていないと保存できないこと' do
        @product.user = nil
        @product.valid?
        expect(@product.errors.full_messages).to include('User must exist')
      end
    end
  end
end