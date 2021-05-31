require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    context 'コメント投稿できるとき' do
      it '全ての情報を正しく入力すれば、コメント投稿できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメント投稿できないとき' do
      it 'textが空では投稿できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include ("Text can't be blank")
      end

      it 'userが紐付いていないと投稿できないこと' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end

      it 'productが紐付いていないと投稿できないこと' do
        @comment.product = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Product must exist')
      end
    end
  end
end