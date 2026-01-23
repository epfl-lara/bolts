; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48262 () Bool)

(assert start!48262)

(declare-fun b!526658 () Bool)

(declare-fun b_free!13961 () Bool)

(declare-fun b_next!13977 () Bool)

(assert (=> b!526658 (= b_free!13961 (not b_next!13977))))

(declare-fun tp!166427 () Bool)

(declare-fun b_and!51455 () Bool)

(assert (=> b!526658 (= tp!166427 b_and!51455)))

(declare-fun b!526650 () Bool)

(declare-fun b_free!13963 () Bool)

(declare-fun b_next!13979 () Bool)

(assert (=> b!526650 (= b_free!13963 (not b_next!13979))))

(declare-fun tp!166429 () Bool)

(declare-fun b_and!51457 () Bool)

(assert (=> b!526650 (= tp!166429 b_and!51457)))

(declare-fun b_free!13965 () Bool)

(declare-fun b_next!13981 () Bool)

(assert (=> b!526650 (= b_free!13965 (not b_next!13981))))

(declare-fun tp!166413 () Bool)

(declare-fun b_and!51459 () Bool)

(assert (=> b!526650 (= tp!166413 b_and!51459)))

(declare-fun b!526674 () Bool)

(declare-fun b_free!13967 () Bool)

(declare-fun b_next!13983 () Bool)

(assert (=> b!526674 (= b_free!13967 (not b_next!13983))))

(declare-fun tp!166411 () Bool)

(declare-fun b_and!51461 () Bool)

(assert (=> b!526674 (= tp!166411 b_and!51461)))

(declare-fun b!526646 () Bool)

(declare-fun b_free!13969 () Bool)

(declare-fun b_next!13985 () Bool)

(assert (=> b!526646 (= b_free!13969 (not b_next!13985))))

(declare-fun tp!166433 () Bool)

(declare-fun b_and!51463 () Bool)

(assert (=> b!526646 (= tp!166433 b_and!51463)))

(declare-fun b!526667 () Bool)

(declare-fun b_free!13971 () Bool)

(declare-fun b_next!13987 () Bool)

(assert (=> b!526667 (= b_free!13971 (not b_next!13987))))

(declare-fun tp!166424 () Bool)

(declare-fun b_and!51465 () Bool)

(assert (=> b!526667 (= tp!166424 b_and!51465)))

(declare-fun b!526653 () Bool)

(declare-fun b_free!13973 () Bool)

(declare-fun b_next!13989 () Bool)

(assert (=> b!526653 (= b_free!13973 (not b_next!13989))))

(declare-fun tp!166410 () Bool)

(declare-fun b_and!51467 () Bool)

(assert (=> b!526653 (= tp!166410 b_and!51467)))

(declare-fun b!526652 () Bool)

(declare-fun b_free!13975 () Bool)

(declare-fun b_next!13991 () Bool)

(assert (=> b!526652 (= b_free!13975 (not b_next!13991))))

(declare-fun tp!166417 () Bool)

(declare-fun b_and!51469 () Bool)

(assert (=> b!526652 (= tp!166417 b_and!51469)))

(declare-fun mapIsEmpty!2292 () Bool)

(declare-fun mapRes!2293 () Bool)

(assert (=> mapIsEmpty!2292 mapRes!2293))

(declare-fun e!316529 () Bool)

(declare-fun e!316511 () Bool)

(assert (=> b!526646 (= e!316529 (and e!316511 tp!166433))))

(declare-fun b!526647 () Bool)

(declare-fun e!316501 () Bool)

(declare-fun e!316514 () Bool)

(assert (=> b!526647 (= e!316501 e!316514)))

(declare-fun b!526648 () Bool)

(declare-fun e!316502 () Bool)

(assert (=> b!526648 (= e!316502 false)))

(declare-datatypes ((C!3356 0))(
  ( (C!3357 (val!1904 Int)) )
))
(declare-datatypes ((List!4954 0))(
  ( (Nil!4944) (Cons!4944 (h!10345 C!3356) (t!73564 List!4954)) )
))
(declare-datatypes ((IArray!3211 0))(
  ( (IArray!3212 (innerList!1663 List!4954)) )
))
(declare-datatypes ((List!4955 0))(
  ( (Nil!4945) (Cons!4945 (h!10346 (_ BitVec 16)) (t!73565 List!4955)) )
))
(declare-datatypes ((TokenValue!915 0))(
  ( (FloatLiteralValue!1830 (text!6850 List!4955)) (TokenValueExt!914 (__x!3674 Int)) (Broken!4575 (value!30223 List!4955)) (Object!924) (End!915) (Def!915) (Underscore!915) (Match!915) (Else!915) (Error!915) (Case!915) (If!915) (Extends!915) (Abstract!915) (Class!915) (Val!915) (DelimiterValue!1830 (del!975 List!4955)) (KeywordValue!921 (value!30224 List!4955)) (CommentValue!1830 (value!30225 List!4955)) (WhitespaceValue!1830 (value!30226 List!4955)) (IndentationValue!915 (value!30227 List!4955)) (String!6302) (Int32!915) (Broken!4576 (value!30228 List!4955)) (Boolean!916) (Unit!8802) (OperatorValue!918 (op!975 List!4955)) (IdentifierValue!1830 (value!30229 List!4955)) (IdentifierValue!1831 (value!30230 List!4955)) (WhitespaceValue!1831 (value!30231 List!4955)) (True!1830) (False!1830) (Broken!4577 (value!30232 List!4955)) (Broken!4578 (value!30233 List!4955)) (True!1831) (RightBrace!915) (RightBracket!915) (Colon!915) (Null!915) (Comma!915) (LeftBracket!915) (False!1831) (LeftBrace!915) (ImaginaryLiteralValue!915 (text!6851 List!4955)) (StringLiteralValue!2745 (value!30234 List!4955)) (EOFValue!915 (value!30235 List!4955)) (IdentValue!915 (value!30236 List!4955)) (DelimiterValue!1831 (value!30237 List!4955)) (DedentValue!915 (value!30238 List!4955)) (NewLineValue!915 (value!30239 List!4955)) (IntegerValue!2745 (value!30240 (_ BitVec 32)) (text!6852 List!4955)) (IntegerValue!2746 (value!30241 Int) (text!6853 List!4955)) (Times!915) (Or!915) (Equal!915) (Minus!915) (Broken!4579 (value!30242 List!4955)) (And!915) (Div!915) (LessEqual!915) (Mod!915) (Concat!2132) (Not!915) (Plus!915) (SpaceValue!915 (value!30243 List!4955)) (IntegerValue!2747 (value!30244 Int) (text!6854 List!4955)) (StringLiteralValue!2746 (text!6855 List!4955)) (FloatLiteralValue!1831 (text!6856 List!4955)) (BytesLiteralValue!915 (value!30245 List!4955)) (CommentValue!1831 (value!30246 List!4955)) (StringLiteralValue!2747 (value!30247 List!4955)) (ErrorTokenValue!915 (msg!976 List!4955)) )
))
(declare-datatypes ((Regex!1217 0))(
  ( (ElementMatch!1217 (c!101070 C!3356)) (Concat!2133 (regOne!2946 Regex!1217) (regTwo!2946 Regex!1217)) (EmptyExpr!1217) (Star!1217 (reg!1546 Regex!1217)) (EmptyLang!1217) (Union!1217 (regOne!2947 Regex!1217) (regTwo!2947 Regex!1217)) )
))
(declare-datatypes ((String!6303 0))(
  ( (String!6304 (value!30248 String)) )
))
(declare-datatypes ((Conc!1605 0))(
  ( (Node!1605 (left!4215 Conc!1605) (right!4545 Conc!1605) (csize!3440 Int) (cheight!1816 Int)) (Leaf!2554 (xs!4242 IArray!3211) (csize!3441 Int)) (Empty!1605) )
))
(declare-datatypes ((BalanceConc!3218 0))(
  ( (BalanceConc!3219 (c!101071 Conc!1605)) )
))
(declare-datatypes ((TokenValueInjection!1598 0))(
  ( (TokenValueInjection!1599 (toValue!1726 Int) (toChars!1585 Int)) )
))
(declare-datatypes ((Rule!1582 0))(
  ( (Rule!1583 (regex!891 Regex!1217) (tag!1153 String!6303) (isSeparator!891 Bool) (transformation!891 TokenValueInjection!1598)) )
))
(declare-datatypes ((Token!1520 0))(
  ( (Token!1521 (value!30249 TokenValue!915) (rule!1592 Rule!1582) (size!4032 Int) (originalCharacters!931 List!4954)) )
))
(declare-datatypes ((List!4956 0))(
  ( (Nil!4946) (Cons!4946 (h!10347 Token!1520) (t!73566 List!4956)) )
))
(declare-fun lt!217819 () List!4956)

(declare-datatypes ((IArray!3213 0))(
  ( (IArray!3214 (innerList!1664 List!4956)) )
))
(declare-datatypes ((Conc!1606 0))(
  ( (Node!1606 (left!4216 Conc!1606) (right!4546 Conc!1606) (csize!3442 Int) (cheight!1817 Int)) (Leaf!2555 (xs!4243 IArray!3213) (csize!3443 Int)) (Empty!1606) )
))
(declare-datatypes ((BalanceConc!3220 0))(
  ( (BalanceConc!3221 (c!101072 Conc!1606)) )
))
(declare-datatypes ((tuple2!6096 0))(
  ( (tuple2!6097 (_1!3295 BalanceConc!3220) (_2!3295 BalanceConc!3218)) )
))
(declare-fun lt!217814 () tuple2!6096)

(declare-fun list!2064 (BalanceConc!3220) List!4956)

(assert (=> b!526648 (= lt!217819 (list!2064 (_1!3295 lt!217814)))))

(declare-fun lt!217815 () List!4956)

(declare-datatypes ((List!4957 0))(
  ( (Nil!4947) (Cons!4947 (h!10348 Regex!1217) (t!73567 List!4957)) )
))
(declare-datatypes ((Context!310 0))(
  ( (Context!311 (exprs!655 List!4957)) )
))
(declare-datatypes ((tuple2!6098 0))(
  ( (tuple2!6099 (_1!3296 Context!310) (_2!3296 C!3356)) )
))
(declare-datatypes ((Hashable!557 0))(
  ( (HashableExt!556 (__x!3675 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6100 0))(
  ( (tuple2!6101 (_1!3297 tuple2!6098) (_2!3297 (InoxSet Context!310))) )
))
(declare-datatypes ((List!4958 0))(
  ( (Nil!4948) (Cons!4948 (h!10349 tuple2!6100) (t!73568 List!4958)) )
))
(declare-datatypes ((array!2251 0))(
  ( (array!2252 (arr!1026 (Array (_ BitVec 32) List!4958)) (size!4033 (_ BitVec 32))) )
))
(declare-datatypes ((array!2253 0))(
  ( (array!2254 (arr!1027 (Array (_ BitVec 32) (_ BitVec 64))) (size!4034 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1170 0))(
  ( (LongMapFixedSize!1171 (defaultEntry!941 Int) (mask!2065 (_ BitVec 32)) (extraKeys!832 (_ BitVec 32)) (zeroValue!842 List!4958) (minValue!842 List!4958) (_size!1279 (_ BitVec 32)) (_keys!879 array!2253) (_values!864 array!2251) (_vacant!646 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2281 0))(
  ( (Cell!2282 (v!16014 LongMapFixedSize!1170)) )
))
(declare-datatypes ((MutLongMap!585 0))(
  ( (LongMap!585 (underlying!1349 Cell!2281)) (MutLongMapExt!584 (__x!3676 Int)) )
))
(declare-datatypes ((Cell!2283 0))(
  ( (Cell!2284 (v!16015 MutLongMap!585)) )
))
(declare-datatypes ((MutableMap!557 0))(
  ( (MutableMapExt!556 (__x!3677 Int)) (HashMap!557 (underlying!1350 Cell!2283) (hashF!2465 Hashable!557) (_size!1280 (_ BitVec 32)) (defaultValue!708 Int)) )
))
(declare-datatypes ((CacheUp!228 0))(
  ( (CacheUp!229 (cache!944 MutableMap!557)) )
))
(declare-datatypes ((Hashable!558 0))(
  ( (HashableExt!557 (__x!3678 Int)) )
))
(declare-datatypes ((tuple3!400 0))(
  ( (tuple3!401 (_1!3298 (InoxSet Context!310)) (_2!3298 Int) (_3!247 Int)) )
))
(declare-datatypes ((tuple2!6102 0))(
  ( (tuple2!6103 (_1!3299 tuple3!400) (_2!3299 Int)) )
))
(declare-datatypes ((List!4959 0))(
  ( (Nil!4949) (Cons!4949 (h!10350 tuple2!6102) (t!73569 List!4959)) )
))
(declare-datatypes ((array!2255 0))(
  ( (array!2256 (arr!1028 (Array (_ BitVec 32) List!4959)) (size!4035 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1172 0))(
  ( (LongMapFixedSize!1173 (defaultEntry!942 Int) (mask!2066 (_ BitVec 32)) (extraKeys!833 (_ BitVec 32)) (zeroValue!843 List!4959) (minValue!843 List!4959) (_size!1281 (_ BitVec 32)) (_keys!880 array!2253) (_values!865 array!2255) (_vacant!647 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2285 0))(
  ( (Cell!2286 (v!16016 LongMapFixedSize!1172)) )
))
(declare-datatypes ((MutLongMap!586 0))(
  ( (LongMap!586 (underlying!1351 Cell!2285)) (MutLongMapExt!585 (__x!3679 Int)) )
))
(declare-datatypes ((Cell!2287 0))(
  ( (Cell!2288 (v!16017 MutLongMap!586)) )
))
(declare-datatypes ((MutableMap!558 0))(
  ( (MutableMapExt!557 (__x!3680 Int)) (HashMap!558 (underlying!1352 Cell!2287) (hashF!2466 Hashable!558) (_size!1282 (_ BitVec 32)) (defaultValue!709 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!170 0))(
  ( (CacheFurthestNullable!171 (cache!945 MutableMap!558) (totalInput!1747 BalanceConc!3218)) )
))
(declare-datatypes ((tuple3!402 0))(
  ( (tuple3!403 (_1!3300 Regex!1217) (_2!3300 Context!310) (_3!248 C!3356)) )
))
(declare-datatypes ((tuple2!6104 0))(
  ( (tuple2!6105 (_1!3301 tuple3!402) (_2!3301 (InoxSet Context!310))) )
))
(declare-datatypes ((List!4960 0))(
  ( (Nil!4950) (Cons!4950 (h!10351 tuple2!6104) (t!73570 List!4960)) )
))
(declare-datatypes ((array!2257 0))(
  ( (array!2258 (arr!1029 (Array (_ BitVec 32) List!4960)) (size!4036 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1174 0))(
  ( (LongMapFixedSize!1175 (defaultEntry!943 Int) (mask!2067 (_ BitVec 32)) (extraKeys!834 (_ BitVec 32)) (zeroValue!844 List!4960) (minValue!844 List!4960) (_size!1283 (_ BitVec 32)) (_keys!881 array!2253) (_values!866 array!2257) (_vacant!648 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2289 0))(
  ( (Cell!2290 (v!16018 LongMapFixedSize!1174)) )
))
(declare-datatypes ((MutLongMap!587 0))(
  ( (LongMap!587 (underlying!1353 Cell!2289)) (MutLongMapExt!586 (__x!3681 Int)) )
))
(declare-datatypes ((Cell!2291 0))(
  ( (Cell!2292 (v!16019 MutLongMap!587)) )
))
(declare-datatypes ((Hashable!559 0))(
  ( (HashableExt!558 (__x!3682 Int)) )
))
(declare-datatypes ((MutableMap!559 0))(
  ( (MutableMapExt!558 (__x!3683 Int)) (HashMap!559 (underlying!1354 Cell!2291) (hashF!2467 Hashable!559) (_size!1284 (_ BitVec 32)) (defaultValue!710 Int)) )
))
(declare-datatypes ((CacheDown!216 0))(
  ( (CacheDown!217 (cache!946 MutableMap!559)) )
))
(declare-datatypes ((tuple4!94 0))(
  ( (tuple4!95 (_1!3302 tuple2!6096) (_2!3302 CacheUp!228) (_3!249 CacheDown!216) (_4!47 CacheFurthestNullable!170)) )
))
(declare-fun lt!217817 () tuple4!94)

(assert (=> b!526648 (= lt!217815 (list!2064 (_1!3295 (_1!3302 lt!217817))))))

(declare-fun input!747 () BalanceConc!3218)

(declare-datatypes ((List!4961 0))(
  ( (Nil!4951) (Cons!4951 (h!10352 Rule!1582) (t!73571 List!4961)) )
))
(declare-fun rules!1345 () List!4961)

(declare-datatypes ((LexerInterface!777 0))(
  ( (LexerInterfaceExt!774 (__x!3684 Int)) (Lexer!775) )
))
(declare-fun thiss!12147 () LexerInterface!777)

(declare-fun lex!557 (LexerInterface!777 List!4961 BalanceConc!3218) tuple2!6096)

(assert (=> b!526648 (= lt!217814 (lex!557 thiss!12147 rules!1345 input!747))))

(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!170)

(declare-fun cacheDown!462 () CacheDown!216)

(declare-fun cacheUp!449 () CacheUp!228)

(declare-fun lexTailRecV3Mem!20 (LexerInterface!777 List!4961 BalanceConc!3218 BalanceConc!3218 BalanceConc!3218 BalanceConc!3220 CacheUp!228 CacheDown!216 CacheFurthestNullable!170) tuple4!94)

(assert (=> b!526648 (= lt!217817 (lexTailRecV3Mem!20 thiss!12147 rules!1345 input!747 (BalanceConc!3219 Empty!1605) input!747 (BalanceConc!3221 Empty!1606) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))

(declare-fun b!526649 () Bool)

(declare-fun e!316504 () Bool)

(declare-fun tp!166434 () Bool)

(declare-fun mapRes!2294 () Bool)

(assert (=> b!526649 (= e!316504 (and tp!166434 mapRes!2294))))

(declare-fun condMapEmpty!2294 () Bool)

(declare-fun mapDefault!2292 () List!4960)

(assert (=> b!526649 (= condMapEmpty!2294 (= (arr!1029 (_values!866 (v!16018 (underlying!1353 (v!16019 (underlying!1354 (cache!946 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4960)) mapDefault!2292)))))

(declare-fun e!316522 () Bool)

(assert (=> b!526650 (= e!316522 (and tp!166429 tp!166413))))

(declare-fun b!526651 () Bool)

(declare-fun e!316517 () Bool)

(declare-fun e!316509 () Bool)

(assert (=> b!526651 (= e!316517 e!316509)))

(declare-fun e!316516 () Bool)

(declare-fun e!316524 () Bool)

(assert (=> b!526652 (= e!316516 (and e!316524 tp!166417))))

(declare-fun tp!166428 () Bool)

(declare-fun e!316513 () Bool)

(declare-fun tp!166422 () Bool)

(declare-fun array_inv!749 (array!2253) Bool)

(declare-fun array_inv!750 (array!2255) Bool)

(assert (=> b!526653 (= e!316509 (and tp!166410 tp!166422 tp!166428 (array_inv!749 (_keys!880 (v!16016 (underlying!1351 (v!16017 (underlying!1352 (cache!945 cacheFurthestNullable!56))))))) (array_inv!750 (_values!865 (v!16016 (underlying!1351 (v!16017 (underlying!1352 (cache!945 cacheFurthestNullable!56))))))) e!316513))))

(declare-fun b!526655 () Bool)

(declare-fun res!222794 () Bool)

(assert (=> b!526655 (=> (not res!222794) (not e!316502))))

(declare-fun valid!566 (CacheDown!216) Bool)

(assert (=> b!526655 (= res!222794 (valid!566 cacheDown!462))))

(declare-fun b!526656 () Bool)

(declare-fun e!316528 () Bool)

(declare-fun lt!217813 () MutLongMap!585)

(get-info :version)

(assert (=> b!526656 (= e!316511 (and e!316528 ((_ is LongMap!585) lt!217813)))))

(assert (=> b!526656 (= lt!217813 (v!16015 (underlying!1350 (cache!944 cacheUp!449))))))

(declare-fun b!526657 () Bool)

(declare-fun res!222789 () Bool)

(assert (=> b!526657 (=> (not res!222789) (not e!316502))))

(declare-fun isEmpty!3606 (List!4961) Bool)

(assert (=> b!526657 (= res!222789 (not (isEmpty!3606 rules!1345)))))

(declare-fun mapIsEmpty!2293 () Bool)

(declare-fun mapRes!2292 () Bool)

(assert (=> mapIsEmpty!2293 mapRes!2292))

(declare-fun e!316530 () Bool)

(declare-fun tp!166425 () Bool)

(declare-fun e!316508 () Bool)

(declare-fun tp!166416 () Bool)

(declare-fun array_inv!751 (array!2251) Bool)

(assert (=> b!526658 (= e!316508 (and tp!166427 tp!166416 tp!166425 (array_inv!749 (_keys!879 (v!16014 (underlying!1349 (v!16015 (underlying!1350 (cache!944 cacheUp!449))))))) (array_inv!751 (_values!864 (v!16014 (underlying!1349 (v!16015 (underlying!1350 (cache!944 cacheUp!449))))))) e!316530))))

(declare-fun mapNonEmpty!2292 () Bool)

(declare-fun tp!166409 () Bool)

(declare-fun tp!166415 () Bool)

(assert (=> mapNonEmpty!2292 (= mapRes!2294 (and tp!166409 tp!166415))))

(declare-fun mapValue!2293 () List!4960)

(declare-fun mapKey!2292 () (_ BitVec 32))

(declare-fun mapRest!2294 () (Array (_ BitVec 32) List!4960))

(assert (=> mapNonEmpty!2292 (= (arr!1029 (_values!866 (v!16018 (underlying!1353 (v!16019 (underlying!1354 (cache!946 cacheDown!462))))))) (store mapRest!2294 mapKey!2292 mapValue!2293))))

(declare-fun b!526659 () Bool)

(declare-fun e!316531 () Bool)

(declare-fun e!316518 () Bool)

(declare-fun e!316506 () Bool)

(declare-fun inv!6203 (BalanceConc!3218) Bool)

(assert (=> b!526659 (= e!316531 (and e!316518 (inv!6203 (totalInput!1747 cacheFurthestNullable!56)) e!316506))))

(declare-fun b!526660 () Bool)

(declare-fun e!316510 () Bool)

(assert (=> b!526660 (= e!316510 e!316517)))

(declare-fun b!526661 () Bool)

(declare-fun res!222788 () Bool)

(assert (=> b!526661 (=> (not res!222788) (not e!316502))))

(declare-fun rulesInvariant!740 (LexerInterface!777 List!4961) Bool)

(assert (=> b!526661 (= res!222788 (rulesInvariant!740 thiss!12147 rules!1345))))

(declare-fun b!526662 () Bool)

(declare-fun tp!166419 () Bool)

(assert (=> b!526662 (= e!316513 (and tp!166419 mapRes!2293))))

(declare-fun condMapEmpty!2292 () Bool)

(declare-fun mapDefault!2294 () List!4959)

(assert (=> b!526662 (= condMapEmpty!2292 (= (arr!1028 (_values!865 (v!16016 (underlying!1351 (v!16017 (underlying!1352 (cache!945 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4959)) mapDefault!2294)))))

(declare-fun b!526663 () Bool)

(declare-fun e!316515 () Bool)

(declare-fun tp!166408 () Bool)

(declare-fun inv!6204 (Conc!1605) Bool)

(assert (=> b!526663 (= e!316515 (and (inv!6204 (c!101071 input!747)) tp!166408))))

(declare-fun b!526664 () Bool)

(declare-fun tp!166432 () Bool)

(assert (=> b!526664 (= e!316530 (and tp!166432 mapRes!2292))))

(declare-fun condMapEmpty!2293 () Bool)

(declare-fun mapDefault!2293 () List!4958)

(assert (=> b!526664 (= condMapEmpty!2293 (= (arr!1026 (_values!864 (v!16014 (underlying!1349 (v!16015 (underlying!1350 (cache!944 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4958)) mapDefault!2293)))))

(declare-fun mapNonEmpty!2293 () Bool)

(declare-fun tp!166420 () Bool)

(declare-fun tp!166431 () Bool)

(assert (=> mapNonEmpty!2293 (= mapRes!2293 (and tp!166420 tp!166431))))

(declare-fun mapKey!2294 () (_ BitVec 32))

(declare-fun mapRest!2292 () (Array (_ BitVec 32) List!4959))

(declare-fun mapValue!2292 () List!4959)

(assert (=> mapNonEmpty!2293 (= (arr!1028 (_values!865 (v!16016 (underlying!1351 (v!16017 (underlying!1352 (cache!945 cacheFurthestNullable!56))))))) (store mapRest!2292 mapKey!2294 mapValue!2292))))

(declare-fun b!526665 () Bool)

(declare-fun e!316526 () Bool)

(declare-fun tp!166421 () Bool)

(declare-fun inv!6201 (String!6303) Bool)

(declare-fun inv!6205 (TokenValueInjection!1598) Bool)

(assert (=> b!526665 (= e!316526 (and tp!166421 (inv!6201 (tag!1153 (h!10352 rules!1345))) (inv!6205 (transformation!891 (h!10352 rules!1345))) e!316522))))

(declare-fun b!526666 () Bool)

(declare-fun res!222792 () Bool)

(assert (=> b!526666 (=> (not res!222792) (not e!316502))))

(declare-fun valid!567 (CacheUp!228) Bool)

(assert (=> b!526666 (= res!222792 (valid!567 cacheUp!449))))

(declare-fun tp!166423 () Bool)

(declare-fun tp!166426 () Bool)

(declare-fun e!316503 () Bool)

(declare-fun array_inv!752 (array!2257) Bool)

(assert (=> b!526667 (= e!316503 (and tp!166424 tp!166423 tp!166426 (array_inv!749 (_keys!881 (v!16018 (underlying!1353 (v!16019 (underlying!1354 (cache!946 cacheDown!462))))))) (array_inv!752 (_values!866 (v!16018 (underlying!1353 (v!16019 (underlying!1354 (cache!946 cacheDown!462))))))) e!316504))))

(declare-fun b!526668 () Bool)

(declare-fun e!316525 () Bool)

(declare-fun lt!217818 () MutLongMap!586)

(assert (=> b!526668 (= e!316525 (and e!316510 ((_ is LongMap!586) lt!217818)))))

(assert (=> b!526668 (= lt!217818 (v!16017 (underlying!1352 (cache!945 cacheFurthestNullable!56))))))

(declare-fun b!526669 () Bool)

(declare-fun tp!166430 () Bool)

(assert (=> b!526669 (= e!316506 (and (inv!6204 (c!101071 (totalInput!1747 cacheFurthestNullable!56))) tp!166430))))

(declare-fun b!526670 () Bool)

(declare-fun res!222791 () Bool)

(assert (=> b!526670 (=> (not res!222791) (not e!316502))))

(assert (=> b!526670 (= res!222791 (= (totalInput!1747 cacheFurthestNullable!56) input!747))))

(declare-fun mapIsEmpty!2294 () Bool)

(assert (=> mapIsEmpty!2294 mapRes!2294))

(declare-fun b!526671 () Bool)

(declare-fun e!316505 () Bool)

(assert (=> b!526671 (= e!316505 e!316508)))

(declare-fun b!526672 () Bool)

(declare-fun lt!217816 () MutLongMap!587)

(assert (=> b!526672 (= e!316524 (and e!316501 ((_ is LongMap!587) lt!217816)))))

(assert (=> b!526672 (= lt!217816 (v!16019 (underlying!1354 (cache!946 cacheDown!462))))))

(declare-fun b!526673 () Bool)

(declare-fun e!316527 () Bool)

(declare-fun tp!166418 () Bool)

(assert (=> b!526673 (= e!316527 (and e!316526 tp!166418))))

(assert (=> b!526674 (= e!316518 (and e!316525 tp!166411))))

(declare-fun b!526654 () Bool)

(assert (=> b!526654 (= e!316514 e!316503)))

(declare-fun res!222790 () Bool)

(assert (=> start!48262 (=> (not res!222790) (not e!316502))))

(assert (=> start!48262 (= res!222790 ((_ is Lexer!775) thiss!12147))))

(assert (=> start!48262 e!316502))

(assert (=> start!48262 (and (inv!6203 input!747) e!316515)))

(declare-fun e!316523 () Bool)

(declare-fun inv!6206 (CacheDown!216) Bool)

(assert (=> start!48262 (and (inv!6206 cacheDown!462) e!316523)))

(assert (=> start!48262 true))

(declare-fun inv!6207 (CacheFurthestNullable!170) Bool)

(assert (=> start!48262 (and (inv!6207 cacheFurthestNullable!56) e!316531)))

(declare-fun e!316521 () Bool)

(declare-fun inv!6208 (CacheUp!228) Bool)

(assert (=> start!48262 (and (inv!6208 cacheUp!449) e!316521)))

(assert (=> start!48262 e!316527))

(declare-fun b!526675 () Bool)

(assert (=> b!526675 (= e!316528 e!316505)))

(declare-fun mapNonEmpty!2294 () Bool)

(declare-fun tp!166412 () Bool)

(declare-fun tp!166414 () Bool)

(assert (=> mapNonEmpty!2294 (= mapRes!2292 (and tp!166412 tp!166414))))

(declare-fun mapValue!2294 () List!4958)

(declare-fun mapKey!2293 () (_ BitVec 32))

(declare-fun mapRest!2293 () (Array (_ BitVec 32) List!4958))

(assert (=> mapNonEmpty!2294 (= (arr!1026 (_values!864 (v!16014 (underlying!1349 (v!16015 (underlying!1350 (cache!944 cacheUp!449))))))) (store mapRest!2293 mapKey!2293 mapValue!2294))))

(declare-fun b!526676 () Bool)

(declare-fun res!222793 () Bool)

(assert (=> b!526676 (=> (not res!222793) (not e!316502))))

(declare-fun valid!568 (CacheFurthestNullable!170) Bool)

(assert (=> b!526676 (= res!222793 (valid!568 cacheFurthestNullable!56))))

(declare-fun b!526677 () Bool)

(assert (=> b!526677 (= e!316521 e!316529)))

(declare-fun b!526678 () Bool)

(assert (=> b!526678 (= e!316523 e!316516)))

(assert (= (and start!48262 res!222790) b!526657))

(assert (= (and b!526657 res!222789) b!526661))

(assert (= (and b!526661 res!222788) b!526666))

(assert (= (and b!526666 res!222792) b!526655))

(assert (= (and b!526655 res!222794) b!526676))

(assert (= (and b!526676 res!222793) b!526670))

(assert (= (and b!526670 res!222791) b!526648))

(assert (= start!48262 b!526663))

(assert (= (and b!526649 condMapEmpty!2294) mapIsEmpty!2294))

(assert (= (and b!526649 (not condMapEmpty!2294)) mapNonEmpty!2292))

(assert (= b!526667 b!526649))

(assert (= b!526654 b!526667))

(assert (= b!526647 b!526654))

(assert (= (and b!526672 ((_ is LongMap!587) (v!16019 (underlying!1354 (cache!946 cacheDown!462))))) b!526647))

(assert (= b!526652 b!526672))

(assert (= (and b!526678 ((_ is HashMap!559) (cache!946 cacheDown!462))) b!526652))

(assert (= start!48262 b!526678))

(assert (= (and b!526662 condMapEmpty!2292) mapIsEmpty!2292))

(assert (= (and b!526662 (not condMapEmpty!2292)) mapNonEmpty!2293))

(assert (= b!526653 b!526662))

(assert (= b!526651 b!526653))

(assert (= b!526660 b!526651))

(assert (= (and b!526668 ((_ is LongMap!586) (v!16017 (underlying!1352 (cache!945 cacheFurthestNullable!56))))) b!526660))

(assert (= b!526674 b!526668))

(assert (= (and b!526659 ((_ is HashMap!558) (cache!945 cacheFurthestNullable!56))) b!526674))

(assert (= b!526659 b!526669))

(assert (= start!48262 b!526659))

(assert (= (and b!526664 condMapEmpty!2293) mapIsEmpty!2293))

(assert (= (and b!526664 (not condMapEmpty!2293)) mapNonEmpty!2294))

(assert (= b!526658 b!526664))

(assert (= b!526671 b!526658))

(assert (= b!526675 b!526671))

(assert (= (and b!526656 ((_ is LongMap!585) (v!16015 (underlying!1350 (cache!944 cacheUp!449))))) b!526675))

(assert (= b!526646 b!526656))

(assert (= (and b!526677 ((_ is HashMap!557) (cache!944 cacheUp!449))) b!526646))

(assert (= start!48262 b!526677))

(assert (= b!526665 b!526650))

(assert (= b!526673 b!526665))

(assert (= (and start!48262 ((_ is Cons!4951) rules!1345)) b!526673))

(declare-fun m!772495 () Bool)

(assert (=> b!526663 m!772495))

(declare-fun m!772497 () Bool)

(assert (=> b!526653 m!772497))

(declare-fun m!772499 () Bool)

(assert (=> b!526653 m!772499))

(declare-fun m!772501 () Bool)

(assert (=> mapNonEmpty!2292 m!772501))

(declare-fun m!772503 () Bool)

(assert (=> b!526659 m!772503))

(declare-fun m!772505 () Bool)

(assert (=> b!526667 m!772505))

(declare-fun m!772507 () Bool)

(assert (=> b!526667 m!772507))

(declare-fun m!772509 () Bool)

(assert (=> b!526665 m!772509))

(declare-fun m!772511 () Bool)

(assert (=> b!526665 m!772511))

(declare-fun m!772513 () Bool)

(assert (=> mapNonEmpty!2293 m!772513))

(declare-fun m!772515 () Bool)

(assert (=> b!526655 m!772515))

(declare-fun m!772517 () Bool)

(assert (=> b!526676 m!772517))

(declare-fun m!772519 () Bool)

(assert (=> b!526669 m!772519))

(declare-fun m!772521 () Bool)

(assert (=> start!48262 m!772521))

(declare-fun m!772523 () Bool)

(assert (=> start!48262 m!772523))

(declare-fun m!772525 () Bool)

(assert (=> start!48262 m!772525))

(declare-fun m!772527 () Bool)

(assert (=> start!48262 m!772527))

(declare-fun m!772529 () Bool)

(assert (=> b!526666 m!772529))

(declare-fun m!772531 () Bool)

(assert (=> mapNonEmpty!2294 m!772531))

(declare-fun m!772533 () Bool)

(assert (=> b!526648 m!772533))

(declare-fun m!772535 () Bool)

(assert (=> b!526648 m!772535))

(declare-fun m!772537 () Bool)

(assert (=> b!526648 m!772537))

(declare-fun m!772539 () Bool)

(assert (=> b!526648 m!772539))

(declare-fun m!772541 () Bool)

(assert (=> b!526657 m!772541))

(declare-fun m!772543 () Bool)

(assert (=> b!526658 m!772543))

(declare-fun m!772545 () Bool)

(assert (=> b!526658 m!772545))

(declare-fun m!772547 () Bool)

(assert (=> b!526661 m!772547))

(check-sat (not mapNonEmpty!2294) (not b!526665) (not mapNonEmpty!2293) (not b!526655) b_and!51467 (not b_next!13987) (not b!526659) (not b!526649) (not b!526669) (not b!526673) b_and!51457 (not b_next!13983) (not b!526657) (not start!48262) (not b!526663) b_and!51469 (not b!526653) b_and!51465 (not b!526662) b_and!51459 (not b!526648) (not b_next!13985) b_and!51461 (not b_next!13979) (not b!526661) (not b_next!13977) (not b!526664) (not b_next!13989) b_and!51455 (not mapNonEmpty!2292) (not b!526658) (not b_next!13991) (not b_next!13981) (not b!526676) (not b!526667) b_and!51463 (not b!526666))
(check-sat (not b_next!13983) b_and!51469 b_and!51465 b_and!51459 (not b_next!13979) b_and!51467 (not b_next!13977) (not b_next!13987) b_and!51463 b_and!51457 (not b_next!13985) b_and!51461 (not b_next!13989) b_and!51455 (not b_next!13991) (not b_next!13981))
