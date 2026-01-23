; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143038 () Bool)

(assert start!143038)

(declare-fun b!1539519 () Bool)

(declare-fun b_free!40183 () Bool)

(declare-fun b_next!40887 () Bool)

(assert (=> b!1539519 (= b_free!40183 (not b_next!40887))))

(declare-fun tp!445636 () Bool)

(declare-fun b_and!107061 () Bool)

(assert (=> b!1539519 (= tp!445636 b_and!107061)))

(declare-fun b!1539539 () Bool)

(declare-fun b_free!40185 () Bool)

(declare-fun b_next!40889 () Bool)

(assert (=> b!1539539 (= b_free!40185 (not b_next!40889))))

(declare-fun tp!445621 () Bool)

(declare-fun b_and!107063 () Bool)

(assert (=> b!1539539 (= tp!445621 b_and!107063)))

(declare-fun b_free!40187 () Bool)

(declare-fun b_next!40891 () Bool)

(assert (=> b!1539539 (= b_free!40187 (not b_next!40891))))

(declare-fun tp!445638 () Bool)

(declare-fun b_and!107065 () Bool)

(assert (=> b!1539539 (= tp!445638 b_and!107065)))

(declare-fun b!1539512 () Bool)

(declare-fun b_free!40189 () Bool)

(declare-fun b_next!40893 () Bool)

(assert (=> b!1539512 (= b_free!40189 (not b_next!40893))))

(declare-fun tp!445617 () Bool)

(declare-fun b_and!107067 () Bool)

(assert (=> b!1539512 (= tp!445617 b_and!107067)))

(declare-fun b!1539541 () Bool)

(declare-fun b_free!40191 () Bool)

(declare-fun b_next!40895 () Bool)

(assert (=> b!1539541 (= b_free!40191 (not b_next!40895))))

(declare-fun tp!445625 () Bool)

(declare-fun b_and!107069 () Bool)

(assert (=> b!1539541 (= tp!445625 b_and!107069)))

(declare-fun b!1539536 () Bool)

(declare-fun b_free!40193 () Bool)

(declare-fun b_next!40897 () Bool)

(assert (=> b!1539536 (= b_free!40193 (not b_next!40897))))

(declare-fun tp!445626 () Bool)

(declare-fun b_and!107071 () Bool)

(assert (=> b!1539536 (= tp!445626 b_and!107071)))

(declare-fun b!1539533 () Bool)

(declare-fun b_free!40195 () Bool)

(declare-fun b_next!40899 () Bool)

(assert (=> b!1539533 (= b_free!40195 (not b_next!40899))))

(declare-fun tp!445637 () Bool)

(declare-fun b_and!107073 () Bool)

(assert (=> b!1539533 (= tp!445637 b_and!107073)))

(declare-fun b!1539514 () Bool)

(declare-fun b_free!40197 () Bool)

(declare-fun b_next!40901 () Bool)

(assert (=> b!1539514 (= b_free!40197 (not b_next!40901))))

(declare-fun tp!445623 () Bool)

(declare-fun b_and!107075 () Bool)

(assert (=> b!1539514 (= tp!445623 b_and!107075)))

(declare-fun b!1539504 () Bool)

(declare-fun res!689666 () Bool)

(declare-fun e!985328 () Bool)

(assert (=> b!1539504 (=> (not res!689666) (not e!985328))))

(declare-datatypes ((C!8592 0))(
  ( (C!8593 (val!4868 Int)) )
))
(declare-datatypes ((Regex!4207 0))(
  ( (ElementMatch!4207 (c!251663 C!8592)) (Concat!7180 (regOne!8926 Regex!4207) (regTwo!8926 Regex!4207)) (EmptyExpr!4207) (Star!4207 (reg!4536 Regex!4207)) (EmptyLang!4207) (Union!4207 (regOne!8927 Regex!4207) (regTwo!8927 Regex!4207)) )
))
(declare-datatypes ((List!16479 0))(
  ( (Nil!16411) (Cons!16411 (h!21812 Regex!4207) (t!140685 List!16479)) )
))
(declare-datatypes ((Context!1450 0))(
  ( (Context!1451 (exprs!1225 List!16479)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1540 0))(
  ( (tuple3!1541 (_1!8906 (InoxSet Context!1450)) (_2!8906 Int) (_3!1159 Int)) )
))
(declare-datatypes ((tuple2!15494 0))(
  ( (tuple2!15495 (_1!8907 tuple3!1540) (_2!8907 Int)) )
))
(declare-datatypes ((List!16480 0))(
  ( (Nil!16412) (Cons!16412 (h!21813 tuple2!15494) (t!140686 List!16480)) )
))
(declare-datatypes ((List!16481 0))(
  ( (Nil!16413) (Cons!16413 (h!21814 C!8592) (t!140687 List!16481)) )
))
(declare-datatypes ((IArray!11005 0))(
  ( (IArray!11006 (innerList!5560 List!16481)) )
))
(declare-datatypes ((array!5604 0))(
  ( (array!5605 (arr!2493 (Array (_ BitVec 32) (_ BitVec 64))) (size!13260 (_ BitVec 32))) )
))
(declare-datatypes ((array!5606 0))(
  ( (array!5607 (arr!2494 (Array (_ BitVec 32) List!16480)) (size!13261 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3222 0))(
  ( (LongMapFixedSize!3223 (defaultEntry!1971 Int) (mask!4803 (_ BitVec 32)) (extraKeys!1858 (_ BitVec 32)) (zeroValue!1868 List!16480) (minValue!1868 List!16480) (_size!3303 (_ BitVec 32)) (_keys!1905 array!5604) (_values!1890 array!5606) (_vacant!1672 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1555 0))(
  ( (HashableExt!1554 (__x!10510 Int)) )
))
(declare-datatypes ((Cell!6329 0))(
  ( (Cell!6330 (v!23223 LongMapFixedSize!3222)) )
))
(declare-datatypes ((MutLongMap!1611 0))(
  ( (LongMap!1611 (underlying!3431 Cell!6329)) (MutLongMapExt!1610 (__x!10511 Int)) )
))
(declare-datatypes ((Cell!6331 0))(
  ( (Cell!6332 (v!23224 MutLongMap!1611)) )
))
(declare-datatypes ((MutableMap!1555 0))(
  ( (MutableMapExt!1554 (__x!10512 Int)) (HashMap!1555 (underlying!3432 Cell!6331) (hashF!3474 Hashable!1555) (_size!3304 (_ BitVec 32)) (defaultValue!1715 Int)) )
))
(declare-datatypes ((Conc!5500 0))(
  ( (Node!5500 (left!13472 Conc!5500) (right!13802 Conc!5500) (csize!11230 Int) (cheight!5711 Int)) (Leaf!8149 (xs!8300 IArray!11005) (csize!11231 Int)) (Empty!5500) )
))
(declare-datatypes ((BalanceConc!10942 0))(
  ( (BalanceConc!10943 (c!251664 Conc!5500)) )
))
(declare-datatypes ((CacheFurthestNullable!362 0))(
  ( (CacheFurthestNullable!363 (cache!1936 MutableMap!1555) (totalInput!2373 BalanceConc!10942)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!362)

(declare-fun valid!1304 (CacheFurthestNullable!362) Bool)

(assert (=> b!1539504 (= res!689666 (valid!1304 cacheFurthestNullable!81))))

(declare-fun b!1539505 () Bool)

(declare-fun e!985305 () Bool)

(declare-fun e!985326 () Bool)

(declare-fun tp!445630 () Bool)

(assert (=> b!1539505 (= e!985305 (and e!985326 tp!445630))))

(declare-fun b!1539507 () Bool)

(declare-fun e!985332 () Bool)

(assert (=> b!1539507 (= e!985332 e!985328)))

(declare-fun res!689660 () Bool)

(assert (=> b!1539507 (=> (not res!689660) (not e!985328))))

(declare-fun lt!533948 () List!16481)

(declare-fun totalInput!496 () BalanceConc!10942)

(declare-fun isSuffix!331 (List!16481 List!16481) Bool)

(declare-fun list!6427 (BalanceConc!10942) List!16481)

(assert (=> b!1539507 (= res!689660 (isSuffix!331 lt!533948 (list!6427 totalInput!496)))))

(declare-fun input!1460 () BalanceConc!10942)

(assert (=> b!1539507 (= lt!533948 (list!6427 input!1460))))

(declare-fun b!1539508 () Bool)

(declare-fun res!689661 () Bool)

(assert (=> b!1539508 (=> (not res!689661) (not e!985328))))

(assert (=> b!1539508 (= res!689661 (= (totalInput!2373 cacheFurthestNullable!81) totalInput!496))))

(declare-fun e!985311 () Bool)

(declare-fun tp!445643 () Bool)

(declare-fun b!1539509 () Bool)

(declare-datatypes ((List!16482 0))(
  ( (Nil!16414) (Cons!16414 (h!21815 (_ BitVec 16)) (t!140688 List!16482)) )
))
(declare-datatypes ((TokenValue!2973 0))(
  ( (FloatLiteralValue!5946 (text!21256 List!16482)) (TokenValueExt!2972 (__x!10513 Int)) (Broken!14865 (value!91802 List!16482)) (Object!3040) (End!2973) (Def!2973) (Underscore!2973) (Match!2973) (Else!2973) (Error!2973) (Case!2973) (If!2973) (Extends!2973) (Abstract!2973) (Class!2973) (Val!2973) (DelimiterValue!5946 (del!3033 List!16482)) (KeywordValue!2979 (value!91803 List!16482)) (CommentValue!5946 (value!91804 List!16482)) (WhitespaceValue!5946 (value!91805 List!16482)) (IndentationValue!2973 (value!91806 List!16482)) (String!19144) (Int32!2973) (Broken!14866 (value!91807 List!16482)) (Boolean!2974) (Unit!25873) (OperatorValue!2976 (op!3033 List!16482)) (IdentifierValue!5946 (value!91808 List!16482)) (IdentifierValue!5947 (value!91809 List!16482)) (WhitespaceValue!5947 (value!91810 List!16482)) (True!5946) (False!5946) (Broken!14867 (value!91811 List!16482)) (Broken!14868 (value!91812 List!16482)) (True!5947) (RightBrace!2973) (RightBracket!2973) (Colon!2973) (Null!2973) (Comma!2973) (LeftBracket!2973) (False!5947) (LeftBrace!2973) (ImaginaryLiteralValue!2973 (text!21257 List!16482)) (StringLiteralValue!8919 (value!91813 List!16482)) (EOFValue!2973 (value!91814 List!16482)) (IdentValue!2973 (value!91815 List!16482)) (DelimiterValue!5947 (value!91816 List!16482)) (DedentValue!2973 (value!91817 List!16482)) (NewLineValue!2973 (value!91818 List!16482)) (IntegerValue!8919 (value!91819 (_ BitVec 32)) (text!21258 List!16482)) (IntegerValue!8920 (value!91820 Int) (text!21259 List!16482)) (Times!2973) (Or!2973) (Equal!2973) (Minus!2973) (Broken!14869 (value!91821 List!16482)) (And!2973) (Div!2973) (LessEqual!2973) (Mod!2973) (Concat!7181) (Not!2973) (Plus!2973) (SpaceValue!2973 (value!91822 List!16482)) (IntegerValue!8921 (value!91823 Int) (text!21260 List!16482)) (StringLiteralValue!8920 (text!21261 List!16482)) (FloatLiteralValue!5947 (text!21262 List!16482)) (BytesLiteralValue!2973 (value!91824 List!16482)) (CommentValue!5947 (value!91825 List!16482)) (StringLiteralValue!8921 (value!91826 List!16482)) (ErrorTokenValue!2973 (msg!3034 List!16482)) )
))
(declare-datatypes ((String!19145 0))(
  ( (String!19146 (value!91827 String)) )
))
(declare-datatypes ((TokenValueInjection!5606 0))(
  ( (TokenValueInjection!5607 (toValue!4244 Int) (toChars!4103 Int)) )
))
(declare-datatypes ((Rule!5566 0))(
  ( (Rule!5567 (regex!2883 Regex!4207) (tag!3147 String!19145) (isSeparator!2883 Bool) (transformation!2883 TokenValueInjection!5606)) )
))
(declare-datatypes ((List!16483 0))(
  ( (Nil!16415) (Cons!16415 (h!21816 Rule!5566) (t!140689 List!16483)) )
))
(declare-fun rulesArg!359 () List!16483)

(declare-fun inv!21669 (String!19145) Bool)

(declare-fun inv!21672 (TokenValueInjection!5606) Bool)

(assert (=> b!1539509 (= e!985326 (and tp!445643 (inv!21669 (tag!3147 (h!21816 rulesArg!359))) (inv!21672 (transformation!2883 (h!21816 rulesArg!359))) e!985311))))

(declare-fun b!1539510 () Bool)

(declare-fun e!985325 () Bool)

(declare-fun e!985310 () Bool)

(declare-datatypes ((tuple2!15496 0))(
  ( (tuple2!15497 (_1!8908 Context!1450) (_2!8908 C!8592)) )
))
(declare-datatypes ((tuple2!15498 0))(
  ( (tuple2!15499 (_1!8909 tuple2!15496) (_2!8909 (InoxSet Context!1450))) )
))
(declare-datatypes ((List!16484 0))(
  ( (Nil!16416) (Cons!16416 (h!21817 tuple2!15498) (t!140690 List!16484)) )
))
(declare-datatypes ((array!5608 0))(
  ( (array!5609 (arr!2495 (Array (_ BitVec 32) List!16484)) (size!13262 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3224 0))(
  ( (LongMapFixedSize!3225 (defaultEntry!1972 Int) (mask!4804 (_ BitVec 32)) (extraKeys!1859 (_ BitVec 32)) (zeroValue!1869 List!16484) (minValue!1869 List!16484) (_size!3305 (_ BitVec 32)) (_keys!1906 array!5604) (_values!1891 array!5608) (_vacant!1673 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6333 0))(
  ( (Cell!6334 (v!23225 LongMapFixedSize!3224)) )
))
(declare-datatypes ((MutLongMap!1612 0))(
  ( (LongMap!1612 (underlying!3433 Cell!6333)) (MutLongMapExt!1611 (__x!10514 Int)) )
))
(declare-fun lt!533945 () MutLongMap!1612)

(get-info :version)

(assert (=> b!1539510 (= e!985325 (and e!985310 ((_ is LongMap!1612) lt!533945)))))

(declare-datatypes ((Cell!6335 0))(
  ( (Cell!6336 (v!23226 MutLongMap!1612)) )
))
(declare-datatypes ((Hashable!1556 0))(
  ( (HashableExt!1555 (__x!10515 Int)) )
))
(declare-datatypes ((MutableMap!1556 0))(
  ( (MutableMapExt!1555 (__x!10516 Int)) (HashMap!1556 (underlying!3434 Cell!6335) (hashF!3475 Hashable!1556) (_size!3306 (_ BitVec 32)) (defaultValue!1716 Int)) )
))
(declare-datatypes ((CacheUp!934 0))(
  ( (CacheUp!935 (cache!1937 MutableMap!1556)) )
))
(declare-fun cacheUp!695 () CacheUp!934)

(assert (=> b!1539510 (= lt!533945 (v!23226 (underlying!3434 (cache!1937 cacheUp!695))))))

(declare-fun b!1539511 () Bool)

(declare-fun res!689665 () Bool)

(assert (=> b!1539511 (=> (not res!689665) (not e!985328))))

(declare-datatypes ((tuple3!1542 0))(
  ( (tuple3!1543 (_1!8910 Regex!4207) (_2!8910 Context!1450) (_3!1160 C!8592)) )
))
(declare-datatypes ((tuple2!15500 0))(
  ( (tuple2!15501 (_1!8911 tuple3!1542) (_2!8911 (InoxSet Context!1450))) )
))
(declare-datatypes ((List!16485 0))(
  ( (Nil!16417) (Cons!16417 (h!21818 tuple2!15500) (t!140691 List!16485)) )
))
(declare-datatypes ((array!5610 0))(
  ( (array!5611 (arr!2496 (Array (_ BitVec 32) List!16485)) (size!13263 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3226 0))(
  ( (LongMapFixedSize!3227 (defaultEntry!1973 Int) (mask!4805 (_ BitVec 32)) (extraKeys!1860 (_ BitVec 32)) (zeroValue!1870 List!16485) (minValue!1870 List!16485) (_size!3307 (_ BitVec 32)) (_keys!1907 array!5604) (_values!1892 array!5610) (_vacant!1674 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6337 0))(
  ( (Cell!6338 (v!23227 LongMapFixedSize!3226)) )
))
(declare-datatypes ((MutLongMap!1613 0))(
  ( (LongMap!1613 (underlying!3435 Cell!6337)) (MutLongMapExt!1612 (__x!10517 Int)) )
))
(declare-datatypes ((Cell!6339 0))(
  ( (Cell!6340 (v!23228 MutLongMap!1613)) )
))
(declare-datatypes ((Hashable!1557 0))(
  ( (HashableExt!1556 (__x!10518 Int)) )
))
(declare-datatypes ((MutableMap!1557 0))(
  ( (MutableMapExt!1556 (__x!10519 Int)) (HashMap!1557 (underlying!3436 Cell!6339) (hashF!3476 Hashable!1557) (_size!3308 (_ BitVec 32)) (defaultValue!1717 Int)) )
))
(declare-datatypes ((CacheDown!942 0))(
  ( (CacheDown!943 (cache!1938 MutableMap!1557)) )
))
(declare-fun cacheDown!708 () CacheDown!942)

(declare-fun valid!1305 (CacheDown!942) Bool)

(assert (=> b!1539511 (= res!689665 (valid!1305 cacheDown!708))))

(declare-fun tp!445616 () Bool)

(declare-fun tp!445635 () Bool)

(declare-fun e!985314 () Bool)

(declare-fun e!985312 () Bool)

(declare-fun array_inv!1793 (array!5604) Bool)

(declare-fun array_inv!1794 (array!5608) Bool)

(assert (=> b!1539512 (= e!985314 (and tp!445617 tp!445616 tp!445635 (array_inv!1793 (_keys!1906 (v!23225 (underlying!3433 (v!23226 (underlying!3434 (cache!1937 cacheUp!695))))))) (array_inv!1794 (_values!1891 (v!23225 (underlying!3433 (v!23226 (underlying!3434 (cache!1937 cacheUp!695))))))) e!985312))))

(declare-fun mapNonEmpty!7590 () Bool)

(declare-fun mapRes!7591 () Bool)

(declare-fun tp!445620 () Bool)

(declare-fun tp!445622 () Bool)

(assert (=> mapNonEmpty!7590 (= mapRes!7591 (and tp!445620 tp!445622))))

(declare-fun mapRest!7590 () (Array (_ BitVec 32) List!16484))

(declare-fun mapValue!7592 () List!16484)

(declare-fun mapKey!7592 () (_ BitVec 32))

(assert (=> mapNonEmpty!7590 (= (arr!2495 (_values!1891 (v!23225 (underlying!3433 (v!23226 (underlying!3434 (cache!1937 cacheUp!695))))))) (store mapRest!7590 mapKey!7592 mapValue!7592))))

(declare-fun b!1539513 () Bool)

(declare-fun e!985321 () Bool)

(declare-fun e!985319 () Bool)

(assert (=> b!1539513 (= e!985321 e!985319)))

(declare-fun b!1539506 () Bool)

(declare-fun e!985316 () Bool)

(declare-fun e!985320 () Bool)

(declare-fun lt!533946 () MutLongMap!1613)

(assert (=> b!1539506 (= e!985316 (and e!985320 ((_ is LongMap!1613) lt!533946)))))

(assert (=> b!1539506 (= lt!533946 (v!23228 (underlying!3436 (cache!1938 cacheDown!708))))))

(declare-fun res!689659 () Bool)

(assert (=> start!143038 (=> (not res!689659) (not e!985332))))

(declare-datatypes ((LexerInterface!2533 0))(
  ( (LexerInterfaceExt!2530 (__x!10520 Int)) (Lexer!2531) )
))
(declare-fun thiss!15733 () LexerInterface!2533)

(assert (=> start!143038 (= res!689659 ((_ is Lexer!2531) thiss!15733))))

(assert (=> start!143038 e!985332))

(declare-fun e!985315 () Bool)

(declare-fun inv!21673 (CacheUp!934) Bool)

(assert (=> start!143038 (and (inv!21673 cacheUp!695) e!985315)))

(declare-fun e!985324 () Bool)

(declare-fun inv!21674 (BalanceConc!10942) Bool)

(assert (=> start!143038 (and (inv!21674 input!1460) e!985324)))

(declare-fun inv!21675 (CacheDown!942) Bool)

(assert (=> start!143038 (and (inv!21675 cacheDown!708) e!985321)))

(assert (=> start!143038 true))

(declare-fun e!985334 () Bool)

(assert (=> start!143038 (and (inv!21674 totalInput!496) e!985334)))

(assert (=> start!143038 e!985305))

(declare-fun e!985303 () Bool)

(declare-fun inv!21676 (CacheFurthestNullable!362) Bool)

(assert (=> start!143038 (and (inv!21676 cacheFurthestNullable!81) e!985303)))

(declare-fun e!985330 () Bool)

(assert (=> b!1539514 (= e!985330 (and e!985325 tp!445623))))

(declare-datatypes ((Token!5406 0))(
  ( (Token!5407 (value!91828 TokenValue!2973) (rule!4687 Rule!5566) (size!13264 Int) (originalCharacters!3734 List!16481)) )
))
(declare-datatypes ((tuple2!15502 0))(
  ( (tuple2!15503 (_1!8912 Token!5406) (_2!8912 BalanceConc!10942)) )
))
(declare-datatypes ((Option!2972 0))(
  ( (None!2971) (Some!2971 (v!23229 tuple2!15502)) )
))
(declare-datatypes ((tuple4!778 0))(
  ( (tuple4!779 (_1!8913 Option!2972) (_2!8913 CacheUp!934) (_3!1161 CacheDown!942) (_4!389 CacheFurthestNullable!362)) )
))
(declare-fun call!101576 () tuple4!778)

(declare-fun bm!101571 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!30 (LexerInterface!2533 Rule!5566 BalanceConc!10942 BalanceConc!10942 CacheUp!934 CacheDown!942 CacheFurthestNullable!362) tuple4!778)

(assert (=> bm!101571 (= call!101576 (maxPrefixOneRuleZipperSequenceV3Mem!30 thiss!15733 (h!21816 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun mapIsEmpty!7590 () Bool)

(declare-fun mapRes!7590 () Bool)

(assert (=> mapIsEmpty!7590 mapRes!7590))

(declare-fun b!1539515 () Bool)

(declare-fun res!689662 () Bool)

(assert (=> b!1539515 (=> (not res!689662) (not e!985332))))

(declare-fun rulesValidInductive!884 (LexerInterface!2533 List!16483) Bool)

(assert (=> b!1539515 (= res!689662 (rulesValidInductive!884 thiss!15733 rulesArg!359))))

(declare-fun mapIsEmpty!7591 () Bool)

(declare-fun mapRes!7592 () Bool)

(assert (=> mapIsEmpty!7591 mapRes!7592))

(declare-fun b!1539516 () Bool)

(declare-fun e!985322 () Bool)

(declare-fun e!985323 () Bool)

(assert (=> b!1539516 (= e!985322 e!985323)))

(declare-fun mapIsEmpty!7592 () Bool)

(assert (=> mapIsEmpty!7592 mapRes!7591))

(declare-fun b!1539517 () Bool)

(declare-fun e!985308 () Bool)

(assert (=> b!1539517 (= e!985328 (not e!985308))))

(declare-fun res!689667 () Bool)

(assert (=> b!1539517 (=> res!689667 e!985308)))

(declare-fun lt!533950 () Bool)

(declare-fun lt!533947 () Bool)

(assert (=> b!1539517 (= res!689667 (or (not (= lt!533950 lt!533947)) (not lt!533950)))))

(declare-datatypes ((tuple2!15504 0))(
  ( (tuple2!15505 (_1!8914 Token!5406) (_2!8914 List!16481)) )
))
(declare-datatypes ((Option!2973 0))(
  ( (None!2972) (Some!2972 (v!23230 tuple2!15504)) )
))
(declare-fun lt!533940 () Option!2973)

(declare-fun isDefined!2383 (Option!2973) Bool)

(assert (=> b!1539517 (= lt!533947 (isDefined!2383 lt!533940))))

(declare-datatypes ((tuple4!780 0))(
  ( (tuple4!781 (_1!8915 Option!2972) (_2!8915 CacheUp!934) (_3!1162 CacheFurthestNullable!362) (_4!390 CacheDown!942)) )
))
(declare-fun lt!533949 () tuple4!780)

(declare-fun isDefined!2384 (Option!2972) Bool)

(assert (=> b!1539517 (= lt!533950 (isDefined!2384 (_1!8915 lt!533949)))))

(declare-fun maxPrefixZipper!271 (LexerInterface!2533 List!16483 List!16481) Option!2973)

(assert (=> b!1539517 (= lt!533940 (maxPrefixZipper!271 thiss!15733 rulesArg!359 lt!533948))))

(declare-fun e!985331 () tuple4!780)

(assert (=> b!1539517 (= lt!533949 e!985331)))

(declare-fun c!251662 () Bool)

(assert (=> b!1539517 (= c!251662 (and ((_ is Cons!16415) rulesArg!359) ((_ is Nil!16415) (t!140689 rulesArg!359))))))

(declare-fun isPrefix!1245 (List!16481 List!16481) Bool)

(assert (=> b!1539517 (isPrefix!1245 lt!533948 lt!533948)))

(declare-datatypes ((Unit!25874 0))(
  ( (Unit!25875) )
))
(declare-fun lt!533942 () Unit!25874)

(declare-fun lemmaIsPrefixRefl!875 (List!16481 List!16481) Unit!25874)

(assert (=> b!1539517 (= lt!533942 (lemmaIsPrefixRefl!875 lt!533948 lt!533948))))

(declare-fun b!1539518 () Bool)

(declare-datatypes ((tuple2!15506 0))(
  ( (tuple2!15507 (_1!8916 Option!2972) (_2!8916 Option!2972)) )
))
(declare-fun lt!533944 () tuple2!15506)

(declare-fun lt!533941 () tuple4!778)

(assert (=> b!1539518 (= e!985331 (tuple4!781 (ite (and ((_ is None!2971) (_1!8916 lt!533944)) ((_ is None!2971) (_2!8916 lt!533944))) None!2971 (ite ((_ is None!2971) (_2!8916 lt!533944)) (_1!8916 lt!533944) (ite ((_ is None!2971) (_1!8916 lt!533944)) (_2!8916 lt!533944) (ite (>= (size!13264 (_1!8912 (v!23229 (_1!8916 lt!533944)))) (size!13264 (_1!8912 (v!23229 (_2!8916 lt!533944))))) (_1!8916 lt!533944) (_2!8916 lt!533944))))) (_2!8913 lt!533941) (_4!389 lt!533941) (_3!1161 lt!533941)))))

(declare-fun lt!533943 () tuple4!778)

(assert (=> b!1539518 (= lt!533943 call!101576)))

(declare-fun maxPrefixZipperSequenceV3Mem!41 (LexerInterface!2533 List!16483 BalanceConc!10942 BalanceConc!10942 CacheUp!934 CacheDown!942 CacheFurthestNullable!362) tuple4!778)

(assert (=> b!1539518 (= lt!533941 (maxPrefixZipperSequenceV3Mem!41 thiss!15733 (t!140689 rulesArg!359) input!1460 totalInput!496 (_2!8913 lt!533943) (_3!1161 lt!533943) (_4!389 lt!533943)))))

(assert (=> b!1539518 (= lt!533944 (tuple2!15507 (_1!8913 lt!533943) (_1!8913 lt!533941)))))

(declare-fun tp!445634 () Bool)

(declare-fun tp!445627 () Bool)

(declare-fun e!985309 () Bool)

(declare-fun e!985329 () Bool)

(declare-fun array_inv!1795 (array!5606) Bool)

(assert (=> b!1539519 (= e!985309 (and tp!445636 tp!445627 tp!445634 (array_inv!1793 (_keys!1905 (v!23223 (underlying!3431 (v!23224 (underlying!3432 (cache!1936 cacheFurthestNullable!81))))))) (array_inv!1795 (_values!1890 (v!23223 (underlying!3431 (v!23224 (underlying!3432 (cache!1936 cacheFurthestNullable!81))))))) e!985329))))

(declare-fun b!1539520 () Bool)

(declare-fun e!985306 () Bool)

(declare-fun tp!445632 () Bool)

(assert (=> b!1539520 (= e!985306 (and tp!445632 mapRes!7590))))

(declare-fun condMapEmpty!7592 () Bool)

(declare-fun mapDefault!7591 () List!16485)

(assert (=> b!1539520 (= condMapEmpty!7592 (= (arr!2496 (_values!1892 (v!23227 (underlying!3435 (v!23228 (underlying!3436 (cache!1938 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16485)) mapDefault!7591)))))

(declare-fun mapNonEmpty!7591 () Bool)

(declare-fun tp!445641 () Bool)

(declare-fun tp!445642 () Bool)

(assert (=> mapNonEmpty!7591 (= mapRes!7590 (and tp!445641 tp!445642))))

(declare-fun mapRest!7592 () (Array (_ BitVec 32) List!16485))

(declare-fun mapValue!7590 () List!16485)

(declare-fun mapKey!7590 () (_ BitVec 32))

(assert (=> mapNonEmpty!7591 (= (arr!2496 (_values!1892 (v!23227 (underlying!3435 (v!23228 (underlying!3436 (cache!1938 cacheDown!708))))))) (store mapRest!7592 mapKey!7590 mapValue!7590))))

(declare-fun b!1539521 () Bool)

(declare-fun tp!445629 () Bool)

(assert (=> b!1539521 (= e!985329 (and tp!445629 mapRes!7592))))

(declare-fun condMapEmpty!7590 () Bool)

(declare-fun mapDefault!7590 () List!16480)

(assert (=> b!1539521 (= condMapEmpty!7590 (= (arr!2494 (_values!1890 (v!23223 (underlying!3431 (v!23224 (underlying!3432 (cache!1936 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16480)) mapDefault!7590)))))

(declare-fun b!1539522 () Bool)

(declare-fun e!985327 () Bool)

(declare-fun lt!533952 () MutLongMap!1611)

(assert (=> b!1539522 (= e!985327 (and e!985322 ((_ is LongMap!1611) lt!533952)))))

(assert (=> b!1539522 (= lt!533952 (v!23224 (underlying!3432 (cache!1936 cacheFurthestNullable!81))))))

(declare-fun b!1539523 () Bool)

(declare-fun e!985318 () Bool)

(assert (=> b!1539523 (= e!985320 e!985318)))

(declare-fun b!1539524 () Bool)

(declare-fun lt!533951 () tuple4!778)

(assert (=> b!1539524 (= e!985331 (tuple4!781 (_1!8913 lt!533951) (_2!8913 lt!533951) (_4!389 lt!533951) (_3!1161 lt!533951)))))

(assert (=> b!1539524 (= lt!533951 call!101576)))

(declare-fun b!1539525 () Bool)

(declare-fun tp!445640 () Bool)

(declare-fun inv!21677 (Conc!5500) Bool)

(assert (=> b!1539525 (= e!985334 (and (inv!21677 (c!251664 totalInput!496)) tp!445640))))

(declare-fun mapNonEmpty!7592 () Bool)

(declare-fun tp!445624 () Bool)

(declare-fun tp!445628 () Bool)

(assert (=> mapNonEmpty!7592 (= mapRes!7592 (and tp!445624 tp!445628))))

(declare-fun mapKey!7591 () (_ BitVec 32))

(declare-fun mapValue!7591 () List!16480)

(declare-fun mapRest!7591 () (Array (_ BitVec 32) List!16480))

(assert (=> mapNonEmpty!7592 (= (arr!2494 (_values!1890 (v!23223 (underlying!3431 (v!23224 (underlying!3432 (cache!1936 cacheFurthestNullable!81))))))) (store mapRest!7591 mapKey!7591 mapValue!7591))))

(declare-fun b!1539526 () Bool)

(declare-fun tp!445639 () Bool)

(assert (=> b!1539526 (= e!985312 (and tp!445639 mapRes!7591))))

(declare-fun condMapEmpty!7591 () Bool)

(declare-fun mapDefault!7592 () List!16484)

(assert (=> b!1539526 (= condMapEmpty!7591 (= (arr!2495 (_values!1891 (v!23225 (underlying!3433 (v!23226 (underlying!3434 (cache!1937 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16484)) mapDefault!7592)))))

(declare-fun b!1539527 () Bool)

(declare-fun e!985313 () Bool)

(declare-fun tp!445618 () Bool)

(assert (=> b!1539527 (= e!985313 (and (inv!21677 (c!251664 (totalInput!2373 cacheFurthestNullable!81))) tp!445618))))

(declare-fun b!1539528 () Bool)

(declare-fun res!689664 () Bool)

(assert (=> b!1539528 (=> (not res!689664) (not e!985328))))

(declare-fun valid!1306 (CacheUp!934) Bool)

(assert (=> b!1539528 (= res!689664 (valid!1306 cacheUp!695))))

(declare-fun b!1539529 () Bool)

(assert (=> b!1539529 (= e!985315 e!985330)))

(declare-fun b!1539530 () Bool)

(assert (=> b!1539530 (= e!985323 e!985309)))

(declare-fun b!1539531 () Bool)

(assert (=> b!1539531 (= e!985308 lt!533947)))

(declare-fun b!1539532 () Bool)

(declare-fun res!689663 () Bool)

(assert (=> b!1539532 (=> res!689663 e!985308)))

(declare-fun get!4786 (Option!2972) tuple2!15502)

(declare-fun get!4787 (Option!2973) tuple2!15504)

(assert (=> b!1539532 (= res!689663 (not (= (_1!8912 (get!4786 (_1!8915 lt!533949))) (_1!8914 (get!4787 lt!533940)))))))

(declare-fun e!985304 () Bool)

(assert (=> b!1539533 (= e!985304 (and e!985327 tp!445637))))

(declare-fun b!1539534 () Bool)

(assert (=> b!1539534 (= e!985303 (and e!985304 (inv!21674 (totalInput!2373 cacheFurthestNullable!81)) e!985313))))

(declare-fun b!1539535 () Bool)

(declare-fun e!985301 () Bool)

(assert (=> b!1539535 (= e!985310 e!985301)))

(assert (=> b!1539536 (= e!985319 (and e!985316 tp!445626))))

(declare-fun b!1539537 () Bool)

(declare-fun tp!445633 () Bool)

(assert (=> b!1539537 (= e!985324 (and (inv!21677 (c!251664 input!1460)) tp!445633))))

(declare-fun b!1539538 () Bool)

(assert (=> b!1539538 (= e!985301 e!985314)))

(assert (=> b!1539539 (= e!985311 (and tp!445621 tp!445638))))

(declare-fun b!1539540 () Bool)

(declare-fun e!985302 () Bool)

(assert (=> b!1539540 (= e!985318 e!985302)))

(declare-fun tp!445631 () Bool)

(declare-fun tp!445619 () Bool)

(declare-fun array_inv!1796 (array!5610) Bool)

(assert (=> b!1539541 (= e!985302 (and tp!445625 tp!445619 tp!445631 (array_inv!1793 (_keys!1907 (v!23227 (underlying!3435 (v!23228 (underlying!3436 (cache!1938 cacheDown!708))))))) (array_inv!1796 (_values!1892 (v!23227 (underlying!3435 (v!23228 (underlying!3436 (cache!1938 cacheDown!708))))))) e!985306))))

(declare-fun b!1539542 () Bool)

(declare-fun res!689668 () Bool)

(assert (=> b!1539542 (=> (not res!689668) (not e!985332))))

(declare-fun isEmpty!10020 (List!16483) Bool)

(assert (=> b!1539542 (= res!689668 (not (isEmpty!10020 rulesArg!359)))))

(assert (= (and start!143038 res!689659) b!1539515))

(assert (= (and b!1539515 res!689662) b!1539542))

(assert (= (and b!1539542 res!689668) b!1539507))

(assert (= (and b!1539507 res!689660) b!1539528))

(assert (= (and b!1539528 res!689664) b!1539511))

(assert (= (and b!1539511 res!689665) b!1539504))

(assert (= (and b!1539504 res!689666) b!1539508))

(assert (= (and b!1539508 res!689661) b!1539517))

(assert (= (and b!1539517 c!251662) b!1539524))

(assert (= (and b!1539517 (not c!251662)) b!1539518))

(assert (= (or b!1539524 b!1539518) bm!101571))

(assert (= (and b!1539517 (not res!689667)) b!1539532))

(assert (= (and b!1539532 (not res!689663)) b!1539531))

(assert (= (and b!1539526 condMapEmpty!7591) mapIsEmpty!7592))

(assert (= (and b!1539526 (not condMapEmpty!7591)) mapNonEmpty!7590))

(assert (= b!1539512 b!1539526))

(assert (= b!1539538 b!1539512))

(assert (= b!1539535 b!1539538))

(assert (= (and b!1539510 ((_ is LongMap!1612) (v!23226 (underlying!3434 (cache!1937 cacheUp!695))))) b!1539535))

(assert (= b!1539514 b!1539510))

(assert (= (and b!1539529 ((_ is HashMap!1556) (cache!1937 cacheUp!695))) b!1539514))

(assert (= start!143038 b!1539529))

(assert (= start!143038 b!1539537))

(assert (= (and b!1539520 condMapEmpty!7592) mapIsEmpty!7590))

(assert (= (and b!1539520 (not condMapEmpty!7592)) mapNonEmpty!7591))

(assert (= b!1539541 b!1539520))

(assert (= b!1539540 b!1539541))

(assert (= b!1539523 b!1539540))

(assert (= (and b!1539506 ((_ is LongMap!1613) (v!23228 (underlying!3436 (cache!1938 cacheDown!708))))) b!1539523))

(assert (= b!1539536 b!1539506))

(assert (= (and b!1539513 ((_ is HashMap!1557) (cache!1938 cacheDown!708))) b!1539536))

(assert (= start!143038 b!1539513))

(assert (= start!143038 b!1539525))

(assert (= b!1539509 b!1539539))

(assert (= b!1539505 b!1539509))

(assert (= (and start!143038 ((_ is Cons!16415) rulesArg!359)) b!1539505))

(assert (= (and b!1539521 condMapEmpty!7590) mapIsEmpty!7591))

(assert (= (and b!1539521 (not condMapEmpty!7590)) mapNonEmpty!7592))

(assert (= b!1539519 b!1539521))

(assert (= b!1539530 b!1539519))

(assert (= b!1539516 b!1539530))

(assert (= (and b!1539522 ((_ is LongMap!1611) (v!23224 (underlying!3432 (cache!1936 cacheFurthestNullable!81))))) b!1539516))

(assert (= b!1539533 b!1539522))

(assert (= (and b!1539534 ((_ is HashMap!1555) (cache!1936 cacheFurthestNullable!81))) b!1539533))

(assert (= b!1539534 b!1539527))

(assert (= start!143038 b!1539534))

(declare-fun m!1813732 () Bool)

(assert (=> b!1539519 m!1813732))

(declare-fun m!1813734 () Bool)

(assert (=> b!1539519 m!1813734))

(declare-fun m!1813736 () Bool)

(assert (=> mapNonEmpty!7592 m!1813736))

(declare-fun m!1813738 () Bool)

(assert (=> b!1539512 m!1813738))

(declare-fun m!1813740 () Bool)

(assert (=> b!1539512 m!1813740))

(declare-fun m!1813742 () Bool)

(assert (=> b!1539525 m!1813742))

(declare-fun m!1813744 () Bool)

(assert (=> b!1539515 m!1813744))

(declare-fun m!1813746 () Bool)

(assert (=> b!1539537 m!1813746))

(declare-fun m!1813748 () Bool)

(assert (=> b!1539534 m!1813748))

(declare-fun m!1813750 () Bool)

(assert (=> bm!101571 m!1813750))

(declare-fun m!1813752 () Bool)

(assert (=> mapNonEmpty!7591 m!1813752))

(declare-fun m!1813754 () Bool)

(assert (=> mapNonEmpty!7590 m!1813754))

(declare-fun m!1813756 () Bool)

(assert (=> b!1539542 m!1813756))

(declare-fun m!1813758 () Bool)

(assert (=> b!1539504 m!1813758))

(declare-fun m!1813760 () Bool)

(assert (=> b!1539518 m!1813760))

(declare-fun m!1813762 () Bool)

(assert (=> b!1539527 m!1813762))

(declare-fun m!1813764 () Bool)

(assert (=> b!1539517 m!1813764))

(declare-fun m!1813766 () Bool)

(assert (=> b!1539517 m!1813766))

(declare-fun m!1813768 () Bool)

(assert (=> b!1539517 m!1813768))

(declare-fun m!1813770 () Bool)

(assert (=> b!1539517 m!1813770))

(declare-fun m!1813772 () Bool)

(assert (=> b!1539517 m!1813772))

(declare-fun m!1813774 () Bool)

(assert (=> b!1539541 m!1813774))

(declare-fun m!1813776 () Bool)

(assert (=> b!1539541 m!1813776))

(declare-fun m!1813778 () Bool)

(assert (=> b!1539509 m!1813778))

(declare-fun m!1813780 () Bool)

(assert (=> b!1539509 m!1813780))

(declare-fun m!1813782 () Bool)

(assert (=> b!1539528 m!1813782))

(declare-fun m!1813784 () Bool)

(assert (=> b!1539507 m!1813784))

(assert (=> b!1539507 m!1813784))

(declare-fun m!1813786 () Bool)

(assert (=> b!1539507 m!1813786))

(declare-fun m!1813788 () Bool)

(assert (=> b!1539507 m!1813788))

(declare-fun m!1813790 () Bool)

(assert (=> b!1539532 m!1813790))

(declare-fun m!1813792 () Bool)

(assert (=> b!1539532 m!1813792))

(declare-fun m!1813794 () Bool)

(assert (=> b!1539511 m!1813794))

(declare-fun m!1813796 () Bool)

(assert (=> start!143038 m!1813796))

(declare-fun m!1813798 () Bool)

(assert (=> start!143038 m!1813798))

(declare-fun m!1813800 () Bool)

(assert (=> start!143038 m!1813800))

(declare-fun m!1813802 () Bool)

(assert (=> start!143038 m!1813802))

(declare-fun m!1813804 () Bool)

(assert (=> start!143038 m!1813804))

(check-sat (not b_next!40895) (not b!1539509) (not b_next!40901) (not b!1539504) (not b!1539534) (not b!1539525) (not b!1539537) (not b!1539519) b_and!107061 (not b!1539520) (not b!1539517) (not b_next!40887) (not b!1539521) (not b_next!40897) b_and!107071 (not start!143038) (not b_next!40899) (not b!1539541) (not b!1539511) (not b!1539527) (not b!1539512) b_and!107069 (not b!1539532) (not mapNonEmpty!7591) b_and!107075 (not b_next!40893) b_and!107073 (not b!1539528) (not mapNonEmpty!7592) (not b!1539526) b_and!107067 (not mapNonEmpty!7590) (not b_next!40889) (not bm!101571) (not b!1539542) (not b!1539515) (not b!1539507) b_and!107063 (not b_next!40891) (not b!1539505) (not b!1539518) b_and!107065)
(check-sat (not b_next!40895) b_and!107069 b_and!107073 b_and!107067 (not b_next!40889) (not b_next!40901) b_and!107065 b_and!107061 (not b_next!40887) (not b_next!40897) b_and!107071 (not b_next!40899) b_and!107075 (not b_next!40893) b_and!107063 (not b_next!40891))
