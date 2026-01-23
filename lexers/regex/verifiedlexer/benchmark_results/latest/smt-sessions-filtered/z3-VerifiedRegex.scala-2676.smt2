; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143634 () Bool)

(assert start!143634)

(declare-fun b!1550329 () Bool)

(declare-fun b_free!41123 () Bool)

(declare-fun b_next!41827 () Bool)

(assert (=> b!1550329 (= b_free!41123 (not b_next!41827))))

(declare-fun tp!452872 () Bool)

(declare-fun b_and!108213 () Bool)

(assert (=> b!1550329 (= tp!452872 b_and!108213)))

(declare-fun b_free!41125 () Bool)

(declare-fun b_next!41829 () Bool)

(assert (=> b!1550329 (= b_free!41125 (not b_next!41829))))

(declare-fun tp!452878 () Bool)

(declare-fun b_and!108215 () Bool)

(assert (=> b!1550329 (= tp!452878 b_and!108215)))

(declare-fun b!1550333 () Bool)

(declare-fun b_free!41127 () Bool)

(declare-fun b_next!41831 () Bool)

(assert (=> b!1550333 (= b_free!41127 (not b_next!41831))))

(declare-fun tp!452881 () Bool)

(declare-fun b_and!108217 () Bool)

(assert (=> b!1550333 (= tp!452881 b_and!108217)))

(declare-fun b!1550317 () Bool)

(declare-fun b_free!41129 () Bool)

(declare-fun b_next!41833 () Bool)

(assert (=> b!1550317 (= b_free!41129 (not b_next!41833))))

(declare-fun tp!452885 () Bool)

(declare-fun b_and!108219 () Bool)

(assert (=> b!1550317 (= tp!452885 b_and!108219)))

(declare-fun b!1550327 () Bool)

(declare-fun b_free!41131 () Bool)

(declare-fun b_next!41835 () Bool)

(assert (=> b!1550327 (= b_free!41131 (not b_next!41835))))

(declare-fun tp!452874 () Bool)

(declare-fun b_and!108221 () Bool)

(assert (=> b!1550327 (= tp!452874 b_and!108221)))

(declare-fun b!1550310 () Bool)

(declare-fun b_free!41133 () Bool)

(declare-fun b_next!41837 () Bool)

(assert (=> b!1550310 (= b_free!41133 (not b_next!41837))))

(declare-fun tp!452892 () Bool)

(declare-fun b_and!108223 () Bool)

(assert (=> b!1550310 (= tp!452892 b_and!108223)))

(declare-fun b!1550326 () Bool)

(declare-fun b_free!41135 () Bool)

(declare-fun b_next!41839 () Bool)

(assert (=> b!1550326 (= b_free!41135 (not b_next!41839))))

(declare-fun tp!452896 () Bool)

(declare-fun b_and!108225 () Bool)

(assert (=> b!1550326 (= tp!452896 b_and!108225)))

(declare-fun b!1550337 () Bool)

(declare-fun b_free!41137 () Bool)

(declare-fun b_next!41841 () Bool)

(assert (=> b!1550337 (= b_free!41137 (not b_next!41841))))

(declare-fun tp!452890 () Bool)

(declare-fun b_and!108227 () Bool)

(assert (=> b!1550337 (= tp!452890 b_and!108227)))

(declare-fun b!1550345 () Bool)

(declare-fun e!994195 () Bool)

(assert (=> b!1550345 (= e!994195 true)))

(declare-fun b!1550344 () Bool)

(declare-fun e!994194 () Bool)

(assert (=> b!1550344 (= e!994194 e!994195)))

(declare-fun b!1550328 () Bool)

(assert (=> b!1550328 e!994194))

(assert (= b!1550344 b!1550345))

(assert (= b!1550328 b!1550344))

(declare-fun order!9823 () Int)

(declare-datatypes ((C!8704 0))(
  ( (C!8705 (val!4924 Int)) )
))
(declare-datatypes ((List!16810 0))(
  ( (Nil!16742) (Cons!16742 (h!22143 C!8704) (t!141213 List!16810)) )
))
(declare-datatypes ((IArray!11111 0))(
  ( (IArray!11112 (innerList!5613 List!16810)) )
))
(declare-datatypes ((Conc!5553 0))(
  ( (Node!5553 (left!13629 Conc!5553) (right!13959 Conc!5553) (csize!11336 Int) (cheight!5764 Int)) (Leaf!8230 (xs!8353 IArray!11111) (csize!11337 Int)) (Empty!5553) )
))
(declare-datatypes ((BalanceConc!11048 0))(
  ( (BalanceConc!11049 (c!252241 Conc!5553)) )
))
(declare-datatypes ((List!16811 0))(
  ( (Nil!16743) (Cons!16743 (h!22144 (_ BitVec 16)) (t!141214 List!16811)) )
))
(declare-datatypes ((TokenValue!3025 0))(
  ( (FloatLiteralValue!6050 (text!21620 List!16811)) (TokenValueExt!3024 (__x!11053 Int)) (Broken!15125 (value!93265 List!16811)) (Object!3092) (End!3025) (Def!3025) (Underscore!3025) (Match!3025) (Else!3025) (Error!3025) (Case!3025) (If!3025) (Extends!3025) (Abstract!3025) (Class!3025) (Val!3025) (DelimiterValue!6050 (del!3085 List!16811)) (KeywordValue!3031 (value!93266 List!16811)) (CommentValue!6050 (value!93267 List!16811)) (WhitespaceValue!6050 (value!93268 List!16811)) (IndentationValue!3025 (value!93269 List!16811)) (String!19412) (Int32!3025) (Broken!15126 (value!93270 List!16811)) (Boolean!3026) (Unit!26002) (OperatorValue!3028 (op!3085 List!16811)) (IdentifierValue!6050 (value!93271 List!16811)) (IdentifierValue!6051 (value!93272 List!16811)) (WhitespaceValue!6051 (value!93273 List!16811)) (True!6050) (False!6050) (Broken!15127 (value!93274 List!16811)) (Broken!15128 (value!93275 List!16811)) (True!6051) (RightBrace!3025) (RightBracket!3025) (Colon!3025) (Null!3025) (Comma!3025) (LeftBracket!3025) (False!6051) (LeftBrace!3025) (ImaginaryLiteralValue!3025 (text!21621 List!16811)) (StringLiteralValue!9075 (value!93276 List!16811)) (EOFValue!3025 (value!93277 List!16811)) (IdentValue!3025 (value!93278 List!16811)) (DelimiterValue!6051 (value!93279 List!16811)) (DedentValue!3025 (value!93280 List!16811)) (NewLineValue!3025 (value!93281 List!16811)) (IntegerValue!9075 (value!93282 (_ BitVec 32)) (text!21622 List!16811)) (IntegerValue!9076 (value!93283 Int) (text!21623 List!16811)) (Times!3025) (Or!3025) (Equal!3025) (Minus!3025) (Broken!15129 (value!93284 List!16811)) (And!3025) (Div!3025) (LessEqual!3025) (Mod!3025) (Concat!7288) (Not!3025) (Plus!3025) (SpaceValue!3025 (value!93285 List!16811)) (IntegerValue!9077 (value!93286 Int) (text!21624 List!16811)) (StringLiteralValue!9076 (text!21625 List!16811)) (FloatLiteralValue!6051 (text!21626 List!16811)) (BytesLiteralValue!3025 (value!93287 List!16811)) (CommentValue!6051 (value!93288 List!16811)) (StringLiteralValue!9077 (value!93289 List!16811)) (ErrorTokenValue!3025 (msg!3086 List!16811)) )
))
(declare-datatypes ((Regex!4263 0))(
  ( (ElementMatch!4263 (c!252242 C!8704)) (Concat!7289 (regOne!9038 Regex!4263) (regTwo!9038 Regex!4263)) (EmptyExpr!4263) (Star!4263 (reg!4592 Regex!4263)) (EmptyLang!4263) (Union!4263 (regOne!9039 Regex!4263) (regTwo!9039 Regex!4263)) )
))
(declare-datatypes ((String!19413 0))(
  ( (String!19414 (value!93290 String)) )
))
(declare-datatypes ((TokenValueInjection!5710 0))(
  ( (TokenValueInjection!5711 (toValue!4298 Int) (toChars!4157 Int)) )
))
(declare-datatypes ((Rule!5670 0))(
  ( (Rule!5671 (regex!2935 Regex!4263) (tag!3199 String!19413) (isSeparator!2935 Bool) (transformation!2935 TokenValueInjection!5710)) )
))
(declare-fun rule!240 () Rule!5670)

(declare-fun lambda!65643 () Int)

(declare-fun order!9825 () Int)

(declare-fun dynLambda!7406 (Int Int) Int)

(declare-fun dynLambda!7407 (Int Int) Int)

(assert (=> b!1550345 (< (dynLambda!7406 order!9823 (toValue!4298 (transformation!2935 rule!240))) (dynLambda!7407 order!9825 lambda!65643))))

(declare-fun order!9827 () Int)

(declare-fun dynLambda!7408 (Int Int) Int)

(assert (=> b!1550345 (< (dynLambda!7408 order!9827 (toChars!4157 (transformation!2935 rule!240))) (dynLambda!7407 order!9825 lambda!65643))))

(declare-fun b!1550300 () Bool)

(declare-fun e!994156 () Bool)

(declare-fun tp!452877 () Bool)

(declare-fun mapRes!8173 () Bool)

(assert (=> b!1550300 (= e!994156 (and tp!452877 mapRes!8173))))

(declare-fun condMapEmpty!8173 () Bool)

(declare-datatypes ((List!16812 0))(
  ( (Nil!16744) (Cons!16744 (h!22145 Regex!4263) (t!141215 List!16812)) )
))
(declare-datatypes ((Context!1562 0))(
  ( (Context!1563 (exprs!1281 List!16812)) )
))
(declare-datatypes ((tuple3!1738 0))(
  ( (tuple3!1739 (_1!9362 Regex!4263) (_2!9362 Context!1562) (_3!1304 C!8704)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16116 0))(
  ( (tuple2!16117 (_1!9363 tuple3!1738) (_2!9363 (InoxSet Context!1562))) )
))
(declare-datatypes ((List!16813 0))(
  ( (Nil!16745) (Cons!16745 (h!22146 tuple2!16116) (t!141216 List!16813)) )
))
(declare-datatypes ((array!6044 0))(
  ( (array!6045 (arr!2699 (Array (_ BitVec 32) (_ BitVec 64))) (size!13541 (_ BitVec 32))) )
))
(declare-datatypes ((array!6046 0))(
  ( (array!6047 (arr!2700 (Array (_ BitVec 32) List!16813)) (size!13542 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3522 0))(
  ( (LongMapFixedSize!3523 (defaultEntry!2121 Int) (mask!4981 (_ BitVec 32)) (extraKeys!2008 (_ BitVec 32)) (zeroValue!2018 List!16813) (minValue!2018 List!16813) (_size!3603 (_ BitVec 32)) (_keys!2055 array!6044) (_values!2040 array!6046) (_vacant!1822 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6929 0))(
  ( (Cell!6930 (v!23574 LongMapFixedSize!3522)) )
))
(declare-datatypes ((MutLongMap!1761 0))(
  ( (LongMap!1761 (underlying!3731 Cell!6929)) (MutLongMapExt!1760 (__x!11054 Int)) )
))
(declare-datatypes ((Cell!6931 0))(
  ( (Cell!6932 (v!23575 MutLongMap!1761)) )
))
(declare-datatypes ((Hashable!1705 0))(
  ( (HashableExt!1704 (__x!11055 Int)) )
))
(declare-datatypes ((MutableMap!1705 0))(
  ( (MutableMapExt!1704 (__x!11056 Int)) (HashMap!1705 (underlying!3732 Cell!6931) (hashF!3624 Hashable!1705) (_size!3604 (_ BitVec 32)) (defaultValue!1865 Int)) )
))
(declare-datatypes ((CacheDown!1040 0))(
  ( (CacheDown!1041 (cache!2086 MutableMap!1705)) )
))
(declare-fun cacheDown!768 () CacheDown!1040)

(declare-fun mapDefault!8174 () List!16813)

(assert (=> b!1550300 (= condMapEmpty!8173 (= (arr!2700 (_values!2040 (v!23574 (underlying!3731 (v!23575 (underlying!3732 (cache!2086 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16813)) mapDefault!8174)))))

(declare-fun b!1550301 () Bool)

(declare-fun res!692859 () Bool)

(declare-fun e!994157 () Bool)

(assert (=> b!1550301 (=> (not res!692859) (not e!994157))))

(declare-datatypes ((tuple3!1740 0))(
  ( (tuple3!1741 (_1!9364 (InoxSet Context!1562)) (_2!9364 Int) (_3!1305 Int)) )
))
(declare-datatypes ((tuple2!16118 0))(
  ( (tuple2!16119 (_1!9365 tuple3!1740) (_2!9365 Int)) )
))
(declare-datatypes ((List!16814 0))(
  ( (Nil!16746) (Cons!16746 (h!22147 tuple2!16118) (t!141217 List!16814)) )
))
(declare-datatypes ((array!6048 0))(
  ( (array!6049 (arr!2701 (Array (_ BitVec 32) List!16814)) (size!13543 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3524 0))(
  ( (LongMapFixedSize!3525 (defaultEntry!2122 Int) (mask!4982 (_ BitVec 32)) (extraKeys!2009 (_ BitVec 32)) (zeroValue!2019 List!16814) (minValue!2019 List!16814) (_size!3605 (_ BitVec 32)) (_keys!2056 array!6044) (_values!2041 array!6048) (_vacant!1823 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6933 0))(
  ( (Cell!6934 (v!23576 LongMapFixedSize!3524)) )
))
(declare-datatypes ((Hashable!1706 0))(
  ( (HashableExt!1705 (__x!11057 Int)) )
))
(declare-datatypes ((MutLongMap!1762 0))(
  ( (LongMap!1762 (underlying!3733 Cell!6933)) (MutLongMapExt!1761 (__x!11058 Int)) )
))
(declare-datatypes ((Cell!6935 0))(
  ( (Cell!6936 (v!23577 MutLongMap!1762)) )
))
(declare-datatypes ((MutableMap!1706 0))(
  ( (MutableMapExt!1705 (__x!11059 Int)) (HashMap!1706 (underlying!3734 Cell!6935) (hashF!3625 Hashable!1706) (_size!3606 (_ BitVec 32)) (defaultValue!1866 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!462 0))(
  ( (CacheFurthestNullable!463 (cache!2087 MutableMap!1706) (totalInput!2434 BalanceConc!11048)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!462)

(declare-fun totalInput!568 () BalanceConc!11048)

(assert (=> b!1550301 (= res!692859 (= (totalInput!2434 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1550302 () Bool)

(declare-fun e!994172 () Bool)

(declare-fun e!994179 () Bool)

(assert (=> b!1550302 (= e!994172 e!994179)))

(declare-fun b!1550303 () Bool)

(declare-fun res!692856 () Bool)

(declare-fun e!994184 () Bool)

(assert (=> b!1550303 (=> (not res!692856) (not e!994184))))

(declare-fun valid!1414 (CacheFurthestNullable!462) Bool)

(assert (=> b!1550303 (= res!692856 (valid!1414 cacheFurthestNullable!103))))

(declare-fun mapNonEmpty!8172 () Bool)

(declare-fun tp!452876 () Bool)

(declare-fun tp!452895 () Bool)

(assert (=> mapNonEmpty!8172 (= mapRes!8173 (and tp!452876 tp!452895))))

(declare-fun mapValue!8174 () List!16813)

(declare-fun mapRest!8173 () (Array (_ BitVec 32) List!16813))

(declare-fun mapKey!8172 () (_ BitVec 32))

(assert (=> mapNonEmpty!8172 (= (arr!2700 (_values!2040 (v!23574 (underlying!3731 (v!23575 (underlying!3732 (cache!2086 cacheDown!768))))))) (store mapRest!8173 mapKey!8172 mapValue!8174))))

(declare-fun b!1550304 () Bool)

(declare-fun e!994187 () Bool)

(assert (=> b!1550304 (= e!994179 e!994187)))

(declare-fun b!1550306 () Bool)

(declare-fun e!994176 () Bool)

(declare-fun e!994173 () Bool)

(declare-fun lt!537145 () MutLongMap!1761)

(get-info :version)

(assert (=> b!1550306 (= e!994176 (and e!994173 ((_ is LongMap!1761) lt!537145)))))

(assert (=> b!1550306 (= lt!537145 (v!23575 (underlying!3732 (cache!2086 cacheDown!768))))))

(declare-fun b!1550307 () Bool)

(assert (=> b!1550307 (= e!994184 e!994157)))

(declare-fun res!692857 () Bool)

(assert (=> b!1550307 (=> (not res!692857) (not e!994157))))

(declare-fun lt!537129 () List!16810)

(declare-fun isSuffix!366 (List!16810 List!16810) Bool)

(declare-fun list!6474 (BalanceConc!11048) List!16810)

(assert (=> b!1550307 (= res!692857 (isSuffix!366 lt!537129 (list!6474 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11048)

(assert (=> b!1550307 (= lt!537129 (list!6474 input!1676))))

(declare-fun b!1550308 () Bool)

(declare-fun e!994170 () Bool)

(declare-fun e!994171 () Bool)

(assert (=> b!1550308 (= e!994170 e!994171)))

(declare-fun mapIsEmpty!8172 () Bool)

(declare-fun mapRes!8174 () Bool)

(assert (=> mapIsEmpty!8172 mapRes!8174))

(declare-fun b!1550309 () Bool)

(declare-fun e!994180 () Bool)

(declare-fun e!994158 () Bool)

(assert (=> b!1550309 (= e!994180 e!994158)))

(declare-fun e!994163 () Bool)

(assert (=> b!1550310 (= e!994163 (and e!994176 tp!452892))))

(declare-fun mapNonEmpty!8173 () Bool)

(declare-fun tp!452873 () Bool)

(declare-fun tp!452891 () Bool)

(assert (=> mapNonEmpty!8173 (= mapRes!8174 (and tp!452873 tp!452891))))

(declare-fun mapValue!8172 () List!16814)

(declare-fun mapKey!8174 () (_ BitVec 32))

(declare-fun mapRest!8172 () (Array (_ BitVec 32) List!16814))

(assert (=> mapNonEmpty!8173 (= (arr!2701 (_values!2041 (v!23576 (underlying!3733 (v!23577 (underlying!3734 (cache!2087 cacheFurthestNullable!103))))))) (store mapRest!8172 mapKey!8174 mapValue!8172))))

(declare-fun e!994175 () Bool)

(declare-fun e!994185 () Bool)

(declare-fun e!994183 () Bool)

(declare-fun b!1550311 () Bool)

(declare-fun inv!21998 (BalanceConc!11048) Bool)

(assert (=> b!1550311 (= e!994185 (and e!994183 (inv!21998 (totalInput!2434 cacheFurthestNullable!103)) e!994175))))

(declare-fun b!1550312 () Bool)

(declare-fun e!994162 () Bool)

(assert (=> b!1550312 (= e!994162 e!994180)))

(declare-fun b!1550313 () Bool)

(declare-fun e!994174 () Bool)

(declare-fun tp!452879 () Bool)

(assert (=> b!1550313 (= e!994174 (and tp!452879 mapRes!8174))))

(declare-fun condMapEmpty!8174 () Bool)

(declare-fun mapDefault!8172 () List!16814)

(assert (=> b!1550313 (= condMapEmpty!8174 (= (arr!2701 (_values!2041 (v!23576 (underlying!3733 (v!23577 (underlying!3734 (cache!2087 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16814)) mapDefault!8172)))))

(declare-fun b!1550314 () Bool)

(declare-fun e!994181 () Bool)

(declare-fun tp!452888 () Bool)

(declare-fun inv!21999 (Conc!5553) Bool)

(assert (=> b!1550314 (= e!994181 (and (inv!21999 (c!252241 totalInput!568)) tp!452888))))

(declare-fun b!1550315 () Bool)

(declare-fun tp!452883 () Bool)

(assert (=> b!1550315 (= e!994175 (and (inv!21999 (c!252241 (totalInput!2434 cacheFurthestNullable!103))) tp!452883))))

(declare-fun mapIsEmpty!8173 () Bool)

(declare-fun mapRes!8172 () Bool)

(assert (=> mapIsEmpty!8173 mapRes!8172))

(declare-fun b!1550316 () Bool)

(declare-fun res!692862 () Bool)

(assert (=> b!1550316 (=> (not res!692862) (not e!994184))))

(declare-fun valid!1415 (CacheDown!1040) Bool)

(assert (=> b!1550316 (= res!692862 (valid!1415 cacheDown!768))))

(declare-fun e!994189 () Bool)

(assert (=> b!1550317 (= e!994171 (and e!994189 tp!452885))))

(declare-fun mapIsEmpty!8174 () Bool)

(assert (=> mapIsEmpty!8174 mapRes!8173))

(declare-fun b!1550318 () Bool)

(declare-fun res!692855 () Bool)

(assert (=> b!1550318 (=> (not res!692855) (not e!994184))))

(declare-datatypes ((tuple2!16120 0))(
  ( (tuple2!16121 (_1!9366 Context!1562) (_2!9366 C!8704)) )
))
(declare-datatypes ((tuple2!16122 0))(
  ( (tuple2!16123 (_1!9367 tuple2!16120) (_2!9367 (InoxSet Context!1562))) )
))
(declare-datatypes ((List!16815 0))(
  ( (Nil!16747) (Cons!16747 (h!22148 tuple2!16122) (t!141218 List!16815)) )
))
(declare-datatypes ((array!6050 0))(
  ( (array!6051 (arr!2702 (Array (_ BitVec 32) List!16815)) (size!13544 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1707 0))(
  ( (HashableExt!1706 (__x!11060 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3526 0))(
  ( (LongMapFixedSize!3527 (defaultEntry!2123 Int) (mask!4983 (_ BitVec 32)) (extraKeys!2010 (_ BitVec 32)) (zeroValue!2020 List!16815) (minValue!2020 List!16815) (_size!3607 (_ BitVec 32)) (_keys!2057 array!6044) (_values!2042 array!6050) (_vacant!1824 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6937 0))(
  ( (Cell!6938 (v!23578 LongMapFixedSize!3526)) )
))
(declare-datatypes ((MutLongMap!1763 0))(
  ( (LongMap!1763 (underlying!3735 Cell!6937)) (MutLongMapExt!1762 (__x!11061 Int)) )
))
(declare-datatypes ((Cell!6939 0))(
  ( (Cell!6940 (v!23579 MutLongMap!1763)) )
))
(declare-datatypes ((MutableMap!1707 0))(
  ( (MutableMapExt!1706 (__x!11062 Int)) (HashMap!1707 (underlying!3736 Cell!6939) (hashF!3626 Hashable!1707) (_size!3608 (_ BitVec 32)) (defaultValue!1867 Int)) )
))
(declare-datatypes ((CacheUp!1036 0))(
  ( (CacheUp!1037 (cache!2088 MutableMap!1707)) )
))
(declare-fun cacheUp!755 () CacheUp!1036)

(declare-fun valid!1416 (CacheUp!1036) Bool)

(assert (=> b!1550318 (= res!692855 (valid!1416 cacheUp!755))))

(declare-fun e!994159 () Bool)

(declare-fun e!994182 () Bool)

(declare-fun tp!452897 () Bool)

(declare-fun b!1550319 () Bool)

(declare-fun inv!21996 (String!19413) Bool)

(declare-fun inv!22000 (TokenValueInjection!5710) Bool)

(assert (=> b!1550319 (= e!994159 (and tp!452897 (inv!21996 (tag!3199 rule!240)) (inv!22000 (transformation!2935 rule!240)) e!994182))))

(declare-fun b!1550305 () Bool)

(declare-fun e!994178 () Bool)

(declare-fun tp!452894 () Bool)

(assert (=> b!1550305 (= e!994178 (and tp!452894 mapRes!8172))))

(declare-fun condMapEmpty!8172 () Bool)

(declare-fun mapDefault!8173 () List!16815)

(assert (=> b!1550305 (= condMapEmpty!8172 (= (arr!2702 (_values!2042 (v!23578 (underlying!3735 (v!23579 (underlying!3736 (cache!2088 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16815)) mapDefault!8173)))))

(declare-fun res!692858 () Bool)

(assert (=> start!143634 (=> (not res!692858) (not e!994184))))

(declare-datatypes ((LexerInterface!2574 0))(
  ( (LexerInterfaceExt!2571 (__x!11063 Int)) (Lexer!2572) )
))
(declare-fun thiss!16438 () LexerInterface!2574)

(assert (=> start!143634 (= res!692858 ((_ is Lexer!2572) thiss!16438))))

(assert (=> start!143634 e!994184))

(assert (=> start!143634 (and (inv!21998 totalInput!568) e!994181)))

(declare-fun inv!22001 (CacheUp!1036) Bool)

(assert (=> start!143634 (and (inv!22001 cacheUp!755) e!994170)))

(declare-fun inv!22002 (CacheFurthestNullable!462) Bool)

(assert (=> start!143634 (and (inv!22002 cacheFurthestNullable!103) e!994185)))

(declare-fun e!994168 () Bool)

(assert (=> start!143634 (and (inv!21998 input!1676) e!994168)))

(assert (=> start!143634 e!994159))

(declare-fun e!994164 () Bool)

(declare-fun inv!22003 (CacheDown!1040) Bool)

(assert (=> start!143634 (and (inv!22003 cacheDown!768) e!994164)))

(assert (=> start!143634 true))

(declare-fun b!1550320 () Bool)

(declare-fun res!692860 () Bool)

(declare-fun e!994177 () Bool)

(assert (=> b!1550320 (=> (not res!692860) (not e!994177))))

(declare-datatypes ((Token!5460 0))(
  ( (Token!5461 (value!93291 TokenValue!3025) (rule!4720 Rule!5670) (size!13545 Int) (originalCharacters!3761 List!16810)) )
))
(declare-datatypes ((tuple2!16124 0))(
  ( (tuple2!16125 (_1!9368 Token!5460) (_2!9368 BalanceConc!11048)) )
))
(declare-datatypes ((Option!3022 0))(
  ( (None!3021) (Some!3021 (v!23580 tuple2!16124)) )
))
(declare-fun lt!537143 () Option!3022)

(declare-datatypes ((tuple2!16126 0))(
  ( (tuple2!16127 (_1!9369 Token!5460) (_2!9369 List!16810)) )
))
(declare-datatypes ((Option!3023 0))(
  ( (None!3022) (Some!3022 (v!23581 tuple2!16126)) )
))
(declare-fun lt!537131 () Option!3023)

(declare-fun get!4836 (Option!3022) tuple2!16124)

(declare-fun get!4837 (Option!3023) tuple2!16126)

(assert (=> b!1550320 (= res!692860 (= (_1!9368 (get!4836 lt!537143)) (_1!9369 (get!4837 lt!537131))))))

(declare-fun b!1550321 () Bool)

(declare-fun e!994161 () Bool)

(declare-fun lt!537132 () MutLongMap!1762)

(assert (=> b!1550321 (= e!994161 (and e!994162 ((_ is LongMap!1762) lt!537132)))))

(assert (=> b!1550321 (= lt!537132 (v!23577 (underlying!3734 (cache!2087 cacheFurthestNullable!103))))))

(declare-fun b!1550322 () Bool)

(declare-fun e!994188 () Bool)

(assert (=> b!1550322 (= e!994173 e!994188)))

(declare-fun b!1550323 () Bool)

(declare-fun e!994155 () Bool)

(declare-datatypes ((tuple2!16128 0))(
  ( (tuple2!16129 (_1!9370 List!16810) (_2!9370 List!16810)) )
))
(declare-fun lt!537137 () tuple2!16128)

(declare-fun matchR!1870 (Regex!4263 List!16810) Bool)

(assert (=> b!1550323 (= e!994155 (matchR!1870 (regex!2935 rule!240) (_1!9370 lt!537137)))))

(declare-fun b!1550324 () Bool)

(assert (=> b!1550324 (= e!994164 e!994163)))

(declare-fun b!1550325 () Bool)

(assert (=> b!1550325 (= e!994157 e!994177)))

(declare-fun res!692854 () Bool)

(assert (=> b!1550325 (=> (not res!692854) (not e!994177))))

(declare-fun lt!537139 () Bool)

(declare-fun lt!537140 () Bool)

(assert (=> b!1550325 (= res!692854 (and (= lt!537139 lt!537140) lt!537139))))

(declare-fun isDefined!2425 (Option!3023) Bool)

(assert (=> b!1550325 (= lt!537140 (isDefined!2425 lt!537131))))

(declare-fun isDefined!2426 (Option!3022) Bool)

(assert (=> b!1550325 (= lt!537139 (isDefined!2426 lt!537143))))

(declare-fun maxPrefixOneRule!696 (LexerInterface!2574 Rule!5670 List!16810) Option!3023)

(assert (=> b!1550325 (= lt!537131 (maxPrefixOneRule!696 thiss!16438 rule!240 lt!537129))))

(declare-fun e!994165 () Option!3022)

(assert (=> b!1550325 (= lt!537143 e!994165)))

(declare-fun c!252240 () Bool)

(declare-datatypes ((tuple2!16130 0))(
  ( (tuple2!16131 (_1!9371 BalanceConc!11048) (_2!9371 BalanceConc!11048)) )
))
(declare-datatypes ((tuple4!870 0))(
  ( (tuple4!871 (_1!9372 tuple2!16130) (_2!9372 CacheUp!1036) (_3!1306 CacheDown!1040) (_4!435 CacheFurthestNullable!462)) )
))
(declare-fun lt!537133 () tuple4!870)

(declare-fun isEmpty!10083 (BalanceConc!11048) Bool)

(assert (=> b!1550325 (= c!252240 (isEmpty!10083 (_1!9371 (_1!9372 lt!537133))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!40 (Regex!4263 BalanceConc!11048 BalanceConc!11048 CacheUp!1036 CacheDown!1040 CacheFurthestNullable!462) tuple4!870)

(assert (=> b!1550325 (= lt!537133 (findLongestMatchWithZipperSequenceV3Mem!40 (regex!2935 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun tp!452893 () Bool)

(declare-fun tp!452875 () Bool)

(declare-fun array_inv!1940 (array!6044) Bool)

(declare-fun array_inv!1941 (array!6050) Bool)

(assert (=> b!1550326 (= e!994187 (and tp!452896 tp!452875 tp!452893 (array_inv!1940 (_keys!2057 (v!23578 (underlying!3735 (v!23579 (underlying!3736 (cache!2088 cacheUp!755))))))) (array_inv!1941 (_values!2042 (v!23578 (underlying!3735 (v!23579 (underlying!3736 (cache!2088 cacheUp!755))))))) e!994178))))

(declare-fun tp!452884 () Bool)

(declare-fun tp!452886 () Bool)

(declare-fun array_inv!1942 (array!6048) Bool)

(assert (=> b!1550327 (= e!994158 (and tp!452874 tp!452886 tp!452884 (array_inv!1940 (_keys!2056 (v!23576 (underlying!3733 (v!23577 (underlying!3734 (cache!2087 cacheFurthestNullable!103))))))) (array_inv!1942 (_values!2041 (v!23576 (underlying!3733 (v!23577 (underlying!3734 (cache!2087 cacheFurthestNullable!103))))))) e!994174))))

(declare-fun lt!537144 () Int)

(declare-fun lt!537138 () TokenValue!3025)

(declare-fun lt!537127 () List!16810)

(assert (=> b!1550328 (= e!994165 (Some!3021 (tuple2!16125 (Token!5461 lt!537138 rule!240 lt!537144 lt!537127) (_2!9371 (_1!9372 lt!537133)))))))

(declare-datatypes ((Unit!26003 0))(
  ( (Unit!26004) )
))
(declare-fun lt!537128 () Unit!26003)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!307 (Regex!4263 List!16810) Unit!26003)

(assert (=> b!1550328 (= lt!537128 (longestMatchIsAcceptedByMatchOrIsEmpty!307 (regex!2935 rule!240) lt!537129))))

(declare-fun findLongestMatchInner!323 (Regex!4263 List!16810 Int List!16810 List!16810 Int) tuple2!16128)

(declare-fun size!13546 (List!16810) Int)

(assert (=> b!1550328 (= lt!537137 (findLongestMatchInner!323 (regex!2935 rule!240) Nil!16742 (size!13546 Nil!16742) lt!537129 lt!537129 (size!13546 lt!537129)))))

(declare-fun res!692863 () Bool)

(declare-fun isEmpty!10084 (List!16810) Bool)

(assert (=> b!1550328 (= res!692863 (isEmpty!10084 (_1!9370 lt!537137)))))

(assert (=> b!1550328 (=> res!692863 e!994155)))

(assert (=> b!1550328 e!994155))

(declare-fun lt!537142 () Unit!26003)

(declare-fun lemmaInv!417 (TokenValueInjection!5710) Unit!26003)

(assert (=> b!1550328 (= lt!537142 (lemmaInv!417 (transformation!2935 rule!240)))))

(declare-fun lt!537130 () Unit!26003)

(declare-fun ForallOf!204 (Int BalanceConc!11048) Unit!26003)

(assert (=> b!1550328 (= lt!537130 (ForallOf!204 lambda!65643 (_1!9371 (_1!9372 lt!537133))))))

(assert (=> b!1550328 (= lt!537127 (list!6474 (_1!9371 (_1!9372 lt!537133))))))

(declare-fun lt!537136 () BalanceConc!11048)

(declare-fun seqFromList!1767 (List!16810) BalanceConc!11048)

(assert (=> b!1550328 (= lt!537136 (seqFromList!1767 lt!537127))))

(declare-fun lt!537135 () Unit!26003)

(assert (=> b!1550328 (= lt!537135 (ForallOf!204 lambda!65643 lt!537136))))

(declare-fun apply!4103 (TokenValueInjection!5710 BalanceConc!11048) TokenValue!3025)

(assert (=> b!1550328 (= lt!537138 (apply!4103 (transformation!2935 rule!240) (_1!9371 (_1!9372 lt!537133))))))

(declare-fun size!13547 (BalanceConc!11048) Int)

(assert (=> b!1550328 (= lt!537144 (size!13547 (_1!9371 (_1!9372 lt!537133))))))

(declare-fun lt!537134 () Unit!26003)

(declare-fun lemmaEqSameImage!147 (TokenValueInjection!5710 BalanceConc!11048 BalanceConc!11048) Unit!26003)

(assert (=> b!1550328 (= lt!537134 (lemmaEqSameImage!147 (transformation!2935 rule!240) (_1!9371 (_1!9372 lt!537133)) lt!537136))))

(assert (=> b!1550329 (= e!994182 (and tp!452872 tp!452878))))

(declare-fun b!1550330 () Bool)

(assert (=> b!1550330 (= e!994165 None!3021)))

(declare-fun b!1550331 () Bool)

(declare-fun res!692861 () Bool)

(assert (=> b!1550331 (=> (not res!692861) (not e!994184))))

(declare-fun ruleValid!675 (LexerInterface!2574 Rule!5670) Bool)

(assert (=> b!1550331 (= res!692861 (ruleValid!675 thiss!16438 rule!240))))

(declare-fun b!1550332 () Bool)

(declare-fun lt!537141 () MutLongMap!1763)

(assert (=> b!1550332 (= e!994189 (and e!994172 ((_ is LongMap!1763) lt!537141)))))

(assert (=> b!1550332 (= lt!537141 (v!23579 (underlying!3736 (cache!2088 cacheUp!755))))))

(declare-fun tp!452880 () Bool)

(declare-fun tp!452887 () Bool)

(declare-fun e!994166 () Bool)

(declare-fun array_inv!1943 (array!6046) Bool)

(assert (=> b!1550333 (= e!994166 (and tp!452881 tp!452880 tp!452887 (array_inv!1940 (_keys!2055 (v!23574 (underlying!3731 (v!23575 (underlying!3732 (cache!2086 cacheDown!768))))))) (array_inv!1943 (_values!2040 (v!23574 (underlying!3731 (v!23575 (underlying!3732 (cache!2086 cacheDown!768))))))) e!994156))))

(declare-fun b!1550334 () Bool)

(assert (=> b!1550334 (= e!994177 (not lt!537140))))

(declare-fun b!1550335 () Bool)

(declare-fun tp!452882 () Bool)

(assert (=> b!1550335 (= e!994168 (and (inv!21999 (c!252241 input!1676)) tp!452882))))

(declare-fun b!1550336 () Bool)

(assert (=> b!1550336 (= e!994188 e!994166)))

(assert (=> b!1550337 (= e!994183 (and e!994161 tp!452890))))

(declare-fun mapNonEmpty!8174 () Bool)

(declare-fun tp!452898 () Bool)

(declare-fun tp!452889 () Bool)

(assert (=> mapNonEmpty!8174 (= mapRes!8172 (and tp!452898 tp!452889))))

(declare-fun mapKey!8173 () (_ BitVec 32))

(declare-fun mapRest!8174 () (Array (_ BitVec 32) List!16815))

(declare-fun mapValue!8173 () List!16815)

(assert (=> mapNonEmpty!8174 (= (arr!2702 (_values!2042 (v!23578 (underlying!3735 (v!23579 (underlying!3736 (cache!2088 cacheUp!755))))))) (store mapRest!8174 mapKey!8173 mapValue!8173))))

(assert (= (and start!143634 res!692858) b!1550331))

(assert (= (and b!1550331 res!692861) b!1550318))

(assert (= (and b!1550318 res!692855) b!1550316))

(assert (= (and b!1550316 res!692862) b!1550303))

(assert (= (and b!1550303 res!692856) b!1550307))

(assert (= (and b!1550307 res!692857) b!1550301))

(assert (= (and b!1550301 res!692859) b!1550325))

(assert (= (and b!1550325 c!252240) b!1550330))

(assert (= (and b!1550325 (not c!252240)) b!1550328))

(assert (= (and b!1550328 (not res!692863)) b!1550323))

(assert (= (and b!1550325 res!692854) b!1550320))

(assert (= (and b!1550320 res!692860) b!1550334))

(assert (= start!143634 b!1550314))

(assert (= (and b!1550305 condMapEmpty!8172) mapIsEmpty!8173))

(assert (= (and b!1550305 (not condMapEmpty!8172)) mapNonEmpty!8174))

(assert (= b!1550326 b!1550305))

(assert (= b!1550304 b!1550326))

(assert (= b!1550302 b!1550304))

(assert (= (and b!1550332 ((_ is LongMap!1763) (v!23579 (underlying!3736 (cache!2088 cacheUp!755))))) b!1550302))

(assert (= b!1550317 b!1550332))

(assert (= (and b!1550308 ((_ is HashMap!1707) (cache!2088 cacheUp!755))) b!1550317))

(assert (= start!143634 b!1550308))

(assert (= (and b!1550313 condMapEmpty!8174) mapIsEmpty!8172))

(assert (= (and b!1550313 (not condMapEmpty!8174)) mapNonEmpty!8173))

(assert (= b!1550327 b!1550313))

(assert (= b!1550309 b!1550327))

(assert (= b!1550312 b!1550309))

(assert (= (and b!1550321 ((_ is LongMap!1762) (v!23577 (underlying!3734 (cache!2087 cacheFurthestNullable!103))))) b!1550312))

(assert (= b!1550337 b!1550321))

(assert (= (and b!1550311 ((_ is HashMap!1706) (cache!2087 cacheFurthestNullable!103))) b!1550337))

(assert (= b!1550311 b!1550315))

(assert (= start!143634 b!1550311))

(assert (= start!143634 b!1550335))

(assert (= b!1550319 b!1550329))

(assert (= start!143634 b!1550319))

(assert (= (and b!1550300 condMapEmpty!8173) mapIsEmpty!8174))

(assert (= (and b!1550300 (not condMapEmpty!8173)) mapNonEmpty!8172))

(assert (= b!1550333 b!1550300))

(assert (= b!1550336 b!1550333))

(assert (= b!1550322 b!1550336))

(assert (= (and b!1550306 ((_ is LongMap!1761) (v!23575 (underlying!3732 (cache!2086 cacheDown!768))))) b!1550322))

(assert (= b!1550310 b!1550306))

(assert (= (and b!1550324 ((_ is HashMap!1705) (cache!2086 cacheDown!768))) b!1550310))

(assert (= start!143634 b!1550324))

(declare-fun m!1823061 () Bool)

(assert (=> b!1550335 m!1823061))

(declare-fun m!1823063 () Bool)

(assert (=> mapNonEmpty!8173 m!1823063))

(declare-fun m!1823065 () Bool)

(assert (=> b!1550331 m!1823065))

(declare-fun m!1823067 () Bool)

(assert (=> b!1550326 m!1823067))

(declare-fun m!1823069 () Bool)

(assert (=> b!1550326 m!1823069))

(declare-fun m!1823071 () Bool)

(assert (=> mapNonEmpty!8174 m!1823071))

(declare-fun m!1823073 () Bool)

(assert (=> b!1550303 m!1823073))

(declare-fun m!1823075 () Bool)

(assert (=> mapNonEmpty!8172 m!1823075))

(declare-fun m!1823077 () Bool)

(assert (=> b!1550323 m!1823077))

(declare-fun m!1823079 () Bool)

(assert (=> b!1550316 m!1823079))

(declare-fun m!1823081 () Bool)

(assert (=> b!1550311 m!1823081))

(declare-fun m!1823083 () Bool)

(assert (=> b!1550333 m!1823083))

(declare-fun m!1823085 () Bool)

(assert (=> b!1550333 m!1823085))

(declare-fun m!1823087 () Bool)

(assert (=> b!1550327 m!1823087))

(declare-fun m!1823089 () Bool)

(assert (=> b!1550327 m!1823089))

(declare-fun m!1823091 () Bool)

(assert (=> b!1550320 m!1823091))

(declare-fun m!1823093 () Bool)

(assert (=> b!1550320 m!1823093))

(declare-fun m!1823095 () Bool)

(assert (=> b!1550325 m!1823095))

(declare-fun m!1823097 () Bool)

(assert (=> b!1550325 m!1823097))

(declare-fun m!1823099 () Bool)

(assert (=> b!1550325 m!1823099))

(declare-fun m!1823101 () Bool)

(assert (=> b!1550325 m!1823101))

(declare-fun m!1823103 () Bool)

(assert (=> b!1550325 m!1823103))

(declare-fun m!1823105 () Bool)

(assert (=> b!1550328 m!1823105))

(declare-fun m!1823107 () Bool)

(assert (=> b!1550328 m!1823107))

(declare-fun m!1823109 () Bool)

(assert (=> b!1550328 m!1823109))

(declare-fun m!1823111 () Bool)

(assert (=> b!1550328 m!1823111))

(declare-fun m!1823113 () Bool)

(assert (=> b!1550328 m!1823113))

(declare-fun m!1823115 () Bool)

(assert (=> b!1550328 m!1823115))

(declare-fun m!1823117 () Bool)

(assert (=> b!1550328 m!1823117))

(declare-fun m!1823119 () Bool)

(assert (=> b!1550328 m!1823119))

(declare-fun m!1823121 () Bool)

(assert (=> b!1550328 m!1823121))

(declare-fun m!1823123 () Bool)

(assert (=> b!1550328 m!1823123))

(declare-fun m!1823125 () Bool)

(assert (=> b!1550328 m!1823125))

(assert (=> b!1550328 m!1823111))

(declare-fun m!1823127 () Bool)

(assert (=> b!1550328 m!1823127))

(declare-fun m!1823129 () Bool)

(assert (=> b!1550328 m!1823129))

(assert (=> b!1550328 m!1823127))

(declare-fun m!1823131 () Bool)

(assert (=> start!143634 m!1823131))

(declare-fun m!1823133 () Bool)

(assert (=> start!143634 m!1823133))

(declare-fun m!1823135 () Bool)

(assert (=> start!143634 m!1823135))

(declare-fun m!1823137 () Bool)

(assert (=> start!143634 m!1823137))

(declare-fun m!1823139 () Bool)

(assert (=> start!143634 m!1823139))

(declare-fun m!1823141 () Bool)

(assert (=> b!1550315 m!1823141))

(declare-fun m!1823143 () Bool)

(assert (=> b!1550318 m!1823143))

(declare-fun m!1823145 () Bool)

(assert (=> b!1550314 m!1823145))

(declare-fun m!1823147 () Bool)

(assert (=> b!1550319 m!1823147))

(declare-fun m!1823149 () Bool)

(assert (=> b!1550319 m!1823149))

(declare-fun m!1823151 () Bool)

(assert (=> b!1550307 m!1823151))

(assert (=> b!1550307 m!1823151))

(declare-fun m!1823153 () Bool)

(assert (=> b!1550307 m!1823153))

(declare-fun m!1823155 () Bool)

(assert (=> b!1550307 m!1823155))

(check-sat (not b!1550335) (not b!1550328) b_and!108227 (not b_next!41839) (not b_next!41831) (not b_next!41827) b_and!108217 (not b!1550323) (not b!1550326) (not start!143634) (not b!1550307) (not b!1550311) (not mapNonEmpty!8173) (not b!1550314) b_and!108225 (not b_next!41833) b_and!108221 (not b!1550316) (not mapNonEmpty!8174) (not b!1550315) b_and!108213 (not b!1550303) (not b_next!41835) b_and!108223 (not b!1550320) (not b!1550313) (not b!1550319) (not b!1550325) (not b!1550331) (not b!1550327) (not b_next!41837) (not b_next!41841) b_and!108215 (not b!1550305) (not b_next!41829) (not b!1550318) (not mapNonEmpty!8172) b_and!108219 (not b!1550333) (not b!1550300))
(check-sat b_and!108227 (not b_next!41839) (not b_next!41831) b_and!108221 (not b_next!41827) b_and!108217 b_and!108223 b_and!108219 b_and!108225 (not b_next!41833) b_and!108213 (not b_next!41835) (not b_next!41837) (not b_next!41841) b_and!108215 (not b_next!41829))
