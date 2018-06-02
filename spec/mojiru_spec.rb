RSpec.describe Mojiru do
  it "has a version number" do
    expect(Mojiru::VERSION).not_to be nil
  end

  describe 'using' do
    using Mojiru

    describe '#zen_to_han' do
      it '全角カタカナが半角カタカナになること' do
        expect('モジル'.zen_to_han).to eq 'ﾓｼﾞﾙ'
      end

      it '全角英数字が半角英数字になること' do
        expect('１２３ＡＢＣ'.zen_to_han).to eq '123ABC'
      end
    end

    describe '#han_to_zen' do
      it '半角カタカナが全角カタカナになること' do
        expect('ﾓｼﾞﾙ'.han_to_zen).to eq 'モジル'
      end

      it '半角英数字が全角英数字になること' do
        expect('123ABC'.han_to_zen).to eq '１２３ＡＢＣ'
      end
    end

    describe '#hiragana' do
      it 'カタカナがひらがなになること' do
        expect('ﾓｼﾞﾙ'.hiragana).to eq 'もじる'
        expect('モジル'.hiragana).to eq 'もじる'
      end
    end

    describe '#katakana' do
      it 'ひらがながカタカナになること' do
        expect('もじる'.katakana).to eq 'モジル'
      end
    end

    describe '#normalize_zen_han' do
      it '半角カタカナが全角カタカナになること' do
        expect('ﾓｼﾞﾙ'.normalize_zen_han).to eq 'モジル'
      end

      it '全角カタカナは変換されないこと' do
        expect('モジル'.normalize_zen_han).to eq 'モジル'
      end

      it '全角英数字が半角英数字になること' do
        expect('１２３ＡＢＣ'.normalize_zen_han).to eq '123ABC'
      end
    end

    describe '#strip_blank' do
      it '文字列先頭と末尾の半角空白と全角空白が取り除かれること' do
        expect(' 　Mojiru 　'.strip_blank).to eq 'Mojiru'
      end
    end

    describe '#prepend_utf8_bom' do
      it '文字列先頭にBOMが追加されること' do
        expect('Mojiru'.prepend_utf8_bom).to eq "\xEF\xBB\xBFMojiru"
      end
    end
  end
end
