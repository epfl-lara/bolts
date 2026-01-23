; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144060 () Bool)

(assert start!144060)

(declare-fun b!1554087 () Bool)

(declare-fun b_free!41307 () Bool)

(declare-fun b_next!42011 () Bool)

(assert (=> b!1554087 (= b_free!41307 (not b_next!42011))))

(declare-fun tp!455144 () Bool)

(declare-fun b_and!108437 () Bool)

(assert (=> b!1554087 (= tp!455144 b_and!108437)))

(declare-fun b!1554101 () Bool)

(declare-fun b_free!41309 () Bool)

(declare-fun b_next!42013 () Bool)

(assert (=> b!1554101 (= b_free!41309 (not b_next!42013))))

(declare-fun tp!455145 () Bool)

(declare-fun b_and!108439 () Bool)

(assert (=> b!1554101 (= tp!455145 b_and!108439)))

(declare-fun b!1554089 () Bool)

(declare-fun b_free!41311 () Bool)

(declare-fun b_next!42015 () Bool)

(assert (=> b!1554089 (= b_free!41311 (not b_next!42015))))

(declare-fun tp!455151 () Bool)

(declare-fun b_and!108441 () Bool)

(assert (=> b!1554089 (= tp!455151 b_and!108441)))

(declare-fun b_free!41313 () Bool)

(declare-fun b_next!42017 () Bool)

(assert (=> b!1554089 (= b_free!41313 (not b_next!42017))))

(declare-fun tp!455150 () Bool)

(declare-fun b_and!108443 () Bool)

(assert (=> b!1554089 (= tp!455150 b_and!108443)))

(declare-fun b!1554082 () Bool)

(declare-fun b_free!41315 () Bool)

(declare-fun b_next!42019 () Bool)

(assert (=> b!1554082 (= b_free!41315 (not b_next!42019))))

(declare-fun tp!455159 () Bool)

(declare-fun b_and!108445 () Bool)

(assert (=> b!1554082 (= tp!455159 b_and!108445)))

(declare-fun b!1554090 () Bool)

(declare-fun b_free!41317 () Bool)

(declare-fun b_next!42021 () Bool)

(assert (=> b!1554090 (= b_free!41317 (not b_next!42021))))

(declare-fun tp!455152 () Bool)

(declare-fun b_and!108447 () Bool)

(assert (=> b!1554090 (= tp!455152 b_and!108447)))

(declare-fun b!1554113 () Bool)

(declare-fun b_free!41319 () Bool)

(declare-fun b_next!42023 () Bool)

(assert (=> b!1554113 (= b_free!41319 (not b_next!42023))))

(declare-fun tp!455156 () Bool)

(declare-fun b_and!108449 () Bool)

(assert (=> b!1554113 (= tp!455156 b_and!108449)))

(declare-fun b!1554100 () Bool)

(declare-fun b_free!41321 () Bool)

(declare-fun b_next!42025 () Bool)

(assert (=> b!1554100 (= b_free!41321 (not b_next!42025))))

(declare-fun tp!455147 () Bool)

(declare-fun b_and!108451 () Bool)

(assert (=> b!1554100 (= tp!455147 b_and!108451)))

(declare-fun b!1554125 () Bool)

(declare-fun e!997047 () Bool)

(assert (=> b!1554125 (= e!997047 true)))

(declare-fun b!1554124 () Bool)

(declare-fun e!997046 () Bool)

(assert (=> b!1554124 (= e!997046 e!997047)))

(declare-fun b!1554111 () Bool)

(assert (=> b!1554111 e!997046))

(assert (= b!1554124 b!1554125))

(assert (= b!1554111 b!1554124))

(declare-datatypes ((List!16870 0))(
  ( (Nil!16802) (Cons!16802 (h!22203 (_ BitVec 16)) (t!141313 List!16870)) )
))
(declare-datatypes ((TokenValue!3035 0))(
  ( (FloatLiteralValue!6070 (text!21690 List!16870)) (TokenValueExt!3034 (__x!11162 Int)) (Broken!15175 (value!93545 List!16870)) (Object!3102) (End!3035) (Def!3035) (Underscore!3035) (Match!3035) (Else!3035) (Error!3035) (Case!3035) (If!3035) (Extends!3035) (Abstract!3035) (Class!3035) (Val!3035) (DelimiterValue!6070 (del!3095 List!16870)) (KeywordValue!3041 (value!93546 List!16870)) (CommentValue!6070 (value!93547 List!16870)) (WhitespaceValue!6070 (value!93548 List!16870)) (IndentationValue!3035 (value!93549 List!16870)) (String!19462) (Int32!3035) (Broken!15176 (value!93550 List!16870)) (Boolean!3036) (Unit!26050) (OperatorValue!3038 (op!3095 List!16870)) (IdentifierValue!6070 (value!93551 List!16870)) (IdentifierValue!6071 (value!93552 List!16870)) (WhitespaceValue!6071 (value!93553 List!16870)) (True!6070) (False!6070) (Broken!15177 (value!93554 List!16870)) (Broken!15178 (value!93555 List!16870)) (True!6071) (RightBrace!3035) (RightBracket!3035) (Colon!3035) (Null!3035) (Comma!3035) (LeftBracket!3035) (False!6071) (LeftBrace!3035) (ImaginaryLiteralValue!3035 (text!21691 List!16870)) (StringLiteralValue!9105 (value!93556 List!16870)) (EOFValue!3035 (value!93557 List!16870)) (IdentValue!3035 (value!93558 List!16870)) (DelimiterValue!6071 (value!93559 List!16870)) (DedentValue!3035 (value!93560 List!16870)) (NewLineValue!3035 (value!93561 List!16870)) (IntegerValue!9105 (value!93562 (_ BitVec 32)) (text!21692 List!16870)) (IntegerValue!9106 (value!93563 Int) (text!21693 List!16870)) (Times!3035) (Or!3035) (Equal!3035) (Minus!3035) (Broken!15179 (value!93564 List!16870)) (And!3035) (Div!3035) (LessEqual!3035) (Mod!3035) (Concat!7308) (Not!3035) (Plus!3035) (SpaceValue!3035 (value!93565 List!16870)) (IntegerValue!9107 (value!93566 Int) (text!21694 List!16870)) (StringLiteralValue!9106 (text!21695 List!16870)) (FloatLiteralValue!6071 (text!21696 List!16870)) (BytesLiteralValue!3035 (value!93567 List!16870)) (CommentValue!6071 (value!93568 List!16870)) (StringLiteralValue!9107 (value!93569 List!16870)) (ErrorTokenValue!3035 (msg!3096 List!16870)) )
))
(declare-datatypes ((C!8724 0))(
  ( (C!8725 (val!4934 Int)) )
))
(declare-datatypes ((List!16871 0))(
  ( (Nil!16803) (Cons!16803 (h!22204 C!8724) (t!141314 List!16871)) )
))
(declare-datatypes ((IArray!11131 0))(
  ( (IArray!11132 (innerList!5623 List!16871)) )
))
(declare-datatypes ((Conc!5563 0))(
  ( (Node!5563 (left!13662 Conc!5563) (right!13992 Conc!5563) (csize!11356 Int) (cheight!5774 Int)) (Leaf!8245 (xs!8363 IArray!11131) (csize!11357 Int)) (Empty!5563) )
))
(declare-datatypes ((BalanceConc!11068 0))(
  ( (BalanceConc!11069 (c!252615 Conc!5563)) )
))
(declare-datatypes ((Regex!4273 0))(
  ( (ElementMatch!4273 (c!252616 C!8724)) (Concat!7309 (regOne!9058 Regex!4273) (regTwo!9058 Regex!4273)) (EmptyExpr!4273) (Star!4273 (reg!4602 Regex!4273)) (EmptyLang!4273) (Union!4273 (regOne!9059 Regex!4273) (regTwo!9059 Regex!4273)) )
))
(declare-datatypes ((String!19463 0))(
  ( (String!19464 (value!93570 String)) )
))
(declare-datatypes ((TokenValueInjection!5730 0))(
  ( (TokenValueInjection!5731 (toValue!4314 Int) (toChars!4173 Int)) )
))
(declare-datatypes ((Rule!5690 0))(
  ( (Rule!5691 (regex!2945 Regex!4273) (tag!3209 String!19463) (isSeparator!2945 Bool) (transformation!2945 TokenValueInjection!5730)) )
))
(declare-fun rule!240 () Rule!5690)

(declare-fun lambda!65797 () Int)

(declare-fun order!9881 () Int)

(declare-fun order!9883 () Int)

(declare-fun dynLambda!7441 (Int Int) Int)

(declare-fun dynLambda!7442 (Int Int) Int)

(assert (=> b!1554125 (< (dynLambda!7441 order!9881 (toValue!4314 (transformation!2945 rule!240))) (dynLambda!7442 order!9883 lambda!65797))))

(declare-fun order!9885 () Int)

(declare-fun dynLambda!7443 (Int Int) Int)

(assert (=> b!1554125 (< (dynLambda!7443 order!9885 (toChars!4173 (transformation!2945 rule!240))) (dynLambda!7442 order!9883 lambda!65797))))

(declare-fun b!1554079 () Bool)

(declare-fun res!693927 () Bool)

(declare-fun e!997039 () Bool)

(assert (=> b!1554079 (=> (not res!693927) (not e!997039))))

(declare-datatypes ((List!16872 0))(
  ( (Nil!16804) (Cons!16804 (h!22205 Regex!4273) (t!141315 List!16872)) )
))
(declare-datatypes ((Context!1582 0))(
  ( (Context!1583 (exprs!1291 List!16872)) )
))
(declare-datatypes ((tuple2!16248 0))(
  ( (tuple2!16249 (_1!9457 Context!1582) (_2!9457 C!8724)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16250 0))(
  ( (tuple2!16251 (_1!9458 tuple2!16248) (_2!9458 (InoxSet Context!1582))) )
))
(declare-datatypes ((List!16873 0))(
  ( (Nil!16805) (Cons!16805 (h!22206 tuple2!16250) (t!141316 List!16873)) )
))
(declare-datatypes ((array!6140 0))(
  ( (array!6141 (arr!2739 (Array (_ BitVec 32) List!16873)) (size!13600 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1735 0))(
  ( (HashableExt!1734 (__x!11163 Int)) )
))
(declare-datatypes ((array!6142 0))(
  ( (array!6143 (arr!2740 (Array (_ BitVec 32) (_ BitVec 64))) (size!13601 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3582 0))(
  ( (LongMapFixedSize!3583 (defaultEntry!2151 Int) (mask!5016 (_ BitVec 32)) (extraKeys!2038 (_ BitVec 32)) (zeroValue!2048 List!16873) (minValue!2048 List!16873) (_size!3663 (_ BitVec 32)) (_keys!2085 array!6142) (_values!2070 array!6140) (_vacant!1852 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7049 0))(
  ( (Cell!7050 (v!23644 LongMapFixedSize!3582)) )
))
(declare-datatypes ((MutLongMap!1791 0))(
  ( (LongMap!1791 (underlying!3791 Cell!7049)) (MutLongMapExt!1790 (__x!11164 Int)) )
))
(declare-datatypes ((Cell!7051 0))(
  ( (Cell!7052 (v!23645 MutLongMap!1791)) )
))
(declare-datatypes ((MutableMap!1735 0))(
  ( (MutableMapExt!1734 (__x!11165 Int)) (HashMap!1735 (underlying!3792 Cell!7051) (hashF!3654 Hashable!1735) (_size!3664 (_ BitVec 32)) (defaultValue!1895 Int)) )
))
(declare-datatypes ((CacheUp!1056 0))(
  ( (CacheUp!1057 (cache!2116 MutableMap!1735)) )
))
(declare-fun cacheUp!755 () CacheUp!1056)

(declare-fun valid!1439 (CacheUp!1056) Bool)

(assert (=> b!1554079 (= res!693927 (valid!1439 cacheUp!755))))

(declare-fun b!1554080 () Bool)

(declare-fun e!997033 () Bool)

(declare-fun e!997017 () Bool)

(assert (=> b!1554080 (= e!997033 e!997017)))

(declare-fun b!1554081 () Bool)

(declare-fun e!997013 () Bool)

(declare-fun e!997019 () Bool)

(declare-datatypes ((tuple3!1778 0))(
  ( (tuple3!1779 (_1!9459 (InoxSet Context!1582)) (_2!9459 Int) (_3!1333 Int)) )
))
(declare-datatypes ((tuple2!16252 0))(
  ( (tuple2!16253 (_1!9460 tuple3!1778) (_2!9460 Int)) )
))
(declare-datatypes ((List!16874 0))(
  ( (Nil!16806) (Cons!16806 (h!22207 tuple2!16252) (t!141317 List!16874)) )
))
(declare-datatypes ((array!6144 0))(
  ( (array!6145 (arr!2741 (Array (_ BitVec 32) List!16874)) (size!13602 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3584 0))(
  ( (LongMapFixedSize!3585 (defaultEntry!2152 Int) (mask!5017 (_ BitVec 32)) (extraKeys!2039 (_ BitVec 32)) (zeroValue!2049 List!16874) (minValue!2049 List!16874) (_size!3665 (_ BitVec 32)) (_keys!2086 array!6142) (_values!2071 array!6144) (_vacant!1853 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7053 0))(
  ( (Cell!7054 (v!23646 LongMapFixedSize!3584)) )
))
(declare-datatypes ((MutLongMap!1792 0))(
  ( (LongMap!1792 (underlying!3793 Cell!7053)) (MutLongMapExt!1791 (__x!11166 Int)) )
))
(declare-fun lt!538196 () MutLongMap!1792)

(get-info :version)

(assert (=> b!1554081 (= e!997013 (and e!997019 ((_ is LongMap!1792) lt!538196)))))

(declare-datatypes ((Hashable!1736 0))(
  ( (HashableExt!1735 (__x!11167 Int)) )
))
(declare-datatypes ((Cell!7055 0))(
  ( (Cell!7056 (v!23647 MutLongMap!1792)) )
))
(declare-datatypes ((MutableMap!1736 0))(
  ( (MutableMapExt!1735 (__x!11168 Int)) (HashMap!1736 (underlying!3794 Cell!7055) (hashF!3655 Hashable!1736) (_size!3666 (_ BitVec 32)) (defaultValue!1896 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!482 0))(
  ( (CacheFurthestNullable!483 (cache!2117 MutableMap!1736) (totalInput!2456 BalanceConc!11068)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!482)

(assert (=> b!1554081 (= lt!538196 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))

(declare-fun e!997026 () Bool)

(declare-fun e!997018 () Bool)

(assert (=> b!1554082 (= e!997026 (and e!997018 tp!455159))))

(declare-fun b!1554083 () Bool)

(declare-fun e!997016 () Bool)

(declare-fun e!997034 () Bool)

(assert (=> b!1554083 (= e!997016 e!997034)))

(declare-fun mapNonEmpty!8322 () Bool)

(declare-fun mapRes!8324 () Bool)

(declare-fun tp!455165 () Bool)

(declare-fun tp!455162 () Bool)

(assert (=> mapNonEmpty!8322 (= mapRes!8324 (and tp!455165 tp!455162))))

(declare-datatypes ((tuple3!1780 0))(
  ( (tuple3!1781 (_1!9461 Regex!4273) (_2!9461 Context!1582) (_3!1334 C!8724)) )
))
(declare-datatypes ((tuple2!16254 0))(
  ( (tuple2!16255 (_1!9462 tuple3!1780) (_2!9462 (InoxSet Context!1582))) )
))
(declare-datatypes ((List!16875 0))(
  ( (Nil!16807) (Cons!16807 (h!22208 tuple2!16254) (t!141318 List!16875)) )
))
(declare-fun mapRest!8323 () (Array (_ BitVec 32) List!16875))

(declare-fun mapKey!8324 () (_ BitVec 32))

(declare-datatypes ((array!6146 0))(
  ( (array!6147 (arr!2742 (Array (_ BitVec 32) List!16875)) (size!13603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3586 0))(
  ( (LongMapFixedSize!3587 (defaultEntry!2153 Int) (mask!5018 (_ BitVec 32)) (extraKeys!2040 (_ BitVec 32)) (zeroValue!2050 List!16875) (minValue!2050 List!16875) (_size!3667 (_ BitVec 32)) (_keys!2087 array!6142) (_values!2072 array!6146) (_vacant!1854 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7057 0))(
  ( (Cell!7058 (v!23648 LongMapFixedSize!3586)) )
))
(declare-datatypes ((MutLongMap!1793 0))(
  ( (LongMap!1793 (underlying!3795 Cell!7057)) (MutLongMapExt!1792 (__x!11169 Int)) )
))
(declare-datatypes ((Cell!7059 0))(
  ( (Cell!7060 (v!23649 MutLongMap!1793)) )
))
(declare-datatypes ((Hashable!1737 0))(
  ( (HashableExt!1736 (__x!11170 Int)) )
))
(declare-datatypes ((MutableMap!1737 0))(
  ( (MutableMapExt!1736 (__x!11171 Int)) (HashMap!1737 (underlying!3796 Cell!7059) (hashF!3656 Hashable!1737) (_size!3668 (_ BitVec 32)) (defaultValue!1897 Int)) )
))
(declare-datatypes ((CacheDown!1060 0))(
  ( (CacheDown!1061 (cache!2118 MutableMap!1737)) )
))
(declare-fun cacheDown!768 () CacheDown!1060)

(declare-fun mapValue!8322 () List!16875)

(assert (=> mapNonEmpty!8322 (= (arr!2742 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) (store mapRest!8323 mapKey!8324 mapValue!8322))))

(declare-fun b!1554084 () Bool)

(declare-fun e!997037 () Bool)

(declare-fun lt!538185 () MutLongMap!1791)

(assert (=> b!1554084 (= e!997018 (and e!997037 ((_ is LongMap!1791) lt!538185)))))

(assert (=> b!1554084 (= lt!538185 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))

(declare-fun b!1554085 () Bool)

(declare-fun e!997028 () Bool)

(declare-fun lt!538197 () MutLongMap!1793)

(assert (=> b!1554085 (= e!997028 (and e!997016 ((_ is LongMap!1793) lt!538197)))))

(assert (=> b!1554085 (= lt!538197 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))

(declare-fun mapNonEmpty!8323 () Bool)

(declare-fun mapRes!8323 () Bool)

(declare-fun tp!455148 () Bool)

(declare-fun tp!455155 () Bool)

(assert (=> mapNonEmpty!8323 (= mapRes!8323 (and tp!455148 tp!455155))))

(declare-fun mapKey!8323 () (_ BitVec 32))

(declare-fun mapValue!8324 () List!16874)

(declare-fun mapRest!8322 () (Array (_ BitVec 32) List!16874))

(assert (=> mapNonEmpty!8323 (= (arr!2741 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) (store mapRest!8322 mapKey!8323 mapValue!8324))))

(declare-fun b!1554086 () Bool)

(declare-fun e!997014 () Bool)

(declare-datatypes ((tuple2!16256 0))(
  ( (tuple2!16257 (_1!9463 List!16871) (_2!9463 List!16871)) )
))
(declare-fun lt!538191 () tuple2!16256)

(declare-fun matchR!1877 (Regex!4273 List!16871) Bool)

(assert (=> b!1554086 (= e!997014 (matchR!1877 (regex!2945 rule!240) (_1!9463 lt!538191)))))

(declare-fun e!997029 () Bool)

(assert (=> b!1554087 (= e!997029 (and e!997013 tp!455144))))

(declare-fun mapIsEmpty!8322 () Bool)

(assert (=> mapIsEmpty!8322 mapRes!8324))

(declare-fun b!1554088 () Bool)

(declare-fun res!693929 () Bool)

(assert (=> b!1554088 (=> (not res!693929) (not e!997039))))

(declare-datatypes ((LexerInterface!2583 0))(
  ( (LexerInterfaceExt!2580 (__x!11172 Int)) (Lexer!2581) )
))
(declare-fun thiss!16438 () LexerInterface!2583)

(declare-fun ruleValid!682 (LexerInterface!2583 Rule!5690) Bool)

(assert (=> b!1554088 (= res!693929 (ruleValid!682 thiss!16438 rule!240))))

(declare-fun e!997030 () Bool)

(assert (=> b!1554089 (= e!997030 (and tp!455151 tp!455150))))

(declare-fun e!997008 () Bool)

(declare-fun tp!455167 () Bool)

(declare-fun tp!455169 () Bool)

(declare-fun array_inv!1970 (array!6142) Bool)

(declare-fun array_inv!1971 (array!6140) Bool)

(assert (=> b!1554090 (= e!997017 (and tp!455152 tp!455167 tp!455169 (array_inv!1970 (_keys!2085 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) (array_inv!1971 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) e!997008))))

(declare-fun b!1554091 () Bool)

(declare-fun e!997032 () Bool)

(declare-fun lt!538195 () BalanceConc!11068)

(declare-fun lt!538189 () List!16871)

(declare-fun list!6489 (BalanceConc!11068) List!16871)

(assert (=> b!1554091 (= e!997032 (= (list!6489 lt!538195) lt!538189))))

(declare-fun b!1554092 () Bool)

(declare-fun e!997015 () Bool)

(declare-fun tp!455158 () Bool)

(declare-fun inv!22074 (Conc!5563) Bool)

(assert (=> b!1554092 (= e!997015 (and (inv!22074 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) tp!455158))))

(declare-fun mapIsEmpty!8323 () Bool)

(declare-fun mapRes!8322 () Bool)

(assert (=> mapIsEmpty!8323 mapRes!8322))

(declare-fun b!1554093 () Bool)

(declare-fun res!693920 () Bool)

(assert (=> b!1554093 (=> (not res!693920) (not e!997039))))

(declare-fun valid!1440 (CacheFurthestNullable!482) Bool)

(assert (=> b!1554093 (= res!693920 (valid!1440 cacheFurthestNullable!103))))

(declare-fun b!1554094 () Bool)

(declare-fun e!997012 () Bool)

(declare-fun input!1676 () BalanceConc!11068)

(declare-fun tp!455168 () Bool)

(assert (=> b!1554094 (= e!997012 (and (inv!22074 (c!252615 input!1676)) tp!455168))))

(declare-fun b!1554095 () Bool)

(declare-fun e!997011 () Bool)

(declare-fun e!997021 () Bool)

(assert (=> b!1554095 (= e!997011 e!997021)))

(declare-fun res!693928 () Bool)

(assert (=> b!1554095 (=> (not res!693928) (not e!997021))))

(declare-datatypes ((tuple2!16258 0))(
  ( (tuple2!16259 (_1!9464 BalanceConc!11068) (_2!9464 BalanceConc!11068)) )
))
(declare-datatypes ((tuple4!888 0))(
  ( (tuple4!889 (_1!9465 tuple2!16258) (_2!9465 CacheUp!1056) (_3!1335 CacheDown!1060) (_4!444 CacheFurthestNullable!482)) )
))
(declare-fun lt!538187 () tuple4!888)

(declare-fun isEmpty!10105 (BalanceConc!11068) Bool)

(assert (=> b!1554095 (= res!693928 (not (isEmpty!10105 (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun totalInput!568 () BalanceConc!11068)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!47 (Regex!4273 BalanceConc!11068 BalanceConc!11068 CacheUp!1056 CacheDown!1060 CacheFurthestNullable!482) tuple4!888)

(assert (=> b!1554095 (= lt!538187 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1554096 () Bool)

(declare-fun e!997038 () Bool)

(declare-fun tp!455170 () Bool)

(assert (=> b!1554096 (= e!997038 (and (inv!22074 (c!252615 totalInput!568)) tp!455170))))

(declare-fun b!1554097 () Bool)

(declare-fun e!997025 () Bool)

(assert (=> b!1554097 (= e!997019 e!997025)))

(declare-fun b!1554098 () Bool)

(declare-fun tp!455163 () Bool)

(assert (=> b!1554098 (= e!997008 (and tp!455163 mapRes!8322))))

(declare-fun condMapEmpty!8323 () Bool)

(declare-fun mapDefault!8324 () List!16873)

(assert (=> b!1554098 (= condMapEmpty!8323 (= (arr!2739 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16873)) mapDefault!8324)))))

(declare-fun b!1554099 () Bool)

(assert (=> b!1554099 (= e!997039 e!997011)))

(declare-fun res!693925 () Bool)

(assert (=> b!1554099 (=> (not res!693925) (not e!997011))))

(declare-fun lt!538190 () List!16871)

(declare-fun isSuffix!373 (List!16871 List!16871) Bool)

(assert (=> b!1554099 (= res!693925 (isSuffix!373 lt!538190 (list!6489 totalInput!568)))))

(assert (=> b!1554099 (= lt!538190 (list!6489 input!1676))))

(declare-fun tp!455146 () Bool)

(declare-fun e!997006 () Bool)

(declare-fun tp!455164 () Bool)

(declare-fun e!997035 () Bool)

(declare-fun array_inv!1972 (array!6144) Bool)

(assert (=> b!1554100 (= e!997035 (and tp!455147 tp!455164 tp!455146 (array_inv!1970 (_keys!2086 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) (array_inv!1972 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) e!997006))))

(declare-fun e!997024 () Bool)

(assert (=> b!1554101 (= e!997024 (and e!997028 tp!455145))))

(declare-fun b!1554102 () Bool)

(declare-fun e!997022 () Bool)

(assert (=> b!1554102 (= e!997021 (not e!997022))))

(declare-fun res!693924 () Bool)

(assert (=> b!1554102 (=> res!693924 e!997022)))

(declare-fun semiInverseModEq!1110 (Int Int) Bool)

(assert (=> b!1554102 (= res!693924 (not (semiInverseModEq!1110 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240)))))))

(declare-datatypes ((Unit!26051 0))(
  ( (Unit!26052) )
))
(declare-fun lt!538193 () Unit!26051)

(declare-fun lemmaInv!424 (TokenValueInjection!5730) Unit!26051)

(assert (=> b!1554102 (= lt!538193 (lemmaInv!424 (transformation!2945 rule!240)))))

(assert (=> b!1554102 e!997014))

(declare-fun res!693918 () Bool)

(assert (=> b!1554102 (=> res!693918 e!997014)))

(declare-fun isEmpty!10106 (List!16871) Bool)

(assert (=> b!1554102 (= res!693918 (isEmpty!10106 (_1!9463 lt!538191)))))

(declare-fun findLongestMatchInner!330 (Regex!4273 List!16871 Int List!16871 List!16871 Int) tuple2!16256)

(declare-fun size!13604 (List!16871) Int)

(assert (=> b!1554102 (= lt!538191 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))

(declare-fun lt!538188 () Unit!26051)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!314 (Regex!4273 List!16871) Unit!26051)

(assert (=> b!1554102 (= lt!538188 (longestMatchIsAcceptedByMatchOrIsEmpty!314 (regex!2945 rule!240) lt!538190))))

(declare-fun b!1554103 () Bool)

(declare-fun e!997027 () Bool)

(assert (=> b!1554103 (= e!997034 e!997027)))

(declare-fun b!1554104 () Bool)

(declare-fun e!997036 () Bool)

(assert (=> b!1554104 (= e!997036 e!997026)))

(declare-fun e!997031 () Bool)

(declare-fun tp!455160 () Bool)

(declare-fun b!1554105 () Bool)

(declare-fun inv!22072 (String!19463) Bool)

(declare-fun inv!22075 (TokenValueInjection!5730) Bool)

(assert (=> b!1554105 (= e!997031 (and tp!455160 (inv!22072 (tag!3209 rule!240)) (inv!22075 (transformation!2945 rule!240)) e!997030))))

(declare-fun b!1554106 () Bool)

(declare-fun e!997040 () Bool)

(declare-fun tp!455153 () Bool)

(assert (=> b!1554106 (= e!997040 (and tp!455153 mapRes!8324))))

(declare-fun condMapEmpty!8322 () Bool)

(declare-fun mapDefault!8322 () List!16875)

(assert (=> b!1554106 (= condMapEmpty!8322 (= (arr!2742 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16875)) mapDefault!8322)))))

(declare-fun b!1554107 () Bool)

(assert (=> b!1554107 (= e!997025 e!997035)))

(declare-fun b!1554108 () Bool)

(declare-fun tp!455161 () Bool)

(assert (=> b!1554108 (= e!997006 (and tp!455161 mapRes!8323))))

(declare-fun condMapEmpty!8324 () Bool)

(declare-fun mapDefault!8323 () List!16874)

(assert (=> b!1554108 (= condMapEmpty!8324 (= (arr!2741 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16874)) mapDefault!8323)))))

(declare-fun b!1554109 () Bool)

(declare-fun res!693921 () Bool)

(assert (=> b!1554109 (=> (not res!693921) (not e!997039))))

(declare-fun valid!1441 (CacheDown!1060) Bool)

(assert (=> b!1554109 (= res!693921 (valid!1441 cacheDown!768))))

(declare-fun b!1554110 () Bool)

(declare-fun res!693923 () Bool)

(assert (=> b!1554110 (=> (not res!693923) (not e!997011))))

(assert (=> b!1554110 (= res!693923 (= (totalInput!2456 cacheFurthestNullable!103) totalInput!568))))

(declare-fun res!693922 () Bool)

(assert (=> b!1554111 (=> res!693922 e!997022)))

(declare-fun Forall!606 (Int) Bool)

(assert (=> b!1554111 (= res!693922 (not (Forall!606 lambda!65797)))))

(declare-fun b!1554112 () Bool)

(declare-fun e!997007 () Bool)

(assert (=> b!1554112 (= e!997007 e!997024)))

(declare-fun tp!455157 () Bool)

(declare-fun tp!455149 () Bool)

(declare-fun array_inv!1973 (array!6146) Bool)

(assert (=> b!1554113 (= e!997027 (and tp!455156 tp!455149 tp!455157 (array_inv!1970 (_keys!2087 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) (array_inv!1973 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) e!997040))))

(declare-fun mapIsEmpty!8324 () Bool)

(assert (=> mapIsEmpty!8324 mapRes!8323))

(declare-fun b!1554114 () Bool)

(assert (=> b!1554114 (= e!997022 e!997032)))

(declare-fun res!693919 () Bool)

(assert (=> b!1554114 (=> res!693919 e!997032)))

(declare-fun lt!538186 () Bool)

(declare-datatypes ((Token!5470 0))(
  ( (Token!5471 (value!93571 TokenValue!3035) (rule!4727 Rule!5690) (size!13605 Int) (originalCharacters!3766 List!16871)) )
))
(declare-datatypes ((tuple2!16260 0))(
  ( (tuple2!16261 (_1!9466 Token!5470) (_2!9466 List!16871)) )
))
(declare-datatypes ((Option!3032 0))(
  ( (None!3031) (Some!3031 (v!23650 tuple2!16260)) )
))
(declare-fun isDefined!2435 (Option!3032) Bool)

(declare-fun maxPrefixOneRule!701 (LexerInterface!2583 Rule!5690 List!16871) Option!3032)

(assert (=> b!1554114 (= res!693919 (not (= lt!538186 (isDefined!2435 (maxPrefixOneRule!701 thiss!16438 rule!240 lt!538190)))))))

(declare-datatypes ((tuple2!16262 0))(
  ( (tuple2!16263 (_1!9467 Token!5470) (_2!9467 BalanceConc!11068)) )
))
(declare-datatypes ((Option!3033 0))(
  ( (None!3032) (Some!3032 (v!23651 tuple2!16262)) )
))
(declare-fun isDefined!2436 (Option!3033) Bool)

(declare-fun apply!4108 (TokenValueInjection!5730 BalanceConc!11068) TokenValue!3035)

(declare-fun size!13606 (BalanceConc!11068) Int)

(assert (=> b!1554114 (= lt!538186 (isDefined!2436 (Some!3032 (tuple2!16263 (Token!5471 (apply!4108 (transformation!2945 rule!240) (_1!9464 (_1!9465 lt!538187))) rule!240 (size!13606 (_1!9464 (_1!9465 lt!538187))) lt!538189) (_2!9464 (_1!9465 lt!538187))))))))

(declare-fun lt!538194 () Unit!26051)

(declare-fun ForallOf!209 (Int BalanceConc!11068) Unit!26051)

(assert (=> b!1554114 (= lt!538194 (ForallOf!209 lambda!65797 lt!538195))))

(declare-fun seqFromList!1772 (List!16871) BalanceConc!11068)

(assert (=> b!1554114 (= lt!538195 (seqFromList!1772 lt!538189))))

(assert (=> b!1554114 (= lt!538189 (list!6489 (_1!9464 (_1!9465 lt!538187))))))

(declare-fun lt!538192 () Unit!26051)

(assert (=> b!1554114 (= lt!538192 (ForallOf!209 lambda!65797 (_1!9464 (_1!9465 lt!538187))))))

(declare-fun res!693917 () Bool)

(assert (=> start!144060 (=> (not res!693917) (not e!997039))))

(assert (=> start!144060 (= res!693917 ((_ is Lexer!2581) thiss!16438))))

(assert (=> start!144060 e!997039))

(declare-fun inv!22076 (BalanceConc!11068) Bool)

(assert (=> start!144060 (and (inv!22076 totalInput!568) e!997038)))

(declare-fun inv!22077 (CacheUp!1056) Bool)

(assert (=> start!144060 (and (inv!22077 cacheUp!755) e!997036)))

(declare-fun e!997020 () Bool)

(declare-fun inv!22078 (CacheFurthestNullable!482) Bool)

(assert (=> start!144060 (and (inv!22078 cacheFurthestNullable!103) e!997020)))

(assert (=> start!144060 (and (inv!22076 input!1676) e!997012)))

(assert (=> start!144060 e!997031))

(declare-fun inv!22079 (CacheDown!1060) Bool)

(assert (=> start!144060 (and (inv!22079 cacheDown!768) e!997007)))

(assert (=> start!144060 true))

(declare-fun b!1554115 () Bool)

(assert (=> b!1554115 (= e!997020 (and e!997029 (inv!22076 (totalInput!2456 cacheFurthestNullable!103)) e!997015))))

(declare-fun b!1554116 () Bool)

(assert (=> b!1554116 (= e!997037 e!997033)))

(declare-fun mapNonEmpty!8324 () Bool)

(declare-fun tp!455154 () Bool)

(declare-fun tp!455166 () Bool)

(assert (=> mapNonEmpty!8324 (= mapRes!8322 (and tp!455154 tp!455166))))

(declare-fun mapValue!8323 () List!16873)

(declare-fun mapKey!8322 () (_ BitVec 32))

(declare-fun mapRest!8324 () (Array (_ BitVec 32) List!16873))

(assert (=> mapNonEmpty!8324 (= (arr!2739 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) (store mapRest!8324 mapKey!8322 mapValue!8323))))

(declare-fun b!1554117 () Bool)

(declare-fun res!693926 () Bool)

(assert (=> b!1554117 (=> res!693926 e!997032)))

(assert (=> b!1554117 (= res!693926 (not lt!538186))))

(assert (= (and start!144060 res!693917) b!1554088))

(assert (= (and b!1554088 res!693929) b!1554079))

(assert (= (and b!1554079 res!693927) b!1554109))

(assert (= (and b!1554109 res!693921) b!1554093))

(assert (= (and b!1554093 res!693920) b!1554099))

(assert (= (and b!1554099 res!693925) b!1554110))

(assert (= (and b!1554110 res!693923) b!1554095))

(assert (= (and b!1554095 res!693928) b!1554102))

(assert (= (and b!1554102 (not res!693918)) b!1554086))

(assert (= (and b!1554102 (not res!693924)) b!1554111))

(assert (= (and b!1554111 (not res!693922)) b!1554114))

(assert (= (and b!1554114 (not res!693919)) b!1554117))

(assert (= (and b!1554117 (not res!693926)) b!1554091))

(assert (= start!144060 b!1554096))

(assert (= (and b!1554098 condMapEmpty!8323) mapIsEmpty!8323))

(assert (= (and b!1554098 (not condMapEmpty!8323)) mapNonEmpty!8324))

(assert (= b!1554090 b!1554098))

(assert (= b!1554080 b!1554090))

(assert (= b!1554116 b!1554080))

(assert (= (and b!1554084 ((_ is LongMap!1791) (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))) b!1554116))

(assert (= b!1554082 b!1554084))

(assert (= (and b!1554104 ((_ is HashMap!1735) (cache!2116 cacheUp!755))) b!1554082))

(assert (= start!144060 b!1554104))

(assert (= (and b!1554108 condMapEmpty!8324) mapIsEmpty!8324))

(assert (= (and b!1554108 (not condMapEmpty!8324)) mapNonEmpty!8323))

(assert (= b!1554100 b!1554108))

(assert (= b!1554107 b!1554100))

(assert (= b!1554097 b!1554107))

(assert (= (and b!1554081 ((_ is LongMap!1792) (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))) b!1554097))

(assert (= b!1554087 b!1554081))

(assert (= (and b!1554115 ((_ is HashMap!1736) (cache!2117 cacheFurthestNullable!103))) b!1554087))

(assert (= b!1554115 b!1554092))

(assert (= start!144060 b!1554115))

(assert (= start!144060 b!1554094))

(assert (= b!1554105 b!1554089))

(assert (= start!144060 b!1554105))

(assert (= (and b!1554106 condMapEmpty!8322) mapIsEmpty!8322))

(assert (= (and b!1554106 (not condMapEmpty!8322)) mapNonEmpty!8322))

(assert (= b!1554113 b!1554106))

(assert (= b!1554103 b!1554113))

(assert (= b!1554083 b!1554103))

(assert (= (and b!1554085 ((_ is LongMap!1793) (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))) b!1554083))

(assert (= b!1554101 b!1554085))

(assert (= (and b!1554112 ((_ is HashMap!1737) (cache!2118 cacheDown!768))) b!1554101))

(assert (= start!144060 b!1554112))

(declare-fun m!1826553 () Bool)

(assert (=> b!1554111 m!1826553))

(declare-fun m!1826555 () Bool)

(assert (=> b!1554096 m!1826555))

(declare-fun m!1826557 () Bool)

(assert (=> b!1554102 m!1826557))

(declare-fun m!1826559 () Bool)

(assert (=> b!1554102 m!1826559))

(declare-fun m!1826561 () Bool)

(assert (=> b!1554102 m!1826561))

(declare-fun m!1826563 () Bool)

(assert (=> b!1554102 m!1826563))

(declare-fun m!1826565 () Bool)

(assert (=> b!1554102 m!1826565))

(declare-fun m!1826567 () Bool)

(assert (=> b!1554102 m!1826567))

(assert (=> b!1554102 m!1826563))

(assert (=> b!1554102 m!1826561))

(declare-fun m!1826569 () Bool)

(assert (=> b!1554102 m!1826569))

(declare-fun m!1826571 () Bool)

(assert (=> b!1554109 m!1826571))

(declare-fun m!1826573 () Bool)

(assert (=> b!1554100 m!1826573))

(declare-fun m!1826575 () Bool)

(assert (=> b!1554100 m!1826575))

(declare-fun m!1826577 () Bool)

(assert (=> mapNonEmpty!8322 m!1826577))

(declare-fun m!1826579 () Bool)

(assert (=> start!144060 m!1826579))

(declare-fun m!1826581 () Bool)

(assert (=> start!144060 m!1826581))

(declare-fun m!1826583 () Bool)

(assert (=> start!144060 m!1826583))

(declare-fun m!1826585 () Bool)

(assert (=> start!144060 m!1826585))

(declare-fun m!1826587 () Bool)

(assert (=> start!144060 m!1826587))

(declare-fun m!1826589 () Bool)

(assert (=> b!1554092 m!1826589))

(declare-fun m!1826591 () Bool)

(assert (=> b!1554079 m!1826591))

(declare-fun m!1826593 () Bool)

(assert (=> b!1554093 m!1826593))

(declare-fun m!1826595 () Bool)

(assert (=> b!1554113 m!1826595))

(declare-fun m!1826597 () Bool)

(assert (=> b!1554113 m!1826597))

(declare-fun m!1826599 () Bool)

(assert (=> mapNonEmpty!8324 m!1826599))

(declare-fun m!1826601 () Bool)

(assert (=> b!1554090 m!1826601))

(declare-fun m!1826603 () Bool)

(assert (=> b!1554090 m!1826603))

(declare-fun m!1826605 () Bool)

(assert (=> b!1554114 m!1826605))

(declare-fun m!1826607 () Bool)

(assert (=> b!1554114 m!1826607))

(declare-fun m!1826609 () Bool)

(assert (=> b!1554114 m!1826609))

(declare-fun m!1826611 () Bool)

(assert (=> b!1554114 m!1826611))

(declare-fun m!1826613 () Bool)

(assert (=> b!1554114 m!1826613))

(declare-fun m!1826615 () Bool)

(assert (=> b!1554114 m!1826615))

(assert (=> b!1554114 m!1826611))

(declare-fun m!1826617 () Bool)

(assert (=> b!1554114 m!1826617))

(declare-fun m!1826619 () Bool)

(assert (=> b!1554114 m!1826619))

(declare-fun m!1826621 () Bool)

(assert (=> b!1554114 m!1826621))

(declare-fun m!1826623 () Bool)

(assert (=> mapNonEmpty!8323 m!1826623))

(declare-fun m!1826625 () Bool)

(assert (=> b!1554105 m!1826625))

(declare-fun m!1826627 () Bool)

(assert (=> b!1554105 m!1826627))

(declare-fun m!1826629 () Bool)

(assert (=> b!1554094 m!1826629))

(declare-fun m!1826631 () Bool)

(assert (=> b!1554088 m!1826631))

(declare-fun m!1826633 () Bool)

(assert (=> b!1554091 m!1826633))

(declare-fun m!1826635 () Bool)

(assert (=> b!1554115 m!1826635))

(declare-fun m!1826637 () Bool)

(assert (=> b!1554086 m!1826637))

(declare-fun m!1826639 () Bool)

(assert (=> b!1554095 m!1826639))

(declare-fun m!1826641 () Bool)

(assert (=> b!1554095 m!1826641))

(declare-fun m!1826643 () Bool)

(assert (=> b!1554099 m!1826643))

(assert (=> b!1554099 m!1826643))

(declare-fun m!1826645 () Bool)

(assert (=> b!1554099 m!1826645))

(declare-fun m!1826647 () Bool)

(assert (=> b!1554099 m!1826647))

(check-sat (not b!1554115) (not mapNonEmpty!8322) (not b!1554114) (not b!1554099) b_and!108439 (not b_next!42017) (not b!1554086) (not b!1554111) b_and!108443 b_and!108445 b_and!108447 (not b!1554105) (not b_next!42013) (not b!1554098) (not b!1554109) (not b!1554096) (not start!144060) (not b!1554108) (not b!1554091) (not b!1554094) (not b!1554100) (not b_next!42015) (not b_next!42021) (not b_next!42023) (not mapNonEmpty!8324) (not b!1554095) (not b_next!42025) (not b_next!42019) b_and!108437 (not b!1554093) (not b!1554090) (not b!1554113) (not b!1554088) b_and!108441 (not b!1554102) b_and!108449 (not mapNonEmpty!8323) (not b_next!42011) (not b!1554079) (not b!1554092) (not b!1554106) b_and!108451)
(check-sat b_and!108447 (not b_next!42013) b_and!108439 (not b_next!42017) b_and!108443 b_and!108445 (not b_next!42011) b_and!108451 (not b_next!42015) (not b_next!42021) (not b_next!42023) (not b_next!42025) (not b_next!42019) b_and!108437 b_and!108441 b_and!108449)
(get-model)

(declare-fun d!461052 () Bool)

(assert (=> d!461052 (= (inv!22072 (tag!3209 rule!240)) (= (mod (str.len (value!93570 (tag!3209 rule!240))) 2) 0))))

(assert (=> b!1554105 d!461052))

(declare-fun d!461054 () Bool)

(declare-fun res!693934 () Bool)

(declare-fun e!997050 () Bool)

(assert (=> d!461054 (=> (not res!693934) (not e!997050))))

(assert (=> d!461054 (= res!693934 (semiInverseModEq!1110 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))))))

(assert (=> d!461054 (= (inv!22075 (transformation!2945 rule!240)) e!997050)))

(declare-fun b!1554128 () Bool)

(declare-fun equivClasses!1055 (Int Int) Bool)

(assert (=> b!1554128 (= e!997050 (equivClasses!1055 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))))))

(assert (= (and d!461054 res!693934) b!1554128))

(assert (=> d!461054 m!1826567))

(declare-fun m!1826649 () Bool)

(assert (=> b!1554128 m!1826649))

(assert (=> b!1554105 d!461054))

(declare-fun bm!101941 () Bool)

(declare-fun call!101946 () Bool)

(assert (=> bm!101941 (= call!101946 (isEmpty!10106 (_1!9463 lt!538191)))))

(declare-fun b!1554157 () Bool)

(declare-fun e!997065 () Bool)

(declare-fun head!3112 (List!16871) C!8724)

(assert (=> b!1554157 (= e!997065 (= (head!3112 (_1!9463 lt!538191)) (c!252616 (regex!2945 rule!240))))))

(declare-fun b!1554158 () Bool)

(declare-fun e!997066 () Bool)

(declare-fun e!997068 () Bool)

(assert (=> b!1554158 (= e!997066 e!997068)))

(declare-fun c!252624 () Bool)

(assert (=> b!1554158 (= c!252624 ((_ is EmptyLang!4273) (regex!2945 rule!240)))))

(declare-fun b!1554159 () Bool)

(declare-fun res!693958 () Bool)

(assert (=> b!1554159 (=> (not res!693958) (not e!997065))))

(declare-fun tail!2207 (List!16871) List!16871)

(assert (=> b!1554159 (= res!693958 (isEmpty!10106 (tail!2207 (_1!9463 lt!538191))))))

(declare-fun b!1554161 () Bool)

(declare-fun e!997071 () Bool)

(declare-fun nullable!1269 (Regex!4273) Bool)

(assert (=> b!1554161 (= e!997071 (nullable!1269 (regex!2945 rule!240)))))

(declare-fun b!1554162 () Bool)

(declare-fun e!997069 () Bool)

(assert (=> b!1554162 (= e!997069 (not (= (head!3112 (_1!9463 lt!538191)) (c!252616 (regex!2945 rule!240)))))))

(declare-fun b!1554163 () Bool)

(declare-fun lt!538200 () Bool)

(assert (=> b!1554163 (= e!997066 (= lt!538200 call!101946))))

(declare-fun b!1554164 () Bool)

(declare-fun res!693953 () Bool)

(assert (=> b!1554164 (=> res!693953 e!997069)))

(assert (=> b!1554164 (= res!693953 (not (isEmpty!10106 (tail!2207 (_1!9463 lt!538191)))))))

(declare-fun b!1554165 () Bool)

(declare-fun res!693957 () Bool)

(declare-fun e!997067 () Bool)

(assert (=> b!1554165 (=> res!693957 e!997067)))

(assert (=> b!1554165 (= res!693957 e!997065)))

(declare-fun res!693955 () Bool)

(assert (=> b!1554165 (=> (not res!693955) (not e!997065))))

(assert (=> b!1554165 (= res!693955 lt!538200)))

(declare-fun b!1554160 () Bool)

(assert (=> b!1554160 (= e!997068 (not lt!538200))))

(declare-fun d!461056 () Bool)

(assert (=> d!461056 e!997066))

(declare-fun c!252623 () Bool)

(assert (=> d!461056 (= c!252623 ((_ is EmptyExpr!4273) (regex!2945 rule!240)))))

(assert (=> d!461056 (= lt!538200 e!997071)))

(declare-fun c!252625 () Bool)

(assert (=> d!461056 (= c!252625 (isEmpty!10106 (_1!9463 lt!538191)))))

(declare-fun validRegex!1710 (Regex!4273) Bool)

(assert (=> d!461056 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461056 (= (matchR!1877 (regex!2945 rule!240) (_1!9463 lt!538191)) lt!538200)))

(declare-fun b!1554166 () Bool)

(declare-fun res!693952 () Bool)

(assert (=> b!1554166 (=> (not res!693952) (not e!997065))))

(assert (=> b!1554166 (= res!693952 (not call!101946))))

(declare-fun b!1554167 () Bool)

(declare-fun res!693954 () Bool)

(assert (=> b!1554167 (=> res!693954 e!997067)))

(assert (=> b!1554167 (= res!693954 (not ((_ is ElementMatch!4273) (regex!2945 rule!240))))))

(assert (=> b!1554167 (= e!997068 e!997067)))

(declare-fun b!1554168 () Bool)

(declare-fun e!997070 () Bool)

(assert (=> b!1554168 (= e!997067 e!997070)))

(declare-fun res!693956 () Bool)

(assert (=> b!1554168 (=> (not res!693956) (not e!997070))))

(assert (=> b!1554168 (= res!693956 (not lt!538200))))

(declare-fun b!1554169 () Bool)

(declare-fun derivativeStep!1021 (Regex!4273 C!8724) Regex!4273)

(assert (=> b!1554169 (= e!997071 (matchR!1877 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))) (tail!2207 (_1!9463 lt!538191))))))

(declare-fun b!1554170 () Bool)

(assert (=> b!1554170 (= e!997070 e!997069)))

(declare-fun res!693951 () Bool)

(assert (=> b!1554170 (=> res!693951 e!997069)))

(assert (=> b!1554170 (= res!693951 call!101946)))

(assert (= (and d!461056 c!252625) b!1554161))

(assert (= (and d!461056 (not c!252625)) b!1554169))

(assert (= (and d!461056 c!252623) b!1554163))

(assert (= (and d!461056 (not c!252623)) b!1554158))

(assert (= (and b!1554158 c!252624) b!1554160))

(assert (= (and b!1554158 (not c!252624)) b!1554167))

(assert (= (and b!1554167 (not res!693954)) b!1554165))

(assert (= (and b!1554165 res!693955) b!1554166))

(assert (= (and b!1554166 res!693952) b!1554159))

(assert (= (and b!1554159 res!693958) b!1554157))

(assert (= (and b!1554165 (not res!693957)) b!1554168))

(assert (= (and b!1554168 res!693956) b!1554170))

(assert (= (and b!1554170 (not res!693951)) b!1554164))

(assert (= (and b!1554164 (not res!693953)) b!1554162))

(assert (= (or b!1554163 b!1554166 b!1554170) bm!101941))

(declare-fun m!1826651 () Bool)

(assert (=> b!1554159 m!1826651))

(assert (=> b!1554159 m!1826651))

(declare-fun m!1826653 () Bool)

(assert (=> b!1554159 m!1826653))

(declare-fun m!1826655 () Bool)

(assert (=> b!1554162 m!1826655))

(declare-fun m!1826657 () Bool)

(assert (=> b!1554161 m!1826657))

(assert (=> d!461056 m!1826569))

(declare-fun m!1826659 () Bool)

(assert (=> d!461056 m!1826659))

(assert (=> b!1554164 m!1826651))

(assert (=> b!1554164 m!1826651))

(assert (=> b!1554164 m!1826653))

(assert (=> bm!101941 m!1826569))

(assert (=> b!1554169 m!1826655))

(assert (=> b!1554169 m!1826655))

(declare-fun m!1826661 () Bool)

(assert (=> b!1554169 m!1826661))

(assert (=> b!1554169 m!1826651))

(assert (=> b!1554169 m!1826661))

(assert (=> b!1554169 m!1826651))

(declare-fun m!1826663 () Bool)

(assert (=> b!1554169 m!1826663))

(assert (=> b!1554157 m!1826655))

(assert (=> b!1554086 d!461056))

(declare-fun d!461058 () Bool)

(declare-fun isBalanced!1642 (Conc!5563) Bool)

(assert (=> d!461058 (= (inv!22076 (totalInput!2456 cacheFurthestNullable!103)) (isBalanced!1642 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))

(declare-fun bs!388155 () Bool)

(assert (= bs!388155 d!461058))

(declare-fun m!1826665 () Bool)

(assert (=> bs!388155 m!1826665))

(assert (=> b!1554115 d!461058))

(declare-fun d!461060 () Bool)

(declare-fun list!6490 (Conc!5563) List!16871)

(assert (=> d!461060 (= (list!6489 (_1!9464 (_1!9465 lt!538187))) (list!6490 (c!252615 (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun bs!388156 () Bool)

(assert (= bs!388156 d!461060))

(declare-fun m!1826667 () Bool)

(assert (=> bs!388156 m!1826667))

(assert (=> b!1554114 d!461060))

(declare-fun d!461062 () Bool)

(declare-fun fromListB!760 (List!16871) BalanceConc!11068)

(assert (=> d!461062 (= (seqFromList!1772 lt!538189) (fromListB!760 lt!538189))))

(declare-fun bs!388157 () Bool)

(assert (= bs!388157 d!461062))

(declare-fun m!1826669 () Bool)

(assert (=> bs!388157 m!1826669))

(assert (=> b!1554114 d!461062))

(declare-fun d!461064 () Bool)

(declare-fun dynLambda!7444 (Int BalanceConc!11068) TokenValue!3035)

(assert (=> d!461064 (= (apply!4108 (transformation!2945 rule!240) (_1!9464 (_1!9465 lt!538187))) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))

(declare-fun b_lambda!48771 () Bool)

(assert (=> (not b_lambda!48771) (not d!461064)))

(declare-fun t!141320 () Bool)

(declare-fun tb!87297 () Bool)

(assert (=> (and b!1554089 (= (toValue!4314 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))) t!141320) tb!87297))

(declare-fun result!105364 () Bool)

(declare-fun inv!21 (TokenValue!3035) Bool)

(assert (=> tb!87297 (= result!105364 (inv!21 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun m!1826671 () Bool)

(assert (=> tb!87297 m!1826671))

(assert (=> d!461064 t!141320))

(declare-fun b_and!108453 () Bool)

(assert (= b_and!108441 (and (=> t!141320 result!105364) b_and!108453)))

(declare-fun m!1826673 () Bool)

(assert (=> d!461064 m!1826673))

(assert (=> b!1554114 d!461064))

(declare-fun d!461066 () Bool)

(declare-fun isEmpty!10107 (Option!3033) Bool)

(assert (=> d!461066 (= (isDefined!2436 (Some!3032 (tuple2!16263 (Token!5471 (apply!4108 (transformation!2945 rule!240) (_1!9464 (_1!9465 lt!538187))) rule!240 (size!13606 (_1!9464 (_1!9465 lt!538187))) lt!538189) (_2!9464 (_1!9465 lt!538187))))) (not (isEmpty!10107 (Some!3032 (tuple2!16263 (Token!5471 (apply!4108 (transformation!2945 rule!240) (_1!9464 (_1!9465 lt!538187))) rule!240 (size!13606 (_1!9464 (_1!9465 lt!538187))) lt!538189) (_2!9464 (_1!9465 lt!538187)))))))))

(declare-fun bs!388158 () Bool)

(assert (= bs!388158 d!461066))

(declare-fun m!1826675 () Bool)

(assert (=> bs!388158 m!1826675))

(assert (=> b!1554114 d!461066))

(declare-fun d!461068 () Bool)

(declare-fun lt!538203 () Int)

(assert (=> d!461068 (= lt!538203 (size!13604 (list!6489 (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun size!13607 (Conc!5563) Int)

(assert (=> d!461068 (= lt!538203 (size!13607 (c!252615 (_1!9464 (_1!9465 lt!538187)))))))

(assert (=> d!461068 (= (size!13606 (_1!9464 (_1!9465 lt!538187))) lt!538203)))

(declare-fun bs!388159 () Bool)

(assert (= bs!388159 d!461068))

(assert (=> bs!388159 m!1826621))

(assert (=> bs!388159 m!1826621))

(declare-fun m!1826677 () Bool)

(assert (=> bs!388159 m!1826677))

(declare-fun m!1826679 () Bool)

(assert (=> bs!388159 m!1826679))

(assert (=> b!1554114 d!461068))

(declare-fun b!1554191 () Bool)

(declare-fun res!693976 () Bool)

(declare-fun e!997085 () Bool)

(assert (=> b!1554191 (=> (not res!693976) (not e!997085))))

(declare-fun lt!538217 () Option!3032)

(declare-fun get!4845 (Option!3032) tuple2!16260)

(assert (=> b!1554191 (= res!693976 (= (rule!4727 (_1!9466 (get!4845 lt!538217))) rule!240))))

(declare-fun b!1554192 () Bool)

(declare-fun res!693977 () Bool)

(assert (=> b!1554192 (=> (not res!693977) (not e!997085))))

(assert (=> b!1554192 (= res!693977 (= (value!93571 (_1!9466 (get!4845 lt!538217))) (apply!4108 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217)))) (seqFromList!1772 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))))))))

(declare-fun b!1554193 () Bool)

(declare-fun e!997084 () Option!3032)

(declare-fun lt!538218 () tuple2!16256)

(assert (=> b!1554193 (= e!997084 (Some!3031 (tuple2!16261 (Token!5471 (apply!4108 (transformation!2945 rule!240) (seqFromList!1772 (_1!9463 lt!538218))) rule!240 (size!13606 (seqFromList!1772 (_1!9463 lt!538218))) (_1!9463 lt!538218)) (_2!9463 lt!538218))))))

(declare-fun lt!538214 () Unit!26051)

(assert (=> b!1554193 (= lt!538214 (longestMatchIsAcceptedByMatchOrIsEmpty!314 (regex!2945 rule!240) lt!538190))))

(declare-fun res!693975 () Bool)

(assert (=> b!1554193 (= res!693975 (isEmpty!10106 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(declare-fun e!997086 () Bool)

(assert (=> b!1554193 (=> res!693975 e!997086)))

(assert (=> b!1554193 e!997086))

(declare-fun lt!538216 () Unit!26051)

(assert (=> b!1554193 (= lt!538216 lt!538214)))

(declare-fun lt!538215 () Unit!26051)

(declare-fun lemmaSemiInverse!364 (TokenValueInjection!5730 BalanceConc!11068) Unit!26051)

(assert (=> b!1554193 (= lt!538215 (lemmaSemiInverse!364 (transformation!2945 rule!240) (seqFromList!1772 (_1!9463 lt!538218))))))

(declare-fun b!1554195 () Bool)

(assert (=> b!1554195 (= e!997086 (matchR!1877 (regex!2945 rule!240) (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(declare-fun b!1554196 () Bool)

(assert (=> b!1554196 (= e!997084 None!3031)))

(declare-fun b!1554197 () Bool)

(declare-fun res!693978 () Bool)

(assert (=> b!1554197 (=> (not res!693978) (not e!997085))))

(declare-fun ++!4413 (List!16871 List!16871) List!16871)

(declare-fun charsOf!1645 (Token!5470) BalanceConc!11068)

(assert (=> b!1554197 (= res!693978 (= (++!4413 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))) (_2!9466 (get!4845 lt!538217))) lt!538190))))

(declare-fun b!1554198 () Bool)

(declare-fun res!693973 () Bool)

(assert (=> b!1554198 (=> (not res!693973) (not e!997085))))

(assert (=> b!1554198 (= res!693973 (< (size!13604 (_2!9466 (get!4845 lt!538217))) (size!13604 lt!538190)))))

(declare-fun b!1554199 () Bool)

(declare-fun e!997083 () Bool)

(assert (=> b!1554199 (= e!997083 e!997085)))

(declare-fun res!693974 () Bool)

(assert (=> b!1554199 (=> (not res!693974) (not e!997085))))

(assert (=> b!1554199 (= res!693974 (matchR!1877 (regex!2945 rule!240) (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))))))

(declare-fun b!1554194 () Bool)

(assert (=> b!1554194 (= e!997085 (= (size!13605 (_1!9466 (get!4845 lt!538217))) (size!13604 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217))))))))

(declare-fun d!461070 () Bool)

(assert (=> d!461070 e!997083))

(declare-fun res!693979 () Bool)

(assert (=> d!461070 (=> res!693979 e!997083)))

(declare-fun isEmpty!10108 (Option!3032) Bool)

(assert (=> d!461070 (= res!693979 (isEmpty!10108 lt!538217))))

(assert (=> d!461070 (= lt!538217 e!997084)))

(declare-fun c!252628 () Bool)

(assert (=> d!461070 (= c!252628 (isEmpty!10106 (_1!9463 lt!538218)))))

(declare-fun findLongestMatch!260 (Regex!4273 List!16871) tuple2!16256)

(assert (=> d!461070 (= lt!538218 (findLongestMatch!260 (regex!2945 rule!240) lt!538190))))

(assert (=> d!461070 (ruleValid!682 thiss!16438 rule!240)))

(assert (=> d!461070 (= (maxPrefixOneRule!701 thiss!16438 rule!240 lt!538190) lt!538217)))

(assert (= (and d!461070 c!252628) b!1554196))

(assert (= (and d!461070 (not c!252628)) b!1554193))

(assert (= (and b!1554193 (not res!693975)) b!1554195))

(assert (= (and d!461070 (not res!693979)) b!1554199))

(assert (= (and b!1554199 res!693974) b!1554197))

(assert (= (and b!1554197 res!693978) b!1554198))

(assert (= (and b!1554198 res!693973) b!1554191))

(assert (= (and b!1554191 res!693976) b!1554192))

(assert (= (and b!1554192 res!693977) b!1554194))

(assert (=> b!1554195 m!1826561))

(assert (=> b!1554195 m!1826563))

(assert (=> b!1554195 m!1826561))

(assert (=> b!1554195 m!1826563))

(assert (=> b!1554195 m!1826565))

(declare-fun m!1826681 () Bool)

(assert (=> b!1554195 m!1826681))

(declare-fun m!1826683 () Bool)

(assert (=> d!461070 m!1826683))

(declare-fun m!1826685 () Bool)

(assert (=> d!461070 m!1826685))

(declare-fun m!1826687 () Bool)

(assert (=> d!461070 m!1826687))

(assert (=> d!461070 m!1826631))

(assert (=> b!1554193 m!1826557))

(assert (=> b!1554193 m!1826561))

(assert (=> b!1554193 m!1826563))

(assert (=> b!1554193 m!1826565))

(declare-fun m!1826689 () Bool)

(assert (=> b!1554193 m!1826689))

(assert (=> b!1554193 m!1826561))

(assert (=> b!1554193 m!1826563))

(declare-fun m!1826691 () Bool)

(assert (=> b!1554193 m!1826691))

(declare-fun m!1826693 () Bool)

(assert (=> b!1554193 m!1826693))

(assert (=> b!1554193 m!1826691))

(assert (=> b!1554193 m!1826691))

(declare-fun m!1826695 () Bool)

(assert (=> b!1554193 m!1826695))

(assert (=> b!1554193 m!1826691))

(declare-fun m!1826697 () Bool)

(assert (=> b!1554193 m!1826697))

(declare-fun m!1826699 () Bool)

(assert (=> b!1554191 m!1826699))

(assert (=> b!1554194 m!1826699))

(declare-fun m!1826701 () Bool)

(assert (=> b!1554194 m!1826701))

(assert (=> b!1554197 m!1826699))

(declare-fun m!1826703 () Bool)

(assert (=> b!1554197 m!1826703))

(assert (=> b!1554197 m!1826703))

(declare-fun m!1826705 () Bool)

(assert (=> b!1554197 m!1826705))

(assert (=> b!1554197 m!1826705))

(declare-fun m!1826707 () Bool)

(assert (=> b!1554197 m!1826707))

(assert (=> b!1554198 m!1826699))

(declare-fun m!1826709 () Bool)

(assert (=> b!1554198 m!1826709))

(assert (=> b!1554198 m!1826563))

(assert (=> b!1554199 m!1826699))

(assert (=> b!1554199 m!1826703))

(assert (=> b!1554199 m!1826703))

(assert (=> b!1554199 m!1826705))

(assert (=> b!1554199 m!1826705))

(declare-fun m!1826711 () Bool)

(assert (=> b!1554199 m!1826711))

(assert (=> b!1554192 m!1826699))

(declare-fun m!1826713 () Bool)

(assert (=> b!1554192 m!1826713))

(assert (=> b!1554192 m!1826713))

(declare-fun m!1826715 () Bool)

(assert (=> b!1554192 m!1826715))

(assert (=> b!1554114 d!461070))

(declare-fun d!461072 () Bool)

(declare-fun dynLambda!7445 (Int BalanceConc!11068) Bool)

(assert (=> d!461072 (dynLambda!7445 lambda!65797 lt!538195)))

(declare-fun lt!538221 () Unit!26051)

(declare-fun choose!9270 (Int BalanceConc!11068) Unit!26051)

(assert (=> d!461072 (= lt!538221 (choose!9270 lambda!65797 lt!538195))))

(assert (=> d!461072 (Forall!606 lambda!65797)))

(assert (=> d!461072 (= (ForallOf!209 lambda!65797 lt!538195) lt!538221)))

(declare-fun b_lambda!48773 () Bool)

(assert (=> (not b_lambda!48773) (not d!461072)))

(declare-fun bs!388160 () Bool)

(assert (= bs!388160 d!461072))

(declare-fun m!1826717 () Bool)

(assert (=> bs!388160 m!1826717))

(declare-fun m!1826719 () Bool)

(assert (=> bs!388160 m!1826719))

(assert (=> bs!388160 m!1826553))

(assert (=> b!1554114 d!461072))

(declare-fun d!461074 () Bool)

(assert (=> d!461074 (= (isDefined!2435 (maxPrefixOneRule!701 thiss!16438 rule!240 lt!538190)) (not (isEmpty!10108 (maxPrefixOneRule!701 thiss!16438 rule!240 lt!538190))))))

(declare-fun bs!388161 () Bool)

(assert (= bs!388161 d!461074))

(assert (=> bs!388161 m!1826611))

(declare-fun m!1826721 () Bool)

(assert (=> bs!388161 m!1826721))

(assert (=> b!1554114 d!461074))

(declare-fun d!461076 () Bool)

(assert (=> d!461076 (dynLambda!7445 lambda!65797 (_1!9464 (_1!9465 lt!538187)))))

(declare-fun lt!538222 () Unit!26051)

(assert (=> d!461076 (= lt!538222 (choose!9270 lambda!65797 (_1!9464 (_1!9465 lt!538187))))))

(assert (=> d!461076 (Forall!606 lambda!65797)))

(assert (=> d!461076 (= (ForallOf!209 lambda!65797 (_1!9464 (_1!9465 lt!538187))) lt!538222)))

(declare-fun b_lambda!48775 () Bool)

(assert (=> (not b_lambda!48775) (not d!461076)))

(declare-fun bs!388162 () Bool)

(assert (= bs!388162 d!461076))

(declare-fun m!1826723 () Bool)

(assert (=> bs!388162 m!1826723))

(declare-fun m!1826725 () Bool)

(assert (=> bs!388162 m!1826725))

(assert (=> bs!388162 m!1826553))

(assert (=> b!1554114 d!461076))

(declare-fun d!461078 () Bool)

(declare-fun c!252631 () Bool)

(assert (=> d!461078 (= c!252631 ((_ is Node!5563) (c!252615 input!1676)))))

(declare-fun e!997091 () Bool)

(assert (=> d!461078 (= (inv!22074 (c!252615 input!1676)) e!997091)))

(declare-fun b!1554206 () Bool)

(declare-fun inv!22080 (Conc!5563) Bool)

(assert (=> b!1554206 (= e!997091 (inv!22080 (c!252615 input!1676)))))

(declare-fun b!1554207 () Bool)

(declare-fun e!997092 () Bool)

(assert (=> b!1554207 (= e!997091 e!997092)))

(declare-fun res!693982 () Bool)

(assert (=> b!1554207 (= res!693982 (not ((_ is Leaf!8245) (c!252615 input!1676))))))

(assert (=> b!1554207 (=> res!693982 e!997092)))

(declare-fun b!1554208 () Bool)

(declare-fun inv!22081 (Conc!5563) Bool)

(assert (=> b!1554208 (= e!997092 (inv!22081 (c!252615 input!1676)))))

(assert (= (and d!461078 c!252631) b!1554206))

(assert (= (and d!461078 (not c!252631)) b!1554207))

(assert (= (and b!1554207 (not res!693982)) b!1554208))

(declare-fun m!1826727 () Bool)

(assert (=> b!1554206 m!1826727))

(declare-fun m!1826729 () Bool)

(assert (=> b!1554208 m!1826729))

(assert (=> b!1554094 d!461078))

(declare-fun d!461080 () Bool)

(declare-fun c!252632 () Bool)

(assert (=> d!461080 (= c!252632 ((_ is Node!5563) (c!252615 totalInput!568)))))

(declare-fun e!997093 () Bool)

(assert (=> d!461080 (= (inv!22074 (c!252615 totalInput!568)) e!997093)))

(declare-fun b!1554209 () Bool)

(assert (=> b!1554209 (= e!997093 (inv!22080 (c!252615 totalInput!568)))))

(declare-fun b!1554210 () Bool)

(declare-fun e!997094 () Bool)

(assert (=> b!1554210 (= e!997093 e!997094)))

(declare-fun res!693983 () Bool)

(assert (=> b!1554210 (= res!693983 (not ((_ is Leaf!8245) (c!252615 totalInput!568))))))

(assert (=> b!1554210 (=> res!693983 e!997094)))

(declare-fun b!1554211 () Bool)

(assert (=> b!1554211 (= e!997094 (inv!22081 (c!252615 totalInput!568)))))

(assert (= (and d!461080 c!252632) b!1554209))

(assert (= (and d!461080 (not c!252632)) b!1554210))

(assert (= (and b!1554210 (not res!693983)) b!1554211))

(declare-fun m!1826731 () Bool)

(assert (=> b!1554209 m!1826731))

(declare-fun m!1826733 () Bool)

(assert (=> b!1554211 m!1826733))

(assert (=> b!1554096 d!461080))

(declare-fun d!461082 () Bool)

(declare-fun lt!538225 () Bool)

(assert (=> d!461082 (= lt!538225 (isEmpty!10106 (list!6489 (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun isEmpty!10109 (Conc!5563) Bool)

(assert (=> d!461082 (= lt!538225 (isEmpty!10109 (c!252615 (_1!9464 (_1!9465 lt!538187)))))))

(assert (=> d!461082 (= (isEmpty!10105 (_1!9464 (_1!9465 lt!538187))) lt!538225)))

(declare-fun bs!388163 () Bool)

(assert (= bs!388163 d!461082))

(assert (=> bs!388163 m!1826621))

(assert (=> bs!388163 m!1826621))

(declare-fun m!1826735 () Bool)

(assert (=> bs!388163 m!1826735))

(declare-fun m!1826737 () Bool)

(assert (=> bs!388163 m!1826737))

(assert (=> b!1554095 d!461082))

(declare-fun b!1554221 () Bool)

(declare-fun res!693993 () Bool)

(declare-fun e!997097 () Bool)

(assert (=> b!1554221 (=> (not res!693993) (not e!997097))))

(declare-fun lt!538228 () tuple4!888)

(assert (=> b!1554221 (= res!693993 (valid!1439 (_2!9465 lt!538228)))))

(declare-fun b!1554222 () Bool)

(declare-fun res!693992 () Bool)

(assert (=> b!1554222 (=> (not res!693992) (not e!997097))))

(assert (=> b!1554222 (= res!693992 (valid!1440 (_4!444 lt!538228)))))

(declare-fun d!461084 () Bool)

(assert (=> d!461084 e!997097))

(declare-fun res!693995 () Bool)

(assert (=> d!461084 (=> (not res!693995) (not e!997097))))

(assert (=> d!461084 (= res!693995 (= (tuple2!16257 (list!6489 (_1!9464 (_1!9465 lt!538228))) (list!6489 (_2!9464 (_1!9465 lt!538228)))) (findLongestMatch!260 (regex!2945 rule!240) (list!6489 input!1676))))))

(declare-fun choose!9271 (Regex!4273 BalanceConc!11068 BalanceConc!11068 CacheUp!1056 CacheDown!1060 CacheFurthestNullable!482) tuple4!888)

(assert (=> d!461084 (= lt!538228 (choose!9271 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!461084 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461084 (= (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!538228)))

(declare-fun b!1554220 () Bool)

(declare-fun res!693994 () Bool)

(assert (=> b!1554220 (=> (not res!693994) (not e!997097))))

(assert (=> b!1554220 (= res!693994 (valid!1441 (_3!1335 lt!538228)))))

(declare-fun b!1554223 () Bool)

(assert (=> b!1554223 (= e!997097 (= (totalInput!2456 (_4!444 lt!538228)) totalInput!568))))

(assert (= (and d!461084 res!693995) b!1554220))

(assert (= (and b!1554220 res!693994) b!1554221))

(assert (= (and b!1554221 res!693993) b!1554222))

(assert (= (and b!1554222 res!693992) b!1554223))

(declare-fun m!1826739 () Bool)

(assert (=> b!1554221 m!1826739))

(declare-fun m!1826741 () Bool)

(assert (=> b!1554222 m!1826741))

(declare-fun m!1826743 () Bool)

(assert (=> d!461084 m!1826743))

(declare-fun m!1826745 () Bool)

(assert (=> d!461084 m!1826745))

(assert (=> d!461084 m!1826659))

(declare-fun m!1826747 () Bool)

(assert (=> d!461084 m!1826747))

(assert (=> d!461084 m!1826647))

(assert (=> d!461084 m!1826647))

(declare-fun m!1826749 () Bool)

(assert (=> d!461084 m!1826749))

(declare-fun m!1826751 () Bool)

(assert (=> b!1554220 m!1826751))

(assert (=> b!1554095 d!461084))

(declare-fun d!461086 () Bool)

(declare-fun validCacheMapUp!160 (MutableMap!1735) Bool)

(assert (=> d!461086 (= (valid!1439 cacheUp!755) (validCacheMapUp!160 (cache!2116 cacheUp!755)))))

(declare-fun bs!388164 () Bool)

(assert (= bs!388164 d!461086))

(declare-fun m!1826753 () Bool)

(assert (=> bs!388164 m!1826753))

(assert (=> b!1554079 d!461086))

(declare-fun d!461088 () Bool)

(declare-fun validCacheMapDown!160 (MutableMap!1737) Bool)

(assert (=> d!461088 (= (valid!1441 cacheDown!768) (validCacheMapDown!160 (cache!2118 cacheDown!768)))))

(declare-fun bs!388165 () Bool)

(assert (= bs!388165 d!461088))

(declare-fun m!1826755 () Bool)

(assert (=> bs!388165 m!1826755))

(assert (=> b!1554109 d!461088))

(declare-fun d!461090 () Bool)

(assert (=> d!461090 (= (inv!22076 totalInput!568) (isBalanced!1642 (c!252615 totalInput!568)))))

(declare-fun bs!388166 () Bool)

(assert (= bs!388166 d!461090))

(declare-fun m!1826757 () Bool)

(assert (=> bs!388166 m!1826757))

(assert (=> start!144060 d!461090))

(declare-fun d!461092 () Bool)

(declare-fun res!693998 () Bool)

(declare-fun e!997100 () Bool)

(assert (=> d!461092 (=> (not res!693998) (not e!997100))))

(assert (=> d!461092 (= res!693998 ((_ is HashMap!1737) (cache!2118 cacheDown!768)))))

(assert (=> d!461092 (= (inv!22079 cacheDown!768) e!997100)))

(declare-fun b!1554226 () Bool)

(assert (=> b!1554226 (= e!997100 (validCacheMapDown!160 (cache!2118 cacheDown!768)))))

(assert (= (and d!461092 res!693998) b!1554226))

(assert (=> b!1554226 m!1826755))

(assert (=> start!144060 d!461092))

(declare-fun d!461094 () Bool)

(declare-fun res!694001 () Bool)

(declare-fun e!997103 () Bool)

(assert (=> d!461094 (=> (not res!694001) (not e!997103))))

(assert (=> d!461094 (= res!694001 ((_ is HashMap!1735) (cache!2116 cacheUp!755)))))

(assert (=> d!461094 (= (inv!22077 cacheUp!755) e!997103)))

(declare-fun b!1554229 () Bool)

(assert (=> b!1554229 (= e!997103 (validCacheMapUp!160 (cache!2116 cacheUp!755)))))

(assert (= (and d!461094 res!694001) b!1554229))

(assert (=> b!1554229 m!1826753))

(assert (=> start!144060 d!461094))

(declare-fun d!461096 () Bool)

(assert (=> d!461096 (= (inv!22076 input!1676) (isBalanced!1642 (c!252615 input!1676)))))

(declare-fun bs!388167 () Bool)

(assert (= bs!388167 d!461096))

(declare-fun m!1826759 () Bool)

(assert (=> bs!388167 m!1826759))

(assert (=> start!144060 d!461096))

(declare-fun d!461098 () Bool)

(declare-fun res!694004 () Bool)

(declare-fun e!997106 () Bool)

(assert (=> d!461098 (=> (not res!694004) (not e!997106))))

(assert (=> d!461098 (= res!694004 ((_ is HashMap!1736) (cache!2117 cacheFurthestNullable!103)))))

(assert (=> d!461098 (= (inv!22078 cacheFurthestNullable!103) e!997106)))

(declare-fun b!1554232 () Bool)

(declare-fun validCacheMapFurthestNullable!73 (MutableMap!1736 BalanceConc!11068) Bool)

(assert (=> b!1554232 (= e!997106 (validCacheMapFurthestNullable!73 (cache!2117 cacheFurthestNullable!103) (totalInput!2456 cacheFurthestNullable!103)))))

(assert (= (and d!461098 res!694004) b!1554232))

(declare-fun m!1826761 () Bool)

(assert (=> b!1554232 m!1826761))

(assert (=> start!144060 d!461098))

(declare-fun d!461100 () Bool)

(declare-fun res!694009 () Bool)

(declare-fun e!997109 () Bool)

(assert (=> d!461100 (=> (not res!694009) (not e!997109))))

(assert (=> d!461100 (= res!694009 (validRegex!1710 (regex!2945 rule!240)))))

(assert (=> d!461100 (= (ruleValid!682 thiss!16438 rule!240) e!997109)))

(declare-fun b!1554237 () Bool)

(declare-fun res!694010 () Bool)

(assert (=> b!1554237 (=> (not res!694010) (not e!997109))))

(assert (=> b!1554237 (= res!694010 (not (nullable!1269 (regex!2945 rule!240))))))

(declare-fun b!1554238 () Bool)

(assert (=> b!1554238 (= e!997109 (not (= (tag!3209 rule!240) (String!19464 ""))))))

(assert (= (and d!461100 res!694009) b!1554237))

(assert (= (and b!1554237 res!694010) b!1554238))

(assert (=> d!461100 m!1826659))

(assert (=> b!1554237 m!1826657))

(assert (=> b!1554088 d!461100))

(declare-fun d!461102 () Bool)

(assert (=> d!461102 (= (array_inv!1970 (_keys!2085 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) (bvsge (size!13601 (_keys!2085 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1554090 d!461102))

(declare-fun d!461104 () Bool)

(assert (=> d!461104 (= (array_inv!1971 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) (bvsge (size!13600 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1554090 d!461104))

(declare-fun d!461106 () Bool)

(assert (=> d!461106 (= (array_inv!1970 (_keys!2086 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) (bvsge (size!13601 (_keys!2086 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1554100 d!461106))

(declare-fun d!461108 () Bool)

(assert (=> d!461108 (= (array_inv!1972 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) (bvsge (size!13602 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1554100 d!461108))

(declare-fun d!461110 () Bool)

(declare-fun e!997112 () Bool)

(assert (=> d!461110 e!997112))

(declare-fun res!694013 () Bool)

(assert (=> d!461110 (=> res!694013 e!997112)))

(declare-fun lt!538231 () Bool)

(assert (=> d!461110 (= res!694013 (not lt!538231))))

(declare-fun drop!784 (List!16871 Int) List!16871)

(assert (=> d!461110 (= lt!538231 (= lt!538190 (drop!784 (list!6489 totalInput!568) (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190)))))))

(assert (=> d!461110 (= (isSuffix!373 lt!538190 (list!6489 totalInput!568)) lt!538231)))

(declare-fun b!1554241 () Bool)

(assert (=> b!1554241 (= e!997112 (>= (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190)))))

(assert (= (and d!461110 (not res!694013)) b!1554241))

(assert (=> d!461110 m!1826643))

(declare-fun m!1826763 () Bool)

(assert (=> d!461110 m!1826763))

(assert (=> d!461110 m!1826563))

(assert (=> d!461110 m!1826643))

(declare-fun m!1826765 () Bool)

(assert (=> d!461110 m!1826765))

(assert (=> b!1554241 m!1826643))

(assert (=> b!1554241 m!1826763))

(assert (=> b!1554241 m!1826563))

(assert (=> b!1554099 d!461110))

(declare-fun d!461112 () Bool)

(assert (=> d!461112 (= (list!6489 totalInput!568) (list!6490 (c!252615 totalInput!568)))))

(declare-fun bs!388168 () Bool)

(assert (= bs!388168 d!461112))

(declare-fun m!1826767 () Bool)

(assert (=> bs!388168 m!1826767))

(assert (=> b!1554099 d!461112))

(declare-fun d!461114 () Bool)

(assert (=> d!461114 (= (list!6489 input!1676) (list!6490 (c!252615 input!1676)))))

(declare-fun bs!388169 () Bool)

(assert (= bs!388169 d!461114))

(declare-fun m!1826769 () Bool)

(assert (=> bs!388169 m!1826769))

(assert (=> b!1554099 d!461114))

(declare-fun d!461116 () Bool)

(declare-fun choose!9272 (Int) Bool)

(assert (=> d!461116 (= (Forall!606 lambda!65797) (choose!9272 lambda!65797))))

(declare-fun bs!388170 () Bool)

(assert (= bs!388170 d!461116))

(declare-fun m!1826771 () Bool)

(assert (=> bs!388170 m!1826771))

(assert (=> b!1554111 d!461116))

(declare-fun d!461118 () Bool)

(assert (=> d!461118 (= (list!6489 lt!538195) (list!6490 (c!252615 lt!538195)))))

(declare-fun bs!388171 () Bool)

(assert (= bs!388171 d!461118))

(declare-fun m!1826773 () Bool)

(assert (=> bs!388171 m!1826773))

(assert (=> b!1554091 d!461118))

(declare-fun d!461120 () Bool)

(assert (=> d!461120 (= (array_inv!1970 (_keys!2087 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) (bvsge (size!13601 (_keys!2087 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1554113 d!461120))

(declare-fun d!461122 () Bool)

(assert (=> d!461122 (= (array_inv!1973 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) (bvsge (size!13603 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1554113 d!461122))

(declare-fun d!461124 () Bool)

(declare-fun c!252633 () Bool)

(assert (=> d!461124 (= c!252633 ((_ is Node!5563) (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))

(declare-fun e!997113 () Bool)

(assert (=> d!461124 (= (inv!22074 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) e!997113)))

(declare-fun b!1554242 () Bool)

(assert (=> b!1554242 (= e!997113 (inv!22080 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))

(declare-fun b!1554243 () Bool)

(declare-fun e!997114 () Bool)

(assert (=> b!1554243 (= e!997113 e!997114)))

(declare-fun res!694014 () Bool)

(assert (=> b!1554243 (= res!694014 (not ((_ is Leaf!8245) (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(assert (=> b!1554243 (=> res!694014 e!997114)))

(declare-fun b!1554244 () Bool)

(assert (=> b!1554244 (= e!997114 (inv!22081 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))

(assert (= (and d!461124 c!252633) b!1554242))

(assert (= (and d!461124 (not c!252633)) b!1554243))

(assert (= (and b!1554243 (not res!694014)) b!1554244))

(declare-fun m!1826775 () Bool)

(assert (=> b!1554242 m!1826775))

(declare-fun m!1826777 () Bool)

(assert (=> b!1554244 m!1826777))

(assert (=> b!1554092 d!461124))

(declare-fun d!461126 () Bool)

(declare-fun lt!538234 () Int)

(assert (=> d!461126 (>= lt!538234 0)))

(declare-fun e!997117 () Int)

(assert (=> d!461126 (= lt!538234 e!997117)))

(declare-fun c!252636 () Bool)

(assert (=> d!461126 (= c!252636 ((_ is Nil!16803) Nil!16803))))

(assert (=> d!461126 (= (size!13604 Nil!16803) lt!538234)))

(declare-fun b!1554249 () Bool)

(assert (=> b!1554249 (= e!997117 0)))

(declare-fun b!1554250 () Bool)

(assert (=> b!1554250 (= e!997117 (+ 1 (size!13604 (t!141314 Nil!16803))))))

(assert (= (and d!461126 c!252636) b!1554249))

(assert (= (and d!461126 (not c!252636)) b!1554250))

(declare-fun m!1826779 () Bool)

(assert (=> b!1554250 m!1826779))

(assert (=> b!1554102 d!461126))

(declare-fun d!461128 () Bool)

(declare-fun e!997120 () Bool)

(assert (=> d!461128 e!997120))

(declare-fun res!694017 () Bool)

(assert (=> d!461128 (=> res!694017 e!997120)))

(assert (=> d!461128 (= res!694017 (isEmpty!10106 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(declare-fun lt!538237 () Unit!26051)

(declare-fun choose!9273 (Regex!4273 List!16871) Unit!26051)

(assert (=> d!461128 (= lt!538237 (choose!9273 (regex!2945 rule!240) lt!538190))))

(assert (=> d!461128 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461128 (= (longestMatchIsAcceptedByMatchOrIsEmpty!314 (regex!2945 rule!240) lt!538190) lt!538237)))

(declare-fun b!1554253 () Bool)

(assert (=> b!1554253 (= e!997120 (matchR!1877 (regex!2945 rule!240) (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(assert (= (and d!461128 (not res!694017)) b!1554253))

(assert (=> d!461128 m!1826563))

(assert (=> d!461128 m!1826689))

(assert (=> d!461128 m!1826561))

(assert (=> d!461128 m!1826563))

(assert (=> d!461128 m!1826565))

(assert (=> d!461128 m!1826561))

(declare-fun m!1826781 () Bool)

(assert (=> d!461128 m!1826781))

(assert (=> d!461128 m!1826659))

(assert (=> b!1554253 m!1826561))

(assert (=> b!1554253 m!1826563))

(assert (=> b!1554253 m!1826561))

(assert (=> b!1554253 m!1826563))

(assert (=> b!1554253 m!1826565))

(assert (=> b!1554253 m!1826681))

(assert (=> b!1554102 d!461128))

(declare-fun bs!388172 () Bool)

(declare-fun d!461130 () Bool)

(assert (= bs!388172 (and d!461130 b!1554111)))

(declare-fun lambda!65800 () Int)

(assert (=> bs!388172 (= lambda!65800 lambda!65797)))

(assert (=> d!461130 true))

(assert (=> d!461130 (< (dynLambda!7443 order!9885 (toChars!4173 (transformation!2945 rule!240))) (dynLambda!7442 order!9883 lambda!65800))))

(assert (=> d!461130 true))

(assert (=> d!461130 (< (dynLambda!7441 order!9881 (toValue!4314 (transformation!2945 rule!240))) (dynLambda!7442 order!9883 lambda!65800))))

(assert (=> d!461130 (= (semiInverseModEq!1110 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))) (Forall!606 lambda!65800))))

(declare-fun bs!388173 () Bool)

(assert (= bs!388173 d!461130))

(declare-fun m!1826783 () Bool)

(assert (=> bs!388173 m!1826783))

(assert (=> b!1554102 d!461130))

(declare-fun d!461132 () Bool)

(declare-fun lt!538238 () Int)

(assert (=> d!461132 (>= lt!538238 0)))

(declare-fun e!997121 () Int)

(assert (=> d!461132 (= lt!538238 e!997121)))

(declare-fun c!252637 () Bool)

(assert (=> d!461132 (= c!252637 ((_ is Nil!16803) lt!538190))))

(assert (=> d!461132 (= (size!13604 lt!538190) lt!538238)))

(declare-fun b!1554258 () Bool)

(assert (=> b!1554258 (= e!997121 0)))

(declare-fun b!1554259 () Bool)

(assert (=> b!1554259 (= e!997121 (+ 1 (size!13604 (t!141314 lt!538190))))))

(assert (= (and d!461132 c!252637) b!1554258))

(assert (= (and d!461132 (not c!252637)) b!1554259))

(declare-fun m!1826785 () Bool)

(assert (=> b!1554259 m!1826785))

(assert (=> b!1554102 d!461132))

(declare-fun bm!101958 () Bool)

(declare-fun call!101963 () Regex!4273)

(declare-fun call!101970 () C!8724)

(assert (=> bm!101958 (= call!101963 (derivativeStep!1021 (regex!2945 rule!240) call!101970))))

(declare-fun b!1554288 () Bool)

(declare-fun e!997141 () tuple2!16256)

(declare-fun e!997145 () tuple2!16256)

(assert (=> b!1554288 (= e!997141 e!997145)))

(declare-fun c!252654 () Bool)

(assert (=> b!1554288 (= c!252654 (= (size!13604 Nil!16803) (size!13604 lt!538190)))))

(declare-fun b!1554289 () Bool)

(declare-fun e!997138 () Bool)

(declare-fun e!997144 () Bool)

(assert (=> b!1554289 (= e!997138 e!997144)))

(declare-fun res!694022 () Bool)

(assert (=> b!1554289 (=> res!694022 e!997144)))

(declare-fun lt!538307 () tuple2!16256)

(assert (=> b!1554289 (= res!694022 (isEmpty!10106 (_1!9463 lt!538307)))))

(declare-fun b!1554290 () Bool)

(declare-fun e!997142 () Unit!26051)

(declare-fun Unit!26053 () Unit!26051)

(assert (=> b!1554290 (= e!997142 Unit!26053)))

(declare-fun lt!538295 () Unit!26051)

(declare-fun call!101968 () Unit!26051)

(assert (=> b!1554290 (= lt!538295 call!101968)))

(declare-fun call!101964 () Bool)

(assert (=> b!1554290 call!101964))

(declare-fun lt!538321 () Unit!26051)

(assert (=> b!1554290 (= lt!538321 lt!538295)))

(declare-fun lt!538317 () Unit!26051)

(declare-fun call!101965 () Unit!26051)

(assert (=> b!1554290 (= lt!538317 call!101965)))

(assert (=> b!1554290 (= lt!538190 Nil!16803)))

(declare-fun lt!538300 () Unit!26051)

(assert (=> b!1554290 (= lt!538300 lt!538317)))

(assert (=> b!1554290 false))

(declare-fun b!1554291 () Bool)

(declare-fun e!997143 () tuple2!16256)

(assert (=> b!1554291 (= e!997143 (tuple2!16257 Nil!16803 lt!538190))))

(declare-fun d!461134 () Bool)

(assert (=> d!461134 e!997138))

(declare-fun res!694023 () Bool)

(assert (=> d!461134 (=> (not res!694023) (not e!997138))))

(assert (=> d!461134 (= res!694023 (= (++!4413 (_1!9463 lt!538307) (_2!9463 lt!538307)) lt!538190))))

(assert (=> d!461134 (= lt!538307 e!997141)))

(declare-fun c!252650 () Bool)

(declare-fun lostCause!387 (Regex!4273) Bool)

(assert (=> d!461134 (= c!252650 (lostCause!387 (regex!2945 rule!240)))))

(declare-fun lt!538319 () Unit!26051)

(declare-fun Unit!26054 () Unit!26051)

(assert (=> d!461134 (= lt!538319 Unit!26054)))

(declare-fun getSuffix!669 (List!16871 List!16871) List!16871)

(assert (=> d!461134 (= (getSuffix!669 lt!538190 Nil!16803) lt!538190)))

(declare-fun lt!538299 () Unit!26051)

(declare-fun lt!538314 () Unit!26051)

(assert (=> d!461134 (= lt!538299 lt!538314)))

(declare-fun lt!538320 () List!16871)

(assert (=> d!461134 (= lt!538190 lt!538320)))

(declare-fun lemmaSamePrefixThenSameSuffix!621 (List!16871 List!16871 List!16871 List!16871 List!16871) Unit!26051)

(assert (=> d!461134 (= lt!538314 (lemmaSamePrefixThenSameSuffix!621 Nil!16803 lt!538190 Nil!16803 lt!538320 lt!538190))))

(assert (=> d!461134 (= lt!538320 (getSuffix!669 lt!538190 Nil!16803))))

(declare-fun lt!538297 () Unit!26051)

(declare-fun lt!538302 () Unit!26051)

(assert (=> d!461134 (= lt!538297 lt!538302)))

(declare-fun isPrefix!1259 (List!16871 List!16871) Bool)

(assert (=> d!461134 (isPrefix!1259 Nil!16803 (++!4413 Nil!16803 lt!538190))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!784 (List!16871 List!16871) Unit!26051)

(assert (=> d!461134 (= lt!538302 (lemmaConcatTwoListThenFirstIsPrefix!784 Nil!16803 lt!538190))))

(assert (=> d!461134 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461134 (= (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)) lt!538307)))

(declare-fun b!1554292 () Bool)

(declare-fun c!252653 () Bool)

(declare-fun call!101966 () Bool)

(assert (=> b!1554292 (= c!252653 call!101966)))

(declare-fun lt!538306 () Unit!26051)

(declare-fun lt!538322 () Unit!26051)

(assert (=> b!1554292 (= lt!538306 lt!538322)))

(declare-fun lt!538303 () C!8724)

(declare-fun lt!538309 () List!16871)

(assert (=> b!1554292 (= (++!4413 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803)) lt!538309) lt!538190)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!438 (List!16871 C!8724 List!16871 List!16871) Unit!26051)

(assert (=> b!1554292 (= lt!538322 (lemmaMoveElementToOtherListKeepsConcatEq!438 Nil!16803 lt!538303 lt!538309 lt!538190))))

(assert (=> b!1554292 (= lt!538309 (tail!2207 lt!538190))))

(assert (=> b!1554292 (= lt!538303 (head!3112 lt!538190))))

(declare-fun lt!538318 () Unit!26051)

(declare-fun lt!538301 () Unit!26051)

(assert (=> b!1554292 (= lt!538318 lt!538301)))

(assert (=> b!1554292 (isPrefix!1259 (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)) lt!538190)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!112 (List!16871 List!16871) Unit!26051)

(assert (=> b!1554292 (= lt!538301 (lemmaAddHeadSuffixToPrefixStillPrefix!112 Nil!16803 lt!538190))))

(declare-fun lt!538305 () Unit!26051)

(declare-fun lt!538311 () Unit!26051)

(assert (=> b!1554292 (= lt!538305 lt!538311)))

(assert (=> b!1554292 (= lt!538311 (lemmaAddHeadSuffixToPrefixStillPrefix!112 Nil!16803 lt!538190))))

(declare-fun lt!538304 () List!16871)

(assert (=> b!1554292 (= lt!538304 (++!4413 Nil!16803 (Cons!16803 (head!3112 lt!538190) Nil!16803)))))

(declare-fun lt!538296 () Unit!26051)

(assert (=> b!1554292 (= lt!538296 e!997142)))

(declare-fun c!252652 () Bool)

(assert (=> b!1554292 (= c!252652 (= (size!13604 Nil!16803) (size!13604 lt!538190)))))

(declare-fun lt!538298 () Unit!26051)

(declare-fun lt!538308 () Unit!26051)

(assert (=> b!1554292 (= lt!538298 lt!538308)))

(assert (=> b!1554292 (<= (size!13604 Nil!16803) (size!13604 lt!538190))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!113 (List!16871 List!16871) Unit!26051)

(assert (=> b!1554292 (= lt!538308 (lemmaIsPrefixThenSmallerEqSize!113 Nil!16803 lt!538190))))

(declare-fun e!997139 () tuple2!16256)

(assert (=> b!1554292 (= e!997145 e!997139)))

(declare-fun b!1554293 () Bool)

(declare-fun Unit!26055 () Unit!26051)

(assert (=> b!1554293 (= e!997142 Unit!26055)))

(declare-fun bm!101959 () Bool)

(declare-fun lemmaIsPrefixRefl!889 (List!16871 List!16871) Unit!26051)

(assert (=> bm!101959 (= call!101968 (lemmaIsPrefixRefl!889 lt!538190 lt!538190))))

(declare-fun bm!101960 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!123 (List!16871 List!16871 List!16871) Unit!26051)

(assert (=> bm!101960 (= call!101965 (lemmaIsPrefixSameLengthThenSameList!123 lt!538190 Nil!16803 lt!538190))))

(declare-fun b!1554294 () Bool)

(assert (=> b!1554294 (= e!997141 (tuple2!16257 Nil!16803 lt!538190))))

(declare-fun b!1554295 () Bool)

(declare-fun e!997140 () tuple2!16256)

(assert (=> b!1554295 (= e!997140 (tuple2!16257 Nil!16803 Nil!16803))))

(declare-fun bm!101961 () Bool)

(assert (=> bm!101961 (= call!101964 (isPrefix!1259 lt!538190 lt!538190))))

(declare-fun b!1554296 () Bool)

(declare-fun lt!538316 () tuple2!16256)

(assert (=> b!1554296 (= e!997143 lt!538316)))

(declare-fun bm!101962 () Bool)

(assert (=> bm!101962 (= call!101966 (nullable!1269 (regex!2945 rule!240)))))

(declare-fun b!1554297 () Bool)

(assert (=> b!1554297 (= e!997139 e!997143)))

(declare-fun call!101969 () tuple2!16256)

(assert (=> b!1554297 (= lt!538316 call!101969)))

(declare-fun c!252651 () Bool)

(assert (=> b!1554297 (= c!252651 (isEmpty!10106 (_1!9463 lt!538316)))))

(declare-fun b!1554298 () Bool)

(declare-fun c!252655 () Bool)

(assert (=> b!1554298 (= c!252655 call!101966)))

(declare-fun lt!538313 () Unit!26051)

(declare-fun lt!538310 () Unit!26051)

(assert (=> b!1554298 (= lt!538313 lt!538310)))

(assert (=> b!1554298 (= lt!538190 Nil!16803)))

(assert (=> b!1554298 (= lt!538310 call!101965)))

(declare-fun lt!538312 () Unit!26051)

(declare-fun lt!538315 () Unit!26051)

(assert (=> b!1554298 (= lt!538312 lt!538315)))

(assert (=> b!1554298 call!101964))

(assert (=> b!1554298 (= lt!538315 call!101968)))

(assert (=> b!1554298 (= e!997145 e!997140)))

(declare-fun b!1554299 () Bool)

(assert (=> b!1554299 (= e!997140 (tuple2!16257 Nil!16803 lt!538190))))

(declare-fun bm!101963 () Bool)

(assert (=> bm!101963 (= call!101970 (head!3112 lt!538190))))

(declare-fun b!1554300 () Bool)

(assert (=> b!1554300 (= e!997139 call!101969)))

(declare-fun b!1554301 () Bool)

(assert (=> b!1554301 (= e!997144 (>= (size!13604 (_1!9463 lt!538307)) (size!13604 Nil!16803)))))

(declare-fun bm!101964 () Bool)

(declare-fun call!101967 () List!16871)

(assert (=> bm!101964 (= call!101967 (tail!2207 lt!538190))))

(declare-fun bm!101965 () Bool)

(assert (=> bm!101965 (= call!101969 (findLongestMatchInner!330 call!101963 lt!538304 (+ (size!13604 Nil!16803) 1) call!101967 lt!538190 (size!13604 lt!538190)))))

(assert (= (and d!461134 c!252650) b!1554294))

(assert (= (and d!461134 (not c!252650)) b!1554288))

(assert (= (and b!1554288 c!252654) b!1554298))

(assert (= (and b!1554288 (not c!252654)) b!1554292))

(assert (= (and b!1554298 c!252655) b!1554295))

(assert (= (and b!1554298 (not c!252655)) b!1554299))

(assert (= (and b!1554292 c!252652) b!1554290))

(assert (= (and b!1554292 (not c!252652)) b!1554293))

(assert (= (and b!1554292 c!252653) b!1554297))

(assert (= (and b!1554292 (not c!252653)) b!1554300))

(assert (= (and b!1554297 c!252651) b!1554291))

(assert (= (and b!1554297 (not c!252651)) b!1554296))

(assert (= (or b!1554297 b!1554300) bm!101964))

(assert (= (or b!1554297 b!1554300) bm!101963))

(assert (= (or b!1554297 b!1554300) bm!101958))

(assert (= (or b!1554297 b!1554300) bm!101965))

(assert (= (or b!1554298 b!1554290) bm!101960))

(assert (= (or b!1554298 b!1554290) bm!101959))

(assert (= (or b!1554298 b!1554292) bm!101962))

(assert (= (or b!1554298 b!1554290) bm!101961))

(assert (= (and d!461134 res!694023) b!1554289))

(assert (= (and b!1554289 (not res!694022)) b!1554301))

(assert (=> d!461134 m!1826659))

(declare-fun m!1826787 () Bool)

(assert (=> d!461134 m!1826787))

(declare-fun m!1826789 () Bool)

(assert (=> d!461134 m!1826789))

(declare-fun m!1826791 () Bool)

(assert (=> d!461134 m!1826791))

(declare-fun m!1826793 () Bool)

(assert (=> d!461134 m!1826793))

(declare-fun m!1826795 () Bool)

(assert (=> d!461134 m!1826795))

(assert (=> d!461134 m!1826791))

(declare-fun m!1826797 () Bool)

(assert (=> d!461134 m!1826797))

(declare-fun m!1826799 () Bool)

(assert (=> d!461134 m!1826799))

(assert (=> bm!101962 m!1826657))

(declare-fun m!1826801 () Bool)

(assert (=> bm!101961 m!1826801))

(declare-fun m!1826803 () Bool)

(assert (=> b!1554292 m!1826803))

(declare-fun m!1826805 () Bool)

(assert (=> b!1554292 m!1826805))

(declare-fun m!1826807 () Bool)

(assert (=> b!1554292 m!1826807))

(assert (=> b!1554292 m!1826787))

(assert (=> b!1554292 m!1826805))

(declare-fun m!1826809 () Bool)

(assert (=> b!1554292 m!1826809))

(declare-fun m!1826811 () Bool)

(assert (=> b!1554292 m!1826811))

(declare-fun m!1826813 () Bool)

(assert (=> b!1554292 m!1826813))

(declare-fun m!1826815 () Bool)

(assert (=> b!1554292 m!1826815))

(declare-fun m!1826817 () Bool)

(assert (=> b!1554292 m!1826817))

(assert (=> b!1554292 m!1826563))

(assert (=> b!1554292 m!1826561))

(assert (=> b!1554292 m!1826787))

(declare-fun m!1826819 () Bool)

(assert (=> b!1554292 m!1826819))

(declare-fun m!1826821 () Bool)

(assert (=> b!1554292 m!1826821))

(assert (=> b!1554292 m!1826811))

(declare-fun m!1826823 () Bool)

(assert (=> b!1554292 m!1826823))

(assert (=> bm!101964 m!1826823))

(declare-fun m!1826825 () Bool)

(assert (=> b!1554297 m!1826825))

(declare-fun m!1826827 () Bool)

(assert (=> bm!101960 m!1826827))

(declare-fun m!1826829 () Bool)

(assert (=> bm!101959 m!1826829))

(assert (=> bm!101963 m!1826817))

(declare-fun m!1826831 () Bool)

(assert (=> b!1554289 m!1826831))

(declare-fun m!1826833 () Bool)

(assert (=> b!1554301 m!1826833))

(assert (=> b!1554301 m!1826561))

(declare-fun m!1826835 () Bool)

(assert (=> bm!101958 m!1826835))

(assert (=> bm!101965 m!1826563))

(declare-fun m!1826837 () Bool)

(assert (=> bm!101965 m!1826837))

(assert (=> b!1554102 d!461134))

(declare-fun d!461136 () Bool)

(assert (=> d!461136 (= (isEmpty!10106 (_1!9463 lt!538191)) ((_ is Nil!16803) (_1!9463 lt!538191)))))

(assert (=> b!1554102 d!461136))

(declare-fun d!461138 () Bool)

(declare-fun e!997148 () Bool)

(assert (=> d!461138 e!997148))

(declare-fun res!694026 () Bool)

(assert (=> d!461138 (=> (not res!694026) (not e!997148))))

(assert (=> d!461138 (= res!694026 (semiInverseModEq!1110 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))))))

(declare-fun Unit!26056 () Unit!26051)

(assert (=> d!461138 (= (lemmaInv!424 (transformation!2945 rule!240)) Unit!26056)))

(declare-fun b!1554304 () Bool)

(assert (=> b!1554304 (= e!997148 (equivClasses!1055 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))))))

(assert (= (and d!461138 res!694026) b!1554304))

(assert (=> d!461138 m!1826567))

(assert (=> b!1554304 m!1826649))

(assert (=> b!1554102 d!461138))

(declare-fun d!461140 () Bool)

(assert (=> d!461140 (= (valid!1440 cacheFurthestNullable!103) (validCacheMapFurthestNullable!73 (cache!2117 cacheFurthestNullable!103) (totalInput!2456 cacheFurthestNullable!103)))))

(declare-fun bs!388174 () Bool)

(assert (= bs!388174 d!461140))

(assert (=> bs!388174 m!1826761))

(assert (=> b!1554093 d!461140))

(declare-fun e!997151 () Bool)

(assert (=> b!1554105 (= tp!455160 e!997151)))

(declare-fun b!1554315 () Bool)

(declare-fun tp_is_empty!7065 () Bool)

(assert (=> b!1554315 (= e!997151 tp_is_empty!7065)))

(declare-fun b!1554316 () Bool)

(declare-fun tp!455183 () Bool)

(declare-fun tp!455185 () Bool)

(assert (=> b!1554316 (= e!997151 (and tp!455183 tp!455185))))

(declare-fun b!1554317 () Bool)

(declare-fun tp!455181 () Bool)

(assert (=> b!1554317 (= e!997151 tp!455181)))

(declare-fun b!1554318 () Bool)

(declare-fun tp!455182 () Bool)

(declare-fun tp!455184 () Bool)

(assert (=> b!1554318 (= e!997151 (and tp!455182 tp!455184))))

(assert (= (and b!1554105 ((_ is ElementMatch!4273) (regex!2945 rule!240))) b!1554315))

(assert (= (and b!1554105 ((_ is Concat!7309) (regex!2945 rule!240))) b!1554316))

(assert (= (and b!1554105 ((_ is Star!4273) (regex!2945 rule!240))) b!1554317))

(assert (= (and b!1554105 ((_ is Union!4273) (regex!2945 rule!240))) b!1554318))

(declare-fun setIsEmpty!10766 () Bool)

(declare-fun setRes!10766 () Bool)

(assert (=> setIsEmpty!10766 setRes!10766))

(declare-fun setNonEmpty!10766 () Bool)

(declare-fun setElem!10766 () Context!1582)

(declare-fun tp!455200 () Bool)

(declare-fun e!997161 () Bool)

(declare-fun inv!22082 (Context!1582) Bool)

(assert (=> setNonEmpty!10766 (= setRes!10766 (and tp!455200 (inv!22082 setElem!10766) e!997161))))

(declare-fun mapDefault!8327 () List!16874)

(declare-fun setRest!10766 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10766 (= (_1!9459 (_1!9460 (h!22207 mapDefault!8327))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10766 true) setRest!10766))))

(declare-fun b!1554329 () Bool)

(declare-fun e!997160 () Bool)

(declare-fun tp!455204 () Bool)

(assert (=> b!1554329 (= e!997160 (and setRes!10766 tp!455204))))

(declare-fun condSetEmpty!10766 () Bool)

(assert (=> b!1554329 (= condSetEmpty!10766 (= (_1!9459 (_1!9460 (h!22207 mapDefault!8327))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun b!1554330 () Bool)

(declare-fun e!997162 () Bool)

(declare-fun setRes!10767 () Bool)

(declare-fun tp!455205 () Bool)

(assert (=> b!1554330 (= e!997162 (and setRes!10767 tp!455205))))

(declare-fun condSetEmpty!10767 () Bool)

(declare-fun mapValue!8327 () List!16874)

(assert (=> b!1554330 (= condSetEmpty!10767 (= (_1!9459 (_1!9460 (h!22207 mapValue!8327))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10767 () Bool)

(assert (=> setIsEmpty!10767 setRes!10767))

(declare-fun setNonEmpty!10767 () Bool)

(declare-fun tp!455202 () Bool)

(declare-fun setElem!10767 () Context!1582)

(declare-fun e!997163 () Bool)

(assert (=> setNonEmpty!10767 (= setRes!10767 (and tp!455202 (inv!22082 setElem!10767) e!997163))))

(declare-fun setRest!10767 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10767 (= (_1!9459 (_1!9460 (h!22207 mapValue!8327))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10767 true) setRest!10767))))

(declare-fun b!1554331 () Bool)

(declare-fun tp!455201 () Bool)

(assert (=> b!1554331 (= e!997163 tp!455201)))

(declare-fun condMapEmpty!8327 () Bool)

(assert (=> mapNonEmpty!8323 (= condMapEmpty!8327 (= mapRest!8322 ((as const (Array (_ BitVec 32) List!16874)) mapDefault!8327)))))

(declare-fun mapRes!8327 () Bool)

(assert (=> mapNonEmpty!8323 (= tp!455148 (and e!997160 mapRes!8327))))

(declare-fun mapIsEmpty!8327 () Bool)

(assert (=> mapIsEmpty!8327 mapRes!8327))

(declare-fun mapNonEmpty!8327 () Bool)

(declare-fun tp!455206 () Bool)

(assert (=> mapNonEmpty!8327 (= mapRes!8327 (and tp!455206 e!997162))))

(declare-fun mapKey!8327 () (_ BitVec 32))

(declare-fun mapRest!8327 () (Array (_ BitVec 32) List!16874))

(assert (=> mapNonEmpty!8327 (= mapRest!8322 (store mapRest!8327 mapKey!8327 mapValue!8327))))

(declare-fun b!1554332 () Bool)

(declare-fun tp!455203 () Bool)

(assert (=> b!1554332 (= e!997161 tp!455203)))

(assert (= (and mapNonEmpty!8323 condMapEmpty!8327) mapIsEmpty!8327))

(assert (= (and mapNonEmpty!8323 (not condMapEmpty!8327)) mapNonEmpty!8327))

(assert (= (and b!1554330 condSetEmpty!10767) setIsEmpty!10767))

(assert (= (and b!1554330 (not condSetEmpty!10767)) setNonEmpty!10767))

(assert (= setNonEmpty!10767 b!1554331))

(assert (= (and mapNonEmpty!8327 ((_ is Cons!16806) mapValue!8327)) b!1554330))

(assert (= (and b!1554329 condSetEmpty!10766) setIsEmpty!10766))

(assert (= (and b!1554329 (not condSetEmpty!10766)) setNonEmpty!10766))

(assert (= setNonEmpty!10766 b!1554332))

(assert (= (and mapNonEmpty!8323 ((_ is Cons!16806) mapDefault!8327)) b!1554329))

(declare-fun m!1826839 () Bool)

(assert (=> setNonEmpty!10766 m!1826839))

(declare-fun m!1826841 () Bool)

(assert (=> setNonEmpty!10767 m!1826841))

(declare-fun m!1826843 () Bool)

(assert (=> mapNonEmpty!8327 m!1826843))

(declare-fun setIsEmpty!10770 () Bool)

(declare-fun setRes!10770 () Bool)

(assert (=> setIsEmpty!10770 setRes!10770))

(declare-fun tp!455214 () Bool)

(declare-fun setNonEmpty!10770 () Bool)

(declare-fun setElem!10770 () Context!1582)

(declare-fun e!997169 () Bool)

(assert (=> setNonEmpty!10770 (= setRes!10770 (and tp!455214 (inv!22082 setElem!10770) e!997169))))

(declare-fun setRest!10770 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10770 (= (_1!9459 (_1!9460 (h!22207 mapValue!8324))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10770 true) setRest!10770))))

(declare-fun b!1554340 () Bool)

(declare-fun tp!455215 () Bool)

(assert (=> b!1554340 (= e!997169 tp!455215)))

(declare-fun e!997168 () Bool)

(assert (=> mapNonEmpty!8323 (= tp!455155 e!997168)))

(declare-fun b!1554339 () Bool)

(declare-fun tp!455213 () Bool)

(assert (=> b!1554339 (= e!997168 (and setRes!10770 tp!455213))))

(declare-fun condSetEmpty!10770 () Bool)

(assert (=> b!1554339 (= condSetEmpty!10770 (= (_1!9459 (_1!9460 (h!22207 mapValue!8324))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1554339 condSetEmpty!10770) setIsEmpty!10770))

(assert (= (and b!1554339 (not condSetEmpty!10770)) setNonEmpty!10770))

(assert (= setNonEmpty!10770 b!1554340))

(assert (= (and mapNonEmpty!8323 ((_ is Cons!16806) mapValue!8324)) b!1554339))

(declare-fun m!1826845 () Bool)

(assert (=> setNonEmpty!10770 m!1826845))

(declare-fun b!1554349 () Bool)

(declare-fun tp!455224 () Bool)

(declare-fun tp!455223 () Bool)

(declare-fun e!997174 () Bool)

(assert (=> b!1554349 (= e!997174 (and (inv!22074 (left!13662 (c!252615 input!1676))) tp!455224 (inv!22074 (right!13992 (c!252615 input!1676))) tp!455223))))

(declare-fun b!1554351 () Bool)

(declare-fun e!997175 () Bool)

(declare-fun tp!455222 () Bool)

(assert (=> b!1554351 (= e!997175 tp!455222)))

(declare-fun b!1554350 () Bool)

(declare-fun inv!22083 (IArray!11131) Bool)

(assert (=> b!1554350 (= e!997174 (and (inv!22083 (xs!8363 (c!252615 input!1676))) e!997175))))

(assert (=> b!1554094 (= tp!455168 (and (inv!22074 (c!252615 input!1676)) e!997174))))

(assert (= (and b!1554094 ((_ is Node!5563) (c!252615 input!1676))) b!1554349))

(assert (= b!1554350 b!1554351))

(assert (= (and b!1554094 ((_ is Leaf!8245) (c!252615 input!1676))) b!1554350))

(declare-fun m!1826847 () Bool)

(assert (=> b!1554349 m!1826847))

(declare-fun m!1826849 () Bool)

(assert (=> b!1554349 m!1826849))

(declare-fun m!1826851 () Bool)

(assert (=> b!1554350 m!1826851))

(assert (=> b!1554094 m!1826629))

(declare-fun e!997176 () Bool)

(declare-fun tp!455227 () Bool)

(declare-fun tp!455226 () Bool)

(declare-fun b!1554352 () Bool)

(assert (=> b!1554352 (= e!997176 (and (inv!22074 (left!13662 (c!252615 totalInput!568))) tp!455227 (inv!22074 (right!13992 (c!252615 totalInput!568))) tp!455226))))

(declare-fun b!1554354 () Bool)

(declare-fun e!997177 () Bool)

(declare-fun tp!455225 () Bool)

(assert (=> b!1554354 (= e!997177 tp!455225)))

(declare-fun b!1554353 () Bool)

(assert (=> b!1554353 (= e!997176 (and (inv!22083 (xs!8363 (c!252615 totalInput!568))) e!997177))))

(assert (=> b!1554096 (= tp!455170 (and (inv!22074 (c!252615 totalInput!568)) e!997176))))

(assert (= (and b!1554096 ((_ is Node!5563) (c!252615 totalInput!568))) b!1554352))

(assert (= b!1554353 b!1554354))

(assert (= (and b!1554096 ((_ is Leaf!8245) (c!252615 totalInput!568))) b!1554353))

(declare-fun m!1826853 () Bool)

(assert (=> b!1554352 m!1826853))

(declare-fun m!1826855 () Bool)

(assert (=> b!1554352 m!1826855))

(declare-fun m!1826857 () Bool)

(assert (=> b!1554353 m!1826857))

(assert (=> b!1554096 m!1826555))

(declare-fun b!1554363 () Bool)

(declare-fun e!997185 () Bool)

(declare-fun tp!455238 () Bool)

(assert (=> b!1554363 (= e!997185 tp!455238)))

(declare-fun e!997184 () Bool)

(assert (=> b!1554106 (= tp!455153 e!997184)))

(declare-fun setRes!10773 () Bool)

(declare-fun e!997186 () Bool)

(declare-fun tp!455241 () Bool)

(declare-fun setElem!10773 () Context!1582)

(declare-fun setNonEmpty!10773 () Bool)

(assert (=> setNonEmpty!10773 (= setRes!10773 (and tp!455241 (inv!22082 setElem!10773) e!997186))))

(declare-fun setRest!10773 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10773 (= (_2!9462 (h!22208 mapDefault!8322)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10773 true) setRest!10773))))

(declare-fun tp!455242 () Bool)

(declare-fun b!1554364 () Bool)

(declare-fun tp!455239 () Bool)

(assert (=> b!1554364 (= e!997184 (and tp!455242 (inv!22082 (_2!9461 (_1!9462 (h!22208 mapDefault!8322)))) e!997185 tp_is_empty!7065 setRes!10773 tp!455239))))

(declare-fun condSetEmpty!10773 () Bool)

(assert (=> b!1554364 (= condSetEmpty!10773 (= (_2!9462 (h!22208 mapDefault!8322)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10773 () Bool)

(assert (=> setIsEmpty!10773 setRes!10773))

(declare-fun b!1554365 () Bool)

(declare-fun tp!455240 () Bool)

(assert (=> b!1554365 (= e!997186 tp!455240)))

(assert (= b!1554364 b!1554363))

(assert (= (and b!1554364 condSetEmpty!10773) setIsEmpty!10773))

(assert (= (and b!1554364 (not condSetEmpty!10773)) setNonEmpty!10773))

(assert (= setNonEmpty!10773 b!1554365))

(assert (= (and b!1554106 ((_ is Cons!16807) mapDefault!8322)) b!1554364))

(declare-fun m!1826859 () Bool)

(assert (=> setNonEmpty!10773 m!1826859))

(declare-fun m!1826861 () Bool)

(assert (=> b!1554364 m!1826861))

(declare-fun setIsEmpty!10774 () Bool)

(declare-fun setRes!10774 () Bool)

(assert (=> setIsEmpty!10774 setRes!10774))

(declare-fun setNonEmpty!10774 () Bool)

(declare-fun tp!455244 () Bool)

(declare-fun e!997188 () Bool)

(declare-fun setElem!10774 () Context!1582)

(assert (=> setNonEmpty!10774 (= setRes!10774 (and tp!455244 (inv!22082 setElem!10774) e!997188))))

(declare-fun setRest!10774 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10774 (= (_1!9459 (_1!9460 (h!22207 mapDefault!8323))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10774 true) setRest!10774))))

(declare-fun b!1554367 () Bool)

(declare-fun tp!455245 () Bool)

(assert (=> b!1554367 (= e!997188 tp!455245)))

(declare-fun e!997187 () Bool)

(assert (=> b!1554108 (= tp!455161 e!997187)))

(declare-fun b!1554366 () Bool)

(declare-fun tp!455243 () Bool)

(assert (=> b!1554366 (= e!997187 (and setRes!10774 tp!455243))))

(declare-fun condSetEmpty!10774 () Bool)

(assert (=> b!1554366 (= condSetEmpty!10774 (= (_1!9459 (_1!9460 (h!22207 mapDefault!8323))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1554366 condSetEmpty!10774) setIsEmpty!10774))

(assert (= (and b!1554366 (not condSetEmpty!10774)) setNonEmpty!10774))

(assert (= setNonEmpty!10774 b!1554367))

(assert (= (and b!1554108 ((_ is Cons!16806) mapDefault!8323)) b!1554366))

(declare-fun m!1826863 () Bool)

(assert (=> setNonEmpty!10774 m!1826863))

(declare-fun b!1554382 () Bool)

(declare-fun e!997201 () Bool)

(declare-fun tp!455264 () Bool)

(assert (=> b!1554382 (= e!997201 tp!455264)))

(declare-fun mapIsEmpty!8330 () Bool)

(declare-fun mapRes!8330 () Bool)

(assert (=> mapIsEmpty!8330 mapRes!8330))

(declare-fun b!1554383 () Bool)

(declare-fun e!997204 () Bool)

(declare-fun tp!455269 () Bool)

(assert (=> b!1554383 (= e!997204 tp!455269)))

(declare-fun setIsEmpty!10779 () Bool)

(declare-fun setRes!10779 () Bool)

(assert (=> setIsEmpty!10779 setRes!10779))

(declare-fun setIsEmpty!10780 () Bool)

(declare-fun setRes!10780 () Bool)

(assert (=> setIsEmpty!10780 setRes!10780))

(declare-fun tp!455266 () Bool)

(declare-fun setElem!10779 () Context!1582)

(declare-fun setNonEmpty!10779 () Bool)

(assert (=> setNonEmpty!10779 (= setRes!10779 (and tp!455266 (inv!22082 setElem!10779) e!997204))))

(declare-fun mapDefault!8330 () List!16873)

(declare-fun setRest!10779 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10779 (= (_2!9458 (h!22206 mapDefault!8330)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10779 true) setRest!10779))))

(declare-fun b!1554384 () Bool)

(declare-fun e!997205 () Bool)

(declare-fun tp!455267 () Bool)

(declare-fun e!997202 () Bool)

(assert (=> b!1554384 (= e!997205 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 mapDefault!8330)))) e!997202 tp_is_empty!7065 setRes!10779 tp!455267))))

(declare-fun condSetEmpty!10779 () Bool)

(assert (=> b!1554384 (= condSetEmpty!10779 (= (_2!9458 (h!22206 mapDefault!8330)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setNonEmpty!10780 () Bool)

(declare-fun tp!455268 () Bool)

(declare-fun setElem!10780 () Context!1582)

(assert (=> setNonEmpty!10780 (= setRes!10780 (and tp!455268 (inv!22082 setElem!10780) e!997201))))

(declare-fun mapValue!8330 () List!16873)

(declare-fun setRest!10780 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10780 (= (_2!9458 (h!22206 mapValue!8330)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10780 true) setRest!10780))))

(declare-fun e!997203 () Bool)

(declare-fun tp!455270 () Bool)

(declare-fun b!1554386 () Bool)

(declare-fun e!997206 () Bool)

(assert (=> b!1554386 (= e!997206 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 mapValue!8330)))) e!997203 tp_is_empty!7065 setRes!10780 tp!455270))))

(declare-fun condSetEmpty!10780 () Bool)

(assert (=> b!1554386 (= condSetEmpty!10780 (= (_2!9458 (h!22206 mapValue!8330)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun b!1554387 () Bool)

(declare-fun tp!455271 () Bool)

(assert (=> b!1554387 (= e!997202 tp!455271)))

(declare-fun mapNonEmpty!8330 () Bool)

(declare-fun tp!455272 () Bool)

(assert (=> mapNonEmpty!8330 (= mapRes!8330 (and tp!455272 e!997206))))

(declare-fun mapKey!8330 () (_ BitVec 32))

(declare-fun mapRest!8330 () (Array (_ BitVec 32) List!16873))

(assert (=> mapNonEmpty!8330 (= mapRest!8324 (store mapRest!8330 mapKey!8330 mapValue!8330))))

(declare-fun b!1554385 () Bool)

(declare-fun tp!455265 () Bool)

(assert (=> b!1554385 (= e!997203 tp!455265)))

(declare-fun condMapEmpty!8330 () Bool)

(assert (=> mapNonEmpty!8324 (= condMapEmpty!8330 (= mapRest!8324 ((as const (Array (_ BitVec 32) List!16873)) mapDefault!8330)))))

(assert (=> mapNonEmpty!8324 (= tp!455154 (and e!997205 mapRes!8330))))

(assert (= (and mapNonEmpty!8324 condMapEmpty!8330) mapIsEmpty!8330))

(assert (= (and mapNonEmpty!8324 (not condMapEmpty!8330)) mapNonEmpty!8330))

(assert (= b!1554386 b!1554385))

(assert (= (and b!1554386 condSetEmpty!10780) setIsEmpty!10780))

(assert (= (and b!1554386 (not condSetEmpty!10780)) setNonEmpty!10780))

(assert (= setNonEmpty!10780 b!1554382))

(assert (= (and mapNonEmpty!8330 ((_ is Cons!16805) mapValue!8330)) b!1554386))

(assert (= b!1554384 b!1554387))

(assert (= (and b!1554384 condSetEmpty!10779) setIsEmpty!10779))

(assert (= (and b!1554384 (not condSetEmpty!10779)) setNonEmpty!10779))

(assert (= setNonEmpty!10779 b!1554383))

(assert (= (and mapNonEmpty!8324 ((_ is Cons!16805) mapDefault!8330)) b!1554384))

(declare-fun m!1826865 () Bool)

(assert (=> mapNonEmpty!8330 m!1826865))

(declare-fun m!1826867 () Bool)

(assert (=> b!1554386 m!1826867))

(declare-fun m!1826869 () Bool)

(assert (=> setNonEmpty!10779 m!1826869))

(declare-fun m!1826871 () Bool)

(assert (=> b!1554384 m!1826871))

(declare-fun m!1826873 () Bool)

(assert (=> setNonEmpty!10780 m!1826873))

(declare-fun b!1554396 () Bool)

(declare-fun e!997213 () Bool)

(declare-fun tp!455283 () Bool)

(assert (=> b!1554396 (= e!997213 tp!455283)))

(declare-fun e!997215 () Bool)

(assert (=> mapNonEmpty!8324 (= tp!455166 e!997215)))

(declare-fun setRes!10783 () Bool)

(declare-fun tp!455282 () Bool)

(declare-fun e!997214 () Bool)

(declare-fun b!1554397 () Bool)

(assert (=> b!1554397 (= e!997215 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 mapValue!8323)))) e!997214 tp_is_empty!7065 setRes!10783 tp!455282))))

(declare-fun condSetEmpty!10783 () Bool)

(assert (=> b!1554397 (= condSetEmpty!10783 (= (_2!9458 (h!22206 mapValue!8323)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10783 () Bool)

(assert (=> setIsEmpty!10783 setRes!10783))

(declare-fun setNonEmpty!10783 () Bool)

(declare-fun tp!455281 () Bool)

(declare-fun setElem!10783 () Context!1582)

(assert (=> setNonEmpty!10783 (= setRes!10783 (and tp!455281 (inv!22082 setElem!10783) e!997213))))

(declare-fun setRest!10783 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10783 (= (_2!9458 (h!22206 mapValue!8323)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10783 true) setRest!10783))))

(declare-fun b!1554398 () Bool)

(declare-fun tp!455284 () Bool)

(assert (=> b!1554398 (= e!997214 tp!455284)))

(assert (= b!1554397 b!1554398))

(assert (= (and b!1554397 condSetEmpty!10783) setIsEmpty!10783))

(assert (= (and b!1554397 (not condSetEmpty!10783)) setNonEmpty!10783))

(assert (= setNonEmpty!10783 b!1554396))

(assert (= (and mapNonEmpty!8324 ((_ is Cons!16805) mapValue!8323)) b!1554397))

(declare-fun m!1826875 () Bool)

(assert (=> b!1554397 m!1826875))

(declare-fun m!1826877 () Bool)

(assert (=> setNonEmpty!10783 m!1826877))

(declare-fun b!1554399 () Bool)

(declare-fun e!997216 () Bool)

(declare-fun tp!455287 () Bool)

(assert (=> b!1554399 (= e!997216 tp!455287)))

(declare-fun e!997218 () Bool)

(assert (=> b!1554098 (= tp!455163 e!997218)))

(declare-fun tp!455286 () Bool)

(declare-fun setRes!10784 () Bool)

(declare-fun b!1554400 () Bool)

(declare-fun e!997217 () Bool)

(assert (=> b!1554400 (= e!997218 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 mapDefault!8324)))) e!997217 tp_is_empty!7065 setRes!10784 tp!455286))))

(declare-fun condSetEmpty!10784 () Bool)

(assert (=> b!1554400 (= condSetEmpty!10784 (= (_2!9458 (h!22206 mapDefault!8324)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10784 () Bool)

(assert (=> setIsEmpty!10784 setRes!10784))

(declare-fun tp!455285 () Bool)

(declare-fun setNonEmpty!10784 () Bool)

(declare-fun setElem!10784 () Context!1582)

(assert (=> setNonEmpty!10784 (= setRes!10784 (and tp!455285 (inv!22082 setElem!10784) e!997216))))

(declare-fun setRest!10784 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10784 (= (_2!9458 (h!22206 mapDefault!8324)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10784 true) setRest!10784))))

(declare-fun b!1554401 () Bool)

(declare-fun tp!455288 () Bool)

(assert (=> b!1554401 (= e!997217 tp!455288)))

(assert (= b!1554400 b!1554401))

(assert (= (and b!1554400 condSetEmpty!10784) setIsEmpty!10784))

(assert (= (and b!1554400 (not condSetEmpty!10784)) setNonEmpty!10784))

(assert (= setNonEmpty!10784 b!1554399))

(assert (= (and b!1554098 ((_ is Cons!16805) mapDefault!8324)) b!1554400))

(declare-fun m!1826879 () Bool)

(assert (=> b!1554400 m!1826879))

(declare-fun m!1826881 () Bool)

(assert (=> setNonEmpty!10784 m!1826881))

(declare-fun b!1554402 () Bool)

(declare-fun e!997219 () Bool)

(declare-fun tp!455291 () Bool)

(assert (=> b!1554402 (= e!997219 tp!455291)))

(declare-fun e!997221 () Bool)

(assert (=> b!1554090 (= tp!455167 e!997221)))

(declare-fun tp!455290 () Bool)

(declare-fun setRes!10785 () Bool)

(declare-fun e!997220 () Bool)

(declare-fun b!1554403 () Bool)

(assert (=> b!1554403 (= e!997221 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))) e!997220 tp_is_empty!7065 setRes!10785 tp!455290))))

(declare-fun condSetEmpty!10785 () Bool)

(assert (=> b!1554403 (= condSetEmpty!10785 (= (_2!9458 (h!22206 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10785 () Bool)

(assert (=> setIsEmpty!10785 setRes!10785))

(declare-fun setNonEmpty!10785 () Bool)

(declare-fun tp!455289 () Bool)

(declare-fun setElem!10785 () Context!1582)

(assert (=> setNonEmpty!10785 (= setRes!10785 (and tp!455289 (inv!22082 setElem!10785) e!997219))))

(declare-fun setRest!10785 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10785 (= (_2!9458 (h!22206 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10785 true) setRest!10785))))

(declare-fun b!1554404 () Bool)

(declare-fun tp!455292 () Bool)

(assert (=> b!1554404 (= e!997220 tp!455292)))

(assert (= b!1554403 b!1554404))

(assert (= (and b!1554403 condSetEmpty!10785) setIsEmpty!10785))

(assert (= (and b!1554403 (not condSetEmpty!10785)) setNonEmpty!10785))

(assert (= setNonEmpty!10785 b!1554402))

(assert (= (and b!1554090 ((_ is Cons!16805) (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))) b!1554403))

(declare-fun m!1826883 () Bool)

(assert (=> b!1554403 m!1826883))

(declare-fun m!1826885 () Bool)

(assert (=> setNonEmpty!10785 m!1826885))

(declare-fun b!1554405 () Bool)

(declare-fun e!997222 () Bool)

(declare-fun tp!455295 () Bool)

(assert (=> b!1554405 (= e!997222 tp!455295)))

(declare-fun e!997224 () Bool)

(assert (=> b!1554090 (= tp!455169 e!997224)))

(declare-fun b!1554406 () Bool)

(declare-fun tp!455294 () Bool)

(declare-fun setRes!10786 () Bool)

(declare-fun e!997223 () Bool)

(assert (=> b!1554406 (= e!997224 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))) e!997223 tp_is_empty!7065 setRes!10786 tp!455294))))

(declare-fun condSetEmpty!10786 () Bool)

(assert (=> b!1554406 (= condSetEmpty!10786 (= (_2!9458 (h!22206 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10786 () Bool)

(assert (=> setIsEmpty!10786 setRes!10786))

(declare-fun tp!455293 () Bool)

(declare-fun setNonEmpty!10786 () Bool)

(declare-fun setElem!10786 () Context!1582)

(assert (=> setNonEmpty!10786 (= setRes!10786 (and tp!455293 (inv!22082 setElem!10786) e!997222))))

(declare-fun setRest!10786 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10786 (= (_2!9458 (h!22206 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10786 true) setRest!10786))))

(declare-fun b!1554407 () Bool)

(declare-fun tp!455296 () Bool)

(assert (=> b!1554407 (= e!997223 tp!455296)))

(assert (= b!1554406 b!1554407))

(assert (= (and b!1554406 condSetEmpty!10786) setIsEmpty!10786))

(assert (= (and b!1554406 (not condSetEmpty!10786)) setNonEmpty!10786))

(assert (= setNonEmpty!10786 b!1554405))

(assert (= (and b!1554090 ((_ is Cons!16805) (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))) b!1554406))

(declare-fun m!1826887 () Bool)

(assert (=> b!1554406 m!1826887))

(declare-fun m!1826889 () Bool)

(assert (=> setNonEmpty!10786 m!1826889))

(declare-fun setIsEmpty!10787 () Bool)

(declare-fun setRes!10787 () Bool)

(assert (=> setIsEmpty!10787 setRes!10787))

(declare-fun setElem!10787 () Context!1582)

(declare-fun e!997226 () Bool)

(declare-fun setNonEmpty!10787 () Bool)

(declare-fun tp!455298 () Bool)

(assert (=> setNonEmpty!10787 (= setRes!10787 (and tp!455298 (inv!22082 setElem!10787) e!997226))))

(declare-fun setRest!10787 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10787 (= (_1!9459 (_1!9460 (h!22207 (zeroValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10787 true) setRest!10787))))

(declare-fun b!1554409 () Bool)

(declare-fun tp!455299 () Bool)

(assert (=> b!1554409 (= e!997226 tp!455299)))

(declare-fun e!997225 () Bool)

(assert (=> b!1554100 (= tp!455164 e!997225)))

(declare-fun b!1554408 () Bool)

(declare-fun tp!455297 () Bool)

(assert (=> b!1554408 (= e!997225 (and setRes!10787 tp!455297))))

(declare-fun condSetEmpty!10787 () Bool)

(assert (=> b!1554408 (= condSetEmpty!10787 (= (_1!9459 (_1!9460 (h!22207 (zeroValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1554408 condSetEmpty!10787) setIsEmpty!10787))

(assert (= (and b!1554408 (not condSetEmpty!10787)) setNonEmpty!10787))

(assert (= setNonEmpty!10787 b!1554409))

(assert (= (and b!1554100 ((_ is Cons!16806) (zeroValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103)))))))) b!1554408))

(declare-fun m!1826891 () Bool)

(assert (=> setNonEmpty!10787 m!1826891))

(declare-fun setIsEmpty!10788 () Bool)

(declare-fun setRes!10788 () Bool)

(assert (=> setIsEmpty!10788 setRes!10788))

(declare-fun e!997228 () Bool)

(declare-fun setNonEmpty!10788 () Bool)

(declare-fun setElem!10788 () Context!1582)

(declare-fun tp!455301 () Bool)

(assert (=> setNonEmpty!10788 (= setRes!10788 (and tp!455301 (inv!22082 setElem!10788) e!997228))))

(declare-fun setRest!10788 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10788 (= (_1!9459 (_1!9460 (h!22207 (minValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10788 true) setRest!10788))))

(declare-fun b!1554411 () Bool)

(declare-fun tp!455302 () Bool)

(assert (=> b!1554411 (= e!997228 tp!455302)))

(declare-fun e!997227 () Bool)

(assert (=> b!1554100 (= tp!455146 e!997227)))

(declare-fun b!1554410 () Bool)

(declare-fun tp!455300 () Bool)

(assert (=> b!1554410 (= e!997227 (and setRes!10788 tp!455300))))

(declare-fun condSetEmpty!10788 () Bool)

(assert (=> b!1554410 (= condSetEmpty!10788 (= (_1!9459 (_1!9460 (h!22207 (minValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1554410 condSetEmpty!10788) setIsEmpty!10788))

(assert (= (and b!1554410 (not condSetEmpty!10788)) setNonEmpty!10788))

(assert (= setNonEmpty!10788 b!1554411))

(assert (= (and b!1554100 ((_ is Cons!16806) (minValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103)))))))) b!1554410))

(declare-fun m!1826893 () Bool)

(assert (=> setNonEmpty!10788 m!1826893))

(declare-fun e!997242 () Bool)

(declare-fun e!997246 () Bool)

(declare-fun tp!455327 () Bool)

(declare-fun setRes!10794 () Bool)

(declare-fun mapDefault!8333 () List!16875)

(declare-fun tp!455331 () Bool)

(declare-fun b!1554426 () Bool)

(assert (=> b!1554426 (= e!997242 (and tp!455331 (inv!22082 (_2!9461 (_1!9462 (h!22208 mapDefault!8333)))) e!997246 tp_is_empty!7065 setRes!10794 tp!455327))))

(declare-fun condSetEmpty!10793 () Bool)

(assert (=> b!1554426 (= condSetEmpty!10793 (= (_2!9462 (h!22208 mapDefault!8333)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setElem!10794 () Context!1582)

(declare-fun tp!455329 () Bool)

(declare-fun setNonEmpty!10793 () Bool)

(declare-fun e!997243 () Bool)

(assert (=> setNonEmpty!10793 (= setRes!10794 (and tp!455329 (inv!22082 setElem!10794) e!997243))))

(declare-fun setRest!10794 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10793 (= (_2!9462 (h!22208 mapDefault!8333)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10794 true) setRest!10794))))

(declare-fun mapIsEmpty!8333 () Bool)

(declare-fun mapRes!8333 () Bool)

(assert (=> mapIsEmpty!8333 mapRes!8333))

(declare-fun setNonEmpty!10794 () Bool)

(declare-fun setElem!10793 () Context!1582)

(declare-fun e!997241 () Bool)

(declare-fun tp!455334 () Bool)

(declare-fun setRes!10793 () Bool)

(assert (=> setNonEmpty!10794 (= setRes!10793 (and tp!455334 (inv!22082 setElem!10793) e!997241))))

(declare-fun mapValue!8333 () List!16875)

(declare-fun setRest!10793 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10794 (= (_2!9462 (h!22208 mapValue!8333)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10793 true) setRest!10793))))

(declare-fun b!1554428 () Bool)

(declare-fun tp!455325 () Bool)

(assert (=> b!1554428 (= e!997241 tp!455325)))

(declare-fun e!997244 () Bool)

(declare-fun tp!455332 () Bool)

(declare-fun e!997245 () Bool)

(declare-fun b!1554429 () Bool)

(declare-fun tp!455326 () Bool)

(assert (=> b!1554429 (= e!997244 (and tp!455326 (inv!22082 (_2!9461 (_1!9462 (h!22208 mapValue!8333)))) e!997245 tp_is_empty!7065 setRes!10793 tp!455332))))

(declare-fun condSetEmpty!10794 () Bool)

(assert (=> b!1554429 (= condSetEmpty!10794 (= (_2!9462 (h!22208 mapValue!8333)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun b!1554430 () Bool)

(declare-fun tp!455330 () Bool)

(assert (=> b!1554430 (= e!997243 tp!455330)))

(declare-fun b!1554431 () Bool)

(declare-fun tp!455335 () Bool)

(assert (=> b!1554431 (= e!997246 tp!455335)))

(declare-fun setIsEmpty!10793 () Bool)

(assert (=> setIsEmpty!10793 setRes!10794))

(declare-fun b!1554427 () Bool)

(declare-fun tp!455333 () Bool)

(assert (=> b!1554427 (= e!997245 tp!455333)))

(declare-fun condMapEmpty!8333 () Bool)

(assert (=> mapNonEmpty!8322 (= condMapEmpty!8333 (= mapRest!8323 ((as const (Array (_ BitVec 32) List!16875)) mapDefault!8333)))))

(assert (=> mapNonEmpty!8322 (= tp!455165 (and e!997242 mapRes!8333))))

(declare-fun mapNonEmpty!8333 () Bool)

(declare-fun tp!455328 () Bool)

(assert (=> mapNonEmpty!8333 (= mapRes!8333 (and tp!455328 e!997244))))

(declare-fun mapKey!8333 () (_ BitVec 32))

(declare-fun mapRest!8333 () (Array (_ BitVec 32) List!16875))

(assert (=> mapNonEmpty!8333 (= mapRest!8323 (store mapRest!8333 mapKey!8333 mapValue!8333))))

(declare-fun setIsEmpty!10794 () Bool)

(assert (=> setIsEmpty!10794 setRes!10793))

(assert (= (and mapNonEmpty!8322 condMapEmpty!8333) mapIsEmpty!8333))

(assert (= (and mapNonEmpty!8322 (not condMapEmpty!8333)) mapNonEmpty!8333))

(assert (= b!1554429 b!1554427))

(assert (= (and b!1554429 condSetEmpty!10794) setIsEmpty!10794))

(assert (= (and b!1554429 (not condSetEmpty!10794)) setNonEmpty!10794))

(assert (= setNonEmpty!10794 b!1554428))

(assert (= (and mapNonEmpty!8333 ((_ is Cons!16807) mapValue!8333)) b!1554429))

(assert (= b!1554426 b!1554431))

(assert (= (and b!1554426 condSetEmpty!10793) setIsEmpty!10793))

(assert (= (and b!1554426 (not condSetEmpty!10793)) setNonEmpty!10793))

(assert (= setNonEmpty!10793 b!1554430))

(assert (= (and mapNonEmpty!8322 ((_ is Cons!16807) mapDefault!8333)) b!1554426))

(declare-fun m!1826895 () Bool)

(assert (=> b!1554429 m!1826895))

(declare-fun m!1826897 () Bool)

(assert (=> b!1554426 m!1826897))

(declare-fun m!1826899 () Bool)

(assert (=> setNonEmpty!10793 m!1826899))

(declare-fun m!1826901 () Bool)

(assert (=> mapNonEmpty!8333 m!1826901))

(declare-fun m!1826903 () Bool)

(assert (=> setNonEmpty!10794 m!1826903))

(declare-fun b!1554432 () Bool)

(declare-fun e!997248 () Bool)

(declare-fun tp!455336 () Bool)

(assert (=> b!1554432 (= e!997248 tp!455336)))

(declare-fun e!997247 () Bool)

(assert (=> mapNonEmpty!8322 (= tp!455162 e!997247)))

(declare-fun setNonEmpty!10795 () Bool)

(declare-fun setElem!10795 () Context!1582)

(declare-fun e!997249 () Bool)

(declare-fun tp!455339 () Bool)

(declare-fun setRes!10795 () Bool)

(assert (=> setNonEmpty!10795 (= setRes!10795 (and tp!455339 (inv!22082 setElem!10795) e!997249))))

(declare-fun setRest!10795 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10795 (= (_2!9462 (h!22208 mapValue!8322)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10795 true) setRest!10795))))

(declare-fun tp!455340 () Bool)

(declare-fun b!1554433 () Bool)

(declare-fun tp!455337 () Bool)

(assert (=> b!1554433 (= e!997247 (and tp!455340 (inv!22082 (_2!9461 (_1!9462 (h!22208 mapValue!8322)))) e!997248 tp_is_empty!7065 setRes!10795 tp!455337))))

(declare-fun condSetEmpty!10795 () Bool)

(assert (=> b!1554433 (= condSetEmpty!10795 (= (_2!9462 (h!22208 mapValue!8322)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10795 () Bool)

(assert (=> setIsEmpty!10795 setRes!10795))

(declare-fun b!1554434 () Bool)

(declare-fun tp!455338 () Bool)

(assert (=> b!1554434 (= e!997249 tp!455338)))

(assert (= b!1554433 b!1554432))

(assert (= (and b!1554433 condSetEmpty!10795) setIsEmpty!10795))

(assert (= (and b!1554433 (not condSetEmpty!10795)) setNonEmpty!10795))

(assert (= setNonEmpty!10795 b!1554434))

(assert (= (and mapNonEmpty!8322 ((_ is Cons!16807) mapValue!8322)) b!1554433))

(declare-fun m!1826905 () Bool)

(assert (=> setNonEmpty!10795 m!1826905))

(declare-fun m!1826907 () Bool)

(assert (=> b!1554433 m!1826907))

(declare-fun b!1554435 () Bool)

(declare-fun e!997251 () Bool)

(declare-fun tp!455341 () Bool)

(assert (=> b!1554435 (= e!997251 tp!455341)))

(declare-fun e!997250 () Bool)

(assert (=> b!1554113 (= tp!455149 e!997250)))

(declare-fun setNonEmpty!10796 () Bool)

(declare-fun setRes!10796 () Bool)

(declare-fun tp!455344 () Bool)

(declare-fun setElem!10796 () Context!1582)

(declare-fun e!997252 () Bool)

(assert (=> setNonEmpty!10796 (= setRes!10796 (and tp!455344 (inv!22082 setElem!10796) e!997252))))

(declare-fun setRest!10796 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10796 (= (_2!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10796 true) setRest!10796))))

(declare-fun tp!455342 () Bool)

(declare-fun b!1554436 () Bool)

(declare-fun tp!455345 () Bool)

(assert (=> b!1554436 (= e!997250 (and tp!455345 (inv!22082 (_2!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))) e!997251 tp_is_empty!7065 setRes!10796 tp!455342))))

(declare-fun condSetEmpty!10796 () Bool)

(assert (=> b!1554436 (= condSetEmpty!10796 (= (_2!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10796 () Bool)

(assert (=> setIsEmpty!10796 setRes!10796))

(declare-fun b!1554437 () Bool)

(declare-fun tp!455343 () Bool)

(assert (=> b!1554437 (= e!997252 tp!455343)))

(assert (= b!1554436 b!1554435))

(assert (= (and b!1554436 condSetEmpty!10796) setIsEmpty!10796))

(assert (= (and b!1554436 (not condSetEmpty!10796)) setNonEmpty!10796))

(assert (= setNonEmpty!10796 b!1554437))

(assert (= (and b!1554113 ((_ is Cons!16807) (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))) b!1554436))

(declare-fun m!1826909 () Bool)

(assert (=> setNonEmpty!10796 m!1826909))

(declare-fun m!1826911 () Bool)

(assert (=> b!1554436 m!1826911))

(declare-fun b!1554438 () Bool)

(declare-fun e!997254 () Bool)

(declare-fun tp!455346 () Bool)

(assert (=> b!1554438 (= e!997254 tp!455346)))

(declare-fun e!997253 () Bool)

(assert (=> b!1554113 (= tp!455157 e!997253)))

(declare-fun setRes!10797 () Bool)

(declare-fun tp!455349 () Bool)

(declare-fun setElem!10797 () Context!1582)

(declare-fun e!997255 () Bool)

(declare-fun setNonEmpty!10797 () Bool)

(assert (=> setNonEmpty!10797 (= setRes!10797 (and tp!455349 (inv!22082 setElem!10797) e!997255))))

(declare-fun setRest!10797 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10797 (= (_2!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10797 true) setRest!10797))))

(declare-fun tp!455347 () Bool)

(declare-fun b!1554439 () Bool)

(declare-fun tp!455350 () Bool)

(assert (=> b!1554439 (= e!997253 (and tp!455350 (inv!22082 (_2!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))) e!997254 tp_is_empty!7065 setRes!10797 tp!455347))))

(declare-fun condSetEmpty!10797 () Bool)

(assert (=> b!1554439 (= condSetEmpty!10797 (= (_2!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10797 () Bool)

(assert (=> setIsEmpty!10797 setRes!10797))

(declare-fun b!1554440 () Bool)

(declare-fun tp!455348 () Bool)

(assert (=> b!1554440 (= e!997255 tp!455348)))

(assert (= b!1554439 b!1554438))

(assert (= (and b!1554439 condSetEmpty!10797) setIsEmpty!10797))

(assert (= (and b!1554439 (not condSetEmpty!10797)) setNonEmpty!10797))

(assert (= setNonEmpty!10797 b!1554440))

(assert (= (and b!1554113 ((_ is Cons!16807) (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))) b!1554439))

(declare-fun m!1826913 () Bool)

(assert (=> setNonEmpty!10797 m!1826913))

(declare-fun m!1826915 () Bool)

(assert (=> b!1554439 m!1826915))

(declare-fun tp!455353 () Bool)

(declare-fun b!1554441 () Bool)

(declare-fun e!997256 () Bool)

(declare-fun tp!455352 () Bool)

(assert (=> b!1554441 (= e!997256 (and (inv!22074 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) tp!455353 (inv!22074 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) tp!455352))))

(declare-fun b!1554443 () Bool)

(declare-fun e!997257 () Bool)

(declare-fun tp!455351 () Bool)

(assert (=> b!1554443 (= e!997257 tp!455351)))

(declare-fun b!1554442 () Bool)

(assert (=> b!1554442 (= e!997256 (and (inv!22083 (xs!8363 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) e!997257))))

(assert (=> b!1554092 (= tp!455158 (and (inv!22074 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) e!997256))))

(assert (= (and b!1554092 ((_ is Node!5563) (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) b!1554441))

(assert (= b!1554442 b!1554443))

(assert (= (and b!1554092 ((_ is Leaf!8245) (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) b!1554442))

(declare-fun m!1826917 () Bool)

(assert (=> b!1554441 m!1826917))

(declare-fun m!1826919 () Bool)

(assert (=> b!1554441 m!1826919))

(declare-fun m!1826921 () Bool)

(assert (=> b!1554442 m!1826921))

(assert (=> b!1554092 m!1826589))

(declare-fun b_lambda!48777 () Bool)

(assert (= b_lambda!48773 (or b!1554111 b_lambda!48777)))

(declare-fun bs!388175 () Bool)

(declare-fun d!461142 () Bool)

(assert (= bs!388175 (and d!461142 b!1554111)))

(declare-fun dynLambda!7446 (Int TokenValue!3035) BalanceConc!11068)

(assert (=> bs!388175 (= (dynLambda!7445 lambda!65797 lt!538195) (= (list!6489 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))) (list!6489 lt!538195)))))

(declare-fun b_lambda!48783 () Bool)

(assert (=> (not b_lambda!48783) (not bs!388175)))

(declare-fun t!141322 () Bool)

(declare-fun tb!87299 () Bool)

(assert (=> (and b!1554089 (= (toChars!4173 (transformation!2945 rule!240)) (toChars!4173 (transformation!2945 rule!240))) t!141322) tb!87299))

(declare-fun tp!455356 () Bool)

(declare-fun b!1554448 () Bool)

(declare-fun e!997260 () Bool)

(assert (=> b!1554448 (= e!997260 (and (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))) tp!455356))))

(declare-fun result!105384 () Bool)

(assert (=> tb!87299 (= result!105384 (and (inv!22076 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))) e!997260))))

(assert (= tb!87299 b!1554448))

(declare-fun m!1826923 () Bool)

(assert (=> b!1554448 m!1826923))

(declare-fun m!1826925 () Bool)

(assert (=> tb!87299 m!1826925))

(assert (=> bs!388175 t!141322))

(declare-fun b_and!108455 () Bool)

(assert (= b_and!108443 (and (=> t!141322 result!105384) b_and!108455)))

(declare-fun b_lambda!48785 () Bool)

(assert (=> (not b_lambda!48785) (not bs!388175)))

(declare-fun t!141324 () Bool)

(declare-fun tb!87301 () Bool)

(assert (=> (and b!1554089 (= (toValue!4314 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))) t!141324) tb!87301))

(declare-fun result!105388 () Bool)

(assert (=> tb!87301 (= result!105388 (inv!21 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))

(declare-fun m!1826927 () Bool)

(assert (=> tb!87301 m!1826927))

(assert (=> bs!388175 t!141324))

(declare-fun b_and!108457 () Bool)

(assert (= b_and!108453 (and (=> t!141324 result!105388) b_and!108457)))

(declare-fun m!1826929 () Bool)

(assert (=> bs!388175 m!1826929))

(declare-fun m!1826931 () Bool)

(assert (=> bs!388175 m!1826931))

(assert (=> bs!388175 m!1826931))

(declare-fun m!1826933 () Bool)

(assert (=> bs!388175 m!1826933))

(assert (=> bs!388175 m!1826633))

(assert (=> bs!388175 m!1826929))

(assert (=> d!461072 d!461142))

(declare-fun b_lambda!48779 () Bool)

(assert (= b_lambda!48775 (or b!1554111 b_lambda!48779)))

(declare-fun bs!388176 () Bool)

(declare-fun d!461144 () Bool)

(assert (= bs!388176 (and d!461144 b!1554111)))

(assert (=> bs!388176 (= (dynLambda!7445 lambda!65797 (_1!9464 (_1!9465 lt!538187))) (= (list!6489 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))) (list!6489 (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun b_lambda!48787 () Bool)

(assert (=> (not b_lambda!48787) (not bs!388176)))

(declare-fun t!141326 () Bool)

(declare-fun tb!87303 () Bool)

(assert (=> (and b!1554089 (= (toChars!4173 (transformation!2945 rule!240)) (toChars!4173 (transformation!2945 rule!240))) t!141326) tb!87303))

(declare-fun tp!455357 () Bool)

(declare-fun e!997262 () Bool)

(declare-fun b!1554449 () Bool)

(assert (=> b!1554449 (= e!997262 (and (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))) tp!455357))))

(declare-fun result!105390 () Bool)

(assert (=> tb!87303 (= result!105390 (and (inv!22076 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))) e!997262))))

(assert (= tb!87303 b!1554449))

(declare-fun m!1826935 () Bool)

(assert (=> b!1554449 m!1826935))

(declare-fun m!1826937 () Bool)

(assert (=> tb!87303 m!1826937))

(assert (=> bs!388176 t!141326))

(declare-fun b_and!108459 () Bool)

(assert (= b_and!108455 (and (=> t!141326 result!105390) b_and!108459)))

(declare-fun b_lambda!48789 () Bool)

(assert (=> (not b_lambda!48789) (not bs!388176)))

(assert (=> bs!388176 t!141320))

(declare-fun b_and!108461 () Bool)

(assert (= b_and!108457 (and (=> t!141320 result!105364) b_and!108461)))

(assert (=> bs!388176 m!1826673))

(declare-fun m!1826939 () Bool)

(assert (=> bs!388176 m!1826939))

(assert (=> bs!388176 m!1826939))

(declare-fun m!1826941 () Bool)

(assert (=> bs!388176 m!1826941))

(assert (=> bs!388176 m!1826621))

(assert (=> bs!388176 m!1826673))

(assert (=> d!461076 d!461144))

(declare-fun b_lambda!48781 () Bool)

(assert (= b_lambda!48771 (or (and b!1554089 b_free!41311) b_lambda!48781)))

(check-sat (not b!1554363) (not d!461088) (not b!1554411) (not bm!101941) (not d!461076) (not d!461084) (not d!461062) (not tb!87301) (not b!1554399) (not setNonEmpty!10795) (not d!461056) (not b!1554169) (not b!1554406) (not b!1554431) (not b_lambda!48783) (not bm!101965) (not b!1554443) (not b!1554242) b_and!108447 (not b!1554405) (not d!461116) (not b!1554237) (not b!1554386) (not tb!87303) (not setNonEmpty!10797) (not b!1554448) (not b!1554367) (not setNonEmpty!10780) (not b!1554426) (not b!1554244) (not b_lambda!48789) (not setNonEmpty!10779) (not setNonEmpty!10786) (not b!1554222) (not b!1554365) (not b!1554209) (not b!1554397) (not mapNonEmpty!8327) (not b!1554384) (not b!1554316) (not b!1554437) (not tb!87297) (not b!1554439) (not b!1554385) (not bm!101963) (not b!1554332) (not setNonEmpty!10770) (not b!1554434) (not d!461060) (not setNonEmpty!10796) (not b!1554429) (not b!1554387) (not b_next!42013) (not b!1554289) (not bm!101962) (not b!1554331) b_and!108461 (not setNonEmpty!10787) (not b!1554206) (not d!461074) (not b!1554349) (not b!1554096) (not b!1554435) (not setNonEmpty!10788) (not b!1554161) (not b!1554441) (not b_lambda!48779) (not b!1554208) (not b!1554229) (not b!1554094) (not b!1554436) (not b_lambda!48785) (not b!1554400) (not b!1554162) (not b!1554221) (not b!1554220) (not setNonEmpty!10784) (not b!1554396) (not b!1554353) (not b!1554442) (not b!1554304) (not b_next!42015) (not b!1554407) (not b_next!42021) (not b!1554191) (not setNonEmpty!10766) (not setNonEmpty!10793) (not mapNonEmpty!8330) (not b!1554199) b_and!108439 (not b_next!42023) (not b_next!42025) (not d!461114) (not b!1554159) (not b!1554432) (not b!1554351) (not b!1554409) (not b_lambda!48787) (not d!461130) (not b!1554402) (not d!461072) (not b!1554330) b_and!108459 (not d!461118) (not d!461140) (not b!1554340) (not b!1554408) (not d!461096) (not d!461070) (not b_next!42017) (not d!461138) (not b!1554352) (not b!1554433) (not b!1554449) (not d!461110) (not b!1554164) (not b!1554192) (not b!1554198) (not bm!101964) (not b!1554410) (not setNonEmpty!10774) (not tb!87299) (not b!1554440) (not b!1554318) (not b!1554366) (not mapNonEmpty!8333) (not bs!388176) (not d!461128) (not d!461112) (not b!1554232) (not b!1554430) (not setNonEmpty!10785) (not setNonEmpty!10773) (not setNonEmpty!10767) (not b!1554157) (not b!1554211) (not b_next!42019) b_and!108437 (not b!1554241) (not d!461068) (not b!1554195) (not b!1554197) (not b!1554403) (not b!1554253) (not b!1554354) (not b!1554194) (not bm!101958) (not b!1554428) (not b_lambda!48781) (not b!1554128) (not b!1554301) (not b!1554382) (not b!1554398) (not d!461090) (not b!1554364) (not d!461134) (not b!1554193) (not b!1554350) (not b!1554404) (not b!1554401) (not setNonEmpty!10794) (not d!461082) b_and!108445 (not d!461066) (not d!461058) (not b!1554250) (not bm!101959) (not b!1554317) b_and!108449 (not b!1554297) (not bs!388175) (not d!461100) (not b_next!42011) (not b!1554438) (not b!1554092) (not b!1554329) (not bm!101960) (not d!461086) (not b!1554427) (not b!1554383) (not setNonEmpty!10783) (not b_lambda!48777) (not b!1554226) (not bm!101961) (not d!461054) (not b!1554292) (not b!1554259) (not b!1554339) tp_is_empty!7065 b_and!108451)
(check-sat b_and!108447 b_and!108439 b_and!108445 b_and!108449 (not b_next!42011) b_and!108451 (not b_next!42013) b_and!108461 (not b_next!42015) (not b_next!42021) (not b_next!42023) (not b_next!42025) (not b_next!42017) b_and!108459 (not b_next!42019) b_and!108437)
(get-model)

(declare-fun b_lambda!48791 () Bool)

(assert (= b_lambda!48789 (or (and b!1554089 b_free!41311) b_lambda!48791)))

(declare-fun b_lambda!48793 () Bool)

(assert (= b_lambda!48785 (or (and b!1554089 b_free!41311) b_lambda!48793)))

(declare-fun b_lambda!48795 () Bool)

(assert (= b_lambda!48783 (or (and b!1554089 b_free!41313) b_lambda!48795)))

(declare-fun b_lambda!48797 () Bool)

(assert (= b_lambda!48787 (or (and b!1554089 b_free!41313) b_lambda!48797)))

(check-sat (not b!1554363) (not d!461088) (not b!1554411) (not bm!101941) (not d!461076) (not d!461084) (not d!461062) (not tb!87301) (not b!1554399) (not setNonEmpty!10795) (not d!461056) (not b!1554169) (not b!1554406) (not b!1554431) (not bm!101965) (not b!1554443) (not b!1554242) b_and!108447 (not b!1554405) (not d!461116) (not b!1554237) (not b!1554386) (not tb!87303) (not setNonEmpty!10797) (not b!1554448) (not b!1554367) (not setNonEmpty!10780) (not b!1554426) (not b_lambda!48791) (not b!1554244) (not setNonEmpty!10779) (not setNonEmpty!10786) (not b!1554222) (not b!1554365) (not b!1554209) (not b!1554397) (not mapNonEmpty!8327) (not b!1554384) (not b!1554316) (not b!1554437) (not tb!87297) (not b!1554439) (not b!1554385) (not bm!101963) (not b!1554332) (not setNonEmpty!10770) (not b!1554434) (not d!461060) (not setNonEmpty!10796) (not b!1554429) (not b!1554387) (not b_next!42013) (not b!1554289) (not bm!101962) (not b!1554331) b_and!108461 (not setNonEmpty!10787) (not b!1554206) (not d!461074) (not b!1554349) (not b!1554096) (not b!1554435) (not setNonEmpty!10788) (not b!1554161) (not b!1554441) (not b_lambda!48779) (not b!1554208) (not b!1554436) (not b!1554229) (not b!1554094) (not b!1554400) (not b!1554162) (not b!1554221) (not b!1554220) (not setNonEmpty!10784) (not b!1554396) (not b!1554353) (not b!1554442) (not b!1554304) (not b_next!42015) (not b!1554407) (not b_next!42021) (not b!1554191) (not setNonEmpty!10766) (not setNonEmpty!10793) (not mapNonEmpty!8330) (not b!1554199) b_and!108439 (not b_next!42023) (not b_next!42025) (not d!461114) (not b!1554159) (not b!1554432) (not b!1554351) (not b!1554409) (not b_lambda!48795) (not b!1554402) (not b_lambda!48793) (not d!461130) (not d!461072) (not b!1554330) b_and!108459 (not d!461118) (not d!461140) (not b!1554340) (not b!1554408) (not d!461096) (not d!461070) (not b_next!42017) (not d!461138) (not b!1554352) (not b!1554433) (not b!1554449) (not d!461110) (not b!1554164) (not b!1554192) (not b!1554198) (not bm!101964) (not b!1554410) (not setNonEmpty!10774) (not tb!87299) (not b!1554440) (not b!1554318) (not b!1554366) (not mapNonEmpty!8333) (not bs!388176) (not d!461128) (not d!461112) (not b!1554232) (not b!1554430) (not setNonEmpty!10785) (not setNonEmpty!10773) (not setNonEmpty!10767) (not b!1554157) (not b!1554211) (not b_next!42019) b_and!108437 (not b!1554241) (not d!461068) (not b!1554195) (not b!1554197) (not b!1554403) (not b!1554253) (not b!1554354) (not b!1554194) (not bm!101958) (not b!1554428) (not b_lambda!48781) (not b!1554128) (not b!1554301) (not b!1554382) (not b!1554398) (not d!461090) (not b!1554364) (not d!461134) (not b!1554193) (not b!1554350) (not b!1554404) (not b!1554401) (not setNonEmpty!10794) (not d!461082) b_and!108445 (not d!461066) (not d!461058) (not b!1554250) (not bm!101959) (not b!1554317) b_and!108449 (not b!1554297) (not bs!388175) (not d!461100) (not b_next!42011) (not b!1554438) (not b_lambda!48797) (not b!1554092) (not b!1554329) (not bm!101960) (not d!461086) (not b!1554427) (not b!1554383) (not setNonEmpty!10783) (not b_lambda!48777) (not b!1554226) (not bm!101961) (not d!461054) (not b!1554292) (not b!1554259) (not b!1554339) tp_is_empty!7065 b_and!108451)
(check-sat b_and!108447 b_and!108439 b_and!108445 b_and!108449 (not b_next!42011) b_and!108451 (not b_next!42013) b_and!108461 (not b_next!42015) (not b_next!42021) (not b_next!42023) (not b_next!42025) (not b_next!42017) b_and!108459 (not b_next!42019) b_and!108437)
(get-model)

(declare-fun d!461146 () Bool)

(assert (=> d!461146 (= (head!3112 lt!538190) (h!22204 lt!538190))))

(assert (=> bm!101963 d!461146))

(declare-fun d!461148 () Bool)

(assert (=> d!461148 (= (isEmpty!10106 (tail!2207 (_1!9463 lt!538191))) ((_ is Nil!16803) (tail!2207 (_1!9463 lt!538191))))))

(assert (=> b!1554164 d!461148))

(declare-fun d!461150 () Bool)

(assert (=> d!461150 (= (tail!2207 (_1!9463 lt!538191)) (t!141314 (_1!9463 lt!538191)))))

(assert (=> b!1554164 d!461150))

(declare-fun d!461152 () Bool)

(declare-fun lambda!65803 () Int)

(declare-fun forall!3925 (List!16872 Int) Bool)

(assert (=> d!461152 (= (inv!22082 (_2!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))) (forall!3925 (exprs!1291 (_2!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))) lambda!65803))))

(declare-fun bs!388177 () Bool)

(assert (= bs!388177 d!461152))

(declare-fun m!1826943 () Bool)

(assert (=> bs!388177 m!1826943))

(assert (=> b!1554439 d!461152))

(declare-fun bs!388178 () Bool)

(declare-fun d!461154 () Bool)

(assert (= bs!388178 (and d!461154 d!461152)))

(declare-fun lambda!65804 () Int)

(assert (=> bs!388178 (= lambda!65804 lambda!65803)))

(assert (=> d!461154 (= (inv!22082 setElem!10784) (forall!3925 (exprs!1291 setElem!10784) lambda!65804))))

(declare-fun bs!388179 () Bool)

(assert (= bs!388179 d!461154))

(declare-fun m!1826945 () Bool)

(assert (=> bs!388179 m!1826945))

(assert (=> setNonEmpty!10784 d!461154))

(declare-fun bs!388180 () Bool)

(declare-fun d!461156 () Bool)

(assert (= bs!388180 (and d!461156 d!461152)))

(declare-fun lambda!65805 () Int)

(assert (=> bs!388180 (= lambda!65805 lambda!65803)))

(declare-fun bs!388181 () Bool)

(assert (= bs!388181 (and d!461156 d!461154)))

(assert (=> bs!388181 (= lambda!65805 lambda!65804)))

(assert (=> d!461156 (= (inv!22082 (_2!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))) (forall!3925 (exprs!1291 (_2!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))) lambda!65805))))

(declare-fun bs!388182 () Bool)

(assert (= bs!388182 d!461156))

(declare-fun m!1826947 () Bool)

(assert (=> bs!388182 m!1826947))

(assert (=> b!1554436 d!461156))

(declare-fun bs!388183 () Bool)

(declare-fun d!461158 () Bool)

(assert (= bs!388183 (and d!461158 d!461152)))

(declare-fun lambda!65806 () Int)

(assert (=> bs!388183 (= lambda!65806 lambda!65803)))

(declare-fun bs!388184 () Bool)

(assert (= bs!388184 (and d!461158 d!461154)))

(assert (=> bs!388184 (= lambda!65806 lambda!65804)))

(declare-fun bs!388185 () Bool)

(assert (= bs!388185 (and d!461158 d!461156)))

(assert (=> bs!388185 (= lambda!65806 lambda!65805)))

(assert (=> d!461158 (= (inv!22082 (_2!9461 (_1!9462 (h!22208 mapValue!8322)))) (forall!3925 (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapValue!8322)))) lambda!65806))))

(declare-fun bs!388186 () Bool)

(assert (= bs!388186 d!461158))

(declare-fun m!1826949 () Bool)

(assert (=> bs!388186 m!1826949))

(assert (=> b!1554433 d!461158))

(declare-fun d!461160 () Bool)

(assert (=> d!461160 (= (get!4845 lt!538217) (v!23650 lt!538217))))

(assert (=> b!1554192 d!461160))

(declare-fun d!461162 () Bool)

(assert (=> d!461162 (= (apply!4108 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217)))) (seqFromList!1772 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217))))) (dynLambda!7444 (toValue!4314 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217))))) (seqFromList!1772 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217))))))))

(declare-fun b_lambda!48799 () Bool)

(assert (=> (not b_lambda!48799) (not d!461162)))

(declare-fun tb!87305 () Bool)

(declare-fun t!141328 () Bool)

(assert (=> (and b!1554089 (= (toValue!4314 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217)))))) t!141328) tb!87305))

(declare-fun result!105392 () Bool)

(assert (=> tb!87305 (= result!105392 (inv!21 (dynLambda!7444 (toValue!4314 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217))))) (seqFromList!1772 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))))))))

(declare-fun m!1826951 () Bool)

(assert (=> tb!87305 m!1826951))

(assert (=> d!461162 t!141328))

(declare-fun b_and!108463 () Bool)

(assert (= b_and!108461 (and (=> t!141328 result!105392) b_and!108463)))

(assert (=> d!461162 m!1826713))

(declare-fun m!1826953 () Bool)

(assert (=> d!461162 m!1826953))

(assert (=> b!1554192 d!461162))

(declare-fun d!461164 () Bool)

(assert (=> d!461164 (= (seqFromList!1772 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))) (fromListB!760 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))))))

(declare-fun bs!388187 () Bool)

(assert (= bs!388187 d!461164))

(declare-fun m!1826955 () Bool)

(assert (=> bs!388187 m!1826955))

(assert (=> b!1554192 d!461164))

(declare-fun bm!101966 () Bool)

(declare-fun call!101971 () Regex!4273)

(declare-fun call!101978 () C!8724)

(assert (=> bm!101966 (= call!101971 (derivativeStep!1021 call!101963 call!101978))))

(declare-fun b!1554450 () Bool)

(declare-fun e!997267 () tuple2!16256)

(declare-fun e!997271 () tuple2!16256)

(assert (=> b!1554450 (= e!997267 e!997271)))

(declare-fun c!252660 () Bool)

(assert (=> b!1554450 (= c!252660 (= (+ (size!13604 Nil!16803) 1) (size!13604 lt!538190)))))

(declare-fun b!1554451 () Bool)

(declare-fun e!997264 () Bool)

(declare-fun e!997270 () Bool)

(assert (=> b!1554451 (= e!997264 e!997270)))

(declare-fun res!694027 () Bool)

(assert (=> b!1554451 (=> res!694027 e!997270)))

(declare-fun lt!538335 () tuple2!16256)

(assert (=> b!1554451 (= res!694027 (isEmpty!10106 (_1!9463 lt!538335)))))

(declare-fun b!1554452 () Bool)

(declare-fun e!997268 () Unit!26051)

(declare-fun Unit!26057 () Unit!26051)

(assert (=> b!1554452 (= e!997268 Unit!26057)))

(declare-fun lt!538323 () Unit!26051)

(declare-fun call!101976 () Unit!26051)

(assert (=> b!1554452 (= lt!538323 call!101976)))

(declare-fun call!101972 () Bool)

(assert (=> b!1554452 call!101972))

(declare-fun lt!538349 () Unit!26051)

(assert (=> b!1554452 (= lt!538349 lt!538323)))

(declare-fun lt!538345 () Unit!26051)

(declare-fun call!101973 () Unit!26051)

(assert (=> b!1554452 (= lt!538345 call!101973)))

(assert (=> b!1554452 (= lt!538190 lt!538304)))

(declare-fun lt!538328 () Unit!26051)

(assert (=> b!1554452 (= lt!538328 lt!538345)))

(assert (=> b!1554452 false))

(declare-fun b!1554453 () Bool)

(declare-fun e!997269 () tuple2!16256)

(assert (=> b!1554453 (= e!997269 (tuple2!16257 lt!538304 call!101967))))

(declare-fun d!461166 () Bool)

(assert (=> d!461166 e!997264))

(declare-fun res!694028 () Bool)

(assert (=> d!461166 (=> (not res!694028) (not e!997264))))

(assert (=> d!461166 (= res!694028 (= (++!4413 (_1!9463 lt!538335) (_2!9463 lt!538335)) lt!538190))))

(assert (=> d!461166 (= lt!538335 e!997267)))

(declare-fun c!252656 () Bool)

(assert (=> d!461166 (= c!252656 (lostCause!387 call!101963))))

(declare-fun lt!538347 () Unit!26051)

(declare-fun Unit!26058 () Unit!26051)

(assert (=> d!461166 (= lt!538347 Unit!26058)))

(assert (=> d!461166 (= (getSuffix!669 lt!538190 lt!538304) call!101967)))

(declare-fun lt!538327 () Unit!26051)

(declare-fun lt!538342 () Unit!26051)

(assert (=> d!461166 (= lt!538327 lt!538342)))

(declare-fun lt!538348 () List!16871)

(assert (=> d!461166 (= call!101967 lt!538348)))

(assert (=> d!461166 (= lt!538342 (lemmaSamePrefixThenSameSuffix!621 lt!538304 call!101967 lt!538304 lt!538348 lt!538190))))

(assert (=> d!461166 (= lt!538348 (getSuffix!669 lt!538190 lt!538304))))

(declare-fun lt!538325 () Unit!26051)

(declare-fun lt!538330 () Unit!26051)

(assert (=> d!461166 (= lt!538325 lt!538330)))

(assert (=> d!461166 (isPrefix!1259 lt!538304 (++!4413 lt!538304 call!101967))))

(assert (=> d!461166 (= lt!538330 (lemmaConcatTwoListThenFirstIsPrefix!784 lt!538304 call!101967))))

(assert (=> d!461166 (validRegex!1710 call!101963)))

(assert (=> d!461166 (= (findLongestMatchInner!330 call!101963 lt!538304 (+ (size!13604 Nil!16803) 1) call!101967 lt!538190 (size!13604 lt!538190)) lt!538335)))

(declare-fun b!1554454 () Bool)

(declare-fun c!252659 () Bool)

(declare-fun call!101974 () Bool)

(assert (=> b!1554454 (= c!252659 call!101974)))

(declare-fun lt!538334 () Unit!26051)

(declare-fun lt!538350 () Unit!26051)

(assert (=> b!1554454 (= lt!538334 lt!538350)))

(declare-fun lt!538331 () C!8724)

(declare-fun lt!538337 () List!16871)

(assert (=> b!1554454 (= (++!4413 (++!4413 lt!538304 (Cons!16803 lt!538331 Nil!16803)) lt!538337) lt!538190)))

(assert (=> b!1554454 (= lt!538350 (lemmaMoveElementToOtherListKeepsConcatEq!438 lt!538304 lt!538331 lt!538337 lt!538190))))

(assert (=> b!1554454 (= lt!538337 (tail!2207 call!101967))))

(assert (=> b!1554454 (= lt!538331 (head!3112 call!101967))))

(declare-fun lt!538346 () Unit!26051)

(declare-fun lt!538329 () Unit!26051)

(assert (=> b!1554454 (= lt!538346 lt!538329)))

(assert (=> b!1554454 (isPrefix!1259 (++!4413 lt!538304 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 lt!538304)) Nil!16803)) lt!538190)))

(assert (=> b!1554454 (= lt!538329 (lemmaAddHeadSuffixToPrefixStillPrefix!112 lt!538304 lt!538190))))

(declare-fun lt!538333 () Unit!26051)

(declare-fun lt!538339 () Unit!26051)

(assert (=> b!1554454 (= lt!538333 lt!538339)))

(assert (=> b!1554454 (= lt!538339 (lemmaAddHeadSuffixToPrefixStillPrefix!112 lt!538304 lt!538190))))

(declare-fun lt!538332 () List!16871)

(assert (=> b!1554454 (= lt!538332 (++!4413 lt!538304 (Cons!16803 (head!3112 call!101967) Nil!16803)))))

(declare-fun lt!538324 () Unit!26051)

(assert (=> b!1554454 (= lt!538324 e!997268)))

(declare-fun c!252658 () Bool)

(assert (=> b!1554454 (= c!252658 (= (size!13604 lt!538304) (size!13604 lt!538190)))))

(declare-fun lt!538326 () Unit!26051)

(declare-fun lt!538336 () Unit!26051)

(assert (=> b!1554454 (= lt!538326 lt!538336)))

(assert (=> b!1554454 (<= (size!13604 lt!538304) (size!13604 lt!538190))))

(assert (=> b!1554454 (= lt!538336 (lemmaIsPrefixThenSmallerEqSize!113 lt!538304 lt!538190))))

(declare-fun e!997265 () tuple2!16256)

(assert (=> b!1554454 (= e!997271 e!997265)))

(declare-fun b!1554455 () Bool)

(declare-fun Unit!26059 () Unit!26051)

(assert (=> b!1554455 (= e!997268 Unit!26059)))

(declare-fun bm!101967 () Bool)

(assert (=> bm!101967 (= call!101976 (lemmaIsPrefixRefl!889 lt!538190 lt!538190))))

(declare-fun bm!101968 () Bool)

(assert (=> bm!101968 (= call!101973 (lemmaIsPrefixSameLengthThenSameList!123 lt!538190 lt!538304 lt!538190))))

(declare-fun b!1554456 () Bool)

(assert (=> b!1554456 (= e!997267 (tuple2!16257 Nil!16803 lt!538190))))

(declare-fun b!1554457 () Bool)

(declare-fun e!997266 () tuple2!16256)

(assert (=> b!1554457 (= e!997266 (tuple2!16257 lt!538304 Nil!16803))))

(declare-fun bm!101969 () Bool)

(assert (=> bm!101969 (= call!101972 (isPrefix!1259 lt!538190 lt!538190))))

(declare-fun b!1554458 () Bool)

(declare-fun lt!538344 () tuple2!16256)

(assert (=> b!1554458 (= e!997269 lt!538344)))

(declare-fun bm!101970 () Bool)

(assert (=> bm!101970 (= call!101974 (nullable!1269 call!101963))))

(declare-fun b!1554459 () Bool)

(assert (=> b!1554459 (= e!997265 e!997269)))

(declare-fun call!101977 () tuple2!16256)

(assert (=> b!1554459 (= lt!538344 call!101977)))

(declare-fun c!252657 () Bool)

(assert (=> b!1554459 (= c!252657 (isEmpty!10106 (_1!9463 lt!538344)))))

(declare-fun b!1554460 () Bool)

(declare-fun c!252661 () Bool)

(assert (=> b!1554460 (= c!252661 call!101974)))

(declare-fun lt!538341 () Unit!26051)

(declare-fun lt!538338 () Unit!26051)

(assert (=> b!1554460 (= lt!538341 lt!538338)))

(assert (=> b!1554460 (= lt!538190 lt!538304)))

(assert (=> b!1554460 (= lt!538338 call!101973)))

(declare-fun lt!538340 () Unit!26051)

(declare-fun lt!538343 () Unit!26051)

(assert (=> b!1554460 (= lt!538340 lt!538343)))

(assert (=> b!1554460 call!101972))

(assert (=> b!1554460 (= lt!538343 call!101976)))

(assert (=> b!1554460 (= e!997271 e!997266)))

(declare-fun b!1554461 () Bool)

(assert (=> b!1554461 (= e!997266 (tuple2!16257 Nil!16803 lt!538190))))

(declare-fun bm!101971 () Bool)

(assert (=> bm!101971 (= call!101978 (head!3112 call!101967))))

(declare-fun b!1554462 () Bool)

(assert (=> b!1554462 (= e!997265 call!101977)))

(declare-fun b!1554463 () Bool)

(assert (=> b!1554463 (= e!997270 (>= (size!13604 (_1!9463 lt!538335)) (size!13604 lt!538304)))))

(declare-fun bm!101972 () Bool)

(declare-fun call!101975 () List!16871)

(assert (=> bm!101972 (= call!101975 (tail!2207 call!101967))))

(declare-fun bm!101973 () Bool)

(assert (=> bm!101973 (= call!101977 (findLongestMatchInner!330 call!101971 lt!538332 (+ (size!13604 Nil!16803) 1 1) call!101975 lt!538190 (size!13604 lt!538190)))))

(assert (= (and d!461166 c!252656) b!1554456))

(assert (= (and d!461166 (not c!252656)) b!1554450))

(assert (= (and b!1554450 c!252660) b!1554460))

(assert (= (and b!1554450 (not c!252660)) b!1554454))

(assert (= (and b!1554460 c!252661) b!1554457))

(assert (= (and b!1554460 (not c!252661)) b!1554461))

(assert (= (and b!1554454 c!252658) b!1554452))

(assert (= (and b!1554454 (not c!252658)) b!1554455))

(assert (= (and b!1554454 c!252659) b!1554459))

(assert (= (and b!1554454 (not c!252659)) b!1554462))

(assert (= (and b!1554459 c!252657) b!1554453))

(assert (= (and b!1554459 (not c!252657)) b!1554458))

(assert (= (or b!1554459 b!1554462) bm!101972))

(assert (= (or b!1554459 b!1554462) bm!101971))

(assert (= (or b!1554459 b!1554462) bm!101966))

(assert (= (or b!1554459 b!1554462) bm!101973))

(assert (= (or b!1554460 b!1554452) bm!101968))

(assert (= (or b!1554460 b!1554452) bm!101967))

(assert (= (or b!1554460 b!1554454) bm!101970))

(assert (= (or b!1554460 b!1554452) bm!101969))

(assert (= (and d!461166 res!694028) b!1554451))

(assert (= (and b!1554451 (not res!694027)) b!1554463))

(declare-fun m!1826957 () Bool)

(assert (=> d!461166 m!1826957))

(declare-fun m!1826959 () Bool)

(assert (=> d!461166 m!1826959))

(declare-fun m!1826961 () Bool)

(assert (=> d!461166 m!1826961))

(declare-fun m!1826963 () Bool)

(assert (=> d!461166 m!1826963))

(declare-fun m!1826965 () Bool)

(assert (=> d!461166 m!1826965))

(declare-fun m!1826967 () Bool)

(assert (=> d!461166 m!1826967))

(assert (=> d!461166 m!1826963))

(declare-fun m!1826969 () Bool)

(assert (=> d!461166 m!1826969))

(declare-fun m!1826971 () Bool)

(assert (=> d!461166 m!1826971))

(declare-fun m!1826973 () Bool)

(assert (=> bm!101970 m!1826973))

(assert (=> bm!101969 m!1826801))

(declare-fun m!1826975 () Bool)

(assert (=> b!1554454 m!1826975))

(declare-fun m!1826977 () Bool)

(assert (=> b!1554454 m!1826977))

(declare-fun m!1826979 () Bool)

(assert (=> b!1554454 m!1826979))

(assert (=> b!1554454 m!1826959))

(assert (=> b!1554454 m!1826977))

(declare-fun m!1826981 () Bool)

(assert (=> b!1554454 m!1826981))

(declare-fun m!1826983 () Bool)

(assert (=> b!1554454 m!1826983))

(declare-fun m!1826985 () Bool)

(assert (=> b!1554454 m!1826985))

(declare-fun m!1826987 () Bool)

(assert (=> b!1554454 m!1826987))

(declare-fun m!1826989 () Bool)

(assert (=> b!1554454 m!1826989))

(assert (=> b!1554454 m!1826563))

(declare-fun m!1826991 () Bool)

(assert (=> b!1554454 m!1826991))

(assert (=> b!1554454 m!1826959))

(declare-fun m!1826993 () Bool)

(assert (=> b!1554454 m!1826993))

(declare-fun m!1826995 () Bool)

(assert (=> b!1554454 m!1826995))

(assert (=> b!1554454 m!1826983))

(declare-fun m!1826997 () Bool)

(assert (=> b!1554454 m!1826997))

(assert (=> bm!101972 m!1826997))

(declare-fun m!1826999 () Bool)

(assert (=> b!1554459 m!1826999))

(declare-fun m!1827001 () Bool)

(assert (=> bm!101968 m!1827001))

(assert (=> bm!101967 m!1826829))

(assert (=> bm!101971 m!1826989))

(declare-fun m!1827003 () Bool)

(assert (=> b!1554451 m!1827003))

(declare-fun m!1827005 () Bool)

(assert (=> b!1554463 m!1827005))

(assert (=> b!1554463 m!1826991))

(declare-fun m!1827007 () Bool)

(assert (=> bm!101966 m!1827007))

(assert (=> bm!101973 m!1826563))

(declare-fun m!1827009 () Bool)

(assert (=> bm!101973 m!1827009))

(assert (=> bm!101965 d!461166))

(declare-fun call!101990 () Regex!4273)

(declare-fun c!252676 () Bool)

(declare-fun bm!101982 () Bool)

(assert (=> bm!101982 (= call!101990 (derivativeStep!1021 (ite c!252676 (regTwo!9059 (regex!2945 rule!240)) (regTwo!9058 (regex!2945 rule!240))) call!101970))))

(declare-fun b!1554484 () Bool)

(assert (=> b!1554484 (= c!252676 ((_ is Union!4273) (regex!2945 rule!240)))))

(declare-fun e!997284 () Regex!4273)

(declare-fun e!997285 () Regex!4273)

(assert (=> b!1554484 (= e!997284 e!997285)))

(declare-fun b!1554485 () Bool)

(declare-fun c!252674 () Bool)

(assert (=> b!1554485 (= c!252674 (nullable!1269 (regOne!9058 (regex!2945 rule!240))))))

(declare-fun e!997286 () Regex!4273)

(declare-fun e!997283 () Regex!4273)

(assert (=> b!1554485 (= e!997286 e!997283)))

(declare-fun b!1554486 () Bool)

(assert (=> b!1554486 (= e!997284 (ite (= call!101970 (c!252616 (regex!2945 rule!240))) EmptyExpr!4273 EmptyLang!4273))))

(declare-fun bm!101983 () Bool)

(declare-fun call!101987 () Regex!4273)

(declare-fun call!101988 () Regex!4273)

(assert (=> bm!101983 (= call!101987 call!101988)))

(declare-fun b!1554487 () Bool)

(declare-fun e!997282 () Regex!4273)

(assert (=> b!1554487 (= e!997282 EmptyLang!4273)))

(declare-fun b!1554488 () Bool)

(assert (=> b!1554488 (= e!997285 (Union!4273 call!101988 call!101990))))

(declare-fun b!1554489 () Bool)

(assert (=> b!1554489 (= e!997282 e!997284)))

(declare-fun c!252675 () Bool)

(assert (=> b!1554489 (= c!252675 ((_ is ElementMatch!4273) (regex!2945 rule!240)))))

(declare-fun b!1554490 () Bool)

(declare-fun call!101989 () Regex!4273)

(assert (=> b!1554490 (= e!997283 (Union!4273 (Concat!7309 call!101989 (regTwo!9058 (regex!2945 rule!240))) EmptyLang!4273))))

(declare-fun b!1554491 () Bool)

(assert (=> b!1554491 (= e!997285 e!997286)))

(declare-fun c!252672 () Bool)

(assert (=> b!1554491 (= c!252672 ((_ is Star!4273) (regex!2945 rule!240)))))

(declare-fun b!1554492 () Bool)

(assert (=> b!1554492 (= e!997286 (Concat!7309 call!101987 (regex!2945 rule!240)))))

(declare-fun d!461168 () Bool)

(declare-fun lt!538353 () Regex!4273)

(assert (=> d!461168 (validRegex!1710 lt!538353)))

(assert (=> d!461168 (= lt!538353 e!997282)))

(declare-fun c!252673 () Bool)

(assert (=> d!461168 (= c!252673 (or ((_ is EmptyExpr!4273) (regex!2945 rule!240)) ((_ is EmptyLang!4273) (regex!2945 rule!240))))))

(assert (=> d!461168 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461168 (= (derivativeStep!1021 (regex!2945 rule!240) call!101970) lt!538353)))

(declare-fun bm!101984 () Bool)

(assert (=> bm!101984 (= call!101988 (derivativeStep!1021 (ite c!252676 (regOne!9059 (regex!2945 rule!240)) (ite c!252672 (reg!4602 (regex!2945 rule!240)) (regOne!9058 (regex!2945 rule!240)))) call!101970))))

(declare-fun bm!101985 () Bool)

(assert (=> bm!101985 (= call!101989 call!101987)))

(declare-fun b!1554493 () Bool)

(assert (=> b!1554493 (= e!997283 (Union!4273 (Concat!7309 call!101989 (regTwo!9058 (regex!2945 rule!240))) call!101990))))

(assert (= (and d!461168 c!252673) b!1554487))

(assert (= (and d!461168 (not c!252673)) b!1554489))

(assert (= (and b!1554489 c!252675) b!1554486))

(assert (= (and b!1554489 (not c!252675)) b!1554484))

(assert (= (and b!1554484 c!252676) b!1554488))

(assert (= (and b!1554484 (not c!252676)) b!1554491))

(assert (= (and b!1554491 c!252672) b!1554492))

(assert (= (and b!1554491 (not c!252672)) b!1554485))

(assert (= (and b!1554485 c!252674) b!1554493))

(assert (= (and b!1554485 (not c!252674)) b!1554490))

(assert (= (or b!1554493 b!1554490) bm!101985))

(assert (= (or b!1554492 bm!101985) bm!101983))

(assert (= (or b!1554488 bm!101983) bm!101984))

(assert (= (or b!1554488 b!1554493) bm!101982))

(declare-fun m!1827011 () Bool)

(assert (=> bm!101982 m!1827011))

(declare-fun m!1827013 () Bool)

(assert (=> b!1554485 m!1827013))

(declare-fun m!1827015 () Bool)

(assert (=> d!461168 m!1827015))

(assert (=> d!461168 m!1826659))

(declare-fun m!1827017 () Bool)

(assert (=> bm!101984 m!1827017))

(assert (=> bm!101958 d!461168))

(declare-fun d!461170 () Bool)

(declare-fun res!694033 () Bool)

(declare-fun e!997289 () Bool)

(assert (=> d!461170 (=> (not res!694033) (not e!997289))))

(declare-fun valid!1442 (MutableMap!1735) Bool)

(assert (=> d!461170 (= res!694033 (valid!1442 (cache!2116 cacheUp!755)))))

(assert (=> d!461170 (= (validCacheMapUp!160 (cache!2116 cacheUp!755)) e!997289)))

(declare-fun b!1554498 () Bool)

(declare-fun res!694034 () Bool)

(assert (=> b!1554498 (=> (not res!694034) (not e!997289))))

(declare-fun invariantList!247 (List!16873) Bool)

(declare-datatypes ((ListMap!543 0))(
  ( (ListMap!544 (toList!856 List!16873)) )
))
(declare-fun map!3521 (MutableMap!1735) ListMap!543)

(assert (=> b!1554498 (= res!694034 (invariantList!247 (toList!856 (map!3521 (cache!2116 cacheUp!755)))))))

(declare-fun b!1554499 () Bool)

(declare-fun lambda!65809 () Int)

(declare-fun forall!3926 (List!16873 Int) Bool)

(assert (=> b!1554499 (= e!997289 (forall!3926 (toList!856 (map!3521 (cache!2116 cacheUp!755))) lambda!65809))))

(assert (= (and d!461170 res!694033) b!1554498))

(assert (= (and b!1554498 res!694034) b!1554499))

(declare-fun m!1827020 () Bool)

(assert (=> d!461170 m!1827020))

(declare-fun m!1827022 () Bool)

(assert (=> b!1554498 m!1827022))

(declare-fun m!1827024 () Bool)

(assert (=> b!1554498 m!1827024))

(assert (=> b!1554499 m!1827022))

(declare-fun m!1827026 () Bool)

(assert (=> b!1554499 m!1827026))

(assert (=> b!1554229 d!461170))

(declare-fun d!461172 () Bool)

(declare-fun nullableFct!298 (Regex!4273) Bool)

(assert (=> d!461172 (= (nullable!1269 (regex!2945 rule!240)) (nullableFct!298 (regex!2945 rule!240)))))

(declare-fun bs!388188 () Bool)

(assert (= bs!388188 d!461172))

(declare-fun m!1827028 () Bool)

(assert (=> bs!388188 m!1827028))

(assert (=> bm!101962 d!461172))

(declare-fun d!461174 () Bool)

(declare-fun res!694041 () Bool)

(declare-fun e!997292 () Bool)

(assert (=> d!461174 (=> (not res!694041) (not e!997292))))

(assert (=> d!461174 (= res!694041 (= (csize!11356 (c!252615 input!1676)) (+ (size!13607 (left!13662 (c!252615 input!1676))) (size!13607 (right!13992 (c!252615 input!1676))))))))

(assert (=> d!461174 (= (inv!22080 (c!252615 input!1676)) e!997292)))

(declare-fun b!1554506 () Bool)

(declare-fun res!694042 () Bool)

(assert (=> b!1554506 (=> (not res!694042) (not e!997292))))

(assert (=> b!1554506 (= res!694042 (and (not (= (left!13662 (c!252615 input!1676)) Empty!5563)) (not (= (right!13992 (c!252615 input!1676)) Empty!5563))))))

(declare-fun b!1554507 () Bool)

(declare-fun res!694043 () Bool)

(assert (=> b!1554507 (=> (not res!694043) (not e!997292))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!829 (Conc!5563) Int)

(assert (=> b!1554507 (= res!694043 (= (cheight!5774 (c!252615 input!1676)) (+ (max!0 (height!829 (left!13662 (c!252615 input!1676))) (height!829 (right!13992 (c!252615 input!1676)))) 1)))))

(declare-fun b!1554508 () Bool)

(assert (=> b!1554508 (= e!997292 (<= 0 (cheight!5774 (c!252615 input!1676))))))

(assert (= (and d!461174 res!694041) b!1554506))

(assert (= (and b!1554506 res!694042) b!1554507))

(assert (= (and b!1554507 res!694043) b!1554508))

(declare-fun m!1827030 () Bool)

(assert (=> d!461174 m!1827030))

(declare-fun m!1827032 () Bool)

(assert (=> d!461174 m!1827032))

(declare-fun m!1827034 () Bool)

(assert (=> b!1554507 m!1827034))

(declare-fun m!1827036 () Bool)

(assert (=> b!1554507 m!1827036))

(assert (=> b!1554507 m!1827034))

(assert (=> b!1554507 m!1827036))

(declare-fun m!1827038 () Bool)

(assert (=> b!1554507 m!1827038))

(assert (=> b!1554206 d!461174))

(declare-fun d!461176 () Bool)

(assert (=> d!461176 (= (list!6489 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))) (list!6490 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))))

(declare-fun bs!388189 () Bool)

(assert (= bs!388189 d!461176))

(declare-fun m!1827040 () Bool)

(assert (=> bs!388189 m!1827040))

(assert (=> bs!388176 d!461176))

(assert (=> bs!388176 d!461060))

(declare-fun d!461178 () Bool)

(declare-fun e!997295 () Bool)

(assert (=> d!461178 e!997295))

(declare-fun res!694046 () Bool)

(assert (=> d!461178 (=> (not res!694046) (not e!997295))))

(declare-fun lt!538356 () BalanceConc!11068)

(assert (=> d!461178 (= res!694046 (= (list!6489 lt!538356) lt!538189))))

(declare-fun fromList!353 (List!16871) Conc!5563)

(assert (=> d!461178 (= lt!538356 (BalanceConc!11069 (fromList!353 lt!538189)))))

(assert (=> d!461178 (= (fromListB!760 lt!538189) lt!538356)))

(declare-fun b!1554511 () Bool)

(assert (=> b!1554511 (= e!997295 (isBalanced!1642 (fromList!353 lt!538189)))))

(assert (= (and d!461178 res!694046) b!1554511))

(declare-fun m!1827042 () Bool)

(assert (=> d!461178 m!1827042))

(declare-fun m!1827044 () Bool)

(assert (=> d!461178 m!1827044))

(assert (=> b!1554511 m!1827044))

(assert (=> b!1554511 m!1827044))

(declare-fun m!1827046 () Bool)

(assert (=> b!1554511 m!1827046))

(assert (=> d!461062 d!461178))

(declare-fun d!461180 () Bool)

(assert (=> d!461180 (= (isEmpty!10106 (list!6489 (_1!9464 (_1!9465 lt!538187)))) ((_ is Nil!16803) (list!6489 (_1!9464 (_1!9465 lt!538187)))))))

(assert (=> d!461082 d!461180))

(assert (=> d!461082 d!461060))

(declare-fun d!461182 () Bool)

(declare-fun lt!538359 () Bool)

(assert (=> d!461182 (= lt!538359 (isEmpty!10106 (list!6490 (c!252615 (_1!9464 (_1!9465 lt!538187))))))))

(assert (=> d!461182 (= lt!538359 (= (size!13607 (c!252615 (_1!9464 (_1!9465 lt!538187)))) 0))))

(assert (=> d!461182 (= (isEmpty!10109 (c!252615 (_1!9464 (_1!9465 lt!538187)))) lt!538359)))

(declare-fun bs!388190 () Bool)

(assert (= bs!388190 d!461182))

(assert (=> bs!388190 m!1826667))

(assert (=> bs!388190 m!1826667))

(declare-fun m!1827048 () Bool)

(assert (=> bs!388190 m!1827048))

(assert (=> bs!388190 m!1826679))

(assert (=> d!461082 d!461182))

(declare-fun b!1554522 () Bool)

(declare-fun e!997301 () List!16871)

(declare-fun list!6491 (IArray!11131) List!16871)

(assert (=> b!1554522 (= e!997301 (list!6491 (xs!8363 (c!252615 input!1676))))))

(declare-fun b!1554521 () Bool)

(declare-fun e!997300 () List!16871)

(assert (=> b!1554521 (= e!997300 e!997301)))

(declare-fun c!252683 () Bool)

(assert (=> b!1554521 (= c!252683 ((_ is Leaf!8245) (c!252615 input!1676)))))

(declare-fun d!461184 () Bool)

(declare-fun c!252682 () Bool)

(assert (=> d!461184 (= c!252682 ((_ is Empty!5563) (c!252615 input!1676)))))

(assert (=> d!461184 (= (list!6490 (c!252615 input!1676)) e!997300)))

(declare-fun b!1554520 () Bool)

(assert (=> b!1554520 (= e!997300 Nil!16803)))

(declare-fun b!1554523 () Bool)

(assert (=> b!1554523 (= e!997301 (++!4413 (list!6490 (left!13662 (c!252615 input!1676))) (list!6490 (right!13992 (c!252615 input!1676)))))))

(assert (= (and d!461184 c!252682) b!1554520))

(assert (= (and d!461184 (not c!252682)) b!1554521))

(assert (= (and b!1554521 c!252683) b!1554522))

(assert (= (and b!1554521 (not c!252683)) b!1554523))

(declare-fun m!1827050 () Bool)

(assert (=> b!1554522 m!1827050))

(declare-fun m!1827052 () Bool)

(assert (=> b!1554523 m!1827052))

(declare-fun m!1827054 () Bool)

(assert (=> b!1554523 m!1827054))

(assert (=> b!1554523 m!1827052))

(assert (=> b!1554523 m!1827054))

(declare-fun m!1827056 () Bool)

(assert (=> b!1554523 m!1827056))

(assert (=> d!461114 d!461184))

(declare-fun bs!388191 () Bool)

(declare-fun d!461186 () Bool)

(assert (= bs!388191 (and d!461186 d!461152)))

(declare-fun lambda!65810 () Int)

(assert (=> bs!388191 (= lambda!65810 lambda!65803)))

(declare-fun bs!388192 () Bool)

(assert (= bs!388192 (and d!461186 d!461154)))

(assert (=> bs!388192 (= lambda!65810 lambda!65804)))

(declare-fun bs!388193 () Bool)

(assert (= bs!388193 (and d!461186 d!461156)))

(assert (=> bs!388193 (= lambda!65810 lambda!65805)))

(declare-fun bs!388194 () Bool)

(assert (= bs!388194 (and d!461186 d!461158)))

(assert (=> bs!388194 (= lambda!65810 lambda!65806)))

(assert (=> d!461186 (= (inv!22082 (_1!9457 (_1!9458 (h!22206 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))) (forall!3925 (exprs!1291 (_1!9457 (_1!9458 (h!22206 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))) lambda!65810))))

(declare-fun bs!388195 () Bool)

(assert (= bs!388195 d!461186))

(declare-fun m!1827058 () Bool)

(assert (=> bs!388195 m!1827058))

(assert (=> b!1554406 d!461186))

(assert (=> d!461138 d!461130))

(declare-fun bs!388196 () Bool)

(declare-fun d!461188 () Bool)

(assert (= bs!388196 (and d!461188 d!461152)))

(declare-fun lambda!65811 () Int)

(assert (=> bs!388196 (= lambda!65811 lambda!65803)))

(declare-fun bs!388197 () Bool)

(assert (= bs!388197 (and d!461188 d!461158)))

(assert (=> bs!388197 (= lambda!65811 lambda!65806)))

(declare-fun bs!388198 () Bool)

(assert (= bs!388198 (and d!461188 d!461156)))

(assert (=> bs!388198 (= lambda!65811 lambda!65805)))

(declare-fun bs!388199 () Bool)

(assert (= bs!388199 (and d!461188 d!461154)))

(assert (=> bs!388199 (= lambda!65811 lambda!65804)))

(declare-fun bs!388200 () Bool)

(assert (= bs!388200 (and d!461188 d!461186)))

(assert (=> bs!388200 (= lambda!65811 lambda!65810)))

(assert (=> d!461188 (= (inv!22082 (_1!9457 (_1!9458 (h!22206 mapDefault!8330)))) (forall!3925 (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapDefault!8330)))) lambda!65811))))

(declare-fun bs!388201 () Bool)

(assert (= bs!388201 d!461188))

(declare-fun m!1827060 () Bool)

(assert (=> bs!388201 m!1827060))

(assert (=> b!1554384 d!461188))

(assert (=> b!1554094 d!461078))

(declare-fun d!461190 () Bool)

(declare-fun c!252684 () Bool)

(assert (=> d!461190 (= c!252684 ((_ is Node!5563) (left!13662 (c!252615 input!1676))))))

(declare-fun e!997302 () Bool)

(assert (=> d!461190 (= (inv!22074 (left!13662 (c!252615 input!1676))) e!997302)))

(declare-fun b!1554524 () Bool)

(assert (=> b!1554524 (= e!997302 (inv!22080 (left!13662 (c!252615 input!1676))))))

(declare-fun b!1554525 () Bool)

(declare-fun e!997303 () Bool)

(assert (=> b!1554525 (= e!997302 e!997303)))

(declare-fun res!694047 () Bool)

(assert (=> b!1554525 (= res!694047 (not ((_ is Leaf!8245) (left!13662 (c!252615 input!1676)))))))

(assert (=> b!1554525 (=> res!694047 e!997303)))

(declare-fun b!1554526 () Bool)

(assert (=> b!1554526 (= e!997303 (inv!22081 (left!13662 (c!252615 input!1676))))))

(assert (= (and d!461190 c!252684) b!1554524))

(assert (= (and d!461190 (not c!252684)) b!1554525))

(assert (= (and b!1554525 (not res!694047)) b!1554526))

(declare-fun m!1827062 () Bool)

(assert (=> b!1554524 m!1827062))

(declare-fun m!1827064 () Bool)

(assert (=> b!1554526 m!1827064))

(assert (=> b!1554349 d!461190))

(declare-fun d!461192 () Bool)

(declare-fun c!252685 () Bool)

(assert (=> d!461192 (= c!252685 ((_ is Node!5563) (right!13992 (c!252615 input!1676))))))

(declare-fun e!997304 () Bool)

(assert (=> d!461192 (= (inv!22074 (right!13992 (c!252615 input!1676))) e!997304)))

(declare-fun b!1554527 () Bool)

(assert (=> b!1554527 (= e!997304 (inv!22080 (right!13992 (c!252615 input!1676))))))

(declare-fun b!1554528 () Bool)

(declare-fun e!997305 () Bool)

(assert (=> b!1554528 (= e!997304 e!997305)))

(declare-fun res!694048 () Bool)

(assert (=> b!1554528 (= res!694048 (not ((_ is Leaf!8245) (right!13992 (c!252615 input!1676)))))))

(assert (=> b!1554528 (=> res!694048 e!997305)))

(declare-fun b!1554529 () Bool)

(assert (=> b!1554529 (= e!997305 (inv!22081 (right!13992 (c!252615 input!1676))))))

(assert (= (and d!461192 c!252685) b!1554527))

(assert (= (and d!461192 (not c!252685)) b!1554528))

(assert (= (and b!1554528 (not res!694048)) b!1554529))

(declare-fun m!1827066 () Bool)

(assert (=> b!1554527 m!1827066))

(declare-fun m!1827068 () Bool)

(assert (=> b!1554529 m!1827068))

(assert (=> b!1554349 d!461192))

(declare-fun d!461194 () Bool)

(assert (=> d!461194 (= (Forall!606 lambda!65800) (choose!9272 lambda!65800))))

(declare-fun bs!388202 () Bool)

(assert (= bs!388202 d!461194))

(declare-fun m!1827070 () Bool)

(assert (=> bs!388202 m!1827070))

(assert (=> d!461130 d!461194))

(assert (=> bm!101941 d!461136))

(declare-fun d!461196 () Bool)

(assert (=> d!461196 (= (inv!22083 (xs!8363 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) (<= (size!13604 (innerList!5623 (xs!8363 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) 2147483647))))

(declare-fun bs!388203 () Bool)

(assert (= bs!388203 d!461196))

(declare-fun m!1827072 () Bool)

(assert (=> bs!388203 m!1827072))

(assert (=> b!1554442 d!461196))

(declare-fun bm!101986 () Bool)

(declare-fun call!101991 () Bool)

(assert (=> bm!101986 (= call!101991 (isEmpty!10106 (tail!2207 (_1!9463 lt!538191))))))

(declare-fun b!1554530 () Bool)

(declare-fun e!997306 () Bool)

(assert (=> b!1554530 (= e!997306 (= (head!3112 (tail!2207 (_1!9463 lt!538191))) (c!252616 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))))))))

(declare-fun b!1554531 () Bool)

(declare-fun e!997307 () Bool)

(declare-fun e!997309 () Bool)

(assert (=> b!1554531 (= e!997307 e!997309)))

(declare-fun c!252687 () Bool)

(assert (=> b!1554531 (= c!252687 ((_ is EmptyLang!4273) (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191)))))))

(declare-fun b!1554532 () Bool)

(declare-fun res!694056 () Bool)

(assert (=> b!1554532 (=> (not res!694056) (not e!997306))))

(assert (=> b!1554532 (= res!694056 (isEmpty!10106 (tail!2207 (tail!2207 (_1!9463 lt!538191)))))))

(declare-fun b!1554534 () Bool)

(declare-fun e!997312 () Bool)

(assert (=> b!1554534 (= e!997312 (nullable!1269 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191)))))))

(declare-fun b!1554535 () Bool)

(declare-fun e!997310 () Bool)

(assert (=> b!1554535 (= e!997310 (not (= (head!3112 (tail!2207 (_1!9463 lt!538191))) (c!252616 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191)))))))))

(declare-fun b!1554536 () Bool)

(declare-fun lt!538360 () Bool)

(assert (=> b!1554536 (= e!997307 (= lt!538360 call!101991))))

(declare-fun b!1554537 () Bool)

(declare-fun res!694051 () Bool)

(assert (=> b!1554537 (=> res!694051 e!997310)))

(assert (=> b!1554537 (= res!694051 (not (isEmpty!10106 (tail!2207 (tail!2207 (_1!9463 lt!538191))))))))

(declare-fun b!1554538 () Bool)

(declare-fun res!694055 () Bool)

(declare-fun e!997308 () Bool)

(assert (=> b!1554538 (=> res!694055 e!997308)))

(assert (=> b!1554538 (= res!694055 e!997306)))

(declare-fun res!694053 () Bool)

(assert (=> b!1554538 (=> (not res!694053) (not e!997306))))

(assert (=> b!1554538 (= res!694053 lt!538360)))

(declare-fun b!1554533 () Bool)

(assert (=> b!1554533 (= e!997309 (not lt!538360))))

(declare-fun d!461198 () Bool)

(assert (=> d!461198 e!997307))

(declare-fun c!252686 () Bool)

(assert (=> d!461198 (= c!252686 ((_ is EmptyExpr!4273) (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191)))))))

(assert (=> d!461198 (= lt!538360 e!997312)))

(declare-fun c!252688 () Bool)

(assert (=> d!461198 (= c!252688 (isEmpty!10106 (tail!2207 (_1!9463 lt!538191))))))

(assert (=> d!461198 (validRegex!1710 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))))))

(assert (=> d!461198 (= (matchR!1877 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))) (tail!2207 (_1!9463 lt!538191))) lt!538360)))

(declare-fun b!1554539 () Bool)

(declare-fun res!694050 () Bool)

(assert (=> b!1554539 (=> (not res!694050) (not e!997306))))

(assert (=> b!1554539 (= res!694050 (not call!101991))))

(declare-fun b!1554540 () Bool)

(declare-fun res!694052 () Bool)

(assert (=> b!1554540 (=> res!694052 e!997308)))

(assert (=> b!1554540 (= res!694052 (not ((_ is ElementMatch!4273) (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))))))))

(assert (=> b!1554540 (= e!997309 e!997308)))

(declare-fun b!1554541 () Bool)

(declare-fun e!997311 () Bool)

(assert (=> b!1554541 (= e!997308 e!997311)))

(declare-fun res!694054 () Bool)

(assert (=> b!1554541 (=> (not res!694054) (not e!997311))))

(assert (=> b!1554541 (= res!694054 (not lt!538360))))

(declare-fun b!1554542 () Bool)

(assert (=> b!1554542 (= e!997312 (matchR!1877 (derivativeStep!1021 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))) (head!3112 (tail!2207 (_1!9463 lt!538191)))) (tail!2207 (tail!2207 (_1!9463 lt!538191)))))))

(declare-fun b!1554543 () Bool)

(assert (=> b!1554543 (= e!997311 e!997310)))

(declare-fun res!694049 () Bool)

(assert (=> b!1554543 (=> res!694049 e!997310)))

(assert (=> b!1554543 (= res!694049 call!101991)))

(assert (= (and d!461198 c!252688) b!1554534))

(assert (= (and d!461198 (not c!252688)) b!1554542))

(assert (= (and d!461198 c!252686) b!1554536))

(assert (= (and d!461198 (not c!252686)) b!1554531))

(assert (= (and b!1554531 c!252687) b!1554533))

(assert (= (and b!1554531 (not c!252687)) b!1554540))

(assert (= (and b!1554540 (not res!694052)) b!1554538))

(assert (= (and b!1554538 res!694053) b!1554539))

(assert (= (and b!1554539 res!694050) b!1554532))

(assert (= (and b!1554532 res!694056) b!1554530))

(assert (= (and b!1554538 (not res!694055)) b!1554541))

(assert (= (and b!1554541 res!694054) b!1554543))

(assert (= (and b!1554543 (not res!694049)) b!1554537))

(assert (= (and b!1554537 (not res!694051)) b!1554535))

(assert (= (or b!1554536 b!1554539 b!1554543) bm!101986))

(assert (=> b!1554532 m!1826651))

(declare-fun m!1827074 () Bool)

(assert (=> b!1554532 m!1827074))

(assert (=> b!1554532 m!1827074))

(declare-fun m!1827076 () Bool)

(assert (=> b!1554532 m!1827076))

(assert (=> b!1554535 m!1826651))

(declare-fun m!1827078 () Bool)

(assert (=> b!1554535 m!1827078))

(assert (=> b!1554534 m!1826661))

(declare-fun m!1827080 () Bool)

(assert (=> b!1554534 m!1827080))

(assert (=> d!461198 m!1826651))

(assert (=> d!461198 m!1826653))

(assert (=> d!461198 m!1826661))

(declare-fun m!1827082 () Bool)

(assert (=> d!461198 m!1827082))

(assert (=> b!1554537 m!1826651))

(assert (=> b!1554537 m!1827074))

(assert (=> b!1554537 m!1827074))

(assert (=> b!1554537 m!1827076))

(assert (=> bm!101986 m!1826651))

(assert (=> bm!101986 m!1826653))

(assert (=> b!1554542 m!1826651))

(assert (=> b!1554542 m!1827078))

(assert (=> b!1554542 m!1826661))

(assert (=> b!1554542 m!1827078))

(declare-fun m!1827084 () Bool)

(assert (=> b!1554542 m!1827084))

(assert (=> b!1554542 m!1826651))

(assert (=> b!1554542 m!1827074))

(assert (=> b!1554542 m!1827084))

(assert (=> b!1554542 m!1827074))

(declare-fun m!1827086 () Bool)

(assert (=> b!1554542 m!1827086))

(assert (=> b!1554530 m!1826651))

(assert (=> b!1554530 m!1827078))

(assert (=> b!1554169 d!461198))

(declare-fun bm!101987 () Bool)

(declare-fun c!252693 () Bool)

(declare-fun call!101995 () Regex!4273)

(assert (=> bm!101987 (= call!101995 (derivativeStep!1021 (ite c!252693 (regTwo!9059 (regex!2945 rule!240)) (regTwo!9058 (regex!2945 rule!240))) (head!3112 (_1!9463 lt!538191))))))

(declare-fun b!1554544 () Bool)

(assert (=> b!1554544 (= c!252693 ((_ is Union!4273) (regex!2945 rule!240)))))

(declare-fun e!997315 () Regex!4273)

(declare-fun e!997316 () Regex!4273)

(assert (=> b!1554544 (= e!997315 e!997316)))

(declare-fun b!1554545 () Bool)

(declare-fun c!252691 () Bool)

(assert (=> b!1554545 (= c!252691 (nullable!1269 (regOne!9058 (regex!2945 rule!240))))))

(declare-fun e!997317 () Regex!4273)

(declare-fun e!997314 () Regex!4273)

(assert (=> b!1554545 (= e!997317 e!997314)))

(declare-fun b!1554546 () Bool)

(assert (=> b!1554546 (= e!997315 (ite (= (head!3112 (_1!9463 lt!538191)) (c!252616 (regex!2945 rule!240))) EmptyExpr!4273 EmptyLang!4273))))

(declare-fun bm!101988 () Bool)

(declare-fun call!101992 () Regex!4273)

(declare-fun call!101993 () Regex!4273)

(assert (=> bm!101988 (= call!101992 call!101993)))

(declare-fun b!1554547 () Bool)

(declare-fun e!997313 () Regex!4273)

(assert (=> b!1554547 (= e!997313 EmptyLang!4273)))

(declare-fun b!1554548 () Bool)

(assert (=> b!1554548 (= e!997316 (Union!4273 call!101993 call!101995))))

(declare-fun b!1554549 () Bool)

(assert (=> b!1554549 (= e!997313 e!997315)))

(declare-fun c!252692 () Bool)

(assert (=> b!1554549 (= c!252692 ((_ is ElementMatch!4273) (regex!2945 rule!240)))))

(declare-fun b!1554550 () Bool)

(declare-fun call!101994 () Regex!4273)

(assert (=> b!1554550 (= e!997314 (Union!4273 (Concat!7309 call!101994 (regTwo!9058 (regex!2945 rule!240))) EmptyLang!4273))))

(declare-fun b!1554551 () Bool)

(assert (=> b!1554551 (= e!997316 e!997317)))

(declare-fun c!252689 () Bool)

(assert (=> b!1554551 (= c!252689 ((_ is Star!4273) (regex!2945 rule!240)))))

(declare-fun b!1554552 () Bool)

(assert (=> b!1554552 (= e!997317 (Concat!7309 call!101992 (regex!2945 rule!240)))))

(declare-fun d!461200 () Bool)

(declare-fun lt!538361 () Regex!4273)

(assert (=> d!461200 (validRegex!1710 lt!538361)))

(assert (=> d!461200 (= lt!538361 e!997313)))

(declare-fun c!252690 () Bool)

(assert (=> d!461200 (= c!252690 (or ((_ is EmptyExpr!4273) (regex!2945 rule!240)) ((_ is EmptyLang!4273) (regex!2945 rule!240))))))

(assert (=> d!461200 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461200 (= (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 lt!538191))) lt!538361)))

(declare-fun bm!101989 () Bool)

(assert (=> bm!101989 (= call!101993 (derivativeStep!1021 (ite c!252693 (regOne!9059 (regex!2945 rule!240)) (ite c!252689 (reg!4602 (regex!2945 rule!240)) (regOne!9058 (regex!2945 rule!240)))) (head!3112 (_1!9463 lt!538191))))))

(declare-fun bm!101990 () Bool)

(assert (=> bm!101990 (= call!101994 call!101992)))

(declare-fun b!1554553 () Bool)

(assert (=> b!1554553 (= e!997314 (Union!4273 (Concat!7309 call!101994 (regTwo!9058 (regex!2945 rule!240))) call!101995))))

(assert (= (and d!461200 c!252690) b!1554547))

(assert (= (and d!461200 (not c!252690)) b!1554549))

(assert (= (and b!1554549 c!252692) b!1554546))

(assert (= (and b!1554549 (not c!252692)) b!1554544))

(assert (= (and b!1554544 c!252693) b!1554548))

(assert (= (and b!1554544 (not c!252693)) b!1554551))

(assert (= (and b!1554551 c!252689) b!1554552))

(assert (= (and b!1554551 (not c!252689)) b!1554545))

(assert (= (and b!1554545 c!252691) b!1554553))

(assert (= (and b!1554545 (not c!252691)) b!1554550))

(assert (= (or b!1554553 b!1554550) bm!101990))

(assert (= (or b!1554552 bm!101990) bm!101988))

(assert (= (or b!1554548 bm!101988) bm!101989))

(assert (= (or b!1554548 b!1554553) bm!101987))

(assert (=> bm!101987 m!1826655))

(declare-fun m!1827088 () Bool)

(assert (=> bm!101987 m!1827088))

(assert (=> b!1554545 m!1827013))

(declare-fun m!1827090 () Bool)

(assert (=> d!461200 m!1827090))

(assert (=> d!461200 m!1826659))

(assert (=> bm!101989 m!1826655))

(declare-fun m!1827092 () Bool)

(assert (=> bm!101989 m!1827092))

(assert (=> b!1554169 d!461200))

(declare-fun d!461202 () Bool)

(assert (=> d!461202 (= (head!3112 (_1!9463 lt!538191)) (h!22204 (_1!9463 lt!538191)))))

(assert (=> b!1554169 d!461202))

(assert (=> b!1554169 d!461150))

(declare-fun d!461204 () Bool)

(declare-fun res!694057 () Bool)

(declare-fun e!997318 () Bool)

(assert (=> d!461204 (=> (not res!694057) (not e!997318))))

(assert (=> d!461204 (= res!694057 (= (csize!11356 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) (+ (size!13607 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) (size!13607 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))))

(assert (=> d!461204 (= (inv!22080 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) e!997318)))

(declare-fun b!1554554 () Bool)

(declare-fun res!694058 () Bool)

(assert (=> b!1554554 (=> (not res!694058) (not e!997318))))

(assert (=> b!1554554 (= res!694058 (and (not (= (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) Empty!5563)) (not (= (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) Empty!5563))))))

(declare-fun b!1554555 () Bool)

(declare-fun res!694059 () Bool)

(assert (=> b!1554555 (=> (not res!694059) (not e!997318))))

(assert (=> b!1554555 (= res!694059 (= (cheight!5774 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) (+ (max!0 (height!829 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) (height!829 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) 1)))))

(declare-fun b!1554556 () Bool)

(assert (=> b!1554556 (= e!997318 (<= 0 (cheight!5774 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(assert (= (and d!461204 res!694057) b!1554554))

(assert (= (and b!1554554 res!694058) b!1554555))

(assert (= (and b!1554555 res!694059) b!1554556))

(declare-fun m!1827094 () Bool)

(assert (=> d!461204 m!1827094))

(declare-fun m!1827096 () Bool)

(assert (=> d!461204 m!1827096))

(declare-fun m!1827098 () Bool)

(assert (=> b!1554555 m!1827098))

(declare-fun m!1827100 () Bool)

(assert (=> b!1554555 m!1827100))

(assert (=> b!1554555 m!1827098))

(assert (=> b!1554555 m!1827100))

(declare-fun m!1827102 () Bool)

(assert (=> b!1554555 m!1827102))

(assert (=> b!1554242 d!461204))

(declare-fun b!1554566 () Bool)

(declare-fun e!997323 () List!16871)

(assert (=> b!1554566 (= e!997323 (Cons!16803 (h!22204 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) (++!4413 (t!141314 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) (_2!9466 (get!4845 lt!538217)))))))

(declare-fun b!1554565 () Bool)

(assert (=> b!1554565 (= e!997323 (_2!9466 (get!4845 lt!538217)))))

(declare-fun b!1554568 () Bool)

(declare-fun e!997324 () Bool)

(declare-fun lt!538364 () List!16871)

(assert (=> b!1554568 (= e!997324 (or (not (= (_2!9466 (get!4845 lt!538217)) Nil!16803)) (= lt!538364 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))))))))

(declare-fun b!1554567 () Bool)

(declare-fun res!694065 () Bool)

(assert (=> b!1554567 (=> (not res!694065) (not e!997324))))

(assert (=> b!1554567 (= res!694065 (= (size!13604 lt!538364) (+ (size!13604 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) (size!13604 (_2!9466 (get!4845 lt!538217))))))))

(declare-fun d!461206 () Bool)

(assert (=> d!461206 e!997324))

(declare-fun res!694064 () Bool)

(assert (=> d!461206 (=> (not res!694064) (not e!997324))))

(declare-fun content!2342 (List!16871) (InoxSet C!8724))

(assert (=> d!461206 (= res!694064 (= (content!2342 lt!538364) ((_ map or) (content!2342 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) (content!2342 (_2!9466 (get!4845 lt!538217))))))))

(assert (=> d!461206 (= lt!538364 e!997323)))

(declare-fun c!252696 () Bool)

(assert (=> d!461206 (= c!252696 ((_ is Nil!16803) (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))))))

(assert (=> d!461206 (= (++!4413 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))) (_2!9466 (get!4845 lt!538217))) lt!538364)))

(assert (= (and d!461206 c!252696) b!1554565))

(assert (= (and d!461206 (not c!252696)) b!1554566))

(assert (= (and d!461206 res!694064) b!1554567))

(assert (= (and b!1554567 res!694065) b!1554568))

(declare-fun m!1827104 () Bool)

(assert (=> b!1554566 m!1827104))

(declare-fun m!1827106 () Bool)

(assert (=> b!1554567 m!1827106))

(assert (=> b!1554567 m!1826705))

(declare-fun m!1827108 () Bool)

(assert (=> b!1554567 m!1827108))

(assert (=> b!1554567 m!1826709))

(declare-fun m!1827110 () Bool)

(assert (=> d!461206 m!1827110))

(assert (=> d!461206 m!1826705))

(declare-fun m!1827112 () Bool)

(assert (=> d!461206 m!1827112))

(declare-fun m!1827114 () Bool)

(assert (=> d!461206 m!1827114))

(assert (=> b!1554197 d!461206))

(declare-fun d!461208 () Bool)

(assert (=> d!461208 (= (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))) (list!6490 (c!252615 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))))))

(declare-fun bs!388204 () Bool)

(assert (= bs!388204 d!461208))

(declare-fun m!1827116 () Bool)

(assert (=> bs!388204 m!1827116))

(assert (=> b!1554197 d!461208))

(declare-fun d!461210 () Bool)

(declare-fun lt!538367 () BalanceConc!11068)

(assert (=> d!461210 (= (list!6489 lt!538367) (originalCharacters!3766 (_1!9466 (get!4845 lt!538217))))))

(assert (=> d!461210 (= lt!538367 (dynLambda!7446 (toChars!4173 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217))))) (value!93571 (_1!9466 (get!4845 lt!538217)))))))

(assert (=> d!461210 (= (charsOf!1645 (_1!9466 (get!4845 lt!538217))) lt!538367)))

(declare-fun b_lambda!48801 () Bool)

(assert (=> (not b_lambda!48801) (not d!461210)))

(declare-fun t!141332 () Bool)

(declare-fun tb!87307 () Bool)

(assert (=> (and b!1554089 (= (toChars!4173 (transformation!2945 rule!240)) (toChars!4173 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217)))))) t!141332) tb!87307))

(declare-fun b!1554569 () Bool)

(declare-fun e!997325 () Bool)

(declare-fun tp!455358 () Bool)

(assert (=> b!1554569 (= e!997325 (and (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217))))) (value!93571 (_1!9466 (get!4845 lt!538217)))))) tp!455358))))

(declare-fun result!105394 () Bool)

(assert (=> tb!87307 (= result!105394 (and (inv!22076 (dynLambda!7446 (toChars!4173 (transformation!2945 (rule!4727 (_1!9466 (get!4845 lt!538217))))) (value!93571 (_1!9466 (get!4845 lt!538217))))) e!997325))))

(assert (= tb!87307 b!1554569))

(declare-fun m!1827118 () Bool)

(assert (=> b!1554569 m!1827118))

(declare-fun m!1827120 () Bool)

(assert (=> tb!87307 m!1827120))

(assert (=> d!461210 t!141332))

(declare-fun b_and!108465 () Bool)

(assert (= b_and!108459 (and (=> t!141332 result!105394) b_and!108465)))

(declare-fun m!1827122 () Bool)

(assert (=> d!461210 m!1827122))

(declare-fun m!1827124 () Bool)

(assert (=> d!461210 m!1827124))

(assert (=> b!1554197 d!461210))

(assert (=> b!1554197 d!461160))

(declare-fun d!461212 () Bool)

(declare-fun lostCauseFct!150 (Regex!4273) Bool)

(assert (=> d!461212 (= (lostCause!387 (regex!2945 rule!240)) (lostCauseFct!150 (regex!2945 rule!240)))))

(declare-fun bs!388205 () Bool)

(assert (= bs!388205 d!461212))

(declare-fun m!1827126 () Bool)

(assert (=> bs!388205 m!1827126))

(assert (=> d!461134 d!461212))

(declare-fun b!1554571 () Bool)

(declare-fun e!997326 () List!16871)

(assert (=> b!1554571 (= e!997326 (Cons!16803 (h!22204 (_1!9463 lt!538307)) (++!4413 (t!141314 (_1!9463 lt!538307)) (_2!9463 lt!538307))))))

(declare-fun b!1554570 () Bool)

(assert (=> b!1554570 (= e!997326 (_2!9463 lt!538307))))

(declare-fun b!1554573 () Bool)

(declare-fun e!997327 () Bool)

(declare-fun lt!538368 () List!16871)

(assert (=> b!1554573 (= e!997327 (or (not (= (_2!9463 lt!538307) Nil!16803)) (= lt!538368 (_1!9463 lt!538307))))))

(declare-fun b!1554572 () Bool)

(declare-fun res!694067 () Bool)

(assert (=> b!1554572 (=> (not res!694067) (not e!997327))))

(assert (=> b!1554572 (= res!694067 (= (size!13604 lt!538368) (+ (size!13604 (_1!9463 lt!538307)) (size!13604 (_2!9463 lt!538307)))))))

(declare-fun d!461214 () Bool)

(assert (=> d!461214 e!997327))

(declare-fun res!694066 () Bool)

(assert (=> d!461214 (=> (not res!694066) (not e!997327))))

(assert (=> d!461214 (= res!694066 (= (content!2342 lt!538368) ((_ map or) (content!2342 (_1!9463 lt!538307)) (content!2342 (_2!9463 lt!538307)))))))

(assert (=> d!461214 (= lt!538368 e!997326)))

(declare-fun c!252697 () Bool)

(assert (=> d!461214 (= c!252697 ((_ is Nil!16803) (_1!9463 lt!538307)))))

(assert (=> d!461214 (= (++!4413 (_1!9463 lt!538307) (_2!9463 lt!538307)) lt!538368)))

(assert (= (and d!461214 c!252697) b!1554570))

(assert (= (and d!461214 (not c!252697)) b!1554571))

(assert (= (and d!461214 res!694066) b!1554572))

(assert (= (and b!1554572 res!694067) b!1554573))

(declare-fun m!1827128 () Bool)

(assert (=> b!1554571 m!1827128))

(declare-fun m!1827130 () Bool)

(assert (=> b!1554572 m!1827130))

(assert (=> b!1554572 m!1826833))

(declare-fun m!1827132 () Bool)

(assert (=> b!1554572 m!1827132))

(declare-fun m!1827134 () Bool)

(assert (=> d!461214 m!1827134))

(declare-fun m!1827136 () Bool)

(assert (=> d!461214 m!1827136))

(declare-fun m!1827138 () Bool)

(assert (=> d!461214 m!1827138))

(assert (=> d!461134 d!461214))

(declare-fun d!461216 () Bool)

(assert (=> d!461216 (isPrefix!1259 Nil!16803 (++!4413 Nil!16803 lt!538190))))

(declare-fun lt!538371 () Unit!26051)

(declare-fun choose!9274 (List!16871 List!16871) Unit!26051)

(assert (=> d!461216 (= lt!538371 (choose!9274 Nil!16803 lt!538190))))

(assert (=> d!461216 (= (lemmaConcatTwoListThenFirstIsPrefix!784 Nil!16803 lt!538190) lt!538371)))

(declare-fun bs!388206 () Bool)

(assert (= bs!388206 d!461216))

(assert (=> bs!388206 m!1826791))

(assert (=> bs!388206 m!1826791))

(assert (=> bs!388206 m!1826793))

(declare-fun m!1827140 () Bool)

(assert (=> bs!388206 m!1827140))

(assert (=> d!461134 d!461216))

(declare-fun d!461218 () Bool)

(declare-fun lt!538374 () List!16871)

(assert (=> d!461218 (= (++!4413 Nil!16803 lt!538374) lt!538190)))

(declare-fun e!997330 () List!16871)

(assert (=> d!461218 (= lt!538374 e!997330)))

(declare-fun c!252700 () Bool)

(assert (=> d!461218 (= c!252700 ((_ is Cons!16803) Nil!16803))))

(assert (=> d!461218 (>= (size!13604 lt!538190) (size!13604 Nil!16803))))

(assert (=> d!461218 (= (getSuffix!669 lt!538190 Nil!16803) lt!538374)))

(declare-fun b!1554578 () Bool)

(assert (=> b!1554578 (= e!997330 (getSuffix!669 (tail!2207 lt!538190) (t!141314 Nil!16803)))))

(declare-fun b!1554579 () Bool)

(assert (=> b!1554579 (= e!997330 lt!538190)))

(assert (= (and d!461218 c!252700) b!1554578))

(assert (= (and d!461218 (not c!252700)) b!1554579))

(declare-fun m!1827142 () Bool)

(assert (=> d!461218 m!1827142))

(assert (=> d!461218 m!1826563))

(assert (=> d!461218 m!1826561))

(assert (=> b!1554578 m!1826823))

(assert (=> b!1554578 m!1826823))

(declare-fun m!1827144 () Bool)

(assert (=> b!1554578 m!1827144))

(assert (=> d!461134 d!461218))

(declare-fun b!1554598 () Bool)

(declare-fun e!997346 () Bool)

(declare-fun call!102004 () Bool)

(assert (=> b!1554598 (= e!997346 call!102004)))

(declare-fun b!1554599 () Bool)

(declare-fun e!997345 () Bool)

(declare-fun call!102002 () Bool)

(assert (=> b!1554599 (= e!997345 call!102002)))

(declare-fun c!252706 () Bool)

(declare-fun c!252705 () Bool)

(declare-fun bm!101997 () Bool)

(assert (=> bm!101997 (= call!102004 (validRegex!1710 (ite c!252705 (reg!4602 (regex!2945 rule!240)) (ite c!252706 (regTwo!9059 (regex!2945 rule!240)) (regTwo!9058 (regex!2945 rule!240))))))))

(declare-fun b!1554600 () Bool)

(declare-fun res!694082 () Bool)

(declare-fun e!997351 () Bool)

(assert (=> b!1554600 (=> res!694082 e!997351)))

(assert (=> b!1554600 (= res!694082 (not ((_ is Concat!7309) (regex!2945 rule!240))))))

(declare-fun e!997348 () Bool)

(assert (=> b!1554600 (= e!997348 e!997351)))

(declare-fun bm!101998 () Bool)

(declare-fun call!102003 () Bool)

(assert (=> bm!101998 (= call!102003 (validRegex!1710 (ite c!252706 (regOne!9059 (regex!2945 rule!240)) (regOne!9058 (regex!2945 rule!240)))))))

(declare-fun bm!101999 () Bool)

(assert (=> bm!101999 (= call!102002 call!102004)))

(declare-fun b!1554601 () Bool)

(declare-fun e!997349 () Bool)

(declare-fun e!997347 () Bool)

(assert (=> b!1554601 (= e!997349 e!997347)))

(assert (=> b!1554601 (= c!252705 ((_ is Star!4273) (regex!2945 rule!240)))))

(declare-fun b!1554602 () Bool)

(assert (=> b!1554602 (= e!997347 e!997348)))

(assert (=> b!1554602 (= c!252706 ((_ is Union!4273) (regex!2945 rule!240)))))

(declare-fun b!1554603 () Bool)

(assert (=> b!1554603 (= e!997351 e!997345)))

(declare-fun res!694079 () Bool)

(assert (=> b!1554603 (=> (not res!694079) (not e!997345))))

(assert (=> b!1554603 (= res!694079 call!102003)))

(declare-fun d!461220 () Bool)

(declare-fun res!694080 () Bool)

(assert (=> d!461220 (=> res!694080 e!997349)))

(assert (=> d!461220 (= res!694080 ((_ is ElementMatch!4273) (regex!2945 rule!240)))))

(assert (=> d!461220 (= (validRegex!1710 (regex!2945 rule!240)) e!997349)))

(declare-fun b!1554604 () Bool)

(declare-fun e!997350 () Bool)

(assert (=> b!1554604 (= e!997350 call!102002)))

(declare-fun b!1554605 () Bool)

(assert (=> b!1554605 (= e!997347 e!997346)))

(declare-fun res!694078 () Bool)

(assert (=> b!1554605 (= res!694078 (not (nullable!1269 (reg!4602 (regex!2945 rule!240)))))))

(assert (=> b!1554605 (=> (not res!694078) (not e!997346))))

(declare-fun b!1554606 () Bool)

(declare-fun res!694081 () Bool)

(assert (=> b!1554606 (=> (not res!694081) (not e!997350))))

(assert (=> b!1554606 (= res!694081 call!102003)))

(assert (=> b!1554606 (= e!997348 e!997350)))

(assert (= (and d!461220 (not res!694080)) b!1554601))

(assert (= (and b!1554601 c!252705) b!1554605))

(assert (= (and b!1554601 (not c!252705)) b!1554602))

(assert (= (and b!1554605 res!694078) b!1554598))

(assert (= (and b!1554602 c!252706) b!1554606))

(assert (= (and b!1554602 (not c!252706)) b!1554600))

(assert (= (and b!1554606 res!694081) b!1554604))

(assert (= (and b!1554600 (not res!694082)) b!1554603))

(assert (= (and b!1554603 res!694079) b!1554599))

(assert (= (or b!1554604 b!1554599) bm!101999))

(assert (= (or b!1554606 b!1554603) bm!101998))

(assert (= (or b!1554598 bm!101999) bm!101997))

(declare-fun m!1827146 () Bool)

(assert (=> bm!101997 m!1827146))

(declare-fun m!1827148 () Bool)

(assert (=> bm!101998 m!1827148))

(declare-fun m!1827150 () Bool)

(assert (=> b!1554605 m!1827150))

(assert (=> d!461134 d!461220))

(declare-fun b!1554618 () Bool)

(declare-fun e!997358 () Bool)

(assert (=> b!1554618 (= e!997358 (>= (size!13604 (++!4413 Nil!16803 lt!538190)) (size!13604 Nil!16803)))))

(declare-fun d!461222 () Bool)

(assert (=> d!461222 e!997358))

(declare-fun res!694092 () Bool)

(assert (=> d!461222 (=> res!694092 e!997358)))

(declare-fun lt!538377 () Bool)

(assert (=> d!461222 (= res!694092 (not lt!538377))))

(declare-fun e!997360 () Bool)

(assert (=> d!461222 (= lt!538377 e!997360)))

(declare-fun res!694094 () Bool)

(assert (=> d!461222 (=> res!694094 e!997360)))

(assert (=> d!461222 (= res!694094 ((_ is Nil!16803) Nil!16803))))

(assert (=> d!461222 (= (isPrefix!1259 Nil!16803 (++!4413 Nil!16803 lt!538190)) lt!538377)))

(declare-fun b!1554617 () Bool)

(declare-fun e!997359 () Bool)

(assert (=> b!1554617 (= e!997359 (isPrefix!1259 (tail!2207 Nil!16803) (tail!2207 (++!4413 Nil!16803 lt!538190))))))

(declare-fun b!1554615 () Bool)

(assert (=> b!1554615 (= e!997360 e!997359)))

(declare-fun res!694091 () Bool)

(assert (=> b!1554615 (=> (not res!694091) (not e!997359))))

(assert (=> b!1554615 (= res!694091 (not ((_ is Nil!16803) (++!4413 Nil!16803 lt!538190))))))

(declare-fun b!1554616 () Bool)

(declare-fun res!694093 () Bool)

(assert (=> b!1554616 (=> (not res!694093) (not e!997359))))

(assert (=> b!1554616 (= res!694093 (= (head!3112 Nil!16803) (head!3112 (++!4413 Nil!16803 lt!538190))))))

(assert (= (and d!461222 (not res!694094)) b!1554615))

(assert (= (and b!1554615 res!694091) b!1554616))

(assert (= (and b!1554616 res!694093) b!1554617))

(assert (= (and d!461222 (not res!694092)) b!1554618))

(assert (=> b!1554618 m!1826791))

(declare-fun m!1827152 () Bool)

(assert (=> b!1554618 m!1827152))

(assert (=> b!1554618 m!1826561))

(declare-fun m!1827154 () Bool)

(assert (=> b!1554617 m!1827154))

(assert (=> b!1554617 m!1826791))

(declare-fun m!1827156 () Bool)

(assert (=> b!1554617 m!1827156))

(assert (=> b!1554617 m!1827154))

(assert (=> b!1554617 m!1827156))

(declare-fun m!1827158 () Bool)

(assert (=> b!1554617 m!1827158))

(declare-fun m!1827160 () Bool)

(assert (=> b!1554616 m!1827160))

(assert (=> b!1554616 m!1826791))

(declare-fun m!1827162 () Bool)

(assert (=> b!1554616 m!1827162))

(assert (=> d!461134 d!461222))

(declare-fun d!461224 () Bool)

(assert (=> d!461224 (= lt!538190 lt!538320)))

(declare-fun lt!538380 () Unit!26051)

(declare-fun choose!9275 (List!16871 List!16871 List!16871 List!16871 List!16871) Unit!26051)

(assert (=> d!461224 (= lt!538380 (choose!9275 Nil!16803 lt!538190 Nil!16803 lt!538320 lt!538190))))

(assert (=> d!461224 (isPrefix!1259 Nil!16803 lt!538190)))

(assert (=> d!461224 (= (lemmaSamePrefixThenSameSuffix!621 Nil!16803 lt!538190 Nil!16803 lt!538320 lt!538190) lt!538380)))

(declare-fun bs!388207 () Bool)

(assert (= bs!388207 d!461224))

(declare-fun m!1827164 () Bool)

(assert (=> bs!388207 m!1827164))

(declare-fun m!1827166 () Bool)

(assert (=> bs!388207 m!1827166))

(assert (=> d!461134 d!461224))

(declare-fun b!1554620 () Bool)

(declare-fun e!997361 () List!16871)

(assert (=> b!1554620 (= e!997361 (Cons!16803 (h!22204 Nil!16803) (++!4413 (t!141314 Nil!16803) lt!538190)))))

(declare-fun b!1554619 () Bool)

(assert (=> b!1554619 (= e!997361 lt!538190)))

(declare-fun b!1554622 () Bool)

(declare-fun e!997362 () Bool)

(declare-fun lt!538381 () List!16871)

(assert (=> b!1554622 (= e!997362 (or (not (= lt!538190 Nil!16803)) (= lt!538381 Nil!16803)))))

(declare-fun b!1554621 () Bool)

(declare-fun res!694096 () Bool)

(assert (=> b!1554621 (=> (not res!694096) (not e!997362))))

(assert (=> b!1554621 (= res!694096 (= (size!13604 lt!538381) (+ (size!13604 Nil!16803) (size!13604 lt!538190))))))

(declare-fun d!461226 () Bool)

(assert (=> d!461226 e!997362))

(declare-fun res!694095 () Bool)

(assert (=> d!461226 (=> (not res!694095) (not e!997362))))

(assert (=> d!461226 (= res!694095 (= (content!2342 lt!538381) ((_ map or) (content!2342 Nil!16803) (content!2342 lt!538190))))))

(assert (=> d!461226 (= lt!538381 e!997361)))

(declare-fun c!252707 () Bool)

(assert (=> d!461226 (= c!252707 ((_ is Nil!16803) Nil!16803))))

(assert (=> d!461226 (= (++!4413 Nil!16803 lt!538190) lt!538381)))

(assert (= (and d!461226 c!252707) b!1554619))

(assert (= (and d!461226 (not c!252707)) b!1554620))

(assert (= (and d!461226 res!694095) b!1554621))

(assert (= (and b!1554621 res!694096) b!1554622))

(declare-fun m!1827168 () Bool)

(assert (=> b!1554620 m!1827168))

(declare-fun m!1827170 () Bool)

(assert (=> b!1554621 m!1827170))

(assert (=> b!1554621 m!1826561))

(assert (=> b!1554621 m!1826563))

(declare-fun m!1827172 () Bool)

(assert (=> d!461226 m!1827172))

(declare-fun m!1827174 () Bool)

(assert (=> d!461226 m!1827174))

(declare-fun m!1827176 () Bool)

(assert (=> d!461226 m!1827176))

(assert (=> d!461134 d!461226))

(declare-fun d!461228 () Bool)

(assert (=> d!461228 (= (list!6489 (_2!9464 (_1!9465 lt!538228))) (list!6490 (c!252615 (_2!9464 (_1!9465 lt!538228)))))))

(declare-fun bs!388208 () Bool)

(assert (= bs!388208 d!461228))

(declare-fun m!1827178 () Bool)

(assert (=> bs!388208 m!1827178))

(assert (=> d!461084 d!461228))

(declare-fun d!461230 () Bool)

(declare-fun lt!538403 () tuple2!16256)

(assert (=> d!461230 (= (++!4413 (_1!9463 lt!538403) (_2!9463 lt!538403)) (list!6489 input!1676))))

(declare-fun sizeTr!51 (List!16871 Int) Int)

(assert (=> d!461230 (= lt!538403 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 0 (list!6489 input!1676) (list!6489 input!1676) (sizeTr!51 (list!6489 input!1676) 0)))))

(declare-fun lt!538401 () Unit!26051)

(declare-fun lt!538398 () Unit!26051)

(assert (=> d!461230 (= lt!538401 lt!538398)))

(declare-fun lt!538405 () List!16871)

(declare-fun lt!538400 () Int)

(assert (=> d!461230 (= (sizeTr!51 lt!538405 lt!538400) (+ (size!13604 lt!538405) lt!538400))))

(declare-fun lemmaSizeTrEqualsSize!51 (List!16871 Int) Unit!26051)

(assert (=> d!461230 (= lt!538398 (lemmaSizeTrEqualsSize!51 lt!538405 lt!538400))))

(assert (=> d!461230 (= lt!538400 0)))

(assert (=> d!461230 (= lt!538405 Nil!16803)))

(declare-fun lt!538404 () Unit!26051)

(declare-fun lt!538402 () Unit!26051)

(assert (=> d!461230 (= lt!538404 lt!538402)))

(declare-fun lt!538399 () Int)

(assert (=> d!461230 (= (sizeTr!51 (list!6489 input!1676) lt!538399) (+ (size!13604 (list!6489 input!1676)) lt!538399))))

(assert (=> d!461230 (= lt!538402 (lemmaSizeTrEqualsSize!51 (list!6489 input!1676) lt!538399))))

(assert (=> d!461230 (= lt!538399 0)))

(assert (=> d!461230 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461230 (= (findLongestMatch!260 (regex!2945 rule!240) (list!6489 input!1676)) lt!538403)))

(declare-fun bs!388209 () Bool)

(assert (= bs!388209 d!461230))

(declare-fun m!1827180 () Bool)

(assert (=> bs!388209 m!1827180))

(assert (=> bs!388209 m!1826647))

(assert (=> bs!388209 m!1826647))

(declare-fun m!1827182 () Bool)

(assert (=> bs!388209 m!1827182))

(declare-fun m!1827184 () Bool)

(assert (=> bs!388209 m!1827184))

(assert (=> bs!388209 m!1826647))

(declare-fun m!1827186 () Bool)

(assert (=> bs!388209 m!1827186))

(assert (=> bs!388209 m!1826659))

(assert (=> bs!388209 m!1826647))

(declare-fun m!1827188 () Bool)

(assert (=> bs!388209 m!1827188))

(assert (=> bs!388209 m!1826647))

(declare-fun m!1827190 () Bool)

(assert (=> bs!388209 m!1827190))

(declare-fun m!1827192 () Bool)

(assert (=> bs!388209 m!1827192))

(assert (=> bs!388209 m!1826647))

(assert (=> bs!388209 m!1827182))

(declare-fun m!1827194 () Bool)

(assert (=> bs!388209 m!1827194))

(declare-fun m!1827196 () Bool)

(assert (=> bs!388209 m!1827196))

(assert (=> d!461084 d!461230))

(declare-fun d!461232 () Bool)

(assert (=> d!461232 (= (list!6489 (_1!9464 (_1!9465 lt!538228))) (list!6490 (c!252615 (_1!9464 (_1!9465 lt!538228)))))))

(declare-fun bs!388210 () Bool)

(assert (= bs!388210 d!461232))

(declare-fun m!1827198 () Bool)

(assert (=> bs!388210 m!1827198))

(assert (=> d!461084 d!461232))

(declare-fun b!1554693 () Bool)

(declare-fun b_free!41323 () Bool)

(declare-fun b_next!42027 () Bool)

(assert (=> b!1554693 (= b_free!41323 (not b_next!42027))))

(declare-fun tp!455408 () Bool)

(declare-fun b_and!108467 () Bool)

(assert (=> b!1554693 (= tp!455408 b_and!108467)))

(declare-fun b!1554687 () Bool)

(declare-fun b_free!41325 () Bool)

(declare-fun b_next!42029 () Bool)

(assert (=> b!1554687 (= b_free!41325 (not b_next!42029))))

(declare-fun tp!455424 () Bool)

(declare-fun b_and!108469 () Bool)

(assert (=> b!1554687 (= tp!455424 b_and!108469)))

(declare-fun b!1554690 () Bool)

(declare-fun b_free!41327 () Bool)

(declare-fun b_next!42031 () Bool)

(assert (=> b!1554690 (= b_free!41327 (not b_next!42031))))

(declare-fun tp!455409 () Bool)

(declare-fun b_and!108471 () Bool)

(assert (=> b!1554690 (= tp!455409 b_and!108471)))

(declare-fun b!1554682 () Bool)

(declare-fun b_free!41329 () Bool)

(declare-fun b_next!42033 () Bool)

(assert (=> b!1554682 (= b_free!41329 (not b_next!42033))))

(declare-fun tp!455419 () Bool)

(declare-fun b_and!108473 () Bool)

(assert (=> b!1554682 (= tp!455419 b_and!108473)))

(declare-fun b!1554683 () Bool)

(declare-fun b_free!41331 () Bool)

(declare-fun b_next!42035 () Bool)

(assert (=> b!1554683 (= b_free!41331 (not b_next!42035))))

(declare-fun tp!455421 () Bool)

(declare-fun b_and!108475 () Bool)

(assert (=> b!1554683 (= tp!455421 b_and!108475)))

(declare-fun b!1554684 () Bool)

(declare-fun b_free!41333 () Bool)

(declare-fun b_next!42037 () Bool)

(assert (=> b!1554684 (= b_free!41333 (not b_next!42037))))

(declare-fun tp!455414 () Bool)

(declare-fun b_and!108477 () Bool)

(assert (=> b!1554684 (= tp!455414 b_and!108477)))

(declare-fun mapNonEmpty!8340 () Bool)

(declare-fun mapRes!8341 () Bool)

(declare-fun tp!455415 () Bool)

(declare-fun tp!455423 () Bool)

(assert (=> mapNonEmpty!8340 (= mapRes!8341 (and tp!455415 tp!455423))))

(declare-fun mapKey!8341 () (_ BitVec 32))

(declare-fun res!694109 () tuple4!888)

(declare-fun mapValue!8342 () List!16875)

(declare-fun mapRest!8340 () (Array (_ BitVec 32) List!16875))

(assert (=> mapNonEmpty!8340 (= (arr!2742 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 (_3!1335 res!694109)))))))) (store mapRest!8340 mapKey!8341 mapValue!8342))))

(declare-fun b!1554679 () Bool)

(declare-fun e!997443 () Bool)

(declare-fun tp!455416 () Bool)

(assert (=> b!1554679 (= e!997443 (and tp!455416 mapRes!8341))))

(declare-fun condMapEmpty!8342 () Bool)

(declare-fun mapDefault!8340 () List!16875)

(assert (=> b!1554679 (= condMapEmpty!8342 (= (arr!2742 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 (_3!1335 res!694109)))))))) ((as const (Array (_ BitVec 32) List!16875)) mapDefault!8340)))))

(declare-fun mapIsEmpty!8340 () Bool)

(declare-fun mapRes!8342 () Bool)

(assert (=> mapIsEmpty!8340 mapRes!8342))

(declare-fun mapIsEmpty!8341 () Bool)

(assert (=> mapIsEmpty!8341 mapRes!8341))

(declare-fun b!1554680 () Bool)

(declare-fun e!997423 () Bool)

(assert (=> b!1554680 (= e!997423 (= (totalInput!2456 (_4!444 res!694109)) totalInput!568))))

(declare-fun b!1554681 () Bool)

(declare-fun e!997444 () Bool)

(declare-fun tp!455429 () Bool)

(assert (=> b!1554681 (= e!997444 (and (inv!22074 (c!252615 (totalInput!2456 (_4!444 res!694109)))) tp!455429))))

(declare-fun e!997441 () Bool)

(declare-fun e!997431 () Bool)

(assert (=> b!1554682 (= e!997441 (and e!997431 tp!455419))))

(declare-fun e!997446 () Bool)

(declare-fun tp!455427 () Bool)

(declare-fun e!997429 () Bool)

(declare-fun tp!455420 () Bool)

(assert (=> b!1554684 (= e!997446 (and tp!455414 tp!455420 tp!455427 (array_inv!1970 (_keys!2085 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 (_2!9465 res!694109)))))))) (array_inv!1971 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 (_2!9465 res!694109)))))))) e!997429))))

(declare-fun b!1554685 () Bool)

(declare-fun res!694108 () Bool)

(assert (=> b!1554685 (=> (not res!694108) (not e!997423))))

(assert (=> b!1554685 (= res!694108 (valid!1440 (_4!444 res!694109)))))

(declare-fun b!1554686 () Bool)

(declare-fun e!997442 () Bool)

(declare-fun e!997428 () Bool)

(assert (=> b!1554686 (= e!997442 e!997428)))

(declare-fun tp!455407 () Bool)

(declare-fun e!997439 () Bool)

(declare-fun tp!455410 () Bool)

(assert (=> b!1554687 (= e!997439 (and tp!455424 tp!455407 tp!455410 (array_inv!1970 (_keys!2087 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 (_3!1335 res!694109)))))))) (array_inv!1973 (_values!2072 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 (_3!1335 res!694109)))))))) e!997443))))

(declare-fun mapNonEmpty!8341 () Bool)

(declare-fun mapRes!8340 () Bool)

(declare-fun tp!455413 () Bool)

(declare-fun tp!455428 () Bool)

(assert (=> mapNonEmpty!8341 (= mapRes!8340 (and tp!455413 tp!455428))))

(declare-fun mapKey!8340 () (_ BitVec 32))

(declare-fun mapRest!8342 () (Array (_ BitVec 32) List!16873))

(declare-fun mapValue!8340 () List!16873)

(assert (=> mapNonEmpty!8341 (= (arr!2739 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 (_2!9465 res!694109)))))))) (store mapRest!8342 mapKey!8340 mapValue!8340))))

(declare-fun b!1554688 () Bool)

(declare-fun res!694107 () Bool)

(assert (=> b!1554688 (=> (not res!694107) (not e!997423))))

(assert (=> b!1554688 (= res!694107 (valid!1439 (_2!9465 res!694109)))))

(declare-fun b!1554689 () Bool)

(declare-fun e!997430 () Bool)

(declare-fun e!997427 () Bool)

(assert (=> b!1554689 (= e!997430 e!997427)))

(declare-fun mapNonEmpty!8342 () Bool)

(declare-fun tp!455422 () Bool)

(declare-fun tp!455417 () Bool)

(assert (=> mapNonEmpty!8342 (= mapRes!8342 (and tp!455422 tp!455417))))

(declare-fun mapRest!8341 () (Array (_ BitVec 32) List!16874))

(declare-fun mapValue!8341 () List!16874)

(declare-fun mapKey!8342 () (_ BitVec 32))

(assert (=> mapNonEmpty!8342 (= (arr!2741 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 (_4!444 res!694109)))))))) (store mapRest!8341 mapKey!8342 mapValue!8341))))

(declare-fun e!997425 () Bool)

(declare-fun e!997421 () Bool)

(assert (=> b!1554690 (= e!997425 (and e!997421 tp!455409))))

(declare-fun b!1554691 () Bool)

(declare-fun e!997445 () Bool)

(declare-fun lt!538414 () MutLongMap!1792)

(assert (=> b!1554691 (= e!997421 (and e!997445 ((_ is LongMap!1792) lt!538414)))))

(assert (=> b!1554691 (= lt!538414 (v!23647 (underlying!3794 (cache!2117 (_4!444 res!694109)))))))

(declare-fun b!1554692 () Bool)

(declare-fun res!694111 () Bool)

(assert (=> b!1554692 (=> (not res!694111) (not e!997423))))

(assert (=> b!1554692 (= res!694111 (valid!1441 (_3!1335 res!694109)))))

(declare-fun e!997440 () Bool)

(declare-fun tp!455418 () Bool)

(declare-fun e!997422 () Bool)

(declare-fun tp!455426 () Bool)

(assert (=> b!1554693 (= e!997422 (and tp!455408 tp!455418 tp!455426 (array_inv!1970 (_keys!2086 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 (_4!444 res!694109)))))))) (array_inv!1972 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 (_4!444 res!694109)))))))) e!997440))))

(declare-fun b!1554694 () Bool)

(declare-fun e!997432 () Bool)

(declare-fun lt!538412 () MutLongMap!1793)

(assert (=> b!1554694 (= e!997432 (and e!997430 ((_ is LongMap!1793) lt!538412)))))

(assert (=> b!1554694 (= lt!538412 (v!23649 (underlying!3796 (cache!2118 (_3!1335 res!694109)))))))

(declare-fun b!1554695 () Bool)

(assert (=> b!1554695 (= e!997428 e!997446)))

(declare-fun b!1554696 () Bool)

(declare-fun e!997424 () Bool)

(declare-fun tp!455411 () Bool)

(assert (=> b!1554696 (= e!997424 (and (inv!22074 (c!252615 (_1!9464 (_1!9465 res!694109)))) tp!455411))))

(declare-fun b!1554697 () Bool)

(declare-fun e!997437 () Bool)

(assert (=> b!1554697 (= e!997445 e!997437)))

(declare-fun b!1554698 () Bool)

(declare-fun lt!538413 () MutLongMap!1791)

(assert (=> b!1554698 (= e!997431 (and e!997442 ((_ is LongMap!1791) lt!538413)))))

(assert (=> b!1554698 (= lt!538413 (v!23645 (underlying!3792 (cache!2116 (_2!9465 res!694109)))))))

(declare-fun b!1554699 () Bool)

(declare-fun e!997433 () Bool)

(declare-fun e!997434 () Bool)

(assert (=> b!1554699 (= e!997433 e!997434)))

(declare-fun b!1554700 () Bool)

(declare-fun tp!455430 () Bool)

(assert (=> b!1554700 (= e!997429 (and tp!455430 mapRes!8340))))

(declare-fun condMapEmpty!8340 () Bool)

(declare-fun mapDefault!8341 () List!16873)

(assert (=> b!1554700 (= condMapEmpty!8340 (= (arr!2739 (_values!2070 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 (_2!9465 res!694109)))))))) ((as const (Array (_ BitVec 32) List!16873)) mapDefault!8341)))))

(declare-fun b!1554701 () Bool)

(declare-fun tp!455425 () Bool)

(assert (=> b!1554701 (= e!997440 (and tp!455425 mapRes!8342))))

(declare-fun condMapEmpty!8341 () Bool)

(declare-fun mapDefault!8342 () List!16874)

(assert (=> b!1554701 (= condMapEmpty!8341 (= (arr!2741 (_values!2071 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 (_4!444 res!694109)))))))) ((as const (Array (_ BitVec 32) List!16874)) mapDefault!8342)))))

(declare-fun mapIsEmpty!8342 () Bool)

(assert (=> mapIsEmpty!8342 mapRes!8340))

(declare-fun b!1554702 () Bool)

(declare-fun e!997420 () Bool)

(declare-fun tp!455412 () Bool)

(assert (=> b!1554702 (= e!997420 (and (inv!22074 (c!252615 (_2!9464 (_1!9465 res!694109)))) tp!455412))))

(declare-fun b!1554703 () Bool)

(assert (=> b!1554703 (= e!997427 e!997439)))

(declare-fun e!997436 () Bool)

(declare-fun b!1554704 () Bool)

(assert (=> b!1554704 (= e!997436 (and e!997425 (inv!22076 (totalInput!2456 (_4!444 res!694109))) e!997444))))

(declare-fun b!1554705 () Bool)

(assert (=> b!1554705 (= e!997437 e!997422)))

(declare-fun b!1554706 () Bool)

(declare-fun e!997438 () Bool)

(assert (=> b!1554706 (= e!997438 e!997441)))

(assert (=> b!1554683 (= e!997434 (and e!997432 tp!455421))))

(declare-fun d!461234 () Bool)

(assert (=> d!461234 e!997423))

(declare-fun res!694110 () Bool)

(assert (=> d!461234 (=> (not res!694110) (not e!997423))))

(assert (=> d!461234 (= res!694110 (= (tuple2!16257 (list!6489 (_1!9464 (_1!9465 res!694109))) (list!6489 (_2!9464 (_1!9465 res!694109)))) (findLongestMatch!260 (regex!2945 rule!240) (list!6489 input!1676))))))

(assert (=> d!461234 (and (inv!22076 (_1!9464 (_1!9465 res!694109))) e!997424 (inv!22076 (_2!9464 (_1!9465 res!694109))) e!997420 (inv!22077 (_2!9465 res!694109)) e!997438 (inv!22079 (_3!1335 res!694109)) e!997433 (inv!22078 (_4!444 res!694109)) e!997436)))

(assert (=> d!461234 (= (choose!9271 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) res!694109)))

(assert (= d!461234 b!1554696))

(assert (= d!461234 b!1554702))

(assert (= (and b!1554700 condMapEmpty!8340) mapIsEmpty!8342))

(assert (= (and b!1554700 (not condMapEmpty!8340)) mapNonEmpty!8341))

(assert (= b!1554684 b!1554700))

(assert (= b!1554695 b!1554684))

(assert (= b!1554686 b!1554695))

(assert (= (and b!1554698 ((_ is LongMap!1791) (v!23645 (underlying!3792 (cache!2116 (_2!9465 res!694109)))))) b!1554686))

(assert (= b!1554682 b!1554698))

(assert (= (and b!1554706 ((_ is HashMap!1735) (cache!2116 (_2!9465 res!694109)))) b!1554682))

(assert (= d!461234 b!1554706))

(assert (= (and b!1554679 condMapEmpty!8342) mapIsEmpty!8341))

(assert (= (and b!1554679 (not condMapEmpty!8342)) mapNonEmpty!8340))

(assert (= b!1554687 b!1554679))

(assert (= b!1554703 b!1554687))

(assert (= b!1554689 b!1554703))

(assert (= (and b!1554694 ((_ is LongMap!1793) (v!23649 (underlying!3796 (cache!2118 (_3!1335 res!694109)))))) b!1554689))

(assert (= b!1554683 b!1554694))

(assert (= (and b!1554699 ((_ is HashMap!1737) (cache!2118 (_3!1335 res!694109)))) b!1554683))

(assert (= d!461234 b!1554699))

(assert (= (and b!1554701 condMapEmpty!8341) mapIsEmpty!8340))

(assert (= (and b!1554701 (not condMapEmpty!8341)) mapNonEmpty!8342))

(assert (= b!1554693 b!1554701))

(assert (= b!1554705 b!1554693))

(assert (= b!1554697 b!1554705))

(assert (= (and b!1554691 ((_ is LongMap!1792) (v!23647 (underlying!3794 (cache!2117 (_4!444 res!694109)))))) b!1554697))

(assert (= b!1554690 b!1554691))

(assert (= (and b!1554704 ((_ is HashMap!1736) (cache!2117 (_4!444 res!694109)))) b!1554690))

(assert (= b!1554704 b!1554681))

(assert (= d!461234 b!1554704))

(assert (= (and d!461234 res!694110) b!1554692))

(assert (= (and b!1554692 res!694111) b!1554688))

(assert (= (and b!1554688 res!694107) b!1554685))

(assert (= (and b!1554685 res!694108) b!1554680))

(declare-fun m!1827200 () Bool)

(assert (=> b!1554692 m!1827200))

(declare-fun m!1827202 () Bool)

(assert (=> mapNonEmpty!8342 m!1827202))

(declare-fun m!1827204 () Bool)

(assert (=> b!1554687 m!1827204))

(declare-fun m!1827206 () Bool)

(assert (=> b!1554687 m!1827206))

(declare-fun m!1827208 () Bool)

(assert (=> mapNonEmpty!8341 m!1827208))

(declare-fun m!1827210 () Bool)

(assert (=> b!1554693 m!1827210))

(declare-fun m!1827212 () Bool)

(assert (=> b!1554693 m!1827212))

(declare-fun m!1827214 () Bool)

(assert (=> b!1554704 m!1827214))

(assert (=> d!461234 m!1826647))

(assert (=> d!461234 m!1826749))

(declare-fun m!1827216 () Bool)

(assert (=> d!461234 m!1827216))

(declare-fun m!1827218 () Bool)

(assert (=> d!461234 m!1827218))

(declare-fun m!1827220 () Bool)

(assert (=> d!461234 m!1827220))

(assert (=> d!461234 m!1826647))

(declare-fun m!1827222 () Bool)

(assert (=> d!461234 m!1827222))

(declare-fun m!1827224 () Bool)

(assert (=> d!461234 m!1827224))

(declare-fun m!1827226 () Bool)

(assert (=> d!461234 m!1827226))

(declare-fun m!1827228 () Bool)

(assert (=> d!461234 m!1827228))

(declare-fun m!1827230 () Bool)

(assert (=> b!1554684 m!1827230))

(declare-fun m!1827232 () Bool)

(assert (=> b!1554684 m!1827232))

(declare-fun m!1827234 () Bool)

(assert (=> b!1554681 m!1827234))

(declare-fun m!1827236 () Bool)

(assert (=> b!1554688 m!1827236))

(declare-fun m!1827238 () Bool)

(assert (=> b!1554702 m!1827238))

(declare-fun m!1827240 () Bool)

(assert (=> mapNonEmpty!8340 m!1827240))

(declare-fun m!1827242 () Bool)

(assert (=> b!1554696 m!1827242))

(declare-fun m!1827244 () Bool)

(assert (=> b!1554685 m!1827244))

(assert (=> d!461084 d!461234))

(assert (=> d!461084 d!461114))

(assert (=> d!461084 d!461220))

(assert (=> b!1554292 d!461126))

(declare-fun d!461236 () Bool)

(assert (=> d!461236 (= (head!3112 (getSuffix!669 lt!538190 Nil!16803)) (h!22204 (getSuffix!669 lt!538190 Nil!16803)))))

(assert (=> b!1554292 d!461236))

(declare-fun b!1554708 () Bool)

(declare-fun e!997447 () List!16871)

(assert (=> b!1554708 (= e!997447 (Cons!16803 (h!22204 Nil!16803) (++!4413 (t!141314 Nil!16803) (Cons!16803 (head!3112 lt!538190) Nil!16803))))))

(declare-fun b!1554707 () Bool)

(assert (=> b!1554707 (= e!997447 (Cons!16803 (head!3112 lt!538190) Nil!16803))))

(declare-fun b!1554710 () Bool)

(declare-fun e!997448 () Bool)

(declare-fun lt!538415 () List!16871)

(assert (=> b!1554710 (= e!997448 (or (not (= (Cons!16803 (head!3112 lt!538190) Nil!16803) Nil!16803)) (= lt!538415 Nil!16803)))))

(declare-fun b!1554709 () Bool)

(declare-fun res!694113 () Bool)

(assert (=> b!1554709 (=> (not res!694113) (not e!997448))))

(assert (=> b!1554709 (= res!694113 (= (size!13604 lt!538415) (+ (size!13604 Nil!16803) (size!13604 (Cons!16803 (head!3112 lt!538190) Nil!16803)))))))

(declare-fun d!461238 () Bool)

(assert (=> d!461238 e!997448))

(declare-fun res!694112 () Bool)

(assert (=> d!461238 (=> (not res!694112) (not e!997448))))

(assert (=> d!461238 (= res!694112 (= (content!2342 lt!538415) ((_ map or) (content!2342 Nil!16803) (content!2342 (Cons!16803 (head!3112 lt!538190) Nil!16803)))))))

(assert (=> d!461238 (= lt!538415 e!997447)))

(declare-fun c!252708 () Bool)

(assert (=> d!461238 (= c!252708 ((_ is Nil!16803) Nil!16803))))

(assert (=> d!461238 (= (++!4413 Nil!16803 (Cons!16803 (head!3112 lt!538190) Nil!16803)) lt!538415)))

(assert (= (and d!461238 c!252708) b!1554707))

(assert (= (and d!461238 (not c!252708)) b!1554708))

(assert (= (and d!461238 res!694112) b!1554709))

(assert (= (and b!1554709 res!694113) b!1554710))

(declare-fun m!1827246 () Bool)

(assert (=> b!1554708 m!1827246))

(declare-fun m!1827248 () Bool)

(assert (=> b!1554709 m!1827248))

(assert (=> b!1554709 m!1826561))

(declare-fun m!1827250 () Bool)

(assert (=> b!1554709 m!1827250))

(declare-fun m!1827252 () Bool)

(assert (=> d!461238 m!1827252))

(assert (=> d!461238 m!1827174))

(declare-fun m!1827254 () Bool)

(assert (=> d!461238 m!1827254))

(assert (=> b!1554292 d!461238))

(assert (=> b!1554292 d!461146))

(declare-fun d!461240 () Bool)

(assert (=> d!461240 (= (++!4413 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803)) lt!538309) lt!538190)))

(declare-fun lt!538418 () Unit!26051)

(declare-fun choose!9276 (List!16871 C!8724 List!16871 List!16871) Unit!26051)

(assert (=> d!461240 (= lt!538418 (choose!9276 Nil!16803 lt!538303 lt!538309 lt!538190))))

(assert (=> d!461240 (= (++!4413 Nil!16803 (Cons!16803 lt!538303 lt!538309)) lt!538190)))

(assert (=> d!461240 (= (lemmaMoveElementToOtherListKeepsConcatEq!438 Nil!16803 lt!538303 lt!538309 lt!538190) lt!538418)))

(declare-fun bs!388211 () Bool)

(assert (= bs!388211 d!461240))

(assert (=> bs!388211 m!1826811))

(assert (=> bs!388211 m!1826811))

(assert (=> bs!388211 m!1826813))

(declare-fun m!1827256 () Bool)

(assert (=> bs!388211 m!1827256))

(declare-fun m!1827258 () Bool)

(assert (=> bs!388211 m!1827258))

(assert (=> b!1554292 d!461240))

(declare-fun d!461242 () Bool)

(assert (=> d!461242 (= (tail!2207 lt!538190) (t!141314 lt!538190))))

(assert (=> b!1554292 d!461242))

(declare-fun d!461244 () Bool)

(assert (=> d!461244 (<= (size!13604 Nil!16803) (size!13604 lt!538190))))

(declare-fun lt!538421 () Unit!26051)

(declare-fun choose!9277 (List!16871 List!16871) Unit!26051)

(assert (=> d!461244 (= lt!538421 (choose!9277 Nil!16803 lt!538190))))

(assert (=> d!461244 (isPrefix!1259 Nil!16803 lt!538190)))

(assert (=> d!461244 (= (lemmaIsPrefixThenSmallerEqSize!113 Nil!16803 lt!538190) lt!538421)))

(declare-fun bs!388212 () Bool)

(assert (= bs!388212 d!461244))

(assert (=> bs!388212 m!1826561))

(assert (=> bs!388212 m!1826563))

(declare-fun m!1827260 () Bool)

(assert (=> bs!388212 m!1827260))

(assert (=> bs!388212 m!1827166))

(assert (=> b!1554292 d!461244))

(assert (=> b!1554292 d!461218))

(assert (=> b!1554292 d!461132))

(declare-fun b!1554714 () Bool)

(declare-fun e!997449 () Bool)

(assert (=> b!1554714 (= e!997449 (>= (size!13604 lt!538190) (size!13604 (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)))))))

(declare-fun d!461246 () Bool)

(assert (=> d!461246 e!997449))

(declare-fun res!694115 () Bool)

(assert (=> d!461246 (=> res!694115 e!997449)))

(declare-fun lt!538422 () Bool)

(assert (=> d!461246 (= res!694115 (not lt!538422))))

(declare-fun e!997451 () Bool)

(assert (=> d!461246 (= lt!538422 e!997451)))

(declare-fun res!694117 () Bool)

(assert (=> d!461246 (=> res!694117 e!997451)))

(assert (=> d!461246 (= res!694117 ((_ is Nil!16803) (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803))))))

(assert (=> d!461246 (= (isPrefix!1259 (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)) lt!538190) lt!538422)))

(declare-fun b!1554713 () Bool)

(declare-fun e!997450 () Bool)

(assert (=> b!1554713 (= e!997450 (isPrefix!1259 (tail!2207 (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803))) (tail!2207 lt!538190)))))

(declare-fun b!1554711 () Bool)

(assert (=> b!1554711 (= e!997451 e!997450)))

(declare-fun res!694114 () Bool)

(assert (=> b!1554711 (=> (not res!694114) (not e!997450))))

(assert (=> b!1554711 (= res!694114 (not ((_ is Nil!16803) lt!538190)))))

(declare-fun b!1554712 () Bool)

(declare-fun res!694116 () Bool)

(assert (=> b!1554712 (=> (not res!694116) (not e!997450))))

(assert (=> b!1554712 (= res!694116 (= (head!3112 (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803))) (head!3112 lt!538190)))))

(assert (= (and d!461246 (not res!694117)) b!1554711))

(assert (= (and b!1554711 res!694114) b!1554712))

(assert (= (and b!1554712 res!694116) b!1554713))

(assert (= (and d!461246 (not res!694115)) b!1554714))

(assert (=> b!1554714 m!1826563))

(assert (=> b!1554714 m!1826805))

(declare-fun m!1827262 () Bool)

(assert (=> b!1554714 m!1827262))

(assert (=> b!1554713 m!1826805))

(declare-fun m!1827264 () Bool)

(assert (=> b!1554713 m!1827264))

(assert (=> b!1554713 m!1826823))

(assert (=> b!1554713 m!1827264))

(assert (=> b!1554713 m!1826823))

(declare-fun m!1827266 () Bool)

(assert (=> b!1554713 m!1827266))

(assert (=> b!1554712 m!1826805))

(declare-fun m!1827268 () Bool)

(assert (=> b!1554712 m!1827268))

(assert (=> b!1554712 m!1826817))

(assert (=> b!1554292 d!461246))

(declare-fun b!1554716 () Bool)

(declare-fun e!997452 () List!16871)

(assert (=> b!1554716 (= e!997452 (Cons!16803 (h!22204 Nil!16803) (++!4413 (t!141314 Nil!16803) (Cons!16803 lt!538303 Nil!16803))))))

(declare-fun b!1554715 () Bool)

(assert (=> b!1554715 (= e!997452 (Cons!16803 lt!538303 Nil!16803))))

(declare-fun b!1554718 () Bool)

(declare-fun e!997453 () Bool)

(declare-fun lt!538423 () List!16871)

(assert (=> b!1554718 (= e!997453 (or (not (= (Cons!16803 lt!538303 Nil!16803) Nil!16803)) (= lt!538423 Nil!16803)))))

(declare-fun b!1554717 () Bool)

(declare-fun res!694119 () Bool)

(assert (=> b!1554717 (=> (not res!694119) (not e!997453))))

(assert (=> b!1554717 (= res!694119 (= (size!13604 lt!538423) (+ (size!13604 Nil!16803) (size!13604 (Cons!16803 lt!538303 Nil!16803)))))))

(declare-fun d!461248 () Bool)

(assert (=> d!461248 e!997453))

(declare-fun res!694118 () Bool)

(assert (=> d!461248 (=> (not res!694118) (not e!997453))))

(assert (=> d!461248 (= res!694118 (= (content!2342 lt!538423) ((_ map or) (content!2342 Nil!16803) (content!2342 (Cons!16803 lt!538303 Nil!16803)))))))

(assert (=> d!461248 (= lt!538423 e!997452)))

(declare-fun c!252709 () Bool)

(assert (=> d!461248 (= c!252709 ((_ is Nil!16803) Nil!16803))))

(assert (=> d!461248 (= (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803)) lt!538423)))

(assert (= (and d!461248 c!252709) b!1554715))

(assert (= (and d!461248 (not c!252709)) b!1554716))

(assert (= (and d!461248 res!694118) b!1554717))

(assert (= (and b!1554717 res!694119) b!1554718))

(declare-fun m!1827270 () Bool)

(assert (=> b!1554716 m!1827270))

(declare-fun m!1827272 () Bool)

(assert (=> b!1554717 m!1827272))

(assert (=> b!1554717 m!1826561))

(declare-fun m!1827274 () Bool)

(assert (=> b!1554717 m!1827274))

(declare-fun m!1827276 () Bool)

(assert (=> d!461248 m!1827276))

(assert (=> d!461248 m!1827174))

(declare-fun m!1827278 () Bool)

(assert (=> d!461248 m!1827278))

(assert (=> b!1554292 d!461248))

(declare-fun b!1554720 () Bool)

(declare-fun e!997454 () List!16871)

(assert (=> b!1554720 (= e!997454 (Cons!16803 (h!22204 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803))) (++!4413 (t!141314 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803))) lt!538309)))))

(declare-fun b!1554719 () Bool)

(assert (=> b!1554719 (= e!997454 lt!538309)))

(declare-fun e!997455 () Bool)

(declare-fun lt!538424 () List!16871)

(declare-fun b!1554722 () Bool)

(assert (=> b!1554722 (= e!997455 (or (not (= lt!538309 Nil!16803)) (= lt!538424 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803)))))))

(declare-fun b!1554721 () Bool)

(declare-fun res!694121 () Bool)

(assert (=> b!1554721 (=> (not res!694121) (not e!997455))))

(assert (=> b!1554721 (= res!694121 (= (size!13604 lt!538424) (+ (size!13604 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803))) (size!13604 lt!538309))))))

(declare-fun d!461250 () Bool)

(assert (=> d!461250 e!997455))

(declare-fun res!694120 () Bool)

(assert (=> d!461250 (=> (not res!694120) (not e!997455))))

(assert (=> d!461250 (= res!694120 (= (content!2342 lt!538424) ((_ map or) (content!2342 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803))) (content!2342 lt!538309))))))

(assert (=> d!461250 (= lt!538424 e!997454)))

(declare-fun c!252710 () Bool)

(assert (=> d!461250 (= c!252710 ((_ is Nil!16803) (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803))))))

(assert (=> d!461250 (= (++!4413 (++!4413 Nil!16803 (Cons!16803 lt!538303 Nil!16803)) lt!538309) lt!538424)))

(assert (= (and d!461250 c!252710) b!1554719))

(assert (= (and d!461250 (not c!252710)) b!1554720))

(assert (= (and d!461250 res!694120) b!1554721))

(assert (= (and b!1554721 res!694121) b!1554722))

(declare-fun m!1827280 () Bool)

(assert (=> b!1554720 m!1827280))

(declare-fun m!1827282 () Bool)

(assert (=> b!1554721 m!1827282))

(assert (=> b!1554721 m!1826811))

(declare-fun m!1827284 () Bool)

(assert (=> b!1554721 m!1827284))

(declare-fun m!1827286 () Bool)

(assert (=> b!1554721 m!1827286))

(declare-fun m!1827288 () Bool)

(assert (=> d!461250 m!1827288))

(assert (=> d!461250 m!1826811))

(declare-fun m!1827290 () Bool)

(assert (=> d!461250 m!1827290))

(declare-fun m!1827292 () Bool)

(assert (=> d!461250 m!1827292))

(assert (=> b!1554292 d!461250))

(declare-fun d!461252 () Bool)

(assert (=> d!461252 (isPrefix!1259 (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)) lt!538190)))

(declare-fun lt!538427 () Unit!26051)

(declare-fun choose!9278 (List!16871 List!16871) Unit!26051)

(assert (=> d!461252 (= lt!538427 (choose!9278 Nil!16803 lt!538190))))

(assert (=> d!461252 (isPrefix!1259 Nil!16803 lt!538190)))

(assert (=> d!461252 (= (lemmaAddHeadSuffixToPrefixStillPrefix!112 Nil!16803 lt!538190) lt!538427)))

(declare-fun bs!388213 () Bool)

(assert (= bs!388213 d!461252))

(assert (=> bs!388213 m!1826787))

(assert (=> bs!388213 m!1826819))

(assert (=> bs!388213 m!1826787))

(assert (=> bs!388213 m!1827166))

(assert (=> bs!388213 m!1826805))

(assert (=> bs!388213 m!1826809))

(assert (=> bs!388213 m!1826805))

(declare-fun m!1827294 () Bool)

(assert (=> bs!388213 m!1827294))

(assert (=> b!1554292 d!461252))

(declare-fun b!1554724 () Bool)

(declare-fun e!997456 () List!16871)

(assert (=> b!1554724 (= e!997456 (Cons!16803 (h!22204 Nil!16803) (++!4413 (t!141314 Nil!16803) (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803))))))

(declare-fun b!1554723 () Bool)

(assert (=> b!1554723 (= e!997456 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803))))

(declare-fun b!1554726 () Bool)

(declare-fun e!997457 () Bool)

(declare-fun lt!538428 () List!16871)

(assert (=> b!1554726 (= e!997457 (or (not (= (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803) Nil!16803)) (= lt!538428 Nil!16803)))))

(declare-fun b!1554725 () Bool)

(declare-fun res!694123 () Bool)

(assert (=> b!1554725 (=> (not res!694123) (not e!997457))))

(assert (=> b!1554725 (= res!694123 (= (size!13604 lt!538428) (+ (size!13604 Nil!16803) (size!13604 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)))))))

(declare-fun d!461254 () Bool)

(assert (=> d!461254 e!997457))

(declare-fun res!694122 () Bool)

(assert (=> d!461254 (=> (not res!694122) (not e!997457))))

(assert (=> d!461254 (= res!694122 (= (content!2342 lt!538428) ((_ map or) (content!2342 Nil!16803) (content!2342 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)))))))

(assert (=> d!461254 (= lt!538428 e!997456)))

(declare-fun c!252711 () Bool)

(assert (=> d!461254 (= c!252711 ((_ is Nil!16803) Nil!16803))))

(assert (=> d!461254 (= (++!4413 Nil!16803 (Cons!16803 (head!3112 (getSuffix!669 lt!538190 Nil!16803)) Nil!16803)) lt!538428)))

(assert (= (and d!461254 c!252711) b!1554723))

(assert (= (and d!461254 (not c!252711)) b!1554724))

(assert (= (and d!461254 res!694122) b!1554725))

(assert (= (and b!1554725 res!694123) b!1554726))

(declare-fun m!1827296 () Bool)

(assert (=> b!1554724 m!1827296))

(declare-fun m!1827298 () Bool)

(assert (=> b!1554725 m!1827298))

(assert (=> b!1554725 m!1826561))

(declare-fun m!1827300 () Bool)

(assert (=> b!1554725 m!1827300))

(declare-fun m!1827302 () Bool)

(assert (=> d!461254 m!1827302))

(assert (=> d!461254 m!1827174))

(declare-fun m!1827304 () Bool)

(assert (=> d!461254 m!1827304))

(assert (=> b!1554292 d!461254))

(declare-fun bm!102000 () Bool)

(declare-fun call!102005 () Bool)

(assert (=> bm!102000 (= call!102005 (isEmpty!10106 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(declare-fun b!1554727 () Bool)

(declare-fun e!997458 () Bool)

(assert (=> b!1554727 (= e!997458 (= (head!3112 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))) (c!252616 (regex!2945 rule!240))))))

(declare-fun b!1554728 () Bool)

(declare-fun e!997459 () Bool)

(declare-fun e!997461 () Bool)

(assert (=> b!1554728 (= e!997459 e!997461)))

(declare-fun c!252713 () Bool)

(assert (=> b!1554728 (= c!252713 ((_ is EmptyLang!4273) (regex!2945 rule!240)))))

(declare-fun b!1554729 () Bool)

(declare-fun res!694131 () Bool)

(assert (=> b!1554729 (=> (not res!694131) (not e!997458))))

(assert (=> b!1554729 (= res!694131 (isEmpty!10106 (tail!2207 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190))))))))

(declare-fun b!1554731 () Bool)

(declare-fun e!997464 () Bool)

(assert (=> b!1554731 (= e!997464 (nullable!1269 (regex!2945 rule!240)))))

(declare-fun b!1554732 () Bool)

(declare-fun e!997462 () Bool)

(assert (=> b!1554732 (= e!997462 (not (= (head!3112 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))) (c!252616 (regex!2945 rule!240)))))))

(declare-fun b!1554733 () Bool)

(declare-fun lt!538429 () Bool)

(assert (=> b!1554733 (= e!997459 (= lt!538429 call!102005))))

(declare-fun b!1554734 () Bool)

(declare-fun res!694126 () Bool)

(assert (=> b!1554734 (=> res!694126 e!997462)))

(assert (=> b!1554734 (= res!694126 (not (isEmpty!10106 (tail!2207 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))))

(declare-fun b!1554735 () Bool)

(declare-fun res!694130 () Bool)

(declare-fun e!997460 () Bool)

(assert (=> b!1554735 (=> res!694130 e!997460)))

(assert (=> b!1554735 (= res!694130 e!997458)))

(declare-fun res!694128 () Bool)

(assert (=> b!1554735 (=> (not res!694128) (not e!997458))))

(assert (=> b!1554735 (= res!694128 lt!538429)))

(declare-fun b!1554730 () Bool)

(assert (=> b!1554730 (= e!997461 (not lt!538429))))

(declare-fun d!461256 () Bool)

(assert (=> d!461256 e!997459))

(declare-fun c!252712 () Bool)

(assert (=> d!461256 (= c!252712 ((_ is EmptyExpr!4273) (regex!2945 rule!240)))))

(assert (=> d!461256 (= lt!538429 e!997464)))

(declare-fun c!252714 () Bool)

(assert (=> d!461256 (= c!252714 (isEmpty!10106 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(assert (=> d!461256 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461256 (= (matchR!1877 (regex!2945 rule!240) (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))) lt!538429)))

(declare-fun b!1554736 () Bool)

(declare-fun res!694125 () Bool)

(assert (=> b!1554736 (=> (not res!694125) (not e!997458))))

(assert (=> b!1554736 (= res!694125 (not call!102005))))

(declare-fun b!1554737 () Bool)

(declare-fun res!694127 () Bool)

(assert (=> b!1554737 (=> res!694127 e!997460)))

(assert (=> b!1554737 (= res!694127 (not ((_ is ElementMatch!4273) (regex!2945 rule!240))))))

(assert (=> b!1554737 (= e!997461 e!997460)))

(declare-fun b!1554738 () Bool)

(declare-fun e!997463 () Bool)

(assert (=> b!1554738 (= e!997460 e!997463)))

(declare-fun res!694129 () Bool)

(assert (=> b!1554738 (=> (not res!694129) (not e!997463))))

(assert (=> b!1554738 (= res!694129 (not lt!538429))))

(declare-fun b!1554739 () Bool)

(assert (=> b!1554739 (= e!997464 (matchR!1877 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190))))) (tail!2207 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190))))))))

(declare-fun b!1554740 () Bool)

(assert (=> b!1554740 (= e!997463 e!997462)))

(declare-fun res!694124 () Bool)

(assert (=> b!1554740 (=> res!694124 e!997462)))

(assert (=> b!1554740 (= res!694124 call!102005)))

(assert (= (and d!461256 c!252714) b!1554731))

(assert (= (and d!461256 (not c!252714)) b!1554739))

(assert (= (and d!461256 c!252712) b!1554733))

(assert (= (and d!461256 (not c!252712)) b!1554728))

(assert (= (and b!1554728 c!252713) b!1554730))

(assert (= (and b!1554728 (not c!252713)) b!1554737))

(assert (= (and b!1554737 (not res!694127)) b!1554735))

(assert (= (and b!1554735 res!694128) b!1554736))

(assert (= (and b!1554736 res!694125) b!1554729))

(assert (= (and b!1554729 res!694131) b!1554727))

(assert (= (and b!1554735 (not res!694130)) b!1554738))

(assert (= (and b!1554738 res!694129) b!1554740))

(assert (= (and b!1554740 (not res!694124)) b!1554734))

(assert (= (and b!1554734 (not res!694126)) b!1554732))

(assert (= (or b!1554733 b!1554736 b!1554740) bm!102000))

(declare-fun m!1827306 () Bool)

(assert (=> b!1554729 m!1827306))

(assert (=> b!1554729 m!1827306))

(declare-fun m!1827308 () Bool)

(assert (=> b!1554729 m!1827308))

(declare-fun m!1827310 () Bool)

(assert (=> b!1554732 m!1827310))

(assert (=> b!1554731 m!1826657))

(assert (=> d!461256 m!1826689))

(assert (=> d!461256 m!1826659))

(assert (=> b!1554734 m!1827306))

(assert (=> b!1554734 m!1827306))

(assert (=> b!1554734 m!1827308))

(assert (=> bm!102000 m!1826689))

(assert (=> b!1554739 m!1827310))

(assert (=> b!1554739 m!1827310))

(declare-fun m!1827312 () Bool)

(assert (=> b!1554739 m!1827312))

(assert (=> b!1554739 m!1827306))

(assert (=> b!1554739 m!1827312))

(assert (=> b!1554739 m!1827306))

(declare-fun m!1827314 () Bool)

(assert (=> b!1554739 m!1827314))

(assert (=> b!1554727 m!1827310))

(assert (=> b!1554253 d!461256))

(assert (=> b!1554253 d!461134))

(assert (=> b!1554253 d!461126))

(assert (=> b!1554253 d!461132))

(declare-fun b!1554743 () Bool)

(declare-fun e!997466 () List!16871)

(assert (=> b!1554743 (= e!997466 (list!6491 (xs!8363 (c!252615 lt!538195))))))

(declare-fun b!1554742 () Bool)

(declare-fun e!997465 () List!16871)

(assert (=> b!1554742 (= e!997465 e!997466)))

(declare-fun c!252716 () Bool)

(assert (=> b!1554742 (= c!252716 ((_ is Leaf!8245) (c!252615 lt!538195)))))

(declare-fun d!461258 () Bool)

(declare-fun c!252715 () Bool)

(assert (=> d!461258 (= c!252715 ((_ is Empty!5563) (c!252615 lt!538195)))))

(assert (=> d!461258 (= (list!6490 (c!252615 lt!538195)) e!997465)))

(declare-fun b!1554741 () Bool)

(assert (=> b!1554741 (= e!997465 Nil!16803)))

(declare-fun b!1554744 () Bool)

(assert (=> b!1554744 (= e!997466 (++!4413 (list!6490 (left!13662 (c!252615 lt!538195))) (list!6490 (right!13992 (c!252615 lt!538195)))))))

(assert (= (and d!461258 c!252715) b!1554741))

(assert (= (and d!461258 (not c!252715)) b!1554742))

(assert (= (and b!1554742 c!252716) b!1554743))

(assert (= (and b!1554742 (not c!252716)) b!1554744))

(declare-fun m!1827316 () Bool)

(assert (=> b!1554743 m!1827316))

(declare-fun m!1827318 () Bool)

(assert (=> b!1554744 m!1827318))

(declare-fun m!1827320 () Bool)

(assert (=> b!1554744 m!1827320))

(assert (=> b!1554744 m!1827318))

(assert (=> b!1554744 m!1827320))

(declare-fun m!1827322 () Bool)

(assert (=> b!1554744 m!1827322))

(assert (=> d!461118 d!461258))

(declare-fun b!1554747 () Bool)

(declare-fun e!997468 () List!16871)

(assert (=> b!1554747 (= e!997468 (list!6491 (xs!8363 (c!252615 (_1!9464 (_1!9465 lt!538187))))))))

(declare-fun b!1554746 () Bool)

(declare-fun e!997467 () List!16871)

(assert (=> b!1554746 (= e!997467 e!997468)))

(declare-fun c!252718 () Bool)

(assert (=> b!1554746 (= c!252718 ((_ is Leaf!8245) (c!252615 (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun d!461260 () Bool)

(declare-fun c!252717 () Bool)

(assert (=> d!461260 (= c!252717 ((_ is Empty!5563) (c!252615 (_1!9464 (_1!9465 lt!538187)))))))

(assert (=> d!461260 (= (list!6490 (c!252615 (_1!9464 (_1!9465 lt!538187)))) e!997467)))

(declare-fun b!1554745 () Bool)

(assert (=> b!1554745 (= e!997467 Nil!16803)))

(declare-fun b!1554748 () Bool)

(assert (=> b!1554748 (= e!997468 (++!4413 (list!6490 (left!13662 (c!252615 (_1!9464 (_1!9465 lt!538187))))) (list!6490 (right!13992 (c!252615 (_1!9464 (_1!9465 lt!538187)))))))))

(assert (= (and d!461260 c!252717) b!1554745))

(assert (= (and d!461260 (not c!252717)) b!1554746))

(assert (= (and b!1554746 c!252718) b!1554747))

(assert (= (and b!1554746 (not c!252718)) b!1554748))

(declare-fun m!1827324 () Bool)

(assert (=> b!1554747 m!1827324))

(declare-fun m!1827326 () Bool)

(assert (=> b!1554748 m!1827326))

(declare-fun m!1827328 () Bool)

(assert (=> b!1554748 m!1827328))

(assert (=> b!1554748 m!1827326))

(assert (=> b!1554748 m!1827328))

(declare-fun m!1827330 () Bool)

(assert (=> b!1554748 m!1827330))

(assert (=> d!461060 d!461260))

(declare-fun d!461262 () Bool)

(declare-fun res!694132 () Bool)

(declare-fun e!997469 () Bool)

(assert (=> d!461262 (=> (not res!694132) (not e!997469))))

(assert (=> d!461262 (= res!694132 (= (csize!11356 (c!252615 totalInput!568)) (+ (size!13607 (left!13662 (c!252615 totalInput!568))) (size!13607 (right!13992 (c!252615 totalInput!568))))))))

(assert (=> d!461262 (= (inv!22080 (c!252615 totalInput!568)) e!997469)))

(declare-fun b!1554749 () Bool)

(declare-fun res!694133 () Bool)

(assert (=> b!1554749 (=> (not res!694133) (not e!997469))))

(assert (=> b!1554749 (= res!694133 (and (not (= (left!13662 (c!252615 totalInput!568)) Empty!5563)) (not (= (right!13992 (c!252615 totalInput!568)) Empty!5563))))))

(declare-fun b!1554750 () Bool)

(declare-fun res!694134 () Bool)

(assert (=> b!1554750 (=> (not res!694134) (not e!997469))))

(assert (=> b!1554750 (= res!694134 (= (cheight!5774 (c!252615 totalInput!568)) (+ (max!0 (height!829 (left!13662 (c!252615 totalInput!568))) (height!829 (right!13992 (c!252615 totalInput!568)))) 1)))))

(declare-fun b!1554751 () Bool)

(assert (=> b!1554751 (= e!997469 (<= 0 (cheight!5774 (c!252615 totalInput!568))))))

(assert (= (and d!461262 res!694132) b!1554749))

(assert (= (and b!1554749 res!694133) b!1554750))

(assert (= (and b!1554750 res!694134) b!1554751))

(declare-fun m!1827332 () Bool)

(assert (=> d!461262 m!1827332))

(declare-fun m!1827334 () Bool)

(assert (=> d!461262 m!1827334))

(declare-fun m!1827336 () Bool)

(assert (=> b!1554750 m!1827336))

(declare-fun m!1827338 () Bool)

(assert (=> b!1554750 m!1827338))

(assert (=> b!1554750 m!1827336))

(assert (=> b!1554750 m!1827338))

(declare-fun m!1827340 () Bool)

(assert (=> b!1554750 m!1827340))

(assert (=> b!1554209 d!461262))

(declare-fun bs!388214 () Bool)

(declare-fun d!461264 () Bool)

(assert (= bs!388214 (and d!461264 d!461152)))

(declare-fun lambda!65812 () Int)

(assert (=> bs!388214 (= lambda!65812 lambda!65803)))

(declare-fun bs!388215 () Bool)

(assert (= bs!388215 (and d!461264 d!461158)))

(assert (=> bs!388215 (= lambda!65812 lambda!65806)))

(declare-fun bs!388216 () Bool)

(assert (= bs!388216 (and d!461264 d!461156)))

(assert (=> bs!388216 (= lambda!65812 lambda!65805)))

(declare-fun bs!388217 () Bool)

(assert (= bs!388217 (and d!461264 d!461154)))

(assert (=> bs!388217 (= lambda!65812 lambda!65804)))

(declare-fun bs!388218 () Bool)

(assert (= bs!388218 (and d!461264 d!461186)))

(assert (=> bs!388218 (= lambda!65812 lambda!65810)))

(declare-fun bs!388219 () Bool)

(assert (= bs!388219 (and d!461264 d!461188)))

(assert (=> bs!388219 (= lambda!65812 lambda!65811)))

(assert (=> d!461264 (= (inv!22082 setElem!10788) (forall!3925 (exprs!1291 setElem!10788) lambda!65812))))

(declare-fun bs!388220 () Bool)

(assert (= bs!388220 d!461264))

(declare-fun m!1827342 () Bool)

(assert (=> bs!388220 m!1827342))

(assert (=> setNonEmpty!10788 d!461264))

(declare-fun bs!388221 () Bool)

(declare-fun d!461266 () Bool)

(assert (= bs!388221 (and d!461266 d!461152)))

(declare-fun lambda!65813 () Int)

(assert (=> bs!388221 (= lambda!65813 lambda!65803)))

(declare-fun bs!388222 () Bool)

(assert (= bs!388222 (and d!461266 d!461158)))

(assert (=> bs!388222 (= lambda!65813 lambda!65806)))

(declare-fun bs!388223 () Bool)

(assert (= bs!388223 (and d!461266 d!461156)))

(assert (=> bs!388223 (= lambda!65813 lambda!65805)))

(declare-fun bs!388224 () Bool)

(assert (= bs!388224 (and d!461266 d!461154)))

(assert (=> bs!388224 (= lambda!65813 lambda!65804)))

(declare-fun bs!388225 () Bool)

(assert (= bs!388225 (and d!461266 d!461188)))

(assert (=> bs!388225 (= lambda!65813 lambda!65811)))

(declare-fun bs!388226 () Bool)

(assert (= bs!388226 (and d!461266 d!461264)))

(assert (=> bs!388226 (= lambda!65813 lambda!65812)))

(declare-fun bs!388227 () Bool)

(assert (= bs!388227 (and d!461266 d!461186)))

(assert (=> bs!388227 (= lambda!65813 lambda!65810)))

(assert (=> d!461266 (= (inv!22082 setElem!10780) (forall!3925 (exprs!1291 setElem!10780) lambda!65813))))

(declare-fun bs!388228 () Bool)

(assert (= bs!388228 d!461266))

(declare-fun m!1827344 () Bool)

(assert (=> bs!388228 m!1827344))

(assert (=> setNonEmpty!10780 d!461266))

(declare-fun d!461268 () Bool)

(assert (=> d!461268 true))

(assert (=> d!461268 true))

(declare-fun res!694137 () Bool)

(assert (=> d!461268 (= (choose!9272 lambda!65797) res!694137)))

(assert (=> d!461116 d!461268))

(declare-fun b!1554762 () Bool)

(declare-fun res!694140 () Bool)

(declare-fun e!997478 () Bool)

(assert (=> b!1554762 (=> res!694140 e!997478)))

(assert (=> b!1554762 (= res!694140 (not ((_ is IntegerValue!9107) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))))

(declare-fun e!997477 () Bool)

(assert (=> b!1554762 (= e!997477 e!997478)))

(declare-fun b!1554763 () Bool)

(declare-fun e!997476 () Bool)

(declare-fun inv!16 (TokenValue!3035) Bool)

(assert (=> b!1554763 (= e!997476 (inv!16 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))

(declare-fun b!1554764 () Bool)

(declare-fun inv!15 (TokenValue!3035) Bool)

(assert (=> b!1554764 (= e!997478 (inv!15 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))

(declare-fun d!461270 () Bool)

(declare-fun c!252723 () Bool)

(assert (=> d!461270 (= c!252723 ((_ is IntegerValue!9105) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))

(assert (=> d!461270 (= (inv!21 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)) e!997476)))

(declare-fun b!1554765 () Bool)

(declare-fun inv!17 (TokenValue!3035) Bool)

(assert (=> b!1554765 (= e!997477 (inv!17 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))

(declare-fun b!1554766 () Bool)

(assert (=> b!1554766 (= e!997476 e!997477)))

(declare-fun c!252724 () Bool)

(assert (=> b!1554766 (= c!252724 ((_ is IntegerValue!9106) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))

(assert (= (and d!461270 c!252723) b!1554763))

(assert (= (and d!461270 (not c!252723)) b!1554766))

(assert (= (and b!1554766 c!252724) b!1554765))

(assert (= (and b!1554766 (not c!252724)) b!1554762))

(assert (= (and b!1554762 (not res!694140)) b!1554764))

(declare-fun m!1827346 () Bool)

(assert (=> b!1554763 m!1827346))

(declare-fun m!1827348 () Bool)

(assert (=> b!1554764 m!1827348))

(declare-fun m!1827350 () Bool)

(assert (=> b!1554765 m!1827350))

(assert (=> tb!87301 d!461270))

(declare-fun b!1554779 () Bool)

(declare-fun res!694153 () Bool)

(declare-fun e!997483 () Bool)

(assert (=> b!1554779 (=> (not res!694153) (not e!997483))))

(assert (=> b!1554779 (= res!694153 (not (isEmpty!10109 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))))

(declare-fun b!1554780 () Bool)

(assert (=> b!1554780 (= e!997483 (not (isEmpty!10109 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))))

(declare-fun b!1554781 () Bool)

(declare-fun res!694158 () Bool)

(assert (=> b!1554781 (=> (not res!694158) (not e!997483))))

(assert (=> b!1554781 (= res!694158 (<= (- (height!829 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) (height!829 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) 1))))

(declare-fun b!1554782 () Bool)

(declare-fun res!694154 () Bool)

(assert (=> b!1554782 (=> (not res!694154) (not e!997483))))

(assert (=> b!1554782 (= res!694154 (isBalanced!1642 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(declare-fun b!1554783 () Bool)

(declare-fun e!997484 () Bool)

(assert (=> b!1554783 (= e!997484 e!997483)))

(declare-fun res!694155 () Bool)

(assert (=> b!1554783 (=> (not res!694155) (not e!997483))))

(assert (=> b!1554783 (= res!694155 (<= (- 1) (- (height!829 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) (height!829 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))))

(declare-fun b!1554784 () Bool)

(declare-fun res!694157 () Bool)

(assert (=> b!1554784 (=> (not res!694157) (not e!997483))))

(assert (=> b!1554784 (= res!694157 (isBalanced!1642 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(declare-fun d!461272 () Bool)

(declare-fun res!694156 () Bool)

(assert (=> d!461272 (=> res!694156 e!997484)))

(assert (=> d!461272 (= res!694156 (not ((_ is Node!5563) (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(assert (=> d!461272 (= (isBalanced!1642 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) e!997484)))

(assert (= (and d!461272 (not res!694156)) b!1554783))

(assert (= (and b!1554783 res!694155) b!1554781))

(assert (= (and b!1554781 res!694158) b!1554782))

(assert (= (and b!1554782 res!694154) b!1554784))

(assert (= (and b!1554784 res!694157) b!1554779))

(assert (= (and b!1554779 res!694153) b!1554780))

(declare-fun m!1827352 () Bool)

(assert (=> b!1554780 m!1827352))

(assert (=> b!1554783 m!1827098))

(assert (=> b!1554783 m!1827100))

(declare-fun m!1827354 () Bool)

(assert (=> b!1554784 m!1827354))

(declare-fun m!1827356 () Bool)

(assert (=> b!1554779 m!1827356))

(declare-fun m!1827358 () Bool)

(assert (=> b!1554782 m!1827358))

(assert (=> b!1554781 m!1827098))

(assert (=> b!1554781 m!1827100))

(assert (=> d!461058 d!461272))

(declare-fun bs!388229 () Bool)

(declare-fun d!461274 () Bool)

(assert (= bs!388229 (and d!461274 d!461152)))

(declare-fun lambda!65814 () Int)

(assert (=> bs!388229 (= lambda!65814 lambda!65803)))

(declare-fun bs!388230 () Bool)

(assert (= bs!388230 (and d!461274 d!461266)))

(assert (=> bs!388230 (= lambda!65814 lambda!65813)))

(declare-fun bs!388231 () Bool)

(assert (= bs!388231 (and d!461274 d!461158)))

(assert (=> bs!388231 (= lambda!65814 lambda!65806)))

(declare-fun bs!388232 () Bool)

(assert (= bs!388232 (and d!461274 d!461156)))

(assert (=> bs!388232 (= lambda!65814 lambda!65805)))

(declare-fun bs!388233 () Bool)

(assert (= bs!388233 (and d!461274 d!461154)))

(assert (=> bs!388233 (= lambda!65814 lambda!65804)))

(declare-fun bs!388234 () Bool)

(assert (= bs!388234 (and d!461274 d!461188)))

(assert (=> bs!388234 (= lambda!65814 lambda!65811)))

(declare-fun bs!388235 () Bool)

(assert (= bs!388235 (and d!461274 d!461264)))

(assert (=> bs!388235 (= lambda!65814 lambda!65812)))

(declare-fun bs!388236 () Bool)

(assert (= bs!388236 (and d!461274 d!461186)))

(assert (=> bs!388236 (= lambda!65814 lambda!65810)))

(assert (=> d!461274 (= (inv!22082 setElem!10773) (forall!3925 (exprs!1291 setElem!10773) lambda!65814))))

(declare-fun bs!388237 () Bool)

(assert (= bs!388237 d!461274))

(declare-fun m!1827360 () Bool)

(assert (=> bs!388237 m!1827360))

(assert (=> setNonEmpty!10773 d!461274))

(assert (=> b!1554193 d!461126))

(assert (=> b!1554193 d!461128))

(declare-fun d!461276 () Bool)

(assert (=> d!461276 (= (seqFromList!1772 (_1!9463 lt!538218)) (fromListB!760 (_1!9463 lt!538218)))))

(declare-fun bs!388238 () Bool)

(assert (= bs!388238 d!461276))

(declare-fun m!1827362 () Bool)

(assert (=> bs!388238 m!1827362))

(assert (=> b!1554193 d!461276))

(declare-fun bs!388239 () Bool)

(declare-fun d!461278 () Bool)

(assert (= bs!388239 (and d!461278 b!1554111)))

(declare-fun lambda!65817 () Int)

(assert (=> bs!388239 (= lambda!65817 lambda!65797)))

(declare-fun bs!388240 () Bool)

(assert (= bs!388240 (and d!461278 d!461130)))

(assert (=> bs!388240 (= lambda!65817 lambda!65800)))

(declare-fun b!1554789 () Bool)

(declare-fun e!997487 () Bool)

(assert (=> b!1554789 (= e!997487 true)))

(assert (=> d!461278 e!997487))

(assert (= d!461278 b!1554789))

(assert (=> b!1554789 (< (dynLambda!7441 order!9881 (toValue!4314 (transformation!2945 rule!240))) (dynLambda!7442 order!9883 lambda!65817))))

(assert (=> b!1554789 (< (dynLambda!7443 order!9885 (toChars!4173 (transformation!2945 rule!240))) (dynLambda!7442 order!9883 lambda!65817))))

(assert (=> d!461278 (= (list!6489 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (seqFromList!1772 (_1!9463 lt!538218))))) (list!6489 (seqFromList!1772 (_1!9463 lt!538218))))))

(declare-fun lt!538432 () Unit!26051)

(assert (=> d!461278 (= lt!538432 (ForallOf!209 lambda!65817 (seqFromList!1772 (_1!9463 lt!538218))))))

(assert (=> d!461278 (= (lemmaSemiInverse!364 (transformation!2945 rule!240) (seqFromList!1772 (_1!9463 lt!538218))) lt!538432)))

(declare-fun b_lambda!48803 () Bool)

(assert (=> (not b_lambda!48803) (not d!461278)))

(declare-fun t!141335 () Bool)

(declare-fun tb!87309 () Bool)

(assert (=> (and b!1554089 (= (toChars!4173 (transformation!2945 rule!240)) (toChars!4173 (transformation!2945 rule!240))) t!141335) tb!87309))

(declare-fun e!997488 () Bool)

(declare-fun b!1554790 () Bool)

(declare-fun tp!455431 () Bool)

(assert (=> b!1554790 (= e!997488 (and (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (seqFromList!1772 (_1!9463 lt!538218)))))) tp!455431))))

(declare-fun result!105396 () Bool)

(assert (=> tb!87309 (= result!105396 (and (inv!22076 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (seqFromList!1772 (_1!9463 lt!538218))))) e!997488))))

(assert (= tb!87309 b!1554790))

(declare-fun m!1827364 () Bool)

(assert (=> b!1554790 m!1827364))

(declare-fun m!1827366 () Bool)

(assert (=> tb!87309 m!1827366))

(assert (=> d!461278 t!141335))

(declare-fun b_and!108479 () Bool)

(assert (= b_and!108465 (and (=> t!141335 result!105396) b_and!108479)))

(declare-fun b_lambda!48805 () Bool)

(assert (=> (not b_lambda!48805) (not d!461278)))

(declare-fun t!141337 () Bool)

(declare-fun tb!87311 () Bool)

(assert (=> (and b!1554089 (= (toValue!4314 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))) t!141337) tb!87311))

(declare-fun result!105398 () Bool)

(assert (=> tb!87311 (= result!105398 (inv!21 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (seqFromList!1772 (_1!9463 lt!538218)))))))

(declare-fun m!1827368 () Bool)

(assert (=> tb!87311 m!1827368))

(assert (=> d!461278 t!141337))

(declare-fun b_and!108481 () Bool)

(assert (= b_and!108463 (and (=> t!141337 result!105398) b_and!108481)))

(assert (=> d!461278 m!1826691))

(declare-fun m!1827370 () Bool)

(assert (=> d!461278 m!1827370))

(assert (=> d!461278 m!1826691))

(declare-fun m!1827372 () Bool)

(assert (=> d!461278 m!1827372))

(assert (=> d!461278 m!1826691))

(declare-fun m!1827374 () Bool)

(assert (=> d!461278 m!1827374))

(declare-fun m!1827376 () Bool)

(assert (=> d!461278 m!1827376))

(declare-fun m!1827378 () Bool)

(assert (=> d!461278 m!1827378))

(assert (=> d!461278 m!1827372))

(assert (=> d!461278 m!1827376))

(assert (=> b!1554193 d!461278))

(assert (=> b!1554193 d!461132))

(assert (=> b!1554193 d!461134))

(declare-fun d!461280 () Bool)

(declare-fun lt!538433 () Int)

(assert (=> d!461280 (= lt!538433 (size!13604 (list!6489 (seqFromList!1772 (_1!9463 lt!538218)))))))

(assert (=> d!461280 (= lt!538433 (size!13607 (c!252615 (seqFromList!1772 (_1!9463 lt!538218)))))))

(assert (=> d!461280 (= (size!13606 (seqFromList!1772 (_1!9463 lt!538218))) lt!538433)))

(declare-fun bs!388241 () Bool)

(assert (= bs!388241 d!461280))

(assert (=> bs!388241 m!1826691))

(assert (=> bs!388241 m!1827370))

(assert (=> bs!388241 m!1827370))

(declare-fun m!1827380 () Bool)

(assert (=> bs!388241 m!1827380))

(declare-fun m!1827382 () Bool)

(assert (=> bs!388241 m!1827382))

(assert (=> b!1554193 d!461280))

(declare-fun d!461282 () Bool)

(assert (=> d!461282 (= (apply!4108 (transformation!2945 rule!240) (seqFromList!1772 (_1!9463 lt!538218))) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (seqFromList!1772 (_1!9463 lt!538218))))))

(declare-fun b_lambda!48807 () Bool)

(assert (=> (not b_lambda!48807) (not d!461282)))

(assert (=> d!461282 t!141337))

(declare-fun b_and!108483 () Bool)

(assert (= b_and!108481 (and (=> t!141337 result!105398) b_and!108483)))

(assert (=> d!461282 m!1826691))

(assert (=> d!461282 m!1827372))

(assert (=> b!1554193 d!461282))

(declare-fun d!461284 () Bool)

(assert (=> d!461284 (= (isEmpty!10106 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))) ((_ is Nil!16803) (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(assert (=> b!1554193 d!461284))

(declare-fun bs!388242 () Bool)

(declare-fun d!461286 () Bool)

(assert (= bs!388242 (and d!461286 d!461152)))

(declare-fun lambda!65818 () Int)

(assert (=> bs!388242 (= lambda!65818 lambda!65803)))

(declare-fun bs!388243 () Bool)

(assert (= bs!388243 (and d!461286 d!461274)))

(assert (=> bs!388243 (= lambda!65818 lambda!65814)))

(declare-fun bs!388244 () Bool)

(assert (= bs!388244 (and d!461286 d!461266)))

(assert (=> bs!388244 (= lambda!65818 lambda!65813)))

(declare-fun bs!388245 () Bool)

(assert (= bs!388245 (and d!461286 d!461158)))

(assert (=> bs!388245 (= lambda!65818 lambda!65806)))

(declare-fun bs!388246 () Bool)

(assert (= bs!388246 (and d!461286 d!461156)))

(assert (=> bs!388246 (= lambda!65818 lambda!65805)))

(declare-fun bs!388247 () Bool)

(assert (= bs!388247 (and d!461286 d!461154)))

(assert (=> bs!388247 (= lambda!65818 lambda!65804)))

(declare-fun bs!388248 () Bool)

(assert (= bs!388248 (and d!461286 d!461188)))

(assert (=> bs!388248 (= lambda!65818 lambda!65811)))

(declare-fun bs!388249 () Bool)

(assert (= bs!388249 (and d!461286 d!461264)))

(assert (=> bs!388249 (= lambda!65818 lambda!65812)))

(declare-fun bs!388250 () Bool)

(assert (= bs!388250 (and d!461286 d!461186)))

(assert (=> bs!388250 (= lambda!65818 lambda!65810)))

(assert (=> d!461286 (= (inv!22082 setElem!10783) (forall!3925 (exprs!1291 setElem!10783) lambda!65818))))

(declare-fun bs!388251 () Bool)

(assert (= bs!388251 d!461286))

(declare-fun m!1827384 () Bool)

(assert (=> bs!388251 m!1827384))

(assert (=> setNonEmpty!10783 d!461286))

(declare-fun d!461288 () Bool)

(declare-fun lt!538434 () Int)

(assert (=> d!461288 (>= lt!538434 0)))

(declare-fun e!997490 () Int)

(assert (=> d!461288 (= lt!538434 e!997490)))

(declare-fun c!252726 () Bool)

(assert (=> d!461288 (= c!252726 ((_ is Nil!16803) (t!141314 lt!538190)))))

(assert (=> d!461288 (= (size!13604 (t!141314 lt!538190)) lt!538434)))

(declare-fun b!1554791 () Bool)

(assert (=> b!1554791 (= e!997490 0)))

(declare-fun b!1554792 () Bool)

(assert (=> b!1554792 (= e!997490 (+ 1 (size!13604 (t!141314 (t!141314 lt!538190)))))))

(assert (= (and d!461288 c!252726) b!1554791))

(assert (= (and d!461288 (not c!252726)) b!1554792))

(declare-fun m!1827386 () Bool)

(assert (=> b!1554792 m!1827386))

(assert (=> b!1554259 d!461288))

(declare-fun d!461290 () Bool)

(assert (=> d!461290 (= (isEmpty!10106 (_1!9463 lt!538316)) ((_ is Nil!16803) (_1!9463 lt!538316)))))

(assert (=> b!1554297 d!461290))

(assert (=> b!1554161 d!461172))

(declare-fun bs!388252 () Bool)

(declare-fun d!461292 () Bool)

(assert (= bs!388252 (and d!461292 d!461152)))

(declare-fun lambda!65819 () Int)

(assert (=> bs!388252 (= lambda!65819 lambda!65803)))

(declare-fun bs!388253 () Bool)

(assert (= bs!388253 (and d!461292 d!461274)))

(assert (=> bs!388253 (= lambda!65819 lambda!65814)))

(declare-fun bs!388254 () Bool)

(assert (= bs!388254 (and d!461292 d!461266)))

(assert (=> bs!388254 (= lambda!65819 lambda!65813)))

(declare-fun bs!388255 () Bool)

(assert (= bs!388255 (and d!461292 d!461156)))

(assert (=> bs!388255 (= lambda!65819 lambda!65805)))

(declare-fun bs!388256 () Bool)

(assert (= bs!388256 (and d!461292 d!461154)))

(assert (=> bs!388256 (= lambda!65819 lambda!65804)))

(declare-fun bs!388257 () Bool)

(assert (= bs!388257 (and d!461292 d!461188)))

(assert (=> bs!388257 (= lambda!65819 lambda!65811)))

(declare-fun bs!388258 () Bool)

(assert (= bs!388258 (and d!461292 d!461158)))

(assert (=> bs!388258 (= lambda!65819 lambda!65806)))

(declare-fun bs!388259 () Bool)

(assert (= bs!388259 (and d!461292 d!461286)))

(assert (=> bs!388259 (= lambda!65819 lambda!65818)))

(declare-fun bs!388260 () Bool)

(assert (= bs!388260 (and d!461292 d!461264)))

(assert (=> bs!388260 (= lambda!65819 lambda!65812)))

(declare-fun bs!388261 () Bool)

(assert (= bs!388261 (and d!461292 d!461186)))

(assert (=> bs!388261 (= lambda!65819 lambda!65810)))

(assert (=> d!461292 (= (inv!22082 (_1!9457 (_1!9458 (h!22206 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))) (forall!3925 (exprs!1291 (_1!9457 (_1!9458 (h!22206 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))) lambda!65819))))

(declare-fun bs!388262 () Bool)

(assert (= bs!388262 d!461292))

(declare-fun m!1827388 () Bool)

(assert (=> bs!388262 m!1827388))

(assert (=> b!1554403 d!461292))

(declare-fun d!461294 () Bool)

(assert (not d!461294))

(assert (=> b!1554250 d!461294))

(declare-fun d!461296 () Bool)

(declare-fun c!252727 () Bool)

(assert (=> d!461296 (= c!252727 ((_ is Node!5563) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))))

(declare-fun e!997491 () Bool)

(assert (=> d!461296 (= (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))) e!997491)))

(declare-fun b!1554793 () Bool)

(assert (=> b!1554793 (= e!997491 (inv!22080 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))))

(declare-fun b!1554794 () Bool)

(declare-fun e!997492 () Bool)

(assert (=> b!1554794 (= e!997491 e!997492)))

(declare-fun res!694159 () Bool)

(assert (=> b!1554794 (= res!694159 (not ((_ is Leaf!8245) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))))))

(assert (=> b!1554794 (=> res!694159 e!997492)))

(declare-fun b!1554795 () Bool)

(assert (=> b!1554795 (= e!997492 (inv!22081 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))))

(assert (= (and d!461296 c!252727) b!1554793))

(assert (= (and d!461296 (not c!252727)) b!1554794))

(assert (= (and b!1554794 (not res!694159)) b!1554795))

(declare-fun m!1827390 () Bool)

(assert (=> b!1554793 m!1827390))

(declare-fun m!1827392 () Bool)

(assert (=> b!1554795 m!1827392))

(assert (=> b!1554448 d!461296))

(declare-fun b!1554801 () Bool)

(assert (=> b!1554801 true))

(declare-fun d!461298 () Bool)

(declare-fun res!694164 () Bool)

(declare-fun e!997495 () Bool)

(assert (=> d!461298 (=> (not res!694164) (not e!997495))))

(declare-fun valid!1443 (MutableMap!1736) Bool)

(assert (=> d!461298 (= res!694164 (valid!1443 (cache!2117 cacheFurthestNullable!103)))))

(assert (=> d!461298 (= (validCacheMapFurthestNullable!73 (cache!2117 cacheFurthestNullable!103) (totalInput!2456 cacheFurthestNullable!103)) e!997495)))

(declare-fun b!1554800 () Bool)

(declare-fun res!694165 () Bool)

(assert (=> b!1554800 (=> (not res!694165) (not e!997495))))

(declare-fun invariantList!248 (List!16874) Bool)

(declare-datatypes ((ListMap!545 0))(
  ( (ListMap!546 (toList!857 List!16874)) )
))
(declare-fun map!3522 (MutableMap!1736) ListMap!545)

(assert (=> b!1554800 (= res!694165 (invariantList!248 (toList!857 (map!3522 (cache!2117 cacheFurthestNullable!103)))))))

(declare-fun lambda!65822 () Int)

(declare-fun forall!3927 (List!16874 Int) Bool)

(assert (=> b!1554801 (= e!997495 (forall!3927 (toList!857 (map!3522 (cache!2117 cacheFurthestNullable!103))) lambda!65822))))

(assert (= (and d!461298 res!694164) b!1554800))

(assert (= (and b!1554800 res!694165) b!1554801))

(declare-fun m!1827395 () Bool)

(assert (=> d!461298 m!1827395))

(declare-fun m!1827397 () Bool)

(assert (=> b!1554800 m!1827397))

(declare-fun m!1827399 () Bool)

(assert (=> b!1554800 m!1827399))

(assert (=> b!1554801 m!1827397))

(declare-fun m!1827401 () Bool)

(assert (=> b!1554801 m!1827401))

(assert (=> d!461140 d!461298))

(declare-fun d!461300 () Bool)

(assert (=> d!461300 (= (inv!22083 (xs!8363 (c!252615 input!1676))) (<= (size!13604 (innerList!5623 (xs!8363 (c!252615 input!1676)))) 2147483647))))

(declare-fun bs!388263 () Bool)

(assert (= bs!388263 d!461300))

(declare-fun m!1827403 () Bool)

(assert (=> bs!388263 m!1827403))

(assert (=> b!1554350 d!461300))

(declare-fun bs!388264 () Bool)

(declare-fun d!461302 () Bool)

(assert (= bs!388264 (and d!461302 d!461152)))

(declare-fun lambda!65823 () Int)

(assert (=> bs!388264 (= lambda!65823 lambda!65803)))

(declare-fun bs!388265 () Bool)

(assert (= bs!388265 (and d!461302 d!461274)))

(assert (=> bs!388265 (= lambda!65823 lambda!65814)))

(declare-fun bs!388266 () Bool)

(assert (= bs!388266 (and d!461302 d!461266)))

(assert (=> bs!388266 (= lambda!65823 lambda!65813)))

(declare-fun bs!388267 () Bool)

(assert (= bs!388267 (and d!461302 d!461156)))

(assert (=> bs!388267 (= lambda!65823 lambda!65805)))

(declare-fun bs!388268 () Bool)

(assert (= bs!388268 (and d!461302 d!461154)))

(assert (=> bs!388268 (= lambda!65823 lambda!65804)))

(declare-fun bs!388269 () Bool)

(assert (= bs!388269 (and d!461302 d!461292)))

(assert (=> bs!388269 (= lambda!65823 lambda!65819)))

(declare-fun bs!388270 () Bool)

(assert (= bs!388270 (and d!461302 d!461188)))

(assert (=> bs!388270 (= lambda!65823 lambda!65811)))

(declare-fun bs!388271 () Bool)

(assert (= bs!388271 (and d!461302 d!461158)))

(assert (=> bs!388271 (= lambda!65823 lambda!65806)))

(declare-fun bs!388272 () Bool)

(assert (= bs!388272 (and d!461302 d!461286)))

(assert (=> bs!388272 (= lambda!65823 lambda!65818)))

(declare-fun bs!388273 () Bool)

(assert (= bs!388273 (and d!461302 d!461264)))

(assert (=> bs!388273 (= lambda!65823 lambda!65812)))

(declare-fun bs!388274 () Bool)

(assert (= bs!388274 (and d!461302 d!461186)))

(assert (=> bs!388274 (= lambda!65823 lambda!65810)))

(assert (=> d!461302 (= (inv!22082 setElem!10793) (forall!3925 (exprs!1291 setElem!10793) lambda!65823))))

(declare-fun bs!388275 () Bool)

(assert (= bs!388275 d!461302))

(declare-fun m!1827405 () Bool)

(assert (=> bs!388275 m!1827405))

(assert (=> setNonEmpty!10794 d!461302))

(declare-fun d!461304 () Bool)

(assert (=> d!461304 (= (valid!1441 (_3!1335 lt!538228)) (validCacheMapDown!160 (cache!2118 (_3!1335 lt!538228))))))

(declare-fun bs!388276 () Bool)

(assert (= bs!388276 d!461304))

(declare-fun m!1827407 () Bool)

(assert (=> bs!388276 m!1827407))

(assert (=> b!1554220 d!461304))

(declare-fun b!1554804 () Bool)

(declare-fun res!694166 () Bool)

(declare-fun e!997498 () Bool)

(assert (=> b!1554804 (=> res!694166 e!997498)))

(assert (=> b!1554804 (= res!694166 (not ((_ is IntegerValue!9107) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))))

(declare-fun e!997497 () Bool)

(assert (=> b!1554804 (= e!997497 e!997498)))

(declare-fun b!1554805 () Bool)

(declare-fun e!997496 () Bool)

(assert (=> b!1554805 (= e!997496 (inv!16 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun b!1554806 () Bool)

(assert (=> b!1554806 (= e!997498 (inv!15 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun d!461306 () Bool)

(declare-fun c!252728 () Bool)

(assert (=> d!461306 (= c!252728 ((_ is IntegerValue!9105) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))

(assert (=> d!461306 (= (inv!21 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))) e!997496)))

(declare-fun b!1554807 () Bool)

(assert (=> b!1554807 (= e!997497 (inv!17 (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))

(declare-fun b!1554808 () Bool)

(assert (=> b!1554808 (= e!997496 e!997497)))

(declare-fun c!252729 () Bool)

(assert (=> b!1554808 (= c!252729 ((_ is IntegerValue!9106) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))

(assert (= (and d!461306 c!252728) b!1554805))

(assert (= (and d!461306 (not c!252728)) b!1554808))

(assert (= (and b!1554808 c!252729) b!1554807))

(assert (= (and b!1554808 (not c!252729)) b!1554804))

(assert (= (and b!1554804 (not res!694166)) b!1554806))

(declare-fun m!1827409 () Bool)

(assert (=> b!1554805 m!1827409))

(declare-fun m!1827411 () Bool)

(assert (=> b!1554806 m!1827411))

(declare-fun m!1827413 () Bool)

(assert (=> b!1554807 m!1827413))

(assert (=> tb!87297 d!461306))

(assert (=> d!461128 d!461126))

(assert (=> d!461128 d!461284))

(declare-fun d!461308 () Bool)

(declare-fun e!997501 () Bool)

(assert (=> d!461308 e!997501))

(declare-fun res!694169 () Bool)

(assert (=> d!461308 (=> res!694169 e!997501)))

(assert (=> d!461308 (= res!694169 (isEmpty!10106 (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(assert (=> d!461308 true))

(declare-fun _$92!258 () Unit!26051)

(assert (=> d!461308 (= (choose!9273 (regex!2945 rule!240) lt!538190) _$92!258)))

(declare-fun b!1554811 () Bool)

(assert (=> b!1554811 (= e!997501 (matchR!1877 (regex!2945 rule!240) (_1!9463 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 (size!13604 Nil!16803) lt!538190 lt!538190 (size!13604 lt!538190)))))))

(assert (= (and d!461308 (not res!694169)) b!1554811))

(assert (=> d!461308 m!1826561))

(assert (=> d!461308 m!1826563))

(assert (=> d!461308 m!1826561))

(assert (=> d!461308 m!1826563))

(assert (=> d!461308 m!1826565))

(assert (=> d!461308 m!1826689))

(assert (=> b!1554811 m!1826561))

(assert (=> b!1554811 m!1826563))

(assert (=> b!1554811 m!1826561))

(assert (=> b!1554811 m!1826563))

(assert (=> b!1554811 m!1826565))

(assert (=> b!1554811 m!1826681))

(assert (=> d!461128 d!461308))

(assert (=> d!461128 d!461132))

(assert (=> d!461128 d!461220))

(assert (=> d!461128 d!461134))

(assert (=> b!1554157 d!461202))

(declare-fun d!461310 () Bool)

(assert (=> d!461310 (= (inv!22076 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))) (isBalanced!1642 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))))

(declare-fun bs!388277 () Bool)

(assert (= bs!388277 d!461310))

(declare-fun m!1827415 () Bool)

(assert (=> bs!388277 m!1827415))

(assert (=> tb!87299 d!461310))

(declare-fun d!461312 () Bool)

(assert (=> d!461312 (= (isEmpty!10106 (_1!9463 lt!538307)) ((_ is Nil!16803) (_1!9463 lt!538307)))))

(assert (=> b!1554289 d!461312))

(declare-fun d!461314 () Bool)

(assert (=> d!461314 (dynLambda!7445 lambda!65797 (_1!9464 (_1!9465 lt!538187)))))

(assert (=> d!461314 true))

(declare-fun _$1!9959 () Unit!26051)

(assert (=> d!461314 (= (choose!9270 lambda!65797 (_1!9464 (_1!9465 lt!538187))) _$1!9959)))

(declare-fun b_lambda!48809 () Bool)

(assert (=> (not b_lambda!48809) (not d!461314)))

(declare-fun bs!388278 () Bool)

(assert (= bs!388278 d!461314))

(assert (=> bs!388278 m!1826723))

(assert (=> d!461076 d!461314))

(assert (=> d!461076 d!461116))

(declare-fun d!461316 () Bool)

(declare-fun lt!538435 () Int)

(assert (=> d!461316 (>= lt!538435 0)))

(declare-fun e!997502 () Int)

(assert (=> d!461316 (= lt!538435 e!997502)))

(declare-fun c!252730 () Bool)

(assert (=> d!461316 (= c!252730 ((_ is Nil!16803) (list!6489 totalInput!568)))))

(assert (=> d!461316 (= (size!13604 (list!6489 totalInput!568)) lt!538435)))

(declare-fun b!1554812 () Bool)

(assert (=> b!1554812 (= e!997502 0)))

(declare-fun b!1554813 () Bool)

(assert (=> b!1554813 (= e!997502 (+ 1 (size!13604 (t!141314 (list!6489 totalInput!568)))))))

(assert (= (and d!461316 c!252730) b!1554812))

(assert (= (and d!461316 (not c!252730)) b!1554813))

(declare-fun m!1827417 () Bool)

(assert (=> b!1554813 m!1827417))

(assert (=> b!1554241 d!461316))

(assert (=> b!1554241 d!461132))

(assert (=> b!1554092 d!461124))

(declare-fun d!461318 () Bool)

(declare-fun lt!538436 () Int)

(assert (=> d!461318 (>= lt!538436 0)))

(declare-fun e!997503 () Int)

(assert (=> d!461318 (= lt!538436 e!997503)))

(declare-fun c!252731 () Bool)

(assert (=> d!461318 (= c!252731 ((_ is Nil!16803) (_2!9466 (get!4845 lt!538217))))))

(assert (=> d!461318 (= (size!13604 (_2!9466 (get!4845 lt!538217))) lt!538436)))

(declare-fun b!1554814 () Bool)

(assert (=> b!1554814 (= e!997503 0)))

(declare-fun b!1554815 () Bool)

(assert (=> b!1554815 (= e!997503 (+ 1 (size!13604 (t!141314 (_2!9466 (get!4845 lt!538217))))))))

(assert (= (and d!461318 c!252731) b!1554814))

(assert (= (and d!461318 (not c!252731)) b!1554815))

(declare-fun m!1827419 () Bool)

(assert (=> b!1554815 m!1827419))

(assert (=> b!1554198 d!461318))

(assert (=> b!1554198 d!461160))

(assert (=> b!1554198 d!461132))

(declare-fun bs!388279 () Bool)

(declare-fun d!461320 () Bool)

(assert (= bs!388279 (and d!461320 d!461152)))

(declare-fun lambda!65824 () Int)

(assert (=> bs!388279 (= lambda!65824 lambda!65803)))

(declare-fun bs!388280 () Bool)

(assert (= bs!388280 (and d!461320 d!461274)))

(assert (=> bs!388280 (= lambda!65824 lambda!65814)))

(declare-fun bs!388281 () Bool)

(assert (= bs!388281 (and d!461320 d!461266)))

(assert (=> bs!388281 (= lambda!65824 lambda!65813)))

(declare-fun bs!388282 () Bool)

(assert (= bs!388282 (and d!461320 d!461156)))

(assert (=> bs!388282 (= lambda!65824 lambda!65805)))

(declare-fun bs!388283 () Bool)

(assert (= bs!388283 (and d!461320 d!461154)))

(assert (=> bs!388283 (= lambda!65824 lambda!65804)))

(declare-fun bs!388284 () Bool)

(assert (= bs!388284 (and d!461320 d!461188)))

(assert (=> bs!388284 (= lambda!65824 lambda!65811)))

(declare-fun bs!388285 () Bool)

(assert (= bs!388285 (and d!461320 d!461158)))

(assert (=> bs!388285 (= lambda!65824 lambda!65806)))

(declare-fun bs!388286 () Bool)

(assert (= bs!388286 (and d!461320 d!461286)))

(assert (=> bs!388286 (= lambda!65824 lambda!65818)))

(declare-fun bs!388287 () Bool)

(assert (= bs!388287 (and d!461320 d!461302)))

(assert (=> bs!388287 (= lambda!65824 lambda!65823)))

(declare-fun bs!388288 () Bool)

(assert (= bs!388288 (and d!461320 d!461292)))

(assert (=> bs!388288 (= lambda!65824 lambda!65819)))

(declare-fun bs!388289 () Bool)

(assert (= bs!388289 (and d!461320 d!461264)))

(assert (=> bs!388289 (= lambda!65824 lambda!65812)))

(declare-fun bs!388290 () Bool)

(assert (= bs!388290 (and d!461320 d!461186)))

(assert (=> bs!388290 (= lambda!65824 lambda!65810)))

(assert (=> d!461320 (= (inv!22082 (_2!9461 (_1!9462 (h!22208 mapDefault!8333)))) (forall!3925 (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapDefault!8333)))) lambda!65824))))

(declare-fun bs!388291 () Bool)

(assert (= bs!388291 d!461320))

(declare-fun m!1827421 () Bool)

(assert (=> bs!388291 m!1827421))

(assert (=> b!1554426 d!461320))

(declare-fun bs!388292 () Bool)

(declare-fun d!461322 () Bool)

(assert (= bs!388292 (and d!461322 d!461152)))

(declare-fun lambda!65825 () Int)

(assert (=> bs!388292 (= lambda!65825 lambda!65803)))

(declare-fun bs!388293 () Bool)

(assert (= bs!388293 (and d!461322 d!461274)))

(assert (=> bs!388293 (= lambda!65825 lambda!65814)))

(declare-fun bs!388294 () Bool)

(assert (= bs!388294 (and d!461322 d!461266)))

(assert (=> bs!388294 (= lambda!65825 lambda!65813)))

(declare-fun bs!388295 () Bool)

(assert (= bs!388295 (and d!461322 d!461320)))

(assert (=> bs!388295 (= lambda!65825 lambda!65824)))

(declare-fun bs!388296 () Bool)

(assert (= bs!388296 (and d!461322 d!461156)))

(assert (=> bs!388296 (= lambda!65825 lambda!65805)))

(declare-fun bs!388297 () Bool)

(assert (= bs!388297 (and d!461322 d!461154)))

(assert (=> bs!388297 (= lambda!65825 lambda!65804)))

(declare-fun bs!388298 () Bool)

(assert (= bs!388298 (and d!461322 d!461188)))

(assert (=> bs!388298 (= lambda!65825 lambda!65811)))

(declare-fun bs!388299 () Bool)

(assert (= bs!388299 (and d!461322 d!461158)))

(assert (=> bs!388299 (= lambda!65825 lambda!65806)))

(declare-fun bs!388300 () Bool)

(assert (= bs!388300 (and d!461322 d!461286)))

(assert (=> bs!388300 (= lambda!65825 lambda!65818)))

(declare-fun bs!388301 () Bool)

(assert (= bs!388301 (and d!461322 d!461302)))

(assert (=> bs!388301 (= lambda!65825 lambda!65823)))

(declare-fun bs!388302 () Bool)

(assert (= bs!388302 (and d!461322 d!461292)))

(assert (=> bs!388302 (= lambda!65825 lambda!65819)))

(declare-fun bs!388303 () Bool)

(assert (= bs!388303 (and d!461322 d!461264)))

(assert (=> bs!388303 (= lambda!65825 lambda!65812)))

(declare-fun bs!388304 () Bool)

(assert (= bs!388304 (and d!461322 d!461186)))

(assert (=> bs!388304 (= lambda!65825 lambda!65810)))

(assert (=> d!461322 (= (inv!22082 (_1!9457 (_1!9458 (h!22206 mapDefault!8324)))) (forall!3925 (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapDefault!8324)))) lambda!65825))))

(declare-fun bs!388305 () Bool)

(assert (= bs!388305 d!461322))

(declare-fun m!1827423 () Bool)

(assert (=> bs!388305 m!1827423))

(assert (=> b!1554400 d!461322))

(declare-fun d!461324 () Bool)

(assert (=> d!461324 true))

(declare-fun order!9887 () Int)

(declare-fun lambda!65828 () Int)

(declare-fun dynLambda!7447 (Int Int) Int)

(assert (=> d!461324 (< (dynLambda!7441 order!9881 (toValue!4314 (transformation!2945 rule!240))) (dynLambda!7447 order!9887 lambda!65828))))

(declare-fun Forall2!490 (Int) Bool)

(assert (=> d!461324 (= (equivClasses!1055 (toChars!4173 (transformation!2945 rule!240)) (toValue!4314 (transformation!2945 rule!240))) (Forall2!490 lambda!65828))))

(declare-fun bs!388306 () Bool)

(assert (= bs!388306 d!461324))

(declare-fun m!1827425 () Bool)

(assert (=> bs!388306 m!1827425))

(assert (=> b!1554128 d!461324))

(declare-fun d!461326 () Bool)

(declare-fun lt!538437 () Int)

(assert (=> d!461326 (>= lt!538437 0)))

(declare-fun e!997506 () Int)

(assert (=> d!461326 (= lt!538437 e!997506)))

(declare-fun c!252732 () Bool)

(assert (=> d!461326 (= c!252732 ((_ is Nil!16803) (_1!9463 lt!538307)))))

(assert (=> d!461326 (= (size!13604 (_1!9463 lt!538307)) lt!538437)))

(declare-fun b!1554820 () Bool)

(assert (=> b!1554820 (= e!997506 0)))

(declare-fun b!1554821 () Bool)

(assert (=> b!1554821 (= e!997506 (+ 1 (size!13604 (t!141314 (_1!9463 lt!538307)))))))

(assert (= (and d!461326 c!252732) b!1554820))

(assert (= (and d!461326 (not c!252732)) b!1554821))

(declare-fun m!1827427 () Bool)

(assert (=> b!1554821 m!1827427))

(assert (=> b!1554301 d!461326))

(assert (=> b!1554301 d!461126))

(declare-fun d!461328 () Bool)

(assert (=> d!461328 (= (inv!22076 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))) (isBalanced!1642 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))))

(declare-fun bs!388307 () Bool)

(assert (= bs!388307 d!461328))

(declare-fun m!1827429 () Bool)

(assert (=> bs!388307 m!1827429))

(assert (=> tb!87303 d!461328))

(declare-fun bs!388308 () Bool)

(declare-fun d!461330 () Bool)

(assert (= bs!388308 (and d!461330 d!461152)))

(declare-fun lambda!65829 () Int)

(assert (=> bs!388308 (= lambda!65829 lambda!65803)))

(declare-fun bs!388309 () Bool)

(assert (= bs!388309 (and d!461330 d!461274)))

(assert (=> bs!388309 (= lambda!65829 lambda!65814)))

(declare-fun bs!388310 () Bool)

(assert (= bs!388310 (and d!461330 d!461266)))

(assert (=> bs!388310 (= lambda!65829 lambda!65813)))

(declare-fun bs!388311 () Bool)

(assert (= bs!388311 (and d!461330 d!461320)))

(assert (=> bs!388311 (= lambda!65829 lambda!65824)))

(declare-fun bs!388312 () Bool)

(assert (= bs!388312 (and d!461330 d!461156)))

(assert (=> bs!388312 (= lambda!65829 lambda!65805)))

(declare-fun bs!388313 () Bool)

(assert (= bs!388313 (and d!461330 d!461154)))

(assert (=> bs!388313 (= lambda!65829 lambda!65804)))

(declare-fun bs!388314 () Bool)

(assert (= bs!388314 (and d!461330 d!461158)))

(assert (=> bs!388314 (= lambda!65829 lambda!65806)))

(declare-fun bs!388315 () Bool)

(assert (= bs!388315 (and d!461330 d!461286)))

(assert (=> bs!388315 (= lambda!65829 lambda!65818)))

(declare-fun bs!388316 () Bool)

(assert (= bs!388316 (and d!461330 d!461302)))

(assert (=> bs!388316 (= lambda!65829 lambda!65823)))

(declare-fun bs!388317 () Bool)

(assert (= bs!388317 (and d!461330 d!461292)))

(assert (=> bs!388317 (= lambda!65829 lambda!65819)))

(declare-fun bs!388318 () Bool)

(assert (= bs!388318 (and d!461330 d!461264)))

(assert (=> bs!388318 (= lambda!65829 lambda!65812)))

(declare-fun bs!388319 () Bool)

(assert (= bs!388319 (and d!461330 d!461186)))

(assert (=> bs!388319 (= lambda!65829 lambda!65810)))

(declare-fun bs!388320 () Bool)

(assert (= bs!388320 (and d!461330 d!461188)))

(assert (=> bs!388320 (= lambda!65829 lambda!65811)))

(declare-fun bs!388321 () Bool)

(assert (= bs!388321 (and d!461330 d!461322)))

(assert (=> bs!388321 (= lambda!65829 lambda!65825)))

(assert (=> d!461330 (= (inv!22082 (_2!9461 (_1!9462 (h!22208 mapDefault!8322)))) (forall!3925 (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapDefault!8322)))) lambda!65829))))

(declare-fun bs!388322 () Bool)

(assert (= bs!388322 d!461330))

(declare-fun m!1827431 () Bool)

(assert (=> bs!388322 m!1827431))

(assert (=> b!1554364 d!461330))

(assert (=> d!461056 d!461136))

(assert (=> d!461056 d!461220))

(assert (=> b!1554194 d!461160))

(declare-fun d!461332 () Bool)

(declare-fun lt!538438 () Int)

(assert (=> d!461332 (>= lt!538438 0)))

(declare-fun e!997507 () Int)

(assert (=> d!461332 (= lt!538438 e!997507)))

(declare-fun c!252733 () Bool)

(assert (=> d!461332 (= c!252733 ((_ is Nil!16803) (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))))))

(assert (=> d!461332 (= (size!13604 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))) lt!538438)))

(declare-fun b!1554822 () Bool)

(assert (=> b!1554822 (= e!997507 0)))

(declare-fun b!1554823 () Bool)

(assert (=> b!1554823 (= e!997507 (+ 1 (size!13604 (t!141314 (originalCharacters!3766 (_1!9466 (get!4845 lt!538217)))))))))

(assert (= (and d!461332 c!252733) b!1554822))

(assert (= (and d!461332 (not c!252733)) b!1554823))

(declare-fun m!1827433 () Bool)

(assert (=> b!1554823 m!1827433))

(assert (=> b!1554194 d!461332))

(declare-fun d!461334 () Bool)

(declare-fun c!252734 () Bool)

(assert (=> d!461334 (= c!252734 ((_ is Node!5563) (left!13662 (c!252615 totalInput!568))))))

(declare-fun e!997508 () Bool)

(assert (=> d!461334 (= (inv!22074 (left!13662 (c!252615 totalInput!568))) e!997508)))

(declare-fun b!1554824 () Bool)

(assert (=> b!1554824 (= e!997508 (inv!22080 (left!13662 (c!252615 totalInput!568))))))

(declare-fun b!1554825 () Bool)

(declare-fun e!997509 () Bool)

(assert (=> b!1554825 (= e!997508 e!997509)))

(declare-fun res!694172 () Bool)

(assert (=> b!1554825 (= res!694172 (not ((_ is Leaf!8245) (left!13662 (c!252615 totalInput!568)))))))

(assert (=> b!1554825 (=> res!694172 e!997509)))

(declare-fun b!1554826 () Bool)

(assert (=> b!1554826 (= e!997509 (inv!22081 (left!13662 (c!252615 totalInput!568))))))

(assert (= (and d!461334 c!252734) b!1554824))

(assert (= (and d!461334 (not c!252734)) b!1554825))

(assert (= (and b!1554825 (not res!694172)) b!1554826))

(declare-fun m!1827435 () Bool)

(assert (=> b!1554824 m!1827435))

(declare-fun m!1827437 () Bool)

(assert (=> b!1554826 m!1827437))

(assert (=> b!1554352 d!461334))

(declare-fun d!461336 () Bool)

(declare-fun c!252735 () Bool)

(assert (=> d!461336 (= c!252735 ((_ is Node!5563) (right!13992 (c!252615 totalInput!568))))))

(declare-fun e!997510 () Bool)

(assert (=> d!461336 (= (inv!22074 (right!13992 (c!252615 totalInput!568))) e!997510)))

(declare-fun b!1554827 () Bool)

(assert (=> b!1554827 (= e!997510 (inv!22080 (right!13992 (c!252615 totalInput!568))))))

(declare-fun b!1554828 () Bool)

(declare-fun e!997511 () Bool)

(assert (=> b!1554828 (= e!997510 e!997511)))

(declare-fun res!694173 () Bool)

(assert (=> b!1554828 (= res!694173 (not ((_ is Leaf!8245) (right!13992 (c!252615 totalInput!568)))))))

(assert (=> b!1554828 (=> res!694173 e!997511)))

(declare-fun b!1554829 () Bool)

(assert (=> b!1554829 (= e!997511 (inv!22081 (right!13992 (c!252615 totalInput!568))))))

(assert (= (and d!461336 c!252735) b!1554827))

(assert (= (and d!461336 (not c!252735)) b!1554828))

(assert (= (and b!1554828 (not res!694173)) b!1554829))

(declare-fun m!1827439 () Bool)

(assert (=> b!1554827 m!1827439))

(declare-fun m!1827441 () Bool)

(assert (=> b!1554829 m!1827441))

(assert (=> b!1554352 d!461336))

(declare-fun bs!388323 () Bool)

(declare-fun d!461338 () Bool)

(assert (= bs!388323 (and d!461338 d!461152)))

(declare-fun lambda!65830 () Int)

(assert (=> bs!388323 (= lambda!65830 lambda!65803)))

(declare-fun bs!388324 () Bool)

(assert (= bs!388324 (and d!461338 d!461274)))

(assert (=> bs!388324 (= lambda!65830 lambda!65814)))

(declare-fun bs!388325 () Bool)

(assert (= bs!388325 (and d!461338 d!461266)))

(assert (=> bs!388325 (= lambda!65830 lambda!65813)))

(declare-fun bs!388326 () Bool)

(assert (= bs!388326 (and d!461338 d!461320)))

(assert (=> bs!388326 (= lambda!65830 lambda!65824)))

(declare-fun bs!388327 () Bool)

(assert (= bs!388327 (and d!461338 d!461156)))

(assert (=> bs!388327 (= lambda!65830 lambda!65805)))

(declare-fun bs!388328 () Bool)

(assert (= bs!388328 (and d!461338 d!461154)))

(assert (=> bs!388328 (= lambda!65830 lambda!65804)))

(declare-fun bs!388329 () Bool)

(assert (= bs!388329 (and d!461338 d!461330)))

(assert (=> bs!388329 (= lambda!65830 lambda!65829)))

(declare-fun bs!388330 () Bool)

(assert (= bs!388330 (and d!461338 d!461158)))

(assert (=> bs!388330 (= lambda!65830 lambda!65806)))

(declare-fun bs!388331 () Bool)

(assert (= bs!388331 (and d!461338 d!461286)))

(assert (=> bs!388331 (= lambda!65830 lambda!65818)))

(declare-fun bs!388332 () Bool)

(assert (= bs!388332 (and d!461338 d!461302)))

(assert (=> bs!388332 (= lambda!65830 lambda!65823)))

(declare-fun bs!388333 () Bool)

(assert (= bs!388333 (and d!461338 d!461292)))

(assert (=> bs!388333 (= lambda!65830 lambda!65819)))

(declare-fun bs!388334 () Bool)

(assert (= bs!388334 (and d!461338 d!461264)))

(assert (=> bs!388334 (= lambda!65830 lambda!65812)))

(declare-fun bs!388335 () Bool)

(assert (= bs!388335 (and d!461338 d!461186)))

(assert (=> bs!388335 (= lambda!65830 lambda!65810)))

(declare-fun bs!388336 () Bool)

(assert (= bs!388336 (and d!461338 d!461188)))

(assert (=> bs!388336 (= lambda!65830 lambda!65811)))

(declare-fun bs!388337 () Bool)

(assert (= bs!388337 (and d!461338 d!461322)))

(assert (=> bs!388337 (= lambda!65830 lambda!65825)))

(assert (=> d!461338 (= (inv!22082 setElem!10787) (forall!3925 (exprs!1291 setElem!10787) lambda!65830))))

(declare-fun bs!388338 () Bool)

(assert (= bs!388338 d!461338))

(declare-fun m!1827443 () Bool)

(assert (=> bs!388338 m!1827443))

(assert (=> setNonEmpty!10787 d!461338))

(assert (=> d!461100 d!461220))

(declare-fun b!1554830 () Bool)

(declare-fun res!694174 () Bool)

(declare-fun e!997512 () Bool)

(assert (=> b!1554830 (=> (not res!694174) (not e!997512))))

(assert (=> b!1554830 (= res!694174 (not (isEmpty!10109 (left!13662 (c!252615 input!1676)))))))

(declare-fun b!1554831 () Bool)

(assert (=> b!1554831 (= e!997512 (not (isEmpty!10109 (right!13992 (c!252615 input!1676)))))))

(declare-fun b!1554832 () Bool)

(declare-fun res!694179 () Bool)

(assert (=> b!1554832 (=> (not res!694179) (not e!997512))))

(assert (=> b!1554832 (= res!694179 (<= (- (height!829 (left!13662 (c!252615 input!1676))) (height!829 (right!13992 (c!252615 input!1676)))) 1))))

(declare-fun b!1554833 () Bool)

(declare-fun res!694175 () Bool)

(assert (=> b!1554833 (=> (not res!694175) (not e!997512))))

(assert (=> b!1554833 (= res!694175 (isBalanced!1642 (left!13662 (c!252615 input!1676))))))

(declare-fun b!1554834 () Bool)

(declare-fun e!997513 () Bool)

(assert (=> b!1554834 (= e!997513 e!997512)))

(declare-fun res!694176 () Bool)

(assert (=> b!1554834 (=> (not res!694176) (not e!997512))))

(assert (=> b!1554834 (= res!694176 (<= (- 1) (- (height!829 (left!13662 (c!252615 input!1676))) (height!829 (right!13992 (c!252615 input!1676))))))))

(declare-fun b!1554835 () Bool)

(declare-fun res!694178 () Bool)

(assert (=> b!1554835 (=> (not res!694178) (not e!997512))))

(assert (=> b!1554835 (= res!694178 (isBalanced!1642 (right!13992 (c!252615 input!1676))))))

(declare-fun d!461340 () Bool)

(declare-fun res!694177 () Bool)

(assert (=> d!461340 (=> res!694177 e!997513)))

(assert (=> d!461340 (= res!694177 (not ((_ is Node!5563) (c!252615 input!1676))))))

(assert (=> d!461340 (= (isBalanced!1642 (c!252615 input!1676)) e!997513)))

(assert (= (and d!461340 (not res!694177)) b!1554834))

(assert (= (and b!1554834 res!694176) b!1554832))

(assert (= (and b!1554832 res!694179) b!1554833))

(assert (= (and b!1554833 res!694175) b!1554835))

(assert (= (and b!1554835 res!694178) b!1554830))

(assert (= (and b!1554830 res!694174) b!1554831))

(declare-fun m!1827445 () Bool)

(assert (=> b!1554831 m!1827445))

(assert (=> b!1554834 m!1827034))

(assert (=> b!1554834 m!1827036))

(declare-fun m!1827447 () Bool)

(assert (=> b!1554835 m!1827447))

(declare-fun m!1827449 () Bool)

(assert (=> b!1554830 m!1827449))

(declare-fun m!1827451 () Bool)

(assert (=> b!1554833 m!1827451))

(assert (=> b!1554832 m!1827034))

(assert (=> b!1554832 m!1827036))

(assert (=> d!461096 d!461340))

(declare-fun d!461342 () Bool)

(declare-fun res!694184 () Bool)

(declare-fun e!997516 () Bool)

(assert (=> d!461342 (=> (not res!694184) (not e!997516))))

(assert (=> d!461342 (= res!694184 (<= (size!13604 (list!6491 (xs!8363 (c!252615 input!1676)))) 512))))

(assert (=> d!461342 (= (inv!22081 (c!252615 input!1676)) e!997516)))

(declare-fun b!1554840 () Bool)

(declare-fun res!694185 () Bool)

(assert (=> b!1554840 (=> (not res!694185) (not e!997516))))

(assert (=> b!1554840 (= res!694185 (= (csize!11357 (c!252615 input!1676)) (size!13604 (list!6491 (xs!8363 (c!252615 input!1676))))))))

(declare-fun b!1554841 () Bool)

(assert (=> b!1554841 (= e!997516 (and (> (csize!11357 (c!252615 input!1676)) 0) (<= (csize!11357 (c!252615 input!1676)) 512)))))

(assert (= (and d!461342 res!694184) b!1554840))

(assert (= (and b!1554840 res!694185) b!1554841))

(assert (=> d!461342 m!1827050))

(assert (=> d!461342 m!1827050))

(declare-fun m!1827453 () Bool)

(assert (=> d!461342 m!1827453))

(assert (=> b!1554840 m!1827050))

(assert (=> b!1554840 m!1827050))

(assert (=> b!1554840 m!1827453))

(assert (=> b!1554208 d!461342))

(declare-fun d!461344 () Bool)

(assert (=> d!461344 (= (isEmpty!10108 (maxPrefixOneRule!701 thiss!16438 rule!240 lt!538190)) (not ((_ is Some!3031) (maxPrefixOneRule!701 thiss!16438 rule!240 lt!538190))))))

(assert (=> d!461074 d!461344))

(assert (=> b!1554162 d!461202))

(declare-fun bs!388339 () Bool)

(declare-fun d!461346 () Bool)

(assert (= bs!388339 (and d!461346 d!461274)))

(declare-fun lambda!65831 () Int)

(assert (=> bs!388339 (= lambda!65831 lambda!65814)))

(declare-fun bs!388340 () Bool)

(assert (= bs!388340 (and d!461346 d!461266)))

(assert (=> bs!388340 (= lambda!65831 lambda!65813)))

(declare-fun bs!388341 () Bool)

(assert (= bs!388341 (and d!461346 d!461320)))

(assert (=> bs!388341 (= lambda!65831 lambda!65824)))

(declare-fun bs!388342 () Bool)

(assert (= bs!388342 (and d!461346 d!461156)))

(assert (=> bs!388342 (= lambda!65831 lambda!65805)))

(declare-fun bs!388343 () Bool)

(assert (= bs!388343 (and d!461346 d!461154)))

(assert (=> bs!388343 (= lambda!65831 lambda!65804)))

(declare-fun bs!388344 () Bool)

(assert (= bs!388344 (and d!461346 d!461330)))

(assert (=> bs!388344 (= lambda!65831 lambda!65829)))

(declare-fun bs!388345 () Bool)

(assert (= bs!388345 (and d!461346 d!461152)))

(assert (=> bs!388345 (= lambda!65831 lambda!65803)))

(declare-fun bs!388346 () Bool)

(assert (= bs!388346 (and d!461346 d!461338)))

(assert (=> bs!388346 (= lambda!65831 lambda!65830)))

(declare-fun bs!388347 () Bool)

(assert (= bs!388347 (and d!461346 d!461158)))

(assert (=> bs!388347 (= lambda!65831 lambda!65806)))

(declare-fun bs!388348 () Bool)

(assert (= bs!388348 (and d!461346 d!461286)))

(assert (=> bs!388348 (= lambda!65831 lambda!65818)))

(declare-fun bs!388349 () Bool)

(assert (= bs!388349 (and d!461346 d!461302)))

(assert (=> bs!388349 (= lambda!65831 lambda!65823)))

(declare-fun bs!388350 () Bool)

(assert (= bs!388350 (and d!461346 d!461292)))

(assert (=> bs!388350 (= lambda!65831 lambda!65819)))

(declare-fun bs!388351 () Bool)

(assert (= bs!388351 (and d!461346 d!461264)))

(assert (=> bs!388351 (= lambda!65831 lambda!65812)))

(declare-fun bs!388352 () Bool)

(assert (= bs!388352 (and d!461346 d!461186)))

(assert (=> bs!388352 (= lambda!65831 lambda!65810)))

(declare-fun bs!388353 () Bool)

(assert (= bs!388353 (and d!461346 d!461188)))

(assert (=> bs!388353 (= lambda!65831 lambda!65811)))

(declare-fun bs!388354 () Bool)

(assert (= bs!388354 (and d!461346 d!461322)))

(assert (=> bs!388354 (= lambda!65831 lambda!65825)))

(assert (=> d!461346 (= (inv!22082 setElem!10786) (forall!3925 (exprs!1291 setElem!10786) lambda!65831))))

(declare-fun bs!388355 () Bool)

(assert (= bs!388355 d!461346))

(declare-fun m!1827455 () Bool)

(assert (=> bs!388355 m!1827455))

(assert (=> setNonEmpty!10786 d!461346))

(declare-fun d!461348 () Bool)

(assert (=> d!461348 (isPrefix!1259 lt!538190 lt!538190)))

(declare-fun lt!538441 () Unit!26051)

(declare-fun choose!9279 (List!16871 List!16871) Unit!26051)

(assert (=> d!461348 (= lt!538441 (choose!9279 lt!538190 lt!538190))))

(assert (=> d!461348 (= (lemmaIsPrefixRefl!889 lt!538190 lt!538190) lt!538441)))

(declare-fun bs!388356 () Bool)

(assert (= bs!388356 d!461348))

(assert (=> bs!388356 m!1826801))

(declare-fun m!1827457 () Bool)

(assert (=> bs!388356 m!1827457))

(assert (=> bm!101959 d!461348))

(assert (=> b!1554096 d!461080))

(declare-fun d!461350 () Bool)

(declare-fun res!694186 () Bool)

(declare-fun e!997517 () Bool)

(assert (=> d!461350 (=> (not res!694186) (not e!997517))))

(assert (=> d!461350 (= res!694186 (<= (size!13604 (list!6491 (xs!8363 (c!252615 totalInput!568)))) 512))))

(assert (=> d!461350 (= (inv!22081 (c!252615 totalInput!568)) e!997517)))

(declare-fun b!1554842 () Bool)

(declare-fun res!694187 () Bool)

(assert (=> b!1554842 (=> (not res!694187) (not e!997517))))

(assert (=> b!1554842 (= res!694187 (= (csize!11357 (c!252615 totalInput!568)) (size!13604 (list!6491 (xs!8363 (c!252615 totalInput!568))))))))

(declare-fun b!1554843 () Bool)

(assert (=> b!1554843 (= e!997517 (and (> (csize!11357 (c!252615 totalInput!568)) 0) (<= (csize!11357 (c!252615 totalInput!568)) 512)))))

(assert (= (and d!461350 res!694186) b!1554842))

(assert (= (and b!1554842 res!694187) b!1554843))

(declare-fun m!1827459 () Bool)

(assert (=> d!461350 m!1827459))

(assert (=> d!461350 m!1827459))

(declare-fun m!1827461 () Bool)

(assert (=> d!461350 m!1827461))

(assert (=> b!1554842 m!1827459))

(assert (=> b!1554842 m!1827459))

(assert (=> b!1554842 m!1827461))

(assert (=> b!1554211 d!461350))

(declare-fun b!1554862 () Bool)

(declare-fun e!997530 () List!16871)

(assert (=> b!1554862 (= e!997530 Nil!16803)))

(declare-fun b!1554863 () Bool)

(declare-fun e!997528 () Bool)

(declare-fun lt!538444 () List!16871)

(declare-fun e!997532 () Int)

(assert (=> b!1554863 (= e!997528 (= (size!13604 lt!538444) e!997532))))

(declare-fun c!252744 () Bool)

(assert (=> b!1554863 (= c!252744 (<= (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190)) 0))))

(declare-fun call!102008 () Int)

(declare-fun b!1554864 () Bool)

(declare-fun e!997531 () Int)

(assert (=> b!1554864 (= e!997531 (- call!102008 (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190))))))

(declare-fun b!1554865 () Bool)

(assert (=> b!1554865 (= e!997532 call!102008)))

(declare-fun d!461352 () Bool)

(assert (=> d!461352 e!997528))

(declare-fun res!694190 () Bool)

(assert (=> d!461352 (=> (not res!694190) (not e!997528))))

(assert (=> d!461352 (= res!694190 (= ((_ map implies) (content!2342 lt!538444) (content!2342 (list!6489 totalInput!568))) ((as const (InoxSet C!8724)) true)))))

(assert (=> d!461352 (= lt!538444 e!997530)))

(declare-fun c!252747 () Bool)

(assert (=> d!461352 (= c!252747 ((_ is Nil!16803) (list!6489 totalInput!568)))))

(assert (=> d!461352 (= (drop!784 (list!6489 totalInput!568) (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190))) lt!538444)))

(declare-fun b!1554866 () Bool)

(declare-fun e!997529 () List!16871)

(assert (=> b!1554866 (= e!997529 (drop!784 (t!141314 (list!6489 totalInput!568)) (- (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190)) 1)))))

(declare-fun b!1554867 () Bool)

(assert (=> b!1554867 (= e!997530 e!997529)))

(declare-fun c!252745 () Bool)

(assert (=> b!1554867 (= c!252745 (<= (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190)) 0))))

(declare-fun b!1554868 () Bool)

(assert (=> b!1554868 (= e!997529 (list!6489 totalInput!568))))

(declare-fun bm!102003 () Bool)

(assert (=> bm!102003 (= call!102008 (size!13604 (list!6489 totalInput!568)))))

(declare-fun b!1554869 () Bool)

(assert (=> b!1554869 (= e!997532 e!997531)))

(declare-fun c!252746 () Bool)

(assert (=> b!1554869 (= c!252746 (>= (- (size!13604 (list!6489 totalInput!568)) (size!13604 lt!538190)) call!102008))))

(declare-fun b!1554870 () Bool)

(assert (=> b!1554870 (= e!997531 0)))

(assert (= (and d!461352 c!252747) b!1554862))

(assert (= (and d!461352 (not c!252747)) b!1554867))

(assert (= (and b!1554867 c!252745) b!1554868))

(assert (= (and b!1554867 (not c!252745)) b!1554866))

(assert (= (and d!461352 res!694190) b!1554863))

(assert (= (and b!1554863 c!252744) b!1554865))

(assert (= (and b!1554863 (not c!252744)) b!1554869))

(assert (= (and b!1554869 c!252746) b!1554870))

(assert (= (and b!1554869 (not c!252746)) b!1554864))

(assert (= (or b!1554865 b!1554869 b!1554864) bm!102003))

(declare-fun m!1827463 () Bool)

(assert (=> b!1554863 m!1827463))

(declare-fun m!1827465 () Bool)

(assert (=> d!461352 m!1827465))

(assert (=> d!461352 m!1826643))

(declare-fun m!1827467 () Bool)

(assert (=> d!461352 m!1827467))

(declare-fun m!1827469 () Bool)

(assert (=> b!1554866 m!1827469))

(assert (=> bm!102003 m!1826643))

(assert (=> bm!102003 m!1826763))

(assert (=> d!461110 d!461352))

(assert (=> d!461110 d!461316))

(assert (=> d!461110 d!461132))

(assert (=> b!1554232 d!461298))

(declare-fun d!461354 () Bool)

(assert (=> d!461354 (= (valid!1439 (_2!9465 lt!538228)) (validCacheMapUp!160 (cache!2116 (_2!9465 lt!538228))))))

(declare-fun bs!388357 () Bool)

(assert (= bs!388357 d!461354))

(declare-fun m!1827471 () Bool)

(assert (=> bs!388357 m!1827471))

(assert (=> b!1554221 d!461354))

(declare-fun b!1554874 () Bool)

(declare-fun e!997533 () Bool)

(assert (=> b!1554874 (= e!997533 (>= (size!13604 lt!538190) (size!13604 lt!538190)))))

(declare-fun d!461356 () Bool)

(assert (=> d!461356 e!997533))

(declare-fun res!694192 () Bool)

(assert (=> d!461356 (=> res!694192 e!997533)))

(declare-fun lt!538445 () Bool)

(assert (=> d!461356 (= res!694192 (not lt!538445))))

(declare-fun e!997535 () Bool)

(assert (=> d!461356 (= lt!538445 e!997535)))

(declare-fun res!694194 () Bool)

(assert (=> d!461356 (=> res!694194 e!997535)))

(assert (=> d!461356 (= res!694194 ((_ is Nil!16803) lt!538190))))

(assert (=> d!461356 (= (isPrefix!1259 lt!538190 lt!538190) lt!538445)))

(declare-fun b!1554873 () Bool)

(declare-fun e!997534 () Bool)

(assert (=> b!1554873 (= e!997534 (isPrefix!1259 (tail!2207 lt!538190) (tail!2207 lt!538190)))))

(declare-fun b!1554871 () Bool)

(assert (=> b!1554871 (= e!997535 e!997534)))

(declare-fun res!694191 () Bool)

(assert (=> b!1554871 (=> (not res!694191) (not e!997534))))

(assert (=> b!1554871 (= res!694191 (not ((_ is Nil!16803) lt!538190)))))

(declare-fun b!1554872 () Bool)

(declare-fun res!694193 () Bool)

(assert (=> b!1554872 (=> (not res!694193) (not e!997534))))

(assert (=> b!1554872 (= res!694193 (= (head!3112 lt!538190) (head!3112 lt!538190)))))

(assert (= (and d!461356 (not res!694194)) b!1554871))

(assert (= (and b!1554871 res!694191) b!1554872))

(assert (= (and b!1554872 res!694193) b!1554873))

(assert (= (and d!461356 (not res!694192)) b!1554874))

(assert (=> b!1554874 m!1826563))

(assert (=> b!1554874 m!1826563))

(assert (=> b!1554873 m!1826823))

(assert (=> b!1554873 m!1826823))

(assert (=> b!1554873 m!1826823))

(assert (=> b!1554873 m!1826823))

(declare-fun m!1827473 () Bool)

(assert (=> b!1554873 m!1827473))

(assert (=> b!1554872 m!1826817))

(assert (=> b!1554872 m!1826817))

(assert (=> bm!101961 d!461356))

(assert (=> b!1554195 d!461256))

(assert (=> b!1554195 d!461134))

(assert (=> b!1554195 d!461126))

(assert (=> b!1554195 d!461132))

(declare-fun b!1554875 () Bool)

(declare-fun res!694195 () Bool)

(declare-fun e!997536 () Bool)

(assert (=> b!1554875 (=> (not res!694195) (not e!997536))))

(assert (=> b!1554875 (= res!694195 (not (isEmpty!10109 (left!13662 (c!252615 totalInput!568)))))))

(declare-fun b!1554876 () Bool)

(assert (=> b!1554876 (= e!997536 (not (isEmpty!10109 (right!13992 (c!252615 totalInput!568)))))))

(declare-fun b!1554877 () Bool)

(declare-fun res!694200 () Bool)

(assert (=> b!1554877 (=> (not res!694200) (not e!997536))))

(assert (=> b!1554877 (= res!694200 (<= (- (height!829 (left!13662 (c!252615 totalInput!568))) (height!829 (right!13992 (c!252615 totalInput!568)))) 1))))

(declare-fun b!1554878 () Bool)

(declare-fun res!694196 () Bool)

(assert (=> b!1554878 (=> (not res!694196) (not e!997536))))

(assert (=> b!1554878 (= res!694196 (isBalanced!1642 (left!13662 (c!252615 totalInput!568))))))

(declare-fun b!1554879 () Bool)

(declare-fun e!997537 () Bool)

(assert (=> b!1554879 (= e!997537 e!997536)))

(declare-fun res!694197 () Bool)

(assert (=> b!1554879 (=> (not res!694197) (not e!997536))))

(assert (=> b!1554879 (= res!694197 (<= (- 1) (- (height!829 (left!13662 (c!252615 totalInput!568))) (height!829 (right!13992 (c!252615 totalInput!568))))))))

(declare-fun b!1554880 () Bool)

(declare-fun res!694199 () Bool)

(assert (=> b!1554880 (=> (not res!694199) (not e!997536))))

(assert (=> b!1554880 (= res!694199 (isBalanced!1642 (right!13992 (c!252615 totalInput!568))))))

(declare-fun d!461358 () Bool)

(declare-fun res!694198 () Bool)

(assert (=> d!461358 (=> res!694198 e!997537)))

(assert (=> d!461358 (= res!694198 (not ((_ is Node!5563) (c!252615 totalInput!568))))))

(assert (=> d!461358 (= (isBalanced!1642 (c!252615 totalInput!568)) e!997537)))

(assert (= (and d!461358 (not res!694198)) b!1554879))

(assert (= (and b!1554879 res!694197) b!1554877))

(assert (= (and b!1554877 res!694200) b!1554878))

(assert (= (and b!1554878 res!694196) b!1554880))

(assert (= (and b!1554880 res!694199) b!1554875))

(assert (= (and b!1554875 res!694195) b!1554876))

(declare-fun m!1827475 () Bool)

(assert (=> b!1554876 m!1827475))

(assert (=> b!1554879 m!1827336))

(assert (=> b!1554879 m!1827338))

(declare-fun m!1827477 () Bool)

(assert (=> b!1554880 m!1827477))

(declare-fun m!1827479 () Bool)

(assert (=> b!1554875 m!1827479))

(declare-fun m!1827481 () Bool)

(assert (=> b!1554878 m!1827481))

(assert (=> b!1554877 m!1827336))

(assert (=> b!1554877 m!1827338))

(assert (=> d!461090 d!461358))

(declare-fun d!461360 () Bool)

(assert (=> d!461360 (= (inv!22083 (xs!8363 (c!252615 totalInput!568))) (<= (size!13604 (innerList!5623 (xs!8363 (c!252615 totalInput!568)))) 2147483647))))

(declare-fun bs!388358 () Bool)

(assert (= bs!388358 d!461360))

(declare-fun m!1827483 () Bool)

(assert (=> bs!388358 m!1827483))

(assert (=> b!1554353 d!461360))

(declare-fun d!461362 () Bool)

(declare-fun c!252748 () Bool)

(assert (=> d!461362 (= c!252748 ((_ is Node!5563) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))))

(declare-fun e!997538 () Bool)

(assert (=> d!461362 (= (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))) e!997538)))

(declare-fun b!1554881 () Bool)

(assert (=> b!1554881 (= e!997538 (inv!22080 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))))

(declare-fun b!1554882 () Bool)

(declare-fun e!997539 () Bool)

(assert (=> b!1554882 (= e!997538 e!997539)))

(declare-fun res!694201 () Bool)

(assert (=> b!1554882 (= res!694201 (not ((_ is Leaf!8245) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))))))

(assert (=> b!1554882 (=> res!694201 e!997539)))

(declare-fun b!1554883 () Bool)

(assert (=> b!1554883 (= e!997539 (inv!22081 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))))))

(assert (= (and d!461362 c!252748) b!1554881))

(assert (= (and d!461362 (not c!252748)) b!1554882))

(assert (= (and b!1554882 (not res!694201)) b!1554883))

(declare-fun m!1827485 () Bool)

(assert (=> b!1554881 m!1827485))

(declare-fun m!1827487 () Bool)

(assert (=> b!1554883 m!1827487))

(assert (=> b!1554449 d!461362))

(declare-fun d!461364 () Bool)

(declare-fun res!694202 () Bool)

(declare-fun e!997540 () Bool)

(assert (=> d!461364 (=> (not res!694202) (not e!997540))))

(assert (=> d!461364 (= res!694202 (<= (size!13604 (list!6491 (xs!8363 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) 512))))

(assert (=> d!461364 (= (inv!22081 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) e!997540)))

(declare-fun b!1554884 () Bool)

(declare-fun res!694203 () Bool)

(assert (=> b!1554884 (=> (not res!694203) (not e!997540))))

(assert (=> b!1554884 (= res!694203 (= (csize!11357 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) (size!13604 (list!6491 (xs!8363 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))))

(declare-fun b!1554885 () Bool)

(assert (=> b!1554885 (= e!997540 (and (> (csize!11357 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) 0) (<= (csize!11357 (c!252615 (totalInput!2456 cacheFurthestNullable!103))) 512)))))

(assert (= (and d!461364 res!694202) b!1554884))

(assert (= (and b!1554884 res!694203) b!1554885))

(declare-fun m!1827489 () Bool)

(assert (=> d!461364 m!1827489))

(assert (=> d!461364 m!1827489))

(declare-fun m!1827491 () Bool)

(assert (=> d!461364 m!1827491))

(assert (=> b!1554884 m!1827489))

(assert (=> b!1554884 m!1827489))

(assert (=> b!1554884 m!1827491))

(assert (=> b!1554244 d!461364))

(declare-fun bm!102004 () Bool)

(declare-fun call!102009 () Bool)

(assert (=> bm!102004 (= call!102009 (isEmpty!10106 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))))))

(declare-fun b!1554886 () Bool)

(declare-fun e!997541 () Bool)

(assert (=> b!1554886 (= e!997541 (= (head!3112 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) (c!252616 (regex!2945 rule!240))))))

(declare-fun b!1554887 () Bool)

(declare-fun e!997542 () Bool)

(declare-fun e!997544 () Bool)

(assert (=> b!1554887 (= e!997542 e!997544)))

(declare-fun c!252750 () Bool)

(assert (=> b!1554887 (= c!252750 ((_ is EmptyLang!4273) (regex!2945 rule!240)))))

(declare-fun b!1554888 () Bool)

(declare-fun res!694211 () Bool)

(assert (=> b!1554888 (=> (not res!694211) (not e!997541))))

(assert (=> b!1554888 (= res!694211 (isEmpty!10106 (tail!2207 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))))))))

(declare-fun b!1554890 () Bool)

(declare-fun e!997547 () Bool)

(assert (=> b!1554890 (= e!997547 (nullable!1269 (regex!2945 rule!240)))))

(declare-fun b!1554891 () Bool)

(declare-fun e!997545 () Bool)

(assert (=> b!1554891 (= e!997545 (not (= (head!3112 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) (c!252616 (regex!2945 rule!240)))))))

(declare-fun b!1554892 () Bool)

(declare-fun lt!538446 () Bool)

(assert (=> b!1554892 (= e!997542 (= lt!538446 call!102009))))

(declare-fun b!1554893 () Bool)

(declare-fun res!694206 () Bool)

(assert (=> b!1554893 (=> res!694206 e!997545)))

(assert (=> b!1554893 (= res!694206 (not (isEmpty!10106 (tail!2207 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))))))))

(declare-fun b!1554894 () Bool)

(declare-fun res!694210 () Bool)

(declare-fun e!997543 () Bool)

(assert (=> b!1554894 (=> res!694210 e!997543)))

(assert (=> b!1554894 (= res!694210 e!997541)))

(declare-fun res!694208 () Bool)

(assert (=> b!1554894 (=> (not res!694208) (not e!997541))))

(assert (=> b!1554894 (= res!694208 lt!538446)))

(declare-fun b!1554889 () Bool)

(assert (=> b!1554889 (= e!997544 (not lt!538446))))

(declare-fun d!461366 () Bool)

(assert (=> d!461366 e!997542))

(declare-fun c!252749 () Bool)

(assert (=> d!461366 (= c!252749 ((_ is EmptyExpr!4273) (regex!2945 rule!240)))))

(assert (=> d!461366 (= lt!538446 e!997547)))

(declare-fun c!252751 () Bool)

(assert (=> d!461366 (= c!252751 (isEmpty!10106 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))))))

(assert (=> d!461366 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461366 (= (matchR!1877 (regex!2945 rule!240) (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217))))) lt!538446)))

(declare-fun b!1554895 () Bool)

(declare-fun res!694205 () Bool)

(assert (=> b!1554895 (=> (not res!694205) (not e!997541))))

(assert (=> b!1554895 (= res!694205 (not call!102009))))

(declare-fun b!1554896 () Bool)

(declare-fun res!694207 () Bool)

(assert (=> b!1554896 (=> res!694207 e!997543)))

(assert (=> b!1554896 (= res!694207 (not ((_ is ElementMatch!4273) (regex!2945 rule!240))))))

(assert (=> b!1554896 (= e!997544 e!997543)))

(declare-fun b!1554897 () Bool)

(declare-fun e!997546 () Bool)

(assert (=> b!1554897 (= e!997543 e!997546)))

(declare-fun res!694209 () Bool)

(assert (=> b!1554897 (=> (not res!694209) (not e!997546))))

(assert (=> b!1554897 (= res!694209 (not lt!538446))))

(declare-fun b!1554898 () Bool)

(assert (=> b!1554898 (= e!997547 (matchR!1877 (derivativeStep!1021 (regex!2945 rule!240) (head!3112 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))))) (tail!2207 (list!6489 (charsOf!1645 (_1!9466 (get!4845 lt!538217)))))))))

(declare-fun b!1554899 () Bool)

(assert (=> b!1554899 (= e!997546 e!997545)))

(declare-fun res!694204 () Bool)

(assert (=> b!1554899 (=> res!694204 e!997545)))

(assert (=> b!1554899 (= res!694204 call!102009)))

(assert (= (and d!461366 c!252751) b!1554890))

(assert (= (and d!461366 (not c!252751)) b!1554898))

(assert (= (and d!461366 c!252749) b!1554892))

(assert (= (and d!461366 (not c!252749)) b!1554887))

(assert (= (and b!1554887 c!252750) b!1554889))

(assert (= (and b!1554887 (not c!252750)) b!1554896))

(assert (= (and b!1554896 (not res!694207)) b!1554894))

(assert (= (and b!1554894 res!694208) b!1554895))

(assert (= (and b!1554895 res!694205) b!1554888))

(assert (= (and b!1554888 res!694211) b!1554886))

(assert (= (and b!1554894 (not res!694210)) b!1554897))

(assert (= (and b!1554897 res!694209) b!1554899))

(assert (= (and b!1554899 (not res!694204)) b!1554893))

(assert (= (and b!1554893 (not res!694206)) b!1554891))

(assert (= (or b!1554892 b!1554895 b!1554899) bm!102004))

(assert (=> b!1554888 m!1826705))

(declare-fun m!1827493 () Bool)

(assert (=> b!1554888 m!1827493))

(assert (=> b!1554888 m!1827493))

(declare-fun m!1827495 () Bool)

(assert (=> b!1554888 m!1827495))

(assert (=> b!1554891 m!1826705))

(declare-fun m!1827497 () Bool)

(assert (=> b!1554891 m!1827497))

(assert (=> b!1554890 m!1826657))

(assert (=> d!461366 m!1826705))

(declare-fun m!1827499 () Bool)

(assert (=> d!461366 m!1827499))

(assert (=> d!461366 m!1826659))

(assert (=> b!1554893 m!1826705))

(assert (=> b!1554893 m!1827493))

(assert (=> b!1554893 m!1827493))

(assert (=> b!1554893 m!1827495))

(assert (=> bm!102004 m!1826705))

(assert (=> bm!102004 m!1827499))

(assert (=> b!1554898 m!1826705))

(assert (=> b!1554898 m!1827497))

(assert (=> b!1554898 m!1827497))

(declare-fun m!1827501 () Bool)

(assert (=> b!1554898 m!1827501))

(assert (=> b!1554898 m!1826705))

(assert (=> b!1554898 m!1827493))

(assert (=> b!1554898 m!1827501))

(assert (=> b!1554898 m!1827493))

(declare-fun m!1827503 () Bool)

(assert (=> b!1554898 m!1827503))

(assert (=> b!1554886 m!1826705))

(assert (=> b!1554886 m!1827497))

(assert (=> b!1554199 d!461366))

(assert (=> b!1554199 d!461208))

(assert (=> b!1554199 d!461210))

(assert (=> b!1554199 d!461160))

(assert (=> d!461054 d!461130))

(declare-fun bs!388359 () Bool)

(declare-fun d!461368 () Bool)

(assert (= bs!388359 (and d!461368 d!461274)))

(declare-fun lambda!65832 () Int)

(assert (=> bs!388359 (= lambda!65832 lambda!65814)))

(declare-fun bs!388360 () Bool)

(assert (= bs!388360 (and d!461368 d!461266)))

(assert (=> bs!388360 (= lambda!65832 lambda!65813)))

(declare-fun bs!388361 () Bool)

(assert (= bs!388361 (and d!461368 d!461320)))

(assert (=> bs!388361 (= lambda!65832 lambda!65824)))

(declare-fun bs!388362 () Bool)

(assert (= bs!388362 (and d!461368 d!461156)))

(assert (=> bs!388362 (= lambda!65832 lambda!65805)))

(declare-fun bs!388363 () Bool)

(assert (= bs!388363 (and d!461368 d!461154)))

(assert (=> bs!388363 (= lambda!65832 lambda!65804)))

(declare-fun bs!388364 () Bool)

(assert (= bs!388364 (and d!461368 d!461346)))

(assert (=> bs!388364 (= lambda!65832 lambda!65831)))

(declare-fun bs!388365 () Bool)

(assert (= bs!388365 (and d!461368 d!461330)))

(assert (=> bs!388365 (= lambda!65832 lambda!65829)))

(declare-fun bs!388366 () Bool)

(assert (= bs!388366 (and d!461368 d!461152)))

(assert (=> bs!388366 (= lambda!65832 lambda!65803)))

(declare-fun bs!388367 () Bool)

(assert (= bs!388367 (and d!461368 d!461338)))

(assert (=> bs!388367 (= lambda!65832 lambda!65830)))

(declare-fun bs!388368 () Bool)

(assert (= bs!388368 (and d!461368 d!461158)))

(assert (=> bs!388368 (= lambda!65832 lambda!65806)))

(declare-fun bs!388369 () Bool)

(assert (= bs!388369 (and d!461368 d!461286)))

(assert (=> bs!388369 (= lambda!65832 lambda!65818)))

(declare-fun bs!388370 () Bool)

(assert (= bs!388370 (and d!461368 d!461302)))

(assert (=> bs!388370 (= lambda!65832 lambda!65823)))

(declare-fun bs!388371 () Bool)

(assert (= bs!388371 (and d!461368 d!461292)))

(assert (=> bs!388371 (= lambda!65832 lambda!65819)))

(declare-fun bs!388372 () Bool)

(assert (= bs!388372 (and d!461368 d!461264)))

(assert (=> bs!388372 (= lambda!65832 lambda!65812)))

(declare-fun bs!388373 () Bool)

(assert (= bs!388373 (and d!461368 d!461186)))

(assert (=> bs!388373 (= lambda!65832 lambda!65810)))

(declare-fun bs!388374 () Bool)

(assert (= bs!388374 (and d!461368 d!461188)))

(assert (=> bs!388374 (= lambda!65832 lambda!65811)))

(declare-fun bs!388375 () Bool)

(assert (= bs!388375 (and d!461368 d!461322)))

(assert (=> bs!388375 (= lambda!65832 lambda!65825)))

(assert (=> d!461368 (= (inv!22082 setElem!10794) (forall!3925 (exprs!1291 setElem!10794) lambda!65832))))

(declare-fun bs!388376 () Bool)

(assert (= bs!388376 d!461368))

(declare-fun m!1827505 () Bool)

(assert (=> bs!388376 m!1827505))

(assert (=> setNonEmpty!10793 d!461368))

(declare-fun bs!388377 () Bool)

(declare-fun d!461370 () Bool)

(assert (= bs!388377 (and d!461370 d!461274)))

(declare-fun lambda!65833 () Int)

(assert (=> bs!388377 (= lambda!65833 lambda!65814)))

(declare-fun bs!388378 () Bool)

(assert (= bs!388378 (and d!461370 d!461266)))

(assert (=> bs!388378 (= lambda!65833 lambda!65813)))

(declare-fun bs!388379 () Bool)

(assert (= bs!388379 (and d!461370 d!461320)))

(assert (=> bs!388379 (= lambda!65833 lambda!65824)))

(declare-fun bs!388380 () Bool)

(assert (= bs!388380 (and d!461370 d!461368)))

(assert (=> bs!388380 (= lambda!65833 lambda!65832)))

(declare-fun bs!388381 () Bool)

(assert (= bs!388381 (and d!461370 d!461156)))

(assert (=> bs!388381 (= lambda!65833 lambda!65805)))

(declare-fun bs!388382 () Bool)

(assert (= bs!388382 (and d!461370 d!461154)))

(assert (=> bs!388382 (= lambda!65833 lambda!65804)))

(declare-fun bs!388383 () Bool)

(assert (= bs!388383 (and d!461370 d!461346)))

(assert (=> bs!388383 (= lambda!65833 lambda!65831)))

(declare-fun bs!388384 () Bool)

(assert (= bs!388384 (and d!461370 d!461330)))

(assert (=> bs!388384 (= lambda!65833 lambda!65829)))

(declare-fun bs!388385 () Bool)

(assert (= bs!388385 (and d!461370 d!461152)))

(assert (=> bs!388385 (= lambda!65833 lambda!65803)))

(declare-fun bs!388386 () Bool)

(assert (= bs!388386 (and d!461370 d!461338)))

(assert (=> bs!388386 (= lambda!65833 lambda!65830)))

(declare-fun bs!388387 () Bool)

(assert (= bs!388387 (and d!461370 d!461158)))

(assert (=> bs!388387 (= lambda!65833 lambda!65806)))

(declare-fun bs!388388 () Bool)

(assert (= bs!388388 (and d!461370 d!461286)))

(assert (=> bs!388388 (= lambda!65833 lambda!65818)))

(declare-fun bs!388389 () Bool)

(assert (= bs!388389 (and d!461370 d!461302)))

(assert (=> bs!388389 (= lambda!65833 lambda!65823)))

(declare-fun bs!388390 () Bool)

(assert (= bs!388390 (and d!461370 d!461292)))

(assert (=> bs!388390 (= lambda!65833 lambda!65819)))

(declare-fun bs!388391 () Bool)

(assert (= bs!388391 (and d!461370 d!461264)))

(assert (=> bs!388391 (= lambda!65833 lambda!65812)))

(declare-fun bs!388392 () Bool)

(assert (= bs!388392 (and d!461370 d!461186)))

(assert (=> bs!388392 (= lambda!65833 lambda!65810)))

(declare-fun bs!388393 () Bool)

(assert (= bs!388393 (and d!461370 d!461188)))

(assert (=> bs!388393 (= lambda!65833 lambda!65811)))

(declare-fun bs!388394 () Bool)

(assert (= bs!388394 (and d!461370 d!461322)))

(assert (=> bs!388394 (= lambda!65833 lambda!65825)))

(assert (=> d!461370 (= (inv!22082 setElem!10774) (forall!3925 (exprs!1291 setElem!10774) lambda!65833))))

(declare-fun bs!388395 () Bool)

(assert (= bs!388395 d!461370))

(declare-fun m!1827507 () Bool)

(assert (=> bs!388395 m!1827507))

(assert (=> setNonEmpty!10774 d!461370))

(declare-fun bs!388396 () Bool)

(declare-fun d!461372 () Bool)

(assert (= bs!388396 (and d!461372 d!461274)))

(declare-fun lambda!65834 () Int)

(assert (=> bs!388396 (= lambda!65834 lambda!65814)))

(declare-fun bs!388397 () Bool)

(assert (= bs!388397 (and d!461372 d!461266)))

(assert (=> bs!388397 (= lambda!65834 lambda!65813)))

(declare-fun bs!388398 () Bool)

(assert (= bs!388398 (and d!461372 d!461320)))

(assert (=> bs!388398 (= lambda!65834 lambda!65824)))

(declare-fun bs!388399 () Bool)

(assert (= bs!388399 (and d!461372 d!461368)))

(assert (=> bs!388399 (= lambda!65834 lambda!65832)))

(declare-fun bs!388400 () Bool)

(assert (= bs!388400 (and d!461372 d!461156)))

(assert (=> bs!388400 (= lambda!65834 lambda!65805)))

(declare-fun bs!388401 () Bool)

(assert (= bs!388401 (and d!461372 d!461154)))

(assert (=> bs!388401 (= lambda!65834 lambda!65804)))

(declare-fun bs!388402 () Bool)

(assert (= bs!388402 (and d!461372 d!461346)))

(assert (=> bs!388402 (= lambda!65834 lambda!65831)))

(declare-fun bs!388403 () Bool)

(assert (= bs!388403 (and d!461372 d!461330)))

(assert (=> bs!388403 (= lambda!65834 lambda!65829)))

(declare-fun bs!388404 () Bool)

(assert (= bs!388404 (and d!461372 d!461152)))

(assert (=> bs!388404 (= lambda!65834 lambda!65803)))

(declare-fun bs!388405 () Bool)

(assert (= bs!388405 (and d!461372 d!461338)))

(assert (=> bs!388405 (= lambda!65834 lambda!65830)))

(declare-fun bs!388406 () Bool)

(assert (= bs!388406 (and d!461372 d!461158)))

(assert (=> bs!388406 (= lambda!65834 lambda!65806)))

(declare-fun bs!388407 () Bool)

(assert (= bs!388407 (and d!461372 d!461286)))

(assert (=> bs!388407 (= lambda!65834 lambda!65818)))

(declare-fun bs!388408 () Bool)

(assert (= bs!388408 (and d!461372 d!461302)))

(assert (=> bs!388408 (= lambda!65834 lambda!65823)))

(declare-fun bs!388409 () Bool)

(assert (= bs!388409 (and d!461372 d!461292)))

(assert (=> bs!388409 (= lambda!65834 lambda!65819)))

(declare-fun bs!388410 () Bool)

(assert (= bs!388410 (and d!461372 d!461264)))

(assert (=> bs!388410 (= lambda!65834 lambda!65812)))

(declare-fun bs!388411 () Bool)

(assert (= bs!388411 (and d!461372 d!461186)))

(assert (=> bs!388411 (= lambda!65834 lambda!65810)))

(declare-fun bs!388412 () Bool)

(assert (= bs!388412 (and d!461372 d!461370)))

(assert (=> bs!388412 (= lambda!65834 lambda!65833)))

(declare-fun bs!388413 () Bool)

(assert (= bs!388413 (and d!461372 d!461188)))

(assert (=> bs!388413 (= lambda!65834 lambda!65811)))

(declare-fun bs!388414 () Bool)

(assert (= bs!388414 (and d!461372 d!461322)))

(assert (=> bs!388414 (= lambda!65834 lambda!65825)))

(assert (=> d!461372 (= (inv!22082 setElem!10785) (forall!3925 (exprs!1291 setElem!10785) lambda!65834))))

(declare-fun bs!388415 () Bool)

(assert (= bs!388415 d!461372))

(declare-fun m!1827509 () Bool)

(assert (=> bs!388415 m!1827509))

(assert (=> setNonEmpty!10785 d!461372))

(declare-fun bs!388416 () Bool)

(declare-fun d!461374 () Bool)

(assert (= bs!388416 (and d!461374 d!461274)))

(declare-fun lambda!65835 () Int)

(assert (=> bs!388416 (= lambda!65835 lambda!65814)))

(declare-fun bs!388417 () Bool)

(assert (= bs!388417 (and d!461374 d!461266)))

(assert (=> bs!388417 (= lambda!65835 lambda!65813)))

(declare-fun bs!388418 () Bool)

(assert (= bs!388418 (and d!461374 d!461320)))

(assert (=> bs!388418 (= lambda!65835 lambda!65824)))

(declare-fun bs!388419 () Bool)

(assert (= bs!388419 (and d!461374 d!461368)))

(assert (=> bs!388419 (= lambda!65835 lambda!65832)))

(declare-fun bs!388420 () Bool)

(assert (= bs!388420 (and d!461374 d!461156)))

(assert (=> bs!388420 (= lambda!65835 lambda!65805)))

(declare-fun bs!388421 () Bool)

(assert (= bs!388421 (and d!461374 d!461154)))

(assert (=> bs!388421 (= lambda!65835 lambda!65804)))

(declare-fun bs!388422 () Bool)

(assert (= bs!388422 (and d!461374 d!461346)))

(assert (=> bs!388422 (= lambda!65835 lambda!65831)))

(declare-fun bs!388423 () Bool)

(assert (= bs!388423 (and d!461374 d!461330)))

(assert (=> bs!388423 (= lambda!65835 lambda!65829)))

(declare-fun bs!388424 () Bool)

(assert (= bs!388424 (and d!461374 d!461372)))

(assert (=> bs!388424 (= lambda!65835 lambda!65834)))

(declare-fun bs!388425 () Bool)

(assert (= bs!388425 (and d!461374 d!461152)))

(assert (=> bs!388425 (= lambda!65835 lambda!65803)))

(declare-fun bs!388426 () Bool)

(assert (= bs!388426 (and d!461374 d!461338)))

(assert (=> bs!388426 (= lambda!65835 lambda!65830)))

(declare-fun bs!388427 () Bool)

(assert (= bs!388427 (and d!461374 d!461158)))

(assert (=> bs!388427 (= lambda!65835 lambda!65806)))

(declare-fun bs!388428 () Bool)

(assert (= bs!388428 (and d!461374 d!461286)))

(assert (=> bs!388428 (= lambda!65835 lambda!65818)))

(declare-fun bs!388429 () Bool)

(assert (= bs!388429 (and d!461374 d!461302)))

(assert (=> bs!388429 (= lambda!65835 lambda!65823)))

(declare-fun bs!388430 () Bool)

(assert (= bs!388430 (and d!461374 d!461292)))

(assert (=> bs!388430 (= lambda!65835 lambda!65819)))

(declare-fun bs!388431 () Bool)

(assert (= bs!388431 (and d!461374 d!461264)))

(assert (=> bs!388431 (= lambda!65835 lambda!65812)))

(declare-fun bs!388432 () Bool)

(assert (= bs!388432 (and d!461374 d!461186)))

(assert (=> bs!388432 (= lambda!65835 lambda!65810)))

(declare-fun bs!388433 () Bool)

(assert (= bs!388433 (and d!461374 d!461370)))

(assert (=> bs!388433 (= lambda!65835 lambda!65833)))

(declare-fun bs!388434 () Bool)

(assert (= bs!388434 (and d!461374 d!461188)))

(assert (=> bs!388434 (= lambda!65835 lambda!65811)))

(declare-fun bs!388435 () Bool)

(assert (= bs!388435 (and d!461374 d!461322)))

(assert (=> bs!388435 (= lambda!65835 lambda!65825)))

(assert (=> d!461374 (= (inv!22082 setElem!10797) (forall!3925 (exprs!1291 setElem!10797) lambda!65835))))

(declare-fun bs!388436 () Bool)

(assert (= bs!388436 d!461374))

(declare-fun m!1827511 () Bool)

(assert (=> bs!388436 m!1827511))

(assert (=> setNonEmpty!10797 d!461374))

(assert (=> b!1554191 d!461160))

(declare-fun bs!388437 () Bool)

(declare-fun d!461376 () Bool)

(assert (= bs!388437 (and d!461376 d!461274)))

(declare-fun lambda!65836 () Int)

(assert (=> bs!388437 (= lambda!65836 lambda!65814)))

(declare-fun bs!388438 () Bool)

(assert (= bs!388438 (and d!461376 d!461266)))

(assert (=> bs!388438 (= lambda!65836 lambda!65813)))

(declare-fun bs!388439 () Bool)

(assert (= bs!388439 (and d!461376 d!461320)))

(assert (=> bs!388439 (= lambda!65836 lambda!65824)))

(declare-fun bs!388440 () Bool)

(assert (= bs!388440 (and d!461376 d!461368)))

(assert (=> bs!388440 (= lambda!65836 lambda!65832)))

(declare-fun bs!388441 () Bool)

(assert (= bs!388441 (and d!461376 d!461156)))

(assert (=> bs!388441 (= lambda!65836 lambda!65805)))

(declare-fun bs!388442 () Bool)

(assert (= bs!388442 (and d!461376 d!461154)))

(assert (=> bs!388442 (= lambda!65836 lambda!65804)))

(declare-fun bs!388443 () Bool)

(assert (= bs!388443 (and d!461376 d!461330)))

(assert (=> bs!388443 (= lambda!65836 lambda!65829)))

(declare-fun bs!388444 () Bool)

(assert (= bs!388444 (and d!461376 d!461372)))

(assert (=> bs!388444 (= lambda!65836 lambda!65834)))

(declare-fun bs!388445 () Bool)

(assert (= bs!388445 (and d!461376 d!461152)))

(assert (=> bs!388445 (= lambda!65836 lambda!65803)))

(declare-fun bs!388446 () Bool)

(assert (= bs!388446 (and d!461376 d!461338)))

(assert (=> bs!388446 (= lambda!65836 lambda!65830)))

(declare-fun bs!388447 () Bool)

(assert (= bs!388447 (and d!461376 d!461158)))

(assert (=> bs!388447 (= lambda!65836 lambda!65806)))

(declare-fun bs!388448 () Bool)

(assert (= bs!388448 (and d!461376 d!461286)))

(assert (=> bs!388448 (= lambda!65836 lambda!65818)))

(declare-fun bs!388449 () Bool)

(assert (= bs!388449 (and d!461376 d!461302)))

(assert (=> bs!388449 (= lambda!65836 lambda!65823)))

(declare-fun bs!388450 () Bool)

(assert (= bs!388450 (and d!461376 d!461292)))

(assert (=> bs!388450 (= lambda!65836 lambda!65819)))

(declare-fun bs!388451 () Bool)

(assert (= bs!388451 (and d!461376 d!461374)))

(assert (=> bs!388451 (= lambda!65836 lambda!65835)))

(declare-fun bs!388452 () Bool)

(assert (= bs!388452 (and d!461376 d!461346)))

(assert (=> bs!388452 (= lambda!65836 lambda!65831)))

(declare-fun bs!388453 () Bool)

(assert (= bs!388453 (and d!461376 d!461264)))

(assert (=> bs!388453 (= lambda!65836 lambda!65812)))

(declare-fun bs!388454 () Bool)

(assert (= bs!388454 (and d!461376 d!461186)))

(assert (=> bs!388454 (= lambda!65836 lambda!65810)))

(declare-fun bs!388455 () Bool)

(assert (= bs!388455 (and d!461376 d!461370)))

(assert (=> bs!388455 (= lambda!65836 lambda!65833)))

(declare-fun bs!388456 () Bool)

(assert (= bs!388456 (and d!461376 d!461188)))

(assert (=> bs!388456 (= lambda!65836 lambda!65811)))

(declare-fun bs!388457 () Bool)

(assert (= bs!388457 (and d!461376 d!461322)))

(assert (=> bs!388457 (= lambda!65836 lambda!65825)))

(assert (=> d!461376 (= (inv!22082 setElem!10796) (forall!3925 (exprs!1291 setElem!10796) lambda!65836))))

(declare-fun bs!388458 () Bool)

(assert (= bs!388458 d!461376))

(declare-fun m!1827513 () Bool)

(assert (=> bs!388458 m!1827513))

(assert (=> setNonEmpty!10796 d!461376))

(declare-fun bs!388459 () Bool)

(declare-fun d!461378 () Bool)

(assert (= bs!388459 (and d!461378 d!461274)))

(declare-fun lambda!65837 () Int)

(assert (=> bs!388459 (= lambda!65837 lambda!65814)))

(declare-fun bs!388460 () Bool)

(assert (= bs!388460 (and d!461378 d!461376)))

(assert (=> bs!388460 (= lambda!65837 lambda!65836)))

(declare-fun bs!388461 () Bool)

(assert (= bs!388461 (and d!461378 d!461266)))

(assert (=> bs!388461 (= lambda!65837 lambda!65813)))

(declare-fun bs!388462 () Bool)

(assert (= bs!388462 (and d!461378 d!461320)))

(assert (=> bs!388462 (= lambda!65837 lambda!65824)))

(declare-fun bs!388463 () Bool)

(assert (= bs!388463 (and d!461378 d!461368)))

(assert (=> bs!388463 (= lambda!65837 lambda!65832)))

(declare-fun bs!388464 () Bool)

(assert (= bs!388464 (and d!461378 d!461156)))

(assert (=> bs!388464 (= lambda!65837 lambda!65805)))

(declare-fun bs!388465 () Bool)

(assert (= bs!388465 (and d!461378 d!461154)))

(assert (=> bs!388465 (= lambda!65837 lambda!65804)))

(declare-fun bs!388466 () Bool)

(assert (= bs!388466 (and d!461378 d!461330)))

(assert (=> bs!388466 (= lambda!65837 lambda!65829)))

(declare-fun bs!388467 () Bool)

(assert (= bs!388467 (and d!461378 d!461372)))

(assert (=> bs!388467 (= lambda!65837 lambda!65834)))

(declare-fun bs!388468 () Bool)

(assert (= bs!388468 (and d!461378 d!461152)))

(assert (=> bs!388468 (= lambda!65837 lambda!65803)))

(declare-fun bs!388469 () Bool)

(assert (= bs!388469 (and d!461378 d!461338)))

(assert (=> bs!388469 (= lambda!65837 lambda!65830)))

(declare-fun bs!388470 () Bool)

(assert (= bs!388470 (and d!461378 d!461158)))

(assert (=> bs!388470 (= lambda!65837 lambda!65806)))

(declare-fun bs!388471 () Bool)

(assert (= bs!388471 (and d!461378 d!461286)))

(assert (=> bs!388471 (= lambda!65837 lambda!65818)))

(declare-fun bs!388472 () Bool)

(assert (= bs!388472 (and d!461378 d!461302)))

(assert (=> bs!388472 (= lambda!65837 lambda!65823)))

(declare-fun bs!388473 () Bool)

(assert (= bs!388473 (and d!461378 d!461292)))

(assert (=> bs!388473 (= lambda!65837 lambda!65819)))

(declare-fun bs!388474 () Bool)

(assert (= bs!388474 (and d!461378 d!461374)))

(assert (=> bs!388474 (= lambda!65837 lambda!65835)))

(declare-fun bs!388475 () Bool)

(assert (= bs!388475 (and d!461378 d!461346)))

(assert (=> bs!388475 (= lambda!65837 lambda!65831)))

(declare-fun bs!388476 () Bool)

(assert (= bs!388476 (and d!461378 d!461264)))

(assert (=> bs!388476 (= lambda!65837 lambda!65812)))

(declare-fun bs!388477 () Bool)

(assert (= bs!388477 (and d!461378 d!461186)))

(assert (=> bs!388477 (= lambda!65837 lambda!65810)))

(declare-fun bs!388478 () Bool)

(assert (= bs!388478 (and d!461378 d!461370)))

(assert (=> bs!388478 (= lambda!65837 lambda!65833)))

(declare-fun bs!388479 () Bool)

(assert (= bs!388479 (and d!461378 d!461188)))

(assert (=> bs!388479 (= lambda!65837 lambda!65811)))

(declare-fun bs!388480 () Bool)

(assert (= bs!388480 (and d!461378 d!461322)))

(assert (=> bs!388480 (= lambda!65837 lambda!65825)))

(assert (=> d!461378 (= (inv!22082 (_1!9457 (_1!9458 (h!22206 mapValue!8323)))) (forall!3925 (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapValue!8323)))) lambda!65837))))

(declare-fun bs!388481 () Bool)

(assert (= bs!388481 d!461378))

(declare-fun m!1827515 () Bool)

(assert (=> bs!388481 m!1827515))

(assert (=> b!1554397 d!461378))

(declare-fun bs!388482 () Bool)

(declare-fun d!461380 () Bool)

(assert (= bs!388482 (and d!461380 d!461274)))

(declare-fun lambda!65838 () Int)

(assert (=> bs!388482 (= lambda!65838 lambda!65814)))

(declare-fun bs!388483 () Bool)

(assert (= bs!388483 (and d!461380 d!461376)))

(assert (=> bs!388483 (= lambda!65838 lambda!65836)))

(declare-fun bs!388484 () Bool)

(assert (= bs!388484 (and d!461380 d!461266)))

(assert (=> bs!388484 (= lambda!65838 lambda!65813)))

(declare-fun bs!388485 () Bool)

(assert (= bs!388485 (and d!461380 d!461320)))

(assert (=> bs!388485 (= lambda!65838 lambda!65824)))

(declare-fun bs!388486 () Bool)

(assert (= bs!388486 (and d!461380 d!461368)))

(assert (=> bs!388486 (= lambda!65838 lambda!65832)))

(declare-fun bs!388487 () Bool)

(assert (= bs!388487 (and d!461380 d!461156)))

(assert (=> bs!388487 (= lambda!65838 lambda!65805)))

(declare-fun bs!388488 () Bool)

(assert (= bs!388488 (and d!461380 d!461154)))

(assert (=> bs!388488 (= lambda!65838 lambda!65804)))

(declare-fun bs!388489 () Bool)

(assert (= bs!388489 (and d!461380 d!461378)))

(assert (=> bs!388489 (= lambda!65838 lambda!65837)))

(declare-fun bs!388490 () Bool)

(assert (= bs!388490 (and d!461380 d!461330)))

(assert (=> bs!388490 (= lambda!65838 lambda!65829)))

(declare-fun bs!388491 () Bool)

(assert (= bs!388491 (and d!461380 d!461372)))

(assert (=> bs!388491 (= lambda!65838 lambda!65834)))

(declare-fun bs!388492 () Bool)

(assert (= bs!388492 (and d!461380 d!461152)))

(assert (=> bs!388492 (= lambda!65838 lambda!65803)))

(declare-fun bs!388493 () Bool)

(assert (= bs!388493 (and d!461380 d!461338)))

(assert (=> bs!388493 (= lambda!65838 lambda!65830)))

(declare-fun bs!388494 () Bool)

(assert (= bs!388494 (and d!461380 d!461158)))

(assert (=> bs!388494 (= lambda!65838 lambda!65806)))

(declare-fun bs!388495 () Bool)

(assert (= bs!388495 (and d!461380 d!461286)))

(assert (=> bs!388495 (= lambda!65838 lambda!65818)))

(declare-fun bs!388496 () Bool)

(assert (= bs!388496 (and d!461380 d!461302)))

(assert (=> bs!388496 (= lambda!65838 lambda!65823)))

(declare-fun bs!388497 () Bool)

(assert (= bs!388497 (and d!461380 d!461292)))

(assert (=> bs!388497 (= lambda!65838 lambda!65819)))

(declare-fun bs!388498 () Bool)

(assert (= bs!388498 (and d!461380 d!461374)))

(assert (=> bs!388498 (= lambda!65838 lambda!65835)))

(declare-fun bs!388499 () Bool)

(assert (= bs!388499 (and d!461380 d!461346)))

(assert (=> bs!388499 (= lambda!65838 lambda!65831)))

(declare-fun bs!388500 () Bool)

(assert (= bs!388500 (and d!461380 d!461264)))

(assert (=> bs!388500 (= lambda!65838 lambda!65812)))

(declare-fun bs!388501 () Bool)

(assert (= bs!388501 (and d!461380 d!461186)))

(assert (=> bs!388501 (= lambda!65838 lambda!65810)))

(declare-fun bs!388502 () Bool)

(assert (= bs!388502 (and d!461380 d!461370)))

(assert (=> bs!388502 (= lambda!65838 lambda!65833)))

(declare-fun bs!388503 () Bool)

(assert (= bs!388503 (and d!461380 d!461188)))

(assert (=> bs!388503 (= lambda!65838 lambda!65811)))

(declare-fun bs!388504 () Bool)

(assert (= bs!388504 (and d!461380 d!461322)))

(assert (=> bs!388504 (= lambda!65838 lambda!65825)))

(assert (=> d!461380 (= (inv!22082 setElem!10795) (forall!3925 (exprs!1291 setElem!10795) lambda!65838))))

(declare-fun bs!388505 () Bool)

(assert (= bs!388505 d!461380))

(declare-fun m!1827517 () Bool)

(assert (=> bs!388505 m!1827517))

(assert (=> setNonEmpty!10795 d!461380))

(declare-fun d!461382 () Bool)

(declare-fun res!694218 () Bool)

(declare-fun e!997552 () Bool)

(assert (=> d!461382 (=> (not res!694218) (not e!997552))))

(declare-fun valid!1444 (MutableMap!1737) Bool)

(assert (=> d!461382 (= res!694218 (valid!1444 (cache!2118 cacheDown!768)))))

(assert (=> d!461382 (= (validCacheMapDown!160 (cache!2118 cacheDown!768)) e!997552)))

(declare-fun b!1554906 () Bool)

(declare-fun res!694219 () Bool)

(assert (=> b!1554906 (=> (not res!694219) (not e!997552))))

(declare-fun invariantList!249 (List!16875) Bool)

(declare-datatypes ((ListMap!547 0))(
  ( (ListMap!548 (toList!858 List!16875)) )
))
(declare-fun map!3523 (MutableMap!1737) ListMap!547)

(assert (=> b!1554906 (= res!694219 (invariantList!249 (toList!858 (map!3523 (cache!2118 cacheDown!768)))))))

(declare-fun b!1554907 () Bool)

(declare-fun lambda!65841 () Int)

(declare-fun forall!3928 (List!16875 Int) Bool)

(assert (=> b!1554907 (= e!997552 (forall!3928 (toList!858 (map!3523 (cache!2118 cacheDown!768))) lambda!65841))))

(assert (= (and d!461382 res!694218) b!1554906))

(assert (= (and b!1554906 res!694219) b!1554907))

(declare-fun m!1827520 () Bool)

(assert (=> d!461382 m!1827520))

(declare-fun m!1827522 () Bool)

(assert (=> b!1554906 m!1827522))

(declare-fun m!1827524 () Bool)

(assert (=> b!1554906 m!1827524))

(assert (=> b!1554907 m!1827522))

(declare-fun m!1827526 () Bool)

(assert (=> b!1554907 m!1827526))

(assert (=> b!1554226 d!461382))

(declare-fun bs!388506 () Bool)

(declare-fun d!461384 () Bool)

(assert (= bs!388506 (and d!461384 d!461274)))

(declare-fun lambda!65842 () Int)

(assert (=> bs!388506 (= lambda!65842 lambda!65814)))

(declare-fun bs!388507 () Bool)

(assert (= bs!388507 (and d!461384 d!461376)))

(assert (=> bs!388507 (= lambda!65842 lambda!65836)))

(declare-fun bs!388508 () Bool)

(assert (= bs!388508 (and d!461384 d!461320)))

(assert (=> bs!388508 (= lambda!65842 lambda!65824)))

(declare-fun bs!388509 () Bool)

(assert (= bs!388509 (and d!461384 d!461368)))

(assert (=> bs!388509 (= lambda!65842 lambda!65832)))

(declare-fun bs!388510 () Bool)

(assert (= bs!388510 (and d!461384 d!461156)))

(assert (=> bs!388510 (= lambda!65842 lambda!65805)))

(declare-fun bs!388511 () Bool)

(assert (= bs!388511 (and d!461384 d!461154)))

(assert (=> bs!388511 (= lambda!65842 lambda!65804)))

(declare-fun bs!388512 () Bool)

(assert (= bs!388512 (and d!461384 d!461378)))

(assert (=> bs!388512 (= lambda!65842 lambda!65837)))

(declare-fun bs!388513 () Bool)

(assert (= bs!388513 (and d!461384 d!461330)))

(assert (=> bs!388513 (= lambda!65842 lambda!65829)))

(declare-fun bs!388514 () Bool)

(assert (= bs!388514 (and d!461384 d!461372)))

(assert (=> bs!388514 (= lambda!65842 lambda!65834)))

(declare-fun bs!388515 () Bool)

(assert (= bs!388515 (and d!461384 d!461152)))

(assert (=> bs!388515 (= lambda!65842 lambda!65803)))

(declare-fun bs!388516 () Bool)

(assert (= bs!388516 (and d!461384 d!461338)))

(assert (=> bs!388516 (= lambda!65842 lambda!65830)))

(declare-fun bs!388517 () Bool)

(assert (= bs!388517 (and d!461384 d!461266)))

(assert (=> bs!388517 (= lambda!65842 lambda!65813)))

(declare-fun bs!388518 () Bool)

(assert (= bs!388518 (and d!461384 d!461380)))

(assert (=> bs!388518 (= lambda!65842 lambda!65838)))

(declare-fun bs!388519 () Bool)

(assert (= bs!388519 (and d!461384 d!461158)))

(assert (=> bs!388519 (= lambda!65842 lambda!65806)))

(declare-fun bs!388520 () Bool)

(assert (= bs!388520 (and d!461384 d!461286)))

(assert (=> bs!388520 (= lambda!65842 lambda!65818)))

(declare-fun bs!388521 () Bool)

(assert (= bs!388521 (and d!461384 d!461302)))

(assert (=> bs!388521 (= lambda!65842 lambda!65823)))

(declare-fun bs!388522 () Bool)

(assert (= bs!388522 (and d!461384 d!461292)))

(assert (=> bs!388522 (= lambda!65842 lambda!65819)))

(declare-fun bs!388523 () Bool)

(assert (= bs!388523 (and d!461384 d!461374)))

(assert (=> bs!388523 (= lambda!65842 lambda!65835)))

(declare-fun bs!388524 () Bool)

(assert (= bs!388524 (and d!461384 d!461346)))

(assert (=> bs!388524 (= lambda!65842 lambda!65831)))

(declare-fun bs!388525 () Bool)

(assert (= bs!388525 (and d!461384 d!461264)))

(assert (=> bs!388525 (= lambda!65842 lambda!65812)))

(declare-fun bs!388526 () Bool)

(assert (= bs!388526 (and d!461384 d!461186)))

(assert (=> bs!388526 (= lambda!65842 lambda!65810)))

(declare-fun bs!388527 () Bool)

(assert (= bs!388527 (and d!461384 d!461370)))

(assert (=> bs!388527 (= lambda!65842 lambda!65833)))

(declare-fun bs!388528 () Bool)

(assert (= bs!388528 (and d!461384 d!461188)))

(assert (=> bs!388528 (= lambda!65842 lambda!65811)))

(declare-fun bs!388529 () Bool)

(assert (= bs!388529 (and d!461384 d!461322)))

(assert (=> bs!388529 (= lambda!65842 lambda!65825)))

(assert (=> d!461384 (= (inv!22082 setElem!10770) (forall!3925 (exprs!1291 setElem!10770) lambda!65842))))

(declare-fun bs!388530 () Bool)

(assert (= bs!388530 d!461384))

(declare-fun m!1827528 () Bool)

(assert (=> bs!388530 m!1827528))

(assert (=> setNonEmpty!10770 d!461384))

(declare-fun bs!388531 () Bool)

(declare-fun d!461386 () Bool)

(assert (= bs!388531 (and d!461386 d!461274)))

(declare-fun lambda!65843 () Int)

(assert (=> bs!388531 (= lambda!65843 lambda!65814)))

(declare-fun bs!388532 () Bool)

(assert (= bs!388532 (and d!461386 d!461376)))

(assert (=> bs!388532 (= lambda!65843 lambda!65836)))

(declare-fun bs!388533 () Bool)

(assert (= bs!388533 (and d!461386 d!461320)))

(assert (=> bs!388533 (= lambda!65843 lambda!65824)))

(declare-fun bs!388534 () Bool)

(assert (= bs!388534 (and d!461386 d!461368)))

(assert (=> bs!388534 (= lambda!65843 lambda!65832)))

(declare-fun bs!388535 () Bool)

(assert (= bs!388535 (and d!461386 d!461156)))

(assert (=> bs!388535 (= lambda!65843 lambda!65805)))

(declare-fun bs!388536 () Bool)

(assert (= bs!388536 (and d!461386 d!461154)))

(assert (=> bs!388536 (= lambda!65843 lambda!65804)))

(declare-fun bs!388537 () Bool)

(assert (= bs!388537 (and d!461386 d!461330)))

(assert (=> bs!388537 (= lambda!65843 lambda!65829)))

(declare-fun bs!388538 () Bool)

(assert (= bs!388538 (and d!461386 d!461372)))

(assert (=> bs!388538 (= lambda!65843 lambda!65834)))

(declare-fun bs!388539 () Bool)

(assert (= bs!388539 (and d!461386 d!461152)))

(assert (=> bs!388539 (= lambda!65843 lambda!65803)))

(declare-fun bs!388540 () Bool)

(assert (= bs!388540 (and d!461386 d!461338)))

(assert (=> bs!388540 (= lambda!65843 lambda!65830)))

(declare-fun bs!388541 () Bool)

(assert (= bs!388541 (and d!461386 d!461266)))

(assert (=> bs!388541 (= lambda!65843 lambda!65813)))

(declare-fun bs!388542 () Bool)

(assert (= bs!388542 (and d!461386 d!461380)))

(assert (=> bs!388542 (= lambda!65843 lambda!65838)))

(declare-fun bs!388543 () Bool)

(assert (= bs!388543 (and d!461386 d!461158)))

(assert (=> bs!388543 (= lambda!65843 lambda!65806)))

(declare-fun bs!388544 () Bool)

(assert (= bs!388544 (and d!461386 d!461286)))

(assert (=> bs!388544 (= lambda!65843 lambda!65818)))

(declare-fun bs!388545 () Bool)

(assert (= bs!388545 (and d!461386 d!461302)))

(assert (=> bs!388545 (= lambda!65843 lambda!65823)))

(declare-fun bs!388546 () Bool)

(assert (= bs!388546 (and d!461386 d!461292)))

(assert (=> bs!388546 (= lambda!65843 lambda!65819)))

(declare-fun bs!388547 () Bool)

(assert (= bs!388547 (and d!461386 d!461384)))

(assert (=> bs!388547 (= lambda!65843 lambda!65842)))

(declare-fun bs!388548 () Bool)

(assert (= bs!388548 (and d!461386 d!461378)))

(assert (=> bs!388548 (= lambda!65843 lambda!65837)))

(declare-fun bs!388549 () Bool)

(assert (= bs!388549 (and d!461386 d!461374)))

(assert (=> bs!388549 (= lambda!65843 lambda!65835)))

(declare-fun bs!388550 () Bool)

(assert (= bs!388550 (and d!461386 d!461346)))

(assert (=> bs!388550 (= lambda!65843 lambda!65831)))

(declare-fun bs!388551 () Bool)

(assert (= bs!388551 (and d!461386 d!461264)))

(assert (=> bs!388551 (= lambda!65843 lambda!65812)))

(declare-fun bs!388552 () Bool)

(assert (= bs!388552 (and d!461386 d!461186)))

(assert (=> bs!388552 (= lambda!65843 lambda!65810)))

(declare-fun bs!388553 () Bool)

(assert (= bs!388553 (and d!461386 d!461370)))

(assert (=> bs!388553 (= lambda!65843 lambda!65833)))

(declare-fun bs!388554 () Bool)

(assert (= bs!388554 (and d!461386 d!461188)))

(assert (=> bs!388554 (= lambda!65843 lambda!65811)))

(declare-fun bs!388555 () Bool)

(assert (= bs!388555 (and d!461386 d!461322)))

(assert (=> bs!388555 (= lambda!65843 lambda!65825)))

(assert (=> d!461386 (= (inv!22082 (_1!9457 (_1!9458 (h!22206 mapValue!8330)))) (forall!3925 (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapValue!8330)))) lambda!65843))))

(declare-fun bs!388556 () Bool)

(assert (= bs!388556 d!461386))

(declare-fun m!1827530 () Bool)

(assert (=> bs!388556 m!1827530))

(assert (=> b!1554386 d!461386))

(assert (=> bm!101964 d!461242))

(declare-fun d!461388 () Bool)

(assert (=> d!461388 (dynLambda!7445 lambda!65797 lt!538195)))

(assert (=> d!461388 true))

(declare-fun _$1!9960 () Unit!26051)

(assert (=> d!461388 (= (choose!9270 lambda!65797 lt!538195) _$1!9960)))

(declare-fun b_lambda!48811 () Bool)

(assert (=> (not b_lambda!48811) (not d!461388)))

(declare-fun bs!388557 () Bool)

(assert (= bs!388557 d!461388))

(assert (=> bs!388557 m!1826717))

(assert (=> d!461072 d!461388))

(assert (=> d!461072 d!461116))

(declare-fun d!461390 () Bool)

(assert (=> d!461390 (= (valid!1440 (_4!444 lt!538228)) (validCacheMapFurthestNullable!73 (cache!2117 (_4!444 lt!538228)) (totalInput!2456 (_4!444 lt!538228))))))

(declare-fun bs!388558 () Bool)

(assert (= bs!388558 d!461390))

(declare-fun m!1827532 () Bool)

(assert (=> bs!388558 m!1827532))

(assert (=> b!1554222 d!461390))

(assert (=> b!1554159 d!461148))

(assert (=> b!1554159 d!461150))

(assert (=> d!461088 d!461382))

(declare-fun d!461392 () Bool)

(declare-fun lt!538447 () Int)

(assert (=> d!461392 (>= lt!538447 0)))

(declare-fun e!997553 () Int)

(assert (=> d!461392 (= lt!538447 e!997553)))

(declare-fun c!252752 () Bool)

(assert (=> d!461392 (= c!252752 ((_ is Nil!16803) (list!6489 (_1!9464 (_1!9465 lt!538187)))))))

(assert (=> d!461392 (= (size!13604 (list!6489 (_1!9464 (_1!9465 lt!538187)))) lt!538447)))

(declare-fun b!1554908 () Bool)

(assert (=> b!1554908 (= e!997553 0)))

(declare-fun b!1554909 () Bool)

(assert (=> b!1554909 (= e!997553 (+ 1 (size!13604 (t!141314 (list!6489 (_1!9464 (_1!9465 lt!538187)))))))))

(assert (= (and d!461392 c!252752) b!1554908))

(assert (= (and d!461392 (not c!252752)) b!1554909))

(declare-fun m!1827534 () Bool)

(assert (=> b!1554909 m!1827534))

(assert (=> d!461068 d!461392))

(assert (=> d!461068 d!461060))

(declare-fun d!461394 () Bool)

(declare-fun lt!538450 () Int)

(assert (=> d!461394 (= lt!538450 (size!13604 (list!6490 (c!252615 (_1!9464 (_1!9465 lt!538187))))))))

(assert (=> d!461394 (= lt!538450 (ite ((_ is Empty!5563) (c!252615 (_1!9464 (_1!9465 lt!538187)))) 0 (ite ((_ is Leaf!8245) (c!252615 (_1!9464 (_1!9465 lt!538187)))) (csize!11357 (c!252615 (_1!9464 (_1!9465 lt!538187)))) (csize!11356 (c!252615 (_1!9464 (_1!9465 lt!538187)))))))))

(assert (=> d!461394 (= (size!13607 (c!252615 (_1!9464 (_1!9465 lt!538187)))) lt!538450)))

(declare-fun bs!388559 () Bool)

(assert (= bs!388559 d!461394))

(assert (=> bs!388559 m!1826667))

(assert (=> bs!388559 m!1826667))

(declare-fun m!1827536 () Bool)

(assert (=> bs!388559 m!1827536))

(assert (=> d!461068 d!461394))

(declare-fun bs!388560 () Bool)

(declare-fun d!461396 () Bool)

(assert (= bs!388560 (and d!461396 d!461274)))

(declare-fun lambda!65844 () Int)

(assert (=> bs!388560 (= lambda!65844 lambda!65814)))

(declare-fun bs!388561 () Bool)

(assert (= bs!388561 (and d!461396 d!461320)))

(assert (=> bs!388561 (= lambda!65844 lambda!65824)))

(declare-fun bs!388562 () Bool)

(assert (= bs!388562 (and d!461396 d!461368)))

(assert (=> bs!388562 (= lambda!65844 lambda!65832)))

(declare-fun bs!388563 () Bool)

(assert (= bs!388563 (and d!461396 d!461156)))

(assert (=> bs!388563 (= lambda!65844 lambda!65805)))

(declare-fun bs!388564 () Bool)

(assert (= bs!388564 (and d!461396 d!461154)))

(assert (=> bs!388564 (= lambda!65844 lambda!65804)))

(declare-fun bs!388565 () Bool)

(assert (= bs!388565 (and d!461396 d!461330)))

(assert (=> bs!388565 (= lambda!65844 lambda!65829)))

(declare-fun bs!388566 () Bool)

(assert (= bs!388566 (and d!461396 d!461372)))

(assert (=> bs!388566 (= lambda!65844 lambda!65834)))

(declare-fun bs!388567 () Bool)

(assert (= bs!388567 (and d!461396 d!461152)))

(assert (=> bs!388567 (= lambda!65844 lambda!65803)))

(declare-fun bs!388568 () Bool)

(assert (= bs!388568 (and d!461396 d!461338)))

(assert (=> bs!388568 (= lambda!65844 lambda!65830)))

(declare-fun bs!388569 () Bool)

(assert (= bs!388569 (and d!461396 d!461376)))

(assert (=> bs!388569 (= lambda!65844 lambda!65836)))

(declare-fun bs!388570 () Bool)

(assert (= bs!388570 (and d!461396 d!461386)))

(assert (=> bs!388570 (= lambda!65844 lambda!65843)))

(declare-fun bs!388571 () Bool)

(assert (= bs!388571 (and d!461396 d!461266)))

(assert (=> bs!388571 (= lambda!65844 lambda!65813)))

(declare-fun bs!388572 () Bool)

(assert (= bs!388572 (and d!461396 d!461380)))

(assert (=> bs!388572 (= lambda!65844 lambda!65838)))

(declare-fun bs!388573 () Bool)

(assert (= bs!388573 (and d!461396 d!461158)))

(assert (=> bs!388573 (= lambda!65844 lambda!65806)))

(declare-fun bs!388574 () Bool)

(assert (= bs!388574 (and d!461396 d!461286)))

(assert (=> bs!388574 (= lambda!65844 lambda!65818)))

(declare-fun bs!388575 () Bool)

(assert (= bs!388575 (and d!461396 d!461302)))

(assert (=> bs!388575 (= lambda!65844 lambda!65823)))

(declare-fun bs!388576 () Bool)

(assert (= bs!388576 (and d!461396 d!461292)))

(assert (=> bs!388576 (= lambda!65844 lambda!65819)))

(declare-fun bs!388577 () Bool)

(assert (= bs!388577 (and d!461396 d!461384)))

(assert (=> bs!388577 (= lambda!65844 lambda!65842)))

(declare-fun bs!388578 () Bool)

(assert (= bs!388578 (and d!461396 d!461378)))

(assert (=> bs!388578 (= lambda!65844 lambda!65837)))

(declare-fun bs!388579 () Bool)

(assert (= bs!388579 (and d!461396 d!461374)))

(assert (=> bs!388579 (= lambda!65844 lambda!65835)))

(declare-fun bs!388580 () Bool)

(assert (= bs!388580 (and d!461396 d!461346)))

(assert (=> bs!388580 (= lambda!65844 lambda!65831)))

(declare-fun bs!388581 () Bool)

(assert (= bs!388581 (and d!461396 d!461264)))

(assert (=> bs!388581 (= lambda!65844 lambda!65812)))

(declare-fun bs!388582 () Bool)

(assert (= bs!388582 (and d!461396 d!461186)))

(assert (=> bs!388582 (= lambda!65844 lambda!65810)))

(declare-fun bs!388583 () Bool)

(assert (= bs!388583 (and d!461396 d!461370)))

(assert (=> bs!388583 (= lambda!65844 lambda!65833)))

(declare-fun bs!388584 () Bool)

(assert (= bs!388584 (and d!461396 d!461188)))

(assert (=> bs!388584 (= lambda!65844 lambda!65811)))

(declare-fun bs!388585 () Bool)

(assert (= bs!388585 (and d!461396 d!461322)))

(assert (=> bs!388585 (= lambda!65844 lambda!65825)))

(assert (=> d!461396 (= (inv!22082 setElem!10779) (forall!3925 (exprs!1291 setElem!10779) lambda!65844))))

(declare-fun bs!388586 () Bool)

(assert (= bs!388586 d!461396))

(declare-fun m!1827538 () Bool)

(assert (=> bs!388586 m!1827538))

(assert (=> setNonEmpty!10779 d!461396))

(assert (=> b!1554304 d!461324))

(assert (=> d!461086 d!461170))

(declare-fun d!461398 () Bool)

(assert (=> d!461398 (= (isEmpty!10107 (Some!3032 (tuple2!16263 (Token!5471 (apply!4108 (transformation!2945 rule!240) (_1!9464 (_1!9465 lt!538187))) rule!240 (size!13606 (_1!9464 (_1!9465 lt!538187))) lt!538189) (_2!9464 (_1!9465 lt!538187))))) (not ((_ is Some!3032) (Some!3032 (tuple2!16263 (Token!5471 (apply!4108 (transformation!2945 rule!240) (_1!9464 (_1!9465 lt!538187))) rule!240 (size!13606 (_1!9464 (_1!9465 lt!538187))) lt!538189) (_2!9464 (_1!9465 lt!538187)))))))))

(assert (=> d!461066 d!461398))

(declare-fun d!461400 () Bool)

(assert (=> d!461400 (= (isEmpty!10108 lt!538217) (not ((_ is Some!3031) lt!538217)))))

(assert (=> d!461070 d!461400))

(declare-fun d!461402 () Bool)

(assert (=> d!461402 (= (isEmpty!10106 (_1!9463 lt!538218)) ((_ is Nil!16803) (_1!9463 lt!538218)))))

(assert (=> d!461070 d!461402))

(declare-fun d!461404 () Bool)

(declare-fun lt!538456 () tuple2!16256)

(assert (=> d!461404 (= (++!4413 (_1!9463 lt!538456) (_2!9463 lt!538456)) lt!538190)))

(assert (=> d!461404 (= lt!538456 (findLongestMatchInner!330 (regex!2945 rule!240) Nil!16803 0 lt!538190 lt!538190 (sizeTr!51 lt!538190 0)))))

(declare-fun lt!538454 () Unit!26051)

(declare-fun lt!538451 () Unit!26051)

(assert (=> d!461404 (= lt!538454 lt!538451)))

(declare-fun lt!538458 () List!16871)

(declare-fun lt!538453 () Int)

(assert (=> d!461404 (= (sizeTr!51 lt!538458 lt!538453) (+ (size!13604 lt!538458) lt!538453))))

(assert (=> d!461404 (= lt!538451 (lemmaSizeTrEqualsSize!51 lt!538458 lt!538453))))

(assert (=> d!461404 (= lt!538453 0)))

(assert (=> d!461404 (= lt!538458 Nil!16803)))

(declare-fun lt!538457 () Unit!26051)

(declare-fun lt!538455 () Unit!26051)

(assert (=> d!461404 (= lt!538457 lt!538455)))

(declare-fun lt!538452 () Int)

(assert (=> d!461404 (= (sizeTr!51 lt!538190 lt!538452) (+ (size!13604 lt!538190) lt!538452))))

(assert (=> d!461404 (= lt!538455 (lemmaSizeTrEqualsSize!51 lt!538190 lt!538452))))

(assert (=> d!461404 (= lt!538452 0)))

(assert (=> d!461404 (validRegex!1710 (regex!2945 rule!240))))

(assert (=> d!461404 (= (findLongestMatch!260 (regex!2945 rule!240) lt!538190) lt!538456)))

(declare-fun bs!388587 () Bool)

(assert (= bs!388587 d!461404))

(declare-fun m!1827540 () Bool)

(assert (=> bs!388587 m!1827540))

(declare-fun m!1827542 () Bool)

(assert (=> bs!388587 m!1827542))

(declare-fun m!1827544 () Bool)

(assert (=> bs!388587 m!1827544))

(declare-fun m!1827546 () Bool)

(assert (=> bs!388587 m!1827546))

(assert (=> bs!388587 m!1826659))

(assert (=> bs!388587 m!1826563))

(declare-fun m!1827548 () Bool)

(assert (=> bs!388587 m!1827548))

(declare-fun m!1827550 () Bool)

(assert (=> bs!388587 m!1827550))

(assert (=> bs!388587 m!1827542))

(declare-fun m!1827552 () Bool)

(assert (=> bs!388587 m!1827552))

(declare-fun m!1827554 () Bool)

(assert (=> bs!388587 m!1827554))

(assert (=> d!461070 d!461404))

(assert (=> d!461070 d!461100))

(declare-fun d!461406 () Bool)

(assert (=> d!461406 (= lt!538190 Nil!16803)))

(declare-fun lt!538461 () Unit!26051)

(declare-fun choose!9280 (List!16871 List!16871 List!16871) Unit!26051)

(assert (=> d!461406 (= lt!538461 (choose!9280 lt!538190 Nil!16803 lt!538190))))

(assert (=> d!461406 (isPrefix!1259 lt!538190 lt!538190)))

(assert (=> d!461406 (= (lemmaIsPrefixSameLengthThenSameList!123 lt!538190 Nil!16803 lt!538190) lt!538461)))

(declare-fun bs!388588 () Bool)

(assert (= bs!388588 d!461406))

(declare-fun m!1827556 () Bool)

(assert (=> bs!388588 m!1827556))

(assert (=> bs!388588 m!1826801))

(assert (=> bm!101960 d!461406))

(declare-fun bs!388589 () Bool)

(declare-fun d!461408 () Bool)

(assert (= bs!388589 (and d!461408 d!461274)))

(declare-fun lambda!65845 () Int)

(assert (=> bs!388589 (= lambda!65845 lambda!65814)))

(declare-fun bs!388590 () Bool)

(assert (= bs!388590 (and d!461408 d!461320)))

(assert (=> bs!388590 (= lambda!65845 lambda!65824)))

(declare-fun bs!388591 () Bool)

(assert (= bs!388591 (and d!461408 d!461368)))

(assert (=> bs!388591 (= lambda!65845 lambda!65832)))

(declare-fun bs!388592 () Bool)

(assert (= bs!388592 (and d!461408 d!461156)))

(assert (=> bs!388592 (= lambda!65845 lambda!65805)))

(declare-fun bs!388593 () Bool)

(assert (= bs!388593 (and d!461408 d!461154)))

(assert (=> bs!388593 (= lambda!65845 lambda!65804)))

(declare-fun bs!388594 () Bool)

(assert (= bs!388594 (and d!461408 d!461372)))

(assert (=> bs!388594 (= lambda!65845 lambda!65834)))

(declare-fun bs!388595 () Bool)

(assert (= bs!388595 (and d!461408 d!461152)))

(assert (=> bs!388595 (= lambda!65845 lambda!65803)))

(declare-fun bs!388596 () Bool)

(assert (= bs!388596 (and d!461408 d!461338)))

(assert (=> bs!388596 (= lambda!65845 lambda!65830)))

(declare-fun bs!388597 () Bool)

(assert (= bs!388597 (and d!461408 d!461376)))

(assert (=> bs!388597 (= lambda!65845 lambda!65836)))

(declare-fun bs!388598 () Bool)

(assert (= bs!388598 (and d!461408 d!461386)))

(assert (=> bs!388598 (= lambda!65845 lambda!65843)))

(declare-fun bs!388599 () Bool)

(assert (= bs!388599 (and d!461408 d!461266)))

(assert (=> bs!388599 (= lambda!65845 lambda!65813)))

(declare-fun bs!388600 () Bool)

(assert (= bs!388600 (and d!461408 d!461380)))

(assert (=> bs!388600 (= lambda!65845 lambda!65838)))

(declare-fun bs!388601 () Bool)

(assert (= bs!388601 (and d!461408 d!461158)))

(assert (=> bs!388601 (= lambda!65845 lambda!65806)))

(declare-fun bs!388602 () Bool)

(assert (= bs!388602 (and d!461408 d!461286)))

(assert (=> bs!388602 (= lambda!65845 lambda!65818)))

(declare-fun bs!388603 () Bool)

(assert (= bs!388603 (and d!461408 d!461302)))

(assert (=> bs!388603 (= lambda!65845 lambda!65823)))

(declare-fun bs!388604 () Bool)

(assert (= bs!388604 (and d!461408 d!461292)))

(assert (=> bs!388604 (= lambda!65845 lambda!65819)))

(declare-fun bs!388605 () Bool)

(assert (= bs!388605 (and d!461408 d!461384)))

(assert (=> bs!388605 (= lambda!65845 lambda!65842)))

(declare-fun bs!388606 () Bool)

(assert (= bs!388606 (and d!461408 d!461378)))

(assert (=> bs!388606 (= lambda!65845 lambda!65837)))

(declare-fun bs!388607 () Bool)

(assert (= bs!388607 (and d!461408 d!461374)))

(assert (=> bs!388607 (= lambda!65845 lambda!65835)))

(declare-fun bs!388608 () Bool)

(assert (= bs!388608 (and d!461408 d!461346)))

(assert (=> bs!388608 (= lambda!65845 lambda!65831)))

(declare-fun bs!388609 () Bool)

(assert (= bs!388609 (and d!461408 d!461330)))

(assert (=> bs!388609 (= lambda!65845 lambda!65829)))

(declare-fun bs!388610 () Bool)

(assert (= bs!388610 (and d!461408 d!461396)))

(assert (=> bs!388610 (= lambda!65845 lambda!65844)))

(declare-fun bs!388611 () Bool)

(assert (= bs!388611 (and d!461408 d!461264)))

(assert (=> bs!388611 (= lambda!65845 lambda!65812)))

(declare-fun bs!388612 () Bool)

(assert (= bs!388612 (and d!461408 d!461186)))

(assert (=> bs!388612 (= lambda!65845 lambda!65810)))

(declare-fun bs!388613 () Bool)

(assert (= bs!388613 (and d!461408 d!461370)))

(assert (=> bs!388613 (= lambda!65845 lambda!65833)))

(declare-fun bs!388614 () Bool)

(assert (= bs!388614 (and d!461408 d!461188)))

(assert (=> bs!388614 (= lambda!65845 lambda!65811)))

(declare-fun bs!388615 () Bool)

(assert (= bs!388615 (and d!461408 d!461322)))

(assert (=> bs!388615 (= lambda!65845 lambda!65825)))

(assert (=> d!461408 (= (inv!22082 setElem!10767) (forall!3925 (exprs!1291 setElem!10767) lambda!65845))))

(declare-fun bs!388616 () Bool)

(assert (= bs!388616 d!461408))

(declare-fun m!1827558 () Bool)

(assert (=> bs!388616 m!1827558))

(assert (=> setNonEmpty!10767 d!461408))

(declare-fun b!1554912 () Bool)

(declare-fun e!997555 () List!16871)

(assert (=> b!1554912 (= e!997555 (list!6491 (xs!8363 (c!252615 totalInput!568))))))

(declare-fun b!1554911 () Bool)

(declare-fun e!997554 () List!16871)

(assert (=> b!1554911 (= e!997554 e!997555)))

(declare-fun c!252754 () Bool)

(assert (=> b!1554911 (= c!252754 ((_ is Leaf!8245) (c!252615 totalInput!568)))))

(declare-fun d!461410 () Bool)

(declare-fun c!252753 () Bool)

(assert (=> d!461410 (= c!252753 ((_ is Empty!5563) (c!252615 totalInput!568)))))

(assert (=> d!461410 (= (list!6490 (c!252615 totalInput!568)) e!997554)))

(declare-fun b!1554910 () Bool)

(assert (=> b!1554910 (= e!997554 Nil!16803)))

(declare-fun b!1554913 () Bool)

(assert (=> b!1554913 (= e!997555 (++!4413 (list!6490 (left!13662 (c!252615 totalInput!568))) (list!6490 (right!13992 (c!252615 totalInput!568)))))))

(assert (= (and d!461410 c!252753) b!1554910))

(assert (= (and d!461410 (not c!252753)) b!1554911))

(assert (= (and b!1554911 c!252754) b!1554912))

(assert (= (and b!1554911 (not c!252754)) b!1554913))

(assert (=> b!1554912 m!1827459))

(declare-fun m!1827560 () Bool)

(assert (=> b!1554913 m!1827560))

(declare-fun m!1827562 () Bool)

(assert (=> b!1554913 m!1827562))

(assert (=> b!1554913 m!1827560))

(assert (=> b!1554913 m!1827562))

(declare-fun m!1827564 () Bool)

(assert (=> b!1554913 m!1827564))

(assert (=> d!461112 d!461410))

(assert (=> b!1554237 d!461172))

(declare-fun d!461412 () Bool)

(declare-fun c!252755 () Bool)

(assert (=> d!461412 (= c!252755 ((_ is Node!5563) (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(declare-fun e!997556 () Bool)

(assert (=> d!461412 (= (inv!22074 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) e!997556)))

(declare-fun b!1554914 () Bool)

(assert (=> b!1554914 (= e!997556 (inv!22080 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(declare-fun b!1554915 () Bool)

(declare-fun e!997557 () Bool)

(assert (=> b!1554915 (= e!997556 e!997557)))

(declare-fun res!694220 () Bool)

(assert (=> b!1554915 (= res!694220 (not ((_ is Leaf!8245) (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))))

(assert (=> b!1554915 (=> res!694220 e!997557)))

(declare-fun b!1554916 () Bool)

(assert (=> b!1554916 (= e!997557 (inv!22081 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(assert (= (and d!461412 c!252755) b!1554914))

(assert (= (and d!461412 (not c!252755)) b!1554915))

(assert (= (and b!1554915 (not res!694220)) b!1554916))

(declare-fun m!1827566 () Bool)

(assert (=> b!1554914 m!1827566))

(declare-fun m!1827568 () Bool)

(assert (=> b!1554916 m!1827568))

(assert (=> b!1554441 d!461412))

(declare-fun d!461414 () Bool)

(declare-fun c!252756 () Bool)

(assert (=> d!461414 (= c!252756 ((_ is Node!5563) (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(declare-fun e!997558 () Bool)

(assert (=> d!461414 (= (inv!22074 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) e!997558)))

(declare-fun b!1554917 () Bool)

(assert (=> b!1554917 (= e!997558 (inv!22080 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(declare-fun b!1554918 () Bool)

(declare-fun e!997559 () Bool)

(assert (=> b!1554918 (= e!997558 e!997559)))

(declare-fun res!694221 () Bool)

(assert (=> b!1554918 (= res!694221 (not ((_ is Leaf!8245) (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))))))

(assert (=> b!1554918 (=> res!694221 e!997559)))

(declare-fun b!1554919 () Bool)

(assert (=> b!1554919 (= e!997559 (inv!22081 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))))

(assert (= (and d!461414 c!252756) b!1554917))

(assert (= (and d!461414 (not c!252756)) b!1554918))

(assert (= (and b!1554918 (not res!694221)) b!1554919))

(declare-fun m!1827570 () Bool)

(assert (=> b!1554917 m!1827570))

(declare-fun m!1827572 () Bool)

(assert (=> b!1554919 m!1827572))

(assert (=> b!1554441 d!461414))

(declare-fun bs!388617 () Bool)

(declare-fun d!461416 () Bool)

(assert (= bs!388617 (and d!461416 d!461274)))

(declare-fun lambda!65846 () Int)

(assert (=> bs!388617 (= lambda!65846 lambda!65814)))

(declare-fun bs!388618 () Bool)

(assert (= bs!388618 (and d!461416 d!461320)))

(assert (=> bs!388618 (= lambda!65846 lambda!65824)))

(declare-fun bs!388619 () Bool)

(assert (= bs!388619 (and d!461416 d!461368)))

(assert (=> bs!388619 (= lambda!65846 lambda!65832)))

(declare-fun bs!388620 () Bool)

(assert (= bs!388620 (and d!461416 d!461156)))

(assert (=> bs!388620 (= lambda!65846 lambda!65805)))

(declare-fun bs!388621 () Bool)

(assert (= bs!388621 (and d!461416 d!461372)))

(assert (=> bs!388621 (= lambda!65846 lambda!65834)))

(declare-fun bs!388622 () Bool)

(assert (= bs!388622 (and d!461416 d!461152)))

(assert (=> bs!388622 (= lambda!65846 lambda!65803)))

(declare-fun bs!388623 () Bool)

(assert (= bs!388623 (and d!461416 d!461338)))

(assert (=> bs!388623 (= lambda!65846 lambda!65830)))

(declare-fun bs!388624 () Bool)

(assert (= bs!388624 (and d!461416 d!461376)))

(assert (=> bs!388624 (= lambda!65846 lambda!65836)))

(declare-fun bs!388625 () Bool)

(assert (= bs!388625 (and d!461416 d!461386)))

(assert (=> bs!388625 (= lambda!65846 lambda!65843)))

(declare-fun bs!388626 () Bool)

(assert (= bs!388626 (and d!461416 d!461266)))

(assert (=> bs!388626 (= lambda!65846 lambda!65813)))

(declare-fun bs!388627 () Bool)

(assert (= bs!388627 (and d!461416 d!461380)))

(assert (=> bs!388627 (= lambda!65846 lambda!65838)))

(declare-fun bs!388628 () Bool)

(assert (= bs!388628 (and d!461416 d!461158)))

(assert (=> bs!388628 (= lambda!65846 lambda!65806)))

(declare-fun bs!388629 () Bool)

(assert (= bs!388629 (and d!461416 d!461286)))

(assert (=> bs!388629 (= lambda!65846 lambda!65818)))

(declare-fun bs!388630 () Bool)

(assert (= bs!388630 (and d!461416 d!461154)))

(assert (=> bs!388630 (= lambda!65846 lambda!65804)))

(declare-fun bs!388631 () Bool)

(assert (= bs!388631 (and d!461416 d!461408)))

(assert (=> bs!388631 (= lambda!65846 lambda!65845)))

(declare-fun bs!388632 () Bool)

(assert (= bs!388632 (and d!461416 d!461302)))

(assert (=> bs!388632 (= lambda!65846 lambda!65823)))

(declare-fun bs!388633 () Bool)

(assert (= bs!388633 (and d!461416 d!461292)))

(assert (=> bs!388633 (= lambda!65846 lambda!65819)))

(declare-fun bs!388634 () Bool)

(assert (= bs!388634 (and d!461416 d!461384)))

(assert (=> bs!388634 (= lambda!65846 lambda!65842)))

(declare-fun bs!388635 () Bool)

(assert (= bs!388635 (and d!461416 d!461378)))

(assert (=> bs!388635 (= lambda!65846 lambda!65837)))

(declare-fun bs!388636 () Bool)

(assert (= bs!388636 (and d!461416 d!461374)))

(assert (=> bs!388636 (= lambda!65846 lambda!65835)))

(declare-fun bs!388637 () Bool)

(assert (= bs!388637 (and d!461416 d!461346)))

(assert (=> bs!388637 (= lambda!65846 lambda!65831)))

(declare-fun bs!388638 () Bool)

(assert (= bs!388638 (and d!461416 d!461330)))

(assert (=> bs!388638 (= lambda!65846 lambda!65829)))

(declare-fun bs!388639 () Bool)

(assert (= bs!388639 (and d!461416 d!461396)))

(assert (=> bs!388639 (= lambda!65846 lambda!65844)))

(declare-fun bs!388640 () Bool)

(assert (= bs!388640 (and d!461416 d!461264)))

(assert (=> bs!388640 (= lambda!65846 lambda!65812)))

(declare-fun bs!388641 () Bool)

(assert (= bs!388641 (and d!461416 d!461186)))

(assert (=> bs!388641 (= lambda!65846 lambda!65810)))

(declare-fun bs!388642 () Bool)

(assert (= bs!388642 (and d!461416 d!461370)))

(assert (=> bs!388642 (= lambda!65846 lambda!65833)))

(declare-fun bs!388643 () Bool)

(assert (= bs!388643 (and d!461416 d!461188)))

(assert (=> bs!388643 (= lambda!65846 lambda!65811)))

(declare-fun bs!388644 () Bool)

(assert (= bs!388644 (and d!461416 d!461322)))

(assert (=> bs!388644 (= lambda!65846 lambda!65825)))

(assert (=> d!461416 (= (inv!22082 (_2!9461 (_1!9462 (h!22208 mapValue!8333)))) (forall!3925 (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapValue!8333)))) lambda!65846))))

(declare-fun bs!388645 () Bool)

(assert (= bs!388645 d!461416))

(declare-fun m!1827574 () Bool)

(assert (=> bs!388645 m!1827574))

(assert (=> b!1554429 d!461416))

(declare-fun bs!388646 () Bool)

(declare-fun d!461418 () Bool)

(assert (= bs!388646 (and d!461418 d!461274)))

(declare-fun lambda!65847 () Int)

(assert (=> bs!388646 (= lambda!65847 lambda!65814)))

(declare-fun bs!388647 () Bool)

(assert (= bs!388647 (and d!461418 d!461368)))

(assert (=> bs!388647 (= lambda!65847 lambda!65832)))

(declare-fun bs!388648 () Bool)

(assert (= bs!388648 (and d!461418 d!461156)))

(assert (=> bs!388648 (= lambda!65847 lambda!65805)))

(declare-fun bs!388649 () Bool)

(assert (= bs!388649 (and d!461418 d!461372)))

(assert (=> bs!388649 (= lambda!65847 lambda!65834)))

(declare-fun bs!388650 () Bool)

(assert (= bs!388650 (and d!461418 d!461152)))

(assert (=> bs!388650 (= lambda!65847 lambda!65803)))

(declare-fun bs!388651 () Bool)

(assert (= bs!388651 (and d!461418 d!461338)))

(assert (=> bs!388651 (= lambda!65847 lambda!65830)))

(declare-fun bs!388652 () Bool)

(assert (= bs!388652 (and d!461418 d!461376)))

(assert (=> bs!388652 (= lambda!65847 lambda!65836)))

(declare-fun bs!388653 () Bool)

(assert (= bs!388653 (and d!461418 d!461386)))

(assert (=> bs!388653 (= lambda!65847 lambda!65843)))

(declare-fun bs!388654 () Bool)

(assert (= bs!388654 (and d!461418 d!461266)))

(assert (=> bs!388654 (= lambda!65847 lambda!65813)))

(declare-fun bs!388655 () Bool)

(assert (= bs!388655 (and d!461418 d!461380)))

(assert (=> bs!388655 (= lambda!65847 lambda!65838)))

(declare-fun bs!388656 () Bool)

(assert (= bs!388656 (and d!461418 d!461416)))

(assert (=> bs!388656 (= lambda!65847 lambda!65846)))

(declare-fun bs!388657 () Bool)

(assert (= bs!388657 (and d!461418 d!461320)))

(assert (=> bs!388657 (= lambda!65847 lambda!65824)))

(declare-fun bs!388658 () Bool)

(assert (= bs!388658 (and d!461418 d!461158)))

(assert (=> bs!388658 (= lambda!65847 lambda!65806)))

(declare-fun bs!388659 () Bool)

(assert (= bs!388659 (and d!461418 d!461286)))

(assert (=> bs!388659 (= lambda!65847 lambda!65818)))

(declare-fun bs!388660 () Bool)

(assert (= bs!388660 (and d!461418 d!461154)))

(assert (=> bs!388660 (= lambda!65847 lambda!65804)))

(declare-fun bs!388661 () Bool)

(assert (= bs!388661 (and d!461418 d!461408)))

(assert (=> bs!388661 (= lambda!65847 lambda!65845)))

(declare-fun bs!388662 () Bool)

(assert (= bs!388662 (and d!461418 d!461302)))

(assert (=> bs!388662 (= lambda!65847 lambda!65823)))

(declare-fun bs!388663 () Bool)

(assert (= bs!388663 (and d!461418 d!461292)))

(assert (=> bs!388663 (= lambda!65847 lambda!65819)))

(declare-fun bs!388664 () Bool)

(assert (= bs!388664 (and d!461418 d!461384)))

(assert (=> bs!388664 (= lambda!65847 lambda!65842)))

(declare-fun bs!388665 () Bool)

(assert (= bs!388665 (and d!461418 d!461378)))

(assert (=> bs!388665 (= lambda!65847 lambda!65837)))

(declare-fun bs!388666 () Bool)

(assert (= bs!388666 (and d!461418 d!461374)))

(assert (=> bs!388666 (= lambda!65847 lambda!65835)))

(declare-fun bs!388667 () Bool)

(assert (= bs!388667 (and d!461418 d!461346)))

(assert (=> bs!388667 (= lambda!65847 lambda!65831)))

(declare-fun bs!388668 () Bool)

(assert (= bs!388668 (and d!461418 d!461330)))

(assert (=> bs!388668 (= lambda!65847 lambda!65829)))

(declare-fun bs!388669 () Bool)

(assert (= bs!388669 (and d!461418 d!461396)))

(assert (=> bs!388669 (= lambda!65847 lambda!65844)))

(declare-fun bs!388670 () Bool)

(assert (= bs!388670 (and d!461418 d!461264)))

(assert (=> bs!388670 (= lambda!65847 lambda!65812)))

(declare-fun bs!388671 () Bool)

(assert (= bs!388671 (and d!461418 d!461186)))

(assert (=> bs!388671 (= lambda!65847 lambda!65810)))

(declare-fun bs!388672 () Bool)

(assert (= bs!388672 (and d!461418 d!461370)))

(assert (=> bs!388672 (= lambda!65847 lambda!65833)))

(declare-fun bs!388673 () Bool)

(assert (= bs!388673 (and d!461418 d!461188)))

(assert (=> bs!388673 (= lambda!65847 lambda!65811)))

(declare-fun bs!388674 () Bool)

(assert (= bs!388674 (and d!461418 d!461322)))

(assert (=> bs!388674 (= lambda!65847 lambda!65825)))

(assert (=> d!461418 (= (inv!22082 setElem!10766) (forall!3925 (exprs!1291 setElem!10766) lambda!65847))))

(declare-fun bs!388675 () Bool)

(assert (= bs!388675 d!461418))

(declare-fun m!1827576 () Bool)

(assert (=> bs!388675 m!1827576))

(assert (=> setNonEmpty!10766 d!461418))

(declare-fun d!461420 () Bool)

(assert (=> d!461420 (= (list!6489 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))) (list!6490 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))))))

(declare-fun bs!388676 () Bool)

(assert (= bs!388676 d!461420))

(declare-fun m!1827578 () Bool)

(assert (=> bs!388676 m!1827578))

(assert (=> bs!388175 d!461420))

(assert (=> bs!388175 d!461118))

(declare-fun b!1554924 () Bool)

(declare-fun e!997562 () Bool)

(declare-fun tp!455436 () Bool)

(declare-fun tp!455437 () Bool)

(assert (=> b!1554924 (= e!997562 (and tp!455436 tp!455437))))

(assert (=> b!1554367 (= tp!455245 e!997562)))

(assert (= (and b!1554367 ((_ is Cons!16804) (exprs!1291 setElem!10774))) b!1554924))

(declare-fun b!1554925 () Bool)

(declare-fun e!997563 () Bool)

(declare-fun tp!455438 () Bool)

(declare-fun tp!455439 () Bool)

(assert (=> b!1554925 (= e!997563 (and tp!455438 tp!455439))))

(assert (=> b!1554363 (= tp!455238 e!997563)))

(assert (= (and b!1554363 ((_ is Cons!16804) (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapDefault!8322)))))) b!1554925))

(declare-fun b!1554926 () Bool)

(declare-fun e!997564 () Bool)

(declare-fun tp!455440 () Bool)

(declare-fun tp!455441 () Bool)

(assert (=> b!1554926 (= e!997564 (and tp!455440 tp!455441))))

(assert (=> b!1554404 (= tp!455292 e!997564)))

(assert (= (and b!1554404 ((_ is Cons!16804) (exprs!1291 (_1!9457 (_1!9458 (h!22206 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))))) b!1554926))

(declare-fun e!997565 () Bool)

(assert (=> b!1554439 (= tp!455350 e!997565)))

(declare-fun b!1554927 () Bool)

(assert (=> b!1554927 (= e!997565 tp_is_empty!7065)))

(declare-fun b!1554928 () Bool)

(declare-fun tp!455444 () Bool)

(declare-fun tp!455446 () Bool)

(assert (=> b!1554928 (= e!997565 (and tp!455444 tp!455446))))

(declare-fun b!1554929 () Bool)

(declare-fun tp!455442 () Bool)

(assert (=> b!1554929 (= e!997565 tp!455442)))

(declare-fun b!1554930 () Bool)

(declare-fun tp!455443 () Bool)

(declare-fun tp!455445 () Bool)

(assert (=> b!1554930 (= e!997565 (and tp!455443 tp!455445))))

(assert (= (and b!1554439 ((_ is ElementMatch!4273) (_1!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554927))

(assert (= (and b!1554439 ((_ is Concat!7309) (_1!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554928))

(assert (= (and b!1554439 ((_ is Star!4273) (_1!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554929))

(assert (= (and b!1554439 ((_ is Union!4273) (_1!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554930))

(declare-fun b!1554931 () Bool)

(declare-fun e!997567 () Bool)

(declare-fun tp!455447 () Bool)

(assert (=> b!1554931 (= e!997567 tp!455447)))

(declare-fun e!997566 () Bool)

(assert (=> b!1554439 (= tp!455347 e!997566)))

(declare-fun setRes!10798 () Bool)

(declare-fun setElem!10798 () Context!1582)

(declare-fun setNonEmpty!10798 () Bool)

(declare-fun tp!455450 () Bool)

(declare-fun e!997568 () Bool)

(assert (=> setNonEmpty!10798 (= setRes!10798 (and tp!455450 (inv!22082 setElem!10798) e!997568))))

(declare-fun setRest!10798 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10798 (= (_2!9462 (h!22208 (t!141318 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10798 true) setRest!10798))))

(declare-fun tp!455451 () Bool)

(declare-fun tp!455448 () Bool)

(declare-fun b!1554932 () Bool)

(assert (=> b!1554932 (= e!997566 (and tp!455451 (inv!22082 (_2!9461 (_1!9462 (h!22208 (t!141318 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) e!997567 tp_is_empty!7065 setRes!10798 tp!455448))))

(declare-fun condSetEmpty!10798 () Bool)

(assert (=> b!1554932 (= condSetEmpty!10798 (= (_2!9462 (h!22208 (t!141318 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10798 () Bool)

(assert (=> setIsEmpty!10798 setRes!10798))

(declare-fun b!1554933 () Bool)

(declare-fun tp!455449 () Bool)

(assert (=> b!1554933 (= e!997568 tp!455449)))

(assert (= b!1554932 b!1554931))

(assert (= (and b!1554932 condSetEmpty!10798) setIsEmpty!10798))

(assert (= (and b!1554932 (not condSetEmpty!10798)) setNonEmpty!10798))

(assert (= setNonEmpty!10798 b!1554933))

(assert (= (and b!1554439 ((_ is Cons!16807) (t!141318 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))) b!1554932))

(declare-fun m!1827580 () Bool)

(assert (=> setNonEmpty!10798 m!1827580))

(declare-fun m!1827582 () Bool)

(assert (=> b!1554932 m!1827582))

(declare-fun condSetEmpty!10801 () Bool)

(assert (=> setNonEmpty!10784 (= condSetEmpty!10801 (= setRest!10784 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10801 () Bool)

(assert (=> setNonEmpty!10784 (= tp!455285 setRes!10801)))

(declare-fun setIsEmpty!10801 () Bool)

(assert (=> setIsEmpty!10801 setRes!10801))

(declare-fun tp!455456 () Bool)

(declare-fun setElem!10801 () Context!1582)

(declare-fun setNonEmpty!10801 () Bool)

(declare-fun e!997571 () Bool)

(assert (=> setNonEmpty!10801 (= setRes!10801 (and tp!455456 (inv!22082 setElem!10801) e!997571))))

(declare-fun setRest!10801 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10801 (= setRest!10784 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10801 true) setRest!10801))))

(declare-fun b!1554938 () Bool)

(declare-fun tp!455457 () Bool)

(assert (=> b!1554938 (= e!997571 tp!455457)))

(assert (= (and setNonEmpty!10784 condSetEmpty!10801) setIsEmpty!10801))

(assert (= (and setNonEmpty!10784 (not condSetEmpty!10801)) setNonEmpty!10801))

(assert (= setNonEmpty!10801 b!1554938))

(declare-fun m!1827584 () Bool)

(assert (=> setNonEmpty!10801 m!1827584))

(declare-fun e!997572 () Bool)

(assert (=> b!1554436 (= tp!455345 e!997572)))

(declare-fun b!1554939 () Bool)

(assert (=> b!1554939 (= e!997572 tp_is_empty!7065)))

(declare-fun b!1554940 () Bool)

(declare-fun tp!455460 () Bool)

(declare-fun tp!455462 () Bool)

(assert (=> b!1554940 (= e!997572 (and tp!455460 tp!455462))))

(declare-fun b!1554941 () Bool)

(declare-fun tp!455458 () Bool)

(assert (=> b!1554941 (= e!997572 tp!455458)))

(declare-fun b!1554942 () Bool)

(declare-fun tp!455459 () Bool)

(declare-fun tp!455461 () Bool)

(assert (=> b!1554942 (= e!997572 (and tp!455459 tp!455461))))

(assert (= (and b!1554436 ((_ is ElementMatch!4273) (_1!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554939))

(assert (= (and b!1554436 ((_ is Concat!7309) (_1!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554940))

(assert (= (and b!1554436 ((_ is Star!4273) (_1!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554941))

(assert (= (and b!1554436 ((_ is Union!4273) (_1!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) b!1554942))

(declare-fun b!1554943 () Bool)

(declare-fun e!997574 () Bool)

(declare-fun tp!455463 () Bool)

(assert (=> b!1554943 (= e!997574 tp!455463)))

(declare-fun e!997573 () Bool)

(assert (=> b!1554436 (= tp!455342 e!997573)))

(declare-fun e!997575 () Bool)

(declare-fun setNonEmpty!10802 () Bool)

(declare-fun setElem!10802 () Context!1582)

(declare-fun setRes!10802 () Bool)

(declare-fun tp!455466 () Bool)

(assert (=> setNonEmpty!10802 (= setRes!10802 (and tp!455466 (inv!22082 setElem!10802) e!997575))))

(declare-fun setRest!10802 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10802 (= (_2!9462 (h!22208 (t!141318 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10802 true) setRest!10802))))

(declare-fun tp!455464 () Bool)

(declare-fun b!1554944 () Bool)

(declare-fun tp!455467 () Bool)

(assert (=> b!1554944 (= e!997573 (and tp!455467 (inv!22082 (_2!9461 (_1!9462 (h!22208 (t!141318 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))))) e!997574 tp_is_empty!7065 setRes!10802 tp!455464))))

(declare-fun condSetEmpty!10802 () Bool)

(assert (=> b!1554944 (= condSetEmpty!10802 (= (_2!9462 (h!22208 (t!141318 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10802 () Bool)

(assert (=> setIsEmpty!10802 setRes!10802))

(declare-fun b!1554945 () Bool)

(declare-fun tp!455465 () Bool)

(assert (=> b!1554945 (= e!997575 tp!455465)))

(assert (= b!1554944 b!1554943))

(assert (= (and b!1554944 condSetEmpty!10802) setIsEmpty!10802))

(assert (= (and b!1554944 (not condSetEmpty!10802)) setNonEmpty!10802))

(assert (= setNonEmpty!10802 b!1554945))

(assert (= (and b!1554436 ((_ is Cons!16807) (t!141318 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768))))))))) b!1554944))

(declare-fun m!1827586 () Bool)

(assert (=> setNonEmpty!10802 m!1827586))

(declare-fun m!1827588 () Bool)

(assert (=> b!1554944 m!1827588))

(declare-fun e!997576 () Bool)

(assert (=> b!1554433 (= tp!455340 e!997576)))

(declare-fun b!1554946 () Bool)

(assert (=> b!1554946 (= e!997576 tp_is_empty!7065)))

(declare-fun b!1554947 () Bool)

(declare-fun tp!455470 () Bool)

(declare-fun tp!455472 () Bool)

(assert (=> b!1554947 (= e!997576 (and tp!455470 tp!455472))))

(declare-fun b!1554948 () Bool)

(declare-fun tp!455468 () Bool)

(assert (=> b!1554948 (= e!997576 tp!455468)))

(declare-fun b!1554949 () Bool)

(declare-fun tp!455469 () Bool)

(declare-fun tp!455471 () Bool)

(assert (=> b!1554949 (= e!997576 (and tp!455469 tp!455471))))

(assert (= (and b!1554433 ((_ is ElementMatch!4273) (_1!9461 (_1!9462 (h!22208 mapValue!8322))))) b!1554946))

(assert (= (and b!1554433 ((_ is Concat!7309) (_1!9461 (_1!9462 (h!22208 mapValue!8322))))) b!1554947))

(assert (= (and b!1554433 ((_ is Star!4273) (_1!9461 (_1!9462 (h!22208 mapValue!8322))))) b!1554948))

(assert (= (and b!1554433 ((_ is Union!4273) (_1!9461 (_1!9462 (h!22208 mapValue!8322))))) b!1554949))

(declare-fun b!1554950 () Bool)

(declare-fun e!997578 () Bool)

(declare-fun tp!455473 () Bool)

(assert (=> b!1554950 (= e!997578 tp!455473)))

(declare-fun e!997577 () Bool)

(assert (=> b!1554433 (= tp!455337 e!997577)))

(declare-fun setRes!10803 () Bool)

(declare-fun setNonEmpty!10803 () Bool)

(declare-fun tp!455476 () Bool)

(declare-fun setElem!10803 () Context!1582)

(declare-fun e!997579 () Bool)

(assert (=> setNonEmpty!10803 (= setRes!10803 (and tp!455476 (inv!22082 setElem!10803) e!997579))))

(declare-fun setRest!10803 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10803 (= (_2!9462 (h!22208 (t!141318 mapValue!8322))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10803 true) setRest!10803))))

(declare-fun tp!455477 () Bool)

(declare-fun b!1554951 () Bool)

(declare-fun tp!455474 () Bool)

(assert (=> b!1554951 (= e!997577 (and tp!455477 (inv!22082 (_2!9461 (_1!9462 (h!22208 (t!141318 mapValue!8322))))) e!997578 tp_is_empty!7065 setRes!10803 tp!455474))))

(declare-fun condSetEmpty!10803 () Bool)

(assert (=> b!1554951 (= condSetEmpty!10803 (= (_2!9462 (h!22208 (t!141318 mapValue!8322))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10803 () Bool)

(assert (=> setIsEmpty!10803 setRes!10803))

(declare-fun b!1554952 () Bool)

(declare-fun tp!455475 () Bool)

(assert (=> b!1554952 (= e!997579 tp!455475)))

(assert (= b!1554951 b!1554950))

(assert (= (and b!1554951 condSetEmpty!10803) setIsEmpty!10803))

(assert (= (and b!1554951 (not condSetEmpty!10803)) setNonEmpty!10803))

(assert (= setNonEmpty!10803 b!1554952))

(assert (= (and b!1554433 ((_ is Cons!16807) (t!141318 mapValue!8322))) b!1554951))

(declare-fun m!1827590 () Bool)

(assert (=> setNonEmpty!10803 m!1827590))

(declare-fun m!1827592 () Bool)

(assert (=> b!1554951 m!1827592))

(declare-fun b!1554953 () Bool)

(declare-fun e!997580 () Bool)

(declare-fun tp!455478 () Bool)

(declare-fun tp!455479 () Bool)

(assert (=> b!1554953 (= e!997580 (and tp!455478 tp!455479))))

(assert (=> b!1554340 (= tp!455215 e!997580)))

(assert (= (and b!1554340 ((_ is Cons!16804) (exprs!1291 setElem!10770))) b!1554953))

(declare-fun b!1554954 () Bool)

(declare-fun e!997581 () Bool)

(declare-fun tp!455480 () Bool)

(declare-fun tp!455481 () Bool)

(assert (=> b!1554954 (= e!997581 (and tp!455480 tp!455481))))

(assert (=> b!1554387 (= tp!455271 e!997581)))

(assert (= (and b!1554387 ((_ is Cons!16804) (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapDefault!8330)))))) b!1554954))

(declare-fun b!1554955 () Bool)

(declare-fun e!997582 () Bool)

(declare-fun tp!455482 () Bool)

(declare-fun tp!455483 () Bool)

(assert (=> b!1554955 (= e!997582 (and tp!455482 tp!455483))))

(assert (=> b!1554430 (= tp!455330 e!997582)))

(assert (= (and b!1554430 ((_ is Cons!16804) (exprs!1291 setElem!10794))) b!1554955))

(declare-fun b!1554956 () Bool)

(declare-fun e!997583 () Bool)

(declare-fun tp!455484 () Bool)

(declare-fun tp!455485 () Bool)

(assert (=> b!1554956 (= e!997583 (and tp!455484 tp!455485))))

(assert (=> b!1554383 (= tp!455269 e!997583)))

(assert (= (and b!1554383 ((_ is Cons!16804) (exprs!1291 setElem!10779))) b!1554956))

(declare-fun b!1554957 () Bool)

(declare-fun e!997584 () Bool)

(declare-fun tp!455488 () Bool)

(assert (=> b!1554957 (= e!997584 tp!455488)))

(declare-fun e!997586 () Bool)

(assert (=> b!1554406 (= tp!455294 e!997586)))

(declare-fun setRes!10804 () Bool)

(declare-fun e!997585 () Bool)

(declare-fun tp!455487 () Bool)

(declare-fun b!1554958 () Bool)

(assert (=> b!1554958 (= e!997586 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (t!141316 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))))) e!997585 tp_is_empty!7065 setRes!10804 tp!455487))))

(declare-fun condSetEmpty!10804 () Bool)

(assert (=> b!1554958 (= condSetEmpty!10804 (= (_2!9458 (h!22206 (t!141316 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10804 () Bool)

(assert (=> setIsEmpty!10804 setRes!10804))

(declare-fun tp!455486 () Bool)

(declare-fun setNonEmpty!10804 () Bool)

(declare-fun setElem!10804 () Context!1582)

(assert (=> setNonEmpty!10804 (= setRes!10804 (and tp!455486 (inv!22082 setElem!10804) e!997584))))

(declare-fun setRest!10804 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10804 (= (_2!9458 (h!22206 (t!141316 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10804 true) setRest!10804))))

(declare-fun b!1554959 () Bool)

(declare-fun tp!455489 () Bool)

(assert (=> b!1554959 (= e!997585 tp!455489)))

(assert (= b!1554958 b!1554959))

(assert (= (and b!1554958 condSetEmpty!10804) setIsEmpty!10804))

(assert (= (and b!1554958 (not condSetEmpty!10804)) setNonEmpty!10804))

(assert (= setNonEmpty!10804 b!1554957))

(assert (= (and b!1554406 ((_ is Cons!16805) (t!141316 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))) b!1554958))

(declare-fun m!1827594 () Bool)

(assert (=> b!1554958 m!1827594))

(declare-fun m!1827596 () Bool)

(assert (=> setNonEmpty!10804 m!1827596))

(declare-fun b!1554960 () Bool)

(declare-fun e!997587 () Bool)

(declare-fun tp!455490 () Bool)

(declare-fun tp!455491 () Bool)

(assert (=> b!1554960 (= e!997587 (and tp!455490 tp!455491))))

(assert (=> b!1554402 (= tp!455291 e!997587)))

(assert (= (and b!1554402 ((_ is Cons!16804) (exprs!1291 setElem!10785))) b!1554960))

(declare-fun b!1554961 () Bool)

(declare-fun e!997588 () Bool)

(declare-fun tp!455494 () Bool)

(assert (=> b!1554961 (= e!997588 tp!455494)))

(declare-fun e!997590 () Bool)

(assert (=> b!1554384 (= tp!455267 e!997590)))

(declare-fun e!997589 () Bool)

(declare-fun b!1554962 () Bool)

(declare-fun setRes!10805 () Bool)

(declare-fun tp!455493 () Bool)

(assert (=> b!1554962 (= e!997590 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (t!141316 mapDefault!8330))))) e!997589 tp_is_empty!7065 setRes!10805 tp!455493))))

(declare-fun condSetEmpty!10805 () Bool)

(assert (=> b!1554962 (= condSetEmpty!10805 (= (_2!9458 (h!22206 (t!141316 mapDefault!8330))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10805 () Bool)

(assert (=> setIsEmpty!10805 setRes!10805))

(declare-fun tp!455492 () Bool)

(declare-fun setElem!10805 () Context!1582)

(declare-fun setNonEmpty!10805 () Bool)

(assert (=> setNonEmpty!10805 (= setRes!10805 (and tp!455492 (inv!22082 setElem!10805) e!997588))))

(declare-fun setRest!10805 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10805 (= (_2!9458 (h!22206 (t!141316 mapDefault!8330))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10805 true) setRest!10805))))

(declare-fun b!1554963 () Bool)

(declare-fun tp!455495 () Bool)

(assert (=> b!1554963 (= e!997589 tp!455495)))

(assert (= b!1554962 b!1554963))

(assert (= (and b!1554962 condSetEmpty!10805) setIsEmpty!10805))

(assert (= (and b!1554962 (not condSetEmpty!10805)) setNonEmpty!10805))

(assert (= setNonEmpty!10805 b!1554961))

(assert (= (and b!1554384 ((_ is Cons!16805) (t!141316 mapDefault!8330))) b!1554962))

(declare-fun m!1827598 () Bool)

(assert (=> b!1554962 m!1827598))

(declare-fun m!1827600 () Bool)

(assert (=> setNonEmpty!10805 m!1827600))

(declare-fun e!997591 () Bool)

(assert (=> b!1554317 (= tp!455181 e!997591)))

(declare-fun b!1554964 () Bool)

(assert (=> b!1554964 (= e!997591 tp_is_empty!7065)))

(declare-fun b!1554965 () Bool)

(declare-fun tp!455498 () Bool)

(declare-fun tp!455500 () Bool)

(assert (=> b!1554965 (= e!997591 (and tp!455498 tp!455500))))

(declare-fun b!1554966 () Bool)

(declare-fun tp!455496 () Bool)

(assert (=> b!1554966 (= e!997591 tp!455496)))

(declare-fun b!1554967 () Bool)

(declare-fun tp!455497 () Bool)

(declare-fun tp!455499 () Bool)

(assert (=> b!1554967 (= e!997591 (and tp!455497 tp!455499))))

(assert (= (and b!1554317 ((_ is ElementMatch!4273) (reg!4602 (regex!2945 rule!240)))) b!1554964))

(assert (= (and b!1554317 ((_ is Concat!7309) (reg!4602 (regex!2945 rule!240)))) b!1554965))

(assert (= (and b!1554317 ((_ is Star!4273) (reg!4602 (regex!2945 rule!240)))) b!1554966))

(assert (= (and b!1554317 ((_ is Union!4273) (reg!4602 (regex!2945 rule!240)))) b!1554967))

(declare-fun tp!455503 () Bool)

(declare-fun tp!455502 () Bool)

(declare-fun b!1554968 () Bool)

(declare-fun e!997592 () Bool)

(assert (=> b!1554968 (= e!997592 (and (inv!22074 (left!13662 (left!13662 (c!252615 input!1676)))) tp!455503 (inv!22074 (right!13992 (left!13662 (c!252615 input!1676)))) tp!455502))))

(declare-fun b!1554970 () Bool)

(declare-fun e!997593 () Bool)

(declare-fun tp!455501 () Bool)

(assert (=> b!1554970 (= e!997593 tp!455501)))

(declare-fun b!1554969 () Bool)

(assert (=> b!1554969 (= e!997592 (and (inv!22083 (xs!8363 (left!13662 (c!252615 input!1676)))) e!997593))))

(assert (=> b!1554349 (= tp!455224 (and (inv!22074 (left!13662 (c!252615 input!1676))) e!997592))))

(assert (= (and b!1554349 ((_ is Node!5563) (left!13662 (c!252615 input!1676)))) b!1554968))

(assert (= b!1554969 b!1554970))

(assert (= (and b!1554349 ((_ is Leaf!8245) (left!13662 (c!252615 input!1676)))) b!1554969))

(declare-fun m!1827602 () Bool)

(assert (=> b!1554968 m!1827602))

(declare-fun m!1827604 () Bool)

(assert (=> b!1554968 m!1827604))

(declare-fun m!1827606 () Bool)

(assert (=> b!1554969 m!1827606))

(assert (=> b!1554349 m!1826847))

(declare-fun b!1554971 () Bool)

(declare-fun tp!455505 () Bool)

(declare-fun e!997594 () Bool)

(declare-fun tp!455506 () Bool)

(assert (=> b!1554971 (= e!997594 (and (inv!22074 (left!13662 (right!13992 (c!252615 input!1676)))) tp!455506 (inv!22074 (right!13992 (right!13992 (c!252615 input!1676)))) tp!455505))))

(declare-fun b!1554973 () Bool)

(declare-fun e!997595 () Bool)

(declare-fun tp!455504 () Bool)

(assert (=> b!1554973 (= e!997595 tp!455504)))

(declare-fun b!1554972 () Bool)

(assert (=> b!1554972 (= e!997594 (and (inv!22083 (xs!8363 (right!13992 (c!252615 input!1676)))) e!997595))))

(assert (=> b!1554349 (= tp!455223 (and (inv!22074 (right!13992 (c!252615 input!1676))) e!997594))))

(assert (= (and b!1554349 ((_ is Node!5563) (right!13992 (c!252615 input!1676)))) b!1554971))

(assert (= b!1554972 b!1554973))

(assert (= (and b!1554349 ((_ is Leaf!8245) (right!13992 (c!252615 input!1676)))) b!1554972))

(declare-fun m!1827608 () Bool)

(assert (=> b!1554971 m!1827608))

(declare-fun m!1827610 () Bool)

(assert (=> b!1554971 m!1827610))

(declare-fun m!1827612 () Bool)

(assert (=> b!1554972 m!1827612))

(assert (=> b!1554349 m!1826849))

(declare-fun b!1554974 () Bool)

(declare-fun e!997596 () Bool)

(declare-fun tp!455507 () Bool)

(declare-fun tp!455508 () Bool)

(assert (=> b!1554974 (= e!997596 (and tp!455507 tp!455508))))

(assert (=> b!1554331 (= tp!455201 e!997596)))

(assert (= (and b!1554331 ((_ is Cons!16804) (exprs!1291 setElem!10767))) b!1554974))

(declare-fun setIsEmpty!10806 () Bool)

(declare-fun setRes!10806 () Bool)

(assert (=> setIsEmpty!10806 setRes!10806))

(declare-fun e!997598 () Bool)

(declare-fun tp!455510 () Bool)

(declare-fun setNonEmpty!10806 () Bool)

(declare-fun setElem!10806 () Context!1582)

(assert (=> setNonEmpty!10806 (= setRes!10806 (and tp!455510 (inv!22082 setElem!10806) e!997598))))

(declare-fun setRest!10806 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10806 (= (_1!9459 (_1!9460 (h!22207 (t!141317 (zeroValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10806 true) setRest!10806))))

(declare-fun b!1554976 () Bool)

(declare-fun tp!455511 () Bool)

(assert (=> b!1554976 (= e!997598 tp!455511)))

(declare-fun e!997597 () Bool)

(assert (=> b!1554408 (= tp!455297 e!997597)))

(declare-fun b!1554975 () Bool)

(declare-fun tp!455509 () Bool)

(assert (=> b!1554975 (= e!997597 (and setRes!10806 tp!455509))))

(declare-fun condSetEmpty!10806 () Bool)

(assert (=> b!1554975 (= condSetEmpty!10806 (= (_1!9459 (_1!9460 (h!22207 (t!141317 (zeroValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1554975 condSetEmpty!10806) setIsEmpty!10806))

(assert (= (and b!1554975 (not condSetEmpty!10806)) setNonEmpty!10806))

(assert (= setNonEmpty!10806 b!1554976))

(assert (= (and b!1554408 ((_ is Cons!16806) (t!141317 (zeroValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))))) b!1554975))

(declare-fun m!1827614 () Bool)

(assert (=> setNonEmpty!10806 m!1827614))

(declare-fun b!1554997 () Bool)

(declare-fun e!997621 () Bool)

(declare-fun lt!538470 () MutLongMap!1793)

(assert (=> b!1554997 (= e!997621 ((_ is LongMap!1793) lt!538470))))

(assert (=> b!1554997 (= lt!538470 (v!23649 (underlying!3796 (cache!2118 (_3!1335 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1554998 () Bool)

(declare-fun e!997620 () Bool)

(declare-fun e!997624 () Bool)

(assert (=> b!1554998 (= e!997620 e!997624)))

(declare-fun b!1554999 () Bool)

(declare-fun e!997623 () Bool)

(declare-fun e!997617 () Bool)

(assert (=> b!1554999 (= e!997623 e!997617)))

(declare-fun e!997618 () Bool)

(assert (=> d!461084 (= true (and e!997620 e!997618 e!997623))))

(declare-fun b!1555000 () Bool)

(declare-fun e!997625 () Bool)

(declare-fun lt!538469 () MutLongMap!1792)

(assert (=> b!1555000 (= e!997625 ((_ is LongMap!1792) lt!538469))))

(assert (=> b!1555000 (= lt!538469 (v!23647 (underlying!3794 (cache!2117 (_4!444 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1555001 () Bool)

(declare-fun e!997622 () Bool)

(assert (=> b!1555001 (= e!997622 e!997621)))

(declare-fun b!1555002 () Bool)

(declare-fun e!997619 () Bool)

(declare-fun lt!538468 () MutLongMap!1791)

(assert (=> b!1555002 (= e!997619 ((_ is LongMap!1791) lt!538468))))

(assert (=> b!1555002 (= lt!538468 (v!23645 (underlying!3792 (cache!2116 (_2!9465 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1555003 () Bool)

(assert (=> b!1555003 (= e!997618 e!997622)))

(declare-fun b!1555004 () Bool)

(assert (=> b!1555004 (= e!997624 e!997619)))

(declare-fun b!1555005 () Bool)

(assert (=> b!1555005 (= e!997617 e!997625)))

(assert (= b!1555004 b!1555002))

(assert (= (and b!1554998 ((_ is HashMap!1735) (cache!2116 (_2!9465 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1555004))

(assert (= d!461084 b!1554998))

(assert (= b!1555001 b!1554997))

(assert (= (and b!1555003 ((_ is HashMap!1737) (cache!2118 (_3!1335 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1555001))

(assert (= d!461084 b!1555003))

(assert (= b!1555005 b!1555000))

(assert (= (and b!1554999 ((_ is HashMap!1736) (cache!2117 (_4!444 (findLongestMatchWithZipperSequenceV3Mem!47 (regex!2945 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1555005))

(assert (= d!461084 b!1554999))

(declare-fun setIsEmpty!10807 () Bool)

(declare-fun setRes!10807 () Bool)

(assert (=> setIsEmpty!10807 setRes!10807))

(declare-fun tp!455513 () Bool)

(declare-fun setNonEmpty!10807 () Bool)

(declare-fun setElem!10807 () Context!1582)

(declare-fun e!997627 () Bool)

(assert (=> setNonEmpty!10807 (= setRes!10807 (and tp!455513 (inv!22082 setElem!10807) e!997627))))

(declare-fun setRest!10807 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10807 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapDefault!8327)))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10807 true) setRest!10807))))

(declare-fun b!1555007 () Bool)

(declare-fun tp!455514 () Bool)

(assert (=> b!1555007 (= e!997627 tp!455514)))

(declare-fun e!997626 () Bool)

(assert (=> b!1554329 (= tp!455204 e!997626)))

(declare-fun b!1555006 () Bool)

(declare-fun tp!455512 () Bool)

(assert (=> b!1555006 (= e!997626 (and setRes!10807 tp!455512))))

(declare-fun condSetEmpty!10807 () Bool)

(assert (=> b!1555006 (= condSetEmpty!10807 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapDefault!8327)))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1555006 condSetEmpty!10807) setIsEmpty!10807))

(assert (= (and b!1555006 (not condSetEmpty!10807)) setNonEmpty!10807))

(assert (= setNonEmpty!10807 b!1555007))

(assert (= (and b!1554329 ((_ is Cons!16806) (t!141317 mapDefault!8327))) b!1555006))

(declare-fun m!1827616 () Bool)

(assert (=> setNonEmpty!10807 m!1827616))

(declare-fun condSetEmpty!10808 () Bool)

(assert (=> setNonEmpty!10788 (= condSetEmpty!10808 (= setRest!10788 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10808 () Bool)

(assert (=> setNonEmpty!10788 (= tp!455301 setRes!10808)))

(declare-fun setIsEmpty!10808 () Bool)

(assert (=> setIsEmpty!10808 setRes!10808))

(declare-fun tp!455515 () Bool)

(declare-fun setElem!10808 () Context!1582)

(declare-fun setNonEmpty!10808 () Bool)

(declare-fun e!997628 () Bool)

(assert (=> setNonEmpty!10808 (= setRes!10808 (and tp!455515 (inv!22082 setElem!10808) e!997628))))

(declare-fun setRest!10808 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10808 (= setRest!10788 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10808 true) setRest!10808))))

(declare-fun b!1555008 () Bool)

(declare-fun tp!455516 () Bool)

(assert (=> b!1555008 (= e!997628 tp!455516)))

(assert (= (and setNonEmpty!10788 condSetEmpty!10808) setIsEmpty!10808))

(assert (= (and setNonEmpty!10788 (not condSetEmpty!10808)) setNonEmpty!10808))

(assert (= setNonEmpty!10808 b!1555008))

(declare-fun m!1827618 () Bool)

(assert (=> setNonEmpty!10808 m!1827618))

(declare-fun setIsEmpty!10809 () Bool)

(declare-fun setRes!10809 () Bool)

(assert (=> setIsEmpty!10809 setRes!10809))

(declare-fun setElem!10809 () Context!1582)

(declare-fun setNonEmpty!10809 () Bool)

(declare-fun tp!455518 () Bool)

(declare-fun e!997630 () Bool)

(assert (=> setNonEmpty!10809 (= setRes!10809 (and tp!455518 (inv!22082 setElem!10809) e!997630))))

(declare-fun setRest!10809 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10809 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapValue!8324)))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10809 true) setRest!10809))))

(declare-fun b!1555010 () Bool)

(declare-fun tp!455519 () Bool)

(assert (=> b!1555010 (= e!997630 tp!455519)))

(declare-fun e!997629 () Bool)

(assert (=> b!1554339 (= tp!455213 e!997629)))

(declare-fun b!1555009 () Bool)

(declare-fun tp!455517 () Bool)

(assert (=> b!1555009 (= e!997629 (and setRes!10809 tp!455517))))

(declare-fun condSetEmpty!10809 () Bool)

(assert (=> b!1555009 (= condSetEmpty!10809 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapValue!8324)))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1555009 condSetEmpty!10809) setIsEmpty!10809))

(assert (= (and b!1555009 (not condSetEmpty!10809)) setNonEmpty!10809))

(assert (= setNonEmpty!10809 b!1555010))

(assert (= (and b!1554339 ((_ is Cons!16806) (t!141317 mapValue!8324))) b!1555009))

(declare-fun m!1827620 () Bool)

(assert (=> setNonEmpty!10809 m!1827620))

(declare-fun condSetEmpty!10810 () Bool)

(assert (=> setNonEmpty!10780 (= condSetEmpty!10810 (= setRest!10780 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10810 () Bool)

(assert (=> setNonEmpty!10780 (= tp!455268 setRes!10810)))

(declare-fun setIsEmpty!10810 () Bool)

(assert (=> setIsEmpty!10810 setRes!10810))

(declare-fun setElem!10810 () Context!1582)

(declare-fun e!997631 () Bool)

(declare-fun tp!455520 () Bool)

(declare-fun setNonEmpty!10810 () Bool)

(assert (=> setNonEmpty!10810 (= setRes!10810 (and tp!455520 (inv!22082 setElem!10810) e!997631))))

(declare-fun setRest!10810 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10810 (= setRest!10780 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10810 true) setRest!10810))))

(declare-fun b!1555011 () Bool)

(declare-fun tp!455521 () Bool)

(assert (=> b!1555011 (= e!997631 tp!455521)))

(assert (= (and setNonEmpty!10780 condSetEmpty!10810) setIsEmpty!10810))

(assert (= (and setNonEmpty!10780 (not condSetEmpty!10810)) setNonEmpty!10810))

(assert (= setNonEmpty!10810 b!1555011))

(declare-fun m!1827622 () Bool)

(assert (=> setNonEmpty!10810 m!1827622))

(declare-fun condSetEmpty!10811 () Bool)

(assert (=> setNonEmpty!10773 (= condSetEmpty!10811 (= setRest!10773 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10811 () Bool)

(assert (=> setNonEmpty!10773 (= tp!455241 setRes!10811)))

(declare-fun setIsEmpty!10811 () Bool)

(assert (=> setIsEmpty!10811 setRes!10811))

(declare-fun setElem!10811 () Context!1582)

(declare-fun e!997632 () Bool)

(declare-fun setNonEmpty!10811 () Bool)

(declare-fun tp!455522 () Bool)

(assert (=> setNonEmpty!10811 (= setRes!10811 (and tp!455522 (inv!22082 setElem!10811) e!997632))))

(declare-fun setRest!10811 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10811 (= setRest!10773 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10811 true) setRest!10811))))

(declare-fun b!1555012 () Bool)

(declare-fun tp!455523 () Bool)

(assert (=> b!1555012 (= e!997632 tp!455523)))

(assert (= (and setNonEmpty!10773 condSetEmpty!10811) setIsEmpty!10811))

(assert (= (and setNonEmpty!10773 (not condSetEmpty!10811)) setNonEmpty!10811))

(assert (= setNonEmpty!10811 b!1555012))

(declare-fun m!1827624 () Bool)

(assert (=> setNonEmpty!10811 m!1827624))

(declare-fun b!1555013 () Bool)

(declare-fun e!997633 () Bool)

(declare-fun tp!455524 () Bool)

(declare-fun tp!455525 () Bool)

(assert (=> b!1555013 (= e!997633 (and tp!455524 tp!455525))))

(assert (=> b!1554401 (= tp!455288 e!997633)))

(assert (= (and b!1554401 ((_ is Cons!16804) (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapDefault!8324)))))) b!1555013))

(declare-fun condSetEmpty!10812 () Bool)

(assert (=> setNonEmpty!10783 (= condSetEmpty!10812 (= setRest!10783 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10812 () Bool)

(assert (=> setNonEmpty!10783 (= tp!455281 setRes!10812)))

(declare-fun setIsEmpty!10812 () Bool)

(assert (=> setIsEmpty!10812 setRes!10812))

(declare-fun e!997634 () Bool)

(declare-fun tp!455526 () Bool)

(declare-fun setElem!10812 () Context!1582)

(declare-fun setNonEmpty!10812 () Bool)

(assert (=> setNonEmpty!10812 (= setRes!10812 (and tp!455526 (inv!22082 setElem!10812) e!997634))))

(declare-fun setRest!10812 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10812 (= setRest!10783 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10812 true) setRest!10812))))

(declare-fun b!1555014 () Bool)

(declare-fun tp!455527 () Bool)

(assert (=> b!1555014 (= e!997634 tp!455527)))

(assert (= (and setNonEmpty!10783 condSetEmpty!10812) setIsEmpty!10812))

(assert (= (and setNonEmpty!10783 (not condSetEmpty!10812)) setNonEmpty!10812))

(assert (= setNonEmpty!10812 b!1555014))

(declare-fun m!1827626 () Bool)

(assert (=> setNonEmpty!10812 m!1827626))

(declare-fun b!1555015 () Bool)

(declare-fun e!997635 () Bool)

(declare-fun tp!455528 () Bool)

(assert (=> b!1555015 (= e!997635 tp!455528)))

(declare-fun mapIsEmpty!8343 () Bool)

(declare-fun mapRes!8343 () Bool)

(assert (=> mapIsEmpty!8343 mapRes!8343))

(declare-fun b!1555016 () Bool)

(declare-fun e!997638 () Bool)

(declare-fun tp!455533 () Bool)

(assert (=> b!1555016 (= e!997638 tp!455533)))

(declare-fun setIsEmpty!10813 () Bool)

(declare-fun setRes!10813 () Bool)

(assert (=> setIsEmpty!10813 setRes!10813))

(declare-fun setIsEmpty!10814 () Bool)

(declare-fun setRes!10814 () Bool)

(assert (=> setIsEmpty!10814 setRes!10814))

(declare-fun setElem!10813 () Context!1582)

(declare-fun setNonEmpty!10813 () Bool)

(declare-fun tp!455530 () Bool)

(assert (=> setNonEmpty!10813 (= setRes!10813 (and tp!455530 (inv!22082 setElem!10813) e!997638))))

(declare-fun mapDefault!8343 () List!16873)

(declare-fun setRest!10813 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10813 (= (_2!9458 (h!22206 mapDefault!8343)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10813 true) setRest!10813))))

(declare-fun b!1555017 () Bool)

(declare-fun e!997639 () Bool)

(declare-fun tp!455531 () Bool)

(declare-fun e!997636 () Bool)

(assert (=> b!1555017 (= e!997639 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 mapDefault!8343)))) e!997636 tp_is_empty!7065 setRes!10813 tp!455531))))

(declare-fun condSetEmpty!10813 () Bool)

(assert (=> b!1555017 (= condSetEmpty!10813 (= (_2!9458 (h!22206 mapDefault!8343)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setElem!10814 () Context!1582)

(declare-fun setNonEmpty!10814 () Bool)

(declare-fun tp!455532 () Bool)

(assert (=> setNonEmpty!10814 (= setRes!10814 (and tp!455532 (inv!22082 setElem!10814) e!997635))))

(declare-fun mapValue!8343 () List!16873)

(declare-fun setRest!10814 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10814 (= (_2!9458 (h!22206 mapValue!8343)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10814 true) setRest!10814))))

(declare-fun e!997637 () Bool)

(declare-fun b!1555019 () Bool)

(declare-fun tp!455534 () Bool)

(declare-fun e!997640 () Bool)

(assert (=> b!1555019 (= e!997640 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 mapValue!8343)))) e!997637 tp_is_empty!7065 setRes!10814 tp!455534))))

(declare-fun condSetEmpty!10814 () Bool)

(assert (=> b!1555019 (= condSetEmpty!10814 (= (_2!9458 (h!22206 mapValue!8343)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun b!1555020 () Bool)

(declare-fun tp!455535 () Bool)

(assert (=> b!1555020 (= e!997636 tp!455535)))

(declare-fun mapNonEmpty!8343 () Bool)

(declare-fun tp!455536 () Bool)

(assert (=> mapNonEmpty!8343 (= mapRes!8343 (and tp!455536 e!997640))))

(declare-fun mapKey!8343 () (_ BitVec 32))

(declare-fun mapRest!8343 () (Array (_ BitVec 32) List!16873))

(assert (=> mapNonEmpty!8343 (= mapRest!8330 (store mapRest!8343 mapKey!8343 mapValue!8343))))

(declare-fun b!1555018 () Bool)

(declare-fun tp!455529 () Bool)

(assert (=> b!1555018 (= e!997637 tp!455529)))

(declare-fun condMapEmpty!8343 () Bool)

(assert (=> mapNonEmpty!8330 (= condMapEmpty!8343 (= mapRest!8330 ((as const (Array (_ BitVec 32) List!16873)) mapDefault!8343)))))

(assert (=> mapNonEmpty!8330 (= tp!455272 (and e!997639 mapRes!8343))))

(assert (= (and mapNonEmpty!8330 condMapEmpty!8343) mapIsEmpty!8343))

(assert (= (and mapNonEmpty!8330 (not condMapEmpty!8343)) mapNonEmpty!8343))

(assert (= b!1555019 b!1555018))

(assert (= (and b!1555019 condSetEmpty!10814) setIsEmpty!10814))

(assert (= (and b!1555019 (not condSetEmpty!10814)) setNonEmpty!10814))

(assert (= setNonEmpty!10814 b!1555015))

(assert (= (and mapNonEmpty!8343 ((_ is Cons!16805) mapValue!8343)) b!1555019))

(assert (= b!1555017 b!1555020))

(assert (= (and b!1555017 condSetEmpty!10813) setIsEmpty!10813))

(assert (= (and b!1555017 (not condSetEmpty!10813)) setNonEmpty!10813))

(assert (= setNonEmpty!10813 b!1555016))

(assert (= (and mapNonEmpty!8330 ((_ is Cons!16805) mapDefault!8343)) b!1555017))

(declare-fun m!1827628 () Bool)

(assert (=> mapNonEmpty!8343 m!1827628))

(declare-fun m!1827630 () Bool)

(assert (=> b!1555019 m!1827630))

(declare-fun m!1827632 () Bool)

(assert (=> setNonEmpty!10813 m!1827632))

(declare-fun m!1827634 () Bool)

(assert (=> b!1555017 m!1827634))

(declare-fun m!1827636 () Bool)

(assert (=> setNonEmpty!10814 m!1827636))

(declare-fun b!1555025 () Bool)

(declare-fun e!997643 () Bool)

(declare-fun tp!455539 () Bool)

(assert (=> b!1555025 (= e!997643 (and tp_is_empty!7065 tp!455539))))

(assert (=> b!1554443 (= tp!455351 e!997643)))

(assert (= (and b!1554443 ((_ is Cons!16803) (innerList!5623 (xs!8363 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))))) b!1555025))

(declare-fun b!1555026 () Bool)

(declare-fun e!997644 () Bool)

(declare-fun tp!455540 () Bool)

(declare-fun tp!455541 () Bool)

(assert (=> b!1555026 (= e!997644 (and tp!455540 tp!455541))))

(assert (=> b!1554431 (= tp!455335 e!997644)))

(assert (= (and b!1554431 ((_ is Cons!16804) (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapDefault!8333)))))) b!1555026))

(declare-fun setIsEmpty!10815 () Bool)

(declare-fun setRes!10815 () Bool)

(assert (=> setIsEmpty!10815 setRes!10815))

(declare-fun setNonEmpty!10815 () Bool)

(declare-fun tp!455543 () Bool)

(declare-fun e!997646 () Bool)

(declare-fun setElem!10815 () Context!1582)

(assert (=> setNonEmpty!10815 (= setRes!10815 (and tp!455543 (inv!22082 setElem!10815) e!997646))))

(declare-fun setRest!10815 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10815 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapDefault!8323)))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10815 true) setRest!10815))))

(declare-fun b!1555028 () Bool)

(declare-fun tp!455544 () Bool)

(assert (=> b!1555028 (= e!997646 tp!455544)))

(declare-fun e!997645 () Bool)

(assert (=> b!1554366 (= tp!455243 e!997645)))

(declare-fun b!1555027 () Bool)

(declare-fun tp!455542 () Bool)

(assert (=> b!1555027 (= e!997645 (and setRes!10815 tp!455542))))

(declare-fun condSetEmpty!10815 () Bool)

(assert (=> b!1555027 (= condSetEmpty!10815 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapDefault!8323)))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1555027 condSetEmpty!10815) setIsEmpty!10815))

(assert (= (and b!1555027 (not condSetEmpty!10815)) setNonEmpty!10815))

(assert (= setNonEmpty!10815 b!1555028))

(assert (= (and b!1554366 ((_ is Cons!16806) (t!141317 mapDefault!8323))) b!1555027))

(declare-fun m!1827638 () Bool)

(assert (=> setNonEmpty!10815 m!1827638))

(declare-fun b!1555029 () Bool)

(declare-fun e!997647 () Bool)

(declare-fun tp!455547 () Bool)

(assert (=> b!1555029 (= e!997647 tp!455547)))

(declare-fun e!997649 () Bool)

(assert (=> b!1554403 (= tp!455290 e!997649)))

(declare-fun e!997648 () Bool)

(declare-fun b!1555030 () Bool)

(declare-fun tp!455546 () Bool)

(declare-fun setRes!10816 () Bool)

(assert (=> b!1555030 (= e!997649 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (t!141316 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))))) e!997648 tp_is_empty!7065 setRes!10816 tp!455546))))

(declare-fun condSetEmpty!10816 () Bool)

(assert (=> b!1555030 (= condSetEmpty!10816 (= (_2!9458 (h!22206 (t!141316 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10816 () Bool)

(assert (=> setIsEmpty!10816 setRes!10816))

(declare-fun setElem!10816 () Context!1582)

(declare-fun setNonEmpty!10816 () Bool)

(declare-fun tp!455545 () Bool)

(assert (=> setNonEmpty!10816 (= setRes!10816 (and tp!455545 (inv!22082 setElem!10816) e!997647))))

(declare-fun setRest!10816 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10816 (= (_2!9458 (h!22206 (t!141316 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10816 true) setRest!10816))))

(declare-fun b!1555031 () Bool)

(declare-fun tp!455548 () Bool)

(assert (=> b!1555031 (= e!997648 tp!455548)))

(assert (= b!1555030 b!1555031))

(assert (= (and b!1555030 condSetEmpty!10816) setIsEmpty!10816))

(assert (= (and b!1555030 (not condSetEmpty!10816)) setNonEmpty!10816))

(assert (= setNonEmpty!10816 b!1555029))

(assert (= (and b!1554403 ((_ is Cons!16805) (t!141316 (zeroValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755))))))))) b!1555030))

(declare-fun m!1827640 () Bool)

(assert (=> b!1555030 m!1827640))

(declare-fun m!1827642 () Bool)

(assert (=> setNonEmpty!10816 m!1827642))

(declare-fun b!1555032 () Bool)

(declare-fun e!997650 () Bool)

(declare-fun tp!455549 () Bool)

(declare-fun tp!455550 () Bool)

(assert (=> b!1555032 (= e!997650 (and tp!455549 tp!455550))))

(assert (=> b!1554399 (= tp!455287 e!997650)))

(assert (= (and b!1554399 ((_ is Cons!16804) (exprs!1291 setElem!10784))) b!1555032))

(declare-fun setIsEmpty!10817 () Bool)

(declare-fun setRes!10817 () Bool)

(assert (=> setIsEmpty!10817 setRes!10817))

(declare-fun setElem!10817 () Context!1582)

(declare-fun e!997652 () Bool)

(declare-fun tp!455552 () Bool)

(declare-fun setNonEmpty!10817 () Bool)

(assert (=> setNonEmpty!10817 (= setRes!10817 (and tp!455552 (inv!22082 setElem!10817) e!997652))))

(declare-fun setRest!10817 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10817 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapValue!8327)))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10817 true) setRest!10817))))

(declare-fun b!1555034 () Bool)

(declare-fun tp!455553 () Bool)

(assert (=> b!1555034 (= e!997652 tp!455553)))

(declare-fun e!997651 () Bool)

(assert (=> b!1554330 (= tp!455205 e!997651)))

(declare-fun b!1555033 () Bool)

(declare-fun tp!455551 () Bool)

(assert (=> b!1555033 (= e!997651 (and setRes!10817 tp!455551))))

(declare-fun condSetEmpty!10817 () Bool)

(assert (=> b!1555033 (= condSetEmpty!10817 (= (_1!9459 (_1!9460 (h!22207 (t!141317 mapValue!8327)))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1555033 condSetEmpty!10817) setIsEmpty!10817))

(assert (= (and b!1555033 (not condSetEmpty!10817)) setNonEmpty!10817))

(assert (= setNonEmpty!10817 b!1555034))

(assert (= (and b!1554330 ((_ is Cons!16806) (t!141317 mapValue!8327))) b!1555033))

(declare-fun m!1827644 () Bool)

(assert (=> setNonEmpty!10817 m!1827644))

(declare-fun b!1555035 () Bool)

(declare-fun e!997653 () Bool)

(declare-fun tp!455554 () Bool)

(declare-fun tp!455555 () Bool)

(assert (=> b!1555035 (= e!997653 (and tp!455554 tp!455555))))

(assert (=> b!1554411 (= tp!455302 e!997653)))

(assert (= (and b!1554411 ((_ is Cons!16804) (exprs!1291 setElem!10788))) b!1555035))

(declare-fun tp!455557 () Bool)

(declare-fun e!997654 () Bool)

(declare-fun tp!455558 () Bool)

(declare-fun b!1555036 () Bool)

(assert (=> b!1555036 (= e!997654 (and (inv!22074 (left!13662 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))) tp!455558 (inv!22074 (right!13992 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))) tp!455557))))

(declare-fun b!1555038 () Bool)

(declare-fun e!997655 () Bool)

(declare-fun tp!455556 () Bool)

(assert (=> b!1555038 (= e!997655 tp!455556)))

(declare-fun b!1555037 () Bool)

(assert (=> b!1555037 (= e!997654 (and (inv!22083 (xs!8363 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))) e!997655))))

(assert (=> b!1554448 (= tp!455356 (and (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195)))) e!997654))))

(assert (= (and b!1554448 ((_ is Node!5563) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))) b!1555036))

(assert (= b!1555037 b!1555038))

(assert (= (and b!1554448 ((_ is Leaf!8245) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) lt!538195))))) b!1555037))

(declare-fun m!1827646 () Bool)

(assert (=> b!1555036 m!1827646))

(declare-fun m!1827648 () Bool)

(assert (=> b!1555036 m!1827648))

(declare-fun m!1827650 () Bool)

(assert (=> b!1555037 m!1827650))

(assert (=> b!1554448 m!1826923))

(declare-fun e!997656 () Bool)

(assert (=> b!1554318 (= tp!455182 e!997656)))

(declare-fun b!1555039 () Bool)

(assert (=> b!1555039 (= e!997656 tp_is_empty!7065)))

(declare-fun b!1555040 () Bool)

(declare-fun tp!455561 () Bool)

(declare-fun tp!455563 () Bool)

(assert (=> b!1555040 (= e!997656 (and tp!455561 tp!455563))))

(declare-fun b!1555041 () Bool)

(declare-fun tp!455559 () Bool)

(assert (=> b!1555041 (= e!997656 tp!455559)))

(declare-fun b!1555042 () Bool)

(declare-fun tp!455560 () Bool)

(declare-fun tp!455562 () Bool)

(assert (=> b!1555042 (= e!997656 (and tp!455560 tp!455562))))

(assert (= (and b!1554318 ((_ is ElementMatch!4273) (regOne!9059 (regex!2945 rule!240)))) b!1555039))

(assert (= (and b!1554318 ((_ is Concat!7309) (regOne!9059 (regex!2945 rule!240)))) b!1555040))

(assert (= (and b!1554318 ((_ is Star!4273) (regOne!9059 (regex!2945 rule!240)))) b!1555041))

(assert (= (and b!1554318 ((_ is Union!4273) (regOne!9059 (regex!2945 rule!240)))) b!1555042))

(declare-fun e!997657 () Bool)

(assert (=> b!1554318 (= tp!455184 e!997657)))

(declare-fun b!1555043 () Bool)

(assert (=> b!1555043 (= e!997657 tp_is_empty!7065)))

(declare-fun b!1555044 () Bool)

(declare-fun tp!455566 () Bool)

(declare-fun tp!455568 () Bool)

(assert (=> b!1555044 (= e!997657 (and tp!455566 tp!455568))))

(declare-fun b!1555045 () Bool)

(declare-fun tp!455564 () Bool)

(assert (=> b!1555045 (= e!997657 tp!455564)))

(declare-fun b!1555046 () Bool)

(declare-fun tp!455565 () Bool)

(declare-fun tp!455567 () Bool)

(assert (=> b!1555046 (= e!997657 (and tp!455565 tp!455567))))

(assert (= (and b!1554318 ((_ is ElementMatch!4273) (regTwo!9059 (regex!2945 rule!240)))) b!1555043))

(assert (= (and b!1554318 ((_ is Concat!7309) (regTwo!9059 (regex!2945 rule!240)))) b!1555044))

(assert (= (and b!1554318 ((_ is Star!4273) (regTwo!9059 (regex!2945 rule!240)))) b!1555045))

(assert (= (and b!1554318 ((_ is Union!4273) (regTwo!9059 (regex!2945 rule!240)))) b!1555046))

(declare-fun condSetEmpty!10818 () Bool)

(assert (=> setNonEmpty!10794 (= condSetEmpty!10818 (= setRest!10793 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10818 () Bool)

(assert (=> setNonEmpty!10794 (= tp!455334 setRes!10818)))

(declare-fun setIsEmpty!10818 () Bool)

(assert (=> setIsEmpty!10818 setRes!10818))

(declare-fun setNonEmpty!10818 () Bool)

(declare-fun e!997658 () Bool)

(declare-fun setElem!10818 () Context!1582)

(declare-fun tp!455569 () Bool)

(assert (=> setNonEmpty!10818 (= setRes!10818 (and tp!455569 (inv!22082 setElem!10818) e!997658))))

(declare-fun setRest!10818 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10818 (= setRest!10793 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10818 true) setRest!10818))))

(declare-fun b!1555047 () Bool)

(declare-fun tp!455570 () Bool)

(assert (=> b!1555047 (= e!997658 tp!455570)))

(assert (= (and setNonEmpty!10794 condSetEmpty!10818) setIsEmpty!10818))

(assert (= (and setNonEmpty!10794 (not condSetEmpty!10818)) setNonEmpty!10818))

(assert (= setNonEmpty!10818 b!1555047))

(declare-fun m!1827652 () Bool)

(assert (=> setNonEmpty!10818 m!1827652))

(declare-fun e!997659 () Bool)

(assert (=> b!1554426 (= tp!455331 e!997659)))

(declare-fun b!1555048 () Bool)

(assert (=> b!1555048 (= e!997659 tp_is_empty!7065)))

(declare-fun b!1555049 () Bool)

(declare-fun tp!455573 () Bool)

(declare-fun tp!455575 () Bool)

(assert (=> b!1555049 (= e!997659 (and tp!455573 tp!455575))))

(declare-fun b!1555050 () Bool)

(declare-fun tp!455571 () Bool)

(assert (=> b!1555050 (= e!997659 tp!455571)))

(declare-fun b!1555051 () Bool)

(declare-fun tp!455572 () Bool)

(declare-fun tp!455574 () Bool)

(assert (=> b!1555051 (= e!997659 (and tp!455572 tp!455574))))

(assert (= (and b!1554426 ((_ is ElementMatch!4273) (_1!9461 (_1!9462 (h!22208 mapDefault!8333))))) b!1555048))

(assert (= (and b!1554426 ((_ is Concat!7309) (_1!9461 (_1!9462 (h!22208 mapDefault!8333))))) b!1555049))

(assert (= (and b!1554426 ((_ is Star!4273) (_1!9461 (_1!9462 (h!22208 mapDefault!8333))))) b!1555050))

(assert (= (and b!1554426 ((_ is Union!4273) (_1!9461 (_1!9462 (h!22208 mapDefault!8333))))) b!1555051))

(declare-fun b!1555052 () Bool)

(declare-fun e!997661 () Bool)

(declare-fun tp!455576 () Bool)

(assert (=> b!1555052 (= e!997661 tp!455576)))

(declare-fun e!997660 () Bool)

(assert (=> b!1554426 (= tp!455327 e!997660)))

(declare-fun tp!455579 () Bool)

(declare-fun setElem!10819 () Context!1582)

(declare-fun e!997662 () Bool)

(declare-fun setRes!10819 () Bool)

(declare-fun setNonEmpty!10819 () Bool)

(assert (=> setNonEmpty!10819 (= setRes!10819 (and tp!455579 (inv!22082 setElem!10819) e!997662))))

(declare-fun setRest!10819 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10819 (= (_2!9462 (h!22208 (t!141318 mapDefault!8333))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10819 true) setRest!10819))))

(declare-fun b!1555053 () Bool)

(declare-fun tp!455577 () Bool)

(declare-fun tp!455580 () Bool)

(assert (=> b!1555053 (= e!997660 (and tp!455580 (inv!22082 (_2!9461 (_1!9462 (h!22208 (t!141318 mapDefault!8333))))) e!997661 tp_is_empty!7065 setRes!10819 tp!455577))))

(declare-fun condSetEmpty!10819 () Bool)

(assert (=> b!1555053 (= condSetEmpty!10819 (= (_2!9462 (h!22208 (t!141318 mapDefault!8333))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10819 () Bool)

(assert (=> setIsEmpty!10819 setRes!10819))

(declare-fun b!1555054 () Bool)

(declare-fun tp!455578 () Bool)

(assert (=> b!1555054 (= e!997662 tp!455578)))

(assert (= b!1555053 b!1555052))

(assert (= (and b!1555053 condSetEmpty!10819) setIsEmpty!10819))

(assert (= (and b!1555053 (not condSetEmpty!10819)) setNonEmpty!10819))

(assert (= setNonEmpty!10819 b!1555054))

(assert (= (and b!1554426 ((_ is Cons!16807) (t!141318 mapDefault!8333))) b!1555053))

(declare-fun m!1827654 () Bool)

(assert (=> setNonEmpty!10819 m!1827654))

(declare-fun m!1827656 () Bool)

(assert (=> b!1555053 m!1827656))

(declare-fun b!1555055 () Bool)

(declare-fun e!997663 () Bool)

(declare-fun tp!455581 () Bool)

(declare-fun tp!455582 () Bool)

(assert (=> b!1555055 (= e!997663 (and tp!455581 tp!455582))))

(assert (=> b!1554438 (= tp!455346 e!997663)))

(assert (= (and b!1554438 ((_ is Cons!16804) (exprs!1291 (_2!9461 (_1!9462 (h!22208 (minValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))))) b!1555055))

(declare-fun b!1555056 () Bool)

(declare-fun e!997664 () Bool)

(declare-fun tp!455585 () Bool)

(assert (=> b!1555056 (= e!997664 tp!455585)))

(declare-fun e!997666 () Bool)

(assert (=> b!1554400 (= tp!455286 e!997666)))

(declare-fun setRes!10820 () Bool)

(declare-fun b!1555057 () Bool)

(declare-fun tp!455584 () Bool)

(declare-fun e!997665 () Bool)

(assert (=> b!1555057 (= e!997666 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (t!141316 mapDefault!8324))))) e!997665 tp_is_empty!7065 setRes!10820 tp!455584))))

(declare-fun condSetEmpty!10820 () Bool)

(assert (=> b!1555057 (= condSetEmpty!10820 (= (_2!9458 (h!22206 (t!141316 mapDefault!8324))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10820 () Bool)

(assert (=> setIsEmpty!10820 setRes!10820))

(declare-fun setElem!10820 () Context!1582)

(declare-fun setNonEmpty!10820 () Bool)

(declare-fun tp!455583 () Bool)

(assert (=> setNonEmpty!10820 (= setRes!10820 (and tp!455583 (inv!22082 setElem!10820) e!997664))))

(declare-fun setRest!10820 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10820 (= (_2!9458 (h!22206 (t!141316 mapDefault!8324))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10820 true) setRest!10820))))

(declare-fun b!1555058 () Bool)

(declare-fun tp!455586 () Bool)

(assert (=> b!1555058 (= e!997665 tp!455586)))

(assert (= b!1555057 b!1555058))

(assert (= (and b!1555057 condSetEmpty!10820) setIsEmpty!10820))

(assert (= (and b!1555057 (not condSetEmpty!10820)) setNonEmpty!10820))

(assert (= setNonEmpty!10820 b!1555056))

(assert (= (and b!1554400 ((_ is Cons!16805) (t!141316 mapDefault!8324))) b!1555057))

(declare-fun m!1827658 () Bool)

(assert (=> b!1555057 m!1827658))

(declare-fun m!1827660 () Bool)

(assert (=> setNonEmpty!10820 m!1827660))

(declare-fun b!1555059 () Bool)

(declare-fun e!997667 () Bool)

(declare-fun tp!455587 () Bool)

(declare-fun tp!455588 () Bool)

(assert (=> b!1555059 (= e!997667 (and tp!455587 tp!455588))))

(assert (=> b!1554435 (= tp!455341 e!997667)))

(assert (= (and b!1554435 ((_ is Cons!16804) (exprs!1291 (_2!9461 (_1!9462 (h!22208 (zeroValue!2050 (v!23648 (underlying!3795 (v!23649 (underlying!3796 (cache!2118 cacheDown!768)))))))))))) b!1555059))

(declare-fun b!1555060 () Bool)

(declare-fun e!997668 () Bool)

(declare-fun tp!455589 () Bool)

(declare-fun tp!455590 () Bool)

(assert (=> b!1555060 (= e!997668 (and tp!455589 tp!455590))))

(assert (=> b!1554396 (= tp!455283 e!997668)))

(assert (= (and b!1554396 ((_ is Cons!16804) (exprs!1291 setElem!10783))) b!1555060))

(declare-fun b!1555061 () Bool)

(declare-fun e!997669 () Bool)

(declare-fun tp!455591 () Bool)

(declare-fun tp!455592 () Bool)

(assert (=> b!1555061 (= e!997669 (and tp!455591 tp!455592))))

(assert (=> b!1554432 (= tp!455336 e!997669)))

(assert (= (and b!1554432 ((_ is Cons!16804) (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapValue!8322)))))) b!1555061))

(declare-fun b!1555062 () Bool)

(declare-fun e!997670 () Bool)

(declare-fun tp!455593 () Bool)

(declare-fun tp!455594 () Bool)

(assert (=> b!1555062 (= e!997670 (and tp!455593 tp!455594))))

(assert (=> b!1554385 (= tp!455265 e!997670)))

(assert (= (and b!1554385 ((_ is Cons!16804) (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapValue!8330)))))) b!1555062))

(declare-fun e!997671 () Bool)

(assert (=> b!1554364 (= tp!455242 e!997671)))

(declare-fun b!1555063 () Bool)

(assert (=> b!1555063 (= e!997671 tp_is_empty!7065)))

(declare-fun b!1555064 () Bool)

(declare-fun tp!455597 () Bool)

(declare-fun tp!455599 () Bool)

(assert (=> b!1555064 (= e!997671 (and tp!455597 tp!455599))))

(declare-fun b!1555065 () Bool)

(declare-fun tp!455595 () Bool)

(assert (=> b!1555065 (= e!997671 tp!455595)))

(declare-fun b!1555066 () Bool)

(declare-fun tp!455596 () Bool)

(declare-fun tp!455598 () Bool)

(assert (=> b!1555066 (= e!997671 (and tp!455596 tp!455598))))

(assert (= (and b!1554364 ((_ is ElementMatch!4273) (_1!9461 (_1!9462 (h!22208 mapDefault!8322))))) b!1555063))

(assert (= (and b!1554364 ((_ is Concat!7309) (_1!9461 (_1!9462 (h!22208 mapDefault!8322))))) b!1555064))

(assert (= (and b!1554364 ((_ is Star!4273) (_1!9461 (_1!9462 (h!22208 mapDefault!8322))))) b!1555065))

(assert (= (and b!1554364 ((_ is Union!4273) (_1!9461 (_1!9462 (h!22208 mapDefault!8322))))) b!1555066))

(declare-fun b!1555067 () Bool)

(declare-fun e!997673 () Bool)

(declare-fun tp!455600 () Bool)

(assert (=> b!1555067 (= e!997673 tp!455600)))

(declare-fun e!997672 () Bool)

(assert (=> b!1554364 (= tp!455239 e!997672)))

(declare-fun setRes!10821 () Bool)

(declare-fun setElem!10821 () Context!1582)

(declare-fun tp!455603 () Bool)

(declare-fun setNonEmpty!10821 () Bool)

(declare-fun e!997674 () Bool)

(assert (=> setNonEmpty!10821 (= setRes!10821 (and tp!455603 (inv!22082 setElem!10821) e!997674))))

(declare-fun setRest!10821 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10821 (= (_2!9462 (h!22208 (t!141318 mapDefault!8322))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10821 true) setRest!10821))))

(declare-fun b!1555068 () Bool)

(declare-fun tp!455601 () Bool)

(declare-fun tp!455604 () Bool)

(assert (=> b!1555068 (= e!997672 (and tp!455604 (inv!22082 (_2!9461 (_1!9462 (h!22208 (t!141318 mapDefault!8322))))) e!997673 tp_is_empty!7065 setRes!10821 tp!455601))))

(declare-fun condSetEmpty!10821 () Bool)

(assert (=> b!1555068 (= condSetEmpty!10821 (= (_2!9462 (h!22208 (t!141318 mapDefault!8322))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10821 () Bool)

(assert (=> setIsEmpty!10821 setRes!10821))

(declare-fun b!1555069 () Bool)

(declare-fun tp!455602 () Bool)

(assert (=> b!1555069 (= e!997674 tp!455602)))

(assert (= b!1555068 b!1555067))

(assert (= (and b!1555068 condSetEmpty!10821) setIsEmpty!10821))

(assert (= (and b!1555068 (not condSetEmpty!10821)) setNonEmpty!10821))

(assert (= setNonEmpty!10821 b!1555069))

(assert (= (and b!1554364 ((_ is Cons!16807) (t!141318 mapDefault!8322))) b!1555068))

(declare-fun m!1827662 () Bool)

(assert (=> setNonEmpty!10821 m!1827662))

(declare-fun m!1827664 () Bool)

(assert (=> b!1555068 m!1827664))

(declare-fun b!1555070 () Bool)

(declare-fun e!997675 () Bool)

(declare-fun tp!455605 () Bool)

(declare-fun tp!455606 () Bool)

(assert (=> b!1555070 (= e!997675 (and tp!455605 tp!455606))))

(assert (=> b!1554440 (= tp!455348 e!997675)))

(assert (= (and b!1554440 ((_ is Cons!16804) (exprs!1291 setElem!10797))) b!1555070))

(declare-fun b!1555071 () Bool)

(declare-fun e!997676 () Bool)

(declare-fun tp!455607 () Bool)

(declare-fun tp!455608 () Bool)

(assert (=> b!1555071 (= e!997676 (and tp!455607 tp!455608))))

(assert (=> b!1554437 (= tp!455343 e!997676)))

(assert (= (and b!1554437 ((_ is Cons!16804) (exprs!1291 setElem!10796))) b!1555071))

(declare-fun b!1555072 () Bool)

(declare-fun e!997677 () Bool)

(declare-fun tp!455609 () Bool)

(declare-fun tp!455610 () Bool)

(assert (=> b!1555072 (= e!997677 (and tp!455609 tp!455610))))

(assert (=> b!1554398 (= tp!455284 e!997677)))

(assert (= (and b!1554398 ((_ is Cons!16804) (exprs!1291 (_1!9457 (_1!9458 (h!22206 mapValue!8323)))))) b!1555072))

(declare-fun b!1555073 () Bool)

(declare-fun e!997678 () Bool)

(declare-fun tp!455611 () Bool)

(declare-fun tp!455612 () Bool)

(assert (=> b!1555073 (= e!997678 (and tp!455611 tp!455612))))

(assert (=> b!1554434 (= tp!455338 e!997678)))

(assert (= (and b!1554434 ((_ is Cons!16804) (exprs!1291 setElem!10795))) b!1555073))

(declare-fun b!1555074 () Bool)

(declare-fun tp!455614 () Bool)

(declare-fun e!997679 () Bool)

(declare-fun tp!455615 () Bool)

(assert (=> b!1555074 (= e!997679 (and (inv!22074 (left!13662 (left!13662 (c!252615 totalInput!568)))) tp!455615 (inv!22074 (right!13992 (left!13662 (c!252615 totalInput!568)))) tp!455614))))

(declare-fun b!1555076 () Bool)

(declare-fun e!997680 () Bool)

(declare-fun tp!455613 () Bool)

(assert (=> b!1555076 (= e!997680 tp!455613)))

(declare-fun b!1555075 () Bool)

(assert (=> b!1555075 (= e!997679 (and (inv!22083 (xs!8363 (left!13662 (c!252615 totalInput!568)))) e!997680))))

(assert (=> b!1554352 (= tp!455227 (and (inv!22074 (left!13662 (c!252615 totalInput!568))) e!997679))))

(assert (= (and b!1554352 ((_ is Node!5563) (left!13662 (c!252615 totalInput!568)))) b!1555074))

(assert (= b!1555075 b!1555076))

(assert (= (and b!1554352 ((_ is Leaf!8245) (left!13662 (c!252615 totalInput!568)))) b!1555075))

(declare-fun m!1827666 () Bool)

(assert (=> b!1555074 m!1827666))

(declare-fun m!1827668 () Bool)

(assert (=> b!1555074 m!1827668))

(declare-fun m!1827670 () Bool)

(assert (=> b!1555075 m!1827670))

(assert (=> b!1554352 m!1826853))

(declare-fun tp!455618 () Bool)

(declare-fun b!1555077 () Bool)

(declare-fun tp!455617 () Bool)

(declare-fun e!997681 () Bool)

(assert (=> b!1555077 (= e!997681 (and (inv!22074 (left!13662 (right!13992 (c!252615 totalInput!568)))) tp!455618 (inv!22074 (right!13992 (right!13992 (c!252615 totalInput!568)))) tp!455617))))

(declare-fun b!1555079 () Bool)

(declare-fun e!997682 () Bool)

(declare-fun tp!455616 () Bool)

(assert (=> b!1555079 (= e!997682 tp!455616)))

(declare-fun b!1555078 () Bool)

(assert (=> b!1555078 (= e!997681 (and (inv!22083 (xs!8363 (right!13992 (c!252615 totalInput!568)))) e!997682))))

(assert (=> b!1554352 (= tp!455226 (and (inv!22074 (right!13992 (c!252615 totalInput!568))) e!997681))))

(assert (= (and b!1554352 ((_ is Node!5563) (right!13992 (c!252615 totalInput!568)))) b!1555077))

(assert (= b!1555078 b!1555079))

(assert (= (and b!1554352 ((_ is Leaf!8245) (right!13992 (c!252615 totalInput!568)))) b!1555078))

(declare-fun m!1827672 () Bool)

(assert (=> b!1555077 m!1827672))

(declare-fun m!1827674 () Bool)

(assert (=> b!1555077 m!1827674))

(declare-fun m!1827676 () Bool)

(assert (=> b!1555078 m!1827676))

(assert (=> b!1554352 m!1826855))

(declare-fun condSetEmpty!10822 () Bool)

(assert (=> setNonEmpty!10787 (= condSetEmpty!10822 (= setRest!10787 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10822 () Bool)

(assert (=> setNonEmpty!10787 (= tp!455298 setRes!10822)))

(declare-fun setIsEmpty!10822 () Bool)

(assert (=> setIsEmpty!10822 setRes!10822))

(declare-fun tp!455619 () Bool)

(declare-fun e!997683 () Bool)

(declare-fun setElem!10822 () Context!1582)

(declare-fun setNonEmpty!10822 () Bool)

(assert (=> setNonEmpty!10822 (= setRes!10822 (and tp!455619 (inv!22082 setElem!10822) e!997683))))

(declare-fun setRest!10822 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10822 (= setRest!10787 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10822 true) setRest!10822))))

(declare-fun b!1555080 () Bool)

(declare-fun tp!455620 () Bool)

(assert (=> b!1555080 (= e!997683 tp!455620)))

(assert (= (and setNonEmpty!10787 condSetEmpty!10822) setIsEmpty!10822))

(assert (= (and setNonEmpty!10787 (not condSetEmpty!10822)) setNonEmpty!10822))

(assert (= setNonEmpty!10822 b!1555080))

(declare-fun m!1827678 () Bool)

(assert (=> setNonEmpty!10822 m!1827678))

(declare-fun condSetEmpty!10823 () Bool)

(assert (=> setNonEmpty!10786 (= condSetEmpty!10823 (= setRest!10786 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10823 () Bool)

(assert (=> setNonEmpty!10786 (= tp!455293 setRes!10823)))

(declare-fun setIsEmpty!10823 () Bool)

(assert (=> setIsEmpty!10823 setRes!10823))

(declare-fun setElem!10823 () Context!1582)

(declare-fun e!997684 () Bool)

(declare-fun tp!455621 () Bool)

(declare-fun setNonEmpty!10823 () Bool)

(assert (=> setNonEmpty!10823 (= setRes!10823 (and tp!455621 (inv!22082 setElem!10823) e!997684))))

(declare-fun setRest!10823 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10823 (= setRest!10786 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10823 true) setRest!10823))))

(declare-fun b!1555081 () Bool)

(declare-fun tp!455622 () Bool)

(assert (=> b!1555081 (= e!997684 tp!455622)))

(assert (= (and setNonEmpty!10786 condSetEmpty!10823) setIsEmpty!10823))

(assert (= (and setNonEmpty!10786 (not condSetEmpty!10823)) setNonEmpty!10823))

(assert (= setNonEmpty!10823 b!1555081))

(declare-fun m!1827680 () Bool)

(assert (=> setNonEmpty!10823 m!1827680))

(declare-fun b!1555082 () Bool)

(declare-fun e!997685 () Bool)

(declare-fun tp!455623 () Bool)

(assert (=> b!1555082 (= e!997685 (and tp_is_empty!7065 tp!455623))))

(assert (=> b!1554351 (= tp!455222 e!997685)))

(assert (= (and b!1554351 ((_ is Cons!16803) (innerList!5623 (xs!8363 (c!252615 input!1676))))) b!1555082))

(declare-fun b!1555083 () Bool)

(declare-fun e!997686 () Bool)

(declare-fun tp!455624 () Bool)

(declare-fun tp!455625 () Bool)

(assert (=> b!1555083 (= e!997686 (and tp!455624 tp!455625))))

(assert (=> b!1554428 (= tp!455325 e!997686)))

(assert (= (and b!1554428 ((_ is Cons!16804) (exprs!1291 setElem!10793))) b!1555083))

(declare-fun b!1555084 () Bool)

(declare-fun e!997687 () Bool)

(declare-fun tp!455626 () Bool)

(declare-fun tp!455627 () Bool)

(assert (=> b!1555084 (= e!997687 (and tp!455626 tp!455627))))

(assert (=> b!1554382 (= tp!455264 e!997687)))

(assert (= (and b!1554382 ((_ is Cons!16804) (exprs!1291 setElem!10780))) b!1555084))

(declare-fun setIsEmpty!10824 () Bool)

(declare-fun setRes!10824 () Bool)

(assert (=> setIsEmpty!10824 setRes!10824))

(declare-fun setNonEmpty!10824 () Bool)

(declare-fun e!997689 () Bool)

(declare-fun setElem!10824 () Context!1582)

(declare-fun tp!455628 () Bool)

(assert (=> setNonEmpty!10824 (= setRes!10824 (and tp!455628 (inv!22082 setElem!10824) e!997689))))

(declare-fun mapDefault!8344 () List!16874)

(declare-fun setRest!10824 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10824 (= (_1!9459 (_1!9460 (h!22207 mapDefault!8344))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10824 true) setRest!10824))))

(declare-fun b!1555085 () Bool)

(declare-fun e!997688 () Bool)

(declare-fun tp!455632 () Bool)

(assert (=> b!1555085 (= e!997688 (and setRes!10824 tp!455632))))

(declare-fun condSetEmpty!10824 () Bool)

(assert (=> b!1555085 (= condSetEmpty!10824 (= (_1!9459 (_1!9460 (h!22207 mapDefault!8344))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun b!1555086 () Bool)

(declare-fun e!997690 () Bool)

(declare-fun setRes!10825 () Bool)

(declare-fun tp!455633 () Bool)

(assert (=> b!1555086 (= e!997690 (and setRes!10825 tp!455633))))

(declare-fun condSetEmpty!10825 () Bool)

(declare-fun mapValue!8344 () List!16874)

(assert (=> b!1555086 (= condSetEmpty!10825 (= (_1!9459 (_1!9460 (h!22207 mapValue!8344))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10825 () Bool)

(assert (=> setIsEmpty!10825 setRes!10825))

(declare-fun e!997691 () Bool)

(declare-fun tp!455630 () Bool)

(declare-fun setElem!10825 () Context!1582)

(declare-fun setNonEmpty!10825 () Bool)

(assert (=> setNonEmpty!10825 (= setRes!10825 (and tp!455630 (inv!22082 setElem!10825) e!997691))))

(declare-fun setRest!10825 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10825 (= (_1!9459 (_1!9460 (h!22207 mapValue!8344))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10825 true) setRest!10825))))

(declare-fun b!1555087 () Bool)

(declare-fun tp!455629 () Bool)

(assert (=> b!1555087 (= e!997691 tp!455629)))

(declare-fun condMapEmpty!8344 () Bool)

(assert (=> mapNonEmpty!8327 (= condMapEmpty!8344 (= mapRest!8327 ((as const (Array (_ BitVec 32) List!16874)) mapDefault!8344)))))

(declare-fun mapRes!8344 () Bool)

(assert (=> mapNonEmpty!8327 (= tp!455206 (and e!997688 mapRes!8344))))

(declare-fun mapIsEmpty!8344 () Bool)

(assert (=> mapIsEmpty!8344 mapRes!8344))

(declare-fun mapNonEmpty!8344 () Bool)

(declare-fun tp!455634 () Bool)

(assert (=> mapNonEmpty!8344 (= mapRes!8344 (and tp!455634 e!997690))))

(declare-fun mapKey!8344 () (_ BitVec 32))

(declare-fun mapRest!8344 () (Array (_ BitVec 32) List!16874))

(assert (=> mapNonEmpty!8344 (= mapRest!8327 (store mapRest!8344 mapKey!8344 mapValue!8344))))

(declare-fun b!1555088 () Bool)

(declare-fun tp!455631 () Bool)

(assert (=> b!1555088 (= e!997689 tp!455631)))

(assert (= (and mapNonEmpty!8327 condMapEmpty!8344) mapIsEmpty!8344))

(assert (= (and mapNonEmpty!8327 (not condMapEmpty!8344)) mapNonEmpty!8344))

(assert (= (and b!1555086 condSetEmpty!10825) setIsEmpty!10825))

(assert (= (and b!1555086 (not condSetEmpty!10825)) setNonEmpty!10825))

(assert (= setNonEmpty!10825 b!1555087))

(assert (= (and mapNonEmpty!8344 ((_ is Cons!16806) mapValue!8344)) b!1555086))

(assert (= (and b!1555085 condSetEmpty!10824) setIsEmpty!10824))

(assert (= (and b!1555085 (not condSetEmpty!10824)) setNonEmpty!10824))

(assert (= setNonEmpty!10824 b!1555088))

(assert (= (and mapNonEmpty!8327 ((_ is Cons!16806) mapDefault!8344)) b!1555085))

(declare-fun m!1827682 () Bool)

(assert (=> setNonEmpty!10824 m!1827682))

(declare-fun m!1827684 () Bool)

(assert (=> setNonEmpty!10825 m!1827684))

(declare-fun m!1827686 () Bool)

(assert (=> mapNonEmpty!8344 m!1827686))

(declare-fun e!997692 () Bool)

(declare-fun b!1555089 () Bool)

(declare-fun tp!455637 () Bool)

(declare-fun tp!455636 () Bool)

(assert (=> b!1555089 (= e!997692 (and (inv!22074 (left!13662 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))) tp!455637 (inv!22074 (right!13992 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))) tp!455636))))

(declare-fun b!1555091 () Bool)

(declare-fun e!997693 () Bool)

(declare-fun tp!455635 () Bool)

(assert (=> b!1555091 (= e!997693 tp!455635)))

(declare-fun b!1555090 () Bool)

(assert (=> b!1555090 (= e!997692 (and (inv!22083 (xs!8363 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))) e!997693))))

(assert (=> b!1554449 (= tp!455357 (and (inv!22074 (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187)))))) e!997692))))

(assert (= (and b!1554449 ((_ is Node!5563) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))) b!1555089))

(assert (= b!1555090 b!1555091))

(assert (= (and b!1554449 ((_ is Leaf!8245) (c!252615 (dynLambda!7446 (toChars!4173 (transformation!2945 rule!240)) (dynLambda!7444 (toValue!4314 (transformation!2945 rule!240)) (_1!9464 (_1!9465 lt!538187))))))) b!1555090))

(declare-fun m!1827688 () Bool)

(assert (=> b!1555089 m!1827688))

(declare-fun m!1827690 () Bool)

(assert (=> b!1555089 m!1827690))

(declare-fun m!1827692 () Bool)

(assert (=> b!1555090 m!1827692))

(assert (=> b!1554449 m!1826935))

(declare-fun setIsEmpty!10826 () Bool)

(declare-fun setRes!10826 () Bool)

(assert (=> setIsEmpty!10826 setRes!10826))

(declare-fun setElem!10826 () Context!1582)

(declare-fun e!997695 () Bool)

(declare-fun setNonEmpty!10826 () Bool)

(declare-fun tp!455639 () Bool)

(assert (=> setNonEmpty!10826 (= setRes!10826 (and tp!455639 (inv!22082 setElem!10826) e!997695))))

(declare-fun setRest!10826 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10826 (= (_1!9459 (_1!9460 (h!22207 (t!141317 (minValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10826 true) setRest!10826))))

(declare-fun b!1555093 () Bool)

(declare-fun tp!455640 () Bool)

(assert (=> b!1555093 (= e!997695 tp!455640)))

(declare-fun e!997694 () Bool)

(assert (=> b!1554410 (= tp!455300 e!997694)))

(declare-fun b!1555092 () Bool)

(declare-fun tp!455638 () Bool)

(assert (=> b!1555092 (= e!997694 (and setRes!10826 tp!455638))))

(declare-fun condSetEmpty!10826 () Bool)

(assert (=> b!1555092 (= condSetEmpty!10826 (= (_1!9459 (_1!9460 (h!22207 (t!141317 (minValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1582 Bool)) false)))))

(assert (= (and b!1555092 condSetEmpty!10826) setIsEmpty!10826))

(assert (= (and b!1555092 (not condSetEmpty!10826)) setNonEmpty!10826))

(assert (= setNonEmpty!10826 b!1555093))

(assert (= (and b!1554410 ((_ is Cons!16806) (t!141317 (minValue!2049 (v!23646 (underlying!3793 (v!23647 (underlying!3794 (cache!2117 cacheFurthestNullable!103))))))))) b!1555092))

(declare-fun m!1827694 () Bool)

(assert (=> setNonEmpty!10826 m!1827694))

(declare-fun condSetEmpty!10827 () Bool)

(assert (=> setNonEmpty!10793 (= condSetEmpty!10827 (= setRest!10794 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10827 () Bool)

(assert (=> setNonEmpty!10793 (= tp!455329 setRes!10827)))

(declare-fun setIsEmpty!10827 () Bool)

(assert (=> setIsEmpty!10827 setRes!10827))

(declare-fun e!997696 () Bool)

(declare-fun tp!455641 () Bool)

(declare-fun setElem!10827 () Context!1582)

(declare-fun setNonEmpty!10827 () Bool)

(assert (=> setNonEmpty!10827 (= setRes!10827 (and tp!455641 (inv!22082 setElem!10827) e!997696))))

(declare-fun setRest!10827 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10827 (= setRest!10794 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10827 true) setRest!10827))))

(declare-fun b!1555094 () Bool)

(declare-fun tp!455642 () Bool)

(assert (=> b!1555094 (= e!997696 tp!455642)))

(assert (= (and setNonEmpty!10793 condSetEmpty!10827) setIsEmpty!10827))

(assert (= (and setNonEmpty!10793 (not condSetEmpty!10827)) setNonEmpty!10827))

(assert (= setNonEmpty!10827 b!1555094))

(declare-fun m!1827696 () Bool)

(assert (=> setNonEmpty!10827 m!1827696))

(declare-fun condSetEmpty!10828 () Bool)

(assert (=> setNonEmpty!10774 (= condSetEmpty!10828 (= setRest!10774 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10828 () Bool)

(assert (=> setNonEmpty!10774 (= tp!455244 setRes!10828)))

(declare-fun setIsEmpty!10828 () Bool)

(assert (=> setIsEmpty!10828 setRes!10828))

(declare-fun e!997697 () Bool)

(declare-fun setElem!10828 () Context!1582)

(declare-fun tp!455643 () Bool)

(declare-fun setNonEmpty!10828 () Bool)

(assert (=> setNonEmpty!10828 (= setRes!10828 (and tp!455643 (inv!22082 setElem!10828) e!997697))))

(declare-fun setRest!10828 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10828 (= setRest!10774 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10828 true) setRest!10828))))

(declare-fun b!1555095 () Bool)

(declare-fun tp!455644 () Bool)

(assert (=> b!1555095 (= e!997697 tp!455644)))

(assert (= (and setNonEmpty!10774 condSetEmpty!10828) setIsEmpty!10828))

(assert (= (and setNonEmpty!10774 (not condSetEmpty!10828)) setNonEmpty!10828))

(assert (= setNonEmpty!10828 b!1555095))

(declare-fun m!1827698 () Bool)

(assert (=> setNonEmpty!10828 m!1827698))

(declare-fun b!1555096 () Bool)

(declare-fun e!997698 () Bool)

(declare-fun tp!455645 () Bool)

(declare-fun tp!455646 () Bool)

(assert (=> b!1555096 (= e!997698 (and tp!455645 tp!455646))))

(assert (=> b!1554407 (= tp!455296 e!997698)))

(assert (= (and b!1554407 ((_ is Cons!16804) (exprs!1291 (_1!9457 (_1!9458 (h!22206 (minValue!2048 (v!23644 (underlying!3791 (v!23645 (underlying!3792 (cache!2116 cacheUp!755)))))))))))) b!1555096))

(declare-fun condSetEmpty!10829 () Bool)

(assert (=> setNonEmpty!10785 (= condSetEmpty!10829 (= setRest!10785 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10829 () Bool)

(assert (=> setNonEmpty!10785 (= tp!455289 setRes!10829)))

(declare-fun setIsEmpty!10829 () Bool)

(assert (=> setIsEmpty!10829 setRes!10829))

(declare-fun setNonEmpty!10829 () Bool)

(declare-fun tp!455647 () Bool)

(declare-fun setElem!10829 () Context!1582)

(declare-fun e!997699 () Bool)

(assert (=> setNonEmpty!10829 (= setRes!10829 (and tp!455647 (inv!22082 setElem!10829) e!997699))))

(declare-fun setRest!10829 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10829 (= setRest!10785 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10829 true) setRest!10829))))

(declare-fun b!1555097 () Bool)

(declare-fun tp!455648 () Bool)

(assert (=> b!1555097 (= e!997699 tp!455648)))

(assert (= (and setNonEmpty!10785 condSetEmpty!10829) setIsEmpty!10829))

(assert (= (and setNonEmpty!10785 (not condSetEmpty!10829)) setNonEmpty!10829))

(assert (= setNonEmpty!10829 b!1555097))

(declare-fun m!1827700 () Bool)

(assert (=> setNonEmpty!10829 m!1827700))

(declare-fun condSetEmpty!10830 () Bool)

(assert (=> setNonEmpty!10797 (= condSetEmpty!10830 (= setRest!10797 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10830 () Bool)

(assert (=> setNonEmpty!10797 (= tp!455349 setRes!10830)))

(declare-fun setIsEmpty!10830 () Bool)

(assert (=> setIsEmpty!10830 setRes!10830))

(declare-fun setNonEmpty!10830 () Bool)

(declare-fun e!997700 () Bool)

(declare-fun setElem!10830 () Context!1582)

(declare-fun tp!455649 () Bool)

(assert (=> setNonEmpty!10830 (= setRes!10830 (and tp!455649 (inv!22082 setElem!10830) e!997700))))

(declare-fun setRest!10830 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10830 (= setRest!10797 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10830 true) setRest!10830))))

(declare-fun b!1555098 () Bool)

(declare-fun tp!455650 () Bool)

(assert (=> b!1555098 (= e!997700 tp!455650)))

(assert (= (and setNonEmpty!10797 condSetEmpty!10830) setIsEmpty!10830))

(assert (= (and setNonEmpty!10797 (not condSetEmpty!10830)) setNonEmpty!10830))

(assert (= setNonEmpty!10830 b!1555098))

(declare-fun m!1827702 () Bool)

(assert (=> setNonEmpty!10830 m!1827702))

(declare-fun condSetEmpty!10831 () Bool)

(assert (=> setNonEmpty!10796 (= condSetEmpty!10831 (= setRest!10796 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10831 () Bool)

(assert (=> setNonEmpty!10796 (= tp!455344 setRes!10831)))

(declare-fun setIsEmpty!10831 () Bool)

(assert (=> setIsEmpty!10831 setRes!10831))

(declare-fun setNonEmpty!10831 () Bool)

(declare-fun e!997701 () Bool)

(declare-fun setElem!10831 () Context!1582)

(declare-fun tp!455651 () Bool)

(assert (=> setNonEmpty!10831 (= setRes!10831 (and tp!455651 (inv!22082 setElem!10831) e!997701))))

(declare-fun setRest!10831 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10831 (= setRest!10796 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10831 true) setRest!10831))))

(declare-fun b!1555099 () Bool)

(declare-fun tp!455652 () Bool)

(assert (=> b!1555099 (= e!997701 tp!455652)))

(assert (= (and setNonEmpty!10796 condSetEmpty!10831) setIsEmpty!10831))

(assert (= (and setNonEmpty!10796 (not condSetEmpty!10831)) setNonEmpty!10831))

(assert (= setNonEmpty!10831 b!1555099))

(declare-fun m!1827704 () Bool)

(assert (=> setNonEmpty!10831 m!1827704))

(declare-fun b!1555100 () Bool)

(declare-fun e!997702 () Bool)

(declare-fun tp!455655 () Bool)

(assert (=> b!1555100 (= e!997702 tp!455655)))

(declare-fun e!997704 () Bool)

(assert (=> b!1554397 (= tp!455282 e!997704)))

(declare-fun b!1555101 () Bool)

(declare-fun e!997703 () Bool)

(declare-fun tp!455654 () Bool)

(declare-fun setRes!10832 () Bool)

(assert (=> b!1555101 (= e!997704 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (t!141316 mapValue!8323))))) e!997703 tp_is_empty!7065 setRes!10832 tp!455654))))

(declare-fun condSetEmpty!10832 () Bool)

(assert (=> b!1555101 (= condSetEmpty!10832 (= (_2!9458 (h!22206 (t!141316 mapValue!8323))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10832 () Bool)

(assert (=> setIsEmpty!10832 setRes!10832))

(declare-fun setNonEmpty!10832 () Bool)

(declare-fun setElem!10832 () Context!1582)

(declare-fun tp!455653 () Bool)

(assert (=> setNonEmpty!10832 (= setRes!10832 (and tp!455653 (inv!22082 setElem!10832) e!997702))))

(declare-fun setRest!10832 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10832 (= (_2!9458 (h!22206 (t!141316 mapValue!8323))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10832 true) setRest!10832))))

(declare-fun b!1555102 () Bool)

(declare-fun tp!455656 () Bool)

(assert (=> b!1555102 (= e!997703 tp!455656)))

(assert (= b!1555101 b!1555102))

(assert (= (and b!1555101 condSetEmpty!10832) setIsEmpty!10832))

(assert (= (and b!1555101 (not condSetEmpty!10832)) setNonEmpty!10832))

(assert (= setNonEmpty!10832 b!1555100))

(assert (= (and b!1554397 ((_ is Cons!16805) (t!141316 mapValue!8323))) b!1555101))

(declare-fun m!1827706 () Bool)

(assert (=> b!1555101 m!1827706))

(declare-fun m!1827708 () Bool)

(assert (=> setNonEmpty!10832 m!1827708))

(declare-fun condSetEmpty!10833 () Bool)

(assert (=> setNonEmpty!10795 (= condSetEmpty!10833 (= setRest!10795 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10833 () Bool)

(assert (=> setNonEmpty!10795 (= tp!455339 setRes!10833)))

(declare-fun setIsEmpty!10833 () Bool)

(assert (=> setIsEmpty!10833 setRes!10833))

(declare-fun setNonEmpty!10833 () Bool)

(declare-fun e!997705 () Bool)

(declare-fun setElem!10833 () Context!1582)

(declare-fun tp!455657 () Bool)

(assert (=> setNonEmpty!10833 (= setRes!10833 (and tp!455657 (inv!22082 setElem!10833) e!997705))))

(declare-fun setRest!10833 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10833 (= setRest!10795 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10833 true) setRest!10833))))

(declare-fun b!1555103 () Bool)

(declare-fun tp!455658 () Bool)

(assert (=> b!1555103 (= e!997705 tp!455658)))

(assert (= (and setNonEmpty!10795 condSetEmpty!10833) setIsEmpty!10833))

(assert (= (and setNonEmpty!10795 (not condSetEmpty!10833)) setNonEmpty!10833))

(assert (= setNonEmpty!10833 b!1555103))

(declare-fun m!1827710 () Bool)

(assert (=> setNonEmpty!10833 m!1827710))

(declare-fun condSetEmpty!10834 () Bool)

(assert (=> setNonEmpty!10770 (= condSetEmpty!10834 (= setRest!10770 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10834 () Bool)

(assert (=> setNonEmpty!10770 (= tp!455214 setRes!10834)))

(declare-fun setIsEmpty!10834 () Bool)

(assert (=> setIsEmpty!10834 setRes!10834))

(declare-fun setNonEmpty!10834 () Bool)

(declare-fun e!997706 () Bool)

(declare-fun tp!455659 () Bool)

(declare-fun setElem!10834 () Context!1582)

(assert (=> setNonEmpty!10834 (= setRes!10834 (and tp!455659 (inv!22082 setElem!10834) e!997706))))

(declare-fun setRest!10834 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10834 (= setRest!10770 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10834 true) setRest!10834))))

(declare-fun b!1555104 () Bool)

(declare-fun tp!455660 () Bool)

(assert (=> b!1555104 (= e!997706 tp!455660)))

(assert (= (and setNonEmpty!10770 condSetEmpty!10834) setIsEmpty!10834))

(assert (= (and setNonEmpty!10770 (not condSetEmpty!10834)) setNonEmpty!10834))

(assert (= setNonEmpty!10834 b!1555104))

(declare-fun m!1827712 () Bool)

(assert (=> setNonEmpty!10834 m!1827712))

(declare-fun b!1555105 () Bool)

(declare-fun e!997707 () Bool)

(declare-fun tp!455663 () Bool)

(assert (=> b!1555105 (= e!997707 tp!455663)))

(declare-fun e!997709 () Bool)

(assert (=> b!1554386 (= tp!455270 e!997709)))

(declare-fun setRes!10835 () Bool)

(declare-fun tp!455662 () Bool)

(declare-fun b!1555106 () Bool)

(declare-fun e!997708 () Bool)

(assert (=> b!1555106 (= e!997709 (and (inv!22082 (_1!9457 (_1!9458 (h!22206 (t!141316 mapValue!8330))))) e!997708 tp_is_empty!7065 setRes!10835 tp!455662))))

(declare-fun condSetEmpty!10835 () Bool)

(assert (=> b!1555106 (= condSetEmpty!10835 (= (_2!9458 (h!22206 (t!141316 mapValue!8330))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10835 () Bool)

(assert (=> setIsEmpty!10835 setRes!10835))

(declare-fun setElem!10835 () Context!1582)

(declare-fun tp!455661 () Bool)

(declare-fun setNonEmpty!10835 () Bool)

(assert (=> setNonEmpty!10835 (= setRes!10835 (and tp!455661 (inv!22082 setElem!10835) e!997707))))

(declare-fun setRest!10835 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10835 (= (_2!9458 (h!22206 (t!141316 mapValue!8330))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10835 true) setRest!10835))))

(declare-fun b!1555107 () Bool)

(declare-fun tp!455664 () Bool)

(assert (=> b!1555107 (= e!997708 tp!455664)))

(assert (= b!1555106 b!1555107))

(assert (= (and b!1555106 condSetEmpty!10835) setIsEmpty!10835))

(assert (= (and b!1555106 (not condSetEmpty!10835)) setNonEmpty!10835))

(assert (= setNonEmpty!10835 b!1555105))

(assert (= (and b!1554386 ((_ is Cons!16805) (t!141316 mapValue!8330))) b!1555106))

(declare-fun m!1827714 () Bool)

(assert (=> b!1555106 m!1827714))

(declare-fun m!1827716 () Bool)

(assert (=> setNonEmpty!10835 m!1827716))

(declare-fun b!1555108 () Bool)

(declare-fun e!997710 () Bool)

(declare-fun tp!455665 () Bool)

(declare-fun tp!455666 () Bool)

(assert (=> b!1555108 (= e!997710 (and tp!455665 tp!455666))))

(assert (=> b!1554332 (= tp!455203 e!997710)))

(assert (= (and b!1554332 ((_ is Cons!16804) (exprs!1291 setElem!10766))) b!1555108))

(declare-fun b!1555109 () Bool)

(declare-fun e!997711 () Bool)

(declare-fun tp!455667 () Bool)

(declare-fun tp!455668 () Bool)

(assert (=> b!1555109 (= e!997711 (and tp!455667 tp!455668))))

(assert (=> b!1554409 (= tp!455299 e!997711)))

(assert (= (and b!1554409 ((_ is Cons!16804) (exprs!1291 setElem!10787))) b!1555109))

(declare-fun b!1555110 () Bool)

(declare-fun e!997712 () Bool)

(declare-fun tp!455669 () Bool)

(declare-fun tp!455670 () Bool)

(assert (=> b!1555110 (= e!997712 (and tp!455669 tp!455670))))

(assert (=> b!1554405 (= tp!455295 e!997712)))

(assert (= (and b!1554405 ((_ is Cons!16804) (exprs!1291 setElem!10786))) b!1555110))

(declare-fun mapDefault!8345 () List!16875)

(declare-fun tp!455673 () Bool)

(declare-fun setRes!10837 () Bool)

(declare-fun tp!455677 () Bool)

(declare-fun b!1555111 () Bool)

(declare-fun e!997714 () Bool)

(declare-fun e!997718 () Bool)

(assert (=> b!1555111 (= e!997714 (and tp!455677 (inv!22082 (_2!9461 (_1!9462 (h!22208 mapDefault!8345)))) e!997718 tp_is_empty!7065 setRes!10837 tp!455673))))

(declare-fun condSetEmpty!10836 () Bool)

(assert (=> b!1555111 (= condSetEmpty!10836 (= (_2!9462 (h!22208 mapDefault!8345)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setNonEmpty!10836 () Bool)

(declare-fun tp!455675 () Bool)

(declare-fun e!997715 () Bool)

(declare-fun setElem!10837 () Context!1582)

(assert (=> setNonEmpty!10836 (= setRes!10837 (and tp!455675 (inv!22082 setElem!10837) e!997715))))

(declare-fun setRest!10837 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10836 (= (_2!9462 (h!22208 mapDefault!8345)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10837 true) setRest!10837))))

(declare-fun mapIsEmpty!8345 () Bool)

(declare-fun mapRes!8345 () Bool)

(assert (=> mapIsEmpty!8345 mapRes!8345))

(declare-fun setNonEmpty!10837 () Bool)

(declare-fun setElem!10836 () Context!1582)

(declare-fun e!997713 () Bool)

(declare-fun tp!455680 () Bool)

(declare-fun setRes!10836 () Bool)

(assert (=> setNonEmpty!10837 (= setRes!10836 (and tp!455680 (inv!22082 setElem!10836) e!997713))))

(declare-fun mapValue!8345 () List!16875)

(declare-fun setRest!10836 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10837 (= (_2!9462 (h!22208 mapValue!8345)) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10836 true) setRest!10836))))

(declare-fun b!1555113 () Bool)

(declare-fun tp!455671 () Bool)

(assert (=> b!1555113 (= e!997713 tp!455671)))

(declare-fun tp!455672 () Bool)

(declare-fun tp!455678 () Bool)

(declare-fun e!997716 () Bool)

(declare-fun e!997717 () Bool)

(declare-fun b!1555114 () Bool)

(assert (=> b!1555114 (= e!997716 (and tp!455672 (inv!22082 (_2!9461 (_1!9462 (h!22208 mapValue!8345)))) e!997717 tp_is_empty!7065 setRes!10836 tp!455678))))

(declare-fun condSetEmpty!10837 () Bool)

(assert (=> b!1555114 (= condSetEmpty!10837 (= (_2!9462 (h!22208 mapValue!8345)) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun b!1555115 () Bool)

(declare-fun tp!455676 () Bool)

(assert (=> b!1555115 (= e!997715 tp!455676)))

(declare-fun b!1555116 () Bool)

(declare-fun tp!455681 () Bool)

(assert (=> b!1555116 (= e!997718 tp!455681)))

(declare-fun setIsEmpty!10836 () Bool)

(assert (=> setIsEmpty!10836 setRes!10837))

(declare-fun b!1555112 () Bool)

(declare-fun tp!455679 () Bool)

(assert (=> b!1555112 (= e!997717 tp!455679)))

(declare-fun condMapEmpty!8345 () Bool)

(assert (=> mapNonEmpty!8333 (= condMapEmpty!8345 (= mapRest!8333 ((as const (Array (_ BitVec 32) List!16875)) mapDefault!8345)))))

(assert (=> mapNonEmpty!8333 (= tp!455328 (and e!997714 mapRes!8345))))

(declare-fun mapNonEmpty!8345 () Bool)

(declare-fun tp!455674 () Bool)

(assert (=> mapNonEmpty!8345 (= mapRes!8345 (and tp!455674 e!997716))))

(declare-fun mapKey!8345 () (_ BitVec 32))

(declare-fun mapRest!8345 () (Array (_ BitVec 32) List!16875))

(assert (=> mapNonEmpty!8345 (= mapRest!8333 (store mapRest!8345 mapKey!8345 mapValue!8345))))

(declare-fun setIsEmpty!10837 () Bool)

(assert (=> setIsEmpty!10837 setRes!10836))

(assert (= (and mapNonEmpty!8333 condMapEmpty!8345) mapIsEmpty!8345))

(assert (= (and mapNonEmpty!8333 (not condMapEmpty!8345)) mapNonEmpty!8345))

(assert (= b!1555114 b!1555112))

(assert (= (and b!1555114 condSetEmpty!10837) setIsEmpty!10837))

(assert (= (and b!1555114 (not condSetEmpty!10837)) setNonEmpty!10837))

(assert (= setNonEmpty!10837 b!1555113))

(assert (= (and mapNonEmpty!8345 ((_ is Cons!16807) mapValue!8345)) b!1555114))

(assert (= b!1555111 b!1555116))

(assert (= (and b!1555111 condSetEmpty!10836) setIsEmpty!10836))

(assert (= (and b!1555111 (not condSetEmpty!10836)) setNonEmpty!10836))

(assert (= setNonEmpty!10836 b!1555115))

(assert (= (and mapNonEmpty!8333 ((_ is Cons!16807) mapDefault!8345)) b!1555111))

(declare-fun m!1827718 () Bool)

(assert (=> b!1555114 m!1827718))

(declare-fun m!1827720 () Bool)

(assert (=> b!1555111 m!1827720))

(declare-fun m!1827722 () Bool)

(assert (=> setNonEmpty!10836 m!1827722))

(declare-fun m!1827724 () Bool)

(assert (=> mapNonEmpty!8345 m!1827724))

(declare-fun m!1827726 () Bool)

(assert (=> setNonEmpty!10837 m!1827726))

(declare-fun condSetEmpty!10838 () Bool)

(assert (=> setNonEmpty!10779 (= condSetEmpty!10838 (= setRest!10779 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10838 () Bool)

(assert (=> setNonEmpty!10779 (= tp!455266 setRes!10838)))

(declare-fun setIsEmpty!10838 () Bool)

(assert (=> setIsEmpty!10838 setRes!10838))

(declare-fun e!997719 () Bool)

(declare-fun setNonEmpty!10838 () Bool)

(declare-fun tp!455682 () Bool)

(declare-fun setElem!10838 () Context!1582)

(assert (=> setNonEmpty!10838 (= setRes!10838 (and tp!455682 (inv!22082 setElem!10838) e!997719))))

(declare-fun setRest!10838 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10838 (= setRest!10779 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10838 true) setRest!10838))))

(declare-fun b!1555117 () Bool)

(declare-fun tp!455683 () Bool)

(assert (=> b!1555117 (= e!997719 tp!455683)))

(assert (= (and setNonEmpty!10779 condSetEmpty!10838) setIsEmpty!10838))

(assert (= (and setNonEmpty!10779 (not condSetEmpty!10838)) setNonEmpty!10838))

(assert (= setNonEmpty!10838 b!1555117))

(declare-fun m!1827728 () Bool)

(assert (=> setNonEmpty!10838 m!1827728))

(declare-fun b!1555118 () Bool)

(declare-fun e!997720 () Bool)

(declare-fun tp!455684 () Bool)

(declare-fun tp!455685 () Bool)

(assert (=> b!1555118 (= e!997720 (and tp!455684 tp!455685))))

(assert (=> b!1554427 (= tp!455333 e!997720)))

(assert (= (and b!1554427 ((_ is Cons!16804) (exprs!1291 (_2!9461 (_1!9462 (h!22208 mapValue!8333)))))) b!1555118))

(declare-fun condSetEmpty!10839 () Bool)

(assert (=> setNonEmpty!10767 (= condSetEmpty!10839 (= setRest!10767 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10839 () Bool)

(assert (=> setNonEmpty!10767 (= tp!455202 setRes!10839)))

(declare-fun setIsEmpty!10839 () Bool)

(assert (=> setIsEmpty!10839 setRes!10839))

(declare-fun setNonEmpty!10839 () Bool)

(declare-fun e!997721 () Bool)

(declare-fun tp!455686 () Bool)

(declare-fun setElem!10839 () Context!1582)

(assert (=> setNonEmpty!10839 (= setRes!10839 (and tp!455686 (inv!22082 setElem!10839) e!997721))))

(declare-fun setRest!10839 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10839 (= setRest!10767 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10839 true) setRest!10839))))

(declare-fun b!1555119 () Bool)

(declare-fun tp!455687 () Bool)

(assert (=> b!1555119 (= e!997721 tp!455687)))

(assert (= (and setNonEmpty!10767 condSetEmpty!10839) setIsEmpty!10839))

(assert (= (and setNonEmpty!10767 (not condSetEmpty!10839)) setNonEmpty!10839))

(assert (= setNonEmpty!10839 b!1555119))

(declare-fun m!1827730 () Bool)

(assert (=> setNonEmpty!10839 m!1827730))

(declare-fun e!997722 () Bool)

(declare-fun tp!455689 () Bool)

(declare-fun tp!455690 () Bool)

(declare-fun b!1555120 () Bool)

(assert (=> b!1555120 (= e!997722 (and (inv!22074 (left!13662 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) tp!455690 (inv!22074 (right!13992 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) tp!455689))))

(declare-fun b!1555122 () Bool)

(declare-fun e!997723 () Bool)

(declare-fun tp!455688 () Bool)

(assert (=> b!1555122 (= e!997723 tp!455688)))

(declare-fun b!1555121 () Bool)

(assert (=> b!1555121 (= e!997722 (and (inv!22083 (xs!8363 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) e!997723))))

(assert (=> b!1554441 (= tp!455353 (and (inv!22074 (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) e!997722))))

(assert (= (and b!1554441 ((_ is Node!5563) (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) b!1555120))

(assert (= b!1555121 b!1555122))

(assert (= (and b!1554441 ((_ is Leaf!8245) (left!13662 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) b!1555121))

(declare-fun m!1827732 () Bool)

(assert (=> b!1555120 m!1827732))

(declare-fun m!1827734 () Bool)

(assert (=> b!1555120 m!1827734))

(declare-fun m!1827736 () Bool)

(assert (=> b!1555121 m!1827736))

(assert (=> b!1554441 m!1826917))

(declare-fun b!1555123 () Bool)

(declare-fun tp!455692 () Bool)

(declare-fun e!997724 () Bool)

(declare-fun tp!455693 () Bool)

(assert (=> b!1555123 (= e!997724 (and (inv!22074 (left!13662 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) tp!455693 (inv!22074 (right!13992 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) tp!455692))))

(declare-fun b!1555125 () Bool)

(declare-fun e!997725 () Bool)

(declare-fun tp!455691 () Bool)

(assert (=> b!1555125 (= e!997725 tp!455691)))

(declare-fun b!1555124 () Bool)

(assert (=> b!1555124 (= e!997724 (and (inv!22083 (xs!8363 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) e!997725))))

(assert (=> b!1554441 (= tp!455352 (and (inv!22074 (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103)))) e!997724))))

(assert (= (and b!1554441 ((_ is Node!5563) (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) b!1555123))

(assert (= b!1555124 b!1555125))

(assert (= (and b!1554441 ((_ is Leaf!8245) (right!13992 (c!252615 (totalInput!2456 cacheFurthestNullable!103))))) b!1555124))

(declare-fun m!1827738 () Bool)

(assert (=> b!1555123 m!1827738))

(declare-fun m!1827740 () Bool)

(assert (=> b!1555123 m!1827740))

(declare-fun m!1827742 () Bool)

(assert (=> b!1555124 m!1827742))

(assert (=> b!1554441 m!1826919))

(declare-fun e!997726 () Bool)

(assert (=> b!1554429 (= tp!455326 e!997726)))

(declare-fun b!1555126 () Bool)

(assert (=> b!1555126 (= e!997726 tp_is_empty!7065)))

(declare-fun b!1555127 () Bool)

(declare-fun tp!455696 () Bool)

(declare-fun tp!455698 () Bool)

(assert (=> b!1555127 (= e!997726 (and tp!455696 tp!455698))))

(declare-fun b!1555128 () Bool)

(declare-fun tp!455694 () Bool)

(assert (=> b!1555128 (= e!997726 tp!455694)))

(declare-fun b!1555129 () Bool)

(declare-fun tp!455695 () Bool)

(declare-fun tp!455697 () Bool)

(assert (=> b!1555129 (= e!997726 (and tp!455695 tp!455697))))

(assert (= (and b!1554429 ((_ is ElementMatch!4273) (_1!9461 (_1!9462 (h!22208 mapValue!8333))))) b!1555126))

(assert (= (and b!1554429 ((_ is Concat!7309) (_1!9461 (_1!9462 (h!22208 mapValue!8333))))) b!1555127))

(assert (= (and b!1554429 ((_ is Star!4273) (_1!9461 (_1!9462 (h!22208 mapValue!8333))))) b!1555128))

(assert (= (and b!1554429 ((_ is Union!4273) (_1!9461 (_1!9462 (h!22208 mapValue!8333))))) b!1555129))

(declare-fun b!1555130 () Bool)

(declare-fun e!997728 () Bool)

(declare-fun tp!455699 () Bool)

(assert (=> b!1555130 (= e!997728 tp!455699)))

(declare-fun e!997727 () Bool)

(assert (=> b!1554429 (= tp!455332 e!997727)))

(declare-fun setNonEmpty!10840 () Bool)

(declare-fun setRes!10840 () Bool)

(declare-fun e!997729 () Bool)

(declare-fun tp!455702 () Bool)

(declare-fun setElem!10840 () Context!1582)

(assert (=> setNonEmpty!10840 (= setRes!10840 (and tp!455702 (inv!22082 setElem!10840) e!997729))))

(declare-fun setRest!10840 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10840 (= (_2!9462 (h!22208 (t!141318 mapValue!8333))) ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10840 true) setRest!10840))))

(declare-fun b!1555131 () Bool)

(declare-fun tp!455703 () Bool)

(declare-fun tp!455700 () Bool)

(assert (=> b!1555131 (= e!997727 (and tp!455703 (inv!22082 (_2!9461 (_1!9462 (h!22208 (t!141318 mapValue!8333))))) e!997728 tp_is_empty!7065 setRes!10840 tp!455700))))

(declare-fun condSetEmpty!10840 () Bool)

(assert (=> b!1555131 (= condSetEmpty!10840 (= (_2!9462 (h!22208 (t!141318 mapValue!8333))) ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setIsEmpty!10840 () Bool)

(assert (=> setIsEmpty!10840 setRes!10840))

(declare-fun b!1555132 () Bool)

(declare-fun tp!455701 () Bool)

(assert (=> b!1555132 (= e!997729 tp!455701)))

(assert (= b!1555131 b!1555130))

(assert (= (and b!1555131 condSetEmpty!10840) setIsEmpty!10840))

(assert (= (and b!1555131 (not condSetEmpty!10840)) setNonEmpty!10840))

(assert (= setNonEmpty!10840 b!1555132))

(assert (= (and b!1554429 ((_ is Cons!16807) (t!141318 mapValue!8333))) b!1555131))

(declare-fun m!1827744 () Bool)

(assert (=> setNonEmpty!10840 m!1827744))

(declare-fun m!1827746 () Bool)

(assert (=> b!1555131 m!1827746))

(declare-fun b!1555133 () Bool)

(declare-fun e!997730 () Bool)

(declare-fun tp!455704 () Bool)

(declare-fun tp!455705 () Bool)

(assert (=> b!1555133 (= e!997730 (and tp!455704 tp!455705))))

(assert (=> b!1554365 (= tp!455240 e!997730)))

(assert (= (and b!1554365 ((_ is Cons!16804) (exprs!1291 setElem!10773))) b!1555133))

(declare-fun b!1555134 () Bool)

(declare-fun e!997731 () Bool)

(declare-fun tp!455706 () Bool)

(assert (=> b!1555134 (= e!997731 (and tp_is_empty!7065 tp!455706))))

(assert (=> b!1554354 (= tp!455225 e!997731)))

(assert (= (and b!1554354 ((_ is Cons!16803) (innerList!5623 (xs!8363 (c!252615 totalInput!568))))) b!1555134))

(declare-fun condSetEmpty!10841 () Bool)

(assert (=> setNonEmpty!10766 (= condSetEmpty!10841 (= setRest!10766 ((as const (Array Context!1582 Bool)) false)))))

(declare-fun setRes!10841 () Bool)

(assert (=> setNonEmpty!10766 (= tp!455200 setRes!10841)))

(declare-fun setIsEmpty!10841 () Bool)

(assert (=> setIsEmpty!10841 setRes!10841))

(declare-fun setElem!10841 () Context!1582)

(declare-fun setNonEmpty!10841 () Bool)

(declare-fun tp!455707 () Bool)

(declare-fun e!997732 () Bool)

(assert (=> setNonEmpty!10841 (= setRes!10841 (and tp!455707 (inv!22082 setElem!10841) e!997732))))

(declare-fun setRest!10841 () (InoxSet Context!1582))

(assert (=> setNonEmpty!10841 (= setRest!10766 ((_ map or) (store ((as const (Array Context!1582 Bool)) false) setElem!10841 true) setRest!10841))))

(declare-fun b!1555135 () Bool)

(declare-fun tp!455708 () Bool)

(assert (=> b!1555135 (= e!997732 tp!455708)))

(assert (= (and setNonEmpty!10766 condSetEmpty!10841) setIsEmpty!10841))

(assert (= (and setNonEmpty!10766 (not condSetEmpty!10841)) setNonEmpty!10841))

(assert (= setNonEmpty!10841 b!1555135))

(declare-fun m!1827748 () Bool)

(assert (=> setNonEmpty!10841 m!1827748))

(declare-fun e!997733 () Bool)

(assert (=> b!1554316 (= tp!455183 e!997733)))

(declare-fun b!1555136 () Bool)

(assert (=> b!1555136 (= e!997733 tp_is_empty!7065)))

(declare-fun b!1555137 () Bool)

(declare-fun tp!455711 () Bool)

(declare-fun tp!455713 () Bool)

(assert (=> b!1555137 (= e!997733 (and tp!455711 tp!455713))))

(declare-fun b!1555138 () Bool)

(declare-fun tp!455709 () Bool)

(assert (=> b!1555138 (= e!997733 tp!455709)))

(declare-fun b!1555139 () Bool)

(declare-fun tp!455710 () Bool)

(declare-fun tp!455712 () Bool)

(assert (=> b!1555139 (= e!997733 (and tp!455710 tp!455712))))

(assert (= (and b!1554316 ((_ is ElementMatch!4273) (regOne!9058 (regex!2945 rule!240)))) b!1555136))

(assert (= (and b!1554316 ((_ is Concat!7309) (regOne!9058 (regex!2945 rule!240)))) b!1555137))

(assert (= (and b!1554316 ((_ is Star!4273) (regOne!9058 (regex!2945 rule!240)))) b!1555138))

(assert (= (and b!1554316 ((_ is Union!4273) (regOne!9058 (regex!2945 rule!240)))) b!1555139))

(declare-fun e!997734 () Bool)

(assert (=> b!1554316 (= tp!455185 e!997734)))

(declare-fun b!1555140 () Bool)

(assert (=> b!1555140 (= e!997734 tp_is_empty!7065)))

(declare-fun b!1555141 () Bool)

(declare-fun tp!455716 () Bool)

(declare-fun tp!455718 () Bool)

(assert (=> b!1555141 (= e!997734 (and tp!455716 tp!455718))))

(declare-fun b!1555142 () Bool)

(declare-fun tp!455714 () Bool)

(assert (=> b!1555142 (= e!997734 tp!455714)))

(declare-fun b!1555143 () Bool)

(declare-fun tp!455715 () Bool)

(declare-fun tp!455717 () Bool)

(assert (=> b!1555143 (= e!997734 (and tp!455715 tp!455717))))

(assert (= (and b!1554316 ((_ is ElementMatch!4273) (regTwo!9058 (regex!2945 rule!240)))) b!1555140))

(assert (= (and b!1554316 ((_ is Concat!7309) (regTwo!9058 (regex!2945 rule!240)))) b!1555141))

(assert (= (and b!1554316 ((_ is Star!4273) (regTwo!9058 (regex!2945 rule!240)))) b!1555142))

(assert (= (and b!1554316 ((_ is Union!4273) (regTwo!9058 (regex!2945 rule!240)))) b!1555143))

(declare-fun b_lambda!48813 () Bool)

(assert (= b_lambda!48809 (or b!1554111 b_lambda!48813)))

(assert (=> d!461314 d!461144))

(declare-fun b_lambda!48815 () Bool)

(assert (= b_lambda!48803 (or (and b!1554089 b_free!41313) b_lambda!48815)))

(declare-fun b_lambda!48817 () Bool)

(assert (= b_lambda!48811 (or b!1554111 b_lambda!48817)))

(assert (=> d!461388 d!461142))

(declare-fun b_lambda!48819 () Bool)

(assert (= b_lambda!48807 (or (and b!1554089 b_free!41311) b_lambda!48819)))

(declare-fun b_lambda!48821 () Bool)

(assert (= b_lambda!48805 (or (and b!1554089 b_free!41311) b_lambda!48821)))

(check-sat (not b!1554693) (not d!461320) (not b!1554620) (not b!1554566) (not d!461168) (not b!1554780) (not b!1554955) (not d!461240) (not d!461350) (not b!1555142) (not b!1554875) (not setNonEmpty!10824) (not b!1554958) b_and!108471 (not b!1554747) (not b!1554951) (not b!1554928) (not b!1554454) (not b!1555139) (not b!1555124) (not b!1554716) (not b!1555083) (not b!1554572) (not b!1555131) (not b!1555068) (not d!461238) (not b!1554959) (not d!461286) (not d!461364) (not b!1554954) (not b!1554530) (not b!1554821) (not d!461374) (not b_lambda!48819) (not d!461154) (not b!1554617) (not d!461276) (not b!1555106) (not b!1554499) (not b!1555095) (not bm!101966) (not b_next!42027) (not setNonEmpty!10841) (not b!1555120) (not b!1555054) (not setNonEmpty!10825) (not b_lambda!48815) (not d!461390) (not b!1554534) (not b!1554781) (not b!1555101) (not b!1554884) (not b!1554696) (not b!1554888) (not b!1555016) (not b!1555075) (not setNonEmpty!10826) (not d!461266) (not b!1554956) b_and!108447 (not d!461172) (not b!1554906) (not b!1555117) (not b!1555069) (not b!1554702) (not d!461156) (not b!1554451) (not bm!101997) (not b!1554542) (not b!1554485) (not d!461338) (not b!1554459) (not d!461232) (not setNonEmpty!10817) (not b!1554692) (not b!1555030) (not d!461234) (not b!1555015) (not d!461382) (not bm!101967) (not bm!101968) (not b!1554523) (not d!461324) (not b!1554618) (not setNonEmpty!10834) (not b!1554448) (not b!1555087) (not d!461226) (not b!1555010) (not b!1555044) (not b!1554813) (not b!1554498) (not b!1554948) (not b!1555007) (not b!1554701) (not b!1555102) (not b_lambda!48791) (not setNonEmpty!10814) (not b!1555088) (not d!461152) (not b!1554925) (not d!461418) (not b!1554731) (not b!1554830) (not setNonEmpty!10818) (not setNonEmpty!10821) (not d!461182) (not b!1554883) (not d!461210) (not b!1554863) (not b!1554687) (not b!1555064) (not b!1555134) (not setNonEmpty!10827) (not b!1554800) (not b!1555125) (not b!1554522) (not mapNonEmpty!8342) (not b!1554511) (not b_next!42031) (not b!1554833) (not setNonEmpty!10802) (not b!1555052) (not b!1555107) (not b!1555116) (not b!1555056) (not d!461200) (not bm!101998) (not b!1555081) (not b!1554974) (not bm!102004) (not b!1554709) (not b!1554807) (not bm!101969) (not mapNonEmpty!8343) (not setNonEmpty!10805) (not b!1554943) (not b!1555122) (not b!1554545) (not b!1554708) (not b!1555086) (not setNonEmpty!10811) (not b!1555076) (not b!1555084) (not d!461198) (not b!1554842) (not b!1555027) (not tb!87309) (not b!1555137) (not b!1554555) (not b!1554886) (not b!1555026) (not b!1554727) (not b!1554793) (not setNonEmpty!10838) (not d!461256) (not b!1555018) (not b!1554783) (not b!1554829) (not b!1555045) (not b!1555113) (not b!1555108) (not b!1554784) (not b!1555130) (not b!1555035) (not b!1555040) (not bm!101971) (not b!1555129) (not b!1554764) (not setNonEmpty!10812) (not b!1554537) (not tb!87305) (not b!1555060) (not b!1554792) (not b_next!42013) (not d!461348) (not d!461322) (not b!1555118) (not b!1555046) (not b!1555112) (not b!1554684) (not b!1554881) (not b!1554605) (not b!1555034) (not b!1555032) (not b!1555038) (not b!1554942) (not b!1554349) (not d!461170) (not b!1554898) (not b!1554681) (not b!1554976) (not b!1555008) (not b!1554961) (not b!1554441) (not b!1555085) (not b!1554975) (not b!1554463) (not d!461384) (not d!461396) (not b!1554748) (not b!1554877) b_and!108479 (not b!1554967) (not b!1554526) (not setNonEmpty!10804) (not b!1554962) (not b!1555019) (not d!461204) b_and!108483 (not b_lambda!48821) (not b_lambda!48779) (not b!1555011) (not b!1554919) (not b!1554717) (not b!1554944) (not b!1555091) (not d!461302) (not b!1555138) (not b!1554567) (not d!461174) (not d!461176) (not b!1554965) (not b!1555119) (not b!1555077) (not b!1554578) (not setNonEmpty!10801) (not b!1554930) (not b!1554739) (not b!1554945) (not b!1554968) (not b_next!42015) (not bm!102000) (not d!461164) (not b!1554805) (not b_next!42021) (not mapNonEmpty!8341) (not b!1555098) (not b!1555031) (not b!1554700) (not b!1554876) (not bm!101972) (not d!461310) (not b!1554840) (not b_next!42035) (not b!1555057) (not d!461158) (not b!1554744) (not setNonEmpty!10819) (not b!1555067) (not b!1555014) b_and!108439 (not d!461354) (not b_next!42023) (not b!1555049) (not setNonEmpty!10837) (not b!1554621) (not d!461378) (not b!1554931) (not setNonEmpty!10803) (not d!461228) (not d!461416) (not b!1554969) (not b!1554535) (not setNonEmpty!10833) (not b!1555133) (not b_next!42025) (not bm!101989) (not d!461346) (not b!1554721) (not b!1555104) (not d!461308) (not b!1555037) (not d!461380) (not b!1554824) (not d!461298) (not b_lambda!48795) (not b!1554963) (not b!1555110) (not d!461186) (not b!1555089) (not b!1555135) (not d!461244) (not b!1555072) (not b_lambda!48813) (not b!1554940) (not b_lambda!48793) (not b!1555103) (not b!1555105) (not b!1555065) (not b!1554929) (not b!1554743) b_and!108473 (not b!1554724) (not d!461300) (not b!1554616) (not d!461394) (not d!461262) (not b!1554924) (not b!1555050) (not b_next!42017) (not b!1554938) (not b!1555123) (not b!1554352) (not d!461230) (not b!1555094) (not b!1554866) (not setNonEmpty!10823) (not b!1555141) (not b!1554966) (not d!461274) (not b!1555079) (not b!1554449) (not d!461304) (not b!1554712) (not b!1554912) (not b!1554834) (not b!1554704) (not b_lambda!48799) (not b!1554916) (not mapNonEmpty!8345) (not bm!101986) (not b!1554826) (not b!1554873) (not d!461328) (not b!1555058) (not b!1554811) (not d!461360) (not setNonEmpty!10836) (not b!1555111) (not d!461250) (not d!461386) (not mapNonEmpty!8340) (not setNonEmpty!10828) (not d!461368) (not b!1554947) (not b!1554832) (not b!1555051) (not b!1554720) (not b!1554879) (not bm!101987) (not b!1554878) (not d!461254) (not d!461196) (not b!1555033) (not d!461216) (not b!1554725) (not b!1554750) b_and!108467 (not d!461166) (not setNonEmpty!10807) (not b_next!42033) (not d!461342) (not setNonEmpty!10808) (not b_next!42019) (not d!461188) (not b_lambda!48801) (not b!1555036) (not b!1555059) b_and!108437 (not d!461366) (not b!1554734) b_and!108469 (not d!461376) (not b!1554880) (not b!1555070) (not setNonEmpty!10816) (not b!1554569) (not d!461194) (not b!1555115) (not b!1554957) (not b!1554972) (not d!461406) (not b!1554714) (not b!1555093) (not b!1555041) (not d!461280) (not b!1554913) (not d!461370) (not b!1555096) (not b!1555074) (not b!1555109) (not b_lambda!48781) (not b!1554679) (not b!1555009) (not b!1555020) (not tb!87307) (not setNonEmpty!10832) (not b!1554827) (not b!1554973) (not b!1555042) (not b_next!42037) (not b!1555073) (not d!461252) (not setNonEmpty!10829) (not b!1554790) (not setNonEmpty!10839) (not b!1554831) (not b!1554872) (not b!1555127) (not setNonEmpty!10815) (not setNonEmpty!10835) (not b!1554971) b_and!108475 b_and!108477 (not d!461404) (not b!1554874) (not bm!101973) (not b!1555080) (not bm!102003) (not setNonEmpty!10822) (not b!1554729) (not b!1554933) (not b!1554713) (not b!1555090) (not b!1554732) b_and!108445 (not b!1555071) (not b!1554960) (not b!1555013) (not b!1555099) (not b!1554507) (not b!1555006) (not setNonEmpty!10806) (not setNonEmpty!10830) (not b!1555029) (not b!1554909) (not b!1555028) (not b!1555092) (not b!1555143) (not b!1554815) (not b!1554688) (not bm!101984) (not mapNonEmpty!8344) (not b!1555097) (not b!1554685) (not b!1554917) (not b!1554806) (not b!1555047) (not setNonEmpty!10820) (not b!1555053) (not b!1555132) (not b!1554524) (not b!1555062) (not setNonEmpty!10809) (not b!1554953) (not setNonEmpty!10840) (not b!1555055) (not b!1555128) (not b!1554970) (not d!461208) (not d!461212) (not b!1555061) (not b!1554765) b_and!108449 (not d!461408) (not b!1554891) (not setNonEmpty!10813) (not b!1555012) (not b!1555078) (not bm!101970) (not b!1554527) (not setNonEmpty!10831) (not b_next!42029) (not b_next!42011) (not b!1554952) (not d!461218) (not b!1555114) (not b!1554950) (not b!1555066) (not tb!87311) (not b!1554529) (not b!1554823) (not b_lambda!48797) (not d!461278) (not d!461206) (not b!1554801) (not b!1554835) (not b_lambda!48777) (not d!461292) (not setNonEmpty!10810) (not b!1554914) (not b!1554571) (not b!1555082) (not d!461264) (not b!1555121) (not d!461330) (not b!1555100) (not b!1554893) (not d!461372) (not b!1554941) (not b!1554795) (not b!1554782) (not b!1554926) (not b!1554932) (not b!1554532) (not b!1554779) (not setNonEmpty!10798) (not b!1554763) (not b_lambda!48817) (not d!461420) tp_is_empty!7065 b_and!108451 (not b!1555025) (not d!461224) (not d!461178) (not b!1554890) (not d!461214) (not b!1555017) (not d!461352) (not b!1554949) (not b!1554907) (not bm!101982) (not d!461248))
(check-sat b_and!108471 (not b_next!42027) b_and!108447 (not b_next!42031) (not b_next!42013) b_and!108473 (not b_next!42017) (not b_next!42037) b_and!108445 b_and!108449 b_and!108451 b_and!108479 b_and!108483 (not b_next!42015) (not b_next!42021) (not b_next!42035) b_and!108439 (not b_next!42023) (not b_next!42025) b_and!108467 (not b_next!42033) b_and!108469 (not b_next!42019) b_and!108437 b_and!108475 b_and!108477 (not b_next!42029) (not b_next!42011))
