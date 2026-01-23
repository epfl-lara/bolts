; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71680 () Bool)

(assert start!71680)

(declare-fun b!773650 () Bool)

(declare-fun b_free!24605 () Bool)

(declare-fun b_next!24669 () Bool)

(assert (=> b!773650 (= b_free!24605 (not b_next!24669))))

(declare-fun tp!254525 () Bool)

(declare-fun b_and!72085 () Bool)

(assert (=> b!773650 (= tp!254525 b_and!72085)))

(declare-fun b!773656 () Bool)

(declare-fun b_free!24607 () Bool)

(declare-fun b_next!24671 () Bool)

(assert (=> b!773656 (= b_free!24607 (not b_next!24671))))

(declare-fun tp!254515 () Bool)

(declare-fun b_and!72087 () Bool)

(assert (=> b!773656 (= tp!254515 b_and!72087)))

(declare-fun b!773637 () Bool)

(declare-fun b_free!24609 () Bool)

(declare-fun b_next!24673 () Bool)

(assert (=> b!773637 (= b_free!24609 (not b_next!24673))))

(declare-fun tp!254507 () Bool)

(declare-fun b_and!72089 () Bool)

(assert (=> b!773637 (= tp!254507 b_and!72089)))

(declare-fun b_free!24611 () Bool)

(declare-fun b_next!24675 () Bool)

(assert (=> b!773637 (= b_free!24611 (not b_next!24675))))

(declare-fun tp!254518 () Bool)

(declare-fun b_and!72091 () Bool)

(assert (=> b!773637 (= tp!254518 b_and!72091)))

(declare-fun b!773638 () Bool)

(declare-fun b_free!24613 () Bool)

(declare-fun b_next!24677 () Bool)

(assert (=> b!773638 (= b_free!24613 (not b_next!24677))))

(declare-fun tp!254526 () Bool)

(declare-fun b_and!72093 () Bool)

(assert (=> b!773638 (= tp!254526 b_and!72093)))

(declare-fun b!773648 () Bool)

(declare-fun b_free!24615 () Bool)

(declare-fun b_next!24679 () Bool)

(assert (=> b!773648 (= b_free!24615 (not b_next!24679))))

(declare-fun tp!254528 () Bool)

(declare-fun b_and!72095 () Bool)

(assert (=> b!773648 (= tp!254528 b_and!72095)))

(declare-fun b!773640 () Bool)

(declare-fun b_free!24617 () Bool)

(declare-fun b_next!24681 () Bool)

(assert (=> b!773640 (= b_free!24617 (not b_next!24681))))

(declare-fun tp!254513 () Bool)

(declare-fun b_and!72097 () Bool)

(assert (=> b!773640 (= tp!254513 b_and!72097)))

(declare-fun b!773664 () Bool)

(declare-fun b_free!24619 () Bool)

(declare-fun b_next!24683 () Bool)

(assert (=> b!773664 (= b_free!24619 (not b_next!24683))))

(declare-fun tp!254517 () Bool)

(declare-fun b_and!72099 () Bool)

(assert (=> b!773664 (= tp!254517 b_and!72099)))

(declare-fun mapIsEmpty!5942 () Bool)

(declare-fun mapRes!5943 () Bool)

(assert (=> mapIsEmpty!5942 mapRes!5943))

(declare-fun b!773633 () Bool)

(declare-fun e!499001 () Bool)

(declare-fun e!499000 () Bool)

(assert (=> b!773633 (= e!499001 e!499000)))

(declare-fun b!773634 () Bool)

(declare-fun e!498997 () Bool)

(declare-datatypes ((List!8682 0))(
  ( (Nil!8668) (Cons!8668 (h!14069 (_ BitVec 16)) (t!91964 List!8682)) )
))
(declare-datatypes ((TokenValue!1691 0))(
  ( (FloatLiteralValue!3382 (text!12282 List!8682)) (TokenValueExt!1690 (__x!7024 Int)) (Broken!8455 (value!52585 List!8682)) (Object!1704) (End!1691) (Def!1691) (Underscore!1691) (Match!1691) (Else!1691) (Error!1691) (Case!1691) (If!1691) (Extends!1691) (Abstract!1691) (Class!1691) (Val!1691) (DelimiterValue!3382 (del!1751 List!8682)) (KeywordValue!1697 (value!52586 List!8682)) (CommentValue!3382 (value!52587 List!8682)) (WhitespaceValue!3382 (value!52588 List!8682)) (IndentationValue!1691 (value!52589 List!8682)) (String!10210) (Int32!1691) (Broken!8456 (value!52590 List!8682)) (Boolean!1692) (Unit!13141) (OperatorValue!1694 (op!1751 List!8682)) (IdentifierValue!3382 (value!52591 List!8682)) (IdentifierValue!3383 (value!52592 List!8682)) (WhitespaceValue!3383 (value!52593 List!8682)) (True!3382) (False!3382) (Broken!8457 (value!52594 List!8682)) (Broken!8458 (value!52595 List!8682)) (True!3383) (RightBrace!1691) (RightBracket!1691) (Colon!1691) (Null!1691) (Comma!1691) (LeftBracket!1691) (False!3383) (LeftBrace!1691) (ImaginaryLiteralValue!1691 (text!12283 List!8682)) (StringLiteralValue!5073 (value!52596 List!8682)) (EOFValue!1691 (value!52597 List!8682)) (IdentValue!1691 (value!52598 List!8682)) (DelimiterValue!3383 (value!52599 List!8682)) (DedentValue!1691 (value!52600 List!8682)) (NewLineValue!1691 (value!52601 List!8682)) (IntegerValue!5073 (value!52602 (_ BitVec 32)) (text!12284 List!8682)) (IntegerValue!5074 (value!52603 Int) (text!12285 List!8682)) (Times!1691) (Or!1691) (Equal!1691) (Minus!1691) (Broken!8459 (value!52604 List!8682)) (And!1691) (Div!1691) (LessEqual!1691) (Mod!1691) (Concat!3692) (Not!1691) (Plus!1691) (SpaceValue!1691 (value!52605 List!8682)) (IntegerValue!5075 (value!52606 Int) (text!12286 List!8682)) (StringLiteralValue!5074 (text!12287 List!8682)) (FloatLiteralValue!3383 (text!12288 List!8682)) (BytesLiteralValue!1691 (value!52607 List!8682)) (CommentValue!3383 (value!52608 List!8682)) (StringLiteralValue!5075 (value!52609 List!8682)) (ErrorTokenValue!1691 (msg!1752 List!8682)) )
))
(declare-datatypes ((C!4604 0))(
  ( (C!4605 (val!2532 Int)) )
))
(declare-datatypes ((List!8683 0))(
  ( (Nil!8669) (Cons!8669 (h!14070 C!4604) (t!91965 List!8683)) )
))
(declare-datatypes ((IArray!5795 0))(
  ( (IArray!5796 (innerList!2955 List!8683)) )
))
(declare-datatypes ((Conc!2897 0))(
  ( (Node!2897 (left!6420 Conc!2897) (right!6750 Conc!2897) (csize!6024 Int) (cheight!3108 Int)) (Leaf!4251 (xs!5584 IArray!5795) (csize!6025 Int)) (Empty!2897) )
))
(declare-datatypes ((BalanceConc!5806 0))(
  ( (BalanceConc!5807 (c!130338 Conc!2897)) )
))
(declare-datatypes ((TokenValueInjection!3118 0))(
  ( (TokenValueInjection!3119 (toValue!2639 Int) (toChars!2498 Int)) )
))
(declare-datatypes ((Regex!2001 0))(
  ( (ElementMatch!2001 (c!130339 C!4604)) (Concat!3693 (regOne!4514 Regex!2001) (regTwo!4514 Regex!2001)) (EmptyExpr!2001) (Star!2001 (reg!2330 Regex!2001)) (EmptyLang!2001) (Union!2001 (regOne!4515 Regex!2001) (regTwo!4515 Regex!2001)) )
))
(declare-datatypes ((String!10211 0))(
  ( (String!10212 (value!52610 String)) )
))
(declare-datatypes ((Rule!3094 0))(
  ( (Rule!3095 (regex!1647 Regex!2001) (tag!1909 String!10211) (isSeparator!1647 Bool) (transformation!1647 TokenValueInjection!3118)) )
))
(declare-datatypes ((List!8684 0))(
  ( (Nil!8670) (Cons!8670 (h!14071 Rule!3094) (t!91966 List!8684)) )
))
(declare-fun rulesArg!343 () List!8684)

(get-info :version)

(assert (=> b!773634 (= e!498997 (not (or (and ((_ is Cons!8670) rulesArg!343) ((_ is Nil!8670) (t!91966 rulesArg!343))) ((_ is Cons!8670) rulesArg!343))))))

(declare-fun lt!314093 () List!8683)

(declare-fun isPrefix!1000 (List!8683 List!8683) Bool)

(assert (=> b!773634 (isPrefix!1000 lt!314093 lt!314093)))

(declare-datatypes ((Unit!13142 0))(
  ( (Unit!13143) )
))
(declare-fun lt!314095 () Unit!13142)

(declare-fun lemmaIsPrefixRefl!711 (List!8683 List!8683) Unit!13142)

(assert (=> b!773634 (= lt!314095 (lemmaIsPrefixRefl!711 lt!314093 lt!314093))))

(declare-fun b!773635 () Bool)

(declare-fun e!499004 () Bool)

(declare-fun e!499007 () Bool)

(assert (=> b!773635 (= e!499004 e!499007)))

(declare-fun b!773636 () Bool)

(declare-fun e!498984 () Bool)

(declare-fun e!498986 () Bool)

(assert (=> b!773636 (= e!498984 e!498986)))

(declare-fun e!498990 () Bool)

(assert (=> b!773637 (= e!498990 (and tp!254507 tp!254518))))

(declare-fun b!773639 () Bool)

(declare-fun res!338683 () Bool)

(declare-fun e!498992 () Bool)

(assert (=> b!773639 (=> (not res!338683) (not e!498992))))

(declare-datatypes ((LexerInterface!1449 0))(
  ( (LexerInterfaceExt!1446 (__x!7025 Int)) (Lexer!1447) )
))
(declare-fun thiss!15653 () LexerInterface!1449)

(declare-fun rulesValidInductive!591 (LexerInterface!1449 List!8684) Bool)

(assert (=> b!773639 (= res!338683 (rulesValidInductive!591 thiss!15653 rulesArg!343))))

(declare-datatypes ((List!8685 0))(
  ( (Nil!8671) (Cons!8671 (h!14072 Regex!2001) (t!91967 List!8685)) )
))
(declare-datatypes ((Context!806 0))(
  ( (Context!807 (exprs!903 List!8685)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10168 0))(
  ( (tuple2!10169 (_1!5876 (InoxSet Context!806)) (_2!5876 Int)) )
))
(declare-datatypes ((tuple2!10170 0))(
  ( (tuple2!10171 (_1!5877 tuple2!10168) (_2!5877 Int)) )
))
(declare-datatypes ((List!8686 0))(
  ( (Nil!8672) (Cons!8672 (h!14073 tuple2!10170) (t!91968 List!8686)) )
))
(declare-datatypes ((array!4285 0))(
  ( (array!4286 (arr!1910 (Array (_ BitVec 32) List!8686)) (size!7047 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1191 0))(
  ( (HashableExt!1190 (__x!7026 Int)) )
))
(declare-datatypes ((array!4287 0))(
  ( (array!4288 (arr!1911 (Array (_ BitVec 32) (_ BitVec 64))) (size!7048 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2438 0))(
  ( (LongMapFixedSize!2439 (defaultEntry!1575 Int) (mask!3104 (_ BitVec 32)) (extraKeys!1466 (_ BitVec 32)) (zeroValue!1476 List!8686) (minValue!1476 List!8686) (_size!2547 (_ BitVec 32)) (_keys!1513 array!4287) (_values!1498 array!4285) (_vacant!1280 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4817 0))(
  ( (Cell!4818 (v!18798 LongMapFixedSize!2438)) )
))
(declare-datatypes ((MutLongMap!1219 0))(
  ( (LongMap!1219 (underlying!2621 Cell!4817)) (MutLongMapExt!1218 (__x!7027 Int)) )
))
(declare-datatypes ((Cell!4819 0))(
  ( (Cell!4820 (v!18799 MutLongMap!1219)) )
))
(declare-datatypes ((MutableMap!1191 0))(
  ( (MutableMapExt!1190 (__x!7028 Int)) (HashMap!1191 (underlying!2622 Cell!4819) (hashF!3099 Hashable!1191) (_size!2548 (_ BitVec 32)) (defaultValue!1342 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!346 0))(
  ( (CacheFindLongestMatch!347 (cache!1578 MutableMap!1191) (totalInput!2137 BalanceConc!5806)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!346)

(declare-fun tp!254530 () Bool)

(declare-fun tp!254509 () Bool)

(declare-fun e!499006 () Bool)

(declare-fun array_inv!1388 (array!4287) Bool)

(declare-fun array_inv!1389 (array!4285) Bool)

(assert (=> b!773640 (= e!499007 (and tp!254513 tp!254509 tp!254530 (array_inv!1388 (_keys!1513 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) (array_inv!1389 (_values!1498 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) e!499006))))

(declare-fun mapNonEmpty!5942 () Bool)

(declare-fun mapRes!5942 () Bool)

(declare-fun tp!254503 () Bool)

(declare-fun tp!254527 () Bool)

(assert (=> mapNonEmpty!5942 (= mapRes!5942 (and tp!254503 tp!254527))))

(declare-fun mapKey!5944 () (_ BitVec 32))

(declare-datatypes ((tuple3!1012 0))(
  ( (tuple3!1013 (_1!5878 Regex!2001) (_2!5878 Context!806) (_3!792 C!4604)) )
))
(declare-datatypes ((tuple2!10172 0))(
  ( (tuple2!10173 (_1!5879 tuple3!1012) (_2!5879 (InoxSet Context!806))) )
))
(declare-datatypes ((List!8687 0))(
  ( (Nil!8673) (Cons!8673 (h!14074 tuple2!10172) (t!91969 List!8687)) )
))
(declare-fun mapValue!5943 () List!8687)

(declare-datatypes ((array!4289 0))(
  ( (array!4290 (arr!1912 (Array (_ BitVec 32) List!8687)) (size!7049 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2440 0))(
  ( (LongMapFixedSize!2441 (defaultEntry!1576 Int) (mask!3105 (_ BitVec 32)) (extraKeys!1467 (_ BitVec 32)) (zeroValue!1477 List!8687) (minValue!1477 List!8687) (_size!2549 (_ BitVec 32)) (_keys!1514 array!4287) (_values!1499 array!4289) (_vacant!1281 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4821 0))(
  ( (Cell!4822 (v!18800 LongMapFixedSize!2440)) )
))
(declare-datatypes ((MutLongMap!1220 0))(
  ( (LongMap!1220 (underlying!2623 Cell!4821)) (MutLongMapExt!1219 (__x!7029 Int)) )
))
(declare-datatypes ((Cell!4823 0))(
  ( (Cell!4824 (v!18801 MutLongMap!1220)) )
))
(declare-datatypes ((Hashable!1192 0))(
  ( (HashableExt!1191 (__x!7030 Int)) )
))
(declare-datatypes ((MutableMap!1192 0))(
  ( (MutableMapExt!1191 (__x!7031 Int)) (HashMap!1192 (underlying!2624 Cell!4823) (hashF!3100 Hashable!1192) (_size!2550 (_ BitVec 32)) (defaultValue!1343 Int)) )
))
(declare-datatypes ((CacheDown!684 0))(
  ( (CacheDown!685 (cache!1579 MutableMap!1192)) )
))
(declare-fun cacheDown!666 () CacheDown!684)

(declare-fun mapRest!5944 () (Array (_ BitVec 32) List!8687))

(assert (=> mapNonEmpty!5942 (= (arr!1912 (_values!1499 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) (store mapRest!5944 mapKey!5944 mapValue!5943))))

(declare-fun b!773641 () Bool)

(declare-fun e!498991 () Bool)

(declare-fun tp!254522 () Bool)

(assert (=> b!773641 (= e!498991 (and tp!254522 mapRes!5942))))

(declare-fun condMapEmpty!5943 () Bool)

(declare-fun mapDefault!5944 () List!8687)

(assert (=> b!773641 (= condMapEmpty!5943 (= (arr!1912 (_values!1499 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8687)) mapDefault!5944)))))

(declare-fun b!773642 () Bool)

(declare-fun res!338685 () Bool)

(assert (=> b!773642 (=> (not res!338685) (not e!498997))))

(declare-fun valid!982 (CacheFindLongestMatch!346) Bool)

(assert (=> b!773642 (= res!338685 (valid!982 cacheFindLongestMatch!134))))

(declare-fun b!773643 () Bool)

(declare-fun e!498998 () Bool)

(declare-fun e!498996 () Bool)

(declare-fun lt!314091 () MutLongMap!1219)

(assert (=> b!773643 (= e!498998 (and e!498996 ((_ is LongMap!1219) lt!314091)))))

(assert (=> b!773643 (= lt!314091 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))

(declare-fun b!773644 () Bool)

(declare-fun res!338688 () Bool)

(assert (=> b!773644 (=> (not res!338688) (not e!498997))))

(declare-fun valid!983 (CacheDown!684) Bool)

(assert (=> b!773644 (= res!338688 (valid!983 cacheDown!666))))

(declare-fun b!773645 () Bool)

(declare-fun e!498978 () Bool)

(declare-fun e!498987 () Bool)

(assert (=> b!773645 (= e!498978 e!498987)))

(declare-fun b!773646 () Bool)

(declare-fun e!499002 () Bool)

(declare-fun tp!254519 () Bool)

(declare-fun inv!10999 (Conc!2897) Bool)

(assert (=> b!773646 (= e!499002 (and (inv!10999 (c!130338 (totalInput!2137 cacheFindLongestMatch!134))) tp!254519))))

(declare-fun b!773647 () Bool)

(declare-fun e!499008 () Bool)

(declare-fun e!498982 () Bool)

(declare-fun lt!314094 () MutLongMap!1220)

(assert (=> b!773647 (= e!499008 (and e!498982 ((_ is LongMap!1220) lt!314094)))))

(assert (=> b!773647 (= lt!314094 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))

(declare-fun e!498989 () Bool)

(assert (=> b!773648 (= e!498989 (and e!499008 tp!254528))))

(declare-fun b!773649 () Bool)

(declare-fun tp!254504 () Bool)

(assert (=> b!773649 (= e!499006 (and tp!254504 mapRes!5943))))

(declare-fun condMapEmpty!5942 () Bool)

(declare-fun mapDefault!5942 () List!8686)

(assert (=> b!773649 (= condMapEmpty!5942 (= (arr!1910 (_values!1498 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8686)) mapDefault!5942)))))

(declare-fun e!498981 () Bool)

(assert (=> b!773650 (= e!498981 (and e!498998 tp!254525))))

(declare-fun b!773651 () Bool)

(declare-fun res!338684 () Bool)

(assert (=> b!773651 (=> (not res!338684) (not e!498997))))

(declare-datatypes ((tuple2!10174 0))(
  ( (tuple2!10175 (_1!5880 Context!806) (_2!5880 C!4604)) )
))
(declare-datatypes ((tuple2!10176 0))(
  ( (tuple2!10177 (_1!5881 tuple2!10174) (_2!5881 (InoxSet Context!806))) )
))
(declare-datatypes ((List!8688 0))(
  ( (Nil!8674) (Cons!8674 (h!14075 tuple2!10176) (t!91970 List!8688)) )
))
(declare-datatypes ((array!4291 0))(
  ( (array!4292 (arr!1913 (Array (_ BitVec 32) List!8688)) (size!7050 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2442 0))(
  ( (LongMapFixedSize!2443 (defaultEntry!1577 Int) (mask!3106 (_ BitVec 32)) (extraKeys!1468 (_ BitVec 32)) (zeroValue!1478 List!8688) (minValue!1478 List!8688) (_size!2551 (_ BitVec 32)) (_keys!1515 array!4287) (_values!1500 array!4291) (_vacant!1282 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4825 0))(
  ( (Cell!4826 (v!18802 LongMapFixedSize!2442)) )
))
(declare-datatypes ((MutLongMap!1221 0))(
  ( (LongMap!1221 (underlying!2625 Cell!4825)) (MutLongMapExt!1220 (__x!7032 Int)) )
))
(declare-datatypes ((Cell!4827 0))(
  ( (Cell!4828 (v!18803 MutLongMap!1221)) )
))
(declare-datatypes ((Hashable!1193 0))(
  ( (HashableExt!1192 (__x!7033 Int)) )
))
(declare-datatypes ((MutableMap!1193 0))(
  ( (MutableMapExt!1192 (__x!7034 Int)) (HashMap!1193 (underlying!2626 Cell!4827) (hashF!3101 Hashable!1193) (_size!2552 (_ BitVec 32)) (defaultValue!1344 Int)) )
))
(declare-datatypes ((CacheUp!678 0))(
  ( (CacheUp!679 (cache!1580 MutableMap!1193)) )
))
(declare-fun cacheUp!653 () CacheUp!678)

(declare-fun valid!984 (CacheUp!678) Bool)

(assert (=> b!773651 (= res!338684 (valid!984 cacheUp!653))))

(declare-fun mapNonEmpty!5943 () Bool)

(declare-fun tp!254508 () Bool)

(declare-fun tp!254520 () Bool)

(assert (=> mapNonEmpty!5943 (= mapRes!5943 (and tp!254508 tp!254520))))

(declare-fun mapRest!5943 () (Array (_ BitVec 32) List!8686))

(declare-fun mapValue!5944 () List!8686)

(declare-fun mapKey!5942 () (_ BitVec 32))

(assert (=> mapNonEmpty!5943 (= (arr!1910 (_values!1498 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) (store mapRest!5943 mapKey!5942 mapValue!5944))))

(declare-fun b!773652 () Bool)

(declare-fun e!498983 () Bool)

(assert (=> b!773652 (= e!498986 e!498983)))

(declare-fun b!773653 () Bool)

(declare-fun e!498988 () Bool)

(declare-fun totalInput!472 () BalanceConc!5806)

(declare-fun tp!254521 () Bool)

(assert (=> b!773653 (= e!498988 (and (inv!10999 (c!130338 totalInput!472)) tp!254521))))

(declare-fun b!773654 () Bool)

(assert (=> b!773654 (= e!498996 e!499004)))

(declare-fun b!773655 () Bool)

(declare-fun res!338686 () Bool)

(assert (=> b!773655 (=> (not res!338686) (not e!498992))))

(declare-fun isEmpty!5230 (List!8684) Bool)

(assert (=> b!773655 (= res!338686 (not (isEmpty!5230 rulesArg!343)))))

(declare-fun e!498994 () Bool)

(assert (=> b!773656 (= e!499000 (and e!498994 tp!254515))))

(declare-fun b!773657 () Bool)

(assert (=> b!773657 (= e!498992 e!498997)))

(declare-fun res!338687 () Bool)

(assert (=> b!773657 (=> (not res!338687) (not e!498997))))

(declare-fun isSuffix!225 (List!8683 List!8683) Bool)

(declare-fun list!3449 (BalanceConc!5806) List!8683)

(assert (=> b!773657 (= res!338687 (isSuffix!225 lt!314093 (list!3449 totalInput!472)))))

(declare-fun input!1432 () BalanceConc!5806)

(assert (=> b!773657 (= lt!314093 (list!3449 input!1432))))

(declare-fun tp!254514 () Bool)

(declare-fun e!498977 () Bool)

(declare-fun b!773658 () Bool)

(declare-fun inv!10998 (String!10211) Bool)

(declare-fun inv!11000 (TokenValueInjection!3118) Bool)

(assert (=> b!773658 (= e!498977 (and tp!254514 (inv!10998 (tag!1909 (h!14071 rulesArg!343))) (inv!11000 (transformation!1647 (h!14071 rulesArg!343))) e!498990))))

(declare-fun b!773659 () Bool)

(declare-fun e!498980 () Bool)

(declare-fun tp!254516 () Bool)

(assert (=> b!773659 (= e!498980 (and e!498977 tp!254516))))

(declare-fun b!773660 () Bool)

(declare-fun lt!314092 () MutLongMap!1221)

(assert (=> b!773660 (= e!498994 (and e!498984 ((_ is LongMap!1221) lt!314092)))))

(assert (=> b!773660 (= lt!314092 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))

(declare-fun tp!254524 () Bool)

(declare-fun tp!254512 () Bool)

(declare-fun array_inv!1390 (array!4289) Bool)

(assert (=> b!773638 (= e!498987 (and tp!254526 tp!254512 tp!254524 (array_inv!1388 (_keys!1514 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) (array_inv!1390 (_values!1499 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) e!498991))))

(declare-fun res!338689 () Bool)

(assert (=> start!71680 (=> (not res!338689) (not e!498992))))

(assert (=> start!71680 (= res!338689 ((_ is Lexer!1447) thiss!15653))))

(assert (=> start!71680 e!498992))

(assert (=> start!71680 e!498980))

(declare-fun e!498995 () Bool)

(declare-fun inv!11001 (BalanceConc!5806) Bool)

(assert (=> start!71680 (and (inv!11001 input!1432) e!498995)))

(declare-fun e!498999 () Bool)

(declare-fun inv!11002 (CacheFindLongestMatch!346) Bool)

(assert (=> start!71680 (and (inv!11002 cacheFindLongestMatch!134) e!498999)))

(assert (=> start!71680 true))

(declare-fun inv!11003 (CacheUp!678) Bool)

(assert (=> start!71680 (and (inv!11003 cacheUp!653) e!499001)))

(assert (=> start!71680 (and (inv!11001 totalInput!472) e!498988)))

(declare-fun e!499009 () Bool)

(declare-fun inv!11004 (CacheDown!684) Bool)

(assert (=> start!71680 (and (inv!11004 cacheDown!666) e!499009)))

(declare-fun b!773661 () Bool)

(declare-fun e!498993 () Bool)

(declare-fun tp!254510 () Bool)

(declare-fun mapRes!5944 () Bool)

(assert (=> b!773661 (= e!498993 (and tp!254510 mapRes!5944))))

(declare-fun condMapEmpty!5944 () Bool)

(declare-fun mapDefault!5943 () List!8688)

(assert (=> b!773661 (= condMapEmpty!5944 (= (arr!1913 (_values!1500 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8688)) mapDefault!5943)))))

(declare-fun mapIsEmpty!5943 () Bool)

(assert (=> mapIsEmpty!5943 mapRes!5942))

(declare-fun mapNonEmpty!5944 () Bool)

(declare-fun tp!254505 () Bool)

(declare-fun tp!254506 () Bool)

(assert (=> mapNonEmpty!5944 (= mapRes!5944 (and tp!254505 tp!254506))))

(declare-fun mapValue!5942 () List!8688)

(declare-fun mapKey!5943 () (_ BitVec 32))

(declare-fun mapRest!5942 () (Array (_ BitVec 32) List!8688))

(assert (=> mapNonEmpty!5944 (= (arr!1913 (_values!1500 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) (store mapRest!5942 mapKey!5943 mapValue!5942))))

(declare-fun b!773662 () Bool)

(declare-fun res!338690 () Bool)

(assert (=> b!773662 (=> (not res!338690) (not e!498997))))

(assert (=> b!773662 (= res!338690 (= (totalInput!2137 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun mapIsEmpty!5944 () Bool)

(assert (=> mapIsEmpty!5944 mapRes!5944))

(declare-fun b!773663 () Bool)

(assert (=> b!773663 (= e!499009 e!498989)))

(declare-fun tp!254511 () Bool)

(declare-fun tp!254529 () Bool)

(declare-fun array_inv!1391 (array!4291) Bool)

(assert (=> b!773664 (= e!498983 (and tp!254517 tp!254511 tp!254529 (array_inv!1388 (_keys!1515 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) (array_inv!1391 (_values!1500 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) e!498993))))

(declare-fun b!773665 () Bool)

(assert (=> b!773665 (= e!498982 e!498978)))

(declare-fun b!773666 () Bool)

(assert (=> b!773666 (= e!498999 (and e!498981 (inv!11001 (totalInput!2137 cacheFindLongestMatch!134)) e!499002))))

(declare-fun b!773667 () Bool)

(declare-fun tp!254523 () Bool)

(assert (=> b!773667 (= e!498995 (and (inv!10999 (c!130338 input!1432)) tp!254523))))

(assert (= (and start!71680 res!338689) b!773639))

(assert (= (and b!773639 res!338683) b!773655))

(assert (= (and b!773655 res!338686) b!773657))

(assert (= (and b!773657 res!338687) b!773651))

(assert (= (and b!773651 res!338684) b!773644))

(assert (= (and b!773644 res!338688) b!773642))

(assert (= (and b!773642 res!338685) b!773662))

(assert (= (and b!773662 res!338690) b!773634))

(assert (= b!773658 b!773637))

(assert (= b!773659 b!773658))

(assert (= (and start!71680 ((_ is Cons!8670) rulesArg!343)) b!773659))

(assert (= start!71680 b!773667))

(assert (= (and b!773649 condMapEmpty!5942) mapIsEmpty!5942))

(assert (= (and b!773649 (not condMapEmpty!5942)) mapNonEmpty!5943))

(assert (= b!773640 b!773649))

(assert (= b!773635 b!773640))

(assert (= b!773654 b!773635))

(assert (= (and b!773643 ((_ is LongMap!1219) (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))) b!773654))

(assert (= b!773650 b!773643))

(assert (= (and b!773666 ((_ is HashMap!1191) (cache!1578 cacheFindLongestMatch!134))) b!773650))

(assert (= b!773666 b!773646))

(assert (= start!71680 b!773666))

(assert (= (and b!773661 condMapEmpty!5944) mapIsEmpty!5944))

(assert (= (and b!773661 (not condMapEmpty!5944)) mapNonEmpty!5944))

(assert (= b!773664 b!773661))

(assert (= b!773652 b!773664))

(assert (= b!773636 b!773652))

(assert (= (and b!773660 ((_ is LongMap!1221) (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))) b!773636))

(assert (= b!773656 b!773660))

(assert (= (and b!773633 ((_ is HashMap!1193) (cache!1580 cacheUp!653))) b!773656))

(assert (= start!71680 b!773633))

(assert (= start!71680 b!773653))

(assert (= (and b!773641 condMapEmpty!5943) mapIsEmpty!5943))

(assert (= (and b!773641 (not condMapEmpty!5943)) mapNonEmpty!5942))

(assert (= b!773638 b!773641))

(assert (= b!773645 b!773638))

(assert (= b!773665 b!773645))

(assert (= (and b!773647 ((_ is LongMap!1220) (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))) b!773665))

(assert (= b!773648 b!773647))

(assert (= (and b!773663 ((_ is HashMap!1192) (cache!1579 cacheDown!666))) b!773648))

(assert (= start!71680 b!773663))

(declare-fun m!1041427 () Bool)

(assert (=> b!773653 m!1041427))

(declare-fun m!1041429 () Bool)

(assert (=> mapNonEmpty!5944 m!1041429))

(declare-fun m!1041431 () Bool)

(assert (=> b!773644 m!1041431))

(declare-fun m!1041433 () Bool)

(assert (=> b!773639 m!1041433))

(declare-fun m!1041435 () Bool)

(assert (=> b!773667 m!1041435))

(declare-fun m!1041437 () Bool)

(assert (=> b!773646 m!1041437))

(declare-fun m!1041439 () Bool)

(assert (=> mapNonEmpty!5942 m!1041439))

(declare-fun m!1041441 () Bool)

(assert (=> b!773642 m!1041441))

(declare-fun m!1041443 () Bool)

(assert (=> b!773638 m!1041443))

(declare-fun m!1041445 () Bool)

(assert (=> b!773638 m!1041445))

(declare-fun m!1041447 () Bool)

(assert (=> b!773651 m!1041447))

(declare-fun m!1041449 () Bool)

(assert (=> b!773666 m!1041449))

(declare-fun m!1041451 () Bool)

(assert (=> start!71680 m!1041451))

(declare-fun m!1041453 () Bool)

(assert (=> start!71680 m!1041453))

(declare-fun m!1041455 () Bool)

(assert (=> start!71680 m!1041455))

(declare-fun m!1041457 () Bool)

(assert (=> start!71680 m!1041457))

(declare-fun m!1041459 () Bool)

(assert (=> start!71680 m!1041459))

(declare-fun m!1041461 () Bool)

(assert (=> b!773640 m!1041461))

(declare-fun m!1041463 () Bool)

(assert (=> b!773640 m!1041463))

(declare-fun m!1041465 () Bool)

(assert (=> b!773657 m!1041465))

(assert (=> b!773657 m!1041465))

(declare-fun m!1041467 () Bool)

(assert (=> b!773657 m!1041467))

(declare-fun m!1041469 () Bool)

(assert (=> b!773657 m!1041469))

(declare-fun m!1041471 () Bool)

(assert (=> b!773655 m!1041471))

(declare-fun m!1041473 () Bool)

(assert (=> mapNonEmpty!5943 m!1041473))

(declare-fun m!1041475 () Bool)

(assert (=> b!773664 m!1041475))

(declare-fun m!1041477 () Bool)

(assert (=> b!773664 m!1041477))

(declare-fun m!1041479 () Bool)

(assert (=> b!773634 m!1041479))

(declare-fun m!1041481 () Bool)

(assert (=> b!773634 m!1041481))

(declare-fun m!1041483 () Bool)

(assert (=> b!773658 m!1041483))

(declare-fun m!1041485 () Bool)

(assert (=> b!773658 m!1041485))

(check-sat (not mapNonEmpty!5944) (not b!773640) (not b!773634) (not b_next!24673) (not b!773659) (not b!773646) (not b!773666) (not b_next!24679) (not b!773649) b_and!72093 b_and!72099 (not b!773658) (not b!773653) (not b!773667) (not b_next!24681) (not b!773664) (not b!773642) b_and!72085 (not b!773639) (not b_next!24683) (not b_next!24675) (not mapNonEmpty!5943) (not b!773638) b_and!72095 (not b!773657) (not b!773651) b_and!72091 (not start!71680) b_and!72089 (not b!773655) (not b!773661) (not b_next!24677) b_and!72087 (not mapNonEmpty!5942) (not b!773641) b_and!72097 (not b_next!24671) (not b_next!24669) (not b!773644))
(check-sat (not b_next!24681) b_and!72085 (not b_next!24673) b_and!72095 b_and!72091 b_and!72089 (not b_next!24679) b_and!72093 b_and!72099 (not b_next!24669) (not b_next!24683) (not b_next!24675) (not b_next!24677) b_and!72087 b_and!72097 (not b_next!24671))
(get-model)

(declare-fun d!251896 () Bool)

(declare-fun validCacheMapUp!107 (MutableMap!1193) Bool)

(assert (=> d!251896 (= (valid!984 cacheUp!653) (validCacheMapUp!107 (cache!1580 cacheUp!653)))))

(declare-fun bs!166018 () Bool)

(assert (= bs!166018 d!251896))

(declare-fun m!1041487 () Bool)

(assert (=> bs!166018 m!1041487))

(assert (=> b!773651 d!251896))

(declare-fun d!251898 () Bool)

(declare-fun validCacheMapFindLongestMatch!53 (MutableMap!1191 BalanceConc!5806) Bool)

(assert (=> d!251898 (= (valid!982 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!53 (cache!1578 cacheFindLongestMatch!134) (totalInput!2137 cacheFindLongestMatch!134)))))

(declare-fun bs!166019 () Bool)

(assert (= bs!166019 d!251898))

(declare-fun m!1041489 () Bool)

(assert (=> bs!166019 m!1041489))

(assert (=> b!773642 d!251898))

(declare-fun d!251900 () Bool)

(declare-fun isBalanced!780 (Conc!2897) Bool)

(assert (=> d!251900 (= (inv!11001 (totalInput!2137 cacheFindLongestMatch!134)) (isBalanced!780 (c!130338 (totalInput!2137 cacheFindLongestMatch!134))))))

(declare-fun bs!166020 () Bool)

(assert (= bs!166020 d!251900))

(declare-fun m!1041491 () Bool)

(assert (=> bs!166020 m!1041491))

(assert (=> b!773666 d!251900))

(declare-fun d!251902 () Bool)

(assert (=> d!251902 true))

(declare-fun lt!314098 () Bool)

(declare-fun lambda!23307 () Int)

(declare-fun forall!2050 (List!8684 Int) Bool)

(assert (=> d!251902 (= lt!314098 (forall!2050 rulesArg!343 lambda!23307))))

(declare-fun e!499015 () Bool)

(assert (=> d!251902 (= lt!314098 e!499015)))

(declare-fun res!338695 () Bool)

(assert (=> d!251902 (=> res!338695 e!499015)))

(assert (=> d!251902 (= res!338695 (not ((_ is Cons!8670) rulesArg!343)))))

(assert (=> d!251902 (= (rulesValidInductive!591 thiss!15653 rulesArg!343) lt!314098)))

(declare-fun b!773672 () Bool)

(declare-fun e!499014 () Bool)

(assert (=> b!773672 (= e!499015 e!499014)))

(declare-fun res!338696 () Bool)

(assert (=> b!773672 (=> (not res!338696) (not e!499014))))

(declare-fun ruleValid!508 (LexerInterface!1449 Rule!3094) Bool)

(assert (=> b!773672 (= res!338696 (ruleValid!508 thiss!15653 (h!14071 rulesArg!343)))))

(declare-fun b!773673 () Bool)

(assert (=> b!773673 (= e!499014 (rulesValidInductive!591 thiss!15653 (t!91966 rulesArg!343)))))

(assert (= (and d!251902 (not res!338695)) b!773672))

(assert (= (and b!773672 res!338696) b!773673))

(declare-fun m!1041493 () Bool)

(assert (=> d!251902 m!1041493))

(declare-fun m!1041495 () Bool)

(assert (=> b!773672 m!1041495))

(declare-fun m!1041497 () Bool)

(assert (=> b!773673 m!1041497))

(assert (=> b!773639 d!251902))

(declare-fun d!251904 () Bool)

(assert (=> d!251904 (= (inv!10998 (tag!1909 (h!14071 rulesArg!343))) (= (mod (str.len (value!52610 (tag!1909 (h!14071 rulesArg!343)))) 2) 0))))

(assert (=> b!773658 d!251904))

(declare-fun d!251906 () Bool)

(declare-fun res!338699 () Bool)

(declare-fun e!499018 () Bool)

(assert (=> d!251906 (=> (not res!338699) (not e!499018))))

(declare-fun semiInverseModEq!617 (Int Int) Bool)

(assert (=> d!251906 (= res!338699 (semiInverseModEq!617 (toChars!2498 (transformation!1647 (h!14071 rulesArg!343))) (toValue!2639 (transformation!1647 (h!14071 rulesArg!343)))))))

(assert (=> d!251906 (= (inv!11000 (transformation!1647 (h!14071 rulesArg!343))) e!499018)))

(declare-fun b!773678 () Bool)

(declare-fun equivClasses!592 (Int Int) Bool)

(assert (=> b!773678 (= e!499018 (equivClasses!592 (toChars!2498 (transformation!1647 (h!14071 rulesArg!343))) (toValue!2639 (transformation!1647 (h!14071 rulesArg!343)))))))

(assert (= (and d!251906 res!338699) b!773678))

(declare-fun m!1041499 () Bool)

(assert (=> d!251906 m!1041499))

(declare-fun m!1041501 () Bool)

(assert (=> b!773678 m!1041501))

(assert (=> b!773658 d!251906))

(declare-fun d!251908 () Bool)

(declare-fun c!130342 () Bool)

(assert (=> d!251908 (= c!130342 ((_ is Node!2897) (c!130338 input!1432)))))

(declare-fun e!499023 () Bool)

(assert (=> d!251908 (= (inv!10999 (c!130338 input!1432)) e!499023)))

(declare-fun b!773685 () Bool)

(declare-fun inv!11005 (Conc!2897) Bool)

(assert (=> b!773685 (= e!499023 (inv!11005 (c!130338 input!1432)))))

(declare-fun b!773686 () Bool)

(declare-fun e!499024 () Bool)

(assert (=> b!773686 (= e!499023 e!499024)))

(declare-fun res!338702 () Bool)

(assert (=> b!773686 (= res!338702 (not ((_ is Leaf!4251) (c!130338 input!1432))))))

(assert (=> b!773686 (=> res!338702 e!499024)))

(declare-fun b!773687 () Bool)

(declare-fun inv!11006 (Conc!2897) Bool)

(assert (=> b!773687 (= e!499024 (inv!11006 (c!130338 input!1432)))))

(assert (= (and d!251908 c!130342) b!773685))

(assert (= (and d!251908 (not c!130342)) b!773686))

(assert (= (and b!773686 (not res!338702)) b!773687))

(declare-fun m!1041503 () Bool)

(assert (=> b!773685 m!1041503))

(declare-fun m!1041505 () Bool)

(assert (=> b!773687 m!1041505))

(assert (=> b!773667 d!251908))

(declare-fun d!251910 () Bool)

(assert (=> d!251910 (= (array_inv!1388 (_keys!1513 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) (bvsge (size!7048 (_keys!1513 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!773640 d!251910))

(declare-fun d!251912 () Bool)

(assert (=> d!251912 (= (array_inv!1389 (_values!1498 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) (bvsge (size!7047 (_values!1498 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!773640 d!251912))

(declare-fun d!251914 () Bool)

(declare-fun c!130343 () Bool)

(assert (=> d!251914 (= c!130343 ((_ is Node!2897) (c!130338 (totalInput!2137 cacheFindLongestMatch!134))))))

(declare-fun e!499025 () Bool)

(assert (=> d!251914 (= (inv!10999 (c!130338 (totalInput!2137 cacheFindLongestMatch!134))) e!499025)))

(declare-fun b!773688 () Bool)

(assert (=> b!773688 (= e!499025 (inv!11005 (c!130338 (totalInput!2137 cacheFindLongestMatch!134))))))

(declare-fun b!773689 () Bool)

(declare-fun e!499026 () Bool)

(assert (=> b!773689 (= e!499025 e!499026)))

(declare-fun res!338703 () Bool)

(assert (=> b!773689 (= res!338703 (not ((_ is Leaf!4251) (c!130338 (totalInput!2137 cacheFindLongestMatch!134)))))))

(assert (=> b!773689 (=> res!338703 e!499026)))

(declare-fun b!773690 () Bool)

(assert (=> b!773690 (= e!499026 (inv!11006 (c!130338 (totalInput!2137 cacheFindLongestMatch!134))))))

(assert (= (and d!251914 c!130343) b!773688))

(assert (= (and d!251914 (not c!130343)) b!773689))

(assert (= (and b!773689 (not res!338703)) b!773690))

(declare-fun m!1041507 () Bool)

(assert (=> b!773688 m!1041507))

(declare-fun m!1041509 () Bool)

(assert (=> b!773690 m!1041509))

(assert (=> b!773646 d!251914))

(declare-fun d!251916 () Bool)

(assert (=> d!251916 (= (isEmpty!5230 rulesArg!343) ((_ is Nil!8670) rulesArg!343))))

(assert (=> b!773655 d!251916))

(declare-fun d!251918 () Bool)

(declare-fun res!338706 () Bool)

(declare-fun e!499029 () Bool)

(assert (=> d!251918 (=> (not res!338706) (not e!499029))))

(assert (=> d!251918 (= res!338706 ((_ is HashMap!1192) (cache!1579 cacheDown!666)))))

(assert (=> d!251918 (= (inv!11004 cacheDown!666) e!499029)))

(declare-fun b!773693 () Bool)

(declare-fun validCacheMapDown!107 (MutableMap!1192) Bool)

(assert (=> b!773693 (= e!499029 (validCacheMapDown!107 (cache!1579 cacheDown!666)))))

(assert (= (and d!251918 res!338706) b!773693))

(declare-fun m!1041511 () Bool)

(assert (=> b!773693 m!1041511))

(assert (=> start!71680 d!251918))

(declare-fun d!251920 () Bool)

(assert (=> d!251920 (= (inv!11001 totalInput!472) (isBalanced!780 (c!130338 totalInput!472)))))

(declare-fun bs!166021 () Bool)

(assert (= bs!166021 d!251920))

(declare-fun m!1041513 () Bool)

(assert (=> bs!166021 m!1041513))

(assert (=> start!71680 d!251920))

(declare-fun d!251922 () Bool)

(assert (=> d!251922 (= (inv!11001 input!1432) (isBalanced!780 (c!130338 input!1432)))))

(declare-fun bs!166022 () Bool)

(assert (= bs!166022 d!251922))

(declare-fun m!1041515 () Bool)

(assert (=> bs!166022 m!1041515))

(assert (=> start!71680 d!251922))

(declare-fun d!251924 () Bool)

(declare-fun res!338709 () Bool)

(declare-fun e!499032 () Bool)

(assert (=> d!251924 (=> (not res!338709) (not e!499032))))

(assert (=> d!251924 (= res!338709 ((_ is HashMap!1193) (cache!1580 cacheUp!653)))))

(assert (=> d!251924 (= (inv!11003 cacheUp!653) e!499032)))

(declare-fun b!773696 () Bool)

(assert (=> b!773696 (= e!499032 (validCacheMapUp!107 (cache!1580 cacheUp!653)))))

(assert (= (and d!251924 res!338709) b!773696))

(assert (=> b!773696 m!1041487))

(assert (=> start!71680 d!251924))

(declare-fun d!251926 () Bool)

(declare-fun res!338712 () Bool)

(declare-fun e!499035 () Bool)

(assert (=> d!251926 (=> (not res!338712) (not e!499035))))

(assert (=> d!251926 (= res!338712 ((_ is HashMap!1191) (cache!1578 cacheFindLongestMatch!134)))))

(assert (=> d!251926 (= (inv!11002 cacheFindLongestMatch!134) e!499035)))

(declare-fun b!773699 () Bool)

(assert (=> b!773699 (= e!499035 (validCacheMapFindLongestMatch!53 (cache!1578 cacheFindLongestMatch!134) (totalInput!2137 cacheFindLongestMatch!134)))))

(assert (= (and d!251926 res!338712) b!773699))

(assert (=> b!773699 m!1041489))

(assert (=> start!71680 d!251926))

(declare-fun d!251928 () Bool)

(assert (=> d!251928 (= (array_inv!1388 (_keys!1514 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) (bvsge (size!7048 (_keys!1514 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!773638 d!251928))

(declare-fun d!251930 () Bool)

(assert (=> d!251930 (= (array_inv!1390 (_values!1499 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) (bvsge (size!7049 (_values!1499 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!773638 d!251930))

(declare-fun d!251932 () Bool)

(declare-fun e!499038 () Bool)

(assert (=> d!251932 e!499038))

(declare-fun res!338715 () Bool)

(assert (=> d!251932 (=> res!338715 e!499038)))

(declare-fun lt!314101 () Bool)

(assert (=> d!251932 (= res!338715 (not lt!314101))))

(declare-fun drop!400 (List!8683 Int) List!8683)

(declare-fun size!7051 (List!8683) Int)

(assert (=> d!251932 (= lt!314101 (= lt!314093 (drop!400 (list!3449 totalInput!472) (- (size!7051 (list!3449 totalInput!472)) (size!7051 lt!314093)))))))

(assert (=> d!251932 (= (isSuffix!225 lt!314093 (list!3449 totalInput!472)) lt!314101)))

(declare-fun b!773702 () Bool)

(assert (=> b!773702 (= e!499038 (>= (size!7051 (list!3449 totalInput!472)) (size!7051 lt!314093)))))

(assert (= (and d!251932 (not res!338715)) b!773702))

(assert (=> d!251932 m!1041465))

(declare-fun m!1041517 () Bool)

(assert (=> d!251932 m!1041517))

(declare-fun m!1041519 () Bool)

(assert (=> d!251932 m!1041519))

(assert (=> d!251932 m!1041465))

(declare-fun m!1041521 () Bool)

(assert (=> d!251932 m!1041521))

(assert (=> b!773702 m!1041465))

(assert (=> b!773702 m!1041517))

(assert (=> b!773702 m!1041519))

(assert (=> b!773657 d!251932))

(declare-fun d!251934 () Bool)

(declare-fun list!3450 (Conc!2897) List!8683)

(assert (=> d!251934 (= (list!3449 totalInput!472) (list!3450 (c!130338 totalInput!472)))))

(declare-fun bs!166023 () Bool)

(assert (= bs!166023 d!251934))

(declare-fun m!1041523 () Bool)

(assert (=> bs!166023 m!1041523))

(assert (=> b!773657 d!251934))

(declare-fun d!251936 () Bool)

(assert (=> d!251936 (= (list!3449 input!1432) (list!3450 (c!130338 input!1432)))))

(declare-fun bs!166024 () Bool)

(assert (= bs!166024 d!251936))

(declare-fun m!1041525 () Bool)

(assert (=> bs!166024 m!1041525))

(assert (=> b!773657 d!251936))

(declare-fun d!251938 () Bool)

(assert (=> d!251938 (= (array_inv!1388 (_keys!1515 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) (bvsge (size!7048 (_keys!1515 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!773664 d!251938))

(declare-fun d!251940 () Bool)

(assert (=> d!251940 (= (array_inv!1391 (_values!1500 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) (bvsge (size!7050 (_values!1500 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!773664 d!251940))

(declare-fun d!251942 () Bool)

(declare-fun e!499046 () Bool)

(assert (=> d!251942 e!499046))

(declare-fun res!338724 () Bool)

(assert (=> d!251942 (=> res!338724 e!499046)))

(declare-fun lt!314104 () Bool)

(assert (=> d!251942 (= res!338724 (not lt!314104))))

(declare-fun e!499047 () Bool)

(assert (=> d!251942 (= lt!314104 e!499047)))

(declare-fun res!338725 () Bool)

(assert (=> d!251942 (=> res!338725 e!499047)))

(assert (=> d!251942 (= res!338725 ((_ is Nil!8669) lt!314093))))

(assert (=> d!251942 (= (isPrefix!1000 lt!314093 lt!314093) lt!314104)))

(declare-fun b!773713 () Bool)

(declare-fun e!499045 () Bool)

(declare-fun tail!981 (List!8683) List!8683)

(assert (=> b!773713 (= e!499045 (isPrefix!1000 (tail!981 lt!314093) (tail!981 lt!314093)))))

(declare-fun b!773714 () Bool)

(assert (=> b!773714 (= e!499046 (>= (size!7051 lt!314093) (size!7051 lt!314093)))))

(declare-fun b!773711 () Bool)

(assert (=> b!773711 (= e!499047 e!499045)))

(declare-fun res!338726 () Bool)

(assert (=> b!773711 (=> (not res!338726) (not e!499045))))

(assert (=> b!773711 (= res!338726 (not ((_ is Nil!8669) lt!314093)))))

(declare-fun b!773712 () Bool)

(declare-fun res!338727 () Bool)

(assert (=> b!773712 (=> (not res!338727) (not e!499045))))

(declare-fun head!1423 (List!8683) C!4604)

(assert (=> b!773712 (= res!338727 (= (head!1423 lt!314093) (head!1423 lt!314093)))))

(assert (= (and d!251942 (not res!338725)) b!773711))

(assert (= (and b!773711 res!338726) b!773712))

(assert (= (and b!773712 res!338727) b!773713))

(assert (= (and d!251942 (not res!338724)) b!773714))

(declare-fun m!1041527 () Bool)

(assert (=> b!773713 m!1041527))

(assert (=> b!773713 m!1041527))

(assert (=> b!773713 m!1041527))

(assert (=> b!773713 m!1041527))

(declare-fun m!1041529 () Bool)

(assert (=> b!773713 m!1041529))

(assert (=> b!773714 m!1041519))

(assert (=> b!773714 m!1041519))

(declare-fun m!1041531 () Bool)

(assert (=> b!773712 m!1041531))

(assert (=> b!773712 m!1041531))

(assert (=> b!773634 d!251942))

(declare-fun d!251944 () Bool)

(assert (=> d!251944 (isPrefix!1000 lt!314093 lt!314093)))

(declare-fun lt!314107 () Unit!13142)

(declare-fun choose!4880 (List!8683 List!8683) Unit!13142)

(assert (=> d!251944 (= lt!314107 (choose!4880 lt!314093 lt!314093))))

(assert (=> d!251944 (= (lemmaIsPrefixRefl!711 lt!314093 lt!314093) lt!314107)))

(declare-fun bs!166025 () Bool)

(assert (= bs!166025 d!251944))

(assert (=> bs!166025 m!1041479))

(declare-fun m!1041533 () Bool)

(assert (=> bs!166025 m!1041533))

(assert (=> b!773634 d!251944))

(declare-fun d!251946 () Bool)

(declare-fun c!130344 () Bool)

(assert (=> d!251946 (= c!130344 ((_ is Node!2897) (c!130338 totalInput!472)))))

(declare-fun e!499048 () Bool)

(assert (=> d!251946 (= (inv!10999 (c!130338 totalInput!472)) e!499048)))

(declare-fun b!773715 () Bool)

(assert (=> b!773715 (= e!499048 (inv!11005 (c!130338 totalInput!472)))))

(declare-fun b!773716 () Bool)

(declare-fun e!499049 () Bool)

(assert (=> b!773716 (= e!499048 e!499049)))

(declare-fun res!338728 () Bool)

(assert (=> b!773716 (= res!338728 (not ((_ is Leaf!4251) (c!130338 totalInput!472))))))

(assert (=> b!773716 (=> res!338728 e!499049)))

(declare-fun b!773717 () Bool)

(assert (=> b!773717 (= e!499049 (inv!11006 (c!130338 totalInput!472)))))

(assert (= (and d!251946 c!130344) b!773715))

(assert (= (and d!251946 (not c!130344)) b!773716))

(assert (= (and b!773716 (not res!338728)) b!773717))

(declare-fun m!1041535 () Bool)

(assert (=> b!773715 m!1041535))

(declare-fun m!1041537 () Bool)

(assert (=> b!773717 m!1041537))

(assert (=> b!773653 d!251946))

(declare-fun d!251948 () Bool)

(assert (=> d!251948 (= (valid!983 cacheDown!666) (validCacheMapDown!107 (cache!1579 cacheDown!666)))))

(declare-fun bs!166026 () Bool)

(assert (= bs!166026 d!251948))

(assert (=> bs!166026 m!1041511))

(assert (=> b!773644 d!251948))

(declare-fun setElem!7191 () Context!806)

(declare-fun tp!254543 () Bool)

(declare-fun e!499056 () Bool)

(declare-fun setNonEmpty!7191 () Bool)

(declare-fun setRes!7191 () Bool)

(declare-fun inv!11007 (Context!806) Bool)

(assert (=> setNonEmpty!7191 (= setRes!7191 (and tp!254543 (inv!11007 setElem!7191) e!499056))))

(declare-fun setRest!7191 () (InoxSet Context!806))

(assert (=> setNonEmpty!7191 (= (_2!5879 (h!14074 mapDefault!5944)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7191 true) setRest!7191))))

(declare-fun e!499057 () Bool)

(declare-fun e!499058 () Bool)

(declare-fun tp!254544 () Bool)

(declare-fun b!773726 () Bool)

(declare-fun tp!254542 () Bool)

(declare-fun tp_is_empty!3739 () Bool)

(assert (=> b!773726 (= e!499058 (and tp!254544 (inv!11007 (_2!5878 (_1!5879 (h!14074 mapDefault!5944)))) e!499057 tp_is_empty!3739 setRes!7191 tp!254542))))

(declare-fun condSetEmpty!7191 () Bool)

(assert (=> b!773726 (= condSetEmpty!7191 (= (_2!5879 (h!14074 mapDefault!5944)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun setIsEmpty!7191 () Bool)

(assert (=> setIsEmpty!7191 setRes!7191))

(declare-fun b!773728 () Bool)

(declare-fun tp!254541 () Bool)

(assert (=> b!773728 (= e!499056 tp!254541)))

(declare-fun b!773727 () Bool)

(declare-fun tp!254545 () Bool)

(assert (=> b!773727 (= e!499057 tp!254545)))

(assert (=> b!773641 (= tp!254522 e!499058)))

(assert (= b!773726 b!773727))

(assert (= (and b!773726 condSetEmpty!7191) setIsEmpty!7191))

(assert (= (and b!773726 (not condSetEmpty!7191)) setNonEmpty!7191))

(assert (= setNonEmpty!7191 b!773728))

(assert (= (and b!773641 ((_ is Cons!8673) mapDefault!5944)) b!773726))

(declare-fun m!1041539 () Bool)

(assert (=> setNonEmpty!7191 m!1041539))

(declare-fun m!1041541 () Bool)

(assert (=> b!773726 m!1041541))

(declare-fun e!499065 () Bool)

(declare-fun setRes!7194 () Bool)

(declare-fun setNonEmpty!7194 () Bool)

(declare-fun setElem!7194 () Context!806)

(declare-fun tp!254555 () Bool)

(assert (=> setNonEmpty!7194 (= setRes!7194 (and tp!254555 (inv!11007 setElem!7194) e!499065))))

(declare-fun setRest!7194 () (InoxSet Context!806))

(assert (=> setNonEmpty!7194 (= (_2!5881 (h!14075 mapDefault!5943)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7194 true) setRest!7194))))

(declare-fun b!773737 () Bool)

(declare-fun tp!254554 () Bool)

(assert (=> b!773737 (= e!499065 tp!254554)))

(declare-fun e!499067 () Bool)

(assert (=> b!773661 (= tp!254510 e!499067)))

(declare-fun setIsEmpty!7194 () Bool)

(assert (=> setIsEmpty!7194 setRes!7194))

(declare-fun b!773738 () Bool)

(declare-fun tp!254557 () Bool)

(declare-fun e!499066 () Bool)

(assert (=> b!773738 (= e!499067 (and (inv!11007 (_1!5880 (_1!5881 (h!14075 mapDefault!5943)))) e!499066 tp_is_empty!3739 setRes!7194 tp!254557))))

(declare-fun condSetEmpty!7194 () Bool)

(assert (=> b!773738 (= condSetEmpty!7194 (= (_2!5881 (h!14075 mapDefault!5943)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773739 () Bool)

(declare-fun tp!254556 () Bool)

(assert (=> b!773739 (= e!499066 tp!254556)))

(assert (= b!773738 b!773739))

(assert (= (and b!773738 condSetEmpty!7194) setIsEmpty!7194))

(assert (= (and b!773738 (not condSetEmpty!7194)) setNonEmpty!7194))

(assert (= setNonEmpty!7194 b!773737))

(assert (= (and b!773661 ((_ is Cons!8674) mapDefault!5943)) b!773738))

(declare-fun m!1041543 () Bool)

(assert (=> setNonEmpty!7194 m!1041543))

(declare-fun m!1041545 () Bool)

(assert (=> b!773738 m!1041545))

(declare-fun setRes!7200 () Bool)

(declare-fun tp!254585 () Bool)

(declare-fun mapDefault!5947 () List!8687)

(declare-fun tp!254581 () Bool)

(declare-fun e!499083 () Bool)

(declare-fun e!499080 () Bool)

(declare-fun b!773754 () Bool)

(assert (=> b!773754 (= e!499080 (and tp!254585 (inv!11007 (_2!5878 (_1!5879 (h!14074 mapDefault!5947)))) e!499083 tp_is_empty!3739 setRes!7200 tp!254581))))

(declare-fun condSetEmpty!7200 () Bool)

(assert (=> b!773754 (= condSetEmpty!7200 (= (_2!5879 (h!14074 mapDefault!5947)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773755 () Bool)

(declare-fun e!499081 () Bool)

(declare-fun tp!254582 () Bool)

(assert (=> b!773755 (= e!499081 tp!254582)))

(declare-fun b!773756 () Bool)

(declare-fun e!499084 () Bool)

(declare-fun tp!254580 () Bool)

(assert (=> b!773756 (= e!499084 tp!254580)))

(declare-fun setRes!7199 () Bool)

(declare-fun tp!254590 () Bool)

(declare-fun setElem!7199 () Context!806)

(declare-fun setNonEmpty!7199 () Bool)

(assert (=> setNonEmpty!7199 (= setRes!7199 (and tp!254590 (inv!11007 setElem!7199) e!499084))))

(declare-fun mapValue!5947 () List!8687)

(declare-fun setRest!7199 () (InoxSet Context!806))

(assert (=> setNonEmpty!7199 (= (_2!5879 (h!14074 mapValue!5947)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7199 true) setRest!7199))))

(declare-fun setIsEmpty!7199 () Bool)

(assert (=> setIsEmpty!7199 setRes!7199))

(declare-fun b!773757 () Bool)

(declare-fun e!499082 () Bool)

(declare-fun tp!254583 () Bool)

(assert (=> b!773757 (= e!499082 tp!254583)))

(declare-fun tp!254584 () Bool)

(declare-fun b!773758 () Bool)

(declare-fun tp!254587 () Bool)

(declare-fun e!499085 () Bool)

(assert (=> b!773758 (= e!499085 (and tp!254584 (inv!11007 (_2!5878 (_1!5879 (h!14074 mapValue!5947)))) e!499081 tp_is_empty!3739 setRes!7199 tp!254587))))

(declare-fun condSetEmpty!7199 () Bool)

(assert (=> b!773758 (= condSetEmpty!7199 (= (_2!5879 (h!14074 mapValue!5947)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun setIsEmpty!7200 () Bool)

(assert (=> setIsEmpty!7200 setRes!7200))

(declare-fun setElem!7200 () Context!806)

(declare-fun setNonEmpty!7200 () Bool)

(declare-fun tp!254588 () Bool)

(assert (=> setNonEmpty!7200 (= setRes!7200 (and tp!254588 (inv!11007 setElem!7200) e!499082))))

(declare-fun setRest!7200 () (InoxSet Context!806))

(assert (=> setNonEmpty!7200 (= (_2!5879 (h!14074 mapDefault!5947)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7200 true) setRest!7200))))

(declare-fun b!773759 () Bool)

(declare-fun tp!254589 () Bool)

(assert (=> b!773759 (= e!499083 tp!254589)))

(declare-fun mapNonEmpty!5947 () Bool)

(declare-fun mapRes!5947 () Bool)

(declare-fun tp!254586 () Bool)

(assert (=> mapNonEmpty!5947 (= mapRes!5947 (and tp!254586 e!499085))))

(declare-fun mapKey!5947 () (_ BitVec 32))

(declare-fun mapRest!5947 () (Array (_ BitVec 32) List!8687))

(assert (=> mapNonEmpty!5947 (= mapRest!5944 (store mapRest!5947 mapKey!5947 mapValue!5947))))

(declare-fun condMapEmpty!5947 () Bool)

(assert (=> mapNonEmpty!5942 (= condMapEmpty!5947 (= mapRest!5944 ((as const (Array (_ BitVec 32) List!8687)) mapDefault!5947)))))

(assert (=> mapNonEmpty!5942 (= tp!254503 (and e!499080 mapRes!5947))))

(declare-fun mapIsEmpty!5947 () Bool)

(assert (=> mapIsEmpty!5947 mapRes!5947))

(assert (= (and mapNonEmpty!5942 condMapEmpty!5947) mapIsEmpty!5947))

(assert (= (and mapNonEmpty!5942 (not condMapEmpty!5947)) mapNonEmpty!5947))

(assert (= b!773758 b!773755))

(assert (= (and b!773758 condSetEmpty!7199) setIsEmpty!7199))

(assert (= (and b!773758 (not condSetEmpty!7199)) setNonEmpty!7199))

(assert (= setNonEmpty!7199 b!773756))

(assert (= (and mapNonEmpty!5947 ((_ is Cons!8673) mapValue!5947)) b!773758))

(assert (= b!773754 b!773759))

(assert (= (and b!773754 condSetEmpty!7200) setIsEmpty!7200))

(assert (= (and b!773754 (not condSetEmpty!7200)) setNonEmpty!7200))

(assert (= setNonEmpty!7200 b!773757))

(assert (= (and mapNonEmpty!5942 ((_ is Cons!8673) mapDefault!5947)) b!773754))

(declare-fun m!1041547 () Bool)

(assert (=> setNonEmpty!7199 m!1041547))

(declare-fun m!1041549 () Bool)

(assert (=> mapNonEmpty!5947 m!1041549))

(declare-fun m!1041551 () Bool)

(assert (=> b!773754 m!1041551))

(declare-fun m!1041553 () Bool)

(assert (=> b!773758 m!1041553))

(declare-fun m!1041555 () Bool)

(assert (=> setNonEmpty!7200 m!1041555))

(declare-fun setRes!7201 () Bool)

(declare-fun setElem!7201 () Context!806)

(declare-fun setNonEmpty!7201 () Bool)

(declare-fun e!499086 () Bool)

(declare-fun tp!254593 () Bool)

(assert (=> setNonEmpty!7201 (= setRes!7201 (and tp!254593 (inv!11007 setElem!7201) e!499086))))

(declare-fun setRest!7201 () (InoxSet Context!806))

(assert (=> setNonEmpty!7201 (= (_2!5879 (h!14074 mapValue!5943)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7201 true) setRest!7201))))

(declare-fun e!499087 () Bool)

(declare-fun tp!254592 () Bool)

(declare-fun e!499088 () Bool)

(declare-fun tp!254594 () Bool)

(declare-fun b!773760 () Bool)

(assert (=> b!773760 (= e!499088 (and tp!254594 (inv!11007 (_2!5878 (_1!5879 (h!14074 mapValue!5943)))) e!499087 tp_is_empty!3739 setRes!7201 tp!254592))))

(declare-fun condSetEmpty!7201 () Bool)

(assert (=> b!773760 (= condSetEmpty!7201 (= (_2!5879 (h!14074 mapValue!5943)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun setIsEmpty!7201 () Bool)

(assert (=> setIsEmpty!7201 setRes!7201))

(declare-fun b!773762 () Bool)

(declare-fun tp!254591 () Bool)

(assert (=> b!773762 (= e!499086 tp!254591)))

(declare-fun b!773761 () Bool)

(declare-fun tp!254595 () Bool)

(assert (=> b!773761 (= e!499087 tp!254595)))

(assert (=> mapNonEmpty!5942 (= tp!254527 e!499088)))

(assert (= b!773760 b!773761))

(assert (= (and b!773760 condSetEmpty!7201) setIsEmpty!7201))

(assert (= (and b!773760 (not condSetEmpty!7201)) setNonEmpty!7201))

(assert (= setNonEmpty!7201 b!773762))

(assert (= (and mapNonEmpty!5942 ((_ is Cons!8673) mapValue!5943)) b!773760))

(declare-fun m!1041557 () Bool)

(assert (=> setNonEmpty!7201 m!1041557))

(declare-fun m!1041559 () Bool)

(assert (=> b!773760 m!1041559))

(declare-fun mapIsEmpty!5950 () Bool)

(declare-fun mapRes!5950 () Bool)

(assert (=> mapIsEmpty!5950 mapRes!5950))

(declare-fun setNonEmpty!7206 () Bool)

(declare-fun tp!254616 () Bool)

(declare-fun e!499098 () Bool)

(declare-fun setRes!7207 () Bool)

(declare-fun setElem!7206 () Context!806)

(assert (=> setNonEmpty!7206 (= setRes!7207 (and tp!254616 (inv!11007 setElem!7206) e!499098))))

(declare-fun mapDefault!5950 () List!8686)

(declare-fun setRest!7207 () (InoxSet Context!806))

(assert (=> setNonEmpty!7206 (= (_1!5876 (_1!5877 (h!14073 mapDefault!5950))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7206 true) setRest!7207))))

(declare-fun condMapEmpty!5950 () Bool)

(assert (=> mapNonEmpty!5943 (= condMapEmpty!5950 (= mapRest!5943 ((as const (Array (_ BitVec 32) List!8686)) mapDefault!5950)))))

(declare-fun e!499100 () Bool)

(assert (=> mapNonEmpty!5943 (= tp!254508 (and e!499100 mapRes!5950))))

(declare-fun b!773773 () Bool)

(declare-fun tp!254610 () Bool)

(assert (=> b!773773 (= e!499098 tp!254610)))

(declare-fun setIsEmpty!7206 () Bool)

(assert (=> setIsEmpty!7206 setRes!7207))

(declare-fun setIsEmpty!7207 () Bool)

(declare-fun setRes!7206 () Bool)

(assert (=> setIsEmpty!7207 setRes!7206))

(declare-fun mapNonEmpty!5950 () Bool)

(declare-fun tp!254615 () Bool)

(declare-fun e!499099 () Bool)

(assert (=> mapNonEmpty!5950 (= mapRes!5950 (and tp!254615 e!499099))))

(declare-fun mapValue!5950 () List!8686)

(declare-fun mapKey!5950 () (_ BitVec 32))

(declare-fun mapRest!5950 () (Array (_ BitVec 32) List!8686))

(assert (=> mapNonEmpty!5950 (= mapRest!5943 (store mapRest!5950 mapKey!5950 mapValue!5950))))

(declare-fun b!773774 () Bool)

(declare-fun e!499097 () Bool)

(declare-fun tp!254614 () Bool)

(assert (=> b!773774 (= e!499097 tp!254614)))

(declare-fun b!773775 () Bool)

(declare-fun tp!254613 () Bool)

(assert (=> b!773775 (= e!499099 (and setRes!7206 tp!254613))))

(declare-fun condSetEmpty!7206 () Bool)

(assert (=> b!773775 (= condSetEmpty!7206 (= (_1!5876 (_1!5877 (h!14073 mapValue!5950))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773776 () Bool)

(declare-fun tp!254611 () Bool)

(assert (=> b!773776 (= e!499100 (and setRes!7207 tp!254611))))

(declare-fun condSetEmpty!7207 () Bool)

(assert (=> b!773776 (= condSetEmpty!7207 (= (_1!5876 (_1!5877 (h!14073 mapDefault!5950))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun tp!254612 () Bool)

(declare-fun setElem!7207 () Context!806)

(declare-fun setNonEmpty!7207 () Bool)

(assert (=> setNonEmpty!7207 (= setRes!7206 (and tp!254612 (inv!11007 setElem!7207) e!499097))))

(declare-fun setRest!7206 () (InoxSet Context!806))

(assert (=> setNonEmpty!7207 (= (_1!5876 (_1!5877 (h!14073 mapValue!5950))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7207 true) setRest!7206))))

(assert (= (and mapNonEmpty!5943 condMapEmpty!5950) mapIsEmpty!5950))

(assert (= (and mapNonEmpty!5943 (not condMapEmpty!5950)) mapNonEmpty!5950))

(assert (= (and b!773775 condSetEmpty!7206) setIsEmpty!7207))

(assert (= (and b!773775 (not condSetEmpty!7206)) setNonEmpty!7207))

(assert (= setNonEmpty!7207 b!773774))

(assert (= (and mapNonEmpty!5950 ((_ is Cons!8672) mapValue!5950)) b!773775))

(assert (= (and b!773776 condSetEmpty!7207) setIsEmpty!7206))

(assert (= (and b!773776 (not condSetEmpty!7207)) setNonEmpty!7206))

(assert (= setNonEmpty!7206 b!773773))

(assert (= (and mapNonEmpty!5943 ((_ is Cons!8672) mapDefault!5950)) b!773776))

(declare-fun m!1041561 () Bool)

(assert (=> setNonEmpty!7206 m!1041561))

(declare-fun m!1041563 () Bool)

(assert (=> mapNonEmpty!5950 m!1041563))

(declare-fun m!1041565 () Bool)

(assert (=> setNonEmpty!7207 m!1041565))

(declare-fun setIsEmpty!7210 () Bool)

(declare-fun setRes!7210 () Bool)

(assert (=> setIsEmpty!7210 setRes!7210))

(declare-fun setElem!7210 () Context!806)

(declare-fun tp!254623 () Bool)

(declare-fun setNonEmpty!7210 () Bool)

(declare-fun e!499106 () Bool)

(assert (=> setNonEmpty!7210 (= setRes!7210 (and tp!254623 (inv!11007 setElem!7210) e!499106))))

(declare-fun setRest!7210 () (InoxSet Context!806))

(assert (=> setNonEmpty!7210 (= (_1!5876 (_1!5877 (h!14073 mapValue!5944))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7210 true) setRest!7210))))

(declare-fun b!773783 () Bool)

(declare-fun e!499105 () Bool)

(declare-fun tp!254624 () Bool)

(assert (=> b!773783 (= e!499105 (and setRes!7210 tp!254624))))

(declare-fun condSetEmpty!7210 () Bool)

(assert (=> b!773783 (= condSetEmpty!7210 (= (_1!5876 (_1!5877 (h!14073 mapValue!5944))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773784 () Bool)

(declare-fun tp!254625 () Bool)

(assert (=> b!773784 (= e!499106 tp!254625)))

(assert (=> mapNonEmpty!5943 (= tp!254520 e!499105)))

(assert (= (and b!773783 condSetEmpty!7210) setIsEmpty!7210))

(assert (= (and b!773783 (not condSetEmpty!7210)) setNonEmpty!7210))

(assert (= setNonEmpty!7210 b!773784))

(assert (= (and mapNonEmpty!5943 ((_ is Cons!8672) mapValue!5944)) b!773783))

(declare-fun m!1041567 () Bool)

(assert (=> setNonEmpty!7210 m!1041567))

(declare-fun setIsEmpty!7211 () Bool)

(declare-fun setRes!7211 () Bool)

(assert (=> setIsEmpty!7211 setRes!7211))

(declare-fun setElem!7211 () Context!806)

(declare-fun setNonEmpty!7211 () Bool)

(declare-fun e!499108 () Bool)

(declare-fun tp!254626 () Bool)

(assert (=> setNonEmpty!7211 (= setRes!7211 (and tp!254626 (inv!11007 setElem!7211) e!499108))))

(declare-fun setRest!7211 () (InoxSet Context!806))

(assert (=> setNonEmpty!7211 (= (_1!5876 (_1!5877 (h!14073 mapDefault!5942))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7211 true) setRest!7211))))

(declare-fun b!773785 () Bool)

(declare-fun e!499107 () Bool)

(declare-fun tp!254627 () Bool)

(assert (=> b!773785 (= e!499107 (and setRes!7211 tp!254627))))

(declare-fun condSetEmpty!7211 () Bool)

(assert (=> b!773785 (= condSetEmpty!7211 (= (_1!5876 (_1!5877 (h!14073 mapDefault!5942))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773786 () Bool)

(declare-fun tp!254628 () Bool)

(assert (=> b!773786 (= e!499108 tp!254628)))

(assert (=> b!773649 (= tp!254504 e!499107)))

(assert (= (and b!773785 condSetEmpty!7211) setIsEmpty!7211))

(assert (= (and b!773785 (not condSetEmpty!7211)) setNonEmpty!7211))

(assert (= setNonEmpty!7211 b!773786))

(assert (= (and b!773649 ((_ is Cons!8672) mapDefault!5942)) b!773785))

(declare-fun m!1041569 () Bool)

(assert (=> setNonEmpty!7211 m!1041569))

(declare-fun b!773799 () Bool)

(declare-fun e!499111 () Bool)

(declare-fun tp!254639 () Bool)

(assert (=> b!773799 (= e!499111 tp!254639)))

(declare-fun b!773800 () Bool)

(declare-fun tp!254643 () Bool)

(declare-fun tp!254642 () Bool)

(assert (=> b!773800 (= e!499111 (and tp!254643 tp!254642))))

(assert (=> b!773658 (= tp!254514 e!499111)))

(declare-fun b!773798 () Bool)

(declare-fun tp!254641 () Bool)

(declare-fun tp!254640 () Bool)

(assert (=> b!773798 (= e!499111 (and tp!254641 tp!254640))))

(declare-fun b!773797 () Bool)

(assert (=> b!773797 (= e!499111 tp_is_empty!3739)))

(assert (= (and b!773658 ((_ is ElementMatch!2001) (regex!1647 (h!14071 rulesArg!343)))) b!773797))

(assert (= (and b!773658 ((_ is Concat!3693) (regex!1647 (h!14071 rulesArg!343)))) b!773798))

(assert (= (and b!773658 ((_ is Star!2001) (regex!1647 (h!14071 rulesArg!343)))) b!773799))

(assert (= (and b!773658 ((_ is Union!2001) (regex!1647 (h!14071 rulesArg!343)))) b!773800))

(declare-fun b!773809 () Bool)

(declare-fun tp!254650 () Bool)

(declare-fun tp!254651 () Bool)

(declare-fun e!499116 () Bool)

(assert (=> b!773809 (= e!499116 (and (inv!10999 (left!6420 (c!130338 input!1432))) tp!254650 (inv!10999 (right!6750 (c!130338 input!1432))) tp!254651))))

(declare-fun b!773811 () Bool)

(declare-fun e!499117 () Bool)

(declare-fun tp!254652 () Bool)

(assert (=> b!773811 (= e!499117 tp!254652)))

(declare-fun b!773810 () Bool)

(declare-fun inv!11008 (IArray!5795) Bool)

(assert (=> b!773810 (= e!499116 (and (inv!11008 (xs!5584 (c!130338 input!1432))) e!499117))))

(assert (=> b!773667 (= tp!254523 (and (inv!10999 (c!130338 input!1432)) e!499116))))

(assert (= (and b!773667 ((_ is Node!2897) (c!130338 input!1432))) b!773809))

(assert (= b!773810 b!773811))

(assert (= (and b!773667 ((_ is Leaf!4251) (c!130338 input!1432))) b!773810))

(declare-fun m!1041571 () Bool)

(assert (=> b!773809 m!1041571))

(declare-fun m!1041573 () Bool)

(assert (=> b!773809 m!1041573))

(declare-fun m!1041575 () Bool)

(assert (=> b!773810 m!1041575))

(assert (=> b!773667 m!1041435))

(declare-fun setIsEmpty!7212 () Bool)

(declare-fun setRes!7212 () Bool)

(assert (=> setIsEmpty!7212 setRes!7212))

(declare-fun e!499119 () Bool)

(declare-fun setNonEmpty!7212 () Bool)

(declare-fun setElem!7212 () Context!806)

(declare-fun tp!254653 () Bool)

(assert (=> setNonEmpty!7212 (= setRes!7212 (and tp!254653 (inv!11007 setElem!7212) e!499119))))

(declare-fun setRest!7212 () (InoxSet Context!806))

(assert (=> setNonEmpty!7212 (= (_1!5876 (_1!5877 (h!14073 (zeroValue!1476 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7212 true) setRest!7212))))

(declare-fun b!773812 () Bool)

(declare-fun e!499118 () Bool)

(declare-fun tp!254654 () Bool)

(assert (=> b!773812 (= e!499118 (and setRes!7212 tp!254654))))

(declare-fun condSetEmpty!7212 () Bool)

(assert (=> b!773812 (= condSetEmpty!7212 (= (_1!5876 (_1!5877 (h!14073 (zeroValue!1476 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773813 () Bool)

(declare-fun tp!254655 () Bool)

(assert (=> b!773813 (= e!499119 tp!254655)))

(assert (=> b!773640 (= tp!254509 e!499118)))

(assert (= (and b!773812 condSetEmpty!7212) setIsEmpty!7212))

(assert (= (and b!773812 (not condSetEmpty!7212)) setNonEmpty!7212))

(assert (= setNonEmpty!7212 b!773813))

(assert (= (and b!773640 ((_ is Cons!8672) (zeroValue!1476 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134)))))))) b!773812))

(declare-fun m!1041577 () Bool)

(assert (=> setNonEmpty!7212 m!1041577))

(declare-fun setIsEmpty!7213 () Bool)

(declare-fun setRes!7213 () Bool)

(assert (=> setIsEmpty!7213 setRes!7213))

(declare-fun e!499121 () Bool)

(declare-fun setElem!7213 () Context!806)

(declare-fun tp!254656 () Bool)

(declare-fun setNonEmpty!7213 () Bool)

(assert (=> setNonEmpty!7213 (= setRes!7213 (and tp!254656 (inv!11007 setElem!7213) e!499121))))

(declare-fun setRest!7213 () (InoxSet Context!806))

(assert (=> setNonEmpty!7213 (= (_1!5876 (_1!5877 (h!14073 (minValue!1476 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7213 true) setRest!7213))))

(declare-fun b!773814 () Bool)

(declare-fun e!499120 () Bool)

(declare-fun tp!254657 () Bool)

(assert (=> b!773814 (= e!499120 (and setRes!7213 tp!254657))))

(declare-fun condSetEmpty!7213 () Bool)

(assert (=> b!773814 (= condSetEmpty!7213 (= (_1!5876 (_1!5877 (h!14073 (minValue!1476 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134))))))))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773815 () Bool)

(declare-fun tp!254658 () Bool)

(assert (=> b!773815 (= e!499121 tp!254658)))

(assert (=> b!773640 (= tp!254530 e!499120)))

(assert (= (and b!773814 condSetEmpty!7213) setIsEmpty!7213))

(assert (= (and b!773814 (not condSetEmpty!7213)) setNonEmpty!7213))

(assert (= setNonEmpty!7213 b!773815))

(assert (= (and b!773640 ((_ is Cons!8672) (minValue!1476 (v!18798 (underlying!2621 (v!18799 (underlying!2622 (cache!1578 cacheFindLongestMatch!134)))))))) b!773814))

(declare-fun m!1041579 () Bool)

(assert (=> setNonEmpty!7213 m!1041579))

(declare-fun b!773826 () Bool)

(declare-fun b_free!24621 () Bool)

(declare-fun b_next!24685 () Bool)

(assert (=> b!773826 (= b_free!24621 (not b_next!24685))))

(declare-fun tp!254669 () Bool)

(declare-fun b_and!72101 () Bool)

(assert (=> b!773826 (= tp!254669 b_and!72101)))

(declare-fun b_free!24623 () Bool)

(declare-fun b_next!24687 () Bool)

(assert (=> b!773826 (= b_free!24623 (not b_next!24687))))

(declare-fun tp!254670 () Bool)

(declare-fun b_and!72103 () Bool)

(assert (=> b!773826 (= tp!254670 b_and!72103)))

(declare-fun e!499130 () Bool)

(assert (=> b!773826 (= e!499130 (and tp!254669 tp!254670))))

(declare-fun tp!254667 () Bool)

(declare-fun b!773825 () Bool)

(declare-fun e!499132 () Bool)

(assert (=> b!773825 (= e!499132 (and tp!254667 (inv!10998 (tag!1909 (h!14071 (t!91966 rulesArg!343)))) (inv!11000 (transformation!1647 (h!14071 (t!91966 rulesArg!343)))) e!499130))))

(declare-fun b!773824 () Bool)

(declare-fun e!499131 () Bool)

(declare-fun tp!254668 () Bool)

(assert (=> b!773824 (= e!499131 (and e!499132 tp!254668))))

(assert (=> b!773659 (= tp!254516 e!499131)))

(assert (= b!773825 b!773826))

(assert (= b!773824 b!773825))

(assert (= (and b!773659 ((_ is Cons!8670) (t!91966 rulesArg!343))) b!773824))

(declare-fun m!1041581 () Bool)

(assert (=> b!773825 m!1041581))

(declare-fun m!1041583 () Bool)

(assert (=> b!773825 m!1041583))

(declare-fun e!499134 () Bool)

(declare-fun tp!254671 () Bool)

(declare-fun b!773827 () Bool)

(declare-fun tp!254672 () Bool)

(assert (=> b!773827 (= e!499134 (and (inv!10999 (left!6420 (c!130338 (totalInput!2137 cacheFindLongestMatch!134)))) tp!254671 (inv!10999 (right!6750 (c!130338 (totalInput!2137 cacheFindLongestMatch!134)))) tp!254672))))

(declare-fun b!773829 () Bool)

(declare-fun e!499135 () Bool)

(declare-fun tp!254673 () Bool)

(assert (=> b!773829 (= e!499135 tp!254673)))

(declare-fun b!773828 () Bool)

(assert (=> b!773828 (= e!499134 (and (inv!11008 (xs!5584 (c!130338 (totalInput!2137 cacheFindLongestMatch!134)))) e!499135))))

(assert (=> b!773646 (= tp!254519 (and (inv!10999 (c!130338 (totalInput!2137 cacheFindLongestMatch!134))) e!499134))))

(assert (= (and b!773646 ((_ is Node!2897) (c!130338 (totalInput!2137 cacheFindLongestMatch!134)))) b!773827))

(assert (= b!773828 b!773829))

(assert (= (and b!773646 ((_ is Leaf!4251) (c!130338 (totalInput!2137 cacheFindLongestMatch!134)))) b!773828))

(declare-fun m!1041585 () Bool)

(assert (=> b!773827 m!1041585))

(declare-fun m!1041587 () Bool)

(assert (=> b!773827 m!1041587))

(declare-fun m!1041589 () Bool)

(assert (=> b!773828 m!1041589))

(assert (=> b!773646 m!1041437))

(declare-fun setRes!7214 () Bool)

(declare-fun e!499136 () Bool)

(declare-fun setNonEmpty!7214 () Bool)

(declare-fun setElem!7214 () Context!806)

(declare-fun tp!254676 () Bool)

(assert (=> setNonEmpty!7214 (= setRes!7214 (and tp!254676 (inv!11007 setElem!7214) e!499136))))

(declare-fun setRest!7214 () (InoxSet Context!806))

(assert (=> setNonEmpty!7214 (= (_2!5879 (h!14074 (zeroValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7214 true) setRest!7214))))

(declare-fun e!499138 () Bool)

(declare-fun tp!254675 () Bool)

(declare-fun e!499137 () Bool)

(declare-fun b!773830 () Bool)

(declare-fun tp!254677 () Bool)

(assert (=> b!773830 (= e!499138 (and tp!254677 (inv!11007 (_2!5878 (_1!5879 (h!14074 (zeroValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))))) e!499137 tp_is_empty!3739 setRes!7214 tp!254675))))

(declare-fun condSetEmpty!7214 () Bool)

(assert (=> b!773830 (= condSetEmpty!7214 (= (_2!5879 (h!14074 (zeroValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun setIsEmpty!7214 () Bool)

(assert (=> setIsEmpty!7214 setRes!7214))

(declare-fun b!773832 () Bool)

(declare-fun tp!254674 () Bool)

(assert (=> b!773832 (= e!499136 tp!254674)))

(declare-fun b!773831 () Bool)

(declare-fun tp!254678 () Bool)

(assert (=> b!773831 (= e!499137 tp!254678)))

(assert (=> b!773638 (= tp!254512 e!499138)))

(assert (= b!773830 b!773831))

(assert (= (and b!773830 condSetEmpty!7214) setIsEmpty!7214))

(assert (= (and b!773830 (not condSetEmpty!7214)) setNonEmpty!7214))

(assert (= setNonEmpty!7214 b!773832))

(assert (= (and b!773638 ((_ is Cons!8673) (zeroValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))) b!773830))

(declare-fun m!1041591 () Bool)

(assert (=> setNonEmpty!7214 m!1041591))

(declare-fun m!1041593 () Bool)

(assert (=> b!773830 m!1041593))

(declare-fun tp!254681 () Bool)

(declare-fun e!499139 () Bool)

(declare-fun setRes!7215 () Bool)

(declare-fun setNonEmpty!7215 () Bool)

(declare-fun setElem!7215 () Context!806)

(assert (=> setNonEmpty!7215 (= setRes!7215 (and tp!254681 (inv!11007 setElem!7215) e!499139))))

(declare-fun setRest!7215 () (InoxSet Context!806))

(assert (=> setNonEmpty!7215 (= (_2!5879 (h!14074 (minValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7215 true) setRest!7215))))

(declare-fun tp!254680 () Bool)

(declare-fun e!499140 () Bool)

(declare-fun e!499141 () Bool)

(declare-fun tp!254682 () Bool)

(declare-fun b!773833 () Bool)

(assert (=> b!773833 (= e!499141 (and tp!254682 (inv!11007 (_2!5878 (_1!5879 (h!14074 (minValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))))) e!499140 tp_is_empty!3739 setRes!7215 tp!254680))))

(declare-fun condSetEmpty!7215 () Bool)

(assert (=> b!773833 (= condSetEmpty!7215 (= (_2!5879 (h!14074 (minValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun setIsEmpty!7215 () Bool)

(assert (=> setIsEmpty!7215 setRes!7215))

(declare-fun b!773835 () Bool)

(declare-fun tp!254679 () Bool)

(assert (=> b!773835 (= e!499139 tp!254679)))

(declare-fun b!773834 () Bool)

(declare-fun tp!254683 () Bool)

(assert (=> b!773834 (= e!499140 tp!254683)))

(assert (=> b!773638 (= tp!254524 e!499141)))

(assert (= b!773833 b!773834))

(assert (= (and b!773833 condSetEmpty!7215) setIsEmpty!7215))

(assert (= (and b!773833 (not condSetEmpty!7215)) setNonEmpty!7215))

(assert (= setNonEmpty!7215 b!773835))

(assert (= (and b!773638 ((_ is Cons!8673) (minValue!1477 (v!18800 (underlying!2623 (v!18801 (underlying!2624 (cache!1579 cacheDown!666)))))))) b!773833))

(declare-fun m!1041595 () Bool)

(assert (=> setNonEmpty!7215 m!1041595))

(declare-fun m!1041597 () Bool)

(assert (=> b!773833 m!1041597))

(declare-fun setNonEmpty!7216 () Bool)

(declare-fun tp!254685 () Bool)

(declare-fun e!499142 () Bool)

(declare-fun setElem!7216 () Context!806)

(declare-fun setRes!7216 () Bool)

(assert (=> setNonEmpty!7216 (= setRes!7216 (and tp!254685 (inv!11007 setElem!7216) e!499142))))

(declare-fun setRest!7216 () (InoxSet Context!806))

(assert (=> setNonEmpty!7216 (= (_2!5881 (h!14075 (zeroValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7216 true) setRest!7216))))

(declare-fun b!773836 () Bool)

(declare-fun tp!254684 () Bool)

(assert (=> b!773836 (= e!499142 tp!254684)))

(declare-fun e!499144 () Bool)

(assert (=> b!773664 (= tp!254511 e!499144)))

(declare-fun setIsEmpty!7216 () Bool)

(assert (=> setIsEmpty!7216 setRes!7216))

(declare-fun b!773837 () Bool)

(declare-fun tp!254687 () Bool)

(declare-fun e!499143 () Bool)

(assert (=> b!773837 (= e!499144 (and (inv!11007 (_1!5880 (_1!5881 (h!14075 (zeroValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))))) e!499143 tp_is_empty!3739 setRes!7216 tp!254687))))

(declare-fun condSetEmpty!7216 () Bool)

(assert (=> b!773837 (= condSetEmpty!7216 (= (_2!5881 (h!14075 (zeroValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773838 () Bool)

(declare-fun tp!254686 () Bool)

(assert (=> b!773838 (= e!499143 tp!254686)))

(assert (= b!773837 b!773838))

(assert (= (and b!773837 condSetEmpty!7216) setIsEmpty!7216))

(assert (= (and b!773837 (not condSetEmpty!7216)) setNonEmpty!7216))

(assert (= setNonEmpty!7216 b!773836))

(assert (= (and b!773664 ((_ is Cons!8674) (zeroValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))) b!773837))

(declare-fun m!1041599 () Bool)

(assert (=> setNonEmpty!7216 m!1041599))

(declare-fun m!1041601 () Bool)

(assert (=> b!773837 m!1041601))

(declare-fun setRes!7217 () Bool)

(declare-fun e!499145 () Bool)

(declare-fun setElem!7217 () Context!806)

(declare-fun setNonEmpty!7217 () Bool)

(declare-fun tp!254689 () Bool)

(assert (=> setNonEmpty!7217 (= setRes!7217 (and tp!254689 (inv!11007 setElem!7217) e!499145))))

(declare-fun setRest!7217 () (InoxSet Context!806))

(assert (=> setNonEmpty!7217 (= (_2!5881 (h!14075 (minValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7217 true) setRest!7217))))

(declare-fun b!773839 () Bool)

(declare-fun tp!254688 () Bool)

(assert (=> b!773839 (= e!499145 tp!254688)))

(declare-fun e!499147 () Bool)

(assert (=> b!773664 (= tp!254529 e!499147)))

(declare-fun setIsEmpty!7217 () Bool)

(assert (=> setIsEmpty!7217 setRes!7217))

(declare-fun tp!254691 () Bool)

(declare-fun e!499146 () Bool)

(declare-fun b!773840 () Bool)

(assert (=> b!773840 (= e!499147 (and (inv!11007 (_1!5880 (_1!5881 (h!14075 (minValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))))) e!499146 tp_is_empty!3739 setRes!7217 tp!254691))))

(declare-fun condSetEmpty!7217 () Bool)

(assert (=> b!773840 (= condSetEmpty!7217 (= (_2!5881 (h!14075 (minValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773841 () Bool)

(declare-fun tp!254690 () Bool)

(assert (=> b!773841 (= e!499146 tp!254690)))

(assert (= b!773840 b!773841))

(assert (= (and b!773840 condSetEmpty!7217) setIsEmpty!7217))

(assert (= (and b!773840 (not condSetEmpty!7217)) setNonEmpty!7217))

(assert (= setNonEmpty!7217 b!773839))

(assert (= (and b!773664 ((_ is Cons!8674) (minValue!1478 (v!18802 (underlying!2625 (v!18803 (underlying!2626 (cache!1580 cacheUp!653)))))))) b!773840))

(declare-fun m!1041603 () Bool)

(assert (=> setNonEmpty!7217 m!1041603))

(declare-fun m!1041605 () Bool)

(assert (=> b!773840 m!1041605))

(declare-fun tp!254692 () Bool)

(declare-fun b!773842 () Bool)

(declare-fun tp!254693 () Bool)

(declare-fun e!499148 () Bool)

(assert (=> b!773842 (= e!499148 (and (inv!10999 (left!6420 (c!130338 totalInput!472))) tp!254692 (inv!10999 (right!6750 (c!130338 totalInput!472))) tp!254693))))

(declare-fun b!773844 () Bool)

(declare-fun e!499149 () Bool)

(declare-fun tp!254694 () Bool)

(assert (=> b!773844 (= e!499149 tp!254694)))

(declare-fun b!773843 () Bool)

(assert (=> b!773843 (= e!499148 (and (inv!11008 (xs!5584 (c!130338 totalInput!472))) e!499149))))

(assert (=> b!773653 (= tp!254521 (and (inv!10999 (c!130338 totalInput!472)) e!499148))))

(assert (= (and b!773653 ((_ is Node!2897) (c!130338 totalInput!472))) b!773842))

(assert (= b!773843 b!773844))

(assert (= (and b!773653 ((_ is Leaf!4251) (c!130338 totalInput!472))) b!773843))

(declare-fun m!1041607 () Bool)

(assert (=> b!773842 m!1041607))

(declare-fun m!1041609 () Bool)

(assert (=> b!773842 m!1041609))

(declare-fun m!1041611 () Bool)

(assert (=> b!773843 m!1041611))

(assert (=> b!773653 m!1041427))

(declare-fun b!773859 () Bool)

(declare-fun e!499162 () Bool)

(declare-fun tp!254721 () Bool)

(assert (=> b!773859 (= e!499162 tp!254721)))

(declare-fun setIsEmpty!7222 () Bool)

(declare-fun setRes!7223 () Bool)

(assert (=> setIsEmpty!7222 setRes!7223))

(declare-fun b!773860 () Bool)

(declare-fun e!499163 () Bool)

(declare-fun tp!254713 () Bool)

(assert (=> b!773860 (= e!499163 tp!254713)))

(declare-fun tp!254717 () Bool)

(declare-fun setNonEmpty!7222 () Bool)

(declare-fun setElem!7223 () Context!806)

(declare-fun setRes!7222 () Bool)

(declare-fun e!499165 () Bool)

(assert (=> setNonEmpty!7222 (= setRes!7222 (and tp!254717 (inv!11007 setElem!7223) e!499165))))

(declare-fun mapDefault!5953 () List!8688)

(declare-fun setRest!7223 () (InoxSet Context!806))

(assert (=> setNonEmpty!7222 (= (_2!5881 (h!14075 mapDefault!5953)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7223 true) setRest!7223))))

(declare-fun setElem!7222 () Context!806)

(declare-fun e!499166 () Bool)

(declare-fun setNonEmpty!7223 () Bool)

(declare-fun tp!254716 () Bool)

(assert (=> setNonEmpty!7223 (= setRes!7223 (and tp!254716 (inv!11007 setElem!7222) e!499166))))

(declare-fun mapValue!5953 () List!8688)

(declare-fun setRest!7222 () (InoxSet Context!806))

(assert (=> setNonEmpty!7223 (= (_2!5881 (h!14075 mapValue!5953)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7222 true) setRest!7222))))

(declare-fun b!773861 () Bool)

(declare-fun tp!254714 () Bool)

(assert (=> b!773861 (= e!499166 tp!254714)))

(declare-fun tp!254719 () Bool)

(declare-fun b!773862 () Bool)

(declare-fun e!499164 () Bool)

(assert (=> b!773862 (= e!499164 (and (inv!11007 (_1!5880 (_1!5881 (h!14075 mapDefault!5953)))) e!499163 tp_is_empty!3739 setRes!7222 tp!254719))))

(declare-fun condSetEmpty!7223 () Bool)

(assert (=> b!773862 (= condSetEmpty!7223 (= (_2!5881 (h!14075 mapDefault!5953)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun setIsEmpty!7223 () Bool)

(assert (=> setIsEmpty!7223 setRes!7222))

(declare-fun e!499167 () Bool)

(declare-fun tp!254718 () Bool)

(declare-fun b!773863 () Bool)

(assert (=> b!773863 (= e!499167 (and (inv!11007 (_1!5880 (_1!5881 (h!14075 mapValue!5953)))) e!499162 tp_is_empty!3739 setRes!7223 tp!254718))))

(declare-fun condSetEmpty!7222 () Bool)

(assert (=> b!773863 (= condSetEmpty!7222 (= (_2!5881 (h!14075 mapValue!5953)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun mapNonEmpty!5953 () Bool)

(declare-fun mapRes!5953 () Bool)

(declare-fun tp!254720 () Bool)

(assert (=> mapNonEmpty!5953 (= mapRes!5953 (and tp!254720 e!499167))))

(declare-fun mapRest!5953 () (Array (_ BitVec 32) List!8688))

(declare-fun mapKey!5953 () (_ BitVec 32))

(assert (=> mapNonEmpty!5953 (= mapRest!5942 (store mapRest!5953 mapKey!5953 mapValue!5953))))

(declare-fun b!773864 () Bool)

(declare-fun tp!254715 () Bool)

(assert (=> b!773864 (= e!499165 tp!254715)))

(declare-fun mapIsEmpty!5953 () Bool)

(assert (=> mapIsEmpty!5953 mapRes!5953))

(declare-fun condMapEmpty!5953 () Bool)

(assert (=> mapNonEmpty!5944 (= condMapEmpty!5953 (= mapRest!5942 ((as const (Array (_ BitVec 32) List!8688)) mapDefault!5953)))))

(assert (=> mapNonEmpty!5944 (= tp!254505 (and e!499164 mapRes!5953))))

(assert (= (and mapNonEmpty!5944 condMapEmpty!5953) mapIsEmpty!5953))

(assert (= (and mapNonEmpty!5944 (not condMapEmpty!5953)) mapNonEmpty!5953))

(assert (= b!773863 b!773859))

(assert (= (and b!773863 condSetEmpty!7222) setIsEmpty!7222))

(assert (= (and b!773863 (not condSetEmpty!7222)) setNonEmpty!7223))

(assert (= setNonEmpty!7223 b!773861))

(assert (= (and mapNonEmpty!5953 ((_ is Cons!8674) mapValue!5953)) b!773863))

(assert (= b!773862 b!773860))

(assert (= (and b!773862 condSetEmpty!7223) setIsEmpty!7223))

(assert (= (and b!773862 (not condSetEmpty!7223)) setNonEmpty!7222))

(assert (= setNonEmpty!7222 b!773864))

(assert (= (and mapNonEmpty!5944 ((_ is Cons!8674) mapDefault!5953)) b!773862))

(declare-fun m!1041613 () Bool)

(assert (=> b!773863 m!1041613))

(declare-fun m!1041615 () Bool)

(assert (=> b!773862 m!1041615))

(declare-fun m!1041617 () Bool)

(assert (=> mapNonEmpty!5953 m!1041617))

(declare-fun m!1041619 () Bool)

(assert (=> setNonEmpty!7222 m!1041619))

(declare-fun m!1041621 () Bool)

(assert (=> setNonEmpty!7223 m!1041621))

(declare-fun tp!254723 () Bool)

(declare-fun setElem!7224 () Context!806)

(declare-fun setRes!7224 () Bool)

(declare-fun setNonEmpty!7224 () Bool)

(declare-fun e!499168 () Bool)

(assert (=> setNonEmpty!7224 (= setRes!7224 (and tp!254723 (inv!11007 setElem!7224) e!499168))))

(declare-fun setRest!7224 () (InoxSet Context!806))

(assert (=> setNonEmpty!7224 (= (_2!5881 (h!14075 mapValue!5942)) ((_ map or) (store ((as const (Array Context!806 Bool)) false) setElem!7224 true) setRest!7224))))

(declare-fun b!773865 () Bool)

(declare-fun tp!254722 () Bool)

(assert (=> b!773865 (= e!499168 tp!254722)))

(declare-fun e!499170 () Bool)

(assert (=> mapNonEmpty!5944 (= tp!254506 e!499170)))

(declare-fun setIsEmpty!7224 () Bool)

(assert (=> setIsEmpty!7224 setRes!7224))

(declare-fun e!499169 () Bool)

(declare-fun tp!254725 () Bool)

(declare-fun b!773866 () Bool)

(assert (=> b!773866 (= e!499170 (and (inv!11007 (_1!5880 (_1!5881 (h!14075 mapValue!5942)))) e!499169 tp_is_empty!3739 setRes!7224 tp!254725))))

(declare-fun condSetEmpty!7224 () Bool)

(assert (=> b!773866 (= condSetEmpty!7224 (= (_2!5881 (h!14075 mapValue!5942)) ((as const (Array Context!806 Bool)) false)))))

(declare-fun b!773867 () Bool)

(declare-fun tp!254724 () Bool)

(assert (=> b!773867 (= e!499169 tp!254724)))

(assert (= b!773866 b!773867))

(assert (= (and b!773866 condSetEmpty!7224) setIsEmpty!7224))

(assert (= (and b!773866 (not condSetEmpty!7224)) setNonEmpty!7224))

(assert (= setNonEmpty!7224 b!773865))

(assert (= (and mapNonEmpty!5944 ((_ is Cons!8674) mapValue!5942)) b!773866))

(declare-fun m!1041623 () Bool)

(assert (=> setNonEmpty!7224 m!1041623))

(declare-fun m!1041625 () Bool)

(assert (=> b!773866 m!1041625))

(check-sat (not d!251948) (not d!251898) (not b!773696) (not b!773653) (not setNonEmpty!7207) (not b!773839) (not b!773678) (not b!773667) (not b!773699) (not b_next!24687) (not b!773800) (not b_next!24681) (not setNonEmpty!7210) (not b!773673) b_and!72085 (not b!773841) (not b!773865) (not setNonEmpty!7194) (not b!773859) (not b!773762) b_and!72103 (not d!251920) (not b!773836) (not b!773687) b_and!72101 (not setNonEmpty!7216) (not b!773754) (not b!773833) (not b!773842) (not b!773828) (not setNonEmpty!7222) (not b!773838) (not b!773863) (not b!773829) (not b!773815) (not mapNonEmpty!5947) (not b!773727) (not b!773843) (not setNonEmpty!7213) (not b!773738) (not b!773810) (not b!773867) (not b!773714) (not b!773814) (not d!251906) (not d!251934) (not b!773685) (not b!773799) (not b_next!24673) (not b!773811) (not d!251944) (not setNonEmpty!7211) (not setNonEmpty!7199) (not b!773761) (not b!773784) (not b!773739) (not b!773646) (not b_next!24683) (not b!773798) (not b_next!24675) (not d!251922) (not b!773834) b_and!72095 (not b!773726) (not setNonEmpty!7217) (not mapNonEmpty!5953) (not b!773783) (not b!773756) (not b!773830) (not setNonEmpty!7215) (not b!773785) (not b!773702) (not b!773759) (not b!773786) (not b!773760) (not b!773835) (not b!773688) (not setNonEmpty!7191) (not b!773824) (not b!773861) (not b!773773) (not b!773840) (not setNonEmpty!7214) (not b!773866) (not b!773728) (not b!773776) (not b!773862) (not b!773737) (not b!773812) (not b!773693) b_and!72091 (not b!773864) (not setNonEmpty!7206) (not b!773860) (not mapNonEmpty!5950) (not b_next!24685) (not b!773827) (not b!773755) (not d!251936) (not setNonEmpty!7201) (not b!773717) (not b!773715) b_and!72089 (not b!773825) (not d!251896) (not b_next!24679) (not b!773832) (not b!773831) (not setNonEmpty!7212) (not b!773757) (not b!773837) (not d!251902) (not b!773809) (not setNonEmpty!7223) tp_is_empty!3739 (not b_next!24677) b_and!72087 (not b!773774) (not b!773758) (not b!773844) (not b!773690) (not d!251932) (not setNonEmpty!7200) b_and!72093 b_and!72097 (not b_next!24671) (not d!251900) (not setNonEmpty!7224) (not b!773813) b_and!72099 (not b!773712) (not b_next!24669) (not b!773713) (not b!773672) (not b!773775))
(check-sat b_and!72085 b_and!72103 b_and!72101 (not b_next!24673) b_and!72095 b_and!72091 (not b_next!24685) b_and!72089 (not b_next!24679) b_and!72093 b_and!72099 (not b_next!24669) (not b_next!24687) (not b_next!24681) (not b_next!24683) (not b_next!24675) (not b_next!24677) b_and!72087 b_and!72097 (not b_next!24671))
