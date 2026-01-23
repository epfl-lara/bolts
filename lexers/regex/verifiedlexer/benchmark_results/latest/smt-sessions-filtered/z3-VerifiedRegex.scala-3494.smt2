; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201556 () Bool)

(assert start!201556)

(declare-fun b!2046103 () Bool)

(declare-fun b_free!57277 () Bool)

(declare-fun b_next!57981 () Bool)

(assert (=> b!2046103 (= b_free!57277 (not b_next!57981))))

(declare-fun tp!609056 () Bool)

(declare-fun b_and!163221 () Bool)

(assert (=> b!2046103 (= tp!609056 b_and!163221)))

(declare-fun b!2046097 () Bool)

(declare-fun b_free!57279 () Bool)

(declare-fun b_next!57983 () Bool)

(assert (=> b!2046097 (= b_free!57279 (not b_next!57983))))

(declare-fun tp!609054 () Bool)

(declare-fun b_and!163223 () Bool)

(assert (=> b!2046097 (= tp!609054 b_and!163223)))

(declare-fun b!2046125 () Bool)

(declare-fun b_free!57281 () Bool)

(declare-fun b_next!57985 () Bool)

(assert (=> b!2046125 (= b_free!57281 (not b_next!57985))))

(declare-fun tp!609046 () Bool)

(declare-fun b_and!163225 () Bool)

(assert (=> b!2046125 (= tp!609046 b_and!163225)))

(declare-fun b_free!57283 () Bool)

(declare-fun b_next!57987 () Bool)

(assert (=> b!2046125 (= b_free!57283 (not b_next!57987))))

(declare-fun tp!609020 () Bool)

(declare-fun b_and!163227 () Bool)

(assert (=> b!2046125 (= tp!609020 b_and!163227)))

(declare-fun b!2046090 () Bool)

(declare-fun b_free!57285 () Bool)

(declare-fun b_next!57989 () Bool)

(assert (=> b!2046090 (= b_free!57285 (not b_next!57989))))

(declare-fun tp!609028 () Bool)

(declare-fun b_and!163229 () Bool)

(assert (=> b!2046090 (= tp!609028 b_and!163229)))

(declare-fun b!2046111 () Bool)

(declare-fun b_free!57287 () Bool)

(declare-fun b_next!57991 () Bool)

(assert (=> b!2046111 (= b_free!57287 (not b_next!57991))))

(declare-fun tp!609048 () Bool)

(declare-fun b_and!163231 () Bool)

(assert (=> b!2046111 (= tp!609048 b_and!163231)))

(declare-fun b_free!57289 () Bool)

(declare-fun b_next!57993 () Bool)

(assert (=> b!2046111 (= b_free!57289 (not b_next!57993))))

(declare-fun tp!609052 () Bool)

(declare-fun b_and!163233 () Bool)

(assert (=> b!2046111 (= tp!609052 b_and!163233)))

(declare-fun b!2046101 () Bool)

(declare-fun b_free!57291 () Bool)

(declare-fun b_next!57995 () Bool)

(assert (=> b!2046101 (= b_free!57291 (not b_next!57995))))

(declare-fun tp!609047 () Bool)

(declare-fun b_and!163235 () Bool)

(assert (=> b!2046101 (= tp!609047 b_and!163235)))

(declare-fun b!2046137 () Bool)

(declare-fun b_free!57293 () Bool)

(declare-fun b_next!57997 () Bool)

(assert (=> b!2046137 (= b_free!57293 (not b_next!57997))))

(declare-fun tp!609023 () Bool)

(declare-fun b_and!163237 () Bool)

(assert (=> b!2046137 (= tp!609023 b_and!163237)))

(declare-fun b!2046087 () Bool)

(declare-fun b_free!57295 () Bool)

(declare-fun b_next!57999 () Bool)

(assert (=> b!2046087 (= b_free!57295 (not b_next!57999))))

(declare-fun tp!609019 () Bool)

(declare-fun b_and!163239 () Bool)

(assert (=> b!2046087 (= tp!609019 b_and!163239)))

(declare-fun b!2046094 () Bool)

(declare-fun b_free!57297 () Bool)

(declare-fun b_next!58001 () Bool)

(assert (=> b!2046094 (= b_free!57297 (not b_next!58001))))

(declare-fun tp!609037 () Bool)

(declare-fun b_and!163241 () Bool)

(assert (=> b!2046094 (= tp!609037 b_and!163241)))

(declare-fun b!2046107 () Bool)

(declare-fun b_free!57299 () Bool)

(declare-fun b_next!58003 () Bool)

(assert (=> b!2046107 (= b_free!57299 (not b_next!58003))))

(declare-fun tp!609033 () Bool)

(declare-fun b_and!163243 () Bool)

(assert (=> b!2046107 (= tp!609033 b_and!163243)))

(declare-fun e!1292844 () Bool)

(declare-fun tp!609051 () Bool)

(declare-fun e!1292845 () Bool)

(declare-fun b!2046083 () Bool)

(declare-datatypes ((List!22562 0))(
  ( (Nil!22478) (Cons!22478 (h!27879 (_ BitVec 16)) (t!191682 List!22562)) )
))
(declare-datatypes ((TokenValue!4163 0))(
  ( (FloatLiteralValue!8326 (text!29586 List!22562)) (TokenValueExt!4162 (__x!13984 Int)) (Broken!20815 (value!126396 List!22562)) (Object!4246) (End!4163) (Def!4163) (Underscore!4163) (Match!4163) (Else!4163) (Error!4163) (Case!4163) (If!4163) (Extends!4163) (Abstract!4163) (Class!4163) (Val!4163) (DelimiterValue!8326 (del!4223 List!22562)) (KeywordValue!4169 (value!126397 List!22562)) (CommentValue!8326 (value!126398 List!22562)) (WhitespaceValue!8326 (value!126399 List!22562)) (IndentationValue!4163 (value!126400 List!22562)) (String!26006) (Int32!4163) (Broken!20816 (value!126401 List!22562)) (Boolean!4164) (Unit!37048) (OperatorValue!4166 (op!4223 List!22562)) (IdentifierValue!8326 (value!126402 List!22562)) (IdentifierValue!8327 (value!126403 List!22562)) (WhitespaceValue!8327 (value!126404 List!22562)) (True!8326) (False!8326) (Broken!20817 (value!126405 List!22562)) (Broken!20818 (value!126406 List!22562)) (True!8327) (RightBrace!4163) (RightBracket!4163) (Colon!4163) (Null!4163) (Comma!4163) (LeftBracket!4163) (False!8327) (LeftBrace!4163) (ImaginaryLiteralValue!4163 (text!29587 List!22562)) (StringLiteralValue!12489 (value!126407 List!22562)) (EOFValue!4163 (value!126408 List!22562)) (IdentValue!4163 (value!126409 List!22562)) (DelimiterValue!8327 (value!126410 List!22562)) (DedentValue!4163 (value!126411 List!22562)) (NewLineValue!4163 (value!126412 List!22562)) (IntegerValue!12489 (value!126413 (_ BitVec 32)) (text!29588 List!22562)) (IntegerValue!12490 (value!126414 Int) (text!29589 List!22562)) (Times!4163) (Or!4163) (Equal!4163) (Minus!4163) (Broken!20819 (value!126415 List!22562)) (And!4163) (Div!4163) (LessEqual!4163) (Mod!4163) (Concat!9618) (Not!4163) (Plus!4163) (SpaceValue!4163 (value!126416 List!22562)) (IntegerValue!12491 (value!126417 Int) (text!29590 List!22562)) (StringLiteralValue!12490 (text!29591 List!22562)) (FloatLiteralValue!8327 (text!29592 List!22562)) (BytesLiteralValue!4163 (value!126418 List!22562)) (CommentValue!8327 (value!126419 List!22562)) (StringLiteralValue!12491 (value!126420 List!22562)) (ErrorTokenValue!4163 (msg!4224 List!22562)) )
))
(declare-datatypes ((Hashable!1938 0))(
  ( (HashableExt!1937 (__x!13985 Int)) )
))
(declare-datatypes ((String!26007 0))(
  ( (String!26008 (value!126421 String)) )
))
(declare-datatypes ((C!11056 0))(
  ( (C!11057 (val!6514 Int)) )
))
(declare-datatypes ((Regex!5455 0))(
  ( (ElementMatch!5455 (c!331122 C!11056)) (Concat!9619 (regOne!11422 Regex!5455) (regTwo!11422 Regex!5455)) (EmptyExpr!5455) (Star!5455 (reg!5784 Regex!5455)) (EmptyLang!5455) (Union!5455 (regOne!11423 Regex!5455) (regTwo!11423 Regex!5455)) )
))
(declare-datatypes ((List!22563 0))(
  ( (Nil!22479) (Cons!22479 (h!27880 Regex!5455) (t!191683 List!22563)) )
))
(declare-datatypes ((Context!2050 0))(
  ( (Context!2051 (exprs!1525 List!22563)) )
))
(declare-datatypes ((tuple2!21206 0))(
  ( (tuple2!21207 (_1!12119 Context!2050) (_2!12119 C!11056)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21208 0))(
  ( (tuple2!21209 (_1!12120 tuple2!21206) (_2!12120 (InoxSet Context!2050))) )
))
(declare-datatypes ((List!22564 0))(
  ( (Nil!22480) (Cons!22480 (h!27881 tuple2!21208) (t!191684 List!22564)) )
))
(declare-datatypes ((array!6979 0))(
  ( (array!6980 (arr!3100 (Array (_ BitVec 32) List!22564)) (size!17570 (_ BitVec 32))) )
))
(declare-datatypes ((array!6981 0))(
  ( (array!6982 (arr!3101 (Array (_ BitVec 32) (_ BitVec 64))) (size!17571 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4048 0))(
  ( (LongMapFixedSize!4049 (defaultEntry!2389 Int) (mask!6067 (_ BitVec 32)) (extraKeys!2272 (_ BitVec 32)) (zeroValue!2282 List!22564) (minValue!2282 List!22564) (_size!4099 (_ BitVec 32)) (_keys!2321 array!6981) (_values!2304 array!6979) (_vacant!2085 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7921 0))(
  ( (Cell!7922 (v!27156 LongMapFixedSize!4048)) )
))
(declare-datatypes ((MutLongMap!2024 0))(
  ( (LongMap!2024 (underlying!4243 Cell!7921)) (MutLongMapExt!2023 (__x!13986 Int)) )
))
(declare-datatypes ((List!22565 0))(
  ( (Nil!22481) (Cons!22481 (h!27882 C!11056) (t!191685 List!22565)) )
))
(declare-datatypes ((IArray!15061 0))(
  ( (IArray!15062 (innerList!7588 List!22565)) )
))
(declare-datatypes ((Conc!7528 0))(
  ( (Node!7528 (left!17830 Conc!7528) (right!18160 Conc!7528) (csize!15286 Int) (cheight!7739 Int)) (Leaf!11023 (xs!10436 IArray!15061) (csize!15287 Int)) (Empty!7528) )
))
(declare-datatypes ((BalanceConc!14818 0))(
  ( (BalanceConc!14819 (c!331123 Conc!7528)) )
))
(declare-datatypes ((TokenValueInjection!7910 0))(
  ( (TokenValueInjection!7911 (toValue!5710 Int) (toChars!5569 Int)) )
))
(declare-datatypes ((Hashable!1939 0))(
  ( (HashableExt!1938 (__x!13987 Int)) )
))
(declare-datatypes ((Cell!7923 0))(
  ( (Cell!7924 (v!27157 MutLongMap!2024)) )
))
(declare-datatypes ((MutableMap!1938 0))(
  ( (MutableMapExt!1937 (__x!13988 Int)) (HashMap!1938 (underlying!4244 Cell!7923) (hashF!3861 Hashable!1939) (_size!4100 (_ BitVec 32)) (defaultValue!2100 Int)) )
))
(declare-datatypes ((CacheUp!1234 0))(
  ( (CacheUp!1235 (cache!2319 MutableMap!1938)) )
))
(declare-datatypes ((Rule!7854 0))(
  ( (Rule!7855 (regex!4027 Regex!5455) (tag!4517 String!26007) (isSeparator!4027 Bool) (transformation!4027 TokenValueInjection!7910)) )
))
(declare-datatypes ((Token!7602 0))(
  ( (Token!7603 (value!126422 TokenValue!4163) (rule!6263 Rule!7854) (size!17572 Int) (originalCharacters!4832 List!22565)) )
))
(declare-datatypes ((tuple2!21210 0))(
  ( (tuple2!21211 (_1!12121 Token!7602) (_2!12121 BalanceConc!14818)) )
))
(declare-datatypes ((Option!4707 0))(
  ( (None!4706) (Some!4706 (v!27158 tuple2!21210)) )
))
(declare-datatypes ((tuple3!2104 0))(
  ( (tuple3!2105 (_1!12122 Regex!5455) (_2!12122 Context!2050) (_3!1516 C!11056)) )
))
(declare-datatypes ((tuple2!21212 0))(
  ( (tuple2!21213 (_1!12123 tuple3!2104) (_2!12123 (InoxSet Context!2050))) )
))
(declare-datatypes ((List!22566 0))(
  ( (Nil!22482) (Cons!22482 (h!27883 tuple2!21212) (t!191686 List!22566)) )
))
(declare-datatypes ((array!6983 0))(
  ( (array!6984 (arr!3102 (Array (_ BitVec 32) List!22566)) (size!17573 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4050 0))(
  ( (LongMapFixedSize!4051 (defaultEntry!2390 Int) (mask!6068 (_ BitVec 32)) (extraKeys!2273 (_ BitVec 32)) (zeroValue!2283 List!22566) (minValue!2283 List!22566) (_size!4101 (_ BitVec 32)) (_keys!2322 array!6981) (_values!2305 array!6983) (_vacant!2086 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7925 0))(
  ( (Cell!7926 (v!27159 LongMapFixedSize!4050)) )
))
(declare-datatypes ((MutLongMap!2025 0))(
  ( (LongMap!2025 (underlying!4245 Cell!7925)) (MutLongMapExt!2024 (__x!13989 Int)) )
))
(declare-datatypes ((Cell!7927 0))(
  ( (Cell!7928 (v!27160 MutLongMap!2025)) )
))
(declare-datatypes ((MutableMap!1939 0))(
  ( (MutableMapExt!1938 (__x!13990 Int)) (HashMap!1939 (underlying!4246 Cell!7927) (hashF!3862 Hashable!1938) (_size!4102 (_ BitVec 32)) (defaultValue!2101 Int)) )
))
(declare-datatypes ((CacheDown!1236 0))(
  ( (CacheDown!1237 (cache!2320 MutableMap!1939)) )
))
(declare-datatypes ((tuple3!2106 0))(
  ( (tuple3!2107 (_1!12124 Option!4707) (_2!12124 CacheUp!1234) (_3!1517 CacheDown!1236)) )
))
(declare-fun err!3161 () tuple3!2106)

(declare-fun inv!29831 (String!26007) Bool)

(declare-fun inv!29837 (TokenValueInjection!7910) Bool)

(assert (=> b!2046083 (= e!1292845 (and tp!609051 (inv!29831 (tag!4517 (rule!6263 (_1!12121 (v!27158 (_1!12124 err!3161)))))) (inv!29837 (transformation!4027 (rule!6263 (_1!12121 (v!27158 (_1!12124 err!3161)))))) e!1292844))))

(declare-fun mapNonEmpty!9366 () Bool)

(declare-fun mapRes!9369 () Bool)

(declare-fun tp!609041 () Bool)

(declare-fun tp!609040 () Bool)

(assert (=> mapNonEmpty!9366 (= mapRes!9369 (and tp!609041 tp!609040))))

(declare-fun mapValue!9368 () List!22566)

(declare-fun mapRest!9369 () (Array (_ BitVec 32) List!22566))

(declare-fun mapKey!9367 () (_ BitVec 32))

(assert (=> mapNonEmpty!9366 (= (arr!3102 (_values!2305 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 (_3!1517 err!3161)))))))) (store mapRest!9369 mapKey!9367 mapValue!9368))))

(declare-fun b!2046085 () Bool)

(declare-fun e!1292879 () Bool)

(declare-fun tp!609017 () Bool)

(declare-fun inv!29838 (Conc!7528) Bool)

(assert (=> b!2046085 (= e!1292879 (and (inv!29838 (c!331123 (_2!12121 (v!27158 (_1!12124 err!3161))))) tp!609017))))

(declare-fun b!2046086 () Bool)

(declare-fun e!1292855 () tuple3!2106)

(declare-fun e!1292881 () tuple3!2106)

(assert (=> b!2046086 (= e!1292855 e!1292881)))

(declare-fun c!331121 () Bool)

(declare-datatypes ((List!22567 0))(
  ( (Nil!22483) (Cons!22483 (h!27884 Rule!7854) (t!191687 List!22567)) )
))
(declare-fun rules!1563 () List!22567)

(get-info :version)

(assert (=> b!2046086 (= c!331121 ((_ is Cons!22483) rules!1563))))

(declare-fun e!1292831 () Bool)

(declare-fun e!1292868 () Bool)

(assert (=> b!2046087 (= e!1292831 (and e!1292868 tp!609019))))

(declare-fun mapNonEmpty!9367 () Bool)

(declare-fun mapRes!9368 () Bool)

(declare-fun tp!609045 () Bool)

(declare-fun tp!609018 () Bool)

(assert (=> mapNonEmpty!9367 (= mapRes!9368 (and tp!609045 tp!609018))))

(declare-fun mapRest!9368 () (Array (_ BitVec 32) List!22564))

(declare-fun mapValue!9367 () List!22564)

(declare-fun mapKey!9369 () (_ BitVec 32))

(assert (=> mapNonEmpty!9367 (= (arr!3100 (_values!2304 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 (_2!12124 err!3161)))))))) (store mapRest!9368 mapKey!9369 mapValue!9367))))

(declare-fun b!2046088 () Bool)

(declare-fun e!1292861 () Bool)

(declare-fun e!1292842 () Bool)

(assert (=> b!2046088 (= e!1292861 e!1292842)))

(declare-fun b!2046084 () Bool)

(declare-fun e!1292859 () Bool)

(declare-fun e!1292880 () Bool)

(declare-fun lt!767144 () MutLongMap!2024)

(assert (=> b!2046084 (= e!1292859 (and e!1292880 ((_ is LongMap!2024) lt!767144)))))

(assert (=> b!2046084 (= lt!767144 (v!27157 (underlying!4244 (cache!2319 (_2!12124 err!3161)))))))

(declare-fun res!896193 () Bool)

(declare-fun e!1292835 () Bool)

(assert (=> start!201556 (=> (not res!896193) (not e!1292835))))

(declare-datatypes ((LexerInterface!3638 0))(
  ( (LexerInterfaceExt!3635 (__x!13991 Int)) (Lexer!3636) )
))
(declare-fun thiss!12889 () LexerInterface!3638)

(assert (=> start!201556 (= res!896193 ((_ is Lexer!3636) thiss!12889))))

(assert (=> start!201556 e!1292835))

(declare-fun cacheDown!575 () CacheDown!1236)

(declare-fun e!1292862 () Bool)

(declare-fun inv!29839 (CacheDown!1236) Bool)

(assert (=> start!201556 (and (inv!29839 cacheDown!575) e!1292862)))

(assert (=> start!201556 true))

(declare-fun cacheUp!562 () CacheUp!1234)

(declare-fun e!1292882 () Bool)

(declare-fun inv!29840 (CacheUp!1234) Bool)

(assert (=> start!201556 (and (inv!29840 cacheUp!562) e!1292882)))

(declare-fun e!1292860 () Bool)

(assert (=> start!201556 e!1292860))

(declare-fun totalInput!418 () BalanceConc!14818)

(declare-fun e!1292841 () Bool)

(declare-fun inv!29841 (BalanceConc!14818) Bool)

(assert (=> start!201556 (and (inv!29841 totalInput!418) e!1292841)))

(declare-fun treated!60 () BalanceConc!14818)

(declare-fun e!1292850 () Bool)

(assert (=> start!201556 (and (inv!29841 treated!60) e!1292850)))

(declare-fun input!986 () BalanceConc!14818)

(declare-fun e!1292848 () Bool)

(assert (=> start!201556 (and (inv!29841 input!986) e!1292848)))

(declare-datatypes ((List!22568 0))(
  ( (Nil!22484) (Cons!22484 (h!27885 Token!7602) (t!191688 List!22568)) )
))
(declare-datatypes ((IArray!15063 0))(
  ( (IArray!15064 (innerList!7589 List!22568)) )
))
(declare-datatypes ((Conc!7529 0))(
  ( (Node!7529 (left!17831 Conc!7529) (right!18161 Conc!7529) (csize!15288 Int) (cheight!7740 Int)) (Leaf!11024 (xs!10437 IArray!15063) (csize!15289 Int)) (Empty!7529) )
))
(declare-datatypes ((BalanceConc!14820 0))(
  ( (BalanceConc!14821 (c!331124 Conc!7529)) )
))
(declare-fun acc!382 () BalanceConc!14820)

(declare-fun e!1292877 () Bool)

(declare-fun inv!29842 (BalanceConc!14820) Bool)

(assert (=> start!201556 (and (inv!29842 acc!382) e!1292877)))

(declare-fun b!2046089 () Bool)

(declare-fun e!1292843 () Bool)

(declare-fun e!1292852 () Bool)

(assert (=> b!2046089 (= e!1292843 e!1292852)))

(declare-fun mapNonEmpty!9368 () Bool)

(declare-fun mapRes!9367 () Bool)

(declare-fun tp!609053 () Bool)

(declare-fun tp!609036 () Bool)

(assert (=> mapNonEmpty!9368 (= mapRes!9367 (and tp!609053 tp!609036))))

(declare-fun mapKey!9366 () (_ BitVec 32))

(declare-fun mapValue!9366 () List!22566)

(declare-fun mapRest!9367 () (Array (_ BitVec 32) List!22566))

(assert (=> mapNonEmpty!9368 (= (arr!3102 (_values!2305 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 cacheDown!575))))))) (store mapRest!9367 mapKey!9366 mapValue!9366))))

(declare-fun mapIsEmpty!9366 () Bool)

(assert (=> mapIsEmpty!9366 mapRes!9368))

(declare-fun tp!609049 () Bool)

(declare-fun e!1292857 () Bool)

(declare-fun tp!609029 () Bool)

(declare-fun array_inv!2225 (array!6981) Bool)

(declare-fun array_inv!2226 (array!6979) Bool)

(assert (=> b!2046090 (= e!1292852 (and tp!609028 tp!609029 tp!609049 (array_inv!2225 (_keys!2321 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 cacheUp!562))))))) (array_inv!2226 (_values!2304 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 cacheUp!562))))))) e!1292857))))

(declare-fun b!2046091 () Bool)

(declare-fun e!1292869 () Bool)

(assert (=> b!2046091 (= e!1292862 e!1292869)))

(declare-fun b!2046092 () Bool)

(declare-fun e!1292866 () Bool)

(declare-fun lt!767146 () tuple3!2106)

(assert (=> b!2046092 (= e!1292866 (= lt!767146 e!1292855))))

(declare-fun c!331120 () Bool)

(assert (=> b!2046092 (= c!331120 (and ((_ is Cons!22483) rules!1563) ((_ is Nil!22483) (t!191687 rules!1563))))))

(declare-fun b!2046093 () Bool)

(declare-fun e!1292858 () Bool)

(declare-fun e!1292878 () Bool)

(assert (=> b!2046093 (= e!1292858 e!1292878)))

(declare-fun mapIsEmpty!9367 () Bool)

(declare-fun mapRes!9366 () Bool)

(assert (=> mapIsEmpty!9367 mapRes!9366))

(declare-fun e!1292875 () Bool)

(assert (=> b!2046094 (= e!1292842 (and e!1292875 tp!609037))))

(declare-fun b!2046095 () Bool)

(declare-fun e!1292847 () Bool)

(assert (=> b!2046095 (= e!1292847 e!1292843)))

(declare-fun b!2046096 () Bool)

(declare-fun res!896190 () Bool)

(declare-fun e!1292867 () Bool)

(assert (=> b!2046096 (=> (not res!896190) (not e!1292867))))

(declare-datatypes ((tuple2!21214 0))(
  ( (tuple2!21215 (_1!12125 BalanceConc!14820) (_2!12125 BalanceConc!14818)) )
))
(declare-fun lt!767156 () tuple2!21214)

(declare-fun lt!767147 () tuple2!21214)

(declare-fun list!9205 (BalanceConc!14818) List!22565)

(assert (=> b!2046096 (= res!896190 (= (list!9205 (_2!12125 lt!767156)) (list!9205 (_2!12125 lt!767147))))))

(declare-fun mapIsEmpty!9368 () Bool)

(assert (=> mapIsEmpty!9368 mapRes!9369))

(declare-fun e!1292837 () Bool)

(declare-fun tp!609021 () Bool)

(declare-fun tp!609026 () Bool)

(declare-fun e!1292873 () Bool)

(assert (=> b!2046097 (= e!1292837 (and tp!609054 tp!609026 tp!609021 (array_inv!2225 (_keys!2321 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 (_2!12124 err!3161)))))))) (array_inv!2226 (_values!2304 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 (_2!12124 err!3161)))))))) e!1292873))))

(declare-fun b!2046098 () Bool)

(declare-fun e!1292864 () Bool)

(declare-fun e!1292851 () Bool)

(assert (=> b!2046098 (= e!1292864 e!1292851)))

(declare-fun b!2046099 () Bool)

(declare-fun e!1292836 () Bool)

(declare-fun e!1292846 () Bool)

(assert (=> b!2046099 (= e!1292836 e!1292846)))

(declare-fun res!896194 () Bool)

(assert (=> b!2046099 (=> res!896194 e!1292846)))

(declare-fun lt!767153 () tuple3!2106)

(assert (=> b!2046099 (= res!896194 (not ((_ is Some!4706) (_1!12124 lt!767153))))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!17 (LexerInterface!3638 List!22567 BalanceConc!14818 BalanceConc!14818 CacheUp!1234 CacheDown!1236) tuple3!2106)

(assert (=> b!2046099 (= lt!767153 (maxPrefixZipperSequenceV2MemOnlyDeriv!17 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2046100 () Bool)

(declare-fun e!1292886 () Bool)

(declare-fun tp!609038 () Bool)

(assert (=> b!2046100 (= e!1292860 (and e!1292886 tp!609038))))

(declare-fun bm!125317 () Bool)

(declare-fun call!125322 () tuple3!2106)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!8 (LexerInterface!3638 Rule!7854 BalanceConc!14818 BalanceConc!14818 CacheUp!1234 CacheDown!1236) tuple3!2106)

(assert (=> bm!125317 (= call!125322 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!8 thiss!12889 (h!27884 rules!1563) input!986 totalInput!418 (_2!12124 lt!767153) (_3!1517 lt!767153)))))

(declare-fun e!1292839 () Bool)

(assert (=> b!2046101 (= e!1292839 (and e!1292859 tp!609047))))

(declare-fun b!2046102 () Bool)

(declare-fun tp!609030 () Bool)

(assert (=> b!2046102 (= e!1292850 (and (inv!29838 (c!331123 treated!60)) tp!609030))))

(declare-fun e!1292849 () Bool)

(declare-fun e!1292876 () Bool)

(declare-fun tp!609044 () Bool)

(declare-fun tp!609022 () Bool)

(declare-fun array_inv!2227 (array!6983) Bool)

(assert (=> b!2046103 (= e!1292849 (and tp!609056 tp!609044 tp!609022 (array_inv!2225 (_keys!2322 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 (_3!1517 err!3161)))))))) (array_inv!2227 (_values!2305 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 (_3!1517 err!3161)))))))) e!1292876))))

(declare-fun b!2046104 () Bool)

(declare-fun res!896191 () Bool)

(assert (=> b!2046104 (=> (not res!896191) (not e!1292835))))

(declare-fun rulesInvariant!3236 (LexerInterface!3638 List!22567) Bool)

(assert (=> b!2046104 (= res!896191 (rulesInvariant!3236 thiss!12889 rules!1563))))

(declare-fun b!2046105 () Bool)

(declare-fun e!1292874 () Bool)

(declare-fun tp!609032 () Bool)

(assert (=> b!2046105 (= e!1292874 (and tp!609032 mapRes!9367))))

(declare-fun condMapEmpty!9367 () Bool)

(declare-fun mapDefault!9367 () List!22566)

(assert (=> b!2046105 (= condMapEmpty!9367 (= (arr!3102 (_values!2305 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22566)) mapDefault!9367)))))

(declare-fun b!2046106 () Bool)

(declare-fun lt!767150 () MutLongMap!2024)

(assert (=> b!2046106 (= e!1292868 (and e!1292847 ((_ is LongMap!2024) lt!767150)))))

(assert (=> b!2046106 (= lt!767150 (v!27157 (underlying!4244 (cache!2319 cacheUp!562))))))

(declare-fun tp!609055 () Bool)

(declare-fun e!1292870 () Bool)

(declare-fun tp!609042 () Bool)

(assert (=> b!2046107 (= e!1292870 (and tp!609033 tp!609055 tp!609042 (array_inv!2225 (_keys!2322 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 cacheDown!575))))))) (array_inv!2227 (_values!2305 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 cacheDown!575))))))) e!1292874))))

(declare-fun b!2046108 () Bool)

(declare-fun tp!609034 () Bool)

(assert (=> b!2046108 (= e!1292873 (and tp!609034 mapRes!9368))))

(declare-fun condMapEmpty!9366 () Bool)

(declare-fun mapDefault!9369 () List!22564)

(assert (=> b!2046108 (= condMapEmpty!9366 (= (arr!3100 (_values!2304 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 (_2!12124 err!3161)))))))) ((as const (Array (_ BitVec 32) List!22564)) mapDefault!9369)))))

(declare-fun b!2046109 () Bool)

(declare-fun res!896197 () Bool)

(assert (=> b!2046109 (=> (not res!896197) (not e!1292867))))

(declare-fun valid!1612 (CacheUp!1234) Bool)

(assert (=> b!2046109 (= res!896197 (valid!1612 cacheUp!562))))

(declare-fun b!2046110 () Bool)

(declare-fun e!1292883 () Bool)

(assert (=> b!2046110 (= e!1292835 e!1292883)))

(declare-fun res!896187 () Bool)

(assert (=> b!2046110 (=> (not res!896187) (not e!1292883))))

(declare-fun lt!767155 () List!22565)

(declare-fun lt!767152 () List!22565)

(assert (=> b!2046110 (= res!896187 (= lt!767155 lt!767152))))

(declare-fun lt!767145 () List!22565)

(declare-fun lt!767161 () List!22565)

(declare-fun ++!6103 (List!22565 List!22565) List!22565)

(assert (=> b!2046110 (= lt!767152 (++!6103 lt!767145 lt!767161))))

(assert (=> b!2046110 (= lt!767155 (list!9205 totalInput!418))))

(assert (=> b!2046110 (= lt!767161 (list!9205 input!986))))

(assert (=> b!2046110 (= lt!767145 (list!9205 treated!60))))

(declare-fun e!1292834 () Bool)

(assert (=> b!2046111 (= e!1292834 (and tp!609048 tp!609052))))

(declare-fun b!2046112 () Bool)

(declare-fun e!1292832 () Bool)

(declare-fun lt!767160 () MutLongMap!2025)

(assert (=> b!2046112 (= e!1292832 (and e!1292864 ((_ is LongMap!2025) lt!767160)))))

(assert (=> b!2046112 (= lt!767160 (v!27160 (underlying!4246 (cache!2320 cacheDown!575))))))

(declare-fun b!2046113 () Bool)

(assert (=> b!2046113 (= e!1292851 e!1292870)))

(declare-fun b!2046114 () Bool)

(declare-fun e!1292853 () Bool)

(declare-fun tp!609024 () Bool)

(declare-fun inv!21 (TokenValue!4163) Bool)

(assert (=> b!2046114 (= e!1292853 (and (inv!21 (value!126422 (_1!12121 (v!27158 (_1!12124 err!3161))))) e!1292845 tp!609024))))

(declare-fun e!1292885 () Bool)

(declare-fun b!2046115 () Bool)

(declare-fun inv!29843 (Token!7602) Bool)

(assert (=> b!2046115 (= e!1292885 (and (inv!29843 (_1!12121 (v!27158 (_1!12124 err!3161)))) e!1292853 (inv!29841 (_2!12121 (v!27158 (_1!12124 err!3161)))) e!1292879))))

(declare-fun b!2046116 () Bool)

(declare-fun res!896188 () Bool)

(assert (=> b!2046116 (=> (not res!896188) (not e!1292867))))

(declare-fun valid!1613 (CacheDown!1236) Bool)

(assert (=> b!2046116 (= res!896188 (valid!1613 cacheDown!575))))

(declare-fun tp!609043 () Bool)

(declare-fun b!2046117 () Bool)

(assert (=> b!2046117 (= e!1292886 (and tp!609043 (inv!29831 (tag!4517 (h!27884 rules!1563))) (inv!29837 (transformation!4027 (h!27884 rules!1563))) e!1292834))))

(declare-fun b!2046118 () Bool)

(declare-fun tp!609039 () Bool)

(assert (=> b!2046118 (= e!1292876 (and tp!609039 mapRes!9369))))

(declare-fun condMapEmpty!9369 () Bool)

(declare-fun mapDefault!9368 () List!22566)

(assert (=> b!2046118 (= condMapEmpty!9369 (= (arr!3102 (_values!2305 (v!27159 (underlying!4245 (v!27160 (underlying!4246 (cache!2320 (_3!1517 err!3161)))))))) ((as const (Array (_ BitVec 32) List!22566)) mapDefault!9368)))))

(declare-fun b!2046119 () Bool)

(declare-fun res!896195 () Bool)

(assert (=> b!2046119 (=> (not res!896195) (not e!1292835))))

(declare-fun isEmpty!13986 (List!22567) Bool)

(assert (=> b!2046119 (= res!896195 (not (isEmpty!13986 rules!1563)))))

(declare-fun b!2046120 () Bool)

(declare-fun e!1292872 () Bool)

(assert (=> b!2046120 (= e!1292872 e!1292839)))

(declare-fun b!2046121 () Bool)

(assert (=> b!2046121 (= e!1292846 true)))

(declare-fun lt!767158 () Bool)

(declare-fun rulesValidInductive!1402 (LexerInterface!3638 List!22567) Bool)

(assert (=> b!2046121 (= lt!767158 (rulesValidInductive!1402 thiss!12889 rules!1563))))

(assert (=> b!2046121 e!1292866))

(declare-fun res!896192 () Bool)

(assert (=> b!2046121 (=> (not res!896192) (not e!1292866))))

(declare-fun isPrefix!1998 (List!22565 List!22565) Bool)

(assert (=> b!2046121 (= res!896192 (isPrefix!1998 lt!767161 lt!767161))))

(declare-datatypes ((Unit!37049 0))(
  ( (Unit!37050) )
))
(declare-fun lt!767159 () Unit!37049)

(declare-fun lemmaIsPrefixRefl!1316 (List!22565 List!22565) Unit!37049)

(assert (=> b!2046121 (= lt!767159 (lemmaIsPrefixRefl!1316 lt!767161 lt!767161))))

(assert (=> b!2046121 (= lt!767146 (maxPrefixZipperSequenceV2MemOnlyDeriv!17 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12124 lt!767153) (_3!1517 lt!767153)))))

(declare-fun lt!767157 () tuple2!21214)

(declare-fun lexRec!443 (LexerInterface!3638 List!22567 BalanceConc!14818) tuple2!21214)

(assert (=> b!2046121 (= lt!767157 (lexRec!443 thiss!12889 rules!1563 (_2!12121 (v!27158 (_1!12124 lt!767153)))))))

(declare-fun b!2046122 () Bool)

(declare-fun e!1292840 () Bool)

(assert (=> b!2046122 (= e!1292840 e!1292867)))

(declare-fun res!896185 () Bool)

(assert (=> b!2046122 (=> (not res!896185) (not e!1292867))))

(declare-fun list!9206 (BalanceConc!14820) List!22568)

(declare-fun ++!6104 (BalanceConc!14820 BalanceConc!14820) BalanceConc!14820)

(assert (=> b!2046122 (= res!896185 (= (list!9206 (_1!12125 lt!767156)) (list!9206 (++!6104 acc!382 (_1!12125 lt!767147)))))))

(assert (=> b!2046122 (= lt!767147 (lexRec!443 thiss!12889 rules!1563 input!986))))

(assert (=> b!2046122 (= lt!767156 (lexRec!443 thiss!12889 rules!1563 totalInput!418))))

(declare-fun mapIsEmpty!9369 () Bool)

(assert (=> mapIsEmpty!9369 mapRes!9367))

(declare-fun lt!767154 () tuple3!2106)

(declare-fun b!2046123 () Bool)

(declare-fun lt!767148 () tuple3!2106)

(assert (=> b!2046123 (= lt!767154 (maxPrefixZipperSequenceV2MemOnlyDeriv!17 thiss!12889 (t!191687 rules!1563) input!986 totalInput!418 (_2!12124 lt!767148) (_3!1517 lt!767148)))))

(assert (=> b!2046123 (= lt!767148 call!125322)))

(assert (=> b!2046123 (= e!1292881 (tuple3!2107 (ite (and ((_ is None!4706) (_1!12124 lt!767148)) ((_ is None!4706) (_1!12124 lt!767154))) None!4706 (ite ((_ is None!4706) (_1!12124 lt!767154)) (_1!12124 lt!767148) (ite ((_ is None!4706) (_1!12124 lt!767148)) (_1!12124 lt!767154) (ite (>= (size!17572 (_1!12121 (v!27158 (_1!12124 lt!767148)))) (size!17572 (_1!12121 (v!27158 (_1!12124 lt!767154))))) (Some!4706 (v!27158 (_1!12124 lt!767148))) (Some!4706 (v!27158 (_1!12124 lt!767154))))))) (_2!12124 lt!767154) (_3!1517 lt!767154)))))

(declare-fun b!2046124 () Bool)

(declare-fun lt!767149 () MutLongMap!2025)

(assert (=> b!2046124 (= e!1292875 (and e!1292858 ((_ is LongMap!2025) lt!767149)))))

(assert (=> b!2046124 (= lt!767149 (v!27160 (underlying!4246 (cache!2320 (_3!1517 err!3161)))))))

(assert (=> b!2046125 (= e!1292844 (and tp!609046 tp!609020))))

(declare-fun b!2046126 () Bool)

(declare-fun tp!609031 () Bool)

(assert (=> b!2046126 (= e!1292848 (and (inv!29838 (c!331123 input!986)) tp!609031))))

(declare-fun b!2046127 () Bool)

(declare-fun tp!609050 () Bool)

(declare-fun inv!29844 (Conc!7529) Bool)

(assert (=> b!2046127 (= e!1292877 (and (inv!29844 (c!331124 acc!382)) tp!609050))))

(declare-fun b!2046128 () Bool)

(declare-fun e!1292856 () Bool)

(assert (=> b!2046128 (= e!1292856 e!1292837)))

(declare-fun b!2046129 () Bool)

(assert (=> b!2046129 (= e!1292883 e!1292840)))

(declare-fun res!896189 () Bool)

(assert (=> b!2046129 (=> (not res!896189) (not e!1292840))))

(declare-fun lt!767143 () tuple2!21214)

(assert (=> b!2046129 (= res!896189 (= (list!9206 (_1!12125 lt!767143)) (list!9206 acc!382)))))

(assert (=> b!2046129 (= lt!767143 (lexRec!443 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2046130 () Bool)

(assert (=> b!2046130 (= e!1292882 e!1292831)))

(declare-fun b!2046131 () Bool)

(declare-fun tp!609027 () Bool)

(assert (=> b!2046131 (= e!1292841 (and (inv!29838 (c!331123 totalInput!418)) tp!609027))))

(declare-fun b!2046132 () Bool)

(declare-fun tp!609025 () Bool)

(assert (=> b!2046132 (= e!1292857 (and tp!609025 mapRes!9366))))

(declare-fun condMapEmpty!9368 () Bool)

(declare-fun mapDefault!9366 () List!22564)

(assert (=> b!2046132 (= condMapEmpty!9368 (= (arr!3100 (_values!2304 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22564)) mapDefault!9366)))))

(declare-fun b!2046133 () Bool)

(assert (=> b!2046133 (= e!1292855 call!125322)))

(declare-fun b!2046134 () Bool)

(assert (=> b!2046134 (= e!1292880 e!1292856)))

(declare-fun b!2046135 () Bool)

(assert (=> b!2046135 (= e!1292867 (not e!1292836))))

(declare-fun res!896196 () Bool)

(assert (=> b!2046135 (=> res!896196 e!1292836)))

(declare-fun isSuffix!482 (List!22565 List!22565) Bool)

(assert (=> b!2046135 (= res!896196 (not (isSuffix!482 lt!767161 lt!767155)))))

(assert (=> b!2046135 (isSuffix!482 lt!767161 lt!767152)))

(declare-fun lt!767151 () Unit!37049)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!383 (List!22565 List!22565) Unit!37049)

(assert (=> b!2046135 (= lt!767151 (lemmaConcatTwoListThenFSndIsSuffix!383 lt!767145 lt!767161))))

(declare-fun mapNonEmpty!9369 () Bool)

(declare-fun tp!609035 () Bool)

(declare-fun tp!609016 () Bool)

(assert (=> mapNonEmpty!9369 (= mapRes!9366 (and tp!609035 tp!609016))))

(declare-fun mapKey!9368 () (_ BitVec 32))

(declare-fun mapValue!9369 () List!22564)

(declare-fun mapRest!9366 () (Array (_ BitVec 32) List!22564))

(assert (=> mapNonEmpty!9369 (= (arr!3100 (_values!2304 (v!27156 (underlying!4243 (v!27157 (underlying!4244 (cache!2319 cacheUp!562))))))) (store mapRest!9366 mapKey!9368 mapValue!9369))))

(declare-fun b!2046136 () Bool)

(declare-fun res!896186 () Bool)

(assert (=> b!2046136 (=> (not res!896186) (not e!1292840))))

(declare-fun isEmpty!13987 (List!22565) Bool)

(assert (=> b!2046136 (= res!896186 (isEmpty!13987 (list!9205 (_2!12125 lt!767143))))))

(assert (=> b!2046137 (= e!1292869 (and e!1292832 tp!609023))))

(declare-fun b!2046138 () Bool)

(assert (=> b!2046138 true))

(assert (=> b!2046138 (and e!1292885 (inv!29840 (_2!12124 err!3161)) e!1292872 (inv!29839 (_3!1517 err!3161)) e!1292861)))

(assert (=> b!2046138 (= e!1292881 err!3161)))

(declare-fun b!2046139 () Bool)

(assert (=> b!2046139 (= e!1292878 e!1292849)))

(assert (= (and start!201556 res!896193) b!2046119))

(assert (= (and b!2046119 res!896195) b!2046104))

(assert (= (and b!2046104 res!896191) b!2046110))

(assert (= (and b!2046110 res!896187) b!2046129))

(assert (= (and b!2046129 res!896189) b!2046136))

(assert (= (and b!2046136 res!896186) b!2046122))

(assert (= (and b!2046122 res!896185) b!2046096))

(assert (= (and b!2046096 res!896190) b!2046109))

(assert (= (and b!2046109 res!896197) b!2046116))

(assert (= (and b!2046116 res!896188) b!2046135))

(assert (= (and b!2046135 (not res!896196)) b!2046099))

(assert (= (and b!2046099 (not res!896194)) b!2046121))

(assert (= (and b!2046121 res!896192) b!2046092))

(assert (= (and b!2046092 c!331120) b!2046133))

(assert (= (and b!2046092 (not c!331120)) b!2046086))

(assert (= (and b!2046086 c!331121) b!2046123))

(assert (= (and b!2046086 (not c!331121)) b!2046138))

(assert (= b!2046083 b!2046125))

(assert (= b!2046114 b!2046083))

(assert (= b!2046115 b!2046114))

(assert (= b!2046115 b!2046085))

(assert (= (and b!2046138 ((_ is Some!4706) (_1!12124 err!3161))) b!2046115))

(assert (= (and b!2046108 condMapEmpty!9366) mapIsEmpty!9366))

(assert (= (and b!2046108 (not condMapEmpty!9366)) mapNonEmpty!9367))

(assert (= b!2046097 b!2046108))

(assert (= b!2046128 b!2046097))

(assert (= b!2046134 b!2046128))

(assert (= (and b!2046084 ((_ is LongMap!2024) (v!27157 (underlying!4244 (cache!2319 (_2!12124 err!3161)))))) b!2046134))

(assert (= b!2046101 b!2046084))

(assert (= (and b!2046120 ((_ is HashMap!1938) (cache!2319 (_2!12124 err!3161)))) b!2046101))

(assert (= b!2046138 b!2046120))

(assert (= (and b!2046118 condMapEmpty!9369) mapIsEmpty!9368))

(assert (= (and b!2046118 (not condMapEmpty!9369)) mapNonEmpty!9366))

(assert (= b!2046103 b!2046118))

(assert (= b!2046139 b!2046103))

(assert (= b!2046093 b!2046139))

(assert (= (and b!2046124 ((_ is LongMap!2025) (v!27160 (underlying!4246 (cache!2320 (_3!1517 err!3161)))))) b!2046093))

(assert (= b!2046094 b!2046124))

(assert (= (and b!2046088 ((_ is HashMap!1939) (cache!2320 (_3!1517 err!3161)))) b!2046094))

(assert (= b!2046138 b!2046088))

(assert (= (or b!2046133 b!2046123) bm!125317))

(assert (= (and b!2046105 condMapEmpty!9367) mapIsEmpty!9369))

(assert (= (and b!2046105 (not condMapEmpty!9367)) mapNonEmpty!9368))

(assert (= b!2046107 b!2046105))

(assert (= b!2046113 b!2046107))

(assert (= b!2046098 b!2046113))

(assert (= (and b!2046112 ((_ is LongMap!2025) (v!27160 (underlying!4246 (cache!2320 cacheDown!575))))) b!2046098))

(assert (= b!2046137 b!2046112))

(assert (= (and b!2046091 ((_ is HashMap!1939) (cache!2320 cacheDown!575))) b!2046137))

(assert (= start!201556 b!2046091))

(assert (= (and b!2046132 condMapEmpty!9368) mapIsEmpty!9367))

(assert (= (and b!2046132 (not condMapEmpty!9368)) mapNonEmpty!9369))

(assert (= b!2046090 b!2046132))

(assert (= b!2046089 b!2046090))

(assert (= b!2046095 b!2046089))

(assert (= (and b!2046106 ((_ is LongMap!2024) (v!27157 (underlying!4244 (cache!2319 cacheUp!562))))) b!2046095))

(assert (= b!2046087 b!2046106))

(assert (= (and b!2046130 ((_ is HashMap!1938) (cache!2319 cacheUp!562))) b!2046087))

(assert (= start!201556 b!2046130))

(assert (= b!2046117 b!2046111))

(assert (= b!2046100 b!2046117))

(assert (= (and start!201556 ((_ is Cons!22483) rules!1563)) b!2046100))

(assert (= start!201556 b!2046131))

(assert (= start!201556 b!2046102))

(assert (= start!201556 b!2046126))

(assert (= start!201556 b!2046127))

(declare-fun m!2489845 () Bool)

(assert (=> mapNonEmpty!9368 m!2489845))

(declare-fun m!2489847 () Bool)

(assert (=> b!2046127 m!2489847))

(declare-fun m!2489849 () Bool)

(assert (=> b!2046102 m!2489849))

(declare-fun m!2489851 () Bool)

(assert (=> b!2046117 m!2489851))

(declare-fun m!2489853 () Bool)

(assert (=> b!2046117 m!2489853))

(declare-fun m!2489855 () Bool)

(assert (=> b!2046103 m!2489855))

(declare-fun m!2489857 () Bool)

(assert (=> b!2046103 m!2489857))

(declare-fun m!2489859 () Bool)

(assert (=> b!2046138 m!2489859))

(declare-fun m!2489861 () Bool)

(assert (=> b!2046138 m!2489861))

(declare-fun m!2489863 () Bool)

(assert (=> b!2046109 m!2489863))

(declare-fun m!2489865 () Bool)

(assert (=> mapNonEmpty!9367 m!2489865))

(declare-fun m!2489867 () Bool)

(assert (=> b!2046099 m!2489867))

(declare-fun m!2489869 () Bool)

(assert (=> b!2046097 m!2489869))

(declare-fun m!2489871 () Bool)

(assert (=> b!2046097 m!2489871))

(declare-fun m!2489873 () Bool)

(assert (=> b!2046122 m!2489873))

(declare-fun m!2489875 () Bool)

(assert (=> b!2046122 m!2489875))

(declare-fun m!2489877 () Bool)

(assert (=> b!2046122 m!2489877))

(declare-fun m!2489879 () Bool)

(assert (=> b!2046122 m!2489879))

(declare-fun m!2489881 () Bool)

(assert (=> b!2046122 m!2489881))

(assert (=> b!2046122 m!2489879))

(declare-fun m!2489883 () Bool)

(assert (=> b!2046136 m!2489883))

(assert (=> b!2046136 m!2489883))

(declare-fun m!2489885 () Bool)

(assert (=> b!2046136 m!2489885))

(declare-fun m!2489887 () Bool)

(assert (=> b!2046104 m!2489887))

(declare-fun m!2489889 () Bool)

(assert (=> b!2046116 m!2489889))

(declare-fun m!2489891 () Bool)

(assert (=> b!2046090 m!2489891))

(declare-fun m!2489893 () Bool)

(assert (=> b!2046090 m!2489893))

(declare-fun m!2489895 () Bool)

(assert (=> bm!125317 m!2489895))

(declare-fun m!2489897 () Bool)

(assert (=> b!2046083 m!2489897))

(declare-fun m!2489899 () Bool)

(assert (=> b!2046083 m!2489899))

(declare-fun m!2489901 () Bool)

(assert (=> b!2046110 m!2489901))

(declare-fun m!2489903 () Bool)

(assert (=> b!2046110 m!2489903))

(declare-fun m!2489905 () Bool)

(assert (=> b!2046110 m!2489905))

(declare-fun m!2489907 () Bool)

(assert (=> b!2046110 m!2489907))

(declare-fun m!2489909 () Bool)

(assert (=> b!2046114 m!2489909))

(declare-fun m!2489911 () Bool)

(assert (=> b!2046107 m!2489911))

(declare-fun m!2489913 () Bool)

(assert (=> b!2046107 m!2489913))

(declare-fun m!2489915 () Bool)

(assert (=> b!2046131 m!2489915))

(declare-fun m!2489917 () Bool)

(assert (=> b!2046119 m!2489917))

(declare-fun m!2489919 () Bool)

(assert (=> mapNonEmpty!9366 m!2489919))

(declare-fun m!2489921 () Bool)

(assert (=> b!2046123 m!2489921))

(declare-fun m!2489923 () Bool)

(assert (=> b!2046126 m!2489923))

(declare-fun m!2489925 () Bool)

(assert (=> start!201556 m!2489925))

(declare-fun m!2489927 () Bool)

(assert (=> start!201556 m!2489927))

(declare-fun m!2489929 () Bool)

(assert (=> start!201556 m!2489929))

(declare-fun m!2489931 () Bool)

(assert (=> start!201556 m!2489931))

(declare-fun m!2489933 () Bool)

(assert (=> start!201556 m!2489933))

(declare-fun m!2489935 () Bool)

(assert (=> start!201556 m!2489935))

(declare-fun m!2489937 () Bool)

(assert (=> b!2046121 m!2489937))

(declare-fun m!2489939 () Bool)

(assert (=> b!2046121 m!2489939))

(declare-fun m!2489941 () Bool)

(assert (=> b!2046121 m!2489941))

(declare-fun m!2489943 () Bool)

(assert (=> b!2046121 m!2489943))

(declare-fun m!2489945 () Bool)

(assert (=> b!2046121 m!2489945))

(declare-fun m!2489947 () Bool)

(assert (=> b!2046129 m!2489947))

(declare-fun m!2489949 () Bool)

(assert (=> b!2046129 m!2489949))

(declare-fun m!2489951 () Bool)

(assert (=> b!2046129 m!2489951))

(declare-fun m!2489953 () Bool)

(assert (=> mapNonEmpty!9369 m!2489953))

(declare-fun m!2489955 () Bool)

(assert (=> b!2046135 m!2489955))

(declare-fun m!2489957 () Bool)

(assert (=> b!2046135 m!2489957))

(declare-fun m!2489959 () Bool)

(assert (=> b!2046135 m!2489959))

(declare-fun m!2489961 () Bool)

(assert (=> b!2046085 m!2489961))

(declare-fun m!2489963 () Bool)

(assert (=> b!2046096 m!2489963))

(declare-fun m!2489965 () Bool)

(assert (=> b!2046096 m!2489965))

(declare-fun m!2489967 () Bool)

(assert (=> b!2046115 m!2489967))

(declare-fun m!2489969 () Bool)

(assert (=> b!2046115 m!2489969))

(check-sat (not b_next!57981) b_and!163225 (not b!2046100) b_and!163235 (not b!2046097) (not b_next!57995) b_and!163233 (not b_next!57997) (not b_next!58001) (not b_next!57993) (not b!2046099) (not b!2046138) (not b!2046121) (not b_next!57999) (not b!2046109) (not b_next!57987) (not mapNonEmpty!9369) (not b!2046135) (not b!2046108) b_and!163239 (not b!2046085) (not b!2046127) (not b!2046129) (not b_next!57983) (not start!201556) (not b!2046115) (not b!2046105) (not b!2046132) (not b!2046116) (not b!2046083) (not b!2046122) (not bm!125317) (not b!2046114) (not mapNonEmpty!9367) (not b!2046117) (not b!2046104) (not mapNonEmpty!9368) b_and!163237 b_and!163227 (not b!2046131) (not mapNonEmpty!9366) b_and!163229 (not b!2046136) (not b_next!57991) (not b!2046096) (not b!2046119) (not b!2046126) b_and!163243 (not b_next!58003) (not b!2046118) b_and!163223 b_and!163241 (not b!2046123) (not b!2046102) (not b!2046110) (not b!2046090) (not b!2046103) (not b_next!57985) (not b!2046107) b_and!163231 b_and!163221 (not b_next!57989))
(check-sat (not b_next!57981) b_and!163225 (not b_next!57999) (not b_next!57987) b_and!163239 (not b_next!57983) b_and!163235 (not b_next!57995) b_and!163233 (not b_next!57997) (not b_next!58001) (not b_next!57993) b_and!163229 (not b_next!57991) (not b_next!57985) b_and!163237 b_and!163227 b_and!163243 (not b_next!58003) b_and!163223 b_and!163241 b_and!163231 b_and!163221 (not b_next!57989))
