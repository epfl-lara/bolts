; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48150 () Bool)

(assert start!48150)

(declare-fun b!525291 () Bool)

(declare-fun b_free!13857 () Bool)

(declare-fun b_next!13873 () Bool)

(assert (=> b!525291 (= b_free!13857 (not b_next!13873))))

(declare-fun tp!165457 () Bool)

(declare-fun b_and!51351 () Bool)

(assert (=> b!525291 (= tp!165457 b_and!51351)))

(declare-fun b!525289 () Bool)

(declare-fun b_free!13859 () Bool)

(declare-fun b_next!13875 () Bool)

(assert (=> b!525289 (= b_free!13859 (not b_next!13875))))

(declare-fun tp!165471 () Bool)

(declare-fun b_and!51353 () Bool)

(assert (=> b!525289 (= tp!165471 b_and!51353)))

(declare-fun b_free!13861 () Bool)

(declare-fun b_next!13877 () Bool)

(assert (=> b!525289 (= b_free!13861 (not b_next!13877))))

(declare-fun tp!165451 () Bool)

(declare-fun b_and!51355 () Bool)

(assert (=> b!525289 (= tp!165451 b_and!51355)))

(declare-fun b!525260 () Bool)

(declare-fun b_free!13863 () Bool)

(declare-fun b_next!13879 () Bool)

(assert (=> b!525260 (= b_free!13863 (not b_next!13879))))

(declare-fun tp!165463 () Bool)

(declare-fun b_and!51357 () Bool)

(assert (=> b!525260 (= tp!165463 b_and!51357)))

(declare-fun b!525270 () Bool)

(declare-fun b_free!13865 () Bool)

(declare-fun b_next!13881 () Bool)

(assert (=> b!525270 (= b_free!13865 (not b_next!13881))))

(declare-fun tp!165458 () Bool)

(declare-fun b_and!51359 () Bool)

(assert (=> b!525270 (= tp!165458 b_and!51359)))

(declare-fun b!525288 () Bool)

(declare-fun b_free!13867 () Bool)

(declare-fun b_next!13883 () Bool)

(assert (=> b!525288 (= b_free!13867 (not b_next!13883))))

(declare-fun tp!165450 () Bool)

(declare-fun b_and!51361 () Bool)

(assert (=> b!525288 (= tp!165450 b_and!51361)))

(declare-fun b!525262 () Bool)

(declare-fun b_free!13869 () Bool)

(declare-fun b_next!13885 () Bool)

(assert (=> b!525262 (= b_free!13869 (not b_next!13885))))

(declare-fun tp!165462 () Bool)

(declare-fun b_and!51363 () Bool)

(assert (=> b!525262 (= tp!165462 b_and!51363)))

(declare-fun b!525269 () Bool)

(declare-fun b_free!13871 () Bool)

(declare-fun b_next!13887 () Bool)

(assert (=> b!525269 (= b_free!13871 (not b_next!13887))))

(declare-fun tp!165454 () Bool)

(declare-fun b_and!51365 () Bool)

(assert (=> b!525269 (= tp!165454 b_and!51365)))

(declare-fun b!525257 () Bool)

(declare-fun res!222404 () Bool)

(declare-fun e!315420 () Bool)

(assert (=> b!525257 (=> (not res!222404) (not e!315420))))

(declare-datatypes ((C!3344 0))(
  ( (C!3345 (val!1898 Int)) )
))
(declare-datatypes ((List!4910 0))(
  ( (Nil!4900) (Cons!4900 (h!10301 C!3344) (t!73515 List!4910)) )
))
(declare-datatypes ((IArray!3189 0))(
  ( (IArray!3190 (innerList!1652 List!4910)) )
))
(declare-datatypes ((Regex!1211 0))(
  ( (ElementMatch!1211 (c!100953 C!3344)) (Concat!2121 (regOne!2934 Regex!1211) (regTwo!2934 Regex!1211)) (EmptyExpr!1211) (Star!1211 (reg!1540 Regex!1211)) (EmptyLang!1211) (Union!1211 (regOne!2935 Regex!1211) (regTwo!2935 Regex!1211)) )
))
(declare-datatypes ((List!4911 0))(
  ( (Nil!4901) (Cons!4901 (h!10302 Regex!1211) (t!73516 List!4911)) )
))
(declare-datatypes ((Context!298 0))(
  ( (Context!299 (exprs!649 List!4911)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!378 0))(
  ( (tuple3!379 (_1!3253 (InoxSet Context!298)) (_2!3253 Int) (_3!234 Int)) )
))
(declare-datatypes ((Hashable!541 0))(
  ( (HashableExt!540 (__x!3616 Int)) )
))
(declare-datatypes ((tuple2!6038 0))(
  ( (tuple2!6039 (_1!3254 tuple3!378) (_2!3254 Int)) )
))
(declare-datatypes ((List!4912 0))(
  ( (Nil!4902) (Cons!4902 (h!10303 tuple2!6038) (t!73517 List!4912)) )
))
(declare-datatypes ((array!2203 0))(
  ( (array!2204 (arr!1004 (Array (_ BitVec 32) (_ BitVec 64))) (size!3999 (_ BitVec 32))) )
))
(declare-datatypes ((array!2205 0))(
  ( (array!2206 (arr!1005 (Array (_ BitVec 32) List!4912)) (size!4000 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1138 0))(
  ( (LongMapFixedSize!1139 (defaultEntry!925 Int) (mask!2046 (_ BitVec 32)) (extraKeys!816 (_ BitVec 32)) (zeroValue!826 List!4912) (minValue!826 List!4912) (_size!1247 (_ BitVec 32)) (_keys!863 array!2203) (_values!848 array!2205) (_vacant!630 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2217 0))(
  ( (Cell!2218 (v!15979 LongMapFixedSize!1138)) )
))
(declare-datatypes ((MutLongMap!569 0))(
  ( (LongMap!569 (underlying!1317 Cell!2217)) (MutLongMapExt!568 (__x!3617 Int)) )
))
(declare-datatypes ((Cell!2219 0))(
  ( (Cell!2220 (v!15980 MutLongMap!569)) )
))
(declare-datatypes ((MutableMap!541 0))(
  ( (MutableMapExt!540 (__x!3618 Int)) (HashMap!541 (underlying!1318 Cell!2219) (hashF!2449 Hashable!541) (_size!1248 (_ BitVec 32)) (defaultValue!692 Int)) )
))
(declare-datatypes ((Conc!1594 0))(
  ( (Node!1594 (left!4199 Conc!1594) (right!4529 Conc!1594) (csize!3418 Int) (cheight!1805 Int)) (Leaf!2540 (xs!4229 IArray!3189) (csize!3419 Int)) (Empty!1594) )
))
(declare-datatypes ((BalanceConc!3196 0))(
  ( (BalanceConc!3197 (c!100954 Conc!1594)) )
))
(declare-datatypes ((CacheFurthestNullable!158 0))(
  ( (CacheFurthestNullable!159 (cache!928 MutableMap!541) (totalInput!1740 BalanceConc!3196)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!158)

(declare-fun input!747 () BalanceConc!3196)

(assert (=> b!525257 (= res!222404 (= (totalInput!1740 cacheFurthestNullable!56) input!747))))

(declare-fun b!525258 () Bool)

(declare-fun e!315445 () Bool)

(declare-fun tp!165470 () Bool)

(declare-fun inv!6169 (Conc!1594) Bool)

(assert (=> b!525258 (= e!315445 (and (inv!6169 (c!100954 input!747)) tp!165470))))

(declare-fun mapNonEmpty!2226 () Bool)

(declare-fun mapRes!2228 () Bool)

(declare-fun tp!165449 () Bool)

(declare-fun tp!165469 () Bool)

(assert (=> mapNonEmpty!2226 (= mapRes!2228 (and tp!165449 tp!165469))))

(declare-fun mapKey!2227 () (_ BitVec 32))

(declare-fun mapRest!2227 () (Array (_ BitVec 32) List!4912))

(declare-fun mapValue!2227 () List!4912)

(assert (=> mapNonEmpty!2226 (= (arr!1005 (_values!848 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) (store mapRest!2227 mapKey!2227 mapValue!2227))))

(declare-fun b!525259 () Bool)

(declare-fun res!222410 () Bool)

(assert (=> b!525259 (=> (not res!222410) (not e!315420))))

(declare-fun valid!551 (CacheFurthestNullable!158) Bool)

(assert (=> b!525259 (= res!222410 (valid!551 cacheFurthestNullable!56))))

(declare-fun tp!165453 () Bool)

(declare-fun e!315447 () Bool)

(declare-fun tp!165473 () Bool)

(declare-fun e!315443 () Bool)

(declare-fun array_inv!733 (array!2203) Bool)

(declare-fun array_inv!734 (array!2205) Bool)

(assert (=> b!525260 (= e!315447 (and tp!165463 tp!165453 tp!165473 (array_inv!733 (_keys!863 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) (array_inv!734 (_values!848 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) e!315443))))

(declare-fun b!525261 () Bool)

(declare-fun e!315419 () Bool)

(declare-fun e!315425 () Bool)

(assert (=> b!525261 (= e!315419 e!315425)))

(declare-fun e!315428 () Bool)

(declare-fun tp!165466 () Bool)

(declare-fun tp!165465 () Bool)

(declare-fun e!315438 () Bool)

(declare-datatypes ((tuple2!6040 0))(
  ( (tuple2!6041 (_1!3255 Context!298) (_2!3255 C!3344)) )
))
(declare-datatypes ((tuple2!6042 0))(
  ( (tuple2!6043 (_1!3256 tuple2!6040) (_2!3256 (InoxSet Context!298))) )
))
(declare-datatypes ((List!4913 0))(
  ( (Nil!4903) (Cons!4903 (h!10304 tuple2!6042) (t!73518 List!4913)) )
))
(declare-datatypes ((Hashable!542 0))(
  ( (HashableExt!541 (__x!3619 Int)) )
))
(declare-datatypes ((array!2207 0))(
  ( (array!2208 (arr!1006 (Array (_ BitVec 32) List!4913)) (size!4001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1140 0))(
  ( (LongMapFixedSize!1141 (defaultEntry!926 Int) (mask!2047 (_ BitVec 32)) (extraKeys!817 (_ BitVec 32)) (zeroValue!827 List!4913) (minValue!827 List!4913) (_size!1249 (_ BitVec 32)) (_keys!864 array!2203) (_values!849 array!2207) (_vacant!631 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2221 0))(
  ( (Cell!2222 (v!15981 LongMapFixedSize!1140)) )
))
(declare-datatypes ((MutLongMap!570 0))(
  ( (LongMap!570 (underlying!1319 Cell!2221)) (MutLongMapExt!569 (__x!3620 Int)) )
))
(declare-datatypes ((Cell!2223 0))(
  ( (Cell!2224 (v!15982 MutLongMap!570)) )
))
(declare-datatypes ((MutableMap!542 0))(
  ( (MutableMapExt!541 (__x!3621 Int)) (HashMap!542 (underlying!1320 Cell!2223) (hashF!2450 Hashable!542) (_size!1250 (_ BitVec 32)) (defaultValue!693 Int)) )
))
(declare-datatypes ((CacheUp!218 0))(
  ( (CacheUp!219 (cache!929 MutableMap!542)) )
))
(declare-fun cacheUp!449 () CacheUp!218)

(declare-fun array_inv!735 (array!2207) Bool)

(assert (=> b!525262 (= e!315428 (and tp!165462 tp!165466 tp!165465 (array_inv!733 (_keys!864 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) (array_inv!735 (_values!849 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) e!315438))))

(declare-fun b!525264 () Bool)

(declare-fun e!315418 () Bool)

(declare-fun tp!165452 () Bool)

(declare-fun mapRes!2227 () Bool)

(assert (=> b!525264 (= e!315418 (and tp!165452 mapRes!2227))))

(declare-fun condMapEmpty!2227 () Bool)

(declare-datatypes ((tuple3!380 0))(
  ( (tuple3!381 (_1!3257 Regex!1211) (_2!3257 Context!298) (_3!235 C!3344)) )
))
(declare-datatypes ((tuple2!6044 0))(
  ( (tuple2!6045 (_1!3258 tuple3!380) (_2!3258 (InoxSet Context!298))) )
))
(declare-datatypes ((List!4914 0))(
  ( (Nil!4904) (Cons!4904 (h!10305 tuple2!6044) (t!73519 List!4914)) )
))
(declare-datatypes ((array!2209 0))(
  ( (array!2210 (arr!1007 (Array (_ BitVec 32) List!4914)) (size!4002 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1142 0))(
  ( (LongMapFixedSize!1143 (defaultEntry!927 Int) (mask!2048 (_ BitVec 32)) (extraKeys!818 (_ BitVec 32)) (zeroValue!828 List!4914) (minValue!828 List!4914) (_size!1251 (_ BitVec 32)) (_keys!865 array!2203) (_values!850 array!2209) (_vacant!632 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2225 0))(
  ( (Cell!2226 (v!15983 LongMapFixedSize!1142)) )
))
(declare-datatypes ((MutLongMap!571 0))(
  ( (LongMap!571 (underlying!1321 Cell!2225)) (MutLongMapExt!570 (__x!3622 Int)) )
))
(declare-datatypes ((Cell!2227 0))(
  ( (Cell!2228 (v!15984 MutLongMap!571)) )
))
(declare-datatypes ((Hashable!543 0))(
  ( (HashableExt!542 (__x!3623 Int)) )
))
(declare-datatypes ((MutableMap!543 0))(
  ( (MutableMapExt!542 (__x!3624 Int)) (HashMap!543 (underlying!1322 Cell!2227) (hashF!2451 Hashable!543) (_size!1252 (_ BitVec 32)) (defaultValue!694 Int)) )
))
(declare-datatypes ((CacheDown!206 0))(
  ( (CacheDown!207 (cache!930 MutableMap!543)) )
))
(declare-fun cacheDown!462 () CacheDown!206)

(declare-fun mapDefault!2228 () List!4914)

(assert (=> b!525264 (= condMapEmpty!2227 (= (arr!1007 (_values!850 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4914)) mapDefault!2228)))))

(declare-fun mapNonEmpty!2227 () Bool)

(declare-fun mapRes!2226 () Bool)

(declare-fun tp!165448 () Bool)

(declare-fun tp!165456 () Bool)

(assert (=> mapNonEmpty!2227 (= mapRes!2226 (and tp!165448 tp!165456))))

(declare-fun mapKey!2226 () (_ BitVec 32))

(declare-fun mapRest!2226 () (Array (_ BitVec 32) List!4913))

(declare-fun mapValue!2226 () List!4913)

(assert (=> mapNonEmpty!2227 (= (arr!1006 (_values!849 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) (store mapRest!2226 mapKey!2226 mapValue!2226))))

(declare-fun b!525265 () Bool)

(assert (=> b!525265 (= e!315425 e!315447)))

(declare-fun b!525266 () Bool)

(declare-fun e!315423 () Bool)

(declare-fun e!315442 () Bool)

(declare-fun lt!217595 () MutLongMap!571)

(get-info :version)

(assert (=> b!525266 (= e!315423 (and e!315442 ((_ is LongMap!571) lt!217595)))))

(assert (=> b!525266 (= lt!217595 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))

(declare-fun b!525267 () Bool)

(declare-fun e!315426 () Bool)

(declare-fun tp!165455 () Bool)

(assert (=> b!525267 (= e!315426 (and (inv!6169 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) tp!165455))))

(declare-fun b!525268 () Bool)

(declare-fun e!315435 () Bool)

(assert (=> b!525268 (= e!315442 e!315435)))

(declare-fun e!315417 () Bool)

(assert (=> b!525269 (= e!315417 (and e!315423 tp!165454))))

(declare-fun e!315441 () Bool)

(declare-fun e!315449 () Bool)

(assert (=> b!525270 (= e!315441 (and e!315449 tp!165458))))

(declare-fun mapIsEmpty!2226 () Bool)

(assert (=> mapIsEmpty!2226 mapRes!2226))

(declare-fun b!525271 () Bool)

(declare-fun res!222407 () Bool)

(assert (=> b!525271 (=> (not res!222407) (not e!315420))))

(declare-datatypes ((LexerInterface!772 0))(
  ( (LexerInterfaceExt!769 (__x!3625 Int)) (Lexer!770) )
))
(declare-fun thiss!12147 () LexerInterface!772)

(declare-datatypes ((List!4915 0))(
  ( (Nil!4905) (Cons!4905 (h!10306 (_ BitVec 16)) (t!73520 List!4915)) )
))
(declare-datatypes ((TokenValue!910 0))(
  ( (FloatLiteralValue!1820 (text!6815 List!4915)) (TokenValueExt!909 (__x!3626 Int)) (Broken!4550 (value!30079 List!4915)) (Object!919) (End!910) (Def!910) (Underscore!910) (Match!910) (Else!910) (Error!910) (Case!910) (If!910) (Extends!910) (Abstract!910) (Class!910) (Val!910) (DelimiterValue!1820 (del!970 List!4915)) (KeywordValue!916 (value!30080 List!4915)) (CommentValue!1820 (value!30081 List!4915)) (WhitespaceValue!1820 (value!30082 List!4915)) (IndentationValue!910 (value!30083 List!4915)) (String!6275) (Int32!910) (Broken!4551 (value!30084 List!4915)) (Boolean!911) (Unit!8795) (OperatorValue!913 (op!970 List!4915)) (IdentifierValue!1820 (value!30085 List!4915)) (IdentifierValue!1821 (value!30086 List!4915)) (WhitespaceValue!1821 (value!30087 List!4915)) (True!1820) (False!1820) (Broken!4552 (value!30088 List!4915)) (Broken!4553 (value!30089 List!4915)) (True!1821) (RightBrace!910) (RightBracket!910) (Colon!910) (Null!910) (Comma!910) (LeftBracket!910) (False!1821) (LeftBrace!910) (ImaginaryLiteralValue!910 (text!6816 List!4915)) (StringLiteralValue!2730 (value!30090 List!4915)) (EOFValue!910 (value!30091 List!4915)) (IdentValue!910 (value!30092 List!4915)) (DelimiterValue!1821 (value!30093 List!4915)) (DedentValue!910 (value!30094 List!4915)) (NewLineValue!910 (value!30095 List!4915)) (IntegerValue!2730 (value!30096 (_ BitVec 32)) (text!6817 List!4915)) (IntegerValue!2731 (value!30097 Int) (text!6818 List!4915)) (Times!910) (Or!910) (Equal!910) (Minus!910) (Broken!4554 (value!30098 List!4915)) (And!910) (Div!910) (LessEqual!910) (Mod!910) (Concat!2122) (Not!910) (Plus!910) (SpaceValue!910 (value!30099 List!4915)) (IntegerValue!2732 (value!30100 Int) (text!6819 List!4915)) (StringLiteralValue!2731 (text!6820 List!4915)) (FloatLiteralValue!1821 (text!6821 List!4915)) (BytesLiteralValue!910 (value!30101 List!4915)) (CommentValue!1821 (value!30102 List!4915)) (StringLiteralValue!2732 (value!30103 List!4915)) (ErrorTokenValue!910 (msg!971 List!4915)) )
))
(declare-datatypes ((TokenValueInjection!1588 0))(
  ( (TokenValueInjection!1589 (toValue!1719 Int) (toChars!1578 Int)) )
))
(declare-datatypes ((String!6276 0))(
  ( (String!6277 (value!30104 String)) )
))
(declare-datatypes ((Rule!1572 0))(
  ( (Rule!1573 (regex!886 Regex!1211) (tag!1148 String!6276) (isSeparator!886 Bool) (transformation!886 TokenValueInjection!1588)) )
))
(declare-datatypes ((List!4916 0))(
  ( (Nil!4906) (Cons!4906 (h!10307 Rule!1572) (t!73521 List!4916)) )
))
(declare-fun rules!1345 () List!4916)

(declare-fun rulesInvariant!737 (LexerInterface!772 List!4916) Bool)

(assert (=> b!525271 (= res!222407 (rulesInvariant!737 thiss!12147 rules!1345))))

(declare-fun b!525272 () Bool)

(declare-fun e!315421 () Bool)

(assert (=> b!525272 (= e!315435 e!315421)))

(declare-fun b!525273 () Bool)

(declare-fun tp!165467 () Bool)

(assert (=> b!525273 (= e!315438 (and tp!165467 mapRes!2226))))

(declare-fun condMapEmpty!2226 () Bool)

(declare-fun mapDefault!2227 () List!4913)

(assert (=> b!525273 (= condMapEmpty!2226 (= (arr!1006 (_values!849 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4913)) mapDefault!2227)))))

(declare-fun b!525274 () Bool)

(declare-fun e!315430 () Bool)

(declare-fun e!315429 () Bool)

(declare-fun lt!217594 () MutLongMap!570)

(assert (=> b!525274 (= e!315430 (and e!315429 ((_ is LongMap!570) lt!217594)))))

(assert (=> b!525274 (= lt!217594 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))

(declare-fun tp!165472 () Bool)

(declare-fun b!525275 () Bool)

(declare-fun e!315424 () Bool)

(declare-fun e!315440 () Bool)

(declare-fun inv!6162 (String!6276) Bool)

(declare-fun inv!6170 (TokenValueInjection!1588) Bool)

(assert (=> b!525275 (= e!315424 (and tp!165472 (inv!6162 (tag!1148 (h!10307 rules!1345))) (inv!6170 (transformation!886 (h!10307 rules!1345))) e!315440))))

(declare-fun b!525276 () Bool)

(declare-fun e!315432 () Bool)

(declare-fun e!315439 () Bool)

(assert (=> b!525276 (= e!315432 e!315439)))

(declare-fun res!222409 () Bool)

(assert (=> b!525276 (=> (not res!222409) (not e!315439))))

(declare-datatypes ((Token!1510 0))(
  ( (Token!1511 (value!30105 TokenValue!910) (rule!1587 Rule!1572) (size!4003 Int) (originalCharacters!926 List!4910)) )
))
(declare-datatypes ((List!4917 0))(
  ( (Nil!4907) (Cons!4907 (h!10308 Token!1510) (t!73522 List!4917)) )
))
(declare-datatypes ((IArray!3191 0))(
  ( (IArray!3192 (innerList!1653 List!4917)) )
))
(declare-datatypes ((Conc!1595 0))(
  ( (Node!1595 (left!4200 Conc!1595) (right!4530 Conc!1595) (csize!3420 Int) (cheight!1806 Int)) (Leaf!2541 (xs!4230 IArray!3191) (csize!3421 Int)) (Empty!1595) )
))
(declare-datatypes ((BalanceConc!3198 0))(
  ( (BalanceConc!3199 (c!100955 Conc!1595)) )
))
(declare-datatypes ((tuple2!6046 0))(
  ( (tuple2!6047 (_1!3259 BalanceConc!3198) (_2!3259 BalanceConc!3196)) )
))
(declare-fun lt!217596 () tuple2!6046)

(declare-fun list!2054 (BalanceConc!3198) List!4917)

(assert (=> b!525276 (= res!222409 (= (list!2054 (_1!3259 lt!217596)) (list!2054 (BalanceConc!3199 Empty!1595))))))

(declare-fun lexRec!140 (LexerInterface!772 List!4916 BalanceConc!3196) tuple2!6046)

(assert (=> b!525276 (= lt!217596 (lexRec!140 thiss!12147 rules!1345 (BalanceConc!3197 Empty!1594)))))

(declare-fun b!525277 () Bool)

(declare-fun e!315444 () Bool)

(assert (=> b!525277 (= e!315429 e!315444)))

(declare-fun b!525278 () Bool)

(assert (=> b!525278 (= e!315444 e!315428)))

(declare-fun b!525279 () Bool)

(declare-fun lt!217598 () tuple2!6046)

(declare-fun ++!1372 (BalanceConc!3198 BalanceConc!3198) BalanceConc!3198)

(assert (=> b!525279 (= e!315439 (not (= (list!2054 (_1!3259 lt!217598)) (list!2054 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598))))))))

(assert (=> b!525279 (= lt!217598 (lexRec!140 thiss!12147 rules!1345 input!747))))

(declare-fun res!222402 () Bool)

(assert (=> start!48150 (=> (not res!222402) (not e!315420))))

(assert (=> start!48150 (= res!222402 ((_ is Lexer!770) thiss!12147))))

(assert (=> start!48150 e!315420))

(declare-fun inv!6171 (BalanceConc!3196) Bool)

(assert (=> start!48150 (and (inv!6171 input!747) e!315445)))

(declare-fun e!315448 () Bool)

(declare-fun inv!6172 (CacheDown!206) Bool)

(assert (=> start!48150 (and (inv!6172 cacheDown!462) e!315448)))

(assert (=> start!48150 true))

(declare-fun e!315446 () Bool)

(declare-fun inv!6173 (CacheFurthestNullable!158) Bool)

(assert (=> start!48150 (and (inv!6173 cacheFurthestNullable!56) e!315446)))

(declare-fun e!315431 () Bool)

(declare-fun inv!6174 (CacheUp!218) Bool)

(assert (=> start!48150 (and (inv!6174 cacheUp!449) e!315431)))

(declare-fun e!315437 () Bool)

(assert (=> start!48150 e!315437))

(declare-fun b!525263 () Bool)

(assert (=> b!525263 (= e!315446 (and e!315441 (inv!6171 (totalInput!1740 cacheFurthestNullable!56)) e!315426))))

(declare-fun b!525280 () Bool)

(declare-fun res!222406 () Bool)

(assert (=> b!525280 (=> (not res!222406) (not e!315439))))

(declare-fun isEmpty!3597 (List!4910) Bool)

(declare-fun list!2055 (BalanceConc!3196) List!4910)

(assert (=> b!525280 (= res!222406 (isEmpty!3597 (list!2055 (_2!3259 lt!217596))))))

(declare-fun b!525281 () Bool)

(declare-fun tp!165461 () Bool)

(assert (=> b!525281 (= e!315437 (and e!315424 tp!165461))))

(declare-fun mapNonEmpty!2228 () Bool)

(declare-fun tp!165447 () Bool)

(declare-fun tp!165468 () Bool)

(assert (=> mapNonEmpty!2228 (= mapRes!2227 (and tp!165447 tp!165468))))

(declare-fun mapKey!2228 () (_ BitVec 32))

(declare-fun mapValue!2228 () List!4914)

(declare-fun mapRest!2228 () (Array (_ BitVec 32) List!4914))

(assert (=> mapNonEmpty!2228 (= (arr!1007 (_values!850 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) (store mapRest!2228 mapKey!2228 mapValue!2228))))

(declare-fun b!525282 () Bool)

(declare-fun res!222403 () Bool)

(assert (=> b!525282 (=> (not res!222403) (not e!315420))))

(declare-fun valid!552 (CacheUp!218) Bool)

(assert (=> b!525282 (= res!222403 (valid!552 cacheUp!449))))

(declare-fun b!525283 () Bool)

(declare-fun e!315433 () Bool)

(assert (=> b!525283 (= e!315431 e!315433)))

(declare-fun b!525284 () Bool)

(assert (=> b!525284 (= e!315448 e!315417)))

(declare-fun mapIsEmpty!2227 () Bool)

(assert (=> mapIsEmpty!2227 mapRes!2227))

(declare-fun b!525285 () Bool)

(declare-fun res!222405 () Bool)

(assert (=> b!525285 (=> (not res!222405) (not e!315420))))

(declare-fun valid!553 (CacheDown!206) Bool)

(assert (=> b!525285 (= res!222405 (valid!553 cacheDown!462))))

(declare-fun b!525286 () Bool)

(declare-fun tp!165459 () Bool)

(assert (=> b!525286 (= e!315443 (and tp!165459 mapRes!2228))))

(declare-fun condMapEmpty!2228 () Bool)

(declare-fun mapDefault!2226 () List!4912)

(assert (=> b!525286 (= condMapEmpty!2228 (= (arr!1005 (_values!848 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4912)) mapDefault!2226)))))

(declare-fun b!525287 () Bool)

(assert (=> b!525287 (= e!315420 e!315432)))

(declare-fun res!222408 () Bool)

(assert (=> b!525287 (=> (not res!222408) (not e!315432))))

(declare-fun lt!217599 () List!4910)

(declare-fun lt!217593 () List!4910)

(declare-fun ++!1373 (List!4910 List!4910) List!4910)

(assert (=> b!525287 (= res!222408 (= lt!217599 (++!1373 lt!217593 lt!217599)))))

(assert (=> b!525287 (= lt!217599 (list!2055 input!747))))

(assert (=> b!525287 (= lt!217593 (list!2055 (BalanceConc!3197 Empty!1594)))))

(declare-fun tp!165460 () Bool)

(declare-fun tp!165464 () Bool)

(declare-fun array_inv!736 (array!2209) Bool)

(assert (=> b!525288 (= e!315421 (and tp!165450 tp!165460 tp!165464 (array_inv!733 (_keys!865 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) (array_inv!736 (_values!850 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) e!315418))))

(assert (=> b!525289 (= e!315440 (and tp!165471 tp!165451))))

(declare-fun b!525290 () Bool)

(declare-fun res!222401 () Bool)

(assert (=> b!525290 (=> (not res!222401) (not e!315420))))

(declare-fun isEmpty!3598 (List!4916) Bool)

(assert (=> b!525290 (= res!222401 (not (isEmpty!3598 rules!1345)))))

(assert (=> b!525291 (= e!315433 (and e!315430 tp!165457))))

(declare-fun b!525292 () Bool)

(declare-fun lt!217597 () MutLongMap!569)

(assert (=> b!525292 (= e!315449 (and e!315419 ((_ is LongMap!569) lt!217597)))))

(assert (=> b!525292 (= lt!217597 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))

(declare-fun mapIsEmpty!2228 () Bool)

(assert (=> mapIsEmpty!2228 mapRes!2228))

(assert (= (and start!48150 res!222402) b!525290))

(assert (= (and b!525290 res!222401) b!525271))

(assert (= (and b!525271 res!222407) b!525282))

(assert (= (and b!525282 res!222403) b!525285))

(assert (= (and b!525285 res!222405) b!525259))

(assert (= (and b!525259 res!222410) b!525257))

(assert (= (and b!525257 res!222404) b!525287))

(assert (= (and b!525287 res!222408) b!525276))

(assert (= (and b!525276 res!222409) b!525280))

(assert (= (and b!525280 res!222406) b!525279))

(assert (= start!48150 b!525258))

(assert (= (and b!525264 condMapEmpty!2227) mapIsEmpty!2227))

(assert (= (and b!525264 (not condMapEmpty!2227)) mapNonEmpty!2228))

(assert (= b!525288 b!525264))

(assert (= b!525272 b!525288))

(assert (= b!525268 b!525272))

(assert (= (and b!525266 ((_ is LongMap!571) (v!15984 (underlying!1322 (cache!930 cacheDown!462))))) b!525268))

(assert (= b!525269 b!525266))

(assert (= (and b!525284 ((_ is HashMap!543) (cache!930 cacheDown!462))) b!525269))

(assert (= start!48150 b!525284))

(assert (= (and b!525286 condMapEmpty!2228) mapIsEmpty!2228))

(assert (= (and b!525286 (not condMapEmpty!2228)) mapNonEmpty!2226))

(assert (= b!525260 b!525286))

(assert (= b!525265 b!525260))

(assert (= b!525261 b!525265))

(assert (= (and b!525292 ((_ is LongMap!569) (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))) b!525261))

(assert (= b!525270 b!525292))

(assert (= (and b!525263 ((_ is HashMap!541) (cache!928 cacheFurthestNullable!56))) b!525270))

(assert (= b!525263 b!525267))

(assert (= start!48150 b!525263))

(assert (= (and b!525273 condMapEmpty!2226) mapIsEmpty!2226))

(assert (= (and b!525273 (not condMapEmpty!2226)) mapNonEmpty!2227))

(assert (= b!525262 b!525273))

(assert (= b!525278 b!525262))

(assert (= b!525277 b!525278))

(assert (= (and b!525274 ((_ is LongMap!570) (v!15982 (underlying!1320 (cache!929 cacheUp!449))))) b!525277))

(assert (= b!525291 b!525274))

(assert (= (and b!525283 ((_ is HashMap!542) (cache!929 cacheUp!449))) b!525291))

(assert (= start!48150 b!525283))

(assert (= b!525275 b!525289))

(assert (= b!525281 b!525275))

(assert (= (and start!48150 ((_ is Cons!4906) rules!1345)) b!525281))

(declare-fun m!771300 () Bool)

(assert (=> b!525280 m!771300))

(assert (=> b!525280 m!771300))

(declare-fun m!771302 () Bool)

(assert (=> b!525280 m!771302))

(declare-fun m!771304 () Bool)

(assert (=> b!525267 m!771304))

(declare-fun m!771306 () Bool)

(assert (=> b!525285 m!771306))

(declare-fun m!771308 () Bool)

(assert (=> b!525279 m!771308))

(declare-fun m!771310 () Bool)

(assert (=> b!525279 m!771310))

(assert (=> b!525279 m!771310))

(declare-fun m!771312 () Bool)

(assert (=> b!525279 m!771312))

(declare-fun m!771314 () Bool)

(assert (=> b!525279 m!771314))

(declare-fun m!771316 () Bool)

(assert (=> b!525271 m!771316))

(declare-fun m!771318 () Bool)

(assert (=> b!525287 m!771318))

(declare-fun m!771320 () Bool)

(assert (=> b!525287 m!771320))

(declare-fun m!771322 () Bool)

(assert (=> b!525287 m!771322))

(declare-fun m!771324 () Bool)

(assert (=> b!525259 m!771324))

(declare-fun m!771326 () Bool)

(assert (=> b!525263 m!771326))

(declare-fun m!771328 () Bool)

(assert (=> b!525290 m!771328))

(declare-fun m!771330 () Bool)

(assert (=> b!525260 m!771330))

(declare-fun m!771332 () Bool)

(assert (=> b!525260 m!771332))

(declare-fun m!771334 () Bool)

(assert (=> mapNonEmpty!2226 m!771334))

(declare-fun m!771336 () Bool)

(assert (=> mapNonEmpty!2227 m!771336))

(declare-fun m!771338 () Bool)

(assert (=> b!525258 m!771338))

(declare-fun m!771340 () Bool)

(assert (=> b!525282 m!771340))

(declare-fun m!771342 () Bool)

(assert (=> b!525262 m!771342))

(declare-fun m!771344 () Bool)

(assert (=> b!525262 m!771344))

(declare-fun m!771346 () Bool)

(assert (=> b!525288 m!771346))

(declare-fun m!771348 () Bool)

(assert (=> b!525288 m!771348))

(declare-fun m!771350 () Bool)

(assert (=> start!48150 m!771350))

(declare-fun m!771352 () Bool)

(assert (=> start!48150 m!771352))

(declare-fun m!771354 () Bool)

(assert (=> start!48150 m!771354))

(declare-fun m!771356 () Bool)

(assert (=> start!48150 m!771356))

(declare-fun m!771358 () Bool)

(assert (=> mapNonEmpty!2228 m!771358))

(declare-fun m!771360 () Bool)

(assert (=> b!525276 m!771360))

(declare-fun m!771362 () Bool)

(assert (=> b!525276 m!771362))

(declare-fun m!771364 () Bool)

(assert (=> b!525276 m!771364))

(declare-fun m!771366 () Bool)

(assert (=> b!525275 m!771366))

(declare-fun m!771368 () Bool)

(assert (=> b!525275 m!771368))

(check-sat (not b!525276) (not b_next!13885) (not b!525260) (not b!525279) (not b!525288) b_and!51353 b_and!51359 (not b!525264) b_and!51361 (not b!525286) (not b_next!13883) b_and!51355 (not b_next!13877) (not b!525282) (not b_next!13879) (not b!525263) (not b!525259) (not b!525258) (not b!525290) (not b!525267) b_and!51357 (not b!525287) (not b_next!13887) (not b!525273) (not b_next!13873) (not mapNonEmpty!2228) b_and!51351 (not start!48150) b_and!51363 (not b_next!13881) (not b!525281) (not b!525275) (not b!525271) (not b!525285) (not b!525262) (not b!525280) b_and!51365 (not mapNonEmpty!2227) (not b_next!13875) (not mapNonEmpty!2226))
(check-sat (not b_next!13879) b_and!51357 (not b_next!13887) b_and!51363 (not b_next!13885) (not b_next!13881) b_and!51353 b_and!51359 b_and!51365 (not b_next!13875) b_and!51361 (not b_next!13883) b_and!51355 (not b_next!13877) (not b_next!13873) b_and!51351)
(get-model)

(declare-fun d!187240 () Bool)

(assert (=> d!187240 (= (isEmpty!3597 (list!2055 (_2!3259 lt!217596))) ((_ is Nil!4900) (list!2055 (_2!3259 lt!217596))))))

(assert (=> b!525280 d!187240))

(declare-fun d!187242 () Bool)

(declare-fun list!2056 (Conc!1594) List!4910)

(assert (=> d!187242 (= (list!2055 (_2!3259 lt!217596)) (list!2056 (c!100954 (_2!3259 lt!217596))))))

(declare-fun bs!65559 () Bool)

(assert (= bs!65559 d!187242))

(declare-fun m!771370 () Bool)

(assert (=> bs!65559 m!771370))

(assert (=> b!525280 d!187242))

(declare-fun d!187244 () Bool)

(assert (=> d!187244 (= (array_inv!733 (_keys!865 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) (bvsge (size!3999 (_keys!865 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!525288 d!187244))

(declare-fun d!187246 () Bool)

(assert (=> d!187246 (= (array_inv!736 (_values!850 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) (bvsge (size!4002 (_values!850 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!525288 d!187246))

(declare-fun d!187248 () Bool)

(assert (=> d!187248 (= (array_inv!733 (_keys!863 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) (bvsge (size!3999 (_keys!863 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!525260 d!187248))

(declare-fun d!187250 () Bool)

(assert (=> d!187250 (= (array_inv!734 (_values!848 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) (bvsge (size!4000 (_values!848 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!525260 d!187250))

(declare-fun d!187252 () Bool)

(declare-fun list!2057 (Conc!1595) List!4917)

(assert (=> d!187252 (= (list!2054 (_1!3259 lt!217598)) (list!2057 (c!100955 (_1!3259 lt!217598))))))

(declare-fun bs!65560 () Bool)

(assert (= bs!65560 d!187252))

(declare-fun m!771372 () Bool)

(assert (=> bs!65560 m!771372))

(assert (=> b!525279 d!187252))

(declare-fun d!187254 () Bool)

(assert (=> d!187254 (= (list!2054 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598))) (list!2057 (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598)))))))

(declare-fun bs!65561 () Bool)

(assert (= bs!65561 d!187254))

(declare-fun m!771374 () Bool)

(assert (=> bs!65561 m!771374))

(assert (=> b!525279 d!187254))

(declare-fun b!525303 () Bool)

(declare-fun res!222422 () Bool)

(declare-fun e!315452 () Bool)

(assert (=> b!525303 (=> (not res!222422) (not e!315452))))

(declare-fun height!249 (Conc!1595) Int)

(declare-fun ++!1374 (Conc!1595 Conc!1595) Conc!1595)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!525303 (= res!222422 (>= (height!249 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))) (max!0 (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (height!249 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun d!187256 () Bool)

(assert (=> d!187256 e!315452))

(declare-fun res!222420 () Bool)

(assert (=> d!187256 (=> (not res!222420) (not e!315452))))

(declare-fun appendAssocInst!108 (Conc!1595 Conc!1595) Bool)

(assert (=> d!187256 (= res!222420 (appendAssocInst!108 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))))

(declare-fun lt!217602 () BalanceConc!3198)

(assert (=> d!187256 (= lt!217602 (BalanceConc!3199 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))))))

(assert (=> d!187256 (= (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598)) lt!217602)))

(declare-fun b!525301 () Bool)

(declare-fun res!222419 () Bool)

(assert (=> b!525301 (=> (not res!222419) (not e!315452))))

(declare-fun isBalanced!494 (Conc!1595) Bool)

(assert (=> b!525301 (= res!222419 (isBalanced!494 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))))))

(declare-fun b!525302 () Bool)

(declare-fun res!222421 () Bool)

(assert (=> b!525302 (=> (not res!222421) (not e!315452))))

(assert (=> b!525302 (= res!222421 (<= (height!249 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))) (+ (max!0 (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (height!249 (c!100955 (_1!3259 lt!217598)))) 1)))))

(declare-fun b!525304 () Bool)

(declare-fun ++!1375 (List!4917 List!4917) List!4917)

(assert (=> b!525304 (= e!315452 (= (list!2054 lt!217602) (++!1375 (list!2054 (BalanceConc!3199 Empty!1595)) (list!2054 (_1!3259 lt!217598)))))))

(assert (= (and d!187256 res!222420) b!525301))

(assert (= (and b!525301 res!222419) b!525302))

(assert (= (and b!525302 res!222421) b!525303))

(assert (= (and b!525303 res!222422) b!525304))

(declare-fun m!771376 () Bool)

(assert (=> b!525304 m!771376))

(assert (=> b!525304 m!771362))

(assert (=> b!525304 m!771308))

(assert (=> b!525304 m!771362))

(assert (=> b!525304 m!771308))

(declare-fun m!771378 () Bool)

(assert (=> b!525304 m!771378))

(declare-fun m!771380 () Bool)

(assert (=> b!525302 m!771380))

(declare-fun m!771382 () Bool)

(assert (=> b!525302 m!771382))

(declare-fun m!771384 () Bool)

(assert (=> b!525302 m!771384))

(assert (=> b!525302 m!771380))

(declare-fun m!771386 () Bool)

(assert (=> b!525302 m!771386))

(declare-fun m!771388 () Bool)

(assert (=> b!525302 m!771388))

(assert (=> b!525302 m!771382))

(assert (=> b!525302 m!771386))

(assert (=> b!525303 m!771380))

(assert (=> b!525303 m!771382))

(assert (=> b!525303 m!771384))

(assert (=> b!525303 m!771380))

(assert (=> b!525303 m!771386))

(assert (=> b!525303 m!771388))

(assert (=> b!525303 m!771382))

(assert (=> b!525303 m!771386))

(declare-fun m!771390 () Bool)

(assert (=> d!187256 m!771390))

(assert (=> d!187256 m!771386))

(assert (=> b!525301 m!771386))

(assert (=> b!525301 m!771386))

(declare-fun m!771392 () Bool)

(assert (=> b!525301 m!771392))

(assert (=> b!525279 d!187256))

(declare-fun b!525319 () Bool)

(declare-fun e!315461 () Bool)

(declare-fun lt!217609 () tuple2!6046)

(assert (=> b!525319 (= e!315461 (= (list!2055 (_2!3259 lt!217609)) (list!2055 input!747)))))

(declare-fun d!187258 () Bool)

(declare-fun e!315463 () Bool)

(assert (=> d!187258 e!315463))

(declare-fun res!222431 () Bool)

(assert (=> d!187258 (=> (not res!222431) (not e!315463))))

(assert (=> d!187258 (= res!222431 e!315461)))

(declare-fun c!100965 () Bool)

(declare-fun size!4004 (BalanceConc!3198) Int)

(assert (=> d!187258 (= c!100965 (> (size!4004 (_1!3259 lt!217609)) 0))))

(declare-fun e!315462 () tuple2!6046)

(assert (=> d!187258 (= lt!217609 e!315462)))

(declare-fun c!100964 () Bool)

(declare-datatypes ((tuple2!6048 0))(
  ( (tuple2!6049 (_1!3260 Token!1510) (_2!3260 BalanceConc!3196)) )
))
(declare-datatypes ((Option!1246 0))(
  ( (None!1245) (Some!1245 (v!15985 tuple2!6048)) )
))
(declare-fun lt!217611 () Option!1246)

(assert (=> d!187258 (= c!100964 ((_ is Some!1245) lt!217611))))

(declare-fun maxPrefixZipperSequence!445 (LexerInterface!772 List!4916 BalanceConc!3196) Option!1246)

(assert (=> d!187258 (= lt!217611 (maxPrefixZipperSequence!445 thiss!12147 rules!1345 input!747))))

(assert (=> d!187258 (= (lexRec!140 thiss!12147 rules!1345 input!747) lt!217609)))

(declare-fun b!525320 () Bool)

(assert (=> b!525320 (= e!315462 (tuple2!6047 (BalanceConc!3199 Empty!1595) input!747))))

(declare-fun b!525321 () Bool)

(declare-datatypes ((tuple2!6050 0))(
  ( (tuple2!6051 (_1!3261 List!4917) (_2!3261 List!4910)) )
))
(declare-fun lexList!304 (LexerInterface!772 List!4916 List!4910) tuple2!6050)

(assert (=> b!525321 (= e!315463 (= (list!2055 (_2!3259 lt!217609)) (_2!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 input!747)))))))

(declare-fun b!525322 () Bool)

(declare-fun e!315464 () Bool)

(declare-fun isEmpty!3599 (BalanceConc!3198) Bool)

(assert (=> b!525322 (= e!315464 (not (isEmpty!3599 (_1!3259 lt!217609))))))

(declare-fun b!525323 () Bool)

(declare-fun lt!217610 () tuple2!6046)

(declare-fun prepend!240 (BalanceConc!3198 Token!1510) BalanceConc!3198)

(assert (=> b!525323 (= e!315462 (tuple2!6047 (prepend!240 (_1!3259 lt!217610) (_1!3260 (v!15985 lt!217611))) (_2!3259 lt!217610)))))

(assert (=> b!525323 (= lt!217610 (lexRec!140 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217611))))))

(declare-fun b!525324 () Bool)

(assert (=> b!525324 (= e!315461 e!315464)))

(declare-fun res!222429 () Bool)

(declare-fun size!4005 (BalanceConc!3196) Int)

(assert (=> b!525324 (= res!222429 (< (size!4005 (_2!3259 lt!217609)) (size!4005 input!747)))))

(assert (=> b!525324 (=> (not res!222429) (not e!315464))))

(declare-fun b!525325 () Bool)

(declare-fun res!222430 () Bool)

(assert (=> b!525325 (=> (not res!222430) (not e!315463))))

(assert (=> b!525325 (= res!222430 (= (list!2054 (_1!3259 lt!217609)) (_1!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 input!747)))))))

(assert (= (and d!187258 c!100964) b!525323))

(assert (= (and d!187258 (not c!100964)) b!525320))

(assert (= (and d!187258 c!100965) b!525324))

(assert (= (and d!187258 (not c!100965)) b!525319))

(assert (= (and b!525324 res!222429) b!525322))

(assert (= (and d!187258 res!222431) b!525325))

(assert (= (and b!525325 res!222430) b!525321))

(declare-fun m!771394 () Bool)

(assert (=> b!525322 m!771394))

(declare-fun m!771396 () Bool)

(assert (=> b!525319 m!771396))

(assert (=> b!525319 m!771320))

(declare-fun m!771398 () Bool)

(assert (=> b!525323 m!771398))

(declare-fun m!771400 () Bool)

(assert (=> b!525323 m!771400))

(declare-fun m!771402 () Bool)

(assert (=> b!525325 m!771402))

(assert (=> b!525325 m!771320))

(assert (=> b!525325 m!771320))

(declare-fun m!771404 () Bool)

(assert (=> b!525325 m!771404))

(declare-fun m!771406 () Bool)

(assert (=> b!525324 m!771406))

(declare-fun m!771408 () Bool)

(assert (=> b!525324 m!771408))

(assert (=> b!525321 m!771396))

(assert (=> b!525321 m!771320))

(assert (=> b!525321 m!771320))

(assert (=> b!525321 m!771404))

(declare-fun m!771410 () Bool)

(assert (=> d!187258 m!771410))

(declare-fun m!771412 () Bool)

(assert (=> d!187258 m!771412))

(assert (=> b!525279 d!187258))

(declare-fun d!187260 () Bool)

(assert (=> d!187260 (= (isEmpty!3598 rules!1345) ((_ is Nil!4906) rules!1345))))

(assert (=> b!525290 d!187260))

(declare-fun d!187262 () Bool)

(assert (=> d!187262 (= (array_inv!733 (_keys!864 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) (bvsge (size!3999 (_keys!864 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!525262 d!187262))

(declare-fun d!187264 () Bool)

(assert (=> d!187264 (= (array_inv!735 (_values!849 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) (bvsge (size!4001 (_values!849 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!525262 d!187264))

(declare-fun d!187266 () Bool)

(declare-fun isBalanced!495 (Conc!1594) Bool)

(assert (=> d!187266 (= (inv!6171 input!747) (isBalanced!495 (c!100954 input!747)))))

(declare-fun bs!65562 () Bool)

(assert (= bs!65562 d!187266))

(declare-fun m!771414 () Bool)

(assert (=> bs!65562 m!771414))

(assert (=> start!48150 d!187266))

(declare-fun d!187268 () Bool)

(declare-fun res!222434 () Bool)

(declare-fun e!315467 () Bool)

(assert (=> d!187268 (=> (not res!222434) (not e!315467))))

(assert (=> d!187268 (= res!222434 ((_ is HashMap!543) (cache!930 cacheDown!462)))))

(assert (=> d!187268 (= (inv!6172 cacheDown!462) e!315467)))

(declare-fun b!525328 () Bool)

(declare-fun validCacheMapDown!33 (MutableMap!543) Bool)

(assert (=> b!525328 (= e!315467 (validCacheMapDown!33 (cache!930 cacheDown!462)))))

(assert (= (and d!187268 res!222434) b!525328))

(declare-fun m!771416 () Bool)

(assert (=> b!525328 m!771416))

(assert (=> start!48150 d!187268))

(declare-fun d!187270 () Bool)

(declare-fun res!222437 () Bool)

(declare-fun e!315470 () Bool)

(assert (=> d!187270 (=> (not res!222437) (not e!315470))))

(assert (=> d!187270 (= res!222437 ((_ is HashMap!541) (cache!928 cacheFurthestNullable!56)))))

(assert (=> d!187270 (= (inv!6173 cacheFurthestNullable!56) e!315470)))

(declare-fun b!525331 () Bool)

(declare-fun validCacheMapFurthestNullable!26 (MutableMap!541 BalanceConc!3196) Bool)

(assert (=> b!525331 (= e!315470 (validCacheMapFurthestNullable!26 (cache!928 cacheFurthestNullable!56) (totalInput!1740 cacheFurthestNullable!56)))))

(assert (= (and d!187270 res!222437) b!525331))

(declare-fun m!771418 () Bool)

(assert (=> b!525331 m!771418))

(assert (=> start!48150 d!187270))

(declare-fun d!187272 () Bool)

(declare-fun res!222440 () Bool)

(declare-fun e!315473 () Bool)

(assert (=> d!187272 (=> (not res!222440) (not e!315473))))

(assert (=> d!187272 (= res!222440 ((_ is HashMap!542) (cache!929 cacheUp!449)))))

(assert (=> d!187272 (= (inv!6174 cacheUp!449) e!315473)))

(declare-fun b!525334 () Bool)

(declare-fun validCacheMapUp!36 (MutableMap!542) Bool)

(assert (=> b!525334 (= e!315473 (validCacheMapUp!36 (cache!929 cacheUp!449)))))

(assert (= (and d!187272 res!222440) b!525334))

(declare-fun m!771420 () Bool)

(assert (=> b!525334 m!771420))

(assert (=> start!48150 d!187272))

(declare-fun d!187274 () Bool)

(declare-fun c!100968 () Bool)

(assert (=> d!187274 (= c!100968 ((_ is Node!1594) (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))

(declare-fun e!315478 () Bool)

(assert (=> d!187274 (= (inv!6169 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) e!315478)))

(declare-fun b!525341 () Bool)

(declare-fun inv!6175 (Conc!1594) Bool)

(assert (=> b!525341 (= e!315478 (inv!6175 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))

(declare-fun b!525342 () Bool)

(declare-fun e!315479 () Bool)

(assert (=> b!525342 (= e!315478 e!315479)))

(declare-fun res!222443 () Bool)

(assert (=> b!525342 (= res!222443 (not ((_ is Leaf!2540) (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(assert (=> b!525342 (=> res!222443 e!315479)))

(declare-fun b!525343 () Bool)

(declare-fun inv!6176 (Conc!1594) Bool)

(assert (=> b!525343 (= e!315479 (inv!6176 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))

(assert (= (and d!187274 c!100968) b!525341))

(assert (= (and d!187274 (not c!100968)) b!525342))

(assert (= (and b!525342 (not res!222443)) b!525343))

(declare-fun m!771422 () Bool)

(assert (=> b!525341 m!771422))

(declare-fun m!771424 () Bool)

(assert (=> b!525343 m!771424))

(assert (=> b!525267 d!187274))

(declare-fun d!187276 () Bool)

(declare-fun c!100969 () Bool)

(assert (=> d!187276 (= c!100969 ((_ is Node!1594) (c!100954 input!747)))))

(declare-fun e!315480 () Bool)

(assert (=> d!187276 (= (inv!6169 (c!100954 input!747)) e!315480)))

(declare-fun b!525344 () Bool)

(assert (=> b!525344 (= e!315480 (inv!6175 (c!100954 input!747)))))

(declare-fun b!525345 () Bool)

(declare-fun e!315481 () Bool)

(assert (=> b!525345 (= e!315480 e!315481)))

(declare-fun res!222444 () Bool)

(assert (=> b!525345 (= res!222444 (not ((_ is Leaf!2540) (c!100954 input!747))))))

(assert (=> b!525345 (=> res!222444 e!315481)))

(declare-fun b!525346 () Bool)

(assert (=> b!525346 (= e!315481 (inv!6176 (c!100954 input!747)))))

(assert (= (and d!187276 c!100969) b!525344))

(assert (= (and d!187276 (not c!100969)) b!525345))

(assert (= (and b!525345 (not res!222444)) b!525346))

(declare-fun m!771426 () Bool)

(assert (=> b!525344 m!771426))

(declare-fun m!771428 () Bool)

(assert (=> b!525346 m!771428))

(assert (=> b!525258 d!187276))

(declare-fun d!187278 () Bool)

(assert (=> d!187278 (= (valid!553 cacheDown!462) (validCacheMapDown!33 (cache!930 cacheDown!462)))))

(declare-fun bs!65563 () Bool)

(assert (= bs!65563 d!187278))

(assert (=> bs!65563 m!771416))

(assert (=> b!525285 d!187278))

(declare-fun b!525357 () Bool)

(declare-fun res!222449 () Bool)

(declare-fun e!315486 () Bool)

(assert (=> b!525357 (=> (not res!222449) (not e!315486))))

(declare-fun lt!217614 () List!4910)

(declare-fun size!4006 (List!4910) Int)

(assert (=> b!525357 (= res!222449 (= (size!4006 lt!217614) (+ (size!4006 lt!217593) (size!4006 lt!217599))))))

(declare-fun b!525355 () Bool)

(declare-fun e!315487 () List!4910)

(assert (=> b!525355 (= e!315487 lt!217599)))

(declare-fun b!525358 () Bool)

(assert (=> b!525358 (= e!315486 (or (not (= lt!217599 Nil!4900)) (= lt!217614 lt!217593)))))

(declare-fun b!525356 () Bool)

(assert (=> b!525356 (= e!315487 (Cons!4900 (h!10301 lt!217593) (++!1373 (t!73515 lt!217593) lt!217599)))))

(declare-fun d!187280 () Bool)

(assert (=> d!187280 e!315486))

(declare-fun res!222450 () Bool)

(assert (=> d!187280 (=> (not res!222450) (not e!315486))))

(declare-fun content!887 (List!4910) (InoxSet C!3344))

(assert (=> d!187280 (= res!222450 (= (content!887 lt!217614) ((_ map or) (content!887 lt!217593) (content!887 lt!217599))))))

(assert (=> d!187280 (= lt!217614 e!315487)))

(declare-fun c!100972 () Bool)

(assert (=> d!187280 (= c!100972 ((_ is Nil!4900) lt!217593))))

(assert (=> d!187280 (= (++!1373 lt!217593 lt!217599) lt!217614)))

(assert (= (and d!187280 c!100972) b!525355))

(assert (= (and d!187280 (not c!100972)) b!525356))

(assert (= (and d!187280 res!222450) b!525357))

(assert (= (and b!525357 res!222449) b!525358))

(declare-fun m!771430 () Bool)

(assert (=> b!525357 m!771430))

(declare-fun m!771432 () Bool)

(assert (=> b!525357 m!771432))

(declare-fun m!771434 () Bool)

(assert (=> b!525357 m!771434))

(declare-fun m!771436 () Bool)

(assert (=> b!525356 m!771436))

(declare-fun m!771438 () Bool)

(assert (=> d!187280 m!771438))

(declare-fun m!771440 () Bool)

(assert (=> d!187280 m!771440))

(declare-fun m!771442 () Bool)

(assert (=> d!187280 m!771442))

(assert (=> b!525287 d!187280))

(declare-fun d!187282 () Bool)

(assert (=> d!187282 (= (list!2055 input!747) (list!2056 (c!100954 input!747)))))

(declare-fun bs!65564 () Bool)

(assert (= bs!65564 d!187282))

(declare-fun m!771444 () Bool)

(assert (=> bs!65564 m!771444))

(assert (=> b!525287 d!187282))

(declare-fun d!187284 () Bool)

(assert (=> d!187284 (= (list!2055 (BalanceConc!3197 Empty!1594)) (list!2056 (c!100954 (BalanceConc!3197 Empty!1594))))))

(declare-fun bs!65565 () Bool)

(assert (= bs!65565 d!187284))

(declare-fun m!771446 () Bool)

(assert (=> bs!65565 m!771446))

(assert (=> b!525287 d!187284))

(declare-fun d!187286 () Bool)

(assert (=> d!187286 (= (valid!551 cacheFurthestNullable!56) (validCacheMapFurthestNullable!26 (cache!928 cacheFurthestNullable!56) (totalInput!1740 cacheFurthestNullable!56)))))

(declare-fun bs!65566 () Bool)

(assert (= bs!65566 d!187286))

(assert (=> bs!65566 m!771418))

(assert (=> b!525259 d!187286))

(declare-fun d!187288 () Bool)

(assert (=> d!187288 (= (list!2054 (_1!3259 lt!217596)) (list!2057 (c!100955 (_1!3259 lt!217596))))))

(declare-fun bs!65567 () Bool)

(assert (= bs!65567 d!187288))

(declare-fun m!771448 () Bool)

(assert (=> bs!65567 m!771448))

(assert (=> b!525276 d!187288))

(declare-fun d!187290 () Bool)

(assert (=> d!187290 (= (list!2054 (BalanceConc!3199 Empty!1595)) (list!2057 (c!100955 (BalanceConc!3199 Empty!1595))))))

(declare-fun bs!65568 () Bool)

(assert (= bs!65568 d!187290))

(declare-fun m!771450 () Bool)

(assert (=> bs!65568 m!771450))

(assert (=> b!525276 d!187290))

(declare-fun b!525359 () Bool)

(declare-fun e!315488 () Bool)

(declare-fun lt!217615 () tuple2!6046)

(assert (=> b!525359 (= e!315488 (= (list!2055 (_2!3259 lt!217615)) (list!2055 (BalanceConc!3197 Empty!1594))))))

(declare-fun d!187292 () Bool)

(declare-fun e!315490 () Bool)

(assert (=> d!187292 e!315490))

(declare-fun res!222453 () Bool)

(assert (=> d!187292 (=> (not res!222453) (not e!315490))))

(assert (=> d!187292 (= res!222453 e!315488)))

(declare-fun c!100974 () Bool)

(assert (=> d!187292 (= c!100974 (> (size!4004 (_1!3259 lt!217615)) 0))))

(declare-fun e!315489 () tuple2!6046)

(assert (=> d!187292 (= lt!217615 e!315489)))

(declare-fun c!100973 () Bool)

(declare-fun lt!217617 () Option!1246)

(assert (=> d!187292 (= c!100973 ((_ is Some!1245) lt!217617))))

(assert (=> d!187292 (= lt!217617 (maxPrefixZipperSequence!445 thiss!12147 rules!1345 (BalanceConc!3197 Empty!1594)))))

(assert (=> d!187292 (= (lexRec!140 thiss!12147 rules!1345 (BalanceConc!3197 Empty!1594)) lt!217615)))

(declare-fun b!525360 () Bool)

(assert (=> b!525360 (= e!315489 (tuple2!6047 (BalanceConc!3199 Empty!1595) (BalanceConc!3197 Empty!1594)))))

(declare-fun b!525361 () Bool)

(assert (=> b!525361 (= e!315490 (= (list!2055 (_2!3259 lt!217615)) (_2!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594))))))))

(declare-fun b!525362 () Bool)

(declare-fun e!315491 () Bool)

(assert (=> b!525362 (= e!315491 (not (isEmpty!3599 (_1!3259 lt!217615))))))

(declare-fun b!525363 () Bool)

(declare-fun lt!217616 () tuple2!6046)

(assert (=> b!525363 (= e!315489 (tuple2!6047 (prepend!240 (_1!3259 lt!217616) (_1!3260 (v!15985 lt!217617))) (_2!3259 lt!217616)))))

(assert (=> b!525363 (= lt!217616 (lexRec!140 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217617))))))

(declare-fun b!525364 () Bool)

(assert (=> b!525364 (= e!315488 e!315491)))

(declare-fun res!222451 () Bool)

(assert (=> b!525364 (= res!222451 (< (size!4005 (_2!3259 lt!217615)) (size!4005 (BalanceConc!3197 Empty!1594))))))

(assert (=> b!525364 (=> (not res!222451) (not e!315491))))

(declare-fun b!525365 () Bool)

(declare-fun res!222452 () Bool)

(assert (=> b!525365 (=> (not res!222452) (not e!315490))))

(assert (=> b!525365 (= res!222452 (= (list!2054 (_1!3259 lt!217615)) (_1!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594))))))))

(assert (= (and d!187292 c!100973) b!525363))

(assert (= (and d!187292 (not c!100973)) b!525360))

(assert (= (and d!187292 c!100974) b!525364))

(assert (= (and d!187292 (not c!100974)) b!525359))

(assert (= (and b!525364 res!222451) b!525362))

(assert (= (and d!187292 res!222453) b!525365))

(assert (= (and b!525365 res!222452) b!525361))

(declare-fun m!771452 () Bool)

(assert (=> b!525362 m!771452))

(declare-fun m!771454 () Bool)

(assert (=> b!525359 m!771454))

(assert (=> b!525359 m!771322))

(declare-fun m!771456 () Bool)

(assert (=> b!525363 m!771456))

(declare-fun m!771458 () Bool)

(assert (=> b!525363 m!771458))

(declare-fun m!771460 () Bool)

(assert (=> b!525365 m!771460))

(assert (=> b!525365 m!771322))

(assert (=> b!525365 m!771322))

(declare-fun m!771462 () Bool)

(assert (=> b!525365 m!771462))

(declare-fun m!771464 () Bool)

(assert (=> b!525364 m!771464))

(declare-fun m!771466 () Bool)

(assert (=> b!525364 m!771466))

(assert (=> b!525361 m!771454))

(assert (=> b!525361 m!771322))

(assert (=> b!525361 m!771322))

(assert (=> b!525361 m!771462))

(declare-fun m!771468 () Bool)

(assert (=> d!187292 m!771468))

(declare-fun m!771470 () Bool)

(assert (=> d!187292 m!771470))

(assert (=> b!525276 d!187292))

(declare-fun d!187294 () Bool)

(assert (=> d!187294 (= (inv!6162 (tag!1148 (h!10307 rules!1345))) (= (mod (str.len (value!30104 (tag!1148 (h!10307 rules!1345)))) 2) 0))))

(assert (=> b!525275 d!187294))

(declare-fun d!187296 () Bool)

(declare-fun res!222456 () Bool)

(declare-fun e!315494 () Bool)

(assert (=> d!187296 (=> (not res!222456) (not e!315494))))

(declare-fun semiInverseModEq!355 (Int Int) Bool)

(assert (=> d!187296 (= res!222456 (semiInverseModEq!355 (toChars!1578 (transformation!886 (h!10307 rules!1345))) (toValue!1719 (transformation!886 (h!10307 rules!1345)))))))

(assert (=> d!187296 (= (inv!6170 (transformation!886 (h!10307 rules!1345))) e!315494)))

(declare-fun b!525368 () Bool)

(declare-fun equivClasses!338 (Int Int) Bool)

(assert (=> b!525368 (= e!315494 (equivClasses!338 (toChars!1578 (transformation!886 (h!10307 rules!1345))) (toValue!1719 (transformation!886 (h!10307 rules!1345)))))))

(assert (= (and d!187296 res!222456) b!525368))

(declare-fun m!771472 () Bool)

(assert (=> d!187296 m!771472))

(declare-fun m!771474 () Bool)

(assert (=> b!525368 m!771474))

(assert (=> b!525275 d!187296))

(declare-fun d!187298 () Bool)

(assert (=> d!187298 (= (inv!6171 (totalInput!1740 cacheFurthestNullable!56)) (isBalanced!495 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))

(declare-fun bs!65569 () Bool)

(assert (= bs!65569 d!187298))

(declare-fun m!771476 () Bool)

(assert (=> bs!65569 m!771476))

(assert (=> b!525263 d!187298))

(declare-fun d!187300 () Bool)

(declare-fun res!222459 () Bool)

(declare-fun e!315497 () Bool)

(assert (=> d!187300 (=> (not res!222459) (not e!315497))))

(declare-fun rulesValid!320 (LexerInterface!772 List!4916) Bool)

(assert (=> d!187300 (= res!222459 (rulesValid!320 thiss!12147 rules!1345))))

(assert (=> d!187300 (= (rulesInvariant!737 thiss!12147 rules!1345) e!315497)))

(declare-fun b!525371 () Bool)

(declare-datatypes ((List!4918 0))(
  ( (Nil!4908) (Cons!4908 (h!10309 String!6276) (t!73523 List!4918)) )
))
(declare-fun noDuplicateTag!320 (LexerInterface!772 List!4916 List!4918) Bool)

(assert (=> b!525371 (= e!315497 (noDuplicateTag!320 thiss!12147 rules!1345 Nil!4908))))

(assert (= (and d!187300 res!222459) b!525371))

(declare-fun m!771478 () Bool)

(assert (=> d!187300 m!771478))

(declare-fun m!771480 () Bool)

(assert (=> b!525371 m!771480))

(assert (=> b!525271 d!187300))

(declare-fun d!187302 () Bool)

(assert (=> d!187302 (= (valid!552 cacheUp!449) (validCacheMapUp!36 (cache!929 cacheUp!449)))))

(declare-fun bs!65570 () Bool)

(assert (= bs!65570 d!187302))

(assert (=> bs!65570 m!771420))

(assert (=> b!525282 d!187302))

(declare-fun e!315506 () Bool)

(assert (=> b!525288 (= tp!165460 e!315506)))

(declare-fun setIsEmpty!2429 () Bool)

(declare-fun setRes!2429 () Bool)

(assert (=> setIsEmpty!2429 setRes!2429))

(declare-fun b!525380 () Bool)

(declare-fun tp!165487 () Bool)

(declare-fun tp!165485 () Bool)

(declare-fun tp_is_empty!2795 () Bool)

(declare-fun e!315505 () Bool)

(declare-fun inv!6177 (Context!298) Bool)

(assert (=> b!525380 (= e!315506 (and tp!165487 (inv!6177 (_2!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))) e!315505 tp_is_empty!2795 setRes!2429 tp!165485))))

(declare-fun condSetEmpty!2429 () Bool)

(assert (=> b!525380 (= condSetEmpty!2429 (= (_2!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525381 () Bool)

(declare-fun e!315504 () Bool)

(declare-fun tp!165484 () Bool)

(assert (=> b!525381 (= e!315504 tp!165484)))

(declare-fun tp!165486 () Bool)

(declare-fun setElem!2429 () Context!298)

(declare-fun setNonEmpty!2429 () Bool)

(assert (=> setNonEmpty!2429 (= setRes!2429 (and tp!165486 (inv!6177 setElem!2429) e!315504))))

(declare-fun setRest!2429 () (InoxSet Context!298))

(assert (=> setNonEmpty!2429 (= (_2!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2429 true) setRest!2429))))

(declare-fun b!525382 () Bool)

(declare-fun tp!165488 () Bool)

(assert (=> b!525382 (= e!315505 tp!165488)))

(assert (= b!525380 b!525382))

(assert (= (and b!525380 condSetEmpty!2429) setIsEmpty!2429))

(assert (= (and b!525380 (not condSetEmpty!2429)) setNonEmpty!2429))

(assert (= setNonEmpty!2429 b!525381))

(assert (= (and b!525288 ((_ is Cons!4904) (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))) b!525380))

(declare-fun m!771482 () Bool)

(assert (=> b!525380 m!771482))

(declare-fun m!771484 () Bool)

(assert (=> setNonEmpty!2429 m!771484))

(declare-fun e!315509 () Bool)

(assert (=> b!525288 (= tp!165464 e!315509)))

(declare-fun setIsEmpty!2430 () Bool)

(declare-fun setRes!2430 () Bool)

(assert (=> setIsEmpty!2430 setRes!2430))

(declare-fun e!315508 () Bool)

(declare-fun tp!165492 () Bool)

(declare-fun tp!165490 () Bool)

(declare-fun b!525383 () Bool)

(assert (=> b!525383 (= e!315509 (and tp!165492 (inv!6177 (_2!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))) e!315508 tp_is_empty!2795 setRes!2430 tp!165490))))

(declare-fun condSetEmpty!2430 () Bool)

(assert (=> b!525383 (= condSetEmpty!2430 (= (_2!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525384 () Bool)

(declare-fun e!315507 () Bool)

(declare-fun tp!165489 () Bool)

(assert (=> b!525384 (= e!315507 tp!165489)))

(declare-fun setElem!2430 () Context!298)

(declare-fun tp!165491 () Bool)

(declare-fun setNonEmpty!2430 () Bool)

(assert (=> setNonEmpty!2430 (= setRes!2430 (and tp!165491 (inv!6177 setElem!2430) e!315507))))

(declare-fun setRest!2430 () (InoxSet Context!298))

(assert (=> setNonEmpty!2430 (= (_2!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2430 true) setRest!2430))))

(declare-fun b!525385 () Bool)

(declare-fun tp!165493 () Bool)

(assert (=> b!525385 (= e!315508 tp!165493)))

(assert (= b!525383 b!525385))

(assert (= (and b!525383 condSetEmpty!2430) setIsEmpty!2430))

(assert (= (and b!525383 (not condSetEmpty!2430)) setNonEmpty!2430))

(assert (= setNonEmpty!2430 b!525384))

(assert (= (and b!525288 ((_ is Cons!4904) (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))) b!525383))

(declare-fun m!771486 () Bool)

(assert (=> b!525383 m!771486))

(declare-fun m!771488 () Bool)

(assert (=> setNonEmpty!2430 m!771488))

(declare-fun setIsEmpty!2433 () Bool)

(declare-fun setRes!2433 () Bool)

(assert (=> setIsEmpty!2433 setRes!2433))

(declare-fun b!525392 () Bool)

(declare-fun e!315514 () Bool)

(declare-fun tp!165501 () Bool)

(assert (=> b!525392 (= e!315514 (and setRes!2433 tp!165501))))

(declare-fun condSetEmpty!2433 () Bool)

(assert (=> b!525392 (= condSetEmpty!2433 (= (_1!3253 (_1!3254 (h!10303 (zeroValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525260 (= tp!165453 e!315514)))

(declare-fun e!315515 () Bool)

(declare-fun setNonEmpty!2433 () Bool)

(declare-fun setElem!2433 () Context!298)

(declare-fun tp!165502 () Bool)

(assert (=> setNonEmpty!2433 (= setRes!2433 (and tp!165502 (inv!6177 setElem!2433) e!315515))))

(declare-fun setRest!2433 () (InoxSet Context!298))

(assert (=> setNonEmpty!2433 (= (_1!3253 (_1!3254 (h!10303 (zeroValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2433 true) setRest!2433))))

(declare-fun b!525393 () Bool)

(declare-fun tp!165500 () Bool)

(assert (=> b!525393 (= e!315515 tp!165500)))

(assert (= (and b!525392 condSetEmpty!2433) setIsEmpty!2433))

(assert (= (and b!525392 (not condSetEmpty!2433)) setNonEmpty!2433))

(assert (= setNonEmpty!2433 b!525393))

(assert (= (and b!525260 ((_ is Cons!4902) (zeroValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56)))))))) b!525392))

(declare-fun m!771490 () Bool)

(assert (=> setNonEmpty!2433 m!771490))

(declare-fun setIsEmpty!2434 () Bool)

(declare-fun setRes!2434 () Bool)

(assert (=> setIsEmpty!2434 setRes!2434))

(declare-fun b!525394 () Bool)

(declare-fun e!315516 () Bool)

(declare-fun tp!165504 () Bool)

(assert (=> b!525394 (= e!315516 (and setRes!2434 tp!165504))))

(declare-fun condSetEmpty!2434 () Bool)

(assert (=> b!525394 (= condSetEmpty!2434 (= (_1!3253 (_1!3254 (h!10303 (minValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525260 (= tp!165473 e!315516)))

(declare-fun setNonEmpty!2434 () Bool)

(declare-fun tp!165505 () Bool)

(declare-fun setElem!2434 () Context!298)

(declare-fun e!315517 () Bool)

(assert (=> setNonEmpty!2434 (= setRes!2434 (and tp!165505 (inv!6177 setElem!2434) e!315517))))

(declare-fun setRest!2434 () (InoxSet Context!298))

(assert (=> setNonEmpty!2434 (= (_1!3253 (_1!3254 (h!10303 (minValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2434 true) setRest!2434))))

(declare-fun b!525395 () Bool)

(declare-fun tp!165503 () Bool)

(assert (=> b!525395 (= e!315517 tp!165503)))

(assert (= (and b!525394 condSetEmpty!2434) setIsEmpty!2434))

(assert (= (and b!525394 (not condSetEmpty!2434)) setNonEmpty!2434))

(assert (= setNonEmpty!2434 b!525395))

(assert (= (and b!525260 ((_ is Cons!4902) (minValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56)))))))) b!525394))

(declare-fun m!771492 () Bool)

(assert (=> setNonEmpty!2434 m!771492))

(declare-fun setNonEmpty!2437 () Bool)

(declare-fun tp!165514 () Bool)

(declare-fun e!315524 () Bool)

(declare-fun setElem!2437 () Context!298)

(declare-fun setRes!2437 () Bool)

(assert (=> setNonEmpty!2437 (= setRes!2437 (and tp!165514 (inv!6177 setElem!2437) e!315524))))

(declare-fun setRest!2437 () (InoxSet Context!298))

(assert (=> setNonEmpty!2437 (= (_2!3256 (h!10304 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2437 true) setRest!2437))))

(declare-fun b!525404 () Bool)

(declare-fun e!315526 () Bool)

(declare-fun tp!165515 () Bool)

(assert (=> b!525404 (= e!315526 tp!165515)))

(declare-fun setIsEmpty!2437 () Bool)

(assert (=> setIsEmpty!2437 setRes!2437))

(declare-fun tp!165516 () Bool)

(declare-fun b!525405 () Bool)

(declare-fun e!315525 () Bool)

(assert (=> b!525405 (= e!315525 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))) e!315526 tp_is_empty!2795 setRes!2437 tp!165516))))

(declare-fun condSetEmpty!2437 () Bool)

(assert (=> b!525405 (= condSetEmpty!2437 (= (_2!3256 (h!10304 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525406 () Bool)

(declare-fun tp!165517 () Bool)

(assert (=> b!525406 (= e!315524 tp!165517)))

(assert (=> b!525262 (= tp!165466 e!315525)))

(assert (= b!525405 b!525404))

(assert (= (and b!525405 condSetEmpty!2437) setIsEmpty!2437))

(assert (= (and b!525405 (not condSetEmpty!2437)) setNonEmpty!2437))

(assert (= setNonEmpty!2437 b!525406))

(assert (= (and b!525262 ((_ is Cons!4903) (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))) b!525405))

(declare-fun m!771494 () Bool)

(assert (=> setNonEmpty!2437 m!771494))

(declare-fun m!771496 () Bool)

(assert (=> b!525405 m!771496))

(declare-fun setRes!2438 () Bool)

(declare-fun e!315527 () Bool)

(declare-fun setNonEmpty!2438 () Bool)

(declare-fun tp!165518 () Bool)

(declare-fun setElem!2438 () Context!298)

(assert (=> setNonEmpty!2438 (= setRes!2438 (and tp!165518 (inv!6177 setElem!2438) e!315527))))

(declare-fun setRest!2438 () (InoxSet Context!298))

(assert (=> setNonEmpty!2438 (= (_2!3256 (h!10304 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2438 true) setRest!2438))))

(declare-fun b!525407 () Bool)

(declare-fun e!315529 () Bool)

(declare-fun tp!165519 () Bool)

(assert (=> b!525407 (= e!315529 tp!165519)))

(declare-fun setIsEmpty!2438 () Bool)

(assert (=> setIsEmpty!2438 setRes!2438))

(declare-fun e!315528 () Bool)

(declare-fun b!525408 () Bool)

(declare-fun tp!165520 () Bool)

(assert (=> b!525408 (= e!315528 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))) e!315529 tp_is_empty!2795 setRes!2438 tp!165520))))

(declare-fun condSetEmpty!2438 () Bool)

(assert (=> b!525408 (= condSetEmpty!2438 (= (_2!3256 (h!10304 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525409 () Bool)

(declare-fun tp!165521 () Bool)

(assert (=> b!525409 (= e!315527 tp!165521)))

(assert (=> b!525262 (= tp!165465 e!315528)))

(assert (= b!525408 b!525407))

(assert (= (and b!525408 condSetEmpty!2438) setIsEmpty!2438))

(assert (= (and b!525408 (not condSetEmpty!2438)) setNonEmpty!2438))

(assert (= setNonEmpty!2438 b!525409))

(assert (= (and b!525262 ((_ is Cons!4903) (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))) b!525408))

(declare-fun m!771498 () Bool)

(assert (=> setNonEmpty!2438 m!771498))

(declare-fun m!771500 () Bool)

(assert (=> b!525408 m!771500))

(declare-fun b!525420 () Bool)

(declare-fun b_free!13873 () Bool)

(declare-fun b_next!13889 () Bool)

(assert (=> b!525420 (= b_free!13873 (not b_next!13889))))

(declare-fun tp!165532 () Bool)

(declare-fun b_and!51367 () Bool)

(assert (=> b!525420 (= tp!165532 b_and!51367)))

(declare-fun b_free!13875 () Bool)

(declare-fun b_next!13891 () Bool)

(assert (=> b!525420 (= b_free!13875 (not b_next!13891))))

(declare-fun tp!165531 () Bool)

(declare-fun b_and!51369 () Bool)

(assert (=> b!525420 (= tp!165531 b_and!51369)))

(declare-fun e!315540 () Bool)

(assert (=> b!525420 (= e!315540 (and tp!165532 tp!165531))))

(declare-fun b!525419 () Bool)

(declare-fun tp!165533 () Bool)

(declare-fun e!315541 () Bool)

(assert (=> b!525419 (= e!315541 (and tp!165533 (inv!6162 (tag!1148 (h!10307 (t!73521 rules!1345)))) (inv!6170 (transformation!886 (h!10307 (t!73521 rules!1345)))) e!315540))))

(declare-fun b!525418 () Bool)

(declare-fun e!315539 () Bool)

(declare-fun tp!165530 () Bool)

(assert (=> b!525418 (= e!315539 (and e!315541 tp!165530))))

(assert (=> b!525281 (= tp!165461 e!315539)))

(assert (= b!525419 b!525420))

(assert (= b!525418 b!525419))

(assert (= (and b!525281 ((_ is Cons!4906) (t!73521 rules!1345))) b!525418))

(declare-fun m!771502 () Bool)

(assert (=> b!525419 m!771502))

(declare-fun m!771504 () Bool)

(assert (=> b!525419 m!771504))

(declare-fun setIsEmpty!2439 () Bool)

(declare-fun setRes!2439 () Bool)

(assert (=> setIsEmpty!2439 setRes!2439))

(declare-fun b!525421 () Bool)

(declare-fun e!315542 () Bool)

(declare-fun tp!165535 () Bool)

(assert (=> b!525421 (= e!315542 (and setRes!2439 tp!165535))))

(declare-fun condSetEmpty!2439 () Bool)

(assert (=> b!525421 (= condSetEmpty!2439 (= (_1!3253 (_1!3254 (h!10303 mapDefault!2226))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525286 (= tp!165459 e!315542)))

(declare-fun e!315543 () Bool)

(declare-fun setNonEmpty!2439 () Bool)

(declare-fun tp!165536 () Bool)

(declare-fun setElem!2439 () Context!298)

(assert (=> setNonEmpty!2439 (= setRes!2439 (and tp!165536 (inv!6177 setElem!2439) e!315543))))

(declare-fun setRest!2439 () (InoxSet Context!298))

(assert (=> setNonEmpty!2439 (= (_1!3253 (_1!3254 (h!10303 mapDefault!2226))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2439 true) setRest!2439))))

(declare-fun b!525422 () Bool)

(declare-fun tp!165534 () Bool)

(assert (=> b!525422 (= e!315543 tp!165534)))

(assert (= (and b!525421 condSetEmpty!2439) setIsEmpty!2439))

(assert (= (and b!525421 (not condSetEmpty!2439)) setNonEmpty!2439))

(assert (= setNonEmpty!2439 b!525422))

(assert (= (and b!525286 ((_ is Cons!4902) mapDefault!2226)) b!525421))

(declare-fun m!771506 () Bool)

(assert (=> setNonEmpty!2439 m!771506))

(declare-fun mapNonEmpty!2231 () Bool)

(declare-fun mapRes!2231 () Bool)

(declare-fun tp!165553 () Bool)

(declare-fun e!315554 () Bool)

(assert (=> mapNonEmpty!2231 (= mapRes!2231 (and tp!165553 e!315554))))

(declare-fun mapValue!2231 () List!4912)

(declare-fun mapRest!2231 () (Array (_ BitVec 32) List!4912))

(declare-fun mapKey!2231 () (_ BitVec 32))

(assert (=> mapNonEmpty!2231 (= mapRest!2227 (store mapRest!2231 mapKey!2231 mapValue!2231))))

(declare-fun setIsEmpty!2444 () Bool)

(declare-fun setRes!2444 () Bool)

(assert (=> setIsEmpty!2444 setRes!2444))

(declare-fun setIsEmpty!2445 () Bool)

(declare-fun setRes!2445 () Bool)

(assert (=> setIsEmpty!2445 setRes!2445))

(declare-fun b!525434 () Bool)

(declare-fun e!315555 () Bool)

(declare-fun tp!165552 () Bool)

(assert (=> b!525434 (= e!315555 (and setRes!2445 tp!165552))))

(declare-fun condSetEmpty!2444 () Bool)

(declare-fun mapDefault!2231 () List!4912)

(assert (=> b!525434 (= condSetEmpty!2444 (= (_1!3253 (_1!3254 (h!10303 mapDefault!2231))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun setNonEmpty!2444 () Bool)

(declare-fun tp!165557 () Bool)

(declare-fun setElem!2445 () Context!298)

(declare-fun e!315552 () Bool)

(assert (=> setNonEmpty!2444 (= setRes!2445 (and tp!165557 (inv!6177 setElem!2445) e!315552))))

(declare-fun setRest!2444 () (InoxSet Context!298))

(assert (=> setNonEmpty!2444 (= (_1!3253 (_1!3254 (h!10303 mapDefault!2231))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2445 true) setRest!2444))))

(declare-fun mapIsEmpty!2231 () Bool)

(assert (=> mapIsEmpty!2231 mapRes!2231))

(declare-fun b!525435 () Bool)

(declare-fun tp!165554 () Bool)

(assert (=> b!525435 (= e!315554 (and setRes!2444 tp!165554))))

(declare-fun condSetEmpty!2445 () Bool)

(assert (=> b!525435 (= condSetEmpty!2445 (= (_1!3253 (_1!3254 (h!10303 mapValue!2231))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525436 () Bool)

(declare-fun e!315553 () Bool)

(declare-fun tp!165555 () Bool)

(assert (=> b!525436 (= e!315553 tp!165555)))

(declare-fun setElem!2444 () Context!298)

(declare-fun tp!165551 () Bool)

(declare-fun setNonEmpty!2445 () Bool)

(assert (=> setNonEmpty!2445 (= setRes!2444 (and tp!165551 (inv!6177 setElem!2444) e!315553))))

(declare-fun setRest!2445 () (InoxSet Context!298))

(assert (=> setNonEmpty!2445 (= (_1!3253 (_1!3254 (h!10303 mapValue!2231))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2444 true) setRest!2445))))

(declare-fun condMapEmpty!2231 () Bool)

(assert (=> mapNonEmpty!2226 (= condMapEmpty!2231 (= mapRest!2227 ((as const (Array (_ BitVec 32) List!4912)) mapDefault!2231)))))

(assert (=> mapNonEmpty!2226 (= tp!165449 (and e!315555 mapRes!2231))))

(declare-fun b!525433 () Bool)

(declare-fun tp!165556 () Bool)

(assert (=> b!525433 (= e!315552 tp!165556)))

(assert (= (and mapNonEmpty!2226 condMapEmpty!2231) mapIsEmpty!2231))

(assert (= (and mapNonEmpty!2226 (not condMapEmpty!2231)) mapNonEmpty!2231))

(assert (= (and b!525435 condSetEmpty!2445) setIsEmpty!2444))

(assert (= (and b!525435 (not condSetEmpty!2445)) setNonEmpty!2445))

(assert (= setNonEmpty!2445 b!525436))

(assert (= (and mapNonEmpty!2231 ((_ is Cons!4902) mapValue!2231)) b!525435))

(assert (= (and b!525434 condSetEmpty!2444) setIsEmpty!2445))

(assert (= (and b!525434 (not condSetEmpty!2444)) setNonEmpty!2444))

(assert (= setNonEmpty!2444 b!525433))

(assert (= (and mapNonEmpty!2226 ((_ is Cons!4902) mapDefault!2231)) b!525434))

(declare-fun m!771508 () Bool)

(assert (=> mapNonEmpty!2231 m!771508))

(declare-fun m!771510 () Bool)

(assert (=> setNonEmpty!2444 m!771510))

(declare-fun m!771512 () Bool)

(assert (=> setNonEmpty!2445 m!771512))

(declare-fun setIsEmpty!2446 () Bool)

(declare-fun setRes!2446 () Bool)

(assert (=> setIsEmpty!2446 setRes!2446))

(declare-fun b!525437 () Bool)

(declare-fun e!315556 () Bool)

(declare-fun tp!165559 () Bool)

(assert (=> b!525437 (= e!315556 (and setRes!2446 tp!165559))))

(declare-fun condSetEmpty!2446 () Bool)

(assert (=> b!525437 (= condSetEmpty!2446 (= (_1!3253 (_1!3254 (h!10303 mapValue!2227))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> mapNonEmpty!2226 (= tp!165469 e!315556)))

(declare-fun setElem!2446 () Context!298)

(declare-fun e!315557 () Bool)

(declare-fun tp!165560 () Bool)

(declare-fun setNonEmpty!2446 () Bool)

(assert (=> setNonEmpty!2446 (= setRes!2446 (and tp!165560 (inv!6177 setElem!2446) e!315557))))

(declare-fun setRest!2446 () (InoxSet Context!298))

(assert (=> setNonEmpty!2446 (= (_1!3253 (_1!3254 (h!10303 mapValue!2227))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2446 true) setRest!2446))))

(declare-fun b!525438 () Bool)

(declare-fun tp!165558 () Bool)

(assert (=> b!525438 (= e!315557 tp!165558)))

(assert (= (and b!525437 condSetEmpty!2446) setIsEmpty!2446))

(assert (= (and b!525437 (not condSetEmpty!2446)) setNonEmpty!2446))

(assert (= setNonEmpty!2446 b!525438))

(assert (= (and mapNonEmpty!2226 ((_ is Cons!4902) mapValue!2227)) b!525437))

(declare-fun m!771514 () Bool)

(assert (=> setNonEmpty!2446 m!771514))

(declare-fun b!525447 () Bool)

(declare-fun e!315562 () Bool)

(declare-fun tp!165567 () Bool)

(declare-fun tp!165568 () Bool)

(assert (=> b!525447 (= e!315562 (and (inv!6169 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) tp!165567 (inv!6169 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) tp!165568))))

(declare-fun b!525449 () Bool)

(declare-fun e!315563 () Bool)

(declare-fun tp!165569 () Bool)

(assert (=> b!525449 (= e!315563 tp!165569)))

(declare-fun b!525448 () Bool)

(declare-fun inv!6178 (IArray!3189) Bool)

(assert (=> b!525448 (= e!315562 (and (inv!6178 (xs!4229 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) e!315563))))

(assert (=> b!525267 (= tp!165455 (and (inv!6169 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) e!315562))))

(assert (= (and b!525267 ((_ is Node!1594) (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) b!525447))

(assert (= b!525448 b!525449))

(assert (= (and b!525267 ((_ is Leaf!2540) (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) b!525448))

(declare-fun m!771516 () Bool)

(assert (=> b!525447 m!771516))

(declare-fun m!771518 () Bool)

(assert (=> b!525447 m!771518))

(declare-fun m!771520 () Bool)

(assert (=> b!525448 m!771520))

(assert (=> b!525267 m!771304))

(declare-fun b!525450 () Bool)

(declare-fun e!315564 () Bool)

(declare-fun tp!165570 () Bool)

(declare-fun tp!165571 () Bool)

(assert (=> b!525450 (= e!315564 (and (inv!6169 (left!4199 (c!100954 input!747))) tp!165570 (inv!6169 (right!4529 (c!100954 input!747))) tp!165571))))

(declare-fun b!525452 () Bool)

(declare-fun e!315565 () Bool)

(declare-fun tp!165572 () Bool)

(assert (=> b!525452 (= e!315565 tp!165572)))

(declare-fun b!525451 () Bool)

(assert (=> b!525451 (= e!315564 (and (inv!6178 (xs!4229 (c!100954 input!747))) e!315565))))

(assert (=> b!525258 (= tp!165470 (and (inv!6169 (c!100954 input!747)) e!315564))))

(assert (= (and b!525258 ((_ is Node!1594) (c!100954 input!747))) b!525450))

(assert (= b!525451 b!525452))

(assert (= (and b!525258 ((_ is Leaf!2540) (c!100954 input!747))) b!525451))

(declare-fun m!771522 () Bool)

(assert (=> b!525450 m!771522))

(declare-fun m!771524 () Bool)

(assert (=> b!525450 m!771524))

(declare-fun m!771526 () Bool)

(assert (=> b!525451 m!771526))

(assert (=> b!525258 m!771338))

(declare-fun setNonEmpty!2451 () Bool)

(declare-fun setRes!2452 () Bool)

(declare-fun setElem!2451 () Context!298)

(declare-fun tp!165595 () Bool)

(declare-fun e!315583 () Bool)

(assert (=> setNonEmpty!2451 (= setRes!2452 (and tp!165595 (inv!6177 setElem!2451) e!315583))))

(declare-fun mapDefault!2234 () List!4913)

(declare-fun setRest!2451 () (InoxSet Context!298))

(assert (=> setNonEmpty!2451 (= (_2!3256 (h!10304 mapDefault!2234)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2451 true) setRest!2451))))

(declare-fun mapValue!2234 () List!4913)

(declare-fun setRes!2451 () Bool)

(declare-fun e!315580 () Bool)

(declare-fun e!315582 () Bool)

(declare-fun b!525467 () Bool)

(declare-fun tp!165599 () Bool)

(assert (=> b!525467 (= e!315580 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 mapValue!2234)))) e!315582 tp_is_empty!2795 setRes!2451 tp!165599))))

(declare-fun condSetEmpty!2452 () Bool)

(assert (=> b!525467 (= condSetEmpty!2452 (= (_2!3256 (h!10304 mapValue!2234)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525468 () Bool)

(declare-fun e!315581 () Bool)

(declare-fun tp!165593 () Bool)

(assert (=> b!525468 (= e!315581 tp!165593)))

(declare-fun b!525469 () Bool)

(declare-fun e!315578 () Bool)

(declare-fun tp!165592 () Bool)

(assert (=> b!525469 (= e!315578 tp!165592)))

(declare-fun setIsEmpty!2451 () Bool)

(assert (=> setIsEmpty!2451 setRes!2451))

(declare-fun b!525470 () Bool)

(declare-fun e!315579 () Bool)

(declare-fun tp!165594 () Bool)

(assert (=> b!525470 (= e!315579 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 mapDefault!2234)))) e!315581 tp_is_empty!2795 setRes!2452 tp!165594))))

(declare-fun condSetEmpty!2451 () Bool)

(assert (=> b!525470 (= condSetEmpty!2451 (= (_2!3256 (h!10304 mapDefault!2234)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun mapIsEmpty!2234 () Bool)

(declare-fun mapRes!2234 () Bool)

(assert (=> mapIsEmpty!2234 mapRes!2234))

(declare-fun b!525471 () Bool)

(declare-fun tp!165591 () Bool)

(assert (=> b!525471 (= e!315583 tp!165591)))

(declare-fun condMapEmpty!2234 () Bool)

(assert (=> mapNonEmpty!2227 (= condMapEmpty!2234 (= mapRest!2226 ((as const (Array (_ BitVec 32) List!4913)) mapDefault!2234)))))

(assert (=> mapNonEmpty!2227 (= tp!165448 (and e!315579 mapRes!2234))))

(declare-fun setIsEmpty!2452 () Bool)

(assert (=> setIsEmpty!2452 setRes!2452))

(declare-fun mapNonEmpty!2234 () Bool)

(declare-fun tp!165597 () Bool)

(assert (=> mapNonEmpty!2234 (= mapRes!2234 (and tp!165597 e!315580))))

(declare-fun mapKey!2234 () (_ BitVec 32))

(declare-fun mapRest!2234 () (Array (_ BitVec 32) List!4913))

(assert (=> mapNonEmpty!2234 (= mapRest!2226 (store mapRest!2234 mapKey!2234 mapValue!2234))))

(declare-fun tp!165598 () Bool)

(declare-fun setElem!2452 () Context!298)

(declare-fun setNonEmpty!2452 () Bool)

(assert (=> setNonEmpty!2452 (= setRes!2451 (and tp!165598 (inv!6177 setElem!2452) e!315578))))

(declare-fun setRest!2452 () (InoxSet Context!298))

(assert (=> setNonEmpty!2452 (= (_2!3256 (h!10304 mapValue!2234)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2452 true) setRest!2452))))

(declare-fun b!525472 () Bool)

(declare-fun tp!165596 () Bool)

(assert (=> b!525472 (= e!315582 tp!165596)))

(assert (= (and mapNonEmpty!2227 condMapEmpty!2234) mapIsEmpty!2234))

(assert (= (and mapNonEmpty!2227 (not condMapEmpty!2234)) mapNonEmpty!2234))

(assert (= b!525467 b!525472))

(assert (= (and b!525467 condSetEmpty!2452) setIsEmpty!2451))

(assert (= (and b!525467 (not condSetEmpty!2452)) setNonEmpty!2452))

(assert (= setNonEmpty!2452 b!525469))

(assert (= (and mapNonEmpty!2234 ((_ is Cons!4903) mapValue!2234)) b!525467))

(assert (= b!525470 b!525468))

(assert (= (and b!525470 condSetEmpty!2451) setIsEmpty!2452))

(assert (= (and b!525470 (not condSetEmpty!2451)) setNonEmpty!2451))

(assert (= setNonEmpty!2451 b!525471))

(assert (= (and mapNonEmpty!2227 ((_ is Cons!4903) mapDefault!2234)) b!525470))

(declare-fun m!771528 () Bool)

(assert (=> b!525470 m!771528))

(declare-fun m!771530 () Bool)

(assert (=> b!525467 m!771530))

(declare-fun m!771532 () Bool)

(assert (=> mapNonEmpty!2234 m!771532))

(declare-fun m!771534 () Bool)

(assert (=> setNonEmpty!2451 m!771534))

(declare-fun m!771536 () Bool)

(assert (=> setNonEmpty!2452 m!771536))

(declare-fun setElem!2453 () Context!298)

(declare-fun setRes!2453 () Bool)

(declare-fun e!315584 () Bool)

(declare-fun setNonEmpty!2453 () Bool)

(declare-fun tp!165600 () Bool)

(assert (=> setNonEmpty!2453 (= setRes!2453 (and tp!165600 (inv!6177 setElem!2453) e!315584))))

(declare-fun setRest!2453 () (InoxSet Context!298))

(assert (=> setNonEmpty!2453 (= (_2!3256 (h!10304 mapValue!2226)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2453 true) setRest!2453))))

(declare-fun b!525473 () Bool)

(declare-fun e!315586 () Bool)

(declare-fun tp!165601 () Bool)

(assert (=> b!525473 (= e!315586 tp!165601)))

(declare-fun setIsEmpty!2453 () Bool)

(assert (=> setIsEmpty!2453 setRes!2453))

(declare-fun e!315585 () Bool)

(declare-fun tp!165602 () Bool)

(declare-fun b!525474 () Bool)

(assert (=> b!525474 (= e!315585 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 mapValue!2226)))) e!315586 tp_is_empty!2795 setRes!2453 tp!165602))))

(declare-fun condSetEmpty!2453 () Bool)

(assert (=> b!525474 (= condSetEmpty!2453 (= (_2!3256 (h!10304 mapValue!2226)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525475 () Bool)

(declare-fun tp!165603 () Bool)

(assert (=> b!525475 (= e!315584 tp!165603)))

(assert (=> mapNonEmpty!2227 (= tp!165456 e!315585)))

(assert (= b!525474 b!525473))

(assert (= (and b!525474 condSetEmpty!2453) setIsEmpty!2453))

(assert (= (and b!525474 (not condSetEmpty!2453)) setNonEmpty!2453))

(assert (= setNonEmpty!2453 b!525475))

(assert (= (and mapNonEmpty!2227 ((_ is Cons!4903) mapValue!2226)) b!525474))

(declare-fun m!771538 () Bool)

(assert (=> setNonEmpty!2453 m!771538))

(declare-fun m!771540 () Bool)

(assert (=> b!525474 m!771540))

(declare-fun b!525487 () Bool)

(declare-fun e!315589 () Bool)

(declare-fun tp!165615 () Bool)

(declare-fun tp!165614 () Bool)

(assert (=> b!525487 (= e!315589 (and tp!165615 tp!165614))))

(declare-fun b!525486 () Bool)

(assert (=> b!525486 (= e!315589 tp_is_empty!2795)))

(declare-fun b!525488 () Bool)

(declare-fun tp!165617 () Bool)

(assert (=> b!525488 (= e!315589 tp!165617)))

(declare-fun b!525489 () Bool)

(declare-fun tp!165618 () Bool)

(declare-fun tp!165616 () Bool)

(assert (=> b!525489 (= e!315589 (and tp!165618 tp!165616))))

(assert (=> b!525275 (= tp!165472 e!315589)))

(assert (= (and b!525275 ((_ is ElementMatch!1211) (regex!886 (h!10307 rules!1345)))) b!525486))

(assert (= (and b!525275 ((_ is Concat!2121) (regex!886 (h!10307 rules!1345)))) b!525487))

(assert (= (and b!525275 ((_ is Star!1211) (regex!886 (h!10307 rules!1345)))) b!525488))

(assert (= (and b!525275 ((_ is Union!1211) (regex!886 (h!10307 rules!1345)))) b!525489))

(declare-fun b!525504 () Bool)

(declare-fun e!315606 () Bool)

(declare-fun tp!165647 () Bool)

(assert (=> b!525504 (= e!315606 tp!165647)))

(declare-fun setIsEmpty!2458 () Bool)

(declare-fun setRes!2458 () Bool)

(assert (=> setIsEmpty!2458 setRes!2458))

(declare-fun setIsEmpty!2459 () Bool)

(declare-fun setRes!2459 () Bool)

(assert (=> setIsEmpty!2459 setRes!2459))

(declare-fun setNonEmpty!2458 () Bool)

(declare-fun setElem!2459 () Context!298)

(declare-fun e!315604 () Bool)

(declare-fun tp!165642 () Bool)

(assert (=> setNonEmpty!2458 (= setRes!2458 (and tp!165642 (inv!6177 setElem!2459) e!315604))))

(declare-fun mapDefault!2237 () List!4914)

(declare-fun setRest!2459 () (InoxSet Context!298))

(assert (=> setNonEmpty!2458 (= (_2!3258 (h!10305 mapDefault!2237)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2459 true) setRest!2459))))

(declare-fun condMapEmpty!2237 () Bool)

(assert (=> mapNonEmpty!2228 (= condMapEmpty!2237 (= mapRest!2228 ((as const (Array (_ BitVec 32) List!4914)) mapDefault!2237)))))

(declare-fun e!315605 () Bool)

(declare-fun mapRes!2237 () Bool)

(assert (=> mapNonEmpty!2228 (= tp!165447 (and e!315605 mapRes!2237))))

(declare-fun b!525505 () Bool)

(declare-fun e!315607 () Bool)

(declare-fun tp!165651 () Bool)

(assert (=> b!525505 (= e!315607 tp!165651)))

(declare-fun mapNonEmpty!2237 () Bool)

(declare-fun tp!165641 () Bool)

(declare-fun e!315603 () Bool)

(assert (=> mapNonEmpty!2237 (= mapRes!2237 (and tp!165641 e!315603))))

(declare-fun mapValue!2237 () List!4914)

(declare-fun mapRest!2237 () (Array (_ BitVec 32) List!4914))

(declare-fun mapKey!2237 () (_ BitVec 32))

(assert (=> mapNonEmpty!2237 (= mapRest!2228 (store mapRest!2237 mapKey!2237 mapValue!2237))))

(declare-fun b!525506 () Bool)

(declare-fun e!315602 () Bool)

(declare-fun tp!165646 () Bool)

(assert (=> b!525506 (= e!315602 tp!165646)))

(declare-fun mapIsEmpty!2237 () Bool)

(assert (=> mapIsEmpty!2237 mapRes!2237))

(declare-fun b!525507 () Bool)

(declare-fun tp!165645 () Bool)

(assert (=> b!525507 (= e!315604 tp!165645)))

(declare-fun tp!165644 () Bool)

(declare-fun setNonEmpty!2459 () Bool)

(declare-fun setElem!2458 () Context!298)

(assert (=> setNonEmpty!2459 (= setRes!2459 (and tp!165644 (inv!6177 setElem!2458) e!315606))))

(declare-fun setRest!2458 () (InoxSet Context!298))

(assert (=> setNonEmpty!2459 (= (_2!3258 (h!10305 mapValue!2237)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2458 true) setRest!2458))))

(declare-fun tp!165650 () Bool)

(declare-fun tp!165643 () Bool)

(declare-fun b!525508 () Bool)

(assert (=> b!525508 (= e!315605 (and tp!165643 (inv!6177 (_2!3257 (_1!3258 (h!10305 mapDefault!2237)))) e!315602 tp_is_empty!2795 setRes!2458 tp!165650))))

(declare-fun condSetEmpty!2458 () Bool)

(assert (=> b!525508 (= condSetEmpty!2458 (= (_2!3258 (h!10305 mapDefault!2237)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun tp!165648 () Bool)

(declare-fun b!525509 () Bool)

(declare-fun tp!165649 () Bool)

(assert (=> b!525509 (= e!315603 (and tp!165648 (inv!6177 (_2!3257 (_1!3258 (h!10305 mapValue!2237)))) e!315607 tp_is_empty!2795 setRes!2459 tp!165649))))

(declare-fun condSetEmpty!2459 () Bool)

(assert (=> b!525509 (= condSetEmpty!2459 (= (_2!3258 (h!10305 mapValue!2237)) ((as const (Array Context!298 Bool)) false)))))

(assert (= (and mapNonEmpty!2228 condMapEmpty!2237) mapIsEmpty!2237))

(assert (= (and mapNonEmpty!2228 (not condMapEmpty!2237)) mapNonEmpty!2237))

(assert (= b!525509 b!525505))

(assert (= (and b!525509 condSetEmpty!2459) setIsEmpty!2459))

(assert (= (and b!525509 (not condSetEmpty!2459)) setNonEmpty!2459))

(assert (= setNonEmpty!2459 b!525504))

(assert (= (and mapNonEmpty!2237 ((_ is Cons!4904) mapValue!2237)) b!525509))

(assert (= b!525508 b!525506))

(assert (= (and b!525508 condSetEmpty!2458) setIsEmpty!2458))

(assert (= (and b!525508 (not condSetEmpty!2458)) setNonEmpty!2458))

(assert (= setNonEmpty!2458 b!525507))

(assert (= (and mapNonEmpty!2228 ((_ is Cons!4904) mapDefault!2237)) b!525508))

(declare-fun m!771542 () Bool)

(assert (=> setNonEmpty!2458 m!771542))

(declare-fun m!771544 () Bool)

(assert (=> mapNonEmpty!2237 m!771544))

(declare-fun m!771546 () Bool)

(assert (=> b!525509 m!771546))

(declare-fun m!771548 () Bool)

(assert (=> setNonEmpty!2459 m!771548))

(declare-fun m!771550 () Bool)

(assert (=> b!525508 m!771550))

(declare-fun e!315610 () Bool)

(assert (=> mapNonEmpty!2228 (= tp!165468 e!315610)))

(declare-fun setIsEmpty!2460 () Bool)

(declare-fun setRes!2460 () Bool)

(assert (=> setIsEmpty!2460 setRes!2460))

(declare-fun tp!165653 () Bool)

(declare-fun tp!165655 () Bool)

(declare-fun e!315609 () Bool)

(declare-fun b!525510 () Bool)

(assert (=> b!525510 (= e!315610 (and tp!165655 (inv!6177 (_2!3257 (_1!3258 (h!10305 mapValue!2228)))) e!315609 tp_is_empty!2795 setRes!2460 tp!165653))))

(declare-fun condSetEmpty!2460 () Bool)

(assert (=> b!525510 (= condSetEmpty!2460 (= (_2!3258 (h!10305 mapValue!2228)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525511 () Bool)

(declare-fun e!315608 () Bool)

(declare-fun tp!165652 () Bool)

(assert (=> b!525511 (= e!315608 tp!165652)))

(declare-fun setNonEmpty!2460 () Bool)

(declare-fun setElem!2460 () Context!298)

(declare-fun tp!165654 () Bool)

(assert (=> setNonEmpty!2460 (= setRes!2460 (and tp!165654 (inv!6177 setElem!2460) e!315608))))

(declare-fun setRest!2460 () (InoxSet Context!298))

(assert (=> setNonEmpty!2460 (= (_2!3258 (h!10305 mapValue!2228)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2460 true) setRest!2460))))

(declare-fun b!525512 () Bool)

(declare-fun tp!165656 () Bool)

(assert (=> b!525512 (= e!315609 tp!165656)))

(assert (= b!525510 b!525512))

(assert (= (and b!525510 condSetEmpty!2460) setIsEmpty!2460))

(assert (= (and b!525510 (not condSetEmpty!2460)) setNonEmpty!2460))

(assert (= setNonEmpty!2460 b!525511))

(assert (= (and mapNonEmpty!2228 ((_ is Cons!4904) mapValue!2228)) b!525510))

(declare-fun m!771552 () Bool)

(assert (=> b!525510 m!771552))

(declare-fun m!771554 () Bool)

(assert (=> setNonEmpty!2460 m!771554))

(declare-fun e!315611 () Bool)

(declare-fun setRes!2461 () Bool)

(declare-fun setElem!2461 () Context!298)

(declare-fun tp!165657 () Bool)

(declare-fun setNonEmpty!2461 () Bool)

(assert (=> setNonEmpty!2461 (= setRes!2461 (and tp!165657 (inv!6177 setElem!2461) e!315611))))

(declare-fun setRest!2461 () (InoxSet Context!298))

(assert (=> setNonEmpty!2461 (= (_2!3256 (h!10304 mapDefault!2227)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2461 true) setRest!2461))))

(declare-fun b!525513 () Bool)

(declare-fun e!315613 () Bool)

(declare-fun tp!165658 () Bool)

(assert (=> b!525513 (= e!315613 tp!165658)))

(declare-fun setIsEmpty!2461 () Bool)

(assert (=> setIsEmpty!2461 setRes!2461))

(declare-fun b!525514 () Bool)

(declare-fun e!315612 () Bool)

(declare-fun tp!165659 () Bool)

(assert (=> b!525514 (= e!315612 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 mapDefault!2227)))) e!315613 tp_is_empty!2795 setRes!2461 tp!165659))))

(declare-fun condSetEmpty!2461 () Bool)

(assert (=> b!525514 (= condSetEmpty!2461 (= (_2!3256 (h!10304 mapDefault!2227)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525515 () Bool)

(declare-fun tp!165660 () Bool)

(assert (=> b!525515 (= e!315611 tp!165660)))

(assert (=> b!525273 (= tp!165467 e!315612)))

(assert (= b!525514 b!525513))

(assert (= (and b!525514 condSetEmpty!2461) setIsEmpty!2461))

(assert (= (and b!525514 (not condSetEmpty!2461)) setNonEmpty!2461))

(assert (= setNonEmpty!2461 b!525515))

(assert (= (and b!525273 ((_ is Cons!4903) mapDefault!2227)) b!525514))

(declare-fun m!771556 () Bool)

(assert (=> setNonEmpty!2461 m!771556))

(declare-fun m!771558 () Bool)

(assert (=> b!525514 m!771558))

(declare-fun e!315616 () Bool)

(assert (=> b!525264 (= tp!165452 e!315616)))

(declare-fun setIsEmpty!2462 () Bool)

(declare-fun setRes!2462 () Bool)

(assert (=> setIsEmpty!2462 setRes!2462))

(declare-fun b!525516 () Bool)

(declare-fun tp!165662 () Bool)

(declare-fun e!315615 () Bool)

(declare-fun tp!165664 () Bool)

(assert (=> b!525516 (= e!315616 (and tp!165664 (inv!6177 (_2!3257 (_1!3258 (h!10305 mapDefault!2228)))) e!315615 tp_is_empty!2795 setRes!2462 tp!165662))))

(declare-fun condSetEmpty!2462 () Bool)

(assert (=> b!525516 (= condSetEmpty!2462 (= (_2!3258 (h!10305 mapDefault!2228)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525517 () Bool)

(declare-fun e!315614 () Bool)

(declare-fun tp!165661 () Bool)

(assert (=> b!525517 (= e!315614 tp!165661)))

(declare-fun setNonEmpty!2462 () Bool)

(declare-fun setElem!2462 () Context!298)

(declare-fun tp!165663 () Bool)

(assert (=> setNonEmpty!2462 (= setRes!2462 (and tp!165663 (inv!6177 setElem!2462) e!315614))))

(declare-fun setRest!2462 () (InoxSet Context!298))

(assert (=> setNonEmpty!2462 (= (_2!3258 (h!10305 mapDefault!2228)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2462 true) setRest!2462))))

(declare-fun b!525518 () Bool)

(declare-fun tp!165665 () Bool)

(assert (=> b!525518 (= e!315615 tp!165665)))

(assert (= b!525516 b!525518))

(assert (= (and b!525516 condSetEmpty!2462) setIsEmpty!2462))

(assert (= (and b!525516 (not condSetEmpty!2462)) setNonEmpty!2462))

(assert (= setNonEmpty!2462 b!525517))

(assert (= (and b!525264 ((_ is Cons!4904) mapDefault!2228)) b!525516))

(declare-fun m!771560 () Bool)

(assert (=> b!525516 m!771560))

(declare-fun m!771562 () Bool)

(assert (=> setNonEmpty!2462 m!771562))

(check-sat (not d!187258) (not b!525407) (not d!187288) (not d!187302) (not b!525506) (not b!525507) (not b!525447) b_and!51361 (not b!525471) (not setNonEmpty!2451) (not b_next!13883) (not setNonEmpty!2462) (not d!187284) (not b!525438) (not b!525516) (not b!525518) (not d!187296) (not b!525409) (not b!525419) (not setNonEmpty!2459) (not b!525381) (not b!525302) b_and!51355 (not b_next!13877) (not b!525488) (not d!187298) (not b!525510) (not b_next!13879) (not b!525451) (not b!525328) (not b!525303) (not b!525433) (not setNonEmpty!2452) (not d!187252) (not b!525341) (not b!525475) (not d!187292) (not b!525436) (not b!525472) (not b!525511) (not b!525343) (not b!525258) (not d!187256) (not b!525346) (not b!525267) b_and!51357 (not b!525448) (not b!525515) (not setNonEmpty!2438) (not b!525357) (not setNonEmpty!2445) (not b_next!13887) (not b!525508) (not b_next!13873) (not b_next!13891) b_and!51351 (not setNonEmpty!2429) (not b!525512) (not d!187254) (not b!525324) (not setNonEmpty!2434) b_and!51363 (not b!525422) (not b!525382) (not setNonEmpty!2461) (not setNonEmpty!2433) (not b!525301) (not d!187282) (not b!525334) (not b!525363) (not b!525514) (not b!525469) (not b!525449) (not setNonEmpty!2458) (not b!525325) b_and!51367 (not b!525505) (not b!525364) (not setNonEmpty!2444) (not b!525361) (not b!525322) (not b_next!13885) (not setNonEmpty!2453) (not b!525383) (not b!525356) (not d!187278) (not d!187286) (not b!525319) (not b!525487) (not b!525331) (not mapNonEmpty!2234) (not b!525393) (not setNonEmpty!2430) (not b!525437) (not mapNonEmpty!2237) (not b!525408) (not b!525474) (not b_next!13881) (not b!525385) (not b!525489) (not b!525362) (not b!525513) (not b!525395) (not b!525405) (not b!525473) (not b!525371) (not b_next!13889) (not b!525435) (not b!525304) (not setNonEmpty!2460) (not b!525434) (not b!525392) (not mapNonEmpty!2231) (not b!525368) (not d!187280) (not d!187290) (not b!525321) (not b!525404) (not b!525467) (not setNonEmpty!2437) (not b!525394) (not d!187266) (not b!525450) (not d!187242) (not b!525504) (not b!525406) (not b!525384) (not b!525418) (not b!525359) b_and!51353 (not setNonEmpty!2439) b_and!51359 (not b!525323) (not b!525380) (not b!525517) (not b!525421) (not b!525509) (not d!187300) b_and!51365 (not b_next!13875) tp_is_empty!2795 (not b!525365) b_and!51369 (not b!525344) (not setNonEmpty!2446) (not b!525468) (not b!525470) (not b!525452))
(check-sat (not b_next!13879) b_and!51357 (not b_next!13887) b_and!51363 b_and!51367 (not b_next!13885) (not b_next!13881) (not b_next!13889) b_and!51353 b_and!51359 b_and!51365 b_and!51361 (not b_next!13883) b_and!51355 (not b_next!13877) (not b_next!13873) (not b_next!13891) b_and!51351 (not b_next!13875) b_and!51369)
(get-model)

(declare-fun d!187304 () Bool)

(declare-fun lambda!15192 () Int)

(declare-fun forall!1485 (List!4911 Int) Bool)

(assert (=> d!187304 (= (inv!6177 setElem!2460) (forall!1485 (exprs!649 setElem!2460) lambda!15192))))

(declare-fun bs!65571 () Bool)

(assert (= bs!65571 d!187304))

(declare-fun m!771564 () Bool)

(assert (=> bs!65571 m!771564))

(assert (=> setNonEmpty!2460 d!187304))

(declare-fun b!525527 () Bool)

(declare-fun e!315621 () List!4917)

(assert (=> b!525527 (= e!315621 Nil!4907)))

(declare-fun b!525529 () Bool)

(declare-fun e!315622 () List!4917)

(declare-fun list!2058 (IArray!3191) List!4917)

(assert (=> b!525529 (= e!315622 (list!2058 (xs!4230 (c!100955 (_1!3259 lt!217596)))))))

(declare-fun d!187306 () Bool)

(declare-fun c!100979 () Bool)

(assert (=> d!187306 (= c!100979 ((_ is Empty!1595) (c!100955 (_1!3259 lt!217596))))))

(assert (=> d!187306 (= (list!2057 (c!100955 (_1!3259 lt!217596))) e!315621)))

(declare-fun b!525528 () Bool)

(assert (=> b!525528 (= e!315621 e!315622)))

(declare-fun c!100980 () Bool)

(assert (=> b!525528 (= c!100980 ((_ is Leaf!2541) (c!100955 (_1!3259 lt!217596))))))

(declare-fun b!525530 () Bool)

(assert (=> b!525530 (= e!315622 (++!1375 (list!2057 (left!4200 (c!100955 (_1!3259 lt!217596)))) (list!2057 (right!4530 (c!100955 (_1!3259 lt!217596))))))))

(assert (= (and d!187306 c!100979) b!525527))

(assert (= (and d!187306 (not c!100979)) b!525528))

(assert (= (and b!525528 c!100980) b!525529))

(assert (= (and b!525528 (not c!100980)) b!525530))

(declare-fun m!771566 () Bool)

(assert (=> b!525529 m!771566))

(declare-fun m!771568 () Bool)

(assert (=> b!525530 m!771568))

(declare-fun m!771570 () Bool)

(assert (=> b!525530 m!771570))

(assert (=> b!525530 m!771568))

(assert (=> b!525530 m!771570))

(declare-fun m!771572 () Bool)

(assert (=> b!525530 m!771572))

(assert (=> d!187288 d!187306))

(declare-fun d!187308 () Bool)

(assert (=> d!187308 (= (inv!6178 (xs!4229 (c!100954 input!747))) (<= (size!4006 (innerList!1652 (xs!4229 (c!100954 input!747)))) 2147483647))))

(declare-fun bs!65572 () Bool)

(assert (= bs!65572 d!187308))

(declare-fun m!771574 () Bool)

(assert (=> bs!65572 m!771574))

(assert (=> b!525451 d!187308))

(declare-fun bs!65573 () Bool)

(declare-fun d!187310 () Bool)

(assert (= bs!65573 (and d!187310 d!187304)))

(declare-fun lambda!15193 () Int)

(assert (=> bs!65573 (= lambda!15193 lambda!15192)))

(assert (=> d!187310 (= (inv!6177 setElem!2461) (forall!1485 (exprs!649 setElem!2461) lambda!15193))))

(declare-fun bs!65574 () Bool)

(assert (= bs!65574 d!187310))

(declare-fun m!771576 () Bool)

(assert (=> bs!65574 m!771576))

(assert (=> setNonEmpty!2461 d!187310))

(declare-fun bs!65575 () Bool)

(declare-fun d!187312 () Bool)

(assert (= bs!65575 (and d!187312 d!187304)))

(declare-fun lambda!15194 () Int)

(assert (=> bs!65575 (= lambda!15194 lambda!15192)))

(declare-fun bs!65576 () Bool)

(assert (= bs!65576 (and d!187312 d!187310)))

(assert (=> bs!65576 (= lambda!15194 lambda!15193)))

(assert (=> d!187312 (= (inv!6177 setElem!2446) (forall!1485 (exprs!649 setElem!2446) lambda!15194))))

(declare-fun bs!65577 () Bool)

(assert (= bs!65577 d!187312))

(declare-fun m!771578 () Bool)

(assert (=> bs!65577 m!771578))

(assert (=> setNonEmpty!2446 d!187312))

(declare-fun b!525531 () Bool)

(declare-fun e!315623 () List!4917)

(assert (=> b!525531 (= e!315623 Nil!4907)))

(declare-fun b!525533 () Bool)

(declare-fun e!315624 () List!4917)

(assert (=> b!525533 (= e!315624 (list!2058 (xs!4230 (c!100955 (_1!3259 lt!217598)))))))

(declare-fun d!187314 () Bool)

(declare-fun c!100981 () Bool)

(assert (=> d!187314 (= c!100981 ((_ is Empty!1595) (c!100955 (_1!3259 lt!217598))))))

(assert (=> d!187314 (= (list!2057 (c!100955 (_1!3259 lt!217598))) e!315623)))

(declare-fun b!525532 () Bool)

(assert (=> b!525532 (= e!315623 e!315624)))

(declare-fun c!100982 () Bool)

(assert (=> b!525532 (= c!100982 ((_ is Leaf!2541) (c!100955 (_1!3259 lt!217598))))))

(declare-fun b!525534 () Bool)

(assert (=> b!525534 (= e!315624 (++!1375 (list!2057 (left!4200 (c!100955 (_1!3259 lt!217598)))) (list!2057 (right!4530 (c!100955 (_1!3259 lt!217598))))))))

(assert (= (and d!187314 c!100981) b!525531))

(assert (= (and d!187314 (not c!100981)) b!525532))

(assert (= (and b!525532 c!100982) b!525533))

(assert (= (and b!525532 (not c!100982)) b!525534))

(declare-fun m!771580 () Bool)

(assert (=> b!525533 m!771580))

(declare-fun m!771582 () Bool)

(assert (=> b!525534 m!771582))

(declare-fun m!771584 () Bool)

(assert (=> b!525534 m!771584))

(assert (=> b!525534 m!771582))

(assert (=> b!525534 m!771584))

(declare-fun m!771586 () Bool)

(assert (=> b!525534 m!771586))

(assert (=> d!187252 d!187314))

(declare-fun d!187316 () Bool)

(declare-fun res!222468 () Bool)

(declare-fun e!315629 () Bool)

(assert (=> d!187316 (=> (not res!222468) (not e!315629))))

(declare-fun valid!554 (MutableMap!543) Bool)

(assert (=> d!187316 (= res!222468 (valid!554 (cache!930 cacheDown!462)))))

(assert (=> d!187316 (= (validCacheMapDown!33 (cache!930 cacheDown!462)) e!315629)))

(declare-fun b!525541 () Bool)

(declare-fun res!222469 () Bool)

(assert (=> b!525541 (=> (not res!222469) (not e!315629))))

(declare-fun invariantList!98 (List!4914) Bool)

(declare-datatypes ((ListMap!245 0))(
  ( (ListMap!246 (toList!459 List!4914)) )
))
(declare-fun map!1129 (MutableMap!543) ListMap!245)

(assert (=> b!525541 (= res!222469 (invariantList!98 (toList!459 (map!1129 (cache!930 cacheDown!462)))))))

(declare-fun b!525542 () Bool)

(declare-fun lambda!15197 () Int)

(declare-fun forall!1486 (List!4914 Int) Bool)

(assert (=> b!525542 (= e!315629 (forall!1486 (toList!459 (map!1129 (cache!930 cacheDown!462))) lambda!15197))))

(assert (= (and d!187316 res!222468) b!525541))

(assert (= (and b!525541 res!222469) b!525542))

(declare-fun m!771589 () Bool)

(assert (=> d!187316 m!771589))

(declare-fun m!771591 () Bool)

(assert (=> b!525541 m!771591))

(declare-fun m!771593 () Bool)

(assert (=> b!525541 m!771593))

(assert (=> b!525542 m!771591))

(declare-fun m!771595 () Bool)

(assert (=> b!525542 m!771595))

(assert (=> b!525328 d!187316))

(declare-fun bs!65578 () Bool)

(declare-fun d!187318 () Bool)

(assert (= bs!65578 (and d!187318 d!187304)))

(declare-fun lambda!15198 () Int)

(assert (=> bs!65578 (= lambda!15198 lambda!15192)))

(declare-fun bs!65579 () Bool)

(assert (= bs!65579 (and d!187318 d!187310)))

(assert (=> bs!65579 (= lambda!15198 lambda!15193)))

(declare-fun bs!65580 () Bool)

(assert (= bs!65580 (and d!187318 d!187312)))

(assert (=> bs!65580 (= lambda!15198 lambda!15194)))

(assert (=> d!187318 (= (inv!6177 (_2!3257 (_1!3258 (h!10305 mapValue!2228)))) (forall!1485 (exprs!649 (_2!3257 (_1!3258 (h!10305 mapValue!2228)))) lambda!15198))))

(declare-fun bs!65581 () Bool)

(assert (= bs!65581 d!187318))

(declare-fun m!771597 () Bool)

(assert (=> bs!65581 m!771597))

(assert (=> b!525510 d!187318))

(declare-fun bs!65582 () Bool)

(declare-fun d!187320 () Bool)

(assert (= bs!65582 (and d!187320 d!187304)))

(declare-fun lambda!15199 () Int)

(assert (=> bs!65582 (= lambda!15199 lambda!15192)))

(declare-fun bs!65583 () Bool)

(assert (= bs!65583 (and d!187320 d!187310)))

(assert (=> bs!65583 (= lambda!15199 lambda!15193)))

(declare-fun bs!65584 () Bool)

(assert (= bs!65584 (and d!187320 d!187312)))

(assert (=> bs!65584 (= lambda!15199 lambda!15194)))

(declare-fun bs!65585 () Bool)

(assert (= bs!65585 (and d!187320 d!187318)))

(assert (=> bs!65585 (= lambda!15199 lambda!15198)))

(assert (=> d!187320 (= (inv!6177 (_1!3255 (_1!3256 (h!10304 mapValue!2234)))) (forall!1485 (exprs!649 (_1!3255 (_1!3256 (h!10304 mapValue!2234)))) lambda!15199))))

(declare-fun bs!65586 () Bool)

(assert (= bs!65586 d!187320))

(declare-fun m!771599 () Bool)

(assert (=> bs!65586 m!771599))

(assert (=> b!525467 d!187320))

(declare-fun bs!65587 () Bool)

(declare-fun d!187322 () Bool)

(assert (= bs!65587 (and d!187322 d!187304)))

(declare-fun lambda!15200 () Int)

(assert (=> bs!65587 (= lambda!15200 lambda!15192)))

(declare-fun bs!65588 () Bool)

(assert (= bs!65588 (and d!187322 d!187310)))

(assert (=> bs!65588 (= lambda!15200 lambda!15193)))

(declare-fun bs!65589 () Bool)

(assert (= bs!65589 (and d!187322 d!187312)))

(assert (=> bs!65589 (= lambda!15200 lambda!15194)))

(declare-fun bs!65590 () Bool)

(assert (= bs!65590 (and d!187322 d!187320)))

(assert (=> bs!65590 (= lambda!15200 lambda!15199)))

(declare-fun bs!65591 () Bool)

(assert (= bs!65591 (and d!187322 d!187318)))

(assert (=> bs!65591 (= lambda!15200 lambda!15198)))

(assert (=> d!187322 (= (inv!6177 setElem!2437) (forall!1485 (exprs!649 setElem!2437) lambda!15200))))

(declare-fun bs!65592 () Bool)

(assert (= bs!65592 d!187322))

(declare-fun m!771601 () Bool)

(assert (=> bs!65592 m!771601))

(assert (=> setNonEmpty!2437 d!187322))

(declare-fun d!187324 () Bool)

(declare-fun res!222476 () Bool)

(declare-fun e!315632 () Bool)

(assert (=> d!187324 (=> (not res!222476) (not e!315632))))

(declare-fun size!4007 (Conc!1594) Int)

(assert (=> d!187324 (= res!222476 (= (csize!3418 (c!100954 input!747)) (+ (size!4007 (left!4199 (c!100954 input!747))) (size!4007 (right!4529 (c!100954 input!747))))))))

(assert (=> d!187324 (= (inv!6175 (c!100954 input!747)) e!315632)))

(declare-fun b!525549 () Bool)

(declare-fun res!222477 () Bool)

(assert (=> b!525549 (=> (not res!222477) (not e!315632))))

(assert (=> b!525549 (= res!222477 (and (not (= (left!4199 (c!100954 input!747)) Empty!1594)) (not (= (right!4529 (c!100954 input!747)) Empty!1594))))))

(declare-fun b!525550 () Bool)

(declare-fun res!222478 () Bool)

(assert (=> b!525550 (=> (not res!222478) (not e!315632))))

(declare-fun height!250 (Conc!1594) Int)

(assert (=> b!525550 (= res!222478 (= (cheight!1805 (c!100954 input!747)) (+ (max!0 (height!250 (left!4199 (c!100954 input!747))) (height!250 (right!4529 (c!100954 input!747)))) 1)))))

(declare-fun b!525551 () Bool)

(assert (=> b!525551 (= e!315632 (<= 0 (cheight!1805 (c!100954 input!747))))))

(assert (= (and d!187324 res!222476) b!525549))

(assert (= (and b!525549 res!222477) b!525550))

(assert (= (and b!525550 res!222478) b!525551))

(declare-fun m!771603 () Bool)

(assert (=> d!187324 m!771603))

(declare-fun m!771605 () Bool)

(assert (=> d!187324 m!771605))

(declare-fun m!771607 () Bool)

(assert (=> b!525550 m!771607))

(declare-fun m!771609 () Bool)

(assert (=> b!525550 m!771609))

(assert (=> b!525550 m!771607))

(assert (=> b!525550 m!771609))

(declare-fun m!771611 () Bool)

(assert (=> b!525550 m!771611))

(assert (=> b!525344 d!187324))

(declare-fun d!187326 () Bool)

(declare-fun lt!217620 () Bool)

(declare-fun isEmpty!3600 (List!4917) Bool)

(assert (=> d!187326 (= lt!217620 (isEmpty!3600 (list!2054 (_1!3259 lt!217609))))))

(declare-fun isEmpty!3601 (Conc!1595) Bool)

(assert (=> d!187326 (= lt!217620 (isEmpty!3601 (c!100955 (_1!3259 lt!217609))))))

(assert (=> d!187326 (= (isEmpty!3599 (_1!3259 lt!217609)) lt!217620)))

(declare-fun bs!65593 () Bool)

(assert (= bs!65593 d!187326))

(assert (=> bs!65593 m!771402))

(assert (=> bs!65593 m!771402))

(declare-fun m!771613 () Bool)

(assert (=> bs!65593 m!771613))

(declare-fun m!771615 () Bool)

(assert (=> bs!65593 m!771615))

(assert (=> b!525322 d!187326))

(declare-fun bs!65594 () Bool)

(declare-fun d!187328 () Bool)

(assert (= bs!65594 (and d!187328 d!187310)))

(declare-fun lambda!15201 () Int)

(assert (=> bs!65594 (= lambda!15201 lambda!15193)))

(declare-fun bs!65595 () Bool)

(assert (= bs!65595 (and d!187328 d!187312)))

(assert (=> bs!65595 (= lambda!15201 lambda!15194)))

(declare-fun bs!65596 () Bool)

(assert (= bs!65596 (and d!187328 d!187320)))

(assert (=> bs!65596 (= lambda!15201 lambda!15199)))

(declare-fun bs!65597 () Bool)

(assert (= bs!65597 (and d!187328 d!187318)))

(assert (=> bs!65597 (= lambda!15201 lambda!15198)))

(declare-fun bs!65598 () Bool)

(assert (= bs!65598 (and d!187328 d!187322)))

(assert (=> bs!65598 (= lambda!15201 lambda!15200)))

(declare-fun bs!65599 () Bool)

(assert (= bs!65599 (and d!187328 d!187304)))

(assert (=> bs!65599 (= lambda!15201 lambda!15192)))

(assert (=> d!187328 (= (inv!6177 (_1!3255 (_1!3256 (h!10304 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))) (forall!1485 (exprs!649 (_1!3255 (_1!3256 (h!10304 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))) lambda!15201))))

(declare-fun bs!65600 () Bool)

(assert (= bs!65600 d!187328))

(declare-fun m!771617 () Bool)

(assert (=> bs!65600 m!771617))

(assert (=> b!525408 d!187328))

(declare-fun d!187330 () Bool)

(declare-fun res!222483 () Bool)

(declare-fun e!315635 () Bool)

(assert (=> d!187330 (=> (not res!222483) (not e!315635))))

(declare-fun list!2059 (IArray!3189) List!4910)

(assert (=> d!187330 (= res!222483 (<= (size!4006 (list!2059 (xs!4229 (c!100954 input!747)))) 512))))

(assert (=> d!187330 (= (inv!6176 (c!100954 input!747)) e!315635)))

(declare-fun b!525556 () Bool)

(declare-fun res!222484 () Bool)

(assert (=> b!525556 (=> (not res!222484) (not e!315635))))

(assert (=> b!525556 (= res!222484 (= (csize!3419 (c!100954 input!747)) (size!4006 (list!2059 (xs!4229 (c!100954 input!747))))))))

(declare-fun b!525557 () Bool)

(assert (=> b!525557 (= e!315635 (and (> (csize!3419 (c!100954 input!747)) 0) (<= (csize!3419 (c!100954 input!747)) 512)))))

(assert (= (and d!187330 res!222483) b!525556))

(assert (= (and b!525556 res!222484) b!525557))

(declare-fun m!771619 () Bool)

(assert (=> d!187330 m!771619))

(assert (=> d!187330 m!771619))

(declare-fun m!771621 () Bool)

(assert (=> d!187330 m!771621))

(assert (=> b!525556 m!771619))

(assert (=> b!525556 m!771619))

(assert (=> b!525556 m!771621))

(assert (=> b!525346 d!187330))

(declare-fun d!187332 () Bool)

(declare-fun lt!217623 () Int)

(assert (=> d!187332 (= lt!217623 (size!4006 (list!2055 (_2!3259 lt!217609))))))

(assert (=> d!187332 (= lt!217623 (size!4007 (c!100954 (_2!3259 lt!217609))))))

(assert (=> d!187332 (= (size!4005 (_2!3259 lt!217609)) lt!217623)))

(declare-fun bs!65601 () Bool)

(assert (= bs!65601 d!187332))

(assert (=> bs!65601 m!771396))

(assert (=> bs!65601 m!771396))

(declare-fun m!771623 () Bool)

(assert (=> bs!65601 m!771623))

(declare-fun m!771625 () Bool)

(assert (=> bs!65601 m!771625))

(assert (=> b!525324 d!187332))

(declare-fun d!187334 () Bool)

(declare-fun lt!217624 () Int)

(assert (=> d!187334 (= lt!217624 (size!4006 (list!2055 input!747)))))

(assert (=> d!187334 (= lt!217624 (size!4007 (c!100954 input!747)))))

(assert (=> d!187334 (= (size!4005 input!747) lt!217624)))

(declare-fun bs!65602 () Bool)

(assert (= bs!65602 d!187334))

(assert (=> bs!65602 m!771320))

(assert (=> bs!65602 m!771320))

(declare-fun m!771627 () Bool)

(assert (=> bs!65602 m!771627))

(declare-fun m!771629 () Bool)

(assert (=> bs!65602 m!771629))

(assert (=> b!525324 d!187334))

(declare-fun b!525558 () Bool)

(declare-fun e!315636 () List!4917)

(assert (=> b!525558 (= e!315636 Nil!4907)))

(declare-fun b!525560 () Bool)

(declare-fun e!315637 () List!4917)

(assert (=> b!525560 (= e!315637 (list!2058 (xs!4230 (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598))))))))

(declare-fun d!187336 () Bool)

(declare-fun c!100983 () Bool)

(assert (=> d!187336 (= c!100983 ((_ is Empty!1595) (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598)))))))

(assert (=> d!187336 (= (list!2057 (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598)))) e!315636)))

(declare-fun b!525559 () Bool)

(assert (=> b!525559 (= e!315636 e!315637)))

(declare-fun c!100984 () Bool)

(assert (=> b!525559 (= c!100984 ((_ is Leaf!2541) (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598)))))))

(declare-fun b!525561 () Bool)

(assert (=> b!525561 (= e!315637 (++!1375 (list!2057 (left!4200 (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598))))) (list!2057 (right!4530 (c!100955 (++!1372 (BalanceConc!3199 Empty!1595) (_1!3259 lt!217598)))))))))

(assert (= (and d!187336 c!100983) b!525558))

(assert (= (and d!187336 (not c!100983)) b!525559))

(assert (= (and b!525559 c!100984) b!525560))

(assert (= (and b!525559 (not c!100984)) b!525561))

(declare-fun m!771631 () Bool)

(assert (=> b!525560 m!771631))

(declare-fun m!771633 () Bool)

(assert (=> b!525561 m!771633))

(declare-fun m!771635 () Bool)

(assert (=> b!525561 m!771635))

(assert (=> b!525561 m!771633))

(assert (=> b!525561 m!771635))

(declare-fun m!771637 () Bool)

(assert (=> b!525561 m!771637))

(assert (=> d!187254 d!187336))

(declare-fun d!187338 () Bool)

(declare-fun c!100985 () Bool)

(assert (=> d!187338 (= c!100985 ((_ is Node!1594) (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(declare-fun e!315638 () Bool)

(assert (=> d!187338 (= (inv!6169 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) e!315638)))

(declare-fun b!525562 () Bool)

(assert (=> b!525562 (= e!315638 (inv!6175 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(declare-fun b!525563 () Bool)

(declare-fun e!315639 () Bool)

(assert (=> b!525563 (= e!315638 e!315639)))

(declare-fun res!222485 () Bool)

(assert (=> b!525563 (= res!222485 (not ((_ is Leaf!2540) (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))))

(assert (=> b!525563 (=> res!222485 e!315639)))

(declare-fun b!525564 () Bool)

(assert (=> b!525564 (= e!315639 (inv!6176 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(assert (= (and d!187338 c!100985) b!525562))

(assert (= (and d!187338 (not c!100985)) b!525563))

(assert (= (and b!525563 (not res!222485)) b!525564))

(declare-fun m!771639 () Bool)

(assert (=> b!525562 m!771639))

(declare-fun m!771641 () Bool)

(assert (=> b!525564 m!771641))

(assert (=> b!525447 d!187338))

(declare-fun d!187340 () Bool)

(declare-fun c!100986 () Bool)

(assert (=> d!187340 (= c!100986 ((_ is Node!1594) (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(declare-fun e!315640 () Bool)

(assert (=> d!187340 (= (inv!6169 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) e!315640)))

(declare-fun b!525565 () Bool)

(assert (=> b!525565 (= e!315640 (inv!6175 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(declare-fun b!525566 () Bool)

(declare-fun e!315641 () Bool)

(assert (=> b!525566 (= e!315640 e!315641)))

(declare-fun res!222486 () Bool)

(assert (=> b!525566 (= res!222486 (not ((_ is Leaf!2540) (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))))

(assert (=> b!525566 (=> res!222486 e!315641)))

(declare-fun b!525567 () Bool)

(assert (=> b!525567 (= e!315641 (inv!6176 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(assert (= (and d!187340 c!100986) b!525565))

(assert (= (and d!187340 (not c!100986)) b!525566))

(assert (= (and b!525566 (not res!222486)) b!525567))

(declare-fun m!771643 () Bool)

(assert (=> b!525565 m!771643))

(declare-fun m!771645 () Bool)

(assert (=> b!525567 m!771645))

(assert (=> b!525447 d!187340))

(declare-fun d!187342 () Bool)

(assert (=> d!187342 (= (height!249 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))) (ite ((_ is Empty!1595) (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))) 0 (ite ((_ is Leaf!2541) (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))) 1 (cheight!1806 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))))))))

(assert (=> b!525302 d!187342))

(declare-fun d!187344 () Bool)

(assert (=> d!187344 (= (height!249 (c!100955 (_1!3259 lt!217598))) (ite ((_ is Empty!1595) (c!100955 (_1!3259 lt!217598))) 0 (ite ((_ is Leaf!2541) (c!100955 (_1!3259 lt!217598))) 1 (cheight!1806 (c!100955 (_1!3259 lt!217598))))))))

(assert (=> b!525302 d!187344))

(declare-fun d!187346 () Bool)

(assert (=> d!187346 (= (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (ite ((_ is Empty!1595) (c!100955 (BalanceConc!3199 Empty!1595))) 0 (ite ((_ is Leaf!2541) (c!100955 (BalanceConc!3199 Empty!1595))) 1 (cheight!1806 (c!100955 (BalanceConc!3199 Empty!1595))))))))

(assert (=> b!525302 d!187346))

(declare-fun b!525610 () Bool)

(declare-fun e!315670 () Bool)

(assert (=> b!525610 (= e!315670 (isBalanced!494 (c!100955 (_1!3259 lt!217598))))))

(declare-fun bm!38084 () Bool)

(declare-fun c!101009 () Bool)

(declare-fun call!38102 () Int)

(declare-fun lt!217636 () Conc!1595)

(assert (=> bm!38084 (= call!38102 (height!249 (ite c!101009 lt!217636 (left!4200 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun bm!38085 () Bool)

(declare-fun call!38090 () Conc!1595)

(declare-fun call!38097 () Conc!1595)

(assert (=> bm!38085 (= call!38090 call!38097)))

(declare-fun b!525611 () Bool)

(declare-fun e!315668 () Conc!1595)

(declare-fun e!315671 () Conc!1595)

(assert (=> b!525611 (= e!315668 e!315671)))

(declare-fun lt!217635 () Int)

(assert (=> b!525611 (= c!101009 (< lt!217635 (- 1)))))

(declare-fun b!525612 () Bool)

(declare-fun c!101007 () Bool)

(declare-fun call!38091 () Int)

(assert (=> b!525612 (= c!101007 (>= call!38091 call!38102))))

(declare-fun e!315664 () Conc!1595)

(assert (=> b!525612 (= e!315671 e!315664)))

(declare-fun bm!38086 () Bool)

(declare-fun call!38093 () Int)

(declare-fun lt!217633 () Conc!1595)

(assert (=> bm!38086 (= call!38093 (height!249 (ite c!101009 (left!4200 (c!100955 (BalanceConc!3199 Empty!1595))) lt!217633)))))

(declare-fun b!525613 () Bool)

(declare-fun call!38098 () Conc!1595)

(assert (=> b!525613 (= e!315664 call!38098)))

(declare-fun b!525614 () Bool)

(declare-fun e!315662 () Conc!1595)

(declare-fun e!315669 () Conc!1595)

(assert (=> b!525614 (= e!315662 e!315669)))

(declare-fun call!38089 () Conc!1595)

(assert (=> b!525614 (= lt!217636 call!38089)))

(declare-fun c!101005 () Bool)

(assert (=> b!525614 (= c!101005 (= call!38102 (- call!38091 3)))))

(declare-fun bm!38087 () Bool)

(declare-fun call!38092 () Conc!1595)

(declare-fun call!38094 () Conc!1595)

(assert (=> bm!38087 (= call!38092 call!38094)))

(declare-fun bm!38088 () Bool)

(assert (=> bm!38088 (= call!38091 (height!249 (ite c!101009 (c!100955 (BalanceConc!3199 Empty!1595)) (right!4530 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun c!101010 () Bool)

(declare-fun call!38095 () Conc!1595)

(declare-fun bm!38089 () Bool)

(assert (=> bm!38089 (= call!38095 (++!1374 (ite c!101009 (ite c!101010 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))) (right!4530 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))) (c!100955 (BalanceConc!3199 Empty!1595))) (ite c!101009 (c!100955 (_1!3259 lt!217598)) (ite c!101007 (left!4200 (c!100955 (_1!3259 lt!217598))) (left!4200 (left!4200 (c!100955 (_1!3259 lt!217598))))))))))

(declare-fun b!525615 () Bool)

(declare-fun e!315667 () Conc!1595)

(assert (=> b!525615 (= e!315667 (c!100955 (BalanceConc!3199 Empty!1595)))))

(declare-fun b!525616 () Bool)

(declare-fun res!222498 () Bool)

(declare-fun e!315666 () Bool)

(assert (=> b!525616 (=> (not res!222498) (not e!315666))))

(declare-fun lt!217634 () Conc!1595)

(assert (=> b!525616 (= res!222498 (>= (height!249 lt!217634) (max!0 (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (height!249 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun b!525617 () Bool)

(declare-fun c!101004 () Bool)

(assert (=> b!525617 (= c!101004 (and (<= (- 1) lt!217635) (<= lt!217635 1)))))

(assert (=> b!525617 (= lt!217635 (- (height!249 (c!100955 (_1!3259 lt!217598))) (height!249 (c!100955 (BalanceConc!3199 Empty!1595)))))))

(assert (=> b!525617 (= e!315667 e!315668)))

(declare-fun b!525618 () Bool)

(declare-fun e!315665 () Conc!1595)

(assert (=> b!525618 (= e!315665 e!315667)))

(declare-fun c!101003 () Bool)

(assert (=> b!525618 (= c!101003 (= (c!100955 (_1!3259 lt!217598)) Empty!1595))))

(declare-fun bm!38090 () Bool)

(declare-fun call!38099 () Int)

(assert (=> bm!38090 (= call!38099 (height!249 (ite c!101009 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))) (c!100955 (_1!3259 lt!217598)))))))

(declare-fun b!525619 () Bool)

(assert (=> b!525619 (= e!315666 (= (list!2057 lt!217634) (++!1375 (list!2057 (c!100955 (BalanceConc!3199 Empty!1595))) (list!2057 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun bm!38091 () Bool)

(declare-fun call!38100 () Conc!1595)

(assert (=> bm!38091 (= call!38100 call!38090)))

(declare-fun b!525620 () Bool)

(declare-fun e!315663 () Conc!1595)

(declare-fun call!38103 () Conc!1595)

(assert (=> b!525620 (= e!315663 call!38103)))

(declare-fun b!525621 () Bool)

(assert (=> b!525621 (= e!315662 call!38090)))

(declare-fun b!525622 () Bool)

(declare-fun res!222497 () Bool)

(assert (=> b!525622 (=> (not res!222497) (not e!315666))))

(assert (=> b!525622 (= res!222497 (<= (height!249 lt!217634) (+ (max!0 (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (height!249 (c!100955 (_1!3259 lt!217598)))) 1)))))

(declare-fun bm!38092 () Bool)

(declare-fun call!38101 () Conc!1595)

(assert (=> bm!38092 (= call!38101 call!38094)))

(declare-fun b!525623 () Bool)

(assert (=> b!525623 (= e!315669 call!38092)))

(declare-fun d!187348 () Bool)

(assert (=> d!187348 e!315666))

(declare-fun res!222499 () Bool)

(assert (=> d!187348 (=> (not res!222499) (not e!315666))))

(assert (=> d!187348 (= res!222499 (appendAssocInst!108 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))))

(assert (=> d!187348 (= lt!217634 e!315665)))

(declare-fun c!101008 () Bool)

(assert (=> d!187348 (= c!101008 (= (c!100955 (BalanceConc!3199 Empty!1595)) Empty!1595))))

(assert (=> d!187348 e!315670))

(declare-fun res!222501 () Bool)

(assert (=> d!187348 (=> (not res!222501) (not e!315670))))

(assert (=> d!187348 (= res!222501 (isBalanced!494 (c!100955 (BalanceConc!3199 Empty!1595))))))

(assert (=> d!187348 (= (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))) lt!217634)))

(declare-fun b!525624 () Bool)

(assert (=> b!525624 (= c!101010 (>= call!38093 call!38099))))

(assert (=> b!525624 (= e!315671 e!315662)))

(declare-fun bm!38093 () Bool)

(assert (=> bm!38093 (= call!38098 call!38097)))

(declare-fun bm!38094 () Bool)

(assert (=> bm!38094 (= call!38103 call!38098)))

(declare-fun b!525625 () Bool)

(declare-fun res!222500 () Bool)

(assert (=> b!525625 (=> (not res!222500) (not e!315666))))

(assert (=> b!525625 (= res!222500 (isBalanced!494 lt!217634))))

(declare-fun c!101006 () Bool)

(declare-fun call!38104 () Conc!1595)

(declare-fun bm!38095 () Bool)

(declare-fun <>!36 (Conc!1595 Conc!1595) Conc!1595)

(assert (=> bm!38095 (= call!38104 (<>!36 (ite c!101004 (c!100955 (BalanceConc!3199 Empty!1595)) (ite c!101009 (ite c!101005 (left!4200 (c!100955 (BalanceConc!3199 Empty!1595))) call!38100) (ite c!101006 lt!217633 (right!4530 (left!4200 (c!100955 (_1!3259 lt!217598))))))) (ite c!101004 (c!100955 (_1!3259 lt!217598)) (ite c!101009 (ite c!101005 call!38100 lt!217636) (ite c!101006 (right!4530 (left!4200 (c!100955 (_1!3259 lt!217598)))) (right!4530 (c!100955 (_1!3259 lt!217598))))))))))

(declare-fun b!525626 () Bool)

(assert (=> b!525626 (= e!315668 call!38104)))

(declare-fun b!525627 () Bool)

(assert (=> b!525627 (= e!315664 e!315663)))

(declare-fun call!38096 () Conc!1595)

(assert (=> b!525627 (= lt!217633 call!38096)))

(assert (=> b!525627 (= c!101006 (= call!38093 (- call!38099 3)))))

(declare-fun b!525628 () Bool)

(assert (=> b!525628 (= e!315669 call!38092)))

(declare-fun bm!38096 () Bool)

(assert (=> bm!38096 (= call!38094 call!38104)))

(declare-fun bm!38097 () Bool)

(assert (=> bm!38097 (= call!38089 call!38095)))

(declare-fun bm!38098 () Bool)

(assert (=> bm!38098 (= call!38096 call!38095)))

(declare-fun b!525629 () Bool)

(assert (=> b!525629 (= e!315663 call!38103)))

(declare-fun bm!38099 () Bool)

(assert (=> bm!38099 (= call!38097 (<>!36 (ite c!101009 (ite c!101010 (left!4200 (c!100955 (BalanceConc!3199 Empty!1595))) (ite c!101005 (left!4200 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595)))) (left!4200 (c!100955 (BalanceConc!3199 Empty!1595))))) (ite c!101007 call!38096 (ite c!101006 call!38101 lt!217633))) (ite c!101009 (ite c!101010 call!38089 (ite c!101005 lt!217636 (left!4200 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595)))))) (ite (or c!101007 c!101006) (right!4530 (c!100955 (_1!3259 lt!217598))) call!38101))))))

(declare-fun b!525630 () Bool)

(assert (=> b!525630 (= e!315665 (c!100955 (_1!3259 lt!217598)))))

(assert (= (and d!187348 res!222501) b!525610))

(assert (= (and d!187348 c!101008) b!525630))

(assert (= (and d!187348 (not c!101008)) b!525618))

(assert (= (and b!525618 c!101003) b!525615))

(assert (= (and b!525618 (not c!101003)) b!525617))

(assert (= (and b!525617 c!101004) b!525626))

(assert (= (and b!525617 (not c!101004)) b!525611))

(assert (= (and b!525611 c!101009) b!525624))

(assert (= (and b!525611 (not c!101009)) b!525612))

(assert (= (and b!525624 c!101010) b!525621))

(assert (= (and b!525624 (not c!101010)) b!525614))

(assert (= (and b!525614 c!101005) b!525628))

(assert (= (and b!525614 (not c!101005)) b!525623))

(assert (= (or b!525628 b!525623) bm!38091))

(assert (= (or b!525628 b!525623) bm!38087))

(assert (= (or b!525621 b!525614) bm!38097))

(assert (= (or b!525621 bm!38091) bm!38085))

(assert (= (and b!525612 c!101007) b!525613))

(assert (= (and b!525612 (not c!101007)) b!525627))

(assert (= (and b!525627 c!101006) b!525629))

(assert (= (and b!525627 (not c!101006)) b!525620))

(assert (= (or b!525629 b!525620) bm!38092))

(assert (= (or b!525629 b!525620) bm!38094))

(assert (= (or b!525613 b!525627) bm!38098))

(assert (= (or b!525613 bm!38094) bm!38093))

(assert (= (or b!525614 b!525612) bm!38084))

(assert (= (or bm!38097 bm!38098) bm!38089))

(assert (= (or bm!38085 bm!38093) bm!38099))

(assert (= (or b!525624 b!525627) bm!38086))

(assert (= (or b!525614 b!525612) bm!38088))

(assert (= (or bm!38087 bm!38092) bm!38096))

(assert (= (or b!525624 b!525627) bm!38090))

(assert (= (or b!525626 bm!38096) bm!38095))

(assert (= (and d!187348 res!222499) b!525625))

(assert (= (and b!525625 res!222500) b!525622))

(assert (= (and b!525622 res!222497) b!525616))

(assert (= (and b!525616 res!222498) b!525619))

(declare-fun m!771647 () Bool)

(assert (=> b!525610 m!771647))

(declare-fun m!771649 () Bool)

(assert (=> b!525619 m!771649))

(assert (=> b!525619 m!771450))

(assert (=> b!525619 m!771372))

(assert (=> b!525619 m!771450))

(assert (=> b!525619 m!771372))

(declare-fun m!771651 () Bool)

(assert (=> b!525619 m!771651))

(assert (=> b!525617 m!771382))

(assert (=> b!525617 m!771380))

(assert (=> d!187348 m!771390))

(declare-fun m!771653 () Bool)

(assert (=> d!187348 m!771653))

(declare-fun m!771655 () Bool)

(assert (=> b!525625 m!771655))

(declare-fun m!771657 () Bool)

(assert (=> b!525616 m!771657))

(assert (=> b!525616 m!771380))

(assert (=> b!525616 m!771382))

(assert (=> b!525616 m!771380))

(assert (=> b!525616 m!771382))

(assert (=> b!525616 m!771384))

(declare-fun m!771659 () Bool)

(assert (=> bm!38086 m!771659))

(declare-fun m!771661 () Bool)

(assert (=> bm!38089 m!771661))

(declare-fun m!771663 () Bool)

(assert (=> bm!38099 m!771663))

(declare-fun m!771665 () Bool)

(assert (=> bm!38090 m!771665))

(declare-fun m!771667 () Bool)

(assert (=> bm!38088 m!771667))

(declare-fun m!771669 () Bool)

(assert (=> bm!38095 m!771669))

(assert (=> b!525622 m!771657))

(assert (=> b!525622 m!771380))

(assert (=> b!525622 m!771382))

(assert (=> b!525622 m!771380))

(assert (=> b!525622 m!771382))

(assert (=> b!525622 m!771384))

(declare-fun m!771671 () Bool)

(assert (=> bm!38084 m!771671))

(assert (=> b!525302 d!187348))

(declare-fun d!187350 () Bool)

(assert (=> d!187350 (= (max!0 (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (height!249 (c!100955 (_1!3259 lt!217598)))) (ite (< (height!249 (c!100955 (BalanceConc!3199 Empty!1595))) (height!249 (c!100955 (_1!3259 lt!217598)))) (height!249 (c!100955 (_1!3259 lt!217598))) (height!249 (c!100955 (BalanceConc!3199 Empty!1595)))))))

(assert (=> b!525302 d!187350))

(declare-fun bs!65603 () Bool)

(declare-fun d!187352 () Bool)

(assert (= bs!65603 (and d!187352 d!187328)))

(declare-fun lambda!15202 () Int)

(assert (=> bs!65603 (= lambda!15202 lambda!15201)))

(declare-fun bs!65604 () Bool)

(assert (= bs!65604 (and d!187352 d!187310)))

(assert (=> bs!65604 (= lambda!15202 lambda!15193)))

(declare-fun bs!65605 () Bool)

(assert (= bs!65605 (and d!187352 d!187312)))

(assert (=> bs!65605 (= lambda!15202 lambda!15194)))

(declare-fun bs!65606 () Bool)

(assert (= bs!65606 (and d!187352 d!187320)))

(assert (=> bs!65606 (= lambda!15202 lambda!15199)))

(declare-fun bs!65607 () Bool)

(assert (= bs!65607 (and d!187352 d!187318)))

(assert (=> bs!65607 (= lambda!15202 lambda!15198)))

(declare-fun bs!65608 () Bool)

(assert (= bs!65608 (and d!187352 d!187322)))

(assert (=> bs!65608 (= lambda!15202 lambda!15200)))

(declare-fun bs!65609 () Bool)

(assert (= bs!65609 (and d!187352 d!187304)))

(assert (=> bs!65609 (= lambda!15202 lambda!15192)))

(assert (=> d!187352 (= (inv!6177 (_1!3255 (_1!3256 (h!10304 mapDefault!2234)))) (forall!1485 (exprs!649 (_1!3255 (_1!3256 (h!10304 mapDefault!2234)))) lambda!15202))))

(declare-fun bs!65610 () Bool)

(assert (= bs!65610 d!187352))

(declare-fun m!771673 () Bool)

(assert (=> bs!65610 m!771673))

(assert (=> b!525470 d!187352))

(declare-fun d!187354 () Bool)

(declare-fun lt!217637 () Bool)

(assert (=> d!187354 (= lt!217637 (isEmpty!3600 (list!2054 (_1!3259 lt!217615))))))

(assert (=> d!187354 (= lt!217637 (isEmpty!3601 (c!100955 (_1!3259 lt!217615))))))

(assert (=> d!187354 (= (isEmpty!3599 (_1!3259 lt!217615)) lt!217637)))

(declare-fun bs!65611 () Bool)

(assert (= bs!65611 d!187354))

(assert (=> bs!65611 m!771460))

(assert (=> bs!65611 m!771460))

(declare-fun m!771675 () Bool)

(assert (=> bs!65611 m!771675))

(declare-fun m!771677 () Bool)

(assert (=> bs!65611 m!771677))

(assert (=> b!525362 d!187354))

(declare-fun b!525649 () Bool)

(declare-fun e!315696 () Bool)

(declare-fun e!315691 () Bool)

(assert (=> b!525649 (= e!315696 e!315691)))

(declare-fun res!222526 () Bool)

(assert (=> b!525649 (=> (not res!222526) (not e!315691))))

(declare-fun appendAssoc!30 (List!4917 List!4917 List!4917) Bool)

(assert (=> b!525649 (= res!222526 (appendAssoc!30 (list!2057 (c!100955 (BalanceConc!3199 Empty!1595))) (list!2057 (left!4200 (left!4200 (c!100955 (_1!3259 lt!217598))))) (list!2057 (right!4530 (left!4200 (c!100955 (_1!3259 lt!217598)))))))))

(declare-fun b!525650 () Bool)

(declare-fun e!315693 () Bool)

(declare-fun e!315695 () Bool)

(assert (=> b!525650 (= e!315693 e!315695)))

(declare-fun res!222522 () Bool)

(assert (=> b!525650 (=> (not res!222522) (not e!315695))))

(assert (=> b!525650 (= res!222522 (appendAssoc!30 (list!2057 (left!4200 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))) (list!2057 (right!4530 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))) (list!2057 (c!100955 (_1!3259 lt!217598)))))))

(declare-fun b!525651 () Bool)

(assert (=> b!525651 (= e!315691 (appendAssoc!30 (++!1375 (list!2057 (c!100955 (BalanceConc!3199 Empty!1595))) (list!2057 (left!4200 (left!4200 (c!100955 (_1!3259 lt!217598)))))) (list!2057 (right!4530 (left!4200 (c!100955 (_1!3259 lt!217598))))) (list!2057 (right!4530 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun b!525652 () Bool)

(declare-fun e!315690 () Bool)

(assert (=> b!525652 (= e!315690 e!315696)))

(declare-fun res!222520 () Bool)

(assert (=> b!525652 (=> res!222520 e!315696)))

(assert (=> b!525652 (= res!222520 (not ((_ is Node!1595) (left!4200 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun b!525653 () Bool)

(declare-fun e!315698 () Bool)

(assert (=> b!525653 (= e!315698 e!315693)))

(declare-fun res!222525 () Bool)

(assert (=> b!525653 (=> res!222525 e!315693)))

(assert (=> b!525653 (= res!222525 (not ((_ is Node!1595) (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))))))

(declare-fun b!525654 () Bool)

(declare-fun e!315694 () Bool)

(declare-fun e!315692 () Bool)

(assert (=> b!525654 (= e!315694 e!315692)))

(declare-fun res!222528 () Bool)

(assert (=> b!525654 (=> res!222528 e!315692)))

(assert (=> b!525654 (= res!222528 (not ((_ is Node!1595) (c!100955 (_1!3259 lt!217598)))))))

(declare-fun b!525655 () Bool)

(assert (=> b!525655 (= e!315692 e!315690)))

(declare-fun res!222527 () Bool)

(assert (=> b!525655 (=> (not res!222527) (not e!315690))))

(assert (=> b!525655 (= res!222527 (appendAssoc!30 (list!2057 (c!100955 (BalanceConc!3199 Empty!1595))) (list!2057 (left!4200 (c!100955 (_1!3259 lt!217598)))) (list!2057 (right!4530 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun b!525656 () Bool)

(assert (=> b!525656 (= e!315695 (appendAssoc!30 (list!2057 (left!4200 (c!100955 (BalanceConc!3199 Empty!1595)))) (list!2057 (left!4200 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))) (++!1375 (list!2057 (right!4530 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))) (list!2057 (c!100955 (_1!3259 lt!217598))))))))

(declare-fun d!187356 () Bool)

(assert (=> d!187356 e!315694))

(declare-fun res!222523 () Bool)

(assert (=> d!187356 (=> (not res!222523) (not e!315694))))

(declare-fun e!315697 () Bool)

(assert (=> d!187356 (= res!222523 e!315697)))

(declare-fun res!222524 () Bool)

(assert (=> d!187356 (=> res!222524 e!315697)))

(assert (=> d!187356 (= res!222524 (not ((_ is Node!1595) (c!100955 (BalanceConc!3199 Empty!1595)))))))

(assert (=> d!187356 (= (appendAssocInst!108 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))) true)))

(declare-fun b!525657 () Bool)

(assert (=> b!525657 (= e!315697 e!315698)))

(declare-fun res!222521 () Bool)

(assert (=> b!525657 (=> (not res!222521) (not e!315698))))

(assert (=> b!525657 (= res!222521 (appendAssoc!30 (list!2057 (left!4200 (c!100955 (BalanceConc!3199 Empty!1595)))) (list!2057 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595)))) (list!2057 (c!100955 (_1!3259 lt!217598)))))))

(assert (= (and d!187356 (not res!222524)) b!525657))

(assert (= (and b!525657 res!222521) b!525653))

(assert (= (and b!525653 (not res!222525)) b!525650))

(assert (= (and b!525650 res!222522) b!525656))

(assert (= (and d!187356 res!222523) b!525654))

(assert (= (and b!525654 (not res!222528)) b!525655))

(assert (= (and b!525655 res!222527) b!525652))

(assert (= (and b!525652 (not res!222520)) b!525649))

(assert (= (and b!525649 res!222526) b!525651))

(assert (=> b!525649 m!771450))

(declare-fun m!771679 () Bool)

(assert (=> b!525649 m!771679))

(declare-fun m!771681 () Bool)

(assert (=> b!525649 m!771681))

(assert (=> b!525649 m!771450))

(assert (=> b!525649 m!771679))

(assert (=> b!525649 m!771681))

(declare-fun m!771683 () Bool)

(assert (=> b!525649 m!771683))

(declare-fun m!771685 () Bool)

(assert (=> b!525657 m!771685))

(declare-fun m!771687 () Bool)

(assert (=> b!525657 m!771687))

(assert (=> b!525657 m!771372))

(assert (=> b!525657 m!771685))

(assert (=> b!525657 m!771687))

(assert (=> b!525657 m!771372))

(declare-fun m!771689 () Bool)

(assert (=> b!525657 m!771689))

(assert (=> b!525656 m!771372))

(assert (=> b!525656 m!771685))

(declare-fun m!771691 () Bool)

(assert (=> b!525656 m!771691))

(declare-fun m!771693 () Bool)

(assert (=> b!525656 m!771693))

(declare-fun m!771695 () Bool)

(assert (=> b!525656 m!771695))

(assert (=> b!525656 m!771685))

(declare-fun m!771697 () Bool)

(assert (=> b!525656 m!771697))

(assert (=> b!525656 m!771372))

(assert (=> b!525656 m!771693))

(assert (=> b!525656 m!771697))

(assert (=> b!525656 m!771691))

(assert (=> b!525650 m!771691))

(assert (=> b!525650 m!771697))

(assert (=> b!525650 m!771372))

(assert (=> b!525650 m!771691))

(assert (=> b!525650 m!771697))

(assert (=> b!525650 m!771372))

(declare-fun m!771699 () Bool)

(assert (=> b!525650 m!771699))

(assert (=> b!525651 m!771450))

(assert (=> b!525651 m!771679))

(declare-fun m!771701 () Bool)

(assert (=> b!525651 m!771701))

(assert (=> b!525651 m!771681))

(assert (=> b!525651 m!771679))

(assert (=> b!525651 m!771584))

(assert (=> b!525651 m!771450))

(assert (=> b!525651 m!771701))

(assert (=> b!525651 m!771681))

(assert (=> b!525651 m!771584))

(declare-fun m!771703 () Bool)

(assert (=> b!525651 m!771703))

(assert (=> b!525655 m!771450))

(assert (=> b!525655 m!771582))

(assert (=> b!525655 m!771584))

(assert (=> b!525655 m!771450))

(assert (=> b!525655 m!771582))

(assert (=> b!525655 m!771584))

(declare-fun m!771705 () Bool)

(assert (=> b!525655 m!771705))

(assert (=> d!187256 d!187356))

(assert (=> d!187256 d!187348))

(declare-fun d!187358 () Bool)

(declare-fun lt!217638 () Int)

(assert (=> d!187358 (= lt!217638 (size!4006 (list!2055 (_2!3259 lt!217615))))))

(assert (=> d!187358 (= lt!217638 (size!4007 (c!100954 (_2!3259 lt!217615))))))

(assert (=> d!187358 (= (size!4005 (_2!3259 lt!217615)) lt!217638)))

(declare-fun bs!65612 () Bool)

(assert (= bs!65612 d!187358))

(assert (=> bs!65612 m!771454))

(assert (=> bs!65612 m!771454))

(declare-fun m!771707 () Bool)

(assert (=> bs!65612 m!771707))

(declare-fun m!771709 () Bool)

(assert (=> bs!65612 m!771709))

(assert (=> b!525364 d!187358))

(declare-fun d!187360 () Bool)

(declare-fun lt!217639 () Int)

(assert (=> d!187360 (= lt!217639 (size!4006 (list!2055 (BalanceConc!3197 Empty!1594))))))

(assert (=> d!187360 (= lt!217639 (size!4007 (c!100954 (BalanceConc!3197 Empty!1594))))))

(assert (=> d!187360 (= (size!4005 (BalanceConc!3197 Empty!1594)) lt!217639)))

(declare-fun bs!65613 () Bool)

(assert (= bs!65613 d!187360))

(assert (=> bs!65613 m!771322))

(assert (=> bs!65613 m!771322))

(declare-fun m!771711 () Bool)

(assert (=> bs!65613 m!771711))

(declare-fun m!771713 () Bool)

(assert (=> bs!65613 m!771713))

(assert (=> b!525364 d!187360))

(declare-fun bs!65614 () Bool)

(declare-fun d!187362 () Bool)

(assert (= bs!65614 (and d!187362 d!187328)))

(declare-fun lambda!15203 () Int)

(assert (=> bs!65614 (= lambda!15203 lambda!15201)))

(declare-fun bs!65615 () Bool)

(assert (= bs!65615 (and d!187362 d!187310)))

(assert (=> bs!65615 (= lambda!15203 lambda!15193)))

(declare-fun bs!65616 () Bool)

(assert (= bs!65616 (and d!187362 d!187312)))

(assert (=> bs!65616 (= lambda!15203 lambda!15194)))

(declare-fun bs!65617 () Bool)

(assert (= bs!65617 (and d!187362 d!187320)))

(assert (=> bs!65617 (= lambda!15203 lambda!15199)))

(declare-fun bs!65618 () Bool)

(assert (= bs!65618 (and d!187362 d!187352)))

(assert (=> bs!65618 (= lambda!15203 lambda!15202)))

(declare-fun bs!65619 () Bool)

(assert (= bs!65619 (and d!187362 d!187318)))

(assert (=> bs!65619 (= lambda!15203 lambda!15198)))

(declare-fun bs!65620 () Bool)

(assert (= bs!65620 (and d!187362 d!187322)))

(assert (=> bs!65620 (= lambda!15203 lambda!15200)))

(declare-fun bs!65621 () Bool)

(assert (= bs!65621 (and d!187362 d!187304)))

(assert (=> bs!65621 (= lambda!15203 lambda!15192)))

(assert (=> d!187362 (= (inv!6177 (_1!3255 (_1!3256 (h!10304 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))) (forall!1485 (exprs!649 (_1!3255 (_1!3256 (h!10304 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))) lambda!15203))))

(declare-fun bs!65622 () Bool)

(assert (= bs!65622 d!187362))

(declare-fun m!771715 () Bool)

(assert (=> bs!65622 m!771715))

(assert (=> b!525405 d!187362))

(declare-fun d!187364 () Bool)

(assert (=> d!187364 (= (list!2054 (_1!3259 lt!217609)) (list!2057 (c!100955 (_1!3259 lt!217609))))))

(declare-fun bs!65623 () Bool)

(assert (= bs!65623 d!187364))

(declare-fun m!771717 () Bool)

(assert (=> bs!65623 m!771717))

(assert (=> b!525325 d!187364))

(declare-fun d!187366 () Bool)

(declare-fun e!315706 () Bool)

(assert (=> d!187366 e!315706))

(declare-fun c!101016 () Bool)

(declare-fun lt!217646 () tuple2!6050)

(declare-fun size!4008 (List!4917) Int)

(assert (=> d!187366 (= c!101016 (> (size!4008 (_1!3261 lt!217646)) 0))))

(declare-fun e!315705 () tuple2!6050)

(assert (=> d!187366 (= lt!217646 e!315705)))

(declare-fun c!101015 () Bool)

(declare-datatypes ((tuple2!6052 0))(
  ( (tuple2!6053 (_1!3262 Token!1510) (_2!3262 List!4910)) )
))
(declare-datatypes ((Option!1247 0))(
  ( (None!1246) (Some!1246 (v!15987 tuple2!6052)) )
))
(declare-fun lt!217648 () Option!1247)

(assert (=> d!187366 (= c!101015 ((_ is Some!1246) lt!217648))))

(declare-fun maxPrefix!482 (LexerInterface!772 List!4916 List!4910) Option!1247)

(assert (=> d!187366 (= lt!217648 (maxPrefix!482 thiss!12147 rules!1345 (list!2055 input!747)))))

(assert (=> d!187366 (= (lexList!304 thiss!12147 rules!1345 (list!2055 input!747)) lt!217646)))

(declare-fun b!525668 () Bool)

(assert (=> b!525668 (= e!315706 (= (_2!3261 lt!217646) (list!2055 input!747)))))

(declare-fun b!525669 () Bool)

(assert (=> b!525669 (= e!315705 (tuple2!6051 Nil!4907 (list!2055 input!747)))))

(declare-fun b!525670 () Bool)

(declare-fun e!315707 () Bool)

(assert (=> b!525670 (= e!315706 e!315707)))

(declare-fun res!222531 () Bool)

(assert (=> b!525670 (= res!222531 (< (size!4006 (_2!3261 lt!217646)) (size!4006 (list!2055 input!747))))))

(assert (=> b!525670 (=> (not res!222531) (not e!315707))))

(declare-fun b!525671 () Bool)

(assert (=> b!525671 (= e!315707 (not (isEmpty!3600 (_1!3261 lt!217646))))))

(declare-fun b!525672 () Bool)

(declare-fun lt!217647 () tuple2!6050)

(assert (=> b!525672 (= e!315705 (tuple2!6051 (Cons!4907 (_1!3262 (v!15987 lt!217648)) (_1!3261 lt!217647)) (_2!3261 lt!217647)))))

(assert (=> b!525672 (= lt!217647 (lexList!304 thiss!12147 rules!1345 (_2!3262 (v!15987 lt!217648))))))

(assert (= (and d!187366 c!101015) b!525672))

(assert (= (and d!187366 (not c!101015)) b!525669))

(assert (= (and d!187366 c!101016) b!525670))

(assert (= (and d!187366 (not c!101016)) b!525668))

(assert (= (and b!525670 res!222531) b!525671))

(declare-fun m!771719 () Bool)

(assert (=> d!187366 m!771719))

(assert (=> d!187366 m!771320))

(declare-fun m!771721 () Bool)

(assert (=> d!187366 m!771721))

(declare-fun m!771723 () Bool)

(assert (=> b!525670 m!771723))

(assert (=> b!525670 m!771320))

(assert (=> b!525670 m!771627))

(declare-fun m!771725 () Bool)

(assert (=> b!525671 m!771725))

(declare-fun m!771727 () Bool)

(assert (=> b!525672 m!771727))

(assert (=> b!525325 d!187366))

(assert (=> b!525325 d!187282))

(declare-fun bs!65624 () Bool)

(declare-fun d!187368 () Bool)

(assert (= bs!65624 (and d!187368 d!187328)))

(declare-fun lambda!15204 () Int)

(assert (=> bs!65624 (= lambda!15204 lambda!15201)))

(declare-fun bs!65625 () Bool)

(assert (= bs!65625 (and d!187368 d!187310)))

(assert (=> bs!65625 (= lambda!15204 lambda!15193)))

(declare-fun bs!65626 () Bool)

(assert (= bs!65626 (and d!187368 d!187362)))

(assert (=> bs!65626 (= lambda!15204 lambda!15203)))

(declare-fun bs!65627 () Bool)

(assert (= bs!65627 (and d!187368 d!187312)))

(assert (=> bs!65627 (= lambda!15204 lambda!15194)))

(declare-fun bs!65628 () Bool)

(assert (= bs!65628 (and d!187368 d!187320)))

(assert (=> bs!65628 (= lambda!15204 lambda!15199)))

(declare-fun bs!65629 () Bool)

(assert (= bs!65629 (and d!187368 d!187352)))

(assert (=> bs!65629 (= lambda!15204 lambda!15202)))

(declare-fun bs!65630 () Bool)

(assert (= bs!65630 (and d!187368 d!187318)))

(assert (=> bs!65630 (= lambda!15204 lambda!15198)))

(declare-fun bs!65631 () Bool)

(assert (= bs!65631 (and d!187368 d!187322)))

(assert (=> bs!65631 (= lambda!15204 lambda!15200)))

(declare-fun bs!65632 () Bool)

(assert (= bs!65632 (and d!187368 d!187304)))

(assert (=> bs!65632 (= lambda!15204 lambda!15192)))

(assert (=> d!187368 (= (inv!6177 setElem!2452) (forall!1485 (exprs!649 setElem!2452) lambda!15204))))

(declare-fun bs!65633 () Bool)

(assert (= bs!65633 d!187368))

(declare-fun m!771729 () Bool)

(assert (=> bs!65633 m!771729))

(assert (=> setNonEmpty!2452 d!187368))

(assert (=> b!525303 d!187342))

(assert (=> b!525303 d!187344))

(assert (=> b!525303 d!187346))

(assert (=> b!525303 d!187348))

(assert (=> b!525303 d!187350))

(assert (=> b!525258 d!187276))

(declare-fun d!187370 () Bool)

(assert (=> d!187370 (= (inv!6178 (xs!4229 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) (<= (size!4006 (innerList!1652 (xs!4229 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) 2147483647))))

(declare-fun bs!65634 () Bool)

(assert (= bs!65634 d!187370))

(declare-fun m!771731 () Bool)

(assert (=> bs!65634 m!771731))

(assert (=> b!525448 d!187370))

(declare-fun d!187372 () Bool)

(declare-fun lt!217651 () Int)

(assert (=> d!187372 (>= lt!217651 0)))

(declare-fun e!315710 () Int)

(assert (=> d!187372 (= lt!217651 e!315710)))

(declare-fun c!101019 () Bool)

(assert (=> d!187372 (= c!101019 ((_ is Nil!4900) lt!217614))))

(assert (=> d!187372 (= (size!4006 lt!217614) lt!217651)))

(declare-fun b!525677 () Bool)

(assert (=> b!525677 (= e!315710 0)))

(declare-fun b!525678 () Bool)

(assert (=> b!525678 (= e!315710 (+ 1 (size!4006 (t!73515 lt!217614))))))

(assert (= (and d!187372 c!101019) b!525677))

(assert (= (and d!187372 (not c!101019)) b!525678))

(declare-fun m!771733 () Bool)

(assert (=> b!525678 m!771733))

(assert (=> b!525357 d!187372))

(declare-fun d!187374 () Bool)

(declare-fun lt!217652 () Int)

(assert (=> d!187374 (>= lt!217652 0)))

(declare-fun e!315711 () Int)

(assert (=> d!187374 (= lt!217652 e!315711)))

(declare-fun c!101020 () Bool)

(assert (=> d!187374 (= c!101020 ((_ is Nil!4900) lt!217593))))

(assert (=> d!187374 (= (size!4006 lt!217593) lt!217652)))

(declare-fun b!525679 () Bool)

(assert (=> b!525679 (= e!315711 0)))

(declare-fun b!525680 () Bool)

(assert (=> b!525680 (= e!315711 (+ 1 (size!4006 (t!73515 lt!217593))))))

(assert (= (and d!187374 c!101020) b!525679))

(assert (= (and d!187374 (not c!101020)) b!525680))

(declare-fun m!771735 () Bool)

(assert (=> b!525680 m!771735))

(assert (=> b!525357 d!187374))

(declare-fun d!187376 () Bool)

(declare-fun lt!217653 () Int)

(assert (=> d!187376 (>= lt!217653 0)))

(declare-fun e!315712 () Int)

(assert (=> d!187376 (= lt!217653 e!315712)))

(declare-fun c!101021 () Bool)

(assert (=> d!187376 (= c!101021 ((_ is Nil!4900) lt!217599))))

(assert (=> d!187376 (= (size!4006 lt!217599) lt!217653)))

(declare-fun b!525681 () Bool)

(assert (=> b!525681 (= e!315712 0)))

(declare-fun b!525682 () Bool)

(assert (=> b!525682 (= e!315712 (+ 1 (size!4006 (t!73515 lt!217599))))))

(assert (= (and d!187376 c!101021) b!525681))

(assert (= (and d!187376 (not c!101021)) b!525682))

(declare-fun m!771737 () Bool)

(assert (=> b!525682 m!771737))

(assert (=> b!525357 d!187376))

(declare-fun d!187378 () Bool)

(assert (=> d!187378 true))

(declare-fun lambda!15207 () Int)

(declare-fun order!4371 () Int)

(declare-fun order!4373 () Int)

(declare-fun dynLambda!3029 (Int Int) Int)

(declare-fun dynLambda!3030 (Int Int) Int)

(assert (=> d!187378 (< (dynLambda!3029 order!4371 (toValue!1719 (transformation!886 (h!10307 rules!1345)))) (dynLambda!3030 order!4373 lambda!15207))))

(declare-fun Forall2!196 (Int) Bool)

(assert (=> d!187378 (= (equivClasses!338 (toChars!1578 (transformation!886 (h!10307 rules!1345))) (toValue!1719 (transformation!886 (h!10307 rules!1345)))) (Forall2!196 lambda!15207))))

(declare-fun bs!65635 () Bool)

(assert (= bs!65635 d!187378))

(declare-fun m!771739 () Bool)

(assert (=> bs!65635 m!771739))

(assert (=> b!525368 d!187378))

(declare-fun d!187380 () Bool)

(declare-fun res!222538 () Bool)

(declare-fun e!315717 () Bool)

(assert (=> d!187380 (=> (not res!222538) (not e!315717))))

(declare-fun valid!555 (MutableMap!542) Bool)

(assert (=> d!187380 (= res!222538 (valid!555 (cache!929 cacheUp!449)))))

(assert (=> d!187380 (= (validCacheMapUp!36 (cache!929 cacheUp!449)) e!315717)))

(declare-fun b!525691 () Bool)

(declare-fun res!222539 () Bool)

(assert (=> b!525691 (=> (not res!222539) (not e!315717))))

(declare-fun invariantList!99 (List!4913) Bool)

(declare-datatypes ((ListMap!247 0))(
  ( (ListMap!248 (toList!460 List!4913)) )
))
(declare-fun map!1130 (MutableMap!542) ListMap!247)

(assert (=> b!525691 (= res!222539 (invariantList!99 (toList!460 (map!1130 (cache!929 cacheUp!449)))))))

(declare-fun b!525692 () Bool)

(declare-fun lambda!15210 () Int)

(declare-fun forall!1487 (List!4913 Int) Bool)

(assert (=> b!525692 (= e!315717 (forall!1487 (toList!460 (map!1130 (cache!929 cacheUp!449))) lambda!15210))))

(assert (= (and d!187380 res!222538) b!525691))

(assert (= (and b!525691 res!222539) b!525692))

(declare-fun m!771742 () Bool)

(assert (=> d!187380 m!771742))

(declare-fun m!771744 () Bool)

(assert (=> b!525691 m!771744))

(declare-fun m!771746 () Bool)

(assert (=> b!525691 m!771746))

(assert (=> b!525692 m!771744))

(declare-fun m!771748 () Bool)

(assert (=> b!525692 m!771748))

(assert (=> b!525334 d!187380))

(declare-fun bs!65636 () Bool)

(declare-fun d!187382 () Bool)

(assert (= bs!65636 (and d!187382 d!187328)))

(declare-fun lambda!15211 () Int)

(assert (=> bs!65636 (= lambda!15211 lambda!15201)))

(declare-fun bs!65637 () Bool)

(assert (= bs!65637 (and d!187382 d!187310)))

(assert (=> bs!65637 (= lambda!15211 lambda!15193)))

(declare-fun bs!65638 () Bool)

(assert (= bs!65638 (and d!187382 d!187362)))

(assert (=> bs!65638 (= lambda!15211 lambda!15203)))

(declare-fun bs!65639 () Bool)

(assert (= bs!65639 (and d!187382 d!187320)))

(assert (=> bs!65639 (= lambda!15211 lambda!15199)))

(declare-fun bs!65640 () Bool)

(assert (= bs!65640 (and d!187382 d!187352)))

(assert (=> bs!65640 (= lambda!15211 lambda!15202)))

(declare-fun bs!65641 () Bool)

(assert (= bs!65641 (and d!187382 d!187318)))

(assert (=> bs!65641 (= lambda!15211 lambda!15198)))

(declare-fun bs!65642 () Bool)

(assert (= bs!65642 (and d!187382 d!187322)))

(assert (=> bs!65642 (= lambda!15211 lambda!15200)))

(declare-fun bs!65643 () Bool)

(assert (= bs!65643 (and d!187382 d!187304)))

(assert (=> bs!65643 (= lambda!15211 lambda!15192)))

(declare-fun bs!65644 () Bool)

(assert (= bs!65644 (and d!187382 d!187312)))

(assert (=> bs!65644 (= lambda!15211 lambda!15194)))

(declare-fun bs!65645 () Bool)

(assert (= bs!65645 (and d!187382 d!187368)))

(assert (=> bs!65645 (= lambda!15211 lambda!15204)))

(assert (=> d!187382 (= (inv!6177 setElem!2453) (forall!1485 (exprs!649 setElem!2453) lambda!15211))))

(declare-fun bs!65646 () Bool)

(assert (= bs!65646 d!187382))

(declare-fun m!771750 () Bool)

(assert (=> bs!65646 m!771750))

(assert (=> setNonEmpty!2453 d!187382))

(declare-fun bs!65647 () Bool)

(declare-fun d!187384 () Bool)

(assert (= bs!65647 (and d!187384 d!187382)))

(declare-fun lambda!15212 () Int)

(assert (=> bs!65647 (= lambda!15212 lambda!15211)))

(declare-fun bs!65648 () Bool)

(assert (= bs!65648 (and d!187384 d!187328)))

(assert (=> bs!65648 (= lambda!15212 lambda!15201)))

(declare-fun bs!65649 () Bool)

(assert (= bs!65649 (and d!187384 d!187310)))

(assert (=> bs!65649 (= lambda!15212 lambda!15193)))

(declare-fun bs!65650 () Bool)

(assert (= bs!65650 (and d!187384 d!187362)))

(assert (=> bs!65650 (= lambda!15212 lambda!15203)))

(declare-fun bs!65651 () Bool)

(assert (= bs!65651 (and d!187384 d!187320)))

(assert (=> bs!65651 (= lambda!15212 lambda!15199)))

(declare-fun bs!65652 () Bool)

(assert (= bs!65652 (and d!187384 d!187352)))

(assert (=> bs!65652 (= lambda!15212 lambda!15202)))

(declare-fun bs!65653 () Bool)

(assert (= bs!65653 (and d!187384 d!187318)))

(assert (=> bs!65653 (= lambda!15212 lambda!15198)))

(declare-fun bs!65654 () Bool)

(assert (= bs!65654 (and d!187384 d!187322)))

(assert (=> bs!65654 (= lambda!15212 lambda!15200)))

(declare-fun bs!65655 () Bool)

(assert (= bs!65655 (and d!187384 d!187304)))

(assert (=> bs!65655 (= lambda!15212 lambda!15192)))

(declare-fun bs!65656 () Bool)

(assert (= bs!65656 (and d!187384 d!187312)))

(assert (=> bs!65656 (= lambda!15212 lambda!15194)))

(declare-fun bs!65657 () Bool)

(assert (= bs!65657 (and d!187384 d!187368)))

(assert (=> bs!65657 (= lambda!15212 lambda!15204)))

(assert (=> d!187384 (= (inv!6177 setElem!2430) (forall!1485 (exprs!649 setElem!2430) lambda!15212))))

(declare-fun bs!65658 () Bool)

(assert (= bs!65658 d!187384))

(declare-fun m!771752 () Bool)

(assert (=> bs!65658 m!771752))

(assert (=> setNonEmpty!2430 d!187384))

(declare-fun bs!65659 () Bool)

(declare-fun d!187386 () Bool)

(assert (= bs!65659 (and d!187386 d!187382)))

(declare-fun lambda!15213 () Int)

(assert (=> bs!65659 (= lambda!15213 lambda!15211)))

(declare-fun bs!65660 () Bool)

(assert (= bs!65660 (and d!187386 d!187328)))

(assert (=> bs!65660 (= lambda!15213 lambda!15201)))

(declare-fun bs!65661 () Bool)

(assert (= bs!65661 (and d!187386 d!187310)))

(assert (=> bs!65661 (= lambda!15213 lambda!15193)))

(declare-fun bs!65662 () Bool)

(assert (= bs!65662 (and d!187386 d!187320)))

(assert (=> bs!65662 (= lambda!15213 lambda!15199)))

(declare-fun bs!65663 () Bool)

(assert (= bs!65663 (and d!187386 d!187352)))

(assert (=> bs!65663 (= lambda!15213 lambda!15202)))

(declare-fun bs!65664 () Bool)

(assert (= bs!65664 (and d!187386 d!187318)))

(assert (=> bs!65664 (= lambda!15213 lambda!15198)))

(declare-fun bs!65665 () Bool)

(assert (= bs!65665 (and d!187386 d!187322)))

(assert (=> bs!65665 (= lambda!15213 lambda!15200)))

(declare-fun bs!65666 () Bool)

(assert (= bs!65666 (and d!187386 d!187304)))

(assert (=> bs!65666 (= lambda!15213 lambda!15192)))

(declare-fun bs!65667 () Bool)

(assert (= bs!65667 (and d!187386 d!187384)))

(assert (=> bs!65667 (= lambda!15213 lambda!15212)))

(declare-fun bs!65668 () Bool)

(assert (= bs!65668 (and d!187386 d!187362)))

(assert (=> bs!65668 (= lambda!15213 lambda!15203)))

(declare-fun bs!65669 () Bool)

(assert (= bs!65669 (and d!187386 d!187312)))

(assert (=> bs!65669 (= lambda!15213 lambda!15194)))

(declare-fun bs!65670 () Bool)

(assert (= bs!65670 (and d!187386 d!187368)))

(assert (=> bs!65670 (= lambda!15213 lambda!15204)))

(assert (=> d!187386 (= (inv!6177 setElem!2429) (forall!1485 (exprs!649 setElem!2429) lambda!15213))))

(declare-fun bs!65671 () Bool)

(assert (= bs!65671 d!187386))

(declare-fun m!771754 () Bool)

(assert (=> bs!65671 m!771754))

(assert (=> setNonEmpty!2429 d!187386))

(declare-fun b!525705 () Bool)

(declare-fun res!222557 () Bool)

(declare-fun e!315722 () Bool)

(assert (=> b!525705 (=> (not res!222557) (not e!315722))))

(assert (=> b!525705 (= res!222557 (isBalanced!495 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(declare-fun b!525706 () Bool)

(declare-fun e!315723 () Bool)

(assert (=> b!525706 (= e!315723 e!315722)))

(declare-fun res!222552 () Bool)

(assert (=> b!525706 (=> (not res!222552) (not e!315722))))

(assert (=> b!525706 (= res!222552 (<= (- 1) (- (height!250 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) (height!250 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))))

(declare-fun b!525707 () Bool)

(declare-fun res!222556 () Bool)

(assert (=> b!525707 (=> (not res!222556) (not e!315722))))

(assert (=> b!525707 (= res!222556 (<= (- (height!250 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) (height!250 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) 1))))

(declare-fun b!525708 () Bool)

(declare-fun isEmpty!3602 (Conc!1594) Bool)

(assert (=> b!525708 (= e!315722 (not (isEmpty!3602 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))))

(declare-fun d!187388 () Bool)

(declare-fun res!222555 () Bool)

(assert (=> d!187388 (=> res!222555 e!315723)))

(assert (=> d!187388 (= res!222555 (not ((_ is Node!1594) (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(assert (=> d!187388 (= (isBalanced!495 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) e!315723)))

(declare-fun b!525709 () Bool)

(declare-fun res!222553 () Bool)

(assert (=> b!525709 (=> (not res!222553) (not e!315722))))

(assert (=> b!525709 (= res!222553 (isBalanced!495 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(declare-fun b!525710 () Bool)

(declare-fun res!222554 () Bool)

(assert (=> b!525710 (=> (not res!222554) (not e!315722))))

(assert (=> b!525710 (= res!222554 (not (isEmpty!3602 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))))))

(assert (= (and d!187388 (not res!222555)) b!525706))

(assert (= (and b!525706 res!222552) b!525707))

(assert (= (and b!525707 res!222556) b!525709))

(assert (= (and b!525709 res!222553) b!525705))

(assert (= (and b!525705 res!222557) b!525710))

(assert (= (and b!525710 res!222554) b!525708))

(declare-fun m!771756 () Bool)

(assert (=> b!525707 m!771756))

(declare-fun m!771758 () Bool)

(assert (=> b!525707 m!771758))

(declare-fun m!771760 () Bool)

(assert (=> b!525705 m!771760))

(declare-fun m!771762 () Bool)

(assert (=> b!525708 m!771762))

(assert (=> b!525706 m!771756))

(assert (=> b!525706 m!771758))

(declare-fun m!771764 () Bool)

(assert (=> b!525710 m!771764))

(declare-fun m!771766 () Bool)

(assert (=> b!525709 m!771766))

(assert (=> d!187298 d!187388))

(declare-fun bs!65672 () Bool)

(declare-fun d!187390 () Bool)

(assert (= bs!65672 (and d!187390 d!187382)))

(declare-fun lambda!15214 () Int)

(assert (=> bs!65672 (= lambda!15214 lambda!15211)))

(declare-fun bs!65673 () Bool)

(assert (= bs!65673 (and d!187390 d!187328)))

(assert (=> bs!65673 (= lambda!15214 lambda!15201)))

(declare-fun bs!65674 () Bool)

(assert (= bs!65674 (and d!187390 d!187310)))

(assert (=> bs!65674 (= lambda!15214 lambda!15193)))

(declare-fun bs!65675 () Bool)

(assert (= bs!65675 (and d!187390 d!187320)))

(assert (=> bs!65675 (= lambda!15214 lambda!15199)))

(declare-fun bs!65676 () Bool)

(assert (= bs!65676 (and d!187390 d!187352)))

(assert (=> bs!65676 (= lambda!15214 lambda!15202)))

(declare-fun bs!65677 () Bool)

(assert (= bs!65677 (and d!187390 d!187318)))

(assert (=> bs!65677 (= lambda!15214 lambda!15198)))

(declare-fun bs!65678 () Bool)

(assert (= bs!65678 (and d!187390 d!187386)))

(assert (=> bs!65678 (= lambda!15214 lambda!15213)))

(declare-fun bs!65679 () Bool)

(assert (= bs!65679 (and d!187390 d!187322)))

(assert (=> bs!65679 (= lambda!15214 lambda!15200)))

(declare-fun bs!65680 () Bool)

(assert (= bs!65680 (and d!187390 d!187304)))

(assert (=> bs!65680 (= lambda!15214 lambda!15192)))

(declare-fun bs!65681 () Bool)

(assert (= bs!65681 (and d!187390 d!187384)))

(assert (=> bs!65681 (= lambda!15214 lambda!15212)))

(declare-fun bs!65682 () Bool)

(assert (= bs!65682 (and d!187390 d!187362)))

(assert (=> bs!65682 (= lambda!15214 lambda!15203)))

(declare-fun bs!65683 () Bool)

(assert (= bs!65683 (and d!187390 d!187312)))

(assert (=> bs!65683 (= lambda!15214 lambda!15194)))

(declare-fun bs!65684 () Bool)

(assert (= bs!65684 (and d!187390 d!187368)))

(assert (=> bs!65684 (= lambda!15214 lambda!15204)))

(assert (=> d!187390 (= (inv!6177 (_2!3257 (_1!3258 (h!10305 mapDefault!2237)))) (forall!1485 (exprs!649 (_2!3257 (_1!3258 (h!10305 mapDefault!2237)))) lambda!15214))))

(declare-fun bs!65685 () Bool)

(assert (= bs!65685 d!187390))

(declare-fun m!771768 () Bool)

(assert (=> bs!65685 m!771768))

(assert (=> b!525508 d!187390))

(declare-fun b!525720 () Bool)

(declare-fun e!315728 () List!4910)

(declare-fun e!315729 () List!4910)

(assert (=> b!525720 (= e!315728 e!315729)))

(declare-fun c!101027 () Bool)

(assert (=> b!525720 (= c!101027 ((_ is Leaf!2540) (c!100954 (_2!3259 lt!217596))))))

(declare-fun b!525719 () Bool)

(assert (=> b!525719 (= e!315728 Nil!4900)))

(declare-fun b!525722 () Bool)

(assert (=> b!525722 (= e!315729 (++!1373 (list!2056 (left!4199 (c!100954 (_2!3259 lt!217596)))) (list!2056 (right!4529 (c!100954 (_2!3259 lt!217596))))))))

(declare-fun d!187392 () Bool)

(declare-fun c!101026 () Bool)

(assert (=> d!187392 (= c!101026 ((_ is Empty!1594) (c!100954 (_2!3259 lt!217596))))))

(assert (=> d!187392 (= (list!2056 (c!100954 (_2!3259 lt!217596))) e!315728)))

(declare-fun b!525721 () Bool)

(assert (=> b!525721 (= e!315729 (list!2059 (xs!4229 (c!100954 (_2!3259 lt!217596)))))))

(assert (= (and d!187392 c!101026) b!525719))

(assert (= (and d!187392 (not c!101026)) b!525720))

(assert (= (and b!525720 c!101027) b!525721))

(assert (= (and b!525720 (not c!101027)) b!525722))

(declare-fun m!771770 () Bool)

(assert (=> b!525722 m!771770))

(declare-fun m!771772 () Bool)

(assert (=> b!525722 m!771772))

(assert (=> b!525722 m!771770))

(assert (=> b!525722 m!771772))

(declare-fun m!771774 () Bool)

(assert (=> b!525722 m!771774))

(declare-fun m!771776 () Bool)

(assert (=> b!525721 m!771776))

(assert (=> d!187242 d!187392))

(declare-fun b!525728 () Bool)

(assert (=> b!525728 true))

(declare-fun d!187394 () Bool)

(declare-fun res!222562 () Bool)

(declare-fun e!315732 () Bool)

(assert (=> d!187394 (=> (not res!222562) (not e!315732))))

(declare-fun valid!556 (MutableMap!541) Bool)

(assert (=> d!187394 (= res!222562 (valid!556 (cache!928 cacheFurthestNullable!56)))))

(assert (=> d!187394 (= (validCacheMapFurthestNullable!26 (cache!928 cacheFurthestNullable!56) (totalInput!1740 cacheFurthestNullable!56)) e!315732)))

(declare-fun b!525727 () Bool)

(declare-fun res!222563 () Bool)

(assert (=> b!525727 (=> (not res!222563) (not e!315732))))

(declare-fun invariantList!100 (List!4912) Bool)

(declare-datatypes ((ListMap!249 0))(
  ( (ListMap!250 (toList!461 List!4912)) )
))
(declare-fun map!1131 (MutableMap!541) ListMap!249)

(assert (=> b!525727 (= res!222563 (invariantList!100 (toList!461 (map!1131 (cache!928 cacheFurthestNullable!56)))))))

(declare-fun lambda!15217 () Int)

(declare-fun forall!1488 (List!4912 Int) Bool)

(assert (=> b!525728 (= e!315732 (forall!1488 (toList!461 (map!1131 (cache!928 cacheFurthestNullable!56))) lambda!15217))))

(assert (= (and d!187394 res!222562) b!525727))

(assert (= (and b!525727 res!222563) b!525728))

(declare-fun m!771779 () Bool)

(assert (=> d!187394 m!771779))

(declare-fun m!771781 () Bool)

(assert (=> b!525727 m!771781))

(declare-fun m!771783 () Bool)

(assert (=> b!525727 m!771783))

(assert (=> b!525728 m!771781))

(declare-fun m!771785 () Bool)

(assert (=> b!525728 m!771785))

(assert (=> d!187286 d!187394))

(declare-fun bs!65686 () Bool)

(declare-fun d!187396 () Bool)

(assert (= bs!65686 (and d!187396 d!187382)))

(declare-fun lambda!15218 () Int)

(assert (=> bs!65686 (= lambda!15218 lambda!15211)))

(declare-fun bs!65687 () Bool)

(assert (= bs!65687 (and d!187396 d!187328)))

(assert (=> bs!65687 (= lambda!15218 lambda!15201)))

(declare-fun bs!65688 () Bool)

(assert (= bs!65688 (and d!187396 d!187310)))

(assert (=> bs!65688 (= lambda!15218 lambda!15193)))

(declare-fun bs!65689 () Bool)

(assert (= bs!65689 (and d!187396 d!187320)))

(assert (=> bs!65689 (= lambda!15218 lambda!15199)))

(declare-fun bs!65690 () Bool)

(assert (= bs!65690 (and d!187396 d!187352)))

(assert (=> bs!65690 (= lambda!15218 lambda!15202)))

(declare-fun bs!65691 () Bool)

(assert (= bs!65691 (and d!187396 d!187390)))

(assert (=> bs!65691 (= lambda!15218 lambda!15214)))

(declare-fun bs!65692 () Bool)

(assert (= bs!65692 (and d!187396 d!187318)))

(assert (=> bs!65692 (= lambda!15218 lambda!15198)))

(declare-fun bs!65693 () Bool)

(assert (= bs!65693 (and d!187396 d!187386)))

(assert (=> bs!65693 (= lambda!15218 lambda!15213)))

(declare-fun bs!65694 () Bool)

(assert (= bs!65694 (and d!187396 d!187322)))

(assert (=> bs!65694 (= lambda!15218 lambda!15200)))

(declare-fun bs!65695 () Bool)

(assert (= bs!65695 (and d!187396 d!187304)))

(assert (=> bs!65695 (= lambda!15218 lambda!15192)))

(declare-fun bs!65696 () Bool)

(assert (= bs!65696 (and d!187396 d!187384)))

(assert (=> bs!65696 (= lambda!15218 lambda!15212)))

(declare-fun bs!65697 () Bool)

(assert (= bs!65697 (and d!187396 d!187362)))

(assert (=> bs!65697 (= lambda!15218 lambda!15203)))

(declare-fun bs!65698 () Bool)

(assert (= bs!65698 (and d!187396 d!187312)))

(assert (=> bs!65698 (= lambda!15218 lambda!15194)))

(declare-fun bs!65699 () Bool)

(assert (= bs!65699 (and d!187396 d!187368)))

(assert (=> bs!65699 (= lambda!15218 lambda!15204)))

(assert (=> d!187396 (= (inv!6177 (_2!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))) (forall!1485 (exprs!649 (_2!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))) lambda!15218))))

(declare-fun bs!65700 () Bool)

(assert (= bs!65700 d!187396))

(declare-fun m!771787 () Bool)

(assert (=> bs!65700 m!771787))

(assert (=> b!525383 d!187396))

(declare-fun bs!65701 () Bool)

(declare-fun d!187398 () Bool)

(assert (= bs!65701 (and d!187398 d!187382)))

(declare-fun lambda!15219 () Int)

(assert (=> bs!65701 (= lambda!15219 lambda!15211)))

(declare-fun bs!65702 () Bool)

(assert (= bs!65702 (and d!187398 d!187328)))

(assert (=> bs!65702 (= lambda!15219 lambda!15201)))

(declare-fun bs!65703 () Bool)

(assert (= bs!65703 (and d!187398 d!187310)))

(assert (=> bs!65703 (= lambda!15219 lambda!15193)))

(declare-fun bs!65704 () Bool)

(assert (= bs!65704 (and d!187398 d!187396)))

(assert (=> bs!65704 (= lambda!15219 lambda!15218)))

(declare-fun bs!65705 () Bool)

(assert (= bs!65705 (and d!187398 d!187320)))

(assert (=> bs!65705 (= lambda!15219 lambda!15199)))

(declare-fun bs!65706 () Bool)

(assert (= bs!65706 (and d!187398 d!187352)))

(assert (=> bs!65706 (= lambda!15219 lambda!15202)))

(declare-fun bs!65707 () Bool)

(assert (= bs!65707 (and d!187398 d!187390)))

(assert (=> bs!65707 (= lambda!15219 lambda!15214)))

(declare-fun bs!65708 () Bool)

(assert (= bs!65708 (and d!187398 d!187318)))

(assert (=> bs!65708 (= lambda!15219 lambda!15198)))

(declare-fun bs!65709 () Bool)

(assert (= bs!65709 (and d!187398 d!187386)))

(assert (=> bs!65709 (= lambda!15219 lambda!15213)))

(declare-fun bs!65710 () Bool)

(assert (= bs!65710 (and d!187398 d!187322)))

(assert (=> bs!65710 (= lambda!15219 lambda!15200)))

(declare-fun bs!65711 () Bool)

(assert (= bs!65711 (and d!187398 d!187304)))

(assert (=> bs!65711 (= lambda!15219 lambda!15192)))

(declare-fun bs!65712 () Bool)

(assert (= bs!65712 (and d!187398 d!187384)))

(assert (=> bs!65712 (= lambda!15219 lambda!15212)))

(declare-fun bs!65713 () Bool)

(assert (= bs!65713 (and d!187398 d!187362)))

(assert (=> bs!65713 (= lambda!15219 lambda!15203)))

(declare-fun bs!65714 () Bool)

(assert (= bs!65714 (and d!187398 d!187312)))

(assert (=> bs!65714 (= lambda!15219 lambda!15194)))

(declare-fun bs!65715 () Bool)

(assert (= bs!65715 (and d!187398 d!187368)))

(assert (=> bs!65715 (= lambda!15219 lambda!15204)))

(assert (=> d!187398 (= (inv!6177 (_2!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))) (forall!1485 (exprs!649 (_2!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))) lambda!15219))))

(declare-fun bs!65716 () Bool)

(assert (= bs!65716 d!187398))

(declare-fun m!771789 () Bool)

(assert (=> bs!65716 m!771789))

(assert (=> b!525380 d!187398))

(declare-fun bs!65717 () Bool)

(declare-fun d!187400 () Bool)

(assert (= bs!65717 (and d!187400 d!187382)))

(declare-fun lambda!15220 () Int)

(assert (=> bs!65717 (= lambda!15220 lambda!15211)))

(declare-fun bs!65718 () Bool)

(assert (= bs!65718 (and d!187400 d!187328)))

(assert (=> bs!65718 (= lambda!15220 lambda!15201)))

(declare-fun bs!65719 () Bool)

(assert (= bs!65719 (and d!187400 d!187310)))

(assert (=> bs!65719 (= lambda!15220 lambda!15193)))

(declare-fun bs!65720 () Bool)

(assert (= bs!65720 (and d!187400 d!187396)))

(assert (=> bs!65720 (= lambda!15220 lambda!15218)))

(declare-fun bs!65721 () Bool)

(assert (= bs!65721 (and d!187400 d!187320)))

(assert (=> bs!65721 (= lambda!15220 lambda!15199)))

(declare-fun bs!65722 () Bool)

(assert (= bs!65722 (and d!187400 d!187352)))

(assert (=> bs!65722 (= lambda!15220 lambda!15202)))

(declare-fun bs!65723 () Bool)

(assert (= bs!65723 (and d!187400 d!187390)))

(assert (=> bs!65723 (= lambda!15220 lambda!15214)))

(declare-fun bs!65724 () Bool)

(assert (= bs!65724 (and d!187400 d!187318)))

(assert (=> bs!65724 (= lambda!15220 lambda!15198)))

(declare-fun bs!65725 () Bool)

(assert (= bs!65725 (and d!187400 d!187386)))

(assert (=> bs!65725 (= lambda!15220 lambda!15213)))

(declare-fun bs!65726 () Bool)

(assert (= bs!65726 (and d!187400 d!187398)))

(assert (=> bs!65726 (= lambda!15220 lambda!15219)))

(declare-fun bs!65727 () Bool)

(assert (= bs!65727 (and d!187400 d!187322)))

(assert (=> bs!65727 (= lambda!15220 lambda!15200)))

(declare-fun bs!65728 () Bool)

(assert (= bs!65728 (and d!187400 d!187304)))

(assert (=> bs!65728 (= lambda!15220 lambda!15192)))

(declare-fun bs!65729 () Bool)

(assert (= bs!65729 (and d!187400 d!187384)))

(assert (=> bs!65729 (= lambda!15220 lambda!15212)))

(declare-fun bs!65730 () Bool)

(assert (= bs!65730 (and d!187400 d!187362)))

(assert (=> bs!65730 (= lambda!15220 lambda!15203)))

(declare-fun bs!65731 () Bool)

(assert (= bs!65731 (and d!187400 d!187312)))

(assert (=> bs!65731 (= lambda!15220 lambda!15194)))

(declare-fun bs!65732 () Bool)

(assert (= bs!65732 (and d!187400 d!187368)))

(assert (=> bs!65732 (= lambda!15220 lambda!15204)))

(assert (=> d!187400 (= (inv!6177 setElem!2439) (forall!1485 (exprs!649 setElem!2439) lambda!15220))))

(declare-fun bs!65733 () Bool)

(assert (= bs!65733 d!187400))

(declare-fun m!771791 () Bool)

(assert (=> bs!65733 m!771791))

(assert (=> setNonEmpty!2439 d!187400))

(declare-fun bs!65734 () Bool)

(declare-fun d!187402 () Bool)

(assert (= bs!65734 (and d!187402 d!187382)))

(declare-fun lambda!15221 () Int)

(assert (=> bs!65734 (= lambda!15221 lambda!15211)))

(declare-fun bs!65735 () Bool)

(assert (= bs!65735 (and d!187402 d!187328)))

(assert (=> bs!65735 (= lambda!15221 lambda!15201)))

(declare-fun bs!65736 () Bool)

(assert (= bs!65736 (and d!187402 d!187310)))

(assert (=> bs!65736 (= lambda!15221 lambda!15193)))

(declare-fun bs!65737 () Bool)

(assert (= bs!65737 (and d!187402 d!187396)))

(assert (=> bs!65737 (= lambda!15221 lambda!15218)))

(declare-fun bs!65738 () Bool)

(assert (= bs!65738 (and d!187402 d!187320)))

(assert (=> bs!65738 (= lambda!15221 lambda!15199)))

(declare-fun bs!65739 () Bool)

(assert (= bs!65739 (and d!187402 d!187400)))

(assert (=> bs!65739 (= lambda!15221 lambda!15220)))

(declare-fun bs!65740 () Bool)

(assert (= bs!65740 (and d!187402 d!187352)))

(assert (=> bs!65740 (= lambda!15221 lambda!15202)))

(declare-fun bs!65741 () Bool)

(assert (= bs!65741 (and d!187402 d!187390)))

(assert (=> bs!65741 (= lambda!15221 lambda!15214)))

(declare-fun bs!65742 () Bool)

(assert (= bs!65742 (and d!187402 d!187318)))

(assert (=> bs!65742 (= lambda!15221 lambda!15198)))

(declare-fun bs!65743 () Bool)

(assert (= bs!65743 (and d!187402 d!187386)))

(assert (=> bs!65743 (= lambda!15221 lambda!15213)))

(declare-fun bs!65744 () Bool)

(assert (= bs!65744 (and d!187402 d!187398)))

(assert (=> bs!65744 (= lambda!15221 lambda!15219)))

(declare-fun bs!65745 () Bool)

(assert (= bs!65745 (and d!187402 d!187322)))

(assert (=> bs!65745 (= lambda!15221 lambda!15200)))

(declare-fun bs!65746 () Bool)

(assert (= bs!65746 (and d!187402 d!187304)))

(assert (=> bs!65746 (= lambda!15221 lambda!15192)))

(declare-fun bs!65747 () Bool)

(assert (= bs!65747 (and d!187402 d!187384)))

(assert (=> bs!65747 (= lambda!15221 lambda!15212)))

(declare-fun bs!65748 () Bool)

(assert (= bs!65748 (and d!187402 d!187362)))

(assert (=> bs!65748 (= lambda!15221 lambda!15203)))

(declare-fun bs!65749 () Bool)

(assert (= bs!65749 (and d!187402 d!187312)))

(assert (=> bs!65749 (= lambda!15221 lambda!15194)))

(declare-fun bs!65750 () Bool)

(assert (= bs!65750 (and d!187402 d!187368)))

(assert (=> bs!65750 (= lambda!15221 lambda!15204)))

(assert (=> d!187402 (= (inv!6177 (_1!3255 (_1!3256 (h!10304 mapDefault!2227)))) (forall!1485 (exprs!649 (_1!3255 (_1!3256 (h!10304 mapDefault!2227)))) lambda!15221))))

(declare-fun bs!65751 () Bool)

(assert (= bs!65751 d!187402))

(declare-fun m!771793 () Bool)

(assert (=> bs!65751 m!771793))

(assert (=> b!525514 d!187402))

(declare-fun d!187404 () Bool)

(declare-fun c!101028 () Bool)

(assert (=> d!187404 (= c!101028 ((_ is Node!1594) (left!4199 (c!100954 input!747))))))

(declare-fun e!315733 () Bool)

(assert (=> d!187404 (= (inv!6169 (left!4199 (c!100954 input!747))) e!315733)))

(declare-fun b!525731 () Bool)

(assert (=> b!525731 (= e!315733 (inv!6175 (left!4199 (c!100954 input!747))))))

(declare-fun b!525732 () Bool)

(declare-fun e!315734 () Bool)

(assert (=> b!525732 (= e!315733 e!315734)))

(declare-fun res!222564 () Bool)

(assert (=> b!525732 (= res!222564 (not ((_ is Leaf!2540) (left!4199 (c!100954 input!747)))))))

(assert (=> b!525732 (=> res!222564 e!315734)))

(declare-fun b!525733 () Bool)

(assert (=> b!525733 (= e!315734 (inv!6176 (left!4199 (c!100954 input!747))))))

(assert (= (and d!187404 c!101028) b!525731))

(assert (= (and d!187404 (not c!101028)) b!525732))

(assert (= (and b!525732 (not res!222564)) b!525733))

(declare-fun m!771795 () Bool)

(assert (=> b!525731 m!771795))

(declare-fun m!771797 () Bool)

(assert (=> b!525733 m!771797))

(assert (=> b!525450 d!187404))

(declare-fun d!187406 () Bool)

(declare-fun c!101029 () Bool)

(assert (=> d!187406 (= c!101029 ((_ is Node!1594) (right!4529 (c!100954 input!747))))))

(declare-fun e!315735 () Bool)

(assert (=> d!187406 (= (inv!6169 (right!4529 (c!100954 input!747))) e!315735)))

(declare-fun b!525734 () Bool)

(assert (=> b!525734 (= e!315735 (inv!6175 (right!4529 (c!100954 input!747))))))

(declare-fun b!525735 () Bool)

(declare-fun e!315736 () Bool)

(assert (=> b!525735 (= e!315735 e!315736)))

(declare-fun res!222565 () Bool)

(assert (=> b!525735 (= res!222565 (not ((_ is Leaf!2540) (right!4529 (c!100954 input!747)))))))

(assert (=> b!525735 (=> res!222565 e!315736)))

(declare-fun b!525736 () Bool)

(assert (=> b!525736 (= e!315736 (inv!6176 (right!4529 (c!100954 input!747))))))

(assert (= (and d!187406 c!101029) b!525734))

(assert (= (and d!187406 (not c!101029)) b!525735))

(assert (= (and b!525735 (not res!222565)) b!525736))

(declare-fun m!771799 () Bool)

(assert (=> b!525734 m!771799))

(declare-fun m!771801 () Bool)

(assert (=> b!525736 m!771801))

(assert (=> b!525450 d!187406))

(declare-fun bs!65752 () Bool)

(declare-fun d!187408 () Bool)

(assert (= bs!65752 (and d!187408 d!187382)))

(declare-fun lambda!15222 () Int)

(assert (=> bs!65752 (= lambda!15222 lambda!15211)))

(declare-fun bs!65753 () Bool)

(assert (= bs!65753 (and d!187408 d!187328)))

(assert (=> bs!65753 (= lambda!15222 lambda!15201)))

(declare-fun bs!65754 () Bool)

(assert (= bs!65754 (and d!187408 d!187310)))

(assert (=> bs!65754 (= lambda!15222 lambda!15193)))

(declare-fun bs!65755 () Bool)

(assert (= bs!65755 (and d!187408 d!187402)))

(assert (=> bs!65755 (= lambda!15222 lambda!15221)))

(declare-fun bs!65756 () Bool)

(assert (= bs!65756 (and d!187408 d!187396)))

(assert (=> bs!65756 (= lambda!15222 lambda!15218)))

(declare-fun bs!65757 () Bool)

(assert (= bs!65757 (and d!187408 d!187320)))

(assert (=> bs!65757 (= lambda!15222 lambda!15199)))

(declare-fun bs!65758 () Bool)

(assert (= bs!65758 (and d!187408 d!187400)))

(assert (=> bs!65758 (= lambda!15222 lambda!15220)))

(declare-fun bs!65759 () Bool)

(assert (= bs!65759 (and d!187408 d!187352)))

(assert (=> bs!65759 (= lambda!15222 lambda!15202)))

(declare-fun bs!65760 () Bool)

(assert (= bs!65760 (and d!187408 d!187390)))

(assert (=> bs!65760 (= lambda!15222 lambda!15214)))

(declare-fun bs!65761 () Bool)

(assert (= bs!65761 (and d!187408 d!187318)))

(assert (=> bs!65761 (= lambda!15222 lambda!15198)))

(declare-fun bs!65762 () Bool)

(assert (= bs!65762 (and d!187408 d!187386)))

(assert (=> bs!65762 (= lambda!15222 lambda!15213)))

(declare-fun bs!65763 () Bool)

(assert (= bs!65763 (and d!187408 d!187398)))

(assert (=> bs!65763 (= lambda!15222 lambda!15219)))

(declare-fun bs!65764 () Bool)

(assert (= bs!65764 (and d!187408 d!187322)))

(assert (=> bs!65764 (= lambda!15222 lambda!15200)))

(declare-fun bs!65765 () Bool)

(assert (= bs!65765 (and d!187408 d!187304)))

(assert (=> bs!65765 (= lambda!15222 lambda!15192)))

(declare-fun bs!65766 () Bool)

(assert (= bs!65766 (and d!187408 d!187384)))

(assert (=> bs!65766 (= lambda!15222 lambda!15212)))

(declare-fun bs!65767 () Bool)

(assert (= bs!65767 (and d!187408 d!187362)))

(assert (=> bs!65767 (= lambda!15222 lambda!15203)))

(declare-fun bs!65768 () Bool)

(assert (= bs!65768 (and d!187408 d!187312)))

(assert (=> bs!65768 (= lambda!15222 lambda!15194)))

(declare-fun bs!65769 () Bool)

(assert (= bs!65769 (and d!187408 d!187368)))

(assert (=> bs!65769 (= lambda!15222 lambda!15204)))

(assert (=> d!187408 (= (inv!6177 setElem!2462) (forall!1485 (exprs!649 setElem!2462) lambda!15222))))

(declare-fun bs!65770 () Bool)

(assert (= bs!65770 d!187408))

(declare-fun m!771803 () Bool)

(assert (=> bs!65770 m!771803))

(assert (=> setNonEmpty!2462 d!187408))

(declare-fun d!187410 () Bool)

(assert (=> d!187410 true))

(declare-fun lt!217656 () Bool)

(declare-fun rulesValidInductive!296 (LexerInterface!772 List!4916) Bool)

(assert (=> d!187410 (= lt!217656 (rulesValidInductive!296 thiss!12147 rules!1345))))

(declare-fun lambda!15225 () Int)

(declare-fun forall!1489 (List!4916 Int) Bool)

(assert (=> d!187410 (= lt!217656 (forall!1489 rules!1345 lambda!15225))))

(assert (=> d!187410 (= (rulesValid!320 thiss!12147 rules!1345) lt!217656)))

(declare-fun bs!65771 () Bool)

(assert (= bs!65771 d!187410))

(declare-fun m!771805 () Bool)

(assert (=> bs!65771 m!771805))

(declare-fun m!771807 () Bool)

(assert (=> bs!65771 m!771807))

(assert (=> d!187300 d!187410))

(declare-fun b!525739 () Bool)

(declare-fun res!222571 () Bool)

(declare-fun e!315737 () Bool)

(assert (=> b!525739 (=> (not res!222571) (not e!315737))))

(assert (=> b!525739 (= res!222571 (isBalanced!495 (right!4529 (c!100954 input!747))))))

(declare-fun b!525740 () Bool)

(declare-fun e!315738 () Bool)

(assert (=> b!525740 (= e!315738 e!315737)))

(declare-fun res!222566 () Bool)

(assert (=> b!525740 (=> (not res!222566) (not e!315737))))

(assert (=> b!525740 (= res!222566 (<= (- 1) (- (height!250 (left!4199 (c!100954 input!747))) (height!250 (right!4529 (c!100954 input!747))))))))

(declare-fun b!525741 () Bool)

(declare-fun res!222570 () Bool)

(assert (=> b!525741 (=> (not res!222570) (not e!315737))))

(assert (=> b!525741 (= res!222570 (<= (- (height!250 (left!4199 (c!100954 input!747))) (height!250 (right!4529 (c!100954 input!747)))) 1))))

(declare-fun b!525742 () Bool)

(assert (=> b!525742 (= e!315737 (not (isEmpty!3602 (right!4529 (c!100954 input!747)))))))

(declare-fun d!187412 () Bool)

(declare-fun res!222569 () Bool)

(assert (=> d!187412 (=> res!222569 e!315738)))

(assert (=> d!187412 (= res!222569 (not ((_ is Node!1594) (c!100954 input!747))))))

(assert (=> d!187412 (= (isBalanced!495 (c!100954 input!747)) e!315738)))

(declare-fun b!525743 () Bool)

(declare-fun res!222567 () Bool)

(assert (=> b!525743 (=> (not res!222567) (not e!315737))))

(assert (=> b!525743 (= res!222567 (isBalanced!495 (left!4199 (c!100954 input!747))))))

(declare-fun b!525744 () Bool)

(declare-fun res!222568 () Bool)

(assert (=> b!525744 (=> (not res!222568) (not e!315737))))

(assert (=> b!525744 (= res!222568 (not (isEmpty!3602 (left!4199 (c!100954 input!747)))))))

(assert (= (and d!187412 (not res!222569)) b!525740))

(assert (= (and b!525740 res!222566) b!525741))

(assert (= (and b!525741 res!222570) b!525743))

(assert (= (and b!525743 res!222567) b!525739))

(assert (= (and b!525739 res!222571) b!525744))

(assert (= (and b!525744 res!222568) b!525742))

(assert (=> b!525741 m!771607))

(assert (=> b!525741 m!771609))

(declare-fun m!771809 () Bool)

(assert (=> b!525739 m!771809))

(declare-fun m!771811 () Bool)

(assert (=> b!525742 m!771811))

(assert (=> b!525740 m!771607))

(assert (=> b!525740 m!771609))

(declare-fun m!771813 () Bool)

(assert (=> b!525744 m!771813))

(declare-fun m!771815 () Bool)

(assert (=> b!525743 m!771815))

(assert (=> d!187266 d!187412))

(declare-fun bs!65772 () Bool)

(declare-fun d!187414 () Bool)

(assert (= bs!65772 (and d!187414 d!187382)))

(declare-fun lambda!15226 () Int)

(assert (=> bs!65772 (= lambda!15226 lambda!15211)))

(declare-fun bs!65773 () Bool)

(assert (= bs!65773 (and d!187414 d!187328)))

(assert (=> bs!65773 (= lambda!15226 lambda!15201)))

(declare-fun bs!65774 () Bool)

(assert (= bs!65774 (and d!187414 d!187310)))

(assert (=> bs!65774 (= lambda!15226 lambda!15193)))

(declare-fun bs!65775 () Bool)

(assert (= bs!65775 (and d!187414 d!187402)))

(assert (=> bs!65775 (= lambda!15226 lambda!15221)))

(declare-fun bs!65776 () Bool)

(assert (= bs!65776 (and d!187414 d!187396)))

(assert (=> bs!65776 (= lambda!15226 lambda!15218)))

(declare-fun bs!65777 () Bool)

(assert (= bs!65777 (and d!187414 d!187320)))

(assert (=> bs!65777 (= lambda!15226 lambda!15199)))

(declare-fun bs!65778 () Bool)

(assert (= bs!65778 (and d!187414 d!187400)))

(assert (=> bs!65778 (= lambda!15226 lambda!15220)))

(declare-fun bs!65779 () Bool)

(assert (= bs!65779 (and d!187414 d!187408)))

(assert (=> bs!65779 (= lambda!15226 lambda!15222)))

(declare-fun bs!65780 () Bool)

(assert (= bs!65780 (and d!187414 d!187352)))

(assert (=> bs!65780 (= lambda!15226 lambda!15202)))

(declare-fun bs!65781 () Bool)

(assert (= bs!65781 (and d!187414 d!187390)))

(assert (=> bs!65781 (= lambda!15226 lambda!15214)))

(declare-fun bs!65782 () Bool)

(assert (= bs!65782 (and d!187414 d!187318)))

(assert (=> bs!65782 (= lambda!15226 lambda!15198)))

(declare-fun bs!65783 () Bool)

(assert (= bs!65783 (and d!187414 d!187386)))

(assert (=> bs!65783 (= lambda!15226 lambda!15213)))

(declare-fun bs!65784 () Bool)

(assert (= bs!65784 (and d!187414 d!187398)))

(assert (=> bs!65784 (= lambda!15226 lambda!15219)))

(declare-fun bs!65785 () Bool)

(assert (= bs!65785 (and d!187414 d!187322)))

(assert (=> bs!65785 (= lambda!15226 lambda!15200)))

(declare-fun bs!65786 () Bool)

(assert (= bs!65786 (and d!187414 d!187304)))

(assert (=> bs!65786 (= lambda!15226 lambda!15192)))

(declare-fun bs!65787 () Bool)

(assert (= bs!65787 (and d!187414 d!187384)))

(assert (=> bs!65787 (= lambda!15226 lambda!15212)))

(declare-fun bs!65788 () Bool)

(assert (= bs!65788 (and d!187414 d!187362)))

(assert (=> bs!65788 (= lambda!15226 lambda!15203)))

(declare-fun bs!65789 () Bool)

(assert (= bs!65789 (and d!187414 d!187312)))

(assert (=> bs!65789 (= lambda!15226 lambda!15194)))

(declare-fun bs!65790 () Bool)

(assert (= bs!65790 (and d!187414 d!187368)))

(assert (=> bs!65790 (= lambda!15226 lambda!15204)))

(assert (=> d!187414 (= (inv!6177 setElem!2444) (forall!1485 (exprs!649 setElem!2444) lambda!15226))))

(declare-fun bs!65791 () Bool)

(assert (= bs!65791 d!187414))

(declare-fun m!771817 () Bool)

(assert (=> bs!65791 m!771817))

(assert (=> setNonEmpty!2445 d!187414))

(declare-fun bs!65792 () Bool)

(declare-fun d!187416 () Bool)

(assert (= bs!65792 (and d!187416 d!187382)))

(declare-fun lambda!15227 () Int)

(assert (=> bs!65792 (= lambda!15227 lambda!15211)))

(declare-fun bs!65793 () Bool)

(assert (= bs!65793 (and d!187416 d!187328)))

(assert (=> bs!65793 (= lambda!15227 lambda!15201)))

(declare-fun bs!65794 () Bool)

(assert (= bs!65794 (and d!187416 d!187310)))

(assert (=> bs!65794 (= lambda!15227 lambda!15193)))

(declare-fun bs!65795 () Bool)

(assert (= bs!65795 (and d!187416 d!187402)))

(assert (=> bs!65795 (= lambda!15227 lambda!15221)))

(declare-fun bs!65796 () Bool)

(assert (= bs!65796 (and d!187416 d!187396)))

(assert (=> bs!65796 (= lambda!15227 lambda!15218)))

(declare-fun bs!65797 () Bool)

(assert (= bs!65797 (and d!187416 d!187320)))

(assert (=> bs!65797 (= lambda!15227 lambda!15199)))

(declare-fun bs!65798 () Bool)

(assert (= bs!65798 (and d!187416 d!187400)))

(assert (=> bs!65798 (= lambda!15227 lambda!15220)))

(declare-fun bs!65799 () Bool)

(assert (= bs!65799 (and d!187416 d!187408)))

(assert (=> bs!65799 (= lambda!15227 lambda!15222)))

(declare-fun bs!65800 () Bool)

(assert (= bs!65800 (and d!187416 d!187390)))

(assert (=> bs!65800 (= lambda!15227 lambda!15214)))

(declare-fun bs!65801 () Bool)

(assert (= bs!65801 (and d!187416 d!187318)))

(assert (=> bs!65801 (= lambda!15227 lambda!15198)))

(declare-fun bs!65802 () Bool)

(assert (= bs!65802 (and d!187416 d!187386)))

(assert (=> bs!65802 (= lambda!15227 lambda!15213)))

(declare-fun bs!65803 () Bool)

(assert (= bs!65803 (and d!187416 d!187398)))

(assert (=> bs!65803 (= lambda!15227 lambda!15219)))

(declare-fun bs!65804 () Bool)

(assert (= bs!65804 (and d!187416 d!187322)))

(assert (=> bs!65804 (= lambda!15227 lambda!15200)))

(declare-fun bs!65805 () Bool)

(assert (= bs!65805 (and d!187416 d!187304)))

(assert (=> bs!65805 (= lambda!15227 lambda!15192)))

(declare-fun bs!65806 () Bool)

(assert (= bs!65806 (and d!187416 d!187384)))

(assert (=> bs!65806 (= lambda!15227 lambda!15212)))

(declare-fun bs!65807 () Bool)

(assert (= bs!65807 (and d!187416 d!187362)))

(assert (=> bs!65807 (= lambda!15227 lambda!15203)))

(declare-fun bs!65808 () Bool)

(assert (= bs!65808 (and d!187416 d!187312)))

(assert (=> bs!65808 (= lambda!15227 lambda!15194)))

(declare-fun bs!65809 () Bool)

(assert (= bs!65809 (and d!187416 d!187368)))

(assert (=> bs!65809 (= lambda!15227 lambda!15204)))

(declare-fun bs!65810 () Bool)

(assert (= bs!65810 (and d!187416 d!187352)))

(assert (=> bs!65810 (= lambda!15227 lambda!15202)))

(declare-fun bs!65811 () Bool)

(assert (= bs!65811 (and d!187416 d!187414)))

(assert (=> bs!65811 (= lambda!15227 lambda!15226)))

(assert (=> d!187416 (= (inv!6177 setElem!2433) (forall!1485 (exprs!649 setElem!2433) lambda!15227))))

(declare-fun bs!65812 () Bool)

(assert (= bs!65812 d!187416))

(declare-fun m!771819 () Bool)

(assert (=> bs!65812 m!771819))

(assert (=> setNonEmpty!2433 d!187416))

(declare-fun d!187418 () Bool)

(assert (=> d!187418 true))

(declare-fun order!4377 () Int)

(declare-fun order!4375 () Int)

(declare-fun lambda!15230 () Int)

(declare-fun dynLambda!3031 (Int Int) Int)

(declare-fun dynLambda!3032 (Int Int) Int)

(assert (=> d!187418 (< (dynLambda!3031 order!4375 (toChars!1578 (transformation!886 (h!10307 rules!1345)))) (dynLambda!3032 order!4377 lambda!15230))))

(assert (=> d!187418 true))

(assert (=> d!187418 (< (dynLambda!3029 order!4371 (toValue!1719 (transformation!886 (h!10307 rules!1345)))) (dynLambda!3032 order!4377 lambda!15230))))

(declare-fun Forall!270 (Int) Bool)

(assert (=> d!187418 (= (semiInverseModEq!355 (toChars!1578 (transformation!886 (h!10307 rules!1345))) (toValue!1719 (transformation!886 (h!10307 rules!1345)))) (Forall!270 lambda!15230))))

(declare-fun bs!65813 () Bool)

(assert (= bs!65813 d!187418))

(declare-fun m!771821 () Bool)

(assert (=> bs!65813 m!771821))

(assert (=> d!187296 d!187418))

(declare-fun d!187420 () Bool)

(declare-fun c!101032 () Bool)

(assert (=> d!187420 (= c!101032 ((_ is Nil!4900) lt!217614))))

(declare-fun e!315741 () (InoxSet C!3344))

(assert (=> d!187420 (= (content!887 lt!217614) e!315741)))

(declare-fun b!525753 () Bool)

(assert (=> b!525753 (= e!315741 ((as const (Array C!3344 Bool)) false))))

(declare-fun b!525754 () Bool)

(assert (=> b!525754 (= e!315741 ((_ map or) (store ((as const (Array C!3344 Bool)) false) (h!10301 lt!217614) true) (content!887 (t!73515 lt!217614))))))

(assert (= (and d!187420 c!101032) b!525753))

(assert (= (and d!187420 (not c!101032)) b!525754))

(declare-fun m!771823 () Bool)

(assert (=> b!525754 m!771823))

(declare-fun m!771825 () Bool)

(assert (=> b!525754 m!771825))

(assert (=> d!187280 d!187420))

(declare-fun d!187422 () Bool)

(declare-fun c!101033 () Bool)

(assert (=> d!187422 (= c!101033 ((_ is Nil!4900) lt!217593))))

(declare-fun e!315742 () (InoxSet C!3344))

(assert (=> d!187422 (= (content!887 lt!217593) e!315742)))

(declare-fun b!525755 () Bool)

(assert (=> b!525755 (= e!315742 ((as const (Array C!3344 Bool)) false))))

(declare-fun b!525756 () Bool)

(assert (=> b!525756 (= e!315742 ((_ map or) (store ((as const (Array C!3344 Bool)) false) (h!10301 lt!217593) true) (content!887 (t!73515 lt!217593))))))

(assert (= (and d!187422 c!101033) b!525755))

(assert (= (and d!187422 (not c!101033)) b!525756))

(declare-fun m!771827 () Bool)

(assert (=> b!525756 m!771827))

(declare-fun m!771829 () Bool)

(assert (=> b!525756 m!771829))

(assert (=> d!187280 d!187422))

(declare-fun d!187424 () Bool)

(declare-fun c!101034 () Bool)

(assert (=> d!187424 (= c!101034 ((_ is Nil!4900) lt!217599))))

(declare-fun e!315743 () (InoxSet C!3344))

(assert (=> d!187424 (= (content!887 lt!217599) e!315743)))

(declare-fun b!525757 () Bool)

(assert (=> b!525757 (= e!315743 ((as const (Array C!3344 Bool)) false))))

(declare-fun b!525758 () Bool)

(assert (=> b!525758 (= e!315743 ((_ map or) (store ((as const (Array C!3344 Bool)) false) (h!10301 lt!217599) true) (content!887 (t!73515 lt!217599))))))

(assert (= (and d!187424 c!101034) b!525757))

(assert (= (and d!187424 (not c!101034)) b!525758))

(declare-fun m!771831 () Bool)

(assert (=> b!525758 m!771831))

(declare-fun m!771833 () Bool)

(assert (=> b!525758 m!771833))

(assert (=> d!187280 d!187424))

(declare-fun bs!65814 () Bool)

(declare-fun d!187426 () Bool)

(assert (= bs!65814 (and d!187426 d!187382)))

(declare-fun lambda!15231 () Int)

(assert (=> bs!65814 (= lambda!15231 lambda!15211)))

(declare-fun bs!65815 () Bool)

(assert (= bs!65815 (and d!187426 d!187328)))

(assert (=> bs!65815 (= lambda!15231 lambda!15201)))

(declare-fun bs!65816 () Bool)

(assert (= bs!65816 (and d!187426 d!187310)))

(assert (=> bs!65816 (= lambda!15231 lambda!15193)))

(declare-fun bs!65817 () Bool)

(assert (= bs!65817 (and d!187426 d!187402)))

(assert (=> bs!65817 (= lambda!15231 lambda!15221)))

(declare-fun bs!65818 () Bool)

(assert (= bs!65818 (and d!187426 d!187396)))

(assert (=> bs!65818 (= lambda!15231 lambda!15218)))

(declare-fun bs!65819 () Bool)

(assert (= bs!65819 (and d!187426 d!187320)))

(assert (=> bs!65819 (= lambda!15231 lambda!15199)))

(declare-fun bs!65820 () Bool)

(assert (= bs!65820 (and d!187426 d!187408)))

(assert (=> bs!65820 (= lambda!15231 lambda!15222)))

(declare-fun bs!65821 () Bool)

(assert (= bs!65821 (and d!187426 d!187390)))

(assert (=> bs!65821 (= lambda!15231 lambda!15214)))

(declare-fun bs!65822 () Bool)

(assert (= bs!65822 (and d!187426 d!187318)))

(assert (=> bs!65822 (= lambda!15231 lambda!15198)))

(declare-fun bs!65823 () Bool)

(assert (= bs!65823 (and d!187426 d!187386)))

(assert (=> bs!65823 (= lambda!15231 lambda!15213)))

(declare-fun bs!65824 () Bool)

(assert (= bs!65824 (and d!187426 d!187398)))

(assert (=> bs!65824 (= lambda!15231 lambda!15219)))

(declare-fun bs!65825 () Bool)

(assert (= bs!65825 (and d!187426 d!187322)))

(assert (=> bs!65825 (= lambda!15231 lambda!15200)))

(declare-fun bs!65826 () Bool)

(assert (= bs!65826 (and d!187426 d!187304)))

(assert (=> bs!65826 (= lambda!15231 lambda!15192)))

(declare-fun bs!65827 () Bool)

(assert (= bs!65827 (and d!187426 d!187384)))

(assert (=> bs!65827 (= lambda!15231 lambda!15212)))

(declare-fun bs!65828 () Bool)

(assert (= bs!65828 (and d!187426 d!187362)))

(assert (=> bs!65828 (= lambda!15231 lambda!15203)))

(declare-fun bs!65829 () Bool)

(assert (= bs!65829 (and d!187426 d!187312)))

(assert (=> bs!65829 (= lambda!15231 lambda!15194)))

(declare-fun bs!65830 () Bool)

(assert (= bs!65830 (and d!187426 d!187368)))

(assert (=> bs!65830 (= lambda!15231 lambda!15204)))

(declare-fun bs!65831 () Bool)

(assert (= bs!65831 (and d!187426 d!187400)))

(assert (=> bs!65831 (= lambda!15231 lambda!15220)))

(declare-fun bs!65832 () Bool)

(assert (= bs!65832 (and d!187426 d!187416)))

(assert (=> bs!65832 (= lambda!15231 lambda!15227)))

(declare-fun bs!65833 () Bool)

(assert (= bs!65833 (and d!187426 d!187352)))

(assert (=> bs!65833 (= lambda!15231 lambda!15202)))

(declare-fun bs!65834 () Bool)

(assert (= bs!65834 (and d!187426 d!187414)))

(assert (=> bs!65834 (= lambda!15231 lambda!15226)))

(assert (=> d!187426 (= (inv!6177 setElem!2445) (forall!1485 (exprs!649 setElem!2445) lambda!15231))))

(declare-fun bs!65835 () Bool)

(assert (= bs!65835 d!187426))

(declare-fun m!771835 () Bool)

(assert (=> bs!65835 m!771835))

(assert (=> setNonEmpty!2444 d!187426))

(assert (=> b!525267 d!187274))

(declare-fun bs!65836 () Bool)

(declare-fun d!187428 () Bool)

(assert (= bs!65836 (and d!187428 d!187382)))

(declare-fun lambda!15232 () Int)

(assert (=> bs!65836 (= lambda!15232 lambda!15211)))

(declare-fun bs!65837 () Bool)

(assert (= bs!65837 (and d!187428 d!187328)))

(assert (=> bs!65837 (= lambda!15232 lambda!15201)))

(declare-fun bs!65838 () Bool)

(assert (= bs!65838 (and d!187428 d!187310)))

(assert (=> bs!65838 (= lambda!15232 lambda!15193)))

(declare-fun bs!65839 () Bool)

(assert (= bs!65839 (and d!187428 d!187426)))

(assert (=> bs!65839 (= lambda!15232 lambda!15231)))

(declare-fun bs!65840 () Bool)

(assert (= bs!65840 (and d!187428 d!187402)))

(assert (=> bs!65840 (= lambda!15232 lambda!15221)))

(declare-fun bs!65841 () Bool)

(assert (= bs!65841 (and d!187428 d!187396)))

(assert (=> bs!65841 (= lambda!15232 lambda!15218)))

(declare-fun bs!65842 () Bool)

(assert (= bs!65842 (and d!187428 d!187320)))

(assert (=> bs!65842 (= lambda!15232 lambda!15199)))

(declare-fun bs!65843 () Bool)

(assert (= bs!65843 (and d!187428 d!187408)))

(assert (=> bs!65843 (= lambda!15232 lambda!15222)))

(declare-fun bs!65844 () Bool)

(assert (= bs!65844 (and d!187428 d!187390)))

(assert (=> bs!65844 (= lambda!15232 lambda!15214)))

(declare-fun bs!65845 () Bool)

(assert (= bs!65845 (and d!187428 d!187318)))

(assert (=> bs!65845 (= lambda!15232 lambda!15198)))

(declare-fun bs!65846 () Bool)

(assert (= bs!65846 (and d!187428 d!187386)))

(assert (=> bs!65846 (= lambda!15232 lambda!15213)))

(declare-fun bs!65847 () Bool)

(assert (= bs!65847 (and d!187428 d!187398)))

(assert (=> bs!65847 (= lambda!15232 lambda!15219)))

(declare-fun bs!65848 () Bool)

(assert (= bs!65848 (and d!187428 d!187322)))

(assert (=> bs!65848 (= lambda!15232 lambda!15200)))

(declare-fun bs!65849 () Bool)

(assert (= bs!65849 (and d!187428 d!187304)))

(assert (=> bs!65849 (= lambda!15232 lambda!15192)))

(declare-fun bs!65850 () Bool)

(assert (= bs!65850 (and d!187428 d!187384)))

(assert (=> bs!65850 (= lambda!15232 lambda!15212)))

(declare-fun bs!65851 () Bool)

(assert (= bs!65851 (and d!187428 d!187362)))

(assert (=> bs!65851 (= lambda!15232 lambda!15203)))

(declare-fun bs!65852 () Bool)

(assert (= bs!65852 (and d!187428 d!187312)))

(assert (=> bs!65852 (= lambda!15232 lambda!15194)))

(declare-fun bs!65853 () Bool)

(assert (= bs!65853 (and d!187428 d!187368)))

(assert (=> bs!65853 (= lambda!15232 lambda!15204)))

(declare-fun bs!65854 () Bool)

(assert (= bs!65854 (and d!187428 d!187400)))

(assert (=> bs!65854 (= lambda!15232 lambda!15220)))

(declare-fun bs!65855 () Bool)

(assert (= bs!65855 (and d!187428 d!187416)))

(assert (=> bs!65855 (= lambda!15232 lambda!15227)))

(declare-fun bs!65856 () Bool)

(assert (= bs!65856 (and d!187428 d!187352)))

(assert (=> bs!65856 (= lambda!15232 lambda!15202)))

(declare-fun bs!65857 () Bool)

(assert (= bs!65857 (and d!187428 d!187414)))

(assert (=> bs!65857 (= lambda!15232 lambda!15226)))

(assert (=> d!187428 (= (inv!6177 setElem!2451) (forall!1485 (exprs!649 setElem!2451) lambda!15232))))

(declare-fun bs!65858 () Bool)

(assert (= bs!65858 d!187428))

(declare-fun m!771837 () Bool)

(assert (=> bs!65858 m!771837))

(assert (=> setNonEmpty!2451 d!187428))

(assert (=> d!187302 d!187380))

(declare-fun bs!65859 () Bool)

(declare-fun d!187430 () Bool)

(assert (= bs!65859 (and d!187430 d!187382)))

(declare-fun lambda!15233 () Int)

(assert (=> bs!65859 (= lambda!15233 lambda!15211)))

(declare-fun bs!65860 () Bool)

(assert (= bs!65860 (and d!187430 d!187328)))

(assert (=> bs!65860 (= lambda!15233 lambda!15201)))

(declare-fun bs!65861 () Bool)

(assert (= bs!65861 (and d!187430 d!187310)))

(assert (=> bs!65861 (= lambda!15233 lambda!15193)))

(declare-fun bs!65862 () Bool)

(assert (= bs!65862 (and d!187430 d!187426)))

(assert (=> bs!65862 (= lambda!15233 lambda!15231)))

(declare-fun bs!65863 () Bool)

(assert (= bs!65863 (and d!187430 d!187402)))

(assert (=> bs!65863 (= lambda!15233 lambda!15221)))

(declare-fun bs!65864 () Bool)

(assert (= bs!65864 (and d!187430 d!187396)))

(assert (=> bs!65864 (= lambda!15233 lambda!15218)))

(declare-fun bs!65865 () Bool)

(assert (= bs!65865 (and d!187430 d!187320)))

(assert (=> bs!65865 (= lambda!15233 lambda!15199)))

(declare-fun bs!65866 () Bool)

(assert (= bs!65866 (and d!187430 d!187408)))

(assert (=> bs!65866 (= lambda!15233 lambda!15222)))

(declare-fun bs!65867 () Bool)

(assert (= bs!65867 (and d!187430 d!187318)))

(assert (=> bs!65867 (= lambda!15233 lambda!15198)))

(declare-fun bs!65868 () Bool)

(assert (= bs!65868 (and d!187430 d!187386)))

(assert (=> bs!65868 (= lambda!15233 lambda!15213)))

(declare-fun bs!65869 () Bool)

(assert (= bs!65869 (and d!187430 d!187398)))

(assert (=> bs!65869 (= lambda!15233 lambda!15219)))

(declare-fun bs!65870 () Bool)

(assert (= bs!65870 (and d!187430 d!187322)))

(assert (=> bs!65870 (= lambda!15233 lambda!15200)))

(declare-fun bs!65871 () Bool)

(assert (= bs!65871 (and d!187430 d!187304)))

(assert (=> bs!65871 (= lambda!15233 lambda!15192)))

(declare-fun bs!65872 () Bool)

(assert (= bs!65872 (and d!187430 d!187384)))

(assert (=> bs!65872 (= lambda!15233 lambda!15212)))

(declare-fun bs!65873 () Bool)

(assert (= bs!65873 (and d!187430 d!187362)))

(assert (=> bs!65873 (= lambda!15233 lambda!15203)))

(declare-fun bs!65874 () Bool)

(assert (= bs!65874 (and d!187430 d!187312)))

(assert (=> bs!65874 (= lambda!15233 lambda!15194)))

(declare-fun bs!65875 () Bool)

(assert (= bs!65875 (and d!187430 d!187368)))

(assert (=> bs!65875 (= lambda!15233 lambda!15204)))

(declare-fun bs!65876 () Bool)

(assert (= bs!65876 (and d!187430 d!187400)))

(assert (=> bs!65876 (= lambda!15233 lambda!15220)))

(declare-fun bs!65877 () Bool)

(assert (= bs!65877 (and d!187430 d!187416)))

(assert (=> bs!65877 (= lambda!15233 lambda!15227)))

(declare-fun bs!65878 () Bool)

(assert (= bs!65878 (and d!187430 d!187352)))

(assert (=> bs!65878 (= lambda!15233 lambda!15202)))

(declare-fun bs!65879 () Bool)

(assert (= bs!65879 (and d!187430 d!187414)))

(assert (=> bs!65879 (= lambda!15233 lambda!15226)))

(declare-fun bs!65880 () Bool)

(assert (= bs!65880 (and d!187430 d!187428)))

(assert (=> bs!65880 (= lambda!15233 lambda!15232)))

(declare-fun bs!65881 () Bool)

(assert (= bs!65881 (and d!187430 d!187390)))

(assert (=> bs!65881 (= lambda!15233 lambda!15214)))

(assert (=> d!187430 (= (inv!6177 (_2!3257 (_1!3258 (h!10305 mapDefault!2228)))) (forall!1485 (exprs!649 (_2!3257 (_1!3258 (h!10305 mapDefault!2228)))) lambda!15233))))

(declare-fun bs!65882 () Bool)

(assert (= bs!65882 d!187430))

(declare-fun m!771839 () Bool)

(assert (=> bs!65882 m!771839))

(assert (=> b!525516 d!187430))

(declare-fun b!525771 () Bool)

(declare-fun res!222587 () Bool)

(declare-fun e!315748 () Bool)

(assert (=> b!525771 (=> (not res!222587) (not e!315748))))

(assert (=> b!525771 (= res!222587 (<= (- (height!249 (left!4200 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))) (height!249 (right!4530 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))))) 1))))

(declare-fun b!525772 () Bool)

(declare-fun res!222588 () Bool)

(assert (=> b!525772 (=> (not res!222588) (not e!315748))))

(assert (=> b!525772 (= res!222588 (isBalanced!494 (right!4530 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))))))

(declare-fun d!187432 () Bool)

(declare-fun res!222585 () Bool)

(declare-fun e!315749 () Bool)

(assert (=> d!187432 (=> res!222585 e!315749)))

(assert (=> d!187432 (= res!222585 (not ((_ is Node!1595) (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))))))

(assert (=> d!187432 (= (isBalanced!494 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))) e!315749)))

(declare-fun b!525773 () Bool)

(assert (=> b!525773 (= e!315748 (not (isEmpty!3601 (right!4530 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))))))))

(declare-fun b!525774 () Bool)

(declare-fun res!222584 () Bool)

(assert (=> b!525774 (=> (not res!222584) (not e!315748))))

(assert (=> b!525774 (= res!222584 (isBalanced!494 (left!4200 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))))))

(declare-fun b!525775 () Bool)

(assert (=> b!525775 (= e!315749 e!315748)))

(declare-fun res!222589 () Bool)

(assert (=> b!525775 (=> (not res!222589) (not e!315748))))

(assert (=> b!525775 (= res!222589 (<= (- 1) (- (height!249 (left!4200 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))) (height!249 (right!4530 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598))))))))))

(declare-fun b!525776 () Bool)

(declare-fun res!222586 () Bool)

(assert (=> b!525776 (=> (not res!222586) (not e!315748))))

(assert (=> b!525776 (= res!222586 (not (isEmpty!3601 (left!4200 (++!1374 (c!100955 (BalanceConc!3199 Empty!1595)) (c!100955 (_1!3259 lt!217598)))))))))

(assert (= (and d!187432 (not res!222585)) b!525775))

(assert (= (and b!525775 res!222589) b!525771))

(assert (= (and b!525771 res!222587) b!525774))

(assert (= (and b!525774 res!222584) b!525772))

(assert (= (and b!525772 res!222588) b!525776))

(assert (= (and b!525776 res!222586) b!525773))

(declare-fun m!771841 () Bool)

(assert (=> b!525775 m!771841))

(declare-fun m!771843 () Bool)

(assert (=> b!525775 m!771843))

(declare-fun m!771845 () Bool)

(assert (=> b!525772 m!771845))

(declare-fun m!771847 () Bool)

(assert (=> b!525776 m!771847))

(declare-fun m!771849 () Bool)

(assert (=> b!525773 m!771849))

(declare-fun m!771851 () Bool)

(assert (=> b!525774 m!771851))

(assert (=> b!525771 m!771841))

(assert (=> b!525771 m!771843))

(assert (=> b!525301 d!187432))

(assert (=> b!525301 d!187348))

(declare-fun b!525778 () Bool)

(declare-fun e!315750 () List!4910)

(declare-fun e!315751 () List!4910)

(assert (=> b!525778 (= e!315750 e!315751)))

(declare-fun c!101036 () Bool)

(assert (=> b!525778 (= c!101036 ((_ is Leaf!2540) (c!100954 input!747)))))

(declare-fun b!525777 () Bool)

(assert (=> b!525777 (= e!315750 Nil!4900)))

(declare-fun b!525780 () Bool)

(assert (=> b!525780 (= e!315751 (++!1373 (list!2056 (left!4199 (c!100954 input!747))) (list!2056 (right!4529 (c!100954 input!747)))))))

(declare-fun d!187434 () Bool)

(declare-fun c!101035 () Bool)

(assert (=> d!187434 (= c!101035 ((_ is Empty!1594) (c!100954 input!747)))))

(assert (=> d!187434 (= (list!2056 (c!100954 input!747)) e!315750)))

(declare-fun b!525779 () Bool)

(assert (=> b!525779 (= e!315751 (list!2059 (xs!4229 (c!100954 input!747))))))

(assert (= (and d!187434 c!101035) b!525777))

(assert (= (and d!187434 (not c!101035)) b!525778))

(assert (= (and b!525778 c!101036) b!525779))

(assert (= (and b!525778 (not c!101036)) b!525780))

(declare-fun m!771853 () Bool)

(assert (=> b!525780 m!771853))

(declare-fun m!771855 () Bool)

(assert (=> b!525780 m!771855))

(assert (=> b!525780 m!771853))

(assert (=> b!525780 m!771855))

(declare-fun m!771857 () Bool)

(assert (=> b!525780 m!771857))

(assert (=> b!525779 m!771619))

(assert (=> d!187282 d!187434))

(declare-fun b!525781 () Bool)

(declare-fun e!315752 () List!4917)

(assert (=> b!525781 (= e!315752 Nil!4907)))

(declare-fun b!525783 () Bool)

(declare-fun e!315753 () List!4917)

(assert (=> b!525783 (= e!315753 (list!2058 (xs!4230 (c!100955 (BalanceConc!3199 Empty!1595)))))))

(declare-fun d!187436 () Bool)

(declare-fun c!101037 () Bool)

(assert (=> d!187436 (= c!101037 ((_ is Empty!1595) (c!100955 (BalanceConc!3199 Empty!1595))))))

(assert (=> d!187436 (= (list!2057 (c!100955 (BalanceConc!3199 Empty!1595))) e!315752)))

(declare-fun b!525782 () Bool)

(assert (=> b!525782 (= e!315752 e!315753)))

(declare-fun c!101038 () Bool)

(assert (=> b!525782 (= c!101038 ((_ is Leaf!2541) (c!100955 (BalanceConc!3199 Empty!1595))))))

(declare-fun b!525784 () Bool)

(assert (=> b!525784 (= e!315753 (++!1375 (list!2057 (left!4200 (c!100955 (BalanceConc!3199 Empty!1595)))) (list!2057 (right!4530 (c!100955 (BalanceConc!3199 Empty!1595))))))))

(assert (= (and d!187436 c!101037) b!525781))

(assert (= (and d!187436 (not c!101037)) b!525782))

(assert (= (and b!525782 c!101038) b!525783))

(assert (= (and b!525782 (not c!101038)) b!525784))

(declare-fun m!771859 () Bool)

(assert (=> b!525783 m!771859))

(assert (=> b!525784 m!771685))

(assert (=> b!525784 m!771687))

(assert (=> b!525784 m!771685))

(assert (=> b!525784 m!771687))

(declare-fun m!771861 () Bool)

(assert (=> b!525784 m!771861))

(assert (=> d!187290 d!187436))

(declare-fun d!187438 () Bool)

(assert (=> d!187438 (= (inv!6162 (tag!1148 (h!10307 (t!73521 rules!1345)))) (= (mod (str.len (value!30104 (tag!1148 (h!10307 (t!73521 rules!1345))))) 2) 0))))

(assert (=> b!525419 d!187438))

(declare-fun d!187440 () Bool)

(declare-fun res!222590 () Bool)

(declare-fun e!315754 () Bool)

(assert (=> d!187440 (=> (not res!222590) (not e!315754))))

(assert (=> d!187440 (= res!222590 (semiInverseModEq!355 (toChars!1578 (transformation!886 (h!10307 (t!73521 rules!1345)))) (toValue!1719 (transformation!886 (h!10307 (t!73521 rules!1345))))))))

(assert (=> d!187440 (= (inv!6170 (transformation!886 (h!10307 (t!73521 rules!1345)))) e!315754)))

(declare-fun b!525785 () Bool)

(assert (=> b!525785 (= e!315754 (equivClasses!338 (toChars!1578 (transformation!886 (h!10307 (t!73521 rules!1345)))) (toValue!1719 (transformation!886 (h!10307 (t!73521 rules!1345))))))))

(assert (= (and d!187440 res!222590) b!525785))

(declare-fun m!771863 () Bool)

(assert (=> d!187440 m!771863))

(declare-fun m!771865 () Bool)

(assert (=> b!525785 m!771865))

(assert (=> b!525419 d!187440))

(declare-fun d!187442 () Bool)

(declare-fun lt!217659 () Int)

(assert (=> d!187442 (= lt!217659 (size!4008 (list!2054 (_1!3259 lt!217609))))))

(declare-fun size!4009 (Conc!1595) Int)

(assert (=> d!187442 (= lt!217659 (size!4009 (c!100955 (_1!3259 lt!217609))))))

(assert (=> d!187442 (= (size!4004 (_1!3259 lt!217609)) lt!217659)))

(declare-fun bs!65883 () Bool)

(assert (= bs!65883 d!187442))

(assert (=> bs!65883 m!771402))

(assert (=> bs!65883 m!771402))

(declare-fun m!771867 () Bool)

(assert (=> bs!65883 m!771867))

(declare-fun m!771869 () Bool)

(assert (=> bs!65883 m!771869))

(assert (=> d!187258 d!187442))

(declare-fun b!525802 () Bool)

(declare-fun e!315771 () Bool)

(declare-fun e!315769 () Bool)

(assert (=> b!525802 (= e!315771 e!315769)))

(declare-fun res!222605 () Bool)

(assert (=> b!525802 (=> (not res!222605) (not e!315769))))

(declare-fun lt!217677 () Option!1246)

(declare-fun get!1853 (Option!1246) tuple2!6048)

(declare-fun get!1854 (Option!1247) tuple2!6052)

(declare-fun maxPrefixZipper!203 (LexerInterface!772 List!4916 List!4910) Option!1247)

(assert (=> b!525802 (= res!222605 (= (_1!3260 (get!1853 lt!217677)) (_1!3262 (get!1854 (maxPrefixZipper!203 thiss!12147 rules!1345 (list!2055 input!747))))))))

(declare-fun b!525803 () Bool)

(assert (=> b!525803 (= e!315769 (= (list!2055 (_2!3260 (get!1853 lt!217677))) (_2!3262 (get!1854 (maxPrefixZipper!203 thiss!12147 rules!1345 (list!2055 input!747))))))))

(declare-fun b!525804 () Bool)

(declare-fun e!315768 () Option!1246)

(declare-fun call!38107 () Option!1246)

(assert (=> b!525804 (= e!315768 call!38107)))

(declare-fun b!525805 () Bool)

(declare-fun e!315772 () Bool)

(declare-fun e!315767 () Bool)

(assert (=> b!525805 (= e!315772 e!315767)))

(declare-fun res!222603 () Bool)

(assert (=> b!525805 (=> res!222603 e!315767)))

(declare-fun isDefined!1060 (Option!1246) Bool)

(assert (=> b!525805 (= res!222603 (not (isDefined!1060 lt!217677)))))

(declare-fun b!525806 () Bool)

(declare-fun e!315770 () Bool)

(assert (=> b!525806 (= e!315767 e!315770)))

(declare-fun res!222606 () Bool)

(assert (=> b!525806 (=> (not res!222606) (not e!315770))))

(assert (=> b!525806 (= res!222606 (= (_1!3260 (get!1853 lt!217677)) (_1!3262 (get!1854 (maxPrefix!482 thiss!12147 rules!1345 (list!2055 input!747))))))))

(declare-fun bm!38102 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!204 (LexerInterface!772 Rule!1572 BalanceConc!3196) Option!1246)

(assert (=> bm!38102 (= call!38107 (maxPrefixOneRuleZipperSequence!204 thiss!12147 (h!10307 rules!1345) input!747))))

(declare-fun b!525807 () Bool)

(declare-fun res!222604 () Bool)

(assert (=> b!525807 (=> (not res!222604) (not e!315772))))

(assert (=> b!525807 (= res!222604 e!315771)))

(declare-fun res!222608 () Bool)

(assert (=> b!525807 (=> res!222608 e!315771)))

(assert (=> b!525807 (= res!222608 (not (isDefined!1060 lt!217677)))))

(declare-fun d!187444 () Bool)

(assert (=> d!187444 e!315772))

(declare-fun res!222607 () Bool)

(assert (=> d!187444 (=> (not res!222607) (not e!315772))))

(declare-fun isDefined!1061 (Option!1247) Bool)

(assert (=> d!187444 (= res!222607 (= (isDefined!1060 lt!217677) (isDefined!1061 (maxPrefixZipper!203 thiss!12147 rules!1345 (list!2055 input!747)))))))

(assert (=> d!187444 (= lt!217677 e!315768)))

(declare-fun c!101041 () Bool)

(assert (=> d!187444 (= c!101041 (and ((_ is Cons!4906) rules!1345) ((_ is Nil!4906) (t!73521 rules!1345))))))

(declare-datatypes ((Unit!8796 0))(
  ( (Unit!8797) )
))
(declare-fun lt!217676 () Unit!8796)

(declare-fun lt!217680 () Unit!8796)

(assert (=> d!187444 (= lt!217676 lt!217680)))

(declare-fun lt!217678 () List!4910)

(declare-fun lt!217674 () List!4910)

(declare-fun isPrefix!554 (List!4910 List!4910) Bool)

(assert (=> d!187444 (isPrefix!554 lt!217678 lt!217674)))

(declare-fun lemmaIsPrefixRefl!300 (List!4910 List!4910) Unit!8796)

(assert (=> d!187444 (= lt!217680 (lemmaIsPrefixRefl!300 lt!217678 lt!217674))))

(assert (=> d!187444 (= lt!217674 (list!2055 input!747))))

(assert (=> d!187444 (= lt!217678 (list!2055 input!747))))

(assert (=> d!187444 (rulesValidInductive!296 thiss!12147 rules!1345)))

(assert (=> d!187444 (= (maxPrefixZipperSequence!445 thiss!12147 rules!1345 input!747) lt!217677)))

(declare-fun b!525808 () Bool)

(assert (=> b!525808 (= e!315770 (= (list!2055 (_2!3260 (get!1853 lt!217677))) (_2!3262 (get!1854 (maxPrefix!482 thiss!12147 rules!1345 (list!2055 input!747))))))))

(declare-fun b!525809 () Bool)

(declare-fun lt!217675 () Option!1246)

(declare-fun lt!217679 () Option!1246)

(assert (=> b!525809 (= e!315768 (ite (and ((_ is None!1245) lt!217675) ((_ is None!1245) lt!217679)) None!1245 (ite ((_ is None!1245) lt!217679) lt!217675 (ite ((_ is None!1245) lt!217675) lt!217679 (ite (>= (size!4003 (_1!3260 (v!15985 lt!217675))) (size!4003 (_1!3260 (v!15985 lt!217679)))) lt!217675 lt!217679)))))))

(assert (=> b!525809 (= lt!217675 call!38107)))

(assert (=> b!525809 (= lt!217679 (maxPrefixZipperSequence!445 thiss!12147 (t!73521 rules!1345) input!747))))

(assert (= (and d!187444 c!101041) b!525804))

(assert (= (and d!187444 (not c!101041)) b!525809))

(assert (= (or b!525804 b!525809) bm!38102))

(assert (= (and d!187444 res!222607) b!525807))

(assert (= (and b!525807 (not res!222608)) b!525802))

(assert (= (and b!525802 res!222605) b!525803))

(assert (= (and b!525807 res!222604) b!525805))

(assert (= (and b!525805 (not res!222603)) b!525806))

(assert (= (and b!525806 res!222606) b!525808))

(declare-fun m!771871 () Bool)

(assert (=> b!525808 m!771871))

(assert (=> b!525808 m!771320))

(assert (=> b!525808 m!771721))

(declare-fun m!771873 () Bool)

(assert (=> b!525808 m!771873))

(assert (=> b!525808 m!771320))

(assert (=> b!525808 m!771721))

(declare-fun m!771875 () Bool)

(assert (=> b!525808 m!771875))

(declare-fun m!771877 () Bool)

(assert (=> bm!38102 m!771877))

(assert (=> b!525806 m!771873))

(assert (=> b!525806 m!771320))

(assert (=> b!525806 m!771320))

(assert (=> b!525806 m!771721))

(assert (=> b!525806 m!771721))

(assert (=> b!525806 m!771875))

(assert (=> b!525803 m!771871))

(declare-fun m!771879 () Bool)

(assert (=> b!525803 m!771879))

(declare-fun m!771881 () Bool)

(assert (=> b!525803 m!771881))

(assert (=> b!525803 m!771873))

(assert (=> b!525803 m!771320))

(assert (=> b!525803 m!771320))

(assert (=> b!525803 m!771879))

(declare-fun m!771883 () Bool)

(assert (=> b!525809 m!771883))

(declare-fun m!771885 () Bool)

(assert (=> b!525805 m!771885))

(assert (=> b!525807 m!771885))

(assert (=> b!525802 m!771873))

(assert (=> b!525802 m!771320))

(assert (=> b!525802 m!771320))

(assert (=> b!525802 m!771879))

(assert (=> b!525802 m!771879))

(assert (=> b!525802 m!771881))

(declare-fun m!771887 () Bool)

(assert (=> d!187444 m!771887))

(declare-fun m!771889 () Bool)

(assert (=> d!187444 m!771889))

(assert (=> d!187444 m!771320))

(assert (=> d!187444 m!771320))

(assert (=> d!187444 m!771879))

(assert (=> d!187444 m!771879))

(declare-fun m!771891 () Bool)

(assert (=> d!187444 m!771891))

(assert (=> d!187444 m!771805))

(assert (=> d!187444 m!771885))

(assert (=> d!187258 d!187444))

(declare-fun d!187446 () Bool)

(declare-fun e!315775 () Bool)

(assert (=> d!187446 e!315775))

(declare-fun res!222611 () Bool)

(assert (=> d!187446 (=> (not res!222611) (not e!315775))))

(declare-fun prepend!241 (Conc!1595 Token!1510) Conc!1595)

(assert (=> d!187446 (= res!222611 (isBalanced!494 (prepend!241 (c!100955 (_1!3259 lt!217610)) (_1!3260 (v!15985 lt!217611)))))))

(declare-fun lt!217683 () BalanceConc!3198)

(assert (=> d!187446 (= lt!217683 (BalanceConc!3199 (prepend!241 (c!100955 (_1!3259 lt!217610)) (_1!3260 (v!15985 lt!217611)))))))

(assert (=> d!187446 (= (prepend!240 (_1!3259 lt!217610) (_1!3260 (v!15985 lt!217611))) lt!217683)))

(declare-fun b!525812 () Bool)

(assert (=> b!525812 (= e!315775 (= (list!2054 lt!217683) (Cons!4907 (_1!3260 (v!15985 lt!217611)) (list!2054 (_1!3259 lt!217610)))))))

(assert (= (and d!187446 res!222611) b!525812))

(declare-fun m!771893 () Bool)

(assert (=> d!187446 m!771893))

(assert (=> d!187446 m!771893))

(declare-fun m!771895 () Bool)

(assert (=> d!187446 m!771895))

(declare-fun m!771897 () Bool)

(assert (=> b!525812 m!771897))

(declare-fun m!771899 () Bool)

(assert (=> b!525812 m!771899))

(assert (=> b!525323 d!187446))

(declare-fun b!525813 () Bool)

(declare-fun e!315776 () Bool)

(declare-fun lt!217684 () tuple2!6046)

(assert (=> b!525813 (= e!315776 (= (list!2055 (_2!3259 lt!217684)) (list!2055 (_2!3260 (v!15985 lt!217611)))))))

(declare-fun d!187448 () Bool)

(declare-fun e!315778 () Bool)

(assert (=> d!187448 e!315778))

(declare-fun res!222614 () Bool)

(assert (=> d!187448 (=> (not res!222614) (not e!315778))))

(assert (=> d!187448 (= res!222614 e!315776)))

(declare-fun c!101044 () Bool)

(assert (=> d!187448 (= c!101044 (> (size!4004 (_1!3259 lt!217684)) 0))))

(declare-fun e!315777 () tuple2!6046)

(assert (=> d!187448 (= lt!217684 e!315777)))

(declare-fun c!101043 () Bool)

(declare-fun lt!217686 () Option!1246)

(assert (=> d!187448 (= c!101043 ((_ is Some!1245) lt!217686))))

(assert (=> d!187448 (= lt!217686 (maxPrefixZipperSequence!445 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217611))))))

(assert (=> d!187448 (= (lexRec!140 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217611))) lt!217684)))

(declare-fun b!525814 () Bool)

(assert (=> b!525814 (= e!315777 (tuple2!6047 (BalanceConc!3199 Empty!1595) (_2!3260 (v!15985 lt!217611))))))

(declare-fun b!525815 () Bool)

(assert (=> b!525815 (= e!315778 (= (list!2055 (_2!3259 lt!217684)) (_2!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 (_2!3260 (v!15985 lt!217611)))))))))

(declare-fun b!525816 () Bool)

(declare-fun e!315779 () Bool)

(assert (=> b!525816 (= e!315779 (not (isEmpty!3599 (_1!3259 lt!217684))))))

(declare-fun b!525817 () Bool)

(declare-fun lt!217685 () tuple2!6046)

(assert (=> b!525817 (= e!315777 (tuple2!6047 (prepend!240 (_1!3259 lt!217685) (_1!3260 (v!15985 lt!217686))) (_2!3259 lt!217685)))))

(assert (=> b!525817 (= lt!217685 (lexRec!140 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217686))))))

(declare-fun b!525818 () Bool)

(assert (=> b!525818 (= e!315776 e!315779)))

(declare-fun res!222612 () Bool)

(assert (=> b!525818 (= res!222612 (< (size!4005 (_2!3259 lt!217684)) (size!4005 (_2!3260 (v!15985 lt!217611)))))))

(assert (=> b!525818 (=> (not res!222612) (not e!315779))))

(declare-fun b!525819 () Bool)

(declare-fun res!222613 () Bool)

(assert (=> b!525819 (=> (not res!222613) (not e!315778))))

(assert (=> b!525819 (= res!222613 (= (list!2054 (_1!3259 lt!217684)) (_1!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 (_2!3260 (v!15985 lt!217611)))))))))

(assert (= (and d!187448 c!101043) b!525817))

(assert (= (and d!187448 (not c!101043)) b!525814))

(assert (= (and d!187448 c!101044) b!525818))

(assert (= (and d!187448 (not c!101044)) b!525813))

(assert (= (and b!525818 res!222612) b!525816))

(assert (= (and d!187448 res!222614) b!525819))

(assert (= (and b!525819 res!222613) b!525815))

(declare-fun m!771901 () Bool)

(assert (=> b!525816 m!771901))

(declare-fun m!771903 () Bool)

(assert (=> b!525813 m!771903))

(declare-fun m!771905 () Bool)

(assert (=> b!525813 m!771905))

(declare-fun m!771907 () Bool)

(assert (=> b!525817 m!771907))

(declare-fun m!771909 () Bool)

(assert (=> b!525817 m!771909))

(declare-fun m!771911 () Bool)

(assert (=> b!525819 m!771911))

(assert (=> b!525819 m!771905))

(assert (=> b!525819 m!771905))

(declare-fun m!771913 () Bool)

(assert (=> b!525819 m!771913))

(declare-fun m!771915 () Bool)

(assert (=> b!525818 m!771915))

(declare-fun m!771917 () Bool)

(assert (=> b!525818 m!771917))

(assert (=> b!525815 m!771903))

(assert (=> b!525815 m!771905))

(assert (=> b!525815 m!771905))

(assert (=> b!525815 m!771913))

(declare-fun m!771919 () Bool)

(assert (=> d!187448 m!771919))

(declare-fun m!771921 () Bool)

(assert (=> d!187448 m!771921))

(assert (=> b!525323 d!187448))

(declare-fun d!187450 () Bool)

(assert (=> d!187450 (= (list!2055 (_2!3259 lt!217609)) (list!2056 (c!100954 (_2!3259 lt!217609))))))

(declare-fun bs!65884 () Bool)

(assert (= bs!65884 d!187450))

(declare-fun m!771923 () Bool)

(assert (=> bs!65884 m!771923))

(assert (=> b!525319 d!187450))

(assert (=> b!525319 d!187282))

(assert (=> b!525321 d!187450))

(assert (=> b!525321 d!187366))

(assert (=> b!525321 d!187282))

(declare-fun bs!65885 () Bool)

(declare-fun d!187452 () Bool)

(assert (= bs!65885 (and d!187452 d!187382)))

(declare-fun lambda!15234 () Int)

(assert (=> bs!65885 (= lambda!15234 lambda!15211)))

(declare-fun bs!65886 () Bool)

(assert (= bs!65886 (and d!187452 d!187310)))

(assert (=> bs!65886 (= lambda!15234 lambda!15193)))

(declare-fun bs!65887 () Bool)

(assert (= bs!65887 (and d!187452 d!187426)))

(assert (=> bs!65887 (= lambda!15234 lambda!15231)))

(declare-fun bs!65888 () Bool)

(assert (= bs!65888 (and d!187452 d!187402)))

(assert (=> bs!65888 (= lambda!15234 lambda!15221)))

(declare-fun bs!65889 () Bool)

(assert (= bs!65889 (and d!187452 d!187396)))

(assert (=> bs!65889 (= lambda!15234 lambda!15218)))

(declare-fun bs!65890 () Bool)

(assert (= bs!65890 (and d!187452 d!187320)))

(assert (=> bs!65890 (= lambda!15234 lambda!15199)))

(declare-fun bs!65891 () Bool)

(assert (= bs!65891 (and d!187452 d!187408)))

(assert (=> bs!65891 (= lambda!15234 lambda!15222)))

(declare-fun bs!65892 () Bool)

(assert (= bs!65892 (and d!187452 d!187318)))

(assert (=> bs!65892 (= lambda!15234 lambda!15198)))

(declare-fun bs!65893 () Bool)

(assert (= bs!65893 (and d!187452 d!187386)))

(assert (=> bs!65893 (= lambda!15234 lambda!15213)))

(declare-fun bs!65894 () Bool)

(assert (= bs!65894 (and d!187452 d!187398)))

(assert (=> bs!65894 (= lambda!15234 lambda!15219)))

(declare-fun bs!65895 () Bool)

(assert (= bs!65895 (and d!187452 d!187322)))

(assert (=> bs!65895 (= lambda!15234 lambda!15200)))

(declare-fun bs!65896 () Bool)

(assert (= bs!65896 (and d!187452 d!187304)))

(assert (=> bs!65896 (= lambda!15234 lambda!15192)))

(declare-fun bs!65897 () Bool)

(assert (= bs!65897 (and d!187452 d!187430)))

(assert (=> bs!65897 (= lambda!15234 lambda!15233)))

(declare-fun bs!65898 () Bool)

(assert (= bs!65898 (and d!187452 d!187328)))

(assert (=> bs!65898 (= lambda!15234 lambda!15201)))

(declare-fun bs!65899 () Bool)

(assert (= bs!65899 (and d!187452 d!187384)))

(assert (=> bs!65899 (= lambda!15234 lambda!15212)))

(declare-fun bs!65900 () Bool)

(assert (= bs!65900 (and d!187452 d!187362)))

(assert (=> bs!65900 (= lambda!15234 lambda!15203)))

(declare-fun bs!65901 () Bool)

(assert (= bs!65901 (and d!187452 d!187312)))

(assert (=> bs!65901 (= lambda!15234 lambda!15194)))

(declare-fun bs!65902 () Bool)

(assert (= bs!65902 (and d!187452 d!187368)))

(assert (=> bs!65902 (= lambda!15234 lambda!15204)))

(declare-fun bs!65903 () Bool)

(assert (= bs!65903 (and d!187452 d!187400)))

(assert (=> bs!65903 (= lambda!15234 lambda!15220)))

(declare-fun bs!65904 () Bool)

(assert (= bs!65904 (and d!187452 d!187416)))

(assert (=> bs!65904 (= lambda!15234 lambda!15227)))

(declare-fun bs!65905 () Bool)

(assert (= bs!65905 (and d!187452 d!187352)))

(assert (=> bs!65905 (= lambda!15234 lambda!15202)))

(declare-fun bs!65906 () Bool)

(assert (= bs!65906 (and d!187452 d!187414)))

(assert (=> bs!65906 (= lambda!15234 lambda!15226)))

(declare-fun bs!65907 () Bool)

(assert (= bs!65907 (and d!187452 d!187428)))

(assert (=> bs!65907 (= lambda!15234 lambda!15232)))

(declare-fun bs!65908 () Bool)

(assert (= bs!65908 (and d!187452 d!187390)))

(assert (=> bs!65908 (= lambda!15234 lambda!15214)))

(assert (=> d!187452 (= (inv!6177 setElem!2438) (forall!1485 (exprs!649 setElem!2438) lambda!15234))))

(declare-fun bs!65909 () Bool)

(assert (= bs!65909 d!187452))

(declare-fun m!771925 () Bool)

(assert (=> bs!65909 m!771925))

(assert (=> setNonEmpty!2438 d!187452))

(declare-fun b!525821 () Bool)

(declare-fun e!315780 () List!4910)

(declare-fun e!315781 () List!4910)

(assert (=> b!525821 (= e!315780 e!315781)))

(declare-fun c!101046 () Bool)

(assert (=> b!525821 (= c!101046 ((_ is Leaf!2540) (c!100954 (BalanceConc!3197 Empty!1594))))))

(declare-fun b!525820 () Bool)

(assert (=> b!525820 (= e!315780 Nil!4900)))

(declare-fun b!525823 () Bool)

(assert (=> b!525823 (= e!315781 (++!1373 (list!2056 (left!4199 (c!100954 (BalanceConc!3197 Empty!1594)))) (list!2056 (right!4529 (c!100954 (BalanceConc!3197 Empty!1594))))))))

(declare-fun d!187454 () Bool)

(declare-fun c!101045 () Bool)

(assert (=> d!187454 (= c!101045 ((_ is Empty!1594) (c!100954 (BalanceConc!3197 Empty!1594))))))

(assert (=> d!187454 (= (list!2056 (c!100954 (BalanceConc!3197 Empty!1594))) e!315780)))

(declare-fun b!525822 () Bool)

(assert (=> b!525822 (= e!315781 (list!2059 (xs!4229 (c!100954 (BalanceConc!3197 Empty!1594)))))))

(assert (= (and d!187454 c!101045) b!525820))

(assert (= (and d!187454 (not c!101045)) b!525821))

(assert (= (and b!525821 c!101046) b!525822))

(assert (= (and b!525821 (not c!101046)) b!525823))

(declare-fun m!771927 () Bool)

(assert (=> b!525823 m!771927))

(declare-fun m!771929 () Bool)

(assert (=> b!525823 m!771929))

(assert (=> b!525823 m!771927))

(assert (=> b!525823 m!771929))

(declare-fun m!771931 () Bool)

(assert (=> b!525823 m!771931))

(declare-fun m!771933 () Bool)

(assert (=> b!525822 m!771933))

(assert (=> d!187284 d!187454))

(declare-fun d!187456 () Bool)

(declare-fun res!222619 () Bool)

(declare-fun e!315786 () Bool)

(assert (=> d!187456 (=> res!222619 e!315786)))

(assert (=> d!187456 (= res!222619 ((_ is Nil!4906) rules!1345))))

(assert (=> d!187456 (= (noDuplicateTag!320 thiss!12147 rules!1345 Nil!4908) e!315786)))

(declare-fun b!525828 () Bool)

(declare-fun e!315787 () Bool)

(assert (=> b!525828 (= e!315786 e!315787)))

(declare-fun res!222620 () Bool)

(assert (=> b!525828 (=> (not res!222620) (not e!315787))))

(declare-fun contains!1173 (List!4918 String!6276) Bool)

(assert (=> b!525828 (= res!222620 (not (contains!1173 Nil!4908 (tag!1148 (h!10307 rules!1345)))))))

(declare-fun b!525829 () Bool)

(assert (=> b!525829 (= e!315787 (noDuplicateTag!320 thiss!12147 (t!73521 rules!1345) (Cons!4908 (tag!1148 (h!10307 rules!1345)) Nil!4908)))))

(assert (= (and d!187456 (not res!222619)) b!525828))

(assert (= (and b!525828 res!222620) b!525829))

(declare-fun m!771935 () Bool)

(assert (=> b!525828 m!771935))

(declare-fun m!771937 () Bool)

(assert (=> b!525829 m!771937))

(assert (=> b!525371 d!187456))

(declare-fun d!187458 () Bool)

(declare-fun e!315788 () Bool)

(assert (=> d!187458 e!315788))

(declare-fun res!222621 () Bool)

(assert (=> d!187458 (=> (not res!222621) (not e!315788))))

(assert (=> d!187458 (= res!222621 (isBalanced!494 (prepend!241 (c!100955 (_1!3259 lt!217616)) (_1!3260 (v!15985 lt!217617)))))))

(declare-fun lt!217687 () BalanceConc!3198)

(assert (=> d!187458 (= lt!217687 (BalanceConc!3199 (prepend!241 (c!100955 (_1!3259 lt!217616)) (_1!3260 (v!15985 lt!217617)))))))

(assert (=> d!187458 (= (prepend!240 (_1!3259 lt!217616) (_1!3260 (v!15985 lt!217617))) lt!217687)))

(declare-fun b!525830 () Bool)

(assert (=> b!525830 (= e!315788 (= (list!2054 lt!217687) (Cons!4907 (_1!3260 (v!15985 lt!217617)) (list!2054 (_1!3259 lt!217616)))))))

(assert (= (and d!187458 res!222621) b!525830))

(declare-fun m!771939 () Bool)

(assert (=> d!187458 m!771939))

(assert (=> d!187458 m!771939))

(declare-fun m!771941 () Bool)

(assert (=> d!187458 m!771941))

(declare-fun m!771943 () Bool)

(assert (=> b!525830 m!771943))

(declare-fun m!771945 () Bool)

(assert (=> b!525830 m!771945))

(assert (=> b!525363 d!187458))

(declare-fun b!525831 () Bool)

(declare-fun e!315789 () Bool)

(declare-fun lt!217688 () tuple2!6046)

(assert (=> b!525831 (= e!315789 (= (list!2055 (_2!3259 lt!217688)) (list!2055 (_2!3260 (v!15985 lt!217617)))))))

(declare-fun d!187460 () Bool)

(declare-fun e!315791 () Bool)

(assert (=> d!187460 e!315791))

(declare-fun res!222624 () Bool)

(assert (=> d!187460 (=> (not res!222624) (not e!315791))))

(assert (=> d!187460 (= res!222624 e!315789)))

(declare-fun c!101048 () Bool)

(assert (=> d!187460 (= c!101048 (> (size!4004 (_1!3259 lt!217688)) 0))))

(declare-fun e!315790 () tuple2!6046)

(assert (=> d!187460 (= lt!217688 e!315790)))

(declare-fun c!101047 () Bool)

(declare-fun lt!217690 () Option!1246)

(assert (=> d!187460 (= c!101047 ((_ is Some!1245) lt!217690))))

(assert (=> d!187460 (= lt!217690 (maxPrefixZipperSequence!445 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217617))))))

(assert (=> d!187460 (= (lexRec!140 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217617))) lt!217688)))

(declare-fun b!525832 () Bool)

(assert (=> b!525832 (= e!315790 (tuple2!6047 (BalanceConc!3199 Empty!1595) (_2!3260 (v!15985 lt!217617))))))

(declare-fun b!525833 () Bool)

(assert (=> b!525833 (= e!315791 (= (list!2055 (_2!3259 lt!217688)) (_2!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 (_2!3260 (v!15985 lt!217617)))))))))

(declare-fun b!525834 () Bool)

(declare-fun e!315792 () Bool)

(assert (=> b!525834 (= e!315792 (not (isEmpty!3599 (_1!3259 lt!217688))))))

(declare-fun b!525835 () Bool)

(declare-fun lt!217689 () tuple2!6046)

(assert (=> b!525835 (= e!315790 (tuple2!6047 (prepend!240 (_1!3259 lt!217689) (_1!3260 (v!15985 lt!217690))) (_2!3259 lt!217689)))))

(assert (=> b!525835 (= lt!217689 (lexRec!140 thiss!12147 rules!1345 (_2!3260 (v!15985 lt!217690))))))

(declare-fun b!525836 () Bool)

(assert (=> b!525836 (= e!315789 e!315792)))

(declare-fun res!222622 () Bool)

(assert (=> b!525836 (= res!222622 (< (size!4005 (_2!3259 lt!217688)) (size!4005 (_2!3260 (v!15985 lt!217617)))))))

(assert (=> b!525836 (=> (not res!222622) (not e!315792))))

(declare-fun b!525837 () Bool)

(declare-fun res!222623 () Bool)

(assert (=> b!525837 (=> (not res!222623) (not e!315791))))

(assert (=> b!525837 (= res!222623 (= (list!2054 (_1!3259 lt!217688)) (_1!3261 (lexList!304 thiss!12147 rules!1345 (list!2055 (_2!3260 (v!15985 lt!217617)))))))))

(assert (= (and d!187460 c!101047) b!525835))

(assert (= (and d!187460 (not c!101047)) b!525832))

(assert (= (and d!187460 c!101048) b!525836))

(assert (= (and d!187460 (not c!101048)) b!525831))

(assert (= (and b!525836 res!222622) b!525834))

(assert (= (and d!187460 res!222624) b!525837))

(assert (= (and b!525837 res!222623) b!525833))

(declare-fun m!771947 () Bool)

(assert (=> b!525834 m!771947))

(declare-fun m!771949 () Bool)

(assert (=> b!525831 m!771949))

(declare-fun m!771951 () Bool)

(assert (=> b!525831 m!771951))

(declare-fun m!771953 () Bool)

(assert (=> b!525835 m!771953))

(declare-fun m!771955 () Bool)

(assert (=> b!525835 m!771955))

(declare-fun m!771957 () Bool)

(assert (=> b!525837 m!771957))

(assert (=> b!525837 m!771951))

(assert (=> b!525837 m!771951))

(declare-fun m!771959 () Bool)

(assert (=> b!525837 m!771959))

(declare-fun m!771961 () Bool)

(assert (=> b!525836 m!771961))

(declare-fun m!771963 () Bool)

(assert (=> b!525836 m!771963))

(assert (=> b!525833 m!771949))

(assert (=> b!525833 m!771951))

(assert (=> b!525833 m!771951))

(assert (=> b!525833 m!771959))

(declare-fun m!771965 () Bool)

(assert (=> d!187460 m!771965))

(declare-fun m!771967 () Bool)

(assert (=> d!187460 m!771967))

(assert (=> b!525363 d!187460))

(declare-fun bs!65910 () Bool)

(declare-fun d!187462 () Bool)

(assert (= bs!65910 (and d!187462 d!187382)))

(declare-fun lambda!15235 () Int)

(assert (=> bs!65910 (= lambda!15235 lambda!15211)))

(declare-fun bs!65911 () Bool)

(assert (= bs!65911 (and d!187462 d!187310)))

(assert (=> bs!65911 (= lambda!15235 lambda!15193)))

(declare-fun bs!65912 () Bool)

(assert (= bs!65912 (and d!187462 d!187426)))

(assert (=> bs!65912 (= lambda!15235 lambda!15231)))

(declare-fun bs!65913 () Bool)

(assert (= bs!65913 (and d!187462 d!187402)))

(assert (=> bs!65913 (= lambda!15235 lambda!15221)))

(declare-fun bs!65914 () Bool)

(assert (= bs!65914 (and d!187462 d!187396)))

(assert (=> bs!65914 (= lambda!15235 lambda!15218)))

(declare-fun bs!65915 () Bool)

(assert (= bs!65915 (and d!187462 d!187320)))

(assert (=> bs!65915 (= lambda!15235 lambda!15199)))

(declare-fun bs!65916 () Bool)

(assert (= bs!65916 (and d!187462 d!187408)))

(assert (=> bs!65916 (= lambda!15235 lambda!15222)))

(declare-fun bs!65917 () Bool)

(assert (= bs!65917 (and d!187462 d!187318)))

(assert (=> bs!65917 (= lambda!15235 lambda!15198)))

(declare-fun bs!65918 () Bool)

(assert (= bs!65918 (and d!187462 d!187386)))

(assert (=> bs!65918 (= lambda!15235 lambda!15213)))

(declare-fun bs!65919 () Bool)

(assert (= bs!65919 (and d!187462 d!187398)))

(assert (=> bs!65919 (= lambda!15235 lambda!15219)))

(declare-fun bs!65920 () Bool)

(assert (= bs!65920 (and d!187462 d!187322)))

(assert (=> bs!65920 (= lambda!15235 lambda!15200)))

(declare-fun bs!65921 () Bool)

(assert (= bs!65921 (and d!187462 d!187304)))

(assert (=> bs!65921 (= lambda!15235 lambda!15192)))

(declare-fun bs!65922 () Bool)

(assert (= bs!65922 (and d!187462 d!187430)))

(assert (=> bs!65922 (= lambda!15235 lambda!15233)))

(declare-fun bs!65923 () Bool)

(assert (= bs!65923 (and d!187462 d!187328)))

(assert (=> bs!65923 (= lambda!15235 lambda!15201)))

(declare-fun bs!65924 () Bool)

(assert (= bs!65924 (and d!187462 d!187384)))

(assert (=> bs!65924 (= lambda!15235 lambda!15212)))

(declare-fun bs!65925 () Bool)

(assert (= bs!65925 (and d!187462 d!187362)))

(assert (=> bs!65925 (= lambda!15235 lambda!15203)))

(declare-fun bs!65926 () Bool)

(assert (= bs!65926 (and d!187462 d!187312)))

(assert (=> bs!65926 (= lambda!15235 lambda!15194)))

(declare-fun bs!65927 () Bool)

(assert (= bs!65927 (and d!187462 d!187368)))

(assert (=> bs!65927 (= lambda!15235 lambda!15204)))

(declare-fun bs!65928 () Bool)

(assert (= bs!65928 (and d!187462 d!187400)))

(assert (=> bs!65928 (= lambda!15235 lambda!15220)))

(declare-fun bs!65929 () Bool)

(assert (= bs!65929 (and d!187462 d!187416)))

(assert (=> bs!65929 (= lambda!15235 lambda!15227)))

(declare-fun bs!65930 () Bool)

(assert (= bs!65930 (and d!187462 d!187352)))

(assert (=> bs!65930 (= lambda!15235 lambda!15202)))

(declare-fun bs!65931 () Bool)

(assert (= bs!65931 (and d!187462 d!187414)))

(assert (=> bs!65931 (= lambda!15235 lambda!15226)))

(declare-fun bs!65932 () Bool)

(assert (= bs!65932 (and d!187462 d!187452)))

(assert (=> bs!65932 (= lambda!15235 lambda!15234)))

(declare-fun bs!65933 () Bool)

(assert (= bs!65933 (and d!187462 d!187428)))

(assert (=> bs!65933 (= lambda!15235 lambda!15232)))

(declare-fun bs!65934 () Bool)

(assert (= bs!65934 (and d!187462 d!187390)))

(assert (=> bs!65934 (= lambda!15235 lambda!15214)))

(assert (=> d!187462 (= (inv!6177 (_1!3255 (_1!3256 (h!10304 mapValue!2226)))) (forall!1485 (exprs!649 (_1!3255 (_1!3256 (h!10304 mapValue!2226)))) lambda!15235))))

(declare-fun bs!65935 () Bool)

(assert (= bs!65935 d!187462))

(declare-fun m!771969 () Bool)

(assert (=> bs!65935 m!771969))

(assert (=> b!525474 d!187462))

(declare-fun b!525840 () Bool)

(declare-fun res!222625 () Bool)

(declare-fun e!315793 () Bool)

(assert (=> b!525840 (=> (not res!222625) (not e!315793))))

(declare-fun lt!217691 () List!4910)

(assert (=> b!525840 (= res!222625 (= (size!4006 lt!217691) (+ (size!4006 (t!73515 lt!217593)) (size!4006 lt!217599))))))

(declare-fun b!525838 () Bool)

(declare-fun e!315794 () List!4910)

(assert (=> b!525838 (= e!315794 lt!217599)))

(declare-fun b!525841 () Bool)

(assert (=> b!525841 (= e!315793 (or (not (= lt!217599 Nil!4900)) (= lt!217691 (t!73515 lt!217593))))))

(declare-fun b!525839 () Bool)

(assert (=> b!525839 (= e!315794 (Cons!4900 (h!10301 (t!73515 lt!217593)) (++!1373 (t!73515 (t!73515 lt!217593)) lt!217599)))))

(declare-fun d!187464 () Bool)

(assert (=> d!187464 e!315793))

(declare-fun res!222626 () Bool)

(assert (=> d!187464 (=> (not res!222626) (not e!315793))))

(assert (=> d!187464 (= res!222626 (= (content!887 lt!217691) ((_ map or) (content!887 (t!73515 lt!217593)) (content!887 lt!217599))))))

(assert (=> d!187464 (= lt!217691 e!315794)))

(declare-fun c!101049 () Bool)

(assert (=> d!187464 (= c!101049 ((_ is Nil!4900) (t!73515 lt!217593)))))

(assert (=> d!187464 (= (++!1373 (t!73515 lt!217593) lt!217599) lt!217691)))

(assert (= (and d!187464 c!101049) b!525838))

(assert (= (and d!187464 (not c!101049)) b!525839))

(assert (= (and d!187464 res!222626) b!525840))

(assert (= (and b!525840 res!222625) b!525841))

(declare-fun m!771971 () Bool)

(assert (=> b!525840 m!771971))

(assert (=> b!525840 m!771735))

(assert (=> b!525840 m!771434))

(declare-fun m!771973 () Bool)

(assert (=> b!525839 m!771973))

(declare-fun m!771975 () Bool)

(assert (=> d!187464 m!771975))

(assert (=> d!187464 m!771829))

(assert (=> d!187464 m!771442))

(assert (=> b!525356 d!187464))

(declare-fun d!187466 () Bool)

(assert (=> d!187466 (= (list!2054 lt!217602) (list!2057 (c!100955 lt!217602)))))

(declare-fun bs!65936 () Bool)

(assert (= bs!65936 d!187466))

(declare-fun m!771977 () Bool)

(assert (=> bs!65936 m!771977))

(assert (=> b!525304 d!187466))

(declare-fun b!525853 () Bool)

(declare-fun e!315800 () Bool)

(declare-fun lt!217694 () List!4917)

(assert (=> b!525853 (= e!315800 (or (not (= (list!2054 (_1!3259 lt!217598)) Nil!4907)) (= lt!217694 (list!2054 (BalanceConc!3199 Empty!1595)))))))

(declare-fun b!525851 () Bool)

(declare-fun e!315799 () List!4917)

(assert (=> b!525851 (= e!315799 (Cons!4907 (h!10308 (list!2054 (BalanceConc!3199 Empty!1595))) (++!1375 (t!73522 (list!2054 (BalanceConc!3199 Empty!1595))) (list!2054 (_1!3259 lt!217598)))))))

(declare-fun b!525852 () Bool)

(declare-fun res!222631 () Bool)

(assert (=> b!525852 (=> (not res!222631) (not e!315800))))

(assert (=> b!525852 (= res!222631 (= (size!4008 lt!217694) (+ (size!4008 (list!2054 (BalanceConc!3199 Empty!1595))) (size!4008 (list!2054 (_1!3259 lt!217598))))))))

(declare-fun d!187468 () Bool)

(assert (=> d!187468 e!315800))

(declare-fun res!222632 () Bool)

(assert (=> d!187468 (=> (not res!222632) (not e!315800))))

(declare-fun content!888 (List!4917) (InoxSet Token!1510))

(assert (=> d!187468 (= res!222632 (= (content!888 lt!217694) ((_ map or) (content!888 (list!2054 (BalanceConc!3199 Empty!1595))) (content!888 (list!2054 (_1!3259 lt!217598))))))))

(assert (=> d!187468 (= lt!217694 e!315799)))

(declare-fun c!101052 () Bool)

(assert (=> d!187468 (= c!101052 ((_ is Nil!4907) (list!2054 (BalanceConc!3199 Empty!1595))))))

(assert (=> d!187468 (= (++!1375 (list!2054 (BalanceConc!3199 Empty!1595)) (list!2054 (_1!3259 lt!217598))) lt!217694)))

(declare-fun b!525850 () Bool)

(assert (=> b!525850 (= e!315799 (list!2054 (_1!3259 lt!217598)))))

(assert (= (and d!187468 c!101052) b!525850))

(assert (= (and d!187468 (not c!101052)) b!525851))

(assert (= (and d!187468 res!222632) b!525852))

(assert (= (and b!525852 res!222631) b!525853))

(assert (=> b!525851 m!771308))

(declare-fun m!771979 () Bool)

(assert (=> b!525851 m!771979))

(declare-fun m!771981 () Bool)

(assert (=> b!525852 m!771981))

(assert (=> b!525852 m!771362))

(declare-fun m!771983 () Bool)

(assert (=> b!525852 m!771983))

(assert (=> b!525852 m!771308))

(declare-fun m!771985 () Bool)

(assert (=> b!525852 m!771985))

(declare-fun m!771987 () Bool)

(assert (=> d!187468 m!771987))

(assert (=> d!187468 m!771362))

(declare-fun m!771989 () Bool)

(assert (=> d!187468 m!771989))

(assert (=> d!187468 m!771308))

(declare-fun m!771991 () Bool)

(assert (=> d!187468 m!771991))

(assert (=> b!525304 d!187468))

(assert (=> b!525304 d!187290))

(assert (=> b!525304 d!187252))

(declare-fun d!187470 () Bool)

(assert (=> d!187470 (= (list!2055 (_2!3259 lt!217615)) (list!2056 (c!100954 (_2!3259 lt!217615))))))

(declare-fun bs!65937 () Bool)

(assert (= bs!65937 d!187470))

(declare-fun m!771993 () Bool)

(assert (=> bs!65937 m!771993))

(assert (=> b!525359 d!187470))

(assert (=> b!525359 d!187284))

(assert (=> b!525361 d!187470))

(declare-fun d!187472 () Bool)

(declare-fun e!315802 () Bool)

(assert (=> d!187472 e!315802))

(declare-fun c!101054 () Bool)

(declare-fun lt!217695 () tuple2!6050)

(assert (=> d!187472 (= c!101054 (> (size!4008 (_1!3261 lt!217695)) 0))))

(declare-fun e!315801 () tuple2!6050)

(assert (=> d!187472 (= lt!217695 e!315801)))

(declare-fun c!101053 () Bool)

(declare-fun lt!217697 () Option!1247)

(assert (=> d!187472 (= c!101053 ((_ is Some!1246) lt!217697))))

(assert (=> d!187472 (= lt!217697 (maxPrefix!482 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594))))))

(assert (=> d!187472 (= (lexList!304 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594))) lt!217695)))

(declare-fun b!525854 () Bool)

(assert (=> b!525854 (= e!315802 (= (_2!3261 lt!217695) (list!2055 (BalanceConc!3197 Empty!1594))))))

(declare-fun b!525855 () Bool)

(assert (=> b!525855 (= e!315801 (tuple2!6051 Nil!4907 (list!2055 (BalanceConc!3197 Empty!1594))))))

(declare-fun b!525856 () Bool)

(declare-fun e!315803 () Bool)

(assert (=> b!525856 (= e!315802 e!315803)))

(declare-fun res!222633 () Bool)

(assert (=> b!525856 (= res!222633 (< (size!4006 (_2!3261 lt!217695)) (size!4006 (list!2055 (BalanceConc!3197 Empty!1594)))))))

(assert (=> b!525856 (=> (not res!222633) (not e!315803))))

(declare-fun b!525857 () Bool)

(assert (=> b!525857 (= e!315803 (not (isEmpty!3600 (_1!3261 lt!217695))))))

(declare-fun b!525858 () Bool)

(declare-fun lt!217696 () tuple2!6050)

(assert (=> b!525858 (= e!315801 (tuple2!6051 (Cons!4907 (_1!3262 (v!15987 lt!217697)) (_1!3261 lt!217696)) (_2!3261 lt!217696)))))

(assert (=> b!525858 (= lt!217696 (lexList!304 thiss!12147 rules!1345 (_2!3262 (v!15987 lt!217697))))))

(assert (= (and d!187472 c!101053) b!525858))

(assert (= (and d!187472 (not c!101053)) b!525855))

(assert (= (and d!187472 c!101054) b!525856))

(assert (= (and d!187472 (not c!101054)) b!525854))

(assert (= (and b!525856 res!222633) b!525857))

(declare-fun m!771995 () Bool)

(assert (=> d!187472 m!771995))

(assert (=> d!187472 m!771322))

(declare-fun m!771997 () Bool)

(assert (=> d!187472 m!771997))

(declare-fun m!771999 () Bool)

(assert (=> b!525856 m!771999))

(assert (=> b!525856 m!771322))

(assert (=> b!525856 m!771711))

(declare-fun m!772001 () Bool)

(assert (=> b!525857 m!772001))

(declare-fun m!772003 () Bool)

(assert (=> b!525858 m!772003))

(assert (=> b!525361 d!187472))

(assert (=> b!525361 d!187284))

(declare-fun bs!65938 () Bool)

(declare-fun d!187474 () Bool)

(assert (= bs!65938 (and d!187474 d!187382)))

(declare-fun lambda!15236 () Int)

(assert (=> bs!65938 (= lambda!15236 lambda!15211)))

(declare-fun bs!65939 () Bool)

(assert (= bs!65939 (and d!187474 d!187310)))

(assert (=> bs!65939 (= lambda!15236 lambda!15193)))

(declare-fun bs!65940 () Bool)

(assert (= bs!65940 (and d!187474 d!187426)))

(assert (=> bs!65940 (= lambda!15236 lambda!15231)))

(declare-fun bs!65941 () Bool)

(assert (= bs!65941 (and d!187474 d!187402)))

(assert (=> bs!65941 (= lambda!15236 lambda!15221)))

(declare-fun bs!65942 () Bool)

(assert (= bs!65942 (and d!187474 d!187396)))

(assert (=> bs!65942 (= lambda!15236 lambda!15218)))

(declare-fun bs!65943 () Bool)

(assert (= bs!65943 (and d!187474 d!187320)))

(assert (=> bs!65943 (= lambda!15236 lambda!15199)))

(declare-fun bs!65944 () Bool)

(assert (= bs!65944 (and d!187474 d!187408)))

(assert (=> bs!65944 (= lambda!15236 lambda!15222)))

(declare-fun bs!65945 () Bool)

(assert (= bs!65945 (and d!187474 d!187462)))

(assert (=> bs!65945 (= lambda!15236 lambda!15235)))

(declare-fun bs!65946 () Bool)

(assert (= bs!65946 (and d!187474 d!187318)))

(assert (=> bs!65946 (= lambda!15236 lambda!15198)))

(declare-fun bs!65947 () Bool)

(assert (= bs!65947 (and d!187474 d!187386)))

(assert (=> bs!65947 (= lambda!15236 lambda!15213)))

(declare-fun bs!65948 () Bool)

(assert (= bs!65948 (and d!187474 d!187398)))

(assert (=> bs!65948 (= lambda!15236 lambda!15219)))

(declare-fun bs!65949 () Bool)

(assert (= bs!65949 (and d!187474 d!187322)))

(assert (=> bs!65949 (= lambda!15236 lambda!15200)))

(declare-fun bs!65950 () Bool)

(assert (= bs!65950 (and d!187474 d!187304)))

(assert (=> bs!65950 (= lambda!15236 lambda!15192)))

(declare-fun bs!65951 () Bool)

(assert (= bs!65951 (and d!187474 d!187430)))

(assert (=> bs!65951 (= lambda!15236 lambda!15233)))

(declare-fun bs!65952 () Bool)

(assert (= bs!65952 (and d!187474 d!187328)))

(assert (=> bs!65952 (= lambda!15236 lambda!15201)))

(declare-fun bs!65953 () Bool)

(assert (= bs!65953 (and d!187474 d!187384)))

(assert (=> bs!65953 (= lambda!15236 lambda!15212)))

(declare-fun bs!65954 () Bool)

(assert (= bs!65954 (and d!187474 d!187362)))

(assert (=> bs!65954 (= lambda!15236 lambda!15203)))

(declare-fun bs!65955 () Bool)

(assert (= bs!65955 (and d!187474 d!187312)))

(assert (=> bs!65955 (= lambda!15236 lambda!15194)))

(declare-fun bs!65956 () Bool)

(assert (= bs!65956 (and d!187474 d!187368)))

(assert (=> bs!65956 (= lambda!15236 lambda!15204)))

(declare-fun bs!65957 () Bool)

(assert (= bs!65957 (and d!187474 d!187400)))

(assert (=> bs!65957 (= lambda!15236 lambda!15220)))

(declare-fun bs!65958 () Bool)

(assert (= bs!65958 (and d!187474 d!187416)))

(assert (=> bs!65958 (= lambda!15236 lambda!15227)))

(declare-fun bs!65959 () Bool)

(assert (= bs!65959 (and d!187474 d!187352)))

(assert (=> bs!65959 (= lambda!15236 lambda!15202)))

(declare-fun bs!65960 () Bool)

(assert (= bs!65960 (and d!187474 d!187414)))

(assert (=> bs!65960 (= lambda!15236 lambda!15226)))

(declare-fun bs!65961 () Bool)

(assert (= bs!65961 (and d!187474 d!187452)))

(assert (=> bs!65961 (= lambda!15236 lambda!15234)))

(declare-fun bs!65962 () Bool)

(assert (= bs!65962 (and d!187474 d!187428)))

(assert (=> bs!65962 (= lambda!15236 lambda!15232)))

(declare-fun bs!65963 () Bool)

(assert (= bs!65963 (and d!187474 d!187390)))

(assert (=> bs!65963 (= lambda!15236 lambda!15214)))

(assert (=> d!187474 (= (inv!6177 setElem!2459) (forall!1485 (exprs!649 setElem!2459) lambda!15236))))

(declare-fun bs!65964 () Bool)

(assert (= bs!65964 d!187474))

(declare-fun m!772005 () Bool)

(assert (=> bs!65964 m!772005))

(assert (=> setNonEmpty!2458 d!187474))

(declare-fun bs!65965 () Bool)

(declare-fun d!187476 () Bool)

(assert (= bs!65965 (and d!187476 d!187382)))

(declare-fun lambda!15237 () Int)

(assert (=> bs!65965 (= lambda!15237 lambda!15211)))

(declare-fun bs!65966 () Bool)

(assert (= bs!65966 (and d!187476 d!187426)))

(assert (=> bs!65966 (= lambda!15237 lambda!15231)))

(declare-fun bs!65967 () Bool)

(assert (= bs!65967 (and d!187476 d!187402)))

(assert (=> bs!65967 (= lambda!15237 lambda!15221)))

(declare-fun bs!65968 () Bool)

(assert (= bs!65968 (and d!187476 d!187396)))

(assert (=> bs!65968 (= lambda!15237 lambda!15218)))

(declare-fun bs!65969 () Bool)

(assert (= bs!65969 (and d!187476 d!187320)))

(assert (=> bs!65969 (= lambda!15237 lambda!15199)))

(declare-fun bs!65970 () Bool)

(assert (= bs!65970 (and d!187476 d!187408)))

(assert (=> bs!65970 (= lambda!15237 lambda!15222)))

(declare-fun bs!65971 () Bool)

(assert (= bs!65971 (and d!187476 d!187462)))

(assert (=> bs!65971 (= lambda!15237 lambda!15235)))

(declare-fun bs!65972 () Bool)

(assert (= bs!65972 (and d!187476 d!187318)))

(assert (=> bs!65972 (= lambda!15237 lambda!15198)))

(declare-fun bs!65973 () Bool)

(assert (= bs!65973 (and d!187476 d!187386)))

(assert (=> bs!65973 (= lambda!15237 lambda!15213)))

(declare-fun bs!65974 () Bool)

(assert (= bs!65974 (and d!187476 d!187398)))

(assert (=> bs!65974 (= lambda!15237 lambda!15219)))

(declare-fun bs!65975 () Bool)

(assert (= bs!65975 (and d!187476 d!187322)))

(assert (=> bs!65975 (= lambda!15237 lambda!15200)))

(declare-fun bs!65976 () Bool)

(assert (= bs!65976 (and d!187476 d!187304)))

(assert (=> bs!65976 (= lambda!15237 lambda!15192)))

(declare-fun bs!65977 () Bool)

(assert (= bs!65977 (and d!187476 d!187430)))

(assert (=> bs!65977 (= lambda!15237 lambda!15233)))

(declare-fun bs!65978 () Bool)

(assert (= bs!65978 (and d!187476 d!187328)))

(assert (=> bs!65978 (= lambda!15237 lambda!15201)))

(declare-fun bs!65979 () Bool)

(assert (= bs!65979 (and d!187476 d!187310)))

(assert (=> bs!65979 (= lambda!15237 lambda!15193)))

(declare-fun bs!65980 () Bool)

(assert (= bs!65980 (and d!187476 d!187474)))

(assert (=> bs!65980 (= lambda!15237 lambda!15236)))

(declare-fun bs!65981 () Bool)

(assert (= bs!65981 (and d!187476 d!187384)))

(assert (=> bs!65981 (= lambda!15237 lambda!15212)))

(declare-fun bs!65982 () Bool)

(assert (= bs!65982 (and d!187476 d!187362)))

(assert (=> bs!65982 (= lambda!15237 lambda!15203)))

(declare-fun bs!65983 () Bool)

(assert (= bs!65983 (and d!187476 d!187312)))

(assert (=> bs!65983 (= lambda!15237 lambda!15194)))

(declare-fun bs!65984 () Bool)

(assert (= bs!65984 (and d!187476 d!187368)))

(assert (=> bs!65984 (= lambda!15237 lambda!15204)))

(declare-fun bs!65985 () Bool)

(assert (= bs!65985 (and d!187476 d!187400)))

(assert (=> bs!65985 (= lambda!15237 lambda!15220)))

(declare-fun bs!65986 () Bool)

(assert (= bs!65986 (and d!187476 d!187416)))

(assert (=> bs!65986 (= lambda!15237 lambda!15227)))

(declare-fun bs!65987 () Bool)

(assert (= bs!65987 (and d!187476 d!187352)))

(assert (=> bs!65987 (= lambda!15237 lambda!15202)))

(declare-fun bs!65988 () Bool)

(assert (= bs!65988 (and d!187476 d!187414)))

(assert (=> bs!65988 (= lambda!15237 lambda!15226)))

(declare-fun bs!65989 () Bool)

(assert (= bs!65989 (and d!187476 d!187452)))

(assert (=> bs!65989 (= lambda!15237 lambda!15234)))

(declare-fun bs!65990 () Bool)

(assert (= bs!65990 (and d!187476 d!187428)))

(assert (=> bs!65990 (= lambda!15237 lambda!15232)))

(declare-fun bs!65991 () Bool)

(assert (= bs!65991 (and d!187476 d!187390)))

(assert (=> bs!65991 (= lambda!15237 lambda!15214)))

(assert (=> d!187476 (= (inv!6177 setElem!2434) (forall!1485 (exprs!649 setElem!2434) lambda!15237))))

(declare-fun bs!65992 () Bool)

(assert (= bs!65992 d!187476))

(declare-fun m!772007 () Bool)

(assert (=> bs!65992 m!772007))

(assert (=> setNonEmpty!2434 d!187476))

(declare-fun bs!65993 () Bool)

(declare-fun d!187478 () Bool)

(assert (= bs!65993 (and d!187478 d!187382)))

(declare-fun lambda!15238 () Int)

(assert (=> bs!65993 (= lambda!15238 lambda!15211)))

(declare-fun bs!65994 () Bool)

(assert (= bs!65994 (and d!187478 d!187476)))

(assert (=> bs!65994 (= lambda!15238 lambda!15237)))

(declare-fun bs!65995 () Bool)

(assert (= bs!65995 (and d!187478 d!187426)))

(assert (=> bs!65995 (= lambda!15238 lambda!15231)))

(declare-fun bs!65996 () Bool)

(assert (= bs!65996 (and d!187478 d!187402)))

(assert (=> bs!65996 (= lambda!15238 lambda!15221)))

(declare-fun bs!65997 () Bool)

(assert (= bs!65997 (and d!187478 d!187396)))

(assert (=> bs!65997 (= lambda!15238 lambda!15218)))

(declare-fun bs!65998 () Bool)

(assert (= bs!65998 (and d!187478 d!187320)))

(assert (=> bs!65998 (= lambda!15238 lambda!15199)))

(declare-fun bs!65999 () Bool)

(assert (= bs!65999 (and d!187478 d!187408)))

(assert (=> bs!65999 (= lambda!15238 lambda!15222)))

(declare-fun bs!66000 () Bool)

(assert (= bs!66000 (and d!187478 d!187462)))

(assert (=> bs!66000 (= lambda!15238 lambda!15235)))

(declare-fun bs!66001 () Bool)

(assert (= bs!66001 (and d!187478 d!187318)))

(assert (=> bs!66001 (= lambda!15238 lambda!15198)))

(declare-fun bs!66002 () Bool)

(assert (= bs!66002 (and d!187478 d!187386)))

(assert (=> bs!66002 (= lambda!15238 lambda!15213)))

(declare-fun bs!66003 () Bool)

(assert (= bs!66003 (and d!187478 d!187398)))

(assert (=> bs!66003 (= lambda!15238 lambda!15219)))

(declare-fun bs!66004 () Bool)

(assert (= bs!66004 (and d!187478 d!187322)))

(assert (=> bs!66004 (= lambda!15238 lambda!15200)))

(declare-fun bs!66005 () Bool)

(assert (= bs!66005 (and d!187478 d!187304)))

(assert (=> bs!66005 (= lambda!15238 lambda!15192)))

(declare-fun bs!66006 () Bool)

(assert (= bs!66006 (and d!187478 d!187430)))

(assert (=> bs!66006 (= lambda!15238 lambda!15233)))

(declare-fun bs!66007 () Bool)

(assert (= bs!66007 (and d!187478 d!187328)))

(assert (=> bs!66007 (= lambda!15238 lambda!15201)))

(declare-fun bs!66008 () Bool)

(assert (= bs!66008 (and d!187478 d!187310)))

(assert (=> bs!66008 (= lambda!15238 lambda!15193)))

(declare-fun bs!66009 () Bool)

(assert (= bs!66009 (and d!187478 d!187474)))

(assert (=> bs!66009 (= lambda!15238 lambda!15236)))

(declare-fun bs!66010 () Bool)

(assert (= bs!66010 (and d!187478 d!187384)))

(assert (=> bs!66010 (= lambda!15238 lambda!15212)))

(declare-fun bs!66011 () Bool)

(assert (= bs!66011 (and d!187478 d!187362)))

(assert (=> bs!66011 (= lambda!15238 lambda!15203)))

(declare-fun bs!66012 () Bool)

(assert (= bs!66012 (and d!187478 d!187312)))

(assert (=> bs!66012 (= lambda!15238 lambda!15194)))

(declare-fun bs!66013 () Bool)

(assert (= bs!66013 (and d!187478 d!187368)))

(assert (=> bs!66013 (= lambda!15238 lambda!15204)))

(declare-fun bs!66014 () Bool)

(assert (= bs!66014 (and d!187478 d!187400)))

(assert (=> bs!66014 (= lambda!15238 lambda!15220)))

(declare-fun bs!66015 () Bool)

(assert (= bs!66015 (and d!187478 d!187416)))

(assert (=> bs!66015 (= lambda!15238 lambda!15227)))

(declare-fun bs!66016 () Bool)

(assert (= bs!66016 (and d!187478 d!187352)))

(assert (=> bs!66016 (= lambda!15238 lambda!15202)))

(declare-fun bs!66017 () Bool)

(assert (= bs!66017 (and d!187478 d!187414)))

(assert (=> bs!66017 (= lambda!15238 lambda!15226)))

(declare-fun bs!66018 () Bool)

(assert (= bs!66018 (and d!187478 d!187452)))

(assert (=> bs!66018 (= lambda!15238 lambda!15234)))

(declare-fun bs!66019 () Bool)

(assert (= bs!66019 (and d!187478 d!187428)))

(assert (=> bs!66019 (= lambda!15238 lambda!15232)))

(declare-fun bs!66020 () Bool)

(assert (= bs!66020 (and d!187478 d!187390)))

(assert (=> bs!66020 (= lambda!15238 lambda!15214)))

(assert (=> d!187478 (= (inv!6177 setElem!2458) (forall!1485 (exprs!649 setElem!2458) lambda!15238))))

(declare-fun bs!66021 () Bool)

(assert (= bs!66021 d!187478))

(declare-fun m!772009 () Bool)

(assert (=> bs!66021 m!772009))

(assert (=> setNonEmpty!2459 d!187478))

(declare-fun d!187480 () Bool)

(declare-fun res!222634 () Bool)

(declare-fun e!315804 () Bool)

(assert (=> d!187480 (=> (not res!222634) (not e!315804))))

(assert (=> d!187480 (= res!222634 (<= (size!4006 (list!2059 (xs!4229 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) 512))))

(assert (=> d!187480 (= (inv!6176 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) e!315804)))

(declare-fun b!525859 () Bool)

(declare-fun res!222635 () Bool)

(assert (=> b!525859 (=> (not res!222635) (not e!315804))))

(assert (=> b!525859 (= res!222635 (= (csize!3419 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) (size!4006 (list!2059 (xs!4229 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))))

(declare-fun b!525860 () Bool)

(assert (=> b!525860 (= e!315804 (and (> (csize!3419 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) 0) (<= (csize!3419 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) 512)))))

(assert (= (and d!187480 res!222634) b!525859))

(assert (= (and b!525859 res!222635) b!525860))

(declare-fun m!772011 () Bool)

(assert (=> d!187480 m!772011))

(assert (=> d!187480 m!772011))

(declare-fun m!772013 () Bool)

(assert (=> d!187480 m!772013))

(assert (=> b!525859 m!772011))

(assert (=> b!525859 m!772011))

(assert (=> b!525859 m!772013))

(assert (=> b!525343 d!187480))

(declare-fun bs!66022 () Bool)

(declare-fun d!187482 () Bool)

(assert (= bs!66022 (and d!187482 d!187476)))

(declare-fun lambda!15239 () Int)

(assert (=> bs!66022 (= lambda!15239 lambda!15237)))

(declare-fun bs!66023 () Bool)

(assert (= bs!66023 (and d!187482 d!187426)))

(assert (=> bs!66023 (= lambda!15239 lambda!15231)))

(declare-fun bs!66024 () Bool)

(assert (= bs!66024 (and d!187482 d!187402)))

(assert (=> bs!66024 (= lambda!15239 lambda!15221)))

(declare-fun bs!66025 () Bool)

(assert (= bs!66025 (and d!187482 d!187396)))

(assert (=> bs!66025 (= lambda!15239 lambda!15218)))

(declare-fun bs!66026 () Bool)

(assert (= bs!66026 (and d!187482 d!187320)))

(assert (=> bs!66026 (= lambda!15239 lambda!15199)))

(declare-fun bs!66027 () Bool)

(assert (= bs!66027 (and d!187482 d!187408)))

(assert (=> bs!66027 (= lambda!15239 lambda!15222)))

(declare-fun bs!66028 () Bool)

(assert (= bs!66028 (and d!187482 d!187462)))

(assert (=> bs!66028 (= lambda!15239 lambda!15235)))

(declare-fun bs!66029 () Bool)

(assert (= bs!66029 (and d!187482 d!187318)))

(assert (=> bs!66029 (= lambda!15239 lambda!15198)))

(declare-fun bs!66030 () Bool)

(assert (= bs!66030 (and d!187482 d!187386)))

(assert (=> bs!66030 (= lambda!15239 lambda!15213)))

(declare-fun bs!66031 () Bool)

(assert (= bs!66031 (and d!187482 d!187398)))

(assert (=> bs!66031 (= lambda!15239 lambda!15219)))

(declare-fun bs!66032 () Bool)

(assert (= bs!66032 (and d!187482 d!187478)))

(assert (=> bs!66032 (= lambda!15239 lambda!15238)))

(declare-fun bs!66033 () Bool)

(assert (= bs!66033 (and d!187482 d!187382)))

(assert (=> bs!66033 (= lambda!15239 lambda!15211)))

(declare-fun bs!66034 () Bool)

(assert (= bs!66034 (and d!187482 d!187322)))

(assert (=> bs!66034 (= lambda!15239 lambda!15200)))

(declare-fun bs!66035 () Bool)

(assert (= bs!66035 (and d!187482 d!187304)))

(assert (=> bs!66035 (= lambda!15239 lambda!15192)))

(declare-fun bs!66036 () Bool)

(assert (= bs!66036 (and d!187482 d!187430)))

(assert (=> bs!66036 (= lambda!15239 lambda!15233)))

(declare-fun bs!66037 () Bool)

(assert (= bs!66037 (and d!187482 d!187328)))

(assert (=> bs!66037 (= lambda!15239 lambda!15201)))

(declare-fun bs!66038 () Bool)

(assert (= bs!66038 (and d!187482 d!187310)))

(assert (=> bs!66038 (= lambda!15239 lambda!15193)))

(declare-fun bs!66039 () Bool)

(assert (= bs!66039 (and d!187482 d!187474)))

(assert (=> bs!66039 (= lambda!15239 lambda!15236)))

(declare-fun bs!66040 () Bool)

(assert (= bs!66040 (and d!187482 d!187384)))

(assert (=> bs!66040 (= lambda!15239 lambda!15212)))

(declare-fun bs!66041 () Bool)

(assert (= bs!66041 (and d!187482 d!187362)))

(assert (=> bs!66041 (= lambda!15239 lambda!15203)))

(declare-fun bs!66042 () Bool)

(assert (= bs!66042 (and d!187482 d!187312)))

(assert (=> bs!66042 (= lambda!15239 lambda!15194)))

(declare-fun bs!66043 () Bool)

(assert (= bs!66043 (and d!187482 d!187368)))

(assert (=> bs!66043 (= lambda!15239 lambda!15204)))

(declare-fun bs!66044 () Bool)

(assert (= bs!66044 (and d!187482 d!187400)))

(assert (=> bs!66044 (= lambda!15239 lambda!15220)))

(declare-fun bs!66045 () Bool)

(assert (= bs!66045 (and d!187482 d!187416)))

(assert (=> bs!66045 (= lambda!15239 lambda!15227)))

(declare-fun bs!66046 () Bool)

(assert (= bs!66046 (and d!187482 d!187352)))

(assert (=> bs!66046 (= lambda!15239 lambda!15202)))

(declare-fun bs!66047 () Bool)

(assert (= bs!66047 (and d!187482 d!187414)))

(assert (=> bs!66047 (= lambda!15239 lambda!15226)))

(declare-fun bs!66048 () Bool)

(assert (= bs!66048 (and d!187482 d!187452)))

(assert (=> bs!66048 (= lambda!15239 lambda!15234)))

(declare-fun bs!66049 () Bool)

(assert (= bs!66049 (and d!187482 d!187428)))

(assert (=> bs!66049 (= lambda!15239 lambda!15232)))

(declare-fun bs!66050 () Bool)

(assert (= bs!66050 (and d!187482 d!187390)))

(assert (=> bs!66050 (= lambda!15239 lambda!15214)))

(assert (=> d!187482 (= (inv!6177 (_2!3257 (_1!3258 (h!10305 mapValue!2237)))) (forall!1485 (exprs!649 (_2!3257 (_1!3258 (h!10305 mapValue!2237)))) lambda!15239))))

(declare-fun bs!66051 () Bool)

(assert (= bs!66051 d!187482))

(declare-fun m!772015 () Bool)

(assert (=> bs!66051 m!772015))

(assert (=> b!525509 d!187482))

(declare-fun d!187484 () Bool)

(assert (=> d!187484 (= (list!2054 (_1!3259 lt!217615)) (list!2057 (c!100955 (_1!3259 lt!217615))))))

(declare-fun bs!66052 () Bool)

(assert (= bs!66052 d!187484))

(declare-fun m!772017 () Bool)

(assert (=> bs!66052 m!772017))

(assert (=> b!525365 d!187484))

(assert (=> b!525365 d!187472))

(assert (=> b!525365 d!187284))

(declare-fun d!187486 () Bool)

(declare-fun res!222636 () Bool)

(declare-fun e!315805 () Bool)

(assert (=> d!187486 (=> (not res!222636) (not e!315805))))

(assert (=> d!187486 (= res!222636 (= (csize!3418 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) (+ (size!4007 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) (size!4007 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))))

(assert (=> d!187486 (= (inv!6175 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) e!315805)))

(declare-fun b!525861 () Bool)

(declare-fun res!222637 () Bool)

(assert (=> b!525861 (=> (not res!222637) (not e!315805))))

(assert (=> b!525861 (= res!222637 (and (not (= (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) Empty!1594)) (not (= (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) Empty!1594))))))

(declare-fun b!525862 () Bool)

(declare-fun res!222638 () Bool)

(assert (=> b!525862 (=> (not res!222638) (not e!315805))))

(assert (=> b!525862 (= res!222638 (= (cheight!1805 (c!100954 (totalInput!1740 cacheFurthestNullable!56))) (+ (max!0 (height!250 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) (height!250 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) 1)))))

(declare-fun b!525863 () Bool)

(assert (=> b!525863 (= e!315805 (<= 0 (cheight!1805 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))))

(assert (= (and d!187486 res!222636) b!525861))

(assert (= (and b!525861 res!222637) b!525862))

(assert (= (and b!525862 res!222638) b!525863))

(declare-fun m!772019 () Bool)

(assert (=> d!187486 m!772019))

(declare-fun m!772021 () Bool)

(assert (=> d!187486 m!772021))

(assert (=> b!525862 m!771756))

(assert (=> b!525862 m!771758))

(assert (=> b!525862 m!771756))

(assert (=> b!525862 m!771758))

(declare-fun m!772023 () Bool)

(assert (=> b!525862 m!772023))

(assert (=> b!525341 d!187486))

(declare-fun d!187488 () Bool)

(declare-fun lt!217698 () Int)

(assert (=> d!187488 (= lt!217698 (size!4008 (list!2054 (_1!3259 lt!217615))))))

(assert (=> d!187488 (= lt!217698 (size!4009 (c!100955 (_1!3259 lt!217615))))))

(assert (=> d!187488 (= (size!4004 (_1!3259 lt!217615)) lt!217698)))

(declare-fun bs!66053 () Bool)

(assert (= bs!66053 d!187488))

(assert (=> bs!66053 m!771460))

(assert (=> bs!66053 m!771460))

(declare-fun m!772025 () Bool)

(assert (=> bs!66053 m!772025))

(declare-fun m!772027 () Bool)

(assert (=> bs!66053 m!772027))

(assert (=> d!187292 d!187488))

(declare-fun b!525864 () Bool)

(declare-fun e!315810 () Bool)

(declare-fun e!315808 () Bool)

(assert (=> b!525864 (= e!315810 e!315808)))

(declare-fun res!222641 () Bool)

(assert (=> b!525864 (=> (not res!222641) (not e!315808))))

(declare-fun lt!217702 () Option!1246)

(assert (=> b!525864 (= res!222641 (= (_1!3260 (get!1853 lt!217702)) (_1!3262 (get!1854 (maxPrefixZipper!203 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594)))))))))

(declare-fun b!525865 () Bool)

(assert (=> b!525865 (= e!315808 (= (list!2055 (_2!3260 (get!1853 lt!217702))) (_2!3262 (get!1854 (maxPrefixZipper!203 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594)))))))))

(declare-fun b!525866 () Bool)

(declare-fun e!315807 () Option!1246)

(declare-fun call!38108 () Option!1246)

(assert (=> b!525866 (= e!315807 call!38108)))

(declare-fun b!525867 () Bool)

(declare-fun e!315811 () Bool)

(declare-fun e!315806 () Bool)

(assert (=> b!525867 (= e!315811 e!315806)))

(declare-fun res!222639 () Bool)

(assert (=> b!525867 (=> res!222639 e!315806)))

(assert (=> b!525867 (= res!222639 (not (isDefined!1060 lt!217702)))))

(declare-fun b!525868 () Bool)

(declare-fun e!315809 () Bool)

(assert (=> b!525868 (= e!315806 e!315809)))

(declare-fun res!222642 () Bool)

(assert (=> b!525868 (=> (not res!222642) (not e!315809))))

(assert (=> b!525868 (= res!222642 (= (_1!3260 (get!1853 lt!217702)) (_1!3262 (get!1854 (maxPrefix!482 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594)))))))))

(declare-fun bm!38103 () Bool)

(assert (=> bm!38103 (= call!38108 (maxPrefixOneRuleZipperSequence!204 thiss!12147 (h!10307 rules!1345) (BalanceConc!3197 Empty!1594)))))

(declare-fun b!525869 () Bool)

(declare-fun res!222640 () Bool)

(assert (=> b!525869 (=> (not res!222640) (not e!315811))))

(assert (=> b!525869 (= res!222640 e!315810)))

(declare-fun res!222644 () Bool)

(assert (=> b!525869 (=> res!222644 e!315810)))

(assert (=> b!525869 (= res!222644 (not (isDefined!1060 lt!217702)))))

(declare-fun d!187490 () Bool)

(assert (=> d!187490 e!315811))

(declare-fun res!222643 () Bool)

(assert (=> d!187490 (=> (not res!222643) (not e!315811))))

(assert (=> d!187490 (= res!222643 (= (isDefined!1060 lt!217702) (isDefined!1061 (maxPrefixZipper!203 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594))))))))

(assert (=> d!187490 (= lt!217702 e!315807)))

(declare-fun c!101055 () Bool)

(assert (=> d!187490 (= c!101055 (and ((_ is Cons!4906) rules!1345) ((_ is Nil!4906) (t!73521 rules!1345))))))

(declare-fun lt!217701 () Unit!8796)

(declare-fun lt!217705 () Unit!8796)

(assert (=> d!187490 (= lt!217701 lt!217705)))

(declare-fun lt!217703 () List!4910)

(declare-fun lt!217699 () List!4910)

(assert (=> d!187490 (isPrefix!554 lt!217703 lt!217699)))

(assert (=> d!187490 (= lt!217705 (lemmaIsPrefixRefl!300 lt!217703 lt!217699))))

(assert (=> d!187490 (= lt!217699 (list!2055 (BalanceConc!3197 Empty!1594)))))

(assert (=> d!187490 (= lt!217703 (list!2055 (BalanceConc!3197 Empty!1594)))))

(assert (=> d!187490 (rulesValidInductive!296 thiss!12147 rules!1345)))

(assert (=> d!187490 (= (maxPrefixZipperSequence!445 thiss!12147 rules!1345 (BalanceConc!3197 Empty!1594)) lt!217702)))

(declare-fun b!525870 () Bool)

(assert (=> b!525870 (= e!315809 (= (list!2055 (_2!3260 (get!1853 lt!217702))) (_2!3262 (get!1854 (maxPrefix!482 thiss!12147 rules!1345 (list!2055 (BalanceConc!3197 Empty!1594)))))))))

(declare-fun b!525871 () Bool)

(declare-fun lt!217700 () Option!1246)

(declare-fun lt!217704 () Option!1246)

(assert (=> b!525871 (= e!315807 (ite (and ((_ is None!1245) lt!217700) ((_ is None!1245) lt!217704)) None!1245 (ite ((_ is None!1245) lt!217704) lt!217700 (ite ((_ is None!1245) lt!217700) lt!217704 (ite (>= (size!4003 (_1!3260 (v!15985 lt!217700))) (size!4003 (_1!3260 (v!15985 lt!217704)))) lt!217700 lt!217704)))))))

(assert (=> b!525871 (= lt!217700 call!38108)))

(assert (=> b!525871 (= lt!217704 (maxPrefixZipperSequence!445 thiss!12147 (t!73521 rules!1345) (BalanceConc!3197 Empty!1594)))))

(assert (= (and d!187490 c!101055) b!525866))

(assert (= (and d!187490 (not c!101055)) b!525871))

(assert (= (or b!525866 b!525871) bm!38103))

(assert (= (and d!187490 res!222643) b!525869))

(assert (= (and b!525869 (not res!222644)) b!525864))

(assert (= (and b!525864 res!222641) b!525865))

(assert (= (and b!525869 res!222640) b!525867))

(assert (= (and b!525867 (not res!222639)) b!525868))

(assert (= (and b!525868 res!222642) b!525870))

(declare-fun m!772029 () Bool)

(assert (=> b!525870 m!772029))

(assert (=> b!525870 m!771322))

(assert (=> b!525870 m!771997))

(declare-fun m!772031 () Bool)

(assert (=> b!525870 m!772031))

(assert (=> b!525870 m!771322))

(assert (=> b!525870 m!771997))

(declare-fun m!772033 () Bool)

(assert (=> b!525870 m!772033))

(declare-fun m!772035 () Bool)

(assert (=> bm!38103 m!772035))

(assert (=> b!525868 m!772031))

(assert (=> b!525868 m!771322))

(assert (=> b!525868 m!771322))

(assert (=> b!525868 m!771997))

(assert (=> b!525868 m!771997))

(assert (=> b!525868 m!772033))

(assert (=> b!525865 m!772029))

(declare-fun m!772037 () Bool)

(assert (=> b!525865 m!772037))

(declare-fun m!772039 () Bool)

(assert (=> b!525865 m!772039))

(assert (=> b!525865 m!772031))

(assert (=> b!525865 m!771322))

(assert (=> b!525865 m!771322))

(assert (=> b!525865 m!772037))

(declare-fun m!772041 () Bool)

(assert (=> b!525871 m!772041))

(declare-fun m!772043 () Bool)

(assert (=> b!525867 m!772043))

(assert (=> b!525869 m!772043))

(assert (=> b!525864 m!772031))

(assert (=> b!525864 m!771322))

(assert (=> b!525864 m!771322))

(assert (=> b!525864 m!772037))

(assert (=> b!525864 m!772037))

(assert (=> b!525864 m!772039))

(declare-fun m!772045 () Bool)

(assert (=> d!187490 m!772045))

(declare-fun m!772047 () Bool)

(assert (=> d!187490 m!772047))

(assert (=> d!187490 m!771322))

(assert (=> d!187490 m!771322))

(assert (=> d!187490 m!772037))

(assert (=> d!187490 m!772037))

(declare-fun m!772049 () Bool)

(assert (=> d!187490 m!772049))

(assert (=> d!187490 m!771805))

(assert (=> d!187490 m!772043))

(assert (=> d!187292 d!187490))

(assert (=> d!187278 d!187316))

(assert (=> b!525331 d!187394))

(declare-fun b!525876 () Bool)

(declare-fun e!315814 () Bool)

(declare-fun tp!165670 () Bool)

(declare-fun tp!165671 () Bool)

(assert (=> b!525876 (= e!315814 (and tp!165670 tp!165671))))

(assert (=> b!525436 (= tp!165555 e!315814)))

(assert (= (and b!525436 ((_ is Cons!4901) (exprs!649 setElem!2444))) b!525876))

(declare-fun b!525877 () Bool)

(declare-fun e!315815 () Bool)

(declare-fun tp!165672 () Bool)

(declare-fun tp!165673 () Bool)

(assert (=> b!525877 (= e!315815 (and tp!165672 tp!165673))))

(assert (=> b!525518 (= tp!165665 e!315815)))

(assert (= (and b!525518 ((_ is Cons!4901) (exprs!649 (_2!3257 (_1!3258 (h!10305 mapDefault!2228)))))) b!525877))

(declare-fun condSetEmpty!2465 () Bool)

(assert (=> setNonEmpty!2460 (= condSetEmpty!2465 (= setRest!2460 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2465 () Bool)

(assert (=> setNonEmpty!2460 (= tp!165654 setRes!2465)))

(declare-fun setIsEmpty!2465 () Bool)

(assert (=> setIsEmpty!2465 setRes!2465))

(declare-fun e!315818 () Bool)

(declare-fun setNonEmpty!2465 () Bool)

(declare-fun tp!165679 () Bool)

(declare-fun setElem!2465 () Context!298)

(assert (=> setNonEmpty!2465 (= setRes!2465 (and tp!165679 (inv!6177 setElem!2465) e!315818))))

(declare-fun setRest!2465 () (InoxSet Context!298))

(assert (=> setNonEmpty!2465 (= setRest!2460 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2465 true) setRest!2465))))

(declare-fun b!525882 () Bool)

(declare-fun tp!165678 () Bool)

(assert (=> b!525882 (= e!315818 tp!165678)))

(assert (= (and setNonEmpty!2460 condSetEmpty!2465) setIsEmpty!2465))

(assert (= (and setNonEmpty!2460 (not condSetEmpty!2465)) setNonEmpty!2465))

(assert (= setNonEmpty!2465 b!525882))

(declare-fun m!772051 () Bool)

(assert (=> setNonEmpty!2465 m!772051))

(declare-fun b!525883 () Bool)

(declare-fun e!315819 () Bool)

(declare-fun tp!165680 () Bool)

(declare-fun tp!165681 () Bool)

(assert (=> b!525883 (= e!315819 (and tp!165680 tp!165681))))

(assert (=> b!525515 (= tp!165660 e!315819)))

(assert (= (and b!525515 ((_ is Cons!4901) (exprs!649 setElem!2461))) b!525883))

(declare-fun b!525884 () Bool)

(declare-fun e!315820 () Bool)

(declare-fun tp!165682 () Bool)

(declare-fun tp!165683 () Bool)

(assert (=> b!525884 (= e!315820 (and tp!165682 tp!165683))))

(assert (=> b!525469 (= tp!165592 e!315820)))

(assert (= (and b!525469 ((_ is Cons!4901) (exprs!649 setElem!2452))) b!525884))

(declare-fun condSetEmpty!2466 () Bool)

(assert (=> setNonEmpty!2461 (= condSetEmpty!2466 (= setRest!2461 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2466 () Bool)

(assert (=> setNonEmpty!2461 (= tp!165657 setRes!2466)))

(declare-fun setIsEmpty!2466 () Bool)

(assert (=> setIsEmpty!2466 setRes!2466))

(declare-fun e!315821 () Bool)

(declare-fun tp!165685 () Bool)

(declare-fun setElem!2466 () Context!298)

(declare-fun setNonEmpty!2466 () Bool)

(assert (=> setNonEmpty!2466 (= setRes!2466 (and tp!165685 (inv!6177 setElem!2466) e!315821))))

(declare-fun setRest!2466 () (InoxSet Context!298))

(assert (=> setNonEmpty!2466 (= setRest!2461 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2466 true) setRest!2466))))

(declare-fun b!525885 () Bool)

(declare-fun tp!165684 () Bool)

(assert (=> b!525885 (= e!315821 tp!165684)))

(assert (= (and setNonEmpty!2461 condSetEmpty!2466) setIsEmpty!2466))

(assert (= (and setNonEmpty!2461 (not condSetEmpty!2466)) setNonEmpty!2466))

(assert (= setNonEmpty!2466 b!525885))

(declare-fun m!772053 () Bool)

(assert (=> setNonEmpty!2466 m!772053))

(declare-fun condSetEmpty!2467 () Bool)

(assert (=> setNonEmpty!2446 (= condSetEmpty!2467 (= setRest!2446 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2467 () Bool)

(assert (=> setNonEmpty!2446 (= tp!165560 setRes!2467)))

(declare-fun setIsEmpty!2467 () Bool)

(assert (=> setIsEmpty!2467 setRes!2467))

(declare-fun e!315822 () Bool)

(declare-fun setNonEmpty!2467 () Bool)

(declare-fun setElem!2467 () Context!298)

(declare-fun tp!165687 () Bool)

(assert (=> setNonEmpty!2467 (= setRes!2467 (and tp!165687 (inv!6177 setElem!2467) e!315822))))

(declare-fun setRest!2467 () (InoxSet Context!298))

(assert (=> setNonEmpty!2467 (= setRest!2446 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2467 true) setRest!2467))))

(declare-fun b!525886 () Bool)

(declare-fun tp!165686 () Bool)

(assert (=> b!525886 (= e!315822 tp!165686)))

(assert (= (and setNonEmpty!2446 condSetEmpty!2467) setIsEmpty!2467))

(assert (= (and setNonEmpty!2446 (not condSetEmpty!2467)) setNonEmpty!2467))

(assert (= setNonEmpty!2467 b!525886))

(declare-fun m!772055 () Bool)

(assert (=> setNonEmpty!2467 m!772055))

(declare-fun b!525887 () Bool)

(declare-fun e!315823 () Bool)

(declare-fun tp!165688 () Bool)

(declare-fun tp!165689 () Bool)

(assert (=> b!525887 (= e!315823 (and tp!165688 tp!165689))))

(assert (=> b!525517 (= tp!165661 e!315823)))

(assert (= (and b!525517 ((_ is Cons!4901) (exprs!649 setElem!2462))) b!525887))

(declare-fun b!525889 () Bool)

(declare-fun e!315824 () Bool)

(declare-fun tp!165691 () Bool)

(declare-fun tp!165690 () Bool)

(assert (=> b!525889 (= e!315824 (and tp!165691 tp!165690))))

(declare-fun b!525888 () Bool)

(assert (=> b!525888 (= e!315824 tp_is_empty!2795)))

(declare-fun b!525890 () Bool)

(declare-fun tp!165693 () Bool)

(assert (=> b!525890 (= e!315824 tp!165693)))

(declare-fun b!525891 () Bool)

(declare-fun tp!165694 () Bool)

(declare-fun tp!165692 () Bool)

(assert (=> b!525891 (= e!315824 (and tp!165694 tp!165692))))

(assert (=> b!525510 (= tp!165655 e!315824)))

(assert (= (and b!525510 ((_ is ElementMatch!1211) (_1!3257 (_1!3258 (h!10305 mapValue!2228))))) b!525888))

(assert (= (and b!525510 ((_ is Concat!2121) (_1!3257 (_1!3258 (h!10305 mapValue!2228))))) b!525889))

(assert (= (and b!525510 ((_ is Star!1211) (_1!3257 (_1!3258 (h!10305 mapValue!2228))))) b!525890))

(assert (= (and b!525510 ((_ is Union!1211) (_1!3257 (_1!3258 (h!10305 mapValue!2228))))) b!525891))

(declare-fun e!315827 () Bool)

(assert (=> b!525510 (= tp!165653 e!315827)))

(declare-fun setIsEmpty!2468 () Bool)

(declare-fun setRes!2468 () Bool)

(assert (=> setIsEmpty!2468 setRes!2468))

(declare-fun b!525892 () Bool)

(declare-fun tp!165696 () Bool)

(declare-fun e!315826 () Bool)

(declare-fun tp!165698 () Bool)

(assert (=> b!525892 (= e!315827 (and tp!165698 (inv!6177 (_2!3257 (_1!3258 (h!10305 (t!73519 mapValue!2228))))) e!315826 tp_is_empty!2795 setRes!2468 tp!165696))))

(declare-fun condSetEmpty!2468 () Bool)

(assert (=> b!525892 (= condSetEmpty!2468 (= (_2!3258 (h!10305 (t!73519 mapValue!2228))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525893 () Bool)

(declare-fun e!315825 () Bool)

(declare-fun tp!165695 () Bool)

(assert (=> b!525893 (= e!315825 tp!165695)))

(declare-fun setElem!2468 () Context!298)

(declare-fun setNonEmpty!2468 () Bool)

(declare-fun tp!165697 () Bool)

(assert (=> setNonEmpty!2468 (= setRes!2468 (and tp!165697 (inv!6177 setElem!2468) e!315825))))

(declare-fun setRest!2468 () (InoxSet Context!298))

(assert (=> setNonEmpty!2468 (= (_2!3258 (h!10305 (t!73519 mapValue!2228))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2468 true) setRest!2468))))

(declare-fun b!525894 () Bool)

(declare-fun tp!165699 () Bool)

(assert (=> b!525894 (= e!315826 tp!165699)))

(assert (= b!525892 b!525894))

(assert (= (and b!525892 condSetEmpty!2468) setIsEmpty!2468))

(assert (= (and b!525892 (not condSetEmpty!2468)) setNonEmpty!2468))

(assert (= setNonEmpty!2468 b!525893))

(assert (= (and b!525510 ((_ is Cons!4904) (t!73519 mapValue!2228))) b!525892))

(declare-fun m!772057 () Bool)

(assert (=> b!525892 m!772057))

(declare-fun m!772059 () Bool)

(assert (=> setNonEmpty!2468 m!772059))

(declare-fun tp!165700 () Bool)

(declare-fun setElem!2469 () Context!298)

(declare-fun setRes!2469 () Bool)

(declare-fun setNonEmpty!2469 () Bool)

(declare-fun e!315828 () Bool)

(assert (=> setNonEmpty!2469 (= setRes!2469 (and tp!165700 (inv!6177 setElem!2469) e!315828))))

(declare-fun setRest!2469 () (InoxSet Context!298))

(assert (=> setNonEmpty!2469 (= (_2!3256 (h!10304 (t!73518 mapValue!2234))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2469 true) setRest!2469))))

(declare-fun b!525895 () Bool)

(declare-fun e!315830 () Bool)

(declare-fun tp!165701 () Bool)

(assert (=> b!525895 (= e!315830 tp!165701)))

(declare-fun setIsEmpty!2469 () Bool)

(assert (=> setIsEmpty!2469 setRes!2469))

(declare-fun e!315829 () Bool)

(declare-fun b!525896 () Bool)

(declare-fun tp!165702 () Bool)

(assert (=> b!525896 (= e!315829 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (t!73518 mapValue!2234))))) e!315830 tp_is_empty!2795 setRes!2469 tp!165702))))

(declare-fun condSetEmpty!2469 () Bool)

(assert (=> b!525896 (= condSetEmpty!2469 (= (_2!3256 (h!10304 (t!73518 mapValue!2234))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525897 () Bool)

(declare-fun tp!165703 () Bool)

(assert (=> b!525897 (= e!315828 tp!165703)))

(assert (=> b!525467 (= tp!165599 e!315829)))

(assert (= b!525896 b!525895))

(assert (= (and b!525896 condSetEmpty!2469) setIsEmpty!2469))

(assert (= (and b!525896 (not condSetEmpty!2469)) setNonEmpty!2469))

(assert (= setNonEmpty!2469 b!525897))

(assert (= (and b!525467 ((_ is Cons!4903) (t!73518 mapValue!2234))) b!525896))

(declare-fun m!772061 () Bool)

(assert (=> setNonEmpty!2469 m!772061))

(declare-fun m!772063 () Bool)

(assert (=> b!525896 m!772063))

(declare-fun b!525898 () Bool)

(declare-fun e!315831 () Bool)

(declare-fun tp!165704 () Bool)

(declare-fun tp!165705 () Bool)

(assert (=> b!525898 (= e!315831 (and tp!165704 tp!165705))))

(assert (=> b!525471 (= tp!165591 e!315831)))

(assert (= (and b!525471 ((_ is Cons!4901) (exprs!649 setElem!2451))) b!525898))

(declare-fun b!525899 () Bool)

(declare-fun e!315832 () Bool)

(declare-fun tp!165706 () Bool)

(declare-fun tp!165707 () Bool)

(assert (=> b!525899 (= e!315832 (and tp!165706 tp!165707))))

(assert (=> b!525407 (= tp!165519 e!315832)))

(assert (= (and b!525407 ((_ is Cons!4901) (exprs!649 (_1!3255 (_1!3256 (h!10304 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))))) b!525899))

(declare-fun condSetEmpty!2470 () Bool)

(assert (=> setNonEmpty!2437 (= condSetEmpty!2470 (= setRest!2437 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2470 () Bool)

(assert (=> setNonEmpty!2437 (= tp!165514 setRes!2470)))

(declare-fun setIsEmpty!2470 () Bool)

(assert (=> setIsEmpty!2470 setRes!2470))

(declare-fun setNonEmpty!2470 () Bool)

(declare-fun setElem!2470 () Context!298)

(declare-fun e!315833 () Bool)

(declare-fun tp!165709 () Bool)

(assert (=> setNonEmpty!2470 (= setRes!2470 (and tp!165709 (inv!6177 setElem!2470) e!315833))))

(declare-fun setRest!2470 () (InoxSet Context!298))

(assert (=> setNonEmpty!2470 (= setRest!2437 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2470 true) setRest!2470))))

(declare-fun b!525900 () Bool)

(declare-fun tp!165708 () Bool)

(assert (=> b!525900 (= e!315833 tp!165708)))

(assert (= (and setNonEmpty!2437 condSetEmpty!2470) setIsEmpty!2470))

(assert (= (and setNonEmpty!2437 (not condSetEmpty!2470)) setNonEmpty!2470))

(assert (= setNonEmpty!2470 b!525900))

(declare-fun m!772065 () Bool)

(assert (=> setNonEmpty!2470 m!772065))

(declare-fun setNonEmpty!2471 () Bool)

(declare-fun tp!165710 () Bool)

(declare-fun setRes!2471 () Bool)

(declare-fun e!315834 () Bool)

(declare-fun setElem!2471 () Context!298)

(assert (=> setNonEmpty!2471 (= setRes!2471 (and tp!165710 (inv!6177 setElem!2471) e!315834))))

(declare-fun setRest!2471 () (InoxSet Context!298))

(assert (=> setNonEmpty!2471 (= (_2!3256 (h!10304 (t!73518 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2471 true) setRest!2471))))

(declare-fun b!525901 () Bool)

(declare-fun e!315836 () Bool)

(declare-fun tp!165711 () Bool)

(assert (=> b!525901 (= e!315836 tp!165711)))

(declare-fun setIsEmpty!2471 () Bool)

(assert (=> setIsEmpty!2471 setRes!2471))

(declare-fun e!315835 () Bool)

(declare-fun tp!165712 () Bool)

(declare-fun b!525902 () Bool)

(assert (=> b!525902 (= e!315835 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (t!73518 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))))) e!315836 tp_is_empty!2795 setRes!2471 tp!165712))))

(declare-fun condSetEmpty!2471 () Bool)

(assert (=> b!525902 (= condSetEmpty!2471 (= (_2!3256 (h!10304 (t!73518 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525903 () Bool)

(declare-fun tp!165713 () Bool)

(assert (=> b!525903 (= e!315834 tp!165713)))

(assert (=> b!525408 (= tp!165520 e!315835)))

(assert (= b!525902 b!525901))

(assert (= (and b!525902 condSetEmpty!2471) setIsEmpty!2471))

(assert (= (and b!525902 (not condSetEmpty!2471)) setNonEmpty!2471))

(assert (= setNonEmpty!2471 b!525903))

(assert (= (and b!525408 ((_ is Cons!4903) (t!73518 (minValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))) b!525902))

(declare-fun m!772067 () Bool)

(assert (=> setNonEmpty!2471 m!772067))

(declare-fun m!772069 () Bool)

(assert (=> b!525902 m!772069))

(declare-fun b!525906 () Bool)

(declare-fun b_free!13877 () Bool)

(declare-fun b_next!13893 () Bool)

(assert (=> b!525906 (= b_free!13877 (not b_next!13893))))

(declare-fun tp!165716 () Bool)

(declare-fun b_and!51371 () Bool)

(assert (=> b!525906 (= tp!165716 b_and!51371)))

(declare-fun b_free!13879 () Bool)

(declare-fun b_next!13895 () Bool)

(assert (=> b!525906 (= b_free!13879 (not b_next!13895))))

(declare-fun tp!165715 () Bool)

(declare-fun b_and!51373 () Bool)

(assert (=> b!525906 (= tp!165715 b_and!51373)))

(declare-fun e!315839 () Bool)

(assert (=> b!525906 (= e!315839 (and tp!165716 tp!165715))))

(declare-fun tp!165717 () Bool)

(declare-fun b!525905 () Bool)

(declare-fun e!315840 () Bool)

(assert (=> b!525905 (= e!315840 (and tp!165717 (inv!6162 (tag!1148 (h!10307 (t!73521 (t!73521 rules!1345))))) (inv!6170 (transformation!886 (h!10307 (t!73521 (t!73521 rules!1345))))) e!315839))))

(declare-fun b!525904 () Bool)

(declare-fun e!315838 () Bool)

(declare-fun tp!165714 () Bool)

(assert (=> b!525904 (= e!315838 (and e!315840 tp!165714))))

(assert (=> b!525418 (= tp!165530 e!315838)))

(assert (= b!525905 b!525906))

(assert (= b!525904 b!525905))

(assert (= (and b!525418 ((_ is Cons!4906) (t!73521 (t!73521 rules!1345)))) b!525904))

(declare-fun m!772071 () Bool)

(assert (=> b!525905 m!772071))

(declare-fun m!772073 () Bool)

(assert (=> b!525905 m!772073))

(declare-fun e!315841 () Bool)

(declare-fun tp!165718 () Bool)

(declare-fun b!525907 () Bool)

(declare-fun tp!165719 () Bool)

(assert (=> b!525907 (= e!315841 (and (inv!6169 (left!4199 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) tp!165718 (inv!6169 (right!4529 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) tp!165719))))

(declare-fun b!525909 () Bool)

(declare-fun e!315842 () Bool)

(declare-fun tp!165720 () Bool)

(assert (=> b!525909 (= e!315842 tp!165720)))

(declare-fun b!525908 () Bool)

(assert (=> b!525908 (= e!315841 (and (inv!6178 (xs!4229 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) e!315842))))

(assert (=> b!525447 (= tp!165567 (and (inv!6169 (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) e!315841))))

(assert (= (and b!525447 ((_ is Node!1594) (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) b!525907))

(assert (= b!525908 b!525909))

(assert (= (and b!525447 ((_ is Leaf!2540) (left!4199 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) b!525908))

(declare-fun m!772075 () Bool)

(assert (=> b!525907 m!772075))

(declare-fun m!772077 () Bool)

(assert (=> b!525907 m!772077))

(declare-fun m!772079 () Bool)

(assert (=> b!525908 m!772079))

(assert (=> b!525447 m!771516))

(declare-fun e!315843 () Bool)

(declare-fun tp!165721 () Bool)

(declare-fun tp!165722 () Bool)

(declare-fun b!525910 () Bool)

(assert (=> b!525910 (= e!315843 (and (inv!6169 (left!4199 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) tp!165721 (inv!6169 (right!4529 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) tp!165722))))

(declare-fun b!525912 () Bool)

(declare-fun e!315844 () Bool)

(declare-fun tp!165723 () Bool)

(assert (=> b!525912 (= e!315844 tp!165723)))

(declare-fun b!525911 () Bool)

(assert (=> b!525911 (= e!315843 (and (inv!6178 (xs!4229 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) e!315844))))

(assert (=> b!525447 (= tp!165568 (and (inv!6169 (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))) e!315843))))

(assert (= (and b!525447 ((_ is Node!1594) (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) b!525910))

(assert (= b!525911 b!525912))

(assert (= (and b!525447 ((_ is Leaf!2540) (right!4529 (c!100954 (totalInput!1740 cacheFurthestNullable!56))))) b!525911))

(declare-fun m!772081 () Bool)

(assert (=> b!525910 m!772081))

(declare-fun m!772083 () Bool)

(assert (=> b!525910 m!772083))

(declare-fun m!772085 () Bool)

(assert (=> b!525911 m!772085))

(assert (=> b!525447 m!771518))

(declare-fun tp!165728 () Bool)

(declare-fun setElem!2472 () Context!298)

(declare-fun setRes!2473 () Bool)

(declare-fun setNonEmpty!2472 () Bool)

(declare-fun e!315850 () Bool)

(assert (=> setNonEmpty!2472 (= setRes!2473 (and tp!165728 (inv!6177 setElem!2472) e!315850))))

(declare-fun mapDefault!2238 () List!4913)

(declare-fun setRest!2472 () (InoxSet Context!298))

(assert (=> setNonEmpty!2472 (= (_2!3256 (h!10304 mapDefault!2238)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2472 true) setRest!2472))))

(declare-fun e!315847 () Bool)

(declare-fun setRes!2472 () Bool)

(declare-fun e!315849 () Bool)

(declare-fun b!525913 () Bool)

(declare-fun tp!165732 () Bool)

(declare-fun mapValue!2238 () List!4913)

(assert (=> b!525913 (= e!315847 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 mapValue!2238)))) e!315849 tp_is_empty!2795 setRes!2472 tp!165732))))

(declare-fun condSetEmpty!2473 () Bool)

(assert (=> b!525913 (= condSetEmpty!2473 (= (_2!3256 (h!10304 mapValue!2238)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525914 () Bool)

(declare-fun e!315848 () Bool)

(declare-fun tp!165726 () Bool)

(assert (=> b!525914 (= e!315848 tp!165726)))

(declare-fun b!525915 () Bool)

(declare-fun e!315845 () Bool)

(declare-fun tp!165725 () Bool)

(assert (=> b!525915 (= e!315845 tp!165725)))

(declare-fun setIsEmpty!2472 () Bool)

(assert (=> setIsEmpty!2472 setRes!2472))

(declare-fun tp!165727 () Bool)

(declare-fun b!525916 () Bool)

(declare-fun e!315846 () Bool)

(assert (=> b!525916 (= e!315846 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 mapDefault!2238)))) e!315848 tp_is_empty!2795 setRes!2473 tp!165727))))

(declare-fun condSetEmpty!2472 () Bool)

(assert (=> b!525916 (= condSetEmpty!2472 (= (_2!3256 (h!10304 mapDefault!2238)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun mapIsEmpty!2238 () Bool)

(declare-fun mapRes!2238 () Bool)

(assert (=> mapIsEmpty!2238 mapRes!2238))

(declare-fun b!525917 () Bool)

(declare-fun tp!165724 () Bool)

(assert (=> b!525917 (= e!315850 tp!165724)))

(declare-fun condMapEmpty!2238 () Bool)

(assert (=> mapNonEmpty!2234 (= condMapEmpty!2238 (= mapRest!2234 ((as const (Array (_ BitVec 32) List!4913)) mapDefault!2238)))))

(assert (=> mapNonEmpty!2234 (= tp!165597 (and e!315846 mapRes!2238))))

(declare-fun setIsEmpty!2473 () Bool)

(assert (=> setIsEmpty!2473 setRes!2473))

(declare-fun mapNonEmpty!2238 () Bool)

(declare-fun tp!165730 () Bool)

(assert (=> mapNonEmpty!2238 (= mapRes!2238 (and tp!165730 e!315847))))

(declare-fun mapRest!2238 () (Array (_ BitVec 32) List!4913))

(declare-fun mapKey!2238 () (_ BitVec 32))

(assert (=> mapNonEmpty!2238 (= mapRest!2234 (store mapRest!2238 mapKey!2238 mapValue!2238))))

(declare-fun setElem!2473 () Context!298)

(declare-fun setNonEmpty!2473 () Bool)

(declare-fun tp!165731 () Bool)

(assert (=> setNonEmpty!2473 (= setRes!2472 (and tp!165731 (inv!6177 setElem!2473) e!315845))))

(declare-fun setRest!2473 () (InoxSet Context!298))

(assert (=> setNonEmpty!2473 (= (_2!3256 (h!10304 mapValue!2238)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2473 true) setRest!2473))))

(declare-fun b!525918 () Bool)

(declare-fun tp!165729 () Bool)

(assert (=> b!525918 (= e!315849 tp!165729)))

(assert (= (and mapNonEmpty!2234 condMapEmpty!2238) mapIsEmpty!2238))

(assert (= (and mapNonEmpty!2234 (not condMapEmpty!2238)) mapNonEmpty!2238))

(assert (= b!525913 b!525918))

(assert (= (and b!525913 condSetEmpty!2473) setIsEmpty!2472))

(assert (= (and b!525913 (not condSetEmpty!2473)) setNonEmpty!2473))

(assert (= setNonEmpty!2473 b!525915))

(assert (= (and mapNonEmpty!2238 ((_ is Cons!4903) mapValue!2238)) b!525913))

(assert (= b!525916 b!525914))

(assert (= (and b!525916 condSetEmpty!2472) setIsEmpty!2473))

(assert (= (and b!525916 (not condSetEmpty!2472)) setNonEmpty!2472))

(assert (= setNonEmpty!2472 b!525917))

(assert (= (and mapNonEmpty!2234 ((_ is Cons!4903) mapDefault!2238)) b!525916))

(declare-fun m!772087 () Bool)

(assert (=> b!525916 m!772087))

(declare-fun m!772089 () Bool)

(assert (=> b!525913 m!772089))

(declare-fun m!772091 () Bool)

(assert (=> mapNonEmpty!2238 m!772091))

(declare-fun m!772093 () Bool)

(assert (=> setNonEmpty!2472 m!772093))

(declare-fun m!772095 () Bool)

(assert (=> setNonEmpty!2473 m!772095))

(declare-fun b!525919 () Bool)

(declare-fun e!315851 () Bool)

(declare-fun tp!165733 () Bool)

(declare-fun tp!165734 () Bool)

(assert (=> b!525919 (= e!315851 (and tp!165733 tp!165734))))

(assert (=> b!525393 (= tp!165500 e!315851)))

(assert (= (and b!525393 ((_ is Cons!4901) (exprs!649 setElem!2433))) b!525919))

(declare-fun setElem!2474 () Context!298)

(declare-fun tp!165735 () Bool)

(declare-fun setRes!2474 () Bool)

(declare-fun e!315852 () Bool)

(declare-fun setNonEmpty!2474 () Bool)

(assert (=> setNonEmpty!2474 (= setRes!2474 (and tp!165735 (inv!6177 setElem!2474) e!315852))))

(declare-fun setRest!2474 () (InoxSet Context!298))

(assert (=> setNonEmpty!2474 (= (_2!3256 (h!10304 (t!73518 mapDefault!2234))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2474 true) setRest!2474))))

(declare-fun b!525920 () Bool)

(declare-fun e!315854 () Bool)

(declare-fun tp!165736 () Bool)

(assert (=> b!525920 (= e!315854 tp!165736)))

(declare-fun setIsEmpty!2474 () Bool)

(assert (=> setIsEmpty!2474 setRes!2474))

(declare-fun b!525921 () Bool)

(declare-fun e!315853 () Bool)

(declare-fun tp!165737 () Bool)

(assert (=> b!525921 (= e!315853 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (t!73518 mapDefault!2234))))) e!315854 tp_is_empty!2795 setRes!2474 tp!165737))))

(declare-fun condSetEmpty!2474 () Bool)

(assert (=> b!525921 (= condSetEmpty!2474 (= (_2!3256 (h!10304 (t!73518 mapDefault!2234))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525922 () Bool)

(declare-fun tp!165738 () Bool)

(assert (=> b!525922 (= e!315852 tp!165738)))

(assert (=> b!525470 (= tp!165594 e!315853)))

(assert (= b!525921 b!525920))

(assert (= (and b!525921 condSetEmpty!2474) setIsEmpty!2474))

(assert (= (and b!525921 (not condSetEmpty!2474)) setNonEmpty!2474))

(assert (= setNonEmpty!2474 b!525922))

(assert (= (and b!525470 ((_ is Cons!4903) (t!73518 mapDefault!2234))) b!525921))

(declare-fun m!772097 () Bool)

(assert (=> setNonEmpty!2474 m!772097))

(declare-fun m!772099 () Bool)

(assert (=> b!525921 m!772099))

(declare-fun b!525923 () Bool)

(declare-fun e!315855 () Bool)

(declare-fun tp!165739 () Bool)

(declare-fun tp!165740 () Bool)

(assert (=> b!525923 (= e!315855 (and tp!165739 tp!165740))))

(assert (=> b!525505 (= tp!165651 e!315855)))

(assert (= (and b!525505 ((_ is Cons!4901) (exprs!649 (_2!3257 (_1!3258 (h!10305 mapValue!2237)))))) b!525923))

(declare-fun b!525925 () Bool)

(declare-fun e!315856 () Bool)

(declare-fun tp!165742 () Bool)

(declare-fun tp!165741 () Bool)

(assert (=> b!525925 (= e!315856 (and tp!165742 tp!165741))))

(declare-fun b!525924 () Bool)

(assert (=> b!525924 (= e!315856 tp_is_empty!2795)))

(declare-fun b!525926 () Bool)

(declare-fun tp!165744 () Bool)

(assert (=> b!525926 (= e!315856 tp!165744)))

(declare-fun b!525927 () Bool)

(declare-fun tp!165745 () Bool)

(declare-fun tp!165743 () Bool)

(assert (=> b!525927 (= e!315856 (and tp!165745 tp!165743))))

(assert (=> b!525489 (= tp!165618 e!315856)))

(assert (= (and b!525489 ((_ is ElementMatch!1211) (regOne!2935 (regex!886 (h!10307 rules!1345))))) b!525924))

(assert (= (and b!525489 ((_ is Concat!2121) (regOne!2935 (regex!886 (h!10307 rules!1345))))) b!525925))

(assert (= (and b!525489 ((_ is Star!1211) (regOne!2935 (regex!886 (h!10307 rules!1345))))) b!525926))

(assert (= (and b!525489 ((_ is Union!1211) (regOne!2935 (regex!886 (h!10307 rules!1345))))) b!525927))

(declare-fun b!525929 () Bool)

(declare-fun e!315857 () Bool)

(declare-fun tp!165747 () Bool)

(declare-fun tp!165746 () Bool)

(assert (=> b!525929 (= e!315857 (and tp!165747 tp!165746))))

(declare-fun b!525928 () Bool)

(assert (=> b!525928 (= e!315857 tp_is_empty!2795)))

(declare-fun b!525930 () Bool)

(declare-fun tp!165749 () Bool)

(assert (=> b!525930 (= e!315857 tp!165749)))

(declare-fun b!525931 () Bool)

(declare-fun tp!165750 () Bool)

(declare-fun tp!165748 () Bool)

(assert (=> b!525931 (= e!315857 (and tp!165750 tp!165748))))

(assert (=> b!525489 (= tp!165616 e!315857)))

(assert (= (and b!525489 ((_ is ElementMatch!1211) (regTwo!2935 (regex!886 (h!10307 rules!1345))))) b!525928))

(assert (= (and b!525489 ((_ is Concat!2121) (regTwo!2935 (regex!886 (h!10307 rules!1345))))) b!525929))

(assert (= (and b!525489 ((_ is Star!1211) (regTwo!2935 (regex!886 (h!10307 rules!1345))))) b!525930))

(assert (= (and b!525489 ((_ is Union!1211) (regTwo!2935 (regex!886 (h!10307 rules!1345))))) b!525931))

(declare-fun setRes!2475 () Bool)

(declare-fun setElem!2475 () Context!298)

(declare-fun setNonEmpty!2475 () Bool)

(declare-fun tp!165751 () Bool)

(declare-fun e!315858 () Bool)

(assert (=> setNonEmpty!2475 (= setRes!2475 (and tp!165751 (inv!6177 setElem!2475) e!315858))))

(declare-fun setRest!2475 () (InoxSet Context!298))

(assert (=> setNonEmpty!2475 (= (_2!3256 (h!10304 (t!73518 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2475 true) setRest!2475))))

(declare-fun b!525932 () Bool)

(declare-fun e!315860 () Bool)

(declare-fun tp!165752 () Bool)

(assert (=> b!525932 (= e!315860 tp!165752)))

(declare-fun setIsEmpty!2475 () Bool)

(assert (=> setIsEmpty!2475 setRes!2475))

(declare-fun tp!165753 () Bool)

(declare-fun b!525933 () Bool)

(declare-fun e!315859 () Bool)

(assert (=> b!525933 (= e!315859 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (t!73518 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))))) e!315860 tp_is_empty!2795 setRes!2475 tp!165753))))

(declare-fun condSetEmpty!2475 () Bool)

(assert (=> b!525933 (= condSetEmpty!2475 (= (_2!3256 (h!10304 (t!73518 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525934 () Bool)

(declare-fun tp!165754 () Bool)

(assert (=> b!525934 (= e!315858 tp!165754)))

(assert (=> b!525405 (= tp!165516 e!315859)))

(assert (= b!525933 b!525932))

(assert (= (and b!525933 condSetEmpty!2475) setIsEmpty!2475))

(assert (= (and b!525933 (not condSetEmpty!2475)) setNonEmpty!2475))

(assert (= setNonEmpty!2475 b!525934))

(assert (= (and b!525405 ((_ is Cons!4903) (t!73518 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449))))))))) b!525933))

(declare-fun m!772101 () Bool)

(assert (=> setNonEmpty!2475 m!772101))

(declare-fun m!772103 () Bool)

(assert (=> b!525933 m!772103))

(declare-fun condSetEmpty!2476 () Bool)

(assert (=> setNonEmpty!2452 (= condSetEmpty!2476 (= setRest!2452 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2476 () Bool)

(assert (=> setNonEmpty!2452 (= tp!165598 setRes!2476)))

(declare-fun setIsEmpty!2476 () Bool)

(assert (=> setIsEmpty!2476 setRes!2476))

(declare-fun e!315861 () Bool)

(declare-fun setNonEmpty!2476 () Bool)

(declare-fun tp!165756 () Bool)

(declare-fun setElem!2476 () Context!298)

(assert (=> setNonEmpty!2476 (= setRes!2476 (and tp!165756 (inv!6177 setElem!2476) e!315861))))

(declare-fun setRest!2476 () (InoxSet Context!298))

(assert (=> setNonEmpty!2476 (= setRest!2452 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2476 true) setRest!2476))))

(declare-fun b!525935 () Bool)

(declare-fun tp!165755 () Bool)

(assert (=> b!525935 (= e!315861 tp!165755)))

(assert (= (and setNonEmpty!2452 condSetEmpty!2476) setIsEmpty!2476))

(assert (= (and setNonEmpty!2452 (not condSetEmpty!2476)) setNonEmpty!2476))

(assert (= setNonEmpty!2476 b!525935))

(declare-fun m!772105 () Bool)

(assert (=> setNonEmpty!2476 m!772105))

(declare-fun b!525936 () Bool)

(declare-fun e!315862 () Bool)

(declare-fun tp!165757 () Bool)

(declare-fun tp!165758 () Bool)

(assert (=> b!525936 (= e!315862 (and tp!165757 tp!165758))))

(assert (=> b!525409 (= tp!165521 e!315862)))

(assert (= (and b!525409 ((_ is Cons!4901) (exprs!649 setElem!2438))) b!525936))

(declare-fun b!525938 () Bool)

(declare-fun e!315863 () Bool)

(declare-fun tp!165760 () Bool)

(declare-fun tp!165759 () Bool)

(assert (=> b!525938 (= e!315863 (and tp!165760 tp!165759))))

(declare-fun b!525937 () Bool)

(assert (=> b!525937 (= e!315863 tp_is_empty!2795)))

(declare-fun b!525939 () Bool)

(declare-fun tp!165762 () Bool)

(assert (=> b!525939 (= e!315863 tp!165762)))

(declare-fun b!525940 () Bool)

(declare-fun tp!165763 () Bool)

(declare-fun tp!165761 () Bool)

(assert (=> b!525940 (= e!315863 (and tp!165763 tp!165761))))

(assert (=> b!525487 (= tp!165615 e!315863)))

(assert (= (and b!525487 ((_ is ElementMatch!1211) (regOne!2934 (regex!886 (h!10307 rules!1345))))) b!525937))

(assert (= (and b!525487 ((_ is Concat!2121) (regOne!2934 (regex!886 (h!10307 rules!1345))))) b!525938))

(assert (= (and b!525487 ((_ is Star!1211) (regOne!2934 (regex!886 (h!10307 rules!1345))))) b!525939))

(assert (= (and b!525487 ((_ is Union!1211) (regOne!2934 (regex!886 (h!10307 rules!1345))))) b!525940))

(declare-fun b!525942 () Bool)

(declare-fun e!315864 () Bool)

(declare-fun tp!165765 () Bool)

(declare-fun tp!165764 () Bool)

(assert (=> b!525942 (= e!315864 (and tp!165765 tp!165764))))

(declare-fun b!525941 () Bool)

(assert (=> b!525941 (= e!315864 tp_is_empty!2795)))

(declare-fun b!525943 () Bool)

(declare-fun tp!165767 () Bool)

(assert (=> b!525943 (= e!315864 tp!165767)))

(declare-fun b!525944 () Bool)

(declare-fun tp!165768 () Bool)

(declare-fun tp!165766 () Bool)

(assert (=> b!525944 (= e!315864 (and tp!165768 tp!165766))))

(assert (=> b!525487 (= tp!165614 e!315864)))

(assert (= (and b!525487 ((_ is ElementMatch!1211) (regTwo!2934 (regex!886 (h!10307 rules!1345))))) b!525941))

(assert (= (and b!525487 ((_ is Concat!2121) (regTwo!2934 (regex!886 (h!10307 rules!1345))))) b!525942))

(assert (= (and b!525487 ((_ is Star!1211) (regTwo!2934 (regex!886 (h!10307 rules!1345))))) b!525943))

(assert (= (and b!525487 ((_ is Union!1211) (regTwo!2934 (regex!886 (h!10307 rules!1345))))) b!525944))

(declare-fun condSetEmpty!2477 () Bool)

(assert (=> setNonEmpty!2453 (= condSetEmpty!2477 (= setRest!2453 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2477 () Bool)

(assert (=> setNonEmpty!2453 (= tp!165600 setRes!2477)))

(declare-fun setIsEmpty!2477 () Bool)

(assert (=> setIsEmpty!2477 setRes!2477))

(declare-fun setElem!2477 () Context!298)

(declare-fun e!315865 () Bool)

(declare-fun setNonEmpty!2477 () Bool)

(declare-fun tp!165770 () Bool)

(assert (=> setNonEmpty!2477 (= setRes!2477 (and tp!165770 (inv!6177 setElem!2477) e!315865))))

(declare-fun setRest!2477 () (InoxSet Context!298))

(assert (=> setNonEmpty!2477 (= setRest!2453 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2477 true) setRest!2477))))

(declare-fun b!525945 () Bool)

(declare-fun tp!165769 () Bool)

(assert (=> b!525945 (= e!315865 tp!165769)))

(assert (= (and setNonEmpty!2453 condSetEmpty!2477) setIsEmpty!2477))

(assert (= (and setNonEmpty!2453 (not condSetEmpty!2477)) setNonEmpty!2477))

(assert (= setNonEmpty!2477 b!525945))

(declare-fun m!772107 () Bool)

(assert (=> setNonEmpty!2477 m!772107))

(declare-fun condSetEmpty!2478 () Bool)

(assert (=> setNonEmpty!2430 (= condSetEmpty!2478 (= setRest!2430 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2478 () Bool)

(assert (=> setNonEmpty!2430 (= tp!165491 setRes!2478)))

(declare-fun setIsEmpty!2478 () Bool)

(assert (=> setIsEmpty!2478 setRes!2478))

(declare-fun tp!165772 () Bool)

(declare-fun setNonEmpty!2478 () Bool)

(declare-fun setElem!2478 () Context!298)

(declare-fun e!315866 () Bool)

(assert (=> setNonEmpty!2478 (= setRes!2478 (and tp!165772 (inv!6177 setElem!2478) e!315866))))

(declare-fun setRest!2478 () (InoxSet Context!298))

(assert (=> setNonEmpty!2478 (= setRest!2430 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2478 true) setRest!2478))))

(declare-fun b!525946 () Bool)

(declare-fun tp!165771 () Bool)

(assert (=> b!525946 (= e!315866 tp!165771)))

(assert (= (and setNonEmpty!2430 condSetEmpty!2478) setIsEmpty!2478))

(assert (= (and setNonEmpty!2430 (not condSetEmpty!2478)) setNonEmpty!2478))

(assert (= setNonEmpty!2478 b!525946))

(declare-fun m!772109 () Bool)

(assert (=> setNonEmpty!2478 m!772109))

(declare-fun condSetEmpty!2479 () Bool)

(assert (=> setNonEmpty!2429 (= condSetEmpty!2479 (= setRest!2429 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2479 () Bool)

(assert (=> setNonEmpty!2429 (= tp!165486 setRes!2479)))

(declare-fun setIsEmpty!2479 () Bool)

(assert (=> setIsEmpty!2479 setRes!2479))

(declare-fun tp!165774 () Bool)

(declare-fun setElem!2479 () Context!298)

(declare-fun e!315867 () Bool)

(declare-fun setNonEmpty!2479 () Bool)

(assert (=> setNonEmpty!2479 (= setRes!2479 (and tp!165774 (inv!6177 setElem!2479) e!315867))))

(declare-fun setRest!2479 () (InoxSet Context!298))

(assert (=> setNonEmpty!2479 (= setRest!2429 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2479 true) setRest!2479))))

(declare-fun b!525947 () Bool)

(declare-fun tp!165773 () Bool)

(assert (=> b!525947 (= e!315867 tp!165773)))

(assert (= (and setNonEmpty!2429 condSetEmpty!2479) setIsEmpty!2479))

(assert (= (and setNonEmpty!2429 (not condSetEmpty!2479)) setNonEmpty!2479))

(assert (= setNonEmpty!2479 b!525947))

(declare-fun m!772111 () Bool)

(assert (=> setNonEmpty!2479 m!772111))

(declare-fun setIsEmpty!2480 () Bool)

(declare-fun setRes!2480 () Bool)

(assert (=> setIsEmpty!2480 setRes!2480))

(declare-fun b!525948 () Bool)

(declare-fun e!315868 () Bool)

(declare-fun tp!165776 () Bool)

(assert (=> b!525948 (= e!315868 (and setRes!2480 tp!165776))))

(declare-fun condSetEmpty!2480 () Bool)

(assert (=> b!525948 (= condSetEmpty!2480 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapDefault!2231)))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525434 (= tp!165552 e!315868)))

(declare-fun setElem!2480 () Context!298)

(declare-fun e!315869 () Bool)

(declare-fun setNonEmpty!2480 () Bool)

(declare-fun tp!165777 () Bool)

(assert (=> setNonEmpty!2480 (= setRes!2480 (and tp!165777 (inv!6177 setElem!2480) e!315869))))

(declare-fun setRest!2480 () (InoxSet Context!298))

(assert (=> setNonEmpty!2480 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapDefault!2231)))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2480 true) setRest!2480))))

(declare-fun b!525949 () Bool)

(declare-fun tp!165775 () Bool)

(assert (=> b!525949 (= e!315869 tp!165775)))

(assert (= (and b!525948 condSetEmpty!2480) setIsEmpty!2480))

(assert (= (and b!525948 (not condSetEmpty!2480)) setNonEmpty!2480))

(assert (= setNonEmpty!2480 b!525949))

(assert (= (and b!525434 ((_ is Cons!4902) (t!73517 mapDefault!2231))) b!525948))

(declare-fun m!772113 () Bool)

(assert (=> setNonEmpty!2480 m!772113))

(declare-fun b!525951 () Bool)

(declare-fun e!315870 () Bool)

(declare-fun tp!165779 () Bool)

(declare-fun tp!165778 () Bool)

(assert (=> b!525951 (= e!315870 (and tp!165779 tp!165778))))

(declare-fun b!525950 () Bool)

(assert (=> b!525950 (= e!315870 tp_is_empty!2795)))

(declare-fun b!525952 () Bool)

(declare-fun tp!165781 () Bool)

(assert (=> b!525952 (= e!315870 tp!165781)))

(declare-fun b!525953 () Bool)

(declare-fun tp!165782 () Bool)

(declare-fun tp!165780 () Bool)

(assert (=> b!525953 (= e!315870 (and tp!165782 tp!165780))))

(assert (=> b!525508 (= tp!165643 e!315870)))

(assert (= (and b!525508 ((_ is ElementMatch!1211) (_1!3257 (_1!3258 (h!10305 mapDefault!2237))))) b!525950))

(assert (= (and b!525508 ((_ is Concat!2121) (_1!3257 (_1!3258 (h!10305 mapDefault!2237))))) b!525951))

(assert (= (and b!525508 ((_ is Star!1211) (_1!3257 (_1!3258 (h!10305 mapDefault!2237))))) b!525952))

(assert (= (and b!525508 ((_ is Union!1211) (_1!3257 (_1!3258 (h!10305 mapDefault!2237))))) b!525953))

(declare-fun e!315873 () Bool)

(assert (=> b!525508 (= tp!165650 e!315873)))

(declare-fun setIsEmpty!2481 () Bool)

(declare-fun setRes!2481 () Bool)

(assert (=> setIsEmpty!2481 setRes!2481))

(declare-fun b!525954 () Bool)

(declare-fun e!315872 () Bool)

(declare-fun tp!165784 () Bool)

(declare-fun tp!165786 () Bool)

(assert (=> b!525954 (= e!315873 (and tp!165786 (inv!6177 (_2!3257 (_1!3258 (h!10305 (t!73519 mapDefault!2237))))) e!315872 tp_is_empty!2795 setRes!2481 tp!165784))))

(declare-fun condSetEmpty!2481 () Bool)

(assert (=> b!525954 (= condSetEmpty!2481 (= (_2!3258 (h!10305 (t!73519 mapDefault!2237))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525955 () Bool)

(declare-fun e!315871 () Bool)

(declare-fun tp!165783 () Bool)

(assert (=> b!525955 (= e!315871 tp!165783)))

(declare-fun setElem!2481 () Context!298)

(declare-fun tp!165785 () Bool)

(declare-fun setNonEmpty!2481 () Bool)

(assert (=> setNonEmpty!2481 (= setRes!2481 (and tp!165785 (inv!6177 setElem!2481) e!315871))))

(declare-fun setRest!2481 () (InoxSet Context!298))

(assert (=> setNonEmpty!2481 (= (_2!3258 (h!10305 (t!73519 mapDefault!2237))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2481 true) setRest!2481))))

(declare-fun b!525956 () Bool)

(declare-fun tp!165787 () Bool)

(assert (=> b!525956 (= e!315872 tp!165787)))

(assert (= b!525954 b!525956))

(assert (= (and b!525954 condSetEmpty!2481) setIsEmpty!2481))

(assert (= (and b!525954 (not condSetEmpty!2481)) setNonEmpty!2481))

(assert (= setNonEmpty!2481 b!525955))

(assert (= (and b!525508 ((_ is Cons!4904) (t!73519 mapDefault!2237))) b!525954))

(declare-fun m!772115 () Bool)

(assert (=> b!525954 m!772115))

(declare-fun m!772117 () Bool)

(assert (=> setNonEmpty!2481 m!772117))

(declare-fun setIsEmpty!2482 () Bool)

(declare-fun setRes!2482 () Bool)

(assert (=> setIsEmpty!2482 setRes!2482))

(declare-fun b!525957 () Bool)

(declare-fun e!315874 () Bool)

(declare-fun tp!165789 () Bool)

(assert (=> b!525957 (= e!315874 (and setRes!2482 tp!165789))))

(declare-fun condSetEmpty!2482 () Bool)

(assert (=> b!525957 (= condSetEmpty!2482 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapValue!2227)))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525437 (= tp!165559 e!315874)))

(declare-fun setNonEmpty!2482 () Bool)

(declare-fun tp!165790 () Bool)

(declare-fun setElem!2482 () Context!298)

(declare-fun e!315875 () Bool)

(assert (=> setNonEmpty!2482 (= setRes!2482 (and tp!165790 (inv!6177 setElem!2482) e!315875))))

(declare-fun setRest!2482 () (InoxSet Context!298))

(assert (=> setNonEmpty!2482 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapValue!2227)))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2482 true) setRest!2482))))

(declare-fun b!525958 () Bool)

(declare-fun tp!165788 () Bool)

(assert (=> b!525958 (= e!315875 tp!165788)))

(assert (= (and b!525957 condSetEmpty!2482) setIsEmpty!2482))

(assert (= (and b!525957 (not condSetEmpty!2482)) setNonEmpty!2482))

(assert (= setNonEmpty!2482 b!525958))

(assert (= (and b!525437 ((_ is Cons!4902) (t!73517 mapValue!2227))) b!525957))

(declare-fun m!772119 () Bool)

(assert (=> setNonEmpty!2482 m!772119))

(declare-fun b!525959 () Bool)

(declare-fun e!315876 () Bool)

(declare-fun tp!165791 () Bool)

(declare-fun tp!165792 () Bool)

(assert (=> b!525959 (= e!315876 (and tp!165791 tp!165792))))

(assert (=> b!525395 (= tp!165503 e!315876)))

(assert (= (and b!525395 ((_ is Cons!4901) (exprs!649 setElem!2434))) b!525959))

(declare-fun mapNonEmpty!2239 () Bool)

(declare-fun mapRes!2239 () Bool)

(declare-fun tp!165795 () Bool)

(declare-fun e!315879 () Bool)

(assert (=> mapNonEmpty!2239 (= mapRes!2239 (and tp!165795 e!315879))))

(declare-fun mapRest!2239 () (Array (_ BitVec 32) List!4912))

(declare-fun mapValue!2239 () List!4912)

(declare-fun mapKey!2239 () (_ BitVec 32))

(assert (=> mapNonEmpty!2239 (= mapRest!2231 (store mapRest!2239 mapKey!2239 mapValue!2239))))

(declare-fun setIsEmpty!2483 () Bool)

(declare-fun setRes!2483 () Bool)

(assert (=> setIsEmpty!2483 setRes!2483))

(declare-fun setIsEmpty!2484 () Bool)

(declare-fun setRes!2484 () Bool)

(assert (=> setIsEmpty!2484 setRes!2484))

(declare-fun b!525961 () Bool)

(declare-fun e!315880 () Bool)

(declare-fun tp!165794 () Bool)

(assert (=> b!525961 (= e!315880 (and setRes!2484 tp!165794))))

(declare-fun condSetEmpty!2483 () Bool)

(declare-fun mapDefault!2239 () List!4912)

(assert (=> b!525961 (= condSetEmpty!2483 (= (_1!3253 (_1!3254 (h!10303 mapDefault!2239))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun e!315877 () Bool)

(declare-fun setNonEmpty!2483 () Bool)

(declare-fun setElem!2484 () Context!298)

(declare-fun tp!165799 () Bool)

(assert (=> setNonEmpty!2483 (= setRes!2484 (and tp!165799 (inv!6177 setElem!2484) e!315877))))

(declare-fun setRest!2483 () (InoxSet Context!298))

(assert (=> setNonEmpty!2483 (= (_1!3253 (_1!3254 (h!10303 mapDefault!2239))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2484 true) setRest!2483))))

(declare-fun mapIsEmpty!2239 () Bool)

(assert (=> mapIsEmpty!2239 mapRes!2239))

(declare-fun b!525962 () Bool)

(declare-fun tp!165796 () Bool)

(assert (=> b!525962 (= e!315879 (and setRes!2483 tp!165796))))

(declare-fun condSetEmpty!2484 () Bool)

(assert (=> b!525962 (= condSetEmpty!2484 (= (_1!3253 (_1!3254 (h!10303 mapValue!2239))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525963 () Bool)

(declare-fun e!315878 () Bool)

(declare-fun tp!165797 () Bool)

(assert (=> b!525963 (= e!315878 tp!165797)))

(declare-fun tp!165793 () Bool)

(declare-fun setElem!2483 () Context!298)

(declare-fun setNonEmpty!2484 () Bool)

(assert (=> setNonEmpty!2484 (= setRes!2483 (and tp!165793 (inv!6177 setElem!2483) e!315878))))

(declare-fun setRest!2484 () (InoxSet Context!298))

(assert (=> setNonEmpty!2484 (= (_1!3253 (_1!3254 (h!10303 mapValue!2239))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2483 true) setRest!2484))))

(declare-fun condMapEmpty!2239 () Bool)

(assert (=> mapNonEmpty!2231 (= condMapEmpty!2239 (= mapRest!2231 ((as const (Array (_ BitVec 32) List!4912)) mapDefault!2239)))))

(assert (=> mapNonEmpty!2231 (= tp!165553 (and e!315880 mapRes!2239))))

(declare-fun b!525960 () Bool)

(declare-fun tp!165798 () Bool)

(assert (=> b!525960 (= e!315877 tp!165798)))

(assert (= (and mapNonEmpty!2231 condMapEmpty!2239) mapIsEmpty!2239))

(assert (= (and mapNonEmpty!2231 (not condMapEmpty!2239)) mapNonEmpty!2239))

(assert (= (and b!525962 condSetEmpty!2484) setIsEmpty!2483))

(assert (= (and b!525962 (not condSetEmpty!2484)) setNonEmpty!2484))

(assert (= setNonEmpty!2484 b!525963))

(assert (= (and mapNonEmpty!2239 ((_ is Cons!4902) mapValue!2239)) b!525962))

(assert (= (and b!525961 condSetEmpty!2483) setIsEmpty!2484))

(assert (= (and b!525961 (not condSetEmpty!2483)) setNonEmpty!2483))

(assert (= setNonEmpty!2483 b!525960))

(assert (= (and mapNonEmpty!2231 ((_ is Cons!4902) mapDefault!2239)) b!525961))

(declare-fun m!772121 () Bool)

(assert (=> mapNonEmpty!2239 m!772121))

(declare-fun m!772123 () Bool)

(assert (=> setNonEmpty!2483 m!772123))

(declare-fun m!772125 () Bool)

(assert (=> setNonEmpty!2484 m!772125))

(declare-fun b!525964 () Bool)

(declare-fun e!315881 () Bool)

(declare-fun tp!165800 () Bool)

(declare-fun tp!165801 () Bool)

(assert (=> b!525964 (= e!315881 (and tp!165800 tp!165801))))

(assert (=> b!525506 (= tp!165646 e!315881)))

(assert (= (and b!525506 ((_ is Cons!4901) (exprs!649 (_2!3257 (_1!3258 (h!10305 mapDefault!2237)))))) b!525964))

(declare-fun setIsEmpty!2485 () Bool)

(declare-fun setRes!2485 () Bool)

(assert (=> setIsEmpty!2485 setRes!2485))

(declare-fun b!525965 () Bool)

(declare-fun e!315882 () Bool)

(declare-fun tp!165803 () Bool)

(assert (=> b!525965 (= e!315882 (and setRes!2485 tp!165803))))

(declare-fun condSetEmpty!2485 () Bool)

(assert (=> b!525965 (= condSetEmpty!2485 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapDefault!2226)))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525421 (= tp!165535 e!315882)))

(declare-fun tp!165804 () Bool)

(declare-fun setNonEmpty!2485 () Bool)

(declare-fun e!315883 () Bool)

(declare-fun setElem!2485 () Context!298)

(assert (=> setNonEmpty!2485 (= setRes!2485 (and tp!165804 (inv!6177 setElem!2485) e!315883))))

(declare-fun setRest!2485 () (InoxSet Context!298))

(assert (=> setNonEmpty!2485 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapDefault!2226)))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2485 true) setRest!2485))))

(declare-fun b!525966 () Bool)

(declare-fun tp!165802 () Bool)

(assert (=> b!525966 (= e!315883 tp!165802)))

(assert (= (and b!525965 condSetEmpty!2485) setIsEmpty!2485))

(assert (= (and b!525965 (not condSetEmpty!2485)) setNonEmpty!2485))

(assert (= setNonEmpty!2485 b!525966))

(assert (= (and b!525421 ((_ is Cons!4902) (t!73517 mapDefault!2226))) b!525965))

(declare-fun m!772127 () Bool)

(assert (=> setNonEmpty!2485 m!772127))

(declare-fun b!525967 () Bool)

(declare-fun e!315884 () Bool)

(declare-fun tp!165805 () Bool)

(declare-fun tp!165806 () Bool)

(assert (=> b!525967 (= e!315884 (and tp!165805 tp!165806))))

(assert (=> b!525475 (= tp!165603 e!315884)))

(assert (= (and b!525475 ((_ is Cons!4901) (exprs!649 setElem!2453))) b!525967))

(declare-fun b!525969 () Bool)

(declare-fun e!315885 () Bool)

(declare-fun tp!165808 () Bool)

(declare-fun tp!165807 () Bool)

(assert (=> b!525969 (= e!315885 (and tp!165808 tp!165807))))

(declare-fun b!525968 () Bool)

(assert (=> b!525968 (= e!315885 tp_is_empty!2795)))

(declare-fun b!525970 () Bool)

(declare-fun tp!165810 () Bool)

(assert (=> b!525970 (= e!315885 tp!165810)))

(declare-fun b!525971 () Bool)

(declare-fun tp!165811 () Bool)

(declare-fun tp!165809 () Bool)

(assert (=> b!525971 (= e!315885 (and tp!165811 tp!165809))))

(assert (=> b!525383 (= tp!165492 e!315885)))

(assert (= (and b!525383 ((_ is ElementMatch!1211) (_1!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525968))

(assert (= (and b!525383 ((_ is Concat!2121) (_1!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525969))

(assert (= (and b!525383 ((_ is Star!1211) (_1!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525970))

(assert (= (and b!525383 ((_ is Union!1211) (_1!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525971))

(declare-fun e!315888 () Bool)

(assert (=> b!525383 (= tp!165490 e!315888)))

(declare-fun setIsEmpty!2486 () Bool)

(declare-fun setRes!2486 () Bool)

(assert (=> setIsEmpty!2486 setRes!2486))

(declare-fun tp!165815 () Bool)

(declare-fun b!525972 () Bool)

(declare-fun e!315887 () Bool)

(declare-fun tp!165813 () Bool)

(assert (=> b!525972 (= e!315888 (and tp!165815 (inv!6177 (_2!3257 (_1!3258 (h!10305 (t!73519 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) e!315887 tp_is_empty!2795 setRes!2486 tp!165813))))

(declare-fun condSetEmpty!2486 () Bool)

(assert (=> b!525972 (= condSetEmpty!2486 (= (_2!3258 (h!10305 (t!73519 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525973 () Bool)

(declare-fun e!315886 () Bool)

(declare-fun tp!165812 () Bool)

(assert (=> b!525973 (= e!315886 tp!165812)))

(declare-fun tp!165814 () Bool)

(declare-fun setElem!2486 () Context!298)

(declare-fun setNonEmpty!2486 () Bool)

(assert (=> setNonEmpty!2486 (= setRes!2486 (and tp!165814 (inv!6177 setElem!2486) e!315886))))

(declare-fun setRest!2486 () (InoxSet Context!298))

(assert (=> setNonEmpty!2486 (= (_2!3258 (h!10305 (t!73519 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2486 true) setRest!2486))))

(declare-fun b!525974 () Bool)

(declare-fun tp!165816 () Bool)

(assert (=> b!525974 (= e!315887 tp!165816)))

(assert (= b!525972 b!525974))

(assert (= (and b!525972 condSetEmpty!2486) setIsEmpty!2486))

(assert (= (and b!525972 (not condSetEmpty!2486)) setNonEmpty!2486))

(assert (= setNonEmpty!2486 b!525973))

(assert (= (and b!525383 ((_ is Cons!4904) (t!73519 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))) b!525972))

(declare-fun m!772129 () Bool)

(assert (=> b!525972 m!772129))

(declare-fun m!772131 () Bool)

(assert (=> setNonEmpty!2486 m!772131))

(declare-fun b!525976 () Bool)

(declare-fun e!315889 () Bool)

(declare-fun tp!165818 () Bool)

(declare-fun tp!165817 () Bool)

(assert (=> b!525976 (= e!315889 (and tp!165818 tp!165817))))

(declare-fun b!525975 () Bool)

(assert (=> b!525975 (= e!315889 tp_is_empty!2795)))

(declare-fun b!525977 () Bool)

(declare-fun tp!165820 () Bool)

(assert (=> b!525977 (= e!315889 tp!165820)))

(declare-fun b!525978 () Bool)

(declare-fun tp!165821 () Bool)

(declare-fun tp!165819 () Bool)

(assert (=> b!525978 (= e!315889 (and tp!165821 tp!165819))))

(assert (=> b!525380 (= tp!165487 e!315889)))

(assert (= (and b!525380 ((_ is ElementMatch!1211) (_1!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525975))

(assert (= (and b!525380 ((_ is Concat!2121) (_1!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525976))

(assert (= (and b!525380 ((_ is Star!1211) (_1!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525977))

(assert (= (and b!525380 ((_ is Union!1211) (_1!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) b!525978))

(declare-fun e!315892 () Bool)

(assert (=> b!525380 (= tp!165485 e!315892)))

(declare-fun setIsEmpty!2487 () Bool)

(declare-fun setRes!2487 () Bool)

(assert (=> setIsEmpty!2487 setRes!2487))

(declare-fun b!525979 () Bool)

(declare-fun tp!165823 () Bool)

(declare-fun e!315891 () Bool)

(declare-fun tp!165825 () Bool)

(assert (=> b!525979 (= e!315892 (and tp!165825 (inv!6177 (_2!3257 (_1!3258 (h!10305 (t!73519 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))))) e!315891 tp_is_empty!2795 setRes!2487 tp!165823))))

(declare-fun condSetEmpty!2487 () Bool)

(assert (=> b!525979 (= condSetEmpty!2487 (= (_2!3258 (h!10305 (t!73519 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525980 () Bool)

(declare-fun e!315890 () Bool)

(declare-fun tp!165822 () Bool)

(assert (=> b!525980 (= e!315890 tp!165822)))

(declare-fun setNonEmpty!2487 () Bool)

(declare-fun tp!165824 () Bool)

(declare-fun setElem!2487 () Context!298)

(assert (=> setNonEmpty!2487 (= setRes!2487 (and tp!165824 (inv!6177 setElem!2487) e!315890))))

(declare-fun setRest!2487 () (InoxSet Context!298))

(assert (=> setNonEmpty!2487 (= (_2!3258 (h!10305 (t!73519 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2487 true) setRest!2487))))

(declare-fun b!525981 () Bool)

(declare-fun tp!165826 () Bool)

(assert (=> b!525981 (= e!315891 tp!165826)))

(assert (= b!525979 b!525981))

(assert (= (and b!525979 condSetEmpty!2487) setIsEmpty!2487))

(assert (= (and b!525979 (not condSetEmpty!2487)) setNonEmpty!2487))

(assert (= setNonEmpty!2487 b!525980))

(assert (= (and b!525380 ((_ is Cons!4904) (t!73519 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462))))))))) b!525979))

(declare-fun m!772133 () Bool)

(assert (=> b!525979 m!772133))

(declare-fun m!772135 () Bool)

(assert (=> setNonEmpty!2487 m!772135))

(declare-fun b!525982 () Bool)

(declare-fun e!315893 () Bool)

(declare-fun tp!165827 () Bool)

(declare-fun tp!165828 () Bool)

(assert (=> b!525982 (= e!315893 (and tp!165827 tp!165828))))

(assert (=> b!525507 (= tp!165645 e!315893)))

(assert (= (and b!525507 ((_ is Cons!4901) (exprs!649 setElem!2459))) b!525982))

(declare-fun condSetEmpty!2488 () Bool)

(assert (=> setNonEmpty!2439 (= condSetEmpty!2488 (= setRest!2439 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2488 () Bool)

(assert (=> setNonEmpty!2439 (= tp!165536 setRes!2488)))

(declare-fun setIsEmpty!2488 () Bool)

(assert (=> setIsEmpty!2488 setRes!2488))

(declare-fun e!315894 () Bool)

(declare-fun setNonEmpty!2488 () Bool)

(declare-fun tp!165830 () Bool)

(declare-fun setElem!2488 () Context!298)

(assert (=> setNonEmpty!2488 (= setRes!2488 (and tp!165830 (inv!6177 setElem!2488) e!315894))))

(declare-fun setRest!2488 () (InoxSet Context!298))

(assert (=> setNonEmpty!2488 (= setRest!2439 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2488 true) setRest!2488))))

(declare-fun b!525983 () Bool)

(declare-fun tp!165829 () Bool)

(assert (=> b!525983 (= e!315894 tp!165829)))

(assert (= (and setNonEmpty!2439 condSetEmpty!2488) setIsEmpty!2488))

(assert (= (and setNonEmpty!2439 (not condSetEmpty!2488)) setNonEmpty!2488))

(assert (= setNonEmpty!2488 b!525983))

(declare-fun m!772137 () Bool)

(assert (=> setNonEmpty!2488 m!772137))

(declare-fun e!315895 () Bool)

(declare-fun setElem!2489 () Context!298)

(declare-fun setRes!2489 () Bool)

(declare-fun tp!165831 () Bool)

(declare-fun setNonEmpty!2489 () Bool)

(assert (=> setNonEmpty!2489 (= setRes!2489 (and tp!165831 (inv!6177 setElem!2489) e!315895))))

(declare-fun setRest!2489 () (InoxSet Context!298))

(assert (=> setNonEmpty!2489 (= (_2!3256 (h!10304 (t!73518 mapDefault!2227))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2489 true) setRest!2489))))

(declare-fun b!525984 () Bool)

(declare-fun e!315897 () Bool)

(declare-fun tp!165832 () Bool)

(assert (=> b!525984 (= e!315897 tp!165832)))

(declare-fun setIsEmpty!2489 () Bool)

(assert (=> setIsEmpty!2489 setRes!2489))

(declare-fun tp!165833 () Bool)

(declare-fun b!525985 () Bool)

(declare-fun e!315896 () Bool)

(assert (=> b!525985 (= e!315896 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (t!73518 mapDefault!2227))))) e!315897 tp_is_empty!2795 setRes!2489 tp!165833))))

(declare-fun condSetEmpty!2489 () Bool)

(assert (=> b!525985 (= condSetEmpty!2489 (= (_2!3256 (h!10304 (t!73518 mapDefault!2227))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!525986 () Bool)

(declare-fun tp!165834 () Bool)

(assert (=> b!525986 (= e!315895 tp!165834)))

(assert (=> b!525514 (= tp!165659 e!315896)))

(assert (= b!525985 b!525984))

(assert (= (and b!525985 condSetEmpty!2489) setIsEmpty!2489))

(assert (= (and b!525985 (not condSetEmpty!2489)) setNonEmpty!2489))

(assert (= setNonEmpty!2489 b!525986))

(assert (= (and b!525514 ((_ is Cons!4903) (t!73518 mapDefault!2227))) b!525985))

(declare-fun m!772139 () Bool)

(assert (=> setNonEmpty!2489 m!772139))

(declare-fun m!772141 () Bool)

(assert (=> b!525985 m!772141))

(declare-fun b!525987 () Bool)

(declare-fun e!315898 () Bool)

(declare-fun tp!165835 () Bool)

(declare-fun tp!165836 () Bool)

(assert (=> b!525987 (= e!315898 (and tp!165835 tp!165836))))

(assert (=> b!525468 (= tp!165593 e!315898)))

(assert (= (and b!525468 ((_ is Cons!4901) (exprs!649 (_1!3255 (_1!3256 (h!10304 mapDefault!2234)))))) b!525987))

(declare-fun tp!165838 () Bool)

(declare-fun e!315899 () Bool)

(declare-fun b!525988 () Bool)

(declare-fun tp!165837 () Bool)

(assert (=> b!525988 (= e!315899 (and (inv!6169 (left!4199 (left!4199 (c!100954 input!747)))) tp!165837 (inv!6169 (right!4529 (left!4199 (c!100954 input!747)))) tp!165838))))

(declare-fun b!525990 () Bool)

(declare-fun e!315900 () Bool)

(declare-fun tp!165839 () Bool)

(assert (=> b!525990 (= e!315900 tp!165839)))

(declare-fun b!525989 () Bool)

(assert (=> b!525989 (= e!315899 (and (inv!6178 (xs!4229 (left!4199 (c!100954 input!747)))) e!315900))))

(assert (=> b!525450 (= tp!165570 (and (inv!6169 (left!4199 (c!100954 input!747))) e!315899))))

(assert (= (and b!525450 ((_ is Node!1594) (left!4199 (c!100954 input!747)))) b!525988))

(assert (= b!525989 b!525990))

(assert (= (and b!525450 ((_ is Leaf!2540) (left!4199 (c!100954 input!747)))) b!525989))

(declare-fun m!772143 () Bool)

(assert (=> b!525988 m!772143))

(declare-fun m!772145 () Bool)

(assert (=> b!525988 m!772145))

(declare-fun m!772147 () Bool)

(assert (=> b!525989 m!772147))

(assert (=> b!525450 m!771522))

(declare-fun tp!165840 () Bool)

(declare-fun tp!165841 () Bool)

(declare-fun b!525991 () Bool)

(declare-fun e!315901 () Bool)

(assert (=> b!525991 (= e!315901 (and (inv!6169 (left!4199 (right!4529 (c!100954 input!747)))) tp!165840 (inv!6169 (right!4529 (right!4529 (c!100954 input!747)))) tp!165841))))

(declare-fun b!525993 () Bool)

(declare-fun e!315902 () Bool)

(declare-fun tp!165842 () Bool)

(assert (=> b!525993 (= e!315902 tp!165842)))

(declare-fun b!525992 () Bool)

(assert (=> b!525992 (= e!315901 (and (inv!6178 (xs!4229 (right!4529 (c!100954 input!747)))) e!315902))))

(assert (=> b!525450 (= tp!165571 (and (inv!6169 (right!4529 (c!100954 input!747))) e!315901))))

(assert (= (and b!525450 ((_ is Node!1594) (right!4529 (c!100954 input!747)))) b!525991))

(assert (= b!525992 b!525993))

(assert (= (and b!525450 ((_ is Leaf!2540) (right!4529 (c!100954 input!747)))) b!525992))

(declare-fun m!772149 () Bool)

(assert (=> b!525991 m!772149))

(declare-fun m!772151 () Bool)

(assert (=> b!525991 m!772151))

(declare-fun m!772153 () Bool)

(assert (=> b!525992 m!772153))

(assert (=> b!525450 m!771524))

(declare-fun condSetEmpty!2490 () Bool)

(assert (=> setNonEmpty!2462 (= condSetEmpty!2490 (= setRest!2462 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2490 () Bool)

(assert (=> setNonEmpty!2462 (= tp!165663 setRes!2490)))

(declare-fun setIsEmpty!2490 () Bool)

(assert (=> setIsEmpty!2490 setRes!2490))

(declare-fun e!315903 () Bool)

(declare-fun setNonEmpty!2490 () Bool)

(declare-fun setElem!2490 () Context!298)

(declare-fun tp!165844 () Bool)

(assert (=> setNonEmpty!2490 (= setRes!2490 (and tp!165844 (inv!6177 setElem!2490) e!315903))))

(declare-fun setRest!2490 () (InoxSet Context!298))

(assert (=> setNonEmpty!2490 (= setRest!2462 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2490 true) setRest!2490))))

(declare-fun b!525994 () Bool)

(declare-fun tp!165843 () Bool)

(assert (=> b!525994 (= e!315903 tp!165843)))

(assert (= (and setNonEmpty!2462 condSetEmpty!2490) setIsEmpty!2490))

(assert (= (and setNonEmpty!2462 (not condSetEmpty!2490)) setNonEmpty!2490))

(assert (= setNonEmpty!2490 b!525994))

(declare-fun m!772155 () Bool)

(assert (=> setNonEmpty!2490 m!772155))

(declare-fun b!525995 () Bool)

(declare-fun e!315904 () Bool)

(declare-fun tp!165845 () Bool)

(declare-fun tp!165846 () Bool)

(assert (=> b!525995 (= e!315904 (and tp!165845 tp!165846))))

(assert (=> b!525511 (= tp!165652 e!315904)))

(assert (= (and b!525511 ((_ is Cons!4901) (exprs!649 setElem!2460))) b!525995))

(declare-fun condSetEmpty!2491 () Bool)

(assert (=> setNonEmpty!2445 (= condSetEmpty!2491 (= setRest!2445 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2491 () Bool)

(assert (=> setNonEmpty!2445 (= tp!165551 setRes!2491)))

(declare-fun setIsEmpty!2491 () Bool)

(assert (=> setIsEmpty!2491 setRes!2491))

(declare-fun setElem!2491 () Context!298)

(declare-fun tp!165848 () Bool)

(declare-fun setNonEmpty!2491 () Bool)

(declare-fun e!315905 () Bool)

(assert (=> setNonEmpty!2491 (= setRes!2491 (and tp!165848 (inv!6177 setElem!2491) e!315905))))

(declare-fun setRest!2491 () (InoxSet Context!298))

(assert (=> setNonEmpty!2491 (= setRest!2445 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2491 true) setRest!2491))))

(declare-fun b!525996 () Bool)

(declare-fun tp!165847 () Bool)

(assert (=> b!525996 (= e!315905 tp!165847)))

(assert (= (and setNonEmpty!2445 condSetEmpty!2491) setIsEmpty!2491))

(assert (= (and setNonEmpty!2445 (not condSetEmpty!2491)) setNonEmpty!2491))

(assert (= setNonEmpty!2491 b!525996))

(declare-fun m!772157 () Bool)

(assert (=> setNonEmpty!2491 m!772157))

(declare-fun b!526001 () Bool)

(declare-fun e!315908 () Bool)

(declare-fun tp!165851 () Bool)

(assert (=> b!526001 (= e!315908 (and tp_is_empty!2795 tp!165851))))

(assert (=> b!525452 (= tp!165572 e!315908)))

(assert (= (and b!525452 ((_ is Cons!4900) (innerList!1652 (xs!4229 (c!100954 input!747))))) b!526001))

(declare-fun condSetEmpty!2492 () Bool)

(assert (=> setNonEmpty!2433 (= condSetEmpty!2492 (= setRest!2433 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2492 () Bool)

(assert (=> setNonEmpty!2433 (= tp!165502 setRes!2492)))

(declare-fun setIsEmpty!2492 () Bool)

(assert (=> setIsEmpty!2492 setRes!2492))

(declare-fun tp!165853 () Bool)

(declare-fun e!315909 () Bool)

(declare-fun setElem!2492 () Context!298)

(declare-fun setNonEmpty!2492 () Bool)

(assert (=> setNonEmpty!2492 (= setRes!2492 (and tp!165853 (inv!6177 setElem!2492) e!315909))))

(declare-fun setRest!2492 () (InoxSet Context!298))

(assert (=> setNonEmpty!2492 (= setRest!2433 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2492 true) setRest!2492))))

(declare-fun b!526002 () Bool)

(declare-fun tp!165852 () Bool)

(assert (=> b!526002 (= e!315909 tp!165852)))

(assert (= (and setNonEmpty!2433 condSetEmpty!2492) setIsEmpty!2492))

(assert (= (and setNonEmpty!2433 (not condSetEmpty!2492)) setNonEmpty!2492))

(assert (= setNonEmpty!2492 b!526002))

(declare-fun m!772159 () Bool)

(assert (=> setNonEmpty!2492 m!772159))

(declare-fun condSetEmpty!2493 () Bool)

(assert (=> setNonEmpty!2444 (= condSetEmpty!2493 (= setRest!2444 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2493 () Bool)

(assert (=> setNonEmpty!2444 (= tp!165557 setRes!2493)))

(declare-fun setIsEmpty!2493 () Bool)

(assert (=> setIsEmpty!2493 setRes!2493))

(declare-fun tp!165855 () Bool)

(declare-fun setNonEmpty!2493 () Bool)

(declare-fun setElem!2493 () Context!298)

(declare-fun e!315910 () Bool)

(assert (=> setNonEmpty!2493 (= setRes!2493 (and tp!165855 (inv!6177 setElem!2493) e!315910))))

(declare-fun setRest!2493 () (InoxSet Context!298))

(assert (=> setNonEmpty!2493 (= setRest!2444 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2493 true) setRest!2493))))

(declare-fun b!526003 () Bool)

(declare-fun tp!165854 () Bool)

(assert (=> b!526003 (= e!315910 tp!165854)))

(assert (= (and setNonEmpty!2444 condSetEmpty!2493) setIsEmpty!2493))

(assert (= (and setNonEmpty!2444 (not condSetEmpty!2493)) setNonEmpty!2493))

(assert (= setNonEmpty!2493 b!526003))

(declare-fun m!772161 () Bool)

(assert (=> setNonEmpty!2493 m!772161))

(declare-fun b!526004 () Bool)

(declare-fun e!315911 () Bool)

(declare-fun tp!165856 () Bool)

(declare-fun tp!165857 () Bool)

(assert (=> b!526004 (= e!315911 (and tp!165856 tp!165857))))

(assert (=> b!525513 (= tp!165658 e!315911)))

(assert (= (and b!525513 ((_ is Cons!4901) (exprs!649 (_1!3255 (_1!3256 (h!10304 mapDefault!2227)))))) b!526004))

(declare-fun condSetEmpty!2494 () Bool)

(assert (=> setNonEmpty!2451 (= condSetEmpty!2494 (= setRest!2451 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2494 () Bool)

(assert (=> setNonEmpty!2451 (= tp!165595 setRes!2494)))

(declare-fun setIsEmpty!2494 () Bool)

(assert (=> setIsEmpty!2494 setRes!2494))

(declare-fun e!315912 () Bool)

(declare-fun setNonEmpty!2494 () Bool)

(declare-fun tp!165859 () Bool)

(declare-fun setElem!2494 () Context!298)

(assert (=> setNonEmpty!2494 (= setRes!2494 (and tp!165859 (inv!6177 setElem!2494) e!315912))))

(declare-fun setRest!2494 () (InoxSet Context!298))

(assert (=> setNonEmpty!2494 (= setRest!2451 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2494 true) setRest!2494))))

(declare-fun b!526005 () Bool)

(declare-fun tp!165858 () Bool)

(assert (=> b!526005 (= e!315912 tp!165858)))

(assert (= (and setNonEmpty!2451 condSetEmpty!2494) setIsEmpty!2494))

(assert (= (and setNonEmpty!2451 (not condSetEmpty!2494)) setNonEmpty!2494))

(assert (= setNonEmpty!2494 b!526005))

(declare-fun m!772163 () Bool)

(assert (=> setNonEmpty!2494 m!772163))

(declare-fun b!526007 () Bool)

(declare-fun e!315913 () Bool)

(declare-fun tp!165861 () Bool)

(declare-fun tp!165860 () Bool)

(assert (=> b!526007 (= e!315913 (and tp!165861 tp!165860))))

(declare-fun b!526006 () Bool)

(assert (=> b!526006 (= e!315913 tp_is_empty!2795)))

(declare-fun b!526008 () Bool)

(declare-fun tp!165863 () Bool)

(assert (=> b!526008 (= e!315913 tp!165863)))

(declare-fun b!526009 () Bool)

(declare-fun tp!165864 () Bool)

(declare-fun tp!165862 () Bool)

(assert (=> b!526009 (= e!315913 (and tp!165864 tp!165862))))

(assert (=> b!525516 (= tp!165664 e!315913)))

(assert (= (and b!525516 ((_ is ElementMatch!1211) (_1!3257 (_1!3258 (h!10305 mapDefault!2228))))) b!526006))

(assert (= (and b!525516 ((_ is Concat!2121) (_1!3257 (_1!3258 (h!10305 mapDefault!2228))))) b!526007))

(assert (= (and b!525516 ((_ is Star!1211) (_1!3257 (_1!3258 (h!10305 mapDefault!2228))))) b!526008))

(assert (= (and b!525516 ((_ is Union!1211) (_1!3257 (_1!3258 (h!10305 mapDefault!2228))))) b!526009))

(declare-fun e!315916 () Bool)

(assert (=> b!525516 (= tp!165662 e!315916)))

(declare-fun setIsEmpty!2495 () Bool)

(declare-fun setRes!2495 () Bool)

(assert (=> setIsEmpty!2495 setRes!2495))

(declare-fun tp!165868 () Bool)

(declare-fun b!526010 () Bool)

(declare-fun e!315915 () Bool)

(declare-fun tp!165866 () Bool)

(assert (=> b!526010 (= e!315916 (and tp!165868 (inv!6177 (_2!3257 (_1!3258 (h!10305 (t!73519 mapDefault!2228))))) e!315915 tp_is_empty!2795 setRes!2495 tp!165866))))

(declare-fun condSetEmpty!2495 () Bool)

(assert (=> b!526010 (= condSetEmpty!2495 (= (_2!3258 (h!10305 (t!73519 mapDefault!2228))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!526011 () Bool)

(declare-fun e!315914 () Bool)

(declare-fun tp!165865 () Bool)

(assert (=> b!526011 (= e!315914 tp!165865)))

(declare-fun setNonEmpty!2495 () Bool)

(declare-fun setElem!2495 () Context!298)

(declare-fun tp!165867 () Bool)

(assert (=> setNonEmpty!2495 (= setRes!2495 (and tp!165867 (inv!6177 setElem!2495) e!315914))))

(declare-fun setRest!2495 () (InoxSet Context!298))

(assert (=> setNonEmpty!2495 (= (_2!3258 (h!10305 (t!73519 mapDefault!2228))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2495 true) setRest!2495))))

(declare-fun b!526012 () Bool)

(declare-fun tp!165869 () Bool)

(assert (=> b!526012 (= e!315915 tp!165869)))

(assert (= b!526010 b!526012))

(assert (= (and b!526010 condSetEmpty!2495) setIsEmpty!2495))

(assert (= (and b!526010 (not condSetEmpty!2495)) setNonEmpty!2495))

(assert (= setNonEmpty!2495 b!526011))

(assert (= (and b!525516 ((_ is Cons!4904) (t!73519 mapDefault!2228))) b!526010))

(declare-fun m!772165 () Bool)

(assert (=> b!526010 m!772165))

(declare-fun m!772167 () Bool)

(assert (=> setNonEmpty!2495 m!772167))

(declare-fun b!526013 () Bool)

(declare-fun e!315917 () Bool)

(declare-fun tp!165870 () Bool)

(declare-fun tp!165871 () Bool)

(assert (=> b!526013 (= e!315917 (and tp!165870 tp!165871))))

(assert (=> b!525438 (= tp!165558 e!315917)))

(assert (= (and b!525438 ((_ is Cons!4901) (exprs!649 setElem!2446))) b!526013))

(declare-fun setIsEmpty!2496 () Bool)

(declare-fun setRes!2496 () Bool)

(assert (=> setIsEmpty!2496 setRes!2496))

(declare-fun b!526014 () Bool)

(declare-fun e!315918 () Bool)

(declare-fun tp!165873 () Bool)

(assert (=> b!526014 (= e!315918 (and setRes!2496 tp!165873))))

(declare-fun condSetEmpty!2496 () Bool)

(assert (=> b!526014 (= condSetEmpty!2496 (= (_1!3253 (_1!3254 (h!10303 (t!73517 (zeroValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56)))))))))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525392 (= tp!165501 e!315918)))

(declare-fun tp!165874 () Bool)

(declare-fun setElem!2496 () Context!298)

(declare-fun setNonEmpty!2496 () Bool)

(declare-fun e!315919 () Bool)

(assert (=> setNonEmpty!2496 (= setRes!2496 (and tp!165874 (inv!6177 setElem!2496) e!315919))))

(declare-fun setRest!2496 () (InoxSet Context!298))

(assert (=> setNonEmpty!2496 (= (_1!3253 (_1!3254 (h!10303 (t!73517 (zeroValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2496 true) setRest!2496))))

(declare-fun b!526015 () Bool)

(declare-fun tp!165872 () Bool)

(assert (=> b!526015 (= e!315919 tp!165872)))

(assert (= (and b!526014 condSetEmpty!2496) setIsEmpty!2496))

(assert (= (and b!526014 (not condSetEmpty!2496)) setNonEmpty!2496))

(assert (= setNonEmpty!2496 b!526015))

(assert (= (and b!525392 ((_ is Cons!4902) (t!73517 (zeroValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))))) b!526014))

(declare-fun m!772169 () Bool)

(assert (=> setNonEmpty!2496 m!772169))

(declare-fun setIsEmpty!2497 () Bool)

(declare-fun setRes!2497 () Bool)

(assert (=> setIsEmpty!2497 setRes!2497))

(declare-fun b!526016 () Bool)

(declare-fun e!315920 () Bool)

(declare-fun tp!165876 () Bool)

(assert (=> b!526016 (= e!315920 (and setRes!2497 tp!165876))))

(declare-fun condSetEmpty!2497 () Bool)

(assert (=> b!526016 (= condSetEmpty!2497 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapValue!2231)))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525435 (= tp!165554 e!315920)))

(declare-fun setElem!2497 () Context!298)

(declare-fun setNonEmpty!2497 () Bool)

(declare-fun e!315921 () Bool)

(declare-fun tp!165877 () Bool)

(assert (=> setNonEmpty!2497 (= setRes!2497 (and tp!165877 (inv!6177 setElem!2497) e!315921))))

(declare-fun setRest!2497 () (InoxSet Context!298))

(assert (=> setNonEmpty!2497 (= (_1!3253 (_1!3254 (h!10303 (t!73517 mapValue!2231)))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2497 true) setRest!2497))))

(declare-fun b!526017 () Bool)

(declare-fun tp!165875 () Bool)

(assert (=> b!526017 (= e!315921 tp!165875)))

(assert (= (and b!526016 condSetEmpty!2497) setIsEmpty!2497))

(assert (= (and b!526016 (not condSetEmpty!2497)) setNonEmpty!2497))

(assert (= setNonEmpty!2497 b!526017))

(assert (= (and b!525435 ((_ is Cons!4902) (t!73517 mapValue!2231))) b!526016))

(declare-fun m!772171 () Bool)

(assert (=> setNonEmpty!2497 m!772171))

(declare-fun b!526019 () Bool)

(declare-fun e!315922 () Bool)

(declare-fun tp!165879 () Bool)

(declare-fun tp!165878 () Bool)

(assert (=> b!526019 (= e!315922 (and tp!165879 tp!165878))))

(declare-fun b!526018 () Bool)

(assert (=> b!526018 (= e!315922 tp_is_empty!2795)))

(declare-fun b!526020 () Bool)

(declare-fun tp!165881 () Bool)

(assert (=> b!526020 (= e!315922 tp!165881)))

(declare-fun b!526021 () Bool)

(declare-fun tp!165882 () Bool)

(declare-fun tp!165880 () Bool)

(assert (=> b!526021 (= e!315922 (and tp!165882 tp!165880))))

(assert (=> b!525419 (= tp!165533 e!315922)))

(assert (= (and b!525419 ((_ is ElementMatch!1211) (regex!886 (h!10307 (t!73521 rules!1345))))) b!526018))

(assert (= (and b!525419 ((_ is Concat!2121) (regex!886 (h!10307 (t!73521 rules!1345))))) b!526019))

(assert (= (and b!525419 ((_ is Star!1211) (regex!886 (h!10307 (t!73521 rules!1345))))) b!526020))

(assert (= (and b!525419 ((_ is Union!1211) (regex!886 (h!10307 (t!73521 rules!1345))))) b!526021))

(declare-fun b!526022 () Bool)

(declare-fun e!315923 () Bool)

(declare-fun tp!165883 () Bool)

(declare-fun tp!165884 () Bool)

(assert (=> b!526022 (= e!315923 (and tp!165883 tp!165884))))

(assert (=> b!525404 (= tp!165515 e!315923)))

(assert (= (and b!525404 ((_ is Cons!4901) (exprs!649 (_1!3255 (_1!3256 (h!10304 (zeroValue!827 (v!15981 (underlying!1319 (v!15982 (underlying!1320 (cache!929 cacheUp!449)))))))))))) b!526022))

(declare-fun b!526023 () Bool)

(declare-fun e!315924 () Bool)

(declare-fun tp!165885 () Bool)

(declare-fun tp!165886 () Bool)

(assert (=> b!526023 (= e!315924 (and tp!165885 tp!165886))))

(assert (=> b!525504 (= tp!165647 e!315924)))

(assert (= (and b!525504 ((_ is Cons!4901) (exprs!649 setElem!2458))) b!526023))

(declare-fun b!526024 () Bool)

(declare-fun e!315925 () Bool)

(declare-fun tp!165887 () Bool)

(declare-fun tp!165888 () Bool)

(assert (=> b!526024 (= e!315925 (and tp!165887 tp!165888))))

(assert (=> b!525512 (= tp!165656 e!315925)))

(assert (= (and b!525512 ((_ is Cons!4901) (exprs!649 (_2!3257 (_1!3258 (h!10305 mapValue!2228)))))) b!526024))

(declare-fun condSetEmpty!2498 () Bool)

(assert (=> setNonEmpty!2438 (= condSetEmpty!2498 (= setRest!2438 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2498 () Bool)

(assert (=> setNonEmpty!2438 (= tp!165518 setRes!2498)))

(declare-fun setIsEmpty!2498 () Bool)

(assert (=> setIsEmpty!2498 setRes!2498))

(declare-fun setElem!2498 () Context!298)

(declare-fun e!315926 () Bool)

(declare-fun setNonEmpty!2498 () Bool)

(declare-fun tp!165890 () Bool)

(assert (=> setNonEmpty!2498 (= setRes!2498 (and tp!165890 (inv!6177 setElem!2498) e!315926))))

(declare-fun setRest!2498 () (InoxSet Context!298))

(assert (=> setNonEmpty!2498 (= setRest!2438 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2498 true) setRest!2498))))

(declare-fun b!526025 () Bool)

(declare-fun tp!165889 () Bool)

(assert (=> b!526025 (= e!315926 tp!165889)))

(assert (= (and setNonEmpty!2438 condSetEmpty!2498) setIsEmpty!2498))

(assert (= (and setNonEmpty!2438 (not condSetEmpty!2498)) setNonEmpty!2498))

(assert (= setNonEmpty!2498 b!526025))

(declare-fun m!772173 () Bool)

(assert (=> setNonEmpty!2498 m!772173))

(declare-fun b!526026 () Bool)

(declare-fun e!315927 () Bool)

(declare-fun tp!165891 () Bool)

(declare-fun tp!165892 () Bool)

(assert (=> b!526026 (= e!315927 (and tp!165891 tp!165892))))

(assert (=> b!525473 (= tp!165601 e!315927)))

(assert (= (and b!525473 ((_ is Cons!4901) (exprs!649 (_1!3255 (_1!3256 (h!10304 mapValue!2226)))))) b!526026))

(declare-fun b!526027 () Bool)

(declare-fun e!315932 () Bool)

(declare-fun tp!165899 () Bool)

(assert (=> b!526027 (= e!315932 tp!165899)))

(declare-fun setIsEmpty!2499 () Bool)

(declare-fun setRes!2499 () Bool)

(assert (=> setIsEmpty!2499 setRes!2499))

(declare-fun setIsEmpty!2500 () Bool)

(declare-fun setRes!2500 () Bool)

(assert (=> setIsEmpty!2500 setRes!2500))

(declare-fun tp!165894 () Bool)

(declare-fun setElem!2500 () Context!298)

(declare-fun e!315930 () Bool)

(declare-fun setNonEmpty!2499 () Bool)

(assert (=> setNonEmpty!2499 (= setRes!2499 (and tp!165894 (inv!6177 setElem!2500) e!315930))))

(declare-fun mapDefault!2240 () List!4914)

(declare-fun setRest!2500 () (InoxSet Context!298))

(assert (=> setNonEmpty!2499 (= (_2!3258 (h!10305 mapDefault!2240)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2500 true) setRest!2500))))

(declare-fun condMapEmpty!2240 () Bool)

(assert (=> mapNonEmpty!2237 (= condMapEmpty!2240 (= mapRest!2237 ((as const (Array (_ BitVec 32) List!4914)) mapDefault!2240)))))

(declare-fun e!315931 () Bool)

(declare-fun mapRes!2240 () Bool)

(assert (=> mapNonEmpty!2237 (= tp!165641 (and e!315931 mapRes!2240))))

(declare-fun b!526028 () Bool)

(declare-fun e!315933 () Bool)

(declare-fun tp!165903 () Bool)

(assert (=> b!526028 (= e!315933 tp!165903)))

(declare-fun mapNonEmpty!2240 () Bool)

(declare-fun tp!165893 () Bool)

(declare-fun e!315929 () Bool)

(assert (=> mapNonEmpty!2240 (= mapRes!2240 (and tp!165893 e!315929))))

(declare-fun mapRest!2240 () (Array (_ BitVec 32) List!4914))

(declare-fun mapKey!2240 () (_ BitVec 32))

(declare-fun mapValue!2240 () List!4914)

(assert (=> mapNonEmpty!2240 (= mapRest!2237 (store mapRest!2240 mapKey!2240 mapValue!2240))))

(declare-fun b!526029 () Bool)

(declare-fun e!315928 () Bool)

(declare-fun tp!165898 () Bool)

(assert (=> b!526029 (= e!315928 tp!165898)))

(declare-fun mapIsEmpty!2240 () Bool)

(assert (=> mapIsEmpty!2240 mapRes!2240))

(declare-fun b!526030 () Bool)

(declare-fun tp!165897 () Bool)

(assert (=> b!526030 (= e!315930 tp!165897)))

(declare-fun setNonEmpty!2500 () Bool)

(declare-fun tp!165896 () Bool)

(declare-fun setElem!2499 () Context!298)

(assert (=> setNonEmpty!2500 (= setRes!2500 (and tp!165896 (inv!6177 setElem!2499) e!315932))))

(declare-fun setRest!2499 () (InoxSet Context!298))

(assert (=> setNonEmpty!2500 (= (_2!3258 (h!10305 mapValue!2240)) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2499 true) setRest!2499))))

(declare-fun b!526031 () Bool)

(declare-fun tp!165895 () Bool)

(declare-fun tp!165902 () Bool)

(assert (=> b!526031 (= e!315931 (and tp!165895 (inv!6177 (_2!3257 (_1!3258 (h!10305 mapDefault!2240)))) e!315928 tp_is_empty!2795 setRes!2499 tp!165902))))

(declare-fun condSetEmpty!2499 () Bool)

(assert (=> b!526031 (= condSetEmpty!2499 (= (_2!3258 (h!10305 mapDefault!2240)) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!526032 () Bool)

(declare-fun tp!165901 () Bool)

(declare-fun tp!165900 () Bool)

(assert (=> b!526032 (= e!315929 (and tp!165900 (inv!6177 (_2!3257 (_1!3258 (h!10305 mapValue!2240)))) e!315933 tp_is_empty!2795 setRes!2500 tp!165901))))

(declare-fun condSetEmpty!2500 () Bool)

(assert (=> b!526032 (= condSetEmpty!2500 (= (_2!3258 (h!10305 mapValue!2240)) ((as const (Array Context!298 Bool)) false)))))

(assert (= (and mapNonEmpty!2237 condMapEmpty!2240) mapIsEmpty!2240))

(assert (= (and mapNonEmpty!2237 (not condMapEmpty!2240)) mapNonEmpty!2240))

(assert (= b!526032 b!526028))

(assert (= (and b!526032 condSetEmpty!2500) setIsEmpty!2500))

(assert (= (and b!526032 (not condSetEmpty!2500)) setNonEmpty!2500))

(assert (= setNonEmpty!2500 b!526027))

(assert (= (and mapNonEmpty!2240 ((_ is Cons!4904) mapValue!2240)) b!526032))

(assert (= b!526031 b!526029))

(assert (= (and b!526031 condSetEmpty!2499) setIsEmpty!2499))

(assert (= (and b!526031 (not condSetEmpty!2499)) setNonEmpty!2499))

(assert (= setNonEmpty!2499 b!526030))

(assert (= (and mapNonEmpty!2237 ((_ is Cons!4904) mapDefault!2240)) b!526031))

(declare-fun m!772175 () Bool)

(assert (=> setNonEmpty!2499 m!772175))

(declare-fun m!772177 () Bool)

(assert (=> mapNonEmpty!2240 m!772177))

(declare-fun m!772179 () Bool)

(assert (=> b!526032 m!772179))

(declare-fun m!772181 () Bool)

(assert (=> setNonEmpty!2500 m!772181))

(declare-fun m!772183 () Bool)

(assert (=> b!526031 m!772183))

(declare-fun tp!165904 () Bool)

(declare-fun setRes!2501 () Bool)

(declare-fun e!315934 () Bool)

(declare-fun setNonEmpty!2501 () Bool)

(declare-fun setElem!2501 () Context!298)

(assert (=> setNonEmpty!2501 (= setRes!2501 (and tp!165904 (inv!6177 setElem!2501) e!315934))))

(declare-fun setRest!2501 () (InoxSet Context!298))

(assert (=> setNonEmpty!2501 (= (_2!3256 (h!10304 (t!73518 mapValue!2226))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2501 true) setRest!2501))))

(declare-fun b!526033 () Bool)

(declare-fun e!315936 () Bool)

(declare-fun tp!165905 () Bool)

(assert (=> b!526033 (= e!315936 tp!165905)))

(declare-fun setIsEmpty!2501 () Bool)

(assert (=> setIsEmpty!2501 setRes!2501))

(declare-fun e!315935 () Bool)

(declare-fun b!526034 () Bool)

(declare-fun tp!165906 () Bool)

(assert (=> b!526034 (= e!315935 (and (inv!6177 (_1!3255 (_1!3256 (h!10304 (t!73518 mapValue!2226))))) e!315936 tp_is_empty!2795 setRes!2501 tp!165906))))

(declare-fun condSetEmpty!2501 () Bool)

(assert (=> b!526034 (= condSetEmpty!2501 (= (_2!3256 (h!10304 (t!73518 mapValue!2226))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!526035 () Bool)

(declare-fun tp!165907 () Bool)

(assert (=> b!526035 (= e!315934 tp!165907)))

(assert (=> b!525474 (= tp!165602 e!315935)))

(assert (= b!526034 b!526033))

(assert (= (and b!526034 condSetEmpty!2501) setIsEmpty!2501))

(assert (= (and b!526034 (not condSetEmpty!2501)) setNonEmpty!2501))

(assert (= setNonEmpty!2501 b!526035))

(assert (= (and b!525474 ((_ is Cons!4903) (t!73518 mapValue!2226))) b!526034))

(declare-fun m!772185 () Bool)

(assert (=> setNonEmpty!2501 m!772185))

(declare-fun m!772187 () Bool)

(assert (=> b!526034 m!772187))

(declare-fun b!526036 () Bool)

(declare-fun e!315937 () Bool)

(declare-fun tp!165908 () Bool)

(assert (=> b!526036 (= e!315937 (and tp_is_empty!2795 tp!165908))))

(assert (=> b!525449 (= tp!165569 e!315937)))

(assert (= (and b!525449 ((_ is Cons!4900) (innerList!1652 (xs!4229 (c!100954 (totalInput!1740 cacheFurthestNullable!56)))))) b!526036))

(declare-fun b!526037 () Bool)

(declare-fun e!315938 () Bool)

(declare-fun tp!165909 () Bool)

(declare-fun tp!165910 () Bool)

(assert (=> b!526037 (= e!315938 (and tp!165909 tp!165910))))

(assert (=> b!525472 (= tp!165596 e!315938)))

(assert (= (and b!525472 ((_ is Cons!4901) (exprs!649 (_1!3255 (_1!3256 (h!10304 mapValue!2234)))))) b!526037))

(declare-fun condSetEmpty!2502 () Bool)

(assert (=> setNonEmpty!2458 (= condSetEmpty!2502 (= setRest!2459 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2502 () Bool)

(assert (=> setNonEmpty!2458 (= tp!165642 setRes!2502)))

(declare-fun setIsEmpty!2502 () Bool)

(assert (=> setIsEmpty!2502 setRes!2502))

(declare-fun tp!165912 () Bool)

(declare-fun setElem!2502 () Context!298)

(declare-fun e!315939 () Bool)

(declare-fun setNonEmpty!2502 () Bool)

(assert (=> setNonEmpty!2502 (= setRes!2502 (and tp!165912 (inv!6177 setElem!2502) e!315939))))

(declare-fun setRest!2502 () (InoxSet Context!298))

(assert (=> setNonEmpty!2502 (= setRest!2459 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2502 true) setRest!2502))))

(declare-fun b!526038 () Bool)

(declare-fun tp!165911 () Bool)

(assert (=> b!526038 (= e!315939 tp!165911)))

(assert (= (and setNonEmpty!2458 condSetEmpty!2502) setIsEmpty!2502))

(assert (= (and setNonEmpty!2458 (not condSetEmpty!2502)) setNonEmpty!2502))

(assert (= setNonEmpty!2502 b!526038))

(declare-fun m!772189 () Bool)

(assert (=> setNonEmpty!2502 m!772189))

(declare-fun b!526040 () Bool)

(declare-fun e!315940 () Bool)

(declare-fun tp!165914 () Bool)

(declare-fun tp!165913 () Bool)

(assert (=> b!526040 (= e!315940 (and tp!165914 tp!165913))))

(declare-fun b!526039 () Bool)

(assert (=> b!526039 (= e!315940 tp_is_empty!2795)))

(declare-fun b!526041 () Bool)

(declare-fun tp!165916 () Bool)

(assert (=> b!526041 (= e!315940 tp!165916)))

(declare-fun b!526042 () Bool)

(declare-fun tp!165917 () Bool)

(declare-fun tp!165915 () Bool)

(assert (=> b!526042 (= e!315940 (and tp!165917 tp!165915))))

(assert (=> b!525488 (= tp!165617 e!315940)))

(assert (= (and b!525488 ((_ is ElementMatch!1211) (reg!1540 (regex!886 (h!10307 rules!1345))))) b!526039))

(assert (= (and b!525488 ((_ is Concat!2121) (reg!1540 (regex!886 (h!10307 rules!1345))))) b!526040))

(assert (= (and b!525488 ((_ is Star!1211) (reg!1540 (regex!886 (h!10307 rules!1345))))) b!526041))

(assert (= (and b!525488 ((_ is Union!1211) (reg!1540 (regex!886 (h!10307 rules!1345))))) b!526042))

(declare-fun b!526043 () Bool)

(declare-fun e!315941 () Bool)

(declare-fun tp!165918 () Bool)

(declare-fun tp!165919 () Bool)

(assert (=> b!526043 (= e!315941 (and tp!165918 tp!165919))))

(assert (=> b!525406 (= tp!165517 e!315941)))

(assert (= (and b!525406 ((_ is Cons!4901) (exprs!649 setElem!2437))) b!526043))

(declare-fun condSetEmpty!2503 () Bool)

(assert (=> setNonEmpty!2434 (= condSetEmpty!2503 (= setRest!2434 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2503 () Bool)

(assert (=> setNonEmpty!2434 (= tp!165505 setRes!2503)))

(declare-fun setIsEmpty!2503 () Bool)

(assert (=> setIsEmpty!2503 setRes!2503))

(declare-fun e!315942 () Bool)

(declare-fun setNonEmpty!2503 () Bool)

(declare-fun tp!165921 () Bool)

(declare-fun setElem!2503 () Context!298)

(assert (=> setNonEmpty!2503 (= setRes!2503 (and tp!165921 (inv!6177 setElem!2503) e!315942))))

(declare-fun setRest!2503 () (InoxSet Context!298))

(assert (=> setNonEmpty!2503 (= setRest!2434 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2503 true) setRest!2503))))

(declare-fun b!526044 () Bool)

(declare-fun tp!165920 () Bool)

(assert (=> b!526044 (= e!315942 tp!165920)))

(assert (= (and setNonEmpty!2434 condSetEmpty!2503) setIsEmpty!2503))

(assert (= (and setNonEmpty!2434 (not condSetEmpty!2503)) setNonEmpty!2503))

(assert (= setNonEmpty!2503 b!526044))

(declare-fun m!772191 () Bool)

(assert (=> setNonEmpty!2503 m!772191))

(declare-fun condSetEmpty!2504 () Bool)

(assert (=> setNonEmpty!2459 (= condSetEmpty!2504 (= setRest!2458 ((as const (Array Context!298 Bool)) false)))))

(declare-fun setRes!2504 () Bool)

(assert (=> setNonEmpty!2459 (= tp!165644 setRes!2504)))

(declare-fun setIsEmpty!2504 () Bool)

(assert (=> setIsEmpty!2504 setRes!2504))

(declare-fun e!315943 () Bool)

(declare-fun setElem!2504 () Context!298)

(declare-fun setNonEmpty!2504 () Bool)

(declare-fun tp!165923 () Bool)

(assert (=> setNonEmpty!2504 (= setRes!2504 (and tp!165923 (inv!6177 setElem!2504) e!315943))))

(declare-fun setRest!2504 () (InoxSet Context!298))

(assert (=> setNonEmpty!2504 (= setRest!2458 ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2504 true) setRest!2504))))

(declare-fun b!526045 () Bool)

(declare-fun tp!165922 () Bool)

(assert (=> b!526045 (= e!315943 tp!165922)))

(assert (= (and setNonEmpty!2459 condSetEmpty!2504) setIsEmpty!2504))

(assert (= (and setNonEmpty!2459 (not condSetEmpty!2504)) setNonEmpty!2504))

(assert (= setNonEmpty!2504 b!526045))

(declare-fun m!772193 () Bool)

(assert (=> setNonEmpty!2504 m!772193))

(declare-fun b!526046 () Bool)

(declare-fun e!315944 () Bool)

(declare-fun tp!165924 () Bool)

(declare-fun tp!165925 () Bool)

(assert (=> b!526046 (= e!315944 (and tp!165924 tp!165925))))

(assert (=> b!525422 (= tp!165534 e!315944)))

(assert (= (and b!525422 ((_ is Cons!4901) (exprs!649 setElem!2439))) b!526046))

(declare-fun b!526047 () Bool)

(declare-fun e!315945 () Bool)

(declare-fun tp!165926 () Bool)

(declare-fun tp!165927 () Bool)

(assert (=> b!526047 (= e!315945 (and tp!165926 tp!165927))))

(assert (=> b!525381 (= tp!165484 e!315945)))

(assert (= (and b!525381 ((_ is Cons!4901) (exprs!649 setElem!2429))) b!526047))

(declare-fun b!526048 () Bool)

(declare-fun e!315946 () Bool)

(declare-fun tp!165928 () Bool)

(declare-fun tp!165929 () Bool)

(assert (=> b!526048 (= e!315946 (and tp!165928 tp!165929))))

(assert (=> b!525382 (= tp!165488 e!315946)))

(assert (= (and b!525382 ((_ is Cons!4901) (exprs!649 (_2!3257 (_1!3258 (h!10305 (zeroValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))))) b!526048))

(declare-fun b!526050 () Bool)

(declare-fun e!315947 () Bool)

(declare-fun tp!165931 () Bool)

(declare-fun tp!165930 () Bool)

(assert (=> b!526050 (= e!315947 (and tp!165931 tp!165930))))

(declare-fun b!526049 () Bool)

(assert (=> b!526049 (= e!315947 tp_is_empty!2795)))

(declare-fun b!526051 () Bool)

(declare-fun tp!165933 () Bool)

(assert (=> b!526051 (= e!315947 tp!165933)))

(declare-fun b!526052 () Bool)

(declare-fun tp!165934 () Bool)

(declare-fun tp!165932 () Bool)

(assert (=> b!526052 (= e!315947 (and tp!165934 tp!165932))))

(assert (=> b!525509 (= tp!165648 e!315947)))

(assert (= (and b!525509 ((_ is ElementMatch!1211) (_1!3257 (_1!3258 (h!10305 mapValue!2237))))) b!526049))

(assert (= (and b!525509 ((_ is Concat!2121) (_1!3257 (_1!3258 (h!10305 mapValue!2237))))) b!526050))

(assert (= (and b!525509 ((_ is Star!1211) (_1!3257 (_1!3258 (h!10305 mapValue!2237))))) b!526051))

(assert (= (and b!525509 ((_ is Union!1211) (_1!3257 (_1!3258 (h!10305 mapValue!2237))))) b!526052))

(declare-fun e!315950 () Bool)

(assert (=> b!525509 (= tp!165649 e!315950)))

(declare-fun setIsEmpty!2505 () Bool)

(declare-fun setRes!2505 () Bool)

(assert (=> setIsEmpty!2505 setRes!2505))

(declare-fun tp!165938 () Bool)

(declare-fun b!526053 () Bool)

(declare-fun e!315949 () Bool)

(declare-fun tp!165936 () Bool)

(assert (=> b!526053 (= e!315950 (and tp!165938 (inv!6177 (_2!3257 (_1!3258 (h!10305 (t!73519 mapValue!2237))))) e!315949 tp_is_empty!2795 setRes!2505 tp!165936))))

(declare-fun condSetEmpty!2505 () Bool)

(assert (=> b!526053 (= condSetEmpty!2505 (= (_2!3258 (h!10305 (t!73519 mapValue!2237))) ((as const (Array Context!298 Bool)) false)))))

(declare-fun b!526054 () Bool)

(declare-fun e!315948 () Bool)

(declare-fun tp!165935 () Bool)

(assert (=> b!526054 (= e!315948 tp!165935)))

(declare-fun setElem!2505 () Context!298)

(declare-fun setNonEmpty!2505 () Bool)

(declare-fun tp!165937 () Bool)

(assert (=> setNonEmpty!2505 (= setRes!2505 (and tp!165937 (inv!6177 setElem!2505) e!315948))))

(declare-fun setRest!2505 () (InoxSet Context!298))

(assert (=> setNonEmpty!2505 (= (_2!3258 (h!10305 (t!73519 mapValue!2237))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2505 true) setRest!2505))))

(declare-fun b!526055 () Bool)

(declare-fun tp!165939 () Bool)

(assert (=> b!526055 (= e!315949 tp!165939)))

(assert (= b!526053 b!526055))

(assert (= (and b!526053 condSetEmpty!2505) setIsEmpty!2505))

(assert (= (and b!526053 (not condSetEmpty!2505)) setNonEmpty!2505))

(assert (= setNonEmpty!2505 b!526054))

(assert (= (and b!525509 ((_ is Cons!4904) (t!73519 mapValue!2237))) b!526053))

(declare-fun m!772195 () Bool)

(assert (=> b!526053 m!772195))

(declare-fun m!772197 () Bool)

(assert (=> setNonEmpty!2505 m!772197))

(declare-fun b!526056 () Bool)

(declare-fun e!315951 () Bool)

(declare-fun tp!165940 () Bool)

(declare-fun tp!165941 () Bool)

(assert (=> b!526056 (= e!315951 (and tp!165940 tp!165941))))

(assert (=> b!525385 (= tp!165493 e!315951)))

(assert (= (and b!525385 ((_ is Cons!4901) (exprs!649 (_2!3257 (_1!3258 (h!10305 (minValue!828 (v!15983 (underlying!1321 (v!15984 (underlying!1322 (cache!930 cacheDown!462)))))))))))) b!526056))

(declare-fun b!526057 () Bool)

(declare-fun e!315952 () Bool)

(declare-fun tp!165942 () Bool)

(declare-fun tp!165943 () Bool)

(assert (=> b!526057 (= e!315952 (and tp!165942 tp!165943))))

(assert (=> b!525384 (= tp!165489 e!315952)))

(assert (= (and b!525384 ((_ is Cons!4901) (exprs!649 setElem!2430))) b!526057))

(declare-fun b!526058 () Bool)

(declare-fun e!315953 () Bool)

(declare-fun tp!165944 () Bool)

(declare-fun tp!165945 () Bool)

(assert (=> b!526058 (= e!315953 (and tp!165944 tp!165945))))

(assert (=> b!525433 (= tp!165556 e!315953)))

(assert (= (and b!525433 ((_ is Cons!4901) (exprs!649 setElem!2445))) b!526058))

(declare-fun setIsEmpty!2506 () Bool)

(declare-fun setRes!2506 () Bool)

(assert (=> setIsEmpty!2506 setRes!2506))

(declare-fun b!526059 () Bool)

(declare-fun e!315954 () Bool)

(declare-fun tp!165947 () Bool)

(assert (=> b!526059 (= e!315954 (and setRes!2506 tp!165947))))

(declare-fun condSetEmpty!2506 () Bool)

(assert (=> b!526059 (= condSetEmpty!2506 (= (_1!3253 (_1!3254 (h!10303 (t!73517 (minValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56)))))))))) ((as const (Array Context!298 Bool)) false)))))

(assert (=> b!525394 (= tp!165504 e!315954)))

(declare-fun setElem!2506 () Context!298)

(declare-fun setNonEmpty!2506 () Bool)

(declare-fun tp!165948 () Bool)

(declare-fun e!315955 () Bool)

(assert (=> setNonEmpty!2506 (= setRes!2506 (and tp!165948 (inv!6177 setElem!2506) e!315955))))

(declare-fun setRest!2506 () (InoxSet Context!298))

(assert (=> setNonEmpty!2506 (= (_1!3253 (_1!3254 (h!10303 (t!73517 (minValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!298 Bool)) false) setElem!2506 true) setRest!2506))))

(declare-fun b!526060 () Bool)

(declare-fun tp!165946 () Bool)

(assert (=> b!526060 (= e!315955 tp!165946)))

(assert (= (and b!526059 condSetEmpty!2506) setIsEmpty!2506))

(assert (= (and b!526059 (not condSetEmpty!2506)) setNonEmpty!2506))

(assert (= setNonEmpty!2506 b!526060))

(assert (= (and b!525394 ((_ is Cons!4902) (t!73517 (minValue!826 (v!15979 (underlying!1317 (v!15980 (underlying!1318 (cache!928 cacheFurthestNullable!56))))))))) b!526059))

(declare-fun m!772199 () Bool)

(assert (=> setNonEmpty!2506 m!772199))

(check-sat (not b!525889) (not b!525818) (not setNonEmpty!2473) (not d!187358) (not b!526034) (not b!525989) (not b!525736) (not b!525992) (not b!525909) (not b!525705) (not b!525706) (not b!525971) (not b!525567) (not d!187328) (not b!525817) (not b!525921) (not b!525953) b_and!51361 (not b!525923) (not b_next!13883) (not b!526004) (not b!525929) (not b!525754) (not b!525678) (not b!526055) (not b!525447) (not b!525925) (not d!187426) (not setNonEmpty!2491) (not d!187482) (not b!525802) (not d!187384) (not b!525728) (not b!525560) (not b!525940) (not b!525974) (not b!525912) (not b!525692) (not d!187310) (not b!526017) (not setNonEmpty!2488) (not b_next!13895) (not b!526041) (not b!525852) (not b!526029) (not setNonEmpty!2481) (not b!526005) (not b!525836) (not bm!38086) (not d!187488) (not b!525977) (not d!187326) (not b!525911) (not d!187378) (not setNonEmpty!2472) (not bm!38088) (not bm!38089) (not b!526059) (not b!525915) (not b!525564) (not b!525739) (not b!526038) (not d!187322) (not setNonEmpty!2471) (not b!525969) (not b!525740) (not d!187430) (not b!526014) (not b!526035) (not b_next!13877) (not b!525976) (not b!525651) (not b!525945) (not setNonEmpty!2466) (not b!525980) (not d!187428) (not b!525809) (not b!525733) (not bm!38102) b_and!51355 (not setNonEmpty!2493) (not bm!38084) (not bm!38090) (not b!525916) (not b!525533) (not d!187460) (not d!187332) (not b!525734) (not setNonEmpty!2490) (not d!187396) (not b!525815) (not b!525944) (not b_next!13879) (not b!525956) (not b!525556) (not setNonEmpty!2485) (not setNonEmpty!2487) (not b!525649) (not b!525529) (not b!525935) (not setNonEmpty!2476) (not b!525927) (not b!525907) (not b!525930) (not b!525625) (not b!525893) b_and!51373 (not b!525994) (not d!187354) (not b!525918) (not b!525670) (not b!525530) (not b!525967) (not b!525986) (not b!525896) (not b!525865) (not d!187474) (not b!526010) (not setNonEmpty!2469) (not d!187446) (not b!525973) (not b!525972) (not b!526019) (not d!187370) (not setNonEmpty!2478) (not b!525741) (not b!525610) (not setNonEmpty!2498) b_and!51357 (not b!525943) (not b!526048) (not b!525562) (not b!525948) (not d!187364) (not setNonEmpty!2479) (not b!525682) (not d!187442) (not b!525891) (not b!525920) (not d!187380) (not b!526054) (not b!525917) (not b!526008) (not b!525990) (not d!187462) (not b!525985) (not b!525899) (not b!525710) (not b!526047) (not b!525870) (not b!525834) (not b_next!13887) (not b!526028) (not d!187464) (not b!525962) (not b_next!13873) (not b!525871) (not b!525758) (not bm!38099) (not b!526058) b_and!51351 (not b!525883) (not b!525919) b_and!51371 (not d!187448) (not b!525898) (not d!187400) (not b!525657) (not b_next!13891) (not b!525886) (not mapNonEmpty!2240) (not b!526013) (not b!526002) (not d!187408) (not b!526051) (not b!525984) (not b!525890) (not b!525970) (not setNonEmpty!2496) (not setNonEmpty!2482) b_and!51363 (not d!187320) (not b!525961) (not setNonEmpty!2492) (not b!525773) (not d!187394) (not d!187490) (not b!525857) (not b!525617) (not b!525882) (not b!525959) (not b!525900) (not b!526045) (not b!525988) (not b!525819) (not b!525885) (not b!525656) (not d!187466) (not setNonEmpty!2499) (not d!187368) (not b!526021) b_and!51367 (not setNonEmpty!2468) (not d!187478) (not b!525708) (not b!525858) (not b!525932) (not b!525938) (not setNonEmpty!2494) (not b!526020) (not setNonEmpty!2474) (not b!525542) (not d!187316) (not b!525622) (not b!525784) (not bm!38095) (not b!525822) (not b!525949) (not b!525982) (not b!526016) (not d!187484) (not b!525939) (not b!525913) (not b_next!13885) (not d!187486) (not setNonEmpty!2506) (not b!526001) (not b!526012) (not b!525722) (not b!525951) (not b!526036) (not b!525979) (not b!525680) (not b!525707) (not b!525931) (not b!525894) (not d!187472) (not d!187452) (not b!525926) (not b!525742) (not b!525534) (not setNonEmpty!2486) (not d!187304) (not b!525993) (not b!525709) (not d!187312) (not b!525978) (not b!525837) (not b!526056) (not d!187308) (not mapNonEmpty!2239) (not b!525991) (not b!525835) (not b!525895) (not b!525867) (not b!525902) (not b!526057) (not b!525964) (not b!525960) (not b!525908) (not b!525744) (not b!525833) (not d!187410) (not d!187390) (not b!525905) (not d!187416) (not d!187360) (not b_next!13881) (not setNonEmpty!2475) (not b!525805) (not b!526050) (not b!525914) (not b!526024) (not d!187352) (not b!525966) (not b!525561) (not b!525721) (not b!526037) (not d!187386) (not b!525776) (not b!525830) (not b!525892) (not b!526044) (not b!525942) (not b!525884) (not b!525922) (not d!187398) (not b!525995) (not d!187334) (not b!525933) (not b_next!13889) (not setNonEmpty!2467) (not b!525901) (not b!525839) (not b!526053) (not b!525887) (not b!525983) (not b!525779) (not b!525785) (not d!187382) (not d!187414) (not b_next!13893) (not b!526022) (not b!525823) (not b!526040) (not b!525965) (not b!526060) (not b!525806) (not b!525775) (not b!526015) (not b!525955) (not b!526042) (not setNonEmpty!2502) (not b!525565) (not b!525859) (not b!526025) (not b!525743) (not setNonEmpty!2500) (not b!525897) (not setNonEmpty!2483) (not d!187330) (not setNonEmpty!2503) (not b!525772) (not b!525910) (not b!526009) (not b!525774) (not b!525727) (not b!526046) (not setNonEmpty!2505) (not b!525869) (not b!525864) (not b!526023) (not b!525672) (not b!525783) (not d!187476) (not d!187450) (not d!187402) (not b!525619) (not mapNonEmpty!2238) (not d!187366) (not setNonEmpty!2495) (not b!525808) (not b!525450) (not b!526026) (not d!187362) (not b!525731) (not b!525877) (not b!525650) (not d!187470) (not d!187318) (not b!526011) (not b!525541) (not b!525957) (not b!526043) (not setNonEmpty!2480) (not setNonEmpty!2470) (not b!525981) (not setNonEmpty!2465) (not b!525803) (not b!526033) b_and!51353 (not bm!38103) (not b!525816) (not b!525812) (not setNonEmpty!2497) (not b!525655) (not b!525958) b_and!51359 (not b!526003) (not d!187468) (not b!525671) (not b!525987) (not d!187324) (not b!526032) (not b!525851) (not b!526027) (not b!525813) (not b!525903) (not b!525616) (not setNonEmpty!2501) (not b!525936) (not b!525756) (not setNonEmpty!2504) (not b!525904) (not d!187440) (not d!187480) (not b!525862) (not d!187418) (not setNonEmpty!2484) (not d!187444) (not setNonEmpty!2477) (not b!525828) (not b!525963) (not b!525947) (not setNonEmpty!2489) (not b!525550) (not b!525856) (not b!525829) b_and!51365 (not b!525876) (not b!525691) (not b_next!13875) tp_is_empty!2795 (not b!525831) b_and!51369 (not b!525771) (not d!187348) (not b!525868) (not b!526030) (not b!525946) (not b!526007) (not b!525934) (not b!525840) (not b!526031) (not b!525952) (not b!525954) (not b!526052) (not b!525996) (not b!525807) (not b!525780) (not d!187458))
(check-sat (not b_next!13895) (not b_next!13879) b_and!51373 b_and!51357 (not b_next!13887) b_and!51363 b_and!51367 (not b_next!13885) (not b_next!13881) (not b_next!13889) (not b_next!13893) b_and!51353 b_and!51359 b_and!51365 b_and!51361 (not b_next!13883) b_and!51355 (not b_next!13877) (not b_next!13873) (not b_next!13891) b_and!51351 b_and!51371 (not b_next!13875) b_and!51369)
