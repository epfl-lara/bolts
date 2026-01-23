; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71586 () Bool)

(assert start!71586)

(declare-fun b!772577 () Bool)

(declare-fun b_free!24501 () Bool)

(declare-fun b_next!24565 () Bool)

(assert (=> b!772577 (= b_free!24501 (not b_next!24565))))

(declare-fun tp!253619 () Bool)

(declare-fun b_and!71981 () Bool)

(assert (=> b!772577 (= tp!253619 b_and!71981)))

(declare-fun b!772592 () Bool)

(declare-fun b_free!24503 () Bool)

(declare-fun b_next!24567 () Bool)

(assert (=> b!772592 (= b_free!24503 (not b_next!24567))))

(declare-fun tp!253614 () Bool)

(declare-fun b_and!71983 () Bool)

(assert (=> b!772592 (= tp!253614 b_and!71983)))

(declare-fun b_free!24505 () Bool)

(declare-fun b_next!24569 () Bool)

(assert (=> b!772592 (= b_free!24505 (not b_next!24569))))

(declare-fun tp!253632 () Bool)

(declare-fun b_and!71985 () Bool)

(assert (=> b!772592 (= tp!253632 b_and!71985)))

(declare-fun b!772583 () Bool)

(declare-fun b_free!24507 () Bool)

(declare-fun b_next!24571 () Bool)

(assert (=> b!772583 (= b_free!24507 (not b_next!24571))))

(declare-fun tp!253628 () Bool)

(declare-fun b_and!71987 () Bool)

(assert (=> b!772583 (= tp!253628 b_and!71987)))

(declare-fun b!772575 () Bool)

(declare-fun b_free!24509 () Bool)

(declare-fun b_next!24573 () Bool)

(assert (=> b!772575 (= b_free!24509 (not b_next!24573))))

(declare-fun tp!253625 () Bool)

(declare-fun b_and!71989 () Bool)

(assert (=> b!772575 (= tp!253625 b_and!71989)))

(declare-fun b!772580 () Bool)

(declare-fun b_free!24511 () Bool)

(declare-fun b_next!24575 () Bool)

(assert (=> b!772580 (= b_free!24511 (not b_next!24575))))

(declare-fun tp!253622 () Bool)

(declare-fun b_and!71991 () Bool)

(assert (=> b!772580 (= tp!253622 b_and!71991)))

(declare-fun b!772593 () Bool)

(declare-fun b_free!24513 () Bool)

(declare-fun b_next!24577 () Bool)

(assert (=> b!772593 (= b_free!24513 (not b_next!24577))))

(declare-fun tp!253610 () Bool)

(declare-fun b_and!71993 () Bool)

(assert (=> b!772593 (= tp!253610 b_and!71993)))

(declare-fun b!772572 () Bool)

(declare-fun b_free!24515 () Bool)

(declare-fun b_next!24579 () Bool)

(assert (=> b!772572 (= b_free!24515 (not b_next!24579))))

(declare-fun tp!253613 () Bool)

(declare-fun b_and!71995 () Bool)

(assert (=> b!772572 (= tp!253613 b_and!71995)))

(declare-fun b!772568 () Bool)

(declare-fun e!498054 () Bool)

(declare-fun e!498068 () Bool)

(assert (=> b!772568 (= e!498054 e!498068)))

(declare-fun mapIsEmpty!5870 () Bool)

(declare-fun mapRes!5872 () Bool)

(assert (=> mapIsEmpty!5870 mapRes!5872))

(declare-fun b!772569 () Bool)

(declare-fun e!498067 () Bool)

(declare-datatypes ((List!8646 0))(
  ( (Nil!8632) (Cons!8632 (h!14033 (_ BitVec 16)) (t!91928 List!8646)) )
))
(declare-datatypes ((TokenValue!1687 0))(
  ( (FloatLiteralValue!3374 (text!12254 List!8646)) (TokenValueExt!1686 (__x!6965 Int)) (Broken!8435 (value!52470 List!8646)) (Object!1700) (End!1687) (Def!1687) (Underscore!1687) (Match!1687) (Else!1687) (Error!1687) (Case!1687) (If!1687) (Extends!1687) (Abstract!1687) (Class!1687) (Val!1687) (DelimiterValue!3374 (del!1747 List!8646)) (KeywordValue!1693 (value!52471 List!8646)) (CommentValue!3374 (value!52472 List!8646)) (WhitespaceValue!3374 (value!52473 List!8646)) (IndentationValue!1687 (value!52474 List!8646)) (String!10186) (Int32!1687) (Broken!8436 (value!52475 List!8646)) (Boolean!1688) (Unit!13131) (OperatorValue!1690 (op!1747 List!8646)) (IdentifierValue!3374 (value!52476 List!8646)) (IdentifierValue!3375 (value!52477 List!8646)) (WhitespaceValue!3375 (value!52478 List!8646)) (True!3374) (False!3374) (Broken!8437 (value!52479 List!8646)) (Broken!8438 (value!52480 List!8646)) (True!3375) (RightBrace!1687) (RightBracket!1687) (Colon!1687) (Null!1687) (Comma!1687) (LeftBracket!1687) (False!3375) (LeftBrace!1687) (ImaginaryLiteralValue!1687 (text!12255 List!8646)) (StringLiteralValue!5061 (value!52481 List!8646)) (EOFValue!1687 (value!52482 List!8646)) (IdentValue!1687 (value!52483 List!8646)) (DelimiterValue!3375 (value!52484 List!8646)) (DedentValue!1687 (value!52485 List!8646)) (NewLineValue!1687 (value!52486 List!8646)) (IntegerValue!5061 (value!52487 (_ BitVec 32)) (text!12256 List!8646)) (IntegerValue!5062 (value!52488 Int) (text!12257 List!8646)) (Times!1687) (Or!1687) (Equal!1687) (Minus!1687) (Broken!8439 (value!52489 List!8646)) (And!1687) (Div!1687) (LessEqual!1687) (Mod!1687) (Concat!3682) (Not!1687) (Plus!1687) (SpaceValue!1687 (value!52490 List!8646)) (IntegerValue!5063 (value!52491 Int) (text!12258 List!8646)) (StringLiteralValue!5062 (text!12259 List!8646)) (FloatLiteralValue!3375 (text!12260 List!8646)) (BytesLiteralValue!1687 (value!52492 List!8646)) (CommentValue!3375 (value!52493 List!8646)) (StringLiteralValue!5063 (value!52494 List!8646)) (ErrorTokenValue!1687 (msg!1748 List!8646)) )
))
(declare-datatypes ((C!4592 0))(
  ( (C!4593 (val!2526 Int)) )
))
(declare-datatypes ((List!8647 0))(
  ( (Nil!8633) (Cons!8633 (h!14034 C!4592) (t!91929 List!8647)) )
))
(declare-datatypes ((IArray!5785 0))(
  ( (IArray!5786 (innerList!2950 List!8647)) )
))
(declare-datatypes ((Conc!2892 0))(
  ( (Node!2892 (left!6408 Conc!2892) (right!6738 Conc!2892) (csize!6014 Int) (cheight!3103 Int)) (Leaf!4243 (xs!5579 IArray!5785) (csize!6015 Int)) (Empty!2892) )
))
(declare-datatypes ((BalanceConc!5796 0))(
  ( (BalanceConc!5797 (c!130307 Conc!2892)) )
))
(declare-datatypes ((TokenValueInjection!3110 0))(
  ( (TokenValueInjection!3111 (toValue!2635 Int) (toChars!2494 Int)) )
))
(declare-datatypes ((Regex!1995 0))(
  ( (ElementMatch!1995 (c!130308 C!4592)) (Concat!3683 (regOne!4502 Regex!1995) (regTwo!4502 Regex!1995)) (EmptyExpr!1995) (Star!1995 (reg!2324 Regex!1995)) (EmptyLang!1995) (Union!1995 (regOne!4503 Regex!1995) (regTwo!4503 Regex!1995)) )
))
(declare-datatypes ((String!10187 0))(
  ( (String!10188 (value!52495 String)) )
))
(declare-datatypes ((Rule!3086 0))(
  ( (Rule!3087 (regex!1643 Regex!1995) (tag!1905 String!10187) (isSeparator!1643 Bool) (transformation!1643 TokenValueInjection!3110)) )
))
(declare-datatypes ((List!8648 0))(
  ( (Nil!8634) (Cons!8634 (h!14035 Rule!3086) (t!91930 List!8648)) )
))
(declare-fun rulesArg!343 () List!8648)

(declare-fun size!7017 (List!8648) Int)

(assert (=> b!772569 (= e!498067 (< (size!7017 rulesArg!343) 0))))

(declare-fun b!772570 () Bool)

(declare-fun e!498060 () Bool)

(declare-fun e!498063 () Bool)

(assert (=> b!772570 (= e!498060 e!498063)))

(declare-fun b!772571 () Bool)

(declare-fun e!498055 () Bool)

(declare-fun e!498069 () Bool)

(assert (=> b!772571 (= e!498055 e!498069)))

(declare-fun tp!253626 () Bool)

(declare-fun tp!253616 () Bool)

(declare-datatypes ((List!8649 0))(
  ( (Nil!8635) (Cons!8635 (h!14036 Regex!1995) (t!91931 List!8649)) )
))
(declare-datatypes ((Context!794 0))(
  ( (Context!795 (exprs!897 List!8649)) )
))
(declare-datatypes ((tuple3!1000 0))(
  ( (tuple3!1001 (_1!5835 Regex!1995) (_2!5835 Context!794) (_3!783 C!4592)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10104 0))(
  ( (tuple2!10105 (_1!5836 tuple3!1000) (_2!5836 (InoxSet Context!794))) )
))
(declare-datatypes ((List!8650 0))(
  ( (Nil!8636) (Cons!8636 (h!14037 tuple2!10104) (t!91932 List!8650)) )
))
(declare-datatypes ((array!4231 0))(
  ( (array!4232 (arr!1887 (Array (_ BitVec 32) List!8650)) (size!7018 (_ BitVec 32))) )
))
(declare-datatypes ((array!4233 0))(
  ( (array!4234 (arr!1888 (Array (_ BitVec 32) (_ BitVec 64))) (size!7019 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2404 0))(
  ( (LongMapFixedSize!2405 (defaultEntry!1558 Int) (mask!3084 (_ BitVec 32)) (extraKeys!1449 (_ BitVec 32)) (zeroValue!1459 List!8650) (minValue!1459 List!8650) (_size!2513 (_ BitVec 32)) (_keys!1496 array!4233) (_values!1481 array!4231) (_vacant!1263 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4749 0))(
  ( (Cell!4750 (v!18762 LongMapFixedSize!2404)) )
))
(declare-datatypes ((MutLongMap!1202 0))(
  ( (LongMap!1202 (underlying!2587 Cell!4749)) (MutLongMapExt!1201 (__x!6966 Int)) )
))
(declare-datatypes ((Cell!4751 0))(
  ( (Cell!4752 (v!18763 MutLongMap!1202)) )
))
(declare-datatypes ((Hashable!1174 0))(
  ( (HashableExt!1173 (__x!6967 Int)) )
))
(declare-datatypes ((MutableMap!1174 0))(
  ( (MutableMapExt!1173 (__x!6968 Int)) (HashMap!1174 (underlying!2588 Cell!4751) (hashF!3082 Hashable!1174) (_size!2514 (_ BitVec 32)) (defaultValue!1325 Int)) )
))
(declare-datatypes ((CacheDown!672 0))(
  ( (CacheDown!673 (cache!1561 MutableMap!1174)) )
))
(declare-fun cacheDown!666 () CacheDown!672)

(declare-fun e!498046 () Bool)

(declare-fun array_inv!1368 (array!4233) Bool)

(declare-fun array_inv!1369 (array!4231) Bool)

(assert (=> b!772572 (= e!498069 (and tp!253613 tp!253626 tp!253616 (array_inv!1368 (_keys!1496 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) (array_inv!1369 (_values!1481 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) e!498046))))

(declare-fun b!772573 () Bool)

(declare-fun e!498051 () Bool)

(declare-fun e!498074 () Bool)

(assert (=> b!772573 (= e!498051 e!498074)))

(declare-fun res!338448 () Bool)

(assert (=> start!71586 (=> (not res!338448) (not e!498067))))

(declare-datatypes ((LexerInterface!1445 0))(
  ( (LexerInterfaceExt!1442 (__x!6969 Int)) (Lexer!1443) )
))
(declare-fun thiss!15653 () LexerInterface!1445)

(get-info :version)

(assert (=> start!71586 (= res!338448 ((_ is Lexer!1443) thiss!15653))))

(assert (=> start!71586 e!498067))

(declare-fun e!498045 () Bool)

(assert (=> start!71586 e!498045))

(declare-fun input!1432 () BalanceConc!5796)

(declare-fun e!498073 () Bool)

(declare-fun inv!10964 (BalanceConc!5796) Bool)

(assert (=> start!71586 (and (inv!10964 input!1432) e!498073)))

(declare-datatypes ((tuple2!10106 0))(
  ( (tuple2!10107 (_1!5837 (InoxSet Context!794)) (_2!5837 Int)) )
))
(declare-datatypes ((tuple2!10108 0))(
  ( (tuple2!10109 (_1!5838 tuple2!10106) (_2!5838 Int)) )
))
(declare-datatypes ((List!8651 0))(
  ( (Nil!8637) (Cons!8637 (h!14038 tuple2!10108) (t!91933 List!8651)) )
))
(declare-datatypes ((array!4235 0))(
  ( (array!4236 (arr!1889 (Array (_ BitVec 32) List!8651)) (size!7020 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1175 0))(
  ( (HashableExt!1174 (__x!6970 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2406 0))(
  ( (LongMapFixedSize!2407 (defaultEntry!1559 Int) (mask!3085 (_ BitVec 32)) (extraKeys!1450 (_ BitVec 32)) (zeroValue!1460 List!8651) (minValue!1460 List!8651) (_size!2515 (_ BitVec 32)) (_keys!1497 array!4233) (_values!1482 array!4235) (_vacant!1264 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4753 0))(
  ( (Cell!4754 (v!18764 LongMapFixedSize!2406)) )
))
(declare-datatypes ((MutLongMap!1203 0))(
  ( (LongMap!1203 (underlying!2589 Cell!4753)) (MutLongMapExt!1202 (__x!6971 Int)) )
))
(declare-datatypes ((Cell!4755 0))(
  ( (Cell!4756 (v!18765 MutLongMap!1203)) )
))
(declare-datatypes ((MutableMap!1175 0))(
  ( (MutableMapExt!1174 (__x!6972 Int)) (HashMap!1175 (underlying!2590 Cell!4755) (hashF!3083 Hashable!1175) (_size!2516 (_ BitVec 32)) (defaultValue!1326 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!336 0))(
  ( (CacheFindLongestMatch!337 (cache!1562 MutableMap!1175) (totalInput!2131 BalanceConc!5796)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!336)

(declare-fun e!498071 () Bool)

(declare-fun inv!10965 (CacheFindLongestMatch!336) Bool)

(assert (=> start!71586 (and (inv!10965 cacheFindLongestMatch!134) e!498071)))

(assert (=> start!71586 true))

(declare-datatypes ((tuple2!10110 0))(
  ( (tuple2!10111 (_1!5839 Context!794) (_2!5839 C!4592)) )
))
(declare-datatypes ((tuple2!10112 0))(
  ( (tuple2!10113 (_1!5840 tuple2!10110) (_2!5840 (InoxSet Context!794))) )
))
(declare-datatypes ((List!8652 0))(
  ( (Nil!8638) (Cons!8638 (h!14039 tuple2!10112) (t!91934 List!8652)) )
))
(declare-datatypes ((array!4237 0))(
  ( (array!4238 (arr!1890 (Array (_ BitVec 32) List!8652)) (size!7021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2408 0))(
  ( (LongMapFixedSize!2409 (defaultEntry!1560 Int) (mask!3086 (_ BitVec 32)) (extraKeys!1451 (_ BitVec 32)) (zeroValue!1461 List!8652) (minValue!1461 List!8652) (_size!2517 (_ BitVec 32)) (_keys!1498 array!4233) (_values!1483 array!4237) (_vacant!1265 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4757 0))(
  ( (Cell!4758 (v!18766 LongMapFixedSize!2408)) )
))
(declare-datatypes ((MutLongMap!1204 0))(
  ( (LongMap!1204 (underlying!2591 Cell!4757)) (MutLongMapExt!1203 (__x!6973 Int)) )
))
(declare-datatypes ((Cell!4759 0))(
  ( (Cell!4760 (v!18767 MutLongMap!1204)) )
))
(declare-datatypes ((Hashable!1176 0))(
  ( (HashableExt!1175 (__x!6974 Int)) )
))
(declare-datatypes ((MutableMap!1176 0))(
  ( (MutableMapExt!1175 (__x!6975 Int)) (HashMap!1176 (underlying!2592 Cell!4759) (hashF!3084 Hashable!1176) (_size!2518 (_ BitVec 32)) (defaultValue!1327 Int)) )
))
(declare-datatypes ((CacheUp!666 0))(
  ( (CacheUp!667 (cache!1563 MutableMap!1176)) )
))
(declare-fun cacheUp!653 () CacheUp!666)

(declare-fun inv!10966 (CacheUp!666) Bool)

(assert (=> start!71586 (and (inv!10966 cacheUp!653) e!498051)))

(declare-fun totalInput!472 () BalanceConc!5796)

(declare-fun e!498053 () Bool)

(assert (=> start!71586 (and (inv!10964 totalInput!472) e!498053)))

(declare-fun inv!10967 (CacheDown!672) Bool)

(assert (=> start!71586 (and (inv!10967 cacheDown!666) e!498054)))

(declare-fun b!772574 () Bool)

(declare-fun res!338444 () Bool)

(assert (=> b!772574 (=> (not res!338444) (not e!498067))))

(declare-fun isEmpty!5225 (List!8648) Bool)

(assert (=> b!772574 (= res!338444 (not (isEmpty!5225 rulesArg!343)))))

(declare-fun tp!253635 () Bool)

(declare-fun e!498064 () Bool)

(declare-fun tp!253617 () Bool)

(declare-fun e!498056 () Bool)

(declare-fun array_inv!1370 (array!4235) Bool)

(assert (=> b!772575 (= e!498064 (and tp!253625 tp!253635 tp!253617 (array_inv!1368 (_keys!1497 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) (array_inv!1370 (_values!1482 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) e!498056))))

(declare-fun b!772576 () Bool)

(declare-fun res!338447 () Bool)

(assert (=> b!772576 (=> (not res!338447) (not e!498067))))

(declare-fun valid!973 (CacheDown!672) Bool)

(assert (=> b!772576 (= res!338447 (valid!973 cacheDown!666))))

(declare-fun e!498072 () Bool)

(declare-fun e!498061 () Bool)

(assert (=> b!772577 (= e!498072 (and e!498061 tp!253619))))

(declare-fun b!772578 () Bool)

(declare-fun res!338445 () Bool)

(assert (=> b!772578 (=> (not res!338445) (not e!498067))))

(declare-fun isSuffix!221 (List!8647 List!8647) Bool)

(declare-fun list!3443 (BalanceConc!5796) List!8647)

(assert (=> b!772578 (= res!338445 (isSuffix!221 (list!3443 input!1432) (list!3443 totalInput!472)))))

(declare-fun b!772579 () Bool)

(declare-fun e!498062 () Bool)

(assert (=> b!772579 (= e!498062 e!498064)))

(declare-fun e!498058 () Bool)

(assert (=> b!772580 (= e!498074 (and e!498058 tp!253622))))

(declare-fun b!772581 () Bool)

(declare-fun tp!253634 () Bool)

(declare-fun inv!10968 (Conc!2892) Bool)

(assert (=> b!772581 (= e!498073 (and (inv!10968 (c!130307 input!1432)) tp!253634))))

(declare-fun b!772582 () Bool)

(declare-fun res!338449 () Bool)

(assert (=> b!772582 (=> (not res!338449) (not e!498067))))

(declare-fun rulesValidInductive!587 (LexerInterface!1445 List!8648) Bool)

(assert (=> b!772582 (= res!338449 (rulesValidInductive!587 thiss!15653 rulesArg!343))))

(declare-fun e!498043 () Bool)

(assert (=> b!772583 (= e!498068 (and e!498043 tp!253628))))

(declare-fun b!772584 () Bool)

(declare-fun res!338451 () Bool)

(assert (=> b!772584 (=> (not res!338451) (not e!498067))))

(assert (=> b!772584 (= res!338451 (= (totalInput!2131 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!772585 () Bool)

(declare-fun tp!253624 () Bool)

(declare-fun mapRes!5871 () Bool)

(assert (=> b!772585 (= e!498056 (and tp!253624 mapRes!5871))))

(declare-fun condMapEmpty!5872 () Bool)

(declare-fun mapDefault!5870 () List!8651)

(assert (=> b!772585 (= condMapEmpty!5872 (= (arr!1889 (_values!1482 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8651)) mapDefault!5870)))))

(declare-fun mapNonEmpty!5870 () Bool)

(declare-fun tp!253623 () Bool)

(declare-fun tp!253609 () Bool)

(assert (=> mapNonEmpty!5870 (= mapRes!5872 (and tp!253623 tp!253609))))

(declare-fun mapValue!5872 () List!8652)

(declare-fun mapKey!5870 () (_ BitVec 32))

(declare-fun mapRest!5871 () (Array (_ BitVec 32) List!8652))

(assert (=> mapNonEmpty!5870 (= (arr!1890 (_values!1483 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) (store mapRest!5871 mapKey!5870 mapValue!5872))))

(declare-fun b!772586 () Bool)

(declare-fun tp!253612 () Bool)

(declare-fun mapRes!5870 () Bool)

(assert (=> b!772586 (= e!498046 (and tp!253612 mapRes!5870))))

(declare-fun condMapEmpty!5871 () Bool)

(declare-fun mapDefault!5871 () List!8650)

(assert (=> b!772586 (= condMapEmpty!5871 (= (arr!1887 (_values!1481 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8650)) mapDefault!5871)))))

(declare-fun b!772587 () Bool)

(declare-fun e!498057 () Bool)

(declare-fun tp!253618 () Bool)

(assert (=> b!772587 (= e!498057 (and tp!253618 mapRes!5872))))

(declare-fun condMapEmpty!5870 () Bool)

(declare-fun mapDefault!5872 () List!8652)

(assert (=> b!772587 (= condMapEmpty!5870 (= (arr!1890 (_values!1483 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8652)) mapDefault!5872)))))

(declare-fun b!772588 () Bool)

(declare-fun e!498066 () Bool)

(assert (=> b!772588 (= e!498066 e!498062)))

(declare-fun b!772589 () Bool)

(declare-fun e!498047 () Bool)

(declare-fun lt!313942 () MutLongMap!1202)

(assert (=> b!772589 (= e!498043 (and e!498047 ((_ is LongMap!1202) lt!313942)))))

(assert (=> b!772589 (= lt!313942 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))

(declare-fun b!772590 () Bool)

(declare-fun res!338446 () Bool)

(assert (=> b!772590 (=> (not res!338446) (not e!498067))))

(declare-fun valid!974 (CacheFindLongestMatch!336) Bool)

(assert (=> b!772590 (= res!338446 (valid!974 cacheFindLongestMatch!134))))

(declare-fun b!772591 () Bool)

(assert (=> b!772591 (= e!498047 e!498055)))

(declare-fun e!498070 () Bool)

(assert (=> b!772592 (= e!498070 (and tp!253614 tp!253632))))

(declare-fun tp!253620 () Bool)

(declare-fun tp!253629 () Bool)

(declare-fun e!498052 () Bool)

(declare-fun array_inv!1371 (array!4237) Bool)

(assert (=> b!772593 (= e!498052 (and tp!253610 tp!253629 tp!253620 (array_inv!1368 (_keys!1498 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) (array_inv!1371 (_values!1483 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) e!498057))))

(declare-fun b!772594 () Bool)

(declare-fun lt!313943 () MutLongMap!1204)

(assert (=> b!772594 (= e!498058 (and e!498060 ((_ is LongMap!1204) lt!313943)))))

(assert (=> b!772594 (= lt!313943 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))

(declare-fun b!772595 () Bool)

(assert (=> b!772595 (= e!498063 e!498052)))

(declare-fun b!772596 () Bool)

(declare-fun tp!253636 () Bool)

(assert (=> b!772596 (= e!498053 (and (inv!10968 (c!130307 totalInput!472)) tp!253636))))

(declare-fun b!772597 () Bool)

(declare-fun e!498050 () Bool)

(assert (=> b!772597 (= e!498071 (and e!498072 (inv!10964 (totalInput!2131 cacheFindLongestMatch!134)) e!498050))))

(declare-fun mapNonEmpty!5871 () Bool)

(declare-fun tp!253630 () Bool)

(declare-fun tp!253627 () Bool)

(assert (=> mapNonEmpty!5871 (= mapRes!5870 (and tp!253630 tp!253627))))

(declare-fun mapRest!5872 () (Array (_ BitVec 32) List!8650))

(declare-fun mapKey!5871 () (_ BitVec 32))

(declare-fun mapValue!5870 () List!8650)

(assert (=> mapNonEmpty!5871 (= (arr!1887 (_values!1481 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) (store mapRest!5872 mapKey!5871 mapValue!5870))))

(declare-fun e!498059 () Bool)

(declare-fun tp!253633 () Bool)

(declare-fun b!772598 () Bool)

(declare-fun inv!10963 (String!10187) Bool)

(declare-fun inv!10969 (TokenValueInjection!3110) Bool)

(assert (=> b!772598 (= e!498059 (and tp!253633 (inv!10963 (tag!1905 (h!14035 rulesArg!343))) (inv!10969 (transformation!1643 (h!14035 rulesArg!343))) e!498070))))

(declare-fun b!772599 () Bool)

(declare-fun tp!253611 () Bool)

(assert (=> b!772599 (= e!498050 (and (inv!10968 (c!130307 (totalInput!2131 cacheFindLongestMatch!134))) tp!253611))))

(declare-fun mapNonEmpty!5872 () Bool)

(declare-fun tp!253621 () Bool)

(declare-fun tp!253631 () Bool)

(assert (=> mapNonEmpty!5872 (= mapRes!5871 (and tp!253621 tp!253631))))

(declare-fun mapValue!5871 () List!8651)

(declare-fun mapRest!5870 () (Array (_ BitVec 32) List!8651))

(declare-fun mapKey!5872 () (_ BitVec 32))

(assert (=> mapNonEmpty!5872 (= (arr!1889 (_values!1482 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) (store mapRest!5870 mapKey!5872 mapValue!5871))))

(declare-fun b!772600 () Bool)

(declare-fun lt!313944 () MutLongMap!1203)

(assert (=> b!772600 (= e!498061 (and e!498066 ((_ is LongMap!1203) lt!313944)))))

(assert (=> b!772600 (= lt!313944 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))

(declare-fun b!772601 () Bool)

(declare-fun tp!253615 () Bool)

(assert (=> b!772601 (= e!498045 (and e!498059 tp!253615))))

(declare-fun mapIsEmpty!5871 () Bool)

(assert (=> mapIsEmpty!5871 mapRes!5870))

(declare-fun mapIsEmpty!5872 () Bool)

(assert (=> mapIsEmpty!5872 mapRes!5871))

(declare-fun b!772602 () Bool)

(declare-fun res!338450 () Bool)

(assert (=> b!772602 (=> (not res!338450) (not e!498067))))

(declare-fun valid!975 (CacheUp!666) Bool)

(assert (=> b!772602 (= res!338450 (valid!975 cacheUp!653))))

(assert (= (and start!71586 res!338448) b!772582))

(assert (= (and b!772582 res!338449) b!772574))

(assert (= (and b!772574 res!338444) b!772578))

(assert (= (and b!772578 res!338445) b!772602))

(assert (= (and b!772602 res!338450) b!772576))

(assert (= (and b!772576 res!338447) b!772590))

(assert (= (and b!772590 res!338446) b!772584))

(assert (= (and b!772584 res!338451) b!772569))

(assert (= b!772598 b!772592))

(assert (= b!772601 b!772598))

(assert (= (and start!71586 ((_ is Cons!8634) rulesArg!343)) b!772601))

(assert (= start!71586 b!772581))

(assert (= (and b!772585 condMapEmpty!5872) mapIsEmpty!5872))

(assert (= (and b!772585 (not condMapEmpty!5872)) mapNonEmpty!5872))

(assert (= b!772575 b!772585))

(assert (= b!772579 b!772575))

(assert (= b!772588 b!772579))

(assert (= (and b!772600 ((_ is LongMap!1203) (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))) b!772588))

(assert (= b!772577 b!772600))

(assert (= (and b!772597 ((_ is HashMap!1175) (cache!1562 cacheFindLongestMatch!134))) b!772577))

(assert (= b!772597 b!772599))

(assert (= start!71586 b!772597))

(assert (= (and b!772587 condMapEmpty!5870) mapIsEmpty!5870))

(assert (= (and b!772587 (not condMapEmpty!5870)) mapNonEmpty!5870))

(assert (= b!772593 b!772587))

(assert (= b!772595 b!772593))

(assert (= b!772570 b!772595))

(assert (= (and b!772594 ((_ is LongMap!1204) (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))) b!772570))

(assert (= b!772580 b!772594))

(assert (= (and b!772573 ((_ is HashMap!1176) (cache!1563 cacheUp!653))) b!772580))

(assert (= start!71586 b!772573))

(assert (= start!71586 b!772596))

(assert (= (and b!772586 condMapEmpty!5871) mapIsEmpty!5871))

(assert (= (and b!772586 (not condMapEmpty!5871)) mapNonEmpty!5871))

(assert (= b!772572 b!772586))

(assert (= b!772571 b!772572))

(assert (= b!772591 b!772571))

(assert (= (and b!772589 ((_ is LongMap!1202) (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))) b!772591))

(assert (= b!772583 b!772589))

(assert (= (and b!772568 ((_ is HashMap!1174) (cache!1561 cacheDown!666))) b!772583))

(assert (= start!71586 b!772568))

(declare-fun m!1040741 () Bool)

(assert (=> b!772598 m!1040741))

(declare-fun m!1040743 () Bool)

(assert (=> b!772598 m!1040743))

(declare-fun m!1040745 () Bool)

(assert (=> b!772572 m!1040745))

(declare-fun m!1040747 () Bool)

(assert (=> b!772572 m!1040747))

(declare-fun m!1040749 () Bool)

(assert (=> b!772596 m!1040749))

(declare-fun m!1040751 () Bool)

(assert (=> b!772599 m!1040751))

(declare-fun m!1040753 () Bool)

(assert (=> b!772569 m!1040753))

(declare-fun m!1040755 () Bool)

(assert (=> b!772582 m!1040755))

(declare-fun m!1040757 () Bool)

(assert (=> mapNonEmpty!5870 m!1040757))

(declare-fun m!1040759 () Bool)

(assert (=> b!772590 m!1040759))

(declare-fun m!1040761 () Bool)

(assert (=> b!772593 m!1040761))

(declare-fun m!1040763 () Bool)

(assert (=> b!772593 m!1040763))

(declare-fun m!1040765 () Bool)

(assert (=> b!772597 m!1040765))

(declare-fun m!1040767 () Bool)

(assert (=> b!772578 m!1040767))

(declare-fun m!1040769 () Bool)

(assert (=> b!772578 m!1040769))

(assert (=> b!772578 m!1040767))

(assert (=> b!772578 m!1040769))

(declare-fun m!1040771 () Bool)

(assert (=> b!772578 m!1040771))

(declare-fun m!1040773 () Bool)

(assert (=> b!772576 m!1040773))

(declare-fun m!1040775 () Bool)

(assert (=> start!71586 m!1040775))

(declare-fun m!1040777 () Bool)

(assert (=> start!71586 m!1040777))

(declare-fun m!1040779 () Bool)

(assert (=> start!71586 m!1040779))

(declare-fun m!1040781 () Bool)

(assert (=> start!71586 m!1040781))

(declare-fun m!1040783 () Bool)

(assert (=> start!71586 m!1040783))

(declare-fun m!1040785 () Bool)

(assert (=> b!772574 m!1040785))

(declare-fun m!1040787 () Bool)

(assert (=> b!772602 m!1040787))

(declare-fun m!1040789 () Bool)

(assert (=> mapNonEmpty!5871 m!1040789))

(declare-fun m!1040791 () Bool)

(assert (=> b!772581 m!1040791))

(declare-fun m!1040793 () Bool)

(assert (=> mapNonEmpty!5872 m!1040793))

(declare-fun m!1040795 () Bool)

(assert (=> b!772575 m!1040795))

(declare-fun m!1040797 () Bool)

(assert (=> b!772575 m!1040797))

(check-sat (not b!772585) (not mapNonEmpty!5872) (not b!772602) (not mapNonEmpty!5870) (not b!772569) (not b!772598) b_and!71985 (not b_next!24579) (not b_next!24573) (not b!772582) (not start!71586) b_and!71989 b_and!71983 (not b!772574) (not b!772596) (not b_next!24577) (not b_next!24565) b_and!71987 b_and!71995 (not b!772601) b_and!71993 (not b!772586) (not b!772587) (not b!772593) (not b_next!24575) (not mapNonEmpty!5871) (not b_next!24567) (not b!772597) b_and!71991 (not b!772572) (not b!772578) (not b!772581) (not b!772599) (not b!772575) (not b_next!24571) (not b_next!24569) (not b!772590) (not b!772576) b_and!71981)
(check-sat b_and!71993 b_and!71985 (not b_next!24579) (not b_next!24575) (not b_next!24573) (not b_next!24567) b_and!71991 b_and!71989 b_and!71981 b_and!71983 (not b_next!24577) (not b_next!24565) b_and!71987 b_and!71995 (not b_next!24571) (not b_next!24569))
(get-model)

(declare-fun d!251781 () Bool)

(declare-fun c!130311 () Bool)

(assert (=> d!251781 (= c!130311 ((_ is Node!2892) (c!130307 totalInput!472)))))

(declare-fun e!498079 () Bool)

(assert (=> d!251781 (= (inv!10968 (c!130307 totalInput!472)) e!498079)))

(declare-fun b!772609 () Bool)

(declare-fun inv!10970 (Conc!2892) Bool)

(assert (=> b!772609 (= e!498079 (inv!10970 (c!130307 totalInput!472)))))

(declare-fun b!772610 () Bool)

(declare-fun e!498080 () Bool)

(assert (=> b!772610 (= e!498079 e!498080)))

(declare-fun res!338454 () Bool)

(assert (=> b!772610 (= res!338454 (not ((_ is Leaf!4243) (c!130307 totalInput!472))))))

(assert (=> b!772610 (=> res!338454 e!498080)))

(declare-fun b!772611 () Bool)

(declare-fun inv!10971 (Conc!2892) Bool)

(assert (=> b!772611 (= e!498080 (inv!10971 (c!130307 totalInput!472)))))

(assert (= (and d!251781 c!130311) b!772609))

(assert (= (and d!251781 (not c!130311)) b!772610))

(assert (= (and b!772610 (not res!338454)) b!772611))

(declare-fun m!1040799 () Bool)

(assert (=> b!772609 m!1040799))

(declare-fun m!1040801 () Bool)

(assert (=> b!772611 m!1040801))

(assert (=> b!772596 d!251781))

(declare-fun d!251783 () Bool)

(declare-fun validCacheMapDown!105 (MutableMap!1174) Bool)

(assert (=> d!251783 (= (valid!973 cacheDown!666) (validCacheMapDown!105 (cache!1561 cacheDown!666)))))

(declare-fun bs!165995 () Bool)

(assert (= bs!165995 d!251783))

(declare-fun m!1040803 () Bool)

(assert (=> bs!165995 m!1040803))

(assert (=> b!772576 d!251783))

(declare-fun d!251785 () Bool)

(declare-fun validCacheMapUp!105 (MutableMap!1176) Bool)

(assert (=> d!251785 (= (valid!975 cacheUp!653) (validCacheMapUp!105 (cache!1563 cacheUp!653)))))

(declare-fun bs!165996 () Bool)

(assert (= bs!165996 d!251785))

(declare-fun m!1040805 () Bool)

(assert (=> bs!165996 m!1040805))

(assert (=> b!772602 d!251785))

(declare-fun d!251787 () Bool)

(assert (=> d!251787 (= (array_inv!1368 (_keys!1497 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) (bvsge (size!7019 (_keys!1497 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!772575 d!251787))

(declare-fun d!251789 () Bool)

(assert (=> d!251789 (= (array_inv!1370 (_values!1482 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) (bvsge (size!7020 (_values!1482 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!772575 d!251789))

(declare-fun d!251791 () Bool)

(declare-fun isBalanced!778 (Conc!2892) Bool)

(assert (=> d!251791 (= (inv!10964 (totalInput!2131 cacheFindLongestMatch!134)) (isBalanced!778 (c!130307 (totalInput!2131 cacheFindLongestMatch!134))))))

(declare-fun bs!165997 () Bool)

(assert (= bs!165997 d!251791))

(declare-fun m!1040807 () Bool)

(assert (=> bs!165997 m!1040807))

(assert (=> b!772597 d!251791))

(declare-fun d!251793 () Bool)

(assert (=> d!251793 (= (inv!10963 (tag!1905 (h!14035 rulesArg!343))) (= (mod (str.len (value!52495 (tag!1905 (h!14035 rulesArg!343)))) 2) 0))))

(assert (=> b!772598 d!251793))

(declare-fun d!251795 () Bool)

(declare-fun res!338457 () Bool)

(declare-fun e!498083 () Bool)

(assert (=> d!251795 (=> (not res!338457) (not e!498083))))

(declare-fun semiInverseModEq!615 (Int Int) Bool)

(assert (=> d!251795 (= res!338457 (semiInverseModEq!615 (toChars!2494 (transformation!1643 (h!14035 rulesArg!343))) (toValue!2635 (transformation!1643 (h!14035 rulesArg!343)))))))

(assert (=> d!251795 (= (inv!10969 (transformation!1643 (h!14035 rulesArg!343))) e!498083)))

(declare-fun b!772614 () Bool)

(declare-fun equivClasses!590 (Int Int) Bool)

(assert (=> b!772614 (= e!498083 (equivClasses!590 (toChars!2494 (transformation!1643 (h!14035 rulesArg!343))) (toValue!2635 (transformation!1643 (h!14035 rulesArg!343)))))))

(assert (= (and d!251795 res!338457) b!772614))

(declare-fun m!1040809 () Bool)

(assert (=> d!251795 m!1040809))

(declare-fun m!1040811 () Bool)

(assert (=> b!772614 m!1040811))

(assert (=> b!772598 d!251795))

(declare-fun d!251797 () Bool)

(declare-fun e!498086 () Bool)

(assert (=> d!251797 e!498086))

(declare-fun res!338460 () Bool)

(assert (=> d!251797 (=> res!338460 e!498086)))

(declare-fun lt!313947 () Bool)

(assert (=> d!251797 (= res!338460 (not lt!313947))))

(declare-fun drop!398 (List!8647 Int) List!8647)

(declare-fun size!7022 (List!8647) Int)

(assert (=> d!251797 (= lt!313947 (= (list!3443 input!1432) (drop!398 (list!3443 totalInput!472) (- (size!7022 (list!3443 totalInput!472)) (size!7022 (list!3443 input!1432))))))))

(assert (=> d!251797 (= (isSuffix!221 (list!3443 input!1432) (list!3443 totalInput!472)) lt!313947)))

(declare-fun b!772617 () Bool)

(assert (=> b!772617 (= e!498086 (>= (size!7022 (list!3443 totalInput!472)) (size!7022 (list!3443 input!1432))))))

(assert (= (and d!251797 (not res!338460)) b!772617))

(assert (=> d!251797 m!1040769))

(declare-fun m!1040813 () Bool)

(assert (=> d!251797 m!1040813))

(assert (=> d!251797 m!1040767))

(declare-fun m!1040815 () Bool)

(assert (=> d!251797 m!1040815))

(assert (=> d!251797 m!1040769))

(declare-fun m!1040817 () Bool)

(assert (=> d!251797 m!1040817))

(assert (=> b!772617 m!1040769))

(assert (=> b!772617 m!1040813))

(assert (=> b!772617 m!1040767))

(assert (=> b!772617 m!1040815))

(assert (=> b!772578 d!251797))

(declare-fun d!251799 () Bool)

(declare-fun list!3444 (Conc!2892) List!8647)

(assert (=> d!251799 (= (list!3443 input!1432) (list!3444 (c!130307 input!1432)))))

(declare-fun bs!165998 () Bool)

(assert (= bs!165998 d!251799))

(declare-fun m!1040819 () Bool)

(assert (=> bs!165998 m!1040819))

(assert (=> b!772578 d!251799))

(declare-fun d!251801 () Bool)

(assert (=> d!251801 (= (list!3443 totalInput!472) (list!3444 (c!130307 totalInput!472)))))

(declare-fun bs!165999 () Bool)

(assert (= bs!165999 d!251801))

(declare-fun m!1040821 () Bool)

(assert (=> bs!165999 m!1040821))

(assert (=> b!772578 d!251801))

(declare-fun d!251803 () Bool)

(declare-fun c!130312 () Bool)

(assert (=> d!251803 (= c!130312 ((_ is Node!2892) (c!130307 (totalInput!2131 cacheFindLongestMatch!134))))))

(declare-fun e!498087 () Bool)

(assert (=> d!251803 (= (inv!10968 (c!130307 (totalInput!2131 cacheFindLongestMatch!134))) e!498087)))

(declare-fun b!772618 () Bool)

(assert (=> b!772618 (= e!498087 (inv!10970 (c!130307 (totalInput!2131 cacheFindLongestMatch!134))))))

(declare-fun b!772619 () Bool)

(declare-fun e!498088 () Bool)

(assert (=> b!772619 (= e!498087 e!498088)))

(declare-fun res!338461 () Bool)

(assert (=> b!772619 (= res!338461 (not ((_ is Leaf!4243) (c!130307 (totalInput!2131 cacheFindLongestMatch!134)))))))

(assert (=> b!772619 (=> res!338461 e!498088)))

(declare-fun b!772620 () Bool)

(assert (=> b!772620 (= e!498088 (inv!10971 (c!130307 (totalInput!2131 cacheFindLongestMatch!134))))))

(assert (= (and d!251803 c!130312) b!772618))

(assert (= (and d!251803 (not c!130312)) b!772619))

(assert (= (and b!772619 (not res!338461)) b!772620))

(declare-fun m!1040823 () Bool)

(assert (=> b!772618 m!1040823))

(declare-fun m!1040825 () Bool)

(assert (=> b!772620 m!1040825))

(assert (=> b!772599 d!251803))

(declare-fun d!251805 () Bool)

(declare-fun lt!313950 () Int)

(assert (=> d!251805 (>= lt!313950 0)))

(declare-fun e!498091 () Int)

(assert (=> d!251805 (= lt!313950 e!498091)))

(declare-fun c!130315 () Bool)

(assert (=> d!251805 (= c!130315 ((_ is Nil!8634) rulesArg!343))))

(assert (=> d!251805 (= (size!7017 rulesArg!343) lt!313950)))

(declare-fun b!772625 () Bool)

(assert (=> b!772625 (= e!498091 0)))

(declare-fun b!772626 () Bool)

(assert (=> b!772626 (= e!498091 (+ 1 (size!7017 (t!91930 rulesArg!343))))))

(assert (= (and d!251805 c!130315) b!772625))

(assert (= (and d!251805 (not c!130315)) b!772626))

(declare-fun m!1040827 () Bool)

(assert (=> b!772626 m!1040827))

(assert (=> b!772569 d!251805))

(declare-fun d!251807 () Bool)

(declare-fun res!338464 () Bool)

(declare-fun e!498094 () Bool)

(assert (=> d!251807 (=> (not res!338464) (not e!498094))))

(assert (=> d!251807 (= res!338464 ((_ is HashMap!1174) (cache!1561 cacheDown!666)))))

(assert (=> d!251807 (= (inv!10967 cacheDown!666) e!498094)))

(declare-fun b!772629 () Bool)

(assert (=> b!772629 (= e!498094 (validCacheMapDown!105 (cache!1561 cacheDown!666)))))

(assert (= (and d!251807 res!338464) b!772629))

(assert (=> b!772629 m!1040803))

(assert (=> start!71586 d!251807))

(declare-fun d!251809 () Bool)

(assert (=> d!251809 (= (inv!10964 totalInput!472) (isBalanced!778 (c!130307 totalInput!472)))))

(declare-fun bs!166000 () Bool)

(assert (= bs!166000 d!251809))

(declare-fun m!1040829 () Bool)

(assert (=> bs!166000 m!1040829))

(assert (=> start!71586 d!251809))

(declare-fun d!251811 () Bool)

(assert (=> d!251811 (= (inv!10964 input!1432) (isBalanced!778 (c!130307 input!1432)))))

(declare-fun bs!166001 () Bool)

(assert (= bs!166001 d!251811))

(declare-fun m!1040831 () Bool)

(assert (=> bs!166001 m!1040831))

(assert (=> start!71586 d!251811))

(declare-fun d!251813 () Bool)

(declare-fun res!338467 () Bool)

(declare-fun e!498097 () Bool)

(assert (=> d!251813 (=> (not res!338467) (not e!498097))))

(assert (=> d!251813 (= res!338467 ((_ is HashMap!1176) (cache!1563 cacheUp!653)))))

(assert (=> d!251813 (= (inv!10966 cacheUp!653) e!498097)))

(declare-fun b!772632 () Bool)

(assert (=> b!772632 (= e!498097 (validCacheMapUp!105 (cache!1563 cacheUp!653)))))

(assert (= (and d!251813 res!338467) b!772632))

(assert (=> b!772632 m!1040805))

(assert (=> start!71586 d!251813))

(declare-fun d!251815 () Bool)

(declare-fun res!338470 () Bool)

(declare-fun e!498100 () Bool)

(assert (=> d!251815 (=> (not res!338470) (not e!498100))))

(assert (=> d!251815 (= res!338470 ((_ is HashMap!1175) (cache!1562 cacheFindLongestMatch!134)))))

(assert (=> d!251815 (= (inv!10965 cacheFindLongestMatch!134) e!498100)))

(declare-fun b!772635 () Bool)

(declare-fun validCacheMapFindLongestMatch!51 (MutableMap!1175 BalanceConc!5796) Bool)

(assert (=> b!772635 (= e!498100 (validCacheMapFindLongestMatch!51 (cache!1562 cacheFindLongestMatch!134) (totalInput!2131 cacheFindLongestMatch!134)))))

(assert (= (and d!251815 res!338470) b!772635))

(declare-fun m!1040833 () Bool)

(assert (=> b!772635 m!1040833))

(assert (=> start!71586 d!251815))

(declare-fun d!251817 () Bool)

(declare-fun c!130316 () Bool)

(assert (=> d!251817 (= c!130316 ((_ is Node!2892) (c!130307 input!1432)))))

(declare-fun e!498101 () Bool)

(assert (=> d!251817 (= (inv!10968 (c!130307 input!1432)) e!498101)))

(declare-fun b!772636 () Bool)

(assert (=> b!772636 (= e!498101 (inv!10970 (c!130307 input!1432)))))

(declare-fun b!772637 () Bool)

(declare-fun e!498102 () Bool)

(assert (=> b!772637 (= e!498101 e!498102)))

(declare-fun res!338471 () Bool)

(assert (=> b!772637 (= res!338471 (not ((_ is Leaf!4243) (c!130307 input!1432))))))

(assert (=> b!772637 (=> res!338471 e!498102)))

(declare-fun b!772638 () Bool)

(assert (=> b!772638 (= e!498102 (inv!10971 (c!130307 input!1432)))))

(assert (= (and d!251817 c!130316) b!772636))

(assert (= (and d!251817 (not c!130316)) b!772637))

(assert (= (and b!772637 (not res!338471)) b!772638))

(declare-fun m!1040835 () Bool)

(assert (=> b!772636 m!1040835))

(declare-fun m!1040837 () Bool)

(assert (=> b!772638 m!1040837))

(assert (=> b!772581 d!251817))

(declare-fun d!251819 () Bool)

(assert (=> d!251819 (= (valid!974 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!51 (cache!1562 cacheFindLongestMatch!134) (totalInput!2131 cacheFindLongestMatch!134)))))

(declare-fun bs!166002 () Bool)

(assert (= bs!166002 d!251819))

(assert (=> bs!166002 m!1040833))

(assert (=> b!772590 d!251819))

(declare-fun d!251821 () Bool)

(assert (=> d!251821 (= (array_inv!1368 (_keys!1496 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) (bvsge (size!7019 (_keys!1496 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!772572 d!251821))

(declare-fun d!251823 () Bool)

(assert (=> d!251823 (= (array_inv!1369 (_values!1481 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) (bvsge (size!7018 (_values!1481 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!772572 d!251823))

(declare-fun d!251825 () Bool)

(assert (=> d!251825 true))

(declare-fun lt!313953 () Bool)

(declare-fun lambda!23301 () Int)

(declare-fun forall!2048 (List!8648 Int) Bool)

(assert (=> d!251825 (= lt!313953 (forall!2048 rulesArg!343 lambda!23301))))

(declare-fun e!498107 () Bool)

(assert (=> d!251825 (= lt!313953 e!498107)))

(declare-fun res!338476 () Bool)

(assert (=> d!251825 (=> res!338476 e!498107)))

(assert (=> d!251825 (= res!338476 (not ((_ is Cons!8634) rulesArg!343)))))

(assert (=> d!251825 (= (rulesValidInductive!587 thiss!15653 rulesArg!343) lt!313953)))

(declare-fun b!772643 () Bool)

(declare-fun e!498108 () Bool)

(assert (=> b!772643 (= e!498107 e!498108)))

(declare-fun res!338477 () Bool)

(assert (=> b!772643 (=> (not res!338477) (not e!498108))))

(declare-fun ruleValid!506 (LexerInterface!1445 Rule!3086) Bool)

(assert (=> b!772643 (= res!338477 (ruleValid!506 thiss!15653 (h!14035 rulesArg!343)))))

(declare-fun b!772644 () Bool)

(assert (=> b!772644 (= e!498108 (rulesValidInductive!587 thiss!15653 (t!91930 rulesArg!343)))))

(assert (= (and d!251825 (not res!338476)) b!772643))

(assert (= (and b!772643 res!338477) b!772644))

(declare-fun m!1040839 () Bool)

(assert (=> d!251825 m!1040839))

(declare-fun m!1040841 () Bool)

(assert (=> b!772643 m!1040841))

(declare-fun m!1040843 () Bool)

(assert (=> b!772644 m!1040843))

(assert (=> b!772582 d!251825))

(declare-fun d!251827 () Bool)

(assert (=> d!251827 (= (array_inv!1368 (_keys!1498 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) (bvsge (size!7019 (_keys!1498 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!772593 d!251827))

(declare-fun d!251829 () Bool)

(assert (=> d!251829 (= (array_inv!1371 (_values!1483 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) (bvsge (size!7021 (_values!1483 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!772593 d!251829))

(declare-fun d!251831 () Bool)

(assert (=> d!251831 (= (isEmpty!5225 rulesArg!343) ((_ is Nil!8634) rulesArg!343))))

(assert (=> b!772574 d!251831))

(declare-fun tp!253644 () Bool)

(declare-fun b!772655 () Bool)

(declare-fun tp!253645 () Bool)

(declare-fun e!498113 () Bool)

(assert (=> b!772655 (= e!498113 (and (inv!10968 (left!6408 (c!130307 totalInput!472))) tp!253644 (inv!10968 (right!6738 (c!130307 totalInput!472))) tp!253645))))

(declare-fun b!772657 () Bool)

(declare-fun e!498114 () Bool)

(declare-fun tp!253643 () Bool)

(assert (=> b!772657 (= e!498114 tp!253643)))

(declare-fun b!772656 () Bool)

(declare-fun inv!10972 (IArray!5785) Bool)

(assert (=> b!772656 (= e!498113 (and (inv!10972 (xs!5579 (c!130307 totalInput!472))) e!498114))))

(assert (=> b!772596 (= tp!253636 (and (inv!10968 (c!130307 totalInput!472)) e!498113))))

(assert (= (and b!772596 ((_ is Node!2892) (c!130307 totalInput!472))) b!772655))

(assert (= b!772656 b!772657))

(assert (= (and b!772596 ((_ is Leaf!4243) (c!130307 totalInput!472))) b!772656))

(declare-fun m!1040845 () Bool)

(assert (=> b!772655 m!1040845))

(declare-fun m!1040847 () Bool)

(assert (=> b!772655 m!1040847))

(declare-fun m!1040849 () Bool)

(assert (=> b!772656 m!1040849))

(assert (=> b!772596 m!1040749))

(declare-fun setElem!7119 () Context!794)

(declare-fun setRes!7119 () Bool)

(declare-fun e!498120 () Bool)

(declare-fun setNonEmpty!7119 () Bool)

(declare-fun tp!253654 () Bool)

(declare-fun inv!10973 (Context!794) Bool)

(assert (=> setNonEmpty!7119 (= setRes!7119 (and tp!253654 (inv!10973 setElem!7119) e!498120))))

(declare-fun setRest!7119 () (InoxSet Context!794))

(assert (=> setNonEmpty!7119 (= (_1!5837 (_1!5838 (h!14038 (zeroValue!1460 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7119 true) setRest!7119))))

(declare-fun b!772665 () Bool)

(declare-fun tp!253652 () Bool)

(assert (=> b!772665 (= e!498120 tp!253652)))

(declare-fun setIsEmpty!7119 () Bool)

(assert (=> setIsEmpty!7119 setRes!7119))

(declare-fun b!772664 () Bool)

(declare-fun e!498119 () Bool)

(declare-fun tp!253653 () Bool)

(assert (=> b!772664 (= e!498119 (and setRes!7119 tp!253653))))

(declare-fun condSetEmpty!7119 () Bool)

(assert (=> b!772664 (= condSetEmpty!7119 (= (_1!5837 (_1!5838 (h!14038 (zeroValue!1460 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))))) ((as const (Array Context!794 Bool)) false)))))

(assert (=> b!772575 (= tp!253635 e!498119)))

(assert (= (and b!772664 condSetEmpty!7119) setIsEmpty!7119))

(assert (= (and b!772664 (not condSetEmpty!7119)) setNonEmpty!7119))

(assert (= setNonEmpty!7119 b!772665))

(assert (= (and b!772575 ((_ is Cons!8637) (zeroValue!1460 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134)))))))) b!772664))

(declare-fun m!1040851 () Bool)

(assert (=> setNonEmpty!7119 m!1040851))

(declare-fun tp!253657 () Bool)

(declare-fun setRes!7120 () Bool)

(declare-fun e!498122 () Bool)

(declare-fun setElem!7120 () Context!794)

(declare-fun setNonEmpty!7120 () Bool)

(assert (=> setNonEmpty!7120 (= setRes!7120 (and tp!253657 (inv!10973 setElem!7120) e!498122))))

(declare-fun setRest!7120 () (InoxSet Context!794))

(assert (=> setNonEmpty!7120 (= (_1!5837 (_1!5838 (h!14038 (minValue!1460 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7120 true) setRest!7120))))

(declare-fun b!772667 () Bool)

(declare-fun tp!253655 () Bool)

(assert (=> b!772667 (= e!498122 tp!253655)))

(declare-fun setIsEmpty!7120 () Bool)

(assert (=> setIsEmpty!7120 setRes!7120))

(declare-fun b!772666 () Bool)

(declare-fun e!498121 () Bool)

(declare-fun tp!253656 () Bool)

(assert (=> b!772666 (= e!498121 (and setRes!7120 tp!253656))))

(declare-fun condSetEmpty!7120 () Bool)

(assert (=> b!772666 (= condSetEmpty!7120 (= (_1!5837 (_1!5838 (h!14038 (minValue!1460 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134))))))))) ((as const (Array Context!794 Bool)) false)))))

(assert (=> b!772575 (= tp!253617 e!498121)))

(assert (= (and b!772666 condSetEmpty!7120) setIsEmpty!7120))

(assert (= (and b!772666 (not condSetEmpty!7120)) setNonEmpty!7120))

(assert (= setNonEmpty!7120 b!772667))

(assert (= (and b!772575 ((_ is Cons!8637) (minValue!1460 (v!18764 (underlying!2589 (v!18765 (underlying!2590 (cache!1562 cacheFindLongestMatch!134)))))))) b!772666))

(declare-fun m!1040853 () Bool)

(assert (=> setNonEmpty!7120 m!1040853))

(declare-fun b!772682 () Bool)

(declare-fun e!498138 () Bool)

(declare-fun tp!253676 () Bool)

(assert (=> b!772682 (= e!498138 tp!253676)))

(declare-fun b!772683 () Bool)

(declare-fun mapValue!5875 () List!8652)

(declare-fun tp_is_empty!3735 () Bool)

(declare-fun setRes!7126 () Bool)

(declare-fun e!498136 () Bool)

(declare-fun e!498140 () Bool)

(declare-fun tp!253679 () Bool)

(assert (=> b!772683 (= e!498140 (and (inv!10973 (_1!5839 (_1!5840 (h!14039 mapValue!5875)))) e!498136 tp_is_empty!3735 setRes!7126 tp!253679))))

(declare-fun condSetEmpty!7125 () Bool)

(assert (=> b!772683 (= condSetEmpty!7125 (= (_2!5840 (h!14039 mapValue!5875)) ((as const (Array Context!794 Bool)) false)))))

(declare-fun e!498139 () Bool)

(declare-fun tp!253682 () Bool)

(declare-fun setNonEmpty!7125 () Bool)

(declare-fun setRes!7125 () Bool)

(declare-fun setElem!7125 () Context!794)

(assert (=> setNonEmpty!7125 (= setRes!7125 (and tp!253682 (inv!10973 setElem!7125) e!498139))))

(declare-fun mapDefault!5875 () List!8652)

(declare-fun setRest!7126 () (InoxSet Context!794))

(assert (=> setNonEmpty!7125 (= (_2!5840 (h!14039 mapDefault!5875)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7125 true) setRest!7126))))

(declare-fun b!772684 () Bool)

(declare-fun tp!253681 () Bool)

(assert (=> b!772684 (= e!498136 tp!253681)))

(declare-fun setIsEmpty!7125 () Bool)

(assert (=> setIsEmpty!7125 setRes!7125))

(declare-fun mapIsEmpty!5875 () Bool)

(declare-fun mapRes!5875 () Bool)

(assert (=> mapIsEmpty!5875 mapRes!5875))

(declare-fun setIsEmpty!7126 () Bool)

(assert (=> setIsEmpty!7126 setRes!7126))

(declare-fun b!772685 () Bool)

(declare-fun e!498137 () Bool)

(declare-fun tp!253684 () Bool)

(assert (=> b!772685 (= e!498137 tp!253684)))

(declare-fun condMapEmpty!5875 () Bool)

(assert (=> mapNonEmpty!5870 (= condMapEmpty!5875 (= mapRest!5871 ((as const (Array (_ BitVec 32) List!8652)) mapDefault!5875)))))

(declare-fun e!498135 () Bool)

(assert (=> mapNonEmpty!5870 (= tp!253623 (and e!498135 mapRes!5875))))

(declare-fun mapNonEmpty!5875 () Bool)

(declare-fun tp!253680 () Bool)

(assert (=> mapNonEmpty!5875 (= mapRes!5875 (and tp!253680 e!498140))))

(declare-fun mapKey!5875 () (_ BitVec 32))

(declare-fun mapRest!5875 () (Array (_ BitVec 32) List!8652))

(assert (=> mapNonEmpty!5875 (= mapRest!5871 (store mapRest!5875 mapKey!5875 mapValue!5875))))

(declare-fun setElem!7126 () Context!794)

(declare-fun tp!253683 () Bool)

(declare-fun setNonEmpty!7126 () Bool)

(assert (=> setNonEmpty!7126 (= setRes!7126 (and tp!253683 (inv!10973 setElem!7126) e!498138))))

(declare-fun setRest!7125 () (InoxSet Context!794))

(assert (=> setNonEmpty!7126 (= (_2!5840 (h!14039 mapValue!5875)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7126 true) setRest!7125))))

(declare-fun tp!253677 () Bool)

(declare-fun b!772686 () Bool)

(assert (=> b!772686 (= e!498135 (and (inv!10973 (_1!5839 (_1!5840 (h!14039 mapDefault!5875)))) e!498137 tp_is_empty!3735 setRes!7125 tp!253677))))

(declare-fun condSetEmpty!7126 () Bool)

(assert (=> b!772686 (= condSetEmpty!7126 (= (_2!5840 (h!14039 mapDefault!5875)) ((as const (Array Context!794 Bool)) false)))))

(declare-fun b!772687 () Bool)

(declare-fun tp!253678 () Bool)

(assert (=> b!772687 (= e!498139 tp!253678)))

(assert (= (and mapNonEmpty!5870 condMapEmpty!5875) mapIsEmpty!5875))

(assert (= (and mapNonEmpty!5870 (not condMapEmpty!5875)) mapNonEmpty!5875))

(assert (= b!772683 b!772684))

(assert (= (and b!772683 condSetEmpty!7125) setIsEmpty!7126))

(assert (= (and b!772683 (not condSetEmpty!7125)) setNonEmpty!7126))

(assert (= setNonEmpty!7126 b!772682))

(assert (= (and mapNonEmpty!5875 ((_ is Cons!8638) mapValue!5875)) b!772683))

(assert (= b!772686 b!772685))

(assert (= (and b!772686 condSetEmpty!7126) setIsEmpty!7125))

(assert (= (and b!772686 (not condSetEmpty!7126)) setNonEmpty!7125))

(assert (= setNonEmpty!7125 b!772687))

(assert (= (and mapNonEmpty!5870 ((_ is Cons!8638) mapDefault!5875)) b!772686))

(declare-fun m!1040855 () Bool)

(assert (=> setNonEmpty!7125 m!1040855))

(declare-fun m!1040857 () Bool)

(assert (=> b!772683 m!1040857))

(declare-fun m!1040859 () Bool)

(assert (=> b!772686 m!1040859))

(declare-fun m!1040861 () Bool)

(assert (=> setNonEmpty!7126 m!1040861))

(declare-fun m!1040863 () Bool)

(assert (=> mapNonEmpty!5875 m!1040863))

(declare-fun setIsEmpty!7129 () Bool)

(declare-fun setRes!7129 () Bool)

(assert (=> setIsEmpty!7129 setRes!7129))

(declare-fun b!772696 () Bool)

(declare-fun e!498147 () Bool)

(declare-fun tp!253696 () Bool)

(assert (=> b!772696 (= e!498147 tp!253696)))

(declare-fun e!498148 () Bool)

(assert (=> mapNonEmpty!5870 (= tp!253609 e!498148)))

(declare-fun b!772697 () Bool)

(declare-fun e!498149 () Bool)

(declare-fun tp!253695 () Bool)

(assert (=> b!772697 (= e!498149 tp!253695)))

(declare-fun setNonEmpty!7129 () Bool)

(declare-fun tp!253693 () Bool)

(declare-fun setElem!7129 () Context!794)

(assert (=> setNonEmpty!7129 (= setRes!7129 (and tp!253693 (inv!10973 setElem!7129) e!498149))))

(declare-fun setRest!7129 () (InoxSet Context!794))

(assert (=> setNonEmpty!7129 (= (_2!5840 (h!14039 mapValue!5872)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7129 true) setRest!7129))))

(declare-fun tp!253694 () Bool)

(declare-fun b!772698 () Bool)

(assert (=> b!772698 (= e!498148 (and (inv!10973 (_1!5839 (_1!5840 (h!14039 mapValue!5872)))) e!498147 tp_is_empty!3735 setRes!7129 tp!253694))))

(declare-fun condSetEmpty!7129 () Bool)

(assert (=> b!772698 (= condSetEmpty!7129 (= (_2!5840 (h!14039 mapValue!5872)) ((as const (Array Context!794 Bool)) false)))))

(assert (= b!772698 b!772696))

(assert (= (and b!772698 condSetEmpty!7129) setIsEmpty!7129))

(assert (= (and b!772698 (not condSetEmpty!7129)) setNonEmpty!7129))

(assert (= setNonEmpty!7129 b!772697))

(assert (= (and mapNonEmpty!5870 ((_ is Cons!8638) mapValue!5872)) b!772698))

(declare-fun m!1040865 () Bool)

(assert (=> setNonEmpty!7129 m!1040865))

(declare-fun m!1040867 () Bool)

(assert (=> b!772698 m!1040867))

(declare-fun setIsEmpty!7130 () Bool)

(declare-fun setRes!7130 () Bool)

(assert (=> setIsEmpty!7130 setRes!7130))

(declare-fun b!772699 () Bool)

(declare-fun e!498150 () Bool)

(declare-fun tp!253700 () Bool)

(assert (=> b!772699 (= e!498150 tp!253700)))

(declare-fun e!498151 () Bool)

(assert (=> b!772587 (= tp!253618 e!498151)))

(declare-fun b!772700 () Bool)

(declare-fun e!498152 () Bool)

(declare-fun tp!253699 () Bool)

(assert (=> b!772700 (= e!498152 tp!253699)))

(declare-fun setNonEmpty!7130 () Bool)

(declare-fun setElem!7130 () Context!794)

(declare-fun tp!253697 () Bool)

(assert (=> setNonEmpty!7130 (= setRes!7130 (and tp!253697 (inv!10973 setElem!7130) e!498152))))

(declare-fun setRest!7130 () (InoxSet Context!794))

(assert (=> setNonEmpty!7130 (= (_2!5840 (h!14039 mapDefault!5872)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7130 true) setRest!7130))))

(declare-fun b!772701 () Bool)

(declare-fun tp!253698 () Bool)

(assert (=> b!772701 (= e!498151 (and (inv!10973 (_1!5839 (_1!5840 (h!14039 mapDefault!5872)))) e!498150 tp_is_empty!3735 setRes!7130 tp!253698))))

(declare-fun condSetEmpty!7130 () Bool)

(assert (=> b!772701 (= condSetEmpty!7130 (= (_2!5840 (h!14039 mapDefault!5872)) ((as const (Array Context!794 Bool)) false)))))

(assert (= b!772701 b!772699))

(assert (= (and b!772701 condSetEmpty!7130) setIsEmpty!7130))

(assert (= (and b!772701 (not condSetEmpty!7130)) setNonEmpty!7130))

(assert (= setNonEmpty!7130 b!772700))

(assert (= (and b!772587 ((_ is Cons!8638) mapDefault!5872)) b!772701))

(declare-fun m!1040869 () Bool)

(assert (=> setNonEmpty!7130 m!1040869))

(declare-fun m!1040871 () Bool)

(assert (=> b!772701 m!1040871))

(declare-fun b!772710 () Bool)

(declare-fun e!498159 () Bool)

(declare-fun tp!253713 () Bool)

(assert (=> b!772710 (= e!498159 tp!253713)))

(declare-fun setElem!7133 () Context!794)

(declare-fun e!498161 () Bool)

(declare-fun setRes!7133 () Bool)

(declare-fun setNonEmpty!7133 () Bool)

(declare-fun tp!253711 () Bool)

(assert (=> setNonEmpty!7133 (= setRes!7133 (and tp!253711 (inv!10973 setElem!7133) e!498161))))

(declare-fun setRest!7133 () (InoxSet Context!794))

(assert (=> setNonEmpty!7133 (= (_2!5836 (h!14037 mapDefault!5871)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7133 true) setRest!7133))))

(declare-fun e!498160 () Bool)

(assert (=> b!772586 (= tp!253612 e!498160)))

(declare-fun b!772711 () Bool)

(declare-fun tp!253714 () Bool)

(assert (=> b!772711 (= e!498161 tp!253714)))

(declare-fun tp!253712 () Bool)

(declare-fun tp!253715 () Bool)

(declare-fun b!772712 () Bool)

(assert (=> b!772712 (= e!498160 (and tp!253715 (inv!10973 (_2!5835 (_1!5836 (h!14037 mapDefault!5871)))) e!498159 tp_is_empty!3735 setRes!7133 tp!253712))))

(declare-fun condSetEmpty!7133 () Bool)

(assert (=> b!772712 (= condSetEmpty!7133 (= (_2!5836 (h!14037 mapDefault!5871)) ((as const (Array Context!794 Bool)) false)))))

(declare-fun setIsEmpty!7133 () Bool)

(assert (=> setIsEmpty!7133 setRes!7133))

(assert (= b!772712 b!772710))

(assert (= (and b!772712 condSetEmpty!7133) setIsEmpty!7133))

(assert (= (and b!772712 (not condSetEmpty!7133)) setNonEmpty!7133))

(assert (= setNonEmpty!7133 b!772711))

(assert (= (and b!772586 ((_ is Cons!8636) mapDefault!5871)) b!772712))

(declare-fun m!1040873 () Bool)

(assert (=> setNonEmpty!7133 m!1040873))

(declare-fun m!1040875 () Bool)

(assert (=> b!772712 m!1040875))

(declare-fun b!772723 () Bool)

(declare-fun e!498164 () Bool)

(assert (=> b!772723 (= e!498164 tp_is_empty!3735)))

(declare-fun b!772725 () Bool)

(declare-fun tp!253727 () Bool)

(assert (=> b!772725 (= e!498164 tp!253727)))

(assert (=> b!772598 (= tp!253633 e!498164)))

(declare-fun b!772724 () Bool)

(declare-fun tp!253729 () Bool)

(declare-fun tp!253728 () Bool)

(assert (=> b!772724 (= e!498164 (and tp!253729 tp!253728))))

(declare-fun b!772726 () Bool)

(declare-fun tp!253730 () Bool)

(declare-fun tp!253726 () Bool)

(assert (=> b!772726 (= e!498164 (and tp!253730 tp!253726))))

(assert (= (and b!772598 ((_ is ElementMatch!1995) (regex!1643 (h!14035 rulesArg!343)))) b!772723))

(assert (= (and b!772598 ((_ is Concat!3683) (regex!1643 (h!14035 rulesArg!343)))) b!772724))

(assert (= (and b!772598 ((_ is Star!1995) (regex!1643 (h!14035 rulesArg!343)))) b!772725))

(assert (= (and b!772598 ((_ is Union!1995) (regex!1643 (h!14035 rulesArg!343)))) b!772726))

(declare-fun b!772741 () Bool)

(declare-fun e!498180 () Bool)

(declare-fun tp!253762 () Bool)

(assert (=> b!772741 (= e!498180 tp!253762)))

(declare-fun setIsEmpty!7138 () Bool)

(declare-fun setRes!7138 () Bool)

(assert (=> setIsEmpty!7138 setRes!7138))

(declare-fun mapNonEmpty!5878 () Bool)

(declare-fun mapRes!5878 () Bool)

(declare-fun tp!253761 () Bool)

(declare-fun e!498182 () Bool)

(assert (=> mapNonEmpty!5878 (= mapRes!5878 (and tp!253761 e!498182))))

(declare-fun mapValue!5878 () List!8650)

(declare-fun mapKey!5878 () (_ BitVec 32))

(declare-fun mapRest!5878 () (Array (_ BitVec 32) List!8650))

(assert (=> mapNonEmpty!5878 (= mapRest!5872 (store mapRest!5878 mapKey!5878 mapValue!5878))))

(declare-fun condMapEmpty!5878 () Bool)

(declare-fun mapDefault!5878 () List!8650)

(assert (=> mapNonEmpty!5871 (= condMapEmpty!5878 (= mapRest!5872 ((as const (Array (_ BitVec 32) List!8650)) mapDefault!5878)))))

(declare-fun e!498177 () Bool)

(assert (=> mapNonEmpty!5871 (= tp!253630 (and e!498177 mapRes!5878))))

(declare-fun mapIsEmpty!5878 () Bool)

(assert (=> mapIsEmpty!5878 mapRes!5878))

(declare-fun tp!253755 () Bool)

(declare-fun b!772742 () Bool)

(declare-fun tp!253757 () Bool)

(declare-fun e!498181 () Bool)

(assert (=> b!772742 (= e!498177 (and tp!253757 (inv!10973 (_2!5835 (_1!5836 (h!14037 mapDefault!5878)))) e!498181 tp_is_empty!3735 setRes!7138 tp!253755))))

(declare-fun condSetEmpty!7138 () Bool)

(assert (=> b!772742 (= condSetEmpty!7138 (= (_2!5836 (h!14037 mapDefault!5878)) ((as const (Array Context!794 Bool)) false)))))

(declare-fun b!772743 () Bool)

(declare-fun e!498179 () Bool)

(declare-fun tp!253756 () Bool)

(assert (=> b!772743 (= e!498179 tp!253756)))

(declare-fun b!772744 () Bool)

(declare-fun tp!253754 () Bool)

(assert (=> b!772744 (= e!498181 tp!253754)))

(declare-fun setIsEmpty!7139 () Bool)

(declare-fun setRes!7139 () Bool)

(assert (=> setIsEmpty!7139 setRes!7139))

(declare-fun tp!253759 () Bool)

(declare-fun setElem!7139 () Context!794)

(declare-fun setNonEmpty!7138 () Bool)

(assert (=> setNonEmpty!7138 (= setRes!7139 (and tp!253759 (inv!10973 setElem!7139) e!498180))))

(declare-fun setRest!7138 () (InoxSet Context!794))

(assert (=> setNonEmpty!7138 (= (_2!5836 (h!14037 mapValue!5878)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7139 true) setRest!7138))))

(declare-fun tp!253758 () Bool)

(declare-fun setNonEmpty!7139 () Bool)

(declare-fun e!498178 () Bool)

(declare-fun setElem!7138 () Context!794)

(assert (=> setNonEmpty!7139 (= setRes!7138 (and tp!253758 (inv!10973 setElem!7138) e!498178))))

(declare-fun setRest!7139 () (InoxSet Context!794))

(assert (=> setNonEmpty!7139 (= (_2!5836 (h!14037 mapDefault!5878)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7138 true) setRest!7139))))

(declare-fun b!772745 () Bool)

(declare-fun tp!253763 () Bool)

(declare-fun tp!253760 () Bool)

(assert (=> b!772745 (= e!498182 (and tp!253763 (inv!10973 (_2!5835 (_1!5836 (h!14037 mapValue!5878)))) e!498179 tp_is_empty!3735 setRes!7139 tp!253760))))

(declare-fun condSetEmpty!7139 () Bool)

(assert (=> b!772745 (= condSetEmpty!7139 (= (_2!5836 (h!14037 mapValue!5878)) ((as const (Array Context!794 Bool)) false)))))

(declare-fun b!772746 () Bool)

(declare-fun tp!253753 () Bool)

(assert (=> b!772746 (= e!498178 tp!253753)))

(assert (= (and mapNonEmpty!5871 condMapEmpty!5878) mapIsEmpty!5878))

(assert (= (and mapNonEmpty!5871 (not condMapEmpty!5878)) mapNonEmpty!5878))

(assert (= b!772745 b!772743))

(assert (= (and b!772745 condSetEmpty!7139) setIsEmpty!7139))

(assert (= (and b!772745 (not condSetEmpty!7139)) setNonEmpty!7138))

(assert (= setNonEmpty!7138 b!772741))

(assert (= (and mapNonEmpty!5878 ((_ is Cons!8636) mapValue!5878)) b!772745))

(assert (= b!772742 b!772744))

(assert (= (and b!772742 condSetEmpty!7138) setIsEmpty!7138))

(assert (= (and b!772742 (not condSetEmpty!7138)) setNonEmpty!7139))

(assert (= setNonEmpty!7139 b!772746))

(assert (= (and mapNonEmpty!5871 ((_ is Cons!8636) mapDefault!5878)) b!772742))

(declare-fun m!1040877 () Bool)

(assert (=> setNonEmpty!7139 m!1040877))

(declare-fun m!1040879 () Bool)

(assert (=> b!772742 m!1040879))

(declare-fun m!1040881 () Bool)

(assert (=> mapNonEmpty!5878 m!1040881))

(declare-fun m!1040883 () Bool)

(assert (=> setNonEmpty!7138 m!1040883))

(declare-fun m!1040885 () Bool)

(assert (=> b!772745 m!1040885))

(declare-fun b!772747 () Bool)

(declare-fun e!498183 () Bool)

(declare-fun tp!253766 () Bool)

(assert (=> b!772747 (= e!498183 tp!253766)))

(declare-fun e!498185 () Bool)

(declare-fun setRes!7140 () Bool)

(declare-fun tp!253764 () Bool)

(declare-fun setElem!7140 () Context!794)

(declare-fun setNonEmpty!7140 () Bool)

(assert (=> setNonEmpty!7140 (= setRes!7140 (and tp!253764 (inv!10973 setElem!7140) e!498185))))

(declare-fun setRest!7140 () (InoxSet Context!794))

(assert (=> setNonEmpty!7140 (= (_2!5836 (h!14037 mapValue!5870)) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7140 true) setRest!7140))))

(declare-fun e!498184 () Bool)

(assert (=> mapNonEmpty!5871 (= tp!253627 e!498184)))

(declare-fun b!772748 () Bool)

(declare-fun tp!253767 () Bool)

(assert (=> b!772748 (= e!498185 tp!253767)))

(declare-fun b!772749 () Bool)

(declare-fun tp!253765 () Bool)

(declare-fun tp!253768 () Bool)

(assert (=> b!772749 (= e!498184 (and tp!253768 (inv!10973 (_2!5835 (_1!5836 (h!14037 mapValue!5870)))) e!498183 tp_is_empty!3735 setRes!7140 tp!253765))))

(declare-fun condSetEmpty!7140 () Bool)

(assert (=> b!772749 (= condSetEmpty!7140 (= (_2!5836 (h!14037 mapValue!5870)) ((as const (Array Context!794 Bool)) false)))))

(declare-fun setIsEmpty!7140 () Bool)

(assert (=> setIsEmpty!7140 setRes!7140))

(assert (= b!772749 b!772747))

(assert (= (and b!772749 condSetEmpty!7140) setIsEmpty!7140))

(assert (= (and b!772749 (not condSetEmpty!7140)) setNonEmpty!7140))

(assert (= setNonEmpty!7140 b!772748))

(assert (= (and mapNonEmpty!5871 ((_ is Cons!8636) mapValue!5870)) b!772749))

(declare-fun m!1040887 () Bool)

(assert (=> setNonEmpty!7140 m!1040887))

(declare-fun m!1040889 () Bool)

(assert (=> b!772749 m!1040889))

(declare-fun b!772750 () Bool)

(declare-fun tp!253771 () Bool)

(declare-fun tp!253770 () Bool)

(declare-fun e!498186 () Bool)

(assert (=> b!772750 (= e!498186 (and (inv!10968 (left!6408 (c!130307 (totalInput!2131 cacheFindLongestMatch!134)))) tp!253770 (inv!10968 (right!6738 (c!130307 (totalInput!2131 cacheFindLongestMatch!134)))) tp!253771))))

(declare-fun b!772752 () Bool)

(declare-fun e!498187 () Bool)

(declare-fun tp!253769 () Bool)

(assert (=> b!772752 (= e!498187 tp!253769)))

(declare-fun b!772751 () Bool)

(assert (=> b!772751 (= e!498186 (and (inv!10972 (xs!5579 (c!130307 (totalInput!2131 cacheFindLongestMatch!134)))) e!498187))))

(assert (=> b!772599 (= tp!253611 (and (inv!10968 (c!130307 (totalInput!2131 cacheFindLongestMatch!134))) e!498186))))

(assert (= (and b!772599 ((_ is Node!2892) (c!130307 (totalInput!2131 cacheFindLongestMatch!134)))) b!772750))

(assert (= b!772751 b!772752))

(assert (= (and b!772599 ((_ is Leaf!4243) (c!130307 (totalInput!2131 cacheFindLongestMatch!134)))) b!772751))

(declare-fun m!1040891 () Bool)

(assert (=> b!772750 m!1040891))

(declare-fun m!1040893 () Bool)

(assert (=> b!772750 m!1040893))

(declare-fun m!1040895 () Bool)

(assert (=> b!772751 m!1040895))

(assert (=> b!772599 m!1040751))

(declare-fun tp!253774 () Bool)

(declare-fun tp!253773 () Bool)

(declare-fun b!772753 () Bool)

(declare-fun e!498188 () Bool)

(assert (=> b!772753 (= e!498188 (and (inv!10968 (left!6408 (c!130307 input!1432))) tp!253773 (inv!10968 (right!6738 (c!130307 input!1432))) tp!253774))))

(declare-fun b!772755 () Bool)

(declare-fun e!498189 () Bool)

(declare-fun tp!253772 () Bool)

(assert (=> b!772755 (= e!498189 tp!253772)))

(declare-fun b!772754 () Bool)

(assert (=> b!772754 (= e!498188 (and (inv!10972 (xs!5579 (c!130307 input!1432))) e!498189))))

(assert (=> b!772581 (= tp!253634 (and (inv!10968 (c!130307 input!1432)) e!498188))))

(assert (= (and b!772581 ((_ is Node!2892) (c!130307 input!1432))) b!772753))

(assert (= b!772754 b!772755))

(assert (= (and b!772581 ((_ is Leaf!4243) (c!130307 input!1432))) b!772754))

(declare-fun m!1040897 () Bool)

(assert (=> b!772753 m!1040897))

(declare-fun m!1040899 () Bool)

(assert (=> b!772753 m!1040899))

(declare-fun m!1040901 () Bool)

(assert (=> b!772754 m!1040901))

(assert (=> b!772581 m!1040791))

(declare-fun b!772766 () Bool)

(declare-fun e!498198 () Bool)

(declare-fun setRes!7145 () Bool)

(declare-fun tp!253795 () Bool)

(assert (=> b!772766 (= e!498198 (and setRes!7145 tp!253795))))

(declare-fun condSetEmpty!7146 () Bool)

(declare-fun mapDefault!5881 () List!8651)

(assert (=> b!772766 (= condSetEmpty!7146 (= (_1!5837 (_1!5838 (h!14038 mapDefault!5881))) ((as const (Array Context!794 Bool)) false)))))

(declare-fun mapNonEmpty!5881 () Bool)

(declare-fun mapRes!5881 () Bool)

(declare-fun tp!253789 () Bool)

(declare-fun e!498200 () Bool)

(assert (=> mapNonEmpty!5881 (= mapRes!5881 (and tp!253789 e!498200))))

(declare-fun mapValue!5881 () List!8651)

(declare-fun mapKey!5881 () (_ BitVec 32))

(declare-fun mapRest!5881 () (Array (_ BitVec 32) List!8651))

(assert (=> mapNonEmpty!5881 (= mapRest!5870 (store mapRest!5881 mapKey!5881 mapValue!5881))))

(declare-fun b!772767 () Bool)

(declare-fun e!498201 () Bool)

(declare-fun tp!253790 () Bool)

(assert (=> b!772767 (= e!498201 tp!253790)))

(declare-fun mapIsEmpty!5881 () Bool)

(assert (=> mapIsEmpty!5881 mapRes!5881))

(declare-fun setIsEmpty!7145 () Bool)

(declare-fun setRes!7146 () Bool)

(assert (=> setIsEmpty!7145 setRes!7146))

(declare-fun tp!253794 () Bool)

(declare-fun setElem!7145 () Context!794)

(declare-fun setNonEmpty!7145 () Bool)

(assert (=> setNonEmpty!7145 (= setRes!7146 (and tp!253794 (inv!10973 setElem!7145) e!498201))))

(declare-fun setRest!7145 () (InoxSet Context!794))

(assert (=> setNonEmpty!7145 (= (_1!5837 (_1!5838 (h!14038 mapValue!5881))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7145 true) setRest!7145))))

(declare-fun b!772768 () Bool)

(declare-fun tp!253791 () Bool)

(assert (=> b!772768 (= e!498200 (and setRes!7146 tp!253791))))

(declare-fun condSetEmpty!7145 () Bool)

(assert (=> b!772768 (= condSetEmpty!7145 (= (_1!5837 (_1!5838 (h!14038 mapValue!5881))) ((as const (Array Context!794 Bool)) false)))))

(declare-fun setIsEmpty!7146 () Bool)

(assert (=> setIsEmpty!7146 setRes!7145))

(declare-fun condMapEmpty!5881 () Bool)

(assert (=> mapNonEmpty!5872 (= condMapEmpty!5881 (= mapRest!5870 ((as const (Array (_ BitVec 32) List!8651)) mapDefault!5881)))))

(assert (=> mapNonEmpty!5872 (= tp!253621 (and e!498198 mapRes!5881))))

(declare-fun setElem!7146 () Context!794)

(declare-fun tp!253792 () Bool)

(declare-fun e!498199 () Bool)

(declare-fun setNonEmpty!7146 () Bool)

(assert (=> setNonEmpty!7146 (= setRes!7145 (and tp!253792 (inv!10973 setElem!7146) e!498199))))

(declare-fun setRest!7146 () (InoxSet Context!794))

(assert (=> setNonEmpty!7146 (= (_1!5837 (_1!5838 (h!14038 mapDefault!5881))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7146 true) setRest!7146))))

(declare-fun b!772769 () Bool)

(declare-fun tp!253793 () Bool)

(assert (=> b!772769 (= e!498199 tp!253793)))

(assert (= (and mapNonEmpty!5872 condMapEmpty!5881) mapIsEmpty!5881))

(assert (= (and mapNonEmpty!5872 (not condMapEmpty!5881)) mapNonEmpty!5881))

(assert (= (and b!772768 condSetEmpty!7145) setIsEmpty!7145))

(assert (= (and b!772768 (not condSetEmpty!7145)) setNonEmpty!7145))

(assert (= setNonEmpty!7145 b!772767))

(assert (= (and mapNonEmpty!5881 ((_ is Cons!8637) mapValue!5881)) b!772768))

(assert (= (and b!772766 condSetEmpty!7146) setIsEmpty!7146))

(assert (= (and b!772766 (not condSetEmpty!7146)) setNonEmpty!7146))

(assert (= setNonEmpty!7146 b!772769))

(assert (= (and mapNonEmpty!5872 ((_ is Cons!8637) mapDefault!5881)) b!772766))

(declare-fun m!1040903 () Bool)

(assert (=> mapNonEmpty!5881 m!1040903))

(declare-fun m!1040905 () Bool)

(assert (=> setNonEmpty!7145 m!1040905))

(declare-fun m!1040907 () Bool)

(assert (=> setNonEmpty!7146 m!1040907))

(declare-fun setRes!7147 () Bool)

(declare-fun setElem!7147 () Context!794)

(declare-fun setNonEmpty!7147 () Bool)

(declare-fun tp!253798 () Bool)

(declare-fun e!498203 () Bool)

(assert (=> setNonEmpty!7147 (= setRes!7147 (and tp!253798 (inv!10973 setElem!7147) e!498203))))

(declare-fun setRest!7147 () (InoxSet Context!794))

(assert (=> setNonEmpty!7147 (= (_1!5837 (_1!5838 (h!14038 mapValue!5871))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7147 true) setRest!7147))))

(declare-fun b!772771 () Bool)

(declare-fun tp!253796 () Bool)

(assert (=> b!772771 (= e!498203 tp!253796)))

(declare-fun setIsEmpty!7147 () Bool)

(assert (=> setIsEmpty!7147 setRes!7147))

(declare-fun b!772770 () Bool)

(declare-fun e!498202 () Bool)

(declare-fun tp!253797 () Bool)

(assert (=> b!772770 (= e!498202 (and setRes!7147 tp!253797))))

(declare-fun condSetEmpty!7147 () Bool)

(assert (=> b!772770 (= condSetEmpty!7147 (= (_1!5837 (_1!5838 (h!14038 mapValue!5871))) ((as const (Array Context!794 Bool)) false)))))

(assert (=> mapNonEmpty!5872 (= tp!253631 e!498202)))

(assert (= (and b!772770 condSetEmpty!7147) setIsEmpty!7147))

(assert (= (and b!772770 (not condSetEmpty!7147)) setNonEmpty!7147))

(assert (= setNonEmpty!7147 b!772771))

(assert (= (and mapNonEmpty!5872 ((_ is Cons!8637) mapValue!5871)) b!772770))

(declare-fun m!1040909 () Bool)

(assert (=> setNonEmpty!7147 m!1040909))

(declare-fun b!772782 () Bool)

(declare-fun b_free!24517 () Bool)

(declare-fun b_next!24581 () Bool)

(assert (=> b!772782 (= b_free!24517 (not b_next!24581))))

(declare-fun tp!253810 () Bool)

(declare-fun b_and!71997 () Bool)

(assert (=> b!772782 (= tp!253810 b_and!71997)))

(declare-fun b_free!24519 () Bool)

(declare-fun b_next!24583 () Bool)

(assert (=> b!772782 (= b_free!24519 (not b_next!24583))))

(declare-fun tp!253808 () Bool)

(declare-fun b_and!71999 () Bool)

(assert (=> b!772782 (= tp!253808 b_and!71999)))

(declare-fun e!498213 () Bool)

(assert (=> b!772782 (= e!498213 (and tp!253810 tp!253808))))

(declare-fun tp!253809 () Bool)

(declare-fun e!498212 () Bool)

(declare-fun b!772781 () Bool)

(assert (=> b!772781 (= e!498212 (and tp!253809 (inv!10963 (tag!1905 (h!14035 (t!91930 rulesArg!343)))) (inv!10969 (transformation!1643 (h!14035 (t!91930 rulesArg!343)))) e!498213))))

(declare-fun b!772780 () Bool)

(declare-fun e!498214 () Bool)

(declare-fun tp!253807 () Bool)

(assert (=> b!772780 (= e!498214 (and e!498212 tp!253807))))

(assert (=> b!772601 (= tp!253615 e!498214)))

(assert (= b!772781 b!772782))

(assert (= b!772780 b!772781))

(assert (= (and b!772601 ((_ is Cons!8634) (t!91930 rulesArg!343))) b!772780))

(declare-fun m!1040911 () Bool)

(assert (=> b!772781 m!1040911))

(declare-fun m!1040913 () Bool)

(assert (=> b!772781 m!1040913))

(declare-fun b!772783 () Bool)

(declare-fun e!498216 () Bool)

(declare-fun tp!253813 () Bool)

(assert (=> b!772783 (= e!498216 tp!253813)))

(declare-fun e!498218 () Bool)

(declare-fun setRes!7148 () Bool)

(declare-fun tp!253811 () Bool)

(declare-fun setNonEmpty!7148 () Bool)

(declare-fun setElem!7148 () Context!794)

(assert (=> setNonEmpty!7148 (= setRes!7148 (and tp!253811 (inv!10973 setElem!7148) e!498218))))

(declare-fun setRest!7148 () (InoxSet Context!794))

(assert (=> setNonEmpty!7148 (= (_2!5836 (h!14037 (zeroValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7148 true) setRest!7148))))

(declare-fun e!498217 () Bool)

(assert (=> b!772572 (= tp!253626 e!498217)))

(declare-fun b!772784 () Bool)

(declare-fun tp!253814 () Bool)

(assert (=> b!772784 (= e!498218 tp!253814)))

(declare-fun tp!253815 () Bool)

(declare-fun b!772785 () Bool)

(declare-fun tp!253812 () Bool)

(assert (=> b!772785 (= e!498217 (and tp!253815 (inv!10973 (_2!5835 (_1!5836 (h!14037 (zeroValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))))) e!498216 tp_is_empty!3735 setRes!7148 tp!253812))))

(declare-fun condSetEmpty!7148 () Bool)

(assert (=> b!772785 (= condSetEmpty!7148 (= (_2!5836 (h!14037 (zeroValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))) ((as const (Array Context!794 Bool)) false)))))

(declare-fun setIsEmpty!7148 () Bool)

(assert (=> setIsEmpty!7148 setRes!7148))

(assert (= b!772785 b!772783))

(assert (= (and b!772785 condSetEmpty!7148) setIsEmpty!7148))

(assert (= (and b!772785 (not condSetEmpty!7148)) setNonEmpty!7148))

(assert (= setNonEmpty!7148 b!772784))

(assert (= (and b!772572 ((_ is Cons!8636) (zeroValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))) b!772785))

(declare-fun m!1040915 () Bool)

(assert (=> setNonEmpty!7148 m!1040915))

(declare-fun m!1040917 () Bool)

(assert (=> b!772785 m!1040917))

(declare-fun b!772786 () Bool)

(declare-fun e!498219 () Bool)

(declare-fun tp!253818 () Bool)

(assert (=> b!772786 (= e!498219 tp!253818)))

(declare-fun tp!253816 () Bool)

(declare-fun setRes!7149 () Bool)

(declare-fun setElem!7149 () Context!794)

(declare-fun setNonEmpty!7149 () Bool)

(declare-fun e!498221 () Bool)

(assert (=> setNonEmpty!7149 (= setRes!7149 (and tp!253816 (inv!10973 setElem!7149) e!498221))))

(declare-fun setRest!7149 () (InoxSet Context!794))

(assert (=> setNonEmpty!7149 (= (_2!5836 (h!14037 (minValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7149 true) setRest!7149))))

(declare-fun e!498220 () Bool)

(assert (=> b!772572 (= tp!253616 e!498220)))

(declare-fun b!772787 () Bool)

(declare-fun tp!253819 () Bool)

(assert (=> b!772787 (= e!498221 tp!253819)))

(declare-fun tp!253817 () Bool)

(declare-fun b!772788 () Bool)

(declare-fun tp!253820 () Bool)

(assert (=> b!772788 (= e!498220 (and tp!253820 (inv!10973 (_2!5835 (_1!5836 (h!14037 (minValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))))) e!498219 tp_is_empty!3735 setRes!7149 tp!253817))))

(declare-fun condSetEmpty!7149 () Bool)

(assert (=> b!772788 (= condSetEmpty!7149 (= (_2!5836 (h!14037 (minValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))) ((as const (Array Context!794 Bool)) false)))))

(declare-fun setIsEmpty!7149 () Bool)

(assert (=> setIsEmpty!7149 setRes!7149))

(assert (= b!772788 b!772786))

(assert (= (and b!772788 condSetEmpty!7149) setIsEmpty!7149))

(assert (= (and b!772788 (not condSetEmpty!7149)) setNonEmpty!7149))

(assert (= setNonEmpty!7149 b!772787))

(assert (= (and b!772572 ((_ is Cons!8636) (minValue!1459 (v!18762 (underlying!2587 (v!18763 (underlying!2588 (cache!1561 cacheDown!666)))))))) b!772788))

(declare-fun m!1040919 () Bool)

(assert (=> setNonEmpty!7149 m!1040919))

(declare-fun m!1040921 () Bool)

(assert (=> b!772788 m!1040921))

(declare-fun setIsEmpty!7150 () Bool)

(declare-fun setRes!7150 () Bool)

(assert (=> setIsEmpty!7150 setRes!7150))

(declare-fun b!772789 () Bool)

(declare-fun e!498222 () Bool)

(declare-fun tp!253824 () Bool)

(assert (=> b!772789 (= e!498222 tp!253824)))

(declare-fun e!498223 () Bool)

(assert (=> b!772593 (= tp!253629 e!498223)))

(declare-fun b!772790 () Bool)

(declare-fun e!498224 () Bool)

(declare-fun tp!253823 () Bool)

(assert (=> b!772790 (= e!498224 tp!253823)))

(declare-fun setNonEmpty!7150 () Bool)

(declare-fun setElem!7150 () Context!794)

(declare-fun tp!253821 () Bool)

(assert (=> setNonEmpty!7150 (= setRes!7150 (and tp!253821 (inv!10973 setElem!7150) e!498224))))

(declare-fun setRest!7150 () (InoxSet Context!794))

(assert (=> setNonEmpty!7150 (= (_2!5840 (h!14039 (zeroValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7150 true) setRest!7150))))

(declare-fun b!772791 () Bool)

(declare-fun tp!253822 () Bool)

(assert (=> b!772791 (= e!498223 (and (inv!10973 (_1!5839 (_1!5840 (h!14039 (zeroValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))))) e!498222 tp_is_empty!3735 setRes!7150 tp!253822))))

(declare-fun condSetEmpty!7150 () Bool)

(assert (=> b!772791 (= condSetEmpty!7150 (= (_2!5840 (h!14039 (zeroValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))) ((as const (Array Context!794 Bool)) false)))))

(assert (= b!772791 b!772789))

(assert (= (and b!772791 condSetEmpty!7150) setIsEmpty!7150))

(assert (= (and b!772791 (not condSetEmpty!7150)) setNonEmpty!7150))

(assert (= setNonEmpty!7150 b!772790))

(assert (= (and b!772593 ((_ is Cons!8638) (zeroValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))) b!772791))

(declare-fun m!1040923 () Bool)

(assert (=> setNonEmpty!7150 m!1040923))

(declare-fun m!1040925 () Bool)

(assert (=> b!772791 m!1040925))

(declare-fun setIsEmpty!7151 () Bool)

(declare-fun setRes!7151 () Bool)

(assert (=> setIsEmpty!7151 setRes!7151))

(declare-fun b!772792 () Bool)

(declare-fun e!498225 () Bool)

(declare-fun tp!253828 () Bool)

(assert (=> b!772792 (= e!498225 tp!253828)))

(declare-fun e!498226 () Bool)

(assert (=> b!772593 (= tp!253620 e!498226)))

(declare-fun b!772793 () Bool)

(declare-fun e!498227 () Bool)

(declare-fun tp!253827 () Bool)

(assert (=> b!772793 (= e!498227 tp!253827)))

(declare-fun tp!253825 () Bool)

(declare-fun setNonEmpty!7151 () Bool)

(declare-fun setElem!7151 () Context!794)

(assert (=> setNonEmpty!7151 (= setRes!7151 (and tp!253825 (inv!10973 setElem!7151) e!498227))))

(declare-fun setRest!7151 () (InoxSet Context!794))

(assert (=> setNonEmpty!7151 (= (_2!5840 (h!14039 (minValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7151 true) setRest!7151))))

(declare-fun b!772794 () Bool)

(declare-fun tp!253826 () Bool)

(assert (=> b!772794 (= e!498226 (and (inv!10973 (_1!5839 (_1!5840 (h!14039 (minValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))))) e!498225 tp_is_empty!3735 setRes!7151 tp!253826))))

(declare-fun condSetEmpty!7151 () Bool)

(assert (=> b!772794 (= condSetEmpty!7151 (= (_2!5840 (h!14039 (minValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))) ((as const (Array Context!794 Bool)) false)))))

(assert (= b!772794 b!772792))

(assert (= (and b!772794 condSetEmpty!7151) setIsEmpty!7151))

(assert (= (and b!772794 (not condSetEmpty!7151)) setNonEmpty!7151))

(assert (= setNonEmpty!7151 b!772793))

(assert (= (and b!772593 ((_ is Cons!8638) (minValue!1461 (v!18766 (underlying!2591 (v!18767 (underlying!2592 (cache!1563 cacheUp!653)))))))) b!772794))

(declare-fun m!1040927 () Bool)

(assert (=> setNonEmpty!7151 m!1040927))

(declare-fun m!1040929 () Bool)

(assert (=> b!772794 m!1040929))

(declare-fun e!498229 () Bool)

(declare-fun setRes!7152 () Bool)

(declare-fun tp!253831 () Bool)

(declare-fun setElem!7152 () Context!794)

(declare-fun setNonEmpty!7152 () Bool)

(assert (=> setNonEmpty!7152 (= setRes!7152 (and tp!253831 (inv!10973 setElem!7152) e!498229))))

(declare-fun setRest!7152 () (InoxSet Context!794))

(assert (=> setNonEmpty!7152 (= (_1!5837 (_1!5838 (h!14038 mapDefault!5870))) ((_ map or) (store ((as const (Array Context!794 Bool)) false) setElem!7152 true) setRest!7152))))

(declare-fun b!772796 () Bool)

(declare-fun tp!253829 () Bool)

(assert (=> b!772796 (= e!498229 tp!253829)))

(declare-fun setIsEmpty!7152 () Bool)

(assert (=> setIsEmpty!7152 setRes!7152))

(declare-fun b!772795 () Bool)

(declare-fun e!498228 () Bool)

(declare-fun tp!253830 () Bool)

(assert (=> b!772795 (= e!498228 (and setRes!7152 tp!253830))))

(declare-fun condSetEmpty!7152 () Bool)

(assert (=> b!772795 (= condSetEmpty!7152 (= (_1!5837 (_1!5838 (h!14038 mapDefault!5870))) ((as const (Array Context!794 Bool)) false)))))

(assert (=> b!772585 (= tp!253624 e!498228)))

(assert (= (and b!772795 condSetEmpty!7152) setIsEmpty!7152))

(assert (= (and b!772795 (not condSetEmpty!7152)) setNonEmpty!7152))

(assert (= setNonEmpty!7152 b!772796))

(assert (= (and b!772585 ((_ is Cons!8637) mapDefault!5870)) b!772795))

(declare-fun m!1040931 () Bool)

(assert (=> setNonEmpty!7152 m!1040931))

(check-sat (not setNonEmpty!7119) (not b!772790) (not b!772696) (not b!772701) (not d!251791) (not b!772744) (not b!772635) (not mapNonEmpty!5878) (not b!772609) (not b!772665) (not b!772741) (not b!772684) (not d!251801) b_and!71983 (not b!772768) (not b!772725) (not d!251785) (not b_next!24577) (not b!772618) (not b_next!24565) (not b!772750) (not b!772614) (not b!772596) (not b!772742) (not b!772745) (not b!772700) (not b!772743) (not b!772771) (not b!772683) (not setNonEmpty!7152) (not d!251809) (not setNonEmpty!7129) (not b!772636) b_and!71987 b_and!71995 (not b!772792) (not setNonEmpty!7138) (not mapNonEmpty!5875) (not b!772638) (not setNonEmpty!7148) (not b!772656) (not b!772753) (not b!772682) b_and!71999 (not b!772710) (not b!772724) (not d!251795) b_and!71993 (not setNonEmpty!7147) tp_is_empty!3735 (not b!772686) (not b!772666) (not setNonEmpty!7120) (not b!772789) (not d!251825) b_and!71985 (not b!772791) (not b_next!24579) (not d!251799) (not b!772664) (not setNonEmpty!7146) (not b_next!24581) (not setNonEmpty!7125) (not setNonEmpty!7145) (not d!251811) (not b!772769) (not b_next!24583) (not b!772657) (not b!772793) (not b_next!24575) (not b!772632) (not b!772795) (not b!772698) (not b!772643) (not b!772644) (not b!772783) (not b!772726) (not b!772780) (not b!772611) (not b!772699) (not d!251783) (not b!772755) (not setNonEmpty!7149) (not b_next!24573) (not b!772752) (not setNonEmpty!7150) (not b_next!24567) (not b!772751) (not b!772784) (not b!772749) (not b!772617) (not b!772788) (not b!772786) (not setNonEmpty!7151) b_and!71991 (not mapNonEmpty!5881) (not b!772796) (not b!772581) (not b!772754) (not b!772712) (not b!772747) (not b!772711) (not setNonEmpty!7130) (not b!772785) (not d!251819) (not b!772599) (not b!772746) (not b!772748) (not b!772620) (not b!772781) (not b!772629) (not b!772766) (not d!251797) (not setNonEmpty!7140) (not b!772685) (not b!772794) (not b!772655) (not setNonEmpty!7139) (not setNonEmpty!7133) (not b_next!24571) (not b!772667) (not b_next!24569) (not setNonEmpty!7126) b_and!71997 (not b!772787) (not b!772770) b_and!71989 (not b!772767) (not b!772687) (not b!772697) (not b!772626) b_and!71981)
(check-sat b_and!71999 b_and!71993 b_and!71985 (not b_next!24583) (not b_next!24575) (not b_next!24573) (not b_next!24567) b_and!71991 b_and!71989 b_and!71981 b_and!71983 (not b_next!24577) (not b_next!24565) b_and!71987 b_and!71995 (not b_next!24579) (not b_next!24581) (not b_next!24571) (not b_next!24569) b_and!71997)
