; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!141038 () Bool)

(assert start!141038)

(declare-fun b!1511563 () Bool)

(declare-fun b_free!39175 () Bool)

(declare-fun b_next!39879 () Bool)

(assert (=> b!1511563 (= b_free!39175 (not b_next!39879))))

(declare-fun tp!432009 () Bool)

(declare-fun b_and!105189 () Bool)

(assert (=> b!1511563 (= tp!432009 b_and!105189)))

(declare-fun b!1511550 () Bool)

(declare-fun b_free!39177 () Bool)

(declare-fun b_next!39881 () Bool)

(assert (=> b!1511550 (= b_free!39177 (not b_next!39881))))

(declare-fun tp!432015 () Bool)

(declare-fun b_and!105191 () Bool)

(assert (=> b!1511550 (= tp!432015 b_and!105191)))

(declare-fun b!1511542 () Bool)

(declare-fun b_free!39179 () Bool)

(declare-fun b_next!39883 () Bool)

(assert (=> b!1511542 (= b_free!39179 (not b_next!39883))))

(declare-fun tp!432008 () Bool)

(declare-fun b_and!105193 () Bool)

(assert (=> b!1511542 (= tp!432008 b_and!105193)))

(declare-fun b_free!39181 () Bool)

(declare-fun b_next!39885 () Bool)

(assert (=> b!1511542 (= b_free!39181 (not b_next!39885))))

(declare-fun tp!432007 () Bool)

(declare-fun b_and!105195 () Bool)

(assert (=> b!1511542 (= tp!432007 b_and!105195)))

(declare-fun b!1511539 () Bool)

(declare-fun b_free!39183 () Bool)

(declare-fun b_next!39887 () Bool)

(assert (=> b!1511539 (= b_free!39183 (not b_next!39887))))

(declare-fun tp!432020 () Bool)

(declare-fun b_and!105197 () Bool)

(assert (=> b!1511539 (= tp!432020 b_and!105197)))

(declare-fun b!1511527 () Bool)

(declare-fun b_free!39185 () Bool)

(declare-fun b_next!39889 () Bool)

(assert (=> b!1511527 (= b_free!39185 (not b_next!39889))))

(declare-fun tp!431998 () Bool)

(declare-fun b_and!105199 () Bool)

(assert (=> b!1511527 (= tp!431998 b_and!105199)))

(declare-fun b!1511533 () Bool)

(declare-fun b_free!39187 () Bool)

(declare-fun b_next!39891 () Bool)

(assert (=> b!1511533 (= b_free!39187 (not b_next!39891))))

(declare-fun tp!432002 () Bool)

(declare-fun b_and!105201 () Bool)

(assert (=> b!1511533 (= tp!432002 b_and!105201)))

(declare-fun b!1511541 () Bool)

(declare-fun b_free!39189 () Bool)

(declare-fun b_next!39893 () Bool)

(assert (=> b!1511541 (= b_free!39189 (not b_next!39893))))

(declare-fun tp!431995 () Bool)

(declare-fun b_and!105203 () Bool)

(assert (=> b!1511541 (= tp!431995 b_and!105203)))

(declare-fun b!1511518 () Bool)

(declare-fun e!966505 () Bool)

(declare-fun tp!431996 () Bool)

(declare-fun mapRes!6949 () Bool)

(assert (=> b!1511518 (= e!966505 (and tp!431996 mapRes!6949))))

(declare-fun condMapEmpty!6948 () Bool)

(declare-datatypes ((C!8488 0))(
  ( (C!8489 (val!4816 Int)) )
))
(declare-datatypes ((Regex!4155 0))(
  ( (ElementMatch!4155 (c!247833 C!8488)) (Concat!7085 (regOne!8822 Regex!4155) (regTwo!8822 Regex!4155)) (EmptyExpr!4155) (Star!4155 (reg!4484 Regex!4155)) (EmptyLang!4155) (Union!4155 (regOne!8823 Regex!4155) (regTwo!8823 Regex!4155)) )
))
(declare-datatypes ((List!16105 0))(
  ( (Nil!16037) (Cons!16037 (h!21438 Regex!4155) (t!139375 List!16105)) )
))
(declare-datatypes ((Context!1346 0))(
  ( (Context!1347 (exprs!1173 List!16105)) )
))
(declare-datatypes ((tuple3!1344 0))(
  ( (tuple3!1345 (_1!8447 Regex!4155) (_2!8447 Context!1346) (_3!1005 C!8488)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14884 0))(
  ( (tuple2!14885 (_1!8448 tuple3!1344) (_2!8448 (InoxSet Context!1346))) )
))
(declare-datatypes ((List!16106 0))(
  ( (Nil!16038) (Cons!16038 (h!21439 tuple2!14884) (t!139376 List!16106)) )
))
(declare-datatypes ((array!5146 0))(
  ( (array!5147 (arr!2296 (Array (_ BitVec 32) List!16106)) (size!12966 (_ BitVec 32))) )
))
(declare-datatypes ((array!5148 0))(
  ( (array!5149 (arr!2297 (Array (_ BitVec 32) (_ BitVec 64))) (size!12967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2932 0))(
  ( (LongMapFixedSize!2933 (defaultEntry!1826 Int) (mask!4632 (_ BitVec 32)) (extraKeys!1713 (_ BitVec 32)) (zeroValue!1723 List!16106) (minValue!1723 List!16106) (_size!3013 (_ BitVec 32)) (_keys!1760 array!5148) (_values!1745 array!5146) (_vacant!1527 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5749 0))(
  ( (Cell!5750 (v!22851 LongMapFixedSize!2932)) )
))
(declare-datatypes ((MutLongMap!1466 0))(
  ( (LongMap!1466 (underlying!3141 Cell!5749)) (MutLongMapExt!1465 (__x!9992 Int)) )
))
(declare-datatypes ((Cell!5751 0))(
  ( (Cell!5752 (v!22852 MutLongMap!1466)) )
))
(declare-datatypes ((Hashable!1410 0))(
  ( (HashableExt!1409 (__x!9993 Int)) )
))
(declare-datatypes ((MutableMap!1410 0))(
  ( (MutableMapExt!1409 (__x!9994 Int)) (HashMap!1410 (underlying!3142 Cell!5751) (hashF!3329 Hashable!1410) (_size!3014 (_ BitVec 32)) (defaultValue!1570 Int)) )
))
(declare-datatypes ((CacheDown!844 0))(
  ( (CacheDown!845 (cache!1791 MutableMap!1410)) )
))
(declare-fun cacheDown!629 () CacheDown!844)

(declare-fun mapDefault!6948 () List!16106)

(assert (=> b!1511518 (= condMapEmpty!6948 (= (arr!2296 (_values!1745 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16106)) mapDefault!6948)))))

(declare-fun b!1511519 () Bool)

(declare-fun res!680236 () Bool)

(declare-fun e!966476 () Bool)

(assert (=> b!1511519 (=> (not res!680236) (not e!966476))))

(declare-datatypes ((List!16107 0))(
  ( (Nil!16039) (Cons!16039 (h!21440 (_ BitVec 16)) (t!139377 List!16107)) )
))
(declare-datatypes ((TokenValue!2930 0))(
  ( (FloatLiteralValue!5860 (text!20955 List!16107)) (TokenValueExt!2929 (__x!9995 Int)) (Broken!14650 (value!90574 List!16107)) (Object!2997) (End!2930) (Def!2930) (Underscore!2930) (Match!2930) (Else!2930) (Error!2930) (Case!2930) (If!2930) (Extends!2930) (Abstract!2930) (Class!2930) (Val!2930) (DelimiterValue!5860 (del!2990 List!16107)) (KeywordValue!2936 (value!90575 List!16107)) (CommentValue!5860 (value!90576 List!16107)) (WhitespaceValue!5860 (value!90577 List!16107)) (IndentationValue!2930 (value!90578 List!16107)) (String!18911) (Int32!2930) (Broken!14651 (value!90579 List!16107)) (Boolean!2931) (Unit!25734) (OperatorValue!2933 (op!2990 List!16107)) (IdentifierValue!5860 (value!90580 List!16107)) (IdentifierValue!5861 (value!90581 List!16107)) (WhitespaceValue!5861 (value!90582 List!16107)) (True!5860) (False!5860) (Broken!14652 (value!90583 List!16107)) (Broken!14653 (value!90584 List!16107)) (True!5861) (RightBrace!2930) (RightBracket!2930) (Colon!2930) (Null!2930) (Comma!2930) (LeftBracket!2930) (False!5861) (LeftBrace!2930) (ImaginaryLiteralValue!2930 (text!20956 List!16107)) (StringLiteralValue!8790 (value!90585 List!16107)) (EOFValue!2930 (value!90586 List!16107)) (IdentValue!2930 (value!90587 List!16107)) (DelimiterValue!5861 (value!90588 List!16107)) (DedentValue!2930 (value!90589 List!16107)) (NewLineValue!2930 (value!90590 List!16107)) (IntegerValue!8790 (value!90591 (_ BitVec 32)) (text!20957 List!16107)) (IntegerValue!8791 (value!90592 Int) (text!20958 List!16107)) (Times!2930) (Or!2930) (Equal!2930) (Minus!2930) (Broken!14654 (value!90593 List!16107)) (And!2930) (Div!2930) (LessEqual!2930) (Mod!2930) (Concat!7086) (Not!2930) (Plus!2930) (SpaceValue!2930 (value!90594 List!16107)) (IntegerValue!8792 (value!90595 Int) (text!20959 List!16107)) (StringLiteralValue!8791 (text!20960 List!16107)) (FloatLiteralValue!5861 (text!20961 List!16107)) (BytesLiteralValue!2930 (value!90596 List!16107)) (CommentValue!5861 (value!90597 List!16107)) (StringLiteralValue!8792 (value!90598 List!16107)) (ErrorTokenValue!2930 (msg!2991 List!16107)) )
))
(declare-datatypes ((List!16108 0))(
  ( (Nil!16040) (Cons!16040 (h!21441 C!8488) (t!139378 List!16108)) )
))
(declare-datatypes ((IArray!10867 0))(
  ( (IArray!10868 (innerList!5491 List!16108)) )
))
(declare-datatypes ((Conc!5431 0))(
  ( (Node!5431 (left!13353 Conc!5431) (right!13683 Conc!5431) (csize!11092 Int) (cheight!5642 Int)) (Leaf!8054 (xs!8212 IArray!10867) (csize!11093 Int)) (Empty!5431) )
))
(declare-datatypes ((BalanceConc!10804 0))(
  ( (BalanceConc!10805 (c!247834 Conc!5431)) )
))
(declare-datatypes ((String!18912 0))(
  ( (String!18913 (value!90599 String)) )
))
(declare-datatypes ((TokenValueInjection!5520 0))(
  ( (TokenValueInjection!5521 (toValue!4189 Int) (toChars!4048 Int)) )
))
(declare-datatypes ((Rule!5480 0))(
  ( (Rule!5481 (regex!2840 Regex!4155) (tag!3104 String!18912) (isSeparator!2840 Bool) (transformation!2840 TokenValueInjection!5520)) )
))
(declare-datatypes ((Token!5342 0))(
  ( (Token!5343 (value!90600 TokenValue!2930) (rule!4633 Rule!5480) (size!12968 Int) (originalCharacters!3702 List!16108)) )
))
(declare-datatypes ((List!16109 0))(
  ( (Nil!16041) (Cons!16041 (h!21442 Token!5342) (t!139379 List!16109)) )
))
(declare-datatypes ((IArray!10869 0))(
  ( (IArray!10870 (innerList!5492 List!16109)) )
))
(declare-datatypes ((Conc!5432 0))(
  ( (Node!5432 (left!13354 Conc!5432) (right!13684 Conc!5432) (csize!11094 Int) (cheight!5643 Int)) (Leaf!8055 (xs!8213 IArray!10869) (csize!11095 Int)) (Empty!5432) )
))
(declare-datatypes ((BalanceConc!10806 0))(
  ( (BalanceConc!10807 (c!247835 Conc!5432)) )
))
(declare-datatypes ((tuple2!14886 0))(
  ( (tuple2!14887 (_1!8449 BalanceConc!10806) (_2!8449 BalanceConc!10804)) )
))
(declare-fun lt!525627 () tuple2!14886)

(declare-fun lt!525637 () tuple2!14886)

(declare-fun list!6336 (BalanceConc!10804) List!16108)

(assert (=> b!1511519 (= res!680236 (= (list!6336 (_2!8449 lt!525627)) (list!6336 (_2!8449 lt!525637))))))

(declare-fun b!1511520 () Bool)

(declare-fun e!966489 () Bool)

(declare-fun e!966507 () Bool)

(declare-datatypes ((tuple2!14888 0))(
  ( (tuple2!14889 (_1!8450 Context!1346) (_2!8450 C!8488)) )
))
(declare-datatypes ((tuple2!14890 0))(
  ( (tuple2!14891 (_1!8451 tuple2!14888) (_2!8451 (InoxSet Context!1346))) )
))
(declare-datatypes ((List!16110 0))(
  ( (Nil!16042) (Cons!16042 (h!21443 tuple2!14890) (t!139380 List!16110)) )
))
(declare-datatypes ((array!5150 0))(
  ( (array!5151 (arr!2298 (Array (_ BitVec 32) List!16110)) (size!12969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2934 0))(
  ( (LongMapFixedSize!2935 (defaultEntry!1827 Int) (mask!4633 (_ BitVec 32)) (extraKeys!1714 (_ BitVec 32)) (zeroValue!1724 List!16110) (minValue!1724 List!16110) (_size!3015 (_ BitVec 32)) (_keys!1761 array!5148) (_values!1746 array!5150) (_vacant!1528 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5753 0))(
  ( (Cell!5754 (v!22853 LongMapFixedSize!2934)) )
))
(declare-datatypes ((MutLongMap!1467 0))(
  ( (LongMap!1467 (underlying!3143 Cell!5753)) (MutLongMapExt!1466 (__x!9996 Int)) )
))
(declare-fun lt!525639 () MutLongMap!1467)

(get-info :version)

(assert (=> b!1511520 (= e!966489 (and e!966507 ((_ is LongMap!1467) lt!525639)))))

(declare-datatypes ((Hashable!1411 0))(
  ( (HashableExt!1410 (__x!9997 Int)) )
))
(declare-datatypes ((Cell!5755 0))(
  ( (Cell!5756 (v!22854 MutLongMap!1467)) )
))
(declare-datatypes ((MutableMap!1411 0))(
  ( (MutableMapExt!1410 (__x!9998 Int)) (HashMap!1411 (underlying!3144 Cell!5755) (hashF!3330 Hashable!1411) (_size!3016 (_ BitVec 32)) (defaultValue!1571 Int)) )
))
(declare-datatypes ((CacheUp!840 0))(
  ( (CacheUp!841 (cache!1792 MutableMap!1411)) )
))
(declare-fun cacheUp!616 () CacheUp!840)

(assert (=> b!1511520 (= lt!525639 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))

(declare-fun b!1511521 () Bool)

(declare-fun e!966508 () Bool)

(declare-fun e!966482 () Bool)

(assert (=> b!1511521 (= e!966508 e!966482)))

(declare-fun res!680235 () Bool)

(assert (=> b!1511521 (=> res!680235 e!966482)))

(declare-fun lt!525632 () List!16108)

(declare-fun lt!525620 () List!16108)

(declare-fun isSuffix!299 (List!16108 List!16108) Bool)

(assert (=> b!1511521 (= res!680235 (not (isSuffix!299 lt!525632 lt!525620)))))

(declare-fun lt!525640 () List!16108)

(declare-fun ++!4341 (List!16108 List!16108) List!16108)

(assert (=> b!1511521 (isSuffix!299 lt!525632 (++!4341 lt!525640 lt!525632))))

(declare-datatypes ((Unit!25735 0))(
  ( (Unit!25736) )
))
(declare-fun lt!525625 () Unit!25735)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!277 (List!16108 List!16108) Unit!25735)

(assert (=> b!1511521 (= lt!525625 (lemmaConcatTwoListThenFSndIsSuffix!277 lt!525640 lt!525632))))

(declare-fun lt!525636 () BalanceConc!10804)

(assert (=> b!1511521 (= lt!525640 (list!6336 lt!525636))))

(declare-fun e!966472 () Bool)

(assert (=> b!1511521 e!966472))

(declare-fun c!247831 () Bool)

(declare-datatypes ((tuple2!14892 0))(
  ( (tuple2!14893 (_1!8452 Token!5342) (_2!8452 BalanceConc!10804)) )
))
(declare-datatypes ((Option!2925 0))(
  ( (None!2924) (Some!2924 (v!22855 tuple2!14892)) )
))
(declare-fun lt!525635 () Option!2925)

(assert (=> b!1511521 (= c!247831 ((_ is Some!2924) lt!525635))))

(declare-datatypes ((LexerInterface!2493 0))(
  ( (LexerInterfaceExt!2490 (__x!9999 Int)) (Lexer!2491) )
))
(declare-fun thiss!13241 () LexerInterface!2493)

(declare-datatypes ((List!16111 0))(
  ( (Nil!16043) (Cons!16043 (h!21444 Rule!5480) (t!139381 List!16111)) )
))
(declare-fun rules!1640 () List!16111)

(declare-fun lt!525610 () tuple2!14886)

(declare-fun lexRec!328 (LexerInterface!2493 List!16111 BalanceConc!10804) tuple2!14886)

(assert (=> b!1511521 (= lt!525610 (lexRec!328 thiss!13241 rules!1640 lt!525636))))

(declare-fun maxPrefixZipperSequence!586 (LexerInterface!2493 List!16111 BalanceConc!10804) Option!2925)

(assert (=> b!1511521 (= lt!525635 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 lt!525636))))

(declare-fun treated!70 () BalanceConc!10804)

(declare-fun lt!525628 () BalanceConc!10804)

(declare-fun ++!4342 (BalanceConc!10804 BalanceConc!10804) BalanceConc!10804)

(assert (=> b!1511521 (= lt!525636 (++!4342 treated!70 lt!525628))))

(declare-fun lt!525609 () List!16108)

(declare-fun lt!525634 () List!16109)

(declare-datatypes ((tuple2!14894 0))(
  ( (tuple2!14895 (_1!8453 List!16109) (_2!8453 List!16108)) )
))
(declare-fun lexList!744 (LexerInterface!2493 List!16111 List!16108) tuple2!14894)

(assert (=> b!1511521 (= (lexList!744 thiss!13241 rules!1640 lt!525609) (tuple2!14895 lt!525634 Nil!16040))))

(declare-fun lt!525624 () List!16109)

(declare-fun lt!525631 () Unit!25735)

(declare-fun lt!525613 () tuple2!14886)

(declare-fun lemmaLexThenLexPrefix!226 (LexerInterface!2493 List!16111 List!16108 List!16108 List!16109 List!16109 List!16108) Unit!25735)

(assert (=> b!1511521 (= lt!525631 (lemmaLexThenLexPrefix!226 thiss!13241 rules!1640 lt!525609 lt!525632 lt!525634 lt!525624 (list!6336 (_2!8449 lt!525613))))))

(declare-fun acc!392 () BalanceConc!10806)

(declare-datatypes ((tuple3!1346 0))(
  ( (tuple3!1347 (_1!8454 (InoxSet Context!1346)) (_2!8454 Int) (_3!1006 Int)) )
))
(declare-datatypes ((tuple2!14896 0))(
  ( (tuple2!14897 (_1!8455 tuple3!1346) (_2!8455 Int)) )
))
(declare-datatypes ((List!16112 0))(
  ( (Nil!16044) (Cons!16044 (h!21445 tuple2!14896) (t!139382 List!16112)) )
))
(declare-datatypes ((array!5152 0))(
  ( (array!5153 (arr!2299 (Array (_ BitVec 32) List!16112)) (size!12970 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2936 0))(
  ( (LongMapFixedSize!2937 (defaultEntry!1828 Int) (mask!4634 (_ BitVec 32)) (extraKeys!1715 (_ BitVec 32)) (zeroValue!1725 List!16112) (minValue!1725 List!16112) (_size!3017 (_ BitVec 32)) (_keys!1762 array!5148) (_values!1747 array!5152) (_vacant!1529 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5757 0))(
  ( (Cell!5758 (v!22856 LongMapFixedSize!2936)) )
))
(declare-datatypes ((MutLongMap!1468 0))(
  ( (LongMap!1468 (underlying!3145 Cell!5757)) (MutLongMapExt!1467 (__x!10000 Int)) )
))
(declare-datatypes ((Cell!5759 0))(
  ( (Cell!5760 (v!22857 MutLongMap!1468)) )
))
(declare-datatypes ((Hashable!1412 0))(
  ( (HashableExt!1411 (__x!10001 Int)) )
))
(declare-datatypes ((MutableMap!1412 0))(
  ( (MutableMapExt!1411 (__x!10002 Int)) (HashMap!1412 (underlying!3146 Cell!5759) (hashF!3331 Hashable!1412) (_size!3018 (_ BitVec 32)) (defaultValue!1572 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!264 0))(
  ( (CacheFurthestNullable!265 (cache!1793 MutableMap!1412) (totalInput!2291 BalanceConc!10804)) )
))
(declare-datatypes ((tuple4!666 0))(
  ( (tuple4!667 (_1!8456 Option!2925) (_2!8456 CacheUp!840) (_3!1007 CacheDown!844) (_4!333 CacheFurthestNullable!264)) )
))
(declare-fun lt!525630 () tuple4!666)

(declare-fun list!6337 (BalanceConc!10806) List!16109)

(declare-fun append!497 (BalanceConc!10806 Token!5342) BalanceConc!10806)

(assert (=> b!1511521 (= lt!525634 (list!6337 (append!497 acc!392 (_1!8452 (v!22855 (_1!8456 lt!525630))))))))

(declare-fun lt!525614 () List!16109)

(declare-fun lt!525617 () List!16109)

(declare-fun ++!4343 (List!16109 List!16109) List!16109)

(assert (=> b!1511521 (= (++!4343 (++!4343 lt!525614 lt!525617) lt!525624) (++!4343 lt!525614 (++!4343 lt!525617 lt!525624)))))

(declare-fun lt!525611 () Unit!25735)

(declare-fun lemmaConcatAssociativity!936 (List!16109 List!16109 List!16109) Unit!25735)

(assert (=> b!1511521 (= lt!525611 (lemmaConcatAssociativity!936 lt!525614 lt!525617 lt!525624))))

(assert (=> b!1511521 (= lt!525624 (list!6337 (_1!8449 lt!525613)))))

(assert (=> b!1511521 (= lt!525617 (Cons!16041 (_1!8452 (v!22855 (_1!8456 lt!525630))) Nil!16041))))

(declare-fun e!966470 () tuple2!14886)

(assert (=> b!1511521 (= lt!525637 e!966470)))

(declare-fun c!247832 () Bool)

(declare-fun lt!525615 () Option!2925)

(assert (=> b!1511521 (= c!247832 ((_ is Some!2924) lt!525615))))

(declare-fun input!1102 () BalanceConc!10804)

(assert (=> b!1511521 (= lt!525615 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!525616 () List!16108)

(declare-fun lt!525622 () List!16108)

(assert (=> b!1511521 (= (++!4341 lt!525609 lt!525632) (++!4341 lt!525616 (++!4341 lt!525622 lt!525632)))))

(assert (=> b!1511521 (= lt!525609 (++!4341 lt!525616 lt!525622))))

(declare-fun lt!525629 () Unit!25735)

(declare-fun lemmaConcatAssociativity!937 (List!16108 List!16108 List!16108) Unit!25735)

(assert (=> b!1511521 (= lt!525629 (lemmaConcatAssociativity!937 lt!525616 lt!525622 lt!525632))))

(assert (=> b!1511521 (= lt!525632 (list!6336 (_2!8452 (v!22855 (_1!8456 lt!525630)))))))

(assert (=> b!1511521 (= lt!525622 (list!6336 lt!525628))))

(declare-fun charsOf!1627 (Token!5342) BalanceConc!10804)

(assert (=> b!1511521 (= lt!525628 (charsOf!1627 (_1!8452 (v!22855 (_1!8456 lt!525630)))))))

(assert (=> b!1511521 (= lt!525613 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 (_1!8456 lt!525630)))))))

(declare-fun b!1511522 () Bool)

(declare-fun e!966501 () Bool)

(declare-fun tp!432011 () Bool)

(declare-fun inv!21263 (Conc!5431) Bool)

(assert (=> b!1511522 (= e!966501 (and (inv!21263 (c!247834 treated!70)) tp!432011))))

(declare-fun mapIsEmpty!6948 () Bool)

(declare-fun mapRes!6948 () Bool)

(assert (=> mapIsEmpty!6948 mapRes!6948))

(declare-fun b!1511523 () Bool)

(declare-fun res!680240 () Bool)

(assert (=> b!1511523 (=> (not res!680240) (not e!966476))))

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!264)

(declare-fun valid!1169 (CacheFurthestNullable!264) Bool)

(assert (=> b!1511523 (= res!680240 (valid!1169 cacheFurthestNullable!64))))

(declare-fun mapNonEmpty!6948 () Bool)

(declare-fun mapRes!6950 () Bool)

(declare-fun tp!432012 () Bool)

(declare-fun tp!432013 () Bool)

(assert (=> mapNonEmpty!6948 (= mapRes!6950 (and tp!432012 tp!432013))))

(declare-fun mapRest!6950 () (Array (_ BitVec 32) List!16110))

(declare-fun mapValue!6948 () List!16110)

(declare-fun mapKey!6949 () (_ BitVec 32))

(assert (=> mapNonEmpty!6948 (= (arr!2298 (_values!1746 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) (store mapRest!6950 mapKey!6949 mapValue!6948))))

(declare-fun mapNonEmpty!6949 () Bool)

(declare-fun tp!432004 () Bool)

(declare-fun tp!431992 () Bool)

(assert (=> mapNonEmpty!6949 (= mapRes!6948 (and tp!432004 tp!431992))))

(declare-fun mapRest!6949 () (Array (_ BitVec 32) List!16112))

(declare-fun mapValue!6950 () List!16112)

(declare-fun mapKey!6948 () (_ BitVec 32))

(assert (=> mapNonEmpty!6949 (= (arr!2299 (_values!1747 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) (store mapRest!6949 mapKey!6948 mapValue!6950))))

(declare-fun b!1511524 () Bool)

(assert (=> b!1511524 (= e!966470 (tuple2!14887 (BalanceConc!10807 Empty!5432) input!1102))))

(declare-fun b!1511525 () Bool)

(declare-fun e!966493 () Bool)

(declare-fun e!966473 () Bool)

(assert (=> b!1511525 (= e!966493 e!966473)))

(declare-fun mapIsEmpty!6950 () Bool)

(assert (=> mapIsEmpty!6950 mapRes!6949))

(declare-fun b!1511526 () Bool)

(assert (=> b!1511526 (= e!966472 (= lt!525610 (tuple2!14887 (BalanceConc!10807 Empty!5432) lt!525636)))))

(declare-fun e!966468 () Bool)

(declare-fun e!966469 () Bool)

(assert (=> b!1511527 (= e!966468 (and e!966469 tp!431998))))

(declare-fun b!1511528 () Bool)

(declare-fun res!680229 () Bool)

(assert (=> b!1511528 (=> res!680229 e!966482)))

(assert (=> b!1511528 (= res!680229 (not (valid!1169 (_4!333 lt!525630))))))

(declare-fun b!1511529 () Bool)

(declare-fun res!680234 () Bool)

(assert (=> b!1511529 (=> (not res!680234) (not e!966476))))

(declare-fun valid!1170 (CacheUp!840) Bool)

(assert (=> b!1511529 (= res!680234 (valid!1170 cacheUp!616))))

(declare-fun b!1511530 () Bool)

(declare-fun e!966504 () Bool)

(declare-fun tp!431993 () Bool)

(assert (=> b!1511530 (= e!966504 (and (inv!21263 (c!247834 (totalInput!2291 cacheFurthestNullable!64))) tp!431993))))

(declare-fun b!1511531 () Bool)

(declare-fun e!966490 () Bool)

(declare-fun tp!431999 () Bool)

(declare-fun inv!21264 (Conc!5432) Bool)

(assert (=> b!1511531 (= e!966490 (and (inv!21264 (c!247835 acc!392)) tp!431999))))

(declare-fun b!1511532 () Bool)

(declare-fun res!680242 () Bool)

(declare-fun e!966487 () Bool)

(assert (=> b!1511532 (=> (not res!680242) (not e!966487))))

(declare-fun rulesInvariant!2267 (LexerInterface!2493 List!16111) Bool)

(assert (=> b!1511532 (= res!680242 (rulesInvariant!2267 thiss!13241 rules!1640))))

(declare-fun e!966499 () Bool)

(assert (=> b!1511533 (= e!966499 (and e!966489 tp!432002))))

(declare-fun b!1511534 () Bool)

(declare-fun e!966492 () Bool)

(assert (=> b!1511534 (= e!966492 e!966499)))

(declare-fun b!1511535 () Bool)

(declare-fun e!966484 () Bool)

(assert (=> b!1511535 (= e!966484 e!966493)))

(declare-fun b!1511536 () Bool)

(declare-fun e!966503 () Bool)

(assert (=> b!1511536 (= e!966503 e!966508)))

(declare-fun res!680231 () Bool)

(assert (=> b!1511536 (=> res!680231 e!966508)))

(assert (=> b!1511536 (= res!680231 (not ((_ is Some!2924) (_1!8456 lt!525630))))))

(declare-fun totalInput!458 () BalanceConc!10804)

(declare-fun maxPrefixZipperSequenceV3Mem!23 (LexerInterface!2493 List!16111 BalanceConc!10804 BalanceConc!10804 CacheUp!840 CacheDown!844 CacheFurthestNullable!264) tuple4!666)

(assert (=> b!1511536 (= lt!525630 (maxPrefixZipperSequenceV3Mem!23 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun mapNonEmpty!6950 () Bool)

(declare-fun tp!432021 () Bool)

(declare-fun tp!432003 () Bool)

(assert (=> mapNonEmpty!6950 (= mapRes!6949 (and tp!432021 tp!432003))))

(declare-fun mapRest!6948 () (Array (_ BitVec 32) List!16106))

(declare-fun mapValue!6949 () List!16106)

(declare-fun mapKey!6950 () (_ BitVec 32))

(assert (=> mapNonEmpty!6950 (= (arr!2296 (_values!1745 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) (store mapRest!6948 mapKey!6950 mapValue!6949))))

(declare-fun b!1511537 () Bool)

(declare-fun e!966475 () Bool)

(declare-fun tp!432010 () Bool)

(assert (=> b!1511537 (= e!966475 (and tp!432010 mapRes!6948))))

(declare-fun condMapEmpty!6949 () Bool)

(declare-fun mapDefault!6949 () List!16112)

(assert (=> b!1511537 (= condMapEmpty!6949 (= (arr!2299 (_values!1747 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16112)) mapDefault!6949)))))

(declare-fun b!1511538 () Bool)

(declare-fun e!966491 () Bool)

(assert (=> b!1511538 (= e!966507 e!966491)))

(declare-fun tp!432017 () Bool)

(declare-fun tp!432016 () Bool)

(declare-fun array_inv!1658 (array!5148) Bool)

(declare-fun array_inv!1659 (array!5152) Bool)

(assert (=> b!1511539 (= e!966473 (and tp!432020 tp!432017 tp!432016 (array_inv!1658 (_keys!1762 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) (array_inv!1659 (_values!1747 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) e!966475))))

(declare-fun mapIsEmpty!6949 () Bool)

(assert (=> mapIsEmpty!6949 mapRes!6950))

(declare-fun res!680239 () Bool)

(assert (=> start!141038 (=> (not res!680239) (not e!966487))))

(assert (=> start!141038 (= res!680239 ((_ is Lexer!2491) thiss!13241))))

(assert (=> start!141038 e!966487))

(declare-fun inv!21265 (BalanceConc!10806) Bool)

(assert (=> start!141038 (and (inv!21265 acc!392) e!966490)))

(declare-fun inv!21266 (CacheUp!840) Bool)

(assert (=> start!141038 (and (inv!21266 cacheUp!616) e!966492)))

(declare-fun e!966486 () Bool)

(declare-fun inv!21267 (CacheDown!844) Bool)

(assert (=> start!141038 (and (inv!21267 cacheDown!629) e!966486)))

(declare-fun e!966481 () Bool)

(declare-fun inv!21268 (BalanceConc!10804) Bool)

(assert (=> start!141038 (and (inv!21268 input!1102) e!966481)))

(assert (=> start!141038 (and (inv!21268 treated!70) e!966501)))

(assert (=> start!141038 true))

(declare-fun e!966474 () Bool)

(assert (=> start!141038 e!966474))

(declare-fun e!966485 () Bool)

(declare-fun inv!21269 (CacheFurthestNullable!264) Bool)

(assert (=> start!141038 (and (inv!21269 cacheFurthestNullable!64) e!966485)))

(declare-fun e!966479 () Bool)

(assert (=> start!141038 (and (inv!21268 totalInput!458) e!966479)))

(declare-fun b!1511540 () Bool)

(declare-fun e!966494 () Bool)

(assert (=> b!1511540 (= e!966491 e!966494)))

(declare-fun e!966500 () Bool)

(declare-fun e!966497 () Bool)

(assert (=> b!1511541 (= e!966500 (and e!966497 tp!431995))))

(declare-fun e!966502 () Bool)

(assert (=> b!1511542 (= e!966502 (and tp!432008 tp!432007))))

(declare-fun b!1511543 () Bool)

(declare-fun e!966496 () Bool)

(declare-fun tp!432005 () Bool)

(declare-fun inv!21261 (String!18912) Bool)

(declare-fun inv!21270 (TokenValueInjection!5520) Bool)

(assert (=> b!1511543 (= e!966496 (and tp!432005 (inv!21261 (tag!3104 (h!21444 rules!1640))) (inv!21270 (transformation!2840 (h!21444 rules!1640))) e!966502))))

(declare-fun b!1511544 () Bool)

(declare-fun tp!432000 () Bool)

(assert (=> b!1511544 (= e!966479 (and (inv!21263 (c!247834 totalInput!458)) tp!432000))))

(declare-fun b!1511545 () Bool)

(declare-fun e!966471 () Bool)

(declare-fun e!966478 () Bool)

(assert (=> b!1511545 (= e!966471 e!966478)))

(declare-fun res!680237 () Bool)

(assert (=> b!1511545 (=> (not res!680237) (not e!966478))))

(declare-fun lt!525612 () List!16109)

(assert (=> b!1511545 (= res!680237 (= lt!525612 lt!525614))))

(assert (=> b!1511545 (= lt!525614 (list!6337 acc!392))))

(declare-fun lt!525618 () tuple2!14886)

(assert (=> b!1511545 (= lt!525612 (list!6337 (_1!8449 lt!525618)))))

(assert (=> b!1511545 (= lt!525618 (lexRec!328 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1511546 () Bool)

(declare-fun e!966506 () Bool)

(declare-fun tp!432001 () Bool)

(assert (=> b!1511546 (= e!966506 (and tp!432001 mapRes!6950))))

(declare-fun condMapEmpty!6950 () Bool)

(declare-fun mapDefault!6950 () List!16110)

(assert (=> b!1511546 (= condMapEmpty!6950 (= (arr!2298 (_values!1746 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16110)) mapDefault!6950)))))

(declare-fun b!1511547 () Bool)

(declare-fun e!966495 () Bool)

(declare-fun e!966498 () Bool)

(assert (=> b!1511547 (= e!966495 e!966498)))

(declare-fun b!1511548 () Bool)

(declare-fun res!680243 () Bool)

(assert (=> b!1511548 (=> (not res!680243) (not e!966487))))

(declare-fun isEmpty!9919 (List!16111) Bool)

(assert (=> b!1511548 (= res!680243 (not (isEmpty!9919 rules!1640)))))

(declare-fun b!1511549 () Bool)

(assert (=> b!1511549 (= e!966482 (valid!1170 (_2!8456 lt!525630)))))

(declare-fun tp!432006 () Bool)

(declare-fun tp!432019 () Bool)

(declare-fun array_inv!1660 (array!5150) Bool)

(assert (=> b!1511550 (= e!966494 (and tp!432015 tp!432006 tp!432019 (array_inv!1658 (_keys!1761 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) (array_inv!1660 (_values!1746 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) e!966506))))

(declare-fun b!1511551 () Bool)

(declare-fun res!680232 () Bool)

(assert (=> b!1511551 (=> (not res!680232) (not e!966476))))

(declare-fun valid!1171 (CacheDown!844) Bool)

(assert (=> b!1511551 (= res!680232 (valid!1171 cacheDown!629))))

(declare-fun b!1511552 () Bool)

(declare-fun lt!525638 () tuple2!14886)

(declare-fun prepend!461 (BalanceConc!10806 Token!5342) BalanceConc!10806)

(assert (=> b!1511552 (= e!966470 (tuple2!14887 (prepend!461 (_1!8449 lt!525638) (_1!8452 (v!22855 lt!525615))) (_2!8449 lt!525638)))))

(assert (=> b!1511552 (= lt!525638 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525615))))))

(declare-fun b!1511553 () Bool)

(declare-fun lt!525621 () MutLongMap!1468)

(assert (=> b!1511553 (= e!966497 (and e!966484 ((_ is LongMap!1468) lt!525621)))))

(assert (=> b!1511553 (= lt!525621 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))

(declare-fun b!1511554 () Bool)

(declare-fun res!680228 () Bool)

(assert (=> b!1511554 (=> (not res!680228) (not e!966476))))

(assert (=> b!1511554 (= res!680228 (= (totalInput!2291 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1511555 () Bool)

(declare-fun lt!525626 () tuple2!14886)

(assert (=> b!1511555 (= e!966472 (= lt!525610 (tuple2!14887 (prepend!461 (_1!8449 lt!525626) (_1!8452 (v!22855 lt!525635))) (_2!8449 lt!525626))))))

(assert (=> b!1511555 (= lt!525626 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525635))))))

(declare-fun b!1511556 () Bool)

(assert (=> b!1511556 (= e!966478 e!966476)))

(declare-fun res!680241 () Bool)

(assert (=> b!1511556 (=> (not res!680241) (not e!966476))))

(declare-fun ++!4344 (BalanceConc!10806 BalanceConc!10806) BalanceConc!10806)

(assert (=> b!1511556 (= res!680241 (= (list!6337 (_1!8449 lt!525627)) (list!6337 (++!4344 acc!392 (_1!8449 lt!525637)))))))

(assert (=> b!1511556 (= lt!525637 (lexRec!328 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1511556 (= lt!525627 (lexRec!328 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1511557 () Bool)

(declare-fun tp!431994 () Bool)

(assert (=> b!1511557 (= e!966481 (and (inv!21263 (c!247834 input!1102)) tp!431994))))

(declare-fun b!1511558 () Bool)

(assert (=> b!1511558 (= e!966476 (not e!966503))))

(declare-fun res!680230 () Bool)

(assert (=> b!1511558 (=> res!680230 e!966503)))

(declare-fun lt!525633 () List!16108)

(assert (=> b!1511558 (= res!680230 (not (isSuffix!299 lt!525633 lt!525620)))))

(declare-fun lt!525623 () List!16108)

(assert (=> b!1511558 (isSuffix!299 lt!525633 lt!525623)))

(declare-fun lt!525641 () Unit!25735)

(assert (=> b!1511558 (= lt!525641 (lemmaConcatTwoListThenFSndIsSuffix!277 lt!525616 lt!525633))))

(declare-fun b!1511559 () Bool)

(declare-fun e!966483 () Bool)

(assert (=> b!1511559 (= e!966498 e!966483)))

(declare-fun b!1511560 () Bool)

(declare-fun res!680233 () Bool)

(assert (=> b!1511560 (=> (not res!680233) (not e!966478))))

(declare-fun isEmpty!9920 (List!16108) Bool)

(assert (=> b!1511560 (= res!680233 (isEmpty!9920 (list!6336 (_2!8449 lt!525618))))))

(declare-fun b!1511561 () Bool)

(declare-fun lt!525619 () MutLongMap!1466)

(assert (=> b!1511561 (= e!966469 (and e!966495 ((_ is LongMap!1466) lt!525619)))))

(assert (=> b!1511561 (= lt!525619 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))

(declare-fun b!1511562 () Bool)

(assert (=> b!1511562 (= e!966485 (and e!966500 (inv!21268 (totalInput!2291 cacheFurthestNullable!64)) e!966504))))

(declare-fun tp!432018 () Bool)

(declare-fun tp!431997 () Bool)

(declare-fun array_inv!1661 (array!5146) Bool)

(assert (=> b!1511563 (= e!966483 (and tp!432009 tp!431997 tp!432018 (array_inv!1658 (_keys!1760 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) (array_inv!1661 (_values!1745 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) e!966505))))

(declare-fun b!1511564 () Bool)

(assert (=> b!1511564 (= e!966487 e!966471)))

(declare-fun res!680238 () Bool)

(assert (=> b!1511564 (=> (not res!680238) (not e!966471))))

(assert (=> b!1511564 (= res!680238 (= lt!525620 lt!525623))))

(assert (=> b!1511564 (= lt!525623 (++!4341 lt!525616 lt!525633))))

(assert (=> b!1511564 (= lt!525620 (list!6336 totalInput!458))))

(assert (=> b!1511564 (= lt!525633 (list!6336 input!1102))))

(assert (=> b!1511564 (= lt!525616 (list!6336 treated!70))))

(declare-fun b!1511565 () Bool)

(assert (=> b!1511565 (= e!966486 e!966468)))

(declare-fun b!1511566 () Bool)

(declare-fun tp!432014 () Bool)

(assert (=> b!1511566 (= e!966474 (and e!966496 tp!432014))))

(assert (= (and start!141038 res!680239) b!1511548))

(assert (= (and b!1511548 res!680243) b!1511532))

(assert (= (and b!1511532 res!680242) b!1511564))

(assert (= (and b!1511564 res!680238) b!1511545))

(assert (= (and b!1511545 res!680237) b!1511560))

(assert (= (and b!1511560 res!680233) b!1511556))

(assert (= (and b!1511556 res!680241) b!1511519))

(assert (= (and b!1511519 res!680236) b!1511529))

(assert (= (and b!1511529 res!680234) b!1511551))

(assert (= (and b!1511551 res!680232) b!1511523))

(assert (= (and b!1511523 res!680240) b!1511554))

(assert (= (and b!1511554 res!680228) b!1511558))

(assert (= (and b!1511558 (not res!680230)) b!1511536))

(assert (= (and b!1511536 (not res!680231)) b!1511521))

(assert (= (and b!1511521 c!247832) b!1511552))

(assert (= (and b!1511521 (not c!247832)) b!1511524))

(assert (= (and b!1511521 c!247831) b!1511555))

(assert (= (and b!1511521 (not c!247831)) b!1511526))

(assert (= (and b!1511521 (not res!680235)) b!1511528))

(assert (= (and b!1511528 (not res!680229)) b!1511549))

(assert (= start!141038 b!1511531))

(assert (= (and b!1511546 condMapEmpty!6950) mapIsEmpty!6949))

(assert (= (and b!1511546 (not condMapEmpty!6950)) mapNonEmpty!6948))

(assert (= b!1511550 b!1511546))

(assert (= b!1511540 b!1511550))

(assert (= b!1511538 b!1511540))

(assert (= (and b!1511520 ((_ is LongMap!1467) (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))) b!1511538))

(assert (= b!1511533 b!1511520))

(assert (= (and b!1511534 ((_ is HashMap!1411) (cache!1792 cacheUp!616))) b!1511533))

(assert (= start!141038 b!1511534))

(assert (= (and b!1511518 condMapEmpty!6948) mapIsEmpty!6950))

(assert (= (and b!1511518 (not condMapEmpty!6948)) mapNonEmpty!6950))

(assert (= b!1511563 b!1511518))

(assert (= b!1511559 b!1511563))

(assert (= b!1511547 b!1511559))

(assert (= (and b!1511561 ((_ is LongMap!1466) (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))) b!1511547))

(assert (= b!1511527 b!1511561))

(assert (= (and b!1511565 ((_ is HashMap!1410) (cache!1791 cacheDown!629))) b!1511527))

(assert (= start!141038 b!1511565))

(assert (= start!141038 b!1511557))

(assert (= start!141038 b!1511522))

(assert (= b!1511543 b!1511542))

(assert (= b!1511566 b!1511543))

(assert (= (and start!141038 ((_ is Cons!16043) rules!1640)) b!1511566))

(assert (= (and b!1511537 condMapEmpty!6949) mapIsEmpty!6948))

(assert (= (and b!1511537 (not condMapEmpty!6949)) mapNonEmpty!6949))

(assert (= b!1511539 b!1511537))

(assert (= b!1511525 b!1511539))

(assert (= b!1511535 b!1511525))

(assert (= (and b!1511553 ((_ is LongMap!1468) (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))) b!1511535))

(assert (= b!1511541 b!1511553))

(assert (= (and b!1511562 ((_ is HashMap!1412) (cache!1793 cacheFurthestNullable!64))) b!1511541))

(assert (= b!1511562 b!1511530))

(assert (= start!141038 b!1511562))

(assert (= start!141038 b!1511544))

(declare-fun m!1775252 () Bool)

(assert (=> mapNonEmpty!6949 m!1775252))

(declare-fun m!1775254 () Bool)

(assert (=> b!1511563 m!1775254))

(declare-fun m!1775256 () Bool)

(assert (=> b!1511563 m!1775256))

(declare-fun m!1775258 () Bool)

(assert (=> b!1511556 m!1775258))

(declare-fun m!1775260 () Bool)

(assert (=> b!1511556 m!1775260))

(declare-fun m!1775262 () Bool)

(assert (=> b!1511556 m!1775262))

(declare-fun m!1775264 () Bool)

(assert (=> b!1511556 m!1775264))

(assert (=> b!1511556 m!1775262))

(declare-fun m!1775266 () Bool)

(assert (=> b!1511556 m!1775266))

(declare-fun m!1775268 () Bool)

(assert (=> b!1511531 m!1775268))

(declare-fun m!1775270 () Bool)

(assert (=> b!1511558 m!1775270))

(declare-fun m!1775272 () Bool)

(assert (=> b!1511558 m!1775272))

(declare-fun m!1775274 () Bool)

(assert (=> b!1511558 m!1775274))

(declare-fun m!1775276 () Bool)

(assert (=> b!1511532 m!1775276))

(declare-fun m!1775278 () Bool)

(assert (=> b!1511564 m!1775278))

(declare-fun m!1775280 () Bool)

(assert (=> b!1511564 m!1775280))

(declare-fun m!1775282 () Bool)

(assert (=> b!1511564 m!1775282))

(declare-fun m!1775284 () Bool)

(assert (=> b!1511564 m!1775284))

(declare-fun m!1775286 () Bool)

(assert (=> mapNonEmpty!6948 m!1775286))

(declare-fun m!1775288 () Bool)

(assert (=> b!1511530 m!1775288))

(declare-fun m!1775290 () Bool)

(assert (=> b!1511560 m!1775290))

(assert (=> b!1511560 m!1775290))

(declare-fun m!1775292 () Bool)

(assert (=> b!1511560 m!1775292))

(declare-fun m!1775294 () Bool)

(assert (=> b!1511555 m!1775294))

(declare-fun m!1775296 () Bool)

(assert (=> b!1511555 m!1775296))

(declare-fun m!1775298 () Bool)

(assert (=> b!1511552 m!1775298))

(declare-fun m!1775300 () Bool)

(assert (=> b!1511552 m!1775300))

(declare-fun m!1775302 () Bool)

(assert (=> b!1511548 m!1775302))

(declare-fun m!1775304 () Bool)

(assert (=> b!1511536 m!1775304))

(declare-fun m!1775306 () Bool)

(assert (=> b!1511523 m!1775306))

(declare-fun m!1775308 () Bool)

(assert (=> b!1511545 m!1775308))

(declare-fun m!1775310 () Bool)

(assert (=> b!1511545 m!1775310))

(declare-fun m!1775312 () Bool)

(assert (=> b!1511545 m!1775312))

(declare-fun m!1775314 () Bool)

(assert (=> b!1511519 m!1775314))

(declare-fun m!1775316 () Bool)

(assert (=> b!1511519 m!1775316))

(declare-fun m!1775318 () Bool)

(assert (=> b!1511522 m!1775318))

(declare-fun m!1775320 () Bool)

(assert (=> b!1511528 m!1775320))

(declare-fun m!1775322 () Bool)

(assert (=> b!1511529 m!1775322))

(declare-fun m!1775324 () Bool)

(assert (=> b!1511562 m!1775324))

(declare-fun m!1775326 () Bool)

(assert (=> mapNonEmpty!6950 m!1775326))

(declare-fun m!1775328 () Bool)

(assert (=> b!1511549 m!1775328))

(declare-fun m!1775330 () Bool)

(assert (=> b!1511557 m!1775330))

(declare-fun m!1775332 () Bool)

(assert (=> b!1511551 m!1775332))

(declare-fun m!1775334 () Bool)

(assert (=> start!141038 m!1775334))

(declare-fun m!1775336 () Bool)

(assert (=> start!141038 m!1775336))

(declare-fun m!1775338 () Bool)

(assert (=> start!141038 m!1775338))

(declare-fun m!1775340 () Bool)

(assert (=> start!141038 m!1775340))

(declare-fun m!1775342 () Bool)

(assert (=> start!141038 m!1775342))

(declare-fun m!1775344 () Bool)

(assert (=> start!141038 m!1775344))

(declare-fun m!1775346 () Bool)

(assert (=> start!141038 m!1775346))

(declare-fun m!1775348 () Bool)

(assert (=> b!1511544 m!1775348))

(declare-fun m!1775350 () Bool)

(assert (=> b!1511521 m!1775350))

(declare-fun m!1775352 () Bool)

(assert (=> b!1511521 m!1775352))

(declare-fun m!1775354 () Bool)

(assert (=> b!1511521 m!1775354))

(declare-fun m!1775356 () Bool)

(assert (=> b!1511521 m!1775356))

(declare-fun m!1775358 () Bool)

(assert (=> b!1511521 m!1775358))

(declare-fun m!1775360 () Bool)

(assert (=> b!1511521 m!1775360))

(declare-fun m!1775362 () Bool)

(assert (=> b!1511521 m!1775362))

(declare-fun m!1775364 () Bool)

(assert (=> b!1511521 m!1775364))

(declare-fun m!1775366 () Bool)

(assert (=> b!1511521 m!1775366))

(declare-fun m!1775368 () Bool)

(assert (=> b!1511521 m!1775368))

(declare-fun m!1775370 () Bool)

(assert (=> b!1511521 m!1775370))

(declare-fun m!1775372 () Bool)

(assert (=> b!1511521 m!1775372))

(declare-fun m!1775374 () Bool)

(assert (=> b!1511521 m!1775374))

(declare-fun m!1775376 () Bool)

(assert (=> b!1511521 m!1775376))

(declare-fun m!1775378 () Bool)

(assert (=> b!1511521 m!1775378))

(declare-fun m!1775380 () Bool)

(assert (=> b!1511521 m!1775380))

(declare-fun m!1775382 () Bool)

(assert (=> b!1511521 m!1775382))

(declare-fun m!1775384 () Bool)

(assert (=> b!1511521 m!1775384))

(declare-fun m!1775386 () Bool)

(assert (=> b!1511521 m!1775386))

(assert (=> b!1511521 m!1775352))

(declare-fun m!1775388 () Bool)

(assert (=> b!1511521 m!1775388))

(assert (=> b!1511521 m!1775376))

(declare-fun m!1775390 () Bool)

(assert (=> b!1511521 m!1775390))

(assert (=> b!1511521 m!1775370))

(declare-fun m!1775392 () Bool)

(assert (=> b!1511521 m!1775392))

(declare-fun m!1775394 () Bool)

(assert (=> b!1511521 m!1775394))

(declare-fun m!1775396 () Bool)

(assert (=> b!1511521 m!1775396))

(declare-fun m!1775398 () Bool)

(assert (=> b!1511521 m!1775398))

(declare-fun m!1775400 () Bool)

(assert (=> b!1511521 m!1775400))

(declare-fun m!1775402 () Bool)

(assert (=> b!1511521 m!1775402))

(declare-fun m!1775404 () Bool)

(assert (=> b!1511521 m!1775404))

(assert (=> b!1511521 m!1775384))

(assert (=> b!1511521 m!1775388))

(declare-fun m!1775406 () Bool)

(assert (=> b!1511521 m!1775406))

(assert (=> b!1511521 m!1775400))

(declare-fun m!1775408 () Bool)

(assert (=> b!1511543 m!1775408))

(declare-fun m!1775410 () Bool)

(assert (=> b!1511543 m!1775410))

(declare-fun m!1775412 () Bool)

(assert (=> b!1511550 m!1775412))

(declare-fun m!1775414 () Bool)

(assert (=> b!1511550 m!1775414))

(declare-fun m!1775416 () Bool)

(assert (=> b!1511539 m!1775416))

(declare-fun m!1775418 () Bool)

(assert (=> b!1511539 m!1775418))

(check-sat (not b_next!39881) (not b!1511549) (not b!1511537) (not b!1511556) (not b!1511551) (not b!1511552) (not b!1511536) (not b_next!39885) (not b!1511529) (not b!1511519) (not b!1511528) (not b!1511544) (not b!1511564) (not b_next!39887) (not b_next!39883) (not mapNonEmpty!6948) (not b!1511548) (not b!1511546) (not b!1511539) b_and!105193 (not b_next!39891) (not b!1511543) (not b!1511531) (not b_next!39889) (not b!1511555) (not b!1511532) (not b!1511523) (not b!1511530) (not b!1511560) (not b!1511545) b_and!105199 b_and!105189 (not mapNonEmpty!6949) b_and!105201 (not b!1511521) (not b!1511518) (not b!1511550) (not start!141038) (not b_next!39879) (not b!1511558) b_and!105195 b_and!105197 (not b!1511563) (not b!1511557) b_and!105191 (not mapNonEmpty!6950) (not b!1511522) (not b_next!39893) (not b!1511566) b_and!105203 (not b!1511562))
(check-sat (not b_next!39881) (not b_next!39887) (not b_next!39883) b_and!105193 (not b_next!39891) (not b_next!39889) (not b_next!39885) b_and!105201 (not b_next!39879) b_and!105191 (not b_next!39893) b_and!105203 b_and!105199 b_and!105189 b_and!105195 b_and!105197)
(get-model)

(declare-fun b!1511591 () Bool)

(declare-fun res!680273 () Bool)

(declare-fun e!966524 () Bool)

(assert (=> b!1511591 (=> (not res!680273) (not e!966524))))

(declare-fun e!966526 () Bool)

(assert (=> b!1511591 (= res!680273 e!966526)))

(declare-fun res!680266 () Bool)

(assert (=> b!1511591 (=> res!680266 e!966526)))

(declare-fun lt!525667 () tuple4!666)

(declare-fun isDefined!2351 (Option!2925) Bool)

(assert (=> b!1511591 (= res!680266 (not (isDefined!2351 (_1!8456 lt!525667))))))

(declare-fun b!1511592 () Bool)

(assert (=> b!1511592 (= e!966524 (= (totalInput!2291 (_4!333 lt!525667)) totalInput!458))))

(declare-fun b!1511593 () Bool)

(declare-fun res!680274 () Bool)

(assert (=> b!1511593 (=> (not res!680274) (not e!966524))))

(declare-fun e!966527 () Bool)

(assert (=> b!1511593 (= res!680274 e!966527)))

(declare-fun res!680269 () Bool)

(assert (=> b!1511593 (=> res!680269 e!966527)))

(assert (=> b!1511593 (= res!680269 (not (isDefined!2351 (_1!8456 lt!525667))))))

(declare-fun b!1511594 () Bool)

(declare-fun res!680270 () Bool)

(assert (=> b!1511594 (=> (not res!680270) (not e!966524))))

(assert (=> b!1511594 (= res!680270 (valid!1171 (_3!1007 lt!525667)))))

(declare-fun b!1511595 () Bool)

(declare-datatypes ((tuple4!668 0))(
  ( (tuple4!669 (_1!8457 Option!2925) (_2!8457 CacheUp!840) (_3!1008 CacheFurthestNullable!264) (_4!334 CacheDown!844)) )
))
(declare-fun e!966525 () tuple4!668)

(declare-fun lt!525662 () tuple4!666)

(declare-fun lt!525665 () tuple4!666)

(assert (=> b!1511595 (= e!966525 (tuple4!669 (ite (and ((_ is None!2924) (_1!8456 lt!525662)) ((_ is None!2924) (_1!8456 lt!525665))) None!2924 (ite ((_ is None!2924) (_1!8456 lt!525665)) (_1!8456 lt!525662) (ite ((_ is None!2924) (_1!8456 lt!525662)) (_1!8456 lt!525665) (ite (>= (size!12968 (_1!8452 (v!22855 (_1!8456 lt!525662)))) (size!12968 (_1!8452 (v!22855 (_1!8456 lt!525665))))) (_1!8456 lt!525662) (_1!8456 lt!525665))))) (_2!8456 lt!525665) (_4!333 lt!525665) (_3!1007 lt!525665)))))

(declare-fun call!100322 () tuple4!666)

(assert (=> b!1511595 (= lt!525662 call!100322)))

(assert (=> b!1511595 (= lt!525665 (maxPrefixZipperSequenceV3Mem!23 thiss!13241 (t!139381 rules!1640) input!1102 totalInput!458 (_2!8456 lt!525662) (_3!1007 lt!525662) (_4!333 lt!525662)))))

(declare-fun b!1511596 () Bool)

(declare-fun lt!525668 () tuple4!666)

(assert (=> b!1511596 (= e!966525 (tuple4!669 (_1!8456 lt!525668) (_2!8456 lt!525668) (_4!333 lt!525668) (_3!1007 lt!525668)))))

(assert (=> b!1511596 (= lt!525668 call!100322)))

(declare-fun b!1511598 () Bool)

(declare-fun e!966522 () Bool)

(declare-fun get!4732 (Option!2925) tuple2!14892)

(declare-datatypes ((tuple2!14898 0))(
  ( (tuple2!14899 (_1!8458 Token!5342) (_2!8458 List!16108)) )
))
(declare-datatypes ((Option!2926 0))(
  ( (None!2925) (Some!2925 (v!22860 tuple2!14898)) )
))
(declare-fun get!4733 (Option!2926) tuple2!14898)

(declare-fun maxPrefixZipper!258 (LexerInterface!2493 List!16111 List!16108) Option!2926)

(assert (=> b!1511598 (= e!966522 (= (list!6336 (_2!8452 (get!4732 (_1!8456 lt!525667)))) (_2!8458 (get!4733 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun b!1511599 () Bool)

(declare-fun res!680272 () Bool)

(assert (=> b!1511599 (=> (not res!680272) (not e!966524))))

(assert (=> b!1511599 (= res!680272 (valid!1170 (_2!8456 lt!525667)))))

(declare-fun b!1511600 () Bool)

(assert (=> b!1511600 (= e!966527 e!966522)))

(declare-fun res!680267 () Bool)

(assert (=> b!1511600 (=> (not res!680267) (not e!966522))))

(assert (=> b!1511600 (= res!680267 (= (_1!8452 (get!4732 (_1!8456 lt!525667))) (_1!8458 (get!4733 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun b!1511601 () Bool)

(declare-fun res!680271 () Bool)

(assert (=> b!1511601 (=> (not res!680271) (not e!966524))))

(assert (=> b!1511601 (= res!680271 (valid!1169 (_4!333 lt!525667)))))

(declare-fun e!966523 () Bool)

(declare-fun b!1511602 () Bool)

(declare-fun maxPrefix!1207 (LexerInterface!2493 List!16111 List!16108) Option!2926)

(assert (=> b!1511602 (= e!966523 (= (list!6336 (_2!8452 (get!4732 (_1!8456 lt!525667)))) (_2!8458 (get!4733 (maxPrefix!1207 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun bm!100317 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!10 (LexerInterface!2493 Rule!5480 BalanceConc!10804 BalanceConc!10804 CacheUp!840 CacheDown!844 CacheFurthestNullable!264) tuple4!666)

(assert (=> bm!100317 (= call!100322 (maxPrefixOneRuleZipperSequenceV3Mem!10 thiss!13241 (h!21444 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1511597 () Bool)

(assert (=> b!1511597 (= e!966526 e!966523)))

(declare-fun res!680268 () Bool)

(assert (=> b!1511597 (=> (not res!680268) (not e!966523))))

(assert (=> b!1511597 (= res!680268 (= (_1!8452 (get!4732 (_1!8456 lt!525667))) (_1!8458 (get!4733 (maxPrefix!1207 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun d!447629 () Bool)

(assert (=> d!447629 e!966524))

(declare-fun res!680275 () Bool)

(assert (=> d!447629 (=> (not res!680275) (not e!966524))))

(declare-fun isDefined!2352 (Option!2926) Bool)

(assert (=> d!447629 (= res!680275 (= (isDefined!2351 (_1!8456 lt!525667)) (isDefined!2352 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 input!1102)))))))

(declare-fun lt!525661 () tuple4!668)

(assert (=> d!447629 (= lt!525667 (tuple4!667 (_1!8457 lt!525661) (_2!8457 lt!525661) (_4!334 lt!525661) (_3!1008 lt!525661)))))

(assert (=> d!447629 (= lt!525661 e!966525)))

(declare-fun c!247838 () Bool)

(assert (=> d!447629 (= c!247838 (and ((_ is Cons!16043) rules!1640) ((_ is Nil!16043) (t!139381 rules!1640))))))

(declare-fun lt!525664 () Unit!25735)

(declare-fun lt!525666 () Unit!25735)

(assert (=> d!447629 (= lt!525664 lt!525666)))

(declare-fun lt!525663 () List!16108)

(declare-fun lt!525660 () List!16108)

(declare-fun isPrefix!1217 (List!16108 List!16108) Bool)

(assert (=> d!447629 (isPrefix!1217 lt!525663 lt!525660)))

(declare-fun lemmaIsPrefixRefl!847 (List!16108 List!16108) Unit!25735)

(assert (=> d!447629 (= lt!525666 (lemmaIsPrefixRefl!847 lt!525663 lt!525660))))

(assert (=> d!447629 (= lt!525660 (list!6336 input!1102))))

(assert (=> d!447629 (= lt!525663 (list!6336 input!1102))))

(declare-fun rulesValidInductive!855 (LexerInterface!2493 List!16111) Bool)

(assert (=> d!447629 (rulesValidInductive!855 thiss!13241 rules!1640)))

(assert (=> d!447629 (= (maxPrefixZipperSequenceV3Mem!23 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!525667)))

(assert (= (and d!447629 c!247838) b!1511596))

(assert (= (and d!447629 (not c!247838)) b!1511595))

(assert (= (or b!1511596 b!1511595) bm!100317))

(assert (= (and d!447629 res!680275) b!1511593))

(assert (= (and b!1511593 (not res!680269)) b!1511600))

(assert (= (and b!1511600 res!680267) b!1511598))

(assert (= (and b!1511593 res!680274) b!1511591))

(assert (= (and b!1511591 (not res!680266)) b!1511597))

(assert (= (and b!1511597 res!680268) b!1511602))

(assert (= (and b!1511591 res!680273) b!1511599))

(assert (= (and b!1511599 res!680272) b!1511594))

(assert (= (and b!1511594 res!680270) b!1511601))

(assert (= (and b!1511601 res!680271) b!1511592))

(declare-fun m!1775420 () Bool)

(assert (=> bm!100317 m!1775420))

(declare-fun m!1775422 () Bool)

(assert (=> b!1511593 m!1775422))

(declare-fun m!1775424 () Bool)

(assert (=> b!1511599 m!1775424))

(declare-fun m!1775426 () Bool)

(assert (=> d!447629 m!1775426))

(declare-fun m!1775428 () Bool)

(assert (=> d!447629 m!1775428))

(declare-fun m!1775430 () Bool)

(assert (=> d!447629 m!1775430))

(assert (=> d!447629 m!1775282))

(assert (=> d!447629 m!1775426))

(declare-fun m!1775432 () Bool)

(assert (=> d!447629 m!1775432))

(assert (=> d!447629 m!1775282))

(assert (=> d!447629 m!1775422))

(declare-fun m!1775434 () Bool)

(assert (=> d!447629 m!1775434))

(declare-fun m!1775436 () Bool)

(assert (=> b!1511601 m!1775436))

(declare-fun m!1775438 () Bool)

(assert (=> b!1511597 m!1775438))

(assert (=> b!1511597 m!1775282))

(assert (=> b!1511597 m!1775282))

(declare-fun m!1775440 () Bool)

(assert (=> b!1511597 m!1775440))

(assert (=> b!1511597 m!1775440))

(declare-fun m!1775442 () Bool)

(assert (=> b!1511597 m!1775442))

(declare-fun m!1775444 () Bool)

(assert (=> b!1511595 m!1775444))

(assert (=> b!1511591 m!1775422))

(declare-fun m!1775446 () Bool)

(assert (=> b!1511598 m!1775446))

(assert (=> b!1511598 m!1775282))

(assert (=> b!1511598 m!1775426))

(assert (=> b!1511598 m!1775426))

(declare-fun m!1775448 () Bool)

(assert (=> b!1511598 m!1775448))

(assert (=> b!1511598 m!1775282))

(assert (=> b!1511598 m!1775438))

(declare-fun m!1775450 () Bool)

(assert (=> b!1511594 m!1775450))

(assert (=> b!1511600 m!1775438))

(assert (=> b!1511600 m!1775282))

(assert (=> b!1511600 m!1775282))

(assert (=> b!1511600 m!1775426))

(assert (=> b!1511600 m!1775426))

(assert (=> b!1511600 m!1775448))

(assert (=> b!1511602 m!1775446))

(assert (=> b!1511602 m!1775282))

(assert (=> b!1511602 m!1775440))

(assert (=> b!1511602 m!1775440))

(assert (=> b!1511602 m!1775442))

(assert (=> b!1511602 m!1775282))

(assert (=> b!1511602 m!1775438))

(assert (=> b!1511536 d!447629))

(declare-fun d!447631 () Bool)

(declare-fun c!247841 () Bool)

(assert (=> d!447631 (= c!247841 ((_ is Node!5431) (c!247834 input!1102)))))

(declare-fun e!966532 () Bool)

(assert (=> d!447631 (= (inv!21263 (c!247834 input!1102)) e!966532)))

(declare-fun b!1511609 () Bool)

(declare-fun inv!21271 (Conc!5431) Bool)

(assert (=> b!1511609 (= e!966532 (inv!21271 (c!247834 input!1102)))))

(declare-fun b!1511610 () Bool)

(declare-fun e!966533 () Bool)

(assert (=> b!1511610 (= e!966532 e!966533)))

(declare-fun res!680278 () Bool)

(assert (=> b!1511610 (= res!680278 (not ((_ is Leaf!8054) (c!247834 input!1102))))))

(assert (=> b!1511610 (=> res!680278 e!966533)))

(declare-fun b!1511611 () Bool)

(declare-fun inv!21272 (Conc!5431) Bool)

(assert (=> b!1511611 (= e!966533 (inv!21272 (c!247834 input!1102)))))

(assert (= (and d!447631 c!247841) b!1511609))

(assert (= (and d!447631 (not c!247841)) b!1511610))

(assert (= (and b!1511610 (not res!680278)) b!1511611))

(declare-fun m!1775452 () Bool)

(assert (=> b!1511609 m!1775452))

(declare-fun m!1775454 () Bool)

(assert (=> b!1511611 m!1775454))

(assert (=> b!1511557 d!447631))

(declare-fun d!447633 () Bool)

(declare-fun e!966536 () Bool)

(assert (=> d!447633 e!966536))

(declare-fun res!680281 () Bool)

(assert (=> d!447633 (=> (not res!680281) (not e!966536))))

(declare-fun isBalanced!1605 (Conc!5432) Bool)

(declare-fun prepend!462 (Conc!5432 Token!5342) Conc!5432)

(assert (=> d!447633 (= res!680281 (isBalanced!1605 (prepend!462 (c!247835 (_1!8449 lt!525626)) (_1!8452 (v!22855 lt!525635)))))))

(declare-fun lt!525671 () BalanceConc!10806)

(assert (=> d!447633 (= lt!525671 (BalanceConc!10807 (prepend!462 (c!247835 (_1!8449 lt!525626)) (_1!8452 (v!22855 lt!525635)))))))

(assert (=> d!447633 (= (prepend!461 (_1!8449 lt!525626) (_1!8452 (v!22855 lt!525635))) lt!525671)))

(declare-fun b!1511614 () Bool)

(assert (=> b!1511614 (= e!966536 (= (list!6337 lt!525671) (Cons!16041 (_1!8452 (v!22855 lt!525635)) (list!6337 (_1!8449 lt!525626)))))))

(assert (= (and d!447633 res!680281) b!1511614))

(declare-fun m!1775456 () Bool)

(assert (=> d!447633 m!1775456))

(assert (=> d!447633 m!1775456))

(declare-fun m!1775458 () Bool)

(assert (=> d!447633 m!1775458))

(declare-fun m!1775460 () Bool)

(assert (=> b!1511614 m!1775460))

(declare-fun m!1775462 () Bool)

(assert (=> b!1511614 m!1775462))

(assert (=> b!1511555 d!447633))

(declare-fun b!1511630 () Bool)

(declare-fun res!680290 () Bool)

(declare-fun e!966546 () Bool)

(assert (=> b!1511630 (=> (not res!680290) (not e!966546))))

(declare-fun lt!525678 () tuple2!14886)

(assert (=> b!1511630 (= res!680290 (= (list!6337 (_1!8449 lt!525678)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 (_2!8452 (v!22855 lt!525635)))))))))

(declare-fun b!1511631 () Bool)

(assert (=> b!1511631 (= e!966546 (= (list!6336 (_2!8449 lt!525678)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 (_2!8452 (v!22855 lt!525635)))))))))

(declare-fun b!1511632 () Bool)

(declare-fun e!966545 () Bool)

(declare-fun e!966548 () Bool)

(assert (=> b!1511632 (= e!966545 e!966548)))

(declare-fun res!680289 () Bool)

(declare-fun size!12971 (BalanceConc!10804) Int)

(assert (=> b!1511632 (= res!680289 (< (size!12971 (_2!8449 lt!525678)) (size!12971 (_2!8452 (v!22855 lt!525635)))))))

(assert (=> b!1511632 (=> (not res!680289) (not e!966548))))

(declare-fun b!1511629 () Bool)

(assert (=> b!1511629 (= e!966545 (= (list!6336 (_2!8449 lt!525678)) (list!6336 (_2!8452 (v!22855 lt!525635)))))))

(declare-fun d!447635 () Bool)

(assert (=> d!447635 e!966546))

(declare-fun res!680288 () Bool)

(assert (=> d!447635 (=> (not res!680288) (not e!966546))))

(assert (=> d!447635 (= res!680288 e!966545)))

(declare-fun c!247847 () Bool)

(declare-fun size!12972 (BalanceConc!10806) Int)

(assert (=> d!447635 (= c!247847 (> (size!12972 (_1!8449 lt!525678)) 0))))

(declare-fun e!966547 () tuple2!14886)

(assert (=> d!447635 (= lt!525678 e!966547)))

(declare-fun c!247848 () Bool)

(declare-fun lt!525680 () Option!2925)

(assert (=> d!447635 (= c!247848 ((_ is Some!2924) lt!525680))))

(assert (=> d!447635 (= lt!525680 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525635))))))

(assert (=> d!447635 (= (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525635))) lt!525678)))

(declare-fun b!1511633 () Bool)

(declare-fun isEmpty!9921 (BalanceConc!10806) Bool)

(assert (=> b!1511633 (= e!966548 (not (isEmpty!9921 (_1!8449 lt!525678))))))

(declare-fun b!1511634 () Bool)

(assert (=> b!1511634 (= e!966547 (tuple2!14887 (BalanceConc!10807 Empty!5432) (_2!8452 (v!22855 lt!525635))))))

(declare-fun b!1511635 () Bool)

(declare-fun lt!525679 () tuple2!14886)

(assert (=> b!1511635 (= e!966547 (tuple2!14887 (prepend!461 (_1!8449 lt!525679) (_1!8452 (v!22855 lt!525680))) (_2!8449 lt!525679)))))

(assert (=> b!1511635 (= lt!525679 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525680))))))

(assert (= (and d!447635 c!247848) b!1511635))

(assert (= (and d!447635 (not c!247848)) b!1511634))

(assert (= (and d!447635 c!247847) b!1511632))

(assert (= (and d!447635 (not c!247847)) b!1511629))

(assert (= (and b!1511632 res!680289) b!1511633))

(assert (= (and d!447635 res!680288) b!1511630))

(assert (= (and b!1511630 res!680290) b!1511631))

(declare-fun m!1775464 () Bool)

(assert (=> b!1511632 m!1775464))

(declare-fun m!1775466 () Bool)

(assert (=> b!1511632 m!1775466))

(declare-fun m!1775468 () Bool)

(assert (=> b!1511633 m!1775468))

(declare-fun m!1775470 () Bool)

(assert (=> d!447635 m!1775470))

(declare-fun m!1775472 () Bool)

(assert (=> d!447635 m!1775472))

(declare-fun m!1775474 () Bool)

(assert (=> b!1511635 m!1775474))

(declare-fun m!1775476 () Bool)

(assert (=> b!1511635 m!1775476))

(declare-fun m!1775478 () Bool)

(assert (=> b!1511629 m!1775478))

(declare-fun m!1775480 () Bool)

(assert (=> b!1511629 m!1775480))

(declare-fun m!1775482 () Bool)

(assert (=> b!1511630 m!1775482))

(assert (=> b!1511630 m!1775480))

(assert (=> b!1511630 m!1775480))

(declare-fun m!1775484 () Bool)

(assert (=> b!1511630 m!1775484))

(assert (=> b!1511631 m!1775478))

(assert (=> b!1511631 m!1775480))

(assert (=> b!1511631 m!1775480))

(assert (=> b!1511631 m!1775484))

(assert (=> b!1511555 d!447635))

(declare-fun d!447637 () Bool)

(declare-fun list!6338 (Conc!5431) List!16108)

(assert (=> d!447637 (= (list!6336 (_2!8449 lt!525627)) (list!6338 (c!247834 (_2!8449 lt!525627))))))

(declare-fun bs!364369 () Bool)

(assert (= bs!364369 d!447637))

(declare-fun m!1775486 () Bool)

(assert (=> bs!364369 m!1775486))

(assert (=> b!1511519 d!447637))

(declare-fun d!447639 () Bool)

(assert (=> d!447639 (= (list!6336 (_2!8449 lt!525637)) (list!6338 (c!247834 (_2!8449 lt!525637))))))

(declare-fun bs!364370 () Bool)

(assert (= bs!364370 d!447639))

(declare-fun m!1775488 () Bool)

(assert (=> bs!364370 m!1775488))

(assert (=> b!1511519 d!447639))

(declare-fun d!447641 () Bool)

(declare-fun list!6339 (Conc!5432) List!16109)

(assert (=> d!447641 (= (list!6337 (_1!8449 lt!525627)) (list!6339 (c!247835 (_1!8449 lt!525627))))))

(declare-fun bs!364371 () Bool)

(assert (= bs!364371 d!447641))

(declare-fun m!1775490 () Bool)

(assert (=> bs!364371 m!1775490))

(assert (=> b!1511556 d!447641))

(declare-fun d!447643 () Bool)

(assert (=> d!447643 (= (list!6337 (++!4344 acc!392 (_1!8449 lt!525637))) (list!6339 (c!247835 (++!4344 acc!392 (_1!8449 lt!525637)))))))

(declare-fun bs!364372 () Bool)

(assert (= bs!364372 d!447643))

(declare-fun m!1775492 () Bool)

(assert (=> bs!364372 m!1775492))

(assert (=> b!1511556 d!447643))

(declare-fun b!1511637 () Bool)

(declare-fun res!680293 () Bool)

(declare-fun e!966550 () Bool)

(assert (=> b!1511637 (=> (not res!680293) (not e!966550))))

(declare-fun lt!525681 () tuple2!14886)

(assert (=> b!1511637 (= res!680293 (= (list!6337 (_1!8449 lt!525681)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 totalInput!458)))))))

(declare-fun b!1511638 () Bool)

(assert (=> b!1511638 (= e!966550 (= (list!6336 (_2!8449 lt!525681)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 totalInput!458)))))))

(declare-fun b!1511639 () Bool)

(declare-fun e!966549 () Bool)

(declare-fun e!966552 () Bool)

(assert (=> b!1511639 (= e!966549 e!966552)))

(declare-fun res!680292 () Bool)

(assert (=> b!1511639 (= res!680292 (< (size!12971 (_2!8449 lt!525681)) (size!12971 totalInput!458)))))

(assert (=> b!1511639 (=> (not res!680292) (not e!966552))))

(declare-fun b!1511636 () Bool)

(assert (=> b!1511636 (= e!966549 (= (list!6336 (_2!8449 lt!525681)) (list!6336 totalInput!458)))))

(declare-fun d!447645 () Bool)

(assert (=> d!447645 e!966550))

(declare-fun res!680291 () Bool)

(assert (=> d!447645 (=> (not res!680291) (not e!966550))))

(assert (=> d!447645 (= res!680291 e!966549)))

(declare-fun c!247849 () Bool)

(assert (=> d!447645 (= c!247849 (> (size!12972 (_1!8449 lt!525681)) 0))))

(declare-fun e!966551 () tuple2!14886)

(assert (=> d!447645 (= lt!525681 e!966551)))

(declare-fun c!247850 () Bool)

(declare-fun lt!525683 () Option!2925)

(assert (=> d!447645 (= c!247850 ((_ is Some!2924) lt!525683))))

(assert (=> d!447645 (= lt!525683 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!447645 (= (lexRec!328 thiss!13241 rules!1640 totalInput!458) lt!525681)))

(declare-fun b!1511640 () Bool)

(assert (=> b!1511640 (= e!966552 (not (isEmpty!9921 (_1!8449 lt!525681))))))

(declare-fun b!1511641 () Bool)

(assert (=> b!1511641 (= e!966551 (tuple2!14887 (BalanceConc!10807 Empty!5432) totalInput!458))))

(declare-fun b!1511642 () Bool)

(declare-fun lt!525682 () tuple2!14886)

(assert (=> b!1511642 (= e!966551 (tuple2!14887 (prepend!461 (_1!8449 lt!525682) (_1!8452 (v!22855 lt!525683))) (_2!8449 lt!525682)))))

(assert (=> b!1511642 (= lt!525682 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525683))))))

(assert (= (and d!447645 c!247850) b!1511642))

(assert (= (and d!447645 (not c!247850)) b!1511641))

(assert (= (and d!447645 c!247849) b!1511639))

(assert (= (and d!447645 (not c!247849)) b!1511636))

(assert (= (and b!1511639 res!680292) b!1511640))

(assert (= (and d!447645 res!680291) b!1511637))

(assert (= (and b!1511637 res!680293) b!1511638))

(declare-fun m!1775494 () Bool)

(assert (=> b!1511639 m!1775494))

(declare-fun m!1775496 () Bool)

(assert (=> b!1511639 m!1775496))

(declare-fun m!1775498 () Bool)

(assert (=> b!1511640 m!1775498))

(declare-fun m!1775500 () Bool)

(assert (=> d!447645 m!1775500))

(declare-fun m!1775502 () Bool)

(assert (=> d!447645 m!1775502))

(declare-fun m!1775504 () Bool)

(assert (=> b!1511642 m!1775504))

(declare-fun m!1775506 () Bool)

(assert (=> b!1511642 m!1775506))

(declare-fun m!1775508 () Bool)

(assert (=> b!1511636 m!1775508))

(assert (=> b!1511636 m!1775280))

(declare-fun m!1775510 () Bool)

(assert (=> b!1511637 m!1775510))

(assert (=> b!1511637 m!1775280))

(assert (=> b!1511637 m!1775280))

(declare-fun m!1775512 () Bool)

(assert (=> b!1511637 m!1775512))

(assert (=> b!1511638 m!1775508))

(assert (=> b!1511638 m!1775280))

(assert (=> b!1511638 m!1775280))

(assert (=> b!1511638 m!1775512))

(assert (=> b!1511556 d!447645))

(declare-fun lt!525686 () BalanceConc!10806)

(declare-fun b!1511654 () Bool)

(declare-fun e!966555 () Bool)

(assert (=> b!1511654 (= e!966555 (= (list!6337 lt!525686) (++!4343 (list!6337 acc!392) (list!6337 (_1!8449 lt!525637)))))))

(declare-fun b!1511653 () Bool)

(declare-fun res!680305 () Bool)

(assert (=> b!1511653 (=> (not res!680305) (not e!966555))))

(declare-fun height!807 (Conc!5432) Int)

(declare-fun ++!4345 (Conc!5432 Conc!5432) Conc!5432)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1511653 (= res!680305 (>= (height!807 (++!4345 (c!247835 acc!392) (c!247835 (_1!8449 lt!525637)))) (max!0 (height!807 (c!247835 acc!392)) (height!807 (c!247835 (_1!8449 lt!525637))))))))

(declare-fun b!1511651 () Bool)

(declare-fun res!680304 () Bool)

(assert (=> b!1511651 (=> (not res!680304) (not e!966555))))

(assert (=> b!1511651 (= res!680304 (isBalanced!1605 (++!4345 (c!247835 acc!392) (c!247835 (_1!8449 lt!525637)))))))

(declare-fun b!1511652 () Bool)

(declare-fun res!680303 () Bool)

(assert (=> b!1511652 (=> (not res!680303) (not e!966555))))

(assert (=> b!1511652 (= res!680303 (<= (height!807 (++!4345 (c!247835 acc!392) (c!247835 (_1!8449 lt!525637)))) (+ (max!0 (height!807 (c!247835 acc!392)) (height!807 (c!247835 (_1!8449 lt!525637)))) 1)))))

(declare-fun d!447647 () Bool)

(assert (=> d!447647 e!966555))

(declare-fun res!680302 () Bool)

(assert (=> d!447647 (=> (not res!680302) (not e!966555))))

(declare-fun appendAssocInst!365 (Conc!5432 Conc!5432) Bool)

(assert (=> d!447647 (= res!680302 (appendAssocInst!365 (c!247835 acc!392) (c!247835 (_1!8449 lt!525637))))))

(assert (=> d!447647 (= lt!525686 (BalanceConc!10807 (++!4345 (c!247835 acc!392) (c!247835 (_1!8449 lt!525637)))))))

(assert (=> d!447647 (= (++!4344 acc!392 (_1!8449 lt!525637)) lt!525686)))

(assert (= (and d!447647 res!680302) b!1511651))

(assert (= (and b!1511651 res!680304) b!1511652))

(assert (= (and b!1511652 res!680303) b!1511653))

(assert (= (and b!1511653 res!680305) b!1511654))

(declare-fun m!1775514 () Bool)

(assert (=> b!1511653 m!1775514))

(declare-fun m!1775516 () Bool)

(assert (=> b!1511653 m!1775516))

(assert (=> b!1511653 m!1775514))

(declare-fun m!1775518 () Bool)

(assert (=> b!1511653 m!1775518))

(declare-fun m!1775520 () Bool)

(assert (=> b!1511653 m!1775520))

(assert (=> b!1511653 m!1775516))

(assert (=> b!1511653 m!1775520))

(declare-fun m!1775522 () Bool)

(assert (=> b!1511653 m!1775522))

(declare-fun m!1775524 () Bool)

(assert (=> d!447647 m!1775524))

(assert (=> d!447647 m!1775514))

(assert (=> b!1511651 m!1775514))

(assert (=> b!1511651 m!1775514))

(declare-fun m!1775526 () Bool)

(assert (=> b!1511651 m!1775526))

(assert (=> b!1511652 m!1775514))

(assert (=> b!1511652 m!1775516))

(assert (=> b!1511652 m!1775514))

(assert (=> b!1511652 m!1775518))

(assert (=> b!1511652 m!1775520))

(assert (=> b!1511652 m!1775516))

(assert (=> b!1511652 m!1775520))

(assert (=> b!1511652 m!1775522))

(declare-fun m!1775528 () Bool)

(assert (=> b!1511654 m!1775528))

(assert (=> b!1511654 m!1775308))

(declare-fun m!1775530 () Bool)

(assert (=> b!1511654 m!1775530))

(assert (=> b!1511654 m!1775308))

(assert (=> b!1511654 m!1775530))

(declare-fun m!1775532 () Bool)

(assert (=> b!1511654 m!1775532))

(assert (=> b!1511556 d!447647))

(declare-fun b!1511656 () Bool)

(declare-fun res!680308 () Bool)

(declare-fun e!966557 () Bool)

(assert (=> b!1511656 (=> (not res!680308) (not e!966557))))

(declare-fun lt!525687 () tuple2!14886)

(assert (=> b!1511656 (= res!680308 (= (list!6337 (_1!8449 lt!525687)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 input!1102)))))))

(declare-fun b!1511657 () Bool)

(assert (=> b!1511657 (= e!966557 (= (list!6336 (_2!8449 lt!525687)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 input!1102)))))))

(declare-fun b!1511658 () Bool)

(declare-fun e!966556 () Bool)

(declare-fun e!966559 () Bool)

(assert (=> b!1511658 (= e!966556 e!966559)))

(declare-fun res!680307 () Bool)

(assert (=> b!1511658 (= res!680307 (< (size!12971 (_2!8449 lt!525687)) (size!12971 input!1102)))))

(assert (=> b!1511658 (=> (not res!680307) (not e!966559))))

(declare-fun b!1511655 () Bool)

(assert (=> b!1511655 (= e!966556 (= (list!6336 (_2!8449 lt!525687)) (list!6336 input!1102)))))

(declare-fun d!447649 () Bool)

(assert (=> d!447649 e!966557))

(declare-fun res!680306 () Bool)

(assert (=> d!447649 (=> (not res!680306) (not e!966557))))

(assert (=> d!447649 (= res!680306 e!966556)))

(declare-fun c!247854 () Bool)

(assert (=> d!447649 (= c!247854 (> (size!12972 (_1!8449 lt!525687)) 0))))

(declare-fun e!966558 () tuple2!14886)

(assert (=> d!447649 (= lt!525687 e!966558)))

(declare-fun c!247855 () Bool)

(declare-fun lt!525689 () Option!2925)

(assert (=> d!447649 (= c!247855 ((_ is Some!2924) lt!525689))))

(assert (=> d!447649 (= lt!525689 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 input!1102))))

(assert (=> d!447649 (= (lexRec!328 thiss!13241 rules!1640 input!1102) lt!525687)))

(declare-fun b!1511659 () Bool)

(assert (=> b!1511659 (= e!966559 (not (isEmpty!9921 (_1!8449 lt!525687))))))

(declare-fun b!1511660 () Bool)

(assert (=> b!1511660 (= e!966558 (tuple2!14887 (BalanceConc!10807 Empty!5432) input!1102))))

(declare-fun b!1511661 () Bool)

(declare-fun lt!525688 () tuple2!14886)

(assert (=> b!1511661 (= e!966558 (tuple2!14887 (prepend!461 (_1!8449 lt!525688) (_1!8452 (v!22855 lt!525689))) (_2!8449 lt!525688)))))

(assert (=> b!1511661 (= lt!525688 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525689))))))

(assert (= (and d!447649 c!247855) b!1511661))

(assert (= (and d!447649 (not c!247855)) b!1511660))

(assert (= (and d!447649 c!247854) b!1511658))

(assert (= (and d!447649 (not c!247854)) b!1511655))

(assert (= (and b!1511658 res!680307) b!1511659))

(assert (= (and d!447649 res!680306) b!1511656))

(assert (= (and b!1511656 res!680308) b!1511657))

(declare-fun m!1775534 () Bool)

(assert (=> b!1511658 m!1775534))

(declare-fun m!1775536 () Bool)

(assert (=> b!1511658 m!1775536))

(declare-fun m!1775538 () Bool)

(assert (=> b!1511659 m!1775538))

(declare-fun m!1775540 () Bool)

(assert (=> d!447649 m!1775540))

(assert (=> d!447649 m!1775350))

(declare-fun m!1775542 () Bool)

(assert (=> b!1511661 m!1775542))

(declare-fun m!1775544 () Bool)

(assert (=> b!1511661 m!1775544))

(declare-fun m!1775546 () Bool)

(assert (=> b!1511655 m!1775546))

(assert (=> b!1511655 m!1775282))

(declare-fun m!1775548 () Bool)

(assert (=> b!1511656 m!1775548))

(assert (=> b!1511656 m!1775282))

(assert (=> b!1511656 m!1775282))

(declare-fun m!1775550 () Bool)

(assert (=> b!1511656 m!1775550))

(assert (=> b!1511657 m!1775546))

(assert (=> b!1511657 m!1775282))

(assert (=> b!1511657 m!1775282))

(assert (=> b!1511657 m!1775550))

(assert (=> b!1511556 d!447649))

(declare-fun d!447651 () Bool)

(assert (=> d!447651 (= (isEmpty!9920 (list!6336 (_2!8449 lt!525618))) ((_ is Nil!16040) (list!6336 (_2!8449 lt!525618))))))

(assert (=> b!1511560 d!447651))

(declare-fun d!447653 () Bool)

(assert (=> d!447653 (= (list!6336 (_2!8449 lt!525618)) (list!6338 (c!247834 (_2!8449 lt!525618))))))

(declare-fun bs!364373 () Bool)

(assert (= bs!364373 d!447653))

(declare-fun m!1775552 () Bool)

(assert (=> bs!364373 m!1775552))

(assert (=> b!1511560 d!447653))

(declare-fun d!447655 () Bool)

(declare-fun e!966565 () Bool)

(assert (=> d!447655 e!966565))

(declare-fun res!680313 () Bool)

(assert (=> d!447655 (=> (not res!680313) (not e!966565))))

(declare-fun lt!525692 () List!16109)

(declare-fun content!2310 (List!16109) (InoxSet Token!5342))

(assert (=> d!447655 (= res!680313 (= (content!2310 lt!525692) ((_ map or) (content!2310 (++!4343 lt!525614 lt!525617)) (content!2310 lt!525624))))))

(declare-fun e!966564 () List!16109)

(assert (=> d!447655 (= lt!525692 e!966564)))

(declare-fun c!247858 () Bool)

(assert (=> d!447655 (= c!247858 ((_ is Nil!16041) (++!4343 lt!525614 lt!525617)))))

(assert (=> d!447655 (= (++!4343 (++!4343 lt!525614 lt!525617) lt!525624) lt!525692)))

(declare-fun b!1511671 () Bool)

(assert (=> b!1511671 (= e!966564 (Cons!16041 (h!21442 (++!4343 lt!525614 lt!525617)) (++!4343 (t!139379 (++!4343 lt!525614 lt!525617)) lt!525624)))))

(declare-fun b!1511670 () Bool)

(assert (=> b!1511670 (= e!966564 lt!525624)))

(declare-fun b!1511672 () Bool)

(declare-fun res!680314 () Bool)

(assert (=> b!1511672 (=> (not res!680314) (not e!966565))))

(declare-fun size!12973 (List!16109) Int)

(assert (=> b!1511672 (= res!680314 (= (size!12973 lt!525692) (+ (size!12973 (++!4343 lt!525614 lt!525617)) (size!12973 lt!525624))))))

(declare-fun b!1511673 () Bool)

(assert (=> b!1511673 (= e!966565 (or (not (= lt!525624 Nil!16041)) (= lt!525692 (++!4343 lt!525614 lt!525617))))))

(assert (= (and d!447655 c!247858) b!1511670))

(assert (= (and d!447655 (not c!247858)) b!1511671))

(assert (= (and d!447655 res!680313) b!1511672))

(assert (= (and b!1511672 res!680314) b!1511673))

(declare-fun m!1775554 () Bool)

(assert (=> d!447655 m!1775554))

(assert (=> d!447655 m!1775352))

(declare-fun m!1775556 () Bool)

(assert (=> d!447655 m!1775556))

(declare-fun m!1775558 () Bool)

(assert (=> d!447655 m!1775558))

(declare-fun m!1775560 () Bool)

(assert (=> b!1511671 m!1775560))

(declare-fun m!1775562 () Bool)

(assert (=> b!1511672 m!1775562))

(assert (=> b!1511672 m!1775352))

(declare-fun m!1775564 () Bool)

(assert (=> b!1511672 m!1775564))

(declare-fun m!1775566 () Bool)

(assert (=> b!1511672 m!1775566))

(assert (=> b!1511521 d!447655))

(declare-fun b!1511682 () Bool)

(declare-fun e!966570 () List!16108)

(assert (=> b!1511682 (= e!966570 (++!4341 lt!525622 lt!525632))))

(declare-fun b!1511683 () Bool)

(assert (=> b!1511683 (= e!966570 (Cons!16040 (h!21441 lt!525616) (++!4341 (t!139378 lt!525616) (++!4341 lt!525622 lt!525632))))))

(declare-fun d!447657 () Bool)

(declare-fun e!966571 () Bool)

(assert (=> d!447657 e!966571))

(declare-fun res!680319 () Bool)

(assert (=> d!447657 (=> (not res!680319) (not e!966571))))

(declare-fun lt!525695 () List!16108)

(declare-fun content!2311 (List!16108) (InoxSet C!8488))

(assert (=> d!447657 (= res!680319 (= (content!2311 lt!525695) ((_ map or) (content!2311 lt!525616) (content!2311 (++!4341 lt!525622 lt!525632)))))))

(assert (=> d!447657 (= lt!525695 e!966570)))

(declare-fun c!247861 () Bool)

(assert (=> d!447657 (= c!247861 ((_ is Nil!16040) lt!525616))))

(assert (=> d!447657 (= (++!4341 lt!525616 (++!4341 lt!525622 lt!525632)) lt!525695)))

(declare-fun b!1511684 () Bool)

(declare-fun res!680320 () Bool)

(assert (=> b!1511684 (=> (not res!680320) (not e!966571))))

(declare-fun size!12974 (List!16108) Int)

(assert (=> b!1511684 (= res!680320 (= (size!12974 lt!525695) (+ (size!12974 lt!525616) (size!12974 (++!4341 lt!525622 lt!525632)))))))

(declare-fun b!1511685 () Bool)

(assert (=> b!1511685 (= e!966571 (or (not (= (++!4341 lt!525622 lt!525632) Nil!16040)) (= lt!525695 lt!525616)))))

(assert (= (and d!447657 c!247861) b!1511682))

(assert (= (and d!447657 (not c!247861)) b!1511683))

(assert (= (and d!447657 res!680319) b!1511684))

(assert (= (and b!1511684 res!680320) b!1511685))

(assert (=> b!1511683 m!1775400))

(declare-fun m!1775568 () Bool)

(assert (=> b!1511683 m!1775568))

(declare-fun m!1775570 () Bool)

(assert (=> d!447657 m!1775570))

(declare-fun m!1775572 () Bool)

(assert (=> d!447657 m!1775572))

(assert (=> d!447657 m!1775400))

(declare-fun m!1775574 () Bool)

(assert (=> d!447657 m!1775574))

(declare-fun m!1775576 () Bool)

(assert (=> b!1511684 m!1775576))

(declare-fun m!1775578 () Bool)

(assert (=> b!1511684 m!1775578))

(assert (=> b!1511684 m!1775400))

(declare-fun m!1775580 () Bool)

(assert (=> b!1511684 m!1775580))

(assert (=> b!1511521 d!447657))

(declare-fun b!1511696 () Bool)

(declare-fun e!966578 () Bool)

(declare-fun lt!525703 () tuple2!14894)

(declare-fun isEmpty!9922 (List!16109) Bool)

(assert (=> b!1511696 (= e!966578 (not (isEmpty!9922 (_1!8453 lt!525703))))))

(declare-fun b!1511697 () Bool)

(declare-fun e!966580 () tuple2!14894)

(declare-fun lt!525704 () Option!2926)

(declare-fun lt!525702 () tuple2!14894)

(assert (=> b!1511697 (= e!966580 (tuple2!14895 (Cons!16041 (_1!8458 (v!22860 lt!525704)) (_1!8453 lt!525702)) (_2!8453 lt!525702)))))

(assert (=> b!1511697 (= lt!525702 (lexList!744 thiss!13241 rules!1640 (_2!8458 (v!22860 lt!525704))))))

(declare-fun b!1511698 () Bool)

(declare-fun e!966579 () Bool)

(assert (=> b!1511698 (= e!966579 (= (_2!8453 lt!525703) lt!525609))))

(declare-fun d!447659 () Bool)

(assert (=> d!447659 e!966579))

(declare-fun c!247866 () Bool)

(assert (=> d!447659 (= c!247866 (> (size!12973 (_1!8453 lt!525703)) 0))))

(assert (=> d!447659 (= lt!525703 e!966580)))

(declare-fun c!247867 () Bool)

(assert (=> d!447659 (= c!247867 ((_ is Some!2925) lt!525704))))

(assert (=> d!447659 (= lt!525704 (maxPrefix!1207 thiss!13241 rules!1640 lt!525609))))

(assert (=> d!447659 (= (lexList!744 thiss!13241 rules!1640 lt!525609) lt!525703)))

(declare-fun b!1511699 () Bool)

(assert (=> b!1511699 (= e!966580 (tuple2!14895 Nil!16041 lt!525609))))

(declare-fun b!1511700 () Bool)

(assert (=> b!1511700 (= e!966579 e!966578)))

(declare-fun res!680323 () Bool)

(assert (=> b!1511700 (= res!680323 (< (size!12974 (_2!8453 lt!525703)) (size!12974 lt!525609)))))

(assert (=> b!1511700 (=> (not res!680323) (not e!966578))))

(assert (= (and d!447659 c!247867) b!1511697))

(assert (= (and d!447659 (not c!247867)) b!1511699))

(assert (= (and d!447659 c!247866) b!1511700))

(assert (= (and d!447659 (not c!247866)) b!1511698))

(assert (= (and b!1511700 res!680323) b!1511696))

(declare-fun m!1775582 () Bool)

(assert (=> b!1511696 m!1775582))

(declare-fun m!1775584 () Bool)

(assert (=> b!1511697 m!1775584))

(declare-fun m!1775586 () Bool)

(assert (=> d!447659 m!1775586))

(declare-fun m!1775588 () Bool)

(assert (=> d!447659 m!1775588))

(declare-fun m!1775590 () Bool)

(assert (=> b!1511700 m!1775590))

(declare-fun m!1775592 () Bool)

(assert (=> b!1511700 m!1775592))

(assert (=> b!1511521 d!447659))

(declare-fun d!447661 () Bool)

(assert (=> d!447661 (= (++!4341 (++!4341 lt!525616 lt!525622) lt!525632) (++!4341 lt!525616 (++!4341 lt!525622 lt!525632)))))

(declare-fun lt!525707 () Unit!25735)

(declare-fun choose!9154 (List!16108 List!16108 List!16108) Unit!25735)

(assert (=> d!447661 (= lt!525707 (choose!9154 lt!525616 lt!525622 lt!525632))))

(assert (=> d!447661 (= (lemmaConcatAssociativity!937 lt!525616 lt!525622 lt!525632) lt!525707)))

(declare-fun bs!364374 () Bool)

(assert (= bs!364374 d!447661))

(assert (=> bs!364374 m!1775400))

(assert (=> bs!364374 m!1775366))

(assert (=> bs!364374 m!1775400))

(assert (=> bs!364374 m!1775402))

(assert (=> bs!364374 m!1775366))

(declare-fun m!1775594 () Bool)

(assert (=> bs!364374 m!1775594))

(declare-fun m!1775596 () Bool)

(assert (=> bs!364374 m!1775596))

(assert (=> b!1511521 d!447661))

(declare-fun b!1511717 () Bool)

(declare-fun e!966597 () Bool)

(declare-fun e!966598 () Bool)

(assert (=> b!1511717 (= e!966597 e!966598)))

(declare-fun res!680339 () Bool)

(assert (=> b!1511717 (=> (not res!680339) (not e!966598))))

(declare-fun lt!525723 () Option!2925)

(assert (=> b!1511717 (= res!680339 (= (_1!8452 (get!4732 lt!525723)) (_1!8458 (get!4733 (maxPrefix!1207 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun d!447663 () Bool)

(declare-fun e!966594 () Bool)

(assert (=> d!447663 e!966594))

(declare-fun res!680337 () Bool)

(assert (=> d!447663 (=> (not res!680337) (not e!966594))))

(assert (=> d!447663 (= res!680337 (= (isDefined!2351 lt!525723) (isDefined!2352 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 input!1102)))))))

(declare-fun e!966595 () Option!2925)

(assert (=> d!447663 (= lt!525723 e!966595)))

(declare-fun c!247870 () Bool)

(assert (=> d!447663 (= c!247870 (and ((_ is Cons!16043) rules!1640) ((_ is Nil!16043) (t!139381 rules!1640))))))

(declare-fun lt!525727 () Unit!25735)

(declare-fun lt!525724 () Unit!25735)

(assert (=> d!447663 (= lt!525727 lt!525724)))

(declare-fun lt!525722 () List!16108)

(declare-fun lt!525725 () List!16108)

(assert (=> d!447663 (isPrefix!1217 lt!525722 lt!525725)))

(assert (=> d!447663 (= lt!525724 (lemmaIsPrefixRefl!847 lt!525722 lt!525725))))

(assert (=> d!447663 (= lt!525725 (list!6336 input!1102))))

(assert (=> d!447663 (= lt!525722 (list!6336 input!1102))))

(assert (=> d!447663 (rulesValidInductive!855 thiss!13241 rules!1640)))

(assert (=> d!447663 (= (maxPrefixZipperSequence!586 thiss!13241 rules!1640 input!1102) lt!525723)))

(declare-fun bm!100320 () Bool)

(declare-fun call!100325 () Option!2925)

(declare-fun maxPrefixOneRuleZipperSequence!277 (LexerInterface!2493 Rule!5480 BalanceConc!10804) Option!2925)

(assert (=> bm!100320 (= call!100325 (maxPrefixOneRuleZipperSequence!277 thiss!13241 (h!21444 rules!1640) input!1102))))

(declare-fun b!1511718 () Bool)

(assert (=> b!1511718 (= e!966598 (= (list!6336 (_2!8452 (get!4732 lt!525723))) (_2!8458 (get!4733 (maxPrefix!1207 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun b!1511719 () Bool)

(declare-fun lt!525726 () Option!2925)

(declare-fun lt!525728 () Option!2925)

(assert (=> b!1511719 (= e!966595 (ite (and ((_ is None!2924) lt!525726) ((_ is None!2924) lt!525728)) None!2924 (ite ((_ is None!2924) lt!525728) lt!525726 (ite ((_ is None!2924) lt!525726) lt!525728 (ite (>= (size!12968 (_1!8452 (v!22855 lt!525726))) (size!12968 (_1!8452 (v!22855 lt!525728)))) lt!525726 lt!525728)))))))

(assert (=> b!1511719 (= lt!525726 call!100325)))

(assert (=> b!1511719 (= lt!525728 (maxPrefixZipperSequence!586 thiss!13241 (t!139381 rules!1640) input!1102))))

(declare-fun b!1511720 () Bool)

(declare-fun res!680336 () Bool)

(assert (=> b!1511720 (=> (not res!680336) (not e!966594))))

(declare-fun e!966596 () Bool)

(assert (=> b!1511720 (= res!680336 e!966596)))

(declare-fun res!680338 () Bool)

(assert (=> b!1511720 (=> res!680338 e!966596)))

(assert (=> b!1511720 (= res!680338 (not (isDefined!2351 lt!525723)))))

(declare-fun b!1511721 () Bool)

(assert (=> b!1511721 (= e!966595 call!100325)))

(declare-fun b!1511722 () Bool)

(assert (=> b!1511722 (= e!966594 e!966597)))

(declare-fun res!680341 () Bool)

(assert (=> b!1511722 (=> res!680341 e!966597)))

(assert (=> b!1511722 (= res!680341 (not (isDefined!2351 lt!525723)))))

(declare-fun b!1511723 () Bool)

(declare-fun e!966593 () Bool)

(assert (=> b!1511723 (= e!966596 e!966593)))

(declare-fun res!680340 () Bool)

(assert (=> b!1511723 (=> (not res!680340) (not e!966593))))

(assert (=> b!1511723 (= res!680340 (= (_1!8452 (get!4732 lt!525723)) (_1!8458 (get!4733 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(declare-fun b!1511724 () Bool)

(assert (=> b!1511724 (= e!966593 (= (list!6336 (_2!8452 (get!4732 lt!525723))) (_2!8458 (get!4733 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 input!1102))))))))

(assert (= (and d!447663 c!247870) b!1511721))

(assert (= (and d!447663 (not c!247870)) b!1511719))

(assert (= (or b!1511721 b!1511719) bm!100320))

(assert (= (and d!447663 res!680337) b!1511720))

(assert (= (and b!1511720 (not res!680338)) b!1511723))

(assert (= (and b!1511723 res!680340) b!1511724))

(assert (= (and b!1511720 res!680336) b!1511722))

(assert (= (and b!1511722 (not res!680341)) b!1511717))

(assert (= (and b!1511717 res!680339) b!1511718))

(declare-fun m!1775598 () Bool)

(assert (=> b!1511724 m!1775598))

(assert (=> b!1511724 m!1775426))

(assert (=> b!1511724 m!1775448))

(assert (=> b!1511724 m!1775282))

(declare-fun m!1775600 () Bool)

(assert (=> b!1511724 m!1775600))

(assert (=> b!1511724 m!1775282))

(assert (=> b!1511724 m!1775426))

(declare-fun m!1775602 () Bool)

(assert (=> b!1511719 m!1775602))

(assert (=> b!1511717 m!1775598))

(assert (=> b!1511717 m!1775282))

(assert (=> b!1511717 m!1775282))

(assert (=> b!1511717 m!1775440))

(assert (=> b!1511717 m!1775440))

(assert (=> b!1511717 m!1775442))

(declare-fun m!1775604 () Bool)

(assert (=> d!447663 m!1775604))

(declare-fun m!1775606 () Bool)

(assert (=> d!447663 m!1775606))

(declare-fun m!1775608 () Bool)

(assert (=> d!447663 m!1775608))

(assert (=> d!447663 m!1775426))

(assert (=> d!447663 m!1775428))

(assert (=> d!447663 m!1775282))

(assert (=> d!447663 m!1775282))

(assert (=> d!447663 m!1775426))

(assert (=> d!447663 m!1775430))

(assert (=> b!1511722 m!1775606))

(declare-fun m!1775610 () Bool)

(assert (=> bm!100320 m!1775610))

(assert (=> b!1511723 m!1775598))

(assert (=> b!1511723 m!1775282))

(assert (=> b!1511723 m!1775282))

(assert (=> b!1511723 m!1775426))

(assert (=> b!1511723 m!1775426))

(assert (=> b!1511723 m!1775448))

(assert (=> b!1511718 m!1775282))

(assert (=> b!1511718 m!1775600))

(assert (=> b!1511718 m!1775440))

(assert (=> b!1511718 m!1775442))

(assert (=> b!1511718 m!1775598))

(assert (=> b!1511718 m!1775282))

(assert (=> b!1511718 m!1775440))

(assert (=> b!1511720 m!1775606))

(assert (=> b!1511521 d!447663))

(declare-fun d!447665 () Bool)

(assert (=> d!447665 (= (list!6336 lt!525636) (list!6338 (c!247834 lt!525636)))))

(declare-fun bs!364375 () Bool)

(assert (= bs!364375 d!447665))

(declare-fun m!1775612 () Bool)

(assert (=> bs!364375 m!1775612))

(assert (=> b!1511521 d!447665))

(declare-fun d!447667 () Bool)

(assert (=> d!447667 (= (list!6336 (_2!8449 lt!525613)) (list!6338 (c!247834 (_2!8449 lt!525613))))))

(declare-fun bs!364376 () Bool)

(assert (= bs!364376 d!447667))

(declare-fun m!1775614 () Bool)

(assert (=> bs!364376 m!1775614))

(assert (=> b!1511521 d!447667))

(declare-fun b!1511725 () Bool)

(declare-fun e!966603 () Bool)

(declare-fun e!966604 () Bool)

(assert (=> b!1511725 (= e!966603 e!966604)))

(declare-fun res!680345 () Bool)

(assert (=> b!1511725 (=> (not res!680345) (not e!966604))))

(declare-fun lt!525730 () Option!2925)

(assert (=> b!1511725 (= res!680345 (= (_1!8452 (get!4732 lt!525730)) (_1!8458 (get!4733 (maxPrefix!1207 thiss!13241 rules!1640 (list!6336 lt!525636))))))))

(declare-fun d!447669 () Bool)

(declare-fun e!966600 () Bool)

(assert (=> d!447669 e!966600))

(declare-fun res!680343 () Bool)

(assert (=> d!447669 (=> (not res!680343) (not e!966600))))

(assert (=> d!447669 (= res!680343 (= (isDefined!2351 lt!525730) (isDefined!2352 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 lt!525636)))))))

(declare-fun e!966601 () Option!2925)

(assert (=> d!447669 (= lt!525730 e!966601)))

(declare-fun c!247871 () Bool)

(assert (=> d!447669 (= c!247871 (and ((_ is Cons!16043) rules!1640) ((_ is Nil!16043) (t!139381 rules!1640))))))

(declare-fun lt!525734 () Unit!25735)

(declare-fun lt!525731 () Unit!25735)

(assert (=> d!447669 (= lt!525734 lt!525731)))

(declare-fun lt!525729 () List!16108)

(declare-fun lt!525732 () List!16108)

(assert (=> d!447669 (isPrefix!1217 lt!525729 lt!525732)))

(assert (=> d!447669 (= lt!525731 (lemmaIsPrefixRefl!847 lt!525729 lt!525732))))

(assert (=> d!447669 (= lt!525732 (list!6336 lt!525636))))

(assert (=> d!447669 (= lt!525729 (list!6336 lt!525636))))

(assert (=> d!447669 (rulesValidInductive!855 thiss!13241 rules!1640)))

(assert (=> d!447669 (= (maxPrefixZipperSequence!586 thiss!13241 rules!1640 lt!525636) lt!525730)))

(declare-fun call!100326 () Option!2925)

(declare-fun bm!100321 () Bool)

(assert (=> bm!100321 (= call!100326 (maxPrefixOneRuleZipperSequence!277 thiss!13241 (h!21444 rules!1640) lt!525636))))

(declare-fun b!1511726 () Bool)

(assert (=> b!1511726 (= e!966604 (= (list!6336 (_2!8452 (get!4732 lt!525730))) (_2!8458 (get!4733 (maxPrefix!1207 thiss!13241 rules!1640 (list!6336 lt!525636))))))))

(declare-fun b!1511727 () Bool)

(declare-fun lt!525733 () Option!2925)

(declare-fun lt!525735 () Option!2925)

(assert (=> b!1511727 (= e!966601 (ite (and ((_ is None!2924) lt!525733) ((_ is None!2924) lt!525735)) None!2924 (ite ((_ is None!2924) lt!525735) lt!525733 (ite ((_ is None!2924) lt!525733) lt!525735 (ite (>= (size!12968 (_1!8452 (v!22855 lt!525733))) (size!12968 (_1!8452 (v!22855 lt!525735)))) lt!525733 lt!525735)))))))

(assert (=> b!1511727 (= lt!525733 call!100326)))

(assert (=> b!1511727 (= lt!525735 (maxPrefixZipperSequence!586 thiss!13241 (t!139381 rules!1640) lt!525636))))

(declare-fun b!1511728 () Bool)

(declare-fun res!680342 () Bool)

(assert (=> b!1511728 (=> (not res!680342) (not e!966600))))

(declare-fun e!966602 () Bool)

(assert (=> b!1511728 (= res!680342 e!966602)))

(declare-fun res!680344 () Bool)

(assert (=> b!1511728 (=> res!680344 e!966602)))

(assert (=> b!1511728 (= res!680344 (not (isDefined!2351 lt!525730)))))

(declare-fun b!1511729 () Bool)

(assert (=> b!1511729 (= e!966601 call!100326)))

(declare-fun b!1511730 () Bool)

(assert (=> b!1511730 (= e!966600 e!966603)))

(declare-fun res!680347 () Bool)

(assert (=> b!1511730 (=> res!680347 e!966603)))

(assert (=> b!1511730 (= res!680347 (not (isDefined!2351 lt!525730)))))

(declare-fun b!1511731 () Bool)

(declare-fun e!966599 () Bool)

(assert (=> b!1511731 (= e!966602 e!966599)))

(declare-fun res!680346 () Bool)

(assert (=> b!1511731 (=> (not res!680346) (not e!966599))))

(assert (=> b!1511731 (= res!680346 (= (_1!8452 (get!4732 lt!525730)) (_1!8458 (get!4733 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 lt!525636))))))))

(declare-fun b!1511732 () Bool)

(assert (=> b!1511732 (= e!966599 (= (list!6336 (_2!8452 (get!4732 lt!525730))) (_2!8458 (get!4733 (maxPrefixZipper!258 thiss!13241 rules!1640 (list!6336 lt!525636))))))))

(assert (= (and d!447669 c!247871) b!1511729))

(assert (= (and d!447669 (not c!247871)) b!1511727))

(assert (= (or b!1511729 b!1511727) bm!100321))

(assert (= (and d!447669 res!680343) b!1511728))

(assert (= (and b!1511728 (not res!680344)) b!1511731))

(assert (= (and b!1511731 res!680346) b!1511732))

(assert (= (and b!1511728 res!680342) b!1511730))

(assert (= (and b!1511730 (not res!680347)) b!1511725))

(assert (= (and b!1511725 res!680345) b!1511726))

(declare-fun m!1775616 () Bool)

(assert (=> b!1511732 m!1775616))

(declare-fun m!1775618 () Bool)

(assert (=> b!1511732 m!1775618))

(declare-fun m!1775620 () Bool)

(assert (=> b!1511732 m!1775620))

(assert (=> b!1511732 m!1775382))

(declare-fun m!1775622 () Bool)

(assert (=> b!1511732 m!1775622))

(assert (=> b!1511732 m!1775382))

(assert (=> b!1511732 m!1775618))

(declare-fun m!1775624 () Bool)

(assert (=> b!1511727 m!1775624))

(assert (=> b!1511725 m!1775616))

(assert (=> b!1511725 m!1775382))

(assert (=> b!1511725 m!1775382))

(declare-fun m!1775626 () Bool)

(assert (=> b!1511725 m!1775626))

(assert (=> b!1511725 m!1775626))

(declare-fun m!1775628 () Bool)

(assert (=> b!1511725 m!1775628))

(declare-fun m!1775630 () Bool)

(assert (=> d!447669 m!1775630))

(declare-fun m!1775632 () Bool)

(assert (=> d!447669 m!1775632))

(declare-fun m!1775634 () Bool)

(assert (=> d!447669 m!1775634))

(assert (=> d!447669 m!1775618))

(declare-fun m!1775636 () Bool)

(assert (=> d!447669 m!1775636))

(assert (=> d!447669 m!1775382))

(assert (=> d!447669 m!1775382))

(assert (=> d!447669 m!1775618))

(assert (=> d!447669 m!1775430))

(assert (=> b!1511730 m!1775632))

(declare-fun m!1775638 () Bool)

(assert (=> bm!100321 m!1775638))

(assert (=> b!1511731 m!1775616))

(assert (=> b!1511731 m!1775382))

(assert (=> b!1511731 m!1775382))

(assert (=> b!1511731 m!1775618))

(assert (=> b!1511731 m!1775618))

(assert (=> b!1511731 m!1775620))

(assert (=> b!1511726 m!1775382))

(assert (=> b!1511726 m!1775622))

(assert (=> b!1511726 m!1775626))

(assert (=> b!1511726 m!1775628))

(assert (=> b!1511726 m!1775616))

(assert (=> b!1511726 m!1775382))

(assert (=> b!1511726 m!1775626))

(assert (=> b!1511728 m!1775632))

(assert (=> b!1511521 d!447669))

(declare-fun b!1511734 () Bool)

(declare-fun res!680350 () Bool)

(declare-fun e!966606 () Bool)

(assert (=> b!1511734 (=> (not res!680350) (not e!966606))))

(declare-fun lt!525736 () tuple2!14886)

(assert (=> b!1511734 (= res!680350 (= (list!6337 (_1!8449 lt!525736)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 lt!525636)))))))

(declare-fun b!1511735 () Bool)

(assert (=> b!1511735 (= e!966606 (= (list!6336 (_2!8449 lt!525736)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 lt!525636)))))))

(declare-fun b!1511736 () Bool)

(declare-fun e!966605 () Bool)

(declare-fun e!966608 () Bool)

(assert (=> b!1511736 (= e!966605 e!966608)))

(declare-fun res!680349 () Bool)

(assert (=> b!1511736 (= res!680349 (< (size!12971 (_2!8449 lt!525736)) (size!12971 lt!525636)))))

(assert (=> b!1511736 (=> (not res!680349) (not e!966608))))

(declare-fun b!1511733 () Bool)

(assert (=> b!1511733 (= e!966605 (= (list!6336 (_2!8449 lt!525736)) (list!6336 lt!525636)))))

(declare-fun d!447671 () Bool)

(assert (=> d!447671 e!966606))

(declare-fun res!680348 () Bool)

(assert (=> d!447671 (=> (not res!680348) (not e!966606))))

(assert (=> d!447671 (= res!680348 e!966605)))

(declare-fun c!247872 () Bool)

(assert (=> d!447671 (= c!247872 (> (size!12972 (_1!8449 lt!525736)) 0))))

(declare-fun e!966607 () tuple2!14886)

(assert (=> d!447671 (= lt!525736 e!966607)))

(declare-fun c!247873 () Bool)

(declare-fun lt!525738 () Option!2925)

(assert (=> d!447671 (= c!247873 ((_ is Some!2924) lt!525738))))

(assert (=> d!447671 (= lt!525738 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 lt!525636))))

(assert (=> d!447671 (= (lexRec!328 thiss!13241 rules!1640 lt!525636) lt!525736)))

(declare-fun b!1511737 () Bool)

(assert (=> b!1511737 (= e!966608 (not (isEmpty!9921 (_1!8449 lt!525736))))))

(declare-fun b!1511738 () Bool)

(assert (=> b!1511738 (= e!966607 (tuple2!14887 (BalanceConc!10807 Empty!5432) lt!525636))))

(declare-fun b!1511739 () Bool)

(declare-fun lt!525737 () tuple2!14886)

(assert (=> b!1511739 (= e!966607 (tuple2!14887 (prepend!461 (_1!8449 lt!525737) (_1!8452 (v!22855 lt!525738))) (_2!8449 lt!525737)))))

(assert (=> b!1511739 (= lt!525737 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525738))))))

(assert (= (and d!447671 c!247873) b!1511739))

(assert (= (and d!447671 (not c!247873)) b!1511738))

(assert (= (and d!447671 c!247872) b!1511736))

(assert (= (and d!447671 (not c!247872)) b!1511733))

(assert (= (and b!1511736 res!680349) b!1511737))

(assert (= (and d!447671 res!680348) b!1511734))

(assert (= (and b!1511734 res!680350) b!1511735))

(declare-fun m!1775640 () Bool)

(assert (=> b!1511736 m!1775640))

(declare-fun m!1775642 () Bool)

(assert (=> b!1511736 m!1775642))

(declare-fun m!1775644 () Bool)

(assert (=> b!1511737 m!1775644))

(declare-fun m!1775646 () Bool)

(assert (=> d!447671 m!1775646))

(assert (=> d!447671 m!1775380))

(declare-fun m!1775648 () Bool)

(assert (=> b!1511739 m!1775648))

(declare-fun m!1775650 () Bool)

(assert (=> b!1511739 m!1775650))

(declare-fun m!1775652 () Bool)

(assert (=> b!1511733 m!1775652))

(assert (=> b!1511733 m!1775382))

(declare-fun m!1775654 () Bool)

(assert (=> b!1511734 m!1775654))

(assert (=> b!1511734 m!1775382))

(assert (=> b!1511734 m!1775382))

(declare-fun m!1775656 () Bool)

(assert (=> b!1511734 m!1775656))

(assert (=> b!1511735 m!1775652))

(assert (=> b!1511735 m!1775382))

(assert (=> b!1511735 m!1775382))

(assert (=> b!1511735 m!1775656))

(assert (=> b!1511521 d!447671))

(declare-fun d!447673 () Bool)

(assert (=> d!447673 (= (list!6336 (_2!8452 (v!22855 (_1!8456 lt!525630)))) (list!6338 (c!247834 (_2!8452 (v!22855 (_1!8456 lt!525630))))))))

(declare-fun bs!364377 () Bool)

(assert (= bs!364377 d!447673))

(declare-fun m!1775658 () Bool)

(assert (=> bs!364377 m!1775658))

(assert (=> b!1511521 d!447673))

(declare-fun lt!525741 () BalanceConc!10804)

(declare-fun b!1511751 () Bool)

(declare-fun e!966611 () Bool)

(assert (=> b!1511751 (= e!966611 (= (list!6336 lt!525741) (++!4341 (list!6336 treated!70) (list!6336 lt!525628))))))

(declare-fun b!1511748 () Bool)

(declare-fun res!680362 () Bool)

(assert (=> b!1511748 (=> (not res!680362) (not e!966611))))

(declare-fun isBalanced!1606 (Conc!5431) Bool)

(declare-fun ++!4346 (Conc!5431 Conc!5431) Conc!5431)

(assert (=> b!1511748 (= res!680362 (isBalanced!1606 (++!4346 (c!247834 treated!70) (c!247834 lt!525628))))))

(declare-fun d!447675 () Bool)

(assert (=> d!447675 e!966611))

(declare-fun res!680361 () Bool)

(assert (=> d!447675 (=> (not res!680361) (not e!966611))))

(declare-fun appendAssocInst!366 (Conc!5431 Conc!5431) Bool)

(assert (=> d!447675 (= res!680361 (appendAssocInst!366 (c!247834 treated!70) (c!247834 lt!525628)))))

(assert (=> d!447675 (= lt!525741 (BalanceConc!10805 (++!4346 (c!247834 treated!70) (c!247834 lt!525628))))))

(assert (=> d!447675 (= (++!4342 treated!70 lt!525628) lt!525741)))

(declare-fun b!1511749 () Bool)

(declare-fun res!680360 () Bool)

(assert (=> b!1511749 (=> (not res!680360) (not e!966611))))

(declare-fun height!808 (Conc!5431) Int)

(assert (=> b!1511749 (= res!680360 (<= (height!808 (++!4346 (c!247834 treated!70) (c!247834 lt!525628))) (+ (max!0 (height!808 (c!247834 treated!70)) (height!808 (c!247834 lt!525628))) 1)))))

(declare-fun b!1511750 () Bool)

(declare-fun res!680359 () Bool)

(assert (=> b!1511750 (=> (not res!680359) (not e!966611))))

(assert (=> b!1511750 (= res!680359 (>= (height!808 (++!4346 (c!247834 treated!70) (c!247834 lt!525628))) (max!0 (height!808 (c!247834 treated!70)) (height!808 (c!247834 lt!525628)))))))

(assert (= (and d!447675 res!680361) b!1511748))

(assert (= (and b!1511748 res!680362) b!1511749))

(assert (= (and b!1511749 res!680360) b!1511750))

(assert (= (and b!1511750 res!680359) b!1511751))

(declare-fun m!1775660 () Bool)

(assert (=> b!1511750 m!1775660))

(declare-fun m!1775662 () Bool)

(assert (=> b!1511750 m!1775662))

(assert (=> b!1511750 m!1775660))

(declare-fun m!1775664 () Bool)

(assert (=> b!1511750 m!1775664))

(declare-fun m!1775666 () Bool)

(assert (=> b!1511750 m!1775666))

(assert (=> b!1511750 m!1775662))

(declare-fun m!1775668 () Bool)

(assert (=> b!1511750 m!1775668))

(assert (=> b!1511750 m!1775664))

(declare-fun m!1775670 () Bool)

(assert (=> b!1511751 m!1775670))

(assert (=> b!1511751 m!1775284))

(assert (=> b!1511751 m!1775390))

(assert (=> b!1511751 m!1775284))

(assert (=> b!1511751 m!1775390))

(declare-fun m!1775672 () Bool)

(assert (=> b!1511751 m!1775672))

(declare-fun m!1775674 () Bool)

(assert (=> d!447675 m!1775674))

(assert (=> d!447675 m!1775662))

(assert (=> b!1511748 m!1775662))

(assert (=> b!1511748 m!1775662))

(declare-fun m!1775676 () Bool)

(assert (=> b!1511748 m!1775676))

(assert (=> b!1511749 m!1775660))

(assert (=> b!1511749 m!1775662))

(assert (=> b!1511749 m!1775660))

(assert (=> b!1511749 m!1775664))

(assert (=> b!1511749 m!1775666))

(assert (=> b!1511749 m!1775662))

(assert (=> b!1511749 m!1775668))

(assert (=> b!1511749 m!1775664))

(assert (=> b!1511521 d!447675))

(declare-fun d!447677 () Bool)

(declare-fun e!966614 () Bool)

(assert (=> d!447677 e!966614))

(declare-fun res!680365 () Bool)

(assert (=> d!447677 (=> res!680365 e!966614)))

(declare-fun lt!525744 () Bool)

(assert (=> d!447677 (= res!680365 (not lt!525744))))

(declare-fun drop!758 (List!16108 Int) List!16108)

(assert (=> d!447677 (= lt!525744 (= lt!525632 (drop!758 lt!525620 (- (size!12974 lt!525620) (size!12974 lt!525632)))))))

(assert (=> d!447677 (= (isSuffix!299 lt!525632 lt!525620) lt!525744)))

(declare-fun b!1511754 () Bool)

(assert (=> b!1511754 (= e!966614 (>= (size!12974 lt!525620) (size!12974 lt!525632)))))

(assert (= (and d!447677 (not res!680365)) b!1511754))

(declare-fun m!1775678 () Bool)

(assert (=> d!447677 m!1775678))

(declare-fun m!1775680 () Bool)

(assert (=> d!447677 m!1775680))

(declare-fun m!1775682 () Bool)

(assert (=> d!447677 m!1775682))

(assert (=> b!1511754 m!1775678))

(assert (=> b!1511754 m!1775680))

(assert (=> b!1511521 d!447677))

(declare-fun d!447679 () Bool)

(declare-fun e!966616 () Bool)

(assert (=> d!447679 e!966616))

(declare-fun res!680366 () Bool)

(assert (=> d!447679 (=> (not res!680366) (not e!966616))))

(declare-fun lt!525745 () List!16109)

(assert (=> d!447679 (= res!680366 (= (content!2310 lt!525745) ((_ map or) (content!2310 lt!525617) (content!2310 lt!525624))))))

(declare-fun e!966615 () List!16109)

(assert (=> d!447679 (= lt!525745 e!966615)))

(declare-fun c!247877 () Bool)

(assert (=> d!447679 (= c!247877 ((_ is Nil!16041) lt!525617))))

(assert (=> d!447679 (= (++!4343 lt!525617 lt!525624) lt!525745)))

(declare-fun b!1511756 () Bool)

(assert (=> b!1511756 (= e!966615 (Cons!16041 (h!21442 lt!525617) (++!4343 (t!139379 lt!525617) lt!525624)))))

(declare-fun b!1511755 () Bool)

(assert (=> b!1511755 (= e!966615 lt!525624)))

(declare-fun b!1511757 () Bool)

(declare-fun res!680367 () Bool)

(assert (=> b!1511757 (=> (not res!680367) (not e!966616))))

(assert (=> b!1511757 (= res!680367 (= (size!12973 lt!525745) (+ (size!12973 lt!525617) (size!12973 lt!525624))))))

(declare-fun b!1511758 () Bool)

(assert (=> b!1511758 (= e!966616 (or (not (= lt!525624 Nil!16041)) (= lt!525745 lt!525617)))))

(assert (= (and d!447679 c!247877) b!1511755))

(assert (= (and d!447679 (not c!247877)) b!1511756))

(assert (= (and d!447679 res!680366) b!1511757))

(assert (= (and b!1511757 res!680367) b!1511758))

(declare-fun m!1775684 () Bool)

(assert (=> d!447679 m!1775684))

(declare-fun m!1775686 () Bool)

(assert (=> d!447679 m!1775686))

(assert (=> d!447679 m!1775558))

(declare-fun m!1775688 () Bool)

(assert (=> b!1511756 m!1775688))

(declare-fun m!1775690 () Bool)

(assert (=> b!1511757 m!1775690))

(declare-fun m!1775692 () Bool)

(assert (=> b!1511757 m!1775692))

(assert (=> b!1511757 m!1775566))

(assert (=> b!1511521 d!447679))

(declare-fun d!447681 () Bool)

(assert (=> d!447681 (isSuffix!299 lt!525632 (++!4341 lt!525640 lt!525632))))

(declare-fun lt!525748 () Unit!25735)

(declare-fun choose!9155 (List!16108 List!16108) Unit!25735)

(assert (=> d!447681 (= lt!525748 (choose!9155 lt!525640 lt!525632))))

(assert (=> d!447681 (= (lemmaConcatTwoListThenFSndIsSuffix!277 lt!525640 lt!525632) lt!525748)))

(declare-fun bs!364378 () Bool)

(assert (= bs!364378 d!447681))

(assert (=> bs!364378 m!1775376))

(assert (=> bs!364378 m!1775376))

(assert (=> bs!364378 m!1775378))

(declare-fun m!1775694 () Bool)

(assert (=> bs!364378 m!1775694))

(assert (=> b!1511521 d!447681))

(declare-fun d!447683 () Bool)

(declare-fun e!966618 () Bool)

(assert (=> d!447683 e!966618))

(declare-fun res!680368 () Bool)

(assert (=> d!447683 (=> (not res!680368) (not e!966618))))

(declare-fun lt!525749 () List!16109)

(assert (=> d!447683 (= res!680368 (= (content!2310 lt!525749) ((_ map or) (content!2310 lt!525614) (content!2310 (++!4343 lt!525617 lt!525624)))))))

(declare-fun e!966617 () List!16109)

(assert (=> d!447683 (= lt!525749 e!966617)))

(declare-fun c!247878 () Bool)

(assert (=> d!447683 (= c!247878 ((_ is Nil!16041) lt!525614))))

(assert (=> d!447683 (= (++!4343 lt!525614 (++!4343 lt!525617 lt!525624)) lt!525749)))

(declare-fun b!1511760 () Bool)

(assert (=> b!1511760 (= e!966617 (Cons!16041 (h!21442 lt!525614) (++!4343 (t!139379 lt!525614) (++!4343 lt!525617 lt!525624))))))

(declare-fun b!1511759 () Bool)

(assert (=> b!1511759 (= e!966617 (++!4343 lt!525617 lt!525624))))

(declare-fun b!1511761 () Bool)

(declare-fun res!680369 () Bool)

(assert (=> b!1511761 (=> (not res!680369) (not e!966618))))

(assert (=> b!1511761 (= res!680369 (= (size!12973 lt!525749) (+ (size!12973 lt!525614) (size!12973 (++!4343 lt!525617 lt!525624)))))))

(declare-fun b!1511762 () Bool)

(assert (=> b!1511762 (= e!966618 (or (not (= (++!4343 lt!525617 lt!525624) Nil!16041)) (= lt!525749 lt!525614)))))

(assert (= (and d!447683 c!247878) b!1511759))

(assert (= (and d!447683 (not c!247878)) b!1511760))

(assert (= (and d!447683 res!680368) b!1511761))

(assert (= (and b!1511761 res!680369) b!1511762))

(declare-fun m!1775696 () Bool)

(assert (=> d!447683 m!1775696))

(declare-fun m!1775698 () Bool)

(assert (=> d!447683 m!1775698))

(assert (=> d!447683 m!1775370))

(declare-fun m!1775700 () Bool)

(assert (=> d!447683 m!1775700))

(assert (=> b!1511760 m!1775370))

(declare-fun m!1775702 () Bool)

(assert (=> b!1511760 m!1775702))

(declare-fun m!1775704 () Bool)

(assert (=> b!1511761 m!1775704))

(declare-fun m!1775706 () Bool)

(assert (=> b!1511761 m!1775706))

(assert (=> b!1511761 m!1775370))

(declare-fun m!1775708 () Bool)

(assert (=> b!1511761 m!1775708))

(assert (=> b!1511521 d!447683))

(declare-fun d!447685 () Bool)

(declare-fun e!966621 () Bool)

(assert (=> d!447685 e!966621))

(declare-fun res!680372 () Bool)

(assert (=> d!447685 (=> (not res!680372) (not e!966621))))

(declare-fun append!498 (Conc!5432 Token!5342) Conc!5432)

(assert (=> d!447685 (= res!680372 (isBalanced!1605 (append!498 (c!247835 acc!392) (_1!8452 (v!22855 (_1!8456 lt!525630))))))))

(declare-fun lt!525752 () BalanceConc!10806)

(assert (=> d!447685 (= lt!525752 (BalanceConc!10807 (append!498 (c!247835 acc!392) (_1!8452 (v!22855 (_1!8456 lt!525630))))))))

(assert (=> d!447685 (= (append!497 acc!392 (_1!8452 (v!22855 (_1!8456 lt!525630)))) lt!525752)))

(declare-fun b!1511765 () Bool)

(declare-fun $colon+!106 (List!16109 Token!5342) List!16109)

(assert (=> b!1511765 (= e!966621 (= (list!6337 lt!525752) ($colon+!106 (list!6337 acc!392) (_1!8452 (v!22855 (_1!8456 lt!525630))))))))

(assert (= (and d!447685 res!680372) b!1511765))

(declare-fun m!1775710 () Bool)

(assert (=> d!447685 m!1775710))

(assert (=> d!447685 m!1775710))

(declare-fun m!1775712 () Bool)

(assert (=> d!447685 m!1775712))

(declare-fun m!1775714 () Bool)

(assert (=> b!1511765 m!1775714))

(assert (=> b!1511765 m!1775308))

(assert (=> b!1511765 m!1775308))

(declare-fun m!1775716 () Bool)

(assert (=> b!1511765 m!1775716))

(assert (=> b!1511521 d!447685))

(declare-fun b!1511766 () Bool)

(declare-fun e!966622 () List!16108)

(assert (=> b!1511766 (= e!966622 lt!525622)))

(declare-fun b!1511767 () Bool)

(assert (=> b!1511767 (= e!966622 (Cons!16040 (h!21441 lt!525616) (++!4341 (t!139378 lt!525616) lt!525622)))))

(declare-fun d!447687 () Bool)

(declare-fun e!966623 () Bool)

(assert (=> d!447687 e!966623))

(declare-fun res!680373 () Bool)

(assert (=> d!447687 (=> (not res!680373) (not e!966623))))

(declare-fun lt!525753 () List!16108)

(assert (=> d!447687 (= res!680373 (= (content!2311 lt!525753) ((_ map or) (content!2311 lt!525616) (content!2311 lt!525622))))))

(assert (=> d!447687 (= lt!525753 e!966622)))

(declare-fun c!247880 () Bool)

(assert (=> d!447687 (= c!247880 ((_ is Nil!16040) lt!525616))))

(assert (=> d!447687 (= (++!4341 lt!525616 lt!525622) lt!525753)))

(declare-fun b!1511768 () Bool)

(declare-fun res!680374 () Bool)

(assert (=> b!1511768 (=> (not res!680374) (not e!966623))))

(assert (=> b!1511768 (= res!680374 (= (size!12974 lt!525753) (+ (size!12974 lt!525616) (size!12974 lt!525622))))))

(declare-fun b!1511769 () Bool)

(assert (=> b!1511769 (= e!966623 (or (not (= lt!525622 Nil!16040)) (= lt!525753 lt!525616)))))

(assert (= (and d!447687 c!247880) b!1511766))

(assert (= (and d!447687 (not c!247880)) b!1511767))

(assert (= (and d!447687 res!680373) b!1511768))

(assert (= (and b!1511768 res!680374) b!1511769))

(declare-fun m!1775718 () Bool)

(assert (=> b!1511767 m!1775718))

(declare-fun m!1775720 () Bool)

(assert (=> d!447687 m!1775720))

(assert (=> d!447687 m!1775572))

(declare-fun m!1775722 () Bool)

(assert (=> d!447687 m!1775722))

(declare-fun m!1775724 () Bool)

(assert (=> b!1511768 m!1775724))

(assert (=> b!1511768 m!1775578))

(declare-fun m!1775726 () Bool)

(assert (=> b!1511768 m!1775726))

(assert (=> b!1511521 d!447687))

(declare-fun d!447689 () Bool)

(declare-fun e!966625 () Bool)

(assert (=> d!447689 e!966625))

(declare-fun res!680375 () Bool)

(assert (=> d!447689 (=> (not res!680375) (not e!966625))))

(declare-fun lt!525754 () List!16109)

(assert (=> d!447689 (= res!680375 (= (content!2310 lt!525754) ((_ map or) (content!2310 lt!525614) (content!2310 lt!525617))))))

(declare-fun e!966624 () List!16109)

(assert (=> d!447689 (= lt!525754 e!966624)))

(declare-fun c!247881 () Bool)

(assert (=> d!447689 (= c!247881 ((_ is Nil!16041) lt!525614))))

(assert (=> d!447689 (= (++!4343 lt!525614 lt!525617) lt!525754)))

(declare-fun b!1511771 () Bool)

(assert (=> b!1511771 (= e!966624 (Cons!16041 (h!21442 lt!525614) (++!4343 (t!139379 lt!525614) lt!525617)))))

(declare-fun b!1511770 () Bool)

(assert (=> b!1511770 (= e!966624 lt!525617)))

(declare-fun b!1511772 () Bool)

(declare-fun res!680376 () Bool)

(assert (=> b!1511772 (=> (not res!680376) (not e!966625))))

(assert (=> b!1511772 (= res!680376 (= (size!12973 lt!525754) (+ (size!12973 lt!525614) (size!12973 lt!525617))))))

(declare-fun b!1511773 () Bool)

(assert (=> b!1511773 (= e!966625 (or (not (= lt!525617 Nil!16041)) (= lt!525754 lt!525614)))))

(assert (= (and d!447689 c!247881) b!1511770))

(assert (= (and d!447689 (not c!247881)) b!1511771))

(assert (= (and d!447689 res!680375) b!1511772))

(assert (= (and b!1511772 res!680376) b!1511773))

(declare-fun m!1775728 () Bool)

(assert (=> d!447689 m!1775728))

(assert (=> d!447689 m!1775698))

(assert (=> d!447689 m!1775686))

(declare-fun m!1775730 () Bool)

(assert (=> b!1511771 m!1775730))

(declare-fun m!1775732 () Bool)

(assert (=> b!1511772 m!1775732))

(assert (=> b!1511772 m!1775706))

(assert (=> b!1511772 m!1775692))

(assert (=> b!1511521 d!447689))

(declare-fun b!1511774 () Bool)

(declare-fun e!966626 () List!16108)

(assert (=> b!1511774 (= e!966626 lt!525632)))

(declare-fun b!1511775 () Bool)

(assert (=> b!1511775 (= e!966626 (Cons!16040 (h!21441 lt!525640) (++!4341 (t!139378 lt!525640) lt!525632)))))

(declare-fun d!447691 () Bool)

(declare-fun e!966627 () Bool)

(assert (=> d!447691 e!966627))

(declare-fun res!680377 () Bool)

(assert (=> d!447691 (=> (not res!680377) (not e!966627))))

(declare-fun lt!525755 () List!16108)

(assert (=> d!447691 (= res!680377 (= (content!2311 lt!525755) ((_ map or) (content!2311 lt!525640) (content!2311 lt!525632))))))

(assert (=> d!447691 (= lt!525755 e!966626)))

(declare-fun c!247882 () Bool)

(assert (=> d!447691 (= c!247882 ((_ is Nil!16040) lt!525640))))

(assert (=> d!447691 (= (++!4341 lt!525640 lt!525632) lt!525755)))

(declare-fun b!1511776 () Bool)

(declare-fun res!680378 () Bool)

(assert (=> b!1511776 (=> (not res!680378) (not e!966627))))

(assert (=> b!1511776 (= res!680378 (= (size!12974 lt!525755) (+ (size!12974 lt!525640) (size!12974 lt!525632))))))

(declare-fun b!1511777 () Bool)

(assert (=> b!1511777 (= e!966627 (or (not (= lt!525632 Nil!16040)) (= lt!525755 lt!525640)))))

(assert (= (and d!447691 c!247882) b!1511774))

(assert (= (and d!447691 (not c!247882)) b!1511775))

(assert (= (and d!447691 res!680377) b!1511776))

(assert (= (and b!1511776 res!680378) b!1511777))

(declare-fun m!1775734 () Bool)

(assert (=> b!1511775 m!1775734))

(declare-fun m!1775736 () Bool)

(assert (=> d!447691 m!1775736))

(declare-fun m!1775738 () Bool)

(assert (=> d!447691 m!1775738))

(declare-fun m!1775740 () Bool)

(assert (=> d!447691 m!1775740))

(declare-fun m!1775742 () Bool)

(assert (=> b!1511776 m!1775742))

(declare-fun m!1775744 () Bool)

(assert (=> b!1511776 m!1775744))

(assert (=> b!1511776 m!1775680))

(assert (=> b!1511521 d!447691))

(declare-fun d!447693 () Bool)

(assert (=> d!447693 (= (++!4343 (++!4343 lt!525614 lt!525617) lt!525624) (++!4343 lt!525614 (++!4343 lt!525617 lt!525624)))))

(declare-fun lt!525758 () Unit!25735)

(declare-fun choose!9156 (List!16109 List!16109 List!16109) Unit!25735)

(assert (=> d!447693 (= lt!525758 (choose!9156 lt!525614 lt!525617 lt!525624))))

(assert (=> d!447693 (= (lemmaConcatAssociativity!936 lt!525614 lt!525617 lt!525624) lt!525758)))

(declare-fun bs!364379 () Bool)

(assert (= bs!364379 d!447693))

(assert (=> bs!364379 m!1775352))

(assert (=> bs!364379 m!1775354))

(assert (=> bs!364379 m!1775352))

(assert (=> bs!364379 m!1775370))

(assert (=> bs!364379 m!1775370))

(assert (=> bs!364379 m!1775392))

(declare-fun m!1775746 () Bool)

(assert (=> bs!364379 m!1775746))

(assert (=> b!1511521 d!447693))

(declare-fun d!447695 () Bool)

(declare-fun e!966628 () Bool)

(assert (=> d!447695 e!966628))

(declare-fun res!680379 () Bool)

(assert (=> d!447695 (=> res!680379 e!966628)))

(declare-fun lt!525759 () Bool)

(assert (=> d!447695 (= res!680379 (not lt!525759))))

(assert (=> d!447695 (= lt!525759 (= lt!525632 (drop!758 (++!4341 lt!525640 lt!525632) (- (size!12974 (++!4341 lt!525640 lt!525632)) (size!12974 lt!525632)))))))

(assert (=> d!447695 (= (isSuffix!299 lt!525632 (++!4341 lt!525640 lt!525632)) lt!525759)))

(declare-fun b!1511778 () Bool)

(assert (=> b!1511778 (= e!966628 (>= (size!12974 (++!4341 lt!525640 lt!525632)) (size!12974 lt!525632)))))

(assert (= (and d!447695 (not res!680379)) b!1511778))

(assert (=> d!447695 m!1775376))

(declare-fun m!1775748 () Bool)

(assert (=> d!447695 m!1775748))

(assert (=> d!447695 m!1775680))

(assert (=> d!447695 m!1775376))

(declare-fun m!1775750 () Bool)

(assert (=> d!447695 m!1775750))

(assert (=> b!1511778 m!1775376))

(assert (=> b!1511778 m!1775748))

(assert (=> b!1511778 m!1775680))

(assert (=> b!1511521 d!447695))

(declare-fun d!447697 () Bool)

(assert (=> d!447697 (= (list!6337 (append!497 acc!392 (_1!8452 (v!22855 (_1!8456 lt!525630))))) (list!6339 (c!247835 (append!497 acc!392 (_1!8452 (v!22855 (_1!8456 lt!525630)))))))))

(declare-fun bs!364380 () Bool)

(assert (= bs!364380 d!447697))

(declare-fun m!1775752 () Bool)

(assert (=> bs!364380 m!1775752))

(assert (=> b!1511521 d!447697))

(declare-fun b!1511779 () Bool)

(declare-fun e!966629 () List!16108)

(assert (=> b!1511779 (= e!966629 lt!525632)))

(declare-fun b!1511780 () Bool)

(assert (=> b!1511780 (= e!966629 (Cons!16040 (h!21441 lt!525609) (++!4341 (t!139378 lt!525609) lt!525632)))))

(declare-fun d!447699 () Bool)

(declare-fun e!966630 () Bool)

(assert (=> d!447699 e!966630))

(declare-fun res!680380 () Bool)

(assert (=> d!447699 (=> (not res!680380) (not e!966630))))

(declare-fun lt!525760 () List!16108)

(assert (=> d!447699 (= res!680380 (= (content!2311 lt!525760) ((_ map or) (content!2311 lt!525609) (content!2311 lt!525632))))))

(assert (=> d!447699 (= lt!525760 e!966629)))

(declare-fun c!247883 () Bool)

(assert (=> d!447699 (= c!247883 ((_ is Nil!16040) lt!525609))))

(assert (=> d!447699 (= (++!4341 lt!525609 lt!525632) lt!525760)))

(declare-fun b!1511781 () Bool)

(declare-fun res!680381 () Bool)

(assert (=> b!1511781 (=> (not res!680381) (not e!966630))))

(assert (=> b!1511781 (= res!680381 (= (size!12974 lt!525760) (+ (size!12974 lt!525609) (size!12974 lt!525632))))))

(declare-fun b!1511782 () Bool)

(assert (=> b!1511782 (= e!966630 (or (not (= lt!525632 Nil!16040)) (= lt!525760 lt!525609)))))

(assert (= (and d!447699 c!247883) b!1511779))

(assert (= (and d!447699 (not c!247883)) b!1511780))

(assert (= (and d!447699 res!680380) b!1511781))

(assert (= (and b!1511781 res!680381) b!1511782))

(declare-fun m!1775754 () Bool)

(assert (=> b!1511780 m!1775754))

(declare-fun m!1775756 () Bool)

(assert (=> d!447699 m!1775756))

(declare-fun m!1775758 () Bool)

(assert (=> d!447699 m!1775758))

(assert (=> d!447699 m!1775740))

(declare-fun m!1775760 () Bool)

(assert (=> b!1511781 m!1775760))

(assert (=> b!1511781 m!1775592))

(assert (=> b!1511781 m!1775680))

(assert (=> b!1511521 d!447699))

(declare-fun d!447701 () Bool)

(assert (=> d!447701 (= (list!6337 (_1!8449 lt!525613)) (list!6339 (c!247835 (_1!8449 lt!525613))))))

(declare-fun bs!364381 () Bool)

(assert (= bs!364381 d!447701))

(declare-fun m!1775762 () Bool)

(assert (=> bs!364381 m!1775762))

(assert (=> b!1511521 d!447701))

(declare-fun b!1511784 () Bool)

(declare-fun res!680384 () Bool)

(declare-fun e!966632 () Bool)

(assert (=> b!1511784 (=> (not res!680384) (not e!966632))))

(declare-fun lt!525761 () tuple2!14886)

(assert (=> b!1511784 (= res!680384 (= (list!6337 (_1!8449 lt!525761)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 (_2!8452 (v!22855 (_1!8456 lt!525630))))))))))

(declare-fun b!1511785 () Bool)

(assert (=> b!1511785 (= e!966632 (= (list!6336 (_2!8449 lt!525761)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 (_2!8452 (v!22855 (_1!8456 lt!525630))))))))))

(declare-fun b!1511786 () Bool)

(declare-fun e!966631 () Bool)

(declare-fun e!966634 () Bool)

(assert (=> b!1511786 (= e!966631 e!966634)))

(declare-fun res!680383 () Bool)

(assert (=> b!1511786 (= res!680383 (< (size!12971 (_2!8449 lt!525761)) (size!12971 (_2!8452 (v!22855 (_1!8456 lt!525630))))))))

(assert (=> b!1511786 (=> (not res!680383) (not e!966634))))

(declare-fun b!1511783 () Bool)

(assert (=> b!1511783 (= e!966631 (= (list!6336 (_2!8449 lt!525761)) (list!6336 (_2!8452 (v!22855 (_1!8456 lt!525630))))))))

(declare-fun d!447703 () Bool)

(assert (=> d!447703 e!966632))

(declare-fun res!680382 () Bool)

(assert (=> d!447703 (=> (not res!680382) (not e!966632))))

(assert (=> d!447703 (= res!680382 e!966631)))

(declare-fun c!247884 () Bool)

(assert (=> d!447703 (= c!247884 (> (size!12972 (_1!8449 lt!525761)) 0))))

(declare-fun e!966633 () tuple2!14886)

(assert (=> d!447703 (= lt!525761 e!966633)))

(declare-fun c!247885 () Bool)

(declare-fun lt!525763 () Option!2925)

(assert (=> d!447703 (= c!247885 ((_ is Some!2924) lt!525763))))

(assert (=> d!447703 (= lt!525763 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 (_2!8452 (v!22855 (_1!8456 lt!525630)))))))

(assert (=> d!447703 (= (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 (_1!8456 lt!525630)))) lt!525761)))

(declare-fun b!1511787 () Bool)

(assert (=> b!1511787 (= e!966634 (not (isEmpty!9921 (_1!8449 lt!525761))))))

(declare-fun b!1511788 () Bool)

(assert (=> b!1511788 (= e!966633 (tuple2!14887 (BalanceConc!10807 Empty!5432) (_2!8452 (v!22855 (_1!8456 lt!525630)))))))

(declare-fun b!1511789 () Bool)

(declare-fun lt!525762 () tuple2!14886)

(assert (=> b!1511789 (= e!966633 (tuple2!14887 (prepend!461 (_1!8449 lt!525762) (_1!8452 (v!22855 lt!525763))) (_2!8449 lt!525762)))))

(assert (=> b!1511789 (= lt!525762 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525763))))))

(assert (= (and d!447703 c!247885) b!1511789))

(assert (= (and d!447703 (not c!247885)) b!1511788))

(assert (= (and d!447703 c!247884) b!1511786))

(assert (= (and d!447703 (not c!247884)) b!1511783))

(assert (= (and b!1511786 res!680383) b!1511787))

(assert (= (and d!447703 res!680382) b!1511784))

(assert (= (and b!1511784 res!680384) b!1511785))

(declare-fun m!1775764 () Bool)

(assert (=> b!1511786 m!1775764))

(declare-fun m!1775766 () Bool)

(assert (=> b!1511786 m!1775766))

(declare-fun m!1775768 () Bool)

(assert (=> b!1511787 m!1775768))

(declare-fun m!1775770 () Bool)

(assert (=> d!447703 m!1775770))

(declare-fun m!1775772 () Bool)

(assert (=> d!447703 m!1775772))

(declare-fun m!1775774 () Bool)

(assert (=> b!1511789 m!1775774))

(declare-fun m!1775776 () Bool)

(assert (=> b!1511789 m!1775776))

(declare-fun m!1775778 () Bool)

(assert (=> b!1511783 m!1775778))

(assert (=> b!1511783 m!1775398))

(declare-fun m!1775780 () Bool)

(assert (=> b!1511784 m!1775780))

(assert (=> b!1511784 m!1775398))

(assert (=> b!1511784 m!1775398))

(declare-fun m!1775782 () Bool)

(assert (=> b!1511784 m!1775782))

(assert (=> b!1511785 m!1775778))

(assert (=> b!1511785 m!1775398))

(assert (=> b!1511785 m!1775398))

(assert (=> b!1511785 m!1775782))

(assert (=> b!1511521 d!447703))

(declare-fun d!447705 () Bool)

(declare-fun lt!525766 () BalanceConc!10804)

(assert (=> d!447705 (= (list!6336 lt!525766) (originalCharacters!3702 (_1!8452 (v!22855 (_1!8456 lt!525630)))))))

(declare-fun dynLambda!7218 (Int TokenValue!2930) BalanceConc!10804)

(assert (=> d!447705 (= lt!525766 (dynLambda!7218 (toChars!4048 (transformation!2840 (rule!4633 (_1!8452 (v!22855 (_1!8456 lt!525630)))))) (value!90600 (_1!8452 (v!22855 (_1!8456 lt!525630))))))))

(assert (=> d!447705 (= (charsOf!1627 (_1!8452 (v!22855 (_1!8456 lt!525630)))) lt!525766)))

(declare-fun b_lambda!47495 () Bool)

(assert (=> (not b_lambda!47495) (not d!447705)))

(declare-fun t!139384 () Bool)

(declare-fun tb!86201 () Bool)

(assert (=> (and b!1511542 (= (toChars!4048 (transformation!2840 (h!21444 rules!1640))) (toChars!4048 (transformation!2840 (rule!4633 (_1!8452 (v!22855 (_1!8456 lt!525630))))))) t!139384) tb!86201))

(declare-fun b!1511794 () Bool)

(declare-fun e!966637 () Bool)

(declare-fun tp!432024 () Bool)

(assert (=> b!1511794 (= e!966637 (and (inv!21263 (c!247834 (dynLambda!7218 (toChars!4048 (transformation!2840 (rule!4633 (_1!8452 (v!22855 (_1!8456 lt!525630)))))) (value!90600 (_1!8452 (v!22855 (_1!8456 lt!525630))))))) tp!432024))))

(declare-fun result!103650 () Bool)

(assert (=> tb!86201 (= result!103650 (and (inv!21268 (dynLambda!7218 (toChars!4048 (transformation!2840 (rule!4633 (_1!8452 (v!22855 (_1!8456 lt!525630)))))) (value!90600 (_1!8452 (v!22855 (_1!8456 lt!525630)))))) e!966637))))

(assert (= tb!86201 b!1511794))

(declare-fun m!1775784 () Bool)

(assert (=> b!1511794 m!1775784))

(declare-fun m!1775786 () Bool)

(assert (=> tb!86201 m!1775786))

(assert (=> d!447705 t!139384))

(declare-fun b_and!105205 () Bool)

(assert (= b_and!105195 (and (=> t!139384 result!103650) b_and!105205)))

(declare-fun m!1775788 () Bool)

(assert (=> d!447705 m!1775788))

(declare-fun m!1775790 () Bool)

(assert (=> d!447705 m!1775790))

(assert (=> b!1511521 d!447705))

(declare-fun b!1511795 () Bool)

(declare-fun e!966638 () List!16108)

(assert (=> b!1511795 (= e!966638 lt!525632)))

(declare-fun b!1511796 () Bool)

(assert (=> b!1511796 (= e!966638 (Cons!16040 (h!21441 lt!525622) (++!4341 (t!139378 lt!525622) lt!525632)))))

(declare-fun d!447707 () Bool)

(declare-fun e!966639 () Bool)

(assert (=> d!447707 e!966639))

(declare-fun res!680385 () Bool)

(assert (=> d!447707 (=> (not res!680385) (not e!966639))))

(declare-fun lt!525767 () List!16108)

(assert (=> d!447707 (= res!680385 (= (content!2311 lt!525767) ((_ map or) (content!2311 lt!525622) (content!2311 lt!525632))))))

(assert (=> d!447707 (= lt!525767 e!966638)))

(declare-fun c!247886 () Bool)

(assert (=> d!447707 (= c!247886 ((_ is Nil!16040) lt!525622))))

(assert (=> d!447707 (= (++!4341 lt!525622 lt!525632) lt!525767)))

(declare-fun b!1511797 () Bool)

(declare-fun res!680386 () Bool)

(assert (=> b!1511797 (=> (not res!680386) (not e!966639))))

(assert (=> b!1511797 (= res!680386 (= (size!12974 lt!525767) (+ (size!12974 lt!525622) (size!12974 lt!525632))))))

(declare-fun b!1511798 () Bool)

(assert (=> b!1511798 (= e!966639 (or (not (= lt!525632 Nil!16040)) (= lt!525767 lt!525622)))))

(assert (= (and d!447707 c!247886) b!1511795))

(assert (= (and d!447707 (not c!247886)) b!1511796))

(assert (= (and d!447707 res!680385) b!1511797))

(assert (= (and b!1511797 res!680386) b!1511798))

(declare-fun m!1775792 () Bool)

(assert (=> b!1511796 m!1775792))

(declare-fun m!1775794 () Bool)

(assert (=> d!447707 m!1775794))

(assert (=> d!447707 m!1775722))

(assert (=> d!447707 m!1775740))

(declare-fun m!1775796 () Bool)

(assert (=> b!1511797 m!1775796))

(assert (=> b!1511797 m!1775726))

(assert (=> b!1511797 m!1775680))

(assert (=> b!1511521 d!447707))

(declare-fun d!447709 () Bool)

(assert (=> d!447709 (= (lexList!744 thiss!13241 rules!1640 lt!525609) (tuple2!14895 lt!525634 Nil!16040))))

(declare-fun lt!525770 () Unit!25735)

(declare-fun choose!9157 (LexerInterface!2493 List!16111 List!16108 List!16108 List!16109 List!16109 List!16108) Unit!25735)

(assert (=> d!447709 (= lt!525770 (choose!9157 thiss!13241 rules!1640 lt!525609 lt!525632 lt!525634 lt!525624 (list!6336 (_2!8449 lt!525613))))))

(assert (=> d!447709 (not (isEmpty!9919 rules!1640))))

(assert (=> d!447709 (= (lemmaLexThenLexPrefix!226 thiss!13241 rules!1640 lt!525609 lt!525632 lt!525634 lt!525624 (list!6336 (_2!8449 lt!525613))) lt!525770)))

(declare-fun bs!364382 () Bool)

(assert (= bs!364382 d!447709))

(assert (=> bs!364382 m!1775374))

(assert (=> bs!364382 m!1775388))

(declare-fun m!1775798 () Bool)

(assert (=> bs!364382 m!1775798))

(assert (=> bs!364382 m!1775302))

(assert (=> b!1511521 d!447709))

(declare-fun d!447711 () Bool)

(assert (=> d!447711 (= (list!6336 lt!525628) (list!6338 (c!247834 lt!525628)))))

(declare-fun bs!364383 () Bool)

(assert (= bs!364383 d!447711))

(declare-fun m!1775800 () Bool)

(assert (=> bs!364383 m!1775800))

(assert (=> b!1511521 d!447711))

(declare-fun d!447713 () Bool)

(declare-fun e!966640 () Bool)

(assert (=> d!447713 e!966640))

(declare-fun res!680387 () Bool)

(assert (=> d!447713 (=> res!680387 e!966640)))

(declare-fun lt!525771 () Bool)

(assert (=> d!447713 (= res!680387 (not lt!525771))))

(assert (=> d!447713 (= lt!525771 (= lt!525633 (drop!758 lt!525620 (- (size!12974 lt!525620) (size!12974 lt!525633)))))))

(assert (=> d!447713 (= (isSuffix!299 lt!525633 lt!525620) lt!525771)))

(declare-fun b!1511799 () Bool)

(assert (=> b!1511799 (= e!966640 (>= (size!12974 lt!525620) (size!12974 lt!525633)))))

(assert (= (and d!447713 (not res!680387)) b!1511799))

(assert (=> d!447713 m!1775678))

(declare-fun m!1775802 () Bool)

(assert (=> d!447713 m!1775802))

(declare-fun m!1775804 () Bool)

(assert (=> d!447713 m!1775804))

(assert (=> b!1511799 m!1775678))

(assert (=> b!1511799 m!1775802))

(assert (=> b!1511558 d!447713))

(declare-fun d!447715 () Bool)

(declare-fun e!966641 () Bool)

(assert (=> d!447715 e!966641))

(declare-fun res!680388 () Bool)

(assert (=> d!447715 (=> res!680388 e!966641)))

(declare-fun lt!525772 () Bool)

(assert (=> d!447715 (= res!680388 (not lt!525772))))

(assert (=> d!447715 (= lt!525772 (= lt!525633 (drop!758 lt!525623 (- (size!12974 lt!525623) (size!12974 lt!525633)))))))

(assert (=> d!447715 (= (isSuffix!299 lt!525633 lt!525623) lt!525772)))

(declare-fun b!1511800 () Bool)

(assert (=> b!1511800 (= e!966641 (>= (size!12974 lt!525623) (size!12974 lt!525633)))))

(assert (= (and d!447715 (not res!680388)) b!1511800))

(declare-fun m!1775806 () Bool)

(assert (=> d!447715 m!1775806))

(assert (=> d!447715 m!1775802))

(declare-fun m!1775808 () Bool)

(assert (=> d!447715 m!1775808))

(assert (=> b!1511800 m!1775806))

(assert (=> b!1511800 m!1775802))

(assert (=> b!1511558 d!447715))

(declare-fun d!447717 () Bool)

(assert (=> d!447717 (isSuffix!299 lt!525633 (++!4341 lt!525616 lt!525633))))

(declare-fun lt!525773 () Unit!25735)

(assert (=> d!447717 (= lt!525773 (choose!9155 lt!525616 lt!525633))))

(assert (=> d!447717 (= (lemmaConcatTwoListThenFSndIsSuffix!277 lt!525616 lt!525633) lt!525773)))

(declare-fun bs!364384 () Bool)

(assert (= bs!364384 d!447717))

(assert (=> bs!364384 m!1775278))

(assert (=> bs!364384 m!1775278))

(declare-fun m!1775810 () Bool)

(assert (=> bs!364384 m!1775810))

(declare-fun m!1775812 () Bool)

(assert (=> bs!364384 m!1775812))

(assert (=> b!1511558 d!447717))

(declare-fun d!447719 () Bool)

(declare-fun c!247887 () Bool)

(assert (=> d!447719 (= c!247887 ((_ is Node!5431) (c!247834 treated!70)))))

(declare-fun e!966642 () Bool)

(assert (=> d!447719 (= (inv!21263 (c!247834 treated!70)) e!966642)))

(declare-fun b!1511801 () Bool)

(assert (=> b!1511801 (= e!966642 (inv!21271 (c!247834 treated!70)))))

(declare-fun b!1511802 () Bool)

(declare-fun e!966643 () Bool)

(assert (=> b!1511802 (= e!966642 e!966643)))

(declare-fun res!680389 () Bool)

(assert (=> b!1511802 (= res!680389 (not ((_ is Leaf!8054) (c!247834 treated!70))))))

(assert (=> b!1511802 (=> res!680389 e!966643)))

(declare-fun b!1511803 () Bool)

(assert (=> b!1511803 (= e!966643 (inv!21272 (c!247834 treated!70)))))

(assert (= (and d!447719 c!247887) b!1511801))

(assert (= (and d!447719 (not c!247887)) b!1511802))

(assert (= (and b!1511802 (not res!680389)) b!1511803))

(declare-fun m!1775814 () Bool)

(assert (=> b!1511801 m!1775814))

(declare-fun m!1775816 () Bool)

(assert (=> b!1511803 m!1775816))

(assert (=> b!1511522 d!447719))

(declare-fun d!447721 () Bool)

(assert (=> d!447721 (= (inv!21268 (totalInput!2291 cacheFurthestNullable!64)) (isBalanced!1606 (c!247834 (totalInput!2291 cacheFurthestNullable!64))))))

(declare-fun bs!364385 () Bool)

(assert (= bs!364385 d!447721))

(declare-fun m!1775818 () Bool)

(assert (=> bs!364385 m!1775818))

(assert (=> b!1511562 d!447721))

(declare-fun d!447723 () Bool)

(assert (=> d!447723 (= (array_inv!1658 (_keys!1762 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) (bvsge (size!12967 (_keys!1762 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1511539 d!447723))

(declare-fun d!447725 () Bool)

(assert (=> d!447725 (= (array_inv!1659 (_values!1747 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) (bvsge (size!12970 (_values!1747 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1511539 d!447725))

(declare-fun d!447727 () Bool)

(declare-fun validCacheMapFurthestNullable!46 (MutableMap!1412 BalanceConc!10804) Bool)

(assert (=> d!447727 (= (valid!1169 cacheFurthestNullable!64) (validCacheMapFurthestNullable!46 (cache!1793 cacheFurthestNullable!64) (totalInput!2291 cacheFurthestNullable!64)))))

(declare-fun bs!364386 () Bool)

(assert (= bs!364386 d!447727))

(declare-fun m!1775820 () Bool)

(assert (=> bs!364386 m!1775820))

(assert (=> b!1511523 d!447727))

(declare-fun d!447729 () Bool)

(assert (=> d!447729 (= (inv!21261 (tag!3104 (h!21444 rules!1640))) (= (mod (str.len (value!90599 (tag!3104 (h!21444 rules!1640)))) 2) 0))))

(assert (=> b!1511543 d!447729))

(declare-fun d!447731 () Bool)

(declare-fun res!680392 () Bool)

(declare-fun e!966646 () Bool)

(assert (=> d!447731 (=> (not res!680392) (not e!966646))))

(declare-fun semiInverseModEq!1069 (Int Int) Bool)

(assert (=> d!447731 (= res!680392 (semiInverseModEq!1069 (toChars!4048 (transformation!2840 (h!21444 rules!1640))) (toValue!4189 (transformation!2840 (h!21444 rules!1640)))))))

(assert (=> d!447731 (= (inv!21270 (transformation!2840 (h!21444 rules!1640))) e!966646)))

(declare-fun b!1511806 () Bool)

(declare-fun equivClasses!1028 (Int Int) Bool)

(assert (=> b!1511806 (= e!966646 (equivClasses!1028 (toChars!4048 (transformation!2840 (h!21444 rules!1640))) (toValue!4189 (transformation!2840 (h!21444 rules!1640)))))))

(assert (= (and d!447731 res!680392) b!1511806))

(declare-fun m!1775822 () Bool)

(assert (=> d!447731 m!1775822))

(declare-fun m!1775824 () Bool)

(assert (=> b!1511806 m!1775824))

(assert (=> b!1511543 d!447731))

(declare-fun d!447733 () Bool)

(declare-fun c!247888 () Bool)

(assert (=> d!447733 (= c!247888 ((_ is Node!5431) (c!247834 totalInput!458)))))

(declare-fun e!966647 () Bool)

(assert (=> d!447733 (= (inv!21263 (c!247834 totalInput!458)) e!966647)))

(declare-fun b!1511807 () Bool)

(assert (=> b!1511807 (= e!966647 (inv!21271 (c!247834 totalInput!458)))))

(declare-fun b!1511808 () Bool)

(declare-fun e!966648 () Bool)

(assert (=> b!1511808 (= e!966647 e!966648)))

(declare-fun res!680393 () Bool)

(assert (=> b!1511808 (= res!680393 (not ((_ is Leaf!8054) (c!247834 totalInput!458))))))

(assert (=> b!1511808 (=> res!680393 e!966648)))

(declare-fun b!1511809 () Bool)

(assert (=> b!1511809 (= e!966648 (inv!21272 (c!247834 totalInput!458)))))

(assert (= (and d!447733 c!247888) b!1511807))

(assert (= (and d!447733 (not c!247888)) b!1511808))

(assert (= (and b!1511808 (not res!680393)) b!1511809))

(declare-fun m!1775826 () Bool)

(assert (=> b!1511807 m!1775826))

(declare-fun m!1775828 () Bool)

(assert (=> b!1511809 m!1775828))

(assert (=> b!1511544 d!447733))

(declare-fun d!447735 () Bool)

(assert (=> d!447735 (= (array_inv!1658 (_keys!1760 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) (bvsge (size!12967 (_keys!1760 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1511563 d!447735))

(declare-fun d!447737 () Bool)

(assert (=> d!447737 (= (array_inv!1661 (_values!1745 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) (bvsge (size!12966 (_values!1745 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1511563 d!447737))

(declare-fun b!1511810 () Bool)

(declare-fun e!966649 () List!16108)

(assert (=> b!1511810 (= e!966649 lt!525633)))

(declare-fun b!1511811 () Bool)

(assert (=> b!1511811 (= e!966649 (Cons!16040 (h!21441 lt!525616) (++!4341 (t!139378 lt!525616) lt!525633)))))

(declare-fun d!447739 () Bool)

(declare-fun e!966650 () Bool)

(assert (=> d!447739 e!966650))

(declare-fun res!680394 () Bool)

(assert (=> d!447739 (=> (not res!680394) (not e!966650))))

(declare-fun lt!525774 () List!16108)

(assert (=> d!447739 (= res!680394 (= (content!2311 lt!525774) ((_ map or) (content!2311 lt!525616) (content!2311 lt!525633))))))

(assert (=> d!447739 (= lt!525774 e!966649)))

(declare-fun c!247889 () Bool)

(assert (=> d!447739 (= c!247889 ((_ is Nil!16040) lt!525616))))

(assert (=> d!447739 (= (++!4341 lt!525616 lt!525633) lt!525774)))

(declare-fun b!1511812 () Bool)

(declare-fun res!680395 () Bool)

(assert (=> b!1511812 (=> (not res!680395) (not e!966650))))

(assert (=> b!1511812 (= res!680395 (= (size!12974 lt!525774) (+ (size!12974 lt!525616) (size!12974 lt!525633))))))

(declare-fun b!1511813 () Bool)

(assert (=> b!1511813 (= e!966650 (or (not (= lt!525633 Nil!16040)) (= lt!525774 lt!525616)))))

(assert (= (and d!447739 c!247889) b!1511810))

(assert (= (and d!447739 (not c!247889)) b!1511811))

(assert (= (and d!447739 res!680394) b!1511812))

(assert (= (and b!1511812 res!680395) b!1511813))

(declare-fun m!1775830 () Bool)

(assert (=> b!1511811 m!1775830))

(declare-fun m!1775832 () Bool)

(assert (=> d!447739 m!1775832))

(assert (=> d!447739 m!1775572))

(declare-fun m!1775834 () Bool)

(assert (=> d!447739 m!1775834))

(declare-fun m!1775836 () Bool)

(assert (=> b!1511812 m!1775836))

(assert (=> b!1511812 m!1775578))

(assert (=> b!1511812 m!1775802))

(assert (=> b!1511564 d!447739))

(declare-fun d!447741 () Bool)

(assert (=> d!447741 (= (list!6336 totalInput!458) (list!6338 (c!247834 totalInput!458)))))

(declare-fun bs!364387 () Bool)

(assert (= bs!364387 d!447741))

(declare-fun m!1775838 () Bool)

(assert (=> bs!364387 m!1775838))

(assert (=> b!1511564 d!447741))

(declare-fun d!447743 () Bool)

(assert (=> d!447743 (= (list!6336 input!1102) (list!6338 (c!247834 input!1102)))))

(declare-fun bs!364388 () Bool)

(assert (= bs!364388 d!447743))

(declare-fun m!1775840 () Bool)

(assert (=> bs!364388 m!1775840))

(assert (=> b!1511564 d!447743))

(declare-fun d!447745 () Bool)

(assert (=> d!447745 (= (list!6336 treated!70) (list!6338 (c!247834 treated!70)))))

(declare-fun bs!364389 () Bool)

(assert (= bs!364389 d!447745))

(declare-fun m!1775842 () Bool)

(assert (=> bs!364389 m!1775842))

(assert (=> b!1511564 d!447745))

(declare-fun d!447747 () Bool)

(assert (=> d!447747 (= (list!6337 acc!392) (list!6339 (c!247835 acc!392)))))

(declare-fun bs!364390 () Bool)

(assert (= bs!364390 d!447747))

(declare-fun m!1775844 () Bool)

(assert (=> bs!364390 m!1775844))

(assert (=> b!1511545 d!447747))

(declare-fun d!447749 () Bool)

(assert (=> d!447749 (= (list!6337 (_1!8449 lt!525618)) (list!6339 (c!247835 (_1!8449 lt!525618))))))

(declare-fun bs!364391 () Bool)

(assert (= bs!364391 d!447749))

(declare-fun m!1775846 () Bool)

(assert (=> bs!364391 m!1775846))

(assert (=> b!1511545 d!447749))

(declare-fun b!1511815 () Bool)

(declare-fun res!680398 () Bool)

(declare-fun e!966652 () Bool)

(assert (=> b!1511815 (=> (not res!680398) (not e!966652))))

(declare-fun lt!525775 () tuple2!14886)

(assert (=> b!1511815 (= res!680398 (= (list!6337 (_1!8449 lt!525775)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 treated!70)))))))

(declare-fun b!1511816 () Bool)

(assert (=> b!1511816 (= e!966652 (= (list!6336 (_2!8449 lt!525775)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 treated!70)))))))

(declare-fun b!1511817 () Bool)

(declare-fun e!966651 () Bool)

(declare-fun e!966654 () Bool)

(assert (=> b!1511817 (= e!966651 e!966654)))

(declare-fun res!680397 () Bool)

(assert (=> b!1511817 (= res!680397 (< (size!12971 (_2!8449 lt!525775)) (size!12971 treated!70)))))

(assert (=> b!1511817 (=> (not res!680397) (not e!966654))))

(declare-fun b!1511814 () Bool)

(assert (=> b!1511814 (= e!966651 (= (list!6336 (_2!8449 lt!525775)) (list!6336 treated!70)))))

(declare-fun d!447751 () Bool)

(assert (=> d!447751 e!966652))

(declare-fun res!680396 () Bool)

(assert (=> d!447751 (=> (not res!680396) (not e!966652))))

(assert (=> d!447751 (= res!680396 e!966651)))

(declare-fun c!247890 () Bool)

(assert (=> d!447751 (= c!247890 (> (size!12972 (_1!8449 lt!525775)) 0))))

(declare-fun e!966653 () tuple2!14886)

(assert (=> d!447751 (= lt!525775 e!966653)))

(declare-fun c!247891 () Bool)

(declare-fun lt!525777 () Option!2925)

(assert (=> d!447751 (= c!247891 ((_ is Some!2924) lt!525777))))

(assert (=> d!447751 (= lt!525777 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 treated!70))))

(assert (=> d!447751 (= (lexRec!328 thiss!13241 rules!1640 treated!70) lt!525775)))

(declare-fun b!1511818 () Bool)

(assert (=> b!1511818 (= e!966654 (not (isEmpty!9921 (_1!8449 lt!525775))))))

(declare-fun b!1511819 () Bool)

(assert (=> b!1511819 (= e!966653 (tuple2!14887 (BalanceConc!10807 Empty!5432) treated!70))))

(declare-fun b!1511820 () Bool)

(declare-fun lt!525776 () tuple2!14886)

(assert (=> b!1511820 (= e!966653 (tuple2!14887 (prepend!461 (_1!8449 lt!525776) (_1!8452 (v!22855 lt!525777))) (_2!8449 lt!525776)))))

(assert (=> b!1511820 (= lt!525776 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525777))))))

(assert (= (and d!447751 c!247891) b!1511820))

(assert (= (and d!447751 (not c!247891)) b!1511819))

(assert (= (and d!447751 c!247890) b!1511817))

(assert (= (and d!447751 (not c!247890)) b!1511814))

(assert (= (and b!1511817 res!680397) b!1511818))

(assert (= (and d!447751 res!680396) b!1511815))

(assert (= (and b!1511815 res!680398) b!1511816))

(declare-fun m!1775848 () Bool)

(assert (=> b!1511817 m!1775848))

(declare-fun m!1775850 () Bool)

(assert (=> b!1511817 m!1775850))

(declare-fun m!1775852 () Bool)

(assert (=> b!1511818 m!1775852))

(declare-fun m!1775854 () Bool)

(assert (=> d!447751 m!1775854))

(declare-fun m!1775856 () Bool)

(assert (=> d!447751 m!1775856))

(declare-fun m!1775858 () Bool)

(assert (=> b!1511820 m!1775858))

(declare-fun m!1775860 () Bool)

(assert (=> b!1511820 m!1775860))

(declare-fun m!1775862 () Bool)

(assert (=> b!1511814 m!1775862))

(assert (=> b!1511814 m!1775284))

(declare-fun m!1775864 () Bool)

(assert (=> b!1511815 m!1775864))

(assert (=> b!1511815 m!1775284))

(assert (=> b!1511815 m!1775284))

(declare-fun m!1775866 () Bool)

(assert (=> b!1511815 m!1775866))

(assert (=> b!1511816 m!1775862))

(assert (=> b!1511816 m!1775284))

(assert (=> b!1511816 m!1775284))

(assert (=> b!1511816 m!1775866))

(assert (=> b!1511545 d!447751))

(declare-fun d!447753 () Bool)

(assert (=> d!447753 (= (valid!1169 (_4!333 lt!525630)) (validCacheMapFurthestNullable!46 (cache!1793 (_4!333 lt!525630)) (totalInput!2291 (_4!333 lt!525630))))))

(declare-fun bs!364392 () Bool)

(assert (= bs!364392 d!447753))

(declare-fun m!1775868 () Bool)

(assert (=> bs!364392 m!1775868))

(assert (=> b!1511528 d!447753))

(declare-fun d!447755 () Bool)

(declare-fun validCacheMapUp!133 (MutableMap!1411) Bool)

(assert (=> d!447755 (= (valid!1170 (_2!8456 lt!525630)) (validCacheMapUp!133 (cache!1792 (_2!8456 lt!525630))))))

(declare-fun bs!364393 () Bool)

(assert (= bs!364393 d!447755))

(declare-fun m!1775870 () Bool)

(assert (=> bs!364393 m!1775870))

(assert (=> b!1511549 d!447755))

(declare-fun d!447757 () Bool)

(assert (=> d!447757 (= (inv!21268 treated!70) (isBalanced!1606 (c!247834 treated!70)))))

(declare-fun bs!364394 () Bool)

(assert (= bs!364394 d!447757))

(declare-fun m!1775872 () Bool)

(assert (=> bs!364394 m!1775872))

(assert (=> start!141038 d!447757))

(declare-fun d!447759 () Bool)

(assert (=> d!447759 (= (inv!21268 input!1102) (isBalanced!1606 (c!247834 input!1102)))))

(declare-fun bs!364395 () Bool)

(assert (= bs!364395 d!447759))

(declare-fun m!1775874 () Bool)

(assert (=> bs!364395 m!1775874))

(assert (=> start!141038 d!447759))

(declare-fun d!447761 () Bool)

(declare-fun res!680401 () Bool)

(declare-fun e!966657 () Bool)

(assert (=> d!447761 (=> (not res!680401) (not e!966657))))

(assert (=> d!447761 (= res!680401 ((_ is HashMap!1412) (cache!1793 cacheFurthestNullable!64)))))

(assert (=> d!447761 (= (inv!21269 cacheFurthestNullable!64) e!966657)))

(declare-fun b!1511823 () Bool)

(assert (=> b!1511823 (= e!966657 (validCacheMapFurthestNullable!46 (cache!1793 cacheFurthestNullable!64) (totalInput!2291 cacheFurthestNullable!64)))))

(assert (= (and d!447761 res!680401) b!1511823))

(assert (=> b!1511823 m!1775820))

(assert (=> start!141038 d!447761))

(declare-fun d!447763 () Bool)

(declare-fun res!680404 () Bool)

(declare-fun e!966660 () Bool)

(assert (=> d!447763 (=> (not res!680404) (not e!966660))))

(assert (=> d!447763 (= res!680404 ((_ is HashMap!1410) (cache!1791 cacheDown!629)))))

(assert (=> d!447763 (= (inv!21267 cacheDown!629) e!966660)))

(declare-fun b!1511826 () Bool)

(declare-fun validCacheMapDown!133 (MutableMap!1410) Bool)

(assert (=> b!1511826 (= e!966660 (validCacheMapDown!133 (cache!1791 cacheDown!629)))))

(assert (= (and d!447763 res!680404) b!1511826))

(declare-fun m!1775876 () Bool)

(assert (=> b!1511826 m!1775876))

(assert (=> start!141038 d!447763))

(declare-fun d!447765 () Bool)

(assert (=> d!447765 (= (inv!21268 totalInput!458) (isBalanced!1606 (c!247834 totalInput!458)))))

(declare-fun bs!364396 () Bool)

(assert (= bs!364396 d!447765))

(declare-fun m!1775878 () Bool)

(assert (=> bs!364396 m!1775878))

(assert (=> start!141038 d!447765))

(declare-fun d!447767 () Bool)

(assert (=> d!447767 (= (inv!21265 acc!392) (isBalanced!1605 (c!247835 acc!392)))))

(declare-fun bs!364397 () Bool)

(assert (= bs!364397 d!447767))

(declare-fun m!1775880 () Bool)

(assert (=> bs!364397 m!1775880))

(assert (=> start!141038 d!447767))

(declare-fun d!447769 () Bool)

(declare-fun res!680407 () Bool)

(declare-fun e!966663 () Bool)

(assert (=> d!447769 (=> (not res!680407) (not e!966663))))

(assert (=> d!447769 (= res!680407 ((_ is HashMap!1411) (cache!1792 cacheUp!616)))))

(assert (=> d!447769 (= (inv!21266 cacheUp!616) e!966663)))

(declare-fun b!1511829 () Bool)

(assert (=> b!1511829 (= e!966663 (validCacheMapUp!133 (cache!1792 cacheUp!616)))))

(assert (= (and d!447769 res!680407) b!1511829))

(declare-fun m!1775882 () Bool)

(assert (=> b!1511829 m!1775882))

(assert (=> start!141038 d!447769))

(declare-fun d!447771 () Bool)

(assert (=> d!447771 (= (valid!1170 cacheUp!616) (validCacheMapUp!133 (cache!1792 cacheUp!616)))))

(declare-fun bs!364398 () Bool)

(assert (= bs!364398 d!447771))

(assert (=> bs!364398 m!1775882))

(assert (=> b!1511529 d!447771))

(declare-fun d!447773 () Bool)

(assert (=> d!447773 (= (isEmpty!9919 rules!1640) ((_ is Nil!16043) rules!1640))))

(assert (=> b!1511548 d!447773))

(declare-fun d!447775 () Bool)

(assert (=> d!447775 (= (valid!1171 cacheDown!629) (validCacheMapDown!133 (cache!1791 cacheDown!629)))))

(declare-fun bs!364399 () Bool)

(assert (= bs!364399 d!447775))

(assert (=> bs!364399 m!1775876))

(assert (=> b!1511551 d!447775))

(declare-fun d!447777 () Bool)

(declare-fun c!247894 () Bool)

(assert (=> d!447777 (= c!247894 ((_ is Node!5432) (c!247835 acc!392)))))

(declare-fun e!966668 () Bool)

(assert (=> d!447777 (= (inv!21264 (c!247835 acc!392)) e!966668)))

(declare-fun b!1511836 () Bool)

(declare-fun inv!21273 (Conc!5432) Bool)

(assert (=> b!1511836 (= e!966668 (inv!21273 (c!247835 acc!392)))))

(declare-fun b!1511837 () Bool)

(declare-fun e!966669 () Bool)

(assert (=> b!1511837 (= e!966668 e!966669)))

(declare-fun res!680410 () Bool)

(assert (=> b!1511837 (= res!680410 (not ((_ is Leaf!8055) (c!247835 acc!392))))))

(assert (=> b!1511837 (=> res!680410 e!966669)))

(declare-fun b!1511838 () Bool)

(declare-fun inv!21274 (Conc!5432) Bool)

(assert (=> b!1511838 (= e!966669 (inv!21274 (c!247835 acc!392)))))

(assert (= (and d!447777 c!247894) b!1511836))

(assert (= (and d!447777 (not c!247894)) b!1511837))

(assert (= (and b!1511837 (not res!680410)) b!1511838))

(declare-fun m!1775884 () Bool)

(assert (=> b!1511836 m!1775884))

(declare-fun m!1775886 () Bool)

(assert (=> b!1511838 m!1775886))

(assert (=> b!1511531 d!447777))

(declare-fun d!447779 () Bool)

(declare-fun e!966670 () Bool)

(assert (=> d!447779 e!966670))

(declare-fun res!680411 () Bool)

(assert (=> d!447779 (=> (not res!680411) (not e!966670))))

(assert (=> d!447779 (= res!680411 (isBalanced!1605 (prepend!462 (c!247835 (_1!8449 lt!525638)) (_1!8452 (v!22855 lt!525615)))))))

(declare-fun lt!525778 () BalanceConc!10806)

(assert (=> d!447779 (= lt!525778 (BalanceConc!10807 (prepend!462 (c!247835 (_1!8449 lt!525638)) (_1!8452 (v!22855 lt!525615)))))))

(assert (=> d!447779 (= (prepend!461 (_1!8449 lt!525638) (_1!8452 (v!22855 lt!525615))) lt!525778)))

(declare-fun b!1511839 () Bool)

(assert (=> b!1511839 (= e!966670 (= (list!6337 lt!525778) (Cons!16041 (_1!8452 (v!22855 lt!525615)) (list!6337 (_1!8449 lt!525638)))))))

(assert (= (and d!447779 res!680411) b!1511839))

(declare-fun m!1775888 () Bool)

(assert (=> d!447779 m!1775888))

(assert (=> d!447779 m!1775888))

(declare-fun m!1775890 () Bool)

(assert (=> d!447779 m!1775890))

(declare-fun m!1775892 () Bool)

(assert (=> b!1511839 m!1775892))

(declare-fun m!1775894 () Bool)

(assert (=> b!1511839 m!1775894))

(assert (=> b!1511552 d!447779))

(declare-fun b!1511841 () Bool)

(declare-fun res!680414 () Bool)

(declare-fun e!966672 () Bool)

(assert (=> b!1511841 (=> (not res!680414) (not e!966672))))

(declare-fun lt!525779 () tuple2!14886)

(assert (=> b!1511841 (= res!680414 (= (list!6337 (_1!8449 lt!525779)) (_1!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 (_2!8452 (v!22855 lt!525615)))))))))

(declare-fun b!1511842 () Bool)

(assert (=> b!1511842 (= e!966672 (= (list!6336 (_2!8449 lt!525779)) (_2!8453 (lexList!744 thiss!13241 rules!1640 (list!6336 (_2!8452 (v!22855 lt!525615)))))))))

(declare-fun b!1511843 () Bool)

(declare-fun e!966671 () Bool)

(declare-fun e!966674 () Bool)

(assert (=> b!1511843 (= e!966671 e!966674)))

(declare-fun res!680413 () Bool)

(assert (=> b!1511843 (= res!680413 (< (size!12971 (_2!8449 lt!525779)) (size!12971 (_2!8452 (v!22855 lt!525615)))))))

(assert (=> b!1511843 (=> (not res!680413) (not e!966674))))

(declare-fun b!1511840 () Bool)

(assert (=> b!1511840 (= e!966671 (= (list!6336 (_2!8449 lt!525779)) (list!6336 (_2!8452 (v!22855 lt!525615)))))))

(declare-fun d!447781 () Bool)

(assert (=> d!447781 e!966672))

(declare-fun res!680412 () Bool)

(assert (=> d!447781 (=> (not res!680412) (not e!966672))))

(assert (=> d!447781 (= res!680412 e!966671)))

(declare-fun c!247895 () Bool)

(assert (=> d!447781 (= c!247895 (> (size!12972 (_1!8449 lt!525779)) 0))))

(declare-fun e!966673 () tuple2!14886)

(assert (=> d!447781 (= lt!525779 e!966673)))

(declare-fun c!247896 () Bool)

(declare-fun lt!525781 () Option!2925)

(assert (=> d!447781 (= c!247896 ((_ is Some!2924) lt!525781))))

(assert (=> d!447781 (= lt!525781 (maxPrefixZipperSequence!586 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525615))))))

(assert (=> d!447781 (= (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525615))) lt!525779)))

(declare-fun b!1511844 () Bool)

(assert (=> b!1511844 (= e!966674 (not (isEmpty!9921 (_1!8449 lt!525779))))))

(declare-fun b!1511845 () Bool)

(assert (=> b!1511845 (= e!966673 (tuple2!14887 (BalanceConc!10807 Empty!5432) (_2!8452 (v!22855 lt!525615))))))

(declare-fun b!1511846 () Bool)

(declare-fun lt!525780 () tuple2!14886)

(assert (=> b!1511846 (= e!966673 (tuple2!14887 (prepend!461 (_1!8449 lt!525780) (_1!8452 (v!22855 lt!525781))) (_2!8449 lt!525780)))))

(assert (=> b!1511846 (= lt!525780 (lexRec!328 thiss!13241 rules!1640 (_2!8452 (v!22855 lt!525781))))))

(assert (= (and d!447781 c!247896) b!1511846))

(assert (= (and d!447781 (not c!247896)) b!1511845))

(assert (= (and d!447781 c!247895) b!1511843))

(assert (= (and d!447781 (not c!247895)) b!1511840))

(assert (= (and b!1511843 res!680413) b!1511844))

(assert (= (and d!447781 res!680412) b!1511841))

(assert (= (and b!1511841 res!680414) b!1511842))

(declare-fun m!1775896 () Bool)

(assert (=> b!1511843 m!1775896))

(declare-fun m!1775898 () Bool)

(assert (=> b!1511843 m!1775898))

(declare-fun m!1775900 () Bool)

(assert (=> b!1511844 m!1775900))

(declare-fun m!1775902 () Bool)

(assert (=> d!447781 m!1775902))

(declare-fun m!1775904 () Bool)

(assert (=> d!447781 m!1775904))

(declare-fun m!1775906 () Bool)

(assert (=> b!1511846 m!1775906))

(declare-fun m!1775908 () Bool)

(assert (=> b!1511846 m!1775908))

(declare-fun m!1775910 () Bool)

(assert (=> b!1511840 m!1775910))

(declare-fun m!1775912 () Bool)

(assert (=> b!1511840 m!1775912))

(declare-fun m!1775914 () Bool)

(assert (=> b!1511841 m!1775914))

(assert (=> b!1511841 m!1775912))

(assert (=> b!1511841 m!1775912))

(declare-fun m!1775916 () Bool)

(assert (=> b!1511841 m!1775916))

(assert (=> b!1511842 m!1775910))

(assert (=> b!1511842 m!1775912))

(assert (=> b!1511842 m!1775912))

(assert (=> b!1511842 m!1775916))

(assert (=> b!1511552 d!447781))

(declare-fun d!447783 () Bool)

(assert (=> d!447783 (= (array_inv!1658 (_keys!1761 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) (bvsge (size!12967 (_keys!1761 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1511550 d!447783))

(declare-fun d!447785 () Bool)

(assert (=> d!447785 (= (array_inv!1660 (_values!1746 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) (bvsge (size!12969 (_values!1746 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1511550 d!447785))

(declare-fun d!447787 () Bool)

(declare-fun c!247897 () Bool)

(assert (=> d!447787 (= c!247897 ((_ is Node!5431) (c!247834 (totalInput!2291 cacheFurthestNullable!64))))))

(declare-fun e!966675 () Bool)

(assert (=> d!447787 (= (inv!21263 (c!247834 (totalInput!2291 cacheFurthestNullable!64))) e!966675)))

(declare-fun b!1511847 () Bool)

(assert (=> b!1511847 (= e!966675 (inv!21271 (c!247834 (totalInput!2291 cacheFurthestNullable!64))))))

(declare-fun b!1511848 () Bool)

(declare-fun e!966676 () Bool)

(assert (=> b!1511848 (= e!966675 e!966676)))

(declare-fun res!680415 () Bool)

(assert (=> b!1511848 (= res!680415 (not ((_ is Leaf!8054) (c!247834 (totalInput!2291 cacheFurthestNullable!64)))))))

(assert (=> b!1511848 (=> res!680415 e!966676)))

(declare-fun b!1511849 () Bool)

(assert (=> b!1511849 (= e!966676 (inv!21272 (c!247834 (totalInput!2291 cacheFurthestNullable!64))))))

(assert (= (and d!447787 c!247897) b!1511847))

(assert (= (and d!447787 (not c!247897)) b!1511848))

(assert (= (and b!1511848 (not res!680415)) b!1511849))

(declare-fun m!1775918 () Bool)

(assert (=> b!1511847 m!1775918))

(declare-fun m!1775920 () Bool)

(assert (=> b!1511849 m!1775920))

(assert (=> b!1511530 d!447787))

(declare-fun d!447789 () Bool)

(declare-fun res!680418 () Bool)

(declare-fun e!966679 () Bool)

(assert (=> d!447789 (=> (not res!680418) (not e!966679))))

(declare-fun rulesValid!1040 (LexerInterface!2493 List!16111) Bool)

(assert (=> d!447789 (= res!680418 (rulesValid!1040 thiss!13241 rules!1640))))

(assert (=> d!447789 (= (rulesInvariant!2267 thiss!13241 rules!1640) e!966679)))

(declare-fun b!1511852 () Bool)

(declare-datatypes ((List!16113 0))(
  ( (Nil!16045) (Cons!16045 (h!21446 String!18912) (t!139387 List!16113)) )
))
(declare-fun noDuplicateTag!1040 (LexerInterface!2493 List!16111 List!16113) Bool)

(assert (=> b!1511852 (= e!966679 (noDuplicateTag!1040 thiss!13241 rules!1640 Nil!16045))))

(assert (= (and d!447789 res!680418) b!1511852))

(declare-fun m!1775922 () Bool)

(assert (=> d!447789 m!1775922))

(declare-fun m!1775924 () Bool)

(assert (=> b!1511852 m!1775924))

(assert (=> b!1511532 d!447789))

(declare-fun e!966686 () Bool)

(assert (=> b!1511546 (= tp!432001 e!966686)))

(declare-fun tp!432034 () Bool)

(declare-fun e!966687 () Bool)

(declare-fun setRes!9036 () Bool)

(declare-fun tp_is_empty!7011 () Bool)

(declare-fun b!1511861 () Bool)

(declare-fun inv!21275 (Context!1346) Bool)

(assert (=> b!1511861 (= e!966686 (and (inv!21275 (_1!8450 (_1!8451 (h!21443 mapDefault!6950)))) e!966687 tp_is_empty!7011 setRes!9036 tp!432034))))

(declare-fun condSetEmpty!9036 () Bool)

(assert (=> b!1511861 (= condSetEmpty!9036 (= (_2!8451 (h!21443 mapDefault!6950)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511862 () Bool)

(declare-fun tp!432033 () Bool)

(assert (=> b!1511862 (= e!966687 tp!432033)))

(declare-fun e!966688 () Bool)

(declare-fun setNonEmpty!9036 () Bool)

(declare-fun tp!432035 () Bool)

(declare-fun setElem!9036 () Context!1346)

(assert (=> setNonEmpty!9036 (= setRes!9036 (and tp!432035 (inv!21275 setElem!9036) e!966688))))

(declare-fun setRest!9036 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9036 (= (_2!8451 (h!21443 mapDefault!6950)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9036 true) setRest!9036))))

(declare-fun b!1511863 () Bool)

(declare-fun tp!432036 () Bool)

(assert (=> b!1511863 (= e!966688 tp!432036)))

(declare-fun setIsEmpty!9036 () Bool)

(assert (=> setIsEmpty!9036 setRes!9036))

(assert (= b!1511861 b!1511862))

(assert (= (and b!1511861 condSetEmpty!9036) setIsEmpty!9036))

(assert (= (and b!1511861 (not condSetEmpty!9036)) setNonEmpty!9036))

(assert (= setNonEmpty!9036 b!1511863))

(assert (= (and b!1511546 ((_ is Cons!16042) mapDefault!6950)) b!1511861))

(declare-fun m!1775926 () Bool)

(assert (=> b!1511861 m!1775926))

(declare-fun m!1775928 () Bool)

(assert (=> setNonEmpty!9036 m!1775928))

(declare-fun b!1511872 () Bool)

(declare-fun tp!432043 () Bool)

(declare-fun tp!432045 () Bool)

(declare-fun e!966694 () Bool)

(assert (=> b!1511872 (= e!966694 (and (inv!21263 (left!13353 (c!247834 input!1102))) tp!432045 (inv!21263 (right!13683 (c!247834 input!1102))) tp!432043))))

(declare-fun b!1511874 () Bool)

(declare-fun e!966693 () Bool)

(declare-fun tp!432044 () Bool)

(assert (=> b!1511874 (= e!966693 tp!432044)))

(declare-fun b!1511873 () Bool)

(declare-fun inv!21276 (IArray!10867) Bool)

(assert (=> b!1511873 (= e!966694 (and (inv!21276 (xs!8212 (c!247834 input!1102))) e!966693))))

(assert (=> b!1511557 (= tp!431994 (and (inv!21263 (c!247834 input!1102)) e!966694))))

(assert (= (and b!1511557 ((_ is Node!5431) (c!247834 input!1102))) b!1511872))

(assert (= b!1511873 b!1511874))

(assert (= (and b!1511557 ((_ is Leaf!8054) (c!247834 input!1102))) b!1511873))

(declare-fun m!1775930 () Bool)

(assert (=> b!1511872 m!1775930))

(declare-fun m!1775932 () Bool)

(assert (=> b!1511872 m!1775932))

(declare-fun m!1775934 () Bool)

(assert (=> b!1511873 m!1775934))

(assert (=> b!1511557 m!1775330))

(declare-fun e!966709 () Bool)

(declare-fun setNonEmpty!9041 () Bool)

(declare-fun setRes!9042 () Bool)

(declare-fun tp!432077 () Bool)

(declare-fun setElem!9042 () Context!1346)

(assert (=> setNonEmpty!9041 (= setRes!9042 (and tp!432077 (inv!21275 setElem!9042) e!966709))))

(declare-fun mapDefault!6953 () List!16106)

(declare-fun setRest!9042 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9041 (= (_2!8448 (h!21439 mapDefault!6953)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9042 true) setRest!9042))))

(declare-fun b!1511889 () Bool)

(declare-fun tp!432068 () Bool)

(assert (=> b!1511889 (= e!966709 tp!432068)))

(declare-fun setElem!9041 () Context!1346)

(declare-fun e!966712 () Bool)

(declare-fun setNonEmpty!9042 () Bool)

(declare-fun setRes!9041 () Bool)

(declare-fun tp!432073 () Bool)

(assert (=> setNonEmpty!9042 (= setRes!9041 (and tp!432073 (inv!21275 setElem!9041) e!966712))))

(declare-fun mapValue!6953 () List!16106)

(declare-fun setRest!9041 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9042 (= (_2!8448 (h!21439 mapValue!6953)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9041 true) setRest!9041))))

(declare-fun mapIsEmpty!6953 () Bool)

(declare-fun mapRes!6953 () Bool)

(assert (=> mapIsEmpty!6953 mapRes!6953))

(declare-fun setIsEmpty!9041 () Bool)

(assert (=> setIsEmpty!9041 setRes!9041))

(declare-fun tp!432074 () Bool)

(declare-fun tp!432075 () Bool)

(declare-fun b!1511890 () Bool)

(declare-fun e!966711 () Bool)

(declare-fun e!966710 () Bool)

(assert (=> b!1511890 (= e!966711 (and tp!432075 (inv!21275 (_2!8447 (_1!8448 (h!21439 mapDefault!6953)))) e!966710 tp_is_empty!7011 setRes!9042 tp!432074))))

(declare-fun condSetEmpty!9042 () Bool)

(assert (=> b!1511890 (= condSetEmpty!9042 (= (_2!8448 (h!21439 mapDefault!6953)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun condMapEmpty!6953 () Bool)

(assert (=> mapNonEmpty!6950 (= condMapEmpty!6953 (= mapRest!6948 ((as const (Array (_ BitVec 32) List!16106)) mapDefault!6953)))))

(assert (=> mapNonEmpty!6950 (= tp!432021 (and e!966711 mapRes!6953))))

(declare-fun setIsEmpty!9042 () Bool)

(assert (=> setIsEmpty!9042 setRes!9042))

(declare-fun b!1511891 () Bool)

(declare-fun e!966707 () Bool)

(declare-fun tp!432070 () Bool)

(assert (=> b!1511891 (= e!966707 tp!432070)))

(declare-fun e!966708 () Bool)

(declare-fun tp!432072 () Bool)

(declare-fun tp!432069 () Bool)

(declare-fun b!1511892 () Bool)

(assert (=> b!1511892 (= e!966708 (and tp!432072 (inv!21275 (_2!8447 (_1!8448 (h!21439 mapValue!6953)))) e!966707 tp_is_empty!7011 setRes!9041 tp!432069))))

(declare-fun condSetEmpty!9041 () Bool)

(assert (=> b!1511892 (= condSetEmpty!9041 (= (_2!8448 (h!21439 mapValue!6953)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511893 () Bool)

(declare-fun tp!432071 () Bool)

(assert (=> b!1511893 (= e!966710 tp!432071)))

(declare-fun b!1511894 () Bool)

(declare-fun tp!432076 () Bool)

(assert (=> b!1511894 (= e!966712 tp!432076)))

(declare-fun mapNonEmpty!6953 () Bool)

(declare-fun tp!432078 () Bool)

(assert (=> mapNonEmpty!6953 (= mapRes!6953 (and tp!432078 e!966708))))

(declare-fun mapRest!6953 () (Array (_ BitVec 32) List!16106))

(declare-fun mapKey!6953 () (_ BitVec 32))

(assert (=> mapNonEmpty!6953 (= mapRest!6948 (store mapRest!6953 mapKey!6953 mapValue!6953))))

(assert (= (and mapNonEmpty!6950 condMapEmpty!6953) mapIsEmpty!6953))

(assert (= (and mapNonEmpty!6950 (not condMapEmpty!6953)) mapNonEmpty!6953))

(assert (= b!1511892 b!1511891))

(assert (= (and b!1511892 condSetEmpty!9041) setIsEmpty!9041))

(assert (= (and b!1511892 (not condSetEmpty!9041)) setNonEmpty!9042))

(assert (= setNonEmpty!9042 b!1511894))

(assert (= (and mapNonEmpty!6953 ((_ is Cons!16038) mapValue!6953)) b!1511892))

(assert (= b!1511890 b!1511893))

(assert (= (and b!1511890 condSetEmpty!9042) setIsEmpty!9042))

(assert (= (and b!1511890 (not condSetEmpty!9042)) setNonEmpty!9041))

(assert (= setNonEmpty!9041 b!1511889))

(assert (= (and mapNonEmpty!6950 ((_ is Cons!16038) mapDefault!6953)) b!1511890))

(declare-fun m!1775936 () Bool)

(assert (=> setNonEmpty!9041 m!1775936))

(declare-fun m!1775938 () Bool)

(assert (=> setNonEmpty!9042 m!1775938))

(declare-fun m!1775940 () Bool)

(assert (=> mapNonEmpty!6953 m!1775940))

(declare-fun m!1775942 () Bool)

(assert (=> b!1511890 m!1775942))

(declare-fun m!1775944 () Bool)

(assert (=> b!1511892 m!1775944))

(declare-fun setIsEmpty!9045 () Bool)

(declare-fun setRes!9045 () Bool)

(assert (=> setIsEmpty!9045 setRes!9045))

(declare-fun b!1511903 () Bool)

(declare-fun e!966719 () Bool)

(declare-fun tp!432090 () Bool)

(assert (=> b!1511903 (= e!966719 tp!432090)))

(declare-fun e!966720 () Bool)

(assert (=> mapNonEmpty!6950 (= tp!432003 e!966720)))

(declare-fun tp!432089 () Bool)

(declare-fun tp!432093 () Bool)

(declare-fun b!1511904 () Bool)

(declare-fun e!966721 () Bool)

(assert (=> b!1511904 (= e!966720 (and tp!432093 (inv!21275 (_2!8447 (_1!8448 (h!21439 mapValue!6949)))) e!966721 tp_is_empty!7011 setRes!9045 tp!432089))))

(declare-fun condSetEmpty!9045 () Bool)

(assert (=> b!1511904 (= condSetEmpty!9045 (= (_2!8448 (h!21439 mapValue!6949)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun setElem!9045 () Context!1346)

(declare-fun tp!432092 () Bool)

(declare-fun setNonEmpty!9045 () Bool)

(assert (=> setNonEmpty!9045 (= setRes!9045 (and tp!432092 (inv!21275 setElem!9045) e!966719))))

(declare-fun setRest!9045 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9045 (= (_2!8448 (h!21439 mapValue!6949)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9045 true) setRest!9045))))

(declare-fun b!1511905 () Bool)

(declare-fun tp!432091 () Bool)

(assert (=> b!1511905 (= e!966721 tp!432091)))

(assert (= b!1511904 b!1511905))

(assert (= (and b!1511904 condSetEmpty!9045) setIsEmpty!9045))

(assert (= (and b!1511904 (not condSetEmpty!9045)) setNonEmpty!9045))

(assert (= setNonEmpty!9045 b!1511903))

(assert (= (and mapNonEmpty!6950 ((_ is Cons!16038) mapValue!6949)) b!1511904))

(declare-fun m!1775946 () Bool)

(assert (=> b!1511904 m!1775946))

(declare-fun m!1775948 () Bool)

(assert (=> setNonEmpty!9045 m!1775948))

(declare-fun b!1511916 () Bool)

(declare-fun b_free!39191 () Bool)

(declare-fun b_next!39895 () Bool)

(assert (=> b!1511916 (= b_free!39191 (not b_next!39895))))

(declare-fun tp!432105 () Bool)

(declare-fun b_and!105207 () Bool)

(assert (=> b!1511916 (= tp!432105 b_and!105207)))

(declare-fun b_free!39193 () Bool)

(declare-fun b_next!39897 () Bool)

(assert (=> b!1511916 (= b_free!39193 (not b_next!39897))))

(declare-fun tb!86203 () Bool)

(declare-fun t!139386 () Bool)

(assert (=> (and b!1511916 (= (toChars!4048 (transformation!2840 (h!21444 (t!139381 rules!1640)))) (toChars!4048 (transformation!2840 (rule!4633 (_1!8452 (v!22855 (_1!8456 lt!525630))))))) t!139386) tb!86203))

(declare-fun result!103664 () Bool)

(assert (= result!103664 result!103650))

(assert (=> d!447705 t!139386))

(declare-fun tp!432103 () Bool)

(declare-fun b_and!105209 () Bool)

(assert (=> b!1511916 (= tp!432103 (and (=> t!139386 result!103664) b_and!105209))))

(declare-fun e!966731 () Bool)

(assert (=> b!1511916 (= e!966731 (and tp!432105 tp!432103))))

(declare-fun e!966733 () Bool)

(declare-fun b!1511915 () Bool)

(declare-fun tp!432104 () Bool)

(assert (=> b!1511915 (= e!966733 (and tp!432104 (inv!21261 (tag!3104 (h!21444 (t!139381 rules!1640)))) (inv!21270 (transformation!2840 (h!21444 (t!139381 rules!1640)))) e!966731))))

(declare-fun b!1511914 () Bool)

(declare-fun e!966730 () Bool)

(declare-fun tp!432102 () Bool)

(assert (=> b!1511914 (= e!966730 (and e!966733 tp!432102))))

(assert (=> b!1511566 (= tp!432014 e!966730)))

(assert (= b!1511915 b!1511916))

(assert (= b!1511914 b!1511915))

(assert (= (and b!1511566 ((_ is Cons!16043) (t!139381 rules!1640))) b!1511914))

(declare-fun m!1775950 () Bool)

(assert (=> b!1511915 m!1775950))

(declare-fun m!1775952 () Bool)

(assert (=> b!1511915 m!1775952))

(declare-fun setIsEmpty!9048 () Bool)

(declare-fun setRes!9048 () Bool)

(assert (=> setIsEmpty!9048 setRes!9048))

(declare-fun setElem!9048 () Context!1346)

(declare-fun setNonEmpty!9048 () Bool)

(declare-fun tp!432113 () Bool)

(declare-fun e!966738 () Bool)

(assert (=> setNonEmpty!9048 (= setRes!9048 (and tp!432113 (inv!21275 setElem!9048) e!966738))))

(declare-fun setRest!9048 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9048 (= (_1!8454 (_1!8455 (h!21445 mapDefault!6949))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9048 true) setRest!9048))))

(declare-fun b!1511923 () Bool)

(declare-fun e!966739 () Bool)

(declare-fun tp!432114 () Bool)

(assert (=> b!1511923 (= e!966739 (and setRes!9048 tp!432114))))

(declare-fun condSetEmpty!9048 () Bool)

(assert (=> b!1511923 (= condSetEmpty!9048 (= (_1!8454 (_1!8455 (h!21445 mapDefault!6949))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511924 () Bool)

(declare-fun tp!432112 () Bool)

(assert (=> b!1511924 (= e!966738 tp!432112)))

(assert (=> b!1511537 (= tp!432010 e!966739)))

(assert (= (and b!1511923 condSetEmpty!9048) setIsEmpty!9048))

(assert (= (and b!1511923 (not condSetEmpty!9048)) setNonEmpty!9048))

(assert (= setNonEmpty!9048 b!1511924))

(assert (= (and b!1511537 ((_ is Cons!16044) mapDefault!6949)) b!1511923))

(declare-fun m!1775954 () Bool)

(assert (=> setNonEmpty!9048 m!1775954))

(declare-fun b!1511925 () Bool)

(declare-fun e!966741 () Bool)

(declare-fun tp!432115 () Bool)

(declare-fun tp!432117 () Bool)

(assert (=> b!1511925 (= e!966741 (and (inv!21263 (left!13353 (c!247834 treated!70))) tp!432117 (inv!21263 (right!13683 (c!247834 treated!70))) tp!432115))))

(declare-fun b!1511927 () Bool)

(declare-fun e!966740 () Bool)

(declare-fun tp!432116 () Bool)

(assert (=> b!1511927 (= e!966740 tp!432116)))

(declare-fun b!1511926 () Bool)

(assert (=> b!1511926 (= e!966741 (and (inv!21276 (xs!8212 (c!247834 treated!70))) e!966740))))

(assert (=> b!1511522 (= tp!432011 (and (inv!21263 (c!247834 treated!70)) e!966741))))

(assert (= (and b!1511522 ((_ is Node!5431) (c!247834 treated!70))) b!1511925))

(assert (= b!1511926 b!1511927))

(assert (= (and b!1511522 ((_ is Leaf!8054) (c!247834 treated!70))) b!1511926))

(declare-fun m!1775956 () Bool)

(assert (=> b!1511925 m!1775956))

(declare-fun m!1775958 () Bool)

(assert (=> b!1511925 m!1775958))

(declare-fun m!1775960 () Bool)

(assert (=> b!1511926 m!1775960))

(assert (=> b!1511522 m!1775318))

(declare-fun b!1511942 () Bool)

(declare-fun e!966755 () Bool)

(declare-fun tp!432137 () Bool)

(assert (=> b!1511942 (= e!966755 tp!432137)))

(declare-fun setIsEmpty!9053 () Bool)

(declare-fun setRes!9054 () Bool)

(assert (=> setIsEmpty!9053 setRes!9054))

(declare-fun e!966756 () Bool)

(declare-fun b!1511943 () Bool)

(declare-fun e!966754 () Bool)

(declare-fun tp!432144 () Bool)

(declare-fun setRes!9053 () Bool)

(declare-fun mapDefault!6956 () List!16110)

(assert (=> b!1511943 (= e!966756 (and (inv!21275 (_1!8450 (_1!8451 (h!21443 mapDefault!6956)))) e!966754 tp_is_empty!7011 setRes!9053 tp!432144))))

(declare-fun condSetEmpty!9054 () Bool)

(assert (=> b!1511943 (= condSetEmpty!9054 (= (_2!8451 (h!21443 mapDefault!6956)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun setIsEmpty!9054 () Bool)

(assert (=> setIsEmpty!9054 setRes!9053))

(declare-fun mapNonEmpty!6956 () Bool)

(declare-fun mapRes!6956 () Bool)

(declare-fun tp!432142 () Bool)

(declare-fun e!966759 () Bool)

(assert (=> mapNonEmpty!6956 (= mapRes!6956 (and tp!432142 e!966759))))

(declare-fun mapKey!6956 () (_ BitVec 32))

(declare-fun mapRest!6956 () (Array (_ BitVec 32) List!16110))

(declare-fun mapValue!6956 () List!16110)

(assert (=> mapNonEmpty!6956 (= mapRest!6950 (store mapRest!6956 mapKey!6956 mapValue!6956))))

(declare-fun b!1511945 () Bool)

(declare-fun e!966758 () Bool)

(declare-fun tp!432141 () Bool)

(assert (=> b!1511945 (= e!966758 tp!432141)))

(declare-fun setNonEmpty!9053 () Bool)

(declare-fun setElem!9053 () Context!1346)

(declare-fun tp!432136 () Bool)

(assert (=> setNonEmpty!9053 (= setRes!9053 (and tp!432136 (inv!21275 setElem!9053) e!966755))))

(declare-fun setRest!9054 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9053 (= (_2!8451 (h!21443 mapDefault!6956)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9053 true) setRest!9054))))

(declare-fun b!1511946 () Bool)

(declare-fun tp!432138 () Bool)

(assert (=> b!1511946 (= e!966759 (and (inv!21275 (_1!8450 (_1!8451 (h!21443 mapValue!6956)))) e!966758 tp_is_empty!7011 setRes!9054 tp!432138))))

(declare-fun condSetEmpty!9053 () Bool)

(assert (=> b!1511946 (= condSetEmpty!9053 (= (_2!8451 (h!21443 mapValue!6956)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun mapIsEmpty!6956 () Bool)

(assert (=> mapIsEmpty!6956 mapRes!6956))

(declare-fun tp!432140 () Bool)

(declare-fun setElem!9054 () Context!1346)

(declare-fun e!966757 () Bool)

(declare-fun setNonEmpty!9054 () Bool)

(assert (=> setNonEmpty!9054 (= setRes!9054 (and tp!432140 (inv!21275 setElem!9054) e!966757))))

(declare-fun setRest!9053 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9054 (= (_2!8451 (h!21443 mapValue!6956)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9054 true) setRest!9053))))

(declare-fun b!1511947 () Bool)

(declare-fun tp!432139 () Bool)

(assert (=> b!1511947 (= e!966754 tp!432139)))

(declare-fun b!1511944 () Bool)

(declare-fun tp!432143 () Bool)

(assert (=> b!1511944 (= e!966757 tp!432143)))

(declare-fun condMapEmpty!6956 () Bool)

(assert (=> mapNonEmpty!6948 (= condMapEmpty!6956 (= mapRest!6950 ((as const (Array (_ BitVec 32) List!16110)) mapDefault!6956)))))

(assert (=> mapNonEmpty!6948 (= tp!432012 (and e!966756 mapRes!6956))))

(assert (= (and mapNonEmpty!6948 condMapEmpty!6956) mapIsEmpty!6956))

(assert (= (and mapNonEmpty!6948 (not condMapEmpty!6956)) mapNonEmpty!6956))

(assert (= b!1511946 b!1511945))

(assert (= (and b!1511946 condSetEmpty!9053) setIsEmpty!9053))

(assert (= (and b!1511946 (not condSetEmpty!9053)) setNonEmpty!9054))

(assert (= setNonEmpty!9054 b!1511944))

(assert (= (and mapNonEmpty!6956 ((_ is Cons!16042) mapValue!6956)) b!1511946))

(assert (= b!1511943 b!1511947))

(assert (= (and b!1511943 condSetEmpty!9054) setIsEmpty!9054))

(assert (= (and b!1511943 (not condSetEmpty!9054)) setNonEmpty!9053))

(assert (= setNonEmpty!9053 b!1511942))

(assert (= (and mapNonEmpty!6948 ((_ is Cons!16042) mapDefault!6956)) b!1511943))

(declare-fun m!1775962 () Bool)

(assert (=> setNonEmpty!9054 m!1775962))

(declare-fun m!1775964 () Bool)

(assert (=> b!1511943 m!1775964))

(declare-fun m!1775966 () Bool)

(assert (=> setNonEmpty!9053 m!1775966))

(declare-fun m!1775968 () Bool)

(assert (=> mapNonEmpty!6956 m!1775968))

(declare-fun m!1775970 () Bool)

(assert (=> b!1511946 m!1775970))

(declare-fun e!966760 () Bool)

(assert (=> mapNonEmpty!6948 (= tp!432013 e!966760)))

(declare-fun tp!432146 () Bool)

(declare-fun e!966761 () Bool)

(declare-fun b!1511948 () Bool)

(declare-fun setRes!9055 () Bool)

(assert (=> b!1511948 (= e!966760 (and (inv!21275 (_1!8450 (_1!8451 (h!21443 mapValue!6948)))) e!966761 tp_is_empty!7011 setRes!9055 tp!432146))))

(declare-fun condSetEmpty!9055 () Bool)

(assert (=> b!1511948 (= condSetEmpty!9055 (= (_2!8451 (h!21443 mapValue!6948)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511949 () Bool)

(declare-fun tp!432145 () Bool)

(assert (=> b!1511949 (= e!966761 tp!432145)))

(declare-fun setElem!9055 () Context!1346)

(declare-fun e!966762 () Bool)

(declare-fun tp!432147 () Bool)

(declare-fun setNonEmpty!9055 () Bool)

(assert (=> setNonEmpty!9055 (= setRes!9055 (and tp!432147 (inv!21275 setElem!9055) e!966762))))

(declare-fun setRest!9055 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9055 (= (_2!8451 (h!21443 mapValue!6948)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9055 true) setRest!9055))))

(declare-fun b!1511950 () Bool)

(declare-fun tp!432148 () Bool)

(assert (=> b!1511950 (= e!966762 tp!432148)))

(declare-fun setIsEmpty!9055 () Bool)

(assert (=> setIsEmpty!9055 setRes!9055))

(assert (= b!1511948 b!1511949))

(assert (= (and b!1511948 condSetEmpty!9055) setIsEmpty!9055))

(assert (= (and b!1511948 (not condSetEmpty!9055)) setNonEmpty!9055))

(assert (= setNonEmpty!9055 b!1511950))

(assert (= (and mapNonEmpty!6948 ((_ is Cons!16042) mapValue!6948)) b!1511948))

(declare-fun m!1775972 () Bool)

(assert (=> b!1511948 m!1775972))

(declare-fun m!1775974 () Bool)

(assert (=> setNonEmpty!9055 m!1775974))

(declare-fun tp!432157 () Bool)

(declare-fun tp!432155 () Bool)

(declare-fun e!966768 () Bool)

(declare-fun b!1511959 () Bool)

(assert (=> b!1511959 (= e!966768 (and (inv!21264 (left!13354 (c!247835 acc!392))) tp!432157 (inv!21264 (right!13684 (c!247835 acc!392))) tp!432155))))

(declare-fun b!1511961 () Bool)

(declare-fun e!966767 () Bool)

(declare-fun tp!432156 () Bool)

(assert (=> b!1511961 (= e!966767 tp!432156)))

(declare-fun b!1511960 () Bool)

(declare-fun inv!21277 (IArray!10869) Bool)

(assert (=> b!1511960 (= e!966768 (and (inv!21277 (xs!8213 (c!247835 acc!392))) e!966767))))

(assert (=> b!1511531 (= tp!431999 (and (inv!21264 (c!247835 acc!392)) e!966768))))

(assert (= (and b!1511531 ((_ is Node!5432) (c!247835 acc!392))) b!1511959))

(assert (= b!1511960 b!1511961))

(assert (= (and b!1511531 ((_ is Leaf!8055) (c!247835 acc!392))) b!1511960))

(declare-fun m!1775976 () Bool)

(assert (=> b!1511959 m!1775976))

(declare-fun m!1775978 () Bool)

(assert (=> b!1511959 m!1775978))

(declare-fun m!1775980 () Bool)

(assert (=> b!1511960 m!1775980))

(assert (=> b!1511531 m!1775268))

(declare-fun setIsEmpty!9056 () Bool)

(declare-fun setRes!9056 () Bool)

(assert (=> setIsEmpty!9056 setRes!9056))

(declare-fun e!966769 () Bool)

(declare-fun setNonEmpty!9056 () Bool)

(declare-fun tp!432159 () Bool)

(declare-fun setElem!9056 () Context!1346)

(assert (=> setNonEmpty!9056 (= setRes!9056 (and tp!432159 (inv!21275 setElem!9056) e!966769))))

(declare-fun setRest!9056 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9056 (= (_1!8454 (_1!8455 (h!21445 (zeroValue!1725 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9056 true) setRest!9056))))

(declare-fun b!1511962 () Bool)

(declare-fun e!966770 () Bool)

(declare-fun tp!432160 () Bool)

(assert (=> b!1511962 (= e!966770 (and setRes!9056 tp!432160))))

(declare-fun condSetEmpty!9056 () Bool)

(assert (=> b!1511962 (= condSetEmpty!9056 (= (_1!8454 (_1!8455 (h!21445 (zeroValue!1725 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511963 () Bool)

(declare-fun tp!432158 () Bool)

(assert (=> b!1511963 (= e!966769 tp!432158)))

(assert (=> b!1511539 (= tp!432017 e!966770)))

(assert (= (and b!1511962 condSetEmpty!9056) setIsEmpty!9056))

(assert (= (and b!1511962 (not condSetEmpty!9056)) setNonEmpty!9056))

(assert (= setNonEmpty!9056 b!1511963))

(assert (= (and b!1511539 ((_ is Cons!16044) (zeroValue!1725 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64)))))))) b!1511962))

(declare-fun m!1775982 () Bool)

(assert (=> setNonEmpty!9056 m!1775982))

(declare-fun setIsEmpty!9057 () Bool)

(declare-fun setRes!9057 () Bool)

(assert (=> setIsEmpty!9057 setRes!9057))

(declare-fun setElem!9057 () Context!1346)

(declare-fun tp!432162 () Bool)

(declare-fun e!966771 () Bool)

(declare-fun setNonEmpty!9057 () Bool)

(assert (=> setNonEmpty!9057 (= setRes!9057 (and tp!432162 (inv!21275 setElem!9057) e!966771))))

(declare-fun setRest!9057 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9057 (= (_1!8454 (_1!8455 (h!21445 (minValue!1725 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9057 true) setRest!9057))))

(declare-fun b!1511964 () Bool)

(declare-fun e!966772 () Bool)

(declare-fun tp!432163 () Bool)

(assert (=> b!1511964 (= e!966772 (and setRes!9057 tp!432163))))

(declare-fun condSetEmpty!9057 () Bool)

(assert (=> b!1511964 (= condSetEmpty!9057 (= (_1!8454 (_1!8455 (h!21445 (minValue!1725 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64))))))))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511965 () Bool)

(declare-fun tp!432161 () Bool)

(assert (=> b!1511965 (= e!966771 tp!432161)))

(assert (=> b!1511539 (= tp!432016 e!966772)))

(assert (= (and b!1511964 condSetEmpty!9057) setIsEmpty!9057))

(assert (= (and b!1511964 (not condSetEmpty!9057)) setNonEmpty!9057))

(assert (= setNonEmpty!9057 b!1511965))

(assert (= (and b!1511539 ((_ is Cons!16044) (minValue!1725 (v!22856 (underlying!3145 (v!22857 (underlying!3146 (cache!1793 cacheFurthestNullable!64)))))))) b!1511964))

(declare-fun m!1775984 () Bool)

(assert (=> setNonEmpty!9057 m!1775984))

(declare-fun e!966773 () Bool)

(assert (=> b!1511550 (= tp!432006 e!966773)))

(declare-fun b!1511966 () Bool)

(declare-fun tp!432165 () Bool)

(declare-fun e!966774 () Bool)

(declare-fun setRes!9058 () Bool)

(assert (=> b!1511966 (= e!966773 (and (inv!21275 (_1!8450 (_1!8451 (h!21443 (zeroValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))))) e!966774 tp_is_empty!7011 setRes!9058 tp!432165))))

(declare-fun condSetEmpty!9058 () Bool)

(assert (=> b!1511966 (= condSetEmpty!9058 (= (_2!8451 (h!21443 (zeroValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511967 () Bool)

(declare-fun tp!432164 () Bool)

(assert (=> b!1511967 (= e!966774 tp!432164)))

(declare-fun tp!432166 () Bool)

(declare-fun e!966775 () Bool)

(declare-fun setElem!9058 () Context!1346)

(declare-fun setNonEmpty!9058 () Bool)

(assert (=> setNonEmpty!9058 (= setRes!9058 (and tp!432166 (inv!21275 setElem!9058) e!966775))))

(declare-fun setRest!9058 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9058 (= (_2!8451 (h!21443 (zeroValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9058 true) setRest!9058))))

(declare-fun b!1511968 () Bool)

(declare-fun tp!432167 () Bool)

(assert (=> b!1511968 (= e!966775 tp!432167)))

(declare-fun setIsEmpty!9058 () Bool)

(assert (=> setIsEmpty!9058 setRes!9058))

(assert (= b!1511966 b!1511967))

(assert (= (and b!1511966 condSetEmpty!9058) setIsEmpty!9058))

(assert (= (and b!1511966 (not condSetEmpty!9058)) setNonEmpty!9058))

(assert (= setNonEmpty!9058 b!1511968))

(assert (= (and b!1511550 ((_ is Cons!16042) (zeroValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))) b!1511966))

(declare-fun m!1775986 () Bool)

(assert (=> b!1511966 m!1775986))

(declare-fun m!1775988 () Bool)

(assert (=> setNonEmpty!9058 m!1775988))

(declare-fun e!966776 () Bool)

(assert (=> b!1511550 (= tp!432019 e!966776)))

(declare-fun tp!432169 () Bool)

(declare-fun setRes!9059 () Bool)

(declare-fun b!1511969 () Bool)

(declare-fun e!966777 () Bool)

(assert (=> b!1511969 (= e!966776 (and (inv!21275 (_1!8450 (_1!8451 (h!21443 (minValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))))) e!966777 tp_is_empty!7011 setRes!9059 tp!432169))))

(declare-fun condSetEmpty!9059 () Bool)

(assert (=> b!1511969 (= condSetEmpty!9059 (= (_2!8451 (h!21443 (minValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1511970 () Bool)

(declare-fun tp!432168 () Bool)

(assert (=> b!1511970 (= e!966777 tp!432168)))

(declare-fun setNonEmpty!9059 () Bool)

(declare-fun e!966778 () Bool)

(declare-fun setElem!9059 () Context!1346)

(declare-fun tp!432170 () Bool)

(assert (=> setNonEmpty!9059 (= setRes!9059 (and tp!432170 (inv!21275 setElem!9059) e!966778))))

(declare-fun setRest!9059 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9059 (= (_2!8451 (h!21443 (minValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9059 true) setRest!9059))))

(declare-fun b!1511971 () Bool)

(declare-fun tp!432171 () Bool)

(assert (=> b!1511971 (= e!966778 tp!432171)))

(declare-fun setIsEmpty!9059 () Bool)

(assert (=> setIsEmpty!9059 setRes!9059))

(assert (= b!1511969 b!1511970))

(assert (= (and b!1511969 condSetEmpty!9059) setIsEmpty!9059))

(assert (= (and b!1511969 (not condSetEmpty!9059)) setNonEmpty!9059))

(assert (= setNonEmpty!9059 b!1511971))

(assert (= (and b!1511550 ((_ is Cons!16042) (minValue!1724 (v!22853 (underlying!3143 (v!22854 (underlying!3144 (cache!1792 cacheUp!616)))))))) b!1511969))

(declare-fun m!1775990 () Bool)

(assert (=> b!1511969 m!1775990))

(declare-fun m!1775992 () Bool)

(assert (=> setNonEmpty!9059 m!1775992))

(declare-fun tp!432174 () Bool)

(declare-fun tp!432172 () Bool)

(declare-fun e!966780 () Bool)

(declare-fun b!1511972 () Bool)

(assert (=> b!1511972 (= e!966780 (and (inv!21263 (left!13353 (c!247834 (totalInput!2291 cacheFurthestNullable!64)))) tp!432174 (inv!21263 (right!13683 (c!247834 (totalInput!2291 cacheFurthestNullable!64)))) tp!432172))))

(declare-fun b!1511974 () Bool)

(declare-fun e!966779 () Bool)

(declare-fun tp!432173 () Bool)

(assert (=> b!1511974 (= e!966779 tp!432173)))

(declare-fun b!1511973 () Bool)

(assert (=> b!1511973 (= e!966780 (and (inv!21276 (xs!8212 (c!247834 (totalInput!2291 cacheFurthestNullable!64)))) e!966779))))

(assert (=> b!1511530 (= tp!431993 (and (inv!21263 (c!247834 (totalInput!2291 cacheFurthestNullable!64))) e!966780))))

(assert (= (and b!1511530 ((_ is Node!5431) (c!247834 (totalInput!2291 cacheFurthestNullable!64)))) b!1511972))

(assert (= b!1511973 b!1511974))

(assert (= (and b!1511530 ((_ is Leaf!8054) (c!247834 (totalInput!2291 cacheFurthestNullable!64)))) b!1511973))

(declare-fun m!1775994 () Bool)

(assert (=> b!1511972 m!1775994))

(declare-fun m!1775996 () Bool)

(assert (=> b!1511972 m!1775996))

(declare-fun m!1775998 () Bool)

(assert (=> b!1511973 m!1775998))

(assert (=> b!1511530 m!1775288))

(declare-fun b!1511988 () Bool)

(declare-fun e!966783 () Bool)

(declare-fun tp!432187 () Bool)

(declare-fun tp!432188 () Bool)

(assert (=> b!1511988 (= e!966783 (and tp!432187 tp!432188))))

(assert (=> b!1511543 (= tp!432005 e!966783)))

(declare-fun b!1511987 () Bool)

(declare-fun tp!432185 () Bool)

(assert (=> b!1511987 (= e!966783 tp!432185)))

(declare-fun b!1511986 () Bool)

(declare-fun tp!432186 () Bool)

(declare-fun tp!432189 () Bool)

(assert (=> b!1511986 (= e!966783 (and tp!432186 tp!432189))))

(declare-fun b!1511985 () Bool)

(assert (=> b!1511985 (= e!966783 tp_is_empty!7011)))

(assert (= (and b!1511543 ((_ is ElementMatch!4155) (regex!2840 (h!21444 rules!1640)))) b!1511985))

(assert (= (and b!1511543 ((_ is Concat!7085) (regex!2840 (h!21444 rules!1640)))) b!1511986))

(assert (= (and b!1511543 ((_ is Star!4155) (regex!2840 (h!21444 rules!1640)))) b!1511987))

(assert (= (and b!1511543 ((_ is Union!4155) (regex!2840 (h!21444 rules!1640)))) b!1511988))

(declare-fun setIsEmpty!9060 () Bool)

(declare-fun setRes!9060 () Bool)

(assert (=> setIsEmpty!9060 setRes!9060))

(declare-fun b!1511989 () Bool)

(declare-fun e!966784 () Bool)

(declare-fun tp!432191 () Bool)

(assert (=> b!1511989 (= e!966784 tp!432191)))

(declare-fun e!966785 () Bool)

(assert (=> b!1511518 (= tp!431996 e!966785)))

(declare-fun b!1511990 () Bool)

(declare-fun tp!432190 () Bool)

(declare-fun tp!432194 () Bool)

(declare-fun e!966786 () Bool)

(assert (=> b!1511990 (= e!966785 (and tp!432194 (inv!21275 (_2!8447 (_1!8448 (h!21439 mapDefault!6948)))) e!966786 tp_is_empty!7011 setRes!9060 tp!432190))))

(declare-fun condSetEmpty!9060 () Bool)

(assert (=> b!1511990 (= condSetEmpty!9060 (= (_2!8448 (h!21439 mapDefault!6948)) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun tp!432193 () Bool)

(declare-fun setNonEmpty!9060 () Bool)

(declare-fun setElem!9060 () Context!1346)

(assert (=> setNonEmpty!9060 (= setRes!9060 (and tp!432193 (inv!21275 setElem!9060) e!966784))))

(declare-fun setRest!9060 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9060 (= (_2!8448 (h!21439 mapDefault!6948)) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9060 true) setRest!9060))))

(declare-fun b!1511991 () Bool)

(declare-fun tp!432192 () Bool)

(assert (=> b!1511991 (= e!966786 tp!432192)))

(assert (= b!1511990 b!1511991))

(assert (= (and b!1511990 condSetEmpty!9060) setIsEmpty!9060))

(assert (= (and b!1511990 (not condSetEmpty!9060)) setNonEmpty!9060))

(assert (= setNonEmpty!9060 b!1511989))

(assert (= (and b!1511518 ((_ is Cons!16038) mapDefault!6948)) b!1511990))

(declare-fun m!1776000 () Bool)

(assert (=> b!1511990 m!1776000))

(declare-fun m!1776002 () Bool)

(assert (=> setNonEmpty!9060 m!1776002))

(declare-fun e!966788 () Bool)

(declare-fun tp!432197 () Bool)

(declare-fun b!1511992 () Bool)

(declare-fun tp!432195 () Bool)

(assert (=> b!1511992 (= e!966788 (and (inv!21263 (left!13353 (c!247834 totalInput!458))) tp!432197 (inv!21263 (right!13683 (c!247834 totalInput!458))) tp!432195))))

(declare-fun b!1511994 () Bool)

(declare-fun e!966787 () Bool)

(declare-fun tp!432196 () Bool)

(assert (=> b!1511994 (= e!966787 tp!432196)))

(declare-fun b!1511993 () Bool)

(assert (=> b!1511993 (= e!966788 (and (inv!21276 (xs!8212 (c!247834 totalInput!458))) e!966787))))

(assert (=> b!1511544 (= tp!432000 (and (inv!21263 (c!247834 totalInput!458)) e!966788))))

(assert (= (and b!1511544 ((_ is Node!5431) (c!247834 totalInput!458))) b!1511992))

(assert (= b!1511993 b!1511994))

(assert (= (and b!1511544 ((_ is Leaf!8054) (c!247834 totalInput!458))) b!1511993))

(declare-fun m!1776004 () Bool)

(assert (=> b!1511992 m!1776004))

(declare-fun m!1776006 () Bool)

(assert (=> b!1511992 m!1776006))

(declare-fun m!1776008 () Bool)

(assert (=> b!1511993 m!1776008))

(assert (=> b!1511544 m!1775348))

(declare-fun setIsEmpty!9061 () Bool)

(declare-fun setRes!9061 () Bool)

(assert (=> setIsEmpty!9061 setRes!9061))

(declare-fun b!1511995 () Bool)

(declare-fun e!966789 () Bool)

(declare-fun tp!432199 () Bool)

(assert (=> b!1511995 (= e!966789 tp!432199)))

(declare-fun e!966790 () Bool)

(assert (=> b!1511563 (= tp!431997 e!966790)))

(declare-fun tp!432202 () Bool)

(declare-fun tp!432198 () Bool)

(declare-fun b!1511996 () Bool)

(declare-fun e!966791 () Bool)

(assert (=> b!1511996 (= e!966790 (and tp!432202 (inv!21275 (_2!8447 (_1!8448 (h!21439 (zeroValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))))) e!966791 tp_is_empty!7011 setRes!9061 tp!432198))))

(declare-fun condSetEmpty!9061 () Bool)

(assert (=> b!1511996 (= condSetEmpty!9061 (= (_2!8448 (h!21439 (zeroValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun tp!432201 () Bool)

(declare-fun setElem!9061 () Context!1346)

(declare-fun setNonEmpty!9061 () Bool)

(assert (=> setNonEmpty!9061 (= setRes!9061 (and tp!432201 (inv!21275 setElem!9061) e!966789))))

(declare-fun setRest!9061 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9061 (= (_2!8448 (h!21439 (zeroValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9061 true) setRest!9061))))

(declare-fun b!1511997 () Bool)

(declare-fun tp!432200 () Bool)

(assert (=> b!1511997 (= e!966791 tp!432200)))

(assert (= b!1511996 b!1511997))

(assert (= (and b!1511996 condSetEmpty!9061) setIsEmpty!9061))

(assert (= (and b!1511996 (not condSetEmpty!9061)) setNonEmpty!9061))

(assert (= setNonEmpty!9061 b!1511995))

(assert (= (and b!1511563 ((_ is Cons!16038) (zeroValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))) b!1511996))

(declare-fun m!1776010 () Bool)

(assert (=> b!1511996 m!1776010))

(declare-fun m!1776012 () Bool)

(assert (=> setNonEmpty!9061 m!1776012))

(declare-fun setIsEmpty!9062 () Bool)

(declare-fun setRes!9062 () Bool)

(assert (=> setIsEmpty!9062 setRes!9062))

(declare-fun b!1511998 () Bool)

(declare-fun e!966792 () Bool)

(declare-fun tp!432204 () Bool)

(assert (=> b!1511998 (= e!966792 tp!432204)))

(declare-fun e!966793 () Bool)

(assert (=> b!1511563 (= tp!432018 e!966793)))

(declare-fun e!966794 () Bool)

(declare-fun tp!432207 () Bool)

(declare-fun tp!432203 () Bool)

(declare-fun b!1511999 () Bool)

(assert (=> b!1511999 (= e!966793 (and tp!432207 (inv!21275 (_2!8447 (_1!8448 (h!21439 (minValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))))) e!966794 tp_is_empty!7011 setRes!9062 tp!432203))))

(declare-fun condSetEmpty!9062 () Bool)

(assert (=> b!1511999 (= condSetEmpty!9062 (= (_2!8448 (h!21439 (minValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun setNonEmpty!9062 () Bool)

(declare-fun tp!432206 () Bool)

(declare-fun setElem!9062 () Context!1346)

(assert (=> setNonEmpty!9062 (= setRes!9062 (and tp!432206 (inv!21275 setElem!9062) e!966792))))

(declare-fun setRest!9062 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9062 (= (_2!8448 (h!21439 (minValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9062 true) setRest!9062))))

(declare-fun b!1512000 () Bool)

(declare-fun tp!432205 () Bool)

(assert (=> b!1512000 (= e!966794 tp!432205)))

(assert (= b!1511999 b!1512000))

(assert (= (and b!1511999 condSetEmpty!9062) setIsEmpty!9062))

(assert (= (and b!1511999 (not condSetEmpty!9062)) setNonEmpty!9062))

(assert (= setNonEmpty!9062 b!1511998))

(assert (= (and b!1511563 ((_ is Cons!16038) (minValue!1723 (v!22851 (underlying!3141 (v!22852 (underlying!3142 (cache!1791 cacheDown!629)))))))) b!1511999))

(declare-fun m!1776014 () Bool)

(assert (=> b!1511999 m!1776014))

(declare-fun m!1776016 () Bool)

(assert (=> setNonEmpty!9062 m!1776016))

(declare-fun mapIsEmpty!6959 () Bool)

(declare-fun mapRes!6959 () Bool)

(assert (=> mapIsEmpty!6959 mapRes!6959))

(declare-fun setElem!9067 () Context!1346)

(declare-fun setNonEmpty!9067 () Bool)

(declare-fun e!966806 () Bool)

(declare-fun setRes!9067 () Bool)

(declare-fun tp!432225 () Bool)

(assert (=> setNonEmpty!9067 (= setRes!9067 (and tp!432225 (inv!21275 setElem!9067) e!966806))))

(declare-fun mapValue!6959 () List!16112)

(declare-fun setRest!9067 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9067 (= (_1!8454 (_1!8455 (h!21445 mapValue!6959))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9067 true) setRest!9067))))

(declare-fun setIsEmpty!9067 () Bool)

(assert (=> setIsEmpty!9067 setRes!9067))

(declare-fun b!1512011 () Bool)

(declare-fun e!966805 () Bool)

(declare-fun tp!432228 () Bool)

(assert (=> b!1512011 (= e!966805 tp!432228)))

(declare-fun b!1512012 () Bool)

(declare-fun e!966804 () Bool)

(declare-fun setRes!9068 () Bool)

(declare-fun tp!432226 () Bool)

(assert (=> b!1512012 (= e!966804 (and setRes!9068 tp!432226))))

(declare-fun condSetEmpty!9067 () Bool)

(declare-fun mapDefault!6959 () List!16112)

(assert (=> b!1512012 (= condSetEmpty!9067 (= (_1!8454 (_1!8455 (h!21445 mapDefault!6959))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1512013 () Bool)

(declare-fun e!966803 () Bool)

(declare-fun tp!432223 () Bool)

(assert (=> b!1512013 (= e!966803 (and setRes!9067 tp!432223))))

(declare-fun condSetEmpty!9068 () Bool)

(assert (=> b!1512013 (= condSetEmpty!9068 (= (_1!8454 (_1!8455 (h!21445 mapValue!6959))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun tp!432222 () Bool)

(declare-fun setNonEmpty!9068 () Bool)

(declare-fun setElem!9068 () Context!1346)

(assert (=> setNonEmpty!9068 (= setRes!9068 (and tp!432222 (inv!21275 setElem!9068) e!966805))))

(declare-fun setRest!9068 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9068 (= (_1!8454 (_1!8455 (h!21445 mapDefault!6959))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9068 true) setRest!9068))))

(declare-fun condMapEmpty!6959 () Bool)

(assert (=> mapNonEmpty!6949 (= condMapEmpty!6959 (= mapRest!6949 ((as const (Array (_ BitVec 32) List!16112)) mapDefault!6959)))))

(assert (=> mapNonEmpty!6949 (= tp!432004 (and e!966804 mapRes!6959))))

(declare-fun mapNonEmpty!6959 () Bool)

(declare-fun tp!432224 () Bool)

(assert (=> mapNonEmpty!6959 (= mapRes!6959 (and tp!432224 e!966803))))

(declare-fun mapKey!6959 () (_ BitVec 32))

(declare-fun mapRest!6959 () (Array (_ BitVec 32) List!16112))

(assert (=> mapNonEmpty!6959 (= mapRest!6949 (store mapRest!6959 mapKey!6959 mapValue!6959))))

(declare-fun b!1512014 () Bool)

(declare-fun tp!432227 () Bool)

(assert (=> b!1512014 (= e!966806 tp!432227)))

(declare-fun setIsEmpty!9068 () Bool)

(assert (=> setIsEmpty!9068 setRes!9068))

(assert (= (and mapNonEmpty!6949 condMapEmpty!6959) mapIsEmpty!6959))

(assert (= (and mapNonEmpty!6949 (not condMapEmpty!6959)) mapNonEmpty!6959))

(assert (= (and b!1512013 condSetEmpty!9068) setIsEmpty!9067))

(assert (= (and b!1512013 (not condSetEmpty!9068)) setNonEmpty!9067))

(assert (= setNonEmpty!9067 b!1512014))

(assert (= (and mapNonEmpty!6959 ((_ is Cons!16044) mapValue!6959)) b!1512013))

(assert (= (and b!1512012 condSetEmpty!9067) setIsEmpty!9068))

(assert (= (and b!1512012 (not condSetEmpty!9067)) setNonEmpty!9068))

(assert (= setNonEmpty!9068 b!1512011))

(assert (= (and mapNonEmpty!6949 ((_ is Cons!16044) mapDefault!6959)) b!1512012))

(declare-fun m!1776018 () Bool)

(assert (=> setNonEmpty!9067 m!1776018))

(declare-fun m!1776020 () Bool)

(assert (=> setNonEmpty!9068 m!1776020))

(declare-fun m!1776022 () Bool)

(assert (=> mapNonEmpty!6959 m!1776022))

(declare-fun setIsEmpty!9069 () Bool)

(declare-fun setRes!9069 () Bool)

(assert (=> setIsEmpty!9069 setRes!9069))

(declare-fun e!966807 () Bool)

(declare-fun setElem!9069 () Context!1346)

(declare-fun tp!432230 () Bool)

(declare-fun setNonEmpty!9069 () Bool)

(assert (=> setNonEmpty!9069 (= setRes!9069 (and tp!432230 (inv!21275 setElem!9069) e!966807))))

(declare-fun setRest!9069 () (InoxSet Context!1346))

(assert (=> setNonEmpty!9069 (= (_1!8454 (_1!8455 (h!21445 mapValue!6950))) ((_ map or) (store ((as const (Array Context!1346 Bool)) false) setElem!9069 true) setRest!9069))))

(declare-fun b!1512015 () Bool)

(declare-fun e!966808 () Bool)

(declare-fun tp!432231 () Bool)

(assert (=> b!1512015 (= e!966808 (and setRes!9069 tp!432231))))

(declare-fun condSetEmpty!9069 () Bool)

(assert (=> b!1512015 (= condSetEmpty!9069 (= (_1!8454 (_1!8455 (h!21445 mapValue!6950))) ((as const (Array Context!1346 Bool)) false)))))

(declare-fun b!1512016 () Bool)

(declare-fun tp!432229 () Bool)

(assert (=> b!1512016 (= e!966807 tp!432229)))

(assert (=> mapNonEmpty!6949 (= tp!431992 e!966808)))

(assert (= (and b!1512015 condSetEmpty!9069) setIsEmpty!9069))

(assert (= (and b!1512015 (not condSetEmpty!9069)) setNonEmpty!9069))

(assert (= setNonEmpty!9069 b!1512016))

(assert (= (and mapNonEmpty!6949 ((_ is Cons!16044) mapValue!6950)) b!1512015))

(declare-fun m!1776024 () Bool)

(assert (=> setNonEmpty!9069 m!1776024))

(check-sat (not b!1511653) (not b_next!39881) (not b!1511891) (not d!447753) (not b!1511839) (not b!1511775) (not b!1511994) (not b!1511661) (not d!447659) (not b!1511737) (not b!1511735) (not b!1512015) (not b!1511683) (not b!1511904) (not b!1511767) (not b!1511847) (not b!1511796) (not b!1511973) (not d!447639) (not setNonEmpty!9062) (not d!447755) (not d!447685) (not d!447727) (not b!1511655) (not d!447661) (not b!1511862) (not d!447673) (not b!1511801) (not b!1511903) (not b!1511640) (not b!1511749) (not b!1511599) (not b!1511914) (not b!1511638) (not b!1511723) (not b_next!39887) (not b!1511658) (not d!447663) (not b!1511772) (not b!1511818) (not b!1511999) (not b!1511609) (not b!1512012) (not b!1511946) (not b!1511829) (not d!447687) (not b!1511635) (not d!447739) (not b_next!39883) (not b!1511730) (not b!1511971) (not d!447667) (not d!447669) (not d!447703) (not b!1511733) (not b!1511800) (not b!1511812) (not b!1511989) (not b!1511757) b_and!105193 (not b!1511785) (not d!447633) (not d!447653) (not b!1511803) (not d!447715) (not d!447771) (not b!1511731) (not b!1511684) (not d!447649) (not b!1511598) (not setNonEmpty!9061) (not d!447741) (not b!1511784) (not b!1511966) (not d!447747) (not b!1511942) (not b!1511889) (not b!1511820) (not b!1511926) (not b!1511781) (not b!1511974) (not b!1511717) (not b!1511633) (not d!447745) (not b!1511986) (not d!447721) b_and!105209 (not b!1511948) (not b!1511968) b_and!105205 (not b!1511925) (not b!1511768) (not b_next!39895) (not b!1511783) (not b!1511852) (not d!447643) (not b!1511811) (not b!1511963) (not b!1511611) (not b!1511654) (not b!1511843) (not b!1511874) (not b!1511923) (not b!1511780) (not setNonEmpty!9056) (not b!1511816) (not b!1511927) (not b!1511890) (not b!1511987) (not b!1511751) (not setNonEmpty!9057) (not d!447713) (not setNonEmpty!9045) (not setNonEmpty!9048) (not b!1512000) (not b!1511797) (not setNonEmpty!9069) (not b!1511996) (not b_next!39891) (not b!1511760) (not d!447671) (not b!1511629) (not b!1511591) (not b_lambda!47495) (not b!1511799) (not b!1511531) (not d!447701) (not b!1511924) (not d!447731) (not b!1511601) (not d!447647) (not d!447709) (not b!1511964) (not b!1511700) (not b_next!39889) (not b!1511636) (not d!447699) (not b!1511959) (not b!1511789) (not b!1511806) (not b!1512013) (not b!1511846) (not b!1511720) (not b!1511945) (not b!1512011) (not b!1511794) (not d!447711) (not b!1511972) (not setNonEmpty!9058) (not b!1511727) (not b!1511809) (not d!447635) (not setNonEmpty!9055) (not b!1511593) (not b!1511991) (not b!1511659) (not b_next!39885) (not b!1511639) (not b!1511530) (not b!1511947) (not b!1511967) (not d!447781) (not b!1511725) (not d!447677) (not b!1511748) (not b!1511614) (not b!1511696) (not b!1511594) (not b!1511873) b_and!105189 (not b!1511722) (not setNonEmpty!9053) b_and!105199 (not d!447641) (not setNonEmpty!9041) (not b!1511893) b_and!105201 (not b!1511786) tp_is_empty!7011 (not mapNonEmpty!6959) (not b!1511726) (not b_next!39897) (not d!447775) (not b!1511761) (not b!1511988) (not d!447757) (not b!1511600) (not b!1511844) (not d!447645) (not d!447705) (not d!447657) (not d!447789) (not d!447665) (not b!1511944) (not b!1511630) (not b!1511724) (not b!1511718) (not b!1511756) (not d!447681) (not d!447717) (not mapNonEmpty!6956) (not b!1511849) (not b!1511997) (not b!1511771) (not b!1511872) (not b!1512016) (not b!1512014) (not d!447765) (not b_next!39879) (not b!1511969) (not b!1511950) (not d!447759) (not d!447751) (not b!1511960) (not b!1511602) (not b!1511736) (not b!1511861) (not b!1511787) (not b!1511732) (not d!447637) (not b!1511728) (not b!1511778) (not b!1511750) (not b!1511993) (not b!1511842) (not d!447707) (not b!1511961) (not b!1511642) (not b!1511656) (not d!447691) (not b!1511544) (not b!1511672) (not b!1511671) (not b!1511807) (not b!1511823) (not d!447689) (not b!1511697) (not b!1511597) (not b!1511631) (not mapNonEmpty!6953) (not b!1511905) (not b!1511817) (not b!1511841) (not b!1511915) (not b!1511815) (not d!447779) (not b!1511739) (not bm!100317) (not setNonEmpty!9059) (not b!1511595) (not b!1511826) (not b!1511863) (not d!447697) (not b!1511557) (not b!1511754) (not b!1511998) b_and!105197 (not b!1511765) (not d!447695) (not setNonEmpty!9054) (not b!1511995) (not d!447683) b_and!105191 (not b!1511992) (not setNonEmpty!9068) (not b!1511836) (not b!1511651) (not d!447749) (not bm!100320) (not b!1511892) (not d!447693) (not b!1511776) (not d!447675) (not b!1511734) (not d!447743) (not d!447629) (not b!1511652) (not tb!86201) (not b!1511814) (not b!1511637) (not b!1511840) (not b!1511943) (not b!1511949) (not b!1511719) (not b!1511894) (not d!447767) (not setNonEmpty!9042) (not b!1511965) (not b!1511522) (not b_next!39893) (not d!447679) (not b!1511632) (not setNonEmpty!9060) (not b!1511962) b_and!105203 (not d!447655) (not b!1511990) (not b!1511657) (not b!1511970) (not b!1511838) (not setNonEmpty!9067) b_and!105207 (not bm!100321) (not setNonEmpty!9036))
(check-sat (not b_next!39881) (not b_next!39887) (not b_next!39883) b_and!105193 b_and!105209 (not b_next!39891) (not b_next!39889) (not b_next!39885) (not b_next!39879) b_and!105197 b_and!105191 (not b_next!39893) b_and!105205 (not b_next!39895) b_and!105199 b_and!105189 b_and!105201 (not b_next!39897) b_and!105203 b_and!105207)
