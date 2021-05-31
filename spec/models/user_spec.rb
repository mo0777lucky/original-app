require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
    it '全ての情報を正しく入力すれば、新規登録できる' do
      expect(@user).to be_valid
    end
  end

    context '新規登録できないとき' do
    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Nickname can't be blank")
    end

    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Email can't be blank")
    end

    it 'emailに@がついていなければ登録できない' do
      @user.email = 'samplesample'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Email is invalid")
    end

    it 'passwordが空では登録できないこと' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password can't be blank")
    end

    it 'passwordが6文字以下であれば登録できないこと' do
      @user.password = '123456'
      @user.password_confirmation = '123456'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password is too short (minimum is 6 characters)")
    end

    it 'passwordが数字のみでは登録できないこと' do
      @user.password = 123456
      @user.password_confirmation = 123456
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password is invalid")
    end

    it 'passwordが英字のみでは登録できないこと' do
      @user.password = 'abcdef'
      @user.password_confirmation = 'abcdef'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password is invalid")
    end

    it 'passwordが全角では登録できないこと' do
      @user.password = 'AB１２３４'
      @user.password_confirmation = 'AB１２３４'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password is invalid")
    end

    it 'passwordとpassword_confirmationが一緒でなければ登録できないこと' do
      @user.password = 'mo1234'
      @user.password_confirmation = 'mo1235'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password confirmation doesn't match Password")
    end

    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include ("Email has already been taken")
    end

    it 'profileが空では登録できないこと' do
      @user.profile = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Profile can't be blank")
    end
  end
end
