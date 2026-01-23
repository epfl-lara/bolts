; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!140960 () Bool)

(assert start!140960)

(declare-fun b!1510798 () Bool)

(declare-fun b_free!39139 () Bool)

(declare-fun b_next!39843 () Bool)

(assert (=> b!1510798 (= b_free!39139 (not b_next!39843))))

(declare-fun tp!431613 () Bool)

(declare-fun b_and!105151 () Bool)

(assert (=> b!1510798 (= tp!431613 b_and!105151)))

(declare-fun b!1510794 () Bool)

(declare-fun b_free!39141 () Bool)

(declare-fun b_next!39845 () Bool)

(assert (=> b!1510794 (= b_free!39141 (not b_next!39845))))

(declare-fun tp!431630 () Bool)

(declare-fun b_and!105153 () Bool)

(assert (=> b!1510794 (= tp!431630 b_and!105153)))

(declare-fun b!1510821 () Bool)

(declare-fun b_free!39143 () Bool)

(declare-fun b_next!39847 () Bool)

(assert (=> b!1510821 (= b_free!39143 (not b_next!39847))))

(declare-fun tp!431621 () Bool)

(declare-fun b_and!105155 () Bool)

(assert (=> b!1510821 (= tp!431621 b_and!105155)))

(declare-fun b!1510793 () Bool)

(declare-fun b_free!39145 () Bool)

(declare-fun b_next!39849 () Bool)

(assert (=> b!1510793 (= b_free!39145 (not b_next!39849))))

(declare-fun tp!431627 () Bool)

(declare-fun b_and!105157 () Bool)

(assert (=> b!1510793 (= tp!431627 b_and!105157)))

(declare-fun b!1510776 () Bool)

(declare-fun b_free!39147 () Bool)

(declare-fun b_next!39851 () Bool)

(assert (=> b!1510776 (= b_free!39147 (not b_next!39851))))

(declare-fun tp!431618 () Bool)

(declare-fun b_and!105159 () Bool)

(assert (=> b!1510776 (= tp!431618 b_and!105159)))

(declare-fun b!1510804 () Bool)

(declare-fun b_free!39149 () Bool)

(declare-fun b_next!39853 () Bool)

(assert (=> b!1510804 (= b_free!39149 (not b_next!39853))))

(declare-fun tp!431611 () Bool)

(declare-fun b_and!105161 () Bool)

(assert (=> b!1510804 (= tp!431611 b_and!105161)))

(declare-fun b_free!39151 () Bool)

(declare-fun b_next!39855 () Bool)

(assert (=> b!1510804 (= b_free!39151 (not b_next!39855))))

(declare-fun tp!431607 () Bool)

(declare-fun b_and!105163 () Bool)

(assert (=> b!1510804 (= tp!431607 b_and!105163)))

(declare-fun b!1510800 () Bool)

(declare-fun b_free!39153 () Bool)

(declare-fun b_next!39857 () Bool)

(assert (=> b!1510800 (= b_free!39153 (not b_next!39857))))

(declare-fun tp!431609 () Bool)

(declare-fun b_and!105165 () Bool)

(assert (=> b!1510800 (= tp!431609 b_and!105165)))

(declare-fun b!1510775 () Bool)

(declare-fun e!965922 () Bool)

(declare-fun e!965939 () Bool)

(declare-datatypes ((C!8484 0))(
  ( (C!8485 (val!4814 Int)) )
))
(declare-datatypes ((Regex!4153 0))(
  ( (ElementMatch!4153 (c!247751 C!8484)) (Concat!7081 (regOne!8818 Regex!4153) (regTwo!8818 Regex!4153)) (EmptyExpr!4153) (Star!4153 (reg!4482 Regex!4153)) (EmptyLang!4153) (Union!4153 (regOne!8819 Regex!4153) (regTwo!8819 Regex!4153)) )
))
(declare-datatypes ((List!16088 0))(
  ( (Nil!16020) (Cons!16020 (h!21421 Regex!4153) (t!139354 List!16088)) )
))
(declare-datatypes ((Context!1342 0))(
  ( (Context!1343 (exprs!1171 List!16088)) )
))
(declare-datatypes ((tuple3!1336 0))(
  ( (tuple3!1337 (_1!8425 Regex!4153) (_2!8425 Context!1342) (_3!998 C!8484)) )
))
(declare-datatypes ((array!5126 0))(
  ( (array!5127 (arr!2288 (Array (_ BitVec 32) (_ BitVec 64))) (size!12952 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14854 0))(
  ( (tuple2!14855 (_1!8426 tuple3!1336) (_2!8426 (InoxSet Context!1342))) )
))
(declare-datatypes ((List!16089 0))(
  ( (Nil!16021) (Cons!16021 (h!21422 tuple2!14854) (t!139355 List!16089)) )
))
(declare-datatypes ((array!5128 0))(
  ( (array!5129 (arr!2289 (Array (_ BitVec 32) List!16089)) (size!12953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2920 0))(
  ( (LongMapFixedSize!2921 (defaultEntry!1820 Int) (mask!4625 (_ BitVec 32)) (extraKeys!1707 (_ BitVec 32)) (zeroValue!1717 List!16089) (minValue!1717 List!16089) (_size!3001 (_ BitVec 32)) (_keys!1754 array!5126) (_values!1739 array!5128) (_vacant!1521 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5725 0))(
  ( (Cell!5726 (v!22834 LongMapFixedSize!2920)) )
))
(declare-datatypes ((MutLongMap!1460 0))(
  ( (LongMap!1460 (underlying!3129 Cell!5725)) (MutLongMapExt!1459 (__x!9970 Int)) )
))
(declare-fun lt!525297 () MutLongMap!1460)

(get-info :version)

(assert (=> b!1510775 (= e!965922 (and e!965939 ((_ is LongMap!1460) lt!525297)))))

(declare-datatypes ((Cell!5727 0))(
  ( (Cell!5728 (v!22835 MutLongMap!1460)) )
))
(declare-datatypes ((Hashable!1404 0))(
  ( (HashableExt!1403 (__x!9971 Int)) )
))
(declare-datatypes ((MutableMap!1404 0))(
  ( (MutableMapExt!1403 (__x!9972 Int)) (HashMap!1404 (underlying!3130 Cell!5727) (hashF!3323 Hashable!1404) (_size!3002 (_ BitVec 32)) (defaultValue!1564 Int)) )
))
(declare-datatypes ((CacheDown!840 0))(
  ( (CacheDown!841 (cache!1785 MutableMap!1404)) )
))
(declare-fun cacheDown!629 () CacheDown!840)

(assert (=> b!1510775 (= lt!525297 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))

(declare-fun tp!431625 () Bool)

(declare-datatypes ((tuple2!14856 0))(
  ( (tuple2!14857 (_1!8427 Context!1342) (_2!8427 C!8484)) )
))
(declare-datatypes ((tuple2!14858 0))(
  ( (tuple2!14859 (_1!8428 tuple2!14856) (_2!8428 (InoxSet Context!1342))) )
))
(declare-datatypes ((List!16090 0))(
  ( (Nil!16022) (Cons!16022 (h!21423 tuple2!14858) (t!139356 List!16090)) )
))
(declare-datatypes ((array!5130 0))(
  ( (array!5131 (arr!2290 (Array (_ BitVec 32) List!16090)) (size!12954 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2922 0))(
  ( (LongMapFixedSize!2923 (defaultEntry!1821 Int) (mask!4626 (_ BitVec 32)) (extraKeys!1708 (_ BitVec 32)) (zeroValue!1718 List!16090) (minValue!1718 List!16090) (_size!3003 (_ BitVec 32)) (_keys!1755 array!5126) (_values!1740 array!5130) (_vacant!1522 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1405 0))(
  ( (HashableExt!1404 (__x!9973 Int)) )
))
(declare-datatypes ((Cell!5729 0))(
  ( (Cell!5730 (v!22836 LongMapFixedSize!2922)) )
))
(declare-datatypes ((MutLongMap!1461 0))(
  ( (LongMap!1461 (underlying!3131 Cell!5729)) (MutLongMapExt!1460 (__x!9974 Int)) )
))
(declare-datatypes ((Cell!5731 0))(
  ( (Cell!5732 (v!22837 MutLongMap!1461)) )
))
(declare-datatypes ((MutableMap!1405 0))(
  ( (MutableMapExt!1404 (__x!9975 Int)) (HashMap!1405 (underlying!3132 Cell!5731) (hashF!3324 Hashable!1405) (_size!3004 (_ BitVec 32)) (defaultValue!1565 Int)) )
))
(declare-datatypes ((CacheUp!836 0))(
  ( (CacheUp!837 (cache!1786 MutableMap!1405)) )
))
(declare-fun cacheUp!616 () CacheUp!836)

(declare-fun e!965928 () Bool)

(declare-fun e!965919 () Bool)

(declare-fun tp!431608 () Bool)

(declare-fun array_inv!1654 (array!5126) Bool)

(declare-fun array_inv!1655 (array!5130) Bool)

(assert (=> b!1510776 (= e!965919 (and tp!431618 tp!431625 tp!431608 (array_inv!1654 (_keys!1755 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) (array_inv!1655 (_values!1740 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) e!965928))))

(declare-fun mapNonEmpty!6921 () Bool)

(declare-fun mapRes!6923 () Bool)

(declare-fun tp!431629 () Bool)

(declare-fun tp!431604 () Bool)

(assert (=> mapNonEmpty!6921 (= mapRes!6923 (and tp!431629 tp!431604))))

(declare-fun mapValue!6923 () List!16089)

(declare-fun mapRest!6923 () (Array (_ BitVec 32) List!16089))

(declare-fun mapKey!6921 () (_ BitVec 32))

(assert (=> mapNonEmpty!6921 (= (arr!2289 (_values!1739 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) (store mapRest!6923 mapKey!6921 mapValue!6923))))

(declare-fun b!1510777 () Bool)

(declare-fun res!679971 () Bool)

(declare-fun e!965950 () Bool)

(assert (=> b!1510777 (=> (not res!679971) (not e!965950))))

(declare-datatypes ((List!16091 0))(
  ( (Nil!16023) (Cons!16023 (h!21424 (_ BitVec 16)) (t!139357 List!16091)) )
))
(declare-datatypes ((TokenValue!2928 0))(
  ( (FloatLiteralValue!5856 (text!20941 List!16091)) (TokenValueExt!2927 (__x!9976 Int)) (Broken!14640 (value!90517 List!16091)) (Object!2995) (End!2928) (Def!2928) (Underscore!2928) (Match!2928) (Else!2928) (Error!2928) (Case!2928) (If!2928) (Extends!2928) (Abstract!2928) (Class!2928) (Val!2928) (DelimiterValue!5856 (del!2988 List!16091)) (KeywordValue!2934 (value!90518 List!16091)) (CommentValue!5856 (value!90519 List!16091)) (WhitespaceValue!5856 (value!90520 List!16091)) (IndentationValue!2928 (value!90521 List!16091)) (String!18901) (Int32!2928) (Broken!14641 (value!90522 List!16091)) (Boolean!2929) (Unit!25728) (OperatorValue!2931 (op!2988 List!16091)) (IdentifierValue!5856 (value!90523 List!16091)) (IdentifierValue!5857 (value!90524 List!16091)) (WhitespaceValue!5857 (value!90525 List!16091)) (True!5856) (False!5856) (Broken!14642 (value!90526 List!16091)) (Broken!14643 (value!90527 List!16091)) (True!5857) (RightBrace!2928) (RightBracket!2928) (Colon!2928) (Null!2928) (Comma!2928) (LeftBracket!2928) (False!5857) (LeftBrace!2928) (ImaginaryLiteralValue!2928 (text!20942 List!16091)) (StringLiteralValue!8784 (value!90528 List!16091)) (EOFValue!2928 (value!90529 List!16091)) (IdentValue!2928 (value!90530 List!16091)) (DelimiterValue!5857 (value!90531 List!16091)) (DedentValue!2928 (value!90532 List!16091)) (NewLineValue!2928 (value!90533 List!16091)) (IntegerValue!8784 (value!90534 (_ BitVec 32)) (text!20943 List!16091)) (IntegerValue!8785 (value!90535 Int) (text!20944 List!16091)) (Times!2928) (Or!2928) (Equal!2928) (Minus!2928) (Broken!14644 (value!90536 List!16091)) (And!2928) (Div!2928) (LessEqual!2928) (Mod!2928) (Concat!7082) (Not!2928) (Plus!2928) (SpaceValue!2928 (value!90537 List!16091)) (IntegerValue!8786 (value!90538 Int) (text!20945 List!16091)) (StringLiteralValue!8785 (text!20946 List!16091)) (FloatLiteralValue!5857 (text!20947 List!16091)) (BytesLiteralValue!2928 (value!90539 List!16091)) (CommentValue!5857 (value!90540 List!16091)) (StringLiteralValue!8786 (value!90541 List!16091)) (ErrorTokenValue!2928 (msg!2989 List!16091)) )
))
(declare-datatypes ((List!16092 0))(
  ( (Nil!16024) (Cons!16024 (h!21425 C!8484) (t!139358 List!16092)) )
))
(declare-datatypes ((IArray!10859 0))(
  ( (IArray!10860 (innerList!5487 List!16092)) )
))
(declare-datatypes ((Conc!5427 0))(
  ( (Node!5427 (left!13348 Conc!5427) (right!13678 Conc!5427) (csize!11084 Int) (cheight!5638 Int)) (Leaf!8049 (xs!8208 IArray!10859) (csize!11085 Int)) (Empty!5427) )
))
(declare-datatypes ((BalanceConc!10796 0))(
  ( (BalanceConc!10797 (c!247752 Conc!5427)) )
))
(declare-datatypes ((String!18902 0))(
  ( (String!18903 (value!90542 String)) )
))
(declare-datatypes ((TokenValueInjection!5516 0))(
  ( (TokenValueInjection!5517 (toValue!4187 Int) (toChars!4046 Int)) )
))
(declare-datatypes ((Rule!5476 0))(
  ( (Rule!5477 (regex!2838 Regex!4153) (tag!3102 String!18902) (isSeparator!2838 Bool) (transformation!2838 TokenValueInjection!5516)) )
))
(declare-datatypes ((Token!5338 0))(
  ( (Token!5339 (value!90543 TokenValue!2928) (rule!4631 Rule!5476) (size!12955 Int) (originalCharacters!3700 List!16092)) )
))
(declare-datatypes ((List!16093 0))(
  ( (Nil!16025) (Cons!16025 (h!21426 Token!5338) (t!139359 List!16093)) )
))
(declare-datatypes ((IArray!10861 0))(
  ( (IArray!10862 (innerList!5488 List!16093)) )
))
(declare-datatypes ((Conc!5428 0))(
  ( (Node!5428 (left!13349 Conc!5428) (right!13679 Conc!5428) (csize!11086 Int) (cheight!5639 Int)) (Leaf!8050 (xs!8209 IArray!10861) (csize!11087 Int)) (Empty!5428) )
))
(declare-datatypes ((BalanceConc!10798 0))(
  ( (BalanceConc!10799 (c!247753 Conc!5428)) )
))
(declare-datatypes ((tuple2!14860 0))(
  ( (tuple2!14861 (_1!8429 BalanceConc!10798) (_2!8429 BalanceConc!10796)) )
))
(declare-fun lt!525293 () tuple2!14860)

(declare-fun isEmpty!9915 (List!16092) Bool)

(declare-fun list!6330 (BalanceConc!10796) List!16092)

(assert (=> b!1510777 (= res!679971 (isEmpty!9915 (list!6330 (_2!8429 lt!525293))))))

(declare-fun b!1510778 () Bool)

(declare-fun e!965940 () Bool)

(assert (=> b!1510778 (= e!965940 e!965950)))

(declare-fun res!679970 () Bool)

(assert (=> b!1510778 (=> (not res!679970) (not e!965950))))

(declare-fun lt!525281 () List!16093)

(declare-fun lt!525284 () List!16093)

(assert (=> b!1510778 (= res!679970 (= lt!525281 lt!525284))))

(declare-fun acc!392 () BalanceConc!10798)

(declare-fun list!6331 (BalanceConc!10798) List!16093)

(assert (=> b!1510778 (= lt!525284 (list!6331 acc!392))))

(assert (=> b!1510778 (= lt!525281 (list!6331 (_1!8429 lt!525293)))))

(declare-fun treated!70 () BalanceConc!10796)

(declare-datatypes ((LexerInterface!2491 0))(
  ( (LexerInterfaceExt!2488 (__x!9977 Int)) (Lexer!2489) )
))
(declare-fun thiss!13241 () LexerInterface!2491)

(declare-datatypes ((List!16094 0))(
  ( (Nil!16026) (Cons!16026 (h!21427 Rule!5476) (t!139360 List!16094)) )
))
(declare-fun rules!1640 () List!16094)

(declare-fun lexRec!326 (LexerInterface!2491 List!16094 BalanceConc!10796) tuple2!14860)

(assert (=> b!1510778 (= lt!525293 (lexRec!326 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1510780 () Bool)

(declare-fun e!965952 () Bool)

(declare-fun e!965933 () Bool)

(declare-fun tp!431612 () Bool)

(assert (=> b!1510780 (= e!965952 (and e!965933 tp!431612))))

(declare-fun b!1510781 () Bool)

(declare-fun res!679965 () Bool)

(declare-fun e!965935 () Bool)

(assert (=> b!1510781 (=> (not res!679965) (not e!965935))))

(declare-fun valid!1164 (CacheUp!836) Bool)

(assert (=> b!1510781 (= res!679965 (valid!1164 cacheUp!616))))

(declare-fun mapNonEmpty!6922 () Bool)

(declare-fun mapRes!6921 () Bool)

(declare-fun tp!431606 () Bool)

(declare-fun tp!431615 () Bool)

(assert (=> mapNonEmpty!6922 (= mapRes!6921 (and tp!431606 tp!431615))))

(declare-datatypes ((tuple3!1338 0))(
  ( (tuple3!1339 (_1!8430 (InoxSet Context!1342)) (_2!8430 Int) (_3!999 Int)) )
))
(declare-datatypes ((tuple2!14862 0))(
  ( (tuple2!14863 (_1!8431 tuple3!1338) (_2!8431 Int)) )
))
(declare-datatypes ((List!16095 0))(
  ( (Nil!16027) (Cons!16027 (h!21428 tuple2!14862) (t!139361 List!16095)) )
))
(declare-fun mapRest!6921 () (Array (_ BitVec 32) List!16095))

(declare-fun mapValue!6922 () List!16095)

(declare-datatypes ((array!5132 0))(
  ( (array!5133 (arr!2291 (Array (_ BitVec 32) List!16095)) (size!12956 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2924 0))(
  ( (LongMapFixedSize!2925 (defaultEntry!1822 Int) (mask!4627 (_ BitVec 32)) (extraKeys!1709 (_ BitVec 32)) (zeroValue!1719 List!16095) (minValue!1719 List!16095) (_size!3005 (_ BitVec 32)) (_keys!1756 array!5126) (_values!1741 array!5132) (_vacant!1523 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5733 0))(
  ( (Cell!5734 (v!22838 LongMapFixedSize!2924)) )
))
(declare-datatypes ((MutLongMap!1462 0))(
  ( (LongMap!1462 (underlying!3133 Cell!5733)) (MutLongMapExt!1461 (__x!9978 Int)) )
))
(declare-datatypes ((Cell!5735 0))(
  ( (Cell!5736 (v!22839 MutLongMap!1462)) )
))
(declare-datatypes ((Hashable!1406 0))(
  ( (HashableExt!1405 (__x!9979 Int)) )
))
(declare-datatypes ((MutableMap!1406 0))(
  ( (MutableMapExt!1405 (__x!9980 Int)) (HashMap!1406 (underlying!3134 Cell!5735) (hashF!3325 Hashable!1406) (_size!3006 (_ BitVec 32)) (defaultValue!1566 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!260 0))(
  ( (CacheFurthestNullable!261 (cache!1787 MutableMap!1406) (totalInput!2288 BalanceConc!10796)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!260)

(declare-fun mapKey!6922 () (_ BitVec 32))

(assert (=> mapNonEmpty!6922 (= (arr!2291 (_values!1741 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) (store mapRest!6921 mapKey!6922 mapValue!6922))))

(declare-fun b!1510782 () Bool)

(declare-fun lt!525295 () tuple2!14860)

(declare-fun lt!525300 () tuple2!14860)

(declare-fun e!965920 () Bool)

(declare-datatypes ((tuple2!14864 0))(
  ( (tuple2!14865 (_1!8432 Token!5338) (_2!8432 BalanceConc!10796)) )
))
(declare-datatypes ((Option!2922 0))(
  ( (None!2921) (Some!2921 (v!22840 tuple2!14864)) )
))
(declare-fun lt!525285 () Option!2922)

(declare-fun prepend!459 (BalanceConc!10798 Token!5338) BalanceConc!10798)

(assert (=> b!1510782 (= e!965920 (= lt!525295 (tuple2!14861 (prepend!459 (_1!8429 lt!525300) (_1!8432 (v!22840 lt!525285))) (_2!8429 lt!525300))))))

(assert (=> b!1510782 (= lt!525300 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525285))))))

(declare-fun b!1510783 () Bool)

(declare-fun res!679968 () Bool)

(declare-fun e!965917 () Bool)

(assert (=> b!1510783 (=> (not res!679968) (not e!965917))))

(declare-fun rulesInvariant!2266 (LexerInterface!2491 List!16094) Bool)

(assert (=> b!1510783 (= res!679968 (rulesInvariant!2266 thiss!13241 rules!1640))))

(declare-fun b!1510784 () Bool)

(declare-fun tp!431622 () Bool)

(declare-fun mapRes!6922 () Bool)

(assert (=> b!1510784 (= e!965928 (and tp!431622 mapRes!6922))))

(declare-fun condMapEmpty!6922 () Bool)

(declare-fun mapDefault!6921 () List!16090)

(assert (=> b!1510784 (= condMapEmpty!6922 (= (arr!2290 (_values!1740 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16090)) mapDefault!6921)))))

(declare-fun b!1510785 () Bool)

(declare-fun res!679960 () Bool)

(assert (=> b!1510785 (=> (not res!679960) (not e!965917))))

(declare-fun isEmpty!9916 (List!16094) Bool)

(assert (=> b!1510785 (= res!679960 (not (isEmpty!9916 rules!1640)))))

(declare-fun b!1510786 () Bool)

(declare-fun res!679967 () Bool)

(assert (=> b!1510786 (=> (not res!679967) (not e!965935))))

(declare-fun totalInput!458 () BalanceConc!10796)

(assert (=> b!1510786 (= res!679967 (= (totalInput!2288 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1510787 () Bool)

(declare-fun e!965930 () Bool)

(declare-fun tp!431603 () Bool)

(declare-fun inv!21244 (Conc!5427) Bool)

(assert (=> b!1510787 (= e!965930 (and (inv!21244 (c!247752 treated!70)) tp!431603))))

(declare-fun b!1510788 () Bool)

(declare-fun e!965921 () Bool)

(assert (=> b!1510788 (= e!965939 e!965921)))

(declare-fun b!1510789 () Bool)

(declare-fun e!965927 () Bool)

(declare-fun tp!431623 () Bool)

(assert (=> b!1510789 (= e!965927 (and (inv!21244 (c!247752 totalInput!458)) tp!431623))))

(declare-fun mapIsEmpty!6921 () Bool)

(assert (=> mapIsEmpty!6921 mapRes!6922))

(declare-fun b!1510790 () Bool)

(declare-fun e!965923 () Bool)

(assert (=> b!1510790 (= e!965921 e!965923)))

(declare-fun b!1510791 () Bool)

(declare-fun e!965943 () Bool)

(declare-fun input!1102 () BalanceConc!10796)

(declare-fun tp!431626 () Bool)

(assert (=> b!1510791 (= e!965943 (and (inv!21244 (c!247752 input!1102)) tp!431626))))

(declare-fun mapIsEmpty!6922 () Bool)

(assert (=> mapIsEmpty!6922 mapRes!6921))

(declare-fun b!1510792 () Bool)

(declare-fun e!965918 () Bool)

(assert (=> b!1510792 (= e!965935 (not e!965918))))

(declare-fun res!679958 () Bool)

(assert (=> b!1510792 (=> res!679958 e!965918)))

(declare-fun lt!525272 () List!16092)

(declare-fun lt!525271 () List!16092)

(declare-fun isSuffix!297 (List!16092 List!16092) Bool)

(assert (=> b!1510792 (= res!679958 (not (isSuffix!297 lt!525272 lt!525271)))))

(declare-fun lt!525273 () List!16092)

(assert (=> b!1510792 (isSuffix!297 lt!525272 lt!525273)))

(declare-datatypes ((Unit!25729 0))(
  ( (Unit!25730) )
))
(declare-fun lt!525282 () Unit!25729)

(declare-fun lt!525296 () List!16092)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!275 (List!16092 List!16092) Unit!25729)

(assert (=> b!1510792 (= lt!525282 (lemmaConcatTwoListThenFSndIsSuffix!275 lt!525296 lt!525272))))

(declare-fun e!965953 () Bool)

(declare-fun e!965924 () Bool)

(assert (=> b!1510793 (= e!965953 (and e!965924 tp!431627))))

(declare-fun e!965931 () Bool)

(declare-fun tp!431617 () Bool)

(declare-fun tp!431614 () Bool)

(declare-fun array_inv!1656 (array!5128) Bool)

(assert (=> b!1510794 (= e!965923 (and tp!431630 tp!431614 tp!431617 (array_inv!1654 (_keys!1754 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) (array_inv!1656 (_values!1739 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) e!965931))))

(declare-fun b!1510795 () Bool)

(declare-fun e!965934 () Bool)

(assert (=> b!1510795 (= e!965918 e!965934)))

(declare-fun res!679963 () Bool)

(assert (=> b!1510795 (=> res!679963 e!965934)))

(declare-datatypes ((tuple4!660 0))(
  ( (tuple4!661 (_1!8433 Option!2922) (_2!8433 CacheUp!836) (_3!1000 CacheDown!840) (_4!330 CacheFurthestNullable!260)) )
))
(declare-fun lt!525288 () tuple4!660)

(assert (=> b!1510795 (= res!679963 (not ((_ is Some!2921) (_1!8433 lt!525288))))))

(declare-fun maxPrefixZipperSequenceV3Mem!22 (LexerInterface!2491 List!16094 BalanceConc!10796 BalanceConc!10796 CacheUp!836 CacheDown!840 CacheFurthestNullable!260) tuple4!660)

(assert (=> b!1510795 (= lt!525288 (maxPrefixZipperSequenceV3Mem!22 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1510796 () Bool)

(declare-fun e!965937 () Bool)

(declare-fun tp!431619 () Bool)

(assert (=> b!1510796 (= e!965937 (and (inv!21244 (c!247752 (totalInput!2288 cacheFurthestNullable!64))) tp!431619))))

(declare-fun b!1510797 () Bool)

(declare-fun e!965944 () tuple2!14860)

(assert (=> b!1510797 (= e!965944 (tuple2!14861 (BalanceConc!10799 Empty!5428) input!1102))))

(declare-fun b!1510779 () Bool)

(declare-fun lt!525275 () tuple2!14860)

(declare-fun lt!525274 () Option!2922)

(assert (=> b!1510779 (= e!965944 (tuple2!14861 (prepend!459 (_1!8429 lt!525275) (_1!8432 (v!22840 lt!525274))) (_2!8429 lt!525275)))))

(assert (=> b!1510779 (= lt!525275 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525274))))))

(declare-fun res!679966 () Bool)

(assert (=> start!140960 (=> (not res!679966) (not e!965917))))

(assert (=> start!140960 (= res!679966 ((_ is Lexer!2489) thiss!13241))))

(assert (=> start!140960 e!965917))

(declare-fun e!965945 () Bool)

(declare-fun inv!21245 (BalanceConc!10798) Bool)

(assert (=> start!140960 (and (inv!21245 acc!392) e!965945)))

(declare-fun e!965947 () Bool)

(declare-fun inv!21246 (CacheUp!836) Bool)

(assert (=> start!140960 (and (inv!21246 cacheUp!616) e!965947)))

(declare-fun e!965951 () Bool)

(declare-fun inv!21247 (CacheDown!840) Bool)

(assert (=> start!140960 (and (inv!21247 cacheDown!629) e!965951)))

(declare-fun inv!21248 (BalanceConc!10796) Bool)

(assert (=> start!140960 (and (inv!21248 input!1102) e!965943)))

(assert (=> start!140960 (and (inv!21248 treated!70) e!965930)))

(assert (=> start!140960 true))

(assert (=> start!140960 e!965952))

(declare-fun e!965958 () Bool)

(declare-fun inv!21249 (CacheFurthestNullable!260) Bool)

(assert (=> start!140960 (and (inv!21249 cacheFurthestNullable!64) e!965958)))

(assert (=> start!140960 (and (inv!21248 totalInput!458) e!965927)))

(declare-fun e!965954 () Bool)

(declare-fun tp!431605 () Bool)

(declare-fun tp!431624 () Bool)

(declare-fun e!965942 () Bool)

(declare-fun array_inv!1657 (array!5132) Bool)

(assert (=> b!1510798 (= e!965954 (and tp!431613 tp!431605 tp!431624 (array_inv!1654 (_keys!1756 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) (array_inv!1657 (_values!1741 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) e!965942))))

(declare-fun b!1510799 () Bool)

(declare-fun e!965949 () Bool)

(declare-fun lt!525292 () MutLongMap!1461)

(assert (=> b!1510799 (= e!965924 (and e!965949 ((_ is LongMap!1461) lt!525292)))))

(assert (=> b!1510799 (= lt!525292 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))

(declare-fun e!965932 () Bool)

(assert (=> b!1510800 (= e!965932 (and e!965922 tp!431609))))

(declare-fun b!1510801 () Bool)

(declare-fun e!965938 () Bool)

(declare-fun valid!1165 (CacheFurthestNullable!260) Bool)

(assert (=> b!1510801 (= e!965938 (valid!1165 (_4!330 lt!525288)))))

(declare-fun b!1510802 () Bool)

(assert (=> b!1510802 (= e!965934 e!965938)))

(declare-fun res!679962 () Bool)

(assert (=> b!1510802 (=> res!679962 e!965938)))

(declare-fun lt!525286 () List!16092)

(assert (=> b!1510802 (= res!679962 (not (isSuffix!297 lt!525286 lt!525271)))))

(declare-fun lt!525283 () List!16092)

(declare-fun ++!4332 (List!16092 List!16092) List!16092)

(assert (=> b!1510802 (isSuffix!297 lt!525286 (++!4332 lt!525283 lt!525286))))

(declare-fun lt!525277 () Unit!25729)

(assert (=> b!1510802 (= lt!525277 (lemmaConcatTwoListThenFSndIsSuffix!275 lt!525283 lt!525286))))

(declare-fun lt!525291 () BalanceConc!10796)

(assert (=> b!1510802 (= lt!525283 (list!6330 lt!525291))))

(assert (=> b!1510802 e!965920))

(declare-fun c!247749 () Bool)

(assert (=> b!1510802 (= c!247749 ((_ is Some!2921) lt!525285))))

(assert (=> b!1510802 (= lt!525295 (lexRec!326 thiss!13241 rules!1640 lt!525291))))

(declare-fun maxPrefixZipperSequence!584 (LexerInterface!2491 List!16094 BalanceConc!10796) Option!2922)

(assert (=> b!1510802 (= lt!525285 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 lt!525291))))

(declare-fun lt!525278 () BalanceConc!10796)

(declare-fun ++!4333 (BalanceConc!10796 BalanceConc!10796) BalanceConc!10796)

(assert (=> b!1510802 (= lt!525291 (++!4333 treated!70 lt!525278))))

(declare-fun lt!525280 () List!16092)

(declare-fun lt!525299 () List!16093)

(declare-datatypes ((tuple2!14866 0))(
  ( (tuple2!14867 (_1!8434 List!16093) (_2!8434 List!16092)) )
))
(declare-fun lexList!742 (LexerInterface!2491 List!16094 List!16092) tuple2!14866)

(assert (=> b!1510802 (= (lexList!742 thiss!13241 rules!1640 lt!525280) (tuple2!14867 lt!525299 Nil!16024))))

(declare-fun lt!525287 () tuple2!14860)

(declare-fun lt!525303 () Unit!25729)

(declare-fun lt!525302 () List!16093)

(declare-fun lemmaLexThenLexPrefix!224 (LexerInterface!2491 List!16094 List!16092 List!16092 List!16093 List!16093 List!16092) Unit!25729)

(assert (=> b!1510802 (= lt!525303 (lemmaLexThenLexPrefix!224 thiss!13241 rules!1640 lt!525280 lt!525286 lt!525299 lt!525302 (list!6330 (_2!8429 lt!525287))))))

(declare-fun append!494 (BalanceConc!10798 Token!5338) BalanceConc!10798)

(assert (=> b!1510802 (= lt!525299 (list!6331 (append!494 acc!392 (_1!8432 (v!22840 (_1!8433 lt!525288))))))))

(declare-fun lt!525276 () List!16093)

(declare-fun ++!4334 (List!16093 List!16093) List!16093)

(assert (=> b!1510802 (= (++!4334 (++!4334 lt!525284 lt!525276) lt!525302) (++!4334 lt!525284 (++!4334 lt!525276 lt!525302)))))

(declare-fun lt!525298 () Unit!25729)

(declare-fun lemmaConcatAssociativity!932 (List!16093 List!16093 List!16093) Unit!25729)

(assert (=> b!1510802 (= lt!525298 (lemmaConcatAssociativity!932 lt!525284 lt!525276 lt!525302))))

(assert (=> b!1510802 (= lt!525302 (list!6331 (_1!8429 lt!525287)))))

(assert (=> b!1510802 (= lt!525276 (Cons!16025 (_1!8432 (v!22840 (_1!8433 lt!525288))) Nil!16025))))

(declare-fun lt!525289 () tuple2!14860)

(assert (=> b!1510802 (= lt!525289 e!965944)))

(declare-fun c!247750 () Bool)

(assert (=> b!1510802 (= c!247750 ((_ is Some!2921) lt!525274))))

(assert (=> b!1510802 (= lt!525274 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!525294 () List!16092)

(assert (=> b!1510802 (= (++!4332 lt!525280 lt!525286) (++!4332 lt!525296 (++!4332 lt!525294 lt!525286)))))

(assert (=> b!1510802 (= lt!525280 (++!4332 lt!525296 lt!525294))))

(declare-fun lt!525279 () Unit!25729)

(declare-fun lemmaConcatAssociativity!933 (List!16092 List!16092 List!16092) Unit!25729)

(assert (=> b!1510802 (= lt!525279 (lemmaConcatAssociativity!933 lt!525296 lt!525294 lt!525286))))

(assert (=> b!1510802 (= lt!525286 (list!6330 (_2!8432 (v!22840 (_1!8433 lt!525288)))))))

(assert (=> b!1510802 (= lt!525294 (list!6330 lt!525278))))

(declare-fun charsOf!1625 (Token!5338) BalanceConc!10796)

(assert (=> b!1510802 (= lt!525278 (charsOf!1625 (_1!8432 (v!22840 (_1!8433 lt!525288)))))))

(assert (=> b!1510802 (= lt!525287 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 (_1!8433 lt!525288)))))))

(declare-fun b!1510803 () Bool)

(declare-fun e!965936 () Bool)

(assert (=> b!1510803 (= e!965936 e!965954)))

(declare-fun e!965929 () Bool)

(assert (=> b!1510804 (= e!965929 (and tp!431611 tp!431607))))

(declare-fun b!1510805 () Bool)

(declare-fun e!965948 () Bool)

(assert (=> b!1510805 (= e!965948 e!965919)))

(declare-fun b!1510806 () Bool)

(declare-fun e!965926 () Bool)

(declare-fun e!965955 () Bool)

(declare-fun lt!525290 () MutLongMap!1462)

(assert (=> b!1510806 (= e!965926 (and e!965955 ((_ is LongMap!1462) lt!525290)))))

(assert (=> b!1510806 (= lt!525290 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))

(declare-fun b!1510807 () Bool)

(assert (=> b!1510807 (= e!965951 e!965932)))

(declare-fun b!1510808 () Bool)

(declare-fun tp!431620 () Bool)

(declare-fun inv!21250 (Conc!5428) Bool)

(assert (=> b!1510808 (= e!965945 (and (inv!21250 (c!247753 acc!392)) tp!431620))))

(declare-fun b!1510809 () Bool)

(declare-fun res!679964 () Bool)

(assert (=> b!1510809 (=> (not res!679964) (not e!965935))))

(declare-fun lt!525301 () tuple2!14860)

(assert (=> b!1510809 (= res!679964 (= (list!6330 (_2!8429 lt!525301)) (list!6330 (_2!8429 lt!525289))))))

(declare-fun b!1510810 () Bool)

(declare-fun res!679959 () Bool)

(assert (=> b!1510810 (=> (not res!679959) (not e!965935))))

(assert (=> b!1510810 (= res!679959 (valid!1165 cacheFurthestNullable!64))))

(declare-fun b!1510811 () Bool)

(assert (=> b!1510811 (= e!965950 e!965935)))

(declare-fun res!679972 () Bool)

(assert (=> b!1510811 (=> (not res!679972) (not e!965935))))

(declare-fun ++!4335 (BalanceConc!10798 BalanceConc!10798) BalanceConc!10798)

(assert (=> b!1510811 (= res!679972 (= (list!6331 (_1!8429 lt!525301)) (list!6331 (++!4335 acc!392 (_1!8429 lt!525289)))))))

(assert (=> b!1510811 (= lt!525289 (lexRec!326 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1510811 (= lt!525301 (lexRec!326 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1510812 () Bool)

(assert (=> b!1510812 (= e!965947 e!965953)))

(declare-fun mapNonEmpty!6923 () Bool)

(declare-fun tp!431616 () Bool)

(declare-fun tp!431610 () Bool)

(assert (=> mapNonEmpty!6923 (= mapRes!6922 (and tp!431616 tp!431610))))

(declare-fun mapKey!6923 () (_ BitVec 32))

(declare-fun mapValue!6921 () List!16090)

(declare-fun mapRest!6922 () (Array (_ BitVec 32) List!16090))

(assert (=> mapNonEmpty!6923 (= (arr!2290 (_values!1740 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) (store mapRest!6922 mapKey!6923 mapValue!6921))))

(declare-fun b!1510813 () Bool)

(declare-fun tp!431602 () Bool)

(assert (=> b!1510813 (= e!965931 (and tp!431602 mapRes!6923))))

(declare-fun condMapEmpty!6921 () Bool)

(declare-fun mapDefault!6922 () List!16089)

(assert (=> b!1510813 (= condMapEmpty!6921 (= (arr!2289 (_values!1739 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16089)) mapDefault!6922)))))

(declare-fun e!965941 () Bool)

(declare-fun b!1510814 () Bool)

(assert (=> b!1510814 (= e!965958 (and e!965941 (inv!21248 (totalInput!2288 cacheFurthestNullable!64)) e!965937))))

(declare-fun b!1510815 () Bool)

(assert (=> b!1510815 (= e!965949 e!965948)))

(declare-fun b!1510816 () Bool)

(assert (=> b!1510816 (= e!965920 (= lt!525295 (tuple2!14861 (BalanceConc!10799 Empty!5428) lt!525291)))))

(declare-fun b!1510817 () Bool)

(declare-fun res!679961 () Bool)

(assert (=> b!1510817 (=> (not res!679961) (not e!965935))))

(declare-fun valid!1166 (CacheDown!840) Bool)

(assert (=> b!1510817 (= res!679961 (valid!1166 cacheDown!629))))

(declare-fun b!1510818 () Bool)

(assert (=> b!1510818 (= e!965955 e!965936)))

(declare-fun b!1510819 () Bool)

(declare-fun tp!431631 () Bool)

(assert (=> b!1510819 (= e!965942 (and tp!431631 mapRes!6921))))

(declare-fun condMapEmpty!6923 () Bool)

(declare-fun mapDefault!6923 () List!16095)

(assert (=> b!1510819 (= condMapEmpty!6923 (= (arr!2291 (_values!1741 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16095)) mapDefault!6923)))))

(declare-fun b!1510820 () Bool)

(declare-fun tp!431628 () Bool)

(declare-fun inv!21242 (String!18902) Bool)

(declare-fun inv!21251 (TokenValueInjection!5516) Bool)

(assert (=> b!1510820 (= e!965933 (and tp!431628 (inv!21242 (tag!3102 (h!21427 rules!1640))) (inv!21251 (transformation!2838 (h!21427 rules!1640))) e!965929))))

(assert (=> b!1510821 (= e!965941 (and e!965926 tp!431621))))

(declare-fun b!1510822 () Bool)

(assert (=> b!1510822 (= e!965917 e!965940)))

(declare-fun res!679969 () Bool)

(assert (=> b!1510822 (=> (not res!679969) (not e!965940))))

(assert (=> b!1510822 (= res!679969 (= lt!525271 lt!525273))))

(assert (=> b!1510822 (= lt!525273 (++!4332 lt!525296 lt!525272))))

(assert (=> b!1510822 (= lt!525271 (list!6330 totalInput!458))))

(assert (=> b!1510822 (= lt!525272 (list!6330 input!1102))))

(assert (=> b!1510822 (= lt!525296 (list!6330 treated!70))))

(declare-fun mapIsEmpty!6923 () Bool)

(assert (=> mapIsEmpty!6923 mapRes!6923))

(assert (= (and start!140960 res!679966) b!1510785))

(assert (= (and b!1510785 res!679960) b!1510783))

(assert (= (and b!1510783 res!679968) b!1510822))

(assert (= (and b!1510822 res!679969) b!1510778))

(assert (= (and b!1510778 res!679970) b!1510777))

(assert (= (and b!1510777 res!679971) b!1510811))

(assert (= (and b!1510811 res!679972) b!1510809))

(assert (= (and b!1510809 res!679964) b!1510781))

(assert (= (and b!1510781 res!679965) b!1510817))

(assert (= (and b!1510817 res!679961) b!1510810))

(assert (= (and b!1510810 res!679959) b!1510786))

(assert (= (and b!1510786 res!679967) b!1510792))

(assert (= (and b!1510792 (not res!679958)) b!1510795))

(assert (= (and b!1510795 (not res!679963)) b!1510802))

(assert (= (and b!1510802 c!247750) b!1510779))

(assert (= (and b!1510802 (not c!247750)) b!1510797))

(assert (= (and b!1510802 c!247749) b!1510782))

(assert (= (and b!1510802 (not c!247749)) b!1510816))

(assert (= (and b!1510802 (not res!679962)) b!1510801))

(assert (= start!140960 b!1510808))

(assert (= (and b!1510784 condMapEmpty!6922) mapIsEmpty!6921))

(assert (= (and b!1510784 (not condMapEmpty!6922)) mapNonEmpty!6923))

(assert (= b!1510776 b!1510784))

(assert (= b!1510805 b!1510776))

(assert (= b!1510815 b!1510805))

(assert (= (and b!1510799 ((_ is LongMap!1461) (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))) b!1510815))

(assert (= b!1510793 b!1510799))

(assert (= (and b!1510812 ((_ is HashMap!1405) (cache!1786 cacheUp!616))) b!1510793))

(assert (= start!140960 b!1510812))

(assert (= (and b!1510813 condMapEmpty!6921) mapIsEmpty!6923))

(assert (= (and b!1510813 (not condMapEmpty!6921)) mapNonEmpty!6921))

(assert (= b!1510794 b!1510813))

(assert (= b!1510790 b!1510794))

(assert (= b!1510788 b!1510790))

(assert (= (and b!1510775 ((_ is LongMap!1460) (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))) b!1510788))

(assert (= b!1510800 b!1510775))

(assert (= (and b!1510807 ((_ is HashMap!1404) (cache!1785 cacheDown!629))) b!1510800))

(assert (= start!140960 b!1510807))

(assert (= start!140960 b!1510791))

(assert (= start!140960 b!1510787))

(assert (= b!1510820 b!1510804))

(assert (= b!1510780 b!1510820))

(assert (= (and start!140960 ((_ is Cons!16026) rules!1640)) b!1510780))

(assert (= (and b!1510819 condMapEmpty!6923) mapIsEmpty!6922))

(assert (= (and b!1510819 (not condMapEmpty!6923)) mapNonEmpty!6922))

(assert (= b!1510798 b!1510819))

(assert (= b!1510803 b!1510798))

(assert (= b!1510818 b!1510803))

(assert (= (and b!1510806 ((_ is LongMap!1462) (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))) b!1510818))

(assert (= b!1510821 b!1510806))

(assert (= (and b!1510814 ((_ is HashMap!1406) (cache!1787 cacheFurthestNullable!64))) b!1510821))

(assert (= b!1510814 b!1510796))

(assert (= start!140960 b!1510814))

(assert (= start!140960 b!1510789))

(declare-fun m!1774314 () Bool)

(assert (=> b!1510776 m!1774314))

(declare-fun m!1774316 () Bool)

(assert (=> b!1510776 m!1774316))

(declare-fun m!1774318 () Bool)

(assert (=> b!1510785 m!1774318))

(declare-fun m!1774320 () Bool)

(assert (=> b!1510777 m!1774320))

(assert (=> b!1510777 m!1774320))

(declare-fun m!1774322 () Bool)

(assert (=> b!1510777 m!1774322))

(declare-fun m!1774324 () Bool)

(assert (=> b!1510779 m!1774324))

(declare-fun m!1774326 () Bool)

(assert (=> b!1510779 m!1774326))

(declare-fun m!1774328 () Bool)

(assert (=> b!1510811 m!1774328))

(declare-fun m!1774330 () Bool)

(assert (=> b!1510811 m!1774330))

(declare-fun m!1774332 () Bool)

(assert (=> b!1510811 m!1774332))

(declare-fun m!1774334 () Bool)

(assert (=> b!1510811 m!1774334))

(declare-fun m!1774336 () Bool)

(assert (=> b!1510811 m!1774336))

(assert (=> b!1510811 m!1774328))

(declare-fun m!1774338 () Bool)

(assert (=> b!1510795 m!1774338))

(declare-fun m!1774340 () Bool)

(assert (=> b!1510796 m!1774340))

(declare-fun m!1774342 () Bool)

(assert (=> b!1510792 m!1774342))

(declare-fun m!1774344 () Bool)

(assert (=> b!1510792 m!1774344))

(declare-fun m!1774346 () Bool)

(assert (=> b!1510792 m!1774346))

(declare-fun m!1774348 () Bool)

(assert (=> b!1510783 m!1774348))

(declare-fun m!1774350 () Bool)

(assert (=> b!1510801 m!1774350))

(declare-fun m!1774352 () Bool)

(assert (=> b!1510802 m!1774352))

(declare-fun m!1774354 () Bool)

(assert (=> b!1510802 m!1774354))

(declare-fun m!1774356 () Bool)

(assert (=> b!1510802 m!1774356))

(declare-fun m!1774358 () Bool)

(assert (=> b!1510802 m!1774358))

(declare-fun m!1774360 () Bool)

(assert (=> b!1510802 m!1774360))

(declare-fun m!1774362 () Bool)

(assert (=> b!1510802 m!1774362))

(declare-fun m!1774364 () Bool)

(assert (=> b!1510802 m!1774364))

(declare-fun m!1774366 () Bool)

(assert (=> b!1510802 m!1774366))

(declare-fun m!1774368 () Bool)

(assert (=> b!1510802 m!1774368))

(declare-fun m!1774370 () Bool)

(assert (=> b!1510802 m!1774370))

(declare-fun m!1774372 () Bool)

(assert (=> b!1510802 m!1774372))

(declare-fun m!1774374 () Bool)

(assert (=> b!1510802 m!1774374))

(declare-fun m!1774376 () Bool)

(assert (=> b!1510802 m!1774376))

(declare-fun m!1774378 () Bool)

(assert (=> b!1510802 m!1774378))

(declare-fun m!1774380 () Bool)

(assert (=> b!1510802 m!1774380))

(assert (=> b!1510802 m!1774356))

(declare-fun m!1774382 () Bool)

(assert (=> b!1510802 m!1774382))

(declare-fun m!1774384 () Bool)

(assert (=> b!1510802 m!1774384))

(declare-fun m!1774386 () Bool)

(assert (=> b!1510802 m!1774386))

(assert (=> b!1510802 m!1774374))

(declare-fun m!1774388 () Bool)

(assert (=> b!1510802 m!1774388))

(declare-fun m!1774390 () Bool)

(assert (=> b!1510802 m!1774390))

(declare-fun m!1774392 () Bool)

(assert (=> b!1510802 m!1774392))

(declare-fun m!1774394 () Bool)

(assert (=> b!1510802 m!1774394))

(declare-fun m!1774396 () Bool)

(assert (=> b!1510802 m!1774396))

(assert (=> b!1510802 m!1774390))

(declare-fun m!1774398 () Bool)

(assert (=> b!1510802 m!1774398))

(declare-fun m!1774400 () Bool)

(assert (=> b!1510802 m!1774400))

(assert (=> b!1510802 m!1774352))

(declare-fun m!1774402 () Bool)

(assert (=> b!1510802 m!1774402))

(assert (=> b!1510802 m!1774384))

(declare-fun m!1774404 () Bool)

(assert (=> b!1510802 m!1774404))

(declare-fun m!1774406 () Bool)

(assert (=> b!1510802 m!1774406))

(assert (=> b!1510802 m!1774382))

(declare-fun m!1774408 () Bool)

(assert (=> b!1510802 m!1774408))

(declare-fun m!1774410 () Bool)

(assert (=> b!1510820 m!1774410))

(declare-fun m!1774412 () Bool)

(assert (=> b!1510820 m!1774412))

(declare-fun m!1774414 () Bool)

(assert (=> mapNonEmpty!6923 m!1774414))

(declare-fun m!1774416 () Bool)

(assert (=> mapNonEmpty!6922 m!1774416))

(declare-fun m!1774418 () Bool)

(assert (=> b!1510781 m!1774418))

(declare-fun m!1774420 () Bool)

(assert (=> b!1510814 m!1774420))

(declare-fun m!1774422 () Bool)

(assert (=> b!1510789 m!1774422))

(declare-fun m!1774424 () Bool)

(assert (=> b!1510817 m!1774424))

(declare-fun m!1774426 () Bool)

(assert (=> b!1510791 m!1774426))

(declare-fun m!1774428 () Bool)

(assert (=> mapNonEmpty!6921 m!1774428))

(declare-fun m!1774430 () Bool)

(assert (=> b!1510822 m!1774430))

(declare-fun m!1774432 () Bool)

(assert (=> b!1510822 m!1774432))

(declare-fun m!1774434 () Bool)

(assert (=> b!1510822 m!1774434))

(declare-fun m!1774436 () Bool)

(assert (=> b!1510822 m!1774436))

(declare-fun m!1774438 () Bool)

(assert (=> b!1510778 m!1774438))

(declare-fun m!1774440 () Bool)

(assert (=> b!1510778 m!1774440))

(declare-fun m!1774442 () Bool)

(assert (=> b!1510778 m!1774442))

(declare-fun m!1774444 () Bool)

(assert (=> start!140960 m!1774444))

(declare-fun m!1774446 () Bool)

(assert (=> start!140960 m!1774446))

(declare-fun m!1774448 () Bool)

(assert (=> start!140960 m!1774448))

(declare-fun m!1774450 () Bool)

(assert (=> start!140960 m!1774450))

(declare-fun m!1774452 () Bool)

(assert (=> start!140960 m!1774452))

(declare-fun m!1774454 () Bool)

(assert (=> start!140960 m!1774454))

(declare-fun m!1774456 () Bool)

(assert (=> start!140960 m!1774456))

(declare-fun m!1774458 () Bool)

(assert (=> b!1510809 m!1774458))

(declare-fun m!1774460 () Bool)

(assert (=> b!1510809 m!1774460))

(declare-fun m!1774462 () Bool)

(assert (=> b!1510794 m!1774462))

(declare-fun m!1774464 () Bool)

(assert (=> b!1510794 m!1774464))

(declare-fun m!1774466 () Bool)

(assert (=> b!1510810 m!1774466))

(declare-fun m!1774468 () Bool)

(assert (=> b!1510787 m!1774468))

(declare-fun m!1774470 () Bool)

(assert (=> b!1510798 m!1774470))

(declare-fun m!1774472 () Bool)

(assert (=> b!1510798 m!1774472))

(declare-fun m!1774474 () Bool)

(assert (=> b!1510782 m!1774474))

(declare-fun m!1774476 () Bool)

(assert (=> b!1510782 m!1774476))

(declare-fun m!1774478 () Bool)

(assert (=> b!1510808 m!1774478))

(check-sat (not b!1510798) (not b!1510791) b_and!105163 (not b!1510789) (not b!1510776) (not b!1510787) (not b!1510784) (not mapNonEmpty!6922) (not b!1510811) (not b!1510778) (not b!1510820) (not mapNonEmpty!6921) (not b_next!39857) (not b_next!39847) (not b!1510814) b_and!105157 (not b!1510813) (not b!1510810) (not b!1510781) (not b!1510808) (not b_next!39851) b_and!105159 (not b!1510822) (not b!1510819) (not b!1510777) b_and!105165 (not b!1510809) b_and!105161 (not mapNonEmpty!6923) (not b!1510782) (not b!1510780) (not b!1510794) (not b!1510801) (not b_next!39845) (not b!1510796) (not b_next!39855) (not b!1510795) (not b!1510792) b_and!105153 b_and!105155 (not b_next!39849) (not b!1510779) (not b!1510783) (not b!1510802) (not b!1510817) (not b_next!39843) (not b!1510785) (not start!140960) b_and!105151 (not b_next!39853))
(check-sat b_and!105163 (not b_next!39845) (not b_next!39855) (not b_next!39843) (not b_next!39857) (not b_next!39847) b_and!105157 (not b_next!39851) b_and!105159 b_and!105165 b_and!105161 b_and!105153 b_and!105155 (not b_next!39849) b_and!105151 (not b_next!39853))
(get-model)

(declare-fun d!447468 () Bool)

(declare-fun e!965961 () Bool)

(assert (=> d!447468 e!965961))

(declare-fun res!679977 () Bool)

(assert (=> d!447468 (=> (not res!679977) (not e!965961))))

(declare-fun isBalanced!1603 (Conc!5428) Bool)

(declare-fun prepend!460 (Conc!5428 Token!5338) Conc!5428)

(assert (=> d!447468 (= res!679977 (isBalanced!1603 (prepend!460 (c!247753 (_1!8429 lt!525300)) (_1!8432 (v!22840 lt!525285)))))))

(declare-fun lt!525306 () BalanceConc!10798)

(assert (=> d!447468 (= lt!525306 (BalanceConc!10799 (prepend!460 (c!247753 (_1!8429 lt!525300)) (_1!8432 (v!22840 lt!525285)))))))

(assert (=> d!447468 (= (prepend!459 (_1!8429 lt!525300) (_1!8432 (v!22840 lt!525285))) lt!525306)))

(declare-fun b!1510825 () Bool)

(assert (=> b!1510825 (= e!965961 (= (list!6331 lt!525306) (Cons!16025 (_1!8432 (v!22840 lt!525285)) (list!6331 (_1!8429 lt!525300)))))))

(assert (= (and d!447468 res!679977) b!1510825))

(declare-fun m!1774480 () Bool)

(assert (=> d!447468 m!1774480))

(assert (=> d!447468 m!1774480))

(declare-fun m!1774482 () Bool)

(assert (=> d!447468 m!1774482))

(declare-fun m!1774484 () Bool)

(assert (=> b!1510825 m!1774484))

(declare-fun m!1774486 () Bool)

(assert (=> b!1510825 m!1774486))

(assert (=> b!1510782 d!447468))

(declare-fun d!447470 () Bool)

(declare-fun e!965971 () Bool)

(assert (=> d!447470 e!965971))

(declare-fun res!679985 () Bool)

(assert (=> d!447470 (=> (not res!679985) (not e!965971))))

(declare-fun e!965970 () Bool)

(assert (=> d!447470 (= res!679985 e!965970)))

(declare-fun c!247760 () Bool)

(declare-fun lt!525313 () tuple2!14860)

(declare-fun size!12957 (BalanceConc!10798) Int)

(assert (=> d!447470 (= c!247760 (> (size!12957 (_1!8429 lt!525313)) 0))))

(declare-fun e!965972 () tuple2!14860)

(assert (=> d!447470 (= lt!525313 e!965972)))

(declare-fun c!247759 () Bool)

(declare-fun lt!525314 () Option!2922)

(assert (=> d!447470 (= c!247759 ((_ is Some!2921) lt!525314))))

(assert (=> d!447470 (= lt!525314 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525285))))))

(assert (=> d!447470 (= (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525285))) lt!525313)))

(declare-fun b!1510840 () Bool)

(declare-fun res!679986 () Bool)

(assert (=> b!1510840 (=> (not res!679986) (not e!965971))))

(assert (=> b!1510840 (= res!679986 (= (list!6331 (_1!8429 lt!525313)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 (_2!8432 (v!22840 lt!525285)))))))))

(declare-fun b!1510841 () Bool)

(assert (=> b!1510841 (= e!965971 (= (list!6330 (_2!8429 lt!525313)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 (_2!8432 (v!22840 lt!525285)))))))))

(declare-fun b!1510842 () Bool)

(assert (=> b!1510842 (= e!965970 (= (list!6330 (_2!8429 lt!525313)) (list!6330 (_2!8432 (v!22840 lt!525285)))))))

(declare-fun b!1510843 () Bool)

(assert (=> b!1510843 (= e!965972 (tuple2!14861 (BalanceConc!10799 Empty!5428) (_2!8432 (v!22840 lt!525285))))))

(declare-fun b!1510844 () Bool)

(declare-fun e!965973 () Bool)

(assert (=> b!1510844 (= e!965970 e!965973)))

(declare-fun res!679984 () Bool)

(declare-fun size!12958 (BalanceConc!10796) Int)

(assert (=> b!1510844 (= res!679984 (< (size!12958 (_2!8429 lt!525313)) (size!12958 (_2!8432 (v!22840 lt!525285)))))))

(assert (=> b!1510844 (=> (not res!679984) (not e!965973))))

(declare-fun b!1510845 () Bool)

(declare-fun isEmpty!9917 (BalanceConc!10798) Bool)

(assert (=> b!1510845 (= e!965973 (not (isEmpty!9917 (_1!8429 lt!525313))))))

(declare-fun b!1510846 () Bool)

(declare-fun lt!525315 () tuple2!14860)

(assert (=> b!1510846 (= e!965972 (tuple2!14861 (prepend!459 (_1!8429 lt!525315) (_1!8432 (v!22840 lt!525314))) (_2!8429 lt!525315)))))

(assert (=> b!1510846 (= lt!525315 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525314))))))

(assert (= (and d!447470 c!247759) b!1510846))

(assert (= (and d!447470 (not c!247759)) b!1510843))

(assert (= (and d!447470 c!247760) b!1510844))

(assert (= (and d!447470 (not c!247760)) b!1510842))

(assert (= (and b!1510844 res!679984) b!1510845))

(assert (= (and d!447470 res!679985) b!1510840))

(assert (= (and b!1510840 res!679986) b!1510841))

(declare-fun m!1774488 () Bool)

(assert (=> d!447470 m!1774488))

(declare-fun m!1774490 () Bool)

(assert (=> d!447470 m!1774490))

(declare-fun m!1774492 () Bool)

(assert (=> b!1510842 m!1774492))

(declare-fun m!1774494 () Bool)

(assert (=> b!1510842 m!1774494))

(declare-fun m!1774496 () Bool)

(assert (=> b!1510845 m!1774496))

(assert (=> b!1510841 m!1774492))

(assert (=> b!1510841 m!1774494))

(assert (=> b!1510841 m!1774494))

(declare-fun m!1774498 () Bool)

(assert (=> b!1510841 m!1774498))

(declare-fun m!1774500 () Bool)

(assert (=> b!1510840 m!1774500))

(assert (=> b!1510840 m!1774494))

(assert (=> b!1510840 m!1774494))

(assert (=> b!1510840 m!1774498))

(declare-fun m!1774502 () Bool)

(assert (=> b!1510846 m!1774502))

(declare-fun m!1774504 () Bool)

(assert (=> b!1510846 m!1774504))

(declare-fun m!1774506 () Bool)

(assert (=> b!1510844 m!1774506))

(declare-fun m!1774508 () Bool)

(assert (=> b!1510844 m!1774508))

(assert (=> b!1510782 d!447470))

(declare-fun d!447472 () Bool)

(declare-fun validCacheMapFurthestNullable!45 (MutableMap!1406 BalanceConc!10796) Bool)

(assert (=> d!447472 (= (valid!1165 (_4!330 lt!525288)) (validCacheMapFurthestNullable!45 (cache!1787 (_4!330 lt!525288)) (totalInput!2288 (_4!330 lt!525288))))))

(declare-fun bs!364337 () Bool)

(assert (= bs!364337 d!447472))

(declare-fun m!1774510 () Bool)

(assert (=> bs!364337 m!1774510))

(assert (=> b!1510801 d!447472))

(declare-fun b!1510857 () Bool)

(declare-fun res!679992 () Bool)

(declare-fun e!965979 () Bool)

(assert (=> b!1510857 (=> (not res!679992) (not e!965979))))

(declare-fun lt!525318 () List!16093)

(declare-fun size!12959 (List!16093) Int)

(assert (=> b!1510857 (= res!679992 (= (size!12959 lt!525318) (+ (size!12959 lt!525284) (size!12959 (++!4334 lt!525276 lt!525302)))))))

(declare-fun e!965978 () List!16093)

(declare-fun b!1510856 () Bool)

(assert (=> b!1510856 (= e!965978 (Cons!16025 (h!21426 lt!525284) (++!4334 (t!139359 lt!525284) (++!4334 lt!525276 lt!525302))))))

(declare-fun d!447474 () Bool)

(assert (=> d!447474 e!965979))

(declare-fun res!679991 () Bool)

(assert (=> d!447474 (=> (not res!679991) (not e!965979))))

(declare-fun content!2308 (List!16093) (InoxSet Token!5338))

(assert (=> d!447474 (= res!679991 (= (content!2308 lt!525318) ((_ map or) (content!2308 lt!525284) (content!2308 (++!4334 lt!525276 lt!525302)))))))

(assert (=> d!447474 (= lt!525318 e!965978)))

(declare-fun c!247763 () Bool)

(assert (=> d!447474 (= c!247763 ((_ is Nil!16025) lt!525284))))

(assert (=> d!447474 (= (++!4334 lt!525284 (++!4334 lt!525276 lt!525302)) lt!525318)))

(declare-fun b!1510858 () Bool)

(assert (=> b!1510858 (= e!965979 (or (not (= (++!4334 lt!525276 lt!525302) Nil!16025)) (= lt!525318 lt!525284)))))

(declare-fun b!1510855 () Bool)

(assert (=> b!1510855 (= e!965978 (++!4334 lt!525276 lt!525302))))

(assert (= (and d!447474 c!247763) b!1510855))

(assert (= (and d!447474 (not c!247763)) b!1510856))

(assert (= (and d!447474 res!679991) b!1510857))

(assert (= (and b!1510857 res!679992) b!1510858))

(declare-fun m!1774512 () Bool)

(assert (=> b!1510857 m!1774512))

(declare-fun m!1774514 () Bool)

(assert (=> b!1510857 m!1774514))

(assert (=> b!1510857 m!1774356))

(declare-fun m!1774516 () Bool)

(assert (=> b!1510857 m!1774516))

(assert (=> b!1510856 m!1774356))

(declare-fun m!1774518 () Bool)

(assert (=> b!1510856 m!1774518))

(declare-fun m!1774520 () Bool)

(assert (=> d!447474 m!1774520))

(declare-fun m!1774522 () Bool)

(assert (=> d!447474 m!1774522))

(assert (=> d!447474 m!1774356))

(declare-fun m!1774524 () Bool)

(assert (=> d!447474 m!1774524))

(assert (=> b!1510802 d!447474))

(declare-fun d!447476 () Bool)

(declare-fun list!6332 (Conc!5428) List!16093)

(assert (=> d!447476 (= (list!6331 (_1!8429 lt!525287)) (list!6332 (c!247753 (_1!8429 lt!525287))))))

(declare-fun bs!364338 () Bool)

(assert (= bs!364338 d!447476))

(declare-fun m!1774526 () Bool)

(assert (=> bs!364338 m!1774526))

(assert (=> b!1510802 d!447476))

(declare-fun d!447478 () Bool)

(assert (=> d!447478 (= (list!6331 (append!494 acc!392 (_1!8432 (v!22840 (_1!8433 lt!525288))))) (list!6332 (c!247753 (append!494 acc!392 (_1!8432 (v!22840 (_1!8433 lt!525288)))))))))

(declare-fun bs!364339 () Bool)

(assert (= bs!364339 d!447478))

(declare-fun m!1774528 () Bool)

(assert (=> bs!364339 m!1774528))

(assert (=> b!1510802 d!447478))

(declare-fun d!447480 () Bool)

(assert (=> d!447480 (isSuffix!297 lt!525286 (++!4332 lt!525283 lt!525286))))

(declare-fun lt!525321 () Unit!25729)

(declare-fun choose!9150 (List!16092 List!16092) Unit!25729)

(assert (=> d!447480 (= lt!525321 (choose!9150 lt!525283 lt!525286))))

(assert (=> d!447480 (= (lemmaConcatTwoListThenFSndIsSuffix!275 lt!525283 lt!525286) lt!525321)))

(declare-fun bs!364340 () Bool)

(assert (= bs!364340 d!447480))

(assert (=> bs!364340 m!1774390))

(assert (=> bs!364340 m!1774390))

(assert (=> bs!364340 m!1774398))

(declare-fun m!1774530 () Bool)

(assert (=> bs!364340 m!1774530))

(assert (=> b!1510802 d!447480))

(declare-fun d!447482 () Bool)

(declare-fun list!6333 (Conc!5427) List!16092)

(assert (=> d!447482 (= (list!6330 lt!525278) (list!6333 (c!247752 lt!525278)))))

(declare-fun bs!364341 () Bool)

(assert (= bs!364341 d!447482))

(declare-fun m!1774532 () Bool)

(assert (=> bs!364341 m!1774532))

(assert (=> b!1510802 d!447482))

(declare-fun d!447484 () Bool)

(assert (=> d!447484 (= (list!6330 lt!525291) (list!6333 (c!247752 lt!525291)))))

(declare-fun bs!364342 () Bool)

(assert (= bs!364342 d!447484))

(declare-fun m!1774534 () Bool)

(assert (=> bs!364342 m!1774534))

(assert (=> b!1510802 d!447484))

(declare-fun d!447486 () Bool)

(declare-fun e!965981 () Bool)

(assert (=> d!447486 e!965981))

(declare-fun res!679994 () Bool)

(assert (=> d!447486 (=> (not res!679994) (not e!965981))))

(declare-fun e!965980 () Bool)

(assert (=> d!447486 (= res!679994 e!965980)))

(declare-fun c!247765 () Bool)

(declare-fun lt!525322 () tuple2!14860)

(assert (=> d!447486 (= c!247765 (> (size!12957 (_1!8429 lt!525322)) 0))))

(declare-fun e!965982 () tuple2!14860)

(assert (=> d!447486 (= lt!525322 e!965982)))

(declare-fun c!247764 () Bool)

(declare-fun lt!525323 () Option!2922)

(assert (=> d!447486 (= c!247764 ((_ is Some!2921) lt!525323))))

(assert (=> d!447486 (= lt!525323 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 lt!525291))))

(assert (=> d!447486 (= (lexRec!326 thiss!13241 rules!1640 lt!525291) lt!525322)))

(declare-fun b!1510859 () Bool)

(declare-fun res!679995 () Bool)

(assert (=> b!1510859 (=> (not res!679995) (not e!965981))))

(assert (=> b!1510859 (= res!679995 (= (list!6331 (_1!8429 lt!525322)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 lt!525291)))))))

(declare-fun b!1510860 () Bool)

(assert (=> b!1510860 (= e!965981 (= (list!6330 (_2!8429 lt!525322)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 lt!525291)))))))

(declare-fun b!1510861 () Bool)

(assert (=> b!1510861 (= e!965980 (= (list!6330 (_2!8429 lt!525322)) (list!6330 lt!525291)))))

(declare-fun b!1510862 () Bool)

(assert (=> b!1510862 (= e!965982 (tuple2!14861 (BalanceConc!10799 Empty!5428) lt!525291))))

(declare-fun b!1510863 () Bool)

(declare-fun e!965983 () Bool)

(assert (=> b!1510863 (= e!965980 e!965983)))

(declare-fun res!679993 () Bool)

(assert (=> b!1510863 (= res!679993 (< (size!12958 (_2!8429 lt!525322)) (size!12958 lt!525291)))))

(assert (=> b!1510863 (=> (not res!679993) (not e!965983))))

(declare-fun b!1510864 () Bool)

(assert (=> b!1510864 (= e!965983 (not (isEmpty!9917 (_1!8429 lt!525322))))))

(declare-fun b!1510865 () Bool)

(declare-fun lt!525324 () tuple2!14860)

(assert (=> b!1510865 (= e!965982 (tuple2!14861 (prepend!459 (_1!8429 lt!525324) (_1!8432 (v!22840 lt!525323))) (_2!8429 lt!525324)))))

(assert (=> b!1510865 (= lt!525324 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525323))))))

(assert (= (and d!447486 c!247764) b!1510865))

(assert (= (and d!447486 (not c!247764)) b!1510862))

(assert (= (and d!447486 c!247765) b!1510863))

(assert (= (and d!447486 (not c!247765)) b!1510861))

(assert (= (and b!1510863 res!679993) b!1510864))

(assert (= (and d!447486 res!679994) b!1510859))

(assert (= (and b!1510859 res!679995) b!1510860))

(declare-fun m!1774536 () Bool)

(assert (=> d!447486 m!1774536))

(assert (=> d!447486 m!1774360))

(declare-fun m!1774538 () Bool)

(assert (=> b!1510861 m!1774538))

(assert (=> b!1510861 m!1774396))

(declare-fun m!1774540 () Bool)

(assert (=> b!1510864 m!1774540))

(assert (=> b!1510860 m!1774538))

(assert (=> b!1510860 m!1774396))

(assert (=> b!1510860 m!1774396))

(declare-fun m!1774542 () Bool)

(assert (=> b!1510860 m!1774542))

(declare-fun m!1774544 () Bool)

(assert (=> b!1510859 m!1774544))

(assert (=> b!1510859 m!1774396))

(assert (=> b!1510859 m!1774396))

(assert (=> b!1510859 m!1774542))

(declare-fun m!1774546 () Bool)

(assert (=> b!1510865 m!1774546))

(declare-fun m!1774548 () Bool)

(assert (=> b!1510865 m!1774548))

(declare-fun m!1774550 () Bool)

(assert (=> b!1510863 m!1774550))

(declare-fun m!1774552 () Bool)

(assert (=> b!1510863 m!1774552))

(assert (=> b!1510802 d!447486))

(declare-fun b!1510868 () Bool)

(declare-fun res!679997 () Bool)

(declare-fun e!965985 () Bool)

(assert (=> b!1510868 (=> (not res!679997) (not e!965985))))

(declare-fun lt!525325 () List!16093)

(assert (=> b!1510868 (= res!679997 (= (size!12959 lt!525325) (+ (size!12959 (++!4334 lt!525284 lt!525276)) (size!12959 lt!525302))))))

(declare-fun b!1510867 () Bool)

(declare-fun e!965984 () List!16093)

(assert (=> b!1510867 (= e!965984 (Cons!16025 (h!21426 (++!4334 lt!525284 lt!525276)) (++!4334 (t!139359 (++!4334 lt!525284 lt!525276)) lt!525302)))))

(declare-fun d!447488 () Bool)

(assert (=> d!447488 e!965985))

(declare-fun res!679996 () Bool)

(assert (=> d!447488 (=> (not res!679996) (not e!965985))))

(assert (=> d!447488 (= res!679996 (= (content!2308 lt!525325) ((_ map or) (content!2308 (++!4334 lt!525284 lt!525276)) (content!2308 lt!525302))))))

(assert (=> d!447488 (= lt!525325 e!965984)))

(declare-fun c!247766 () Bool)

(assert (=> d!447488 (= c!247766 ((_ is Nil!16025) (++!4334 lt!525284 lt!525276)))))

(assert (=> d!447488 (= (++!4334 (++!4334 lt!525284 lt!525276) lt!525302) lt!525325)))

(declare-fun b!1510869 () Bool)

(assert (=> b!1510869 (= e!965985 (or (not (= lt!525302 Nil!16025)) (= lt!525325 (++!4334 lt!525284 lt!525276))))))

(declare-fun b!1510866 () Bool)

(assert (=> b!1510866 (= e!965984 lt!525302)))

(assert (= (and d!447488 c!247766) b!1510866))

(assert (= (and d!447488 (not c!247766)) b!1510867))

(assert (= (and d!447488 res!679996) b!1510868))

(assert (= (and b!1510868 res!679997) b!1510869))

(declare-fun m!1774554 () Bool)

(assert (=> b!1510868 m!1774554))

(assert (=> b!1510868 m!1774374))

(declare-fun m!1774556 () Bool)

(assert (=> b!1510868 m!1774556))

(declare-fun m!1774558 () Bool)

(assert (=> b!1510868 m!1774558))

(declare-fun m!1774560 () Bool)

(assert (=> b!1510867 m!1774560))

(declare-fun m!1774562 () Bool)

(assert (=> d!447488 m!1774562))

(assert (=> d!447488 m!1774374))

(declare-fun m!1774564 () Bool)

(assert (=> d!447488 m!1774564))

(declare-fun m!1774566 () Bool)

(assert (=> d!447488 m!1774566))

(assert (=> b!1510802 d!447488))

(declare-fun b!1510880 () Bool)

(declare-fun res!680009 () Bool)

(declare-fun e!965988 () Bool)

(assert (=> b!1510880 (=> (not res!680009) (not e!965988))))

(declare-fun height!805 (Conc!5427) Int)

(declare-fun ++!4336 (Conc!5427 Conc!5427) Conc!5427)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1510880 (= res!680009 (>= (height!805 (++!4336 (c!247752 treated!70) (c!247752 lt!525278))) (max!0 (height!805 (c!247752 treated!70)) (height!805 (c!247752 lt!525278)))))))

(declare-fun b!1510879 () Bool)

(declare-fun res!680006 () Bool)

(assert (=> b!1510879 (=> (not res!680006) (not e!965988))))

(assert (=> b!1510879 (= res!680006 (<= (height!805 (++!4336 (c!247752 treated!70) (c!247752 lt!525278))) (+ (max!0 (height!805 (c!247752 treated!70)) (height!805 (c!247752 lt!525278))) 1)))))

(declare-fun d!447490 () Bool)

(assert (=> d!447490 e!965988))

(declare-fun res!680007 () Bool)

(assert (=> d!447490 (=> (not res!680007) (not e!965988))))

(declare-fun appendAssocInst!363 (Conc!5427 Conc!5427) Bool)

(assert (=> d!447490 (= res!680007 (appendAssocInst!363 (c!247752 treated!70) (c!247752 lt!525278)))))

(declare-fun lt!525328 () BalanceConc!10796)

(assert (=> d!447490 (= lt!525328 (BalanceConc!10797 (++!4336 (c!247752 treated!70) (c!247752 lt!525278))))))

(assert (=> d!447490 (= (++!4333 treated!70 lt!525278) lt!525328)))

(declare-fun b!1510881 () Bool)

(assert (=> b!1510881 (= e!965988 (= (list!6330 lt!525328) (++!4332 (list!6330 treated!70) (list!6330 lt!525278))))))

(declare-fun b!1510878 () Bool)

(declare-fun res!680008 () Bool)

(assert (=> b!1510878 (=> (not res!680008) (not e!965988))))

(declare-fun isBalanced!1604 (Conc!5427) Bool)

(assert (=> b!1510878 (= res!680008 (isBalanced!1604 (++!4336 (c!247752 treated!70) (c!247752 lt!525278))))))

(assert (= (and d!447490 res!680007) b!1510878))

(assert (= (and b!1510878 res!680008) b!1510879))

(assert (= (and b!1510879 res!680006) b!1510880))

(assert (= (and b!1510880 res!680009) b!1510881))

(declare-fun m!1774568 () Bool)

(assert (=> b!1510878 m!1774568))

(assert (=> b!1510878 m!1774568))

(declare-fun m!1774570 () Bool)

(assert (=> b!1510878 m!1774570))

(declare-fun m!1774572 () Bool)

(assert (=> d!447490 m!1774572))

(assert (=> d!447490 m!1774568))

(assert (=> b!1510880 m!1774568))

(declare-fun m!1774574 () Bool)

(assert (=> b!1510880 m!1774574))

(declare-fun m!1774576 () Bool)

(assert (=> b!1510880 m!1774576))

(declare-fun m!1774578 () Bool)

(assert (=> b!1510880 m!1774578))

(assert (=> b!1510880 m!1774576))

(assert (=> b!1510880 m!1774574))

(assert (=> b!1510880 m!1774568))

(declare-fun m!1774580 () Bool)

(assert (=> b!1510880 m!1774580))

(assert (=> b!1510879 m!1774568))

(assert (=> b!1510879 m!1774574))

(assert (=> b!1510879 m!1774576))

(assert (=> b!1510879 m!1774578))

(assert (=> b!1510879 m!1774576))

(assert (=> b!1510879 m!1774574))

(assert (=> b!1510879 m!1774568))

(assert (=> b!1510879 m!1774580))

(declare-fun m!1774582 () Bool)

(assert (=> b!1510881 m!1774582))

(assert (=> b!1510881 m!1774436))

(assert (=> b!1510881 m!1774388))

(assert (=> b!1510881 m!1774436))

(assert (=> b!1510881 m!1774388))

(declare-fun m!1774584 () Bool)

(assert (=> b!1510881 m!1774584))

(assert (=> b!1510802 d!447490))

(declare-fun d!447492 () Bool)

(declare-fun e!965991 () Bool)

(assert (=> d!447492 e!965991))

(declare-fun res!680012 () Bool)

(assert (=> d!447492 (=> (not res!680012) (not e!965991))))

(declare-fun append!495 (Conc!5428 Token!5338) Conc!5428)

(assert (=> d!447492 (= res!680012 (isBalanced!1603 (append!495 (c!247753 acc!392) (_1!8432 (v!22840 (_1!8433 lt!525288))))))))

(declare-fun lt!525331 () BalanceConc!10798)

(assert (=> d!447492 (= lt!525331 (BalanceConc!10799 (append!495 (c!247753 acc!392) (_1!8432 (v!22840 (_1!8433 lt!525288))))))))

(assert (=> d!447492 (= (append!494 acc!392 (_1!8432 (v!22840 (_1!8433 lt!525288)))) lt!525331)))

(declare-fun b!1510884 () Bool)

(declare-fun $colon+!105 (List!16093 Token!5338) List!16093)

(assert (=> b!1510884 (= e!965991 (= (list!6331 lt!525331) ($colon+!105 (list!6331 acc!392) (_1!8432 (v!22840 (_1!8433 lt!525288))))))))

(assert (= (and d!447492 res!680012) b!1510884))

(declare-fun m!1774586 () Bool)

(assert (=> d!447492 m!1774586))

(assert (=> d!447492 m!1774586))

(declare-fun m!1774588 () Bool)

(assert (=> d!447492 m!1774588))

(declare-fun m!1774590 () Bool)

(assert (=> b!1510884 m!1774590))

(assert (=> b!1510884 m!1774438))

(assert (=> b!1510884 m!1774438))

(declare-fun m!1774592 () Bool)

(assert (=> b!1510884 m!1774592))

(assert (=> b!1510802 d!447492))

(declare-fun b!1510887 () Bool)

(declare-fun res!680014 () Bool)

(declare-fun e!965993 () Bool)

(assert (=> b!1510887 (=> (not res!680014) (not e!965993))))

(declare-fun lt!525332 () List!16093)

(assert (=> b!1510887 (= res!680014 (= (size!12959 lt!525332) (+ (size!12959 lt!525284) (size!12959 lt!525276))))))

(declare-fun b!1510886 () Bool)

(declare-fun e!965992 () List!16093)

(assert (=> b!1510886 (= e!965992 (Cons!16025 (h!21426 lt!525284) (++!4334 (t!139359 lt!525284) lt!525276)))))

(declare-fun d!447494 () Bool)

(assert (=> d!447494 e!965993))

(declare-fun res!680013 () Bool)

(assert (=> d!447494 (=> (not res!680013) (not e!965993))))

(assert (=> d!447494 (= res!680013 (= (content!2308 lt!525332) ((_ map or) (content!2308 lt!525284) (content!2308 lt!525276))))))

(assert (=> d!447494 (= lt!525332 e!965992)))

(declare-fun c!247771 () Bool)

(assert (=> d!447494 (= c!247771 ((_ is Nil!16025) lt!525284))))

(assert (=> d!447494 (= (++!4334 lt!525284 lt!525276) lt!525332)))

(declare-fun b!1510888 () Bool)

(assert (=> b!1510888 (= e!965993 (or (not (= lt!525276 Nil!16025)) (= lt!525332 lt!525284)))))

(declare-fun b!1510885 () Bool)

(assert (=> b!1510885 (= e!965992 lt!525276)))

(assert (= (and d!447494 c!247771) b!1510885))

(assert (= (and d!447494 (not c!247771)) b!1510886))

(assert (= (and d!447494 res!680013) b!1510887))

(assert (= (and b!1510887 res!680014) b!1510888))

(declare-fun m!1774594 () Bool)

(assert (=> b!1510887 m!1774594))

(assert (=> b!1510887 m!1774514))

(declare-fun m!1774596 () Bool)

(assert (=> b!1510887 m!1774596))

(declare-fun m!1774598 () Bool)

(assert (=> b!1510886 m!1774598))

(declare-fun m!1774600 () Bool)

(assert (=> d!447494 m!1774600))

(assert (=> d!447494 m!1774522))

(declare-fun m!1774602 () Bool)

(assert (=> d!447494 m!1774602))

(assert (=> b!1510802 d!447494))

(declare-fun d!447496 () Bool)

(assert (=> d!447496 (= (lexList!742 thiss!13241 rules!1640 lt!525280) (tuple2!14867 lt!525299 Nil!16024))))

(declare-fun lt!525335 () Unit!25729)

(declare-fun choose!9151 (LexerInterface!2491 List!16094 List!16092 List!16092 List!16093 List!16093 List!16092) Unit!25729)

(assert (=> d!447496 (= lt!525335 (choose!9151 thiss!13241 rules!1640 lt!525280 lt!525286 lt!525299 lt!525302 (list!6330 (_2!8429 lt!525287))))))

(assert (=> d!447496 (not (isEmpty!9916 rules!1640))))

(assert (=> d!447496 (= (lemmaLexThenLexPrefix!224 thiss!13241 rules!1640 lt!525280 lt!525286 lt!525299 lt!525302 (list!6330 (_2!8429 lt!525287))) lt!525335)))

(declare-fun bs!364343 () Bool)

(assert (= bs!364343 d!447496))

(assert (=> bs!364343 m!1774400))

(assert (=> bs!364343 m!1774352))

(declare-fun m!1774604 () Bool)

(assert (=> bs!364343 m!1774604))

(assert (=> bs!364343 m!1774318))

(assert (=> b!1510802 d!447496))

(declare-fun b!1510891 () Bool)

(declare-fun res!680016 () Bool)

(declare-fun e!965995 () Bool)

(assert (=> b!1510891 (=> (not res!680016) (not e!965995))))

(declare-fun lt!525336 () List!16093)

(assert (=> b!1510891 (= res!680016 (= (size!12959 lt!525336) (+ (size!12959 lt!525276) (size!12959 lt!525302))))))

(declare-fun b!1510890 () Bool)

(declare-fun e!965994 () List!16093)

(assert (=> b!1510890 (= e!965994 (Cons!16025 (h!21426 lt!525276) (++!4334 (t!139359 lt!525276) lt!525302)))))

(declare-fun d!447498 () Bool)

(assert (=> d!447498 e!965995))

(declare-fun res!680015 () Bool)

(assert (=> d!447498 (=> (not res!680015) (not e!965995))))

(assert (=> d!447498 (= res!680015 (= (content!2308 lt!525336) ((_ map or) (content!2308 lt!525276) (content!2308 lt!525302))))))

(assert (=> d!447498 (= lt!525336 e!965994)))

(declare-fun c!247772 () Bool)

(assert (=> d!447498 (= c!247772 ((_ is Nil!16025) lt!525276))))

(assert (=> d!447498 (= (++!4334 lt!525276 lt!525302) lt!525336)))

(declare-fun b!1510892 () Bool)

(assert (=> b!1510892 (= e!965995 (or (not (= lt!525302 Nil!16025)) (= lt!525336 lt!525276)))))

(declare-fun b!1510889 () Bool)

(assert (=> b!1510889 (= e!965994 lt!525302)))

(assert (= (and d!447498 c!247772) b!1510889))

(assert (= (and d!447498 (not c!247772)) b!1510890))

(assert (= (and d!447498 res!680015) b!1510891))

(assert (= (and b!1510891 res!680016) b!1510892))

(declare-fun m!1774606 () Bool)

(assert (=> b!1510891 m!1774606))

(assert (=> b!1510891 m!1774596))

(assert (=> b!1510891 m!1774558))

(declare-fun m!1774608 () Bool)

(assert (=> b!1510890 m!1774608))

(declare-fun m!1774610 () Bool)

(assert (=> d!447498 m!1774610))

(assert (=> d!447498 m!1774602))

(assert (=> d!447498 m!1774566))

(assert (=> b!1510802 d!447498))

(declare-fun d!447500 () Bool)

(declare-fun e!965998 () Bool)

(assert (=> d!447500 e!965998))

(declare-fun res!680019 () Bool)

(assert (=> d!447500 (=> res!680019 e!965998)))

(declare-fun lt!525339 () Bool)

(assert (=> d!447500 (= res!680019 (not lt!525339))))

(declare-fun drop!757 (List!16092 Int) List!16092)

(declare-fun size!12960 (List!16092) Int)

(assert (=> d!447500 (= lt!525339 (= lt!525286 (drop!757 (++!4332 lt!525283 lt!525286) (- (size!12960 (++!4332 lt!525283 lt!525286)) (size!12960 lt!525286)))))))

(assert (=> d!447500 (= (isSuffix!297 lt!525286 (++!4332 lt!525283 lt!525286)) lt!525339)))

(declare-fun b!1510895 () Bool)

(assert (=> b!1510895 (= e!965998 (>= (size!12960 (++!4332 lt!525283 lt!525286)) (size!12960 lt!525286)))))

(assert (= (and d!447500 (not res!680019)) b!1510895))

(assert (=> d!447500 m!1774390))

(declare-fun m!1774612 () Bool)

(assert (=> d!447500 m!1774612))

(declare-fun m!1774614 () Bool)

(assert (=> d!447500 m!1774614))

(assert (=> d!447500 m!1774390))

(declare-fun m!1774616 () Bool)

(assert (=> d!447500 m!1774616))

(assert (=> b!1510895 m!1774390))

(assert (=> b!1510895 m!1774612))

(assert (=> b!1510895 m!1774614))

(assert (=> b!1510802 d!447500))

(declare-fun d!447502 () Bool)

(declare-fun lt!525342 () BalanceConc!10796)

(assert (=> d!447502 (= (list!6330 lt!525342) (originalCharacters!3700 (_1!8432 (v!22840 (_1!8433 lt!525288)))))))

(declare-fun dynLambda!7217 (Int TokenValue!2928) BalanceConc!10796)

(assert (=> d!447502 (= lt!525342 (dynLambda!7217 (toChars!4046 (transformation!2838 (rule!4631 (_1!8432 (v!22840 (_1!8433 lt!525288)))))) (value!90543 (_1!8432 (v!22840 (_1!8433 lt!525288))))))))

(assert (=> d!447502 (= (charsOf!1625 (_1!8432 (v!22840 (_1!8433 lt!525288)))) lt!525342)))

(declare-fun b_lambda!47493 () Bool)

(assert (=> (not b_lambda!47493) (not d!447502)))

(declare-fun tb!86197 () Bool)

(declare-fun t!139363 () Bool)

(assert (=> (and b!1510804 (= (toChars!4046 (transformation!2838 (h!21427 rules!1640))) (toChars!4046 (transformation!2838 (rule!4631 (_1!8432 (v!22840 (_1!8433 lt!525288))))))) t!139363) tb!86197))

(declare-fun b!1510900 () Bool)

(declare-fun e!966001 () Bool)

(declare-fun tp!431634 () Bool)

(assert (=> b!1510900 (= e!966001 (and (inv!21244 (c!247752 (dynLambda!7217 (toChars!4046 (transformation!2838 (rule!4631 (_1!8432 (v!22840 (_1!8433 lt!525288)))))) (value!90543 (_1!8432 (v!22840 (_1!8433 lt!525288))))))) tp!431634))))

(declare-fun result!103624 () Bool)

(assert (=> tb!86197 (= result!103624 (and (inv!21248 (dynLambda!7217 (toChars!4046 (transformation!2838 (rule!4631 (_1!8432 (v!22840 (_1!8433 lt!525288)))))) (value!90543 (_1!8432 (v!22840 (_1!8433 lt!525288)))))) e!966001))))

(assert (= tb!86197 b!1510900))

(declare-fun m!1774618 () Bool)

(assert (=> b!1510900 m!1774618))

(declare-fun m!1774620 () Bool)

(assert (=> tb!86197 m!1774620))

(assert (=> d!447502 t!139363))

(declare-fun b_and!105167 () Bool)

(assert (= b_and!105163 (and (=> t!139363 result!103624) b_and!105167)))

(declare-fun m!1774622 () Bool)

(assert (=> d!447502 m!1774622))

(declare-fun m!1774624 () Bool)

(assert (=> d!447502 m!1774624))

(assert (=> b!1510802 d!447502))

(declare-fun b!1510909 () Bool)

(declare-fun e!966007 () List!16092)

(assert (=> b!1510909 (= e!966007 lt!525286)))

(declare-fun b!1510911 () Bool)

(declare-fun res!680025 () Bool)

(declare-fun e!966006 () Bool)

(assert (=> b!1510911 (=> (not res!680025) (not e!966006))))

(declare-fun lt!525345 () List!16092)

(assert (=> b!1510911 (= res!680025 (= (size!12960 lt!525345) (+ (size!12960 lt!525280) (size!12960 lt!525286))))))

(declare-fun d!447504 () Bool)

(assert (=> d!447504 e!966006))

(declare-fun res!680024 () Bool)

(assert (=> d!447504 (=> (not res!680024) (not e!966006))))

(declare-fun content!2309 (List!16092) (InoxSet C!8484))

(assert (=> d!447504 (= res!680024 (= (content!2309 lt!525345) ((_ map or) (content!2309 lt!525280) (content!2309 lt!525286))))))

(assert (=> d!447504 (= lt!525345 e!966007)))

(declare-fun c!247775 () Bool)

(assert (=> d!447504 (= c!247775 ((_ is Nil!16024) lt!525280))))

(assert (=> d!447504 (= (++!4332 lt!525280 lt!525286) lt!525345)))

(declare-fun b!1510912 () Bool)

(assert (=> b!1510912 (= e!966006 (or (not (= lt!525286 Nil!16024)) (= lt!525345 lt!525280)))))

(declare-fun b!1510910 () Bool)

(assert (=> b!1510910 (= e!966007 (Cons!16024 (h!21425 lt!525280) (++!4332 (t!139358 lt!525280) lt!525286)))))

(assert (= (and d!447504 c!247775) b!1510909))

(assert (= (and d!447504 (not c!247775)) b!1510910))

(assert (= (and d!447504 res!680024) b!1510911))

(assert (= (and b!1510911 res!680025) b!1510912))

(declare-fun m!1774626 () Bool)

(assert (=> b!1510911 m!1774626))

(declare-fun m!1774628 () Bool)

(assert (=> b!1510911 m!1774628))

(assert (=> b!1510911 m!1774614))

(declare-fun m!1774630 () Bool)

(assert (=> d!447504 m!1774630))

(declare-fun m!1774632 () Bool)

(assert (=> d!447504 m!1774632))

(declare-fun m!1774634 () Bool)

(assert (=> d!447504 m!1774634))

(declare-fun m!1774636 () Bool)

(assert (=> b!1510910 m!1774636))

(assert (=> b!1510802 d!447504))

(declare-fun b!1510913 () Bool)

(declare-fun e!966009 () List!16092)

(assert (=> b!1510913 (= e!966009 lt!525286)))

(declare-fun b!1510915 () Bool)

(declare-fun res!680027 () Bool)

(declare-fun e!966008 () Bool)

(assert (=> b!1510915 (=> (not res!680027) (not e!966008))))

(declare-fun lt!525346 () List!16092)

(assert (=> b!1510915 (= res!680027 (= (size!12960 lt!525346) (+ (size!12960 lt!525294) (size!12960 lt!525286))))))

(declare-fun d!447506 () Bool)

(assert (=> d!447506 e!966008))

(declare-fun res!680026 () Bool)

(assert (=> d!447506 (=> (not res!680026) (not e!966008))))

(assert (=> d!447506 (= res!680026 (= (content!2309 lt!525346) ((_ map or) (content!2309 lt!525294) (content!2309 lt!525286))))))

(assert (=> d!447506 (= lt!525346 e!966009)))

(declare-fun c!247776 () Bool)

(assert (=> d!447506 (= c!247776 ((_ is Nil!16024) lt!525294))))

(assert (=> d!447506 (= (++!4332 lt!525294 lt!525286) lt!525346)))

(declare-fun b!1510916 () Bool)

(assert (=> b!1510916 (= e!966008 (or (not (= lt!525286 Nil!16024)) (= lt!525346 lt!525294)))))

(declare-fun b!1510914 () Bool)

(assert (=> b!1510914 (= e!966009 (Cons!16024 (h!21425 lt!525294) (++!4332 (t!139358 lt!525294) lt!525286)))))

(assert (= (and d!447506 c!247776) b!1510913))

(assert (= (and d!447506 (not c!247776)) b!1510914))

(assert (= (and d!447506 res!680026) b!1510915))

(assert (= (and b!1510915 res!680027) b!1510916))

(declare-fun m!1774638 () Bool)

(assert (=> b!1510915 m!1774638))

(declare-fun m!1774640 () Bool)

(assert (=> b!1510915 m!1774640))

(assert (=> b!1510915 m!1774614))

(declare-fun m!1774642 () Bool)

(assert (=> d!447506 m!1774642))

(declare-fun m!1774644 () Bool)

(assert (=> d!447506 m!1774644))

(assert (=> d!447506 m!1774634))

(declare-fun m!1774646 () Bool)

(assert (=> b!1510914 m!1774646))

(assert (=> b!1510802 d!447506))

(declare-fun b!1510927 () Bool)

(declare-fun e!966016 () Bool)

(declare-fun lt!525354 () tuple2!14866)

(assert (=> b!1510927 (= e!966016 (= (_2!8434 lt!525354) lt!525280))))

(declare-fun b!1510928 () Bool)

(declare-fun e!966017 () tuple2!14866)

(declare-datatypes ((tuple2!14868 0))(
  ( (tuple2!14869 (_1!8435 Token!5338) (_2!8435 List!16092)) )
))
(declare-datatypes ((Option!2923 0))(
  ( (None!2922) (Some!2922 (v!22843 tuple2!14868)) )
))
(declare-fun lt!525355 () Option!2923)

(declare-fun lt!525353 () tuple2!14866)

(assert (=> b!1510928 (= e!966017 (tuple2!14867 (Cons!16025 (_1!8435 (v!22843 lt!525355)) (_1!8434 lt!525353)) (_2!8434 lt!525353)))))

(assert (=> b!1510928 (= lt!525353 (lexList!742 thiss!13241 rules!1640 (_2!8435 (v!22843 lt!525355))))))

(declare-fun b!1510929 () Bool)

(declare-fun e!966018 () Bool)

(declare-fun isEmpty!9918 (List!16093) Bool)

(assert (=> b!1510929 (= e!966018 (not (isEmpty!9918 (_1!8434 lt!525354))))))

(declare-fun b!1510930 () Bool)

(assert (=> b!1510930 (= e!966016 e!966018)))

(declare-fun res!680030 () Bool)

(assert (=> b!1510930 (= res!680030 (< (size!12960 (_2!8434 lt!525354)) (size!12960 lt!525280)))))

(assert (=> b!1510930 (=> (not res!680030) (not e!966018))))

(declare-fun d!447508 () Bool)

(assert (=> d!447508 e!966016))

(declare-fun c!247781 () Bool)

(assert (=> d!447508 (= c!247781 (> (size!12959 (_1!8434 lt!525354)) 0))))

(assert (=> d!447508 (= lt!525354 e!966017)))

(declare-fun c!247782 () Bool)

(assert (=> d!447508 (= c!247782 ((_ is Some!2922) lt!525355))))

(declare-fun maxPrefix!1206 (LexerInterface!2491 List!16094 List!16092) Option!2923)

(assert (=> d!447508 (= lt!525355 (maxPrefix!1206 thiss!13241 rules!1640 lt!525280))))

(assert (=> d!447508 (= (lexList!742 thiss!13241 rules!1640 lt!525280) lt!525354)))

(declare-fun b!1510931 () Bool)

(assert (=> b!1510931 (= e!966017 (tuple2!14867 Nil!16025 lt!525280))))

(assert (= (and d!447508 c!247782) b!1510928))

(assert (= (and d!447508 (not c!247782)) b!1510931))

(assert (= (and d!447508 c!247781) b!1510930))

(assert (= (and d!447508 (not c!247781)) b!1510927))

(assert (= (and b!1510930 res!680030) b!1510929))

(declare-fun m!1774648 () Bool)

(assert (=> b!1510928 m!1774648))

(declare-fun m!1774650 () Bool)

(assert (=> b!1510929 m!1774650))

(declare-fun m!1774652 () Bool)

(assert (=> b!1510930 m!1774652))

(assert (=> b!1510930 m!1774628))

(declare-fun m!1774654 () Bool)

(assert (=> d!447508 m!1774654))

(declare-fun m!1774656 () Bool)

(assert (=> d!447508 m!1774656))

(assert (=> b!1510802 d!447508))

(declare-fun b!1510932 () Bool)

(declare-fun e!966020 () List!16092)

(assert (=> b!1510932 (= e!966020 lt!525286)))

(declare-fun b!1510934 () Bool)

(declare-fun res!680032 () Bool)

(declare-fun e!966019 () Bool)

(assert (=> b!1510934 (=> (not res!680032) (not e!966019))))

(declare-fun lt!525356 () List!16092)

(assert (=> b!1510934 (= res!680032 (= (size!12960 lt!525356) (+ (size!12960 lt!525283) (size!12960 lt!525286))))))

(declare-fun d!447510 () Bool)

(assert (=> d!447510 e!966019))

(declare-fun res!680031 () Bool)

(assert (=> d!447510 (=> (not res!680031) (not e!966019))))

(assert (=> d!447510 (= res!680031 (= (content!2309 lt!525356) ((_ map or) (content!2309 lt!525283) (content!2309 lt!525286))))))

(assert (=> d!447510 (= lt!525356 e!966020)))

(declare-fun c!247783 () Bool)

(assert (=> d!447510 (= c!247783 ((_ is Nil!16024) lt!525283))))

(assert (=> d!447510 (= (++!4332 lt!525283 lt!525286) lt!525356)))

(declare-fun b!1510935 () Bool)

(assert (=> b!1510935 (= e!966019 (or (not (= lt!525286 Nil!16024)) (= lt!525356 lt!525283)))))

(declare-fun b!1510933 () Bool)

(assert (=> b!1510933 (= e!966020 (Cons!16024 (h!21425 lt!525283) (++!4332 (t!139358 lt!525283) lt!525286)))))

(assert (= (and d!447510 c!247783) b!1510932))

(assert (= (and d!447510 (not c!247783)) b!1510933))

(assert (= (and d!447510 res!680031) b!1510934))

(assert (= (and b!1510934 res!680032) b!1510935))

(declare-fun m!1774658 () Bool)

(assert (=> b!1510934 m!1774658))

(declare-fun m!1774660 () Bool)

(assert (=> b!1510934 m!1774660))

(assert (=> b!1510934 m!1774614))

(declare-fun m!1774662 () Bool)

(assert (=> d!447510 m!1774662))

(declare-fun m!1774664 () Bool)

(assert (=> d!447510 m!1774664))

(assert (=> d!447510 m!1774634))

(declare-fun m!1774666 () Bool)

(assert (=> b!1510933 m!1774666))

(assert (=> b!1510802 d!447510))

(declare-fun d!447512 () Bool)

(assert (=> d!447512 (= (list!6330 (_2!8429 lt!525287)) (list!6333 (c!247752 (_2!8429 lt!525287))))))

(declare-fun bs!364344 () Bool)

(assert (= bs!364344 d!447512))

(declare-fun m!1774668 () Bool)

(assert (=> bs!364344 m!1774668))

(assert (=> b!1510802 d!447512))

(declare-fun d!447514 () Bool)

(assert (=> d!447514 (= (++!4332 (++!4332 lt!525296 lt!525294) lt!525286) (++!4332 lt!525296 (++!4332 lt!525294 lt!525286)))))

(declare-fun lt!525359 () Unit!25729)

(declare-fun choose!9152 (List!16092 List!16092 List!16092) Unit!25729)

(assert (=> d!447514 (= lt!525359 (choose!9152 lt!525296 lt!525294 lt!525286))))

(assert (=> d!447514 (= (lemmaConcatAssociativity!933 lt!525296 lt!525294 lt!525286) lt!525359)))

(declare-fun bs!364345 () Bool)

(assert (= bs!364345 d!447514))

(assert (=> bs!364345 m!1774382))

(assert (=> bs!364345 m!1774408))

(assert (=> bs!364345 m!1774378))

(declare-fun m!1774670 () Bool)

(assert (=> bs!364345 m!1774670))

(assert (=> bs!364345 m!1774382))

(assert (=> bs!364345 m!1774378))

(declare-fun m!1774672 () Bool)

(assert (=> bs!364345 m!1774672))

(assert (=> b!1510802 d!447514))

(declare-fun b!1510952 () Bool)

(declare-fun e!966037 () Bool)

(declare-fun e!966034 () Bool)

(assert (=> b!1510952 (= e!966037 e!966034)))

(declare-fun res!680046 () Bool)

(assert (=> b!1510952 (=> res!680046 e!966034)))

(declare-fun lt!525379 () Option!2922)

(declare-fun isDefined!2349 (Option!2922) Bool)

(assert (=> b!1510952 (= res!680046 (not (isDefined!2349 lt!525379)))))

(declare-fun b!1510953 () Bool)

(declare-fun e!966035 () Bool)

(assert (=> b!1510953 (= e!966034 e!966035)))

(declare-fun res!680047 () Bool)

(assert (=> b!1510953 (=> (not res!680047) (not e!966035))))

(declare-fun get!4729 (Option!2922) tuple2!14864)

(declare-fun get!4730 (Option!2923) tuple2!14868)

(assert (=> b!1510953 (= res!680047 (= (_1!8432 (get!4729 lt!525379)) (_1!8435 (get!4730 (maxPrefix!1206 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun bm!100310 () Bool)

(declare-fun call!100315 () Option!2922)

(declare-fun maxPrefixOneRuleZipperSequence!276 (LexerInterface!2491 Rule!5476 BalanceConc!10796) Option!2922)

(assert (=> bm!100310 (= call!100315 (maxPrefixOneRuleZipperSequence!276 thiss!13241 (h!21427 rules!1640) input!1102))))

(declare-fun b!1510954 () Bool)

(declare-fun e!966036 () Bool)

(declare-fun maxPrefixZipper!257 (LexerInterface!2491 List!16094 List!16092) Option!2923)

(assert (=> b!1510954 (= e!966036 (= (list!6330 (_2!8432 (get!4729 lt!525379))) (_2!8435 (get!4730 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun b!1510955 () Bool)

(declare-fun e!966038 () Bool)

(assert (=> b!1510955 (= e!966038 e!966036)))

(declare-fun res!680045 () Bool)

(assert (=> b!1510955 (=> (not res!680045) (not e!966036))))

(assert (=> b!1510955 (= res!680045 (= (_1!8432 (get!4729 lt!525379)) (_1!8435 (get!4730 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun d!447516 () Bool)

(assert (=> d!447516 e!966037))

(declare-fun res!680050 () Bool)

(assert (=> d!447516 (=> (not res!680050) (not e!966037))))

(declare-fun isDefined!2350 (Option!2923) Bool)

(assert (=> d!447516 (= res!680050 (= (isDefined!2349 lt!525379) (isDefined!2350 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 input!1102)))))))

(declare-fun e!966033 () Option!2922)

(assert (=> d!447516 (= lt!525379 e!966033)))

(declare-fun c!247786 () Bool)

(assert (=> d!447516 (= c!247786 (and ((_ is Cons!16026) rules!1640) ((_ is Nil!16026) (t!139360 rules!1640))))))

(declare-fun lt!525375 () Unit!25729)

(declare-fun lt!525377 () Unit!25729)

(assert (=> d!447516 (= lt!525375 lt!525377)))

(declare-fun lt!525374 () List!16092)

(declare-fun lt!525376 () List!16092)

(declare-fun isPrefix!1216 (List!16092 List!16092) Bool)

(assert (=> d!447516 (isPrefix!1216 lt!525374 lt!525376)))

(declare-fun lemmaIsPrefixRefl!846 (List!16092 List!16092) Unit!25729)

(assert (=> d!447516 (= lt!525377 (lemmaIsPrefixRefl!846 lt!525374 lt!525376))))

(assert (=> d!447516 (= lt!525376 (list!6330 input!1102))))

(assert (=> d!447516 (= lt!525374 (list!6330 input!1102))))

(declare-fun rulesValidInductive!854 (LexerInterface!2491 List!16094) Bool)

(assert (=> d!447516 (rulesValidInductive!854 thiss!13241 rules!1640)))

(assert (=> d!447516 (= (maxPrefixZipperSequence!584 thiss!13241 rules!1640 input!1102) lt!525379)))

(declare-fun b!1510956 () Bool)

(assert (=> b!1510956 (= e!966033 call!100315)))

(declare-fun b!1510957 () Bool)

(assert (=> b!1510957 (= e!966035 (= (list!6330 (_2!8432 (get!4729 lt!525379))) (_2!8435 (get!4730 (maxPrefix!1206 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun b!1510958 () Bool)

(declare-fun res!680049 () Bool)

(assert (=> b!1510958 (=> (not res!680049) (not e!966037))))

(assert (=> b!1510958 (= res!680049 e!966038)))

(declare-fun res!680048 () Bool)

(assert (=> b!1510958 (=> res!680048 e!966038)))

(assert (=> b!1510958 (= res!680048 (not (isDefined!2349 lt!525379)))))

(declare-fun b!1510959 () Bool)

(declare-fun lt!525380 () Option!2922)

(declare-fun lt!525378 () Option!2922)

(assert (=> b!1510959 (= e!966033 (ite (and ((_ is None!2921) lt!525380) ((_ is None!2921) lt!525378)) None!2921 (ite ((_ is None!2921) lt!525378) lt!525380 (ite ((_ is None!2921) lt!525380) lt!525378 (ite (>= (size!12955 (_1!8432 (v!22840 lt!525380))) (size!12955 (_1!8432 (v!22840 lt!525378)))) lt!525380 lt!525378)))))))

(assert (=> b!1510959 (= lt!525380 call!100315)))

(assert (=> b!1510959 (= lt!525378 (maxPrefixZipperSequence!584 thiss!13241 (t!139360 rules!1640) input!1102))))

(assert (= (and d!447516 c!247786) b!1510956))

(assert (= (and d!447516 (not c!247786)) b!1510959))

(assert (= (or b!1510956 b!1510959) bm!100310))

(assert (= (and d!447516 res!680050) b!1510958))

(assert (= (and b!1510958 (not res!680048)) b!1510955))

(assert (= (and b!1510955 res!680045) b!1510954))

(assert (= (and b!1510958 res!680049) b!1510952))

(assert (= (and b!1510952 (not res!680046)) b!1510953))

(assert (= (and b!1510953 res!680047) b!1510957))

(declare-fun m!1774674 () Bool)

(assert (=> b!1510955 m!1774674))

(assert (=> b!1510955 m!1774434))

(assert (=> b!1510955 m!1774434))

(declare-fun m!1774676 () Bool)

(assert (=> b!1510955 m!1774676))

(assert (=> b!1510955 m!1774676))

(declare-fun m!1774678 () Bool)

(assert (=> b!1510955 m!1774678))

(assert (=> d!447516 m!1774434))

(declare-fun m!1774680 () Bool)

(assert (=> d!447516 m!1774680))

(declare-fun m!1774682 () Bool)

(assert (=> d!447516 m!1774682))

(assert (=> d!447516 m!1774676))

(declare-fun m!1774684 () Bool)

(assert (=> d!447516 m!1774684))

(declare-fun m!1774686 () Bool)

(assert (=> d!447516 m!1774686))

(assert (=> d!447516 m!1774434))

(assert (=> d!447516 m!1774676))

(declare-fun m!1774688 () Bool)

(assert (=> d!447516 m!1774688))

(assert (=> b!1510952 m!1774686))

(assert (=> b!1510953 m!1774674))

(assert (=> b!1510953 m!1774434))

(assert (=> b!1510953 m!1774434))

(declare-fun m!1774690 () Bool)

(assert (=> b!1510953 m!1774690))

(assert (=> b!1510953 m!1774690))

(declare-fun m!1774692 () Bool)

(assert (=> b!1510953 m!1774692))

(assert (=> b!1510958 m!1774686))

(declare-fun m!1774694 () Bool)

(assert (=> b!1510959 m!1774694))

(assert (=> b!1510957 m!1774434))

(assert (=> b!1510957 m!1774690))

(assert (=> b!1510957 m!1774692))

(assert (=> b!1510957 m!1774434))

(assert (=> b!1510957 m!1774690))

(assert (=> b!1510957 m!1774674))

(declare-fun m!1774696 () Bool)

(assert (=> b!1510957 m!1774696))

(assert (=> b!1510954 m!1774434))

(assert (=> b!1510954 m!1774676))

(assert (=> b!1510954 m!1774678))

(assert (=> b!1510954 m!1774674))

(assert (=> b!1510954 m!1774696))

(assert (=> b!1510954 m!1774434))

(assert (=> b!1510954 m!1774676))

(declare-fun m!1774698 () Bool)

(assert (=> bm!100310 m!1774698))

(assert (=> b!1510802 d!447516))

(declare-fun d!447518 () Bool)

(declare-fun e!966039 () Bool)

(assert (=> d!447518 e!966039))

(declare-fun res!680051 () Bool)

(assert (=> d!447518 (=> res!680051 e!966039)))

(declare-fun lt!525381 () Bool)

(assert (=> d!447518 (= res!680051 (not lt!525381))))

(assert (=> d!447518 (= lt!525381 (= lt!525286 (drop!757 lt!525271 (- (size!12960 lt!525271) (size!12960 lt!525286)))))))

(assert (=> d!447518 (= (isSuffix!297 lt!525286 lt!525271) lt!525381)))

(declare-fun b!1510960 () Bool)

(assert (=> b!1510960 (= e!966039 (>= (size!12960 lt!525271) (size!12960 lt!525286)))))

(assert (= (and d!447518 (not res!680051)) b!1510960))

(declare-fun m!1774700 () Bool)

(assert (=> d!447518 m!1774700))

(assert (=> d!447518 m!1774614))

(declare-fun m!1774702 () Bool)

(assert (=> d!447518 m!1774702))

(assert (=> b!1510960 m!1774700))

(assert (=> b!1510960 m!1774614))

(assert (=> b!1510802 d!447518))

(declare-fun d!447520 () Bool)

(declare-fun e!966041 () Bool)

(assert (=> d!447520 e!966041))

(declare-fun res!680053 () Bool)

(assert (=> d!447520 (=> (not res!680053) (not e!966041))))

(declare-fun e!966040 () Bool)

(assert (=> d!447520 (= res!680053 e!966040)))

(declare-fun c!247788 () Bool)

(declare-fun lt!525382 () tuple2!14860)

(assert (=> d!447520 (= c!247788 (> (size!12957 (_1!8429 lt!525382)) 0))))

(declare-fun e!966042 () tuple2!14860)

(assert (=> d!447520 (= lt!525382 e!966042)))

(declare-fun c!247787 () Bool)

(declare-fun lt!525383 () Option!2922)

(assert (=> d!447520 (= c!247787 ((_ is Some!2921) lt!525383))))

(assert (=> d!447520 (= lt!525383 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 (_2!8432 (v!22840 (_1!8433 lt!525288)))))))

(assert (=> d!447520 (= (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 (_1!8433 lt!525288)))) lt!525382)))

(declare-fun b!1510961 () Bool)

(declare-fun res!680054 () Bool)

(assert (=> b!1510961 (=> (not res!680054) (not e!966041))))

(assert (=> b!1510961 (= res!680054 (= (list!6331 (_1!8429 lt!525382)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 (_2!8432 (v!22840 (_1!8433 lt!525288))))))))))

(declare-fun b!1510962 () Bool)

(assert (=> b!1510962 (= e!966041 (= (list!6330 (_2!8429 lt!525382)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 (_2!8432 (v!22840 (_1!8433 lt!525288))))))))))

(declare-fun b!1510963 () Bool)

(assert (=> b!1510963 (= e!966040 (= (list!6330 (_2!8429 lt!525382)) (list!6330 (_2!8432 (v!22840 (_1!8433 lt!525288))))))))

(declare-fun b!1510964 () Bool)

(assert (=> b!1510964 (= e!966042 (tuple2!14861 (BalanceConc!10799 Empty!5428) (_2!8432 (v!22840 (_1!8433 lt!525288)))))))

(declare-fun b!1510965 () Bool)

(declare-fun e!966043 () Bool)

(assert (=> b!1510965 (= e!966040 e!966043)))

(declare-fun res!680052 () Bool)

(assert (=> b!1510965 (= res!680052 (< (size!12958 (_2!8429 lt!525382)) (size!12958 (_2!8432 (v!22840 (_1!8433 lt!525288))))))))

(assert (=> b!1510965 (=> (not res!680052) (not e!966043))))

(declare-fun b!1510966 () Bool)

(assert (=> b!1510966 (= e!966043 (not (isEmpty!9917 (_1!8429 lt!525382))))))

(declare-fun b!1510967 () Bool)

(declare-fun lt!525384 () tuple2!14860)

(assert (=> b!1510967 (= e!966042 (tuple2!14861 (prepend!459 (_1!8429 lt!525384) (_1!8432 (v!22840 lt!525383))) (_2!8429 lt!525384)))))

(assert (=> b!1510967 (= lt!525384 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525383))))))

(assert (= (and d!447520 c!247787) b!1510967))

(assert (= (and d!447520 (not c!247787)) b!1510964))

(assert (= (and d!447520 c!247788) b!1510965))

(assert (= (and d!447520 (not c!247788)) b!1510963))

(assert (= (and b!1510965 res!680052) b!1510966))

(assert (= (and d!447520 res!680053) b!1510961))

(assert (= (and b!1510961 res!680054) b!1510962))

(declare-fun m!1774704 () Bool)

(assert (=> d!447520 m!1774704))

(declare-fun m!1774706 () Bool)

(assert (=> d!447520 m!1774706))

(declare-fun m!1774708 () Bool)

(assert (=> b!1510963 m!1774708))

(assert (=> b!1510963 m!1774366))

(declare-fun m!1774710 () Bool)

(assert (=> b!1510966 m!1774710))

(assert (=> b!1510962 m!1774708))

(assert (=> b!1510962 m!1774366))

(assert (=> b!1510962 m!1774366))

(declare-fun m!1774712 () Bool)

(assert (=> b!1510962 m!1774712))

(declare-fun m!1774714 () Bool)

(assert (=> b!1510961 m!1774714))

(assert (=> b!1510961 m!1774366))

(assert (=> b!1510961 m!1774366))

(assert (=> b!1510961 m!1774712))

(declare-fun m!1774716 () Bool)

(assert (=> b!1510967 m!1774716))

(declare-fun m!1774718 () Bool)

(assert (=> b!1510967 m!1774718))

(declare-fun m!1774720 () Bool)

(assert (=> b!1510965 m!1774720))

(declare-fun m!1774722 () Bool)

(assert (=> b!1510965 m!1774722))

(assert (=> b!1510802 d!447520))

(declare-fun b!1510968 () Bool)

(declare-fun e!966048 () Bool)

(declare-fun e!966045 () Bool)

(assert (=> b!1510968 (= e!966048 e!966045)))

(declare-fun res!680056 () Bool)

(assert (=> b!1510968 (=> res!680056 e!966045)))

(declare-fun lt!525390 () Option!2922)

(assert (=> b!1510968 (= res!680056 (not (isDefined!2349 lt!525390)))))

(declare-fun b!1510969 () Bool)

(declare-fun e!966046 () Bool)

(assert (=> b!1510969 (= e!966045 e!966046)))

(declare-fun res!680057 () Bool)

(assert (=> b!1510969 (=> (not res!680057) (not e!966046))))

(assert (=> b!1510969 (= res!680057 (= (_1!8432 (get!4729 lt!525390)) (_1!8435 (get!4730 (maxPrefix!1206 thiss!13241 rules!1640 (list!6330 lt!525291))))))))

(declare-fun call!100316 () Option!2922)

(declare-fun bm!100311 () Bool)

(assert (=> bm!100311 (= call!100316 (maxPrefixOneRuleZipperSequence!276 thiss!13241 (h!21427 rules!1640) lt!525291))))

(declare-fun e!966047 () Bool)

(declare-fun b!1510970 () Bool)

(assert (=> b!1510970 (= e!966047 (= (list!6330 (_2!8432 (get!4729 lt!525390))) (_2!8435 (get!4730 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 lt!525291))))))))

(declare-fun b!1510971 () Bool)

(declare-fun e!966049 () Bool)

(assert (=> b!1510971 (= e!966049 e!966047)))

(declare-fun res!680055 () Bool)

(assert (=> b!1510971 (=> (not res!680055) (not e!966047))))

(assert (=> b!1510971 (= res!680055 (= (_1!8432 (get!4729 lt!525390)) (_1!8435 (get!4730 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 lt!525291))))))))

(declare-fun d!447522 () Bool)

(assert (=> d!447522 e!966048))

(declare-fun res!680060 () Bool)

(assert (=> d!447522 (=> (not res!680060) (not e!966048))))

(assert (=> d!447522 (= res!680060 (= (isDefined!2349 lt!525390) (isDefined!2350 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 lt!525291)))))))

(declare-fun e!966044 () Option!2922)

(assert (=> d!447522 (= lt!525390 e!966044)))

(declare-fun c!247789 () Bool)

(assert (=> d!447522 (= c!247789 (and ((_ is Cons!16026) rules!1640) ((_ is Nil!16026) (t!139360 rules!1640))))))

(declare-fun lt!525386 () Unit!25729)

(declare-fun lt!525388 () Unit!25729)

(assert (=> d!447522 (= lt!525386 lt!525388)))

(declare-fun lt!525385 () List!16092)

(declare-fun lt!525387 () List!16092)

(assert (=> d!447522 (isPrefix!1216 lt!525385 lt!525387)))

(assert (=> d!447522 (= lt!525388 (lemmaIsPrefixRefl!846 lt!525385 lt!525387))))

(assert (=> d!447522 (= lt!525387 (list!6330 lt!525291))))

(assert (=> d!447522 (= lt!525385 (list!6330 lt!525291))))

(assert (=> d!447522 (rulesValidInductive!854 thiss!13241 rules!1640)))

(assert (=> d!447522 (= (maxPrefixZipperSequence!584 thiss!13241 rules!1640 lt!525291) lt!525390)))

(declare-fun b!1510972 () Bool)

(assert (=> b!1510972 (= e!966044 call!100316)))

(declare-fun b!1510973 () Bool)

(assert (=> b!1510973 (= e!966046 (= (list!6330 (_2!8432 (get!4729 lt!525390))) (_2!8435 (get!4730 (maxPrefix!1206 thiss!13241 rules!1640 (list!6330 lt!525291))))))))

(declare-fun b!1510974 () Bool)

(declare-fun res!680059 () Bool)

(assert (=> b!1510974 (=> (not res!680059) (not e!966048))))

(assert (=> b!1510974 (= res!680059 e!966049)))

(declare-fun res!680058 () Bool)

(assert (=> b!1510974 (=> res!680058 e!966049)))

(assert (=> b!1510974 (= res!680058 (not (isDefined!2349 lt!525390)))))

(declare-fun b!1510975 () Bool)

(declare-fun lt!525391 () Option!2922)

(declare-fun lt!525389 () Option!2922)

(assert (=> b!1510975 (= e!966044 (ite (and ((_ is None!2921) lt!525391) ((_ is None!2921) lt!525389)) None!2921 (ite ((_ is None!2921) lt!525389) lt!525391 (ite ((_ is None!2921) lt!525391) lt!525389 (ite (>= (size!12955 (_1!8432 (v!22840 lt!525391))) (size!12955 (_1!8432 (v!22840 lt!525389)))) lt!525391 lt!525389)))))))

(assert (=> b!1510975 (= lt!525391 call!100316)))

(assert (=> b!1510975 (= lt!525389 (maxPrefixZipperSequence!584 thiss!13241 (t!139360 rules!1640) lt!525291))))

(assert (= (and d!447522 c!247789) b!1510972))

(assert (= (and d!447522 (not c!247789)) b!1510975))

(assert (= (or b!1510972 b!1510975) bm!100311))

(assert (= (and d!447522 res!680060) b!1510974))

(assert (= (and b!1510974 (not res!680058)) b!1510971))

(assert (= (and b!1510971 res!680055) b!1510970))

(assert (= (and b!1510974 res!680059) b!1510968))

(assert (= (and b!1510968 (not res!680056)) b!1510969))

(assert (= (and b!1510969 res!680057) b!1510973))

(declare-fun m!1774724 () Bool)

(assert (=> b!1510971 m!1774724))

(assert (=> b!1510971 m!1774396))

(assert (=> b!1510971 m!1774396))

(declare-fun m!1774726 () Bool)

(assert (=> b!1510971 m!1774726))

(assert (=> b!1510971 m!1774726))

(declare-fun m!1774728 () Bool)

(assert (=> b!1510971 m!1774728))

(assert (=> d!447522 m!1774396))

(declare-fun m!1774730 () Bool)

(assert (=> d!447522 m!1774730))

(assert (=> d!447522 m!1774682))

(assert (=> d!447522 m!1774726))

(declare-fun m!1774732 () Bool)

(assert (=> d!447522 m!1774732))

(declare-fun m!1774734 () Bool)

(assert (=> d!447522 m!1774734))

(assert (=> d!447522 m!1774396))

(assert (=> d!447522 m!1774726))

(declare-fun m!1774736 () Bool)

(assert (=> d!447522 m!1774736))

(assert (=> b!1510968 m!1774734))

(assert (=> b!1510969 m!1774724))

(assert (=> b!1510969 m!1774396))

(assert (=> b!1510969 m!1774396))

(declare-fun m!1774738 () Bool)

(assert (=> b!1510969 m!1774738))

(assert (=> b!1510969 m!1774738))

(declare-fun m!1774740 () Bool)

(assert (=> b!1510969 m!1774740))

(assert (=> b!1510974 m!1774734))

(declare-fun m!1774742 () Bool)

(assert (=> b!1510975 m!1774742))

(assert (=> b!1510973 m!1774396))

(assert (=> b!1510973 m!1774738))

(assert (=> b!1510973 m!1774740))

(assert (=> b!1510973 m!1774396))

(assert (=> b!1510973 m!1774738))

(assert (=> b!1510973 m!1774724))

(declare-fun m!1774744 () Bool)

(assert (=> b!1510973 m!1774744))

(assert (=> b!1510970 m!1774396))

(assert (=> b!1510970 m!1774726))

(assert (=> b!1510970 m!1774728))

(assert (=> b!1510970 m!1774724))

(assert (=> b!1510970 m!1774744))

(assert (=> b!1510970 m!1774396))

(assert (=> b!1510970 m!1774726))

(declare-fun m!1774746 () Bool)

(assert (=> bm!100311 m!1774746))

(assert (=> b!1510802 d!447522))

(declare-fun b!1510976 () Bool)

(declare-fun e!966051 () List!16092)

(assert (=> b!1510976 (= e!966051 (++!4332 lt!525294 lt!525286))))

(declare-fun b!1510978 () Bool)

(declare-fun res!680062 () Bool)

(declare-fun e!966050 () Bool)

(assert (=> b!1510978 (=> (not res!680062) (not e!966050))))

(declare-fun lt!525392 () List!16092)

(assert (=> b!1510978 (= res!680062 (= (size!12960 lt!525392) (+ (size!12960 lt!525296) (size!12960 (++!4332 lt!525294 lt!525286)))))))

(declare-fun d!447524 () Bool)

(assert (=> d!447524 e!966050))

(declare-fun res!680061 () Bool)

(assert (=> d!447524 (=> (not res!680061) (not e!966050))))

(assert (=> d!447524 (= res!680061 (= (content!2309 lt!525392) ((_ map or) (content!2309 lt!525296) (content!2309 (++!4332 lt!525294 lt!525286)))))))

(assert (=> d!447524 (= lt!525392 e!966051)))

(declare-fun c!247790 () Bool)

(assert (=> d!447524 (= c!247790 ((_ is Nil!16024) lt!525296))))

(assert (=> d!447524 (= (++!4332 lt!525296 (++!4332 lt!525294 lt!525286)) lt!525392)))

(declare-fun b!1510979 () Bool)

(assert (=> b!1510979 (= e!966050 (or (not (= (++!4332 lt!525294 lt!525286) Nil!16024)) (= lt!525392 lt!525296)))))

(declare-fun b!1510977 () Bool)

(assert (=> b!1510977 (= e!966051 (Cons!16024 (h!21425 lt!525296) (++!4332 (t!139358 lt!525296) (++!4332 lt!525294 lt!525286))))))

(assert (= (and d!447524 c!247790) b!1510976))

(assert (= (and d!447524 (not c!247790)) b!1510977))

(assert (= (and d!447524 res!680061) b!1510978))

(assert (= (and b!1510978 res!680062) b!1510979))

(declare-fun m!1774748 () Bool)

(assert (=> b!1510978 m!1774748))

(declare-fun m!1774750 () Bool)

(assert (=> b!1510978 m!1774750))

(assert (=> b!1510978 m!1774382))

(declare-fun m!1774752 () Bool)

(assert (=> b!1510978 m!1774752))

(declare-fun m!1774754 () Bool)

(assert (=> d!447524 m!1774754))

(declare-fun m!1774756 () Bool)

(assert (=> d!447524 m!1774756))

(assert (=> d!447524 m!1774382))

(declare-fun m!1774758 () Bool)

(assert (=> d!447524 m!1774758))

(assert (=> b!1510977 m!1774382))

(declare-fun m!1774760 () Bool)

(assert (=> b!1510977 m!1774760))

(assert (=> b!1510802 d!447524))

(declare-fun b!1510980 () Bool)

(declare-fun e!966053 () List!16092)

(assert (=> b!1510980 (= e!966053 lt!525294)))

(declare-fun b!1510982 () Bool)

(declare-fun res!680064 () Bool)

(declare-fun e!966052 () Bool)

(assert (=> b!1510982 (=> (not res!680064) (not e!966052))))

(declare-fun lt!525393 () List!16092)

(assert (=> b!1510982 (= res!680064 (= (size!12960 lt!525393) (+ (size!12960 lt!525296) (size!12960 lt!525294))))))

(declare-fun d!447526 () Bool)

(assert (=> d!447526 e!966052))

(declare-fun res!680063 () Bool)

(assert (=> d!447526 (=> (not res!680063) (not e!966052))))

(assert (=> d!447526 (= res!680063 (= (content!2309 lt!525393) ((_ map or) (content!2309 lt!525296) (content!2309 lt!525294))))))

(assert (=> d!447526 (= lt!525393 e!966053)))

(declare-fun c!247791 () Bool)

(assert (=> d!447526 (= c!247791 ((_ is Nil!16024) lt!525296))))

(assert (=> d!447526 (= (++!4332 lt!525296 lt!525294) lt!525393)))

(declare-fun b!1510983 () Bool)

(assert (=> b!1510983 (= e!966052 (or (not (= lt!525294 Nil!16024)) (= lt!525393 lt!525296)))))

(declare-fun b!1510981 () Bool)

(assert (=> b!1510981 (= e!966053 (Cons!16024 (h!21425 lt!525296) (++!4332 (t!139358 lt!525296) lt!525294)))))

(assert (= (and d!447526 c!247791) b!1510980))

(assert (= (and d!447526 (not c!247791)) b!1510981))

(assert (= (and d!447526 res!680063) b!1510982))

(assert (= (and b!1510982 res!680064) b!1510983))

(declare-fun m!1774762 () Bool)

(assert (=> b!1510982 m!1774762))

(assert (=> b!1510982 m!1774750))

(assert (=> b!1510982 m!1774640))

(declare-fun m!1774764 () Bool)

(assert (=> d!447526 m!1774764))

(assert (=> d!447526 m!1774756))

(assert (=> d!447526 m!1774644))

(declare-fun m!1774766 () Bool)

(assert (=> b!1510981 m!1774766))

(assert (=> b!1510802 d!447526))

(declare-fun d!447528 () Bool)

(assert (=> d!447528 (= (list!6330 (_2!8432 (v!22840 (_1!8433 lt!525288)))) (list!6333 (c!247752 (_2!8432 (v!22840 (_1!8433 lt!525288))))))))

(declare-fun bs!364346 () Bool)

(assert (= bs!364346 d!447528))

(declare-fun m!1774768 () Bool)

(assert (=> bs!364346 m!1774768))

(assert (=> b!1510802 d!447528))

(declare-fun d!447530 () Bool)

(assert (=> d!447530 (= (++!4334 (++!4334 lt!525284 lt!525276) lt!525302) (++!4334 lt!525284 (++!4334 lt!525276 lt!525302)))))

(declare-fun lt!525396 () Unit!25729)

(declare-fun choose!9153 (List!16093 List!16093 List!16093) Unit!25729)

(assert (=> d!447530 (= lt!525396 (choose!9153 lt!525284 lt!525276 lt!525302))))

(assert (=> d!447530 (= (lemmaConcatAssociativity!932 lt!525284 lt!525276 lt!525302) lt!525396)))

(declare-fun bs!364347 () Bool)

(assert (= bs!364347 d!447530))

(assert (=> bs!364347 m!1774374))

(assert (=> bs!364347 m!1774376))

(assert (=> bs!364347 m!1774374))

(declare-fun m!1774770 () Bool)

(assert (=> bs!364347 m!1774770))

(assert (=> bs!364347 m!1774356))

(assert (=> bs!364347 m!1774358))

(assert (=> bs!364347 m!1774356))

(assert (=> b!1510802 d!447530))

(declare-fun b!1510984 () Bool)

(declare-fun e!966055 () List!16092)

(assert (=> b!1510984 (= e!966055 lt!525272)))

(declare-fun b!1510986 () Bool)

(declare-fun res!680066 () Bool)

(declare-fun e!966054 () Bool)

(assert (=> b!1510986 (=> (not res!680066) (not e!966054))))

(declare-fun lt!525397 () List!16092)

(assert (=> b!1510986 (= res!680066 (= (size!12960 lt!525397) (+ (size!12960 lt!525296) (size!12960 lt!525272))))))

(declare-fun d!447532 () Bool)

(assert (=> d!447532 e!966054))

(declare-fun res!680065 () Bool)

(assert (=> d!447532 (=> (not res!680065) (not e!966054))))

(assert (=> d!447532 (= res!680065 (= (content!2309 lt!525397) ((_ map or) (content!2309 lt!525296) (content!2309 lt!525272))))))

(assert (=> d!447532 (= lt!525397 e!966055)))

(declare-fun c!247792 () Bool)

(assert (=> d!447532 (= c!247792 ((_ is Nil!16024) lt!525296))))

(assert (=> d!447532 (= (++!4332 lt!525296 lt!525272) lt!525397)))

(declare-fun b!1510987 () Bool)

(assert (=> b!1510987 (= e!966054 (or (not (= lt!525272 Nil!16024)) (= lt!525397 lt!525296)))))

(declare-fun b!1510985 () Bool)

(assert (=> b!1510985 (= e!966055 (Cons!16024 (h!21425 lt!525296) (++!4332 (t!139358 lt!525296) lt!525272)))))

(assert (= (and d!447532 c!247792) b!1510984))

(assert (= (and d!447532 (not c!247792)) b!1510985))

(assert (= (and d!447532 res!680065) b!1510986))

(assert (= (and b!1510986 res!680066) b!1510987))

(declare-fun m!1774772 () Bool)

(assert (=> b!1510986 m!1774772))

(assert (=> b!1510986 m!1774750))

(declare-fun m!1774774 () Bool)

(assert (=> b!1510986 m!1774774))

(declare-fun m!1774776 () Bool)

(assert (=> d!447532 m!1774776))

(assert (=> d!447532 m!1774756))

(declare-fun m!1774778 () Bool)

(assert (=> d!447532 m!1774778))

(declare-fun m!1774780 () Bool)

(assert (=> b!1510985 m!1774780))

(assert (=> b!1510822 d!447532))

(declare-fun d!447534 () Bool)

(assert (=> d!447534 (= (list!6330 totalInput!458) (list!6333 (c!247752 totalInput!458)))))

(declare-fun bs!364348 () Bool)

(assert (= bs!364348 d!447534))

(declare-fun m!1774782 () Bool)

(assert (=> bs!364348 m!1774782))

(assert (=> b!1510822 d!447534))

(declare-fun d!447536 () Bool)

(assert (=> d!447536 (= (list!6330 input!1102) (list!6333 (c!247752 input!1102)))))

(declare-fun bs!364349 () Bool)

(assert (= bs!364349 d!447536))

(declare-fun m!1774784 () Bool)

(assert (=> bs!364349 m!1774784))

(assert (=> b!1510822 d!447536))

(declare-fun d!447538 () Bool)

(assert (=> d!447538 (= (list!6330 treated!70) (list!6333 (c!247752 treated!70)))))

(declare-fun bs!364350 () Bool)

(assert (= bs!364350 d!447538))

(declare-fun m!1774786 () Bool)

(assert (=> bs!364350 m!1774786))

(assert (=> b!1510822 d!447538))

(declare-fun d!447540 () Bool)

(declare-fun res!680069 () Bool)

(declare-fun e!966058 () Bool)

(assert (=> d!447540 (=> (not res!680069) (not e!966058))))

(declare-fun rulesValid!1039 (LexerInterface!2491 List!16094) Bool)

(assert (=> d!447540 (= res!680069 (rulesValid!1039 thiss!13241 rules!1640))))

(assert (=> d!447540 (= (rulesInvariant!2266 thiss!13241 rules!1640) e!966058)))

(declare-fun b!1510990 () Bool)

(declare-datatypes ((List!16096 0))(
  ( (Nil!16028) (Cons!16028 (h!21429 String!18902) (t!139366 List!16096)) )
))
(declare-fun noDuplicateTag!1039 (LexerInterface!2491 List!16094 List!16096) Bool)

(assert (=> b!1510990 (= e!966058 (noDuplicateTag!1039 thiss!13241 rules!1640 Nil!16028))))

(assert (= (and d!447540 res!680069) b!1510990))

(declare-fun m!1774788 () Bool)

(assert (=> d!447540 m!1774788))

(declare-fun m!1774790 () Bool)

(assert (=> b!1510990 m!1774790))

(assert (=> b!1510783 d!447540))

(declare-fun d!447542 () Bool)

(assert (=> d!447542 (= (array_inv!1654 (_keys!1756 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) (bvsge (size!12952 (_keys!1756 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1510798 d!447542))

(declare-fun d!447544 () Bool)

(assert (=> d!447544 (= (array_inv!1657 (_values!1741 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) (bvsge (size!12956 (_values!1741 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1510798 d!447544))

(declare-fun d!447546 () Bool)

(declare-fun validCacheMapUp!132 (MutableMap!1405) Bool)

(assert (=> d!447546 (= (valid!1164 cacheUp!616) (validCacheMapUp!132 (cache!1786 cacheUp!616)))))

(declare-fun bs!364351 () Bool)

(assert (= bs!364351 d!447546))

(declare-fun m!1774792 () Bool)

(assert (=> bs!364351 m!1774792))

(assert (=> b!1510781 d!447546))

(declare-fun d!447548 () Bool)

(assert (=> d!447548 (= (inv!21242 (tag!3102 (h!21427 rules!1640))) (= (mod (str.len (value!90542 (tag!3102 (h!21427 rules!1640)))) 2) 0))))

(assert (=> b!1510820 d!447548))

(declare-fun d!447550 () Bool)

(declare-fun res!680072 () Bool)

(declare-fun e!966061 () Bool)

(assert (=> d!447550 (=> (not res!680072) (not e!966061))))

(declare-fun semiInverseModEq!1068 (Int Int) Bool)

(assert (=> d!447550 (= res!680072 (semiInverseModEq!1068 (toChars!4046 (transformation!2838 (h!21427 rules!1640))) (toValue!4187 (transformation!2838 (h!21427 rules!1640)))))))

(assert (=> d!447550 (= (inv!21251 (transformation!2838 (h!21427 rules!1640))) e!966061)))

(declare-fun b!1510993 () Bool)

(declare-fun equivClasses!1027 (Int Int) Bool)

(assert (=> b!1510993 (= e!966061 (equivClasses!1027 (toChars!4046 (transformation!2838 (h!21427 rules!1640))) (toValue!4187 (transformation!2838 (h!21427 rules!1640)))))))

(assert (= (and d!447550 res!680072) b!1510993))

(declare-fun m!1774794 () Bool)

(assert (=> d!447550 m!1774794))

(declare-fun m!1774796 () Bool)

(assert (=> b!1510993 m!1774796))

(assert (=> b!1510820 d!447550))

(declare-fun d!447552 () Bool)

(declare-fun c!247795 () Bool)

(assert (=> d!447552 (= c!247795 ((_ is Node!5427) (c!247752 treated!70)))))

(declare-fun e!966066 () Bool)

(assert (=> d!447552 (= (inv!21244 (c!247752 treated!70)) e!966066)))

(declare-fun b!1511000 () Bool)

(declare-fun inv!21252 (Conc!5427) Bool)

(assert (=> b!1511000 (= e!966066 (inv!21252 (c!247752 treated!70)))))

(declare-fun b!1511001 () Bool)

(declare-fun e!966067 () Bool)

(assert (=> b!1511001 (= e!966066 e!966067)))

(declare-fun res!680075 () Bool)

(assert (=> b!1511001 (= res!680075 (not ((_ is Leaf!8049) (c!247752 treated!70))))))

(assert (=> b!1511001 (=> res!680075 e!966067)))

(declare-fun b!1511002 () Bool)

(declare-fun inv!21253 (Conc!5427) Bool)

(assert (=> b!1511002 (= e!966067 (inv!21253 (c!247752 treated!70)))))

(assert (= (and d!447552 c!247795) b!1511000))

(assert (= (and d!447552 (not c!247795)) b!1511001))

(assert (= (and b!1511001 (not res!680075)) b!1511002))

(declare-fun m!1774798 () Bool)

(assert (=> b!1511000 m!1774798))

(declare-fun m!1774800 () Bool)

(assert (=> b!1511002 m!1774800))

(assert (=> b!1510787 d!447552))

(declare-fun d!447554 () Bool)

(declare-fun c!247798 () Bool)

(assert (=> d!447554 (= c!247798 ((_ is Node!5428) (c!247753 acc!392)))))

(declare-fun e!966072 () Bool)

(assert (=> d!447554 (= (inv!21250 (c!247753 acc!392)) e!966072)))

(declare-fun b!1511009 () Bool)

(declare-fun inv!21254 (Conc!5428) Bool)

(assert (=> b!1511009 (= e!966072 (inv!21254 (c!247753 acc!392)))))

(declare-fun b!1511010 () Bool)

(declare-fun e!966073 () Bool)

(assert (=> b!1511010 (= e!966072 e!966073)))

(declare-fun res!680078 () Bool)

(assert (=> b!1511010 (= res!680078 (not ((_ is Leaf!8050) (c!247753 acc!392))))))

(assert (=> b!1511010 (=> res!680078 e!966073)))

(declare-fun b!1511011 () Bool)

(declare-fun inv!21255 (Conc!5428) Bool)

(assert (=> b!1511011 (= e!966073 (inv!21255 (c!247753 acc!392)))))

(assert (= (and d!447554 c!247798) b!1511009))

(assert (= (and d!447554 (not c!247798)) b!1511010))

(assert (= (and b!1511010 (not res!680078)) b!1511011))

(declare-fun m!1774802 () Bool)

(assert (=> b!1511009 m!1774802))

(declare-fun m!1774804 () Bool)

(assert (=> b!1511011 m!1774804))

(assert (=> b!1510808 d!447554))

(declare-fun d!447556 () Bool)

(assert (=> d!447556 (= (isEmpty!9916 rules!1640) ((_ is Nil!16026) rules!1640))))

(assert (=> b!1510785 d!447556))

(declare-fun d!447558 () Bool)

(declare-fun c!247799 () Bool)

(assert (=> d!447558 (= c!247799 ((_ is Node!5427) (c!247752 input!1102)))))

(declare-fun e!966074 () Bool)

(assert (=> d!447558 (= (inv!21244 (c!247752 input!1102)) e!966074)))

(declare-fun b!1511012 () Bool)

(assert (=> b!1511012 (= e!966074 (inv!21252 (c!247752 input!1102)))))

(declare-fun b!1511013 () Bool)

(declare-fun e!966075 () Bool)

(assert (=> b!1511013 (= e!966074 e!966075)))

(declare-fun res!680079 () Bool)

(assert (=> b!1511013 (= res!680079 (not ((_ is Leaf!8049) (c!247752 input!1102))))))

(assert (=> b!1511013 (=> res!680079 e!966075)))

(declare-fun b!1511014 () Bool)

(assert (=> b!1511014 (= e!966075 (inv!21253 (c!247752 input!1102)))))

(assert (= (and d!447558 c!247799) b!1511012))

(assert (= (and d!447558 (not c!247799)) b!1511013))

(assert (= (and b!1511013 (not res!680079)) b!1511014))

(declare-fun m!1774806 () Bool)

(assert (=> b!1511012 m!1774806))

(declare-fun m!1774808 () Bool)

(assert (=> b!1511014 m!1774808))

(assert (=> b!1510791 d!447558))

(declare-fun d!447560 () Bool)

(assert (=> d!447560 (= (list!6331 (++!4335 acc!392 (_1!8429 lt!525289))) (list!6332 (c!247753 (++!4335 acc!392 (_1!8429 lt!525289)))))))

(declare-fun bs!364352 () Bool)

(assert (= bs!364352 d!447560))

(declare-fun m!1774810 () Bool)

(assert (=> bs!364352 m!1774810))

(assert (=> b!1510811 d!447560))

(declare-fun d!447562 () Bool)

(declare-fun e!966077 () Bool)

(assert (=> d!447562 e!966077))

(declare-fun res!680081 () Bool)

(assert (=> d!447562 (=> (not res!680081) (not e!966077))))

(declare-fun e!966076 () Bool)

(assert (=> d!447562 (= res!680081 e!966076)))

(declare-fun c!247801 () Bool)

(declare-fun lt!525398 () tuple2!14860)

(assert (=> d!447562 (= c!247801 (> (size!12957 (_1!8429 lt!525398)) 0))))

(declare-fun e!966078 () tuple2!14860)

(assert (=> d!447562 (= lt!525398 e!966078)))

(declare-fun c!247800 () Bool)

(declare-fun lt!525399 () Option!2922)

(assert (=> d!447562 (= c!247800 ((_ is Some!2921) lt!525399))))

(assert (=> d!447562 (= lt!525399 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!447562 (= (lexRec!326 thiss!13241 rules!1640 totalInput!458) lt!525398)))

(declare-fun b!1511015 () Bool)

(declare-fun res!680082 () Bool)

(assert (=> b!1511015 (=> (not res!680082) (not e!966077))))

(assert (=> b!1511015 (= res!680082 (= (list!6331 (_1!8429 lt!525398)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 totalInput!458)))))))

(declare-fun b!1511016 () Bool)

(assert (=> b!1511016 (= e!966077 (= (list!6330 (_2!8429 lt!525398)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 totalInput!458)))))))

(declare-fun b!1511017 () Bool)

(assert (=> b!1511017 (= e!966076 (= (list!6330 (_2!8429 lt!525398)) (list!6330 totalInput!458)))))

(declare-fun b!1511018 () Bool)

(assert (=> b!1511018 (= e!966078 (tuple2!14861 (BalanceConc!10799 Empty!5428) totalInput!458))))

(declare-fun b!1511019 () Bool)

(declare-fun e!966079 () Bool)

(assert (=> b!1511019 (= e!966076 e!966079)))

(declare-fun res!680080 () Bool)

(assert (=> b!1511019 (= res!680080 (< (size!12958 (_2!8429 lt!525398)) (size!12958 totalInput!458)))))

(assert (=> b!1511019 (=> (not res!680080) (not e!966079))))

(declare-fun b!1511020 () Bool)

(assert (=> b!1511020 (= e!966079 (not (isEmpty!9917 (_1!8429 lt!525398))))))

(declare-fun b!1511021 () Bool)

(declare-fun lt!525400 () tuple2!14860)

(assert (=> b!1511021 (= e!966078 (tuple2!14861 (prepend!459 (_1!8429 lt!525400) (_1!8432 (v!22840 lt!525399))) (_2!8429 lt!525400)))))

(assert (=> b!1511021 (= lt!525400 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525399))))))

(assert (= (and d!447562 c!247800) b!1511021))

(assert (= (and d!447562 (not c!247800)) b!1511018))

(assert (= (and d!447562 c!247801) b!1511019))

(assert (= (and d!447562 (not c!247801)) b!1511017))

(assert (= (and b!1511019 res!680080) b!1511020))

(assert (= (and d!447562 res!680081) b!1511015))

(assert (= (and b!1511015 res!680082) b!1511016))

(declare-fun m!1774812 () Bool)

(assert (=> d!447562 m!1774812))

(declare-fun m!1774814 () Bool)

(assert (=> d!447562 m!1774814))

(declare-fun m!1774816 () Bool)

(assert (=> b!1511017 m!1774816))

(assert (=> b!1511017 m!1774432))

(declare-fun m!1774818 () Bool)

(assert (=> b!1511020 m!1774818))

(assert (=> b!1511016 m!1774816))

(assert (=> b!1511016 m!1774432))

(assert (=> b!1511016 m!1774432))

(declare-fun m!1774820 () Bool)

(assert (=> b!1511016 m!1774820))

(declare-fun m!1774822 () Bool)

(assert (=> b!1511015 m!1774822))

(assert (=> b!1511015 m!1774432))

(assert (=> b!1511015 m!1774432))

(assert (=> b!1511015 m!1774820))

(declare-fun m!1774824 () Bool)

(assert (=> b!1511021 m!1774824))

(declare-fun m!1774826 () Bool)

(assert (=> b!1511021 m!1774826))

(declare-fun m!1774828 () Bool)

(assert (=> b!1511019 m!1774828))

(declare-fun m!1774830 () Bool)

(assert (=> b!1511019 m!1774830))

(assert (=> b!1510811 d!447562))

(declare-fun d!447564 () Bool)

(assert (=> d!447564 (= (list!6331 (_1!8429 lt!525301)) (list!6332 (c!247753 (_1!8429 lt!525301))))))

(declare-fun bs!364353 () Bool)

(assert (= bs!364353 d!447564))

(declare-fun m!1774832 () Bool)

(assert (=> bs!364353 m!1774832))

(assert (=> b!1510811 d!447564))

(declare-fun b!1511033 () Bool)

(declare-fun e!966082 () Bool)

(declare-fun lt!525403 () BalanceConc!10798)

(assert (=> b!1511033 (= e!966082 (= (list!6331 lt!525403) (++!4334 (list!6331 acc!392) (list!6331 (_1!8429 lt!525289)))))))

(declare-fun b!1511031 () Bool)

(declare-fun res!680094 () Bool)

(assert (=> b!1511031 (=> (not res!680094) (not e!966082))))

(declare-fun height!806 (Conc!5428) Int)

(declare-fun ++!4337 (Conc!5428 Conc!5428) Conc!5428)

(assert (=> b!1511031 (= res!680094 (<= (height!806 (++!4337 (c!247753 acc!392) (c!247753 (_1!8429 lt!525289)))) (+ (max!0 (height!806 (c!247753 acc!392)) (height!806 (c!247753 (_1!8429 lt!525289)))) 1)))))

(declare-fun b!1511032 () Bool)

(declare-fun res!680093 () Bool)

(assert (=> b!1511032 (=> (not res!680093) (not e!966082))))

(assert (=> b!1511032 (= res!680093 (>= (height!806 (++!4337 (c!247753 acc!392) (c!247753 (_1!8429 lt!525289)))) (max!0 (height!806 (c!247753 acc!392)) (height!806 (c!247753 (_1!8429 lt!525289))))))))

(declare-fun d!447566 () Bool)

(assert (=> d!447566 e!966082))

(declare-fun res!680092 () Bool)

(assert (=> d!447566 (=> (not res!680092) (not e!966082))))

(declare-fun appendAssocInst!364 (Conc!5428 Conc!5428) Bool)

(assert (=> d!447566 (= res!680092 (appendAssocInst!364 (c!247753 acc!392) (c!247753 (_1!8429 lt!525289))))))

(assert (=> d!447566 (= lt!525403 (BalanceConc!10799 (++!4337 (c!247753 acc!392) (c!247753 (_1!8429 lt!525289)))))))

(assert (=> d!447566 (= (++!4335 acc!392 (_1!8429 lt!525289)) lt!525403)))

(declare-fun b!1511030 () Bool)

(declare-fun res!680091 () Bool)

(assert (=> b!1511030 (=> (not res!680091) (not e!966082))))

(assert (=> b!1511030 (= res!680091 (isBalanced!1603 (++!4337 (c!247753 acc!392) (c!247753 (_1!8429 lt!525289)))))))

(assert (= (and d!447566 res!680092) b!1511030))

(assert (= (and b!1511030 res!680091) b!1511031))

(assert (= (and b!1511031 res!680094) b!1511032))

(assert (= (and b!1511032 res!680093) b!1511033))

(declare-fun m!1774834 () Bool)

(assert (=> b!1511030 m!1774834))

(assert (=> b!1511030 m!1774834))

(declare-fun m!1774836 () Bool)

(assert (=> b!1511030 m!1774836))

(declare-fun m!1774838 () Bool)

(assert (=> d!447566 m!1774838))

(assert (=> d!447566 m!1774834))

(declare-fun m!1774840 () Bool)

(assert (=> b!1511032 m!1774840))

(declare-fun m!1774842 () Bool)

(assert (=> b!1511032 m!1774842))

(assert (=> b!1511032 m!1774840))

(declare-fun m!1774844 () Bool)

(assert (=> b!1511032 m!1774844))

(assert (=> b!1511032 m!1774834))

(declare-fun m!1774846 () Bool)

(assert (=> b!1511032 m!1774846))

(assert (=> b!1511032 m!1774834))

(assert (=> b!1511032 m!1774842))

(declare-fun m!1774848 () Bool)

(assert (=> b!1511033 m!1774848))

(assert (=> b!1511033 m!1774438))

(declare-fun m!1774850 () Bool)

(assert (=> b!1511033 m!1774850))

(assert (=> b!1511033 m!1774438))

(assert (=> b!1511033 m!1774850))

(declare-fun m!1774852 () Bool)

(assert (=> b!1511033 m!1774852))

(assert (=> b!1511031 m!1774840))

(assert (=> b!1511031 m!1774842))

(assert (=> b!1511031 m!1774840))

(assert (=> b!1511031 m!1774844))

(assert (=> b!1511031 m!1774834))

(assert (=> b!1511031 m!1774846))

(assert (=> b!1511031 m!1774834))

(assert (=> b!1511031 m!1774842))

(assert (=> b!1510811 d!447566))

(declare-fun d!447568 () Bool)

(declare-fun e!966084 () Bool)

(assert (=> d!447568 e!966084))

(declare-fun res!680096 () Bool)

(assert (=> d!447568 (=> (not res!680096) (not e!966084))))

(declare-fun e!966083 () Bool)

(assert (=> d!447568 (= res!680096 e!966083)))

(declare-fun c!247806 () Bool)

(declare-fun lt!525404 () tuple2!14860)

(assert (=> d!447568 (= c!247806 (> (size!12957 (_1!8429 lt!525404)) 0))))

(declare-fun e!966085 () tuple2!14860)

(assert (=> d!447568 (= lt!525404 e!966085)))

(declare-fun c!247805 () Bool)

(declare-fun lt!525405 () Option!2922)

(assert (=> d!447568 (= c!247805 ((_ is Some!2921) lt!525405))))

(assert (=> d!447568 (= lt!525405 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 input!1102))))

(assert (=> d!447568 (= (lexRec!326 thiss!13241 rules!1640 input!1102) lt!525404)))

(declare-fun b!1511034 () Bool)

(declare-fun res!680097 () Bool)

(assert (=> b!1511034 (=> (not res!680097) (not e!966084))))

(assert (=> b!1511034 (= res!680097 (= (list!6331 (_1!8429 lt!525404)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 input!1102)))))))

(declare-fun b!1511035 () Bool)

(assert (=> b!1511035 (= e!966084 (= (list!6330 (_2!8429 lt!525404)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 input!1102)))))))

(declare-fun b!1511036 () Bool)

(assert (=> b!1511036 (= e!966083 (= (list!6330 (_2!8429 lt!525404)) (list!6330 input!1102)))))

(declare-fun b!1511037 () Bool)

(assert (=> b!1511037 (= e!966085 (tuple2!14861 (BalanceConc!10799 Empty!5428) input!1102))))

(declare-fun b!1511038 () Bool)

(declare-fun e!966086 () Bool)

(assert (=> b!1511038 (= e!966083 e!966086)))

(declare-fun res!680095 () Bool)

(assert (=> b!1511038 (= res!680095 (< (size!12958 (_2!8429 lt!525404)) (size!12958 input!1102)))))

(assert (=> b!1511038 (=> (not res!680095) (not e!966086))))

(declare-fun b!1511039 () Bool)

(assert (=> b!1511039 (= e!966086 (not (isEmpty!9917 (_1!8429 lt!525404))))))

(declare-fun b!1511040 () Bool)

(declare-fun lt!525406 () tuple2!14860)

(assert (=> b!1511040 (= e!966085 (tuple2!14861 (prepend!459 (_1!8429 lt!525406) (_1!8432 (v!22840 lt!525405))) (_2!8429 lt!525406)))))

(assert (=> b!1511040 (= lt!525406 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525405))))))

(assert (= (and d!447568 c!247805) b!1511040))

(assert (= (and d!447568 (not c!247805)) b!1511037))

(assert (= (and d!447568 c!247806) b!1511038))

(assert (= (and d!447568 (not c!247806)) b!1511036))

(assert (= (and b!1511038 res!680095) b!1511039))

(assert (= (and d!447568 res!680096) b!1511034))

(assert (= (and b!1511034 res!680097) b!1511035))

(declare-fun m!1774854 () Bool)

(assert (=> d!447568 m!1774854))

(assert (=> d!447568 m!1774370))

(declare-fun m!1774856 () Bool)

(assert (=> b!1511036 m!1774856))

(assert (=> b!1511036 m!1774434))

(declare-fun m!1774858 () Bool)

(assert (=> b!1511039 m!1774858))

(assert (=> b!1511035 m!1774856))

(assert (=> b!1511035 m!1774434))

(assert (=> b!1511035 m!1774434))

(declare-fun m!1774860 () Bool)

(assert (=> b!1511035 m!1774860))

(declare-fun m!1774862 () Bool)

(assert (=> b!1511034 m!1774862))

(assert (=> b!1511034 m!1774434))

(assert (=> b!1511034 m!1774434))

(assert (=> b!1511034 m!1774860))

(declare-fun m!1774864 () Bool)

(assert (=> b!1511040 m!1774864))

(declare-fun m!1774866 () Bool)

(assert (=> b!1511040 m!1774866))

(declare-fun m!1774868 () Bool)

(assert (=> b!1511038 m!1774868))

(declare-fun m!1774870 () Bool)

(assert (=> b!1511038 m!1774870))

(assert (=> b!1510811 d!447568))

(declare-fun d!447570 () Bool)

(assert (=> d!447570 (= (inv!21248 treated!70) (isBalanced!1604 (c!247752 treated!70)))))

(declare-fun bs!364354 () Bool)

(assert (= bs!364354 d!447570))

(declare-fun m!1774872 () Bool)

(assert (=> bs!364354 m!1774872))

(assert (=> start!140960 d!447570))

(declare-fun d!447572 () Bool)

(assert (=> d!447572 (= (inv!21248 input!1102) (isBalanced!1604 (c!247752 input!1102)))))

(declare-fun bs!364355 () Bool)

(assert (= bs!364355 d!447572))

(declare-fun m!1774874 () Bool)

(assert (=> bs!364355 m!1774874))

(assert (=> start!140960 d!447572))

(declare-fun d!447574 () Bool)

(declare-fun res!680100 () Bool)

(declare-fun e!966089 () Bool)

(assert (=> d!447574 (=> (not res!680100) (not e!966089))))

(assert (=> d!447574 (= res!680100 ((_ is HashMap!1406) (cache!1787 cacheFurthestNullable!64)))))

(assert (=> d!447574 (= (inv!21249 cacheFurthestNullable!64) e!966089)))

(declare-fun b!1511043 () Bool)

(assert (=> b!1511043 (= e!966089 (validCacheMapFurthestNullable!45 (cache!1787 cacheFurthestNullable!64) (totalInput!2288 cacheFurthestNullable!64)))))

(assert (= (and d!447574 res!680100) b!1511043))

(declare-fun m!1774876 () Bool)

(assert (=> b!1511043 m!1774876))

(assert (=> start!140960 d!447574))

(declare-fun d!447576 () Bool)

(declare-fun res!680103 () Bool)

(declare-fun e!966092 () Bool)

(assert (=> d!447576 (=> (not res!680103) (not e!966092))))

(assert (=> d!447576 (= res!680103 ((_ is HashMap!1404) (cache!1785 cacheDown!629)))))

(assert (=> d!447576 (= (inv!21247 cacheDown!629) e!966092)))

(declare-fun b!1511046 () Bool)

(declare-fun validCacheMapDown!132 (MutableMap!1404) Bool)

(assert (=> b!1511046 (= e!966092 (validCacheMapDown!132 (cache!1785 cacheDown!629)))))

(assert (= (and d!447576 res!680103) b!1511046))

(declare-fun m!1774878 () Bool)

(assert (=> b!1511046 m!1774878))

(assert (=> start!140960 d!447576))

(declare-fun d!447578 () Bool)

(assert (=> d!447578 (= (inv!21248 totalInput!458) (isBalanced!1604 (c!247752 totalInput!458)))))

(declare-fun bs!364356 () Bool)

(assert (= bs!364356 d!447578))

(declare-fun m!1774880 () Bool)

(assert (=> bs!364356 m!1774880))

(assert (=> start!140960 d!447578))

(declare-fun d!447580 () Bool)

(assert (=> d!447580 (= (inv!21245 acc!392) (isBalanced!1603 (c!247753 acc!392)))))

(declare-fun bs!364357 () Bool)

(assert (= bs!364357 d!447580))

(declare-fun m!1774882 () Bool)

(assert (=> bs!364357 m!1774882))

(assert (=> start!140960 d!447580))

(declare-fun d!447582 () Bool)

(declare-fun res!680106 () Bool)

(declare-fun e!966095 () Bool)

(assert (=> d!447582 (=> (not res!680106) (not e!966095))))

(assert (=> d!447582 (= res!680106 ((_ is HashMap!1405) (cache!1786 cacheUp!616)))))

(assert (=> d!447582 (= (inv!21246 cacheUp!616) e!966095)))

(declare-fun b!1511049 () Bool)

(assert (=> b!1511049 (= e!966095 (validCacheMapUp!132 (cache!1786 cacheUp!616)))))

(assert (= (and d!447582 res!680106) b!1511049))

(assert (=> b!1511049 m!1774792))

(assert (=> start!140960 d!447582))

(declare-fun d!447584 () Bool)

(declare-fun e!966096 () Bool)

(assert (=> d!447584 e!966096))

(declare-fun res!680107 () Bool)

(assert (=> d!447584 (=> res!680107 e!966096)))

(declare-fun lt!525407 () Bool)

(assert (=> d!447584 (= res!680107 (not lt!525407))))

(assert (=> d!447584 (= lt!525407 (= lt!525272 (drop!757 lt!525271 (- (size!12960 lt!525271) (size!12960 lt!525272)))))))

(assert (=> d!447584 (= (isSuffix!297 lt!525272 lt!525271) lt!525407)))

(declare-fun b!1511050 () Bool)

(assert (=> b!1511050 (= e!966096 (>= (size!12960 lt!525271) (size!12960 lt!525272)))))

(assert (= (and d!447584 (not res!680107)) b!1511050))

(assert (=> d!447584 m!1774700))

(assert (=> d!447584 m!1774774))

(declare-fun m!1774884 () Bool)

(assert (=> d!447584 m!1774884))

(assert (=> b!1511050 m!1774700))

(assert (=> b!1511050 m!1774774))

(assert (=> b!1510792 d!447584))

(declare-fun d!447586 () Bool)

(declare-fun e!966097 () Bool)

(assert (=> d!447586 e!966097))

(declare-fun res!680108 () Bool)

(assert (=> d!447586 (=> res!680108 e!966097)))

(declare-fun lt!525408 () Bool)

(assert (=> d!447586 (= res!680108 (not lt!525408))))

(assert (=> d!447586 (= lt!525408 (= lt!525272 (drop!757 lt!525273 (- (size!12960 lt!525273) (size!12960 lt!525272)))))))

(assert (=> d!447586 (= (isSuffix!297 lt!525272 lt!525273) lt!525408)))

(declare-fun b!1511051 () Bool)

(assert (=> b!1511051 (= e!966097 (>= (size!12960 lt!525273) (size!12960 lt!525272)))))

(assert (= (and d!447586 (not res!680108)) b!1511051))

(declare-fun m!1774886 () Bool)

(assert (=> d!447586 m!1774886))

(assert (=> d!447586 m!1774774))

(declare-fun m!1774888 () Bool)

(assert (=> d!447586 m!1774888))

(assert (=> b!1511051 m!1774886))

(assert (=> b!1511051 m!1774774))

(assert (=> b!1510792 d!447586))

(declare-fun d!447588 () Bool)

(assert (=> d!447588 (isSuffix!297 lt!525272 (++!4332 lt!525296 lt!525272))))

(declare-fun lt!525409 () Unit!25729)

(assert (=> d!447588 (= lt!525409 (choose!9150 lt!525296 lt!525272))))

(assert (=> d!447588 (= (lemmaConcatTwoListThenFSndIsSuffix!275 lt!525296 lt!525272) lt!525409)))

(declare-fun bs!364358 () Bool)

(assert (= bs!364358 d!447588))

(assert (=> bs!364358 m!1774430))

(assert (=> bs!364358 m!1774430))

(declare-fun m!1774890 () Bool)

(assert (=> bs!364358 m!1774890))

(declare-fun m!1774892 () Bool)

(assert (=> bs!364358 m!1774892))

(assert (=> b!1510792 d!447588))

(declare-fun d!447590 () Bool)

(declare-fun c!247807 () Bool)

(assert (=> d!447590 (= c!247807 ((_ is Node!5427) (c!247752 totalInput!458)))))

(declare-fun e!966098 () Bool)

(assert (=> d!447590 (= (inv!21244 (c!247752 totalInput!458)) e!966098)))

(declare-fun b!1511052 () Bool)

(assert (=> b!1511052 (= e!966098 (inv!21252 (c!247752 totalInput!458)))))

(declare-fun b!1511053 () Bool)

(declare-fun e!966099 () Bool)

(assert (=> b!1511053 (= e!966098 e!966099)))

(declare-fun res!680109 () Bool)

(assert (=> b!1511053 (= res!680109 (not ((_ is Leaf!8049) (c!247752 totalInput!458))))))

(assert (=> b!1511053 (=> res!680109 e!966099)))

(declare-fun b!1511054 () Bool)

(assert (=> b!1511054 (= e!966099 (inv!21253 (c!247752 totalInput!458)))))

(assert (= (and d!447590 c!247807) b!1511052))

(assert (= (and d!447590 (not c!247807)) b!1511053))

(assert (= (and b!1511053 (not res!680109)) b!1511054))

(declare-fun m!1774894 () Bool)

(assert (=> b!1511052 m!1774894))

(declare-fun m!1774896 () Bool)

(assert (=> b!1511054 m!1774896))

(assert (=> b!1510789 d!447590))

(declare-fun d!447592 () Bool)

(assert (=> d!447592 (= (list!6330 (_2!8429 lt!525301)) (list!6333 (c!247752 (_2!8429 lt!525301))))))

(declare-fun bs!364359 () Bool)

(assert (= bs!364359 d!447592))

(declare-fun m!1774898 () Bool)

(assert (=> bs!364359 m!1774898))

(assert (=> b!1510809 d!447592))

(declare-fun d!447594 () Bool)

(assert (=> d!447594 (= (list!6330 (_2!8429 lt!525289)) (list!6333 (c!247752 (_2!8429 lt!525289))))))

(declare-fun bs!364360 () Bool)

(assert (= bs!364360 d!447594))

(declare-fun m!1774900 () Bool)

(assert (=> bs!364360 m!1774900))

(assert (=> b!1510809 d!447594))

(declare-fun d!447596 () Bool)

(assert (=> d!447596 (= (valid!1165 cacheFurthestNullable!64) (validCacheMapFurthestNullable!45 (cache!1787 cacheFurthestNullable!64) (totalInput!2288 cacheFurthestNullable!64)))))

(declare-fun bs!364361 () Bool)

(assert (= bs!364361 d!447596))

(assert (=> bs!364361 m!1774876))

(assert (=> b!1510810 d!447596))

(declare-fun d!447598 () Bool)

(assert (=> d!447598 (= (isEmpty!9915 (list!6330 (_2!8429 lt!525293))) ((_ is Nil!16024) (list!6330 (_2!8429 lt!525293))))))

(assert (=> b!1510777 d!447598))

(declare-fun d!447600 () Bool)

(assert (=> d!447600 (= (list!6330 (_2!8429 lt!525293)) (list!6333 (c!247752 (_2!8429 lt!525293))))))

(declare-fun bs!364362 () Bool)

(assert (= bs!364362 d!447600))

(declare-fun m!1774902 () Bool)

(assert (=> bs!364362 m!1774902))

(assert (=> b!1510777 d!447600))

(declare-fun b!1511079 () Bool)

(declare-fun e!966112 () Bool)

(declare-fun e!966113 () Bool)

(assert (=> b!1511079 (= e!966112 e!966113)))

(declare-fun res!680133 () Bool)

(assert (=> b!1511079 (=> (not res!680133) (not e!966113))))

(declare-fun lt!525434 () tuple4!660)

(assert (=> b!1511079 (= res!680133 (= (_1!8432 (get!4729 (_1!8433 lt!525434))) (_1!8435 (get!4730 (maxPrefix!1206 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun b!1511080 () Bool)

(declare-datatypes ((tuple4!662 0))(
  ( (tuple4!663 (_1!8436 Option!2922) (_2!8436 CacheUp!836) (_3!1001 CacheFurthestNullable!260) (_4!331 CacheDown!840)) )
))
(declare-fun e!966117 () tuple4!662)

(declare-fun lt!525429 () tuple4!660)

(assert (=> b!1511080 (= e!966117 (tuple4!663 (_1!8433 lt!525429) (_2!8433 lt!525429) (_4!330 lt!525429) (_3!1000 lt!525429)))))

(declare-fun call!100319 () tuple4!660)

(assert (=> b!1511080 (= lt!525429 call!100319)))

(declare-fun b!1511081 () Bool)

(declare-fun e!966114 () Bool)

(declare-fun e!966115 () Bool)

(assert (=> b!1511081 (= e!966114 e!966115)))

(declare-fun res!680139 () Bool)

(assert (=> b!1511081 (=> (not res!680139) (not e!966115))))

(assert (=> b!1511081 (= res!680139 (= (_1!8432 (get!4729 (_1!8433 lt!525434))) (_1!8435 (get!4730 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun bm!100314 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!9 (LexerInterface!2491 Rule!5476 BalanceConc!10796 BalanceConc!10796 CacheUp!836 CacheDown!840 CacheFurthestNullable!260) tuple4!660)

(assert (=> bm!100314 (= call!100319 (maxPrefixOneRuleZipperSequenceV3Mem!9 thiss!13241 (h!21427 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1511082 () Bool)

(declare-fun lt!525435 () tuple4!660)

(declare-fun lt!525436 () tuple4!660)

(assert (=> b!1511082 (= e!966117 (tuple4!663 (ite (and ((_ is None!2921) (_1!8433 lt!525435)) ((_ is None!2921) (_1!8433 lt!525436))) None!2921 (ite ((_ is None!2921) (_1!8433 lt!525436)) (_1!8433 lt!525435) (ite ((_ is None!2921) (_1!8433 lt!525435)) (_1!8433 lt!525436) (ite (>= (size!12955 (_1!8432 (v!22840 (_1!8433 lt!525435)))) (size!12955 (_1!8432 (v!22840 (_1!8433 lt!525436))))) (_1!8433 lt!525435) (_1!8433 lt!525436))))) (_2!8433 lt!525436) (_4!330 lt!525436) (_3!1000 lt!525436)))))

(assert (=> b!1511082 (= lt!525435 call!100319)))

(assert (=> b!1511082 (= lt!525436 (maxPrefixZipperSequenceV3Mem!22 thiss!13241 (t!139360 rules!1640) input!1102 totalInput!458 (_2!8433 lt!525435) (_3!1000 lt!525435) (_4!330 lt!525435)))))

(declare-fun d!447602 () Bool)

(declare-fun e!966116 () Bool)

(assert (=> d!447602 e!966116))

(declare-fun res!680131 () Bool)

(assert (=> d!447602 (=> (not res!680131) (not e!966116))))

(assert (=> d!447602 (= res!680131 (= (isDefined!2349 (_1!8433 lt!525434)) (isDefined!2350 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 input!1102)))))))

(declare-fun lt!525431 () tuple4!662)

(assert (=> d!447602 (= lt!525434 (tuple4!661 (_1!8436 lt!525431) (_2!8436 lt!525431) (_4!331 lt!525431) (_3!1001 lt!525431)))))

(assert (=> d!447602 (= lt!525431 e!966117)))

(declare-fun c!247810 () Bool)

(assert (=> d!447602 (= c!247810 (and ((_ is Cons!16026) rules!1640) ((_ is Nil!16026) (t!139360 rules!1640))))))

(declare-fun lt!525428 () Unit!25729)

(declare-fun lt!525433 () Unit!25729)

(assert (=> d!447602 (= lt!525428 lt!525433)))

(declare-fun lt!525432 () List!16092)

(declare-fun lt!525430 () List!16092)

(assert (=> d!447602 (isPrefix!1216 lt!525432 lt!525430)))

(assert (=> d!447602 (= lt!525433 (lemmaIsPrefixRefl!846 lt!525432 lt!525430))))

(assert (=> d!447602 (= lt!525430 (list!6330 input!1102))))

(assert (=> d!447602 (= lt!525432 (list!6330 input!1102))))

(assert (=> d!447602 (rulesValidInductive!854 thiss!13241 rules!1640)))

(assert (=> d!447602 (= (maxPrefixZipperSequenceV3Mem!22 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!525434)))

(declare-fun b!1511083 () Bool)

(declare-fun res!680132 () Bool)

(assert (=> b!1511083 (=> (not res!680132) (not e!966116))))

(assert (=> b!1511083 (= res!680132 (valid!1164 (_2!8433 lt!525434)))))

(declare-fun b!1511084 () Bool)

(assert (=> b!1511084 (= e!966113 (= (list!6330 (_2!8432 (get!4729 (_1!8433 lt!525434)))) (_2!8435 (get!4730 (maxPrefix!1206 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun b!1511085 () Bool)

(assert (=> b!1511085 (= e!966116 (= (totalInput!2288 (_4!330 lt!525434)) totalInput!458))))

(declare-fun b!1511086 () Bool)

(assert (=> b!1511086 (= e!966115 (= (list!6330 (_2!8432 (get!4729 (_1!8433 lt!525434)))) (_2!8435 (get!4730 (maxPrefixZipper!257 thiss!13241 rules!1640 (list!6330 input!1102))))))))

(declare-fun b!1511087 () Bool)

(declare-fun res!680137 () Bool)

(assert (=> b!1511087 (=> (not res!680137) (not e!966116))))

(assert (=> b!1511087 (= res!680137 (valid!1165 (_4!330 lt!525434)))))

(declare-fun b!1511088 () Bool)

(declare-fun res!680130 () Bool)

(assert (=> b!1511088 (=> (not res!680130) (not e!966116))))

(assert (=> b!1511088 (= res!680130 e!966114)))

(declare-fun res!680134 () Bool)

(assert (=> b!1511088 (=> res!680134 e!966114)))

(assert (=> b!1511088 (= res!680134 (not (isDefined!2349 (_1!8433 lt!525434))))))

(declare-fun b!1511089 () Bool)

(declare-fun res!680136 () Bool)

(assert (=> b!1511089 (=> (not res!680136) (not e!966116))))

(assert (=> b!1511089 (= res!680136 (valid!1166 (_3!1000 lt!525434)))))

(declare-fun b!1511090 () Bool)

(declare-fun res!680138 () Bool)

(assert (=> b!1511090 (=> (not res!680138) (not e!966116))))

(assert (=> b!1511090 (= res!680138 e!966112)))

(declare-fun res!680135 () Bool)

(assert (=> b!1511090 (=> res!680135 e!966112)))

(assert (=> b!1511090 (= res!680135 (not (isDefined!2349 (_1!8433 lt!525434))))))

(assert (= (and d!447602 c!247810) b!1511080))

(assert (= (and d!447602 (not c!247810)) b!1511082))

(assert (= (or b!1511080 b!1511082) bm!100314))

(assert (= (and d!447602 res!680131) b!1511088))

(assert (= (and b!1511088 (not res!680134)) b!1511081))

(assert (= (and b!1511081 res!680139) b!1511086))

(assert (= (and b!1511088 res!680130) b!1511090))

(assert (= (and b!1511090 (not res!680135)) b!1511079))

(assert (= (and b!1511079 res!680133) b!1511084))

(assert (= (and b!1511090 res!680138) b!1511083))

(assert (= (and b!1511083 res!680132) b!1511089))

(assert (= (and b!1511089 res!680136) b!1511087))

(assert (= (and b!1511087 res!680137) b!1511085))

(declare-fun m!1774904 () Bool)

(assert (=> b!1511088 m!1774904))

(declare-fun m!1774906 () Bool)

(assert (=> b!1511082 m!1774906))

(assert (=> d!447602 m!1774434))

(assert (=> d!447602 m!1774676))

(assert (=> d!447602 m!1774434))

(declare-fun m!1774908 () Bool)

(assert (=> d!447602 m!1774908))

(assert (=> d!447602 m!1774682))

(assert (=> d!447602 m!1774904))

(assert (=> d!447602 m!1774676))

(assert (=> d!447602 m!1774684))

(declare-fun m!1774910 () Bool)

(assert (=> d!447602 m!1774910))

(declare-fun m!1774912 () Bool)

(assert (=> b!1511079 m!1774912))

(assert (=> b!1511079 m!1774434))

(assert (=> b!1511079 m!1774434))

(assert (=> b!1511079 m!1774690))

(assert (=> b!1511079 m!1774690))

(assert (=> b!1511079 m!1774692))

(declare-fun m!1774914 () Bool)

(assert (=> b!1511087 m!1774914))

(assert (=> b!1511090 m!1774904))

(declare-fun m!1774916 () Bool)

(assert (=> b!1511083 m!1774916))

(declare-fun m!1774918 () Bool)

(assert (=> b!1511089 m!1774918))

(assert (=> b!1511084 m!1774690))

(assert (=> b!1511084 m!1774692))

(assert (=> b!1511084 m!1774912))

(declare-fun m!1774920 () Bool)

(assert (=> b!1511084 m!1774920))

(assert (=> b!1511084 m!1774434))

(assert (=> b!1511084 m!1774690))

(assert (=> b!1511084 m!1774434))

(assert (=> b!1511086 m!1774912))

(assert (=> b!1511086 m!1774676))

(assert (=> b!1511086 m!1774678))

(assert (=> b!1511086 m!1774434))

(assert (=> b!1511086 m!1774676))

(assert (=> b!1511086 m!1774434))

(assert (=> b!1511086 m!1774920))

(assert (=> b!1511081 m!1774912))

(assert (=> b!1511081 m!1774434))

(assert (=> b!1511081 m!1774434))

(assert (=> b!1511081 m!1774676))

(assert (=> b!1511081 m!1774676))

(assert (=> b!1511081 m!1774678))

(declare-fun m!1774922 () Bool)

(assert (=> bm!100314 m!1774922))

(assert (=> b!1510795 d!447602))

(declare-fun d!447604 () Bool)

(declare-fun c!247811 () Bool)

(assert (=> d!447604 (= c!247811 ((_ is Node!5427) (c!247752 (totalInput!2288 cacheFurthestNullable!64))))))

(declare-fun e!966118 () Bool)

(assert (=> d!447604 (= (inv!21244 (c!247752 (totalInput!2288 cacheFurthestNullable!64))) e!966118)))

(declare-fun b!1511091 () Bool)

(assert (=> b!1511091 (= e!966118 (inv!21252 (c!247752 (totalInput!2288 cacheFurthestNullable!64))))))

(declare-fun b!1511092 () Bool)

(declare-fun e!966119 () Bool)

(assert (=> b!1511092 (= e!966118 e!966119)))

(declare-fun res!680140 () Bool)

(assert (=> b!1511092 (= res!680140 (not ((_ is Leaf!8049) (c!247752 (totalInput!2288 cacheFurthestNullable!64)))))))

(assert (=> b!1511092 (=> res!680140 e!966119)))

(declare-fun b!1511093 () Bool)

(assert (=> b!1511093 (= e!966119 (inv!21253 (c!247752 (totalInput!2288 cacheFurthestNullable!64))))))

(assert (= (and d!447604 c!247811) b!1511091))

(assert (= (and d!447604 (not c!247811)) b!1511092))

(assert (= (and b!1511092 (not res!680140)) b!1511093))

(declare-fun m!1774924 () Bool)

(assert (=> b!1511091 m!1774924))

(declare-fun m!1774926 () Bool)

(assert (=> b!1511093 m!1774926))

(assert (=> b!1510796 d!447604))

(declare-fun d!447606 () Bool)

(assert (=> d!447606 (= (valid!1166 cacheDown!629) (validCacheMapDown!132 (cache!1785 cacheDown!629)))))

(declare-fun bs!364363 () Bool)

(assert (= bs!364363 d!447606))

(assert (=> bs!364363 m!1774878))

(assert (=> b!1510817 d!447606))

(declare-fun d!447608 () Bool)

(assert (=> d!447608 (= (list!6331 acc!392) (list!6332 (c!247753 acc!392)))))

(declare-fun bs!364364 () Bool)

(assert (= bs!364364 d!447608))

(declare-fun m!1774928 () Bool)

(assert (=> bs!364364 m!1774928))

(assert (=> b!1510778 d!447608))

(declare-fun d!447610 () Bool)

(assert (=> d!447610 (= (list!6331 (_1!8429 lt!525293)) (list!6332 (c!247753 (_1!8429 lt!525293))))))

(declare-fun bs!364365 () Bool)

(assert (= bs!364365 d!447610))

(declare-fun m!1774930 () Bool)

(assert (=> bs!364365 m!1774930))

(assert (=> b!1510778 d!447610))

(declare-fun d!447612 () Bool)

(declare-fun e!966121 () Bool)

(assert (=> d!447612 e!966121))

(declare-fun res!680142 () Bool)

(assert (=> d!447612 (=> (not res!680142) (not e!966121))))

(declare-fun e!966120 () Bool)

(assert (=> d!447612 (= res!680142 e!966120)))

(declare-fun c!247813 () Bool)

(declare-fun lt!525437 () tuple2!14860)

(assert (=> d!447612 (= c!247813 (> (size!12957 (_1!8429 lt!525437)) 0))))

(declare-fun e!966122 () tuple2!14860)

(assert (=> d!447612 (= lt!525437 e!966122)))

(declare-fun c!247812 () Bool)

(declare-fun lt!525438 () Option!2922)

(assert (=> d!447612 (= c!247812 ((_ is Some!2921) lt!525438))))

(assert (=> d!447612 (= lt!525438 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 treated!70))))

(assert (=> d!447612 (= (lexRec!326 thiss!13241 rules!1640 treated!70) lt!525437)))

(declare-fun b!1511094 () Bool)

(declare-fun res!680143 () Bool)

(assert (=> b!1511094 (=> (not res!680143) (not e!966121))))

(assert (=> b!1511094 (= res!680143 (= (list!6331 (_1!8429 lt!525437)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 treated!70)))))))

(declare-fun b!1511095 () Bool)

(assert (=> b!1511095 (= e!966121 (= (list!6330 (_2!8429 lt!525437)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 treated!70)))))))

(declare-fun b!1511096 () Bool)

(assert (=> b!1511096 (= e!966120 (= (list!6330 (_2!8429 lt!525437)) (list!6330 treated!70)))))

(declare-fun b!1511097 () Bool)

(assert (=> b!1511097 (= e!966122 (tuple2!14861 (BalanceConc!10799 Empty!5428) treated!70))))

(declare-fun b!1511098 () Bool)

(declare-fun e!966123 () Bool)

(assert (=> b!1511098 (= e!966120 e!966123)))

(declare-fun res!680141 () Bool)

(assert (=> b!1511098 (= res!680141 (< (size!12958 (_2!8429 lt!525437)) (size!12958 treated!70)))))

(assert (=> b!1511098 (=> (not res!680141) (not e!966123))))

(declare-fun b!1511099 () Bool)

(assert (=> b!1511099 (= e!966123 (not (isEmpty!9917 (_1!8429 lt!525437))))))

(declare-fun b!1511100 () Bool)

(declare-fun lt!525439 () tuple2!14860)

(assert (=> b!1511100 (= e!966122 (tuple2!14861 (prepend!459 (_1!8429 lt!525439) (_1!8432 (v!22840 lt!525438))) (_2!8429 lt!525439)))))

(assert (=> b!1511100 (= lt!525439 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525438))))))

(assert (= (and d!447612 c!247812) b!1511100))

(assert (= (and d!447612 (not c!247812)) b!1511097))

(assert (= (and d!447612 c!247813) b!1511098))

(assert (= (and d!447612 (not c!247813)) b!1511096))

(assert (= (and b!1511098 res!680141) b!1511099))

(assert (= (and d!447612 res!680142) b!1511094))

(assert (= (and b!1511094 res!680143) b!1511095))

(declare-fun m!1774932 () Bool)

(assert (=> d!447612 m!1774932))

(declare-fun m!1774934 () Bool)

(assert (=> d!447612 m!1774934))

(declare-fun m!1774936 () Bool)

(assert (=> b!1511096 m!1774936))

(assert (=> b!1511096 m!1774436))

(declare-fun m!1774938 () Bool)

(assert (=> b!1511099 m!1774938))

(assert (=> b!1511095 m!1774936))

(assert (=> b!1511095 m!1774436))

(assert (=> b!1511095 m!1774436))

(declare-fun m!1774940 () Bool)

(assert (=> b!1511095 m!1774940))

(declare-fun m!1774942 () Bool)

(assert (=> b!1511094 m!1774942))

(assert (=> b!1511094 m!1774436))

(assert (=> b!1511094 m!1774436))

(assert (=> b!1511094 m!1774940))

(declare-fun m!1774944 () Bool)

(assert (=> b!1511100 m!1774944))

(declare-fun m!1774946 () Bool)

(assert (=> b!1511100 m!1774946))

(declare-fun m!1774948 () Bool)

(assert (=> b!1511098 m!1774948))

(declare-fun m!1774950 () Bool)

(assert (=> b!1511098 m!1774950))

(assert (=> b!1510778 d!447612))

(declare-fun d!447614 () Bool)

(declare-fun e!966124 () Bool)

(assert (=> d!447614 e!966124))

(declare-fun res!680144 () Bool)

(assert (=> d!447614 (=> (not res!680144) (not e!966124))))

(assert (=> d!447614 (= res!680144 (isBalanced!1603 (prepend!460 (c!247753 (_1!8429 lt!525275)) (_1!8432 (v!22840 lt!525274)))))))

(declare-fun lt!525440 () BalanceConc!10798)

(assert (=> d!447614 (= lt!525440 (BalanceConc!10799 (prepend!460 (c!247753 (_1!8429 lt!525275)) (_1!8432 (v!22840 lt!525274)))))))

(assert (=> d!447614 (= (prepend!459 (_1!8429 lt!525275) (_1!8432 (v!22840 lt!525274))) lt!525440)))

(declare-fun b!1511101 () Bool)

(assert (=> b!1511101 (= e!966124 (= (list!6331 lt!525440) (Cons!16025 (_1!8432 (v!22840 lt!525274)) (list!6331 (_1!8429 lt!525275)))))))

(assert (= (and d!447614 res!680144) b!1511101))

(declare-fun m!1774952 () Bool)

(assert (=> d!447614 m!1774952))

(assert (=> d!447614 m!1774952))

(declare-fun m!1774954 () Bool)

(assert (=> d!447614 m!1774954))

(declare-fun m!1774956 () Bool)

(assert (=> b!1511101 m!1774956))

(declare-fun m!1774958 () Bool)

(assert (=> b!1511101 m!1774958))

(assert (=> b!1510779 d!447614))

(declare-fun d!447616 () Bool)

(declare-fun e!966126 () Bool)

(assert (=> d!447616 e!966126))

(declare-fun res!680146 () Bool)

(assert (=> d!447616 (=> (not res!680146) (not e!966126))))

(declare-fun e!966125 () Bool)

(assert (=> d!447616 (= res!680146 e!966125)))

(declare-fun c!247815 () Bool)

(declare-fun lt!525441 () tuple2!14860)

(assert (=> d!447616 (= c!247815 (> (size!12957 (_1!8429 lt!525441)) 0))))

(declare-fun e!966127 () tuple2!14860)

(assert (=> d!447616 (= lt!525441 e!966127)))

(declare-fun c!247814 () Bool)

(declare-fun lt!525442 () Option!2922)

(assert (=> d!447616 (= c!247814 ((_ is Some!2921) lt!525442))))

(assert (=> d!447616 (= lt!525442 (maxPrefixZipperSequence!584 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525274))))))

(assert (=> d!447616 (= (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525274))) lt!525441)))

(declare-fun b!1511102 () Bool)

(declare-fun res!680147 () Bool)

(assert (=> b!1511102 (=> (not res!680147) (not e!966126))))

(assert (=> b!1511102 (= res!680147 (= (list!6331 (_1!8429 lt!525441)) (_1!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 (_2!8432 (v!22840 lt!525274)))))))))

(declare-fun b!1511103 () Bool)

(assert (=> b!1511103 (= e!966126 (= (list!6330 (_2!8429 lt!525441)) (_2!8434 (lexList!742 thiss!13241 rules!1640 (list!6330 (_2!8432 (v!22840 lt!525274)))))))))

(declare-fun b!1511104 () Bool)

(assert (=> b!1511104 (= e!966125 (= (list!6330 (_2!8429 lt!525441)) (list!6330 (_2!8432 (v!22840 lt!525274)))))))

(declare-fun b!1511105 () Bool)

(assert (=> b!1511105 (= e!966127 (tuple2!14861 (BalanceConc!10799 Empty!5428) (_2!8432 (v!22840 lt!525274))))))

(declare-fun b!1511106 () Bool)

(declare-fun e!966128 () Bool)

(assert (=> b!1511106 (= e!966125 e!966128)))

(declare-fun res!680145 () Bool)

(assert (=> b!1511106 (= res!680145 (< (size!12958 (_2!8429 lt!525441)) (size!12958 (_2!8432 (v!22840 lt!525274)))))))

(assert (=> b!1511106 (=> (not res!680145) (not e!966128))))

(declare-fun b!1511107 () Bool)

(assert (=> b!1511107 (= e!966128 (not (isEmpty!9917 (_1!8429 lt!525441))))))

(declare-fun b!1511108 () Bool)

(declare-fun lt!525443 () tuple2!14860)

(assert (=> b!1511108 (= e!966127 (tuple2!14861 (prepend!459 (_1!8429 lt!525443) (_1!8432 (v!22840 lt!525442))) (_2!8429 lt!525443)))))

(assert (=> b!1511108 (= lt!525443 (lexRec!326 thiss!13241 rules!1640 (_2!8432 (v!22840 lt!525442))))))

(assert (= (and d!447616 c!247814) b!1511108))

(assert (= (and d!447616 (not c!247814)) b!1511105))

(assert (= (and d!447616 c!247815) b!1511106))

(assert (= (and d!447616 (not c!247815)) b!1511104))

(assert (= (and b!1511106 res!680145) b!1511107))

(assert (= (and d!447616 res!680146) b!1511102))

(assert (= (and b!1511102 res!680147) b!1511103))

(declare-fun m!1774960 () Bool)

(assert (=> d!447616 m!1774960))

(declare-fun m!1774962 () Bool)

(assert (=> d!447616 m!1774962))

(declare-fun m!1774964 () Bool)

(assert (=> b!1511104 m!1774964))

(declare-fun m!1774966 () Bool)

(assert (=> b!1511104 m!1774966))

(declare-fun m!1774968 () Bool)

(assert (=> b!1511107 m!1774968))

(assert (=> b!1511103 m!1774964))

(assert (=> b!1511103 m!1774966))

(assert (=> b!1511103 m!1774966))

(declare-fun m!1774970 () Bool)

(assert (=> b!1511103 m!1774970))

(declare-fun m!1774972 () Bool)

(assert (=> b!1511102 m!1774972))

(assert (=> b!1511102 m!1774966))

(assert (=> b!1511102 m!1774966))

(assert (=> b!1511102 m!1774970))

(declare-fun m!1774974 () Bool)

(assert (=> b!1511108 m!1774974))

(declare-fun m!1774976 () Bool)

(assert (=> b!1511108 m!1774976))

(declare-fun m!1774978 () Bool)

(assert (=> b!1511106 m!1774978))

(declare-fun m!1774980 () Bool)

(assert (=> b!1511106 m!1774980))

(assert (=> b!1510779 d!447616))

(declare-fun d!447618 () Bool)

(assert (=> d!447618 (= (array_inv!1654 (_keys!1755 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) (bvsge (size!12952 (_keys!1755 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1510776 d!447618))

(declare-fun d!447620 () Bool)

(assert (=> d!447620 (= (array_inv!1655 (_values!1740 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) (bvsge (size!12954 (_values!1740 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1510776 d!447620))

(declare-fun d!447622 () Bool)

(assert (=> d!447622 (= (array_inv!1654 (_keys!1754 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) (bvsge (size!12952 (_keys!1754 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1510794 d!447622))

(declare-fun d!447624 () Bool)

(assert (=> d!447624 (= (array_inv!1656 (_values!1739 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) (bvsge (size!12953 (_values!1739 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1510794 d!447624))

(declare-fun d!447626 () Bool)

(assert (=> d!447626 (= (inv!21248 (totalInput!2288 cacheFurthestNullable!64)) (isBalanced!1604 (c!247752 (totalInput!2288 cacheFurthestNullable!64))))))

(declare-fun bs!364366 () Bool)

(assert (= bs!364366 d!447626))

(declare-fun m!1774982 () Bool)

(assert (=> bs!364366 m!1774982))

(assert (=> b!1510814 d!447626))

(declare-fun b!1511117 () Bool)

(declare-fun tp!431641 () Bool)

(declare-fun tp!431643 () Bool)

(declare-fun e!966134 () Bool)

(assert (=> b!1511117 (= e!966134 (and (inv!21244 (left!13348 (c!247752 input!1102))) tp!431641 (inv!21244 (right!13678 (c!247752 input!1102))) tp!431643))))

(declare-fun b!1511119 () Bool)

(declare-fun e!966133 () Bool)

(declare-fun tp!431642 () Bool)

(assert (=> b!1511119 (= e!966133 tp!431642)))

(declare-fun b!1511118 () Bool)

(declare-fun inv!21256 (IArray!10859) Bool)

(assert (=> b!1511118 (= e!966134 (and (inv!21256 (xs!8208 (c!247752 input!1102))) e!966133))))

(assert (=> b!1510791 (= tp!431626 (and (inv!21244 (c!247752 input!1102)) e!966134))))

(assert (= (and b!1510791 ((_ is Node!5427) (c!247752 input!1102))) b!1511117))

(assert (= b!1511118 b!1511119))

(assert (= (and b!1510791 ((_ is Leaf!8049) (c!247752 input!1102))) b!1511118))

(declare-fun m!1774984 () Bool)

(assert (=> b!1511117 m!1774984))

(declare-fun m!1774986 () Bool)

(assert (=> b!1511117 m!1774986))

(declare-fun m!1774988 () Bool)

(assert (=> b!1511118 m!1774988))

(assert (=> b!1510791 m!1774426))

(declare-fun b!1511130 () Bool)

(declare-fun e!966144 () Bool)

(declare-fun tp!431663 () Bool)

(assert (=> b!1511130 (= e!966144 tp!431663)))

(declare-fun setIsEmpty!9002 () Bool)

(declare-fun setRes!9002 () Bool)

(assert (=> setIsEmpty!9002 setRes!9002))

(declare-fun b!1511131 () Bool)

(declare-fun e!966143 () Bool)

(declare-fun setRes!9003 () Bool)

(declare-fun tp!431662 () Bool)

(assert (=> b!1511131 (= e!966143 (and setRes!9003 tp!431662))))

(declare-fun condSetEmpty!9002 () Bool)

(declare-fun mapValue!6926 () List!16095)

(assert (=> b!1511131 (= condSetEmpty!9002 (= (_1!8430 (_1!8431 (h!21428 mapValue!6926))) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun setIsEmpty!9003 () Bool)

(assert (=> setIsEmpty!9003 setRes!9003))

(declare-fun mapNonEmpty!6926 () Bool)

(declare-fun mapRes!6926 () Bool)

(declare-fun tp!431658 () Bool)

(assert (=> mapNonEmpty!6926 (= mapRes!6926 (and tp!431658 e!966143))))

(declare-fun mapRest!6926 () (Array (_ BitVec 32) List!16095))

(declare-fun mapKey!6926 () (_ BitVec 32))

(assert (=> mapNonEmpty!6926 (= mapRest!6921 (store mapRest!6926 mapKey!6926 mapValue!6926))))

(declare-fun setNonEmpty!9002 () Bool)

(declare-fun setElem!9002 () Context!1342)

(declare-fun tp!431659 () Bool)

(declare-fun inv!21257 (Context!1342) Bool)

(assert (=> setNonEmpty!9002 (= setRes!9003 (and tp!431659 (inv!21257 setElem!9002) e!966144))))

(declare-fun setRest!9003 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9002 (= (_1!8430 (_1!8431 (h!21428 mapValue!6926))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9002 true) setRest!9003))))

(declare-fun condMapEmpty!6926 () Bool)

(declare-fun mapDefault!6926 () List!16095)

(assert (=> mapNonEmpty!6922 (= condMapEmpty!6926 (= mapRest!6921 ((as const (Array (_ BitVec 32) List!16095)) mapDefault!6926)))))

(declare-fun e!966145 () Bool)

(assert (=> mapNonEmpty!6922 (= tp!431606 (and e!966145 mapRes!6926))))

(declare-fun mapIsEmpty!6926 () Bool)

(assert (=> mapIsEmpty!6926 mapRes!6926))

(declare-fun b!1511132 () Bool)

(declare-fun e!966146 () Bool)

(declare-fun tp!431664 () Bool)

(assert (=> b!1511132 (= e!966146 tp!431664)))

(declare-fun b!1511133 () Bool)

(declare-fun tp!431661 () Bool)

(assert (=> b!1511133 (= e!966145 (and setRes!9002 tp!431661))))

(declare-fun condSetEmpty!9003 () Bool)

(assert (=> b!1511133 (= condSetEmpty!9003 (= (_1!8430 (_1!8431 (h!21428 mapDefault!6926))) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun tp!431660 () Bool)

(declare-fun setNonEmpty!9003 () Bool)

(declare-fun setElem!9003 () Context!1342)

(assert (=> setNonEmpty!9003 (= setRes!9002 (and tp!431660 (inv!21257 setElem!9003) e!966146))))

(declare-fun setRest!9002 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9003 (= (_1!8430 (_1!8431 (h!21428 mapDefault!6926))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9003 true) setRest!9002))))

(assert (= (and mapNonEmpty!6922 condMapEmpty!6926) mapIsEmpty!6926))

(assert (= (and mapNonEmpty!6922 (not condMapEmpty!6926)) mapNonEmpty!6926))

(assert (= (and b!1511131 condSetEmpty!9002) setIsEmpty!9003))

(assert (= (and b!1511131 (not condSetEmpty!9002)) setNonEmpty!9002))

(assert (= setNonEmpty!9002 b!1511130))

(assert (= (and mapNonEmpty!6926 ((_ is Cons!16027) mapValue!6926)) b!1511131))

(assert (= (and b!1511133 condSetEmpty!9003) setIsEmpty!9002))

(assert (= (and b!1511133 (not condSetEmpty!9003)) setNonEmpty!9003))

(assert (= setNonEmpty!9003 b!1511132))

(assert (= (and mapNonEmpty!6922 ((_ is Cons!16027) mapDefault!6926)) b!1511133))

(declare-fun m!1774990 () Bool)

(assert (=> mapNonEmpty!6926 m!1774990))

(declare-fun m!1774992 () Bool)

(assert (=> setNonEmpty!9002 m!1774992))

(declare-fun m!1774994 () Bool)

(assert (=> setNonEmpty!9003 m!1774994))

(declare-fun e!966151 () Bool)

(assert (=> mapNonEmpty!6922 (= tp!431615 e!966151)))

(declare-fun b!1511141 () Bool)

(declare-fun e!966152 () Bool)

(declare-fun tp!431673 () Bool)

(assert (=> b!1511141 (= e!966152 tp!431673)))

(declare-fun setElem!9006 () Context!1342)

(declare-fun tp!431671 () Bool)

(declare-fun setNonEmpty!9006 () Bool)

(declare-fun setRes!9006 () Bool)

(assert (=> setNonEmpty!9006 (= setRes!9006 (and tp!431671 (inv!21257 setElem!9006) e!966152))))

(declare-fun setRest!9006 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9006 (= (_1!8430 (_1!8431 (h!21428 mapValue!6922))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9006 true) setRest!9006))))

(declare-fun setIsEmpty!9006 () Bool)

(assert (=> setIsEmpty!9006 setRes!9006))

(declare-fun b!1511140 () Bool)

(declare-fun tp!431672 () Bool)

(assert (=> b!1511140 (= e!966151 (and setRes!9006 tp!431672))))

(declare-fun condSetEmpty!9006 () Bool)

(assert (=> b!1511140 (= condSetEmpty!9006 (= (_1!8430 (_1!8431 (h!21428 mapValue!6922))) ((as const (Array Context!1342 Bool)) false)))))

(assert (= (and b!1511140 condSetEmpty!9006) setIsEmpty!9006))

(assert (= (and b!1511140 (not condSetEmpty!9006)) setNonEmpty!9006))

(assert (= setNonEmpty!9006 b!1511141))

(assert (= (and mapNonEmpty!6922 ((_ is Cons!16027) mapValue!6922)) b!1511140))

(declare-fun m!1774996 () Bool)

(assert (=> setNonEmpty!9006 m!1774996))

(declare-fun b!1511156 () Bool)

(declare-fun e!966167 () Bool)

(declare-fun tp!431697 () Bool)

(assert (=> b!1511156 (= e!966167 tp!431697)))

(declare-fun setIsEmpty!9011 () Bool)

(declare-fun setRes!9012 () Bool)

(assert (=> setIsEmpty!9011 setRes!9012))

(declare-fun b!1511158 () Bool)

(declare-fun e!966168 () Bool)

(declare-fun tp!431700 () Bool)

(assert (=> b!1511158 (= e!966168 tp!431700)))

(declare-fun setNonEmpty!9011 () Bool)

(declare-fun tp!431695 () Bool)

(declare-fun setRes!9011 () Bool)

(declare-fun setElem!9011 () Context!1342)

(declare-fun e!966169 () Bool)

(assert (=> setNonEmpty!9011 (= setRes!9011 (and tp!431695 (inv!21257 setElem!9011) e!966169))))

(declare-fun mapDefault!6929 () List!16090)

(declare-fun setRest!9012 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9011 (= (_2!8428 (h!21423 mapDefault!6929)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9011 true) setRest!9012))))

(declare-fun b!1511159 () Bool)

(declare-fun e!966166 () Bool)

(declare-fun tp!431694 () Bool)

(assert (=> b!1511159 (= e!966166 tp!431694)))

(declare-fun b!1511160 () Bool)

(declare-fun tp!431699 () Bool)

(assert (=> b!1511160 (= e!966169 tp!431699)))

(declare-fun setIsEmpty!9012 () Bool)

(assert (=> setIsEmpty!9012 setRes!9011))

(declare-fun mapIsEmpty!6929 () Bool)

(declare-fun mapRes!6929 () Bool)

(assert (=> mapIsEmpty!6929 mapRes!6929))

(declare-fun mapNonEmpty!6929 () Bool)

(declare-fun tp!431698 () Bool)

(declare-fun e!966170 () Bool)

(assert (=> mapNonEmpty!6929 (= mapRes!6929 (and tp!431698 e!966170))))

(declare-fun mapKey!6929 () (_ BitVec 32))

(declare-fun mapValue!6929 () List!16090)

(declare-fun mapRest!6929 () (Array (_ BitVec 32) List!16090))

(assert (=> mapNonEmpty!6929 (= mapRest!6922 (store mapRest!6929 mapKey!6929 mapValue!6929))))

(declare-fun tp!431692 () Bool)

(declare-fun b!1511157 () Bool)

(declare-fun tp_is_empty!7009 () Bool)

(assert (=> b!1511157 (= e!966170 (and (inv!21257 (_1!8427 (_1!8428 (h!21423 mapValue!6929)))) e!966167 tp_is_empty!7009 setRes!9012 tp!431692))))

(declare-fun condSetEmpty!9012 () Bool)

(assert (=> b!1511157 (= condSetEmpty!9012 (= (_2!8428 (h!21423 mapValue!6929)) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun condMapEmpty!6929 () Bool)

(assert (=> mapNonEmpty!6923 (= condMapEmpty!6929 (= mapRest!6922 ((as const (Array (_ BitVec 32) List!16090)) mapDefault!6929)))))

(declare-fun e!966165 () Bool)

(assert (=> mapNonEmpty!6923 (= tp!431616 (and e!966165 mapRes!6929))))

(declare-fun b!1511161 () Bool)

(declare-fun tp!431693 () Bool)

(assert (=> b!1511161 (= e!966165 (and (inv!21257 (_1!8427 (_1!8428 (h!21423 mapDefault!6929)))) e!966168 tp_is_empty!7009 setRes!9011 tp!431693))))

(declare-fun condSetEmpty!9011 () Bool)

(assert (=> b!1511161 (= condSetEmpty!9011 (= (_2!8428 (h!21423 mapDefault!6929)) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun tp!431696 () Bool)

(declare-fun setElem!9012 () Context!1342)

(declare-fun setNonEmpty!9012 () Bool)

(assert (=> setNonEmpty!9012 (= setRes!9012 (and tp!431696 (inv!21257 setElem!9012) e!966166))))

(declare-fun setRest!9011 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9012 (= (_2!8428 (h!21423 mapValue!6929)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9012 true) setRest!9011))))

(assert (= (and mapNonEmpty!6923 condMapEmpty!6929) mapIsEmpty!6929))

(assert (= (and mapNonEmpty!6923 (not condMapEmpty!6929)) mapNonEmpty!6929))

(assert (= b!1511157 b!1511156))

(assert (= (and b!1511157 condSetEmpty!9012) setIsEmpty!9011))

(assert (= (and b!1511157 (not condSetEmpty!9012)) setNonEmpty!9012))

(assert (= setNonEmpty!9012 b!1511159))

(assert (= (and mapNonEmpty!6929 ((_ is Cons!16022) mapValue!6929)) b!1511157))

(assert (= b!1511161 b!1511158))

(assert (= (and b!1511161 condSetEmpty!9011) setIsEmpty!9012))

(assert (= (and b!1511161 (not condSetEmpty!9011)) setNonEmpty!9011))

(assert (= setNonEmpty!9011 b!1511160))

(assert (= (and mapNonEmpty!6923 ((_ is Cons!16022) mapDefault!6929)) b!1511161))

(declare-fun m!1774998 () Bool)

(assert (=> mapNonEmpty!6929 m!1774998))

(declare-fun m!1775000 () Bool)

(assert (=> b!1511161 m!1775000))

(declare-fun m!1775002 () Bool)

(assert (=> b!1511157 m!1775002))

(declare-fun m!1775004 () Bool)

(assert (=> setNonEmpty!9011 m!1775004))

(declare-fun m!1775006 () Bool)

(assert (=> setNonEmpty!9012 m!1775006))

(declare-fun b!1511170 () Bool)

(declare-fun e!966179 () Bool)

(declare-fun tp!431711 () Bool)

(assert (=> b!1511170 (= e!966179 tp!431711)))

(declare-fun e!966177 () Bool)

(declare-fun tp!431712 () Bool)

(declare-fun setElem!9015 () Context!1342)

(declare-fun setNonEmpty!9015 () Bool)

(declare-fun setRes!9015 () Bool)

(assert (=> setNonEmpty!9015 (= setRes!9015 (and tp!431712 (inv!21257 setElem!9015) e!966177))))

(declare-fun setRest!9015 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9015 (= (_2!8428 (h!21423 mapValue!6921)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9015 true) setRest!9015))))

(declare-fun setIsEmpty!9015 () Bool)

(assert (=> setIsEmpty!9015 setRes!9015))

(declare-fun b!1511172 () Bool)

(declare-fun tp!431709 () Bool)

(assert (=> b!1511172 (= e!966177 tp!431709)))

(declare-fun e!966178 () Bool)

(assert (=> mapNonEmpty!6923 (= tp!431610 e!966178)))

(declare-fun b!1511171 () Bool)

(declare-fun tp!431710 () Bool)

(assert (=> b!1511171 (= e!966178 (and (inv!21257 (_1!8427 (_1!8428 (h!21423 mapValue!6921)))) e!966179 tp_is_empty!7009 setRes!9015 tp!431710))))

(declare-fun condSetEmpty!9015 () Bool)

(assert (=> b!1511171 (= condSetEmpty!9015 (= (_2!8428 (h!21423 mapValue!6921)) ((as const (Array Context!1342 Bool)) false)))))

(assert (= b!1511171 b!1511170))

(assert (= (and b!1511171 condSetEmpty!9015) setIsEmpty!9015))

(assert (= (and b!1511171 (not condSetEmpty!9015)) setNonEmpty!9015))

(assert (= setNonEmpty!9015 b!1511172))

(assert (= (and mapNonEmpty!6923 ((_ is Cons!16022) mapValue!6921)) b!1511171))

(declare-fun m!1775008 () Bool)

(assert (=> setNonEmpty!9015 m!1775008))

(declare-fun m!1775010 () Bool)

(assert (=> b!1511171 m!1775010))

(declare-fun e!966180 () Bool)

(assert (=> b!1510798 (= tp!431605 e!966180)))

(declare-fun b!1511174 () Bool)

(declare-fun e!966181 () Bool)

(declare-fun tp!431715 () Bool)

(assert (=> b!1511174 (= e!966181 tp!431715)))

(declare-fun setRes!9016 () Bool)

(declare-fun tp!431713 () Bool)

(declare-fun setNonEmpty!9016 () Bool)

(declare-fun setElem!9016 () Context!1342)

(assert (=> setNonEmpty!9016 (= setRes!9016 (and tp!431713 (inv!21257 setElem!9016) e!966181))))

(declare-fun setRest!9016 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9016 (= (_1!8430 (_1!8431 (h!21428 (zeroValue!1719 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9016 true) setRest!9016))))

(declare-fun setIsEmpty!9016 () Bool)

(assert (=> setIsEmpty!9016 setRes!9016))

(declare-fun b!1511173 () Bool)

(declare-fun tp!431714 () Bool)

(assert (=> b!1511173 (= e!966180 (and setRes!9016 tp!431714))))

(declare-fun condSetEmpty!9016 () Bool)

(assert (=> b!1511173 (= condSetEmpty!9016 (= (_1!8430 (_1!8431 (h!21428 (zeroValue!1719 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))))) ((as const (Array Context!1342 Bool)) false)))))

(assert (= (and b!1511173 condSetEmpty!9016) setIsEmpty!9016))

(assert (= (and b!1511173 (not condSetEmpty!9016)) setNonEmpty!9016))

(assert (= setNonEmpty!9016 b!1511174))

(assert (= (and b!1510798 ((_ is Cons!16027) (zeroValue!1719 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64)))))))) b!1511173))

(declare-fun m!1775012 () Bool)

(assert (=> setNonEmpty!9016 m!1775012))

(declare-fun e!966182 () Bool)

(assert (=> b!1510798 (= tp!431624 e!966182)))

(declare-fun b!1511176 () Bool)

(declare-fun e!966183 () Bool)

(declare-fun tp!431718 () Bool)

(assert (=> b!1511176 (= e!966183 tp!431718)))

(declare-fun setRes!9017 () Bool)

(declare-fun tp!431716 () Bool)

(declare-fun setElem!9017 () Context!1342)

(declare-fun setNonEmpty!9017 () Bool)

(assert (=> setNonEmpty!9017 (= setRes!9017 (and tp!431716 (inv!21257 setElem!9017) e!966183))))

(declare-fun setRest!9017 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9017 (= (_1!8430 (_1!8431 (h!21428 (minValue!1719 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9017 true) setRest!9017))))

(declare-fun setIsEmpty!9017 () Bool)

(assert (=> setIsEmpty!9017 setRes!9017))

(declare-fun b!1511175 () Bool)

(declare-fun tp!431717 () Bool)

(assert (=> b!1511175 (= e!966182 (and setRes!9017 tp!431717))))

(declare-fun condSetEmpty!9017 () Bool)

(assert (=> b!1511175 (= condSetEmpty!9017 (= (_1!8430 (_1!8431 (h!21428 (minValue!1719 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64))))))))) ((as const (Array Context!1342 Bool)) false)))))

(assert (= (and b!1511175 condSetEmpty!9017) setIsEmpty!9017))

(assert (= (and b!1511175 (not condSetEmpty!9017)) setNonEmpty!9017))

(assert (= setNonEmpty!9017 b!1511176))

(assert (= (and b!1510798 ((_ is Cons!16027) (minValue!1719 (v!22838 (underlying!3133 (v!22839 (underlying!3134 (cache!1787 cacheFurthestNullable!64)))))))) b!1511175))

(declare-fun m!1775014 () Bool)

(assert (=> setNonEmpty!9017 m!1775014))

(declare-fun e!966185 () Bool)

(declare-fun tp!431719 () Bool)

(declare-fun b!1511177 () Bool)

(declare-fun tp!431721 () Bool)

(assert (=> b!1511177 (= e!966185 (and (inv!21244 (left!13348 (c!247752 totalInput!458))) tp!431719 (inv!21244 (right!13678 (c!247752 totalInput!458))) tp!431721))))

(declare-fun b!1511179 () Bool)

(declare-fun e!966184 () Bool)

(declare-fun tp!431720 () Bool)

(assert (=> b!1511179 (= e!966184 tp!431720)))

(declare-fun b!1511178 () Bool)

(assert (=> b!1511178 (= e!966185 (and (inv!21256 (xs!8208 (c!247752 totalInput!458))) e!966184))))

(assert (=> b!1510789 (= tp!431623 (and (inv!21244 (c!247752 totalInput!458)) e!966185))))

(assert (= (and b!1510789 ((_ is Node!5427) (c!247752 totalInput!458))) b!1511177))

(assert (= b!1511178 b!1511179))

(assert (= (and b!1510789 ((_ is Leaf!8049) (c!247752 totalInput!458))) b!1511178))

(declare-fun m!1775016 () Bool)

(assert (=> b!1511177 m!1775016))

(declare-fun m!1775018 () Bool)

(assert (=> b!1511177 m!1775018))

(declare-fun m!1775020 () Bool)

(assert (=> b!1511178 m!1775020))

(assert (=> b!1510789 m!1774422))

(declare-fun e!966186 () Bool)

(assert (=> b!1510819 (= tp!431631 e!966186)))

(declare-fun b!1511181 () Bool)

(declare-fun e!966187 () Bool)

(declare-fun tp!431724 () Bool)

(assert (=> b!1511181 (= e!966187 tp!431724)))

(declare-fun setRes!9018 () Bool)

(declare-fun setElem!9018 () Context!1342)

(declare-fun setNonEmpty!9018 () Bool)

(declare-fun tp!431722 () Bool)

(assert (=> setNonEmpty!9018 (= setRes!9018 (and tp!431722 (inv!21257 setElem!9018) e!966187))))

(declare-fun setRest!9018 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9018 (= (_1!8430 (_1!8431 (h!21428 mapDefault!6923))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9018 true) setRest!9018))))

(declare-fun setIsEmpty!9018 () Bool)

(assert (=> setIsEmpty!9018 setRes!9018))

(declare-fun b!1511180 () Bool)

(declare-fun tp!431723 () Bool)

(assert (=> b!1511180 (= e!966186 (and setRes!9018 tp!431723))))

(declare-fun condSetEmpty!9018 () Bool)

(assert (=> b!1511180 (= condSetEmpty!9018 (= (_1!8430 (_1!8431 (h!21428 mapDefault!6923))) ((as const (Array Context!1342 Bool)) false)))))

(assert (= (and b!1511180 condSetEmpty!9018) setIsEmpty!9018))

(assert (= (and b!1511180 (not condSetEmpty!9018)) setNonEmpty!9018))

(assert (= setNonEmpty!9018 b!1511181))

(assert (= (and b!1510819 ((_ is Cons!16027) mapDefault!6923)) b!1511180))

(declare-fun m!1775022 () Bool)

(assert (=> setNonEmpty!9018 m!1775022))

(declare-fun b!1511192 () Bool)

(declare-fun b_free!39155 () Bool)

(declare-fun b_next!39859 () Bool)

(assert (=> b!1511192 (= b_free!39155 (not b_next!39859))))

(declare-fun tp!431735 () Bool)

(declare-fun b_and!105169 () Bool)

(assert (=> b!1511192 (= tp!431735 b_and!105169)))

(declare-fun b_free!39157 () Bool)

(declare-fun b_next!39861 () Bool)

(assert (=> b!1511192 (= b_free!39157 (not b_next!39861))))

(declare-fun t!139365 () Bool)

(declare-fun tb!86199 () Bool)

(assert (=> (and b!1511192 (= (toChars!4046 (transformation!2838 (h!21427 (t!139360 rules!1640)))) (toChars!4046 (transformation!2838 (rule!4631 (_1!8432 (v!22840 (_1!8433 lt!525288))))))) t!139365) tb!86199))

(declare-fun result!103640 () Bool)

(assert (= result!103640 result!103624))

(assert (=> d!447502 t!139365))

(declare-fun b_and!105171 () Bool)

(declare-fun tp!431733 () Bool)

(assert (=> b!1511192 (= tp!431733 (and (=> t!139365 result!103640) b_and!105171))))

(declare-fun e!966198 () Bool)

(assert (=> b!1511192 (= e!966198 (and tp!431735 tp!431733))))

(declare-fun b!1511191 () Bool)

(declare-fun e!966199 () Bool)

(declare-fun tp!431736 () Bool)

(assert (=> b!1511191 (= e!966199 (and tp!431736 (inv!21242 (tag!3102 (h!21427 (t!139360 rules!1640)))) (inv!21251 (transformation!2838 (h!21427 (t!139360 rules!1640)))) e!966198))))

(declare-fun b!1511190 () Bool)

(declare-fun e!966196 () Bool)

(declare-fun tp!431734 () Bool)

(assert (=> b!1511190 (= e!966196 (and e!966199 tp!431734))))

(assert (=> b!1510780 (= tp!431612 e!966196)))

(assert (= b!1511191 b!1511192))

(assert (= b!1511190 b!1511191))

(assert (= (and b!1510780 ((_ is Cons!16026) (t!139360 rules!1640))) b!1511190))

(declare-fun m!1775024 () Bool)

(assert (=> b!1511191 m!1775024))

(declare-fun m!1775026 () Bool)

(assert (=> b!1511191 m!1775026))

(declare-fun b!1511205 () Bool)

(declare-fun e!966202 () Bool)

(declare-fun tp!431748 () Bool)

(assert (=> b!1511205 (= e!966202 tp!431748)))

(declare-fun b!1511203 () Bool)

(assert (=> b!1511203 (= e!966202 tp_is_empty!7009)))

(declare-fun b!1511206 () Bool)

(declare-fun tp!431747 () Bool)

(declare-fun tp!431751 () Bool)

(assert (=> b!1511206 (= e!966202 (and tp!431747 tp!431751))))

(assert (=> b!1510820 (= tp!431628 e!966202)))

(declare-fun b!1511204 () Bool)

(declare-fun tp!431749 () Bool)

(declare-fun tp!431750 () Bool)

(assert (=> b!1511204 (= e!966202 (and tp!431749 tp!431750))))

(assert (= (and b!1510820 ((_ is ElementMatch!4153) (regex!2838 (h!21427 rules!1640)))) b!1511203))

(assert (= (and b!1510820 ((_ is Concat!7081) (regex!2838 (h!21427 rules!1640)))) b!1511204))

(assert (= (and b!1510820 ((_ is Star!4153) (regex!2838 (h!21427 rules!1640)))) b!1511205))

(assert (= (and b!1510820 ((_ is Union!4153) (regex!2838 (h!21427 rules!1640)))) b!1511206))

(declare-fun tp!431752 () Bool)

(declare-fun b!1511207 () Bool)

(declare-fun e!966204 () Bool)

(declare-fun tp!431754 () Bool)

(assert (=> b!1511207 (= e!966204 (and (inv!21244 (left!13348 (c!247752 (totalInput!2288 cacheFurthestNullable!64)))) tp!431752 (inv!21244 (right!13678 (c!247752 (totalInput!2288 cacheFurthestNullable!64)))) tp!431754))))

(declare-fun b!1511209 () Bool)

(declare-fun e!966203 () Bool)

(declare-fun tp!431753 () Bool)

(assert (=> b!1511209 (= e!966203 tp!431753)))

(declare-fun b!1511208 () Bool)

(assert (=> b!1511208 (= e!966204 (and (inv!21256 (xs!8208 (c!247752 (totalInput!2288 cacheFurthestNullable!64)))) e!966203))))

(assert (=> b!1510796 (= tp!431619 (and (inv!21244 (c!247752 (totalInput!2288 cacheFurthestNullable!64))) e!966204))))

(assert (= (and b!1510796 ((_ is Node!5427) (c!247752 (totalInput!2288 cacheFurthestNullable!64)))) b!1511207))

(assert (= b!1511208 b!1511209))

(assert (= (and b!1510796 ((_ is Leaf!8049) (c!247752 (totalInput!2288 cacheFurthestNullable!64)))) b!1511208))

(declare-fun m!1775028 () Bool)

(assert (=> b!1511207 m!1775028))

(declare-fun m!1775030 () Bool)

(assert (=> b!1511207 m!1775030))

(declare-fun m!1775032 () Bool)

(assert (=> b!1511208 m!1775032))

(assert (=> b!1510796 m!1774340))

(declare-fun b!1511210 () Bool)

(declare-fun tp!431757 () Bool)

(declare-fun tp!431755 () Bool)

(declare-fun e!966206 () Bool)

(assert (=> b!1511210 (= e!966206 (and (inv!21244 (left!13348 (c!247752 treated!70))) tp!431755 (inv!21244 (right!13678 (c!247752 treated!70))) tp!431757))))

(declare-fun b!1511212 () Bool)

(declare-fun e!966205 () Bool)

(declare-fun tp!431756 () Bool)

(assert (=> b!1511212 (= e!966205 tp!431756)))

(declare-fun b!1511211 () Bool)

(assert (=> b!1511211 (= e!966206 (and (inv!21256 (xs!8208 (c!247752 treated!70))) e!966205))))

(assert (=> b!1510787 (= tp!431603 (and (inv!21244 (c!247752 treated!70)) e!966206))))

(assert (= (and b!1510787 ((_ is Node!5427) (c!247752 treated!70))) b!1511210))

(assert (= b!1511211 b!1511212))

(assert (= (and b!1510787 ((_ is Leaf!8049) (c!247752 treated!70))) b!1511211))

(declare-fun m!1775034 () Bool)

(assert (=> b!1511210 m!1775034))

(declare-fun m!1775036 () Bool)

(assert (=> b!1511210 m!1775036))

(declare-fun m!1775038 () Bool)

(assert (=> b!1511211 m!1775038))

(assert (=> b!1510787 m!1774468))

(declare-fun e!966212 () Bool)

(declare-fun tp!431765 () Bool)

(declare-fun tp!431764 () Bool)

(declare-fun b!1511221 () Bool)

(assert (=> b!1511221 (= e!966212 (and (inv!21250 (left!13349 (c!247753 acc!392))) tp!431764 (inv!21250 (right!13679 (c!247753 acc!392))) tp!431765))))

(declare-fun b!1511223 () Bool)

(declare-fun e!966211 () Bool)

(declare-fun tp!431766 () Bool)

(assert (=> b!1511223 (= e!966211 tp!431766)))

(declare-fun b!1511222 () Bool)

(declare-fun inv!21258 (IArray!10861) Bool)

(assert (=> b!1511222 (= e!966212 (and (inv!21258 (xs!8209 (c!247753 acc!392))) e!966211))))

(assert (=> b!1510808 (= tp!431620 (and (inv!21250 (c!247753 acc!392)) e!966212))))

(assert (= (and b!1510808 ((_ is Node!5428) (c!247753 acc!392))) b!1511221))

(assert (= b!1511222 b!1511223))

(assert (= (and b!1510808 ((_ is Leaf!8050) (c!247753 acc!392))) b!1511222))

(declare-fun m!1775040 () Bool)

(assert (=> b!1511221 m!1775040))

(declare-fun m!1775042 () Bool)

(assert (=> b!1511221 m!1775042))

(declare-fun m!1775044 () Bool)

(assert (=> b!1511222 m!1775044))

(assert (=> b!1510808 m!1774478))

(declare-fun b!1511224 () Bool)

(declare-fun e!966215 () Bool)

(declare-fun tp!431769 () Bool)

(assert (=> b!1511224 (= e!966215 tp!431769)))

(declare-fun setElem!9019 () Context!1342)

(declare-fun tp!431770 () Bool)

(declare-fun e!966213 () Bool)

(declare-fun setRes!9019 () Bool)

(declare-fun setNonEmpty!9019 () Bool)

(assert (=> setNonEmpty!9019 (= setRes!9019 (and tp!431770 (inv!21257 setElem!9019) e!966213))))

(declare-fun setRest!9019 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9019 (= (_2!8428 (h!21423 mapDefault!6921)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9019 true) setRest!9019))))

(declare-fun setIsEmpty!9019 () Bool)

(assert (=> setIsEmpty!9019 setRes!9019))

(declare-fun b!1511226 () Bool)

(declare-fun tp!431767 () Bool)

(assert (=> b!1511226 (= e!966213 tp!431767)))

(declare-fun e!966214 () Bool)

(assert (=> b!1510784 (= tp!431622 e!966214)))

(declare-fun tp!431768 () Bool)

(declare-fun b!1511225 () Bool)

(assert (=> b!1511225 (= e!966214 (and (inv!21257 (_1!8427 (_1!8428 (h!21423 mapDefault!6921)))) e!966215 tp_is_empty!7009 setRes!9019 tp!431768))))

(declare-fun condSetEmpty!9019 () Bool)

(assert (=> b!1511225 (= condSetEmpty!9019 (= (_2!8428 (h!21423 mapDefault!6921)) ((as const (Array Context!1342 Bool)) false)))))

(assert (= b!1511225 b!1511224))

(assert (= (and b!1511225 condSetEmpty!9019) setIsEmpty!9019))

(assert (= (and b!1511225 (not condSetEmpty!9019)) setNonEmpty!9019))

(assert (= setNonEmpty!9019 b!1511226))

(assert (= (and b!1510784 ((_ is Cons!16022) mapDefault!6921)) b!1511225))

(declare-fun m!1775046 () Bool)

(assert (=> setNonEmpty!9019 m!1775046))

(declare-fun m!1775048 () Bool)

(assert (=> b!1511225 m!1775048))

(declare-fun b!1511235 () Bool)

(declare-fun e!966223 () Bool)

(declare-fun tp!431781 () Bool)

(assert (=> b!1511235 (= e!966223 tp!431781)))

(declare-fun e!966224 () Bool)

(assert (=> b!1510813 (= tp!431602 e!966224)))

(declare-fun b!1511236 () Bool)

(declare-fun e!966222 () Bool)

(declare-fun tp!431784 () Bool)

(assert (=> b!1511236 (= e!966222 tp!431784)))

(declare-fun tp!431782 () Bool)

(declare-fun b!1511237 () Bool)

(declare-fun setRes!9022 () Bool)

(declare-fun tp!431785 () Bool)

(assert (=> b!1511237 (= e!966224 (and tp!431782 (inv!21257 (_2!8425 (_1!8426 (h!21422 mapDefault!6922)))) e!966223 tp_is_empty!7009 setRes!9022 tp!431785))))

(declare-fun condSetEmpty!9022 () Bool)

(assert (=> b!1511237 (= condSetEmpty!9022 (= (_2!8426 (h!21422 mapDefault!6922)) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun setElem!9022 () Context!1342)

(declare-fun setNonEmpty!9022 () Bool)

(declare-fun tp!431783 () Bool)

(assert (=> setNonEmpty!9022 (= setRes!9022 (and tp!431783 (inv!21257 setElem!9022) e!966222))))

(declare-fun setRest!9022 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9022 (= (_2!8426 (h!21422 mapDefault!6922)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9022 true) setRest!9022))))

(declare-fun setIsEmpty!9022 () Bool)

(assert (=> setIsEmpty!9022 setRes!9022))

(assert (= b!1511237 b!1511235))

(assert (= (and b!1511237 condSetEmpty!9022) setIsEmpty!9022))

(assert (= (and b!1511237 (not condSetEmpty!9022)) setNonEmpty!9022))

(assert (= setNonEmpty!9022 b!1511236))

(assert (= (and b!1510813 ((_ is Cons!16021) mapDefault!6922)) b!1511237))

(declare-fun m!1775050 () Bool)

(assert (=> b!1511237 m!1775050))

(declare-fun m!1775052 () Bool)

(assert (=> setNonEmpty!9022 m!1775052))

(declare-fun b!1511238 () Bool)

(declare-fun e!966227 () Bool)

(declare-fun tp!431788 () Bool)

(assert (=> b!1511238 (= e!966227 tp!431788)))

(declare-fun tp!431789 () Bool)

(declare-fun setElem!9023 () Context!1342)

(declare-fun setRes!9023 () Bool)

(declare-fun e!966225 () Bool)

(declare-fun setNonEmpty!9023 () Bool)

(assert (=> setNonEmpty!9023 (= setRes!9023 (and tp!431789 (inv!21257 setElem!9023) e!966225))))

(declare-fun setRest!9023 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9023 (= (_2!8428 (h!21423 (zeroValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9023 true) setRest!9023))))

(declare-fun setIsEmpty!9023 () Bool)

(assert (=> setIsEmpty!9023 setRes!9023))

(declare-fun b!1511240 () Bool)

(declare-fun tp!431786 () Bool)

(assert (=> b!1511240 (= e!966225 tp!431786)))

(declare-fun e!966226 () Bool)

(assert (=> b!1510776 (= tp!431625 e!966226)))

(declare-fun tp!431787 () Bool)

(declare-fun b!1511239 () Bool)

(assert (=> b!1511239 (= e!966226 (and (inv!21257 (_1!8427 (_1!8428 (h!21423 (zeroValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))))) e!966227 tp_is_empty!7009 setRes!9023 tp!431787))))

(declare-fun condSetEmpty!9023 () Bool)

(assert (=> b!1511239 (= condSetEmpty!9023 (= (_2!8428 (h!21423 (zeroValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))) ((as const (Array Context!1342 Bool)) false)))))

(assert (= b!1511239 b!1511238))

(assert (= (and b!1511239 condSetEmpty!9023) setIsEmpty!9023))

(assert (= (and b!1511239 (not condSetEmpty!9023)) setNonEmpty!9023))

(assert (= setNonEmpty!9023 b!1511240))

(assert (= (and b!1510776 ((_ is Cons!16022) (zeroValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))) b!1511239))

(declare-fun m!1775054 () Bool)

(assert (=> setNonEmpty!9023 m!1775054))

(declare-fun m!1775056 () Bool)

(assert (=> b!1511239 m!1775056))

(declare-fun b!1511241 () Bool)

(declare-fun e!966230 () Bool)

(declare-fun tp!431792 () Bool)

(assert (=> b!1511241 (= e!966230 tp!431792)))

(declare-fun e!966228 () Bool)

(declare-fun tp!431793 () Bool)

(declare-fun setNonEmpty!9024 () Bool)

(declare-fun setElem!9024 () Context!1342)

(declare-fun setRes!9024 () Bool)

(assert (=> setNonEmpty!9024 (= setRes!9024 (and tp!431793 (inv!21257 setElem!9024) e!966228))))

(declare-fun setRest!9024 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9024 (= (_2!8428 (h!21423 (minValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9024 true) setRest!9024))))

(declare-fun setIsEmpty!9024 () Bool)

(assert (=> setIsEmpty!9024 setRes!9024))

(declare-fun b!1511243 () Bool)

(declare-fun tp!431790 () Bool)

(assert (=> b!1511243 (= e!966228 tp!431790)))

(declare-fun e!966229 () Bool)

(assert (=> b!1510776 (= tp!431608 e!966229)))

(declare-fun tp!431791 () Bool)

(declare-fun b!1511242 () Bool)

(assert (=> b!1511242 (= e!966229 (and (inv!21257 (_1!8427 (_1!8428 (h!21423 (minValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))))) e!966230 tp_is_empty!7009 setRes!9024 tp!431791))))

(declare-fun condSetEmpty!9024 () Bool)

(assert (=> b!1511242 (= condSetEmpty!9024 (= (_2!8428 (h!21423 (minValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))) ((as const (Array Context!1342 Bool)) false)))))

(assert (= b!1511242 b!1511241))

(assert (= (and b!1511242 condSetEmpty!9024) setIsEmpty!9024))

(assert (= (and b!1511242 (not condSetEmpty!9024)) setNonEmpty!9024))

(assert (= setNonEmpty!9024 b!1511243))

(assert (= (and b!1510776 ((_ is Cons!16022) (minValue!1718 (v!22836 (underlying!3131 (v!22837 (underlying!3132 (cache!1786 cacheUp!616)))))))) b!1511242))

(declare-fun m!1775058 () Bool)

(assert (=> setNonEmpty!9024 m!1775058))

(declare-fun m!1775060 () Bool)

(assert (=> b!1511242 m!1775060))

(declare-fun b!1511244 () Bool)

(declare-fun e!966232 () Bool)

(declare-fun tp!431794 () Bool)

(assert (=> b!1511244 (= e!966232 tp!431794)))

(declare-fun e!966233 () Bool)

(assert (=> b!1510794 (= tp!431614 e!966233)))

(declare-fun b!1511245 () Bool)

(declare-fun e!966231 () Bool)

(declare-fun tp!431797 () Bool)

(assert (=> b!1511245 (= e!966231 tp!431797)))

(declare-fun tp!431798 () Bool)

(declare-fun setRes!9025 () Bool)

(declare-fun b!1511246 () Bool)

(declare-fun tp!431795 () Bool)

(assert (=> b!1511246 (= e!966233 (and tp!431795 (inv!21257 (_2!8425 (_1!8426 (h!21422 (zeroValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))))) e!966232 tp_is_empty!7009 setRes!9025 tp!431798))))

(declare-fun condSetEmpty!9025 () Bool)

(assert (=> b!1511246 (= condSetEmpty!9025 (= (_2!8426 (h!21422 (zeroValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun tp!431796 () Bool)

(declare-fun setElem!9025 () Context!1342)

(declare-fun setNonEmpty!9025 () Bool)

(assert (=> setNonEmpty!9025 (= setRes!9025 (and tp!431796 (inv!21257 setElem!9025) e!966231))))

(declare-fun setRest!9025 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9025 (= (_2!8426 (h!21422 (zeroValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9025 true) setRest!9025))))

(declare-fun setIsEmpty!9025 () Bool)

(assert (=> setIsEmpty!9025 setRes!9025))

(assert (= b!1511246 b!1511244))

(assert (= (and b!1511246 condSetEmpty!9025) setIsEmpty!9025))

(assert (= (and b!1511246 (not condSetEmpty!9025)) setNonEmpty!9025))

(assert (= setNonEmpty!9025 b!1511245))

(assert (= (and b!1510794 ((_ is Cons!16021) (zeroValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))) b!1511246))

(declare-fun m!1775062 () Bool)

(assert (=> b!1511246 m!1775062))

(declare-fun m!1775064 () Bool)

(assert (=> setNonEmpty!9025 m!1775064))

(declare-fun b!1511247 () Bool)

(declare-fun e!966235 () Bool)

(declare-fun tp!431799 () Bool)

(assert (=> b!1511247 (= e!966235 tp!431799)))

(declare-fun e!966236 () Bool)

(assert (=> b!1510794 (= tp!431617 e!966236)))

(declare-fun b!1511248 () Bool)

(declare-fun e!966234 () Bool)

(declare-fun tp!431802 () Bool)

(assert (=> b!1511248 (= e!966234 tp!431802)))

(declare-fun b!1511249 () Bool)

(declare-fun setRes!9026 () Bool)

(declare-fun tp!431803 () Bool)

(declare-fun tp!431800 () Bool)

(assert (=> b!1511249 (= e!966236 (and tp!431800 (inv!21257 (_2!8425 (_1!8426 (h!21422 (minValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))))) e!966235 tp_is_empty!7009 setRes!9026 tp!431803))))

(declare-fun condSetEmpty!9026 () Bool)

(assert (=> b!1511249 (= condSetEmpty!9026 (= (_2!8426 (h!21422 (minValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun tp!431801 () Bool)

(declare-fun setElem!9026 () Context!1342)

(declare-fun setNonEmpty!9026 () Bool)

(assert (=> setNonEmpty!9026 (= setRes!9026 (and tp!431801 (inv!21257 setElem!9026) e!966234))))

(declare-fun setRest!9026 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9026 (= (_2!8426 (h!21422 (minValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9026 true) setRest!9026))))

(declare-fun setIsEmpty!9026 () Bool)

(assert (=> setIsEmpty!9026 setRes!9026))

(assert (= b!1511249 b!1511247))

(assert (= (and b!1511249 condSetEmpty!9026) setIsEmpty!9026))

(assert (= (and b!1511249 (not condSetEmpty!9026)) setNonEmpty!9026))

(assert (= setNonEmpty!9026 b!1511248))

(assert (= (and b!1510794 ((_ is Cons!16021) (minValue!1717 (v!22834 (underlying!3129 (v!22835 (underlying!3130 (cache!1785 cacheDown!629)))))))) b!1511249))

(declare-fun m!1775066 () Bool)

(assert (=> b!1511249 m!1775066))

(declare-fun m!1775068 () Bool)

(assert (=> setNonEmpty!9026 m!1775068))

(declare-fun b!1511264 () Bool)

(declare-fun e!966250 () Bool)

(declare-fun tp!431833 () Bool)

(assert (=> b!1511264 (= e!966250 tp!431833)))

(declare-fun setIsEmpty!9031 () Bool)

(declare-fun setRes!9032 () Bool)

(assert (=> setIsEmpty!9031 setRes!9032))

(declare-fun b!1511265 () Bool)

(declare-fun e!966251 () Bool)

(declare-fun tp!431827 () Bool)

(assert (=> b!1511265 (= e!966251 tp!431827)))

(declare-fun e!966252 () Bool)

(declare-fun tp!431830 () Bool)

(declare-fun setElem!9031 () Context!1342)

(declare-fun setNonEmpty!9032 () Bool)

(assert (=> setNonEmpty!9032 (= setRes!9032 (and tp!431830 (inv!21257 setElem!9031) e!966252))))

(declare-fun mapValue!6932 () List!16089)

(declare-fun setRest!9032 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9032 (= (_2!8426 (h!21422 mapValue!6932)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9031 true) setRest!9032))))

(declare-fun tp!431836 () Bool)

(declare-fun b!1511266 () Bool)

(declare-fun e!966253 () Bool)

(declare-fun tp!431829 () Bool)

(assert (=> b!1511266 (= e!966253 (and tp!431829 (inv!21257 (_2!8425 (_1!8426 (h!21422 mapValue!6932)))) e!966251 tp_is_empty!7009 setRes!9032 tp!431836))))

(declare-fun condSetEmpty!9032 () Bool)

(assert (=> b!1511266 (= condSetEmpty!9032 (= (_2!8426 (h!21422 mapValue!6932)) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun mapDefault!6932 () List!16089)

(declare-fun e!966249 () Bool)

(declare-fun tp!431826 () Bool)

(declare-fun tp!431835 () Bool)

(declare-fun setRes!9031 () Bool)

(declare-fun b!1511267 () Bool)

(assert (=> b!1511267 (= e!966249 (and tp!431835 (inv!21257 (_2!8425 (_1!8426 (h!21422 mapDefault!6932)))) e!966250 tp_is_empty!7009 setRes!9031 tp!431826))))

(declare-fun condSetEmpty!9031 () Bool)

(assert (=> b!1511267 (= condSetEmpty!9031 (= (_2!8426 (h!21422 mapDefault!6932)) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun b!1511268 () Bool)

(declare-fun tp!431828 () Bool)

(assert (=> b!1511268 (= e!966252 tp!431828)))

(declare-fun condMapEmpty!6932 () Bool)

(assert (=> mapNonEmpty!6921 (= condMapEmpty!6932 (= mapRest!6923 ((as const (Array (_ BitVec 32) List!16089)) mapDefault!6932)))))

(declare-fun mapRes!6932 () Bool)

(assert (=> mapNonEmpty!6921 (= tp!431629 (and e!966249 mapRes!6932))))

(declare-fun e!966254 () Bool)

(declare-fun setElem!9032 () Context!1342)

(declare-fun tp!431832 () Bool)

(declare-fun setNonEmpty!9031 () Bool)

(assert (=> setNonEmpty!9031 (= setRes!9031 (and tp!431832 (inv!21257 setElem!9032) e!966254))))

(declare-fun setRest!9031 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9031 (= (_2!8426 (h!21422 mapDefault!6932)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9032 true) setRest!9031))))

(declare-fun setIsEmpty!9032 () Bool)

(assert (=> setIsEmpty!9032 setRes!9031))

(declare-fun b!1511269 () Bool)

(declare-fun tp!431831 () Bool)

(assert (=> b!1511269 (= e!966254 tp!431831)))

(declare-fun mapNonEmpty!6932 () Bool)

(declare-fun tp!431834 () Bool)

(assert (=> mapNonEmpty!6932 (= mapRes!6932 (and tp!431834 e!966253))))

(declare-fun mapKey!6932 () (_ BitVec 32))

(declare-fun mapRest!6932 () (Array (_ BitVec 32) List!16089))

(assert (=> mapNonEmpty!6932 (= mapRest!6923 (store mapRest!6932 mapKey!6932 mapValue!6932))))

(declare-fun mapIsEmpty!6932 () Bool)

(assert (=> mapIsEmpty!6932 mapRes!6932))

(assert (= (and mapNonEmpty!6921 condMapEmpty!6932) mapIsEmpty!6932))

(assert (= (and mapNonEmpty!6921 (not condMapEmpty!6932)) mapNonEmpty!6932))

(assert (= b!1511266 b!1511265))

(assert (= (and b!1511266 condSetEmpty!9032) setIsEmpty!9031))

(assert (= (and b!1511266 (not condSetEmpty!9032)) setNonEmpty!9032))

(assert (= setNonEmpty!9032 b!1511268))

(assert (= (and mapNonEmpty!6932 ((_ is Cons!16021) mapValue!6932)) b!1511266))

(assert (= b!1511267 b!1511264))

(assert (= (and b!1511267 condSetEmpty!9031) setIsEmpty!9032))

(assert (= (and b!1511267 (not condSetEmpty!9031)) setNonEmpty!9031))

(assert (= setNonEmpty!9031 b!1511269))

(assert (= (and mapNonEmpty!6921 ((_ is Cons!16021) mapDefault!6932)) b!1511267))

(declare-fun m!1775070 () Bool)

(assert (=> b!1511266 m!1775070))

(declare-fun m!1775072 () Bool)

(assert (=> b!1511267 m!1775072))

(declare-fun m!1775074 () Bool)

(assert (=> setNonEmpty!9031 m!1775074))

(declare-fun m!1775076 () Bool)

(assert (=> mapNonEmpty!6932 m!1775076))

(declare-fun m!1775078 () Bool)

(assert (=> setNonEmpty!9032 m!1775078))

(declare-fun b!1511270 () Bool)

(declare-fun e!966256 () Bool)

(declare-fun tp!431837 () Bool)

(assert (=> b!1511270 (= e!966256 tp!431837)))

(declare-fun e!966257 () Bool)

(assert (=> mapNonEmpty!6921 (= tp!431604 e!966257)))

(declare-fun b!1511271 () Bool)

(declare-fun e!966255 () Bool)

(declare-fun tp!431840 () Bool)

(assert (=> b!1511271 (= e!966255 tp!431840)))

(declare-fun tp!431838 () Bool)

(declare-fun setRes!9033 () Bool)

(declare-fun tp!431841 () Bool)

(declare-fun b!1511272 () Bool)

(assert (=> b!1511272 (= e!966257 (and tp!431838 (inv!21257 (_2!8425 (_1!8426 (h!21422 mapValue!6923)))) e!966256 tp_is_empty!7009 setRes!9033 tp!431841))))

(declare-fun condSetEmpty!9033 () Bool)

(assert (=> b!1511272 (= condSetEmpty!9033 (= (_2!8426 (h!21422 mapValue!6923)) ((as const (Array Context!1342 Bool)) false)))))

(declare-fun setElem!9033 () Context!1342)

(declare-fun tp!431839 () Bool)

(declare-fun setNonEmpty!9033 () Bool)

(assert (=> setNonEmpty!9033 (= setRes!9033 (and tp!431839 (inv!21257 setElem!9033) e!966255))))

(declare-fun setRest!9033 () (InoxSet Context!1342))

(assert (=> setNonEmpty!9033 (= (_2!8426 (h!21422 mapValue!6923)) ((_ map or) (store ((as const (Array Context!1342 Bool)) false) setElem!9033 true) setRest!9033))))

(declare-fun setIsEmpty!9033 () Bool)

(assert (=> setIsEmpty!9033 setRes!9033))

(assert (= b!1511272 b!1511270))

(assert (= (and b!1511272 condSetEmpty!9033) setIsEmpty!9033))

(assert (= (and b!1511272 (not condSetEmpty!9033)) setNonEmpty!9033))

(assert (= setNonEmpty!9033 b!1511271))

(assert (= (and mapNonEmpty!6921 ((_ is Cons!16021) mapValue!6923)) b!1511272))

(declare-fun m!1775080 () Bool)

(assert (=> b!1511272 m!1775080))

(declare-fun m!1775082 () Bool)

(assert (=> setNonEmpty!9033 m!1775082))

(check-sat (not setNonEmpty!9019) (not setNonEmpty!9002) (not b!1510990) (not b!1511089) (not setNonEmpty!9003) (not b!1510914) (not b!1511172) (not b!1510928) (not d!447614) (not b!1511249) (not d!447486) (not b!1511161) (not b!1510934) (not b!1511049) (not b_next!39861) (not b!1511131) (not d!447536) (not b!1511265) (not d!447588) (not b!1510930) (not d!447586) (not d!447526) (not b!1510955) (not b!1510963) (not b!1511051) (not b!1511141) (not d!447560) (not setNonEmpty!9031) (not b!1511016) (not b!1511084) (not b!1511094) (not b!1511177) (not bm!100311) (not b!1511175) (not b!1511011) (not d!447532) (not d!447490) (not b!1511020) (not b!1511222) (not b!1511181) (not b_next!39857) (not b_next!39847) b_and!105157 (not b!1510960) (not d!447498) b_and!105167 (not b!1511032) (not d!447596) (not b!1511093) (not b!1510929) (not mapNonEmpty!6926) (not b!1510791) (not b!1511223) (not b!1510868) (not d!447468) (not b!1510840) (not b!1511243) (not b!1510958) (not b!1511236) (not b!1511140) (not b!1510965) (not b!1510844) (not b!1511224) (not b!1510900) (not b!1511266) (not b!1510957) (not setNonEmpty!9015) (not b!1511102) (not b!1510878) (not setNonEmpty!9032) (not b!1510846) b_and!105169 (not b!1511119) (not b!1511091) (not d!447514) (not b!1511086) (not b!1511082) (not b!1511043) (not b!1511087) (not d!447482) (not b!1511205) (not b!1511267) (not d!447518) (not b!1510962) (not b!1510789) (not d!447512) (not d!447584) (not b!1511268) (not b!1511239) (not setNonEmpty!9016) (not b!1511269) (not b!1511036) (not b!1510933) (not d!447500) (not b!1511179) (not b!1511211) (not b!1511133) (not b!1510886) (not b!1511095) (not b!1511021) (not b!1511000) (not b!1511081) (not b!1511208) (not d!447478) (not b!1511118) (not setNonEmpty!9017) (not b!1510880) (not b!1511244) (not d!447496) (not b!1511054) (not b!1510860) (not b!1511190) (not setNonEmpty!9018) (not d!447504) (not b!1510787) (not b!1511241) (not d!447606) (not b!1511160) (not b!1510973) (not b!1510981) (not b!1510856) (not b!1511079) (not d!447484) (not b!1511052) (not b!1510968) (not b!1511015) (not b!1510808) (not b!1511171) (not b!1510959) (not b!1511117) (not b!1511246) (not b!1511204) (not b!1511096) (not b!1511225) (not b!1511210) (not b!1510993) (not b_next!39851) (not d!447492) b_and!105159 (not b!1510970) (not b!1510978) (not b!1510961) (not bm!100314) (not b!1510915) (not b!1511040) (not setNonEmpty!9025) (not b!1510881) (not b!1511012) (not d!447568) (not b!1511156) (not b!1511247) (not b!1511176) (not b!1510967) (not b!1510864) (not d!447602) (not b!1510971) (not b!1511226) (not b!1511173) (not b!1510895) (not b!1511035) (not b!1511033) (not b!1511178) (not d!447472) (not d!447480) (not d!447522) (not b!1511104) (not b!1510845) (not b!1511272) (not b!1511245) (not mapNonEmpty!6929) (not b!1511088) (not d!447550) (not b!1511039) (not d!447506) (not d!447600) (not d!447566) (not setNonEmpty!9006) (not d!447502) (not d!447546) b_and!105165 (not d!447476) (not b!1511235) (not b!1511130) b_and!105161 (not d!447508) (not b!1510879) (not b!1511237) (not d!447538) (not b!1511209) (not b!1511191) (not b!1510954) (not setNonEmpty!9011) (not d!447564) (not b!1511212) b_and!105171 (not b!1510969) (not b!1511034) (not b_lambda!47493) (not b!1510867) (not b!1510982) (not b!1511174) (not b_next!39845) (not b!1510890) (not b!1511101) (not b!1510825) (not b!1511103) (not b!1510953) (not b!1510796) (not d!447562) (not b_next!39855) (not b!1511017) (not b!1510977) (not b!1510842) (not b!1510865) (not d!447608) (not setNonEmpty!9024) tp_is_empty!7009 (not d!447470) (not d!447540) (not d!447516) (not mapNonEmpty!6932) (not b!1511083) (not bm!100310) (not d!447616) (not d!447494) (not d!447570) (not d!447534) (not d!447592) (not b!1510857) (not b!1511158) (not b!1511038) (not b!1510841) (not b!1510985) (not b_next!39849) (not setNonEmpty!9023) (not b!1511270) (not b!1510952) (not b!1511221) (not setNonEmpty!9033) (not b!1511030) (not b!1511180) b_and!105153 (not b!1510910) (not b!1511100) b_and!105155 (not d!447530) (not d!447572) (not d!447594) (not d!447626) (not b!1511264) (not b!1511242) (not d!447578) (not b!1511132) (not b!1511009) (not b!1511106) (not d!447610) (not b!1511099) (not d!447612) (not b!1511002) (not b!1510863) (not d!447488) (not b!1511050) (not b!1511238) (not b!1510966) (not d!447524) (not b!1510975) (not b!1510861) (not b!1511170) (not b!1511159) (not b!1511031) (not setNonEmpty!9022) (not d!447528) (not b!1511046) (not b_next!39843) (not b!1510974) (not b!1510986) (not b!1511207) (not b!1510911) (not b_next!39859) (not b!1511248) (not d!447474) b_and!105151 (not setNonEmpty!9012) (not b!1510859) (not b!1511019) (not setNonEmpty!9026) (not d!447520) (not d!447580) (not b!1510887) (not b_next!39853) (not b!1510884) (not b!1511090) (not b!1511098) (not b!1511271) (not b!1511014) (not b!1511206) (not b!1510891) (not b!1511108) (not b!1511240) (not tb!86197) (not b!1511107) (not b!1511157) (not d!447510))
(check-sat (not b_next!39861) b_and!105167 b_and!105169 b_and!105171 (not b_next!39845) (not b_next!39855) (not b_next!39857) (not b_next!39847) b_and!105157 (not b_next!39851) b_and!105159 b_and!105165 b_and!105161 b_and!105153 b_and!105155 (not b_next!39849) (not b_next!39859) (not b_next!39843) b_and!105151 (not b_next!39853))
