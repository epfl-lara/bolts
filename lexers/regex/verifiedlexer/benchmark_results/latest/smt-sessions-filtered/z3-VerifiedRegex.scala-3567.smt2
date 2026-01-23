; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206380 () Bool)

(assert start!206380)

(declare-fun b!2110686 () Bool)

(declare-fun b_free!60949 () Bool)

(declare-fun b_next!61653 () Bool)

(assert (=> b!2110686 (= b_free!60949 (not b_next!61653))))

(declare-fun tp!642289 () Bool)

(declare-fun b_and!170523 () Bool)

(assert (=> b!2110686 (= tp!642289 b_and!170523)))

(declare-fun b!2110682 () Bool)

(declare-fun b_free!60951 () Bool)

(declare-fun b_next!61655 () Bool)

(assert (=> b!2110682 (= b_free!60951 (not b_next!61655))))

(declare-fun tp!642291 () Bool)

(declare-fun b_and!170525 () Bool)

(assert (=> b!2110682 (= tp!642291 b_and!170525)))

(declare-fun b!2110683 () Bool)

(declare-fun b_free!60953 () Bool)

(declare-fun b_next!61657 () Bool)

(assert (=> b!2110683 (= b_free!60953 (not b_next!61657))))

(declare-fun tp!642298 () Bool)

(declare-fun b_and!170527 () Bool)

(assert (=> b!2110683 (= tp!642298 b_and!170527)))

(declare-fun b!2110691 () Bool)

(declare-fun b_free!60955 () Bool)

(declare-fun b_next!61659 () Bool)

(assert (=> b!2110691 (= b_free!60955 (not b_next!61659))))

(declare-fun tp!642295 () Bool)

(declare-fun b_and!170529 () Bool)

(assert (=> b!2110691 (= tp!642295 b_and!170529)))

(declare-fun b_free!60957 () Bool)

(declare-fun b_next!61661 () Bool)

(assert (=> b!2110691 (= b_free!60957 (not b_next!61661))))

(declare-fun tp!642287 () Bool)

(declare-fun b_and!170531 () Bool)

(assert (=> b!2110691 (= tp!642287 b_and!170531)))

(declare-fun b!2110676 () Bool)

(declare-fun b_free!60959 () Bool)

(declare-fun b_next!61663 () Bool)

(assert (=> b!2110676 (= b_free!60959 (not b_next!61663))))

(declare-fun tp!642297 () Bool)

(declare-fun b_and!170533 () Bool)

(assert (=> b!2110676 (= tp!642297 b_and!170533)))

(declare-fun b!2110671 () Bool)

(declare-fun e!1342458 () Bool)

(declare-datatypes ((Hashable!2218 0))(
  ( (HashableExt!2217 (__x!15086 Int)) )
))
(declare-datatypes ((C!11348 0))(
  ( (C!11349 (val!6660 Int)) )
))
(declare-datatypes ((Regex!5601 0))(
  ( (ElementMatch!5601 (c!339091 C!11348)) (Concat!9902 (regOne!11714 Regex!5601) (regTwo!11714 Regex!5601)) (EmptyExpr!5601) (Star!5601 (reg!5930 Regex!5601)) (EmptyLang!5601) (Union!5601 (regOne!11715 Regex!5601) (regTwo!11715 Regex!5601)) )
))
(declare-datatypes ((List!23488 0))(
  ( (Nil!23404) (Cons!23404 (h!28805 Regex!5601) (t!195993 List!23488)) )
))
(declare-datatypes ((Context!2342 0))(
  ( (Context!2343 (exprs!1671 List!23488)) )
))
(declare-datatypes ((tuple2!22760 0))(
  ( (tuple2!22761 (_1!13179 Context!2342) (_2!13179 C!11348)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22762 0))(
  ( (tuple2!22763 (_1!13180 tuple2!22760) (_2!13180 (InoxSet Context!2342))) )
))
(declare-datatypes ((List!23489 0))(
  ( (Nil!23405) (Cons!23405 (h!28806 tuple2!22762) (t!195994 List!23489)) )
))
(declare-datatypes ((array!7963 0))(
  ( (array!7964 (arr!3526 (Array (_ BitVec 32) (_ BitVec 64))) (size!18264 (_ BitVec 32))) )
))
(declare-datatypes ((array!7965 0))(
  ( (array!7966 (arr!3527 (Array (_ BitVec 32) List!23489)) (size!18265 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4608 0))(
  ( (LongMapFixedSize!4609 (defaultEntry!2669 Int) (mask!6420 (_ BitVec 32)) (extraKeys!2552 (_ BitVec 32)) (zeroValue!2562 List!23489) (minValue!2562 List!23489) (_size!4659 (_ BitVec 32)) (_keys!2601 array!7963) (_values!2584 array!7965) (_vacant!2365 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9041 0))(
  ( (Cell!9042 (v!27933 LongMapFixedSize!4608)) )
))
(declare-datatypes ((MutLongMap!2304 0))(
  ( (LongMap!2304 (underlying!4803 Cell!9041)) (MutLongMapExt!2303 (__x!15087 Int)) )
))
(declare-datatypes ((Cell!9043 0))(
  ( (Cell!9044 (v!27934 MutLongMap!2304)) )
))
(declare-datatypes ((Hashable!2219 0))(
  ( (HashableExt!2218 (__x!15088 Int)) )
))
(declare-datatypes ((MutableMap!2218 0))(
  ( (MutableMapExt!2217 (__x!15089 Int)) (HashMap!2218 (underlying!4804 Cell!9043) (hashF!4141 Hashable!2219) (_size!4660 (_ BitVec 32)) (defaultValue!2380 Int)) )
))
(declare-datatypes ((CacheUp!1514 0))(
  ( (CacheUp!1515 (cache!2599 MutableMap!2218)) )
))
(declare-datatypes ((List!23490 0))(
  ( (Nil!23406) (Cons!23406 (h!28807 C!11348) (t!195995 List!23490)) )
))
(declare-datatypes ((IArray!15497 0))(
  ( (IArray!15498 (innerList!7806 List!23490)) )
))
(declare-datatypes ((Conc!7746 0))(
  ( (Node!7746 (left!18199 Conc!7746) (right!18529 Conc!7746) (csize!15722 Int) (cheight!7957 Int)) (Leaf!11314 (xs!10688 IArray!15497) (csize!15723 Int)) (Empty!7746) )
))
(declare-datatypes ((BalanceConc!15254 0))(
  ( (BalanceConc!15255 (c!339092 Conc!7746)) )
))
(declare-datatypes ((tuple2!22764 0))(
  ( (tuple2!22765 (_1!13181 BalanceConc!15254) (_2!13181 BalanceConc!15254)) )
))
(declare-datatypes ((tuple3!2670 0))(
  ( (tuple3!2671 (_1!13182 Regex!5601) (_2!13182 Context!2342) (_3!1799 C!11348)) )
))
(declare-datatypes ((tuple2!22766 0))(
  ( (tuple2!22767 (_1!13183 tuple3!2670) (_2!13183 (InoxSet Context!2342))) )
))
(declare-datatypes ((List!23491 0))(
  ( (Nil!23407) (Cons!23407 (h!28808 tuple2!22766) (t!195996 List!23491)) )
))
(declare-datatypes ((array!7967 0))(
  ( (array!7968 (arr!3528 (Array (_ BitVec 32) List!23491)) (size!18266 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4610 0))(
  ( (LongMapFixedSize!4611 (defaultEntry!2670 Int) (mask!6421 (_ BitVec 32)) (extraKeys!2553 (_ BitVec 32)) (zeroValue!2563 List!23491) (minValue!2563 List!23491) (_size!4661 (_ BitVec 32)) (_keys!2602 array!7963) (_values!2585 array!7967) (_vacant!2366 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9045 0))(
  ( (Cell!9046 (v!27935 LongMapFixedSize!4610)) )
))
(declare-datatypes ((MutLongMap!2305 0))(
  ( (LongMap!2305 (underlying!4805 Cell!9045)) (MutLongMapExt!2304 (__x!15090 Int)) )
))
(declare-datatypes ((Cell!9047 0))(
  ( (Cell!9048 (v!27936 MutLongMap!2305)) )
))
(declare-datatypes ((MutableMap!2219 0))(
  ( (MutableMapExt!2218 (__x!15091 Int)) (HashMap!2219 (underlying!4806 Cell!9047) (hashF!4142 Hashable!2218) (_size!4662 (_ BitVec 32)) (defaultValue!2381 Int)) )
))
(declare-datatypes ((CacheDown!1516 0))(
  ( (CacheDown!1517 (cache!2600 MutableMap!2219)) )
))
(declare-datatypes ((tuple3!2672 0))(
  ( (tuple3!2673 (_1!13184 tuple2!22764) (_2!13184 CacheUp!1514) (_3!1800 CacheDown!1516)) )
))
(declare-fun lt!792171 () tuple3!2672)

(declare-fun valid!1819 (CacheDown!1516) Bool)

(assert (=> b!2110671 (= e!1342458 (not (valid!1819 (_3!1800 lt!792171))))))

(declare-fun mapNonEmpty!11120 () Bool)

(declare-fun mapRes!11121 () Bool)

(declare-fun tp!642290 () Bool)

(declare-fun tp!642284 () Bool)

(assert (=> mapNonEmpty!11120 (= mapRes!11121 (and tp!642290 tp!642284))))

(declare-fun mapRest!11121 () (Array (_ BitVec 32) List!23489))

(declare-fun cacheUp!740 () CacheUp!1514)

(declare-fun mapValue!11120 () List!23489)

(declare-fun mapKey!11120 () (_ BitVec 32))

(assert (=> mapNonEmpty!11120 (= (arr!3527 (_values!2584 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) (store mapRest!11121 mapKey!11120 mapValue!11120))))

(declare-fun b!2110673 () Bool)

(declare-fun e!1342472 () Bool)

(declare-fun e!1342451 () Bool)

(assert (=> b!2110673 (= e!1342472 e!1342451)))

(declare-fun b!2110674 () Bool)

(declare-fun e!1342471 () Bool)

(assert (=> b!2110674 (= e!1342471 e!1342472)))

(declare-fun b!2110675 () Bool)

(declare-fun e!1342449 () Bool)

(declare-fun input!1654 () BalanceConc!15254)

(declare-fun tp!642292 () Bool)

(declare-fun inv!30972 (Conc!7746) Bool)

(assert (=> b!2110675 (= e!1342449 (and (inv!30972 (c!339092 input!1654)) tp!642292))))

(declare-fun e!1342473 () Bool)

(declare-fun e!1342461 () Bool)

(assert (=> b!2110676 (= e!1342473 (and e!1342461 tp!642297))))

(declare-fun b!2110677 () Bool)

(declare-fun e!1342448 () Bool)

(declare-fun tp!642293 () Bool)

(assert (=> b!2110677 (= e!1342448 (and tp!642293 mapRes!11121))))

(declare-fun condMapEmpty!11120 () Bool)

(declare-fun mapDefault!11120 () List!23489)

(assert (=> b!2110677 (= condMapEmpty!11120 (= (arr!3527 (_values!2584 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23489)) mapDefault!11120)))))

(declare-fun b!2110678 () Bool)

(declare-fun e!1342456 () Bool)

(declare-fun e!1342462 () Bool)

(assert (=> b!2110678 (= e!1342456 e!1342462)))

(declare-fun b!2110672 () Bool)

(declare-fun e!1342466 () Bool)

(declare-fun tp!642294 () Bool)

(declare-fun mapRes!11120 () Bool)

(assert (=> b!2110672 (= e!1342466 (and tp!642294 mapRes!11120))))

(declare-fun condMapEmpty!11121 () Bool)

(declare-fun cacheDown!753 () CacheDown!1516)

(declare-fun mapDefault!11121 () List!23491)

(assert (=> b!2110672 (= condMapEmpty!11121 (= (arr!3528 (_values!2585 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23491)) mapDefault!11121)))))

(declare-fun res!916787 () Bool)

(declare-fun e!1342467 () Bool)

(assert (=> start!206380 (=> (not res!916787) (not e!1342467))))

(declare-datatypes ((LexerInterface!3762 0))(
  ( (LexerInterfaceExt!3759 (__x!15092 Int)) (Lexer!3760) )
))
(declare-fun thiss!16399 () LexerInterface!3762)

(get-info :version)

(assert (=> start!206380 (= res!916787 ((_ is Lexer!3760) thiss!16399))))

(assert (=> start!206380 e!1342467))

(assert (=> start!206380 true))

(declare-fun e!1342454 () Bool)

(assert (=> start!206380 e!1342454))

(declare-fun e!1342457 () Bool)

(declare-fun inv!30973 (CacheDown!1516) Bool)

(assert (=> start!206380 (and (inv!30973 cacheDown!753) e!1342457)))

(declare-fun inv!30974 (BalanceConc!15254) Bool)

(assert (=> start!206380 (and (inv!30974 input!1654) e!1342449)))

(declare-fun totalInput!548 () BalanceConc!15254)

(declare-fun e!1342460 () Bool)

(assert (=> start!206380 (and (inv!30974 totalInput!548) e!1342460)))

(declare-fun e!1342464 () Bool)

(declare-fun inv!30975 (CacheUp!1514) Bool)

(assert (=> start!206380 (and (inv!30975 cacheUp!740) e!1342464)))

(declare-fun b!2110679 () Bool)

(declare-fun e!1342470 () Bool)

(assert (=> b!2110679 (= e!1342464 e!1342470)))

(declare-fun b!2110680 () Bool)

(declare-fun e!1342468 () Bool)

(declare-datatypes ((List!23492 0))(
  ( (Nil!23408) (Cons!23408 (h!28809 (_ BitVec 16)) (t!195997 List!23492)) )
))
(declare-datatypes ((TokenValue!4301 0))(
  ( (FloatLiteralValue!8602 (text!30552 List!23492)) (TokenValueExt!4300 (__x!15093 Int)) (Broken!21505 (value!130308 List!23492)) (Object!4384) (End!4301) (Def!4301) (Underscore!4301) (Match!4301) (Else!4301) (Error!4301) (Case!4301) (If!4301) (Extends!4301) (Abstract!4301) (Class!4301) (Val!4301) (DelimiterValue!8602 (del!4361 List!23492)) (KeywordValue!4307 (value!130309 List!23492)) (CommentValue!8602 (value!130310 List!23492)) (WhitespaceValue!8602 (value!130311 List!23492)) (IndentationValue!4301 (value!130312 List!23492)) (String!26712) (Int32!4301) (Broken!21506 (value!130313 List!23492)) (Boolean!4302) (Unit!37510) (OperatorValue!4304 (op!4361 List!23492)) (IdentifierValue!8602 (value!130314 List!23492)) (IdentifierValue!8603 (value!130315 List!23492)) (WhitespaceValue!8603 (value!130316 List!23492)) (True!8602) (False!8602) (Broken!21507 (value!130317 List!23492)) (Broken!21508 (value!130318 List!23492)) (True!8603) (RightBrace!4301) (RightBracket!4301) (Colon!4301) (Null!4301) (Comma!4301) (LeftBracket!4301) (False!8603) (LeftBrace!4301) (ImaginaryLiteralValue!4301 (text!30553 List!23492)) (StringLiteralValue!12903 (value!130319 List!23492)) (EOFValue!4301 (value!130320 List!23492)) (IdentValue!4301 (value!130321 List!23492)) (DelimiterValue!8603 (value!130322 List!23492)) (DedentValue!4301 (value!130323 List!23492)) (NewLineValue!4301 (value!130324 List!23492)) (IntegerValue!12903 (value!130325 (_ BitVec 32)) (text!30554 List!23492)) (IntegerValue!12904 (value!130326 Int) (text!30555 List!23492)) (Times!4301) (Or!4301) (Equal!4301) (Minus!4301) (Broken!21509 (value!130327 List!23492)) (And!4301) (Div!4301) (LessEqual!4301) (Mod!4301) (Concat!9903) (Not!4301) (Plus!4301) (SpaceValue!4301 (value!130328 List!23492)) (IntegerValue!12905 (value!130329 Int) (text!30556 List!23492)) (StringLiteralValue!12904 (text!30557 List!23492)) (FloatLiteralValue!8603 (text!30558 List!23492)) (BytesLiteralValue!4301 (value!130330 List!23492)) (CommentValue!8603 (value!130331 List!23492)) (StringLiteralValue!12905 (value!130332 List!23492)) (ErrorTokenValue!4301 (msg!4362 List!23492)) )
))
(declare-datatypes ((String!26713 0))(
  ( (String!26714 (value!130333 String)) )
))
(declare-datatypes ((TokenValueInjection!8186 0))(
  ( (TokenValueInjection!8187 (toValue!5876 Int) (toChars!5735 Int)) )
))
(declare-datatypes ((Rule!8130 0))(
  ( (Rule!8131 (regex!4165 Regex!5601) (tag!4655 String!26713) (isSeparator!4165 Bool) (transformation!4165 TokenValueInjection!8186)) )
))
(declare-fun rule!236 () Rule!8130)

(declare-datatypes ((tuple2!22768 0))(
  ( (tuple2!22769 (_1!13185 List!23490) (_2!13185 List!23490)) )
))
(declare-fun lt!792167 () tuple2!22768)

(declare-fun matchR!2728 (Regex!5601 List!23490) Bool)

(assert (=> b!2110680 (= e!1342468 (matchR!2728 (regex!4165 rule!236) (_1!13185 lt!792167)))))

(declare-fun b!2110681 () Bool)

(declare-fun lt!792168 () MutLongMap!2305)

(assert (=> b!2110681 (= e!1342461 (and e!1342456 ((_ is LongMap!2305) lt!792168)))))

(assert (=> b!2110681 (= lt!792168 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))

(declare-fun e!1342455 () Bool)

(assert (=> b!2110682 (= e!1342470 (and e!1342455 tp!642291))))

(declare-fun e!1342450 () Bool)

(declare-fun tp!642296 () Bool)

(declare-fun tp!642283 () Bool)

(declare-fun array_inv!2538 (array!7963) Bool)

(declare-fun array_inv!2539 (array!7967) Bool)

(assert (=> b!2110683 (= e!1342450 (and tp!642298 tp!642296 tp!642283 (array_inv!2538 (_keys!2602 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) (array_inv!2539 (_values!2585 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) e!1342466))))

(declare-fun b!2110684 () Bool)

(declare-fun e!1342469 () Bool)

(assert (=> b!2110684 (= e!1342469 e!1342458)))

(declare-fun res!916788 () Bool)

(assert (=> b!2110684 (=> res!916788 e!1342458)))

(declare-datatypes ((Token!7812 0))(
  ( (Token!7813 (value!130334 TokenValue!4301) (rule!6464 Rule!8130) (size!18267 Int) (originalCharacters!4937 List!23490)) )
))
(declare-datatypes ((tuple2!22770 0))(
  ( (tuple2!22771 (_1!13186 Token!7812) (_2!13186 BalanceConc!15254)) )
))
(declare-datatypes ((Option!4861 0))(
  ( (None!4860) (Some!4860 (v!27937 tuple2!22770)) )
))
(declare-fun e!1342465 () Option!4861)

(declare-fun maxPrefixOneRuleZipperSequenceV2!178 (LexerInterface!3762 Rule!8130 BalanceConc!15254 BalanceConc!15254) Option!4861)

(assert (=> b!2110684 (= res!916788 (not (= e!1342465 (maxPrefixOneRuleZipperSequenceV2!178 thiss!16399 rule!236 input!1654 totalInput!548))))))

(declare-fun c!339090 () Bool)

(declare-fun isEmpty!14302 (BalanceConc!15254) Bool)

(assert (=> b!2110684 (= c!339090 (isEmpty!14302 (_1!13181 (_1!13184 lt!792171))))))

(declare-fun mapNonEmpty!11121 () Bool)

(declare-fun tp!642281 () Bool)

(declare-fun tp!642299 () Bool)

(assert (=> mapNonEmpty!11121 (= mapRes!11120 (and tp!642281 tp!642299))))

(declare-fun mapKey!11121 () (_ BitVec 32))

(declare-fun mapValue!11121 () List!23491)

(declare-fun mapRest!11120 () (Array (_ BitVec 32) List!23491))

(assert (=> mapNonEmpty!11121 (= (arr!3528 (_values!2585 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) (store mapRest!11120 mapKey!11121 mapValue!11121))))

(declare-fun b!2110685 () Bool)

(declare-fun e!1342474 () Bool)

(assert (=> b!2110685 (= e!1342474 e!1342469)))

(declare-fun res!916790 () Bool)

(assert (=> b!2110685 (=> (not res!916790) (not e!1342469))))

(declare-fun findLongestMatchWithZipperSequenceV2!69 (Regex!5601 BalanceConc!15254 BalanceConc!15254) tuple2!22764)

(assert (=> b!2110685 (= res!916790 (= (tuple2!22765 (_1!13181 (_1!13184 lt!792171)) (_2!13181 (_1!13184 lt!792171))) (findLongestMatchWithZipperSequenceV2!69 (regex!4165 rule!236) input!1654 totalInput!548)))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!43 (Regex!5601 BalanceConc!15254 BalanceConc!15254 CacheUp!1514 CacheDown!1516) tuple3!2672)

(assert (=> b!2110685 (= lt!792171 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!43 (regex!4165 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun tp!642282 () Bool)

(declare-fun tp!642285 () Bool)

(declare-fun array_inv!2540 (array!7965) Bool)

(assert (=> b!2110686 (= e!1342451 (and tp!642289 tp!642285 tp!642282 (array_inv!2538 (_keys!2601 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) (array_inv!2540 (_values!2584 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) e!1342448))))

(declare-fun b!2110687 () Bool)

(declare-fun res!916793 () Bool)

(assert (=> b!2110687 (=> (not res!916793) (not e!1342467))))

(declare-fun valid!1820 (CacheUp!1514) Bool)

(assert (=> b!2110687 (= res!916793 (valid!1820 cacheUp!740))))

(declare-fun mapIsEmpty!11120 () Bool)

(assert (=> mapIsEmpty!11120 mapRes!11121))

(declare-fun b!2110688 () Bool)

(declare-fun lt!792169 () MutLongMap!2304)

(assert (=> b!2110688 (= e!1342455 (and e!1342471 ((_ is LongMap!2304) lt!792169)))))

(assert (=> b!2110688 (= lt!792169 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))

(declare-fun b!2110689 () Bool)

(assert (=> b!2110689 (= e!1342462 e!1342450)))

(declare-fun b!2110690 () Bool)

(declare-fun res!916791 () Bool)

(assert (=> b!2110690 (=> (not res!916791) (not e!1342467))))

(assert (=> b!2110690 (= res!916791 (valid!1819 cacheDown!753))))

(declare-fun e!1342453 () Bool)

(assert (=> b!2110691 (= e!1342453 (and tp!642295 tp!642287))))

(declare-fun b!2110692 () Bool)

(assert (=> b!2110692 (= e!1342467 e!1342474)))

(declare-fun res!916786 () Bool)

(assert (=> b!2110692 (=> (not res!916786) (not e!1342474))))

(declare-fun lt!792172 () List!23490)

(declare-fun isSuffix!577 (List!23490 List!23490) Bool)

(declare-fun list!9473 (BalanceConc!15254) List!23490)

(assert (=> b!2110692 (= res!916786 (isSuffix!577 lt!792172 (list!9473 totalInput!548)))))

(assert (=> b!2110692 (= lt!792172 (list!9473 input!1654))))

(declare-fun mapIsEmpty!11121 () Bool)

(assert (=> mapIsEmpty!11121 mapRes!11120))

(declare-fun b!2110693 () Bool)

(declare-fun tp!642288 () Bool)

(assert (=> b!2110693 (= e!1342460 (and (inv!30972 (c!339092 totalInput!548)) tp!642288))))

(declare-fun b!2110694 () Bool)

(declare-fun res!916792 () Bool)

(assert (=> b!2110694 (=> (not res!916792) (not e!1342467))))

(declare-fun ruleValid!1287 (LexerInterface!3762 Rule!8130) Bool)

(assert (=> b!2110694 (= res!916792 (ruleValid!1287 thiss!16399 rule!236))))

(declare-fun b!2110695 () Bool)

(assert (=> b!2110695 (= e!1342457 e!1342473)))

(declare-fun b!2110696 () Bool)

(declare-fun tp!642286 () Bool)

(declare-fun inv!30967 (String!26713) Bool)

(declare-fun inv!30976 (TokenValueInjection!8186) Bool)

(assert (=> b!2110696 (= e!1342454 (and tp!642286 (inv!30967 (tag!4655 rule!236)) (inv!30976 (transformation!4165 rule!236)) e!1342453))))

(declare-fun b!2110697 () Bool)

(declare-fun res!916785 () Bool)

(assert (=> b!2110697 (=> res!916785 e!1342458)))

(assert (=> b!2110697 (= res!916785 (not (valid!1820 (_2!13184 lt!792171))))))

(declare-fun b!2110698 () Bool)

(declare-fun apply!5901 (TokenValueInjection!8186 BalanceConc!15254) TokenValue!4301)

(declare-fun size!18268 (BalanceConc!15254) Int)

(assert (=> b!2110698 (= e!1342465 (Some!4860 (tuple2!22771 (Token!7813 (apply!5901 (transformation!4165 rule!236) (_1!13181 (_1!13184 lt!792171))) rule!236 (size!18268 (_1!13181 (_1!13184 lt!792171))) (list!9473 (_1!13181 (_1!13184 lt!792171)))) (_2!13181 (_1!13184 lt!792171)))))))

(declare-datatypes ((Unit!37511 0))(
  ( (Unit!37512) )
))
(declare-fun lt!792166 () Unit!37511)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!577 (Regex!5601 List!23490) Unit!37511)

(assert (=> b!2110698 (= lt!792166 (longestMatchIsAcceptedByMatchOrIsEmpty!577 (regex!4165 rule!236) lt!792172))))

(declare-fun findLongestMatchInner!593 (Regex!5601 List!23490 Int List!23490 List!23490 Int) tuple2!22768)

(declare-fun size!18269 (List!23490) Int)

(assert (=> b!2110698 (= lt!792167 (findLongestMatchInner!593 (regex!4165 rule!236) Nil!23406 (size!18269 Nil!23406) lt!792172 lt!792172 (size!18269 lt!792172)))))

(declare-fun res!916789 () Bool)

(declare-fun isEmpty!14303 (List!23490) Bool)

(assert (=> b!2110698 (= res!916789 (isEmpty!14303 (_1!13185 lt!792167)))))

(assert (=> b!2110698 (=> res!916789 e!1342468)))

(assert (=> b!2110698 e!1342468))

(declare-fun lt!792170 () Unit!37511)

(declare-fun lemmaSemiInverse!991 (TokenValueInjection!8186 BalanceConc!15254) Unit!37511)

(assert (=> b!2110698 (= lt!792170 (lemmaSemiInverse!991 (transformation!4165 rule!236) (_1!13181 (_1!13184 lt!792171))))))

(declare-fun b!2110699 () Bool)

(assert (=> b!2110699 (= e!1342465 None!4860)))

(assert (= (and start!206380 res!916787) b!2110694))

(assert (= (and b!2110694 res!916792) b!2110687))

(assert (= (and b!2110687 res!916793) b!2110690))

(assert (= (and b!2110690 res!916791) b!2110692))

(assert (= (and b!2110692 res!916786) b!2110685))

(assert (= (and b!2110685 res!916790) b!2110684))

(assert (= (and b!2110684 c!339090) b!2110699))

(assert (= (and b!2110684 (not c!339090)) b!2110698))

(assert (= (and b!2110698 (not res!916789)) b!2110680))

(assert (= (and b!2110684 (not res!916788)) b!2110697))

(assert (= (and b!2110697 (not res!916785)) b!2110671))

(assert (= b!2110696 b!2110691))

(assert (= start!206380 b!2110696))

(assert (= (and b!2110672 condMapEmpty!11121) mapIsEmpty!11121))

(assert (= (and b!2110672 (not condMapEmpty!11121)) mapNonEmpty!11121))

(assert (= b!2110683 b!2110672))

(assert (= b!2110689 b!2110683))

(assert (= b!2110678 b!2110689))

(assert (= (and b!2110681 ((_ is LongMap!2305) (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))) b!2110678))

(assert (= b!2110676 b!2110681))

(assert (= (and b!2110695 ((_ is HashMap!2219) (cache!2600 cacheDown!753))) b!2110676))

(assert (= start!206380 b!2110695))

(assert (= start!206380 b!2110675))

(assert (= start!206380 b!2110693))

(assert (= (and b!2110677 condMapEmpty!11120) mapIsEmpty!11120))

(assert (= (and b!2110677 (not condMapEmpty!11120)) mapNonEmpty!11120))

(assert (= b!2110686 b!2110677))

(assert (= b!2110673 b!2110686))

(assert (= b!2110674 b!2110673))

(assert (= (and b!2110688 ((_ is LongMap!2304) (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))) b!2110674))

(assert (= b!2110682 b!2110688))

(assert (= (and b!2110679 ((_ is HashMap!2218) (cache!2599 cacheUp!740))) b!2110682))

(assert (= start!206380 b!2110679))

(declare-fun m!2567683 () Bool)

(assert (=> b!2110697 m!2567683))

(declare-fun m!2567685 () Bool)

(assert (=> mapNonEmpty!11121 m!2567685))

(declare-fun m!2567687 () Bool)

(assert (=> b!2110694 m!2567687))

(declare-fun m!2567689 () Bool)

(assert (=> b!2110680 m!2567689))

(declare-fun m!2567691 () Bool)

(assert (=> b!2110675 m!2567691))

(declare-fun m!2567693 () Bool)

(assert (=> b!2110686 m!2567693))

(declare-fun m!2567695 () Bool)

(assert (=> b!2110686 m!2567695))

(declare-fun m!2567697 () Bool)

(assert (=> b!2110698 m!2567697))

(declare-fun m!2567699 () Bool)

(assert (=> b!2110698 m!2567699))

(declare-fun m!2567701 () Bool)

(assert (=> b!2110698 m!2567701))

(declare-fun m!2567703 () Bool)

(assert (=> b!2110698 m!2567703))

(declare-fun m!2567705 () Bool)

(assert (=> b!2110698 m!2567705))

(assert (=> b!2110698 m!2567697))

(declare-fun m!2567707 () Bool)

(assert (=> b!2110698 m!2567707))

(declare-fun m!2567709 () Bool)

(assert (=> b!2110698 m!2567709))

(declare-fun m!2567711 () Bool)

(assert (=> b!2110698 m!2567711))

(declare-fun m!2567713 () Bool)

(assert (=> b!2110698 m!2567713))

(assert (=> b!2110698 m!2567705))

(declare-fun m!2567715 () Bool)

(assert (=> b!2110685 m!2567715))

(declare-fun m!2567717 () Bool)

(assert (=> b!2110685 m!2567717))

(declare-fun m!2567719 () Bool)

(assert (=> b!2110687 m!2567719))

(declare-fun m!2567721 () Bool)

(assert (=> b!2110684 m!2567721))

(declare-fun m!2567723 () Bool)

(assert (=> b!2110684 m!2567723))

(declare-fun m!2567725 () Bool)

(assert (=> b!2110690 m!2567725))

(declare-fun m!2567727 () Bool)

(assert (=> b!2110696 m!2567727))

(declare-fun m!2567729 () Bool)

(assert (=> b!2110696 m!2567729))

(declare-fun m!2567731 () Bool)

(assert (=> b!2110693 m!2567731))

(declare-fun m!2567733 () Bool)

(assert (=> mapNonEmpty!11120 m!2567733))

(declare-fun m!2567735 () Bool)

(assert (=> b!2110671 m!2567735))

(declare-fun m!2567737 () Bool)

(assert (=> b!2110683 m!2567737))

(declare-fun m!2567739 () Bool)

(assert (=> b!2110683 m!2567739))

(declare-fun m!2567741 () Bool)

(assert (=> b!2110692 m!2567741))

(assert (=> b!2110692 m!2567741))

(declare-fun m!2567743 () Bool)

(assert (=> b!2110692 m!2567743))

(declare-fun m!2567745 () Bool)

(assert (=> b!2110692 m!2567745))

(declare-fun m!2567747 () Bool)

(assert (=> start!206380 m!2567747))

(declare-fun m!2567749 () Bool)

(assert (=> start!206380 m!2567749))

(declare-fun m!2567751 () Bool)

(assert (=> start!206380 m!2567751))

(declare-fun m!2567753 () Bool)

(assert (=> start!206380 m!2567753))

(check-sat (not b_next!61663) (not b!2110675) (not b_next!61659) (not b!2110698) (not b!2110684) (not mapNonEmpty!11120) (not b!2110693) (not b!2110685) (not mapNonEmpty!11121) (not b!2110683) (not b!2110680) b_and!170531 (not b!2110687) (not b!2110671) b_and!170533 (not b!2110672) (not start!206380) b_and!170529 b_and!170523 (not b!2110686) (not b!2110697) (not b!2110696) (not b!2110690) (not b_next!61657) (not b!2110692) b_and!170527 (not b!2110677) (not b_next!61655) (not b_next!61653) b_and!170525 (not b!2110694) (not b_next!61661))
(check-sat (not b_next!61663) (not b_next!61659) (not b_next!61657) (not b_next!61661) b_and!170531 b_and!170533 b_and!170529 b_and!170523 b_and!170527 (not b_next!61655) (not b_next!61653) b_and!170525)
(get-model)

(declare-fun d!642290 () Bool)

(assert (=> d!642290 (= (array_inv!2538 (_keys!2602 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) (bvsge (size!18264 (_keys!2602 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110683 d!642290))

(declare-fun d!642292 () Bool)

(assert (=> d!642292 (= (array_inv!2539 (_values!2585 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) (bvsge (size!18266 (_values!2585 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110683 d!642292))

(declare-fun d!642294 () Bool)

(declare-fun e!1342477 () Bool)

(assert (=> d!642294 e!1342477))

(declare-fun res!916798 () Bool)

(assert (=> d!642294 (=> res!916798 e!1342477)))

(declare-fun lt!792175 () Bool)

(assert (=> d!642294 (= res!916798 (not lt!792175))))

(declare-fun drop!1173 (List!23490 Int) List!23490)

(assert (=> d!642294 (= lt!792175 (= lt!792172 (drop!1173 (list!9473 totalInput!548) (- (size!18269 (list!9473 totalInput!548)) (size!18269 lt!792172)))))))

(assert (=> d!642294 (= (isSuffix!577 lt!792172 (list!9473 totalInput!548)) lt!792175)))

(declare-fun b!2110702 () Bool)

(assert (=> b!2110702 (= e!1342477 (>= (size!18269 (list!9473 totalInput!548)) (size!18269 lt!792172)))))

(assert (= (and d!642294 (not res!916798)) b!2110702))

(assert (=> d!642294 m!2567741))

(declare-fun m!2567755 () Bool)

(assert (=> d!642294 m!2567755))

(assert (=> d!642294 m!2567697))

(assert (=> d!642294 m!2567741))

(declare-fun m!2567757 () Bool)

(assert (=> d!642294 m!2567757))

(assert (=> b!2110702 m!2567741))

(assert (=> b!2110702 m!2567755))

(assert (=> b!2110702 m!2567697))

(assert (=> b!2110692 d!642294))

(declare-fun d!642296 () Bool)

(declare-fun list!9474 (Conc!7746) List!23490)

(assert (=> d!642296 (= (list!9473 totalInput!548) (list!9474 (c!339092 totalInput!548)))))

(declare-fun bs!441059 () Bool)

(assert (= bs!441059 d!642296))

(declare-fun m!2567759 () Bool)

(assert (=> bs!441059 m!2567759))

(assert (=> b!2110692 d!642296))

(declare-fun d!642298 () Bool)

(assert (=> d!642298 (= (list!9473 input!1654) (list!9474 (c!339092 input!1654)))))

(declare-fun bs!441060 () Bool)

(assert (= bs!441060 d!642298))

(declare-fun m!2567761 () Bool)

(assert (=> bs!441060 m!2567761))

(assert (=> b!2110692 d!642298))

(declare-fun b!2110728 () Bool)

(declare-fun e!1342498 () Bool)

(assert (=> b!2110728 (= e!1342498 true)))

(declare-fun b!2110727 () Bool)

(declare-fun e!1342497 () Bool)

(assert (=> b!2110727 (= e!1342497 e!1342498)))

(declare-fun b!2110715 () Bool)

(assert (=> b!2110715 e!1342497))

(assert (= b!2110727 b!2110728))

(assert (= b!2110715 b!2110727))

(declare-fun order!14473 () Int)

(declare-fun lambda!78174 () Int)

(declare-fun order!14475 () Int)

(declare-fun dynLambda!11270 (Int Int) Int)

(declare-fun dynLambda!11271 (Int Int) Int)

(assert (=> b!2110728 (< (dynLambda!11270 order!14473 (toValue!5876 (transformation!4165 rule!236))) (dynLambda!11271 order!14475 lambda!78174))))

(declare-fun order!14477 () Int)

(declare-fun dynLambda!11272 (Int Int) Int)

(assert (=> b!2110728 (< (dynLambda!11272 order!14477 (toChars!5735 (transformation!4165 rule!236))) (dynLambda!11271 order!14475 lambda!78174))))

(declare-fun e!1342490 () Option!4861)

(declare-fun lt!792203 () tuple2!22764)

(assert (=> b!2110715 (= e!1342490 (Some!4860 (tuple2!22771 (Token!7813 (apply!5901 (transformation!4165 rule!236) (_1!13181 lt!792203)) rule!236 (size!18268 (_1!13181 lt!792203)) (list!9473 (_1!13181 lt!792203))) (_2!13181 lt!792203))))))

(declare-fun lt!792204 () List!23490)

(assert (=> b!2110715 (= lt!792204 (list!9473 input!1654))))

(declare-fun lt!792197 () Unit!37511)

(assert (=> b!2110715 (= lt!792197 (longestMatchIsAcceptedByMatchOrIsEmpty!577 (regex!4165 rule!236) lt!792204))))

(declare-fun res!916809 () Bool)

(assert (=> b!2110715 (= res!916809 (isEmpty!14303 (_1!13185 (findLongestMatchInner!593 (regex!4165 rule!236) Nil!23406 (size!18269 Nil!23406) lt!792204 lt!792204 (size!18269 lt!792204)))))))

(declare-fun e!1342488 () Bool)

(assert (=> b!2110715 (=> res!916809 e!1342488)))

(assert (=> b!2110715 e!1342488))

(declare-fun lt!792200 () Unit!37511)

(assert (=> b!2110715 (= lt!792200 lt!792197)))

(declare-fun lt!792201 () Unit!37511)

(declare-fun lemmaInv!787 (TokenValueInjection!8186) Unit!37511)

(assert (=> b!2110715 (= lt!792201 (lemmaInv!787 (transformation!4165 rule!236)))))

(declare-fun lt!792199 () Unit!37511)

(declare-fun ForallOf!479 (Int BalanceConc!15254) Unit!37511)

(assert (=> b!2110715 (= lt!792199 (ForallOf!479 lambda!78174 (_1!13181 lt!792203)))))

(declare-fun lt!792205 () Unit!37511)

(declare-fun seqFromList!2881 (List!23490) BalanceConc!15254)

(assert (=> b!2110715 (= lt!792205 (ForallOf!479 lambda!78174 (seqFromList!2881 (list!9473 (_1!13181 lt!792203)))))))

(declare-fun lt!792196 () Option!4861)

(assert (=> b!2110715 (= lt!792196 (Some!4860 (tuple2!22771 (Token!7813 (apply!5901 (transformation!4165 rule!236) (_1!13181 lt!792203)) rule!236 (size!18268 (_1!13181 lt!792203)) (list!9473 (_1!13181 lt!792203))) (_2!13181 lt!792203))))))

(declare-fun lt!792198 () Unit!37511)

(declare-fun lemmaEqSameImage!711 (TokenValueInjection!8186 BalanceConc!15254 BalanceConc!15254) Unit!37511)

(assert (=> b!2110715 (= lt!792198 (lemmaEqSameImage!711 (transformation!4165 rule!236) (_1!13181 lt!792203) (seqFromList!2881 (list!9473 (_1!13181 lt!792203)))))))

(declare-fun b!2110716 () Bool)

(assert (=> b!2110716 (= e!1342490 None!4860)))

(declare-fun b!2110717 () Bool)

(assert (=> b!2110717 (= e!1342488 (matchR!2728 (regex!4165 rule!236) (_1!13185 (findLongestMatchInner!593 (regex!4165 rule!236) Nil!23406 (size!18269 Nil!23406) lt!792204 lt!792204 (size!18269 lt!792204)))))))

(declare-fun b!2110718 () Bool)

(declare-fun e!1342491 () Bool)

(declare-fun e!1342492 () Bool)

(assert (=> b!2110718 (= e!1342491 e!1342492)))

(declare-fun res!916807 () Bool)

(assert (=> b!2110718 (=> (not res!916807) (not e!1342492))))

(declare-fun lt!792202 () Option!4861)

(declare-fun get!7271 (Option!4861) tuple2!22770)

(declare-datatypes ((tuple2!22772 0))(
  ( (tuple2!22773 (_1!13187 Token!7812) (_2!13187 List!23490)) )
))
(declare-datatypes ((Option!4862 0))(
  ( (None!4861) (Some!4861 (v!27938 tuple2!22772)) )
))
(declare-fun get!7272 (Option!4862) tuple2!22772)

(declare-fun maxPrefixOneRule!1298 (LexerInterface!3762 Rule!8130 List!23490) Option!4862)

(assert (=> b!2110718 (= res!916807 (= (_1!13186 (get!7271 lt!792202)) (_1!13187 (get!7272 (maxPrefixOneRule!1298 thiss!16399 rule!236 (list!9473 input!1654))))))))

(declare-fun b!2110719 () Bool)

(assert (=> b!2110719 (= e!1342492 (= (list!9473 (_2!13186 (get!7271 lt!792202))) (_2!13187 (get!7272 (maxPrefixOneRule!1298 thiss!16399 rule!236 (list!9473 input!1654))))))))

(declare-fun d!642300 () Bool)

(declare-fun e!1342489 () Bool)

(assert (=> d!642300 e!1342489))

(declare-fun res!916810 () Bool)

(assert (=> d!642300 (=> (not res!916810) (not e!1342489))))

(declare-fun isDefined!4075 (Option!4861) Bool)

(declare-fun isDefined!4076 (Option!4862) Bool)

(assert (=> d!642300 (= res!916810 (= (isDefined!4075 lt!792202) (isDefined!4076 (maxPrefixOneRule!1298 thiss!16399 rule!236 (list!9473 input!1654)))))))

(assert (=> d!642300 (= lt!792202 e!1342490)))

(declare-fun c!339096 () Bool)

(assert (=> d!642300 (= c!339096 (isEmpty!14302 (_1!13181 lt!792203)))))

(assert (=> d!642300 (= lt!792203 (findLongestMatchWithZipperSequenceV2!69 (regex!4165 rule!236) input!1654 totalInput!548))))

(assert (=> d!642300 (ruleValid!1287 thiss!16399 rule!236)))

(assert (=> d!642300 (= (maxPrefixOneRuleZipperSequenceV2!178 thiss!16399 rule!236 input!1654 totalInput!548) lt!792202)))

(declare-fun b!2110720 () Bool)

(assert (=> b!2110720 (= e!1342489 e!1342491)))

(declare-fun res!916808 () Bool)

(assert (=> b!2110720 (=> res!916808 e!1342491)))

(assert (=> b!2110720 (= res!916808 (not (isDefined!4075 lt!792202)))))

(assert (= (and d!642300 c!339096) b!2110716))

(assert (= (and d!642300 (not c!339096)) b!2110715))

(assert (= (and b!2110715 (not res!916809)) b!2110717))

(assert (= (and d!642300 res!916810) b!2110720))

(assert (= (and b!2110720 (not res!916808)) b!2110718))

(assert (= (and b!2110718 res!916807) b!2110719))

(declare-fun m!2567763 () Bool)

(assert (=> b!2110715 m!2567763))

(assert (=> b!2110715 m!2567745))

(declare-fun m!2567765 () Bool)

(assert (=> b!2110715 m!2567765))

(assert (=> b!2110715 m!2567705))

(declare-fun m!2567767 () Bool)

(assert (=> b!2110715 m!2567767))

(declare-fun m!2567769 () Bool)

(assert (=> b!2110715 m!2567769))

(declare-fun m!2567771 () Bool)

(assert (=> b!2110715 m!2567771))

(declare-fun m!2567773 () Bool)

(assert (=> b!2110715 m!2567773))

(declare-fun m!2567775 () Bool)

(assert (=> b!2110715 m!2567775))

(declare-fun m!2567777 () Bool)

(assert (=> b!2110715 m!2567777))

(assert (=> b!2110715 m!2567773))

(declare-fun m!2567779 () Bool)

(assert (=> b!2110715 m!2567779))

(assert (=> b!2110715 m!2567767))

(declare-fun m!2567781 () Bool)

(assert (=> b!2110715 m!2567781))

(assert (=> b!2110715 m!2567765))

(assert (=> b!2110715 m!2567773))

(declare-fun m!2567783 () Bool)

(assert (=> b!2110715 m!2567783))

(declare-fun m!2567785 () Bool)

(assert (=> b!2110715 m!2567785))

(assert (=> b!2110715 m!2567705))

(declare-fun m!2567787 () Bool)

(assert (=> b!2110720 m!2567787))

(declare-fun m!2567789 () Bool)

(assert (=> b!2110718 m!2567789))

(assert (=> b!2110718 m!2567745))

(assert (=> b!2110718 m!2567745))

(declare-fun m!2567791 () Bool)

(assert (=> b!2110718 m!2567791))

(assert (=> b!2110718 m!2567791))

(declare-fun m!2567793 () Bool)

(assert (=> b!2110718 m!2567793))

(assert (=> b!2110717 m!2567705))

(assert (=> b!2110717 m!2567767))

(assert (=> b!2110717 m!2567705))

(assert (=> b!2110717 m!2567767))

(assert (=> b!2110717 m!2567769))

(declare-fun m!2567795 () Bool)

(assert (=> b!2110717 m!2567795))

(assert (=> b!2110719 m!2567745))

(assert (=> b!2110719 m!2567791))

(assert (=> b!2110719 m!2567793))

(assert (=> b!2110719 m!2567789))

(declare-fun m!2567797 () Bool)

(assert (=> b!2110719 m!2567797))

(assert (=> b!2110719 m!2567745))

(assert (=> b!2110719 m!2567791))

(assert (=> d!642300 m!2567745))

(assert (=> d!642300 m!2567791))

(assert (=> d!642300 m!2567787))

(assert (=> d!642300 m!2567745))

(assert (=> d!642300 m!2567715))

(assert (=> d!642300 m!2567687))

(declare-fun m!2567799 () Bool)

(assert (=> d!642300 m!2567799))

(assert (=> d!642300 m!2567791))

(declare-fun m!2567801 () Bool)

(assert (=> d!642300 m!2567801))

(assert (=> b!2110684 d!642300))

(declare-fun d!642302 () Bool)

(declare-fun lt!792208 () Bool)

(assert (=> d!642302 (= lt!792208 (isEmpty!14303 (list!9473 (_1!13181 (_1!13184 lt!792171)))))))

(declare-fun isEmpty!14304 (Conc!7746) Bool)

(assert (=> d!642302 (= lt!792208 (isEmpty!14304 (c!339092 (_1!13181 (_1!13184 lt!792171)))))))

(assert (=> d!642302 (= (isEmpty!14302 (_1!13181 (_1!13184 lt!792171))) lt!792208)))

(declare-fun bs!441061 () Bool)

(assert (= bs!441061 d!642302))

(assert (=> bs!441061 m!2567701))

(assert (=> bs!441061 m!2567701))

(declare-fun m!2567803 () Bool)

(assert (=> bs!441061 m!2567803))

(declare-fun m!2567805 () Bool)

(assert (=> bs!441061 m!2567805))

(assert (=> b!2110684 d!642302))

(declare-fun d!642304 () Bool)

(declare-fun lt!792211 () Int)

(assert (=> d!642304 (= lt!792211 (size!18269 (list!9473 (_1!13181 (_1!13184 lt!792171)))))))

(declare-fun size!18270 (Conc!7746) Int)

(assert (=> d!642304 (= lt!792211 (size!18270 (c!339092 (_1!13181 (_1!13184 lt!792171)))))))

(assert (=> d!642304 (= (size!18268 (_1!13181 (_1!13184 lt!792171))) lt!792211)))

(declare-fun bs!441062 () Bool)

(assert (= bs!441062 d!642304))

(assert (=> bs!441062 m!2567701))

(assert (=> bs!441062 m!2567701))

(declare-fun m!2567807 () Bool)

(assert (=> bs!441062 m!2567807))

(declare-fun m!2567809 () Bool)

(assert (=> bs!441062 m!2567809))

(assert (=> b!2110698 d!642304))

(declare-fun d!642306 () Bool)

(assert (=> d!642306 (= (isEmpty!14303 (_1!13185 lt!792167)) ((_ is Nil!23406) (_1!13185 lt!792167)))))

(assert (=> b!2110698 d!642306))

(declare-fun d!642308 () Bool)

(declare-fun lt!792214 () Int)

(assert (=> d!642308 (>= lt!792214 0)))

(declare-fun e!1342501 () Int)

(assert (=> d!642308 (= lt!792214 e!1342501)))

(declare-fun c!339099 () Bool)

(assert (=> d!642308 (= c!339099 ((_ is Nil!23406) lt!792172))))

(assert (=> d!642308 (= (size!18269 lt!792172) lt!792214)))

(declare-fun b!2110733 () Bool)

(assert (=> b!2110733 (= e!1342501 0)))

(declare-fun b!2110734 () Bool)

(assert (=> b!2110734 (= e!1342501 (+ 1 (size!18269 (t!195995 lt!792172))))))

(assert (= (and d!642308 c!339099) b!2110733))

(assert (= (and d!642308 (not c!339099)) b!2110734))

(declare-fun m!2567811 () Bool)

(assert (=> b!2110734 m!2567811))

(assert (=> b!2110698 d!642308))

(declare-fun d!642310 () Bool)

(declare-fun lt!792215 () Int)

(assert (=> d!642310 (>= lt!792215 0)))

(declare-fun e!1342502 () Int)

(assert (=> d!642310 (= lt!792215 e!1342502)))

(declare-fun c!339100 () Bool)

(assert (=> d!642310 (= c!339100 ((_ is Nil!23406) Nil!23406))))

(assert (=> d!642310 (= (size!18269 Nil!23406) lt!792215)))

(declare-fun b!2110735 () Bool)

(assert (=> b!2110735 (= e!1342502 0)))

(declare-fun b!2110736 () Bool)

(assert (=> b!2110736 (= e!1342502 (+ 1 (size!18269 (t!195995 Nil!23406))))))

(assert (= (and d!642310 c!339100) b!2110735))

(assert (= (and d!642310 (not c!339100)) b!2110736))

(declare-fun m!2567813 () Bool)

(assert (=> b!2110736 m!2567813))

(assert (=> b!2110698 d!642310))

(declare-fun d!642312 () Bool)

(declare-fun dynLambda!11273 (Int BalanceConc!15254) TokenValue!4301)

(assert (=> d!642312 (= (apply!5901 (transformation!4165 rule!236) (_1!13181 (_1!13184 lt!792171))) (dynLambda!11273 (toValue!5876 (transformation!4165 rule!236)) (_1!13181 (_1!13184 lt!792171))))))

(declare-fun b_lambda!70365 () Bool)

(assert (=> (not b_lambda!70365) (not d!642312)))

(declare-fun t!195999 () Bool)

(declare-fun tb!132279 () Bool)

(assert (=> (and b!2110691 (= (toValue!5876 (transformation!4165 rule!236)) (toValue!5876 (transformation!4165 rule!236))) t!195999) tb!132279))

(declare-fun result!158634 () Bool)

(declare-fun inv!21 (TokenValue!4301) Bool)

(assert (=> tb!132279 (= result!158634 (inv!21 (dynLambda!11273 (toValue!5876 (transformation!4165 rule!236)) (_1!13181 (_1!13184 lt!792171)))))))

(declare-fun m!2567815 () Bool)

(assert (=> tb!132279 m!2567815))

(assert (=> d!642312 t!195999))

(declare-fun b_and!170535 () Bool)

(assert (= b_and!170529 (and (=> t!195999 result!158634) b_and!170535)))

(declare-fun m!2567817 () Bool)

(assert (=> d!642312 m!2567817))

(assert (=> b!2110698 d!642312))

(declare-fun bs!441063 () Bool)

(declare-fun d!642314 () Bool)

(assert (= bs!441063 (and d!642314 b!2110715)))

(declare-fun lambda!78177 () Int)

(assert (=> bs!441063 (= lambda!78177 lambda!78174)))

(declare-fun b!2110743 () Bool)

(declare-fun e!1342508 () Bool)

(assert (=> b!2110743 (= e!1342508 true)))

(assert (=> d!642314 e!1342508))

(assert (= d!642314 b!2110743))

(assert (=> b!2110743 (< (dynLambda!11270 order!14473 (toValue!5876 (transformation!4165 rule!236))) (dynLambda!11271 order!14475 lambda!78177))))

(assert (=> b!2110743 (< (dynLambda!11272 order!14477 (toChars!5735 (transformation!4165 rule!236))) (dynLambda!11271 order!14475 lambda!78177))))

(declare-fun dynLambda!11274 (Int TokenValue!4301) BalanceConc!15254)

(assert (=> d!642314 (= (list!9473 (dynLambda!11274 (toChars!5735 (transformation!4165 rule!236)) (dynLambda!11273 (toValue!5876 (transformation!4165 rule!236)) (_1!13181 (_1!13184 lt!792171))))) (list!9473 (_1!13181 (_1!13184 lt!792171))))))

(declare-fun lt!792218 () Unit!37511)

(assert (=> d!642314 (= lt!792218 (ForallOf!479 lambda!78177 (_1!13181 (_1!13184 lt!792171))))))

(assert (=> d!642314 (= (lemmaSemiInverse!991 (transformation!4165 rule!236) (_1!13181 (_1!13184 lt!792171))) lt!792218)))

(declare-fun b_lambda!70367 () Bool)

(assert (=> (not b_lambda!70367) (not d!642314)))

(declare-fun t!196001 () Bool)

(declare-fun tb!132281 () Bool)

(assert (=> (and b!2110691 (= (toChars!5735 (transformation!4165 rule!236)) (toChars!5735 (transformation!4165 rule!236))) t!196001) tb!132281))

(declare-fun tp!642302 () Bool)

(declare-fun b!2110748 () Bool)

(declare-fun e!1342511 () Bool)

(assert (=> b!2110748 (= e!1342511 (and (inv!30972 (c!339092 (dynLambda!11274 (toChars!5735 (transformation!4165 rule!236)) (dynLambda!11273 (toValue!5876 (transformation!4165 rule!236)) (_1!13181 (_1!13184 lt!792171)))))) tp!642302))))

(declare-fun result!158638 () Bool)

(assert (=> tb!132281 (= result!158638 (and (inv!30974 (dynLambda!11274 (toChars!5735 (transformation!4165 rule!236)) (dynLambda!11273 (toValue!5876 (transformation!4165 rule!236)) (_1!13181 (_1!13184 lt!792171))))) e!1342511))))

(assert (= tb!132281 b!2110748))

(declare-fun m!2567819 () Bool)

(assert (=> b!2110748 m!2567819))

(declare-fun m!2567821 () Bool)

(assert (=> tb!132281 m!2567821))

(assert (=> d!642314 t!196001))

(declare-fun b_and!170537 () Bool)

(assert (= b_and!170531 (and (=> t!196001 result!158638) b_and!170537)))

(declare-fun b_lambda!70369 () Bool)

(assert (=> (not b_lambda!70369) (not d!642314)))

(assert (=> d!642314 t!195999))

(declare-fun b_and!170539 () Bool)

(assert (= b_and!170535 (and (=> t!195999 result!158634) b_and!170539)))

(assert (=> d!642314 m!2567817))

(declare-fun m!2567823 () Bool)

(assert (=> d!642314 m!2567823))

(declare-fun m!2567825 () Bool)

(assert (=> d!642314 m!2567825))

(declare-fun m!2567827 () Bool)

(assert (=> d!642314 m!2567827))

(assert (=> d!642314 m!2567701))

(assert (=> d!642314 m!2567817))

(assert (=> d!642314 m!2567825))

(assert (=> b!2110698 d!642314))

(declare-fun d!642316 () Bool)

(declare-fun e!1342514 () Bool)

(assert (=> d!642316 e!1342514))

(declare-fun res!916813 () Bool)

(assert (=> d!642316 (=> res!916813 e!1342514)))

(assert (=> d!642316 (= res!916813 (isEmpty!14303 (_1!13185 (findLongestMatchInner!593 (regex!4165 rule!236) Nil!23406 (size!18269 Nil!23406) lt!792172 lt!792172 (size!18269 lt!792172)))))))

(declare-fun lt!792221 () Unit!37511)

(declare-fun choose!12642 (Regex!5601 List!23490) Unit!37511)

(assert (=> d!642316 (= lt!792221 (choose!12642 (regex!4165 rule!236) lt!792172))))

(declare-fun validRegex!2204 (Regex!5601) Bool)

(assert (=> d!642316 (validRegex!2204 (regex!4165 rule!236))))

(assert (=> d!642316 (= (longestMatchIsAcceptedByMatchOrIsEmpty!577 (regex!4165 rule!236) lt!792172) lt!792221)))

(declare-fun b!2110751 () Bool)

(assert (=> b!2110751 (= e!1342514 (matchR!2728 (regex!4165 rule!236) (_1!13185 (findLongestMatchInner!593 (regex!4165 rule!236) Nil!23406 (size!18269 Nil!23406) lt!792172 lt!792172 (size!18269 lt!792172)))))))

(assert (= (and d!642316 (not res!916813)) b!2110751))

(declare-fun m!2567829 () Bool)

(assert (=> d!642316 m!2567829))

(declare-fun m!2567831 () Bool)

(assert (=> d!642316 m!2567831))

(assert (=> d!642316 m!2567705))

(assert (=> d!642316 m!2567697))

(declare-fun m!2567833 () Bool)

(assert (=> d!642316 m!2567833))

(assert (=> d!642316 m!2567705))

(assert (=> d!642316 m!2567697))

(assert (=> d!642316 m!2567707))

(assert (=> b!2110751 m!2567705))

(assert (=> b!2110751 m!2567697))

(assert (=> b!2110751 m!2567705))

(assert (=> b!2110751 m!2567697))

(assert (=> b!2110751 m!2567707))

(declare-fun m!2567835 () Bool)

(assert (=> b!2110751 m!2567835))

(assert (=> b!2110698 d!642316))

(declare-fun d!642318 () Bool)

(assert (=> d!642318 (= (list!9473 (_1!13181 (_1!13184 lt!792171))) (list!9474 (c!339092 (_1!13181 (_1!13184 lt!792171)))))))

(declare-fun bs!441064 () Bool)

(assert (= bs!441064 d!642318))

(declare-fun m!2567837 () Bool)

(assert (=> bs!441064 m!2567837))

(assert (=> b!2110698 d!642318))

(declare-fun b!2110780 () Bool)

(declare-fun e!1342531 () Bool)

(declare-fun e!1342536 () Bool)

(assert (=> b!2110780 (= e!1342531 e!1342536)))

(declare-fun res!916819 () Bool)

(assert (=> b!2110780 (=> res!916819 e!1342536)))

(declare-fun lt!792305 () tuple2!22768)

(assert (=> b!2110780 (= res!916819 (isEmpty!14303 (_1!13185 lt!792305)))))

(declare-fun b!2110781 () Bool)

(declare-fun e!1342537 () tuple2!22768)

(assert (=> b!2110781 (= e!1342537 (tuple2!22769 Nil!23406 lt!792172))))

(declare-fun b!2110782 () Bool)

(declare-fun e!1342538 () Unit!37511)

(declare-fun Unit!37513 () Unit!37511)

(assert (=> b!2110782 (= e!1342538 Unit!37513)))

(declare-fun b!2110783 () Bool)

(declare-fun e!1342533 () tuple2!22768)

(assert (=> b!2110783 (= e!1342533 (tuple2!22769 Nil!23406 lt!792172))))

(declare-fun bm!128467 () Bool)

(declare-fun call!128477 () Regex!5601)

(declare-fun call!128475 () List!23490)

(declare-fun lt!792280 () List!23490)

(declare-fun call!128472 () tuple2!22768)

(assert (=> bm!128467 (= call!128472 (findLongestMatchInner!593 call!128477 lt!792280 (+ (size!18269 Nil!23406) 1) call!128475 lt!792172 (size!18269 lt!792172)))))

(declare-fun bm!128468 () Bool)

(declare-fun call!128473 () Bool)

(declare-fun nullable!1677 (Regex!5601) Bool)

(assert (=> bm!128468 (= call!128473 (nullable!1677 (regex!4165 rule!236)))))

(declare-fun b!2110784 () Bool)

(declare-fun Unit!37514 () Unit!37511)

(assert (=> b!2110784 (= e!1342538 Unit!37514)))

(declare-fun lt!792292 () Unit!37511)

(declare-fun call!128479 () Unit!37511)

(assert (=> b!2110784 (= lt!792292 call!128479)))

(declare-fun call!128476 () Bool)

(assert (=> b!2110784 call!128476))

(declare-fun lt!792289 () Unit!37511)

(assert (=> b!2110784 (= lt!792289 lt!792292)))

(declare-fun lt!792298 () Unit!37511)

(declare-fun call!128478 () Unit!37511)

(assert (=> b!2110784 (= lt!792298 call!128478)))

(assert (=> b!2110784 (= lt!792172 Nil!23406)))

(declare-fun lt!792284 () Unit!37511)

(assert (=> b!2110784 (= lt!792284 lt!792298)))

(assert (=> b!2110784 false))

(declare-fun b!2110785 () Bool)

(declare-fun c!339118 () Bool)

(assert (=> b!2110785 (= c!339118 call!128473)))

(declare-fun lt!792283 () Unit!37511)

(declare-fun lt!792291 () Unit!37511)

(assert (=> b!2110785 (= lt!792283 lt!792291)))

(assert (=> b!2110785 (= lt!792172 Nil!23406)))

(assert (=> b!2110785 (= lt!792291 call!128478)))

(declare-fun lt!792286 () Unit!37511)

(declare-fun lt!792288 () Unit!37511)

(assert (=> b!2110785 (= lt!792286 lt!792288)))

(assert (=> b!2110785 call!128476))

(assert (=> b!2110785 (= lt!792288 call!128479)))

(declare-fun e!1342535 () tuple2!22768)

(assert (=> b!2110785 (= e!1342535 e!1342533)))

(declare-fun bm!128469 () Bool)

(declare-fun call!128474 () C!11348)

(declare-fun head!4633 (List!23490) C!11348)

(assert (=> bm!128469 (= call!128474 (head!4633 lt!792172))))

(declare-fun b!2110786 () Bool)

(declare-fun e!1342534 () tuple2!22768)

(declare-fun e!1342532 () tuple2!22768)

(assert (=> b!2110786 (= e!1342534 e!1342532)))

(declare-fun lt!792281 () tuple2!22768)

(assert (=> b!2110786 (= lt!792281 call!128472)))

(declare-fun c!339116 () Bool)

(assert (=> b!2110786 (= c!339116 (isEmpty!14303 (_1!13185 lt!792281)))))

(declare-fun bm!128470 () Bool)

(declare-fun derivativeStep!1429 (Regex!5601 C!11348) Regex!5601)

(assert (=> bm!128470 (= call!128477 (derivativeStep!1429 (regex!4165 rule!236) call!128474))))

(declare-fun b!2110787 () Bool)

(assert (=> b!2110787 (= e!1342536 (>= (size!18269 (_1!13185 lt!792305)) (size!18269 Nil!23406)))))

(declare-fun bm!128471 () Bool)

(declare-fun isPrefix!2080 (List!23490 List!23490) Bool)

(assert (=> bm!128471 (= call!128476 (isPrefix!2080 lt!792172 lt!792172))))

(declare-fun b!2110788 () Bool)

(assert (=> b!2110788 (= e!1342532 lt!792281)))

(declare-fun b!2110789 () Bool)

(assert (=> b!2110789 (= e!1342533 (tuple2!22769 Nil!23406 Nil!23406))))

(declare-fun b!2110790 () Bool)

(declare-fun c!339119 () Bool)

(assert (=> b!2110790 (= c!339119 call!128473)))

(declare-fun lt!792278 () Unit!37511)

(declare-fun lt!792297 () Unit!37511)

(assert (=> b!2110790 (= lt!792278 lt!792297)))

(declare-fun lt!792296 () C!11348)

(declare-fun lt!792282 () List!23490)

(declare-fun ++!6310 (List!23490 List!23490) List!23490)

(assert (=> b!2110790 (= (++!6310 (++!6310 Nil!23406 (Cons!23406 lt!792296 Nil!23406)) lt!792282) lt!792172)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!496 (List!23490 C!11348 List!23490 List!23490) Unit!37511)

(assert (=> b!2110790 (= lt!792297 (lemmaMoveElementToOtherListKeepsConcatEq!496 Nil!23406 lt!792296 lt!792282 lt!792172))))

(declare-fun tail!3105 (List!23490) List!23490)

(assert (=> b!2110790 (= lt!792282 (tail!3105 lt!792172))))

(assert (=> b!2110790 (= lt!792296 (head!4633 lt!792172))))

(declare-fun lt!792295 () Unit!37511)

(declare-fun lt!792287 () Unit!37511)

(assert (=> b!2110790 (= lt!792295 lt!792287)))

(declare-fun getSuffix!1023 (List!23490 List!23490) List!23490)

(assert (=> b!2110790 (isPrefix!2080 (++!6310 Nil!23406 (Cons!23406 (head!4633 (getSuffix!1023 lt!792172 Nil!23406)) Nil!23406)) lt!792172)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!368 (List!23490 List!23490) Unit!37511)

(assert (=> b!2110790 (= lt!792287 (lemmaAddHeadSuffixToPrefixStillPrefix!368 Nil!23406 lt!792172))))

(declare-fun lt!792303 () Unit!37511)

(declare-fun lt!792304 () Unit!37511)

(assert (=> b!2110790 (= lt!792303 lt!792304)))

(assert (=> b!2110790 (= lt!792304 (lemmaAddHeadSuffixToPrefixStillPrefix!368 Nil!23406 lt!792172))))

(assert (=> b!2110790 (= lt!792280 (++!6310 Nil!23406 (Cons!23406 (head!4633 lt!792172) Nil!23406)))))

(declare-fun lt!792293 () Unit!37511)

(assert (=> b!2110790 (= lt!792293 e!1342538)))

(declare-fun c!339117 () Bool)

(assert (=> b!2110790 (= c!339117 (= (size!18269 Nil!23406) (size!18269 lt!792172)))))

(declare-fun lt!792302 () Unit!37511)

(declare-fun lt!792301 () Unit!37511)

(assert (=> b!2110790 (= lt!792302 lt!792301)))

(assert (=> b!2110790 (<= (size!18269 Nil!23406) (size!18269 lt!792172))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!171 (List!23490 List!23490) Unit!37511)

(assert (=> b!2110790 (= lt!792301 (lemmaIsPrefixThenSmallerEqSize!171 Nil!23406 lt!792172))))

(assert (=> b!2110790 (= e!1342535 e!1342534)))

(declare-fun bm!128472 () Bool)

(assert (=> bm!128472 (= call!128475 (tail!3105 lt!792172))))

(declare-fun bm!128473 () Bool)

(declare-fun lemmaIsPrefixRefl!1398 (List!23490 List!23490) Unit!37511)

(assert (=> bm!128473 (= call!128479 (lemmaIsPrefixRefl!1398 lt!792172 lt!792172))))

(declare-fun bm!128474 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!328 (List!23490 List!23490 List!23490) Unit!37511)

(assert (=> bm!128474 (= call!128478 (lemmaIsPrefixSameLengthThenSameList!328 lt!792172 Nil!23406 lt!792172))))

(declare-fun b!2110791 () Bool)

(assert (=> b!2110791 (= e!1342534 call!128472)))

(declare-fun d!642320 () Bool)

(assert (=> d!642320 e!1342531))

(declare-fun res!916818 () Bool)

(assert (=> d!642320 (=> (not res!916818) (not e!1342531))))

(assert (=> d!642320 (= res!916818 (= (++!6310 (_1!13185 lt!792305) (_2!13185 lt!792305)) lt!792172))))

(assert (=> d!642320 (= lt!792305 e!1342537)))

(declare-fun c!339114 () Bool)

(declare-fun lostCause!658 (Regex!5601) Bool)

(assert (=> d!642320 (= c!339114 (lostCause!658 (regex!4165 rule!236)))))

(declare-fun lt!792285 () Unit!37511)

(declare-fun Unit!37515 () Unit!37511)

(assert (=> d!642320 (= lt!792285 Unit!37515)))

(assert (=> d!642320 (= (getSuffix!1023 lt!792172 Nil!23406) lt!792172)))

(declare-fun lt!792279 () Unit!37511)

(declare-fun lt!792299 () Unit!37511)

(assert (=> d!642320 (= lt!792279 lt!792299)))

(declare-fun lt!792290 () List!23490)

(assert (=> d!642320 (= lt!792172 lt!792290)))

(declare-fun lemmaSamePrefixThenSameSuffix!943 (List!23490 List!23490 List!23490 List!23490 List!23490) Unit!37511)

(assert (=> d!642320 (= lt!792299 (lemmaSamePrefixThenSameSuffix!943 Nil!23406 lt!792172 Nil!23406 lt!792290 lt!792172))))

(assert (=> d!642320 (= lt!792290 (getSuffix!1023 lt!792172 Nil!23406))))

(declare-fun lt!792300 () Unit!37511)

(declare-fun lt!792294 () Unit!37511)

(assert (=> d!642320 (= lt!792300 lt!792294)))

(assert (=> d!642320 (isPrefix!2080 Nil!23406 (++!6310 Nil!23406 lt!792172))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1363 (List!23490 List!23490) Unit!37511)

(assert (=> d!642320 (= lt!792294 (lemmaConcatTwoListThenFirstIsPrefix!1363 Nil!23406 lt!792172))))

(assert (=> d!642320 (validRegex!2204 (regex!4165 rule!236))))

(assert (=> d!642320 (= (findLongestMatchInner!593 (regex!4165 rule!236) Nil!23406 (size!18269 Nil!23406) lt!792172 lt!792172 (size!18269 lt!792172)) lt!792305)))

(declare-fun b!2110792 () Bool)

(assert (=> b!2110792 (= e!1342532 (tuple2!22769 Nil!23406 lt!792172))))

(declare-fun b!2110793 () Bool)

(assert (=> b!2110793 (= e!1342537 e!1342535)))

(declare-fun c!339115 () Bool)

(assert (=> b!2110793 (= c!339115 (= (size!18269 Nil!23406) (size!18269 lt!792172)))))

(assert (= (and d!642320 c!339114) b!2110781))

(assert (= (and d!642320 (not c!339114)) b!2110793))

(assert (= (and b!2110793 c!339115) b!2110785))

(assert (= (and b!2110793 (not c!339115)) b!2110790))

(assert (= (and b!2110785 c!339118) b!2110789))

(assert (= (and b!2110785 (not c!339118)) b!2110783))

(assert (= (and b!2110790 c!339117) b!2110784))

(assert (= (and b!2110790 (not c!339117)) b!2110782))

(assert (= (and b!2110790 c!339119) b!2110786))

(assert (= (and b!2110790 (not c!339119)) b!2110791))

(assert (= (and b!2110786 c!339116) b!2110792))

(assert (= (and b!2110786 (not c!339116)) b!2110788))

(assert (= (or b!2110786 b!2110791) bm!128472))

(assert (= (or b!2110786 b!2110791) bm!128469))

(assert (= (or b!2110786 b!2110791) bm!128470))

(assert (= (or b!2110786 b!2110791) bm!128467))

(assert (= (or b!2110785 b!2110784) bm!128473))

(assert (= (or b!2110785 b!2110784) bm!128474))

(assert (= (or b!2110785 b!2110790) bm!128468))

(assert (= (or b!2110785 b!2110784) bm!128471))

(assert (= (and d!642320 res!916818) b!2110780))

(assert (= (and b!2110780 (not res!916819)) b!2110787))

(declare-fun m!2567839 () Bool)

(assert (=> b!2110786 m!2567839))

(declare-fun m!2567841 () Bool)

(assert (=> b!2110790 m!2567841))

(declare-fun m!2567843 () Bool)

(assert (=> b!2110790 m!2567843))

(declare-fun m!2567845 () Bool)

(assert (=> b!2110790 m!2567845))

(declare-fun m!2567847 () Bool)

(assert (=> b!2110790 m!2567847))

(assert (=> b!2110790 m!2567847))

(declare-fun m!2567849 () Bool)

(assert (=> b!2110790 m!2567849))

(assert (=> b!2110790 m!2567697))

(declare-fun m!2567851 () Bool)

(assert (=> b!2110790 m!2567851))

(declare-fun m!2567853 () Bool)

(assert (=> b!2110790 m!2567853))

(assert (=> b!2110790 m!2567845))

(declare-fun m!2567855 () Bool)

(assert (=> b!2110790 m!2567855))

(declare-fun m!2567857 () Bool)

(assert (=> b!2110790 m!2567857))

(declare-fun m!2567859 () Bool)

(assert (=> b!2110790 m!2567859))

(declare-fun m!2567861 () Bool)

(assert (=> b!2110790 m!2567861))

(declare-fun m!2567863 () Bool)

(assert (=> b!2110790 m!2567863))

(assert (=> b!2110790 m!2567705))

(assert (=> b!2110790 m!2567859))

(declare-fun m!2567865 () Bool)

(assert (=> bm!128471 m!2567865))

(assert (=> bm!128472 m!2567841))

(declare-fun m!2567867 () Bool)

(assert (=> b!2110780 m!2567867))

(declare-fun m!2567869 () Bool)

(assert (=> bm!128468 m!2567869))

(declare-fun m!2567871 () Bool)

(assert (=> d!642320 m!2567871))

(declare-fun m!2567873 () Bool)

(assert (=> d!642320 m!2567873))

(assert (=> d!642320 m!2567845))

(declare-fun m!2567875 () Bool)

(assert (=> d!642320 m!2567875))

(declare-fun m!2567877 () Bool)

(assert (=> d!642320 m!2567877))

(declare-fun m!2567879 () Bool)

(assert (=> d!642320 m!2567879))

(assert (=> d!642320 m!2567831))

(assert (=> d!642320 m!2567875))

(declare-fun m!2567881 () Bool)

(assert (=> d!642320 m!2567881))

(assert (=> bm!128469 m!2567857))

(declare-fun m!2567883 () Bool)

(assert (=> bm!128470 m!2567883))

(declare-fun m!2567885 () Bool)

(assert (=> bm!128473 m!2567885))

(declare-fun m!2567887 () Bool)

(assert (=> bm!128474 m!2567887))

(assert (=> bm!128467 m!2567697))

(declare-fun m!2567889 () Bool)

(assert (=> bm!128467 m!2567889))

(declare-fun m!2567891 () Bool)

(assert (=> b!2110787 m!2567891))

(assert (=> b!2110787 m!2567705))

(assert (=> b!2110698 d!642320))

(declare-fun b!2110822 () Bool)

(declare-fun res!916843 () Bool)

(declare-fun e!1342559 () Bool)

(assert (=> b!2110822 (=> (not res!916843) (not e!1342559))))

(declare-fun call!128482 () Bool)

(assert (=> b!2110822 (= res!916843 (not call!128482))))

(declare-fun b!2110823 () Bool)

(declare-fun e!1342556 () Bool)

(assert (=> b!2110823 (= e!1342556 (not (= (head!4633 (_1!13185 lt!792167)) (c!339091 (regex!4165 rule!236)))))))

(declare-fun b!2110824 () Bool)

(declare-fun res!916836 () Bool)

(assert (=> b!2110824 (=> (not res!916836) (not e!1342559))))

(assert (=> b!2110824 (= res!916836 (isEmpty!14303 (tail!3105 (_1!13185 lt!792167))))))

(declare-fun b!2110825 () Bool)

(declare-fun res!916837 () Bool)

(declare-fun e!1342558 () Bool)

(assert (=> b!2110825 (=> res!916837 e!1342558)))

(assert (=> b!2110825 (= res!916837 e!1342559)))

(declare-fun res!916841 () Bool)

(assert (=> b!2110825 (=> (not res!916841) (not e!1342559))))

(declare-fun lt!792308 () Bool)

(assert (=> b!2110825 (= res!916841 lt!792308)))

(declare-fun b!2110826 () Bool)

(declare-fun e!1342554 () Bool)

(declare-fun e!1342555 () Bool)

(assert (=> b!2110826 (= e!1342554 e!1342555)))

(declare-fun c!339126 () Bool)

(assert (=> b!2110826 (= c!339126 ((_ is EmptyLang!5601) (regex!4165 rule!236)))))

(declare-fun b!2110827 () Bool)

(assert (=> b!2110827 (= e!1342554 (= lt!792308 call!128482))))

(declare-fun bm!128477 () Bool)

(assert (=> bm!128477 (= call!128482 (isEmpty!14303 (_1!13185 lt!792167)))))

(declare-fun b!2110829 () Bool)

(declare-fun e!1342553 () Bool)

(assert (=> b!2110829 (= e!1342558 e!1342553)))

(declare-fun res!916839 () Bool)

(assert (=> b!2110829 (=> (not res!916839) (not e!1342553))))

(assert (=> b!2110829 (= res!916839 (not lt!792308))))

(declare-fun b!2110830 () Bool)

(declare-fun res!916842 () Bool)

(assert (=> b!2110830 (=> res!916842 e!1342556)))

(assert (=> b!2110830 (= res!916842 (not (isEmpty!14303 (tail!3105 (_1!13185 lt!792167)))))))

(declare-fun b!2110831 () Bool)

(assert (=> b!2110831 (= e!1342555 (not lt!792308))))

(declare-fun b!2110832 () Bool)

(assert (=> b!2110832 (= e!1342559 (= (head!4633 (_1!13185 lt!792167)) (c!339091 (regex!4165 rule!236))))))

(declare-fun b!2110833 () Bool)

(declare-fun e!1342557 () Bool)

(assert (=> b!2110833 (= e!1342557 (nullable!1677 (regex!4165 rule!236)))))

(declare-fun b!2110834 () Bool)

(declare-fun res!916838 () Bool)

(assert (=> b!2110834 (=> res!916838 e!1342558)))

(assert (=> b!2110834 (= res!916838 (not ((_ is ElementMatch!5601) (regex!4165 rule!236))))))

(assert (=> b!2110834 (= e!1342555 e!1342558)))

(declare-fun b!2110835 () Bool)

(assert (=> b!2110835 (= e!1342553 e!1342556)))

(declare-fun res!916840 () Bool)

(assert (=> b!2110835 (=> res!916840 e!1342556)))

(assert (=> b!2110835 (= res!916840 call!128482)))

(declare-fun d!642322 () Bool)

(assert (=> d!642322 e!1342554))

(declare-fun c!339127 () Bool)

(assert (=> d!642322 (= c!339127 ((_ is EmptyExpr!5601) (regex!4165 rule!236)))))

(assert (=> d!642322 (= lt!792308 e!1342557)))

(declare-fun c!339128 () Bool)

(assert (=> d!642322 (= c!339128 (isEmpty!14303 (_1!13185 lt!792167)))))

(assert (=> d!642322 (validRegex!2204 (regex!4165 rule!236))))

(assert (=> d!642322 (= (matchR!2728 (regex!4165 rule!236) (_1!13185 lt!792167)) lt!792308)))

(declare-fun b!2110828 () Bool)

(assert (=> b!2110828 (= e!1342557 (matchR!2728 (derivativeStep!1429 (regex!4165 rule!236) (head!4633 (_1!13185 lt!792167))) (tail!3105 (_1!13185 lt!792167))))))

(assert (= (and d!642322 c!339128) b!2110833))

(assert (= (and d!642322 (not c!339128)) b!2110828))

(assert (= (and d!642322 c!339127) b!2110827))

(assert (= (and d!642322 (not c!339127)) b!2110826))

(assert (= (and b!2110826 c!339126) b!2110831))

(assert (= (and b!2110826 (not c!339126)) b!2110834))

(assert (= (and b!2110834 (not res!916838)) b!2110825))

(assert (= (and b!2110825 res!916841) b!2110822))

(assert (= (and b!2110822 res!916843) b!2110824))

(assert (= (and b!2110824 res!916836) b!2110832))

(assert (= (and b!2110825 (not res!916837)) b!2110829))

(assert (= (and b!2110829 res!916839) b!2110835))

(assert (= (and b!2110835 (not res!916840)) b!2110830))

(assert (= (and b!2110830 (not res!916842)) b!2110823))

(assert (= (or b!2110827 b!2110822 b!2110835) bm!128477))

(declare-fun m!2567893 () Bool)

(assert (=> b!2110823 m!2567893))

(assert (=> b!2110828 m!2567893))

(assert (=> b!2110828 m!2567893))

(declare-fun m!2567895 () Bool)

(assert (=> b!2110828 m!2567895))

(declare-fun m!2567897 () Bool)

(assert (=> b!2110828 m!2567897))

(assert (=> b!2110828 m!2567895))

(assert (=> b!2110828 m!2567897))

(declare-fun m!2567899 () Bool)

(assert (=> b!2110828 m!2567899))

(assert (=> b!2110824 m!2567897))

(assert (=> b!2110824 m!2567897))

(declare-fun m!2567901 () Bool)

(assert (=> b!2110824 m!2567901))

(assert (=> d!642322 m!2567711))

(assert (=> d!642322 m!2567831))

(assert (=> b!2110832 m!2567893))

(assert (=> b!2110833 m!2567869))

(assert (=> bm!128477 m!2567711))

(assert (=> b!2110830 m!2567897))

(assert (=> b!2110830 m!2567897))

(assert (=> b!2110830 m!2567901))

(assert (=> b!2110680 d!642322))

(declare-fun d!642324 () Bool)

(declare-fun validCacheMapDown!232 (MutableMap!2219) Bool)

(assert (=> d!642324 (= (valid!1819 (_3!1800 lt!792171)) (validCacheMapDown!232 (cache!2600 (_3!1800 lt!792171))))))

(declare-fun bs!441065 () Bool)

(assert (= bs!441065 d!642324))

(declare-fun m!2567903 () Bool)

(assert (=> bs!441065 m!2567903))

(assert (=> b!2110671 d!642324))

(declare-fun d!642326 () Bool)

(assert (=> d!642326 (= (valid!1819 cacheDown!753) (validCacheMapDown!232 (cache!2600 cacheDown!753)))))

(declare-fun bs!441066 () Bool)

(assert (= bs!441066 d!642326))

(declare-fun m!2567905 () Bool)

(assert (=> bs!441066 m!2567905))

(assert (=> b!2110690 d!642326))

(declare-fun d!642328 () Bool)

(assert (=> d!642328 (= (array_inv!2538 (_keys!2601 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) (bvsge (size!18264 (_keys!2601 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110686 d!642328))

(declare-fun d!642330 () Bool)

(assert (=> d!642330 (= (array_inv!2540 (_values!2584 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) (bvsge (size!18265 (_values!2584 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110686 d!642330))

(declare-fun d!642332 () Bool)

(declare-fun res!916846 () Bool)

(declare-fun e!1342562 () Bool)

(assert (=> d!642332 (=> (not res!916846) (not e!1342562))))

(assert (=> d!642332 (= res!916846 ((_ is HashMap!2219) (cache!2600 cacheDown!753)))))

(assert (=> d!642332 (= (inv!30973 cacheDown!753) e!1342562)))

(declare-fun b!2110838 () Bool)

(assert (=> b!2110838 (= e!1342562 (validCacheMapDown!232 (cache!2600 cacheDown!753)))))

(assert (= (and d!642332 res!916846) b!2110838))

(assert (=> b!2110838 m!2567905))

(assert (=> start!206380 d!642332))

(declare-fun d!642334 () Bool)

(declare-fun isBalanced!2438 (Conc!7746) Bool)

(assert (=> d!642334 (= (inv!30974 input!1654) (isBalanced!2438 (c!339092 input!1654)))))

(declare-fun bs!441067 () Bool)

(assert (= bs!441067 d!642334))

(declare-fun m!2567907 () Bool)

(assert (=> bs!441067 m!2567907))

(assert (=> start!206380 d!642334))

(declare-fun d!642336 () Bool)

(assert (=> d!642336 (= (inv!30974 totalInput!548) (isBalanced!2438 (c!339092 totalInput!548)))))

(declare-fun bs!441068 () Bool)

(assert (= bs!441068 d!642336))

(declare-fun m!2567909 () Bool)

(assert (=> bs!441068 m!2567909))

(assert (=> start!206380 d!642336))

(declare-fun d!642338 () Bool)

(declare-fun res!916849 () Bool)

(declare-fun e!1342565 () Bool)

(assert (=> d!642338 (=> (not res!916849) (not e!1342565))))

(assert (=> d!642338 (= res!916849 ((_ is HashMap!2218) (cache!2599 cacheUp!740)))))

(assert (=> d!642338 (= (inv!30975 cacheUp!740) e!1342565)))

(declare-fun b!2110841 () Bool)

(declare-fun validCacheMapUp!234 (MutableMap!2218) Bool)

(assert (=> b!2110841 (= e!1342565 (validCacheMapUp!234 (cache!2599 cacheUp!740)))))

(assert (= (and d!642338 res!916849) b!2110841))

(declare-fun m!2567911 () Bool)

(assert (=> b!2110841 m!2567911))

(assert (=> start!206380 d!642338))

(declare-fun d!642340 () Bool)

(assert (=> d!642340 (= (valid!1820 cacheUp!740) (validCacheMapUp!234 (cache!2599 cacheUp!740)))))

(declare-fun bs!441069 () Bool)

(assert (= bs!441069 d!642340))

(assert (=> bs!441069 m!2567911))

(assert (=> b!2110687 d!642340))

(declare-fun d!642342 () Bool)

(assert (=> d!642342 (= (inv!30967 (tag!4655 rule!236)) (= (mod (str.len (value!130333 (tag!4655 rule!236))) 2) 0))))

(assert (=> b!2110696 d!642342))

(declare-fun d!642344 () Bool)

(declare-fun res!916852 () Bool)

(declare-fun e!1342568 () Bool)

(assert (=> d!642344 (=> (not res!916852) (not e!1342568))))

(declare-fun semiInverseModEq!1664 (Int Int) Bool)

(assert (=> d!642344 (= res!916852 (semiInverseModEq!1664 (toChars!5735 (transformation!4165 rule!236)) (toValue!5876 (transformation!4165 rule!236))))))

(assert (=> d!642344 (= (inv!30976 (transformation!4165 rule!236)) e!1342568)))

(declare-fun b!2110844 () Bool)

(declare-fun equivClasses!1591 (Int Int) Bool)

(assert (=> b!2110844 (= e!1342568 (equivClasses!1591 (toChars!5735 (transformation!4165 rule!236)) (toValue!5876 (transformation!4165 rule!236))))))

(assert (= (and d!642344 res!916852) b!2110844))

(declare-fun m!2567913 () Bool)

(assert (=> d!642344 m!2567913))

(declare-fun m!2567915 () Bool)

(assert (=> b!2110844 m!2567915))

(assert (=> b!2110696 d!642344))

(declare-fun d!642346 () Bool)

(assert (=> d!642346 (= (valid!1820 (_2!13184 lt!792171)) (validCacheMapUp!234 (cache!2599 (_2!13184 lt!792171))))))

(declare-fun bs!441070 () Bool)

(assert (= bs!441070 d!642346))

(declare-fun m!2567917 () Bool)

(assert (=> bs!441070 m!2567917))

(assert (=> b!2110697 d!642346))

(declare-fun d!642348 () Bool)

(declare-fun c!339131 () Bool)

(assert (=> d!642348 (= c!339131 ((_ is Node!7746) (c!339092 totalInput!548)))))

(declare-fun e!1342573 () Bool)

(assert (=> d!642348 (= (inv!30972 (c!339092 totalInput!548)) e!1342573)))

(declare-fun b!2110851 () Bool)

(declare-fun inv!30977 (Conc!7746) Bool)

(assert (=> b!2110851 (= e!1342573 (inv!30977 (c!339092 totalInput!548)))))

(declare-fun b!2110852 () Bool)

(declare-fun e!1342574 () Bool)

(assert (=> b!2110852 (= e!1342573 e!1342574)))

(declare-fun res!916855 () Bool)

(assert (=> b!2110852 (= res!916855 (not ((_ is Leaf!11314) (c!339092 totalInput!548))))))

(assert (=> b!2110852 (=> res!916855 e!1342574)))

(declare-fun b!2110853 () Bool)

(declare-fun inv!30978 (Conc!7746) Bool)

(assert (=> b!2110853 (= e!1342574 (inv!30978 (c!339092 totalInput!548)))))

(assert (= (and d!642348 c!339131) b!2110851))

(assert (= (and d!642348 (not c!339131)) b!2110852))

(assert (= (and b!2110852 (not res!916855)) b!2110853))

(declare-fun m!2567919 () Bool)

(assert (=> b!2110851 m!2567919))

(declare-fun m!2567921 () Bool)

(assert (=> b!2110853 m!2567921))

(assert (=> b!2110693 d!642348))

(declare-fun d!642350 () Bool)

(declare-fun c!339132 () Bool)

(assert (=> d!642350 (= c!339132 ((_ is Node!7746) (c!339092 input!1654)))))

(declare-fun e!1342575 () Bool)

(assert (=> d!642350 (= (inv!30972 (c!339092 input!1654)) e!1342575)))

(declare-fun b!2110854 () Bool)

(assert (=> b!2110854 (= e!1342575 (inv!30977 (c!339092 input!1654)))))

(declare-fun b!2110855 () Bool)

(declare-fun e!1342576 () Bool)

(assert (=> b!2110855 (= e!1342575 e!1342576)))

(declare-fun res!916856 () Bool)

(assert (=> b!2110855 (= res!916856 (not ((_ is Leaf!11314) (c!339092 input!1654))))))

(assert (=> b!2110855 (=> res!916856 e!1342576)))

(declare-fun b!2110856 () Bool)

(assert (=> b!2110856 (= e!1342576 (inv!30978 (c!339092 input!1654)))))

(assert (= (and d!642350 c!339132) b!2110854))

(assert (= (and d!642350 (not c!339132)) b!2110855))

(assert (= (and b!2110855 (not res!916856)) b!2110856))

(declare-fun m!2567923 () Bool)

(assert (=> b!2110854 m!2567923))

(declare-fun m!2567925 () Bool)

(assert (=> b!2110856 m!2567925))

(assert (=> b!2110675 d!642350))

(declare-fun d!642352 () Bool)

(declare-fun lt!792311 () tuple2!22764)

(declare-fun findLongestMatch!501 (Regex!5601 List!23490) tuple2!22768)

(assert (=> d!642352 (= (tuple2!22769 (list!9473 (_1!13181 lt!792311)) (list!9473 (_2!13181 lt!792311))) (findLongestMatch!501 (regex!4165 rule!236) (list!9473 input!1654)))))

(declare-fun choose!12643 (Regex!5601 BalanceConc!15254 BalanceConc!15254) tuple2!22764)

(assert (=> d!642352 (= lt!792311 (choose!12643 (regex!4165 rule!236) input!1654 totalInput!548))))

(assert (=> d!642352 (validRegex!2204 (regex!4165 rule!236))))

(assert (=> d!642352 (= (findLongestMatchWithZipperSequenceV2!69 (regex!4165 rule!236) input!1654 totalInput!548) lt!792311)))

(declare-fun bs!441071 () Bool)

(assert (= bs!441071 d!642352))

(declare-fun m!2567927 () Bool)

(assert (=> bs!441071 m!2567927))

(assert (=> bs!441071 m!2567831))

(declare-fun m!2567929 () Bool)

(assert (=> bs!441071 m!2567929))

(assert (=> bs!441071 m!2567745))

(assert (=> bs!441071 m!2567745))

(declare-fun m!2567931 () Bool)

(assert (=> bs!441071 m!2567931))

(declare-fun m!2567933 () Bool)

(assert (=> bs!441071 m!2567933))

(assert (=> b!2110685 d!642352))

(declare-fun d!642354 () Bool)

(declare-fun e!1342579 () Bool)

(assert (=> d!642354 e!1342579))

(declare-fun res!916861 () Bool)

(assert (=> d!642354 (=> (not res!916861) (not e!1342579))))

(declare-fun lt!792314 () tuple3!2672)

(assert (=> d!642354 (= res!916861 (= (_1!13184 lt!792314) (findLongestMatchWithZipperSequenceV2!69 (regex!4165 rule!236) input!1654 totalInput!548)))))

(declare-fun choose!12644 (Regex!5601 BalanceConc!15254 BalanceConc!15254 CacheUp!1514 CacheDown!1516) tuple3!2672)

(assert (=> d!642354 (= lt!792314 (choose!12644 (regex!4165 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(assert (=> d!642354 (validRegex!2204 (regex!4165 rule!236))))

(assert (=> d!642354 (= (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!43 (regex!4165 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753) lt!792314)))

(declare-fun b!2110861 () Bool)

(declare-fun res!916862 () Bool)

(assert (=> b!2110861 (=> (not res!916862) (not e!1342579))))

(assert (=> b!2110861 (= res!916862 (valid!1819 (_3!1800 lt!792314)))))

(declare-fun b!2110862 () Bool)

(assert (=> b!2110862 (= e!1342579 (valid!1820 (_2!13184 lt!792314)))))

(assert (= (and d!642354 res!916861) b!2110861))

(assert (= (and b!2110861 res!916862) b!2110862))

(assert (=> d!642354 m!2567715))

(declare-fun m!2567935 () Bool)

(assert (=> d!642354 m!2567935))

(assert (=> d!642354 m!2567831))

(declare-fun m!2567937 () Bool)

(assert (=> b!2110861 m!2567937))

(declare-fun m!2567939 () Bool)

(assert (=> b!2110862 m!2567939))

(assert (=> b!2110685 d!642354))

(declare-fun d!642356 () Bool)

(declare-fun res!916867 () Bool)

(declare-fun e!1342582 () Bool)

(assert (=> d!642356 (=> (not res!916867) (not e!1342582))))

(assert (=> d!642356 (= res!916867 (validRegex!2204 (regex!4165 rule!236)))))

(assert (=> d!642356 (= (ruleValid!1287 thiss!16399 rule!236) e!1342582)))

(declare-fun b!2110867 () Bool)

(declare-fun res!916868 () Bool)

(assert (=> b!2110867 (=> (not res!916868) (not e!1342582))))

(assert (=> b!2110867 (= res!916868 (not (nullable!1677 (regex!4165 rule!236))))))

(declare-fun b!2110868 () Bool)

(assert (=> b!2110868 (= e!1342582 (not (= (tag!4655 rule!236) (String!26714 ""))))))

(assert (= (and d!642356 res!916867) b!2110867))

(assert (= (and b!2110867 res!916868) b!2110868))

(assert (=> d!642356 m!2567831))

(assert (=> b!2110867 m!2567869))

(assert (=> b!2110694 d!642356))

(declare-fun e!1342589 () Bool)

(assert (=> b!2110672 (= tp!642294 e!1342589)))

(declare-fun b!2110877 () Bool)

(declare-fun e!1342591 () Bool)

(declare-fun tp!642313 () Bool)

(assert (=> b!2110877 (= e!1342591 tp!642313)))

(declare-fun b!2110878 () Bool)

(declare-fun e!1342590 () Bool)

(declare-fun tp!642314 () Bool)

(assert (=> b!2110878 (= e!1342590 tp!642314)))

(declare-fun tp_is_empty!9391 () Bool)

(declare-fun setRes!14084 () Bool)

(declare-fun tp!642316 () Bool)

(declare-fun b!2110879 () Bool)

(declare-fun tp!642315 () Bool)

(declare-fun inv!30979 (Context!2342) Bool)

(assert (=> b!2110879 (= e!1342589 (and tp!642315 (inv!30979 (_2!13182 (_1!13183 (h!28808 mapDefault!11121)))) e!1342590 tp_is_empty!9391 setRes!14084 tp!642316))))

(declare-fun condSetEmpty!14084 () Bool)

(assert (=> b!2110879 (= condSetEmpty!14084 (= (_2!13183 (h!28808 mapDefault!11121)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun tp!642317 () Bool)

(declare-fun setNonEmpty!14084 () Bool)

(declare-fun setElem!14084 () Context!2342)

(assert (=> setNonEmpty!14084 (= setRes!14084 (and tp!642317 (inv!30979 setElem!14084) e!1342591))))

(declare-fun setRest!14084 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14084 (= (_2!13183 (h!28808 mapDefault!11121)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14084 true) setRest!14084))))

(declare-fun setIsEmpty!14084 () Bool)

(assert (=> setIsEmpty!14084 setRes!14084))

(assert (= b!2110879 b!2110878))

(assert (= (and b!2110879 condSetEmpty!14084) setIsEmpty!14084))

(assert (= (and b!2110879 (not condSetEmpty!14084)) setNonEmpty!14084))

(assert (= setNonEmpty!14084 b!2110877))

(assert (= (and b!2110672 ((_ is Cons!23407) mapDefault!11121)) b!2110879))

(declare-fun m!2567941 () Bool)

(assert (=> b!2110879 m!2567941))

(declare-fun m!2567943 () Bool)

(assert (=> setNonEmpty!14084 m!2567943))

(declare-fun setIsEmpty!14087 () Bool)

(declare-fun setRes!14087 () Bool)

(assert (=> setIsEmpty!14087 setRes!14087))

(declare-fun b!2110888 () Bool)

(declare-fun e!1342598 () Bool)

(declare-fun tp!642328 () Bool)

(assert (=> b!2110888 (= e!1342598 tp!642328)))

(declare-fun e!1342599 () Bool)

(declare-fun e!1342600 () Bool)

(declare-fun tp!642329 () Bool)

(declare-fun b!2110889 () Bool)

(assert (=> b!2110889 (= e!1342599 (and (inv!30979 (_1!13179 (_1!13180 (h!28806 (zeroValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))))) e!1342600 tp_is_empty!9391 setRes!14087 tp!642329))))

(declare-fun condSetEmpty!14087 () Bool)

(assert (=> b!2110889 (= condSetEmpty!14087 (= (_2!13180 (h!28806 (zeroValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setNonEmpty!14087 () Bool)

(declare-fun setElem!14087 () Context!2342)

(declare-fun tp!642327 () Bool)

(assert (=> setNonEmpty!14087 (= setRes!14087 (and tp!642327 (inv!30979 setElem!14087) e!1342598))))

(declare-fun setRest!14087 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14087 (= (_2!13180 (h!28806 (zeroValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14087 true) setRest!14087))))

(assert (=> b!2110686 (= tp!642285 e!1342599)))

(declare-fun b!2110890 () Bool)

(declare-fun tp!642326 () Bool)

(assert (=> b!2110890 (= e!1342600 tp!642326)))

(assert (= b!2110889 b!2110890))

(assert (= (and b!2110889 condSetEmpty!14087) setIsEmpty!14087))

(assert (= (and b!2110889 (not condSetEmpty!14087)) setNonEmpty!14087))

(assert (= setNonEmpty!14087 b!2110888))

(assert (= (and b!2110686 ((_ is Cons!23405) (zeroValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))) b!2110889))

(declare-fun m!2567945 () Bool)

(assert (=> b!2110889 m!2567945))

(declare-fun m!2567947 () Bool)

(assert (=> setNonEmpty!14087 m!2567947))

(declare-fun setIsEmpty!14088 () Bool)

(declare-fun setRes!14088 () Bool)

(assert (=> setIsEmpty!14088 setRes!14088))

(declare-fun b!2110891 () Bool)

(declare-fun e!1342601 () Bool)

(declare-fun tp!642332 () Bool)

(assert (=> b!2110891 (= e!1342601 tp!642332)))

(declare-fun tp!642333 () Bool)

(declare-fun e!1342603 () Bool)

(declare-fun e!1342602 () Bool)

(declare-fun b!2110892 () Bool)

(assert (=> b!2110892 (= e!1342602 (and (inv!30979 (_1!13179 (_1!13180 (h!28806 (minValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))))) e!1342603 tp_is_empty!9391 setRes!14088 tp!642333))))

(declare-fun condSetEmpty!14088 () Bool)

(assert (=> b!2110892 (= condSetEmpty!14088 (= (_2!13180 (h!28806 (minValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setElem!14088 () Context!2342)

(declare-fun setNonEmpty!14088 () Bool)

(declare-fun tp!642331 () Bool)

(assert (=> setNonEmpty!14088 (= setRes!14088 (and tp!642331 (inv!30979 setElem!14088) e!1342601))))

(declare-fun setRest!14088 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14088 (= (_2!13180 (h!28806 (minValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14088 true) setRest!14088))))

(assert (=> b!2110686 (= tp!642282 e!1342602)))

(declare-fun b!2110893 () Bool)

(declare-fun tp!642330 () Bool)

(assert (=> b!2110893 (= e!1342603 tp!642330)))

(assert (= b!2110892 b!2110893))

(assert (= (and b!2110892 condSetEmpty!14088) setIsEmpty!14088))

(assert (= (and b!2110892 (not condSetEmpty!14088)) setNonEmpty!14088))

(assert (= setNonEmpty!14088 b!2110891))

(assert (= (and b!2110686 ((_ is Cons!23405) (minValue!2562 (v!27933 (underlying!4803 (v!27934 (underlying!4804 (cache!2599 cacheUp!740)))))))) b!2110892))

(declare-fun m!2567949 () Bool)

(assert (=> b!2110892 m!2567949))

(declare-fun m!2567951 () Bool)

(assert (=> setNonEmpty!14088 m!2567951))

(declare-fun setIsEmpty!14089 () Bool)

(declare-fun setRes!14089 () Bool)

(assert (=> setIsEmpty!14089 setRes!14089))

(declare-fun b!2110894 () Bool)

(declare-fun e!1342604 () Bool)

(declare-fun tp!642336 () Bool)

(assert (=> b!2110894 (= e!1342604 tp!642336)))

(declare-fun e!1342606 () Bool)

(declare-fun e!1342605 () Bool)

(declare-fun b!2110895 () Bool)

(declare-fun tp!642337 () Bool)

(assert (=> b!2110895 (= e!1342605 (and (inv!30979 (_1!13179 (_1!13180 (h!28806 mapDefault!11120)))) e!1342606 tp_is_empty!9391 setRes!14089 tp!642337))))

(declare-fun condSetEmpty!14089 () Bool)

(assert (=> b!2110895 (= condSetEmpty!14089 (= (_2!13180 (h!28806 mapDefault!11120)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setNonEmpty!14089 () Bool)

(declare-fun tp!642335 () Bool)

(declare-fun setElem!14089 () Context!2342)

(assert (=> setNonEmpty!14089 (= setRes!14089 (and tp!642335 (inv!30979 setElem!14089) e!1342604))))

(declare-fun setRest!14089 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14089 (= (_2!13180 (h!28806 mapDefault!11120)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14089 true) setRest!14089))))

(assert (=> b!2110677 (= tp!642293 e!1342605)))

(declare-fun b!2110896 () Bool)

(declare-fun tp!642334 () Bool)

(assert (=> b!2110896 (= e!1342606 tp!642334)))

(assert (= b!2110895 b!2110896))

(assert (= (and b!2110895 condSetEmpty!14089) setIsEmpty!14089))

(assert (= (and b!2110895 (not condSetEmpty!14089)) setNonEmpty!14089))

(assert (= setNonEmpty!14089 b!2110894))

(assert (= (and b!2110677 ((_ is Cons!23405) mapDefault!11120)) b!2110895))

(declare-fun m!2567953 () Bool)

(assert (=> b!2110895 m!2567953))

(declare-fun m!2567955 () Bool)

(assert (=> setNonEmpty!14089 m!2567955))

(declare-fun e!1342624 () Bool)

(declare-fun setRes!14094 () Bool)

(declare-fun b!2110911 () Bool)

(declare-fun mapValue!11124 () List!23489)

(declare-fun tp!642364 () Bool)

(declare-fun e!1342621 () Bool)

(assert (=> b!2110911 (= e!1342621 (and (inv!30979 (_1!13179 (_1!13180 (h!28806 mapValue!11124)))) e!1342624 tp_is_empty!9391 setRes!14094 tp!642364))))

(declare-fun condSetEmpty!14094 () Bool)

(assert (=> b!2110911 (= condSetEmpty!14094 (= (_2!13180 (h!28806 mapValue!11124)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun b!2110912 () Bool)

(declare-fun e!1342623 () Bool)

(declare-fun tp!642359 () Bool)

(assert (=> b!2110912 (= e!1342623 tp!642359)))

(declare-fun condMapEmpty!11124 () Bool)

(declare-fun mapDefault!11124 () List!23489)

(assert (=> mapNonEmpty!11120 (= condMapEmpty!11124 (= mapRest!11121 ((as const (Array (_ BitVec 32) List!23489)) mapDefault!11124)))))

(declare-fun e!1342619 () Bool)

(declare-fun mapRes!11124 () Bool)

(assert (=> mapNonEmpty!11120 (= tp!642290 (and e!1342619 mapRes!11124))))

(declare-fun setIsEmpty!14094 () Bool)

(declare-fun setRes!14095 () Bool)

(assert (=> setIsEmpty!14094 setRes!14095))

(declare-fun setIsEmpty!14095 () Bool)

(assert (=> setIsEmpty!14095 setRes!14094))

(declare-fun b!2110913 () Bool)

(declare-fun tp!642356 () Bool)

(assert (=> b!2110913 (= e!1342619 (and (inv!30979 (_1!13179 (_1!13180 (h!28806 mapDefault!11124)))) e!1342623 tp_is_empty!9391 setRes!14095 tp!642356))))

(declare-fun condSetEmpty!14095 () Bool)

(assert (=> b!2110913 (= condSetEmpty!14095 (= (_2!13180 (h!28806 mapDefault!11124)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun mapIsEmpty!11124 () Bool)

(assert (=> mapIsEmpty!11124 mapRes!11124))

(declare-fun mapNonEmpty!11124 () Bool)

(declare-fun tp!642361 () Bool)

(assert (=> mapNonEmpty!11124 (= mapRes!11124 (and tp!642361 e!1342621))))

(declare-fun mapKey!11124 () (_ BitVec 32))

(declare-fun mapRest!11124 () (Array (_ BitVec 32) List!23489))

(assert (=> mapNonEmpty!11124 (= mapRest!11121 (store mapRest!11124 mapKey!11124 mapValue!11124))))

(declare-fun setElem!14095 () Context!2342)

(declare-fun e!1342620 () Bool)

(declare-fun setNonEmpty!14094 () Bool)

(declare-fun tp!642360 () Bool)

(assert (=> setNonEmpty!14094 (= setRes!14094 (and tp!642360 (inv!30979 setElem!14095) e!1342620))))

(declare-fun setRest!14094 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14094 (= (_2!13180 (h!28806 mapValue!11124)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14095 true) setRest!14094))))

(declare-fun b!2110914 () Bool)

(declare-fun tp!642358 () Bool)

(assert (=> b!2110914 (= e!1342620 tp!642358)))

(declare-fun b!2110915 () Bool)

(declare-fun tp!642363 () Bool)

(assert (=> b!2110915 (= e!1342624 tp!642363)))

(declare-fun b!2110916 () Bool)

(declare-fun e!1342622 () Bool)

(declare-fun tp!642357 () Bool)

(assert (=> b!2110916 (= e!1342622 tp!642357)))

(declare-fun tp!642362 () Bool)

(declare-fun setElem!14094 () Context!2342)

(declare-fun setNonEmpty!14095 () Bool)

(assert (=> setNonEmpty!14095 (= setRes!14095 (and tp!642362 (inv!30979 setElem!14094) e!1342622))))

(declare-fun setRest!14095 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14095 (= (_2!13180 (h!28806 mapDefault!11124)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14094 true) setRest!14095))))

(assert (= (and mapNonEmpty!11120 condMapEmpty!11124) mapIsEmpty!11124))

(assert (= (and mapNonEmpty!11120 (not condMapEmpty!11124)) mapNonEmpty!11124))

(assert (= b!2110911 b!2110915))

(assert (= (and b!2110911 condSetEmpty!14094) setIsEmpty!14095))

(assert (= (and b!2110911 (not condSetEmpty!14094)) setNonEmpty!14094))

(assert (= setNonEmpty!14094 b!2110914))

(assert (= (and mapNonEmpty!11124 ((_ is Cons!23405) mapValue!11124)) b!2110911))

(assert (= b!2110913 b!2110912))

(assert (= (and b!2110913 condSetEmpty!14095) setIsEmpty!14094))

(assert (= (and b!2110913 (not condSetEmpty!14095)) setNonEmpty!14095))

(assert (= setNonEmpty!14095 b!2110916))

(assert (= (and mapNonEmpty!11120 ((_ is Cons!23405) mapDefault!11124)) b!2110913))

(declare-fun m!2567957 () Bool)

(assert (=> b!2110913 m!2567957))

(declare-fun m!2567959 () Bool)

(assert (=> setNonEmpty!14095 m!2567959))

(declare-fun m!2567961 () Bool)

(assert (=> b!2110911 m!2567961))

(declare-fun m!2567963 () Bool)

(assert (=> setNonEmpty!14094 m!2567963))

(declare-fun m!2567965 () Bool)

(assert (=> mapNonEmpty!11124 m!2567965))

(declare-fun setIsEmpty!14096 () Bool)

(declare-fun setRes!14096 () Bool)

(assert (=> setIsEmpty!14096 setRes!14096))

(declare-fun b!2110917 () Bool)

(declare-fun e!1342625 () Bool)

(declare-fun tp!642367 () Bool)

(assert (=> b!2110917 (= e!1342625 tp!642367)))

(declare-fun tp!642368 () Bool)

(declare-fun b!2110918 () Bool)

(declare-fun e!1342626 () Bool)

(declare-fun e!1342627 () Bool)

(assert (=> b!2110918 (= e!1342626 (and (inv!30979 (_1!13179 (_1!13180 (h!28806 mapValue!11120)))) e!1342627 tp_is_empty!9391 setRes!14096 tp!642368))))

(declare-fun condSetEmpty!14096 () Bool)

(assert (=> b!2110918 (= condSetEmpty!14096 (= (_2!13180 (h!28806 mapValue!11120)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun tp!642366 () Bool)

(declare-fun setElem!14096 () Context!2342)

(declare-fun setNonEmpty!14096 () Bool)

(assert (=> setNonEmpty!14096 (= setRes!14096 (and tp!642366 (inv!30979 setElem!14096) e!1342625))))

(declare-fun setRest!14096 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14096 (= (_2!13180 (h!28806 mapValue!11120)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14096 true) setRest!14096))))

(assert (=> mapNonEmpty!11120 (= tp!642284 e!1342626)))

(declare-fun b!2110919 () Bool)

(declare-fun tp!642365 () Bool)

(assert (=> b!2110919 (= e!1342627 tp!642365)))

(assert (= b!2110918 b!2110919))

(assert (= (and b!2110918 condSetEmpty!14096) setIsEmpty!14096))

(assert (= (and b!2110918 (not condSetEmpty!14096)) setNonEmpty!14096))

(assert (= setNonEmpty!14096 b!2110917))

(assert (= (and mapNonEmpty!11120 ((_ is Cons!23405) mapValue!11120)) b!2110918))

(declare-fun m!2567967 () Bool)

(assert (=> b!2110918 m!2567967))

(declare-fun m!2567969 () Bool)

(assert (=> setNonEmpty!14096 m!2567969))

(declare-fun e!1342628 () Bool)

(assert (=> b!2110683 (= tp!642296 e!1342628)))

(declare-fun b!2110920 () Bool)

(declare-fun e!1342630 () Bool)

(declare-fun tp!642369 () Bool)

(assert (=> b!2110920 (= e!1342630 tp!642369)))

(declare-fun b!2110921 () Bool)

(declare-fun e!1342629 () Bool)

(declare-fun tp!642370 () Bool)

(assert (=> b!2110921 (= e!1342629 tp!642370)))

(declare-fun setRes!14097 () Bool)

(declare-fun tp!642372 () Bool)

(declare-fun b!2110922 () Bool)

(declare-fun tp!642371 () Bool)

(assert (=> b!2110922 (= e!1342628 (and tp!642371 (inv!30979 (_2!13182 (_1!13183 (h!28808 (zeroValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))))) e!1342629 tp_is_empty!9391 setRes!14097 tp!642372))))

(declare-fun condSetEmpty!14097 () Bool)

(assert (=> b!2110922 (= condSetEmpty!14097 (= (_2!13183 (h!28808 (zeroValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setNonEmpty!14097 () Bool)

(declare-fun tp!642373 () Bool)

(declare-fun setElem!14097 () Context!2342)

(assert (=> setNonEmpty!14097 (= setRes!14097 (and tp!642373 (inv!30979 setElem!14097) e!1342630))))

(declare-fun setRest!14097 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14097 (= (_2!13183 (h!28808 (zeroValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14097 true) setRest!14097))))

(declare-fun setIsEmpty!14097 () Bool)

(assert (=> setIsEmpty!14097 setRes!14097))

(assert (= b!2110922 b!2110921))

(assert (= (and b!2110922 condSetEmpty!14097) setIsEmpty!14097))

(assert (= (and b!2110922 (not condSetEmpty!14097)) setNonEmpty!14097))

(assert (= setNonEmpty!14097 b!2110920))

(assert (= (and b!2110683 ((_ is Cons!23407) (zeroValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))) b!2110922))

(declare-fun m!2567971 () Bool)

(assert (=> b!2110922 m!2567971))

(declare-fun m!2567973 () Bool)

(assert (=> setNonEmpty!14097 m!2567973))

(declare-fun e!1342631 () Bool)

(assert (=> b!2110683 (= tp!642283 e!1342631)))

(declare-fun b!2110923 () Bool)

(declare-fun e!1342633 () Bool)

(declare-fun tp!642374 () Bool)

(assert (=> b!2110923 (= e!1342633 tp!642374)))

(declare-fun b!2110924 () Bool)

(declare-fun e!1342632 () Bool)

(declare-fun tp!642375 () Bool)

(assert (=> b!2110924 (= e!1342632 tp!642375)))

(declare-fun tp!642376 () Bool)

(declare-fun setRes!14098 () Bool)

(declare-fun b!2110925 () Bool)

(declare-fun tp!642377 () Bool)

(assert (=> b!2110925 (= e!1342631 (and tp!642376 (inv!30979 (_2!13182 (_1!13183 (h!28808 (minValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))))) e!1342632 tp_is_empty!9391 setRes!14098 tp!642377))))

(declare-fun condSetEmpty!14098 () Bool)

(assert (=> b!2110925 (= condSetEmpty!14098 (= (_2!13183 (h!28808 (minValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setElem!14098 () Context!2342)

(declare-fun setNonEmpty!14098 () Bool)

(declare-fun tp!642378 () Bool)

(assert (=> setNonEmpty!14098 (= setRes!14098 (and tp!642378 (inv!30979 setElem!14098) e!1342633))))

(declare-fun setRest!14098 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14098 (= (_2!13183 (h!28808 (minValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14098 true) setRest!14098))))

(declare-fun setIsEmpty!14098 () Bool)

(assert (=> setIsEmpty!14098 setRes!14098))

(assert (= b!2110925 b!2110924))

(assert (= (and b!2110925 condSetEmpty!14098) setIsEmpty!14098))

(assert (= (and b!2110925 (not condSetEmpty!14098)) setNonEmpty!14098))

(assert (= setNonEmpty!14098 b!2110923))

(assert (= (and b!2110683 ((_ is Cons!23407) (minValue!2563 (v!27935 (underlying!4805 (v!27936 (underlying!4806 (cache!2600 cacheDown!753)))))))) b!2110925))

(declare-fun m!2567975 () Bool)

(assert (=> b!2110925 m!2567975))

(declare-fun m!2567977 () Bool)

(assert (=> setNonEmpty!14098 m!2567977))

(declare-fun b!2110936 () Bool)

(declare-fun e!1342636 () Bool)

(assert (=> b!2110936 (= e!1342636 tp_is_empty!9391)))

(declare-fun b!2110937 () Bool)

(declare-fun tp!642390 () Bool)

(declare-fun tp!642389 () Bool)

(assert (=> b!2110937 (= e!1342636 (and tp!642390 tp!642389))))

(declare-fun b!2110939 () Bool)

(declare-fun tp!642393 () Bool)

(declare-fun tp!642392 () Bool)

(assert (=> b!2110939 (= e!1342636 (and tp!642393 tp!642392))))

(declare-fun b!2110938 () Bool)

(declare-fun tp!642391 () Bool)

(assert (=> b!2110938 (= e!1342636 tp!642391)))

(assert (=> b!2110696 (= tp!642286 e!1342636)))

(assert (= (and b!2110696 ((_ is ElementMatch!5601) (regex!4165 rule!236))) b!2110936))

(assert (= (and b!2110696 ((_ is Concat!9902) (regex!4165 rule!236))) b!2110937))

(assert (= (and b!2110696 ((_ is Star!5601) (regex!4165 rule!236))) b!2110938))

(assert (= (and b!2110696 ((_ is Union!5601) (regex!4165 rule!236))) b!2110939))

(declare-fun b!2110954 () Bool)

(declare-fun e!1342652 () Bool)

(declare-fun tp!642424 () Bool)

(assert (=> b!2110954 (= e!1342652 tp!642424)))

(declare-fun setIsEmpty!14103 () Bool)

(declare-fun setRes!14103 () Bool)

(assert (=> setIsEmpty!14103 setRes!14103))

(declare-fun b!2110955 () Bool)

(declare-fun e!1342649 () Bool)

(declare-fun tp!642420 () Bool)

(assert (=> b!2110955 (= e!1342649 tp!642420)))

(declare-fun mapNonEmpty!11127 () Bool)

(declare-fun mapRes!11127 () Bool)

(declare-fun tp!642418 () Bool)

(declare-fun e!1342654 () Bool)

(assert (=> mapNonEmpty!11127 (= mapRes!11127 (and tp!642418 e!1342654))))

(declare-fun mapValue!11127 () List!23491)

(declare-fun mapKey!11127 () (_ BitVec 32))

(declare-fun mapRest!11127 () (Array (_ BitVec 32) List!23491))

(assert (=> mapNonEmpty!11127 (= mapRest!11120 (store mapRest!11127 mapKey!11127 mapValue!11127))))

(declare-fun b!2110956 () Bool)

(declare-fun e!1342653 () Bool)

(declare-fun tp!642425 () Bool)

(assert (=> b!2110956 (= e!1342653 tp!642425)))

(declare-fun b!2110957 () Bool)

(declare-fun tp!642426 () Bool)

(declare-fun tp!642421 () Bool)

(assert (=> b!2110957 (= e!1342654 (and tp!642421 (inv!30979 (_2!13182 (_1!13183 (h!28808 mapValue!11127)))) e!1342649 tp_is_empty!9391 setRes!14103 tp!642426))))

(declare-fun condSetEmpty!14103 () Bool)

(assert (=> b!2110957 (= condSetEmpty!14103 (= (_2!13183 (h!28808 mapValue!11127)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun tp!642422 () Bool)

(declare-fun setRes!14104 () Bool)

(declare-fun e!1342651 () Bool)

(declare-fun b!2110958 () Bool)

(declare-fun mapDefault!11127 () List!23491)

(declare-fun tp!642423 () Bool)

(assert (=> b!2110958 (= e!1342651 (and tp!642422 (inv!30979 (_2!13182 (_1!13183 (h!28808 mapDefault!11127)))) e!1342653 tp_is_empty!9391 setRes!14104 tp!642423))))

(declare-fun condSetEmpty!14104 () Bool)

(assert (=> b!2110958 (= condSetEmpty!14104 (= (_2!13183 (h!28808 mapDefault!11127)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setElem!14104 () Context!2342)

(declare-fun setNonEmpty!14103 () Bool)

(declare-fun tp!642419 () Bool)

(declare-fun e!1342650 () Bool)

(assert (=> setNonEmpty!14103 (= setRes!14103 (and tp!642419 (inv!30979 setElem!14104) e!1342650))))

(declare-fun setRest!14103 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14103 (= (_2!13183 (h!28808 mapValue!11127)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14104 true) setRest!14103))))

(declare-fun setElem!14103 () Context!2342)

(declare-fun tp!642417 () Bool)

(declare-fun setNonEmpty!14104 () Bool)

(assert (=> setNonEmpty!14104 (= setRes!14104 (and tp!642417 (inv!30979 setElem!14103) e!1342652))))

(declare-fun setRest!14104 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14104 (= (_2!13183 (h!28808 mapDefault!11127)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14103 true) setRest!14104))))

(declare-fun b!2110959 () Bool)

(declare-fun tp!642416 () Bool)

(assert (=> b!2110959 (= e!1342650 tp!642416)))

(declare-fun condMapEmpty!11127 () Bool)

(assert (=> mapNonEmpty!11121 (= condMapEmpty!11127 (= mapRest!11120 ((as const (Array (_ BitVec 32) List!23491)) mapDefault!11127)))))

(assert (=> mapNonEmpty!11121 (= tp!642281 (and e!1342651 mapRes!11127))))

(declare-fun setIsEmpty!14104 () Bool)

(assert (=> setIsEmpty!14104 setRes!14104))

(declare-fun mapIsEmpty!11127 () Bool)

(assert (=> mapIsEmpty!11127 mapRes!11127))

(assert (= (and mapNonEmpty!11121 condMapEmpty!11127) mapIsEmpty!11127))

(assert (= (and mapNonEmpty!11121 (not condMapEmpty!11127)) mapNonEmpty!11127))

(assert (= b!2110957 b!2110955))

(assert (= (and b!2110957 condSetEmpty!14103) setIsEmpty!14103))

(assert (= (and b!2110957 (not condSetEmpty!14103)) setNonEmpty!14103))

(assert (= setNonEmpty!14103 b!2110959))

(assert (= (and mapNonEmpty!11127 ((_ is Cons!23407) mapValue!11127)) b!2110957))

(assert (= b!2110958 b!2110956))

(assert (= (and b!2110958 condSetEmpty!14104) setIsEmpty!14104))

(assert (= (and b!2110958 (not condSetEmpty!14104)) setNonEmpty!14104))

(assert (= setNonEmpty!14104 b!2110954))

(assert (= (and mapNonEmpty!11121 ((_ is Cons!23407) mapDefault!11127)) b!2110958))

(declare-fun m!2567979 () Bool)

(assert (=> mapNonEmpty!11127 m!2567979))

(declare-fun m!2567981 () Bool)

(assert (=> b!2110958 m!2567981))

(declare-fun m!2567983 () Bool)

(assert (=> setNonEmpty!14103 m!2567983))

(declare-fun m!2567985 () Bool)

(assert (=> b!2110957 m!2567985))

(declare-fun m!2567987 () Bool)

(assert (=> setNonEmpty!14104 m!2567987))

(declare-fun e!1342655 () Bool)

(assert (=> mapNonEmpty!11121 (= tp!642299 e!1342655)))

(declare-fun b!2110960 () Bool)

(declare-fun e!1342657 () Bool)

(declare-fun tp!642427 () Bool)

(assert (=> b!2110960 (= e!1342657 tp!642427)))

(declare-fun b!2110961 () Bool)

(declare-fun e!1342656 () Bool)

(declare-fun tp!642428 () Bool)

(assert (=> b!2110961 (= e!1342656 tp!642428)))

(declare-fun setRes!14105 () Bool)

(declare-fun b!2110962 () Bool)

(declare-fun tp!642430 () Bool)

(declare-fun tp!642429 () Bool)

(assert (=> b!2110962 (= e!1342655 (and tp!642429 (inv!30979 (_2!13182 (_1!13183 (h!28808 mapValue!11121)))) e!1342656 tp_is_empty!9391 setRes!14105 tp!642430))))

(declare-fun condSetEmpty!14105 () Bool)

(assert (=> b!2110962 (= condSetEmpty!14105 (= (_2!13183 (h!28808 mapValue!11121)) ((as const (Array Context!2342 Bool)) false)))))

(declare-fun setElem!14105 () Context!2342)

(declare-fun tp!642431 () Bool)

(declare-fun setNonEmpty!14105 () Bool)

(assert (=> setNonEmpty!14105 (= setRes!14105 (and tp!642431 (inv!30979 setElem!14105) e!1342657))))

(declare-fun setRest!14105 () (InoxSet Context!2342))

(assert (=> setNonEmpty!14105 (= (_2!13183 (h!28808 mapValue!11121)) ((_ map or) (store ((as const (Array Context!2342 Bool)) false) setElem!14105 true) setRest!14105))))

(declare-fun setIsEmpty!14105 () Bool)

(assert (=> setIsEmpty!14105 setRes!14105))

(assert (= b!2110962 b!2110961))

(assert (= (and b!2110962 condSetEmpty!14105) setIsEmpty!14105))

(assert (= (and b!2110962 (not condSetEmpty!14105)) setNonEmpty!14105))

(assert (= setNonEmpty!14105 b!2110960))

(assert (= (and mapNonEmpty!11121 ((_ is Cons!23407) mapValue!11121)) b!2110962))

(declare-fun m!2567989 () Bool)

(assert (=> b!2110962 m!2567989))

(declare-fun m!2567991 () Bool)

(assert (=> setNonEmpty!14105 m!2567991))

(declare-fun b!2110971 () Bool)

(declare-fun tp!642438 () Bool)

(declare-fun tp!642440 () Bool)

(declare-fun e!1342662 () Bool)

(assert (=> b!2110971 (= e!1342662 (and (inv!30972 (left!18199 (c!339092 totalInput!548))) tp!642438 (inv!30972 (right!18529 (c!339092 totalInput!548))) tp!642440))))

(declare-fun b!2110973 () Bool)

(declare-fun e!1342663 () Bool)

(declare-fun tp!642439 () Bool)

(assert (=> b!2110973 (= e!1342663 tp!642439)))

(declare-fun b!2110972 () Bool)

(declare-fun inv!30980 (IArray!15497) Bool)

(assert (=> b!2110972 (= e!1342662 (and (inv!30980 (xs!10688 (c!339092 totalInput!548))) e!1342663))))

(assert (=> b!2110693 (= tp!642288 (and (inv!30972 (c!339092 totalInput!548)) e!1342662))))

(assert (= (and b!2110693 ((_ is Node!7746) (c!339092 totalInput!548))) b!2110971))

(assert (= b!2110972 b!2110973))

(assert (= (and b!2110693 ((_ is Leaf!11314) (c!339092 totalInput!548))) b!2110972))

(declare-fun m!2567993 () Bool)

(assert (=> b!2110971 m!2567993))

(declare-fun m!2567995 () Bool)

(assert (=> b!2110971 m!2567995))

(declare-fun m!2567997 () Bool)

(assert (=> b!2110972 m!2567997))

(assert (=> b!2110693 m!2567731))

(declare-fun tp!642443 () Bool)

(declare-fun tp!642441 () Bool)

(declare-fun e!1342664 () Bool)

(declare-fun b!2110974 () Bool)

(assert (=> b!2110974 (= e!1342664 (and (inv!30972 (left!18199 (c!339092 input!1654))) tp!642441 (inv!30972 (right!18529 (c!339092 input!1654))) tp!642443))))

(declare-fun b!2110976 () Bool)

(declare-fun e!1342665 () Bool)

(declare-fun tp!642442 () Bool)

(assert (=> b!2110976 (= e!1342665 tp!642442)))

(declare-fun b!2110975 () Bool)

(assert (=> b!2110975 (= e!1342664 (and (inv!30980 (xs!10688 (c!339092 input!1654))) e!1342665))))

(assert (=> b!2110675 (= tp!642292 (and (inv!30972 (c!339092 input!1654)) e!1342664))))

(assert (= (and b!2110675 ((_ is Node!7746) (c!339092 input!1654))) b!2110974))

(assert (= b!2110975 b!2110976))

(assert (= (and b!2110675 ((_ is Leaf!11314) (c!339092 input!1654))) b!2110975))

(declare-fun m!2567999 () Bool)

(assert (=> b!2110974 m!2567999))

(declare-fun m!2568001 () Bool)

(assert (=> b!2110974 m!2568001))

(declare-fun m!2568003 () Bool)

(assert (=> b!2110975 m!2568003))

(assert (=> b!2110675 m!2567691))

(declare-fun b_lambda!70371 () Bool)

(assert (= b_lambda!70365 (or (and b!2110691 b_free!60955) b_lambda!70371)))

(declare-fun b_lambda!70373 () Bool)

(assert (= b_lambda!70367 (or (and b!2110691 b_free!60957) b_lambda!70373)))

(declare-fun b_lambda!70375 () Bool)

(assert (= b_lambda!70369 (or (and b!2110691 b_free!60955) b_lambda!70375)))

(check-sat (not b!2110856) (not bm!128467) (not b!2110715) (not b!2110959) (not bm!128469) (not setNonEmpty!14096) (not b!2110878) (not bm!128474) (not b!2110718) (not b!2110921) (not d!642322) (not d!642354) b_and!170523 (not b!2110832) (not bm!128471) (not setNonEmpty!14087) (not setNonEmpty!14095) (not b!2110960) (not b!2110862) (not b_next!61663) (not setNonEmpty!14094) (not b!2110924) (not d!642314) (not b!2110914) (not b!2110675) (not b!2110877) (not b!2110790) (not setNonEmpty!14103) (not b_next!61659) (not d!642346) (not setNonEmpty!14084) (not b!2110888) (not b!2110976) (not b!2110854) (not tb!132279) (not d!642294) (not b!2110867) (not d!642304) (not d!642326) (not b!2110956) (not setNonEmpty!14098) (not b!2110974) (not tb!132281) (not d!642356) (not setNonEmpty!14089) (not b_lambda!70371) (not setNonEmpty!14104) (not b_next!61657) (not b!2110961) (not d!642352) (not d!642344) (not b!2110879) (not b_lambda!70373) b_and!170537 b_and!170527 (not b!2110925) (not b!2110780) (not bm!128473) tp_is_empty!9391 (not b!2110937) (not b_next!61655) (not b!2110893) (not b!2110787) (not b!2110972) (not b!2110911) (not bm!128477) (not d!642298) (not b!2110973) (not b!2110895) (not b!2110851) (not b!2110844) (not b!2110894) (not b!2110824) (not b!2110841) (not b!2110736) (not b!2110913) (not b!2110975) (not d!642302) (not b!2110891) (not mapNonEmpty!11127) (not d!642300) (not b!2110751) (not b!2110916) (not b_next!61653) b_and!170525 (not b!2110748) (not b!2110693) (not bm!128470) (not b!2110918) (not b!2110823) (not d!642296) (not b!2110915) (not b!2110920) (not setNonEmpty!14097) (not setNonEmpty!14088) (not b!2110717) (not d!642318) (not b!2110720) (not mapNonEmpty!11124) (not b!2110957) (not b!2110853) (not b!2110786) (not b!2110896) (not b!2110954) (not d!642336) (not b!2110702) (not b!2110861) (not b!2110919) (not b_next!61661) (not d!642316) (not b!2110971) (not setNonEmpty!14105) (not b!2110889) (not bm!128468) (not b!2110890) (not d!642340) (not b_lambda!70375) (not b!2110830) (not b!2110962) (not b!2110833) (not b!2110958) (not bm!128472) (not d!642334) (not b!2110892) (not b!2110912) (not b!2110938) (not d!642320) (not b!2110939) (not b!2110734) b_and!170533 (not b!2110838) (not b!2110922) (not b!2110828) (not d!642324) (not b!2110955) (not b!2110923) b_and!170539 (not b!2110719) (not b!2110917))
(check-sat b_and!170523 (not b_next!61663) (not b_next!61659) (not b_next!61657) (not b_next!61661) b_and!170533 b_and!170539 b_and!170537 b_and!170527 (not b_next!61655) (not b_next!61653) b_and!170525)
