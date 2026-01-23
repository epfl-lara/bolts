; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139924 () Bool)

(assert start!139924)

(declare-fun b!1492191 () Bool)

(declare-fun b_free!38759 () Bool)

(declare-fun b_next!39463 () Bool)

(assert (=> b!1492191 (= b_free!38759 (not b_next!39463))))

(declare-fun tp!425013 () Bool)

(declare-fun b_and!103801 () Bool)

(assert (=> b!1492191 (= tp!425013 b_and!103801)))

(declare-fun b_free!38761 () Bool)

(declare-fun b_next!39465 () Bool)

(assert (=> b!1492191 (= b_free!38761 (not b_next!39465))))

(declare-fun tp!425002 () Bool)

(declare-fun b_and!103803 () Bool)

(assert (=> b!1492191 (= tp!425002 b_and!103803)))

(declare-fun b!1492236 () Bool)

(declare-fun b_free!38763 () Bool)

(declare-fun b_next!39467 () Bool)

(assert (=> b!1492236 (= b_free!38763 (not b_next!39467))))

(declare-fun tp!425011 () Bool)

(declare-fun b_and!103805 () Bool)

(assert (=> b!1492236 (= tp!425011 b_and!103805)))

(declare-fun b!1492184 () Bool)

(declare-fun b_free!38765 () Bool)

(declare-fun b_next!39469 () Bool)

(assert (=> b!1492184 (= b_free!38765 (not b_next!39469))))

(declare-fun tp!424996 () Bool)

(declare-fun b_and!103807 () Bool)

(assert (=> b!1492184 (= tp!424996 b_and!103807)))

(declare-fun b!1492231 () Bool)

(declare-fun b_free!38767 () Bool)

(declare-fun b_next!39471 () Bool)

(assert (=> b!1492231 (= b_free!38767 (not b_next!39471))))

(declare-fun tp!425010 () Bool)

(declare-fun b_and!103809 () Bool)

(assert (=> b!1492231 (= tp!425010 b_and!103809)))

(declare-fun b!1492223 () Bool)

(declare-fun b_free!38769 () Bool)

(declare-fun b_next!39473 () Bool)

(assert (=> b!1492223 (= b_free!38769 (not b_next!39473))))

(declare-fun tp!425012 () Bool)

(declare-fun b_and!103811 () Bool)

(assert (=> b!1492223 (= tp!425012 b_and!103811)))

(declare-fun b!1492226 () Bool)

(declare-fun b_free!38771 () Bool)

(declare-fun b_next!39475 () Bool)

(assert (=> b!1492226 (= b_free!38771 (not b_next!39475))))

(declare-fun tp!424993 () Bool)

(declare-fun b_and!103813 () Bool)

(assert (=> b!1492226 (= tp!424993 b_and!103813)))

(declare-fun b!1492210 () Bool)

(declare-fun b_free!38773 () Bool)

(declare-fun b_next!39477 () Bool)

(assert (=> b!1492210 (= b_free!38773 (not b_next!39477))))

(declare-fun tp!425003 () Bool)

(declare-fun b_and!103815 () Bool)

(assert (=> b!1492210 (= tp!425003 b_and!103815)))

(declare-fun e!954535 () Bool)

(declare-fun e!954550 () Bool)

(assert (=> b!1492184 (= e!954535 (and e!954550 tp!424996))))

(declare-fun b!1492185 () Bool)

(declare-fun res!673222 () Bool)

(declare-fun e!954545 () Bool)

(assert (=> b!1492185 (=> (not res!673222) (not e!954545))))

(declare-datatypes ((List!15936 0))(
  ( (Nil!15868) (Cons!15868 (h!21269 (_ BitVec 16)) (t!138195 List!15936)) )
))
(declare-datatypes ((TokenValue!2910 0))(
  ( (FloatLiteralValue!5820 (text!20815 List!15936)) (TokenValueExt!2909 (__x!9786 Int)) (Broken!14550 (value!90004 List!15936)) (Object!2977) (End!2910) (Def!2910) (Underscore!2910) (Match!2910) (Else!2910) (Error!2910) (Case!2910) (If!2910) (Extends!2910) (Abstract!2910) (Class!2910) (Val!2910) (DelimiterValue!5820 (del!2970 List!15936)) (KeywordValue!2916 (value!90005 List!15936)) (CommentValue!5820 (value!90006 List!15936)) (WhitespaceValue!5820 (value!90007 List!15936)) (IndentationValue!2910 (value!90008 List!15936)) (String!18811) (Int32!2910) (Broken!14551 (value!90009 List!15936)) (Boolean!2911) (Unit!25658) (OperatorValue!2913 (op!2970 List!15936)) (IdentifierValue!5820 (value!90010 List!15936)) (IdentifierValue!5821 (value!90011 List!15936)) (WhitespaceValue!5821 (value!90012 List!15936)) (True!5820) (False!5820) (Broken!14552 (value!90013 List!15936)) (Broken!14553 (value!90014 List!15936)) (True!5821) (RightBrace!2910) (RightBracket!2910) (Colon!2910) (Null!2910) (Comma!2910) (LeftBracket!2910) (False!5821) (LeftBrace!2910) (ImaginaryLiteralValue!2910 (text!20816 List!15936)) (StringLiteralValue!8730 (value!90015 List!15936)) (EOFValue!2910 (value!90016 List!15936)) (IdentValue!2910 (value!90017 List!15936)) (DelimiterValue!5821 (value!90018 List!15936)) (DedentValue!2910 (value!90019 List!15936)) (NewLineValue!2910 (value!90020 List!15936)) (IntegerValue!8730 (value!90021 (_ BitVec 32)) (text!20817 List!15936)) (IntegerValue!8731 (value!90022 Int) (text!20818 List!15936)) (Times!2910) (Or!2910) (Equal!2910) (Minus!2910) (Broken!14554 (value!90023 List!15936)) (And!2910) (Div!2910) (LessEqual!2910) (Mod!2910) (Concat!7045) (Not!2910) (Plus!2910) (SpaceValue!2910 (value!90024 List!15936)) (IntegerValue!8732 (value!90025 Int) (text!20819 List!15936)) (StringLiteralValue!8731 (text!20820 List!15936)) (FloatLiteralValue!5821 (text!20821 List!15936)) (BytesLiteralValue!2910 (value!90026 List!15936)) (CommentValue!5821 (value!90027 List!15936)) (StringLiteralValue!8732 (value!90028 List!15936)) (ErrorTokenValue!2910 (msg!2971 List!15936)) )
))
(declare-datatypes ((C!8448 0))(
  ( (C!8449 (val!4796 Int)) )
))
(declare-datatypes ((List!15937 0))(
  ( (Nil!15869) (Cons!15869 (h!21270 C!8448) (t!138196 List!15937)) )
))
(declare-datatypes ((IArray!10787 0))(
  ( (IArray!10788 (innerList!5451 List!15937)) )
))
(declare-datatypes ((Conc!5391 0))(
  ( (Node!5391 (left!13297 Conc!5391) (right!13627 Conc!5391) (csize!11012 Int) (cheight!5602 Int)) (Leaf!8004 (xs!8154 IArray!10787) (csize!11013 Int)) (Empty!5391) )
))
(declare-datatypes ((BalanceConc!10724 0))(
  ( (BalanceConc!10725 (c!244404 Conc!5391)) )
))
(declare-datatypes ((Regex!4135 0))(
  ( (ElementMatch!4135 (c!244405 C!8448)) (Concat!7046 (regOne!8782 Regex!4135) (regTwo!8782 Regex!4135)) (EmptyExpr!4135) (Star!4135 (reg!4464 Regex!4135)) (EmptyLang!4135) (Union!4135 (regOne!8783 Regex!4135) (regTwo!8783 Regex!4135)) )
))
(declare-datatypes ((String!18812 0))(
  ( (String!18813 (value!90029 String)) )
))
(declare-datatypes ((TokenValueInjection!5480 0))(
  ( (TokenValueInjection!5481 (toValue!4163 Int) (toChars!4022 Int)) )
))
(declare-datatypes ((Rule!5440 0))(
  ( (Rule!5441 (regex!2820 Regex!4135) (tag!3084 String!18812) (isSeparator!2820 Bool) (transformation!2820 TokenValueInjection!5480)) )
))
(declare-datatypes ((Token!5302 0))(
  ( (Token!5303 (value!90030 TokenValue!2910) (rule!4601 Rule!5440) (size!12837 Int) (originalCharacters!3682 List!15937)) )
))
(declare-datatypes ((List!15938 0))(
  ( (Nil!15870) (Cons!15870 (h!21271 Token!5302) (t!138197 List!15938)) )
))
(declare-datatypes ((IArray!10789 0))(
  ( (IArray!10790 (innerList!5452 List!15938)) )
))
(declare-datatypes ((Conc!5392 0))(
  ( (Node!5392 (left!13298 Conc!5392) (right!13628 Conc!5392) (csize!11014 Int) (cheight!5603 Int)) (Leaf!8005 (xs!8155 IArray!10789) (csize!11015 Int)) (Empty!5392) )
))
(declare-datatypes ((BalanceConc!10726 0))(
  ( (BalanceConc!10727 (c!244406 Conc!5392)) )
))
(declare-datatypes ((tuple2!14602 0))(
  ( (tuple2!14603 (_1!8242 BalanceConc!10726) (_2!8242 BalanceConc!10724)) )
))
(declare-fun lt!518574 () tuple2!14602)

(declare-fun lt!518562 () tuple2!14602)

(declare-fun list!6288 (BalanceConc!10724) List!15937)

(assert (=> b!1492185 (= res!673222 (= (list!6288 (_2!8242 lt!518574)) (list!6288 (_2!8242 lt!518562))))))

(declare-fun b!1492186 () Bool)

(declare-fun res!673214 () Bool)

(declare-fun e!954533 () Bool)

(assert (=> b!1492186 (=> res!673214 e!954533)))

(declare-fun lt!518558 () tuple2!14602)

(declare-fun lt!518546 () List!15938)

(declare-fun list!6289 (BalanceConc!10726) List!15938)

(assert (=> b!1492186 (= res!673214 (not (= (list!6289 (_1!8242 lt!518558)) lt!518546)))))

(declare-fun mapIsEmpty!6696 () Bool)

(declare-fun mapRes!6698 () Bool)

(assert (=> mapIsEmpty!6696 mapRes!6698))

(declare-fun b!1492187 () Bool)

(declare-fun res!673221 () Bool)

(declare-fun e!954518 () Bool)

(assert (=> b!1492187 (=> (not res!673221) (not e!954518))))

(declare-datatypes ((LexerInterface!2475 0))(
  ( (LexerInterfaceExt!2472 (__x!9787 Int)) (Lexer!2473) )
))
(declare-fun thiss!13241 () LexerInterface!2475)

(declare-datatypes ((List!15939 0))(
  ( (Nil!15871) (Cons!15871 (h!21272 Rule!5440) (t!138198 List!15939)) )
))
(declare-fun rules!1640 () List!15939)

(declare-fun rulesInvariant!2256 (LexerInterface!2475 List!15939) Bool)

(assert (=> b!1492187 (= res!673221 (rulesInvariant!2256 thiss!13241 rules!1640))))

(declare-fun b!1492188 () Bool)

(declare-fun e!954536 () Bool)

(declare-fun e!954534 () Bool)

(assert (=> b!1492188 (= e!954536 e!954534)))

(declare-fun b!1492189 () Bool)

(declare-fun e!954527 () Bool)

(declare-fun tp!424995 () Bool)

(assert (=> b!1492189 (= e!954527 (and tp!424995 mapRes!6698))))

(declare-fun condMapEmpty!6696 () Bool)

(declare-datatypes ((List!15940 0))(
  ( (Nil!15872) (Cons!15872 (h!21273 Regex!4135) (t!138199 List!15940)) )
))
(declare-datatypes ((Context!1306 0))(
  ( (Context!1307 (exprs!1153 List!15940)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1270 0))(
  ( (tuple3!1271 (_1!8243 (InoxSet Context!1306)) (_2!8243 Int) (_3!941 Int)) )
))
(declare-datatypes ((tuple2!14604 0))(
  ( (tuple2!14605 (_1!8244 tuple3!1270) (_2!8244 Int)) )
))
(declare-datatypes ((List!15941 0))(
  ( (Nil!15873) (Cons!15873 (h!21274 tuple2!14604) (t!138200 List!15941)) )
))
(declare-datatypes ((array!4970 0))(
  ( (array!4971 (arr!2220 (Array (_ BitVec 32) List!15941)) (size!12838 (_ BitVec 32))) )
))
(declare-datatypes ((array!4972 0))(
  ( (array!4973 (arr!2221 (Array (_ BitVec 32) (_ BitVec 64))) (size!12839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2820 0))(
  ( (LongMapFixedSize!2821 (defaultEntry!1770 Int) (mask!4566 (_ BitVec 32)) (extraKeys!1657 (_ BitVec 32)) (zeroValue!1667 List!15941) (minValue!1667 List!15941) (_size!2901 (_ BitVec 32)) (_keys!1704 array!4972) (_values!1689 array!4970) (_vacant!1471 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5525 0))(
  ( (Cell!5526 (v!22694 LongMapFixedSize!2820)) )
))
(declare-datatypes ((MutLongMap!1410 0))(
  ( (LongMap!1410 (underlying!3029 Cell!5525)) (MutLongMapExt!1409 (__x!9788 Int)) )
))
(declare-datatypes ((Cell!5527 0))(
  ( (Cell!5528 (v!22695 MutLongMap!1410)) )
))
(declare-datatypes ((Hashable!1354 0))(
  ( (HashableExt!1353 (__x!9789 Int)) )
))
(declare-datatypes ((MutableMap!1354 0))(
  ( (MutableMapExt!1353 (__x!9790 Int)) (HashMap!1354 (underlying!3030 Cell!5527) (hashF!3273 Hashable!1354) (_size!2902 (_ BitVec 32)) (defaultValue!1514 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!228 0))(
  ( (CacheFurthestNullable!229 (cache!1735 MutableMap!1354) (totalInput!2255 BalanceConc!10724)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!228)

(declare-fun mapDefault!6697 () List!15941)

(assert (=> b!1492189 (= condMapEmpty!6696 (= (arr!2220 (_values!1689 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15941)) mapDefault!6697)))))

(declare-fun b!1492190 () Bool)

(declare-fun e!954548 () Bool)

(declare-fun acc!392 () BalanceConc!10726)

(declare-fun tp!425004 () Bool)

(declare-fun inv!21081 (Conc!5392) Bool)

(assert (=> b!1492190 (= e!954548 (and (inv!21081 (c!244406 acc!392)) tp!425004))))

(declare-fun e!954547 () Bool)

(assert (=> b!1492191 (= e!954547 (and tp!425013 tp!425002))))

(declare-fun b!1492192 () Bool)

(declare-fun e!954517 () Bool)

(declare-fun e!954531 () Bool)

(declare-datatypes ((tuple3!1272 0))(
  ( (tuple3!1273 (_1!8245 Regex!4135) (_2!8245 Context!1306) (_3!942 C!8448)) )
))
(declare-datatypes ((tuple2!14606 0))(
  ( (tuple2!14607 (_1!8246 tuple3!1272) (_2!8246 (InoxSet Context!1306))) )
))
(declare-datatypes ((List!15942 0))(
  ( (Nil!15874) (Cons!15874 (h!21275 tuple2!14606) (t!138201 List!15942)) )
))
(declare-datatypes ((array!4974 0))(
  ( (array!4975 (arr!2222 (Array (_ BitVec 32) List!15942)) (size!12840 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2822 0))(
  ( (LongMapFixedSize!2823 (defaultEntry!1771 Int) (mask!4567 (_ BitVec 32)) (extraKeys!1658 (_ BitVec 32)) (zeroValue!1668 List!15942) (minValue!1668 List!15942) (_size!2903 (_ BitVec 32)) (_keys!1705 array!4972) (_values!1690 array!4974) (_vacant!1472 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5529 0))(
  ( (Cell!5530 (v!22696 LongMapFixedSize!2822)) )
))
(declare-datatypes ((MutLongMap!1411 0))(
  ( (LongMap!1411 (underlying!3031 Cell!5529)) (MutLongMapExt!1410 (__x!9791 Int)) )
))
(declare-fun lt!518543 () MutLongMap!1411)

(get-info :version)

(assert (=> b!1492192 (= e!954517 (and e!954531 ((_ is LongMap!1411) lt!518543)))))

(declare-datatypes ((Cell!5531 0))(
  ( (Cell!5532 (v!22697 MutLongMap!1411)) )
))
(declare-datatypes ((Hashable!1355 0))(
  ( (HashableExt!1354 (__x!9792 Int)) )
))
(declare-datatypes ((MutableMap!1355 0))(
  ( (MutableMapExt!1354 (__x!9793 Int)) (HashMap!1355 (underlying!3032 Cell!5531) (hashF!3274 Hashable!1355) (_size!2904 (_ BitVec 32)) (defaultValue!1515 Int)) )
))
(declare-datatypes ((CacheDown!806 0))(
  ( (CacheDown!807 (cache!1736 MutableMap!1355)) )
))
(declare-fun cacheDown!629 () CacheDown!806)

(assert (=> b!1492192 (= lt!518543 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))

(declare-fun b!1492193 () Bool)

(declare-fun e!954528 () Bool)

(declare-fun tp!425005 () Bool)

(declare-fun inv!21082 (Conc!5391) Bool)

(assert (=> b!1492193 (= e!954528 (and (inv!21082 (c!244404 (totalInput!2255 cacheFurthestNullable!64))) tp!425005))))

(declare-fun lt!518570 () tuple2!14602)

(declare-fun b!1492194 () Bool)

(declare-fun e!954519 () Bool)

(declare-datatypes ((tuple2!14608 0))(
  ( (tuple2!14609 (_1!8247 Token!5302) (_2!8247 BalanceConc!10724)) )
))
(declare-datatypes ((Option!2904 0))(
  ( (None!2903) (Some!2903 (v!22698 tuple2!14608)) )
))
(declare-fun lt!518564 () Option!2904)

(declare-fun prepend!443 (BalanceConc!10726 Token!5302) BalanceConc!10726)

(assert (=> b!1492194 (= e!954519 (= lt!518558 (tuple2!14603 (prepend!443 (_1!8242 lt!518570) (_1!8247 (v!22698 lt!518564))) (_2!8242 lt!518570))))))

(declare-fun lexRec!312 (LexerInterface!2475 List!15939 BalanceConc!10724) tuple2!14602)

(assert (=> b!1492194 (= lt!518570 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518564))))))

(declare-fun b!1492195 () Bool)

(declare-fun lt!518552 () BalanceConc!10724)

(assert (=> b!1492195 (= e!954519 (= lt!518558 (tuple2!14603 (BalanceConc!10727 Empty!5392) lt!518552)))))

(declare-fun b!1492196 () Bool)

(declare-fun e!954516 () Bool)

(assert (=> b!1492196 (= e!954534 e!954516)))

(declare-fun tp!424998 () Bool)

(declare-fun e!954513 () Bool)

(declare-fun b!1492197 () Bool)

(declare-fun inv!21080 (String!18812) Bool)

(declare-fun inv!21083 (TokenValueInjection!5480) Bool)

(assert (=> b!1492197 (= e!954513 (and tp!424998 (inv!21080 (tag!3084 (h!21272 rules!1640))) (inv!21083 (transformation!2820 (h!21272 rules!1640))) e!954547))))

(declare-fun b!1492198 () Bool)

(declare-fun e!954546 () Bool)

(assert (=> b!1492198 (= e!954546 e!954533)))

(declare-fun res!673211 () Bool)

(assert (=> b!1492198 (=> res!673211 e!954533)))

(declare-fun lt!518553 () List!15937)

(declare-fun lt!518547 () List!15937)

(declare-fun isSuffix!286 (List!15937 List!15937) Bool)

(assert (=> b!1492198 (= res!673211 (not (isSuffix!286 lt!518553 lt!518547)))))

(declare-fun lt!518567 () List!15937)

(assert (=> b!1492198 (isSuffix!286 lt!518553 lt!518567)))

(declare-fun lt!518544 () List!15937)

(declare-fun ++!4283 (List!15937 List!15937) List!15937)

(assert (=> b!1492198 (= lt!518567 (++!4283 lt!518544 lt!518553))))

(declare-datatypes ((Unit!25659 0))(
  ( (Unit!25660) )
))
(declare-fun lt!518565 () Unit!25659)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!264 (List!15937 List!15937) Unit!25659)

(assert (=> b!1492198 (= lt!518565 (lemmaConcatTwoListThenFSndIsSuffix!264 lt!518544 lt!518553))))

(assert (=> b!1492198 (= lt!518544 (list!6288 lt!518552))))

(assert (=> b!1492198 e!954519))

(declare-fun c!244402 () Bool)

(assert (=> b!1492198 (= c!244402 ((_ is Some!2903) lt!518564))))

(assert (=> b!1492198 (= lt!518558 (lexRec!312 thiss!13241 rules!1640 lt!518552))))

(declare-fun maxPrefixZipperSequence!575 (LexerInterface!2475 List!15939 BalanceConc!10724) Option!2904)

(assert (=> b!1492198 (= lt!518564 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 lt!518552))))

(declare-fun treated!70 () BalanceConc!10724)

(declare-fun lt!518548 () BalanceConc!10724)

(declare-fun ++!4284 (BalanceConc!10724 BalanceConc!10724) BalanceConc!10724)

(assert (=> b!1492198 (= lt!518552 (++!4284 treated!70 lt!518548))))

(declare-fun lt!518554 () List!15937)

(declare-datatypes ((tuple2!14610 0))(
  ( (tuple2!14611 (_1!8248 List!15938) (_2!8248 List!15937)) )
))
(declare-fun lexList!733 (LexerInterface!2475 List!15939 List!15937) tuple2!14610)

(assert (=> b!1492198 (= (lexList!733 thiss!13241 rules!1640 lt!518554) (tuple2!14611 lt!518546 Nil!15869))))

(declare-fun lt!518563 () List!15938)

(declare-fun lt!518549 () Unit!25659)

(declare-fun lt!518572 () tuple2!14602)

(declare-fun lemmaLexThenLexPrefix!215 (LexerInterface!2475 List!15939 List!15937 List!15937 List!15938 List!15938 List!15937) Unit!25659)

(assert (=> b!1492198 (= lt!518549 (lemmaLexThenLexPrefix!215 thiss!13241 rules!1640 lt!518554 lt!518553 lt!518546 lt!518563 (list!6288 (_2!8242 lt!518572))))))

(declare-datatypes ((tuple2!14612 0))(
  ( (tuple2!14613 (_1!8249 Context!1306) (_2!8249 C!8448)) )
))
(declare-datatypes ((tuple2!14614 0))(
  ( (tuple2!14615 (_1!8250 tuple2!14612) (_2!8250 (InoxSet Context!1306))) )
))
(declare-datatypes ((List!15943 0))(
  ( (Nil!15875) (Cons!15875 (h!21276 tuple2!14614) (t!138202 List!15943)) )
))
(declare-datatypes ((array!4976 0))(
  ( (array!4977 (arr!2223 (Array (_ BitVec 32) List!15943)) (size!12841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2824 0))(
  ( (LongMapFixedSize!2825 (defaultEntry!1772 Int) (mask!4568 (_ BitVec 32)) (extraKeys!1659 (_ BitVec 32)) (zeroValue!1669 List!15943) (minValue!1669 List!15943) (_size!2905 (_ BitVec 32)) (_keys!1706 array!4972) (_values!1691 array!4976) (_vacant!1473 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5533 0))(
  ( (Cell!5534 (v!22699 LongMapFixedSize!2824)) )
))
(declare-datatypes ((MutLongMap!1412 0))(
  ( (LongMap!1412 (underlying!3033 Cell!5533)) (MutLongMapExt!1411 (__x!9794 Int)) )
))
(declare-datatypes ((Hashable!1356 0))(
  ( (HashableExt!1355 (__x!9795 Int)) )
))
(declare-datatypes ((Cell!5535 0))(
  ( (Cell!5536 (v!22700 MutLongMap!1412)) )
))
(declare-datatypes ((MutableMap!1356 0))(
  ( (MutableMapExt!1355 (__x!9796 Int)) (HashMap!1356 (underlying!3034 Cell!5535) (hashF!3275 Hashable!1356) (_size!2906 (_ BitVec 32)) (defaultValue!1516 Int)) )
))
(declare-datatypes ((CacheUp!802 0))(
  ( (CacheUp!803 (cache!1737 MutableMap!1356)) )
))
(declare-datatypes ((tuple4!612 0))(
  ( (tuple4!613 (_1!8251 Option!2904) (_2!8251 CacheUp!802) (_3!943 CacheDown!806) (_4!306 CacheFurthestNullable!228)) )
))
(declare-fun lt!518569 () tuple4!612)

(declare-fun append!477 (BalanceConc!10726 Token!5302) BalanceConc!10726)

(assert (=> b!1492198 (= lt!518546 (list!6289 (append!477 acc!392 (_1!8247 (v!22698 (_1!8251 lt!518569))))))))

(declare-fun lt!518545 () List!15938)

(declare-fun lt!518560 () List!15938)

(declare-fun ++!4285 (List!15938 List!15938) List!15938)

(assert (=> b!1492198 (= (++!4285 (++!4285 lt!518545 lt!518560) lt!518563) (++!4285 lt!518545 (++!4285 lt!518560 lt!518563)))))

(declare-fun lt!518566 () Unit!25659)

(declare-fun lemmaConcatAssociativity!911 (List!15938 List!15938 List!15938) Unit!25659)

(assert (=> b!1492198 (= lt!518566 (lemmaConcatAssociativity!911 lt!518545 lt!518560 lt!518563))))

(assert (=> b!1492198 (= lt!518563 (list!6289 (_1!8242 lt!518572)))))

(assert (=> b!1492198 (= lt!518560 (Cons!15870 (_1!8247 (v!22698 (_1!8251 lt!518569))) Nil!15870))))

(declare-fun e!954532 () tuple2!14602)

(assert (=> b!1492198 (= lt!518562 e!954532)))

(declare-fun c!244403 () Bool)

(declare-fun lt!518559 () Option!2904)

(assert (=> b!1492198 (= c!244403 ((_ is Some!2903) lt!518559))))

(declare-fun input!1102 () BalanceConc!10724)

(assert (=> b!1492198 (= lt!518559 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!518550 () List!15937)

(declare-fun lt!518575 () List!15937)

(assert (=> b!1492198 (= (++!4283 lt!518554 lt!518553) (++!4283 lt!518550 (++!4283 lt!518575 lt!518553)))))

(assert (=> b!1492198 (= lt!518554 (++!4283 lt!518550 lt!518575))))

(declare-fun lt!518557 () Unit!25659)

(declare-fun lemmaConcatAssociativity!912 (List!15937 List!15937 List!15937) Unit!25659)

(assert (=> b!1492198 (= lt!518557 (lemmaConcatAssociativity!912 lt!518550 lt!518575 lt!518553))))

(assert (=> b!1492198 (= lt!518553 (list!6288 (_2!8247 (v!22698 (_1!8251 lt!518569)))))))

(assert (=> b!1492198 (= lt!518575 (list!6288 lt!518548))))

(declare-fun charsOf!1616 (Token!5302) BalanceConc!10724)

(assert (=> b!1492198 (= lt!518548 (charsOf!1616 (_1!8247 (v!22698 (_1!8251 lt!518569)))))))

(assert (=> b!1492198 (= lt!518572 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 (_1!8251 lt!518569)))))))

(declare-fun b!1492199 () Bool)

(declare-fun e!954549 () Bool)

(declare-fun tp!425016 () Bool)

(declare-fun mapRes!6697 () Bool)

(assert (=> b!1492199 (= e!954549 (and tp!425016 mapRes!6697))))

(declare-fun condMapEmpty!6698 () Bool)

(declare-fun mapDefault!6696 () List!15942)

(assert (=> b!1492199 (= condMapEmpty!6698 (= (arr!2222 (_values!1690 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15942)) mapDefault!6696)))))

(declare-fun mapIsEmpty!6697 () Bool)

(assert (=> mapIsEmpty!6697 mapRes!6697))

(declare-fun b!1492200 () Bool)

(declare-fun res!673207 () Bool)

(declare-fun e!954539 () Bool)

(assert (=> b!1492200 (=> (not res!673207) (not e!954539))))

(declare-fun lt!518573 () tuple2!14602)

(declare-fun isEmpty!9866 (List!15937) Bool)

(assert (=> b!1492200 (= res!673207 (isEmpty!9866 (list!6288 (_2!8242 lt!518573))))))

(declare-fun b!1492201 () Bool)

(declare-fun e!954529 () Bool)

(declare-fun tp!425022 () Bool)

(assert (=> b!1492201 (= e!954529 (and e!954513 tp!425022))))

(declare-fun b!1492202 () Bool)

(declare-fun res!673219 () Bool)

(assert (=> b!1492202 (=> res!673219 e!954533)))

(assert (=> b!1492202 (= res!673219 (not (= lt!518547 lt!518567)))))

(declare-fun b!1492203 () Bool)

(declare-fun lt!518571 () MutLongMap!1412)

(assert (=> b!1492203 (= e!954550 (and e!954536 ((_ is LongMap!1412) lt!518571)))))

(declare-fun cacheUp!616 () CacheUp!802)

(assert (=> b!1492203 (= lt!518571 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))

(declare-fun mapIsEmpty!6698 () Bool)

(declare-fun mapRes!6696 () Bool)

(assert (=> mapIsEmpty!6698 mapRes!6696))

(declare-fun b!1492204 () Bool)

(declare-fun res!673218 () Bool)

(assert (=> b!1492204 (=> (not res!673218) (not e!954518))))

(declare-fun isEmpty!9867 (List!15939) Bool)

(assert (=> b!1492204 (= res!673218 (not (isEmpty!9867 rules!1640)))))

(declare-fun b!1492205 () Bool)

(declare-fun e!954520 () Bool)

(declare-fun e!954551 () Bool)

(assert (=> b!1492205 (= e!954520 e!954551)))

(declare-fun b!1492206 () Bool)

(declare-fun e!954543 () Bool)

(assert (=> b!1492206 (= e!954518 e!954543)))

(declare-fun res!673220 () Bool)

(assert (=> b!1492206 (=> (not res!673220) (not e!954543))))

(declare-fun lt!518568 () List!15937)

(assert (=> b!1492206 (= res!673220 (= lt!518547 lt!518568))))

(declare-fun lt!518556 () List!15937)

(assert (=> b!1492206 (= lt!518568 (++!4283 lt!518550 lt!518556))))

(declare-fun totalInput!458 () BalanceConc!10724)

(assert (=> b!1492206 (= lt!518547 (list!6288 totalInput!458))))

(assert (=> b!1492206 (= lt!518556 (list!6288 input!1102))))

(assert (=> b!1492206 (= lt!518550 (list!6288 treated!70))))

(declare-fun b!1492207 () Bool)

(declare-fun e!954523 () Bool)

(assert (=> b!1492207 (= e!954523 e!954535)))

(declare-fun b!1492208 () Bool)

(assert (=> b!1492208 (= e!954543 e!954539)))

(declare-fun res!673208 () Bool)

(assert (=> b!1492208 (=> (not res!673208) (not e!954539))))

(declare-fun lt!518555 () List!15938)

(assert (=> b!1492208 (= res!673208 (= lt!518555 lt!518545))))

(assert (=> b!1492208 (= lt!518545 (list!6289 acc!392))))

(assert (=> b!1492208 (= lt!518555 (list!6289 (_1!8242 lt!518573)))))

(assert (=> b!1492208 (= lt!518573 (lexRec!312 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1492209 () Bool)

(assert (=> b!1492209 (= e!954539 e!954545)))

(declare-fun res!673213 () Bool)

(assert (=> b!1492209 (=> (not res!673213) (not e!954545))))

(declare-fun ++!4286 (BalanceConc!10726 BalanceConc!10726) BalanceConc!10726)

(assert (=> b!1492209 (= res!673213 (= (list!6289 (_1!8242 lt!518574)) (list!6289 (++!4286 acc!392 (_1!8242 lt!518562)))))))

(assert (=> b!1492209 (= lt!518562 (lexRec!312 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1492209 (= lt!518574 (lexRec!312 thiss!13241 rules!1640 totalInput!458))))

(declare-fun tp!424999 () Bool)

(declare-fun tp!425000 () Bool)

(declare-fun e!954524 () Bool)

(declare-fun array_inv!1611 (array!4972) Bool)

(declare-fun array_inv!1612 (array!4976) Bool)

(assert (=> b!1492210 (= e!954516 (and tp!425003 tp!425000 tp!424999 (array_inv!1611 (_keys!1706 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) (array_inv!1612 (_values!1691 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) e!954524))))

(declare-fun b!1492211 () Bool)

(declare-fun e!954521 () Bool)

(declare-fun tp!424994 () Bool)

(assert (=> b!1492211 (= e!954521 (and (inv!21082 (c!244404 treated!70)) tp!424994))))

(declare-fun b!1492212 () Bool)

(declare-fun res!673205 () Bool)

(assert (=> b!1492212 (=> (not res!673205) (not e!954545))))

(declare-fun valid!1111 (CacheFurthestNullable!228) Bool)

(assert (=> b!1492212 (= res!673205 (valid!1111 cacheFurthestNullable!64))))

(declare-fun b!1492213 () Bool)

(declare-fun e!954522 () Bool)

(assert (=> b!1492213 (= e!954545 (not e!954522))))

(declare-fun res!673206 () Bool)

(assert (=> b!1492213 (=> res!673206 e!954522)))

(assert (=> b!1492213 (= res!673206 (not (isSuffix!286 lt!518556 lt!518547)))))

(assert (=> b!1492213 (isSuffix!286 lt!518556 lt!518568)))

(declare-fun lt!518551 () Unit!25659)

(assert (=> b!1492213 (= lt!518551 (lemmaConcatTwoListThenFSndIsSuffix!264 lt!518550 lt!518556))))

(declare-fun b!1492214 () Bool)

(declare-fun res!673209 () Bool)

(assert (=> b!1492214 (=> res!673209 e!954533)))

(assert (=> b!1492214 (= res!673209 (not (valid!1111 (_4!306 lt!518569))))))

(declare-fun b!1492215 () Bool)

(declare-fun e!954537 () Bool)

(declare-fun tp!425008 () Bool)

(assert (=> b!1492215 (= e!954537 (and (inv!21082 (c!244404 totalInput!458)) tp!425008))))

(declare-fun b!1492216 () Bool)

(declare-fun e!954542 () Bool)

(assert (=> b!1492216 (= e!954531 e!954542)))

(declare-fun res!673224 () Bool)

(assert (=> start!139924 (=> (not res!673224) (not e!954518))))

(assert (=> start!139924 (= res!673224 ((_ is Lexer!2473) thiss!13241))))

(assert (=> start!139924 e!954518))

(declare-fun inv!21084 (BalanceConc!10726) Bool)

(assert (=> start!139924 (and (inv!21084 acc!392) e!954548)))

(declare-fun inv!21085 (CacheUp!802) Bool)

(assert (=> start!139924 (and (inv!21085 cacheUp!616) e!954523)))

(declare-fun e!954515 () Bool)

(declare-fun inv!21086 (CacheDown!806) Bool)

(assert (=> start!139924 (and (inv!21086 cacheDown!629) e!954515)))

(declare-fun e!954526 () Bool)

(declare-fun inv!21087 (BalanceConc!10724) Bool)

(assert (=> start!139924 (and (inv!21087 input!1102) e!954526)))

(assert (=> start!139924 (and (inv!21087 treated!70) e!954521)))

(assert (=> start!139924 true))

(assert (=> start!139924 e!954529))

(declare-fun e!954512 () Bool)

(declare-fun inv!21088 (CacheFurthestNullable!228) Bool)

(assert (=> start!139924 (and (inv!21088 cacheFurthestNullable!64) e!954512)))

(assert (=> start!139924 (and (inv!21087 totalInput!458) e!954537)))

(declare-fun b!1492217 () Bool)

(assert (=> b!1492217 (= e!954533 (isEmpty!9866 (list!6288 (_2!8242 lt!518558))))))

(declare-fun b!1492218 () Bool)

(declare-fun tp!425007 () Bool)

(assert (=> b!1492218 (= e!954526 (and (inv!21082 (c!244404 input!1102)) tp!425007))))

(declare-fun b!1492219 () Bool)

(declare-fun res!673223 () Bool)

(assert (=> b!1492219 (=> (not res!673223) (not e!954545))))

(declare-fun valid!1112 (CacheDown!806) Bool)

(assert (=> b!1492219 (= res!673223 (valid!1112 cacheDown!629))))

(declare-fun b!1492220 () Bool)

(declare-fun e!954538 () Bool)

(assert (=> b!1492220 (= e!954515 e!954538)))

(declare-fun e!954530 () Bool)

(declare-fun b!1492221 () Bool)

(assert (=> b!1492221 (= e!954512 (and e!954530 (inv!21087 (totalInput!2255 cacheFurthestNullable!64)) e!954528))))

(declare-fun b!1492222 () Bool)

(declare-fun e!954511 () Bool)

(declare-fun e!954514 () Bool)

(declare-fun lt!518561 () MutLongMap!1410)

(assert (=> b!1492222 (= e!954511 (and e!954514 ((_ is LongMap!1410) lt!518561)))))

(assert (=> b!1492222 (= lt!518561 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))

(declare-fun tp!425015 () Bool)

(declare-fun tp!425006 () Bool)

(declare-fun e!954540 () Bool)

(declare-fun array_inv!1613 (array!4974) Bool)

(assert (=> b!1492223 (= e!954540 (and tp!425012 tp!425006 tp!425015 (array_inv!1611 (_keys!1705 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) (array_inv!1613 (_values!1690 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) e!954549))))

(declare-fun b!1492224 () Bool)

(declare-fun res!673217 () Bool)

(assert (=> b!1492224 (=> res!673217 e!954533)))

(assert (=> b!1492224 (= res!673217 (not (valid!1112 (_3!943 lt!518569))))))

(declare-fun b!1492225 () Bool)

(declare-fun res!673210 () Bool)

(assert (=> b!1492225 (=> (not res!673210) (not e!954545))))

(declare-fun valid!1113 (CacheUp!802) Bool)

(assert (=> b!1492225 (= res!673210 (valid!1113 cacheUp!616))))

(assert (=> b!1492226 (= e!954530 (and e!954511 tp!424993))))

(declare-fun b!1492227 () Bool)

(declare-fun tp!425009 () Bool)

(assert (=> b!1492227 (= e!954524 (and tp!425009 mapRes!6696))))

(declare-fun condMapEmpty!6697 () Bool)

(declare-fun mapDefault!6698 () List!15943)

(assert (=> b!1492227 (= condMapEmpty!6697 (= (arr!2223 (_values!1691 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15943)) mapDefault!6698)))))

(declare-fun b!1492228 () Bool)

(declare-fun res!673212 () Bool)

(assert (=> b!1492228 (=> (not res!673212) (not e!954545))))

(assert (=> b!1492228 (= res!673212 (= (totalInput!2255 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1492229 () Bool)

(declare-fun res!673216 () Bool)

(assert (=> b!1492229 (=> res!673216 e!954533)))

(assert (=> b!1492229 (= res!673216 (not (valid!1113 (_2!8251 lt!518569))))))

(declare-fun b!1492230 () Bool)

(declare-fun lt!518542 () tuple2!14602)

(assert (=> b!1492230 (= e!954532 (tuple2!14603 (prepend!443 (_1!8242 lt!518542) (_1!8247 (v!22698 lt!518559))) (_2!8242 lt!518542)))))

(assert (=> b!1492230 (= lt!518542 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518559))))))

(declare-fun mapNonEmpty!6696 () Bool)

(declare-fun tp!425020 () Bool)

(declare-fun tp!425014 () Bool)

(assert (=> mapNonEmpty!6696 (= mapRes!6696 (and tp!425020 tp!425014))))

(declare-fun mapRest!6696 () (Array (_ BitVec 32) List!15943))

(declare-fun mapKey!6697 () (_ BitVec 32))

(declare-fun mapValue!6698 () List!15943)

(assert (=> mapNonEmpty!6696 (= (arr!2223 (_values!1691 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) (store mapRest!6696 mapKey!6697 mapValue!6698))))

(assert (=> b!1492231 (= e!954538 (and e!954517 tp!425010))))

(declare-fun b!1492232 () Bool)

(assert (=> b!1492232 (= e!954514 e!954520)))

(declare-fun mapNonEmpty!6697 () Bool)

(declare-fun tp!425017 () Bool)

(declare-fun tp!425018 () Bool)

(assert (=> mapNonEmpty!6697 (= mapRes!6698 (and tp!425017 tp!425018))))

(declare-fun mapRest!6697 () (Array (_ BitVec 32) List!15941))

(declare-fun mapKey!6698 () (_ BitVec 32))

(declare-fun mapValue!6697 () List!15941)

(assert (=> mapNonEmpty!6697 (= (arr!2220 (_values!1689 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) (store mapRest!6697 mapKey!6698 mapValue!6697))))

(declare-fun b!1492233 () Bool)

(assert (=> b!1492233 (= e!954542 e!954540)))

(declare-fun mapNonEmpty!6698 () Bool)

(declare-fun tp!425021 () Bool)

(declare-fun tp!424997 () Bool)

(assert (=> mapNonEmpty!6698 (= mapRes!6697 (and tp!425021 tp!424997))))

(declare-fun mapKey!6696 () (_ BitVec 32))

(declare-fun mapRest!6698 () (Array (_ BitVec 32) List!15942))

(declare-fun mapValue!6696 () List!15942)

(assert (=> mapNonEmpty!6698 (= (arr!2222 (_values!1690 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) (store mapRest!6698 mapKey!6696 mapValue!6696))))

(declare-fun b!1492234 () Bool)

(assert (=> b!1492234 (= e!954522 e!954546)))

(declare-fun res!673215 () Bool)

(assert (=> b!1492234 (=> res!673215 e!954546)))

(assert (=> b!1492234 (= res!673215 (not ((_ is Some!2903) (_1!8251 lt!518569))))))

(declare-fun maxPrefixZipperSequenceV3Mem!12 (LexerInterface!2475 List!15939 BalanceConc!10724 BalanceConc!10724 CacheUp!802 CacheDown!806 CacheFurthestNullable!228) tuple4!612)

(assert (=> b!1492234 (= lt!518569 (maxPrefixZipperSequenceV3Mem!12 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1492235 () Bool)

(assert (=> b!1492235 (= e!954532 (tuple2!14603 (BalanceConc!10727 Empty!5392) input!1102))))

(declare-fun tp!425019 () Bool)

(declare-fun tp!425001 () Bool)

(declare-fun array_inv!1614 (array!4970) Bool)

(assert (=> b!1492236 (= e!954551 (and tp!425011 tp!425001 tp!425019 (array_inv!1611 (_keys!1704 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) (array_inv!1614 (_values!1689 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) e!954527))))

(assert (= (and start!139924 res!673224) b!1492204))

(assert (= (and b!1492204 res!673218) b!1492187))

(assert (= (and b!1492187 res!673221) b!1492206))

(assert (= (and b!1492206 res!673220) b!1492208))

(assert (= (and b!1492208 res!673208) b!1492200))

(assert (= (and b!1492200 res!673207) b!1492209))

(assert (= (and b!1492209 res!673213) b!1492185))

(assert (= (and b!1492185 res!673222) b!1492225))

(assert (= (and b!1492225 res!673210) b!1492219))

(assert (= (and b!1492219 res!673223) b!1492212))

(assert (= (and b!1492212 res!673205) b!1492228))

(assert (= (and b!1492228 res!673212) b!1492213))

(assert (= (and b!1492213 (not res!673206)) b!1492234))

(assert (= (and b!1492234 (not res!673215)) b!1492198))

(assert (= (and b!1492198 c!244403) b!1492230))

(assert (= (and b!1492198 (not c!244403)) b!1492235))

(assert (= (and b!1492198 c!244402) b!1492194))

(assert (= (and b!1492198 (not c!244402)) b!1492195))

(assert (= (and b!1492198 (not res!673211)) b!1492214))

(assert (= (and b!1492214 (not res!673209)) b!1492229))

(assert (= (and b!1492229 (not res!673216)) b!1492224))

(assert (= (and b!1492224 (not res!673217)) b!1492202))

(assert (= (and b!1492202 (not res!673219)) b!1492186))

(assert (= (and b!1492186 (not res!673214)) b!1492217))

(assert (= start!139924 b!1492190))

(assert (= (and b!1492227 condMapEmpty!6697) mapIsEmpty!6698))

(assert (= (and b!1492227 (not condMapEmpty!6697)) mapNonEmpty!6696))

(assert (= b!1492210 b!1492227))

(assert (= b!1492196 b!1492210))

(assert (= b!1492188 b!1492196))

(assert (= (and b!1492203 ((_ is LongMap!1412) (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))) b!1492188))

(assert (= b!1492184 b!1492203))

(assert (= (and b!1492207 ((_ is HashMap!1356) (cache!1737 cacheUp!616))) b!1492184))

(assert (= start!139924 b!1492207))

(assert (= (and b!1492199 condMapEmpty!6698) mapIsEmpty!6697))

(assert (= (and b!1492199 (not condMapEmpty!6698)) mapNonEmpty!6698))

(assert (= b!1492223 b!1492199))

(assert (= b!1492233 b!1492223))

(assert (= b!1492216 b!1492233))

(assert (= (and b!1492192 ((_ is LongMap!1411) (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))) b!1492216))

(assert (= b!1492231 b!1492192))

(assert (= (and b!1492220 ((_ is HashMap!1355) (cache!1736 cacheDown!629))) b!1492231))

(assert (= start!139924 b!1492220))

(assert (= start!139924 b!1492218))

(assert (= start!139924 b!1492211))

(assert (= b!1492197 b!1492191))

(assert (= b!1492201 b!1492197))

(assert (= (and start!139924 ((_ is Cons!15871) rules!1640)) b!1492201))

(assert (= (and b!1492189 condMapEmpty!6696) mapIsEmpty!6696))

(assert (= (and b!1492189 (not condMapEmpty!6696)) mapNonEmpty!6697))

(assert (= b!1492236 b!1492189))

(assert (= b!1492205 b!1492236))

(assert (= b!1492232 b!1492205))

(assert (= (and b!1492222 ((_ is LongMap!1410) (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))) b!1492232))

(assert (= b!1492226 b!1492222))

(assert (= (and b!1492221 ((_ is HashMap!1354) (cache!1735 cacheFurthestNullable!64))) b!1492226))

(assert (= b!1492221 b!1492193))

(assert (= start!139924 b!1492221))

(assert (= start!139924 b!1492215))

(declare-fun m!1742867 () Bool)

(assert (=> b!1492213 m!1742867))

(declare-fun m!1742869 () Bool)

(assert (=> b!1492213 m!1742869))

(declare-fun m!1742871 () Bool)

(assert (=> b!1492213 m!1742871))

(declare-fun m!1742873 () Bool)

(assert (=> b!1492214 m!1742873))

(declare-fun m!1742875 () Bool)

(assert (=> b!1492194 m!1742875))

(declare-fun m!1742877 () Bool)

(assert (=> b!1492194 m!1742877))

(declare-fun m!1742879 () Bool)

(assert (=> b!1492206 m!1742879))

(declare-fun m!1742881 () Bool)

(assert (=> b!1492206 m!1742881))

(declare-fun m!1742883 () Bool)

(assert (=> b!1492206 m!1742883))

(declare-fun m!1742885 () Bool)

(assert (=> b!1492206 m!1742885))

(declare-fun m!1742887 () Bool)

(assert (=> b!1492218 m!1742887))

(declare-fun m!1742889 () Bool)

(assert (=> b!1492217 m!1742889))

(assert (=> b!1492217 m!1742889))

(declare-fun m!1742891 () Bool)

(assert (=> b!1492217 m!1742891))

(declare-fun m!1742893 () Bool)

(assert (=> start!139924 m!1742893))

(declare-fun m!1742895 () Bool)

(assert (=> start!139924 m!1742895))

(declare-fun m!1742897 () Bool)

(assert (=> start!139924 m!1742897))

(declare-fun m!1742899 () Bool)

(assert (=> start!139924 m!1742899))

(declare-fun m!1742901 () Bool)

(assert (=> start!139924 m!1742901))

(declare-fun m!1742903 () Bool)

(assert (=> start!139924 m!1742903))

(declare-fun m!1742905 () Bool)

(assert (=> start!139924 m!1742905))

(declare-fun m!1742907 () Bool)

(assert (=> b!1492193 m!1742907))

(declare-fun m!1742909 () Bool)

(assert (=> b!1492197 m!1742909))

(declare-fun m!1742911 () Bool)

(assert (=> b!1492197 m!1742911))

(declare-fun m!1742913 () Bool)

(assert (=> b!1492236 m!1742913))

(declare-fun m!1742915 () Bool)

(assert (=> b!1492236 m!1742915))

(declare-fun m!1742917 () Bool)

(assert (=> mapNonEmpty!6697 m!1742917))

(declare-fun m!1742919 () Bool)

(assert (=> b!1492200 m!1742919))

(assert (=> b!1492200 m!1742919))

(declare-fun m!1742921 () Bool)

(assert (=> b!1492200 m!1742921))

(declare-fun m!1742923 () Bool)

(assert (=> b!1492208 m!1742923))

(declare-fun m!1742925 () Bool)

(assert (=> b!1492208 m!1742925))

(declare-fun m!1742927 () Bool)

(assert (=> b!1492208 m!1742927))

(declare-fun m!1742929 () Bool)

(assert (=> b!1492198 m!1742929))

(declare-fun m!1742931 () Bool)

(assert (=> b!1492198 m!1742931))

(declare-fun m!1742933 () Bool)

(assert (=> b!1492198 m!1742933))

(declare-fun m!1742935 () Bool)

(assert (=> b!1492198 m!1742935))

(declare-fun m!1742937 () Bool)

(assert (=> b!1492198 m!1742937))

(declare-fun m!1742939 () Bool)

(assert (=> b!1492198 m!1742939))

(declare-fun m!1742941 () Bool)

(assert (=> b!1492198 m!1742941))

(declare-fun m!1742943 () Bool)

(assert (=> b!1492198 m!1742943))

(declare-fun m!1742945 () Bool)

(assert (=> b!1492198 m!1742945))

(declare-fun m!1742947 () Bool)

(assert (=> b!1492198 m!1742947))

(assert (=> b!1492198 m!1742943))

(declare-fun m!1742949 () Bool)

(assert (=> b!1492198 m!1742949))

(declare-fun m!1742951 () Bool)

(assert (=> b!1492198 m!1742951))

(declare-fun m!1742953 () Bool)

(assert (=> b!1492198 m!1742953))

(assert (=> b!1492198 m!1742933))

(declare-fun m!1742955 () Bool)

(assert (=> b!1492198 m!1742955))

(declare-fun m!1742957 () Bool)

(assert (=> b!1492198 m!1742957))

(assert (=> b!1492198 m!1742947))

(declare-fun m!1742959 () Bool)

(assert (=> b!1492198 m!1742959))

(declare-fun m!1742961 () Bool)

(assert (=> b!1492198 m!1742961))

(declare-fun m!1742963 () Bool)

(assert (=> b!1492198 m!1742963))

(declare-fun m!1742965 () Bool)

(assert (=> b!1492198 m!1742965))

(declare-fun m!1742967 () Bool)

(assert (=> b!1492198 m!1742967))

(declare-fun m!1742969 () Bool)

(assert (=> b!1492198 m!1742969))

(declare-fun m!1742971 () Bool)

(assert (=> b!1492198 m!1742971))

(declare-fun m!1742973 () Bool)

(assert (=> b!1492198 m!1742973))

(declare-fun m!1742975 () Bool)

(assert (=> b!1492198 m!1742975))

(assert (=> b!1492198 m!1742969))

(declare-fun m!1742977 () Bool)

(assert (=> b!1492198 m!1742977))

(declare-fun m!1742979 () Bool)

(assert (=> b!1492198 m!1742979))

(assert (=> b!1492198 m!1742949))

(declare-fun m!1742981 () Bool)

(assert (=> b!1492198 m!1742981))

(declare-fun m!1742983 () Bool)

(assert (=> b!1492198 m!1742983))

(declare-fun m!1742985 () Bool)

(assert (=> b!1492198 m!1742985))

(declare-fun m!1742987 () Bool)

(assert (=> b!1492223 m!1742987))

(declare-fun m!1742989 () Bool)

(assert (=> b!1492223 m!1742989))

(declare-fun m!1742991 () Bool)

(assert (=> b!1492187 m!1742991))

(declare-fun m!1742993 () Bool)

(assert (=> b!1492212 m!1742993))

(declare-fun m!1742995 () Bool)

(assert (=> b!1492186 m!1742995))

(declare-fun m!1742997 () Bool)

(assert (=> b!1492210 m!1742997))

(declare-fun m!1742999 () Bool)

(assert (=> b!1492210 m!1742999))

(declare-fun m!1743001 () Bool)

(assert (=> mapNonEmpty!6698 m!1743001))

(declare-fun m!1743003 () Bool)

(assert (=> b!1492211 m!1743003))

(declare-fun m!1743005 () Bool)

(assert (=> b!1492234 m!1743005))

(declare-fun m!1743007 () Bool)

(assert (=> b!1492221 m!1743007))

(declare-fun m!1743009 () Bool)

(assert (=> mapNonEmpty!6696 m!1743009))

(declare-fun m!1743011 () Bool)

(assert (=> b!1492204 m!1743011))

(declare-fun m!1743013 () Bool)

(assert (=> b!1492185 m!1743013))

(declare-fun m!1743015 () Bool)

(assert (=> b!1492185 m!1743015))

(declare-fun m!1743017 () Bool)

(assert (=> b!1492190 m!1743017))

(declare-fun m!1743019 () Bool)

(assert (=> b!1492230 m!1743019))

(declare-fun m!1743021 () Bool)

(assert (=> b!1492230 m!1743021))

(declare-fun m!1743023 () Bool)

(assert (=> b!1492225 m!1743023))

(declare-fun m!1743025 () Bool)

(assert (=> b!1492215 m!1743025))

(declare-fun m!1743027 () Bool)

(assert (=> b!1492229 m!1743027))

(declare-fun m!1743029 () Bool)

(assert (=> b!1492219 m!1743029))

(declare-fun m!1743031 () Bool)

(assert (=> b!1492224 m!1743031))

(declare-fun m!1743033 () Bool)

(assert (=> b!1492209 m!1743033))

(declare-fun m!1743035 () Bool)

(assert (=> b!1492209 m!1743035))

(declare-fun m!1743037 () Bool)

(assert (=> b!1492209 m!1743037))

(declare-fun m!1743039 () Bool)

(assert (=> b!1492209 m!1743039))

(declare-fun m!1743041 () Bool)

(assert (=> b!1492209 m!1743041))

(assert (=> b!1492209 m!1743037))

(check-sat b_and!103813 (not b!1492204) (not b!1492206) b_and!103815 (not b!1492229) (not b!1492190) (not b!1492201) (not b!1492215) (not b!1492210) (not b!1492219) (not b!1492185) (not b!1492199) b_and!103809 (not b_next!39465) (not b!1492230) (not b_next!39467) (not b_next!39463) (not b!1492221) (not mapNonEmpty!6697) (not b_next!39473) (not b!1492208) (not b_next!39477) (not b!1492211) (not mapNonEmpty!6696) (not b!1492193) (not mapNonEmpty!6698) b_and!103801 (not b!1492186) (not b!1492217) (not start!139924) (not b!1492218) (not b!1492225) (not b!1492197) (not b!1492209) b_and!103811 (not b!1492236) (not b!1492227) (not b!1492194) (not b!1492200) b_and!103803 (not b_next!39475) (not b!1492189) (not b!1492234) (not b!1492214) (not b!1492198) (not b!1492213) (not b!1492224) (not b!1492212) (not b_next!39469) (not b!1492223) b_and!103805 b_and!103807 (not b_next!39471) (not b!1492187))
(check-sat b_and!103813 b_and!103809 (not b_next!39465) b_and!103815 (not b_next!39473) (not b_next!39477) b_and!103801 b_and!103811 b_and!103803 (not b_next!39475) (not b_next!39469) (not b_next!39471) (not b_next!39467) (not b_next!39463) b_and!103805 b_and!103807)
(get-model)

(declare-fun d!438365 () Bool)

(declare-fun e!954554 () Bool)

(assert (=> d!438365 e!954554))

(declare-fun res!673229 () Bool)

(assert (=> d!438365 (=> res!673229 e!954554)))

(declare-fun lt!518578 () Bool)

(assert (=> d!438365 (= res!673229 (not lt!518578))))

(declare-fun drop!752 (List!15937 Int) List!15937)

(declare-fun size!12842 (List!15937) Int)

(assert (=> d!438365 (= lt!518578 (= lt!518556 (drop!752 lt!518547 (- (size!12842 lt!518547) (size!12842 lt!518556)))))))

(assert (=> d!438365 (= (isSuffix!286 lt!518556 lt!518547) lt!518578)))

(declare-fun b!1492239 () Bool)

(assert (=> b!1492239 (= e!954554 (>= (size!12842 lt!518547) (size!12842 lt!518556)))))

(assert (= (and d!438365 (not res!673229)) b!1492239))

(declare-fun m!1743043 () Bool)

(assert (=> d!438365 m!1743043))

(declare-fun m!1743045 () Bool)

(assert (=> d!438365 m!1743045))

(declare-fun m!1743047 () Bool)

(assert (=> d!438365 m!1743047))

(assert (=> b!1492239 m!1743043))

(assert (=> b!1492239 m!1743045))

(assert (=> b!1492213 d!438365))

(declare-fun d!438367 () Bool)

(declare-fun e!954555 () Bool)

(assert (=> d!438367 e!954555))

(declare-fun res!673230 () Bool)

(assert (=> d!438367 (=> res!673230 e!954555)))

(declare-fun lt!518579 () Bool)

(assert (=> d!438367 (= res!673230 (not lt!518579))))

(assert (=> d!438367 (= lt!518579 (= lt!518556 (drop!752 lt!518568 (- (size!12842 lt!518568) (size!12842 lt!518556)))))))

(assert (=> d!438367 (= (isSuffix!286 lt!518556 lt!518568) lt!518579)))

(declare-fun b!1492240 () Bool)

(assert (=> b!1492240 (= e!954555 (>= (size!12842 lt!518568) (size!12842 lt!518556)))))

(assert (= (and d!438367 (not res!673230)) b!1492240))

(declare-fun m!1743049 () Bool)

(assert (=> d!438367 m!1743049))

(assert (=> d!438367 m!1743045))

(declare-fun m!1743051 () Bool)

(assert (=> d!438367 m!1743051))

(assert (=> b!1492240 m!1743049))

(assert (=> b!1492240 m!1743045))

(assert (=> b!1492213 d!438367))

(declare-fun d!438369 () Bool)

(assert (=> d!438369 (isSuffix!286 lt!518556 (++!4283 lt!518550 lt!518556))))

(declare-fun lt!518582 () Unit!25659)

(declare-fun choose!9100 (List!15937 List!15937) Unit!25659)

(assert (=> d!438369 (= lt!518582 (choose!9100 lt!518550 lt!518556))))

(assert (=> d!438369 (= (lemmaConcatTwoListThenFSndIsSuffix!264 lt!518550 lt!518556) lt!518582)))

(declare-fun bs!351029 () Bool)

(assert (= bs!351029 d!438369))

(assert (=> bs!351029 m!1742879))

(assert (=> bs!351029 m!1742879))

(declare-fun m!1743053 () Bool)

(assert (=> bs!351029 m!1743053))

(declare-fun m!1743055 () Bool)

(assert (=> bs!351029 m!1743055))

(assert (=> b!1492213 d!438369))

(declare-fun d!438371 () Bool)

(declare-fun c!244409 () Bool)

(assert (=> d!438371 (= c!244409 ((_ is Node!5391) (c!244404 (totalInput!2255 cacheFurthestNullable!64))))))

(declare-fun e!954560 () Bool)

(assert (=> d!438371 (= (inv!21082 (c!244404 (totalInput!2255 cacheFurthestNullable!64))) e!954560)))

(declare-fun b!1492247 () Bool)

(declare-fun inv!21089 (Conc!5391) Bool)

(assert (=> b!1492247 (= e!954560 (inv!21089 (c!244404 (totalInput!2255 cacheFurthestNullable!64))))))

(declare-fun b!1492248 () Bool)

(declare-fun e!954561 () Bool)

(assert (=> b!1492248 (= e!954560 e!954561)))

(declare-fun res!673233 () Bool)

(assert (=> b!1492248 (= res!673233 (not ((_ is Leaf!8004) (c!244404 (totalInput!2255 cacheFurthestNullable!64)))))))

(assert (=> b!1492248 (=> res!673233 e!954561)))

(declare-fun b!1492249 () Bool)

(declare-fun inv!21090 (Conc!5391) Bool)

(assert (=> b!1492249 (= e!954561 (inv!21090 (c!244404 (totalInput!2255 cacheFurthestNullable!64))))))

(assert (= (and d!438371 c!244409) b!1492247))

(assert (= (and d!438371 (not c!244409)) b!1492248))

(assert (= (and b!1492248 (not res!673233)) b!1492249))

(declare-fun m!1743057 () Bool)

(assert (=> b!1492247 m!1743057))

(declare-fun m!1743059 () Bool)

(assert (=> b!1492249 m!1743059))

(assert (=> b!1492193 d!438371))

(declare-fun d!438373 () Bool)

(declare-fun validCacheMapFurthestNullable!40 (MutableMap!1354 BalanceConc!10724) Bool)

(assert (=> d!438373 (= (valid!1111 cacheFurthestNullable!64) (validCacheMapFurthestNullable!40 (cache!1735 cacheFurthestNullable!64) (totalInput!2255 cacheFurthestNullable!64)))))

(declare-fun bs!351030 () Bool)

(assert (= bs!351030 d!438373))

(declare-fun m!1743061 () Bool)

(assert (=> bs!351030 m!1743061))

(assert (=> b!1492212 d!438373))

(declare-fun d!438375 () Bool)

(declare-fun c!244410 () Bool)

(assert (=> d!438375 (= c!244410 ((_ is Node!5391) (c!244404 treated!70)))))

(declare-fun e!954562 () Bool)

(assert (=> d!438375 (= (inv!21082 (c!244404 treated!70)) e!954562)))

(declare-fun b!1492250 () Bool)

(assert (=> b!1492250 (= e!954562 (inv!21089 (c!244404 treated!70)))))

(declare-fun b!1492251 () Bool)

(declare-fun e!954563 () Bool)

(assert (=> b!1492251 (= e!954562 e!954563)))

(declare-fun res!673234 () Bool)

(assert (=> b!1492251 (= res!673234 (not ((_ is Leaf!8004) (c!244404 treated!70))))))

(assert (=> b!1492251 (=> res!673234 e!954563)))

(declare-fun b!1492252 () Bool)

(assert (=> b!1492252 (= e!954563 (inv!21090 (c!244404 treated!70)))))

(assert (= (and d!438375 c!244410) b!1492250))

(assert (= (and d!438375 (not c!244410)) b!1492251))

(assert (= (and b!1492251 (not res!673234)) b!1492252))

(declare-fun m!1743063 () Bool)

(assert (=> b!1492250 m!1743063))

(declare-fun m!1743065 () Bool)

(assert (=> b!1492252 m!1743065))

(assert (=> b!1492211 d!438375))

(declare-fun d!438377 () Bool)

(declare-fun isBalanced!1593 (Conc!5391) Bool)

(assert (=> d!438377 (= (inv!21087 treated!70) (isBalanced!1593 (c!244404 treated!70)))))

(declare-fun bs!351031 () Bool)

(assert (= bs!351031 d!438377))

(declare-fun m!1743067 () Bool)

(assert (=> bs!351031 m!1743067))

(assert (=> start!139924 d!438377))

(declare-fun d!438379 () Bool)

(assert (=> d!438379 (= (inv!21087 input!1102) (isBalanced!1593 (c!244404 input!1102)))))

(declare-fun bs!351032 () Bool)

(assert (= bs!351032 d!438379))

(declare-fun m!1743069 () Bool)

(assert (=> bs!351032 m!1743069))

(assert (=> start!139924 d!438379))

(declare-fun d!438381 () Bool)

(declare-fun res!673237 () Bool)

(declare-fun e!954566 () Bool)

(assert (=> d!438381 (=> (not res!673237) (not e!954566))))

(assert (=> d!438381 (= res!673237 ((_ is HashMap!1354) (cache!1735 cacheFurthestNullable!64)))))

(assert (=> d!438381 (= (inv!21088 cacheFurthestNullable!64) e!954566)))

(declare-fun b!1492255 () Bool)

(assert (=> b!1492255 (= e!954566 (validCacheMapFurthestNullable!40 (cache!1735 cacheFurthestNullable!64) (totalInput!2255 cacheFurthestNullable!64)))))

(assert (= (and d!438381 res!673237) b!1492255))

(assert (=> b!1492255 m!1743061))

(assert (=> start!139924 d!438381))

(declare-fun d!438383 () Bool)

(declare-fun res!673240 () Bool)

(declare-fun e!954569 () Bool)

(assert (=> d!438383 (=> (not res!673240) (not e!954569))))

(assert (=> d!438383 (= res!673240 ((_ is HashMap!1355) (cache!1736 cacheDown!629)))))

(assert (=> d!438383 (= (inv!21086 cacheDown!629) e!954569)))

(declare-fun b!1492258 () Bool)

(declare-fun validCacheMapDown!127 (MutableMap!1355) Bool)

(assert (=> b!1492258 (= e!954569 (validCacheMapDown!127 (cache!1736 cacheDown!629)))))

(assert (= (and d!438383 res!673240) b!1492258))

(declare-fun m!1743071 () Bool)

(assert (=> b!1492258 m!1743071))

(assert (=> start!139924 d!438383))

(declare-fun d!438385 () Bool)

(assert (=> d!438385 (= (inv!21087 totalInput!458) (isBalanced!1593 (c!244404 totalInput!458)))))

(declare-fun bs!351033 () Bool)

(assert (= bs!351033 d!438385))

(declare-fun m!1743073 () Bool)

(assert (=> bs!351033 m!1743073))

(assert (=> start!139924 d!438385))

(declare-fun d!438387 () Bool)

(declare-fun isBalanced!1594 (Conc!5392) Bool)

(assert (=> d!438387 (= (inv!21084 acc!392) (isBalanced!1594 (c!244406 acc!392)))))

(declare-fun bs!351034 () Bool)

(assert (= bs!351034 d!438387))

(declare-fun m!1743075 () Bool)

(assert (=> bs!351034 m!1743075))

(assert (=> start!139924 d!438387))

(declare-fun d!438389 () Bool)

(declare-fun res!673243 () Bool)

(declare-fun e!954572 () Bool)

(assert (=> d!438389 (=> (not res!673243) (not e!954572))))

(assert (=> d!438389 (= res!673243 ((_ is HashMap!1356) (cache!1737 cacheUp!616)))))

(assert (=> d!438389 (= (inv!21085 cacheUp!616) e!954572)))

(declare-fun b!1492261 () Bool)

(declare-fun validCacheMapUp!127 (MutableMap!1356) Bool)

(assert (=> b!1492261 (= e!954572 (validCacheMapUp!127 (cache!1737 cacheUp!616)))))

(assert (= (and d!438389 res!673243) b!1492261))

(declare-fun m!1743077 () Bool)

(assert (=> b!1492261 m!1743077))

(assert (=> start!139924 d!438389))

(declare-fun d!438391 () Bool)

(assert (=> d!438391 (= (array_inv!1611 (_keys!1706 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) (bvsge (size!12839 (_keys!1706 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1492210 d!438391))

(declare-fun d!438393 () Bool)

(assert (=> d!438393 (= (array_inv!1612 (_values!1691 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) (bvsge (size!12841 (_values!1691 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1492210 d!438393))

(declare-fun d!438395 () Bool)

(declare-fun c!244413 () Bool)

(assert (=> d!438395 (= c!244413 ((_ is Node!5392) (c!244406 acc!392)))))

(declare-fun e!954577 () Bool)

(assert (=> d!438395 (= (inv!21081 (c!244406 acc!392)) e!954577)))

(declare-fun b!1492268 () Bool)

(declare-fun inv!21091 (Conc!5392) Bool)

(assert (=> b!1492268 (= e!954577 (inv!21091 (c!244406 acc!392)))))

(declare-fun b!1492269 () Bool)

(declare-fun e!954578 () Bool)

(assert (=> b!1492269 (= e!954577 e!954578)))

(declare-fun res!673246 () Bool)

(assert (=> b!1492269 (= res!673246 (not ((_ is Leaf!8005) (c!244406 acc!392))))))

(assert (=> b!1492269 (=> res!673246 e!954578)))

(declare-fun b!1492270 () Bool)

(declare-fun inv!21092 (Conc!5392) Bool)

(assert (=> b!1492270 (= e!954578 (inv!21092 (c!244406 acc!392)))))

(assert (= (and d!438395 c!244413) b!1492268))

(assert (= (and d!438395 (not c!244413)) b!1492269))

(assert (= (and b!1492269 (not res!673246)) b!1492270))

(declare-fun m!1743079 () Bool)

(assert (=> b!1492268 m!1743079))

(declare-fun m!1743081 () Bool)

(assert (=> b!1492270 m!1743081))

(assert (=> b!1492190 d!438395))

(declare-fun b!1492280 () Bool)

(declare-fun res!673256 () Bool)

(declare-fun e!954581 () Bool)

(assert (=> b!1492280 (=> (not res!673256) (not e!954581))))

(declare-fun height!795 (Conc!5392) Int)

(declare-fun ++!4287 (Conc!5392 Conc!5392) Conc!5392)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1492280 (= res!673256 (<= (height!795 (++!4287 (c!244406 acc!392) (c!244406 (_1!8242 lt!518562)))) (+ (max!0 (height!795 (c!244406 acc!392)) (height!795 (c!244406 (_1!8242 lt!518562)))) 1)))))

(declare-fun b!1492281 () Bool)

(declare-fun res!673257 () Bool)

(assert (=> b!1492281 (=> (not res!673257) (not e!954581))))

(assert (=> b!1492281 (= res!673257 (>= (height!795 (++!4287 (c!244406 acc!392) (c!244406 (_1!8242 lt!518562)))) (max!0 (height!795 (c!244406 acc!392)) (height!795 (c!244406 (_1!8242 lt!518562))))))))

(declare-fun lt!518585 () BalanceConc!10726)

(declare-fun b!1492282 () Bool)

(assert (=> b!1492282 (= e!954581 (= (list!6289 lt!518585) (++!4285 (list!6289 acc!392) (list!6289 (_1!8242 lt!518562)))))))

(declare-fun b!1492279 () Bool)

(declare-fun res!673258 () Bool)

(assert (=> b!1492279 (=> (not res!673258) (not e!954581))))

(assert (=> b!1492279 (= res!673258 (isBalanced!1594 (++!4287 (c!244406 acc!392) (c!244406 (_1!8242 lt!518562)))))))

(declare-fun d!438397 () Bool)

(assert (=> d!438397 e!954581))

(declare-fun res!673255 () Bool)

(assert (=> d!438397 (=> (not res!673255) (not e!954581))))

(declare-fun appendAssocInst!353 (Conc!5392 Conc!5392) Bool)

(assert (=> d!438397 (= res!673255 (appendAssocInst!353 (c!244406 acc!392) (c!244406 (_1!8242 lt!518562))))))

(assert (=> d!438397 (= lt!518585 (BalanceConc!10727 (++!4287 (c!244406 acc!392) (c!244406 (_1!8242 lt!518562)))))))

(assert (=> d!438397 (= (++!4286 acc!392 (_1!8242 lt!518562)) lt!518585)))

(assert (= (and d!438397 res!673255) b!1492279))

(assert (= (and b!1492279 res!673258) b!1492280))

(assert (= (and b!1492280 res!673256) b!1492281))

(assert (= (and b!1492281 res!673257) b!1492282))

(declare-fun m!1743083 () Bool)

(assert (=> b!1492281 m!1743083))

(declare-fun m!1743085 () Bool)

(assert (=> b!1492281 m!1743085))

(declare-fun m!1743087 () Bool)

(assert (=> b!1492281 m!1743087))

(declare-fun m!1743089 () Bool)

(assert (=> b!1492281 m!1743089))

(assert (=> b!1492281 m!1743087))

(assert (=> b!1492281 m!1743085))

(assert (=> b!1492281 m!1743083))

(declare-fun m!1743091 () Bool)

(assert (=> b!1492281 m!1743091))

(assert (=> b!1492280 m!1743083))

(assert (=> b!1492280 m!1743085))

(assert (=> b!1492280 m!1743087))

(assert (=> b!1492280 m!1743089))

(assert (=> b!1492280 m!1743087))

(assert (=> b!1492280 m!1743085))

(assert (=> b!1492280 m!1743083))

(assert (=> b!1492280 m!1743091))

(assert (=> b!1492279 m!1743083))

(assert (=> b!1492279 m!1743083))

(declare-fun m!1743093 () Bool)

(assert (=> b!1492279 m!1743093))

(declare-fun m!1743095 () Bool)

(assert (=> d!438397 m!1743095))

(assert (=> d!438397 m!1743083))

(declare-fun m!1743097 () Bool)

(assert (=> b!1492282 m!1743097))

(assert (=> b!1492282 m!1742923))

(declare-fun m!1743099 () Bool)

(assert (=> b!1492282 m!1743099))

(assert (=> b!1492282 m!1742923))

(assert (=> b!1492282 m!1743099))

(declare-fun m!1743101 () Bool)

(assert (=> b!1492282 m!1743101))

(assert (=> b!1492209 d!438397))

(declare-fun d!438399 () Bool)

(declare-fun list!6290 (Conc!5392) List!15938)

(assert (=> d!438399 (= (list!6289 (_1!8242 lt!518574)) (list!6290 (c!244406 (_1!8242 lt!518574))))))

(declare-fun bs!351035 () Bool)

(assert (= bs!351035 d!438399))

(declare-fun m!1743103 () Bool)

(assert (=> bs!351035 m!1743103))

(assert (=> b!1492209 d!438399))

(declare-fun d!438401 () Bool)

(declare-fun e!954593 () Bool)

(assert (=> d!438401 e!954593))

(declare-fun res!673265 () Bool)

(assert (=> d!438401 (=> (not res!673265) (not e!954593))))

(declare-fun e!954592 () Bool)

(assert (=> d!438401 (= res!673265 e!954592)))

(declare-fun c!244421 () Bool)

(declare-fun lt!518594 () tuple2!14602)

(declare-fun size!12843 (BalanceConc!10726) Int)

(assert (=> d!438401 (= c!244421 (> (size!12843 (_1!8242 lt!518594)) 0))))

(declare-fun e!954591 () tuple2!14602)

(assert (=> d!438401 (= lt!518594 e!954591)))

(declare-fun c!244422 () Bool)

(declare-fun lt!518592 () Option!2904)

(assert (=> d!438401 (= c!244422 ((_ is Some!2903) lt!518592))))

(assert (=> d!438401 (= lt!518592 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 input!1102))))

(assert (=> d!438401 (= (lexRec!312 thiss!13241 rules!1640 input!1102) lt!518594)))

(declare-fun b!1492297 () Bool)

(declare-fun res!673266 () Bool)

(assert (=> b!1492297 (=> (not res!673266) (not e!954593))))

(assert (=> b!1492297 (= res!673266 (= (list!6289 (_1!8242 lt!518594)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 input!1102)))))))

(declare-fun b!1492298 () Bool)

(assert (=> b!1492298 (= e!954592 (= (list!6288 (_2!8242 lt!518594)) (list!6288 input!1102)))))

(declare-fun b!1492299 () Bool)

(assert (=> b!1492299 (= e!954591 (tuple2!14603 (BalanceConc!10727 Empty!5392) input!1102))))

(declare-fun b!1492300 () Bool)

(declare-fun e!954590 () Bool)

(assert (=> b!1492300 (= e!954592 e!954590)))

(declare-fun res!673267 () Bool)

(declare-fun size!12844 (BalanceConc!10724) Int)

(assert (=> b!1492300 (= res!673267 (< (size!12844 (_2!8242 lt!518594)) (size!12844 input!1102)))))

(assert (=> b!1492300 (=> (not res!673267) (not e!954590))))

(declare-fun b!1492301 () Bool)

(assert (=> b!1492301 (= e!954593 (= (list!6288 (_2!8242 lt!518594)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 input!1102)))))))

(declare-fun b!1492302 () Bool)

(declare-fun lt!518593 () tuple2!14602)

(assert (=> b!1492302 (= e!954591 (tuple2!14603 (prepend!443 (_1!8242 lt!518593) (_1!8247 (v!22698 lt!518592))) (_2!8242 lt!518593)))))

(assert (=> b!1492302 (= lt!518593 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518592))))))

(declare-fun b!1492303 () Bool)

(declare-fun isEmpty!9868 (BalanceConc!10726) Bool)

(assert (=> b!1492303 (= e!954590 (not (isEmpty!9868 (_1!8242 lt!518594))))))

(assert (= (and d!438401 c!244422) b!1492302))

(assert (= (and d!438401 (not c!244422)) b!1492299))

(assert (= (and d!438401 c!244421) b!1492300))

(assert (= (and d!438401 (not c!244421)) b!1492298))

(assert (= (and b!1492300 res!673267) b!1492303))

(assert (= (and d!438401 res!673265) b!1492297))

(assert (= (and b!1492297 res!673266) b!1492301))

(declare-fun m!1743105 () Bool)

(assert (=> b!1492301 m!1743105))

(assert (=> b!1492301 m!1742883))

(assert (=> b!1492301 m!1742883))

(declare-fun m!1743107 () Bool)

(assert (=> b!1492301 m!1743107))

(declare-fun m!1743109 () Bool)

(assert (=> b!1492302 m!1743109))

(declare-fun m!1743111 () Bool)

(assert (=> b!1492302 m!1743111))

(declare-fun m!1743113 () Bool)

(assert (=> b!1492303 m!1743113))

(declare-fun m!1743115 () Bool)

(assert (=> b!1492300 m!1743115))

(declare-fun m!1743117 () Bool)

(assert (=> b!1492300 m!1743117))

(declare-fun m!1743119 () Bool)

(assert (=> b!1492297 m!1743119))

(assert (=> b!1492297 m!1742883))

(assert (=> b!1492297 m!1742883))

(assert (=> b!1492297 m!1743107))

(assert (=> b!1492298 m!1743105))

(assert (=> b!1492298 m!1742883))

(declare-fun m!1743121 () Bool)

(assert (=> d!438401 m!1743121))

(assert (=> d!438401 m!1742929))

(assert (=> b!1492209 d!438401))

(declare-fun d!438403 () Bool)

(assert (=> d!438403 (= (list!6289 (++!4286 acc!392 (_1!8242 lt!518562))) (list!6290 (c!244406 (++!4286 acc!392 (_1!8242 lt!518562)))))))

(declare-fun bs!351036 () Bool)

(assert (= bs!351036 d!438403))

(declare-fun m!1743123 () Bool)

(assert (=> bs!351036 m!1743123))

(assert (=> b!1492209 d!438403))

(declare-fun d!438405 () Bool)

(declare-fun e!954597 () Bool)

(assert (=> d!438405 e!954597))

(declare-fun res!673268 () Bool)

(assert (=> d!438405 (=> (not res!673268) (not e!954597))))

(declare-fun e!954596 () Bool)

(assert (=> d!438405 (= res!673268 e!954596)))

(declare-fun c!244423 () Bool)

(declare-fun lt!518597 () tuple2!14602)

(assert (=> d!438405 (= c!244423 (> (size!12843 (_1!8242 lt!518597)) 0))))

(declare-fun e!954595 () tuple2!14602)

(assert (=> d!438405 (= lt!518597 e!954595)))

(declare-fun c!244424 () Bool)

(declare-fun lt!518595 () Option!2904)

(assert (=> d!438405 (= c!244424 ((_ is Some!2903) lt!518595))))

(assert (=> d!438405 (= lt!518595 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!438405 (= (lexRec!312 thiss!13241 rules!1640 totalInput!458) lt!518597)))

(declare-fun b!1492304 () Bool)

(declare-fun res!673269 () Bool)

(assert (=> b!1492304 (=> (not res!673269) (not e!954597))))

(assert (=> b!1492304 (= res!673269 (= (list!6289 (_1!8242 lt!518597)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 totalInput!458)))))))

(declare-fun b!1492305 () Bool)

(assert (=> b!1492305 (= e!954596 (= (list!6288 (_2!8242 lt!518597)) (list!6288 totalInput!458)))))

(declare-fun b!1492306 () Bool)

(assert (=> b!1492306 (= e!954595 (tuple2!14603 (BalanceConc!10727 Empty!5392) totalInput!458))))

(declare-fun b!1492307 () Bool)

(declare-fun e!954594 () Bool)

(assert (=> b!1492307 (= e!954596 e!954594)))

(declare-fun res!673270 () Bool)

(assert (=> b!1492307 (= res!673270 (< (size!12844 (_2!8242 lt!518597)) (size!12844 totalInput!458)))))

(assert (=> b!1492307 (=> (not res!673270) (not e!954594))))

(declare-fun b!1492308 () Bool)

(assert (=> b!1492308 (= e!954597 (= (list!6288 (_2!8242 lt!518597)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 totalInput!458)))))))

(declare-fun b!1492309 () Bool)

(declare-fun lt!518596 () tuple2!14602)

(assert (=> b!1492309 (= e!954595 (tuple2!14603 (prepend!443 (_1!8242 lt!518596) (_1!8247 (v!22698 lt!518595))) (_2!8242 lt!518596)))))

(assert (=> b!1492309 (= lt!518596 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518595))))))

(declare-fun b!1492310 () Bool)

(assert (=> b!1492310 (= e!954594 (not (isEmpty!9868 (_1!8242 lt!518597))))))

(assert (= (and d!438405 c!244424) b!1492309))

(assert (= (and d!438405 (not c!244424)) b!1492306))

(assert (= (and d!438405 c!244423) b!1492307))

(assert (= (and d!438405 (not c!244423)) b!1492305))

(assert (= (and b!1492307 res!673270) b!1492310))

(assert (= (and d!438405 res!673268) b!1492304))

(assert (= (and b!1492304 res!673269) b!1492308))

(declare-fun m!1743125 () Bool)

(assert (=> b!1492308 m!1743125))

(assert (=> b!1492308 m!1742881))

(assert (=> b!1492308 m!1742881))

(declare-fun m!1743127 () Bool)

(assert (=> b!1492308 m!1743127))

(declare-fun m!1743129 () Bool)

(assert (=> b!1492309 m!1743129))

(declare-fun m!1743131 () Bool)

(assert (=> b!1492309 m!1743131))

(declare-fun m!1743133 () Bool)

(assert (=> b!1492310 m!1743133))

(declare-fun m!1743135 () Bool)

(assert (=> b!1492307 m!1743135))

(declare-fun m!1743137 () Bool)

(assert (=> b!1492307 m!1743137))

(declare-fun m!1743139 () Bool)

(assert (=> b!1492304 m!1743139))

(assert (=> b!1492304 m!1742881))

(assert (=> b!1492304 m!1742881))

(assert (=> b!1492304 m!1743127))

(assert (=> b!1492305 m!1743125))

(assert (=> b!1492305 m!1742881))

(declare-fun m!1743141 () Bool)

(assert (=> d!438405 m!1743141))

(declare-fun m!1743143 () Bool)

(assert (=> d!438405 m!1743143))

(assert (=> b!1492209 d!438405))

(declare-fun d!438407 () Bool)

(declare-fun e!954600 () Bool)

(assert (=> d!438407 e!954600))

(declare-fun res!673273 () Bool)

(assert (=> d!438407 (=> (not res!673273) (not e!954600))))

(declare-fun prepend!444 (Conc!5392 Token!5302) Conc!5392)

(assert (=> d!438407 (= res!673273 (isBalanced!1594 (prepend!444 (c!244406 (_1!8242 lt!518542)) (_1!8247 (v!22698 lt!518559)))))))

(declare-fun lt!518600 () BalanceConc!10726)

(assert (=> d!438407 (= lt!518600 (BalanceConc!10727 (prepend!444 (c!244406 (_1!8242 lt!518542)) (_1!8247 (v!22698 lt!518559)))))))

(assert (=> d!438407 (= (prepend!443 (_1!8242 lt!518542) (_1!8247 (v!22698 lt!518559))) lt!518600)))

(declare-fun b!1492313 () Bool)

(assert (=> b!1492313 (= e!954600 (= (list!6289 lt!518600) (Cons!15870 (_1!8247 (v!22698 lt!518559)) (list!6289 (_1!8242 lt!518542)))))))

(assert (= (and d!438407 res!673273) b!1492313))

(declare-fun m!1743145 () Bool)

(assert (=> d!438407 m!1743145))

(assert (=> d!438407 m!1743145))

(declare-fun m!1743147 () Bool)

(assert (=> d!438407 m!1743147))

(declare-fun m!1743149 () Bool)

(assert (=> b!1492313 m!1743149))

(declare-fun m!1743151 () Bool)

(assert (=> b!1492313 m!1743151))

(assert (=> b!1492230 d!438407))

(declare-fun d!438409 () Bool)

(declare-fun e!954604 () Bool)

(assert (=> d!438409 e!954604))

(declare-fun res!673274 () Bool)

(assert (=> d!438409 (=> (not res!673274) (not e!954604))))

(declare-fun e!954603 () Bool)

(assert (=> d!438409 (= res!673274 e!954603)))

(declare-fun c!244426 () Bool)

(declare-fun lt!518603 () tuple2!14602)

(assert (=> d!438409 (= c!244426 (> (size!12843 (_1!8242 lt!518603)) 0))))

(declare-fun e!954602 () tuple2!14602)

(assert (=> d!438409 (= lt!518603 e!954602)))

(declare-fun c!244427 () Bool)

(declare-fun lt!518601 () Option!2904)

(assert (=> d!438409 (= c!244427 ((_ is Some!2903) lt!518601))))

(assert (=> d!438409 (= lt!518601 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518559))))))

(assert (=> d!438409 (= (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518559))) lt!518603)))

(declare-fun b!1492314 () Bool)

(declare-fun res!673275 () Bool)

(assert (=> b!1492314 (=> (not res!673275) (not e!954604))))

(assert (=> b!1492314 (= res!673275 (= (list!6289 (_1!8242 lt!518603)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 (_2!8247 (v!22698 lt!518559)))))))))

(declare-fun b!1492315 () Bool)

(assert (=> b!1492315 (= e!954603 (= (list!6288 (_2!8242 lt!518603)) (list!6288 (_2!8247 (v!22698 lt!518559)))))))

(declare-fun b!1492316 () Bool)

(assert (=> b!1492316 (= e!954602 (tuple2!14603 (BalanceConc!10727 Empty!5392) (_2!8247 (v!22698 lt!518559))))))

(declare-fun b!1492317 () Bool)

(declare-fun e!954601 () Bool)

(assert (=> b!1492317 (= e!954603 e!954601)))

(declare-fun res!673276 () Bool)

(assert (=> b!1492317 (= res!673276 (< (size!12844 (_2!8242 lt!518603)) (size!12844 (_2!8247 (v!22698 lt!518559)))))))

(assert (=> b!1492317 (=> (not res!673276) (not e!954601))))

(declare-fun b!1492318 () Bool)

(assert (=> b!1492318 (= e!954604 (= (list!6288 (_2!8242 lt!518603)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 (_2!8247 (v!22698 lt!518559)))))))))

(declare-fun b!1492319 () Bool)

(declare-fun lt!518602 () tuple2!14602)

(assert (=> b!1492319 (= e!954602 (tuple2!14603 (prepend!443 (_1!8242 lt!518602) (_1!8247 (v!22698 lt!518601))) (_2!8242 lt!518602)))))

(assert (=> b!1492319 (= lt!518602 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518601))))))

(declare-fun b!1492320 () Bool)

(assert (=> b!1492320 (= e!954601 (not (isEmpty!9868 (_1!8242 lt!518603))))))

(assert (= (and d!438409 c!244427) b!1492319))

(assert (= (and d!438409 (not c!244427)) b!1492316))

(assert (= (and d!438409 c!244426) b!1492317))

(assert (= (and d!438409 (not c!244426)) b!1492315))

(assert (= (and b!1492317 res!673276) b!1492320))

(assert (= (and d!438409 res!673274) b!1492314))

(assert (= (and b!1492314 res!673275) b!1492318))

(declare-fun m!1743153 () Bool)

(assert (=> b!1492318 m!1743153))

(declare-fun m!1743155 () Bool)

(assert (=> b!1492318 m!1743155))

(assert (=> b!1492318 m!1743155))

(declare-fun m!1743157 () Bool)

(assert (=> b!1492318 m!1743157))

(declare-fun m!1743159 () Bool)

(assert (=> b!1492319 m!1743159))

(declare-fun m!1743161 () Bool)

(assert (=> b!1492319 m!1743161))

(declare-fun m!1743163 () Bool)

(assert (=> b!1492320 m!1743163))

(declare-fun m!1743165 () Bool)

(assert (=> b!1492317 m!1743165))

(declare-fun m!1743167 () Bool)

(assert (=> b!1492317 m!1743167))

(declare-fun m!1743169 () Bool)

(assert (=> b!1492314 m!1743169))

(assert (=> b!1492314 m!1743155))

(assert (=> b!1492314 m!1743155))

(assert (=> b!1492314 m!1743157))

(assert (=> b!1492315 m!1743153))

(assert (=> b!1492315 m!1743155))

(declare-fun m!1743171 () Bool)

(assert (=> d!438409 m!1743171))

(declare-fun m!1743173 () Bool)

(assert (=> d!438409 m!1743173))

(assert (=> b!1492230 d!438409))

(declare-fun d!438411 () Bool)

(assert (=> d!438411 (= (list!6289 acc!392) (list!6290 (c!244406 acc!392)))))

(declare-fun bs!351037 () Bool)

(assert (= bs!351037 d!438411))

(declare-fun m!1743175 () Bool)

(assert (=> bs!351037 m!1743175))

(assert (=> b!1492208 d!438411))

(declare-fun d!438413 () Bool)

(assert (=> d!438413 (= (list!6289 (_1!8242 lt!518573)) (list!6290 (c!244406 (_1!8242 lt!518573))))))

(declare-fun bs!351038 () Bool)

(assert (= bs!351038 d!438413))

(declare-fun m!1743177 () Bool)

(assert (=> bs!351038 m!1743177))

(assert (=> b!1492208 d!438413))

(declare-fun d!438415 () Bool)

(declare-fun e!954608 () Bool)

(assert (=> d!438415 e!954608))

(declare-fun res!673277 () Bool)

(assert (=> d!438415 (=> (not res!673277) (not e!954608))))

(declare-fun e!954607 () Bool)

(assert (=> d!438415 (= res!673277 e!954607)))

(declare-fun c!244428 () Bool)

(declare-fun lt!518606 () tuple2!14602)

(assert (=> d!438415 (= c!244428 (> (size!12843 (_1!8242 lt!518606)) 0))))

(declare-fun e!954606 () tuple2!14602)

(assert (=> d!438415 (= lt!518606 e!954606)))

(declare-fun c!244429 () Bool)

(declare-fun lt!518604 () Option!2904)

(assert (=> d!438415 (= c!244429 ((_ is Some!2903) lt!518604))))

(assert (=> d!438415 (= lt!518604 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 treated!70))))

(assert (=> d!438415 (= (lexRec!312 thiss!13241 rules!1640 treated!70) lt!518606)))

(declare-fun b!1492321 () Bool)

(declare-fun res!673278 () Bool)

(assert (=> b!1492321 (=> (not res!673278) (not e!954608))))

(assert (=> b!1492321 (= res!673278 (= (list!6289 (_1!8242 lt!518606)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 treated!70)))))))

(declare-fun b!1492322 () Bool)

(assert (=> b!1492322 (= e!954607 (= (list!6288 (_2!8242 lt!518606)) (list!6288 treated!70)))))

(declare-fun b!1492323 () Bool)

(assert (=> b!1492323 (= e!954606 (tuple2!14603 (BalanceConc!10727 Empty!5392) treated!70))))

(declare-fun b!1492324 () Bool)

(declare-fun e!954605 () Bool)

(assert (=> b!1492324 (= e!954607 e!954605)))

(declare-fun res!673279 () Bool)

(assert (=> b!1492324 (= res!673279 (< (size!12844 (_2!8242 lt!518606)) (size!12844 treated!70)))))

(assert (=> b!1492324 (=> (not res!673279) (not e!954605))))

(declare-fun b!1492325 () Bool)

(assert (=> b!1492325 (= e!954608 (= (list!6288 (_2!8242 lt!518606)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 treated!70)))))))

(declare-fun b!1492326 () Bool)

(declare-fun lt!518605 () tuple2!14602)

(assert (=> b!1492326 (= e!954606 (tuple2!14603 (prepend!443 (_1!8242 lt!518605) (_1!8247 (v!22698 lt!518604))) (_2!8242 lt!518605)))))

(assert (=> b!1492326 (= lt!518605 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518604))))))

(declare-fun b!1492327 () Bool)

(assert (=> b!1492327 (= e!954605 (not (isEmpty!9868 (_1!8242 lt!518606))))))

(assert (= (and d!438415 c!244429) b!1492326))

(assert (= (and d!438415 (not c!244429)) b!1492323))

(assert (= (and d!438415 c!244428) b!1492324))

(assert (= (and d!438415 (not c!244428)) b!1492322))

(assert (= (and b!1492324 res!673279) b!1492327))

(assert (= (and d!438415 res!673277) b!1492321))

(assert (= (and b!1492321 res!673278) b!1492325))

(declare-fun m!1743179 () Bool)

(assert (=> b!1492325 m!1743179))

(assert (=> b!1492325 m!1742885))

(assert (=> b!1492325 m!1742885))

(declare-fun m!1743181 () Bool)

(assert (=> b!1492325 m!1743181))

(declare-fun m!1743183 () Bool)

(assert (=> b!1492326 m!1743183))

(declare-fun m!1743185 () Bool)

(assert (=> b!1492326 m!1743185))

(declare-fun m!1743187 () Bool)

(assert (=> b!1492327 m!1743187))

(declare-fun m!1743189 () Bool)

(assert (=> b!1492324 m!1743189))

(declare-fun m!1743191 () Bool)

(assert (=> b!1492324 m!1743191))

(declare-fun m!1743193 () Bool)

(assert (=> b!1492321 m!1743193))

(assert (=> b!1492321 m!1742885))

(assert (=> b!1492321 m!1742885))

(assert (=> b!1492321 m!1743181))

(assert (=> b!1492322 m!1743179))

(assert (=> b!1492322 m!1742885))

(declare-fun m!1743195 () Bool)

(assert (=> d!438415 m!1743195))

(declare-fun m!1743197 () Bool)

(assert (=> d!438415 m!1743197))

(assert (=> b!1492208 d!438415))

(declare-fun d!438417 () Bool)

(declare-fun c!244430 () Bool)

(assert (=> d!438417 (= c!244430 ((_ is Node!5391) (c!244404 input!1102)))))

(declare-fun e!954609 () Bool)

(assert (=> d!438417 (= (inv!21082 (c!244404 input!1102)) e!954609)))

(declare-fun b!1492328 () Bool)

(assert (=> b!1492328 (= e!954609 (inv!21089 (c!244404 input!1102)))))

(declare-fun b!1492329 () Bool)

(declare-fun e!954610 () Bool)

(assert (=> b!1492329 (= e!954609 e!954610)))

(declare-fun res!673280 () Bool)

(assert (=> b!1492329 (= res!673280 (not ((_ is Leaf!8004) (c!244404 input!1102))))))

(assert (=> b!1492329 (=> res!673280 e!954610)))

(declare-fun b!1492330 () Bool)

(assert (=> b!1492330 (= e!954610 (inv!21090 (c!244404 input!1102)))))

(assert (= (and d!438417 c!244430) b!1492328))

(assert (= (and d!438417 (not c!244430)) b!1492329))

(assert (= (and b!1492329 (not res!673280)) b!1492330))

(declare-fun m!1743199 () Bool)

(assert (=> b!1492328 m!1743199))

(declare-fun m!1743201 () Bool)

(assert (=> b!1492330 m!1743201))

(assert (=> b!1492218 d!438417))

(declare-fun d!438419 () Bool)

(assert (=> d!438419 (= (array_inv!1611 (_keys!1704 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) (bvsge (size!12839 (_keys!1704 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1492236 d!438419))

(declare-fun d!438421 () Bool)

(assert (=> d!438421 (= (array_inv!1614 (_values!1689 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) (bvsge (size!12838 (_values!1689 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1492236 d!438421))

(declare-fun d!438423 () Bool)

(declare-fun e!954616 () Bool)

(assert (=> d!438423 e!954616))

(declare-fun res!673286 () Bool)

(assert (=> d!438423 (=> (not res!673286) (not e!954616))))

(declare-fun lt!518609 () List!15938)

(declare-fun content!2292 (List!15938) (InoxSet Token!5302))

(assert (=> d!438423 (= res!673286 (= (content!2292 lt!518609) ((_ map or) (content!2292 lt!518545) (content!2292 (++!4285 lt!518560 lt!518563)))))))

(declare-fun e!954615 () List!15938)

(assert (=> d!438423 (= lt!518609 e!954615)))

(declare-fun c!244433 () Bool)

(assert (=> d!438423 (= c!244433 ((_ is Nil!15870) lt!518545))))

(assert (=> d!438423 (= (++!4285 lt!518545 (++!4285 lt!518560 lt!518563)) lt!518609)))

(declare-fun b!1492342 () Bool)

(assert (=> b!1492342 (= e!954616 (or (not (= (++!4285 lt!518560 lt!518563) Nil!15870)) (= lt!518609 lt!518545)))))

(declare-fun b!1492340 () Bool)

(assert (=> b!1492340 (= e!954615 (Cons!15870 (h!21271 lt!518545) (++!4285 (t!138197 lt!518545) (++!4285 lt!518560 lt!518563))))))

(declare-fun b!1492339 () Bool)

(assert (=> b!1492339 (= e!954615 (++!4285 lt!518560 lt!518563))))

(declare-fun b!1492341 () Bool)

(declare-fun res!673285 () Bool)

(assert (=> b!1492341 (=> (not res!673285) (not e!954616))))

(declare-fun size!12845 (List!15938) Int)

(assert (=> b!1492341 (= res!673285 (= (size!12845 lt!518609) (+ (size!12845 lt!518545) (size!12845 (++!4285 lt!518560 lt!518563)))))))

(assert (= (and d!438423 c!244433) b!1492339))

(assert (= (and d!438423 (not c!244433)) b!1492340))

(assert (= (and d!438423 res!673286) b!1492341))

(assert (= (and b!1492341 res!673285) b!1492342))

(declare-fun m!1743203 () Bool)

(assert (=> d!438423 m!1743203))

(declare-fun m!1743205 () Bool)

(assert (=> d!438423 m!1743205))

(assert (=> d!438423 m!1742933))

(declare-fun m!1743207 () Bool)

(assert (=> d!438423 m!1743207))

(assert (=> b!1492340 m!1742933))

(declare-fun m!1743209 () Bool)

(assert (=> b!1492340 m!1743209))

(declare-fun m!1743211 () Bool)

(assert (=> b!1492341 m!1743211))

(declare-fun m!1743213 () Bool)

(assert (=> b!1492341 m!1743213))

(assert (=> b!1492341 m!1742933))

(declare-fun m!1743215 () Bool)

(assert (=> b!1492341 m!1743215))

(assert (=> b!1492198 d!438423))

(declare-fun d!438425 () Bool)

(assert (=> d!438425 (= (list!6289 (_1!8242 lt!518572)) (list!6290 (c!244406 (_1!8242 lt!518572))))))

(declare-fun bs!351039 () Bool)

(assert (= bs!351039 d!438425))

(declare-fun m!1743217 () Bool)

(assert (=> bs!351039 m!1743217))

(assert (=> b!1492198 d!438425))

(declare-fun d!438427 () Bool)

(assert (=> d!438427 (= (++!4283 (++!4283 lt!518550 lt!518575) lt!518553) (++!4283 lt!518550 (++!4283 lt!518575 lt!518553)))))

(declare-fun lt!518612 () Unit!25659)

(declare-fun choose!9101 (List!15937 List!15937 List!15937) Unit!25659)

(assert (=> d!438427 (= lt!518612 (choose!9101 lt!518550 lt!518575 lt!518553))))

(assert (=> d!438427 (= (lemmaConcatAssociativity!912 lt!518550 lt!518575 lt!518553) lt!518612)))

(declare-fun bs!351040 () Bool)

(assert (= bs!351040 d!438427))

(assert (=> bs!351040 m!1742943))

(assert (=> bs!351040 m!1742943))

(assert (=> bs!351040 m!1742945))

(assert (=> bs!351040 m!1742935))

(declare-fun m!1743219 () Bool)

(assert (=> bs!351040 m!1743219))

(declare-fun m!1743221 () Bool)

(assert (=> bs!351040 m!1743221))

(assert (=> bs!351040 m!1742935))

(assert (=> b!1492198 d!438427))

(declare-fun d!438429 () Bool)

(declare-fun e!954618 () Bool)

(assert (=> d!438429 e!954618))

(declare-fun res!673288 () Bool)

(assert (=> d!438429 (=> (not res!673288) (not e!954618))))

(declare-fun lt!518613 () List!15938)

(assert (=> d!438429 (= res!673288 (= (content!2292 lt!518613) ((_ map or) (content!2292 lt!518545) (content!2292 lt!518560))))))

(declare-fun e!954617 () List!15938)

(assert (=> d!438429 (= lt!518613 e!954617)))

(declare-fun c!244434 () Bool)

(assert (=> d!438429 (= c!244434 ((_ is Nil!15870) lt!518545))))

(assert (=> d!438429 (= (++!4285 lt!518545 lt!518560) lt!518613)))

(declare-fun b!1492346 () Bool)

(assert (=> b!1492346 (= e!954618 (or (not (= lt!518560 Nil!15870)) (= lt!518613 lt!518545)))))

(declare-fun b!1492344 () Bool)

(assert (=> b!1492344 (= e!954617 (Cons!15870 (h!21271 lt!518545) (++!4285 (t!138197 lt!518545) lt!518560)))))

(declare-fun b!1492343 () Bool)

(assert (=> b!1492343 (= e!954617 lt!518560)))

(declare-fun b!1492345 () Bool)

(declare-fun res!673287 () Bool)

(assert (=> b!1492345 (=> (not res!673287) (not e!954618))))

(assert (=> b!1492345 (= res!673287 (= (size!12845 lt!518613) (+ (size!12845 lt!518545) (size!12845 lt!518560))))))

(assert (= (and d!438429 c!244434) b!1492343))

(assert (= (and d!438429 (not c!244434)) b!1492344))

(assert (= (and d!438429 res!673288) b!1492345))

(assert (= (and b!1492345 res!673287) b!1492346))

(declare-fun m!1743223 () Bool)

(assert (=> d!438429 m!1743223))

(assert (=> d!438429 m!1743205))

(declare-fun m!1743225 () Bool)

(assert (=> d!438429 m!1743225))

(declare-fun m!1743227 () Bool)

(assert (=> b!1492344 m!1743227))

(declare-fun m!1743229 () Bool)

(assert (=> b!1492345 m!1743229))

(assert (=> b!1492345 m!1743213))

(declare-fun m!1743231 () Bool)

(assert (=> b!1492345 m!1743231))

(assert (=> b!1492198 d!438429))

(declare-fun d!438431 () Bool)

(declare-fun list!6291 (Conc!5391) List!15937)

(assert (=> d!438431 (= (list!6288 (_2!8247 (v!22698 (_1!8251 lt!518569)))) (list!6291 (c!244404 (_2!8247 (v!22698 (_1!8251 lt!518569))))))))

(declare-fun bs!351041 () Bool)

(assert (= bs!351041 d!438431))

(declare-fun m!1743233 () Bool)

(assert (=> bs!351041 m!1743233))

(assert (=> b!1492198 d!438431))

(declare-fun d!438433 () Bool)

(declare-fun e!954619 () Bool)

(assert (=> d!438433 e!954619))

(declare-fun res!673289 () Bool)

(assert (=> d!438433 (=> res!673289 e!954619)))

(declare-fun lt!518614 () Bool)

(assert (=> d!438433 (= res!673289 (not lt!518614))))

(assert (=> d!438433 (= lt!518614 (= lt!518553 (drop!752 lt!518547 (- (size!12842 lt!518547) (size!12842 lt!518553)))))))

(assert (=> d!438433 (= (isSuffix!286 lt!518553 lt!518547) lt!518614)))

(declare-fun b!1492347 () Bool)

(assert (=> b!1492347 (= e!954619 (>= (size!12842 lt!518547) (size!12842 lt!518553)))))

(assert (= (and d!438433 (not res!673289)) b!1492347))

(assert (=> d!438433 m!1743043))

(declare-fun m!1743235 () Bool)

(assert (=> d!438433 m!1743235))

(declare-fun m!1743237 () Bool)

(assert (=> d!438433 m!1743237))

(assert (=> b!1492347 m!1743043))

(assert (=> b!1492347 m!1743235))

(assert (=> b!1492198 d!438433))

(declare-fun d!438435 () Bool)

(declare-fun e!954621 () Bool)

(assert (=> d!438435 e!954621))

(declare-fun res!673291 () Bool)

(assert (=> d!438435 (=> (not res!673291) (not e!954621))))

(declare-fun lt!518615 () List!15938)

(assert (=> d!438435 (= res!673291 (= (content!2292 lt!518615) ((_ map or) (content!2292 (++!4285 lt!518545 lt!518560)) (content!2292 lt!518563))))))

(declare-fun e!954620 () List!15938)

(assert (=> d!438435 (= lt!518615 e!954620)))

(declare-fun c!244435 () Bool)

(assert (=> d!438435 (= c!244435 ((_ is Nil!15870) (++!4285 lt!518545 lt!518560)))))

(assert (=> d!438435 (= (++!4285 (++!4285 lt!518545 lt!518560) lt!518563) lt!518615)))

(declare-fun b!1492351 () Bool)

(assert (=> b!1492351 (= e!954621 (or (not (= lt!518563 Nil!15870)) (= lt!518615 (++!4285 lt!518545 lt!518560))))))

(declare-fun b!1492349 () Bool)

(assert (=> b!1492349 (= e!954620 (Cons!15870 (h!21271 (++!4285 lt!518545 lt!518560)) (++!4285 (t!138197 (++!4285 lt!518545 lt!518560)) lt!518563)))))

(declare-fun b!1492348 () Bool)

(assert (=> b!1492348 (= e!954620 lt!518563)))

(declare-fun b!1492350 () Bool)

(declare-fun res!673290 () Bool)

(assert (=> b!1492350 (=> (not res!673290) (not e!954621))))

(assert (=> b!1492350 (= res!673290 (= (size!12845 lt!518615) (+ (size!12845 (++!4285 lt!518545 lt!518560)) (size!12845 lt!518563))))))

(assert (= (and d!438435 c!244435) b!1492348))

(assert (= (and d!438435 (not c!244435)) b!1492349))

(assert (= (and d!438435 res!673291) b!1492350))

(assert (= (and b!1492350 res!673290) b!1492351))

(declare-fun m!1743239 () Bool)

(assert (=> d!438435 m!1743239))

(assert (=> d!438435 m!1742969))

(declare-fun m!1743241 () Bool)

(assert (=> d!438435 m!1743241))

(declare-fun m!1743243 () Bool)

(assert (=> d!438435 m!1743243))

(declare-fun m!1743245 () Bool)

(assert (=> b!1492349 m!1743245))

(declare-fun m!1743247 () Bool)

(assert (=> b!1492350 m!1743247))

(assert (=> b!1492350 m!1742969))

(declare-fun m!1743249 () Bool)

(assert (=> b!1492350 m!1743249))

(declare-fun m!1743251 () Bool)

(assert (=> b!1492350 m!1743251))

(assert (=> b!1492198 d!438435))

(declare-fun d!438437 () Bool)

(declare-fun e!954622 () Bool)

(assert (=> d!438437 e!954622))

(declare-fun res!673292 () Bool)

(assert (=> d!438437 (=> res!673292 e!954622)))

(declare-fun lt!518616 () Bool)

(assert (=> d!438437 (= res!673292 (not lt!518616))))

(assert (=> d!438437 (= lt!518616 (= lt!518553 (drop!752 lt!518567 (- (size!12842 lt!518567) (size!12842 lt!518553)))))))

(assert (=> d!438437 (= (isSuffix!286 lt!518553 lt!518567) lt!518616)))

(declare-fun b!1492352 () Bool)

(assert (=> b!1492352 (= e!954622 (>= (size!12842 lt!518567) (size!12842 lt!518553)))))

(assert (= (and d!438437 (not res!673292)) b!1492352))

(declare-fun m!1743253 () Bool)

(assert (=> d!438437 m!1743253))

(assert (=> d!438437 m!1743235))

(declare-fun m!1743255 () Bool)

(assert (=> d!438437 m!1743255))

(assert (=> b!1492352 m!1743253))

(assert (=> b!1492352 m!1743235))

(assert (=> b!1492198 d!438437))

(declare-fun d!438439 () Bool)

(assert (=> d!438439 (isSuffix!286 lt!518553 (++!4283 lt!518544 lt!518553))))

(declare-fun lt!518617 () Unit!25659)

(assert (=> d!438439 (= lt!518617 (choose!9100 lt!518544 lt!518553))))

(assert (=> d!438439 (= (lemmaConcatTwoListThenFSndIsSuffix!264 lt!518544 lt!518553) lt!518617)))

(declare-fun bs!351042 () Bool)

(assert (= bs!351042 d!438439))

(assert (=> bs!351042 m!1742931))

(assert (=> bs!351042 m!1742931))

(declare-fun m!1743257 () Bool)

(assert (=> bs!351042 m!1743257))

(declare-fun m!1743259 () Bool)

(assert (=> bs!351042 m!1743259))

(assert (=> b!1492198 d!438439))

(declare-fun d!438441 () Bool)

(assert (=> d!438441 (= (list!6288 (_2!8242 lt!518572)) (list!6291 (c!244404 (_2!8242 lt!518572))))))

(declare-fun bs!351043 () Bool)

(assert (= bs!351043 d!438441))

(declare-fun m!1743261 () Bool)

(assert (=> bs!351043 m!1743261))

(assert (=> b!1492198 d!438441))

(declare-fun d!438443 () Bool)

(declare-fun e!954627 () Bool)

(assert (=> d!438443 e!954627))

(declare-fun res!673297 () Bool)

(assert (=> d!438443 (=> (not res!673297) (not e!954627))))

(declare-fun lt!518620 () List!15937)

(declare-fun content!2293 (List!15937) (InoxSet C!8448))

(assert (=> d!438443 (= res!673297 (= (content!2293 lt!518620) ((_ map or) (content!2293 lt!518575) (content!2293 lt!518553))))))

(declare-fun e!954628 () List!15937)

(assert (=> d!438443 (= lt!518620 e!954628)))

(declare-fun c!244438 () Bool)

(assert (=> d!438443 (= c!244438 ((_ is Nil!15869) lt!518575))))

(assert (=> d!438443 (= (++!4283 lt!518575 lt!518553) lt!518620)))

(declare-fun b!1492362 () Bool)

(assert (=> b!1492362 (= e!954628 (Cons!15869 (h!21270 lt!518575) (++!4283 (t!138196 lt!518575) lt!518553)))))

(declare-fun b!1492363 () Bool)

(declare-fun res!673298 () Bool)

(assert (=> b!1492363 (=> (not res!673298) (not e!954627))))

(assert (=> b!1492363 (= res!673298 (= (size!12842 lt!518620) (+ (size!12842 lt!518575) (size!12842 lt!518553))))))

(declare-fun b!1492361 () Bool)

(assert (=> b!1492361 (= e!954628 lt!518553)))

(declare-fun b!1492364 () Bool)

(assert (=> b!1492364 (= e!954627 (or (not (= lt!518553 Nil!15869)) (= lt!518620 lt!518575)))))

(assert (= (and d!438443 c!244438) b!1492361))

(assert (= (and d!438443 (not c!244438)) b!1492362))

(assert (= (and d!438443 res!673297) b!1492363))

(assert (= (and b!1492363 res!673298) b!1492364))

(declare-fun m!1743263 () Bool)

(assert (=> d!438443 m!1743263))

(declare-fun m!1743265 () Bool)

(assert (=> d!438443 m!1743265))

(declare-fun m!1743267 () Bool)

(assert (=> d!438443 m!1743267))

(declare-fun m!1743269 () Bool)

(assert (=> b!1492362 m!1743269))

(declare-fun m!1743271 () Bool)

(assert (=> b!1492363 m!1743271))

(declare-fun m!1743273 () Bool)

(assert (=> b!1492363 m!1743273))

(assert (=> b!1492363 m!1743235))

(assert (=> b!1492198 d!438443))

(declare-fun d!438445 () Bool)

(declare-fun e!954629 () Bool)

(assert (=> d!438445 e!954629))

(declare-fun res!673299 () Bool)

(assert (=> d!438445 (=> (not res!673299) (not e!954629))))

(declare-fun lt!518621 () List!15937)

(assert (=> d!438445 (= res!673299 (= (content!2293 lt!518621) ((_ map or) (content!2293 lt!518544) (content!2293 lt!518553))))))

(declare-fun e!954630 () List!15937)

(assert (=> d!438445 (= lt!518621 e!954630)))

(declare-fun c!244439 () Bool)

(assert (=> d!438445 (= c!244439 ((_ is Nil!15869) lt!518544))))

(assert (=> d!438445 (= (++!4283 lt!518544 lt!518553) lt!518621)))

(declare-fun b!1492366 () Bool)

(assert (=> b!1492366 (= e!954630 (Cons!15869 (h!21270 lt!518544) (++!4283 (t!138196 lt!518544) lt!518553)))))

(declare-fun b!1492367 () Bool)

(declare-fun res!673300 () Bool)

(assert (=> b!1492367 (=> (not res!673300) (not e!954629))))

(assert (=> b!1492367 (= res!673300 (= (size!12842 lt!518621) (+ (size!12842 lt!518544) (size!12842 lt!518553))))))

(declare-fun b!1492365 () Bool)

(assert (=> b!1492365 (= e!954630 lt!518553)))

(declare-fun b!1492368 () Bool)

(assert (=> b!1492368 (= e!954629 (or (not (= lt!518553 Nil!15869)) (= lt!518621 lt!518544)))))

(assert (= (and d!438445 c!244439) b!1492365))

(assert (= (and d!438445 (not c!244439)) b!1492366))

(assert (= (and d!438445 res!673299) b!1492367))

(assert (= (and b!1492367 res!673300) b!1492368))

(declare-fun m!1743275 () Bool)

(assert (=> d!438445 m!1743275))

(declare-fun m!1743277 () Bool)

(assert (=> d!438445 m!1743277))

(assert (=> d!438445 m!1743267))

(declare-fun m!1743279 () Bool)

(assert (=> b!1492366 m!1743279))

(declare-fun m!1743281 () Bool)

(assert (=> b!1492367 m!1743281))

(declare-fun m!1743283 () Bool)

(assert (=> b!1492367 m!1743283))

(assert (=> b!1492367 m!1743235))

(assert (=> b!1492198 d!438445))

(declare-fun d!438447 () Bool)

(declare-fun e!954633 () Bool)

(assert (=> d!438447 e!954633))

(declare-fun res!673303 () Bool)

(assert (=> d!438447 (=> (not res!673303) (not e!954633))))

(declare-fun append!478 (Conc!5392 Token!5302) Conc!5392)

(assert (=> d!438447 (= res!673303 (isBalanced!1594 (append!478 (c!244406 acc!392) (_1!8247 (v!22698 (_1!8251 lt!518569))))))))

(declare-fun lt!518624 () BalanceConc!10726)

(assert (=> d!438447 (= lt!518624 (BalanceConc!10727 (append!478 (c!244406 acc!392) (_1!8247 (v!22698 (_1!8251 lt!518569))))))))

(assert (=> d!438447 (= (append!477 acc!392 (_1!8247 (v!22698 (_1!8251 lt!518569)))) lt!518624)))

(declare-fun b!1492371 () Bool)

(declare-fun $colon+!100 (List!15938 Token!5302) List!15938)

(assert (=> b!1492371 (= e!954633 (= (list!6289 lt!518624) ($colon+!100 (list!6289 acc!392) (_1!8247 (v!22698 (_1!8251 lt!518569))))))))

(assert (= (and d!438447 res!673303) b!1492371))

(declare-fun m!1743285 () Bool)

(assert (=> d!438447 m!1743285))

(assert (=> d!438447 m!1743285))

(declare-fun m!1743287 () Bool)

(assert (=> d!438447 m!1743287))

(declare-fun m!1743289 () Bool)

(assert (=> b!1492371 m!1743289))

(assert (=> b!1492371 m!1742923))

(assert (=> b!1492371 m!1742923))

(declare-fun m!1743291 () Bool)

(assert (=> b!1492371 m!1743291))

(assert (=> b!1492198 d!438447))

(declare-fun b!1492388 () Bool)

(declare-fun e!954648 () Bool)

(declare-fun lt!518645 () Option!2904)

(declare-fun get!4710 (Option!2904) tuple2!14608)

(declare-datatypes ((tuple2!14616 0))(
  ( (tuple2!14617 (_1!8252 Token!5302) (_2!8252 List!15937)) )
))
(declare-datatypes ((Option!2905 0))(
  ( (None!2904) (Some!2904 (v!22703 tuple2!14616)) )
))
(declare-fun get!4711 (Option!2905) tuple2!14616)

(declare-fun maxPrefix!1201 (LexerInterface!2475 List!15939 List!15937) Option!2905)

(assert (=> b!1492388 (= e!954648 (= (list!6288 (_2!8247 (get!4710 lt!518645))) (_2!8252 (get!4711 (maxPrefix!1201 thiss!13241 rules!1640 (list!6288 lt!518552))))))))

(declare-fun d!438449 () Bool)

(declare-fun e!954650 () Bool)

(assert (=> d!438449 e!954650))

(declare-fun res!673318 () Bool)

(assert (=> d!438449 (=> (not res!673318) (not e!954650))))

(declare-fun isDefined!2339 (Option!2904) Bool)

(declare-fun isDefined!2340 (Option!2905) Bool)

(declare-fun maxPrefixZipper!252 (LexerInterface!2475 List!15939 List!15937) Option!2905)

(assert (=> d!438449 (= res!673318 (= (isDefined!2339 lt!518645) (isDefined!2340 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 lt!518552)))))))

(declare-fun e!954649 () Option!2904)

(assert (=> d!438449 (= lt!518645 e!954649)))

(declare-fun c!244443 () Bool)

(assert (=> d!438449 (= c!244443 (and ((_ is Cons!15871) rules!1640) ((_ is Nil!15871) (t!138198 rules!1640))))))

(declare-fun lt!518639 () Unit!25659)

(declare-fun lt!518640 () Unit!25659)

(assert (=> d!438449 (= lt!518639 lt!518640)))

(declare-fun lt!518642 () List!15937)

(declare-fun lt!518644 () List!15937)

(declare-fun isPrefix!1211 (List!15937 List!15937) Bool)

(assert (=> d!438449 (isPrefix!1211 lt!518642 lt!518644)))

(declare-fun lemmaIsPrefixRefl!841 (List!15937 List!15937) Unit!25659)

(assert (=> d!438449 (= lt!518640 (lemmaIsPrefixRefl!841 lt!518642 lt!518644))))

(assert (=> d!438449 (= lt!518644 (list!6288 lt!518552))))

(assert (=> d!438449 (= lt!518642 (list!6288 lt!518552))))

(declare-fun rulesValidInductive!849 (LexerInterface!2475 List!15939) Bool)

(assert (=> d!438449 (rulesValidInductive!849 thiss!13241 rules!1640)))

(assert (=> d!438449 (= (maxPrefixZipperSequence!575 thiss!13241 rules!1640 lt!518552) lt!518645)))

(declare-fun bm!99012 () Bool)

(declare-fun call!99017 () Option!2904)

(declare-fun maxPrefixOneRuleZipperSequence!271 (LexerInterface!2475 Rule!5440 BalanceConc!10724) Option!2904)

(assert (=> bm!99012 (= call!99017 (maxPrefixOneRuleZipperSequence!271 thiss!13241 (h!21272 rules!1640) lt!518552))))

(declare-fun b!1492389 () Bool)

(declare-fun e!954646 () Bool)

(assert (=> b!1492389 (= e!954650 e!954646)))

(declare-fun res!673319 () Bool)

(assert (=> b!1492389 (=> res!673319 e!954646)))

(assert (=> b!1492389 (= res!673319 (not (isDefined!2339 lt!518645)))))

(declare-fun b!1492390 () Bool)

(declare-fun res!673316 () Bool)

(assert (=> b!1492390 (=> (not res!673316) (not e!954650))))

(declare-fun e!954647 () Bool)

(assert (=> b!1492390 (= res!673316 e!954647)))

(declare-fun res!673317 () Bool)

(assert (=> b!1492390 (=> res!673317 e!954647)))

(assert (=> b!1492390 (= res!673317 (not (isDefined!2339 lt!518645)))))

(declare-fun b!1492391 () Bool)

(declare-fun e!954651 () Bool)

(assert (=> b!1492391 (= e!954647 e!954651)))

(declare-fun res!673321 () Bool)

(assert (=> b!1492391 (=> (not res!673321) (not e!954651))))

(assert (=> b!1492391 (= res!673321 (= (_1!8247 (get!4710 lt!518645)) (_1!8252 (get!4711 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 lt!518552))))))))

(declare-fun b!1492392 () Bool)

(assert (=> b!1492392 (= e!954646 e!954648)))

(declare-fun res!673320 () Bool)

(assert (=> b!1492392 (=> (not res!673320) (not e!954648))))

(assert (=> b!1492392 (= res!673320 (= (_1!8247 (get!4710 lt!518645)) (_1!8252 (get!4711 (maxPrefix!1201 thiss!13241 rules!1640 (list!6288 lt!518552))))))))

(declare-fun b!1492393 () Bool)

(assert (=> b!1492393 (= e!954649 call!99017)))

(declare-fun b!1492394 () Bool)

(assert (=> b!1492394 (= e!954651 (= (list!6288 (_2!8247 (get!4710 lt!518645))) (_2!8252 (get!4711 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 lt!518552))))))))

(declare-fun b!1492395 () Bool)

(declare-fun lt!518641 () Option!2904)

(declare-fun lt!518643 () Option!2904)

(assert (=> b!1492395 (= e!954649 (ite (and ((_ is None!2903) lt!518641) ((_ is None!2903) lt!518643)) None!2903 (ite ((_ is None!2903) lt!518643) lt!518641 (ite ((_ is None!2903) lt!518641) lt!518643 (ite (>= (size!12837 (_1!8247 (v!22698 lt!518641))) (size!12837 (_1!8247 (v!22698 lt!518643)))) lt!518641 lt!518643)))))))

(assert (=> b!1492395 (= lt!518641 call!99017)))

(assert (=> b!1492395 (= lt!518643 (maxPrefixZipperSequence!575 thiss!13241 (t!138198 rules!1640) lt!518552))))

(assert (= (and d!438449 c!244443) b!1492393))

(assert (= (and d!438449 (not c!244443)) b!1492395))

(assert (= (or b!1492393 b!1492395) bm!99012))

(assert (= (and d!438449 res!673318) b!1492390))

(assert (= (and b!1492390 (not res!673317)) b!1492391))

(assert (= (and b!1492391 res!673321) b!1492394))

(assert (= (and b!1492390 res!673316) b!1492389))

(assert (= (and b!1492389 (not res!673319)) b!1492392))

(assert (= (and b!1492392 res!673320) b!1492388))

(declare-fun m!1743293 () Bool)

(assert (=> bm!99012 m!1743293))

(declare-fun m!1743295 () Bool)

(assert (=> b!1492389 m!1743295))

(assert (=> b!1492390 m!1743295))

(declare-fun m!1743297 () Bool)

(assert (=> b!1492395 m!1743297))

(assert (=> b!1492388 m!1742965))

(assert (=> b!1492388 m!1742965))

(declare-fun m!1743299 () Bool)

(assert (=> b!1492388 m!1743299))

(declare-fun m!1743301 () Bool)

(assert (=> b!1492388 m!1743301))

(assert (=> b!1492388 m!1743299))

(declare-fun m!1743303 () Bool)

(assert (=> b!1492388 m!1743303))

(declare-fun m!1743305 () Bool)

(assert (=> b!1492388 m!1743305))

(assert (=> b!1492391 m!1743301))

(assert (=> b!1492391 m!1742965))

(assert (=> b!1492391 m!1742965))

(declare-fun m!1743307 () Bool)

(assert (=> b!1492391 m!1743307))

(assert (=> b!1492391 m!1743307))

(declare-fun m!1743309 () Bool)

(assert (=> b!1492391 m!1743309))

(assert (=> b!1492392 m!1743301))

(assert (=> b!1492392 m!1742965))

(assert (=> b!1492392 m!1742965))

(assert (=> b!1492392 m!1743299))

(assert (=> b!1492392 m!1743299))

(assert (=> b!1492392 m!1743303))

(assert (=> d!438449 m!1742965))

(assert (=> d!438449 m!1742965))

(assert (=> d!438449 m!1743307))

(assert (=> d!438449 m!1743307))

(declare-fun m!1743311 () Bool)

(assert (=> d!438449 m!1743311))

(assert (=> d!438449 m!1743295))

(declare-fun m!1743313 () Bool)

(assert (=> d!438449 m!1743313))

(declare-fun m!1743315 () Bool)

(assert (=> d!438449 m!1743315))

(declare-fun m!1743317 () Bool)

(assert (=> d!438449 m!1743317))

(assert (=> b!1492394 m!1742965))

(assert (=> b!1492394 m!1743307))

(assert (=> b!1492394 m!1743309))

(assert (=> b!1492394 m!1742965))

(assert (=> b!1492394 m!1743307))

(assert (=> b!1492394 m!1743301))

(assert (=> b!1492394 m!1743305))

(assert (=> b!1492198 d!438449))

(declare-fun d!438451 () Bool)

(declare-fun e!954652 () Bool)

(assert (=> d!438451 e!954652))

(declare-fun res!673322 () Bool)

(assert (=> d!438451 (=> (not res!673322) (not e!954652))))

(declare-fun lt!518646 () List!15937)

(assert (=> d!438451 (= res!673322 (= (content!2293 lt!518646) ((_ map or) (content!2293 lt!518550) (content!2293 (++!4283 lt!518575 lt!518553)))))))

(declare-fun e!954653 () List!15937)

(assert (=> d!438451 (= lt!518646 e!954653)))

(declare-fun c!244444 () Bool)

(assert (=> d!438451 (= c!244444 ((_ is Nil!15869) lt!518550))))

(assert (=> d!438451 (= (++!4283 lt!518550 (++!4283 lt!518575 lt!518553)) lt!518646)))

(declare-fun b!1492397 () Bool)

(assert (=> b!1492397 (= e!954653 (Cons!15869 (h!21270 lt!518550) (++!4283 (t!138196 lt!518550) (++!4283 lt!518575 lt!518553))))))

(declare-fun b!1492398 () Bool)

(declare-fun res!673323 () Bool)

(assert (=> b!1492398 (=> (not res!673323) (not e!954652))))

(assert (=> b!1492398 (= res!673323 (= (size!12842 lt!518646) (+ (size!12842 lt!518550) (size!12842 (++!4283 lt!518575 lt!518553)))))))

(declare-fun b!1492396 () Bool)

(assert (=> b!1492396 (= e!954653 (++!4283 lt!518575 lt!518553))))

(declare-fun b!1492399 () Bool)

(assert (=> b!1492399 (= e!954652 (or (not (= (++!4283 lt!518575 lt!518553) Nil!15869)) (= lt!518646 lt!518550)))))

(assert (= (and d!438451 c!244444) b!1492396))

(assert (= (and d!438451 (not c!244444)) b!1492397))

(assert (= (and d!438451 res!673322) b!1492398))

(assert (= (and b!1492398 res!673323) b!1492399))

(declare-fun m!1743319 () Bool)

(assert (=> d!438451 m!1743319))

(declare-fun m!1743321 () Bool)

(assert (=> d!438451 m!1743321))

(assert (=> d!438451 m!1742943))

(declare-fun m!1743323 () Bool)

(assert (=> d!438451 m!1743323))

(assert (=> b!1492397 m!1742943))

(declare-fun m!1743325 () Bool)

(assert (=> b!1492397 m!1743325))

(declare-fun m!1743327 () Bool)

(assert (=> b!1492398 m!1743327))

(declare-fun m!1743329 () Bool)

(assert (=> b!1492398 m!1743329))

(assert (=> b!1492398 m!1742943))

(declare-fun m!1743331 () Bool)

(assert (=> b!1492398 m!1743331))

(assert (=> b!1492198 d!438451))

(declare-fun d!438453 () Bool)

(declare-fun e!954656 () Bool)

(assert (=> d!438453 e!954656))

(declare-fun res!673334 () Bool)

(assert (=> d!438453 (=> (not res!673334) (not e!954656))))

(declare-fun appendAssocInst!354 (Conc!5391 Conc!5391) Bool)

(assert (=> d!438453 (= res!673334 (appendAssocInst!354 (c!244404 treated!70) (c!244404 lt!518548)))))

(declare-fun lt!518649 () BalanceConc!10724)

(declare-fun ++!4288 (Conc!5391 Conc!5391) Conc!5391)

(assert (=> d!438453 (= lt!518649 (BalanceConc!10725 (++!4288 (c!244404 treated!70) (c!244404 lt!518548))))))

(assert (=> d!438453 (= (++!4284 treated!70 lt!518548) lt!518649)))

(declare-fun b!1492408 () Bool)

(declare-fun res!673332 () Bool)

(assert (=> b!1492408 (=> (not res!673332) (not e!954656))))

(assert (=> b!1492408 (= res!673332 (isBalanced!1593 (++!4288 (c!244404 treated!70) (c!244404 lt!518548))))))

(declare-fun b!1492411 () Bool)

(assert (=> b!1492411 (= e!954656 (= (list!6288 lt!518649) (++!4283 (list!6288 treated!70) (list!6288 lt!518548))))))

(declare-fun b!1492409 () Bool)

(declare-fun res!673335 () Bool)

(assert (=> b!1492409 (=> (not res!673335) (not e!954656))))

(declare-fun height!796 (Conc!5391) Int)

(assert (=> b!1492409 (= res!673335 (<= (height!796 (++!4288 (c!244404 treated!70) (c!244404 lt!518548))) (+ (max!0 (height!796 (c!244404 treated!70)) (height!796 (c!244404 lt!518548))) 1)))))

(declare-fun b!1492410 () Bool)

(declare-fun res!673333 () Bool)

(assert (=> b!1492410 (=> (not res!673333) (not e!954656))))

(assert (=> b!1492410 (= res!673333 (>= (height!796 (++!4288 (c!244404 treated!70) (c!244404 lt!518548))) (max!0 (height!796 (c!244404 treated!70)) (height!796 (c!244404 lt!518548)))))))

(assert (= (and d!438453 res!673334) b!1492408))

(assert (= (and b!1492408 res!673332) b!1492409))

(assert (= (and b!1492409 res!673335) b!1492410))

(assert (= (and b!1492410 res!673333) b!1492411))

(declare-fun m!1743333 () Bool)

(assert (=> d!438453 m!1743333))

(declare-fun m!1743335 () Bool)

(assert (=> d!438453 m!1743335))

(assert (=> b!1492409 m!1743335))

(declare-fun m!1743337 () Bool)

(assert (=> b!1492409 m!1743337))

(declare-fun m!1743339 () Bool)

(assert (=> b!1492409 m!1743339))

(declare-fun m!1743341 () Bool)

(assert (=> b!1492409 m!1743341))

(declare-fun m!1743343 () Bool)

(assert (=> b!1492409 m!1743343))

(assert (=> b!1492409 m!1743341))

(assert (=> b!1492409 m!1743339))

(assert (=> b!1492409 m!1743335))

(assert (=> b!1492408 m!1743335))

(assert (=> b!1492408 m!1743335))

(declare-fun m!1743345 () Bool)

(assert (=> b!1492408 m!1743345))

(declare-fun m!1743347 () Bool)

(assert (=> b!1492411 m!1743347))

(assert (=> b!1492411 m!1742885))

(assert (=> b!1492411 m!1742983))

(assert (=> b!1492411 m!1742885))

(assert (=> b!1492411 m!1742983))

(declare-fun m!1743349 () Bool)

(assert (=> b!1492411 m!1743349))

(assert (=> b!1492410 m!1743335))

(assert (=> b!1492410 m!1743337))

(assert (=> b!1492410 m!1743339))

(assert (=> b!1492410 m!1743341))

(assert (=> b!1492410 m!1743343))

(assert (=> b!1492410 m!1743341))

(assert (=> b!1492410 m!1743339))

(assert (=> b!1492410 m!1743335))

(assert (=> b!1492198 d!438453))

(declare-fun d!438455 () Bool)

(assert (=> d!438455 (= (list!6288 lt!518552) (list!6291 (c!244404 lt!518552)))))

(declare-fun bs!351044 () Bool)

(assert (= bs!351044 d!438455))

(declare-fun m!1743351 () Bool)

(assert (=> bs!351044 m!1743351))

(assert (=> b!1492198 d!438455))

(declare-fun d!438457 () Bool)

(declare-fun e!954660 () Bool)

(assert (=> d!438457 e!954660))

(declare-fun res!673336 () Bool)

(assert (=> d!438457 (=> (not res!673336) (not e!954660))))

(declare-fun e!954659 () Bool)

(assert (=> d!438457 (= res!673336 e!954659)))

(declare-fun c!244448 () Bool)

(declare-fun lt!518652 () tuple2!14602)

(assert (=> d!438457 (= c!244448 (> (size!12843 (_1!8242 lt!518652)) 0))))

(declare-fun e!954658 () tuple2!14602)

(assert (=> d!438457 (= lt!518652 e!954658)))

(declare-fun c!244449 () Bool)

(declare-fun lt!518650 () Option!2904)

(assert (=> d!438457 (= c!244449 ((_ is Some!2903) lt!518650))))

(assert (=> d!438457 (= lt!518650 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 lt!518552))))

(assert (=> d!438457 (= (lexRec!312 thiss!13241 rules!1640 lt!518552) lt!518652)))

(declare-fun b!1492412 () Bool)

(declare-fun res!673337 () Bool)

(assert (=> b!1492412 (=> (not res!673337) (not e!954660))))

(assert (=> b!1492412 (= res!673337 (= (list!6289 (_1!8242 lt!518652)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 lt!518552)))))))

(declare-fun b!1492413 () Bool)

(assert (=> b!1492413 (= e!954659 (= (list!6288 (_2!8242 lt!518652)) (list!6288 lt!518552)))))

(declare-fun b!1492414 () Bool)

(assert (=> b!1492414 (= e!954658 (tuple2!14603 (BalanceConc!10727 Empty!5392) lt!518552))))

(declare-fun b!1492415 () Bool)

(declare-fun e!954657 () Bool)

(assert (=> b!1492415 (= e!954659 e!954657)))

(declare-fun res!673338 () Bool)

(assert (=> b!1492415 (= res!673338 (< (size!12844 (_2!8242 lt!518652)) (size!12844 lt!518552)))))

(assert (=> b!1492415 (=> (not res!673338) (not e!954657))))

(declare-fun b!1492416 () Bool)

(assert (=> b!1492416 (= e!954660 (= (list!6288 (_2!8242 lt!518652)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 lt!518552)))))))

(declare-fun b!1492417 () Bool)

(declare-fun lt!518651 () tuple2!14602)

(assert (=> b!1492417 (= e!954658 (tuple2!14603 (prepend!443 (_1!8242 lt!518651) (_1!8247 (v!22698 lt!518650))) (_2!8242 lt!518651)))))

(assert (=> b!1492417 (= lt!518651 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518650))))))

(declare-fun b!1492418 () Bool)

(assert (=> b!1492418 (= e!954657 (not (isEmpty!9868 (_1!8242 lt!518652))))))

(assert (= (and d!438457 c!244449) b!1492417))

(assert (= (and d!438457 (not c!244449)) b!1492414))

(assert (= (and d!438457 c!244448) b!1492415))

(assert (= (and d!438457 (not c!244448)) b!1492413))

(assert (= (and b!1492415 res!673338) b!1492418))

(assert (= (and d!438457 res!673336) b!1492412))

(assert (= (and b!1492412 res!673337) b!1492416))

(declare-fun m!1743353 () Bool)

(assert (=> b!1492416 m!1743353))

(assert (=> b!1492416 m!1742965))

(assert (=> b!1492416 m!1742965))

(declare-fun m!1743355 () Bool)

(assert (=> b!1492416 m!1743355))

(declare-fun m!1743357 () Bool)

(assert (=> b!1492417 m!1743357))

(declare-fun m!1743359 () Bool)

(assert (=> b!1492417 m!1743359))

(declare-fun m!1743361 () Bool)

(assert (=> b!1492418 m!1743361))

(declare-fun m!1743363 () Bool)

(assert (=> b!1492415 m!1743363))

(declare-fun m!1743365 () Bool)

(assert (=> b!1492415 m!1743365))

(declare-fun m!1743367 () Bool)

(assert (=> b!1492412 m!1743367))

(assert (=> b!1492412 m!1742965))

(assert (=> b!1492412 m!1742965))

(assert (=> b!1492412 m!1743355))

(assert (=> b!1492413 m!1743353))

(assert (=> b!1492413 m!1742965))

(declare-fun m!1743369 () Bool)

(assert (=> d!438457 m!1743369))

(assert (=> d!438457 m!1742939))

(assert (=> b!1492198 d!438457))

(declare-fun d!438459 () Bool)

(declare-fun e!954664 () Bool)

(assert (=> d!438459 e!954664))

(declare-fun res!673339 () Bool)

(assert (=> d!438459 (=> (not res!673339) (not e!954664))))

(declare-fun e!954663 () Bool)

(assert (=> d!438459 (= res!673339 e!954663)))

(declare-fun c!244450 () Bool)

(declare-fun lt!518655 () tuple2!14602)

(assert (=> d!438459 (= c!244450 (> (size!12843 (_1!8242 lt!518655)) 0))))

(declare-fun e!954662 () tuple2!14602)

(assert (=> d!438459 (= lt!518655 e!954662)))

(declare-fun c!244451 () Bool)

(declare-fun lt!518653 () Option!2904)

(assert (=> d!438459 (= c!244451 ((_ is Some!2903) lt!518653))))

(assert (=> d!438459 (= lt!518653 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 (_2!8247 (v!22698 (_1!8251 lt!518569)))))))

(assert (=> d!438459 (= (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 (_1!8251 lt!518569)))) lt!518655)))

(declare-fun b!1492419 () Bool)

(declare-fun res!673340 () Bool)

(assert (=> b!1492419 (=> (not res!673340) (not e!954664))))

(assert (=> b!1492419 (= res!673340 (= (list!6289 (_1!8242 lt!518655)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 (_2!8247 (v!22698 (_1!8251 lt!518569))))))))))

(declare-fun b!1492420 () Bool)

(assert (=> b!1492420 (= e!954663 (= (list!6288 (_2!8242 lt!518655)) (list!6288 (_2!8247 (v!22698 (_1!8251 lt!518569))))))))

(declare-fun b!1492421 () Bool)

(assert (=> b!1492421 (= e!954662 (tuple2!14603 (BalanceConc!10727 Empty!5392) (_2!8247 (v!22698 (_1!8251 lt!518569)))))))

(declare-fun b!1492422 () Bool)

(declare-fun e!954661 () Bool)

(assert (=> b!1492422 (= e!954663 e!954661)))

(declare-fun res!673341 () Bool)

(assert (=> b!1492422 (= res!673341 (< (size!12844 (_2!8242 lt!518655)) (size!12844 (_2!8247 (v!22698 (_1!8251 lt!518569))))))))

(assert (=> b!1492422 (=> (not res!673341) (not e!954661))))

(declare-fun b!1492423 () Bool)

(assert (=> b!1492423 (= e!954664 (= (list!6288 (_2!8242 lt!518655)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 (_2!8247 (v!22698 (_1!8251 lt!518569))))))))))

(declare-fun b!1492424 () Bool)

(declare-fun lt!518654 () tuple2!14602)

(assert (=> b!1492424 (= e!954662 (tuple2!14603 (prepend!443 (_1!8242 lt!518654) (_1!8247 (v!22698 lt!518653))) (_2!8242 lt!518654)))))

(assert (=> b!1492424 (= lt!518654 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518653))))))

(declare-fun b!1492425 () Bool)

(assert (=> b!1492425 (= e!954661 (not (isEmpty!9868 (_1!8242 lt!518655))))))

(assert (= (and d!438459 c!244451) b!1492424))

(assert (= (and d!438459 (not c!244451)) b!1492421))

(assert (= (and d!438459 c!244450) b!1492422))

(assert (= (and d!438459 (not c!244450)) b!1492420))

(assert (= (and b!1492422 res!673341) b!1492425))

(assert (= (and d!438459 res!673339) b!1492419))

(assert (= (and b!1492419 res!673340) b!1492423))

(declare-fun m!1743371 () Bool)

(assert (=> b!1492423 m!1743371))

(assert (=> b!1492423 m!1742985))

(assert (=> b!1492423 m!1742985))

(declare-fun m!1743373 () Bool)

(assert (=> b!1492423 m!1743373))

(declare-fun m!1743375 () Bool)

(assert (=> b!1492424 m!1743375))

(declare-fun m!1743377 () Bool)

(assert (=> b!1492424 m!1743377))

(declare-fun m!1743379 () Bool)

(assert (=> b!1492425 m!1743379))

(declare-fun m!1743381 () Bool)

(assert (=> b!1492422 m!1743381))

(declare-fun m!1743383 () Bool)

(assert (=> b!1492422 m!1743383))

(declare-fun m!1743385 () Bool)

(assert (=> b!1492419 m!1743385))

(assert (=> b!1492419 m!1742985))

(assert (=> b!1492419 m!1742985))

(assert (=> b!1492419 m!1743373))

(assert (=> b!1492420 m!1743371))

(assert (=> b!1492420 m!1742985))

(declare-fun m!1743387 () Bool)

(assert (=> d!438459 m!1743387))

(declare-fun m!1743389 () Bool)

(assert (=> d!438459 m!1743389))

(assert (=> b!1492198 d!438459))

(declare-fun d!438461 () Bool)

(assert (=> d!438461 (= (++!4285 (++!4285 lt!518545 lt!518560) lt!518563) (++!4285 lt!518545 (++!4285 lt!518560 lt!518563)))))

(declare-fun lt!518658 () Unit!25659)

(declare-fun choose!9102 (List!15938 List!15938 List!15938) Unit!25659)

(assert (=> d!438461 (= lt!518658 (choose!9102 lt!518545 lt!518560 lt!518563))))

(assert (=> d!438461 (= (lemmaConcatAssociativity!911 lt!518545 lt!518560 lt!518563) lt!518658)))

(declare-fun bs!351045 () Bool)

(assert (= bs!351045 d!438461))

(assert (=> bs!351045 m!1742969))

(assert (=> bs!351045 m!1742977))

(assert (=> bs!351045 m!1742969))

(assert (=> bs!351045 m!1742933))

(assert (=> bs!351045 m!1742933))

(assert (=> bs!351045 m!1742955))

(declare-fun m!1743391 () Bool)

(assert (=> bs!351045 m!1743391))

(assert (=> b!1492198 d!438461))

(declare-fun e!954667 () Bool)

(declare-fun lt!518665 () Option!2904)

(declare-fun b!1492426 () Bool)

(assert (=> b!1492426 (= e!954667 (= (list!6288 (_2!8247 (get!4710 lt!518665))) (_2!8252 (get!4711 (maxPrefix!1201 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun d!438463 () Bool)

(declare-fun e!954669 () Bool)

(assert (=> d!438463 e!954669))

(declare-fun res!673344 () Bool)

(assert (=> d!438463 (=> (not res!673344) (not e!954669))))

(assert (=> d!438463 (= res!673344 (= (isDefined!2339 lt!518665) (isDefined!2340 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 input!1102)))))))

(declare-fun e!954668 () Option!2904)

(assert (=> d!438463 (= lt!518665 e!954668)))

(declare-fun c!244452 () Bool)

(assert (=> d!438463 (= c!244452 (and ((_ is Cons!15871) rules!1640) ((_ is Nil!15871) (t!138198 rules!1640))))))

(declare-fun lt!518659 () Unit!25659)

(declare-fun lt!518660 () Unit!25659)

(assert (=> d!438463 (= lt!518659 lt!518660)))

(declare-fun lt!518662 () List!15937)

(declare-fun lt!518664 () List!15937)

(assert (=> d!438463 (isPrefix!1211 lt!518662 lt!518664)))

(assert (=> d!438463 (= lt!518660 (lemmaIsPrefixRefl!841 lt!518662 lt!518664))))

(assert (=> d!438463 (= lt!518664 (list!6288 input!1102))))

(assert (=> d!438463 (= lt!518662 (list!6288 input!1102))))

(assert (=> d!438463 (rulesValidInductive!849 thiss!13241 rules!1640)))

(assert (=> d!438463 (= (maxPrefixZipperSequence!575 thiss!13241 rules!1640 input!1102) lt!518665)))

(declare-fun call!99018 () Option!2904)

(declare-fun bm!99013 () Bool)

(assert (=> bm!99013 (= call!99018 (maxPrefixOneRuleZipperSequence!271 thiss!13241 (h!21272 rules!1640) input!1102))))

(declare-fun b!1492427 () Bool)

(declare-fun e!954665 () Bool)

(assert (=> b!1492427 (= e!954669 e!954665)))

(declare-fun res!673345 () Bool)

(assert (=> b!1492427 (=> res!673345 e!954665)))

(assert (=> b!1492427 (= res!673345 (not (isDefined!2339 lt!518665)))))

(declare-fun b!1492428 () Bool)

(declare-fun res!673342 () Bool)

(assert (=> b!1492428 (=> (not res!673342) (not e!954669))))

(declare-fun e!954666 () Bool)

(assert (=> b!1492428 (= res!673342 e!954666)))

(declare-fun res!673343 () Bool)

(assert (=> b!1492428 (=> res!673343 e!954666)))

(assert (=> b!1492428 (= res!673343 (not (isDefined!2339 lt!518665)))))

(declare-fun b!1492429 () Bool)

(declare-fun e!954670 () Bool)

(assert (=> b!1492429 (= e!954666 e!954670)))

(declare-fun res!673347 () Bool)

(assert (=> b!1492429 (=> (not res!673347) (not e!954670))))

(assert (=> b!1492429 (= res!673347 (= (_1!8247 (get!4710 lt!518665)) (_1!8252 (get!4711 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun b!1492430 () Bool)

(assert (=> b!1492430 (= e!954665 e!954667)))

(declare-fun res!673346 () Bool)

(assert (=> b!1492430 (=> (not res!673346) (not e!954667))))

(assert (=> b!1492430 (= res!673346 (= (_1!8247 (get!4710 lt!518665)) (_1!8252 (get!4711 (maxPrefix!1201 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun b!1492431 () Bool)

(assert (=> b!1492431 (= e!954668 call!99018)))

(declare-fun b!1492432 () Bool)

(assert (=> b!1492432 (= e!954670 (= (list!6288 (_2!8247 (get!4710 lt!518665))) (_2!8252 (get!4711 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun b!1492433 () Bool)

(declare-fun lt!518661 () Option!2904)

(declare-fun lt!518663 () Option!2904)

(assert (=> b!1492433 (= e!954668 (ite (and ((_ is None!2903) lt!518661) ((_ is None!2903) lt!518663)) None!2903 (ite ((_ is None!2903) lt!518663) lt!518661 (ite ((_ is None!2903) lt!518661) lt!518663 (ite (>= (size!12837 (_1!8247 (v!22698 lt!518661))) (size!12837 (_1!8247 (v!22698 lt!518663)))) lt!518661 lt!518663)))))))

(assert (=> b!1492433 (= lt!518661 call!99018)))

(assert (=> b!1492433 (= lt!518663 (maxPrefixZipperSequence!575 thiss!13241 (t!138198 rules!1640) input!1102))))

(assert (= (and d!438463 c!244452) b!1492431))

(assert (= (and d!438463 (not c!244452)) b!1492433))

(assert (= (or b!1492431 b!1492433) bm!99013))

(assert (= (and d!438463 res!673344) b!1492428))

(assert (= (and b!1492428 (not res!673343)) b!1492429))

(assert (= (and b!1492429 res!673347) b!1492432))

(assert (= (and b!1492428 res!673342) b!1492427))

(assert (= (and b!1492427 (not res!673345)) b!1492430))

(assert (= (and b!1492430 res!673346) b!1492426))

(declare-fun m!1743393 () Bool)

(assert (=> bm!99013 m!1743393))

(declare-fun m!1743395 () Bool)

(assert (=> b!1492427 m!1743395))

(assert (=> b!1492428 m!1743395))

(declare-fun m!1743397 () Bool)

(assert (=> b!1492433 m!1743397))

(assert (=> b!1492426 m!1742883))

(assert (=> b!1492426 m!1742883))

(declare-fun m!1743399 () Bool)

(assert (=> b!1492426 m!1743399))

(declare-fun m!1743401 () Bool)

(assert (=> b!1492426 m!1743401))

(assert (=> b!1492426 m!1743399))

(declare-fun m!1743403 () Bool)

(assert (=> b!1492426 m!1743403))

(declare-fun m!1743405 () Bool)

(assert (=> b!1492426 m!1743405))

(assert (=> b!1492429 m!1743401))

(assert (=> b!1492429 m!1742883))

(assert (=> b!1492429 m!1742883))

(declare-fun m!1743407 () Bool)

(assert (=> b!1492429 m!1743407))

(assert (=> b!1492429 m!1743407))

(declare-fun m!1743409 () Bool)

(assert (=> b!1492429 m!1743409))

(assert (=> b!1492430 m!1743401))

(assert (=> b!1492430 m!1742883))

(assert (=> b!1492430 m!1742883))

(assert (=> b!1492430 m!1743399))

(assert (=> b!1492430 m!1743399))

(assert (=> b!1492430 m!1743403))

(assert (=> d!438463 m!1742883))

(assert (=> d!438463 m!1742883))

(assert (=> d!438463 m!1743407))

(assert (=> d!438463 m!1743407))

(declare-fun m!1743411 () Bool)

(assert (=> d!438463 m!1743411))

(assert (=> d!438463 m!1743395))

(assert (=> d!438463 m!1743313))

(declare-fun m!1743413 () Bool)

(assert (=> d!438463 m!1743413))

(declare-fun m!1743415 () Bool)

(assert (=> d!438463 m!1743415))

(assert (=> b!1492432 m!1742883))

(assert (=> b!1492432 m!1743407))

(assert (=> b!1492432 m!1743409))

(assert (=> b!1492432 m!1742883))

(assert (=> b!1492432 m!1743407))

(assert (=> b!1492432 m!1743401))

(assert (=> b!1492432 m!1743405))

(assert (=> b!1492198 d!438463))

(declare-fun d!438465 () Bool)

(declare-fun e!954672 () Bool)

(assert (=> d!438465 e!954672))

(declare-fun res!673349 () Bool)

(assert (=> d!438465 (=> (not res!673349) (not e!954672))))

(declare-fun lt!518666 () List!15938)

(assert (=> d!438465 (= res!673349 (= (content!2292 lt!518666) ((_ map or) (content!2292 lt!518560) (content!2292 lt!518563))))))

(declare-fun e!954671 () List!15938)

(assert (=> d!438465 (= lt!518666 e!954671)))

(declare-fun c!244453 () Bool)

(assert (=> d!438465 (= c!244453 ((_ is Nil!15870) lt!518560))))

(assert (=> d!438465 (= (++!4285 lt!518560 lt!518563) lt!518666)))

(declare-fun b!1492437 () Bool)

(assert (=> b!1492437 (= e!954672 (or (not (= lt!518563 Nil!15870)) (= lt!518666 lt!518560)))))

(declare-fun b!1492435 () Bool)

(assert (=> b!1492435 (= e!954671 (Cons!15870 (h!21271 lt!518560) (++!4285 (t!138197 lt!518560) lt!518563)))))

(declare-fun b!1492434 () Bool)

(assert (=> b!1492434 (= e!954671 lt!518563)))

(declare-fun b!1492436 () Bool)

(declare-fun res!673348 () Bool)

(assert (=> b!1492436 (=> (not res!673348) (not e!954672))))

(assert (=> b!1492436 (= res!673348 (= (size!12845 lt!518666) (+ (size!12845 lt!518560) (size!12845 lt!518563))))))

(assert (= (and d!438465 c!244453) b!1492434))

(assert (= (and d!438465 (not c!244453)) b!1492435))

(assert (= (and d!438465 res!673349) b!1492436))

(assert (= (and b!1492436 res!673348) b!1492437))

(declare-fun m!1743417 () Bool)

(assert (=> d!438465 m!1743417))

(assert (=> d!438465 m!1743225))

(assert (=> d!438465 m!1743243))

(declare-fun m!1743419 () Bool)

(assert (=> b!1492435 m!1743419))

(declare-fun m!1743421 () Bool)

(assert (=> b!1492436 m!1743421))

(assert (=> b!1492436 m!1743231))

(assert (=> b!1492436 m!1743251))

(assert (=> b!1492198 d!438465))

(declare-fun d!438467 () Bool)

(assert (=> d!438467 (= (list!6289 (append!477 acc!392 (_1!8247 (v!22698 (_1!8251 lt!518569))))) (list!6290 (c!244406 (append!477 acc!392 (_1!8247 (v!22698 (_1!8251 lt!518569)))))))))

(declare-fun bs!351046 () Bool)

(assert (= bs!351046 d!438467))

(declare-fun m!1743423 () Bool)

(assert (=> bs!351046 m!1743423))

(assert (=> b!1492198 d!438467))

(declare-fun d!438469 () Bool)

(declare-fun lt!518669 () BalanceConc!10724)

(assert (=> d!438469 (= (list!6288 lt!518669) (originalCharacters!3682 (_1!8247 (v!22698 (_1!8251 lt!518569)))))))

(declare-fun dynLambda!7179 (Int TokenValue!2910) BalanceConc!10724)

(assert (=> d!438469 (= lt!518669 (dynLambda!7179 (toChars!4022 (transformation!2820 (rule!4601 (_1!8247 (v!22698 (_1!8251 lt!518569)))))) (value!90030 (_1!8247 (v!22698 (_1!8251 lt!518569))))))))

(assert (=> d!438469 (= (charsOf!1616 (_1!8247 (v!22698 (_1!8251 lt!518569)))) lt!518669)))

(declare-fun b_lambda!46733 () Bool)

(assert (=> (not b_lambda!46733) (not d!438469)))

(declare-fun t!138204 () Bool)

(declare-fun tb!85229 () Bool)

(assert (=> (and b!1492191 (= (toChars!4022 (transformation!2820 (h!21272 rules!1640))) (toChars!4022 (transformation!2820 (rule!4601 (_1!8247 (v!22698 (_1!8251 lt!518569))))))) t!138204) tb!85229))

(declare-fun b!1492442 () Bool)

(declare-fun e!954675 () Bool)

(declare-fun tp!425025 () Bool)

(assert (=> b!1492442 (= e!954675 (and (inv!21082 (c!244404 (dynLambda!7179 (toChars!4022 (transformation!2820 (rule!4601 (_1!8247 (v!22698 (_1!8251 lt!518569)))))) (value!90030 (_1!8247 (v!22698 (_1!8251 lt!518569))))))) tp!425025))))

(declare-fun result!102510 () Bool)

(assert (=> tb!85229 (= result!102510 (and (inv!21087 (dynLambda!7179 (toChars!4022 (transformation!2820 (rule!4601 (_1!8247 (v!22698 (_1!8251 lt!518569)))))) (value!90030 (_1!8247 (v!22698 (_1!8251 lt!518569)))))) e!954675))))

(assert (= tb!85229 b!1492442))

(declare-fun m!1743425 () Bool)

(assert (=> b!1492442 m!1743425))

(declare-fun m!1743427 () Bool)

(assert (=> tb!85229 m!1743427))

(assert (=> d!438469 t!138204))

(declare-fun b_and!103817 () Bool)

(assert (= b_and!103803 (and (=> t!138204 result!102510) b_and!103817)))

(declare-fun m!1743429 () Bool)

(assert (=> d!438469 m!1743429))

(declare-fun m!1743431 () Bool)

(assert (=> d!438469 m!1743431))

(assert (=> b!1492198 d!438469))

(declare-fun d!438471 () Bool)

(declare-fun e!954676 () Bool)

(assert (=> d!438471 e!954676))

(declare-fun res!673350 () Bool)

(assert (=> d!438471 (=> (not res!673350) (not e!954676))))

(declare-fun lt!518670 () List!15937)

(assert (=> d!438471 (= res!673350 (= (content!2293 lt!518670) ((_ map or) (content!2293 lt!518550) (content!2293 lt!518575))))))

(declare-fun e!954677 () List!15937)

(assert (=> d!438471 (= lt!518670 e!954677)))

(declare-fun c!244454 () Bool)

(assert (=> d!438471 (= c!244454 ((_ is Nil!15869) lt!518550))))

(assert (=> d!438471 (= (++!4283 lt!518550 lt!518575) lt!518670)))

(declare-fun b!1492444 () Bool)

(assert (=> b!1492444 (= e!954677 (Cons!15869 (h!21270 lt!518550) (++!4283 (t!138196 lt!518550) lt!518575)))))

(declare-fun b!1492445 () Bool)

(declare-fun res!673351 () Bool)

(assert (=> b!1492445 (=> (not res!673351) (not e!954676))))

(assert (=> b!1492445 (= res!673351 (= (size!12842 lt!518670) (+ (size!12842 lt!518550) (size!12842 lt!518575))))))

(declare-fun b!1492443 () Bool)

(assert (=> b!1492443 (= e!954677 lt!518575)))

(declare-fun b!1492446 () Bool)

(assert (=> b!1492446 (= e!954676 (or (not (= lt!518575 Nil!15869)) (= lt!518670 lt!518550)))))

(assert (= (and d!438471 c!244454) b!1492443))

(assert (= (and d!438471 (not c!244454)) b!1492444))

(assert (= (and d!438471 res!673350) b!1492445))

(assert (= (and b!1492445 res!673351) b!1492446))

(declare-fun m!1743433 () Bool)

(assert (=> d!438471 m!1743433))

(assert (=> d!438471 m!1743321))

(assert (=> d!438471 m!1743265))

(declare-fun m!1743435 () Bool)

(assert (=> b!1492444 m!1743435))

(declare-fun m!1743437 () Bool)

(assert (=> b!1492445 m!1743437))

(assert (=> b!1492445 m!1743329))

(assert (=> b!1492445 m!1743273))

(assert (=> b!1492198 d!438471))

(declare-fun d!438473 () Bool)

(declare-fun e!954678 () Bool)

(assert (=> d!438473 e!954678))

(declare-fun res!673352 () Bool)

(assert (=> d!438473 (=> (not res!673352) (not e!954678))))

(declare-fun lt!518671 () List!15937)

(assert (=> d!438473 (= res!673352 (= (content!2293 lt!518671) ((_ map or) (content!2293 lt!518554) (content!2293 lt!518553))))))

(declare-fun e!954679 () List!15937)

(assert (=> d!438473 (= lt!518671 e!954679)))

(declare-fun c!244455 () Bool)

(assert (=> d!438473 (= c!244455 ((_ is Nil!15869) lt!518554))))

(assert (=> d!438473 (= (++!4283 lt!518554 lt!518553) lt!518671)))

(declare-fun b!1492448 () Bool)

(assert (=> b!1492448 (= e!954679 (Cons!15869 (h!21270 lt!518554) (++!4283 (t!138196 lt!518554) lt!518553)))))

(declare-fun b!1492449 () Bool)

(declare-fun res!673353 () Bool)

(assert (=> b!1492449 (=> (not res!673353) (not e!954678))))

(assert (=> b!1492449 (= res!673353 (= (size!12842 lt!518671) (+ (size!12842 lt!518554) (size!12842 lt!518553))))))

(declare-fun b!1492447 () Bool)

(assert (=> b!1492447 (= e!954679 lt!518553)))

(declare-fun b!1492450 () Bool)

(assert (=> b!1492450 (= e!954678 (or (not (= lt!518553 Nil!15869)) (= lt!518671 lt!518554)))))

(assert (= (and d!438473 c!244455) b!1492447))

(assert (= (and d!438473 (not c!244455)) b!1492448))

(assert (= (and d!438473 res!673352) b!1492449))

(assert (= (and b!1492449 res!673353) b!1492450))

(declare-fun m!1743439 () Bool)

(assert (=> d!438473 m!1743439))

(declare-fun m!1743441 () Bool)

(assert (=> d!438473 m!1743441))

(assert (=> d!438473 m!1743267))

(declare-fun m!1743443 () Bool)

(assert (=> b!1492448 m!1743443))

(declare-fun m!1743445 () Bool)

(assert (=> b!1492449 m!1743445))

(declare-fun m!1743447 () Bool)

(assert (=> b!1492449 m!1743447))

(assert (=> b!1492449 m!1743235))

(assert (=> b!1492198 d!438473))

(declare-fun b!1492461 () Bool)

(declare-fun e!954686 () Bool)

(declare-fun lt!518680 () tuple2!14610)

(assert (=> b!1492461 (= e!954686 (= (_2!8248 lt!518680) lt!518554))))

(declare-fun b!1492462 () Bool)

(declare-fun e!954687 () tuple2!14610)

(declare-fun lt!518678 () Option!2905)

(declare-fun lt!518679 () tuple2!14610)

(assert (=> b!1492462 (= e!954687 (tuple2!14611 (Cons!15870 (_1!8252 (v!22703 lt!518678)) (_1!8248 lt!518679)) (_2!8248 lt!518679)))))

(assert (=> b!1492462 (= lt!518679 (lexList!733 thiss!13241 rules!1640 (_2!8252 (v!22703 lt!518678))))))

(declare-fun d!438475 () Bool)

(assert (=> d!438475 e!954686))

(declare-fun c!244461 () Bool)

(assert (=> d!438475 (= c!244461 (> (size!12845 (_1!8248 lt!518680)) 0))))

(assert (=> d!438475 (= lt!518680 e!954687)))

(declare-fun c!244460 () Bool)

(assert (=> d!438475 (= c!244460 ((_ is Some!2904) lt!518678))))

(assert (=> d!438475 (= lt!518678 (maxPrefix!1201 thiss!13241 rules!1640 lt!518554))))

(assert (=> d!438475 (= (lexList!733 thiss!13241 rules!1640 lt!518554) lt!518680)))

(declare-fun b!1492463 () Bool)

(assert (=> b!1492463 (= e!954687 (tuple2!14611 Nil!15870 lt!518554))))

(declare-fun b!1492464 () Bool)

(declare-fun e!954688 () Bool)

(assert (=> b!1492464 (= e!954686 e!954688)))

(declare-fun res!673356 () Bool)

(assert (=> b!1492464 (= res!673356 (< (size!12842 (_2!8248 lt!518680)) (size!12842 lt!518554)))))

(assert (=> b!1492464 (=> (not res!673356) (not e!954688))))

(declare-fun b!1492465 () Bool)

(declare-fun isEmpty!9869 (List!15938) Bool)

(assert (=> b!1492465 (= e!954688 (not (isEmpty!9869 (_1!8248 lt!518680))))))

(assert (= (and d!438475 c!244460) b!1492462))

(assert (= (and d!438475 (not c!244460)) b!1492463))

(assert (= (and d!438475 c!244461) b!1492464))

(assert (= (and d!438475 (not c!244461)) b!1492461))

(assert (= (and b!1492464 res!673356) b!1492465))

(declare-fun m!1743449 () Bool)

(assert (=> b!1492462 m!1743449))

(declare-fun m!1743451 () Bool)

(assert (=> d!438475 m!1743451))

(declare-fun m!1743453 () Bool)

(assert (=> d!438475 m!1743453))

(declare-fun m!1743455 () Bool)

(assert (=> b!1492464 m!1743455))

(assert (=> b!1492464 m!1743447))

(declare-fun m!1743457 () Bool)

(assert (=> b!1492465 m!1743457))

(assert (=> b!1492198 d!438475))

(declare-fun d!438477 () Bool)

(assert (=> d!438477 (= (list!6288 lt!518548) (list!6291 (c!244404 lt!518548)))))

(declare-fun bs!351047 () Bool)

(assert (= bs!351047 d!438477))

(declare-fun m!1743459 () Bool)

(assert (=> bs!351047 m!1743459))

(assert (=> b!1492198 d!438477))

(declare-fun d!438479 () Bool)

(assert (=> d!438479 (= (lexList!733 thiss!13241 rules!1640 lt!518554) (tuple2!14611 lt!518546 Nil!15869))))

(declare-fun lt!518683 () Unit!25659)

(declare-fun choose!9103 (LexerInterface!2475 List!15939 List!15937 List!15937 List!15938 List!15938 List!15937) Unit!25659)

(assert (=> d!438479 (= lt!518683 (choose!9103 thiss!13241 rules!1640 lt!518554 lt!518553 lt!518546 lt!518563 (list!6288 (_2!8242 lt!518572))))))

(assert (=> d!438479 (not (isEmpty!9867 rules!1640))))

(assert (=> d!438479 (= (lemmaLexThenLexPrefix!215 thiss!13241 rules!1640 lt!518554 lt!518553 lt!518546 lt!518563 (list!6288 (_2!8242 lt!518572))) lt!518683)))

(declare-fun bs!351048 () Bool)

(assert (= bs!351048 d!438479))

(assert (=> bs!351048 m!1742967))

(assert (=> bs!351048 m!1742947))

(declare-fun m!1743461 () Bool)

(assert (=> bs!351048 m!1743461))

(assert (=> bs!351048 m!1743011))

(assert (=> b!1492198 d!438479))

(declare-fun d!438481 () Bool)

(assert (=> d!438481 (= (isEmpty!9866 (list!6288 (_2!8242 lt!518558))) ((_ is Nil!15869) (list!6288 (_2!8242 lt!518558))))))

(assert (=> b!1492217 d!438481))

(declare-fun d!438483 () Bool)

(assert (=> d!438483 (= (list!6288 (_2!8242 lt!518558)) (list!6291 (c!244404 (_2!8242 lt!518558))))))

(declare-fun bs!351049 () Bool)

(assert (= bs!351049 d!438483))

(declare-fun m!1743463 () Bool)

(assert (=> bs!351049 m!1743463))

(assert (=> b!1492217 d!438483))

(declare-fun d!438485 () Bool)

(assert (=> d!438485 (= (inv!21080 (tag!3084 (h!21272 rules!1640))) (= (mod (str.len (value!90029 (tag!3084 (h!21272 rules!1640)))) 2) 0))))

(assert (=> b!1492197 d!438485))

(declare-fun d!438487 () Bool)

(declare-fun res!673359 () Bool)

(declare-fun e!954691 () Bool)

(assert (=> d!438487 (=> (not res!673359) (not e!954691))))

(declare-fun semiInverseModEq!1063 (Int Int) Bool)

(assert (=> d!438487 (= res!673359 (semiInverseModEq!1063 (toChars!4022 (transformation!2820 (h!21272 rules!1640))) (toValue!4163 (transformation!2820 (h!21272 rules!1640)))))))

(assert (=> d!438487 (= (inv!21083 (transformation!2820 (h!21272 rules!1640))) e!954691)))

(declare-fun b!1492468 () Bool)

(declare-fun equivClasses!1022 (Int Int) Bool)

(assert (=> b!1492468 (= e!954691 (equivClasses!1022 (toChars!4022 (transformation!2820 (h!21272 rules!1640))) (toValue!4163 (transformation!2820 (h!21272 rules!1640)))))))

(assert (= (and d!438487 res!673359) b!1492468))

(declare-fun m!1743465 () Bool)

(assert (=> d!438487 m!1743465))

(declare-fun m!1743467 () Bool)

(assert (=> b!1492468 m!1743467))

(assert (=> b!1492197 d!438487))

(declare-fun b!1492493 () Bool)

(declare-fun res!673388 () Bool)

(declare-fun e!954709 () Bool)

(assert (=> b!1492493 (=> (not res!673388) (not e!954709))))

(declare-fun lt!518705 () tuple4!612)

(assert (=> b!1492493 (= res!673388 (valid!1111 (_4!306 lt!518705)))))

(declare-fun b!1492494 () Bool)

(declare-fun res!673389 () Bool)

(assert (=> b!1492494 (=> (not res!673389) (not e!954709))))

(assert (=> b!1492494 (= res!673389 (valid!1112 (_3!943 lt!518705)))))

(declare-fun b!1492495 () Bool)

(declare-fun res!673381 () Bool)

(assert (=> b!1492495 (=> (not res!673381) (not e!954709))))

(declare-fun e!954706 () Bool)

(assert (=> b!1492495 (= res!673381 e!954706)))

(declare-fun res!673383 () Bool)

(assert (=> b!1492495 (=> res!673383 e!954706)))

(assert (=> b!1492495 (= res!673383 (not (isDefined!2339 (_1!8251 lt!518705))))))

(declare-fun b!1492496 () Bool)

(declare-datatypes ((tuple4!614 0))(
  ( (tuple4!615 (_1!8253 Option!2904) (_2!8253 CacheUp!802) (_3!944 CacheFurthestNullable!228) (_4!307 CacheDown!806)) )
))
(declare-fun e!954704 () tuple4!614)

(declare-fun lt!518708 () tuple4!612)

(declare-fun lt!518704 () tuple4!612)

(assert (=> b!1492496 (= e!954704 (tuple4!615 (ite (and ((_ is None!2903) (_1!8251 lt!518708)) ((_ is None!2903) (_1!8251 lt!518704))) None!2903 (ite ((_ is None!2903) (_1!8251 lt!518704)) (_1!8251 lt!518708) (ite ((_ is None!2903) (_1!8251 lt!518708)) (_1!8251 lt!518704) (ite (>= (size!12837 (_1!8247 (v!22698 (_1!8251 lt!518708)))) (size!12837 (_1!8247 (v!22698 (_1!8251 lt!518704))))) (_1!8251 lt!518708) (_1!8251 lt!518704))))) (_2!8251 lt!518704) (_4!306 lt!518704) (_3!943 lt!518704)))))

(declare-fun call!99021 () tuple4!612)

(assert (=> b!1492496 (= lt!518708 call!99021)))

(assert (=> b!1492496 (= lt!518704 (maxPrefixZipperSequenceV3Mem!12 thiss!13241 (t!138198 rules!1640) input!1102 totalInput!458 (_2!8251 lt!518708) (_3!943 lt!518708) (_4!306 lt!518708)))))

(declare-fun b!1492497 () Bool)

(declare-fun e!954707 () Bool)

(assert (=> b!1492497 (= e!954706 e!954707)))

(declare-fun res!673382 () Bool)

(assert (=> b!1492497 (=> (not res!673382) (not e!954707))))

(assert (=> b!1492497 (= res!673382 (= (_1!8247 (get!4710 (_1!8251 lt!518705))) (_1!8252 (get!4711 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun d!438489 () Bool)

(assert (=> d!438489 e!954709))

(declare-fun res!673386 () Bool)

(assert (=> d!438489 (=> (not res!673386) (not e!954709))))

(assert (=> d!438489 (= res!673386 (= (isDefined!2339 (_1!8251 lt!518705)) (isDefined!2340 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 input!1102)))))))

(declare-fun lt!518703 () tuple4!614)

(assert (=> d!438489 (= lt!518705 (tuple4!613 (_1!8253 lt!518703) (_2!8253 lt!518703) (_4!307 lt!518703) (_3!944 lt!518703)))))

(assert (=> d!438489 (= lt!518703 e!954704)))

(declare-fun c!244464 () Bool)

(assert (=> d!438489 (= c!244464 (and ((_ is Cons!15871) rules!1640) ((_ is Nil!15871) (t!138198 rules!1640))))))

(declare-fun lt!518702 () Unit!25659)

(declare-fun lt!518709 () Unit!25659)

(assert (=> d!438489 (= lt!518702 lt!518709)))

(declare-fun lt!518707 () List!15937)

(declare-fun lt!518706 () List!15937)

(assert (=> d!438489 (isPrefix!1211 lt!518707 lt!518706)))

(assert (=> d!438489 (= lt!518709 (lemmaIsPrefixRefl!841 lt!518707 lt!518706))))

(assert (=> d!438489 (= lt!518706 (list!6288 input!1102))))

(assert (=> d!438489 (= lt!518707 (list!6288 input!1102))))

(assert (=> d!438489 (rulesValidInductive!849 thiss!13241 rules!1640)))

(assert (=> d!438489 (= (maxPrefixZipperSequenceV3Mem!12 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!518705)))

(declare-fun b!1492498 () Bool)

(declare-fun res!673385 () Bool)

(assert (=> b!1492498 (=> (not res!673385) (not e!954709))))

(declare-fun e!954705 () Bool)

(assert (=> b!1492498 (= res!673385 e!954705)))

(declare-fun res!673380 () Bool)

(assert (=> b!1492498 (=> res!673380 e!954705)))

(assert (=> b!1492498 (= res!673380 (not (isDefined!2339 (_1!8251 lt!518705))))))

(declare-fun b!1492499 () Bool)

(declare-fun res!673384 () Bool)

(assert (=> b!1492499 (=> (not res!673384) (not e!954709))))

(assert (=> b!1492499 (= res!673384 (valid!1113 (_2!8251 lt!518705)))))

(declare-fun bm!99016 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!4 (LexerInterface!2475 Rule!5440 BalanceConc!10724 BalanceConc!10724 CacheUp!802 CacheDown!806 CacheFurthestNullable!228) tuple4!612)

(assert (=> bm!99016 (= call!99021 (maxPrefixOneRuleZipperSequenceV3Mem!4 thiss!13241 (h!21272 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1492500 () Bool)

(assert (=> b!1492500 (= e!954709 (= (totalInput!2255 (_4!306 lt!518705)) totalInput!458))))

(declare-fun b!1492501 () Bool)

(assert (=> b!1492501 (= e!954707 (= (list!6288 (_2!8247 (get!4710 (_1!8251 lt!518705)))) (_2!8252 (get!4711 (maxPrefixZipper!252 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun b!1492502 () Bool)

(declare-fun e!954708 () Bool)

(assert (=> b!1492502 (= e!954705 e!954708)))

(declare-fun res!673387 () Bool)

(assert (=> b!1492502 (=> (not res!673387) (not e!954708))))

(assert (=> b!1492502 (= res!673387 (= (_1!8247 (get!4710 (_1!8251 lt!518705))) (_1!8252 (get!4711 (maxPrefix!1201 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun b!1492503 () Bool)

(assert (=> b!1492503 (= e!954708 (= (list!6288 (_2!8247 (get!4710 (_1!8251 lt!518705)))) (_2!8252 (get!4711 (maxPrefix!1201 thiss!13241 rules!1640 (list!6288 input!1102))))))))

(declare-fun b!1492504 () Bool)

(declare-fun lt!518710 () tuple4!612)

(assert (=> b!1492504 (= e!954704 (tuple4!615 (_1!8251 lt!518710) (_2!8251 lt!518710) (_4!306 lt!518710) (_3!943 lt!518710)))))

(assert (=> b!1492504 (= lt!518710 call!99021)))

(assert (= (and d!438489 c!244464) b!1492504))

(assert (= (and d!438489 (not c!244464)) b!1492496))

(assert (= (or b!1492504 b!1492496) bm!99016))

(assert (= (and d!438489 res!673386) b!1492495))

(assert (= (and b!1492495 (not res!673383)) b!1492497))

(assert (= (and b!1492497 res!673382) b!1492501))

(assert (= (and b!1492495 res!673381) b!1492498))

(assert (= (and b!1492498 (not res!673380)) b!1492502))

(assert (= (and b!1492502 res!673387) b!1492503))

(assert (= (and b!1492498 res!673385) b!1492499))

(assert (= (and b!1492499 res!673384) b!1492494))

(assert (= (and b!1492494 res!673389) b!1492493))

(assert (= (and b!1492493 res!673388) b!1492500))

(declare-fun m!1743469 () Bool)

(assert (=> b!1492494 m!1743469))

(declare-fun m!1743471 () Bool)

(assert (=> b!1492502 m!1743471))

(assert (=> b!1492502 m!1742883))

(assert (=> b!1492502 m!1742883))

(assert (=> b!1492502 m!1743399))

(assert (=> b!1492502 m!1743399))

(assert (=> b!1492502 m!1743403))

(declare-fun m!1743473 () Bool)

(assert (=> b!1492496 m!1743473))

(declare-fun m!1743475 () Bool)

(assert (=> b!1492499 m!1743475))

(declare-fun m!1743477 () Bool)

(assert (=> b!1492495 m!1743477))

(declare-fun m!1743479 () Bool)

(assert (=> b!1492493 m!1743479))

(assert (=> b!1492497 m!1743471))

(assert (=> b!1492497 m!1742883))

(assert (=> b!1492497 m!1742883))

(assert (=> b!1492497 m!1743407))

(assert (=> b!1492497 m!1743407))

(assert (=> b!1492497 m!1743409))

(assert (=> d!438489 m!1743477))

(assert (=> d!438489 m!1743407))

(assert (=> d!438489 m!1743411))

(assert (=> d!438489 m!1742883))

(assert (=> d!438489 m!1743407))

(assert (=> d!438489 m!1743313))

(declare-fun m!1743481 () Bool)

(assert (=> d!438489 m!1743481))

(declare-fun m!1743483 () Bool)

(assert (=> d!438489 m!1743483))

(assert (=> d!438489 m!1742883))

(assert (=> b!1492503 m!1742883))

(assert (=> b!1492503 m!1743399))

(assert (=> b!1492503 m!1742883))

(declare-fun m!1743485 () Bool)

(assert (=> b!1492503 m!1743485))

(assert (=> b!1492503 m!1743471))

(assert (=> b!1492503 m!1743399))

(assert (=> b!1492503 m!1743403))

(declare-fun m!1743487 () Bool)

(assert (=> bm!99016 m!1743487))

(assert (=> b!1492498 m!1743477))

(assert (=> b!1492501 m!1742883))

(assert (=> b!1492501 m!1742883))

(assert (=> b!1492501 m!1743407))

(assert (=> b!1492501 m!1743407))

(assert (=> b!1492501 m!1743409))

(assert (=> b!1492501 m!1743485))

(assert (=> b!1492501 m!1743471))

(assert (=> b!1492234 d!438489))

(declare-fun d!438491 () Bool)

(declare-fun c!244465 () Bool)

(assert (=> d!438491 (= c!244465 ((_ is Node!5391) (c!244404 totalInput!458)))))

(declare-fun e!954710 () Bool)

(assert (=> d!438491 (= (inv!21082 (c!244404 totalInput!458)) e!954710)))

(declare-fun b!1492505 () Bool)

(assert (=> b!1492505 (= e!954710 (inv!21089 (c!244404 totalInput!458)))))

(declare-fun b!1492506 () Bool)

(declare-fun e!954711 () Bool)

(assert (=> b!1492506 (= e!954710 e!954711)))

(declare-fun res!673390 () Bool)

(assert (=> b!1492506 (= res!673390 (not ((_ is Leaf!8004) (c!244404 totalInput!458))))))

(assert (=> b!1492506 (=> res!673390 e!954711)))

(declare-fun b!1492507 () Bool)

(assert (=> b!1492507 (= e!954711 (inv!21090 (c!244404 totalInput!458)))))

(assert (= (and d!438491 c!244465) b!1492505))

(assert (= (and d!438491 (not c!244465)) b!1492506))

(assert (= (and b!1492506 (not res!673390)) b!1492507))

(declare-fun m!1743489 () Bool)

(assert (=> b!1492505 m!1743489))

(declare-fun m!1743491 () Bool)

(assert (=> b!1492507 m!1743491))

(assert (=> b!1492215 d!438491))

(declare-fun d!438493 () Bool)

(assert (=> d!438493 (= (valid!1111 (_4!306 lt!518569)) (validCacheMapFurthestNullable!40 (cache!1735 (_4!306 lt!518569)) (totalInput!2255 (_4!306 lt!518569))))))

(declare-fun bs!351050 () Bool)

(assert (= bs!351050 d!438493))

(declare-fun m!1743493 () Bool)

(assert (=> bs!351050 m!1743493))

(assert (=> b!1492214 d!438493))

(declare-fun d!438495 () Bool)

(declare-fun e!954712 () Bool)

(assert (=> d!438495 e!954712))

(declare-fun res!673391 () Bool)

(assert (=> d!438495 (=> (not res!673391) (not e!954712))))

(assert (=> d!438495 (= res!673391 (isBalanced!1594 (prepend!444 (c!244406 (_1!8242 lt!518570)) (_1!8247 (v!22698 lt!518564)))))))

(declare-fun lt!518711 () BalanceConc!10726)

(assert (=> d!438495 (= lt!518711 (BalanceConc!10727 (prepend!444 (c!244406 (_1!8242 lt!518570)) (_1!8247 (v!22698 lt!518564)))))))

(assert (=> d!438495 (= (prepend!443 (_1!8242 lt!518570) (_1!8247 (v!22698 lt!518564))) lt!518711)))

(declare-fun b!1492508 () Bool)

(assert (=> b!1492508 (= e!954712 (= (list!6289 lt!518711) (Cons!15870 (_1!8247 (v!22698 lt!518564)) (list!6289 (_1!8242 lt!518570)))))))

(assert (= (and d!438495 res!673391) b!1492508))

(declare-fun m!1743495 () Bool)

(assert (=> d!438495 m!1743495))

(assert (=> d!438495 m!1743495))

(declare-fun m!1743497 () Bool)

(assert (=> d!438495 m!1743497))

(declare-fun m!1743499 () Bool)

(assert (=> b!1492508 m!1743499))

(declare-fun m!1743501 () Bool)

(assert (=> b!1492508 m!1743501))

(assert (=> b!1492194 d!438495))

(declare-fun d!438497 () Bool)

(declare-fun e!954716 () Bool)

(assert (=> d!438497 e!954716))

(declare-fun res!673392 () Bool)

(assert (=> d!438497 (=> (not res!673392) (not e!954716))))

(declare-fun e!954715 () Bool)

(assert (=> d!438497 (= res!673392 e!954715)))

(declare-fun c!244466 () Bool)

(declare-fun lt!518714 () tuple2!14602)

(assert (=> d!438497 (= c!244466 (> (size!12843 (_1!8242 lt!518714)) 0))))

(declare-fun e!954714 () tuple2!14602)

(assert (=> d!438497 (= lt!518714 e!954714)))

(declare-fun c!244467 () Bool)

(declare-fun lt!518712 () Option!2904)

(assert (=> d!438497 (= c!244467 ((_ is Some!2903) lt!518712))))

(assert (=> d!438497 (= lt!518712 (maxPrefixZipperSequence!575 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518564))))))

(assert (=> d!438497 (= (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518564))) lt!518714)))

(declare-fun b!1492509 () Bool)

(declare-fun res!673393 () Bool)

(assert (=> b!1492509 (=> (not res!673393) (not e!954716))))

(assert (=> b!1492509 (= res!673393 (= (list!6289 (_1!8242 lt!518714)) (_1!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 (_2!8247 (v!22698 lt!518564)))))))))

(declare-fun b!1492510 () Bool)

(assert (=> b!1492510 (= e!954715 (= (list!6288 (_2!8242 lt!518714)) (list!6288 (_2!8247 (v!22698 lt!518564)))))))

(declare-fun b!1492511 () Bool)

(assert (=> b!1492511 (= e!954714 (tuple2!14603 (BalanceConc!10727 Empty!5392) (_2!8247 (v!22698 lt!518564))))))

(declare-fun b!1492512 () Bool)

(declare-fun e!954713 () Bool)

(assert (=> b!1492512 (= e!954715 e!954713)))

(declare-fun res!673394 () Bool)

(assert (=> b!1492512 (= res!673394 (< (size!12844 (_2!8242 lt!518714)) (size!12844 (_2!8247 (v!22698 lt!518564)))))))

(assert (=> b!1492512 (=> (not res!673394) (not e!954713))))

(declare-fun b!1492513 () Bool)

(assert (=> b!1492513 (= e!954716 (= (list!6288 (_2!8242 lt!518714)) (_2!8248 (lexList!733 thiss!13241 rules!1640 (list!6288 (_2!8247 (v!22698 lt!518564)))))))))

(declare-fun b!1492514 () Bool)

(declare-fun lt!518713 () tuple2!14602)

(assert (=> b!1492514 (= e!954714 (tuple2!14603 (prepend!443 (_1!8242 lt!518713) (_1!8247 (v!22698 lt!518712))) (_2!8242 lt!518713)))))

(assert (=> b!1492514 (= lt!518713 (lexRec!312 thiss!13241 rules!1640 (_2!8247 (v!22698 lt!518712))))))

(declare-fun b!1492515 () Bool)

(assert (=> b!1492515 (= e!954713 (not (isEmpty!9868 (_1!8242 lt!518714))))))

(assert (= (and d!438497 c!244467) b!1492514))

(assert (= (and d!438497 (not c!244467)) b!1492511))

(assert (= (and d!438497 c!244466) b!1492512))

(assert (= (and d!438497 (not c!244466)) b!1492510))

(assert (= (and b!1492512 res!673394) b!1492515))

(assert (= (and d!438497 res!673392) b!1492509))

(assert (= (and b!1492509 res!673393) b!1492513))

(declare-fun m!1743503 () Bool)

(assert (=> b!1492513 m!1743503))

(declare-fun m!1743505 () Bool)

(assert (=> b!1492513 m!1743505))

(assert (=> b!1492513 m!1743505))

(declare-fun m!1743507 () Bool)

(assert (=> b!1492513 m!1743507))

(declare-fun m!1743509 () Bool)

(assert (=> b!1492514 m!1743509))

(declare-fun m!1743511 () Bool)

(assert (=> b!1492514 m!1743511))

(declare-fun m!1743513 () Bool)

(assert (=> b!1492515 m!1743513))

(declare-fun m!1743515 () Bool)

(assert (=> b!1492512 m!1743515))

(declare-fun m!1743517 () Bool)

(assert (=> b!1492512 m!1743517))

(declare-fun m!1743519 () Bool)

(assert (=> b!1492509 m!1743519))

(assert (=> b!1492509 m!1743505))

(assert (=> b!1492509 m!1743505))

(assert (=> b!1492509 m!1743507))

(assert (=> b!1492510 m!1743503))

(assert (=> b!1492510 m!1743505))

(declare-fun m!1743521 () Bool)

(assert (=> d!438497 m!1743521))

(declare-fun m!1743523 () Bool)

(assert (=> d!438497 m!1743523))

(assert (=> b!1492194 d!438497))

(declare-fun d!438499 () Bool)

(assert (=> d!438499 (= (array_inv!1611 (_keys!1705 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) (bvsge (size!12839 (_keys!1705 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1492223 d!438499))

(declare-fun d!438501 () Bool)

(assert (=> d!438501 (= (array_inv!1613 (_values!1690 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) (bvsge (size!12840 (_values!1690 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1492223 d!438501))

(declare-fun d!438503 () Bool)

(assert (=> d!438503 (= (inv!21087 (totalInput!2255 cacheFurthestNullable!64)) (isBalanced!1593 (c!244404 (totalInput!2255 cacheFurthestNullable!64))))))

(declare-fun bs!351051 () Bool)

(assert (= bs!351051 d!438503))

(declare-fun m!1743525 () Bool)

(assert (=> bs!351051 m!1743525))

(assert (=> b!1492221 d!438503))

(declare-fun d!438505 () Bool)

(assert (=> d!438505 (= (isEmpty!9866 (list!6288 (_2!8242 lt!518573))) ((_ is Nil!15869) (list!6288 (_2!8242 lt!518573))))))

(assert (=> b!1492200 d!438505))

(declare-fun d!438507 () Bool)

(assert (=> d!438507 (= (list!6288 (_2!8242 lt!518573)) (list!6291 (c!244404 (_2!8242 lt!518573))))))

(declare-fun bs!351052 () Bool)

(assert (= bs!351052 d!438507))

(declare-fun m!1743527 () Bool)

(assert (=> bs!351052 m!1743527))

(assert (=> b!1492200 d!438507))

(declare-fun d!438509 () Bool)

(assert (=> d!438509 (= (valid!1112 cacheDown!629) (validCacheMapDown!127 (cache!1736 cacheDown!629)))))

(declare-fun bs!351053 () Bool)

(assert (= bs!351053 d!438509))

(assert (=> bs!351053 m!1743071))

(assert (=> b!1492219 d!438509))

(declare-fun d!438511 () Bool)

(assert (=> d!438511 (= (valid!1113 (_2!8251 lt!518569)) (validCacheMapUp!127 (cache!1737 (_2!8251 lt!518569))))))

(declare-fun bs!351054 () Bool)

(assert (= bs!351054 d!438511))

(declare-fun m!1743529 () Bool)

(assert (=> bs!351054 m!1743529))

(assert (=> b!1492229 d!438511))

(declare-fun d!438513 () Bool)

(declare-fun res!673397 () Bool)

(declare-fun e!954719 () Bool)

(assert (=> d!438513 (=> (not res!673397) (not e!954719))))

(declare-fun rulesValid!1034 (LexerInterface!2475 List!15939) Bool)

(assert (=> d!438513 (= res!673397 (rulesValid!1034 thiss!13241 rules!1640))))

(assert (=> d!438513 (= (rulesInvariant!2256 thiss!13241 rules!1640) e!954719)))

(declare-fun b!1492518 () Bool)

(declare-datatypes ((List!15944 0))(
  ( (Nil!15876) (Cons!15876 (h!21277 String!18812) (t!138207 List!15944)) )
))
(declare-fun noDuplicateTag!1034 (LexerInterface!2475 List!15939 List!15944) Bool)

(assert (=> b!1492518 (= e!954719 (noDuplicateTag!1034 thiss!13241 rules!1640 Nil!15876))))

(assert (= (and d!438513 res!673397) b!1492518))

(declare-fun m!1743531 () Bool)

(assert (=> d!438513 m!1743531))

(declare-fun m!1743533 () Bool)

(assert (=> b!1492518 m!1743533))

(assert (=> b!1492187 d!438513))

(declare-fun d!438515 () Bool)

(declare-fun e!954720 () Bool)

(assert (=> d!438515 e!954720))

(declare-fun res!673398 () Bool)

(assert (=> d!438515 (=> (not res!673398) (not e!954720))))

(declare-fun lt!518715 () List!15937)

(assert (=> d!438515 (= res!673398 (= (content!2293 lt!518715) ((_ map or) (content!2293 lt!518550) (content!2293 lt!518556))))))

(declare-fun e!954721 () List!15937)

(assert (=> d!438515 (= lt!518715 e!954721)))

(declare-fun c!244468 () Bool)

(assert (=> d!438515 (= c!244468 ((_ is Nil!15869) lt!518550))))

(assert (=> d!438515 (= (++!4283 lt!518550 lt!518556) lt!518715)))

(declare-fun b!1492520 () Bool)

(assert (=> b!1492520 (= e!954721 (Cons!15869 (h!21270 lt!518550) (++!4283 (t!138196 lt!518550) lt!518556)))))

(declare-fun b!1492521 () Bool)

(declare-fun res!673399 () Bool)

(assert (=> b!1492521 (=> (not res!673399) (not e!954720))))

(assert (=> b!1492521 (= res!673399 (= (size!12842 lt!518715) (+ (size!12842 lt!518550) (size!12842 lt!518556))))))

(declare-fun b!1492519 () Bool)

(assert (=> b!1492519 (= e!954721 lt!518556)))

(declare-fun b!1492522 () Bool)

(assert (=> b!1492522 (= e!954720 (or (not (= lt!518556 Nil!15869)) (= lt!518715 lt!518550)))))

(assert (= (and d!438515 c!244468) b!1492519))

(assert (= (and d!438515 (not c!244468)) b!1492520))

(assert (= (and d!438515 res!673398) b!1492521))

(assert (= (and b!1492521 res!673399) b!1492522))

(declare-fun m!1743535 () Bool)

(assert (=> d!438515 m!1743535))

(assert (=> d!438515 m!1743321))

(declare-fun m!1743537 () Bool)

(assert (=> d!438515 m!1743537))

(declare-fun m!1743539 () Bool)

(assert (=> b!1492520 m!1743539))

(declare-fun m!1743541 () Bool)

(assert (=> b!1492521 m!1743541))

(assert (=> b!1492521 m!1743329))

(assert (=> b!1492521 m!1743045))

(assert (=> b!1492206 d!438515))

(declare-fun d!438517 () Bool)

(assert (=> d!438517 (= (list!6288 totalInput!458) (list!6291 (c!244404 totalInput!458)))))

(declare-fun bs!351055 () Bool)

(assert (= bs!351055 d!438517))

(declare-fun m!1743543 () Bool)

(assert (=> bs!351055 m!1743543))

(assert (=> b!1492206 d!438517))

(declare-fun d!438519 () Bool)

(assert (=> d!438519 (= (list!6288 input!1102) (list!6291 (c!244404 input!1102)))))

(declare-fun bs!351056 () Bool)

(assert (= bs!351056 d!438519))

(declare-fun m!1743545 () Bool)

(assert (=> bs!351056 m!1743545))

(assert (=> b!1492206 d!438519))

(declare-fun d!438521 () Bool)

(assert (=> d!438521 (= (list!6288 treated!70) (list!6291 (c!244404 treated!70)))))

(declare-fun bs!351057 () Bool)

(assert (= bs!351057 d!438521))

(declare-fun m!1743547 () Bool)

(assert (=> bs!351057 m!1743547))

(assert (=> b!1492206 d!438521))

(declare-fun d!438523 () Bool)

(assert (=> d!438523 (= (list!6289 (_1!8242 lt!518558)) (list!6290 (c!244406 (_1!8242 lt!518558))))))

(declare-fun bs!351058 () Bool)

(assert (= bs!351058 d!438523))

(declare-fun m!1743549 () Bool)

(assert (=> bs!351058 m!1743549))

(assert (=> b!1492186 d!438523))

(declare-fun d!438525 () Bool)

(assert (=> d!438525 (= (isEmpty!9867 rules!1640) ((_ is Nil!15871) rules!1640))))

(assert (=> b!1492204 d!438525))

(declare-fun d!438527 () Bool)

(assert (=> d!438527 (= (valid!1113 cacheUp!616) (validCacheMapUp!127 (cache!1737 cacheUp!616)))))

(declare-fun bs!351059 () Bool)

(assert (= bs!351059 d!438527))

(assert (=> bs!351059 m!1743077))

(assert (=> b!1492225 d!438527))

(declare-fun d!438529 () Bool)

(assert (=> d!438529 (= (list!6288 (_2!8242 lt!518574)) (list!6291 (c!244404 (_2!8242 lt!518574))))))

(declare-fun bs!351060 () Bool)

(assert (= bs!351060 d!438529))

(declare-fun m!1743551 () Bool)

(assert (=> bs!351060 m!1743551))

(assert (=> b!1492185 d!438529))

(declare-fun d!438531 () Bool)

(assert (=> d!438531 (= (list!6288 (_2!8242 lt!518562)) (list!6291 (c!244404 (_2!8242 lt!518562))))))

(declare-fun bs!351061 () Bool)

(assert (= bs!351061 d!438531))

(declare-fun m!1743553 () Bool)

(assert (=> bs!351061 m!1743553))

(assert (=> b!1492185 d!438531))

(declare-fun d!438533 () Bool)

(assert (=> d!438533 (= (valid!1112 (_3!943 lt!518569)) (validCacheMapDown!127 (cache!1736 (_3!943 lt!518569))))))

(declare-fun bs!351062 () Bool)

(assert (= bs!351062 d!438533))

(declare-fun m!1743555 () Bool)

(assert (=> bs!351062 m!1743555))

(assert (=> b!1492224 d!438533))

(declare-fun condMapEmpty!6701 () Bool)

(declare-fun mapDefault!6701 () List!15941)

(assert (=> mapNonEmpty!6697 (= condMapEmpty!6701 (= mapRest!6697 ((as const (Array (_ BitVec 32) List!15941)) mapDefault!6701)))))

(declare-fun e!954732 () Bool)

(declare-fun mapRes!6701 () Bool)

(assert (=> mapNonEmpty!6697 (= tp!425017 (and e!954732 mapRes!6701))))

(declare-fun b!1492533 () Bool)

(declare-fun e!954731 () Bool)

(declare-fun setRes!8475 () Bool)

(declare-fun tp!425040 () Bool)

(assert (=> b!1492533 (= e!954731 (and setRes!8475 tp!425040))))

(declare-fun condSetEmpty!8474 () Bool)

(declare-fun mapValue!6701 () List!15941)

(assert (=> b!1492533 (= condSetEmpty!8474 (= (_1!8243 (_1!8244 (h!21274 mapValue!6701))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setNonEmpty!8474 () Bool)

(declare-fun tp!425045 () Bool)

(declare-fun setElem!8475 () Context!1306)

(declare-fun e!954733 () Bool)

(declare-fun setRes!8474 () Bool)

(declare-fun inv!21093 (Context!1306) Bool)

(assert (=> setNonEmpty!8474 (= setRes!8474 (and tp!425045 (inv!21093 setElem!8475) e!954733))))

(declare-fun setRest!8474 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8474 (= (_1!8243 (_1!8244 (h!21274 mapDefault!6701))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8475 true) setRest!8474))))

(declare-fun tp!425044 () Bool)

(declare-fun e!954730 () Bool)

(declare-fun setElem!8474 () Context!1306)

(declare-fun setNonEmpty!8475 () Bool)

(assert (=> setNonEmpty!8475 (= setRes!8475 (and tp!425044 (inv!21093 setElem!8474) e!954730))))

(declare-fun setRest!8475 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8475 (= (_1!8243 (_1!8244 (h!21274 mapValue!6701))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8474 true) setRest!8475))))

(declare-fun b!1492534 () Bool)

(declare-fun tp!425046 () Bool)

(assert (=> b!1492534 (= e!954732 (and setRes!8474 tp!425046))))

(declare-fun condSetEmpty!8475 () Bool)

(assert (=> b!1492534 (= condSetEmpty!8475 (= (_1!8243 (_1!8244 (h!21274 mapDefault!6701))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492535 () Bool)

(declare-fun tp!425042 () Bool)

(assert (=> b!1492535 (= e!954733 tp!425042)))

(declare-fun mapNonEmpty!6701 () Bool)

(declare-fun tp!425043 () Bool)

(assert (=> mapNonEmpty!6701 (= mapRes!6701 (and tp!425043 e!954731))))

(declare-fun mapRest!6701 () (Array (_ BitVec 32) List!15941))

(declare-fun mapKey!6701 () (_ BitVec 32))

(assert (=> mapNonEmpty!6701 (= mapRest!6697 (store mapRest!6701 mapKey!6701 mapValue!6701))))

(declare-fun b!1492536 () Bool)

(declare-fun tp!425041 () Bool)

(assert (=> b!1492536 (= e!954730 tp!425041)))

(declare-fun setIsEmpty!8474 () Bool)

(assert (=> setIsEmpty!8474 setRes!8475))

(declare-fun setIsEmpty!8475 () Bool)

(assert (=> setIsEmpty!8475 setRes!8474))

(declare-fun mapIsEmpty!6701 () Bool)

(assert (=> mapIsEmpty!6701 mapRes!6701))

(assert (= (and mapNonEmpty!6697 condMapEmpty!6701) mapIsEmpty!6701))

(assert (= (and mapNonEmpty!6697 (not condMapEmpty!6701)) mapNonEmpty!6701))

(assert (= (and b!1492533 condSetEmpty!8474) setIsEmpty!8474))

(assert (= (and b!1492533 (not condSetEmpty!8474)) setNonEmpty!8475))

(assert (= setNonEmpty!8475 b!1492536))

(assert (= (and mapNonEmpty!6701 ((_ is Cons!15873) mapValue!6701)) b!1492533))

(assert (= (and b!1492534 condSetEmpty!8475) setIsEmpty!8475))

(assert (= (and b!1492534 (not condSetEmpty!8475)) setNonEmpty!8474))

(assert (= setNonEmpty!8474 b!1492535))

(assert (= (and mapNonEmpty!6697 ((_ is Cons!15873) mapDefault!6701)) b!1492534))

(declare-fun m!1743557 () Bool)

(assert (=> setNonEmpty!8474 m!1743557))

(declare-fun m!1743559 () Bool)

(assert (=> setNonEmpty!8475 m!1743559))

(declare-fun m!1743561 () Bool)

(assert (=> mapNonEmpty!6701 m!1743561))

(declare-fun e!954739 () Bool)

(assert (=> mapNonEmpty!6697 (= tp!425018 e!954739)))

(declare-fun setIsEmpty!8478 () Bool)

(declare-fun setRes!8478 () Bool)

(assert (=> setIsEmpty!8478 setRes!8478))

(declare-fun b!1492543 () Bool)

(declare-fun tp!425055 () Bool)

(assert (=> b!1492543 (= e!954739 (and setRes!8478 tp!425055))))

(declare-fun condSetEmpty!8478 () Bool)

(assert (=> b!1492543 (= condSetEmpty!8478 (= (_1!8243 (_1!8244 (h!21274 mapValue!6697))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setElem!8478 () Context!1306)

(declare-fun setNonEmpty!8478 () Bool)

(declare-fun tp!425053 () Bool)

(declare-fun e!954738 () Bool)

(assert (=> setNonEmpty!8478 (= setRes!8478 (and tp!425053 (inv!21093 setElem!8478) e!954738))))

(declare-fun setRest!8478 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8478 (= (_1!8243 (_1!8244 (h!21274 mapValue!6697))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8478 true) setRest!8478))))

(declare-fun b!1492544 () Bool)

(declare-fun tp!425054 () Bool)

(assert (=> b!1492544 (= e!954738 tp!425054)))

(assert (= (and b!1492543 condSetEmpty!8478) setIsEmpty!8478))

(assert (= (and b!1492543 (not condSetEmpty!8478)) setNonEmpty!8478))

(assert (= setNonEmpty!8478 b!1492544))

(assert (= (and mapNonEmpty!6697 ((_ is Cons!15873) mapValue!6697)) b!1492543))

(declare-fun m!1743563 () Bool)

(assert (=> setNonEmpty!8478 m!1743563))

(declare-fun tp!425064 () Bool)

(declare-fun e!954745 () Bool)

(declare-fun b!1492553 () Bool)

(declare-fun tp!425063 () Bool)

(assert (=> b!1492553 (= e!954745 (and (inv!21082 (left!13297 (c!244404 (totalInput!2255 cacheFurthestNullable!64)))) tp!425063 (inv!21082 (right!13627 (c!244404 (totalInput!2255 cacheFurthestNullable!64)))) tp!425064))))

(declare-fun b!1492555 () Bool)

(declare-fun e!954744 () Bool)

(declare-fun tp!425062 () Bool)

(assert (=> b!1492555 (= e!954744 tp!425062)))

(declare-fun b!1492554 () Bool)

(declare-fun inv!21094 (IArray!10787) Bool)

(assert (=> b!1492554 (= e!954745 (and (inv!21094 (xs!8154 (c!244404 (totalInput!2255 cacheFurthestNullable!64)))) e!954744))))

(assert (=> b!1492193 (= tp!425005 (and (inv!21082 (c!244404 (totalInput!2255 cacheFurthestNullable!64))) e!954745))))

(assert (= (and b!1492193 ((_ is Node!5391) (c!244404 (totalInput!2255 cacheFurthestNullable!64)))) b!1492553))

(assert (= b!1492554 b!1492555))

(assert (= (and b!1492193 ((_ is Leaf!8004) (c!244404 (totalInput!2255 cacheFurthestNullable!64)))) b!1492554))

(declare-fun m!1743565 () Bool)

(assert (=> b!1492553 m!1743565))

(declare-fun m!1743567 () Bool)

(assert (=> b!1492553 m!1743567))

(declare-fun m!1743569 () Bool)

(assert (=> b!1492554 m!1743569))

(assert (=> b!1492193 m!1742907))

(declare-fun e!954754 () Bool)

(assert (=> b!1492223 (= tp!425006 e!954754)))

(declare-fun setRes!8481 () Bool)

(declare-fun e!954753 () Bool)

(declare-fun b!1492564 () Bool)

(declare-fun tp!425077 () Bool)

(declare-fun tp!425075 () Bool)

(declare-fun tp_is_empty!6999 () Bool)

(assert (=> b!1492564 (= e!954754 (and tp!425075 (inv!21093 (_2!8245 (_1!8246 (h!21275 (zeroValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))))) e!954753 tp_is_empty!6999 setRes!8481 tp!425077))))

(declare-fun condSetEmpty!8481 () Bool)

(assert (=> b!1492564 (= condSetEmpty!8481 (= (_2!8246 (h!21275 (zeroValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492565 () Bool)

(declare-fun e!954752 () Bool)

(declare-fun tp!425078 () Bool)

(assert (=> b!1492565 (= e!954752 tp!425078)))

(declare-fun b!1492566 () Bool)

(declare-fun tp!425079 () Bool)

(assert (=> b!1492566 (= e!954753 tp!425079)))

(declare-fun setIsEmpty!8481 () Bool)

(assert (=> setIsEmpty!8481 setRes!8481))

(declare-fun setElem!8481 () Context!1306)

(declare-fun tp!425076 () Bool)

(declare-fun setNonEmpty!8481 () Bool)

(assert (=> setNonEmpty!8481 (= setRes!8481 (and tp!425076 (inv!21093 setElem!8481) e!954752))))

(declare-fun setRest!8481 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8481 (= (_2!8246 (h!21275 (zeroValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8481 true) setRest!8481))))

(assert (= b!1492564 b!1492566))

(assert (= (and b!1492564 condSetEmpty!8481) setIsEmpty!8481))

(assert (= (and b!1492564 (not condSetEmpty!8481)) setNonEmpty!8481))

(assert (= setNonEmpty!8481 b!1492565))

(assert (= (and b!1492223 ((_ is Cons!15874) (zeroValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))) b!1492564))

(declare-fun m!1743571 () Bool)

(assert (=> b!1492564 m!1743571))

(declare-fun m!1743573 () Bool)

(assert (=> setNonEmpty!8481 m!1743573))

(declare-fun e!954757 () Bool)

(assert (=> b!1492223 (= tp!425015 e!954757)))

(declare-fun tp!425080 () Bool)

(declare-fun e!954756 () Bool)

(declare-fun tp!425082 () Bool)

(declare-fun setRes!8482 () Bool)

(declare-fun b!1492567 () Bool)

(assert (=> b!1492567 (= e!954757 (and tp!425080 (inv!21093 (_2!8245 (_1!8246 (h!21275 (minValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))))) e!954756 tp_is_empty!6999 setRes!8482 tp!425082))))

(declare-fun condSetEmpty!8482 () Bool)

(assert (=> b!1492567 (= condSetEmpty!8482 (= (_2!8246 (h!21275 (minValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492568 () Bool)

(declare-fun e!954755 () Bool)

(declare-fun tp!425083 () Bool)

(assert (=> b!1492568 (= e!954755 tp!425083)))

(declare-fun b!1492569 () Bool)

(declare-fun tp!425084 () Bool)

(assert (=> b!1492569 (= e!954756 tp!425084)))

(declare-fun setIsEmpty!8482 () Bool)

(assert (=> setIsEmpty!8482 setRes!8482))

(declare-fun setElem!8482 () Context!1306)

(declare-fun setNonEmpty!8482 () Bool)

(declare-fun tp!425081 () Bool)

(assert (=> setNonEmpty!8482 (= setRes!8482 (and tp!425081 (inv!21093 setElem!8482) e!954755))))

(declare-fun setRest!8482 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8482 (= (_2!8246 (h!21275 (minValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8482 true) setRest!8482))))

(assert (= b!1492567 b!1492569))

(assert (= (and b!1492567 condSetEmpty!8482) setIsEmpty!8482))

(assert (= (and b!1492567 (not condSetEmpty!8482)) setNonEmpty!8482))

(assert (= setNonEmpty!8482 b!1492568))

(assert (= (and b!1492223 ((_ is Cons!15874) (minValue!1668 (v!22696 (underlying!3031 (v!22697 (underlying!3032 (cache!1736 cacheDown!629)))))))) b!1492567))

(declare-fun m!1743575 () Bool)

(assert (=> b!1492567 m!1743575))

(declare-fun m!1743577 () Bool)

(assert (=> setNonEmpty!8482 m!1743577))

(declare-fun b!1492570 () Bool)

(declare-fun e!954759 () Bool)

(declare-fun tp!425086 () Bool)

(declare-fun tp!425087 () Bool)

(assert (=> b!1492570 (= e!954759 (and (inv!21082 (left!13297 (c!244404 treated!70))) tp!425086 (inv!21082 (right!13627 (c!244404 treated!70))) tp!425087))))

(declare-fun b!1492572 () Bool)

(declare-fun e!954758 () Bool)

(declare-fun tp!425085 () Bool)

(assert (=> b!1492572 (= e!954758 tp!425085)))

(declare-fun b!1492571 () Bool)

(assert (=> b!1492571 (= e!954759 (and (inv!21094 (xs!8154 (c!244404 treated!70))) e!954758))))

(assert (=> b!1492211 (= tp!424994 (and (inv!21082 (c!244404 treated!70)) e!954759))))

(assert (= (and b!1492211 ((_ is Node!5391) (c!244404 treated!70))) b!1492570))

(assert (= b!1492571 b!1492572))

(assert (= (and b!1492211 ((_ is Leaf!8004) (c!244404 treated!70))) b!1492571))

(declare-fun m!1743579 () Bool)

(assert (=> b!1492570 m!1743579))

(declare-fun m!1743581 () Bool)

(assert (=> b!1492570 m!1743581))

(declare-fun m!1743583 () Bool)

(assert (=> b!1492571 m!1743583))

(assert (=> b!1492211 m!1743003))

(declare-fun b!1492583 () Bool)

(declare-fun b_free!38775 () Bool)

(declare-fun b_next!39479 () Bool)

(assert (=> b!1492583 (= b_free!38775 (not b_next!39479))))

(declare-fun tp!425098 () Bool)

(declare-fun b_and!103819 () Bool)

(assert (=> b!1492583 (= tp!425098 b_and!103819)))

(declare-fun b_free!38777 () Bool)

(declare-fun b_next!39481 () Bool)

(assert (=> b!1492583 (= b_free!38777 (not b_next!39481))))

(declare-fun t!138206 () Bool)

(declare-fun tb!85231 () Bool)

(assert (=> (and b!1492583 (= (toChars!4022 (transformation!2820 (h!21272 (t!138198 rules!1640)))) (toChars!4022 (transformation!2820 (rule!4601 (_1!8247 (v!22698 (_1!8251 lt!518569))))))) t!138206) tb!85231))

(declare-fun result!102524 () Bool)

(assert (= result!102524 result!102510))

(assert (=> d!438469 t!138206))

(declare-fun tp!425099 () Bool)

(declare-fun b_and!103821 () Bool)

(assert (=> b!1492583 (= tp!425099 (and (=> t!138206 result!102524) b_and!103821))))

(declare-fun e!954769 () Bool)

(assert (=> b!1492583 (= e!954769 (and tp!425098 tp!425099))))

(declare-fun tp!425096 () Bool)

(declare-fun e!954770 () Bool)

(declare-fun b!1492582 () Bool)

(assert (=> b!1492582 (= e!954770 (and tp!425096 (inv!21080 (tag!3084 (h!21272 (t!138198 rules!1640)))) (inv!21083 (transformation!2820 (h!21272 (t!138198 rules!1640)))) e!954769))))

(declare-fun b!1492581 () Bool)

(declare-fun e!954771 () Bool)

(declare-fun tp!425097 () Bool)

(assert (=> b!1492581 (= e!954771 (and e!954770 tp!425097))))

(assert (=> b!1492201 (= tp!425022 e!954771)))

(assert (= b!1492582 b!1492583))

(assert (= b!1492581 b!1492582))

(assert (= (and b!1492201 ((_ is Cons!15871) (t!138198 rules!1640))) b!1492581))

(declare-fun m!1743585 () Bool)

(assert (=> b!1492582 m!1743585))

(declare-fun m!1743587 () Bool)

(assert (=> b!1492582 m!1743587))

(declare-fun b!1492592 () Bool)

(declare-fun e!954780 () Bool)

(declare-fun tp!425110 () Bool)

(assert (=> b!1492592 (= e!954780 tp!425110)))

(declare-fun e!954778 () Bool)

(assert (=> b!1492210 (= tp!425000 e!954778)))

(declare-fun setIsEmpty!8485 () Bool)

(declare-fun setRes!8485 () Bool)

(assert (=> setIsEmpty!8485 setRes!8485))

(declare-fun b!1492593 () Bool)

(declare-fun tp!425108 () Bool)

(declare-fun e!954779 () Bool)

(assert (=> b!1492593 (= e!954778 (and (inv!21093 (_1!8249 (_1!8250 (h!21276 (zeroValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))))) e!954779 tp_is_empty!6999 setRes!8485 tp!425108))))

(declare-fun condSetEmpty!8485 () Bool)

(assert (=> b!1492593 (= condSetEmpty!8485 (= (_2!8250 (h!21276 (zeroValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun tp!425109 () Bool)

(declare-fun setNonEmpty!8485 () Bool)

(declare-fun setElem!8485 () Context!1306)

(assert (=> setNonEmpty!8485 (= setRes!8485 (and tp!425109 (inv!21093 setElem!8485) e!954780))))

(declare-fun setRest!8485 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8485 (= (_2!8250 (h!21276 (zeroValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8485 true) setRest!8485))))

(declare-fun b!1492594 () Bool)

(declare-fun tp!425111 () Bool)

(assert (=> b!1492594 (= e!954779 tp!425111)))

(assert (= b!1492593 b!1492594))

(assert (= (and b!1492593 condSetEmpty!8485) setIsEmpty!8485))

(assert (= (and b!1492593 (not condSetEmpty!8485)) setNonEmpty!8485))

(assert (= setNonEmpty!8485 b!1492592))

(assert (= (and b!1492210 ((_ is Cons!15875) (zeroValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))) b!1492593))

(declare-fun m!1743589 () Bool)

(assert (=> b!1492593 m!1743589))

(declare-fun m!1743591 () Bool)

(assert (=> setNonEmpty!8485 m!1743591))

(declare-fun b!1492595 () Bool)

(declare-fun e!954783 () Bool)

(declare-fun tp!425114 () Bool)

(assert (=> b!1492595 (= e!954783 tp!425114)))

(declare-fun e!954781 () Bool)

(assert (=> b!1492210 (= tp!424999 e!954781)))

(declare-fun setIsEmpty!8486 () Bool)

(declare-fun setRes!8486 () Bool)

(assert (=> setIsEmpty!8486 setRes!8486))

(declare-fun b!1492596 () Bool)

(declare-fun e!954782 () Bool)

(declare-fun tp!425112 () Bool)

(assert (=> b!1492596 (= e!954781 (and (inv!21093 (_1!8249 (_1!8250 (h!21276 (minValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))))) e!954782 tp_is_empty!6999 setRes!8486 tp!425112))))

(declare-fun condSetEmpty!8486 () Bool)

(assert (=> b!1492596 (= condSetEmpty!8486 (= (_2!8250 (h!21276 (minValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setNonEmpty!8486 () Bool)

(declare-fun tp!425113 () Bool)

(declare-fun setElem!8486 () Context!1306)

(assert (=> setNonEmpty!8486 (= setRes!8486 (and tp!425113 (inv!21093 setElem!8486) e!954783))))

(declare-fun setRest!8486 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8486 (= (_2!8250 (h!21276 (minValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8486 true) setRest!8486))))

(declare-fun b!1492597 () Bool)

(declare-fun tp!425115 () Bool)

(assert (=> b!1492597 (= e!954782 tp!425115)))

(assert (= b!1492596 b!1492597))

(assert (= (and b!1492596 condSetEmpty!8486) setIsEmpty!8486))

(assert (= (and b!1492596 (not condSetEmpty!8486)) setNonEmpty!8486))

(assert (= setNonEmpty!8486 b!1492595))

(assert (= (and b!1492210 ((_ is Cons!15875) (minValue!1669 (v!22699 (underlying!3033 (v!22700 (underlying!3034 (cache!1737 cacheUp!616)))))))) b!1492596))

(declare-fun m!1743593 () Bool)

(assert (=> b!1492596 m!1743593))

(declare-fun m!1743595 () Bool)

(assert (=> setNonEmpty!8486 m!1743595))

(declare-fun e!954801 () Bool)

(declare-fun setElem!8491 () Context!1306)

(declare-fun tp!425138 () Bool)

(declare-fun setNonEmpty!8491 () Bool)

(declare-fun setRes!8492 () Bool)

(assert (=> setNonEmpty!8491 (= setRes!8492 (and tp!425138 (inv!21093 setElem!8491) e!954801))))

(declare-fun mapDefault!6704 () List!15943)

(declare-fun setRest!8491 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8491 (= (_2!8250 (h!21276 mapDefault!6704)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8491 true) setRest!8491))))

(declare-fun setIsEmpty!8491 () Bool)

(assert (=> setIsEmpty!8491 setRes!8492))

(declare-fun e!954798 () Bool)

(declare-fun b!1492612 () Bool)

(declare-fun e!954799 () Bool)

(declare-fun tp!425142 () Bool)

(assert (=> b!1492612 (= e!954798 (and (inv!21093 (_1!8249 (_1!8250 (h!21276 mapDefault!6704)))) e!954799 tp_is_empty!6999 setRes!8492 tp!425142))))

(declare-fun condSetEmpty!8492 () Bool)

(assert (=> b!1492612 (= condSetEmpty!8492 (= (_2!8250 (h!21276 mapDefault!6704)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492613 () Bool)

(declare-fun e!954797 () Bool)

(declare-fun mapValue!6704 () List!15943)

(declare-fun tp!425139 () Bool)

(declare-fun setRes!8491 () Bool)

(declare-fun e!954796 () Bool)

(assert (=> b!1492613 (= e!954796 (and (inv!21093 (_1!8249 (_1!8250 (h!21276 mapValue!6704)))) e!954797 tp_is_empty!6999 setRes!8491 tp!425139))))

(declare-fun condSetEmpty!8491 () Bool)

(assert (=> b!1492613 (= condSetEmpty!8491 (= (_2!8250 (h!21276 mapValue!6704)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setNonEmpty!8492 () Bool)

(declare-fun setElem!8492 () Context!1306)

(declare-fun tp!425141 () Bool)

(declare-fun e!954800 () Bool)

(assert (=> setNonEmpty!8492 (= setRes!8491 (and tp!425141 (inv!21093 setElem!8492) e!954800))))

(declare-fun setRest!8492 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8492 (= (_2!8250 (h!21276 mapValue!6704)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8492 true) setRest!8492))))

(declare-fun b!1492614 () Bool)

(declare-fun tp!425135 () Bool)

(assert (=> b!1492614 (= e!954797 tp!425135)))

(declare-fun b!1492615 () Bool)

(declare-fun tp!425136 () Bool)

(assert (=> b!1492615 (= e!954800 tp!425136)))

(declare-fun b!1492616 () Bool)

(declare-fun tp!425137 () Bool)

(assert (=> b!1492616 (= e!954801 tp!425137)))

(declare-fun condMapEmpty!6704 () Bool)

(assert (=> mapNonEmpty!6696 (= condMapEmpty!6704 (= mapRest!6696 ((as const (Array (_ BitVec 32) List!15943)) mapDefault!6704)))))

(declare-fun mapRes!6704 () Bool)

(assert (=> mapNonEmpty!6696 (= tp!425020 (and e!954798 mapRes!6704))))

(declare-fun mapIsEmpty!6704 () Bool)

(assert (=> mapIsEmpty!6704 mapRes!6704))

(declare-fun setIsEmpty!8492 () Bool)

(assert (=> setIsEmpty!8492 setRes!8491))

(declare-fun mapNonEmpty!6704 () Bool)

(declare-fun tp!425140 () Bool)

(assert (=> mapNonEmpty!6704 (= mapRes!6704 (and tp!425140 e!954796))))

(declare-fun mapKey!6704 () (_ BitVec 32))

(declare-fun mapRest!6704 () (Array (_ BitVec 32) List!15943))

(assert (=> mapNonEmpty!6704 (= mapRest!6696 (store mapRest!6704 mapKey!6704 mapValue!6704))))

(declare-fun b!1492617 () Bool)

(declare-fun tp!425134 () Bool)

(assert (=> b!1492617 (= e!954799 tp!425134)))

(assert (= (and mapNonEmpty!6696 condMapEmpty!6704) mapIsEmpty!6704))

(assert (= (and mapNonEmpty!6696 (not condMapEmpty!6704)) mapNonEmpty!6704))

(assert (= b!1492613 b!1492614))

(assert (= (and b!1492613 condSetEmpty!8491) setIsEmpty!8492))

(assert (= (and b!1492613 (not condSetEmpty!8491)) setNonEmpty!8492))

(assert (= setNonEmpty!8492 b!1492615))

(assert (= (and mapNonEmpty!6704 ((_ is Cons!15875) mapValue!6704)) b!1492613))

(assert (= b!1492612 b!1492617))

(assert (= (and b!1492612 condSetEmpty!8492) setIsEmpty!8491))

(assert (= (and b!1492612 (not condSetEmpty!8492)) setNonEmpty!8491))

(assert (= setNonEmpty!8491 b!1492616))

(assert (= (and mapNonEmpty!6696 ((_ is Cons!15875) mapDefault!6704)) b!1492612))

(declare-fun m!1743597 () Bool)

(assert (=> setNonEmpty!8491 m!1743597))

(declare-fun m!1743599 () Bool)

(assert (=> b!1492613 m!1743599))

(declare-fun m!1743601 () Bool)

(assert (=> mapNonEmpty!6704 m!1743601))

(declare-fun m!1743603 () Bool)

(assert (=> b!1492612 m!1743603))

(declare-fun m!1743605 () Bool)

(assert (=> setNonEmpty!8492 m!1743605))

(declare-fun b!1492618 () Bool)

(declare-fun e!954804 () Bool)

(declare-fun tp!425145 () Bool)

(assert (=> b!1492618 (= e!954804 tp!425145)))

(declare-fun e!954802 () Bool)

(assert (=> mapNonEmpty!6696 (= tp!425014 e!954802)))

(declare-fun setIsEmpty!8493 () Bool)

(declare-fun setRes!8493 () Bool)

(assert (=> setIsEmpty!8493 setRes!8493))

(declare-fun e!954803 () Bool)

(declare-fun b!1492619 () Bool)

(declare-fun tp!425143 () Bool)

(assert (=> b!1492619 (= e!954802 (and (inv!21093 (_1!8249 (_1!8250 (h!21276 mapValue!6698)))) e!954803 tp_is_empty!6999 setRes!8493 tp!425143))))

(declare-fun condSetEmpty!8493 () Bool)

(assert (=> b!1492619 (= condSetEmpty!8493 (= (_2!8250 (h!21276 mapValue!6698)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setNonEmpty!8493 () Bool)

(declare-fun setElem!8493 () Context!1306)

(declare-fun tp!425144 () Bool)

(assert (=> setNonEmpty!8493 (= setRes!8493 (and tp!425144 (inv!21093 setElem!8493) e!954804))))

(declare-fun setRest!8493 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8493 (= (_2!8250 (h!21276 mapValue!6698)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8493 true) setRest!8493))))

(declare-fun b!1492620 () Bool)

(declare-fun tp!425146 () Bool)

(assert (=> b!1492620 (= e!954803 tp!425146)))

(assert (= b!1492619 b!1492620))

(assert (= (and b!1492619 condSetEmpty!8493) setIsEmpty!8493))

(assert (= (and b!1492619 (not condSetEmpty!8493)) setNonEmpty!8493))

(assert (= setNonEmpty!8493 b!1492618))

(assert (= (and mapNonEmpty!6696 ((_ is Cons!15875) mapValue!6698)) b!1492619))

(declare-fun m!1743607 () Bool)

(assert (=> b!1492619 m!1743607))

(declare-fun m!1743609 () Bool)

(assert (=> setNonEmpty!8493 m!1743609))

(declare-fun e!954809 () Bool)

(declare-fun tp!425155 () Bool)

(declare-fun tp!425154 () Bool)

(declare-fun b!1492629 () Bool)

(assert (=> b!1492629 (= e!954809 (and (inv!21081 (left!13298 (c!244406 acc!392))) tp!425155 (inv!21081 (right!13628 (c!244406 acc!392))) tp!425154))))

(declare-fun b!1492631 () Bool)

(declare-fun e!954810 () Bool)

(declare-fun tp!425153 () Bool)

(assert (=> b!1492631 (= e!954810 tp!425153)))

(declare-fun b!1492630 () Bool)

(declare-fun inv!21095 (IArray!10789) Bool)

(assert (=> b!1492630 (= e!954809 (and (inv!21095 (xs!8155 (c!244406 acc!392))) e!954810))))

(assert (=> b!1492190 (= tp!425004 (and (inv!21081 (c!244406 acc!392)) e!954809))))

(assert (= (and b!1492190 ((_ is Node!5392) (c!244406 acc!392))) b!1492629))

(assert (= b!1492630 b!1492631))

(assert (= (and b!1492190 ((_ is Leaf!8005) (c!244406 acc!392))) b!1492630))

(declare-fun m!1743611 () Bool)

(assert (=> b!1492629 m!1743611))

(declare-fun m!1743613 () Bool)

(assert (=> b!1492629 m!1743613))

(declare-fun m!1743615 () Bool)

(assert (=> b!1492630 m!1743615))

(assert (=> b!1492190 m!1743017))

(declare-fun e!954812 () Bool)

(assert (=> b!1492189 (= tp!424995 e!954812)))

(declare-fun setIsEmpty!8494 () Bool)

(declare-fun setRes!8494 () Bool)

(assert (=> setIsEmpty!8494 setRes!8494))

(declare-fun b!1492632 () Bool)

(declare-fun tp!425158 () Bool)

(assert (=> b!1492632 (= e!954812 (and setRes!8494 tp!425158))))

(declare-fun condSetEmpty!8494 () Bool)

(assert (=> b!1492632 (= condSetEmpty!8494 (= (_1!8243 (_1!8244 (h!21274 mapDefault!6697))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setNonEmpty!8494 () Bool)

(declare-fun setElem!8494 () Context!1306)

(declare-fun tp!425156 () Bool)

(declare-fun e!954811 () Bool)

(assert (=> setNonEmpty!8494 (= setRes!8494 (and tp!425156 (inv!21093 setElem!8494) e!954811))))

(declare-fun setRest!8494 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8494 (= (_1!8243 (_1!8244 (h!21274 mapDefault!6697))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8494 true) setRest!8494))))

(declare-fun b!1492633 () Bool)

(declare-fun tp!425157 () Bool)

(assert (=> b!1492633 (= e!954811 tp!425157)))

(assert (= (and b!1492632 condSetEmpty!8494) setIsEmpty!8494))

(assert (= (and b!1492632 (not condSetEmpty!8494)) setNonEmpty!8494))

(assert (= setNonEmpty!8494 b!1492633))

(assert (= (and b!1492189 ((_ is Cons!15873) mapDefault!6697)) b!1492632))

(declare-fun m!1743617 () Bool)

(assert (=> setNonEmpty!8494 m!1743617))

(declare-fun e!954815 () Bool)

(assert (=> b!1492199 (= tp!425016 e!954815)))

(declare-fun setRes!8495 () Bool)

(declare-fun b!1492634 () Bool)

(declare-fun e!954814 () Bool)

(declare-fun tp!425161 () Bool)

(declare-fun tp!425159 () Bool)

(assert (=> b!1492634 (= e!954815 (and tp!425159 (inv!21093 (_2!8245 (_1!8246 (h!21275 mapDefault!6696)))) e!954814 tp_is_empty!6999 setRes!8495 tp!425161))))

(declare-fun condSetEmpty!8495 () Bool)

(assert (=> b!1492634 (= condSetEmpty!8495 (= (_2!8246 (h!21275 mapDefault!6696)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492635 () Bool)

(declare-fun e!954813 () Bool)

(declare-fun tp!425162 () Bool)

(assert (=> b!1492635 (= e!954813 tp!425162)))

(declare-fun b!1492636 () Bool)

(declare-fun tp!425163 () Bool)

(assert (=> b!1492636 (= e!954814 tp!425163)))

(declare-fun setIsEmpty!8495 () Bool)

(assert (=> setIsEmpty!8495 setRes!8495))

(declare-fun setElem!8495 () Context!1306)

(declare-fun tp!425160 () Bool)

(declare-fun setNonEmpty!8495 () Bool)

(assert (=> setNonEmpty!8495 (= setRes!8495 (and tp!425160 (inv!21093 setElem!8495) e!954813))))

(declare-fun setRest!8495 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8495 (= (_2!8246 (h!21275 mapDefault!6696)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8495 true) setRest!8495))))

(assert (= b!1492634 b!1492636))

(assert (= (and b!1492634 condSetEmpty!8495) setIsEmpty!8495))

(assert (= (and b!1492634 (not condSetEmpty!8495)) setNonEmpty!8495))

(assert (= setNonEmpty!8495 b!1492635))

(assert (= (and b!1492199 ((_ is Cons!15874) mapDefault!6696)) b!1492634))

(declare-fun m!1743619 () Bool)

(assert (=> b!1492634 m!1743619))

(declare-fun m!1743621 () Bool)

(assert (=> setNonEmpty!8495 m!1743621))

(declare-fun tp!425166 () Bool)

(declare-fun tp!425165 () Bool)

(declare-fun b!1492637 () Bool)

(declare-fun e!954817 () Bool)

(assert (=> b!1492637 (= e!954817 (and (inv!21082 (left!13297 (c!244404 input!1102))) tp!425165 (inv!21082 (right!13627 (c!244404 input!1102))) tp!425166))))

(declare-fun b!1492639 () Bool)

(declare-fun e!954816 () Bool)

(declare-fun tp!425164 () Bool)

(assert (=> b!1492639 (= e!954816 tp!425164)))

(declare-fun b!1492638 () Bool)

(assert (=> b!1492638 (= e!954817 (and (inv!21094 (xs!8154 (c!244404 input!1102))) e!954816))))

(assert (=> b!1492218 (= tp!425007 (and (inv!21082 (c!244404 input!1102)) e!954817))))

(assert (= (and b!1492218 ((_ is Node!5391) (c!244404 input!1102))) b!1492637))

(assert (= b!1492638 b!1492639))

(assert (= (and b!1492218 ((_ is Leaf!8004) (c!244404 input!1102))) b!1492638))

(declare-fun m!1743623 () Bool)

(assert (=> b!1492637 m!1743623))

(declare-fun m!1743625 () Bool)

(assert (=> b!1492637 m!1743625))

(declare-fun m!1743627 () Bool)

(assert (=> b!1492638 m!1743627))

(assert (=> b!1492218 m!1742887))

(declare-fun e!954819 () Bool)

(assert (=> b!1492236 (= tp!425001 e!954819)))

(declare-fun setIsEmpty!8496 () Bool)

(declare-fun setRes!8496 () Bool)

(assert (=> setIsEmpty!8496 setRes!8496))

(declare-fun b!1492640 () Bool)

(declare-fun tp!425169 () Bool)

(assert (=> b!1492640 (= e!954819 (and setRes!8496 tp!425169))))

(declare-fun condSetEmpty!8496 () Bool)

(assert (=> b!1492640 (= condSetEmpty!8496 (= (_1!8243 (_1!8244 (h!21274 (zeroValue!1667 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setElem!8496 () Context!1306)

(declare-fun e!954818 () Bool)

(declare-fun setNonEmpty!8496 () Bool)

(declare-fun tp!425167 () Bool)

(assert (=> setNonEmpty!8496 (= setRes!8496 (and tp!425167 (inv!21093 setElem!8496) e!954818))))

(declare-fun setRest!8496 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8496 (= (_1!8243 (_1!8244 (h!21274 (zeroValue!1667 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8496 true) setRest!8496))))

(declare-fun b!1492641 () Bool)

(declare-fun tp!425168 () Bool)

(assert (=> b!1492641 (= e!954818 tp!425168)))

(assert (= (and b!1492640 condSetEmpty!8496) setIsEmpty!8496))

(assert (= (and b!1492640 (not condSetEmpty!8496)) setNonEmpty!8496))

(assert (= setNonEmpty!8496 b!1492641))

(assert (= (and b!1492236 ((_ is Cons!15873) (zeroValue!1667 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64)))))))) b!1492640))

(declare-fun m!1743629 () Bool)

(assert (=> setNonEmpty!8496 m!1743629))

(declare-fun e!954821 () Bool)

(assert (=> b!1492236 (= tp!425019 e!954821)))

(declare-fun setIsEmpty!8497 () Bool)

(declare-fun setRes!8497 () Bool)

(assert (=> setIsEmpty!8497 setRes!8497))

(declare-fun b!1492642 () Bool)

(declare-fun tp!425172 () Bool)

(assert (=> b!1492642 (= e!954821 (and setRes!8497 tp!425172))))

(declare-fun condSetEmpty!8497 () Bool)

(assert (=> b!1492642 (= condSetEmpty!8497 (= (_1!8243 (_1!8244 (h!21274 (minValue!1667 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))))) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun setNonEmpty!8497 () Bool)

(declare-fun tp!425170 () Bool)

(declare-fun setElem!8497 () Context!1306)

(declare-fun e!954820 () Bool)

(assert (=> setNonEmpty!8497 (= setRes!8497 (and tp!425170 (inv!21093 setElem!8497) e!954820))))

(declare-fun setRest!8497 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8497 (= (_1!8243 (_1!8244 (h!21274 (minValue!1667 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8497 true) setRest!8497))))

(declare-fun b!1492643 () Bool)

(declare-fun tp!425171 () Bool)

(assert (=> b!1492643 (= e!954820 tp!425171)))

(assert (= (and b!1492642 condSetEmpty!8497) setIsEmpty!8497))

(assert (= (and b!1492642 (not condSetEmpty!8497)) setNonEmpty!8497))

(assert (= setNonEmpty!8497 b!1492643))

(assert (= (and b!1492236 ((_ is Cons!15873) (minValue!1667 (v!22694 (underlying!3029 (v!22695 (underlying!3030 (cache!1735 cacheFurthestNullable!64)))))))) b!1492642))

(declare-fun m!1743631 () Bool)

(assert (=> setNonEmpty!8497 m!1743631))

(declare-fun b!1492655 () Bool)

(declare-fun e!954824 () Bool)

(declare-fun tp!425183 () Bool)

(declare-fun tp!425185 () Bool)

(assert (=> b!1492655 (= e!954824 (and tp!425183 tp!425185))))

(declare-fun b!1492654 () Bool)

(assert (=> b!1492654 (= e!954824 tp_is_empty!6999)))

(assert (=> b!1492197 (= tp!424998 e!954824)))

(declare-fun b!1492656 () Bool)

(declare-fun tp!425186 () Bool)

(assert (=> b!1492656 (= e!954824 tp!425186)))

(declare-fun b!1492657 () Bool)

(declare-fun tp!425187 () Bool)

(declare-fun tp!425184 () Bool)

(assert (=> b!1492657 (= e!954824 (and tp!425187 tp!425184))))

(assert (= (and b!1492197 ((_ is ElementMatch!4135) (regex!2820 (h!21272 rules!1640)))) b!1492654))

(assert (= (and b!1492197 ((_ is Concat!7046) (regex!2820 (h!21272 rules!1640)))) b!1492655))

(assert (= (and b!1492197 ((_ is Star!4135) (regex!2820 (h!21272 rules!1640)))) b!1492656))

(assert (= (and b!1492197 ((_ is Union!4135) (regex!2820 (h!21272 rules!1640)))) b!1492657))

(declare-fun b!1492658 () Bool)

(declare-fun e!954827 () Bool)

(declare-fun tp!425190 () Bool)

(assert (=> b!1492658 (= e!954827 tp!425190)))

(declare-fun e!954825 () Bool)

(assert (=> b!1492227 (= tp!425009 e!954825)))

(declare-fun setIsEmpty!8498 () Bool)

(declare-fun setRes!8498 () Bool)

(assert (=> setIsEmpty!8498 setRes!8498))

(declare-fun tp!425188 () Bool)

(declare-fun b!1492659 () Bool)

(declare-fun e!954826 () Bool)

(assert (=> b!1492659 (= e!954825 (and (inv!21093 (_1!8249 (_1!8250 (h!21276 mapDefault!6698)))) e!954826 tp_is_empty!6999 setRes!8498 tp!425188))))

(declare-fun condSetEmpty!8498 () Bool)

(assert (=> b!1492659 (= condSetEmpty!8498 (= (_2!8250 (h!21276 mapDefault!6698)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun tp!425189 () Bool)

(declare-fun setElem!8498 () Context!1306)

(declare-fun setNonEmpty!8498 () Bool)

(assert (=> setNonEmpty!8498 (= setRes!8498 (and tp!425189 (inv!21093 setElem!8498) e!954827))))

(declare-fun setRest!8498 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8498 (= (_2!8250 (h!21276 mapDefault!6698)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8498 true) setRest!8498))))

(declare-fun b!1492660 () Bool)

(declare-fun tp!425191 () Bool)

(assert (=> b!1492660 (= e!954826 tp!425191)))

(assert (= b!1492659 b!1492660))

(assert (= (and b!1492659 condSetEmpty!8498) setIsEmpty!8498))

(assert (= (and b!1492659 (not condSetEmpty!8498)) setNonEmpty!8498))

(assert (= setNonEmpty!8498 b!1492658))

(assert (= (and b!1492227 ((_ is Cons!15875) mapDefault!6698)) b!1492659))

(declare-fun m!1743633 () Bool)

(assert (=> b!1492659 m!1743633))

(declare-fun m!1743635 () Bool)

(assert (=> setNonEmpty!8498 m!1743635))

(declare-fun e!954829 () Bool)

(declare-fun tp!425193 () Bool)

(declare-fun b!1492661 () Bool)

(declare-fun tp!425194 () Bool)

(assert (=> b!1492661 (= e!954829 (and (inv!21082 (left!13297 (c!244404 totalInput!458))) tp!425193 (inv!21082 (right!13627 (c!244404 totalInput!458))) tp!425194))))

(declare-fun b!1492663 () Bool)

(declare-fun e!954828 () Bool)

(declare-fun tp!425192 () Bool)

(assert (=> b!1492663 (= e!954828 tp!425192)))

(declare-fun b!1492662 () Bool)

(assert (=> b!1492662 (= e!954829 (and (inv!21094 (xs!8154 (c!244404 totalInput!458))) e!954828))))

(assert (=> b!1492215 (= tp!425008 (and (inv!21082 (c!244404 totalInput!458)) e!954829))))

(assert (= (and b!1492215 ((_ is Node!5391) (c!244404 totalInput!458))) b!1492661))

(assert (= b!1492662 b!1492663))

(assert (= (and b!1492215 ((_ is Leaf!8004) (c!244404 totalInput!458))) b!1492662))

(declare-fun m!1743637 () Bool)

(assert (=> b!1492661 m!1743637))

(declare-fun m!1743639 () Bool)

(assert (=> b!1492661 m!1743639))

(declare-fun m!1743641 () Bool)

(assert (=> b!1492662 m!1743641))

(assert (=> b!1492215 m!1743025))

(declare-fun mapIsEmpty!6707 () Bool)

(declare-fun mapRes!6707 () Bool)

(assert (=> mapIsEmpty!6707 mapRes!6707))

(declare-fun tp!425221 () Bool)

(declare-fun setElem!8504 () Context!1306)

(declare-fun setNonEmpty!8503 () Bool)

(declare-fun e!954844 () Bool)

(declare-fun setRes!8503 () Bool)

(assert (=> setNonEmpty!8503 (= setRes!8503 (and tp!425221 (inv!21093 setElem!8504) e!954844))))

(declare-fun mapValue!6707 () List!15942)

(declare-fun setRest!8503 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8503 (= (_2!8246 (h!21275 mapValue!6707)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8504 true) setRest!8503))))

(declare-fun b!1492678 () Bool)

(declare-fun e!954847 () Bool)

(declare-fun tp!425220 () Bool)

(assert (=> b!1492678 (= e!954847 tp!425220)))

(declare-fun mapNonEmpty!6707 () Bool)

(declare-fun tp!425225 () Bool)

(declare-fun e!954842 () Bool)

(assert (=> mapNonEmpty!6707 (= mapRes!6707 (and tp!425225 e!954842))))

(declare-fun mapKey!6707 () (_ BitVec 32))

(declare-fun mapRest!6707 () (Array (_ BitVec 32) List!15942))

(assert (=> mapNonEmpty!6707 (= mapRest!6698 (store mapRest!6707 mapKey!6707 mapValue!6707))))

(declare-fun condMapEmpty!6707 () Bool)

(declare-fun mapDefault!6707 () List!15942)

(assert (=> mapNonEmpty!6698 (= condMapEmpty!6707 (= mapRest!6698 ((as const (Array (_ BitVec 32) List!15942)) mapDefault!6707)))))

(declare-fun e!954843 () Bool)

(assert (=> mapNonEmpty!6698 (= tp!425021 (and e!954843 mapRes!6707))))

(declare-fun setIsEmpty!8503 () Bool)

(declare-fun setRes!8504 () Bool)

(assert (=> setIsEmpty!8503 setRes!8504))

(declare-fun setIsEmpty!8504 () Bool)

(assert (=> setIsEmpty!8504 setRes!8503))

(declare-fun b!1492679 () Bool)

(declare-fun e!954846 () Bool)

(declare-fun tp!425219 () Bool)

(assert (=> b!1492679 (= e!954846 tp!425219)))

(declare-fun b!1492680 () Bool)

(declare-fun e!954845 () Bool)

(declare-fun tp!425217 () Bool)

(assert (=> b!1492680 (= e!954845 tp!425217)))

(declare-fun b!1492681 () Bool)

(declare-fun tp!425222 () Bool)

(assert (=> b!1492681 (= e!954844 tp!425222)))

(declare-fun setNonEmpty!8504 () Bool)

(declare-fun setElem!8503 () Context!1306)

(declare-fun tp!425227 () Bool)

(assert (=> setNonEmpty!8504 (= setRes!8504 (and tp!425227 (inv!21093 setElem!8503) e!954845))))

(declare-fun setRest!8504 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8504 (= (_2!8246 (h!21275 mapDefault!6707)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8503 true) setRest!8504))))

(declare-fun tp!425226 () Bool)

(declare-fun tp!425224 () Bool)

(declare-fun b!1492682 () Bool)

(assert (=> b!1492682 (= e!954842 (and tp!425224 (inv!21093 (_2!8245 (_1!8246 (h!21275 mapValue!6707)))) e!954846 tp_is_empty!6999 setRes!8503 tp!425226))))

(declare-fun condSetEmpty!8503 () Bool)

(assert (=> b!1492682 (= condSetEmpty!8503 (= (_2!8246 (h!21275 mapValue!6707)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492683 () Bool)

(declare-fun tp!425218 () Bool)

(declare-fun tp!425223 () Bool)

(assert (=> b!1492683 (= e!954843 (and tp!425223 (inv!21093 (_2!8245 (_1!8246 (h!21275 mapDefault!6707)))) e!954847 tp_is_empty!6999 setRes!8504 tp!425218))))

(declare-fun condSetEmpty!8504 () Bool)

(assert (=> b!1492683 (= condSetEmpty!8504 (= (_2!8246 (h!21275 mapDefault!6707)) ((as const (Array Context!1306 Bool)) false)))))

(assert (= (and mapNonEmpty!6698 condMapEmpty!6707) mapIsEmpty!6707))

(assert (= (and mapNonEmpty!6698 (not condMapEmpty!6707)) mapNonEmpty!6707))

(assert (= b!1492682 b!1492679))

(assert (= (and b!1492682 condSetEmpty!8503) setIsEmpty!8504))

(assert (= (and b!1492682 (not condSetEmpty!8503)) setNonEmpty!8503))

(assert (= setNonEmpty!8503 b!1492681))

(assert (= (and mapNonEmpty!6707 ((_ is Cons!15874) mapValue!6707)) b!1492682))

(assert (= b!1492683 b!1492678))

(assert (= (and b!1492683 condSetEmpty!8504) setIsEmpty!8503))

(assert (= (and b!1492683 (not condSetEmpty!8504)) setNonEmpty!8504))

(assert (= setNonEmpty!8504 b!1492680))

(assert (= (and mapNonEmpty!6698 ((_ is Cons!15874) mapDefault!6707)) b!1492683))

(declare-fun m!1743643 () Bool)

(assert (=> setNonEmpty!8503 m!1743643))

(declare-fun m!1743645 () Bool)

(assert (=> mapNonEmpty!6707 m!1743645))

(declare-fun m!1743647 () Bool)

(assert (=> b!1492683 m!1743647))

(declare-fun m!1743649 () Bool)

(assert (=> b!1492682 m!1743649))

(declare-fun m!1743651 () Bool)

(assert (=> setNonEmpty!8504 m!1743651))

(declare-fun e!954850 () Bool)

(assert (=> mapNonEmpty!6698 (= tp!424997 e!954850)))

(declare-fun tp!425228 () Bool)

(declare-fun b!1492684 () Bool)

(declare-fun tp!425230 () Bool)

(declare-fun e!954849 () Bool)

(declare-fun setRes!8505 () Bool)

(assert (=> b!1492684 (= e!954850 (and tp!425228 (inv!21093 (_2!8245 (_1!8246 (h!21275 mapValue!6696)))) e!954849 tp_is_empty!6999 setRes!8505 tp!425230))))

(declare-fun condSetEmpty!8505 () Bool)

(assert (=> b!1492684 (= condSetEmpty!8505 (= (_2!8246 (h!21275 mapValue!6696)) ((as const (Array Context!1306 Bool)) false)))))

(declare-fun b!1492685 () Bool)

(declare-fun e!954848 () Bool)

(declare-fun tp!425231 () Bool)

(assert (=> b!1492685 (= e!954848 tp!425231)))

(declare-fun b!1492686 () Bool)

(declare-fun tp!425232 () Bool)

(assert (=> b!1492686 (= e!954849 tp!425232)))

(declare-fun setIsEmpty!8505 () Bool)

(assert (=> setIsEmpty!8505 setRes!8505))

(declare-fun tp!425229 () Bool)

(declare-fun setNonEmpty!8505 () Bool)

(declare-fun setElem!8505 () Context!1306)

(assert (=> setNonEmpty!8505 (= setRes!8505 (and tp!425229 (inv!21093 setElem!8505) e!954848))))

(declare-fun setRest!8505 () (InoxSet Context!1306))

(assert (=> setNonEmpty!8505 (= (_2!8246 (h!21275 mapValue!6696)) ((_ map or) (store ((as const (Array Context!1306 Bool)) false) setElem!8505 true) setRest!8505))))

(assert (= b!1492684 b!1492686))

(assert (= (and b!1492684 condSetEmpty!8505) setIsEmpty!8505))

(assert (= (and b!1492684 (not condSetEmpty!8505)) setNonEmpty!8505))

(assert (= setNonEmpty!8505 b!1492685))

(assert (= (and mapNonEmpty!6698 ((_ is Cons!15874) mapValue!6696)) b!1492684))

(declare-fun m!1743653 () Bool)

(assert (=> b!1492684 m!1743653))

(declare-fun m!1743655 () Bool)

(assert (=> setNonEmpty!8505 m!1743655))

(check-sat (not b!1492503) (not b!1492429) (not b!1492567) (not b!1492308) (not b!1492658) (not b!1492656) (not b!1492280) (not b!1492612) (not b!1492507) (not b!1492502) (not b!1492424) (not b!1492635) (not b!1492418) (not b!1492398) (not b!1492569) b_and!103813 (not d!438435) (not b_next!39479) (not b!1492190) (not d!438451) (not b!1492320) (not b!1492435) (not d!438445) (not b!1492390) (not b!1492215) (not b!1492535) (not d!438469) (not b!1492240) (not b!1492258) (not setNonEmpty!8481) (not d!438511) (not d!438517) (not b!1492570) (not b!1492639) (not setNonEmpty!8492) (not b!1492543) (not setNonEmpty!8497) (not b!1492596) (not b!1492366) b_and!103809 (not b_next!39465) (not d!438429) (not b!1492662) (not d!438443) (not b!1492630) (not b!1492307) (not b!1492415) (not b!1492462) (not b!1492449) (not b!1492436) (not b!1492564) (not d!438399) (not d!438377) (not d!438415) (not b!1492616) (not b!1492247) (not b!1492597) (not b_next!39467) (not d!438403) (not b!1492297) (not b_next!39463) (not b!1492510) (not d!438531) (not b!1492554) tp_is_empty!6999 (not b!1492498) (not d!438427) (not setNonEmpty!8494) (not d!438365) (not b!1492508) (not d!438523) (not b!1492468) (not d!438467) (not setNonEmpty!8496) (not b!1492678) (not b!1492423) (not d!438461) (not d!438385) (not b!1492681) (not mapNonEmpty!6701) (not b!1492594) (not b!1492582) (not b!1492417) (not mapNonEmpty!6704) (not b!1492521) (not b!1492432) (not d!438409) (not tb!85229) (not b!1492318) (not b!1492252) (not b!1492444) (not b!1492426) (not d!438489) (not b!1492347) (not b!1492493) (not b!1492367) (not b!1492514) (not b!1492305) (not b!1492685) (not b!1492686) (not d!438397) (not b!1492388) (not b!1492505) (not b!1492349) (not d!438513) b_and!103815 (not b!1492634) (not b!1492661) (not d!438439) (not b!1492313) (not b_next!39481) (not b!1492304) (not b!1492322) (not b!1492595) (not b!1492412) (not b!1492632) (not b!1492394) (not d!438405) (not b!1492282) (not b!1492636) (not d!438459) (not d!438379) (not b!1492497) (not b!1492684) (not b!1492261) (not b!1492328) (not b_next!39473) (not b!1492270) (not b!1492340) (not d!438527) (not b!1492281) (not b!1492345) (not b!1492363) (not b!1492303) (not b!1492430) b_and!103817 (not d!438455) (not b_next!39477) (not b!1492633) (not setNonEmpty!8495) (not b!1492464) (not b!1492571) (not b!1492371) (not b!1492553) (not b!1492448) (not d!438507) (not b!1492211) (not b!1492637) (not d!438367) (not setNonEmpty!8474) (not d!438521) (not b!1492249) (not b!1492501) (not b!1492193) (not b!1492344) (not b!1492250) (not setNonEmpty!8504) (not b!1492314) (not d!438401) (not b!1492680) b_and!103801 (not d!438407) (not d!438453) (not b!1492496) (not b!1492411) (not b!1492420) (not b!1492324) (not bm!99013) (not setNonEmpty!8482) (not b!1492341) (not b!1492520) (not setNonEmpty!8475) (not b!1492640) (not b!1492629) (not b!1492392) (not b!1492391) (not b!1492581) (not b!1492416) (not b!1492638) (not b!1492317) (not b!1492495) b_and!103819 (not b!1492518) (not b!1492613) (not b!1492568) (not b!1492515) (not bm!99012) (not b!1492218) (not b!1492536) (not b!1492315) (not b!1492533) (not b!1492509) (not b!1492619) (not b!1492494) (not d!438433) (not b!1492572) (not b!1492319) (not d!438425) (not b!1492326) (not d!438411) (not d!438533) (not b!1492408) (not b!1492679) (not d!438475) (not bm!99016) (not b!1492433) (not setNonEmpty!8486) (not b!1492298) (not b!1492660) b_and!103811 (not b!1492389) (not b!1492409) (not b!1492641) (not setNonEmpty!8493) (not d!438441) (not d!438465) (not b!1492397) (not b!1492310) (not b!1492659) (not b!1492395) (not b!1492614) (not b!1492631) (not d!438487) (not b!1492309) (not b!1492413) (not b!1492513) (not b!1492327) (not b_next!39475) (not d!438373) (not d!438497) (not b!1492592) (not b!1492362) (not b!1492255) (not b!1492350) (not b!1492268) (not b!1492301) (not d!438457) (not b!1492618) (not d!438493) (not b!1492442) (not b!1492642) (not b!1492617) (not setNonEmpty!8503) (not d!438519) (not setNonEmpty!8478) (not b!1492565) (not b!1492302) (not d!438495) (not d!438437) (not d!438449) (not d!438423) (not setNonEmpty!8505) (not d!438509) (not d!438463) (not b!1492555) (not b!1492593) (not b!1492465) (not d!438387) (not b!1492643) (not b!1492663) (not b!1492410) (not b!1492321) (not b!1492422) (not b!1492620) (not b!1492566) (not b!1492425) (not mapNonEmpty!6707) (not d!438483) (not d!438479) (not b!1492615) (not d!438477) (not b!1492682) (not d!438473) (not b_lambda!46733) (not b!1492300) (not b!1492352) (not b!1492419) (not d!438471) (not setNonEmpty!8491) (not setNonEmpty!8498) (not d!438503) (not d!438369) b_and!103821 (not setNonEmpty!8485) (not b!1492239) (not b!1492655) (not d!438447) (not d!438515) (not d!438431) (not b!1492499) (not b_next!39469) (not b!1492279) (not d!438413) b_and!103805 b_and!103807 (not b!1492512) (not b!1492657) (not b!1492445) (not b!1492428) (not b_next!39471) (not b!1492534) (not b!1492325) (not b!1492427) (not b!1492544) (not b!1492330) (not d!438529) (not b!1492683))
(check-sat b_and!103809 (not b_next!39465) (not b_next!39473) b_and!103801 b_and!103819 b_and!103811 (not b_next!39475) b_and!103821 (not b_next!39469) (not b_next!39471) (not b_next!39479) b_and!103813 (not b_next!39467) (not b_next!39463) b_and!103815 (not b_next!39481) b_and!103817 (not b_next!39477) b_and!103805 b_and!103807)
