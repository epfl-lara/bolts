; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66028 () Bool)

(assert start!66028)

(declare-fun b!690399 () Bool)

(declare-fun b_free!19497 () Bool)

(declare-fun b_next!19561 () Bool)

(assert (=> b!690399 (= b_free!19497 (not b_next!19561))))

(declare-fun tp!207288 () Bool)

(declare-fun b_and!63291 () Bool)

(assert (=> b!690399 (= tp!207288 b_and!63291)))

(declare-fun b!690400 () Bool)

(declare-fun b_free!19499 () Bool)

(declare-fun b_next!19563 () Bool)

(assert (=> b!690400 (= b_free!19499 (not b_next!19563))))

(declare-fun tp!207285 () Bool)

(declare-fun b_and!63293 () Bool)

(assert (=> b!690400 (= tp!207285 b_and!63293)))

(declare-fun b!690404 () Bool)

(declare-fun b_free!19501 () Bool)

(declare-fun b_next!19565 () Bool)

(assert (=> b!690404 (= b_free!19501 (not b_next!19565))))

(declare-fun tp!207278 () Bool)

(declare-fun b_and!63295 () Bool)

(assert (=> b!690404 (= tp!207278 b_and!63295)))

(declare-fun b!690387 () Bool)

(declare-fun b_free!19503 () Bool)

(declare-fun b_next!19567 () Bool)

(assert (=> b!690387 (= b_free!19503 (not b_next!19567))))

(declare-fun tp!207283 () Bool)

(declare-fun b_and!63297 () Bool)

(assert (=> b!690387 (= tp!207283 b_and!63297)))

(declare-fun b!690402 () Bool)

(declare-fun b_free!19505 () Bool)

(declare-fun b_next!19569 () Bool)

(assert (=> b!690402 (= b_free!19505 (not b_next!19569))))

(declare-fun tp!207291 () Bool)

(declare-fun b_and!63299 () Bool)

(assert (=> b!690402 (= tp!207291 b_and!63299)))

(declare-fun b_free!19507 () Bool)

(declare-fun b_next!19571 () Bool)

(assert (=> b!690402 (= b_free!19507 (not b_next!19571))))

(declare-fun tp!207293 () Bool)

(declare-fun b_and!63301 () Bool)

(assert (=> b!690402 (= tp!207293 b_and!63301)))

(declare-fun b!690410 () Bool)

(declare-fun b_free!19509 () Bool)

(declare-fun b_next!19573 () Bool)

(assert (=> b!690410 (= b_free!19509 (not b_next!19573))))

(declare-fun tp!207279 () Bool)

(declare-fun b_and!63303 () Bool)

(assert (=> b!690410 (= tp!207279 b_and!63303)))

(declare-fun b!690382 () Bool)

(declare-fun b_free!19511 () Bool)

(declare-fun b_next!19575 () Bool)

(assert (=> b!690382 (= b_free!19511 (not b_next!19575))))

(declare-fun tp!207276 () Bool)

(declare-fun b_and!63305 () Bool)

(assert (=> b!690382 (= tp!207276 b_and!63305)))

(declare-fun mapNonEmpty!3032 () Bool)

(declare-fun mapRes!3034 () Bool)

(declare-fun tp!207274 () Bool)

(declare-fun tp!207289 () Bool)

(assert (=> mapNonEmpty!3032 (= mapRes!3034 (and tp!207274 tp!207289))))

(declare-datatypes ((Hashable!727 0))(
  ( (HashableExt!726 (__x!5332 Int)) )
))
(declare-datatypes ((C!4260 0))(
  ( (C!4261 (val!2360 Int)) )
))
(declare-datatypes ((Regex!1829 0))(
  ( (ElementMatch!1829 (c!121534 C!4260)) (Concat!3364 (regOne!4170 Regex!1829) (regTwo!4170 Regex!1829)) (EmptyExpr!1829) (Star!1829 (reg!2158 Regex!1829)) (EmptyLang!1829) (Union!1829 (regOne!4171 Regex!1829) (regTwo!4171 Regex!1829)) )
))
(declare-datatypes ((List!7437 0))(
  ( (Nil!7423) (Cons!7423 (h!12824 Regex!1829) (t!87253 List!7437)) )
))
(declare-datatypes ((Context!478 0))(
  ( (Context!479 (exprs!739 List!7437)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7814 0))(
  ( (tuple2!7815 (_1!4312 (InoxSet Context!478)) (_2!4312 Int)) )
))
(declare-datatypes ((array!2837 0))(
  ( (array!2838 (arr!1282 (Array (_ BitVec 32) (_ BitVec 64))) (size!6092 (_ BitVec 32))) )
))
(declare-datatypes ((List!7438 0))(
  ( (Nil!7424) (Cons!7424 (h!12825 C!4260) (t!87254 List!7438)) )
))
(declare-datatypes ((tuple2!7816 0))(
  ( (tuple2!7817 (_1!4313 tuple2!7814) (_2!4313 Int)) )
))
(declare-datatypes ((List!7439 0))(
  ( (Nil!7425) (Cons!7425 (h!12826 tuple2!7816) (t!87255 List!7439)) )
))
(declare-datatypes ((array!2839 0))(
  ( (array!2840 (arr!1283 (Array (_ BitVec 32) List!7439)) (size!6093 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1510 0))(
  ( (LongMapFixedSize!1511 (defaultEntry!1111 Int) (mask!2554 (_ BitVec 32)) (extraKeys!1002 (_ BitVec 32)) (zeroValue!1012 List!7439) (minValue!1012 List!7439) (_size!1619 (_ BitVec 32)) (_keys!1049 array!2837) (_values!1034 array!2839) (_vacant!816 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2961 0))(
  ( (Cell!2962 (v!17628 LongMapFixedSize!1510)) )
))
(declare-datatypes ((MutLongMap!755 0))(
  ( (LongMap!755 (underlying!1693 Cell!2961)) (MutLongMapExt!754 (__x!5333 Int)) )
))
(declare-datatypes ((Cell!2963 0))(
  ( (Cell!2964 (v!17629 MutLongMap!755)) )
))
(declare-datatypes ((MutableMap!727 0))(
  ( (MutableMapExt!726 (__x!5334 Int)) (HashMap!727 (underlying!1694 Cell!2963) (hashF!2635 Hashable!727) (_size!1620 (_ BitVec 32)) (defaultValue!878 Int)) )
))
(declare-datatypes ((IArray!5251 0))(
  ( (IArray!5252 (innerList!2683 List!7438)) )
))
(declare-datatypes ((Conc!2625 0))(
  ( (Node!2625 (left!5970 Conc!2625) (right!6300 Conc!2625) (csize!5480 Int) (cheight!2836 Int)) (Leaf!3893 (xs!5276 IArray!5251) (csize!5481 Int)) (Empty!2625) )
))
(declare-datatypes ((BalanceConc!5262 0))(
  ( (BalanceConc!5263 (c!121535 Conc!2625)) )
))
(declare-datatypes ((CacheFindLongestMatch!32 0))(
  ( (CacheFindLongestMatch!33 (cache!1114 MutableMap!727) (totalInput!1795 BalanceConc!5262)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!32)

(declare-fun mapValue!3032 () List!7439)

(declare-fun mapRest!3033 () (Array (_ BitVec 32) List!7439))

(declare-fun mapKey!3032 () (_ BitVec 32))

(assert (=> mapNonEmpty!3032 (= (arr!1283 (_values!1034 (v!17628 (underlying!1693 (v!17629 (underlying!1694 (cache!1114 cacheFindLongestMatch!59))))))) (store mapRest!3033 mapKey!3032 mapValue!3032))))

(declare-fun b!690379 () Bool)

(declare-fun e!434110 () Bool)

(declare-fun tp!207284 () Bool)

(assert (=> b!690379 (= e!434110 (and tp!207284 mapRes!3034))))

(declare-fun condMapEmpty!3032 () Bool)

(declare-fun mapDefault!3034 () List!7439)

(assert (=> b!690379 (= condMapEmpty!3032 (= (arr!1283 (_values!1034 (v!17628 (underlying!1693 (v!17629 (underlying!1694 (cache!1114 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7439)) mapDefault!3034)))))

(declare-fun b!690380 () Bool)

(declare-fun e!434101 () Bool)

(declare-fun e!434106 () Bool)

(declare-datatypes ((tuple2!7818 0))(
  ( (tuple2!7819 (_1!4314 Context!478) (_2!4314 C!4260)) )
))
(declare-datatypes ((tuple2!7820 0))(
  ( (tuple2!7821 (_1!4315 tuple2!7818) (_2!4315 (InoxSet Context!478))) )
))
(declare-datatypes ((List!7440 0))(
  ( (Nil!7426) (Cons!7426 (h!12827 tuple2!7820) (t!87256 List!7440)) )
))
(declare-datatypes ((array!2841 0))(
  ( (array!2842 (arr!1284 (Array (_ BitVec 32) List!7440)) (size!6094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1512 0))(
  ( (LongMapFixedSize!1513 (defaultEntry!1112 Int) (mask!2555 (_ BitVec 32)) (extraKeys!1003 (_ BitVec 32)) (zeroValue!1013 List!7440) (minValue!1013 List!7440) (_size!1621 (_ BitVec 32)) (_keys!1050 array!2837) (_values!1035 array!2841) (_vacant!817 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2965 0))(
  ( (Cell!2966 (v!17630 LongMapFixedSize!1512)) )
))
(declare-datatypes ((MutLongMap!756 0))(
  ( (LongMap!756 (underlying!1695 Cell!2965)) (MutLongMapExt!755 (__x!5335 Int)) )
))
(declare-fun lt!284475 () MutLongMap!756)

(get-info :version)

(assert (=> b!690380 (= e!434101 (and e!434106 ((_ is LongMap!756) lt!284475)))))

(declare-datatypes ((Cell!2967 0))(
  ( (Cell!2968 (v!17631 MutLongMap!756)) )
))
(declare-datatypes ((Hashable!728 0))(
  ( (HashableExt!727 (__x!5336 Int)) )
))
(declare-datatypes ((MutableMap!728 0))(
  ( (MutableMapExt!727 (__x!5337 Int)) (HashMap!728 (underlying!1696 Cell!2967) (hashF!2636 Hashable!728) (_size!1622 (_ BitVec 32)) (defaultValue!879 Int)) )
))
(declare-datatypes ((CacheUp!372 0))(
  ( (CacheUp!373 (cache!1115 MutableMap!728)) )
))
(declare-fun cacheUp!457 () CacheUp!372)

(assert (=> b!690380 (= lt!284475 (v!17631 (underlying!1696 (cache!1115 cacheUp!457))))))

(declare-fun b!690381 () Bool)

(declare-fun res!313313 () Bool)

(declare-fun e!434090 () Bool)

(assert (=> b!690381 (=> (not res!313313) (not e!434090))))

(declare-datatypes ((LexerInterface!1305 0))(
  ( (LexerInterfaceExt!1302 (__x!5338 Int)) (Lexer!1303) )
))
(declare-fun thiss!12183 () LexerInterface!1305)

(declare-datatypes ((String!9398 0))(
  ( (String!9399 (value!48135 String)) )
))
(declare-datatypes ((List!7441 0))(
  ( (Nil!7427) (Cons!7427 (h!12828 (_ BitVec 16)) (t!87257 List!7441)) )
))
(declare-datatypes ((TokenValue!1535 0))(
  ( (FloatLiteralValue!3070 (text!11190 List!7441)) (TokenValueExt!1534 (__x!5339 Int)) (Broken!7675 (value!48136 List!7441)) (Object!1548) (End!1535) (Def!1535) (Underscore!1535) (Match!1535) (Else!1535) (Error!1535) (Case!1535) (If!1535) (Extends!1535) (Abstract!1535) (Class!1535) (Val!1535) (DelimiterValue!3070 (del!1595 List!7441)) (KeywordValue!1541 (value!48137 List!7441)) (CommentValue!3070 (value!48138 List!7441)) (WhitespaceValue!3070 (value!48139 List!7441)) (IndentationValue!1535 (value!48140 List!7441)) (String!9400) (Int32!1535) (Broken!7676 (value!48141 List!7441)) (Boolean!1536) (Unit!12629) (OperatorValue!1538 (op!1595 List!7441)) (IdentifierValue!3070 (value!48142 List!7441)) (IdentifierValue!3071 (value!48143 List!7441)) (WhitespaceValue!3071 (value!48144 List!7441)) (True!3070) (False!3070) (Broken!7677 (value!48145 List!7441)) (Broken!7678 (value!48146 List!7441)) (True!3071) (RightBrace!1535) (RightBracket!1535) (Colon!1535) (Null!1535) (Comma!1535) (LeftBracket!1535) (False!3071) (LeftBrace!1535) (ImaginaryLiteralValue!1535 (text!11191 List!7441)) (StringLiteralValue!4605 (value!48147 List!7441)) (EOFValue!1535 (value!48148 List!7441)) (IdentValue!1535 (value!48149 List!7441)) (DelimiterValue!3071 (value!48150 List!7441)) (DedentValue!1535 (value!48151 List!7441)) (NewLineValue!1535 (value!48152 List!7441)) (IntegerValue!4605 (value!48153 (_ BitVec 32)) (text!11192 List!7441)) (IntegerValue!4606 (value!48154 Int) (text!11193 List!7441)) (Times!1535) (Or!1535) (Equal!1535) (Minus!1535) (Broken!7679 (value!48155 List!7441)) (And!1535) (Div!1535) (LessEqual!1535) (Mod!1535) (Concat!3365) (Not!1535) (Plus!1535) (SpaceValue!1535 (value!48156 List!7441)) (IntegerValue!4607 (value!48157 Int) (text!11194 List!7441)) (StringLiteralValue!4606 (text!11195 List!7441)) (FloatLiteralValue!3071 (text!11196 List!7441)) (BytesLiteralValue!1535 (value!48158 List!7441)) (CommentValue!3071 (value!48159 List!7441)) (StringLiteralValue!4607 (value!48160 List!7441)) (ErrorTokenValue!1535 (msg!1596 List!7441)) )
))
(declare-datatypes ((TokenValueInjection!2806 0))(
  ( (TokenValueInjection!2807 (toValue!2451 Int) (toChars!2310 Int)) )
))
(declare-datatypes ((Rule!2782 0))(
  ( (Rule!2783 (regex!1491 Regex!1829) (tag!1753 String!9398) (isSeparator!1491 Bool) (transformation!1491 TokenValueInjection!2806)) )
))
(declare-datatypes ((List!7442 0))(
  ( (Nil!7428) (Cons!7428 (h!12829 Rule!2782) (t!87258 List!7442)) )
))
(declare-fun rules!1357 () List!7442)

(declare-fun rulesInvariant!1239 (LexerInterface!1305 List!7442) Bool)

(assert (=> b!690381 (= res!313313 (rulesInvariant!1239 thiss!12183 rules!1357))))

(declare-fun e!434084 () Bool)

(declare-fun tp!207273 () Bool)

(declare-fun e!434085 () Bool)

(declare-fun tp!207294 () Bool)

(declare-fun array_inv!937 (array!2837) Bool)

(declare-fun array_inv!938 (array!2841) Bool)

(assert (=> b!690382 (= e!434084 (and tp!207276 tp!207273 tp!207294 (array_inv!937 (_keys!1050 (v!17630 (underlying!1695 (v!17631 (underlying!1696 (cache!1115 cacheUp!457))))))) (array_inv!938 (_values!1035 (v!17630 (underlying!1695 (v!17631 (underlying!1696 (cache!1115 cacheUp!457))))))) e!434085))))

(declare-fun b!690383 () Bool)

(declare-fun e!434111 () Bool)

(declare-fun e!434094 () Bool)

(assert (=> b!690383 (= e!434111 e!434094)))

(declare-fun mapIsEmpty!3032 () Bool)

(assert (=> mapIsEmpty!3032 mapRes!3034))

(declare-fun b!690384 () Bool)

(declare-fun res!313314 () Bool)

(assert (=> b!690384 (=> (not res!313314) (not e!434090))))

(declare-fun valid!642 (CacheFindLongestMatch!32) Bool)

(assert (=> b!690384 (= res!313314 (valid!642 cacheFindLongestMatch!59))))

(declare-fun b!690385 () Bool)

(declare-fun res!313308 () Bool)

(assert (=> b!690385 (=> (not res!313308) (not e!434090))))

(declare-fun isEmpty!4859 (List!7442) Bool)

(assert (=> b!690385 (= res!313308 (not (isEmpty!4859 rules!1357)))))

(declare-fun tp!207292 () Bool)

(declare-fun e!434096 () Bool)

(declare-fun e!434088 () Bool)

(declare-fun b!690386 () Bool)

(declare-fun inv!9516 (String!9398) Bool)

(declare-fun inv!9523 (TokenValueInjection!2806) Bool)

(assert (=> b!690386 (= e!434088 (and tp!207292 (inv!9516 (tag!1753 (h!12829 rules!1357))) (inv!9523 (transformation!1491 (h!12829 rules!1357))) e!434096))))

(declare-fun e!434109 () Bool)

(assert (=> b!690387 (= e!434109 (and e!434101 tp!207283))))

(declare-fun b!690388 () Bool)

(declare-fun e!434102 () Bool)

(declare-fun tp!207271 () Bool)

(declare-fun inv!9524 (Conc!2625) Bool)

(assert (=> b!690388 (= e!434102 (and (inv!9524 (c!121535 (totalInput!1795 cacheFindLongestMatch!59))) tp!207271))))

(declare-fun b!690389 () Bool)

(declare-fun e!434097 () Bool)

(declare-fun e!434083 () Bool)

(assert (=> b!690389 (= e!434097 e!434083)))

(declare-fun res!313310 () Bool)

(assert (=> start!66028 (=> (not res!313310) (not e!434090))))

(assert (=> start!66028 (= res!313310 ((_ is Lexer!1303) thiss!12183))))

(assert (=> start!66028 e!434090))

(declare-fun e!434081 () Bool)

(declare-fun inv!9525 (CacheFindLongestMatch!32) Bool)

(assert (=> start!66028 (and (inv!9525 cacheFindLongestMatch!59) e!434081)))

(declare-fun input!756 () BalanceConc!5262)

(declare-fun e!434093 () Bool)

(declare-fun inv!9526 (BalanceConc!5262) Bool)

(assert (=> start!66028 (and (inv!9526 input!756) e!434093)))

(declare-fun e!434099 () Bool)

(declare-fun inv!9527 (CacheUp!372) Bool)

(assert (=> start!66028 (and (inv!9527 cacheUp!457) e!434099)))

(declare-datatypes ((tuple3!704 0))(
  ( (tuple3!705 (_1!4316 Regex!1829) (_2!4316 Context!478) (_3!405 C!4260)) )
))
(declare-datatypes ((tuple2!7822 0))(
  ( (tuple2!7823 (_1!4317 tuple3!704) (_2!4317 (InoxSet Context!478))) )
))
(declare-datatypes ((List!7443 0))(
  ( (Nil!7429) (Cons!7429 (h!12830 tuple2!7822) (t!87259 List!7443)) )
))
(declare-datatypes ((array!2843 0))(
  ( (array!2844 (arr!1285 (Array (_ BitVec 32) List!7443)) (size!6095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1514 0))(
  ( (LongMapFixedSize!1515 (defaultEntry!1113 Int) (mask!2556 (_ BitVec 32)) (extraKeys!1004 (_ BitVec 32)) (zeroValue!1014 List!7443) (minValue!1014 List!7443) (_size!1623 (_ BitVec 32)) (_keys!1051 array!2837) (_values!1036 array!2843) (_vacant!818 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2969 0))(
  ( (Cell!2970 (v!17632 LongMapFixedSize!1514)) )
))
(declare-datatypes ((MutLongMap!757 0))(
  ( (LongMap!757 (underlying!1697 Cell!2969)) (MutLongMapExt!756 (__x!5340 Int)) )
))
(declare-datatypes ((Cell!2971 0))(
  ( (Cell!2972 (v!17633 MutLongMap!757)) )
))
(declare-datatypes ((Hashable!729 0))(
  ( (HashableExt!728 (__x!5341 Int)) )
))
(declare-datatypes ((MutableMap!729 0))(
  ( (MutableMapExt!728 (__x!5342 Int)) (HashMap!729 (underlying!1698 Cell!2971) (hashF!2637 Hashable!729) (_size!1624 (_ BitVec 32)) (defaultValue!880 Int)) )
))
(declare-datatypes ((CacheDown!376 0))(
  ( (CacheDown!377 (cache!1116 MutableMap!729)) )
))
(declare-fun cacheDown!470 () CacheDown!376)

(declare-fun inv!9528 (CacheDown!376) Bool)

(assert (=> start!66028 (and (inv!9528 cacheDown!470) e!434111)))

(assert (=> start!66028 true))

(declare-fun e!434100 () Bool)

(assert (=> start!66028 e!434100))

(declare-fun b!690390 () Bool)

(assert (=> b!690390 (= e!434090 false)))

(declare-datatypes ((Token!2690 0))(
  ( (Token!2691 (value!48161 TokenValue!1535) (rule!2534 Rule!2782) (size!6096 Int) (originalCharacters!1770 List!7438)) )
))
(declare-datatypes ((List!7444 0))(
  ( (Nil!7430) (Cons!7430 (h!12831 Token!2690) (t!87260 List!7444)) )
))
(declare-fun lt!284473 () List!7444)

(declare-datatypes ((IArray!5253 0))(
  ( (IArray!5254 (innerList!2684 List!7444)) )
))
(declare-datatypes ((Conc!2626 0))(
  ( (Node!2626 (left!5971 Conc!2626) (right!6301 Conc!2626) (csize!5482 Int) (cheight!2837 Int)) (Leaf!3894 (xs!5277 IArray!5253) (csize!5483 Int)) (Empty!2626) )
))
(declare-datatypes ((BalanceConc!5264 0))(
  ( (BalanceConc!5265 (c!121536 Conc!2626)) )
))
(declare-datatypes ((tuple2!7824 0))(
  ( (tuple2!7825 (_1!4318 BalanceConc!5264) (_2!4318 BalanceConc!5262)) )
))
(declare-fun lt!284476 () tuple2!7824)

(declare-fun list!3123 (BalanceConc!5264) List!7444)

(assert (=> b!690390 (= lt!284473 (list!3123 (_1!4318 lt!284476)))))

(declare-fun lt!284474 () List!7444)

(declare-datatypes ((tuple4!106 0))(
  ( (tuple4!107 (_1!4319 tuple2!7824) (_2!4319 CacheUp!372) (_3!406 CacheDown!376) (_4!53 CacheFindLongestMatch!32)) )
))
(declare-fun lt!284471 () tuple4!106)

(assert (=> b!690390 (= lt!284474 (list!3123 (_1!4318 (_1!4319 lt!284471))))))

(declare-fun lex!587 (LexerInterface!1305 List!7442 BalanceConc!5262) tuple2!7824)

(assert (=> b!690390 (= lt!284476 (lex!587 thiss!12183 rules!1357 input!756))))

(declare-fun lexTailRecV2Mem!3 (LexerInterface!1305 List!7442 BalanceConc!5262 BalanceConc!5262 BalanceConc!5262 BalanceConc!5264 CacheUp!372 CacheDown!376 CacheFindLongestMatch!32) tuple4!106)

(assert (=> b!690390 (= lt!284471 (lexTailRecV2Mem!3 thiss!12183 rules!1357 input!756 (BalanceConc!5263 Empty!2625) input!756 (BalanceConc!5265 Empty!2626) cacheUp!457 cacheDown!470 cacheFindLongestMatch!59))))

(declare-fun b!690391 () Bool)

(assert (=> b!690391 (= e!434099 e!434109)))

(declare-fun b!690392 () Bool)

(declare-fun tp!207277 () Bool)

(declare-fun mapRes!3032 () Bool)

(assert (=> b!690392 (= e!434085 (and tp!207277 mapRes!3032))))

(declare-fun condMapEmpty!3033 () Bool)

(declare-fun mapDefault!3033 () List!7440)

(assert (=> b!690392 (= condMapEmpty!3033 (= (arr!1284 (_values!1035 (v!17630 (underlying!1695 (v!17631 (underlying!1696 (cache!1115 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7440)) mapDefault!3033)))))

(declare-fun b!690393 () Bool)

(declare-fun tp!207270 () Bool)

(assert (=> b!690393 (= e!434100 (and e!434088 tp!207270))))

(declare-fun b!690394 () Bool)

(declare-fun e!434082 () Bool)

(declare-fun e!434098 () Bool)

(assert (=> b!690394 (= e!434082 e!434098)))

(declare-fun b!690395 () Bool)

(declare-fun res!313309 () Bool)

(assert (=> b!690395 (=> (not res!313309) (not e!434090))))

(declare-fun valid!643 (CacheDown!376) Bool)

(assert (=> b!690395 (= res!313309 (valid!643 cacheDown!470))))

(declare-fun b!690396 () Bool)

(declare-fun tp!207281 () Bool)

(assert (=> b!690396 (= e!434093 (and (inv!9524 (c!121535 input!756)) tp!207281))))

(declare-fun b!690397 () Bool)

(declare-fun e!434105 () Bool)

(assert (=> b!690397 (= e!434106 e!434105)))

(declare-fun mapNonEmpty!3033 () Bool)

(declare-fun tp!207280 () Bool)

(declare-fun tp!207287 () Bool)

(assert (=> mapNonEmpty!3033 (= mapRes!3032 (and tp!207280 tp!207287))))

(declare-fun mapValue!3034 () List!7440)

(declare-fun mapKey!3034 () (_ BitVec 32))

(declare-fun mapRest!3032 () (Array (_ BitVec 32) List!7440))

(assert (=> mapNonEmpty!3033 (= (arr!1284 (_values!1035 (v!17630 (underlying!1695 (v!17631 (underlying!1696 (cache!1115 cacheUp!457))))))) (store mapRest!3032 mapKey!3034 mapValue!3034))))

(declare-fun b!690398 () Bool)

(declare-fun e!434095 () Bool)

(declare-fun tp!207282 () Bool)

(declare-fun mapRes!3033 () Bool)

(assert (=> b!690398 (= e!434095 (and tp!207282 mapRes!3033))))

(declare-fun condMapEmpty!3034 () Bool)

(declare-fun mapDefault!3032 () List!7443)

(assert (=> b!690398 (= condMapEmpty!3034 (= (arr!1285 (_values!1036 (v!17632 (underlying!1697 (v!17633 (underlying!1698 (cache!1116 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7443)) mapDefault!3032)))))

(declare-fun tp!207275 () Bool)

(declare-fun tp!207272 () Bool)

(declare-fun array_inv!939 (array!2839) Bool)

(assert (=> b!690399 (= e!434083 (and tp!207288 tp!207272 tp!207275 (array_inv!937 (_keys!1049 (v!17628 (underlying!1693 (v!17629 (underlying!1694 (cache!1114 cacheFindLongestMatch!59))))))) (array_inv!939 (_values!1034 (v!17628 (underlying!1693 (v!17629 (underlying!1694 (cache!1114 cacheFindLongestMatch!59))))))) e!434110))))

(declare-fun mapIsEmpty!3033 () Bool)

(assert (=> mapIsEmpty!3033 mapRes!3033))

(declare-fun e!434087 () Bool)

(declare-fun e!434092 () Bool)

(assert (=> b!690400 (= e!434087 (and e!434092 tp!207285))))

(declare-fun b!690401 () Bool)

(declare-fun e!434107 () Bool)

(declare-fun e!434103 () Bool)

(declare-fun lt!284470 () MutLongMap!757)

(assert (=> b!690401 (= e!434107 (and e!434103 ((_ is LongMap!757) lt!284470)))))

(assert (=> b!690401 (= lt!284470 (v!17633 (underlying!1698 (cache!1116 cacheDown!470))))))

(declare-fun mapIsEmpty!3034 () Bool)

(assert (=> mapIsEmpty!3034 mapRes!3032))

(assert (=> b!690402 (= e!434096 (and tp!207291 tp!207293))))

(declare-fun mapNonEmpty!3034 () Bool)

(declare-fun tp!207290 () Bool)

(declare-fun tp!207269 () Bool)

(assert (=> mapNonEmpty!3034 (= mapRes!3033 (and tp!207290 tp!207269))))

(declare-fun mapValue!3033 () List!7443)

(declare-fun mapRest!3034 () (Array (_ BitVec 32) List!7443))

(declare-fun mapKey!3033 () (_ BitVec 32))

(assert (=> mapNonEmpty!3034 (= (arr!1285 (_values!1036 (v!17632 (underlying!1697 (v!17633 (underlying!1698 (cache!1116 cacheDown!470))))))) (store mapRest!3034 mapKey!3033 mapValue!3033))))

(declare-fun b!690403 () Bool)

(assert (=> b!690403 (= e!434103 e!434082)))

(assert (=> b!690404 (= e!434094 (and e!434107 tp!207278))))

(declare-fun b!690405 () Bool)

(assert (=> b!690405 (= e!434105 e!434084)))

(declare-fun b!690406 () Bool)

(declare-fun e!434104 () Bool)

(assert (=> b!690406 (= e!434104 e!434097)))

(declare-fun b!690407 () Bool)

(assert (=> b!690407 (= e!434081 (and e!434087 (inv!9526 (totalInput!1795 cacheFindLongestMatch!59)) e!434102))))

(declare-fun b!690408 () Bool)

(declare-fun res!313311 () Bool)

(assert (=> b!690408 (=> (not res!313311) (not e!434090))))

(assert (=> b!690408 (= res!313311 (= (totalInput!1795 cacheFindLongestMatch!59) input!756))))

(declare-fun b!690409 () Bool)

(declare-fun res!313312 () Bool)

(assert (=> b!690409 (=> (not res!313312) (not e!434090))))

(declare-fun valid!644 (CacheUp!372) Bool)

(assert (=> b!690409 (= res!313312 (valid!644 cacheUp!457))))

(declare-fun tp!207286 () Bool)

(declare-fun tp!207268 () Bool)

(declare-fun array_inv!940 (array!2843) Bool)

(assert (=> b!690410 (= e!434098 (and tp!207279 tp!207268 tp!207286 (array_inv!937 (_keys!1051 (v!17632 (underlying!1697 (v!17633 (underlying!1698 (cache!1116 cacheDown!470))))))) (array_inv!940 (_values!1036 (v!17632 (underlying!1697 (v!17633 (underlying!1698 (cache!1116 cacheDown!470))))))) e!434095))))

(declare-fun b!690411 () Bool)

(declare-fun lt!284472 () MutLongMap!755)

(assert (=> b!690411 (= e!434092 (and e!434104 ((_ is LongMap!755) lt!284472)))))

(assert (=> b!690411 (= lt!284472 (v!17629 (underlying!1694 (cache!1114 cacheFindLongestMatch!59))))))

(assert (= (and start!66028 res!313310) b!690385))

(assert (= (and b!690385 res!313308) b!690381))

(assert (= (and b!690381 res!313313) b!690409))

(assert (= (and b!690409 res!313312) b!690395))

(assert (= (and b!690395 res!313309) b!690384))

(assert (= (and b!690384 res!313314) b!690408))

(assert (= (and b!690408 res!313311) b!690390))

(assert (= (and b!690379 condMapEmpty!3032) mapIsEmpty!3032))

(assert (= (and b!690379 (not condMapEmpty!3032)) mapNonEmpty!3032))

(assert (= b!690399 b!690379))

(assert (= b!690389 b!690399))

(assert (= b!690406 b!690389))

(assert (= (and b!690411 ((_ is LongMap!755) (v!17629 (underlying!1694 (cache!1114 cacheFindLongestMatch!59))))) b!690406))

(assert (= b!690400 b!690411))

(assert (= (and b!690407 ((_ is HashMap!727) (cache!1114 cacheFindLongestMatch!59))) b!690400))

(assert (= b!690407 b!690388))

(assert (= start!66028 b!690407))

(assert (= start!66028 b!690396))

(assert (= (and b!690392 condMapEmpty!3033) mapIsEmpty!3034))

(assert (= (and b!690392 (not condMapEmpty!3033)) mapNonEmpty!3033))

(assert (= b!690382 b!690392))

(assert (= b!690405 b!690382))

(assert (= b!690397 b!690405))

(assert (= (and b!690380 ((_ is LongMap!756) (v!17631 (underlying!1696 (cache!1115 cacheUp!457))))) b!690397))

(assert (= b!690387 b!690380))

(assert (= (and b!690391 ((_ is HashMap!728) (cache!1115 cacheUp!457))) b!690387))

(assert (= start!66028 b!690391))

(assert (= (and b!690398 condMapEmpty!3034) mapIsEmpty!3033))

(assert (= (and b!690398 (not condMapEmpty!3034)) mapNonEmpty!3034))

(assert (= b!690410 b!690398))

(assert (= b!690394 b!690410))

(assert (= b!690403 b!690394))

(assert (= (and b!690401 ((_ is LongMap!757) (v!17633 (underlying!1698 (cache!1116 cacheDown!470))))) b!690403))

(assert (= b!690404 b!690401))

(assert (= (and b!690383 ((_ is HashMap!729) (cache!1116 cacheDown!470))) b!690404))

(assert (= start!66028 b!690383))

(assert (= b!690386 b!690402))

(assert (= b!690393 b!690386))

(assert (= (and start!66028 ((_ is Cons!7428) rules!1357)) b!690393))

(declare-fun m!946703 () Bool)

(assert (=> mapNonEmpty!3033 m!946703))

(declare-fun m!946705 () Bool)

(assert (=> mapNonEmpty!3032 m!946705))

(declare-fun m!946707 () Bool)

(assert (=> b!690409 m!946707))

(declare-fun m!946709 () Bool)

(assert (=> b!690385 m!946709))

(declare-fun m!946711 () Bool)

(assert (=> b!690410 m!946711))

(declare-fun m!946713 () Bool)

(assert (=> b!690410 m!946713))

(declare-fun m!946715 () Bool)

(assert (=> b!690382 m!946715))

(declare-fun m!946717 () Bool)

(assert (=> b!690382 m!946717))

(declare-fun m!946719 () Bool)

(assert (=> b!690386 m!946719))

(declare-fun m!946721 () Bool)

(assert (=> b!690386 m!946721))

(declare-fun m!946723 () Bool)

(assert (=> mapNonEmpty!3034 m!946723))

(declare-fun m!946725 () Bool)

(assert (=> b!690407 m!946725))

(declare-fun m!946727 () Bool)

(assert (=> b!690384 m!946727))

(declare-fun m!946729 () Bool)

(assert (=> start!66028 m!946729))

(declare-fun m!946731 () Bool)

(assert (=> start!66028 m!946731))

(declare-fun m!946733 () Bool)

(assert (=> start!66028 m!946733))

(declare-fun m!946735 () Bool)

(assert (=> start!66028 m!946735))

(declare-fun m!946737 () Bool)

(assert (=> b!690388 m!946737))

(declare-fun m!946739 () Bool)

(assert (=> b!690390 m!946739))

(declare-fun m!946741 () Bool)

(assert (=> b!690390 m!946741))

(declare-fun m!946743 () Bool)

(assert (=> b!690390 m!946743))

(declare-fun m!946745 () Bool)

(assert (=> b!690390 m!946745))

(declare-fun m!946747 () Bool)

(assert (=> b!690381 m!946747))

(declare-fun m!946749 () Bool)

(assert (=> b!690396 m!946749))

(declare-fun m!946751 () Bool)

(assert (=> b!690399 m!946751))

(declare-fun m!946753 () Bool)

(assert (=> b!690399 m!946753))

(declare-fun m!946755 () Bool)

(assert (=> b!690395 m!946755))

(check-sat (not b!690384) (not b!690379) b_and!63305 (not mapNonEmpty!3032) b_and!63295 (not b!690390) (not mapNonEmpty!3034) b_and!63299 (not b!690409) (not b_next!19563) (not b_next!19571) (not b!690396) (not b_next!19565) (not b!690388) b_and!63293 (not b!690395) b_and!63291 (not b!690407) (not mapNonEmpty!3033) (not b_next!19567) (not b_next!19575) (not start!66028) (not b!690381) (not b!690385) (not b_next!19561) (not b!690410) (not b!690386) (not b!690382) (not b!690398) (not b!690392) b_and!63297 (not b_next!19573) b_and!63301 (not b!690399) (not b_next!19569) (not b!690393) b_and!63303)
(check-sat (not b_next!19565) b_and!63293 b_and!63305 b_and!63291 b_and!63295 (not b_next!19567) (not b_next!19575) b_and!63299 (not b_next!19561) (not b_next!19563) (not b_next!19571) b_and!63303 b_and!63297 (not b_next!19573) b_and!63301 (not b_next!19569))
