; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144796 () Bool)

(assert start!144796)

(declare-fun b!1560215 () Bool)

(declare-fun b_free!41639 () Bool)

(declare-fun b_next!42343 () Bool)

(assert (=> b!1560215 (= b_free!41639 (not b_next!42343))))

(declare-fun tp!458826 () Bool)

(declare-fun b_and!108901 () Bool)

(assert (=> b!1560215 (= tp!458826 b_and!108901)))

(declare-fun b!1560183 () Bool)

(declare-fun b_free!41641 () Bool)

(declare-fun b_next!42345 () Bool)

(assert (=> b!1560183 (= b_free!41641 (not b_next!42345))))

(declare-fun tp!458822 () Bool)

(declare-fun b_and!108903 () Bool)

(assert (=> b!1560183 (= tp!458822 b_and!108903)))

(declare-fun b!1560193 () Bool)

(declare-fun b_free!41643 () Bool)

(declare-fun b_next!42347 () Bool)

(assert (=> b!1560193 (= b_free!41643 (not b_next!42347))))

(declare-fun tp!458813 () Bool)

(declare-fun b_and!108905 () Bool)

(assert (=> b!1560193 (= tp!458813 b_and!108905)))

(declare-fun b!1560205 () Bool)

(declare-fun b_free!41645 () Bool)

(declare-fun b_next!42349 () Bool)

(assert (=> b!1560205 (= b_free!41645 (not b_next!42349))))

(declare-fun tp!458806 () Bool)

(declare-fun b_and!108907 () Bool)

(assert (=> b!1560205 (= tp!458806 b_and!108907)))

(declare-fun b_free!41647 () Bool)

(declare-fun b_next!42351 () Bool)

(assert (=> b!1560205 (= b_free!41647 (not b_next!42351))))

(declare-fun tp!458824 () Bool)

(declare-fun b_and!108909 () Bool)

(assert (=> b!1560205 (= tp!458824 b_and!108909)))

(declare-fun b!1560198 () Bool)

(declare-fun b_free!41649 () Bool)

(declare-fun b_next!42353 () Bool)

(assert (=> b!1560198 (= b_free!41649 (not b_next!42353))))

(declare-fun tp!458820 () Bool)

(declare-fun b_and!108911 () Bool)

(assert (=> b!1560198 (= tp!458820 b_and!108911)))

(declare-fun b!1560188 () Bool)

(declare-fun b_free!41651 () Bool)

(declare-fun b_next!42355 () Bool)

(assert (=> b!1560188 (= b_free!41651 (not b_next!42355))))

(declare-fun tp!458809 () Bool)

(declare-fun b_and!108913 () Bool)

(assert (=> b!1560188 (= tp!458809 b_and!108913)))

(declare-fun b!1560211 () Bool)

(declare-fun b_free!41653 () Bool)

(declare-fun b_next!42357 () Bool)

(assert (=> b!1560211 (= b_free!41653 (not b_next!42357))))

(declare-fun tp!458807 () Bool)

(declare-fun b_and!108915 () Bool)

(assert (=> b!1560211 (= tp!458807 b_and!108915)))

(declare-fun b!1560224 () Bool)

(declare-fun e!1001727 () Bool)

(assert (=> b!1560224 (= e!1001727 true)))

(declare-fun b!1560223 () Bool)

(declare-fun e!1001726 () Bool)

(assert (=> b!1560223 (= e!1001726 e!1001727)))

(declare-fun b!1560207 () Bool)

(assert (=> b!1560207 e!1001726))

(assert (= b!1560223 b!1560224))

(assert (= b!1560207 b!1560223))

(declare-fun order!10005 () Int)

(declare-datatypes ((List!16986 0))(
  ( (Nil!16918) (Cons!16918 (h!22319 (_ BitVec 16)) (t!141505 List!16986)) )
))
(declare-datatypes ((TokenValue!3055 0))(
  ( (FloatLiteralValue!6110 (text!21830 List!16986)) (TokenValueExt!3054 (__x!11365 Int)) (Broken!15275 (value!94110 List!16986)) (Object!3122) (End!3055) (Def!3055) (Underscore!3055) (Match!3055) (Else!3055) (Error!3055) (Case!3055) (If!3055) (Extends!3055) (Abstract!3055) (Class!3055) (Val!3055) (DelimiterValue!6110 (del!3115 List!16986)) (KeywordValue!3061 (value!94111 List!16986)) (CommentValue!6110 (value!94112 List!16986)) (WhitespaceValue!6110 (value!94113 List!16986)) (IndentationValue!3055 (value!94114 List!16986)) (String!19562) (Int32!3055) (Broken!15276 (value!94115 List!16986)) (Boolean!3056) (Unit!26133) (OperatorValue!3058 (op!3115 List!16986)) (IdentifierValue!6110 (value!94116 List!16986)) (IdentifierValue!6111 (value!94117 List!16986)) (WhitespaceValue!6111 (value!94118 List!16986)) (True!6110) (False!6110) (Broken!15277 (value!94119 List!16986)) (Broken!15278 (value!94120 List!16986)) (True!6111) (RightBrace!3055) (RightBracket!3055) (Colon!3055) (Null!3055) (Comma!3055) (LeftBracket!3055) (False!6111) (LeftBrace!3055) (ImaginaryLiteralValue!3055 (text!21831 List!16986)) (StringLiteralValue!9165 (value!94121 List!16986)) (EOFValue!3055 (value!94122 List!16986)) (IdentValue!3055 (value!94123 List!16986)) (DelimiterValue!6111 (value!94124 List!16986)) (DedentValue!3055 (value!94125 List!16986)) (NewLineValue!3055 (value!94126 List!16986)) (IntegerValue!9165 (value!94127 (_ BitVec 32)) (text!21832 List!16986)) (IntegerValue!9166 (value!94128 Int) (text!21833 List!16986)) (Times!3055) (Or!3055) (Equal!3055) (Minus!3055) (Broken!15279 (value!94129 List!16986)) (And!3055) (Div!3055) (LessEqual!3055) (Mod!3055) (Concat!7348) (Not!3055) (Plus!3055) (SpaceValue!3055 (value!94130 List!16986)) (IntegerValue!9167 (value!94131 Int) (text!21834 List!16986)) (StringLiteralValue!9166 (text!21835 List!16986)) (FloatLiteralValue!6111 (text!21836 List!16986)) (BytesLiteralValue!3055 (value!94132 List!16986)) (CommentValue!6111 (value!94133 List!16986)) (StringLiteralValue!9167 (value!94134 List!16986)) (ErrorTokenValue!3055 (msg!3116 List!16986)) )
))
(declare-datatypes ((C!8764 0))(
  ( (C!8765 (val!4954 Int)) )
))
(declare-datatypes ((List!16987 0))(
  ( (Nil!16919) (Cons!16919 (h!22320 C!8764) (t!141506 List!16987)) )
))
(declare-datatypes ((IArray!11171 0))(
  ( (IArray!11172 (innerList!5643 List!16987)) )
))
(declare-datatypes ((Conc!5583 0))(
  ( (Node!5583 (left!13728 Conc!5583) (right!14058 Conc!5583) (csize!11396 Int) (cheight!5794 Int)) (Leaf!8275 (xs!8383 IArray!11171) (csize!11397 Int)) (Empty!5583) )
))
(declare-datatypes ((BalanceConc!11108 0))(
  ( (BalanceConc!11109 (c!253097 Conc!5583)) )
))
(declare-datatypes ((Regex!4293 0))(
  ( (ElementMatch!4293 (c!253098 C!8764)) (Concat!7349 (regOne!9098 Regex!4293) (regTwo!9098 Regex!4293)) (EmptyExpr!4293) (Star!4293 (reg!4622 Regex!4293)) (EmptyLang!4293) (Union!4293 (regOne!9099 Regex!4293) (regTwo!9099 Regex!4293)) )
))
(declare-datatypes ((String!19563 0))(
  ( (String!19564 (value!94135 String)) )
))
(declare-datatypes ((TokenValueInjection!5770 0))(
  ( (TokenValueInjection!5771 (toValue!4343 Int) (toChars!4202 Int)) )
))
(declare-datatypes ((Rule!5730 0))(
  ( (Rule!5731 (regex!2965 Regex!4293) (tag!3229 String!19563) (isSeparator!2965 Bool) (transformation!2965 TokenValueInjection!5770)) )
))
(declare-fun rule!240 () Rule!5730)

(declare-fun order!10007 () Int)

(declare-fun lambda!66015 () Int)

(declare-fun dynLambda!7527 (Int Int) Int)

(declare-fun dynLambda!7528 (Int Int) Int)

(assert (=> b!1560224 (< (dynLambda!7527 order!10005 (toValue!4343 (transformation!2965 rule!240))) (dynLambda!7528 order!10007 lambda!66015))))

(declare-fun order!10009 () Int)

(declare-fun dynLambda!7529 (Int Int) Int)

(assert (=> b!1560224 (< (dynLambda!7529 order!10009 (toChars!4202 (transformation!2965 rule!240))) (dynLambda!7528 order!10007 lambda!66015))))

(declare-fun b!1560180 () Bool)

(declare-fun e!1001716 () Bool)

(declare-fun e!1001711 () Bool)

(declare-datatypes ((List!16988 0))(
  ( (Nil!16920) (Cons!16920 (h!22321 Regex!4293) (t!141507 List!16988)) )
))
(declare-datatypes ((Context!1622 0))(
  ( (Context!1623 (exprs!1311 List!16988)) )
))
(declare-datatypes ((tuple3!1854 0))(
  ( (tuple3!1855 (_1!9641 Regex!4293) (_2!9641 Context!1622) (_3!1387 C!8764)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16508 0))(
  ( (tuple2!16509 (_1!9642 tuple3!1854) (_2!9642 (InoxSet Context!1622))) )
))
(declare-datatypes ((List!16989 0))(
  ( (Nil!16921) (Cons!16921 (h!22322 tuple2!16508) (t!141508 List!16989)) )
))
(declare-datatypes ((array!6328 0))(
  ( (array!6329 (arr!2815 (Array (_ BitVec 32) (_ BitVec 64))) (size!13724 (_ BitVec 32))) )
))
(declare-datatypes ((array!6330 0))(
  ( (array!6331 (arr!2816 (Array (_ BitVec 32) List!16989)) (size!13725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3694 0))(
  ( (LongMapFixedSize!3695 (defaultEntry!2207 Int) (mask!5082 (_ BitVec 32)) (extraKeys!2094 (_ BitVec 32)) (zeroValue!2104 List!16989) (minValue!2104 List!16989) (_size!3775 (_ BitVec 32)) (_keys!2141 array!6328) (_values!2126 array!6330) (_vacant!1908 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7273 0))(
  ( (Cell!7274 (v!23783 LongMapFixedSize!3694)) )
))
(declare-datatypes ((MutLongMap!1847 0))(
  ( (LongMap!1847 (underlying!3903 Cell!7273)) (MutLongMapExt!1846 (__x!11366 Int)) )
))
(declare-fun lt!540325 () MutLongMap!1847)

(get-info :version)

(assert (=> b!1560180 (= e!1001716 (and e!1001711 ((_ is LongMap!1847) lt!540325)))))

(declare-datatypes ((Cell!7275 0))(
  ( (Cell!7276 (v!23784 MutLongMap!1847)) )
))
(declare-datatypes ((Hashable!1791 0))(
  ( (HashableExt!1790 (__x!11367 Int)) )
))
(declare-datatypes ((MutableMap!1791 0))(
  ( (MutableMapExt!1790 (__x!11368 Int)) (HashMap!1791 (underlying!3904 Cell!7275) (hashF!3710 Hashable!1791) (_size!3776 (_ BitVec 32)) (defaultValue!1951 Int)) )
))
(declare-datatypes ((CacheDown!1098 0))(
  ( (CacheDown!1099 (cache!2172 MutableMap!1791)) )
))
(declare-fun cacheDown!768 () CacheDown!1098)

(assert (=> b!1560180 (= lt!540325 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))

(declare-fun b!1560181 () Bool)

(declare-fun e!1001704 () Bool)

(declare-fun tp!458817 () Bool)

(declare-fun mapRes!8596 () Bool)

(assert (=> b!1560181 (= e!1001704 (and tp!458817 mapRes!8596))))

(declare-fun condMapEmpty!8595 () Bool)

(declare-datatypes ((tuple2!16510 0))(
  ( (tuple2!16511 (_1!9643 Context!1622) (_2!9643 C!8764)) )
))
(declare-datatypes ((tuple2!16512 0))(
  ( (tuple2!16513 (_1!9644 tuple2!16510) (_2!9644 (InoxSet Context!1622))) )
))
(declare-datatypes ((List!16990 0))(
  ( (Nil!16922) (Cons!16922 (h!22323 tuple2!16512) (t!141509 List!16990)) )
))
(declare-datatypes ((array!6332 0))(
  ( (array!6333 (arr!2817 (Array (_ BitVec 32) List!16990)) (size!13726 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1792 0))(
  ( (HashableExt!1791 (__x!11369 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3696 0))(
  ( (LongMapFixedSize!3697 (defaultEntry!2208 Int) (mask!5083 (_ BitVec 32)) (extraKeys!2095 (_ BitVec 32)) (zeroValue!2105 List!16990) (minValue!2105 List!16990) (_size!3777 (_ BitVec 32)) (_keys!2142 array!6328) (_values!2127 array!6332) (_vacant!1909 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7277 0))(
  ( (Cell!7278 (v!23785 LongMapFixedSize!3696)) )
))
(declare-datatypes ((MutLongMap!1848 0))(
  ( (LongMap!1848 (underlying!3905 Cell!7277)) (MutLongMapExt!1847 (__x!11370 Int)) )
))
(declare-datatypes ((Cell!7279 0))(
  ( (Cell!7280 (v!23786 MutLongMap!1848)) )
))
(declare-datatypes ((MutableMap!1792 0))(
  ( (MutableMapExt!1791 (__x!11371 Int)) (HashMap!1792 (underlying!3906 Cell!7279) (hashF!3711 Hashable!1792) (_size!3778 (_ BitVec 32)) (defaultValue!1952 Int)) )
))
(declare-datatypes ((CacheUp!1092 0))(
  ( (CacheUp!1093 (cache!2173 MutableMap!1792)) )
))
(declare-fun cacheUp!755 () CacheUp!1092)

(declare-fun mapDefault!8596 () List!16990)

(assert (=> b!1560181 (= condMapEmpty!8595 (= (arr!2817 (_values!2127 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16990)) mapDefault!8596)))))

(declare-fun b!1560182 () Bool)

(declare-fun e!1001707 () Bool)

(declare-fun e!1001721 () Bool)

(assert (=> b!1560182 (= e!1001707 e!1001721)))

(declare-fun e!1001688 () Bool)

(declare-fun e!1001701 () Bool)

(assert (=> b!1560183 (= e!1001688 (and e!1001701 tp!458822))))

(declare-datatypes ((tuple3!1856 0))(
  ( (tuple3!1857 (_1!9645 (InoxSet Context!1622)) (_2!9645 Int) (_3!1388 Int)) )
))
(declare-datatypes ((tuple2!16514 0))(
  ( (tuple2!16515 (_1!9646 tuple3!1856) (_2!9646 Int)) )
))
(declare-datatypes ((List!16991 0))(
  ( (Nil!16923) (Cons!16923 (h!22324 tuple2!16514) (t!141510 List!16991)) )
))
(declare-datatypes ((array!6334 0))(
  ( (array!6335 (arr!2818 (Array (_ BitVec 32) List!16991)) (size!13727 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3698 0))(
  ( (LongMapFixedSize!3699 (defaultEntry!2209 Int) (mask!5084 (_ BitVec 32)) (extraKeys!2096 (_ BitVec 32)) (zeroValue!2106 List!16991) (minValue!2106 List!16991) (_size!3779 (_ BitVec 32)) (_keys!2143 array!6328) (_values!2128 array!6334) (_vacant!1910 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7281 0))(
  ( (Cell!7282 (v!23787 LongMapFixedSize!3698)) )
))
(declare-datatypes ((tuple2!16516 0))(
  ( (tuple2!16517 (_1!9647 BalanceConc!11108) (_2!9647 BalanceConc!11108)) )
))
(declare-datatypes ((MutLongMap!1849 0))(
  ( (LongMap!1849 (underlying!3907 Cell!7281)) (MutLongMapExt!1848 (__x!11372 Int)) )
))
(declare-datatypes ((Cell!7283 0))(
  ( (Cell!7284 (v!23788 MutLongMap!1849)) )
))
(declare-datatypes ((Hashable!1793 0))(
  ( (HashableExt!1792 (__x!11373 Int)) )
))
(declare-datatypes ((MutableMap!1793 0))(
  ( (MutableMapExt!1792 (__x!11374 Int)) (HashMap!1793 (underlying!3908 Cell!7283) (hashF!3712 Hashable!1793) (_size!3780 (_ BitVec 32)) (defaultValue!1953 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!520 0))(
  ( (CacheFurthestNullable!521 (cache!2174 MutableMap!1793) (totalInput!2494 BalanceConc!11108)) )
))
(declare-datatypes ((tuple4!920 0))(
  ( (tuple4!921 (_1!9648 tuple2!16516) (_2!9648 CacheUp!1092) (_3!1389 CacheDown!1098) (_4!460 CacheFurthestNullable!520)) )
))
(declare-fun lt!540326 () tuple4!920)

(declare-fun e!1001695 () Bool)

(declare-fun b!1560184 () Bool)

(declare-fun lt!540331 () List!16987)

(declare-datatypes ((Token!5500 0))(
  ( (Token!5501 (value!94136 TokenValue!3055) (rule!4750 Rule!5730) (size!13728 Int) (originalCharacters!3781 List!16987)) )
))
(declare-fun inv!22217 (Token!5500) Bool)

(declare-fun apply!4120 (TokenValueInjection!5770 BalanceConc!11108) TokenValue!3055)

(declare-fun size!13729 (BalanceConc!11108) Int)

(assert (=> b!1560184 (= e!1001695 (inv!22217 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))))

(declare-datatypes ((Unit!26134 0))(
  ( (Unit!26135) )
))
(declare-fun lt!540329 () Unit!26134)

(declare-fun ForallOf!221 (Int BalanceConc!11108) Unit!26134)

(declare-fun seqFromList!1784 (List!16987) BalanceConc!11108)

(assert (=> b!1560184 (= lt!540329 (ForallOf!221 lambda!66015 (seqFromList!1784 lt!540331)))))

(declare-fun list!6514 (BalanceConc!11108) List!16987)

(assert (=> b!1560184 (= lt!540331 (list!6514 (_1!9647 (_1!9648 lt!540326))))))

(declare-fun lt!540334 () Unit!26134)

(assert (=> b!1560184 (= lt!540334 (ForallOf!221 lambda!66015 (_1!9647 (_1!9648 lt!540326))))))

(declare-fun b!1560185 () Bool)

(declare-fun e!1001713 () Bool)

(declare-fun input!1676 () BalanceConc!11108)

(declare-fun tp!458821 () Bool)

(declare-fun inv!22218 (Conc!5583) Bool)

(assert (=> b!1560185 (= e!1001713 (and (inv!22218 (c!253097 input!1676)) tp!458821))))

(declare-fun mapIsEmpty!8595 () Bool)

(declare-fun mapRes!8595 () Bool)

(assert (=> mapIsEmpty!8595 mapRes!8595))

(declare-fun b!1560186 () Bool)

(declare-fun e!1001697 () Bool)

(declare-datatypes ((tuple2!16518 0))(
  ( (tuple2!16519 (_1!9649 List!16987) (_2!9649 List!16987)) )
))
(declare-fun lt!540333 () tuple2!16518)

(declare-fun matchR!1887 (Regex!4293 List!16987) Bool)

(assert (=> b!1560186 (= e!1001697 (matchR!1887 (regex!2965 rule!240) (_1!9649 lt!540333)))))

(declare-fun b!1560187 () Bool)

(declare-fun e!1001700 () Bool)

(assert (=> b!1560187 (= e!1001711 e!1001700)))

(declare-fun tp!458814 () Bool)

(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!520)

(declare-fun e!1001699 () Bool)

(declare-fun tp!458815 () Bool)

(declare-fun array_inv!2025 (array!6328) Bool)

(declare-fun array_inv!2026 (array!6334) Bool)

(assert (=> b!1560188 (= e!1001721 (and tp!458809 tp!458814 tp!458815 (array_inv!2025 (_keys!2143 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) (array_inv!2026 (_values!2128 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) e!1001699))))

(declare-fun b!1560189 () Bool)

(declare-fun e!1001689 () Bool)

(declare-fun e!1001712 () Bool)

(assert (=> b!1560189 (= e!1001689 e!1001712)))

(declare-fun res!695813 () Bool)

(declare-fun e!1001691 () Bool)

(assert (=> start!144796 (=> (not res!695813) (not e!1001691))))

(declare-datatypes ((LexerInterface!2598 0))(
  ( (LexerInterfaceExt!2595 (__x!11375 Int)) (Lexer!2596) )
))
(declare-fun thiss!16438 () LexerInterface!2598)

(assert (=> start!144796 (= res!695813 ((_ is Lexer!2596) thiss!16438))))

(assert (=> start!144796 e!1001691))

(declare-fun totalInput!568 () BalanceConc!11108)

(declare-fun e!1001719 () Bool)

(declare-fun inv!22219 (BalanceConc!11108) Bool)

(assert (=> start!144796 (and (inv!22219 totalInput!568) e!1001719)))

(declare-fun e!1001708 () Bool)

(declare-fun inv!22220 (CacheUp!1092) Bool)

(assert (=> start!144796 (and (inv!22220 cacheUp!755) e!1001708)))

(declare-fun e!1001705 () Bool)

(declare-fun inv!22221 (CacheFurthestNullable!520) Bool)

(assert (=> start!144796 (and (inv!22221 cacheFurthestNullable!103) e!1001705)))

(assert (=> start!144796 (and (inv!22219 input!1676) e!1001713)))

(declare-fun e!1001690 () Bool)

(assert (=> start!144796 e!1001690))

(declare-fun inv!22222 (CacheDown!1098) Bool)

(assert (=> start!144796 (and (inv!22222 cacheDown!768) e!1001689)))

(assert (=> start!144796 true))

(declare-fun mapNonEmpty!8595 () Bool)

(declare-fun tp!458808 () Bool)

(declare-fun tp!458827 () Bool)

(assert (=> mapNonEmpty!8595 (= mapRes!8595 (and tp!458808 tp!458827))))

(declare-fun mapRest!8596 () (Array (_ BitVec 32) List!16991))

(declare-fun mapValue!8595 () List!16991)

(declare-fun mapKey!8595 () (_ BitVec 32))

(assert (=> mapNonEmpty!8595 (= (arr!2818 (_values!2128 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) (store mapRest!8596 mapKey!8595 mapValue!8595))))

(declare-fun b!1560190 () Bool)

(declare-fun e!1001720 () Bool)

(declare-fun e!1001706 () Bool)

(declare-fun lt!540332 () MutLongMap!1849)

(assert (=> b!1560190 (= e!1001720 (and e!1001706 ((_ is LongMap!1849) lt!540332)))))

(assert (=> b!1560190 (= lt!540332 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))

(declare-fun b!1560191 () Bool)

(assert (=> b!1560191 (= e!1001706 e!1001707)))

(declare-fun b!1560192 () Bool)

(declare-fun e!1001717 () Bool)

(assert (=> b!1560192 (= e!1001717 (not e!1001695))))

(declare-fun res!695816 () Bool)

(assert (=> b!1560192 (=> res!695816 e!1001695)))

(declare-fun semiInverseModEq!1123 (Int Int) Bool)

(assert (=> b!1560192 (= res!695816 (not (semiInverseModEq!1123 (toChars!4202 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240)))))))

(declare-fun lt!540330 () Unit!26134)

(declare-fun lemmaInv!436 (TokenValueInjection!5770) Unit!26134)

(assert (=> b!1560192 (= lt!540330 (lemmaInv!436 (transformation!2965 rule!240)))))

(assert (=> b!1560192 e!1001697))

(declare-fun res!695808 () Bool)

(assert (=> b!1560192 (=> res!695808 e!1001697)))

(declare-fun isEmpty!10157 (List!16987) Bool)

(assert (=> b!1560192 (= res!695808 (isEmpty!10157 (_1!9649 lt!540333)))))

(declare-fun lt!540335 () List!16987)

(declare-fun findLongestMatchInner!342 (Regex!4293 List!16987 Int List!16987 List!16987 Int) tuple2!16518)

(declare-fun size!13730 (List!16987) Int)

(assert (=> b!1560192 (= lt!540333 (findLongestMatchInner!342 (regex!2965 rule!240) Nil!16919 (size!13730 Nil!16919) lt!540335 lt!540335 (size!13730 lt!540335)))))

(declare-fun lt!540327 () Unit!26134)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!326 (Regex!4293 List!16987) Unit!26134)

(assert (=> b!1560192 (= lt!540327 (longestMatchIsAcceptedByMatchOrIsEmpty!326 (regex!2965 rule!240) lt!540335))))

(declare-fun e!1001687 () Bool)

(declare-fun tp!458804 () Bool)

(declare-fun tp!458818 () Bool)

(declare-fun array_inv!2027 (array!6332) Bool)

(assert (=> b!1560193 (= e!1001687 (and tp!458813 tp!458818 tp!458804 (array_inv!2025 (_keys!2142 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) (array_inv!2027 (_values!2127 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) e!1001704))))

(declare-fun b!1560194 () Bool)

(declare-fun res!695811 () Bool)

(assert (=> b!1560194 (=> (not res!695811) (not e!1001691))))

(declare-fun valid!1480 (CacheFurthestNullable!520) Bool)

(assert (=> b!1560194 (= res!695811 (valid!1480 cacheFurthestNullable!103))))

(declare-fun b!1560195 () Bool)

(declare-fun tp!458823 () Bool)

(assert (=> b!1560195 (= e!1001719 (and (inv!22218 (c!253097 totalInput!568)) tp!458823))))

(declare-fun b!1560196 () Bool)

(declare-fun res!695817 () Bool)

(assert (=> b!1560196 (=> (not res!695817) (not e!1001691))))

(declare-fun valid!1481 (CacheUp!1092) Bool)

(assert (=> b!1560196 (= res!695817 (valid!1481 cacheUp!755))))

(declare-fun b!1560197 () Bool)

(declare-fun e!1001714 () Bool)

(declare-fun e!1001715 () Bool)

(assert (=> b!1560197 (= e!1001705 (and e!1001715 (inv!22219 (totalInput!2494 cacheFurthestNullable!103)) e!1001714))))

(assert (=> b!1560198 (= e!1001712 (and e!1001716 tp!458820))))

(declare-fun b!1560199 () Bool)

(declare-fun tp!458811 () Bool)

(assert (=> b!1560199 (= e!1001714 (and (inv!22218 (c!253097 (totalInput!2494 cacheFurthestNullable!103))) tp!458811))))

(declare-fun mapNonEmpty!8596 () Bool)

(declare-fun mapRes!8597 () Bool)

(declare-fun tp!458816 () Bool)

(declare-fun tp!458830 () Bool)

(assert (=> mapNonEmpty!8596 (= mapRes!8597 (and tp!458816 tp!458830))))

(declare-fun mapKey!8596 () (_ BitVec 32))

(declare-fun mapRest!8597 () (Array (_ BitVec 32) List!16989))

(declare-fun mapValue!8597 () List!16989)

(assert (=> mapNonEmpty!8596 (= (arr!2816 (_values!2126 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) (store mapRest!8597 mapKey!8596 mapValue!8597))))

(declare-fun b!1560200 () Bool)

(declare-fun res!695809 () Bool)

(declare-fun e!1001698 () Bool)

(assert (=> b!1560200 (=> (not res!695809) (not e!1001698))))

(assert (=> b!1560200 (= res!695809 (= (totalInput!2494 cacheFurthestNullable!103) totalInput!568))))

(declare-fun mapNonEmpty!8597 () Bool)

(declare-fun tp!458819 () Bool)

(declare-fun tp!458825 () Bool)

(assert (=> mapNonEmpty!8597 (= mapRes!8596 (and tp!458819 tp!458825))))

(declare-fun mapValue!8596 () List!16990)

(declare-fun mapKey!8597 () (_ BitVec 32))

(declare-fun mapRest!8595 () (Array (_ BitVec 32) List!16990))

(assert (=> mapNonEmpty!8597 (= (arr!2817 (_values!2127 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) (store mapRest!8595 mapKey!8597 mapValue!8596))))

(declare-fun b!1560201 () Bool)

(declare-fun res!695807 () Bool)

(assert (=> b!1560201 (=> (not res!695807) (not e!1001691))))

(declare-fun ruleValid!695 (LexerInterface!2598 Rule!5730) Bool)

(assert (=> b!1560201 (= res!695807 (ruleValid!695 thiss!16438 rule!240))))

(declare-fun b!1560202 () Bool)

(declare-fun e!1001693 () Bool)

(declare-fun lt!540328 () MutLongMap!1848)

(assert (=> b!1560202 (= e!1001701 (and e!1001693 ((_ is LongMap!1848) lt!540328)))))

(assert (=> b!1560202 (= lt!540328 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))

(declare-fun b!1560203 () Bool)

(declare-fun tp!458810 () Bool)

(assert (=> b!1560203 (= e!1001699 (and tp!458810 mapRes!8595))))

(declare-fun condMapEmpty!8597 () Bool)

(declare-fun mapDefault!8597 () List!16991)

(assert (=> b!1560203 (= condMapEmpty!8597 (= (arr!2818 (_values!2128 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16991)) mapDefault!8597)))))

(declare-fun b!1560204 () Bool)

(assert (=> b!1560204 (= e!1001698 e!1001717)))

(declare-fun res!695810 () Bool)

(assert (=> b!1560204 (=> (not res!695810) (not e!1001717))))

(declare-fun isEmpty!10158 (BalanceConc!11108) Bool)

(assert (=> b!1560204 (= res!695810 (not (isEmpty!10158 (_1!9647 (_1!9648 lt!540326)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!61 (Regex!4293 BalanceConc!11108 BalanceConc!11108 CacheUp!1092 CacheDown!1098 CacheFurthestNullable!520) tuple4!920)

(assert (=> b!1560204 (= lt!540326 (findLongestMatchWithZipperSequenceV3Mem!61 (regex!2965 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun mapIsEmpty!8596 () Bool)

(assert (=> mapIsEmpty!8596 mapRes!8597))

(declare-fun e!1001694 () Bool)

(assert (=> b!1560205 (= e!1001694 (and tp!458806 tp!458824))))

(declare-fun mapIsEmpty!8597 () Bool)

(assert (=> mapIsEmpty!8597 mapRes!8596))

(declare-fun b!1560206 () Bool)

(declare-fun e!1001692 () Bool)

(assert (=> b!1560206 (= e!1001693 e!1001692)))

(declare-fun res!695814 () Bool)

(assert (=> b!1560207 (=> res!695814 e!1001695)))

(declare-fun Forall!618 (Int) Bool)

(assert (=> b!1560207 (= res!695814 (not (Forall!618 lambda!66015)))))

(declare-fun b!1560208 () Bool)

(assert (=> b!1560208 (= e!1001692 e!1001687)))

(declare-fun b!1560209 () Bool)

(assert (=> b!1560209 (= e!1001708 e!1001688)))

(declare-fun b!1560210 () Bool)

(assert (=> b!1560210 (= e!1001691 e!1001698)))

(declare-fun res!695815 () Bool)

(assert (=> b!1560210 (=> (not res!695815) (not e!1001698))))

(declare-fun isSuffix!386 (List!16987 List!16987) Bool)

(assert (=> b!1560210 (= res!695815 (isSuffix!386 lt!540335 (list!6514 totalInput!568)))))

(assert (=> b!1560210 (= lt!540335 (list!6514 input!1676))))

(assert (=> b!1560211 (= e!1001715 (and e!1001720 tp!458807))))

(declare-fun b!1560212 () Bool)

(declare-fun res!695812 () Bool)

(assert (=> b!1560212 (=> (not res!695812) (not e!1001691))))

(declare-fun valid!1482 (CacheDown!1098) Bool)

(assert (=> b!1560212 (= res!695812 (valid!1482 cacheDown!768))))

(declare-fun b!1560213 () Bool)

(declare-fun e!1001703 () Bool)

(declare-fun tp!458829 () Bool)

(assert (=> b!1560213 (= e!1001703 (and tp!458829 mapRes!8597))))

(declare-fun condMapEmpty!8596 () Bool)

(declare-fun mapDefault!8595 () List!16989)

(assert (=> b!1560213 (= condMapEmpty!8596 (= (arr!2816 (_values!2126 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16989)) mapDefault!8595)))))

(declare-fun b!1560214 () Bool)

(declare-fun e!1001710 () Bool)

(assert (=> b!1560214 (= e!1001700 e!1001710)))

(declare-fun tp!458812 () Bool)

(declare-fun tp!458805 () Bool)

(declare-fun array_inv!2028 (array!6330) Bool)

(assert (=> b!1560215 (= e!1001710 (and tp!458826 tp!458805 tp!458812 (array_inv!2025 (_keys!2141 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) (array_inv!2028 (_values!2126 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) e!1001703))))

(declare-fun tp!458828 () Bool)

(declare-fun b!1560216 () Bool)

(declare-fun inv!22215 (String!19563) Bool)

(declare-fun inv!22223 (TokenValueInjection!5770) Bool)

(assert (=> b!1560216 (= e!1001690 (and tp!458828 (inv!22215 (tag!3229 rule!240)) (inv!22223 (transformation!2965 rule!240)) e!1001694))))

(assert (= (and start!144796 res!695813) b!1560201))

(assert (= (and b!1560201 res!695807) b!1560196))

(assert (= (and b!1560196 res!695817) b!1560212))

(assert (= (and b!1560212 res!695812) b!1560194))

(assert (= (and b!1560194 res!695811) b!1560210))

(assert (= (and b!1560210 res!695815) b!1560200))

(assert (= (and b!1560200 res!695809) b!1560204))

(assert (= (and b!1560204 res!695810) b!1560192))

(assert (= (and b!1560192 (not res!695808)) b!1560186))

(assert (= (and b!1560192 (not res!695816)) b!1560207))

(assert (= (and b!1560207 (not res!695814)) b!1560184))

(assert (= start!144796 b!1560195))

(assert (= (and b!1560181 condMapEmpty!8595) mapIsEmpty!8597))

(assert (= (and b!1560181 (not condMapEmpty!8595)) mapNonEmpty!8597))

(assert (= b!1560193 b!1560181))

(assert (= b!1560208 b!1560193))

(assert (= b!1560206 b!1560208))

(assert (= (and b!1560202 ((_ is LongMap!1848) (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))) b!1560206))

(assert (= b!1560183 b!1560202))

(assert (= (and b!1560209 ((_ is HashMap!1792) (cache!2173 cacheUp!755))) b!1560183))

(assert (= start!144796 b!1560209))

(assert (= (and b!1560203 condMapEmpty!8597) mapIsEmpty!8595))

(assert (= (and b!1560203 (not condMapEmpty!8597)) mapNonEmpty!8595))

(assert (= b!1560188 b!1560203))

(assert (= b!1560182 b!1560188))

(assert (= b!1560191 b!1560182))

(assert (= (and b!1560190 ((_ is LongMap!1849) (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))) b!1560191))

(assert (= b!1560211 b!1560190))

(assert (= (and b!1560197 ((_ is HashMap!1793) (cache!2174 cacheFurthestNullable!103))) b!1560211))

(assert (= b!1560197 b!1560199))

(assert (= start!144796 b!1560197))

(assert (= start!144796 b!1560185))

(assert (= b!1560216 b!1560205))

(assert (= start!144796 b!1560216))

(assert (= (and b!1560213 condMapEmpty!8596) mapIsEmpty!8596))

(assert (= (and b!1560213 (not condMapEmpty!8596)) mapNonEmpty!8596))

(assert (= b!1560215 b!1560213))

(assert (= b!1560214 b!1560215))

(assert (= b!1560187 b!1560214))

(assert (= (and b!1560180 ((_ is LongMap!1847) (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))) b!1560187))

(assert (= b!1560198 b!1560180))

(assert (= (and b!1560189 ((_ is HashMap!1791) (cache!2172 cacheDown!768))) b!1560198))

(assert (= start!144796 b!1560189))

(declare-fun m!1831824 () Bool)

(assert (=> b!1560199 m!1831824))

(declare-fun m!1831826 () Bool)

(assert (=> b!1560193 m!1831826))

(declare-fun m!1831828 () Bool)

(assert (=> b!1560193 m!1831828))

(declare-fun m!1831830 () Bool)

(assert (=> b!1560215 m!1831830))

(declare-fun m!1831832 () Bool)

(assert (=> b!1560215 m!1831832))

(declare-fun m!1831834 () Bool)

(assert (=> b!1560185 m!1831834))

(declare-fun m!1831836 () Bool)

(assert (=> mapNonEmpty!8597 m!1831836))

(declare-fun m!1831838 () Bool)

(assert (=> mapNonEmpty!8595 m!1831838))

(declare-fun m!1831840 () Bool)

(assert (=> b!1560186 m!1831840))

(declare-fun m!1831842 () Bool)

(assert (=> b!1560184 m!1831842))

(declare-fun m!1831844 () Bool)

(assert (=> b!1560184 m!1831844))

(declare-fun m!1831846 () Bool)

(assert (=> b!1560184 m!1831846))

(declare-fun m!1831848 () Bool)

(assert (=> b!1560184 m!1831848))

(declare-fun m!1831850 () Bool)

(assert (=> b!1560184 m!1831850))

(declare-fun m!1831852 () Bool)

(assert (=> b!1560184 m!1831852))

(assert (=> b!1560184 m!1831848))

(declare-fun m!1831854 () Bool)

(assert (=> b!1560184 m!1831854))

(declare-fun m!1831856 () Bool)

(assert (=> b!1560194 m!1831856))

(declare-fun m!1831858 () Bool)

(assert (=> b!1560196 m!1831858))

(declare-fun m!1831860 () Bool)

(assert (=> start!144796 m!1831860))

(declare-fun m!1831862 () Bool)

(assert (=> start!144796 m!1831862))

(declare-fun m!1831864 () Bool)

(assert (=> start!144796 m!1831864))

(declare-fun m!1831866 () Bool)

(assert (=> start!144796 m!1831866))

(declare-fun m!1831868 () Bool)

(assert (=> start!144796 m!1831868))

(declare-fun m!1831870 () Bool)

(assert (=> b!1560210 m!1831870))

(assert (=> b!1560210 m!1831870))

(declare-fun m!1831872 () Bool)

(assert (=> b!1560210 m!1831872))

(declare-fun m!1831874 () Bool)

(assert (=> b!1560210 m!1831874))

(declare-fun m!1831876 () Bool)

(assert (=> b!1560195 m!1831876))

(declare-fun m!1831878 () Bool)

(assert (=> b!1560188 m!1831878))

(declare-fun m!1831880 () Bool)

(assert (=> b!1560188 m!1831880))

(declare-fun m!1831882 () Bool)

(assert (=> b!1560207 m!1831882))

(declare-fun m!1831884 () Bool)

(assert (=> b!1560212 m!1831884))

(declare-fun m!1831886 () Bool)

(assert (=> mapNonEmpty!8596 m!1831886))

(declare-fun m!1831888 () Bool)

(assert (=> b!1560201 m!1831888))

(declare-fun m!1831890 () Bool)

(assert (=> b!1560197 m!1831890))

(declare-fun m!1831892 () Bool)

(assert (=> b!1560204 m!1831892))

(declare-fun m!1831894 () Bool)

(assert (=> b!1560204 m!1831894))

(declare-fun m!1831896 () Bool)

(assert (=> b!1560216 m!1831896))

(declare-fun m!1831898 () Bool)

(assert (=> b!1560216 m!1831898))

(declare-fun m!1831900 () Bool)

(assert (=> b!1560192 m!1831900))

(declare-fun m!1831902 () Bool)

(assert (=> b!1560192 m!1831902))

(declare-fun m!1831904 () Bool)

(assert (=> b!1560192 m!1831904))

(declare-fun m!1831906 () Bool)

(assert (=> b!1560192 m!1831906))

(declare-fun m!1831908 () Bool)

(assert (=> b!1560192 m!1831908))

(declare-fun m!1831910 () Bool)

(assert (=> b!1560192 m!1831910))

(assert (=> b!1560192 m!1831906))

(assert (=> b!1560192 m!1831908))

(declare-fun m!1831912 () Bool)

(assert (=> b!1560192 m!1831912))

(check-sat (not b_next!42343) (not b!1560196) (not b!1560203) (not b!1560199) (not b!1560188) (not b!1560197) (not b!1560193) b_and!108909 (not b_next!42349) (not b!1560213) (not b!1560210) (not start!144796) (not b_next!42351) (not b!1560186) b_and!108907 (not b!1560212) (not b_next!42357) b_and!108905 (not b!1560192) (not b!1560204) (not b!1560194) (not b!1560185) (not b!1560215) (not b_next!42353) (not mapNonEmpty!8596) (not b!1560195) (not mapNonEmpty!8595) (not b!1560207) (not b!1560201) (not b_next!42347) b_and!108901 (not b_next!42355) (not b!1560184) (not b_next!42345) (not mapNonEmpty!8597) b_and!108911 (not b!1560181) b_and!108913 (not b!1560216) b_and!108903 b_and!108915)
(check-sat (not b_next!42343) (not b_next!42351) b_and!108907 (not b_next!42357) b_and!108905 b_and!108909 (not b_next!42353) (not b_next!42349) (not b_next!42345) b_and!108911 b_and!108913 (not b_next!42347) b_and!108901 (not b_next!42355) b_and!108903 b_and!108915)
(get-model)

(declare-fun d!462190 () Bool)

(declare-fun c!253101 () Bool)

(assert (=> d!462190 (= c!253101 ((_ is Node!5583) (c!253097 totalInput!568)))))

(declare-fun e!1001732 () Bool)

(assert (=> d!462190 (= (inv!22218 (c!253097 totalInput!568)) e!1001732)))

(declare-fun b!1560231 () Bool)

(declare-fun inv!22224 (Conc!5583) Bool)

(assert (=> b!1560231 (= e!1001732 (inv!22224 (c!253097 totalInput!568)))))

(declare-fun b!1560232 () Bool)

(declare-fun e!1001733 () Bool)

(assert (=> b!1560232 (= e!1001732 e!1001733)))

(declare-fun res!695822 () Bool)

(assert (=> b!1560232 (= res!695822 (not ((_ is Leaf!8275) (c!253097 totalInput!568))))))

(assert (=> b!1560232 (=> res!695822 e!1001733)))

(declare-fun b!1560233 () Bool)

(declare-fun inv!22225 (Conc!5583) Bool)

(assert (=> b!1560233 (= e!1001733 (inv!22225 (c!253097 totalInput!568)))))

(assert (= (and d!462190 c!253101) b!1560231))

(assert (= (and d!462190 (not c!253101)) b!1560232))

(assert (= (and b!1560232 (not res!695822)) b!1560233))

(declare-fun m!1831914 () Bool)

(assert (=> b!1560231 m!1831914))

(declare-fun m!1831916 () Bool)

(assert (=> b!1560233 m!1831916))

(assert (=> b!1560195 d!462190))

(declare-fun d!462192 () Bool)

(declare-fun lt!540338 () Bool)

(assert (=> d!462192 (= lt!540338 (isEmpty!10157 (list!6514 (_1!9647 (_1!9648 lt!540326)))))))

(declare-fun isEmpty!10159 (Conc!5583) Bool)

(assert (=> d!462192 (= lt!540338 (isEmpty!10159 (c!253097 (_1!9647 (_1!9648 lt!540326)))))))

(assert (=> d!462192 (= (isEmpty!10158 (_1!9647 (_1!9648 lt!540326))) lt!540338)))

(declare-fun bs!388861 () Bool)

(assert (= bs!388861 d!462192))

(assert (=> bs!388861 m!1831846))

(assert (=> bs!388861 m!1831846))

(declare-fun m!1831918 () Bool)

(assert (=> bs!388861 m!1831918))

(declare-fun m!1831920 () Bool)

(assert (=> bs!388861 m!1831920))

(assert (=> b!1560204 d!462192))

(declare-fun b!1560242 () Bool)

(declare-fun res!695831 () Bool)

(declare-fun e!1001736 () Bool)

(assert (=> b!1560242 (=> (not res!695831) (not e!1001736))))

(declare-fun lt!540341 () tuple4!920)

(assert (=> b!1560242 (= res!695831 (valid!1482 (_3!1389 lt!540341)))))

(declare-fun b!1560244 () Bool)

(declare-fun res!695832 () Bool)

(assert (=> b!1560244 (=> (not res!695832) (not e!1001736))))

(assert (=> b!1560244 (= res!695832 (valid!1480 (_4!460 lt!540341)))))

(declare-fun d!462194 () Bool)

(assert (=> d!462194 e!1001736))

(declare-fun res!695834 () Bool)

(assert (=> d!462194 (=> (not res!695834) (not e!1001736))))

(declare-fun findLongestMatch!269 (Regex!4293 List!16987) tuple2!16518)

(assert (=> d!462194 (= res!695834 (= (tuple2!16519 (list!6514 (_1!9647 (_1!9648 lt!540341))) (list!6514 (_2!9647 (_1!9648 lt!540341)))) (findLongestMatch!269 (regex!2965 rule!240) (list!6514 input!1676))))))

(declare-fun choose!9310 (Regex!4293 BalanceConc!11108 BalanceConc!11108 CacheUp!1092 CacheDown!1098 CacheFurthestNullable!520) tuple4!920)

(assert (=> d!462194 (= lt!540341 (choose!9310 (regex!2965 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun validRegex!1719 (Regex!4293) Bool)

(assert (=> d!462194 (validRegex!1719 (regex!2965 rule!240))))

(assert (=> d!462194 (= (findLongestMatchWithZipperSequenceV3Mem!61 (regex!2965 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!540341)))

(declare-fun b!1560243 () Bool)

(declare-fun res!695833 () Bool)

(assert (=> b!1560243 (=> (not res!695833) (not e!1001736))))

(assert (=> b!1560243 (= res!695833 (valid!1481 (_2!9648 lt!540341)))))

(declare-fun b!1560245 () Bool)

(assert (=> b!1560245 (= e!1001736 (= (totalInput!2494 (_4!460 lt!540341)) totalInput!568))))

(assert (= (and d!462194 res!695834) b!1560242))

(assert (= (and b!1560242 res!695831) b!1560243))

(assert (= (and b!1560243 res!695833) b!1560244))

(assert (= (and b!1560244 res!695832) b!1560245))

(declare-fun m!1831922 () Bool)

(assert (=> b!1560242 m!1831922))

(declare-fun m!1831924 () Bool)

(assert (=> b!1560244 m!1831924))

(declare-fun m!1831926 () Bool)

(assert (=> d!462194 m!1831926))

(declare-fun m!1831928 () Bool)

(assert (=> d!462194 m!1831928))

(declare-fun m!1831930 () Bool)

(assert (=> d!462194 m!1831930))

(declare-fun m!1831932 () Bool)

(assert (=> d!462194 m!1831932))

(assert (=> d!462194 m!1831874))

(declare-fun m!1831934 () Bool)

(assert (=> d!462194 m!1831934))

(assert (=> d!462194 m!1831874))

(declare-fun m!1831936 () Bool)

(assert (=> b!1560243 m!1831936))

(assert (=> b!1560204 d!462194))

(declare-fun d!462196 () Bool)

(declare-fun validCacheMapUp!169 (MutableMap!1792) Bool)

(assert (=> d!462196 (= (valid!1481 cacheUp!755) (validCacheMapUp!169 (cache!2173 cacheUp!755)))))

(declare-fun bs!388862 () Bool)

(assert (= bs!388862 d!462196))

(declare-fun m!1831938 () Bool)

(assert (=> bs!388862 m!1831938))

(assert (=> b!1560196 d!462196))

(declare-fun b!1560274 () Bool)

(declare-fun e!1001755 () Bool)

(declare-fun lt!540344 () Bool)

(declare-fun call!102210 () Bool)

(assert (=> b!1560274 (= e!1001755 (= lt!540344 call!102210))))

(declare-fun b!1560275 () Bool)

(declare-fun e!1001753 () Bool)

(declare-fun derivativeStep!1029 (Regex!4293 C!8764) Regex!4293)

(declare-fun head!3120 (List!16987) C!8764)

(declare-fun tail!2215 (List!16987) List!16987)

(assert (=> b!1560275 (= e!1001753 (matchR!1887 (derivativeStep!1029 (regex!2965 rule!240) (head!3120 (_1!9649 lt!540333))) (tail!2215 (_1!9649 lt!540333))))))

(declare-fun b!1560276 () Bool)

(declare-fun res!695851 () Bool)

(declare-fun e!1001754 () Bool)

(assert (=> b!1560276 (=> (not res!695851) (not e!1001754))))

(assert (=> b!1560276 (= res!695851 (isEmpty!10157 (tail!2215 (_1!9649 lt!540333))))))

(declare-fun b!1560277 () Bool)

(declare-fun nullable!1278 (Regex!4293) Bool)

(assert (=> b!1560277 (= e!1001753 (nullable!1278 (regex!2965 rule!240)))))

(declare-fun b!1560278 () Bool)

(declare-fun e!1001756 () Bool)

(assert (=> b!1560278 (= e!1001755 e!1001756)))

(declare-fun c!253109 () Bool)

(assert (=> b!1560278 (= c!253109 ((_ is EmptyLang!4293) (regex!2965 rule!240)))))

(declare-fun bm!102205 () Bool)

(assert (=> bm!102205 (= call!102210 (isEmpty!10157 (_1!9649 lt!540333)))))

(declare-fun b!1560279 () Bool)

(declare-fun res!695857 () Bool)

(declare-fun e!1001757 () Bool)

(assert (=> b!1560279 (=> res!695857 e!1001757)))

(assert (=> b!1560279 (= res!695857 (not (isEmpty!10157 (tail!2215 (_1!9649 lt!540333)))))))

(declare-fun d!462198 () Bool)

(assert (=> d!462198 e!1001755))

(declare-fun c!253108 () Bool)

(assert (=> d!462198 (= c!253108 ((_ is EmptyExpr!4293) (regex!2965 rule!240)))))

(assert (=> d!462198 (= lt!540344 e!1001753)))

(declare-fun c!253110 () Bool)

(assert (=> d!462198 (= c!253110 (isEmpty!10157 (_1!9649 lt!540333)))))

(assert (=> d!462198 (validRegex!1719 (regex!2965 rule!240))))

(assert (=> d!462198 (= (matchR!1887 (regex!2965 rule!240) (_1!9649 lt!540333)) lt!540344)))

(declare-fun b!1560280 () Bool)

(declare-fun e!1001751 () Bool)

(assert (=> b!1560280 (= e!1001751 e!1001757)))

(declare-fun res!695853 () Bool)

(assert (=> b!1560280 (=> res!695853 e!1001757)))

(assert (=> b!1560280 (= res!695853 call!102210)))

(declare-fun b!1560281 () Bool)

(declare-fun res!695858 () Bool)

(declare-fun e!1001752 () Bool)

(assert (=> b!1560281 (=> res!695858 e!1001752)))

(assert (=> b!1560281 (= res!695858 (not ((_ is ElementMatch!4293) (regex!2965 rule!240))))))

(assert (=> b!1560281 (= e!1001756 e!1001752)))

(declare-fun b!1560282 () Bool)

(assert (=> b!1560282 (= e!1001756 (not lt!540344))))

(declare-fun b!1560283 () Bool)

(declare-fun res!695856 () Bool)

(assert (=> b!1560283 (=> res!695856 e!1001752)))

(assert (=> b!1560283 (= res!695856 e!1001754)))

(declare-fun res!695855 () Bool)

(assert (=> b!1560283 (=> (not res!695855) (not e!1001754))))

(assert (=> b!1560283 (= res!695855 lt!540344)))

(declare-fun b!1560284 () Bool)

(assert (=> b!1560284 (= e!1001752 e!1001751)))

(declare-fun res!695854 () Bool)

(assert (=> b!1560284 (=> (not res!695854) (not e!1001751))))

(assert (=> b!1560284 (= res!695854 (not lt!540344))))

(declare-fun b!1560285 () Bool)

(assert (=> b!1560285 (= e!1001754 (= (head!3120 (_1!9649 lt!540333)) (c!253098 (regex!2965 rule!240))))))

(declare-fun b!1560286 () Bool)

(assert (=> b!1560286 (= e!1001757 (not (= (head!3120 (_1!9649 lt!540333)) (c!253098 (regex!2965 rule!240)))))))

(declare-fun b!1560287 () Bool)

(declare-fun res!695852 () Bool)

(assert (=> b!1560287 (=> (not res!695852) (not e!1001754))))

(assert (=> b!1560287 (= res!695852 (not call!102210))))

(assert (= (and d!462198 c!253110) b!1560277))

(assert (= (and d!462198 (not c!253110)) b!1560275))

(assert (= (and d!462198 c!253108) b!1560274))

(assert (= (and d!462198 (not c!253108)) b!1560278))

(assert (= (and b!1560278 c!253109) b!1560282))

(assert (= (and b!1560278 (not c!253109)) b!1560281))

(assert (= (and b!1560281 (not res!695858)) b!1560283))

(assert (= (and b!1560283 res!695855) b!1560287))

(assert (= (and b!1560287 res!695852) b!1560276))

(assert (= (and b!1560276 res!695851) b!1560285))

(assert (= (and b!1560283 (not res!695856)) b!1560284))

(assert (= (and b!1560284 res!695854) b!1560280))

(assert (= (and b!1560280 (not res!695853)) b!1560279))

(assert (= (and b!1560279 (not res!695857)) b!1560286))

(assert (= (or b!1560274 b!1560280 b!1560287) bm!102205))

(declare-fun m!1831940 () Bool)

(assert (=> b!1560286 m!1831940))

(assert (=> d!462198 m!1831900))

(assert (=> d!462198 m!1831926))

(assert (=> bm!102205 m!1831900))

(declare-fun m!1831942 () Bool)

(assert (=> b!1560277 m!1831942))

(assert (=> b!1560275 m!1831940))

(assert (=> b!1560275 m!1831940))

(declare-fun m!1831944 () Bool)

(assert (=> b!1560275 m!1831944))

(declare-fun m!1831946 () Bool)

(assert (=> b!1560275 m!1831946))

(assert (=> b!1560275 m!1831944))

(assert (=> b!1560275 m!1831946))

(declare-fun m!1831948 () Bool)

(assert (=> b!1560275 m!1831948))

(assert (=> b!1560276 m!1831946))

(assert (=> b!1560276 m!1831946))

(declare-fun m!1831950 () Bool)

(assert (=> b!1560276 m!1831950))

(assert (=> b!1560285 m!1831940))

(assert (=> b!1560279 m!1831946))

(assert (=> b!1560279 m!1831946))

(assert (=> b!1560279 m!1831950))

(assert (=> b!1560186 d!462198))

(declare-fun d!462200 () Bool)

(declare-fun isBalanced!1651 (Conc!5583) Bool)

(assert (=> d!462200 (= (inv!22219 (totalInput!2494 cacheFurthestNullable!103)) (isBalanced!1651 (c!253097 (totalInput!2494 cacheFurthestNullable!103))))))

(declare-fun bs!388863 () Bool)

(assert (= bs!388863 d!462200))

(declare-fun m!1831952 () Bool)

(assert (=> bs!388863 m!1831952))

(assert (=> b!1560197 d!462200))

(declare-fun d!462202 () Bool)

(declare-fun res!695863 () Bool)

(declare-fun e!1001760 () Bool)

(assert (=> d!462202 (=> (not res!695863) (not e!1001760))))

(assert (=> d!462202 (= res!695863 (validRegex!1719 (regex!2965 rule!240)))))

(assert (=> d!462202 (= (ruleValid!695 thiss!16438 rule!240) e!1001760)))

(declare-fun b!1560292 () Bool)

(declare-fun res!695864 () Bool)

(assert (=> b!1560292 (=> (not res!695864) (not e!1001760))))

(assert (=> b!1560292 (= res!695864 (not (nullable!1278 (regex!2965 rule!240))))))

(declare-fun b!1560293 () Bool)

(assert (=> b!1560293 (= e!1001760 (not (= (tag!3229 rule!240) (String!19564 ""))))))

(assert (= (and d!462202 res!695863) b!1560292))

(assert (= (and b!1560292 res!695864) b!1560293))

(assert (=> d!462202 m!1831926))

(assert (=> b!1560292 m!1831942))

(assert (=> b!1560201 d!462202))

(declare-fun d!462204 () Bool)

(declare-fun e!1001763 () Bool)

(assert (=> d!462204 e!1001763))

(declare-fun res!695867 () Bool)

(assert (=> d!462204 (=> res!695867 e!1001763)))

(declare-fun lt!540347 () Bool)

(assert (=> d!462204 (= res!695867 (not lt!540347))))

(declare-fun drop!793 (List!16987 Int) List!16987)

(assert (=> d!462204 (= lt!540347 (= lt!540335 (drop!793 (list!6514 totalInput!568) (- (size!13730 (list!6514 totalInput!568)) (size!13730 lt!540335)))))))

(assert (=> d!462204 (= (isSuffix!386 lt!540335 (list!6514 totalInput!568)) lt!540347)))

(declare-fun b!1560296 () Bool)

(assert (=> b!1560296 (= e!1001763 (>= (size!13730 (list!6514 totalInput!568)) (size!13730 lt!540335)))))

(assert (= (and d!462204 (not res!695867)) b!1560296))

(assert (=> d!462204 m!1831870))

(declare-fun m!1831954 () Bool)

(assert (=> d!462204 m!1831954))

(assert (=> d!462204 m!1831908))

(assert (=> d!462204 m!1831870))

(declare-fun m!1831956 () Bool)

(assert (=> d!462204 m!1831956))

(assert (=> b!1560296 m!1831870))

(assert (=> b!1560296 m!1831954))

(assert (=> b!1560296 m!1831908))

(assert (=> b!1560210 d!462204))

(declare-fun d!462206 () Bool)

(declare-fun list!6515 (Conc!5583) List!16987)

(assert (=> d!462206 (= (list!6514 totalInput!568) (list!6515 (c!253097 totalInput!568)))))

(declare-fun bs!388864 () Bool)

(assert (= bs!388864 d!462206))

(declare-fun m!1831958 () Bool)

(assert (=> bs!388864 m!1831958))

(assert (=> b!1560210 d!462206))

(declare-fun d!462208 () Bool)

(assert (=> d!462208 (= (list!6514 input!1676) (list!6515 (c!253097 input!1676)))))

(declare-fun bs!388865 () Bool)

(assert (= bs!388865 d!462208))

(declare-fun m!1831960 () Bool)

(assert (=> bs!388865 m!1831960))

(assert (=> b!1560210 d!462208))

(declare-fun d!462210 () Bool)

(assert (=> d!462210 (= (array_inv!2025 (_keys!2142 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) (bvsge (size!13724 (_keys!2142 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560193 d!462210))

(declare-fun d!462212 () Bool)

(assert (=> d!462212 (= (array_inv!2027 (_values!2127 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) (bvsge (size!13726 (_values!2127 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560193 d!462212))

(declare-fun d!462214 () Bool)

(declare-fun dynLambda!7530 (Int BalanceConc!11108) TokenValue!3055)

(assert (=> d!462214 (= (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (_1!9647 (_1!9648 lt!540326))))))

(declare-fun b_lambda!49047 () Bool)

(assert (=> (not b_lambda!49047) (not d!462214)))

(declare-fun t!141512 () Bool)

(declare-fun tb!87369 () Bool)

(assert (=> (and b!1560205 (= (toValue!4343 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))) t!141512) tb!87369))

(declare-fun result!105620 () Bool)

(declare-fun inv!21 (TokenValue!3055) Bool)

(assert (=> tb!87369 (= result!105620 (inv!21 (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (_1!9647 (_1!9648 lt!540326)))))))

(declare-fun m!1831962 () Bool)

(assert (=> tb!87369 m!1831962))

(assert (=> d!462214 t!141512))

(declare-fun b_and!108917 () Bool)

(assert (= b_and!108907 (and (=> t!141512 result!105620) b_and!108917)))

(declare-fun m!1831964 () Bool)

(assert (=> d!462214 m!1831964))

(assert (=> b!1560184 d!462214))

(declare-fun d!462216 () Bool)

(declare-fun lt!540350 () Int)

(assert (=> d!462216 (= lt!540350 (size!13730 (list!6514 (_1!9647 (_1!9648 lt!540326)))))))

(declare-fun size!13731 (Conc!5583) Int)

(assert (=> d!462216 (= lt!540350 (size!13731 (c!253097 (_1!9647 (_1!9648 lt!540326)))))))

(assert (=> d!462216 (= (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540350)))

(declare-fun bs!388866 () Bool)

(assert (= bs!388866 d!462216))

(assert (=> bs!388866 m!1831846))

(assert (=> bs!388866 m!1831846))

(declare-fun m!1831966 () Bool)

(assert (=> bs!388866 m!1831966))

(declare-fun m!1831968 () Bool)

(assert (=> bs!388866 m!1831968))

(assert (=> b!1560184 d!462216))

(declare-fun d!462218 () Bool)

(declare-fun dynLambda!7531 (Int BalanceConc!11108) Bool)

(assert (=> d!462218 (dynLambda!7531 lambda!66015 (seqFromList!1784 lt!540331))))

(declare-fun lt!540353 () Unit!26134)

(declare-fun choose!9311 (Int BalanceConc!11108) Unit!26134)

(assert (=> d!462218 (= lt!540353 (choose!9311 lambda!66015 (seqFromList!1784 lt!540331)))))

(assert (=> d!462218 (Forall!618 lambda!66015)))

(assert (=> d!462218 (= (ForallOf!221 lambda!66015 (seqFromList!1784 lt!540331)) lt!540353)))

(declare-fun b_lambda!49049 () Bool)

(assert (=> (not b_lambda!49049) (not d!462218)))

(declare-fun bs!388867 () Bool)

(assert (= bs!388867 d!462218))

(assert (=> bs!388867 m!1831848))

(declare-fun m!1831970 () Bool)

(assert (=> bs!388867 m!1831970))

(assert (=> bs!388867 m!1831848))

(declare-fun m!1831972 () Bool)

(assert (=> bs!388867 m!1831972))

(assert (=> bs!388867 m!1831882))

(assert (=> b!1560184 d!462218))

(declare-fun d!462220 () Bool)

(assert (=> d!462220 (dynLambda!7531 lambda!66015 (_1!9647 (_1!9648 lt!540326)))))

(declare-fun lt!540354 () Unit!26134)

(assert (=> d!462220 (= lt!540354 (choose!9311 lambda!66015 (_1!9647 (_1!9648 lt!540326))))))

(assert (=> d!462220 (Forall!618 lambda!66015)))

(assert (=> d!462220 (= (ForallOf!221 lambda!66015 (_1!9647 (_1!9648 lt!540326))) lt!540354)))

(declare-fun b_lambda!49051 () Bool)

(assert (=> (not b_lambda!49051) (not d!462220)))

(declare-fun bs!388868 () Bool)

(assert (= bs!388868 d!462220))

(declare-fun m!1831974 () Bool)

(assert (=> bs!388868 m!1831974))

(declare-fun m!1831976 () Bool)

(assert (=> bs!388868 m!1831976))

(assert (=> bs!388868 m!1831882))

(assert (=> b!1560184 d!462220))

(declare-fun d!462222 () Bool)

(assert (=> d!462222 (= (list!6514 (_1!9647 (_1!9648 lt!540326))) (list!6515 (c!253097 (_1!9647 (_1!9648 lt!540326)))))))

(declare-fun bs!388869 () Bool)

(assert (= bs!388869 d!462222))

(declare-fun m!1831978 () Bool)

(assert (=> bs!388869 m!1831978))

(assert (=> b!1560184 d!462222))

(declare-fun d!462224 () Bool)

(declare-fun fromListB!768 (List!16987) BalanceConc!11108)

(assert (=> d!462224 (= (seqFromList!1784 lt!540331) (fromListB!768 lt!540331))))

(declare-fun bs!388870 () Bool)

(assert (= bs!388870 d!462224))

(declare-fun m!1831980 () Bool)

(assert (=> bs!388870 m!1831980))

(assert (=> b!1560184 d!462224))

(declare-fun d!462226 () Bool)

(declare-fun res!695872 () Bool)

(declare-fun e!1001769 () Bool)

(assert (=> d!462226 (=> (not res!695872) (not e!1001769))))

(assert (=> d!462226 (= res!695872 (not (isEmpty!10157 (originalCharacters!3781 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))))))

(assert (=> d!462226 (= (inv!22217 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)) e!1001769)))

(declare-fun b!1560303 () Bool)

(declare-fun res!695873 () Bool)

(assert (=> b!1560303 (=> (not res!695873) (not e!1001769))))

(declare-fun dynLambda!7532 (Int TokenValue!3055) BalanceConc!11108)

(assert (=> b!1560303 (= res!695873 (= (originalCharacters!3781 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)) (list!6514 (dynLambda!7532 (toChars!4202 (transformation!2965 (rule!4750 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))) (value!94136 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331))))))))

(declare-fun b!1560304 () Bool)

(assert (=> b!1560304 (= e!1001769 (= (size!13728 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)) (size!13730 (originalCharacters!3781 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))))))

(assert (= (and d!462226 res!695872) b!1560303))

(assert (= (and b!1560303 res!695873) b!1560304))

(declare-fun b_lambda!49053 () Bool)

(assert (=> (not b_lambda!49053) (not b!1560303)))

(declare-fun t!141514 () Bool)

(declare-fun tb!87371 () Bool)

(assert (=> (and b!1560205 (= (toChars!4202 (transformation!2965 rule!240)) (toChars!4202 (transformation!2965 (rule!4750 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331))))) t!141514) tb!87371))

(declare-fun e!1001772 () Bool)

(declare-fun tp!458833 () Bool)

(declare-fun b!1560309 () Bool)

(assert (=> b!1560309 (= e!1001772 (and (inv!22218 (c!253097 (dynLambda!7532 (toChars!4202 (transformation!2965 (rule!4750 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))) (value!94136 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331))))) tp!458833))))

(declare-fun result!105624 () Bool)

(assert (=> tb!87371 (= result!105624 (and (inv!22219 (dynLambda!7532 (toChars!4202 (transformation!2965 (rule!4750 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))) (value!94136 (Token!5501 (apply!4120 (transformation!2965 rule!240) (_1!9647 (_1!9648 lt!540326))) rule!240 (size!13729 (_1!9647 (_1!9648 lt!540326))) lt!540331)))) e!1001772))))

(assert (= tb!87371 b!1560309))

(declare-fun m!1831982 () Bool)

(assert (=> b!1560309 m!1831982))

(declare-fun m!1831984 () Bool)

(assert (=> tb!87371 m!1831984))

(assert (=> b!1560303 t!141514))

(declare-fun b_and!108919 () Bool)

(assert (= b_and!108909 (and (=> t!141514 result!105624) b_and!108919)))

(declare-fun m!1831986 () Bool)

(assert (=> d!462226 m!1831986))

(declare-fun m!1831988 () Bool)

(assert (=> b!1560303 m!1831988))

(assert (=> b!1560303 m!1831988))

(declare-fun m!1831990 () Bool)

(assert (=> b!1560303 m!1831990))

(declare-fun m!1831992 () Bool)

(assert (=> b!1560304 m!1831992))

(assert (=> b!1560184 d!462226))

(declare-fun d!462228 () Bool)

(declare-fun validCacheMapFurthestNullable!82 (MutableMap!1793 BalanceConc!11108) Bool)

(assert (=> d!462228 (= (valid!1480 cacheFurthestNullable!103) (validCacheMapFurthestNullable!82 (cache!2174 cacheFurthestNullable!103) (totalInput!2494 cacheFurthestNullable!103)))))

(declare-fun bs!388871 () Bool)

(assert (= bs!388871 d!462228))

(declare-fun m!1831994 () Bool)

(assert (=> bs!388871 m!1831994))

(assert (=> b!1560194 d!462228))

(declare-fun d!462230 () Bool)

(declare-fun c!253111 () Bool)

(assert (=> d!462230 (= c!253111 ((_ is Node!5583) (c!253097 input!1676)))))

(declare-fun e!1001773 () Bool)

(assert (=> d!462230 (= (inv!22218 (c!253097 input!1676)) e!1001773)))

(declare-fun b!1560310 () Bool)

(assert (=> b!1560310 (= e!1001773 (inv!22224 (c!253097 input!1676)))))

(declare-fun b!1560311 () Bool)

(declare-fun e!1001774 () Bool)

(assert (=> b!1560311 (= e!1001773 e!1001774)))

(declare-fun res!695874 () Bool)

(assert (=> b!1560311 (= res!695874 (not ((_ is Leaf!8275) (c!253097 input!1676))))))

(assert (=> b!1560311 (=> res!695874 e!1001774)))

(declare-fun b!1560312 () Bool)

(assert (=> b!1560312 (= e!1001774 (inv!22225 (c!253097 input!1676)))))

(assert (= (and d!462230 c!253111) b!1560310))

(assert (= (and d!462230 (not c!253111)) b!1560311))

(assert (= (and b!1560311 (not res!695874)) b!1560312))

(declare-fun m!1831996 () Bool)

(assert (=> b!1560310 m!1831996))

(declare-fun m!1831998 () Bool)

(assert (=> b!1560312 m!1831998))

(assert (=> b!1560185 d!462230))

(declare-fun d!462232 () Bool)

(declare-fun validCacheMapDown!169 (MutableMap!1791) Bool)

(assert (=> d!462232 (= (valid!1482 cacheDown!768) (validCacheMapDown!169 (cache!2172 cacheDown!768)))))

(declare-fun bs!388872 () Bool)

(assert (= bs!388872 d!462232))

(declare-fun m!1832000 () Bool)

(assert (=> bs!388872 m!1832000))

(assert (=> b!1560212 d!462232))

(declare-fun d!462234 () Bool)

(declare-fun choose!9312 (Int) Bool)

(assert (=> d!462234 (= (Forall!618 lambda!66015) (choose!9312 lambda!66015))))

(declare-fun bs!388873 () Bool)

(assert (= bs!388873 d!462234))

(declare-fun m!1832002 () Bool)

(assert (=> bs!388873 m!1832002))

(assert (=> b!1560207 d!462234))

(declare-fun b!1560341 () Bool)

(declare-fun e!1001796 () tuple2!16518)

(declare-fun lt!540416 () tuple2!16518)

(assert (=> b!1560341 (= e!1001796 lt!540416)))

(declare-fun b!1560342 () Bool)

(declare-fun c!253124 () Bool)

(declare-fun call!102229 () Bool)

(assert (=> b!1560342 (= c!253124 call!102229)))

(declare-fun lt!540437 () Unit!26134)

(declare-fun lt!540423 () Unit!26134)

(assert (=> b!1560342 (= lt!540437 lt!540423)))

(declare-fun lt!540412 () C!8764)

(declare-fun lt!540411 () List!16987)

(declare-fun ++!4421 (List!16987 List!16987) List!16987)

(assert (=> b!1560342 (= (++!4421 (++!4421 Nil!16919 (Cons!16919 lt!540412 Nil!16919)) lt!540411) lt!540335)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!446 (List!16987 C!8764 List!16987 List!16987) Unit!26134)

(assert (=> b!1560342 (= lt!540423 (lemmaMoveElementToOtherListKeepsConcatEq!446 Nil!16919 lt!540412 lt!540411 lt!540335))))

(assert (=> b!1560342 (= lt!540411 (tail!2215 lt!540335))))

(assert (=> b!1560342 (= lt!540412 (head!3120 lt!540335))))

(declare-fun lt!540413 () Unit!26134)

(declare-fun lt!540426 () Unit!26134)

(assert (=> b!1560342 (= lt!540413 lt!540426)))

(declare-fun isPrefix!1267 (List!16987 List!16987) Bool)

(declare-fun getSuffix!677 (List!16987 List!16987) List!16987)

(assert (=> b!1560342 (isPrefix!1267 (++!4421 Nil!16919 (Cons!16919 (head!3120 (getSuffix!677 lt!540335 Nil!16919)) Nil!16919)) lt!540335)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!120 (List!16987 List!16987) Unit!26134)

(assert (=> b!1560342 (= lt!540426 (lemmaAddHeadSuffixToPrefixStillPrefix!120 Nil!16919 lt!540335))))

(declare-fun lt!540422 () Unit!26134)

(declare-fun lt!540418 () Unit!26134)

(assert (=> b!1560342 (= lt!540422 lt!540418)))

(assert (=> b!1560342 (= lt!540418 (lemmaAddHeadSuffixToPrefixStillPrefix!120 Nil!16919 lt!540335))))

(declare-fun lt!540421 () List!16987)

(assert (=> b!1560342 (= lt!540421 (++!4421 Nil!16919 (Cons!16919 (head!3120 lt!540335) Nil!16919)))))

(declare-fun lt!540414 () Unit!26134)

(declare-fun e!1001797 () Unit!26134)

(assert (=> b!1560342 (= lt!540414 e!1001797)))

(declare-fun c!253126 () Bool)

(assert (=> b!1560342 (= c!253126 (= (size!13730 Nil!16919) (size!13730 lt!540335)))))

(declare-fun lt!540430 () Unit!26134)

(declare-fun lt!540434 () Unit!26134)

(assert (=> b!1560342 (= lt!540430 lt!540434)))

(assert (=> b!1560342 (<= (size!13730 Nil!16919) (size!13730 lt!540335))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!121 (List!16987 List!16987) Unit!26134)

(assert (=> b!1560342 (= lt!540434 (lemmaIsPrefixThenSmallerEqSize!121 Nil!16919 lt!540335))))

(declare-fun e!1001793 () tuple2!16518)

(declare-fun e!1001795 () tuple2!16518)

(assert (=> b!1560342 (= e!1001793 e!1001795)))

(declare-fun bm!102222 () Bool)

(declare-fun call!102234 () Regex!4293)

(declare-fun call!102227 () C!8764)

(assert (=> bm!102222 (= call!102234 (derivativeStep!1029 (regex!2965 rule!240) call!102227))))

(declare-fun b!1560343 () Bool)

(declare-fun Unit!26136 () Unit!26134)

(assert (=> b!1560343 (= e!1001797 Unit!26136)))

(declare-fun lt!540425 () Unit!26134)

(declare-fun call!102233 () Unit!26134)

(assert (=> b!1560343 (= lt!540425 call!102233)))

(declare-fun call!102230 () Bool)

(assert (=> b!1560343 call!102230))

(declare-fun lt!540438 () Unit!26134)

(assert (=> b!1560343 (= lt!540438 lt!540425)))

(declare-fun lt!540432 () Unit!26134)

(declare-fun call!102232 () Unit!26134)

(assert (=> b!1560343 (= lt!540432 call!102232)))

(assert (=> b!1560343 (= lt!540335 Nil!16919)))

(declare-fun lt!540424 () Unit!26134)

(assert (=> b!1560343 (= lt!540424 lt!540432)))

(assert (=> b!1560343 false))

(declare-fun b!1560345 () Bool)

(declare-fun e!1001792 () tuple2!16518)

(assert (=> b!1560345 (= e!1001792 e!1001793)))

(declare-fun c!253128 () Bool)

(assert (=> b!1560345 (= c!253128 (= (size!13730 Nil!16919) (size!13730 lt!540335)))))

(declare-fun bm!102223 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!131 (List!16987 List!16987 List!16987) Unit!26134)

(assert (=> bm!102223 (= call!102232 (lemmaIsPrefixSameLengthThenSameList!131 lt!540335 Nil!16919 lt!540335))))

(declare-fun bm!102224 () Bool)

(declare-fun call!102231 () List!16987)

(declare-fun call!102228 () tuple2!16518)

(assert (=> bm!102224 (= call!102228 (findLongestMatchInner!342 call!102234 lt!540421 (+ (size!13730 Nil!16919) 1) call!102231 lt!540335 (size!13730 lt!540335)))))

(declare-fun bm!102225 () Bool)

(assert (=> bm!102225 (= call!102231 (tail!2215 lt!540335))))

(declare-fun b!1560346 () Bool)

(assert (=> b!1560346 (= e!1001796 (tuple2!16519 Nil!16919 lt!540335))))

(declare-fun b!1560347 () Bool)

(declare-fun e!1001798 () Bool)

(declare-fun e!1001791 () Bool)

(assert (=> b!1560347 (= e!1001798 e!1001791)))

(declare-fun res!695880 () Bool)

(assert (=> b!1560347 (=> res!695880 e!1001791)))

(declare-fun lt!540433 () tuple2!16518)

(assert (=> b!1560347 (= res!695880 (isEmpty!10157 (_1!9649 lt!540433)))))

(declare-fun b!1560348 () Bool)

(assert (=> b!1560348 (= e!1001792 (tuple2!16519 Nil!16919 lt!540335))))

(declare-fun b!1560349 () Bool)

(declare-fun e!1001794 () tuple2!16518)

(assert (=> b!1560349 (= e!1001794 (tuple2!16519 Nil!16919 lt!540335))))

(declare-fun b!1560350 () Bool)

(declare-fun Unit!26137 () Unit!26134)

(assert (=> b!1560350 (= e!1001797 Unit!26137)))

(declare-fun bm!102226 () Bool)

(assert (=> bm!102226 (= call!102229 (nullable!1278 (regex!2965 rule!240)))))

(declare-fun b!1560351 () Bool)

(assert (=> b!1560351 (= e!1001791 (>= (size!13730 (_1!9649 lt!540433)) (size!13730 Nil!16919)))))

(declare-fun b!1560352 () Bool)

(assert (=> b!1560352 (= e!1001794 (tuple2!16519 Nil!16919 Nil!16919))))

(declare-fun bm!102227 () Bool)

(assert (=> bm!102227 (= call!102227 (head!3120 lt!540335))))

(declare-fun b!1560353 () Bool)

(declare-fun c!253125 () Bool)

(assert (=> b!1560353 (= c!253125 call!102229)))

(declare-fun lt!540419 () Unit!26134)

(declare-fun lt!540417 () Unit!26134)

(assert (=> b!1560353 (= lt!540419 lt!540417)))

(assert (=> b!1560353 (= lt!540335 Nil!16919)))

(assert (=> b!1560353 (= lt!540417 call!102232)))

(declare-fun lt!540429 () Unit!26134)

(declare-fun lt!540431 () Unit!26134)

(assert (=> b!1560353 (= lt!540429 lt!540431)))

(assert (=> b!1560353 call!102230))

(assert (=> b!1560353 (= lt!540431 call!102233)))

(assert (=> b!1560353 (= e!1001793 e!1001794)))

(declare-fun bm!102228 () Bool)

(declare-fun lemmaIsPrefixRefl!897 (List!16987 List!16987) Unit!26134)

(assert (=> bm!102228 (= call!102233 (lemmaIsPrefixRefl!897 lt!540335 lt!540335))))

(declare-fun b!1560344 () Bool)

(assert (=> b!1560344 (= e!1001795 e!1001796)))

(assert (=> b!1560344 (= lt!540416 call!102228)))

(declare-fun c!253127 () Bool)

(assert (=> b!1560344 (= c!253127 (isEmpty!10157 (_1!9649 lt!540416)))))

(declare-fun d!462236 () Bool)

(assert (=> d!462236 e!1001798))

(declare-fun res!695879 () Bool)

(assert (=> d!462236 (=> (not res!695879) (not e!1001798))))

(assert (=> d!462236 (= res!695879 (= (++!4421 (_1!9649 lt!540433) (_2!9649 lt!540433)) lt!540335))))

(assert (=> d!462236 (= lt!540433 e!1001792)))

(declare-fun c!253129 () Bool)

(declare-fun lostCause!395 (Regex!4293) Bool)

(assert (=> d!462236 (= c!253129 (lostCause!395 (regex!2965 rule!240)))))

(declare-fun lt!540436 () Unit!26134)

(declare-fun Unit!26138 () Unit!26134)

(assert (=> d!462236 (= lt!540436 Unit!26138)))

(assert (=> d!462236 (= (getSuffix!677 lt!540335 Nil!16919) lt!540335)))

(declare-fun lt!540420 () Unit!26134)

(declare-fun lt!540435 () Unit!26134)

(assert (=> d!462236 (= lt!540420 lt!540435)))

(declare-fun lt!540428 () List!16987)

(assert (=> d!462236 (= lt!540335 lt!540428)))

(declare-fun lemmaSamePrefixThenSameSuffix!629 (List!16987 List!16987 List!16987 List!16987 List!16987) Unit!26134)

(assert (=> d!462236 (= lt!540435 (lemmaSamePrefixThenSameSuffix!629 Nil!16919 lt!540335 Nil!16919 lt!540428 lt!540335))))

(assert (=> d!462236 (= lt!540428 (getSuffix!677 lt!540335 Nil!16919))))

(declare-fun lt!540427 () Unit!26134)

(declare-fun lt!540415 () Unit!26134)

(assert (=> d!462236 (= lt!540427 lt!540415)))

(assert (=> d!462236 (isPrefix!1267 Nil!16919 (++!4421 Nil!16919 lt!540335))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!792 (List!16987 List!16987) Unit!26134)

(assert (=> d!462236 (= lt!540415 (lemmaConcatTwoListThenFirstIsPrefix!792 Nil!16919 lt!540335))))

(assert (=> d!462236 (validRegex!1719 (regex!2965 rule!240))))

(assert (=> d!462236 (= (findLongestMatchInner!342 (regex!2965 rule!240) Nil!16919 (size!13730 Nil!16919) lt!540335 lt!540335 (size!13730 lt!540335)) lt!540433)))

(declare-fun b!1560354 () Bool)

(assert (=> b!1560354 (= e!1001795 call!102228)))

(declare-fun bm!102229 () Bool)

(assert (=> bm!102229 (= call!102230 (isPrefix!1267 lt!540335 lt!540335))))

(assert (= (and d!462236 c!253129) b!1560348))

(assert (= (and d!462236 (not c!253129)) b!1560345))

(assert (= (and b!1560345 c!253128) b!1560353))

(assert (= (and b!1560345 (not c!253128)) b!1560342))

(assert (= (and b!1560353 c!253125) b!1560352))

(assert (= (and b!1560353 (not c!253125)) b!1560349))

(assert (= (and b!1560342 c!253126) b!1560343))

(assert (= (and b!1560342 (not c!253126)) b!1560350))

(assert (= (and b!1560342 c!253124) b!1560344))

(assert (= (and b!1560342 (not c!253124)) b!1560354))

(assert (= (and b!1560344 c!253127) b!1560346))

(assert (= (and b!1560344 (not c!253127)) b!1560341))

(assert (= (or b!1560344 b!1560354) bm!102225))

(assert (= (or b!1560344 b!1560354) bm!102227))

(assert (= (or b!1560344 b!1560354) bm!102222))

(assert (= (or b!1560344 b!1560354) bm!102224))

(assert (= (or b!1560353 b!1560343) bm!102223))

(assert (= (or b!1560353 b!1560343) bm!102228))

(assert (= (or b!1560353 b!1560342) bm!102226))

(assert (= (or b!1560353 b!1560343) bm!102229))

(assert (= (and d!462236 res!695879) b!1560347))

(assert (= (and b!1560347 (not res!695880)) b!1560351))

(assert (=> bm!102224 m!1831908))

(declare-fun m!1832004 () Bool)

(assert (=> bm!102224 m!1832004))

(declare-fun m!1832006 () Bool)

(assert (=> bm!102228 m!1832006))

(declare-fun m!1832008 () Bool)

(assert (=> bm!102229 m!1832008))

(assert (=> bm!102226 m!1831942))

(declare-fun m!1832010 () Bool)

(assert (=> d!462236 m!1832010))

(declare-fun m!1832012 () Bool)

(assert (=> d!462236 m!1832012))

(declare-fun m!1832014 () Bool)

(assert (=> d!462236 m!1832014))

(declare-fun m!1832016 () Bool)

(assert (=> d!462236 m!1832016))

(declare-fun m!1832018 () Bool)

(assert (=> d!462236 m!1832018))

(assert (=> d!462236 m!1832012))

(assert (=> d!462236 m!1831926))

(declare-fun m!1832020 () Bool)

(assert (=> d!462236 m!1832020))

(declare-fun m!1832022 () Bool)

(assert (=> d!462236 m!1832022))

(declare-fun m!1832024 () Bool)

(assert (=> b!1560347 m!1832024))

(declare-fun m!1832026 () Bool)

(assert (=> b!1560351 m!1832026))

(assert (=> b!1560351 m!1831906))

(declare-fun m!1832028 () Bool)

(assert (=> b!1560344 m!1832028))

(declare-fun m!1832030 () Bool)

(assert (=> bm!102222 m!1832030))

(declare-fun m!1832032 () Bool)

(assert (=> b!1560342 m!1832032))

(declare-fun m!1832034 () Bool)

(assert (=> b!1560342 m!1832034))

(assert (=> b!1560342 m!1832022))

(declare-fun m!1832036 () Bool)

(assert (=> b!1560342 m!1832036))

(declare-fun m!1832038 () Bool)

(assert (=> b!1560342 m!1832038))

(declare-fun m!1832040 () Bool)

(assert (=> b!1560342 m!1832040))

(declare-fun m!1832042 () Bool)

(assert (=> b!1560342 m!1832042))

(declare-fun m!1832044 () Bool)

(assert (=> b!1560342 m!1832044))

(assert (=> b!1560342 m!1832038))

(declare-fun m!1832046 () Bool)

(assert (=> b!1560342 m!1832046))

(assert (=> b!1560342 m!1831906))

(declare-fun m!1832048 () Bool)

(assert (=> b!1560342 m!1832048))

(declare-fun m!1832050 () Bool)

(assert (=> b!1560342 m!1832050))

(assert (=> b!1560342 m!1831908))

(assert (=> b!1560342 m!1832022))

(declare-fun m!1832052 () Bool)

(assert (=> b!1560342 m!1832052))

(assert (=> b!1560342 m!1832048))

(assert (=> bm!102225 m!1832040))

(assert (=> bm!102227 m!1832034))

(declare-fun m!1832054 () Bool)

(assert (=> bm!102223 m!1832054))

(assert (=> b!1560192 d!462236))

(declare-fun d!462238 () Bool)

(declare-fun lt!540441 () Int)

(assert (=> d!462238 (>= lt!540441 0)))

(declare-fun e!1001801 () Int)

(assert (=> d!462238 (= lt!540441 e!1001801)))

(declare-fun c!253132 () Bool)

(assert (=> d!462238 (= c!253132 ((_ is Nil!16919) Nil!16919))))

(assert (=> d!462238 (= (size!13730 Nil!16919) lt!540441)))

(declare-fun b!1560359 () Bool)

(assert (=> b!1560359 (= e!1001801 0)))

(declare-fun b!1560360 () Bool)

(assert (=> b!1560360 (= e!1001801 (+ 1 (size!13730 (t!141506 Nil!16919))))))

(assert (= (and d!462238 c!253132) b!1560359))

(assert (= (and d!462238 (not c!253132)) b!1560360))

(declare-fun m!1832056 () Bool)

(assert (=> b!1560360 m!1832056))

(assert (=> b!1560192 d!462238))

(declare-fun d!462240 () Bool)

(declare-fun e!1001804 () Bool)

(assert (=> d!462240 e!1001804))

(declare-fun res!695883 () Bool)

(assert (=> d!462240 (=> res!695883 e!1001804)))

(assert (=> d!462240 (= res!695883 (isEmpty!10157 (_1!9649 (findLongestMatchInner!342 (regex!2965 rule!240) Nil!16919 (size!13730 Nil!16919) lt!540335 lt!540335 (size!13730 lt!540335)))))))

(declare-fun lt!540444 () Unit!26134)

(declare-fun choose!9313 (Regex!4293 List!16987) Unit!26134)

(assert (=> d!462240 (= lt!540444 (choose!9313 (regex!2965 rule!240) lt!540335))))

(assert (=> d!462240 (validRegex!1719 (regex!2965 rule!240))))

(assert (=> d!462240 (= (longestMatchIsAcceptedByMatchOrIsEmpty!326 (regex!2965 rule!240) lt!540335) lt!540444)))

(declare-fun b!1560363 () Bool)

(assert (=> b!1560363 (= e!1001804 (matchR!1887 (regex!2965 rule!240) (_1!9649 (findLongestMatchInner!342 (regex!2965 rule!240) Nil!16919 (size!13730 Nil!16919) lt!540335 lt!540335 (size!13730 lt!540335)))))))

(assert (= (and d!462240 (not res!695883)) b!1560363))

(assert (=> d!462240 m!1831906))

(assert (=> d!462240 m!1831908))

(assert (=> d!462240 m!1831910))

(declare-fun m!1832058 () Bool)

(assert (=> d!462240 m!1832058))

(declare-fun m!1832060 () Bool)

(assert (=> d!462240 m!1832060))

(assert (=> d!462240 m!1831906))

(assert (=> d!462240 m!1831926))

(assert (=> d!462240 m!1831908))

(assert (=> b!1560363 m!1831906))

(assert (=> b!1560363 m!1831908))

(assert (=> b!1560363 m!1831906))

(assert (=> b!1560363 m!1831908))

(assert (=> b!1560363 m!1831910))

(declare-fun m!1832062 () Bool)

(assert (=> b!1560363 m!1832062))

(assert (=> b!1560192 d!462240))

(declare-fun bs!388874 () Bool)

(declare-fun d!462242 () Bool)

(assert (= bs!388874 (and d!462242 b!1560207)))

(declare-fun lambda!66018 () Int)

(assert (=> bs!388874 (= lambda!66018 lambda!66015)))

(assert (=> d!462242 true))

(assert (=> d!462242 (< (dynLambda!7529 order!10009 (toChars!4202 (transformation!2965 rule!240))) (dynLambda!7528 order!10007 lambda!66018))))

(assert (=> d!462242 true))

(assert (=> d!462242 (< (dynLambda!7527 order!10005 (toValue!4343 (transformation!2965 rule!240))) (dynLambda!7528 order!10007 lambda!66018))))

(assert (=> d!462242 (= (semiInverseModEq!1123 (toChars!4202 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))) (Forall!618 lambda!66018))))

(declare-fun bs!388875 () Bool)

(assert (= bs!388875 d!462242))

(declare-fun m!1832064 () Bool)

(assert (=> bs!388875 m!1832064))

(assert (=> b!1560192 d!462242))

(declare-fun d!462244 () Bool)

(declare-fun lt!540445 () Int)

(assert (=> d!462244 (>= lt!540445 0)))

(declare-fun e!1001805 () Int)

(assert (=> d!462244 (= lt!540445 e!1001805)))

(declare-fun c!253133 () Bool)

(assert (=> d!462244 (= c!253133 ((_ is Nil!16919) lt!540335))))

(assert (=> d!462244 (= (size!13730 lt!540335) lt!540445)))

(declare-fun b!1560368 () Bool)

(assert (=> b!1560368 (= e!1001805 0)))

(declare-fun b!1560369 () Bool)

(assert (=> b!1560369 (= e!1001805 (+ 1 (size!13730 (t!141506 lt!540335))))))

(assert (= (and d!462244 c!253133) b!1560368))

(assert (= (and d!462244 (not c!253133)) b!1560369))

(declare-fun m!1832066 () Bool)

(assert (=> b!1560369 m!1832066))

(assert (=> b!1560192 d!462244))

(declare-fun d!462246 () Bool)

(assert (=> d!462246 (= (isEmpty!10157 (_1!9649 lt!540333)) ((_ is Nil!16919) (_1!9649 lt!540333)))))

(assert (=> b!1560192 d!462246))

(declare-fun d!462248 () Bool)

(declare-fun e!1001808 () Bool)

(assert (=> d!462248 e!1001808))

(declare-fun res!695886 () Bool)

(assert (=> d!462248 (=> (not res!695886) (not e!1001808))))

(assert (=> d!462248 (= res!695886 (semiInverseModEq!1123 (toChars!4202 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))))))

(declare-fun Unit!26139 () Unit!26134)

(assert (=> d!462248 (= (lemmaInv!436 (transformation!2965 rule!240)) Unit!26139)))

(declare-fun b!1560372 () Bool)

(declare-fun equivClasses!1064 (Int Int) Bool)

(assert (=> b!1560372 (= e!1001808 (equivClasses!1064 (toChars!4202 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))))))

(assert (= (and d!462248 res!695886) b!1560372))

(assert (=> d!462248 m!1831902))

(declare-fun m!1832068 () Bool)

(assert (=> b!1560372 m!1832068))

(assert (=> b!1560192 d!462248))

(declare-fun d!462250 () Bool)

(assert (=> d!462250 (= (array_inv!2025 (_keys!2141 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) (bvsge (size!13724 (_keys!2141 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560215 d!462250))

(declare-fun d!462252 () Bool)

(assert (=> d!462252 (= (array_inv!2028 (_values!2126 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) (bvsge (size!13725 (_values!2126 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560215 d!462252))

(declare-fun d!462254 () Bool)

(assert (=> d!462254 (= (array_inv!2025 (_keys!2143 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) (bvsge (size!13724 (_keys!2143 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560188 d!462254))

(declare-fun d!462256 () Bool)

(assert (=> d!462256 (= (array_inv!2026 (_values!2128 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) (bvsge (size!13727 (_values!2128 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560188 d!462256))

(declare-fun d!462258 () Bool)

(assert (=> d!462258 (= (inv!22215 (tag!3229 rule!240)) (= (mod (str.len (value!94135 (tag!3229 rule!240))) 2) 0))))

(assert (=> b!1560216 d!462258))

(declare-fun d!462260 () Bool)

(declare-fun res!695889 () Bool)

(declare-fun e!1001811 () Bool)

(assert (=> d!462260 (=> (not res!695889) (not e!1001811))))

(assert (=> d!462260 (= res!695889 (semiInverseModEq!1123 (toChars!4202 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))))))

(assert (=> d!462260 (= (inv!22223 (transformation!2965 rule!240)) e!1001811)))

(declare-fun b!1560375 () Bool)

(assert (=> b!1560375 (= e!1001811 (equivClasses!1064 (toChars!4202 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))))))

(assert (= (and d!462260 res!695889) b!1560375))

(assert (=> d!462260 m!1831902))

(assert (=> b!1560375 m!1832068))

(assert (=> b!1560216 d!462260))

(declare-fun d!462262 () Bool)

(declare-fun c!253134 () Bool)

(assert (=> d!462262 (= c!253134 ((_ is Node!5583) (c!253097 (totalInput!2494 cacheFurthestNullable!103))))))

(declare-fun e!1001812 () Bool)

(assert (=> d!462262 (= (inv!22218 (c!253097 (totalInput!2494 cacheFurthestNullable!103))) e!1001812)))

(declare-fun b!1560376 () Bool)

(assert (=> b!1560376 (= e!1001812 (inv!22224 (c!253097 (totalInput!2494 cacheFurthestNullable!103))))))

(declare-fun b!1560377 () Bool)

(declare-fun e!1001813 () Bool)

(assert (=> b!1560377 (= e!1001812 e!1001813)))

(declare-fun res!695890 () Bool)

(assert (=> b!1560377 (= res!695890 (not ((_ is Leaf!8275) (c!253097 (totalInput!2494 cacheFurthestNullable!103)))))))

(assert (=> b!1560377 (=> res!695890 e!1001813)))

(declare-fun b!1560378 () Bool)

(assert (=> b!1560378 (= e!1001813 (inv!22225 (c!253097 (totalInput!2494 cacheFurthestNullable!103))))))

(assert (= (and d!462262 c!253134) b!1560376))

(assert (= (and d!462262 (not c!253134)) b!1560377))

(assert (= (and b!1560377 (not res!695890)) b!1560378))

(declare-fun m!1832070 () Bool)

(assert (=> b!1560376 m!1832070))

(declare-fun m!1832072 () Bool)

(assert (=> b!1560378 m!1832072))

(assert (=> b!1560199 d!462262))

(declare-fun d!462264 () Bool)

(assert (=> d!462264 (= (inv!22219 totalInput!568) (isBalanced!1651 (c!253097 totalInput!568)))))

(declare-fun bs!388876 () Bool)

(assert (= bs!388876 d!462264))

(declare-fun m!1832074 () Bool)

(assert (=> bs!388876 m!1832074))

(assert (=> start!144796 d!462264))

(declare-fun d!462266 () Bool)

(declare-fun res!695893 () Bool)

(declare-fun e!1001816 () Bool)

(assert (=> d!462266 (=> (not res!695893) (not e!1001816))))

(assert (=> d!462266 (= res!695893 ((_ is HashMap!1791) (cache!2172 cacheDown!768)))))

(assert (=> d!462266 (= (inv!22222 cacheDown!768) e!1001816)))

(declare-fun b!1560381 () Bool)

(assert (=> b!1560381 (= e!1001816 (validCacheMapDown!169 (cache!2172 cacheDown!768)))))

(assert (= (and d!462266 res!695893) b!1560381))

(assert (=> b!1560381 m!1832000))

(assert (=> start!144796 d!462266))

(declare-fun d!462268 () Bool)

(declare-fun res!695896 () Bool)

(declare-fun e!1001819 () Bool)

(assert (=> d!462268 (=> (not res!695896) (not e!1001819))))

(assert (=> d!462268 (= res!695896 ((_ is HashMap!1792) (cache!2173 cacheUp!755)))))

(assert (=> d!462268 (= (inv!22220 cacheUp!755) e!1001819)))

(declare-fun b!1560384 () Bool)

(assert (=> b!1560384 (= e!1001819 (validCacheMapUp!169 (cache!2173 cacheUp!755)))))

(assert (= (and d!462268 res!695896) b!1560384))

(assert (=> b!1560384 m!1831938))

(assert (=> start!144796 d!462268))

(declare-fun d!462270 () Bool)

(assert (=> d!462270 (= (inv!22219 input!1676) (isBalanced!1651 (c!253097 input!1676)))))

(declare-fun bs!388877 () Bool)

(assert (= bs!388877 d!462270))

(declare-fun m!1832076 () Bool)

(assert (=> bs!388877 m!1832076))

(assert (=> start!144796 d!462270))

(declare-fun d!462272 () Bool)

(declare-fun res!695899 () Bool)

(declare-fun e!1001822 () Bool)

(assert (=> d!462272 (=> (not res!695899) (not e!1001822))))

(assert (=> d!462272 (= res!695899 ((_ is HashMap!1793) (cache!2174 cacheFurthestNullable!103)))))

(assert (=> d!462272 (= (inv!22221 cacheFurthestNullable!103) e!1001822)))

(declare-fun b!1560387 () Bool)

(assert (=> b!1560387 (= e!1001822 (validCacheMapFurthestNullable!82 (cache!2174 cacheFurthestNullable!103) (totalInput!2494 cacheFurthestNullable!103)))))

(assert (= (and d!462272 res!695899) b!1560387))

(assert (=> b!1560387 m!1831994))

(assert (=> start!144796 d!462272))

(declare-fun e!1001828 () Bool)

(declare-fun tp!458841 () Bool)

(declare-fun tp!458840 () Bool)

(declare-fun b!1560396 () Bool)

(assert (=> b!1560396 (= e!1001828 (and (inv!22218 (left!13728 (c!253097 totalInput!568))) tp!458840 (inv!22218 (right!14058 (c!253097 totalInput!568))) tp!458841))))

(declare-fun b!1560398 () Bool)

(declare-fun e!1001827 () Bool)

(declare-fun tp!458842 () Bool)

(assert (=> b!1560398 (= e!1001827 tp!458842)))

(declare-fun b!1560397 () Bool)

(declare-fun inv!22226 (IArray!11171) Bool)

(assert (=> b!1560397 (= e!1001828 (and (inv!22226 (xs!8383 (c!253097 totalInput!568))) e!1001827))))

(assert (=> b!1560195 (= tp!458823 (and (inv!22218 (c!253097 totalInput!568)) e!1001828))))

(assert (= (and b!1560195 ((_ is Node!5583) (c!253097 totalInput!568))) b!1560396))

(assert (= b!1560397 b!1560398))

(assert (= (and b!1560195 ((_ is Leaf!8275) (c!253097 totalInput!568))) b!1560397))

(declare-fun m!1832078 () Bool)

(assert (=> b!1560396 m!1832078))

(declare-fun m!1832080 () Bool)

(assert (=> b!1560396 m!1832080))

(declare-fun m!1832082 () Bool)

(assert (=> b!1560397 m!1832082))

(assert (=> b!1560195 m!1831876))

(declare-fun e!1001837 () Bool)

(assert (=> b!1560213 (= tp!458829 e!1001837)))

(declare-fun tp_is_empty!7083 () Bool)

(declare-fun tp!458855 () Bool)

(declare-fun tp!458856 () Bool)

(declare-fun e!1001835 () Bool)

(declare-fun setRes!11132 () Bool)

(declare-fun b!1560407 () Bool)

(declare-fun inv!22227 (Context!1622) Bool)

(assert (=> b!1560407 (= e!1001837 (and tp!458855 (inv!22227 (_2!9641 (_1!9642 (h!22322 mapDefault!8595)))) e!1001835 tp_is_empty!7083 setRes!11132 tp!458856))))

(declare-fun condSetEmpty!11132 () Bool)

(assert (=> b!1560407 (= condSetEmpty!11132 (= (_2!9642 (h!22322 mapDefault!8595)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun setIsEmpty!11132 () Bool)

(assert (=> setIsEmpty!11132 setRes!11132))

(declare-fun b!1560408 () Bool)

(declare-fun tp!458854 () Bool)

(assert (=> b!1560408 (= e!1001835 tp!458854)))

(declare-fun b!1560409 () Bool)

(declare-fun e!1001836 () Bool)

(declare-fun tp!458857 () Bool)

(assert (=> b!1560409 (= e!1001836 tp!458857)))

(declare-fun setNonEmpty!11132 () Bool)

(declare-fun setElem!11132 () Context!1622)

(declare-fun tp!458853 () Bool)

(assert (=> setNonEmpty!11132 (= setRes!11132 (and tp!458853 (inv!22227 setElem!11132) e!1001836))))

(declare-fun setRest!11132 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11132 (= (_2!9642 (h!22322 mapDefault!8595)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11132 true) setRest!11132))))

(assert (= b!1560407 b!1560408))

(assert (= (and b!1560407 condSetEmpty!11132) setIsEmpty!11132))

(assert (= (and b!1560407 (not condSetEmpty!11132)) setNonEmpty!11132))

(assert (= setNonEmpty!11132 b!1560409))

(assert (= (and b!1560213 ((_ is Cons!16921) mapDefault!8595)) b!1560407))

(declare-fun m!1832084 () Bool)

(assert (=> b!1560407 m!1832084))

(declare-fun m!1832086 () Bool)

(assert (=> setNonEmpty!11132 m!1832086))

(declare-fun setIsEmpty!11135 () Bool)

(declare-fun setRes!11135 () Bool)

(assert (=> setIsEmpty!11135 setRes!11135))

(declare-fun setElem!11135 () Context!1622)

(declare-fun setNonEmpty!11135 () Bool)

(declare-fun tp!458869 () Bool)

(declare-fun e!1001845 () Bool)

(assert (=> setNonEmpty!11135 (= setRes!11135 (and tp!458869 (inv!22227 setElem!11135) e!1001845))))

(declare-fun setRest!11135 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11135 (= (_2!9644 (h!22323 (zeroValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11135 true) setRest!11135))))

(declare-fun b!1560418 () Bool)

(declare-fun tp!458867 () Bool)

(assert (=> b!1560418 (= e!1001845 tp!458867)))

(declare-fun e!1001844 () Bool)

(assert (=> b!1560193 (= tp!458818 e!1001844)))

(declare-fun tp!458868 () Bool)

(declare-fun e!1001846 () Bool)

(declare-fun b!1560419 () Bool)

(assert (=> b!1560419 (= e!1001844 (and (inv!22227 (_1!9643 (_1!9644 (h!22323 (zeroValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))))) e!1001846 tp_is_empty!7083 setRes!11135 tp!458868))))

(declare-fun condSetEmpty!11135 () Bool)

(assert (=> b!1560419 (= condSetEmpty!11135 (= (_2!9644 (h!22323 (zeroValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560420 () Bool)

(declare-fun tp!458866 () Bool)

(assert (=> b!1560420 (= e!1001846 tp!458866)))

(assert (= b!1560419 b!1560420))

(assert (= (and b!1560419 condSetEmpty!11135) setIsEmpty!11135))

(assert (= (and b!1560419 (not condSetEmpty!11135)) setNonEmpty!11135))

(assert (= setNonEmpty!11135 b!1560418))

(assert (= (and b!1560193 ((_ is Cons!16922) (zeroValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))) b!1560419))

(declare-fun m!1832088 () Bool)

(assert (=> setNonEmpty!11135 m!1832088))

(declare-fun m!1832090 () Bool)

(assert (=> b!1560419 m!1832090))

(declare-fun setIsEmpty!11136 () Bool)

(declare-fun setRes!11136 () Bool)

(assert (=> setIsEmpty!11136 setRes!11136))

(declare-fun tp!458873 () Bool)

(declare-fun setElem!11136 () Context!1622)

(declare-fun e!1001848 () Bool)

(declare-fun setNonEmpty!11136 () Bool)

(assert (=> setNonEmpty!11136 (= setRes!11136 (and tp!458873 (inv!22227 setElem!11136) e!1001848))))

(declare-fun setRest!11136 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11136 (= (_2!9644 (h!22323 (minValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11136 true) setRest!11136))))

(declare-fun b!1560421 () Bool)

(declare-fun tp!458871 () Bool)

(assert (=> b!1560421 (= e!1001848 tp!458871)))

(declare-fun e!1001847 () Bool)

(assert (=> b!1560193 (= tp!458804 e!1001847)))

(declare-fun b!1560422 () Bool)

(declare-fun tp!458872 () Bool)

(declare-fun e!1001849 () Bool)

(assert (=> b!1560422 (= e!1001847 (and (inv!22227 (_1!9643 (_1!9644 (h!22323 (minValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))))) e!1001849 tp_is_empty!7083 setRes!11136 tp!458872))))

(declare-fun condSetEmpty!11136 () Bool)

(assert (=> b!1560422 (= condSetEmpty!11136 (= (_2!9644 (h!22323 (minValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560423 () Bool)

(declare-fun tp!458870 () Bool)

(assert (=> b!1560423 (= e!1001849 tp!458870)))

(assert (= b!1560422 b!1560423))

(assert (= (and b!1560422 condSetEmpty!11136) setIsEmpty!11136))

(assert (= (and b!1560422 (not condSetEmpty!11136)) setNonEmpty!11136))

(assert (= setNonEmpty!11136 b!1560421))

(assert (= (and b!1560193 ((_ is Cons!16922) (minValue!2105 (v!23785 (underlying!3905 (v!23786 (underlying!3906 (cache!2173 cacheUp!755)))))))) b!1560422))

(declare-fun m!1832092 () Bool)

(assert (=> setNonEmpty!11136 m!1832092))

(declare-fun m!1832094 () Bool)

(assert (=> b!1560422 m!1832094))

(declare-fun b!1560430 () Bool)

(declare-fun e!1001855 () Bool)

(declare-fun setRes!11139 () Bool)

(declare-fun tp!458882 () Bool)

(assert (=> b!1560430 (= e!1001855 (and setRes!11139 tp!458882))))

(declare-fun condSetEmpty!11139 () Bool)

(assert (=> b!1560430 (= condSetEmpty!11139 (= (_1!9645 (_1!9646 (h!22324 mapDefault!8597))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560431 () Bool)

(declare-fun e!1001854 () Bool)

(declare-fun tp!458881 () Bool)

(assert (=> b!1560431 (= e!1001854 tp!458881)))

(declare-fun setIsEmpty!11139 () Bool)

(assert (=> setIsEmpty!11139 setRes!11139))

(assert (=> b!1560203 (= tp!458810 e!1001855)))

(declare-fun setNonEmpty!11139 () Bool)

(declare-fun tp!458880 () Bool)

(declare-fun setElem!11139 () Context!1622)

(assert (=> setNonEmpty!11139 (= setRes!11139 (and tp!458880 (inv!22227 setElem!11139) e!1001854))))

(declare-fun setRest!11139 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11139 (= (_1!9645 (_1!9646 (h!22324 mapDefault!8597))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11139 true) setRest!11139))))

(assert (= (and b!1560430 condSetEmpty!11139) setIsEmpty!11139))

(assert (= (and b!1560430 (not condSetEmpty!11139)) setNonEmpty!11139))

(assert (= setNonEmpty!11139 b!1560431))

(assert (= (and b!1560203 ((_ is Cons!16923) mapDefault!8597)) b!1560430))

(declare-fun m!1832096 () Bool)

(assert (=> setNonEmpty!11139 m!1832096))

(declare-fun tp!458883 () Bool)

(declare-fun b!1560432 () Bool)

(declare-fun e!1001857 () Bool)

(declare-fun tp!458884 () Bool)

(assert (=> b!1560432 (= e!1001857 (and (inv!22218 (left!13728 (c!253097 input!1676))) tp!458883 (inv!22218 (right!14058 (c!253097 input!1676))) tp!458884))))

(declare-fun b!1560434 () Bool)

(declare-fun e!1001856 () Bool)

(declare-fun tp!458885 () Bool)

(assert (=> b!1560434 (= e!1001856 tp!458885)))

(declare-fun b!1560433 () Bool)

(assert (=> b!1560433 (= e!1001857 (and (inv!22226 (xs!8383 (c!253097 input!1676))) e!1001856))))

(assert (=> b!1560185 (= tp!458821 (and (inv!22218 (c!253097 input!1676)) e!1001857))))

(assert (= (and b!1560185 ((_ is Node!5583) (c!253097 input!1676))) b!1560432))

(assert (= b!1560433 b!1560434))

(assert (= (and b!1560185 ((_ is Leaf!8275) (c!253097 input!1676))) b!1560433))

(declare-fun m!1832098 () Bool)

(assert (=> b!1560432 m!1832098))

(declare-fun m!1832100 () Bool)

(assert (=> b!1560432 m!1832100))

(declare-fun m!1832102 () Bool)

(assert (=> b!1560433 m!1832102))

(assert (=> b!1560185 m!1831834))

(declare-fun setIsEmpty!11144 () Bool)

(declare-fun setRes!11144 () Bool)

(assert (=> setIsEmpty!11144 setRes!11144))

(declare-fun b!1560445 () Bool)

(declare-fun e!1001868 () Bool)

(declare-fun tp!458905 () Bool)

(assert (=> b!1560445 (= e!1001868 (and setRes!11144 tp!458905))))

(declare-fun condSetEmpty!11145 () Bool)

(declare-fun mapDefault!8600 () List!16991)

(assert (=> b!1560445 (= condSetEmpty!11145 (= (_1!9645 (_1!9646 (h!22324 mapDefault!8600))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun setRes!11145 () Bool)

(declare-fun e!1001869 () Bool)

(declare-fun setNonEmpty!11144 () Bool)

(declare-fun setElem!11144 () Context!1622)

(declare-fun tp!458901 () Bool)

(assert (=> setNonEmpty!11144 (= setRes!11145 (and tp!458901 (inv!22227 setElem!11144) e!1001869))))

(declare-fun mapValue!8600 () List!16991)

(declare-fun setRest!11145 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11144 (= (_1!9645 (_1!9646 (h!22324 mapValue!8600))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11144 true) setRest!11145))))

(declare-fun b!1560446 () Bool)

(declare-fun tp!458902 () Bool)

(assert (=> b!1560446 (= e!1001869 tp!458902)))

(declare-fun setIsEmpty!11145 () Bool)

(assert (=> setIsEmpty!11145 setRes!11145))

(declare-fun mapNonEmpty!8600 () Bool)

(declare-fun mapRes!8600 () Bool)

(declare-fun tp!458904 () Bool)

(declare-fun e!1001867 () Bool)

(assert (=> mapNonEmpty!8600 (= mapRes!8600 (and tp!458904 e!1001867))))

(declare-fun mapRest!8600 () (Array (_ BitVec 32) List!16991))

(declare-fun mapKey!8600 () (_ BitVec 32))

(assert (=> mapNonEmpty!8600 (= mapRest!8596 (store mapRest!8600 mapKey!8600 mapValue!8600))))

(declare-fun b!1560447 () Bool)

(declare-fun e!1001866 () Bool)

(declare-fun tp!458906 () Bool)

(assert (=> b!1560447 (= e!1001866 tp!458906)))

(declare-fun mapIsEmpty!8600 () Bool)

(assert (=> mapIsEmpty!8600 mapRes!8600))

(declare-fun b!1560448 () Bool)

(declare-fun tp!458903 () Bool)

(assert (=> b!1560448 (= e!1001867 (and setRes!11145 tp!458903))))

(declare-fun condSetEmpty!11144 () Bool)

(assert (=> b!1560448 (= condSetEmpty!11144 (= (_1!9645 (_1!9646 (h!22324 mapValue!8600))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun setNonEmpty!11145 () Bool)

(declare-fun tp!458900 () Bool)

(declare-fun setElem!11145 () Context!1622)

(assert (=> setNonEmpty!11145 (= setRes!11144 (and tp!458900 (inv!22227 setElem!11145) e!1001866))))

(declare-fun setRest!11144 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11145 (= (_1!9645 (_1!9646 (h!22324 mapDefault!8600))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11145 true) setRest!11144))))

(declare-fun condMapEmpty!8600 () Bool)

(assert (=> mapNonEmpty!8595 (= condMapEmpty!8600 (= mapRest!8596 ((as const (Array (_ BitVec 32) List!16991)) mapDefault!8600)))))

(assert (=> mapNonEmpty!8595 (= tp!458808 (and e!1001868 mapRes!8600))))

(assert (= (and mapNonEmpty!8595 condMapEmpty!8600) mapIsEmpty!8600))

(assert (= (and mapNonEmpty!8595 (not condMapEmpty!8600)) mapNonEmpty!8600))

(assert (= (and b!1560448 condSetEmpty!11144) setIsEmpty!11145))

(assert (= (and b!1560448 (not condSetEmpty!11144)) setNonEmpty!11144))

(assert (= setNonEmpty!11144 b!1560446))

(assert (= (and mapNonEmpty!8600 ((_ is Cons!16923) mapValue!8600)) b!1560448))

(assert (= (and b!1560445 condSetEmpty!11145) setIsEmpty!11144))

(assert (= (and b!1560445 (not condSetEmpty!11145)) setNonEmpty!11145))

(assert (= setNonEmpty!11145 b!1560447))

(assert (= (and mapNonEmpty!8595 ((_ is Cons!16923) mapDefault!8600)) b!1560445))

(declare-fun m!1832104 () Bool)

(assert (=> setNonEmpty!11144 m!1832104))

(declare-fun m!1832106 () Bool)

(assert (=> mapNonEmpty!8600 m!1832106))

(declare-fun m!1832108 () Bool)

(assert (=> setNonEmpty!11145 m!1832108))

(declare-fun b!1560449 () Bool)

(declare-fun e!1001871 () Bool)

(declare-fun setRes!11146 () Bool)

(declare-fun tp!458909 () Bool)

(assert (=> b!1560449 (= e!1001871 (and setRes!11146 tp!458909))))

(declare-fun condSetEmpty!11146 () Bool)

(assert (=> b!1560449 (= condSetEmpty!11146 (= (_1!9645 (_1!9646 (h!22324 mapValue!8595))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560450 () Bool)

(declare-fun e!1001870 () Bool)

(declare-fun tp!458908 () Bool)

(assert (=> b!1560450 (= e!1001870 tp!458908)))

(declare-fun setIsEmpty!11146 () Bool)

(assert (=> setIsEmpty!11146 setRes!11146))

(assert (=> mapNonEmpty!8595 (= tp!458827 e!1001871)))

(declare-fun tp!458907 () Bool)

(declare-fun setElem!11146 () Context!1622)

(declare-fun setNonEmpty!11146 () Bool)

(assert (=> setNonEmpty!11146 (= setRes!11146 (and tp!458907 (inv!22227 setElem!11146) e!1001870))))

(declare-fun setRest!11146 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11146 (= (_1!9645 (_1!9646 (h!22324 mapValue!8595))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11146 true) setRest!11146))))

(assert (= (and b!1560449 condSetEmpty!11146) setIsEmpty!11146))

(assert (= (and b!1560449 (not condSetEmpty!11146)) setNonEmpty!11146))

(assert (= setNonEmpty!11146 b!1560450))

(assert (= (and mapNonEmpty!8595 ((_ is Cons!16923) mapValue!8595)) b!1560449))

(declare-fun m!1832110 () Bool)

(assert (=> setNonEmpty!11146 m!1832110))

(declare-fun setIsEmpty!11147 () Bool)

(declare-fun setRes!11147 () Bool)

(assert (=> setIsEmpty!11147 setRes!11147))

(declare-fun tp!458913 () Bool)

(declare-fun e!1001873 () Bool)

(declare-fun setElem!11147 () Context!1622)

(declare-fun setNonEmpty!11147 () Bool)

(assert (=> setNonEmpty!11147 (= setRes!11147 (and tp!458913 (inv!22227 setElem!11147) e!1001873))))

(declare-fun setRest!11147 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11147 (= (_2!9644 (h!22323 mapDefault!8596)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11147 true) setRest!11147))))

(declare-fun b!1560451 () Bool)

(declare-fun tp!458911 () Bool)

(assert (=> b!1560451 (= e!1001873 tp!458911)))

(declare-fun e!1001872 () Bool)

(assert (=> b!1560181 (= tp!458817 e!1001872)))

(declare-fun tp!458912 () Bool)

(declare-fun b!1560452 () Bool)

(declare-fun e!1001874 () Bool)

(assert (=> b!1560452 (= e!1001872 (and (inv!22227 (_1!9643 (_1!9644 (h!22323 mapDefault!8596)))) e!1001874 tp_is_empty!7083 setRes!11147 tp!458912))))

(declare-fun condSetEmpty!11147 () Bool)

(assert (=> b!1560452 (= condSetEmpty!11147 (= (_2!9644 (h!22323 mapDefault!8596)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560453 () Bool)

(declare-fun tp!458910 () Bool)

(assert (=> b!1560453 (= e!1001874 tp!458910)))

(assert (= b!1560452 b!1560453))

(assert (= (and b!1560452 condSetEmpty!11147) setIsEmpty!11147))

(assert (= (and b!1560452 (not condSetEmpty!11147)) setNonEmpty!11147))

(assert (= setNonEmpty!11147 b!1560451))

(assert (= (and b!1560181 ((_ is Cons!16922) mapDefault!8596)) b!1560452))

(declare-fun m!1832112 () Bool)

(assert (=> setNonEmpty!11147 m!1832112))

(declare-fun m!1832114 () Bool)

(assert (=> b!1560452 m!1832114))

(declare-fun setIsEmpty!11152 () Bool)

(declare-fun setRes!11153 () Bool)

(assert (=> setIsEmpty!11152 setRes!11153))

(declare-fun b!1560468 () Bool)

(declare-fun e!1001887 () Bool)

(declare-fun tp!458937 () Bool)

(assert (=> b!1560468 (= e!1001887 tp!458937)))

(declare-fun b!1560469 () Bool)

(declare-fun e!1001891 () Bool)

(declare-fun tp!458932 () Bool)

(assert (=> b!1560469 (= e!1001891 tp!458932)))

(declare-fun setRes!11152 () Bool)

(declare-fun e!1001892 () Bool)

(declare-fun setNonEmpty!11152 () Bool)

(declare-fun tp!458936 () Bool)

(declare-fun setElem!11153 () Context!1622)

(assert (=> setNonEmpty!11152 (= setRes!11152 (and tp!458936 (inv!22227 setElem!11153) e!1001892))))

(declare-fun mapDefault!8603 () List!16990)

(declare-fun setRest!11153 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11152 (= (_2!9644 (h!22323 mapDefault!8603)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11153 true) setRest!11153))))

(declare-fun condMapEmpty!8603 () Bool)

(assert (=> mapNonEmpty!8597 (= condMapEmpty!8603 (= mapRest!8595 ((as const (Array (_ BitVec 32) List!16990)) mapDefault!8603)))))

(declare-fun e!1001890 () Bool)

(declare-fun mapRes!8603 () Bool)

(assert (=> mapNonEmpty!8597 (= tp!458819 (and e!1001890 mapRes!8603))))

(declare-fun b!1560470 () Bool)

(declare-fun e!1001888 () Bool)

(declare-fun tp!458934 () Bool)

(assert (=> b!1560470 (= e!1001888 tp!458934)))

(declare-fun tp!458935 () Bool)

(declare-fun setElem!11152 () Context!1622)

(declare-fun setNonEmpty!11153 () Bool)

(assert (=> setNonEmpty!11153 (= setRes!11153 (and tp!458935 (inv!22227 setElem!11152) e!1001891))))

(declare-fun mapValue!8603 () List!16990)

(declare-fun setRest!11152 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11153 (= (_2!9644 (h!22323 mapValue!8603)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11152 true) setRest!11152))))

(declare-fun b!1560471 () Bool)

(declare-fun e!1001889 () Bool)

(declare-fun tp!458938 () Bool)

(assert (=> b!1560471 (= e!1001889 (and (inv!22227 (_1!9643 (_1!9644 (h!22323 mapValue!8603)))) e!1001887 tp_is_empty!7083 setRes!11153 tp!458938))))

(declare-fun condSetEmpty!11153 () Bool)

(assert (=> b!1560471 (= condSetEmpty!11153 (= (_2!9644 (h!22323 mapValue!8603)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560472 () Bool)

(declare-fun tp!458940 () Bool)

(assert (=> b!1560472 (= e!1001892 tp!458940)))

(declare-fun setIsEmpty!11153 () Bool)

(assert (=> setIsEmpty!11153 setRes!11152))

(declare-fun mapIsEmpty!8603 () Bool)

(assert (=> mapIsEmpty!8603 mapRes!8603))

(declare-fun b!1560473 () Bool)

(declare-fun tp!458933 () Bool)

(assert (=> b!1560473 (= e!1001890 (and (inv!22227 (_1!9643 (_1!9644 (h!22323 mapDefault!8603)))) e!1001888 tp_is_empty!7083 setRes!11152 tp!458933))))

(declare-fun condSetEmpty!11152 () Bool)

(assert (=> b!1560473 (= condSetEmpty!11152 (= (_2!9644 (h!22323 mapDefault!8603)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun mapNonEmpty!8603 () Bool)

(declare-fun tp!458939 () Bool)

(assert (=> mapNonEmpty!8603 (= mapRes!8603 (and tp!458939 e!1001889))))

(declare-fun mapKey!8603 () (_ BitVec 32))

(declare-fun mapRest!8603 () (Array (_ BitVec 32) List!16990))

(assert (=> mapNonEmpty!8603 (= mapRest!8595 (store mapRest!8603 mapKey!8603 mapValue!8603))))

(assert (= (and mapNonEmpty!8597 condMapEmpty!8603) mapIsEmpty!8603))

(assert (= (and mapNonEmpty!8597 (not condMapEmpty!8603)) mapNonEmpty!8603))

(assert (= b!1560471 b!1560468))

(assert (= (and b!1560471 condSetEmpty!11153) setIsEmpty!11152))

(assert (= (and b!1560471 (not condSetEmpty!11153)) setNonEmpty!11153))

(assert (= setNonEmpty!11153 b!1560469))

(assert (= (and mapNonEmpty!8603 ((_ is Cons!16922) mapValue!8603)) b!1560471))

(assert (= b!1560473 b!1560470))

(assert (= (and b!1560473 condSetEmpty!11152) setIsEmpty!11153))

(assert (= (and b!1560473 (not condSetEmpty!11152)) setNonEmpty!11152))

(assert (= setNonEmpty!11152 b!1560472))

(assert (= (and mapNonEmpty!8597 ((_ is Cons!16922) mapDefault!8603)) b!1560473))

(declare-fun m!1832116 () Bool)

(assert (=> setNonEmpty!11152 m!1832116))

(declare-fun m!1832118 () Bool)

(assert (=> mapNonEmpty!8603 m!1832118))

(declare-fun m!1832120 () Bool)

(assert (=> b!1560471 m!1832120))

(declare-fun m!1832122 () Bool)

(assert (=> b!1560473 m!1832122))

(declare-fun m!1832124 () Bool)

(assert (=> setNonEmpty!11153 m!1832124))

(declare-fun setIsEmpty!11154 () Bool)

(declare-fun setRes!11154 () Bool)

(assert (=> setIsEmpty!11154 setRes!11154))

(declare-fun tp!458944 () Bool)

(declare-fun e!1001894 () Bool)

(declare-fun setElem!11154 () Context!1622)

(declare-fun setNonEmpty!11154 () Bool)

(assert (=> setNonEmpty!11154 (= setRes!11154 (and tp!458944 (inv!22227 setElem!11154) e!1001894))))

(declare-fun setRest!11154 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11154 (= (_2!9644 (h!22323 mapValue!8596)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11154 true) setRest!11154))))

(declare-fun b!1560474 () Bool)

(declare-fun tp!458942 () Bool)

(assert (=> b!1560474 (= e!1001894 tp!458942)))

(declare-fun e!1001893 () Bool)

(assert (=> mapNonEmpty!8597 (= tp!458825 e!1001893)))

(declare-fun b!1560475 () Bool)

(declare-fun tp!458943 () Bool)

(declare-fun e!1001895 () Bool)

(assert (=> b!1560475 (= e!1001893 (and (inv!22227 (_1!9643 (_1!9644 (h!22323 mapValue!8596)))) e!1001895 tp_is_empty!7083 setRes!11154 tp!458943))))

(declare-fun condSetEmpty!11154 () Bool)

(assert (=> b!1560475 (= condSetEmpty!11154 (= (_2!9644 (h!22323 mapValue!8596)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560476 () Bool)

(declare-fun tp!458941 () Bool)

(assert (=> b!1560476 (= e!1001895 tp!458941)))

(assert (= b!1560475 b!1560476))

(assert (= (and b!1560475 condSetEmpty!11154) setIsEmpty!11154))

(assert (= (and b!1560475 (not condSetEmpty!11154)) setNonEmpty!11154))

(assert (= setNonEmpty!11154 b!1560474))

(assert (= (and mapNonEmpty!8597 ((_ is Cons!16922) mapValue!8596)) b!1560475))

(declare-fun m!1832126 () Bool)

(assert (=> setNonEmpty!11154 m!1832126))

(declare-fun m!1832128 () Bool)

(assert (=> b!1560475 m!1832128))

(declare-fun e!1001898 () Bool)

(assert (=> b!1560215 (= tp!458805 e!1001898)))

(declare-fun tp!458947 () Bool)

(declare-fun setRes!11155 () Bool)

(declare-fun tp!458948 () Bool)

(declare-fun e!1001896 () Bool)

(declare-fun b!1560477 () Bool)

(assert (=> b!1560477 (= e!1001898 (and tp!458947 (inv!22227 (_2!9641 (_1!9642 (h!22322 (zeroValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))))) e!1001896 tp_is_empty!7083 setRes!11155 tp!458948))))

(declare-fun condSetEmpty!11155 () Bool)

(assert (=> b!1560477 (= condSetEmpty!11155 (= (_2!9642 (h!22322 (zeroValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun setIsEmpty!11155 () Bool)

(assert (=> setIsEmpty!11155 setRes!11155))

(declare-fun b!1560478 () Bool)

(declare-fun tp!458946 () Bool)

(assert (=> b!1560478 (= e!1001896 tp!458946)))

(declare-fun b!1560479 () Bool)

(declare-fun e!1001897 () Bool)

(declare-fun tp!458949 () Bool)

(assert (=> b!1560479 (= e!1001897 tp!458949)))

(declare-fun tp!458945 () Bool)

(declare-fun setElem!11155 () Context!1622)

(declare-fun setNonEmpty!11155 () Bool)

(assert (=> setNonEmpty!11155 (= setRes!11155 (and tp!458945 (inv!22227 setElem!11155) e!1001897))))

(declare-fun setRest!11155 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11155 (= (_2!9642 (h!22322 (zeroValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11155 true) setRest!11155))))

(assert (= b!1560477 b!1560478))

(assert (= (and b!1560477 condSetEmpty!11155) setIsEmpty!11155))

(assert (= (and b!1560477 (not condSetEmpty!11155)) setNonEmpty!11155))

(assert (= setNonEmpty!11155 b!1560479))

(assert (= (and b!1560215 ((_ is Cons!16921) (zeroValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))) b!1560477))

(declare-fun m!1832130 () Bool)

(assert (=> b!1560477 m!1832130))

(declare-fun m!1832132 () Bool)

(assert (=> setNonEmpty!11155 m!1832132))

(declare-fun e!1001901 () Bool)

(assert (=> b!1560215 (= tp!458812 e!1001901)))

(declare-fun tp!458953 () Bool)

(declare-fun e!1001899 () Bool)

(declare-fun setRes!11156 () Bool)

(declare-fun b!1560480 () Bool)

(declare-fun tp!458952 () Bool)

(assert (=> b!1560480 (= e!1001901 (and tp!458952 (inv!22227 (_2!9641 (_1!9642 (h!22322 (minValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))))) e!1001899 tp_is_empty!7083 setRes!11156 tp!458953))))

(declare-fun condSetEmpty!11156 () Bool)

(assert (=> b!1560480 (= condSetEmpty!11156 (= (_2!9642 (h!22322 (minValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun setIsEmpty!11156 () Bool)

(assert (=> setIsEmpty!11156 setRes!11156))

(declare-fun b!1560481 () Bool)

(declare-fun tp!458951 () Bool)

(assert (=> b!1560481 (= e!1001899 tp!458951)))

(declare-fun b!1560482 () Bool)

(declare-fun e!1001900 () Bool)

(declare-fun tp!458954 () Bool)

(assert (=> b!1560482 (= e!1001900 tp!458954)))

(declare-fun setElem!11156 () Context!1622)

(declare-fun setNonEmpty!11156 () Bool)

(declare-fun tp!458950 () Bool)

(assert (=> setNonEmpty!11156 (= setRes!11156 (and tp!458950 (inv!22227 setElem!11156) e!1001900))))

(declare-fun setRest!11156 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11156 (= (_2!9642 (h!22322 (minValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11156 true) setRest!11156))))

(assert (= b!1560480 b!1560481))

(assert (= (and b!1560480 condSetEmpty!11156) setIsEmpty!11156))

(assert (= (and b!1560480 (not condSetEmpty!11156)) setNonEmpty!11156))

(assert (= setNonEmpty!11156 b!1560482))

(assert (= (and b!1560215 ((_ is Cons!16921) (minValue!2104 (v!23783 (underlying!3903 (v!23784 (underlying!3904 (cache!2172 cacheDown!768)))))))) b!1560480))

(declare-fun m!1832134 () Bool)

(assert (=> b!1560480 m!1832134))

(declare-fun m!1832136 () Bool)

(assert (=> setNonEmpty!11156 m!1832136))

(declare-fun b!1560483 () Bool)

(declare-fun e!1001903 () Bool)

(declare-fun setRes!11157 () Bool)

(declare-fun tp!458957 () Bool)

(assert (=> b!1560483 (= e!1001903 (and setRes!11157 tp!458957))))

(declare-fun condSetEmpty!11157 () Bool)

(assert (=> b!1560483 (= condSetEmpty!11157 (= (_1!9645 (_1!9646 (h!22324 (zeroValue!2106 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560484 () Bool)

(declare-fun e!1001902 () Bool)

(declare-fun tp!458956 () Bool)

(assert (=> b!1560484 (= e!1001902 tp!458956)))

(declare-fun setIsEmpty!11157 () Bool)

(assert (=> setIsEmpty!11157 setRes!11157))

(assert (=> b!1560188 (= tp!458814 e!1001903)))

(declare-fun setElem!11157 () Context!1622)

(declare-fun tp!458955 () Bool)

(declare-fun setNonEmpty!11157 () Bool)

(assert (=> setNonEmpty!11157 (= setRes!11157 (and tp!458955 (inv!22227 setElem!11157) e!1001902))))

(declare-fun setRest!11157 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11157 (= (_1!9645 (_1!9646 (h!22324 (zeroValue!2106 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11157 true) setRest!11157))))

(assert (= (and b!1560483 condSetEmpty!11157) setIsEmpty!11157))

(assert (= (and b!1560483 (not condSetEmpty!11157)) setNonEmpty!11157))

(assert (= setNonEmpty!11157 b!1560484))

(assert (= (and b!1560188 ((_ is Cons!16923) (zeroValue!2106 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103)))))))) b!1560483))

(declare-fun m!1832138 () Bool)

(assert (=> setNonEmpty!11157 m!1832138))

(declare-fun b!1560485 () Bool)

(declare-fun e!1001905 () Bool)

(declare-fun setRes!11158 () Bool)

(declare-fun tp!458960 () Bool)

(assert (=> b!1560485 (= e!1001905 (and setRes!11158 tp!458960))))

(declare-fun condSetEmpty!11158 () Bool)

(assert (=> b!1560485 (= condSetEmpty!11158 (= (_1!9645 (_1!9646 (h!22324 (minValue!2106 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))))) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun b!1560486 () Bool)

(declare-fun e!1001904 () Bool)

(declare-fun tp!458959 () Bool)

(assert (=> b!1560486 (= e!1001904 tp!458959)))

(declare-fun setIsEmpty!11158 () Bool)

(assert (=> setIsEmpty!11158 setRes!11158))

(assert (=> b!1560188 (= tp!458815 e!1001905)))

(declare-fun tp!458958 () Bool)

(declare-fun setNonEmpty!11158 () Bool)

(declare-fun setElem!11158 () Context!1622)

(assert (=> setNonEmpty!11158 (= setRes!11158 (and tp!458958 (inv!22227 setElem!11158) e!1001904))))

(declare-fun setRest!11158 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11158 (= (_1!9645 (_1!9646 (h!22324 (minValue!2106 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11158 true) setRest!11158))))

(assert (= (and b!1560485 condSetEmpty!11158) setIsEmpty!11158))

(assert (= (and b!1560485 (not condSetEmpty!11158)) setNonEmpty!11158))

(assert (= setNonEmpty!11158 b!1560486))

(assert (= (and b!1560188 ((_ is Cons!16923) (minValue!2106 (v!23787 (underlying!3907 (v!23788 (underlying!3908 (cache!2174 cacheFurthestNullable!103)))))))) b!1560485))

(declare-fun m!1832140 () Bool)

(assert (=> setNonEmpty!11158 m!1832140))

(declare-fun b!1560497 () Bool)

(declare-fun e!1001908 () Bool)

(assert (=> b!1560497 (= e!1001908 tp_is_empty!7083)))

(declare-fun b!1560500 () Bool)

(declare-fun tp!458972 () Bool)

(declare-fun tp!458975 () Bool)

(assert (=> b!1560500 (= e!1001908 (and tp!458972 tp!458975))))

(declare-fun b!1560498 () Bool)

(declare-fun tp!458973 () Bool)

(declare-fun tp!458971 () Bool)

(assert (=> b!1560498 (= e!1001908 (and tp!458973 tp!458971))))

(declare-fun b!1560499 () Bool)

(declare-fun tp!458974 () Bool)

(assert (=> b!1560499 (= e!1001908 tp!458974)))

(assert (=> b!1560216 (= tp!458828 e!1001908)))

(assert (= (and b!1560216 ((_ is ElementMatch!4293) (regex!2965 rule!240))) b!1560497))

(assert (= (and b!1560216 ((_ is Concat!7349) (regex!2965 rule!240))) b!1560498))

(assert (= (and b!1560216 ((_ is Star!4293) (regex!2965 rule!240))) b!1560499))

(assert (= (and b!1560216 ((_ is Union!4293) (regex!2965 rule!240))) b!1560500))

(declare-fun tp!458977 () Bool)

(declare-fun e!1001910 () Bool)

(declare-fun tp!458976 () Bool)

(declare-fun b!1560501 () Bool)

(assert (=> b!1560501 (= e!1001910 (and (inv!22218 (left!13728 (c!253097 (totalInput!2494 cacheFurthestNullable!103)))) tp!458976 (inv!22218 (right!14058 (c!253097 (totalInput!2494 cacheFurthestNullable!103)))) tp!458977))))

(declare-fun b!1560503 () Bool)

(declare-fun e!1001909 () Bool)

(declare-fun tp!458978 () Bool)

(assert (=> b!1560503 (= e!1001909 tp!458978)))

(declare-fun b!1560502 () Bool)

(assert (=> b!1560502 (= e!1001910 (and (inv!22226 (xs!8383 (c!253097 (totalInput!2494 cacheFurthestNullable!103)))) e!1001909))))

(assert (=> b!1560199 (= tp!458811 (and (inv!22218 (c!253097 (totalInput!2494 cacheFurthestNullable!103))) e!1001910))))

(assert (= (and b!1560199 ((_ is Node!5583) (c!253097 (totalInput!2494 cacheFurthestNullable!103)))) b!1560501))

(assert (= b!1560502 b!1560503))

(assert (= (and b!1560199 ((_ is Leaf!8275) (c!253097 (totalInput!2494 cacheFurthestNullable!103)))) b!1560502))

(declare-fun m!1832142 () Bool)

(assert (=> b!1560501 m!1832142))

(declare-fun m!1832144 () Bool)

(assert (=> b!1560501 m!1832144))

(declare-fun m!1832146 () Bool)

(assert (=> b!1560502 m!1832146))

(assert (=> b!1560199 m!1831824))

(declare-fun e!1001924 () Bool)

(declare-fun setRes!11163 () Bool)

(declare-fun setElem!11164 () Context!1622)

(declare-fun tp!459009 () Bool)

(declare-fun setNonEmpty!11163 () Bool)

(assert (=> setNonEmpty!11163 (= setRes!11163 (and tp!459009 (inv!22227 setElem!11164) e!1001924))))

(declare-fun mapDefault!8606 () List!16989)

(declare-fun setRest!11163 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11163 (= (_2!9642 (h!22322 mapDefault!8606)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11164 true) setRest!11163))))

(declare-fun setRes!11164 () Bool)

(declare-fun e!1001927 () Bool)

(declare-fun tp!459006 () Bool)

(declare-fun setElem!11163 () Context!1622)

(declare-fun setNonEmpty!11164 () Bool)

(assert (=> setNonEmpty!11164 (= setRes!11164 (and tp!459006 (inv!22227 setElem!11163) e!1001927))))

(declare-fun mapValue!8606 () List!16989)

(declare-fun setRest!11164 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11164 (= (_2!9642 (h!22322 mapValue!8606)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11163 true) setRest!11164))))

(declare-fun b!1560518 () Bool)

(declare-fun tp!459010 () Bool)

(assert (=> b!1560518 (= e!1001927 tp!459010)))

(declare-fun b!1560519 () Bool)

(declare-fun tp!459001 () Bool)

(declare-fun e!1001928 () Bool)

(declare-fun e!1001925 () Bool)

(declare-fun tp!459003 () Bool)

(assert (=> b!1560519 (= e!1001925 (and tp!459003 (inv!22227 (_2!9641 (_1!9642 (h!22322 mapValue!8606)))) e!1001928 tp_is_empty!7083 setRes!11164 tp!459001))))

(declare-fun condSetEmpty!11163 () Bool)

(assert (=> b!1560519 (= condSetEmpty!11163 (= (_2!9642 (h!22322 mapValue!8606)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun condMapEmpty!8606 () Bool)

(assert (=> mapNonEmpty!8596 (= condMapEmpty!8606 (= mapRest!8597 ((as const (Array (_ BitVec 32) List!16989)) mapDefault!8606)))))

(declare-fun e!1001926 () Bool)

(declare-fun mapRes!8606 () Bool)

(assert (=> mapNonEmpty!8596 (= tp!458816 (and e!1001926 mapRes!8606))))

(declare-fun mapNonEmpty!8606 () Bool)

(declare-fun tp!459008 () Bool)

(assert (=> mapNonEmpty!8606 (= mapRes!8606 (and tp!459008 e!1001925))))

(declare-fun mapRest!8606 () (Array (_ BitVec 32) List!16989))

(declare-fun mapKey!8606 () (_ BitVec 32))

(assert (=> mapNonEmpty!8606 (= mapRest!8597 (store mapRest!8606 mapKey!8606 mapValue!8606))))

(declare-fun setIsEmpty!11163 () Bool)

(assert (=> setIsEmpty!11163 setRes!11164))

(declare-fun b!1560520 () Bool)

(declare-fun tp!459005 () Bool)

(assert (=> b!1560520 (= e!1001924 tp!459005)))

(declare-fun mapIsEmpty!8606 () Bool)

(assert (=> mapIsEmpty!8606 mapRes!8606))

(declare-fun b!1560521 () Bool)

(declare-fun tp!459004 () Bool)

(assert (=> b!1560521 (= e!1001928 tp!459004)))

(declare-fun setIsEmpty!11164 () Bool)

(assert (=> setIsEmpty!11164 setRes!11163))

(declare-fun b!1560522 () Bool)

(declare-fun e!1001923 () Bool)

(declare-fun tp!459011 () Bool)

(assert (=> b!1560522 (= e!1001923 tp!459011)))

(declare-fun tp!459007 () Bool)

(declare-fun b!1560523 () Bool)

(declare-fun tp!459002 () Bool)

(assert (=> b!1560523 (= e!1001926 (and tp!459002 (inv!22227 (_2!9641 (_1!9642 (h!22322 mapDefault!8606)))) e!1001923 tp_is_empty!7083 setRes!11163 tp!459007))))

(declare-fun condSetEmpty!11164 () Bool)

(assert (=> b!1560523 (= condSetEmpty!11164 (= (_2!9642 (h!22322 mapDefault!8606)) ((as const (Array Context!1622 Bool)) false)))))

(assert (= (and mapNonEmpty!8596 condMapEmpty!8606) mapIsEmpty!8606))

(assert (= (and mapNonEmpty!8596 (not condMapEmpty!8606)) mapNonEmpty!8606))

(assert (= b!1560519 b!1560521))

(assert (= (and b!1560519 condSetEmpty!11163) setIsEmpty!11163))

(assert (= (and b!1560519 (not condSetEmpty!11163)) setNonEmpty!11164))

(assert (= setNonEmpty!11164 b!1560518))

(assert (= (and mapNonEmpty!8606 ((_ is Cons!16921) mapValue!8606)) b!1560519))

(assert (= b!1560523 b!1560522))

(assert (= (and b!1560523 condSetEmpty!11164) setIsEmpty!11164))

(assert (= (and b!1560523 (not condSetEmpty!11164)) setNonEmpty!11163))

(assert (= setNonEmpty!11163 b!1560520))

(assert (= (and mapNonEmpty!8596 ((_ is Cons!16921) mapDefault!8606)) b!1560523))

(declare-fun m!1832148 () Bool)

(assert (=> setNonEmpty!11163 m!1832148))

(declare-fun m!1832150 () Bool)

(assert (=> mapNonEmpty!8606 m!1832150))

(declare-fun m!1832152 () Bool)

(assert (=> b!1560519 m!1832152))

(declare-fun m!1832154 () Bool)

(assert (=> setNonEmpty!11164 m!1832154))

(declare-fun m!1832156 () Bool)

(assert (=> b!1560523 m!1832156))

(declare-fun e!1001931 () Bool)

(assert (=> mapNonEmpty!8596 (= tp!458830 e!1001931)))

(declare-fun e!1001929 () Bool)

(declare-fun b!1560524 () Bool)

(declare-fun setRes!11165 () Bool)

(declare-fun tp!459014 () Bool)

(declare-fun tp!459015 () Bool)

(assert (=> b!1560524 (= e!1001931 (and tp!459014 (inv!22227 (_2!9641 (_1!9642 (h!22322 mapValue!8597)))) e!1001929 tp_is_empty!7083 setRes!11165 tp!459015))))

(declare-fun condSetEmpty!11165 () Bool)

(assert (=> b!1560524 (= condSetEmpty!11165 (= (_2!9642 (h!22322 mapValue!8597)) ((as const (Array Context!1622 Bool)) false)))))

(declare-fun setIsEmpty!11165 () Bool)

(assert (=> setIsEmpty!11165 setRes!11165))

(declare-fun b!1560525 () Bool)

(declare-fun tp!459013 () Bool)

(assert (=> b!1560525 (= e!1001929 tp!459013)))

(declare-fun b!1560526 () Bool)

(declare-fun e!1001930 () Bool)

(declare-fun tp!459016 () Bool)

(assert (=> b!1560526 (= e!1001930 tp!459016)))

(declare-fun setNonEmpty!11165 () Bool)

(declare-fun tp!459012 () Bool)

(declare-fun setElem!11165 () Context!1622)

(assert (=> setNonEmpty!11165 (= setRes!11165 (and tp!459012 (inv!22227 setElem!11165) e!1001930))))

(declare-fun setRest!11165 () (InoxSet Context!1622))

(assert (=> setNonEmpty!11165 (= (_2!9642 (h!22322 mapValue!8597)) ((_ map or) (store ((as const (Array Context!1622 Bool)) false) setElem!11165 true) setRest!11165))))

(assert (= b!1560524 b!1560525))

(assert (= (and b!1560524 condSetEmpty!11165) setIsEmpty!11165))

(assert (= (and b!1560524 (not condSetEmpty!11165)) setNonEmpty!11165))

(assert (= setNonEmpty!11165 b!1560526))

(assert (= (and mapNonEmpty!8596 ((_ is Cons!16921) mapValue!8597)) b!1560524))

(declare-fun m!1832158 () Bool)

(assert (=> b!1560524 m!1832158))

(declare-fun m!1832160 () Bool)

(assert (=> setNonEmpty!11165 m!1832160))

(declare-fun b_lambda!49055 () Bool)

(assert (= b_lambda!49049 (or b!1560207 b_lambda!49055)))

(declare-fun bs!388878 () Bool)

(declare-fun d!462274 () Bool)

(assert (= bs!388878 (and d!462274 b!1560207)))

(assert (=> bs!388878 (= (dynLambda!7531 lambda!66015 (seqFromList!1784 lt!540331)) (= (list!6514 (dynLambda!7532 (toChars!4202 (transformation!2965 rule!240)) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (seqFromList!1784 lt!540331)))) (list!6514 (seqFromList!1784 lt!540331))))))

(declare-fun b_lambda!49061 () Bool)

(assert (=> (not b_lambda!49061) (not bs!388878)))

(declare-fun t!141516 () Bool)

(declare-fun tb!87373 () Bool)

(assert (=> (and b!1560205 (= (toChars!4202 (transformation!2965 rule!240)) (toChars!4202 (transformation!2965 rule!240))) t!141516) tb!87373))

(declare-fun e!1001932 () Bool)

(declare-fun b!1560527 () Bool)

(declare-fun tp!459017 () Bool)

(assert (=> b!1560527 (= e!1001932 (and (inv!22218 (c!253097 (dynLambda!7532 (toChars!4202 (transformation!2965 rule!240)) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (seqFromList!1784 lt!540331))))) tp!459017))))

(declare-fun result!105644 () Bool)

(assert (=> tb!87373 (= result!105644 (and (inv!22219 (dynLambda!7532 (toChars!4202 (transformation!2965 rule!240)) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (seqFromList!1784 lt!540331)))) e!1001932))))

(assert (= tb!87373 b!1560527))

(declare-fun m!1832162 () Bool)

(assert (=> b!1560527 m!1832162))

(declare-fun m!1832164 () Bool)

(assert (=> tb!87373 m!1832164))

(assert (=> bs!388878 t!141516))

(declare-fun b_and!108921 () Bool)

(assert (= b_and!108919 (and (=> t!141516 result!105644) b_and!108921)))

(declare-fun b_lambda!49063 () Bool)

(assert (=> (not b_lambda!49063) (not bs!388878)))

(declare-fun t!141518 () Bool)

(declare-fun tb!87375 () Bool)

(assert (=> (and b!1560205 (= (toValue!4343 (transformation!2965 rule!240)) (toValue!4343 (transformation!2965 rule!240))) t!141518) tb!87375))

(declare-fun result!105646 () Bool)

(assert (=> tb!87375 (= result!105646 (inv!21 (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (seqFromList!1784 lt!540331))))))

(declare-fun m!1832166 () Bool)

(assert (=> tb!87375 m!1832166))

(assert (=> bs!388878 t!141518))

(declare-fun b_and!108923 () Bool)

(assert (= b_and!108917 (and (=> t!141518 result!105646) b_and!108923)))

(declare-fun m!1832168 () Bool)

(assert (=> bs!388878 m!1832168))

(declare-fun m!1832170 () Bool)

(assert (=> bs!388878 m!1832170))

(assert (=> bs!388878 m!1831848))

(declare-fun m!1832172 () Bool)

(assert (=> bs!388878 m!1832172))

(assert (=> bs!388878 m!1832170))

(declare-fun m!1832174 () Bool)

(assert (=> bs!388878 m!1832174))

(assert (=> bs!388878 m!1831848))

(assert (=> bs!388878 m!1832168))

(assert (=> d!462218 d!462274))

(declare-fun b_lambda!49057 () Bool)

(assert (= b_lambda!49047 (or (and b!1560205 b_free!41645) b_lambda!49057)))

(declare-fun b_lambda!49059 () Bool)

(assert (= b_lambda!49051 (or b!1560207 b_lambda!49059)))

(declare-fun bs!388879 () Bool)

(declare-fun d!462276 () Bool)

(assert (= bs!388879 (and d!462276 b!1560207)))

(assert (=> bs!388879 (= (dynLambda!7531 lambda!66015 (_1!9647 (_1!9648 lt!540326))) (= (list!6514 (dynLambda!7532 (toChars!4202 (transformation!2965 rule!240)) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (_1!9647 (_1!9648 lt!540326))))) (list!6514 (_1!9647 (_1!9648 lt!540326)))))))

(declare-fun b_lambda!49065 () Bool)

(assert (=> (not b_lambda!49065) (not bs!388879)))

(declare-fun t!141520 () Bool)

(declare-fun tb!87377 () Bool)

(assert (=> (and b!1560205 (= (toChars!4202 (transformation!2965 rule!240)) (toChars!4202 (transformation!2965 rule!240))) t!141520) tb!87377))

(declare-fun b!1560528 () Bool)

(declare-fun e!1001934 () Bool)

(declare-fun tp!459018 () Bool)

(assert (=> b!1560528 (= e!1001934 (and (inv!22218 (c!253097 (dynLambda!7532 (toChars!4202 (transformation!2965 rule!240)) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (_1!9647 (_1!9648 lt!540326)))))) tp!459018))))

(declare-fun result!105648 () Bool)

(assert (=> tb!87377 (= result!105648 (and (inv!22219 (dynLambda!7532 (toChars!4202 (transformation!2965 rule!240)) (dynLambda!7530 (toValue!4343 (transformation!2965 rule!240)) (_1!9647 (_1!9648 lt!540326))))) e!1001934))))

(assert (= tb!87377 b!1560528))

(declare-fun m!1832176 () Bool)

(assert (=> b!1560528 m!1832176))

(declare-fun m!1832178 () Bool)

(assert (=> tb!87377 m!1832178))

(assert (=> bs!388879 t!141520))

(declare-fun b_and!108925 () Bool)

(assert (= b_and!108921 (and (=> t!141520 result!105648) b_and!108925)))

(declare-fun b_lambda!49067 () Bool)

(assert (=> (not b_lambda!49067) (not bs!388879)))

(assert (=> bs!388879 t!141512))

(declare-fun b_and!108927 () Bool)

(assert (= b_and!108923 (and (=> t!141512 result!105620) b_and!108927)))

(assert (=> bs!388879 m!1831964))

(declare-fun m!1832180 () Bool)

(assert (=> bs!388879 m!1832180))

(assert (=> bs!388879 m!1831846))

(assert (=> bs!388879 m!1832180))

(declare-fun m!1832182 () Bool)

(assert (=> bs!388879 m!1832182))

(assert (=> bs!388879 m!1831964))

(assert (=> d!462220 d!462276))

(check-sat (not d!462198) (not b_lambda!49063) (not b_next!42343) (not b!1560398) (not b!1560472) (not b!1560276) (not b!1560369) (not bm!102227) (not b!1560420) (not d!462240) (not b!1560432) (not b!1560434) (not b!1560475) (not b!1560447) (not b_next!42351) (not setNonEmpty!11155) (not b!1560453) (not d!462224) (not b!1560378) (not setNonEmpty!11165) (not bm!102228) (not b!1560471) (not d!462228) (not d!462216) (not b!1560430) (not b!1560421) (not setNonEmpty!11158) (not b!1560433) (not tb!87371) (not b!1560360) (not d!462260) (not b!1560242) (not b!1560522) (not b!1560303) (not d!462192) (not b!1560342) (not d!462208) (not b!1560477) (not bm!102224) tp_is_empty!7083 (not b!1560500) (not b!1560233) (not b!1560518) (not b_next!42357) (not b!1560409) (not b!1560520) (not b!1560376) (not setNonEmpty!11164) (not b!1560304) (not b!1560485) (not b!1560478) (not b!1560445) (not b_lambda!49057) (not b!1560347) (not d!462222) (not b!1560476) (not setNonEmpty!11153) (not b_lambda!49061) (not b!1560199) (not b!1560482) (not b!1560528) (not setNonEmpty!11139) (not d!462264) (not b_lambda!49067) (not b!1560521) (not b!1560244) (not setNonEmpty!11156) (not b!1560503) (not b!1560296) (not b!1560372) (not bm!102226) b_and!108905 (not d!462202) (not d!462194) (not setNonEmpty!11157) (not b!1560185) (not mapNonEmpty!8606) (not b!1560422) (not d!462220) (not setNonEmpty!11147) b_and!108927 (not b!1560381) (not mapNonEmpty!8600) (not b!1560363) (not b!1560384) (not b_lambda!49055) (not b!1560423) (not d!462206) (not b!1560468) (not b!1560309) (not b!1560502) (not b_lambda!49053) (not b!1560519) (not b!1560286) (not bm!102205) (not b!1560484) (not setNonEmpty!11152) (not b_next!42353) (not b!1560285) (not bs!388879) (not tb!87377) (not b!1560499) (not setNonEmpty!11145) (not d!462196) (not b!1560351) (not b_next!42349) (not b!1560408) (not b!1560195) (not d!462236) (not d!462270) (not tb!87373) (not bm!102222) (not d!462218) (not b!1560419) (not b!1560277) (not b!1560526) (not setNonEmpty!11163) (not bm!102223) (not b!1560279) (not setNonEmpty!11146) (not b!1560498) (not b!1560474) (not b!1560470) (not b_next!42347) (not b!1560387) (not mapNonEmpty!8603) (not b!1560310) (not b!1560431) (not setNonEmpty!11144) (not b!1560275) b_and!108901 (not b_next!42355) (not b!1560451) (not tb!87369) (not b!1560397) (not setNonEmpty!11135) (not bs!388878) (not b!1560448) (not b_next!42345) (not d!462242) (not d!462234) (not b!1560449) (not b!1560480) (not d!462200) (not b!1560450) b_and!108911 (not b!1560418) (not b!1560483) (not b!1560501) (not b!1560292) (not b!1560344) (not b!1560525) (not b!1560375) (not b!1560312) (not b!1560446) (not setNonEmpty!11154) (not bm!102225) (not b!1560396) (not b!1560523) (not d!462232) (not b!1560452) (not b!1560486) (not b!1560481) (not b!1560524) (not b!1560473) (not setNonEmpty!11136) (not d!462226) (not bm!102229) (not d!462204) (not tb!87375) (not b_lambda!49065) (not b!1560243) (not b!1560407) (not b!1560479) (not d!462248) (not b!1560231) (not b!1560469) (not setNonEmpty!11132) b_and!108913 b_and!108925 b_and!108903 b_and!108915 (not b_lambda!49059) (not b!1560527))
(check-sat (not b_next!42343) (not b_next!42351) (not b_next!42357) b_and!108905 b_and!108927 (not b_next!42353) (not b_next!42349) (not b_next!42345) b_and!108911 (not b_next!42347) b_and!108901 (not b_next!42355) b_and!108913 b_and!108925 b_and!108903 b_and!108915)
