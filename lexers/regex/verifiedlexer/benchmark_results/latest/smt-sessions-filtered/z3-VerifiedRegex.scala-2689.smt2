; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144674 () Bool)

(assert start!144674)

(declare-fun b!1559187 () Bool)

(declare-fun b_free!41575 () Bool)

(declare-fun b_next!42279 () Bool)

(assert (=> b!1559187 (= b_free!41575 (not b_next!42279))))

(declare-fun tp!458129 () Bool)

(declare-fun b_and!108821 () Bool)

(assert (=> b!1559187 (= tp!458129 b_and!108821)))

(declare-fun b!1559202 () Bool)

(declare-fun b_free!41577 () Bool)

(declare-fun b_next!42281 () Bool)

(assert (=> b!1559202 (= b_free!41577 (not b_next!42281))))

(declare-fun tp!458124 () Bool)

(declare-fun b_and!108823 () Bool)

(assert (=> b!1559202 (= tp!458124 b_and!108823)))

(declare-fun b_free!41579 () Bool)

(declare-fun b_next!42283 () Bool)

(assert (=> b!1559202 (= b_free!41579 (not b_next!42283))))

(declare-fun tp!458122 () Bool)

(declare-fun b_and!108825 () Bool)

(assert (=> b!1559202 (= tp!458122 b_and!108825)))

(declare-fun b!1559193 () Bool)

(declare-fun b_free!41581 () Bool)

(declare-fun b_next!42285 () Bool)

(assert (=> b!1559193 (= b_free!41581 (not b_next!42285))))

(declare-fun tp!458131 () Bool)

(declare-fun b_and!108827 () Bool)

(assert (=> b!1559193 (= tp!458131 b_and!108827)))

(declare-fun b!1559216 () Bool)

(declare-fun b_free!41583 () Bool)

(declare-fun b_next!42287 () Bool)

(assert (=> b!1559216 (= b_free!41583 (not b_next!42287))))

(declare-fun tp!458113 () Bool)

(declare-fun b_and!108829 () Bool)

(assert (=> b!1559216 (= tp!458113 b_and!108829)))

(declare-fun b!1559192 () Bool)

(declare-fun b_free!41585 () Bool)

(declare-fun b_next!42289 () Bool)

(assert (=> b!1559192 (= b_free!41585 (not b_next!42289))))

(declare-fun tp!458112 () Bool)

(declare-fun b_and!108831 () Bool)

(assert (=> b!1559192 (= tp!458112 b_and!108831)))

(declare-fun b!1559210 () Bool)

(declare-fun b_free!41587 () Bool)

(declare-fun b_next!42291 () Bool)

(assert (=> b!1559210 (= b_free!41587 (not b_next!42291))))

(declare-fun tp!458110 () Bool)

(declare-fun b_and!108833 () Bool)

(assert (=> b!1559210 (= tp!458110 b_and!108833)))

(declare-fun b!1559199 () Bool)

(declare-fun b_free!41589 () Bool)

(declare-fun b_next!42293 () Bool)

(assert (=> b!1559199 (= b_free!41589 (not b_next!42293))))

(declare-fun tp!458114 () Bool)

(declare-fun b_and!108835 () Bool)

(assert (=> b!1559199 (= tp!458114 b_and!108835)))

(declare-fun b!1559237 () Bool)

(declare-fun e!1000938 () Bool)

(assert (=> b!1559237 (= e!1000938 true)))

(declare-fun b!1559236 () Bool)

(declare-fun e!1000937 () Bool)

(assert (=> b!1559236 (= e!1000937 e!1000938)))

(declare-fun b!1559227 () Bool)

(assert (=> b!1559227 e!1000937))

(assert (= b!1559236 b!1559237))

(assert (= b!1559227 b!1559236))

(declare-fun order!9991 () Int)

(declare-datatypes ((List!16963 0))(
  ( (Nil!16895) (Cons!16895 (h!22296 (_ BitVec 16)) (t!141474 List!16963)) )
))
(declare-datatypes ((TokenValue!3051 0))(
  ( (FloatLiteralValue!6102 (text!21802 List!16963)) (TokenValueExt!3050 (__x!11325 Int)) (Broken!15255 (value!93999 List!16963)) (Object!3118) (End!3051) (Def!3051) (Underscore!3051) (Match!3051) (Else!3051) (Error!3051) (Case!3051) (If!3051) (Extends!3051) (Abstract!3051) (Class!3051) (Val!3051) (DelimiterValue!6102 (del!3111 List!16963)) (KeywordValue!3057 (value!94000 List!16963)) (CommentValue!6102 (value!94001 List!16963)) (WhitespaceValue!6102 (value!94002 List!16963)) (IndentationValue!3051 (value!94003 List!16963)) (String!19542) (Int32!3051) (Broken!15256 (value!94004 List!16963)) (Boolean!3052) (Unit!26123) (OperatorValue!3054 (op!3111 List!16963)) (IdentifierValue!6102 (value!94005 List!16963)) (IdentifierValue!6103 (value!94006 List!16963)) (WhitespaceValue!6103 (value!94007 List!16963)) (True!6102) (False!6102) (Broken!15257 (value!94008 List!16963)) (Broken!15258 (value!94009 List!16963)) (True!6103) (RightBrace!3051) (RightBracket!3051) (Colon!3051) (Null!3051) (Comma!3051) (LeftBracket!3051) (False!6103) (LeftBrace!3051) (ImaginaryLiteralValue!3051 (text!21803 List!16963)) (StringLiteralValue!9153 (value!94010 List!16963)) (EOFValue!3051 (value!94011 List!16963)) (IdentValue!3051 (value!94012 List!16963)) (DelimiterValue!6103 (value!94013 List!16963)) (DedentValue!3051 (value!94014 List!16963)) (NewLineValue!3051 (value!94015 List!16963)) (IntegerValue!9153 (value!94016 (_ BitVec 32)) (text!21804 List!16963)) (IntegerValue!9154 (value!94017 Int) (text!21805 List!16963)) (Times!3051) (Or!3051) (Equal!3051) (Minus!3051) (Broken!15259 (value!94018 List!16963)) (And!3051) (Div!3051) (LessEqual!3051) (Mod!3051) (Concat!7340) (Not!3051) (Plus!3051) (SpaceValue!3051 (value!94019 List!16963)) (IntegerValue!9155 (value!94020 Int) (text!21806 List!16963)) (StringLiteralValue!9154 (text!21807 List!16963)) (FloatLiteralValue!6103 (text!21808 List!16963)) (BytesLiteralValue!3051 (value!94021 List!16963)) (CommentValue!6103 (value!94022 List!16963)) (StringLiteralValue!9155 (value!94023 List!16963)) (ErrorTokenValue!3051 (msg!3112 List!16963)) )
))
(declare-datatypes ((C!8756 0))(
  ( (C!8757 (val!4950 Int)) )
))
(declare-datatypes ((List!16964 0))(
  ( (Nil!16896) (Cons!16896 (h!22297 C!8756) (t!141475 List!16964)) )
))
(declare-datatypes ((IArray!11163 0))(
  ( (IArray!11164 (innerList!5639 List!16964)) )
))
(declare-datatypes ((Conc!5579 0))(
  ( (Node!5579 (left!13718 Conc!5579) (right!14048 Conc!5579) (csize!11388 Int) (cheight!5790 Int)) (Leaf!8269 (xs!8379 IArray!11163) (csize!11389 Int)) (Empty!5579) )
))
(declare-datatypes ((BalanceConc!11100 0))(
  ( (BalanceConc!11101 (c!253037 Conc!5579)) )
))
(declare-datatypes ((Regex!4289 0))(
  ( (ElementMatch!4289 (c!253038 C!8756)) (Concat!7341 (regOne!9090 Regex!4289) (regTwo!9090 Regex!4289)) (EmptyExpr!4289) (Star!4289 (reg!4618 Regex!4289)) (EmptyLang!4289) (Union!4289 (regOne!9091 Regex!4289) (regTwo!9091 Regex!4289)) )
))
(declare-datatypes ((String!19543 0))(
  ( (String!19544 (value!94024 String)) )
))
(declare-datatypes ((TokenValueInjection!5762 0))(
  ( (TokenValueInjection!5763 (toValue!4338 Int) (toChars!4197 Int)) )
))
(declare-datatypes ((Rule!5722 0))(
  ( (Rule!5723 (regex!2961 Regex!4289) (tag!3225 String!19543) (isSeparator!2961 Bool) (transformation!2961 TokenValueInjection!5762)) )
))
(declare-fun rule!240 () Rule!5722)

(declare-fun order!9993 () Int)

(declare-fun lambda!65995 () Int)

(declare-fun dynLambda!7517 (Int Int) Int)

(declare-fun dynLambda!7518 (Int Int) Int)

(assert (=> b!1559237 (< (dynLambda!7517 order!9991 (toValue!4338 (transformation!2961 rule!240))) (dynLambda!7518 order!9993 lambda!65995))))

(declare-fun order!9995 () Int)

(declare-fun dynLambda!7519 (Int Int) Int)

(assert (=> b!1559237 (< (dynLambda!7519 order!9995 (toChars!4197 (transformation!2961 rule!240))) (dynLambda!7518 order!9993 lambda!65995))))

(declare-fun e!1000920 () Bool)

(declare-fun e!1000930 () Bool)

(assert (=> b!1559187 (= e!1000920 (and e!1000930 tp!458129))))

(declare-fun b!1559188 () Bool)

(declare-fun e!1000914 () Bool)

(declare-fun e!1000926 () Bool)

(assert (=> b!1559188 (= e!1000914 e!1000926)))

(declare-fun res!695534 () Bool)

(assert (=> b!1559188 (=> res!695534 e!1000926)))

(declare-fun lt!540104 () BalanceConc!11100)

(declare-fun lt!540114 () TokenValue!3051)

(declare-fun apply!4119 (TokenValueInjection!5762 BalanceConc!11100) TokenValue!3051)

(assert (=> b!1559188 (= res!695534 (not (= (apply!4119 (transformation!2961 rule!240) lt!540104) lt!540114)))))

(declare-datatypes ((List!16965 0))(
  ( (Nil!16897) (Cons!16897 (h!22298 Regex!4289) (t!141476 List!16965)) )
))
(declare-datatypes ((Context!1614 0))(
  ( (Context!1615 (exprs!1307 List!16965)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1840 0))(
  ( (tuple3!1841 (_1!9609 (InoxSet Context!1614)) (_2!9609 Int) (_3!1377 Int)) )
))
(declare-datatypes ((tuple2!16464 0))(
  ( (tuple2!16465 (_1!9610 tuple3!1840) (_2!9610 Int)) )
))
(declare-datatypes ((List!16966 0))(
  ( (Nil!16898) (Cons!16898 (h!22299 tuple2!16464) (t!141477 List!16966)) )
))
(declare-datatypes ((array!6290 0))(
  ( (array!6291 (arr!2800 (Array (_ BitVec 32) List!16966)) (size!13704 (_ BitVec 32))) )
))
(declare-datatypes ((array!6292 0))(
  ( (array!6293 (arr!2801 (Array (_ BitVec 32) (_ BitVec 64))) (size!13705 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3672 0))(
  ( (LongMapFixedSize!3673 (defaultEntry!2196 Int) (mask!5069 (_ BitVec 32)) (extraKeys!2083 (_ BitVec 32)) (zeroValue!2093 List!16966) (minValue!2093 List!16966) (_size!3753 (_ BitVec 32)) (_keys!2130 array!6292) (_values!2115 array!6290) (_vacant!1897 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!16466 0))(
  ( (tuple2!16467 (_1!9611 Context!1614) (_2!9611 C!8756)) )
))
(declare-datatypes ((tuple2!16468 0))(
  ( (tuple2!16469 (_1!9612 tuple2!16466) (_2!9612 (InoxSet Context!1614))) )
))
(declare-datatypes ((List!16967 0))(
  ( (Nil!16899) (Cons!16899 (h!22300 tuple2!16468) (t!141478 List!16967)) )
))
(declare-datatypes ((array!6294 0))(
  ( (array!6295 (arr!2802 (Array (_ BitVec 32) List!16967)) (size!13706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3674 0))(
  ( (LongMapFixedSize!3675 (defaultEntry!2197 Int) (mask!5070 (_ BitVec 32)) (extraKeys!2084 (_ BitVec 32)) (zeroValue!2094 List!16967) (minValue!2094 List!16967) (_size!3754 (_ BitVec 32)) (_keys!2131 array!6292) (_values!2116 array!6294) (_vacant!1898 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7229 0))(
  ( (Cell!7230 (v!23759 LongMapFixedSize!3674)) )
))
(declare-datatypes ((MutLongMap!1836 0))(
  ( (LongMap!1836 (underlying!3881 Cell!7229)) (MutLongMapExt!1835 (__x!11326 Int)) )
))
(declare-datatypes ((Cell!7231 0))(
  ( (Cell!7232 (v!23760 MutLongMap!1836)) )
))
(declare-datatypes ((tuple3!1842 0))(
  ( (tuple3!1843 (_1!9613 Regex!4289) (_2!9613 Context!1614) (_3!1378 C!8756)) )
))
(declare-datatypes ((Hashable!1780 0))(
  ( (HashableExt!1779 (__x!11327 Int)) )
))
(declare-datatypes ((MutableMap!1780 0))(
  ( (MutableMapExt!1779 (__x!11328 Int)) (HashMap!1780 (underlying!3882 Cell!7231) (hashF!3699 Hashable!1780) (_size!3755 (_ BitVec 32)) (defaultValue!1940 Int)) )
))
(declare-datatypes ((CacheUp!1084 0))(
  ( (CacheUp!1085 (cache!2161 MutableMap!1780)) )
))
(declare-datatypes ((tuple2!16470 0))(
  ( (tuple2!16471 (_1!9614 tuple3!1842) (_2!9614 (InoxSet Context!1614))) )
))
(declare-datatypes ((List!16968 0))(
  ( (Nil!16900) (Cons!16900 (h!22301 tuple2!16470) (t!141479 List!16968)) )
))
(declare-datatypes ((Cell!7233 0))(
  ( (Cell!7234 (v!23761 LongMapFixedSize!3672)) )
))
(declare-datatypes ((array!6296 0))(
  ( (array!6297 (arr!2803 (Array (_ BitVec 32) List!16968)) (size!13707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3676 0))(
  ( (LongMapFixedSize!3677 (defaultEntry!2198 Int) (mask!5071 (_ BitVec 32)) (extraKeys!2085 (_ BitVec 32)) (zeroValue!2095 List!16968) (minValue!2095 List!16968) (_size!3756 (_ BitVec 32)) (_keys!2132 array!6292) (_values!2117 array!6296) (_vacant!1899 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7235 0))(
  ( (Cell!7236 (v!23762 LongMapFixedSize!3676)) )
))
(declare-datatypes ((tuple2!16472 0))(
  ( (tuple2!16473 (_1!9615 BalanceConc!11100) (_2!9615 BalanceConc!11100)) )
))
(declare-datatypes ((MutLongMap!1837 0))(
  ( (LongMap!1837 (underlying!3883 Cell!7235)) (MutLongMapExt!1836 (__x!11329 Int)) )
))
(declare-datatypes ((Cell!7237 0))(
  ( (Cell!7238 (v!23763 MutLongMap!1837)) )
))
(declare-datatypes ((Hashable!1781 0))(
  ( (HashableExt!1780 (__x!11330 Int)) )
))
(declare-datatypes ((MutableMap!1781 0))(
  ( (MutableMapExt!1780 (__x!11331 Int)) (HashMap!1781 (underlying!3884 Cell!7237) (hashF!3700 Hashable!1781) (_size!3757 (_ BitVec 32)) (defaultValue!1941 Int)) )
))
(declare-datatypes ((CacheDown!1090 0))(
  ( (CacheDown!1091 (cache!2162 MutableMap!1781)) )
))
(declare-datatypes ((MutLongMap!1838 0))(
  ( (LongMap!1838 (underlying!3885 Cell!7233)) (MutLongMapExt!1837 (__x!11332 Int)) )
))
(declare-datatypes ((Cell!7239 0))(
  ( (Cell!7240 (v!23764 MutLongMap!1838)) )
))
(declare-datatypes ((Hashable!1782 0))(
  ( (HashableExt!1781 (__x!11333 Int)) )
))
(declare-datatypes ((MutableMap!1782 0))(
  ( (MutableMapExt!1781 (__x!11334 Int)) (HashMap!1782 (underlying!3886 Cell!7239) (hashF!3701 Hashable!1782) (_size!3758 (_ BitVec 32)) (defaultValue!1942 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!514 0))(
  ( (CacheFurthestNullable!515 (cache!2163 MutableMap!1782) (totalInput!2488 BalanceConc!11100)) )
))
(declare-datatypes ((tuple4!914 0))(
  ( (tuple4!915 (_1!9616 tuple2!16472) (_2!9616 CacheUp!1084) (_3!1379 CacheDown!1090) (_4!457 CacheFurthestNullable!514)) )
))
(declare-fun lt!540108 () tuple4!914)

(declare-datatypes ((Unit!26124 0))(
  ( (Unit!26125) )
))
(declare-fun lt!540113 () Unit!26124)

(declare-fun lemmaEqSameImage!156 (TokenValueInjection!5762 BalanceConc!11100 BalanceConc!11100) Unit!26124)

(assert (=> b!1559188 (= lt!540113 (lemmaEqSameImage!156 (transformation!2961 rule!240) (_1!9615 (_1!9616 lt!540108)) lt!540104))))

(declare-fun b!1559189 () Bool)

(declare-fun e!1000911 () Bool)

(declare-datatypes ((Token!5498 0))(
  ( (Token!5499 (value!94025 TokenValue!3051) (rule!4748 Rule!5722) (size!13708 Int) (originalCharacters!3780 List!16964)) )
))
(declare-datatypes ((tuple2!16474 0))(
  ( (tuple2!16475 (_1!9617 Token!5498) (_2!9617 BalanceConc!11100)) )
))
(declare-fun lt!540096 () tuple2!16474)

(declare-datatypes ((tuple2!16476 0))(
  ( (tuple2!16477 (_1!9618 Token!5498) (_2!9618 List!16964)) )
))
(declare-fun lt!540110 () tuple2!16476)

(declare-fun list!6509 (BalanceConc!11100) List!16964)

(assert (=> b!1559189 (= e!1000911 (= (list!6509 (_2!9617 lt!540096)) (_2!9618 lt!540110)))))

(declare-fun b!1559190 () Bool)

(declare-fun res!695536 () Bool)

(assert (=> b!1559190 (=> res!695536 e!1000914)))

(declare-fun lt!540101 () List!16964)

(assert (=> b!1559190 (= res!695536 (not (= (list!6509 lt!540104) lt!540101)))))

(declare-fun b!1559191 () Bool)

(declare-fun e!1000906 () Bool)

(declare-fun e!1000910 () Bool)

(assert (=> b!1559191 (= e!1000906 e!1000910)))

(declare-fun e!1000915 () Bool)

(declare-fun tp!458123 () Bool)

(declare-fun cacheDown!768 () CacheDown!1090)

(declare-fun tp!458120 () Bool)

(declare-fun array_inv!2014 (array!6292) Bool)

(declare-fun array_inv!2015 (array!6296) Bool)

(assert (=> b!1559192 (= e!1000910 (and tp!458112 tp!458123 tp!458120 (array_inv!2014 (_keys!2132 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) (array_inv!2015 (_values!2117 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) e!1000915))))

(declare-fun tp!458132 () Bool)

(declare-fun e!1000901 () Bool)

(declare-fun e!1000925 () Bool)

(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!514)

(declare-fun tp!458126 () Bool)

(declare-fun array_inv!2016 (array!6290) Bool)

(assert (=> b!1559193 (= e!1000901 (and tp!458131 tp!458126 tp!458132 (array_inv!2014 (_keys!2130 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) (array_inv!2016 (_values!2115 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) e!1000925))))

(declare-fun b!1559194 () Bool)

(declare-fun e!1000919 () Bool)

(declare-fun e!1000928 () Bool)

(assert (=> b!1559194 (= e!1000919 (not e!1000928))))

(declare-fun res!695544 () Bool)

(assert (=> b!1559194 (=> res!695544 e!1000928)))

(declare-fun semiInverseModEq!1121 (Int Int) Bool)

(assert (=> b!1559194 (= res!695544 (not (semiInverseModEq!1121 (toChars!4197 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240)))))))

(declare-fun lt!540105 () Unit!26124)

(declare-fun lemmaInv!435 (TokenValueInjection!5762) Unit!26124)

(assert (=> b!1559194 (= lt!540105 (lemmaInv!435 (transformation!2961 rule!240)))))

(declare-fun e!1000895 () Bool)

(assert (=> b!1559194 e!1000895))

(declare-fun res!695549 () Bool)

(assert (=> b!1559194 (=> res!695549 e!1000895)))

(declare-datatypes ((tuple2!16478 0))(
  ( (tuple2!16479 (_1!9619 List!16964) (_2!9619 List!16964)) )
))
(declare-fun lt!540103 () tuple2!16478)

(declare-fun isEmpty!10148 (List!16964) Bool)

(assert (=> b!1559194 (= res!695549 (isEmpty!10148 (_1!9619 lt!540103)))))

(declare-fun lt!540100 () List!16964)

(declare-fun findLongestMatchInner!341 (Regex!4289 List!16964 Int List!16964 List!16964 Int) tuple2!16478)

(declare-fun size!13709 (List!16964) Int)

(assert (=> b!1559194 (= lt!540103 (findLongestMatchInner!341 (regex!2961 rule!240) Nil!16896 (size!13709 Nil!16896) lt!540100 lt!540100 (size!13709 lt!540100)))))

(declare-fun lt!540107 () Unit!26124)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!325 (Regex!4289 List!16964) Unit!26124)

(assert (=> b!1559194 (= lt!540107 (longestMatchIsAcceptedByMatchOrIsEmpty!325 (regex!2961 rule!240) lt!540100))))

(declare-fun mapNonEmpty!8541 () Bool)

(declare-fun mapRes!8543 () Bool)

(declare-fun tp!458121 () Bool)

(declare-fun tp!458119 () Bool)

(assert (=> mapNonEmpty!8541 (= mapRes!8543 (and tp!458121 tp!458119))))

(declare-fun mapValue!8543 () List!16968)

(declare-fun mapKey!8543 () (_ BitVec 32))

(declare-fun mapRest!8542 () (Array (_ BitVec 32) List!16968))

(assert (=> mapNonEmpty!8541 (= (arr!2803 (_values!2117 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) (store mapRest!8542 mapKey!8543 mapValue!8543))))

(declare-fun b!1559196 () Bool)

(declare-fun e!1000918 () Bool)

(assert (=> b!1559196 (= e!1000918 e!1000906)))

(declare-fun b!1559197 () Bool)

(declare-fun e!1000907 () Bool)

(declare-fun input!1676 () BalanceConc!11100)

(declare-fun tp!458128 () Bool)

(declare-fun inv!22188 (Conc!5579) Bool)

(assert (=> b!1559197 (= e!1000907 (and (inv!22188 (c!253037 input!1676)) tp!458128))))

(declare-fun b!1559198 () Bool)

(declare-fun e!1000924 () Bool)

(assert (=> b!1559198 (= e!1000924 e!1000911)))

(declare-fun res!695548 () Bool)

(assert (=> b!1559198 (=> res!695548 e!1000911)))

(assert (=> b!1559198 (= res!695548 (not (= (_1!9617 lt!540096) (_1!9618 lt!540110))))))

(declare-datatypes ((Option!3057 0))(
  ( (None!3056) (Some!3056 (v!23765 tuple2!16474)) )
))
(declare-fun lt!540099 () Option!3057)

(declare-fun get!4866 (Option!3057) tuple2!16474)

(assert (=> b!1559198 (= lt!540096 (get!4866 lt!540099))))

(declare-fun mapNonEmpty!8542 () Bool)

(declare-fun mapRes!8541 () Bool)

(declare-fun tp!458134 () Bool)

(declare-fun tp!458115 () Bool)

(assert (=> mapNonEmpty!8542 (= mapRes!8541 (and tp!458134 tp!458115))))

(declare-fun cacheUp!755 () CacheUp!1084)

(declare-fun mapRest!8541 () (Array (_ BitVec 32) List!16967))

(declare-fun mapValue!8542 () List!16967)

(declare-fun mapKey!8541 () (_ BitVec 32))

(assert (=> mapNonEmpty!8542 (= (arr!2802 (_values!2116 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) (store mapRest!8541 mapKey!8541 mapValue!8542))))

(declare-fun e!1000909 () Bool)

(declare-fun e!1000912 () Bool)

(assert (=> b!1559199 (= e!1000909 (and e!1000912 tp!458114))))

(declare-fun b!1559200 () Bool)

(declare-fun res!695542 () Bool)

(declare-fun e!1000899 () Bool)

(assert (=> b!1559200 (=> (not res!695542) (not e!1000899))))

(declare-fun valid!1472 (CacheDown!1090) Bool)

(assert (=> b!1559200 (= res!695542 (valid!1472 cacheDown!768))))

(declare-fun b!1559201 () Bool)

(declare-fun res!695537 () Bool)

(assert (=> b!1559201 (=> (not res!695537) (not e!1000899))))

(declare-fun valid!1473 (CacheUp!1084) Bool)

(assert (=> b!1559201 (= res!695537 (valid!1473 cacheUp!755))))

(declare-fun e!1000922 () Bool)

(assert (=> b!1559202 (= e!1000922 (and tp!458124 tp!458122))))

(declare-fun b!1559203 () Bool)

(declare-fun e!1000916 () Bool)

(declare-fun e!1000908 () Bool)

(assert (=> b!1559203 (= e!1000916 e!1000908)))

(declare-fun b!1559204 () Bool)

(declare-fun e!1000904 () Bool)

(declare-fun e!1000927 () Bool)

(assert (=> b!1559204 (= e!1000904 e!1000927)))

(declare-fun e!1000923 () Bool)

(declare-fun e!1000900 () Bool)

(declare-fun b!1559205 () Bool)

(declare-fun inv!22189 (BalanceConc!11100) Bool)

(assert (=> b!1559205 (= e!1000923 (and e!1000909 (inv!22189 (totalInput!2488 cacheFurthestNullable!103)) e!1000900))))

(declare-fun b!1559206 () Bool)

(declare-fun e!1000898 () Bool)

(assert (=> b!1559206 (= e!1000898 e!1000904)))

(declare-fun b!1559207 () Bool)

(declare-fun e!1000905 () Bool)

(declare-fun e!1000929 () Bool)

(assert (=> b!1559207 (= e!1000905 e!1000929)))

(declare-fun mapNonEmpty!8543 () Bool)

(declare-fun mapRes!8542 () Bool)

(declare-fun tp!458111 () Bool)

(declare-fun tp!458136 () Bool)

(assert (=> mapNonEmpty!8543 (= mapRes!8542 (and tp!458111 tp!458136))))

(declare-fun mapValue!8541 () List!16966)

(declare-fun mapKey!8542 () (_ BitVec 32))

(declare-fun mapRest!8543 () (Array (_ BitVec 32) List!16966))

(assert (=> mapNonEmpty!8543 (= (arr!2800 (_values!2115 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) (store mapRest!8543 mapKey!8542 mapValue!8541))))

(declare-fun b!1559208 () Bool)

(declare-fun res!695543 () Bool)

(assert (=> b!1559208 (=> res!695543 e!1000914)))

(declare-fun lt!540102 () Bool)

(assert (=> b!1559208 (= res!695543 (not lt!540102))))

(declare-fun b!1559209 () Bool)

(assert (=> b!1559209 (= e!1000929 e!1000901)))

(declare-fun e!1000897 () Bool)

(declare-fun tp!458125 () Bool)

(declare-fun tp!458118 () Bool)

(declare-fun array_inv!2017 (array!6294) Bool)

(assert (=> b!1559210 (= e!1000927 (and tp!458110 tp!458118 tp!458125 (array_inv!2014 (_keys!2131 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) (array_inv!2017 (_values!2116 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) e!1000897))))

(declare-fun b!1559211 () Bool)

(declare-fun tp!458127 () Bool)

(assert (=> b!1559211 (= e!1000897 (and tp!458127 mapRes!8541))))

(declare-fun condMapEmpty!8543 () Bool)

(declare-fun mapDefault!8542 () List!16967)

(assert (=> b!1559211 (= condMapEmpty!8543 (= (arr!2802 (_values!2116 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16967)) mapDefault!8542)))))

(declare-fun b!1559212 () Bool)

(declare-fun e!1000902 () Bool)

(declare-fun lt!540095 () MutLongMap!1836)

(get-info :version)

(assert (=> b!1559212 (= e!1000902 (and e!1000898 ((_ is LongMap!1836) lt!540095)))))

(assert (=> b!1559212 (= lt!540095 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))

(declare-fun b!1559213 () Bool)

(assert (=> b!1559213 (= e!1000926 e!1000924)))

(declare-fun res!695539 () Bool)

(assert (=> b!1559213 (=> res!695539 e!1000924)))

(declare-fun lt!540094 () Token!5498)

(declare-fun lt!540112 () Int)

(assert (=> b!1559213 (= res!695539 (or (not (= (value!94025 (_1!9618 lt!540110)) lt!540114)) (not (= (rule!4748 (_1!9618 lt!540110)) rule!240)) (not (= (size!13708 (_1!9618 lt!540110)) lt!540112)) (not (= (originalCharacters!3780 (_1!9618 lt!540110)) lt!540101)) (not (= lt!540094 (_1!9618 lt!540110)))))))

(declare-datatypes ((Option!3058 0))(
  ( (None!3057) (Some!3057 (v!23766 tuple2!16476)) )
))
(declare-fun lt!540097 () Option!3058)

(declare-fun get!4867 (Option!3058) tuple2!16476)

(assert (=> b!1559213 (= lt!540110 (get!4867 lt!540097))))

(declare-fun b!1559214 () Bool)

(declare-fun res!695538 () Bool)

(declare-fun e!1000931 () Bool)

(assert (=> b!1559214 (=> (not res!695538) (not e!1000931))))

(declare-fun totalInput!568 () BalanceConc!11100)

(assert (=> b!1559214 (= res!695538 (= (totalInput!2488 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1559215 () Bool)

(declare-fun tp!458133 () Bool)

(assert (=> b!1559215 (= e!1000900 (and (inv!22188 (c!253037 (totalInput!2488 cacheFurthestNullable!103))) tp!458133))))

(assert (=> b!1559216 (= e!1000908 (and e!1000902 tp!458113))))

(declare-fun b!1559217 () Bool)

(assert (=> b!1559217 (= e!1000899 e!1000931)))

(declare-fun res!695533 () Bool)

(assert (=> b!1559217 (=> (not res!695533) (not e!1000931))))

(declare-fun isSuffix!383 (List!16964 List!16964) Bool)

(assert (=> b!1559217 (= res!695533 (isSuffix!383 lt!540100 (list!6509 totalInput!568)))))

(assert (=> b!1559217 (= lt!540100 (list!6509 input!1676))))

(declare-fun b!1559218 () Bool)

(declare-fun matchR!1886 (Regex!4289 List!16964) Bool)

(assert (=> b!1559218 (= e!1000895 (matchR!1886 (regex!2961 rule!240) (_1!9619 lt!540103)))))

(declare-fun b!1559219 () Bool)

(declare-fun tp!458117 () Bool)

(declare-fun e!1000913 () Bool)

(declare-fun inv!22187 (String!19543) Bool)

(declare-fun inv!22190 (TokenValueInjection!5762) Bool)

(assert (=> b!1559219 (= e!1000913 (and tp!458117 (inv!22187 (tag!3225 rule!240)) (inv!22190 (transformation!2961 rule!240)) e!1000922))))

(declare-fun b!1559220 () Bool)

(assert (=> b!1559220 (= e!1000931 e!1000919)))

(declare-fun res!695546 () Bool)

(assert (=> b!1559220 (=> (not res!695546) (not e!1000919))))

(declare-fun isEmpty!10149 (BalanceConc!11100) Bool)

(assert (=> b!1559220 (= res!695546 (not (isEmpty!10149 (_1!9615 (_1!9616 lt!540108)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!58 (Regex!4289 BalanceConc!11100 BalanceConc!11100 CacheUp!1084 CacheDown!1090 CacheFurthestNullable!514) tuple4!914)

(assert (=> b!1559220 (= lt!540108 (findLongestMatchWithZipperSequenceV3Mem!58 (regex!2961 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1559221 () Bool)

(assert (=> b!1559221 (= e!1000928 e!1000914)))

(declare-fun res!695545 () Bool)

(assert (=> b!1559221 (=> res!695545 e!1000914)))

(declare-fun isDefined!2457 (Option!3058) Bool)

(assert (=> b!1559221 (= res!695545 (not (= lt!540102 (isDefined!2457 lt!540097))))))

(declare-fun isDefined!2458 (Option!3057) Bool)

(assert (=> b!1559221 (= lt!540102 (isDefined!2458 lt!540099))))

(declare-datatypes ((LexerInterface!2595 0))(
  ( (LexerInterfaceExt!2592 (__x!11335 Int)) (Lexer!2593) )
))
(declare-fun thiss!16438 () LexerInterface!2595)

(declare-fun maxPrefixOneRule!712 (LexerInterface!2595 Rule!5722 List!16964) Option!3058)

(assert (=> b!1559221 (= lt!540097 (maxPrefixOneRule!712 thiss!16438 rule!240 lt!540100))))

(assert (=> b!1559221 (= lt!540099 (Some!3056 (tuple2!16475 lt!540094 (_2!9615 (_1!9616 lt!540108)))))))

(assert (=> b!1559221 (= lt!540094 (Token!5499 lt!540114 rule!240 lt!540112 lt!540101))))

(declare-fun size!13710 (BalanceConc!11100) Int)

(assert (=> b!1559221 (= lt!540112 (size!13710 (_1!9615 (_1!9616 lt!540108))))))

(assert (=> b!1559221 (= lt!540114 (apply!4119 (transformation!2961 rule!240) (_1!9615 (_1!9616 lt!540108))))))

(declare-fun lt!540098 () Unit!26124)

(declare-fun ForallOf!220 (Int BalanceConc!11100) Unit!26124)

(assert (=> b!1559221 (= lt!540098 (ForallOf!220 lambda!65995 lt!540104))))

(declare-fun seqFromList!1783 (List!16964) BalanceConc!11100)

(assert (=> b!1559221 (= lt!540104 (seqFromList!1783 lt!540101))))

(assert (=> b!1559221 (= lt!540101 (list!6509 (_1!9615 (_1!9616 lt!540108))))))

(declare-fun lt!540106 () Unit!26124)

(assert (=> b!1559221 (= lt!540106 (ForallOf!220 lambda!65995 (_1!9615 (_1!9616 lt!540108))))))

(declare-fun mapIsEmpty!8541 () Bool)

(assert (=> mapIsEmpty!8541 mapRes!8541))

(declare-fun b!1559222 () Bool)

(declare-fun lt!540111 () MutLongMap!1838)

(assert (=> b!1559222 (= e!1000912 (and e!1000905 ((_ is LongMap!1838) lt!540111)))))

(assert (=> b!1559222 (= lt!540111 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))

(declare-fun b!1559223 () Bool)

(declare-fun tp!458130 () Bool)

(assert (=> b!1559223 (= e!1000925 (and tp!458130 mapRes!8542))))

(declare-fun condMapEmpty!8542 () Bool)

(declare-fun mapDefault!8543 () List!16966)

(assert (=> b!1559223 (= condMapEmpty!8542 (= (arr!2800 (_values!2115 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16966)) mapDefault!8543)))))

(declare-fun b!1559224 () Bool)

(declare-fun res!695535 () Bool)

(assert (=> b!1559224 (=> (not res!695535) (not e!1000899))))

(declare-fun valid!1474 (CacheFurthestNullable!514) Bool)

(assert (=> b!1559224 (= res!695535 (valid!1474 cacheFurthestNullable!103))))

(declare-fun b!1559225 () Bool)

(declare-fun e!1000894 () Bool)

(declare-fun tp!458135 () Bool)

(assert (=> b!1559225 (= e!1000894 (and (inv!22188 (c!253037 totalInput!568)) tp!458135))))

(declare-fun b!1559195 () Bool)

(declare-fun res!695541 () Bool)

(assert (=> b!1559195 (=> (not res!695541) (not e!1000899))))

(declare-fun ruleValid!692 (LexerInterface!2595 Rule!5722) Bool)

(assert (=> b!1559195 (= res!695541 (ruleValid!692 thiss!16438 rule!240))))

(declare-fun res!695547 () Bool)

(assert (=> start!144674 (=> (not res!695547) (not e!1000899))))

(assert (=> start!144674 (= res!695547 ((_ is Lexer!2593) thiss!16438))))

(assert (=> start!144674 e!1000899))

(assert (=> start!144674 (and (inv!22189 totalInput!568) e!1000894)))

(declare-fun inv!22191 (CacheUp!1084) Bool)

(assert (=> start!144674 (and (inv!22191 cacheUp!755) e!1000916)))

(declare-fun inv!22192 (CacheFurthestNullable!514) Bool)

(assert (=> start!144674 (and (inv!22192 cacheFurthestNullable!103) e!1000923)))

(assert (=> start!144674 (and (inv!22189 input!1676) e!1000907)))

(assert (=> start!144674 e!1000913))

(declare-fun e!1000917 () Bool)

(declare-fun inv!22193 (CacheDown!1090) Bool)

(assert (=> start!144674 (and (inv!22193 cacheDown!768) e!1000917)))

(assert (=> start!144674 true))

(declare-fun mapIsEmpty!8542 () Bool)

(assert (=> mapIsEmpty!8542 mapRes!8542))

(declare-fun b!1559226 () Bool)

(assert (=> b!1559226 (= e!1000917 e!1000920)))

(declare-fun res!695540 () Bool)

(assert (=> b!1559227 (=> res!695540 e!1000928)))

(declare-fun Forall!617 (Int) Bool)

(assert (=> b!1559227 (= res!695540 (not (Forall!617 lambda!65995)))))

(declare-fun b!1559228 () Bool)

(declare-fun lt!540109 () MutLongMap!1837)

(assert (=> b!1559228 (= e!1000930 (and e!1000918 ((_ is LongMap!1837) lt!540109)))))

(assert (=> b!1559228 (= lt!540109 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))

(declare-fun mapIsEmpty!8543 () Bool)

(assert (=> mapIsEmpty!8543 mapRes!8543))

(declare-fun b!1559229 () Bool)

(declare-fun tp!458116 () Bool)

(assert (=> b!1559229 (= e!1000915 (and tp!458116 mapRes!8543))))

(declare-fun condMapEmpty!8541 () Bool)

(declare-fun mapDefault!8541 () List!16968)

(assert (=> b!1559229 (= condMapEmpty!8541 (= (arr!2803 (_values!2117 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16968)) mapDefault!8541)))))

(assert (= (and start!144674 res!695547) b!1559195))

(assert (= (and b!1559195 res!695541) b!1559201))

(assert (= (and b!1559201 res!695537) b!1559200))

(assert (= (and b!1559200 res!695542) b!1559224))

(assert (= (and b!1559224 res!695535) b!1559217))

(assert (= (and b!1559217 res!695533) b!1559214))

(assert (= (and b!1559214 res!695538) b!1559220))

(assert (= (and b!1559220 res!695546) b!1559194))

(assert (= (and b!1559194 (not res!695549)) b!1559218))

(assert (= (and b!1559194 (not res!695544)) b!1559227))

(assert (= (and b!1559227 (not res!695540)) b!1559221))

(assert (= (and b!1559221 (not res!695545)) b!1559208))

(assert (= (and b!1559208 (not res!695543)) b!1559190))

(assert (= (and b!1559190 (not res!695536)) b!1559188))

(assert (= (and b!1559188 (not res!695534)) b!1559213))

(assert (= (and b!1559213 (not res!695539)) b!1559198))

(assert (= (and b!1559198 (not res!695548)) b!1559189))

(assert (= start!144674 b!1559225))

(assert (= (and b!1559211 condMapEmpty!8543) mapIsEmpty!8541))

(assert (= (and b!1559211 (not condMapEmpty!8543)) mapNonEmpty!8542))

(assert (= b!1559210 b!1559211))

(assert (= b!1559204 b!1559210))

(assert (= b!1559206 b!1559204))

(assert (= (and b!1559212 ((_ is LongMap!1836) (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))) b!1559206))

(assert (= b!1559216 b!1559212))

(assert (= (and b!1559203 ((_ is HashMap!1780) (cache!2161 cacheUp!755))) b!1559216))

(assert (= start!144674 b!1559203))

(assert (= (and b!1559223 condMapEmpty!8542) mapIsEmpty!8542))

(assert (= (and b!1559223 (not condMapEmpty!8542)) mapNonEmpty!8543))

(assert (= b!1559193 b!1559223))

(assert (= b!1559209 b!1559193))

(assert (= b!1559207 b!1559209))

(assert (= (and b!1559222 ((_ is LongMap!1838) (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))) b!1559207))

(assert (= b!1559199 b!1559222))

(assert (= (and b!1559205 ((_ is HashMap!1782) (cache!2163 cacheFurthestNullable!103))) b!1559199))

(assert (= b!1559205 b!1559215))

(assert (= start!144674 b!1559205))

(assert (= start!144674 b!1559197))

(assert (= b!1559219 b!1559202))

(assert (= start!144674 b!1559219))

(assert (= (and b!1559229 condMapEmpty!8541) mapIsEmpty!8543))

(assert (= (and b!1559229 (not condMapEmpty!8541)) mapNonEmpty!8541))

(assert (= b!1559192 b!1559229))

(assert (= b!1559191 b!1559192))

(assert (= b!1559196 b!1559191))

(assert (= (and b!1559228 ((_ is LongMap!1837) (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))) b!1559196))

(assert (= b!1559187 b!1559228))

(assert (= (and b!1559226 ((_ is HashMap!1781) (cache!2162 cacheDown!768))) b!1559187))

(assert (= start!144674 b!1559226))

(declare-fun m!1831060 () Bool)

(assert (=> b!1559194 m!1831060))

(declare-fun m!1831062 () Bool)

(assert (=> b!1559194 m!1831062))

(declare-fun m!1831064 () Bool)

(assert (=> b!1559194 m!1831064))

(declare-fun m!1831066 () Bool)

(assert (=> b!1559194 m!1831066))

(declare-fun m!1831068 () Bool)

(assert (=> b!1559194 m!1831068))

(declare-fun m!1831070 () Bool)

(assert (=> b!1559194 m!1831070))

(assert (=> b!1559194 m!1831066))

(assert (=> b!1559194 m!1831068))

(declare-fun m!1831072 () Bool)

(assert (=> b!1559194 m!1831072))

(declare-fun m!1831074 () Bool)

(assert (=> mapNonEmpty!8541 m!1831074))

(declare-fun m!1831076 () Bool)

(assert (=> b!1559215 m!1831076))

(declare-fun m!1831078 () Bool)

(assert (=> b!1559227 m!1831078))

(declare-fun m!1831080 () Bool)

(assert (=> b!1559188 m!1831080))

(declare-fun m!1831082 () Bool)

(assert (=> b!1559188 m!1831082))

(declare-fun m!1831084 () Bool)

(assert (=> b!1559221 m!1831084))

(declare-fun m!1831086 () Bool)

(assert (=> b!1559221 m!1831086))

(declare-fun m!1831088 () Bool)

(assert (=> b!1559221 m!1831088))

(declare-fun m!1831090 () Bool)

(assert (=> b!1559221 m!1831090))

(declare-fun m!1831092 () Bool)

(assert (=> b!1559221 m!1831092))

(declare-fun m!1831094 () Bool)

(assert (=> b!1559221 m!1831094))

(declare-fun m!1831096 () Bool)

(assert (=> b!1559221 m!1831096))

(declare-fun m!1831098 () Bool)

(assert (=> b!1559221 m!1831098))

(declare-fun m!1831100 () Bool)

(assert (=> b!1559221 m!1831100))

(declare-fun m!1831102 () Bool)

(assert (=> b!1559219 m!1831102))

(declare-fun m!1831104 () Bool)

(assert (=> b!1559219 m!1831104))

(declare-fun m!1831106 () Bool)

(assert (=> b!1559201 m!1831106))

(declare-fun m!1831108 () Bool)

(assert (=> b!1559224 m!1831108))

(declare-fun m!1831110 () Bool)

(assert (=> b!1559217 m!1831110))

(assert (=> b!1559217 m!1831110))

(declare-fun m!1831112 () Bool)

(assert (=> b!1559217 m!1831112))

(declare-fun m!1831114 () Bool)

(assert (=> b!1559217 m!1831114))

(declare-fun m!1831116 () Bool)

(assert (=> b!1559225 m!1831116))

(declare-fun m!1831118 () Bool)

(assert (=> b!1559200 m!1831118))

(declare-fun m!1831120 () Bool)

(assert (=> b!1559195 m!1831120))

(declare-fun m!1831122 () Bool)

(assert (=> b!1559213 m!1831122))

(declare-fun m!1831124 () Bool)

(assert (=> b!1559192 m!1831124))

(declare-fun m!1831126 () Bool)

(assert (=> b!1559192 m!1831126))

(declare-fun m!1831128 () Bool)

(assert (=> mapNonEmpty!8543 m!1831128))

(declare-fun m!1831130 () Bool)

(assert (=> b!1559198 m!1831130))

(declare-fun m!1831132 () Bool)

(assert (=> b!1559205 m!1831132))

(declare-fun m!1831134 () Bool)

(assert (=> b!1559190 m!1831134))

(declare-fun m!1831136 () Bool)

(assert (=> b!1559193 m!1831136))

(declare-fun m!1831138 () Bool)

(assert (=> b!1559193 m!1831138))

(declare-fun m!1831140 () Bool)

(assert (=> b!1559197 m!1831140))

(declare-fun m!1831142 () Bool)

(assert (=> mapNonEmpty!8542 m!1831142))

(declare-fun m!1831144 () Bool)

(assert (=> b!1559189 m!1831144))

(declare-fun m!1831146 () Bool)

(assert (=> b!1559220 m!1831146))

(declare-fun m!1831148 () Bool)

(assert (=> b!1559220 m!1831148))

(declare-fun m!1831150 () Bool)

(assert (=> b!1559210 m!1831150))

(declare-fun m!1831152 () Bool)

(assert (=> b!1559210 m!1831152))

(declare-fun m!1831154 () Bool)

(assert (=> start!144674 m!1831154))

(declare-fun m!1831156 () Bool)

(assert (=> start!144674 m!1831156))

(declare-fun m!1831158 () Bool)

(assert (=> start!144674 m!1831158))

(declare-fun m!1831160 () Bool)

(assert (=> start!144674 m!1831160))

(declare-fun m!1831162 () Bool)

(assert (=> start!144674 m!1831162))

(declare-fun m!1831164 () Bool)

(assert (=> b!1559218 m!1831164))

(check-sat (not b!1559188) b_and!108829 (not b_next!42283) (not b_next!42279) (not b!1559190) (not mapNonEmpty!8543) (not b!1559225) (not b!1559193) (not b!1559195) (not mapNonEmpty!8541) (not b!1559200) b_and!108823 (not b!1559211) (not b!1559219) b_and!108833 (not b!1559220) (not b!1559198) (not b!1559227) (not b_next!42287) (not b!1559213) (not b_next!42285) (not b_next!42281) (not b!1559189) (not b!1559210) (not b!1559221) (not b!1559197) b_and!108831 (not b!1559201) (not b!1559224) (not b!1559215) (not b_next!42291) (not b!1559218) (not b_next!42289) (not b!1559192) b_and!108825 (not mapNonEmpty!8542) (not b!1559217) (not b!1559223) (not b!1559205) (not b!1559194) (not b!1559229) (not b_next!42293) b_and!108821 b_and!108827 b_and!108835 (not start!144674))
(check-sat b_and!108829 (not b_next!42283) (not b_next!42279) (not b_next!42281) b_and!108831 b_and!108825 (not b_next!42293) b_and!108823 b_and!108833 b_and!108835 (not b_next!42287) (not b_next!42285) (not b_next!42291) (not b_next!42289) b_and!108821 b_and!108827)
(get-model)

(declare-fun d!462030 () Bool)

(declare-fun res!695556 () Bool)

(declare-fun e!1000941 () Bool)

(assert (=> d!462030 (=> (not res!695556) (not e!1000941))))

(declare-fun validRegex!1717 (Regex!4289) Bool)

(assert (=> d!462030 (= res!695556 (validRegex!1717 (regex!2961 rule!240)))))

(assert (=> d!462030 (= (ruleValid!692 thiss!16438 rule!240) e!1000941)))

(declare-fun b!1559242 () Bool)

(declare-fun res!695557 () Bool)

(assert (=> b!1559242 (=> (not res!695557) (not e!1000941))))

(declare-fun nullable!1276 (Regex!4289) Bool)

(assert (=> b!1559242 (= res!695557 (not (nullable!1276 (regex!2961 rule!240))))))

(declare-fun b!1559243 () Bool)

(assert (=> b!1559243 (= e!1000941 (not (= (tag!3225 rule!240) (String!19544 ""))))))

(assert (= (and d!462030 res!695556) b!1559242))

(assert (= (and b!1559242 res!695557) b!1559243))

(declare-fun m!1831166 () Bool)

(assert (=> d!462030 m!1831166))

(declare-fun m!1831168 () Bool)

(assert (=> b!1559242 m!1831168))

(assert (=> b!1559195 d!462030))

(declare-fun d!462032 () Bool)

(assert (=> d!462032 (= (get!4867 lt!540097) (v!23766 lt!540097))))

(assert (=> b!1559213 d!462032))

(declare-fun d!462034 () Bool)

(declare-fun lt!540117 () Int)

(assert (=> d!462034 (>= lt!540117 0)))

(declare-fun e!1000944 () Int)

(assert (=> d!462034 (= lt!540117 e!1000944)))

(declare-fun c!253041 () Bool)

(assert (=> d!462034 (= c!253041 ((_ is Nil!16896) Nil!16896))))

(assert (=> d!462034 (= (size!13709 Nil!16896) lt!540117)))

(declare-fun b!1559248 () Bool)

(assert (=> b!1559248 (= e!1000944 0)))

(declare-fun b!1559249 () Bool)

(assert (=> b!1559249 (= e!1000944 (+ 1 (size!13709 (t!141475 Nil!16896))))))

(assert (= (and d!462034 c!253041) b!1559248))

(assert (= (and d!462034 (not c!253041)) b!1559249))

(declare-fun m!1831170 () Bool)

(assert (=> b!1559249 m!1831170))

(assert (=> b!1559194 d!462034))

(declare-fun d!462036 () Bool)

(declare-fun lt!540118 () Int)

(assert (=> d!462036 (>= lt!540118 0)))

(declare-fun e!1000945 () Int)

(assert (=> d!462036 (= lt!540118 e!1000945)))

(declare-fun c!253042 () Bool)

(assert (=> d!462036 (= c!253042 ((_ is Nil!16896) lt!540100))))

(assert (=> d!462036 (= (size!13709 lt!540100) lt!540118)))

(declare-fun b!1559250 () Bool)

(assert (=> b!1559250 (= e!1000945 0)))

(declare-fun b!1559251 () Bool)

(assert (=> b!1559251 (= e!1000945 (+ 1 (size!13709 (t!141475 lt!540100))))))

(assert (= (and d!462036 c!253042) b!1559250))

(assert (= (and d!462036 (not c!253042)) b!1559251))

(declare-fun m!1831172 () Bool)

(assert (=> b!1559251 m!1831172))

(assert (=> b!1559194 d!462036))

(declare-fun d!462038 () Bool)

(assert (=> d!462038 (= (isEmpty!10148 (_1!9619 lt!540103)) ((_ is Nil!16896) (_1!9619 lt!540103)))))

(assert (=> b!1559194 d!462038))

(declare-fun d!462040 () Bool)

(declare-fun e!1000948 () Bool)

(assert (=> d!462040 e!1000948))

(declare-fun res!695560 () Bool)

(assert (=> d!462040 (=> res!695560 e!1000948)))

(assert (=> d!462040 (= res!695560 (isEmpty!10148 (_1!9619 (findLongestMatchInner!341 (regex!2961 rule!240) Nil!16896 (size!13709 Nil!16896) lt!540100 lt!540100 (size!13709 lt!540100)))))))

(declare-fun lt!540121 () Unit!26124)

(declare-fun choose!9305 (Regex!4289 List!16964) Unit!26124)

(assert (=> d!462040 (= lt!540121 (choose!9305 (regex!2961 rule!240) lt!540100))))

(assert (=> d!462040 (validRegex!1717 (regex!2961 rule!240))))

(assert (=> d!462040 (= (longestMatchIsAcceptedByMatchOrIsEmpty!325 (regex!2961 rule!240) lt!540100) lt!540121)))

(declare-fun b!1559254 () Bool)

(assert (=> b!1559254 (= e!1000948 (matchR!1886 (regex!2961 rule!240) (_1!9619 (findLongestMatchInner!341 (regex!2961 rule!240) Nil!16896 (size!13709 Nil!16896) lt!540100 lt!540100 (size!13709 lt!540100)))))))

(assert (= (and d!462040 (not res!695560)) b!1559254))

(declare-fun m!1831174 () Bool)

(assert (=> d!462040 m!1831174))

(assert (=> d!462040 m!1831166))

(assert (=> d!462040 m!1831066))

(assert (=> d!462040 m!1831068))

(assert (=> d!462040 m!1831072))

(assert (=> d!462040 m!1831068))

(assert (=> d!462040 m!1831066))

(declare-fun m!1831176 () Bool)

(assert (=> d!462040 m!1831176))

(assert (=> b!1559254 m!1831066))

(assert (=> b!1559254 m!1831068))

(assert (=> b!1559254 m!1831066))

(assert (=> b!1559254 m!1831068))

(assert (=> b!1559254 m!1831072))

(declare-fun m!1831178 () Bool)

(assert (=> b!1559254 m!1831178))

(assert (=> b!1559194 d!462040))

(declare-fun bs!388825 () Bool)

(declare-fun d!462042 () Bool)

(assert (= bs!388825 (and d!462042 b!1559227)))

(declare-fun lambda!65998 () Int)

(assert (=> bs!388825 (= lambda!65998 lambda!65995)))

(assert (=> d!462042 true))

(assert (=> d!462042 (< (dynLambda!7519 order!9995 (toChars!4197 (transformation!2961 rule!240))) (dynLambda!7518 order!9993 lambda!65998))))

(assert (=> d!462042 true))

(assert (=> d!462042 (< (dynLambda!7517 order!9991 (toValue!4338 (transformation!2961 rule!240))) (dynLambda!7518 order!9993 lambda!65998))))

(assert (=> d!462042 (= (semiInverseModEq!1121 (toChars!4197 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))) (Forall!617 lambda!65998))))

(declare-fun bs!388826 () Bool)

(assert (= bs!388826 d!462042))

(declare-fun m!1831180 () Bool)

(assert (=> bs!388826 m!1831180))

(assert (=> b!1559194 d!462042))

(declare-fun bm!102183 () Bool)

(declare-fun lt!540202 () List!16964)

(declare-fun call!102191 () Regex!4289)

(declare-fun call!102195 () List!16964)

(declare-fun call!102193 () tuple2!16478)

(assert (=> bm!102183 (= call!102193 (findLongestMatchInner!341 call!102191 lt!540202 (+ (size!13709 Nil!16896) 1) call!102195 lt!540100 (size!13709 lt!540100)))))

(declare-fun b!1559287 () Bool)

(declare-fun e!1000969 () tuple2!16478)

(declare-fun e!1000965 () tuple2!16478)

(assert (=> b!1559287 (= e!1000969 e!1000965)))

(declare-fun lt!540196 () tuple2!16478)

(assert (=> b!1559287 (= lt!540196 call!102193)))

(declare-fun c!253059 () Bool)

(assert (=> b!1559287 (= c!253059 (isEmpty!10148 (_1!9619 lt!540196)))))

(declare-fun bm!102184 () Bool)

(declare-fun tail!2214 (List!16964) List!16964)

(assert (=> bm!102184 (= call!102195 (tail!2214 lt!540100))))

(declare-fun b!1559288 () Bool)

(declare-fun e!1000967 () tuple2!16478)

(assert (=> b!1559288 (= e!1000967 (tuple2!16479 Nil!16896 lt!540100))))

(declare-fun bm!102185 () Bool)

(declare-fun call!102192 () Unit!26124)

(declare-fun lemmaIsPrefixSameLengthThenSameList!130 (List!16964 List!16964 List!16964) Unit!26124)

(assert (=> bm!102185 (= call!102192 (lemmaIsPrefixSameLengthThenSameList!130 lt!540100 Nil!16896 lt!540100))))

(declare-fun b!1559289 () Bool)

(declare-fun e!1000968 () tuple2!16478)

(declare-fun e!1000966 () tuple2!16478)

(assert (=> b!1559289 (= e!1000968 e!1000966)))

(declare-fun c!253057 () Bool)

(assert (=> b!1559289 (= c!253057 (= (size!13709 Nil!16896) (size!13709 lt!540100)))))

(declare-fun b!1559290 () Bool)

(assert (=> b!1559290 (= e!1000967 (tuple2!16479 Nil!16896 Nil!16896))))

(declare-fun d!462044 () Bool)

(declare-fun e!1000970 () Bool)

(assert (=> d!462044 e!1000970))

(declare-fun res!695566 () Bool)

(assert (=> d!462044 (=> (not res!695566) (not e!1000970))))

(declare-fun lt!540203 () tuple2!16478)

(declare-fun ++!4420 (List!16964 List!16964) List!16964)

(assert (=> d!462044 (= res!695566 (= (++!4420 (_1!9619 lt!540203) (_2!9619 lt!540203)) lt!540100))))

(assert (=> d!462044 (= lt!540203 e!1000968)))

(declare-fun c!253058 () Bool)

(declare-fun lostCause!394 (Regex!4289) Bool)

(assert (=> d!462044 (= c!253058 (lostCause!394 (regex!2961 rule!240)))))

(declare-fun lt!540198 () Unit!26124)

(declare-fun Unit!26126 () Unit!26124)

(assert (=> d!462044 (= lt!540198 Unit!26126)))

(declare-fun getSuffix!676 (List!16964 List!16964) List!16964)

(assert (=> d!462044 (= (getSuffix!676 lt!540100 Nil!16896) lt!540100)))

(declare-fun lt!540179 () Unit!26124)

(declare-fun lt!540189 () Unit!26124)

(assert (=> d!462044 (= lt!540179 lt!540189)))

(declare-fun lt!540197 () List!16964)

(assert (=> d!462044 (= lt!540100 lt!540197)))

(declare-fun lemmaSamePrefixThenSameSuffix!628 (List!16964 List!16964 List!16964 List!16964 List!16964) Unit!26124)

(assert (=> d!462044 (= lt!540189 (lemmaSamePrefixThenSameSuffix!628 Nil!16896 lt!540100 Nil!16896 lt!540197 lt!540100))))

(assert (=> d!462044 (= lt!540197 (getSuffix!676 lt!540100 Nil!16896))))

(declare-fun lt!540200 () Unit!26124)

(declare-fun lt!540205 () Unit!26124)

(assert (=> d!462044 (= lt!540200 lt!540205)))

(declare-fun isPrefix!1266 (List!16964 List!16964) Bool)

(assert (=> d!462044 (isPrefix!1266 Nil!16896 (++!4420 Nil!16896 lt!540100))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!791 (List!16964 List!16964) Unit!26124)

(assert (=> d!462044 (= lt!540205 (lemmaConcatTwoListThenFirstIsPrefix!791 Nil!16896 lt!540100))))

(assert (=> d!462044 (validRegex!1717 (regex!2961 rule!240))))

(assert (=> d!462044 (= (findLongestMatchInner!341 (regex!2961 rule!240) Nil!16896 (size!13709 Nil!16896) lt!540100 lt!540100 (size!13709 lt!540100)) lt!540203)))

(declare-fun bm!102186 () Bool)

(declare-fun call!102190 () C!8756)

(declare-fun head!3119 (List!16964) C!8756)

(assert (=> bm!102186 (= call!102190 (head!3119 lt!540100))))

(declare-fun b!1559291 () Bool)

(declare-fun c!253055 () Bool)

(declare-fun call!102194 () Bool)

(assert (=> b!1559291 (= c!253055 call!102194)))

(declare-fun lt!540204 () Unit!26124)

(declare-fun lt!540182 () Unit!26124)

(assert (=> b!1559291 (= lt!540204 lt!540182)))

(declare-fun lt!540186 () C!8756)

(declare-fun lt!540187 () List!16964)

(assert (=> b!1559291 (= (++!4420 (++!4420 Nil!16896 (Cons!16896 lt!540186 Nil!16896)) lt!540187) lt!540100)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!445 (List!16964 C!8756 List!16964 List!16964) Unit!26124)

(assert (=> b!1559291 (= lt!540182 (lemmaMoveElementToOtherListKeepsConcatEq!445 Nil!16896 lt!540186 lt!540187 lt!540100))))

(assert (=> b!1559291 (= lt!540187 (tail!2214 lt!540100))))

(assert (=> b!1559291 (= lt!540186 (head!3119 lt!540100))))

(declare-fun lt!540180 () Unit!26124)

(declare-fun lt!540183 () Unit!26124)

(assert (=> b!1559291 (= lt!540180 lt!540183)))

(assert (=> b!1559291 (isPrefix!1266 (++!4420 Nil!16896 (Cons!16896 (head!3119 (getSuffix!676 lt!540100 Nil!16896)) Nil!16896)) lt!540100)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!119 (List!16964 List!16964) Unit!26124)

(assert (=> b!1559291 (= lt!540183 (lemmaAddHeadSuffixToPrefixStillPrefix!119 Nil!16896 lt!540100))))

(declare-fun lt!540193 () Unit!26124)

(declare-fun lt!540191 () Unit!26124)

(assert (=> b!1559291 (= lt!540193 lt!540191)))

(assert (=> b!1559291 (= lt!540191 (lemmaAddHeadSuffixToPrefixStillPrefix!119 Nil!16896 lt!540100))))

(assert (=> b!1559291 (= lt!540202 (++!4420 Nil!16896 (Cons!16896 (head!3119 lt!540100) Nil!16896)))))

(declare-fun lt!540184 () Unit!26124)

(declare-fun e!1000971 () Unit!26124)

(assert (=> b!1559291 (= lt!540184 e!1000971)))

(declare-fun c!253056 () Bool)

(assert (=> b!1559291 (= c!253056 (= (size!13709 Nil!16896) (size!13709 lt!540100)))))

(declare-fun lt!540181 () Unit!26124)

(declare-fun lt!540195 () Unit!26124)

(assert (=> b!1559291 (= lt!540181 lt!540195)))

(assert (=> b!1559291 (<= (size!13709 Nil!16896) (size!13709 lt!540100))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!120 (List!16964 List!16964) Unit!26124)

(assert (=> b!1559291 (= lt!540195 (lemmaIsPrefixThenSmallerEqSize!120 Nil!16896 lt!540100))))

(assert (=> b!1559291 (= e!1000966 e!1000969)))

(declare-fun b!1559292 () Bool)

(assert (=> b!1559292 (= e!1000968 (tuple2!16479 Nil!16896 lt!540100))))

(declare-fun b!1559293 () Bool)

(assert (=> b!1559293 (= e!1000965 lt!540196)))

(declare-fun b!1559294 () Bool)

(declare-fun e!1000972 () Bool)

(assert (=> b!1559294 (= e!1000972 (>= (size!13709 (_1!9619 lt!540203)) (size!13709 Nil!16896)))))

(declare-fun bm!102187 () Bool)

(assert (=> bm!102187 (= call!102194 (nullable!1276 (regex!2961 rule!240)))))

(declare-fun b!1559295 () Bool)

(declare-fun Unit!26127 () Unit!26124)

(assert (=> b!1559295 (= e!1000971 Unit!26127)))

(declare-fun lt!540178 () Unit!26124)

(declare-fun call!102189 () Unit!26124)

(assert (=> b!1559295 (= lt!540178 call!102189)))

(declare-fun call!102188 () Bool)

(assert (=> b!1559295 call!102188))

(declare-fun lt!540188 () Unit!26124)

(assert (=> b!1559295 (= lt!540188 lt!540178)))

(declare-fun lt!540199 () Unit!26124)

(assert (=> b!1559295 (= lt!540199 call!102192)))

(assert (=> b!1559295 (= lt!540100 Nil!16896)))

(declare-fun lt!540185 () Unit!26124)

(assert (=> b!1559295 (= lt!540185 lt!540199)))

(assert (=> b!1559295 false))

(declare-fun bm!102188 () Bool)

(assert (=> bm!102188 (= call!102188 (isPrefix!1266 lt!540100 lt!540100))))

(declare-fun b!1559296 () Bool)

(declare-fun Unit!26128 () Unit!26124)

(assert (=> b!1559296 (= e!1000971 Unit!26128)))

(declare-fun bm!102189 () Bool)

(declare-fun derivativeStep!1028 (Regex!4289 C!8756) Regex!4289)

(assert (=> bm!102189 (= call!102191 (derivativeStep!1028 (regex!2961 rule!240) call!102190))))

(declare-fun b!1559297 () Bool)

(declare-fun c!253060 () Bool)

(assert (=> b!1559297 (= c!253060 call!102194)))

(declare-fun lt!540192 () Unit!26124)

(declare-fun lt!540201 () Unit!26124)

(assert (=> b!1559297 (= lt!540192 lt!540201)))

(assert (=> b!1559297 (= lt!540100 Nil!16896)))

(assert (=> b!1559297 (= lt!540201 call!102192)))

(declare-fun lt!540194 () Unit!26124)

(declare-fun lt!540190 () Unit!26124)

(assert (=> b!1559297 (= lt!540194 lt!540190)))

(assert (=> b!1559297 call!102188))

(assert (=> b!1559297 (= lt!540190 call!102189)))

(assert (=> b!1559297 (= e!1000966 e!1000967)))

(declare-fun b!1559298 () Bool)

(assert (=> b!1559298 (= e!1000970 e!1000972)))

(declare-fun res!695565 () Bool)

(assert (=> b!1559298 (=> res!695565 e!1000972)))

(assert (=> b!1559298 (= res!695565 (isEmpty!10148 (_1!9619 lt!540203)))))

(declare-fun b!1559299 () Bool)

(assert (=> b!1559299 (= e!1000965 (tuple2!16479 Nil!16896 lt!540100))))

(declare-fun bm!102190 () Bool)

(declare-fun lemmaIsPrefixRefl!896 (List!16964 List!16964) Unit!26124)

(assert (=> bm!102190 (= call!102189 (lemmaIsPrefixRefl!896 lt!540100 lt!540100))))

(declare-fun b!1559300 () Bool)

(assert (=> b!1559300 (= e!1000969 call!102193)))

(assert (= (and d!462044 c!253058) b!1559292))

(assert (= (and d!462044 (not c!253058)) b!1559289))

(assert (= (and b!1559289 c!253057) b!1559297))

(assert (= (and b!1559289 (not c!253057)) b!1559291))

(assert (= (and b!1559297 c!253060) b!1559290))

(assert (= (and b!1559297 (not c!253060)) b!1559288))

(assert (= (and b!1559291 c!253056) b!1559295))

(assert (= (and b!1559291 (not c!253056)) b!1559296))

(assert (= (and b!1559291 c!253055) b!1559287))

(assert (= (and b!1559291 (not c!253055)) b!1559300))

(assert (= (and b!1559287 c!253059) b!1559299))

(assert (= (and b!1559287 (not c!253059)) b!1559293))

(assert (= (or b!1559287 b!1559300) bm!102184))

(assert (= (or b!1559287 b!1559300) bm!102186))

(assert (= (or b!1559287 b!1559300) bm!102189))

(assert (= (or b!1559287 b!1559300) bm!102183))

(assert (= (or b!1559297 b!1559295) bm!102185))

(assert (= (or b!1559297 b!1559295) bm!102190))

(assert (= (or b!1559297 b!1559291) bm!102187))

(assert (= (or b!1559297 b!1559295) bm!102188))

(assert (= (and d!462044 res!695566) b!1559298))

(assert (= (and b!1559298 (not res!695565)) b!1559294))

(declare-fun m!1831182 () Bool)

(assert (=> bm!102189 m!1831182))

(declare-fun m!1831184 () Bool)

(assert (=> b!1559294 m!1831184))

(assert (=> b!1559294 m!1831066))

(declare-fun m!1831186 () Bool)

(assert (=> bm!102185 m!1831186))

(declare-fun m!1831188 () Bool)

(assert (=> b!1559287 m!1831188))

(declare-fun m!1831190 () Bool)

(assert (=> b!1559291 m!1831190))

(declare-fun m!1831192 () Bool)

(assert (=> b!1559291 m!1831192))

(assert (=> b!1559291 m!1831190))

(declare-fun m!1831194 () Bool)

(assert (=> b!1559291 m!1831194))

(declare-fun m!1831196 () Bool)

(assert (=> b!1559291 m!1831196))

(declare-fun m!1831198 () Bool)

(assert (=> b!1559291 m!1831198))

(assert (=> b!1559291 m!1831066))

(declare-fun m!1831200 () Bool)

(assert (=> b!1559291 m!1831200))

(assert (=> b!1559291 m!1831068))

(declare-fun m!1831202 () Bool)

(assert (=> b!1559291 m!1831202))

(declare-fun m!1831204 () Bool)

(assert (=> b!1559291 m!1831204))

(assert (=> b!1559291 m!1831194))

(declare-fun m!1831206 () Bool)

(assert (=> b!1559291 m!1831206))

(declare-fun m!1831208 () Bool)

(assert (=> b!1559291 m!1831208))

(assert (=> b!1559291 m!1831200))

(declare-fun m!1831210 () Bool)

(assert (=> b!1559291 m!1831210))

(declare-fun m!1831212 () Bool)

(assert (=> b!1559291 m!1831212))

(declare-fun m!1831214 () Bool)

(assert (=> b!1559298 m!1831214))

(declare-fun m!1831216 () Bool)

(assert (=> bm!102190 m!1831216))

(declare-fun m!1831218 () Bool)

(assert (=> bm!102188 m!1831218))

(declare-fun m!1831220 () Bool)

(assert (=> d!462044 m!1831220))

(assert (=> d!462044 m!1831166))

(declare-fun m!1831222 () Bool)

(assert (=> d!462044 m!1831222))

(declare-fun m!1831224 () Bool)

(assert (=> d!462044 m!1831224))

(declare-fun m!1831226 () Bool)

(assert (=> d!462044 m!1831226))

(assert (=> d!462044 m!1831220))

(declare-fun m!1831228 () Bool)

(assert (=> d!462044 m!1831228))

(declare-fun m!1831230 () Bool)

(assert (=> d!462044 m!1831230))

(assert (=> d!462044 m!1831200))

(assert (=> bm!102183 m!1831068))

(declare-fun m!1831232 () Bool)

(assert (=> bm!102183 m!1831232))

(assert (=> bm!102186 m!1831208))

(assert (=> bm!102187 m!1831168))

(assert (=> bm!102184 m!1831212))

(assert (=> b!1559194 d!462044))

(declare-fun d!462046 () Bool)

(declare-fun e!1000975 () Bool)

(assert (=> d!462046 e!1000975))

(declare-fun res!695569 () Bool)

(assert (=> d!462046 (=> (not res!695569) (not e!1000975))))

(assert (=> d!462046 (= res!695569 (semiInverseModEq!1121 (toChars!4197 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))))))

(declare-fun Unit!26129 () Unit!26124)

(assert (=> d!462046 (= (lemmaInv!435 (transformation!2961 rule!240)) Unit!26129)))

(declare-fun b!1559303 () Bool)

(declare-fun equivClasses!1062 (Int Int) Bool)

(assert (=> b!1559303 (= e!1000975 (equivClasses!1062 (toChars!4197 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))))))

(assert (= (and d!462046 res!695569) b!1559303))

(assert (=> d!462046 m!1831060))

(declare-fun m!1831234 () Bool)

(assert (=> b!1559303 m!1831234))

(assert (=> b!1559194 d!462046))

(declare-fun d!462048 () Bool)

(assert (=> d!462048 (= (array_inv!2014 (_keys!2130 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) (bvsge (size!13705 (_keys!2130 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559193 d!462048))

(declare-fun d!462050 () Bool)

(assert (=> d!462050 (= (array_inv!2016 (_values!2115 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) (bvsge (size!13704 (_values!2115 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559193 d!462050))

(declare-fun d!462052 () Bool)

(assert (=> d!462052 (= (array_inv!2014 (_keys!2132 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) (bvsge (size!13705 (_keys!2132 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559192 d!462052))

(declare-fun d!462054 () Bool)

(assert (=> d!462054 (= (array_inv!2015 (_values!2117 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) (bvsge (size!13707 (_values!2117 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559192 d!462054))

(declare-fun d!462056 () Bool)

(assert (=> d!462056 (= (array_inv!2014 (_keys!2131 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) (bvsge (size!13705 (_keys!2131 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559210 d!462056))

(declare-fun d!462058 () Bool)

(assert (=> d!462058 (= (array_inv!2017 (_values!2116 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) (bvsge (size!13706 (_values!2116 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559210 d!462058))

(declare-fun d!462060 () Bool)

(declare-fun list!6510 (Conc!5579) List!16964)

(assert (=> d!462060 (= (list!6509 lt!540104) (list!6510 (c!253037 lt!540104)))))

(declare-fun bs!388827 () Bool)

(assert (= bs!388827 d!462060))

(declare-fun m!1831236 () Bool)

(assert (=> bs!388827 m!1831236))

(assert (=> b!1559190 d!462060))

(declare-fun b!1559332 () Bool)

(declare-fun res!695590 () Bool)

(declare-fun e!1000991 () Bool)

(assert (=> b!1559332 (=> res!695590 e!1000991)))

(declare-fun e!1000993 () Bool)

(assert (=> b!1559332 (= res!695590 e!1000993)))

(declare-fun res!695587 () Bool)

(assert (=> b!1559332 (=> (not res!695587) (not e!1000993))))

(declare-fun lt!540208 () Bool)

(assert (=> b!1559332 (= res!695587 lt!540208)))

(declare-fun b!1559333 () Bool)

(declare-fun e!1000990 () Bool)

(declare-fun e!1000992 () Bool)

(assert (=> b!1559333 (= e!1000990 e!1000992)))

(declare-fun res!695592 () Bool)

(assert (=> b!1559333 (=> res!695592 e!1000992)))

(declare-fun call!102198 () Bool)

(assert (=> b!1559333 (= res!695592 call!102198)))

(declare-fun b!1559334 () Bool)

(declare-fun res!695588 () Bool)

(assert (=> b!1559334 (=> res!695588 e!1000992)))

(assert (=> b!1559334 (= res!695588 (not (isEmpty!10148 (tail!2214 (_1!9619 lt!540103)))))))

(declare-fun b!1559335 () Bool)

(declare-fun e!1000994 () Bool)

(assert (=> b!1559335 (= e!1000994 (not lt!540208))))

(declare-fun b!1559336 () Bool)

(assert (=> b!1559336 (= e!1000992 (not (= (head!3119 (_1!9619 lt!540103)) (c!253038 (regex!2961 rule!240)))))))

(declare-fun b!1559338 () Bool)

(declare-fun e!1000996 () Bool)

(assert (=> b!1559338 (= e!1000996 (nullable!1276 (regex!2961 rule!240)))))

(declare-fun b!1559339 () Bool)

(assert (=> b!1559339 (= e!1000993 (= (head!3119 (_1!9619 lt!540103)) (c!253038 (regex!2961 rule!240))))))

(declare-fun b!1559340 () Bool)

(declare-fun res!695589 () Bool)

(assert (=> b!1559340 (=> (not res!695589) (not e!1000993))))

(assert (=> b!1559340 (= res!695589 (isEmpty!10148 (tail!2214 (_1!9619 lt!540103))))))

(declare-fun b!1559341 () Bool)

(declare-fun e!1000995 () Bool)

(assert (=> b!1559341 (= e!1000995 e!1000994)))

(declare-fun c!253067 () Bool)

(assert (=> b!1559341 (= c!253067 ((_ is EmptyLang!4289) (regex!2961 rule!240)))))

(declare-fun bm!102193 () Bool)

(assert (=> bm!102193 (= call!102198 (isEmpty!10148 (_1!9619 lt!540103)))))

(declare-fun b!1559342 () Bool)

(declare-fun res!695591 () Bool)

(assert (=> b!1559342 (=> (not res!695591) (not e!1000993))))

(assert (=> b!1559342 (= res!695591 (not call!102198))))

(declare-fun b!1559343 () Bool)

(assert (=> b!1559343 (= e!1000995 (= lt!540208 call!102198))))

(declare-fun b!1559344 () Bool)

(assert (=> b!1559344 (= e!1000991 e!1000990)))

(declare-fun res!695593 () Bool)

(assert (=> b!1559344 (=> (not res!695593) (not e!1000990))))

(assert (=> b!1559344 (= res!695593 (not lt!540208))))

(declare-fun b!1559345 () Bool)

(assert (=> b!1559345 (= e!1000996 (matchR!1886 (derivativeStep!1028 (regex!2961 rule!240) (head!3119 (_1!9619 lt!540103))) (tail!2214 (_1!9619 lt!540103))))))

(declare-fun d!462062 () Bool)

(assert (=> d!462062 e!1000995))

(declare-fun c!253069 () Bool)

(assert (=> d!462062 (= c!253069 ((_ is EmptyExpr!4289) (regex!2961 rule!240)))))

(assert (=> d!462062 (= lt!540208 e!1000996)))

(declare-fun c!253068 () Bool)

(assert (=> d!462062 (= c!253068 (isEmpty!10148 (_1!9619 lt!540103)))))

(assert (=> d!462062 (validRegex!1717 (regex!2961 rule!240))))

(assert (=> d!462062 (= (matchR!1886 (regex!2961 rule!240) (_1!9619 lt!540103)) lt!540208)))

(declare-fun b!1559337 () Bool)

(declare-fun res!695586 () Bool)

(assert (=> b!1559337 (=> res!695586 e!1000991)))

(assert (=> b!1559337 (= res!695586 (not ((_ is ElementMatch!4289) (regex!2961 rule!240))))))

(assert (=> b!1559337 (= e!1000994 e!1000991)))

(assert (= (and d!462062 c!253068) b!1559338))

(assert (= (and d!462062 (not c!253068)) b!1559345))

(assert (= (and d!462062 c!253069) b!1559343))

(assert (= (and d!462062 (not c!253069)) b!1559341))

(assert (= (and b!1559341 c!253067) b!1559335))

(assert (= (and b!1559341 (not c!253067)) b!1559337))

(assert (= (and b!1559337 (not res!695586)) b!1559332))

(assert (= (and b!1559332 res!695587) b!1559342))

(assert (= (and b!1559342 res!695591) b!1559340))

(assert (= (and b!1559340 res!695589) b!1559339))

(assert (= (and b!1559332 (not res!695590)) b!1559344))

(assert (= (and b!1559344 res!695593) b!1559333))

(assert (= (and b!1559333 (not res!695592)) b!1559334))

(assert (= (and b!1559334 (not res!695588)) b!1559336))

(assert (= (or b!1559343 b!1559333 b!1559342) bm!102193))

(declare-fun m!1831238 () Bool)

(assert (=> b!1559345 m!1831238))

(assert (=> b!1559345 m!1831238))

(declare-fun m!1831240 () Bool)

(assert (=> b!1559345 m!1831240))

(declare-fun m!1831242 () Bool)

(assert (=> b!1559345 m!1831242))

(assert (=> b!1559345 m!1831240))

(assert (=> b!1559345 m!1831242))

(declare-fun m!1831244 () Bool)

(assert (=> b!1559345 m!1831244))

(assert (=> b!1559338 m!1831168))

(assert (=> b!1559340 m!1831242))

(assert (=> b!1559340 m!1831242))

(declare-fun m!1831246 () Bool)

(assert (=> b!1559340 m!1831246))

(assert (=> d!462062 m!1831062))

(assert (=> d!462062 m!1831166))

(assert (=> b!1559339 m!1831238))

(assert (=> bm!102193 m!1831062))

(assert (=> b!1559334 m!1831242))

(assert (=> b!1559334 m!1831242))

(assert (=> b!1559334 m!1831246))

(assert (=> b!1559336 m!1831238))

(assert (=> b!1559218 d!462062))

(declare-fun d!462064 () Bool)

(assert (=> d!462064 (= (get!4866 lt!540099) (v!23765 lt!540099))))

(assert (=> b!1559198 d!462064))

(declare-fun d!462066 () Bool)

(declare-fun e!1000999 () Bool)

(assert (=> d!462066 e!1000999))

(declare-fun res!695596 () Bool)

(assert (=> d!462066 (=> res!695596 e!1000999)))

(declare-fun lt!540211 () Bool)

(assert (=> d!462066 (= res!695596 (not lt!540211))))

(declare-fun drop!791 (List!16964 Int) List!16964)

(assert (=> d!462066 (= lt!540211 (= lt!540100 (drop!791 (list!6509 totalInput!568) (- (size!13709 (list!6509 totalInput!568)) (size!13709 lt!540100)))))))

(assert (=> d!462066 (= (isSuffix!383 lt!540100 (list!6509 totalInput!568)) lt!540211)))

(declare-fun b!1559348 () Bool)

(assert (=> b!1559348 (= e!1000999 (>= (size!13709 (list!6509 totalInput!568)) (size!13709 lt!540100)))))

(assert (= (and d!462066 (not res!695596)) b!1559348))

(assert (=> d!462066 m!1831110))

(declare-fun m!1831248 () Bool)

(assert (=> d!462066 m!1831248))

(assert (=> d!462066 m!1831068))

(assert (=> d!462066 m!1831110))

(declare-fun m!1831250 () Bool)

(assert (=> d!462066 m!1831250))

(assert (=> b!1559348 m!1831110))

(assert (=> b!1559348 m!1831248))

(assert (=> b!1559348 m!1831068))

(assert (=> b!1559217 d!462066))

(declare-fun d!462068 () Bool)

(assert (=> d!462068 (= (list!6509 totalInput!568) (list!6510 (c!253037 totalInput!568)))))

(declare-fun bs!388828 () Bool)

(assert (= bs!388828 d!462068))

(declare-fun m!1831252 () Bool)

(assert (=> bs!388828 m!1831252))

(assert (=> b!1559217 d!462068))

(declare-fun d!462070 () Bool)

(assert (=> d!462070 (= (list!6509 input!1676) (list!6510 (c!253037 input!1676)))))

(declare-fun bs!388829 () Bool)

(assert (= bs!388829 d!462070))

(declare-fun m!1831254 () Bool)

(assert (=> bs!388829 m!1831254))

(assert (=> b!1559217 d!462070))

(declare-fun d!462072 () Bool)

(declare-fun c!253072 () Bool)

(assert (=> d!462072 (= c!253072 ((_ is Node!5579) (c!253037 input!1676)))))

(declare-fun e!1001004 () Bool)

(assert (=> d!462072 (= (inv!22188 (c!253037 input!1676)) e!1001004)))

(declare-fun b!1559355 () Bool)

(declare-fun inv!22194 (Conc!5579) Bool)

(assert (=> b!1559355 (= e!1001004 (inv!22194 (c!253037 input!1676)))))

(declare-fun b!1559356 () Bool)

(declare-fun e!1001005 () Bool)

(assert (=> b!1559356 (= e!1001004 e!1001005)))

(declare-fun res!695599 () Bool)

(assert (=> b!1559356 (= res!695599 (not ((_ is Leaf!8269) (c!253037 input!1676))))))

(assert (=> b!1559356 (=> res!695599 e!1001005)))

(declare-fun b!1559357 () Bool)

(declare-fun inv!22195 (Conc!5579) Bool)

(assert (=> b!1559357 (= e!1001005 (inv!22195 (c!253037 input!1676)))))

(assert (= (and d!462072 c!253072) b!1559355))

(assert (= (and d!462072 (not c!253072)) b!1559356))

(assert (= (and b!1559356 (not res!695599)) b!1559357))

(declare-fun m!1831256 () Bool)

(assert (=> b!1559355 m!1831256))

(declare-fun m!1831258 () Bool)

(assert (=> b!1559357 m!1831258))

(assert (=> b!1559197 d!462072))

(declare-fun d!462074 () Bool)

(declare-fun c!253073 () Bool)

(assert (=> d!462074 (= c!253073 ((_ is Node!5579) (c!253037 (totalInput!2488 cacheFurthestNullable!103))))))

(declare-fun e!1001006 () Bool)

(assert (=> d!462074 (= (inv!22188 (c!253037 (totalInput!2488 cacheFurthestNullable!103))) e!1001006)))

(declare-fun b!1559358 () Bool)

(assert (=> b!1559358 (= e!1001006 (inv!22194 (c!253037 (totalInput!2488 cacheFurthestNullable!103))))))

(declare-fun b!1559359 () Bool)

(declare-fun e!1001007 () Bool)

(assert (=> b!1559359 (= e!1001006 e!1001007)))

(declare-fun res!695600 () Bool)

(assert (=> b!1559359 (= res!695600 (not ((_ is Leaf!8269) (c!253037 (totalInput!2488 cacheFurthestNullable!103)))))))

(assert (=> b!1559359 (=> res!695600 e!1001007)))

(declare-fun b!1559360 () Bool)

(assert (=> b!1559360 (= e!1001007 (inv!22195 (c!253037 (totalInput!2488 cacheFurthestNullable!103))))))

(assert (= (and d!462074 c!253073) b!1559358))

(assert (= (and d!462074 (not c!253073)) b!1559359))

(assert (= (and b!1559359 (not res!695600)) b!1559360))

(declare-fun m!1831260 () Bool)

(assert (=> b!1559358 m!1831260))

(declare-fun m!1831262 () Bool)

(assert (=> b!1559360 m!1831262))

(assert (=> b!1559215 d!462074))

(declare-fun d!462076 () Bool)

(declare-fun validCacheMapUp!167 (MutableMap!1780) Bool)

(assert (=> d!462076 (= (valid!1473 cacheUp!755) (validCacheMapUp!167 (cache!2161 cacheUp!755)))))

(declare-fun bs!388830 () Bool)

(assert (= bs!388830 d!462076))

(declare-fun m!1831264 () Bool)

(assert (=> bs!388830 m!1831264))

(assert (=> b!1559201 d!462076))

(declare-fun d!462078 () Bool)

(declare-fun e!1001019 () Bool)

(assert (=> d!462078 e!1001019))

(declare-fun res!695617 () Bool)

(assert (=> d!462078 (=> res!695617 e!1001019)))

(declare-fun lt!540226 () Option!3058)

(declare-fun isEmpty!10150 (Option!3058) Bool)

(assert (=> d!462078 (= res!695617 (isEmpty!10150 lt!540226))))

(declare-fun e!1001016 () Option!3058)

(assert (=> d!462078 (= lt!540226 e!1001016)))

(declare-fun c!253076 () Bool)

(declare-fun lt!540224 () tuple2!16478)

(assert (=> d!462078 (= c!253076 (isEmpty!10148 (_1!9619 lt!540224)))))

(declare-fun findLongestMatch!267 (Regex!4289 List!16964) tuple2!16478)

(assert (=> d!462078 (= lt!540224 (findLongestMatch!267 (regex!2961 rule!240) lt!540100))))

(assert (=> d!462078 (ruleValid!692 thiss!16438 rule!240)))

(assert (=> d!462078 (= (maxPrefixOneRule!712 thiss!16438 rule!240 lt!540100) lt!540226)))

(declare-fun b!1559379 () Bool)

(declare-fun res!695615 () Bool)

(declare-fun e!1001017 () Bool)

(assert (=> b!1559379 (=> (not res!695615) (not e!1001017))))

(assert (=> b!1559379 (= res!695615 (= (value!94025 (_1!9618 (get!4867 lt!540226))) (apply!4119 (transformation!2961 (rule!4748 (_1!9618 (get!4867 lt!540226)))) (seqFromList!1783 (originalCharacters!3780 (_1!9618 (get!4867 lt!540226)))))))))

(declare-fun b!1559380 () Bool)

(assert (=> b!1559380 (= e!1001016 (Some!3057 (tuple2!16477 (Token!5499 (apply!4119 (transformation!2961 rule!240) (seqFromList!1783 (_1!9619 lt!540224))) rule!240 (size!13710 (seqFromList!1783 (_1!9619 lt!540224))) (_1!9619 lt!540224)) (_2!9619 lt!540224))))))

(declare-fun lt!540223 () Unit!26124)

(assert (=> b!1559380 (= lt!540223 (longestMatchIsAcceptedByMatchOrIsEmpty!325 (regex!2961 rule!240) lt!540100))))

(declare-fun res!695620 () Bool)

(assert (=> b!1559380 (= res!695620 (isEmpty!10148 (_1!9619 (findLongestMatchInner!341 (regex!2961 rule!240) Nil!16896 (size!13709 Nil!16896) lt!540100 lt!540100 (size!13709 lt!540100)))))))

(declare-fun e!1001018 () Bool)

(assert (=> b!1559380 (=> res!695620 e!1001018)))

(assert (=> b!1559380 e!1001018))

(declare-fun lt!540225 () Unit!26124)

(assert (=> b!1559380 (= lt!540225 lt!540223)))

(declare-fun lt!540222 () Unit!26124)

(declare-fun lemmaSemiInverse!371 (TokenValueInjection!5762 BalanceConc!11100) Unit!26124)

(assert (=> b!1559380 (= lt!540222 (lemmaSemiInverse!371 (transformation!2961 rule!240) (seqFromList!1783 (_1!9619 lt!540224))))))

(declare-fun b!1559381 () Bool)

(assert (=> b!1559381 (= e!1001019 e!1001017)))

(declare-fun res!695616 () Bool)

(assert (=> b!1559381 (=> (not res!695616) (not e!1001017))))

(declare-fun charsOf!1652 (Token!5498) BalanceConc!11100)

(assert (=> b!1559381 (= res!695616 (matchR!1886 (regex!2961 rule!240) (list!6509 (charsOf!1652 (_1!9618 (get!4867 lt!540226))))))))

(declare-fun b!1559382 () Bool)

(declare-fun res!695619 () Bool)

(assert (=> b!1559382 (=> (not res!695619) (not e!1001017))))

(assert (=> b!1559382 (= res!695619 (< (size!13709 (_2!9618 (get!4867 lt!540226))) (size!13709 lt!540100)))))

(declare-fun b!1559383 () Bool)

(assert (=> b!1559383 (= e!1001018 (matchR!1886 (regex!2961 rule!240) (_1!9619 (findLongestMatchInner!341 (regex!2961 rule!240) Nil!16896 (size!13709 Nil!16896) lt!540100 lt!540100 (size!13709 lt!540100)))))))

(declare-fun b!1559384 () Bool)

(assert (=> b!1559384 (= e!1001016 None!3057)))

(declare-fun b!1559385 () Bool)

(declare-fun res!695618 () Bool)

(assert (=> b!1559385 (=> (not res!695618) (not e!1001017))))

(assert (=> b!1559385 (= res!695618 (= (++!4420 (list!6509 (charsOf!1652 (_1!9618 (get!4867 lt!540226)))) (_2!9618 (get!4867 lt!540226))) lt!540100))))

(declare-fun b!1559386 () Bool)

(declare-fun res!695621 () Bool)

(assert (=> b!1559386 (=> (not res!695621) (not e!1001017))))

(assert (=> b!1559386 (= res!695621 (= (rule!4748 (_1!9618 (get!4867 lt!540226))) rule!240))))

(declare-fun b!1559387 () Bool)

(assert (=> b!1559387 (= e!1001017 (= (size!13708 (_1!9618 (get!4867 lt!540226))) (size!13709 (originalCharacters!3780 (_1!9618 (get!4867 lt!540226))))))))

(assert (= (and d!462078 c!253076) b!1559384))

(assert (= (and d!462078 (not c!253076)) b!1559380))

(assert (= (and b!1559380 (not res!695620)) b!1559383))

(assert (= (and d!462078 (not res!695617)) b!1559381))

(assert (= (and b!1559381 res!695616) b!1559385))

(assert (= (and b!1559385 res!695618) b!1559382))

(assert (= (and b!1559382 res!695619) b!1559386))

(assert (= (and b!1559386 res!695621) b!1559379))

(assert (= (and b!1559379 res!695615) b!1559387))

(declare-fun m!1831266 () Bool)

(assert (=> d!462078 m!1831266))

(declare-fun m!1831268 () Bool)

(assert (=> d!462078 m!1831268))

(declare-fun m!1831270 () Bool)

(assert (=> d!462078 m!1831270))

(assert (=> d!462078 m!1831120))

(declare-fun m!1831272 () Bool)

(assert (=> b!1559386 m!1831272))

(assert (=> b!1559382 m!1831272))

(declare-fun m!1831274 () Bool)

(assert (=> b!1559382 m!1831274))

(assert (=> b!1559382 m!1831068))

(assert (=> b!1559383 m!1831066))

(assert (=> b!1559383 m!1831068))

(assert (=> b!1559383 m!1831066))

(assert (=> b!1559383 m!1831068))

(assert (=> b!1559383 m!1831072))

(assert (=> b!1559383 m!1831178))

(assert (=> b!1559387 m!1831272))

(declare-fun m!1831276 () Bool)

(assert (=> b!1559387 m!1831276))

(assert (=> b!1559385 m!1831272))

(declare-fun m!1831278 () Bool)

(assert (=> b!1559385 m!1831278))

(assert (=> b!1559385 m!1831278))

(declare-fun m!1831280 () Bool)

(assert (=> b!1559385 m!1831280))

(assert (=> b!1559385 m!1831280))

(declare-fun m!1831282 () Bool)

(assert (=> b!1559385 m!1831282))

(assert (=> b!1559379 m!1831272))

(declare-fun m!1831284 () Bool)

(assert (=> b!1559379 m!1831284))

(assert (=> b!1559379 m!1831284))

(declare-fun m!1831286 () Bool)

(assert (=> b!1559379 m!1831286))

(declare-fun m!1831288 () Bool)

(assert (=> b!1559380 m!1831288))

(declare-fun m!1831290 () Bool)

(assert (=> b!1559380 m!1831290))

(assert (=> b!1559380 m!1831066))

(assert (=> b!1559380 m!1831068))

(assert (=> b!1559380 m!1831072))

(assert (=> b!1559380 m!1831288))

(assert (=> b!1559380 m!1831068))

(assert (=> b!1559380 m!1831070))

(assert (=> b!1559380 m!1831066))

(assert (=> b!1559380 m!1831288))

(declare-fun m!1831292 () Bool)

(assert (=> b!1559380 m!1831292))

(assert (=> b!1559380 m!1831174))

(assert (=> b!1559380 m!1831288))

(declare-fun m!1831294 () Bool)

(assert (=> b!1559380 m!1831294))

(assert (=> b!1559381 m!1831272))

(assert (=> b!1559381 m!1831278))

(assert (=> b!1559381 m!1831278))

(assert (=> b!1559381 m!1831280))

(assert (=> b!1559381 m!1831280))

(declare-fun m!1831296 () Bool)

(assert (=> b!1559381 m!1831296))

(assert (=> b!1559221 d!462078))

(declare-fun d!462080 () Bool)

(assert (=> d!462080 (= (list!6509 (_1!9615 (_1!9616 lt!540108))) (list!6510 (c!253037 (_1!9615 (_1!9616 lt!540108)))))))

(declare-fun bs!388831 () Bool)

(assert (= bs!388831 d!462080))

(declare-fun m!1831298 () Bool)

(assert (=> bs!388831 m!1831298))

(assert (=> b!1559221 d!462080))

(declare-fun d!462082 () Bool)

(declare-fun lt!540229 () Int)

(assert (=> d!462082 (= lt!540229 (size!13709 (list!6509 (_1!9615 (_1!9616 lt!540108)))))))

(declare-fun size!13711 (Conc!5579) Int)

(assert (=> d!462082 (= lt!540229 (size!13711 (c!253037 (_1!9615 (_1!9616 lt!540108)))))))

(assert (=> d!462082 (= (size!13710 (_1!9615 (_1!9616 lt!540108))) lt!540229)))

(declare-fun bs!388832 () Bool)

(assert (= bs!388832 d!462082))

(assert (=> bs!388832 m!1831096))

(assert (=> bs!388832 m!1831096))

(declare-fun m!1831300 () Bool)

(assert (=> bs!388832 m!1831300))

(declare-fun m!1831302 () Bool)

(assert (=> bs!388832 m!1831302))

(assert (=> b!1559221 d!462082))

(declare-fun d!462084 () Bool)

(declare-fun dynLambda!7520 (Int BalanceConc!11100) Bool)

(assert (=> d!462084 (dynLambda!7520 lambda!65995 lt!540104)))

(declare-fun lt!540232 () Unit!26124)

(declare-fun choose!9306 (Int BalanceConc!11100) Unit!26124)

(assert (=> d!462084 (= lt!540232 (choose!9306 lambda!65995 lt!540104))))

(assert (=> d!462084 (Forall!617 lambda!65995)))

(assert (=> d!462084 (= (ForallOf!220 lambda!65995 lt!540104) lt!540232)))

(declare-fun b_lambda!49015 () Bool)

(assert (=> (not b_lambda!49015) (not d!462084)))

(declare-fun bs!388833 () Bool)

(assert (= bs!388833 d!462084))

(declare-fun m!1831304 () Bool)

(assert (=> bs!388833 m!1831304))

(declare-fun m!1831306 () Bool)

(assert (=> bs!388833 m!1831306))

(assert (=> bs!388833 m!1831078))

(assert (=> b!1559221 d!462084))

(declare-fun d!462086 () Bool)

(assert (=> d!462086 (dynLambda!7520 lambda!65995 (_1!9615 (_1!9616 lt!540108)))))

(declare-fun lt!540233 () Unit!26124)

(assert (=> d!462086 (= lt!540233 (choose!9306 lambda!65995 (_1!9615 (_1!9616 lt!540108))))))

(assert (=> d!462086 (Forall!617 lambda!65995)))

(assert (=> d!462086 (= (ForallOf!220 lambda!65995 (_1!9615 (_1!9616 lt!540108))) lt!540233)))

(declare-fun b_lambda!49017 () Bool)

(assert (=> (not b_lambda!49017) (not d!462086)))

(declare-fun bs!388834 () Bool)

(assert (= bs!388834 d!462086))

(declare-fun m!1831308 () Bool)

(assert (=> bs!388834 m!1831308))

(declare-fun m!1831310 () Bool)

(assert (=> bs!388834 m!1831310))

(assert (=> bs!388834 m!1831078))

(assert (=> b!1559221 d!462086))

(declare-fun d!462088 () Bool)

(assert (=> d!462088 (= (isDefined!2457 lt!540097) (not (isEmpty!10150 lt!540097)))))

(declare-fun bs!388835 () Bool)

(assert (= bs!388835 d!462088))

(declare-fun m!1831312 () Bool)

(assert (=> bs!388835 m!1831312))

(assert (=> b!1559221 d!462088))

(declare-fun d!462090 () Bool)

(declare-fun isEmpty!10151 (Option!3057) Bool)

(assert (=> d!462090 (= (isDefined!2458 lt!540099) (not (isEmpty!10151 lt!540099)))))

(declare-fun bs!388836 () Bool)

(assert (= bs!388836 d!462090))

(declare-fun m!1831314 () Bool)

(assert (=> bs!388836 m!1831314))

(assert (=> b!1559221 d!462090))

(declare-fun d!462092 () Bool)

(declare-fun fromListB!767 (List!16964) BalanceConc!11100)

(assert (=> d!462092 (= (seqFromList!1783 lt!540101) (fromListB!767 lt!540101))))

(declare-fun bs!388837 () Bool)

(assert (= bs!388837 d!462092))

(declare-fun m!1831316 () Bool)

(assert (=> bs!388837 m!1831316))

(assert (=> b!1559221 d!462092))

(declare-fun d!462094 () Bool)

(declare-fun dynLambda!7521 (Int BalanceConc!11100) TokenValue!3051)

(assert (=> d!462094 (= (apply!4119 (transformation!2961 rule!240) (_1!9615 (_1!9616 lt!540108))) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) (_1!9615 (_1!9616 lt!540108))))))

(declare-fun b_lambda!49019 () Bool)

(assert (=> (not b_lambda!49019) (not d!462094)))

(declare-fun t!141481 () Bool)

(declare-fun tb!87361 () Bool)

(assert (=> (and b!1559202 (= (toValue!4338 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))) t!141481) tb!87361))

(declare-fun result!105576 () Bool)

(declare-fun inv!21 (TokenValue!3051) Bool)

(assert (=> tb!87361 (= result!105576 (inv!21 (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) (_1!9615 (_1!9616 lt!540108)))))))

(declare-fun m!1831318 () Bool)

(assert (=> tb!87361 m!1831318))

(assert (=> d!462094 t!141481))

(declare-fun b_and!108837 () Bool)

(assert (= b_and!108823 (and (=> t!141481 result!105576) b_and!108837)))

(declare-fun m!1831320 () Bool)

(assert (=> d!462094 m!1831320))

(assert (=> b!1559221 d!462094))

(declare-fun d!462096 () Bool)

(declare-fun validCacheMapDown!167 (MutableMap!1781) Bool)

(assert (=> d!462096 (= (valid!1472 cacheDown!768) (validCacheMapDown!167 (cache!2162 cacheDown!768)))))

(declare-fun bs!388838 () Bool)

(assert (= bs!388838 d!462096))

(declare-fun m!1831322 () Bool)

(assert (=> bs!388838 m!1831322))

(assert (=> b!1559200 d!462096))

(declare-fun d!462098 () Bool)

(declare-fun lt!540236 () Bool)

(assert (=> d!462098 (= lt!540236 (isEmpty!10148 (list!6509 (_1!9615 (_1!9616 lt!540108)))))))

(declare-fun isEmpty!10152 (Conc!5579) Bool)

(assert (=> d!462098 (= lt!540236 (isEmpty!10152 (c!253037 (_1!9615 (_1!9616 lt!540108)))))))

(assert (=> d!462098 (= (isEmpty!10149 (_1!9615 (_1!9616 lt!540108))) lt!540236)))

(declare-fun bs!388839 () Bool)

(assert (= bs!388839 d!462098))

(assert (=> bs!388839 m!1831096))

(assert (=> bs!388839 m!1831096))

(declare-fun m!1831324 () Bool)

(assert (=> bs!388839 m!1831324))

(declare-fun m!1831326 () Bool)

(assert (=> bs!388839 m!1831326))

(assert (=> b!1559220 d!462098))

(declare-fun b!1559398 () Bool)

(declare-fun res!695633 () Bool)

(declare-fun e!1001025 () Bool)

(assert (=> b!1559398 (=> (not res!695633) (not e!1001025))))

(declare-fun lt!540239 () tuple4!914)

(assert (=> b!1559398 (= res!695633 (valid!1472 (_3!1379 lt!540239)))))

(declare-fun b!1559399 () Bool)

(declare-fun res!695630 () Bool)

(assert (=> b!1559399 (=> (not res!695630) (not e!1001025))))

(assert (=> b!1559399 (= res!695630 (valid!1473 (_2!9616 lt!540239)))))

(declare-fun b!1559400 () Bool)

(declare-fun res!695631 () Bool)

(assert (=> b!1559400 (=> (not res!695631) (not e!1001025))))

(assert (=> b!1559400 (= res!695631 (valid!1474 (_4!457 lt!540239)))))

(declare-fun b!1559401 () Bool)

(assert (=> b!1559401 (= e!1001025 (= (totalInput!2488 (_4!457 lt!540239)) totalInput!568))))

(declare-fun d!462100 () Bool)

(assert (=> d!462100 e!1001025))

(declare-fun res!695632 () Bool)

(assert (=> d!462100 (=> (not res!695632) (not e!1001025))))

(assert (=> d!462100 (= res!695632 (= (tuple2!16479 (list!6509 (_1!9615 (_1!9616 lt!540239))) (list!6509 (_2!9615 (_1!9616 lt!540239)))) (findLongestMatch!267 (regex!2961 rule!240) (list!6509 input!1676))))))

(declare-fun choose!9307 (Regex!4289 BalanceConc!11100 BalanceConc!11100 CacheUp!1084 CacheDown!1090 CacheFurthestNullable!514) tuple4!914)

(assert (=> d!462100 (= lt!540239 (choose!9307 (regex!2961 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!462100 (validRegex!1717 (regex!2961 rule!240))))

(assert (=> d!462100 (= (findLongestMatchWithZipperSequenceV3Mem!58 (regex!2961 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!540239)))

(assert (= (and d!462100 res!695632) b!1559398))

(assert (= (and b!1559398 res!695633) b!1559399))

(assert (= (and b!1559399 res!695630) b!1559400))

(assert (= (and b!1559400 res!695631) b!1559401))

(declare-fun m!1831328 () Bool)

(assert (=> b!1559398 m!1831328))

(declare-fun m!1831330 () Bool)

(assert (=> b!1559399 m!1831330))

(declare-fun m!1831332 () Bool)

(assert (=> b!1559400 m!1831332))

(assert (=> d!462100 m!1831166))

(declare-fun m!1831334 () Bool)

(assert (=> d!462100 m!1831334))

(declare-fun m!1831336 () Bool)

(assert (=> d!462100 m!1831336))

(assert (=> d!462100 m!1831114))

(declare-fun m!1831338 () Bool)

(assert (=> d!462100 m!1831338))

(declare-fun m!1831340 () Bool)

(assert (=> d!462100 m!1831340))

(assert (=> d!462100 m!1831114))

(assert (=> b!1559220 d!462100))

(declare-fun d!462102 () Bool)

(assert (=> d!462102 (= (inv!22187 (tag!3225 rule!240)) (= (mod (str.len (value!94024 (tag!3225 rule!240))) 2) 0))))

(assert (=> b!1559219 d!462102))

(declare-fun d!462104 () Bool)

(declare-fun res!695636 () Bool)

(declare-fun e!1001028 () Bool)

(assert (=> d!462104 (=> (not res!695636) (not e!1001028))))

(assert (=> d!462104 (= res!695636 (semiInverseModEq!1121 (toChars!4197 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))))))

(assert (=> d!462104 (= (inv!22190 (transformation!2961 rule!240)) e!1001028)))

(declare-fun b!1559404 () Bool)

(assert (=> b!1559404 (= e!1001028 (equivClasses!1062 (toChars!4197 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))))))

(assert (= (and d!462104 res!695636) b!1559404))

(assert (=> d!462104 m!1831060))

(assert (=> b!1559404 m!1831234))

(assert (=> b!1559219 d!462104))

(declare-fun d!462106 () Bool)

(declare-fun isBalanced!1649 (Conc!5579) Bool)

(assert (=> d!462106 (= (inv!22189 totalInput!568) (isBalanced!1649 (c!253037 totalInput!568)))))

(declare-fun bs!388840 () Bool)

(assert (= bs!388840 d!462106))

(declare-fun m!1831342 () Bool)

(assert (=> bs!388840 m!1831342))

(assert (=> start!144674 d!462106))

(declare-fun d!462108 () Bool)

(declare-fun res!695639 () Bool)

(declare-fun e!1001031 () Bool)

(assert (=> d!462108 (=> (not res!695639) (not e!1001031))))

(assert (=> d!462108 (= res!695639 ((_ is HashMap!1781) (cache!2162 cacheDown!768)))))

(assert (=> d!462108 (= (inv!22193 cacheDown!768) e!1001031)))

(declare-fun b!1559407 () Bool)

(assert (=> b!1559407 (= e!1001031 (validCacheMapDown!167 (cache!2162 cacheDown!768)))))

(assert (= (and d!462108 res!695639) b!1559407))

(assert (=> b!1559407 m!1831322))

(assert (=> start!144674 d!462108))

(declare-fun d!462110 () Bool)

(declare-fun res!695642 () Bool)

(declare-fun e!1001034 () Bool)

(assert (=> d!462110 (=> (not res!695642) (not e!1001034))))

(assert (=> d!462110 (= res!695642 ((_ is HashMap!1780) (cache!2161 cacheUp!755)))))

(assert (=> d!462110 (= (inv!22191 cacheUp!755) e!1001034)))

(declare-fun b!1559410 () Bool)

(assert (=> b!1559410 (= e!1001034 (validCacheMapUp!167 (cache!2161 cacheUp!755)))))

(assert (= (and d!462110 res!695642) b!1559410))

(assert (=> b!1559410 m!1831264))

(assert (=> start!144674 d!462110))

(declare-fun d!462112 () Bool)

(assert (=> d!462112 (= (inv!22189 input!1676) (isBalanced!1649 (c!253037 input!1676)))))

(declare-fun bs!388841 () Bool)

(assert (= bs!388841 d!462112))

(declare-fun m!1831344 () Bool)

(assert (=> bs!388841 m!1831344))

(assert (=> start!144674 d!462112))

(declare-fun d!462114 () Bool)

(declare-fun res!695645 () Bool)

(declare-fun e!1001037 () Bool)

(assert (=> d!462114 (=> (not res!695645) (not e!1001037))))

(assert (=> d!462114 (= res!695645 ((_ is HashMap!1782) (cache!2163 cacheFurthestNullable!103)))))

(assert (=> d!462114 (= (inv!22192 cacheFurthestNullable!103) e!1001037)))

(declare-fun b!1559413 () Bool)

(declare-fun validCacheMapFurthestNullable!80 (MutableMap!1782 BalanceConc!11100) Bool)

(assert (=> b!1559413 (= e!1001037 (validCacheMapFurthestNullable!80 (cache!2163 cacheFurthestNullable!103) (totalInput!2488 cacheFurthestNullable!103)))))

(assert (= (and d!462114 res!695645) b!1559413))

(declare-fun m!1831346 () Bool)

(assert (=> b!1559413 m!1831346))

(assert (=> start!144674 d!462114))

(declare-fun d!462116 () Bool)

(declare-fun choose!9308 (Int) Bool)

(assert (=> d!462116 (= (Forall!617 lambda!65995) (choose!9308 lambda!65995))))

(declare-fun bs!388842 () Bool)

(assert (= bs!388842 d!462116))

(declare-fun m!1831348 () Bool)

(assert (=> bs!388842 m!1831348))

(assert (=> b!1559227 d!462116))

(declare-fun d!462118 () Bool)

(assert (=> d!462118 (= (list!6509 (_2!9617 lt!540096)) (list!6510 (c!253037 (_2!9617 lt!540096))))))

(declare-fun bs!388843 () Bool)

(assert (= bs!388843 d!462118))

(declare-fun m!1831350 () Bool)

(assert (=> bs!388843 m!1831350))

(assert (=> b!1559189 d!462118))

(declare-fun d!462120 () Bool)

(assert (=> d!462120 (= (apply!4119 (transformation!2961 rule!240) lt!540104) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) lt!540104))))

(declare-fun b_lambda!49021 () Bool)

(assert (=> (not b_lambda!49021) (not d!462120)))

(declare-fun t!141483 () Bool)

(declare-fun tb!87363 () Bool)

(assert (=> (and b!1559202 (= (toValue!4338 (transformation!2961 rule!240)) (toValue!4338 (transformation!2961 rule!240))) t!141483) tb!87363))

(declare-fun result!105580 () Bool)

(assert (=> tb!87363 (= result!105580 (inv!21 (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) lt!540104)))))

(declare-fun m!1831352 () Bool)

(assert (=> tb!87363 m!1831352))

(assert (=> d!462120 t!141483))

(declare-fun b_and!108839 () Bool)

(assert (= b_and!108837 (and (=> t!141483 result!105580) b_and!108839)))

(declare-fun m!1831354 () Bool)

(assert (=> d!462120 m!1831354))

(assert (=> b!1559188 d!462120))

(declare-fun b!1559420 () Bool)

(declare-fun e!1001043 () Bool)

(assert (=> b!1559420 (= e!1001043 true)))

(declare-fun d!462122 () Bool)

(assert (=> d!462122 e!1001043))

(assert (= d!462122 b!1559420))

(declare-fun lambda!66001 () Int)

(declare-fun order!9997 () Int)

(declare-fun dynLambda!7522 (Int Int) Int)

(assert (=> b!1559420 (< (dynLambda!7517 order!9991 (toValue!4338 (transformation!2961 rule!240))) (dynLambda!7522 order!9997 lambda!66001))))

(assert (=> b!1559420 (< (dynLambda!7519 order!9995 (toChars!4197 (transformation!2961 rule!240))) (dynLambda!7522 order!9997 lambda!66001))))

(assert (=> d!462122 (= (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) (_1!9615 (_1!9616 lt!540108))) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) lt!540104))))

(declare-fun lt!540242 () Unit!26124)

(declare-fun Forall2of!47 (Int BalanceConc!11100 BalanceConc!11100) Unit!26124)

(assert (=> d!462122 (= lt!540242 (Forall2of!47 lambda!66001 (_1!9615 (_1!9616 lt!540108)) lt!540104))))

(assert (=> d!462122 (= (list!6509 (_1!9615 (_1!9616 lt!540108))) (list!6509 lt!540104))))

(assert (=> d!462122 (= (lemmaEqSameImage!156 (transformation!2961 rule!240) (_1!9615 (_1!9616 lt!540108)) lt!540104) lt!540242)))

(declare-fun b_lambda!49023 () Bool)

(assert (=> (not b_lambda!49023) (not d!462122)))

(assert (=> d!462122 t!141481))

(declare-fun b_and!108841 () Bool)

(assert (= b_and!108839 (and (=> t!141481 result!105576) b_and!108841)))

(declare-fun b_lambda!49025 () Bool)

(assert (=> (not b_lambda!49025) (not d!462122)))

(assert (=> d!462122 t!141483))

(declare-fun b_and!108843 () Bool)

(assert (= b_and!108841 (and (=> t!141483 result!105580) b_and!108843)))

(assert (=> d!462122 m!1831096))

(assert (=> d!462122 m!1831354))

(assert (=> d!462122 m!1831320))

(assert (=> d!462122 m!1831134))

(declare-fun m!1831356 () Bool)

(assert (=> d!462122 m!1831356))

(assert (=> b!1559188 d!462122))

(declare-fun d!462124 () Bool)

(declare-fun c!253077 () Bool)

(assert (=> d!462124 (= c!253077 ((_ is Node!5579) (c!253037 totalInput!568)))))

(declare-fun e!1001044 () Bool)

(assert (=> d!462124 (= (inv!22188 (c!253037 totalInput!568)) e!1001044)))

(declare-fun b!1559421 () Bool)

(assert (=> b!1559421 (= e!1001044 (inv!22194 (c!253037 totalInput!568)))))

(declare-fun b!1559422 () Bool)

(declare-fun e!1001045 () Bool)

(assert (=> b!1559422 (= e!1001044 e!1001045)))

(declare-fun res!695648 () Bool)

(assert (=> b!1559422 (= res!695648 (not ((_ is Leaf!8269) (c!253037 totalInput!568))))))

(assert (=> b!1559422 (=> res!695648 e!1001045)))

(declare-fun b!1559423 () Bool)

(assert (=> b!1559423 (= e!1001045 (inv!22195 (c!253037 totalInput!568)))))

(assert (= (and d!462124 c!253077) b!1559421))

(assert (= (and d!462124 (not c!253077)) b!1559422))

(assert (= (and b!1559422 (not res!695648)) b!1559423))

(declare-fun m!1831358 () Bool)

(assert (=> b!1559421 m!1831358))

(declare-fun m!1831360 () Bool)

(assert (=> b!1559423 m!1831360))

(assert (=> b!1559225 d!462124))

(declare-fun d!462126 () Bool)

(assert (=> d!462126 (= (inv!22189 (totalInput!2488 cacheFurthestNullable!103)) (isBalanced!1649 (c!253037 (totalInput!2488 cacheFurthestNullable!103))))))

(declare-fun bs!388844 () Bool)

(assert (= bs!388844 d!462126))

(declare-fun m!1831362 () Bool)

(assert (=> bs!388844 m!1831362))

(assert (=> b!1559205 d!462126))

(declare-fun d!462128 () Bool)

(assert (=> d!462128 (= (valid!1474 cacheFurthestNullable!103) (validCacheMapFurthestNullable!80 (cache!2163 cacheFurthestNullable!103) (totalInput!2488 cacheFurthestNullable!103)))))

(declare-fun bs!388845 () Bool)

(assert (= bs!388845 d!462128))

(assert (=> bs!388845 m!1831346))

(assert (=> b!1559224 d!462128))

(declare-fun e!1001051 () Bool)

(assert (=> b!1559223 (= tp!458130 e!1001051)))

(declare-fun b!1559430 () Bool)

(declare-fun setRes!11060 () Bool)

(declare-fun tp!458143 () Bool)

(assert (=> b!1559430 (= e!1001051 (and setRes!11060 tp!458143))))

(declare-fun condSetEmpty!11060 () Bool)

(assert (=> b!1559430 (= condSetEmpty!11060 (= (_1!9609 (_1!9610 (h!22299 mapDefault!8543))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setElem!11060 () Context!1614)

(declare-fun tp!458144 () Bool)

(declare-fun setNonEmpty!11060 () Bool)

(declare-fun e!1001050 () Bool)

(declare-fun inv!22196 (Context!1614) Bool)

(assert (=> setNonEmpty!11060 (= setRes!11060 (and tp!458144 (inv!22196 setElem!11060) e!1001050))))

(declare-fun setRest!11060 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11060 (= (_1!9609 (_1!9610 (h!22299 mapDefault!8543))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11060 true) setRest!11060))))

(declare-fun setIsEmpty!11060 () Bool)

(assert (=> setIsEmpty!11060 setRes!11060))

(declare-fun b!1559431 () Bool)

(declare-fun tp!458145 () Bool)

(assert (=> b!1559431 (= e!1001050 tp!458145)))

(assert (= (and b!1559430 condSetEmpty!11060) setIsEmpty!11060))

(assert (= (and b!1559430 (not condSetEmpty!11060)) setNonEmpty!11060))

(assert (= setNonEmpty!11060 b!1559431))

(assert (= (and b!1559223 ((_ is Cons!16898) mapDefault!8543)) b!1559430))

(declare-fun m!1831364 () Bool)

(assert (=> setNonEmpty!11060 m!1831364))

(declare-fun e!1001053 () Bool)

(assert (=> b!1559193 (= tp!458126 e!1001053)))

(declare-fun b!1559432 () Bool)

(declare-fun setRes!11061 () Bool)

(declare-fun tp!458146 () Bool)

(assert (=> b!1559432 (= e!1001053 (and setRes!11061 tp!458146))))

(declare-fun condSetEmpty!11061 () Bool)

(assert (=> b!1559432 (= condSetEmpty!11061 (= (_1!9609 (_1!9610 (h!22299 (zeroValue!2093 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun e!1001052 () Bool)

(declare-fun tp!458147 () Bool)

(declare-fun setElem!11061 () Context!1614)

(declare-fun setNonEmpty!11061 () Bool)

(assert (=> setNonEmpty!11061 (= setRes!11061 (and tp!458147 (inv!22196 setElem!11061) e!1001052))))

(declare-fun setRest!11061 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11061 (= (_1!9609 (_1!9610 (h!22299 (zeroValue!2093 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11061 true) setRest!11061))))

(declare-fun setIsEmpty!11061 () Bool)

(assert (=> setIsEmpty!11061 setRes!11061))

(declare-fun b!1559433 () Bool)

(declare-fun tp!458148 () Bool)

(assert (=> b!1559433 (= e!1001052 tp!458148)))

(assert (= (and b!1559432 condSetEmpty!11061) setIsEmpty!11061))

(assert (= (and b!1559432 (not condSetEmpty!11061)) setNonEmpty!11061))

(assert (= setNonEmpty!11061 b!1559433))

(assert (= (and b!1559193 ((_ is Cons!16898) (zeroValue!2093 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103)))))))) b!1559432))

(declare-fun m!1831366 () Bool)

(assert (=> setNonEmpty!11061 m!1831366))

(declare-fun e!1001055 () Bool)

(assert (=> b!1559193 (= tp!458132 e!1001055)))

(declare-fun b!1559434 () Bool)

(declare-fun setRes!11062 () Bool)

(declare-fun tp!458149 () Bool)

(assert (=> b!1559434 (= e!1001055 (and setRes!11062 tp!458149))))

(declare-fun condSetEmpty!11062 () Bool)

(assert (=> b!1559434 (= condSetEmpty!11062 (= (_1!9609 (_1!9610 (h!22299 (minValue!2093 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setNonEmpty!11062 () Bool)

(declare-fun e!1001054 () Bool)

(declare-fun setElem!11062 () Context!1614)

(declare-fun tp!458150 () Bool)

(assert (=> setNonEmpty!11062 (= setRes!11062 (and tp!458150 (inv!22196 setElem!11062) e!1001054))))

(declare-fun setRest!11062 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11062 (= (_1!9609 (_1!9610 (h!22299 (minValue!2093 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11062 true) setRest!11062))))

(declare-fun setIsEmpty!11062 () Bool)

(assert (=> setIsEmpty!11062 setRes!11062))

(declare-fun b!1559435 () Bool)

(declare-fun tp!458151 () Bool)

(assert (=> b!1559435 (= e!1001054 tp!458151)))

(assert (= (and b!1559434 condSetEmpty!11062) setIsEmpty!11062))

(assert (= (and b!1559434 (not condSetEmpty!11062)) setNonEmpty!11062))

(assert (= setNonEmpty!11062 b!1559435))

(assert (= (and b!1559193 ((_ is Cons!16898) (minValue!2093 (v!23761 (underlying!3885 (v!23764 (underlying!3886 (cache!2163 cacheFurthestNullable!103)))))))) b!1559434))

(declare-fun m!1831368 () Bool)

(assert (=> setNonEmpty!11062 m!1831368))

(declare-fun setNonEmpty!11065 () Bool)

(declare-fun setElem!11065 () Context!1614)

(declare-fun e!1001062 () Bool)

(declare-fun setRes!11065 () Bool)

(declare-fun tp!458163 () Bool)

(assert (=> setNonEmpty!11065 (= setRes!11065 (and tp!458163 (inv!22196 setElem!11065) e!1001062))))

(declare-fun setRest!11065 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11065 (= (_2!9612 (h!22300 mapDefault!8542)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11065 true) setRest!11065))))

(declare-fun setIsEmpty!11065 () Bool)

(assert (=> setIsEmpty!11065 setRes!11065))

(declare-fun e!1001063 () Bool)

(declare-fun tp_is_empty!7079 () Bool)

(declare-fun e!1001064 () Bool)

(declare-fun b!1559444 () Bool)

(declare-fun tp!458160 () Bool)

(assert (=> b!1559444 (= e!1001063 (and (inv!22196 (_1!9611 (_1!9612 (h!22300 mapDefault!8542)))) e!1001064 tp_is_empty!7079 setRes!11065 tp!458160))))

(declare-fun condSetEmpty!11065 () Bool)

(assert (=> b!1559444 (= condSetEmpty!11065 (= (_2!9612 (h!22300 mapDefault!8542)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun b!1559445 () Bool)

(declare-fun tp!458162 () Bool)

(assert (=> b!1559445 (= e!1001064 tp!458162)))

(declare-fun b!1559446 () Bool)

(declare-fun tp!458161 () Bool)

(assert (=> b!1559446 (= e!1001062 tp!458161)))

(assert (=> b!1559211 (= tp!458127 e!1001063)))

(assert (= b!1559444 b!1559445))

(assert (= (and b!1559444 condSetEmpty!11065) setIsEmpty!11065))

(assert (= (and b!1559444 (not condSetEmpty!11065)) setNonEmpty!11065))

(assert (= setNonEmpty!11065 b!1559446))

(assert (= (and b!1559211 ((_ is Cons!16899) mapDefault!8542)) b!1559444))

(declare-fun m!1831370 () Bool)

(assert (=> setNonEmpty!11065 m!1831370))

(declare-fun m!1831372 () Bool)

(assert (=> b!1559444 m!1831372))

(declare-fun b!1559455 () Bool)

(declare-fun e!1001071 () Bool)

(declare-fun tp!458175 () Bool)

(assert (=> b!1559455 (= e!1001071 tp!458175)))

(declare-fun setIsEmpty!11068 () Bool)

(declare-fun setRes!11068 () Bool)

(assert (=> setIsEmpty!11068 setRes!11068))

(declare-fun e!1001072 () Bool)

(assert (=> b!1559229 (= tp!458116 e!1001072)))

(declare-fun b!1559456 () Bool)

(declare-fun e!1001073 () Bool)

(declare-fun tp!458178 () Bool)

(assert (=> b!1559456 (= e!1001073 tp!458178)))

(declare-fun b!1559457 () Bool)

(declare-fun tp!458174 () Bool)

(declare-fun tp!458176 () Bool)

(assert (=> b!1559457 (= e!1001072 (and tp!458176 (inv!22196 (_2!9613 (_1!9614 (h!22301 mapDefault!8541)))) e!1001071 tp_is_empty!7079 setRes!11068 tp!458174))))

(declare-fun condSetEmpty!11068 () Bool)

(assert (=> b!1559457 (= condSetEmpty!11068 (= (_2!9614 (h!22301 mapDefault!8541)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setNonEmpty!11068 () Bool)

(declare-fun tp!458177 () Bool)

(declare-fun setElem!11068 () Context!1614)

(assert (=> setNonEmpty!11068 (= setRes!11068 (and tp!458177 (inv!22196 setElem!11068) e!1001073))))

(declare-fun setRest!11068 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11068 (= (_2!9614 (h!22301 mapDefault!8541)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11068 true) setRest!11068))))

(assert (= b!1559457 b!1559455))

(assert (= (and b!1559457 condSetEmpty!11068) setIsEmpty!11068))

(assert (= (and b!1559457 (not condSetEmpty!11068)) setNonEmpty!11068))

(assert (= setNonEmpty!11068 b!1559456))

(assert (= (and b!1559229 ((_ is Cons!16900) mapDefault!8541)) b!1559457))

(declare-fun m!1831374 () Bool)

(assert (=> b!1559457 m!1831374))

(declare-fun m!1831376 () Bool)

(assert (=> setNonEmpty!11068 m!1831376))

(declare-fun b!1559458 () Bool)

(declare-fun e!1001074 () Bool)

(declare-fun tp!458180 () Bool)

(assert (=> b!1559458 (= e!1001074 tp!458180)))

(declare-fun setIsEmpty!11069 () Bool)

(declare-fun setRes!11069 () Bool)

(assert (=> setIsEmpty!11069 setRes!11069))

(declare-fun e!1001075 () Bool)

(assert (=> b!1559192 (= tp!458123 e!1001075)))

(declare-fun b!1559459 () Bool)

(declare-fun e!1001076 () Bool)

(declare-fun tp!458183 () Bool)

(assert (=> b!1559459 (= e!1001076 tp!458183)))

(declare-fun tp!458181 () Bool)

(declare-fun b!1559460 () Bool)

(declare-fun tp!458179 () Bool)

(assert (=> b!1559460 (= e!1001075 (and tp!458181 (inv!22196 (_2!9613 (_1!9614 (h!22301 (zeroValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))))) e!1001074 tp_is_empty!7079 setRes!11069 tp!458179))))

(declare-fun condSetEmpty!11069 () Bool)

(assert (=> b!1559460 (= condSetEmpty!11069 (= (_2!9614 (h!22301 (zeroValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setNonEmpty!11069 () Bool)

(declare-fun setElem!11069 () Context!1614)

(declare-fun tp!458182 () Bool)

(assert (=> setNonEmpty!11069 (= setRes!11069 (and tp!458182 (inv!22196 setElem!11069) e!1001076))))

(declare-fun setRest!11069 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11069 (= (_2!9614 (h!22301 (zeroValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11069 true) setRest!11069))))

(assert (= b!1559460 b!1559458))

(assert (= (and b!1559460 condSetEmpty!11069) setIsEmpty!11069))

(assert (= (and b!1559460 (not condSetEmpty!11069)) setNonEmpty!11069))

(assert (= setNonEmpty!11069 b!1559459))

(assert (= (and b!1559192 ((_ is Cons!16900) (zeroValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))) b!1559460))

(declare-fun m!1831378 () Bool)

(assert (=> b!1559460 m!1831378))

(declare-fun m!1831380 () Bool)

(assert (=> setNonEmpty!11069 m!1831380))

(declare-fun b!1559461 () Bool)

(declare-fun e!1001077 () Bool)

(declare-fun tp!458185 () Bool)

(assert (=> b!1559461 (= e!1001077 tp!458185)))

(declare-fun setIsEmpty!11070 () Bool)

(declare-fun setRes!11070 () Bool)

(assert (=> setIsEmpty!11070 setRes!11070))

(declare-fun e!1001078 () Bool)

(assert (=> b!1559192 (= tp!458120 e!1001078)))

(declare-fun b!1559462 () Bool)

(declare-fun e!1001079 () Bool)

(declare-fun tp!458188 () Bool)

(assert (=> b!1559462 (= e!1001079 tp!458188)))

(declare-fun tp!458186 () Bool)

(declare-fun b!1559463 () Bool)

(declare-fun tp!458184 () Bool)

(assert (=> b!1559463 (= e!1001078 (and tp!458186 (inv!22196 (_2!9613 (_1!9614 (h!22301 (minValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))))) e!1001077 tp_is_empty!7079 setRes!11070 tp!458184))))

(declare-fun condSetEmpty!11070 () Bool)

(assert (=> b!1559463 (= condSetEmpty!11070 (= (_2!9614 (h!22301 (minValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setElem!11070 () Context!1614)

(declare-fun setNonEmpty!11070 () Bool)

(declare-fun tp!458187 () Bool)

(assert (=> setNonEmpty!11070 (= setRes!11070 (and tp!458187 (inv!22196 setElem!11070) e!1001079))))

(declare-fun setRest!11070 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11070 (= (_2!9614 (h!22301 (minValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11070 true) setRest!11070))))

(assert (= b!1559463 b!1559461))

(assert (= (and b!1559463 condSetEmpty!11070) setIsEmpty!11070))

(assert (= (and b!1559463 (not condSetEmpty!11070)) setNonEmpty!11070))

(assert (= setNonEmpty!11070 b!1559462))

(assert (= (and b!1559192 ((_ is Cons!16900) (minValue!2095 (v!23762 (underlying!3883 (v!23763 (underlying!3884 (cache!2162 cacheDown!768)))))))) b!1559463))

(declare-fun m!1831382 () Bool)

(assert (=> b!1559463 m!1831382))

(declare-fun m!1831384 () Bool)

(assert (=> setNonEmpty!11070 m!1831384))

(declare-fun setElem!11071 () Context!1614)

(declare-fun e!1001080 () Bool)

(declare-fun setRes!11071 () Bool)

(declare-fun tp!458192 () Bool)

(declare-fun setNonEmpty!11071 () Bool)

(assert (=> setNonEmpty!11071 (= setRes!11071 (and tp!458192 (inv!22196 setElem!11071) e!1001080))))

(declare-fun setRest!11071 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11071 (= (_2!9612 (h!22300 (zeroValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11071 true) setRest!11071))))

(declare-fun setIsEmpty!11071 () Bool)

(assert (=> setIsEmpty!11071 setRes!11071))

(declare-fun tp!458189 () Bool)

(declare-fun e!1001082 () Bool)

(declare-fun b!1559464 () Bool)

(declare-fun e!1001081 () Bool)

(assert (=> b!1559464 (= e!1001081 (and (inv!22196 (_1!9611 (_1!9612 (h!22300 (zeroValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))))) e!1001082 tp_is_empty!7079 setRes!11071 tp!458189))))

(declare-fun condSetEmpty!11071 () Bool)

(assert (=> b!1559464 (= condSetEmpty!11071 (= (_2!9612 (h!22300 (zeroValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun b!1559465 () Bool)

(declare-fun tp!458191 () Bool)

(assert (=> b!1559465 (= e!1001082 tp!458191)))

(declare-fun b!1559466 () Bool)

(declare-fun tp!458190 () Bool)

(assert (=> b!1559466 (= e!1001080 tp!458190)))

(assert (=> b!1559210 (= tp!458118 e!1001081)))

(assert (= b!1559464 b!1559465))

(assert (= (and b!1559464 condSetEmpty!11071) setIsEmpty!11071))

(assert (= (and b!1559464 (not condSetEmpty!11071)) setNonEmpty!11071))

(assert (= setNonEmpty!11071 b!1559466))

(assert (= (and b!1559210 ((_ is Cons!16899) (zeroValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))) b!1559464))

(declare-fun m!1831386 () Bool)

(assert (=> setNonEmpty!11071 m!1831386))

(declare-fun m!1831388 () Bool)

(assert (=> b!1559464 m!1831388))

(declare-fun e!1001083 () Bool)

(declare-fun setElem!11072 () Context!1614)

(declare-fun setNonEmpty!11072 () Bool)

(declare-fun tp!458196 () Bool)

(declare-fun setRes!11072 () Bool)

(assert (=> setNonEmpty!11072 (= setRes!11072 (and tp!458196 (inv!22196 setElem!11072) e!1001083))))

(declare-fun setRest!11072 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11072 (= (_2!9612 (h!22300 (minValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11072 true) setRest!11072))))

(declare-fun setIsEmpty!11072 () Bool)

(assert (=> setIsEmpty!11072 setRes!11072))

(declare-fun e!1001084 () Bool)

(declare-fun e!1001085 () Bool)

(declare-fun tp!458193 () Bool)

(declare-fun b!1559467 () Bool)

(assert (=> b!1559467 (= e!1001084 (and (inv!22196 (_1!9611 (_1!9612 (h!22300 (minValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))))) e!1001085 tp_is_empty!7079 setRes!11072 tp!458193))))

(declare-fun condSetEmpty!11072 () Bool)

(assert (=> b!1559467 (= condSetEmpty!11072 (= (_2!9612 (h!22300 (minValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun b!1559468 () Bool)

(declare-fun tp!458195 () Bool)

(assert (=> b!1559468 (= e!1001085 tp!458195)))

(declare-fun b!1559469 () Bool)

(declare-fun tp!458194 () Bool)

(assert (=> b!1559469 (= e!1001083 tp!458194)))

(assert (=> b!1559210 (= tp!458125 e!1001084)))

(assert (= b!1559467 b!1559468))

(assert (= (and b!1559467 condSetEmpty!11072) setIsEmpty!11072))

(assert (= (and b!1559467 (not condSetEmpty!11072)) setNonEmpty!11072))

(assert (= setNonEmpty!11072 b!1559469))

(assert (= (and b!1559210 ((_ is Cons!16899) (minValue!2094 (v!23759 (underlying!3881 (v!23760 (underlying!3882 (cache!2161 cacheUp!755)))))))) b!1559467))

(declare-fun m!1831390 () Bool)

(assert (=> setNonEmpty!11072 m!1831390))

(declare-fun m!1831392 () Bool)

(assert (=> b!1559467 m!1831392))

(declare-fun b!1559482 () Bool)

(declare-fun e!1001088 () Bool)

(declare-fun tp!458208 () Bool)

(assert (=> b!1559482 (= e!1001088 tp!458208)))

(declare-fun b!1559481 () Bool)

(declare-fun tp!458210 () Bool)

(declare-fun tp!458209 () Bool)

(assert (=> b!1559481 (= e!1001088 (and tp!458210 tp!458209))))

(assert (=> b!1559219 (= tp!458117 e!1001088)))

(declare-fun b!1559480 () Bool)

(assert (=> b!1559480 (= e!1001088 tp_is_empty!7079)))

(declare-fun b!1559483 () Bool)

(declare-fun tp!458207 () Bool)

(declare-fun tp!458211 () Bool)

(assert (=> b!1559483 (= e!1001088 (and tp!458207 tp!458211))))

(assert (= (and b!1559219 ((_ is ElementMatch!4289) (regex!2961 rule!240))) b!1559480))

(assert (= (and b!1559219 ((_ is Concat!7341) (regex!2961 rule!240))) b!1559481))

(assert (= (and b!1559219 ((_ is Star!4289) (regex!2961 rule!240))) b!1559482))

(assert (= (and b!1559219 ((_ is Union!4289) (regex!2961 rule!240))) b!1559483))

(declare-fun setRes!11077 () Bool)

(declare-fun e!1001104 () Bool)

(declare-fun b!1559498 () Bool)

(declare-fun tp!458234 () Bool)

(declare-fun mapValue!8546 () List!16967)

(declare-fun e!1001102 () Bool)

(assert (=> b!1559498 (= e!1001104 (and (inv!22196 (_1!9611 (_1!9612 (h!22300 mapValue!8546)))) e!1001102 tp_is_empty!7079 setRes!11077 tp!458234))))

(declare-fun condSetEmpty!11077 () Bool)

(assert (=> b!1559498 (= condSetEmpty!11077 (= (_2!9612 (h!22300 mapValue!8546)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setIsEmpty!11077 () Bool)

(assert (=> setIsEmpty!11077 setRes!11077))

(declare-fun condMapEmpty!8546 () Bool)

(declare-fun mapDefault!8546 () List!16967)

(assert (=> mapNonEmpty!8542 (= condMapEmpty!8546 (= mapRest!8541 ((as const (Array (_ BitVec 32) List!16967)) mapDefault!8546)))))

(declare-fun e!1001103 () Bool)

(declare-fun mapRes!8546 () Bool)

(assert (=> mapNonEmpty!8542 (= tp!458134 (and e!1001103 mapRes!8546))))

(declare-fun setNonEmpty!11077 () Bool)

(declare-fun tp!458232 () Bool)

(declare-fun e!1001105 () Bool)

(declare-fun setRes!11078 () Bool)

(declare-fun setElem!11077 () Context!1614)

(assert (=> setNonEmpty!11077 (= setRes!11078 (and tp!458232 (inv!22196 setElem!11077) e!1001105))))

(declare-fun setRest!11078 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11077 (= (_2!9612 (h!22300 mapDefault!8546)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11077 true) setRest!11078))))

(declare-fun b!1559499 () Bool)

(declare-fun tp!458236 () Bool)

(assert (=> b!1559499 (= e!1001105 tp!458236)))

(declare-fun setElem!11078 () Context!1614)

(declare-fun e!1001106 () Bool)

(declare-fun setNonEmpty!11078 () Bool)

(declare-fun tp!458235 () Bool)

(assert (=> setNonEmpty!11078 (= setRes!11077 (and tp!458235 (inv!22196 setElem!11078) e!1001106))))

(declare-fun setRest!11077 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11078 (= (_2!9612 (h!22300 mapValue!8546)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11078 true) setRest!11077))))

(declare-fun b!1559500 () Bool)

(declare-fun tp!458230 () Bool)

(assert (=> b!1559500 (= e!1001106 tp!458230)))

(declare-fun b!1559501 () Bool)

(declare-fun tp!458238 () Bool)

(assert (=> b!1559501 (= e!1001102 tp!458238)))

(declare-fun mapIsEmpty!8546 () Bool)

(assert (=> mapIsEmpty!8546 mapRes!8546))

(declare-fun b!1559502 () Bool)

(declare-fun e!1001101 () Bool)

(declare-fun tp!458233 () Bool)

(assert (=> b!1559502 (= e!1001101 tp!458233)))

(declare-fun tp!458237 () Bool)

(declare-fun b!1559503 () Bool)

(assert (=> b!1559503 (= e!1001103 (and (inv!22196 (_1!9611 (_1!9612 (h!22300 mapDefault!8546)))) e!1001101 tp_is_empty!7079 setRes!11078 tp!458237))))

(declare-fun condSetEmpty!11078 () Bool)

(assert (=> b!1559503 (= condSetEmpty!11078 (= (_2!9612 (h!22300 mapDefault!8546)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setIsEmpty!11078 () Bool)

(assert (=> setIsEmpty!11078 setRes!11078))

(declare-fun mapNonEmpty!8546 () Bool)

(declare-fun tp!458231 () Bool)

(assert (=> mapNonEmpty!8546 (= mapRes!8546 (and tp!458231 e!1001104))))

(declare-fun mapRest!8546 () (Array (_ BitVec 32) List!16967))

(declare-fun mapKey!8546 () (_ BitVec 32))

(assert (=> mapNonEmpty!8546 (= mapRest!8541 (store mapRest!8546 mapKey!8546 mapValue!8546))))

(assert (= (and mapNonEmpty!8542 condMapEmpty!8546) mapIsEmpty!8546))

(assert (= (and mapNonEmpty!8542 (not condMapEmpty!8546)) mapNonEmpty!8546))

(assert (= b!1559498 b!1559501))

(assert (= (and b!1559498 condSetEmpty!11077) setIsEmpty!11077))

(assert (= (and b!1559498 (not condSetEmpty!11077)) setNonEmpty!11078))

(assert (= setNonEmpty!11078 b!1559500))

(assert (= (and mapNonEmpty!8546 ((_ is Cons!16899) mapValue!8546)) b!1559498))

(assert (= b!1559503 b!1559502))

(assert (= (and b!1559503 condSetEmpty!11078) setIsEmpty!11078))

(assert (= (and b!1559503 (not condSetEmpty!11078)) setNonEmpty!11077))

(assert (= setNonEmpty!11077 b!1559499))

(assert (= (and mapNonEmpty!8542 ((_ is Cons!16899) mapDefault!8546)) b!1559503))

(declare-fun m!1831394 () Bool)

(assert (=> mapNonEmpty!8546 m!1831394))

(declare-fun m!1831396 () Bool)

(assert (=> b!1559503 m!1831396))

(declare-fun m!1831398 () Bool)

(assert (=> b!1559498 m!1831398))

(declare-fun m!1831400 () Bool)

(assert (=> setNonEmpty!11078 m!1831400))

(declare-fun m!1831402 () Bool)

(assert (=> setNonEmpty!11077 m!1831402))

(declare-fun e!1001107 () Bool)

(declare-fun setRes!11079 () Bool)

(declare-fun tp!458242 () Bool)

(declare-fun setNonEmpty!11079 () Bool)

(declare-fun setElem!11079 () Context!1614)

(assert (=> setNonEmpty!11079 (= setRes!11079 (and tp!458242 (inv!22196 setElem!11079) e!1001107))))

(declare-fun setRest!11079 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11079 (= (_2!9612 (h!22300 mapValue!8542)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11079 true) setRest!11079))))

(declare-fun setIsEmpty!11079 () Bool)

(assert (=> setIsEmpty!11079 setRes!11079))

(declare-fun e!1001109 () Bool)

(declare-fun e!1001108 () Bool)

(declare-fun b!1559504 () Bool)

(declare-fun tp!458239 () Bool)

(assert (=> b!1559504 (= e!1001108 (and (inv!22196 (_1!9611 (_1!9612 (h!22300 mapValue!8542)))) e!1001109 tp_is_empty!7079 setRes!11079 tp!458239))))

(declare-fun condSetEmpty!11079 () Bool)

(assert (=> b!1559504 (= condSetEmpty!11079 (= (_2!9612 (h!22300 mapValue!8542)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun b!1559505 () Bool)

(declare-fun tp!458241 () Bool)

(assert (=> b!1559505 (= e!1001109 tp!458241)))

(declare-fun b!1559506 () Bool)

(declare-fun tp!458240 () Bool)

(assert (=> b!1559506 (= e!1001107 tp!458240)))

(assert (=> mapNonEmpty!8542 (= tp!458115 e!1001108)))

(assert (= b!1559504 b!1559505))

(assert (= (and b!1559504 condSetEmpty!11079) setIsEmpty!11079))

(assert (= (and b!1559504 (not condSetEmpty!11079)) setNonEmpty!11079))

(assert (= setNonEmpty!11079 b!1559506))

(assert (= (and mapNonEmpty!8542 ((_ is Cons!16899) mapValue!8542)) b!1559504))

(declare-fun m!1831404 () Bool)

(assert (=> setNonEmpty!11079 m!1831404))

(declare-fun m!1831406 () Bool)

(assert (=> b!1559504 m!1831406))

(declare-fun setRes!11085 () Bool)

(declare-fun setNonEmpty!11084 () Bool)

(declare-fun e!1001119 () Bool)

(declare-fun setElem!11085 () Context!1614)

(declare-fun tp!458259 () Bool)

(assert (=> setNonEmpty!11084 (= setRes!11085 (and tp!458259 (inv!22196 setElem!11085) e!1001119))))

(declare-fun mapDefault!8549 () List!16966)

(declare-fun setRest!11084 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11084 (= (_1!9609 (_1!9610 (h!22299 mapDefault!8549))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11085 true) setRest!11084))))

(declare-fun b!1559517 () Bool)

(declare-fun e!1001118 () Bool)

(declare-fun tp!458260 () Bool)

(assert (=> b!1559517 (= e!1001118 tp!458260)))

(declare-fun b!1559518 () Bool)

(declare-fun tp!458261 () Bool)

(assert (=> b!1559518 (= e!1001119 tp!458261)))

(declare-fun setIsEmpty!11084 () Bool)

(declare-fun setRes!11084 () Bool)

(assert (=> setIsEmpty!11084 setRes!11084))

(declare-fun mapIsEmpty!8549 () Bool)

(declare-fun mapRes!8549 () Bool)

(assert (=> mapIsEmpty!8549 mapRes!8549))

(declare-fun b!1559519 () Bool)

(declare-fun e!1001120 () Bool)

(declare-fun tp!458262 () Bool)

(assert (=> b!1559519 (= e!1001120 (and setRes!11084 tp!458262))))

(declare-fun condSetEmpty!11084 () Bool)

(declare-fun mapValue!8549 () List!16966)

(assert (=> b!1559519 (= condSetEmpty!11084 (= (_1!9609 (_1!9610 (h!22299 mapValue!8549))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun mapNonEmpty!8549 () Bool)

(declare-fun tp!458263 () Bool)

(assert (=> mapNonEmpty!8549 (= mapRes!8549 (and tp!458263 e!1001120))))

(declare-fun mapKey!8549 () (_ BitVec 32))

(declare-fun mapRest!8549 () (Array (_ BitVec 32) List!16966))

(assert (=> mapNonEmpty!8549 (= mapRest!8543 (store mapRest!8549 mapKey!8549 mapValue!8549))))

(declare-fun tp!458257 () Bool)

(declare-fun setElem!11084 () Context!1614)

(declare-fun setNonEmpty!11085 () Bool)

(assert (=> setNonEmpty!11085 (= setRes!11084 (and tp!458257 (inv!22196 setElem!11084) e!1001118))))

(declare-fun setRest!11085 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11085 (= (_1!9609 (_1!9610 (h!22299 mapValue!8549))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11084 true) setRest!11085))))

(declare-fun setIsEmpty!11085 () Bool)

(assert (=> setIsEmpty!11085 setRes!11085))

(declare-fun condMapEmpty!8549 () Bool)

(assert (=> mapNonEmpty!8543 (= condMapEmpty!8549 (= mapRest!8543 ((as const (Array (_ BitVec 32) List!16966)) mapDefault!8549)))))

(declare-fun e!1001121 () Bool)

(assert (=> mapNonEmpty!8543 (= tp!458111 (and e!1001121 mapRes!8549))))

(declare-fun b!1559520 () Bool)

(declare-fun tp!458258 () Bool)

(assert (=> b!1559520 (= e!1001121 (and setRes!11085 tp!458258))))

(declare-fun condSetEmpty!11085 () Bool)

(assert (=> b!1559520 (= condSetEmpty!11085 (= (_1!9609 (_1!9610 (h!22299 mapDefault!8549))) ((as const (Array Context!1614 Bool)) false)))))

(assert (= (and mapNonEmpty!8543 condMapEmpty!8549) mapIsEmpty!8549))

(assert (= (and mapNonEmpty!8543 (not condMapEmpty!8549)) mapNonEmpty!8549))

(assert (= (and b!1559519 condSetEmpty!11084) setIsEmpty!11084))

(assert (= (and b!1559519 (not condSetEmpty!11084)) setNonEmpty!11085))

(assert (= setNonEmpty!11085 b!1559517))

(assert (= (and mapNonEmpty!8549 ((_ is Cons!16898) mapValue!8549)) b!1559519))

(assert (= (and b!1559520 condSetEmpty!11085) setIsEmpty!11085))

(assert (= (and b!1559520 (not condSetEmpty!11085)) setNonEmpty!11084))

(assert (= setNonEmpty!11084 b!1559518))

(assert (= (and mapNonEmpty!8543 ((_ is Cons!16898) mapDefault!8549)) b!1559520))

(declare-fun m!1831408 () Bool)

(assert (=> setNonEmpty!11084 m!1831408))

(declare-fun m!1831410 () Bool)

(assert (=> mapNonEmpty!8549 m!1831410))

(declare-fun m!1831412 () Bool)

(assert (=> setNonEmpty!11085 m!1831412))

(declare-fun e!1001123 () Bool)

(assert (=> mapNonEmpty!8543 (= tp!458136 e!1001123)))

(declare-fun b!1559521 () Bool)

(declare-fun setRes!11086 () Bool)

(declare-fun tp!458264 () Bool)

(assert (=> b!1559521 (= e!1001123 (and setRes!11086 tp!458264))))

(declare-fun condSetEmpty!11086 () Bool)

(assert (=> b!1559521 (= condSetEmpty!11086 (= (_1!9609 (_1!9610 (h!22299 mapValue!8541))) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setElem!11086 () Context!1614)

(declare-fun e!1001122 () Bool)

(declare-fun setNonEmpty!11086 () Bool)

(declare-fun tp!458265 () Bool)

(assert (=> setNonEmpty!11086 (= setRes!11086 (and tp!458265 (inv!22196 setElem!11086) e!1001122))))

(declare-fun setRest!11086 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11086 (= (_1!9609 (_1!9610 (h!22299 mapValue!8541))) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11086 true) setRest!11086))))

(declare-fun setIsEmpty!11086 () Bool)

(assert (=> setIsEmpty!11086 setRes!11086))

(declare-fun b!1559522 () Bool)

(declare-fun tp!458266 () Bool)

(assert (=> b!1559522 (= e!1001122 tp!458266)))

(assert (= (and b!1559521 condSetEmpty!11086) setIsEmpty!11086))

(assert (= (and b!1559521 (not condSetEmpty!11086)) setNonEmpty!11086))

(assert (= setNonEmpty!11086 b!1559522))

(assert (= (and mapNonEmpty!8543 ((_ is Cons!16898) mapValue!8541)) b!1559521))

(declare-fun m!1831414 () Bool)

(assert (=> setNonEmpty!11086 m!1831414))

(declare-fun e!1001129 () Bool)

(declare-fun b!1559531 () Bool)

(declare-fun tp!458274 () Bool)

(declare-fun tp!458273 () Bool)

(assert (=> b!1559531 (= e!1001129 (and (inv!22188 (left!13718 (c!253037 input!1676))) tp!458274 (inv!22188 (right!14048 (c!253037 input!1676))) tp!458273))))

(declare-fun b!1559533 () Bool)

(declare-fun e!1001128 () Bool)

(declare-fun tp!458275 () Bool)

(assert (=> b!1559533 (= e!1001128 tp!458275)))

(declare-fun b!1559532 () Bool)

(declare-fun inv!22197 (IArray!11163) Bool)

(assert (=> b!1559532 (= e!1001129 (and (inv!22197 (xs!8379 (c!253037 input!1676))) e!1001128))))

(assert (=> b!1559197 (= tp!458128 (and (inv!22188 (c!253037 input!1676)) e!1001129))))

(assert (= (and b!1559197 ((_ is Node!5579) (c!253037 input!1676))) b!1559531))

(assert (= b!1559532 b!1559533))

(assert (= (and b!1559197 ((_ is Leaf!8269) (c!253037 input!1676))) b!1559532))

(declare-fun m!1831416 () Bool)

(assert (=> b!1559531 m!1831416))

(declare-fun m!1831418 () Bool)

(assert (=> b!1559531 m!1831418))

(declare-fun m!1831420 () Bool)

(assert (=> b!1559532 m!1831420))

(assert (=> b!1559197 m!1831140))

(declare-fun tp!458277 () Bool)

(declare-fun b!1559534 () Bool)

(declare-fun e!1001131 () Bool)

(declare-fun tp!458276 () Bool)

(assert (=> b!1559534 (= e!1001131 (and (inv!22188 (left!13718 (c!253037 totalInput!568))) tp!458277 (inv!22188 (right!14048 (c!253037 totalInput!568))) tp!458276))))

(declare-fun b!1559536 () Bool)

(declare-fun e!1001130 () Bool)

(declare-fun tp!458278 () Bool)

(assert (=> b!1559536 (= e!1001130 tp!458278)))

(declare-fun b!1559535 () Bool)

(assert (=> b!1559535 (= e!1001131 (and (inv!22197 (xs!8379 (c!253037 totalInput!568))) e!1001130))))

(assert (=> b!1559225 (= tp!458135 (and (inv!22188 (c!253037 totalInput!568)) e!1001131))))

(assert (= (and b!1559225 ((_ is Node!5579) (c!253037 totalInput!568))) b!1559534))

(assert (= b!1559535 b!1559536))

(assert (= (and b!1559225 ((_ is Leaf!8269) (c!253037 totalInput!568))) b!1559535))

(declare-fun m!1831422 () Bool)

(assert (=> b!1559534 m!1831422))

(declare-fun m!1831424 () Bool)

(assert (=> b!1559534 m!1831424))

(declare-fun m!1831426 () Bool)

(assert (=> b!1559535 m!1831426))

(assert (=> b!1559225 m!1831116))

(declare-fun e!1001133 () Bool)

(declare-fun b!1559537 () Bool)

(declare-fun tp!458280 () Bool)

(declare-fun tp!458279 () Bool)

(assert (=> b!1559537 (= e!1001133 (and (inv!22188 (left!13718 (c!253037 (totalInput!2488 cacheFurthestNullable!103)))) tp!458280 (inv!22188 (right!14048 (c!253037 (totalInput!2488 cacheFurthestNullable!103)))) tp!458279))))

(declare-fun b!1559539 () Bool)

(declare-fun e!1001132 () Bool)

(declare-fun tp!458281 () Bool)

(assert (=> b!1559539 (= e!1001132 tp!458281)))

(declare-fun b!1559538 () Bool)

(assert (=> b!1559538 (= e!1001133 (and (inv!22197 (xs!8379 (c!253037 (totalInput!2488 cacheFurthestNullable!103)))) e!1001132))))

(assert (=> b!1559215 (= tp!458133 (and (inv!22188 (c!253037 (totalInput!2488 cacheFurthestNullable!103))) e!1001133))))

(assert (= (and b!1559215 ((_ is Node!5579) (c!253037 (totalInput!2488 cacheFurthestNullable!103)))) b!1559537))

(assert (= b!1559538 b!1559539))

(assert (= (and b!1559215 ((_ is Leaf!8269) (c!253037 (totalInput!2488 cacheFurthestNullable!103)))) b!1559538))

(declare-fun m!1831428 () Bool)

(assert (=> b!1559537 m!1831428))

(declare-fun m!1831430 () Bool)

(assert (=> b!1559537 m!1831430))

(declare-fun m!1831432 () Bool)

(assert (=> b!1559538 m!1831432))

(assert (=> b!1559215 m!1831076))

(declare-fun tp!458306 () Bool)

(declare-fun e!1001147 () Bool)

(declare-fun e!1001146 () Bool)

(declare-fun mapValue!8552 () List!16968)

(declare-fun setRes!11091 () Bool)

(declare-fun b!1559554 () Bool)

(declare-fun tp!458313 () Bool)

(assert (=> b!1559554 (= e!1001146 (and tp!458306 (inv!22196 (_2!9613 (_1!9614 (h!22301 mapValue!8552)))) e!1001147 tp_is_empty!7079 setRes!11091 tp!458313))))

(declare-fun condSetEmpty!11092 () Bool)

(assert (=> b!1559554 (= condSetEmpty!11092 (= (_2!9614 (h!22301 mapValue!8552)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun tp!458304 () Bool)

(declare-fun setNonEmpty!11091 () Bool)

(declare-fun setElem!11091 () Context!1614)

(declare-fun e!1001148 () Bool)

(assert (=> setNonEmpty!11091 (= setRes!11091 (and tp!458304 (inv!22196 setElem!11091) e!1001148))))

(declare-fun setRest!11092 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11091 (= (_2!9614 (h!22301 mapValue!8552)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11091 true) setRest!11092))))

(declare-fun e!1001149 () Bool)

(declare-fun e!1001150 () Bool)

(declare-fun mapDefault!8552 () List!16968)

(declare-fun tp!458305 () Bool)

(declare-fun b!1559555 () Bool)

(declare-fun tp!458312 () Bool)

(declare-fun setRes!11092 () Bool)

(assert (=> b!1559555 (= e!1001150 (and tp!458312 (inv!22196 (_2!9613 (_1!9614 (h!22301 mapDefault!8552)))) e!1001149 tp_is_empty!7079 setRes!11092 tp!458305))))

(declare-fun condSetEmpty!11091 () Bool)

(assert (=> b!1559555 (= condSetEmpty!11091 (= (_2!9614 (h!22301 mapDefault!8552)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun b!1559556 () Bool)

(declare-fun e!1001151 () Bool)

(declare-fun tp!458314 () Bool)

(assert (=> b!1559556 (= e!1001151 tp!458314)))

(declare-fun b!1559557 () Bool)

(declare-fun tp!458308 () Bool)

(assert (=> b!1559557 (= e!1001147 tp!458308)))

(declare-fun mapNonEmpty!8552 () Bool)

(declare-fun mapRes!8552 () Bool)

(declare-fun tp!458311 () Bool)

(assert (=> mapNonEmpty!8552 (= mapRes!8552 (and tp!458311 e!1001146))))

(declare-fun mapRest!8552 () (Array (_ BitVec 32) List!16968))

(declare-fun mapKey!8552 () (_ BitVec 32))

(assert (=> mapNonEmpty!8552 (= mapRest!8542 (store mapRest!8552 mapKey!8552 mapValue!8552))))

(declare-fun b!1559558 () Bool)

(declare-fun tp!458307 () Bool)

(assert (=> b!1559558 (= e!1001149 tp!458307)))

(declare-fun mapIsEmpty!8552 () Bool)

(assert (=> mapIsEmpty!8552 mapRes!8552))

(declare-fun setIsEmpty!11091 () Bool)

(assert (=> setIsEmpty!11091 setRes!11091))

(declare-fun condMapEmpty!8552 () Bool)

(assert (=> mapNonEmpty!8541 (= condMapEmpty!8552 (= mapRest!8542 ((as const (Array (_ BitVec 32) List!16968)) mapDefault!8552)))))

(assert (=> mapNonEmpty!8541 (= tp!458121 (and e!1001150 mapRes!8552))))

(declare-fun setIsEmpty!11092 () Bool)

(assert (=> setIsEmpty!11092 setRes!11092))

(declare-fun setElem!11092 () Context!1614)

(declare-fun tp!458309 () Bool)

(declare-fun setNonEmpty!11092 () Bool)

(assert (=> setNonEmpty!11092 (= setRes!11092 (and tp!458309 (inv!22196 setElem!11092) e!1001151))))

(declare-fun setRest!11091 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11092 (= (_2!9614 (h!22301 mapDefault!8552)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11092 true) setRest!11091))))

(declare-fun b!1559559 () Bool)

(declare-fun tp!458310 () Bool)

(assert (=> b!1559559 (= e!1001148 tp!458310)))

(assert (= (and mapNonEmpty!8541 condMapEmpty!8552) mapIsEmpty!8552))

(assert (= (and mapNonEmpty!8541 (not condMapEmpty!8552)) mapNonEmpty!8552))

(assert (= b!1559554 b!1559557))

(assert (= (and b!1559554 condSetEmpty!11092) setIsEmpty!11091))

(assert (= (and b!1559554 (not condSetEmpty!11092)) setNonEmpty!11091))

(assert (= setNonEmpty!11091 b!1559559))

(assert (= (and mapNonEmpty!8552 ((_ is Cons!16900) mapValue!8552)) b!1559554))

(assert (= b!1559555 b!1559558))

(assert (= (and b!1559555 condSetEmpty!11091) setIsEmpty!11092))

(assert (= (and b!1559555 (not condSetEmpty!11091)) setNonEmpty!11092))

(assert (= setNonEmpty!11092 b!1559556))

(assert (= (and mapNonEmpty!8541 ((_ is Cons!16900) mapDefault!8552)) b!1559555))

(declare-fun m!1831434 () Bool)

(assert (=> setNonEmpty!11091 m!1831434))

(declare-fun m!1831436 () Bool)

(assert (=> setNonEmpty!11092 m!1831436))

(declare-fun m!1831438 () Bool)

(assert (=> b!1559554 m!1831438))

(declare-fun m!1831440 () Bool)

(assert (=> b!1559555 m!1831440))

(declare-fun m!1831442 () Bool)

(assert (=> mapNonEmpty!8552 m!1831442))

(declare-fun b!1559560 () Bool)

(declare-fun e!1001152 () Bool)

(declare-fun tp!458316 () Bool)

(assert (=> b!1559560 (= e!1001152 tp!458316)))

(declare-fun setIsEmpty!11093 () Bool)

(declare-fun setRes!11093 () Bool)

(assert (=> setIsEmpty!11093 setRes!11093))

(declare-fun e!1001153 () Bool)

(assert (=> mapNonEmpty!8541 (= tp!458119 e!1001153)))

(declare-fun b!1559561 () Bool)

(declare-fun e!1001154 () Bool)

(declare-fun tp!458319 () Bool)

(assert (=> b!1559561 (= e!1001154 tp!458319)))

(declare-fun tp!458315 () Bool)

(declare-fun tp!458317 () Bool)

(declare-fun b!1559562 () Bool)

(assert (=> b!1559562 (= e!1001153 (and tp!458317 (inv!22196 (_2!9613 (_1!9614 (h!22301 mapValue!8543)))) e!1001152 tp_is_empty!7079 setRes!11093 tp!458315))))

(declare-fun condSetEmpty!11093 () Bool)

(assert (=> b!1559562 (= condSetEmpty!11093 (= (_2!9614 (h!22301 mapValue!8543)) ((as const (Array Context!1614 Bool)) false)))))

(declare-fun setNonEmpty!11093 () Bool)

(declare-fun tp!458318 () Bool)

(declare-fun setElem!11093 () Context!1614)

(assert (=> setNonEmpty!11093 (= setRes!11093 (and tp!458318 (inv!22196 setElem!11093) e!1001154))))

(declare-fun setRest!11093 () (InoxSet Context!1614))

(assert (=> setNonEmpty!11093 (= (_2!9614 (h!22301 mapValue!8543)) ((_ map or) (store ((as const (Array Context!1614 Bool)) false) setElem!11093 true) setRest!11093))))

(assert (= b!1559562 b!1559560))

(assert (= (and b!1559562 condSetEmpty!11093) setIsEmpty!11093))

(assert (= (and b!1559562 (not condSetEmpty!11093)) setNonEmpty!11093))

(assert (= setNonEmpty!11093 b!1559561))

(assert (= (and mapNonEmpty!8541 ((_ is Cons!16900) mapValue!8543)) b!1559562))

(declare-fun m!1831444 () Bool)

(assert (=> b!1559562 m!1831444))

(declare-fun m!1831446 () Bool)

(assert (=> setNonEmpty!11093 m!1831446))

(declare-fun b_lambda!49027 () Bool)

(assert (= b_lambda!49025 (or (and b!1559202 b_free!41577) b_lambda!49027)))

(declare-fun b_lambda!49029 () Bool)

(assert (= b_lambda!49023 (or (and b!1559202 b_free!41577) b_lambda!49029)))

(declare-fun b_lambda!49031 () Bool)

(assert (= b_lambda!49015 (or b!1559227 b_lambda!49031)))

(declare-fun bs!388846 () Bool)

(declare-fun d!462130 () Bool)

(assert (= bs!388846 (and d!462130 b!1559227)))

(declare-fun dynLambda!7523 (Int TokenValue!3051) BalanceConc!11100)

(assert (=> bs!388846 (= (dynLambda!7520 lambda!65995 lt!540104) (= (list!6509 (dynLambda!7523 (toChars!4197 (transformation!2961 rule!240)) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) lt!540104))) (list!6509 lt!540104)))))

(declare-fun b_lambda!49039 () Bool)

(assert (=> (not b_lambda!49039) (not bs!388846)))

(declare-fun t!141485 () Bool)

(declare-fun tb!87365 () Bool)

(assert (=> (and b!1559202 (= (toChars!4197 (transformation!2961 rule!240)) (toChars!4197 (transformation!2961 rule!240))) t!141485) tb!87365))

(declare-fun tp!458322 () Bool)

(declare-fun e!1001157 () Bool)

(declare-fun b!1559567 () Bool)

(assert (=> b!1559567 (= e!1001157 (and (inv!22188 (c!253037 (dynLambda!7523 (toChars!4197 (transformation!2961 rule!240)) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) lt!540104)))) tp!458322))))

(declare-fun result!105598 () Bool)

(assert (=> tb!87365 (= result!105598 (and (inv!22189 (dynLambda!7523 (toChars!4197 (transformation!2961 rule!240)) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) lt!540104))) e!1001157))))

(assert (= tb!87365 b!1559567))

(declare-fun m!1831448 () Bool)

(assert (=> b!1559567 m!1831448))

(declare-fun m!1831450 () Bool)

(assert (=> tb!87365 m!1831450))

(assert (=> bs!388846 t!141485))

(declare-fun b_and!108845 () Bool)

(assert (= b_and!108825 (and (=> t!141485 result!105598) b_and!108845)))

(declare-fun b_lambda!49041 () Bool)

(assert (=> (not b_lambda!49041) (not bs!388846)))

(assert (=> bs!388846 t!141483))

(declare-fun b_and!108847 () Bool)

(assert (= b_and!108843 (and (=> t!141483 result!105580) b_and!108847)))

(assert (=> bs!388846 m!1831354))

(declare-fun m!1831452 () Bool)

(assert (=> bs!388846 m!1831452))

(assert (=> bs!388846 m!1831452))

(declare-fun m!1831454 () Bool)

(assert (=> bs!388846 m!1831454))

(assert (=> bs!388846 m!1831354))

(assert (=> bs!388846 m!1831134))

(assert (=> d!462084 d!462130))

(declare-fun b_lambda!49033 () Bool)

(assert (= b_lambda!49017 (or b!1559227 b_lambda!49033)))

(declare-fun bs!388847 () Bool)

(declare-fun d!462132 () Bool)

(assert (= bs!388847 (and d!462132 b!1559227)))

(assert (=> bs!388847 (= (dynLambda!7520 lambda!65995 (_1!9615 (_1!9616 lt!540108))) (= (list!6509 (dynLambda!7523 (toChars!4197 (transformation!2961 rule!240)) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) (_1!9615 (_1!9616 lt!540108))))) (list!6509 (_1!9615 (_1!9616 lt!540108)))))))

(declare-fun b_lambda!49043 () Bool)

(assert (=> (not b_lambda!49043) (not bs!388847)))

(declare-fun t!141487 () Bool)

(declare-fun tb!87367 () Bool)

(assert (=> (and b!1559202 (= (toChars!4197 (transformation!2961 rule!240)) (toChars!4197 (transformation!2961 rule!240))) t!141487) tb!87367))

(declare-fun e!1001158 () Bool)

(declare-fun b!1559568 () Bool)

(declare-fun tp!458323 () Bool)

(assert (=> b!1559568 (= e!1001158 (and (inv!22188 (c!253037 (dynLambda!7523 (toChars!4197 (transformation!2961 rule!240)) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) (_1!9615 (_1!9616 lt!540108)))))) tp!458323))))

(declare-fun result!105602 () Bool)

(assert (=> tb!87367 (= result!105602 (and (inv!22189 (dynLambda!7523 (toChars!4197 (transformation!2961 rule!240)) (dynLambda!7521 (toValue!4338 (transformation!2961 rule!240)) (_1!9615 (_1!9616 lt!540108))))) e!1001158))))

(assert (= tb!87367 b!1559568))

(declare-fun m!1831456 () Bool)

(assert (=> b!1559568 m!1831456))

(declare-fun m!1831458 () Bool)

(assert (=> tb!87367 m!1831458))

(assert (=> bs!388847 t!141487))

(declare-fun b_and!108849 () Bool)

(assert (= b_and!108845 (and (=> t!141487 result!105602) b_and!108849)))

(declare-fun b_lambda!49045 () Bool)

(assert (=> (not b_lambda!49045) (not bs!388847)))

(assert (=> bs!388847 t!141481))

(declare-fun b_and!108851 () Bool)

(assert (= b_and!108847 (and (=> t!141481 result!105576) b_and!108851)))

(assert (=> bs!388847 m!1831320))

(declare-fun m!1831460 () Bool)

(assert (=> bs!388847 m!1831460))

(assert (=> bs!388847 m!1831460))

(declare-fun m!1831462 () Bool)

(assert (=> bs!388847 m!1831462))

(assert (=> bs!388847 m!1831320))

(assert (=> bs!388847 m!1831096))

(assert (=> d!462086 d!462132))

(declare-fun b_lambda!49035 () Bool)

(assert (= b_lambda!49021 (or (and b!1559202 b_free!41577) b_lambda!49035)))

(declare-fun b_lambda!49037 () Bool)

(assert (= b_lambda!49019 (or (and b!1559202 b_free!41577) b_lambda!49037)))

(check-sat (not b!1559537) (not b!1559500) (not d!462088) (not b!1559431) (not tb!87367) (not b!1559357) (not tb!87365) (not b!1559360) (not b!1559358) b_and!108829 (not b!1559465) (not b!1559458) (not b_lambda!49045) tp_is_empty!7079 (not bm!102183) (not b!1559294) (not b!1559399) (not b_next!42283) (not b_lambda!49033) (not setNonEmpty!11062) (not b!1559435) (not b!1559521) (not d!462030) (not b!1559386) (not setNonEmpty!11071) (not b_next!42279) (not setNonEmpty!11091) (not b_lambda!49039) (not setNonEmpty!11084) b_and!108849 (not b!1559379) (not b_lambda!49041) (not setNonEmpty!11060) (not d!462104) (not b!1559413) (not b_next!42287) (not b!1559380) (not b_next!42285) (not d!462084) (not d!462092) (not bm!102190) (not b!1559506) (not b_next!42281) (not d!462066) (not mapNonEmpty!8549) (not b!1559398) (not d!462122) (not b!1559558) (not b!1559534) (not b!1559522) (not b!1559554) (not bm!102184) (not bm!102187) (not b!1559446) (not d!462060) (not d!462100) (not b!1559555) (not b!1559481) (not bm!102188) (not d!462042) (not b!1559423) (not b!1559536) (not b!1559517) (not b!1559338) (not b!1559197) (not bm!102185) (not setNonEmpty!11078) (not d!462076) b_and!108831 (not b!1559336) (not b!1559501) (not b_lambda!49037) (not bm!102186) (not b!1559499) (not setNonEmpty!11061) (not setNonEmpty!11077) (not setNonEmpty!11085) (not b_lambda!49043) (not b!1559457) (not b!1559430) (not b!1559556) (not b!1559215) (not b!1559345) (not d!462090) (not b_next!42291) (not d!462078) (not d!462040) (not b!1559535) (not b!1559504) (not d!462098) (not b!1559242) (not b_next!42289) (not b!1559460) (not b!1559445) (not b!1559225) (not b!1559468) (not bs!388846) (not b!1559461) (not b_lambda!49029) (not b!1559382) (not b!1559434) (not b!1559298) (not b!1559482) (not tb!87361) (not setNonEmpty!11079) (not mapNonEmpty!8546) (not setNonEmpty!11092) (not b!1559561) (not b!1559533) (not b!1559557) (not b!1559505) (not b!1559520) (not b!1559456) (not b!1559498) (not d!462068) (not b!1559287) (not setNonEmpty!11072) b_and!108851 (not b!1559518) (not b!1559291) (not b!1559463) (not b!1559385) (not d!462106) (not d!462128) (not b!1559455) (not d!462070) (not d!462044) (not b!1559466) (not b!1559254) (not setNonEmpty!11069) (not b!1559387) (not d!462046) (not bm!102189) (not b!1559303) (not b!1559519) (not setNonEmpty!11068) (not bm!102193) (not d!462116) (not b!1559560) (not b!1559251) (not setNonEmpty!11065) (not b!1559383) (not b!1559348) (not b!1559502) (not mapNonEmpty!8552) (not b!1559334) (not b!1559355) (not b!1559531) (not b_next!42293) b_and!108821 (not b!1559568) (not b!1559433) (not b!1559464) (not b!1559539) b_and!108827 (not d!462062) (not b_lambda!49027) (not b!1559462) (not b!1559381) (not b!1559467) (not b!1559532) (not b!1559444) (not setNonEmpty!11093) (not d!462126) (not b!1559404) (not b!1559249) (not b!1559503) (not b!1559559) (not b!1559410) (not tb!87363) (not d!462080) (not b!1559339) (not b!1559407) (not setNonEmpty!11070) (not d!462082) (not b!1559538) (not setNonEmpty!11086) (not d!462118) (not b_lambda!49035) (not b!1559567) (not b!1559340) (not d!462112) (not b!1559459) b_and!108833 (not b!1559469) (not d!462086) (not bs!388847) (not b!1559421) b_and!108835 (not b_lambda!49031) (not b!1559483) (not b!1559400) (not b!1559562) (not d!462096) (not b!1559432))
(check-sat b_and!108829 (not b_next!42283) (not b_next!42279) b_and!108849 (not b_next!42281) b_and!108831 b_and!108851 (not b_next!42293) b_and!108833 b_and!108835 (not b_next!42287) (not b_next!42285) (not b_next!42291) (not b_next!42289) b_and!108821 b_and!108827)
