; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143752 () Bool)

(assert start!143752)

(declare-fun b!1551581 () Bool)

(declare-fun b_free!41219 () Bool)

(declare-fun b_next!41923 () Bool)

(assert (=> b!1551581 (= b_free!41219 (not b_next!41923))))

(declare-fun tp!453732 () Bool)

(declare-fun b_and!108309 () Bool)

(assert (=> b!1551581 (= tp!453732 b_and!108309)))

(declare-fun b_free!41221 () Bool)

(declare-fun b_next!41925 () Bool)

(assert (=> b!1551581 (= b_free!41221 (not b_next!41925))))

(declare-fun tp!453728 () Bool)

(declare-fun b_and!108311 () Bool)

(assert (=> b!1551581 (= tp!453728 b_and!108311)))

(declare-fun b!1551573 () Bool)

(declare-fun b_free!41223 () Bool)

(declare-fun b_next!41927 () Bool)

(assert (=> b!1551573 (= b_free!41223 (not b_next!41927))))

(declare-fun tp!453724 () Bool)

(declare-fun b_and!108313 () Bool)

(assert (=> b!1551573 (= tp!453724 b_and!108313)))

(declare-fun b!1551572 () Bool)

(declare-fun b_free!41225 () Bool)

(declare-fun b_next!41929 () Bool)

(assert (=> b!1551572 (= b_free!41225 (not b_next!41929))))

(declare-fun tp!453746 () Bool)

(declare-fun b_and!108315 () Bool)

(assert (=> b!1551572 (= tp!453746 b_and!108315)))

(declare-fun b!1551570 () Bool)

(declare-fun b_free!41227 () Bool)

(declare-fun b_next!41931 () Bool)

(assert (=> b!1551570 (= b_free!41227 (not b_next!41931))))

(declare-fun tp!453744 () Bool)

(declare-fun b_and!108317 () Bool)

(assert (=> b!1551570 (= tp!453744 b_and!108317)))

(declare-fun b!1551584 () Bool)

(declare-fun b_free!41229 () Bool)

(declare-fun b_next!41933 () Bool)

(assert (=> b!1551584 (= b_free!41229 (not b_next!41933))))

(declare-fun tp!453739 () Bool)

(declare-fun b_and!108319 () Bool)

(assert (=> b!1551584 (= tp!453739 b_and!108319)))

(declare-fun b!1551579 () Bool)

(declare-fun b_free!41231 () Bool)

(declare-fun b_next!41935 () Bool)

(assert (=> b!1551579 (= b_free!41231 (not b_next!41935))))

(declare-fun tp!453726 () Bool)

(declare-fun b_and!108321 () Bool)

(assert (=> b!1551579 (= tp!453726 b_and!108321)))

(declare-fun b!1551560 () Bool)

(declare-fun b_free!41233 () Bool)

(declare-fun b_next!41937 () Bool)

(assert (=> b!1551560 (= b_free!41233 (not b_next!41937))))

(declare-fun tp!453738 () Bool)

(declare-fun b_and!108323 () Bool)

(assert (=> b!1551560 (= tp!453738 b_and!108323)))

(declare-fun b!1551603 () Bool)

(declare-fun e!995221 () Bool)

(assert (=> b!1551603 (= e!995221 true)))

(declare-fun b!1551602 () Bool)

(declare-fun e!995220 () Bool)

(assert (=> b!1551602 (= e!995220 e!995221)))

(declare-fun b!1551575 () Bool)

(assert (=> b!1551575 e!995220))

(assert (= b!1551602 b!1551603))

(assert (= b!1551575 b!1551602))

(declare-fun lambda!65669 () Int)

(declare-fun order!9855 () Int)

(declare-datatypes ((List!16846 0))(
  ( (Nil!16778) (Cons!16778 (h!22179 (_ BitVec 16)) (t!141249 List!16846)) )
))
(declare-datatypes ((TokenValue!3031 0))(
  ( (FloatLiteralValue!6062 (text!21662 List!16846)) (TokenValueExt!3030 (__x!11119 Int)) (Broken!15155 (value!93432 List!16846)) (Object!3098) (End!3031) (Def!3031) (Underscore!3031) (Match!3031) (Else!3031) (Error!3031) (Case!3031) (If!3031) (Extends!3031) (Abstract!3031) (Class!3031) (Val!3031) (DelimiterValue!6062 (del!3091 List!16846)) (KeywordValue!3037 (value!93433 List!16846)) (CommentValue!6062 (value!93434 List!16846)) (WhitespaceValue!6062 (value!93435 List!16846)) (IndentationValue!3031 (value!93436 List!16846)) (String!19442) (Int32!3031) (Broken!15156 (value!93437 List!16846)) (Boolean!3032) (Unit!26026) (OperatorValue!3034 (op!3091 List!16846)) (IdentifierValue!6062 (value!93438 List!16846)) (IdentifierValue!6063 (value!93439 List!16846)) (WhitespaceValue!6063 (value!93440 List!16846)) (True!6062) (False!6062) (Broken!15157 (value!93441 List!16846)) (Broken!15158 (value!93442 List!16846)) (True!6063) (RightBrace!3031) (RightBracket!3031) (Colon!3031) (Null!3031) (Comma!3031) (LeftBracket!3031) (False!6063) (LeftBrace!3031) (ImaginaryLiteralValue!3031 (text!21663 List!16846)) (StringLiteralValue!9093 (value!93443 List!16846)) (EOFValue!3031 (value!93444 List!16846)) (IdentValue!3031 (value!93445 List!16846)) (DelimiterValue!6063 (value!93446 List!16846)) (DedentValue!3031 (value!93447 List!16846)) (NewLineValue!3031 (value!93448 List!16846)) (IntegerValue!9093 (value!93449 (_ BitVec 32)) (text!21664 List!16846)) (IntegerValue!9094 (value!93450 Int) (text!21665 List!16846)) (Times!3031) (Or!3031) (Equal!3031) (Minus!3031) (Broken!15159 (value!93451 List!16846)) (And!3031) (Div!3031) (LessEqual!3031) (Mod!3031) (Concat!7300) (Not!3031) (Plus!3031) (SpaceValue!3031 (value!93452 List!16846)) (IntegerValue!9095 (value!93453 Int) (text!21666 List!16846)) (StringLiteralValue!9094 (text!21667 List!16846)) (FloatLiteralValue!6063 (text!21668 List!16846)) (BytesLiteralValue!3031 (value!93454 List!16846)) (CommentValue!6063 (value!93455 List!16846)) (StringLiteralValue!9095 (value!93456 List!16846)) (ErrorTokenValue!3031 (msg!3092 List!16846)) )
))
(declare-datatypes ((C!8716 0))(
  ( (C!8717 (val!4930 Int)) )
))
(declare-datatypes ((List!16847 0))(
  ( (Nil!16779) (Cons!16779 (h!22180 C!8716) (t!141250 List!16847)) )
))
(declare-datatypes ((IArray!11123 0))(
  ( (IArray!11124 (innerList!5619 List!16847)) )
))
(declare-datatypes ((Conc!5559 0))(
  ( (Node!5559 (left!13648 Conc!5559) (right!13978 Conc!5559) (csize!11348 Int) (cheight!5770 Int)) (Leaf!8239 (xs!8359 IArray!11123) (csize!11349 Int)) (Empty!5559) )
))
(declare-datatypes ((Regex!4269 0))(
  ( (ElementMatch!4269 (c!252327 C!8716)) (Concat!7301 (regOne!9050 Regex!4269) (regTwo!9050 Regex!4269)) (EmptyExpr!4269) (Star!4269 (reg!4598 Regex!4269)) (EmptyLang!4269) (Union!4269 (regOne!9051 Regex!4269) (regTwo!9051 Regex!4269)) )
))
(declare-datatypes ((String!19443 0))(
  ( (String!19444 (value!93457 String)) )
))
(declare-datatypes ((BalanceConc!11060 0))(
  ( (BalanceConc!11061 (c!252328 Conc!5559)) )
))
(declare-datatypes ((TokenValueInjection!5722 0))(
  ( (TokenValueInjection!5723 (toValue!4306 Int) (toChars!4165 Int)) )
))
(declare-datatypes ((Rule!5682 0))(
  ( (Rule!5683 (regex!2941 Regex!4269) (tag!3205 String!19443) (isSeparator!2941 Bool) (transformation!2941 TokenValueInjection!5722)) )
))
(declare-fun rule!240 () Rule!5682)

(declare-fun order!9853 () Int)

(declare-fun dynLambda!7421 (Int Int) Int)

(declare-fun dynLambda!7422 (Int Int) Int)

(assert (=> b!1551603 (< (dynLambda!7421 order!9853 (toValue!4306 (transformation!2941 rule!240))) (dynLambda!7422 order!9855 lambda!65669))))

(declare-fun order!9857 () Int)

(declare-fun dynLambda!7423 (Int Int) Int)

(assert (=> b!1551603 (< (dynLambda!7423 order!9857 (toChars!4165 (transformation!2941 rule!240))) (dynLambda!7422 order!9855 lambda!65669))))

(declare-fun b!1551559 () Bool)

(declare-fun e!995203 () Bool)

(declare-fun e!995184 () Bool)

(assert (=> b!1551559 (= e!995203 e!995184)))

(declare-datatypes ((List!16848 0))(
  ( (Nil!16780) (Cons!16780 (h!22181 Regex!4269) (t!141251 List!16848)) )
))
(declare-datatypes ((Context!1574 0))(
  ( (Context!1575 (exprs!1287 List!16848)) )
))
(declare-datatypes ((tuple2!16192 0))(
  ( (tuple2!16193 (_1!9418 Context!1574) (_2!9418 C!8716)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16194 0))(
  ( (tuple2!16195 (_1!9419 tuple2!16192) (_2!9419 (InoxSet Context!1574))) )
))
(declare-datatypes ((List!16849 0))(
  ( (Nil!16781) (Cons!16781 (h!22182 tuple2!16194) (t!141252 List!16849)) )
))
(declare-datatypes ((array!6100 0))(
  ( (array!6101 (arr!2723 (Array (_ BitVec 32) List!16849)) (size!13573 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1723 0))(
  ( (HashableExt!1722 (__x!11120 Int)) )
))
(declare-datatypes ((array!6102 0))(
  ( (array!6103 (arr!2724 (Array (_ BitVec 32) (_ BitVec 64))) (size!13574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3558 0))(
  ( (LongMapFixedSize!3559 (defaultEntry!2139 Int) (mask!5002 (_ BitVec 32)) (extraKeys!2026 (_ BitVec 32)) (zeroValue!2036 List!16849) (minValue!2036 List!16849) (_size!3639 (_ BitVec 32)) (_keys!2073 array!6102) (_values!2058 array!6100) (_vacant!1840 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7001 0))(
  ( (Cell!7002 (v!23614 LongMapFixedSize!3558)) )
))
(declare-datatypes ((MutLongMap!1779 0))(
  ( (LongMap!1779 (underlying!3767 Cell!7001)) (MutLongMapExt!1778 (__x!11121 Int)) )
))
(declare-datatypes ((Cell!7003 0))(
  ( (Cell!7004 (v!23615 MutLongMap!1779)) )
))
(declare-datatypes ((MutableMap!1723 0))(
  ( (MutableMapExt!1722 (__x!11122 Int)) (HashMap!1723 (underlying!3768 Cell!7003) (hashF!3642 Hashable!1723) (_size!3640 (_ BitVec 32)) (defaultValue!1883 Int)) )
))
(declare-datatypes ((CacheUp!1048 0))(
  ( (CacheUp!1049 (cache!2104 MutableMap!1723)) )
))
(declare-fun cacheUp!755 () CacheUp!1048)

(declare-fun tp!453745 () Bool)

(declare-fun e!995214 () Bool)

(declare-fun tp!453731 () Bool)

(declare-fun e!995183 () Bool)

(declare-fun array_inv!1959 (array!6102) Bool)

(declare-fun array_inv!1960 (array!6100) Bool)

(assert (=> b!1551560 (= e!995214 (and tp!453738 tp!453745 tp!453731 (array_inv!1959 (_keys!2073 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) (array_inv!1960 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) e!995183))))

(declare-fun b!1551561 () Bool)

(declare-fun e!995204 () Bool)

(declare-fun e!995192 () Bool)

(declare-fun tp!453733 () Bool)

(declare-fun inv!22044 (String!19443) Bool)

(declare-fun inv!22045 (TokenValueInjection!5722) Bool)

(assert (=> b!1551561 (= e!995192 (and tp!453733 (inv!22044 (tag!3205 rule!240)) (inv!22045 (transformation!2941 rule!240)) e!995204))))

(declare-fun b!1551562 () Bool)

(declare-fun e!995201 () Bool)

(declare-fun e!995188 () Bool)

(declare-fun lt!537492 () MutLongMap!1779)

(get-info :version)

(assert (=> b!1551562 (= e!995201 (and e!995188 ((_ is LongMap!1779) lt!537492)))))

(assert (=> b!1551562 (= lt!537492 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))

(declare-fun b!1551563 () Bool)

(declare-fun res!693188 () Bool)

(declare-fun e!995208 () Bool)

(assert (=> b!1551563 (=> (not res!693188) (not e!995208))))

(declare-datatypes ((tuple3!1762 0))(
  ( (tuple3!1763 (_1!9420 (InoxSet Context!1574)) (_2!9420 Int) (_3!1322 Int)) )
))
(declare-datatypes ((tuple2!16196 0))(
  ( (tuple2!16197 (_1!9421 tuple3!1762) (_2!9421 Int)) )
))
(declare-datatypes ((List!16850 0))(
  ( (Nil!16782) (Cons!16782 (h!22183 tuple2!16196) (t!141253 List!16850)) )
))
(declare-datatypes ((array!6104 0))(
  ( (array!6105 (arr!2725 (Array (_ BitVec 32) List!16850)) (size!13575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3560 0))(
  ( (LongMapFixedSize!3561 (defaultEntry!2140 Int) (mask!5003 (_ BitVec 32)) (extraKeys!2027 (_ BitVec 32)) (zeroValue!2037 List!16850) (minValue!2037 List!16850) (_size!3641 (_ BitVec 32)) (_keys!2074 array!6102) (_values!2059 array!6104) (_vacant!1841 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7005 0))(
  ( (Cell!7006 (v!23616 LongMapFixedSize!3560)) )
))
(declare-datatypes ((Hashable!1724 0))(
  ( (HashableExt!1723 (__x!11123 Int)) )
))
(declare-datatypes ((MutLongMap!1780 0))(
  ( (LongMap!1780 (underlying!3769 Cell!7005)) (MutLongMapExt!1779 (__x!11124 Int)) )
))
(declare-datatypes ((Cell!7007 0))(
  ( (Cell!7008 (v!23617 MutLongMap!1780)) )
))
(declare-datatypes ((MutableMap!1724 0))(
  ( (MutableMapExt!1723 (__x!11125 Int)) (HashMap!1724 (underlying!3770 Cell!7007) (hashF!3643 Hashable!1724) (_size!3642 (_ BitVec 32)) (defaultValue!1884 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!474 0))(
  ( (CacheFurthestNullable!475 (cache!2105 MutableMap!1724) (totalInput!2444 BalanceConc!11060)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!474)

(declare-fun valid!1425 (CacheFurthestNullable!474) Bool)

(assert (=> b!1551563 (= res!693188 (valid!1425 cacheFurthestNullable!103))))

(declare-fun mapNonEmpty!8244 () Bool)

(declare-fun mapRes!8245 () Bool)

(declare-fun tp!453748 () Bool)

(declare-fun tp!453740 () Bool)

(assert (=> mapNonEmpty!8244 (= mapRes!8245 (and tp!453748 tp!453740))))

(declare-fun mapKey!8244 () (_ BitVec 32))

(declare-fun mapRest!8245 () (Array (_ BitVec 32) List!16849))

(declare-fun mapValue!8246 () List!16849)

(assert (=> mapNonEmpty!8244 (= (arr!2723 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) (store mapRest!8245 mapKey!8244 mapValue!8246))))

(declare-fun b!1551564 () Bool)

(declare-fun e!995211 () Bool)

(declare-fun e!995196 () Bool)

(declare-datatypes ((tuple3!1764 0))(
  ( (tuple3!1765 (_1!9422 Regex!4269) (_2!9422 Context!1574) (_3!1323 C!8716)) )
))
(declare-datatypes ((tuple2!16198 0))(
  ( (tuple2!16199 (_1!9423 tuple3!1764) (_2!9423 (InoxSet Context!1574))) )
))
(declare-datatypes ((List!16851 0))(
  ( (Nil!16783) (Cons!16783 (h!22184 tuple2!16198) (t!141254 List!16851)) )
))
(declare-datatypes ((array!6106 0))(
  ( (array!6107 (arr!2726 (Array (_ BitVec 32) List!16851)) (size!13576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3562 0))(
  ( (LongMapFixedSize!3563 (defaultEntry!2141 Int) (mask!5004 (_ BitVec 32)) (extraKeys!2028 (_ BitVec 32)) (zeroValue!2038 List!16851) (minValue!2038 List!16851) (_size!3643 (_ BitVec 32)) (_keys!2075 array!6102) (_values!2060 array!6106) (_vacant!1842 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7009 0))(
  ( (Cell!7010 (v!23618 LongMapFixedSize!3562)) )
))
(declare-datatypes ((MutLongMap!1781 0))(
  ( (LongMap!1781 (underlying!3771 Cell!7009)) (MutLongMapExt!1780 (__x!11126 Int)) )
))
(declare-fun lt!537497 () MutLongMap!1781)

(assert (=> b!1551564 (= e!995211 (and e!995196 ((_ is LongMap!1781) lt!537497)))))

(declare-datatypes ((Cell!7011 0))(
  ( (Cell!7012 (v!23619 MutLongMap!1781)) )
))
(declare-datatypes ((Hashable!1725 0))(
  ( (HashableExt!1724 (__x!11127 Int)) )
))
(declare-datatypes ((MutableMap!1725 0))(
  ( (MutableMapExt!1724 (__x!11128 Int)) (HashMap!1725 (underlying!3772 Cell!7011) (hashF!3644 Hashable!1725) (_size!3644 (_ BitVec 32)) (defaultValue!1885 Int)) )
))
(declare-datatypes ((CacheDown!1052 0))(
  ( (CacheDown!1053 (cache!2106 MutableMap!1725)) )
))
(declare-fun cacheDown!768 () CacheDown!1052)

(assert (=> b!1551564 (= lt!537497 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))

(declare-fun b!1551565 () Bool)

(declare-fun e!995193 () Bool)

(declare-fun e!995200 () Bool)

(assert (=> b!1551565 (= e!995193 e!995200)))

(declare-fun b!1551566 () Bool)

(declare-fun e!995205 () Bool)

(declare-fun input!1676 () BalanceConc!11060)

(declare-fun tp!453741 () Bool)

(declare-fun inv!22046 (Conc!5559) Bool)

(assert (=> b!1551566 (= e!995205 (and (inv!22046 (c!252328 input!1676)) tp!453741))))

(declare-fun mapNonEmpty!8245 () Bool)

(declare-fun mapRes!8244 () Bool)

(declare-fun tp!453743 () Bool)

(declare-fun tp!453742 () Bool)

(assert (=> mapNonEmpty!8245 (= mapRes!8244 (and tp!453743 tp!453742))))

(declare-fun mapRest!8244 () (Array (_ BitVec 32) List!16851))

(declare-fun mapValue!8244 () List!16851)

(declare-fun mapKey!8246 () (_ BitVec 32))

(assert (=> mapNonEmpty!8245 (= (arr!2726 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) (store mapRest!8244 mapKey!8246 mapValue!8244))))

(declare-fun b!1551567 () Bool)

(declare-fun e!995185 () Bool)

(declare-fun tp!453736 () Bool)

(assert (=> b!1551567 (= e!995185 (and (inv!22046 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) tp!453736))))

(declare-fun b!1551568 () Bool)

(declare-fun e!995186 () Bool)

(declare-fun tp!453727 () Bool)

(assert (=> b!1551568 (= e!995186 (and tp!453727 mapRes!8244))))

(declare-fun condMapEmpty!8245 () Bool)

(declare-fun mapDefault!8244 () List!16851)

(assert (=> b!1551568 (= condMapEmpty!8245 (= (arr!2726 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16851)) mapDefault!8244)))))

(declare-fun b!1551569 () Bool)

(declare-fun tp!453747 () Bool)

(assert (=> b!1551569 (= e!995183 (and tp!453747 mapRes!8245))))

(declare-fun condMapEmpty!8246 () Bool)

(declare-fun mapDefault!8245 () List!16849)

(assert (=> b!1551569 (= condMapEmpty!8246 (= (arr!2723 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16849)) mapDefault!8245)))))

(assert (=> b!1551570 (= e!995200 (and e!995201 tp!453744))))

(declare-fun b!1551571 () Bool)

(declare-fun e!995213 () Bool)

(declare-fun tp!453750 () Bool)

(declare-fun mapRes!8246 () Bool)

(assert (=> b!1551571 (= e!995213 (and tp!453750 mapRes!8246))))

(declare-fun condMapEmpty!8244 () Bool)

(declare-fun mapDefault!8246 () List!16850)

(assert (=> b!1551571 (= condMapEmpty!8244 (= (arr!2725 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16850)) mapDefault!8246)))))

(declare-fun mapIsEmpty!8244 () Bool)

(assert (=> mapIsEmpty!8244 mapRes!8245))

(declare-fun e!995189 () Bool)

(declare-fun e!995206 () Bool)

(assert (=> b!1551572 (= e!995189 (and e!995206 tp!453746))))

(declare-fun e!995210 () Bool)

(declare-fun tp!453730 () Bool)

(declare-fun tp!453735 () Bool)

(declare-fun array_inv!1961 (array!6106) Bool)

(assert (=> b!1551573 (= e!995210 (and tp!453724 tp!453735 tp!453730 (array_inv!1959 (_keys!2075 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) (array_inv!1961 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) e!995186))))

(declare-fun b!1551574 () Bool)

(declare-fun e!995199 () Bool)

(declare-datatypes ((tuple2!16200 0))(
  ( (tuple2!16201 (_1!9424 List!16847) (_2!9424 List!16847)) )
))
(declare-fun lt!537499 () tuple2!16200)

(declare-fun matchR!1874 (Regex!4269 List!16847) Bool)

(assert (=> b!1551574 (= e!995199 (matchR!1874 (regex!2941 rule!240) (_1!9424 lt!537499)))))

(declare-fun res!693192 () Bool)

(declare-fun e!995187 () Bool)

(assert (=> b!1551575 (=> res!693192 e!995187)))

(declare-fun Forall!603 (Int) Bool)

(assert (=> b!1551575 (= res!693192 (not (Forall!603 lambda!65669)))))

(declare-fun b!1551576 () Bool)

(declare-fun res!693191 () Bool)

(assert (=> b!1551576 (=> (not res!693191) (not e!995208))))

(declare-fun valid!1426 (CacheDown!1052) Bool)

(assert (=> b!1551576 (= res!693191 (valid!1426 cacheDown!768))))

(declare-fun b!1551577 () Bool)

(declare-fun e!995198 () Bool)

(assert (=> b!1551577 (= e!995188 e!995198)))

(declare-fun b!1551578 () Bool)

(declare-fun lt!537491 () MutLongMap!1780)

(assert (=> b!1551578 (= e!995206 (and e!995203 ((_ is LongMap!1780) lt!537491)))))

(assert (=> b!1551578 (= lt!537491 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))

(declare-fun e!995181 () Bool)

(assert (=> b!1551579 (= e!995181 (and e!995211 tp!453726))))

(declare-fun b!1551580 () Bool)

(declare-fun res!693193 () Bool)

(assert (=> b!1551580 (=> (not res!693193) (not e!995208))))

(declare-datatypes ((LexerInterface!2580 0))(
  ( (LexerInterfaceExt!2577 (__x!11129 Int)) (Lexer!2578) )
))
(declare-fun thiss!16438 () LexerInterface!2580)

(declare-fun ruleValid!680 (LexerInterface!2580 Rule!5682) Bool)

(assert (=> b!1551580 (= res!693193 (ruleValid!680 thiss!16438 rule!240))))

(assert (=> b!1551581 (= e!995204 (and tp!453732 tp!453728))))

(declare-fun b!1551582 () Bool)

(declare-fun e!995195 () Bool)

(assert (=> b!1551582 (= e!995195 e!995181)))

(declare-fun b!1551583 () Bool)

(declare-fun res!693189 () Bool)

(assert (=> b!1551583 (=> (not res!693189) (not e!995208))))

(declare-fun valid!1427 (CacheUp!1048) Bool)

(assert (=> b!1551583 (= res!693189 (valid!1427 cacheUp!755))))

(declare-fun tp!453737 () Bool)

(declare-fun e!995207 () Bool)

(declare-fun tp!453749 () Bool)

(declare-fun array_inv!1962 (array!6104) Bool)

(assert (=> b!1551584 (= e!995207 (and tp!453739 tp!453737 tp!453749 (array_inv!1959 (_keys!2074 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) (array_inv!1962 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) e!995213))))

(declare-fun b!1551585 () Bool)

(assert (=> b!1551585 (= e!995198 e!995214)))

(declare-fun b!1551586 () Bool)

(declare-fun e!995209 () Bool)

(assert (=> b!1551586 (= e!995209 e!995210)))

(declare-fun mapIsEmpty!8245 () Bool)

(assert (=> mapIsEmpty!8245 mapRes!8244))

(declare-fun b!1551587 () Bool)

(declare-fun e!995191 () Bool)

(assert (=> b!1551587 (= e!995208 e!995191)))

(declare-fun res!693186 () Bool)

(assert (=> b!1551587 (=> (not res!693186) (not e!995191))))

(declare-fun lt!537496 () List!16847)

(declare-fun totalInput!568 () BalanceConc!11060)

(declare-fun isSuffix!371 (List!16847 List!16847) Bool)

(declare-fun list!6482 (BalanceConc!11060) List!16847)

(assert (=> b!1551587 (= res!693186 (isSuffix!371 lt!537496 (list!6482 totalInput!568)))))

(assert (=> b!1551587 (= lt!537496 (list!6482 input!1676))))

(declare-fun b!1551588 () Bool)

(declare-fun e!995197 () Bool)

(assert (=> b!1551588 (= e!995197 (not e!995187))))

(declare-fun res!693187 () Bool)

(assert (=> b!1551588 (=> res!693187 e!995187)))

(declare-fun semiInverseModEq!1107 (Int Int) Bool)

(assert (=> b!1551588 (= res!693187 (not (semiInverseModEq!1107 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240)))))))

(declare-datatypes ((Unit!26027 0))(
  ( (Unit!26028) )
))
(declare-fun lt!537494 () Unit!26027)

(declare-fun lemmaInv!421 (TokenValueInjection!5722) Unit!26027)

(assert (=> b!1551588 (= lt!537494 (lemmaInv!421 (transformation!2941 rule!240)))))

(assert (=> b!1551588 e!995199))

(declare-fun res!693195 () Bool)

(assert (=> b!1551588 (=> res!693195 e!995199)))

(declare-fun isEmpty!10094 (List!16847) Bool)

(assert (=> b!1551588 (= res!693195 (isEmpty!10094 (_1!9424 lt!537499)))))

(declare-fun findLongestMatchInner!327 (Regex!4269 List!16847 Int List!16847 List!16847 Int) tuple2!16200)

(declare-fun size!13577 (List!16847) Int)

(assert (=> b!1551588 (= lt!537499 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))

(declare-fun lt!537495 () Unit!26027)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!311 (Regex!4269 List!16847) Unit!26027)

(assert (=> b!1551588 (= lt!537495 (longestMatchIsAcceptedByMatchOrIsEmpty!311 (regex!2941 rule!240) lt!537496))))

(declare-fun b!1551589 () Bool)

(declare-fun lt!537498 () List!16847)

(declare-datatypes ((tuple2!16202 0))(
  ( (tuple2!16203 (_1!9425 BalanceConc!11060) (_2!9425 BalanceConc!11060)) )
))
(declare-datatypes ((tuple4!882 0))(
  ( (tuple4!883 (_1!9426 tuple2!16202) (_2!9426 CacheUp!1048) (_3!1324 CacheDown!1052) (_4!441 CacheFurthestNullable!474)) )
))
(declare-fun lt!537493 () tuple4!882)

(declare-datatypes ((Token!5464 0))(
  ( (Token!5465 (value!93458 TokenValue!3031) (rule!4722 Rule!5682) (size!13578 Int) (originalCharacters!3763 List!16847)) )
))
(declare-datatypes ((tuple2!16204 0))(
  ( (tuple2!16205 (_1!9427 Token!5464) (_2!9427 BalanceConc!11060)) )
))
(declare-datatypes ((Option!3026 0))(
  ( (None!3025) (Some!3025 (v!23620 tuple2!16204)) )
))
(declare-fun isDefined!2429 (Option!3026) Bool)

(declare-fun apply!4105 (TokenValueInjection!5722 BalanceConc!11060) TokenValue!3031)

(declare-fun size!13579 (BalanceConc!11060) Int)

(declare-datatypes ((tuple2!16206 0))(
  ( (tuple2!16207 (_1!9428 Token!5464) (_2!9428 List!16847)) )
))
(declare-datatypes ((Option!3027 0))(
  ( (None!3026) (Some!3026 (v!23621 tuple2!16206)) )
))
(declare-fun isDefined!2430 (Option!3027) Bool)

(declare-fun maxPrefixOneRule!698 (LexerInterface!2580 Rule!5682 List!16847) Option!3027)

(assert (=> b!1551589 (= e!995187 (= (isDefined!2429 (Some!3025 (tuple2!16205 (Token!5465 (apply!4105 (transformation!2941 rule!240) (_1!9425 (_1!9426 lt!537493))) rule!240 (size!13579 (_1!9425 (_1!9426 lt!537493))) lt!537498) (_2!9425 (_1!9426 lt!537493))))) (isDefined!2430 (maxPrefixOneRule!698 thiss!16438 rule!240 lt!537496))))))

(declare-fun lt!537501 () Unit!26027)

(declare-fun ForallOf!206 (Int BalanceConc!11060) Unit!26027)

(declare-fun seqFromList!1769 (List!16847) BalanceConc!11060)

(assert (=> b!1551589 (= lt!537501 (ForallOf!206 lambda!65669 (seqFromList!1769 lt!537498)))))

(assert (=> b!1551589 (= lt!537498 (list!6482 (_1!9425 (_1!9426 lt!537493))))))

(declare-fun lt!537500 () Unit!26027)

(assert (=> b!1551589 (= lt!537500 (ForallOf!206 lambda!65669 (_1!9425 (_1!9426 lt!537493))))))

(declare-fun res!693190 () Bool)

(assert (=> start!143752 (=> (not res!693190) (not e!995208))))

(assert (=> start!143752 (= res!693190 ((_ is Lexer!2578) thiss!16438))))

(assert (=> start!143752 e!995208))

(declare-fun e!995215 () Bool)

(declare-fun inv!22047 (BalanceConc!11060) Bool)

(assert (=> start!143752 (and (inv!22047 totalInput!568) e!995215)))

(declare-fun inv!22048 (CacheUp!1048) Bool)

(assert (=> start!143752 (and (inv!22048 cacheUp!755) e!995193)))

(declare-fun e!995202 () Bool)

(declare-fun inv!22049 (CacheFurthestNullable!474) Bool)

(assert (=> start!143752 (and (inv!22049 cacheFurthestNullable!103) e!995202)))

(assert (=> start!143752 (and (inv!22047 input!1676) e!995205)))

(assert (=> start!143752 e!995192))

(declare-fun inv!22050 (CacheDown!1052) Bool)

(assert (=> start!143752 (and (inv!22050 cacheDown!768) e!995195)))

(assert (=> start!143752 true))

(declare-fun b!1551590 () Bool)

(assert (=> b!1551590 (= e!995196 e!995209)))

(declare-fun b!1551591 () Bool)

(declare-fun res!693185 () Bool)

(assert (=> b!1551591 (=> (not res!693185) (not e!995191))))

(assert (=> b!1551591 (= res!693185 (= (totalInput!2444 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1551592 () Bool)

(assert (=> b!1551592 (= e!995191 e!995197)))

(declare-fun res!693194 () Bool)

(assert (=> b!1551592 (=> (not res!693194) (not e!995197))))

(declare-fun isEmpty!10095 (BalanceConc!11060) Bool)

(assert (=> b!1551592 (= res!693194 (not (isEmpty!10095 (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!45 (Regex!4269 BalanceConc!11060 BalanceConc!11060 CacheUp!1048 CacheDown!1052 CacheFurthestNullable!474) tuple4!882)

(assert (=> b!1551592 (= lt!537493 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun mapIsEmpty!8246 () Bool)

(assert (=> mapIsEmpty!8246 mapRes!8246))

(declare-fun b!1551593 () Bool)

(assert (=> b!1551593 (= e!995202 (and e!995189 (inv!22047 (totalInput!2444 cacheFurthestNullable!103)) e!995185))))

(declare-fun mapNonEmpty!8246 () Bool)

(declare-fun tp!453725 () Bool)

(declare-fun tp!453734 () Bool)

(assert (=> mapNonEmpty!8246 (= mapRes!8246 (and tp!453725 tp!453734))))

(declare-fun mapRest!8246 () (Array (_ BitVec 32) List!16850))

(declare-fun mapValue!8245 () List!16850)

(declare-fun mapKey!8245 () (_ BitVec 32))

(assert (=> mapNonEmpty!8246 (= (arr!2725 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) (store mapRest!8246 mapKey!8245 mapValue!8245))))

(declare-fun b!1551594 () Bool)

(declare-fun tp!453729 () Bool)

(assert (=> b!1551594 (= e!995215 (and (inv!22046 (c!252328 totalInput!568)) tp!453729))))

(declare-fun b!1551595 () Bool)

(assert (=> b!1551595 (= e!995184 e!995207)))

(assert (= (and start!143752 res!693190) b!1551580))

(assert (= (and b!1551580 res!693193) b!1551583))

(assert (= (and b!1551583 res!693189) b!1551576))

(assert (= (and b!1551576 res!693191) b!1551563))

(assert (= (and b!1551563 res!693188) b!1551587))

(assert (= (and b!1551587 res!693186) b!1551591))

(assert (= (and b!1551591 res!693185) b!1551592))

(assert (= (and b!1551592 res!693194) b!1551588))

(assert (= (and b!1551588 (not res!693195)) b!1551574))

(assert (= (and b!1551588 (not res!693187)) b!1551575))

(assert (= (and b!1551575 (not res!693192)) b!1551589))

(assert (= start!143752 b!1551594))

(assert (= (and b!1551569 condMapEmpty!8246) mapIsEmpty!8244))

(assert (= (and b!1551569 (not condMapEmpty!8246)) mapNonEmpty!8244))

(assert (= b!1551560 b!1551569))

(assert (= b!1551585 b!1551560))

(assert (= b!1551577 b!1551585))

(assert (= (and b!1551562 ((_ is LongMap!1779) (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))) b!1551577))

(assert (= b!1551570 b!1551562))

(assert (= (and b!1551565 ((_ is HashMap!1723) (cache!2104 cacheUp!755))) b!1551570))

(assert (= start!143752 b!1551565))

(assert (= (and b!1551571 condMapEmpty!8244) mapIsEmpty!8246))

(assert (= (and b!1551571 (not condMapEmpty!8244)) mapNonEmpty!8246))

(assert (= b!1551584 b!1551571))

(assert (= b!1551595 b!1551584))

(assert (= b!1551559 b!1551595))

(assert (= (and b!1551578 ((_ is LongMap!1780) (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))) b!1551559))

(assert (= b!1551572 b!1551578))

(assert (= (and b!1551593 ((_ is HashMap!1724) (cache!2105 cacheFurthestNullable!103))) b!1551572))

(assert (= b!1551593 b!1551567))

(assert (= start!143752 b!1551593))

(assert (= start!143752 b!1551566))

(assert (= b!1551561 b!1551581))

(assert (= start!143752 b!1551561))

(assert (= (and b!1551568 condMapEmpty!8245) mapIsEmpty!8245))

(assert (= (and b!1551568 (not condMapEmpty!8245)) mapNonEmpty!8245))

(assert (= b!1551573 b!1551568))

(assert (= b!1551586 b!1551573))

(assert (= b!1551590 b!1551586))

(assert (= (and b!1551564 ((_ is LongMap!1781) (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))) b!1551590))

(assert (= b!1551579 b!1551564))

(assert (= (and b!1551582 ((_ is HashMap!1725) (cache!2106 cacheDown!768))) b!1551579))

(assert (= start!143752 b!1551582))

(declare-fun m!1823985 () Bool)

(assert (=> mapNonEmpty!8244 m!1823985))

(declare-fun m!1823987 () Bool)

(assert (=> b!1551594 m!1823987))

(declare-fun m!1823989 () Bool)

(assert (=> b!1551584 m!1823989))

(declare-fun m!1823991 () Bool)

(assert (=> b!1551584 m!1823991))

(declare-fun m!1823993 () Bool)

(assert (=> b!1551588 m!1823993))

(declare-fun m!1823995 () Bool)

(assert (=> b!1551588 m!1823995))

(declare-fun m!1823997 () Bool)

(assert (=> b!1551588 m!1823997))

(declare-fun m!1823999 () Bool)

(assert (=> b!1551588 m!1823999))

(declare-fun m!1824001 () Bool)

(assert (=> b!1551588 m!1824001))

(assert (=> b!1551588 m!1824001))

(assert (=> b!1551588 m!1823997))

(declare-fun m!1824003 () Bool)

(assert (=> b!1551588 m!1824003))

(declare-fun m!1824005 () Bool)

(assert (=> b!1551588 m!1824005))

(declare-fun m!1824007 () Bool)

(assert (=> mapNonEmpty!8245 m!1824007))

(declare-fun m!1824009 () Bool)

(assert (=> start!143752 m!1824009))

(declare-fun m!1824011 () Bool)

(assert (=> start!143752 m!1824011))

(declare-fun m!1824013 () Bool)

(assert (=> start!143752 m!1824013))

(declare-fun m!1824015 () Bool)

(assert (=> start!143752 m!1824015))

(declare-fun m!1824017 () Bool)

(assert (=> start!143752 m!1824017))

(declare-fun m!1824019 () Bool)

(assert (=> b!1551567 m!1824019))

(declare-fun m!1824021 () Bool)

(assert (=> mapNonEmpty!8246 m!1824021))

(declare-fun m!1824023 () Bool)

(assert (=> b!1551575 m!1824023))

(declare-fun m!1824025 () Bool)

(assert (=> b!1551589 m!1824025))

(declare-fun m!1824027 () Bool)

(assert (=> b!1551589 m!1824027))

(assert (=> b!1551589 m!1824027))

(declare-fun m!1824029 () Bool)

(assert (=> b!1551589 m!1824029))

(declare-fun m!1824031 () Bool)

(assert (=> b!1551589 m!1824031))

(declare-fun m!1824033 () Bool)

(assert (=> b!1551589 m!1824033))

(declare-fun m!1824035 () Bool)

(assert (=> b!1551589 m!1824035))

(declare-fun m!1824037 () Bool)

(assert (=> b!1551589 m!1824037))

(declare-fun m!1824039 () Bool)

(assert (=> b!1551589 m!1824039))

(assert (=> b!1551589 m!1824039))

(declare-fun m!1824041 () Bool)

(assert (=> b!1551589 m!1824041))

(declare-fun m!1824043 () Bool)

(assert (=> b!1551563 m!1824043))

(declare-fun m!1824045 () Bool)

(assert (=> b!1551592 m!1824045))

(declare-fun m!1824047 () Bool)

(assert (=> b!1551592 m!1824047))

(declare-fun m!1824049 () Bool)

(assert (=> b!1551593 m!1824049))

(declare-fun m!1824051 () Bool)

(assert (=> b!1551583 m!1824051))

(declare-fun m!1824053 () Bool)

(assert (=> b!1551587 m!1824053))

(assert (=> b!1551587 m!1824053))

(declare-fun m!1824055 () Bool)

(assert (=> b!1551587 m!1824055))

(declare-fun m!1824057 () Bool)

(assert (=> b!1551587 m!1824057))

(declare-fun m!1824059 () Bool)

(assert (=> b!1551574 m!1824059))

(declare-fun m!1824061 () Bool)

(assert (=> b!1551560 m!1824061))

(declare-fun m!1824063 () Bool)

(assert (=> b!1551560 m!1824063))

(declare-fun m!1824065 () Bool)

(assert (=> b!1551580 m!1824065))

(declare-fun m!1824067 () Bool)

(assert (=> b!1551576 m!1824067))

(declare-fun m!1824069 () Bool)

(assert (=> b!1551561 m!1824069))

(declare-fun m!1824071 () Bool)

(assert (=> b!1551561 m!1824071))

(declare-fun m!1824073 () Bool)

(assert (=> b!1551566 m!1824073))

(declare-fun m!1824075 () Bool)

(assert (=> b!1551573 m!1824075))

(declare-fun m!1824077 () Bool)

(assert (=> b!1551573 m!1824077))

(check-sat (not b!1551573) (not start!143752) b_and!108315 (not b_next!41927) (not b!1551575) (not b!1551583) (not b_next!41935) (not b!1551580) (not b!1551594) (not b!1551569) b_and!108313 b_and!108319 (not b!1551571) (not b_next!41925) (not b!1551563) (not b_next!41937) (not mapNonEmpty!8246) (not b_next!41933) b_and!108317 b_and!108311 (not b!1551588) (not b!1551584) (not mapNonEmpty!8245) (not b!1551566) (not b!1551592) (not b!1551561) b_and!108309 b_and!108323 (not b!1551574) (not b!1551576) (not mapNonEmpty!8244) (not b_next!41931) b_and!108321 (not b!1551589) (not b!1551593) (not b_next!41929) (not b!1551587) (not b!1551568) (not b!1551567) (not b!1551560) (not b_next!41923))
(check-sat (not b_next!41933) b_and!108315 (not b_next!41927) (not b_next!41935) (not b_next!41929) (not b_next!41923) b_and!108313 b_and!108319 (not b_next!41925) (not b_next!41937) b_and!108317 b_and!108311 b_and!108309 b_and!108323 (not b_next!41931) b_and!108321)
(get-model)

(declare-fun d!460314 () Bool)

(declare-fun isBalanced!1640 (Conc!5559) Bool)

(assert (=> d!460314 (= (inv!22047 totalInput!568) (isBalanced!1640 (c!252328 totalInput!568)))))

(declare-fun bs!387107 () Bool)

(assert (= bs!387107 d!460314))

(declare-fun m!1824079 () Bool)

(assert (=> bs!387107 m!1824079))

(assert (=> start!143752 d!460314))

(declare-fun d!460316 () Bool)

(declare-fun res!693200 () Bool)

(declare-fun e!995224 () Bool)

(assert (=> d!460316 (=> (not res!693200) (not e!995224))))

(assert (=> d!460316 (= res!693200 ((_ is HashMap!1725) (cache!2106 cacheDown!768)))))

(assert (=> d!460316 (= (inv!22050 cacheDown!768) e!995224)))

(declare-fun b!1551606 () Bool)

(declare-fun validCacheMapDown!158 (MutableMap!1725) Bool)

(assert (=> b!1551606 (= e!995224 (validCacheMapDown!158 (cache!2106 cacheDown!768)))))

(assert (= (and d!460316 res!693200) b!1551606))

(declare-fun m!1824081 () Bool)

(assert (=> b!1551606 m!1824081))

(assert (=> start!143752 d!460316))

(declare-fun d!460318 () Bool)

(declare-fun res!693203 () Bool)

(declare-fun e!995227 () Bool)

(assert (=> d!460318 (=> (not res!693203) (not e!995227))))

(assert (=> d!460318 (= res!693203 ((_ is HashMap!1723) (cache!2104 cacheUp!755)))))

(assert (=> d!460318 (= (inv!22048 cacheUp!755) e!995227)))

(declare-fun b!1551609 () Bool)

(declare-fun validCacheMapUp!158 (MutableMap!1723) Bool)

(assert (=> b!1551609 (= e!995227 (validCacheMapUp!158 (cache!2104 cacheUp!755)))))

(assert (= (and d!460318 res!693203) b!1551609))

(declare-fun m!1824083 () Bool)

(assert (=> b!1551609 m!1824083))

(assert (=> start!143752 d!460318))

(declare-fun d!460320 () Bool)

(assert (=> d!460320 (= (inv!22047 input!1676) (isBalanced!1640 (c!252328 input!1676)))))

(declare-fun bs!387108 () Bool)

(assert (= bs!387108 d!460320))

(declare-fun m!1824085 () Bool)

(assert (=> bs!387108 m!1824085))

(assert (=> start!143752 d!460320))

(declare-fun d!460322 () Bool)

(declare-fun res!693206 () Bool)

(declare-fun e!995230 () Bool)

(assert (=> d!460322 (=> (not res!693206) (not e!995230))))

(assert (=> d!460322 (= res!693206 ((_ is HashMap!1724) (cache!2105 cacheFurthestNullable!103)))))

(assert (=> d!460322 (= (inv!22049 cacheFurthestNullable!103) e!995230)))

(declare-fun b!1551612 () Bool)

(declare-fun validCacheMapFurthestNullable!71 (MutableMap!1724 BalanceConc!11060) Bool)

(assert (=> b!1551612 (= e!995230 (validCacheMapFurthestNullable!71 (cache!2105 cacheFurthestNullable!103) (totalInput!2444 cacheFurthestNullable!103)))))

(assert (= (and d!460322 res!693206) b!1551612))

(declare-fun m!1824087 () Bool)

(assert (=> b!1551612 m!1824087))

(assert (=> start!143752 d!460322))

(declare-fun d!460324 () Bool)

(declare-fun e!995233 () Bool)

(assert (=> d!460324 e!995233))

(declare-fun res!693209 () Bool)

(assert (=> d!460324 (=> res!693209 e!995233)))

(declare-fun lt!537504 () Bool)

(assert (=> d!460324 (= res!693209 (not lt!537504))))

(declare-fun drop!782 (List!16847 Int) List!16847)

(assert (=> d!460324 (= lt!537504 (= lt!537496 (drop!782 (list!6482 totalInput!568) (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496)))))))

(assert (=> d!460324 (= (isSuffix!371 lt!537496 (list!6482 totalInput!568)) lt!537504)))

(declare-fun b!1551615 () Bool)

(assert (=> b!1551615 (= e!995233 (>= (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496)))))

(assert (= (and d!460324 (not res!693209)) b!1551615))

(assert (=> d!460324 m!1824053))

(declare-fun m!1824089 () Bool)

(assert (=> d!460324 m!1824089))

(assert (=> d!460324 m!1823997))

(assert (=> d!460324 m!1824053))

(declare-fun m!1824091 () Bool)

(assert (=> d!460324 m!1824091))

(assert (=> b!1551615 m!1824053))

(assert (=> b!1551615 m!1824089))

(assert (=> b!1551615 m!1823997))

(assert (=> b!1551587 d!460324))

(declare-fun d!460326 () Bool)

(declare-fun list!6483 (Conc!5559) List!16847)

(assert (=> d!460326 (= (list!6482 totalInput!568) (list!6483 (c!252328 totalInput!568)))))

(declare-fun bs!387109 () Bool)

(assert (= bs!387109 d!460326))

(declare-fun m!1824093 () Bool)

(assert (=> bs!387109 m!1824093))

(assert (=> b!1551587 d!460326))

(declare-fun d!460328 () Bool)

(assert (=> d!460328 (= (list!6482 input!1676) (list!6483 (c!252328 input!1676)))))

(declare-fun bs!387110 () Bool)

(assert (= bs!387110 d!460328))

(declare-fun m!1824095 () Bool)

(assert (=> bs!387110 m!1824095))

(assert (=> b!1551587 d!460328))

(declare-fun d!460330 () Bool)

(declare-fun dynLambda!7424 (Int BalanceConc!11060) Bool)

(assert (=> d!460330 (dynLambda!7424 lambda!65669 (seqFromList!1769 lt!537498))))

(declare-fun lt!537507 () Unit!26027)

(declare-fun choose!9248 (Int BalanceConc!11060) Unit!26027)

(assert (=> d!460330 (= lt!537507 (choose!9248 lambda!65669 (seqFromList!1769 lt!537498)))))

(assert (=> d!460330 (Forall!603 lambda!65669)))

(assert (=> d!460330 (= (ForallOf!206 lambda!65669 (seqFromList!1769 lt!537498)) lt!537507)))

(declare-fun b_lambda!48667 () Bool)

(assert (=> (not b_lambda!48667) (not d!460330)))

(declare-fun bs!387111 () Bool)

(assert (= bs!387111 d!460330))

(assert (=> bs!387111 m!1824027))

(declare-fun m!1824097 () Bool)

(assert (=> bs!387111 m!1824097))

(assert (=> bs!387111 m!1824027))

(declare-fun m!1824099 () Bool)

(assert (=> bs!387111 m!1824099))

(assert (=> bs!387111 m!1824023))

(assert (=> b!1551589 d!460330))

(declare-fun d!460332 () Bool)

(declare-fun fromListB!758 (List!16847) BalanceConc!11060)

(assert (=> d!460332 (= (seqFromList!1769 lt!537498) (fromListB!758 lt!537498))))

(declare-fun bs!387112 () Bool)

(assert (= bs!387112 d!460332))

(declare-fun m!1824101 () Bool)

(assert (=> bs!387112 m!1824101))

(assert (=> b!1551589 d!460332))

(declare-fun d!460334 () Bool)

(assert (=> d!460334 (dynLambda!7424 lambda!65669 (_1!9425 (_1!9426 lt!537493)))))

(declare-fun lt!537508 () Unit!26027)

(assert (=> d!460334 (= lt!537508 (choose!9248 lambda!65669 (_1!9425 (_1!9426 lt!537493))))))

(assert (=> d!460334 (Forall!603 lambda!65669)))

(assert (=> d!460334 (= (ForallOf!206 lambda!65669 (_1!9425 (_1!9426 lt!537493))) lt!537508)))

(declare-fun b_lambda!48669 () Bool)

(assert (=> (not b_lambda!48669) (not d!460334)))

(declare-fun bs!387113 () Bool)

(assert (= bs!387113 d!460334))

(declare-fun m!1824103 () Bool)

(assert (=> bs!387113 m!1824103))

(declare-fun m!1824105 () Bool)

(assert (=> bs!387113 m!1824105))

(assert (=> bs!387113 m!1824023))

(assert (=> b!1551589 d!460334))

(declare-fun b!1551634 () Bool)

(declare-fun res!693229 () Bool)

(declare-fun e!995245 () Bool)

(assert (=> b!1551634 (=> (not res!693229) (not e!995245))))

(declare-fun lt!537519 () Option!3027)

(declare-fun get!4841 (Option!3027) tuple2!16206)

(assert (=> b!1551634 (= res!693229 (= (rule!4722 (_1!9428 (get!4841 lt!537519))) rule!240))))

(declare-fun b!1551635 () Bool)

(declare-fun e!995244 () Bool)

(assert (=> b!1551635 (= e!995244 e!995245)))

(declare-fun res!693228 () Bool)

(assert (=> b!1551635 (=> (not res!693228) (not e!995245))))

(declare-fun charsOf!1643 (Token!5464) BalanceConc!11060)

(assert (=> b!1551635 (= res!693228 (matchR!1874 (regex!2941 rule!240) (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))))))

(declare-fun b!1551636 () Bool)

(declare-fun res!693225 () Bool)

(assert (=> b!1551636 (=> (not res!693225) (not e!995245))))

(declare-fun ++!4411 (List!16847 List!16847) List!16847)

(assert (=> b!1551636 (= res!693225 (= (++!4411 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))) (_2!9428 (get!4841 lt!537519))) lt!537496))))

(declare-fun b!1551637 () Bool)

(declare-fun e!995242 () Option!3027)

(assert (=> b!1551637 (= e!995242 None!3026)))

(declare-fun b!1551638 () Bool)

(declare-fun e!995243 () Bool)

(assert (=> b!1551638 (= e!995243 (matchR!1874 (regex!2941 rule!240) (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(declare-fun d!460336 () Bool)

(assert (=> d!460336 e!995244))

(declare-fun res!693230 () Bool)

(assert (=> d!460336 (=> res!693230 e!995244)))

(declare-fun isEmpty!10096 (Option!3027) Bool)

(assert (=> d!460336 (= res!693230 (isEmpty!10096 lt!537519))))

(assert (=> d!460336 (= lt!537519 e!995242)))

(declare-fun c!252331 () Bool)

(declare-fun lt!537522 () tuple2!16200)

(assert (=> d!460336 (= c!252331 (isEmpty!10094 (_1!9424 lt!537522)))))

(declare-fun findLongestMatch!258 (Regex!4269 List!16847) tuple2!16200)

(assert (=> d!460336 (= lt!537522 (findLongestMatch!258 (regex!2941 rule!240) lt!537496))))

(assert (=> d!460336 (ruleValid!680 thiss!16438 rule!240)))

(assert (=> d!460336 (= (maxPrefixOneRule!698 thiss!16438 rule!240 lt!537496) lt!537519)))

(declare-fun b!1551639 () Bool)

(declare-fun res!693226 () Bool)

(assert (=> b!1551639 (=> (not res!693226) (not e!995245))))

(assert (=> b!1551639 (= res!693226 (= (value!93458 (_1!9428 (get!4841 lt!537519))) (apply!4105 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519)))) (seqFromList!1769 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))))))))

(declare-fun b!1551640 () Bool)

(assert (=> b!1551640 (= e!995242 (Some!3026 (tuple2!16207 (Token!5465 (apply!4105 (transformation!2941 rule!240) (seqFromList!1769 (_1!9424 lt!537522))) rule!240 (size!13579 (seqFromList!1769 (_1!9424 lt!537522))) (_1!9424 lt!537522)) (_2!9424 lt!537522))))))

(declare-fun lt!537523 () Unit!26027)

(assert (=> b!1551640 (= lt!537523 (longestMatchIsAcceptedByMatchOrIsEmpty!311 (regex!2941 rule!240) lt!537496))))

(declare-fun res!693224 () Bool)

(assert (=> b!1551640 (= res!693224 (isEmpty!10094 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(assert (=> b!1551640 (=> res!693224 e!995243)))

(assert (=> b!1551640 e!995243))

(declare-fun lt!537521 () Unit!26027)

(assert (=> b!1551640 (= lt!537521 lt!537523)))

(declare-fun lt!537520 () Unit!26027)

(declare-fun lemmaSemiInverse!362 (TokenValueInjection!5722 BalanceConc!11060) Unit!26027)

(assert (=> b!1551640 (= lt!537520 (lemmaSemiInverse!362 (transformation!2941 rule!240) (seqFromList!1769 (_1!9424 lt!537522))))))

(declare-fun b!1551641 () Bool)

(declare-fun res!693227 () Bool)

(assert (=> b!1551641 (=> (not res!693227) (not e!995245))))

(assert (=> b!1551641 (= res!693227 (< (size!13577 (_2!9428 (get!4841 lt!537519))) (size!13577 lt!537496)))))

(declare-fun b!1551642 () Bool)

(assert (=> b!1551642 (= e!995245 (= (size!13578 (_1!9428 (get!4841 lt!537519))) (size!13577 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519))))))))

(assert (= (and d!460336 c!252331) b!1551637))

(assert (= (and d!460336 (not c!252331)) b!1551640))

(assert (= (and b!1551640 (not res!693224)) b!1551638))

(assert (= (and d!460336 (not res!693230)) b!1551635))

(assert (= (and b!1551635 res!693228) b!1551636))

(assert (= (and b!1551636 res!693225) b!1551641))

(assert (= (and b!1551641 res!693227) b!1551634))

(assert (= (and b!1551634 res!693229) b!1551639))

(assert (= (and b!1551639 res!693226) b!1551642))

(declare-fun m!1824107 () Bool)

(assert (=> b!1551641 m!1824107))

(declare-fun m!1824109 () Bool)

(assert (=> b!1551641 m!1824109))

(assert (=> b!1551641 m!1823997))

(declare-fun m!1824111 () Bool)

(assert (=> d!460336 m!1824111))

(declare-fun m!1824113 () Bool)

(assert (=> d!460336 m!1824113))

(declare-fun m!1824115 () Bool)

(assert (=> d!460336 m!1824115))

(assert (=> d!460336 m!1824065))

(declare-fun m!1824117 () Bool)

(assert (=> b!1551640 m!1824117))

(declare-fun m!1824119 () Bool)

(assert (=> b!1551640 m!1824119))

(assert (=> b!1551640 m!1823999))

(assert (=> b!1551640 m!1824001))

(assert (=> b!1551640 m!1823997))

(assert (=> b!1551640 m!1824001))

(assert (=> b!1551640 m!1823997))

(assert (=> b!1551640 m!1824003))

(assert (=> b!1551640 m!1824117))

(declare-fun m!1824121 () Bool)

(assert (=> b!1551640 m!1824121))

(declare-fun m!1824123 () Bool)

(assert (=> b!1551640 m!1824123))

(assert (=> b!1551640 m!1824117))

(assert (=> b!1551640 m!1824117))

(declare-fun m!1824125 () Bool)

(assert (=> b!1551640 m!1824125))

(assert (=> b!1551634 m!1824107))

(assert (=> b!1551638 m!1824001))

(assert (=> b!1551638 m!1823997))

(assert (=> b!1551638 m!1824001))

(assert (=> b!1551638 m!1823997))

(assert (=> b!1551638 m!1824003))

(declare-fun m!1824127 () Bool)

(assert (=> b!1551638 m!1824127))

(assert (=> b!1551635 m!1824107))

(declare-fun m!1824129 () Bool)

(assert (=> b!1551635 m!1824129))

(assert (=> b!1551635 m!1824129))

(declare-fun m!1824131 () Bool)

(assert (=> b!1551635 m!1824131))

(assert (=> b!1551635 m!1824131))

(declare-fun m!1824133 () Bool)

(assert (=> b!1551635 m!1824133))

(assert (=> b!1551639 m!1824107))

(declare-fun m!1824135 () Bool)

(assert (=> b!1551639 m!1824135))

(assert (=> b!1551639 m!1824135))

(declare-fun m!1824137 () Bool)

(assert (=> b!1551639 m!1824137))

(assert (=> b!1551642 m!1824107))

(declare-fun m!1824139 () Bool)

(assert (=> b!1551642 m!1824139))

(assert (=> b!1551636 m!1824107))

(assert (=> b!1551636 m!1824129))

(assert (=> b!1551636 m!1824129))

(assert (=> b!1551636 m!1824131))

(assert (=> b!1551636 m!1824131))

(declare-fun m!1824141 () Bool)

(assert (=> b!1551636 m!1824141))

(assert (=> b!1551589 d!460336))

(declare-fun d!460338 () Bool)

(declare-fun isEmpty!10097 (Option!3026) Bool)

(assert (=> d!460338 (= (isDefined!2429 (Some!3025 (tuple2!16205 (Token!5465 (apply!4105 (transformation!2941 rule!240) (_1!9425 (_1!9426 lt!537493))) rule!240 (size!13579 (_1!9425 (_1!9426 lt!537493))) lt!537498) (_2!9425 (_1!9426 lt!537493))))) (not (isEmpty!10097 (Some!3025 (tuple2!16205 (Token!5465 (apply!4105 (transformation!2941 rule!240) (_1!9425 (_1!9426 lt!537493))) rule!240 (size!13579 (_1!9425 (_1!9426 lt!537493))) lt!537498) (_2!9425 (_1!9426 lt!537493)))))))))

(declare-fun bs!387114 () Bool)

(assert (= bs!387114 d!460338))

(declare-fun m!1824143 () Bool)

(assert (=> bs!387114 m!1824143))

(assert (=> b!1551589 d!460338))

(declare-fun d!460340 () Bool)

(declare-fun dynLambda!7425 (Int BalanceConc!11060) TokenValue!3031)

(assert (=> d!460340 (= (apply!4105 (transformation!2941 rule!240) (_1!9425 (_1!9426 lt!537493))) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))

(declare-fun b_lambda!48671 () Bool)

(assert (=> (not b_lambda!48671) (not d!460340)))

(declare-fun t!141256 () Bool)

(declare-fun tb!87265 () Bool)

(assert (=> (and b!1551581 (= (toValue!4306 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))) t!141256) tb!87265))

(declare-fun result!105276 () Bool)

(declare-fun inv!21 (TokenValue!3031) Bool)

(assert (=> tb!87265 (= result!105276 (inv!21 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun m!1824145 () Bool)

(assert (=> tb!87265 m!1824145))

(assert (=> d!460340 t!141256))

(declare-fun b_and!108325 () Bool)

(assert (= b_and!108309 (and (=> t!141256 result!105276) b_and!108325)))

(declare-fun m!1824147 () Bool)

(assert (=> d!460340 m!1824147))

(assert (=> b!1551589 d!460340))

(declare-fun d!460342 () Bool)

(assert (=> d!460342 (= (isDefined!2430 (maxPrefixOneRule!698 thiss!16438 rule!240 lt!537496)) (not (isEmpty!10096 (maxPrefixOneRule!698 thiss!16438 rule!240 lt!537496))))))

(declare-fun bs!387115 () Bool)

(assert (= bs!387115 d!460342))

(assert (=> bs!387115 m!1824039))

(declare-fun m!1824149 () Bool)

(assert (=> bs!387115 m!1824149))

(assert (=> b!1551589 d!460342))

(declare-fun d!460344 () Bool)

(declare-fun lt!537526 () Int)

(assert (=> d!460344 (= lt!537526 (size!13577 (list!6482 (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun size!13580 (Conc!5559) Int)

(assert (=> d!460344 (= lt!537526 (size!13580 (c!252328 (_1!9425 (_1!9426 lt!537493)))))))

(assert (=> d!460344 (= (size!13579 (_1!9425 (_1!9426 lt!537493))) lt!537526)))

(declare-fun bs!387116 () Bool)

(assert (= bs!387116 d!460344))

(assert (=> bs!387116 m!1824025))

(assert (=> bs!387116 m!1824025))

(declare-fun m!1824151 () Bool)

(assert (=> bs!387116 m!1824151))

(declare-fun m!1824153 () Bool)

(assert (=> bs!387116 m!1824153))

(assert (=> b!1551589 d!460344))

(declare-fun d!460346 () Bool)

(assert (=> d!460346 (= (list!6482 (_1!9425 (_1!9426 lt!537493))) (list!6483 (c!252328 (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun bs!387117 () Bool)

(assert (= bs!387117 d!460346))

(declare-fun m!1824155 () Bool)

(assert (=> bs!387117 m!1824155))

(assert (=> b!1551589 d!460346))

(declare-fun d!460348 () Bool)

(assert (=> d!460348 (= (inv!22044 (tag!3205 rule!240)) (= (mod (str.len (value!93457 (tag!3205 rule!240))) 2) 0))))

(assert (=> b!1551561 d!460348))

(declare-fun d!460350 () Bool)

(declare-fun res!693233 () Bool)

(declare-fun e!995251 () Bool)

(assert (=> d!460350 (=> (not res!693233) (not e!995251))))

(assert (=> d!460350 (= res!693233 (semiInverseModEq!1107 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))))))

(assert (=> d!460350 (= (inv!22045 (transformation!2941 rule!240)) e!995251)))

(declare-fun b!1551647 () Bool)

(declare-fun equivClasses!1053 (Int Int) Bool)

(assert (=> b!1551647 (= e!995251 (equivClasses!1053 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))))))

(assert (= (and d!460350 res!693233) b!1551647))

(assert (=> d!460350 m!1823993))

(declare-fun m!1824157 () Bool)

(assert (=> b!1551647 m!1824157))

(assert (=> b!1551561 d!460350))

(declare-fun d!460352 () Bool)

(declare-fun lt!537529 () Int)

(assert (=> d!460352 (>= lt!537529 0)))

(declare-fun e!995254 () Int)

(assert (=> d!460352 (= lt!537529 e!995254)))

(declare-fun c!252334 () Bool)

(assert (=> d!460352 (= c!252334 ((_ is Nil!16779) lt!537496))))

(assert (=> d!460352 (= (size!13577 lt!537496) lt!537529)))

(declare-fun b!1551652 () Bool)

(assert (=> b!1551652 (= e!995254 0)))

(declare-fun b!1551653 () Bool)

(assert (=> b!1551653 (= e!995254 (+ 1 (size!13577 (t!141250 lt!537496))))))

(assert (= (and d!460352 c!252334) b!1551652))

(assert (= (and d!460352 (not c!252334)) b!1551653))

(declare-fun m!1824159 () Bool)

(assert (=> b!1551653 m!1824159))

(assert (=> b!1551588 d!460352))

(declare-fun d!460354 () Bool)

(declare-fun lt!537530 () Int)

(assert (=> d!460354 (>= lt!537530 0)))

(declare-fun e!995255 () Int)

(assert (=> d!460354 (= lt!537530 e!995255)))

(declare-fun c!252335 () Bool)

(assert (=> d!460354 (= c!252335 ((_ is Nil!16779) Nil!16779))))

(assert (=> d!460354 (= (size!13577 Nil!16779) lt!537530)))

(declare-fun b!1551654 () Bool)

(assert (=> b!1551654 (= e!995255 0)))

(declare-fun b!1551655 () Bool)

(assert (=> b!1551655 (= e!995255 (+ 1 (size!13577 (t!141250 Nil!16779))))))

(assert (= (and d!460354 c!252335) b!1551654))

(assert (= (and d!460354 (not c!252335)) b!1551655))

(declare-fun m!1824161 () Bool)

(assert (=> b!1551655 m!1824161))

(assert (=> b!1551588 d!460354))

(declare-fun d!460356 () Bool)

(declare-fun e!995258 () Bool)

(assert (=> d!460356 e!995258))

(declare-fun res!693236 () Bool)

(assert (=> d!460356 (=> res!693236 e!995258)))

(assert (=> d!460356 (= res!693236 (isEmpty!10094 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(declare-fun lt!537533 () Unit!26027)

(declare-fun choose!9249 (Regex!4269 List!16847) Unit!26027)

(assert (=> d!460356 (= lt!537533 (choose!9249 (regex!2941 rule!240) lt!537496))))

(declare-fun validRegex!1708 (Regex!4269) Bool)

(assert (=> d!460356 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460356 (= (longestMatchIsAcceptedByMatchOrIsEmpty!311 (regex!2941 rule!240) lt!537496) lt!537533)))

(declare-fun b!1551658 () Bool)

(assert (=> b!1551658 (= e!995258 (matchR!1874 (regex!2941 rule!240) (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(assert (= (and d!460356 (not res!693236)) b!1551658))

(assert (=> d!460356 m!1823997))

(assert (=> d!460356 m!1824001))

(assert (=> d!460356 m!1824001))

(assert (=> d!460356 m!1823997))

(assert (=> d!460356 m!1824003))

(declare-fun m!1824163 () Bool)

(assert (=> d!460356 m!1824163))

(assert (=> d!460356 m!1824123))

(declare-fun m!1824165 () Bool)

(assert (=> d!460356 m!1824165))

(assert (=> b!1551658 m!1824001))

(assert (=> b!1551658 m!1823997))

(assert (=> b!1551658 m!1824001))

(assert (=> b!1551658 m!1823997))

(assert (=> b!1551658 m!1824003))

(assert (=> b!1551658 m!1824127))

(assert (=> b!1551588 d!460356))

(declare-fun b!1551687 () Bool)

(declare-fun e!995281 () tuple2!16200)

(assert (=> b!1551687 (= e!995281 (tuple2!16201 Nil!16779 Nil!16779))))

(declare-fun bm!101823 () Bool)

(declare-fun call!101832 () Bool)

(declare-fun nullable!1267 (Regex!4269) Bool)

(assert (=> bm!101823 (= call!101832 (nullable!1267 (regex!2941 rule!240)))))

(declare-fun b!1551688 () Bool)

(declare-fun e!995279 () tuple2!16200)

(declare-fun lt!537595 () tuple2!16200)

(assert (=> b!1551688 (= e!995279 lt!537595)))

(declare-fun b!1551689 () Bool)

(declare-fun e!995277 () tuple2!16200)

(declare-fun e!995280 () tuple2!16200)

(assert (=> b!1551689 (= e!995277 e!995280)))

(declare-fun c!252350 () Bool)

(assert (=> b!1551689 (= c!252350 (= (size!13577 Nil!16779) (size!13577 lt!537496)))))

(declare-fun b!1551690 () Bool)

(declare-fun e!995278 () Bool)

(declare-fun lt!537617 () tuple2!16200)

(assert (=> b!1551690 (= e!995278 (>= (size!13577 (_1!9424 lt!537617)) (size!13577 Nil!16779)))))

(declare-fun b!1551691 () Bool)

(declare-fun e!995276 () tuple2!16200)

(assert (=> b!1551691 (= e!995276 e!995279)))

(declare-fun call!101831 () tuple2!16200)

(assert (=> b!1551691 (= lt!537595 call!101831)))

(declare-fun c!252351 () Bool)

(assert (=> b!1551691 (= c!252351 (isEmpty!10094 (_1!9424 lt!537595)))))

(declare-fun bm!101824 () Bool)

(declare-fun call!101835 () Regex!4269)

(declare-fun call!101833 () C!8716)

(declare-fun derivativeStep!1019 (Regex!4269 C!8716) Regex!4269)

(assert (=> bm!101824 (= call!101835 (derivativeStep!1019 (regex!2941 rule!240) call!101833))))

(declare-fun bm!101825 () Bool)

(declare-fun call!101829 () Bool)

(declare-fun isPrefix!1257 (List!16847 List!16847) Bool)

(assert (=> bm!101825 (= call!101829 (isPrefix!1257 lt!537496 lt!537496))))

(declare-fun d!460358 () Bool)

(declare-fun e!995282 () Bool)

(assert (=> d!460358 e!995282))

(declare-fun res!693242 () Bool)

(assert (=> d!460358 (=> (not res!693242) (not e!995282))))

(assert (=> d!460358 (= res!693242 (= (++!4411 (_1!9424 lt!537617) (_2!9424 lt!537617)) lt!537496))))

(assert (=> d!460358 (= lt!537617 e!995277)))

(declare-fun c!252348 () Bool)

(declare-fun lostCause!385 (Regex!4269) Bool)

(assert (=> d!460358 (= c!252348 (lostCause!385 (regex!2941 rule!240)))))

(declare-fun lt!537598 () Unit!26027)

(declare-fun Unit!26029 () Unit!26027)

(assert (=> d!460358 (= lt!537598 Unit!26029)))

(declare-fun getSuffix!667 (List!16847 List!16847) List!16847)

(assert (=> d!460358 (= (getSuffix!667 lt!537496 Nil!16779) lt!537496)))

(declare-fun lt!537612 () Unit!26027)

(declare-fun lt!537592 () Unit!26027)

(assert (=> d!460358 (= lt!537612 lt!537592)))

(declare-fun lt!537606 () List!16847)

(assert (=> d!460358 (= lt!537496 lt!537606)))

(declare-fun lemmaSamePrefixThenSameSuffix!619 (List!16847 List!16847 List!16847 List!16847 List!16847) Unit!26027)

(assert (=> d!460358 (= lt!537592 (lemmaSamePrefixThenSameSuffix!619 Nil!16779 lt!537496 Nil!16779 lt!537606 lt!537496))))

(assert (=> d!460358 (= lt!537606 (getSuffix!667 lt!537496 Nil!16779))))

(declare-fun lt!537594 () Unit!26027)

(declare-fun lt!537600 () Unit!26027)

(assert (=> d!460358 (= lt!537594 lt!537600)))

(assert (=> d!460358 (isPrefix!1257 Nil!16779 (++!4411 Nil!16779 lt!537496))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!782 (List!16847 List!16847) Unit!26027)

(assert (=> d!460358 (= lt!537600 (lemmaConcatTwoListThenFirstIsPrefix!782 Nil!16779 lt!537496))))

(assert (=> d!460358 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460358 (= (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)) lt!537617)))

(declare-fun bm!101826 () Bool)

(declare-fun call!101830 () List!16847)

(declare-fun tail!2205 (List!16847) List!16847)

(assert (=> bm!101826 (= call!101830 (tail!2205 lt!537496))))

(declare-fun bm!101827 () Bool)

(declare-fun call!101834 () Unit!26027)

(declare-fun lemmaIsPrefixRefl!887 (List!16847 List!16847) Unit!26027)

(assert (=> bm!101827 (= call!101834 (lemmaIsPrefixRefl!887 lt!537496 lt!537496))))

(declare-fun bm!101828 () Bool)

(declare-fun head!3110 (List!16847) C!8716)

(assert (=> bm!101828 (= call!101833 (head!3110 lt!537496))))

(declare-fun b!1551692 () Bool)

(assert (=> b!1551692 (= e!995282 e!995278)))

(declare-fun res!693241 () Bool)

(assert (=> b!1551692 (=> res!693241 e!995278)))

(assert (=> b!1551692 (= res!693241 (isEmpty!10094 (_1!9424 lt!537617)))))

(declare-fun bm!101829 () Bool)

(declare-fun call!101828 () Unit!26027)

(declare-fun lemmaIsPrefixSameLengthThenSameList!121 (List!16847 List!16847 List!16847) Unit!26027)

(assert (=> bm!101829 (= call!101828 (lemmaIsPrefixSameLengthThenSameList!121 lt!537496 Nil!16779 lt!537496))))

(declare-fun b!1551693 () Bool)

(declare-fun e!995275 () Unit!26027)

(declare-fun Unit!26030 () Unit!26027)

(assert (=> b!1551693 (= e!995275 Unit!26030)))

(declare-fun b!1551694 () Bool)

(declare-fun c!252353 () Bool)

(assert (=> b!1551694 (= c!252353 call!101832)))

(declare-fun lt!537610 () Unit!26027)

(declare-fun lt!537602 () Unit!26027)

(assert (=> b!1551694 (= lt!537610 lt!537602)))

(declare-fun lt!537614 () C!8716)

(declare-fun lt!537603 () List!16847)

(assert (=> b!1551694 (= (++!4411 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779)) lt!537603) lt!537496)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!436 (List!16847 C!8716 List!16847 List!16847) Unit!26027)

(assert (=> b!1551694 (= lt!537602 (lemmaMoveElementToOtherListKeepsConcatEq!436 Nil!16779 lt!537614 lt!537603 lt!537496))))

(assert (=> b!1551694 (= lt!537603 (tail!2205 lt!537496))))

(assert (=> b!1551694 (= lt!537614 (head!3110 lt!537496))))

(declare-fun lt!537616 () Unit!26027)

(declare-fun lt!537604 () Unit!26027)

(assert (=> b!1551694 (= lt!537616 lt!537604)))

(assert (=> b!1551694 (isPrefix!1257 (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)) lt!537496)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!110 (List!16847 List!16847) Unit!26027)

(assert (=> b!1551694 (= lt!537604 (lemmaAddHeadSuffixToPrefixStillPrefix!110 Nil!16779 lt!537496))))

(declare-fun lt!537608 () Unit!26027)

(declare-fun lt!537590 () Unit!26027)

(assert (=> b!1551694 (= lt!537608 lt!537590)))

(assert (=> b!1551694 (= lt!537590 (lemmaAddHeadSuffixToPrefixStillPrefix!110 Nil!16779 lt!537496))))

(declare-fun lt!537615 () List!16847)

(assert (=> b!1551694 (= lt!537615 (++!4411 Nil!16779 (Cons!16779 (head!3110 lt!537496) Nil!16779)))))

(declare-fun lt!537607 () Unit!26027)

(assert (=> b!1551694 (= lt!537607 e!995275)))

(declare-fun c!252349 () Bool)

(assert (=> b!1551694 (= c!252349 (= (size!13577 Nil!16779) (size!13577 lt!537496)))))

(declare-fun lt!537605 () Unit!26027)

(declare-fun lt!537609 () Unit!26027)

(assert (=> b!1551694 (= lt!537605 lt!537609)))

(assert (=> b!1551694 (<= (size!13577 Nil!16779) (size!13577 lt!537496))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!111 (List!16847 List!16847) Unit!26027)

(assert (=> b!1551694 (= lt!537609 (lemmaIsPrefixThenSmallerEqSize!111 Nil!16779 lt!537496))))

(assert (=> b!1551694 (= e!995280 e!995276)))

(declare-fun b!1551695 () Bool)

(assert (=> b!1551695 (= e!995277 (tuple2!16201 Nil!16779 lt!537496))))

(declare-fun b!1551696 () Bool)

(assert (=> b!1551696 (= e!995276 call!101831)))

(declare-fun b!1551697 () Bool)

(declare-fun c!252352 () Bool)

(assert (=> b!1551697 (= c!252352 call!101832)))

(declare-fun lt!537599 () Unit!26027)

(declare-fun lt!537597 () Unit!26027)

(assert (=> b!1551697 (= lt!537599 lt!537597)))

(assert (=> b!1551697 (= lt!537496 Nil!16779)))

(assert (=> b!1551697 (= lt!537597 call!101828)))

(declare-fun lt!537611 () Unit!26027)

(declare-fun lt!537601 () Unit!26027)

(assert (=> b!1551697 (= lt!537611 lt!537601)))

(assert (=> b!1551697 call!101829))

(assert (=> b!1551697 (= lt!537601 call!101834)))

(assert (=> b!1551697 (= e!995280 e!995281)))

(declare-fun b!1551698 () Bool)

(assert (=> b!1551698 (= e!995279 (tuple2!16201 Nil!16779 lt!537496))))

(declare-fun b!1551699 () Bool)

(assert (=> b!1551699 (= e!995281 (tuple2!16201 Nil!16779 lt!537496))))

(declare-fun b!1551700 () Bool)

(declare-fun Unit!26031 () Unit!26027)

(assert (=> b!1551700 (= e!995275 Unit!26031)))

(declare-fun lt!537596 () Unit!26027)

(assert (=> b!1551700 (= lt!537596 call!101834)))

(assert (=> b!1551700 call!101829))

(declare-fun lt!537591 () Unit!26027)

(assert (=> b!1551700 (= lt!537591 lt!537596)))

(declare-fun lt!537593 () Unit!26027)

(assert (=> b!1551700 (= lt!537593 call!101828)))

(assert (=> b!1551700 (= lt!537496 Nil!16779)))

(declare-fun lt!537613 () Unit!26027)

(assert (=> b!1551700 (= lt!537613 lt!537593)))

(assert (=> b!1551700 false))

(declare-fun bm!101830 () Bool)

(assert (=> bm!101830 (= call!101831 (findLongestMatchInner!327 call!101835 lt!537615 (+ (size!13577 Nil!16779) 1) call!101830 lt!537496 (size!13577 lt!537496)))))

(assert (= (and d!460358 c!252348) b!1551695))

(assert (= (and d!460358 (not c!252348)) b!1551689))

(assert (= (and b!1551689 c!252350) b!1551697))

(assert (= (and b!1551689 (not c!252350)) b!1551694))

(assert (= (and b!1551697 c!252352) b!1551687))

(assert (= (and b!1551697 (not c!252352)) b!1551699))

(assert (= (and b!1551694 c!252349) b!1551700))

(assert (= (and b!1551694 (not c!252349)) b!1551693))

(assert (= (and b!1551694 c!252353) b!1551691))

(assert (= (and b!1551694 (not c!252353)) b!1551696))

(assert (= (and b!1551691 c!252351) b!1551698))

(assert (= (and b!1551691 (not c!252351)) b!1551688))

(assert (= (or b!1551691 b!1551696) bm!101826))

(assert (= (or b!1551691 b!1551696) bm!101828))

(assert (= (or b!1551691 b!1551696) bm!101824))

(assert (= (or b!1551691 b!1551696) bm!101830))

(assert (= (or b!1551697 b!1551700) bm!101829))

(assert (= (or b!1551697 b!1551700) bm!101827))

(assert (= (or b!1551697 b!1551694) bm!101823))

(assert (= (or b!1551697 b!1551700) bm!101825))

(assert (= (and d!460358 res!693242) b!1551692))

(assert (= (and b!1551692 (not res!693241)) b!1551690))

(declare-fun m!1824167 () Bool)

(assert (=> bm!101829 m!1824167))

(declare-fun m!1824169 () Bool)

(assert (=> b!1551691 m!1824169))

(declare-fun m!1824171 () Bool)

(assert (=> b!1551690 m!1824171))

(assert (=> b!1551690 m!1824001))

(assert (=> d!460358 m!1824163))

(declare-fun m!1824173 () Bool)

(assert (=> d!460358 m!1824173))

(declare-fun m!1824175 () Bool)

(assert (=> d!460358 m!1824175))

(declare-fun m!1824177 () Bool)

(assert (=> d!460358 m!1824177))

(declare-fun m!1824179 () Bool)

(assert (=> d!460358 m!1824179))

(declare-fun m!1824181 () Bool)

(assert (=> d!460358 m!1824181))

(assert (=> d!460358 m!1824175))

(declare-fun m!1824183 () Bool)

(assert (=> d!460358 m!1824183))

(declare-fun m!1824185 () Bool)

(assert (=> d!460358 m!1824185))

(declare-fun m!1824187 () Bool)

(assert (=> bm!101823 m!1824187))

(declare-fun m!1824189 () Bool)

(assert (=> b!1551692 m!1824189))

(declare-fun m!1824191 () Bool)

(assert (=> bm!101827 m!1824191))

(declare-fun m!1824193 () Bool)

(assert (=> bm!101828 m!1824193))

(declare-fun m!1824195 () Bool)

(assert (=> bm!101826 m!1824195))

(declare-fun m!1824197 () Bool)

(assert (=> bm!101825 m!1824197))

(assert (=> b!1551694 m!1824185))

(declare-fun m!1824199 () Bool)

(assert (=> b!1551694 m!1824199))

(assert (=> b!1551694 m!1823997))

(assert (=> b!1551694 m!1824195))

(declare-fun m!1824201 () Bool)

(assert (=> b!1551694 m!1824201))

(declare-fun m!1824203 () Bool)

(assert (=> b!1551694 m!1824203))

(declare-fun m!1824205 () Bool)

(assert (=> b!1551694 m!1824205))

(declare-fun m!1824207 () Bool)

(assert (=> b!1551694 m!1824207))

(declare-fun m!1824209 () Bool)

(assert (=> b!1551694 m!1824209))

(assert (=> b!1551694 m!1824201))

(assert (=> b!1551694 m!1824001))

(assert (=> b!1551694 m!1824205))

(assert (=> b!1551694 m!1824185))

(declare-fun m!1824211 () Bool)

(assert (=> b!1551694 m!1824211))

(assert (=> b!1551694 m!1824193))

(declare-fun m!1824213 () Bool)

(assert (=> b!1551694 m!1824213))

(declare-fun m!1824215 () Bool)

(assert (=> b!1551694 m!1824215))

(assert (=> bm!101830 m!1823997))

(declare-fun m!1824217 () Bool)

(assert (=> bm!101830 m!1824217))

(declare-fun m!1824219 () Bool)

(assert (=> bm!101824 m!1824219))

(assert (=> b!1551588 d!460358))

(declare-fun bs!387118 () Bool)

(declare-fun d!460360 () Bool)

(assert (= bs!387118 (and d!460360 b!1551575)))

(declare-fun lambda!65672 () Int)

(assert (=> bs!387118 (= lambda!65672 lambda!65669)))

(assert (=> d!460360 true))

(assert (=> d!460360 (< (dynLambda!7423 order!9857 (toChars!4165 (transformation!2941 rule!240))) (dynLambda!7422 order!9855 lambda!65672))))

(assert (=> d!460360 true))

(assert (=> d!460360 (< (dynLambda!7421 order!9853 (toValue!4306 (transformation!2941 rule!240))) (dynLambda!7422 order!9855 lambda!65672))))

(assert (=> d!460360 (= (semiInverseModEq!1107 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))) (Forall!603 lambda!65672))))

(declare-fun bs!387119 () Bool)

(assert (= bs!387119 d!460360))

(declare-fun m!1824221 () Bool)

(assert (=> bs!387119 m!1824221))

(assert (=> b!1551588 d!460360))

(declare-fun d!460362 () Bool)

(assert (=> d!460362 (= (isEmpty!10094 (_1!9424 lt!537499)) ((_ is Nil!16779) (_1!9424 lt!537499)))))

(assert (=> b!1551588 d!460362))

(declare-fun d!460364 () Bool)

(declare-fun e!995285 () Bool)

(assert (=> d!460364 e!995285))

(declare-fun res!693245 () Bool)

(assert (=> d!460364 (=> (not res!693245) (not e!995285))))

(assert (=> d!460364 (= res!693245 (semiInverseModEq!1107 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))))))

(declare-fun Unit!26032 () Unit!26027)

(assert (=> d!460364 (= (lemmaInv!421 (transformation!2941 rule!240)) Unit!26032)))

(declare-fun b!1551707 () Bool)

(assert (=> b!1551707 (= e!995285 (equivClasses!1053 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))))))

(assert (= (and d!460364 res!693245) b!1551707))

(assert (=> d!460364 m!1823993))

(assert (=> b!1551707 m!1824157))

(assert (=> b!1551588 d!460364))

(declare-fun d!460366 () Bool)

(assert (=> d!460366 (= (array_inv!1959 (_keys!2073 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) (bvsge (size!13574 (_keys!2073 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551560 d!460366))

(declare-fun d!460368 () Bool)

(assert (=> d!460368 (= (array_inv!1960 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) (bvsge (size!13573 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551560 d!460368))

(declare-fun d!460370 () Bool)

(declare-fun res!693250 () Bool)

(declare-fun e!995288 () Bool)

(assert (=> d!460370 (=> (not res!693250) (not e!995288))))

(assert (=> d!460370 (= res!693250 (validRegex!1708 (regex!2941 rule!240)))))

(assert (=> d!460370 (= (ruleValid!680 thiss!16438 rule!240) e!995288)))

(declare-fun b!1551712 () Bool)

(declare-fun res!693251 () Bool)

(assert (=> b!1551712 (=> (not res!693251) (not e!995288))))

(assert (=> b!1551712 (= res!693251 (not (nullable!1267 (regex!2941 rule!240))))))

(declare-fun b!1551713 () Bool)

(assert (=> b!1551713 (= e!995288 (not (= (tag!3205 rule!240) (String!19444 ""))))))

(assert (= (and d!460370 res!693250) b!1551712))

(assert (= (and b!1551712 res!693251) b!1551713))

(assert (=> d!460370 m!1824163))

(assert (=> b!1551712 m!1824187))

(assert (=> b!1551580 d!460370))

(declare-fun d!460372 () Bool)

(assert (=> d!460372 (= (valid!1425 cacheFurthestNullable!103) (validCacheMapFurthestNullable!71 (cache!2105 cacheFurthestNullable!103) (totalInput!2444 cacheFurthestNullable!103)))))

(declare-fun bs!387120 () Bool)

(assert (= bs!387120 d!460372))

(assert (=> bs!387120 m!1824087))

(assert (=> b!1551563 d!460372))

(declare-fun d!460374 () Bool)

(assert (=> d!460374 (= (valid!1427 cacheUp!755) (validCacheMapUp!158 (cache!2104 cacheUp!755)))))

(declare-fun bs!387121 () Bool)

(assert (= bs!387121 d!460374))

(assert (=> bs!387121 m!1824083))

(assert (=> b!1551583 d!460374))

(declare-fun d!460376 () Bool)

(declare-fun lt!537620 () Bool)

(assert (=> d!460376 (= lt!537620 (isEmpty!10094 (list!6482 (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun isEmpty!10098 (Conc!5559) Bool)

(assert (=> d!460376 (= lt!537620 (isEmpty!10098 (c!252328 (_1!9425 (_1!9426 lt!537493)))))))

(assert (=> d!460376 (= (isEmpty!10095 (_1!9425 (_1!9426 lt!537493))) lt!537620)))

(declare-fun bs!387122 () Bool)

(assert (= bs!387122 d!460376))

(assert (=> bs!387122 m!1824025))

(assert (=> bs!387122 m!1824025))

(declare-fun m!1824223 () Bool)

(assert (=> bs!387122 m!1824223))

(declare-fun m!1824225 () Bool)

(assert (=> bs!387122 m!1824225))

(assert (=> b!1551592 d!460376))

(declare-fun d!460378 () Bool)

(declare-fun e!995291 () Bool)

(assert (=> d!460378 e!995291))

(declare-fun res!693263 () Bool)

(assert (=> d!460378 (=> (not res!693263) (not e!995291))))

(declare-fun lt!537623 () tuple4!882)

(assert (=> d!460378 (= res!693263 (= (tuple2!16201 (list!6482 (_1!9425 (_1!9426 lt!537623))) (list!6482 (_2!9425 (_1!9426 lt!537623)))) (findLongestMatch!258 (regex!2941 rule!240) (list!6482 input!1676))))))

(declare-fun choose!9250 (Regex!4269 BalanceConc!11060 BalanceConc!11060 CacheUp!1048 CacheDown!1052 CacheFurthestNullable!474) tuple4!882)

(assert (=> d!460378 (= lt!537623 (choose!9250 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!460378 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460378 (= (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!537623)))

(declare-fun b!1551725 () Bool)

(assert (=> b!1551725 (= e!995291 (= (totalInput!2444 (_4!441 lt!537623)) totalInput!568))))

(declare-fun b!1551722 () Bool)

(declare-fun res!693260 () Bool)

(assert (=> b!1551722 (=> (not res!693260) (not e!995291))))

(assert (=> b!1551722 (= res!693260 (valid!1426 (_3!1324 lt!537623)))))

(declare-fun b!1551723 () Bool)

(declare-fun res!693261 () Bool)

(assert (=> b!1551723 (=> (not res!693261) (not e!995291))))

(assert (=> b!1551723 (= res!693261 (valid!1427 (_2!9426 lt!537623)))))

(declare-fun b!1551724 () Bool)

(declare-fun res!693262 () Bool)

(assert (=> b!1551724 (=> (not res!693262) (not e!995291))))

(assert (=> b!1551724 (= res!693262 (valid!1425 (_4!441 lt!537623)))))

(assert (= (and d!460378 res!693263) b!1551722))

(assert (= (and b!1551722 res!693260) b!1551723))

(assert (= (and b!1551723 res!693261) b!1551724))

(assert (= (and b!1551724 res!693262) b!1551725))

(assert (=> d!460378 m!1824163))

(declare-fun m!1824227 () Bool)

(assert (=> d!460378 m!1824227))

(assert (=> d!460378 m!1824057))

(declare-fun m!1824229 () Bool)

(assert (=> d!460378 m!1824229))

(declare-fun m!1824231 () Bool)

(assert (=> d!460378 m!1824231))

(assert (=> d!460378 m!1824057))

(declare-fun m!1824233 () Bool)

(assert (=> d!460378 m!1824233))

(declare-fun m!1824235 () Bool)

(assert (=> b!1551722 m!1824235))

(declare-fun m!1824237 () Bool)

(assert (=> b!1551723 m!1824237))

(declare-fun m!1824239 () Bool)

(assert (=> b!1551724 m!1824239))

(assert (=> b!1551592 d!460378))

(declare-fun b!1551754 () Bool)

(declare-fun e!995310 () Bool)

(assert (=> b!1551754 (= e!995310 (not (= (head!3110 (_1!9424 lt!537499)) (c!252327 (regex!2941 rule!240)))))))

(declare-fun b!1551755 () Bool)

(declare-fun e!995311 () Bool)

(assert (=> b!1551755 (= e!995311 e!995310)))

(declare-fun res!693282 () Bool)

(assert (=> b!1551755 (=> res!693282 e!995310)))

(declare-fun call!101838 () Bool)

(assert (=> b!1551755 (= res!693282 call!101838)))

(declare-fun b!1551756 () Bool)

(declare-fun e!995307 () Bool)

(assert (=> b!1551756 (= e!995307 (= (head!3110 (_1!9424 lt!537499)) (c!252327 (regex!2941 rule!240))))))

(declare-fun b!1551757 () Bool)

(declare-fun res!693286 () Bool)

(assert (=> b!1551757 (=> (not res!693286) (not e!995307))))

(assert (=> b!1551757 (= res!693286 (not call!101838))))

(declare-fun b!1551758 () Bool)

(declare-fun e!995308 () Bool)

(assert (=> b!1551758 (= e!995308 (nullable!1267 (regex!2941 rule!240)))))

(declare-fun d!460380 () Bool)

(declare-fun e!995306 () Bool)

(assert (=> d!460380 e!995306))

(declare-fun c!252360 () Bool)

(assert (=> d!460380 (= c!252360 ((_ is EmptyExpr!4269) (regex!2941 rule!240)))))

(declare-fun lt!537626 () Bool)

(assert (=> d!460380 (= lt!537626 e!995308)))

(declare-fun c!252362 () Bool)

(assert (=> d!460380 (= c!252362 (isEmpty!10094 (_1!9424 lt!537499)))))

(assert (=> d!460380 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460380 (= (matchR!1874 (regex!2941 rule!240) (_1!9424 lt!537499)) lt!537626)))

(declare-fun b!1551759 () Bool)

(declare-fun res!693280 () Bool)

(assert (=> b!1551759 (=> res!693280 e!995310)))

(assert (=> b!1551759 (= res!693280 (not (isEmpty!10094 (tail!2205 (_1!9424 lt!537499)))))))

(declare-fun b!1551760 () Bool)

(assert (=> b!1551760 (= e!995308 (matchR!1874 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))) (tail!2205 (_1!9424 lt!537499))))))

(declare-fun b!1551761 () Bool)

(declare-fun e!995309 () Bool)

(assert (=> b!1551761 (= e!995309 e!995311)))

(declare-fun res!693285 () Bool)

(assert (=> b!1551761 (=> (not res!693285) (not e!995311))))

(assert (=> b!1551761 (= res!693285 (not lt!537626))))

(declare-fun b!1551762 () Bool)

(declare-fun e!995312 () Bool)

(assert (=> b!1551762 (= e!995312 (not lt!537626))))

(declare-fun b!1551763 () Bool)

(declare-fun res!693283 () Bool)

(assert (=> b!1551763 (=> res!693283 e!995309)))

(assert (=> b!1551763 (= res!693283 e!995307)))

(declare-fun res!693287 () Bool)

(assert (=> b!1551763 (=> (not res!693287) (not e!995307))))

(assert (=> b!1551763 (= res!693287 lt!537626)))

(declare-fun bm!101833 () Bool)

(assert (=> bm!101833 (= call!101838 (isEmpty!10094 (_1!9424 lt!537499)))))

(declare-fun b!1551764 () Bool)

(assert (=> b!1551764 (= e!995306 e!995312)))

(declare-fun c!252361 () Bool)

(assert (=> b!1551764 (= c!252361 ((_ is EmptyLang!4269) (regex!2941 rule!240)))))

(declare-fun b!1551765 () Bool)

(declare-fun res!693284 () Bool)

(assert (=> b!1551765 (=> res!693284 e!995309)))

(assert (=> b!1551765 (= res!693284 (not ((_ is ElementMatch!4269) (regex!2941 rule!240))))))

(assert (=> b!1551765 (= e!995312 e!995309)))

(declare-fun b!1551766 () Bool)

(declare-fun res!693281 () Bool)

(assert (=> b!1551766 (=> (not res!693281) (not e!995307))))

(assert (=> b!1551766 (= res!693281 (isEmpty!10094 (tail!2205 (_1!9424 lt!537499))))))

(declare-fun b!1551767 () Bool)

(assert (=> b!1551767 (= e!995306 (= lt!537626 call!101838))))

(assert (= (and d!460380 c!252362) b!1551758))

(assert (= (and d!460380 (not c!252362)) b!1551760))

(assert (= (and d!460380 c!252360) b!1551767))

(assert (= (and d!460380 (not c!252360)) b!1551764))

(assert (= (and b!1551764 c!252361) b!1551762))

(assert (= (and b!1551764 (not c!252361)) b!1551765))

(assert (= (and b!1551765 (not res!693284)) b!1551763))

(assert (= (and b!1551763 res!693287) b!1551757))

(assert (= (and b!1551757 res!693286) b!1551766))

(assert (= (and b!1551766 res!693281) b!1551756))

(assert (= (and b!1551763 (not res!693283)) b!1551761))

(assert (= (and b!1551761 res!693285) b!1551755))

(assert (= (and b!1551755 (not res!693282)) b!1551759))

(assert (= (and b!1551759 (not res!693280)) b!1551754))

(assert (= (or b!1551767 b!1551755 b!1551757) bm!101833))

(declare-fun m!1824241 () Bool)

(assert (=> b!1551760 m!1824241))

(assert (=> b!1551760 m!1824241))

(declare-fun m!1824243 () Bool)

(assert (=> b!1551760 m!1824243))

(declare-fun m!1824245 () Bool)

(assert (=> b!1551760 m!1824245))

(assert (=> b!1551760 m!1824243))

(assert (=> b!1551760 m!1824245))

(declare-fun m!1824247 () Bool)

(assert (=> b!1551760 m!1824247))

(assert (=> b!1551759 m!1824245))

(assert (=> b!1551759 m!1824245))

(declare-fun m!1824249 () Bool)

(assert (=> b!1551759 m!1824249))

(assert (=> b!1551758 m!1824187))

(assert (=> b!1551756 m!1824241))

(assert (=> b!1551766 m!1824245))

(assert (=> b!1551766 m!1824245))

(assert (=> b!1551766 m!1824249))

(assert (=> b!1551754 m!1824241))

(assert (=> d!460380 m!1824005))

(assert (=> d!460380 m!1824163))

(assert (=> bm!101833 m!1824005))

(assert (=> b!1551574 d!460380))

(declare-fun d!460382 () Bool)

(assert (=> d!460382 (= (inv!22047 (totalInput!2444 cacheFurthestNullable!103)) (isBalanced!1640 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))

(declare-fun bs!387123 () Bool)

(assert (= bs!387123 d!460382))

(declare-fun m!1824251 () Bool)

(assert (=> bs!387123 m!1824251))

(assert (=> b!1551593 d!460382))

(declare-fun d!460384 () Bool)

(assert (=> d!460384 (= (array_inv!1959 (_keys!2074 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) (bvsge (size!13574 (_keys!2074 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551584 d!460384))

(declare-fun d!460386 () Bool)

(assert (=> d!460386 (= (array_inv!1962 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) (bvsge (size!13575 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551584 d!460386))

(declare-fun d!460388 () Bool)

(assert (=> d!460388 (= (array_inv!1959 (_keys!2075 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) (bvsge (size!13574 (_keys!2075 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551573 d!460388))

(declare-fun d!460390 () Bool)

(assert (=> d!460390 (= (array_inv!1961 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) (bvsge (size!13576 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1551573 d!460390))

(declare-fun d!460392 () Bool)

(declare-fun choose!9251 (Int) Bool)

(assert (=> d!460392 (= (Forall!603 lambda!65669) (choose!9251 lambda!65669))))

(declare-fun bs!387124 () Bool)

(assert (= bs!387124 d!460392))

(declare-fun m!1824253 () Bool)

(assert (=> bs!387124 m!1824253))

(assert (=> b!1551575 d!460392))

(declare-fun d!460394 () Bool)

(declare-fun c!252365 () Bool)

(assert (=> d!460394 (= c!252365 ((_ is Node!5559) (c!252328 input!1676)))))

(declare-fun e!995317 () Bool)

(assert (=> d!460394 (= (inv!22046 (c!252328 input!1676)) e!995317)))

(declare-fun b!1551774 () Bool)

(declare-fun inv!22051 (Conc!5559) Bool)

(assert (=> b!1551774 (= e!995317 (inv!22051 (c!252328 input!1676)))))

(declare-fun b!1551775 () Bool)

(declare-fun e!995318 () Bool)

(assert (=> b!1551775 (= e!995317 e!995318)))

(declare-fun res!693290 () Bool)

(assert (=> b!1551775 (= res!693290 (not ((_ is Leaf!8239) (c!252328 input!1676))))))

(assert (=> b!1551775 (=> res!693290 e!995318)))

(declare-fun b!1551776 () Bool)

(declare-fun inv!22052 (Conc!5559) Bool)

(assert (=> b!1551776 (= e!995318 (inv!22052 (c!252328 input!1676)))))

(assert (= (and d!460394 c!252365) b!1551774))

(assert (= (and d!460394 (not c!252365)) b!1551775))

(assert (= (and b!1551775 (not res!693290)) b!1551776))

(declare-fun m!1824255 () Bool)

(assert (=> b!1551774 m!1824255))

(declare-fun m!1824257 () Bool)

(assert (=> b!1551776 m!1824257))

(assert (=> b!1551566 d!460394))

(declare-fun d!460396 () Bool)

(declare-fun c!252366 () Bool)

(assert (=> d!460396 (= c!252366 ((_ is Node!5559) (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))

(declare-fun e!995319 () Bool)

(assert (=> d!460396 (= (inv!22046 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) e!995319)))

(declare-fun b!1551777 () Bool)

(assert (=> b!1551777 (= e!995319 (inv!22051 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))

(declare-fun b!1551778 () Bool)

(declare-fun e!995320 () Bool)

(assert (=> b!1551778 (= e!995319 e!995320)))

(declare-fun res!693291 () Bool)

(assert (=> b!1551778 (= res!693291 (not ((_ is Leaf!8239) (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(assert (=> b!1551778 (=> res!693291 e!995320)))

(declare-fun b!1551779 () Bool)

(assert (=> b!1551779 (= e!995320 (inv!22052 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))

(assert (= (and d!460396 c!252366) b!1551777))

(assert (= (and d!460396 (not c!252366)) b!1551778))

(assert (= (and b!1551778 (not res!693291)) b!1551779))

(declare-fun m!1824259 () Bool)

(assert (=> b!1551777 m!1824259))

(declare-fun m!1824261 () Bool)

(assert (=> b!1551779 m!1824261))

(assert (=> b!1551567 d!460396))

(declare-fun d!460398 () Bool)

(assert (=> d!460398 (= (valid!1426 cacheDown!768) (validCacheMapDown!158 (cache!2106 cacheDown!768)))))

(declare-fun bs!387125 () Bool)

(assert (= bs!387125 d!460398))

(assert (=> bs!387125 m!1824081))

(assert (=> b!1551576 d!460398))

(declare-fun d!460400 () Bool)

(declare-fun c!252367 () Bool)

(assert (=> d!460400 (= c!252367 ((_ is Node!5559) (c!252328 totalInput!568)))))

(declare-fun e!995321 () Bool)

(assert (=> d!460400 (= (inv!22046 (c!252328 totalInput!568)) e!995321)))

(declare-fun b!1551780 () Bool)

(assert (=> b!1551780 (= e!995321 (inv!22051 (c!252328 totalInput!568)))))

(declare-fun b!1551781 () Bool)

(declare-fun e!995322 () Bool)

(assert (=> b!1551781 (= e!995321 e!995322)))

(declare-fun res!693292 () Bool)

(assert (=> b!1551781 (= res!693292 (not ((_ is Leaf!8239) (c!252328 totalInput!568))))))

(assert (=> b!1551781 (=> res!693292 e!995322)))

(declare-fun b!1551782 () Bool)

(assert (=> b!1551782 (= e!995322 (inv!22052 (c!252328 totalInput!568)))))

(assert (= (and d!460400 c!252367) b!1551780))

(assert (= (and d!460400 (not c!252367)) b!1551781))

(assert (= (and b!1551781 (not res!693292)) b!1551782))

(declare-fun m!1824263 () Bool)

(assert (=> b!1551780 m!1824263))

(declare-fun m!1824265 () Bool)

(assert (=> b!1551782 m!1824265))

(assert (=> b!1551594 d!460400))

(declare-fun e!995330 () Bool)

(assert (=> b!1551568 (= tp!453727 e!995330)))

(declare-fun b!1551791 () Bool)

(declare-fun e!995329 () Bool)

(declare-fun tp!453762 () Bool)

(assert (=> b!1551791 (= e!995329 tp!453762)))

(declare-fun b!1551792 () Bool)

(declare-fun e!995331 () Bool)

(declare-fun tp!453763 () Bool)

(assert (=> b!1551792 (= e!995331 tp!453763)))

(declare-fun tp!453765 () Bool)

(declare-fun setNonEmpty!10604 () Bool)

(declare-fun setElem!10604 () Context!1574)

(declare-fun setRes!10604 () Bool)

(declare-fun inv!22053 (Context!1574) Bool)

(assert (=> setNonEmpty!10604 (= setRes!10604 (and tp!453765 (inv!22053 setElem!10604) e!995329))))

(declare-fun setRest!10604 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10604 (= (_2!9423 (h!22184 mapDefault!8244)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10604 true) setRest!10604))))

(declare-fun setIsEmpty!10604 () Bool)

(assert (=> setIsEmpty!10604 setRes!10604))

(declare-fun tp!453761 () Bool)

(declare-fun b!1551793 () Bool)

(declare-fun tp!453764 () Bool)

(declare-fun tp_is_empty!7061 () Bool)

(assert (=> b!1551793 (= e!995330 (and tp!453764 (inv!22053 (_2!9422 (_1!9423 (h!22184 mapDefault!8244)))) e!995331 tp_is_empty!7061 setRes!10604 tp!453761))))

(declare-fun condSetEmpty!10604 () Bool)

(assert (=> b!1551793 (= condSetEmpty!10604 (= (_2!9423 (h!22184 mapDefault!8244)) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1551793 b!1551792))

(assert (= (and b!1551793 condSetEmpty!10604) setIsEmpty!10604))

(assert (= (and b!1551793 (not condSetEmpty!10604)) setNonEmpty!10604))

(assert (= setNonEmpty!10604 b!1551791))

(assert (= (and b!1551568 ((_ is Cons!16783) mapDefault!8244)) b!1551793))

(declare-fun m!1824267 () Bool)

(assert (=> setNonEmpty!10604 m!1824267))

(declare-fun m!1824269 () Bool)

(assert (=> b!1551793 m!1824269))

(declare-fun b!1551804 () Bool)

(declare-fun e!995334 () Bool)

(assert (=> b!1551804 (= e!995334 tp_is_empty!7061)))

(assert (=> b!1551561 (= tp!453733 e!995334)))

(declare-fun b!1551807 () Bool)

(declare-fun tp!453779 () Bool)

(declare-fun tp!453776 () Bool)

(assert (=> b!1551807 (= e!995334 (and tp!453779 tp!453776))))

(declare-fun b!1551805 () Bool)

(declare-fun tp!453777 () Bool)

(declare-fun tp!453778 () Bool)

(assert (=> b!1551805 (= e!995334 (and tp!453777 tp!453778))))

(declare-fun b!1551806 () Bool)

(declare-fun tp!453780 () Bool)

(assert (=> b!1551806 (= e!995334 tp!453780)))

(assert (= (and b!1551561 ((_ is ElementMatch!4269) (regex!2941 rule!240))) b!1551804))

(assert (= (and b!1551561 ((_ is Concat!7301) (regex!2941 rule!240))) b!1551805))

(assert (= (and b!1551561 ((_ is Star!4269) (regex!2941 rule!240))) b!1551806))

(assert (= (and b!1551561 ((_ is Union!4269) (regex!2941 rule!240))) b!1551807))

(declare-fun setRes!10607 () Bool)

(declare-fun tp!453792 () Bool)

(declare-fun e!995341 () Bool)

(declare-fun e!995343 () Bool)

(declare-fun b!1551816 () Bool)

(assert (=> b!1551816 (= e!995341 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 mapDefault!8245)))) e!995343 tp_is_empty!7061 setRes!10607 tp!453792))))

(declare-fun condSetEmpty!10607 () Bool)

(assert (=> b!1551816 (= condSetEmpty!10607 (= (_2!9419 (h!22182 mapDefault!8245)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1551817 () Bool)

(declare-fun tp!453791 () Bool)

(assert (=> b!1551817 (= e!995343 tp!453791)))

(declare-fun setIsEmpty!10607 () Bool)

(assert (=> setIsEmpty!10607 setRes!10607))

(assert (=> b!1551569 (= tp!453747 e!995341)))

(declare-fun setNonEmpty!10607 () Bool)

(declare-fun setElem!10607 () Context!1574)

(declare-fun tp!453789 () Bool)

(declare-fun e!995342 () Bool)

(assert (=> setNonEmpty!10607 (= setRes!10607 (and tp!453789 (inv!22053 setElem!10607) e!995342))))

(declare-fun setRest!10607 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10607 (= (_2!9419 (h!22182 mapDefault!8245)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10607 true) setRest!10607))))

(declare-fun b!1551818 () Bool)

(declare-fun tp!453790 () Bool)

(assert (=> b!1551818 (= e!995342 tp!453790)))

(assert (= b!1551816 b!1551817))

(assert (= (and b!1551816 condSetEmpty!10607) setIsEmpty!10607))

(assert (= (and b!1551816 (not condSetEmpty!10607)) setNonEmpty!10607))

(assert (= setNonEmpty!10607 b!1551818))

(assert (= (and b!1551569 ((_ is Cons!16781) mapDefault!8245)) b!1551816))

(declare-fun m!1824271 () Bool)

(assert (=> b!1551816 m!1824271))

(declare-fun m!1824273 () Bool)

(assert (=> setNonEmpty!10607 m!1824273))

(declare-fun setRes!10608 () Bool)

(declare-fun e!995344 () Bool)

(declare-fun b!1551819 () Bool)

(declare-fun e!995346 () Bool)

(declare-fun tp!453796 () Bool)

(assert (=> b!1551819 (= e!995344 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))) e!995346 tp_is_empty!7061 setRes!10608 tp!453796))))

(declare-fun condSetEmpty!10608 () Bool)

(assert (=> b!1551819 (= condSetEmpty!10608 (= (_2!9419 (h!22182 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1551820 () Bool)

(declare-fun tp!453795 () Bool)

(assert (=> b!1551820 (= e!995346 tp!453795)))

(declare-fun setIsEmpty!10608 () Bool)

(assert (=> setIsEmpty!10608 setRes!10608))

(assert (=> b!1551560 (= tp!453745 e!995344)))

(declare-fun setElem!10608 () Context!1574)

(declare-fun tp!453793 () Bool)

(declare-fun e!995345 () Bool)

(declare-fun setNonEmpty!10608 () Bool)

(assert (=> setNonEmpty!10608 (= setRes!10608 (and tp!453793 (inv!22053 setElem!10608) e!995345))))

(declare-fun setRest!10608 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10608 (= (_2!9419 (h!22182 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10608 true) setRest!10608))))

(declare-fun b!1551821 () Bool)

(declare-fun tp!453794 () Bool)

(assert (=> b!1551821 (= e!995345 tp!453794)))

(assert (= b!1551819 b!1551820))

(assert (= (and b!1551819 condSetEmpty!10608) setIsEmpty!10608))

(assert (= (and b!1551819 (not condSetEmpty!10608)) setNonEmpty!10608))

(assert (= setNonEmpty!10608 b!1551821))

(assert (= (and b!1551560 ((_ is Cons!16781) (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))) b!1551819))

(declare-fun m!1824275 () Bool)

(assert (=> b!1551819 m!1824275))

(declare-fun m!1824277 () Bool)

(assert (=> setNonEmpty!10608 m!1824277))

(declare-fun e!995349 () Bool)

(declare-fun e!995347 () Bool)

(declare-fun setRes!10609 () Bool)

(declare-fun b!1551822 () Bool)

(declare-fun tp!453800 () Bool)

(assert (=> b!1551822 (= e!995347 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))) e!995349 tp_is_empty!7061 setRes!10609 tp!453800))))

(declare-fun condSetEmpty!10609 () Bool)

(assert (=> b!1551822 (= condSetEmpty!10609 (= (_2!9419 (h!22182 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1551823 () Bool)

(declare-fun tp!453799 () Bool)

(assert (=> b!1551823 (= e!995349 tp!453799)))

(declare-fun setIsEmpty!10609 () Bool)

(assert (=> setIsEmpty!10609 setRes!10609))

(assert (=> b!1551560 (= tp!453731 e!995347)))

(declare-fun tp!453797 () Bool)

(declare-fun setNonEmpty!10609 () Bool)

(declare-fun e!995348 () Bool)

(declare-fun setElem!10609 () Context!1574)

(assert (=> setNonEmpty!10609 (= setRes!10609 (and tp!453797 (inv!22053 setElem!10609) e!995348))))

(declare-fun setRest!10609 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10609 (= (_2!9419 (h!22182 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10609 true) setRest!10609))))

(declare-fun b!1551824 () Bool)

(declare-fun tp!453798 () Bool)

(assert (=> b!1551824 (= e!995348 tp!453798)))

(assert (= b!1551822 b!1551823))

(assert (= (and b!1551822 condSetEmpty!10609) setIsEmpty!10609))

(assert (= (and b!1551822 (not condSetEmpty!10609)) setNonEmpty!10609))

(assert (= setNonEmpty!10609 b!1551824))

(assert (= (and b!1551560 ((_ is Cons!16781) (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))) b!1551822))

(declare-fun m!1824279 () Bool)

(assert (=> b!1551822 m!1824279))

(declare-fun m!1824281 () Bool)

(assert (=> setNonEmpty!10609 m!1824281))

(declare-fun setIsEmpty!10612 () Bool)

(declare-fun setRes!10612 () Bool)

(assert (=> setIsEmpty!10612 setRes!10612))

(declare-fun b!1551831 () Bool)

(declare-fun e!995354 () Bool)

(declare-fun tp!453807 () Bool)

(assert (=> b!1551831 (= e!995354 (and setRes!10612 tp!453807))))

(declare-fun condSetEmpty!10612 () Bool)

(assert (=> b!1551831 (= condSetEmpty!10612 (= (_1!9420 (_1!9421 (h!22183 mapDefault!8246))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551571 (= tp!453750 e!995354)))

(declare-fun b!1551832 () Bool)

(declare-fun e!995355 () Bool)

(declare-fun tp!453808 () Bool)

(assert (=> b!1551832 (= e!995355 tp!453808)))

(declare-fun tp!453809 () Bool)

(declare-fun setElem!10612 () Context!1574)

(declare-fun setNonEmpty!10612 () Bool)

(assert (=> setNonEmpty!10612 (= setRes!10612 (and tp!453809 (inv!22053 setElem!10612) e!995355))))

(declare-fun setRest!10612 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10612 (= (_1!9420 (_1!9421 (h!22183 mapDefault!8246))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10612 true) setRest!10612))))

(assert (= (and b!1551831 condSetEmpty!10612) setIsEmpty!10612))

(assert (= (and b!1551831 (not condSetEmpty!10612)) setNonEmpty!10612))

(assert (= setNonEmpty!10612 b!1551832))

(assert (= (and b!1551571 ((_ is Cons!16782) mapDefault!8246)) b!1551831))

(declare-fun m!1824283 () Bool)

(assert (=> setNonEmpty!10612 m!1824283))

(declare-fun setNonEmpty!10617 () Bool)

(declare-fun setElem!10617 () Context!1574)

(declare-fun setRes!10617 () Bool)

(declare-fun e!995368 () Bool)

(declare-fun tp!453830 () Bool)

(assert (=> setNonEmpty!10617 (= setRes!10617 (and tp!453830 (inv!22053 setElem!10617) e!995368))))

(declare-fun mapValue!8249 () List!16849)

(declare-fun setRest!10618 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10617 (= (_2!9419 (h!22182 mapValue!8249)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10617 true) setRest!10618))))

(declare-fun condMapEmpty!8249 () Bool)

(declare-fun mapDefault!8249 () List!16849)

(assert (=> mapNonEmpty!8244 (= condMapEmpty!8249 (= mapRest!8245 ((as const (Array (_ BitVec 32) List!16849)) mapDefault!8249)))))

(declare-fun e!995373 () Bool)

(declare-fun mapRes!8249 () Bool)

(assert (=> mapNonEmpty!8244 (= tp!453748 (and e!995373 mapRes!8249))))

(declare-fun b!1551847 () Bool)

(declare-fun tp!453829 () Bool)

(assert (=> b!1551847 (= e!995368 tp!453829)))

(declare-fun setIsEmpty!10617 () Bool)

(declare-fun setRes!10618 () Bool)

(assert (=> setIsEmpty!10617 setRes!10618))

(declare-fun b!1551848 () Bool)

(declare-fun e!995372 () Bool)

(declare-fun tp!453831 () Bool)

(assert (=> b!1551848 (= e!995372 tp!453831)))

(declare-fun b!1551849 () Bool)

(declare-fun e!995369 () Bool)

(declare-fun tp!453833 () Bool)

(assert (=> b!1551849 (= e!995369 tp!453833)))

(declare-fun tp!453836 () Bool)

(declare-fun b!1551850 () Bool)

(declare-fun e!995371 () Bool)

(assert (=> b!1551850 (= e!995373 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 mapDefault!8249)))) e!995371 tp_is_empty!7061 setRes!10618 tp!453836))))

(declare-fun condSetEmpty!10618 () Bool)

(assert (=> b!1551850 (= condSetEmpty!10618 (= (_2!9419 (h!22182 mapDefault!8249)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun mapIsEmpty!8249 () Bool)

(assert (=> mapIsEmpty!8249 mapRes!8249))

(declare-fun mapNonEmpty!8249 () Bool)

(declare-fun tp!453828 () Bool)

(declare-fun e!995370 () Bool)

(assert (=> mapNonEmpty!8249 (= mapRes!8249 (and tp!453828 e!995370))))

(declare-fun mapRest!8249 () (Array (_ BitVec 32) List!16849))

(declare-fun mapKey!8249 () (_ BitVec 32))

(assert (=> mapNonEmpty!8249 (= mapRest!8245 (store mapRest!8249 mapKey!8249 mapValue!8249))))

(declare-fun tp!453832 () Bool)

(declare-fun b!1551851 () Bool)

(assert (=> b!1551851 (= e!995370 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 mapValue!8249)))) e!995372 tp_is_empty!7061 setRes!10617 tp!453832))))

(declare-fun condSetEmpty!10617 () Bool)

(assert (=> b!1551851 (= condSetEmpty!10617 (= (_2!9419 (h!22182 mapValue!8249)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setIsEmpty!10618 () Bool)

(assert (=> setIsEmpty!10618 setRes!10617))

(declare-fun setElem!10618 () Context!1574)

(declare-fun setNonEmpty!10618 () Bool)

(declare-fun tp!453834 () Bool)

(assert (=> setNonEmpty!10618 (= setRes!10618 (and tp!453834 (inv!22053 setElem!10618) e!995369))))

(declare-fun setRest!10617 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10618 (= (_2!9419 (h!22182 mapDefault!8249)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10618 true) setRest!10617))))

(declare-fun b!1551852 () Bool)

(declare-fun tp!453835 () Bool)

(assert (=> b!1551852 (= e!995371 tp!453835)))

(assert (= (and mapNonEmpty!8244 condMapEmpty!8249) mapIsEmpty!8249))

(assert (= (and mapNonEmpty!8244 (not condMapEmpty!8249)) mapNonEmpty!8249))

(assert (= b!1551851 b!1551848))

(assert (= (and b!1551851 condSetEmpty!10617) setIsEmpty!10618))

(assert (= (and b!1551851 (not condSetEmpty!10617)) setNonEmpty!10617))

(assert (= setNonEmpty!10617 b!1551847))

(assert (= (and mapNonEmpty!8249 ((_ is Cons!16781) mapValue!8249)) b!1551851))

(assert (= b!1551850 b!1551852))

(assert (= (and b!1551850 condSetEmpty!10618) setIsEmpty!10617))

(assert (= (and b!1551850 (not condSetEmpty!10618)) setNonEmpty!10618))

(assert (= setNonEmpty!10618 b!1551849))

(assert (= (and mapNonEmpty!8244 ((_ is Cons!16781) mapDefault!8249)) b!1551850))

(declare-fun m!1824285 () Bool)

(assert (=> setNonEmpty!10617 m!1824285))

(declare-fun m!1824287 () Bool)

(assert (=> setNonEmpty!10618 m!1824287))

(declare-fun m!1824289 () Bool)

(assert (=> b!1551851 m!1824289))

(declare-fun m!1824291 () Bool)

(assert (=> b!1551850 m!1824291))

(declare-fun m!1824293 () Bool)

(assert (=> mapNonEmpty!8249 m!1824293))

(declare-fun e!995374 () Bool)

(declare-fun setRes!10619 () Bool)

(declare-fun e!995376 () Bool)

(declare-fun b!1551853 () Bool)

(declare-fun tp!453840 () Bool)

(assert (=> b!1551853 (= e!995374 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 mapValue!8246)))) e!995376 tp_is_empty!7061 setRes!10619 tp!453840))))

(declare-fun condSetEmpty!10619 () Bool)

(assert (=> b!1551853 (= condSetEmpty!10619 (= (_2!9419 (h!22182 mapValue!8246)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1551854 () Bool)

(declare-fun tp!453839 () Bool)

(assert (=> b!1551854 (= e!995376 tp!453839)))

(declare-fun setIsEmpty!10619 () Bool)

(assert (=> setIsEmpty!10619 setRes!10619))

(assert (=> mapNonEmpty!8244 (= tp!453740 e!995374)))

(declare-fun setNonEmpty!10619 () Bool)

(declare-fun tp!453837 () Bool)

(declare-fun e!995375 () Bool)

(declare-fun setElem!10619 () Context!1574)

(assert (=> setNonEmpty!10619 (= setRes!10619 (and tp!453837 (inv!22053 setElem!10619) e!995375))))

(declare-fun setRest!10619 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10619 (= (_2!9419 (h!22182 mapValue!8246)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10619 true) setRest!10619))))

(declare-fun b!1551855 () Bool)

(declare-fun tp!453838 () Bool)

(assert (=> b!1551855 (= e!995375 tp!453838)))

(assert (= b!1551853 b!1551854))

(assert (= (and b!1551853 condSetEmpty!10619) setIsEmpty!10619))

(assert (= (and b!1551853 (not condSetEmpty!10619)) setNonEmpty!10619))

(assert (= setNonEmpty!10619 b!1551855))

(assert (= (and mapNonEmpty!8244 ((_ is Cons!16781) mapValue!8246)) b!1551853))

(declare-fun m!1824295 () Bool)

(assert (=> b!1551853 m!1824295))

(declare-fun m!1824297 () Bool)

(assert (=> setNonEmpty!10619 m!1824297))

(declare-fun setIsEmpty!10620 () Bool)

(declare-fun setRes!10620 () Bool)

(assert (=> setIsEmpty!10620 setRes!10620))

(declare-fun b!1551856 () Bool)

(declare-fun e!995377 () Bool)

(declare-fun tp!453841 () Bool)

(assert (=> b!1551856 (= e!995377 (and setRes!10620 tp!453841))))

(declare-fun condSetEmpty!10620 () Bool)

(assert (=> b!1551856 (= condSetEmpty!10620 (= (_1!9420 (_1!9421 (h!22183 (zeroValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551584 (= tp!453737 e!995377)))

(declare-fun b!1551857 () Bool)

(declare-fun e!995378 () Bool)

(declare-fun tp!453842 () Bool)

(assert (=> b!1551857 (= e!995378 tp!453842)))

(declare-fun setNonEmpty!10620 () Bool)

(declare-fun setElem!10620 () Context!1574)

(declare-fun tp!453843 () Bool)

(assert (=> setNonEmpty!10620 (= setRes!10620 (and tp!453843 (inv!22053 setElem!10620) e!995378))))

(declare-fun setRest!10620 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10620 (= (_1!9420 (_1!9421 (h!22183 (zeroValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10620 true) setRest!10620))))

(assert (= (and b!1551856 condSetEmpty!10620) setIsEmpty!10620))

(assert (= (and b!1551856 (not condSetEmpty!10620)) setNonEmpty!10620))

(assert (= setNonEmpty!10620 b!1551857))

(assert (= (and b!1551584 ((_ is Cons!16782) (zeroValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103)))))))) b!1551856))

(declare-fun m!1824299 () Bool)

(assert (=> setNonEmpty!10620 m!1824299))

(declare-fun setIsEmpty!10621 () Bool)

(declare-fun setRes!10621 () Bool)

(assert (=> setIsEmpty!10621 setRes!10621))

(declare-fun b!1551858 () Bool)

(declare-fun e!995379 () Bool)

(declare-fun tp!453844 () Bool)

(assert (=> b!1551858 (= e!995379 (and setRes!10621 tp!453844))))

(declare-fun condSetEmpty!10621 () Bool)

(assert (=> b!1551858 (= condSetEmpty!10621 (= (_1!9420 (_1!9421 (h!22183 (minValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551584 (= tp!453749 e!995379)))

(declare-fun b!1551859 () Bool)

(declare-fun e!995380 () Bool)

(declare-fun tp!453845 () Bool)

(assert (=> b!1551859 (= e!995380 tp!453845)))

(declare-fun setElem!10621 () Context!1574)

(declare-fun tp!453846 () Bool)

(declare-fun setNonEmpty!10621 () Bool)

(assert (=> setNonEmpty!10621 (= setRes!10621 (and tp!453846 (inv!22053 setElem!10621) e!995380))))

(declare-fun setRest!10621 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10621 (= (_1!9420 (_1!9421 (h!22183 (minValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10621 true) setRest!10621))))

(assert (= (and b!1551858 condSetEmpty!10621) setIsEmpty!10621))

(assert (= (and b!1551858 (not condSetEmpty!10621)) setNonEmpty!10621))

(assert (= setNonEmpty!10621 b!1551859))

(assert (= (and b!1551584 ((_ is Cons!16782) (minValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103)))))))) b!1551858))

(declare-fun m!1824301 () Bool)

(assert (=> setNonEmpty!10621 m!1824301))

(declare-fun e!995382 () Bool)

(assert (=> b!1551573 (= tp!453735 e!995382)))

(declare-fun b!1551860 () Bool)

(declare-fun e!995381 () Bool)

(declare-fun tp!453848 () Bool)

(assert (=> b!1551860 (= e!995381 tp!453848)))

(declare-fun b!1551861 () Bool)

(declare-fun e!995383 () Bool)

(declare-fun tp!453849 () Bool)

(assert (=> b!1551861 (= e!995383 tp!453849)))

(declare-fun setRes!10622 () Bool)

(declare-fun tp!453851 () Bool)

(declare-fun setNonEmpty!10622 () Bool)

(declare-fun setElem!10622 () Context!1574)

(assert (=> setNonEmpty!10622 (= setRes!10622 (and tp!453851 (inv!22053 setElem!10622) e!995381))))

(declare-fun setRest!10622 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10622 (= (_2!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10622 true) setRest!10622))))

(declare-fun setIsEmpty!10622 () Bool)

(assert (=> setIsEmpty!10622 setRes!10622))

(declare-fun tp!453847 () Bool)

(declare-fun tp!453850 () Bool)

(declare-fun b!1551862 () Bool)

(assert (=> b!1551862 (= e!995382 (and tp!453850 (inv!22053 (_2!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))) e!995383 tp_is_empty!7061 setRes!10622 tp!453847))))

(declare-fun condSetEmpty!10622 () Bool)

(assert (=> b!1551862 (= condSetEmpty!10622 (= (_2!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1551862 b!1551861))

(assert (= (and b!1551862 condSetEmpty!10622) setIsEmpty!10622))

(assert (= (and b!1551862 (not condSetEmpty!10622)) setNonEmpty!10622))

(assert (= setNonEmpty!10622 b!1551860))

(assert (= (and b!1551573 ((_ is Cons!16783) (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))) b!1551862))

(declare-fun m!1824303 () Bool)

(assert (=> setNonEmpty!10622 m!1824303))

(declare-fun m!1824305 () Bool)

(assert (=> b!1551862 m!1824305))

(declare-fun e!995385 () Bool)

(assert (=> b!1551573 (= tp!453730 e!995385)))

(declare-fun b!1551863 () Bool)

(declare-fun e!995384 () Bool)

(declare-fun tp!453853 () Bool)

(assert (=> b!1551863 (= e!995384 tp!453853)))

(declare-fun b!1551864 () Bool)

(declare-fun e!995386 () Bool)

(declare-fun tp!453854 () Bool)

(assert (=> b!1551864 (= e!995386 tp!453854)))

(declare-fun setRes!10623 () Bool)

(declare-fun setNonEmpty!10623 () Bool)

(declare-fun setElem!10623 () Context!1574)

(declare-fun tp!453856 () Bool)

(assert (=> setNonEmpty!10623 (= setRes!10623 (and tp!453856 (inv!22053 setElem!10623) e!995384))))

(declare-fun setRest!10623 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10623 (= (_2!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10623 true) setRest!10623))))

(declare-fun setIsEmpty!10623 () Bool)

(assert (=> setIsEmpty!10623 setRes!10623))

(declare-fun tp!453855 () Bool)

(declare-fun tp!453852 () Bool)

(declare-fun b!1551865 () Bool)

(assert (=> b!1551865 (= e!995385 (and tp!453855 (inv!22053 (_2!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))) e!995386 tp_is_empty!7061 setRes!10623 tp!453852))))

(declare-fun condSetEmpty!10623 () Bool)

(assert (=> b!1551865 (= condSetEmpty!10623 (= (_2!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1551865 b!1551864))

(assert (= (and b!1551865 condSetEmpty!10623) setIsEmpty!10623))

(assert (= (and b!1551865 (not condSetEmpty!10623)) setNonEmpty!10623))

(assert (= setNonEmpty!10623 b!1551863))

(assert (= (and b!1551573 ((_ is Cons!16783) (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))) b!1551865))

(declare-fun m!1824307 () Bool)

(assert (=> setNonEmpty!10623 m!1824307))

(declare-fun m!1824309 () Bool)

(assert (=> b!1551865 m!1824309))

(declare-fun setIsEmpty!10628 () Bool)

(declare-fun setRes!10628 () Bool)

(assert (=> setIsEmpty!10628 setRes!10628))

(declare-fun b!1551876 () Bool)

(declare-fun e!995397 () Bool)

(declare-fun tp!453875 () Bool)

(assert (=> b!1551876 (= e!995397 (and setRes!10628 tp!453875))))

(declare-fun condSetEmpty!10628 () Bool)

(declare-fun mapDefault!8252 () List!16850)

(assert (=> b!1551876 (= condSetEmpty!10628 (= (_1!9420 (_1!9421 (h!22183 mapDefault!8252))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setIsEmpty!10629 () Bool)

(declare-fun setRes!10629 () Bool)

(assert (=> setIsEmpty!10629 setRes!10629))

(declare-fun b!1551877 () Bool)

(declare-fun e!995395 () Bool)

(declare-fun tp!453877 () Bool)

(assert (=> b!1551877 (= e!995395 tp!453877)))

(declare-fun setElem!10629 () Context!1574)

(declare-fun setNonEmpty!10628 () Bool)

(declare-fun tp!453871 () Bool)

(assert (=> setNonEmpty!10628 (= setRes!10628 (and tp!453871 (inv!22053 setElem!10629) e!995395))))

(declare-fun setRest!10629 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10628 (= (_1!9420 (_1!9421 (h!22183 mapDefault!8252))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10629 true) setRest!10629))))

(declare-fun mapNonEmpty!8252 () Bool)

(declare-fun mapRes!8252 () Bool)

(declare-fun tp!453874 () Bool)

(declare-fun e!995398 () Bool)

(assert (=> mapNonEmpty!8252 (= mapRes!8252 (and tp!453874 e!995398))))

(declare-fun mapRest!8252 () (Array (_ BitVec 32) List!16850))

(declare-fun mapValue!8252 () List!16850)

(declare-fun mapKey!8252 () (_ BitVec 32))

(assert (=> mapNonEmpty!8252 (= mapRest!8246 (store mapRest!8252 mapKey!8252 mapValue!8252))))

(declare-fun mapIsEmpty!8252 () Bool)

(assert (=> mapIsEmpty!8252 mapRes!8252))

(declare-fun b!1551878 () Bool)

(declare-fun tp!453873 () Bool)

(assert (=> b!1551878 (= e!995398 (and setRes!10629 tp!453873))))

(declare-fun condSetEmpty!10629 () Bool)

(assert (=> b!1551878 (= condSetEmpty!10629 (= (_1!9420 (_1!9421 (h!22183 mapValue!8252))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1551879 () Bool)

(declare-fun e!995396 () Bool)

(declare-fun tp!453872 () Bool)

(assert (=> b!1551879 (= e!995396 tp!453872)))

(declare-fun condMapEmpty!8252 () Bool)

(assert (=> mapNonEmpty!8246 (= condMapEmpty!8252 (= mapRest!8246 ((as const (Array (_ BitVec 32) List!16850)) mapDefault!8252)))))

(assert (=> mapNonEmpty!8246 (= tp!453725 (and e!995397 mapRes!8252))))

(declare-fun setNonEmpty!10629 () Bool)

(declare-fun setElem!10628 () Context!1574)

(declare-fun tp!453876 () Bool)

(assert (=> setNonEmpty!10629 (= setRes!10629 (and tp!453876 (inv!22053 setElem!10628) e!995396))))

(declare-fun setRest!10628 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10629 (= (_1!9420 (_1!9421 (h!22183 mapValue!8252))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10628 true) setRest!10628))))

(assert (= (and mapNonEmpty!8246 condMapEmpty!8252) mapIsEmpty!8252))

(assert (= (and mapNonEmpty!8246 (not condMapEmpty!8252)) mapNonEmpty!8252))

(assert (= (and b!1551878 condSetEmpty!10629) setIsEmpty!10629))

(assert (= (and b!1551878 (not condSetEmpty!10629)) setNonEmpty!10629))

(assert (= setNonEmpty!10629 b!1551879))

(assert (= (and mapNonEmpty!8252 ((_ is Cons!16782) mapValue!8252)) b!1551878))

(assert (= (and b!1551876 condSetEmpty!10628) setIsEmpty!10628))

(assert (= (and b!1551876 (not condSetEmpty!10628)) setNonEmpty!10628))

(assert (= setNonEmpty!10628 b!1551877))

(assert (= (and mapNonEmpty!8246 ((_ is Cons!16782) mapDefault!8252)) b!1551876))

(declare-fun m!1824311 () Bool)

(assert (=> setNonEmpty!10628 m!1824311))

(declare-fun m!1824313 () Bool)

(assert (=> mapNonEmpty!8252 m!1824313))

(declare-fun m!1824315 () Bool)

(assert (=> setNonEmpty!10629 m!1824315))

(declare-fun setIsEmpty!10630 () Bool)

(declare-fun setRes!10630 () Bool)

(assert (=> setIsEmpty!10630 setRes!10630))

(declare-fun b!1551880 () Bool)

(declare-fun e!995399 () Bool)

(declare-fun tp!453878 () Bool)

(assert (=> b!1551880 (= e!995399 (and setRes!10630 tp!453878))))

(declare-fun condSetEmpty!10630 () Bool)

(assert (=> b!1551880 (= condSetEmpty!10630 (= (_1!9420 (_1!9421 (h!22183 mapValue!8245))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> mapNonEmpty!8246 (= tp!453734 e!995399)))

(declare-fun b!1551881 () Bool)

(declare-fun e!995400 () Bool)

(declare-fun tp!453879 () Bool)

(assert (=> b!1551881 (= e!995400 tp!453879)))

(declare-fun setNonEmpty!10630 () Bool)

(declare-fun tp!453880 () Bool)

(declare-fun setElem!10630 () Context!1574)

(assert (=> setNonEmpty!10630 (= setRes!10630 (and tp!453880 (inv!22053 setElem!10630) e!995400))))

(declare-fun setRest!10630 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10630 (= (_1!9420 (_1!9421 (h!22183 mapValue!8245))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10630 true) setRest!10630))))

(assert (= (and b!1551880 condSetEmpty!10630) setIsEmpty!10630))

(assert (= (and b!1551880 (not condSetEmpty!10630)) setNonEmpty!10630))

(assert (= setNonEmpty!10630 b!1551881))

(assert (= (and mapNonEmpty!8246 ((_ is Cons!16782) mapValue!8245)) b!1551880))

(declare-fun m!1824317 () Bool)

(assert (=> setNonEmpty!10630 m!1824317))

(declare-fun e!995406 () Bool)

(declare-fun tp!453888 () Bool)

(declare-fun tp!453889 () Bool)

(declare-fun b!1551890 () Bool)

(assert (=> b!1551890 (= e!995406 (and (inv!22046 (left!13648 (c!252328 input!1676))) tp!453889 (inv!22046 (right!13978 (c!252328 input!1676))) tp!453888))))

(declare-fun b!1551892 () Bool)

(declare-fun e!995405 () Bool)

(declare-fun tp!453887 () Bool)

(assert (=> b!1551892 (= e!995405 tp!453887)))

(declare-fun b!1551891 () Bool)

(declare-fun inv!22054 (IArray!11123) Bool)

(assert (=> b!1551891 (= e!995406 (and (inv!22054 (xs!8359 (c!252328 input!1676))) e!995405))))

(assert (=> b!1551566 (= tp!453741 (and (inv!22046 (c!252328 input!1676)) e!995406))))

(assert (= (and b!1551566 ((_ is Node!5559) (c!252328 input!1676))) b!1551890))

(assert (= b!1551891 b!1551892))

(assert (= (and b!1551566 ((_ is Leaf!8239) (c!252328 input!1676))) b!1551891))

(declare-fun m!1824319 () Bool)

(assert (=> b!1551890 m!1824319))

(declare-fun m!1824321 () Bool)

(assert (=> b!1551890 m!1824321))

(declare-fun m!1824323 () Bool)

(assert (=> b!1551891 m!1824323))

(assert (=> b!1551566 m!1824073))

(declare-fun tp!453891 () Bool)

(declare-fun tp!453892 () Bool)

(declare-fun e!995408 () Bool)

(declare-fun b!1551893 () Bool)

(assert (=> b!1551893 (= e!995408 (and (inv!22046 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) tp!453892 (inv!22046 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) tp!453891))))

(declare-fun b!1551895 () Bool)

(declare-fun e!995407 () Bool)

(declare-fun tp!453890 () Bool)

(assert (=> b!1551895 (= e!995407 tp!453890)))

(declare-fun b!1551894 () Bool)

(assert (=> b!1551894 (= e!995408 (and (inv!22054 (xs!8359 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) e!995407))))

(assert (=> b!1551567 (= tp!453736 (and (inv!22046 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) e!995408))))

(assert (= (and b!1551567 ((_ is Node!5559) (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) b!1551893))

(assert (= b!1551894 b!1551895))

(assert (= (and b!1551567 ((_ is Leaf!8239) (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) b!1551894))

(declare-fun m!1824325 () Bool)

(assert (=> b!1551893 m!1824325))

(declare-fun m!1824327 () Bool)

(assert (=> b!1551893 m!1824327))

(declare-fun m!1824329 () Bool)

(assert (=> b!1551894 m!1824329))

(assert (=> b!1551567 m!1824019))

(declare-fun tp!453895 () Bool)

(declare-fun tp!453894 () Bool)

(declare-fun e!995410 () Bool)

(declare-fun b!1551896 () Bool)

(assert (=> b!1551896 (= e!995410 (and (inv!22046 (left!13648 (c!252328 totalInput!568))) tp!453895 (inv!22046 (right!13978 (c!252328 totalInput!568))) tp!453894))))

(declare-fun b!1551898 () Bool)

(declare-fun e!995409 () Bool)

(declare-fun tp!453893 () Bool)

(assert (=> b!1551898 (= e!995409 tp!453893)))

(declare-fun b!1551897 () Bool)

(assert (=> b!1551897 (= e!995410 (and (inv!22054 (xs!8359 (c!252328 totalInput!568))) e!995409))))

(assert (=> b!1551594 (= tp!453729 (and (inv!22046 (c!252328 totalInput!568)) e!995410))))

(assert (= (and b!1551594 ((_ is Node!5559) (c!252328 totalInput!568))) b!1551896))

(assert (= b!1551897 b!1551898))

(assert (= (and b!1551594 ((_ is Leaf!8239) (c!252328 totalInput!568))) b!1551897))

(declare-fun m!1824331 () Bool)

(assert (=> b!1551896 m!1824331))

(declare-fun m!1824333 () Bool)

(assert (=> b!1551896 m!1824333))

(declare-fun m!1824335 () Bool)

(assert (=> b!1551897 m!1824335))

(assert (=> b!1551594 m!1823987))

(declare-fun b!1551913 () Bool)

(declare-fun e!995423 () Bool)

(declare-fun tp!453925 () Bool)

(assert (=> b!1551913 (= e!995423 tp!453925)))

(declare-fun mapIsEmpty!8255 () Bool)

(declare-fun mapRes!8255 () Bool)

(assert (=> mapIsEmpty!8255 mapRes!8255))

(declare-fun setIsEmpty!10635 () Bool)

(declare-fun setRes!10635 () Bool)

(assert (=> setIsEmpty!10635 setRes!10635))

(declare-fun setElem!10636 () Context!1574)

(declare-fun tp!453918 () Bool)

(declare-fun setNonEmpty!10635 () Bool)

(assert (=> setNonEmpty!10635 (= setRes!10635 (and tp!453918 (inv!22053 setElem!10636) e!995423))))

(declare-fun mapDefault!8255 () List!16851)

(declare-fun setRest!10635 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10635 (= (_2!9423 (h!22184 mapDefault!8255)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10636 true) setRest!10635))))

(declare-fun setIsEmpty!10636 () Bool)

(declare-fun setRes!10636 () Bool)

(assert (=> setIsEmpty!10636 setRes!10636))

(declare-fun b!1551915 () Bool)

(declare-fun e!995425 () Bool)

(declare-fun tp!453928 () Bool)

(assert (=> b!1551915 (= e!995425 tp!453928)))

(declare-fun b!1551916 () Bool)

(declare-fun e!995427 () Bool)

(declare-fun tp!453924 () Bool)

(assert (=> b!1551916 (= e!995427 tp!453924)))

(declare-fun tp!453919 () Bool)

(declare-fun e!995428 () Bool)

(declare-fun tp!453927 () Bool)

(declare-fun b!1551917 () Bool)

(declare-fun e!995426 () Bool)

(assert (=> b!1551917 (= e!995426 (and tp!453927 (inv!22053 (_2!9422 (_1!9423 (h!22184 mapDefault!8255)))) e!995428 tp_is_empty!7061 setRes!10635 tp!453919))))

(declare-fun condSetEmpty!10636 () Bool)

(assert (=> b!1551917 (= condSetEmpty!10636 (= (_2!9423 (h!22184 mapDefault!8255)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun condMapEmpty!8255 () Bool)

(assert (=> mapNonEmpty!8245 (= condMapEmpty!8255 (= mapRest!8244 ((as const (Array (_ BitVec 32) List!16851)) mapDefault!8255)))))

(assert (=> mapNonEmpty!8245 (= tp!453743 (and e!995426 mapRes!8255))))

(declare-fun tp!453920 () Bool)

(declare-fun b!1551914 () Bool)

(declare-fun mapValue!8255 () List!16851)

(declare-fun tp!453922 () Bool)

(declare-fun e!995424 () Bool)

(assert (=> b!1551914 (= e!995424 (and tp!453922 (inv!22053 (_2!9422 (_1!9423 (h!22184 mapValue!8255)))) e!995427 tp_is_empty!7061 setRes!10636 tp!453920))))

(declare-fun condSetEmpty!10635 () Bool)

(assert (=> b!1551914 (= condSetEmpty!10635 (= (_2!9423 (h!22184 mapValue!8255)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1551918 () Bool)

(declare-fun tp!453921 () Bool)

(assert (=> b!1551918 (= e!995428 tp!453921)))

(declare-fun tp!453923 () Bool)

(declare-fun setElem!10635 () Context!1574)

(declare-fun setNonEmpty!10636 () Bool)

(assert (=> setNonEmpty!10636 (= setRes!10636 (and tp!453923 (inv!22053 setElem!10635) e!995425))))

(declare-fun setRest!10636 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10636 (= (_2!9423 (h!22184 mapValue!8255)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10635 true) setRest!10636))))

(declare-fun mapNonEmpty!8255 () Bool)

(declare-fun tp!453926 () Bool)

(assert (=> mapNonEmpty!8255 (= mapRes!8255 (and tp!453926 e!995424))))

(declare-fun mapRest!8255 () (Array (_ BitVec 32) List!16851))

(declare-fun mapKey!8255 () (_ BitVec 32))

(assert (=> mapNonEmpty!8255 (= mapRest!8244 (store mapRest!8255 mapKey!8255 mapValue!8255))))

(assert (= (and mapNonEmpty!8245 condMapEmpty!8255) mapIsEmpty!8255))

(assert (= (and mapNonEmpty!8245 (not condMapEmpty!8255)) mapNonEmpty!8255))

(assert (= b!1551914 b!1551916))

(assert (= (and b!1551914 condSetEmpty!10635) setIsEmpty!10636))

(assert (= (and b!1551914 (not condSetEmpty!10635)) setNonEmpty!10636))

(assert (= setNonEmpty!10636 b!1551915))

(assert (= (and mapNonEmpty!8255 ((_ is Cons!16783) mapValue!8255)) b!1551914))

(assert (= b!1551917 b!1551918))

(assert (= (and b!1551917 condSetEmpty!10636) setIsEmpty!10635))

(assert (= (and b!1551917 (not condSetEmpty!10636)) setNonEmpty!10635))

(assert (= setNonEmpty!10635 b!1551913))

(assert (= (and mapNonEmpty!8245 ((_ is Cons!16783) mapDefault!8255)) b!1551917))

(declare-fun m!1824337 () Bool)

(assert (=> setNonEmpty!10636 m!1824337))

(declare-fun m!1824339 () Bool)

(assert (=> b!1551914 m!1824339))

(declare-fun m!1824341 () Bool)

(assert (=> b!1551917 m!1824341))

(declare-fun m!1824343 () Bool)

(assert (=> mapNonEmpty!8255 m!1824343))

(declare-fun m!1824345 () Bool)

(assert (=> setNonEmpty!10635 m!1824345))

(declare-fun e!995430 () Bool)

(assert (=> mapNonEmpty!8245 (= tp!453742 e!995430)))

(declare-fun b!1551919 () Bool)

(declare-fun e!995429 () Bool)

(declare-fun tp!453930 () Bool)

(assert (=> b!1551919 (= e!995429 tp!453930)))

(declare-fun b!1551920 () Bool)

(declare-fun e!995431 () Bool)

(declare-fun tp!453931 () Bool)

(assert (=> b!1551920 (= e!995431 tp!453931)))

(declare-fun setNonEmpty!10637 () Bool)

(declare-fun tp!453933 () Bool)

(declare-fun setRes!10637 () Bool)

(declare-fun setElem!10637 () Context!1574)

(assert (=> setNonEmpty!10637 (= setRes!10637 (and tp!453933 (inv!22053 setElem!10637) e!995429))))

(declare-fun setRest!10637 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10637 (= (_2!9423 (h!22184 mapValue!8244)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10637 true) setRest!10637))))

(declare-fun setIsEmpty!10637 () Bool)

(assert (=> setIsEmpty!10637 setRes!10637))

(declare-fun b!1551921 () Bool)

(declare-fun tp!453932 () Bool)

(declare-fun tp!453929 () Bool)

(assert (=> b!1551921 (= e!995430 (and tp!453932 (inv!22053 (_2!9422 (_1!9423 (h!22184 mapValue!8244)))) e!995431 tp_is_empty!7061 setRes!10637 tp!453929))))

(declare-fun condSetEmpty!10637 () Bool)

(assert (=> b!1551921 (= condSetEmpty!10637 (= (_2!9423 (h!22184 mapValue!8244)) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1551921 b!1551920))

(assert (= (and b!1551921 condSetEmpty!10637) setIsEmpty!10637))

(assert (= (and b!1551921 (not condSetEmpty!10637)) setNonEmpty!10637))

(assert (= setNonEmpty!10637 b!1551919))

(assert (= (and mapNonEmpty!8245 ((_ is Cons!16783) mapValue!8244)) b!1551921))

(declare-fun m!1824347 () Bool)

(assert (=> setNonEmpty!10637 m!1824347))

(declare-fun m!1824349 () Bool)

(assert (=> b!1551921 m!1824349))

(declare-fun b_lambda!48673 () Bool)

(assert (= b_lambda!48667 (or b!1551575 b_lambda!48673)))

(declare-fun bs!387126 () Bool)

(declare-fun d!460402 () Bool)

(assert (= bs!387126 (and d!460402 b!1551575)))

(declare-fun dynLambda!7426 (Int TokenValue!3031) BalanceConc!11060)

(assert (=> bs!387126 (= (dynLambda!7424 lambda!65669 (seqFromList!1769 lt!537498)) (= (list!6482 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))) (list!6482 (seqFromList!1769 lt!537498))))))

(declare-fun b_lambda!48679 () Bool)

(assert (=> (not b_lambda!48679) (not bs!387126)))

(declare-fun t!141258 () Bool)

(declare-fun tb!87267 () Bool)

(assert (=> (and b!1551581 (= (toChars!4165 (transformation!2941 rule!240)) (toChars!4165 (transformation!2941 rule!240))) t!141258) tb!87267))

(declare-fun tp!453936 () Bool)

(declare-fun e!995434 () Bool)

(declare-fun b!1551926 () Bool)

(assert (=> b!1551926 (= e!995434 (and (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))) tp!453936))))

(declare-fun result!105296 () Bool)

(assert (=> tb!87267 (= result!105296 (and (inv!22047 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))) e!995434))))

(assert (= tb!87267 b!1551926))

(declare-fun m!1824351 () Bool)

(assert (=> b!1551926 m!1824351))

(declare-fun m!1824353 () Bool)

(assert (=> tb!87267 m!1824353))

(assert (=> bs!387126 t!141258))

(declare-fun b_and!108327 () Bool)

(assert (= b_and!108311 (and (=> t!141258 result!105296) b_and!108327)))

(declare-fun b_lambda!48681 () Bool)

(assert (=> (not b_lambda!48681) (not bs!387126)))

(declare-fun t!141260 () Bool)

(declare-fun tb!87269 () Bool)

(assert (=> (and b!1551581 (= (toValue!4306 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))) t!141260) tb!87269))

(declare-fun result!105300 () Bool)

(assert (=> tb!87269 (= result!105300 (inv!21 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))

(declare-fun m!1824355 () Bool)

(assert (=> tb!87269 m!1824355))

(assert (=> bs!387126 t!141260))

(declare-fun b_and!108329 () Bool)

(assert (= b_and!108325 (and (=> t!141260 result!105300) b_and!108329)))

(assert (=> bs!387126 m!1824027))

(declare-fun m!1824357 () Bool)

(assert (=> bs!387126 m!1824357))

(declare-fun m!1824359 () Bool)

(assert (=> bs!387126 m!1824359))

(declare-fun m!1824361 () Bool)

(assert (=> bs!387126 m!1824361))

(assert (=> bs!387126 m!1824027))

(declare-fun m!1824363 () Bool)

(assert (=> bs!387126 m!1824363))

(assert (=> bs!387126 m!1824363))

(assert (=> bs!387126 m!1824359))

(assert (=> d!460330 d!460402))

(declare-fun b_lambda!48675 () Bool)

(assert (= b_lambda!48671 (or (and b!1551581 b_free!41219) b_lambda!48675)))

(declare-fun b_lambda!48677 () Bool)

(assert (= b_lambda!48669 (or b!1551575 b_lambda!48677)))

(declare-fun bs!387127 () Bool)

(declare-fun d!460404 () Bool)

(assert (= bs!387127 (and d!460404 b!1551575)))

(assert (=> bs!387127 (= (dynLambda!7424 lambda!65669 (_1!9425 (_1!9426 lt!537493))) (= (list!6482 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))) (list!6482 (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun b_lambda!48683 () Bool)

(assert (=> (not b_lambda!48683) (not bs!387127)))

(declare-fun t!141262 () Bool)

(declare-fun tb!87271 () Bool)

(assert (=> (and b!1551581 (= (toChars!4165 (transformation!2941 rule!240)) (toChars!4165 (transformation!2941 rule!240))) t!141262) tb!87271))

(declare-fun b!1551927 () Bool)

(declare-fun tp!453937 () Bool)

(declare-fun e!995436 () Bool)

(assert (=> b!1551927 (= e!995436 (and (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))) tp!453937))))

(declare-fun result!105302 () Bool)

(assert (=> tb!87271 (= result!105302 (and (inv!22047 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))) e!995436))))

(assert (= tb!87271 b!1551927))

(declare-fun m!1824365 () Bool)

(assert (=> b!1551927 m!1824365))

(declare-fun m!1824367 () Bool)

(assert (=> tb!87271 m!1824367))

(assert (=> bs!387127 t!141262))

(declare-fun b_and!108331 () Bool)

(assert (= b_and!108327 (and (=> t!141262 result!105302) b_and!108331)))

(declare-fun b_lambda!48685 () Bool)

(assert (=> (not b_lambda!48685) (not bs!387127)))

(assert (=> bs!387127 t!141256))

(declare-fun b_and!108333 () Bool)

(assert (= b_and!108329 (and (=> t!141256 result!105276) b_and!108333)))

(assert (=> bs!387127 m!1824025))

(declare-fun m!1824369 () Bool)

(assert (=> bs!387127 m!1824369))

(declare-fun m!1824371 () Bool)

(assert (=> bs!387127 m!1824371))

(assert (=> bs!387127 m!1824147))

(assert (=> bs!387127 m!1824147))

(assert (=> bs!387127 m!1824369))

(assert (=> d!460334 d!460404))

(check-sat (not d!460338) (not b!1551779) (not d!460332) (not b!1551856) (not setNonEmpty!10609) (not b!1551653) (not d!460372) (not b!1551865) (not bs!387127) (not d!460376) (not bm!101823) (not b!1551640) (not b!1551895) (not b!1551634) (not b!1551594) b_and!108313 b_and!108319 (not b!1551857) (not b!1551712) (not b!1551859) (not tb!87269) (not setNonEmpty!10617) (not setNonEmpty!10618) (not d!460320) (not b!1551913) (not d!460356) (not b!1551694) (not b_lambda!48673) (not setNonEmpty!10636) (not d!460360) (not d!460374) (not b!1551891) (not b!1551919) (not b!1551864) (not b!1551792) (not setNonEmpty!10635) (not b!1551876) (not d!460350) (not b!1551831) (not b_next!41925) (not b!1551918) (not setNonEmpty!10608) (not b!1551920) (not mapNonEmpty!8255) (not b!1551893) (not b!1551615) (not b_next!41937) (not b!1551756) (not b_next!41933) (not mapNonEmpty!8249) (not b!1551642) (not d!460342) (not b!1551897) (not b_lambda!48675) (not d!460382) (not b!1551691) (not d!460314) (not d!460330) (not b!1551774) (not b!1551793) (not b!1551894) (not b!1551754) b_and!108315 (not b!1551819) (not b!1551807) (not bm!101824) (not b!1551776) b_and!108317 (not d!460334) (not b!1551612) (not b!1551636) (not tb!87267) (not b!1551722) (not setNonEmpty!10612) (not b!1551880) (not b!1551855) (not b_next!41927) (not b!1551724) (not b!1551791) (not b!1551881) (not b!1551824) (not b!1551658) (not b!1551635) (not d!460398) (not setNonEmpty!10619) (not b!1551782) (not b_lambda!48679) (not b!1551566) (not b!1551877) b_and!108331 (not setNonEmpty!10629) (not d!460324) (not b!1551915) (not b_lambda!48681) (not b!1551820) (not b!1551822) (not bm!101826) (not tb!87265) b_and!108323 b_and!108333 (not setNonEmpty!10628) (not d!460346) (not b_lambda!48685) (not d!460344) (not b!1551758) (not setNonEmpty!10620) (not setNonEmpty!10637) (not b!1551832) (not b!1551641) (not b!1551821) (not b!1551879) (not b_lambda!48683) (not d!460370) (not mapNonEmpty!8252) (not bm!101830) (not b!1551890) (not bm!101827) (not b!1551638) (not b!1551896) (not b!1551848) (not b!1551850) (not b!1551921) (not bm!101833) (not bm!101825) (not b!1551777) (not b!1551609) (not b!1551723) (not d!460328) (not b!1551851) (not bm!101829) (not b!1551818) (not b!1551916) (not b!1551817) (not b_next!41935) (not setNonEmpty!10604) (not b!1551917) (not d!460380) (not bs!387126) (not d!460378) (not b!1551847) (not b!1551852) (not b!1551760) (not b!1551823) (not b!1551926) (not b!1551655) (not b!1551898) (not b!1551892) (not d!460326) (not b!1551816) (not b_next!41931) (not b!1551805) (not b!1551780) b_and!108321 (not b!1551858) (not d!460358) (not setNonEmpty!10607) (not b!1551647) (not b!1551860) (not b!1551766) (not b!1551849) (not setNonEmpty!10622) (not b!1551927) (not setNonEmpty!10623) (not b!1551862) (not b!1551759) (not b_lambda!48677) (not b!1551639) (not b!1551606) (not b!1551914) (not d!460392) (not b_next!41929) (not b!1551806) (not b!1551853) (not b!1551567) (not b!1551692) (not d!460336) (not b!1551707) (not setNonEmpty!10621) (not b!1551878) (not b_next!41923) (not b!1551854) tp_is_empty!7061 (not b!1551863) (not bm!101828) (not b!1551690) (not b!1551861) (not setNonEmpty!10630) (not tb!87271) (not d!460364))
(check-sat (not b_next!41933) b_and!108315 b_and!108317 (not b_next!41927) b_and!108331 (not b_next!41935) (not b_next!41929) (not b_next!41923) b_and!108313 b_and!108319 (not b_next!41925) (not b_next!41937) b_and!108323 b_and!108333 (not b_next!41931) b_and!108321)
(get-model)

(declare-fun b_lambda!48687 () Bool)

(assert (= b_lambda!48681 (or (and b!1551581 b_free!41219) b_lambda!48687)))

(declare-fun b_lambda!48689 () Bool)

(assert (= b_lambda!48683 (or (and b!1551581 b_free!41221) b_lambda!48689)))

(declare-fun b_lambda!48691 () Bool)

(assert (= b_lambda!48685 (or (and b!1551581 b_free!41219) b_lambda!48691)))

(declare-fun b_lambda!48693 () Bool)

(assert (= b_lambda!48679 (or (and b!1551581 b_free!41221) b_lambda!48693)))

(check-sat (not d!460338) (not b!1551779) (not d!460332) (not b!1551856) (not setNonEmpty!10609) (not b!1551653) (not d!460372) (not b!1551865) (not bs!387127) (not d!460376) (not bm!101823) (not b!1551640) (not b!1551895) (not b!1551634) (not b!1551594) b_and!108313 b_and!108319 (not b!1551857) (not b!1551712) (not b!1551859) (not tb!87269) (not setNonEmpty!10617) (not setNonEmpty!10618) (not d!460320) (not b!1551913) (not d!460356) (not b!1551694) (not b_lambda!48673) (not setNonEmpty!10636) (not d!460360) (not d!460374) (not b!1551891) (not b!1551919) (not b!1551864) (not b!1551792) (not setNonEmpty!10635) (not b!1551876) (not d!460350) (not b!1551831) (not b_next!41925) (not b!1551918) (not setNonEmpty!10608) (not b!1551920) (not mapNonEmpty!8255) (not b!1551893) (not b!1551615) (not b_next!41937) (not b!1551756) (not b_next!41933) (not mapNonEmpty!8249) (not b!1551642) (not d!460342) (not b!1551897) (not b_lambda!48675) (not d!460382) (not b!1551691) (not d!460314) (not d!460330) (not b!1551774) (not b!1551793) (not b!1551894) (not b!1551754) b_and!108315 (not b!1551819) (not b!1551807) (not bm!101824) (not b!1551776) b_and!108317 (not d!460334) (not b!1551612) (not b!1551636) (not tb!87267) (not b!1551722) (not setNonEmpty!10612) (not b!1551880) (not b!1551855) (not b_next!41927) (not b!1551724) (not b!1551791) (not b!1551881) (not b!1551824) (not b!1551658) (not b!1551635) (not d!460398) (not setNonEmpty!10619) (not b!1551782) (not b!1551566) (not b!1551877) b_and!108331 (not setNonEmpty!10629) (not d!460324) (not b!1551915) (not b!1551820) (not b!1551822) (not bm!101826) (not tb!87265) b_and!108323 b_and!108333 (not setNonEmpty!10628) (not d!460346) (not d!460344) (not b!1551758) (not setNonEmpty!10620) (not setNonEmpty!10637) (not b!1551832) (not b!1551641) (not b!1551821) (not b!1551879) (not b_lambda!48691) (not b_lambda!48693) (not d!460370) (not mapNonEmpty!8252) (not bm!101830) (not b!1551890) (not bm!101827) (not b!1551638) (not b!1551896) (not b!1551848) (not b!1551850) (not b!1551921) (not bm!101833) (not bm!101825) (not b!1551777) (not b!1551609) (not b!1551723) (not d!460328) (not b!1551851) (not bm!101829) (not b!1551818) (not b!1551916) (not b!1551817) (not b_next!41935) (not setNonEmpty!10604) (not b!1551917) (not d!460380) (not bs!387126) (not d!460378) (not b!1551847) (not b!1551852) (not b!1551760) (not b!1551823) (not b!1551926) (not b!1551655) (not b!1551898) (not b!1551892) (not d!460326) (not b!1551816) (not b_next!41931) (not b!1551805) (not b!1551780) b_and!108321 (not b!1551858) (not d!460358) (not setNonEmpty!10607) (not b!1551647) (not b!1551860) (not b!1551766) (not b!1551849) (not setNonEmpty!10622) (not b!1551927) (not setNonEmpty!10623) (not b!1551862) (not b!1551759) (not b_lambda!48677) (not b!1551639) (not b!1551606) (not b!1551914) (not d!460392) (not b_next!41929) (not b_lambda!48689) (not b!1551806) (not b!1551853) (not b!1551567) (not b!1551692) (not d!460336) (not b!1551707) (not b_lambda!48687) (not setNonEmpty!10621) (not b!1551878) (not b_next!41923) (not b!1551854) tp_is_empty!7061 (not b!1551863) (not bm!101828) (not b!1551690) (not b!1551861) (not setNonEmpty!10630) (not tb!87271) (not d!460364))
(check-sat (not b_next!41933) b_and!108315 b_and!108317 (not b_next!41927) b_and!108331 (not b_next!41935) (not b_next!41929) (not b_next!41923) b_and!108313 b_and!108319 (not b_next!41925) (not b_next!41937) b_and!108323 b_and!108333 (not b_next!41931) b_and!108321)
(get-model)

(assert (=> d!460380 d!460362))

(declare-fun b!1551946 () Bool)

(declare-fun e!995451 () Bool)

(declare-fun e!995454 () Bool)

(assert (=> b!1551946 (= e!995451 e!995454)))

(declare-fun res!693303 () Bool)

(assert (=> b!1551946 (= res!693303 (not (nullable!1267 (reg!4598 (regex!2941 rule!240)))))))

(assert (=> b!1551946 (=> (not res!693303) (not e!995454))))

(declare-fun b!1551947 () Bool)

(declare-fun res!693306 () Bool)

(declare-fun e!995453 () Bool)

(assert (=> b!1551947 (=> res!693306 e!995453)))

(assert (=> b!1551947 (= res!693306 (not ((_ is Concat!7301) (regex!2941 rule!240))))))

(declare-fun e!995457 () Bool)

(assert (=> b!1551947 (= e!995457 e!995453)))

(declare-fun b!1551948 () Bool)

(declare-fun call!101847 () Bool)

(assert (=> b!1551948 (= e!995454 call!101847)))

(declare-fun b!1551949 () Bool)

(declare-fun e!995455 () Bool)

(assert (=> b!1551949 (= e!995453 e!995455)))

(declare-fun res!693305 () Bool)

(assert (=> b!1551949 (=> (not res!693305) (not e!995455))))

(declare-fun call!101845 () Bool)

(assert (=> b!1551949 (= res!693305 call!101845)))

(declare-fun bm!101840 () Bool)

(assert (=> bm!101840 (= call!101845 call!101847)))

(declare-fun bm!101841 () Bool)

(declare-fun call!101846 () Bool)

(declare-fun c!252372 () Bool)

(assert (=> bm!101841 (= call!101846 (validRegex!1708 (ite c!252372 (regTwo!9051 (regex!2941 rule!240)) (regTwo!9050 (regex!2941 rule!240)))))))

(declare-fun b!1551950 () Bool)

(declare-fun e!995452 () Bool)

(assert (=> b!1551950 (= e!995452 e!995451)))

(declare-fun c!252373 () Bool)

(assert (=> b!1551950 (= c!252373 ((_ is Star!4269) (regex!2941 rule!240)))))

(declare-fun b!1551951 () Bool)

(declare-fun e!995456 () Bool)

(assert (=> b!1551951 (= e!995456 call!101846)))

(declare-fun d!460406 () Bool)

(declare-fun res!693307 () Bool)

(assert (=> d!460406 (=> res!693307 e!995452)))

(assert (=> d!460406 (= res!693307 ((_ is ElementMatch!4269) (regex!2941 rule!240)))))

(assert (=> d!460406 (= (validRegex!1708 (regex!2941 rule!240)) e!995452)))

(declare-fun b!1551952 () Bool)

(declare-fun res!693304 () Bool)

(assert (=> b!1551952 (=> (not res!693304) (not e!995456))))

(assert (=> b!1551952 (= res!693304 call!101845)))

(assert (=> b!1551952 (= e!995457 e!995456)))

(declare-fun bm!101842 () Bool)

(assert (=> bm!101842 (= call!101847 (validRegex!1708 (ite c!252373 (reg!4598 (regex!2941 rule!240)) (ite c!252372 (regOne!9051 (regex!2941 rule!240)) (regOne!9050 (regex!2941 rule!240))))))))

(declare-fun b!1551953 () Bool)

(assert (=> b!1551953 (= e!995455 call!101846)))

(declare-fun b!1551954 () Bool)

(assert (=> b!1551954 (= e!995451 e!995457)))

(assert (=> b!1551954 (= c!252372 ((_ is Union!4269) (regex!2941 rule!240)))))

(assert (= (and d!460406 (not res!693307)) b!1551950))

(assert (= (and b!1551950 c!252373) b!1551946))

(assert (= (and b!1551950 (not c!252373)) b!1551954))

(assert (= (and b!1551946 res!693303) b!1551948))

(assert (= (and b!1551954 c!252372) b!1551952))

(assert (= (and b!1551954 (not c!252372)) b!1551947))

(assert (= (and b!1551952 res!693304) b!1551951))

(assert (= (and b!1551947 (not res!693306)) b!1551949))

(assert (= (and b!1551949 res!693305) b!1551953))

(assert (= (or b!1551951 b!1551953) bm!101841))

(assert (= (or b!1551952 b!1551949) bm!101840))

(assert (= (or b!1551948 bm!101840) bm!101842))

(declare-fun m!1824373 () Bool)

(assert (=> b!1551946 m!1824373))

(declare-fun m!1824375 () Bool)

(assert (=> bm!101841 m!1824375))

(declare-fun m!1824377 () Bool)

(assert (=> bm!101842 m!1824377))

(assert (=> d!460380 d!460406))

(declare-fun d!460408 () Bool)

(declare-fun lambda!65675 () Int)

(declare-fun forall!3917 (List!16848 Int) Bool)

(assert (=> d!460408 (= (inv!22053 setElem!10629) (forall!3917 (exprs!1287 setElem!10629) lambda!65675))))

(declare-fun bs!387128 () Bool)

(assert (= bs!387128 d!460408))

(declare-fun m!1824379 () Bool)

(assert (=> bs!387128 m!1824379))

(assert (=> setNonEmpty!10628 d!460408))

(declare-fun d!460410 () Bool)

(assert (=> d!460410 (= lt!537496 Nil!16779)))

(declare-fun lt!537629 () Unit!26027)

(declare-fun choose!9252 (List!16847 List!16847 List!16847) Unit!26027)

(assert (=> d!460410 (= lt!537629 (choose!9252 lt!537496 Nil!16779 lt!537496))))

(assert (=> d!460410 (isPrefix!1257 lt!537496 lt!537496)))

(assert (=> d!460410 (= (lemmaIsPrefixSameLengthThenSameList!121 lt!537496 Nil!16779 lt!537496) lt!537629)))

(declare-fun bs!387129 () Bool)

(assert (= bs!387129 d!460410))

(declare-fun m!1824381 () Bool)

(assert (=> bs!387129 m!1824381))

(assert (=> bs!387129 m!1824197))

(assert (=> bm!101829 d!460410))

(declare-fun d!460412 () Bool)

(declare-fun lt!537630 () Int)

(assert (=> d!460412 (>= lt!537630 0)))

(declare-fun e!995458 () Int)

(assert (=> d!460412 (= lt!537630 e!995458)))

(declare-fun c!252374 () Bool)

(assert (=> d!460412 (= c!252374 ((_ is Nil!16779) (t!141250 lt!537496)))))

(assert (=> d!460412 (= (size!13577 (t!141250 lt!537496)) lt!537630)))

(declare-fun b!1551955 () Bool)

(assert (=> b!1551955 (= e!995458 0)))

(declare-fun b!1551956 () Bool)

(assert (=> b!1551956 (= e!995458 (+ 1 (size!13577 (t!141250 (t!141250 lt!537496)))))))

(assert (= (and d!460412 c!252374) b!1551955))

(assert (= (and d!460412 (not c!252374)) b!1551956))

(declare-fun m!1824383 () Bool)

(assert (=> b!1551956 m!1824383))

(assert (=> b!1551653 d!460412))

(declare-fun d!460414 () Bool)

(declare-fun res!693312 () Bool)

(declare-fun e!995461 () Bool)

(assert (=> d!460414 (=> (not res!693312) (not e!995461))))

(declare-fun list!6484 (IArray!11123) List!16847)

(assert (=> d!460414 (= res!693312 (<= (size!13577 (list!6484 (xs!8359 (c!252328 input!1676)))) 512))))

(assert (=> d!460414 (= (inv!22052 (c!252328 input!1676)) e!995461)))

(declare-fun b!1551961 () Bool)

(declare-fun res!693313 () Bool)

(assert (=> b!1551961 (=> (not res!693313) (not e!995461))))

(assert (=> b!1551961 (= res!693313 (= (csize!11349 (c!252328 input!1676)) (size!13577 (list!6484 (xs!8359 (c!252328 input!1676))))))))

(declare-fun b!1551962 () Bool)

(assert (=> b!1551962 (= e!995461 (and (> (csize!11349 (c!252328 input!1676)) 0) (<= (csize!11349 (c!252328 input!1676)) 512)))))

(assert (= (and d!460414 res!693312) b!1551961))

(assert (= (and b!1551961 res!693313) b!1551962))

(declare-fun m!1824385 () Bool)

(assert (=> d!460414 m!1824385))

(assert (=> d!460414 m!1824385))

(declare-fun m!1824387 () Bool)

(assert (=> d!460414 m!1824387))

(assert (=> b!1551961 m!1824385))

(assert (=> b!1551961 m!1824385))

(assert (=> b!1551961 m!1824387))

(assert (=> b!1551776 d!460414))

(declare-fun b!1551963 () Bool)

(declare-fun e!995466 () Bool)

(assert (=> b!1551963 (= e!995466 (not (= (head!3110 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) (c!252327 (regex!2941 rule!240)))))))

(declare-fun b!1551964 () Bool)

(declare-fun e!995467 () Bool)

(assert (=> b!1551964 (= e!995467 e!995466)))

(declare-fun res!693316 () Bool)

(assert (=> b!1551964 (=> res!693316 e!995466)))

(declare-fun call!101848 () Bool)

(assert (=> b!1551964 (= res!693316 call!101848)))

(declare-fun b!1551965 () Bool)

(declare-fun e!995463 () Bool)

(assert (=> b!1551965 (= e!995463 (= (head!3110 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) (c!252327 (regex!2941 rule!240))))))

(declare-fun b!1551966 () Bool)

(declare-fun res!693320 () Bool)

(assert (=> b!1551966 (=> (not res!693320) (not e!995463))))

(assert (=> b!1551966 (= res!693320 (not call!101848))))

(declare-fun b!1551967 () Bool)

(declare-fun e!995464 () Bool)

(assert (=> b!1551967 (= e!995464 (nullable!1267 (regex!2941 rule!240)))))

(declare-fun d!460416 () Bool)

(declare-fun e!995462 () Bool)

(assert (=> d!460416 e!995462))

(declare-fun c!252375 () Bool)

(assert (=> d!460416 (= c!252375 ((_ is EmptyExpr!4269) (regex!2941 rule!240)))))

(declare-fun lt!537631 () Bool)

(assert (=> d!460416 (= lt!537631 e!995464)))

(declare-fun c!252377 () Bool)

(assert (=> d!460416 (= c!252377 (isEmpty!10094 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))))))

(assert (=> d!460416 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460416 (= (matchR!1874 (regex!2941 rule!240) (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) lt!537631)))

(declare-fun b!1551968 () Bool)

(declare-fun res!693314 () Bool)

(assert (=> b!1551968 (=> res!693314 e!995466)))

(assert (=> b!1551968 (= res!693314 (not (isEmpty!10094 (tail!2205 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))))))))

(declare-fun b!1551969 () Bool)

(assert (=> b!1551969 (= e!995464 (matchR!1874 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))))) (tail!2205 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))))))))

(declare-fun b!1551970 () Bool)

(declare-fun e!995465 () Bool)

(assert (=> b!1551970 (= e!995465 e!995467)))

(declare-fun res!693319 () Bool)

(assert (=> b!1551970 (=> (not res!693319) (not e!995467))))

(assert (=> b!1551970 (= res!693319 (not lt!537631))))

(declare-fun b!1551971 () Bool)

(declare-fun e!995468 () Bool)

(assert (=> b!1551971 (= e!995468 (not lt!537631))))

(declare-fun b!1551972 () Bool)

(declare-fun res!693317 () Bool)

(assert (=> b!1551972 (=> res!693317 e!995465)))

(assert (=> b!1551972 (= res!693317 e!995463)))

(declare-fun res!693321 () Bool)

(assert (=> b!1551972 (=> (not res!693321) (not e!995463))))

(assert (=> b!1551972 (= res!693321 lt!537631)))

(declare-fun bm!101843 () Bool)

(assert (=> bm!101843 (= call!101848 (isEmpty!10094 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))))))

(declare-fun b!1551973 () Bool)

(assert (=> b!1551973 (= e!995462 e!995468)))

(declare-fun c!252376 () Bool)

(assert (=> b!1551973 (= c!252376 ((_ is EmptyLang!4269) (regex!2941 rule!240)))))

(declare-fun b!1551974 () Bool)

(declare-fun res!693318 () Bool)

(assert (=> b!1551974 (=> res!693318 e!995465)))

(assert (=> b!1551974 (= res!693318 (not ((_ is ElementMatch!4269) (regex!2941 rule!240))))))

(assert (=> b!1551974 (= e!995468 e!995465)))

(declare-fun b!1551975 () Bool)

(declare-fun res!693315 () Bool)

(assert (=> b!1551975 (=> (not res!693315) (not e!995463))))

(assert (=> b!1551975 (= res!693315 (isEmpty!10094 (tail!2205 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))))))))

(declare-fun b!1551976 () Bool)

(assert (=> b!1551976 (= e!995462 (= lt!537631 call!101848))))

(assert (= (and d!460416 c!252377) b!1551967))

(assert (= (and d!460416 (not c!252377)) b!1551969))

(assert (= (and d!460416 c!252375) b!1551976))

(assert (= (and d!460416 (not c!252375)) b!1551973))

(assert (= (and b!1551973 c!252376) b!1551971))

(assert (= (and b!1551973 (not c!252376)) b!1551974))

(assert (= (and b!1551974 (not res!693318)) b!1551972))

(assert (= (and b!1551972 res!693321) b!1551966))

(assert (= (and b!1551966 res!693320) b!1551975))

(assert (= (and b!1551975 res!693315) b!1551965))

(assert (= (and b!1551972 (not res!693317)) b!1551970))

(assert (= (and b!1551970 res!693319) b!1551964))

(assert (= (and b!1551964 (not res!693316)) b!1551968))

(assert (= (and b!1551968 (not res!693314)) b!1551963))

(assert (= (or b!1551976 b!1551964 b!1551966) bm!101843))

(assert (=> b!1551969 m!1824131))

(declare-fun m!1824389 () Bool)

(assert (=> b!1551969 m!1824389))

(assert (=> b!1551969 m!1824389))

(declare-fun m!1824391 () Bool)

(assert (=> b!1551969 m!1824391))

(assert (=> b!1551969 m!1824131))

(declare-fun m!1824393 () Bool)

(assert (=> b!1551969 m!1824393))

(assert (=> b!1551969 m!1824391))

(assert (=> b!1551969 m!1824393))

(declare-fun m!1824395 () Bool)

(assert (=> b!1551969 m!1824395))

(assert (=> b!1551968 m!1824131))

(assert (=> b!1551968 m!1824393))

(assert (=> b!1551968 m!1824393))

(declare-fun m!1824397 () Bool)

(assert (=> b!1551968 m!1824397))

(assert (=> b!1551967 m!1824187))

(assert (=> b!1551965 m!1824131))

(assert (=> b!1551965 m!1824389))

(assert (=> b!1551975 m!1824131))

(assert (=> b!1551975 m!1824393))

(assert (=> b!1551975 m!1824393))

(assert (=> b!1551975 m!1824397))

(assert (=> b!1551963 m!1824131))

(assert (=> b!1551963 m!1824389))

(assert (=> d!460416 m!1824131))

(declare-fun m!1824399 () Bool)

(assert (=> d!460416 m!1824399))

(assert (=> d!460416 m!1824163))

(assert (=> bm!101843 m!1824131))

(assert (=> bm!101843 m!1824399))

(assert (=> b!1551635 d!460416))

(declare-fun d!460418 () Bool)

(assert (=> d!460418 (= (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))) (list!6483 (c!252328 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))))))

(declare-fun bs!387130 () Bool)

(assert (= bs!387130 d!460418))

(declare-fun m!1824401 () Bool)

(assert (=> bs!387130 m!1824401))

(assert (=> b!1551635 d!460418))

(declare-fun d!460420 () Bool)

(declare-fun lt!537634 () BalanceConc!11060)

(assert (=> d!460420 (= (list!6482 lt!537634) (originalCharacters!3763 (_1!9428 (get!4841 lt!537519))))))

(assert (=> d!460420 (= lt!537634 (dynLambda!7426 (toChars!4165 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519))))) (value!93458 (_1!9428 (get!4841 lt!537519)))))))

(assert (=> d!460420 (= (charsOf!1643 (_1!9428 (get!4841 lt!537519))) lt!537634)))

(declare-fun b_lambda!48695 () Bool)

(assert (=> (not b_lambda!48695) (not d!460420)))

(declare-fun tb!87273 () Bool)

(declare-fun t!141264 () Bool)

(assert (=> (and b!1551581 (= (toChars!4165 (transformation!2941 rule!240)) (toChars!4165 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519)))))) t!141264) tb!87273))

(declare-fun b!1551977 () Bool)

(declare-fun e!995469 () Bool)

(declare-fun tp!453938 () Bool)

(assert (=> b!1551977 (= e!995469 (and (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519))))) (value!93458 (_1!9428 (get!4841 lt!537519)))))) tp!453938))))

(declare-fun result!105304 () Bool)

(assert (=> tb!87273 (= result!105304 (and (inv!22047 (dynLambda!7426 (toChars!4165 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519))))) (value!93458 (_1!9428 (get!4841 lt!537519))))) e!995469))))

(assert (= tb!87273 b!1551977))

(declare-fun m!1824403 () Bool)

(assert (=> b!1551977 m!1824403))

(declare-fun m!1824405 () Bool)

(assert (=> tb!87273 m!1824405))

(assert (=> d!460420 t!141264))

(declare-fun b_and!108335 () Bool)

(assert (= b_and!108331 (and (=> t!141264 result!105304) b_and!108335)))

(declare-fun m!1824407 () Bool)

(assert (=> d!460420 m!1824407))

(declare-fun m!1824409 () Bool)

(assert (=> d!460420 m!1824409))

(assert (=> b!1551635 d!460420))

(declare-fun d!460422 () Bool)

(assert (=> d!460422 (= (get!4841 lt!537519) (v!23621 lt!537519))))

(assert (=> b!1551635 d!460422))

(declare-fun bs!387131 () Bool)

(declare-fun d!460424 () Bool)

(assert (= bs!387131 (and d!460424 d!460408)))

(declare-fun lambda!65676 () Int)

(assert (=> bs!387131 (= lambda!65676 lambda!65675)))

(assert (=> d!460424 (= (inv!22053 setElem!10612) (forall!3917 (exprs!1287 setElem!10612) lambda!65676))))

(declare-fun bs!387132 () Bool)

(assert (= bs!387132 d!460424))

(declare-fun m!1824411 () Bool)

(assert (=> bs!387132 m!1824411))

(assert (=> setNonEmpty!10612 d!460424))

(declare-fun b!1551988 () Bool)

(declare-fun res!693324 () Bool)

(declare-fun e!995477 () Bool)

(assert (=> b!1551988 (=> res!693324 e!995477)))

(assert (=> b!1551988 (= res!693324 (not ((_ is IntegerValue!9095) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))))

(declare-fun e!995476 () Bool)

(assert (=> b!1551988 (= e!995476 e!995477)))

(declare-fun b!1551989 () Bool)

(declare-fun e!995478 () Bool)

(assert (=> b!1551989 (= e!995478 e!995476)))

(declare-fun c!252382 () Bool)

(assert (=> b!1551989 (= c!252382 ((_ is IntegerValue!9094) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun d!460426 () Bool)

(declare-fun c!252383 () Bool)

(assert (=> d!460426 (= c!252383 ((_ is IntegerValue!9093) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))

(assert (=> d!460426 (= (inv!21 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))) e!995478)))

(declare-fun b!1551990 () Bool)

(declare-fun inv!17 (TokenValue!3031) Bool)

(assert (=> b!1551990 (= e!995476 (inv!17 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun b!1551991 () Bool)

(declare-fun inv!16 (TokenValue!3031) Bool)

(assert (=> b!1551991 (= e!995478 (inv!16 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))

(declare-fun b!1551992 () Bool)

(declare-fun inv!15 (TokenValue!3031) Bool)

(assert (=> b!1551992 (= e!995477 (inv!15 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))

(assert (= (and d!460426 c!252383) b!1551991))

(assert (= (and d!460426 (not c!252383)) b!1551989))

(assert (= (and b!1551989 c!252382) b!1551990))

(assert (= (and b!1551989 (not c!252382)) b!1551988))

(assert (= (and b!1551988 (not res!693324)) b!1551992))

(declare-fun m!1824413 () Bool)

(assert (=> b!1551990 m!1824413))

(declare-fun m!1824415 () Bool)

(assert (=> b!1551991 m!1824415))

(declare-fun m!1824417 () Bool)

(assert (=> b!1551992 m!1824417))

(assert (=> tb!87265 d!460426))

(declare-fun bs!387133 () Bool)

(declare-fun d!460428 () Bool)

(assert (= bs!387133 (and d!460428 d!460408)))

(declare-fun lambda!65677 () Int)

(assert (=> bs!387133 (= lambda!65677 lambda!65675)))

(declare-fun bs!387134 () Bool)

(assert (= bs!387134 (and d!460428 d!460424)))

(assert (=> bs!387134 (= lambda!65677 lambda!65676)))

(assert (=> d!460428 (= (inv!22053 setElem!10636) (forall!3917 (exprs!1287 setElem!10636) lambda!65677))))

(declare-fun bs!387135 () Bool)

(assert (= bs!387135 d!460428))

(declare-fun m!1824419 () Bool)

(assert (=> bs!387135 m!1824419))

(assert (=> setNonEmpty!10635 d!460428))

(declare-fun d!460430 () Bool)

(assert (=> d!460430 (= (valid!1425 (_4!441 lt!537623)) (validCacheMapFurthestNullable!71 (cache!2105 (_4!441 lt!537623)) (totalInput!2444 (_4!441 lt!537623))))))

(declare-fun bs!387136 () Bool)

(assert (= bs!387136 d!460430))

(declare-fun m!1824421 () Bool)

(assert (=> bs!387136 m!1824421))

(assert (=> b!1551724 d!460430))

(assert (=> b!1551639 d!460422))

(declare-fun d!460432 () Bool)

(assert (=> d!460432 (= (apply!4105 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519)))) (seqFromList!1769 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519))))) (dynLambda!7425 (toValue!4306 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519))))) (seqFromList!1769 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519))))))))

(declare-fun b_lambda!48697 () Bool)

(assert (=> (not b_lambda!48697) (not d!460432)))

(declare-fun t!141266 () Bool)

(declare-fun tb!87275 () Bool)

(assert (=> (and b!1551581 (= (toValue!4306 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519)))))) t!141266) tb!87275))

(declare-fun result!105306 () Bool)

(assert (=> tb!87275 (= result!105306 (inv!21 (dynLambda!7425 (toValue!4306 (transformation!2941 (rule!4722 (_1!9428 (get!4841 lt!537519))))) (seqFromList!1769 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))))))))

(declare-fun m!1824423 () Bool)

(assert (=> tb!87275 m!1824423))

(assert (=> d!460432 t!141266))

(declare-fun b_and!108337 () Bool)

(assert (= b_and!108333 (and (=> t!141266 result!105306) b_and!108337)))

(assert (=> d!460432 m!1824135))

(declare-fun m!1824425 () Bool)

(assert (=> d!460432 m!1824425))

(assert (=> b!1551639 d!460432))

(declare-fun d!460434 () Bool)

(assert (=> d!460434 (= (seqFromList!1769 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))) (fromListB!758 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))))))

(declare-fun bs!387137 () Bool)

(assert (= bs!387137 d!460434))

(declare-fun m!1824427 () Bool)

(assert (=> bs!387137 m!1824427))

(assert (=> b!1551639 d!460434))

(declare-fun b!1551993 () Bool)

(declare-fun e!995484 () Bool)

(assert (=> b!1551993 (= e!995484 (not (= (head!3110 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))) (c!252327 (regex!2941 rule!240)))))))

(declare-fun b!1551994 () Bool)

(declare-fun e!995485 () Bool)

(assert (=> b!1551994 (= e!995485 e!995484)))

(declare-fun res!693327 () Bool)

(assert (=> b!1551994 (=> res!693327 e!995484)))

(declare-fun call!101849 () Bool)

(assert (=> b!1551994 (= res!693327 call!101849)))

(declare-fun b!1551995 () Bool)

(declare-fun e!995481 () Bool)

(assert (=> b!1551995 (= e!995481 (= (head!3110 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))) (c!252327 (regex!2941 rule!240))))))

(declare-fun b!1551996 () Bool)

(declare-fun res!693331 () Bool)

(assert (=> b!1551996 (=> (not res!693331) (not e!995481))))

(assert (=> b!1551996 (= res!693331 (not call!101849))))

(declare-fun b!1551997 () Bool)

(declare-fun e!995482 () Bool)

(assert (=> b!1551997 (= e!995482 (nullable!1267 (regex!2941 rule!240)))))

(declare-fun d!460436 () Bool)

(declare-fun e!995480 () Bool)

(assert (=> d!460436 e!995480))

(declare-fun c!252384 () Bool)

(assert (=> d!460436 (= c!252384 ((_ is EmptyExpr!4269) (regex!2941 rule!240)))))

(declare-fun lt!537635 () Bool)

(assert (=> d!460436 (= lt!537635 e!995482)))

(declare-fun c!252386 () Bool)

(assert (=> d!460436 (= c!252386 (isEmpty!10094 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(assert (=> d!460436 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460436 (= (matchR!1874 (regex!2941 rule!240) (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))) lt!537635)))

(declare-fun b!1551998 () Bool)

(declare-fun res!693325 () Bool)

(assert (=> b!1551998 (=> res!693325 e!995484)))

(assert (=> b!1551998 (= res!693325 (not (isEmpty!10094 (tail!2205 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))))

(declare-fun b!1551999 () Bool)

(assert (=> b!1551999 (= e!995482 (matchR!1874 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496))))) (tail!2205 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496))))))))

(declare-fun b!1552000 () Bool)

(declare-fun e!995483 () Bool)

(assert (=> b!1552000 (= e!995483 e!995485)))

(declare-fun res!693330 () Bool)

(assert (=> b!1552000 (=> (not res!693330) (not e!995485))))

(assert (=> b!1552000 (= res!693330 (not lt!537635))))

(declare-fun b!1552001 () Bool)

(declare-fun e!995486 () Bool)

(assert (=> b!1552001 (= e!995486 (not lt!537635))))

(declare-fun b!1552002 () Bool)

(declare-fun res!693328 () Bool)

(assert (=> b!1552002 (=> res!693328 e!995483)))

(assert (=> b!1552002 (= res!693328 e!995481)))

(declare-fun res!693332 () Bool)

(assert (=> b!1552002 (=> (not res!693332) (not e!995481))))

(assert (=> b!1552002 (= res!693332 lt!537635)))

(declare-fun bm!101844 () Bool)

(assert (=> bm!101844 (= call!101849 (isEmpty!10094 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(declare-fun b!1552003 () Bool)

(assert (=> b!1552003 (= e!995480 e!995486)))

(declare-fun c!252385 () Bool)

(assert (=> b!1552003 (= c!252385 ((_ is EmptyLang!4269) (regex!2941 rule!240)))))

(declare-fun b!1552004 () Bool)

(declare-fun res!693329 () Bool)

(assert (=> b!1552004 (=> res!693329 e!995483)))

(assert (=> b!1552004 (= res!693329 (not ((_ is ElementMatch!4269) (regex!2941 rule!240))))))

(assert (=> b!1552004 (= e!995486 e!995483)))

(declare-fun b!1552005 () Bool)

(declare-fun res!693326 () Bool)

(assert (=> b!1552005 (=> (not res!693326) (not e!995481))))

(assert (=> b!1552005 (= res!693326 (isEmpty!10094 (tail!2205 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496))))))))

(declare-fun b!1552006 () Bool)

(assert (=> b!1552006 (= e!995480 (= lt!537635 call!101849))))

(assert (= (and d!460436 c!252386) b!1551997))

(assert (= (and d!460436 (not c!252386)) b!1551999))

(assert (= (and d!460436 c!252384) b!1552006))

(assert (= (and d!460436 (not c!252384)) b!1552003))

(assert (= (and b!1552003 c!252385) b!1552001))

(assert (= (and b!1552003 (not c!252385)) b!1552004))

(assert (= (and b!1552004 (not res!693329)) b!1552002))

(assert (= (and b!1552002 res!693332) b!1551996))

(assert (= (and b!1551996 res!693331) b!1552005))

(assert (= (and b!1552005 res!693326) b!1551995))

(assert (= (and b!1552002 (not res!693328)) b!1552000))

(assert (= (and b!1552000 res!693330) b!1551994))

(assert (= (and b!1551994 (not res!693327)) b!1551998))

(assert (= (and b!1551998 (not res!693325)) b!1551993))

(assert (= (or b!1552006 b!1551994 b!1551996) bm!101844))

(declare-fun m!1824429 () Bool)

(assert (=> b!1551999 m!1824429))

(assert (=> b!1551999 m!1824429))

(declare-fun m!1824431 () Bool)

(assert (=> b!1551999 m!1824431))

(declare-fun m!1824433 () Bool)

(assert (=> b!1551999 m!1824433))

(assert (=> b!1551999 m!1824431))

(assert (=> b!1551999 m!1824433))

(declare-fun m!1824435 () Bool)

(assert (=> b!1551999 m!1824435))

(assert (=> b!1551998 m!1824433))

(assert (=> b!1551998 m!1824433))

(declare-fun m!1824437 () Bool)

(assert (=> b!1551998 m!1824437))

(assert (=> b!1551997 m!1824187))

(assert (=> b!1551995 m!1824429))

(assert (=> b!1552005 m!1824433))

(assert (=> b!1552005 m!1824433))

(assert (=> b!1552005 m!1824437))

(assert (=> b!1551993 m!1824429))

(assert (=> d!460436 m!1824123))

(assert (=> d!460436 m!1824163))

(assert (=> bm!101844 m!1824123))

(assert (=> b!1551658 d!460436))

(assert (=> b!1551658 d!460358))

(assert (=> b!1551658 d!460354))

(assert (=> b!1551658 d!460352))

(assert (=> d!460350 d!460360))

(assert (=> b!1551566 d!460394))

(declare-fun bs!387138 () Bool)

(declare-fun d!460438 () Bool)

(assert (= bs!387138 (and d!460438 d!460408)))

(declare-fun lambda!65678 () Int)

(assert (=> bs!387138 (= lambda!65678 lambda!65675)))

(declare-fun bs!387139 () Bool)

(assert (= bs!387139 (and d!460438 d!460424)))

(assert (=> bs!387139 (= lambda!65678 lambda!65676)))

(declare-fun bs!387140 () Bool)

(assert (= bs!387140 (and d!460438 d!460428)))

(assert (=> bs!387140 (= lambda!65678 lambda!65677)))

(assert (=> d!460438 (= (inv!22053 (_2!9422 (_1!9423 (h!22184 mapDefault!8255)))) (forall!3917 (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapDefault!8255)))) lambda!65678))))

(declare-fun bs!387141 () Bool)

(assert (= bs!387141 d!460438))

(declare-fun m!1824439 () Bool)

(assert (=> bs!387141 m!1824439))

(assert (=> b!1551917 d!460438))

(declare-fun b!1552019 () Bool)

(declare-fun res!693346 () Bool)

(declare-fun e!995492 () Bool)

(assert (=> b!1552019 (=> (not res!693346) (not e!995492))))

(assert (=> b!1552019 (= res!693346 (isBalanced!1640 (right!13978 (c!252328 totalInput!568))))))

(declare-fun b!1552020 () Bool)

(declare-fun res!693347 () Bool)

(assert (=> b!1552020 (=> (not res!693347) (not e!995492))))

(declare-fun height!827 (Conc!5559) Int)

(assert (=> b!1552020 (= res!693347 (<= (- (height!827 (left!13648 (c!252328 totalInput!568))) (height!827 (right!13978 (c!252328 totalInput!568)))) 1))))

(declare-fun b!1552021 () Bool)

(declare-fun e!995491 () Bool)

(assert (=> b!1552021 (= e!995491 e!995492)))

(declare-fun res!693350 () Bool)

(assert (=> b!1552021 (=> (not res!693350) (not e!995492))))

(assert (=> b!1552021 (= res!693350 (<= (- 1) (- (height!827 (left!13648 (c!252328 totalInput!568))) (height!827 (right!13978 (c!252328 totalInput!568))))))))

(declare-fun b!1552022 () Bool)

(declare-fun res!693348 () Bool)

(assert (=> b!1552022 (=> (not res!693348) (not e!995492))))

(assert (=> b!1552022 (= res!693348 (not (isEmpty!10098 (left!13648 (c!252328 totalInput!568)))))))

(declare-fun b!1552023 () Bool)

(declare-fun res!693345 () Bool)

(assert (=> b!1552023 (=> (not res!693345) (not e!995492))))

(assert (=> b!1552023 (= res!693345 (isBalanced!1640 (left!13648 (c!252328 totalInput!568))))))

(declare-fun b!1552024 () Bool)

(assert (=> b!1552024 (= e!995492 (not (isEmpty!10098 (right!13978 (c!252328 totalInput!568)))))))

(declare-fun d!460440 () Bool)

(declare-fun res!693349 () Bool)

(assert (=> d!460440 (=> res!693349 e!995491)))

(assert (=> d!460440 (= res!693349 (not ((_ is Node!5559) (c!252328 totalInput!568))))))

(assert (=> d!460440 (= (isBalanced!1640 (c!252328 totalInput!568)) e!995491)))

(assert (= (and d!460440 (not res!693349)) b!1552021))

(assert (= (and b!1552021 res!693350) b!1552020))

(assert (= (and b!1552020 res!693347) b!1552023))

(assert (= (and b!1552023 res!693345) b!1552019))

(assert (= (and b!1552019 res!693346) b!1552022))

(assert (= (and b!1552022 res!693348) b!1552024))

(declare-fun m!1824441 () Bool)

(assert (=> b!1552022 m!1824441))

(declare-fun m!1824443 () Bool)

(assert (=> b!1552020 m!1824443))

(declare-fun m!1824445 () Bool)

(assert (=> b!1552020 m!1824445))

(declare-fun m!1824447 () Bool)

(assert (=> b!1552023 m!1824447))

(declare-fun m!1824449 () Bool)

(assert (=> b!1552019 m!1824449))

(assert (=> b!1552021 m!1824443))

(assert (=> b!1552021 m!1824445))

(declare-fun m!1824451 () Bool)

(assert (=> b!1552024 m!1824451))

(assert (=> d!460314 d!460440))

(declare-fun d!460442 () Bool)

(assert (=> d!460442 (= (isEmpty!10096 lt!537519) (not ((_ is Some!3026) lt!537519)))))

(assert (=> d!460336 d!460442))

(declare-fun d!460444 () Bool)

(assert (=> d!460444 (= (isEmpty!10094 (_1!9424 lt!537522)) ((_ is Nil!16779) (_1!9424 lt!537522)))))

(assert (=> d!460336 d!460444))

(declare-fun d!460446 () Bool)

(declare-fun lt!537652 () tuple2!16200)

(assert (=> d!460446 (= (++!4411 (_1!9424 lt!537652) (_2!9424 lt!537652)) lt!537496)))

(declare-fun sizeTr!49 (List!16847 Int) Int)

(assert (=> d!460446 (= lt!537652 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 0 lt!537496 lt!537496 (sizeTr!49 lt!537496 0)))))

(declare-fun lt!537654 () Unit!26027)

(declare-fun lt!537658 () Unit!26027)

(assert (=> d!460446 (= lt!537654 lt!537658)))

(declare-fun lt!537657 () List!16847)

(declare-fun lt!537655 () Int)

(assert (=> d!460446 (= (sizeTr!49 lt!537657 lt!537655) (+ (size!13577 lt!537657) lt!537655))))

(declare-fun lemmaSizeTrEqualsSize!49 (List!16847 Int) Unit!26027)

(assert (=> d!460446 (= lt!537658 (lemmaSizeTrEqualsSize!49 lt!537657 lt!537655))))

(assert (=> d!460446 (= lt!537655 0)))

(assert (=> d!460446 (= lt!537657 Nil!16779)))

(declare-fun lt!537659 () Unit!26027)

(declare-fun lt!537656 () Unit!26027)

(assert (=> d!460446 (= lt!537659 lt!537656)))

(declare-fun lt!537653 () Int)

(assert (=> d!460446 (= (sizeTr!49 lt!537496 lt!537653) (+ (size!13577 lt!537496) lt!537653))))

(assert (=> d!460446 (= lt!537656 (lemmaSizeTrEqualsSize!49 lt!537496 lt!537653))))

(assert (=> d!460446 (= lt!537653 0)))

(assert (=> d!460446 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460446 (= (findLongestMatch!258 (regex!2941 rule!240) lt!537496) lt!537652)))

(declare-fun bs!387142 () Bool)

(assert (= bs!387142 d!460446))

(declare-fun m!1824453 () Bool)

(assert (=> bs!387142 m!1824453))

(assert (=> bs!387142 m!1823997))

(declare-fun m!1824455 () Bool)

(assert (=> bs!387142 m!1824455))

(assert (=> bs!387142 m!1824453))

(declare-fun m!1824457 () Bool)

(assert (=> bs!387142 m!1824457))

(declare-fun m!1824459 () Bool)

(assert (=> bs!387142 m!1824459))

(declare-fun m!1824461 () Bool)

(assert (=> bs!387142 m!1824461))

(declare-fun m!1824463 () Bool)

(assert (=> bs!387142 m!1824463))

(declare-fun m!1824465 () Bool)

(assert (=> bs!387142 m!1824465))

(declare-fun m!1824467 () Bool)

(assert (=> bs!387142 m!1824467))

(assert (=> bs!387142 m!1824163))

(assert (=> d!460336 d!460446))

(assert (=> d!460336 d!460370))

(declare-fun d!460448 () Bool)

(declare-fun c!252387 () Bool)

(assert (=> d!460448 (= c!252387 ((_ is Node!5559) (left!13648 (c!252328 input!1676))))))

(declare-fun e!995493 () Bool)

(assert (=> d!460448 (= (inv!22046 (left!13648 (c!252328 input!1676))) e!995493)))

(declare-fun b!1552025 () Bool)

(assert (=> b!1552025 (= e!995493 (inv!22051 (left!13648 (c!252328 input!1676))))))

(declare-fun b!1552026 () Bool)

(declare-fun e!995494 () Bool)

(assert (=> b!1552026 (= e!995493 e!995494)))

(declare-fun res!693351 () Bool)

(assert (=> b!1552026 (= res!693351 (not ((_ is Leaf!8239) (left!13648 (c!252328 input!1676)))))))

(assert (=> b!1552026 (=> res!693351 e!995494)))

(declare-fun b!1552027 () Bool)

(assert (=> b!1552027 (= e!995494 (inv!22052 (left!13648 (c!252328 input!1676))))))

(assert (= (and d!460448 c!252387) b!1552025))

(assert (= (and d!460448 (not c!252387)) b!1552026))

(assert (= (and b!1552026 (not res!693351)) b!1552027))

(declare-fun m!1824469 () Bool)

(assert (=> b!1552025 m!1824469))

(declare-fun m!1824471 () Bool)

(assert (=> b!1552027 m!1824471))

(assert (=> b!1551890 d!460448))

(declare-fun d!460450 () Bool)

(declare-fun c!252388 () Bool)

(assert (=> d!460450 (= c!252388 ((_ is Node!5559) (right!13978 (c!252328 input!1676))))))

(declare-fun e!995495 () Bool)

(assert (=> d!460450 (= (inv!22046 (right!13978 (c!252328 input!1676))) e!995495)))

(declare-fun b!1552028 () Bool)

(assert (=> b!1552028 (= e!995495 (inv!22051 (right!13978 (c!252328 input!1676))))))

(declare-fun b!1552029 () Bool)

(declare-fun e!995496 () Bool)

(assert (=> b!1552029 (= e!995495 e!995496)))

(declare-fun res!693352 () Bool)

(assert (=> b!1552029 (= res!693352 (not ((_ is Leaf!8239) (right!13978 (c!252328 input!1676)))))))

(assert (=> b!1552029 (=> res!693352 e!995496)))

(declare-fun b!1552030 () Bool)

(assert (=> b!1552030 (= e!995496 (inv!22052 (right!13978 (c!252328 input!1676))))))

(assert (= (and d!460450 c!252388) b!1552028))

(assert (= (and d!460450 (not c!252388)) b!1552029))

(assert (= (and b!1552029 (not res!693352)) b!1552030))

(declare-fun m!1824473 () Bool)

(assert (=> b!1552028 m!1824473))

(declare-fun m!1824475 () Bool)

(assert (=> b!1552030 m!1824475))

(assert (=> b!1551890 d!460450))

(declare-fun d!460452 () Bool)

(assert (=> d!460452 (= (isEmpty!10094 (tail!2205 (_1!9424 lt!537499))) ((_ is Nil!16779) (tail!2205 (_1!9424 lt!537499))))))

(assert (=> b!1551759 d!460452))

(declare-fun d!460454 () Bool)

(assert (=> d!460454 (= (tail!2205 (_1!9424 lt!537499)) (t!141250 (_1!9424 lt!537499)))))

(assert (=> b!1551759 d!460454))

(declare-fun b!1552031 () Bool)

(declare-fun res!693354 () Bool)

(declare-fun e!995498 () Bool)

(assert (=> b!1552031 (=> (not res!693354) (not e!995498))))

(assert (=> b!1552031 (= res!693354 (isBalanced!1640 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(declare-fun b!1552032 () Bool)

(declare-fun res!693355 () Bool)

(assert (=> b!1552032 (=> (not res!693355) (not e!995498))))

(assert (=> b!1552032 (= res!693355 (<= (- (height!827 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) (height!827 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) 1))))

(declare-fun b!1552033 () Bool)

(declare-fun e!995497 () Bool)

(assert (=> b!1552033 (= e!995497 e!995498)))

(declare-fun res!693358 () Bool)

(assert (=> b!1552033 (=> (not res!693358) (not e!995498))))

(assert (=> b!1552033 (= res!693358 (<= (- 1) (- (height!827 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) (height!827 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))))

(declare-fun b!1552034 () Bool)

(declare-fun res!693356 () Bool)

(assert (=> b!1552034 (=> (not res!693356) (not e!995498))))

(assert (=> b!1552034 (= res!693356 (not (isEmpty!10098 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))))

(declare-fun b!1552035 () Bool)

(declare-fun res!693353 () Bool)

(assert (=> b!1552035 (=> (not res!693353) (not e!995498))))

(assert (=> b!1552035 (= res!693353 (isBalanced!1640 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(declare-fun b!1552036 () Bool)

(assert (=> b!1552036 (= e!995498 (not (isEmpty!10098 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))))

(declare-fun d!460456 () Bool)

(declare-fun res!693357 () Bool)

(assert (=> d!460456 (=> res!693357 e!995497)))

(assert (=> d!460456 (= res!693357 (not ((_ is Node!5559) (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(assert (=> d!460456 (= (isBalanced!1640 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) e!995497)))

(assert (= (and d!460456 (not res!693357)) b!1552033))

(assert (= (and b!1552033 res!693358) b!1552032))

(assert (= (and b!1552032 res!693355) b!1552035))

(assert (= (and b!1552035 res!693353) b!1552031))

(assert (= (and b!1552031 res!693354) b!1552034))

(assert (= (and b!1552034 res!693356) b!1552036))

(declare-fun m!1824477 () Bool)

(assert (=> b!1552034 m!1824477))

(declare-fun m!1824479 () Bool)

(assert (=> b!1552032 m!1824479))

(declare-fun m!1824481 () Bool)

(assert (=> b!1552032 m!1824481))

(declare-fun m!1824483 () Bool)

(assert (=> b!1552035 m!1824483))

(declare-fun m!1824485 () Bool)

(assert (=> b!1552031 m!1824485))

(assert (=> b!1552033 m!1824479))

(assert (=> b!1552033 m!1824481))

(declare-fun m!1824487 () Bool)

(assert (=> b!1552036 m!1824487))

(assert (=> d!460382 d!460456))

(declare-fun bs!387143 () Bool)

(declare-fun d!460458 () Bool)

(assert (= bs!387143 (and d!460458 d!460408)))

(declare-fun lambda!65679 () Int)

(assert (=> bs!387143 (= lambda!65679 lambda!65675)))

(declare-fun bs!387144 () Bool)

(assert (= bs!387144 (and d!460458 d!460424)))

(assert (=> bs!387144 (= lambda!65679 lambda!65676)))

(declare-fun bs!387145 () Bool)

(assert (= bs!387145 (and d!460458 d!460428)))

(assert (=> bs!387145 (= lambda!65679 lambda!65677)))

(declare-fun bs!387146 () Bool)

(assert (= bs!387146 (and d!460458 d!460438)))

(assert (=> bs!387146 (= lambda!65679 lambda!65678)))

(assert (=> d!460458 (= (inv!22053 (_1!9418 (_1!9419 (h!22182 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))) (forall!3917 (exprs!1287 (_1!9418 (_1!9419 (h!22182 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))) lambda!65679))))

(declare-fun bs!387147 () Bool)

(assert (= bs!387147 d!460458))

(declare-fun m!1824489 () Bool)

(assert (=> bs!387147 m!1824489))

(assert (=> b!1551819 d!460458))

(declare-fun bs!387148 () Bool)

(declare-fun d!460460 () Bool)

(assert (= bs!387148 (and d!460460 d!460458)))

(declare-fun lambda!65680 () Int)

(assert (=> bs!387148 (= lambda!65680 lambda!65679)))

(declare-fun bs!387149 () Bool)

(assert (= bs!387149 (and d!460460 d!460438)))

(assert (=> bs!387149 (= lambda!65680 lambda!65678)))

(declare-fun bs!387150 () Bool)

(assert (= bs!387150 (and d!460460 d!460424)))

(assert (=> bs!387150 (= lambda!65680 lambda!65676)))

(declare-fun bs!387151 () Bool)

(assert (= bs!387151 (and d!460460 d!460408)))

(assert (=> bs!387151 (= lambda!65680 lambda!65675)))

(declare-fun bs!387152 () Bool)

(assert (= bs!387152 (and d!460460 d!460428)))

(assert (=> bs!387152 (= lambda!65680 lambda!65677)))

(assert (=> d!460460 (= (inv!22053 setElem!10617) (forall!3917 (exprs!1287 setElem!10617) lambda!65680))))

(declare-fun bs!387153 () Bool)

(assert (= bs!387153 d!460460))

(declare-fun m!1824491 () Bool)

(assert (=> bs!387153 m!1824491))

(assert (=> setNonEmpty!10617 d!460460))

(declare-fun b!1552045 () Bool)

(declare-fun e!995506 () Bool)

(declare-fun e!995505 () Bool)

(assert (=> b!1552045 (= e!995506 e!995505)))

(declare-fun res!693368 () Bool)

(assert (=> b!1552045 (=> (not res!693368) (not e!995505))))

(assert (=> b!1552045 (= res!693368 (not ((_ is Nil!16779) lt!537496)))))

(declare-fun b!1552048 () Bool)

(declare-fun e!995507 () Bool)

(assert (=> b!1552048 (= e!995507 (>= (size!13577 lt!537496) (size!13577 lt!537496)))))

(declare-fun b!1552046 () Bool)

(declare-fun res!693370 () Bool)

(assert (=> b!1552046 (=> (not res!693370) (not e!995505))))

(assert (=> b!1552046 (= res!693370 (= (head!3110 lt!537496) (head!3110 lt!537496)))))

(declare-fun d!460462 () Bool)

(assert (=> d!460462 e!995507))

(declare-fun res!693367 () Bool)

(assert (=> d!460462 (=> res!693367 e!995507)))

(declare-fun lt!537662 () Bool)

(assert (=> d!460462 (= res!693367 (not lt!537662))))

(assert (=> d!460462 (= lt!537662 e!995506)))

(declare-fun res!693369 () Bool)

(assert (=> d!460462 (=> res!693369 e!995506)))

(assert (=> d!460462 (= res!693369 ((_ is Nil!16779) lt!537496))))

(assert (=> d!460462 (= (isPrefix!1257 lt!537496 lt!537496) lt!537662)))

(declare-fun b!1552047 () Bool)

(assert (=> b!1552047 (= e!995505 (isPrefix!1257 (tail!2205 lt!537496) (tail!2205 lt!537496)))))

(assert (= (and d!460462 (not res!693369)) b!1552045))

(assert (= (and b!1552045 res!693368) b!1552046))

(assert (= (and b!1552046 res!693370) b!1552047))

(assert (= (and d!460462 (not res!693367)) b!1552048))

(assert (=> b!1552048 m!1823997))

(assert (=> b!1552048 m!1823997))

(assert (=> b!1552046 m!1824193))

(assert (=> b!1552046 m!1824193))

(assert (=> b!1552047 m!1824195))

(assert (=> b!1552047 m!1824195))

(assert (=> b!1552047 m!1824195))

(assert (=> b!1552047 m!1824195))

(declare-fun m!1824493 () Bool)

(assert (=> b!1552047 m!1824493))

(assert (=> bm!101825 d!460462))

(declare-fun bs!387154 () Bool)

(declare-fun d!460464 () Bool)

(assert (= bs!387154 (and d!460464 d!460458)))

(declare-fun lambda!65681 () Int)

(assert (=> bs!387154 (= lambda!65681 lambda!65679)))

(declare-fun bs!387155 () Bool)

(assert (= bs!387155 (and d!460464 d!460438)))

(assert (=> bs!387155 (= lambda!65681 lambda!65678)))

(declare-fun bs!387156 () Bool)

(assert (= bs!387156 (and d!460464 d!460424)))

(assert (=> bs!387156 (= lambda!65681 lambda!65676)))

(declare-fun bs!387157 () Bool)

(assert (= bs!387157 (and d!460464 d!460408)))

(assert (=> bs!387157 (= lambda!65681 lambda!65675)))

(declare-fun bs!387158 () Bool)

(assert (= bs!387158 (and d!460464 d!460460)))

(assert (=> bs!387158 (= lambda!65681 lambda!65680)))

(declare-fun bs!387159 () Bool)

(assert (= bs!387159 (and d!460464 d!460428)))

(assert (=> bs!387159 (= lambda!65681 lambda!65677)))

(assert (=> d!460464 (= (inv!22053 (_2!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))) (forall!3917 (exprs!1287 (_2!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))) lambda!65681))))

(declare-fun bs!387160 () Bool)

(assert (= bs!387160 d!460464))

(declare-fun m!1824495 () Bool)

(assert (=> bs!387160 m!1824495))

(assert (=> b!1551862 d!460464))

(declare-fun bs!387161 () Bool)

(declare-fun d!460466 () Bool)

(assert (= bs!387161 (and d!460466 d!460458)))

(declare-fun lambda!65682 () Int)

(assert (=> bs!387161 (= lambda!65682 lambda!65679)))

(declare-fun bs!387162 () Bool)

(assert (= bs!387162 (and d!460466 d!460464)))

(assert (=> bs!387162 (= lambda!65682 lambda!65681)))

(declare-fun bs!387163 () Bool)

(assert (= bs!387163 (and d!460466 d!460438)))

(assert (=> bs!387163 (= lambda!65682 lambda!65678)))

(declare-fun bs!387164 () Bool)

(assert (= bs!387164 (and d!460466 d!460424)))

(assert (=> bs!387164 (= lambda!65682 lambda!65676)))

(declare-fun bs!387165 () Bool)

(assert (= bs!387165 (and d!460466 d!460408)))

(assert (=> bs!387165 (= lambda!65682 lambda!65675)))

(declare-fun bs!387166 () Bool)

(assert (= bs!387166 (and d!460466 d!460460)))

(assert (=> bs!387166 (= lambda!65682 lambda!65680)))

(declare-fun bs!387167 () Bool)

(assert (= bs!387167 (and d!460466 d!460428)))

(assert (=> bs!387167 (= lambda!65682 lambda!65677)))

(assert (=> d!460466 (= (inv!22053 (_2!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))) (forall!3917 (exprs!1287 (_2!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))) lambda!65682))))

(declare-fun bs!387168 () Bool)

(assert (= bs!387168 d!460466))

(declare-fun m!1824497 () Bool)

(assert (=> bs!387168 m!1824497))

(assert (=> b!1551865 d!460466))

(declare-fun bs!387169 () Bool)

(declare-fun d!460468 () Bool)

(assert (= bs!387169 (and d!460468 d!460458)))

(declare-fun lambda!65683 () Int)

(assert (=> bs!387169 (= lambda!65683 lambda!65679)))

(declare-fun bs!387170 () Bool)

(assert (= bs!387170 (and d!460468 d!460464)))

(assert (=> bs!387170 (= lambda!65683 lambda!65681)))

(declare-fun bs!387171 () Bool)

(assert (= bs!387171 (and d!460468 d!460438)))

(assert (=> bs!387171 (= lambda!65683 lambda!65678)))

(declare-fun bs!387172 () Bool)

(assert (= bs!387172 (and d!460468 d!460424)))

(assert (=> bs!387172 (= lambda!65683 lambda!65676)))

(declare-fun bs!387173 () Bool)

(assert (= bs!387173 (and d!460468 d!460408)))

(assert (=> bs!387173 (= lambda!65683 lambda!65675)))

(declare-fun bs!387174 () Bool)

(assert (= bs!387174 (and d!460468 d!460460)))

(assert (=> bs!387174 (= lambda!65683 lambda!65680)))

(declare-fun bs!387175 () Bool)

(assert (= bs!387175 (and d!460468 d!460466)))

(assert (=> bs!387175 (= lambda!65683 lambda!65682)))

(declare-fun bs!387176 () Bool)

(assert (= bs!387176 (and d!460468 d!460428)))

(assert (=> bs!387176 (= lambda!65683 lambda!65677)))

(assert (=> d!460468 (= (inv!22053 setElem!10607) (forall!3917 (exprs!1287 setElem!10607) lambda!65683))))

(declare-fun bs!387177 () Bool)

(assert (= bs!387177 d!460468))

(declare-fun m!1824499 () Bool)

(assert (=> bs!387177 m!1824499))

(assert (=> setNonEmpty!10607 d!460468))

(declare-fun d!460470 () Bool)

(assert (=> d!460470 (= (inv!22054 (xs!8359 (c!252328 totalInput!568))) (<= (size!13577 (innerList!5619 (xs!8359 (c!252328 totalInput!568)))) 2147483647))))

(declare-fun bs!387178 () Bool)

(assert (= bs!387178 d!460470))

(declare-fun m!1824501 () Bool)

(assert (=> bs!387178 m!1824501))

(assert (=> b!1551897 d!460470))

(declare-fun d!460472 () Bool)

(assert (=> d!460472 (= (list!6482 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))) (list!6483 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))))

(declare-fun bs!387179 () Bool)

(assert (= bs!387179 d!460472))

(declare-fun m!1824503 () Bool)

(assert (=> bs!387179 m!1824503))

(assert (=> bs!387127 d!460472))

(assert (=> bs!387127 d!460346))

(declare-fun d!460474 () Bool)

(assert (=> d!460474 true))

(declare-fun order!9859 () Int)

(declare-fun lambda!65686 () Int)

(declare-fun dynLambda!7427 (Int Int) Int)

(assert (=> d!460474 (< (dynLambda!7421 order!9853 (toValue!4306 (transformation!2941 rule!240))) (dynLambda!7427 order!9859 lambda!65686))))

(declare-fun Forall2!488 (Int) Bool)

(assert (=> d!460474 (= (equivClasses!1053 (toChars!4165 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))) (Forall2!488 lambda!65686))))

(declare-fun bs!387180 () Bool)

(assert (= bs!387180 d!460474))

(declare-fun m!1824505 () Bool)

(assert (=> bs!387180 m!1824505))

(assert (=> b!1551647 d!460474))

(declare-fun d!460476 () Bool)

(assert (=> d!460476 (= (isEmpty!10094 (_1!9424 lt!537617)) ((_ is Nil!16779) (_1!9424 lt!537617)))))

(assert (=> b!1551692 d!460476))

(assert (=> b!1551594 d!460400))

(declare-fun d!460478 () Bool)

(assert (=> d!460478 (dynLambda!7424 lambda!65669 (seqFromList!1769 lt!537498))))

(assert (=> d!460478 true))

(declare-fun _$1!9951 () Unit!26027)

(assert (=> d!460478 (= (choose!9248 lambda!65669 (seqFromList!1769 lt!537498)) _$1!9951)))

(declare-fun b_lambda!48699 () Bool)

(assert (=> (not b_lambda!48699) (not d!460478)))

(declare-fun bs!387181 () Bool)

(assert (= bs!387181 d!460478))

(assert (=> bs!387181 m!1824027))

(assert (=> bs!387181 m!1824097))

(assert (=> d!460330 d!460478))

(assert (=> d!460330 d!460392))

(declare-fun d!460480 () Bool)

(declare-fun res!693377 () Bool)

(declare-fun e!995512 () Bool)

(assert (=> d!460480 (=> (not res!693377) (not e!995512))))

(declare-fun valid!1428 (MutableMap!1723) Bool)

(assert (=> d!460480 (= res!693377 (valid!1428 (cache!2104 cacheUp!755)))))

(assert (=> d!460480 (= (validCacheMapUp!158 (cache!2104 cacheUp!755)) e!995512)))

(declare-fun b!1552057 () Bool)

(declare-fun res!693378 () Bool)

(assert (=> b!1552057 (=> (not res!693378) (not e!995512))))

(declare-fun invariantList!241 (List!16849) Bool)

(declare-datatypes ((ListMap!531 0))(
  ( (ListMap!532 (toList!850 List!16849)) )
))
(declare-fun map!3513 (MutableMap!1723) ListMap!531)

(assert (=> b!1552057 (= res!693378 (invariantList!241 (toList!850 (map!3513 (cache!2104 cacheUp!755)))))))

(declare-fun b!1552058 () Bool)

(declare-fun lambda!65689 () Int)

(declare-fun forall!3918 (List!16849 Int) Bool)

(assert (=> b!1552058 (= e!995512 (forall!3918 (toList!850 (map!3513 (cache!2104 cacheUp!755))) lambda!65689))))

(assert (= (and d!460480 res!693377) b!1552057))

(assert (= (and b!1552057 res!693378) b!1552058))

(declare-fun m!1824508 () Bool)

(assert (=> d!460480 m!1824508))

(declare-fun m!1824510 () Bool)

(assert (=> b!1552057 m!1824510))

(declare-fun m!1824512 () Bool)

(assert (=> b!1552057 m!1824512))

(assert (=> b!1552058 m!1824510))

(declare-fun m!1824514 () Bool)

(assert (=> b!1552058 m!1824514))

(assert (=> d!460374 d!460480))

(assert (=> b!1551766 d!460452))

(assert (=> b!1551766 d!460454))

(assert (=> b!1551634 d!460422))

(declare-fun bs!387182 () Bool)

(declare-fun d!460482 () Bool)

(assert (= bs!387182 (and d!460482 d!460458)))

(declare-fun lambda!65690 () Int)

(assert (=> bs!387182 (= lambda!65690 lambda!65679)))

(declare-fun bs!387183 () Bool)

(assert (= bs!387183 (and d!460482 d!460464)))

(assert (=> bs!387183 (= lambda!65690 lambda!65681)))

(declare-fun bs!387184 () Bool)

(assert (= bs!387184 (and d!460482 d!460468)))

(assert (=> bs!387184 (= lambda!65690 lambda!65683)))

(declare-fun bs!387185 () Bool)

(assert (= bs!387185 (and d!460482 d!460438)))

(assert (=> bs!387185 (= lambda!65690 lambda!65678)))

(declare-fun bs!387186 () Bool)

(assert (= bs!387186 (and d!460482 d!460424)))

(assert (=> bs!387186 (= lambda!65690 lambda!65676)))

(declare-fun bs!387187 () Bool)

(assert (= bs!387187 (and d!460482 d!460408)))

(assert (=> bs!387187 (= lambda!65690 lambda!65675)))

(declare-fun bs!387188 () Bool)

(assert (= bs!387188 (and d!460482 d!460460)))

(assert (=> bs!387188 (= lambda!65690 lambda!65680)))

(declare-fun bs!387189 () Bool)

(assert (= bs!387189 (and d!460482 d!460466)))

(assert (=> bs!387189 (= lambda!65690 lambda!65682)))

(declare-fun bs!387190 () Bool)

(assert (= bs!387190 (and d!460482 d!460428)))

(assert (=> bs!387190 (= lambda!65690 lambda!65677)))

(assert (=> d!460482 (= (inv!22053 (_1!9418 (_1!9419 (h!22182 mapValue!8249)))) (forall!3917 (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapValue!8249)))) lambda!65690))))

(declare-fun bs!387191 () Bool)

(assert (= bs!387191 d!460482))

(declare-fun m!1824516 () Bool)

(assert (=> bs!387191 m!1824516))

(assert (=> b!1551851 d!460482))

(declare-fun d!460484 () Bool)

(assert (=> d!460484 (= (valid!1427 (_2!9426 lt!537623)) (validCacheMapUp!158 (cache!2104 (_2!9426 lt!537623))))))

(declare-fun bs!387192 () Bool)

(assert (= bs!387192 d!460484))

(declare-fun m!1824518 () Bool)

(assert (=> bs!387192 m!1824518))

(assert (=> b!1551723 d!460484))

(declare-fun d!460486 () Bool)

(assert (=> d!460486 (= (isEmpty!10097 (Some!3025 (tuple2!16205 (Token!5465 (apply!4105 (transformation!2941 rule!240) (_1!9425 (_1!9426 lt!537493))) rule!240 (size!13579 (_1!9425 (_1!9426 lt!537493))) lt!537498) (_2!9425 (_1!9426 lt!537493))))) (not ((_ is Some!3025) (Some!3025 (tuple2!16205 (Token!5465 (apply!4105 (transformation!2941 rule!240) (_1!9425 (_1!9426 lt!537493))) rule!240 (size!13579 (_1!9425 (_1!9426 lt!537493))) lt!537498) (_2!9425 (_1!9426 lt!537493)))))))))

(assert (=> d!460338 d!460486))

(assert (=> b!1551638 d!460436))

(assert (=> b!1551638 d!460358))

(assert (=> b!1551638 d!460354))

(assert (=> b!1551638 d!460352))

(declare-fun bs!387193 () Bool)

(declare-fun d!460488 () Bool)

(assert (= bs!387193 (and d!460488 d!460458)))

(declare-fun lambda!65691 () Int)

(assert (=> bs!387193 (= lambda!65691 lambda!65679)))

(declare-fun bs!387194 () Bool)

(assert (= bs!387194 (and d!460488 d!460464)))

(assert (=> bs!387194 (= lambda!65691 lambda!65681)))

(declare-fun bs!387195 () Bool)

(assert (= bs!387195 (and d!460488 d!460468)))

(assert (=> bs!387195 (= lambda!65691 lambda!65683)))

(declare-fun bs!387196 () Bool)

(assert (= bs!387196 (and d!460488 d!460438)))

(assert (=> bs!387196 (= lambda!65691 lambda!65678)))

(declare-fun bs!387197 () Bool)

(assert (= bs!387197 (and d!460488 d!460424)))

(assert (=> bs!387197 (= lambda!65691 lambda!65676)))

(declare-fun bs!387198 () Bool)

(assert (= bs!387198 (and d!460488 d!460482)))

(assert (=> bs!387198 (= lambda!65691 lambda!65690)))

(declare-fun bs!387199 () Bool)

(assert (= bs!387199 (and d!460488 d!460408)))

(assert (=> bs!387199 (= lambda!65691 lambda!65675)))

(declare-fun bs!387200 () Bool)

(assert (= bs!387200 (and d!460488 d!460460)))

(assert (=> bs!387200 (= lambda!65691 lambda!65680)))

(declare-fun bs!387201 () Bool)

(assert (= bs!387201 (and d!460488 d!460466)))

(assert (=> bs!387201 (= lambda!65691 lambda!65682)))

(declare-fun bs!387202 () Bool)

(assert (= bs!387202 (and d!460488 d!460428)))

(assert (=> bs!387202 (= lambda!65691 lambda!65677)))

(assert (=> d!460488 (= (inv!22053 (_1!9418 (_1!9419 (h!22182 mapValue!8246)))) (forall!3917 (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapValue!8246)))) lambda!65691))))

(declare-fun bs!387203 () Bool)

(assert (= bs!387203 d!460488))

(declare-fun m!1824520 () Bool)

(assert (=> bs!387203 m!1824520))

(assert (=> b!1551853 d!460488))

(declare-fun b!1552067 () Bool)

(declare-fun e!995517 () List!16847)

(assert (=> b!1552067 (= e!995517 Nil!16779)))

(declare-fun b!1552070 () Bool)

(declare-fun e!995518 () List!16847)

(assert (=> b!1552070 (= e!995518 (++!4411 (list!6483 (left!13648 (c!252328 totalInput!568))) (list!6483 (right!13978 (c!252328 totalInput!568)))))))

(declare-fun d!460490 () Bool)

(declare-fun c!252393 () Bool)

(assert (=> d!460490 (= c!252393 ((_ is Empty!5559) (c!252328 totalInput!568)))))

(assert (=> d!460490 (= (list!6483 (c!252328 totalInput!568)) e!995517)))

(declare-fun b!1552069 () Bool)

(assert (=> b!1552069 (= e!995518 (list!6484 (xs!8359 (c!252328 totalInput!568))))))

(declare-fun b!1552068 () Bool)

(assert (=> b!1552068 (= e!995517 e!995518)))

(declare-fun c!252394 () Bool)

(assert (=> b!1552068 (= c!252394 ((_ is Leaf!8239) (c!252328 totalInput!568)))))

(assert (= (and d!460490 c!252393) b!1552067))

(assert (= (and d!460490 (not c!252393)) b!1552068))

(assert (= (and b!1552068 c!252394) b!1552069))

(assert (= (and b!1552068 (not c!252394)) b!1552070))

(declare-fun m!1824522 () Bool)

(assert (=> b!1552070 m!1824522))

(declare-fun m!1824524 () Bool)

(assert (=> b!1552070 m!1824524))

(assert (=> b!1552070 m!1824522))

(assert (=> b!1552070 m!1824524))

(declare-fun m!1824526 () Bool)

(assert (=> b!1552070 m!1824526))

(declare-fun m!1824528 () Bool)

(assert (=> b!1552069 m!1824528))

(assert (=> d!460326 d!460490))

(declare-fun d!460492 () Bool)

(declare-fun res!693385 () Bool)

(declare-fun e!995523 () Bool)

(assert (=> d!460492 (=> (not res!693385) (not e!995523))))

(declare-fun valid!1429 (MutableMap!1725) Bool)

(assert (=> d!460492 (= res!693385 (valid!1429 (cache!2106 cacheDown!768)))))

(assert (=> d!460492 (= (validCacheMapDown!158 (cache!2106 cacheDown!768)) e!995523)))

(declare-fun b!1552077 () Bool)

(declare-fun res!693386 () Bool)

(assert (=> b!1552077 (=> (not res!693386) (not e!995523))))

(declare-fun invariantList!242 (List!16851) Bool)

(declare-datatypes ((ListMap!533 0))(
  ( (ListMap!534 (toList!851 List!16851)) )
))
(declare-fun map!3514 (MutableMap!1725) ListMap!533)

(assert (=> b!1552077 (= res!693386 (invariantList!242 (toList!851 (map!3514 (cache!2106 cacheDown!768)))))))

(declare-fun b!1552078 () Bool)

(declare-fun lambda!65694 () Int)

(declare-fun forall!3919 (List!16851 Int) Bool)

(assert (=> b!1552078 (= e!995523 (forall!3919 (toList!851 (map!3514 (cache!2106 cacheDown!768))) lambda!65694))))

(assert (= (and d!460492 res!693385) b!1552077))

(assert (= (and b!1552077 res!693386) b!1552078))

(declare-fun m!1824531 () Bool)

(assert (=> d!460492 m!1824531))

(declare-fun m!1824533 () Bool)

(assert (=> b!1552077 m!1824533))

(declare-fun m!1824535 () Bool)

(assert (=> b!1552077 m!1824535))

(assert (=> b!1552078 m!1824533))

(declare-fun m!1824537 () Bool)

(assert (=> b!1552078 m!1824537))

(assert (=> b!1551606 d!460492))

(assert (=> b!1551642 d!460422))

(declare-fun d!460494 () Bool)

(declare-fun lt!537663 () Int)

(assert (=> d!460494 (>= lt!537663 0)))

(declare-fun e!995524 () Int)

(assert (=> d!460494 (= lt!537663 e!995524)))

(declare-fun c!252395 () Bool)

(assert (=> d!460494 (= c!252395 ((_ is Nil!16779) (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))))))

(assert (=> d!460494 (= (size!13577 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))) lt!537663)))

(declare-fun b!1552079 () Bool)

(assert (=> b!1552079 (= e!995524 0)))

(declare-fun b!1552080 () Bool)

(assert (=> b!1552080 (= e!995524 (+ 1 (size!13577 (t!141250 (originalCharacters!3763 (_1!9428 (get!4841 lt!537519)))))))))

(assert (= (and d!460494 c!252395) b!1552079))

(assert (= (and d!460494 (not c!252395)) b!1552080))

(declare-fun m!1824539 () Bool)

(assert (=> b!1552080 m!1824539))

(assert (=> b!1551642 d!460494))

(declare-fun d!460496 () Bool)

(assert (=> d!460496 (= (head!3110 (_1!9424 lt!537499)) (h!22180 (_1!9424 lt!537499)))))

(assert (=> b!1551754 d!460496))

(declare-fun d!460498 () Bool)

(declare-fun c!252396 () Bool)

(assert (=> d!460498 (= c!252396 ((_ is Node!5559) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))))

(declare-fun e!995525 () Bool)

(assert (=> d!460498 (= (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))) e!995525)))

(declare-fun b!1552081 () Bool)

(assert (=> b!1552081 (= e!995525 (inv!22051 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))))

(declare-fun b!1552082 () Bool)

(declare-fun e!995526 () Bool)

(assert (=> b!1552082 (= e!995525 e!995526)))

(declare-fun res!693387 () Bool)

(assert (=> b!1552082 (= res!693387 (not ((_ is Leaf!8239) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))))))

(assert (=> b!1552082 (=> res!693387 e!995526)))

(declare-fun b!1552083 () Bool)

(assert (=> b!1552083 (= e!995526 (inv!22052 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))))

(assert (= (and d!460498 c!252396) b!1552081))

(assert (= (and d!460498 (not c!252396)) b!1552082))

(assert (= (and b!1552082 (not res!693387)) b!1552083))

(declare-fun m!1824541 () Bool)

(assert (=> b!1552081 m!1824541))

(declare-fun m!1824543 () Bool)

(assert (=> b!1552083 m!1824543))

(assert (=> b!1551926 d!460498))

(declare-fun bs!387204 () Bool)

(declare-fun d!460500 () Bool)

(assert (= bs!387204 (and d!460500 d!460458)))

(declare-fun lambda!65695 () Int)

(assert (=> bs!387204 (= lambda!65695 lambda!65679)))

(declare-fun bs!387205 () Bool)

(assert (= bs!387205 (and d!460500 d!460464)))

(assert (=> bs!387205 (= lambda!65695 lambda!65681)))

(declare-fun bs!387206 () Bool)

(assert (= bs!387206 (and d!460500 d!460468)))

(assert (=> bs!387206 (= lambda!65695 lambda!65683)))

(declare-fun bs!387207 () Bool)

(assert (= bs!387207 (and d!460500 d!460438)))

(assert (=> bs!387207 (= lambda!65695 lambda!65678)))

(declare-fun bs!387208 () Bool)

(assert (= bs!387208 (and d!460500 d!460424)))

(assert (=> bs!387208 (= lambda!65695 lambda!65676)))

(declare-fun bs!387209 () Bool)

(assert (= bs!387209 (and d!460500 d!460482)))

(assert (=> bs!387209 (= lambda!65695 lambda!65690)))

(declare-fun bs!387210 () Bool)

(assert (= bs!387210 (and d!460500 d!460408)))

(assert (=> bs!387210 (= lambda!65695 lambda!65675)))

(declare-fun bs!387211 () Bool)

(assert (= bs!387211 (and d!460500 d!460460)))

(assert (=> bs!387211 (= lambda!65695 lambda!65680)))

(declare-fun bs!387212 () Bool)

(assert (= bs!387212 (and d!460500 d!460466)))

(assert (=> bs!387212 (= lambda!65695 lambda!65682)))

(declare-fun bs!387213 () Bool)

(assert (= bs!387213 (and d!460500 d!460488)))

(assert (=> bs!387213 (= lambda!65695 lambda!65691)))

(declare-fun bs!387214 () Bool)

(assert (= bs!387214 (and d!460500 d!460428)))

(assert (=> bs!387214 (= lambda!65695 lambda!65677)))

(assert (=> d!460500 (= (inv!22053 (_2!9422 (_1!9423 (h!22184 mapDefault!8244)))) (forall!3917 (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapDefault!8244)))) lambda!65695))))

(declare-fun bs!387215 () Bool)

(assert (= bs!387215 d!460500))

(declare-fun m!1824545 () Bool)

(assert (=> bs!387215 m!1824545))

(assert (=> b!1551793 d!460500))

(declare-fun d!460502 () Bool)

(declare-fun res!693388 () Bool)

(declare-fun e!995527 () Bool)

(assert (=> d!460502 (=> (not res!693388) (not e!995527))))

(assert (=> d!460502 (= res!693388 (<= (size!13577 (list!6484 (xs!8359 (c!252328 totalInput!568)))) 512))))

(assert (=> d!460502 (= (inv!22052 (c!252328 totalInput!568)) e!995527)))

(declare-fun b!1552084 () Bool)

(declare-fun res!693389 () Bool)

(assert (=> b!1552084 (=> (not res!693389) (not e!995527))))

(assert (=> b!1552084 (= res!693389 (= (csize!11349 (c!252328 totalInput!568)) (size!13577 (list!6484 (xs!8359 (c!252328 totalInput!568))))))))

(declare-fun b!1552085 () Bool)

(assert (=> b!1552085 (= e!995527 (and (> (csize!11349 (c!252328 totalInput!568)) 0) (<= (csize!11349 (c!252328 totalInput!568)) 512)))))

(assert (= (and d!460502 res!693388) b!1552084))

(assert (= (and b!1552084 res!693389) b!1552085))

(assert (=> d!460502 m!1824528))

(assert (=> d!460502 m!1824528))

(declare-fun m!1824547 () Bool)

(assert (=> d!460502 m!1824547))

(assert (=> b!1552084 m!1824528))

(assert (=> b!1552084 m!1824528))

(assert (=> b!1552084 m!1824547))

(assert (=> b!1551782 d!460502))

(declare-fun d!460504 () Bool)

(declare-fun nullableFct!296 (Regex!4269) Bool)

(assert (=> d!460504 (= (nullable!1267 (regex!2941 rule!240)) (nullableFct!296 (regex!2941 rule!240)))))

(declare-fun bs!387216 () Bool)

(assert (= bs!387216 d!460504))

(declare-fun m!1824549 () Bool)

(assert (=> bs!387216 m!1824549))

(assert (=> b!1551712 d!460504))

(declare-fun d!460506 () Bool)

(declare-fun res!693396 () Bool)

(declare-fun e!995530 () Bool)

(assert (=> d!460506 (=> (not res!693396) (not e!995530))))

(assert (=> d!460506 (= res!693396 (= (csize!11348 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) (+ (size!13580 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) (size!13580 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))))

(assert (=> d!460506 (= (inv!22051 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) e!995530)))

(declare-fun b!1552092 () Bool)

(declare-fun res!693397 () Bool)

(assert (=> b!1552092 (=> (not res!693397) (not e!995530))))

(assert (=> b!1552092 (= res!693397 (and (not (= (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) Empty!5559)) (not (= (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) Empty!5559))))))

(declare-fun b!1552093 () Bool)

(declare-fun res!693398 () Bool)

(assert (=> b!1552093 (=> (not res!693398) (not e!995530))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1552093 (= res!693398 (= (cheight!5770 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) (+ (max!0 (height!827 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) (height!827 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) 1)))))

(declare-fun b!1552094 () Bool)

(assert (=> b!1552094 (= e!995530 (<= 0 (cheight!5770 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(assert (= (and d!460506 res!693396) b!1552092))

(assert (= (and b!1552092 res!693397) b!1552093))

(assert (= (and b!1552093 res!693398) b!1552094))

(declare-fun m!1824551 () Bool)

(assert (=> d!460506 m!1824551))

(declare-fun m!1824553 () Bool)

(assert (=> d!460506 m!1824553))

(assert (=> b!1552093 m!1824479))

(assert (=> b!1552093 m!1824481))

(assert (=> b!1552093 m!1824479))

(assert (=> b!1552093 m!1824481))

(declare-fun m!1824555 () Bool)

(assert (=> b!1552093 m!1824555))

(assert (=> b!1551777 d!460506))

(assert (=> d!460364 d!460360))

(declare-fun bs!387217 () Bool)

(declare-fun d!460508 () Bool)

(assert (= bs!387217 (and d!460508 d!460458)))

(declare-fun lambda!65696 () Int)

(assert (=> bs!387217 (= lambda!65696 lambda!65679)))

(declare-fun bs!387218 () Bool)

(assert (= bs!387218 (and d!460508 d!460500)))

(assert (=> bs!387218 (= lambda!65696 lambda!65695)))

(declare-fun bs!387219 () Bool)

(assert (= bs!387219 (and d!460508 d!460464)))

(assert (=> bs!387219 (= lambda!65696 lambda!65681)))

(declare-fun bs!387220 () Bool)

(assert (= bs!387220 (and d!460508 d!460468)))

(assert (=> bs!387220 (= lambda!65696 lambda!65683)))

(declare-fun bs!387221 () Bool)

(assert (= bs!387221 (and d!460508 d!460438)))

(assert (=> bs!387221 (= lambda!65696 lambda!65678)))

(declare-fun bs!387222 () Bool)

(assert (= bs!387222 (and d!460508 d!460424)))

(assert (=> bs!387222 (= lambda!65696 lambda!65676)))

(declare-fun bs!387223 () Bool)

(assert (= bs!387223 (and d!460508 d!460482)))

(assert (=> bs!387223 (= lambda!65696 lambda!65690)))

(declare-fun bs!387224 () Bool)

(assert (= bs!387224 (and d!460508 d!460408)))

(assert (=> bs!387224 (= lambda!65696 lambda!65675)))

(declare-fun bs!387225 () Bool)

(assert (= bs!387225 (and d!460508 d!460460)))

(assert (=> bs!387225 (= lambda!65696 lambda!65680)))

(declare-fun bs!387226 () Bool)

(assert (= bs!387226 (and d!460508 d!460466)))

(assert (=> bs!387226 (= lambda!65696 lambda!65682)))

(declare-fun bs!387227 () Bool)

(assert (= bs!387227 (and d!460508 d!460488)))

(assert (=> bs!387227 (= lambda!65696 lambda!65691)))

(declare-fun bs!387228 () Bool)

(assert (= bs!387228 (and d!460508 d!460428)))

(assert (=> bs!387228 (= lambda!65696 lambda!65677)))

(assert (=> d!460508 (= (inv!22053 (_1!9418 (_1!9419 (h!22182 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))) (forall!3917 (exprs!1287 (_1!9418 (_1!9419 (h!22182 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))) lambda!65696))))

(declare-fun bs!387229 () Bool)

(assert (= bs!387229 d!460508))

(declare-fun m!1824557 () Bool)

(assert (=> bs!387229 m!1824557))

(assert (=> b!1551822 d!460508))

(assert (=> b!1551758 d!460504))

(declare-fun b!1552095 () Bool)

(declare-fun e!995531 () List!16847)

(assert (=> b!1552095 (= e!995531 Nil!16779)))

(declare-fun b!1552098 () Bool)

(declare-fun e!995532 () List!16847)

(assert (=> b!1552098 (= e!995532 (++!4411 (list!6483 (left!13648 (c!252328 input!1676))) (list!6483 (right!13978 (c!252328 input!1676)))))))

(declare-fun d!460510 () Bool)

(declare-fun c!252397 () Bool)

(assert (=> d!460510 (= c!252397 ((_ is Empty!5559) (c!252328 input!1676)))))

(assert (=> d!460510 (= (list!6483 (c!252328 input!1676)) e!995531)))

(declare-fun b!1552097 () Bool)

(assert (=> b!1552097 (= e!995532 (list!6484 (xs!8359 (c!252328 input!1676))))))

(declare-fun b!1552096 () Bool)

(assert (=> b!1552096 (= e!995531 e!995532)))

(declare-fun c!252398 () Bool)

(assert (=> b!1552096 (= c!252398 ((_ is Leaf!8239) (c!252328 input!1676)))))

(assert (= (and d!460510 c!252397) b!1552095))

(assert (= (and d!460510 (not c!252397)) b!1552096))

(assert (= (and b!1552096 c!252398) b!1552097))

(assert (= (and b!1552096 (not c!252398)) b!1552098))

(declare-fun m!1824559 () Bool)

(assert (=> b!1552098 m!1824559))

(declare-fun m!1824561 () Bool)

(assert (=> b!1552098 m!1824561))

(assert (=> b!1552098 m!1824559))

(assert (=> b!1552098 m!1824561))

(declare-fun m!1824563 () Bool)

(assert (=> b!1552098 m!1824563))

(assert (=> b!1552097 m!1824385))

(assert (=> d!460328 d!460510))

(declare-fun d!460512 () Bool)

(assert (=> d!460512 (= (inv!22047 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))) (isBalanced!1640 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))))

(declare-fun bs!387230 () Bool)

(assert (= bs!387230 d!460512))

(declare-fun m!1824565 () Bool)

(assert (=> bs!387230 m!1824565))

(assert (=> tb!87267 d!460512))

(declare-fun bs!387231 () Bool)

(declare-fun d!460514 () Bool)

(assert (= bs!387231 (and d!460514 d!460508)))

(declare-fun lambda!65697 () Int)

(assert (=> bs!387231 (= lambda!65697 lambda!65696)))

(declare-fun bs!387232 () Bool)

(assert (= bs!387232 (and d!460514 d!460458)))

(assert (=> bs!387232 (= lambda!65697 lambda!65679)))

(declare-fun bs!387233 () Bool)

(assert (= bs!387233 (and d!460514 d!460500)))

(assert (=> bs!387233 (= lambda!65697 lambda!65695)))

(declare-fun bs!387234 () Bool)

(assert (= bs!387234 (and d!460514 d!460464)))

(assert (=> bs!387234 (= lambda!65697 lambda!65681)))

(declare-fun bs!387235 () Bool)

(assert (= bs!387235 (and d!460514 d!460468)))

(assert (=> bs!387235 (= lambda!65697 lambda!65683)))

(declare-fun bs!387236 () Bool)

(assert (= bs!387236 (and d!460514 d!460438)))

(assert (=> bs!387236 (= lambda!65697 lambda!65678)))

(declare-fun bs!387237 () Bool)

(assert (= bs!387237 (and d!460514 d!460424)))

(assert (=> bs!387237 (= lambda!65697 lambda!65676)))

(declare-fun bs!387238 () Bool)

(assert (= bs!387238 (and d!460514 d!460482)))

(assert (=> bs!387238 (= lambda!65697 lambda!65690)))

(declare-fun bs!387239 () Bool)

(assert (= bs!387239 (and d!460514 d!460408)))

(assert (=> bs!387239 (= lambda!65697 lambda!65675)))

(declare-fun bs!387240 () Bool)

(assert (= bs!387240 (and d!460514 d!460460)))

(assert (=> bs!387240 (= lambda!65697 lambda!65680)))

(declare-fun bs!387241 () Bool)

(assert (= bs!387241 (and d!460514 d!460466)))

(assert (=> bs!387241 (= lambda!65697 lambda!65682)))

(declare-fun bs!387242 () Bool)

(assert (= bs!387242 (and d!460514 d!460488)))

(assert (=> bs!387242 (= lambda!65697 lambda!65691)))

(declare-fun bs!387243 () Bool)

(assert (= bs!387243 (and d!460514 d!460428)))

(assert (=> bs!387243 (= lambda!65697 lambda!65677)))

(assert (=> d!460514 (= (inv!22053 setElem!10637) (forall!3917 (exprs!1287 setElem!10637) lambda!65697))))

(declare-fun bs!387244 () Bool)

(assert (= bs!387244 d!460514))

(declare-fun m!1824567 () Bool)

(assert (=> bs!387244 m!1824567))

(assert (=> setNonEmpty!10637 d!460514))

(declare-fun d!460516 () Bool)

(declare-fun e!995535 () Bool)

(assert (=> d!460516 e!995535))

(declare-fun res!693401 () Bool)

(assert (=> d!460516 (=> (not res!693401) (not e!995535))))

(declare-fun lt!537666 () BalanceConc!11060)

(assert (=> d!460516 (= res!693401 (= (list!6482 lt!537666) lt!537498))))

(declare-fun fromList!351 (List!16847) Conc!5559)

(assert (=> d!460516 (= lt!537666 (BalanceConc!11061 (fromList!351 lt!537498)))))

(assert (=> d!460516 (= (fromListB!758 lt!537498) lt!537666)))

(declare-fun b!1552101 () Bool)

(assert (=> b!1552101 (= e!995535 (isBalanced!1640 (fromList!351 lt!537498)))))

(assert (= (and d!460516 res!693401) b!1552101))

(declare-fun m!1824569 () Bool)

(assert (=> d!460516 m!1824569))

(declare-fun m!1824571 () Bool)

(assert (=> d!460516 m!1824571))

(assert (=> b!1552101 m!1824571))

(assert (=> b!1552101 m!1824571))

(declare-fun m!1824573 () Bool)

(assert (=> b!1552101 m!1824573))

(assert (=> d!460332 d!460516))

(declare-fun c!252413 () Bool)

(declare-fun call!101859 () Regex!4269)

(declare-fun bm!101853 () Bool)

(assert (=> bm!101853 (= call!101859 (derivativeStep!1019 (ite c!252413 (regTwo!9051 (regex!2941 rule!240)) (regTwo!9050 (regex!2941 rule!240))) call!101833))))

(declare-fun b!1552122 () Bool)

(declare-fun e!995550 () Regex!4269)

(declare-fun call!101858 () Regex!4269)

(assert (=> b!1552122 (= e!995550 (Union!4269 call!101858 call!101859))))

(declare-fun d!460518 () Bool)

(declare-fun lt!537669 () Regex!4269)

(assert (=> d!460518 (validRegex!1708 lt!537669)))

(declare-fun e!995546 () Regex!4269)

(assert (=> d!460518 (= lt!537669 e!995546)))

(declare-fun c!252411 () Bool)

(assert (=> d!460518 (= c!252411 (or ((_ is EmptyExpr!4269) (regex!2941 rule!240)) ((_ is EmptyLang!4269) (regex!2941 rule!240))))))

(assert (=> d!460518 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460518 (= (derivativeStep!1019 (regex!2941 rule!240) call!101833) lt!537669)))

(declare-fun b!1552123 () Bool)

(declare-fun e!995547 () Regex!4269)

(declare-fun call!101861 () Regex!4269)

(assert (=> b!1552123 (= e!995547 (Concat!7301 call!101861 (regex!2941 rule!240)))))

(declare-fun b!1552124 () Bool)

(declare-fun e!995549 () Regex!4269)

(assert (=> b!1552124 (= e!995549 (ite (= call!101833 (c!252327 (regex!2941 rule!240))) EmptyExpr!4269 EmptyLang!4269))))

(declare-fun b!1552125 () Bool)

(assert (=> b!1552125 (= e!995546 e!995549)))

(declare-fun c!252410 () Bool)

(assert (=> b!1552125 (= c!252410 ((_ is ElementMatch!4269) (regex!2941 rule!240)))))

(declare-fun b!1552126 () Bool)

(assert (=> b!1552126 (= c!252413 ((_ is Union!4269) (regex!2941 rule!240)))))

(assert (=> b!1552126 (= e!995549 e!995550)))

(declare-fun bm!101854 () Bool)

(declare-fun c!252414 () Bool)

(assert (=> bm!101854 (= call!101858 (derivativeStep!1019 (ite c!252413 (regOne!9051 (regex!2941 rule!240)) (ite c!252414 (reg!4598 (regex!2941 rule!240)) (regOne!9050 (regex!2941 rule!240)))) call!101833))))

(declare-fun bm!101855 () Bool)

(assert (=> bm!101855 (= call!101861 call!101858)))

(declare-fun bm!101856 () Bool)

(declare-fun call!101860 () Regex!4269)

(assert (=> bm!101856 (= call!101860 call!101861)))

(declare-fun b!1552127 () Bool)

(declare-fun e!995548 () Regex!4269)

(assert (=> b!1552127 (= e!995548 (Union!4269 (Concat!7301 call!101860 (regTwo!9050 (regex!2941 rule!240))) EmptyLang!4269))))

(declare-fun b!1552128 () Bool)

(declare-fun c!252412 () Bool)

(assert (=> b!1552128 (= c!252412 (nullable!1267 (regOne!9050 (regex!2941 rule!240))))))

(assert (=> b!1552128 (= e!995547 e!995548)))

(declare-fun b!1552129 () Bool)

(assert (=> b!1552129 (= e!995548 (Union!4269 (Concat!7301 call!101860 (regTwo!9050 (regex!2941 rule!240))) call!101859))))

(declare-fun b!1552130 () Bool)

(assert (=> b!1552130 (= e!995550 e!995547)))

(assert (=> b!1552130 (= c!252414 ((_ is Star!4269) (regex!2941 rule!240)))))

(declare-fun b!1552131 () Bool)

(assert (=> b!1552131 (= e!995546 EmptyLang!4269)))

(assert (= (and d!460518 c!252411) b!1552131))

(assert (= (and d!460518 (not c!252411)) b!1552125))

(assert (= (and b!1552125 c!252410) b!1552124))

(assert (= (and b!1552125 (not c!252410)) b!1552126))

(assert (= (and b!1552126 c!252413) b!1552122))

(assert (= (and b!1552126 (not c!252413)) b!1552130))

(assert (= (and b!1552130 c!252414) b!1552123))

(assert (= (and b!1552130 (not c!252414)) b!1552128))

(assert (= (and b!1552128 c!252412) b!1552129))

(assert (= (and b!1552128 (not c!252412)) b!1552127))

(assert (= (or b!1552129 b!1552127) bm!101856))

(assert (= (or b!1552123 bm!101856) bm!101855))

(assert (= (or b!1552122 bm!101855) bm!101854))

(assert (= (or b!1552122 b!1552129) bm!101853))

(declare-fun m!1824575 () Bool)

(assert (=> bm!101853 m!1824575))

(declare-fun m!1824577 () Bool)

(assert (=> d!460518 m!1824577))

(assert (=> d!460518 m!1824163))

(declare-fun m!1824579 () Bool)

(assert (=> bm!101854 m!1824579))

(declare-fun m!1824581 () Bool)

(assert (=> b!1552128 m!1824581))

(assert (=> bm!101824 d!460518))

(declare-fun bs!387245 () Bool)

(declare-fun d!460520 () Bool)

(assert (= bs!387245 (and d!460520 d!460508)))

(declare-fun lambda!65698 () Int)

(assert (=> bs!387245 (= lambda!65698 lambda!65696)))

(declare-fun bs!387246 () Bool)

(assert (= bs!387246 (and d!460520 d!460458)))

(assert (=> bs!387246 (= lambda!65698 lambda!65679)))

(declare-fun bs!387247 () Bool)

(assert (= bs!387247 (and d!460520 d!460500)))

(assert (=> bs!387247 (= lambda!65698 lambda!65695)))

(declare-fun bs!387248 () Bool)

(assert (= bs!387248 (and d!460520 d!460464)))

(assert (=> bs!387248 (= lambda!65698 lambda!65681)))

(declare-fun bs!387249 () Bool)

(assert (= bs!387249 (and d!460520 d!460468)))

(assert (=> bs!387249 (= lambda!65698 lambda!65683)))

(declare-fun bs!387250 () Bool)

(assert (= bs!387250 (and d!460520 d!460438)))

(assert (=> bs!387250 (= lambda!65698 lambda!65678)))

(declare-fun bs!387251 () Bool)

(assert (= bs!387251 (and d!460520 d!460424)))

(assert (=> bs!387251 (= lambda!65698 lambda!65676)))

(declare-fun bs!387252 () Bool)

(assert (= bs!387252 (and d!460520 d!460482)))

(assert (=> bs!387252 (= lambda!65698 lambda!65690)))

(declare-fun bs!387253 () Bool)

(assert (= bs!387253 (and d!460520 d!460460)))

(assert (=> bs!387253 (= lambda!65698 lambda!65680)))

(declare-fun bs!387254 () Bool)

(assert (= bs!387254 (and d!460520 d!460466)))

(assert (=> bs!387254 (= lambda!65698 lambda!65682)))

(declare-fun bs!387255 () Bool)

(assert (= bs!387255 (and d!460520 d!460514)))

(assert (=> bs!387255 (= lambda!65698 lambda!65697)))

(declare-fun bs!387256 () Bool)

(assert (= bs!387256 (and d!460520 d!460408)))

(assert (=> bs!387256 (= lambda!65698 lambda!65675)))

(declare-fun bs!387257 () Bool)

(assert (= bs!387257 (and d!460520 d!460488)))

(assert (=> bs!387257 (= lambda!65698 lambda!65691)))

(declare-fun bs!387258 () Bool)

(assert (= bs!387258 (and d!460520 d!460428)))

(assert (=> bs!387258 (= lambda!65698 lambda!65677)))

(assert (=> d!460520 (= (inv!22053 setElem!10608) (forall!3917 (exprs!1287 setElem!10608) lambda!65698))))

(declare-fun bs!387259 () Bool)

(assert (= bs!387259 d!460520))

(declare-fun m!1824583 () Bool)

(assert (=> bs!387259 m!1824583))

(assert (=> setNonEmpty!10608 d!460520))

(declare-fun d!460522 () Bool)

(declare-fun c!252415 () Bool)

(assert (=> d!460522 (= c!252415 ((_ is Node!5559) (left!13648 (c!252328 totalInput!568))))))

(declare-fun e!995551 () Bool)

(assert (=> d!460522 (= (inv!22046 (left!13648 (c!252328 totalInput!568))) e!995551)))

(declare-fun b!1552132 () Bool)

(assert (=> b!1552132 (= e!995551 (inv!22051 (left!13648 (c!252328 totalInput!568))))))

(declare-fun b!1552133 () Bool)

(declare-fun e!995552 () Bool)

(assert (=> b!1552133 (= e!995551 e!995552)))

(declare-fun res!693402 () Bool)

(assert (=> b!1552133 (= res!693402 (not ((_ is Leaf!8239) (left!13648 (c!252328 totalInput!568)))))))

(assert (=> b!1552133 (=> res!693402 e!995552)))

(declare-fun b!1552134 () Bool)

(assert (=> b!1552134 (= e!995552 (inv!22052 (left!13648 (c!252328 totalInput!568))))))

(assert (= (and d!460522 c!252415) b!1552132))

(assert (= (and d!460522 (not c!252415)) b!1552133))

(assert (= (and b!1552133 (not res!693402)) b!1552134))

(declare-fun m!1824585 () Bool)

(assert (=> b!1552132 m!1824585))

(declare-fun m!1824587 () Bool)

(assert (=> b!1552134 m!1824587))

(assert (=> b!1551896 d!460522))

(declare-fun d!460524 () Bool)

(declare-fun c!252416 () Bool)

(assert (=> d!460524 (= c!252416 ((_ is Node!5559) (right!13978 (c!252328 totalInput!568))))))

(declare-fun e!995553 () Bool)

(assert (=> d!460524 (= (inv!22046 (right!13978 (c!252328 totalInput!568))) e!995553)))

(declare-fun b!1552135 () Bool)

(assert (=> b!1552135 (= e!995553 (inv!22051 (right!13978 (c!252328 totalInput!568))))))

(declare-fun b!1552136 () Bool)

(declare-fun e!995554 () Bool)

(assert (=> b!1552136 (= e!995553 e!995554)))

(declare-fun res!693403 () Bool)

(assert (=> b!1552136 (= res!693403 (not ((_ is Leaf!8239) (right!13978 (c!252328 totalInput!568)))))))

(assert (=> b!1552136 (=> res!693403 e!995554)))

(declare-fun b!1552137 () Bool)

(assert (=> b!1552137 (= e!995554 (inv!22052 (right!13978 (c!252328 totalInput!568))))))

(assert (= (and d!460524 c!252416) b!1552135))

(assert (= (and d!460524 (not c!252416)) b!1552136))

(assert (= (and b!1552136 (not res!693403)) b!1552137))

(declare-fun m!1824589 () Bool)

(assert (=> b!1552135 m!1824589))

(declare-fun m!1824591 () Bool)

(assert (=> b!1552137 m!1824591))

(assert (=> b!1551896 d!460524))

(declare-fun d!460526 () Bool)

(assert (=> d!460526 (= (head!3110 lt!537496) (h!22180 lt!537496))))

(assert (=> bm!101828 d!460526))

(declare-fun b!1552138 () Bool)

(declare-fun e!995555 () List!16847)

(assert (=> b!1552138 (= e!995555 Nil!16779)))

(declare-fun b!1552141 () Bool)

(declare-fun e!995556 () List!16847)

(assert (=> b!1552141 (= e!995556 (++!4411 (list!6483 (left!13648 (c!252328 (_1!9425 (_1!9426 lt!537493))))) (list!6483 (right!13978 (c!252328 (_1!9425 (_1!9426 lt!537493)))))))))

(declare-fun d!460528 () Bool)

(declare-fun c!252417 () Bool)

(assert (=> d!460528 (= c!252417 ((_ is Empty!5559) (c!252328 (_1!9425 (_1!9426 lt!537493)))))))

(assert (=> d!460528 (= (list!6483 (c!252328 (_1!9425 (_1!9426 lt!537493)))) e!995555)))

(declare-fun b!1552140 () Bool)

(assert (=> b!1552140 (= e!995556 (list!6484 (xs!8359 (c!252328 (_1!9425 (_1!9426 lt!537493))))))))

(declare-fun b!1552139 () Bool)

(assert (=> b!1552139 (= e!995555 e!995556)))

(declare-fun c!252418 () Bool)

(assert (=> b!1552139 (= c!252418 ((_ is Leaf!8239) (c!252328 (_1!9425 (_1!9426 lt!537493)))))))

(assert (= (and d!460528 c!252417) b!1552138))

(assert (= (and d!460528 (not c!252417)) b!1552139))

(assert (= (and b!1552139 c!252418) b!1552140))

(assert (= (and b!1552139 (not c!252418)) b!1552141))

(declare-fun m!1824593 () Bool)

(assert (=> b!1552141 m!1824593))

(declare-fun m!1824595 () Bool)

(assert (=> b!1552141 m!1824595))

(assert (=> b!1552141 m!1824593))

(assert (=> b!1552141 m!1824595))

(declare-fun m!1824597 () Bool)

(assert (=> b!1552141 m!1824597))

(declare-fun m!1824599 () Bool)

(assert (=> b!1552140 m!1824599))

(assert (=> d!460346 d!460528))

(declare-fun d!460530 () Bool)

(declare-fun res!693404 () Bool)

(declare-fun e!995557 () Bool)

(assert (=> d!460530 (=> (not res!693404) (not e!995557))))

(assert (=> d!460530 (= res!693404 (= (csize!11348 (c!252328 input!1676)) (+ (size!13580 (left!13648 (c!252328 input!1676))) (size!13580 (right!13978 (c!252328 input!1676))))))))

(assert (=> d!460530 (= (inv!22051 (c!252328 input!1676)) e!995557)))

(declare-fun b!1552142 () Bool)

(declare-fun res!693405 () Bool)

(assert (=> b!1552142 (=> (not res!693405) (not e!995557))))

(assert (=> b!1552142 (= res!693405 (and (not (= (left!13648 (c!252328 input!1676)) Empty!5559)) (not (= (right!13978 (c!252328 input!1676)) Empty!5559))))))

(declare-fun b!1552143 () Bool)

(declare-fun res!693406 () Bool)

(assert (=> b!1552143 (=> (not res!693406) (not e!995557))))

(assert (=> b!1552143 (= res!693406 (= (cheight!5770 (c!252328 input!1676)) (+ (max!0 (height!827 (left!13648 (c!252328 input!1676))) (height!827 (right!13978 (c!252328 input!1676)))) 1)))))

(declare-fun b!1552144 () Bool)

(assert (=> b!1552144 (= e!995557 (<= 0 (cheight!5770 (c!252328 input!1676))))))

(assert (= (and d!460530 res!693404) b!1552142))

(assert (= (and b!1552142 res!693405) b!1552143))

(assert (= (and b!1552143 res!693406) b!1552144))

(declare-fun m!1824601 () Bool)

(assert (=> d!460530 m!1824601))

(declare-fun m!1824603 () Bool)

(assert (=> d!460530 m!1824603))

(declare-fun m!1824605 () Bool)

(assert (=> b!1552143 m!1824605))

(declare-fun m!1824607 () Bool)

(assert (=> b!1552143 m!1824607))

(assert (=> b!1552143 m!1824605))

(assert (=> b!1552143 m!1824607))

(declare-fun m!1824609 () Bool)

(assert (=> b!1552143 m!1824609))

(assert (=> b!1551774 d!460530))

(declare-fun d!460532 () Bool)

(assert (=> d!460532 (= (isEmpty!10096 (maxPrefixOneRule!698 thiss!16438 rule!240 lt!537496)) (not ((_ is Some!3026) (maxPrefixOneRule!698 thiss!16438 rule!240 lt!537496))))))

(assert (=> d!460342 d!460532))

(assert (=> d!460398 d!460492))

(declare-fun d!460534 () Bool)

(assert (=> d!460534 (= (Forall!603 lambda!65672) (choose!9251 lambda!65672))))

(declare-fun bs!387260 () Bool)

(assert (= bs!387260 d!460534))

(declare-fun m!1824611 () Bool)

(assert (=> bs!387260 m!1824611))

(assert (=> d!460360 d!460534))

(declare-fun b!1552145 () Bool)

(declare-fun res!693407 () Bool)

(declare-fun e!995559 () Bool)

(assert (=> b!1552145 (=> res!693407 e!995559)))

(assert (=> b!1552145 (= res!693407 (not ((_ is IntegerValue!9095) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))))

(declare-fun e!995558 () Bool)

(assert (=> b!1552145 (= e!995558 e!995559)))

(declare-fun b!1552146 () Bool)

(declare-fun e!995560 () Bool)

(assert (=> b!1552146 (= e!995560 e!995558)))

(declare-fun c!252419 () Bool)

(assert (=> b!1552146 (= c!252419 ((_ is IntegerValue!9094) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))

(declare-fun d!460536 () Bool)

(declare-fun c!252420 () Bool)

(assert (=> d!460536 (= c!252420 ((_ is IntegerValue!9093) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))

(assert (=> d!460536 (= (inv!21 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))) e!995560)))

(declare-fun b!1552147 () Bool)

(assert (=> b!1552147 (= e!995558 (inv!17 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))

(declare-fun b!1552148 () Bool)

(assert (=> b!1552148 (= e!995560 (inv!16 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))

(declare-fun b!1552149 () Bool)

(assert (=> b!1552149 (= e!995559 (inv!15 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))

(assert (= (and d!460536 c!252420) b!1552148))

(assert (= (and d!460536 (not c!252420)) b!1552146))

(assert (= (and b!1552146 c!252419) b!1552147))

(assert (= (and b!1552146 (not c!252419)) b!1552145))

(assert (= (and b!1552145 (not res!693407)) b!1552149))

(declare-fun m!1824613 () Bool)

(assert (=> b!1552147 m!1824613))

(declare-fun m!1824615 () Bool)

(assert (=> b!1552148 m!1824615))

(declare-fun m!1824617 () Bool)

(assert (=> b!1552149 m!1824617))

(assert (=> tb!87269 d!460536))

(declare-fun bs!387261 () Bool)

(declare-fun d!460538 () Bool)

(assert (= bs!387261 (and d!460538 d!460508)))

(declare-fun lambda!65699 () Int)

(assert (=> bs!387261 (= lambda!65699 lambda!65696)))

(declare-fun bs!387262 () Bool)

(assert (= bs!387262 (and d!460538 d!460458)))

(assert (=> bs!387262 (= lambda!65699 lambda!65679)))

(declare-fun bs!387263 () Bool)

(assert (= bs!387263 (and d!460538 d!460500)))

(assert (=> bs!387263 (= lambda!65699 lambda!65695)))

(declare-fun bs!387264 () Bool)

(assert (= bs!387264 (and d!460538 d!460464)))

(assert (=> bs!387264 (= lambda!65699 lambda!65681)))

(declare-fun bs!387265 () Bool)

(assert (= bs!387265 (and d!460538 d!460468)))

(assert (=> bs!387265 (= lambda!65699 lambda!65683)))

(declare-fun bs!387266 () Bool)

(assert (= bs!387266 (and d!460538 d!460438)))

(assert (=> bs!387266 (= lambda!65699 lambda!65678)))

(declare-fun bs!387267 () Bool)

(assert (= bs!387267 (and d!460538 d!460424)))

(assert (=> bs!387267 (= lambda!65699 lambda!65676)))

(declare-fun bs!387268 () Bool)

(assert (= bs!387268 (and d!460538 d!460482)))

(assert (=> bs!387268 (= lambda!65699 lambda!65690)))

(declare-fun bs!387269 () Bool)

(assert (= bs!387269 (and d!460538 d!460460)))

(assert (=> bs!387269 (= lambda!65699 lambda!65680)))

(declare-fun bs!387270 () Bool)

(assert (= bs!387270 (and d!460538 d!460466)))

(assert (=> bs!387270 (= lambda!65699 lambda!65682)))

(declare-fun bs!387271 () Bool)

(assert (= bs!387271 (and d!460538 d!460520)))

(assert (=> bs!387271 (= lambda!65699 lambda!65698)))

(declare-fun bs!387272 () Bool)

(assert (= bs!387272 (and d!460538 d!460514)))

(assert (=> bs!387272 (= lambda!65699 lambda!65697)))

(declare-fun bs!387273 () Bool)

(assert (= bs!387273 (and d!460538 d!460408)))

(assert (=> bs!387273 (= lambda!65699 lambda!65675)))

(declare-fun bs!387274 () Bool)

(assert (= bs!387274 (and d!460538 d!460488)))

(assert (=> bs!387274 (= lambda!65699 lambda!65691)))

(declare-fun bs!387275 () Bool)

(assert (= bs!387275 (and d!460538 d!460428)))

(assert (=> bs!387275 (= lambda!65699 lambda!65677)))

(assert (=> d!460538 (= (inv!22053 setElem!10630) (forall!3917 (exprs!1287 setElem!10630) lambda!65699))))

(declare-fun bs!387276 () Bool)

(assert (= bs!387276 d!460538))

(declare-fun m!1824619 () Bool)

(assert (=> bs!387276 m!1824619))

(assert (=> setNonEmpty!10630 d!460538))

(declare-fun bs!387277 () Bool)

(declare-fun d!460540 () Bool)

(assert (= bs!387277 (and d!460540 d!460508)))

(declare-fun lambda!65700 () Int)

(assert (=> bs!387277 (= lambda!65700 lambda!65696)))

(declare-fun bs!387278 () Bool)

(assert (= bs!387278 (and d!460540 d!460538)))

(assert (=> bs!387278 (= lambda!65700 lambda!65699)))

(declare-fun bs!387279 () Bool)

(assert (= bs!387279 (and d!460540 d!460458)))

(assert (=> bs!387279 (= lambda!65700 lambda!65679)))

(declare-fun bs!387280 () Bool)

(assert (= bs!387280 (and d!460540 d!460500)))

(assert (=> bs!387280 (= lambda!65700 lambda!65695)))

(declare-fun bs!387281 () Bool)

(assert (= bs!387281 (and d!460540 d!460464)))

(assert (=> bs!387281 (= lambda!65700 lambda!65681)))

(declare-fun bs!387282 () Bool)

(assert (= bs!387282 (and d!460540 d!460468)))

(assert (=> bs!387282 (= lambda!65700 lambda!65683)))

(declare-fun bs!387283 () Bool)

(assert (= bs!387283 (and d!460540 d!460438)))

(assert (=> bs!387283 (= lambda!65700 lambda!65678)))

(declare-fun bs!387284 () Bool)

(assert (= bs!387284 (and d!460540 d!460424)))

(assert (=> bs!387284 (= lambda!65700 lambda!65676)))

(declare-fun bs!387285 () Bool)

(assert (= bs!387285 (and d!460540 d!460482)))

(assert (=> bs!387285 (= lambda!65700 lambda!65690)))

(declare-fun bs!387286 () Bool)

(assert (= bs!387286 (and d!460540 d!460460)))

(assert (=> bs!387286 (= lambda!65700 lambda!65680)))

(declare-fun bs!387287 () Bool)

(assert (= bs!387287 (and d!460540 d!460466)))

(assert (=> bs!387287 (= lambda!65700 lambda!65682)))

(declare-fun bs!387288 () Bool)

(assert (= bs!387288 (and d!460540 d!460520)))

(assert (=> bs!387288 (= lambda!65700 lambda!65698)))

(declare-fun bs!387289 () Bool)

(assert (= bs!387289 (and d!460540 d!460514)))

(assert (=> bs!387289 (= lambda!65700 lambda!65697)))

(declare-fun bs!387290 () Bool)

(assert (= bs!387290 (and d!460540 d!460408)))

(assert (=> bs!387290 (= lambda!65700 lambda!65675)))

(declare-fun bs!387291 () Bool)

(assert (= bs!387291 (and d!460540 d!460488)))

(assert (=> bs!387291 (= lambda!65700 lambda!65691)))

(declare-fun bs!387292 () Bool)

(assert (= bs!387292 (and d!460540 d!460428)))

(assert (=> bs!387292 (= lambda!65700 lambda!65677)))

(assert (=> d!460540 (= (inv!22053 setElem!10628) (forall!3917 (exprs!1287 setElem!10628) lambda!65700))))

(declare-fun bs!387293 () Bool)

(assert (= bs!387293 d!460540))

(declare-fun m!1824621 () Bool)

(assert (=> bs!387293 m!1824621))

(assert (=> setNonEmpty!10629 d!460540))

(declare-fun d!460542 () Bool)

(assert (=> d!460542 (dynLambda!7424 lambda!65669 (_1!9425 (_1!9426 lt!537493)))))

(assert (=> d!460542 true))

(declare-fun _$1!9952 () Unit!26027)

(assert (=> d!460542 (= (choose!9248 lambda!65669 (_1!9425 (_1!9426 lt!537493))) _$1!9952)))

(declare-fun b_lambda!48701 () Bool)

(assert (=> (not b_lambda!48701) (not d!460542)))

(declare-fun bs!387294 () Bool)

(assert (= bs!387294 d!460542))

(assert (=> bs!387294 m!1824103))

(assert (=> d!460334 d!460542))

(assert (=> d!460334 d!460392))

(declare-fun b!1552150 () Bool)

(declare-fun e!995562 () Bool)

(declare-fun e!995561 () Bool)

(assert (=> b!1552150 (= e!995562 e!995561)))

(declare-fun res!693409 () Bool)

(assert (=> b!1552150 (=> (not res!693409) (not e!995561))))

(assert (=> b!1552150 (= res!693409 (not ((_ is Nil!16779) lt!537496)))))

(declare-fun b!1552153 () Bool)

(declare-fun e!995563 () Bool)

(assert (=> b!1552153 (= e!995563 (>= (size!13577 lt!537496) (size!13577 (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)))))))

(declare-fun b!1552151 () Bool)

(declare-fun res!693411 () Bool)

(assert (=> b!1552151 (=> (not res!693411) (not e!995561))))

(assert (=> b!1552151 (= res!693411 (= (head!3110 (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779))) (head!3110 lt!537496)))))

(declare-fun d!460544 () Bool)

(assert (=> d!460544 e!995563))

(declare-fun res!693408 () Bool)

(assert (=> d!460544 (=> res!693408 e!995563)))

(declare-fun lt!537670 () Bool)

(assert (=> d!460544 (= res!693408 (not lt!537670))))

(assert (=> d!460544 (= lt!537670 e!995562)))

(declare-fun res!693410 () Bool)

(assert (=> d!460544 (=> res!693410 e!995562)))

(assert (=> d!460544 (= res!693410 ((_ is Nil!16779) (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779))))))

(assert (=> d!460544 (= (isPrefix!1257 (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)) lt!537496) lt!537670)))

(declare-fun b!1552152 () Bool)

(assert (=> b!1552152 (= e!995561 (isPrefix!1257 (tail!2205 (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779))) (tail!2205 lt!537496)))))

(assert (= (and d!460544 (not res!693410)) b!1552150))

(assert (= (and b!1552150 res!693409) b!1552151))

(assert (= (and b!1552151 res!693411) b!1552152))

(assert (= (and d!460544 (not res!693408)) b!1552153))

(assert (=> b!1552153 m!1823997))

(assert (=> b!1552153 m!1824205))

(declare-fun m!1824623 () Bool)

(assert (=> b!1552153 m!1824623))

(assert (=> b!1552151 m!1824205))

(declare-fun m!1824625 () Bool)

(assert (=> b!1552151 m!1824625))

(assert (=> b!1552151 m!1824193))

(assert (=> b!1552152 m!1824205))

(declare-fun m!1824627 () Bool)

(assert (=> b!1552152 m!1824627))

(assert (=> b!1552152 m!1824195))

(assert (=> b!1552152 m!1824627))

(assert (=> b!1552152 m!1824195))

(declare-fun m!1824629 () Bool)

(assert (=> b!1552152 m!1824629))

(assert (=> b!1551694 d!460544))

(assert (=> b!1551694 d!460352))

(assert (=> b!1551694 d!460354))

(assert (=> b!1551694 d!460526))

(declare-fun b!1552164 () Bool)

(declare-fun res!693416 () Bool)

(declare-fun e!995568 () Bool)

(assert (=> b!1552164 (=> (not res!693416) (not e!995568))))

(declare-fun lt!537673 () List!16847)

(assert (=> b!1552164 (= res!693416 (= (size!13577 lt!537673) (+ (size!13577 Nil!16779) (size!13577 (Cons!16779 (head!3110 lt!537496) Nil!16779)))))))

(declare-fun b!1552162 () Bool)

(declare-fun e!995569 () List!16847)

(assert (=> b!1552162 (= e!995569 (Cons!16779 (head!3110 lt!537496) Nil!16779))))

(declare-fun b!1552165 () Bool)

(assert (=> b!1552165 (= e!995568 (or (not (= (Cons!16779 (head!3110 lt!537496) Nil!16779) Nil!16779)) (= lt!537673 Nil!16779)))))

(declare-fun d!460546 () Bool)

(assert (=> d!460546 e!995568))

(declare-fun res!693417 () Bool)

(assert (=> d!460546 (=> (not res!693417) (not e!995568))))

(declare-fun content!2340 (List!16847) (InoxSet C!8716))

(assert (=> d!460546 (= res!693417 (= (content!2340 lt!537673) ((_ map or) (content!2340 Nil!16779) (content!2340 (Cons!16779 (head!3110 lt!537496) Nil!16779)))))))

(assert (=> d!460546 (= lt!537673 e!995569)))

(declare-fun c!252423 () Bool)

(assert (=> d!460546 (= c!252423 ((_ is Nil!16779) Nil!16779))))

(assert (=> d!460546 (= (++!4411 Nil!16779 (Cons!16779 (head!3110 lt!537496) Nil!16779)) lt!537673)))

(declare-fun b!1552163 () Bool)

(assert (=> b!1552163 (= e!995569 (Cons!16779 (h!22180 Nil!16779) (++!4411 (t!141250 Nil!16779) (Cons!16779 (head!3110 lt!537496) Nil!16779))))))

(assert (= (and d!460546 c!252423) b!1552162))

(assert (= (and d!460546 (not c!252423)) b!1552163))

(assert (= (and d!460546 res!693417) b!1552164))

(assert (= (and b!1552164 res!693416) b!1552165))

(declare-fun m!1824631 () Bool)

(assert (=> b!1552164 m!1824631))

(assert (=> b!1552164 m!1824001))

(declare-fun m!1824633 () Bool)

(assert (=> b!1552164 m!1824633))

(declare-fun m!1824635 () Bool)

(assert (=> d!460546 m!1824635))

(declare-fun m!1824637 () Bool)

(assert (=> d!460546 m!1824637))

(declare-fun m!1824639 () Bool)

(assert (=> d!460546 m!1824639))

(declare-fun m!1824641 () Bool)

(assert (=> b!1552163 m!1824641))

(assert (=> b!1551694 d!460546))

(declare-fun d!460548 () Bool)

(assert (=> d!460548 (<= (size!13577 Nil!16779) (size!13577 lt!537496))))

(declare-fun lt!537676 () Unit!26027)

(declare-fun choose!9253 (List!16847 List!16847) Unit!26027)

(assert (=> d!460548 (= lt!537676 (choose!9253 Nil!16779 lt!537496))))

(assert (=> d!460548 (isPrefix!1257 Nil!16779 lt!537496)))

(assert (=> d!460548 (= (lemmaIsPrefixThenSmallerEqSize!111 Nil!16779 lt!537496) lt!537676)))

(declare-fun bs!387295 () Bool)

(assert (= bs!387295 d!460548))

(assert (=> bs!387295 m!1824001))

(assert (=> bs!387295 m!1823997))

(declare-fun m!1824643 () Bool)

(assert (=> bs!387295 m!1824643))

(declare-fun m!1824645 () Bool)

(assert (=> bs!387295 m!1824645))

(assert (=> b!1551694 d!460548))

(declare-fun b!1552168 () Bool)

(declare-fun res!693418 () Bool)

(declare-fun e!995570 () Bool)

(assert (=> b!1552168 (=> (not res!693418) (not e!995570))))

(declare-fun lt!537677 () List!16847)

(assert (=> b!1552168 (= res!693418 (= (size!13577 lt!537677) (+ (size!13577 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779))) (size!13577 lt!537603))))))

(declare-fun b!1552166 () Bool)

(declare-fun e!995571 () List!16847)

(assert (=> b!1552166 (= e!995571 lt!537603)))

(declare-fun b!1552169 () Bool)

(assert (=> b!1552169 (= e!995570 (or (not (= lt!537603 Nil!16779)) (= lt!537677 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779)))))))

(declare-fun d!460550 () Bool)

(assert (=> d!460550 e!995570))

(declare-fun res!693419 () Bool)

(assert (=> d!460550 (=> (not res!693419) (not e!995570))))

(assert (=> d!460550 (= res!693419 (= (content!2340 lt!537677) ((_ map or) (content!2340 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779))) (content!2340 lt!537603))))))

(assert (=> d!460550 (= lt!537677 e!995571)))

(declare-fun c!252424 () Bool)

(assert (=> d!460550 (= c!252424 ((_ is Nil!16779) (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779))))))

(assert (=> d!460550 (= (++!4411 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779)) lt!537603) lt!537677)))

(declare-fun b!1552167 () Bool)

(assert (=> b!1552167 (= e!995571 (Cons!16779 (h!22180 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779))) (++!4411 (t!141250 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779))) lt!537603)))))

(assert (= (and d!460550 c!252424) b!1552166))

(assert (= (and d!460550 (not c!252424)) b!1552167))

(assert (= (and d!460550 res!693419) b!1552168))

(assert (= (and b!1552168 res!693418) b!1552169))

(declare-fun m!1824647 () Bool)

(assert (=> b!1552168 m!1824647))

(assert (=> b!1552168 m!1824201))

(declare-fun m!1824649 () Bool)

(assert (=> b!1552168 m!1824649))

(declare-fun m!1824651 () Bool)

(assert (=> b!1552168 m!1824651))

(declare-fun m!1824653 () Bool)

(assert (=> d!460550 m!1824653))

(assert (=> d!460550 m!1824201))

(declare-fun m!1824655 () Bool)

(assert (=> d!460550 m!1824655))

(declare-fun m!1824657 () Bool)

(assert (=> d!460550 m!1824657))

(declare-fun m!1824659 () Bool)

(assert (=> b!1552167 m!1824659))

(assert (=> b!1551694 d!460550))

(declare-fun d!460552 () Bool)

(assert (=> d!460552 (= (head!3110 (getSuffix!667 lt!537496 Nil!16779)) (h!22180 (getSuffix!667 lt!537496 Nil!16779)))))

(assert (=> b!1551694 d!460552))

(declare-fun d!460554 () Bool)

(assert (=> d!460554 (= (tail!2205 lt!537496) (t!141250 lt!537496))))

(assert (=> b!1551694 d!460554))

(declare-fun b!1552172 () Bool)

(declare-fun res!693420 () Bool)

(declare-fun e!995572 () Bool)

(assert (=> b!1552172 (=> (not res!693420) (not e!995572))))

(declare-fun lt!537678 () List!16847)

(assert (=> b!1552172 (= res!693420 (= (size!13577 lt!537678) (+ (size!13577 Nil!16779) (size!13577 (Cons!16779 lt!537614 Nil!16779)))))))

(declare-fun b!1552170 () Bool)

(declare-fun e!995573 () List!16847)

(assert (=> b!1552170 (= e!995573 (Cons!16779 lt!537614 Nil!16779))))

(declare-fun b!1552173 () Bool)

(assert (=> b!1552173 (= e!995572 (or (not (= (Cons!16779 lt!537614 Nil!16779) Nil!16779)) (= lt!537678 Nil!16779)))))

(declare-fun d!460556 () Bool)

(assert (=> d!460556 e!995572))

(declare-fun res!693421 () Bool)

(assert (=> d!460556 (=> (not res!693421) (not e!995572))))

(assert (=> d!460556 (= res!693421 (= (content!2340 lt!537678) ((_ map or) (content!2340 Nil!16779) (content!2340 (Cons!16779 lt!537614 Nil!16779)))))))

(assert (=> d!460556 (= lt!537678 e!995573)))

(declare-fun c!252425 () Bool)

(assert (=> d!460556 (= c!252425 ((_ is Nil!16779) Nil!16779))))

(assert (=> d!460556 (= (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779)) lt!537678)))

(declare-fun b!1552171 () Bool)

(assert (=> b!1552171 (= e!995573 (Cons!16779 (h!22180 Nil!16779) (++!4411 (t!141250 Nil!16779) (Cons!16779 lt!537614 Nil!16779))))))

(assert (= (and d!460556 c!252425) b!1552170))

(assert (= (and d!460556 (not c!252425)) b!1552171))

(assert (= (and d!460556 res!693421) b!1552172))

(assert (= (and b!1552172 res!693420) b!1552173))

(declare-fun m!1824661 () Bool)

(assert (=> b!1552172 m!1824661))

(assert (=> b!1552172 m!1824001))

(declare-fun m!1824663 () Bool)

(assert (=> b!1552172 m!1824663))

(declare-fun m!1824665 () Bool)

(assert (=> d!460556 m!1824665))

(assert (=> d!460556 m!1824637))

(declare-fun m!1824667 () Bool)

(assert (=> d!460556 m!1824667))

(declare-fun m!1824669 () Bool)

(assert (=> b!1552171 m!1824669))

(assert (=> b!1551694 d!460556))

(declare-fun d!460558 () Bool)

(assert (=> d!460558 (isPrefix!1257 (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)) lt!537496)))

(declare-fun lt!537681 () Unit!26027)

(declare-fun choose!9254 (List!16847 List!16847) Unit!26027)

(assert (=> d!460558 (= lt!537681 (choose!9254 Nil!16779 lt!537496))))

(assert (=> d!460558 (isPrefix!1257 Nil!16779 lt!537496)))

(assert (=> d!460558 (= (lemmaAddHeadSuffixToPrefixStillPrefix!110 Nil!16779 lt!537496) lt!537681)))

(declare-fun bs!387296 () Bool)

(assert (= bs!387296 d!460558))

(declare-fun m!1824671 () Bool)

(assert (=> bs!387296 m!1824671))

(assert (=> bs!387296 m!1824185))

(assert (=> bs!387296 m!1824205))

(assert (=> bs!387296 m!1824205))

(assert (=> bs!387296 m!1824207))

(assert (=> bs!387296 m!1824645))

(assert (=> bs!387296 m!1824185))

(assert (=> bs!387296 m!1824199))

(assert (=> b!1551694 d!460558))

(declare-fun b!1552176 () Bool)

(declare-fun res!693422 () Bool)

(declare-fun e!995574 () Bool)

(assert (=> b!1552176 (=> (not res!693422) (not e!995574))))

(declare-fun lt!537682 () List!16847)

(assert (=> b!1552176 (= res!693422 (= (size!13577 lt!537682) (+ (size!13577 Nil!16779) (size!13577 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)))))))

(declare-fun b!1552174 () Bool)

(declare-fun e!995575 () List!16847)

(assert (=> b!1552174 (= e!995575 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779))))

(declare-fun b!1552177 () Bool)

(assert (=> b!1552177 (= e!995574 (or (not (= (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779) Nil!16779)) (= lt!537682 Nil!16779)))))

(declare-fun d!460560 () Bool)

(assert (=> d!460560 e!995574))

(declare-fun res!693423 () Bool)

(assert (=> d!460560 (=> (not res!693423) (not e!995574))))

(assert (=> d!460560 (= res!693423 (= (content!2340 lt!537682) ((_ map or) (content!2340 Nil!16779) (content!2340 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)))))))

(assert (=> d!460560 (= lt!537682 e!995575)))

(declare-fun c!252426 () Bool)

(assert (=> d!460560 (= c!252426 ((_ is Nil!16779) Nil!16779))))

(assert (=> d!460560 (= (++!4411 Nil!16779 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779)) lt!537682)))

(declare-fun b!1552175 () Bool)

(assert (=> b!1552175 (= e!995575 (Cons!16779 (h!22180 Nil!16779) (++!4411 (t!141250 Nil!16779) (Cons!16779 (head!3110 (getSuffix!667 lt!537496 Nil!16779)) Nil!16779))))))

(assert (= (and d!460560 c!252426) b!1552174))

(assert (= (and d!460560 (not c!252426)) b!1552175))

(assert (= (and d!460560 res!693423) b!1552176))

(assert (= (and b!1552176 res!693422) b!1552177))

(declare-fun m!1824673 () Bool)

(assert (=> b!1552176 m!1824673))

(assert (=> b!1552176 m!1824001))

(declare-fun m!1824675 () Bool)

(assert (=> b!1552176 m!1824675))

(declare-fun m!1824677 () Bool)

(assert (=> d!460560 m!1824677))

(assert (=> d!460560 m!1824637))

(declare-fun m!1824679 () Bool)

(assert (=> d!460560 m!1824679))

(declare-fun m!1824681 () Bool)

(assert (=> b!1552175 m!1824681))

(assert (=> b!1551694 d!460560))

(declare-fun d!460562 () Bool)

(assert (=> d!460562 (= (++!4411 (++!4411 Nil!16779 (Cons!16779 lt!537614 Nil!16779)) lt!537603) lt!537496)))

(declare-fun lt!537685 () Unit!26027)

(declare-fun choose!9255 (List!16847 C!8716 List!16847 List!16847) Unit!26027)

(assert (=> d!460562 (= lt!537685 (choose!9255 Nil!16779 lt!537614 lt!537603 lt!537496))))

(assert (=> d!460562 (= (++!4411 Nil!16779 (Cons!16779 lt!537614 lt!537603)) lt!537496)))

(assert (=> d!460562 (= (lemmaMoveElementToOtherListKeepsConcatEq!436 Nil!16779 lt!537614 lt!537603 lt!537496) lt!537685)))

(declare-fun bs!387297 () Bool)

(assert (= bs!387297 d!460562))

(assert (=> bs!387297 m!1824201))

(assert (=> bs!387297 m!1824201))

(assert (=> bs!387297 m!1824203))

(declare-fun m!1824683 () Bool)

(assert (=> bs!387297 m!1824683))

(declare-fun m!1824685 () Bool)

(assert (=> bs!387297 m!1824685))

(assert (=> b!1551694 d!460562))

(declare-fun d!460564 () Bool)

(declare-fun lt!537688 () List!16847)

(assert (=> d!460564 (= (++!4411 Nil!16779 lt!537688) lt!537496)))

(declare-fun e!995578 () List!16847)

(assert (=> d!460564 (= lt!537688 e!995578)))

(declare-fun c!252429 () Bool)

(assert (=> d!460564 (= c!252429 ((_ is Cons!16779) Nil!16779))))

(assert (=> d!460564 (>= (size!13577 lt!537496) (size!13577 Nil!16779))))

(assert (=> d!460564 (= (getSuffix!667 lt!537496 Nil!16779) lt!537688)))

(declare-fun b!1552182 () Bool)

(assert (=> b!1552182 (= e!995578 (getSuffix!667 (tail!2205 lt!537496) (t!141250 Nil!16779)))))

(declare-fun b!1552183 () Bool)

(assert (=> b!1552183 (= e!995578 lt!537496)))

(assert (= (and d!460564 c!252429) b!1552182))

(assert (= (and d!460564 (not c!252429)) b!1552183))

(declare-fun m!1824687 () Bool)

(assert (=> d!460564 m!1824687))

(assert (=> d!460564 m!1823997))

(assert (=> d!460564 m!1824001))

(assert (=> b!1552182 m!1824195))

(assert (=> b!1552182 m!1824195))

(declare-fun m!1824689 () Bool)

(assert (=> b!1552182 m!1824689))

(assert (=> b!1551694 d!460564))

(declare-fun bs!387298 () Bool)

(declare-fun d!460566 () Bool)

(assert (= bs!387298 (and d!460566 d!460508)))

(declare-fun lambda!65701 () Int)

(assert (=> bs!387298 (= lambda!65701 lambda!65696)))

(declare-fun bs!387299 () Bool)

(assert (= bs!387299 (and d!460566 d!460538)))

(assert (=> bs!387299 (= lambda!65701 lambda!65699)))

(declare-fun bs!387300 () Bool)

(assert (= bs!387300 (and d!460566 d!460458)))

(assert (=> bs!387300 (= lambda!65701 lambda!65679)))

(declare-fun bs!387301 () Bool)

(assert (= bs!387301 (and d!460566 d!460500)))

(assert (=> bs!387301 (= lambda!65701 lambda!65695)))

(declare-fun bs!387302 () Bool)

(assert (= bs!387302 (and d!460566 d!460464)))

(assert (=> bs!387302 (= lambda!65701 lambda!65681)))

(declare-fun bs!387303 () Bool)

(assert (= bs!387303 (and d!460566 d!460540)))

(assert (=> bs!387303 (= lambda!65701 lambda!65700)))

(declare-fun bs!387304 () Bool)

(assert (= bs!387304 (and d!460566 d!460468)))

(assert (=> bs!387304 (= lambda!65701 lambda!65683)))

(declare-fun bs!387305 () Bool)

(assert (= bs!387305 (and d!460566 d!460438)))

(assert (=> bs!387305 (= lambda!65701 lambda!65678)))

(declare-fun bs!387306 () Bool)

(assert (= bs!387306 (and d!460566 d!460424)))

(assert (=> bs!387306 (= lambda!65701 lambda!65676)))

(declare-fun bs!387307 () Bool)

(assert (= bs!387307 (and d!460566 d!460482)))

(assert (=> bs!387307 (= lambda!65701 lambda!65690)))

(declare-fun bs!387308 () Bool)

(assert (= bs!387308 (and d!460566 d!460460)))

(assert (=> bs!387308 (= lambda!65701 lambda!65680)))

(declare-fun bs!387309 () Bool)

(assert (= bs!387309 (and d!460566 d!460466)))

(assert (=> bs!387309 (= lambda!65701 lambda!65682)))

(declare-fun bs!387310 () Bool)

(assert (= bs!387310 (and d!460566 d!460520)))

(assert (=> bs!387310 (= lambda!65701 lambda!65698)))

(declare-fun bs!387311 () Bool)

(assert (= bs!387311 (and d!460566 d!460514)))

(assert (=> bs!387311 (= lambda!65701 lambda!65697)))

(declare-fun bs!387312 () Bool)

(assert (= bs!387312 (and d!460566 d!460408)))

(assert (=> bs!387312 (= lambda!65701 lambda!65675)))

(declare-fun bs!387313 () Bool)

(assert (= bs!387313 (and d!460566 d!460488)))

(assert (=> bs!387313 (= lambda!65701 lambda!65691)))

(declare-fun bs!387314 () Bool)

(assert (= bs!387314 (and d!460566 d!460428)))

(assert (=> bs!387314 (= lambda!65701 lambda!65677)))

(assert (=> d!460566 (= (inv!22053 (_2!9422 (_1!9423 (h!22184 mapValue!8255)))) (forall!3917 (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapValue!8255)))) lambda!65701))))

(declare-fun bs!387315 () Bool)

(assert (= bs!387315 d!460566))

(declare-fun m!1824691 () Bool)

(assert (=> bs!387315 m!1824691))

(assert (=> b!1551914 d!460566))

(declare-fun d!460568 () Bool)

(assert (=> d!460568 (= (valid!1426 (_3!1324 lt!537623)) (validCacheMapDown!158 (cache!2106 (_3!1324 lt!537623))))))

(declare-fun bs!387316 () Bool)

(assert (= bs!387316 d!460568))

(declare-fun m!1824693 () Bool)

(assert (=> bs!387316 m!1824693))

(assert (=> b!1551722 d!460568))

(declare-fun b!1552189 () Bool)

(assert (=> b!1552189 true))

(declare-fun d!460570 () Bool)

(declare-fun res!693428 () Bool)

(declare-fun e!995581 () Bool)

(assert (=> d!460570 (=> (not res!693428) (not e!995581))))

(declare-fun valid!1430 (MutableMap!1724) Bool)

(assert (=> d!460570 (= res!693428 (valid!1430 (cache!2105 cacheFurthestNullable!103)))))

(assert (=> d!460570 (= (validCacheMapFurthestNullable!71 (cache!2105 cacheFurthestNullable!103) (totalInput!2444 cacheFurthestNullable!103)) e!995581)))

(declare-fun b!1552188 () Bool)

(declare-fun res!693429 () Bool)

(assert (=> b!1552188 (=> (not res!693429) (not e!995581))))

(declare-fun invariantList!243 (List!16850) Bool)

(declare-datatypes ((ListMap!535 0))(
  ( (ListMap!536 (toList!852 List!16850)) )
))
(declare-fun map!3515 (MutableMap!1724) ListMap!535)

(assert (=> b!1552188 (= res!693429 (invariantList!243 (toList!852 (map!3515 (cache!2105 cacheFurthestNullable!103)))))))

(declare-fun lambda!65704 () Int)

(declare-fun forall!3920 (List!16850 Int) Bool)

(assert (=> b!1552189 (= e!995581 (forall!3920 (toList!852 (map!3515 (cache!2105 cacheFurthestNullable!103))) lambda!65704))))

(assert (= (and d!460570 res!693428) b!1552188))

(assert (= (and b!1552188 res!693429) b!1552189))

(declare-fun m!1824696 () Bool)

(assert (=> d!460570 m!1824696))

(declare-fun m!1824698 () Bool)

(assert (=> b!1552188 m!1824698))

(declare-fun m!1824700 () Bool)

(assert (=> b!1552188 m!1824700))

(assert (=> b!1552189 m!1824698))

(declare-fun m!1824702 () Bool)

(assert (=> b!1552189 m!1824702))

(assert (=> b!1551612 d!460570))

(assert (=> b!1551609 d!460480))

(assert (=> b!1551707 d!460474))

(declare-fun bs!387317 () Bool)

(declare-fun d!460572 () Bool)

(assert (= bs!387317 (and d!460572 d!460508)))

(declare-fun lambda!65705 () Int)

(assert (=> bs!387317 (= lambda!65705 lambda!65696)))

(declare-fun bs!387318 () Bool)

(assert (= bs!387318 (and d!460572 d!460538)))

(assert (=> bs!387318 (= lambda!65705 lambda!65699)))

(declare-fun bs!387319 () Bool)

(assert (= bs!387319 (and d!460572 d!460458)))

(assert (=> bs!387319 (= lambda!65705 lambda!65679)))

(declare-fun bs!387320 () Bool)

(assert (= bs!387320 (and d!460572 d!460566)))

(assert (=> bs!387320 (= lambda!65705 lambda!65701)))

(declare-fun bs!387321 () Bool)

(assert (= bs!387321 (and d!460572 d!460500)))

(assert (=> bs!387321 (= lambda!65705 lambda!65695)))

(declare-fun bs!387322 () Bool)

(assert (= bs!387322 (and d!460572 d!460464)))

(assert (=> bs!387322 (= lambda!65705 lambda!65681)))

(declare-fun bs!387323 () Bool)

(assert (= bs!387323 (and d!460572 d!460540)))

(assert (=> bs!387323 (= lambda!65705 lambda!65700)))

(declare-fun bs!387324 () Bool)

(assert (= bs!387324 (and d!460572 d!460468)))

(assert (=> bs!387324 (= lambda!65705 lambda!65683)))

(declare-fun bs!387325 () Bool)

(assert (= bs!387325 (and d!460572 d!460438)))

(assert (=> bs!387325 (= lambda!65705 lambda!65678)))

(declare-fun bs!387326 () Bool)

(assert (= bs!387326 (and d!460572 d!460424)))

(assert (=> bs!387326 (= lambda!65705 lambda!65676)))

(declare-fun bs!387327 () Bool)

(assert (= bs!387327 (and d!460572 d!460482)))

(assert (=> bs!387327 (= lambda!65705 lambda!65690)))

(declare-fun bs!387328 () Bool)

(assert (= bs!387328 (and d!460572 d!460460)))

(assert (=> bs!387328 (= lambda!65705 lambda!65680)))

(declare-fun bs!387329 () Bool)

(assert (= bs!387329 (and d!460572 d!460466)))

(assert (=> bs!387329 (= lambda!65705 lambda!65682)))

(declare-fun bs!387330 () Bool)

(assert (= bs!387330 (and d!460572 d!460520)))

(assert (=> bs!387330 (= lambda!65705 lambda!65698)))

(declare-fun bs!387331 () Bool)

(assert (= bs!387331 (and d!460572 d!460514)))

(assert (=> bs!387331 (= lambda!65705 lambda!65697)))

(declare-fun bs!387332 () Bool)

(assert (= bs!387332 (and d!460572 d!460408)))

(assert (=> bs!387332 (= lambda!65705 lambda!65675)))

(declare-fun bs!387333 () Bool)

(assert (= bs!387333 (and d!460572 d!460488)))

(assert (=> bs!387333 (= lambda!65705 lambda!65691)))

(declare-fun bs!387334 () Bool)

(assert (= bs!387334 (and d!460572 d!460428)))

(assert (=> bs!387334 (= lambda!65705 lambda!65677)))

(assert (=> d!460572 (= (inv!22053 setElem!10620) (forall!3917 (exprs!1287 setElem!10620) lambda!65705))))

(declare-fun bs!387335 () Bool)

(assert (= bs!387335 d!460572))

(declare-fun m!1824704 () Bool)

(assert (=> bs!387335 m!1824704))

(assert (=> setNonEmpty!10620 d!460572))

(declare-fun d!460574 () Bool)

(assert (=> d!460574 (= (inv!22054 (xs!8359 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) (<= (size!13577 (innerList!5619 (xs!8359 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) 2147483647))))

(declare-fun bs!387336 () Bool)

(assert (= bs!387336 d!460574))

(declare-fun m!1824706 () Bool)

(assert (=> bs!387336 m!1824706))

(assert (=> b!1551894 d!460574))

(declare-fun b!1552210 () Bool)

(declare-fun e!995594 () Int)

(assert (=> b!1552210 (= e!995594 0)))

(declare-fun d!460576 () Bool)

(declare-fun e!995593 () Bool)

(assert (=> d!460576 e!995593))

(declare-fun res!693432 () Bool)

(assert (=> d!460576 (=> (not res!693432) (not e!995593))))

(declare-fun lt!537691 () List!16847)

(assert (=> d!460576 (= res!693432 (= ((_ map implies) (content!2340 lt!537691) (content!2340 (list!6482 totalInput!568))) ((as const (InoxSet C!8716)) true)))))

(declare-fun e!995596 () List!16847)

(assert (=> d!460576 (= lt!537691 e!995596)))

(declare-fun c!252441 () Bool)

(assert (=> d!460576 (= c!252441 ((_ is Nil!16779) (list!6482 totalInput!568)))))

(assert (=> d!460576 (= (drop!782 (list!6482 totalInput!568) (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496))) lt!537691)))

(declare-fun b!1552211 () Bool)

(declare-fun e!995592 () List!16847)

(assert (=> b!1552211 (= e!995592 (list!6482 totalInput!568))))

(declare-fun call!101864 () Int)

(declare-fun b!1552212 () Bool)

(assert (=> b!1552212 (= e!995594 (- call!101864 (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496))))))

(declare-fun b!1552213 () Bool)

(assert (=> b!1552213 (= e!995592 (drop!782 (t!141250 (list!6482 totalInput!568)) (- (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496)) 1)))))

(declare-fun b!1552214 () Bool)

(assert (=> b!1552214 (= e!995596 Nil!16779)))

(declare-fun bm!101859 () Bool)

(assert (=> bm!101859 (= call!101864 (size!13577 (list!6482 totalInput!568)))))

(declare-fun b!1552215 () Bool)

(declare-fun e!995595 () Int)

(assert (=> b!1552215 (= e!995595 e!995594)))

(declare-fun c!252439 () Bool)

(assert (=> b!1552215 (= c!252439 (>= (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496)) call!101864))))

(declare-fun b!1552216 () Bool)

(assert (=> b!1552216 (= e!995595 call!101864)))

(declare-fun b!1552217 () Bool)

(assert (=> b!1552217 (= e!995596 e!995592)))

(declare-fun c!252438 () Bool)

(assert (=> b!1552217 (= c!252438 (<= (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496)) 0))))

(declare-fun b!1552218 () Bool)

(assert (=> b!1552218 (= e!995593 (= (size!13577 lt!537691) e!995595))))

(declare-fun c!252440 () Bool)

(assert (=> b!1552218 (= c!252440 (<= (- (size!13577 (list!6482 totalInput!568)) (size!13577 lt!537496)) 0))))

(assert (= (and d!460576 c!252441) b!1552214))

(assert (= (and d!460576 (not c!252441)) b!1552217))

(assert (= (and b!1552217 c!252438) b!1552211))

(assert (= (and b!1552217 (not c!252438)) b!1552213))

(assert (= (and d!460576 res!693432) b!1552218))

(assert (= (and b!1552218 c!252440) b!1552216))

(assert (= (and b!1552218 (not c!252440)) b!1552215))

(assert (= (and b!1552215 c!252439) b!1552210))

(assert (= (and b!1552215 (not c!252439)) b!1552212))

(assert (= (or b!1552216 b!1552215 b!1552212) bm!101859))

(declare-fun m!1824708 () Bool)

(assert (=> d!460576 m!1824708))

(assert (=> d!460576 m!1824053))

(declare-fun m!1824710 () Bool)

(assert (=> d!460576 m!1824710))

(declare-fun m!1824712 () Bool)

(assert (=> b!1552213 m!1824712))

(assert (=> bm!101859 m!1824053))

(assert (=> bm!101859 m!1824089))

(declare-fun m!1824714 () Bool)

(assert (=> b!1552218 m!1824714))

(assert (=> d!460324 d!460576))

(declare-fun d!460578 () Bool)

(declare-fun lt!537692 () Int)

(assert (=> d!460578 (>= lt!537692 0)))

(declare-fun e!995597 () Int)

(assert (=> d!460578 (= lt!537692 e!995597)))

(declare-fun c!252442 () Bool)

(assert (=> d!460578 (= c!252442 ((_ is Nil!16779) (list!6482 totalInput!568)))))

(assert (=> d!460578 (= (size!13577 (list!6482 totalInput!568)) lt!537692)))

(declare-fun b!1552219 () Bool)

(assert (=> b!1552219 (= e!995597 0)))

(declare-fun b!1552220 () Bool)

(assert (=> b!1552220 (= e!995597 (+ 1 (size!13577 (t!141250 (list!6482 totalInput!568)))))))

(assert (= (and d!460578 c!252442) b!1552219))

(assert (= (and d!460578 (not c!252442)) b!1552220))

(declare-fun m!1824716 () Bool)

(assert (=> b!1552220 m!1824716))

(assert (=> d!460324 d!460578))

(assert (=> d!460324 d!460352))

(declare-fun b!1552221 () Bool)

(declare-fun res!693434 () Bool)

(declare-fun e!995599 () Bool)

(assert (=> b!1552221 (=> (not res!693434) (not e!995599))))

(assert (=> b!1552221 (= res!693434 (isBalanced!1640 (right!13978 (c!252328 input!1676))))))

(declare-fun b!1552222 () Bool)

(declare-fun res!693435 () Bool)

(assert (=> b!1552222 (=> (not res!693435) (not e!995599))))

(assert (=> b!1552222 (= res!693435 (<= (- (height!827 (left!13648 (c!252328 input!1676))) (height!827 (right!13978 (c!252328 input!1676)))) 1))))

(declare-fun b!1552223 () Bool)

(declare-fun e!995598 () Bool)

(assert (=> b!1552223 (= e!995598 e!995599)))

(declare-fun res!693438 () Bool)

(assert (=> b!1552223 (=> (not res!693438) (not e!995599))))

(assert (=> b!1552223 (= res!693438 (<= (- 1) (- (height!827 (left!13648 (c!252328 input!1676))) (height!827 (right!13978 (c!252328 input!1676))))))))

(declare-fun b!1552224 () Bool)

(declare-fun res!693436 () Bool)

(assert (=> b!1552224 (=> (not res!693436) (not e!995599))))

(assert (=> b!1552224 (= res!693436 (not (isEmpty!10098 (left!13648 (c!252328 input!1676)))))))

(declare-fun b!1552225 () Bool)

(declare-fun res!693433 () Bool)

(assert (=> b!1552225 (=> (not res!693433) (not e!995599))))

(assert (=> b!1552225 (= res!693433 (isBalanced!1640 (left!13648 (c!252328 input!1676))))))

(declare-fun b!1552226 () Bool)

(assert (=> b!1552226 (= e!995599 (not (isEmpty!10098 (right!13978 (c!252328 input!1676)))))))

(declare-fun d!460580 () Bool)

(declare-fun res!693437 () Bool)

(assert (=> d!460580 (=> res!693437 e!995598)))

(assert (=> d!460580 (= res!693437 (not ((_ is Node!5559) (c!252328 input!1676))))))

(assert (=> d!460580 (= (isBalanced!1640 (c!252328 input!1676)) e!995598)))

(assert (= (and d!460580 (not res!693437)) b!1552223))

(assert (= (and b!1552223 res!693438) b!1552222))

(assert (= (and b!1552222 res!693435) b!1552225))

(assert (= (and b!1552225 res!693433) b!1552221))

(assert (= (and b!1552221 res!693434) b!1552224))

(assert (= (and b!1552224 res!693436) b!1552226))

(declare-fun m!1824718 () Bool)

(assert (=> b!1552224 m!1824718))

(assert (=> b!1552222 m!1824605))

(assert (=> b!1552222 m!1824607))

(declare-fun m!1824720 () Bool)

(assert (=> b!1552225 m!1824720))

(declare-fun m!1824722 () Bool)

(assert (=> b!1552221 m!1824722))

(assert (=> b!1552223 m!1824605))

(assert (=> b!1552223 m!1824607))

(declare-fun m!1824724 () Bool)

(assert (=> b!1552226 m!1824724))

(assert (=> d!460320 d!460580))

(declare-fun d!460582 () Bool)

(declare-fun lt!537693 () Int)

(assert (=> d!460582 (>= lt!537693 0)))

(declare-fun e!995600 () Int)

(assert (=> d!460582 (= lt!537693 e!995600)))

(declare-fun c!252443 () Bool)

(assert (=> d!460582 (= c!252443 ((_ is Nil!16779) (list!6482 (_1!9425 (_1!9426 lt!537493)))))))

(assert (=> d!460582 (= (size!13577 (list!6482 (_1!9425 (_1!9426 lt!537493)))) lt!537693)))

(declare-fun b!1552227 () Bool)

(assert (=> b!1552227 (= e!995600 0)))

(declare-fun b!1552228 () Bool)

(assert (=> b!1552228 (= e!995600 (+ 1 (size!13577 (t!141250 (list!6482 (_1!9425 (_1!9426 lt!537493)))))))))

(assert (= (and d!460582 c!252443) b!1552227))

(assert (= (and d!460582 (not c!252443)) b!1552228))

(declare-fun m!1824726 () Bool)

(assert (=> b!1552228 m!1824726))

(assert (=> d!460344 d!460582))

(assert (=> d!460344 d!460346))

(declare-fun d!460584 () Bool)

(declare-fun lt!537696 () Int)

(assert (=> d!460584 (= lt!537696 (size!13577 (list!6483 (c!252328 (_1!9425 (_1!9426 lt!537493))))))))

(assert (=> d!460584 (= lt!537696 (ite ((_ is Empty!5559) (c!252328 (_1!9425 (_1!9426 lt!537493)))) 0 (ite ((_ is Leaf!8239) (c!252328 (_1!9425 (_1!9426 lt!537493)))) (csize!11349 (c!252328 (_1!9425 (_1!9426 lt!537493)))) (csize!11348 (c!252328 (_1!9425 (_1!9426 lt!537493)))))))))

(assert (=> d!460584 (= (size!13580 (c!252328 (_1!9425 (_1!9426 lt!537493)))) lt!537696)))

(declare-fun bs!387337 () Bool)

(assert (= bs!387337 d!460584))

(assert (=> bs!387337 m!1824155))

(assert (=> bs!387337 m!1824155))

(declare-fun m!1824728 () Bool)

(assert (=> bs!387337 m!1824728))

(assert (=> d!460344 d!460584))

(declare-fun bs!387338 () Bool)

(declare-fun d!460586 () Bool)

(assert (= bs!387338 (and d!460586 d!460538)))

(declare-fun lambda!65706 () Int)

(assert (=> bs!387338 (= lambda!65706 lambda!65699)))

(declare-fun bs!387339 () Bool)

(assert (= bs!387339 (and d!460586 d!460458)))

(assert (=> bs!387339 (= lambda!65706 lambda!65679)))

(declare-fun bs!387340 () Bool)

(assert (= bs!387340 (and d!460586 d!460566)))

(assert (=> bs!387340 (= lambda!65706 lambda!65701)))

(declare-fun bs!387341 () Bool)

(assert (= bs!387341 (and d!460586 d!460500)))

(assert (=> bs!387341 (= lambda!65706 lambda!65695)))

(declare-fun bs!387342 () Bool)

(assert (= bs!387342 (and d!460586 d!460464)))

(assert (=> bs!387342 (= lambda!65706 lambda!65681)))

(declare-fun bs!387343 () Bool)

(assert (= bs!387343 (and d!460586 d!460540)))

(assert (=> bs!387343 (= lambda!65706 lambda!65700)))

(declare-fun bs!387344 () Bool)

(assert (= bs!387344 (and d!460586 d!460468)))

(assert (=> bs!387344 (= lambda!65706 lambda!65683)))

(declare-fun bs!387345 () Bool)

(assert (= bs!387345 (and d!460586 d!460438)))

(assert (=> bs!387345 (= lambda!65706 lambda!65678)))

(declare-fun bs!387346 () Bool)

(assert (= bs!387346 (and d!460586 d!460424)))

(assert (=> bs!387346 (= lambda!65706 lambda!65676)))

(declare-fun bs!387347 () Bool)

(assert (= bs!387347 (and d!460586 d!460482)))

(assert (=> bs!387347 (= lambda!65706 lambda!65690)))

(declare-fun bs!387348 () Bool)

(assert (= bs!387348 (and d!460586 d!460460)))

(assert (=> bs!387348 (= lambda!65706 lambda!65680)))

(declare-fun bs!387349 () Bool)

(assert (= bs!387349 (and d!460586 d!460466)))

(assert (=> bs!387349 (= lambda!65706 lambda!65682)))

(declare-fun bs!387350 () Bool)

(assert (= bs!387350 (and d!460586 d!460520)))

(assert (=> bs!387350 (= lambda!65706 lambda!65698)))

(declare-fun bs!387351 () Bool)

(assert (= bs!387351 (and d!460586 d!460572)))

(assert (=> bs!387351 (= lambda!65706 lambda!65705)))

(declare-fun bs!387352 () Bool)

(assert (= bs!387352 (and d!460586 d!460508)))

(assert (=> bs!387352 (= lambda!65706 lambda!65696)))

(declare-fun bs!387353 () Bool)

(assert (= bs!387353 (and d!460586 d!460514)))

(assert (=> bs!387353 (= lambda!65706 lambda!65697)))

(declare-fun bs!387354 () Bool)

(assert (= bs!387354 (and d!460586 d!460408)))

(assert (=> bs!387354 (= lambda!65706 lambda!65675)))

(declare-fun bs!387355 () Bool)

(assert (= bs!387355 (and d!460586 d!460488)))

(assert (=> bs!387355 (= lambda!65706 lambda!65691)))

(declare-fun bs!387356 () Bool)

(assert (= bs!387356 (and d!460586 d!460428)))

(assert (=> bs!387356 (= lambda!65706 lambda!65677)))

(assert (=> d!460586 (= (inv!22053 setElem!10619) (forall!3917 (exprs!1287 setElem!10619) lambda!65706))))

(declare-fun bs!387357 () Bool)

(assert (= bs!387357 d!460586))

(declare-fun m!1824730 () Bool)

(assert (=> bs!387357 m!1824730))

(assert (=> setNonEmpty!10619 d!460586))

(declare-fun d!460588 () Bool)

(declare-fun lt!537697 () Int)

(assert (=> d!460588 (>= lt!537697 0)))

(declare-fun e!995601 () Int)

(assert (=> d!460588 (= lt!537697 e!995601)))

(declare-fun c!252444 () Bool)

(assert (=> d!460588 (= c!252444 ((_ is Nil!16779) (_2!9428 (get!4841 lt!537519))))))

(assert (=> d!460588 (= (size!13577 (_2!9428 (get!4841 lt!537519))) lt!537697)))

(declare-fun b!1552229 () Bool)

(assert (=> b!1552229 (= e!995601 0)))

(declare-fun b!1552230 () Bool)

(assert (=> b!1552230 (= e!995601 (+ 1 (size!13577 (t!141250 (_2!9428 (get!4841 lt!537519))))))))

(assert (= (and d!460588 c!252444) b!1552229))

(assert (= (and d!460588 (not c!252444)) b!1552230))

(declare-fun m!1824732 () Bool)

(assert (=> b!1552230 m!1824732))

(assert (=> b!1551641 d!460588))

(assert (=> b!1551641 d!460422))

(assert (=> b!1551641 d!460352))

(declare-fun d!460590 () Bool)

(declare-fun c!252445 () Bool)

(assert (=> d!460590 (= c!252445 ((_ is Node!5559) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))))

(declare-fun e!995602 () Bool)

(assert (=> d!460590 (= (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))) e!995602)))

(declare-fun b!1552231 () Bool)

(assert (=> b!1552231 (= e!995602 (inv!22051 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))))

(declare-fun b!1552232 () Bool)

(declare-fun e!995603 () Bool)

(assert (=> b!1552232 (= e!995602 e!995603)))

(declare-fun res!693439 () Bool)

(assert (=> b!1552232 (= res!693439 (not ((_ is Leaf!8239) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))))))

(assert (=> b!1552232 (=> res!693439 e!995603)))

(declare-fun b!1552233 () Bool)

(assert (=> b!1552233 (= e!995603 (inv!22052 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))))

(assert (= (and d!460590 c!252445) b!1552231))

(assert (= (and d!460590 (not c!252445)) b!1552232))

(assert (= (and b!1552232 (not res!693439)) b!1552233))

(declare-fun m!1824734 () Bool)

(assert (=> b!1552231 m!1824734))

(declare-fun m!1824736 () Bool)

(assert (=> b!1552233 m!1824736))

(assert (=> b!1551927 d!460590))

(assert (=> b!1551567 d!460396))

(assert (=> bm!101823 d!460504))

(declare-fun bs!387358 () Bool)

(declare-fun d!460592 () Bool)

(assert (= bs!387358 (and d!460592 d!460586)))

(declare-fun lambda!65707 () Int)

(assert (=> bs!387358 (= lambda!65707 lambda!65706)))

(declare-fun bs!387359 () Bool)

(assert (= bs!387359 (and d!460592 d!460538)))

(assert (=> bs!387359 (= lambda!65707 lambda!65699)))

(declare-fun bs!387360 () Bool)

(assert (= bs!387360 (and d!460592 d!460458)))

(assert (=> bs!387360 (= lambda!65707 lambda!65679)))

(declare-fun bs!387361 () Bool)

(assert (= bs!387361 (and d!460592 d!460566)))

(assert (=> bs!387361 (= lambda!65707 lambda!65701)))

(declare-fun bs!387362 () Bool)

(assert (= bs!387362 (and d!460592 d!460500)))

(assert (=> bs!387362 (= lambda!65707 lambda!65695)))

(declare-fun bs!387363 () Bool)

(assert (= bs!387363 (and d!460592 d!460464)))

(assert (=> bs!387363 (= lambda!65707 lambda!65681)))

(declare-fun bs!387364 () Bool)

(assert (= bs!387364 (and d!460592 d!460540)))

(assert (=> bs!387364 (= lambda!65707 lambda!65700)))

(declare-fun bs!387365 () Bool)

(assert (= bs!387365 (and d!460592 d!460468)))

(assert (=> bs!387365 (= lambda!65707 lambda!65683)))

(declare-fun bs!387366 () Bool)

(assert (= bs!387366 (and d!460592 d!460438)))

(assert (=> bs!387366 (= lambda!65707 lambda!65678)))

(declare-fun bs!387367 () Bool)

(assert (= bs!387367 (and d!460592 d!460424)))

(assert (=> bs!387367 (= lambda!65707 lambda!65676)))

(declare-fun bs!387368 () Bool)

(assert (= bs!387368 (and d!460592 d!460482)))

(assert (=> bs!387368 (= lambda!65707 lambda!65690)))

(declare-fun bs!387369 () Bool)

(assert (= bs!387369 (and d!460592 d!460460)))

(assert (=> bs!387369 (= lambda!65707 lambda!65680)))

(declare-fun bs!387370 () Bool)

(assert (= bs!387370 (and d!460592 d!460466)))

(assert (=> bs!387370 (= lambda!65707 lambda!65682)))

(declare-fun bs!387371 () Bool)

(assert (= bs!387371 (and d!460592 d!460520)))

(assert (=> bs!387371 (= lambda!65707 lambda!65698)))

(declare-fun bs!387372 () Bool)

(assert (= bs!387372 (and d!460592 d!460572)))

(assert (=> bs!387372 (= lambda!65707 lambda!65705)))

(declare-fun bs!387373 () Bool)

(assert (= bs!387373 (and d!460592 d!460508)))

(assert (=> bs!387373 (= lambda!65707 lambda!65696)))

(declare-fun bs!387374 () Bool)

(assert (= bs!387374 (and d!460592 d!460514)))

(assert (=> bs!387374 (= lambda!65707 lambda!65697)))

(declare-fun bs!387375 () Bool)

(assert (= bs!387375 (and d!460592 d!460408)))

(assert (=> bs!387375 (= lambda!65707 lambda!65675)))

(declare-fun bs!387376 () Bool)

(assert (= bs!387376 (and d!460592 d!460488)))

(assert (=> bs!387376 (= lambda!65707 lambda!65691)))

(declare-fun bs!387377 () Bool)

(assert (= bs!387377 (and d!460592 d!460428)))

(assert (=> bs!387377 (= lambda!65707 lambda!65677)))

(assert (=> d!460592 (= (inv!22053 setElem!10635) (forall!3917 (exprs!1287 setElem!10635) lambda!65707))))

(declare-fun bs!387378 () Bool)

(assert (= bs!387378 d!460592))

(declare-fun m!1824738 () Bool)

(assert (=> bs!387378 m!1824738))

(assert (=> setNonEmpty!10636 d!460592))

(declare-fun d!460594 () Bool)

(assert (=> d!460594 true))

(assert (=> d!460594 true))

(declare-fun res!693442 () Bool)

(assert (=> d!460594 (= (choose!9251 lambda!65669) res!693442)))

(assert (=> d!460392 d!460594))

(declare-fun d!460596 () Bool)

(assert (=> d!460596 (= (isEmpty!10094 (_1!9424 lt!537595)) ((_ is Nil!16779) (_1!9424 lt!537595)))))

(assert (=> b!1551691 d!460596))

(declare-fun b!1552236 () Bool)

(declare-fun res!693443 () Bool)

(declare-fun e!995604 () Bool)

(assert (=> b!1552236 (=> (not res!693443) (not e!995604))))

(declare-fun lt!537698 () List!16847)

(assert (=> b!1552236 (= res!693443 (= (size!13577 lt!537698) (+ (size!13577 Nil!16779) (size!13577 lt!537496))))))

(declare-fun b!1552234 () Bool)

(declare-fun e!995605 () List!16847)

(assert (=> b!1552234 (= e!995605 lt!537496)))

(declare-fun b!1552237 () Bool)

(assert (=> b!1552237 (= e!995604 (or (not (= lt!537496 Nil!16779)) (= lt!537698 Nil!16779)))))

(declare-fun d!460598 () Bool)

(assert (=> d!460598 e!995604))

(declare-fun res!693444 () Bool)

(assert (=> d!460598 (=> (not res!693444) (not e!995604))))

(assert (=> d!460598 (= res!693444 (= (content!2340 lt!537698) ((_ map or) (content!2340 Nil!16779) (content!2340 lt!537496))))))

(assert (=> d!460598 (= lt!537698 e!995605)))

(declare-fun c!252446 () Bool)

(assert (=> d!460598 (= c!252446 ((_ is Nil!16779) Nil!16779))))

(assert (=> d!460598 (= (++!4411 Nil!16779 lt!537496) lt!537698)))

(declare-fun b!1552235 () Bool)

(assert (=> b!1552235 (= e!995605 (Cons!16779 (h!22180 Nil!16779) (++!4411 (t!141250 Nil!16779) lt!537496)))))

(assert (= (and d!460598 c!252446) b!1552234))

(assert (= (and d!460598 (not c!252446)) b!1552235))

(assert (= (and d!460598 res!693444) b!1552236))

(assert (= (and b!1552236 res!693443) b!1552237))

(declare-fun m!1824740 () Bool)

(assert (=> b!1552236 m!1824740))

(assert (=> b!1552236 m!1824001))

(assert (=> b!1552236 m!1823997))

(declare-fun m!1824742 () Bool)

(assert (=> d!460598 m!1824742))

(assert (=> d!460598 m!1824637))

(declare-fun m!1824744 () Bool)

(assert (=> d!460598 m!1824744))

(declare-fun m!1824746 () Bool)

(assert (=> b!1552235 m!1824746))

(assert (=> d!460358 d!460598))

(declare-fun d!460600 () Bool)

(declare-fun lostCauseFct!148 (Regex!4269) Bool)

(assert (=> d!460600 (= (lostCause!385 (regex!2941 rule!240)) (lostCauseFct!148 (regex!2941 rule!240)))))

(declare-fun bs!387379 () Bool)

(assert (= bs!387379 d!460600))

(declare-fun m!1824748 () Bool)

(assert (=> bs!387379 m!1824748))

(assert (=> d!460358 d!460600))

(declare-fun b!1552238 () Bool)

(declare-fun e!995607 () Bool)

(declare-fun e!995606 () Bool)

(assert (=> b!1552238 (= e!995607 e!995606)))

(declare-fun res!693446 () Bool)

(assert (=> b!1552238 (=> (not res!693446) (not e!995606))))

(assert (=> b!1552238 (= res!693446 (not ((_ is Nil!16779) (++!4411 Nil!16779 lt!537496))))))

(declare-fun b!1552241 () Bool)

(declare-fun e!995608 () Bool)

(assert (=> b!1552241 (= e!995608 (>= (size!13577 (++!4411 Nil!16779 lt!537496)) (size!13577 Nil!16779)))))

(declare-fun b!1552239 () Bool)

(declare-fun res!693448 () Bool)

(assert (=> b!1552239 (=> (not res!693448) (not e!995606))))

(assert (=> b!1552239 (= res!693448 (= (head!3110 Nil!16779) (head!3110 (++!4411 Nil!16779 lt!537496))))))

(declare-fun d!460602 () Bool)

(assert (=> d!460602 e!995608))

(declare-fun res!693445 () Bool)

(assert (=> d!460602 (=> res!693445 e!995608)))

(declare-fun lt!537699 () Bool)

(assert (=> d!460602 (= res!693445 (not lt!537699))))

(assert (=> d!460602 (= lt!537699 e!995607)))

(declare-fun res!693447 () Bool)

(assert (=> d!460602 (=> res!693447 e!995607)))

(assert (=> d!460602 (= res!693447 ((_ is Nil!16779) Nil!16779))))

(assert (=> d!460602 (= (isPrefix!1257 Nil!16779 (++!4411 Nil!16779 lt!537496)) lt!537699)))

(declare-fun b!1552240 () Bool)

(assert (=> b!1552240 (= e!995606 (isPrefix!1257 (tail!2205 Nil!16779) (tail!2205 (++!4411 Nil!16779 lt!537496))))))

(assert (= (and d!460602 (not res!693447)) b!1552238))

(assert (= (and b!1552238 res!693446) b!1552239))

(assert (= (and b!1552239 res!693448) b!1552240))

(assert (= (and d!460602 (not res!693445)) b!1552241))

(assert (=> b!1552241 m!1824175))

(declare-fun m!1824750 () Bool)

(assert (=> b!1552241 m!1824750))

(assert (=> b!1552241 m!1824001))

(declare-fun m!1824752 () Bool)

(assert (=> b!1552239 m!1824752))

(assert (=> b!1552239 m!1824175))

(declare-fun m!1824754 () Bool)

(assert (=> b!1552239 m!1824754))

(declare-fun m!1824756 () Bool)

(assert (=> b!1552240 m!1824756))

(assert (=> b!1552240 m!1824175))

(declare-fun m!1824758 () Bool)

(assert (=> b!1552240 m!1824758))

(assert (=> b!1552240 m!1824756))

(assert (=> b!1552240 m!1824758))

(declare-fun m!1824760 () Bool)

(assert (=> b!1552240 m!1824760))

(assert (=> d!460358 d!460602))

(declare-fun d!460604 () Bool)

(assert (=> d!460604 (= lt!537496 lt!537606)))

(declare-fun lt!537702 () Unit!26027)

(declare-fun choose!9256 (List!16847 List!16847 List!16847 List!16847 List!16847) Unit!26027)

(assert (=> d!460604 (= lt!537702 (choose!9256 Nil!16779 lt!537496 Nil!16779 lt!537606 lt!537496))))

(assert (=> d!460604 (isPrefix!1257 Nil!16779 lt!537496)))

(assert (=> d!460604 (= (lemmaSamePrefixThenSameSuffix!619 Nil!16779 lt!537496 Nil!16779 lt!537606 lt!537496) lt!537702)))

(declare-fun bs!387380 () Bool)

(assert (= bs!387380 d!460604))

(declare-fun m!1824762 () Bool)

(assert (=> bs!387380 m!1824762))

(assert (=> bs!387380 m!1824645))

(assert (=> d!460358 d!460604))

(declare-fun d!460606 () Bool)

(assert (=> d!460606 (isPrefix!1257 Nil!16779 (++!4411 Nil!16779 lt!537496))))

(declare-fun lt!537705 () Unit!26027)

(declare-fun choose!9257 (List!16847 List!16847) Unit!26027)

(assert (=> d!460606 (= lt!537705 (choose!9257 Nil!16779 lt!537496))))

(assert (=> d!460606 (= (lemmaConcatTwoListThenFirstIsPrefix!782 Nil!16779 lt!537496) lt!537705)))

(declare-fun bs!387381 () Bool)

(assert (= bs!387381 d!460606))

(assert (=> bs!387381 m!1824175))

(assert (=> bs!387381 m!1824175))

(assert (=> bs!387381 m!1824183))

(declare-fun m!1824764 () Bool)

(assert (=> bs!387381 m!1824764))

(assert (=> d!460358 d!460606))

(assert (=> d!460358 d!460564))

(declare-fun b!1552244 () Bool)

(declare-fun res!693449 () Bool)

(declare-fun e!995609 () Bool)

(assert (=> b!1552244 (=> (not res!693449) (not e!995609))))

(declare-fun lt!537706 () List!16847)

(assert (=> b!1552244 (= res!693449 (= (size!13577 lt!537706) (+ (size!13577 (_1!9424 lt!537617)) (size!13577 (_2!9424 lt!537617)))))))

(declare-fun b!1552242 () Bool)

(declare-fun e!995610 () List!16847)

(assert (=> b!1552242 (= e!995610 (_2!9424 lt!537617))))

(declare-fun b!1552245 () Bool)

(assert (=> b!1552245 (= e!995609 (or (not (= (_2!9424 lt!537617) Nil!16779)) (= lt!537706 (_1!9424 lt!537617))))))

(declare-fun d!460608 () Bool)

(assert (=> d!460608 e!995609))

(declare-fun res!693450 () Bool)

(assert (=> d!460608 (=> (not res!693450) (not e!995609))))

(assert (=> d!460608 (= res!693450 (= (content!2340 lt!537706) ((_ map or) (content!2340 (_1!9424 lt!537617)) (content!2340 (_2!9424 lt!537617)))))))

(assert (=> d!460608 (= lt!537706 e!995610)))

(declare-fun c!252447 () Bool)

(assert (=> d!460608 (= c!252447 ((_ is Nil!16779) (_1!9424 lt!537617)))))

(assert (=> d!460608 (= (++!4411 (_1!9424 lt!537617) (_2!9424 lt!537617)) lt!537706)))

(declare-fun b!1552243 () Bool)

(assert (=> b!1552243 (= e!995610 (Cons!16779 (h!22180 (_1!9424 lt!537617)) (++!4411 (t!141250 (_1!9424 lt!537617)) (_2!9424 lt!537617))))))

(assert (= (and d!460608 c!252447) b!1552242))

(assert (= (and d!460608 (not c!252447)) b!1552243))

(assert (= (and d!460608 res!693450) b!1552244))

(assert (= (and b!1552244 res!693449) b!1552245))

(declare-fun m!1824766 () Bool)

(assert (=> b!1552244 m!1824766))

(assert (=> b!1552244 m!1824171))

(declare-fun m!1824768 () Bool)

(assert (=> b!1552244 m!1824768))

(declare-fun m!1824770 () Bool)

(assert (=> d!460608 m!1824770))

(declare-fun m!1824772 () Bool)

(assert (=> d!460608 m!1824772))

(declare-fun m!1824774 () Bool)

(assert (=> d!460608 m!1824774))

(declare-fun m!1824776 () Bool)

(assert (=> b!1552243 m!1824776))

(assert (=> d!460358 d!460608))

(assert (=> d!460358 d!460406))

(assert (=> d!460370 d!460406))

(declare-fun bs!387382 () Bool)

(declare-fun d!460610 () Bool)

(assert (= bs!387382 (and d!460610 d!460586)))

(declare-fun lambda!65708 () Int)

(assert (=> bs!387382 (= lambda!65708 lambda!65706)))

(declare-fun bs!387383 () Bool)

(assert (= bs!387383 (and d!460610 d!460538)))

(assert (=> bs!387383 (= lambda!65708 lambda!65699)))

(declare-fun bs!387384 () Bool)

(assert (= bs!387384 (and d!460610 d!460592)))

(assert (=> bs!387384 (= lambda!65708 lambda!65707)))

(declare-fun bs!387385 () Bool)

(assert (= bs!387385 (and d!460610 d!460458)))

(assert (=> bs!387385 (= lambda!65708 lambda!65679)))

(declare-fun bs!387386 () Bool)

(assert (= bs!387386 (and d!460610 d!460566)))

(assert (=> bs!387386 (= lambda!65708 lambda!65701)))

(declare-fun bs!387387 () Bool)

(assert (= bs!387387 (and d!460610 d!460500)))

(assert (=> bs!387387 (= lambda!65708 lambda!65695)))

(declare-fun bs!387388 () Bool)

(assert (= bs!387388 (and d!460610 d!460464)))

(assert (=> bs!387388 (= lambda!65708 lambda!65681)))

(declare-fun bs!387389 () Bool)

(assert (= bs!387389 (and d!460610 d!460540)))

(assert (=> bs!387389 (= lambda!65708 lambda!65700)))

(declare-fun bs!387390 () Bool)

(assert (= bs!387390 (and d!460610 d!460468)))

(assert (=> bs!387390 (= lambda!65708 lambda!65683)))

(declare-fun bs!387391 () Bool)

(assert (= bs!387391 (and d!460610 d!460438)))

(assert (=> bs!387391 (= lambda!65708 lambda!65678)))

(declare-fun bs!387392 () Bool)

(assert (= bs!387392 (and d!460610 d!460424)))

(assert (=> bs!387392 (= lambda!65708 lambda!65676)))

(declare-fun bs!387393 () Bool)

(assert (= bs!387393 (and d!460610 d!460482)))

(assert (=> bs!387393 (= lambda!65708 lambda!65690)))

(declare-fun bs!387394 () Bool)

(assert (= bs!387394 (and d!460610 d!460460)))

(assert (=> bs!387394 (= lambda!65708 lambda!65680)))

(declare-fun bs!387395 () Bool)

(assert (= bs!387395 (and d!460610 d!460466)))

(assert (=> bs!387395 (= lambda!65708 lambda!65682)))

(declare-fun bs!387396 () Bool)

(assert (= bs!387396 (and d!460610 d!460520)))

(assert (=> bs!387396 (= lambda!65708 lambda!65698)))

(declare-fun bs!387397 () Bool)

(assert (= bs!387397 (and d!460610 d!460572)))

(assert (=> bs!387397 (= lambda!65708 lambda!65705)))

(declare-fun bs!387398 () Bool)

(assert (= bs!387398 (and d!460610 d!460508)))

(assert (=> bs!387398 (= lambda!65708 lambda!65696)))

(declare-fun bs!387399 () Bool)

(assert (= bs!387399 (and d!460610 d!460514)))

(assert (=> bs!387399 (= lambda!65708 lambda!65697)))

(declare-fun bs!387400 () Bool)

(assert (= bs!387400 (and d!460610 d!460408)))

(assert (=> bs!387400 (= lambda!65708 lambda!65675)))

(declare-fun bs!387401 () Bool)

(assert (= bs!387401 (and d!460610 d!460488)))

(assert (=> bs!387401 (= lambda!65708 lambda!65691)))

(declare-fun bs!387402 () Bool)

(assert (= bs!387402 (and d!460610 d!460428)))

(assert (=> bs!387402 (= lambda!65708 lambda!65677)))

(assert (=> d!460610 (= (inv!22053 setElem!10609) (forall!3917 (exprs!1287 setElem!10609) lambda!65708))))

(declare-fun bs!387403 () Bool)

(assert (= bs!387403 d!460610))

(declare-fun m!1824778 () Bool)

(assert (=> bs!387403 m!1824778))

(assert (=> setNonEmpty!10609 d!460610))

(declare-fun bs!387404 () Bool)

(declare-fun d!460612 () Bool)

(assert (= bs!387404 (and d!460612 d!460586)))

(declare-fun lambda!65709 () Int)

(assert (=> bs!387404 (= lambda!65709 lambda!65706)))

(declare-fun bs!387405 () Bool)

(assert (= bs!387405 (and d!460612 d!460538)))

(assert (=> bs!387405 (= lambda!65709 lambda!65699)))

(declare-fun bs!387406 () Bool)

(assert (= bs!387406 (and d!460612 d!460592)))

(assert (=> bs!387406 (= lambda!65709 lambda!65707)))

(declare-fun bs!387407 () Bool)

(assert (= bs!387407 (and d!460612 d!460458)))

(assert (=> bs!387407 (= lambda!65709 lambda!65679)))

(declare-fun bs!387408 () Bool)

(assert (= bs!387408 (and d!460612 d!460566)))

(assert (=> bs!387408 (= lambda!65709 lambda!65701)))

(declare-fun bs!387409 () Bool)

(assert (= bs!387409 (and d!460612 d!460500)))

(assert (=> bs!387409 (= lambda!65709 lambda!65695)))

(declare-fun bs!387410 () Bool)

(assert (= bs!387410 (and d!460612 d!460464)))

(assert (=> bs!387410 (= lambda!65709 lambda!65681)))

(declare-fun bs!387411 () Bool)

(assert (= bs!387411 (and d!460612 d!460540)))

(assert (=> bs!387411 (= lambda!65709 lambda!65700)))

(declare-fun bs!387412 () Bool)

(assert (= bs!387412 (and d!460612 d!460468)))

(assert (=> bs!387412 (= lambda!65709 lambda!65683)))

(declare-fun bs!387413 () Bool)

(assert (= bs!387413 (and d!460612 d!460438)))

(assert (=> bs!387413 (= lambda!65709 lambda!65678)))

(declare-fun bs!387414 () Bool)

(assert (= bs!387414 (and d!460612 d!460610)))

(assert (=> bs!387414 (= lambda!65709 lambda!65708)))

(declare-fun bs!387415 () Bool)

(assert (= bs!387415 (and d!460612 d!460424)))

(assert (=> bs!387415 (= lambda!65709 lambda!65676)))

(declare-fun bs!387416 () Bool)

(assert (= bs!387416 (and d!460612 d!460482)))

(assert (=> bs!387416 (= lambda!65709 lambda!65690)))

(declare-fun bs!387417 () Bool)

(assert (= bs!387417 (and d!460612 d!460460)))

(assert (=> bs!387417 (= lambda!65709 lambda!65680)))

(declare-fun bs!387418 () Bool)

(assert (= bs!387418 (and d!460612 d!460466)))

(assert (=> bs!387418 (= lambda!65709 lambda!65682)))

(declare-fun bs!387419 () Bool)

(assert (= bs!387419 (and d!460612 d!460520)))

(assert (=> bs!387419 (= lambda!65709 lambda!65698)))

(declare-fun bs!387420 () Bool)

(assert (= bs!387420 (and d!460612 d!460572)))

(assert (=> bs!387420 (= lambda!65709 lambda!65705)))

(declare-fun bs!387421 () Bool)

(assert (= bs!387421 (and d!460612 d!460508)))

(assert (=> bs!387421 (= lambda!65709 lambda!65696)))

(declare-fun bs!387422 () Bool)

(assert (= bs!387422 (and d!460612 d!460514)))

(assert (=> bs!387422 (= lambda!65709 lambda!65697)))

(declare-fun bs!387423 () Bool)

(assert (= bs!387423 (and d!460612 d!460408)))

(assert (=> bs!387423 (= lambda!65709 lambda!65675)))

(declare-fun bs!387424 () Bool)

(assert (= bs!387424 (and d!460612 d!460488)))

(assert (=> bs!387424 (= lambda!65709 lambda!65691)))

(declare-fun bs!387425 () Bool)

(assert (= bs!387425 (and d!460612 d!460428)))

(assert (=> bs!387425 (= lambda!65709 lambda!65677)))

(assert (=> d!460612 (= (inv!22053 setElem!10622) (forall!3917 (exprs!1287 setElem!10622) lambda!65709))))

(declare-fun bs!387426 () Bool)

(assert (= bs!387426 d!460612))

(declare-fun m!1824780 () Bool)

(assert (=> bs!387426 m!1824780))

(assert (=> setNonEmpty!10622 d!460612))

(assert (=> d!460372 d!460570))

(declare-fun bs!387427 () Bool)

(declare-fun d!460614 () Bool)

(assert (= bs!387427 (and d!460614 d!460586)))

(declare-fun lambda!65710 () Int)

(assert (=> bs!387427 (= lambda!65710 lambda!65706)))

(declare-fun bs!387428 () Bool)

(assert (= bs!387428 (and d!460614 d!460538)))

(assert (=> bs!387428 (= lambda!65710 lambda!65699)))

(declare-fun bs!387429 () Bool)

(assert (= bs!387429 (and d!460614 d!460592)))

(assert (=> bs!387429 (= lambda!65710 lambda!65707)))

(declare-fun bs!387430 () Bool)

(assert (= bs!387430 (and d!460614 d!460458)))

(assert (=> bs!387430 (= lambda!65710 lambda!65679)))

(declare-fun bs!387431 () Bool)

(assert (= bs!387431 (and d!460614 d!460566)))

(assert (=> bs!387431 (= lambda!65710 lambda!65701)))

(declare-fun bs!387432 () Bool)

(assert (= bs!387432 (and d!460614 d!460500)))

(assert (=> bs!387432 (= lambda!65710 lambda!65695)))

(declare-fun bs!387433 () Bool)

(assert (= bs!387433 (and d!460614 d!460464)))

(assert (=> bs!387433 (= lambda!65710 lambda!65681)))

(declare-fun bs!387434 () Bool)

(assert (= bs!387434 (and d!460614 d!460540)))

(assert (=> bs!387434 (= lambda!65710 lambda!65700)))

(declare-fun bs!387435 () Bool)

(assert (= bs!387435 (and d!460614 d!460468)))

(assert (=> bs!387435 (= lambda!65710 lambda!65683)))

(declare-fun bs!387436 () Bool)

(assert (= bs!387436 (and d!460614 d!460438)))

(assert (=> bs!387436 (= lambda!65710 lambda!65678)))

(declare-fun bs!387437 () Bool)

(assert (= bs!387437 (and d!460614 d!460610)))

(assert (=> bs!387437 (= lambda!65710 lambda!65708)))

(declare-fun bs!387438 () Bool)

(assert (= bs!387438 (and d!460614 d!460424)))

(assert (=> bs!387438 (= lambda!65710 lambda!65676)))

(declare-fun bs!387439 () Bool)

(assert (= bs!387439 (and d!460614 d!460482)))

(assert (=> bs!387439 (= lambda!65710 lambda!65690)))

(declare-fun bs!387440 () Bool)

(assert (= bs!387440 (and d!460614 d!460466)))

(assert (=> bs!387440 (= lambda!65710 lambda!65682)))

(declare-fun bs!387441 () Bool)

(assert (= bs!387441 (and d!460614 d!460520)))

(assert (=> bs!387441 (= lambda!65710 lambda!65698)))

(declare-fun bs!387442 () Bool)

(assert (= bs!387442 (and d!460614 d!460572)))

(assert (=> bs!387442 (= lambda!65710 lambda!65705)))

(declare-fun bs!387443 () Bool)

(assert (= bs!387443 (and d!460614 d!460508)))

(assert (=> bs!387443 (= lambda!65710 lambda!65696)))

(declare-fun bs!387444 () Bool)

(assert (= bs!387444 (and d!460614 d!460514)))

(assert (=> bs!387444 (= lambda!65710 lambda!65697)))

(declare-fun bs!387445 () Bool)

(assert (= bs!387445 (and d!460614 d!460408)))

(assert (=> bs!387445 (= lambda!65710 lambda!65675)))

(declare-fun bs!387446 () Bool)

(assert (= bs!387446 (and d!460614 d!460612)))

(assert (=> bs!387446 (= lambda!65710 lambda!65709)))

(declare-fun bs!387447 () Bool)

(assert (= bs!387447 (and d!460614 d!460460)))

(assert (=> bs!387447 (= lambda!65710 lambda!65680)))

(declare-fun bs!387448 () Bool)

(assert (= bs!387448 (and d!460614 d!460488)))

(assert (=> bs!387448 (= lambda!65710 lambda!65691)))

(declare-fun bs!387449 () Bool)

(assert (= bs!387449 (and d!460614 d!460428)))

(assert (=> bs!387449 (= lambda!65710 lambda!65677)))

(assert (=> d!460614 (= (inv!22053 setElem!10623) (forall!3917 (exprs!1287 setElem!10623) lambda!65710))))

(declare-fun bs!387450 () Bool)

(assert (= bs!387450 d!460614))

(declare-fun m!1824782 () Bool)

(assert (=> bs!387450 m!1824782))

(assert (=> setNonEmpty!10623 d!460614))

(declare-fun d!460616 () Bool)

(assert (=> d!460616 (isPrefix!1257 lt!537496 lt!537496)))

(declare-fun lt!537709 () Unit!26027)

(declare-fun choose!9258 (List!16847 List!16847) Unit!26027)

(assert (=> d!460616 (= lt!537709 (choose!9258 lt!537496 lt!537496))))

(assert (=> d!460616 (= (lemmaIsPrefixRefl!887 lt!537496 lt!537496) lt!537709)))

(declare-fun bs!387451 () Bool)

(assert (= bs!387451 d!460616))

(assert (=> bs!387451 m!1824197))

(declare-fun m!1824784 () Bool)

(assert (=> bs!387451 m!1824784))

(assert (=> bm!101827 d!460616))

(declare-fun d!460618 () Bool)

(declare-fun lt!537710 () tuple2!16200)

(assert (=> d!460618 (= (++!4411 (_1!9424 lt!537710) (_2!9424 lt!537710)) (list!6482 input!1676))))

(assert (=> d!460618 (= lt!537710 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 0 (list!6482 input!1676) (list!6482 input!1676) (sizeTr!49 (list!6482 input!1676) 0)))))

(declare-fun lt!537712 () Unit!26027)

(declare-fun lt!537716 () Unit!26027)

(assert (=> d!460618 (= lt!537712 lt!537716)))

(declare-fun lt!537715 () List!16847)

(declare-fun lt!537713 () Int)

(assert (=> d!460618 (= (sizeTr!49 lt!537715 lt!537713) (+ (size!13577 lt!537715) lt!537713))))

(assert (=> d!460618 (= lt!537716 (lemmaSizeTrEqualsSize!49 lt!537715 lt!537713))))

(assert (=> d!460618 (= lt!537713 0)))

(assert (=> d!460618 (= lt!537715 Nil!16779)))

(declare-fun lt!537717 () Unit!26027)

(declare-fun lt!537714 () Unit!26027)

(assert (=> d!460618 (= lt!537717 lt!537714)))

(declare-fun lt!537711 () Int)

(assert (=> d!460618 (= (sizeTr!49 (list!6482 input!1676) lt!537711) (+ (size!13577 (list!6482 input!1676)) lt!537711))))

(assert (=> d!460618 (= lt!537714 (lemmaSizeTrEqualsSize!49 (list!6482 input!1676) lt!537711))))

(assert (=> d!460618 (= lt!537711 0)))

(assert (=> d!460618 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460618 (= (findLongestMatch!258 (regex!2941 rule!240) (list!6482 input!1676)) lt!537710)))

(declare-fun bs!387452 () Bool)

(assert (= bs!387452 d!460618))

(assert (=> bs!387452 m!1824057))

(declare-fun m!1824786 () Bool)

(assert (=> bs!387452 m!1824786))

(assert (=> bs!387452 m!1824057))

(declare-fun m!1824788 () Bool)

(assert (=> bs!387452 m!1824788))

(assert (=> bs!387452 m!1824057))

(declare-fun m!1824790 () Bool)

(assert (=> bs!387452 m!1824790))

(assert (=> bs!387452 m!1824057))

(assert (=> bs!387452 m!1824057))

(assert (=> bs!387452 m!1824786))

(declare-fun m!1824792 () Bool)

(assert (=> bs!387452 m!1824792))

(declare-fun m!1824794 () Bool)

(assert (=> bs!387452 m!1824794))

(declare-fun m!1824796 () Bool)

(assert (=> bs!387452 m!1824796))

(declare-fun m!1824798 () Bool)

(assert (=> bs!387452 m!1824798))

(declare-fun m!1824800 () Bool)

(assert (=> bs!387452 m!1824800))

(assert (=> bs!387452 m!1824057))

(declare-fun m!1824802 () Bool)

(assert (=> bs!387452 m!1824802))

(assert (=> bs!387452 m!1824163))

(assert (=> d!460378 d!460618))

(declare-fun b!1552309 () Bool)

(declare-fun b_free!41235 () Bool)

(declare-fun b_next!41939 () Bool)

(assert (=> b!1552309 (= b_free!41235 (not b_next!41939))))

(declare-fun tp!453993 () Bool)

(declare-fun b_and!108339 () Bool)

(assert (=> b!1552309 (= tp!453993 b_and!108339)))

(declare-fun b!1552307 () Bool)

(declare-fun b_free!41237 () Bool)

(declare-fun b_next!41941 () Bool)

(assert (=> b!1552307 (= b_free!41237 (not b_next!41941))))

(declare-fun tp!454006 () Bool)

(declare-fun b_and!108341 () Bool)

(assert (=> b!1552307 (= tp!454006 b_and!108341)))

(declare-fun b!1552327 () Bool)

(declare-fun b_free!41239 () Bool)

(declare-fun b_next!41943 () Bool)

(assert (=> b!1552327 (= b_free!41239 (not b_next!41943))))

(declare-fun tp!453990 () Bool)

(declare-fun b_and!108343 () Bool)

(assert (=> b!1552327 (= tp!453990 b_and!108343)))

(declare-fun b!1552321 () Bool)

(declare-fun b_free!41241 () Bool)

(declare-fun b_next!41945 () Bool)

(assert (=> b!1552321 (= b_free!41241 (not b_next!41945))))

(declare-fun tp!453988 () Bool)

(declare-fun b_and!108345 () Bool)

(assert (=> b!1552321 (= tp!453988 b_and!108345)))

(declare-fun b!1552313 () Bool)

(declare-fun b_free!41243 () Bool)

(declare-fun b_next!41947 () Bool)

(assert (=> b!1552313 (= b_free!41243 (not b_next!41947))))

(declare-fun tp!453999 () Bool)

(declare-fun b_and!108347 () Bool)

(assert (=> b!1552313 (= tp!453999 b_and!108347)))

(declare-fun b!1552314 () Bool)

(declare-fun b_free!41245 () Bool)

(declare-fun b_next!41949 () Bool)

(assert (=> b!1552314 (= b_free!41245 (not b_next!41949))))

(declare-fun tp!454005 () Bool)

(declare-fun b_and!108349 () Bool)

(assert (=> b!1552314 (= tp!454005 b_and!108349)))

(declare-fun b!1552302 () Bool)

(declare-fun e!995684 () Bool)

(declare-fun e!995677 () Bool)

(declare-fun lt!537726 () MutLongMap!1781)

(assert (=> b!1552302 (= e!995684 (and e!995677 ((_ is LongMap!1781) lt!537726)))))

(declare-fun res!693462 () tuple4!882)

(assert (=> b!1552302 (= lt!537726 (v!23619 (underlying!3772 (cache!2106 (_3!1324 res!693462)))))))

(declare-fun b!1552303 () Bool)

(declare-fun e!995670 () Bool)

(declare-fun tp!453989 () Bool)

(declare-fun mapRes!8263 () Bool)

(assert (=> b!1552303 (= e!995670 (and tp!453989 mapRes!8263))))

(declare-fun condMapEmpty!8264 () Bool)

(declare-fun mapDefault!8263 () List!16851)

(assert (=> b!1552303 (= condMapEmpty!8264 (= (arr!2726 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 (_3!1324 res!693462)))))))) ((as const (Array (_ BitVec 32) List!16851)) mapDefault!8263)))))

(declare-fun b!1552304 () Bool)

(declare-fun e!995688 () Bool)

(declare-fun e!995685 () Bool)

(declare-fun lt!537725 () MutLongMap!1779)

(assert (=> b!1552304 (= e!995688 (and e!995685 ((_ is LongMap!1779) lt!537725)))))

(assert (=> b!1552304 (= lt!537725 (v!23615 (underlying!3768 (cache!2104 (_2!9426 res!693462)))))))

(declare-fun d!460620 () Bool)

(declare-fun e!995675 () Bool)

(assert (=> d!460620 e!995675))

(declare-fun res!693461 () Bool)

(assert (=> d!460620 (=> (not res!693461) (not e!995675))))

(assert (=> d!460620 (= res!693461 (= (tuple2!16201 (list!6482 (_1!9425 (_1!9426 res!693462))) (list!6482 (_2!9425 (_1!9426 res!693462)))) (findLongestMatch!258 (regex!2941 rule!240) (list!6482 input!1676))))))

(declare-fun e!995680 () Bool)

(declare-fun e!995687 () Bool)

(declare-fun e!995682 () Bool)

(declare-fun e!995690 () Bool)

(declare-fun e!995671 () Bool)

(assert (=> d!460620 (and (inv!22047 (_1!9425 (_1!9426 res!693462))) e!995687 (inv!22047 (_2!9425 (_1!9426 res!693462))) e!995690 (inv!22048 (_2!9426 res!693462)) e!995682 (inv!22050 (_3!1324 res!693462)) e!995671 (inv!22049 (_4!441 res!693462)) e!995680)))

(assert (=> d!460620 (= (choose!9250 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) res!693462)))

(declare-fun b!1552305 () Bool)

(assert (=> b!1552305 (= e!995675 (= (totalInput!2444 (_4!441 res!693462)) totalInput!568))))

(declare-fun e!995692 () Bool)

(declare-fun e!995686 () Bool)

(declare-fun b!1552306 () Bool)

(assert (=> b!1552306 (= e!995680 (and e!995692 (inv!22047 (totalInput!2444 (_4!441 res!693462))) e!995686))))

(declare-fun e!995694 () Bool)

(assert (=> b!1552307 (= e!995694 (and e!995684 tp!454006))))

(declare-fun b!1552308 () Bool)

(declare-fun res!693465 () Bool)

(assert (=> b!1552308 (=> (not res!693465) (not e!995675))))

(assert (=> b!1552308 (= res!693465 (valid!1427 (_2!9426 res!693462)))))

(declare-fun e!995683 () Bool)

(declare-fun e!995676 () Bool)

(declare-fun tp!453991 () Bool)

(declare-fun tp!454008 () Bool)

(assert (=> b!1552309 (= e!995676 (and tp!453993 tp!454008 tp!453991 (array_inv!1959 (_keys!2073 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 (_2!9426 res!693462)))))))) (array_inv!1960 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 (_2!9426 res!693462)))))))) e!995683))))

(declare-fun mapNonEmpty!8262 () Bool)

(declare-fun mapRes!8262 () Bool)

(declare-fun tp!453997 () Bool)

(declare-fun tp!453994 () Bool)

(assert (=> mapNonEmpty!8262 (= mapRes!8262 (and tp!453997 tp!453994))))

(declare-fun mapValue!8262 () List!16850)

(declare-fun mapRest!8264 () (Array (_ BitVec 32) List!16850))

(declare-fun mapKey!8263 () (_ BitVec 32))

(assert (=> mapNonEmpty!8262 (= (arr!2725 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 (_4!441 res!693462)))))))) (store mapRest!8264 mapKey!8263 mapValue!8262))))

(declare-fun b!1552310 () Bool)

(declare-fun res!693463 () Bool)

(assert (=> b!1552310 (=> (not res!693463) (not e!995675))))

(assert (=> b!1552310 (= res!693463 (valid!1426 (_3!1324 res!693462)))))

(declare-fun b!1552311 () Bool)

(declare-fun tp!453995 () Bool)

(assert (=> b!1552311 (= e!995687 (and (inv!22046 (c!252328 (_1!9425 (_1!9426 res!693462)))) tp!453995))))

(declare-fun b!1552312 () Bool)

(declare-fun e!995681 () Bool)

(declare-fun e!995678 () Bool)

(declare-fun lt!537724 () MutLongMap!1780)

(assert (=> b!1552312 (= e!995681 (and e!995678 ((_ is LongMap!1780) lt!537724)))))

(assert (=> b!1552312 (= lt!537724 (v!23617 (underlying!3770 (cache!2105 (_4!441 res!693462)))))))

(declare-fun e!995667 () Bool)

(declare-fun tp!454010 () Bool)

(declare-fun tp!454007 () Bool)

(declare-fun e!995672 () Bool)

(assert (=> b!1552313 (= e!995672 (and tp!453999 tp!454007 tp!454010 (array_inv!1959 (_keys!2074 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 (_4!441 res!693462)))))))) (array_inv!1962 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 (_4!441 res!693462)))))))) e!995667))))

(declare-fun e!995668 () Bool)

(assert (=> b!1552314 (= e!995668 (and e!995688 tp!454005))))

(declare-fun mapIsEmpty!8262 () Bool)

(assert (=> mapIsEmpty!8262 mapRes!8262))

(declare-fun b!1552315 () Bool)

(declare-fun tp!454000 () Bool)

(assert (=> b!1552315 (= e!995690 (and (inv!22046 (c!252328 (_2!9425 (_1!9426 res!693462)))) tp!454000))))

(declare-fun b!1552316 () Bool)

(declare-fun tp!453998 () Bool)

(assert (=> b!1552316 (= e!995667 (and tp!453998 mapRes!8262))))

(declare-fun condMapEmpty!8263 () Bool)

(declare-fun mapDefault!8262 () List!16850)

(assert (=> b!1552316 (= condMapEmpty!8263 (= (arr!2725 (_values!2059 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 (_4!441 res!693462)))))))) ((as const (Array (_ BitVec 32) List!16850)) mapDefault!8262)))))

(declare-fun b!1552317 () Bool)

(declare-fun e!995679 () Bool)

(declare-fun e!995673 () Bool)

(assert (=> b!1552317 (= e!995679 e!995673)))

(declare-fun b!1552318 () Bool)

(declare-fun tp!454002 () Bool)

(declare-fun mapRes!8264 () Bool)

(assert (=> b!1552318 (= e!995683 (and tp!454002 mapRes!8264))))

(declare-fun condMapEmpty!8262 () Bool)

(declare-fun mapDefault!8264 () List!16849)

(assert (=> b!1552318 (= condMapEmpty!8262 (= (arr!2723 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 (_2!9426 res!693462)))))))) ((as const (Array (_ BitVec 32) List!16849)) mapDefault!8264)))))

(declare-fun mapNonEmpty!8263 () Bool)

(declare-fun tp!454003 () Bool)

(declare-fun tp!453992 () Bool)

(assert (=> mapNonEmpty!8263 (= mapRes!8263 (and tp!454003 tp!453992))))

(declare-fun mapValue!8264 () List!16851)

(declare-fun mapKey!8262 () (_ BitVec 32))

(declare-fun mapRest!8262 () (Array (_ BitVec 32) List!16851))

(assert (=> mapNonEmpty!8263 (= (arr!2726 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 (_3!1324 res!693462)))))))) (store mapRest!8262 mapKey!8262 mapValue!8264))))

(declare-fun mapIsEmpty!8263 () Bool)

(assert (=> mapIsEmpty!8263 mapRes!8264))

(declare-fun b!1552319 () Bool)

(declare-fun e!995674 () Bool)

(assert (=> b!1552319 (= e!995674 e!995676)))

(declare-fun b!1552320 () Bool)

(declare-fun res!693464 () Bool)

(assert (=> b!1552320 (=> (not res!693464) (not e!995675))))

(assert (=> b!1552320 (= res!693464 (valid!1425 (_4!441 res!693462)))))

(declare-fun tp!454004 () Bool)

(declare-fun tp!453996 () Bool)

(assert (=> b!1552321 (= e!995673 (and tp!453988 tp!454004 tp!453996 (array_inv!1959 (_keys!2075 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 (_3!1324 res!693462)))))))) (array_inv!1961 (_values!2060 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 (_3!1324 res!693462)))))))) e!995670))))

(declare-fun b!1552322 () Bool)

(declare-fun tp!454009 () Bool)

(assert (=> b!1552322 (= e!995686 (and (inv!22046 (c!252328 (totalInput!2444 (_4!441 res!693462)))) tp!454009))))

(declare-fun b!1552323 () Bool)

(assert (=> b!1552323 (= e!995677 e!995679)))

(declare-fun b!1552324 () Bool)

(declare-fun e!995669 () Bool)

(assert (=> b!1552324 (= e!995678 e!995669)))

(declare-fun mapNonEmpty!8264 () Bool)

(declare-fun tp!453987 () Bool)

(declare-fun tp!454001 () Bool)

(assert (=> mapNonEmpty!8264 (= mapRes!8264 (and tp!453987 tp!454001))))

(declare-fun mapValue!8263 () List!16849)

(declare-fun mapRest!8263 () (Array (_ BitVec 32) List!16849))

(declare-fun mapKey!8264 () (_ BitVec 32))

(assert (=> mapNonEmpty!8264 (= (arr!2723 (_values!2058 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 (_2!9426 res!693462)))))))) (store mapRest!8263 mapKey!8264 mapValue!8263))))

(declare-fun mapIsEmpty!8264 () Bool)

(assert (=> mapIsEmpty!8264 mapRes!8263))

(declare-fun b!1552325 () Bool)

(assert (=> b!1552325 (= e!995671 e!995694)))

(declare-fun b!1552326 () Bool)

(assert (=> b!1552326 (= e!995669 e!995672)))

(assert (=> b!1552327 (= e!995692 (and e!995681 tp!453990))))

(declare-fun b!1552328 () Bool)

(assert (=> b!1552328 (= e!995682 e!995668)))

(declare-fun b!1552329 () Bool)

(assert (=> b!1552329 (= e!995685 e!995674)))

(assert (= d!460620 b!1552311))

(assert (= d!460620 b!1552315))

(assert (= (and b!1552318 condMapEmpty!8262) mapIsEmpty!8263))

(assert (= (and b!1552318 (not condMapEmpty!8262)) mapNonEmpty!8264))

(assert (= b!1552309 b!1552318))

(assert (= b!1552319 b!1552309))

(assert (= b!1552329 b!1552319))

(assert (= (and b!1552304 ((_ is LongMap!1779) (v!23615 (underlying!3768 (cache!2104 (_2!9426 res!693462)))))) b!1552329))

(assert (= b!1552314 b!1552304))

(assert (= (and b!1552328 ((_ is HashMap!1723) (cache!2104 (_2!9426 res!693462)))) b!1552314))

(assert (= d!460620 b!1552328))

(assert (= (and b!1552303 condMapEmpty!8264) mapIsEmpty!8264))

(assert (= (and b!1552303 (not condMapEmpty!8264)) mapNonEmpty!8263))

(assert (= b!1552321 b!1552303))

(assert (= b!1552317 b!1552321))

(assert (= b!1552323 b!1552317))

(assert (= (and b!1552302 ((_ is LongMap!1781) (v!23619 (underlying!3772 (cache!2106 (_3!1324 res!693462)))))) b!1552323))

(assert (= b!1552307 b!1552302))

(assert (= (and b!1552325 ((_ is HashMap!1725) (cache!2106 (_3!1324 res!693462)))) b!1552307))

(assert (= d!460620 b!1552325))

(assert (= (and b!1552316 condMapEmpty!8263) mapIsEmpty!8262))

(assert (= (and b!1552316 (not condMapEmpty!8263)) mapNonEmpty!8262))

(assert (= b!1552313 b!1552316))

(assert (= b!1552326 b!1552313))

(assert (= b!1552324 b!1552326))

(assert (= (and b!1552312 ((_ is LongMap!1780) (v!23617 (underlying!3770 (cache!2105 (_4!441 res!693462)))))) b!1552324))

(assert (= b!1552327 b!1552312))

(assert (= (and b!1552306 ((_ is HashMap!1724) (cache!2105 (_4!441 res!693462)))) b!1552327))

(assert (= b!1552306 b!1552322))

(assert (= d!460620 b!1552306))

(assert (= (and d!460620 res!693461) b!1552310))

(assert (= (and b!1552310 res!693463) b!1552308))

(assert (= (and b!1552308 res!693465) b!1552320))

(assert (= (and b!1552320 res!693464) b!1552305))

(declare-fun m!1824804 () Bool)

(assert (=> b!1552306 m!1824804))

(declare-fun m!1824806 () Bool)

(assert (=> b!1552308 m!1824806))

(declare-fun m!1824808 () Bool)

(assert (=> mapNonEmpty!8264 m!1824808))

(declare-fun m!1824810 () Bool)

(assert (=> b!1552313 m!1824810))

(declare-fun m!1824812 () Bool)

(assert (=> b!1552313 m!1824812))

(declare-fun m!1824814 () Bool)

(assert (=> b!1552310 m!1824814))

(declare-fun m!1824816 () Bool)

(assert (=> b!1552315 m!1824816))

(declare-fun m!1824818 () Bool)

(assert (=> b!1552322 m!1824818))

(declare-fun m!1824820 () Bool)

(assert (=> d!460620 m!1824820))

(declare-fun m!1824822 () Bool)

(assert (=> d!460620 m!1824822))

(assert (=> d!460620 m!1824057))

(assert (=> d!460620 m!1824229))

(declare-fun m!1824824 () Bool)

(assert (=> d!460620 m!1824824))

(declare-fun m!1824826 () Bool)

(assert (=> d!460620 m!1824826))

(declare-fun m!1824828 () Bool)

(assert (=> d!460620 m!1824828))

(declare-fun m!1824830 () Bool)

(assert (=> d!460620 m!1824830))

(declare-fun m!1824832 () Bool)

(assert (=> d!460620 m!1824832))

(assert (=> d!460620 m!1824057))

(declare-fun m!1824834 () Bool)

(assert (=> b!1552320 m!1824834))

(declare-fun m!1824836 () Bool)

(assert (=> b!1552309 m!1824836))

(declare-fun m!1824838 () Bool)

(assert (=> b!1552309 m!1824838))

(declare-fun m!1824840 () Bool)

(assert (=> b!1552321 m!1824840))

(declare-fun m!1824842 () Bool)

(assert (=> b!1552321 m!1824842))

(declare-fun m!1824844 () Bool)

(assert (=> mapNonEmpty!8263 m!1824844))

(declare-fun m!1824846 () Bool)

(assert (=> b!1552311 m!1824846))

(declare-fun m!1824848 () Bool)

(assert (=> mapNonEmpty!8262 m!1824848))

(assert (=> d!460378 d!460620))

(declare-fun d!460622 () Bool)

(assert (=> d!460622 (= (list!6482 (_1!9425 (_1!9426 lt!537623))) (list!6483 (c!252328 (_1!9425 (_1!9426 lt!537623)))))))

(declare-fun bs!387453 () Bool)

(assert (= bs!387453 d!460622))

(declare-fun m!1824850 () Bool)

(assert (=> bs!387453 m!1824850))

(assert (=> d!460378 d!460622))

(assert (=> d!460378 d!460328))

(declare-fun d!460624 () Bool)

(assert (=> d!460624 (= (list!6482 (_2!9425 (_1!9426 lt!537623))) (list!6483 (c!252328 (_2!9425 (_1!9426 lt!537623)))))))

(declare-fun bs!387454 () Bool)

(assert (= bs!387454 d!460624))

(declare-fun m!1824852 () Bool)

(assert (=> bs!387454 m!1824852))

(assert (=> d!460378 d!460624))

(assert (=> d!460378 d!460406))

(assert (=> b!1551615 d!460578))

(assert (=> b!1551615 d!460352))

(declare-fun b!1552332 () Bool)

(declare-fun res!693466 () Bool)

(declare-fun e!995695 () Bool)

(assert (=> b!1552332 (=> (not res!693466) (not e!995695))))

(declare-fun lt!537727 () List!16847)

(assert (=> b!1552332 (= res!693466 (= (size!13577 lt!537727) (+ (size!13577 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) (size!13577 (_2!9428 (get!4841 lt!537519))))))))

(declare-fun b!1552330 () Bool)

(declare-fun e!995696 () List!16847)

(assert (=> b!1552330 (= e!995696 (_2!9428 (get!4841 lt!537519)))))

(declare-fun b!1552333 () Bool)

(assert (=> b!1552333 (= e!995695 (or (not (= (_2!9428 (get!4841 lt!537519)) Nil!16779)) (= lt!537727 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))))))))

(declare-fun d!460626 () Bool)

(assert (=> d!460626 e!995695))

(declare-fun res!693467 () Bool)

(assert (=> d!460626 (=> (not res!693467) (not e!995695))))

(assert (=> d!460626 (= res!693467 (= (content!2340 lt!537727) ((_ map or) (content!2340 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) (content!2340 (_2!9428 (get!4841 lt!537519))))))))

(assert (=> d!460626 (= lt!537727 e!995696)))

(declare-fun c!252448 () Bool)

(assert (=> d!460626 (= c!252448 ((_ is Nil!16779) (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))))))

(assert (=> d!460626 (= (++!4411 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519)))) (_2!9428 (get!4841 lt!537519))) lt!537727)))

(declare-fun b!1552331 () Bool)

(assert (=> b!1552331 (= e!995696 (Cons!16779 (h!22180 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) (++!4411 (t!141250 (list!6482 (charsOf!1643 (_1!9428 (get!4841 lt!537519))))) (_2!9428 (get!4841 lt!537519)))))))

(assert (= (and d!460626 c!252448) b!1552330))

(assert (= (and d!460626 (not c!252448)) b!1552331))

(assert (= (and d!460626 res!693467) b!1552332))

(assert (= (and b!1552332 res!693466) b!1552333))

(declare-fun m!1824854 () Bool)

(assert (=> b!1552332 m!1824854))

(assert (=> b!1552332 m!1824131))

(declare-fun m!1824856 () Bool)

(assert (=> b!1552332 m!1824856))

(assert (=> b!1552332 m!1824109))

(declare-fun m!1824858 () Bool)

(assert (=> d!460626 m!1824858))

(assert (=> d!460626 m!1824131))

(declare-fun m!1824860 () Bool)

(assert (=> d!460626 m!1824860))

(declare-fun m!1824862 () Bool)

(assert (=> d!460626 m!1824862))

(declare-fun m!1824864 () Bool)

(assert (=> b!1552331 m!1824864))

(assert (=> b!1551636 d!460626))

(assert (=> b!1551636 d!460418))

(assert (=> b!1551636 d!460420))

(assert (=> b!1551636 d!460422))

(declare-fun bs!387455 () Bool)

(declare-fun d!460628 () Bool)

(assert (= bs!387455 (and d!460628 d!460586)))

(declare-fun lambda!65711 () Int)

(assert (=> bs!387455 (= lambda!65711 lambda!65706)))

(declare-fun bs!387456 () Bool)

(assert (= bs!387456 (and d!460628 d!460538)))

(assert (=> bs!387456 (= lambda!65711 lambda!65699)))

(declare-fun bs!387457 () Bool)

(assert (= bs!387457 (and d!460628 d!460592)))

(assert (=> bs!387457 (= lambda!65711 lambda!65707)))

(declare-fun bs!387458 () Bool)

(assert (= bs!387458 (and d!460628 d!460458)))

(assert (=> bs!387458 (= lambda!65711 lambda!65679)))

(declare-fun bs!387459 () Bool)

(assert (= bs!387459 (and d!460628 d!460500)))

(assert (=> bs!387459 (= lambda!65711 lambda!65695)))

(declare-fun bs!387460 () Bool)

(assert (= bs!387460 (and d!460628 d!460464)))

(assert (=> bs!387460 (= lambda!65711 lambda!65681)))

(declare-fun bs!387461 () Bool)

(assert (= bs!387461 (and d!460628 d!460540)))

(assert (=> bs!387461 (= lambda!65711 lambda!65700)))

(declare-fun bs!387462 () Bool)

(assert (= bs!387462 (and d!460628 d!460468)))

(assert (=> bs!387462 (= lambda!65711 lambda!65683)))

(declare-fun bs!387463 () Bool)

(assert (= bs!387463 (and d!460628 d!460438)))

(assert (=> bs!387463 (= lambda!65711 lambda!65678)))

(declare-fun bs!387464 () Bool)

(assert (= bs!387464 (and d!460628 d!460610)))

(assert (=> bs!387464 (= lambda!65711 lambda!65708)))

(declare-fun bs!387465 () Bool)

(assert (= bs!387465 (and d!460628 d!460424)))

(assert (=> bs!387465 (= lambda!65711 lambda!65676)))

(declare-fun bs!387466 () Bool)

(assert (= bs!387466 (and d!460628 d!460482)))

(assert (=> bs!387466 (= lambda!65711 lambda!65690)))

(declare-fun bs!387467 () Bool)

(assert (= bs!387467 (and d!460628 d!460466)))

(assert (=> bs!387467 (= lambda!65711 lambda!65682)))

(declare-fun bs!387468 () Bool)

(assert (= bs!387468 (and d!460628 d!460520)))

(assert (=> bs!387468 (= lambda!65711 lambda!65698)))

(declare-fun bs!387469 () Bool)

(assert (= bs!387469 (and d!460628 d!460572)))

(assert (=> bs!387469 (= lambda!65711 lambda!65705)))

(declare-fun bs!387470 () Bool)

(assert (= bs!387470 (and d!460628 d!460508)))

(assert (=> bs!387470 (= lambda!65711 lambda!65696)))

(declare-fun bs!387471 () Bool)

(assert (= bs!387471 (and d!460628 d!460614)))

(assert (=> bs!387471 (= lambda!65711 lambda!65710)))

(declare-fun bs!387472 () Bool)

(assert (= bs!387472 (and d!460628 d!460566)))

(assert (=> bs!387472 (= lambda!65711 lambda!65701)))

(declare-fun bs!387473 () Bool)

(assert (= bs!387473 (and d!460628 d!460514)))

(assert (=> bs!387473 (= lambda!65711 lambda!65697)))

(declare-fun bs!387474 () Bool)

(assert (= bs!387474 (and d!460628 d!460408)))

(assert (=> bs!387474 (= lambda!65711 lambda!65675)))

(declare-fun bs!387475 () Bool)

(assert (= bs!387475 (and d!460628 d!460612)))

(assert (=> bs!387475 (= lambda!65711 lambda!65709)))

(declare-fun bs!387476 () Bool)

(assert (= bs!387476 (and d!460628 d!460460)))

(assert (=> bs!387476 (= lambda!65711 lambda!65680)))

(declare-fun bs!387477 () Bool)

(assert (= bs!387477 (and d!460628 d!460488)))

(assert (=> bs!387477 (= lambda!65711 lambda!65691)))

(declare-fun bs!387478 () Bool)

(assert (= bs!387478 (and d!460628 d!460428)))

(assert (=> bs!387478 (= lambda!65711 lambda!65677)))

(assert (=> d!460628 (= (inv!22053 setElem!10618) (forall!3917 (exprs!1287 setElem!10618) lambda!65711))))

(declare-fun bs!387479 () Bool)

(assert (= bs!387479 d!460628))

(declare-fun m!1824866 () Bool)

(assert (=> bs!387479 m!1824866))

(assert (=> setNonEmpty!10618 d!460628))

(declare-fun d!460630 () Bool)

(declare-fun c!252449 () Bool)

(assert (=> d!460630 (= c!252449 ((_ is Node!5559) (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(declare-fun e!995697 () Bool)

(assert (=> d!460630 (= (inv!22046 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) e!995697)))

(declare-fun b!1552334 () Bool)

(assert (=> b!1552334 (= e!995697 (inv!22051 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(declare-fun b!1552335 () Bool)

(declare-fun e!995698 () Bool)

(assert (=> b!1552335 (= e!995697 e!995698)))

(declare-fun res!693468 () Bool)

(assert (=> b!1552335 (= res!693468 (not ((_ is Leaf!8239) (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))))

(assert (=> b!1552335 (=> res!693468 e!995698)))

(declare-fun b!1552336 () Bool)

(assert (=> b!1552336 (= e!995698 (inv!22052 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(assert (= (and d!460630 c!252449) b!1552334))

(assert (= (and d!460630 (not c!252449)) b!1552335))

(assert (= (and b!1552335 (not res!693468)) b!1552336))

(declare-fun m!1824868 () Bool)

(assert (=> b!1552334 m!1824868))

(declare-fun m!1824870 () Bool)

(assert (=> b!1552336 m!1824870))

(assert (=> b!1551893 d!460630))

(declare-fun d!460632 () Bool)

(declare-fun c!252450 () Bool)

(assert (=> d!460632 (= c!252450 ((_ is Node!5559) (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(declare-fun e!995699 () Bool)

(assert (=> d!460632 (= (inv!22046 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) e!995699)))

(declare-fun b!1552337 () Bool)

(assert (=> b!1552337 (= e!995699 (inv!22051 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(declare-fun b!1552338 () Bool)

(declare-fun e!995700 () Bool)

(assert (=> b!1552338 (= e!995699 e!995700)))

(declare-fun res!693469 () Bool)

(assert (=> b!1552338 (= res!693469 (not ((_ is Leaf!8239) (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))))))

(assert (=> b!1552338 (=> res!693469 e!995700)))

(declare-fun b!1552339 () Bool)

(assert (=> b!1552339 (= e!995700 (inv!22052 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))

(assert (= (and d!460632 c!252450) b!1552337))

(assert (= (and d!460632 (not c!252450)) b!1552338))

(assert (= (and b!1552338 (not res!693469)) b!1552339))

(declare-fun m!1824872 () Bool)

(assert (=> b!1552337 m!1824872))

(declare-fun m!1824874 () Bool)

(assert (=> b!1552339 m!1824874))

(assert (=> b!1551893 d!460632))

(declare-fun d!460634 () Bool)

(assert (=> d!460634 (= (inv!22047 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))) (isBalanced!1640 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))))))

(declare-fun bs!387480 () Bool)

(assert (= bs!387480 d!460634))

(declare-fun m!1824876 () Bool)

(assert (=> bs!387480 m!1824876))

(assert (=> tb!87271 d!460634))

(assert (=> b!1551640 d!460352))

(assert (=> b!1551640 d!460354))

(assert (=> b!1551640 d!460356))

(declare-fun d!460636 () Bool)

(assert (=> d!460636 (= (seqFromList!1769 (_1!9424 lt!537522)) (fromListB!758 (_1!9424 lt!537522)))))

(declare-fun bs!387481 () Bool)

(assert (= bs!387481 d!460636))

(declare-fun m!1824878 () Bool)

(assert (=> bs!387481 m!1824878))

(assert (=> b!1551640 d!460636))

(declare-fun d!460638 () Bool)

(assert (=> d!460638 (= (isEmpty!10094 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))) ((_ is Nil!16779) (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(assert (=> b!1551640 d!460638))

(declare-fun d!460640 () Bool)

(declare-fun lt!537728 () Int)

(assert (=> d!460640 (= lt!537728 (size!13577 (list!6482 (seqFromList!1769 (_1!9424 lt!537522)))))))

(assert (=> d!460640 (= lt!537728 (size!13580 (c!252328 (seqFromList!1769 (_1!9424 lt!537522)))))))

(assert (=> d!460640 (= (size!13579 (seqFromList!1769 (_1!9424 lt!537522))) lt!537728)))

(declare-fun bs!387482 () Bool)

(assert (= bs!387482 d!460640))

(assert (=> bs!387482 m!1824117))

(declare-fun m!1824880 () Bool)

(assert (=> bs!387482 m!1824880))

(assert (=> bs!387482 m!1824880))

(declare-fun m!1824882 () Bool)

(assert (=> bs!387482 m!1824882))

(declare-fun m!1824884 () Bool)

(assert (=> bs!387482 m!1824884))

(assert (=> b!1551640 d!460640))

(declare-fun bs!387483 () Bool)

(declare-fun d!460642 () Bool)

(assert (= bs!387483 (and d!460642 b!1551575)))

(declare-fun lambda!65714 () Int)

(assert (=> bs!387483 (= lambda!65714 lambda!65669)))

(declare-fun bs!387484 () Bool)

(assert (= bs!387484 (and d!460642 d!460360)))

(assert (=> bs!387484 (= lambda!65714 lambda!65672)))

(declare-fun b!1552344 () Bool)

(declare-fun e!995703 () Bool)

(assert (=> b!1552344 (= e!995703 true)))

(assert (=> d!460642 e!995703))

(assert (= d!460642 b!1552344))

(assert (=> b!1552344 (< (dynLambda!7421 order!9853 (toValue!4306 (transformation!2941 rule!240))) (dynLambda!7422 order!9855 lambda!65714))))

(assert (=> b!1552344 (< (dynLambda!7423 order!9857 (toChars!4165 (transformation!2941 rule!240))) (dynLambda!7422 order!9855 lambda!65714))))

(assert (=> d!460642 (= (list!6482 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 (_1!9424 lt!537522))))) (list!6482 (seqFromList!1769 (_1!9424 lt!537522))))))

(declare-fun lt!537731 () Unit!26027)

(assert (=> d!460642 (= lt!537731 (ForallOf!206 lambda!65714 (seqFromList!1769 (_1!9424 lt!537522))))))

(assert (=> d!460642 (= (lemmaSemiInverse!362 (transformation!2941 rule!240) (seqFromList!1769 (_1!9424 lt!537522))) lt!537731)))

(declare-fun b_lambda!48703 () Bool)

(assert (=> (not b_lambda!48703) (not d!460642)))

(declare-fun t!141271 () Bool)

(declare-fun tb!87277 () Bool)

(assert (=> (and b!1551581 (= (toChars!4165 (transformation!2941 rule!240)) (toChars!4165 (transformation!2941 rule!240))) t!141271) tb!87277))

(declare-fun e!995704 () Bool)

(declare-fun tp!454011 () Bool)

(declare-fun b!1552345 () Bool)

(assert (=> b!1552345 (= e!995704 (and (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 (_1!9424 lt!537522)))))) tp!454011))))

(declare-fun result!105308 () Bool)

(assert (=> tb!87277 (= result!105308 (and (inv!22047 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 (_1!9424 lt!537522))))) e!995704))))

(assert (= tb!87277 b!1552345))

(declare-fun m!1824886 () Bool)

(assert (=> b!1552345 m!1824886))

(declare-fun m!1824888 () Bool)

(assert (=> tb!87277 m!1824888))

(assert (=> d!460642 t!141271))

(declare-fun b_and!108351 () Bool)

(assert (= b_and!108335 (and (=> t!141271 result!105308) b_and!108351)))

(declare-fun b_lambda!48705 () Bool)

(assert (=> (not b_lambda!48705) (not d!460642)))

(declare-fun t!141273 () Bool)

(declare-fun tb!87279 () Bool)

(assert (=> (and b!1551581 (= (toValue!4306 (transformation!2941 rule!240)) (toValue!4306 (transformation!2941 rule!240))) t!141273) tb!87279))

(declare-fun result!105310 () Bool)

(assert (=> tb!87279 (= result!105310 (inv!21 (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 (_1!9424 lt!537522)))))))

(declare-fun m!1824890 () Bool)

(assert (=> tb!87279 m!1824890))

(assert (=> d!460642 t!141273))

(declare-fun b_and!108353 () Bool)

(assert (= b_and!108337 (and (=> t!141273 result!105310) b_and!108353)))

(assert (=> d!460642 m!1824117))

(declare-fun m!1824892 () Bool)

(assert (=> d!460642 m!1824892))

(assert (=> d!460642 m!1824117))

(assert (=> d!460642 m!1824880))

(assert (=> d!460642 m!1824117))

(declare-fun m!1824894 () Bool)

(assert (=> d!460642 m!1824894))

(assert (=> d!460642 m!1824892))

(declare-fun m!1824896 () Bool)

(assert (=> d!460642 m!1824896))

(assert (=> d!460642 m!1824896))

(declare-fun m!1824898 () Bool)

(assert (=> d!460642 m!1824898))

(assert (=> b!1551640 d!460642))

(assert (=> b!1551640 d!460358))

(declare-fun d!460644 () Bool)

(assert (=> d!460644 (= (apply!4105 (transformation!2941 rule!240) (seqFromList!1769 (_1!9424 lt!537522))) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 (_1!9424 lt!537522))))))

(declare-fun b_lambda!48707 () Bool)

(assert (=> (not b_lambda!48707) (not d!460644)))

(assert (=> d!460644 t!141273))

(declare-fun b_and!108355 () Bool)

(assert (= b_and!108353 (and (=> t!141273 result!105310) b_and!108355)))

(assert (=> d!460644 m!1824117))

(assert (=> d!460644 m!1824892))

(assert (=> b!1551640 d!460644))

(declare-fun d!460646 () Bool)

(assert (=> d!460646 (= (isEmpty!10094 (list!6482 (_1!9425 (_1!9426 lt!537493)))) ((_ is Nil!16779) (list!6482 (_1!9425 (_1!9426 lt!537493)))))))

(assert (=> d!460376 d!460646))

(assert (=> d!460376 d!460346))

(declare-fun d!460648 () Bool)

(declare-fun lt!537734 () Bool)

(assert (=> d!460648 (= lt!537734 (isEmpty!10094 (list!6483 (c!252328 (_1!9425 (_1!9426 lt!537493))))))))

(assert (=> d!460648 (= lt!537734 (= (size!13580 (c!252328 (_1!9425 (_1!9426 lt!537493)))) 0))))

(assert (=> d!460648 (= (isEmpty!10098 (c!252328 (_1!9425 (_1!9426 lt!537493)))) lt!537734)))

(declare-fun bs!387485 () Bool)

(assert (= bs!387485 d!460648))

(assert (=> bs!387485 m!1824155))

(assert (=> bs!387485 m!1824155))

(declare-fun m!1824900 () Bool)

(assert (=> bs!387485 m!1824900))

(assert (=> bs!387485 m!1824153))

(assert (=> d!460376 d!460648))

(declare-fun d!460650 () Bool)

(assert (not d!460650))

(assert (=> b!1551655 d!460650))

(declare-fun b!1552346 () Bool)

(declare-fun e!995712 () tuple2!16200)

(assert (=> b!1552346 (= e!995712 (tuple2!16201 lt!537615 Nil!16779))))

(declare-fun bm!101860 () Bool)

(declare-fun call!101869 () Bool)

(assert (=> bm!101860 (= call!101869 (nullable!1267 call!101835))))

(declare-fun b!1552347 () Bool)

(declare-fun e!995710 () tuple2!16200)

(declare-fun lt!537740 () tuple2!16200)

(assert (=> b!1552347 (= e!995710 lt!537740)))

(declare-fun b!1552348 () Bool)

(declare-fun e!995708 () tuple2!16200)

(declare-fun e!995711 () tuple2!16200)

(assert (=> b!1552348 (= e!995708 e!995711)))

(declare-fun c!252454 () Bool)

(assert (=> b!1552348 (= c!252454 (= (+ (size!13577 Nil!16779) 1) (size!13577 lt!537496)))))

(declare-fun b!1552349 () Bool)

(declare-fun e!995709 () Bool)

(declare-fun lt!537762 () tuple2!16200)

(assert (=> b!1552349 (= e!995709 (>= (size!13577 (_1!9424 lt!537762)) (size!13577 lt!537615)))))

(declare-fun b!1552350 () Bool)

(declare-fun e!995707 () tuple2!16200)

(assert (=> b!1552350 (= e!995707 e!995710)))

(declare-fun call!101868 () tuple2!16200)

(assert (=> b!1552350 (= lt!537740 call!101868)))

(declare-fun c!252455 () Bool)

(assert (=> b!1552350 (= c!252455 (isEmpty!10094 (_1!9424 lt!537740)))))

(declare-fun bm!101861 () Bool)

(declare-fun call!101872 () Regex!4269)

(declare-fun call!101870 () C!8716)

(assert (=> bm!101861 (= call!101872 (derivativeStep!1019 call!101835 call!101870))))

(declare-fun bm!101862 () Bool)

(declare-fun call!101866 () Bool)

(assert (=> bm!101862 (= call!101866 (isPrefix!1257 lt!537496 lt!537496))))

(declare-fun d!460652 () Bool)

(declare-fun e!995713 () Bool)

(assert (=> d!460652 e!995713))

(declare-fun res!693471 () Bool)

(assert (=> d!460652 (=> (not res!693471) (not e!995713))))

(assert (=> d!460652 (= res!693471 (= (++!4411 (_1!9424 lt!537762) (_2!9424 lt!537762)) lt!537496))))

(assert (=> d!460652 (= lt!537762 e!995708)))

(declare-fun c!252452 () Bool)

(assert (=> d!460652 (= c!252452 (lostCause!385 call!101835))))

(declare-fun lt!537743 () Unit!26027)

(declare-fun Unit!26033 () Unit!26027)

(assert (=> d!460652 (= lt!537743 Unit!26033)))

(assert (=> d!460652 (= (getSuffix!667 lt!537496 lt!537615) call!101830)))

(declare-fun lt!537757 () Unit!26027)

(declare-fun lt!537737 () Unit!26027)

(assert (=> d!460652 (= lt!537757 lt!537737)))

(declare-fun lt!537751 () List!16847)

(assert (=> d!460652 (= call!101830 lt!537751)))

(assert (=> d!460652 (= lt!537737 (lemmaSamePrefixThenSameSuffix!619 lt!537615 call!101830 lt!537615 lt!537751 lt!537496))))

(assert (=> d!460652 (= lt!537751 (getSuffix!667 lt!537496 lt!537615))))

(declare-fun lt!537739 () Unit!26027)

(declare-fun lt!537745 () Unit!26027)

(assert (=> d!460652 (= lt!537739 lt!537745)))

(assert (=> d!460652 (isPrefix!1257 lt!537615 (++!4411 lt!537615 call!101830))))

(assert (=> d!460652 (= lt!537745 (lemmaConcatTwoListThenFirstIsPrefix!782 lt!537615 call!101830))))

(assert (=> d!460652 (validRegex!1708 call!101835)))

(assert (=> d!460652 (= (findLongestMatchInner!327 call!101835 lt!537615 (+ (size!13577 Nil!16779) 1) call!101830 lt!537496 (size!13577 lt!537496)) lt!537762)))

(declare-fun bm!101863 () Bool)

(declare-fun call!101867 () List!16847)

(assert (=> bm!101863 (= call!101867 (tail!2205 call!101830))))

(declare-fun bm!101864 () Bool)

(declare-fun call!101871 () Unit!26027)

(assert (=> bm!101864 (= call!101871 (lemmaIsPrefixRefl!887 lt!537496 lt!537496))))

(declare-fun bm!101865 () Bool)

(assert (=> bm!101865 (= call!101870 (head!3110 call!101830))))

(declare-fun b!1552351 () Bool)

(assert (=> b!1552351 (= e!995713 e!995709)))

(declare-fun res!693470 () Bool)

(assert (=> b!1552351 (=> res!693470 e!995709)))

(assert (=> b!1552351 (= res!693470 (isEmpty!10094 (_1!9424 lt!537762)))))

(declare-fun bm!101866 () Bool)

(declare-fun call!101865 () Unit!26027)

(assert (=> bm!101866 (= call!101865 (lemmaIsPrefixSameLengthThenSameList!121 lt!537496 lt!537615 lt!537496))))

(declare-fun b!1552352 () Bool)

(declare-fun e!995706 () Unit!26027)

(declare-fun Unit!26034 () Unit!26027)

(assert (=> b!1552352 (= e!995706 Unit!26034)))

(declare-fun b!1552353 () Bool)

(declare-fun c!252457 () Bool)

(assert (=> b!1552353 (= c!252457 call!101869)))

(declare-fun lt!537755 () Unit!26027)

(declare-fun lt!537747 () Unit!26027)

(assert (=> b!1552353 (= lt!537755 lt!537747)))

(declare-fun lt!537748 () List!16847)

(declare-fun lt!537759 () C!8716)

(assert (=> b!1552353 (= (++!4411 (++!4411 lt!537615 (Cons!16779 lt!537759 Nil!16779)) lt!537748) lt!537496)))

(assert (=> b!1552353 (= lt!537747 (lemmaMoveElementToOtherListKeepsConcatEq!436 lt!537615 lt!537759 lt!537748 lt!537496))))

(assert (=> b!1552353 (= lt!537748 (tail!2205 call!101830))))

(assert (=> b!1552353 (= lt!537759 (head!3110 call!101830))))

(declare-fun lt!537761 () Unit!26027)

(declare-fun lt!537749 () Unit!26027)

(assert (=> b!1552353 (= lt!537761 lt!537749)))

(assert (=> b!1552353 (isPrefix!1257 (++!4411 lt!537615 (Cons!16779 (head!3110 (getSuffix!667 lt!537496 lt!537615)) Nil!16779)) lt!537496)))

(assert (=> b!1552353 (= lt!537749 (lemmaAddHeadSuffixToPrefixStillPrefix!110 lt!537615 lt!537496))))

(declare-fun lt!537753 () Unit!26027)

(declare-fun lt!537735 () Unit!26027)

(assert (=> b!1552353 (= lt!537753 lt!537735)))

(assert (=> b!1552353 (= lt!537735 (lemmaAddHeadSuffixToPrefixStillPrefix!110 lt!537615 lt!537496))))

(declare-fun lt!537760 () List!16847)

(assert (=> b!1552353 (= lt!537760 (++!4411 lt!537615 (Cons!16779 (head!3110 call!101830) Nil!16779)))))

(declare-fun lt!537752 () Unit!26027)

(assert (=> b!1552353 (= lt!537752 e!995706)))

(declare-fun c!252453 () Bool)

(assert (=> b!1552353 (= c!252453 (= (size!13577 lt!537615) (size!13577 lt!537496)))))

(declare-fun lt!537750 () Unit!26027)

(declare-fun lt!537754 () Unit!26027)

(assert (=> b!1552353 (= lt!537750 lt!537754)))

(assert (=> b!1552353 (<= (size!13577 lt!537615) (size!13577 lt!537496))))

(assert (=> b!1552353 (= lt!537754 (lemmaIsPrefixThenSmallerEqSize!111 lt!537615 lt!537496))))

(assert (=> b!1552353 (= e!995711 e!995707)))

(declare-fun b!1552354 () Bool)

(assert (=> b!1552354 (= e!995708 (tuple2!16201 Nil!16779 lt!537496))))

(declare-fun b!1552355 () Bool)

(assert (=> b!1552355 (= e!995707 call!101868)))

(declare-fun b!1552356 () Bool)

(declare-fun c!252456 () Bool)

(assert (=> b!1552356 (= c!252456 call!101869)))

(declare-fun lt!537744 () Unit!26027)

(declare-fun lt!537742 () Unit!26027)

(assert (=> b!1552356 (= lt!537744 lt!537742)))

(assert (=> b!1552356 (= lt!537496 lt!537615)))

(assert (=> b!1552356 (= lt!537742 call!101865)))

(declare-fun lt!537756 () Unit!26027)

(declare-fun lt!537746 () Unit!26027)

(assert (=> b!1552356 (= lt!537756 lt!537746)))

(assert (=> b!1552356 call!101866))

(assert (=> b!1552356 (= lt!537746 call!101871)))

(assert (=> b!1552356 (= e!995711 e!995712)))

(declare-fun b!1552357 () Bool)

(assert (=> b!1552357 (= e!995710 (tuple2!16201 lt!537615 call!101830))))

(declare-fun b!1552358 () Bool)

(assert (=> b!1552358 (= e!995712 (tuple2!16201 Nil!16779 lt!537496))))

(declare-fun b!1552359 () Bool)

(declare-fun Unit!26035 () Unit!26027)

(assert (=> b!1552359 (= e!995706 Unit!26035)))

(declare-fun lt!537741 () Unit!26027)

(assert (=> b!1552359 (= lt!537741 call!101871)))

(assert (=> b!1552359 call!101866))

(declare-fun lt!537736 () Unit!26027)

(assert (=> b!1552359 (= lt!537736 lt!537741)))

(declare-fun lt!537738 () Unit!26027)

(assert (=> b!1552359 (= lt!537738 call!101865)))

(assert (=> b!1552359 (= lt!537496 lt!537615)))

(declare-fun lt!537758 () Unit!26027)

(assert (=> b!1552359 (= lt!537758 lt!537738)))

(assert (=> b!1552359 false))

(declare-fun bm!101867 () Bool)

(assert (=> bm!101867 (= call!101868 (findLongestMatchInner!327 call!101872 lt!537760 (+ (size!13577 Nil!16779) 1 1) call!101867 lt!537496 (size!13577 lt!537496)))))

(assert (= (and d!460652 c!252452) b!1552354))

(assert (= (and d!460652 (not c!252452)) b!1552348))

(assert (= (and b!1552348 c!252454) b!1552356))

(assert (= (and b!1552348 (not c!252454)) b!1552353))

(assert (= (and b!1552356 c!252456) b!1552346))

(assert (= (and b!1552356 (not c!252456)) b!1552358))

(assert (= (and b!1552353 c!252453) b!1552359))

(assert (= (and b!1552353 (not c!252453)) b!1552352))

(assert (= (and b!1552353 c!252457) b!1552350))

(assert (= (and b!1552353 (not c!252457)) b!1552355))

(assert (= (and b!1552350 c!252455) b!1552357))

(assert (= (and b!1552350 (not c!252455)) b!1552347))

(assert (= (or b!1552350 b!1552355) bm!101863))

(assert (= (or b!1552350 b!1552355) bm!101865))

(assert (= (or b!1552350 b!1552355) bm!101861))

(assert (= (or b!1552350 b!1552355) bm!101867))

(assert (= (or b!1552356 b!1552359) bm!101866))

(assert (= (or b!1552356 b!1552359) bm!101864))

(assert (= (or b!1552356 b!1552353) bm!101860))

(assert (= (or b!1552356 b!1552359) bm!101862))

(assert (= (and d!460652 res!693471) b!1552351))

(assert (= (and b!1552351 (not res!693470)) b!1552349))

(declare-fun m!1824902 () Bool)

(assert (=> bm!101866 m!1824902))

(declare-fun m!1824904 () Bool)

(assert (=> b!1552350 m!1824904))

(declare-fun m!1824906 () Bool)

(assert (=> b!1552349 m!1824906))

(declare-fun m!1824908 () Bool)

(assert (=> b!1552349 m!1824908))

(declare-fun m!1824910 () Bool)

(assert (=> d!460652 m!1824910))

(declare-fun m!1824912 () Bool)

(assert (=> d!460652 m!1824912))

(declare-fun m!1824914 () Bool)

(assert (=> d!460652 m!1824914))

(declare-fun m!1824916 () Bool)

(assert (=> d!460652 m!1824916))

(declare-fun m!1824918 () Bool)

(assert (=> d!460652 m!1824918))

(declare-fun m!1824920 () Bool)

(assert (=> d!460652 m!1824920))

(assert (=> d!460652 m!1824914))

(declare-fun m!1824922 () Bool)

(assert (=> d!460652 m!1824922))

(declare-fun m!1824924 () Bool)

(assert (=> d!460652 m!1824924))

(declare-fun m!1824926 () Bool)

(assert (=> bm!101860 m!1824926))

(declare-fun m!1824928 () Bool)

(assert (=> b!1552351 m!1824928))

(assert (=> bm!101864 m!1824191))

(declare-fun m!1824930 () Bool)

(assert (=> bm!101865 m!1824930))

(declare-fun m!1824932 () Bool)

(assert (=> bm!101863 m!1824932))

(assert (=> bm!101862 m!1824197))

(assert (=> b!1552353 m!1824924))

(declare-fun m!1824934 () Bool)

(assert (=> b!1552353 m!1824934))

(assert (=> b!1552353 m!1823997))

(assert (=> b!1552353 m!1824932))

(declare-fun m!1824936 () Bool)

(assert (=> b!1552353 m!1824936))

(declare-fun m!1824938 () Bool)

(assert (=> b!1552353 m!1824938))

(declare-fun m!1824940 () Bool)

(assert (=> b!1552353 m!1824940))

(declare-fun m!1824942 () Bool)

(assert (=> b!1552353 m!1824942))

(declare-fun m!1824944 () Bool)

(assert (=> b!1552353 m!1824944))

(assert (=> b!1552353 m!1824936))

(assert (=> b!1552353 m!1824908))

(assert (=> b!1552353 m!1824940))

(assert (=> b!1552353 m!1824924))

(declare-fun m!1824946 () Bool)

(assert (=> b!1552353 m!1824946))

(assert (=> b!1552353 m!1824930))

(declare-fun m!1824948 () Bool)

(assert (=> b!1552353 m!1824948))

(declare-fun m!1824950 () Bool)

(assert (=> b!1552353 m!1824950))

(assert (=> bm!101867 m!1823997))

(declare-fun m!1824952 () Bool)

(assert (=> bm!101867 m!1824952))

(declare-fun m!1824954 () Bool)

(assert (=> bm!101861 m!1824954))

(assert (=> bm!101830 d!460652))

(declare-fun d!460654 () Bool)

(assert (=> d!460654 (= (list!6482 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))) (list!6483 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))))))

(declare-fun bs!387486 () Bool)

(assert (= bs!387486 d!460654))

(declare-fun m!1824956 () Bool)

(assert (=> bs!387486 m!1824956))

(assert (=> bs!387126 d!460654))

(declare-fun d!460656 () Bool)

(assert (=> d!460656 (= (list!6482 (seqFromList!1769 lt!537498)) (list!6483 (c!252328 (seqFromList!1769 lt!537498))))))

(declare-fun bs!387487 () Bool)

(assert (= bs!387487 d!460656))

(declare-fun m!1824958 () Bool)

(assert (=> bs!387487 m!1824958))

(assert (=> bs!387126 d!460656))

(declare-fun bs!387488 () Bool)

(declare-fun d!460658 () Bool)

(assert (= bs!387488 (and d!460658 d!460586)))

(declare-fun lambda!65715 () Int)

(assert (=> bs!387488 (= lambda!65715 lambda!65706)))

(declare-fun bs!387489 () Bool)

(assert (= bs!387489 (and d!460658 d!460538)))

(assert (=> bs!387489 (= lambda!65715 lambda!65699)))

(declare-fun bs!387490 () Bool)

(assert (= bs!387490 (and d!460658 d!460592)))

(assert (=> bs!387490 (= lambda!65715 lambda!65707)))

(declare-fun bs!387491 () Bool)

(assert (= bs!387491 (and d!460658 d!460458)))

(assert (=> bs!387491 (= lambda!65715 lambda!65679)))

(declare-fun bs!387492 () Bool)

(assert (= bs!387492 (and d!460658 d!460500)))

(assert (=> bs!387492 (= lambda!65715 lambda!65695)))

(declare-fun bs!387493 () Bool)

(assert (= bs!387493 (and d!460658 d!460540)))

(assert (=> bs!387493 (= lambda!65715 lambda!65700)))

(declare-fun bs!387494 () Bool)

(assert (= bs!387494 (and d!460658 d!460468)))

(assert (=> bs!387494 (= lambda!65715 lambda!65683)))

(declare-fun bs!387495 () Bool)

(assert (= bs!387495 (and d!460658 d!460438)))

(assert (=> bs!387495 (= lambda!65715 lambda!65678)))

(declare-fun bs!387496 () Bool)

(assert (= bs!387496 (and d!460658 d!460610)))

(assert (=> bs!387496 (= lambda!65715 lambda!65708)))

(declare-fun bs!387497 () Bool)

(assert (= bs!387497 (and d!460658 d!460424)))

(assert (=> bs!387497 (= lambda!65715 lambda!65676)))

(declare-fun bs!387498 () Bool)

(assert (= bs!387498 (and d!460658 d!460482)))

(assert (=> bs!387498 (= lambda!65715 lambda!65690)))

(declare-fun bs!387499 () Bool)

(assert (= bs!387499 (and d!460658 d!460466)))

(assert (=> bs!387499 (= lambda!65715 lambda!65682)))

(declare-fun bs!387500 () Bool)

(assert (= bs!387500 (and d!460658 d!460520)))

(assert (=> bs!387500 (= lambda!65715 lambda!65698)))

(declare-fun bs!387501 () Bool)

(assert (= bs!387501 (and d!460658 d!460572)))

(assert (=> bs!387501 (= lambda!65715 lambda!65705)))

(declare-fun bs!387502 () Bool)

(assert (= bs!387502 (and d!460658 d!460508)))

(assert (=> bs!387502 (= lambda!65715 lambda!65696)))

(declare-fun bs!387503 () Bool)

(assert (= bs!387503 (and d!460658 d!460614)))

(assert (=> bs!387503 (= lambda!65715 lambda!65710)))

(declare-fun bs!387504 () Bool)

(assert (= bs!387504 (and d!460658 d!460566)))

(assert (=> bs!387504 (= lambda!65715 lambda!65701)))

(declare-fun bs!387505 () Bool)

(assert (= bs!387505 (and d!460658 d!460464)))

(assert (=> bs!387505 (= lambda!65715 lambda!65681)))

(declare-fun bs!387506 () Bool)

(assert (= bs!387506 (and d!460658 d!460628)))

(assert (=> bs!387506 (= lambda!65715 lambda!65711)))

(declare-fun bs!387507 () Bool)

(assert (= bs!387507 (and d!460658 d!460514)))

(assert (=> bs!387507 (= lambda!65715 lambda!65697)))

(declare-fun bs!387508 () Bool)

(assert (= bs!387508 (and d!460658 d!460408)))

(assert (=> bs!387508 (= lambda!65715 lambda!65675)))

(declare-fun bs!387509 () Bool)

(assert (= bs!387509 (and d!460658 d!460612)))

(assert (=> bs!387509 (= lambda!65715 lambda!65709)))

(declare-fun bs!387510 () Bool)

(assert (= bs!387510 (and d!460658 d!460460)))

(assert (=> bs!387510 (= lambda!65715 lambda!65680)))

(declare-fun bs!387511 () Bool)

(assert (= bs!387511 (and d!460658 d!460488)))

(assert (=> bs!387511 (= lambda!65715 lambda!65691)))

(declare-fun bs!387512 () Bool)

(assert (= bs!387512 (and d!460658 d!460428)))

(assert (=> bs!387512 (= lambda!65715 lambda!65677)))

(assert (=> d!460658 (= (inv!22053 setElem!10604) (forall!3917 (exprs!1287 setElem!10604) lambda!65715))))

(declare-fun bs!387513 () Bool)

(assert (= bs!387513 d!460658))

(declare-fun m!1824960 () Bool)

(assert (=> bs!387513 m!1824960))

(assert (=> setNonEmpty!10604 d!460658))

(declare-fun d!460660 () Bool)

(declare-fun res!693472 () Bool)

(declare-fun e!995714 () Bool)

(assert (=> d!460660 (=> (not res!693472) (not e!995714))))

(assert (=> d!460660 (= res!693472 (= (csize!11348 (c!252328 totalInput!568)) (+ (size!13580 (left!13648 (c!252328 totalInput!568))) (size!13580 (right!13978 (c!252328 totalInput!568))))))))

(assert (=> d!460660 (= (inv!22051 (c!252328 totalInput!568)) e!995714)))

(declare-fun b!1552360 () Bool)

(declare-fun res!693473 () Bool)

(assert (=> b!1552360 (=> (not res!693473) (not e!995714))))

(assert (=> b!1552360 (= res!693473 (and (not (= (left!13648 (c!252328 totalInput!568)) Empty!5559)) (not (= (right!13978 (c!252328 totalInput!568)) Empty!5559))))))

(declare-fun b!1552361 () Bool)

(declare-fun res!693474 () Bool)

(assert (=> b!1552361 (=> (not res!693474) (not e!995714))))

(assert (=> b!1552361 (= res!693474 (= (cheight!5770 (c!252328 totalInput!568)) (+ (max!0 (height!827 (left!13648 (c!252328 totalInput!568))) (height!827 (right!13978 (c!252328 totalInput!568)))) 1)))))

(declare-fun b!1552362 () Bool)

(assert (=> b!1552362 (= e!995714 (<= 0 (cheight!5770 (c!252328 totalInput!568))))))

(assert (= (and d!460660 res!693472) b!1552360))

(assert (= (and b!1552360 res!693473) b!1552361))

(assert (= (and b!1552361 res!693474) b!1552362))

(declare-fun m!1824962 () Bool)

(assert (=> d!460660 m!1824962))

(declare-fun m!1824964 () Bool)

(assert (=> d!460660 m!1824964))

(assert (=> b!1552361 m!1824443))

(assert (=> b!1552361 m!1824445))

(assert (=> b!1552361 m!1824443))

(assert (=> b!1552361 m!1824445))

(declare-fun m!1824966 () Bool)

(assert (=> b!1552361 m!1824966))

(assert (=> b!1551780 d!460660))

(assert (=> d!460356 d!460352))

(declare-fun d!460662 () Bool)

(declare-fun e!995717 () Bool)

(assert (=> d!460662 e!995717))

(declare-fun res!693477 () Bool)

(assert (=> d!460662 (=> res!693477 e!995717)))

(assert (=> d!460662 (= res!693477 (isEmpty!10094 (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(assert (=> d!460662 true))

(declare-fun _$92!252 () Unit!26027)

(assert (=> d!460662 (= (choose!9249 (regex!2941 rule!240) lt!537496) _$92!252)))

(declare-fun b!1552365 () Bool)

(assert (=> b!1552365 (= e!995717 (matchR!1874 (regex!2941 rule!240) (_1!9424 (findLongestMatchInner!327 (regex!2941 rule!240) Nil!16779 (size!13577 Nil!16779) lt!537496 lt!537496 (size!13577 lt!537496)))))))

(assert (= (and d!460662 (not res!693477)) b!1552365))

(assert (=> d!460662 m!1824001))

(assert (=> d!460662 m!1823997))

(assert (=> d!460662 m!1824001))

(assert (=> d!460662 m!1823997))

(assert (=> d!460662 m!1824003))

(assert (=> d!460662 m!1824123))

(assert (=> b!1552365 m!1824001))

(assert (=> b!1552365 m!1823997))

(assert (=> b!1552365 m!1824001))

(assert (=> b!1552365 m!1823997))

(assert (=> b!1552365 m!1824003))

(assert (=> b!1552365 m!1824127))

(assert (=> d!460356 d!460662))

(assert (=> d!460356 d!460354))

(assert (=> d!460356 d!460358))

(assert (=> d!460356 d!460638))

(assert (=> d!460356 d!460406))

(assert (=> b!1551756 d!460496))

(declare-fun d!460664 () Bool)

(assert (=> d!460664 (= (inv!22054 (xs!8359 (c!252328 input!1676))) (<= (size!13577 (innerList!5619 (xs!8359 (c!252328 input!1676)))) 2147483647))))

(declare-fun bs!387514 () Bool)

(assert (= bs!387514 d!460664))

(declare-fun m!1824968 () Bool)

(assert (=> bs!387514 m!1824968))

(assert (=> b!1551891 d!460664))

(declare-fun d!460666 () Bool)

(declare-fun lt!537763 () Int)

(assert (=> d!460666 (>= lt!537763 0)))

(declare-fun e!995718 () Int)

(assert (=> d!460666 (= lt!537763 e!995718)))

(declare-fun c!252458 () Bool)

(assert (=> d!460666 (= c!252458 ((_ is Nil!16779) (_1!9424 lt!537617)))))

(assert (=> d!460666 (= (size!13577 (_1!9424 lt!537617)) lt!537763)))

(declare-fun b!1552366 () Bool)

(assert (=> b!1552366 (= e!995718 0)))

(declare-fun b!1552367 () Bool)

(assert (=> b!1552367 (= e!995718 (+ 1 (size!13577 (t!141250 (_1!9424 lt!537617)))))))

(assert (= (and d!460666 c!252458) b!1552366))

(assert (= (and d!460666 (not c!252458)) b!1552367))

(declare-fun m!1824970 () Bool)

(assert (=> b!1552367 m!1824970))

(assert (=> b!1551690 d!460666))

(assert (=> b!1551690 d!460354))

(declare-fun d!460668 () Bool)

(declare-fun res!693478 () Bool)

(declare-fun e!995719 () Bool)

(assert (=> d!460668 (=> (not res!693478) (not e!995719))))

(assert (=> d!460668 (= res!693478 (<= (size!13577 (list!6484 (xs!8359 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) 512))))

(assert (=> d!460668 (= (inv!22052 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) e!995719)))

(declare-fun b!1552368 () Bool)

(declare-fun res!693479 () Bool)

(assert (=> b!1552368 (=> (not res!693479) (not e!995719))))

(assert (=> b!1552368 (= res!693479 (= (csize!11349 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) (size!13577 (list!6484 (xs!8359 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))))))

(declare-fun b!1552369 () Bool)

(assert (=> b!1552369 (= e!995719 (and (> (csize!11349 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) 0) (<= (csize!11349 (c!252328 (totalInput!2444 cacheFurthestNullable!103))) 512)))))

(assert (= (and d!460668 res!693478) b!1552368))

(assert (= (and b!1552368 res!693479) b!1552369))

(declare-fun m!1824972 () Bool)

(assert (=> d!460668 m!1824972))

(assert (=> d!460668 m!1824972))

(declare-fun m!1824974 () Bool)

(assert (=> d!460668 m!1824974))

(assert (=> b!1552368 m!1824972))

(assert (=> b!1552368 m!1824972))

(assert (=> b!1552368 m!1824974))

(assert (=> b!1551779 d!460668))

(declare-fun b!1552370 () Bool)

(declare-fun e!995724 () Bool)

(assert (=> b!1552370 (= e!995724 (not (= (head!3110 (tail!2205 (_1!9424 lt!537499))) (c!252327 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499)))))))))

(declare-fun b!1552371 () Bool)

(declare-fun e!995725 () Bool)

(assert (=> b!1552371 (= e!995725 e!995724)))

(declare-fun res!693482 () Bool)

(assert (=> b!1552371 (=> res!693482 e!995724)))

(declare-fun call!101873 () Bool)

(assert (=> b!1552371 (= res!693482 call!101873)))

(declare-fun b!1552372 () Bool)

(declare-fun e!995721 () Bool)

(assert (=> b!1552372 (= e!995721 (= (head!3110 (tail!2205 (_1!9424 lt!537499))) (c!252327 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))))))))

(declare-fun b!1552373 () Bool)

(declare-fun res!693486 () Bool)

(assert (=> b!1552373 (=> (not res!693486) (not e!995721))))

(assert (=> b!1552373 (= res!693486 (not call!101873))))

(declare-fun b!1552374 () Bool)

(declare-fun e!995722 () Bool)

(assert (=> b!1552374 (= e!995722 (nullable!1267 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499)))))))

(declare-fun d!460670 () Bool)

(declare-fun e!995720 () Bool)

(assert (=> d!460670 e!995720))

(declare-fun c!252459 () Bool)

(assert (=> d!460670 (= c!252459 ((_ is EmptyExpr!4269) (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499)))))))

(declare-fun lt!537764 () Bool)

(assert (=> d!460670 (= lt!537764 e!995722)))

(declare-fun c!252461 () Bool)

(assert (=> d!460670 (= c!252461 (isEmpty!10094 (tail!2205 (_1!9424 lt!537499))))))

(assert (=> d!460670 (validRegex!1708 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))))))

(assert (=> d!460670 (= (matchR!1874 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))) (tail!2205 (_1!9424 lt!537499))) lt!537764)))

(declare-fun b!1552375 () Bool)

(declare-fun res!693480 () Bool)

(assert (=> b!1552375 (=> res!693480 e!995724)))

(assert (=> b!1552375 (= res!693480 (not (isEmpty!10094 (tail!2205 (tail!2205 (_1!9424 lt!537499))))))))

(declare-fun b!1552376 () Bool)

(assert (=> b!1552376 (= e!995722 (matchR!1874 (derivativeStep!1019 (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))) (head!3110 (tail!2205 (_1!9424 lt!537499)))) (tail!2205 (tail!2205 (_1!9424 lt!537499)))))))

(declare-fun b!1552377 () Bool)

(declare-fun e!995723 () Bool)

(assert (=> b!1552377 (= e!995723 e!995725)))

(declare-fun res!693485 () Bool)

(assert (=> b!1552377 (=> (not res!693485) (not e!995725))))

(assert (=> b!1552377 (= res!693485 (not lt!537764))))

(declare-fun b!1552378 () Bool)

(declare-fun e!995726 () Bool)

(assert (=> b!1552378 (= e!995726 (not lt!537764))))

(declare-fun b!1552379 () Bool)

(declare-fun res!693483 () Bool)

(assert (=> b!1552379 (=> res!693483 e!995723)))

(assert (=> b!1552379 (= res!693483 e!995721)))

(declare-fun res!693487 () Bool)

(assert (=> b!1552379 (=> (not res!693487) (not e!995721))))

(assert (=> b!1552379 (= res!693487 lt!537764)))

(declare-fun bm!101868 () Bool)

(assert (=> bm!101868 (= call!101873 (isEmpty!10094 (tail!2205 (_1!9424 lt!537499))))))

(declare-fun b!1552380 () Bool)

(assert (=> b!1552380 (= e!995720 e!995726)))

(declare-fun c!252460 () Bool)

(assert (=> b!1552380 (= c!252460 ((_ is EmptyLang!4269) (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499)))))))

(declare-fun b!1552381 () Bool)

(declare-fun res!693484 () Bool)

(assert (=> b!1552381 (=> res!693484 e!995723)))

(assert (=> b!1552381 (= res!693484 (not ((_ is ElementMatch!4269) (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))))))))

(assert (=> b!1552381 (= e!995726 e!995723)))

(declare-fun b!1552382 () Bool)

(declare-fun res!693481 () Bool)

(assert (=> b!1552382 (=> (not res!693481) (not e!995721))))

(assert (=> b!1552382 (= res!693481 (isEmpty!10094 (tail!2205 (tail!2205 (_1!9424 lt!537499)))))))

(declare-fun b!1552383 () Bool)

(assert (=> b!1552383 (= e!995720 (= lt!537764 call!101873))))

(assert (= (and d!460670 c!252461) b!1552374))

(assert (= (and d!460670 (not c!252461)) b!1552376))

(assert (= (and d!460670 c!252459) b!1552383))

(assert (= (and d!460670 (not c!252459)) b!1552380))

(assert (= (and b!1552380 c!252460) b!1552378))

(assert (= (and b!1552380 (not c!252460)) b!1552381))

(assert (= (and b!1552381 (not res!693484)) b!1552379))

(assert (= (and b!1552379 res!693487) b!1552373))

(assert (= (and b!1552373 res!693486) b!1552382))

(assert (= (and b!1552382 res!693481) b!1552372))

(assert (= (and b!1552379 (not res!693483)) b!1552377))

(assert (= (and b!1552377 res!693485) b!1552371))

(assert (= (and b!1552371 (not res!693482)) b!1552375))

(assert (= (and b!1552375 (not res!693480)) b!1552370))

(assert (= (or b!1552383 b!1552371 b!1552373) bm!101868))

(assert (=> b!1552376 m!1824245))

(declare-fun m!1824976 () Bool)

(assert (=> b!1552376 m!1824976))

(assert (=> b!1552376 m!1824243))

(assert (=> b!1552376 m!1824976))

(declare-fun m!1824978 () Bool)

(assert (=> b!1552376 m!1824978))

(assert (=> b!1552376 m!1824245))

(declare-fun m!1824980 () Bool)

(assert (=> b!1552376 m!1824980))

(assert (=> b!1552376 m!1824978))

(assert (=> b!1552376 m!1824980))

(declare-fun m!1824982 () Bool)

(assert (=> b!1552376 m!1824982))

(assert (=> b!1552375 m!1824245))

(assert (=> b!1552375 m!1824980))

(assert (=> b!1552375 m!1824980))

(declare-fun m!1824984 () Bool)

(assert (=> b!1552375 m!1824984))

(assert (=> b!1552374 m!1824243))

(declare-fun m!1824986 () Bool)

(assert (=> b!1552374 m!1824986))

(assert (=> b!1552372 m!1824245))

(assert (=> b!1552372 m!1824976))

(assert (=> b!1552382 m!1824245))

(assert (=> b!1552382 m!1824980))

(assert (=> b!1552382 m!1824980))

(assert (=> b!1552382 m!1824984))

(assert (=> b!1552370 m!1824245))

(assert (=> b!1552370 m!1824976))

(assert (=> d!460670 m!1824245))

(assert (=> d!460670 m!1824249))

(assert (=> d!460670 m!1824243))

(declare-fun m!1824988 () Bool)

(assert (=> d!460670 m!1824988))

(assert (=> bm!101868 m!1824245))

(assert (=> bm!101868 m!1824249))

(assert (=> b!1551760 d!460670))

(declare-fun bm!101869 () Bool)

(declare-fun c!252465 () Bool)

(declare-fun call!101875 () Regex!4269)

(assert (=> bm!101869 (= call!101875 (derivativeStep!1019 (ite c!252465 (regTwo!9051 (regex!2941 rule!240)) (regTwo!9050 (regex!2941 rule!240))) (head!3110 (_1!9424 lt!537499))))))

(declare-fun b!1552384 () Bool)

(declare-fun e!995731 () Regex!4269)

(declare-fun call!101874 () Regex!4269)

(assert (=> b!1552384 (= e!995731 (Union!4269 call!101874 call!101875))))

(declare-fun d!460672 () Bool)

(declare-fun lt!537765 () Regex!4269)

(assert (=> d!460672 (validRegex!1708 lt!537765)))

(declare-fun e!995727 () Regex!4269)

(assert (=> d!460672 (= lt!537765 e!995727)))

(declare-fun c!252463 () Bool)

(assert (=> d!460672 (= c!252463 (or ((_ is EmptyExpr!4269) (regex!2941 rule!240)) ((_ is EmptyLang!4269) (regex!2941 rule!240))))))

(assert (=> d!460672 (validRegex!1708 (regex!2941 rule!240))))

(assert (=> d!460672 (= (derivativeStep!1019 (regex!2941 rule!240) (head!3110 (_1!9424 lt!537499))) lt!537765)))

(declare-fun b!1552385 () Bool)

(declare-fun e!995728 () Regex!4269)

(declare-fun call!101877 () Regex!4269)

(assert (=> b!1552385 (= e!995728 (Concat!7301 call!101877 (regex!2941 rule!240)))))

(declare-fun b!1552386 () Bool)

(declare-fun e!995730 () Regex!4269)

(assert (=> b!1552386 (= e!995730 (ite (= (head!3110 (_1!9424 lt!537499)) (c!252327 (regex!2941 rule!240))) EmptyExpr!4269 EmptyLang!4269))))

(declare-fun b!1552387 () Bool)

(assert (=> b!1552387 (= e!995727 e!995730)))

(declare-fun c!252462 () Bool)

(assert (=> b!1552387 (= c!252462 ((_ is ElementMatch!4269) (regex!2941 rule!240)))))

(declare-fun b!1552388 () Bool)

(assert (=> b!1552388 (= c!252465 ((_ is Union!4269) (regex!2941 rule!240)))))

(assert (=> b!1552388 (= e!995730 e!995731)))

(declare-fun bm!101870 () Bool)

(declare-fun c!252466 () Bool)

(assert (=> bm!101870 (= call!101874 (derivativeStep!1019 (ite c!252465 (regOne!9051 (regex!2941 rule!240)) (ite c!252466 (reg!4598 (regex!2941 rule!240)) (regOne!9050 (regex!2941 rule!240)))) (head!3110 (_1!9424 lt!537499))))))

(declare-fun bm!101871 () Bool)

(assert (=> bm!101871 (= call!101877 call!101874)))

(declare-fun bm!101872 () Bool)

(declare-fun call!101876 () Regex!4269)

(assert (=> bm!101872 (= call!101876 call!101877)))

(declare-fun b!1552389 () Bool)

(declare-fun e!995729 () Regex!4269)

(assert (=> b!1552389 (= e!995729 (Union!4269 (Concat!7301 call!101876 (regTwo!9050 (regex!2941 rule!240))) EmptyLang!4269))))

(declare-fun b!1552390 () Bool)

(declare-fun c!252464 () Bool)

(assert (=> b!1552390 (= c!252464 (nullable!1267 (regOne!9050 (regex!2941 rule!240))))))

(assert (=> b!1552390 (= e!995728 e!995729)))

(declare-fun b!1552391 () Bool)

(assert (=> b!1552391 (= e!995729 (Union!4269 (Concat!7301 call!101876 (regTwo!9050 (regex!2941 rule!240))) call!101875))))

(declare-fun b!1552392 () Bool)

(assert (=> b!1552392 (= e!995731 e!995728)))

(assert (=> b!1552392 (= c!252466 ((_ is Star!4269) (regex!2941 rule!240)))))

(declare-fun b!1552393 () Bool)

(assert (=> b!1552393 (= e!995727 EmptyLang!4269)))

(assert (= (and d!460672 c!252463) b!1552393))

(assert (= (and d!460672 (not c!252463)) b!1552387))

(assert (= (and b!1552387 c!252462) b!1552386))

(assert (= (and b!1552387 (not c!252462)) b!1552388))

(assert (= (and b!1552388 c!252465) b!1552384))

(assert (= (and b!1552388 (not c!252465)) b!1552392))

(assert (= (and b!1552392 c!252466) b!1552385))

(assert (= (and b!1552392 (not c!252466)) b!1552390))

(assert (= (and b!1552390 c!252464) b!1552391))

(assert (= (and b!1552390 (not c!252464)) b!1552389))

(assert (= (or b!1552391 b!1552389) bm!101872))

(assert (= (or b!1552385 bm!101872) bm!101871))

(assert (= (or b!1552384 bm!101871) bm!101870))

(assert (= (or b!1552384 b!1552391) bm!101869))

(assert (=> bm!101869 m!1824241))

(declare-fun m!1824990 () Bool)

(assert (=> bm!101869 m!1824990))

(declare-fun m!1824992 () Bool)

(assert (=> d!460672 m!1824992))

(assert (=> d!460672 m!1824163))

(assert (=> bm!101870 m!1824241))

(declare-fun m!1824994 () Bool)

(assert (=> bm!101870 m!1824994))

(assert (=> b!1552390 m!1824581))

(assert (=> b!1551760 d!460672))

(assert (=> b!1551760 d!460496))

(assert (=> b!1551760 d!460454))

(declare-fun bs!387515 () Bool)

(declare-fun d!460674 () Bool)

(assert (= bs!387515 (and d!460674 d!460586)))

(declare-fun lambda!65716 () Int)

(assert (=> bs!387515 (= lambda!65716 lambda!65706)))

(declare-fun bs!387516 () Bool)

(assert (= bs!387516 (and d!460674 d!460538)))

(assert (=> bs!387516 (= lambda!65716 lambda!65699)))

(declare-fun bs!387517 () Bool)

(assert (= bs!387517 (and d!460674 d!460592)))

(assert (=> bs!387517 (= lambda!65716 lambda!65707)))

(declare-fun bs!387518 () Bool)

(assert (= bs!387518 (and d!460674 d!460458)))

(assert (=> bs!387518 (= lambda!65716 lambda!65679)))

(declare-fun bs!387519 () Bool)

(assert (= bs!387519 (and d!460674 d!460500)))

(assert (=> bs!387519 (= lambda!65716 lambda!65695)))

(declare-fun bs!387520 () Bool)

(assert (= bs!387520 (and d!460674 d!460540)))

(assert (=> bs!387520 (= lambda!65716 lambda!65700)))

(declare-fun bs!387521 () Bool)

(assert (= bs!387521 (and d!460674 d!460468)))

(assert (=> bs!387521 (= lambda!65716 lambda!65683)))

(declare-fun bs!387522 () Bool)

(assert (= bs!387522 (and d!460674 d!460438)))

(assert (=> bs!387522 (= lambda!65716 lambda!65678)))

(declare-fun bs!387523 () Bool)

(assert (= bs!387523 (and d!460674 d!460424)))

(assert (=> bs!387523 (= lambda!65716 lambda!65676)))

(declare-fun bs!387524 () Bool)

(assert (= bs!387524 (and d!460674 d!460482)))

(assert (=> bs!387524 (= lambda!65716 lambda!65690)))

(declare-fun bs!387525 () Bool)

(assert (= bs!387525 (and d!460674 d!460466)))

(assert (=> bs!387525 (= lambda!65716 lambda!65682)))

(declare-fun bs!387526 () Bool)

(assert (= bs!387526 (and d!460674 d!460520)))

(assert (=> bs!387526 (= lambda!65716 lambda!65698)))

(declare-fun bs!387527 () Bool)

(assert (= bs!387527 (and d!460674 d!460572)))

(assert (=> bs!387527 (= lambda!65716 lambda!65705)))

(declare-fun bs!387528 () Bool)

(assert (= bs!387528 (and d!460674 d!460508)))

(assert (=> bs!387528 (= lambda!65716 lambda!65696)))

(declare-fun bs!387529 () Bool)

(assert (= bs!387529 (and d!460674 d!460614)))

(assert (=> bs!387529 (= lambda!65716 lambda!65710)))

(declare-fun bs!387530 () Bool)

(assert (= bs!387530 (and d!460674 d!460566)))

(assert (=> bs!387530 (= lambda!65716 lambda!65701)))

(declare-fun bs!387531 () Bool)

(assert (= bs!387531 (and d!460674 d!460464)))

(assert (=> bs!387531 (= lambda!65716 lambda!65681)))

(declare-fun bs!387532 () Bool)

(assert (= bs!387532 (and d!460674 d!460628)))

(assert (=> bs!387532 (= lambda!65716 lambda!65711)))

(declare-fun bs!387533 () Bool)

(assert (= bs!387533 (and d!460674 d!460658)))

(assert (=> bs!387533 (= lambda!65716 lambda!65715)))

(declare-fun bs!387534 () Bool)

(assert (= bs!387534 (and d!460674 d!460610)))

(assert (=> bs!387534 (= lambda!65716 lambda!65708)))

(declare-fun bs!387535 () Bool)

(assert (= bs!387535 (and d!460674 d!460514)))

(assert (=> bs!387535 (= lambda!65716 lambda!65697)))

(declare-fun bs!387536 () Bool)

(assert (= bs!387536 (and d!460674 d!460408)))

(assert (=> bs!387536 (= lambda!65716 lambda!65675)))

(declare-fun bs!387537 () Bool)

(assert (= bs!387537 (and d!460674 d!460612)))

(assert (=> bs!387537 (= lambda!65716 lambda!65709)))

(declare-fun bs!387538 () Bool)

(assert (= bs!387538 (and d!460674 d!460460)))

(assert (=> bs!387538 (= lambda!65716 lambda!65680)))

(declare-fun bs!387539 () Bool)

(assert (= bs!387539 (and d!460674 d!460488)))

(assert (=> bs!387539 (= lambda!65716 lambda!65691)))

(declare-fun bs!387540 () Bool)

(assert (= bs!387540 (and d!460674 d!460428)))

(assert (=> bs!387540 (= lambda!65716 lambda!65677)))

(assert (=> d!460674 (= (inv!22053 (_1!9418 (_1!9419 (h!22182 mapDefault!8245)))) (forall!3917 (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapDefault!8245)))) lambda!65716))))

(declare-fun bs!387541 () Bool)

(assert (= bs!387541 d!460674))

(declare-fun m!1824996 () Bool)

(assert (=> bs!387541 m!1824996))

(assert (=> b!1551816 d!460674))

(declare-fun bs!387542 () Bool)

(declare-fun d!460676 () Bool)

(assert (= bs!387542 (and d!460676 d!460586)))

(declare-fun lambda!65717 () Int)

(assert (=> bs!387542 (= lambda!65717 lambda!65706)))

(declare-fun bs!387543 () Bool)

(assert (= bs!387543 (and d!460676 d!460538)))

(assert (=> bs!387543 (= lambda!65717 lambda!65699)))

(declare-fun bs!387544 () Bool)

(assert (= bs!387544 (and d!460676 d!460592)))

(assert (=> bs!387544 (= lambda!65717 lambda!65707)))

(declare-fun bs!387545 () Bool)

(assert (= bs!387545 (and d!460676 d!460458)))

(assert (=> bs!387545 (= lambda!65717 lambda!65679)))

(declare-fun bs!387546 () Bool)

(assert (= bs!387546 (and d!460676 d!460500)))

(assert (=> bs!387546 (= lambda!65717 lambda!65695)))

(declare-fun bs!387547 () Bool)

(assert (= bs!387547 (and d!460676 d!460540)))

(assert (=> bs!387547 (= lambda!65717 lambda!65700)))

(declare-fun bs!387548 () Bool)

(assert (= bs!387548 (and d!460676 d!460674)))

(assert (=> bs!387548 (= lambda!65717 lambda!65716)))

(declare-fun bs!387549 () Bool)

(assert (= bs!387549 (and d!460676 d!460468)))

(assert (=> bs!387549 (= lambda!65717 lambda!65683)))

(declare-fun bs!387550 () Bool)

(assert (= bs!387550 (and d!460676 d!460438)))

(assert (=> bs!387550 (= lambda!65717 lambda!65678)))

(declare-fun bs!387551 () Bool)

(assert (= bs!387551 (and d!460676 d!460424)))

(assert (=> bs!387551 (= lambda!65717 lambda!65676)))

(declare-fun bs!387552 () Bool)

(assert (= bs!387552 (and d!460676 d!460482)))

(assert (=> bs!387552 (= lambda!65717 lambda!65690)))

(declare-fun bs!387553 () Bool)

(assert (= bs!387553 (and d!460676 d!460466)))

(assert (=> bs!387553 (= lambda!65717 lambda!65682)))

(declare-fun bs!387554 () Bool)

(assert (= bs!387554 (and d!460676 d!460520)))

(assert (=> bs!387554 (= lambda!65717 lambda!65698)))

(declare-fun bs!387555 () Bool)

(assert (= bs!387555 (and d!460676 d!460572)))

(assert (=> bs!387555 (= lambda!65717 lambda!65705)))

(declare-fun bs!387556 () Bool)

(assert (= bs!387556 (and d!460676 d!460508)))

(assert (=> bs!387556 (= lambda!65717 lambda!65696)))

(declare-fun bs!387557 () Bool)

(assert (= bs!387557 (and d!460676 d!460614)))

(assert (=> bs!387557 (= lambda!65717 lambda!65710)))

(declare-fun bs!387558 () Bool)

(assert (= bs!387558 (and d!460676 d!460566)))

(assert (=> bs!387558 (= lambda!65717 lambda!65701)))

(declare-fun bs!387559 () Bool)

(assert (= bs!387559 (and d!460676 d!460464)))

(assert (=> bs!387559 (= lambda!65717 lambda!65681)))

(declare-fun bs!387560 () Bool)

(assert (= bs!387560 (and d!460676 d!460628)))

(assert (=> bs!387560 (= lambda!65717 lambda!65711)))

(declare-fun bs!387561 () Bool)

(assert (= bs!387561 (and d!460676 d!460658)))

(assert (=> bs!387561 (= lambda!65717 lambda!65715)))

(declare-fun bs!387562 () Bool)

(assert (= bs!387562 (and d!460676 d!460610)))

(assert (=> bs!387562 (= lambda!65717 lambda!65708)))

(declare-fun bs!387563 () Bool)

(assert (= bs!387563 (and d!460676 d!460514)))

(assert (=> bs!387563 (= lambda!65717 lambda!65697)))

(declare-fun bs!387564 () Bool)

(assert (= bs!387564 (and d!460676 d!460408)))

(assert (=> bs!387564 (= lambda!65717 lambda!65675)))

(declare-fun bs!387565 () Bool)

(assert (= bs!387565 (and d!460676 d!460612)))

(assert (=> bs!387565 (= lambda!65717 lambda!65709)))

(declare-fun bs!387566 () Bool)

(assert (= bs!387566 (and d!460676 d!460460)))

(assert (=> bs!387566 (= lambda!65717 lambda!65680)))

(declare-fun bs!387567 () Bool)

(assert (= bs!387567 (and d!460676 d!460488)))

(assert (=> bs!387567 (= lambda!65717 lambda!65691)))

(declare-fun bs!387568 () Bool)

(assert (= bs!387568 (and d!460676 d!460428)))

(assert (=> bs!387568 (= lambda!65717 lambda!65677)))

(assert (=> d!460676 (= (inv!22053 (_2!9422 (_1!9423 (h!22184 mapValue!8244)))) (forall!3917 (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapValue!8244)))) lambda!65717))))

(declare-fun bs!387569 () Bool)

(assert (= bs!387569 d!460676))

(declare-fun m!1824998 () Bool)

(assert (=> bs!387569 m!1824998))

(assert (=> b!1551921 d!460676))

(assert (=> bm!101826 d!460554))

(declare-fun bs!387570 () Bool)

(declare-fun d!460678 () Bool)

(assert (= bs!387570 (and d!460678 d!460586)))

(declare-fun lambda!65718 () Int)

(assert (=> bs!387570 (= lambda!65718 lambda!65706)))

(declare-fun bs!387571 () Bool)

(assert (= bs!387571 (and d!460678 d!460538)))

(assert (=> bs!387571 (= lambda!65718 lambda!65699)))

(declare-fun bs!387572 () Bool)

(assert (= bs!387572 (and d!460678 d!460592)))

(assert (=> bs!387572 (= lambda!65718 lambda!65707)))

(declare-fun bs!387573 () Bool)

(assert (= bs!387573 (and d!460678 d!460458)))

(assert (=> bs!387573 (= lambda!65718 lambda!65679)))

(declare-fun bs!387574 () Bool)

(assert (= bs!387574 (and d!460678 d!460500)))

(assert (=> bs!387574 (= lambda!65718 lambda!65695)))

(declare-fun bs!387575 () Bool)

(assert (= bs!387575 (and d!460678 d!460540)))

(assert (=> bs!387575 (= lambda!65718 lambda!65700)))

(declare-fun bs!387576 () Bool)

(assert (= bs!387576 (and d!460678 d!460674)))

(assert (=> bs!387576 (= lambda!65718 lambda!65716)))

(declare-fun bs!387577 () Bool)

(assert (= bs!387577 (and d!460678 d!460468)))

(assert (=> bs!387577 (= lambda!65718 lambda!65683)))

(declare-fun bs!387578 () Bool)

(assert (= bs!387578 (and d!460678 d!460438)))

(assert (=> bs!387578 (= lambda!65718 lambda!65678)))

(declare-fun bs!387579 () Bool)

(assert (= bs!387579 (and d!460678 d!460424)))

(assert (=> bs!387579 (= lambda!65718 lambda!65676)))

(declare-fun bs!387580 () Bool)

(assert (= bs!387580 (and d!460678 d!460482)))

(assert (=> bs!387580 (= lambda!65718 lambda!65690)))

(declare-fun bs!387581 () Bool)

(assert (= bs!387581 (and d!460678 d!460676)))

(assert (=> bs!387581 (= lambda!65718 lambda!65717)))

(declare-fun bs!387582 () Bool)

(assert (= bs!387582 (and d!460678 d!460466)))

(assert (=> bs!387582 (= lambda!65718 lambda!65682)))

(declare-fun bs!387583 () Bool)

(assert (= bs!387583 (and d!460678 d!460520)))

(assert (=> bs!387583 (= lambda!65718 lambda!65698)))

(declare-fun bs!387584 () Bool)

(assert (= bs!387584 (and d!460678 d!460572)))

(assert (=> bs!387584 (= lambda!65718 lambda!65705)))

(declare-fun bs!387585 () Bool)

(assert (= bs!387585 (and d!460678 d!460508)))

(assert (=> bs!387585 (= lambda!65718 lambda!65696)))

(declare-fun bs!387586 () Bool)

(assert (= bs!387586 (and d!460678 d!460614)))

(assert (=> bs!387586 (= lambda!65718 lambda!65710)))

(declare-fun bs!387587 () Bool)

(assert (= bs!387587 (and d!460678 d!460566)))

(assert (=> bs!387587 (= lambda!65718 lambda!65701)))

(declare-fun bs!387588 () Bool)

(assert (= bs!387588 (and d!460678 d!460464)))

(assert (=> bs!387588 (= lambda!65718 lambda!65681)))

(declare-fun bs!387589 () Bool)

(assert (= bs!387589 (and d!460678 d!460628)))

(assert (=> bs!387589 (= lambda!65718 lambda!65711)))

(declare-fun bs!387590 () Bool)

(assert (= bs!387590 (and d!460678 d!460658)))

(assert (=> bs!387590 (= lambda!65718 lambda!65715)))

(declare-fun bs!387591 () Bool)

(assert (= bs!387591 (and d!460678 d!460610)))

(assert (=> bs!387591 (= lambda!65718 lambda!65708)))

(declare-fun bs!387592 () Bool)

(assert (= bs!387592 (and d!460678 d!460514)))

(assert (=> bs!387592 (= lambda!65718 lambda!65697)))

(declare-fun bs!387593 () Bool)

(assert (= bs!387593 (and d!460678 d!460408)))

(assert (=> bs!387593 (= lambda!65718 lambda!65675)))

(declare-fun bs!387594 () Bool)

(assert (= bs!387594 (and d!460678 d!460612)))

(assert (=> bs!387594 (= lambda!65718 lambda!65709)))

(declare-fun bs!387595 () Bool)

(assert (= bs!387595 (and d!460678 d!460460)))

(assert (=> bs!387595 (= lambda!65718 lambda!65680)))

(declare-fun bs!387596 () Bool)

(assert (= bs!387596 (and d!460678 d!460488)))

(assert (=> bs!387596 (= lambda!65718 lambda!65691)))

(declare-fun bs!387597 () Bool)

(assert (= bs!387597 (and d!460678 d!460428)))

(assert (=> bs!387597 (= lambda!65718 lambda!65677)))

(assert (=> d!460678 (= (inv!22053 setElem!10621) (forall!3917 (exprs!1287 setElem!10621) lambda!65718))))

(declare-fun bs!387598 () Bool)

(assert (= bs!387598 d!460678))

(declare-fun m!1825000 () Bool)

(assert (=> bs!387598 m!1825000))

(assert (=> setNonEmpty!10621 d!460678))

(assert (=> bm!101833 d!460362))

(declare-fun bs!387599 () Bool)

(declare-fun d!460680 () Bool)

(assert (= bs!387599 (and d!460680 d!460586)))

(declare-fun lambda!65719 () Int)

(assert (=> bs!387599 (= lambda!65719 lambda!65706)))

(declare-fun bs!387600 () Bool)

(assert (= bs!387600 (and d!460680 d!460538)))

(assert (=> bs!387600 (= lambda!65719 lambda!65699)))

(declare-fun bs!387601 () Bool)

(assert (= bs!387601 (and d!460680 d!460592)))

(assert (=> bs!387601 (= lambda!65719 lambda!65707)))

(declare-fun bs!387602 () Bool)

(assert (= bs!387602 (and d!460680 d!460458)))

(assert (=> bs!387602 (= lambda!65719 lambda!65679)))

(declare-fun bs!387603 () Bool)

(assert (= bs!387603 (and d!460680 d!460500)))

(assert (=> bs!387603 (= lambda!65719 lambda!65695)))

(declare-fun bs!387604 () Bool)

(assert (= bs!387604 (and d!460680 d!460678)))

(assert (=> bs!387604 (= lambda!65719 lambda!65718)))

(declare-fun bs!387605 () Bool)

(assert (= bs!387605 (and d!460680 d!460540)))

(assert (=> bs!387605 (= lambda!65719 lambda!65700)))

(declare-fun bs!387606 () Bool)

(assert (= bs!387606 (and d!460680 d!460674)))

(assert (=> bs!387606 (= lambda!65719 lambda!65716)))

(declare-fun bs!387607 () Bool)

(assert (= bs!387607 (and d!460680 d!460468)))

(assert (=> bs!387607 (= lambda!65719 lambda!65683)))

(declare-fun bs!387608 () Bool)

(assert (= bs!387608 (and d!460680 d!460438)))

(assert (=> bs!387608 (= lambda!65719 lambda!65678)))

(declare-fun bs!387609 () Bool)

(assert (= bs!387609 (and d!460680 d!460424)))

(assert (=> bs!387609 (= lambda!65719 lambda!65676)))

(declare-fun bs!387610 () Bool)

(assert (= bs!387610 (and d!460680 d!460482)))

(assert (=> bs!387610 (= lambda!65719 lambda!65690)))

(declare-fun bs!387611 () Bool)

(assert (= bs!387611 (and d!460680 d!460676)))

(assert (=> bs!387611 (= lambda!65719 lambda!65717)))

(declare-fun bs!387612 () Bool)

(assert (= bs!387612 (and d!460680 d!460466)))

(assert (=> bs!387612 (= lambda!65719 lambda!65682)))

(declare-fun bs!387613 () Bool)

(assert (= bs!387613 (and d!460680 d!460520)))

(assert (=> bs!387613 (= lambda!65719 lambda!65698)))

(declare-fun bs!387614 () Bool)

(assert (= bs!387614 (and d!460680 d!460572)))

(assert (=> bs!387614 (= lambda!65719 lambda!65705)))

(declare-fun bs!387615 () Bool)

(assert (= bs!387615 (and d!460680 d!460508)))

(assert (=> bs!387615 (= lambda!65719 lambda!65696)))

(declare-fun bs!387616 () Bool)

(assert (= bs!387616 (and d!460680 d!460614)))

(assert (=> bs!387616 (= lambda!65719 lambda!65710)))

(declare-fun bs!387617 () Bool)

(assert (= bs!387617 (and d!460680 d!460566)))

(assert (=> bs!387617 (= lambda!65719 lambda!65701)))

(declare-fun bs!387618 () Bool)

(assert (= bs!387618 (and d!460680 d!460464)))

(assert (=> bs!387618 (= lambda!65719 lambda!65681)))

(declare-fun bs!387619 () Bool)

(assert (= bs!387619 (and d!460680 d!460628)))

(assert (=> bs!387619 (= lambda!65719 lambda!65711)))

(declare-fun bs!387620 () Bool)

(assert (= bs!387620 (and d!460680 d!460658)))

(assert (=> bs!387620 (= lambda!65719 lambda!65715)))

(declare-fun bs!387621 () Bool)

(assert (= bs!387621 (and d!460680 d!460610)))

(assert (=> bs!387621 (= lambda!65719 lambda!65708)))

(declare-fun bs!387622 () Bool)

(assert (= bs!387622 (and d!460680 d!460514)))

(assert (=> bs!387622 (= lambda!65719 lambda!65697)))

(declare-fun bs!387623 () Bool)

(assert (= bs!387623 (and d!460680 d!460408)))

(assert (=> bs!387623 (= lambda!65719 lambda!65675)))

(declare-fun bs!387624 () Bool)

(assert (= bs!387624 (and d!460680 d!460612)))

(assert (=> bs!387624 (= lambda!65719 lambda!65709)))

(declare-fun bs!387625 () Bool)

(assert (= bs!387625 (and d!460680 d!460460)))

(assert (=> bs!387625 (= lambda!65719 lambda!65680)))

(declare-fun bs!387626 () Bool)

(assert (= bs!387626 (and d!460680 d!460488)))

(assert (=> bs!387626 (= lambda!65719 lambda!65691)))

(declare-fun bs!387627 () Bool)

(assert (= bs!387627 (and d!460680 d!460428)))

(assert (=> bs!387627 (= lambda!65719 lambda!65677)))

(assert (=> d!460680 (= (inv!22053 (_1!9418 (_1!9419 (h!22182 mapDefault!8249)))) (forall!3917 (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapDefault!8249)))) lambda!65719))))

(declare-fun bs!387628 () Bool)

(assert (= bs!387628 d!460680))

(declare-fun m!1825002 () Bool)

(assert (=> bs!387628 m!1825002))

(assert (=> b!1551850 d!460680))

(declare-fun condSetEmpty!10640 () Bool)

(assert (=> setNonEmpty!10628 (= condSetEmpty!10640 (= setRest!10629 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10640 () Bool)

(assert (=> setNonEmpty!10628 (= tp!453871 setRes!10640)))

(declare-fun setIsEmpty!10640 () Bool)

(assert (=> setIsEmpty!10640 setRes!10640))

(declare-fun setNonEmpty!10640 () Bool)

(declare-fun setElem!10640 () Context!1574)

(declare-fun e!995734 () Bool)

(declare-fun tp!454016 () Bool)

(assert (=> setNonEmpty!10640 (= setRes!10640 (and tp!454016 (inv!22053 setElem!10640) e!995734))))

(declare-fun setRest!10640 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10640 (= setRest!10629 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10640 true) setRest!10640))))

(declare-fun b!1552398 () Bool)

(declare-fun tp!454017 () Bool)

(assert (=> b!1552398 (= e!995734 tp!454017)))

(assert (= (and setNonEmpty!10628 condSetEmpty!10640) setIsEmpty!10640))

(assert (= (and setNonEmpty!10628 (not condSetEmpty!10640)) setNonEmpty!10640))

(assert (= setNonEmpty!10640 b!1552398))

(declare-fun m!1825004 () Bool)

(assert (=> setNonEmpty!10640 m!1825004))

(declare-fun b!1552403 () Bool)

(declare-fun e!995737 () Bool)

(declare-fun tp!454022 () Bool)

(declare-fun tp!454023 () Bool)

(assert (=> b!1552403 (= e!995737 (and tp!454022 tp!454023))))

(assert (=> b!1551913 (= tp!453925 e!995737)))

(assert (= (and b!1551913 ((_ is Cons!16780) (exprs!1287 setElem!10636))) b!1552403))

(declare-fun condSetEmpty!10641 () Bool)

(assert (=> setNonEmpty!10612 (= condSetEmpty!10641 (= setRest!10612 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10641 () Bool)

(assert (=> setNonEmpty!10612 (= tp!453809 setRes!10641)))

(declare-fun setIsEmpty!10641 () Bool)

(assert (=> setIsEmpty!10641 setRes!10641))

(declare-fun setElem!10641 () Context!1574)

(declare-fun setNonEmpty!10641 () Bool)

(declare-fun tp!454024 () Bool)

(declare-fun e!995738 () Bool)

(assert (=> setNonEmpty!10641 (= setRes!10641 (and tp!454024 (inv!22053 setElem!10641) e!995738))))

(declare-fun setRest!10641 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10641 (= setRest!10612 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10641 true) setRest!10641))))

(declare-fun b!1552404 () Bool)

(declare-fun tp!454025 () Bool)

(assert (=> b!1552404 (= e!995738 tp!454025)))

(assert (= (and setNonEmpty!10612 condSetEmpty!10641) setIsEmpty!10641))

(assert (= (and setNonEmpty!10612 (not condSetEmpty!10641)) setNonEmpty!10641))

(assert (= setNonEmpty!10641 b!1552404))

(declare-fun m!1825006 () Bool)

(assert (=> setNonEmpty!10641 m!1825006))

(declare-fun setIsEmpty!10642 () Bool)

(declare-fun setRes!10642 () Bool)

(assert (=> setIsEmpty!10642 setRes!10642))

(declare-fun b!1552405 () Bool)

(declare-fun e!995739 () Bool)

(declare-fun tp!454026 () Bool)

(assert (=> b!1552405 (= e!995739 (and setRes!10642 tp!454026))))

(declare-fun condSetEmpty!10642 () Bool)

(assert (=> b!1552405 (= condSetEmpty!10642 (= (_1!9420 (_1!9421 (h!22183 (t!141253 (zeroValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551856 (= tp!453841 e!995739)))

(declare-fun b!1552406 () Bool)

(declare-fun e!995740 () Bool)

(declare-fun tp!454027 () Bool)

(assert (=> b!1552406 (= e!995740 tp!454027)))

(declare-fun setNonEmpty!10642 () Bool)

(declare-fun setElem!10642 () Context!1574)

(declare-fun tp!454028 () Bool)

(assert (=> setNonEmpty!10642 (= setRes!10642 (and tp!454028 (inv!22053 setElem!10642) e!995740))))

(declare-fun setRest!10642 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10642 (= (_1!9420 (_1!9421 (h!22183 (t!141253 (zeroValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10642 true) setRest!10642))))

(assert (= (and b!1552405 condSetEmpty!10642) setIsEmpty!10642))

(assert (= (and b!1552405 (not condSetEmpty!10642)) setNonEmpty!10642))

(assert (= setNonEmpty!10642 b!1552406))

(assert (= (and b!1551856 ((_ is Cons!16782) (t!141253 (zeroValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))))) b!1552405))

(declare-fun m!1825008 () Bool)

(assert (=> setNonEmpty!10642 m!1825008))

(declare-fun setIsEmpty!10643 () Bool)

(declare-fun setRes!10643 () Bool)

(assert (=> setIsEmpty!10643 setRes!10643))

(declare-fun b!1552407 () Bool)

(declare-fun e!995741 () Bool)

(declare-fun tp!454029 () Bool)

(assert (=> b!1552407 (= e!995741 (and setRes!10643 tp!454029))))

(declare-fun condSetEmpty!10643 () Bool)

(assert (=> b!1552407 (= condSetEmpty!10643 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapValue!8252)))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551878 (= tp!453873 e!995741)))

(declare-fun b!1552408 () Bool)

(declare-fun e!995742 () Bool)

(declare-fun tp!454030 () Bool)

(assert (=> b!1552408 (= e!995742 tp!454030)))

(declare-fun setElem!10643 () Context!1574)

(declare-fun tp!454031 () Bool)

(declare-fun setNonEmpty!10643 () Bool)

(assert (=> setNonEmpty!10643 (= setRes!10643 (and tp!454031 (inv!22053 setElem!10643) e!995742))))

(declare-fun setRest!10643 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10643 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapValue!8252)))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10643 true) setRest!10643))))

(assert (= (and b!1552407 condSetEmpty!10643) setIsEmpty!10643))

(assert (= (and b!1552407 (not condSetEmpty!10643)) setNonEmpty!10643))

(assert (= setNonEmpty!10643 b!1552408))

(assert (= (and b!1551878 ((_ is Cons!16782) (t!141253 mapValue!8252))) b!1552407))

(declare-fun m!1825010 () Bool)

(assert (=> setNonEmpty!10643 m!1825010))

(declare-fun condSetEmpty!10644 () Bool)

(assert (=> setNonEmpty!10635 (= condSetEmpty!10644 (= setRest!10635 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10644 () Bool)

(assert (=> setNonEmpty!10635 (= tp!453918 setRes!10644)))

(declare-fun setIsEmpty!10644 () Bool)

(assert (=> setIsEmpty!10644 setRes!10644))

(declare-fun e!995743 () Bool)

(declare-fun setNonEmpty!10644 () Bool)

(declare-fun setElem!10644 () Context!1574)

(declare-fun tp!454032 () Bool)

(assert (=> setNonEmpty!10644 (= setRes!10644 (and tp!454032 (inv!22053 setElem!10644) e!995743))))

(declare-fun setRest!10644 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10644 (= setRest!10635 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10644 true) setRest!10644))))

(declare-fun b!1552409 () Bool)

(declare-fun tp!454033 () Bool)

(assert (=> b!1552409 (= e!995743 tp!454033)))

(assert (= (and setNonEmpty!10635 condSetEmpty!10644) setIsEmpty!10644))

(assert (= (and setNonEmpty!10635 (not condSetEmpty!10644)) setNonEmpty!10644))

(assert (= setNonEmpty!10644 b!1552409))

(declare-fun m!1825012 () Bool)

(assert (=> setNonEmpty!10644 m!1825012))

(declare-fun b!1552410 () Bool)

(declare-fun e!995744 () Bool)

(declare-fun tp!454034 () Bool)

(declare-fun tp!454035 () Bool)

(assert (=> b!1552410 (= e!995744 (and tp!454034 tp!454035))))

(assert (=> b!1551854 (= tp!453839 e!995744)))

(assert (= (and b!1551854 ((_ is Cons!16780) (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapValue!8246)))))) b!1552410))

(declare-fun b!1552411 () Bool)

(declare-fun e!995745 () Bool)

(assert (=> b!1552411 (= e!995745 tp_is_empty!7061)))

(assert (=> b!1551806 (= tp!453780 e!995745)))

(declare-fun b!1552414 () Bool)

(declare-fun tp!454039 () Bool)

(declare-fun tp!454036 () Bool)

(assert (=> b!1552414 (= e!995745 (and tp!454039 tp!454036))))

(declare-fun b!1552412 () Bool)

(declare-fun tp!454037 () Bool)

(declare-fun tp!454038 () Bool)

(assert (=> b!1552412 (= e!995745 (and tp!454037 tp!454038))))

(declare-fun b!1552413 () Bool)

(declare-fun tp!454040 () Bool)

(assert (=> b!1552413 (= e!995745 tp!454040)))

(assert (= (and b!1551806 ((_ is ElementMatch!4269) (reg!4598 (regex!2941 rule!240)))) b!1552411))

(assert (= (and b!1551806 ((_ is Concat!7301) (reg!4598 (regex!2941 rule!240)))) b!1552412))

(assert (= (and b!1551806 ((_ is Star!4269) (reg!4598 (regex!2941 rule!240)))) b!1552413))

(assert (= (and b!1551806 ((_ is Union!4269) (reg!4598 (regex!2941 rule!240)))) b!1552414))

(declare-fun b!1552415 () Bool)

(declare-fun e!995746 () Bool)

(declare-fun tp!454041 () Bool)

(declare-fun tp!454042 () Bool)

(assert (=> b!1552415 (= e!995746 (and tp!454041 tp!454042))))

(assert (=> b!1551792 (= tp!453763 e!995746)))

(assert (= (and b!1551792 ((_ is Cons!16780) (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapDefault!8244)))))) b!1552415))

(declare-fun b!1552416 () Bool)

(declare-fun e!995747 () Bool)

(assert (=> b!1552416 (= e!995747 tp_is_empty!7061)))

(assert (=> b!1551917 (= tp!453927 e!995747)))

(declare-fun b!1552419 () Bool)

(declare-fun tp!454046 () Bool)

(declare-fun tp!454043 () Bool)

(assert (=> b!1552419 (= e!995747 (and tp!454046 tp!454043))))

(declare-fun b!1552417 () Bool)

(declare-fun tp!454044 () Bool)

(declare-fun tp!454045 () Bool)

(assert (=> b!1552417 (= e!995747 (and tp!454044 tp!454045))))

(declare-fun b!1552418 () Bool)

(declare-fun tp!454047 () Bool)

(assert (=> b!1552418 (= e!995747 tp!454047)))

(assert (= (and b!1551917 ((_ is ElementMatch!4269) (_1!9422 (_1!9423 (h!22184 mapDefault!8255))))) b!1552416))

(assert (= (and b!1551917 ((_ is Concat!7301) (_1!9422 (_1!9423 (h!22184 mapDefault!8255))))) b!1552417))

(assert (= (and b!1551917 ((_ is Star!4269) (_1!9422 (_1!9423 (h!22184 mapDefault!8255))))) b!1552418))

(assert (= (and b!1551917 ((_ is Union!4269) (_1!9422 (_1!9423 (h!22184 mapDefault!8255))))) b!1552419))

(declare-fun e!995749 () Bool)

(assert (=> b!1551917 (= tp!453919 e!995749)))

(declare-fun b!1552420 () Bool)

(declare-fun e!995748 () Bool)

(declare-fun tp!454049 () Bool)

(assert (=> b!1552420 (= e!995748 tp!454049)))

(declare-fun b!1552421 () Bool)

(declare-fun e!995750 () Bool)

(declare-fun tp!454050 () Bool)

(assert (=> b!1552421 (= e!995750 tp!454050)))

(declare-fun tp!454052 () Bool)

(declare-fun setNonEmpty!10645 () Bool)

(declare-fun setElem!10645 () Context!1574)

(declare-fun setRes!10645 () Bool)

(assert (=> setNonEmpty!10645 (= setRes!10645 (and tp!454052 (inv!22053 setElem!10645) e!995748))))

(declare-fun setRest!10645 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10645 (= (_2!9423 (h!22184 (t!141254 mapDefault!8255))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10645 true) setRest!10645))))

(declare-fun setIsEmpty!10645 () Bool)

(assert (=> setIsEmpty!10645 setRes!10645))

(declare-fun b!1552422 () Bool)

(declare-fun tp!454051 () Bool)

(declare-fun tp!454048 () Bool)

(assert (=> b!1552422 (= e!995749 (and tp!454051 (inv!22053 (_2!9422 (_1!9423 (h!22184 (t!141254 mapDefault!8255))))) e!995750 tp_is_empty!7061 setRes!10645 tp!454048))))

(declare-fun condSetEmpty!10645 () Bool)

(assert (=> b!1552422 (= condSetEmpty!10645 (= (_2!9423 (h!22184 (t!141254 mapDefault!8255))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1552422 b!1552421))

(assert (= (and b!1552422 condSetEmpty!10645) setIsEmpty!10645))

(assert (= (and b!1552422 (not condSetEmpty!10645)) setNonEmpty!10645))

(assert (= setNonEmpty!10645 b!1552420))

(assert (= (and b!1551917 ((_ is Cons!16783) (t!141254 mapDefault!8255))) b!1552422))

(declare-fun m!1825014 () Bool)

(assert (=> setNonEmpty!10645 m!1825014))

(declare-fun m!1825016 () Bool)

(assert (=> b!1552422 m!1825016))

(declare-fun tp!454054 () Bool)

(declare-fun e!995752 () Bool)

(declare-fun tp!454055 () Bool)

(declare-fun b!1552423 () Bool)

(assert (=> b!1552423 (= e!995752 (and (inv!22046 (left!13648 (left!13648 (c!252328 input!1676)))) tp!454055 (inv!22046 (right!13978 (left!13648 (c!252328 input!1676)))) tp!454054))))

(declare-fun b!1552425 () Bool)

(declare-fun e!995751 () Bool)

(declare-fun tp!454053 () Bool)

(assert (=> b!1552425 (= e!995751 tp!454053)))

(declare-fun b!1552424 () Bool)

(assert (=> b!1552424 (= e!995752 (and (inv!22054 (xs!8359 (left!13648 (c!252328 input!1676)))) e!995751))))

(assert (=> b!1551890 (= tp!453889 (and (inv!22046 (left!13648 (c!252328 input!1676))) e!995752))))

(assert (= (and b!1551890 ((_ is Node!5559) (left!13648 (c!252328 input!1676)))) b!1552423))

(assert (= b!1552424 b!1552425))

(assert (= (and b!1551890 ((_ is Leaf!8239) (left!13648 (c!252328 input!1676)))) b!1552424))

(declare-fun m!1825018 () Bool)

(assert (=> b!1552423 m!1825018))

(declare-fun m!1825020 () Bool)

(assert (=> b!1552423 m!1825020))

(declare-fun m!1825022 () Bool)

(assert (=> b!1552424 m!1825022))

(assert (=> b!1551890 m!1824319))

(declare-fun e!995754 () Bool)

(declare-fun tp!454058 () Bool)

(declare-fun b!1552426 () Bool)

(declare-fun tp!454057 () Bool)

(assert (=> b!1552426 (= e!995754 (and (inv!22046 (left!13648 (right!13978 (c!252328 input!1676)))) tp!454058 (inv!22046 (right!13978 (right!13978 (c!252328 input!1676)))) tp!454057))))

(declare-fun b!1552428 () Bool)

(declare-fun e!995753 () Bool)

(declare-fun tp!454056 () Bool)

(assert (=> b!1552428 (= e!995753 tp!454056)))

(declare-fun b!1552427 () Bool)

(assert (=> b!1552427 (= e!995754 (and (inv!22054 (xs!8359 (right!13978 (c!252328 input!1676)))) e!995753))))

(assert (=> b!1551890 (= tp!453888 (and (inv!22046 (right!13978 (c!252328 input!1676))) e!995754))))

(assert (= (and b!1551890 ((_ is Node!5559) (right!13978 (c!252328 input!1676)))) b!1552426))

(assert (= b!1552427 b!1552428))

(assert (= (and b!1551890 ((_ is Leaf!8239) (right!13978 (c!252328 input!1676)))) b!1552427))

(declare-fun m!1825024 () Bool)

(assert (=> b!1552426 m!1825024))

(declare-fun m!1825026 () Bool)

(assert (=> b!1552426 m!1825026))

(declare-fun m!1825028 () Bool)

(assert (=> b!1552427 m!1825028))

(assert (=> b!1551890 m!1824321))

(declare-fun b!1552429 () Bool)

(declare-fun e!995755 () Bool)

(declare-fun tp!454059 () Bool)

(declare-fun tp!454060 () Bool)

(assert (=> b!1552429 (= e!995755 (and tp!454059 tp!454060))))

(assert (=> b!1551823 (= tp!453799 e!995755)))

(assert (= (and b!1551823 ((_ is Cons!16780) (exprs!1287 (_1!9418 (_1!9419 (h!22182 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))))) b!1552429))

(declare-fun b!1552430 () Bool)

(declare-fun e!995756 () Bool)

(declare-fun tp!454061 () Bool)

(declare-fun tp!454062 () Bool)

(assert (=> b!1552430 (= e!995756 (and tp!454061 tp!454062))))

(assert (=> b!1551860 (= tp!453848 e!995756)))

(assert (= (and b!1551860 ((_ is Cons!16780) (exprs!1287 setElem!10622))) b!1552430))

(declare-fun b!1552431 () Bool)

(declare-fun e!995757 () Bool)

(declare-fun tp!454063 () Bool)

(declare-fun tp!454064 () Bool)

(assert (=> b!1552431 (= e!995757 (and tp!454063 tp!454064))))

(assert (=> b!1551863 (= tp!453853 e!995757)))

(assert (= (and b!1551863 ((_ is Cons!16780) (exprs!1287 setElem!10623))) b!1552431))

(declare-fun e!995758 () Bool)

(declare-fun b!1552432 () Bool)

(declare-fun setRes!10646 () Bool)

(declare-fun tp!454068 () Bool)

(declare-fun e!995760 () Bool)

(assert (=> b!1552432 (= e!995758 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (t!141252 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))))) e!995760 tp_is_empty!7061 setRes!10646 tp!454068))))

(declare-fun condSetEmpty!10646 () Bool)

(assert (=> b!1552432 (= condSetEmpty!10646 (= (_2!9419 (h!22182 (t!141252 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552433 () Bool)

(declare-fun tp!454067 () Bool)

(assert (=> b!1552433 (= e!995760 tp!454067)))

(declare-fun setIsEmpty!10646 () Bool)

(assert (=> setIsEmpty!10646 setRes!10646))

(assert (=> b!1551819 (= tp!453796 e!995758)))

(declare-fun e!995759 () Bool)

(declare-fun setNonEmpty!10646 () Bool)

(declare-fun setElem!10646 () Context!1574)

(declare-fun tp!454065 () Bool)

(assert (=> setNonEmpty!10646 (= setRes!10646 (and tp!454065 (inv!22053 setElem!10646) e!995759))))

(declare-fun setRest!10646 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10646 (= (_2!9419 (h!22182 (t!141252 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10646 true) setRest!10646))))

(declare-fun b!1552434 () Bool)

(declare-fun tp!454066 () Bool)

(assert (=> b!1552434 (= e!995759 tp!454066)))

(assert (= b!1552432 b!1552433))

(assert (= (and b!1552432 condSetEmpty!10646) setIsEmpty!10646))

(assert (= (and b!1552432 (not condSetEmpty!10646)) setNonEmpty!10646))

(assert (= setNonEmpty!10646 b!1552434))

(assert (= (and b!1551819 ((_ is Cons!16781) (t!141252 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))) b!1552432))

(declare-fun m!1825030 () Bool)

(assert (=> b!1552432 m!1825030))

(declare-fun m!1825032 () Bool)

(assert (=> setNonEmpty!10646 m!1825032))

(declare-fun condSetEmpty!10647 () Bool)

(assert (=> setNonEmpty!10617 (= condSetEmpty!10647 (= setRest!10618 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10647 () Bool)

(assert (=> setNonEmpty!10617 (= tp!453830 setRes!10647)))

(declare-fun setIsEmpty!10647 () Bool)

(assert (=> setIsEmpty!10647 setRes!10647))

(declare-fun setElem!10647 () Context!1574)

(declare-fun e!995761 () Bool)

(declare-fun setNonEmpty!10647 () Bool)

(declare-fun tp!454069 () Bool)

(assert (=> setNonEmpty!10647 (= setRes!10647 (and tp!454069 (inv!22053 setElem!10647) e!995761))))

(declare-fun setRest!10647 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10647 (= setRest!10618 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10647 true) setRest!10647))))

(declare-fun b!1552435 () Bool)

(declare-fun tp!454070 () Bool)

(assert (=> b!1552435 (= e!995761 tp!454070)))

(assert (= (and setNonEmpty!10617 condSetEmpty!10647) setIsEmpty!10647))

(assert (= (and setNonEmpty!10617 (not condSetEmpty!10647)) setNonEmpty!10647))

(assert (= setNonEmpty!10647 b!1552435))

(declare-fun m!1825034 () Bool)

(assert (=> setNonEmpty!10647 m!1825034))

(declare-fun b!1552436 () Bool)

(declare-fun e!995762 () Bool)

(assert (=> b!1552436 (= e!995762 tp_is_empty!7061)))

(assert (=> b!1551862 (= tp!453850 e!995762)))

(declare-fun b!1552439 () Bool)

(declare-fun tp!454074 () Bool)

(declare-fun tp!454071 () Bool)

(assert (=> b!1552439 (= e!995762 (and tp!454074 tp!454071))))

(declare-fun b!1552437 () Bool)

(declare-fun tp!454072 () Bool)

(declare-fun tp!454073 () Bool)

(assert (=> b!1552437 (= e!995762 (and tp!454072 tp!454073))))

(declare-fun b!1552438 () Bool)

(declare-fun tp!454075 () Bool)

(assert (=> b!1552438 (= e!995762 tp!454075)))

(assert (= (and b!1551862 ((_ is ElementMatch!4269) (_1!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552436))

(assert (= (and b!1551862 ((_ is Concat!7301) (_1!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552437))

(assert (= (and b!1551862 ((_ is Star!4269) (_1!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552438))

(assert (= (and b!1551862 ((_ is Union!4269) (_1!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552439))

(declare-fun e!995764 () Bool)

(assert (=> b!1551862 (= tp!453847 e!995764)))

(declare-fun b!1552440 () Bool)

(declare-fun e!995763 () Bool)

(declare-fun tp!454077 () Bool)

(assert (=> b!1552440 (= e!995763 tp!454077)))

(declare-fun b!1552441 () Bool)

(declare-fun e!995765 () Bool)

(declare-fun tp!454078 () Bool)

(assert (=> b!1552441 (= e!995765 tp!454078)))

(declare-fun setRes!10648 () Bool)

(declare-fun setElem!10648 () Context!1574)

(declare-fun tp!454080 () Bool)

(declare-fun setNonEmpty!10648 () Bool)

(assert (=> setNonEmpty!10648 (= setRes!10648 (and tp!454080 (inv!22053 setElem!10648) e!995763))))

(declare-fun setRest!10648 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10648 (= (_2!9423 (h!22184 (t!141254 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10648 true) setRest!10648))))

(declare-fun setIsEmpty!10648 () Bool)

(assert (=> setIsEmpty!10648 setRes!10648))

(declare-fun b!1552442 () Bool)

(declare-fun tp!454076 () Bool)

(declare-fun tp!454079 () Bool)

(assert (=> b!1552442 (= e!995764 (and tp!454079 (inv!22053 (_2!9422 (_1!9423 (h!22184 (t!141254 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) e!995765 tp_is_empty!7061 setRes!10648 tp!454076))))

(declare-fun condSetEmpty!10648 () Bool)

(assert (=> b!1552442 (= condSetEmpty!10648 (= (_2!9423 (h!22184 (t!141254 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1552442 b!1552441))

(assert (= (and b!1552442 condSetEmpty!10648) setIsEmpty!10648))

(assert (= (and b!1552442 (not condSetEmpty!10648)) setNonEmpty!10648))

(assert (= setNonEmpty!10648 b!1552440))

(assert (= (and b!1551862 ((_ is Cons!16783) (t!141254 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))) b!1552442))

(declare-fun m!1825036 () Bool)

(assert (=> setNonEmpty!10648 m!1825036))

(declare-fun m!1825038 () Bool)

(assert (=> b!1552442 m!1825038))

(declare-fun b!1552443 () Bool)

(declare-fun e!995766 () Bool)

(assert (=> b!1552443 (= e!995766 tp_is_empty!7061)))

(assert (=> b!1551865 (= tp!453855 e!995766)))

(declare-fun b!1552446 () Bool)

(declare-fun tp!454084 () Bool)

(declare-fun tp!454081 () Bool)

(assert (=> b!1552446 (= e!995766 (and tp!454084 tp!454081))))

(declare-fun b!1552444 () Bool)

(declare-fun tp!454082 () Bool)

(declare-fun tp!454083 () Bool)

(assert (=> b!1552444 (= e!995766 (and tp!454082 tp!454083))))

(declare-fun b!1552445 () Bool)

(declare-fun tp!454085 () Bool)

(assert (=> b!1552445 (= e!995766 tp!454085)))

(assert (= (and b!1551865 ((_ is ElementMatch!4269) (_1!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552443))

(assert (= (and b!1551865 ((_ is Concat!7301) (_1!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552444))

(assert (= (and b!1551865 ((_ is Star!4269) (_1!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552445))

(assert (= (and b!1551865 ((_ is Union!4269) (_1!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) b!1552446))

(declare-fun e!995768 () Bool)

(assert (=> b!1551865 (= tp!453852 e!995768)))

(declare-fun b!1552447 () Bool)

(declare-fun e!995767 () Bool)

(declare-fun tp!454087 () Bool)

(assert (=> b!1552447 (= e!995767 tp!454087)))

(declare-fun b!1552448 () Bool)

(declare-fun e!995769 () Bool)

(declare-fun tp!454088 () Bool)

(assert (=> b!1552448 (= e!995769 tp!454088)))

(declare-fun setNonEmpty!10649 () Bool)

(declare-fun tp!454090 () Bool)

(declare-fun setElem!10649 () Context!1574)

(declare-fun setRes!10649 () Bool)

(assert (=> setNonEmpty!10649 (= setRes!10649 (and tp!454090 (inv!22053 setElem!10649) e!995767))))

(declare-fun setRest!10649 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10649 (= (_2!9423 (h!22184 (t!141254 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10649 true) setRest!10649))))

(declare-fun setIsEmpty!10649 () Bool)

(assert (=> setIsEmpty!10649 setRes!10649))

(declare-fun b!1552449 () Bool)

(declare-fun tp!454086 () Bool)

(declare-fun tp!454089 () Bool)

(assert (=> b!1552449 (= e!995768 (and tp!454089 (inv!22053 (_2!9422 (_1!9423 (h!22184 (t!141254 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))))) e!995769 tp_is_empty!7061 setRes!10649 tp!454086))))

(declare-fun condSetEmpty!10649 () Bool)

(assert (=> b!1552449 (= condSetEmpty!10649 (= (_2!9423 (h!22184 (t!141254 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1552449 b!1552448))

(assert (= (and b!1552449 condSetEmpty!10649) setIsEmpty!10649))

(assert (= (and b!1552449 (not condSetEmpty!10649)) setNonEmpty!10649))

(assert (= setNonEmpty!10649 b!1552447))

(assert (= (and b!1551865 ((_ is Cons!16783) (t!141254 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768))))))))) b!1552449))

(declare-fun m!1825040 () Bool)

(assert (=> setNonEmpty!10649 m!1825040))

(declare-fun m!1825042 () Bool)

(assert (=> b!1552449 m!1825042))

(declare-fun condSetEmpty!10650 () Bool)

(assert (=> setNonEmpty!10607 (= condSetEmpty!10650 (= setRest!10607 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10650 () Bool)

(assert (=> setNonEmpty!10607 (= tp!453789 setRes!10650)))

(declare-fun setIsEmpty!10650 () Bool)

(assert (=> setIsEmpty!10650 setRes!10650))

(declare-fun setElem!10650 () Context!1574)

(declare-fun setNonEmpty!10650 () Bool)

(declare-fun e!995770 () Bool)

(declare-fun tp!454091 () Bool)

(assert (=> setNonEmpty!10650 (= setRes!10650 (and tp!454091 (inv!22053 setElem!10650) e!995770))))

(declare-fun setRest!10650 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10650 (= setRest!10607 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10650 true) setRest!10650))))

(declare-fun b!1552450 () Bool)

(declare-fun tp!454092 () Bool)

(assert (=> b!1552450 (= e!995770 tp!454092)))

(assert (= (and setNonEmpty!10607 condSetEmpty!10650) setIsEmpty!10650))

(assert (= (and setNonEmpty!10607 (not condSetEmpty!10650)) setNonEmpty!10650))

(assert (= setNonEmpty!10650 b!1552450))

(declare-fun m!1825044 () Bool)

(assert (=> setNonEmpty!10650 m!1825044))

(declare-fun b!1552451 () Bool)

(declare-fun e!995771 () Bool)

(declare-fun tp!454093 () Bool)

(declare-fun tp!454094 () Bool)

(assert (=> b!1552451 (= e!995771 (and tp!454093 tp!454094))))

(assert (=> b!1551821 (= tp!453794 e!995771)))

(assert (= (and b!1551821 ((_ is Cons!16780) (exprs!1287 setElem!10608))) b!1552451))

(declare-fun b!1552452 () Bool)

(declare-fun e!995772 () Bool)

(declare-fun tp!454095 () Bool)

(declare-fun tp!454096 () Bool)

(assert (=> b!1552452 (= e!995772 (and tp!454095 tp!454096))))

(assert (=> b!1551849 (= tp!453833 e!995772)))

(assert (= (and b!1551849 ((_ is Cons!16780) (exprs!1287 setElem!10618))) b!1552452))

(declare-fun b!1552453 () Bool)

(declare-fun e!995773 () Bool)

(declare-fun tp!454097 () Bool)

(declare-fun tp!454098 () Bool)

(assert (=> b!1552453 (= e!995773 (and tp!454097 tp!454098))))

(assert (=> b!1551877 (= tp!453877 e!995773)))

(assert (= (and b!1551877 ((_ is Cons!16780) (exprs!1287 setElem!10629))) b!1552453))

(declare-fun setRes!10651 () Bool)

(declare-fun tp!454102 () Bool)

(declare-fun b!1552454 () Bool)

(declare-fun e!995776 () Bool)

(declare-fun e!995774 () Bool)

(assert (=> b!1552454 (= e!995774 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (t!141252 mapValue!8249))))) e!995776 tp_is_empty!7061 setRes!10651 tp!454102))))

(declare-fun condSetEmpty!10651 () Bool)

(assert (=> b!1552454 (= condSetEmpty!10651 (= (_2!9419 (h!22182 (t!141252 mapValue!8249))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552455 () Bool)

(declare-fun tp!454101 () Bool)

(assert (=> b!1552455 (= e!995776 tp!454101)))

(declare-fun setIsEmpty!10651 () Bool)

(assert (=> setIsEmpty!10651 setRes!10651))

(assert (=> b!1551851 (= tp!453832 e!995774)))

(declare-fun setElem!10651 () Context!1574)

(declare-fun e!995775 () Bool)

(declare-fun tp!454099 () Bool)

(declare-fun setNonEmpty!10651 () Bool)

(assert (=> setNonEmpty!10651 (= setRes!10651 (and tp!454099 (inv!22053 setElem!10651) e!995775))))

(declare-fun setRest!10651 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10651 (= (_2!9419 (h!22182 (t!141252 mapValue!8249))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10651 true) setRest!10651))))

(declare-fun b!1552456 () Bool)

(declare-fun tp!454100 () Bool)

(assert (=> b!1552456 (= e!995775 tp!454100)))

(assert (= b!1552454 b!1552455))

(assert (= (and b!1552454 condSetEmpty!10651) setIsEmpty!10651))

(assert (= (and b!1552454 (not condSetEmpty!10651)) setNonEmpty!10651))

(assert (= setNonEmpty!10651 b!1552456))

(assert (= (and b!1551851 ((_ is Cons!16781) (t!141252 mapValue!8249))) b!1552454))

(declare-fun m!1825046 () Bool)

(assert (=> b!1552454 m!1825046))

(declare-fun m!1825048 () Bool)

(assert (=> setNonEmpty!10651 m!1825048))

(declare-fun b!1552457 () Bool)

(declare-fun e!995777 () Bool)

(declare-fun tp!454103 () Bool)

(declare-fun tp!454104 () Bool)

(assert (=> b!1552457 (= e!995777 (and tp!454103 tp!454104))))

(assert (=> b!1551881 (= tp!453879 e!995777)))

(assert (= (and b!1551881 ((_ is Cons!16780) (exprs!1287 setElem!10630))) b!1552457))

(declare-fun b!1552458 () Bool)

(declare-fun e!995778 () Bool)

(declare-fun tp!454105 () Bool)

(declare-fun tp!454106 () Bool)

(assert (=> b!1552458 (= e!995778 (and tp!454105 tp!454106))))

(assert (=> b!1551857 (= tp!453842 e!995778)))

(assert (= (and b!1551857 ((_ is Cons!16780) (exprs!1287 setElem!10620))) b!1552458))

(declare-fun b!1552463 () Bool)

(declare-fun e!995781 () Bool)

(declare-fun tp!454109 () Bool)

(assert (=> b!1552463 (= e!995781 (and tp_is_empty!7061 tp!454109))))

(assert (=> b!1551895 (= tp!453890 e!995781)))

(assert (= (and b!1551895 ((_ is Cons!16779) (innerList!5619 (xs!8359 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))))) b!1552463))

(declare-fun b!1552464 () Bool)

(declare-fun e!995784 () Bool)

(declare-fun e!995782 () Bool)

(declare-fun setRes!10652 () Bool)

(declare-fun tp!454113 () Bool)

(assert (=> b!1552464 (= e!995782 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (t!141252 mapValue!8246))))) e!995784 tp_is_empty!7061 setRes!10652 tp!454113))))

(declare-fun condSetEmpty!10652 () Bool)

(assert (=> b!1552464 (= condSetEmpty!10652 (= (_2!9419 (h!22182 (t!141252 mapValue!8246))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552465 () Bool)

(declare-fun tp!454112 () Bool)

(assert (=> b!1552465 (= e!995784 tp!454112)))

(declare-fun setIsEmpty!10652 () Bool)

(assert (=> setIsEmpty!10652 setRes!10652))

(assert (=> b!1551853 (= tp!453840 e!995782)))

(declare-fun tp!454110 () Bool)

(declare-fun e!995783 () Bool)

(declare-fun setNonEmpty!10652 () Bool)

(declare-fun setElem!10652 () Context!1574)

(assert (=> setNonEmpty!10652 (= setRes!10652 (and tp!454110 (inv!22053 setElem!10652) e!995783))))

(declare-fun setRest!10652 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10652 (= (_2!9419 (h!22182 (t!141252 mapValue!8246))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10652 true) setRest!10652))))

(declare-fun b!1552466 () Bool)

(declare-fun tp!454111 () Bool)

(assert (=> b!1552466 (= e!995783 tp!454111)))

(assert (= b!1552464 b!1552465))

(assert (= (and b!1552464 condSetEmpty!10652) setIsEmpty!10652))

(assert (= (and b!1552464 (not condSetEmpty!10652)) setNonEmpty!10652))

(assert (= setNonEmpty!10652 b!1552466))

(assert (= (and b!1551853 ((_ is Cons!16781) (t!141252 mapValue!8246))) b!1552464))

(declare-fun m!1825050 () Bool)

(assert (=> b!1552464 m!1825050))

(declare-fun m!1825052 () Bool)

(assert (=> setNonEmpty!10652 m!1825052))

(declare-fun b!1552467 () Bool)

(declare-fun e!995785 () Bool)

(assert (=> b!1552467 (= e!995785 tp_is_empty!7061)))

(assert (=> b!1551805 (= tp!453777 e!995785)))

(declare-fun b!1552470 () Bool)

(declare-fun tp!454117 () Bool)

(declare-fun tp!454114 () Bool)

(assert (=> b!1552470 (= e!995785 (and tp!454117 tp!454114))))

(declare-fun b!1552468 () Bool)

(declare-fun tp!454115 () Bool)

(declare-fun tp!454116 () Bool)

(assert (=> b!1552468 (= e!995785 (and tp!454115 tp!454116))))

(declare-fun b!1552469 () Bool)

(declare-fun tp!454118 () Bool)

(assert (=> b!1552469 (= e!995785 tp!454118)))

(assert (= (and b!1551805 ((_ is ElementMatch!4269) (regOne!9050 (regex!2941 rule!240)))) b!1552467))

(assert (= (and b!1551805 ((_ is Concat!7301) (regOne!9050 (regex!2941 rule!240)))) b!1552468))

(assert (= (and b!1551805 ((_ is Star!4269) (regOne!9050 (regex!2941 rule!240)))) b!1552469))

(assert (= (and b!1551805 ((_ is Union!4269) (regOne!9050 (regex!2941 rule!240)))) b!1552470))

(declare-fun b!1552471 () Bool)

(declare-fun e!995786 () Bool)

(assert (=> b!1552471 (= e!995786 tp_is_empty!7061)))

(assert (=> b!1551805 (= tp!453778 e!995786)))

(declare-fun b!1552474 () Bool)

(declare-fun tp!454122 () Bool)

(declare-fun tp!454119 () Bool)

(assert (=> b!1552474 (= e!995786 (and tp!454122 tp!454119))))

(declare-fun b!1552472 () Bool)

(declare-fun tp!454120 () Bool)

(declare-fun tp!454121 () Bool)

(assert (=> b!1552472 (= e!995786 (and tp!454120 tp!454121))))

(declare-fun b!1552473 () Bool)

(declare-fun tp!454123 () Bool)

(assert (=> b!1552473 (= e!995786 tp!454123)))

(assert (= (and b!1551805 ((_ is ElementMatch!4269) (regTwo!9050 (regex!2941 rule!240)))) b!1552471))

(assert (= (and b!1551805 ((_ is Concat!7301) (regTwo!9050 (regex!2941 rule!240)))) b!1552472))

(assert (= (and b!1551805 ((_ is Star!4269) (regTwo!9050 (regex!2941 rule!240)))) b!1552473))

(assert (= (and b!1551805 ((_ is Union!4269) (regTwo!9050 (regex!2941 rule!240)))) b!1552474))

(declare-fun b!1552475 () Bool)

(declare-fun e!995787 () Bool)

(declare-fun tp!454124 () Bool)

(declare-fun tp!454125 () Bool)

(assert (=> b!1552475 (= e!995787 (and tp!454124 tp!454125))))

(assert (=> b!1551791 (= tp!453762 e!995787)))

(assert (= (and b!1551791 ((_ is Cons!16780) (exprs!1287 setElem!10604))) b!1552475))

(declare-fun b!1552476 () Bool)

(declare-fun e!995788 () Bool)

(declare-fun tp!454126 () Bool)

(declare-fun tp!454127 () Bool)

(assert (=> b!1552476 (= e!995788 (and tp!454126 tp!454127))))

(assert (=> b!1551916 (= tp!453924 e!995788)))

(assert (= (and b!1551916 ((_ is Cons!16780) (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapValue!8255)))))) b!1552476))

(declare-fun b!1552477 () Bool)

(declare-fun e!995789 () Bool)

(declare-fun tp!454128 () Bool)

(declare-fun tp!454129 () Bool)

(assert (=> b!1552477 (= e!995789 (and tp!454128 tp!454129))))

(assert (=> b!1551855 (= tp!453838 e!995789)))

(assert (= (and b!1551855 ((_ is Cons!16780) (exprs!1287 setElem!10619))) b!1552477))

(declare-fun b!1552478 () Bool)

(declare-fun e!995791 () Bool)

(declare-fun tp!454132 () Bool)

(declare-fun tp!454131 () Bool)

(assert (=> b!1552478 (= e!995791 (and (inv!22046 (left!13648 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))) tp!454132 (inv!22046 (right!13978 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))) tp!454131))))

(declare-fun b!1552480 () Bool)

(declare-fun e!995790 () Bool)

(declare-fun tp!454130 () Bool)

(assert (=> b!1552480 (= e!995790 tp!454130)))

(declare-fun b!1552479 () Bool)

(assert (=> b!1552479 (= e!995791 (and (inv!22054 (xs!8359 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))) e!995790))))

(assert (=> b!1551926 (= tp!453936 (and (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498))))) e!995791))))

(assert (= (and b!1551926 ((_ is Node!5559) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))) b!1552478))

(assert (= b!1552479 b!1552480))

(assert (= (and b!1551926 ((_ is Leaf!8239) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (seqFromList!1769 lt!537498)))))) b!1552479))

(declare-fun m!1825054 () Bool)

(assert (=> b!1552478 m!1825054))

(declare-fun m!1825056 () Bool)

(assert (=> b!1552478 m!1825056))

(declare-fun m!1825058 () Bool)

(assert (=> b!1552479 m!1825058))

(assert (=> b!1551926 m!1824351))

(declare-fun b!1552481 () Bool)

(declare-fun e!995792 () Bool)

(assert (=> b!1552481 (= e!995792 tp_is_empty!7061)))

(assert (=> b!1551793 (= tp!453764 e!995792)))

(declare-fun b!1552484 () Bool)

(declare-fun tp!454136 () Bool)

(declare-fun tp!454133 () Bool)

(assert (=> b!1552484 (= e!995792 (and tp!454136 tp!454133))))

(declare-fun b!1552482 () Bool)

(declare-fun tp!454134 () Bool)

(declare-fun tp!454135 () Bool)

(assert (=> b!1552482 (= e!995792 (and tp!454134 tp!454135))))

(declare-fun b!1552483 () Bool)

(declare-fun tp!454137 () Bool)

(assert (=> b!1552483 (= e!995792 tp!454137)))

(assert (= (and b!1551793 ((_ is ElementMatch!4269) (_1!9422 (_1!9423 (h!22184 mapDefault!8244))))) b!1552481))

(assert (= (and b!1551793 ((_ is Concat!7301) (_1!9422 (_1!9423 (h!22184 mapDefault!8244))))) b!1552482))

(assert (= (and b!1551793 ((_ is Star!4269) (_1!9422 (_1!9423 (h!22184 mapDefault!8244))))) b!1552483))

(assert (= (and b!1551793 ((_ is Union!4269) (_1!9422 (_1!9423 (h!22184 mapDefault!8244))))) b!1552484))

(declare-fun e!995794 () Bool)

(assert (=> b!1551793 (= tp!453761 e!995794)))

(declare-fun b!1552485 () Bool)

(declare-fun e!995793 () Bool)

(declare-fun tp!454139 () Bool)

(assert (=> b!1552485 (= e!995793 tp!454139)))

(declare-fun b!1552486 () Bool)

(declare-fun e!995795 () Bool)

(declare-fun tp!454140 () Bool)

(assert (=> b!1552486 (= e!995795 tp!454140)))

(declare-fun setNonEmpty!10653 () Bool)

(declare-fun tp!454142 () Bool)

(declare-fun setElem!10653 () Context!1574)

(declare-fun setRes!10653 () Bool)

(assert (=> setNonEmpty!10653 (= setRes!10653 (and tp!454142 (inv!22053 setElem!10653) e!995793))))

(declare-fun setRest!10653 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10653 (= (_2!9423 (h!22184 (t!141254 mapDefault!8244))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10653 true) setRest!10653))))

(declare-fun setIsEmpty!10653 () Bool)

(assert (=> setIsEmpty!10653 setRes!10653))

(declare-fun tp!454138 () Bool)

(declare-fun tp!454141 () Bool)

(declare-fun b!1552487 () Bool)

(assert (=> b!1552487 (= e!995794 (and tp!454141 (inv!22053 (_2!9422 (_1!9423 (h!22184 (t!141254 mapDefault!8244))))) e!995795 tp_is_empty!7061 setRes!10653 tp!454138))))

(declare-fun condSetEmpty!10653 () Bool)

(assert (=> b!1552487 (= condSetEmpty!10653 (= (_2!9423 (h!22184 (t!141254 mapDefault!8244))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1552487 b!1552486))

(assert (= (and b!1552487 condSetEmpty!10653) setIsEmpty!10653))

(assert (= (and b!1552487 (not condSetEmpty!10653)) setNonEmpty!10653))

(assert (= setNonEmpty!10653 b!1552485))

(assert (= (and b!1551793 ((_ is Cons!16783) (t!141254 mapDefault!8244))) b!1552487))

(declare-fun m!1825060 () Bool)

(assert (=> setNonEmpty!10653 m!1825060))

(declare-fun m!1825062 () Bool)

(assert (=> b!1552487 m!1825062))

(declare-fun b!1552488 () Bool)

(declare-fun e!995796 () Bool)

(declare-fun tp!454150 () Bool)

(assert (=> b!1552488 (= e!995796 tp!454150)))

(declare-fun mapIsEmpty!8265 () Bool)

(declare-fun mapRes!8265 () Bool)

(assert (=> mapIsEmpty!8265 mapRes!8265))

(declare-fun setIsEmpty!10654 () Bool)

(declare-fun setRes!10654 () Bool)

(assert (=> setIsEmpty!10654 setRes!10654))

(declare-fun tp!454143 () Bool)

(declare-fun setNonEmpty!10654 () Bool)

(declare-fun setElem!10655 () Context!1574)

(assert (=> setNonEmpty!10654 (= setRes!10654 (and tp!454143 (inv!22053 setElem!10655) e!995796))))

(declare-fun mapDefault!8265 () List!16851)

(declare-fun setRest!10654 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10654 (= (_2!9423 (h!22184 mapDefault!8265)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10655 true) setRest!10654))))

(declare-fun setIsEmpty!10655 () Bool)

(declare-fun setRes!10655 () Bool)

(assert (=> setIsEmpty!10655 setRes!10655))

(declare-fun b!1552490 () Bool)

(declare-fun e!995798 () Bool)

(declare-fun tp!454153 () Bool)

(assert (=> b!1552490 (= e!995798 tp!454153)))

(declare-fun b!1552491 () Bool)

(declare-fun e!995800 () Bool)

(declare-fun tp!454149 () Bool)

(assert (=> b!1552491 (= e!995800 tp!454149)))

(declare-fun tp!454152 () Bool)

(declare-fun b!1552492 () Bool)

(declare-fun tp!454144 () Bool)

(declare-fun e!995801 () Bool)

(declare-fun e!995799 () Bool)

(assert (=> b!1552492 (= e!995799 (and tp!454152 (inv!22053 (_2!9422 (_1!9423 (h!22184 mapDefault!8265)))) e!995801 tp_is_empty!7061 setRes!10654 tp!454144))))

(declare-fun condSetEmpty!10655 () Bool)

(assert (=> b!1552492 (= condSetEmpty!10655 (= (_2!9423 (h!22184 mapDefault!8265)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun condMapEmpty!8265 () Bool)

(assert (=> mapNonEmpty!8255 (= condMapEmpty!8265 (= mapRest!8255 ((as const (Array (_ BitVec 32) List!16851)) mapDefault!8265)))))

(assert (=> mapNonEmpty!8255 (= tp!453926 (and e!995799 mapRes!8265))))

(declare-fun b!1552489 () Bool)

(declare-fun e!995797 () Bool)

(declare-fun tp!454147 () Bool)

(declare-fun mapValue!8265 () List!16851)

(declare-fun tp!454145 () Bool)

(assert (=> b!1552489 (= e!995797 (and tp!454147 (inv!22053 (_2!9422 (_1!9423 (h!22184 mapValue!8265)))) e!995800 tp_is_empty!7061 setRes!10655 tp!454145))))

(declare-fun condSetEmpty!10654 () Bool)

(assert (=> b!1552489 (= condSetEmpty!10654 (= (_2!9423 (h!22184 mapValue!8265)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552493 () Bool)

(declare-fun tp!454146 () Bool)

(assert (=> b!1552493 (= e!995801 tp!454146)))

(declare-fun setNonEmpty!10655 () Bool)

(declare-fun tp!454148 () Bool)

(declare-fun setElem!10654 () Context!1574)

(assert (=> setNonEmpty!10655 (= setRes!10655 (and tp!454148 (inv!22053 setElem!10654) e!995798))))

(declare-fun setRest!10655 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10655 (= (_2!9423 (h!22184 mapValue!8265)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10654 true) setRest!10655))))

(declare-fun mapNonEmpty!8265 () Bool)

(declare-fun tp!454151 () Bool)

(assert (=> mapNonEmpty!8265 (= mapRes!8265 (and tp!454151 e!995797))))

(declare-fun mapKey!8265 () (_ BitVec 32))

(declare-fun mapRest!8265 () (Array (_ BitVec 32) List!16851))

(assert (=> mapNonEmpty!8265 (= mapRest!8255 (store mapRest!8265 mapKey!8265 mapValue!8265))))

(assert (= (and mapNonEmpty!8255 condMapEmpty!8265) mapIsEmpty!8265))

(assert (= (and mapNonEmpty!8255 (not condMapEmpty!8265)) mapNonEmpty!8265))

(assert (= b!1552489 b!1552491))

(assert (= (and b!1552489 condSetEmpty!10654) setIsEmpty!10655))

(assert (= (and b!1552489 (not condSetEmpty!10654)) setNonEmpty!10655))

(assert (= setNonEmpty!10655 b!1552490))

(assert (= (and mapNonEmpty!8265 ((_ is Cons!16783) mapValue!8265)) b!1552489))

(assert (= b!1552492 b!1552493))

(assert (= (and b!1552492 condSetEmpty!10655) setIsEmpty!10654))

(assert (= (and b!1552492 (not condSetEmpty!10655)) setNonEmpty!10654))

(assert (= setNonEmpty!10654 b!1552488))

(assert (= (and mapNonEmpty!8255 ((_ is Cons!16783) mapDefault!8265)) b!1552492))

(declare-fun m!1825064 () Bool)

(assert (=> setNonEmpty!10655 m!1825064))

(declare-fun m!1825066 () Bool)

(assert (=> b!1552489 m!1825066))

(declare-fun m!1825068 () Bool)

(assert (=> b!1552492 m!1825068))

(declare-fun m!1825070 () Bool)

(assert (=> mapNonEmpty!8265 m!1825070))

(declare-fun m!1825072 () Bool)

(assert (=> setNonEmpty!10654 m!1825072))

(declare-fun b!1552494 () Bool)

(declare-fun tp!454157 () Bool)

(declare-fun e!995802 () Bool)

(declare-fun setRes!10656 () Bool)

(declare-fun e!995804 () Bool)

(assert (=> b!1552494 (= e!995802 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (t!141252 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))))) e!995804 tp_is_empty!7061 setRes!10656 tp!454157))))

(declare-fun condSetEmpty!10656 () Bool)

(assert (=> b!1552494 (= condSetEmpty!10656 (= (_2!9419 (h!22182 (t!141252 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552495 () Bool)

(declare-fun tp!454156 () Bool)

(assert (=> b!1552495 (= e!995804 tp!454156)))

(declare-fun setIsEmpty!10656 () Bool)

(assert (=> setIsEmpty!10656 setRes!10656))

(assert (=> b!1551822 (= tp!453800 e!995802)))

(declare-fun setNonEmpty!10656 () Bool)

(declare-fun e!995803 () Bool)

(declare-fun tp!454154 () Bool)

(declare-fun setElem!10656 () Context!1574)

(assert (=> setNonEmpty!10656 (= setRes!10656 (and tp!454154 (inv!22053 setElem!10656) e!995803))))

(declare-fun setRest!10656 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10656 (= (_2!9419 (h!22182 (t!141252 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10656 true) setRest!10656))))

(declare-fun b!1552496 () Bool)

(declare-fun tp!454155 () Bool)

(assert (=> b!1552496 (= e!995803 tp!454155)))

(assert (= b!1552494 b!1552495))

(assert (= (and b!1552494 condSetEmpty!10656) setIsEmpty!10656))

(assert (= (and b!1552494 (not condSetEmpty!10656)) setNonEmpty!10656))

(assert (= setNonEmpty!10656 b!1552496))

(assert (= (and b!1551822 ((_ is Cons!16781) (t!141252 (minValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755))))))))) b!1552494))

(declare-fun m!1825074 () Bool)

(assert (=> b!1552494 m!1825074))

(declare-fun m!1825076 () Bool)

(assert (=> setNonEmpty!10656 m!1825076))

(declare-fun condSetEmpty!10657 () Bool)

(assert (=> setNonEmpty!10637 (= condSetEmpty!10657 (= setRest!10637 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10657 () Bool)

(assert (=> setNonEmpty!10637 (= tp!453933 setRes!10657)))

(declare-fun setIsEmpty!10657 () Bool)

(assert (=> setIsEmpty!10657 setRes!10657))

(declare-fun setElem!10657 () Context!1574)

(declare-fun setNonEmpty!10657 () Bool)

(declare-fun tp!454158 () Bool)

(declare-fun e!995805 () Bool)

(assert (=> setNonEmpty!10657 (= setRes!10657 (and tp!454158 (inv!22053 setElem!10657) e!995805))))

(declare-fun setRest!10657 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10657 (= setRest!10637 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10657 true) setRest!10657))))

(declare-fun b!1552497 () Bool)

(declare-fun tp!454159 () Bool)

(assert (=> b!1552497 (= e!995805 tp!454159)))

(assert (= (and setNonEmpty!10637 condSetEmpty!10657) setIsEmpty!10657))

(assert (= (and setNonEmpty!10637 (not condSetEmpty!10657)) setNonEmpty!10657))

(assert (= setNonEmpty!10657 b!1552497))

(declare-fun m!1825078 () Bool)

(assert (=> setNonEmpty!10657 m!1825078))

(declare-fun condSetEmpty!10658 () Bool)

(assert (=> setNonEmpty!10608 (= condSetEmpty!10658 (= setRest!10608 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10658 () Bool)

(assert (=> setNonEmpty!10608 (= tp!453793 setRes!10658)))

(declare-fun setIsEmpty!10658 () Bool)

(assert (=> setIsEmpty!10658 setRes!10658))

(declare-fun setElem!10658 () Context!1574)

(declare-fun setNonEmpty!10658 () Bool)

(declare-fun e!995806 () Bool)

(declare-fun tp!454160 () Bool)

(assert (=> setNonEmpty!10658 (= setRes!10658 (and tp!454160 (inv!22053 setElem!10658) e!995806))))

(declare-fun setRest!10658 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10658 (= setRest!10608 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10658 true) setRest!10658))))

(declare-fun b!1552498 () Bool)

(declare-fun tp!454161 () Bool)

(assert (=> b!1552498 (= e!995806 tp!454161)))

(assert (= (and setNonEmpty!10608 condSetEmpty!10658) setIsEmpty!10658))

(assert (= (and setNonEmpty!10608 (not condSetEmpty!10658)) setNonEmpty!10658))

(assert (= setNonEmpty!10658 b!1552498))

(declare-fun m!1825080 () Bool)

(assert (=> setNonEmpty!10658 m!1825080))

(declare-fun setIsEmpty!10659 () Bool)

(declare-fun setRes!10659 () Bool)

(assert (=> setIsEmpty!10659 setRes!10659))

(declare-fun b!1552499 () Bool)

(declare-fun e!995807 () Bool)

(declare-fun tp!454162 () Bool)

(assert (=> b!1552499 (= e!995807 (and setRes!10659 tp!454162))))

(declare-fun condSetEmpty!10659 () Bool)

(assert (=> b!1552499 (= condSetEmpty!10659 (= (_1!9420 (_1!9421 (h!22183 (t!141253 (minValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551858 (= tp!453844 e!995807)))

(declare-fun b!1552500 () Bool)

(declare-fun e!995808 () Bool)

(declare-fun tp!454163 () Bool)

(assert (=> b!1552500 (= e!995808 tp!454163)))

(declare-fun setElem!10659 () Context!1574)

(declare-fun setNonEmpty!10659 () Bool)

(declare-fun tp!454164 () Bool)

(assert (=> setNonEmpty!10659 (= setRes!10659 (and tp!454164 (inv!22053 setElem!10659) e!995808))))

(declare-fun setRest!10659 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10659 (= (_1!9420 (_1!9421 (h!22183 (t!141253 (minValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10659 true) setRest!10659))))

(assert (= (and b!1552499 condSetEmpty!10659) setIsEmpty!10659))

(assert (= (and b!1552499 (not condSetEmpty!10659)) setNonEmpty!10659))

(assert (= setNonEmpty!10659 b!1552500))

(assert (= (and b!1551858 ((_ is Cons!16782) (t!141253 (minValue!2037 (v!23616 (underlying!3769 (v!23617 (underlying!3770 (cache!2105 cacheFurthestNullable!103))))))))) b!1552499))

(declare-fun m!1825082 () Bool)

(assert (=> setNonEmpty!10659 m!1825082))

(declare-fun b!1552501 () Bool)

(declare-fun e!995809 () Bool)

(declare-fun tp!454165 () Bool)

(declare-fun tp!454166 () Bool)

(assert (=> b!1552501 (= e!995809 (and tp!454165 tp!454166))))

(assert (=> b!1551824 (= tp!453798 e!995809)))

(assert (= (and b!1551824 ((_ is Cons!16780) (exprs!1287 setElem!10609))) b!1552501))

(declare-fun tp!454169 () Bool)

(declare-fun b!1552502 () Bool)

(declare-fun e!995811 () Bool)

(declare-fun tp!454168 () Bool)

(assert (=> b!1552502 (= e!995811 (and (inv!22046 (left!13648 (left!13648 (c!252328 totalInput!568)))) tp!454169 (inv!22046 (right!13978 (left!13648 (c!252328 totalInput!568)))) tp!454168))))

(declare-fun b!1552504 () Bool)

(declare-fun e!995810 () Bool)

(declare-fun tp!454167 () Bool)

(assert (=> b!1552504 (= e!995810 tp!454167)))

(declare-fun b!1552503 () Bool)

(assert (=> b!1552503 (= e!995811 (and (inv!22054 (xs!8359 (left!13648 (c!252328 totalInput!568)))) e!995810))))

(assert (=> b!1551896 (= tp!453895 (and (inv!22046 (left!13648 (c!252328 totalInput!568))) e!995811))))

(assert (= (and b!1551896 ((_ is Node!5559) (left!13648 (c!252328 totalInput!568)))) b!1552502))

(assert (= b!1552503 b!1552504))

(assert (= (and b!1551896 ((_ is Leaf!8239) (left!13648 (c!252328 totalInput!568)))) b!1552503))

(declare-fun m!1825084 () Bool)

(assert (=> b!1552502 m!1825084))

(declare-fun m!1825086 () Bool)

(assert (=> b!1552502 m!1825086))

(declare-fun m!1825088 () Bool)

(assert (=> b!1552503 m!1825088))

(assert (=> b!1551896 m!1824331))

(declare-fun tp!454172 () Bool)

(declare-fun e!995813 () Bool)

(declare-fun b!1552505 () Bool)

(declare-fun tp!454171 () Bool)

(assert (=> b!1552505 (= e!995813 (and (inv!22046 (left!13648 (right!13978 (c!252328 totalInput!568)))) tp!454172 (inv!22046 (right!13978 (right!13978 (c!252328 totalInput!568)))) tp!454171))))

(declare-fun b!1552507 () Bool)

(declare-fun e!995812 () Bool)

(declare-fun tp!454170 () Bool)

(assert (=> b!1552507 (= e!995812 tp!454170)))

(declare-fun b!1552506 () Bool)

(assert (=> b!1552506 (= e!995813 (and (inv!22054 (xs!8359 (right!13978 (c!252328 totalInput!568)))) e!995812))))

(assert (=> b!1551896 (= tp!453894 (and (inv!22046 (right!13978 (c!252328 totalInput!568))) e!995813))))

(assert (= (and b!1551896 ((_ is Node!5559) (right!13978 (c!252328 totalInput!568)))) b!1552505))

(assert (= b!1552506 b!1552507))

(assert (= (and b!1551896 ((_ is Leaf!8239) (right!13978 (c!252328 totalInput!568)))) b!1552506))

(declare-fun m!1825090 () Bool)

(assert (=> b!1552505 m!1825090))

(declare-fun m!1825092 () Bool)

(assert (=> b!1552505 m!1825092))

(declare-fun m!1825094 () Bool)

(assert (=> b!1552506 m!1825094))

(assert (=> b!1551896 m!1824333))

(declare-fun b!1552508 () Bool)

(declare-fun e!995814 () Bool)

(declare-fun tp!454173 () Bool)

(declare-fun tp!454174 () Bool)

(assert (=> b!1552508 (= e!995814 (and tp!454173 tp!454174))))

(assert (=> b!1551848 (= tp!453831 e!995814)))

(assert (= (and b!1551848 ((_ is Cons!16780) (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapValue!8249)))))) b!1552508))

(declare-fun setIsEmpty!10660 () Bool)

(declare-fun setRes!10660 () Bool)

(assert (=> setIsEmpty!10660 setRes!10660))

(declare-fun b!1552509 () Bool)

(declare-fun e!995815 () Bool)

(declare-fun tp!454175 () Bool)

(assert (=> b!1552509 (= e!995815 (and setRes!10660 tp!454175))))

(declare-fun condSetEmpty!10660 () Bool)

(assert (=> b!1552509 (= condSetEmpty!10660 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapDefault!8246)))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551831 (= tp!453807 e!995815)))

(declare-fun b!1552510 () Bool)

(declare-fun e!995816 () Bool)

(declare-fun tp!454176 () Bool)

(assert (=> b!1552510 (= e!995816 tp!454176)))

(declare-fun tp!454177 () Bool)

(declare-fun setNonEmpty!10660 () Bool)

(declare-fun setElem!10660 () Context!1574)

(assert (=> setNonEmpty!10660 (= setRes!10660 (and tp!454177 (inv!22053 setElem!10660) e!995816))))

(declare-fun setRest!10660 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10660 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapDefault!8246)))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10660 true) setRest!10660))))

(assert (= (and b!1552509 condSetEmpty!10660) setIsEmpty!10660))

(assert (= (and b!1552509 (not condSetEmpty!10660)) setNonEmpty!10660))

(assert (= setNonEmpty!10660 b!1552510))

(assert (= (and b!1551831 ((_ is Cons!16782) (t!141253 mapDefault!8246))) b!1552509))

(declare-fun m!1825096 () Bool)

(assert (=> setNonEmpty!10660 m!1825096))

(declare-fun tp!454180 () Bool)

(declare-fun e!995817 () Bool)

(declare-fun setRes!10661 () Bool)

(declare-fun setNonEmpty!10661 () Bool)

(declare-fun setElem!10661 () Context!1574)

(assert (=> setNonEmpty!10661 (= setRes!10661 (and tp!454180 (inv!22053 setElem!10661) e!995817))))

(declare-fun mapValue!8266 () List!16849)

(declare-fun setRest!10662 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10661 (= (_2!9419 (h!22182 mapValue!8266)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10661 true) setRest!10662))))

(declare-fun condMapEmpty!8266 () Bool)

(declare-fun mapDefault!8266 () List!16849)

(assert (=> mapNonEmpty!8249 (= condMapEmpty!8266 (= mapRest!8249 ((as const (Array (_ BitVec 32) List!16849)) mapDefault!8266)))))

(declare-fun e!995822 () Bool)

(declare-fun mapRes!8266 () Bool)

(assert (=> mapNonEmpty!8249 (= tp!453828 (and e!995822 mapRes!8266))))

(declare-fun b!1552511 () Bool)

(declare-fun tp!454179 () Bool)

(assert (=> b!1552511 (= e!995817 tp!454179)))

(declare-fun setIsEmpty!10661 () Bool)

(declare-fun setRes!10662 () Bool)

(assert (=> setIsEmpty!10661 setRes!10662))

(declare-fun b!1552512 () Bool)

(declare-fun e!995821 () Bool)

(declare-fun tp!454181 () Bool)

(assert (=> b!1552512 (= e!995821 tp!454181)))

(declare-fun b!1552513 () Bool)

(declare-fun e!995818 () Bool)

(declare-fun tp!454183 () Bool)

(assert (=> b!1552513 (= e!995818 tp!454183)))

(declare-fun b!1552514 () Bool)

(declare-fun tp!454186 () Bool)

(declare-fun e!995820 () Bool)

(assert (=> b!1552514 (= e!995822 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 mapDefault!8266)))) e!995820 tp_is_empty!7061 setRes!10662 tp!454186))))

(declare-fun condSetEmpty!10662 () Bool)

(assert (=> b!1552514 (= condSetEmpty!10662 (= (_2!9419 (h!22182 mapDefault!8266)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun mapIsEmpty!8266 () Bool)

(assert (=> mapIsEmpty!8266 mapRes!8266))

(declare-fun mapNonEmpty!8266 () Bool)

(declare-fun tp!454178 () Bool)

(declare-fun e!995819 () Bool)

(assert (=> mapNonEmpty!8266 (= mapRes!8266 (and tp!454178 e!995819))))

(declare-fun mapKey!8266 () (_ BitVec 32))

(declare-fun mapRest!8266 () (Array (_ BitVec 32) List!16849))

(assert (=> mapNonEmpty!8266 (= mapRest!8249 (store mapRest!8266 mapKey!8266 mapValue!8266))))

(declare-fun b!1552515 () Bool)

(declare-fun tp!454182 () Bool)

(assert (=> b!1552515 (= e!995819 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 mapValue!8266)))) e!995821 tp_is_empty!7061 setRes!10661 tp!454182))))

(declare-fun condSetEmpty!10661 () Bool)

(assert (=> b!1552515 (= condSetEmpty!10661 (= (_2!9419 (h!22182 mapValue!8266)) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setIsEmpty!10662 () Bool)

(assert (=> setIsEmpty!10662 setRes!10661))

(declare-fun setElem!10662 () Context!1574)

(declare-fun tp!454184 () Bool)

(declare-fun setNonEmpty!10662 () Bool)

(assert (=> setNonEmpty!10662 (= setRes!10662 (and tp!454184 (inv!22053 setElem!10662) e!995818))))

(declare-fun setRest!10661 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10662 (= (_2!9419 (h!22182 mapDefault!8266)) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10662 true) setRest!10661))))

(declare-fun b!1552516 () Bool)

(declare-fun tp!454185 () Bool)

(assert (=> b!1552516 (= e!995820 tp!454185)))

(assert (= (and mapNonEmpty!8249 condMapEmpty!8266) mapIsEmpty!8266))

(assert (= (and mapNonEmpty!8249 (not condMapEmpty!8266)) mapNonEmpty!8266))

(assert (= b!1552515 b!1552512))

(assert (= (and b!1552515 condSetEmpty!10661) setIsEmpty!10662))

(assert (= (and b!1552515 (not condSetEmpty!10661)) setNonEmpty!10661))

(assert (= setNonEmpty!10661 b!1552511))

(assert (= (and mapNonEmpty!8266 ((_ is Cons!16781) mapValue!8266)) b!1552515))

(assert (= b!1552514 b!1552516))

(assert (= (and b!1552514 condSetEmpty!10662) setIsEmpty!10661))

(assert (= (and b!1552514 (not condSetEmpty!10662)) setNonEmpty!10662))

(assert (= setNonEmpty!10662 b!1552513))

(assert (= (and mapNonEmpty!8249 ((_ is Cons!16781) mapDefault!8266)) b!1552514))

(declare-fun m!1825098 () Bool)

(assert (=> setNonEmpty!10661 m!1825098))

(declare-fun m!1825100 () Bool)

(assert (=> setNonEmpty!10662 m!1825100))

(declare-fun m!1825102 () Bool)

(assert (=> b!1552515 m!1825102))

(declare-fun m!1825104 () Bool)

(assert (=> b!1552514 m!1825104))

(declare-fun m!1825106 () Bool)

(assert (=> mapNonEmpty!8266 m!1825106))

(declare-fun condSetEmpty!10663 () Bool)

(assert (=> setNonEmpty!10630 (= condSetEmpty!10663 (= setRest!10630 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10663 () Bool)

(assert (=> setNonEmpty!10630 (= tp!453880 setRes!10663)))

(declare-fun setIsEmpty!10663 () Bool)

(assert (=> setIsEmpty!10663 setRes!10663))

(declare-fun setElem!10663 () Context!1574)

(declare-fun e!995823 () Bool)

(declare-fun tp!454187 () Bool)

(declare-fun setNonEmpty!10663 () Bool)

(assert (=> setNonEmpty!10663 (= setRes!10663 (and tp!454187 (inv!22053 setElem!10663) e!995823))))

(declare-fun setRest!10663 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10663 (= setRest!10630 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10663 true) setRest!10663))))

(declare-fun b!1552517 () Bool)

(declare-fun tp!454188 () Bool)

(assert (=> b!1552517 (= e!995823 tp!454188)))

(assert (= (and setNonEmpty!10630 condSetEmpty!10663) setIsEmpty!10663))

(assert (= (and setNonEmpty!10630 (not condSetEmpty!10663)) setNonEmpty!10663))

(assert (= setNonEmpty!10663 b!1552517))

(declare-fun m!1825108 () Bool)

(assert (=> setNonEmpty!10663 m!1825108))

(declare-fun condSetEmpty!10664 () Bool)

(assert (=> setNonEmpty!10629 (= condSetEmpty!10664 (= setRest!10628 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10664 () Bool)

(assert (=> setNonEmpty!10629 (= tp!453876 setRes!10664)))

(declare-fun setIsEmpty!10664 () Bool)

(assert (=> setIsEmpty!10664 setRes!10664))

(declare-fun setNonEmpty!10664 () Bool)

(declare-fun e!995824 () Bool)

(declare-fun setElem!10664 () Context!1574)

(declare-fun tp!454189 () Bool)

(assert (=> setNonEmpty!10664 (= setRes!10664 (and tp!454189 (inv!22053 setElem!10664) e!995824))))

(declare-fun setRest!10664 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10664 (= setRest!10628 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10664 true) setRest!10664))))

(declare-fun b!1552518 () Bool)

(declare-fun tp!454190 () Bool)

(assert (=> b!1552518 (= e!995824 tp!454190)))

(assert (= (and setNonEmpty!10629 condSetEmpty!10664) setIsEmpty!10664))

(assert (= (and setNonEmpty!10629 (not condSetEmpty!10664)) setNonEmpty!10664))

(assert (= setNonEmpty!10664 b!1552518))

(declare-fun m!1825110 () Bool)

(assert (=> setNonEmpty!10664 m!1825110))

(declare-fun b!1552519 () Bool)

(declare-fun e!995825 () Bool)

(assert (=> b!1552519 (= e!995825 tp_is_empty!7061)))

(assert (=> b!1551914 (= tp!453922 e!995825)))

(declare-fun b!1552522 () Bool)

(declare-fun tp!454194 () Bool)

(declare-fun tp!454191 () Bool)

(assert (=> b!1552522 (= e!995825 (and tp!454194 tp!454191))))

(declare-fun b!1552520 () Bool)

(declare-fun tp!454192 () Bool)

(declare-fun tp!454193 () Bool)

(assert (=> b!1552520 (= e!995825 (and tp!454192 tp!454193))))

(declare-fun b!1552521 () Bool)

(declare-fun tp!454195 () Bool)

(assert (=> b!1552521 (= e!995825 tp!454195)))

(assert (= (and b!1551914 ((_ is ElementMatch!4269) (_1!9422 (_1!9423 (h!22184 mapValue!8255))))) b!1552519))

(assert (= (and b!1551914 ((_ is Concat!7301) (_1!9422 (_1!9423 (h!22184 mapValue!8255))))) b!1552520))

(assert (= (and b!1551914 ((_ is Star!4269) (_1!9422 (_1!9423 (h!22184 mapValue!8255))))) b!1552521))

(assert (= (and b!1551914 ((_ is Union!4269) (_1!9422 (_1!9423 (h!22184 mapValue!8255))))) b!1552522))

(declare-fun e!995827 () Bool)

(assert (=> b!1551914 (= tp!453920 e!995827)))

(declare-fun b!1552523 () Bool)

(declare-fun e!995826 () Bool)

(declare-fun tp!454197 () Bool)

(assert (=> b!1552523 (= e!995826 tp!454197)))

(declare-fun b!1552524 () Bool)

(declare-fun e!995828 () Bool)

(declare-fun tp!454198 () Bool)

(assert (=> b!1552524 (= e!995828 tp!454198)))

(declare-fun setElem!10665 () Context!1574)

(declare-fun setNonEmpty!10665 () Bool)

(declare-fun setRes!10665 () Bool)

(declare-fun tp!454200 () Bool)

(assert (=> setNonEmpty!10665 (= setRes!10665 (and tp!454200 (inv!22053 setElem!10665) e!995826))))

(declare-fun setRest!10665 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10665 (= (_2!9423 (h!22184 (t!141254 mapValue!8255))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10665 true) setRest!10665))))

(declare-fun setIsEmpty!10665 () Bool)

(assert (=> setIsEmpty!10665 setRes!10665))

(declare-fun tp!454196 () Bool)

(declare-fun tp!454199 () Bool)

(declare-fun b!1552525 () Bool)

(assert (=> b!1552525 (= e!995827 (and tp!454199 (inv!22053 (_2!9422 (_1!9423 (h!22184 (t!141254 mapValue!8255))))) e!995828 tp_is_empty!7061 setRes!10665 tp!454196))))

(declare-fun condSetEmpty!10665 () Bool)

(assert (=> b!1552525 (= condSetEmpty!10665 (= (_2!9423 (h!22184 (t!141254 mapValue!8255))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1552525 b!1552524))

(assert (= (and b!1552525 condSetEmpty!10665) setIsEmpty!10665))

(assert (= (and b!1552525 (not condSetEmpty!10665)) setNonEmpty!10665))

(assert (= setNonEmpty!10665 b!1552523))

(assert (= (and b!1551914 ((_ is Cons!16783) (t!141254 mapValue!8255))) b!1552525))

(declare-fun m!1825112 () Bool)

(assert (=> setNonEmpty!10665 m!1825112))

(declare-fun m!1825114 () Bool)

(assert (=> b!1552525 m!1825114))

(declare-fun condSetEmpty!10666 () Bool)

(assert (=> setNonEmpty!10620 (= condSetEmpty!10666 (= setRest!10620 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10666 () Bool)

(assert (=> setNonEmpty!10620 (= tp!453843 setRes!10666)))

(declare-fun setIsEmpty!10666 () Bool)

(assert (=> setIsEmpty!10666 setRes!10666))

(declare-fun setElem!10666 () Context!1574)

(declare-fun setNonEmpty!10666 () Bool)

(declare-fun e!995829 () Bool)

(declare-fun tp!454201 () Bool)

(assert (=> setNonEmpty!10666 (= setRes!10666 (and tp!454201 (inv!22053 setElem!10666) e!995829))))

(declare-fun setRest!10666 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10666 (= setRest!10620 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10666 true) setRest!10666))))

(declare-fun b!1552526 () Bool)

(declare-fun tp!454202 () Bool)

(assert (=> b!1552526 (= e!995829 tp!454202)))

(assert (= (and setNonEmpty!10620 condSetEmpty!10666) setIsEmpty!10666))

(assert (= (and setNonEmpty!10620 (not condSetEmpty!10666)) setNonEmpty!10666))

(assert (= setNonEmpty!10666 b!1552526))

(declare-fun m!1825116 () Bool)

(assert (=> setNonEmpty!10666 m!1825116))

(declare-fun b!1552527 () Bool)

(declare-fun e!995830 () Bool)

(declare-fun tp!454203 () Bool)

(declare-fun tp!454204 () Bool)

(assert (=> b!1552527 (= e!995830 (and tp!454203 tp!454204))))

(assert (=> b!1551852 (= tp!453835 e!995830)))

(assert (= (and b!1551852 ((_ is Cons!16780) (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapDefault!8249)))))) b!1552527))

(declare-fun b!1552528 () Bool)

(declare-fun e!995831 () Bool)

(declare-fun tp!454205 () Bool)

(declare-fun tp!454206 () Bool)

(assert (=> b!1552528 (= e!995831 (and tp!454205 tp!454206))))

(assert (=> b!1551915 (= tp!453928 e!995831)))

(assert (= (and b!1551915 ((_ is Cons!16780) (exprs!1287 setElem!10635))) b!1552528))

(declare-fun condSetEmpty!10667 () Bool)

(assert (=> setNonEmpty!10619 (= condSetEmpty!10667 (= setRest!10619 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10667 () Bool)

(assert (=> setNonEmpty!10619 (= tp!453837 setRes!10667)))

(declare-fun setIsEmpty!10667 () Bool)

(assert (=> setIsEmpty!10667 setRes!10667))

(declare-fun e!995832 () Bool)

(declare-fun setElem!10667 () Context!1574)

(declare-fun tp!454207 () Bool)

(declare-fun setNonEmpty!10667 () Bool)

(assert (=> setNonEmpty!10667 (= setRes!10667 (and tp!454207 (inv!22053 setElem!10667) e!995832))))

(declare-fun setRest!10667 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10667 (= setRest!10619 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10667 true) setRest!10667))))

(declare-fun b!1552529 () Bool)

(declare-fun tp!454208 () Bool)

(assert (=> b!1552529 (= e!995832 tp!454208)))

(assert (= (and setNonEmpty!10619 condSetEmpty!10667) setIsEmpty!10667))

(assert (= (and setNonEmpty!10619 (not condSetEmpty!10667)) setNonEmpty!10667))

(assert (= setNonEmpty!10667 b!1552529))

(declare-fun m!1825118 () Bool)

(assert (=> setNonEmpty!10667 m!1825118))

(declare-fun tp!454211 () Bool)

(declare-fun tp!454210 () Bool)

(declare-fun b!1552530 () Bool)

(declare-fun e!995834 () Bool)

(assert (=> b!1552530 (= e!995834 (and (inv!22046 (left!13648 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))) tp!454211 (inv!22046 (right!13978 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))) tp!454210))))

(declare-fun b!1552532 () Bool)

(declare-fun e!995833 () Bool)

(declare-fun tp!454209 () Bool)

(assert (=> b!1552532 (= e!995833 tp!454209)))

(declare-fun b!1552531 () Bool)

(assert (=> b!1552531 (= e!995834 (and (inv!22054 (xs!8359 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))) e!995833))))

(assert (=> b!1551927 (= tp!453937 (and (inv!22046 (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493)))))) e!995834))))

(assert (= (and b!1551927 ((_ is Node!5559) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))) b!1552530))

(assert (= b!1552531 b!1552532))

(assert (= (and b!1551927 ((_ is Leaf!8239) (c!252328 (dynLambda!7426 (toChars!4165 (transformation!2941 rule!240)) (dynLambda!7425 (toValue!4306 (transformation!2941 rule!240)) (_1!9425 (_1!9426 lt!537493))))))) b!1552531))

(declare-fun m!1825120 () Bool)

(assert (=> b!1552530 m!1825120))

(declare-fun m!1825122 () Bool)

(assert (=> b!1552530 m!1825122))

(declare-fun m!1825124 () Bool)

(assert (=> b!1552531 m!1825124))

(assert (=> b!1551927 m!1824365))

(declare-fun condSetEmpty!10668 () Bool)

(assert (=> setNonEmpty!10636 (= condSetEmpty!10668 (= setRest!10636 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10668 () Bool)

(assert (=> setNonEmpty!10636 (= tp!453923 setRes!10668)))

(declare-fun setIsEmpty!10668 () Bool)

(assert (=> setIsEmpty!10668 setRes!10668))

(declare-fun setElem!10668 () Context!1574)

(declare-fun e!995835 () Bool)

(declare-fun tp!454212 () Bool)

(declare-fun setNonEmpty!10668 () Bool)

(assert (=> setNonEmpty!10668 (= setRes!10668 (and tp!454212 (inv!22053 setElem!10668) e!995835))))

(declare-fun setRest!10668 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10668 (= setRest!10636 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10668 true) setRest!10668))))

(declare-fun b!1552533 () Bool)

(declare-fun tp!454213 () Bool)

(assert (=> b!1552533 (= e!995835 tp!454213)))

(assert (= (and setNonEmpty!10636 condSetEmpty!10668) setIsEmpty!10668))

(assert (= (and setNonEmpty!10636 (not condSetEmpty!10668)) setNonEmpty!10668))

(assert (= setNonEmpty!10668 b!1552533))

(declare-fun m!1825126 () Bool)

(assert (=> setNonEmpty!10668 m!1825126))

(declare-fun b!1552534 () Bool)

(declare-fun e!995836 () Bool)

(declare-fun tp!454214 () Bool)

(assert (=> b!1552534 (= e!995836 (and tp_is_empty!7061 tp!454214))))

(assert (=> b!1551892 (= tp!453887 e!995836)))

(assert (= (and b!1551892 ((_ is Cons!16779) (innerList!5619 (xs!8359 (c!252328 input!1676))))) b!1552534))

(declare-fun b!1552535 () Bool)

(declare-fun e!995837 () Bool)

(declare-fun tp!454215 () Bool)

(declare-fun tp!454216 () Bool)

(assert (=> b!1552535 (= e!995837 (and tp!454215 tp!454216))))

(assert (=> b!1551920 (= tp!453931 e!995837)))

(assert (= (and b!1551920 ((_ is Cons!16780) (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapValue!8244)))))) b!1552535))

(declare-fun condSetEmpty!10669 () Bool)

(assert (=> setNonEmpty!10609 (= condSetEmpty!10669 (= setRest!10609 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10669 () Bool)

(assert (=> setNonEmpty!10609 (= tp!453797 setRes!10669)))

(declare-fun setIsEmpty!10669 () Bool)

(assert (=> setIsEmpty!10669 setRes!10669))

(declare-fun setNonEmpty!10669 () Bool)

(declare-fun setElem!10669 () Context!1574)

(declare-fun tp!454217 () Bool)

(declare-fun e!995838 () Bool)

(assert (=> setNonEmpty!10669 (= setRes!10669 (and tp!454217 (inv!22053 setElem!10669) e!995838))))

(declare-fun setRest!10669 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10669 (= setRest!10609 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10669 true) setRest!10669))))

(declare-fun b!1552536 () Bool)

(declare-fun tp!454218 () Bool)

(assert (=> b!1552536 (= e!995838 tp!454218)))

(assert (= (and setNonEmpty!10609 condSetEmpty!10669) setIsEmpty!10669))

(assert (= (and setNonEmpty!10609 (not condSetEmpty!10669)) setNonEmpty!10669))

(assert (= setNonEmpty!10669 b!1552536))

(declare-fun m!1825128 () Bool)

(assert (=> setNonEmpty!10669 m!1825128))

(declare-fun condSetEmpty!10670 () Bool)

(assert (=> setNonEmpty!10622 (= condSetEmpty!10670 (= setRest!10622 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10670 () Bool)

(assert (=> setNonEmpty!10622 (= tp!453851 setRes!10670)))

(declare-fun setIsEmpty!10670 () Bool)

(assert (=> setIsEmpty!10670 setRes!10670))

(declare-fun setElem!10670 () Context!1574)

(declare-fun e!995839 () Bool)

(declare-fun tp!454219 () Bool)

(declare-fun setNonEmpty!10670 () Bool)

(assert (=> setNonEmpty!10670 (= setRes!10670 (and tp!454219 (inv!22053 setElem!10670) e!995839))))

(declare-fun setRest!10670 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10670 (= setRest!10622 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10670 true) setRest!10670))))

(declare-fun b!1552537 () Bool)

(declare-fun tp!454220 () Bool)

(assert (=> b!1552537 (= e!995839 tp!454220)))

(assert (= (and setNonEmpty!10622 condSetEmpty!10670) setIsEmpty!10670))

(assert (= (and setNonEmpty!10622 (not condSetEmpty!10670)) setNonEmpty!10670))

(assert (= setNonEmpty!10670 b!1552537))

(declare-fun m!1825130 () Bool)

(assert (=> setNonEmpty!10670 m!1825130))

(declare-fun condSetEmpty!10671 () Bool)

(assert (=> setNonEmpty!10623 (= condSetEmpty!10671 (= setRest!10623 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10671 () Bool)

(assert (=> setNonEmpty!10623 (= tp!453856 setRes!10671)))

(declare-fun setIsEmpty!10671 () Bool)

(assert (=> setIsEmpty!10671 setRes!10671))

(declare-fun tp!454221 () Bool)

(declare-fun e!995840 () Bool)

(declare-fun setElem!10671 () Context!1574)

(declare-fun setNonEmpty!10671 () Bool)

(assert (=> setNonEmpty!10671 (= setRes!10671 (and tp!454221 (inv!22053 setElem!10671) e!995840))))

(declare-fun setRest!10671 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10671 (= setRest!10623 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10671 true) setRest!10671))))

(declare-fun b!1552538 () Bool)

(declare-fun tp!454222 () Bool)

(assert (=> b!1552538 (= e!995840 tp!454222)))

(assert (= (and setNonEmpty!10623 condSetEmpty!10671) setIsEmpty!10671))

(assert (= (and setNonEmpty!10623 (not condSetEmpty!10671)) setNonEmpty!10671))

(assert (= setNonEmpty!10671 b!1552538))

(declare-fun m!1825132 () Bool)

(assert (=> setNonEmpty!10671 m!1825132))

(declare-fun b!1552539 () Bool)

(declare-fun e!995841 () Bool)

(declare-fun tp!454223 () Bool)

(declare-fun tp!454224 () Bool)

(assert (=> b!1552539 (= e!995841 (and tp!454223 tp!454224))))

(assert (=> b!1551817 (= tp!453791 e!995841)))

(assert (= (and b!1551817 ((_ is Cons!16780) (exprs!1287 (_1!9418 (_1!9419 (h!22182 mapDefault!8245)))))) b!1552539))

(declare-fun setIsEmpty!10672 () Bool)

(declare-fun setRes!10672 () Bool)

(assert (=> setIsEmpty!10672 setRes!10672))

(declare-fun b!1552540 () Bool)

(declare-fun e!995842 () Bool)

(declare-fun tp!454225 () Bool)

(assert (=> b!1552540 (= e!995842 (and setRes!10672 tp!454225))))

(declare-fun condSetEmpty!10672 () Bool)

(assert (=> b!1552540 (= condSetEmpty!10672 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapDefault!8252)))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551876 (= tp!453875 e!995842)))

(declare-fun b!1552541 () Bool)

(declare-fun e!995843 () Bool)

(declare-fun tp!454226 () Bool)

(assert (=> b!1552541 (= e!995843 tp!454226)))

(declare-fun setNonEmpty!10672 () Bool)

(declare-fun setElem!10672 () Context!1574)

(declare-fun tp!454227 () Bool)

(assert (=> setNonEmpty!10672 (= setRes!10672 (and tp!454227 (inv!22053 setElem!10672) e!995843))))

(declare-fun setRest!10672 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10672 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapDefault!8252)))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10672 true) setRest!10672))))

(assert (= (and b!1552540 condSetEmpty!10672) setIsEmpty!10672))

(assert (= (and b!1552540 (not condSetEmpty!10672)) setNonEmpty!10672))

(assert (= setNonEmpty!10672 b!1552541))

(assert (= (and b!1551876 ((_ is Cons!16782) (t!141253 mapDefault!8252))) b!1552540))

(declare-fun m!1825134 () Bool)

(assert (=> setNonEmpty!10672 m!1825134))

(declare-fun e!995870 () Bool)

(declare-fun e!995865 () Bool)

(declare-fun e!995866 () Bool)

(assert (=> d!460378 (= true (and e!995870 e!995865 e!995866))))

(declare-fun b!1552562 () Bool)

(declare-fun e!995869 () Bool)

(assert (=> b!1552562 (= e!995866 e!995869)))

(declare-fun b!1552563 () Bool)

(declare-fun e!995863 () Bool)

(declare-fun lt!537773 () MutLongMap!1780)

(assert (=> b!1552563 (= e!995863 ((_ is LongMap!1780) lt!537773))))

(assert (=> b!1552563 (= lt!537773 (v!23617 (underlying!3770 (cache!2105 (_4!441 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1552564 () Bool)

(declare-fun e!995864 () Bool)

(assert (=> b!1552564 (= e!995865 e!995864)))

(declare-fun b!1552565 () Bool)

(declare-fun e!995868 () Bool)

(declare-fun lt!537774 () MutLongMap!1781)

(assert (=> b!1552565 (= e!995868 ((_ is LongMap!1781) lt!537774))))

(assert (=> b!1552565 (= lt!537774 (v!23619 (underlying!3772 (cache!2106 (_3!1324 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1552566 () Bool)

(assert (=> b!1552566 (= e!995869 e!995863)))

(declare-fun b!1552567 () Bool)

(declare-fun e!995867 () Bool)

(assert (=> b!1552567 (= e!995870 e!995867)))

(declare-fun b!1552568 () Bool)

(declare-fun e!995862 () Bool)

(declare-fun lt!537772 () MutLongMap!1779)

(assert (=> b!1552568 (= e!995862 ((_ is LongMap!1779) lt!537772))))

(assert (=> b!1552568 (= lt!537772 (v!23615 (underlying!3768 (cache!2104 (_2!9426 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1552569 () Bool)

(assert (=> b!1552569 (= e!995867 e!995862)))

(declare-fun b!1552570 () Bool)

(assert (=> b!1552570 (= e!995864 e!995868)))

(assert (= b!1552569 b!1552568))

(assert (= (and b!1552567 ((_ is HashMap!1723) (cache!2104 (_2!9426 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1552569))

(assert (= d!460378 b!1552567))

(assert (= b!1552570 b!1552565))

(assert (= (and b!1552564 ((_ is HashMap!1725) (cache!2106 (_3!1324 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1552570))

(assert (= d!460378 b!1552564))

(assert (= b!1552566 b!1552563))

(assert (= (and b!1552562 ((_ is HashMap!1724) (cache!2105 (_4!441 (findLongestMatchWithZipperSequenceV3Mem!45 (regex!2941 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1552566))

(assert (= d!460378 b!1552562))

(declare-fun b!1552571 () Bool)

(declare-fun e!995871 () Bool)

(declare-fun tp!454228 () Bool)

(declare-fun tp!454229 () Bool)

(assert (=> b!1552571 (= e!995871 (and tp!454228 tp!454229))))

(assert (=> b!1551859 (= tp!453845 e!995871)))

(assert (= (and b!1551859 ((_ is Cons!16780) (exprs!1287 setElem!10621))) b!1552571))

(declare-fun setIsEmpty!10673 () Bool)

(declare-fun setRes!10673 () Bool)

(assert (=> setIsEmpty!10673 setRes!10673))

(declare-fun b!1552572 () Bool)

(declare-fun e!995874 () Bool)

(declare-fun tp!454234 () Bool)

(assert (=> b!1552572 (= e!995874 (and setRes!10673 tp!454234))))

(declare-fun condSetEmpty!10673 () Bool)

(declare-fun mapDefault!8267 () List!16850)

(assert (=> b!1552572 (= condSetEmpty!10673 (= (_1!9420 (_1!9421 (h!22183 mapDefault!8267))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setIsEmpty!10674 () Bool)

(declare-fun setRes!10674 () Bool)

(assert (=> setIsEmpty!10674 setRes!10674))

(declare-fun b!1552573 () Bool)

(declare-fun e!995872 () Bool)

(declare-fun tp!454236 () Bool)

(assert (=> b!1552573 (= e!995872 tp!454236)))

(declare-fun tp!454230 () Bool)

(declare-fun setElem!10674 () Context!1574)

(declare-fun setNonEmpty!10673 () Bool)

(assert (=> setNonEmpty!10673 (= setRes!10673 (and tp!454230 (inv!22053 setElem!10674) e!995872))))

(declare-fun setRest!10674 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10673 (= (_1!9420 (_1!9421 (h!22183 mapDefault!8267))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10674 true) setRest!10674))))

(declare-fun mapNonEmpty!8267 () Bool)

(declare-fun mapRes!8267 () Bool)

(declare-fun tp!454233 () Bool)

(declare-fun e!995875 () Bool)

(assert (=> mapNonEmpty!8267 (= mapRes!8267 (and tp!454233 e!995875))))

(declare-fun mapRest!8267 () (Array (_ BitVec 32) List!16850))

(declare-fun mapKey!8267 () (_ BitVec 32))

(declare-fun mapValue!8267 () List!16850)

(assert (=> mapNonEmpty!8267 (= mapRest!8252 (store mapRest!8267 mapKey!8267 mapValue!8267))))

(declare-fun mapIsEmpty!8267 () Bool)

(assert (=> mapIsEmpty!8267 mapRes!8267))

(declare-fun b!1552574 () Bool)

(declare-fun tp!454232 () Bool)

(assert (=> b!1552574 (= e!995875 (and setRes!10674 tp!454232))))

(declare-fun condSetEmpty!10674 () Bool)

(assert (=> b!1552574 (= condSetEmpty!10674 (= (_1!9420 (_1!9421 (h!22183 mapValue!8267))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552575 () Bool)

(declare-fun e!995873 () Bool)

(declare-fun tp!454231 () Bool)

(assert (=> b!1552575 (= e!995873 tp!454231)))

(declare-fun condMapEmpty!8267 () Bool)

(assert (=> mapNonEmpty!8252 (= condMapEmpty!8267 (= mapRest!8252 ((as const (Array (_ BitVec 32) List!16850)) mapDefault!8267)))))

(assert (=> mapNonEmpty!8252 (= tp!453874 (and e!995874 mapRes!8267))))

(declare-fun setNonEmpty!10674 () Bool)

(declare-fun tp!454235 () Bool)

(declare-fun setElem!10673 () Context!1574)

(assert (=> setNonEmpty!10674 (= setRes!10674 (and tp!454235 (inv!22053 setElem!10673) e!995873))))

(declare-fun setRest!10673 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10674 (= (_1!9420 (_1!9421 (h!22183 mapValue!8267))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10673 true) setRest!10673))))

(assert (= (and mapNonEmpty!8252 condMapEmpty!8267) mapIsEmpty!8267))

(assert (= (and mapNonEmpty!8252 (not condMapEmpty!8267)) mapNonEmpty!8267))

(assert (= (and b!1552574 condSetEmpty!10674) setIsEmpty!10674))

(assert (= (and b!1552574 (not condSetEmpty!10674)) setNonEmpty!10674))

(assert (= setNonEmpty!10674 b!1552575))

(assert (= (and mapNonEmpty!8267 ((_ is Cons!16782) mapValue!8267)) b!1552574))

(assert (= (and b!1552572 condSetEmpty!10673) setIsEmpty!10673))

(assert (= (and b!1552572 (not condSetEmpty!10673)) setNonEmpty!10673))

(assert (= setNonEmpty!10673 b!1552573))

(assert (= (and mapNonEmpty!8252 ((_ is Cons!16782) mapDefault!8267)) b!1552572))

(declare-fun m!1825136 () Bool)

(assert (=> setNonEmpty!10673 m!1825136))

(declare-fun m!1825138 () Bool)

(assert (=> mapNonEmpty!8267 m!1825138))

(declare-fun m!1825140 () Bool)

(assert (=> setNonEmpty!10674 m!1825140))

(declare-fun b!1552576 () Bool)

(declare-fun e!995876 () Bool)

(declare-fun tp!454237 () Bool)

(declare-fun tp!454238 () Bool)

(assert (=> b!1552576 (= e!995876 (and tp!454237 tp!454238))))

(assert (=> b!1551832 (= tp!453808 e!995876)))

(assert (= (and b!1551832 ((_ is Cons!16780) (exprs!1287 setElem!10612))) b!1552576))

(declare-fun condSetEmpty!10675 () Bool)

(assert (=> setNonEmpty!10618 (= condSetEmpty!10675 (= setRest!10617 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10675 () Bool)

(assert (=> setNonEmpty!10618 (= tp!453834 setRes!10675)))

(declare-fun setIsEmpty!10675 () Bool)

(assert (=> setIsEmpty!10675 setRes!10675))

(declare-fun setNonEmpty!10675 () Bool)

(declare-fun setElem!10675 () Context!1574)

(declare-fun e!995877 () Bool)

(declare-fun tp!454239 () Bool)

(assert (=> setNonEmpty!10675 (= setRes!10675 (and tp!454239 (inv!22053 setElem!10675) e!995877))))

(declare-fun setRest!10675 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10675 (= setRest!10617 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10675 true) setRest!10675))))

(declare-fun b!1552577 () Bool)

(declare-fun tp!454240 () Bool)

(assert (=> b!1552577 (= e!995877 tp!454240)))

(assert (= (and setNonEmpty!10618 condSetEmpty!10675) setIsEmpty!10675))

(assert (= (and setNonEmpty!10618 (not condSetEmpty!10675)) setNonEmpty!10675))

(assert (= setNonEmpty!10675 b!1552577))

(declare-fun m!1825142 () Bool)

(assert (=> setNonEmpty!10675 m!1825142))

(declare-fun tp!454242 () Bool)

(declare-fun e!995879 () Bool)

(declare-fun b!1552578 () Bool)

(declare-fun tp!454243 () Bool)

(assert (=> b!1552578 (= e!995879 (and (inv!22046 (left!13648 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) tp!454243 (inv!22046 (right!13978 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) tp!454242))))

(declare-fun b!1552580 () Bool)

(declare-fun e!995878 () Bool)

(declare-fun tp!454241 () Bool)

(assert (=> b!1552580 (= e!995878 tp!454241)))

(declare-fun b!1552579 () Bool)

(assert (=> b!1552579 (= e!995879 (and (inv!22054 (xs!8359 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) e!995878))))

(assert (=> b!1551893 (= tp!453892 (and (inv!22046 (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) e!995879))))

(assert (= (and b!1551893 ((_ is Node!5559) (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) b!1552578))

(assert (= b!1552579 b!1552580))

(assert (= (and b!1551893 ((_ is Leaf!8239) (left!13648 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) b!1552579))

(declare-fun m!1825144 () Bool)

(assert (=> b!1552578 m!1825144))

(declare-fun m!1825146 () Bool)

(assert (=> b!1552578 m!1825146))

(declare-fun m!1825148 () Bool)

(assert (=> b!1552579 m!1825148))

(assert (=> b!1551893 m!1824325))

(declare-fun tp!454246 () Bool)

(declare-fun tp!454245 () Bool)

(declare-fun b!1552581 () Bool)

(declare-fun e!995881 () Bool)

(assert (=> b!1552581 (= e!995881 (and (inv!22046 (left!13648 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) tp!454246 (inv!22046 (right!13978 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) tp!454245))))

(declare-fun b!1552583 () Bool)

(declare-fun e!995880 () Bool)

(declare-fun tp!454244 () Bool)

(assert (=> b!1552583 (= e!995880 tp!454244)))

(declare-fun b!1552582 () Bool)

(assert (=> b!1552582 (= e!995881 (and (inv!22054 (xs!8359 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) e!995880))))

(assert (=> b!1551893 (= tp!453891 (and (inv!22046 (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103)))) e!995881))))

(assert (= (and b!1551893 ((_ is Node!5559) (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) b!1552581))

(assert (= b!1552582 b!1552583))

(assert (= (and b!1551893 ((_ is Leaf!8239) (right!13978 (c!252328 (totalInput!2444 cacheFurthestNullable!103))))) b!1552582))

(declare-fun m!1825150 () Bool)

(assert (=> b!1552581 m!1825150))

(declare-fun m!1825152 () Bool)

(assert (=> b!1552581 m!1825152))

(declare-fun m!1825154 () Bool)

(assert (=> b!1552582 m!1825154))

(assert (=> b!1551893 m!1824327))

(declare-fun b!1552584 () Bool)

(declare-fun e!995882 () Bool)

(declare-fun tp!454247 () Bool)

(declare-fun tp!454248 () Bool)

(assert (=> b!1552584 (= e!995882 (and tp!454247 tp!454248))))

(assert (=> b!1551879 (= tp!453872 e!995882)))

(assert (= (and b!1551879 ((_ is Cons!16780) (exprs!1287 setElem!10628))) b!1552584))

(declare-fun b!1552585 () Bool)

(declare-fun e!995883 () Bool)

(assert (=> b!1552585 (= e!995883 tp_is_empty!7061)))

(assert (=> b!1551807 (= tp!453779 e!995883)))

(declare-fun b!1552588 () Bool)

(declare-fun tp!454252 () Bool)

(declare-fun tp!454249 () Bool)

(assert (=> b!1552588 (= e!995883 (and tp!454252 tp!454249))))

(declare-fun b!1552586 () Bool)

(declare-fun tp!454250 () Bool)

(declare-fun tp!454251 () Bool)

(assert (=> b!1552586 (= e!995883 (and tp!454250 tp!454251))))

(declare-fun b!1552587 () Bool)

(declare-fun tp!454253 () Bool)

(assert (=> b!1552587 (= e!995883 tp!454253)))

(assert (= (and b!1551807 ((_ is ElementMatch!4269) (regOne!9051 (regex!2941 rule!240)))) b!1552585))

(assert (= (and b!1551807 ((_ is Concat!7301) (regOne!9051 (regex!2941 rule!240)))) b!1552586))

(assert (= (and b!1551807 ((_ is Star!4269) (regOne!9051 (regex!2941 rule!240)))) b!1552587))

(assert (= (and b!1551807 ((_ is Union!4269) (regOne!9051 (regex!2941 rule!240)))) b!1552588))

(declare-fun b!1552589 () Bool)

(declare-fun e!995884 () Bool)

(assert (=> b!1552589 (= e!995884 tp_is_empty!7061)))

(assert (=> b!1551807 (= tp!453776 e!995884)))

(declare-fun b!1552592 () Bool)

(declare-fun tp!454257 () Bool)

(declare-fun tp!454254 () Bool)

(assert (=> b!1552592 (= e!995884 (and tp!454257 tp!454254))))

(declare-fun b!1552590 () Bool)

(declare-fun tp!454255 () Bool)

(declare-fun tp!454256 () Bool)

(assert (=> b!1552590 (= e!995884 (and tp!454255 tp!454256))))

(declare-fun b!1552591 () Bool)

(declare-fun tp!454258 () Bool)

(assert (=> b!1552591 (= e!995884 tp!454258)))

(assert (= (and b!1551807 ((_ is ElementMatch!4269) (regTwo!9051 (regex!2941 rule!240)))) b!1552589))

(assert (= (and b!1551807 ((_ is Concat!7301) (regTwo!9051 (regex!2941 rule!240)))) b!1552590))

(assert (= (and b!1551807 ((_ is Star!4269) (regTwo!9051 (regex!2941 rule!240)))) b!1552591))

(assert (= (and b!1551807 ((_ is Union!4269) (regTwo!9051 (regex!2941 rule!240)))) b!1552592))

(declare-fun condSetEmpty!10676 () Bool)

(assert (=> setNonEmpty!10604 (= condSetEmpty!10676 (= setRest!10604 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10676 () Bool)

(assert (=> setNonEmpty!10604 (= tp!453765 setRes!10676)))

(declare-fun setIsEmpty!10676 () Bool)

(assert (=> setIsEmpty!10676 setRes!10676))

(declare-fun tp!454259 () Bool)

(declare-fun setElem!10676 () Context!1574)

(declare-fun e!995885 () Bool)

(declare-fun setNonEmpty!10676 () Bool)

(assert (=> setNonEmpty!10676 (= setRes!10676 (and tp!454259 (inv!22053 setElem!10676) e!995885))))

(declare-fun setRest!10676 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10676 (= setRest!10604 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10676 true) setRest!10676))))

(declare-fun b!1552593 () Bool)

(declare-fun tp!454260 () Bool)

(assert (=> b!1552593 (= e!995885 tp!454260)))

(assert (= (and setNonEmpty!10604 condSetEmpty!10676) setIsEmpty!10676))

(assert (= (and setNonEmpty!10604 (not condSetEmpty!10676)) setNonEmpty!10676))

(assert (= setNonEmpty!10676 b!1552593))

(declare-fun m!1825156 () Bool)

(assert (=> setNonEmpty!10676 m!1825156))

(declare-fun b!1552594 () Bool)

(declare-fun e!995886 () Bool)

(declare-fun tp!454261 () Bool)

(declare-fun tp!454262 () Bool)

(assert (=> b!1552594 (= e!995886 (and tp!454261 tp!454262))))

(assert (=> b!1551918 (= tp!453921 e!995886)))

(assert (= (and b!1551918 ((_ is Cons!16780) (exprs!1287 (_2!9422 (_1!9423 (h!22184 mapDefault!8255)))))) b!1552594))

(declare-fun b!1552595 () Bool)

(declare-fun e!995887 () Bool)

(declare-fun tp!454263 () Bool)

(declare-fun tp!454264 () Bool)

(assert (=> b!1552595 (= e!995887 (and tp!454263 tp!454264))))

(assert (=> b!1551919 (= tp!453930 e!995887)))

(assert (= (and b!1551919 ((_ is Cons!16780) (exprs!1287 setElem!10637))) b!1552595))

(declare-fun b!1552596 () Bool)

(declare-fun e!995888 () Bool)

(declare-fun tp!454265 () Bool)

(declare-fun tp!454266 () Bool)

(assert (=> b!1552596 (= e!995888 (and tp!454265 tp!454266))))

(assert (=> b!1551864 (= tp!453854 e!995888)))

(assert (= (and b!1551864 ((_ is Cons!16780) (exprs!1287 (_2!9422 (_1!9423 (h!22184 (minValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))))) b!1552596))

(declare-fun b!1552597 () Bool)

(declare-fun e!995889 () Bool)

(declare-fun tp!454267 () Bool)

(declare-fun tp!454268 () Bool)

(assert (=> b!1552597 (= e!995889 (and tp!454267 tp!454268))))

(assert (=> b!1551820 (= tp!453795 e!995889)))

(assert (= (and b!1551820 ((_ is Cons!16780) (exprs!1287 (_1!9418 (_1!9419 (h!22182 (zeroValue!2036 (v!23614 (underlying!3767 (v!23615 (underlying!3768 (cache!2104 cacheUp!755)))))))))))) b!1552597))

(declare-fun b!1552598 () Bool)

(declare-fun e!995890 () Bool)

(declare-fun tp!454269 () Bool)

(declare-fun tp!454270 () Bool)

(assert (=> b!1552598 (= e!995890 (and tp!454269 tp!454270))))

(assert (=> b!1551861 (= tp!453849 e!995890)))

(assert (= (and b!1551861 ((_ is Cons!16780) (exprs!1287 (_2!9422 (_1!9423 (h!22184 (zeroValue!2038 (v!23618 (underlying!3771 (v!23619 (underlying!3772 (cache!2106 cacheDown!768)))))))))))) b!1552598))

(declare-fun e!995893 () Bool)

(declare-fun tp!454274 () Bool)

(declare-fun setRes!10677 () Bool)

(declare-fun b!1552599 () Bool)

(declare-fun e!995891 () Bool)

(assert (=> b!1552599 (= e!995891 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (t!141252 mapDefault!8245))))) e!995893 tp_is_empty!7061 setRes!10677 tp!454274))))

(declare-fun condSetEmpty!10677 () Bool)

(assert (=> b!1552599 (= condSetEmpty!10677 (= (_2!9419 (h!22182 (t!141252 mapDefault!8245))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552600 () Bool)

(declare-fun tp!454273 () Bool)

(assert (=> b!1552600 (= e!995893 tp!454273)))

(declare-fun setIsEmpty!10677 () Bool)

(assert (=> setIsEmpty!10677 setRes!10677))

(assert (=> b!1551816 (= tp!453792 e!995891)))

(declare-fun e!995892 () Bool)

(declare-fun tp!454271 () Bool)

(declare-fun setElem!10677 () Context!1574)

(declare-fun setNonEmpty!10677 () Bool)

(assert (=> setNonEmpty!10677 (= setRes!10677 (and tp!454271 (inv!22053 setElem!10677) e!995892))))

(declare-fun setRest!10677 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10677 (= (_2!9419 (h!22182 (t!141252 mapDefault!8245))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10677 true) setRest!10677))))

(declare-fun b!1552601 () Bool)

(declare-fun tp!454272 () Bool)

(assert (=> b!1552601 (= e!995892 tp!454272)))

(assert (= b!1552599 b!1552600))

(assert (= (and b!1552599 condSetEmpty!10677) setIsEmpty!10677))

(assert (= (and b!1552599 (not condSetEmpty!10677)) setNonEmpty!10677))

(assert (= setNonEmpty!10677 b!1552601))

(assert (= (and b!1551816 ((_ is Cons!16781) (t!141252 mapDefault!8245))) b!1552599))

(declare-fun m!1825158 () Bool)

(assert (=> b!1552599 m!1825158))

(declare-fun m!1825160 () Bool)

(assert (=> setNonEmpty!10677 m!1825160))

(declare-fun b!1552602 () Bool)

(declare-fun e!995894 () Bool)

(declare-fun tp!454275 () Bool)

(declare-fun tp!454276 () Bool)

(assert (=> b!1552602 (= e!995894 (and tp!454275 tp!454276))))

(assert (=> b!1551847 (= tp!453829 e!995894)))

(assert (= (and b!1551847 ((_ is Cons!16780) (exprs!1287 setElem!10617))) b!1552602))

(declare-fun b!1552603 () Bool)

(declare-fun e!995895 () Bool)

(assert (=> b!1552603 (= e!995895 tp_is_empty!7061)))

(assert (=> b!1551921 (= tp!453932 e!995895)))

(declare-fun b!1552606 () Bool)

(declare-fun tp!454280 () Bool)

(declare-fun tp!454277 () Bool)

(assert (=> b!1552606 (= e!995895 (and tp!454280 tp!454277))))

(declare-fun b!1552604 () Bool)

(declare-fun tp!454278 () Bool)

(declare-fun tp!454279 () Bool)

(assert (=> b!1552604 (= e!995895 (and tp!454278 tp!454279))))

(declare-fun b!1552605 () Bool)

(declare-fun tp!454281 () Bool)

(assert (=> b!1552605 (= e!995895 tp!454281)))

(assert (= (and b!1551921 ((_ is ElementMatch!4269) (_1!9422 (_1!9423 (h!22184 mapValue!8244))))) b!1552603))

(assert (= (and b!1551921 ((_ is Concat!7301) (_1!9422 (_1!9423 (h!22184 mapValue!8244))))) b!1552604))

(assert (= (and b!1551921 ((_ is Star!4269) (_1!9422 (_1!9423 (h!22184 mapValue!8244))))) b!1552605))

(assert (= (and b!1551921 ((_ is Union!4269) (_1!9422 (_1!9423 (h!22184 mapValue!8244))))) b!1552606))

(declare-fun e!995897 () Bool)

(assert (=> b!1551921 (= tp!453929 e!995897)))

(declare-fun b!1552607 () Bool)

(declare-fun e!995896 () Bool)

(declare-fun tp!454283 () Bool)

(assert (=> b!1552607 (= e!995896 tp!454283)))

(declare-fun b!1552608 () Bool)

(declare-fun e!995898 () Bool)

(declare-fun tp!454284 () Bool)

(assert (=> b!1552608 (= e!995898 tp!454284)))

(declare-fun setNonEmpty!10678 () Bool)

(declare-fun tp!454286 () Bool)

(declare-fun setRes!10678 () Bool)

(declare-fun setElem!10678 () Context!1574)

(assert (=> setNonEmpty!10678 (= setRes!10678 (and tp!454286 (inv!22053 setElem!10678) e!995896))))

(declare-fun setRest!10678 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10678 (= (_2!9423 (h!22184 (t!141254 mapValue!8244))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10678 true) setRest!10678))))

(declare-fun setIsEmpty!10678 () Bool)

(assert (=> setIsEmpty!10678 setRes!10678))

(declare-fun tp!454285 () Bool)

(declare-fun tp!454282 () Bool)

(declare-fun b!1552609 () Bool)

(assert (=> b!1552609 (= e!995897 (and tp!454285 (inv!22053 (_2!9422 (_1!9423 (h!22184 (t!141254 mapValue!8244))))) e!995898 tp_is_empty!7061 setRes!10678 tp!454282))))

(declare-fun condSetEmpty!10678 () Bool)

(assert (=> b!1552609 (= condSetEmpty!10678 (= (_2!9423 (h!22184 (t!141254 mapValue!8244))) ((as const (Array Context!1574 Bool)) false)))))

(assert (= b!1552609 b!1552608))

(assert (= (and b!1552609 condSetEmpty!10678) setIsEmpty!10678))

(assert (= (and b!1552609 (not condSetEmpty!10678)) setNonEmpty!10678))

(assert (= setNonEmpty!10678 b!1552607))

(assert (= (and b!1551921 ((_ is Cons!16783) (t!141254 mapValue!8244))) b!1552609))

(declare-fun m!1825162 () Bool)

(assert (=> setNonEmpty!10678 m!1825162))

(declare-fun m!1825164 () Bool)

(assert (=> b!1552609 m!1825164))

(declare-fun condSetEmpty!10679 () Bool)

(assert (=> setNonEmpty!10621 (= condSetEmpty!10679 (= setRest!10621 ((as const (Array Context!1574 Bool)) false)))))

(declare-fun setRes!10679 () Bool)

(assert (=> setNonEmpty!10621 (= tp!453846 setRes!10679)))

(declare-fun setIsEmpty!10679 () Bool)

(assert (=> setIsEmpty!10679 setRes!10679))

(declare-fun setNonEmpty!10679 () Bool)

(declare-fun setElem!10679 () Context!1574)

(declare-fun tp!454287 () Bool)

(declare-fun e!995899 () Bool)

(assert (=> setNonEmpty!10679 (= setRes!10679 (and tp!454287 (inv!22053 setElem!10679) e!995899))))

(declare-fun setRest!10679 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10679 (= setRest!10621 ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10679 true) setRest!10679))))

(declare-fun b!1552610 () Bool)

(declare-fun tp!454288 () Bool)

(assert (=> b!1552610 (= e!995899 tp!454288)))

(assert (= (and setNonEmpty!10621 condSetEmpty!10679) setIsEmpty!10679))

(assert (= (and setNonEmpty!10621 (not condSetEmpty!10679)) setNonEmpty!10679))

(assert (= setNonEmpty!10679 b!1552610))

(declare-fun m!1825166 () Bool)

(assert (=> setNonEmpty!10679 m!1825166))

(declare-fun b!1552611 () Bool)

(declare-fun e!995900 () Bool)

(declare-fun tp!454289 () Bool)

(assert (=> b!1552611 (= e!995900 (and tp_is_empty!7061 tp!454289))))

(assert (=> b!1551898 (= tp!453893 e!995900)))

(assert (= (and b!1551898 ((_ is Cons!16779) (innerList!5619 (xs!8359 (c!252328 totalInput!568))))) b!1552611))

(declare-fun b!1552612 () Bool)

(declare-fun e!995901 () Bool)

(declare-fun tp!454290 () Bool)

(declare-fun tp!454291 () Bool)

(assert (=> b!1552612 (= e!995901 (and tp!454290 tp!454291))))

(assert (=> b!1551818 (= tp!453790 e!995901)))

(assert (= (and b!1551818 ((_ is Cons!16780) (exprs!1287 setElem!10607))) b!1552612))

(declare-fun setRes!10680 () Bool)

(declare-fun e!995904 () Bool)

(declare-fun e!995902 () Bool)

(declare-fun b!1552613 () Bool)

(declare-fun tp!454295 () Bool)

(assert (=> b!1552613 (= e!995902 (and (inv!22053 (_1!9418 (_1!9419 (h!22182 (t!141252 mapDefault!8249))))) e!995904 tp_is_empty!7061 setRes!10680 tp!454295))))

(declare-fun condSetEmpty!10680 () Bool)

(assert (=> b!1552613 (= condSetEmpty!10680 (= (_2!9419 (h!22182 (t!141252 mapDefault!8249))) ((as const (Array Context!1574 Bool)) false)))))

(declare-fun b!1552614 () Bool)

(declare-fun tp!454294 () Bool)

(assert (=> b!1552614 (= e!995904 tp!454294)))

(declare-fun setIsEmpty!10680 () Bool)

(assert (=> setIsEmpty!10680 setRes!10680))

(assert (=> b!1551850 (= tp!453836 e!995902)))

(declare-fun setNonEmpty!10680 () Bool)

(declare-fun tp!454292 () Bool)

(declare-fun setElem!10680 () Context!1574)

(declare-fun e!995903 () Bool)

(assert (=> setNonEmpty!10680 (= setRes!10680 (and tp!454292 (inv!22053 setElem!10680) e!995903))))

(declare-fun setRest!10680 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10680 (= (_2!9419 (h!22182 (t!141252 mapDefault!8249))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10680 true) setRest!10680))))

(declare-fun b!1552615 () Bool)

(declare-fun tp!454293 () Bool)

(assert (=> b!1552615 (= e!995903 tp!454293)))

(assert (= b!1552613 b!1552614))

(assert (= (and b!1552613 condSetEmpty!10680) setIsEmpty!10680))

(assert (= (and b!1552613 (not condSetEmpty!10680)) setNonEmpty!10680))

(assert (= setNonEmpty!10680 b!1552615))

(assert (= (and b!1551850 ((_ is Cons!16781) (t!141252 mapDefault!8249))) b!1552613))

(declare-fun m!1825168 () Bool)

(assert (=> b!1552613 m!1825168))

(declare-fun m!1825170 () Bool)

(assert (=> setNonEmpty!10680 m!1825170))

(declare-fun setIsEmpty!10681 () Bool)

(declare-fun setRes!10681 () Bool)

(assert (=> setIsEmpty!10681 setRes!10681))

(declare-fun b!1552616 () Bool)

(declare-fun e!995905 () Bool)

(declare-fun tp!454296 () Bool)

(assert (=> b!1552616 (= e!995905 (and setRes!10681 tp!454296))))

(declare-fun condSetEmpty!10681 () Bool)

(assert (=> b!1552616 (= condSetEmpty!10681 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapValue!8245)))) ((as const (Array Context!1574 Bool)) false)))))

(assert (=> b!1551880 (= tp!453878 e!995905)))

(declare-fun b!1552617 () Bool)

(declare-fun e!995906 () Bool)

(declare-fun tp!454297 () Bool)

(assert (=> b!1552617 (= e!995906 tp!454297)))

(declare-fun setElem!10681 () Context!1574)

(declare-fun setNonEmpty!10681 () Bool)

(declare-fun tp!454298 () Bool)

(assert (=> setNonEmpty!10681 (= setRes!10681 (and tp!454298 (inv!22053 setElem!10681) e!995906))))

(declare-fun setRest!10681 () (InoxSet Context!1574))

(assert (=> setNonEmpty!10681 (= (_1!9420 (_1!9421 (h!22183 (t!141253 mapValue!8245)))) ((_ map or) (store ((as const (Array Context!1574 Bool)) false) setElem!10681 true) setRest!10681))))

(assert (= (and b!1552616 condSetEmpty!10681) setIsEmpty!10681))

(assert (= (and b!1552616 (not condSetEmpty!10681)) setNonEmpty!10681))

(assert (= setNonEmpty!10681 b!1552617))

(assert (= (and b!1551880 ((_ is Cons!16782) (t!141253 mapValue!8245))) b!1552616))

(declare-fun m!1825172 () Bool)

(assert (=> setNonEmpty!10681 m!1825172))

(declare-fun b_lambda!48709 () Bool)

(assert (= b_lambda!48705 (or (and b!1551581 b_free!41219) b_lambda!48709)))

(declare-fun b_lambda!48711 () Bool)

(assert (= b_lambda!48703 (or (and b!1551581 b_free!41221) b_lambda!48711)))

(declare-fun b_lambda!48713 () Bool)

(assert (= b_lambda!48701 (or b!1551575 b_lambda!48713)))

(assert (=> d!460542 d!460404))

(declare-fun b_lambda!48715 () Bool)

(assert (= b_lambda!48707 (or (and b!1551581 b_free!41219) b_lambda!48715)))

(declare-fun b_lambda!48717 () Bool)

(assert (= b_lambda!48699 (or b!1551575 b_lambda!48717)))

(assert (=> d!460478 d!460402))

(check-sat (not b!1552403) (not b!1552499) (not b!1552572) (not bm!101860) (not b!1552415) (not b!1552496) (not b!1551946) (not setNonEmpty!10641) (not b!1552498) (not b!1552375) (not b!1552432) (not b!1552485) (not setNonEmpty!10662) (not bm!101866) b_and!108355 (not d!460420) (not b!1552483) (not d!460520) (not b!1551998) (not d!460410) (not bm!101843) (not setNonEmpty!10665) (not d!460640) (not b!1552608) (not b!1552220) (not d!460436) (not mapNonEmpty!8263) (not setNonEmpty!10676) (not setNonEmpty!10680) (not b!1552533) (not d!460674) (not bm!101864) (not b!1552005) (not b!1552604) (not b!1552537) (not b!1552321) (not b!1552420) (not d!460616) (not b!1552453) (not setNonEmpty!10677) (not b!1551956) (not b!1552412) (not d!460642) (not b!1552316) (not b!1552494) (not b!1551968) (not b!1552454) (not b!1552429) (not b!1552527) (not b!1552057) (not b!1552353) (not b!1552456) (not setNonEmpty!10659) (not b!1552243) (not b!1552583) (not d!460660) (not b!1552509) (not d!460464) (not b!1552423) (not d!460416) (not b!1552080) (not b!1552425) (not bm!101862) (not b!1552616) (not setNonEmpty!10663) (not b!1552512) (not b!1552070) (not bm!101865) b_and!108313 b_and!108319 (not b!1552320) (not setNonEmpty!10673) (not d!460664) (not b!1552526) (not b!1552532) (not d!460568) (not setNonEmpty!10655) (not b!1552452) (not b!1552405) (not setNonEmpty!10643) (not b!1552140) (not b!1552406) (not b!1552510) (not d!460678) (not b!1552030) (not d!460424) (not b!1552534) (not b!1552152) (not b!1552469) (not d!460538) b_and!108351 (not bm!101854) (not setNonEmpty!10653) (not mapNonEmpty!8262) (not b_lambda!48673) (not b!1552497) (not b!1552309) (not b!1552048) (not b!1552024) (not d!460680) (not b!1552240) (not setNonEmpty!10675) (not b!1552514) (not d!460414) (not d!460472) (not b!1552035) (not b!1551990) (not d!460612) (not b!1552332) (not b_next!41925) (not b!1552374) (not b!1552382) (not setNonEmpty!10661) (not b!1552482) (not b!1552515) (not d!460586) (not b!1552149) (not b!1552518) (not b!1552517) (not d!460566) (not d!460610) (not b!1552524) (not setNonEmpty!10669) (not d!460618) (not bm!101867) (not setNonEmpty!10670) (not b!1551893) (not b!1552470) (not setNonEmpty!10656) b_and!108345 (not b!1552474) (not b_next!41937) (not d!460430) (not b!1552311) (not d!460668) (not b!1552424) (not b!1552370) (not d!460506) (not b!1552450) (not b!1552426) (not d!460564) b_and!108343 (not b!1551963) (not b!1552135) (not d!460676) (not b!1552410) (not d!460468) (not b!1552098) (not bm!101841) (not bm!101859) (not b!1552612) (not b_next!41933) (not b!1552447) (not b!1552492) (not b_lambda!48713) (not d!460658) (not mapNonEmpty!8264) (not d!460484) (not b!1552595) (not b_lambda!48675) (not setNonEmpty!10657) (not b!1552473) (not d!460656) (not b!1551967) (not b!1552218) (not d!460458) (not setNonEmpty!10642) (not b!1551992) (not d!460576) (not b!1552313) (not b!1551993) (not d!460516) (not b!1552398) (not b!1552591) (not b!1552022) (not b_lambda!48711) (not b!1552151) (not b!1552437) (not b!1552501) (not setNonEmpty!10645) (not bm!101868) (not b!1552047) b_and!108315 (not b!1552419) (not setNonEmpty!10678) (not b!1552434) (not b!1552606) (not d!460662) (not b!1552493) (not setNonEmpty!10647) (not b_lambda!48715) (not b!1552365) b_and!108317 (not b!1552025) (not b!1552571) (not b!1552611) (not b!1552331) (not b!1552590) (not bm!101844) (not b!1552477) (not b!1552610) (not b!1552176) (not b!1552587) (not d!460574) (not b_next!41927) (not b!1552535) (not b!1552023) (not b!1552575) (not b!1552507) (not setNonEmpty!10654) (not b!1552433) (not b!1552457) b_and!108347 (not b!1552486) (not b!1552028) (not b!1552592) (not d!460500) (not b!1552368) (not b!1552034) (not b!1552032) (not b!1552573) (not b!1552584) (not d!460652) (not d!460460) (not b!1552350) (not d!460474) (not b!1552228) (not d!460562) (not d!460466) (not b!1552417) (not b!1552468) (not d!460614) (not b!1552081) (not setNonEmpty!10646) (not b!1552479) (not b!1552475) (not d!460546) (not b!1552446) (not b!1551997) (not b!1552230) (not b_next!41943) (not d!460446) (not b!1552487) (not b!1552513) (not d!460620) (not b!1552164) (not d!460548) (not b!1552464) (not b!1552502) (not b!1552021) (not b!1552448) (not d!460648) (not b!1552408) (not b!1551991) (not b!1552607) (not d!460438) (not b_lambda!48709) (not d!460556) (not b!1552175) (not b!1551975) (not b!1552422) (not b!1552503) (not b!1552582) (not b!1552407) (not b!1552236) (not b!1552531) (not b!1552435) (not b!1552465) (not b!1552167) (not b!1552172) b_and!108323 (not b!1552147) (not b!1552538) (not b!1552334) (not b!1552491) (not b!1551969) (not bm!101842) (not d!460512) b_and!108339 (not b!1552221) b_and!108341 (not tb!87277) (not b!1552308) (not mapNonEmpty!8266) (not b_next!41945) (not b!1552058) (not b!1552143) (not b!1552163) (not d!460624) (not setNonEmpty!10640) (not b!1552525) (not b!1552188) (not b!1552223) (not d!460408) (not tb!87273) (not b!1552083) (not b!1552322) (not b!1551999) (not d!460628) (not b!1552153) (not b!1552077) (not setNonEmpty!10660) (not b!1552132) (not tb!87275) (not b!1552376) (not d!460622) (not b!1552599) (not b!1552444) (not b!1552241) (not b!1552027) (not d!460488) (not d!460540) (not setNonEmpty!10652) (not b!1552522) (not tb!87279) (not b!1552521) b_and!108349 (not b!1552225) (not b!1552506) (not b_lambda!48691) (not b_lambda!48693) (not b!1552541) (not b!1551890) (not b!1551896) (not d!460560) (not b!1552539) (not b!1552310) (not mapNonEmpty!8265) (not setNonEmpty!10672) (not d!460572) (not setNonEmpty!10666) (not d!460584) (not b!1552438) (not b!1552134) (not b!1551995) (not b!1552315) (not b!1552361) (not b!1552488) (not b!1552428) (not b!1552593) (not b!1552226) (not b!1552345) (not d!460672) (not b!1552476) (not b!1552529) (not b!1552235) (not d!460636) (not setNonEmpty!10674) (not d!460504) (not setNonEmpty!10644) (not bm!101869) (not b!1552449) (not b!1552458) (not b!1552318) (not b!1552586) (not d!460592) (not b!1552500) (not b!1552511) (not b!1552574) (not b!1552489) (not b!1552409) (not b_next!41935) (not b!1552463) (not b!1552078) (not b!1552336) (not b!1552414) (not b!1552523) (not b!1552442) (not b!1552605) (not b!1552505) (not b_lambda!48717) (not b!1552439) (not b!1552069) (not setNonEmpty!10648) (not b!1552093) (not b!1552504) (not b!1552303) (not b!1552598) (not b!1551926) (not b!1551965) (not b!1552578) (not d!460606) (not b!1552516) (not b!1552233) (not setNonEmpty!10679) (not b!1552148) (not d!460434) (not setNonEmpty!10650) (not b!1551977) (not setNonEmpty!10664) (not b!1552613) (not setNonEmpty!10667) (not b!1552349) (not b_next!41947) (not b!1552601) (not b!1552101) (not b!1552615) (not d!460550) (not b!1552231) (not b!1552097) (not d!460670) (not b!1552224) (not setNonEmpty!10651) (not b_next!41931) (not d!460518) (not b!1552427) b_and!108321 (not b!1552244) (not d!460530) (not b!1552576) (not d!460514) (not setNonEmpty!10681) (not b!1552484) (not b!1552440) (not b!1552137) (not setNonEmpty!10658) (not b!1552614) (not b!1552213) (not d!460600) (not b_lambda!48695) (not b!1552594) (not b!1552602) (not b!1552466) (not b!1552455) (not b!1552036) (not bm!101863) (not bm!101853) (not b!1552581) (not b!1552495) (not b!1552046) (not b!1552367) (not d!460508) (not b_next!41939) (not d!460502) (not b!1552337) (not setNonEmpty!10668) (not b!1552351) (not b!1552530) (not b!1552239) (not b!1552306) (not b!1552033) (not b!1552441) (not setNonEmpty!10671) (not b_next!41941) (not b!1552579) (not d!460570) (not bm!101870) (not b!1552171) (not b!1551927) (not d!460480) (not b_lambda!48677) (not b!1552445) (not b!1552421) (not b!1552577) (not b!1552141) (not b!1552084) (not d!460558) (not setNonEmpty!10649) (not d!460428) (not b!1552404) (not mapNonEmpty!8267) (not b_next!41929) (not b_lambda!48689) (not b!1552597) (not b!1552617) (not b!1552168) (not d!460604) (not b!1552019) (not b!1552478) (not b!1552508) (not d!460470) (not d!460418) (not d!460634) (not d!460492) (not b_next!41949) (not d!460654) (not b!1552600) (not bm!101861) (not b!1552490) (not b!1552588) (not b!1552480) (not b!1552520) (not b!1552540) (not d!460534) (not b!1552451) (not b!1552609) (not b!1552128) (not b_lambda!48687) (not d!460482) (not b!1552189) (not b_next!41923) (not b!1552431) (not b!1552020) (not b!1552528) tp_is_empty!7061 (not b!1552472) (not d!460626) (not b!1552222) (not d!460598) (not b!1552596) (not b!1552418) (not b!1552580) (not b!1551961) (not b_lambda!48697) (not b!1552536) (not d!460608) (not b!1552339) (not b!1552031) (not b!1552430) (not b!1552390) (not b!1552413) (not b!1552182) (not b!1552372))
(check-sat b_and!108355 b_and!108351 b_and!108315 b_and!108317 (not b_next!41943) b_and!108323 b_and!108349 (not b_next!41935) (not b_next!41947) (not b_next!41929) (not b_next!41949) (not b_next!41923) b_and!108313 b_and!108319 (not b_next!41925) b_and!108345 (not b_next!41937) (not b_next!41933) b_and!108343 (not b_next!41927) b_and!108347 b_and!108339 b_and!108341 (not b_next!41945) (not b_next!41931) b_and!108321 (not b_next!41939) (not b_next!41941))
