; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144592 () Bool)

(assert start!144592)

(declare-fun b!1558330 () Bool)

(declare-fun b_free!41511 () Bool)

(declare-fun b_next!42215 () Bool)

(assert (=> b!1558330 (= b_free!41511 (not b_next!42215))))

(declare-fun tp!457619 () Bool)

(declare-fun b_and!108741 () Bool)

(assert (=> b!1558330 (= tp!457619 b_and!108741)))

(declare-fun b_free!41513 () Bool)

(declare-fun b_next!42217 () Bool)

(assert (=> b!1558330 (= b_free!41513 (not b_next!42217))))

(declare-fun tp!457600 () Bool)

(declare-fun b_and!108743 () Bool)

(assert (=> b!1558330 (= tp!457600 b_and!108743)))

(declare-fun b!1558346 () Bool)

(declare-fun b_free!41515 () Bool)

(declare-fun b_next!42219 () Bool)

(assert (=> b!1558346 (= b_free!41515 (not b_next!42219))))

(declare-fun tp!457605 () Bool)

(declare-fun b_and!108745 () Bool)

(assert (=> b!1558346 (= tp!457605 b_and!108745)))

(declare-fun b!1558318 () Bool)

(declare-fun b_free!41517 () Bool)

(declare-fun b_next!42221 () Bool)

(assert (=> b!1558318 (= b_free!41517 (not b_next!42221))))

(declare-fun tp!457616 () Bool)

(declare-fun b_and!108747 () Bool)

(assert (=> b!1558318 (= tp!457616 b_and!108747)))

(declare-fun b!1558347 () Bool)

(declare-fun b_free!41519 () Bool)

(declare-fun b_next!42223 () Bool)

(assert (=> b!1558347 (= b_free!41519 (not b_next!42223))))

(declare-fun tp!457621 () Bool)

(declare-fun b_and!108749 () Bool)

(assert (=> b!1558347 (= tp!457621 b_and!108749)))

(declare-fun b!1558329 () Bool)

(declare-fun b_free!41521 () Bool)

(declare-fun b_next!42225 () Bool)

(assert (=> b!1558329 (= b_free!41521 (not b_next!42225))))

(declare-fun tp!457601 () Bool)

(declare-fun b_and!108751 () Bool)

(assert (=> b!1558329 (= tp!457601 b_and!108751)))

(declare-fun b!1558355 () Bool)

(declare-fun b_free!41523 () Bool)

(declare-fun b_next!42227 () Bool)

(assert (=> b!1558355 (= b_free!41523 (not b_next!42227))))

(declare-fun tp!457599 () Bool)

(declare-fun b_and!108753 () Bool)

(assert (=> b!1558355 (= tp!457599 b_and!108753)))

(declare-fun b!1558351 () Bool)

(declare-fun b_free!41525 () Bool)

(declare-fun b_next!42229 () Bool)

(assert (=> b!1558351 (= b_free!41525 (not b_next!42229))))

(declare-fun tp!457615 () Bool)

(declare-fun b_and!108755 () Bool)

(assert (=> b!1558351 (= tp!457615 b_and!108755)))

(declare-fun b!1558364 () Bool)

(declare-fun e!1000232 () Bool)

(assert (=> b!1558364 (= e!1000232 true)))

(declare-fun b!1558363 () Bool)

(declare-fun e!1000231 () Bool)

(assert (=> b!1558363 (= e!1000231 e!1000232)))

(declare-fun b!1558344 () Bool)

(assert (=> b!1558344 e!1000231))

(assert (= b!1558363 b!1558364))

(assert (= b!1558344 b!1558363))

(declare-datatypes ((List!16939 0))(
  ( (Nil!16871) (Cons!16871 (h!22272 (_ BitVec 16)) (t!141442 List!16939)) )
))
(declare-datatypes ((TokenValue!3047 0))(
  ( (FloatLiteralValue!6094 (text!21774 List!16939)) (TokenValueExt!3046 (__x!11281 Int)) (Broken!15235 (value!93885 List!16939)) (Object!3114) (End!3047) (Def!3047) (Underscore!3047) (Match!3047) (Else!3047) (Error!3047) (Case!3047) (If!3047) (Extends!3047) (Abstract!3047) (Class!3047) (Val!3047) (DelimiterValue!6094 (del!3107 List!16939)) (KeywordValue!3053 (value!93886 List!16939)) (CommentValue!6094 (value!93887 List!16939)) (WhitespaceValue!6094 (value!93888 List!16939)) (IndentationValue!3047 (value!93889 List!16939)) (String!19522) (Int32!3047) (Broken!15236 (value!93890 List!16939)) (Boolean!3048) (Unit!26109) (OperatorValue!3050 (op!3107 List!16939)) (IdentifierValue!6094 (value!93891 List!16939)) (IdentifierValue!6095 (value!93892 List!16939)) (WhitespaceValue!6095 (value!93893 List!16939)) (True!6094) (False!6094) (Broken!15237 (value!93894 List!16939)) (Broken!15238 (value!93895 List!16939)) (True!6095) (RightBrace!3047) (RightBracket!3047) (Colon!3047) (Null!3047) (Comma!3047) (LeftBracket!3047) (False!6095) (LeftBrace!3047) (ImaginaryLiteralValue!3047 (text!21775 List!16939)) (StringLiteralValue!9141 (value!93896 List!16939)) (EOFValue!3047 (value!93897 List!16939)) (IdentValue!3047 (value!93898 List!16939)) (DelimiterValue!6095 (value!93899 List!16939)) (DedentValue!3047 (value!93900 List!16939)) (NewLineValue!3047 (value!93901 List!16939)) (IntegerValue!9141 (value!93902 (_ BitVec 32)) (text!21776 List!16939)) (IntegerValue!9142 (value!93903 Int) (text!21777 List!16939)) (Times!3047) (Or!3047) (Equal!3047) (Minus!3047) (Broken!15239 (value!93904 List!16939)) (And!3047) (Div!3047) (LessEqual!3047) (Mod!3047) (Concat!7332) (Not!3047) (Plus!3047) (SpaceValue!3047 (value!93905 List!16939)) (IntegerValue!9143 (value!93906 Int) (text!21778 List!16939)) (StringLiteralValue!9142 (text!21779 List!16939)) (FloatLiteralValue!6095 (text!21780 List!16939)) (BytesLiteralValue!3047 (value!93907 List!16939)) (CommentValue!6095 (value!93908 List!16939)) (StringLiteralValue!9143 (value!93909 List!16939)) (ErrorTokenValue!3047 (msg!3108 List!16939)) )
))
(declare-datatypes ((C!8748 0))(
  ( (C!8749 (val!4946 Int)) )
))
(declare-datatypes ((List!16940 0))(
  ( (Nil!16872) (Cons!16872 (h!22273 C!8748) (t!141443 List!16940)) )
))
(declare-datatypes ((IArray!11155 0))(
  ( (IArray!11156 (innerList!5635 List!16940)) )
))
(declare-datatypes ((Conc!5575 0))(
  ( (Node!5575 (left!13704 Conc!5575) (right!14034 Conc!5575) (csize!11380 Int) (cheight!5786 Int)) (Leaf!8263 (xs!8375 IArray!11155) (csize!11381 Int)) (Empty!5575) )
))
(declare-datatypes ((BalanceConc!11092 0))(
  ( (BalanceConc!11093 (c!252986 Conc!5575)) )
))
(declare-datatypes ((String!19523 0))(
  ( (String!19524 (value!93910 String)) )
))
(declare-datatypes ((Regex!4285 0))(
  ( (ElementMatch!4285 (c!252987 C!8748)) (Concat!7333 (regOne!9082 Regex!4285) (regTwo!9082 Regex!4285)) (EmptyExpr!4285) (Star!4285 (reg!4614 Regex!4285)) (EmptyLang!4285) (Union!4285 (regOne!9083 Regex!4285) (regTwo!9083 Regex!4285)) )
))
(declare-datatypes ((TokenValueInjection!5754 0))(
  ( (TokenValueInjection!5755 (toValue!4333 Int) (toChars!4192 Int)) )
))
(declare-datatypes ((Rule!5714 0))(
  ( (Rule!5715 (regex!2957 Regex!4285) (tag!3221 String!19523) (isSeparator!2957 Bool) (transformation!2957 TokenValueInjection!5754)) )
))
(declare-fun rule!240 () Rule!5714)

(declare-fun order!9965 () Int)

(declare-fun lambda!65961 () Int)

(declare-fun order!9967 () Int)

(declare-fun dynLambda!7501 (Int Int) Int)

(declare-fun dynLambda!7502 (Int Int) Int)

(assert (=> b!1558364 (< (dynLambda!7501 order!9965 (toValue!4333 (transformation!2957 rule!240))) (dynLambda!7502 order!9967 lambda!65961))))

(declare-fun order!9969 () Int)

(declare-fun dynLambda!7503 (Int Int) Int)

(assert (=> b!1558364 (< (dynLambda!7503 order!9969 (toChars!4192 (transformation!2957 rule!240))) (dynLambda!7502 order!9967 lambda!65961))))

(declare-fun b!1558316 () Bool)

(declare-fun e!1000210 () Bool)

(declare-fun tp!457623 () Bool)

(declare-fun mapRes!8498 () Bool)

(assert (=> b!1558316 (= e!1000210 (and tp!457623 mapRes!8498))))

(declare-fun condMapEmpty!8497 () Bool)

(declare-datatypes ((List!16941 0))(
  ( (Nil!16873) (Cons!16873 (h!22274 Regex!4285) (t!141444 List!16941)) )
))
(declare-datatypes ((Context!1606 0))(
  ( (Context!1607 (exprs!1303 List!16941)) )
))
(declare-datatypes ((tuple2!16408 0))(
  ( (tuple2!16409 (_1!9570 Context!1606) (_2!9570 C!8748)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16410 0))(
  ( (tuple2!16411 (_1!9571 tuple2!16408) (_2!9571 (InoxSet Context!1606))) )
))
(declare-datatypes ((List!16942 0))(
  ( (Nil!16874) (Cons!16874 (h!22275 tuple2!16410) (t!141445 List!16942)) )
))
(declare-datatypes ((array!6254 0))(
  ( (array!6255 (arr!2784 (Array (_ BitVec 32) List!16942)) (size!13678 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1768 0))(
  ( (HashableExt!1767 (__x!11282 Int)) )
))
(declare-datatypes ((array!6256 0))(
  ( (array!6257 (arr!2785 (Array (_ BitVec 32) (_ BitVec 64))) (size!13679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3648 0))(
  ( (LongMapFixedSize!3649 (defaultEntry!2184 Int) (mask!5055 (_ BitVec 32)) (extraKeys!2071 (_ BitVec 32)) (zeroValue!2081 List!16942) (minValue!2081 List!16942) (_size!3729 (_ BitVec 32)) (_keys!2118 array!6256) (_values!2103 array!6254) (_vacant!1885 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7181 0))(
  ( (Cell!7182 (v!23728 LongMapFixedSize!3648)) )
))
(declare-datatypes ((MutLongMap!1824 0))(
  ( (LongMap!1824 (underlying!3857 Cell!7181)) (MutLongMapExt!1823 (__x!11283 Int)) )
))
(declare-datatypes ((Cell!7183 0))(
  ( (Cell!7184 (v!23729 MutLongMap!1824)) )
))
(declare-datatypes ((MutableMap!1768 0))(
  ( (MutableMapExt!1767 (__x!11284 Int)) (HashMap!1768 (underlying!3858 Cell!7183) (hashF!3687 Hashable!1768) (_size!3730 (_ BitVec 32)) (defaultValue!1928 Int)) )
))
(declare-datatypes ((CacheUp!1076 0))(
  ( (CacheUp!1077 (cache!2149 MutableMap!1768)) )
))
(declare-fun cacheUp!755 () CacheUp!1076)

(declare-fun mapDefault!8497 () List!16942)

(assert (=> b!1558316 (= condMapEmpty!8497 (= (arr!2784 (_values!2103 (v!23728 (underlying!3857 (v!23729 (underlying!3858 (cache!2149 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16942)) mapDefault!8497)))))

(declare-fun b!1558317 () Bool)

(declare-fun e!1000205 () Bool)

(declare-fun e!1000192 () Bool)

(assert (=> b!1558317 (= e!1000205 e!1000192)))

(declare-fun tp!457622 () Bool)

(declare-fun tp!457624 () Bool)

(declare-fun e!1000193 () Bool)

(declare-datatypes ((tuple3!1824 0))(
  ( (tuple3!1825 (_1!9572 (InoxSet Context!1606)) (_2!9572 Int) (_3!1366 Int)) )
))
(declare-datatypes ((tuple2!16412 0))(
  ( (tuple2!16413 (_1!9573 tuple3!1824) (_2!9573 Int)) )
))
(declare-datatypes ((List!16943 0))(
  ( (Nil!16875) (Cons!16875 (h!22276 tuple2!16412) (t!141446 List!16943)) )
))
(declare-datatypes ((array!6258 0))(
  ( (array!6259 (arr!2786 (Array (_ BitVec 32) List!16943)) (size!13680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3650 0))(
  ( (LongMapFixedSize!3651 (defaultEntry!2185 Int) (mask!5056 (_ BitVec 32)) (extraKeys!2072 (_ BitVec 32)) (zeroValue!2082 List!16943) (minValue!2082 List!16943) (_size!3731 (_ BitVec 32)) (_keys!2119 array!6256) (_values!2104 array!6258) (_vacant!1886 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7185 0))(
  ( (Cell!7186 (v!23730 LongMapFixedSize!3650)) )
))
(declare-datatypes ((Hashable!1769 0))(
  ( (HashableExt!1768 (__x!11285 Int)) )
))
(declare-datatypes ((MutLongMap!1825 0))(
  ( (LongMap!1825 (underlying!3859 Cell!7185)) (MutLongMapExt!1824 (__x!11286 Int)) )
))
(declare-datatypes ((Cell!7187 0))(
  ( (Cell!7188 (v!23731 MutLongMap!1825)) )
))
(declare-datatypes ((MutableMap!1769 0))(
  ( (MutableMapExt!1768 (__x!11287 Int)) (HashMap!1769 (underlying!3860 Cell!7187) (hashF!3688 Hashable!1769) (_size!3732 (_ BitVec 32)) (defaultValue!1929 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!506 0))(
  ( (CacheFurthestNullable!507 (cache!2150 MutableMap!1769) (totalInput!2482 BalanceConc!11092)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!506)

(declare-fun e!1000220 () Bool)

(declare-fun array_inv!2003 (array!6256) Bool)

(declare-fun array_inv!2004 (array!6258) Bool)

(assert (=> b!1558318 (= e!1000193 (and tp!457616 tp!457624 tp!457622 (array_inv!2003 (_keys!2119 (v!23730 (underlying!3859 (v!23731 (underlying!3860 (cache!2150 cacheFurthestNullable!103))))))) (array_inv!2004 (_values!2104 (v!23730 (underlying!3859 (v!23731 (underlying!3860 (cache!2150 cacheFurthestNullable!103))))))) e!1000220))))

(declare-fun b!1558319 () Bool)

(declare-fun e!1000206 () Bool)

(declare-fun tp!457617 () Bool)

(declare-fun inv!22162 (Conc!5575) Bool)

(assert (=> b!1558319 (= e!1000206 (and (inv!22162 (c!252986 (totalInput!2482 cacheFurthestNullable!103))) tp!457617))))

(declare-fun mapNonEmpty!8496 () Bool)

(declare-fun mapRes!8497 () Bool)

(declare-fun tp!457602 () Bool)

(declare-fun tp!457625 () Bool)

(assert (=> mapNonEmpty!8496 (= mapRes!8497 (and tp!457602 tp!457625))))

(declare-fun mapKey!8497 () (_ BitVec 32))

(declare-datatypes ((tuple3!1826 0))(
  ( (tuple3!1827 (_1!9574 Regex!4285) (_2!9574 Context!1606) (_3!1367 C!8748)) )
))
(declare-datatypes ((tuple2!16414 0))(
  ( (tuple2!16415 (_1!9575 tuple3!1826) (_2!9575 (InoxSet Context!1606))) )
))
(declare-datatypes ((List!16944 0))(
  ( (Nil!16876) (Cons!16876 (h!22277 tuple2!16414) (t!141447 List!16944)) )
))
(declare-fun mapRest!8498 () (Array (_ BitVec 32) List!16944))

(declare-fun mapValue!8498 () List!16944)

(declare-datatypes ((array!6260 0))(
  ( (array!6261 (arr!2787 (Array (_ BitVec 32) List!16944)) (size!13681 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3652 0))(
  ( (LongMapFixedSize!3653 (defaultEntry!2186 Int) (mask!5057 (_ BitVec 32)) (extraKeys!2073 (_ BitVec 32)) (zeroValue!2083 List!16944) (minValue!2083 List!16944) (_size!3733 (_ BitVec 32)) (_keys!2120 array!6256) (_values!2105 array!6260) (_vacant!1887 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7189 0))(
  ( (Cell!7190 (v!23732 LongMapFixedSize!3652)) )
))
(declare-datatypes ((MutLongMap!1826 0))(
  ( (LongMap!1826 (underlying!3861 Cell!7189)) (MutLongMapExt!1825 (__x!11288 Int)) )
))
(declare-datatypes ((Cell!7191 0))(
  ( (Cell!7192 (v!23733 MutLongMap!1826)) )
))
(declare-datatypes ((Hashable!1770 0))(
  ( (HashableExt!1769 (__x!11289 Int)) )
))
(declare-datatypes ((MutableMap!1770 0))(
  ( (MutableMapExt!1769 (__x!11290 Int)) (HashMap!1770 (underlying!3862 Cell!7191) (hashF!3689 Hashable!1770) (_size!3734 (_ BitVec 32)) (defaultValue!1930 Int)) )
))
(declare-datatypes ((CacheDown!1082 0))(
  ( (CacheDown!1083 (cache!2151 MutableMap!1770)) )
))
(declare-fun cacheDown!768 () CacheDown!1082)

(assert (=> mapNonEmpty!8496 (= (arr!2787 (_values!2105 (v!23732 (underlying!3861 (v!23733 (underlying!3862 (cache!2151 cacheDown!768))))))) (store mapRest!8498 mapKey!8497 mapValue!8498))))

(declare-fun b!1558320 () Bool)

(declare-fun e!1000204 () Bool)

(declare-fun e!1000219 () Bool)

(assert (=> b!1558320 (= e!1000204 (not e!1000219))))

(declare-fun res!695248 () Bool)

(assert (=> b!1558320 (=> res!695248 e!1000219)))

(declare-fun semiInverseModEq!1119 (Int Int) Bool)

(assert (=> b!1558320 (= res!695248 (not (semiInverseModEq!1119 (toChars!4192 (transformation!2957 rule!240)) (toValue!4333 (transformation!2957 rule!240)))))))

(declare-datatypes ((Unit!26110 0))(
  ( (Unit!26111) )
))
(declare-fun lt!539740 () Unit!26110)

(declare-fun lemmaInv!433 (TokenValueInjection!5754) Unit!26110)

(assert (=> b!1558320 (= lt!539740 (lemmaInv!433 (transformation!2957 rule!240)))))

(declare-fun e!1000221 () Bool)

(assert (=> b!1558320 e!1000221))

(declare-fun res!695246 () Bool)

(assert (=> b!1558320 (=> res!695246 e!1000221)))

(declare-datatypes ((tuple2!16416 0))(
  ( (tuple2!16417 (_1!9576 List!16940) (_2!9576 List!16940)) )
))
(declare-fun lt!539729 () tuple2!16416)

(declare-fun isEmpty!10141 (List!16940) Bool)

(assert (=> b!1558320 (= res!695246 (isEmpty!10141 (_1!9576 lt!539729)))))

(declare-fun lt!539732 () List!16940)

(declare-fun findLongestMatchInner!339 (Regex!4285 List!16940 Int List!16940 List!16940 Int) tuple2!16416)

(declare-fun size!13682 (List!16940) Int)

(assert (=> b!1558320 (= lt!539729 (findLongestMatchInner!339 (regex!2957 rule!240) Nil!16872 (size!13682 Nil!16872) lt!539732 lt!539732 (size!13682 lt!539732)))))

(declare-fun lt!539736 () Unit!26110)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!323 (Regex!4285 List!16940) Unit!26110)

(assert (=> b!1558320 (= lt!539736 (longestMatchIsAcceptedByMatchOrIsEmpty!323 (regex!2957 rule!240) lt!539732))))

(declare-fun b!1558321 () Bool)

(declare-fun e!1000226 () Bool)

(declare-fun totalInput!568 () BalanceConc!11092)

(declare-fun tp!457612 () Bool)

(assert (=> b!1558321 (= e!1000226 (and (inv!22162 (c!252986 totalInput!568)) tp!457612))))

(declare-fun mapIsEmpty!8496 () Bool)

(declare-fun mapRes!8496 () Bool)

(assert (=> mapIsEmpty!8496 mapRes!8496))

(declare-fun b!1558322 () Bool)

(declare-fun e!1000190 () Bool)

(declare-fun input!1676 () BalanceConc!11092)

(declare-fun tp!457613 () Bool)

(assert (=> b!1558322 (= e!1000190 (and (inv!22162 (c!252986 input!1676)) tp!457613))))

(declare-fun b!1558323 () Bool)

(declare-fun res!695250 () Bool)

(declare-fun e!1000191 () Bool)

(assert (=> b!1558323 (=> (not res!695250) (not e!1000191))))

(declare-fun valid!1466 (CacheUp!1076) Bool)

(assert (=> b!1558323 (= res!695250 (valid!1466 cacheUp!755))))

(declare-fun b!1558324 () Bool)

(declare-fun e!1000196 () Bool)

(declare-fun e!1000209 () Bool)

(assert (=> b!1558324 (= e!1000196 e!1000209)))

(declare-fun e!1000199 () Bool)

(declare-fun tp!457618 () Bool)

(declare-fun b!1558325 () Bool)

(declare-fun e!1000200 () Bool)

(declare-fun inv!22161 (String!19523) Bool)

(declare-fun inv!22163 (TokenValueInjection!5754) Bool)

(assert (=> b!1558325 (= e!1000199 (and tp!457618 (inv!22161 (tag!3221 rule!240)) (inv!22163 (transformation!2957 rule!240)) e!1000200))))

(declare-fun b!1558326 () Bool)

(declare-fun e!1000214 () Bool)

(declare-fun e!1000202 () Bool)

(declare-fun lt!539739 () MutLongMap!1826)

(get-info :version)

(assert (=> b!1558326 (= e!1000214 (and e!1000202 ((_ is LongMap!1826) lt!539739)))))

(assert (=> b!1558326 (= lt!539739 (v!23733 (underlying!3862 (cache!2151 cacheDown!768))))))

(declare-fun b!1558327 () Bool)

(declare-fun res!695240 () Bool)

(declare-fun e!1000224 () Bool)

(assert (=> b!1558327 (=> res!695240 e!1000224)))

(declare-fun lt!539731 () BalanceConc!11092)

(declare-fun lt!539730 () List!16940)

(declare-fun list!6505 (BalanceConc!11092) List!16940)

(assert (=> b!1558327 (= res!695240 (not (= (list!6505 lt!539731) lt!539730)))))

(declare-fun b!1558328 () Bool)

(assert (=> b!1558328 (= e!1000192 e!1000193)))

(declare-fun e!1000225 () Bool)

(declare-fun e!1000222 () Bool)

(assert (=> b!1558329 (= e!1000225 (and e!1000222 tp!457601))))

(assert (=> b!1558330 (= e!1000200 (and tp!457619 tp!457600))))

(declare-fun mapIsEmpty!8497 () Bool)

(assert (=> mapIsEmpty!8497 mapRes!8498))

(declare-fun b!1558331 () Bool)

(declare-fun matchR!1884 (Regex!4285 List!16940) Bool)

(assert (=> b!1558331 (= e!1000221 (matchR!1884 (regex!2957 rule!240) (_1!9576 lt!539729)))))

(declare-fun b!1558332 () Bool)

(declare-fun res!695249 () Bool)

(assert (=> b!1558332 (=> res!695249 e!1000224)))

(declare-fun lt!539728 () Bool)

(assert (=> b!1558332 (= res!695249 (not lt!539728))))

(declare-fun mapNonEmpty!8497 () Bool)

(declare-fun tp!457610 () Bool)

(declare-fun tp!457611 () Bool)

(assert (=> mapNonEmpty!8497 (= mapRes!8498 (and tp!457610 tp!457611))))

(declare-fun mapValue!8496 () List!16942)

(declare-fun mapKey!8496 () (_ BitVec 32))

(declare-fun mapRest!8497 () (Array (_ BitVec 32) List!16942))

(assert (=> mapNonEmpty!8497 (= (arr!2784 (_values!2103 (v!23728 (underlying!3857 (v!23729 (underlying!3858 (cache!2149 cacheUp!755))))))) (store mapRest!8497 mapKey!8496 mapValue!8496))))

(declare-fun b!1558333 () Bool)

(declare-fun e!1000215 () Bool)

(declare-fun lt!539735 () MutLongMap!1824)

(assert (=> b!1558333 (= e!1000222 (and e!1000215 ((_ is LongMap!1824) lt!539735)))))

(assert (=> b!1558333 (= lt!539735 (v!23729 (underlying!3858 (cache!2149 cacheUp!755))))))

(declare-fun b!1558334 () Bool)

(assert (=> b!1558334 (= e!1000202 e!1000196)))

(declare-fun b!1558335 () Bool)

(declare-fun e!1000207 () Bool)

(declare-fun e!1000201 () Bool)

(assert (=> b!1558335 (= e!1000207 e!1000201)))

(declare-fun b!1558336 () Bool)

(declare-fun e!1000217 () Bool)

(declare-fun e!1000194 () Bool)

(assert (=> b!1558336 (= e!1000217 e!1000194)))

(declare-fun b!1558337 () Bool)

(declare-fun e!1000212 () Bool)

(assert (=> b!1558337 (= e!1000224 e!1000212)))

(declare-fun res!695252 () Bool)

(assert (=> b!1558337 (=> res!695252 e!1000212)))

(declare-fun lt!539722 () TokenValue!3047)

(declare-fun apply!4116 (TokenValueInjection!5754 BalanceConc!11092) TokenValue!3047)

(assert (=> b!1558337 (= res!695252 (not (= (apply!4116 (transformation!2957 rule!240) lt!539731) lt!539722)))))

(declare-datatypes ((tuple2!16418 0))(
  ( (tuple2!16419 (_1!9577 BalanceConc!11092) (_2!9577 BalanceConc!11092)) )
))
(declare-datatypes ((tuple4!908 0))(
  ( (tuple4!909 (_1!9578 tuple2!16418) (_2!9578 CacheUp!1076) (_3!1368 CacheDown!1082) (_4!454 CacheFurthestNullable!506)) )
))
(declare-fun lt!539726 () tuple4!908)

(declare-fun lt!539733 () Unit!26110)

(declare-fun lemmaEqSameImage!154 (TokenValueInjection!5754 BalanceConc!11092 BalanceConc!11092) Unit!26110)

(assert (=> b!1558337 (= lt!539733 (lemmaEqSameImage!154 (transformation!2957 rule!240) (_1!9577 (_1!9578 lt!539726)) lt!539731))))

(declare-fun b!1558338 () Bool)

(declare-fun e!1000216 () Bool)

(assert (=> b!1558338 (= e!1000216 e!1000225)))

(declare-fun b!1558339 () Bool)

(declare-fun res!695238 () Bool)

(declare-fun e!1000211 () Bool)

(assert (=> b!1558339 (=> (not res!695238) (not e!1000211))))

(assert (=> b!1558339 (= res!695238 (= (totalInput!2482 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1558340 () Bool)

(assert (=> b!1558340 (= e!1000211 e!1000204)))

(declare-fun res!695239 () Bool)

(assert (=> b!1558340 (=> (not res!695239) (not e!1000204))))

(declare-fun isEmpty!10142 (BalanceConc!11092) Bool)

(assert (=> b!1558340 (= res!695239 (not (isEmpty!10142 (_1!9577 (_1!9578 lt!539726)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!56 (Regex!4285 BalanceConc!11092 BalanceConc!11092 CacheUp!1076 CacheDown!1082 CacheFurthestNullable!506) tuple4!908)

(assert (=> b!1558340 (= lt!539726 (findLongestMatchWithZipperSequenceV3Mem!56 (regex!2957 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun res!695251 () Bool)

(assert (=> start!144592 (=> (not res!695251) (not e!1000191))))

(declare-datatypes ((LexerInterface!2591 0))(
  ( (LexerInterfaceExt!2588 (__x!11291 Int)) (Lexer!2589) )
))
(declare-fun thiss!16438 () LexerInterface!2591)

(assert (=> start!144592 (= res!695251 ((_ is Lexer!2589) thiss!16438))))

(assert (=> start!144592 e!1000191))

(declare-fun inv!22164 (BalanceConc!11092) Bool)

(assert (=> start!144592 (and (inv!22164 totalInput!568) e!1000226)))

(declare-fun inv!22165 (CacheUp!1076) Bool)

(assert (=> start!144592 (and (inv!22165 cacheUp!755) e!1000216)))

(declare-fun e!1000213 () Bool)

(declare-fun inv!22166 (CacheFurthestNullable!506) Bool)

(assert (=> start!144592 (and (inv!22166 cacheFurthestNullable!103) e!1000213)))

(assert (=> start!144592 (and (inv!22164 input!1676) e!1000190)))

(assert (=> start!144592 e!1000199))

(declare-fun inv!22167 (CacheDown!1082) Bool)

(assert (=> start!144592 (and (inv!22167 cacheDown!768) e!1000207)))

(assert (=> start!144592 true))

(declare-fun mapIsEmpty!8498 () Bool)

(assert (=> mapIsEmpty!8498 mapRes!8497))

(declare-fun mapNonEmpty!8498 () Bool)

(declare-fun tp!457614 () Bool)

(declare-fun tp!457620 () Bool)

(assert (=> mapNonEmpty!8498 (= mapRes!8496 (and tp!457614 tp!457620))))

(declare-fun mapRest!8496 () (Array (_ BitVec 32) List!16943))

(declare-fun mapKey!8498 () (_ BitVec 32))

(declare-fun mapValue!8497 () List!16943)

(assert (=> mapNonEmpty!8498 (= (arr!2786 (_values!2104 (v!23730 (underlying!3859 (v!23731 (underlying!3860 (cache!2150 cacheFurthestNullable!103))))))) (store mapRest!8496 mapKey!8498 mapValue!8497))))

(declare-fun lt!539737 () Int)

(declare-datatypes ((Token!5490 0))(
  ( (Token!5491 (value!93911 TokenValue!3047) (rule!4743 Rule!5714) (size!13683 Int) (originalCharacters!3776 List!16940)) )
))
(declare-datatypes ((tuple2!16420 0))(
  ( (tuple2!16421 (_1!9579 Token!5490) (_2!9579 List!16940)) )
))
(declare-fun lt!539734 () tuple2!16420)

(declare-fun b!1558341 () Bool)

(declare-fun lt!539723 () Token!5490)

(assert (=> b!1558341 (= e!1000212 (or (not (= (value!93911 (_1!9579 lt!539734)) lt!539722)) (not (= (rule!4743 (_1!9579 lt!539734)) rule!240)) (not (= (size!13683 (_1!9579 lt!539734)) lt!539737)) (not (= (originalCharacters!3776 (_1!9579 lt!539734)) lt!539730)) (= lt!539723 (_1!9579 lt!539734))))))

(declare-datatypes ((Option!3050 0))(
  ( (None!3049) (Some!3049 (v!23734 tuple2!16420)) )
))
(declare-fun lt!539727 () Option!3050)

(declare-fun get!4860 (Option!3050) tuple2!16420)

(assert (=> b!1558341 (= lt!539734 (get!4860 lt!539727))))

(declare-fun b!1558342 () Bool)

(assert (=> b!1558342 (= e!1000191 e!1000211)))

(declare-fun res!695243 () Bool)

(assert (=> b!1558342 (=> (not res!695243) (not e!1000211))))

(declare-fun isSuffix!381 (List!16940 List!16940) Bool)

(assert (=> b!1558342 (= res!695243 (isSuffix!381 lt!539732 (list!6505 totalInput!568)))))

(assert (=> b!1558342 (= lt!539732 (list!6505 input!1676))))

(declare-fun b!1558343 () Bool)

(declare-fun res!695242 () Bool)

(assert (=> b!1558343 (=> (not res!695242) (not e!1000191))))

(declare-fun ruleValid!690 (LexerInterface!2591 Rule!5714) Bool)

(assert (=> b!1558343 (= res!695242 (ruleValid!690 thiss!16438 rule!240))))

(declare-fun res!695244 () Bool)

(assert (=> b!1558344 (=> res!695244 e!1000219)))

(declare-fun Forall!615 (Int) Bool)

(assert (=> b!1558344 (= res!695244 (not (Forall!615 lambda!65961)))))

(declare-fun b!1558345 () Bool)

(declare-fun res!695241 () Bool)

(assert (=> b!1558345 (=> (not res!695241) (not e!1000191))))

(declare-fun valid!1467 (CacheFurthestNullable!506) Bool)

(assert (=> b!1558345 (= res!695241 (valid!1467 cacheFurthestNullable!103))))

(assert (=> b!1558346 (= e!1000201 (and e!1000214 tp!457605))))

(declare-fun e!1000223 () Bool)

(declare-fun e!1000198 () Bool)

(assert (=> b!1558347 (= e!1000223 (and e!1000198 tp!457621))))

(declare-fun b!1558348 () Bool)

(assert (=> b!1558348 (= e!1000213 (and e!1000223 (inv!22164 (totalInput!2482 cacheFurthestNullable!103)) e!1000206))))

(declare-fun b!1558349 () Bool)

(declare-fun tp!457607 () Bool)

(assert (=> b!1558349 (= e!1000220 (and tp!457607 mapRes!8496))))

(declare-fun condMapEmpty!8496 () Bool)

(declare-fun mapDefault!8496 () List!16943)

(assert (=> b!1558349 (= condMapEmpty!8496 (= (arr!2786 (_values!2104 (v!23730 (underlying!3859 (v!23731 (underlying!3860 (cache!2150 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16943)) mapDefault!8496)))))

(declare-fun b!1558350 () Bool)

(declare-fun e!1000197 () Bool)

(declare-fun tp!457603 () Bool)

(assert (=> b!1558350 (= e!1000197 (and tp!457603 mapRes!8497))))

(declare-fun condMapEmpty!8498 () Bool)

(declare-fun mapDefault!8498 () List!16944)

(assert (=> b!1558350 (= condMapEmpty!8498 (= (arr!2787 (_values!2105 (v!23732 (underlying!3861 (v!23733 (underlying!3862 (cache!2151 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16944)) mapDefault!8498)))))

(declare-fun tp!457609 () Bool)

(declare-fun tp!457608 () Bool)

(declare-fun array_inv!2005 (array!6254) Bool)

(assert (=> b!1558351 (= e!1000194 (and tp!457615 tp!457609 tp!457608 (array_inv!2003 (_keys!2118 (v!23728 (underlying!3857 (v!23729 (underlying!3858 (cache!2149 cacheUp!755))))))) (array_inv!2005 (_values!2103 (v!23728 (underlying!3857 (v!23729 (underlying!3858 (cache!2149 cacheUp!755))))))) e!1000210))))

(declare-fun b!1558352 () Bool)

(assert (=> b!1558352 (= e!1000219 e!1000224)))

(declare-fun res!695247 () Bool)

(assert (=> b!1558352 (=> res!695247 e!1000224)))

(declare-fun isDefined!2451 (Option!3050) Bool)

(assert (=> b!1558352 (= res!695247 (not (= lt!539728 (isDefined!2451 lt!539727))))))

(declare-datatypes ((tuple2!16422 0))(
  ( (tuple2!16423 (_1!9580 Token!5490) (_2!9580 BalanceConc!11092)) )
))
(declare-datatypes ((Option!3051 0))(
  ( (None!3050) (Some!3050 (v!23735 tuple2!16422)) )
))
(declare-fun isDefined!2452 (Option!3051) Bool)

(assert (=> b!1558352 (= lt!539728 (isDefined!2452 (Some!3050 (tuple2!16423 lt!539723 (_2!9577 (_1!9578 lt!539726))))))))

(declare-fun maxPrefixOneRule!709 (LexerInterface!2591 Rule!5714 List!16940) Option!3050)

(assert (=> b!1558352 (= lt!539727 (maxPrefixOneRule!709 thiss!16438 rule!240 lt!539732))))

(assert (=> b!1558352 (= lt!539723 (Token!5491 lt!539722 rule!240 lt!539737 lt!539730))))

(declare-fun size!13684 (BalanceConc!11092) Int)

(assert (=> b!1558352 (= lt!539737 (size!13684 (_1!9577 (_1!9578 lt!539726))))))

(assert (=> b!1558352 (= lt!539722 (apply!4116 (transformation!2957 rule!240) (_1!9577 (_1!9578 lt!539726))))))

(declare-fun lt!539724 () Unit!26110)

(declare-fun ForallOf!217 (Int BalanceConc!11092) Unit!26110)

(assert (=> b!1558352 (= lt!539724 (ForallOf!217 lambda!65961 lt!539731))))

(declare-fun seqFromList!1780 (List!16940) BalanceConc!11092)

(assert (=> b!1558352 (= lt!539731 (seqFromList!1780 lt!539730))))

(assert (=> b!1558352 (= lt!539730 (list!6505 (_1!9577 (_1!9578 lt!539726))))))

(declare-fun lt!539738 () Unit!26110)

(assert (=> b!1558352 (= lt!539738 (ForallOf!217 lambda!65961 (_1!9577 (_1!9578 lt!539726))))))

(declare-fun b!1558353 () Bool)

(declare-fun res!695245 () Bool)

(assert (=> b!1558353 (=> (not res!695245) (not e!1000191))))

(declare-fun valid!1468 (CacheDown!1082) Bool)

(assert (=> b!1558353 (= res!695245 (valid!1468 cacheDown!768))))

(declare-fun b!1558354 () Bool)

(assert (=> b!1558354 (= e!1000215 e!1000217)))

(declare-fun tp!457606 () Bool)

(declare-fun tp!457604 () Bool)

(declare-fun array_inv!2006 (array!6260) Bool)

(assert (=> b!1558355 (= e!1000209 (and tp!457599 tp!457606 tp!457604 (array_inv!2003 (_keys!2120 (v!23732 (underlying!3861 (v!23733 (underlying!3862 (cache!2151 cacheDown!768))))))) (array_inv!2006 (_values!2105 (v!23732 (underlying!3861 (v!23733 (underlying!3862 (cache!2151 cacheDown!768))))))) e!1000197))))

(declare-fun b!1558356 () Bool)

(declare-fun lt!539725 () MutLongMap!1825)

(assert (=> b!1558356 (= e!1000198 (and e!1000205 ((_ is LongMap!1825) lt!539725)))))

(assert (=> b!1558356 (= lt!539725 (v!23731 (underlying!3860 (cache!2150 cacheFurthestNullable!103))))))

(assert (= (and start!144592 res!695251) b!1558343))

(assert (= (and b!1558343 res!695242) b!1558323))

(assert (= (and b!1558323 res!695250) b!1558353))

(assert (= (and b!1558353 res!695245) b!1558345))

(assert (= (and b!1558345 res!695241) b!1558342))

(assert (= (and b!1558342 res!695243) b!1558339))

(assert (= (and b!1558339 res!695238) b!1558340))

(assert (= (and b!1558340 res!695239) b!1558320))

(assert (= (and b!1558320 (not res!695246)) b!1558331))

(assert (= (and b!1558320 (not res!695248)) b!1558344))

(assert (= (and b!1558344 (not res!695244)) b!1558352))

(assert (= (and b!1558352 (not res!695247)) b!1558332))

(assert (= (and b!1558332 (not res!695249)) b!1558327))

(assert (= (and b!1558327 (not res!695240)) b!1558337))

(assert (= (and b!1558337 (not res!695252)) b!1558341))

(assert (= start!144592 b!1558321))

(assert (= (and b!1558316 condMapEmpty!8497) mapIsEmpty!8497))

(assert (= (and b!1558316 (not condMapEmpty!8497)) mapNonEmpty!8497))

(assert (= b!1558351 b!1558316))

(assert (= b!1558336 b!1558351))

(assert (= b!1558354 b!1558336))

(assert (= (and b!1558333 ((_ is LongMap!1824) (v!23729 (underlying!3858 (cache!2149 cacheUp!755))))) b!1558354))

(assert (= b!1558329 b!1558333))

(assert (= (and b!1558338 ((_ is HashMap!1768) (cache!2149 cacheUp!755))) b!1558329))

(assert (= start!144592 b!1558338))

(assert (= (and b!1558349 condMapEmpty!8496) mapIsEmpty!8496))

(assert (= (and b!1558349 (not condMapEmpty!8496)) mapNonEmpty!8498))

(assert (= b!1558318 b!1558349))

(assert (= b!1558328 b!1558318))

(assert (= b!1558317 b!1558328))

(assert (= (and b!1558356 ((_ is LongMap!1825) (v!23731 (underlying!3860 (cache!2150 cacheFurthestNullable!103))))) b!1558317))

(assert (= b!1558347 b!1558356))

(assert (= (and b!1558348 ((_ is HashMap!1769) (cache!2150 cacheFurthestNullable!103))) b!1558347))

(assert (= b!1558348 b!1558319))

(assert (= start!144592 b!1558348))

(assert (= start!144592 b!1558322))

(assert (= b!1558325 b!1558330))

(assert (= start!144592 b!1558325))

(assert (= (and b!1558350 condMapEmpty!8498) mapIsEmpty!8498))

(assert (= (and b!1558350 (not condMapEmpty!8498)) mapNonEmpty!8496))

(assert (= b!1558355 b!1558350))

(assert (= b!1558324 b!1558355))

(assert (= b!1558334 b!1558324))

(assert (= (and b!1558326 ((_ is LongMap!1826) (v!23733 (underlying!3862 (cache!2151 cacheDown!768))))) b!1558334))

(assert (= b!1558346 b!1558326))

(assert (= (and b!1558335 ((_ is HashMap!1770) (cache!2151 cacheDown!768))) b!1558346))

(assert (= start!144592 b!1558335))

(declare-fun m!1830348 () Bool)

(assert (=> b!1558323 m!1830348))

(declare-fun m!1830350 () Bool)

(assert (=> b!1558345 m!1830350))

(declare-fun m!1830352 () Bool)

(assert (=> b!1558319 m!1830352))

(declare-fun m!1830354 () Bool)

(assert (=> b!1558325 m!1830354))

(declare-fun m!1830356 () Bool)

(assert (=> b!1558325 m!1830356))

(declare-fun m!1830358 () Bool)

(assert (=> b!1558331 m!1830358))

(declare-fun m!1830360 () Bool)

(assert (=> b!1558337 m!1830360))

(declare-fun m!1830362 () Bool)

(assert (=> b!1558337 m!1830362))

(declare-fun m!1830364 () Bool)

(assert (=> b!1558318 m!1830364))

(declare-fun m!1830366 () Bool)

(assert (=> b!1558318 m!1830366))

(declare-fun m!1830368 () Bool)

(assert (=> b!1558321 m!1830368))

(declare-fun m!1830370 () Bool)

(assert (=> b!1558344 m!1830370))

(declare-fun m!1830372 () Bool)

(assert (=> b!1558322 m!1830372))

(declare-fun m!1830374 () Bool)

(assert (=> b!1558327 m!1830374))

(declare-fun m!1830376 () Bool)

(assert (=> b!1558353 m!1830376))

(declare-fun m!1830378 () Bool)

(assert (=> mapNonEmpty!8496 m!1830378))

(declare-fun m!1830380 () Bool)

(assert (=> b!1558343 m!1830380))

(declare-fun m!1830382 () Bool)

(assert (=> b!1558320 m!1830382))

(declare-fun m!1830384 () Bool)

(assert (=> b!1558320 m!1830384))

(declare-fun m!1830386 () Bool)

(assert (=> b!1558320 m!1830386))

(declare-fun m!1830388 () Bool)

(assert (=> b!1558320 m!1830388))

(declare-fun m!1830390 () Bool)

(assert (=> b!1558320 m!1830390))

(declare-fun m!1830392 () Bool)

(assert (=> b!1558320 m!1830392))

(assert (=> b!1558320 m!1830390))

(assert (=> b!1558320 m!1830384))

(declare-fun m!1830394 () Bool)

(assert (=> b!1558320 m!1830394))

(declare-fun m!1830396 () Bool)

(assert (=> b!1558342 m!1830396))

(assert (=> b!1558342 m!1830396))

(declare-fun m!1830398 () Bool)

(assert (=> b!1558342 m!1830398))

(declare-fun m!1830400 () Bool)

(assert (=> b!1558342 m!1830400))

(declare-fun m!1830402 () Bool)

(assert (=> b!1558351 m!1830402))

(declare-fun m!1830404 () Bool)

(assert (=> b!1558351 m!1830404))

(declare-fun m!1830406 () Bool)

(assert (=> mapNonEmpty!8498 m!1830406))

(declare-fun m!1830408 () Bool)

(assert (=> b!1558352 m!1830408))

(declare-fun m!1830410 () Bool)

(assert (=> b!1558352 m!1830410))

(declare-fun m!1830412 () Bool)

(assert (=> b!1558352 m!1830412))

(declare-fun m!1830414 () Bool)

(assert (=> b!1558352 m!1830414))

(declare-fun m!1830416 () Bool)

(assert (=> b!1558352 m!1830416))

(declare-fun m!1830418 () Bool)

(assert (=> b!1558352 m!1830418))

(declare-fun m!1830420 () Bool)

(assert (=> b!1558352 m!1830420))

(declare-fun m!1830422 () Bool)

(assert (=> b!1558352 m!1830422))

(declare-fun m!1830424 () Bool)

(assert (=> b!1558352 m!1830424))

(declare-fun m!1830426 () Bool)

(assert (=> b!1558341 m!1830426))

(declare-fun m!1830428 () Bool)

(assert (=> b!1558348 m!1830428))

(declare-fun m!1830430 () Bool)

(assert (=> b!1558355 m!1830430))

(declare-fun m!1830432 () Bool)

(assert (=> b!1558355 m!1830432))

(declare-fun m!1830434 () Bool)

(assert (=> mapNonEmpty!8497 m!1830434))

(declare-fun m!1830436 () Bool)

(assert (=> b!1558340 m!1830436))

(declare-fun m!1830438 () Bool)

(assert (=> b!1558340 m!1830438))

(declare-fun m!1830440 () Bool)

(assert (=> start!144592 m!1830440))

(declare-fun m!1830442 () Bool)

(assert (=> start!144592 m!1830442))

(declare-fun m!1830444 () Bool)

(assert (=> start!144592 m!1830444))

(declare-fun m!1830446 () Bool)

(assert (=> start!144592 m!1830446))

(declare-fun m!1830448 () Bool)

(assert (=> start!144592 m!1830448))

(check-sat (not b_next!42221) (not b!1558337) (not b_next!42227) (not b!1558340) (not b_next!42223) (not b!1558353) (not b!1558350) (not b!1558348) (not start!144592) (not b!1558327) (not b_next!42217) (not b!1558322) b_and!108747 (not b!1558323) (not b_next!42225) (not b_next!42219) (not b_next!42215) (not b!1558345) (not mapNonEmpty!8496) (not mapNonEmpty!8498) b_and!108753 b_and!108751 (not b!1558352) (not b!1558341) b_and!108743 (not b!1558325) (not b!1558331) (not b_next!42229) (not b!1558343) (not b!1558349) (not b!1558316) (not b!1558344) b_and!108749 (not b!1558342) (not b!1558318) (not b!1558320) b_and!108755 (not mapNonEmpty!8497) (not b!1558351) b_and!108741 (not b!1558355) (not b!1558319) (not b!1558321) b_and!108745)
(check-sat (not b_next!42217) (not b_next!42221) b_and!108747 (not b_next!42215) b_and!108753 b_and!108751 b_and!108743 (not b_next!42227) (not b_next!42223) (not b_next!42229) b_and!108749 b_and!108755 b_and!108741 b_and!108745 (not b_next!42225) (not b_next!42219))
