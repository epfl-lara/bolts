; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71724 () Bool)

(assert start!71724)

(declare-fun b!774087 () Bool)

(declare-fun b_free!24641 () Bool)

(declare-fun b_next!24705 () Bool)

(assert (=> b!774087 (= b_free!24641 (not b_next!24705))))

(declare-fun tp!254890 () Bool)

(declare-fun b_and!72121 () Bool)

(assert (=> b!774087 (= tp!254890 b_and!72121)))

(declare-fun b!774073 () Bool)

(declare-fun b_free!24643 () Bool)

(declare-fun b_next!24707 () Bool)

(assert (=> b!774073 (= b_free!24643 (not b_next!24707))))

(declare-fun tp!254872 () Bool)

(declare-fun b_and!72123 () Bool)

(assert (=> b!774073 (= tp!254872 b_and!72123)))

(declare-fun b!774097 () Bool)

(declare-fun b_free!24645 () Bool)

(declare-fun b_next!24709 () Bool)

(assert (=> b!774097 (= b_free!24645 (not b_next!24709))))

(declare-fun tp!254878 () Bool)

(declare-fun b_and!72125 () Bool)

(assert (=> b!774097 (= tp!254878 b_and!72125)))

(declare-fun b!774080 () Bool)

(declare-fun b_free!24647 () Bool)

(declare-fun b_next!24711 () Bool)

(assert (=> b!774080 (= b_free!24647 (not b_next!24711))))

(declare-fun tp!254886 () Bool)

(declare-fun b_and!72127 () Bool)

(assert (=> b!774080 (= tp!254886 b_and!72127)))

(declare-fun b!774081 () Bool)

(declare-fun b_free!24649 () Bool)

(declare-fun b_next!24713 () Bool)

(assert (=> b!774081 (= b_free!24649 (not b_next!24713))))

(declare-fun tp!254871 () Bool)

(declare-fun b_and!72129 () Bool)

(assert (=> b!774081 (= tp!254871 b_and!72129)))

(declare-fun b_free!24651 () Bool)

(declare-fun b_next!24715 () Bool)

(assert (=> b!774081 (= b_free!24651 (not b_next!24715))))

(declare-fun tp!254880 () Bool)

(declare-fun b_and!72131 () Bool)

(assert (=> b!774081 (= tp!254880 b_and!72131)))

(declare-fun b!774113 () Bool)

(declare-fun b_free!24653 () Bool)

(declare-fun b_next!24717 () Bool)

(assert (=> b!774113 (= b_free!24653 (not b_next!24717))))

(declare-fun tp!254867 () Bool)

(declare-fun b_and!72133 () Bool)

(assert (=> b!774113 (= tp!254867 b_and!72133)))

(declare-fun b!774095 () Bool)

(declare-fun b_free!24655 () Bool)

(declare-fun b_next!24719 () Bool)

(assert (=> b!774095 (= b_free!24655 (not b_next!24719))))

(declare-fun tp!254874 () Bool)

(declare-fun b_and!72135 () Bool)

(assert (=> b!774095 (= tp!254874 b_and!72135)))

(declare-fun e!499373 () Bool)

(declare-fun e!499363 () Bool)

(assert (=> b!774073 (= e!499373 (and e!499363 tp!254872))))

(declare-fun b!774074 () Bool)

(declare-fun res!338792 () Bool)

(declare-fun e!499358 () Bool)

(assert (=> b!774074 (=> (not res!338792) (not e!499358))))

(declare-datatypes ((C!4608 0))(
  ( (C!4609 (val!2534 Int)) )
))
(declare-datatypes ((Regex!2003 0))(
  ( (ElementMatch!2003 (c!130353 C!4608)) (Concat!3696 (regOne!4518 Regex!2003) (regTwo!4518 Regex!2003)) (EmptyExpr!2003) (Star!2003 (reg!2332 Regex!2003)) (EmptyLang!2003) (Union!2003 (regOne!4519 Regex!2003) (regTwo!4519 Regex!2003)) )
))
(declare-datatypes ((List!8696 0))(
  ( (Nil!8682) (Cons!8682 (h!14083 Regex!2003) (t!91978 List!8696)) )
))
(declare-datatypes ((Context!810 0))(
  ( (Context!811 (exprs!905 List!8696)) )
))
(declare-datatypes ((tuple2!10190 0))(
  ( (tuple2!10191 (_1!5891 Context!810) (_2!5891 C!4608)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10192 0))(
  ( (tuple2!10193 (_1!5892 tuple2!10190) (_2!5892 (InoxSet Context!810))) )
))
(declare-datatypes ((List!8697 0))(
  ( (Nil!8683) (Cons!8683 (h!14084 tuple2!10192) (t!91979 List!8697)) )
))
(declare-datatypes ((array!4305 0))(
  ( (array!4306 (arr!1918 (Array (_ BitVec 32) (_ BitVec 64))) (size!7057 (_ BitVec 32))) )
))
(declare-datatypes ((array!4307 0))(
  ( (array!4308 (arr!1919 (Array (_ BitVec 32) List!8697)) (size!7058 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2450 0))(
  ( (LongMapFixedSize!2451 (defaultEntry!1581 Int) (mask!3111 (_ BitVec 32)) (extraKeys!1472 (_ BitVec 32)) (zeroValue!1482 List!8697) (minValue!1482 List!8697) (_size!2559 (_ BitVec 32)) (_keys!1519 array!4305) (_values!1504 array!4307) (_vacant!1286 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4841 0))(
  ( (Cell!4842 (v!18811 LongMapFixedSize!2450)) )
))
(declare-datatypes ((MutLongMap!1225 0))(
  ( (LongMap!1225 (underlying!2633 Cell!4841)) (MutLongMapExt!1224 (__x!7046 Int)) )
))
(declare-datatypes ((Cell!4843 0))(
  ( (Cell!4844 (v!18812 MutLongMap!1225)) )
))
(declare-datatypes ((Hashable!1197 0))(
  ( (HashableExt!1196 (__x!7047 Int)) )
))
(declare-datatypes ((MutableMap!1197 0))(
  ( (MutableMapExt!1196 (__x!7048 Int)) (HashMap!1197 (underlying!2634 Cell!4843) (hashF!3105 Hashable!1197) (_size!2560 (_ BitVec 32)) (defaultValue!1348 Int)) )
))
(declare-datatypes ((CacheUp!682 0))(
  ( (CacheUp!683 (cache!1584 MutableMap!1197)) )
))
(declare-fun cacheUp!653 () CacheUp!682)

(declare-fun valid!988 (CacheUp!682) Bool)

(assert (=> b!774074 (= res!338792 (valid!988 cacheUp!653))))

(declare-fun b!774075 () Bool)

(declare-fun e!499357 () Bool)

(declare-datatypes ((tuple2!10194 0))(
  ( (tuple2!10195 (_1!5893 (InoxSet Context!810)) (_2!5893 Int)) )
))
(declare-datatypes ((tuple2!10196 0))(
  ( (tuple2!10197 (_1!5894 tuple2!10194) (_2!5894 Int)) )
))
(declare-datatypes ((List!8698 0))(
  ( (Nil!8684) (Cons!8684 (h!14085 tuple2!10196) (t!91980 List!8698)) )
))
(declare-datatypes ((List!8699 0))(
  ( (Nil!8685) (Cons!8685 (h!14086 (_ BitVec 16)) (t!91981 List!8699)) )
))
(declare-datatypes ((TokenValue!1693 0))(
  ( (FloatLiteralValue!3386 (text!12296 List!8699)) (TokenValueExt!1692 (__x!7049 Int)) (Broken!8465 (value!52641 List!8699)) (Object!1706) (End!1693) (Def!1693) (Underscore!1693) (Match!1693) (Else!1693) (Error!1693) (Case!1693) (If!1693) (Extends!1693) (Abstract!1693) (Class!1693) (Val!1693) (DelimiterValue!3386 (del!1753 List!8699)) (KeywordValue!1699 (value!52642 List!8699)) (CommentValue!3386 (value!52643 List!8699)) (WhitespaceValue!3386 (value!52644 List!8699)) (IndentationValue!1693 (value!52645 List!8699)) (String!10220) (Int32!1693) (Broken!8466 (value!52646 List!8699)) (Boolean!1694) (Unit!13145) (OperatorValue!1696 (op!1753 List!8699)) (IdentifierValue!3386 (value!52647 List!8699)) (IdentifierValue!3387 (value!52648 List!8699)) (WhitespaceValue!3387 (value!52649 List!8699)) (True!3386) (False!3386) (Broken!8467 (value!52650 List!8699)) (Broken!8468 (value!52651 List!8699)) (True!3387) (RightBrace!1693) (RightBracket!1693) (Colon!1693) (Null!1693) (Comma!1693) (LeftBracket!1693) (False!3387) (LeftBrace!1693) (ImaginaryLiteralValue!1693 (text!12297 List!8699)) (StringLiteralValue!5079 (value!52652 List!8699)) (EOFValue!1693 (value!52653 List!8699)) (IdentValue!1693 (value!52654 List!8699)) (DelimiterValue!3387 (value!52655 List!8699)) (DedentValue!1693 (value!52656 List!8699)) (NewLineValue!1693 (value!52657 List!8699)) (IntegerValue!5079 (value!52658 (_ BitVec 32)) (text!12298 List!8699)) (IntegerValue!5080 (value!52659 Int) (text!12299 List!8699)) (Times!1693) (Or!1693) (Equal!1693) (Minus!1693) (Broken!8469 (value!52660 List!8699)) (And!1693) (Div!1693) (LessEqual!1693) (Mod!1693) (Concat!3697) (Not!1693) (Plus!1693) (SpaceValue!1693 (value!52661 List!8699)) (IntegerValue!5081 (value!52662 Int) (text!12300 List!8699)) (StringLiteralValue!5080 (text!12301 List!8699)) (FloatLiteralValue!3387 (text!12302 List!8699)) (BytesLiteralValue!1693 (value!52663 List!8699)) (CommentValue!3387 (value!52664 List!8699)) (StringLiteralValue!5081 (value!52665 List!8699)) (ErrorTokenValue!1693 (msg!1754 List!8699)) )
))
(declare-datatypes ((String!10221 0))(
  ( (String!10222 (value!52666 String)) )
))
(declare-datatypes ((List!8700 0))(
  ( (Nil!8686) (Cons!8686 (h!14087 C!4608) (t!91982 List!8700)) )
))
(declare-datatypes ((IArray!5799 0))(
  ( (IArray!5800 (innerList!2957 List!8700)) )
))
(declare-datatypes ((Conc!2899 0))(
  ( (Node!2899 (left!6425 Conc!2899) (right!6755 Conc!2899) (csize!6028 Int) (cheight!3110 Int)) (Leaf!4254 (xs!5586 IArray!5799) (csize!6029 Int)) (Empty!2899) )
))
(declare-datatypes ((BalanceConc!5810 0))(
  ( (BalanceConc!5811 (c!130354 Conc!2899)) )
))
(declare-datatypes ((TokenValueInjection!3122 0))(
  ( (TokenValueInjection!3123 (toValue!2641 Int) (toChars!2500 Int)) )
))
(declare-datatypes ((Rule!3098 0))(
  ( (Rule!3099 (regex!1649 Regex!2003) (tag!1911 String!10221) (isSeparator!1649 Bool) (transformation!1649 TokenValueInjection!3122)) )
))
(declare-datatypes ((Token!2964 0))(
  ( (Token!2965 (value!52667 TokenValue!1693) (rule!2773 Rule!3098) (size!7059 Int) (originalCharacters!1907 List!8700)) )
))
(declare-datatypes ((tuple2!10198 0))(
  ( (tuple2!10199 (_1!5895 Token!2964) (_2!5895 BalanceConc!5810)) )
))
(declare-datatypes ((Option!1881 0))(
  ( (None!1880) (Some!1880 (v!18813 tuple2!10198)) )
))
(declare-datatypes ((Hashable!1198 0))(
  ( (HashableExt!1197 (__x!7050 Int)) )
))
(declare-datatypes ((tuple3!1016 0))(
  ( (tuple3!1017 (_1!5896 Regex!2003) (_2!5896 Context!810) (_3!796 C!4608)) )
))
(declare-datatypes ((tuple2!10200 0))(
  ( (tuple2!10201 (_1!5897 tuple3!1016) (_2!5897 (InoxSet Context!810))) )
))
(declare-datatypes ((List!8701 0))(
  ( (Nil!8687) (Cons!8687 (h!14088 tuple2!10200) (t!91983 List!8701)) )
))
(declare-datatypes ((array!4309 0))(
  ( (array!4310 (arr!1920 (Array (_ BitVec 32) List!8701)) (size!7060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2452 0))(
  ( (LongMapFixedSize!2453 (defaultEntry!1582 Int) (mask!3112 (_ BitVec 32)) (extraKeys!1473 (_ BitVec 32)) (zeroValue!1483 List!8701) (minValue!1483 List!8701) (_size!2561 (_ BitVec 32)) (_keys!1520 array!4305) (_values!1505 array!4309) (_vacant!1287 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4845 0))(
  ( (Cell!4846 (v!18814 LongMapFixedSize!2452)) )
))
(declare-datatypes ((MutLongMap!1226 0))(
  ( (LongMap!1226 (underlying!2635 Cell!4845)) (MutLongMapExt!1225 (__x!7051 Int)) )
))
(declare-datatypes ((array!4311 0))(
  ( (array!4312 (arr!1921 (Array (_ BitVec 32) List!8698)) (size!7061 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2454 0))(
  ( (LongMapFixedSize!2455 (defaultEntry!1583 Int) (mask!3113 (_ BitVec 32)) (extraKeys!1474 (_ BitVec 32)) (zeroValue!1484 List!8698) (minValue!1484 List!8698) (_size!2562 (_ BitVec 32)) (_keys!1521 array!4305) (_values!1506 array!4311) (_vacant!1288 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4847 0))(
  ( (Cell!4848 (v!18815 LongMapFixedSize!2454)) )
))
(declare-datatypes ((MutLongMap!1227 0))(
  ( (LongMap!1227 (underlying!2636 Cell!4847)) (MutLongMapExt!1226 (__x!7052 Int)) )
))
(declare-datatypes ((Cell!4849 0))(
  ( (Cell!4850 (v!18816 MutLongMap!1227)) )
))
(declare-datatypes ((MutableMap!1198 0))(
  ( (MutableMapExt!1197 (__x!7053 Int)) (HashMap!1198 (underlying!2637 Cell!4849) (hashF!3106 Hashable!1198) (_size!2563 (_ BitVec 32)) (defaultValue!1349 Int)) )
))
(declare-datatypes ((Hashable!1199 0))(
  ( (HashableExt!1198 (__x!7054 Int)) )
))
(declare-datatypes ((Cell!4851 0))(
  ( (Cell!4852 (v!18817 MutLongMap!1226)) )
))
(declare-datatypes ((MutableMap!1199 0))(
  ( (MutableMapExt!1198 (__x!7055 Int)) (HashMap!1199 (underlying!2638 Cell!4851) (hashF!3107 Hashable!1199) (_size!2564 (_ BitVec 32)) (defaultValue!1350 Int)) )
))
(declare-datatypes ((CacheDown!688 0))(
  ( (CacheDown!689 (cache!1585 MutableMap!1199)) )
))
(declare-datatypes ((CacheFindLongestMatch!350 0))(
  ( (CacheFindLongestMatch!351 (cache!1586 MutableMap!1198) (totalInput!2139 BalanceConc!5810)) )
))
(declare-datatypes ((tuple4!576 0))(
  ( (tuple4!577 (_1!5898 Option!1881) (_2!5898 CacheUp!682) (_3!797 CacheFindLongestMatch!350) (_4!288 CacheDown!688)) )
))
(declare-fun lt!314164 () tuple4!576)

(declare-fun totalInput!472 () BalanceConc!5810)

(assert (=> b!774075 (= e!499357 (= (totalInput!2139 (_3!797 lt!314164)) totalInput!472))))

(declare-fun mapNonEmpty!5969 () Bool)

(declare-fun mapRes!5969 () Bool)

(declare-fun tp!254866 () Bool)

(declare-fun tp!254870 () Bool)

(assert (=> mapNonEmpty!5969 (= mapRes!5969 (and tp!254866 tp!254870))))

(declare-fun mapKey!5970 () (_ BitVec 32))

(declare-fun mapValue!5969 () List!8701)

(declare-fun cacheDown!666 () CacheDown!688)

(declare-fun mapRest!5970 () (Array (_ BitVec 32) List!8701))

(assert (=> mapNonEmpty!5969 (= (arr!1920 (_values!1505 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) (store mapRest!5970 mapKey!5970 mapValue!5969))))

(declare-fun mapIsEmpty!5969 () Bool)

(assert (=> mapIsEmpty!5969 mapRes!5969))

(declare-fun b!774076 () Bool)

(declare-fun e!499361 () Bool)

(declare-fun tp!254892 () Bool)

(declare-fun mapRes!5970 () Bool)

(assert (=> b!774076 (= e!499361 (and tp!254892 mapRes!5970))))

(declare-fun condMapEmpty!5969 () Bool)

(declare-fun mapDefault!5969 () List!8697)

(assert (=> b!774076 (= condMapEmpty!5969 (= (arr!1919 (_values!1504 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8697)) mapDefault!5969)))))

(declare-fun b!774077 () Bool)

(declare-fun e!499350 () Bool)

(declare-fun e!499367 () Bool)

(declare-fun lt!314163 () MutLongMap!1227)

(get-info :version)

(assert (=> b!774077 (= e!499350 (and e!499367 ((_ is LongMap!1227) lt!314163)))))

(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!350)

(assert (=> b!774077 (= lt!314163 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))

(declare-fun b!774078 () Bool)

(declare-fun e!499359 () Bool)

(declare-fun e!499372 () Bool)

(assert (=> b!774078 (= e!499359 e!499372)))

(declare-fun mapNonEmpty!5970 () Bool)

(declare-fun tp!254873 () Bool)

(declare-fun tp!254883 () Bool)

(assert (=> mapNonEmpty!5970 (= mapRes!5970 (and tp!254873 tp!254883))))

(declare-fun mapRest!5971 () (Array (_ BitVec 32) List!8697))

(declare-fun mapValue!5971 () List!8697)

(declare-fun mapKey!5969 () (_ BitVec 32))

(assert (=> mapNonEmpty!5970 (= (arr!1919 (_values!1504 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) (store mapRest!5971 mapKey!5969 mapValue!5971))))

(declare-fun b!774079 () Bool)

(assert (=> b!774079 (= e!499358 (not e!499357))))

(declare-fun res!338798 () Bool)

(assert (=> b!774079 (=> (not res!338798) (not e!499357))))

(declare-datatypes ((List!8702 0))(
  ( (Nil!8688) (Cons!8688 (h!14089 Rule!3098) (t!91984 List!8702)) )
))
(declare-fun rulesArg!343 () List!8702)

(declare-fun input!1432 () BalanceConc!5810)

(declare-datatypes ((LexerInterface!1451 0))(
  ( (LexerInterfaceExt!1448 (__x!7056 Int)) (Lexer!1449) )
))
(declare-fun thiss!15653 () LexerInterface!1451)

(declare-fun maxPrefixZipperSequenceV2!194 (LexerInterface!1451 List!8702 BalanceConc!5810 BalanceConc!5810) Option!1881)

(assert (=> b!774079 (= res!338798 (= (_1!5898 lt!314164) (maxPrefixZipperSequenceV2!194 thiss!15653 rulesArg!343 input!1432 totalInput!472)))))

(declare-fun e!499353 () tuple4!576)

(assert (=> b!774079 (= lt!314164 e!499353)))

(declare-fun c!130352 () Bool)

(assert (=> b!774079 (= c!130352 (and ((_ is Cons!8688) rulesArg!343) ((_ is Nil!8688) (t!91984 rulesArg!343))))))

(declare-fun lt!314159 () List!8700)

(declare-fun isPrefix!1001 (List!8700 List!8700) Bool)

(assert (=> b!774079 (isPrefix!1001 lt!314159 lt!314159)))

(declare-datatypes ((Unit!13146 0))(
  ( (Unit!13147) )
))
(declare-fun lt!314161 () Unit!13146)

(declare-fun lemmaIsPrefixRefl!712 (List!8700 List!8700) Unit!13146)

(assert (=> b!774079 (= lt!314161 (lemmaIsPrefixRefl!712 lt!314159 lt!314159))))

(declare-fun tp!254881 () Bool)

(declare-fun tp!254868 () Bool)

(declare-fun e!499351 () Bool)

(declare-fun e!499376 () Bool)

(declare-fun array_inv!1395 (array!4305) Bool)

(declare-fun array_inv!1396 (array!4309) Bool)

(assert (=> b!774080 (= e!499376 (and tp!254886 tp!254881 tp!254868 (array_inv!1395 (_keys!1520 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) (array_inv!1396 (_values!1505 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) e!499351))))

(declare-fun e!499346 () Bool)

(assert (=> b!774081 (= e!499346 (and tp!254871 tp!254880))))

(declare-fun b!774082 () Bool)

(declare-fun res!338793 () Bool)

(assert (=> b!774082 (=> (not res!338793) (not e!499357))))

(declare-fun valid!989 (CacheFindLongestMatch!350) Bool)

(assert (=> b!774082 (= res!338793 (valid!989 (_3!797 lt!314164)))))

(declare-fun b!774083 () Bool)

(declare-fun res!338795 () Bool)

(declare-fun e!499366 () Bool)

(assert (=> b!774083 (=> (not res!338795) (not e!499366))))

(declare-fun isEmpty!5231 (List!8702) Bool)

(assert (=> b!774083 (= res!338795 (not (isEmpty!5231 rulesArg!343)))))

(declare-fun b!774084 () Bool)

(declare-fun e!499379 () Bool)

(declare-fun e!499368 () Bool)

(assert (=> b!774084 (= e!499379 e!499368)))

(declare-fun b!774085 () Bool)

(declare-fun e!499360 () Bool)

(declare-fun lt!314165 () MutLongMap!1225)

(assert (=> b!774085 (= e!499360 (and e!499379 ((_ is LongMap!1225) lt!314165)))))

(assert (=> b!774085 (= lt!314165 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))

(declare-fun b!774086 () Bool)

(declare-fun res!338799 () Bool)

(assert (=> b!774086 (=> (not res!338799) (not e!499357))))

(assert (=> b!774086 (= res!338799 (valid!988 (_2!5898 lt!314164)))))

(declare-fun e!499377 () Bool)

(declare-fun tp!254893 () Bool)

(declare-fun tp!254877 () Bool)

(declare-fun array_inv!1397 (array!4307) Bool)

(assert (=> b!774087 (= e!499377 (and tp!254890 tp!254877 tp!254893 (array_inv!1395 (_keys!1519 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) (array_inv!1397 (_values!1504 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) e!499361))))

(declare-fun b!774088 () Bool)

(declare-fun res!338791 () Bool)

(assert (=> b!774088 (=> (not res!338791) (not e!499366))))

(declare-fun rulesValidInductive!592 (LexerInterface!1451 List!8702) Bool)

(assert (=> b!774088 (= res!338791 (rulesValidInductive!592 thiss!15653 rulesArg!343))))

(declare-fun b!774089 () Bool)

(declare-datatypes ((tuple4!578 0))(
  ( (tuple4!579 (_1!5899 Option!1881) (_2!5899 CacheUp!682) (_3!798 CacheDown!688) (_4!289 CacheFindLongestMatch!350)) )
))
(declare-fun lt!314167 () tuple4!578)

(assert (=> b!774089 (= e!499353 (tuple4!577 (_1!5899 lt!314167) (_2!5899 lt!314167) (_4!289 lt!314167) (_3!798 lt!314167)))))

(declare-fun call!46845 () tuple4!578)

(assert (=> b!774089 (= lt!314167 call!46845)))

(declare-fun mapNonEmpty!5971 () Bool)

(declare-fun mapRes!5971 () Bool)

(declare-fun tp!254888 () Bool)

(declare-fun tp!254882 () Bool)

(assert (=> mapNonEmpty!5971 (= mapRes!5971 (and tp!254888 tp!254882))))

(declare-fun mapRest!5969 () (Array (_ BitVec 32) List!8698))

(declare-fun mapValue!5970 () List!8698)

(declare-fun mapKey!5971 () (_ BitVec 32))

(assert (=> mapNonEmpty!5971 (= (arr!1921 (_values!1506 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) (store mapRest!5969 mapKey!5971 mapValue!5970))))

(declare-fun bm!46840 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!72 (LexerInterface!1451 Rule!3098 BalanceConc!5810 BalanceConc!5810 CacheUp!682 CacheDown!688 CacheFindLongestMatch!350) tuple4!578)

(assert (=> bm!46840 (= call!46845 (maxPrefixOneRuleZipperSequenceV2Mem!72 thiss!15653 (h!14089 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!774090 () Bool)

(declare-fun res!338796 () Bool)

(assert (=> b!774090 (=> (not res!338796) (not e!499358))))

(assert (=> b!774090 (= res!338796 (valid!989 cacheFindLongestMatch!134))))

(declare-fun b!774091 () Bool)

(declare-fun e!499369 () Bool)

(declare-fun tp!254889 () Bool)

(assert (=> b!774091 (= e!499369 (and tp!254889 mapRes!5971))))

(declare-fun condMapEmpty!5971 () Bool)

(declare-fun mapDefault!5971 () List!8698)

(assert (=> b!774091 (= condMapEmpty!5971 (= (arr!1921 (_values!1506 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8698)) mapDefault!5971)))))

(declare-fun b!774092 () Bool)

(declare-fun e!499364 () Bool)

(declare-fun e!499370 () Bool)

(assert (=> b!774092 (= e!499364 e!499370)))

(declare-fun mapIsEmpty!5970 () Bool)

(assert (=> mapIsEmpty!5970 mapRes!5971))

(declare-fun b!774093 () Bool)

(declare-fun res!338789 () Bool)

(assert (=> b!774093 (=> (not res!338789) (not e!499358))))

(assert (=> b!774093 (= res!338789 (= (totalInput!2139 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun e!499375 () Bool)

(declare-fun tp!254884 () Bool)

(declare-fun b!774094 () Bool)

(declare-fun inv!11011 (String!10221) Bool)

(declare-fun inv!11015 (TokenValueInjection!3122) Bool)

(assert (=> b!774094 (= e!499375 (and tp!254884 (inv!11011 (tag!1911 (h!14089 rulesArg!343))) (inv!11015 (transformation!1649 (h!14089 rulesArg!343))) e!499346))))

(declare-fun e!499362 () Bool)

(assert (=> b!774095 (= e!499362 (and e!499350 tp!254874))))

(declare-fun b!774096 () Bool)

(declare-fun e!499380 () Bool)

(assert (=> b!774096 (= e!499367 e!499380)))

(declare-fun tp!254875 () Bool)

(declare-fun e!499356 () Bool)

(declare-fun tp!254879 () Bool)

(declare-fun array_inv!1398 (array!4311) Bool)

(assert (=> b!774097 (= e!499356 (and tp!254878 tp!254875 tp!254879 (array_inv!1395 (_keys!1521 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) (array_inv!1398 (_values!1506 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) e!499369))))

(declare-fun b!774098 () Bool)

(assert (=> b!774098 (= e!499370 e!499376)))

(declare-fun b!774099 () Bool)

(assert (=> b!774099 (= e!499366 e!499358)))

(declare-fun res!338794 () Bool)

(assert (=> b!774099 (=> (not res!338794) (not e!499358))))

(declare-fun isSuffix!227 (List!8700 List!8700) Bool)

(declare-fun list!3452 (BalanceConc!5810) List!8700)

(assert (=> b!774099 (= res!338794 (isSuffix!227 lt!314159 (list!3452 totalInput!472)))))

(assert (=> b!774099 (= lt!314159 (list!3452 input!1432))))

(declare-fun b!774100 () Bool)

(declare-fun lt!314160 () MutLongMap!1226)

(assert (=> b!774100 (= e!499363 (and e!499364 ((_ is LongMap!1226) lt!314160)))))

(assert (=> b!774100 (= lt!314160 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))

(declare-fun res!338797 () Bool)

(assert (=> start!71724 (=> (not res!338797) (not e!499366))))

(assert (=> start!71724 (= res!338797 ((_ is Lexer!1449) thiss!15653))))

(assert (=> start!71724 e!499366))

(declare-fun e!499347 () Bool)

(assert (=> start!71724 e!499347))

(declare-fun e!499354 () Bool)

(declare-fun inv!11016 (BalanceConc!5810) Bool)

(assert (=> start!71724 (and (inv!11016 input!1432) e!499354)))

(declare-fun e!499365 () Bool)

(declare-fun inv!11017 (CacheFindLongestMatch!350) Bool)

(assert (=> start!71724 (and (inv!11017 cacheFindLongestMatch!134) e!499365)))

(assert (=> start!71724 true))

(declare-fun inv!11018 (CacheUp!682) Bool)

(assert (=> start!71724 (and (inv!11018 cacheUp!653) e!499359)))

(declare-fun e!499374 () Bool)

(assert (=> start!71724 (and (inv!11016 totalInput!472) e!499374)))

(declare-fun e!499355 () Bool)

(declare-fun inv!11019 (CacheDown!688) Bool)

(assert (=> start!71724 (and (inv!11019 cacheDown!666) e!499355)))

(declare-fun b!774101 () Bool)

(declare-fun tp!254887 () Bool)

(declare-fun inv!11020 (Conc!2899) Bool)

(assert (=> b!774101 (= e!499374 (and (inv!11020 (c!130354 totalInput!472)) tp!254887))))

(declare-fun b!774102 () Bool)

(assert (=> b!774102 (= e!499368 e!499377)))

(declare-fun e!499348 () Bool)

(declare-fun b!774103 () Bool)

(assert (=> b!774103 (= e!499365 (and e!499362 (inv!11016 (totalInput!2139 cacheFindLongestMatch!134)) e!499348))))

(declare-fun mapIsEmpty!5971 () Bool)

(assert (=> mapIsEmpty!5971 mapRes!5970))

(declare-fun b!774104 () Bool)

(assert (=> b!774104 (= e!499380 e!499356)))

(declare-fun b!774105 () Bool)

(declare-fun tp!254869 () Bool)

(assert (=> b!774105 (= e!499347 (and e!499375 tp!254869))))

(declare-fun b!774106 () Bool)

(declare-fun tp!254876 () Bool)

(assert (=> b!774106 (= e!499354 (and (inv!11020 (c!130354 input!1432)) tp!254876))))

(declare-fun b!774107 () Bool)

(declare-fun res!338800 () Bool)

(assert (=> b!774107 (=> (not res!338800) (not e!499357))))

(declare-fun valid!990 (CacheDown!688) Bool)

(assert (=> b!774107 (= res!338800 (valid!990 (_4!288 lt!314164)))))

(declare-fun b!774108 () Bool)

(declare-fun tp!254891 () Bool)

(assert (=> b!774108 (= e!499348 (and (inv!11020 (c!130354 (totalInput!2139 cacheFindLongestMatch!134))) tp!254891))))

(declare-fun b!774109 () Bool)

(declare-fun tp!254885 () Bool)

(assert (=> b!774109 (= e!499351 (and tp!254885 mapRes!5969))))

(declare-fun condMapEmpty!5970 () Bool)

(declare-fun mapDefault!5970 () List!8701)

(assert (=> b!774109 (= condMapEmpty!5970 (= (arr!1920 (_values!1505 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8701)) mapDefault!5970)))))

(declare-fun b!774110 () Bool)

(assert (=> b!774110 (= e!499355 e!499373)))

(declare-fun b!774111 () Bool)

(declare-fun res!338790 () Bool)

(assert (=> b!774111 (=> (not res!338790) (not e!499358))))

(assert (=> b!774111 (= res!338790 (valid!990 cacheDown!666))))

(declare-fun b!774112 () Bool)

(declare-datatypes ((tuple2!10202 0))(
  ( (tuple2!10203 (_1!5900 Option!1881) (_2!5900 Option!1881)) )
))
(declare-fun lt!314162 () tuple2!10202)

(declare-fun lt!314158 () tuple4!578)

(assert (=> b!774112 (= e!499353 (tuple4!577 (ite (and ((_ is None!1880) (_1!5900 lt!314162)) ((_ is None!1880) (_2!5900 lt!314162))) None!1880 (ite ((_ is None!1880) (_2!5900 lt!314162)) (_1!5900 lt!314162) (ite ((_ is None!1880) (_1!5900 lt!314162)) (_2!5900 lt!314162) (ite (>= (size!7059 (_1!5895 (v!18813 (_1!5900 lt!314162)))) (size!7059 (_1!5895 (v!18813 (_2!5900 lt!314162))))) (_1!5900 lt!314162) (_2!5900 lt!314162))))) (_2!5899 lt!314158) (_4!289 lt!314158) (_3!798 lt!314158)))))

(declare-fun lt!314166 () tuple4!578)

(assert (=> b!774112 (= lt!314166 call!46845)))

(declare-fun maxPrefixZipperSequenceV2Mem!83 (LexerInterface!1451 List!8702 BalanceConc!5810 BalanceConc!5810 CacheUp!682 CacheDown!688 CacheFindLongestMatch!350) tuple4!578)

(assert (=> b!774112 (= lt!314158 (maxPrefixZipperSequenceV2Mem!83 thiss!15653 (t!91984 rulesArg!343) input!1432 totalInput!472 (_2!5899 lt!314166) (_3!798 lt!314166) (_4!289 lt!314166)))))

(assert (=> b!774112 (= lt!314162 (tuple2!10203 (_1!5899 lt!314166) (_1!5899 lt!314158)))))

(assert (=> b!774113 (= e!499372 (and e!499360 tp!254867))))

(assert (= (and start!71724 res!338797) b!774088))

(assert (= (and b!774088 res!338791) b!774083))

(assert (= (and b!774083 res!338795) b!774099))

(assert (= (and b!774099 res!338794) b!774074))

(assert (= (and b!774074 res!338792) b!774111))

(assert (= (and b!774111 res!338790) b!774090))

(assert (= (and b!774090 res!338796) b!774093))

(assert (= (and b!774093 res!338789) b!774079))

(assert (= (and b!774079 c!130352) b!774089))

(assert (= (and b!774079 (not c!130352)) b!774112))

(assert (= (or b!774089 b!774112) bm!46840))

(assert (= (and b!774079 res!338798) b!774086))

(assert (= (and b!774086 res!338799) b!774107))

(assert (= (and b!774107 res!338800) b!774082))

(assert (= (and b!774082 res!338793) b!774075))

(assert (= b!774094 b!774081))

(assert (= b!774105 b!774094))

(assert (= (and start!71724 ((_ is Cons!8688) rulesArg!343)) b!774105))

(assert (= start!71724 b!774106))

(assert (= (and b!774091 condMapEmpty!5971) mapIsEmpty!5970))

(assert (= (and b!774091 (not condMapEmpty!5971)) mapNonEmpty!5971))

(assert (= b!774097 b!774091))

(assert (= b!774104 b!774097))

(assert (= b!774096 b!774104))

(assert (= (and b!774077 ((_ is LongMap!1227) (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))) b!774096))

(assert (= b!774095 b!774077))

(assert (= (and b!774103 ((_ is HashMap!1198) (cache!1586 cacheFindLongestMatch!134))) b!774095))

(assert (= b!774103 b!774108))

(assert (= start!71724 b!774103))

(assert (= (and b!774076 condMapEmpty!5969) mapIsEmpty!5971))

(assert (= (and b!774076 (not condMapEmpty!5969)) mapNonEmpty!5970))

(assert (= b!774087 b!774076))

(assert (= b!774102 b!774087))

(assert (= b!774084 b!774102))

(assert (= (and b!774085 ((_ is LongMap!1225) (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))) b!774084))

(assert (= b!774113 b!774085))

(assert (= (and b!774078 ((_ is HashMap!1197) (cache!1584 cacheUp!653))) b!774113))

(assert (= start!71724 b!774078))

(assert (= start!71724 b!774101))

(assert (= (and b!774109 condMapEmpty!5970) mapIsEmpty!5969))

(assert (= (and b!774109 (not condMapEmpty!5970)) mapNonEmpty!5969))

(assert (= b!774080 b!774109))

(assert (= b!774098 b!774080))

(assert (= b!774092 b!774098))

(assert (= (and b!774100 ((_ is LongMap!1226) (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))) b!774092))

(assert (= b!774073 b!774100))

(assert (= (and b!774110 ((_ is HashMap!1199) (cache!1585 cacheDown!666))) b!774073))

(assert (= start!71724 b!774110))

(declare-fun m!1041699 () Bool)

(assert (=> b!774082 m!1041699))

(declare-fun m!1041701 () Bool)

(assert (=> start!71724 m!1041701))

(declare-fun m!1041703 () Bool)

(assert (=> start!71724 m!1041703))

(declare-fun m!1041705 () Bool)

(assert (=> start!71724 m!1041705))

(declare-fun m!1041707 () Bool)

(assert (=> start!71724 m!1041707))

(declare-fun m!1041709 () Bool)

(assert (=> start!71724 m!1041709))

(declare-fun m!1041711 () Bool)

(assert (=> b!774106 m!1041711))

(declare-fun m!1041713 () Bool)

(assert (=> b!774111 m!1041713))

(declare-fun m!1041715 () Bool)

(assert (=> b!774090 m!1041715))

(declare-fun m!1041717 () Bool)

(assert (=> b!774080 m!1041717))

(declare-fun m!1041719 () Bool)

(assert (=> b!774080 m!1041719))

(declare-fun m!1041721 () Bool)

(assert (=> b!774107 m!1041721))

(declare-fun m!1041723 () Bool)

(assert (=> b!774112 m!1041723))

(declare-fun m!1041725 () Bool)

(assert (=> b!774086 m!1041725))

(declare-fun m!1041727 () Bool)

(assert (=> b!774094 m!1041727))

(declare-fun m!1041729 () Bool)

(assert (=> b!774094 m!1041729))

(declare-fun m!1041731 () Bool)

(assert (=> bm!46840 m!1041731))

(declare-fun m!1041733 () Bool)

(assert (=> b!774101 m!1041733))

(declare-fun m!1041735 () Bool)

(assert (=> b!774097 m!1041735))

(declare-fun m!1041737 () Bool)

(assert (=> b!774097 m!1041737))

(declare-fun m!1041739 () Bool)

(assert (=> mapNonEmpty!5969 m!1041739))

(declare-fun m!1041741 () Bool)

(assert (=> b!774099 m!1041741))

(assert (=> b!774099 m!1041741))

(declare-fun m!1041743 () Bool)

(assert (=> b!774099 m!1041743))

(declare-fun m!1041745 () Bool)

(assert (=> b!774099 m!1041745))

(declare-fun m!1041747 () Bool)

(assert (=> b!774088 m!1041747))

(declare-fun m!1041749 () Bool)

(assert (=> b!774108 m!1041749))

(declare-fun m!1041751 () Bool)

(assert (=> b!774103 m!1041751))

(declare-fun m!1041753 () Bool)

(assert (=> mapNonEmpty!5970 m!1041753))

(declare-fun m!1041755 () Bool)

(assert (=> b!774083 m!1041755))

(declare-fun m!1041757 () Bool)

(assert (=> b!774087 m!1041757))

(declare-fun m!1041759 () Bool)

(assert (=> b!774087 m!1041759))

(declare-fun m!1041761 () Bool)

(assert (=> b!774079 m!1041761))

(declare-fun m!1041763 () Bool)

(assert (=> b!774079 m!1041763))

(declare-fun m!1041765 () Bool)

(assert (=> b!774079 m!1041765))

(declare-fun m!1041767 () Bool)

(assert (=> b!774074 m!1041767))

(declare-fun m!1041769 () Bool)

(assert (=> mapNonEmpty!5971 m!1041769))

(check-sat (not b!774097) (not b!774111) (not b!774103) b_and!72135 (not b!774074) (not b!774087) b_and!72121 (not b_next!24713) (not b!774107) (not b!774086) b_and!72133 (not b_next!24719) (not b!774101) (not b_next!24709) (not b!774109) (not b!774088) (not mapNonEmpty!5970) b_and!72129 b_and!72125 (not mapNonEmpty!5971) b_and!72127 (not b_next!24711) (not b!774083) (not b!774112) (not b!774108) (not b!774105) (not b!774094) (not b!774082) (not bm!46840) (not b!774090) (not b!774099) (not b!774091) (not b!774080) (not b!774079) b_and!72131 (not b_next!24705) (not b_next!24715) (not start!71724) (not mapNonEmpty!5969) b_and!72123 (not b!774106) (not b_next!24717) (not b_next!24707) (not b!774076))
(check-sat b_and!72135 b_and!72121 b_and!72129 (not b_next!24713) b_and!72133 (not b_next!24715) b_and!72123 (not b_next!24717) (not b_next!24707) (not b_next!24719) (not b_next!24709) b_and!72125 b_and!72127 (not b_next!24711) b_and!72131 (not b_next!24705))
(get-model)

(declare-fun d!251951 () Bool)

(assert (=> d!251951 (= (array_inv!1395 (_keys!1521 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) (bvsge (size!7057 (_keys!1521 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!774097 d!251951))

(declare-fun d!251953 () Bool)

(assert (=> d!251953 (= (array_inv!1398 (_values!1506 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) (bvsge (size!7061 (_values!1506 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!774097 d!251953))

(declare-fun d!251955 () Bool)

(declare-fun validCacheMapDown!108 (MutableMap!1199) Bool)

(assert (=> d!251955 (= (valid!990 (_4!288 lt!314164)) (validCacheMapDown!108 (cache!1585 (_4!288 lt!314164))))))

(declare-fun bs!166029 () Bool)

(assert (= bs!166029 d!251955))

(declare-fun m!1041771 () Bool)

(assert (=> bs!166029 m!1041771))

(assert (=> b!774107 d!251955))

(declare-fun b!774130 () Bool)

(declare-fun res!338822 () Bool)

(declare-fun e!499396 () Bool)

(assert (=> b!774130 (=> (not res!338822) (not e!499396))))

(declare-fun e!499393 () Bool)

(assert (=> b!774130 (= res!338822 e!499393)))

(declare-fun res!338820 () Bool)

(assert (=> b!774130 (=> res!338820 e!499393)))

(declare-fun lt!314188 () Option!1881)

(declare-fun isDefined!1534 (Option!1881) Bool)

(assert (=> b!774130 (= res!338820 (not (isDefined!1534 lt!314188)))))

(declare-fun b!774131 () Bool)

(declare-fun e!499394 () Option!1881)

(declare-fun call!46848 () Option!1881)

(assert (=> b!774131 (= e!499394 call!46848)))

(declare-fun b!774133 () Bool)

(declare-fun e!499397 () Bool)

(declare-fun get!2758 (Option!1881) tuple2!10198)

(declare-datatypes ((tuple2!10204 0))(
  ( (tuple2!10205 (_1!5901 Token!2964) (_2!5901 List!8700)) )
))
(declare-datatypes ((Option!1882 0))(
  ( (None!1881) (Some!1881 (v!18818 tuple2!10204)) )
))
(declare-fun get!2759 (Option!1882) tuple2!10204)

(declare-fun maxPrefix!916 (LexerInterface!1451 List!8702 List!8700) Option!1882)

(assert (=> b!774133 (= e!499397 (= (list!3452 (_2!5895 (get!2758 lt!314188))) (_2!5901 (get!2759 (maxPrefix!916 thiss!15653 rulesArg!343 (list!3452 input!1432))))))))

(declare-fun b!774134 () Bool)

(declare-fun e!499395 () Bool)

(assert (=> b!774134 (= e!499396 e!499395)))

(declare-fun res!338817 () Bool)

(assert (=> b!774134 (=> res!338817 e!499395)))

(assert (=> b!774134 (= res!338817 (not (isDefined!1534 lt!314188)))))

(declare-fun e!499398 () Bool)

(declare-fun b!774135 () Bool)

(declare-fun maxPrefixZipper!238 (LexerInterface!1451 List!8702 List!8700) Option!1882)

(assert (=> b!774135 (= e!499398 (= (list!3452 (_2!5895 (get!2758 lt!314188))) (_2!5901 (get!2759 (maxPrefixZipper!238 thiss!15653 rulesArg!343 (list!3452 input!1432))))))))

(declare-fun b!774136 () Bool)

(declare-fun lt!314184 () Option!1881)

(declare-fun lt!314182 () Option!1881)

(assert (=> b!774136 (= e!499394 (ite (and ((_ is None!1880) lt!314184) ((_ is None!1880) lt!314182)) None!1880 (ite ((_ is None!1880) lt!314182) lt!314184 (ite ((_ is None!1880) lt!314184) lt!314182 (ite (>= (size!7059 (_1!5895 (v!18813 lt!314184))) (size!7059 (_1!5895 (v!18813 lt!314182)))) lt!314184 lt!314182)))))))

(assert (=> b!774136 (= lt!314184 call!46848)))

(assert (=> b!774136 (= lt!314182 (maxPrefixZipperSequenceV2!194 thiss!15653 (t!91984 rulesArg!343) input!1432 totalInput!472))))

(declare-fun bm!46843 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!83 (LexerInterface!1451 Rule!3098 BalanceConc!5810 BalanceConc!5810) Option!1881)

(assert (=> bm!46843 (= call!46848 (maxPrefixOneRuleZipperSequenceV2!83 thiss!15653 (h!14089 rulesArg!343) input!1432 totalInput!472))))

(declare-fun b!774137 () Bool)

(assert (=> b!774137 (= e!499395 e!499397)))

(declare-fun res!338821 () Bool)

(assert (=> b!774137 (=> (not res!338821) (not e!499397))))

(assert (=> b!774137 (= res!338821 (= (_1!5895 (get!2758 lt!314188)) (_1!5901 (get!2759 (maxPrefix!916 thiss!15653 rulesArg!343 (list!3452 input!1432))))))))

(declare-fun d!251957 () Bool)

(assert (=> d!251957 e!499396))

(declare-fun res!338819 () Bool)

(assert (=> d!251957 (=> (not res!338819) (not e!499396))))

(declare-fun isDefined!1535 (Option!1882) Bool)

(assert (=> d!251957 (= res!338819 (= (isDefined!1534 lt!314188) (isDefined!1535 (maxPrefixZipper!238 thiss!15653 rulesArg!343 (list!3452 input!1432)))))))

(assert (=> d!251957 (= lt!314188 e!499394)))

(declare-fun c!130358 () Bool)

(assert (=> d!251957 (= c!130358 (and ((_ is Cons!8688) rulesArg!343) ((_ is Nil!8688) (t!91984 rulesArg!343))))))

(declare-fun lt!314185 () Unit!13146)

(declare-fun lt!314183 () Unit!13146)

(assert (=> d!251957 (= lt!314185 lt!314183)))

(declare-fun lt!314186 () List!8700)

(declare-fun lt!314187 () List!8700)

(assert (=> d!251957 (isPrefix!1001 lt!314186 lt!314187)))

(assert (=> d!251957 (= lt!314183 (lemmaIsPrefixRefl!712 lt!314186 lt!314187))))

(assert (=> d!251957 (= lt!314187 (list!3452 input!1432))))

(assert (=> d!251957 (= lt!314186 (list!3452 input!1432))))

(assert (=> d!251957 (rulesValidInductive!592 thiss!15653 rulesArg!343)))

(assert (=> d!251957 (= (maxPrefixZipperSequenceV2!194 thiss!15653 rulesArg!343 input!1432 totalInput!472) lt!314188)))

(declare-fun b!774132 () Bool)

(assert (=> b!774132 (= e!499393 e!499398)))

(declare-fun res!338818 () Bool)

(assert (=> b!774132 (=> (not res!338818) (not e!499398))))

(assert (=> b!774132 (= res!338818 (= (_1!5895 (get!2758 lt!314188)) (_1!5901 (get!2759 (maxPrefixZipper!238 thiss!15653 rulesArg!343 (list!3452 input!1432))))))))

(assert (= (and d!251957 c!130358) b!774131))

(assert (= (and d!251957 (not c!130358)) b!774136))

(assert (= (or b!774131 b!774136) bm!46843))

(assert (= (and d!251957 res!338819) b!774130))

(assert (= (and b!774130 (not res!338820)) b!774132))

(assert (= (and b!774132 res!338818) b!774135))

(assert (= (and b!774130 res!338822) b!774134))

(assert (= (and b!774134 (not res!338817)) b!774137))

(assert (= (and b!774137 res!338821) b!774133))

(declare-fun m!1041773 () Bool)

(assert (=> b!774132 m!1041773))

(assert (=> b!774132 m!1041745))

(assert (=> b!774132 m!1041745))

(declare-fun m!1041775 () Bool)

(assert (=> b!774132 m!1041775))

(assert (=> b!774132 m!1041775))

(declare-fun m!1041777 () Bool)

(assert (=> b!774132 m!1041777))

(declare-fun m!1041779 () Bool)

(assert (=> b!774130 m!1041779))

(declare-fun m!1041781 () Bool)

(assert (=> bm!46843 m!1041781))

(assert (=> d!251957 m!1041775))

(declare-fun m!1041783 () Bool)

(assert (=> d!251957 m!1041783))

(assert (=> d!251957 m!1041747))

(assert (=> d!251957 m!1041745))

(assert (=> d!251957 m!1041775))

(assert (=> d!251957 m!1041745))

(assert (=> d!251957 m!1041779))

(declare-fun m!1041785 () Bool)

(assert (=> d!251957 m!1041785))

(declare-fun m!1041787 () Bool)

(assert (=> d!251957 m!1041787))

(assert (=> b!774137 m!1041773))

(assert (=> b!774137 m!1041745))

(assert (=> b!774137 m!1041745))

(declare-fun m!1041789 () Bool)

(assert (=> b!774137 m!1041789))

(assert (=> b!774137 m!1041789))

(declare-fun m!1041791 () Bool)

(assert (=> b!774137 m!1041791))

(assert (=> b!774134 m!1041779))

(assert (=> b!774133 m!1041745))

(assert (=> b!774133 m!1041789))

(assert (=> b!774133 m!1041789))

(assert (=> b!774133 m!1041791))

(assert (=> b!774133 m!1041773))

(assert (=> b!774133 m!1041745))

(declare-fun m!1041793 () Bool)

(assert (=> b!774133 m!1041793))

(declare-fun m!1041795 () Bool)

(assert (=> b!774136 m!1041795))

(assert (=> b!774135 m!1041745))

(assert (=> b!774135 m!1041775))

(assert (=> b!774135 m!1041775))

(assert (=> b!774135 m!1041777))

(assert (=> b!774135 m!1041773))

(assert (=> b!774135 m!1041745))

(assert (=> b!774135 m!1041793))

(assert (=> b!774079 d!251957))

(declare-fun b!774149 () Bool)

(declare-fun e!499406 () Bool)

(declare-fun size!7062 (List!8700) Int)

(assert (=> b!774149 (= e!499406 (>= (size!7062 lt!314159) (size!7062 lt!314159)))))

(declare-fun b!774147 () Bool)

(declare-fun res!338832 () Bool)

(declare-fun e!499407 () Bool)

(assert (=> b!774147 (=> (not res!338832) (not e!499407))))

(declare-fun head!1424 (List!8700) C!4608)

(assert (=> b!774147 (= res!338832 (= (head!1424 lt!314159) (head!1424 lt!314159)))))

(declare-fun b!774146 () Bool)

(declare-fun e!499405 () Bool)

(assert (=> b!774146 (= e!499405 e!499407)))

(declare-fun res!338833 () Bool)

(assert (=> b!774146 (=> (not res!338833) (not e!499407))))

(assert (=> b!774146 (= res!338833 (not ((_ is Nil!8686) lt!314159)))))

(declare-fun b!774148 () Bool)

(declare-fun tail!982 (List!8700) List!8700)

(assert (=> b!774148 (= e!499407 (isPrefix!1001 (tail!982 lt!314159) (tail!982 lt!314159)))))

(declare-fun d!251959 () Bool)

(assert (=> d!251959 e!499406))

(declare-fun res!338834 () Bool)

(assert (=> d!251959 (=> res!338834 e!499406)))

(declare-fun lt!314191 () Bool)

(assert (=> d!251959 (= res!338834 (not lt!314191))))

(assert (=> d!251959 (= lt!314191 e!499405)))

(declare-fun res!338831 () Bool)

(assert (=> d!251959 (=> res!338831 e!499405)))

(assert (=> d!251959 (= res!338831 ((_ is Nil!8686) lt!314159))))

(assert (=> d!251959 (= (isPrefix!1001 lt!314159 lt!314159) lt!314191)))

(assert (= (and d!251959 (not res!338831)) b!774146))

(assert (= (and b!774146 res!338833) b!774147))

(assert (= (and b!774147 res!338832) b!774148))

(assert (= (and d!251959 (not res!338834)) b!774149))

(declare-fun m!1041797 () Bool)

(assert (=> b!774149 m!1041797))

(assert (=> b!774149 m!1041797))

(declare-fun m!1041799 () Bool)

(assert (=> b!774147 m!1041799))

(assert (=> b!774147 m!1041799))

(declare-fun m!1041801 () Bool)

(assert (=> b!774148 m!1041801))

(assert (=> b!774148 m!1041801))

(assert (=> b!774148 m!1041801))

(assert (=> b!774148 m!1041801))

(declare-fun m!1041803 () Bool)

(assert (=> b!774148 m!1041803))

(assert (=> b!774079 d!251959))

(declare-fun d!251961 () Bool)

(assert (=> d!251961 (isPrefix!1001 lt!314159 lt!314159)))

(declare-fun lt!314194 () Unit!13146)

(declare-fun choose!4881 (List!8700 List!8700) Unit!13146)

(assert (=> d!251961 (= lt!314194 (choose!4881 lt!314159 lt!314159))))

(assert (=> d!251961 (= (lemmaIsPrefixRefl!712 lt!314159 lt!314159) lt!314194)))

(declare-fun bs!166030 () Bool)

(assert (= bs!166030 d!251961))

(assert (=> bs!166030 m!1041763))

(declare-fun m!1041805 () Bool)

(assert (=> bs!166030 m!1041805))

(assert (=> b!774079 d!251961))

(declare-fun d!251963 () Bool)

(declare-fun c!130361 () Bool)

(assert (=> d!251963 (= c!130361 ((_ is Node!2899) (c!130354 (totalInput!2139 cacheFindLongestMatch!134))))))

(declare-fun e!499412 () Bool)

(assert (=> d!251963 (= (inv!11020 (c!130354 (totalInput!2139 cacheFindLongestMatch!134))) e!499412)))

(declare-fun b!774156 () Bool)

(declare-fun inv!11021 (Conc!2899) Bool)

(assert (=> b!774156 (= e!499412 (inv!11021 (c!130354 (totalInput!2139 cacheFindLongestMatch!134))))))

(declare-fun b!774157 () Bool)

(declare-fun e!499413 () Bool)

(assert (=> b!774157 (= e!499412 e!499413)))

(declare-fun res!338837 () Bool)

(assert (=> b!774157 (= res!338837 (not ((_ is Leaf!4254) (c!130354 (totalInput!2139 cacheFindLongestMatch!134)))))))

(assert (=> b!774157 (=> res!338837 e!499413)))

(declare-fun b!774158 () Bool)

(declare-fun inv!11022 (Conc!2899) Bool)

(assert (=> b!774158 (= e!499413 (inv!11022 (c!130354 (totalInput!2139 cacheFindLongestMatch!134))))))

(assert (= (and d!251963 c!130361) b!774156))

(assert (= (and d!251963 (not c!130361)) b!774157))

(assert (= (and b!774157 (not res!338837)) b!774158))

(declare-fun m!1041807 () Bool)

(assert (=> b!774156 m!1041807))

(declare-fun m!1041809 () Bool)

(assert (=> b!774158 m!1041809))

(assert (=> b!774108 d!251963))

(declare-fun d!251965 () Bool)

(assert (=> d!251965 (= (array_inv!1395 (_keys!1520 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) (bvsge (size!7057 (_keys!1520 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!774080 d!251965))

(declare-fun d!251967 () Bool)

(assert (=> d!251967 (= (array_inv!1396 (_values!1505 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) (bvsge (size!7060 (_values!1505 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!774080 d!251967))

(declare-fun b!774173 () Bool)

(declare-fun e!499420 () Bool)

(declare-fun lt!314207 () tuple4!578)

(assert (=> b!774173 (= e!499420 (= (totalInput!2139 (_4!289 lt!314207)) totalInput!472))))

(declare-fun b!774174 () Bool)

(declare-fun e!499422 () Option!1881)

(assert (=> b!774174 (= e!499422 None!1880)))

(declare-fun b!774175 () Bool)

(declare-fun res!338851 () Bool)

(assert (=> b!774175 (=> (not res!338851) (not e!499420))))

(assert (=> b!774175 (= res!338851 (valid!990 (_3!798 lt!314207)))))

(declare-fun b!774176 () Bool)

(declare-fun res!338849 () Bool)

(assert (=> b!774176 (=> (not res!338849) (not e!499420))))

(assert (=> b!774176 (= res!338849 (valid!988 (_2!5899 lt!314207)))))

(declare-fun b!774177 () Bool)

(declare-fun res!338852 () Bool)

(assert (=> b!774177 (=> (not res!338852) (not e!499420))))

(assert (=> b!774177 (= res!338852 (valid!989 (_4!289 lt!314207)))))

(declare-fun b!774178 () Bool)

(declare-fun e!499421 () Bool)

(declare-fun lt!314210 () List!8700)

(declare-fun matchR!735 (Regex!2003 List!8700) Bool)

(declare-datatypes ((tuple2!10206 0))(
  ( (tuple2!10207 (_1!5902 List!8700) (_2!5902 List!8700)) )
))
(declare-fun findLongestMatchInner!256 (Regex!2003 List!8700 Int List!8700 List!8700 Int) tuple2!10206)

(assert (=> b!774178 (= e!499421 (matchR!735 (regex!1649 (h!14089 rulesArg!343)) (_1!5902 (findLongestMatchInner!256 (regex!1649 (h!14089 rulesArg!343)) Nil!8686 (size!7062 Nil!8686) lt!314210 lt!314210 (size!7062 lt!314210)))))))

(declare-fun b!774179 () Bool)

(declare-datatypes ((tuple2!10208 0))(
  ( (tuple2!10209 (_1!5903 BalanceConc!5810) (_2!5903 BalanceConc!5810)) )
))
(declare-datatypes ((tuple4!580 0))(
  ( (tuple4!581 (_1!5904 tuple2!10208) (_2!5904 CacheUp!682) (_3!799 CacheDown!688) (_4!290 CacheFindLongestMatch!350)) )
))
(declare-fun lt!314208 () tuple4!580)

(declare-fun apply!1783 (TokenValueInjection!3122 BalanceConc!5810) TokenValue!1693)

(declare-fun size!7063 (BalanceConc!5810) Int)

(assert (=> b!774179 (= e!499422 (Some!1880 (tuple2!10199 (Token!2965 (apply!1783 (transformation!1649 (h!14089 rulesArg!343)) (_1!5903 (_1!5904 lt!314208))) (h!14089 rulesArg!343) (size!7063 (_1!5903 (_1!5904 lt!314208))) (list!3452 (_1!5903 (_1!5904 lt!314208)))) (_2!5903 (_1!5904 lt!314208)))))))

(assert (=> b!774179 (= lt!314210 (list!3452 input!1432))))

(declare-fun lt!314212 () Unit!13146)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!240 (Regex!2003 List!8700) Unit!13146)

(assert (=> b!774179 (= lt!314212 (longestMatchIsAcceptedByMatchOrIsEmpty!240 (regex!1649 (h!14089 rulesArg!343)) lt!314210))))

(declare-fun res!338850 () Bool)

(declare-fun isEmpty!5232 (List!8700) Bool)

(assert (=> b!774179 (= res!338850 (isEmpty!5232 (_1!5902 (findLongestMatchInner!256 (regex!1649 (h!14089 rulesArg!343)) Nil!8686 (size!7062 Nil!8686) lt!314210 lt!314210 (size!7062 lt!314210)))))))

(assert (=> b!774179 (=> res!338850 e!499421)))

(assert (=> b!774179 e!499421))

(declare-fun lt!314211 () Unit!13146)

(assert (=> b!774179 (= lt!314211 lt!314212)))

(declare-fun lt!314209 () Unit!13146)

(declare-fun lemmaSemiInverse!310 (TokenValueInjection!3122 BalanceConc!5810) Unit!13146)

(assert (=> b!774179 (= lt!314209 (lemmaSemiInverse!310 (transformation!1649 (h!14089 rulesArg!343)) (_1!5903 (_1!5904 lt!314208))))))

(declare-fun d!251969 () Bool)

(assert (=> d!251969 e!499420))

(declare-fun res!338848 () Bool)

(assert (=> d!251969 (=> (not res!338848) (not e!499420))))

(assert (=> d!251969 (= res!338848 (= (_1!5899 lt!314207) (maxPrefixOneRuleZipperSequenceV2!83 thiss!15653 (h!14089 rulesArg!343) input!1432 totalInput!472)))))

(assert (=> d!251969 (= lt!314207 (tuple4!579 e!499422 (_2!5904 lt!314208) (_3!799 lt!314208) (_4!290 lt!314208)))))

(declare-fun c!130364 () Bool)

(declare-fun isEmpty!5233 (BalanceConc!5810) Bool)

(assert (=> d!251969 (= c!130364 (isEmpty!5233 (_1!5903 (_1!5904 lt!314208))))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!35 (Regex!2003 BalanceConc!5810 BalanceConc!5810 CacheUp!682 CacheDown!688 CacheFindLongestMatch!350) tuple4!580)

(assert (=> d!251969 (= lt!314208 (findLongestMatchWithZipperSequenceV2Mem!35 (regex!1649 (h!14089 rulesArg!343)) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun ruleValid!509 (LexerInterface!1451 Rule!3098) Bool)

(assert (=> d!251969 (ruleValid!509 thiss!15653 (h!14089 rulesArg!343))))

(assert (=> d!251969 (= (maxPrefixOneRuleZipperSequenceV2Mem!72 thiss!15653 (h!14089 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134) lt!314207)))

(assert (= (and d!251969 c!130364) b!774174))

(assert (= (and d!251969 (not c!130364)) b!774179))

(assert (= (and b!774179 (not res!338850)) b!774178))

(assert (= (and d!251969 res!338848) b!774176))

(assert (= (and b!774176 res!338849) b!774175))

(assert (= (and b!774175 res!338851) b!774177))

(assert (= (and b!774177 res!338852) b!774173))

(declare-fun m!1041811 () Bool)

(assert (=> b!774175 m!1041811))

(declare-fun m!1041813 () Bool)

(assert (=> b!774177 m!1041813))

(assert (=> d!251969 m!1041781))

(declare-fun m!1041815 () Bool)

(assert (=> d!251969 m!1041815))

(declare-fun m!1041817 () Bool)

(assert (=> d!251969 m!1041817))

(declare-fun m!1041819 () Bool)

(assert (=> d!251969 m!1041819))

(declare-fun m!1041821 () Bool)

(assert (=> b!774178 m!1041821))

(declare-fun m!1041823 () Bool)

(assert (=> b!774178 m!1041823))

(assert (=> b!774178 m!1041821))

(assert (=> b!774178 m!1041823))

(declare-fun m!1041825 () Bool)

(assert (=> b!774178 m!1041825))

(declare-fun m!1041827 () Bool)

(assert (=> b!774178 m!1041827))

(declare-fun m!1041829 () Bool)

(assert (=> b!774179 m!1041829))

(assert (=> b!774179 m!1041821))

(declare-fun m!1041831 () Bool)

(assert (=> b!774179 m!1041831))

(declare-fun m!1041833 () Bool)

(assert (=> b!774179 m!1041833))

(declare-fun m!1041835 () Bool)

(assert (=> b!774179 m!1041835))

(assert (=> b!774179 m!1041823))

(declare-fun m!1041837 () Bool)

(assert (=> b!774179 m!1041837))

(assert (=> b!774179 m!1041745))

(declare-fun m!1041839 () Bool)

(assert (=> b!774179 m!1041839))

(assert (=> b!774179 m!1041821))

(assert (=> b!774179 m!1041823))

(assert (=> b!774179 m!1041825))

(declare-fun m!1041841 () Bool)

(assert (=> b!774176 m!1041841))

(assert (=> bm!46840 d!251969))

(declare-fun d!251971 () Bool)

(declare-fun e!499425 () Bool)

(assert (=> d!251971 e!499425))

(declare-fun res!338855 () Bool)

(assert (=> d!251971 (=> res!338855 e!499425)))

(declare-fun lt!314215 () Bool)

(assert (=> d!251971 (= res!338855 (not lt!314215))))

(declare-fun drop!401 (List!8700 Int) List!8700)

(assert (=> d!251971 (= lt!314215 (= lt!314159 (drop!401 (list!3452 totalInput!472) (- (size!7062 (list!3452 totalInput!472)) (size!7062 lt!314159)))))))

(assert (=> d!251971 (= (isSuffix!227 lt!314159 (list!3452 totalInput!472)) lt!314215)))

(declare-fun b!774182 () Bool)

(assert (=> b!774182 (= e!499425 (>= (size!7062 (list!3452 totalInput!472)) (size!7062 lt!314159)))))

(assert (= (and d!251971 (not res!338855)) b!774182))

(assert (=> d!251971 m!1041741))

(declare-fun m!1041843 () Bool)

(assert (=> d!251971 m!1041843))

(assert (=> d!251971 m!1041797))

(assert (=> d!251971 m!1041741))

(declare-fun m!1041845 () Bool)

(assert (=> d!251971 m!1041845))

(assert (=> b!774182 m!1041741))

(assert (=> b!774182 m!1041843))

(assert (=> b!774182 m!1041797))

(assert (=> b!774099 d!251971))

(declare-fun d!251973 () Bool)

(declare-fun list!3453 (Conc!2899) List!8700)

(assert (=> d!251973 (= (list!3452 totalInput!472) (list!3453 (c!130354 totalInput!472)))))

(declare-fun bs!166031 () Bool)

(assert (= bs!166031 d!251973))

(declare-fun m!1041847 () Bool)

(assert (=> bs!166031 m!1041847))

(assert (=> b!774099 d!251973))

(declare-fun d!251975 () Bool)

(assert (=> d!251975 (= (list!3452 input!1432) (list!3453 (c!130354 input!1432)))))

(declare-fun bs!166032 () Bool)

(assert (= bs!166032 d!251975))

(declare-fun m!1041849 () Bool)

(assert (=> bs!166032 m!1041849))

(assert (=> b!774099 d!251975))

(declare-fun d!251977 () Bool)

(assert (=> d!251977 (= (array_inv!1395 (_keys!1519 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) (bvsge (size!7057 (_keys!1519 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!774087 d!251977))

(declare-fun d!251979 () Bool)

(assert (=> d!251979 (= (array_inv!1397 (_values!1504 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) (bvsge (size!7058 (_values!1504 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!774087 d!251979))

(declare-fun d!251981 () Bool)

(assert (=> d!251981 true))

(declare-fun lt!314218 () Bool)

(declare-fun lambda!23310 () Int)

(declare-fun forall!2051 (List!8702 Int) Bool)

(assert (=> d!251981 (= lt!314218 (forall!2051 rulesArg!343 lambda!23310))))

(declare-fun e!499431 () Bool)

(assert (=> d!251981 (= lt!314218 e!499431)))

(declare-fun res!338860 () Bool)

(assert (=> d!251981 (=> res!338860 e!499431)))

(assert (=> d!251981 (= res!338860 (not ((_ is Cons!8688) rulesArg!343)))))

(assert (=> d!251981 (= (rulesValidInductive!592 thiss!15653 rulesArg!343) lt!314218)))

(declare-fun b!774187 () Bool)

(declare-fun e!499430 () Bool)

(assert (=> b!774187 (= e!499431 e!499430)))

(declare-fun res!338861 () Bool)

(assert (=> b!774187 (=> (not res!338861) (not e!499430))))

(assert (=> b!774187 (= res!338861 (ruleValid!509 thiss!15653 (h!14089 rulesArg!343)))))

(declare-fun b!774188 () Bool)

(assert (=> b!774188 (= e!499430 (rulesValidInductive!592 thiss!15653 (t!91984 rulesArg!343)))))

(assert (= (and d!251981 (not res!338860)) b!774187))

(assert (= (and b!774187 res!338861) b!774188))

(declare-fun m!1041851 () Bool)

(assert (=> d!251981 m!1041851))

(assert (=> b!774187 m!1041819))

(declare-fun m!1041853 () Bool)

(assert (=> b!774188 m!1041853))

(assert (=> b!774088 d!251981))

(declare-fun d!251983 () Bool)

(declare-fun c!130365 () Bool)

(assert (=> d!251983 (= c!130365 ((_ is Node!2899) (c!130354 input!1432)))))

(declare-fun e!499432 () Bool)

(assert (=> d!251983 (= (inv!11020 (c!130354 input!1432)) e!499432)))

(declare-fun b!774191 () Bool)

(assert (=> b!774191 (= e!499432 (inv!11021 (c!130354 input!1432)))))

(declare-fun b!774192 () Bool)

(declare-fun e!499433 () Bool)

(assert (=> b!774192 (= e!499432 e!499433)))

(declare-fun res!338862 () Bool)

(assert (=> b!774192 (= res!338862 (not ((_ is Leaf!4254) (c!130354 input!1432))))))

(assert (=> b!774192 (=> res!338862 e!499433)))

(declare-fun b!774193 () Bool)

(assert (=> b!774193 (= e!499433 (inv!11022 (c!130354 input!1432)))))

(assert (= (and d!251983 c!130365) b!774191))

(assert (= (and d!251983 (not c!130365)) b!774192))

(assert (= (and b!774192 (not res!338862)) b!774193))

(declare-fun m!1041855 () Bool)

(assert (=> b!774191 m!1041855))

(declare-fun m!1041857 () Bool)

(assert (=> b!774193 m!1041857))

(assert (=> b!774106 d!251983))

(declare-fun b!774206 () Bool)

(declare-fun res!338874 () Bool)

(declare-fun e!499438 () Bool)

(assert (=> b!774206 (=> (not res!338874) (not e!499438))))

(declare-fun lt!314238 () tuple4!578)

(assert (=> b!774206 (= res!338874 (valid!990 (_3!798 lt!314238)))))

(declare-fun b!774208 () Bool)

(assert (=> b!774208 (= e!499438 (= (totalInput!2139 (_4!289 lt!314238)) totalInput!472))))

(declare-fun b!774209 () Bool)

(declare-fun e!499439 () tuple4!576)

(declare-fun lt!314244 () tuple4!578)

(declare-fun lt!314245 () tuple4!578)

(assert (=> b!774209 (= e!499439 (tuple4!577 (ite (and ((_ is None!1880) (_1!5899 lt!314244)) ((_ is None!1880) (_1!5899 lt!314245))) None!1880 (ite ((_ is None!1880) (_1!5899 lt!314245)) (_1!5899 lt!314244) (ite ((_ is None!1880) (_1!5899 lt!314244)) (_1!5899 lt!314245) (ite (>= (size!7059 (_1!5895 (v!18813 (_1!5899 lt!314244)))) (size!7059 (_1!5895 (v!18813 (_1!5899 lt!314245))))) (_1!5899 lt!314244) (_1!5899 lt!314245))))) (_2!5899 lt!314245) (_4!289 lt!314245) (_3!798 lt!314245)))))

(declare-fun call!46851 () tuple4!578)

(assert (=> b!774209 (= lt!314244 call!46851)))

(assert (=> b!774209 (= lt!314245 (maxPrefixZipperSequenceV2Mem!83 thiss!15653 (t!91984 (t!91984 rulesArg!343)) input!1432 totalInput!472 (_2!5899 lt!314244) (_3!798 lt!314244) (_4!289 lt!314244)))))

(declare-fun b!774210 () Bool)

(declare-fun lt!314240 () tuple4!578)

(assert (=> b!774210 (= e!499439 (tuple4!577 (_1!5899 lt!314240) (_2!5899 lt!314240) (_4!289 lt!314240) (_3!798 lt!314240)))))

(assert (=> b!774210 (= lt!314240 call!46851)))

(declare-fun b!774211 () Bool)

(declare-fun res!338872 () Bool)

(assert (=> b!774211 (=> (not res!338872) (not e!499438))))

(assert (=> b!774211 (= res!338872 (valid!988 (_2!5899 lt!314238)))))

(declare-fun bm!46846 () Bool)

(assert (=> bm!46846 (= call!46851 (maxPrefixOneRuleZipperSequenceV2Mem!72 thiss!15653 (h!14089 (t!91984 rulesArg!343)) input!1432 totalInput!472 (_2!5899 lt!314166) (_3!798 lt!314166) (_4!289 lt!314166)))))

(declare-fun b!774207 () Bool)

(declare-fun res!338873 () Bool)

(assert (=> b!774207 (=> (not res!338873) (not e!499438))))

(assert (=> b!774207 (= res!338873 (valid!989 (_4!289 lt!314238)))))

(declare-fun d!251985 () Bool)

(assert (=> d!251985 e!499438))

(declare-fun res!338871 () Bool)

(assert (=> d!251985 (=> (not res!338871) (not e!499438))))

(assert (=> d!251985 (= res!338871 (= (_1!5899 lt!314238) (maxPrefixZipperSequenceV2!194 thiss!15653 (t!91984 rulesArg!343) input!1432 totalInput!472)))))

(declare-fun lt!314243 () tuple4!576)

(assert (=> d!251985 (= lt!314238 (tuple4!579 (_1!5898 lt!314243) (_2!5898 lt!314243) (_4!288 lt!314243) (_3!797 lt!314243)))))

(assert (=> d!251985 (= lt!314243 e!499439)))

(declare-fun c!130368 () Bool)

(assert (=> d!251985 (= c!130368 (and ((_ is Cons!8688) (t!91984 rulesArg!343)) ((_ is Nil!8688) (t!91984 (t!91984 rulesArg!343)))))))

(declare-fun lt!314239 () Unit!13146)

(declare-fun lt!314237 () Unit!13146)

(assert (=> d!251985 (= lt!314239 lt!314237)))

(declare-fun lt!314241 () List!8700)

(declare-fun lt!314242 () List!8700)

(assert (=> d!251985 (isPrefix!1001 lt!314241 lt!314242)))

(assert (=> d!251985 (= lt!314237 (lemmaIsPrefixRefl!712 lt!314241 lt!314242))))

(assert (=> d!251985 (= lt!314242 (list!3452 input!1432))))

(assert (=> d!251985 (= lt!314241 (list!3452 input!1432))))

(assert (=> d!251985 (rulesValidInductive!592 thiss!15653 (t!91984 rulesArg!343))))

(assert (=> d!251985 (= (maxPrefixZipperSequenceV2Mem!83 thiss!15653 (t!91984 rulesArg!343) input!1432 totalInput!472 (_2!5899 lt!314166) (_3!798 lt!314166) (_4!289 lt!314166)) lt!314238)))

(assert (= (and d!251985 c!130368) b!774210))

(assert (= (and d!251985 (not c!130368)) b!774209))

(assert (= (or b!774210 b!774209) bm!46846))

(assert (= (and d!251985 res!338871) b!774211))

(assert (= (and b!774211 res!338872) b!774206))

(assert (= (and b!774206 res!338874) b!774207))

(assert (= (and b!774207 res!338873) b!774208))

(declare-fun m!1041859 () Bool)

(assert (=> b!774206 m!1041859))

(declare-fun m!1041861 () Bool)

(assert (=> b!774209 m!1041861))

(declare-fun m!1041863 () Bool)

(assert (=> b!774211 m!1041863))

(declare-fun m!1041865 () Bool)

(assert (=> bm!46846 m!1041865))

(assert (=> d!251985 m!1041853))

(declare-fun m!1041867 () Bool)

(assert (=> d!251985 m!1041867))

(assert (=> d!251985 m!1041795))

(declare-fun m!1041869 () Bool)

(assert (=> d!251985 m!1041869))

(assert (=> d!251985 m!1041745))

(declare-fun m!1041871 () Bool)

(assert (=> b!774207 m!1041871))

(assert (=> b!774112 d!251985))

(declare-fun d!251987 () Bool)

(declare-fun isBalanced!781 (Conc!2899) Bool)

(assert (=> d!251987 (= (inv!11016 (totalInput!2139 cacheFindLongestMatch!134)) (isBalanced!781 (c!130354 (totalInput!2139 cacheFindLongestMatch!134))))))

(declare-fun bs!166033 () Bool)

(assert (= bs!166033 d!251987))

(declare-fun m!1041873 () Bool)

(assert (=> bs!166033 m!1041873))

(assert (=> b!774103 d!251987))

(declare-fun d!251989 () Bool)

(declare-fun res!338877 () Bool)

(declare-fun e!499442 () Bool)

(assert (=> d!251989 (=> (not res!338877) (not e!499442))))

(assert (=> d!251989 (= res!338877 ((_ is HashMap!1199) (cache!1585 cacheDown!666)))))

(assert (=> d!251989 (= (inv!11019 cacheDown!666) e!499442)))

(declare-fun b!774214 () Bool)

(assert (=> b!774214 (= e!499442 (validCacheMapDown!108 (cache!1585 cacheDown!666)))))

(assert (= (and d!251989 res!338877) b!774214))

(declare-fun m!1041875 () Bool)

(assert (=> b!774214 m!1041875))

(assert (=> start!71724 d!251989))

(declare-fun d!251991 () Bool)

(assert (=> d!251991 (= (inv!11016 totalInput!472) (isBalanced!781 (c!130354 totalInput!472)))))

(declare-fun bs!166034 () Bool)

(assert (= bs!166034 d!251991))

(declare-fun m!1041877 () Bool)

(assert (=> bs!166034 m!1041877))

(assert (=> start!71724 d!251991))

(declare-fun d!251993 () Bool)

(assert (=> d!251993 (= (inv!11016 input!1432) (isBalanced!781 (c!130354 input!1432)))))

(declare-fun bs!166035 () Bool)

(assert (= bs!166035 d!251993))

(declare-fun m!1041879 () Bool)

(assert (=> bs!166035 m!1041879))

(assert (=> start!71724 d!251993))

(declare-fun d!251995 () Bool)

(declare-fun res!338880 () Bool)

(declare-fun e!499445 () Bool)

(assert (=> d!251995 (=> (not res!338880) (not e!499445))))

(assert (=> d!251995 (= res!338880 ((_ is HashMap!1197) (cache!1584 cacheUp!653)))))

(assert (=> d!251995 (= (inv!11018 cacheUp!653) e!499445)))

(declare-fun b!774217 () Bool)

(declare-fun validCacheMapUp!108 (MutableMap!1197) Bool)

(assert (=> b!774217 (= e!499445 (validCacheMapUp!108 (cache!1584 cacheUp!653)))))

(assert (= (and d!251995 res!338880) b!774217))

(declare-fun m!1041881 () Bool)

(assert (=> b!774217 m!1041881))

(assert (=> start!71724 d!251995))

(declare-fun d!251997 () Bool)

(declare-fun res!338883 () Bool)

(declare-fun e!499448 () Bool)

(assert (=> d!251997 (=> (not res!338883) (not e!499448))))

(assert (=> d!251997 (= res!338883 ((_ is HashMap!1198) (cache!1586 cacheFindLongestMatch!134)))))

(assert (=> d!251997 (= (inv!11017 cacheFindLongestMatch!134) e!499448)))

(declare-fun b!774220 () Bool)

(declare-fun validCacheMapFindLongestMatch!54 (MutableMap!1198 BalanceConc!5810) Bool)

(assert (=> b!774220 (= e!499448 (validCacheMapFindLongestMatch!54 (cache!1586 cacheFindLongestMatch!134) (totalInput!2139 cacheFindLongestMatch!134)))))

(assert (= (and d!251997 res!338883) b!774220))

(declare-fun m!1041883 () Bool)

(assert (=> b!774220 m!1041883))

(assert (=> start!71724 d!251997))

(declare-fun d!251999 () Bool)

(assert (=> d!251999 (= (valid!988 (_2!5898 lt!314164)) (validCacheMapUp!108 (cache!1584 (_2!5898 lt!314164))))))

(declare-fun bs!166036 () Bool)

(assert (= bs!166036 d!251999))

(declare-fun m!1041885 () Bool)

(assert (=> bs!166036 m!1041885))

(assert (=> b!774086 d!251999))

(declare-fun d!252001 () Bool)

(assert (=> d!252001 (= (inv!11011 (tag!1911 (h!14089 rulesArg!343))) (= (mod (str.len (value!52666 (tag!1911 (h!14089 rulesArg!343)))) 2) 0))))

(assert (=> b!774094 d!252001))

(declare-fun d!252003 () Bool)

(declare-fun res!338886 () Bool)

(declare-fun e!499451 () Bool)

(assert (=> d!252003 (=> (not res!338886) (not e!499451))))

(declare-fun semiInverseModEq!618 (Int Int) Bool)

(assert (=> d!252003 (= res!338886 (semiInverseModEq!618 (toChars!2500 (transformation!1649 (h!14089 rulesArg!343))) (toValue!2641 (transformation!1649 (h!14089 rulesArg!343)))))))

(assert (=> d!252003 (= (inv!11015 (transformation!1649 (h!14089 rulesArg!343))) e!499451)))

(declare-fun b!774223 () Bool)

(declare-fun equivClasses!593 (Int Int) Bool)

(assert (=> b!774223 (= e!499451 (equivClasses!593 (toChars!2500 (transformation!1649 (h!14089 rulesArg!343))) (toValue!2641 (transformation!1649 (h!14089 rulesArg!343)))))))

(assert (= (and d!252003 res!338886) b!774223))

(declare-fun m!1041887 () Bool)

(assert (=> d!252003 m!1041887))

(declare-fun m!1041889 () Bool)

(assert (=> b!774223 m!1041889))

(assert (=> b!774094 d!252003))

(declare-fun d!252005 () Bool)

(assert (=> d!252005 (= (valid!989 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!54 (cache!1586 cacheFindLongestMatch!134) (totalInput!2139 cacheFindLongestMatch!134)))))

(declare-fun bs!166037 () Bool)

(assert (= bs!166037 d!252005))

(assert (=> bs!166037 m!1041883))

(assert (=> b!774090 d!252005))

(declare-fun d!252007 () Bool)

(assert (=> d!252007 (= (valid!988 cacheUp!653) (validCacheMapUp!108 (cache!1584 cacheUp!653)))))

(declare-fun bs!166038 () Bool)

(assert (= bs!166038 d!252007))

(assert (=> bs!166038 m!1041881))

(assert (=> b!774074 d!252007))

(declare-fun d!252009 () Bool)

(assert (=> d!252009 (= (valid!989 (_3!797 lt!314164)) (validCacheMapFindLongestMatch!54 (cache!1586 (_3!797 lt!314164)) (totalInput!2139 (_3!797 lt!314164))))))

(declare-fun bs!166039 () Bool)

(assert (= bs!166039 d!252009))

(declare-fun m!1041891 () Bool)

(assert (=> bs!166039 m!1041891))

(assert (=> b!774082 d!252009))

(declare-fun d!252011 () Bool)

(declare-fun c!130369 () Bool)

(assert (=> d!252011 (= c!130369 ((_ is Node!2899) (c!130354 totalInput!472)))))

(declare-fun e!499452 () Bool)

(assert (=> d!252011 (= (inv!11020 (c!130354 totalInput!472)) e!499452)))

(declare-fun b!774224 () Bool)

(assert (=> b!774224 (= e!499452 (inv!11021 (c!130354 totalInput!472)))))

(declare-fun b!774225 () Bool)

(declare-fun e!499453 () Bool)

(assert (=> b!774225 (= e!499452 e!499453)))

(declare-fun res!338887 () Bool)

(assert (=> b!774225 (= res!338887 (not ((_ is Leaf!4254) (c!130354 totalInput!472))))))

(assert (=> b!774225 (=> res!338887 e!499453)))

(declare-fun b!774226 () Bool)

(assert (=> b!774226 (= e!499453 (inv!11022 (c!130354 totalInput!472)))))

(assert (= (and d!252011 c!130369) b!774224))

(assert (= (and d!252011 (not c!130369)) b!774225))

(assert (= (and b!774225 (not res!338887)) b!774226))

(declare-fun m!1041893 () Bool)

(assert (=> b!774224 m!1041893))

(declare-fun m!1041895 () Bool)

(assert (=> b!774226 m!1041895))

(assert (=> b!774101 d!252011))

(declare-fun d!252013 () Bool)

(assert (=> d!252013 (= (valid!990 cacheDown!666) (validCacheMapDown!108 (cache!1585 cacheDown!666)))))

(declare-fun bs!166040 () Bool)

(assert (= bs!166040 d!252013))

(assert (=> bs!166040 m!1041875))

(assert (=> b!774111 d!252013))

(declare-fun d!252015 () Bool)

(assert (=> d!252015 (= (isEmpty!5231 rulesArg!343) ((_ is Nil!8688) rulesArg!343))))

(assert (=> b!774083 d!252015))

(declare-fun b!774233 () Bool)

(declare-fun e!499459 () Bool)

(declare-fun setRes!7227 () Bool)

(declare-fun tp!254900 () Bool)

(assert (=> b!774233 (= e!499459 (and setRes!7227 tp!254900))))

(declare-fun condSetEmpty!7227 () Bool)

(assert (=> b!774233 (= condSetEmpty!7227 (= (_1!5893 (_1!5894 (h!14085 (zeroValue!1484 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))))) ((as const (Array Context!810 Bool)) false)))))

(assert (=> b!774097 (= tp!254875 e!499459)))

(declare-fun tp!254902 () Bool)

(declare-fun setNonEmpty!7227 () Bool)

(declare-fun setElem!7227 () Context!810)

(declare-fun e!499458 () Bool)

(declare-fun inv!11023 (Context!810) Bool)

(assert (=> setNonEmpty!7227 (= setRes!7227 (and tp!254902 (inv!11023 setElem!7227) e!499458))))

(declare-fun setRest!7227 () (InoxSet Context!810))

(assert (=> setNonEmpty!7227 (= (_1!5893 (_1!5894 (h!14085 (zeroValue!1484 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7227 true) setRest!7227))))

(declare-fun setIsEmpty!7227 () Bool)

(assert (=> setIsEmpty!7227 setRes!7227))

(declare-fun b!774234 () Bool)

(declare-fun tp!254901 () Bool)

(assert (=> b!774234 (= e!499458 tp!254901)))

(assert (= (and b!774233 condSetEmpty!7227) setIsEmpty!7227))

(assert (= (and b!774233 (not condSetEmpty!7227)) setNonEmpty!7227))

(assert (= setNonEmpty!7227 b!774234))

(assert (= (and b!774097 ((_ is Cons!8684) (zeroValue!1484 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134)))))))) b!774233))

(declare-fun m!1041897 () Bool)

(assert (=> setNonEmpty!7227 m!1041897))

(declare-fun b!774235 () Bool)

(declare-fun e!499461 () Bool)

(declare-fun setRes!7228 () Bool)

(declare-fun tp!254903 () Bool)

(assert (=> b!774235 (= e!499461 (and setRes!7228 tp!254903))))

(declare-fun condSetEmpty!7228 () Bool)

(assert (=> b!774235 (= condSetEmpty!7228 (= (_1!5893 (_1!5894 (h!14085 (minValue!1484 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))))) ((as const (Array Context!810 Bool)) false)))))

(assert (=> b!774097 (= tp!254879 e!499461)))

(declare-fun setElem!7228 () Context!810)

(declare-fun e!499460 () Bool)

(declare-fun tp!254905 () Bool)

(declare-fun setNonEmpty!7228 () Bool)

(assert (=> setNonEmpty!7228 (= setRes!7228 (and tp!254905 (inv!11023 setElem!7228) e!499460))))

(declare-fun setRest!7228 () (InoxSet Context!810))

(assert (=> setNonEmpty!7228 (= (_1!5893 (_1!5894 (h!14085 (minValue!1484 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7228 true) setRest!7228))))

(declare-fun setIsEmpty!7228 () Bool)

(assert (=> setIsEmpty!7228 setRes!7228))

(declare-fun b!774236 () Bool)

(declare-fun tp!254904 () Bool)

(assert (=> b!774236 (= e!499460 tp!254904)))

(assert (= (and b!774235 condSetEmpty!7228) setIsEmpty!7228))

(assert (= (and b!774235 (not condSetEmpty!7228)) setNonEmpty!7228))

(assert (= setNonEmpty!7228 b!774236))

(assert (= (and b!774097 ((_ is Cons!8684) (minValue!1484 (v!18815 (underlying!2636 (v!18816 (underlying!2637 (cache!1586 cacheFindLongestMatch!134)))))))) b!774235))

(declare-fun m!1041899 () Bool)

(assert (=> setNonEmpty!7228 m!1041899))

(declare-fun setIsEmpty!7233 () Bool)

(declare-fun setRes!7234 () Bool)

(assert (=> setIsEmpty!7233 setRes!7234))

(declare-fun setIsEmpty!7234 () Bool)

(declare-fun setRes!7233 () Bool)

(assert (=> setIsEmpty!7234 setRes!7233))

(declare-fun b!774247 () Bool)

(declare-fun e!499471 () Bool)

(declare-fun tp!254926 () Bool)

(assert (=> b!774247 (= e!499471 (and setRes!7234 tp!254926))))

(declare-fun condSetEmpty!7234 () Bool)

(declare-fun mapValue!5974 () List!8698)

(assert (=> b!774247 (= condSetEmpty!7234 (= (_1!5893 (_1!5894 (h!14085 mapValue!5974))) ((as const (Array Context!810 Bool)) false)))))

(declare-fun condMapEmpty!5974 () Bool)

(declare-fun mapDefault!5974 () List!8698)

(assert (=> mapNonEmpty!5971 (= condMapEmpty!5974 (= mapRest!5969 ((as const (Array (_ BitVec 32) List!8698)) mapDefault!5974)))))

(declare-fun e!499473 () Bool)

(declare-fun mapRes!5974 () Bool)

(assert (=> mapNonEmpty!5971 (= tp!254888 (and e!499473 mapRes!5974))))

(declare-fun e!499472 () Bool)

(declare-fun tp!254923 () Bool)

(declare-fun setNonEmpty!7233 () Bool)

(declare-fun setElem!7234 () Context!810)

(assert (=> setNonEmpty!7233 (= setRes!7233 (and tp!254923 (inv!11023 setElem!7234) e!499472))))

(declare-fun setRest!7234 () (InoxSet Context!810))

(assert (=> setNonEmpty!7233 (= (_1!5893 (_1!5894 (h!14085 mapDefault!5974))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7234 true) setRest!7234))))

(declare-fun mapIsEmpty!5974 () Bool)

(assert (=> mapIsEmpty!5974 mapRes!5974))

(declare-fun b!774248 () Bool)

(declare-fun tp!254922 () Bool)

(assert (=> b!774248 (= e!499473 (and setRes!7233 tp!254922))))

(declare-fun condSetEmpty!7233 () Bool)

(assert (=> b!774248 (= condSetEmpty!7233 (= (_1!5893 (_1!5894 (h!14085 mapDefault!5974))) ((as const (Array Context!810 Bool)) false)))))

(declare-fun b!774249 () Bool)

(declare-fun tp!254925 () Bool)

(assert (=> b!774249 (= e!499472 tp!254925)))

(declare-fun setElem!7233 () Context!810)

(declare-fun tp!254921 () Bool)

(declare-fun setNonEmpty!7234 () Bool)

(declare-fun e!499470 () Bool)

(assert (=> setNonEmpty!7234 (= setRes!7234 (and tp!254921 (inv!11023 setElem!7233) e!499470))))

(declare-fun setRest!7233 () (InoxSet Context!810))

(assert (=> setNonEmpty!7234 (= (_1!5893 (_1!5894 (h!14085 mapValue!5974))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7233 true) setRest!7233))))

(declare-fun b!774250 () Bool)

(declare-fun tp!254924 () Bool)

(assert (=> b!774250 (= e!499470 tp!254924)))

(declare-fun mapNonEmpty!5974 () Bool)

(declare-fun tp!254920 () Bool)

(assert (=> mapNonEmpty!5974 (= mapRes!5974 (and tp!254920 e!499471))))

(declare-fun mapRest!5974 () (Array (_ BitVec 32) List!8698))

(declare-fun mapKey!5974 () (_ BitVec 32))

(assert (=> mapNonEmpty!5974 (= mapRest!5969 (store mapRest!5974 mapKey!5974 mapValue!5974))))

(assert (= (and mapNonEmpty!5971 condMapEmpty!5974) mapIsEmpty!5974))

(assert (= (and mapNonEmpty!5971 (not condMapEmpty!5974)) mapNonEmpty!5974))

(assert (= (and b!774247 condSetEmpty!7234) setIsEmpty!7233))

(assert (= (and b!774247 (not condSetEmpty!7234)) setNonEmpty!7234))

(assert (= setNonEmpty!7234 b!774250))

(assert (= (and mapNonEmpty!5974 ((_ is Cons!8684) mapValue!5974)) b!774247))

(assert (= (and b!774248 condSetEmpty!7233) setIsEmpty!7234))

(assert (= (and b!774248 (not condSetEmpty!7233)) setNonEmpty!7233))

(assert (= setNonEmpty!7233 b!774249))

(assert (= (and mapNonEmpty!5971 ((_ is Cons!8684) mapDefault!5974)) b!774248))

(declare-fun m!1041901 () Bool)

(assert (=> setNonEmpty!7233 m!1041901))

(declare-fun m!1041903 () Bool)

(assert (=> setNonEmpty!7234 m!1041903))

(declare-fun m!1041905 () Bool)

(assert (=> mapNonEmpty!5974 m!1041905))

(declare-fun b!774251 () Bool)

(declare-fun e!499475 () Bool)

(declare-fun setRes!7235 () Bool)

(declare-fun tp!254927 () Bool)

(assert (=> b!774251 (= e!499475 (and setRes!7235 tp!254927))))

(declare-fun condSetEmpty!7235 () Bool)

(assert (=> b!774251 (= condSetEmpty!7235 (= (_1!5893 (_1!5894 (h!14085 mapValue!5970))) ((as const (Array Context!810 Bool)) false)))))

(assert (=> mapNonEmpty!5971 (= tp!254882 e!499475)))

(declare-fun e!499474 () Bool)

(declare-fun setElem!7235 () Context!810)

(declare-fun setNonEmpty!7235 () Bool)

(declare-fun tp!254929 () Bool)

(assert (=> setNonEmpty!7235 (= setRes!7235 (and tp!254929 (inv!11023 setElem!7235) e!499474))))

(declare-fun setRest!7235 () (InoxSet Context!810))

(assert (=> setNonEmpty!7235 (= (_1!5893 (_1!5894 (h!14085 mapValue!5970))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7235 true) setRest!7235))))

(declare-fun setIsEmpty!7235 () Bool)

(assert (=> setIsEmpty!7235 setRes!7235))

(declare-fun b!774252 () Bool)

(declare-fun tp!254928 () Bool)

(assert (=> b!774252 (= e!499474 tp!254928)))

(assert (= (and b!774251 condSetEmpty!7235) setIsEmpty!7235))

(assert (= (and b!774251 (not condSetEmpty!7235)) setNonEmpty!7235))

(assert (= setNonEmpty!7235 b!774252))

(assert (= (and mapNonEmpty!5971 ((_ is Cons!8684) mapValue!5970)) b!774251))

(declare-fun m!1041907 () Bool)

(assert (=> setNonEmpty!7235 m!1041907))

(declare-fun tp!254938 () Bool)

(declare-fun tp!254936 () Bool)

(declare-fun e!499480 () Bool)

(declare-fun b!774261 () Bool)

(assert (=> b!774261 (= e!499480 (and (inv!11020 (left!6425 (c!130354 (totalInput!2139 cacheFindLongestMatch!134)))) tp!254938 (inv!11020 (right!6755 (c!130354 (totalInput!2139 cacheFindLongestMatch!134)))) tp!254936))))

(declare-fun b!774263 () Bool)

(declare-fun e!499481 () Bool)

(declare-fun tp!254937 () Bool)

(assert (=> b!774263 (= e!499481 tp!254937)))

(declare-fun b!774262 () Bool)

(declare-fun inv!11024 (IArray!5799) Bool)

(assert (=> b!774262 (= e!499480 (and (inv!11024 (xs!5586 (c!130354 (totalInput!2139 cacheFindLongestMatch!134)))) e!499481))))

(assert (=> b!774108 (= tp!254891 (and (inv!11020 (c!130354 (totalInput!2139 cacheFindLongestMatch!134))) e!499480))))

(assert (= (and b!774108 ((_ is Node!2899) (c!130354 (totalInput!2139 cacheFindLongestMatch!134)))) b!774261))

(assert (= b!774262 b!774263))

(assert (= (and b!774108 ((_ is Leaf!4254) (c!130354 (totalInput!2139 cacheFindLongestMatch!134)))) b!774262))

(declare-fun m!1041909 () Bool)

(assert (=> b!774261 m!1041909))

(declare-fun m!1041911 () Bool)

(assert (=> b!774261 m!1041911))

(declare-fun m!1041913 () Bool)

(assert (=> b!774262 m!1041913))

(assert (=> b!774108 m!1041749))

(declare-fun tp!254949 () Bool)

(declare-fun tp!254952 () Bool)

(declare-fun e!499489 () Bool)

(declare-fun setRes!7238 () Bool)

(declare-fun b!774272 () Bool)

(declare-fun tp_is_empty!3741 () Bool)

(declare-fun e!499488 () Bool)

(assert (=> b!774272 (= e!499489 (and tp!254952 (inv!11023 (_2!5896 (_1!5897 (h!14088 (zeroValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))))) e!499488 tp_is_empty!3741 setRes!7238 tp!254949))))

(declare-fun condSetEmpty!7238 () Bool)

(assert (=> b!774272 (= condSetEmpty!7238 (= (_2!5897 (h!14088 (zeroValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setElem!7238 () Context!810)

(declare-fun e!499490 () Bool)

(declare-fun setNonEmpty!7238 () Bool)

(declare-fun tp!254950 () Bool)

(assert (=> setNonEmpty!7238 (= setRes!7238 (and tp!254950 (inv!11023 setElem!7238) e!499490))))

(declare-fun setRest!7238 () (InoxSet Context!810))

(assert (=> setNonEmpty!7238 (= (_2!5897 (h!14088 (zeroValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7238 true) setRest!7238))))

(declare-fun b!774273 () Bool)

(declare-fun tp!254951 () Bool)

(assert (=> b!774273 (= e!499488 tp!254951)))

(declare-fun setIsEmpty!7238 () Bool)

(assert (=> setIsEmpty!7238 setRes!7238))

(assert (=> b!774080 (= tp!254881 e!499489)))

(declare-fun b!774274 () Bool)

(declare-fun tp!254953 () Bool)

(assert (=> b!774274 (= e!499490 tp!254953)))

(assert (= b!774272 b!774273))

(assert (= (and b!774272 condSetEmpty!7238) setIsEmpty!7238))

(assert (= (and b!774272 (not condSetEmpty!7238)) setNonEmpty!7238))

(assert (= setNonEmpty!7238 b!774274))

(assert (= (and b!774080 ((_ is Cons!8687) (zeroValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))) b!774272))

(declare-fun m!1041915 () Bool)

(assert (=> b!774272 m!1041915))

(declare-fun m!1041917 () Bool)

(assert (=> setNonEmpty!7238 m!1041917))

(declare-fun tp!254957 () Bool)

(declare-fun e!499491 () Bool)

(declare-fun tp!254954 () Bool)

(declare-fun e!499492 () Bool)

(declare-fun b!774275 () Bool)

(declare-fun setRes!7239 () Bool)

(assert (=> b!774275 (= e!499492 (and tp!254957 (inv!11023 (_2!5896 (_1!5897 (h!14088 (minValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))))) e!499491 tp_is_empty!3741 setRes!7239 tp!254954))))

(declare-fun condSetEmpty!7239 () Bool)

(assert (=> b!774275 (= condSetEmpty!7239 (= (_2!5897 (h!14088 (minValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setElem!7239 () Context!810)

(declare-fun tp!254955 () Bool)

(declare-fun e!499493 () Bool)

(declare-fun setNonEmpty!7239 () Bool)

(assert (=> setNonEmpty!7239 (= setRes!7239 (and tp!254955 (inv!11023 setElem!7239) e!499493))))

(declare-fun setRest!7239 () (InoxSet Context!810))

(assert (=> setNonEmpty!7239 (= (_2!5897 (h!14088 (minValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7239 true) setRest!7239))))

(declare-fun b!774276 () Bool)

(declare-fun tp!254956 () Bool)

(assert (=> b!774276 (= e!499491 tp!254956)))

(declare-fun setIsEmpty!7239 () Bool)

(assert (=> setIsEmpty!7239 setRes!7239))

(assert (=> b!774080 (= tp!254868 e!499492)))

(declare-fun b!774277 () Bool)

(declare-fun tp!254958 () Bool)

(assert (=> b!774277 (= e!499493 tp!254958)))

(assert (= b!774275 b!774276))

(assert (= (and b!774275 condSetEmpty!7239) setIsEmpty!7239))

(assert (= (and b!774275 (not condSetEmpty!7239)) setNonEmpty!7239))

(assert (= setNonEmpty!7239 b!774277))

(assert (= (and b!774080 ((_ is Cons!8687) (minValue!1483 (v!18814 (underlying!2635 (v!18817 (underlying!2638 (cache!1585 cacheDown!666)))))))) b!774275))

(declare-fun m!1041919 () Bool)

(assert (=> b!774275 m!1041919))

(declare-fun m!1041921 () Bool)

(assert (=> setNonEmpty!7239 m!1041921))

(declare-fun tp!254959 () Bool)

(declare-fun e!499495 () Bool)

(declare-fun setRes!7240 () Bool)

(declare-fun tp!254962 () Bool)

(declare-fun e!499494 () Bool)

(declare-fun b!774278 () Bool)

(assert (=> b!774278 (= e!499495 (and tp!254962 (inv!11023 (_2!5896 (_1!5897 (h!14088 mapDefault!5970)))) e!499494 tp_is_empty!3741 setRes!7240 tp!254959))))

(declare-fun condSetEmpty!7240 () Bool)

(assert (=> b!774278 (= condSetEmpty!7240 (= (_2!5897 (h!14088 mapDefault!5970)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun e!499496 () Bool)

(declare-fun tp!254960 () Bool)

(declare-fun setNonEmpty!7240 () Bool)

(declare-fun setElem!7240 () Context!810)

(assert (=> setNonEmpty!7240 (= setRes!7240 (and tp!254960 (inv!11023 setElem!7240) e!499496))))

(declare-fun setRest!7240 () (InoxSet Context!810))

(assert (=> setNonEmpty!7240 (= (_2!5897 (h!14088 mapDefault!5970)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7240 true) setRest!7240))))

(declare-fun b!774279 () Bool)

(declare-fun tp!254961 () Bool)

(assert (=> b!774279 (= e!499494 tp!254961)))

(declare-fun setIsEmpty!7240 () Bool)

(assert (=> setIsEmpty!7240 setRes!7240))

(assert (=> b!774109 (= tp!254885 e!499495)))

(declare-fun b!774280 () Bool)

(declare-fun tp!254963 () Bool)

(assert (=> b!774280 (= e!499496 tp!254963)))

(assert (= b!774278 b!774279))

(assert (= (and b!774278 condSetEmpty!7240) setIsEmpty!7240))

(assert (= (and b!774278 (not condSetEmpty!7240)) setNonEmpty!7240))

(assert (= setNonEmpty!7240 b!774280))

(assert (= (and b!774109 ((_ is Cons!8687) mapDefault!5970)) b!774278))

(declare-fun m!1041923 () Bool)

(assert (=> b!774278 m!1041923))

(declare-fun m!1041925 () Bool)

(assert (=> setNonEmpty!7240 m!1041925))

(declare-fun b!774289 () Bool)

(declare-fun e!499504 () Bool)

(declare-fun tp!254975 () Bool)

(assert (=> b!774289 (= e!499504 tp!254975)))

(declare-fun e!499503 () Bool)

(declare-fun b!774290 () Bool)

(declare-fun tp!254972 () Bool)

(declare-fun setRes!7243 () Bool)

(declare-fun e!499505 () Bool)

(assert (=> b!774290 (= e!499503 (and (inv!11023 (_1!5891 (_1!5892 (h!14084 (zeroValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))))) e!499505 tp_is_empty!3741 setRes!7243 tp!254972))))

(declare-fun condSetEmpty!7243 () Bool)

(assert (=> b!774290 (= condSetEmpty!7243 (= (_2!5892 (h!14084 (zeroValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setIsEmpty!7243 () Bool)

(assert (=> setIsEmpty!7243 setRes!7243))

(assert (=> b!774087 (= tp!254877 e!499503)))

(declare-fun b!774291 () Bool)

(declare-fun tp!254974 () Bool)

(assert (=> b!774291 (= e!499505 tp!254974)))

(declare-fun setNonEmpty!7243 () Bool)

(declare-fun setElem!7243 () Context!810)

(declare-fun tp!254973 () Bool)

(assert (=> setNonEmpty!7243 (= setRes!7243 (and tp!254973 (inv!11023 setElem!7243) e!499504))))

(declare-fun setRest!7243 () (InoxSet Context!810))

(assert (=> setNonEmpty!7243 (= (_2!5892 (h!14084 (zeroValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7243 true) setRest!7243))))

(assert (= b!774290 b!774291))

(assert (= (and b!774290 condSetEmpty!7243) setIsEmpty!7243))

(assert (= (and b!774290 (not condSetEmpty!7243)) setNonEmpty!7243))

(assert (= setNonEmpty!7243 b!774289))

(assert (= (and b!774087 ((_ is Cons!8683) (zeroValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))) b!774290))

(declare-fun m!1041927 () Bool)

(assert (=> b!774290 m!1041927))

(declare-fun m!1041929 () Bool)

(assert (=> setNonEmpty!7243 m!1041929))

(declare-fun b!774292 () Bool)

(declare-fun e!499507 () Bool)

(declare-fun tp!254979 () Bool)

(assert (=> b!774292 (= e!499507 tp!254979)))

(declare-fun b!774293 () Bool)

(declare-fun tp!254976 () Bool)

(declare-fun setRes!7244 () Bool)

(declare-fun e!499508 () Bool)

(declare-fun e!499506 () Bool)

(assert (=> b!774293 (= e!499506 (and (inv!11023 (_1!5891 (_1!5892 (h!14084 (minValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))))) e!499508 tp_is_empty!3741 setRes!7244 tp!254976))))

(declare-fun condSetEmpty!7244 () Bool)

(assert (=> b!774293 (= condSetEmpty!7244 (= (_2!5892 (h!14084 (minValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setIsEmpty!7244 () Bool)

(assert (=> setIsEmpty!7244 setRes!7244))

(assert (=> b!774087 (= tp!254893 e!499506)))

(declare-fun b!774294 () Bool)

(declare-fun tp!254978 () Bool)

(assert (=> b!774294 (= e!499508 tp!254978)))

(declare-fun setElem!7244 () Context!810)

(declare-fun tp!254977 () Bool)

(declare-fun setNonEmpty!7244 () Bool)

(assert (=> setNonEmpty!7244 (= setRes!7244 (and tp!254977 (inv!11023 setElem!7244) e!499507))))

(declare-fun setRest!7244 () (InoxSet Context!810))

(assert (=> setNonEmpty!7244 (= (_2!5892 (h!14084 (minValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7244 true) setRest!7244))))

(assert (= b!774293 b!774294))

(assert (= (and b!774293 condSetEmpty!7244) setIsEmpty!7244))

(assert (= (and b!774293 (not condSetEmpty!7244)) setNonEmpty!7244))

(assert (= setNonEmpty!7244 b!774292))

(assert (= (and b!774087 ((_ is Cons!8683) (minValue!1482 (v!18811 (underlying!2633 (v!18812 (underlying!2634 (cache!1584 cacheUp!653)))))))) b!774293))

(declare-fun m!1041931 () Bool)

(assert (=> b!774293 m!1041931))

(declare-fun m!1041933 () Bool)

(assert (=> setNonEmpty!7244 m!1041933))

(declare-fun b!774305 () Bool)

(declare-fun b_free!24657 () Bool)

(declare-fun b_next!24721 () Bool)

(assert (=> b!774305 (= b_free!24657 (not b_next!24721))))

(declare-fun tp!254990 () Bool)

(declare-fun b_and!72137 () Bool)

(assert (=> b!774305 (= tp!254990 b_and!72137)))

(declare-fun b_free!24659 () Bool)

(declare-fun b_next!24723 () Bool)

(assert (=> b!774305 (= b_free!24659 (not b_next!24723))))

(declare-fun tp!254988 () Bool)

(declare-fun b_and!72139 () Bool)

(assert (=> b!774305 (= tp!254988 b_and!72139)))

(declare-fun e!499520 () Bool)

(assert (=> b!774305 (= e!499520 (and tp!254990 tp!254988))))

(declare-fun b!774304 () Bool)

(declare-fun e!499519 () Bool)

(declare-fun tp!254989 () Bool)

(assert (=> b!774304 (= e!499519 (and tp!254989 (inv!11011 (tag!1911 (h!14089 (t!91984 rulesArg!343)))) (inv!11015 (transformation!1649 (h!14089 (t!91984 rulesArg!343)))) e!499520))))

(declare-fun b!774303 () Bool)

(declare-fun e!499517 () Bool)

(declare-fun tp!254991 () Bool)

(assert (=> b!774303 (= e!499517 (and e!499519 tp!254991))))

(assert (=> b!774105 (= tp!254869 e!499517)))

(assert (= b!774304 b!774305))

(assert (= b!774303 b!774304))

(assert (= (and b!774105 ((_ is Cons!8688) (t!91984 rulesArg!343))) b!774303))

(declare-fun m!1041935 () Bool)

(assert (=> b!774304 m!1041935))

(declare-fun m!1041937 () Bool)

(assert (=> b!774304 m!1041937))

(declare-fun e!499521 () Bool)

(declare-fun tp!254992 () Bool)

(declare-fun b!774306 () Bool)

(declare-fun tp!254994 () Bool)

(assert (=> b!774306 (= e!499521 (and (inv!11020 (left!6425 (c!130354 input!1432))) tp!254994 (inv!11020 (right!6755 (c!130354 input!1432))) tp!254992))))

(declare-fun b!774308 () Bool)

(declare-fun e!499522 () Bool)

(declare-fun tp!254993 () Bool)

(assert (=> b!774308 (= e!499522 tp!254993)))

(declare-fun b!774307 () Bool)

(assert (=> b!774307 (= e!499521 (and (inv!11024 (xs!5586 (c!130354 input!1432))) e!499522))))

(assert (=> b!774106 (= tp!254876 (and (inv!11020 (c!130354 input!1432)) e!499521))))

(assert (= (and b!774106 ((_ is Node!2899) (c!130354 input!1432))) b!774306))

(assert (= b!774307 b!774308))

(assert (= (and b!774106 ((_ is Leaf!4254) (c!130354 input!1432))) b!774307))

(declare-fun m!1041939 () Bool)

(assert (=> b!774306 m!1041939))

(declare-fun m!1041941 () Bool)

(assert (=> b!774306 m!1041941))

(declare-fun m!1041943 () Bool)

(assert (=> b!774307 m!1041943))

(assert (=> b!774106 m!1041711))

(declare-fun setRes!7250 () Bool)

(declare-fun e!499539 () Bool)

(declare-fun mapDefault!5977 () List!8697)

(declare-fun e!499535 () Bool)

(declare-fun b!774323 () Bool)

(declare-fun tp!255015 () Bool)

(assert (=> b!774323 (= e!499539 (and (inv!11023 (_1!5891 (_1!5892 (h!14084 mapDefault!5977)))) e!499535 tp_is_empty!3741 setRes!7250 tp!255015))))

(declare-fun condSetEmpty!7250 () Bool)

(assert (=> b!774323 (= condSetEmpty!7250 (= (_2!5892 (h!14084 mapDefault!5977)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun b!774324 () Bool)

(declare-fun tp!255013 () Bool)

(assert (=> b!774324 (= e!499535 tp!255013)))

(declare-fun condMapEmpty!5977 () Bool)

(assert (=> mapNonEmpty!5970 (= condMapEmpty!5977 (= mapRest!5971 ((as const (Array (_ BitVec 32) List!8697)) mapDefault!5977)))))

(declare-fun mapRes!5977 () Bool)

(assert (=> mapNonEmpty!5970 (= tp!254873 (and e!499539 mapRes!5977))))

(declare-fun e!499536 () Bool)

(declare-fun setRes!7249 () Bool)

(declare-fun tp!255021 () Bool)

(declare-fun b!774325 () Bool)

(declare-fun mapValue!5977 () List!8697)

(declare-fun e!499537 () Bool)

(assert (=> b!774325 (= e!499536 (and (inv!11023 (_1!5891 (_1!5892 (h!14084 mapValue!5977)))) e!499537 tp_is_empty!3741 setRes!7249 tp!255021))))

(declare-fun condSetEmpty!7249 () Bool)

(assert (=> b!774325 (= condSetEmpty!7249 (= (_2!5892 (h!14084 mapValue!5977)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setIsEmpty!7249 () Bool)

(assert (=> setIsEmpty!7249 setRes!7250))

(declare-fun e!499538 () Bool)

(declare-fun tp!255016 () Bool)

(declare-fun setNonEmpty!7249 () Bool)

(declare-fun setElem!7250 () Context!810)

(assert (=> setNonEmpty!7249 (= setRes!7249 (and tp!255016 (inv!11023 setElem!7250) e!499538))))

(declare-fun setRest!7249 () (InoxSet Context!810))

(assert (=> setNonEmpty!7249 (= (_2!5892 (h!14084 mapValue!5977)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7250 true) setRest!7249))))

(declare-fun tp!255017 () Bool)

(declare-fun setElem!7249 () Context!810)

(declare-fun setNonEmpty!7250 () Bool)

(declare-fun e!499540 () Bool)

(assert (=> setNonEmpty!7250 (= setRes!7250 (and tp!255017 (inv!11023 setElem!7249) e!499540))))

(declare-fun setRest!7250 () (InoxSet Context!810))

(assert (=> setNonEmpty!7250 (= (_2!5892 (h!14084 mapDefault!5977)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7249 true) setRest!7250))))

(declare-fun b!774326 () Bool)

(declare-fun tp!255020 () Bool)

(assert (=> b!774326 (= e!499538 tp!255020)))

(declare-fun b!774327 () Bool)

(declare-fun tp!255018 () Bool)

(assert (=> b!774327 (= e!499540 tp!255018)))

(declare-fun b!774328 () Bool)

(declare-fun tp!255019 () Bool)

(assert (=> b!774328 (= e!499537 tp!255019)))

(declare-fun mapNonEmpty!5977 () Bool)

(declare-fun tp!255014 () Bool)

(assert (=> mapNonEmpty!5977 (= mapRes!5977 (and tp!255014 e!499536))))

(declare-fun mapKey!5977 () (_ BitVec 32))

(declare-fun mapRest!5977 () (Array (_ BitVec 32) List!8697))

(assert (=> mapNonEmpty!5977 (= mapRest!5971 (store mapRest!5977 mapKey!5977 mapValue!5977))))

(declare-fun setIsEmpty!7250 () Bool)

(assert (=> setIsEmpty!7250 setRes!7249))

(declare-fun mapIsEmpty!5977 () Bool)

(assert (=> mapIsEmpty!5977 mapRes!5977))

(assert (= (and mapNonEmpty!5970 condMapEmpty!5977) mapIsEmpty!5977))

(assert (= (and mapNonEmpty!5970 (not condMapEmpty!5977)) mapNonEmpty!5977))

(assert (= b!774325 b!774328))

(assert (= (and b!774325 condSetEmpty!7249) setIsEmpty!7250))

(assert (= (and b!774325 (not condSetEmpty!7249)) setNonEmpty!7249))

(assert (= setNonEmpty!7249 b!774326))

(assert (= (and mapNonEmpty!5977 ((_ is Cons!8683) mapValue!5977)) b!774325))

(assert (= b!774323 b!774324))

(assert (= (and b!774323 condSetEmpty!7250) setIsEmpty!7249))

(assert (= (and b!774323 (not condSetEmpty!7250)) setNonEmpty!7250))

(assert (= setNonEmpty!7250 b!774327))

(assert (= (and mapNonEmpty!5970 ((_ is Cons!8683) mapDefault!5977)) b!774323))

(declare-fun m!1041945 () Bool)

(assert (=> b!774323 m!1041945))

(declare-fun m!1041947 () Bool)

(assert (=> b!774325 m!1041947))

(declare-fun m!1041949 () Bool)

(assert (=> mapNonEmpty!5977 m!1041949))

(declare-fun m!1041951 () Bool)

(assert (=> setNonEmpty!7249 m!1041951))

(declare-fun m!1041953 () Bool)

(assert (=> setNonEmpty!7250 m!1041953))

(declare-fun b!774329 () Bool)

(declare-fun e!499542 () Bool)

(declare-fun tp!255025 () Bool)

(assert (=> b!774329 (= e!499542 tp!255025)))

(declare-fun b!774330 () Bool)

(declare-fun e!499541 () Bool)

(declare-fun tp!255022 () Bool)

(declare-fun setRes!7251 () Bool)

(declare-fun e!499543 () Bool)

(assert (=> b!774330 (= e!499541 (and (inv!11023 (_1!5891 (_1!5892 (h!14084 mapValue!5971)))) e!499543 tp_is_empty!3741 setRes!7251 tp!255022))))

(declare-fun condSetEmpty!7251 () Bool)

(assert (=> b!774330 (= condSetEmpty!7251 (= (_2!5892 (h!14084 mapValue!5971)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setIsEmpty!7251 () Bool)

(assert (=> setIsEmpty!7251 setRes!7251))

(assert (=> mapNonEmpty!5970 (= tp!254883 e!499541)))

(declare-fun b!774331 () Bool)

(declare-fun tp!255024 () Bool)

(assert (=> b!774331 (= e!499543 tp!255024)))

(declare-fun setElem!7251 () Context!810)

(declare-fun setNonEmpty!7251 () Bool)

(declare-fun tp!255023 () Bool)

(assert (=> setNonEmpty!7251 (= setRes!7251 (and tp!255023 (inv!11023 setElem!7251) e!499542))))

(declare-fun setRest!7251 () (InoxSet Context!810))

(assert (=> setNonEmpty!7251 (= (_2!5892 (h!14084 mapValue!5971)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7251 true) setRest!7251))))

(assert (= b!774330 b!774331))

(assert (= (and b!774330 condSetEmpty!7251) setIsEmpty!7251))

(assert (= (and b!774330 (not condSetEmpty!7251)) setNonEmpty!7251))

(assert (= setNonEmpty!7251 b!774329))

(assert (= (and mapNonEmpty!5970 ((_ is Cons!8683) mapValue!5971)) b!774330))

(declare-fun m!1041955 () Bool)

(assert (=> b!774330 m!1041955))

(declare-fun m!1041957 () Bool)

(assert (=> setNonEmpty!7251 m!1041957))

(declare-fun b!774332 () Bool)

(declare-fun e!499545 () Bool)

(declare-fun tp!255029 () Bool)

(assert (=> b!774332 (= e!499545 tp!255029)))

(declare-fun b!774333 () Bool)

(declare-fun setRes!7252 () Bool)

(declare-fun e!499544 () Bool)

(declare-fun tp!255026 () Bool)

(declare-fun e!499546 () Bool)

(assert (=> b!774333 (= e!499544 (and (inv!11023 (_1!5891 (_1!5892 (h!14084 mapDefault!5969)))) e!499546 tp_is_empty!3741 setRes!7252 tp!255026))))

(declare-fun condSetEmpty!7252 () Bool)

(assert (=> b!774333 (= condSetEmpty!7252 (= (_2!5892 (h!14084 mapDefault!5969)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setIsEmpty!7252 () Bool)

(assert (=> setIsEmpty!7252 setRes!7252))

(assert (=> b!774076 (= tp!254892 e!499544)))

(declare-fun b!774334 () Bool)

(declare-fun tp!255028 () Bool)

(assert (=> b!774334 (= e!499546 tp!255028)))

(declare-fun setNonEmpty!7252 () Bool)

(declare-fun setElem!7252 () Context!810)

(declare-fun tp!255027 () Bool)

(assert (=> setNonEmpty!7252 (= setRes!7252 (and tp!255027 (inv!11023 setElem!7252) e!499545))))

(declare-fun setRest!7252 () (InoxSet Context!810))

(assert (=> setNonEmpty!7252 (= (_2!5892 (h!14084 mapDefault!5969)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7252 true) setRest!7252))))

(assert (= b!774333 b!774334))

(assert (= (and b!774333 condSetEmpty!7252) setIsEmpty!7252))

(assert (= (and b!774333 (not condSetEmpty!7252)) setNonEmpty!7252))

(assert (= setNonEmpty!7252 b!774332))

(assert (= (and b!774076 ((_ is Cons!8683) mapDefault!5969)) b!774333))

(declare-fun m!1041959 () Bool)

(assert (=> b!774333 m!1041959))

(declare-fun m!1041961 () Bool)

(assert (=> setNonEmpty!7252 m!1041961))

(declare-fun b!774346 () Bool)

(declare-fun e!499549 () Bool)

(declare-fun tp!255042 () Bool)

(declare-fun tp!255040 () Bool)

(assert (=> b!774346 (= e!499549 (and tp!255042 tp!255040))))

(declare-fun b!774347 () Bool)

(declare-fun tp!255043 () Bool)

(assert (=> b!774347 (= e!499549 tp!255043)))

(assert (=> b!774094 (= tp!254884 e!499549)))

(declare-fun b!774345 () Bool)

(assert (=> b!774345 (= e!499549 tp_is_empty!3741)))

(declare-fun b!774348 () Bool)

(declare-fun tp!255041 () Bool)

(declare-fun tp!255044 () Bool)

(assert (=> b!774348 (= e!499549 (and tp!255041 tp!255044))))

(assert (= (and b!774094 ((_ is ElementMatch!2003) (regex!1649 (h!14089 rulesArg!343)))) b!774345))

(assert (= (and b!774094 ((_ is Concat!3696) (regex!1649 (h!14089 rulesArg!343)))) b!774346))

(assert (= (and b!774094 ((_ is Star!2003) (regex!1649 (h!14089 rulesArg!343)))) b!774347))

(assert (= (and b!774094 ((_ is Union!2003) (regex!1649 (h!14089 rulesArg!343)))) b!774348))

(declare-fun b!774349 () Bool)

(declare-fun e!499551 () Bool)

(declare-fun setRes!7253 () Bool)

(declare-fun tp!255045 () Bool)

(assert (=> b!774349 (= e!499551 (and setRes!7253 tp!255045))))

(declare-fun condSetEmpty!7253 () Bool)

(assert (=> b!774349 (= condSetEmpty!7253 (= (_1!5893 (_1!5894 (h!14085 mapDefault!5971))) ((as const (Array Context!810 Bool)) false)))))

(assert (=> b!774091 (= tp!254889 e!499551)))

(declare-fun setNonEmpty!7253 () Bool)

(declare-fun setElem!7253 () Context!810)

(declare-fun tp!255047 () Bool)

(declare-fun e!499550 () Bool)

(assert (=> setNonEmpty!7253 (= setRes!7253 (and tp!255047 (inv!11023 setElem!7253) e!499550))))

(declare-fun setRest!7253 () (InoxSet Context!810))

(assert (=> setNonEmpty!7253 (= (_1!5893 (_1!5894 (h!14085 mapDefault!5971))) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7253 true) setRest!7253))))

(declare-fun setIsEmpty!7253 () Bool)

(assert (=> setIsEmpty!7253 setRes!7253))

(declare-fun b!774350 () Bool)

(declare-fun tp!255046 () Bool)

(assert (=> b!774350 (= e!499550 tp!255046)))

(assert (= (and b!774349 condSetEmpty!7253) setIsEmpty!7253))

(assert (= (and b!774349 (not condSetEmpty!7253)) setNonEmpty!7253))

(assert (= setNonEmpty!7253 b!774350))

(assert (= (and b!774091 ((_ is Cons!8684) mapDefault!5971)) b!774349))

(declare-fun m!1041963 () Bool)

(assert (=> setNonEmpty!7253 m!1041963))

(declare-fun b!774351 () Bool)

(declare-fun tp!255048 () Bool)

(declare-fun tp!255050 () Bool)

(declare-fun e!499552 () Bool)

(assert (=> b!774351 (= e!499552 (and (inv!11020 (left!6425 (c!130354 totalInput!472))) tp!255050 (inv!11020 (right!6755 (c!130354 totalInput!472))) tp!255048))))

(declare-fun b!774353 () Bool)

(declare-fun e!499553 () Bool)

(declare-fun tp!255049 () Bool)

(assert (=> b!774353 (= e!499553 tp!255049)))

(declare-fun b!774352 () Bool)

(assert (=> b!774352 (= e!499552 (and (inv!11024 (xs!5586 (c!130354 totalInput!472))) e!499553))))

(assert (=> b!774101 (= tp!254887 (and (inv!11020 (c!130354 totalInput!472)) e!499552))))

(assert (= (and b!774101 ((_ is Node!2899) (c!130354 totalInput!472))) b!774351))

(assert (= b!774352 b!774353))

(assert (= (and b!774101 ((_ is Leaf!4254) (c!130354 totalInput!472))) b!774352))

(declare-fun m!1041965 () Bool)

(assert (=> b!774351 m!1041965))

(declare-fun m!1041967 () Bool)

(assert (=> b!774351 m!1041967))

(declare-fun m!1041969 () Bool)

(assert (=> b!774352 m!1041969))

(assert (=> b!774101 m!1041733))

(declare-fun mapNonEmpty!5980 () Bool)

(declare-fun mapRes!5980 () Bool)

(declare-fun tp!255083 () Bool)

(declare-fun e!499567 () Bool)

(assert (=> mapNonEmpty!5980 (= mapRes!5980 (and tp!255083 e!499567))))

(declare-fun mapKey!5980 () (_ BitVec 32))

(declare-fun mapRest!5980 () (Array (_ BitVec 32) List!8701))

(declare-fun mapValue!5980 () List!8701)

(assert (=> mapNonEmpty!5980 (= mapRest!5970 (store mapRest!5980 mapKey!5980 mapValue!5980))))

(declare-fun b!774368 () Bool)

(declare-fun e!499570 () Bool)

(declare-fun tp!255074 () Bool)

(assert (=> b!774368 (= e!499570 tp!255074)))

(declare-fun setIsEmpty!7258 () Bool)

(declare-fun setRes!7259 () Bool)

(assert (=> setIsEmpty!7258 setRes!7259))

(declare-fun b!774369 () Bool)

(declare-fun e!499569 () Bool)

(declare-fun tp!255079 () Bool)

(assert (=> b!774369 (= e!499569 tp!255079)))

(declare-fun tp!255080 () Bool)

(declare-fun e!499568 () Bool)

(declare-fun setElem!7258 () Context!810)

(declare-fun setNonEmpty!7258 () Bool)

(assert (=> setNonEmpty!7258 (= setRes!7259 (and tp!255080 (inv!11023 setElem!7258) e!499568))))

(declare-fun mapDefault!5980 () List!8701)

(declare-fun setRest!7258 () (InoxSet Context!810))

(assert (=> setNonEmpty!7258 (= (_2!5897 (h!14088 mapDefault!5980)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7258 true) setRest!7258))))

(declare-fun b!774370 () Bool)

(declare-fun tp!255075 () Bool)

(declare-fun e!499571 () Bool)

(declare-fun e!499566 () Bool)

(declare-fun tp!255076 () Bool)

(assert (=> b!774370 (= e!499566 (and tp!255076 (inv!11023 (_2!5896 (_1!5897 (h!14088 mapDefault!5980)))) e!499571 tp_is_empty!3741 setRes!7259 tp!255075))))

(declare-fun condSetEmpty!7259 () Bool)

(assert (=> b!774370 (= condSetEmpty!7259 (= (_2!5897 (h!14088 mapDefault!5980)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun tp!255078 () Bool)

(declare-fun setNonEmpty!7259 () Bool)

(declare-fun setElem!7259 () Context!810)

(declare-fun setRes!7258 () Bool)

(assert (=> setNonEmpty!7259 (= setRes!7258 (and tp!255078 (inv!11023 setElem!7259) e!499570))))

(declare-fun setRest!7259 () (InoxSet Context!810))

(assert (=> setNonEmpty!7259 (= (_2!5897 (h!14088 mapValue!5980)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7259 true) setRest!7259))))

(declare-fun b!774371 () Bool)

(declare-fun tp!255081 () Bool)

(assert (=> b!774371 (= e!499568 tp!255081)))

(declare-fun tp!255077 () Bool)

(declare-fun tp!255082 () Bool)

(declare-fun b!774372 () Bool)

(assert (=> b!774372 (= e!499567 (and tp!255082 (inv!11023 (_2!5896 (_1!5897 (h!14088 mapValue!5980)))) e!499569 tp_is_empty!3741 setRes!7258 tp!255077))))

(declare-fun condSetEmpty!7258 () Bool)

(assert (=> b!774372 (= condSetEmpty!7258 (= (_2!5897 (h!14088 mapValue!5980)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun setIsEmpty!7259 () Bool)

(assert (=> setIsEmpty!7259 setRes!7258))

(declare-fun condMapEmpty!5980 () Bool)

(assert (=> mapNonEmpty!5969 (= condMapEmpty!5980 (= mapRest!5970 ((as const (Array (_ BitVec 32) List!8701)) mapDefault!5980)))))

(assert (=> mapNonEmpty!5969 (= tp!254866 (and e!499566 mapRes!5980))))

(declare-fun mapIsEmpty!5980 () Bool)

(assert (=> mapIsEmpty!5980 mapRes!5980))

(declare-fun b!774373 () Bool)

(declare-fun tp!255073 () Bool)

(assert (=> b!774373 (= e!499571 tp!255073)))

(assert (= (and mapNonEmpty!5969 condMapEmpty!5980) mapIsEmpty!5980))

(assert (= (and mapNonEmpty!5969 (not condMapEmpty!5980)) mapNonEmpty!5980))

(assert (= b!774372 b!774369))

(assert (= (and b!774372 condSetEmpty!7258) setIsEmpty!7259))

(assert (= (and b!774372 (not condSetEmpty!7258)) setNonEmpty!7259))

(assert (= setNonEmpty!7259 b!774368))

(assert (= (and mapNonEmpty!5980 ((_ is Cons!8687) mapValue!5980)) b!774372))

(assert (= b!774370 b!774373))

(assert (= (and b!774370 condSetEmpty!7259) setIsEmpty!7258))

(assert (= (and b!774370 (not condSetEmpty!7259)) setNonEmpty!7258))

(assert (= setNonEmpty!7258 b!774371))

(assert (= (and mapNonEmpty!5969 ((_ is Cons!8687) mapDefault!5980)) b!774370))

(declare-fun m!1041971 () Bool)

(assert (=> setNonEmpty!7259 m!1041971))

(declare-fun m!1041973 () Bool)

(assert (=> b!774370 m!1041973))

(declare-fun m!1041975 () Bool)

(assert (=> b!774372 m!1041975))

(declare-fun m!1041977 () Bool)

(assert (=> setNonEmpty!7258 m!1041977))

(declare-fun m!1041979 () Bool)

(assert (=> mapNonEmpty!5980 m!1041979))

(declare-fun tp!255084 () Bool)

(declare-fun setRes!7260 () Bool)

(declare-fun b!774374 () Bool)

(declare-fun tp!255087 () Bool)

(declare-fun e!499573 () Bool)

(declare-fun e!499572 () Bool)

(assert (=> b!774374 (= e!499573 (and tp!255087 (inv!11023 (_2!5896 (_1!5897 (h!14088 mapValue!5969)))) e!499572 tp_is_empty!3741 setRes!7260 tp!255084))))

(declare-fun condSetEmpty!7260 () Bool)

(assert (=> b!774374 (= condSetEmpty!7260 (= (_2!5897 (h!14088 mapValue!5969)) ((as const (Array Context!810 Bool)) false)))))

(declare-fun tp!255085 () Bool)

(declare-fun e!499574 () Bool)

(declare-fun setNonEmpty!7260 () Bool)

(declare-fun setElem!7260 () Context!810)

(assert (=> setNonEmpty!7260 (= setRes!7260 (and tp!255085 (inv!11023 setElem!7260) e!499574))))

(declare-fun setRest!7260 () (InoxSet Context!810))

(assert (=> setNonEmpty!7260 (= (_2!5897 (h!14088 mapValue!5969)) ((_ map or) (store ((as const (Array Context!810 Bool)) false) setElem!7260 true) setRest!7260))))

(declare-fun b!774375 () Bool)

(declare-fun tp!255086 () Bool)

(assert (=> b!774375 (= e!499572 tp!255086)))

(declare-fun setIsEmpty!7260 () Bool)

(assert (=> setIsEmpty!7260 setRes!7260))

(assert (=> mapNonEmpty!5969 (= tp!254870 e!499573)))

(declare-fun b!774376 () Bool)

(declare-fun tp!255088 () Bool)

(assert (=> b!774376 (= e!499574 tp!255088)))

(assert (= b!774374 b!774375))

(assert (= (and b!774374 condSetEmpty!7260) setIsEmpty!7260))

(assert (= (and b!774374 (not condSetEmpty!7260)) setNonEmpty!7260))

(assert (= setNonEmpty!7260 b!774376))

(assert (= (and mapNonEmpty!5969 ((_ is Cons!8687) mapValue!5969)) b!774374))

(declare-fun m!1041981 () Bool)

(assert (=> b!774374 m!1041981))

(declare-fun m!1041983 () Bool)

(assert (=> setNonEmpty!7260 m!1041983))

(check-sat b_and!72135 (not b!774178) (not b!774217) (not d!251985) (not b!774276) (not b!774291) (not b!774137) (not b!774333) (not b!774211) (not setNonEmpty!7249) (not b!774247) (not setNonEmpty!7244) (not b!774134) (not b!774370) (not setNonEmpty!7250) (not b!774277) (not b!774262) (not mapNonEmpty!5974) (not b!774294) (not setNonEmpty!7253) (not b!774272) (not b!774348) (not b!774306) (not d!252005) (not d!251981) (not b!774274) (not b!774223) (not b_next!24719) (not b!774132) (not b_next!24709) (not b!774214) (not b!774374) (not b!774101) (not d!251993) tp_is_empty!3741 (not b!774148) (not b!774158) (not b!774182) (not b!774209) (not d!251961) (not b!774351) (not b!774328) (not b!774346) (not d!251955) (not b!774224) (not setNonEmpty!7234) (not b!774371) (not b!774191) (not b!774149) b_and!72137 (not b!774289) b_and!72121 (not setNonEmpty!7259) (not setNonEmpty!7227) (not setNonEmpty!7228) (not b!774193) (not b!774352) (not d!252009) (not b!774303) (not setNonEmpty!7252) (not setNonEmpty!7239) (not b!774368) (not b!774347) (not b!774375) (not b!774290) b_and!72129 b_and!72125 (not setNonEmpty!7235) (not d!251971) b_and!72127 (not b!774308) (not b!774275) (not b!774252) (not b_next!24711) (not b_next!24723) (not b!774331) (not setNonEmpty!7238) (not setNonEmpty!7251) (not b!774278) (not b!774273) (not b!774376) (not d!251987) (not d!251975) (not b!774108) (not b!774156) (not b!774372) (not b!774292) (not d!251957) (not b!774329) (not b_next!24713) (not b!774235) (not d!251969) (not b!774135) (not setNonEmpty!7243) (not b!774177) (not b!774332) (not b!774250) (not b!774330) (not d!251999) (not b_next!24721) (not d!251973) (not mapNonEmpty!5977) (not b!774280) (not b!774176) (not setNonEmpty!7240) (not b!774147) (not b!774323) (not d!251991) (not bm!46846) (not b!774326) (not b!774175) (not b!774248) (not b!774325) (not mapNonEmpty!5980) (not d!252007) b_and!72133 (not b!774207) (not b!774350) (not b!774236) b_and!72131 (not b!774369) (not b_next!24705) (not b!774226) (not b_next!24715) (not b!774187) (not setNonEmpty!7260) (not b!774233) (not b!774130) (not d!252013) (not b!774249) (not b!774279) (not b!774307) (not b!774234) (not b!774353) (not b!774324) (not d!252003) (not setNonEmpty!7258) (not bm!46843) b_and!72123 (not b!774206) (not b!774349) b_and!72139 (not b!774373) (not b!774251) (not b!774263) (not b!774133) (not b!774106) (not b_next!24717) (not setNonEmpty!7233) (not b!774261) (not b!774179) (not b_next!24707) (not b!774304) (not b!774136) (not b!774293) (not b!774188) (not b!774327) (not b!774220) (not b!774334))
(check-sat b_and!72135 b_and!72137 b_and!72121 b_and!72129 (not b_next!24713) (not b_next!24721) b_and!72133 (not b_next!24715) b_and!72123 (not b_next!24707) (not b_next!24719) (not b_next!24709) b_and!72125 b_and!72127 (not b_next!24711) (not b_next!24723) b_and!72131 (not b_next!24705) b_and!72139 (not b_next!24717))
