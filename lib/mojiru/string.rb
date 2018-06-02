# frozen_string_literal: true

require 'nkf'

module Mojiru
  module String
    UTF8_BOM = "\xEF\xBB\xBF"

    def zen_to_han
      NKF.nkf('-x -Z4 -W -w', self)
    end

    def han_to_zen
      NKF.nkf('-W -w', self).tr('0-9a-zA-Z', '０-９ａ-ｚＡ-Ｚ')
    end

    def hiragana
      NKF.nkf('--hiragana -W -w', self)
    end

    def katakana
      NKF.nkf('--katakana -W -w', self)
    end

    def normalize_zen_han
      NKF.nkf('-m0Z1 -W -w', self)
    end

    def strip_blank
      gsub(/\A[[:blank:]]+|[[:blank:]]+\Z/, '')
    end

    def prepend_utf8_bom
      UTF8_BOM + self
    end
  end
end
