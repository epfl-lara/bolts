; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48258 () Bool)

(assert start!48258)

(declare-fun b!526468 () Bool)

(declare-fun b_free!13929 () Bool)

(declare-fun b_next!13945 () Bool)

(assert (=> b!526468 (= b_free!13929 (not b_next!13945))))

(declare-fun tp!166247 () Bool)

(declare-fun b_and!51423 () Bool)

(assert (=> b!526468 (= tp!166247 b_and!51423)))

(declare-fun b!526452 () Bool)

(declare-fun b_free!13931 () Bool)

(declare-fun b_next!13947 () Bool)

(assert (=> b!526452 (= b_free!13931 (not b_next!13947))))

(declare-fun tp!166251 () Bool)

(declare-fun b_and!51425 () Bool)

(assert (=> b!526452 (= tp!166251 b_and!51425)))

(declare-fun b!526459 () Bool)

(declare-fun b_free!13933 () Bool)

(declare-fun b_next!13949 () Bool)

(assert (=> b!526459 (= b_free!13933 (not b_next!13949))))

(declare-fun tp!166256 () Bool)

(declare-fun b_and!51427 () Bool)

(assert (=> b!526459 (= tp!166256 b_and!51427)))

(declare-fun b!526471 () Bool)

(declare-fun b_free!13935 () Bool)

(declare-fun b_next!13951 () Bool)

(assert (=> b!526471 (= b_free!13935 (not b_next!13951))))

(declare-fun tp!166270 () Bool)

(declare-fun b_and!51429 () Bool)

(assert (=> b!526471 (= tp!166270 b_and!51429)))

(declare-fun b!526462 () Bool)

(declare-fun b_free!13937 () Bool)

(declare-fun b_next!13953 () Bool)

(assert (=> b!526462 (= b_free!13937 (not b_next!13953))))

(declare-fun tp!166262 () Bool)

(declare-fun b_and!51431 () Bool)

(assert (=> b!526462 (= tp!166262 b_and!51431)))

(declare-fun b!526455 () Bool)

(declare-fun b_free!13939 () Bool)

(declare-fun b_next!13955 () Bool)

(assert (=> b!526455 (= b_free!13939 (not b_next!13955))))

(declare-fun tp!166267 () Bool)

(declare-fun b_and!51433 () Bool)

(assert (=> b!526455 (= tp!166267 b_and!51433)))

(declare-fun b_free!13941 () Bool)

(declare-fun b_next!13957 () Bool)

(assert (=> b!526455 (= b_free!13941 (not b_next!13957))))

(declare-fun tp!166264 () Bool)

(declare-fun b_and!51435 () Bool)

(assert (=> b!526455 (= tp!166264 b_and!51435)))

(declare-fun b!526464 () Bool)

(declare-fun b_free!13943 () Bool)

(declare-fun b_next!13959 () Bool)

(assert (=> b!526464 (= b_free!13943 (not b_next!13959))))

(declare-fun tp!166255 () Bool)

(declare-fun b_and!51437 () Bool)

(assert (=> b!526464 (= tp!166255 b_and!51437)))

(declare-fun b!526449 () Bool)

(declare-fun e!316330 () Bool)

(declare-fun e!316340 () Bool)

(assert (=> b!526449 (= e!316330 e!316340)))

(declare-fun b!526450 () Bool)

(declare-fun res!222747 () Bool)

(declare-fun e!316341 () Bool)

(assert (=> b!526450 (=> (not res!222747) (not e!316341))))

(declare-datatypes ((LexerInterface!775 0))(
  ( (LexerInterfaceExt!772 (__x!3652 Int)) (Lexer!773) )
))
(declare-fun thiss!12147 () LexerInterface!775)

(declare-datatypes ((List!4938 0))(
  ( (Nil!4928) (Cons!4928 (h!10329 (_ BitVec 16)) (t!73548 List!4938)) )
))
(declare-datatypes ((TokenValue!913 0))(
  ( (FloatLiteralValue!1826 (text!6836 List!4938)) (TokenValueExt!912 (__x!3653 Int)) (Broken!4565 (value!30166 List!4938)) (Object!922) (End!913) (Def!913) (Underscore!913) (Match!913) (Else!913) (Error!913) (Case!913) (If!913) (Extends!913) (Abstract!913) (Class!913) (Val!913) (DelimiterValue!1826 (del!973 List!4938)) (KeywordValue!919 (value!30167 List!4938)) (CommentValue!1826 (value!30168 List!4938)) (WhitespaceValue!1826 (value!30169 List!4938)) (IndentationValue!913 (value!30170 List!4938)) (String!6292) (Int32!913) (Broken!4566 (value!30171 List!4938)) (Boolean!914) (Unit!8800) (OperatorValue!916 (op!973 List!4938)) (IdentifierValue!1826 (value!30172 List!4938)) (IdentifierValue!1827 (value!30173 List!4938)) (WhitespaceValue!1827 (value!30174 List!4938)) (True!1826) (False!1826) (Broken!4567 (value!30175 List!4938)) (Broken!4568 (value!30176 List!4938)) (True!1827) (RightBrace!913) (RightBracket!913) (Colon!913) (Null!913) (Comma!913) (LeftBracket!913) (False!1827) (LeftBrace!913) (ImaginaryLiteralValue!913 (text!6837 List!4938)) (StringLiteralValue!2739 (value!30177 List!4938)) (EOFValue!913 (value!30178 List!4938)) (IdentValue!913 (value!30179 List!4938)) (DelimiterValue!1827 (value!30180 List!4938)) (DedentValue!913 (value!30181 List!4938)) (NewLineValue!913 (value!30182 List!4938)) (IntegerValue!2739 (value!30183 (_ BitVec 32)) (text!6838 List!4938)) (IntegerValue!2740 (value!30184 Int) (text!6839 List!4938)) (Times!913) (Or!913) (Equal!913) (Minus!913) (Broken!4569 (value!30185 List!4938)) (And!913) (Div!913) (LessEqual!913) (Mod!913) (Concat!2128) (Not!913) (Plus!913) (SpaceValue!913 (value!30186 List!4938)) (IntegerValue!2741 (value!30187 Int) (text!6840 List!4938)) (StringLiteralValue!2740 (text!6841 List!4938)) (FloatLiteralValue!1827 (text!6842 List!4938)) (BytesLiteralValue!913 (value!30188 List!4938)) (CommentValue!1827 (value!30189 List!4938)) (StringLiteralValue!2741 (value!30190 List!4938)) (ErrorTokenValue!913 (msg!974 List!4938)) )
))
(declare-datatypes ((C!3352 0))(
  ( (C!3353 (val!1902 Int)) )
))
(declare-datatypes ((List!4939 0))(
  ( (Nil!4929) (Cons!4929 (h!10330 C!3352) (t!73549 List!4939)) )
))
(declare-datatypes ((IArray!3203 0))(
  ( (IArray!3204 (innerList!1659 List!4939)) )
))
(declare-datatypes ((Conc!1601 0))(
  ( (Node!1601 (left!4210 Conc!1601) (right!4540 Conc!1601) (csize!3432 Int) (cheight!1812 Int)) (Leaf!2549 (xs!4238 IArray!3203) (csize!3433 Int)) (Empty!1601) )
))
(declare-datatypes ((BalanceConc!3210 0))(
  ( (BalanceConc!3211 (c!101064 Conc!1601)) )
))
(declare-datatypes ((TokenValueInjection!1594 0))(
  ( (TokenValueInjection!1595 (toValue!1724 Int) (toChars!1583 Int)) )
))
(declare-datatypes ((Regex!1215 0))(
  ( (ElementMatch!1215 (c!101065 C!3352)) (Concat!2129 (regOne!2942 Regex!1215) (regTwo!2942 Regex!1215)) (EmptyExpr!1215) (Star!1215 (reg!1544 Regex!1215)) (EmptyLang!1215) (Union!1215 (regOne!2943 Regex!1215) (regTwo!2943 Regex!1215)) )
))
(declare-datatypes ((String!6293 0))(
  ( (String!6294 (value!30191 String)) )
))
(declare-datatypes ((Rule!1578 0))(
  ( (Rule!1579 (regex!889 Regex!1215) (tag!1151 String!6293) (isSeparator!889 Bool) (transformation!889 TokenValueInjection!1594)) )
))
(declare-datatypes ((List!4940 0))(
  ( (Nil!4930) (Cons!4930 (h!10331 Rule!1578) (t!73550 List!4940)) )
))
(declare-fun rules!1345 () List!4940)

(declare-fun rulesInvariant!739 (LexerInterface!775 List!4940) Bool)

(assert (=> b!526450 (= res!222747 (rulesInvariant!739 thiss!12147 rules!1345))))

(declare-fun b!526451 () Bool)

(declare-fun e!316320 () Bool)

(declare-fun input!747 () BalanceConc!3210)

(declare-fun tp!166257 () Bool)

(declare-fun inv!6193 (Conc!1601) Bool)

(assert (=> b!526451 (= e!316320 (and (inv!6193 (c!101064 input!747)) tp!166257))))

(declare-datatypes ((List!4941 0))(
  ( (Nil!4931) (Cons!4931 (h!10332 Regex!1215) (t!73551 List!4941)) )
))
(declare-datatypes ((Context!306 0))(
  ( (Context!307 (exprs!653 List!4941)) )
))
(declare-datatypes ((tuple3!392 0))(
  ( (tuple3!393 (_1!3279 Regex!1215) (_2!3279 Context!306) (_3!241 C!3352)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6076 0))(
  ( (tuple2!6077 (_1!3280 tuple3!392) (_2!3280 (InoxSet Context!306))) )
))
(declare-datatypes ((List!4942 0))(
  ( (Nil!4932) (Cons!4932 (h!10333 tuple2!6076) (t!73552 List!4942)) )
))
(declare-datatypes ((array!2235 0))(
  ( (array!2236 (arr!1018 (Array (_ BitVec 32) List!4942)) (size!4022 (_ BitVec 32))) )
))
(declare-datatypes ((array!2237 0))(
  ( (array!2238 (arr!1019 (Array (_ BitVec 32) (_ BitVec 64))) (size!4023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1158 0))(
  ( (LongMapFixedSize!1159 (defaultEntry!935 Int) (mask!2058 (_ BitVec 32)) (extraKeys!826 (_ BitVec 32)) (zeroValue!836 List!4942) (minValue!836 List!4942) (_size!1267 (_ BitVec 32)) (_keys!873 array!2237) (_values!858 array!2235) (_vacant!640 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2257 0))(
  ( (Cell!2258 (v!16002 LongMapFixedSize!1158)) )
))
(declare-datatypes ((MutLongMap!579 0))(
  ( (LongMap!579 (underlying!1337 Cell!2257)) (MutLongMapExt!578 (__x!3654 Int)) )
))
(declare-datatypes ((Cell!2259 0))(
  ( (Cell!2260 (v!16003 MutLongMap!579)) )
))
(declare-datatypes ((Hashable!551 0))(
  ( (HashableExt!550 (__x!3655 Int)) )
))
(declare-datatypes ((MutableMap!551 0))(
  ( (MutableMapExt!550 (__x!3656 Int)) (HashMap!551 (underlying!1338 Cell!2259) (hashF!2459 Hashable!551) (_size!1268 (_ BitVec 32)) (defaultValue!702 Int)) )
))
(declare-datatypes ((CacheDown!212 0))(
  ( (CacheDown!213 (cache!938 MutableMap!551)) )
))
(declare-fun cacheDown!462 () CacheDown!212)

(declare-fun e!316334 () Bool)

(declare-fun tp!166254 () Bool)

(declare-fun tp!166250 () Bool)

(declare-fun array_inv!743 (array!2237) Bool)

(declare-fun array_inv!744 (array!2235) Bool)

(assert (=> b!526452 (= e!316340 (and tp!166251 tp!166254 tp!166250 (array_inv!743 (_keys!873 (v!16002 (underlying!1337 (v!16003 (underlying!1338 (cache!938 cacheDown!462))))))) (array_inv!744 (_values!858 (v!16002 (underlying!1337 (v!16003 (underlying!1338 (cache!938 cacheDown!462))))))) e!316334))))

(declare-fun b!526453 () Bool)

(declare-fun e!316343 () Bool)

(declare-fun e!316345 () Bool)

(assert (=> b!526453 (= e!316343 e!316345)))

(declare-fun b!526454 () Bool)

(declare-fun e!316325 () Bool)

(declare-fun tp!166252 () Bool)

(declare-fun e!316337 () Bool)

(declare-fun inv!6192 (String!6293) Bool)

(declare-fun inv!6194 (TokenValueInjection!1594) Bool)

(assert (=> b!526454 (= e!316325 (and tp!166252 (inv!6192 (tag!1151 (h!10331 rules!1345))) (inv!6194 (transformation!889 (h!10331 rules!1345))) e!316337))))

(assert (=> b!526455 (= e!316337 (and tp!166267 tp!166264))))

(declare-fun e!316331 () Bool)

(declare-fun b!526456 () Bool)

(declare-fun e!316322 () Bool)

(declare-datatypes ((tuple3!394 0))(
  ( (tuple3!395 (_1!3281 (InoxSet Context!306)) (_2!3281 Int) (_3!242 Int)) )
))
(declare-datatypes ((Hashable!552 0))(
  ( (HashableExt!551 (__x!3657 Int)) )
))
(declare-datatypes ((tuple2!6078 0))(
  ( (tuple2!6079 (_1!3282 tuple3!394) (_2!3282 Int)) )
))
(declare-datatypes ((List!4943 0))(
  ( (Nil!4933) (Cons!4933 (h!10334 tuple2!6078) (t!73553 List!4943)) )
))
(declare-datatypes ((array!2239 0))(
  ( (array!2240 (arr!1020 (Array (_ BitVec 32) List!4943)) (size!4024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1160 0))(
  ( (LongMapFixedSize!1161 (defaultEntry!936 Int) (mask!2059 (_ BitVec 32)) (extraKeys!827 (_ BitVec 32)) (zeroValue!837 List!4943) (minValue!837 List!4943) (_size!1269 (_ BitVec 32)) (_keys!874 array!2237) (_values!859 array!2239) (_vacant!641 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2261 0))(
  ( (Cell!2262 (v!16004 LongMapFixedSize!1160)) )
))
(declare-datatypes ((MutLongMap!580 0))(
  ( (LongMap!580 (underlying!1339 Cell!2261)) (MutLongMapExt!579 (__x!3658 Int)) )
))
(declare-datatypes ((Cell!2263 0))(
  ( (Cell!2264 (v!16005 MutLongMap!580)) )
))
(declare-datatypes ((MutableMap!552 0))(
  ( (MutableMapExt!551 (__x!3659 Int)) (HashMap!552 (underlying!1340 Cell!2263) (hashF!2460 Hashable!552) (_size!1270 (_ BitVec 32)) (defaultValue!703 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!166 0))(
  ( (CacheFurthestNullable!167 (cache!939 MutableMap!552) (totalInput!1745 BalanceConc!3210)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!166)

(declare-fun e!316323 () Bool)

(declare-fun inv!6195 (BalanceConc!3210) Bool)

(assert (=> b!526456 (= e!316322 (and e!316323 (inv!6195 (totalInput!1745 cacheFurthestNullable!56)) e!316331))))

(declare-fun b!526457 () Bool)

(declare-fun e!316335 () Bool)

(assert (=> b!526457 (= e!316335 e!316343)))

(declare-fun b!526458 () Bool)

(declare-fun e!316319 () Bool)

(declare-fun e!316344 () Bool)

(assert (=> b!526458 (= e!316319 e!316344)))

(declare-fun e!316315 () Bool)

(assert (=> b!526459 (= e!316344 (and e!316315 tp!166256))))

(declare-fun b!526460 () Bool)

(declare-fun e!316342 () Bool)

(assert (=> b!526460 (= e!316342 e!316330)))

(declare-fun mapIsEmpty!2274 () Bool)

(declare-fun mapRes!2274 () Bool)

(assert (=> mapIsEmpty!2274 mapRes!2274))

(declare-fun mapNonEmpty!2274 () Bool)

(declare-fun mapRes!2276 () Bool)

(declare-fun tp!166253 () Bool)

(declare-fun tp!166259 () Bool)

(assert (=> mapNonEmpty!2274 (= mapRes!2276 (and tp!166253 tp!166259))))

(declare-fun mapRest!2274 () (Array (_ BitVec 32) List!4943))

(declare-fun mapKey!2276 () (_ BitVec 32))

(declare-fun mapValue!2275 () List!4943)

(assert (=> mapNonEmpty!2274 (= (arr!1020 (_values!859 (v!16004 (underlying!1339 (v!16005 (underlying!1340 (cache!939 cacheFurthestNullable!56))))))) (store mapRest!2274 mapKey!2276 mapValue!2275))))

(declare-fun b!526461 () Bool)

(declare-fun e!316332 () Bool)

(declare-fun e!316326 () Bool)

(assert (=> b!526461 (= e!316332 e!316326)))

(declare-fun e!316329 () Bool)

(declare-fun tp!166258 () Bool)

(declare-fun tp!166272 () Bool)

(declare-fun array_inv!745 (array!2239) Bool)

(assert (=> b!526462 (= e!316326 (and tp!166262 tp!166272 tp!166258 (array_inv!743 (_keys!874 (v!16004 (underlying!1339 (v!16005 (underlying!1340 (cache!939 cacheFurthestNullable!56))))))) (array_inv!745 (_values!859 (v!16004 (underlying!1339 (v!16005 (underlying!1340 (cache!939 cacheFurthestNullable!56))))))) e!316329))))

(declare-fun res!222750 () Bool)

(assert (=> start!48258 (=> (not res!222750) (not e!316341))))

(get-info :version)

(assert (=> start!48258 (= res!222750 ((_ is Lexer!773) thiss!12147))))

(assert (=> start!48258 e!316341))

(assert (=> start!48258 (and (inv!6195 input!747) e!316320)))

(declare-fun inv!6196 (CacheDown!212) Bool)

(assert (=> start!48258 (and (inv!6196 cacheDown!462) e!316319)))

(assert (=> start!48258 true))

(declare-fun inv!6197 (CacheFurthestNullable!166) Bool)

(assert (=> start!48258 (and (inv!6197 cacheFurthestNullable!56) e!316322)))

(declare-datatypes ((tuple2!6080 0))(
  ( (tuple2!6081 (_1!3283 Context!306) (_2!3283 C!3352)) )
))
(declare-datatypes ((tuple2!6082 0))(
  ( (tuple2!6083 (_1!3284 tuple2!6080) (_2!3284 (InoxSet Context!306))) )
))
(declare-datatypes ((List!4944 0))(
  ( (Nil!4934) (Cons!4934 (h!10335 tuple2!6082) (t!73554 List!4944)) )
))
(declare-datatypes ((Hashable!553 0))(
  ( (HashableExt!552 (__x!3660 Int)) )
))
(declare-datatypes ((array!2241 0))(
  ( (array!2242 (arr!1021 (Array (_ BitVec 32) List!4944)) (size!4025 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1162 0))(
  ( (LongMapFixedSize!1163 (defaultEntry!937 Int) (mask!2060 (_ BitVec 32)) (extraKeys!828 (_ BitVec 32)) (zeroValue!838 List!4944) (minValue!838 List!4944) (_size!1271 (_ BitVec 32)) (_keys!875 array!2237) (_values!860 array!2241) (_vacant!642 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2265 0))(
  ( (Cell!2266 (v!16006 LongMapFixedSize!1162)) )
))
(declare-datatypes ((MutLongMap!581 0))(
  ( (LongMap!581 (underlying!1341 Cell!2265)) (MutLongMapExt!580 (__x!3661 Int)) )
))
(declare-datatypes ((Cell!2267 0))(
  ( (Cell!2268 (v!16007 MutLongMap!581)) )
))
(declare-datatypes ((MutableMap!553 0))(
  ( (MutableMapExt!552 (__x!3662 Int)) (HashMap!553 (underlying!1342 Cell!2267) (hashF!2461 Hashable!553) (_size!1272 (_ BitVec 32)) (defaultValue!704 Int)) )
))
(declare-datatypes ((CacheUp!224 0))(
  ( (CacheUp!225 (cache!940 MutableMap!553)) )
))
(declare-fun cacheUp!449 () CacheUp!224)

(declare-fun e!316336 () Bool)

(declare-fun inv!6198 (CacheUp!224) Bool)

(assert (=> start!48258 (and (inv!6198 cacheUp!449) e!316336)))

(declare-fun e!316317 () Bool)

(assert (=> start!48258 e!316317))

(declare-fun b!526448 () Bool)

(declare-fun e!316333 () Bool)

(assert (=> b!526448 (= e!316336 e!316333)))

(declare-fun b!526463 () Bool)

(declare-fun tp!166249 () Bool)

(assert (=> b!526463 (= e!316331 (and (inv!6193 (c!101064 (totalInput!1745 cacheFurthestNullable!56))) tp!166249))))

(declare-fun e!316316 () Bool)

(assert (=> b!526464 (= e!316333 (and e!316316 tp!166255))))

(declare-fun b!526465 () Bool)

(declare-fun lt!217774 () MutLongMap!581)

(assert (=> b!526465 (= e!316316 (and e!316335 ((_ is LongMap!581) lt!217774)))))

(assert (=> b!526465 (= lt!217774 (v!16007 (underlying!1342 (cache!940 cacheUp!449))))))

(declare-fun b!526466 () Bool)

(declare-fun e!316321 () Bool)

(declare-fun tp!166248 () Bool)

(declare-fun mapRes!2275 () Bool)

(assert (=> b!526466 (= e!316321 (and tp!166248 mapRes!2275))))

(declare-fun condMapEmpty!2274 () Bool)

(declare-fun mapDefault!2276 () List!4944)

(assert (=> b!526466 (= condMapEmpty!2274 (= (arr!1021 (_values!860 (v!16006 (underlying!1341 (v!16007 (underlying!1342 (cache!940 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4944)) mapDefault!2276)))))

(declare-fun b!526467 () Bool)

(declare-fun res!222752 () Bool)

(assert (=> b!526467 (=> (not res!222752) (not e!316341))))

(declare-fun valid!561 (CacheFurthestNullable!166) Bool)

(assert (=> b!526467 (= res!222752 (valid!561 cacheFurthestNullable!56))))

(declare-fun tp!166265 () Bool)

(declare-fun tp!166260 () Bool)

(declare-fun array_inv!746 (array!2241) Bool)

(assert (=> b!526468 (= e!316345 (and tp!166247 tp!166260 tp!166265 (array_inv!743 (_keys!875 (v!16006 (underlying!1341 (v!16007 (underlying!1342 (cache!940 cacheUp!449))))))) (array_inv!746 (_values!860 (v!16006 (underlying!1341 (v!16007 (underlying!1342 (cache!940 cacheUp!449))))))) e!316321))))

(declare-fun b!526469 () Bool)

(declare-fun tp!166266 () Bool)

(assert (=> b!526469 (= e!316334 (and tp!166266 mapRes!2274))))

(declare-fun condMapEmpty!2276 () Bool)

(declare-fun mapDefault!2274 () List!4942)

(assert (=> b!526469 (= condMapEmpty!2276 (= (arr!1018 (_values!858 (v!16002 (underlying!1337 (v!16003 (underlying!1338 (cache!938 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4942)) mapDefault!2274)))))

(declare-fun b!526470 () Bool)

(declare-fun tp!166271 () Bool)

(assert (=> b!526470 (= e!316329 (and tp!166271 mapRes!2276))))

(declare-fun condMapEmpty!2275 () Bool)

(declare-fun mapDefault!2275 () List!4943)

(assert (=> b!526470 (= condMapEmpty!2275 (= (arr!1020 (_values!859 (v!16004 (underlying!1339 (v!16005 (underlying!1340 (cache!939 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4943)) mapDefault!2275)))))

(declare-fun e!316327 () Bool)

(assert (=> b!526471 (= e!316323 (and e!316327 tp!166270))))

(declare-fun mapIsEmpty!2275 () Bool)

(assert (=> mapIsEmpty!2275 mapRes!2275))

(declare-fun b!526472 () Bool)

(declare-fun res!222746 () Bool)

(assert (=> b!526472 (=> (not res!222746) (not e!316341))))

(declare-fun valid!562 (CacheDown!212) Bool)

(assert (=> b!526472 (= res!222746 (valid!562 cacheDown!462))))

(declare-fun b!526473 () Bool)

(declare-fun e!316338 () Bool)

(declare-fun lt!217776 () MutLongMap!580)

(assert (=> b!526473 (= e!316327 (and e!316338 ((_ is LongMap!580) lt!217776)))))

(assert (=> b!526473 (= lt!217776 (v!16005 (underlying!1340 (cache!939 cacheFurthestNullable!56))))))

(declare-fun b!526474 () Bool)

(declare-fun res!222749 () Bool)

(assert (=> b!526474 (=> (not res!222749) (not e!316341))))

(declare-fun isEmpty!3605 (List!4940) Bool)

(assert (=> b!526474 (= res!222749 (not (isEmpty!3605 rules!1345)))))

(declare-fun mapIsEmpty!2276 () Bool)

(assert (=> mapIsEmpty!2276 mapRes!2276))

(declare-fun b!526475 () Bool)

(assert (=> b!526475 (= e!316338 e!316332)))

(declare-fun b!526476 () Bool)

(declare-fun lt!217775 () MutLongMap!579)

(assert (=> b!526476 (= e!316315 (and e!316342 ((_ is LongMap!579) lt!217775)))))

(assert (=> b!526476 (= lt!217775 (v!16003 (underlying!1338 (cache!938 cacheDown!462))))))

(declare-fun mapNonEmpty!2275 () Bool)

(declare-fun tp!166268 () Bool)

(declare-fun tp!166269 () Bool)

(assert (=> mapNonEmpty!2275 (= mapRes!2274 (and tp!166268 tp!166269))))

(declare-fun mapKey!2275 () (_ BitVec 32))

(declare-fun mapValue!2274 () List!4942)

(declare-fun mapRest!2276 () (Array (_ BitVec 32) List!4942))

(assert (=> mapNonEmpty!2275 (= (arr!1018 (_values!858 (v!16002 (underlying!1337 (v!16003 (underlying!1338 (cache!938 cacheDown!462))))))) (store mapRest!2276 mapKey!2275 mapValue!2274))))

(declare-fun b!526477 () Bool)

(declare-fun tp!166263 () Bool)

(assert (=> b!526477 (= e!316317 (and e!316325 tp!166263))))

(declare-fun b!526478 () Bool)

(declare-fun res!222751 () Bool)

(assert (=> b!526478 (=> (not res!222751) (not e!316341))))

(declare-fun valid!563 (CacheUp!224) Bool)

(assert (=> b!526478 (= res!222751 (valid!563 cacheUp!449))))

(declare-fun b!526479 () Bool)

(assert (=> b!526479 (= e!316341 false)))

(declare-datatypes ((Token!1516 0))(
  ( (Token!1517 (value!30192 TokenValue!913) (rule!1590 Rule!1578) (size!4026 Int) (originalCharacters!929 List!4939)) )
))
(declare-datatypes ((List!4945 0))(
  ( (Nil!4935) (Cons!4935 (h!10336 Token!1516) (t!73555 List!4945)) )
))
(declare-datatypes ((IArray!3205 0))(
  ( (IArray!3206 (innerList!1660 List!4945)) )
))
(declare-datatypes ((Conc!1602 0))(
  ( (Node!1602 (left!4211 Conc!1602) (right!4541 Conc!1602) (csize!3434 Int) (cheight!1813 Int)) (Leaf!2550 (xs!4239 IArray!3205) (csize!3435 Int)) (Empty!1602) )
))
(declare-datatypes ((BalanceConc!3212 0))(
  ( (BalanceConc!3213 (c!101066 Conc!1602)) )
))
(declare-datatypes ((tuple2!6084 0))(
  ( (tuple2!6085 (_1!3285 BalanceConc!3212) (_2!3285 BalanceConc!3210)) )
))
(declare-datatypes ((tuple4!90 0))(
  ( (tuple4!91 (_1!3286 tuple2!6084) (_2!3286 CacheUp!224) (_3!243 CacheDown!212) (_4!45 CacheFurthestNullable!166)) )
))
(declare-fun lt!217777 () tuple4!90)

(declare-fun lexTailRecV3Mem!18 (LexerInterface!775 List!4940 BalanceConc!3210 BalanceConc!3210 BalanceConc!3210 BalanceConc!3212 CacheUp!224 CacheDown!212 CacheFurthestNullable!166) tuple4!90)

(assert (=> b!526479 (= lt!217777 (lexTailRecV3Mem!18 thiss!12147 rules!1345 input!747 (BalanceConc!3211 Empty!1601) input!747 (BalanceConc!3213 Empty!1602) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))

(declare-fun mapNonEmpty!2276 () Bool)

(declare-fun tp!166246 () Bool)

(declare-fun tp!166261 () Bool)

(assert (=> mapNonEmpty!2276 (= mapRes!2275 (and tp!166246 tp!166261))))

(declare-fun mapRest!2275 () (Array (_ BitVec 32) List!4944))

(declare-fun mapKey!2274 () (_ BitVec 32))

(declare-fun mapValue!2276 () List!4944)

(assert (=> mapNonEmpty!2276 (= (arr!1021 (_values!860 (v!16006 (underlying!1341 (v!16007 (underlying!1342 (cache!940 cacheUp!449))))))) (store mapRest!2275 mapKey!2274 mapValue!2276))))

(declare-fun b!526480 () Bool)

(declare-fun res!222748 () Bool)

(assert (=> b!526480 (=> (not res!222748) (not e!316341))))

(assert (=> b!526480 (= res!222748 (= (totalInput!1745 cacheFurthestNullable!56) input!747))))

(assert (= (and start!48258 res!222750) b!526474))

(assert (= (and b!526474 res!222749) b!526450))

(assert (= (and b!526450 res!222747) b!526478))

(assert (= (and b!526478 res!222751) b!526472))

(assert (= (and b!526472 res!222746) b!526467))

(assert (= (and b!526467 res!222752) b!526480))

(assert (= (and b!526480 res!222748) b!526479))

(assert (= start!48258 b!526451))

(assert (= (and b!526469 condMapEmpty!2276) mapIsEmpty!2274))

(assert (= (and b!526469 (not condMapEmpty!2276)) mapNonEmpty!2275))

(assert (= b!526452 b!526469))

(assert (= b!526449 b!526452))

(assert (= b!526460 b!526449))

(assert (= (and b!526476 ((_ is LongMap!579) (v!16003 (underlying!1338 (cache!938 cacheDown!462))))) b!526460))

(assert (= b!526459 b!526476))

(assert (= (and b!526458 ((_ is HashMap!551) (cache!938 cacheDown!462))) b!526459))

(assert (= start!48258 b!526458))

(assert (= (and b!526470 condMapEmpty!2275) mapIsEmpty!2276))

(assert (= (and b!526470 (not condMapEmpty!2275)) mapNonEmpty!2274))

(assert (= b!526462 b!526470))

(assert (= b!526461 b!526462))

(assert (= b!526475 b!526461))

(assert (= (and b!526473 ((_ is LongMap!580) (v!16005 (underlying!1340 (cache!939 cacheFurthestNullable!56))))) b!526475))

(assert (= b!526471 b!526473))

(assert (= (and b!526456 ((_ is HashMap!552) (cache!939 cacheFurthestNullable!56))) b!526471))

(assert (= b!526456 b!526463))

(assert (= start!48258 b!526456))

(assert (= (and b!526466 condMapEmpty!2274) mapIsEmpty!2275))

(assert (= (and b!526466 (not condMapEmpty!2274)) mapNonEmpty!2276))

(assert (= b!526468 b!526466))

(assert (= b!526453 b!526468))

(assert (= b!526457 b!526453))

(assert (= (and b!526465 ((_ is LongMap!581) (v!16007 (underlying!1342 (cache!940 cacheUp!449))))) b!526457))

(assert (= b!526464 b!526465))

(assert (= (and b!526448 ((_ is HashMap!553) (cache!940 cacheUp!449))) b!526464))

(assert (= start!48258 b!526448))

(assert (= b!526454 b!526455))

(assert (= b!526477 b!526454))

(assert (= (and start!48258 ((_ is Cons!4930) rules!1345)) b!526477))

(declare-fun m!772393 () Bool)

(assert (=> b!526456 m!772393))

(declare-fun m!772395 () Bool)

(assert (=> b!526452 m!772395))

(declare-fun m!772397 () Bool)

(assert (=> b!526452 m!772397))

(declare-fun m!772399 () Bool)

(assert (=> b!526454 m!772399))

(declare-fun m!772401 () Bool)

(assert (=> b!526454 m!772401))

(declare-fun m!772403 () Bool)

(assert (=> mapNonEmpty!2276 m!772403))

(declare-fun m!772405 () Bool)

(assert (=> b!526450 m!772405))

(declare-fun m!772407 () Bool)

(assert (=> b!526468 m!772407))

(declare-fun m!772409 () Bool)

(assert (=> b!526468 m!772409))

(declare-fun m!772411 () Bool)

(assert (=> mapNonEmpty!2275 m!772411))

(declare-fun m!772413 () Bool)

(assert (=> b!526478 m!772413))

(declare-fun m!772415 () Bool)

(assert (=> b!526472 m!772415))

(declare-fun m!772417 () Bool)

(assert (=> b!526467 m!772417))

(declare-fun m!772419 () Bool)

(assert (=> b!526474 m!772419))

(declare-fun m!772421 () Bool)

(assert (=> b!526462 m!772421))

(declare-fun m!772423 () Bool)

(assert (=> b!526462 m!772423))

(declare-fun m!772425 () Bool)

(assert (=> b!526479 m!772425))

(declare-fun m!772427 () Bool)

(assert (=> b!526463 m!772427))

(declare-fun m!772429 () Bool)

(assert (=> start!48258 m!772429))

(declare-fun m!772431 () Bool)

(assert (=> start!48258 m!772431))

(declare-fun m!772433 () Bool)

(assert (=> start!48258 m!772433))

(declare-fun m!772435 () Bool)

(assert (=> start!48258 m!772435))

(declare-fun m!772437 () Bool)

(assert (=> b!526451 m!772437))

(declare-fun m!772439 () Bool)

(assert (=> mapNonEmpty!2274 m!772439))

(check-sat b_and!51425 (not mapNonEmpty!2276) (not b!526452) (not b_next!13947) (not b_next!13951) b_and!51423 (not b_next!13945) (not b_next!13959) (not mapNonEmpty!2275) (not b!526451) b_and!51431 b_and!51433 (not b!526466) b_and!51435 b_and!51429 (not b!526450) (not b_next!13953) (not b!526477) (not b!526472) (not b!526470) (not b!526474) b_and!51427 (not b!526454) (not start!48258) (not b!526462) b_and!51437 (not b!526463) (not b!526469) (not b!526479) (not b!526456) (not b_next!13949) (not b!526478) (not b_next!13955) (not b_next!13957) (not b!526467) (not mapNonEmpty!2274) (not b!526468))
(check-sat b_and!51435 b_and!51425 b_and!51429 (not b_next!13953) (not b_next!13947) b_and!51427 b_and!51437 (not b_next!13951) b_and!51423 (not b_next!13945) (not b_next!13959) (not b_next!13949) b_and!51431 b_and!51433 (not b_next!13955) (not b_next!13957))
