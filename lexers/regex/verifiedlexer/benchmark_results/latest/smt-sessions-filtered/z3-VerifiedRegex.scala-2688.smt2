; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144596 () Bool)

(assert start!144596)

(declare-fun b!1558615 () Bool)

(declare-fun b_free!41543 () Bool)

(declare-fun b_next!42247 () Bool)

(assert (=> b!1558615 (= b_free!41543 (not b_next!42247))))

(declare-fun tp!457778 () Bool)

(declare-fun b_and!108773 () Bool)

(assert (=> b!1558615 (= tp!457778 b_and!108773)))

(declare-fun b!1558618 () Bool)

(declare-fun b_free!41545 () Bool)

(declare-fun b_next!42249 () Bool)

(assert (=> b!1558618 (= b_free!41545 (not b_next!42249))))

(declare-fun tp!457775 () Bool)

(declare-fun b_and!108775 () Bool)

(assert (=> b!1558618 (= tp!457775 b_and!108775)))

(declare-fun b!1558583 () Bool)

(declare-fun b_free!41547 () Bool)

(declare-fun b_next!42251 () Bool)

(assert (=> b!1558583 (= b_free!41547 (not b_next!42251))))

(declare-fun tp!457787 () Bool)

(declare-fun b_and!108777 () Bool)

(assert (=> b!1558583 (= tp!457787 b_and!108777)))

(declare-fun b!1558610 () Bool)

(declare-fun b_free!41549 () Bool)

(declare-fun b_next!42253 () Bool)

(assert (=> b!1558610 (= b_free!41549 (not b_next!42253))))

(declare-fun tp!457779 () Bool)

(declare-fun b_and!108779 () Bool)

(assert (=> b!1558610 (= tp!457779 b_and!108779)))

(declare-fun b!1558620 () Bool)

(declare-fun b_free!41551 () Bool)

(declare-fun b_next!42255 () Bool)

(assert (=> b!1558620 (= b_free!41551 (not b_next!42255))))

(declare-fun tp!457783 () Bool)

(declare-fun b_and!108781 () Bool)

(assert (=> b!1558620 (= tp!457783 b_and!108781)))

(declare-fun b_free!41553 () Bool)

(declare-fun b_next!42257 () Bool)

(assert (=> b!1558620 (= b_free!41553 (not b_next!42257))))

(declare-fun tp!457766 () Bool)

(declare-fun b_and!108783 () Bool)

(assert (=> b!1558620 (= tp!457766 b_and!108783)))

(declare-fun b!1558585 () Bool)

(declare-fun b_free!41555 () Bool)

(declare-fun b_next!42259 () Bool)

(assert (=> b!1558585 (= b_free!41555 (not b_next!42259))))

(declare-fun tp!457773 () Bool)

(declare-fun b_and!108785 () Bool)

(assert (=> b!1558585 (= tp!457773 b_and!108785)))

(declare-fun b!1558622 () Bool)

(declare-fun b_free!41557 () Bool)

(declare-fun b_next!42261 () Bool)

(assert (=> b!1558622 (= b_free!41557 (not b_next!42261))))

(declare-fun tp!457762 () Bool)

(declare-fun b_and!108787 () Bool)

(assert (=> b!1558622 (= tp!457762 b_and!108787)))

(declare-fun b!1558632 () Bool)

(declare-fun e!1000472 () Bool)

(assert (=> b!1558632 (= e!1000472 true)))

(declare-fun b!1558631 () Bool)

(declare-fun e!1000471 () Bool)

(assert (=> b!1558631 (= e!1000471 e!1000472)))

(declare-fun b!1558586 () Bool)

(assert (=> b!1558586 e!1000471))

(assert (= b!1558631 b!1558632))

(assert (= b!1558586 b!1558631))

(declare-fun order!9977 () Int)

(declare-datatypes ((List!16951 0))(
  ( (Nil!16883) (Cons!16883 (h!22284 (_ BitVec 16)) (t!141454 List!16951)) )
))
(declare-datatypes ((TokenValue!3049 0))(
  ( (FloatLiteralValue!6098 (text!21788 List!16951)) (TokenValueExt!3048 (__x!11303 Int)) (Broken!15245 (value!93942 List!16951)) (Object!3116) (End!3049) (Def!3049) (Underscore!3049) (Match!3049) (Else!3049) (Error!3049) (Case!3049) (If!3049) (Extends!3049) (Abstract!3049) (Class!3049) (Val!3049) (DelimiterValue!6098 (del!3109 List!16951)) (KeywordValue!3055 (value!93943 List!16951)) (CommentValue!6098 (value!93944 List!16951)) (WhitespaceValue!6098 (value!93945 List!16951)) (IndentationValue!3049 (value!93946 List!16951)) (String!19532) (Int32!3049) (Broken!15246 (value!93947 List!16951)) (Boolean!3050) (Unit!26113) (OperatorValue!3052 (op!3109 List!16951)) (IdentifierValue!6098 (value!93948 List!16951)) (IdentifierValue!6099 (value!93949 List!16951)) (WhitespaceValue!6099 (value!93950 List!16951)) (True!6098) (False!6098) (Broken!15247 (value!93951 List!16951)) (Broken!15248 (value!93952 List!16951)) (True!6099) (RightBrace!3049) (RightBracket!3049) (Colon!3049) (Null!3049) (Comma!3049) (LeftBracket!3049) (False!6099) (LeftBrace!3049) (ImaginaryLiteralValue!3049 (text!21789 List!16951)) (StringLiteralValue!9147 (value!93953 List!16951)) (EOFValue!3049 (value!93954 List!16951)) (IdentValue!3049 (value!93955 List!16951)) (DelimiterValue!6099 (value!93956 List!16951)) (DedentValue!3049 (value!93957 List!16951)) (NewLineValue!3049 (value!93958 List!16951)) (IntegerValue!9147 (value!93959 (_ BitVec 32)) (text!21790 List!16951)) (IntegerValue!9148 (value!93960 Int) (text!21791 List!16951)) (Times!3049) (Or!3049) (Equal!3049) (Minus!3049) (Broken!15249 (value!93961 List!16951)) (And!3049) (Div!3049) (LessEqual!3049) (Mod!3049) (Concat!7336) (Not!3049) (Plus!3049) (SpaceValue!3049 (value!93962 List!16951)) (IntegerValue!9149 (value!93963 Int) (text!21792 List!16951)) (StringLiteralValue!9148 (text!21793 List!16951)) (FloatLiteralValue!6099 (text!21794 List!16951)) (BytesLiteralValue!3049 (value!93964 List!16951)) (CommentValue!6099 (value!93965 List!16951)) (StringLiteralValue!9149 (value!93966 List!16951)) (ErrorTokenValue!3049 (msg!3110 List!16951)) )
))
(declare-datatypes ((C!8752 0))(
  ( (C!8753 (val!4948 Int)) )
))
(declare-datatypes ((List!16952 0))(
  ( (Nil!16884) (Cons!16884 (h!22285 C!8752) (t!141455 List!16952)) )
))
(declare-datatypes ((IArray!11159 0))(
  ( (IArray!11160 (innerList!5637 List!16952)) )
))
(declare-datatypes ((Conc!5577 0))(
  ( (Node!5577 (left!13711 Conc!5577) (right!14041 Conc!5577) (csize!11384 Int) (cheight!5788 Int)) (Leaf!8266 (xs!8377 IArray!11159) (csize!11385 Int)) (Empty!5577) )
))
(declare-datatypes ((BalanceConc!11096 0))(
  ( (BalanceConc!11097 (c!252992 Conc!5577)) )
))
(declare-datatypes ((Regex!4287 0))(
  ( (ElementMatch!4287 (c!252993 C!8752)) (Concat!7337 (regOne!9086 Regex!4287) (regTwo!9086 Regex!4287)) (EmptyExpr!4287) (Star!4287 (reg!4616 Regex!4287)) (EmptyLang!4287) (Union!4287 (regOne!9087 Regex!4287) (regTwo!9087 Regex!4287)) )
))
(declare-datatypes ((String!19533 0))(
  ( (String!19534 (value!93967 String)) )
))
(declare-datatypes ((TokenValueInjection!5758 0))(
  ( (TokenValueInjection!5759 (toValue!4335 Int) (toChars!4194 Int)) )
))
(declare-datatypes ((Rule!5718 0))(
  ( (Rule!5719 (regex!2959 Regex!4287) (tag!3223 String!19533) (isSeparator!2959 Bool) (transformation!2959 TokenValueInjection!5758)) )
))
(declare-fun rule!240 () Rule!5718)

(declare-fun order!9979 () Int)

(declare-fun lambda!65975 () Int)

(declare-fun dynLambda!7507 (Int Int) Int)

(declare-fun dynLambda!7508 (Int Int) Int)

(assert (=> b!1558632 (< (dynLambda!7507 order!9977 (toValue!4335 (transformation!2959 rule!240))) (dynLambda!7508 order!9979 lambda!65975))))

(declare-fun order!9981 () Int)

(declare-fun dynLambda!7509 (Int Int) Int)

(assert (=> b!1558632 (< (dynLambda!7509 order!9981 (toChars!4194 (transformation!2959 rule!240))) (dynLambda!7508 order!9979 lambda!65975))))

(declare-fun b!1558584 () Bool)

(declare-fun e!1000432 () Bool)

(declare-fun e!1000438 () Bool)

(assert (=> b!1558584 (= e!1000432 e!1000438)))

(declare-fun e!1000447 () Bool)

(declare-fun e!1000461 () Bool)

(assert (=> b!1558585 (= e!1000447 (and e!1000461 tp!457773))))

(declare-fun res!695342 () Bool)

(declare-fun e!1000452 () Bool)

(assert (=> b!1558586 (=> res!695342 e!1000452)))

(declare-fun Forall!616 (Int) Bool)

(assert (=> b!1558586 (= res!695342 (not (Forall!616 lambda!65975)))))

(declare-fun b!1558587 () Bool)

(declare-fun res!695340 () Bool)

(declare-fun e!1000464 () Bool)

(assert (=> b!1558587 (=> (not res!695340) (not e!1000464))))

(declare-datatypes ((List!16953 0))(
  ( (Nil!16885) (Cons!16885 (h!22286 Regex!4287) (t!141456 List!16953)) )
))
(declare-datatypes ((Context!1610 0))(
  ( (Context!1611 (exprs!1305 List!16953)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1832 0))(
  ( (tuple3!1833 (_1!9588 (InoxSet Context!1610)) (_2!9588 Int) (_3!1371 Int)) )
))
(declare-datatypes ((tuple2!16434 0))(
  ( (tuple2!16435 (_1!9589 tuple3!1832) (_2!9589 Int)) )
))
(declare-datatypes ((List!16954 0))(
  ( (Nil!16886) (Cons!16886 (h!22287 tuple2!16434) (t!141457 List!16954)) )
))
(declare-datatypes ((array!6270 0))(
  ( (array!6271 (arr!2792 (Array (_ BitVec 32) List!16954)) (size!13690 (_ BitVec 32))) )
))
(declare-datatypes ((array!6272 0))(
  ( (array!6273 (arr!2793 (Array (_ BitVec 32) (_ BitVec 64))) (size!13691 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3660 0))(
  ( (LongMapFixedSize!3661 (defaultEntry!2190 Int) (mask!5062 (_ BitVec 32)) (extraKeys!2077 (_ BitVec 32)) (zeroValue!2087 List!16954) (minValue!2087 List!16954) (_size!3741 (_ BitVec 32)) (_keys!2124 array!6272) (_values!2109 array!6270) (_vacant!1891 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7205 0))(
  ( (Cell!7206 (v!23743 LongMapFixedSize!3660)) )
))
(declare-datatypes ((Hashable!1774 0))(
  ( (HashableExt!1773 (__x!11304 Int)) )
))
(declare-datatypes ((MutLongMap!1830 0))(
  ( (LongMap!1830 (underlying!3869 Cell!7205)) (MutLongMapExt!1829 (__x!11305 Int)) )
))
(declare-datatypes ((Cell!7207 0))(
  ( (Cell!7208 (v!23744 MutLongMap!1830)) )
))
(declare-datatypes ((MutableMap!1774 0))(
  ( (MutableMapExt!1773 (__x!11306 Int)) (HashMap!1774 (underlying!3870 Cell!7207) (hashF!3693 Hashable!1774) (_size!3742 (_ BitVec 32)) (defaultValue!1934 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!510 0))(
  ( (CacheFurthestNullable!511 (cache!2155 MutableMap!1774) (totalInput!2484 BalanceConc!11096)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!510)

(declare-fun totalInput!568 () BalanceConc!11096)

(assert (=> b!1558587 (= res!695340 (= (totalInput!2484 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1558588 () Bool)

(declare-fun e!1000456 () Bool)

(declare-fun tp!457768 () Bool)

(declare-fun mapRes!8516 () Bool)

(assert (=> b!1558588 (= e!1000456 (and tp!457768 mapRes!8516))))

(declare-fun condMapEmpty!8516 () Bool)

(declare-datatypes ((tuple3!1834 0))(
  ( (tuple3!1835 (_1!9590 Regex!4287) (_2!9590 Context!1610) (_3!1372 C!8752)) )
))
(declare-datatypes ((tuple2!16436 0))(
  ( (tuple2!16437 (_1!9591 tuple3!1834) (_2!9591 (InoxSet Context!1610))) )
))
(declare-datatypes ((List!16955 0))(
  ( (Nil!16887) (Cons!16887 (h!22288 tuple2!16436) (t!141458 List!16955)) )
))
(declare-datatypes ((array!6274 0))(
  ( (array!6275 (arr!2794 (Array (_ BitVec 32) List!16955)) (size!13692 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3662 0))(
  ( (LongMapFixedSize!3663 (defaultEntry!2191 Int) (mask!5063 (_ BitVec 32)) (extraKeys!2078 (_ BitVec 32)) (zeroValue!2088 List!16955) (minValue!2088 List!16955) (_size!3743 (_ BitVec 32)) (_keys!2125 array!6272) (_values!2110 array!6274) (_vacant!1892 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7209 0))(
  ( (Cell!7210 (v!23745 LongMapFixedSize!3662)) )
))
(declare-datatypes ((MutLongMap!1831 0))(
  ( (LongMap!1831 (underlying!3871 Cell!7209)) (MutLongMapExt!1830 (__x!11307 Int)) )
))
(declare-datatypes ((Cell!7211 0))(
  ( (Cell!7212 (v!23746 MutLongMap!1831)) )
))
(declare-datatypes ((Hashable!1775 0))(
  ( (HashableExt!1774 (__x!11308 Int)) )
))
(declare-datatypes ((MutableMap!1775 0))(
  ( (MutableMapExt!1774 (__x!11309 Int)) (HashMap!1775 (underlying!3872 Cell!7211) (hashF!3694 Hashable!1775) (_size!3744 (_ BitVec 32)) (defaultValue!1935 Int)) )
))
(declare-datatypes ((CacheDown!1086 0))(
  ( (CacheDown!1087 (cache!2156 MutableMap!1775)) )
))
(declare-fun cacheDown!768 () CacheDown!1086)

(declare-fun mapDefault!8515 () List!16955)

(assert (=> b!1558588 (= condMapEmpty!8516 (= (arr!2794 (_values!2110 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16955)) mapDefault!8515)))))

(declare-fun mapIsEmpty!8514 () Bool)

(declare-fun mapRes!8514 () Bool)

(assert (=> mapIsEmpty!8514 mapRes!8514))

(declare-fun b!1558589 () Bool)

(declare-fun res!695333 () Bool)

(declare-fun e!1000446 () Bool)

(assert (=> b!1558589 (=> (not res!695333) (not e!1000446))))

(declare-datatypes ((LexerInterface!2593 0))(
  ( (LexerInterfaceExt!2590 (__x!11310 Int)) (Lexer!2591) )
))
(declare-fun thiss!16438 () LexerInterface!2593)

(declare-fun ruleValid!691 (LexerInterface!2593 Rule!5718) Bool)

(assert (=> b!1558589 (= res!695333 (ruleValid!691 thiss!16438 rule!240))))

(declare-fun e!1000443 () Bool)

(declare-fun e!1000458 () Bool)

(assert (=> b!1558583 (= e!1000443 (and e!1000458 tp!457787))))

(declare-fun res!695347 () Bool)

(assert (=> start!144596 (=> (not res!695347) (not e!1000446))))

(get-info :version)

(assert (=> start!144596 (= res!695347 ((_ is Lexer!2591) thiss!16438))))

(assert (=> start!144596 e!1000446))

(declare-fun e!1000463 () Bool)

(declare-fun inv!22175 (BalanceConc!11096) Bool)

(assert (=> start!144596 (and (inv!22175 totalInput!568) e!1000463)))

(declare-datatypes ((tuple2!16438 0))(
  ( (tuple2!16439 (_1!9592 Context!1610) (_2!9592 C!8752)) )
))
(declare-datatypes ((tuple2!16440 0))(
  ( (tuple2!16441 (_1!9593 tuple2!16438) (_2!9593 (InoxSet Context!1610))) )
))
(declare-datatypes ((List!16956 0))(
  ( (Nil!16888) (Cons!16888 (h!22289 tuple2!16440) (t!141459 List!16956)) )
))
(declare-datatypes ((array!6276 0))(
  ( (array!6277 (arr!2795 (Array (_ BitVec 32) List!16956)) (size!13693 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1776 0))(
  ( (HashableExt!1775 (__x!11311 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3664 0))(
  ( (LongMapFixedSize!3665 (defaultEntry!2192 Int) (mask!5064 (_ BitVec 32)) (extraKeys!2079 (_ BitVec 32)) (zeroValue!2089 List!16956) (minValue!2089 List!16956) (_size!3745 (_ BitVec 32)) (_keys!2126 array!6272) (_values!2111 array!6276) (_vacant!1893 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7213 0))(
  ( (Cell!7214 (v!23747 LongMapFixedSize!3664)) )
))
(declare-datatypes ((MutLongMap!1832 0))(
  ( (LongMap!1832 (underlying!3873 Cell!7213)) (MutLongMapExt!1831 (__x!11312 Int)) )
))
(declare-datatypes ((Cell!7215 0))(
  ( (Cell!7216 (v!23748 MutLongMap!1832)) )
))
(declare-datatypes ((MutableMap!1776 0))(
  ( (MutableMapExt!1775 (__x!11313 Int)) (HashMap!1776 (underlying!3874 Cell!7215) (hashF!3695 Hashable!1776) (_size!3746 (_ BitVec 32)) (defaultValue!1936 Int)) )
))
(declare-datatypes ((CacheUp!1080 0))(
  ( (CacheUp!1081 (cache!2157 MutableMap!1776)) )
))
(declare-fun cacheUp!755 () CacheUp!1080)

(declare-fun inv!22176 (CacheUp!1080) Bool)

(assert (=> start!144596 (and (inv!22176 cacheUp!755) e!1000432)))

(declare-fun e!1000457 () Bool)

(declare-fun inv!22177 (CacheFurthestNullable!510) Bool)

(assert (=> start!144596 (and (inv!22177 cacheFurthestNullable!103) e!1000457)))

(declare-fun input!1676 () BalanceConc!11096)

(declare-fun e!1000436 () Bool)

(assert (=> start!144596 (and (inv!22175 input!1676) e!1000436)))

(declare-fun e!1000462 () Bool)

(assert (=> start!144596 e!1000462))

(declare-fun e!1000453 () Bool)

(declare-fun inv!22178 (CacheDown!1086) Bool)

(assert (=> start!144596 (and (inv!22178 cacheDown!768) e!1000453)))

(assert (=> start!144596 true))

(declare-fun b!1558590 () Bool)

(declare-fun e!1000450 () Bool)

(declare-fun lt!539843 () MutLongMap!1831)

(assert (=> b!1558590 (= e!1000461 (and e!1000450 ((_ is LongMap!1831) lt!539843)))))

(assert (=> b!1558590 (= lt!539843 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))

(declare-fun b!1558591 () Bool)

(declare-fun e!1000455 () Bool)

(declare-fun e!1000445 () Bool)

(declare-fun lt!539854 () MutLongMap!1832)

(assert (=> b!1558591 (= e!1000455 (and e!1000445 ((_ is LongMap!1832) lt!539854)))))

(assert (=> b!1558591 (= lt!539854 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))

(declare-fun b!1558592 () Bool)

(declare-fun res!695338 () Bool)

(assert (=> b!1558592 (=> (not res!695338) (not e!1000446))))

(declare-fun valid!1469 (CacheDown!1086) Bool)

(assert (=> b!1558592 (= res!695338 (valid!1469 cacheDown!768))))

(declare-fun b!1558593 () Bool)

(declare-fun res!695334 () Bool)

(assert (=> b!1558593 (=> (not res!695334) (not e!1000446))))

(declare-fun valid!1470 (CacheFurthestNullable!510) Bool)

(assert (=> b!1558593 (= res!695334 (valid!1470 cacheFurthestNullable!103))))

(declare-fun b!1558594 () Bool)

(declare-fun e!1000431 () Bool)

(declare-fun tp!457774 () Bool)

(declare-fun mapRes!8515 () Bool)

(assert (=> b!1558594 (= e!1000431 (and tp!457774 mapRes!8515))))

(declare-fun condMapEmpty!8514 () Bool)

(declare-fun mapDefault!8516 () List!16956)

(assert (=> b!1558594 (= condMapEmpty!8514 (= (arr!2795 (_values!2111 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16956)) mapDefault!8516)))))

(declare-fun b!1558595 () Bool)

(declare-fun e!1000459 () Bool)

(declare-fun e!1000435 () Bool)

(assert (=> b!1558595 (= e!1000459 e!1000435)))

(declare-fun b!1558596 () Bool)

(declare-fun e!1000442 () Bool)

(declare-fun e!1000448 () Bool)

(assert (=> b!1558596 (= e!1000442 e!1000448)))

(declare-fun res!695339 () Bool)

(assert (=> b!1558596 (=> res!695339 e!1000448)))

(declare-fun lt!539853 () BalanceConc!11096)

(declare-fun lt!539842 () TokenValue!3049)

(declare-fun apply!4117 (TokenValueInjection!5758 BalanceConc!11096) TokenValue!3049)

(assert (=> b!1558596 (= res!695339 (not (= (apply!4117 (transformation!2959 rule!240) lt!539853) lt!539842)))))

(declare-datatypes ((tuple2!16442 0))(
  ( (tuple2!16443 (_1!9594 BalanceConc!11096) (_2!9594 BalanceConc!11096)) )
))
(declare-datatypes ((tuple4!910 0))(
  ( (tuple4!911 (_1!9595 tuple2!16442) (_2!9595 CacheUp!1080) (_3!1373 CacheDown!1086) (_4!455 CacheFurthestNullable!510)) )
))
(declare-fun lt!539844 () tuple4!910)

(declare-datatypes ((Unit!26114 0))(
  ( (Unit!26115) )
))
(declare-fun lt!539850 () Unit!26114)

(declare-fun lemmaEqSameImage!155 (TokenValueInjection!5758 BalanceConc!11096 BalanceConc!11096) Unit!26114)

(assert (=> b!1558596 (= lt!539850 (lemmaEqSameImage!155 (transformation!2959 rule!240) (_1!9594 (_1!9595 lt!539844)) lt!539853))))

(declare-fun b!1558597 () Bool)

(declare-fun e!1000460 () Bool)

(declare-datatypes ((tuple2!16444 0))(
  ( (tuple2!16445 (_1!9596 List!16952) (_2!9596 List!16952)) )
))
(declare-fun lt!539841 () tuple2!16444)

(declare-fun matchR!1885 (Regex!4287 List!16952) Bool)

(assert (=> b!1558597 (= e!1000460 (matchR!1885 (regex!2959 rule!240) (_1!9596 lt!539841)))))

(declare-fun b!1558598 () Bool)

(declare-fun e!1000429 () Bool)

(declare-fun tp!457777 () Bool)

(declare-fun inv!22179 (Conc!5577) Bool)

(assert (=> b!1558598 (= e!1000429 (and (inv!22179 (c!252992 (totalInput!2484 cacheFurthestNullable!103))) tp!457777))))

(declare-fun mapNonEmpty!8514 () Bool)

(declare-fun tp!457770 () Bool)

(declare-fun tp!457776 () Bool)

(assert (=> mapNonEmpty!8514 (= mapRes!8516 (and tp!457770 tp!457776))))

(declare-fun mapRest!8515 () (Array (_ BitVec 32) List!16955))

(declare-fun mapKey!8516 () (_ BitVec 32))

(declare-fun mapValue!8515 () List!16955)

(assert (=> mapNonEmpty!8514 (= (arr!2794 (_values!2110 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) (store mapRest!8515 mapKey!8516 mapValue!8515))))

(declare-fun b!1558599 () Bool)

(assert (=> b!1558599 (= e!1000452 e!1000442)))

(declare-fun res!695335 () Bool)

(assert (=> b!1558599 (=> res!695335 e!1000442)))

(declare-fun lt!539855 () Bool)

(declare-datatypes ((Token!5494 0))(
  ( (Token!5495 (value!93968 TokenValue!3049) (rule!4745 Rule!5718) (size!13694 Int) (originalCharacters!3778 List!16952)) )
))
(declare-datatypes ((tuple2!16446 0))(
  ( (tuple2!16447 (_1!9597 Token!5494) (_2!9597 List!16952)) )
))
(declare-datatypes ((Option!3053 0))(
  ( (None!3052) (Some!3052 (v!23749 tuple2!16446)) )
))
(declare-fun lt!539856 () Option!3053)

(declare-fun isDefined!2453 (Option!3053) Bool)

(assert (=> b!1558599 (= res!695335 (not (= lt!539855 (isDefined!2453 lt!539856))))))

(declare-datatypes ((tuple2!16448 0))(
  ( (tuple2!16449 (_1!9598 Token!5494) (_2!9598 BalanceConc!11096)) )
))
(declare-datatypes ((Option!3054 0))(
  ( (None!3053) (Some!3053 (v!23750 tuple2!16448)) )
))
(declare-fun lt!539847 () Option!3054)

(declare-fun isDefined!2454 (Option!3054) Bool)

(assert (=> b!1558599 (= lt!539855 (isDefined!2454 lt!539847))))

(declare-fun lt!539857 () List!16952)

(declare-fun maxPrefixOneRule!710 (LexerInterface!2593 Rule!5718 List!16952) Option!3053)

(assert (=> b!1558599 (= lt!539856 (maxPrefixOneRule!710 thiss!16438 rule!240 lt!539857))))

(declare-fun lt!539846 () Token!5494)

(assert (=> b!1558599 (= lt!539847 (Some!3053 (tuple2!16449 lt!539846 (_2!9594 (_1!9595 lt!539844)))))))

(declare-fun lt!539852 () List!16952)

(declare-fun lt!539859 () Int)

(assert (=> b!1558599 (= lt!539846 (Token!5495 lt!539842 rule!240 lt!539859 lt!539852))))

(declare-fun size!13695 (BalanceConc!11096) Int)

(assert (=> b!1558599 (= lt!539859 (size!13695 (_1!9594 (_1!9595 lt!539844))))))

(assert (=> b!1558599 (= lt!539842 (apply!4117 (transformation!2959 rule!240) (_1!9594 (_1!9595 lt!539844))))))

(declare-fun lt!539858 () Unit!26114)

(declare-fun ForallOf!218 (Int BalanceConc!11096) Unit!26114)

(assert (=> b!1558599 (= lt!539858 (ForallOf!218 lambda!65975 lt!539853))))

(declare-fun seqFromList!1781 (List!16952) BalanceConc!11096)

(assert (=> b!1558599 (= lt!539853 (seqFromList!1781 lt!539852))))

(declare-fun list!6506 (BalanceConc!11096) List!16952)

(assert (=> b!1558599 (= lt!539852 (list!6506 (_1!9594 (_1!9595 lt!539844))))))

(declare-fun lt!539848 () Unit!26114)

(assert (=> b!1558599 (= lt!539848 (ForallOf!218 lambda!65975 (_1!9594 (_1!9595 lt!539844))))))

(declare-fun mapNonEmpty!8515 () Bool)

(declare-fun tp!457765 () Bool)

(declare-fun tp!457764 () Bool)

(assert (=> mapNonEmpty!8515 (= mapRes!8514 (and tp!457765 tp!457764))))

(declare-fun mapValue!8516 () List!16954)

(declare-fun mapRest!8514 () (Array (_ BitVec 32) List!16954))

(declare-fun mapKey!8515 () (_ BitVec 32))

(assert (=> mapNonEmpty!8515 (= (arr!2792 (_values!2109 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) (store mapRest!8514 mapKey!8515 mapValue!8516))))

(declare-fun b!1558600 () Bool)

(declare-fun e!1000454 () Bool)

(declare-fun tp!457763 () Bool)

(assert (=> b!1558600 (= e!1000454 (and tp!457763 mapRes!8514))))

(declare-fun condMapEmpty!8515 () Bool)

(declare-fun mapDefault!8514 () List!16954)

(assert (=> b!1558600 (= condMapEmpty!8515 (= (arr!2792 (_values!2109 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16954)) mapDefault!8514)))))

(declare-fun b!1558601 () Bool)

(declare-fun e!1000451 () Bool)

(declare-fun e!1000439 () Bool)

(assert (=> b!1558601 (= e!1000451 e!1000439)))

(declare-fun b!1558602 () Bool)

(assert (=> b!1558602 (= e!1000457 (and e!1000443 (inv!22175 (totalInput!2484 cacheFurthestNullable!103)) e!1000429))))

(declare-fun b!1558603 () Bool)

(declare-fun e!1000440 () Bool)

(assert (=> b!1558603 (= e!1000448 e!1000440)))

(declare-fun res!695348 () Bool)

(assert (=> b!1558603 (=> res!695348 e!1000440)))

(declare-fun lt!539849 () tuple2!16446)

(assert (=> b!1558603 (= res!695348 (or (not (= (value!93968 (_1!9597 lt!539849)) lt!539842)) (not (= (rule!4745 (_1!9597 lt!539849)) rule!240)) (not (= (size!13694 (_1!9597 lt!539849)) lt!539859)) (not (= (originalCharacters!3778 (_1!9597 lt!539849)) lt!539852)) (not (= lt!539846 (_1!9597 lt!539849)))))))

(declare-fun get!4863 (Option!3053) tuple2!16446)

(assert (=> b!1558603 (= lt!539849 (get!4863 lt!539856))))

(declare-fun mapIsEmpty!8515 () Bool)

(assert (=> mapIsEmpty!8515 mapRes!8515))

(declare-fun b!1558604 () Bool)

(declare-fun e!1000441 () Bool)

(declare-fun e!1000465 () Bool)

(assert (=> b!1558604 (= e!1000441 e!1000465)))

(declare-fun b!1558605 () Bool)

(declare-fun res!695345 () Bool)

(assert (=> b!1558605 (=> (not res!695345) (not e!1000446))))

(declare-fun valid!1471 (CacheUp!1080) Bool)

(assert (=> b!1558605 (= res!695345 (valid!1471 cacheUp!755))))

(declare-fun b!1558606 () Bool)

(declare-fun res!695346 () Bool)

(assert (=> b!1558606 (=> res!695346 e!1000442)))

(assert (=> b!1558606 (= res!695346 (not lt!539855))))

(declare-fun mapIsEmpty!8516 () Bool)

(assert (=> mapIsEmpty!8516 mapRes!8516))

(declare-fun b!1558607 () Bool)

(assert (=> b!1558607 (= e!1000446 e!1000464)))

(declare-fun res!695336 () Bool)

(assert (=> b!1558607 (=> (not res!695336) (not e!1000464))))

(declare-fun isSuffix!382 (List!16952 List!16952) Bool)

(assert (=> b!1558607 (= res!695336 (isSuffix!382 lt!539857 (list!6506 totalInput!568)))))

(assert (=> b!1558607 (= lt!539857 (list!6506 input!1676))))

(declare-fun b!1558608 () Bool)

(declare-fun e!1000444 () Bool)

(assert (=> b!1558608 (= e!1000444 e!1000441)))

(declare-fun b!1558609 () Bool)

(declare-fun e!1000466 () Bool)

(assert (=> b!1558609 (= e!1000466 (not e!1000452))))

(declare-fun res!695341 () Bool)

(assert (=> b!1558609 (=> res!695341 e!1000452)))

(declare-fun semiInverseModEq!1120 (Int Int) Bool)

(assert (=> b!1558609 (= res!695341 (not (semiInverseModEq!1120 (toChars!4194 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240)))))))

(declare-fun lt!539860 () Unit!26114)

(declare-fun lemmaInv!434 (TokenValueInjection!5758) Unit!26114)

(assert (=> b!1558609 (= lt!539860 (lemmaInv!434 (transformation!2959 rule!240)))))

(assert (=> b!1558609 e!1000460))

(declare-fun res!695337 () Bool)

(assert (=> b!1558609 (=> res!695337 e!1000460)))

(declare-fun isEmpty!10143 (List!16952) Bool)

(assert (=> b!1558609 (= res!695337 (isEmpty!10143 (_1!9596 lt!539841)))))

(declare-fun findLongestMatchInner!340 (Regex!4287 List!16952 Int List!16952 List!16952 Int) tuple2!16444)

(declare-fun size!13696 (List!16952) Int)

(assert (=> b!1558609 (= lt!539841 (findLongestMatchInner!340 (regex!2959 rule!240) Nil!16884 (size!13696 Nil!16884) lt!539857 lt!539857 (size!13696 lt!539857)))))

(declare-fun lt!539851 () Unit!26114)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!324 (Regex!4287 List!16952) Unit!26114)

(assert (=> b!1558609 (= lt!539851 (longestMatchIsAcceptedByMatchOrIsEmpty!324 (regex!2959 rule!240) lt!539857))))

(assert (=> b!1558610 (= e!1000438 (and e!1000455 tp!457779))))

(declare-fun b!1558611 () Bool)

(declare-fun get!4864 (Option!3054) tuple2!16448)

(assert (=> b!1558611 (= e!1000440 (= (_1!9598 (get!4864 lt!539847)) (_1!9597 lt!539849)))))

(declare-fun e!1000437 () Bool)

(declare-fun tp!457767 () Bool)

(declare-fun b!1558612 () Bool)

(declare-fun inv!22170 (String!19533) Bool)

(declare-fun inv!22180 (TokenValueInjection!5758) Bool)

(assert (=> b!1558612 (= e!1000462 (and tp!457767 (inv!22170 (tag!3223 rule!240)) (inv!22180 (transformation!2959 rule!240)) e!1000437))))

(declare-fun b!1558613 () Bool)

(declare-fun res!695343 () Bool)

(assert (=> b!1558613 (=> res!695343 e!1000442)))

(assert (=> b!1558613 (= res!695343 (not (= (list!6506 lt!539853) lt!539852)))))

(declare-fun b!1558614 () Bool)

(assert (=> b!1558614 (= e!1000450 e!1000459)))

(declare-fun tp!457786 () Bool)

(declare-fun tp!457772 () Bool)

(declare-fun array_inv!2010 (array!6272) Bool)

(declare-fun array_inv!2011 (array!6270) Bool)

(assert (=> b!1558615 (= e!1000465 (and tp!457778 tp!457772 tp!457786 (array_inv!2010 (_keys!2124 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) (array_inv!2011 (_values!2109 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) e!1000454))))

(declare-fun b!1558616 () Bool)

(assert (=> b!1558616 (= e!1000464 e!1000466)))

(declare-fun res!695344 () Bool)

(assert (=> b!1558616 (=> (not res!695344) (not e!1000466))))

(declare-fun isEmpty!10144 (BalanceConc!11096) Bool)

(assert (=> b!1558616 (= res!695344 (not (isEmpty!10144 (_1!9594 (_1!9595 lt!539844)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!57 (Regex!4287 BalanceConc!11096 BalanceConc!11096 CacheUp!1080 CacheDown!1086 CacheFurthestNullable!510) tuple4!910)

(assert (=> b!1558616 (= lt!539844 (findLongestMatchWithZipperSequenceV3Mem!57 (regex!2959 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1558617 () Bool)

(declare-fun tp!457769 () Bool)

(assert (=> b!1558617 (= e!1000436 (and (inv!22179 (c!252992 input!1676)) tp!457769))))

(declare-fun tp!457780 () Bool)

(declare-fun tp!457784 () Bool)

(declare-fun array_inv!2012 (array!6276) Bool)

(assert (=> b!1558618 (= e!1000439 (and tp!457775 tp!457784 tp!457780 (array_inv!2010 (_keys!2126 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) (array_inv!2012 (_values!2111 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) e!1000431))))

(declare-fun b!1558619 () Bool)

(declare-fun lt!539845 () MutLongMap!1830)

(assert (=> b!1558619 (= e!1000458 (and e!1000444 ((_ is LongMap!1830) lt!539845)))))

(assert (=> b!1558619 (= lt!539845 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))

(assert (=> b!1558620 (= e!1000437 (and tp!457783 tp!457766))))

(declare-fun b!1558621 () Bool)

(declare-fun tp!457761 () Bool)

(assert (=> b!1558621 (= e!1000463 (and (inv!22179 (c!252992 totalInput!568)) tp!457761))))

(declare-fun tp!457781 () Bool)

(declare-fun tp!457771 () Bool)

(declare-fun array_inv!2013 (array!6274) Bool)

(assert (=> b!1558622 (= e!1000435 (and tp!457762 tp!457771 tp!457781 (array_inv!2010 (_keys!2125 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) (array_inv!2013 (_values!2110 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) e!1000456))))

(declare-fun mapNonEmpty!8516 () Bool)

(declare-fun tp!457782 () Bool)

(declare-fun tp!457785 () Bool)

(assert (=> mapNonEmpty!8516 (= mapRes!8515 (and tp!457782 tp!457785))))

(declare-fun mapRest!8516 () (Array (_ BitVec 32) List!16956))

(declare-fun mapKey!8514 () (_ BitVec 32))

(declare-fun mapValue!8514 () List!16956)

(assert (=> mapNonEmpty!8516 (= (arr!2795 (_values!2111 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) (store mapRest!8516 mapKey!8514 mapValue!8514))))

(declare-fun b!1558623 () Bool)

(assert (=> b!1558623 (= e!1000453 e!1000447)))

(declare-fun b!1558624 () Bool)

(assert (=> b!1558624 (= e!1000445 e!1000451)))

(assert (= (and start!144596 res!695347) b!1558589))

(assert (= (and b!1558589 res!695333) b!1558605))

(assert (= (and b!1558605 res!695345) b!1558592))

(assert (= (and b!1558592 res!695338) b!1558593))

(assert (= (and b!1558593 res!695334) b!1558607))

(assert (= (and b!1558607 res!695336) b!1558587))

(assert (= (and b!1558587 res!695340) b!1558616))

(assert (= (and b!1558616 res!695344) b!1558609))

(assert (= (and b!1558609 (not res!695337)) b!1558597))

(assert (= (and b!1558609 (not res!695341)) b!1558586))

(assert (= (and b!1558586 (not res!695342)) b!1558599))

(assert (= (and b!1558599 (not res!695335)) b!1558606))

(assert (= (and b!1558606 (not res!695346)) b!1558613))

(assert (= (and b!1558613 (not res!695343)) b!1558596))

(assert (= (and b!1558596 (not res!695339)) b!1558603))

(assert (= (and b!1558603 (not res!695348)) b!1558611))

(assert (= start!144596 b!1558621))

(assert (= (and b!1558594 condMapEmpty!8514) mapIsEmpty!8515))

(assert (= (and b!1558594 (not condMapEmpty!8514)) mapNonEmpty!8516))

(assert (= b!1558618 b!1558594))

(assert (= b!1558601 b!1558618))

(assert (= b!1558624 b!1558601))

(assert (= (and b!1558591 ((_ is LongMap!1832) (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))) b!1558624))

(assert (= b!1558610 b!1558591))

(assert (= (and b!1558584 ((_ is HashMap!1776) (cache!2157 cacheUp!755))) b!1558610))

(assert (= start!144596 b!1558584))

(assert (= (and b!1558600 condMapEmpty!8515) mapIsEmpty!8514))

(assert (= (and b!1558600 (not condMapEmpty!8515)) mapNonEmpty!8515))

(assert (= b!1558615 b!1558600))

(assert (= b!1558604 b!1558615))

(assert (= b!1558608 b!1558604))

(assert (= (and b!1558619 ((_ is LongMap!1830) (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))) b!1558608))

(assert (= b!1558583 b!1558619))

(assert (= (and b!1558602 ((_ is HashMap!1774) (cache!2155 cacheFurthestNullable!103))) b!1558583))

(assert (= b!1558602 b!1558598))

(assert (= start!144596 b!1558602))

(assert (= start!144596 b!1558617))

(assert (= b!1558612 b!1558620))

(assert (= start!144596 b!1558612))

(assert (= (and b!1558588 condMapEmpty!8516) mapIsEmpty!8516))

(assert (= (and b!1558588 (not condMapEmpty!8516)) mapNonEmpty!8514))

(assert (= b!1558622 b!1558588))

(assert (= b!1558595 b!1558622))

(assert (= b!1558614 b!1558595))

(assert (= (and b!1558590 ((_ is LongMap!1831) (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))) b!1558614))

(assert (= b!1558585 b!1558590))

(assert (= (and b!1558623 ((_ is HashMap!1775) (cache!2156 cacheDown!768))) b!1558585))

(assert (= start!144596 b!1558623))

(declare-fun m!1830554 () Bool)

(assert (=> mapNonEmpty!8514 m!1830554))

(declare-fun m!1830556 () Bool)

(assert (=> b!1558602 m!1830556))

(declare-fun m!1830558 () Bool)

(assert (=> b!1558607 m!1830558))

(assert (=> b!1558607 m!1830558))

(declare-fun m!1830560 () Bool)

(assert (=> b!1558607 m!1830560))

(declare-fun m!1830562 () Bool)

(assert (=> b!1558607 m!1830562))

(declare-fun m!1830564 () Bool)

(assert (=> b!1558593 m!1830564))

(declare-fun m!1830566 () Bool)

(assert (=> b!1558621 m!1830566))

(declare-fun m!1830568 () Bool)

(assert (=> b!1558609 m!1830568))

(declare-fun m!1830570 () Bool)

(assert (=> b!1558609 m!1830570))

(declare-fun m!1830572 () Bool)

(assert (=> b!1558609 m!1830572))

(declare-fun m!1830574 () Bool)

(assert (=> b!1558609 m!1830574))

(declare-fun m!1830576 () Bool)

(assert (=> b!1558609 m!1830576))

(declare-fun m!1830578 () Bool)

(assert (=> b!1558609 m!1830578))

(assert (=> b!1558609 m!1830578))

(assert (=> b!1558609 m!1830568))

(declare-fun m!1830580 () Bool)

(assert (=> b!1558609 m!1830580))

(declare-fun m!1830582 () Bool)

(assert (=> b!1558616 m!1830582))

(declare-fun m!1830584 () Bool)

(assert (=> b!1558616 m!1830584))

(declare-fun m!1830586 () Bool)

(assert (=> b!1558622 m!1830586))

(declare-fun m!1830588 () Bool)

(assert (=> b!1558622 m!1830588))

(declare-fun m!1830590 () Bool)

(assert (=> start!144596 m!1830590))

(declare-fun m!1830592 () Bool)

(assert (=> start!144596 m!1830592))

(declare-fun m!1830594 () Bool)

(assert (=> start!144596 m!1830594))

(declare-fun m!1830596 () Bool)

(assert (=> start!144596 m!1830596))

(declare-fun m!1830598 () Bool)

(assert (=> start!144596 m!1830598))

(declare-fun m!1830600 () Bool)

(assert (=> b!1558618 m!1830600))

(declare-fun m!1830602 () Bool)

(assert (=> b!1558618 m!1830602))

(declare-fun m!1830604 () Bool)

(assert (=> b!1558596 m!1830604))

(declare-fun m!1830606 () Bool)

(assert (=> b!1558596 m!1830606))

(declare-fun m!1830608 () Bool)

(assert (=> mapNonEmpty!8516 m!1830608))

(declare-fun m!1830610 () Bool)

(assert (=> b!1558599 m!1830610))

(declare-fun m!1830612 () Bool)

(assert (=> b!1558599 m!1830612))

(declare-fun m!1830614 () Bool)

(assert (=> b!1558599 m!1830614))

(declare-fun m!1830616 () Bool)

(assert (=> b!1558599 m!1830616))

(declare-fun m!1830618 () Bool)

(assert (=> b!1558599 m!1830618))

(declare-fun m!1830620 () Bool)

(assert (=> b!1558599 m!1830620))

(declare-fun m!1830622 () Bool)

(assert (=> b!1558599 m!1830622))

(declare-fun m!1830624 () Bool)

(assert (=> b!1558599 m!1830624))

(declare-fun m!1830626 () Bool)

(assert (=> b!1558599 m!1830626))

(declare-fun m!1830628 () Bool)

(assert (=> b!1558597 m!1830628))

(declare-fun m!1830630 () Bool)

(assert (=> b!1558592 m!1830630))

(declare-fun m!1830632 () Bool)

(assert (=> b!1558586 m!1830632))

(declare-fun m!1830634 () Bool)

(assert (=> b!1558589 m!1830634))

(declare-fun m!1830636 () Bool)

(assert (=> b!1558615 m!1830636))

(declare-fun m!1830638 () Bool)

(assert (=> b!1558615 m!1830638))

(declare-fun m!1830640 () Bool)

(assert (=> b!1558611 m!1830640))

(declare-fun m!1830642 () Bool)

(assert (=> b!1558603 m!1830642))

(declare-fun m!1830644 () Bool)

(assert (=> b!1558613 m!1830644))

(declare-fun m!1830646 () Bool)

(assert (=> b!1558605 m!1830646))

(declare-fun m!1830648 () Bool)

(assert (=> b!1558617 m!1830648))

(declare-fun m!1830650 () Bool)

(assert (=> mapNonEmpty!8515 m!1830650))

(declare-fun m!1830652 () Bool)

(assert (=> b!1558612 m!1830652))

(declare-fun m!1830654 () Bool)

(assert (=> b!1558612 m!1830654))

(declare-fun m!1830656 () Bool)

(assert (=> b!1558598 m!1830656))

(check-sat (not b_next!42261) b_and!108779 (not b_next!42255) (not b!1558622) (not mapNonEmpty!8516) (not b!1558596) (not b!1558586) (not b!1558603) (not b!1558607) (not b_next!42247) (not b!1558600) (not b!1558593) (not b!1558613) (not b!1558598) (not b!1558609) (not mapNonEmpty!8514) (not b!1558617) (not b!1558618) (not b!1558597) (not b!1558594) b_and!108775 (not b!1558611) (not b_next!42251) (not b!1558612) (not b!1558605) (not b!1558616) (not b_next!42253) b_and!108781 b_and!108783 b_and!108773 b_and!108785 (not b!1558589) (not mapNonEmpty!8515) (not b!1558621) (not b_next!42259) (not b!1558592) (not b!1558599) (not b!1558588) (not b_next!42249) (not start!144596) b_and!108787 (not b!1558602) (not b_next!42257) b_and!108777 (not b!1558615))
(check-sat (not b_next!42261) b_and!108779 b_and!108775 (not b_next!42255) (not b_next!42251) (not b_next!42253) (not b_next!42259) (not b_next!42249) b_and!108787 (not b_next!42247) b_and!108781 b_and!108783 b_and!108773 b_and!108785 (not b_next!42257) b_and!108777)
(get-model)

(declare-fun d!461927 () Bool)

(assert (=> d!461927 (= (array_inv!2010 (_keys!2125 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) (bvsge (size!13691 (_keys!2125 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1558622 d!461927))

(declare-fun d!461929 () Bool)

(assert (=> d!461929 (= (array_inv!2013 (_values!2110 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) (bvsge (size!13692 (_values!2110 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1558622 d!461929))

(declare-fun d!461931 () Bool)

(declare-fun isBalanced!1648 (Conc!5577) Bool)

(assert (=> d!461931 (= (inv!22175 (totalInput!2484 cacheFurthestNullable!103)) (isBalanced!1648 (c!252992 (totalInput!2484 cacheFurthestNullable!103))))))

(declare-fun bs!388801 () Bool)

(assert (= bs!388801 d!461931))

(declare-fun m!1830658 () Bool)

(assert (=> bs!388801 m!1830658))

(assert (=> b!1558602 d!461931))

(declare-fun d!461933 () Bool)

(declare-fun c!252996 () Bool)

(assert (=> d!461933 (= c!252996 ((_ is Node!5577) (c!252992 totalInput!568)))))

(declare-fun e!1000477 () Bool)

(assert (=> d!461933 (= (inv!22179 (c!252992 totalInput!568)) e!1000477)))

(declare-fun b!1558639 () Bool)

(declare-fun inv!22181 (Conc!5577) Bool)

(assert (=> b!1558639 (= e!1000477 (inv!22181 (c!252992 totalInput!568)))))

(declare-fun b!1558640 () Bool)

(declare-fun e!1000478 () Bool)

(assert (=> b!1558640 (= e!1000477 e!1000478)))

(declare-fun res!695353 () Bool)

(assert (=> b!1558640 (= res!695353 (not ((_ is Leaf!8266) (c!252992 totalInput!568))))))

(assert (=> b!1558640 (=> res!695353 e!1000478)))

(declare-fun b!1558641 () Bool)

(declare-fun inv!22182 (Conc!5577) Bool)

(assert (=> b!1558641 (= e!1000478 (inv!22182 (c!252992 totalInput!568)))))

(assert (= (and d!461933 c!252996) b!1558639))

(assert (= (and d!461933 (not c!252996)) b!1558640))

(assert (= (and b!1558640 (not res!695353)) b!1558641))

(declare-fun m!1830660 () Bool)

(assert (=> b!1558639 m!1830660))

(declare-fun m!1830662 () Bool)

(assert (=> b!1558641 m!1830662))

(assert (=> b!1558621 d!461933))

(declare-fun d!461935 () Bool)

(assert (=> d!461935 (= (get!4863 lt!539856) (v!23749 lt!539856))))

(assert (=> b!1558603 d!461935))

(declare-fun d!461937 () Bool)

(declare-fun choose!9301 (Int) Bool)

(assert (=> d!461937 (= (Forall!616 lambda!65975) (choose!9301 lambda!65975))))

(declare-fun bs!388802 () Bool)

(assert (= bs!388802 d!461937))

(declare-fun m!1830664 () Bool)

(assert (=> bs!388802 m!1830664))

(assert (=> b!1558586 d!461937))

(declare-fun d!461939 () Bool)

(declare-fun validCacheMapUp!166 (MutableMap!1776) Bool)

(assert (=> d!461939 (= (valid!1471 cacheUp!755) (validCacheMapUp!166 (cache!2157 cacheUp!755)))))

(declare-fun bs!388803 () Bool)

(assert (= bs!388803 d!461939))

(declare-fun m!1830666 () Bool)

(assert (=> bs!388803 m!1830666))

(assert (=> b!1558605 d!461939))

(declare-fun d!461941 () Bool)

(declare-fun lt!539863 () Bool)

(assert (=> d!461941 (= lt!539863 (isEmpty!10143 (list!6506 (_1!9594 (_1!9595 lt!539844)))))))

(declare-fun isEmpty!10145 (Conc!5577) Bool)

(assert (=> d!461941 (= lt!539863 (isEmpty!10145 (c!252992 (_1!9594 (_1!9595 lt!539844)))))))

(assert (=> d!461941 (= (isEmpty!10144 (_1!9594 (_1!9595 lt!539844))) lt!539863)))

(declare-fun bs!388804 () Bool)

(assert (= bs!388804 d!461941))

(assert (=> bs!388804 m!1830614))

(assert (=> bs!388804 m!1830614))

(declare-fun m!1830668 () Bool)

(assert (=> bs!388804 m!1830668))

(declare-fun m!1830670 () Bool)

(assert (=> bs!388804 m!1830670))

(assert (=> b!1558616 d!461941))

(declare-fun d!461943 () Bool)

(declare-fun e!1000481 () Bool)

(assert (=> d!461943 e!1000481))

(declare-fun res!695364 () Bool)

(assert (=> d!461943 (=> (not res!695364) (not e!1000481))))

(declare-fun lt!539866 () tuple4!910)

(declare-fun findLongestMatch!266 (Regex!4287 List!16952) tuple2!16444)

(assert (=> d!461943 (= res!695364 (= (tuple2!16445 (list!6506 (_1!9594 (_1!9595 lt!539866))) (list!6506 (_2!9594 (_1!9595 lt!539866)))) (findLongestMatch!266 (regex!2959 rule!240) (list!6506 input!1676))))))

(declare-fun choose!9302 (Regex!4287 BalanceConc!11096 BalanceConc!11096 CacheUp!1080 CacheDown!1086 CacheFurthestNullable!510) tuple4!910)

(assert (=> d!461943 (= lt!539866 (choose!9302 (regex!2959 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun validRegex!1716 (Regex!4287) Bool)

(assert (=> d!461943 (validRegex!1716 (regex!2959 rule!240))))

(assert (=> d!461943 (= (findLongestMatchWithZipperSequenceV3Mem!57 (regex!2959 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!539866)))

(declare-fun b!1558652 () Bool)

(declare-fun res!695365 () Bool)

(assert (=> b!1558652 (=> (not res!695365) (not e!1000481))))

(assert (=> b!1558652 (= res!695365 (valid!1470 (_4!455 lt!539866)))))

(declare-fun b!1558651 () Bool)

(declare-fun res!695362 () Bool)

(assert (=> b!1558651 (=> (not res!695362) (not e!1000481))))

(assert (=> b!1558651 (= res!695362 (valid!1471 (_2!9595 lt!539866)))))

(declare-fun b!1558653 () Bool)

(assert (=> b!1558653 (= e!1000481 (= (totalInput!2484 (_4!455 lt!539866)) totalInput!568))))

(declare-fun b!1558650 () Bool)

(declare-fun res!695363 () Bool)

(assert (=> b!1558650 (=> (not res!695363) (not e!1000481))))

(assert (=> b!1558650 (= res!695363 (valid!1469 (_3!1373 lt!539866)))))

(assert (= (and d!461943 res!695364) b!1558650))

(assert (= (and b!1558650 res!695363) b!1558651))

(assert (= (and b!1558651 res!695362) b!1558652))

(assert (= (and b!1558652 res!695365) b!1558653))

(declare-fun m!1830672 () Bool)

(assert (=> d!461943 m!1830672))

(declare-fun m!1830674 () Bool)

(assert (=> d!461943 m!1830674))

(assert (=> d!461943 m!1830562))

(declare-fun m!1830676 () Bool)

(assert (=> d!461943 m!1830676))

(declare-fun m!1830678 () Bool)

(assert (=> d!461943 m!1830678))

(declare-fun m!1830680 () Bool)

(assert (=> d!461943 m!1830680))

(assert (=> d!461943 m!1830562))

(declare-fun m!1830682 () Bool)

(assert (=> b!1558652 m!1830682))

(declare-fun m!1830684 () Bool)

(assert (=> b!1558651 m!1830684))

(declare-fun m!1830686 () Bool)

(assert (=> b!1558650 m!1830686))

(assert (=> b!1558616 d!461943))

(declare-fun d!461945 () Bool)

(assert (=> d!461945 (= (array_inv!2010 (_keys!2126 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) (bvsge (size!13691 (_keys!2126 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1558618 d!461945))

(declare-fun d!461947 () Bool)

(assert (=> d!461947 (= (array_inv!2012 (_values!2111 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) (bvsge (size!13693 (_values!2111 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1558618 d!461947))

(declare-fun d!461949 () Bool)

(declare-fun fromListB!766 (List!16952) BalanceConc!11096)

(assert (=> d!461949 (= (seqFromList!1781 lt!539852) (fromListB!766 lt!539852))))

(declare-fun bs!388805 () Bool)

(assert (= bs!388805 d!461949))

(declare-fun m!1830688 () Bool)

(assert (=> bs!388805 m!1830688))

(assert (=> b!1558599 d!461949))

(declare-fun d!461951 () Bool)

(declare-fun lt!539869 () Int)

(assert (=> d!461951 (= lt!539869 (size!13696 (list!6506 (_1!9594 (_1!9595 lt!539844)))))))

(declare-fun size!13697 (Conc!5577) Int)

(assert (=> d!461951 (= lt!539869 (size!13697 (c!252992 (_1!9594 (_1!9595 lt!539844)))))))

(assert (=> d!461951 (= (size!13695 (_1!9594 (_1!9595 lt!539844))) lt!539869)))

(declare-fun bs!388806 () Bool)

(assert (= bs!388806 d!461951))

(assert (=> bs!388806 m!1830614))

(assert (=> bs!388806 m!1830614))

(declare-fun m!1830690 () Bool)

(assert (=> bs!388806 m!1830690))

(declare-fun m!1830692 () Bool)

(assert (=> bs!388806 m!1830692))

(assert (=> b!1558599 d!461951))

(declare-fun d!461953 () Bool)

(declare-fun dynLambda!7510 (Int BalanceConc!11096) Bool)

(assert (=> d!461953 (dynLambda!7510 lambda!65975 lt!539853)))

(declare-fun lt!539872 () Unit!26114)

(declare-fun choose!9303 (Int BalanceConc!11096) Unit!26114)

(assert (=> d!461953 (= lt!539872 (choose!9303 lambda!65975 lt!539853))))

(assert (=> d!461953 (Forall!616 lambda!65975)))

(assert (=> d!461953 (= (ForallOf!218 lambda!65975 lt!539853) lt!539872)))

(declare-fun b_lambda!48983 () Bool)

(assert (=> (not b_lambda!48983) (not d!461953)))

(declare-fun bs!388807 () Bool)

(assert (= bs!388807 d!461953))

(declare-fun m!1830694 () Bool)

(assert (=> bs!388807 m!1830694))

(declare-fun m!1830696 () Bool)

(assert (=> bs!388807 m!1830696))

(assert (=> bs!388807 m!1830632))

(assert (=> b!1558599 d!461953))

(declare-fun d!461955 () Bool)

(declare-fun isEmpty!10146 (Option!3053) Bool)

(assert (=> d!461955 (= (isDefined!2453 lt!539856) (not (isEmpty!10146 lt!539856)))))

(declare-fun bs!388808 () Bool)

(assert (= bs!388808 d!461955))

(declare-fun m!1830698 () Bool)

(assert (=> bs!388808 m!1830698))

(assert (=> b!1558599 d!461955))

(declare-fun d!461957 () Bool)

(declare-fun isEmpty!10147 (Option!3054) Bool)

(assert (=> d!461957 (= (isDefined!2454 lt!539847) (not (isEmpty!10147 lt!539847)))))

(declare-fun bs!388809 () Bool)

(assert (= bs!388809 d!461957))

(declare-fun m!1830700 () Bool)

(assert (=> bs!388809 m!1830700))

(assert (=> b!1558599 d!461957))

(declare-fun b!1558672 () Bool)

(declare-fun e!1000490 () Bool)

(declare-fun e!1000493 () Bool)

(assert (=> b!1558672 (= e!1000490 e!1000493)))

(declare-fun res!695386 () Bool)

(assert (=> b!1558672 (=> (not res!695386) (not e!1000493))))

(declare-fun lt!539887 () Option!3053)

(declare-fun charsOf!1651 (Token!5494) BalanceConc!11096)

(assert (=> b!1558672 (= res!695386 (matchR!1885 (regex!2959 rule!240) (list!6506 (charsOf!1651 (_1!9597 (get!4863 lt!539887))))))))

(declare-fun b!1558673 () Bool)

(declare-fun e!1000491 () Bool)

(assert (=> b!1558673 (= e!1000491 (matchR!1885 (regex!2959 rule!240) (_1!9596 (findLongestMatchInner!340 (regex!2959 rule!240) Nil!16884 (size!13696 Nil!16884) lt!539857 lt!539857 (size!13696 lt!539857)))))))

(declare-fun b!1558674 () Bool)

(declare-fun res!695383 () Bool)

(assert (=> b!1558674 (=> (not res!695383) (not e!1000493))))

(assert (=> b!1558674 (= res!695383 (< (size!13696 (_2!9597 (get!4863 lt!539887))) (size!13696 lt!539857)))))

(declare-fun b!1558675 () Bool)

(declare-fun res!695380 () Bool)

(assert (=> b!1558675 (=> (not res!695380) (not e!1000493))))

(assert (=> b!1558675 (= res!695380 (= (rule!4745 (_1!9597 (get!4863 lt!539887))) rule!240))))

(declare-fun b!1558676 () Bool)

(declare-fun res!695384 () Bool)

(assert (=> b!1558676 (=> (not res!695384) (not e!1000493))))

(declare-fun ++!4419 (List!16952 List!16952) List!16952)

(assert (=> b!1558676 (= res!695384 (= (++!4419 (list!6506 (charsOf!1651 (_1!9597 (get!4863 lt!539887)))) (_2!9597 (get!4863 lt!539887))) lt!539857))))

(declare-fun b!1558677 () Bool)

(declare-fun e!1000492 () Option!3053)

(assert (=> b!1558677 (= e!1000492 None!3052)))

(declare-fun b!1558678 () Bool)

(declare-fun res!695382 () Bool)

(assert (=> b!1558678 (=> (not res!695382) (not e!1000493))))

(assert (=> b!1558678 (= res!695382 (= (value!93968 (_1!9597 (get!4863 lt!539887))) (apply!4117 (transformation!2959 (rule!4745 (_1!9597 (get!4863 lt!539887)))) (seqFromList!1781 (originalCharacters!3778 (_1!9597 (get!4863 lt!539887)))))))))

(declare-fun d!461959 () Bool)

(assert (=> d!461959 e!1000490))

(declare-fun res!695381 () Bool)

(assert (=> d!461959 (=> res!695381 e!1000490)))

(assert (=> d!461959 (= res!695381 (isEmpty!10146 lt!539887))))

(assert (=> d!461959 (= lt!539887 e!1000492)))

(declare-fun c!252999 () Bool)

(declare-fun lt!539884 () tuple2!16444)

(assert (=> d!461959 (= c!252999 (isEmpty!10143 (_1!9596 lt!539884)))))

(assert (=> d!461959 (= lt!539884 (findLongestMatch!266 (regex!2959 rule!240) lt!539857))))

(assert (=> d!461959 (ruleValid!691 thiss!16438 rule!240)))

(assert (=> d!461959 (= (maxPrefixOneRule!710 thiss!16438 rule!240 lt!539857) lt!539887)))

(declare-fun b!1558679 () Bool)

(assert (=> b!1558679 (= e!1000493 (= (size!13694 (_1!9597 (get!4863 lt!539887))) (size!13696 (originalCharacters!3778 (_1!9597 (get!4863 lt!539887))))))))

(declare-fun b!1558680 () Bool)

(assert (=> b!1558680 (= e!1000492 (Some!3052 (tuple2!16447 (Token!5495 (apply!4117 (transformation!2959 rule!240) (seqFromList!1781 (_1!9596 lt!539884))) rule!240 (size!13695 (seqFromList!1781 (_1!9596 lt!539884))) (_1!9596 lt!539884)) (_2!9596 lt!539884))))))

(declare-fun lt!539886 () Unit!26114)

(assert (=> b!1558680 (= lt!539886 (longestMatchIsAcceptedByMatchOrIsEmpty!324 (regex!2959 rule!240) lt!539857))))

(declare-fun res!695385 () Bool)

(assert (=> b!1558680 (= res!695385 (isEmpty!10143 (_1!9596 (findLongestMatchInner!340 (regex!2959 rule!240) Nil!16884 (size!13696 Nil!16884) lt!539857 lt!539857 (size!13696 lt!539857)))))))

(assert (=> b!1558680 (=> res!695385 e!1000491)))

(assert (=> b!1558680 e!1000491))

(declare-fun lt!539885 () Unit!26114)

(assert (=> b!1558680 (= lt!539885 lt!539886)))

(declare-fun lt!539883 () Unit!26114)

(declare-fun lemmaSemiInverse!370 (TokenValueInjection!5758 BalanceConc!11096) Unit!26114)

(assert (=> b!1558680 (= lt!539883 (lemmaSemiInverse!370 (transformation!2959 rule!240) (seqFromList!1781 (_1!9596 lt!539884))))))

(assert (= (and d!461959 c!252999) b!1558677))

(assert (= (and d!461959 (not c!252999)) b!1558680))

(assert (= (and b!1558680 (not res!695385)) b!1558673))

(assert (= (and d!461959 (not res!695381)) b!1558672))

(assert (= (and b!1558672 res!695386) b!1558676))

(assert (= (and b!1558676 res!695384) b!1558674))

(assert (= (and b!1558674 res!695383) b!1558675))

(assert (= (and b!1558675 res!695380) b!1558678))

(assert (= (and b!1558678 res!695382) b!1558679))

(assert (=> b!1558673 m!1830578))

(assert (=> b!1558673 m!1830568))

(assert (=> b!1558673 m!1830578))

(assert (=> b!1558673 m!1830568))

(assert (=> b!1558673 m!1830580))

(declare-fun m!1830702 () Bool)

(assert (=> b!1558673 m!1830702))

(declare-fun m!1830704 () Bool)

(assert (=> b!1558679 m!1830704))

(declare-fun m!1830706 () Bool)

(assert (=> b!1558679 m!1830706))

(declare-fun m!1830708 () Bool)

(assert (=> b!1558680 m!1830708))

(declare-fun m!1830710 () Bool)

(assert (=> b!1558680 m!1830710))

(assert (=> b!1558680 m!1830708))

(declare-fun m!1830712 () Bool)

(assert (=> b!1558680 m!1830712))

(assert (=> b!1558680 m!1830574))

(declare-fun m!1830714 () Bool)

(assert (=> b!1558680 m!1830714))

(assert (=> b!1558680 m!1830578))

(assert (=> b!1558680 m!1830708))

(assert (=> b!1558680 m!1830708))

(declare-fun m!1830716 () Bool)

(assert (=> b!1558680 m!1830716))

(assert (=> b!1558680 m!1830568))

(assert (=> b!1558680 m!1830578))

(assert (=> b!1558680 m!1830568))

(assert (=> b!1558680 m!1830580))

(assert (=> b!1558674 m!1830704))

(declare-fun m!1830718 () Bool)

(assert (=> b!1558674 m!1830718))

(assert (=> b!1558674 m!1830568))

(assert (=> b!1558672 m!1830704))

(declare-fun m!1830720 () Bool)

(assert (=> b!1558672 m!1830720))

(assert (=> b!1558672 m!1830720))

(declare-fun m!1830722 () Bool)

(assert (=> b!1558672 m!1830722))

(assert (=> b!1558672 m!1830722))

(declare-fun m!1830724 () Bool)

(assert (=> b!1558672 m!1830724))

(declare-fun m!1830726 () Bool)

(assert (=> d!461959 m!1830726))

(declare-fun m!1830728 () Bool)

(assert (=> d!461959 m!1830728))

(declare-fun m!1830730 () Bool)

(assert (=> d!461959 m!1830730))

(assert (=> d!461959 m!1830634))

(assert (=> b!1558678 m!1830704))

(declare-fun m!1830732 () Bool)

(assert (=> b!1558678 m!1830732))

(assert (=> b!1558678 m!1830732))

(declare-fun m!1830734 () Bool)

(assert (=> b!1558678 m!1830734))

(assert (=> b!1558676 m!1830704))

(assert (=> b!1558676 m!1830720))

(assert (=> b!1558676 m!1830720))

(assert (=> b!1558676 m!1830722))

(assert (=> b!1558676 m!1830722))

(declare-fun m!1830736 () Bool)

(assert (=> b!1558676 m!1830736))

(assert (=> b!1558675 m!1830704))

(assert (=> b!1558599 d!461959))

(declare-fun d!461961 () Bool)

(declare-fun dynLambda!7511 (Int BalanceConc!11096) TokenValue!3049)

(assert (=> d!461961 (= (apply!4117 (transformation!2959 rule!240) (_1!9594 (_1!9595 lt!539844))) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) (_1!9594 (_1!9595 lt!539844))))))

(declare-fun b_lambda!48985 () Bool)

(assert (=> (not b_lambda!48985) (not d!461961)))

(declare-fun t!141461 () Bool)

(declare-fun tb!87353 () Bool)

(assert (=> (and b!1558620 (= (toValue!4335 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))) t!141461) tb!87353))

(declare-fun result!105548 () Bool)

(declare-fun inv!21 (TokenValue!3049) Bool)

(assert (=> tb!87353 (= result!105548 (inv!21 (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) (_1!9594 (_1!9595 lt!539844)))))))

(declare-fun m!1830738 () Bool)

(assert (=> tb!87353 m!1830738))

(assert (=> d!461961 t!141461))

(declare-fun b_and!108789 () Bool)

(assert (= b_and!108781 (and (=> t!141461 result!105548) b_and!108789)))

(declare-fun m!1830740 () Bool)

(assert (=> d!461961 m!1830740))

(assert (=> b!1558599 d!461961))

(declare-fun d!461963 () Bool)

(assert (=> d!461963 (dynLambda!7510 lambda!65975 (_1!9594 (_1!9595 lt!539844)))))

(declare-fun lt!539888 () Unit!26114)

(assert (=> d!461963 (= lt!539888 (choose!9303 lambda!65975 (_1!9594 (_1!9595 lt!539844))))))

(assert (=> d!461963 (Forall!616 lambda!65975)))

(assert (=> d!461963 (= (ForallOf!218 lambda!65975 (_1!9594 (_1!9595 lt!539844))) lt!539888)))

(declare-fun b_lambda!48987 () Bool)

(assert (=> (not b_lambda!48987) (not d!461963)))

(declare-fun bs!388810 () Bool)

(assert (= bs!388810 d!461963))

(declare-fun m!1830742 () Bool)

(assert (=> bs!388810 m!1830742))

(declare-fun m!1830744 () Bool)

(assert (=> bs!388810 m!1830744))

(assert (=> bs!388810 m!1830632))

(assert (=> b!1558599 d!461963))

(declare-fun d!461965 () Bool)

(declare-fun list!6507 (Conc!5577) List!16952)

(assert (=> d!461965 (= (list!6506 (_1!9594 (_1!9595 lt!539844))) (list!6507 (c!252992 (_1!9594 (_1!9595 lt!539844)))))))

(declare-fun bs!388811 () Bool)

(assert (= bs!388811 d!461965))

(declare-fun m!1830746 () Bool)

(assert (=> bs!388811 m!1830746))

(assert (=> b!1558599 d!461965))

(declare-fun d!461967 () Bool)

(declare-fun c!253000 () Bool)

(assert (=> d!461967 (= c!253000 ((_ is Node!5577) (c!252992 input!1676)))))

(declare-fun e!1000497 () Bool)

(assert (=> d!461967 (= (inv!22179 (c!252992 input!1676)) e!1000497)))

(declare-fun b!1558683 () Bool)

(assert (=> b!1558683 (= e!1000497 (inv!22181 (c!252992 input!1676)))))

(declare-fun b!1558684 () Bool)

(declare-fun e!1000498 () Bool)

(assert (=> b!1558684 (= e!1000497 e!1000498)))

(declare-fun res!695387 () Bool)

(assert (=> b!1558684 (= res!695387 (not ((_ is Leaf!8266) (c!252992 input!1676))))))

(assert (=> b!1558684 (=> res!695387 e!1000498)))

(declare-fun b!1558685 () Bool)

(assert (=> b!1558685 (= e!1000498 (inv!22182 (c!252992 input!1676)))))

(assert (= (and d!461967 c!253000) b!1558683))

(assert (= (and d!461967 (not c!253000)) b!1558684))

(assert (= (and b!1558684 (not res!695387)) b!1558685))

(declare-fun m!1830748 () Bool)

(assert (=> b!1558683 m!1830748))

(declare-fun m!1830750 () Bool)

(assert (=> b!1558685 m!1830750))

(assert (=> b!1558617 d!461967))

(declare-fun d!461969 () Bool)

(assert (=> d!461969 (= (get!4864 lt!539847) (v!23750 lt!539847))))

(assert (=> b!1558611 d!461969))

(declare-fun d!461971 () Bool)

(declare-fun validCacheMapFurthestNullable!79 (MutableMap!1774 BalanceConc!11096) Bool)

(assert (=> d!461971 (= (valid!1470 cacheFurthestNullable!103) (validCacheMapFurthestNullable!79 (cache!2155 cacheFurthestNullable!103) (totalInput!2484 cacheFurthestNullable!103)))))

(declare-fun bs!388812 () Bool)

(assert (= bs!388812 d!461971))

(declare-fun m!1830752 () Bool)

(assert (=> bs!388812 m!1830752))

(assert (=> b!1558593 d!461971))

(declare-fun d!461973 () Bool)

(assert (=> d!461973 (= (inv!22170 (tag!3223 rule!240)) (= (mod (str.len (value!93967 (tag!3223 rule!240))) 2) 0))))

(assert (=> b!1558612 d!461973))

(declare-fun d!461975 () Bool)

(declare-fun res!695390 () Bool)

(declare-fun e!1000501 () Bool)

(assert (=> d!461975 (=> (not res!695390) (not e!1000501))))

(assert (=> d!461975 (= res!695390 (semiInverseModEq!1120 (toChars!4194 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))))))

(assert (=> d!461975 (= (inv!22180 (transformation!2959 rule!240)) e!1000501)))

(declare-fun b!1558688 () Bool)

(declare-fun equivClasses!1061 (Int Int) Bool)

(assert (=> b!1558688 (= e!1000501 (equivClasses!1061 (toChars!4194 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))))))

(assert (= (and d!461975 res!695390) b!1558688))

(assert (=> d!461975 m!1830570))

(declare-fun m!1830754 () Bool)

(assert (=> b!1558688 m!1830754))

(assert (=> b!1558612 d!461975))

(declare-fun d!461977 () Bool)

(assert (=> d!461977 (= (apply!4117 (transformation!2959 rule!240) lt!539853) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) lt!539853))))

(declare-fun b_lambda!48989 () Bool)

(assert (=> (not b_lambda!48989) (not d!461977)))

(declare-fun t!141463 () Bool)

(declare-fun tb!87355 () Bool)

(assert (=> (and b!1558620 (= (toValue!4335 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))) t!141463) tb!87355))

(declare-fun result!105552 () Bool)

(assert (=> tb!87355 (= result!105552 (inv!21 (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) lt!539853)))))

(declare-fun m!1830756 () Bool)

(assert (=> tb!87355 m!1830756))

(assert (=> d!461977 t!141463))

(declare-fun b_and!108791 () Bool)

(assert (= b_and!108789 (and (=> t!141463 result!105552) b_and!108791)))

(declare-fun m!1830758 () Bool)

(assert (=> d!461977 m!1830758))

(assert (=> b!1558596 d!461977))

(declare-fun b!1558695 () Bool)

(declare-fun e!1000507 () Bool)

(assert (=> b!1558695 (= e!1000507 true)))

(declare-fun d!461979 () Bool)

(assert (=> d!461979 e!1000507))

(assert (= d!461979 b!1558695))

(declare-fun lambda!65978 () Int)

(declare-fun order!9983 () Int)

(declare-fun dynLambda!7512 (Int Int) Int)

(assert (=> b!1558695 (< (dynLambda!7507 order!9977 (toValue!4335 (transformation!2959 rule!240))) (dynLambda!7512 order!9983 lambda!65978))))

(assert (=> b!1558695 (< (dynLambda!7509 order!9981 (toChars!4194 (transformation!2959 rule!240))) (dynLambda!7512 order!9983 lambda!65978))))

(assert (=> d!461979 (= (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) (_1!9594 (_1!9595 lt!539844))) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) lt!539853))))

(declare-fun lt!539891 () Unit!26114)

(declare-fun Forall2of!46 (Int BalanceConc!11096 BalanceConc!11096) Unit!26114)

(assert (=> d!461979 (= lt!539891 (Forall2of!46 lambda!65978 (_1!9594 (_1!9595 lt!539844)) lt!539853))))

(assert (=> d!461979 (= (list!6506 (_1!9594 (_1!9595 lt!539844))) (list!6506 lt!539853))))

(assert (=> d!461979 (= (lemmaEqSameImage!155 (transformation!2959 rule!240) (_1!9594 (_1!9595 lt!539844)) lt!539853) lt!539891)))

(declare-fun b_lambda!48991 () Bool)

(assert (=> (not b_lambda!48991) (not d!461979)))

(assert (=> d!461979 t!141461))

(declare-fun b_and!108793 () Bool)

(assert (= b_and!108791 (and (=> t!141461 result!105548) b_and!108793)))

(declare-fun b_lambda!48993 () Bool)

(assert (=> (not b_lambda!48993) (not d!461979)))

(assert (=> d!461979 t!141463))

(declare-fun b_and!108795 () Bool)

(assert (= b_and!108793 (and (=> t!141463 result!105552) b_and!108795)))

(assert (=> d!461979 m!1830644))

(declare-fun m!1830760 () Bool)

(assert (=> d!461979 m!1830760))

(assert (=> d!461979 m!1830740))

(assert (=> d!461979 m!1830758))

(assert (=> d!461979 m!1830614))

(assert (=> b!1558596 d!461979))

(declare-fun d!461981 () Bool)

(assert (=> d!461981 (= (inv!22175 totalInput!568) (isBalanced!1648 (c!252992 totalInput!568)))))

(declare-fun bs!388813 () Bool)

(assert (= bs!388813 d!461981))

(declare-fun m!1830762 () Bool)

(assert (=> bs!388813 m!1830762))

(assert (=> start!144596 d!461981))

(declare-fun d!461983 () Bool)

(declare-fun res!695395 () Bool)

(declare-fun e!1000510 () Bool)

(assert (=> d!461983 (=> (not res!695395) (not e!1000510))))

(assert (=> d!461983 (= res!695395 ((_ is HashMap!1775) (cache!2156 cacheDown!768)))))

(assert (=> d!461983 (= (inv!22178 cacheDown!768) e!1000510)))

(declare-fun b!1558698 () Bool)

(declare-fun validCacheMapDown!166 (MutableMap!1775) Bool)

(assert (=> b!1558698 (= e!1000510 (validCacheMapDown!166 (cache!2156 cacheDown!768)))))

(assert (= (and d!461983 res!695395) b!1558698))

(declare-fun m!1830764 () Bool)

(assert (=> b!1558698 m!1830764))

(assert (=> start!144596 d!461983))

(declare-fun d!461985 () Bool)

(declare-fun res!695398 () Bool)

(declare-fun e!1000513 () Bool)

(assert (=> d!461985 (=> (not res!695398) (not e!1000513))))

(assert (=> d!461985 (= res!695398 ((_ is HashMap!1776) (cache!2157 cacheUp!755)))))

(assert (=> d!461985 (= (inv!22176 cacheUp!755) e!1000513)))

(declare-fun b!1558701 () Bool)

(assert (=> b!1558701 (= e!1000513 (validCacheMapUp!166 (cache!2157 cacheUp!755)))))

(assert (= (and d!461985 res!695398) b!1558701))

(assert (=> b!1558701 m!1830666))

(assert (=> start!144596 d!461985))

(declare-fun d!461987 () Bool)

(assert (=> d!461987 (= (inv!22175 input!1676) (isBalanced!1648 (c!252992 input!1676)))))

(declare-fun bs!388814 () Bool)

(assert (= bs!388814 d!461987))

(declare-fun m!1830766 () Bool)

(assert (=> bs!388814 m!1830766))

(assert (=> start!144596 d!461987))

(declare-fun d!461989 () Bool)

(declare-fun res!695401 () Bool)

(declare-fun e!1000516 () Bool)

(assert (=> d!461989 (=> (not res!695401) (not e!1000516))))

(assert (=> d!461989 (= res!695401 ((_ is HashMap!1774) (cache!2155 cacheFurthestNullable!103)))))

(assert (=> d!461989 (= (inv!22177 cacheFurthestNullable!103) e!1000516)))

(declare-fun b!1558704 () Bool)

(assert (=> b!1558704 (= e!1000516 (validCacheMapFurthestNullable!79 (cache!2155 cacheFurthestNullable!103) (totalInput!2484 cacheFurthestNullable!103)))))

(assert (= (and d!461989 res!695401) b!1558704))

(assert (=> b!1558704 m!1830752))

(assert (=> start!144596 d!461989))

(declare-fun d!461991 () Bool)

(assert (=> d!461991 (= (list!6506 lt!539853) (list!6507 (c!252992 lt!539853)))))

(declare-fun bs!388815 () Bool)

(assert (= bs!388815 d!461991))

(declare-fun m!1830768 () Bool)

(assert (=> bs!388815 m!1830768))

(assert (=> b!1558613 d!461991))

(declare-fun d!461993 () Bool)

(declare-fun c!253001 () Bool)

(assert (=> d!461993 (= c!253001 ((_ is Node!5577) (c!252992 (totalInput!2484 cacheFurthestNullable!103))))))

(declare-fun e!1000517 () Bool)

(assert (=> d!461993 (= (inv!22179 (c!252992 (totalInput!2484 cacheFurthestNullable!103))) e!1000517)))

(declare-fun b!1558705 () Bool)

(assert (=> b!1558705 (= e!1000517 (inv!22181 (c!252992 (totalInput!2484 cacheFurthestNullable!103))))))

(declare-fun b!1558706 () Bool)

(declare-fun e!1000518 () Bool)

(assert (=> b!1558706 (= e!1000517 e!1000518)))

(declare-fun res!695402 () Bool)

(assert (=> b!1558706 (= res!695402 (not ((_ is Leaf!8266) (c!252992 (totalInput!2484 cacheFurthestNullable!103)))))))

(assert (=> b!1558706 (=> res!695402 e!1000518)))

(declare-fun b!1558707 () Bool)

(assert (=> b!1558707 (= e!1000518 (inv!22182 (c!252992 (totalInput!2484 cacheFurthestNullable!103))))))

(assert (= (and d!461993 c!253001) b!1558705))

(assert (= (and d!461993 (not c!253001)) b!1558706))

(assert (= (and b!1558706 (not res!695402)) b!1558707))

(declare-fun m!1830770 () Bool)

(assert (=> b!1558705 m!1830770))

(declare-fun m!1830772 () Bool)

(assert (=> b!1558707 m!1830772))

(assert (=> b!1558598 d!461993))

(declare-fun d!461995 () Bool)

(assert (=> d!461995 (= (array_inv!2010 (_keys!2124 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) (bvsge (size!13691 (_keys!2124 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1558615 d!461995))

(declare-fun d!461997 () Bool)

(assert (=> d!461997 (= (array_inv!2011 (_values!2109 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) (bvsge (size!13690 (_values!2109 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1558615 d!461997))

(declare-fun b!1558736 () Bool)

(declare-fun e!1000533 () Bool)

(declare-fun lt!539894 () Bool)

(declare-fun call!102147 () Bool)

(assert (=> b!1558736 (= e!1000533 (= lt!539894 call!102147))))

(declare-fun b!1558737 () Bool)

(declare-fun res!695426 () Bool)

(declare-fun e!1000536 () Bool)

(assert (=> b!1558737 (=> res!695426 e!1000536)))

(declare-fun e!1000534 () Bool)

(assert (=> b!1558737 (= res!695426 e!1000534)))

(declare-fun res!695424 () Bool)

(assert (=> b!1558737 (=> (not res!695424) (not e!1000534))))

(assert (=> b!1558737 (= res!695424 lt!539894)))

(declare-fun b!1558738 () Bool)

(declare-fun head!3118 (List!16952) C!8752)

(assert (=> b!1558738 (= e!1000534 (= (head!3118 (_1!9596 lt!539841)) (c!252993 (regex!2959 rule!240))))))

(declare-fun b!1558739 () Bool)

(declare-fun e!1000539 () Bool)

(assert (=> b!1558739 (= e!1000533 e!1000539)))

(declare-fun c!253008 () Bool)

(assert (=> b!1558739 (= c!253008 ((_ is EmptyLang!4287) (regex!2959 rule!240)))))

(declare-fun b!1558740 () Bool)

(declare-fun res!695421 () Bool)

(assert (=> b!1558740 (=> (not res!695421) (not e!1000534))))

(assert (=> b!1558740 (= res!695421 (not call!102147))))

(declare-fun b!1558741 () Bool)

(declare-fun e!1000537 () Bool)

(declare-fun e!1000535 () Bool)

(assert (=> b!1558741 (= e!1000537 e!1000535)))

(declare-fun res!695425 () Bool)

(assert (=> b!1558741 (=> res!695425 e!1000535)))

(assert (=> b!1558741 (= res!695425 call!102147)))

(declare-fun d!461999 () Bool)

(assert (=> d!461999 e!1000533))

(declare-fun c!253009 () Bool)

(assert (=> d!461999 (= c!253009 ((_ is EmptyExpr!4287) (regex!2959 rule!240)))))

(declare-fun e!1000538 () Bool)

(assert (=> d!461999 (= lt!539894 e!1000538)))

(declare-fun c!253010 () Bool)

(assert (=> d!461999 (= c!253010 (isEmpty!10143 (_1!9596 lt!539841)))))

(assert (=> d!461999 (validRegex!1716 (regex!2959 rule!240))))

(assert (=> d!461999 (= (matchR!1885 (regex!2959 rule!240) (_1!9596 lt!539841)) lt!539894)))

(declare-fun b!1558742 () Bool)

(declare-fun res!695422 () Bool)

(assert (=> b!1558742 (=> res!695422 e!1000536)))

(assert (=> b!1558742 (= res!695422 (not ((_ is ElementMatch!4287) (regex!2959 rule!240))))))

(assert (=> b!1558742 (= e!1000539 e!1000536)))

(declare-fun b!1558743 () Bool)

(assert (=> b!1558743 (= e!1000539 (not lt!539894))))

(declare-fun b!1558744 () Bool)

(declare-fun res!695420 () Bool)

(assert (=> b!1558744 (=> (not res!695420) (not e!1000534))))

(declare-fun tail!2213 (List!16952) List!16952)

(assert (=> b!1558744 (= res!695420 (isEmpty!10143 (tail!2213 (_1!9596 lt!539841))))))

(declare-fun b!1558745 () Bool)

(declare-fun res!695423 () Bool)

(assert (=> b!1558745 (=> res!695423 e!1000535)))

(assert (=> b!1558745 (= res!695423 (not (isEmpty!10143 (tail!2213 (_1!9596 lt!539841)))))))

(declare-fun b!1558746 () Bool)

(assert (=> b!1558746 (= e!1000536 e!1000537)))

(declare-fun res!695419 () Bool)

(assert (=> b!1558746 (=> (not res!695419) (not e!1000537))))

(assert (=> b!1558746 (= res!695419 (not lt!539894))))

(declare-fun b!1558747 () Bool)

(declare-fun derivativeStep!1027 (Regex!4287 C!8752) Regex!4287)

(assert (=> b!1558747 (= e!1000538 (matchR!1885 (derivativeStep!1027 (regex!2959 rule!240) (head!3118 (_1!9596 lt!539841))) (tail!2213 (_1!9596 lt!539841))))))

(declare-fun bm!102142 () Bool)

(assert (=> bm!102142 (= call!102147 (isEmpty!10143 (_1!9596 lt!539841)))))

(declare-fun b!1558748 () Bool)

(declare-fun nullable!1275 (Regex!4287) Bool)

(assert (=> b!1558748 (= e!1000538 (nullable!1275 (regex!2959 rule!240)))))

(declare-fun b!1558749 () Bool)

(assert (=> b!1558749 (= e!1000535 (not (= (head!3118 (_1!9596 lt!539841)) (c!252993 (regex!2959 rule!240)))))))

(assert (= (and d!461999 c!253010) b!1558748))

(assert (= (and d!461999 (not c!253010)) b!1558747))

(assert (= (and d!461999 c!253009) b!1558736))

(assert (= (and d!461999 (not c!253009)) b!1558739))

(assert (= (and b!1558739 c!253008) b!1558743))

(assert (= (and b!1558739 (not c!253008)) b!1558742))

(assert (= (and b!1558742 (not res!695422)) b!1558737))

(assert (= (and b!1558737 res!695424) b!1558740))

(assert (= (and b!1558740 res!695421) b!1558744))

(assert (= (and b!1558744 res!695420) b!1558738))

(assert (= (and b!1558737 (not res!695426)) b!1558746))

(assert (= (and b!1558746 res!695419) b!1558741))

(assert (= (and b!1558741 (not res!695425)) b!1558745))

(assert (= (and b!1558745 (not res!695423)) b!1558749))

(assert (= (or b!1558736 b!1558740 b!1558741) bm!102142))

(declare-fun m!1830774 () Bool)

(assert (=> b!1558749 m!1830774))

(assert (=> b!1558738 m!1830774))

(assert (=> d!461999 m!1830576))

(assert (=> d!461999 m!1830674))

(assert (=> bm!102142 m!1830576))

(assert (=> b!1558747 m!1830774))

(assert (=> b!1558747 m!1830774))

(declare-fun m!1830776 () Bool)

(assert (=> b!1558747 m!1830776))

(declare-fun m!1830778 () Bool)

(assert (=> b!1558747 m!1830778))

(assert (=> b!1558747 m!1830776))

(assert (=> b!1558747 m!1830778))

(declare-fun m!1830780 () Bool)

(assert (=> b!1558747 m!1830780))

(assert (=> b!1558744 m!1830778))

(assert (=> b!1558744 m!1830778))

(declare-fun m!1830782 () Bool)

(assert (=> b!1558744 m!1830782))

(assert (=> b!1558745 m!1830778))

(assert (=> b!1558745 m!1830778))

(assert (=> b!1558745 m!1830782))

(declare-fun m!1830784 () Bool)

(assert (=> b!1558748 m!1830784))

(assert (=> b!1558597 d!461999))

(declare-fun d!462001 () Bool)

(declare-fun e!1000542 () Bool)

(assert (=> d!462001 e!1000542))

(declare-fun res!695429 () Bool)

(assert (=> d!462001 (=> res!695429 e!1000542)))

(declare-fun lt!539897 () Bool)

(assert (=> d!462001 (= res!695429 (not lt!539897))))

(declare-fun drop!790 (List!16952 Int) List!16952)

(assert (=> d!462001 (= lt!539897 (= lt!539857 (drop!790 (list!6506 totalInput!568) (- (size!13696 (list!6506 totalInput!568)) (size!13696 lt!539857)))))))

(assert (=> d!462001 (= (isSuffix!382 lt!539857 (list!6506 totalInput!568)) lt!539897)))

(declare-fun b!1558752 () Bool)

(assert (=> b!1558752 (= e!1000542 (>= (size!13696 (list!6506 totalInput!568)) (size!13696 lt!539857)))))

(assert (= (and d!462001 (not res!695429)) b!1558752))

(assert (=> d!462001 m!1830558))

(declare-fun m!1830786 () Bool)

(assert (=> d!462001 m!1830786))

(assert (=> d!462001 m!1830568))

(assert (=> d!462001 m!1830558))

(declare-fun m!1830788 () Bool)

(assert (=> d!462001 m!1830788))

(assert (=> b!1558752 m!1830558))

(assert (=> b!1558752 m!1830786))

(assert (=> b!1558752 m!1830568))

(assert (=> b!1558607 d!462001))

(declare-fun d!462003 () Bool)

(assert (=> d!462003 (= (list!6506 totalInput!568) (list!6507 (c!252992 totalInput!568)))))

(declare-fun bs!388816 () Bool)

(assert (= bs!388816 d!462003))

(declare-fun m!1830790 () Bool)

(assert (=> bs!388816 m!1830790))

(assert (=> b!1558607 d!462003))

(declare-fun d!462005 () Bool)

(assert (=> d!462005 (= (list!6506 input!1676) (list!6507 (c!252992 input!1676)))))

(declare-fun bs!388817 () Bool)

(assert (= bs!388817 d!462005))

(declare-fun m!1830792 () Bool)

(assert (=> bs!388817 m!1830792))

(assert (=> b!1558607 d!462005))

(declare-fun d!462007 () Bool)

(declare-fun res!695434 () Bool)

(declare-fun e!1000545 () Bool)

(assert (=> d!462007 (=> (not res!695434) (not e!1000545))))

(assert (=> d!462007 (= res!695434 (validRegex!1716 (regex!2959 rule!240)))))

(assert (=> d!462007 (= (ruleValid!691 thiss!16438 rule!240) e!1000545)))

(declare-fun b!1558757 () Bool)

(declare-fun res!695435 () Bool)

(assert (=> b!1558757 (=> (not res!695435) (not e!1000545))))

(assert (=> b!1558757 (= res!695435 (not (nullable!1275 (regex!2959 rule!240))))))

(declare-fun b!1558758 () Bool)

(assert (=> b!1558758 (= e!1000545 (not (= (tag!3223 rule!240) (String!19534 ""))))))

(assert (= (and d!462007 res!695434) b!1558757))

(assert (= (and b!1558757 res!695435) b!1558758))

(assert (=> d!462007 m!1830674))

(assert (=> b!1558757 m!1830784))

(assert (=> b!1558589 d!462007))

(declare-fun d!462009 () Bool)

(assert (=> d!462009 (= (valid!1469 cacheDown!768) (validCacheMapDown!166 (cache!2156 cacheDown!768)))))

(declare-fun bs!388818 () Bool)

(assert (= bs!388818 d!462009))

(assert (=> bs!388818 m!1830764))

(assert (=> b!1558592 d!462009))

(declare-fun d!462011 () Bool)

(declare-fun lt!539900 () Int)

(assert (=> d!462011 (>= lt!539900 0)))

(declare-fun e!1000548 () Int)

(assert (=> d!462011 (= lt!539900 e!1000548)))

(declare-fun c!253013 () Bool)

(assert (=> d!462011 (= c!253013 ((_ is Nil!16884) lt!539857))))

(assert (=> d!462011 (= (size!13696 lt!539857) lt!539900)))

(declare-fun b!1558763 () Bool)

(assert (=> b!1558763 (= e!1000548 0)))

(declare-fun b!1558764 () Bool)

(assert (=> b!1558764 (= e!1000548 (+ 1 (size!13696 (t!141455 lt!539857))))))

(assert (= (and d!462011 c!253013) b!1558763))

(assert (= (and d!462011 (not c!253013)) b!1558764))

(declare-fun m!1830794 () Bool)

(assert (=> b!1558764 m!1830794))

(assert (=> b!1558609 d!462011))

(declare-fun b!1558793 () Bool)

(declare-fun c!253029 () Bool)

(declare-fun call!102170 () Bool)

(assert (=> b!1558793 (= c!253029 call!102170)))

(declare-fun lt!539964 () Unit!26114)

(declare-fun lt!539973 () Unit!26114)

(assert (=> b!1558793 (= lt!539964 lt!539973)))

(assert (=> b!1558793 (= lt!539857 Nil!16884)))

(declare-fun call!102167 () Unit!26114)

(assert (=> b!1558793 (= lt!539973 call!102167)))

(declare-fun lt!539982 () Unit!26114)

(declare-fun lt!539961 () Unit!26114)

(assert (=> b!1558793 (= lt!539982 lt!539961)))

(declare-fun call!102169 () Bool)

(assert (=> b!1558793 call!102169))

(declare-fun call!102164 () Unit!26114)

(assert (=> b!1558793 (= lt!539961 call!102164)))

(declare-fun e!1000570 () tuple2!16444)

(declare-fun e!1000566 () tuple2!16444)

(assert (=> b!1558793 (= e!1000570 e!1000566)))

(declare-fun bm!102159 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!129 (List!16952 List!16952 List!16952) Unit!26114)

(assert (=> bm!102159 (= call!102167 (lemmaIsPrefixSameLengthThenSameList!129 lt!539857 Nil!16884 lt!539857))))

(declare-fun bm!102160 () Bool)

(declare-fun call!102166 () List!16952)

(assert (=> bm!102160 (= call!102166 (tail!2213 lt!539857))))

(declare-fun bm!102161 () Bool)

(declare-fun call!102168 () C!8752)

(assert (=> bm!102161 (= call!102168 (head!3118 lt!539857))))

(declare-fun d!462013 () Bool)

(declare-fun e!1000565 () Bool)

(assert (=> d!462013 e!1000565))

(declare-fun res!695441 () Bool)

(assert (=> d!462013 (=> (not res!695441) (not e!1000565))))

(declare-fun lt!539960 () tuple2!16444)

(assert (=> d!462013 (= res!695441 (= (++!4419 (_1!9596 lt!539960) (_2!9596 lt!539960)) lt!539857))))

(declare-fun e!1000572 () tuple2!16444)

(assert (=> d!462013 (= lt!539960 e!1000572)))

(declare-fun c!253030 () Bool)

(declare-fun lostCause!393 (Regex!4287) Bool)

(assert (=> d!462013 (= c!253030 (lostCause!393 (regex!2959 rule!240)))))

(declare-fun lt!539967 () Unit!26114)

(declare-fun Unit!26116 () Unit!26114)

(assert (=> d!462013 (= lt!539967 Unit!26116)))

(declare-fun getSuffix!675 (List!16952 List!16952) List!16952)

(assert (=> d!462013 (= (getSuffix!675 lt!539857 Nil!16884) lt!539857)))

(declare-fun lt!539970 () Unit!26114)

(declare-fun lt!539974 () Unit!26114)

(assert (=> d!462013 (= lt!539970 lt!539974)))

(declare-fun lt!539958 () List!16952)

(assert (=> d!462013 (= lt!539857 lt!539958)))

(declare-fun lemmaSamePrefixThenSameSuffix!627 (List!16952 List!16952 List!16952 List!16952 List!16952) Unit!26114)

(assert (=> d!462013 (= lt!539974 (lemmaSamePrefixThenSameSuffix!627 Nil!16884 lt!539857 Nil!16884 lt!539958 lt!539857))))

(assert (=> d!462013 (= lt!539958 (getSuffix!675 lt!539857 Nil!16884))))

(declare-fun lt!539963 () Unit!26114)

(declare-fun lt!539959 () Unit!26114)

(assert (=> d!462013 (= lt!539963 lt!539959)))

(declare-fun isPrefix!1265 (List!16952 List!16952) Bool)

(assert (=> d!462013 (isPrefix!1265 Nil!16884 (++!4419 Nil!16884 lt!539857))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!790 (List!16952 List!16952) Unit!26114)

(assert (=> d!462013 (= lt!539959 (lemmaConcatTwoListThenFirstIsPrefix!790 Nil!16884 lt!539857))))

(assert (=> d!462013 (validRegex!1716 (regex!2959 rule!240))))

(assert (=> d!462013 (= (findLongestMatchInner!340 (regex!2959 rule!240) Nil!16884 (size!13696 Nil!16884) lt!539857 lt!539857 (size!13696 lt!539857)) lt!539960)))

(declare-fun b!1558794 () Bool)

(declare-fun e!1000571 () Bool)

(assert (=> b!1558794 (= e!1000571 (>= (size!13696 (_1!9596 lt!539960)) (size!13696 Nil!16884)))))

(declare-fun b!1558795 () Bool)

(declare-fun e!1000568 () tuple2!16444)

(assert (=> b!1558795 (= e!1000568 (tuple2!16445 Nil!16884 lt!539857))))

(declare-fun b!1558796 () Bool)

(assert (=> b!1558796 (= e!1000572 e!1000570)))

(declare-fun c!253026 () Bool)

(assert (=> b!1558796 (= c!253026 (= (size!13696 Nil!16884) (size!13696 lt!539857)))))

(declare-fun b!1558797 () Bool)

(assert (=> b!1558797 (= e!1000565 e!1000571)))

(declare-fun res!695440 () Bool)

(assert (=> b!1558797 (=> res!695440 e!1000571)))

(assert (=> b!1558797 (= res!695440 (isEmpty!10143 (_1!9596 lt!539960)))))

(declare-fun bm!102162 () Bool)

(assert (=> bm!102162 (= call!102170 (nullable!1275 (regex!2959 rule!240)))))

(declare-fun b!1558798 () Bool)

(declare-fun lt!539984 () tuple2!16444)

(assert (=> b!1558798 (= e!1000568 lt!539984)))

(declare-fun bm!102163 () Bool)

(declare-fun lemmaIsPrefixRefl!895 (List!16952 List!16952) Unit!26114)

(assert (=> bm!102163 (= call!102164 (lemmaIsPrefixRefl!895 lt!539857 lt!539857))))

(declare-fun b!1558799 () Bool)

(declare-fun e!1000567 () Unit!26114)

(declare-fun Unit!26117 () Unit!26114)

(assert (=> b!1558799 (= e!1000567 Unit!26117)))

(declare-fun b!1558800 () Bool)

(declare-fun e!1000569 () tuple2!16444)

(assert (=> b!1558800 (= e!1000569 e!1000568)))

(declare-fun call!102165 () tuple2!16444)

(assert (=> b!1558800 (= lt!539984 call!102165)))

(declare-fun c!253031 () Bool)

(assert (=> b!1558800 (= c!253031 (isEmpty!10143 (_1!9596 lt!539984)))))

(declare-fun b!1558801 () Bool)

(assert (=> b!1558801 (= e!1000572 (tuple2!16445 Nil!16884 lt!539857))))

(declare-fun b!1558802 () Bool)

(assert (=> b!1558802 (= e!1000569 call!102165)))

(declare-fun b!1558803 () Bool)

(assert (=> b!1558803 (= e!1000566 (tuple2!16445 Nil!16884 lt!539857))))

(declare-fun bm!102164 () Bool)

(assert (=> bm!102164 (= call!102169 (isPrefix!1265 lt!539857 lt!539857))))

(declare-fun bm!102165 () Bool)

(declare-fun call!102171 () Regex!4287)

(declare-fun lt!539966 () List!16952)

(assert (=> bm!102165 (= call!102165 (findLongestMatchInner!340 call!102171 lt!539966 (+ (size!13696 Nil!16884) 1) call!102166 lt!539857 (size!13696 lt!539857)))))

(declare-fun b!1558804 () Bool)

(declare-fun c!253027 () Bool)

(assert (=> b!1558804 (= c!253027 call!102170)))

(declare-fun lt!539976 () Unit!26114)

(declare-fun lt!539972 () Unit!26114)

(assert (=> b!1558804 (= lt!539976 lt!539972)))

(declare-fun lt!539968 () C!8752)

(declare-fun lt!539962 () List!16952)

(assert (=> b!1558804 (= (++!4419 (++!4419 Nil!16884 (Cons!16884 lt!539968 Nil!16884)) lt!539962) lt!539857)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!444 (List!16952 C!8752 List!16952 List!16952) Unit!26114)

(assert (=> b!1558804 (= lt!539972 (lemmaMoveElementToOtherListKeepsConcatEq!444 Nil!16884 lt!539968 lt!539962 lt!539857))))

(assert (=> b!1558804 (= lt!539962 (tail!2213 lt!539857))))

(assert (=> b!1558804 (= lt!539968 (head!3118 lt!539857))))

(declare-fun lt!539969 () Unit!26114)

(declare-fun lt!539977 () Unit!26114)

(assert (=> b!1558804 (= lt!539969 lt!539977)))

(assert (=> b!1558804 (isPrefix!1265 (++!4419 Nil!16884 (Cons!16884 (head!3118 (getSuffix!675 lt!539857 Nil!16884)) Nil!16884)) lt!539857)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!118 (List!16952 List!16952) Unit!26114)

(assert (=> b!1558804 (= lt!539977 (lemmaAddHeadSuffixToPrefixStillPrefix!118 Nil!16884 lt!539857))))

(declare-fun lt!539971 () Unit!26114)

(declare-fun lt!539978 () Unit!26114)

(assert (=> b!1558804 (= lt!539971 lt!539978)))

(assert (=> b!1558804 (= lt!539978 (lemmaAddHeadSuffixToPrefixStillPrefix!118 Nil!16884 lt!539857))))

(assert (=> b!1558804 (= lt!539966 (++!4419 Nil!16884 (Cons!16884 (head!3118 lt!539857) Nil!16884)))))

(declare-fun lt!539979 () Unit!26114)

(assert (=> b!1558804 (= lt!539979 e!1000567)))

(declare-fun c!253028 () Bool)

(assert (=> b!1558804 (= c!253028 (= (size!13696 Nil!16884) (size!13696 lt!539857)))))

(declare-fun lt!539965 () Unit!26114)

(declare-fun lt!539981 () Unit!26114)

(assert (=> b!1558804 (= lt!539965 lt!539981)))

(assert (=> b!1558804 (<= (size!13696 Nil!16884) (size!13696 lt!539857))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!119 (List!16952 List!16952) Unit!26114)

(assert (=> b!1558804 (= lt!539981 (lemmaIsPrefixThenSmallerEqSize!119 Nil!16884 lt!539857))))

(assert (=> b!1558804 (= e!1000570 e!1000569)))

(declare-fun b!1558805 () Bool)

(declare-fun Unit!26118 () Unit!26114)

(assert (=> b!1558805 (= e!1000567 Unit!26118)))

(declare-fun lt!539983 () Unit!26114)

(assert (=> b!1558805 (= lt!539983 call!102164)))

(assert (=> b!1558805 call!102169))

(declare-fun lt!539957 () Unit!26114)

(assert (=> b!1558805 (= lt!539957 lt!539983)))

(declare-fun lt!539975 () Unit!26114)

(assert (=> b!1558805 (= lt!539975 call!102167)))

(assert (=> b!1558805 (= lt!539857 Nil!16884)))

(declare-fun lt!539980 () Unit!26114)

(assert (=> b!1558805 (= lt!539980 lt!539975)))

(assert (=> b!1558805 false))

(declare-fun bm!102166 () Bool)

(assert (=> bm!102166 (= call!102171 (derivativeStep!1027 (regex!2959 rule!240) call!102168))))

(declare-fun b!1558806 () Bool)

(assert (=> b!1558806 (= e!1000566 (tuple2!16445 Nil!16884 Nil!16884))))

(assert (= (and d!462013 c!253030) b!1558801))

(assert (= (and d!462013 (not c!253030)) b!1558796))

(assert (= (and b!1558796 c!253026) b!1558793))

(assert (= (and b!1558796 (not c!253026)) b!1558804))

(assert (= (and b!1558793 c!253029) b!1558806))

(assert (= (and b!1558793 (not c!253029)) b!1558803))

(assert (= (and b!1558804 c!253028) b!1558805))

(assert (= (and b!1558804 (not c!253028)) b!1558799))

(assert (= (and b!1558804 c!253027) b!1558800))

(assert (= (and b!1558804 (not c!253027)) b!1558802))

(assert (= (and b!1558800 c!253031) b!1558795))

(assert (= (and b!1558800 (not c!253031)) b!1558798))

(assert (= (or b!1558800 b!1558802) bm!102160))

(assert (= (or b!1558800 b!1558802) bm!102161))

(assert (= (or b!1558800 b!1558802) bm!102166))

(assert (= (or b!1558800 b!1558802) bm!102165))

(assert (= (or b!1558793 b!1558805) bm!102159))

(assert (= (or b!1558793 b!1558805) bm!102163))

(assert (= (or b!1558793 b!1558804) bm!102162))

(assert (= (or b!1558793 b!1558805) bm!102164))

(assert (= (and d!462013 res!695441) b!1558797))

(assert (= (and b!1558797 (not res!695440)) b!1558794))

(declare-fun m!1830796 () Bool)

(assert (=> bm!102159 m!1830796))

(declare-fun m!1830798 () Bool)

(assert (=> b!1558804 m!1830798))

(declare-fun m!1830800 () Bool)

(assert (=> b!1558804 m!1830800))

(declare-fun m!1830802 () Bool)

(assert (=> b!1558804 m!1830802))

(declare-fun m!1830804 () Bool)

(assert (=> b!1558804 m!1830804))

(assert (=> b!1558804 m!1830568))

(declare-fun m!1830806 () Bool)

(assert (=> b!1558804 m!1830806))

(declare-fun m!1830808 () Bool)

(assert (=> b!1558804 m!1830808))

(declare-fun m!1830810 () Bool)

(assert (=> b!1558804 m!1830810))

(declare-fun m!1830812 () Bool)

(assert (=> b!1558804 m!1830812))

(assert (=> b!1558804 m!1830578))

(assert (=> b!1558804 m!1830802))

(declare-fun m!1830814 () Bool)

(assert (=> b!1558804 m!1830814))

(declare-fun m!1830816 () Bool)

(assert (=> b!1558804 m!1830816))

(declare-fun m!1830818 () Bool)

(assert (=> b!1558804 m!1830818))

(assert (=> b!1558804 m!1830814))

(assert (=> b!1558804 m!1830810))

(declare-fun m!1830820 () Bool)

(assert (=> b!1558804 m!1830820))

(declare-fun m!1830822 () Bool)

(assert (=> b!1558800 m!1830822))

(assert (=> bm!102161 m!1830812))

(declare-fun m!1830824 () Bool)

(assert (=> b!1558794 m!1830824))

(assert (=> b!1558794 m!1830578))

(assert (=> bm!102162 m!1830784))

(declare-fun m!1830826 () Bool)

(assert (=> b!1558797 m!1830826))

(declare-fun m!1830828 () Bool)

(assert (=> bm!102164 m!1830828))

(assert (=> bm!102160 m!1830818))

(declare-fun m!1830830 () Bool)

(assert (=> bm!102166 m!1830830))

(assert (=> d!462013 m!1830674))

(declare-fun m!1830832 () Bool)

(assert (=> d!462013 m!1830832))

(declare-fun m!1830834 () Bool)

(assert (=> d!462013 m!1830834))

(declare-fun m!1830836 () Bool)

(assert (=> d!462013 m!1830836))

(declare-fun m!1830838 () Bool)

(assert (=> d!462013 m!1830838))

(declare-fun m!1830840 () Bool)

(assert (=> d!462013 m!1830840))

(assert (=> d!462013 m!1830840))

(declare-fun m!1830842 () Bool)

(assert (=> d!462013 m!1830842))

(assert (=> d!462013 m!1830802))

(assert (=> bm!102165 m!1830568))

(declare-fun m!1830844 () Bool)

(assert (=> bm!102165 m!1830844))

(declare-fun m!1830846 () Bool)

(assert (=> bm!102163 m!1830846))

(assert (=> b!1558609 d!462013))

(declare-fun bs!388819 () Bool)

(declare-fun d!462015 () Bool)

(assert (= bs!388819 (and d!462015 b!1558586)))

(declare-fun lambda!65981 () Int)

(assert (=> bs!388819 (= lambda!65981 lambda!65975)))

(assert (=> d!462015 true))

(assert (=> d!462015 (< (dynLambda!7509 order!9981 (toChars!4194 (transformation!2959 rule!240))) (dynLambda!7508 order!9979 lambda!65981))))

(assert (=> d!462015 true))

(assert (=> d!462015 (< (dynLambda!7507 order!9977 (toValue!4335 (transformation!2959 rule!240))) (dynLambda!7508 order!9979 lambda!65981))))

(assert (=> d!462015 (= (semiInverseModEq!1120 (toChars!4194 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))) (Forall!616 lambda!65981))))

(declare-fun bs!388820 () Bool)

(assert (= bs!388820 d!462015))

(declare-fun m!1830848 () Bool)

(assert (=> bs!388820 m!1830848))

(assert (=> b!1558609 d!462015))

(declare-fun d!462017 () Bool)

(assert (=> d!462017 (= (isEmpty!10143 (_1!9596 lt!539841)) ((_ is Nil!16884) (_1!9596 lt!539841)))))

(assert (=> b!1558609 d!462017))

(declare-fun d!462019 () Bool)

(declare-fun e!1000575 () Bool)

(assert (=> d!462019 e!1000575))

(declare-fun res!695444 () Bool)

(assert (=> d!462019 (=> (not res!695444) (not e!1000575))))

(assert (=> d!462019 (= res!695444 (semiInverseModEq!1120 (toChars!4194 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))))))

(declare-fun Unit!26119 () Unit!26114)

(assert (=> d!462019 (= (lemmaInv!434 (transformation!2959 rule!240)) Unit!26119)))

(declare-fun b!1558813 () Bool)

(assert (=> b!1558813 (= e!1000575 (equivClasses!1061 (toChars!4194 (transformation!2959 rule!240)) (toValue!4335 (transformation!2959 rule!240))))))

(assert (= (and d!462019 res!695444) b!1558813))

(assert (=> d!462019 m!1830570))

(assert (=> b!1558813 m!1830754))

(assert (=> b!1558609 d!462019))

(declare-fun d!462021 () Bool)

(declare-fun e!1000578 () Bool)

(assert (=> d!462021 e!1000578))

(declare-fun res!695447 () Bool)

(assert (=> d!462021 (=> res!695447 e!1000578)))

(assert (=> d!462021 (= res!695447 (isEmpty!10143 (_1!9596 (findLongestMatchInner!340 (regex!2959 rule!240) Nil!16884 (size!13696 Nil!16884) lt!539857 lt!539857 (size!13696 lt!539857)))))))

(declare-fun lt!539987 () Unit!26114)

(declare-fun choose!9304 (Regex!4287 List!16952) Unit!26114)

(assert (=> d!462021 (= lt!539987 (choose!9304 (regex!2959 rule!240) lt!539857))))

(assert (=> d!462021 (validRegex!1716 (regex!2959 rule!240))))

(assert (=> d!462021 (= (longestMatchIsAcceptedByMatchOrIsEmpty!324 (regex!2959 rule!240) lt!539857) lt!539987)))

(declare-fun b!1558816 () Bool)

(assert (=> b!1558816 (= e!1000578 (matchR!1885 (regex!2959 rule!240) (_1!9596 (findLongestMatchInner!340 (regex!2959 rule!240) Nil!16884 (size!13696 Nil!16884) lt!539857 lt!539857 (size!13696 lt!539857)))))))

(assert (= (and d!462021 (not res!695447)) b!1558816))

(assert (=> d!462021 m!1830714))

(assert (=> d!462021 m!1830568))

(assert (=> d!462021 m!1830578))

(declare-fun m!1830850 () Bool)

(assert (=> d!462021 m!1830850))

(assert (=> d!462021 m!1830578))

(assert (=> d!462021 m!1830568))

(assert (=> d!462021 m!1830580))

(assert (=> d!462021 m!1830674))

(assert (=> b!1558816 m!1830578))

(assert (=> b!1558816 m!1830568))

(assert (=> b!1558816 m!1830578))

(assert (=> b!1558816 m!1830568))

(assert (=> b!1558816 m!1830580))

(assert (=> b!1558816 m!1830702))

(assert (=> b!1558609 d!462021))

(declare-fun d!462023 () Bool)

(declare-fun lt!539988 () Int)

(assert (=> d!462023 (>= lt!539988 0)))

(declare-fun e!1000579 () Int)

(assert (=> d!462023 (= lt!539988 e!1000579)))

(declare-fun c!253032 () Bool)

(assert (=> d!462023 (= c!253032 ((_ is Nil!16884) Nil!16884))))

(assert (=> d!462023 (= (size!13696 Nil!16884) lt!539988)))

(declare-fun b!1558817 () Bool)

(assert (=> b!1558817 (= e!1000579 0)))

(declare-fun b!1558818 () Bool)

(assert (=> b!1558818 (= e!1000579 (+ 1 (size!13696 (t!141455 Nil!16884))))))

(assert (= (and d!462023 c!253032) b!1558817))

(assert (= (and d!462023 (not c!253032)) b!1558818))

(declare-fun m!1830852 () Bool)

(assert (=> b!1558818 m!1830852))

(assert (=> b!1558609 d!462023))

(declare-fun e!1000586 () Bool)

(declare-fun setElem!11024 () Context!1610)

(declare-fun tp!457797 () Bool)

(declare-fun setRes!11024 () Bool)

(declare-fun setNonEmpty!11024 () Bool)

(declare-fun inv!22183 (Context!1610) Bool)

(assert (=> setNonEmpty!11024 (= setRes!11024 (and tp!457797 (inv!22183 setElem!11024) e!1000586))))

(declare-fun setRest!11024 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11024 (= (_2!9593 (h!22289 mapDefault!8516)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11024 true) setRest!11024))))

(declare-fun e!1000587 () Bool)

(assert (=> b!1558594 (= tp!457774 e!1000587)))

(declare-fun b!1558827 () Bool)

(declare-fun e!1000588 () Bool)

(declare-fun tp!457796 () Bool)

(assert (=> b!1558827 (= e!1000588 tp!457796)))

(declare-fun tp!457799 () Bool)

(declare-fun b!1558828 () Bool)

(declare-fun tp_is_empty!7077 () Bool)

(assert (=> b!1558828 (= e!1000587 (and (inv!22183 (_1!9592 (_1!9593 (h!22289 mapDefault!8516)))) e!1000588 tp_is_empty!7077 setRes!11024 tp!457799))))

(declare-fun condSetEmpty!11024 () Bool)

(assert (=> b!1558828 (= condSetEmpty!11024 (= (_2!9593 (h!22289 mapDefault!8516)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11024 () Bool)

(assert (=> setIsEmpty!11024 setRes!11024))

(declare-fun b!1558829 () Bool)

(declare-fun tp!457798 () Bool)

(assert (=> b!1558829 (= e!1000586 tp!457798)))

(assert (= b!1558828 b!1558827))

(assert (= (and b!1558828 condSetEmpty!11024) setIsEmpty!11024))

(assert (= (and b!1558828 (not condSetEmpty!11024)) setNonEmpty!11024))

(assert (= setNonEmpty!11024 b!1558829))

(assert (= (and b!1558594 ((_ is Cons!16888) mapDefault!8516)) b!1558828))

(declare-fun m!1830854 () Bool)

(assert (=> setNonEmpty!11024 m!1830854))

(declare-fun m!1830856 () Bool)

(assert (=> b!1558828 m!1830856))

(declare-fun setNonEmpty!11027 () Bool)

(declare-fun tp!457814 () Bool)

(declare-fun setRes!11027 () Bool)

(declare-fun e!1000596 () Bool)

(declare-fun setElem!11027 () Context!1610)

(assert (=> setNonEmpty!11027 (= setRes!11027 (and tp!457814 (inv!22183 setElem!11027) e!1000596))))

(declare-fun setRest!11027 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11027 (= (_2!9591 (h!22288 (zeroValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11027 true) setRest!11027))))

(declare-fun b!1558838 () Bool)

(declare-fun tp!457812 () Bool)

(assert (=> b!1558838 (= e!1000596 tp!457812)))

(declare-fun b!1558839 () Bool)

(declare-fun e!1000597 () Bool)

(declare-fun tp!457813 () Bool)

(declare-fun tp!457810 () Bool)

(declare-fun e!1000595 () Bool)

(assert (=> b!1558839 (= e!1000595 (and tp!457810 (inv!22183 (_2!9590 (_1!9591 (h!22288 (zeroValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))))) e!1000597 tp_is_empty!7077 setRes!11027 tp!457813))))

(declare-fun condSetEmpty!11027 () Bool)

(assert (=> b!1558839 (= condSetEmpty!11027 (= (_2!9591 (h!22288 (zeroValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11027 () Bool)

(assert (=> setIsEmpty!11027 setRes!11027))

(declare-fun b!1558840 () Bool)

(declare-fun tp!457811 () Bool)

(assert (=> b!1558840 (= e!1000597 tp!457811)))

(assert (=> b!1558622 (= tp!457771 e!1000595)))

(assert (= b!1558839 b!1558840))

(assert (= (and b!1558839 condSetEmpty!11027) setIsEmpty!11027))

(assert (= (and b!1558839 (not condSetEmpty!11027)) setNonEmpty!11027))

(assert (= setNonEmpty!11027 b!1558838))

(assert (= (and b!1558622 ((_ is Cons!16887) (zeroValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))) b!1558839))

(declare-fun m!1830858 () Bool)

(assert (=> setNonEmpty!11027 m!1830858))

(declare-fun m!1830860 () Bool)

(assert (=> b!1558839 m!1830860))

(declare-fun setElem!11028 () Context!1610)

(declare-fun e!1000599 () Bool)

(declare-fun setRes!11028 () Bool)

(declare-fun tp!457819 () Bool)

(declare-fun setNonEmpty!11028 () Bool)

(assert (=> setNonEmpty!11028 (= setRes!11028 (and tp!457819 (inv!22183 setElem!11028) e!1000599))))

(declare-fun setRest!11028 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11028 (= (_2!9591 (h!22288 (minValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11028 true) setRest!11028))))

(declare-fun b!1558841 () Bool)

(declare-fun tp!457817 () Bool)

(assert (=> b!1558841 (= e!1000599 tp!457817)))

(declare-fun b!1558842 () Bool)

(declare-fun tp!457815 () Bool)

(declare-fun e!1000598 () Bool)

(declare-fun tp!457818 () Bool)

(declare-fun e!1000600 () Bool)

(assert (=> b!1558842 (= e!1000598 (and tp!457815 (inv!22183 (_2!9590 (_1!9591 (h!22288 (minValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))))) e!1000600 tp_is_empty!7077 setRes!11028 tp!457818))))

(declare-fun condSetEmpty!11028 () Bool)

(assert (=> b!1558842 (= condSetEmpty!11028 (= (_2!9591 (h!22288 (minValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11028 () Bool)

(assert (=> setIsEmpty!11028 setRes!11028))

(declare-fun b!1558843 () Bool)

(declare-fun tp!457816 () Bool)

(assert (=> b!1558843 (= e!1000600 tp!457816)))

(assert (=> b!1558622 (= tp!457781 e!1000598)))

(assert (= b!1558842 b!1558843))

(assert (= (and b!1558842 condSetEmpty!11028) setIsEmpty!11028))

(assert (= (and b!1558842 (not condSetEmpty!11028)) setNonEmpty!11028))

(assert (= setNonEmpty!11028 b!1558841))

(assert (= (and b!1558622 ((_ is Cons!16887) (minValue!2088 (v!23745 (underlying!3871 (v!23746 (underlying!3872 (cache!2156 cacheDown!768)))))))) b!1558842))

(declare-fun m!1830862 () Bool)

(assert (=> setNonEmpty!11028 m!1830862))

(declare-fun m!1830864 () Bool)

(assert (=> b!1558842 m!1830864))

(declare-fun e!1000605 () Bool)

(declare-fun b!1558852 () Bool)

(declare-fun tp!457826 () Bool)

(declare-fun tp!457827 () Bool)

(assert (=> b!1558852 (= e!1000605 (and (inv!22179 (left!13711 (c!252992 totalInput!568))) tp!457826 (inv!22179 (right!14041 (c!252992 totalInput!568))) tp!457827))))

(declare-fun b!1558854 () Bool)

(declare-fun e!1000606 () Bool)

(declare-fun tp!457828 () Bool)

(assert (=> b!1558854 (= e!1000606 tp!457828)))

(declare-fun b!1558853 () Bool)

(declare-fun inv!22184 (IArray!11159) Bool)

(assert (=> b!1558853 (= e!1000605 (and (inv!22184 (xs!8377 (c!252992 totalInput!568))) e!1000606))))

(assert (=> b!1558621 (= tp!457761 (and (inv!22179 (c!252992 totalInput!568)) e!1000605))))

(assert (= (and b!1558621 ((_ is Node!5577) (c!252992 totalInput!568))) b!1558852))

(assert (= b!1558853 b!1558854))

(assert (= (and b!1558621 ((_ is Leaf!8266) (c!252992 totalInput!568))) b!1558853))

(declare-fun m!1830866 () Bool)

(assert (=> b!1558852 m!1830866))

(declare-fun m!1830868 () Bool)

(assert (=> b!1558852 m!1830868))

(declare-fun m!1830870 () Bool)

(assert (=> b!1558853 m!1830870))

(assert (=> b!1558621 m!1830566))

(declare-fun setIsEmpty!11033 () Bool)

(declare-fun setRes!11033 () Bool)

(assert (=> setIsEmpty!11033 setRes!11033))

(declare-fun tp!457849 () Bool)

(declare-fun setNonEmpty!11033 () Bool)

(declare-fun e!1000620 () Bool)

(declare-fun setElem!11034 () Context!1610)

(assert (=> setNonEmpty!11033 (= setRes!11033 (and tp!457849 (inv!22183 setElem!11034) e!1000620))))

(declare-fun mapDefault!8519 () List!16956)

(declare-fun setRest!11033 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11033 (= (_2!9593 (h!22289 mapDefault!8519)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11034 true) setRest!11033))))

(declare-fun b!1558869 () Bool)

(declare-fun tp!457851 () Bool)

(declare-fun e!1000622 () Bool)

(declare-fun e!1000621 () Bool)

(assert (=> b!1558869 (= e!1000621 (and (inv!22183 (_1!9592 (_1!9593 (h!22289 mapDefault!8519)))) e!1000622 tp_is_empty!7077 setRes!11033 tp!457851))))

(declare-fun condSetEmpty!11033 () Bool)

(assert (=> b!1558869 (= condSetEmpty!11033 (= (_2!9593 (h!22289 mapDefault!8519)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun e!1000619 () Bool)

(declare-fun e!1000624 () Bool)

(declare-fun mapValue!8519 () List!16956)

(declare-fun b!1558870 () Bool)

(declare-fun setRes!11034 () Bool)

(declare-fun tp!457854 () Bool)

(assert (=> b!1558870 (= e!1000619 (and (inv!22183 (_1!9592 (_1!9593 (h!22289 mapValue!8519)))) e!1000624 tp_is_empty!7077 setRes!11034 tp!457854))))

(declare-fun condSetEmpty!11034 () Bool)

(assert (=> b!1558870 (= condSetEmpty!11034 (= (_2!9593 (h!22289 mapValue!8519)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun mapNonEmpty!8519 () Bool)

(declare-fun mapRes!8519 () Bool)

(declare-fun tp!457853 () Bool)

(assert (=> mapNonEmpty!8519 (= mapRes!8519 (and tp!457853 e!1000619))))

(declare-fun mapKey!8519 () (_ BitVec 32))

(declare-fun mapRest!8519 () (Array (_ BitVec 32) List!16956))

(assert (=> mapNonEmpty!8519 (= mapRest!8516 (store mapRest!8519 mapKey!8519 mapValue!8519))))

(declare-fun condMapEmpty!8519 () Bool)

(assert (=> mapNonEmpty!8516 (= condMapEmpty!8519 (= mapRest!8516 ((as const (Array (_ BitVec 32) List!16956)) mapDefault!8519)))))

(assert (=> mapNonEmpty!8516 (= tp!457782 (and e!1000621 mapRes!8519))))

(declare-fun b!1558871 () Bool)

(declare-fun tp!457852 () Bool)

(assert (=> b!1558871 (= e!1000624 tp!457852)))

(declare-fun b!1558872 () Bool)

(declare-fun tp!457850 () Bool)

(assert (=> b!1558872 (= e!1000622 tp!457850)))

(declare-fun mapIsEmpty!8519 () Bool)

(assert (=> mapIsEmpty!8519 mapRes!8519))

(declare-fun b!1558873 () Bool)

(declare-fun e!1000623 () Bool)

(declare-fun tp!457848 () Bool)

(assert (=> b!1558873 (= e!1000623 tp!457848)))

(declare-fun b!1558874 () Bool)

(declare-fun tp!457847 () Bool)

(assert (=> b!1558874 (= e!1000620 tp!457847)))

(declare-fun tp!457855 () Bool)

(declare-fun setElem!11033 () Context!1610)

(declare-fun setNonEmpty!11034 () Bool)

(assert (=> setNonEmpty!11034 (= setRes!11034 (and tp!457855 (inv!22183 setElem!11033) e!1000623))))

(declare-fun setRest!11034 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11034 (= (_2!9593 (h!22289 mapValue!8519)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11033 true) setRest!11034))))

(declare-fun setIsEmpty!11034 () Bool)

(assert (=> setIsEmpty!11034 setRes!11034))

(assert (= (and mapNonEmpty!8516 condMapEmpty!8519) mapIsEmpty!8519))

(assert (= (and mapNonEmpty!8516 (not condMapEmpty!8519)) mapNonEmpty!8519))

(assert (= b!1558870 b!1558871))

(assert (= (and b!1558870 condSetEmpty!11034) setIsEmpty!11034))

(assert (= (and b!1558870 (not condSetEmpty!11034)) setNonEmpty!11034))

(assert (= setNonEmpty!11034 b!1558873))

(assert (= (and mapNonEmpty!8519 ((_ is Cons!16888) mapValue!8519)) b!1558870))

(assert (= b!1558869 b!1558872))

(assert (= (and b!1558869 condSetEmpty!11033) setIsEmpty!11033))

(assert (= (and b!1558869 (not condSetEmpty!11033)) setNonEmpty!11033))

(assert (= setNonEmpty!11033 b!1558874))

(assert (= (and mapNonEmpty!8516 ((_ is Cons!16888) mapDefault!8519)) b!1558869))

(declare-fun m!1830872 () Bool)

(assert (=> b!1558870 m!1830872))

(declare-fun m!1830874 () Bool)

(assert (=> mapNonEmpty!8519 m!1830874))

(declare-fun m!1830876 () Bool)

(assert (=> setNonEmpty!11033 m!1830876))

(declare-fun m!1830878 () Bool)

(assert (=> setNonEmpty!11034 m!1830878))

(declare-fun m!1830880 () Bool)

(assert (=> b!1558869 m!1830880))

(declare-fun tp!457857 () Bool)

(declare-fun setRes!11035 () Bool)

(declare-fun e!1000625 () Bool)

(declare-fun setElem!11035 () Context!1610)

(declare-fun setNonEmpty!11035 () Bool)

(assert (=> setNonEmpty!11035 (= setRes!11035 (and tp!457857 (inv!22183 setElem!11035) e!1000625))))

(declare-fun setRest!11035 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11035 (= (_2!9593 (h!22289 mapValue!8514)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11035 true) setRest!11035))))

(declare-fun e!1000626 () Bool)

(assert (=> mapNonEmpty!8516 (= tp!457785 e!1000626)))

(declare-fun b!1558875 () Bool)

(declare-fun e!1000627 () Bool)

(declare-fun tp!457856 () Bool)

(assert (=> b!1558875 (= e!1000627 tp!457856)))

(declare-fun tp!457859 () Bool)

(declare-fun b!1558876 () Bool)

(assert (=> b!1558876 (= e!1000626 (and (inv!22183 (_1!9592 (_1!9593 (h!22289 mapValue!8514)))) e!1000627 tp_is_empty!7077 setRes!11035 tp!457859))))

(declare-fun condSetEmpty!11035 () Bool)

(assert (=> b!1558876 (= condSetEmpty!11035 (= (_2!9593 (h!22289 mapValue!8514)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11035 () Bool)

(assert (=> setIsEmpty!11035 setRes!11035))

(declare-fun b!1558877 () Bool)

(declare-fun tp!457858 () Bool)

(assert (=> b!1558877 (= e!1000625 tp!457858)))

(assert (= b!1558876 b!1558875))

(assert (= (and b!1558876 condSetEmpty!11035) setIsEmpty!11035))

(assert (= (and b!1558876 (not condSetEmpty!11035)) setNonEmpty!11035))

(assert (= setNonEmpty!11035 b!1558877))

(assert (= (and mapNonEmpty!8516 ((_ is Cons!16888) mapValue!8514)) b!1558876))

(declare-fun m!1830882 () Bool)

(assert (=> setNonEmpty!11035 m!1830882))

(declare-fun m!1830884 () Bool)

(assert (=> b!1558876 m!1830884))

(declare-fun b!1558891 () Bool)

(declare-fun e!1000630 () Bool)

(declare-fun tp!457873 () Bool)

(declare-fun tp!457874 () Bool)

(assert (=> b!1558891 (= e!1000630 (and tp!457873 tp!457874))))

(declare-fun b!1558888 () Bool)

(assert (=> b!1558888 (= e!1000630 tp_is_empty!7077)))

(declare-fun b!1558890 () Bool)

(declare-fun tp!457871 () Bool)

(assert (=> b!1558890 (= e!1000630 tp!457871)))

(declare-fun b!1558889 () Bool)

(declare-fun tp!457870 () Bool)

(declare-fun tp!457872 () Bool)

(assert (=> b!1558889 (= e!1000630 (and tp!457870 tp!457872))))

(assert (=> b!1558612 (= tp!457767 e!1000630)))

(assert (= (and b!1558612 ((_ is ElementMatch!4287) (regex!2959 rule!240))) b!1558888))

(assert (= (and b!1558612 ((_ is Concat!7337) (regex!2959 rule!240))) b!1558889))

(assert (= (and b!1558612 ((_ is Star!4287) (regex!2959 rule!240))) b!1558890))

(assert (= (and b!1558612 ((_ is Union!4287) (regex!2959 rule!240))) b!1558891))

(declare-fun tp!457875 () Bool)

(declare-fun e!1000631 () Bool)

(declare-fun tp!457876 () Bool)

(declare-fun b!1558892 () Bool)

(assert (=> b!1558892 (= e!1000631 (and (inv!22179 (left!13711 (c!252992 (totalInput!2484 cacheFurthestNullable!103)))) tp!457875 (inv!22179 (right!14041 (c!252992 (totalInput!2484 cacheFurthestNullable!103)))) tp!457876))))

(declare-fun b!1558894 () Bool)

(declare-fun e!1000632 () Bool)

(declare-fun tp!457877 () Bool)

(assert (=> b!1558894 (= e!1000632 tp!457877)))

(declare-fun b!1558893 () Bool)

(assert (=> b!1558893 (= e!1000631 (and (inv!22184 (xs!8377 (c!252992 (totalInput!2484 cacheFurthestNullable!103)))) e!1000632))))

(assert (=> b!1558598 (= tp!457777 (and (inv!22179 (c!252992 (totalInput!2484 cacheFurthestNullable!103))) e!1000631))))

(assert (= (and b!1558598 ((_ is Node!5577) (c!252992 (totalInput!2484 cacheFurthestNullable!103)))) b!1558892))

(assert (= b!1558893 b!1558894))

(assert (= (and b!1558598 ((_ is Leaf!8266) (c!252992 (totalInput!2484 cacheFurthestNullable!103)))) b!1558893))

(declare-fun m!1830886 () Bool)

(assert (=> b!1558892 m!1830886))

(declare-fun m!1830888 () Bool)

(assert (=> b!1558892 m!1830888))

(declare-fun m!1830890 () Bool)

(assert (=> b!1558893 m!1830890))

(assert (=> b!1558598 m!1830656))

(declare-fun e!1000638 () Bool)

(assert (=> b!1558615 (= tp!457772 e!1000638)))

(declare-fun b!1558901 () Bool)

(declare-fun setRes!11038 () Bool)

(declare-fun tp!457885 () Bool)

(assert (=> b!1558901 (= e!1000638 (and setRes!11038 tp!457885))))

(declare-fun condSetEmpty!11038 () Bool)

(assert (=> b!1558901 (= condSetEmpty!11038 (= (_1!9588 (_1!9589 (h!22287 (zeroValue!2087 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11038 () Bool)

(assert (=> setIsEmpty!11038 setRes!11038))

(declare-fun b!1558902 () Bool)

(declare-fun e!1000637 () Bool)

(declare-fun tp!457886 () Bool)

(assert (=> b!1558902 (= e!1000637 tp!457886)))

(declare-fun tp!457884 () Bool)

(declare-fun setElem!11038 () Context!1610)

(declare-fun setNonEmpty!11038 () Bool)

(assert (=> setNonEmpty!11038 (= setRes!11038 (and tp!457884 (inv!22183 setElem!11038) e!1000637))))

(declare-fun setRest!11038 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11038 (= (_1!9588 (_1!9589 (h!22287 (zeroValue!2087 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11038 true) setRest!11038))))

(assert (= (and b!1558901 condSetEmpty!11038) setIsEmpty!11038))

(assert (= (and b!1558901 (not condSetEmpty!11038)) setNonEmpty!11038))

(assert (= setNonEmpty!11038 b!1558902))

(assert (= (and b!1558615 ((_ is Cons!16886) (zeroValue!2087 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103)))))))) b!1558901))

(declare-fun m!1830892 () Bool)

(assert (=> setNonEmpty!11038 m!1830892))

(declare-fun e!1000640 () Bool)

(assert (=> b!1558615 (= tp!457786 e!1000640)))

(declare-fun b!1558903 () Bool)

(declare-fun setRes!11039 () Bool)

(declare-fun tp!457888 () Bool)

(assert (=> b!1558903 (= e!1000640 (and setRes!11039 tp!457888))))

(declare-fun condSetEmpty!11039 () Bool)

(assert (=> b!1558903 (= condSetEmpty!11039 (= (_1!9588 (_1!9589 (h!22287 (minValue!2087 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11039 () Bool)

(assert (=> setIsEmpty!11039 setRes!11039))

(declare-fun b!1558904 () Bool)

(declare-fun e!1000639 () Bool)

(declare-fun tp!457889 () Bool)

(assert (=> b!1558904 (= e!1000639 tp!457889)))

(declare-fun setElem!11039 () Context!1610)

(declare-fun setNonEmpty!11039 () Bool)

(declare-fun tp!457887 () Bool)

(assert (=> setNonEmpty!11039 (= setRes!11039 (and tp!457887 (inv!22183 setElem!11039) e!1000639))))

(declare-fun setRest!11039 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11039 (= (_1!9588 (_1!9589 (h!22287 (minValue!2087 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11039 true) setRest!11039))))

(assert (= (and b!1558903 condSetEmpty!11039) setIsEmpty!11039))

(assert (= (and b!1558903 (not condSetEmpty!11039)) setNonEmpty!11039))

(assert (= setNonEmpty!11039 b!1558904))

(assert (= (and b!1558615 ((_ is Cons!16886) (minValue!2087 (v!23743 (underlying!3869 (v!23744 (underlying!3870 (cache!2155 cacheFurthestNullable!103)))))))) b!1558903))

(declare-fun m!1830894 () Bool)

(assert (=> setNonEmpty!11039 m!1830894))

(declare-fun tp!457894 () Bool)

(declare-fun e!1000642 () Bool)

(declare-fun setRes!11040 () Bool)

(declare-fun setNonEmpty!11040 () Bool)

(declare-fun setElem!11040 () Context!1610)

(assert (=> setNonEmpty!11040 (= setRes!11040 (and tp!457894 (inv!22183 setElem!11040) e!1000642))))

(declare-fun setRest!11040 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11040 (= (_2!9591 (h!22288 mapDefault!8515)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11040 true) setRest!11040))))

(declare-fun b!1558905 () Bool)

(declare-fun tp!457892 () Bool)

(assert (=> b!1558905 (= e!1000642 tp!457892)))

(declare-fun tp!457890 () Bool)

(declare-fun tp!457893 () Bool)

(declare-fun e!1000641 () Bool)

(declare-fun b!1558906 () Bool)

(declare-fun e!1000643 () Bool)

(assert (=> b!1558906 (= e!1000641 (and tp!457890 (inv!22183 (_2!9590 (_1!9591 (h!22288 mapDefault!8515)))) e!1000643 tp_is_empty!7077 setRes!11040 tp!457893))))

(declare-fun condSetEmpty!11040 () Bool)

(assert (=> b!1558906 (= condSetEmpty!11040 (= (_2!9591 (h!22288 mapDefault!8515)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11040 () Bool)

(assert (=> setIsEmpty!11040 setRes!11040))

(declare-fun b!1558907 () Bool)

(declare-fun tp!457891 () Bool)

(assert (=> b!1558907 (= e!1000643 tp!457891)))

(assert (=> b!1558588 (= tp!457768 e!1000641)))

(assert (= b!1558906 b!1558907))

(assert (= (and b!1558906 condSetEmpty!11040) setIsEmpty!11040))

(assert (= (and b!1558906 (not condSetEmpty!11040)) setNonEmpty!11040))

(assert (= setNonEmpty!11040 b!1558905))

(assert (= (and b!1558588 ((_ is Cons!16887) mapDefault!8515)) b!1558906))

(declare-fun m!1830896 () Bool)

(assert (=> setNonEmpty!11040 m!1830896))

(declare-fun m!1830898 () Bool)

(assert (=> b!1558906 m!1830898))

(declare-fun setIsEmpty!11045 () Bool)

(declare-fun setRes!11045 () Bool)

(assert (=> setIsEmpty!11045 setRes!11045))

(declare-fun b!1558922 () Bool)

(declare-fun mapDefault!8522 () List!16955)

(declare-fun e!1000659 () Bool)

(declare-fun e!1000657 () Bool)

(declare-fun tp!457927 () Bool)

(declare-fun setRes!11046 () Bool)

(declare-fun tp!457920 () Bool)

(assert (=> b!1558922 (= e!1000659 (and tp!457927 (inv!22183 (_2!9590 (_1!9591 (h!22288 mapDefault!8522)))) e!1000657 tp_is_empty!7077 setRes!11046 tp!457920))))

(declare-fun condSetEmpty!11046 () Bool)

(assert (=> b!1558922 (= condSetEmpty!11046 (= (_2!9591 (h!22288 mapDefault!8522)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun b!1558923 () Bool)

(declare-fun e!1000660 () Bool)

(declare-fun tp!457923 () Bool)

(assert (=> b!1558923 (= e!1000660 tp!457923)))

(declare-fun b!1558924 () Bool)

(declare-fun e!1000658 () Bool)

(declare-fun tp!457925 () Bool)

(assert (=> b!1558924 (= e!1000658 tp!457925)))

(declare-fun mapNonEmpty!8522 () Bool)

(declare-fun mapRes!8522 () Bool)

(declare-fun tp!457926 () Bool)

(declare-fun e!1000656 () Bool)

(assert (=> mapNonEmpty!8522 (= mapRes!8522 (and tp!457926 e!1000656))))

(declare-fun mapKey!8522 () (_ BitVec 32))

(declare-fun mapRest!8522 () (Array (_ BitVec 32) List!16955))

(declare-fun mapValue!8522 () List!16955)

(assert (=> mapNonEmpty!8522 (= mapRest!8515 (store mapRest!8522 mapKey!8522 mapValue!8522))))

(declare-fun setNonEmpty!11045 () Bool)

(declare-fun setElem!11045 () Context!1610)

(declare-fun tp!457918 () Bool)

(assert (=> setNonEmpty!11045 (= setRes!11045 (and tp!457918 (inv!22183 setElem!11045) e!1000660))))

(declare-fun setRest!11046 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11045 (= (_2!9591 (h!22288 mapValue!8522)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11045 true) setRest!11046))))

(declare-fun tp!457921 () Bool)

(declare-fun b!1558925 () Bool)

(declare-fun tp!457924 () Bool)

(assert (=> b!1558925 (= e!1000656 (and tp!457924 (inv!22183 (_2!9590 (_1!9591 (h!22288 mapValue!8522)))) e!1000658 tp_is_empty!7077 setRes!11045 tp!457921))))

(declare-fun condSetEmpty!11045 () Bool)

(assert (=> b!1558925 (= condSetEmpty!11045 (= (_2!9591 (h!22288 mapValue!8522)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun b!1558926 () Bool)

(declare-fun tp!457917 () Bool)

(assert (=> b!1558926 (= e!1000657 tp!457917)))

(declare-fun mapIsEmpty!8522 () Bool)

(assert (=> mapIsEmpty!8522 mapRes!8522))

(declare-fun b!1558927 () Bool)

(declare-fun e!1000661 () Bool)

(declare-fun tp!457922 () Bool)

(assert (=> b!1558927 (= e!1000661 tp!457922)))

(declare-fun condMapEmpty!8522 () Bool)

(assert (=> mapNonEmpty!8514 (= condMapEmpty!8522 (= mapRest!8515 ((as const (Array (_ BitVec 32) List!16955)) mapDefault!8522)))))

(assert (=> mapNonEmpty!8514 (= tp!457770 (and e!1000659 mapRes!8522))))

(declare-fun setElem!11046 () Context!1610)

(declare-fun setNonEmpty!11046 () Bool)

(declare-fun tp!457919 () Bool)

(assert (=> setNonEmpty!11046 (= setRes!11046 (and tp!457919 (inv!22183 setElem!11046) e!1000661))))

(declare-fun setRest!11045 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11046 (= (_2!9591 (h!22288 mapDefault!8522)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11046 true) setRest!11045))))

(declare-fun setIsEmpty!11046 () Bool)

(assert (=> setIsEmpty!11046 setRes!11046))

(assert (= (and mapNonEmpty!8514 condMapEmpty!8522) mapIsEmpty!8522))

(assert (= (and mapNonEmpty!8514 (not condMapEmpty!8522)) mapNonEmpty!8522))

(assert (= b!1558925 b!1558924))

(assert (= (and b!1558925 condSetEmpty!11045) setIsEmpty!11045))

(assert (= (and b!1558925 (not condSetEmpty!11045)) setNonEmpty!11045))

(assert (= setNonEmpty!11045 b!1558923))

(assert (= (and mapNonEmpty!8522 ((_ is Cons!16887) mapValue!8522)) b!1558925))

(assert (= b!1558922 b!1558926))

(assert (= (and b!1558922 condSetEmpty!11046) setIsEmpty!11046))

(assert (= (and b!1558922 (not condSetEmpty!11046)) setNonEmpty!11046))

(assert (= setNonEmpty!11046 b!1558927))

(assert (= (and mapNonEmpty!8514 ((_ is Cons!16887) mapDefault!8522)) b!1558922))

(declare-fun m!1830900 () Bool)

(assert (=> b!1558922 m!1830900))

(declare-fun m!1830902 () Bool)

(assert (=> setNonEmpty!11046 m!1830902))

(declare-fun m!1830904 () Bool)

(assert (=> setNonEmpty!11045 m!1830904))

(declare-fun m!1830906 () Bool)

(assert (=> b!1558925 m!1830906))

(declare-fun m!1830908 () Bool)

(assert (=> mapNonEmpty!8522 m!1830908))

(declare-fun setNonEmpty!11047 () Bool)

(declare-fun e!1000663 () Bool)

(declare-fun tp!457932 () Bool)

(declare-fun setRes!11047 () Bool)

(declare-fun setElem!11047 () Context!1610)

(assert (=> setNonEmpty!11047 (= setRes!11047 (and tp!457932 (inv!22183 setElem!11047) e!1000663))))

(declare-fun setRest!11047 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11047 (= (_2!9591 (h!22288 mapValue!8515)) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11047 true) setRest!11047))))

(declare-fun b!1558928 () Bool)

(declare-fun tp!457930 () Bool)

(assert (=> b!1558928 (= e!1000663 tp!457930)))

(declare-fun tp!457928 () Bool)

(declare-fun e!1000664 () Bool)

(declare-fun e!1000662 () Bool)

(declare-fun b!1558929 () Bool)

(declare-fun tp!457931 () Bool)

(assert (=> b!1558929 (= e!1000662 (and tp!457928 (inv!22183 (_2!9590 (_1!9591 (h!22288 mapValue!8515)))) e!1000664 tp_is_empty!7077 setRes!11047 tp!457931))))

(declare-fun condSetEmpty!11047 () Bool)

(assert (=> b!1558929 (= condSetEmpty!11047 (= (_2!9591 (h!22288 mapValue!8515)) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11047 () Bool)

(assert (=> setIsEmpty!11047 setRes!11047))

(declare-fun b!1558930 () Bool)

(declare-fun tp!457929 () Bool)

(assert (=> b!1558930 (= e!1000664 tp!457929)))

(assert (=> mapNonEmpty!8514 (= tp!457776 e!1000662)))

(assert (= b!1558929 b!1558930))

(assert (= (and b!1558929 condSetEmpty!11047) setIsEmpty!11047))

(assert (= (and b!1558929 (not condSetEmpty!11047)) setNonEmpty!11047))

(assert (= setNonEmpty!11047 b!1558928))

(assert (= (and mapNonEmpty!8514 ((_ is Cons!16887) mapValue!8515)) b!1558929))

(declare-fun m!1830910 () Bool)

(assert (=> setNonEmpty!11047 m!1830910))

(declare-fun m!1830912 () Bool)

(assert (=> b!1558929 m!1830912))

(declare-fun e!1000665 () Bool)

(declare-fun setRes!11048 () Bool)

(declare-fun tp!457934 () Bool)

(declare-fun setElem!11048 () Context!1610)

(declare-fun setNonEmpty!11048 () Bool)

(assert (=> setNonEmpty!11048 (= setRes!11048 (and tp!457934 (inv!22183 setElem!11048) e!1000665))))

(declare-fun setRest!11048 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11048 (= (_2!9593 (h!22289 (zeroValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11048 true) setRest!11048))))

(declare-fun e!1000666 () Bool)

(assert (=> b!1558618 (= tp!457784 e!1000666)))

(declare-fun b!1558931 () Bool)

(declare-fun e!1000667 () Bool)

(declare-fun tp!457933 () Bool)

(assert (=> b!1558931 (= e!1000667 tp!457933)))

(declare-fun tp!457936 () Bool)

(declare-fun b!1558932 () Bool)

(assert (=> b!1558932 (= e!1000666 (and (inv!22183 (_1!9592 (_1!9593 (h!22289 (zeroValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))))) e!1000667 tp_is_empty!7077 setRes!11048 tp!457936))))

(declare-fun condSetEmpty!11048 () Bool)

(assert (=> b!1558932 (= condSetEmpty!11048 (= (_2!9593 (h!22289 (zeroValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11048 () Bool)

(assert (=> setIsEmpty!11048 setRes!11048))

(declare-fun b!1558933 () Bool)

(declare-fun tp!457935 () Bool)

(assert (=> b!1558933 (= e!1000665 tp!457935)))

(assert (= b!1558932 b!1558931))

(assert (= (and b!1558932 condSetEmpty!11048) setIsEmpty!11048))

(assert (= (and b!1558932 (not condSetEmpty!11048)) setNonEmpty!11048))

(assert (= setNonEmpty!11048 b!1558933))

(assert (= (and b!1558618 ((_ is Cons!16888) (zeroValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))) b!1558932))

(declare-fun m!1830914 () Bool)

(assert (=> setNonEmpty!11048 m!1830914))

(declare-fun m!1830916 () Bool)

(assert (=> b!1558932 m!1830916))

(declare-fun setNonEmpty!11049 () Bool)

(declare-fun tp!457938 () Bool)

(declare-fun setRes!11049 () Bool)

(declare-fun setElem!11049 () Context!1610)

(declare-fun e!1000668 () Bool)

(assert (=> setNonEmpty!11049 (= setRes!11049 (and tp!457938 (inv!22183 setElem!11049) e!1000668))))

(declare-fun setRest!11049 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11049 (= (_2!9593 (h!22289 (minValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11049 true) setRest!11049))))

(declare-fun e!1000669 () Bool)

(assert (=> b!1558618 (= tp!457780 e!1000669)))

(declare-fun b!1558934 () Bool)

(declare-fun e!1000670 () Bool)

(declare-fun tp!457937 () Bool)

(assert (=> b!1558934 (= e!1000670 tp!457937)))

(declare-fun b!1558935 () Bool)

(declare-fun tp!457940 () Bool)

(assert (=> b!1558935 (= e!1000669 (and (inv!22183 (_1!9592 (_1!9593 (h!22289 (minValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))))) e!1000670 tp_is_empty!7077 setRes!11049 tp!457940))))

(declare-fun condSetEmpty!11049 () Bool)

(assert (=> b!1558935 (= condSetEmpty!11049 (= (_2!9593 (h!22289 (minValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11049 () Bool)

(assert (=> setIsEmpty!11049 setRes!11049))

(declare-fun b!1558936 () Bool)

(declare-fun tp!457939 () Bool)

(assert (=> b!1558936 (= e!1000668 tp!457939)))

(assert (= b!1558935 b!1558934))

(assert (= (and b!1558935 condSetEmpty!11049) setIsEmpty!11049))

(assert (= (and b!1558935 (not condSetEmpty!11049)) setNonEmpty!11049))

(assert (= setNonEmpty!11049 b!1558936))

(assert (= (and b!1558618 ((_ is Cons!16888) (minValue!2089 (v!23747 (underlying!3873 (v!23748 (underlying!3874 (cache!2157 cacheUp!755)))))))) b!1558935))

(declare-fun m!1830918 () Bool)

(assert (=> setNonEmpty!11049 m!1830918))

(declare-fun m!1830920 () Bool)

(assert (=> b!1558935 m!1830920))

(declare-fun tp!457941 () Bool)

(declare-fun tp!457942 () Bool)

(declare-fun e!1000671 () Bool)

(declare-fun b!1558937 () Bool)

(assert (=> b!1558937 (= e!1000671 (and (inv!22179 (left!13711 (c!252992 input!1676))) tp!457941 (inv!22179 (right!14041 (c!252992 input!1676))) tp!457942))))

(declare-fun b!1558939 () Bool)

(declare-fun e!1000672 () Bool)

(declare-fun tp!457943 () Bool)

(assert (=> b!1558939 (= e!1000672 tp!457943)))

(declare-fun b!1558938 () Bool)

(assert (=> b!1558938 (= e!1000671 (and (inv!22184 (xs!8377 (c!252992 input!1676))) e!1000672))))

(assert (=> b!1558617 (= tp!457769 (and (inv!22179 (c!252992 input!1676)) e!1000671))))

(assert (= (and b!1558617 ((_ is Node!5577) (c!252992 input!1676))) b!1558937))

(assert (= b!1558938 b!1558939))

(assert (= (and b!1558617 ((_ is Leaf!8266) (c!252992 input!1676))) b!1558938))

(declare-fun m!1830922 () Bool)

(assert (=> b!1558937 m!1830922))

(declare-fun m!1830924 () Bool)

(assert (=> b!1558937 m!1830924))

(declare-fun m!1830926 () Bool)

(assert (=> b!1558938 m!1830926))

(assert (=> b!1558617 m!1830648))

(declare-fun e!1000674 () Bool)

(assert (=> b!1558600 (= tp!457763 e!1000674)))

(declare-fun b!1558940 () Bool)

(declare-fun setRes!11050 () Bool)

(declare-fun tp!457945 () Bool)

(assert (=> b!1558940 (= e!1000674 (and setRes!11050 tp!457945))))

(declare-fun condSetEmpty!11050 () Bool)

(assert (=> b!1558940 (= condSetEmpty!11050 (= (_1!9588 (_1!9589 (h!22287 mapDefault!8514))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11050 () Bool)

(assert (=> setIsEmpty!11050 setRes!11050))

(declare-fun b!1558941 () Bool)

(declare-fun e!1000673 () Bool)

(declare-fun tp!457946 () Bool)

(assert (=> b!1558941 (= e!1000673 tp!457946)))

(declare-fun setElem!11050 () Context!1610)

(declare-fun setNonEmpty!11050 () Bool)

(declare-fun tp!457944 () Bool)

(assert (=> setNonEmpty!11050 (= setRes!11050 (and tp!457944 (inv!22183 setElem!11050) e!1000673))))

(declare-fun setRest!11050 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11050 (= (_1!9588 (_1!9589 (h!22287 mapDefault!8514))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11050 true) setRest!11050))))

(assert (= (and b!1558940 condSetEmpty!11050) setIsEmpty!11050))

(assert (= (and b!1558940 (not condSetEmpty!11050)) setNonEmpty!11050))

(assert (= setNonEmpty!11050 b!1558941))

(assert (= (and b!1558600 ((_ is Cons!16886) mapDefault!8514)) b!1558940))

(declare-fun m!1830928 () Bool)

(assert (=> setNonEmpty!11050 m!1830928))

(declare-fun setIsEmpty!11055 () Bool)

(declare-fun setRes!11056 () Bool)

(assert (=> setIsEmpty!11055 setRes!11056))

(declare-fun b!1558952 () Bool)

(declare-fun e!1000683 () Bool)

(declare-fun setRes!11055 () Bool)

(declare-fun tp!457967 () Bool)

(assert (=> b!1558952 (= e!1000683 (and setRes!11055 tp!457967))))

(declare-fun condSetEmpty!11056 () Bool)

(declare-fun mapDefault!8525 () List!16954)

(assert (=> b!1558952 (= condSetEmpty!11056 (= (_1!9588 (_1!9589 (h!22287 mapDefault!8525))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun e!1000684 () Bool)

(declare-fun setElem!11055 () Context!1610)

(declare-fun setNonEmpty!11055 () Bool)

(declare-fun tp!457963 () Bool)

(assert (=> setNonEmpty!11055 (= setRes!11055 (and tp!457963 (inv!22183 setElem!11055) e!1000684))))

(declare-fun setRest!11055 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11055 (= (_1!9588 (_1!9589 (h!22287 mapDefault!8525))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11055 true) setRest!11055))))

(declare-fun setIsEmpty!11056 () Bool)

(assert (=> setIsEmpty!11056 setRes!11055))

(declare-fun b!1558954 () Bool)

(declare-fun e!1000685 () Bool)

(declare-fun tp!457966 () Bool)

(assert (=> b!1558954 (= e!1000685 (and setRes!11056 tp!457966))))

(declare-fun condSetEmpty!11055 () Bool)

(declare-fun mapValue!8525 () List!16954)

(assert (=> b!1558954 (= condSetEmpty!11055 (= (_1!9588 (_1!9589 (h!22287 mapValue!8525))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun mapIsEmpty!8525 () Bool)

(declare-fun mapRes!8525 () Bool)

(assert (=> mapIsEmpty!8525 mapRes!8525))

(declare-fun b!1558955 () Bool)

(declare-fun tp!457965 () Bool)

(assert (=> b!1558955 (= e!1000684 tp!457965)))

(declare-fun e!1000686 () Bool)

(declare-fun setElem!11056 () Context!1610)

(declare-fun setNonEmpty!11056 () Bool)

(declare-fun tp!457964 () Bool)

(assert (=> setNonEmpty!11056 (= setRes!11056 (and tp!457964 (inv!22183 setElem!11056) e!1000686))))

(declare-fun setRest!11056 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11056 (= (_1!9588 (_1!9589 (h!22287 mapValue!8525))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11056 true) setRest!11056))))

(declare-fun mapNonEmpty!8525 () Bool)

(declare-fun tp!457962 () Bool)

(assert (=> mapNonEmpty!8525 (= mapRes!8525 (and tp!457962 e!1000685))))

(declare-fun mapRest!8525 () (Array (_ BitVec 32) List!16954))

(declare-fun mapKey!8525 () (_ BitVec 32))

(assert (=> mapNonEmpty!8525 (= mapRest!8514 (store mapRest!8525 mapKey!8525 mapValue!8525))))

(declare-fun b!1558953 () Bool)

(declare-fun tp!457961 () Bool)

(assert (=> b!1558953 (= e!1000686 tp!457961)))

(declare-fun condMapEmpty!8525 () Bool)

(assert (=> mapNonEmpty!8515 (= condMapEmpty!8525 (= mapRest!8514 ((as const (Array (_ BitVec 32) List!16954)) mapDefault!8525)))))

(assert (=> mapNonEmpty!8515 (= tp!457765 (and e!1000683 mapRes!8525))))

(assert (= (and mapNonEmpty!8515 condMapEmpty!8525) mapIsEmpty!8525))

(assert (= (and mapNonEmpty!8515 (not condMapEmpty!8525)) mapNonEmpty!8525))

(assert (= (and b!1558954 condSetEmpty!11055) setIsEmpty!11055))

(assert (= (and b!1558954 (not condSetEmpty!11055)) setNonEmpty!11056))

(assert (= setNonEmpty!11056 b!1558953))

(assert (= (and mapNonEmpty!8525 ((_ is Cons!16886) mapValue!8525)) b!1558954))

(assert (= (and b!1558952 condSetEmpty!11056) setIsEmpty!11056))

(assert (= (and b!1558952 (not condSetEmpty!11056)) setNonEmpty!11055))

(assert (= setNonEmpty!11055 b!1558955))

(assert (= (and mapNonEmpty!8515 ((_ is Cons!16886) mapDefault!8525)) b!1558952))

(declare-fun m!1830930 () Bool)

(assert (=> setNonEmpty!11055 m!1830930))

(declare-fun m!1830932 () Bool)

(assert (=> setNonEmpty!11056 m!1830932))

(declare-fun m!1830934 () Bool)

(assert (=> mapNonEmpty!8525 m!1830934))

(declare-fun e!1000688 () Bool)

(assert (=> mapNonEmpty!8515 (= tp!457764 e!1000688)))

(declare-fun b!1558956 () Bool)

(declare-fun setRes!11057 () Bool)

(declare-fun tp!457969 () Bool)

(assert (=> b!1558956 (= e!1000688 (and setRes!11057 tp!457969))))

(declare-fun condSetEmpty!11057 () Bool)

(assert (=> b!1558956 (= condSetEmpty!11057 (= (_1!9588 (_1!9589 (h!22287 mapValue!8516))) ((as const (Array Context!1610 Bool)) false)))))

(declare-fun setIsEmpty!11057 () Bool)

(assert (=> setIsEmpty!11057 setRes!11057))

(declare-fun b!1558957 () Bool)

(declare-fun e!1000687 () Bool)

(declare-fun tp!457970 () Bool)

(assert (=> b!1558957 (= e!1000687 tp!457970)))

(declare-fun setElem!11057 () Context!1610)

(declare-fun setNonEmpty!11057 () Bool)

(declare-fun tp!457968 () Bool)

(assert (=> setNonEmpty!11057 (= setRes!11057 (and tp!457968 (inv!22183 setElem!11057) e!1000687))))

(declare-fun setRest!11057 () (InoxSet Context!1610))

(assert (=> setNonEmpty!11057 (= (_1!9588 (_1!9589 (h!22287 mapValue!8516))) ((_ map or) (store ((as const (Array Context!1610 Bool)) false) setElem!11057 true) setRest!11057))))

(assert (= (and b!1558956 condSetEmpty!11057) setIsEmpty!11057))

(assert (= (and b!1558956 (not condSetEmpty!11057)) setNonEmpty!11057))

(assert (= setNonEmpty!11057 b!1558957))

(assert (= (and mapNonEmpty!8515 ((_ is Cons!16886) mapValue!8516)) b!1558956))

(declare-fun m!1830936 () Bool)

(assert (=> setNonEmpty!11057 m!1830936))

(declare-fun b_lambda!48995 () Bool)

(assert (= b_lambda!48991 (or (and b!1558620 b_free!41551) b_lambda!48995)))

(declare-fun b_lambda!48997 () Bool)

(assert (= b_lambda!48989 (or (and b!1558620 b_free!41551) b_lambda!48997)))

(declare-fun b_lambda!48999 () Bool)

(assert (= b_lambda!48987 (or b!1558586 b_lambda!48999)))

(declare-fun bs!388821 () Bool)

(declare-fun d!462025 () Bool)

(assert (= bs!388821 (and d!462025 b!1558586)))

(declare-fun dynLambda!7513 (Int TokenValue!3049) BalanceConc!11096)

(assert (=> bs!388821 (= (dynLambda!7510 lambda!65975 (_1!9594 (_1!9595 lt!539844))) (= (list!6506 (dynLambda!7513 (toChars!4194 (transformation!2959 rule!240)) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) (_1!9594 (_1!9595 lt!539844))))) (list!6506 (_1!9594 (_1!9595 lt!539844)))))))

(declare-fun b_lambda!49007 () Bool)

(assert (=> (not b_lambda!49007) (not bs!388821)))

(declare-fun t!141465 () Bool)

(declare-fun tb!87357 () Bool)

(assert (=> (and b!1558620 (= (toChars!4194 (transformation!2959 rule!240)) (toChars!4194 (transformation!2959 rule!240))) t!141465) tb!87357))

(declare-fun tp!457973 () Bool)

(declare-fun e!1000691 () Bool)

(declare-fun b!1558962 () Bool)

(assert (=> b!1558962 (= e!1000691 (and (inv!22179 (c!252992 (dynLambda!7513 (toChars!4194 (transformation!2959 rule!240)) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) (_1!9594 (_1!9595 lt!539844)))))) tp!457973))))

(declare-fun result!105570 () Bool)

(assert (=> tb!87357 (= result!105570 (and (inv!22175 (dynLambda!7513 (toChars!4194 (transformation!2959 rule!240)) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) (_1!9594 (_1!9595 lt!539844))))) e!1000691))))

(assert (= tb!87357 b!1558962))

(declare-fun m!1830938 () Bool)

(assert (=> b!1558962 m!1830938))

(declare-fun m!1830940 () Bool)

(assert (=> tb!87357 m!1830940))

(assert (=> bs!388821 t!141465))

(declare-fun b_and!108797 () Bool)

(assert (= b_and!108783 (and (=> t!141465 result!105570) b_and!108797)))

(declare-fun b_lambda!49009 () Bool)

(assert (=> (not b_lambda!49009) (not bs!388821)))

(assert (=> bs!388821 t!141461))

(declare-fun b_and!108799 () Bool)

(assert (= b_and!108795 (and (=> t!141461 result!105548) b_and!108799)))

(declare-fun m!1830942 () Bool)

(assert (=> bs!388821 m!1830942))

(declare-fun m!1830944 () Bool)

(assert (=> bs!388821 m!1830944))

(assert (=> bs!388821 m!1830740))

(assert (=> bs!388821 m!1830614))

(assert (=> bs!388821 m!1830740))

(assert (=> bs!388821 m!1830942))

(assert (=> d!461963 d!462025))

(declare-fun b_lambda!49001 () Bool)

(assert (= b_lambda!48993 (or (and b!1558620 b_free!41551) b_lambda!49001)))

(declare-fun b_lambda!49003 () Bool)

(assert (= b_lambda!48985 (or (and b!1558620 b_free!41551) b_lambda!49003)))

(declare-fun b_lambda!49005 () Bool)

(assert (= b_lambda!48983 (or b!1558586 b_lambda!49005)))

(declare-fun bs!388822 () Bool)

(declare-fun d!462027 () Bool)

(assert (= bs!388822 (and d!462027 b!1558586)))

(assert (=> bs!388822 (= (dynLambda!7510 lambda!65975 lt!539853) (= (list!6506 (dynLambda!7513 (toChars!4194 (transformation!2959 rule!240)) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) lt!539853))) (list!6506 lt!539853)))))

(declare-fun b_lambda!49011 () Bool)

(assert (=> (not b_lambda!49011) (not bs!388822)))

(declare-fun t!141467 () Bool)

(declare-fun tb!87359 () Bool)

(assert (=> (and b!1558620 (= (toChars!4194 (transformation!2959 rule!240)) (toChars!4194 (transformation!2959 rule!240))) t!141467) tb!87359))

(declare-fun e!1000692 () Bool)

(declare-fun tp!457974 () Bool)

(declare-fun b!1558963 () Bool)

(assert (=> b!1558963 (= e!1000692 (and (inv!22179 (c!252992 (dynLambda!7513 (toChars!4194 (transformation!2959 rule!240)) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) lt!539853)))) tp!457974))))

(declare-fun result!105574 () Bool)

(assert (=> tb!87359 (= result!105574 (and (inv!22175 (dynLambda!7513 (toChars!4194 (transformation!2959 rule!240)) (dynLambda!7511 (toValue!4335 (transformation!2959 rule!240)) lt!539853))) e!1000692))))

(assert (= tb!87359 b!1558963))

(declare-fun m!1830946 () Bool)

(assert (=> b!1558963 m!1830946))

(declare-fun m!1830948 () Bool)

(assert (=> tb!87359 m!1830948))

(assert (=> bs!388822 t!141467))

(declare-fun b_and!108801 () Bool)

(assert (= b_and!108797 (and (=> t!141467 result!105574) b_and!108801)))

(declare-fun b_lambda!49013 () Bool)

(assert (=> (not b_lambda!49013) (not bs!388822)))

(assert (=> bs!388822 t!141463))

(declare-fun b_and!108803 () Bool)

(assert (= b_and!108799 (and (=> t!141463 result!105552) b_and!108803)))

(declare-fun m!1830950 () Bool)

(assert (=> bs!388822 m!1830950))

(declare-fun m!1830952 () Bool)

(assert (=> bs!388822 m!1830952))

(assert (=> bs!388822 m!1830758))

(assert (=> bs!388822 m!1830644))

(assert (=> bs!388822 m!1830758))

(assert (=> bs!388822 m!1830950))

(assert (=> d!461953 d!462027))

(check-sat (not b!1558747) (not b!1558890) (not b!1558889) (not b!1558680) (not b!1558598) (not b!1558757) (not d!461955) (not d!461941) (not b!1558934) (not d!461949) (not b_next!42261) (not b!1558828) (not bs!388822) (not b!1558903) (not b!1558738) (not setNonEmpty!11047) (not b!1558617) (not d!461939) (not d!462003) (not b!1558935) b_and!108779 (not b!1558922) (not b!1558842) (not b_lambda!49005) (not b!1558930) (not b!1558839) (not b!1558869) (not setNonEmpty!11039) (not d!461953) (not bm!102142) (not bm!102159) (not setNonEmpty!11034) (not d!462001) (not b!1558748) (not d!462013) (not b!1558904) (not b!1558827) (not d!461991) b_and!108775 (not b!1558650) (not bs!388821) (not b!1558678) (not b!1558679) (not d!461931) (not setNonEmpty!11027) (not b!1558675) (not b!1558931) (not b!1558938) (not b_next!42255) (not setNonEmpty!11033) (not setNonEmpty!11028) (not b!1558838) (not b!1558641) (not d!461943) (not b!1558873) (not b!1558652) (not bm!102162) (not b!1558941) (not b!1558876) (not d!462009) (not b_next!42251) (not setNonEmpty!11035) (not setNonEmpty!11048) (not b_lambda!48995) (not b!1558957) (not bm!102161) (not b!1558877) (not b!1558749) (not b!1558871) (not setNonEmpty!11055) (not b!1558902) (not b!1558874) (not b!1558893) (not d!461965) (not b_lambda!49009) (not b!1558676) (not b!1558704) (not b!1558852) (not b!1558894) (not d!461975) (not b!1558683) (not b!1558939) (not b_next!42253) (not d!462005) (not tb!87355) (not b!1558804) (not b_lambda!49013) (not b!1558870) b_and!108785 (not bm!102160) (not b_lambda!49003) b_and!108773 (not tb!87359) (not d!462021) (not setNonEmpty!11056) (not d!461999) (not d!461951) (not setNonEmpty!11045) (not b!1558673) (not b!1558933) (not b!1558924) (not b_next!42259) (not setNonEmpty!11046) (not b!1558621) (not bm!102163) (not mapNonEmpty!8525) (not b!1558705) (not b!1558875) (not b!1558907) (not d!461971) (not b!1558764) (not b!1558954) (not b!1558818) (not b!1558962) (not b!1558752) (not d!461959) (not b!1558854) (not b!1558840) (not setNonEmpty!11038) (not b!1558940) (not b!1558963) (not b!1558639) (not b!1558672) (not b!1558892) (not b_next!42249) (not d!461979) (not b!1558685) (not b_lambda!49007) (not b!1558906) (not b!1558816) (not d!461963) (not b!1558829) (not b!1558956) (not b!1558651) (not b!1558929) b_and!108787 (not b!1558813) (not d!461937) (not b!1558701) (not b!1558952) b_and!108803 (not b_lambda!48999) (not b!1558707) (not b!1558800) (not b!1558698) (not b!1558841) (not b!1558853) (not d!462019) (not b!1558923) (not b!1558953) (not mapNonEmpty!8522) (not setNonEmpty!11040) (not setNonEmpty!11057) (not b_lambda!48997) tp_is_empty!7077 (not b!1558955) (not d!461987) (not d!462007) (not b!1558872) (not b_next!42247) (not bm!102164) (not b!1558925) (not b!1558928) (not b!1558891) (not setNonEmpty!11050) (not b!1558688) (not b!1558927) (not b!1558745) (not b!1558932) (not tb!87353) (not b_lambda!49001) (not b!1558794) (not b!1558674) (not b!1558744) (not b!1558843) (not d!461981) (not b!1558926) (not b!1558901) (not d!461957) (not b_next!42257) b_and!108777 b_and!108801 (not d!462015) (not bm!102166) (not b!1558797) (not setNonEmpty!11024) (not b!1558937) (not b!1558936) (not b_lambda!49011) (not bm!102165) (not setNonEmpty!11049) (not tb!87357) (not b!1558905) (not mapNonEmpty!8519))
(check-sat (not b_next!42261) b_and!108779 b_and!108775 (not b_next!42255) (not b_next!42251) (not b_next!42253) (not b_next!42259) (not b_next!42249) b_and!108787 b_and!108803 (not b_next!42247) b_and!108773 b_and!108785 (not b_next!42257) b_and!108777 b_and!108801)
