; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71778 () Bool)

(assert start!71778)

(declare-fun b!774471 () Bool)

(declare-fun b_free!24669 () Bool)

(declare-fun b_next!24733 () Bool)

(assert (=> b!774471 (= b_free!24669 (not b_next!24733))))

(declare-fun tp!255160 () Bool)

(declare-fun b_and!72149 () Bool)

(assert (=> b!774471 (= tp!255160 b_and!72149)))

(declare-fun b!774473 () Bool)

(declare-fun b_free!24671 () Bool)

(declare-fun b_next!24735 () Bool)

(assert (=> b!774473 (= b_free!24671 (not b_next!24735))))

(declare-fun tp!255163 () Bool)

(declare-fun b_and!72151 () Bool)

(assert (=> b!774473 (= tp!255163 b_and!72151)))

(declare-fun b!774483 () Bool)

(declare-fun b_free!24673 () Bool)

(declare-fun b_next!24737 () Bool)

(assert (=> b!774483 (= b_free!24673 (not b_next!24737))))

(declare-fun tp!255162 () Bool)

(declare-fun b_and!72153 () Bool)

(assert (=> b!774483 (= tp!255162 b_and!72153)))

(declare-fun b!774477 () Bool)

(declare-fun b_free!24675 () Bool)

(declare-fun b_next!24739 () Bool)

(assert (=> b!774477 (= b_free!24675 (not b_next!24739))))

(declare-fun tp!255161 () Bool)

(declare-fun b_and!72155 () Bool)

(assert (=> b!774477 (= tp!255161 b_and!72155)))

(declare-fun mapNonEmpty!5991 () Bool)

(declare-fun mapRes!5991 () Bool)

(declare-fun tp!255172 () Bool)

(declare-fun tp!255170 () Bool)

(assert (=> mapNonEmpty!5991 (= mapRes!5991 (and tp!255172 tp!255170))))

(declare-datatypes ((Regex!2007 0))(
  ( (ElementMatch!2007 (c!130379 (_ BitVec 16))) (Concat!3704 (regOne!4526 Regex!2007) (regTwo!4526 Regex!2007)) (EmptyExpr!2007) (Star!2007 (reg!2336 Regex!2007)) (EmptyLang!2007) (Union!2007 (regOne!4527 Regex!2007) (regTwo!4527 Regex!2007)) )
))
(declare-datatypes ((List!8715 0))(
  ( (Nil!8701) (Cons!8701 (h!14102 Regex!2007) (t!92058 List!8715)) )
))
(declare-datatypes ((Context!814 0))(
  ( (Context!815 (exprs!907 List!8715)) )
))
(declare-datatypes ((tuple2!10216 0))(
  ( (tuple2!10217 (_1!5910 Context!814) (_2!5910 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10218 0))(
  ( (tuple2!10219 (_1!5911 tuple2!10216) (_2!5911 (InoxSet Context!814))) )
))
(declare-datatypes ((List!8716 0))(
  ( (Nil!8702) (Cons!8702 (h!14103 tuple2!10218) (t!92059 List!8716)) )
))
(declare-fun mapRest!5992 () (Array (_ BitVec 32) List!8716))

(declare-fun mapValue!5992 () List!8716)

(declare-datatypes ((Hashable!1202 0))(
  ( (HashableExt!1201 (__x!7069 Int)) )
))
(declare-datatypes ((array!4323 0))(
  ( (array!4324 (arr!1925 (Array (_ BitVec 32) List!8716)) (size!7070 (_ BitVec 32))) )
))
(declare-datatypes ((array!4325 0))(
  ( (array!4326 (arr!1926 (Array (_ BitVec 32) (_ BitVec 64))) (size!7071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2460 0))(
  ( (LongMapFixedSize!2461 (defaultEntry!1586 Int) (mask!3118 (_ BitVec 32)) (extraKeys!1477 (_ BitVec 32)) (zeroValue!1487 List!8716) (minValue!1487 List!8716) (_size!2569 (_ BitVec 32)) (_keys!1524 array!4325) (_values!1509 array!4323) (_vacant!1291 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4861 0))(
  ( (Cell!4862 (v!18826 LongMapFixedSize!2460)) )
))
(declare-datatypes ((MutLongMap!1230 0))(
  ( (LongMap!1230 (underlying!2643 Cell!4861)) (MutLongMapExt!1229 (__x!7070 Int)) )
))
(declare-datatypes ((Cell!4863 0))(
  ( (Cell!4864 (v!18827 MutLongMap!1230)) )
))
(declare-datatypes ((MutableMap!1202 0))(
  ( (MutableMapExt!1201 (__x!7071 Int)) (HashMap!1202 (underlying!2644 Cell!4863) (hashF!3110 Hashable!1202) (_size!2570 (_ BitVec 32)) (defaultValue!1353 Int)) )
))
(declare-datatypes ((CacheUp!686 0))(
  ( (CacheUp!687 (cache!1589 MutableMap!1202)) )
))
(declare-fun cacheUp!327 () CacheUp!686)

(declare-fun mapKey!5991 () (_ BitVec 32))

(assert (=> mapNonEmpty!5991 (= (arr!1925 (_values!1509 (v!18826 (underlying!2643 (v!18827 (underlying!2644 (cache!1589 cacheUp!327))))))) (store mapRest!5992 mapKey!5991 mapValue!5992))))

(declare-fun mapIsEmpty!5991 () Bool)

(declare-fun mapRes!5992 () Bool)

(assert (=> mapIsEmpty!5991 mapRes!5992))

(declare-fun b!774470 () Bool)

(declare-fun e!499676 () Bool)

(declare-fun e!499672 () Bool)

(assert (=> b!774470 (= e!499676 e!499672)))

(declare-fun e!499671 () Bool)

(assert (=> b!774471 (= e!499672 (and e!499671 tp!255160))))

(declare-fun b!774472 () Bool)

(declare-fun e!499679 () Bool)

(declare-fun tp!255167 () Bool)

(assert (=> b!774472 (= e!499679 (and tp!255167 mapRes!5991))))

(declare-fun condMapEmpty!5992 () Bool)

(declare-fun mapDefault!5992 () List!8716)

(assert (=> b!774472 (= condMapEmpty!5992 (= (arr!1925 (_values!1509 (v!18826 (underlying!2643 (v!18827 (underlying!2644 (cache!1589 cacheUp!327))))))) ((as const (Array (_ BitVec 32) List!8716)) mapDefault!5992)))))

(declare-fun e!499681 () Bool)

(declare-fun e!499668 () Bool)

(assert (=> b!774473 (= e!499681 (and e!499668 tp!255163))))

(declare-fun b!774474 () Bool)

(declare-fun e!499678 () Bool)

(declare-fun e!499677 () Bool)

(assert (=> b!774474 (= e!499678 e!499677)))

(declare-fun mapNonEmpty!5992 () Bool)

(declare-fun tp!255168 () Bool)

(declare-fun tp!255159 () Bool)

(assert (=> mapNonEmpty!5992 (= mapRes!5992 (and tp!255168 tp!255159))))

(declare-fun mapKey!5992 () (_ BitVec 32))

(declare-datatypes ((tuple3!1022 0))(
  ( (tuple3!1023 (_1!5912 Regex!2007) (_2!5912 Context!814) (_3!802 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!10220 0))(
  ( (tuple2!10221 (_1!5913 tuple3!1022) (_2!5913 (InoxSet Context!814))) )
))
(declare-datatypes ((List!8717 0))(
  ( (Nil!8703) (Cons!8703 (h!14104 tuple2!10220) (t!92060 List!8717)) )
))
(declare-datatypes ((array!4327 0))(
  ( (array!4328 (arr!1927 (Array (_ BitVec 32) List!8717)) (size!7072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2462 0))(
  ( (LongMapFixedSize!2463 (defaultEntry!1587 Int) (mask!3119 (_ BitVec 32)) (extraKeys!1478 (_ BitVec 32)) (zeroValue!1488 List!8717) (minValue!1488 List!8717) (_size!2571 (_ BitVec 32)) (_keys!1525 array!4325) (_values!1510 array!4327) (_vacant!1292 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4865 0))(
  ( (Cell!4866 (v!18828 LongMapFixedSize!2462)) )
))
(declare-datatypes ((MutLongMap!1231 0))(
  ( (LongMap!1231 (underlying!2645 Cell!4865)) (MutLongMapExt!1230 (__x!7072 Int)) )
))
(declare-datatypes ((Cell!4867 0))(
  ( (Cell!4868 (v!18829 MutLongMap!1231)) )
))
(declare-datatypes ((Hashable!1203 0))(
  ( (HashableExt!1202 (__x!7073 Int)) )
))
(declare-datatypes ((MutableMap!1203 0))(
  ( (MutableMapExt!1202 (__x!7074 Int)) (HashMap!1203 (underlying!2646 Cell!4867) (hashF!3111 Hashable!1203) (_size!2572 (_ BitVec 32)) (defaultValue!1354 Int)) )
))
(declare-datatypes ((CacheDown!692 0))(
  ( (CacheDown!693 (cache!1590 MutableMap!1203)) )
))
(declare-fun cacheDown!340 () CacheDown!692)

(declare-fun mapRest!5991 () (Array (_ BitVec 32) List!8717))

(declare-fun mapValue!5991 () List!8717)

(assert (=> mapNonEmpty!5992 (= (arr!1927 (_values!1510 (v!18828 (underlying!2645 (v!18829 (underlying!2646 (cache!1590 cacheDown!340))))))) (store mapRest!5991 mapKey!5992 mapValue!5991))))

(declare-fun b!774475 () Bool)

(declare-fun e!499669 () Bool)

(declare-fun tp!255166 () Bool)

(assert (=> b!774475 (= e!499669 (and tp!255166 mapRes!5992))))

(declare-fun condMapEmpty!5991 () Bool)

(declare-fun mapDefault!5991 () List!8717)

(assert (=> b!774475 (= condMapEmpty!5991 (= (arr!1927 (_values!1510 (v!18828 (underlying!2645 (v!18829 (underlying!2646 (cache!1590 cacheDown!340))))))) ((as const (Array (_ BitVec 32) List!8717)) mapDefault!5991)))))

(declare-fun b!774476 () Bool)

(declare-fun e!499682 () Bool)

(assert (=> b!774476 (= e!499682 false)))

(declare-datatypes ((List!8718 0))(
  ( (Nil!8704) (Cons!8704 (h!14105 (_ BitVec 16)) (t!92061 List!8718)) )
))
(declare-datatypes ((TokenValue!1697 0))(
  ( (FloatLiteralValue!3394 (text!12324 List!8718)) (TokenValueExt!1696 (__x!7075 Int)) (Broken!8485 (value!52755 List!8718)) (Object!1710) (End!1697) (Def!1697) (Underscore!1697) (Match!1697) (Else!1697) (Error!1697) (Case!1697) (If!1697) (Extends!1697) (Abstract!1697) (Class!1697) (Val!1697) (DelimiterValue!3394 (del!1757 List!8718)) (KeywordValue!1703 (value!52756 List!8718)) (CommentValue!3394 (value!52757 List!8718)) (WhitespaceValue!3394 (value!52758 List!8718)) (IndentationValue!1697 (value!52759 List!8718)) (String!10240) (Int32!1697) (Broken!8486 (value!52760 List!8718)) (Boolean!1698) (Unit!13151) (OperatorValue!1700 (op!1757 List!8718)) (IdentifierValue!3394 (value!52761 List!8718)) (IdentifierValue!3395 (value!52762 List!8718)) (WhitespaceValue!3395 (value!52763 List!8718)) (True!3394) (False!3394) (Broken!8487 (value!52764 List!8718)) (Broken!8488 (value!52765 List!8718)) (True!3395) (RightBrace!1697) (RightBracket!1697) (Colon!1697) (Null!1697) (Comma!1697) (LeftBracket!1697) (False!3395) (LeftBrace!1697) (ImaginaryLiteralValue!1697 (text!12325 List!8718)) (StringLiteralValue!5091 (value!52766 List!8718)) (EOFValue!1697 (value!52767 List!8718)) (IdentValue!1697 (value!52768 List!8718)) (DelimiterValue!3395 (value!52769 List!8718)) (DedentValue!1697 (value!52770 List!8718)) (NewLineValue!1697 (value!52771 List!8718)) (IntegerValue!5091 (value!52772 (_ BitVec 32)) (text!12326 List!8718)) (IntegerValue!5092 (value!52773 Int) (text!12327 List!8718)) (Times!1697) (Or!1697) (Equal!1697) (Minus!1697) (Broken!8489 (value!52774 List!8718)) (And!1697) (Div!1697) (LessEqual!1697) (Mod!1697) (Concat!3705) (Not!1697) (Plus!1697) (SpaceValue!1697 (value!52775 List!8718)) (IntegerValue!5093 (value!52776 Int) (text!12328 List!8718)) (StringLiteralValue!5092 (text!12329 List!8718)) (FloatLiteralValue!3395 (text!12330 List!8718)) (BytesLiteralValue!1697 (value!52777 List!8718)) (CommentValue!3395 (value!52778 List!8718)) (StringLiteralValue!5093 (value!52779 List!8718)) (ErrorTokenValue!1697 (msg!1758 List!8718)) )
))
(declare-datatypes ((IArray!5813 0))(
  ( (IArray!5814 (innerList!2964 List!8718)) )
))
(declare-datatypes ((Conc!2906 0))(
  ( (Node!2906 (left!6436 Conc!2906) (right!6766 Conc!2906) (csize!6042 Int) (cheight!3117 Int)) (Leaf!4263 (xs!5593 IArray!5813) (csize!6043 Int)) (Empty!2906) )
))
(declare-datatypes ((BalanceConc!5824 0))(
  ( (BalanceConc!5825 (c!130380 Conc!2906)) )
))
(declare-datatypes ((String!10241 0))(
  ( (String!10242 (value!52780 String)) )
))
(declare-datatypes ((TokenValueInjection!3130 0))(
  ( (TokenValueInjection!3131 (toValue!2645 Int) (toChars!2504 Int)) )
))
(declare-datatypes ((Rule!3106 0))(
  ( (Rule!3107 (regex!1653 Regex!2007) (tag!1915 String!10241) (isSeparator!1653 Bool) (transformation!1653 TokenValueInjection!3130)) )
))
(declare-datatypes ((List!8719 0))(
  ( (Nil!8705) (Cons!8705 (h!14106 Rule!3106) (t!92062 List!8719)) )
))
(declare-fun lt!314280 () List!8719)

(declare-datatypes ((tuple3!1024 0))(
  ( (tuple3!1025 (_1!5914 Bool) (_2!5914 CacheUp!686) (_3!803 CacheDown!692)) )
))
(declare-fun lt!314279 () tuple3!1024)

(declare-datatypes ((LexerInterface!1455 0))(
  ( (LexerInterfaceExt!1452 (__x!7076 Int)) (Lexer!1453) )
))
(declare-datatypes ((Token!2972 0))(
  ( (Token!2973 (value!52781 TokenValue!1697) (rule!2778 Rule!3106) (size!7073 Int) (originalCharacters!1911 List!8718)) )
))
(declare-datatypes ((List!8720 0))(
  ( (Nil!8706) (Cons!8706 (h!14107 Token!2972) (t!92063 List!8720)) )
))
(declare-datatypes ((IArray!5815 0))(
  ( (IArray!5816 (innerList!2965 List!8720)) )
))
(declare-datatypes ((Conc!2907 0))(
  ( (Node!2907 (left!6437 Conc!2907) (right!6767 Conc!2907) (csize!6044 Int) (cheight!3118 Int)) (Leaf!4264 (xs!5594 IArray!5815) (csize!6045 Int)) (Empty!2907) )
))
(declare-datatypes ((BalanceConc!5826 0))(
  ( (BalanceConc!5827 (c!130381 Conc!2907)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!21 (LexerInterface!1455 List!8719 BalanceConc!5826 CacheUp!686 CacheDown!692) tuple3!1024)

(declare-fun ++!2235 (BalanceConc!5826 BalanceConc!5826) BalanceConc!5826)

(declare-fun singletonSeq!474 (Token!2972) BalanceConc!5826)

(declare-fun apply!1787 (TokenValueInjection!3130 BalanceConc!5824) TokenValue!1697)

(declare-datatypes ((KeywordValueInjection!82 0))(
  ( (KeywordValueInjection!83) )
))
(declare-fun injection!9 (KeywordValueInjection!82) TokenValueInjection!3130)

(declare-fun singletonSeq!475 ((_ BitVec 16)) BalanceConc!5824)

(declare-datatypes ((JsonLexer!266 0))(
  ( (JsonLexer!267) )
))
(declare-fun commaRule!0 (JsonLexer!266) Rule!3106)

(declare-datatypes ((WhitespaceValueInjection!62 0))(
  ( (WhitespaceValueInjection!63) )
))
(declare-fun injection!7 (WhitespaceValueInjection!62) TokenValueInjection!3130)

(declare-fun whitespaceRule!0 (JsonLexer!266) Rule!3106)

(assert (=> b!774476 (= lt!314279 (rulesProduceEachTokenIndividuallyMem!21 Lexer!1453 lt!314280 (++!2235 (singletonSeq!474 (Token!2973 (apply!1787 (injection!9 KeywordValueInjection!83) (singletonSeq!475 #x002C)) (commaRule!0 JsonLexer!267) 1 (Cons!8704 #x002C Nil!8704))) (singletonSeq!474 (Token!2973 (apply!1787 (injection!7 WhitespaceValueInjection!63) (singletonSeq!475 #x000A)) (whitespaceRule!0 JsonLexer!267) 1 (Cons!8704 #x000A Nil!8704)))) cacheUp!327 cacheDown!340))))

(declare-fun tp!255165 () Bool)

(declare-fun tp!255171 () Bool)

(declare-fun e!499670 () Bool)

(declare-fun array_inv!1401 (array!4325) Bool)

(declare-fun array_inv!1402 (array!4327) Bool)

(assert (=> b!774477 (= e!499670 (and tp!255161 tp!255165 tp!255171 (array_inv!1401 (_keys!1525 (v!18828 (underlying!2645 (v!18829 (underlying!2646 (cache!1590 cacheDown!340))))))) (array_inv!1402 (_values!1510 (v!18828 (underlying!2645 (v!18829 (underlying!2646 (cache!1590 cacheDown!340))))))) e!499669))))

(declare-fun b!774478 () Bool)

(declare-fun e!499666 () Bool)

(declare-fun lt!314281 () MutLongMap!1231)

(get-info :version)

(assert (=> b!774478 (= e!499668 (and e!499666 ((_ is LongMap!1231) lt!314281)))))

(assert (=> b!774478 (= lt!314281 (v!18829 (underlying!2646 (cache!1590 cacheDown!340))))))

(declare-fun b!774479 () Bool)

(declare-fun e!499680 () Bool)

(assert (=> b!774479 (= e!499666 e!499680)))

(declare-fun b!774469 () Bool)

(declare-fun e!499674 () Bool)

(assert (=> b!774469 (= e!499674 e!499678)))

(declare-fun res!338910 () Bool)

(assert (=> start!71778 (=> (not res!338910) (not e!499682))))

(declare-fun isEmpty!5236 (List!8719) Bool)

(assert (=> start!71778 (= res!338910 (not (isEmpty!5236 lt!314280)))))

(declare-fun rules!109 (JsonLexer!266) List!8719)

(assert (=> start!71778 (= lt!314280 (rules!109 JsonLexer!267))))

(assert (=> start!71778 e!499682))

(declare-fun inv!11031 (CacheUp!686) Bool)

(assert (=> start!71778 (and (inv!11031 cacheUp!327) e!499676)))

(declare-fun e!499673 () Bool)

(declare-fun inv!11032 (CacheDown!692) Bool)

(assert (=> start!71778 (and (inv!11032 cacheDown!340) e!499673)))

(declare-fun b!774480 () Bool)

(assert (=> b!774480 (= e!499673 e!499681)))

(declare-fun b!774481 () Bool)

(declare-fun res!338911 () Bool)

(assert (=> b!774481 (=> (not res!338911) (not e!499682))))

(declare-fun rulesInvariant!1331 (LexerInterface!1455 List!8719) Bool)

(assert (=> b!774481 (= res!338911 (rulesInvariant!1331 Lexer!1453 lt!314280))))

(declare-fun b!774482 () Bool)

(assert (=> b!774482 (= e!499680 e!499670)))

(declare-fun tp!255169 () Bool)

(declare-fun tp!255164 () Bool)

(declare-fun array_inv!1403 (array!4323) Bool)

(assert (=> b!774483 (= e!499677 (and tp!255162 tp!255169 tp!255164 (array_inv!1401 (_keys!1524 (v!18826 (underlying!2643 (v!18827 (underlying!2644 (cache!1589 cacheUp!327))))))) (array_inv!1403 (_values!1509 (v!18826 (underlying!2643 (v!18827 (underlying!2644 (cache!1589 cacheUp!327))))))) e!499679))))

(declare-fun mapIsEmpty!5992 () Bool)

(assert (=> mapIsEmpty!5992 mapRes!5991))

(declare-fun b!774484 () Bool)

(declare-fun lt!314278 () MutLongMap!1230)

(assert (=> b!774484 (= e!499671 (and e!499674 ((_ is LongMap!1230) lt!314278)))))

(assert (=> b!774484 (= lt!314278 (v!18827 (underlying!2644 (cache!1589 cacheUp!327))))))

(assert (= (and start!71778 res!338910) b!774481))

(assert (= (and b!774481 res!338911) b!774476))

(assert (= (and b!774472 condMapEmpty!5992) mapIsEmpty!5992))

(assert (= (and b!774472 (not condMapEmpty!5992)) mapNonEmpty!5991))

(assert (= b!774483 b!774472))

(assert (= b!774474 b!774483))

(assert (= b!774469 b!774474))

(assert (= (and b!774484 ((_ is LongMap!1230) (v!18827 (underlying!2644 (cache!1589 cacheUp!327))))) b!774469))

(assert (= b!774471 b!774484))

(assert (= (and b!774470 ((_ is HashMap!1202) (cache!1589 cacheUp!327))) b!774471))

(assert (= start!71778 b!774470))

(assert (= (and b!774475 condMapEmpty!5991) mapIsEmpty!5991))

(assert (= (and b!774475 (not condMapEmpty!5991)) mapNonEmpty!5992))

(assert (= b!774477 b!774475))

(assert (= b!774482 b!774477))

(assert (= b!774479 b!774482))

(assert (= (and b!774478 ((_ is LongMap!1231) (v!18829 (underlying!2646 (cache!1590 cacheDown!340))))) b!774479))

(assert (= b!774473 b!774478))

(assert (= (and b!774480 ((_ is HashMap!1203) (cache!1590 cacheDown!340))) b!774473))

(assert (= start!71778 b!774480))

(declare-fun m!1042087 () Bool)

(assert (=> mapNonEmpty!5991 m!1042087))

(declare-fun m!1042089 () Bool)

(assert (=> b!774483 m!1042089))

(declare-fun m!1042091 () Bool)

(assert (=> b!774483 m!1042091))

(declare-fun m!1042093 () Bool)

(assert (=> start!71778 m!1042093))

(declare-fun m!1042095 () Bool)

(assert (=> start!71778 m!1042095))

(declare-fun m!1042097 () Bool)

(assert (=> start!71778 m!1042097))

(declare-fun m!1042099 () Bool)

(assert (=> start!71778 m!1042099))

(declare-fun m!1042101 () Bool)

(assert (=> b!774481 m!1042101))

(declare-fun m!1042103 () Bool)

(assert (=> b!774476 m!1042103))

(declare-fun m!1042105 () Bool)

(assert (=> b!774476 m!1042105))

(declare-fun m!1042107 () Bool)

(assert (=> b!774476 m!1042107))

(declare-fun m!1042109 () Bool)

(assert (=> b!774476 m!1042109))

(declare-fun m!1042111 () Bool)

(assert (=> b!774476 m!1042111))

(assert (=> b!774476 m!1042105))

(declare-fun m!1042113 () Bool)

(assert (=> b!774476 m!1042113))

(declare-fun m!1042115 () Bool)

(assert (=> b!774476 m!1042115))

(assert (=> b!774476 m!1042111))

(declare-fun m!1042117 () Bool)

(assert (=> b!774476 m!1042117))

(declare-fun m!1042119 () Bool)

(assert (=> b!774476 m!1042119))

(assert (=> b!774476 m!1042107))

(declare-fun m!1042121 () Bool)

(assert (=> b!774476 m!1042121))

(assert (=> b!774476 m!1042117))

(declare-fun m!1042123 () Bool)

(assert (=> b!774476 m!1042123))

(assert (=> b!774476 m!1042115))

(assert (=> b!774476 m!1042103))

(assert (=> b!774476 m!1042113))

(declare-fun m!1042125 () Bool)

(assert (=> b!774476 m!1042125))

(declare-fun m!1042127 () Bool)

(assert (=> b!774477 m!1042127))

(declare-fun m!1042129 () Bool)

(assert (=> b!774477 m!1042129))

(declare-fun m!1042131 () Bool)

(assert (=> mapNonEmpty!5992 m!1042131))

(check-sat (not start!71778) (not mapNonEmpty!5992) (not b!774472) (not b_next!24737) (not b!774477) b_and!72149 (not b_next!24739) (not b_next!24733) (not mapNonEmpty!5991) b_and!72155 (not b!774476) b_and!72153 (not b_next!24735) (not b!774481) (not b!774475) (not b!774483) b_and!72151)
(check-sat (not b_next!24737) b_and!72149 b_and!72153 (not b_next!24739) (not b_next!24733) b_and!72155 (not b_next!24735) b_and!72151)
