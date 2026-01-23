; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143622 () Bool)

(assert start!143622)

(declare-fun b!1549618 () Bool)

(declare-fun b_free!41027 () Bool)

(declare-fun b_next!41731 () Bool)

(assert (=> b!1549618 (= b_free!41027 (not b_next!41731))))

(declare-fun tp!452393 () Bool)

(declare-fun b_and!108117 () Bool)

(assert (=> b!1549618 (= tp!452393 b_and!108117)))

(declare-fun b!1549604 () Bool)

(declare-fun b_free!41029 () Bool)

(declare-fun b_next!41733 () Bool)

(assert (=> b!1549604 (= b_free!41029 (not b_next!41733))))

(declare-fun tp!452399 () Bool)

(declare-fun b_and!108119 () Bool)

(assert (=> b!1549604 (= tp!452399 b_and!108119)))

(declare-fun b!1549627 () Bool)

(declare-fun b_free!41031 () Bool)

(declare-fun b_next!41735 () Bool)

(assert (=> b!1549627 (= b_free!41031 (not b_next!41735))))

(declare-fun tp!452390 () Bool)

(declare-fun b_and!108121 () Bool)

(assert (=> b!1549627 (= tp!452390 b_and!108121)))

(declare-fun b!1549609 () Bool)

(declare-fun b_free!41033 () Bool)

(declare-fun b_next!41737 () Bool)

(assert (=> b!1549609 (= b_free!41033 (not b_next!41737))))

(declare-fun tp!452392 () Bool)

(declare-fun b_and!108123 () Bool)

(assert (=> b!1549609 (= tp!452392 b_and!108123)))

(declare-fun b!1549622 () Bool)

(declare-fun b_free!41035 () Bool)

(declare-fun b_next!41739 () Bool)

(assert (=> b!1549622 (= b_free!41035 (not b_next!41739))))

(declare-fun tp!452408 () Bool)

(declare-fun b_and!108125 () Bool)

(assert (=> b!1549622 (= tp!452408 b_and!108125)))

(declare-fun b_free!41037 () Bool)

(declare-fun b_next!41741 () Bool)

(assert (=> b!1549622 (= b_free!41037 (not b_next!41741))))

(declare-fun tp!452391 () Bool)

(declare-fun b_and!108127 () Bool)

(assert (=> b!1549622 (= tp!452391 b_and!108127)))

(declare-fun b!1549596 () Bool)

(declare-fun b_free!41039 () Bool)

(declare-fun b_next!41743 () Bool)

(assert (=> b!1549596 (= b_free!41039 (not b_next!41743))))

(declare-fun tp!452398 () Bool)

(declare-fun b_and!108129 () Bool)

(assert (=> b!1549596 (= tp!452398 b_and!108129)))

(declare-fun b!1549603 () Bool)

(declare-fun b_free!41041 () Bool)

(declare-fun b_next!41745 () Bool)

(assert (=> b!1549603 (= b_free!41041 (not b_next!41745))))

(declare-fun tp!452396 () Bool)

(declare-fun b_and!108131 () Bool)

(assert (=> b!1549603 (= tp!452396 b_and!108131)))

(declare-fun b!1549637 () Bool)

(declare-fun e!993541 () Bool)

(assert (=> b!1549637 (= e!993541 true)))

(declare-fun b!1549636 () Bool)

(declare-fun e!993540 () Bool)

(assert (=> b!1549636 (= e!993540 e!993541)))

(declare-fun b!1549607 () Bool)

(assert (=> b!1549607 e!993540))

(assert (= b!1549636 b!1549637))

(assert (= b!1549607 b!1549636))

(declare-fun order!9789 () Int)

(declare-datatypes ((List!16775 0))(
  ( (Nil!16707) (Cons!16707 (h!22108 (_ BitVec 16)) (t!141178 List!16775)) )
))
(declare-datatypes ((TokenValue!3019 0))(
  ( (FloatLiteralValue!6038 (text!21578 List!16775)) (TokenValueExt!3018 (__x!10991 Int)) (Broken!15095 (value!93096 List!16775)) (Object!3086) (End!3019) (Def!3019) (Underscore!3019) (Match!3019) (Else!3019) (Error!3019) (Case!3019) (If!3019) (Extends!3019) (Abstract!3019) (Class!3019) (Val!3019) (DelimiterValue!6038 (del!3079 List!16775)) (KeywordValue!3025 (value!93097 List!16775)) (CommentValue!6038 (value!93098 List!16775)) (WhitespaceValue!6038 (value!93099 List!16775)) (IndentationValue!3019 (value!93100 List!16775)) (String!19382) (Int32!3019) (Broken!15096 (value!93101 List!16775)) (Boolean!3020) (Unit!25990) (OperatorValue!3022 (op!3079 List!16775)) (IdentifierValue!6038 (value!93102 List!16775)) (IdentifierValue!6039 (value!93103 List!16775)) (WhitespaceValue!6039 (value!93104 List!16775)) (True!6038) (False!6038) (Broken!15097 (value!93105 List!16775)) (Broken!15098 (value!93106 List!16775)) (True!6039) (RightBrace!3019) (RightBracket!3019) (Colon!3019) (Null!3019) (Comma!3019) (LeftBracket!3019) (False!6039) (LeftBrace!3019) (ImaginaryLiteralValue!3019 (text!21579 List!16775)) (StringLiteralValue!9057 (value!93107 List!16775)) (EOFValue!3019 (value!93108 List!16775)) (IdentValue!3019 (value!93109 List!16775)) (DelimiterValue!6039 (value!93110 List!16775)) (DedentValue!3019 (value!93111 List!16775)) (NewLineValue!3019 (value!93112 List!16775)) (IntegerValue!9057 (value!93113 (_ BitVec 32)) (text!21580 List!16775)) (IntegerValue!9058 (value!93114 Int) (text!21581 List!16775)) (Times!3019) (Or!3019) (Equal!3019) (Minus!3019) (Broken!15099 (value!93115 List!16775)) (And!3019) (Div!3019) (LessEqual!3019) (Mod!3019) (Concat!7276) (Not!3019) (Plus!3019) (SpaceValue!3019 (value!93116 List!16775)) (IntegerValue!9059 (value!93117 Int) (text!21582 List!16775)) (StringLiteralValue!9058 (text!21583 List!16775)) (FloatLiteralValue!6039 (text!21584 List!16775)) (BytesLiteralValue!3019 (value!93118 List!16775)) (CommentValue!6039 (value!93119 List!16775)) (StringLiteralValue!9059 (value!93120 List!16775)) (ErrorTokenValue!3019 (msg!3080 List!16775)) )
))
(declare-datatypes ((C!8692 0))(
  ( (C!8693 (val!4918 Int)) )
))
(declare-datatypes ((List!16776 0))(
  ( (Nil!16708) (Cons!16708 (h!22109 C!8692) (t!141179 List!16776)) )
))
(declare-datatypes ((IArray!11099 0))(
  ( (IArray!11100 (innerList!5607 List!16776)) )
))
(declare-datatypes ((Conc!5547 0))(
  ( (Node!5547 (left!13608 Conc!5547) (right!13938 Conc!5547) (csize!11324 Int) (cheight!5758 Int)) (Leaf!8221 (xs!8347 IArray!11099) (csize!11325 Int)) (Empty!5547) )
))
(declare-datatypes ((BalanceConc!11036 0))(
  ( (BalanceConc!11037 (c!252205 Conc!5547)) )
))
(declare-datatypes ((String!19383 0))(
  ( (String!19384 (value!93121 String)) )
))
(declare-datatypes ((Regex!4257 0))(
  ( (ElementMatch!4257 (c!252206 C!8692)) (Concat!7277 (regOne!9026 Regex!4257) (regTwo!9026 Regex!4257)) (EmptyExpr!4257) (Star!4257 (reg!4586 Regex!4257)) (EmptyLang!4257) (Union!4257 (regOne!9027 Regex!4257) (regTwo!9027 Regex!4257)) )
))
(declare-datatypes ((TokenValueInjection!5698 0))(
  ( (TokenValueInjection!5699 (toValue!4292 Int) (toChars!4151 Int)) )
))
(declare-datatypes ((Rule!5658 0))(
  ( (Rule!5659 (regex!2929 Regex!4257) (tag!3193 String!19383) (isSeparator!2929 Bool) (transformation!2929 TokenValueInjection!5698)) )
))
(declare-fun rule!240 () Rule!5658)

(declare-fun lambda!65613 () Int)

(declare-fun order!9787 () Int)

(declare-fun dynLambda!7388 (Int Int) Int)

(declare-fun dynLambda!7389 (Int Int) Int)

(assert (=> b!1549637 (< (dynLambda!7388 order!9787 (toValue!4292 (transformation!2929 rule!240))) (dynLambda!7389 order!9789 lambda!65613))))

(declare-fun order!9791 () Int)

(declare-fun dynLambda!7390 (Int Int) Int)

(assert (=> b!1549637 (< (dynLambda!7390 order!9791 (toChars!4151 (transformation!2929 rule!240))) (dynLambda!7389 order!9789 lambda!65613))))

(declare-fun mapIsEmpty!8118 () Bool)

(declare-fun mapRes!8118 () Bool)

(assert (=> mapIsEmpty!8118 mapRes!8118))

(declare-fun b!1549594 () Bool)

(declare-fun e!993502 () Bool)

(declare-fun e!993509 () Bool)

(declare-datatypes ((List!16777 0))(
  ( (Nil!16709) (Cons!16709 (h!22110 Regex!4257) (t!141180 List!16777)) )
))
(declare-datatypes ((Context!1550 0))(
  ( (Context!1551 (exprs!1275 List!16777)) )
))
(declare-datatypes ((tuple2!16040 0))(
  ( (tuple2!16041 (_1!9309 Context!1550) (_2!9309 C!8692)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16042 0))(
  ( (tuple2!16043 (_1!9310 tuple2!16040) (_2!9310 (InoxSet Context!1550))) )
))
(declare-datatypes ((List!16778 0))(
  ( (Nil!16710) (Cons!16710 (h!22111 tuple2!16042) (t!141181 List!16778)) )
))
(declare-datatypes ((array!5998 0))(
  ( (array!5999 (arr!2676 (Array (_ BitVec 32) List!16778)) (size!13508 (_ BitVec 32))) )
))
(declare-datatypes ((array!6000 0))(
  ( (array!6001 (arr!2677 (Array (_ BitVec 32) (_ BitVec 64))) (size!13509 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3488 0))(
  ( (LongMapFixedSize!3489 (defaultEntry!2104 Int) (mask!4961 (_ BitVec 32)) (extraKeys!1991 (_ BitVec 32)) (zeroValue!2001 List!16778) (minValue!2001 List!16778) (_size!3569 (_ BitVec 32)) (_keys!2038 array!6000) (_values!2023 array!5998) (_vacant!1805 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6861 0))(
  ( (Cell!6862 (v!23533 LongMapFixedSize!3488)) )
))
(declare-datatypes ((MutLongMap!1744 0))(
  ( (LongMap!1744 (underlying!3697 Cell!6861)) (MutLongMapExt!1743 (__x!10992 Int)) )
))
(declare-fun lt!536820 () MutLongMap!1744)

(get-info :version)

(assert (=> b!1549594 (= e!993502 (and e!993509 ((_ is LongMap!1744) lt!536820)))))

(declare-datatypes ((Hashable!1688 0))(
  ( (HashableExt!1687 (__x!10993 Int)) )
))
(declare-datatypes ((Cell!6863 0))(
  ( (Cell!6864 (v!23534 MutLongMap!1744)) )
))
(declare-datatypes ((MutableMap!1688 0))(
  ( (MutableMapExt!1687 (__x!10994 Int)) (HashMap!1688 (underlying!3698 Cell!6863) (hashF!3607 Hashable!1688) (_size!3570 (_ BitVec 32)) (defaultValue!1848 Int)) )
))
(declare-datatypes ((CacheUp!1024 0))(
  ( (CacheUp!1025 (cache!2069 MutableMap!1688)) )
))
(declare-fun cacheUp!755 () CacheUp!1024)

(assert (=> b!1549594 (= lt!536820 (v!23534 (underlying!3698 (cache!2069 cacheUp!755))))))

(declare-fun e!993517 () Bool)

(declare-fun e!993527 () Bool)

(declare-fun tp!452405 () Bool)

(declare-fun b!1549595 () Bool)

(declare-fun inv!21964 (String!19383) Bool)

(declare-fun inv!21965 (TokenValueInjection!5698) Bool)

(assert (=> b!1549595 (= e!993527 (and tp!452405 (inv!21964 (tag!3193 rule!240)) (inv!21965 (transformation!2929 rule!240)) e!993517))))

(declare-fun e!993526 () Bool)

(declare-fun e!993530 () Bool)

(assert (=> b!1549596 (= e!993526 (and e!993530 tp!452398))))

(declare-fun b!1549597 () Bool)

(declare-fun e!993524 () Bool)

(declare-datatypes ((tuple2!16044 0))(
  ( (tuple2!16045 (_1!9311 List!16776) (_2!9311 List!16776)) )
))
(declare-fun lt!536812 () tuple2!16044)

(declare-fun matchR!1866 (Regex!4257 List!16776) Bool)

(assert (=> b!1549597 (= e!993524 (matchR!1866 (regex!2929 rule!240) (_1!9311 lt!536812)))))

(declare-fun b!1549598 () Bool)

(declare-fun e!993534 () Bool)

(declare-fun e!993508 () Bool)

(assert (=> b!1549598 (= e!993534 e!993508)))

(declare-fun res!692701 () Bool)

(declare-fun e!993535 () Bool)

(assert (=> start!143622 (=> (not res!692701) (not e!993535))))

(declare-datatypes ((LexerInterface!2569 0))(
  ( (LexerInterfaceExt!2566 (__x!10995 Int)) (Lexer!2567) )
))
(declare-fun thiss!16438 () LexerInterface!2569)

(assert (=> start!143622 (= res!692701 ((_ is Lexer!2567) thiss!16438))))

(assert (=> start!143622 e!993535))

(declare-fun totalInput!568 () BalanceConc!11036)

(declare-fun e!993525 () Bool)

(declare-fun inv!21966 (BalanceConc!11036) Bool)

(assert (=> start!143622 (and (inv!21966 totalInput!568) e!993525)))

(declare-fun e!993514 () Bool)

(declare-fun inv!21967 (CacheUp!1024) Bool)

(assert (=> start!143622 (and (inv!21967 cacheUp!755) e!993514)))

(declare-datatypes ((tuple3!1716 0))(
  ( (tuple3!1717 (_1!9312 (InoxSet Context!1550)) (_2!9312 Int) (_3!1289 Int)) )
))
(declare-datatypes ((tuple2!16046 0))(
  ( (tuple2!16047 (_1!9313 tuple3!1716) (_2!9313 Int)) )
))
(declare-datatypes ((List!16779 0))(
  ( (Nil!16711) (Cons!16711 (h!22112 tuple2!16046) (t!141182 List!16779)) )
))
(declare-datatypes ((array!6002 0))(
  ( (array!6003 (arr!2678 (Array (_ BitVec 32) List!16779)) (size!13510 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3490 0))(
  ( (LongMapFixedSize!3491 (defaultEntry!2105 Int) (mask!4962 (_ BitVec 32)) (extraKeys!1992 (_ BitVec 32)) (zeroValue!2002 List!16779) (minValue!2002 List!16779) (_size!3571 (_ BitVec 32)) (_keys!2039 array!6000) (_values!2024 array!6002) (_vacant!1806 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6865 0))(
  ( (Cell!6866 (v!23535 LongMapFixedSize!3490)) )
))
(declare-datatypes ((Hashable!1689 0))(
  ( (HashableExt!1688 (__x!10996 Int)) )
))
(declare-datatypes ((MutLongMap!1745 0))(
  ( (LongMap!1745 (underlying!3699 Cell!6865)) (MutLongMapExt!1744 (__x!10997 Int)) )
))
(declare-datatypes ((Cell!6867 0))(
  ( (Cell!6868 (v!23536 MutLongMap!1745)) )
))
(declare-datatypes ((MutableMap!1689 0))(
  ( (MutableMapExt!1688 (__x!10998 Int)) (HashMap!1689 (underlying!3700 Cell!6867) (hashF!3608 Hashable!1689) (_size!3572 (_ BitVec 32)) (defaultValue!1849 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!450 0))(
  ( (CacheFurthestNullable!451 (cache!2070 MutableMap!1689) (totalInput!2428 BalanceConc!11036)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!450)

(declare-fun e!993503 () Bool)

(declare-fun inv!21968 (CacheFurthestNullable!450) Bool)

(assert (=> start!143622 (and (inv!21968 cacheFurthestNullable!103) e!993503)))

(declare-fun input!1676 () BalanceConc!11036)

(declare-fun e!993523 () Bool)

(assert (=> start!143622 (and (inv!21966 input!1676) e!993523)))

(assert (=> start!143622 e!993527))

(declare-datatypes ((tuple3!1718 0))(
  ( (tuple3!1719 (_1!9314 Regex!4257) (_2!9314 Context!1550) (_3!1290 C!8692)) )
))
(declare-datatypes ((tuple2!16048 0))(
  ( (tuple2!16049 (_1!9315 tuple3!1718) (_2!9315 (InoxSet Context!1550))) )
))
(declare-datatypes ((List!16780 0))(
  ( (Nil!16712) (Cons!16712 (h!22113 tuple2!16048) (t!141183 List!16780)) )
))
(declare-datatypes ((array!6004 0))(
  ( (array!6005 (arr!2679 (Array (_ BitVec 32) List!16780)) (size!13511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3492 0))(
  ( (LongMapFixedSize!3493 (defaultEntry!2106 Int) (mask!4963 (_ BitVec 32)) (extraKeys!1993 (_ BitVec 32)) (zeroValue!2003 List!16780) (minValue!2003 List!16780) (_size!3573 (_ BitVec 32)) (_keys!2040 array!6000) (_values!2025 array!6004) (_vacant!1807 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6869 0))(
  ( (Cell!6870 (v!23537 LongMapFixedSize!3492)) )
))
(declare-datatypes ((MutLongMap!1746 0))(
  ( (LongMap!1746 (underlying!3701 Cell!6869)) (MutLongMapExt!1745 (__x!10999 Int)) )
))
(declare-datatypes ((Cell!6871 0))(
  ( (Cell!6872 (v!23538 MutLongMap!1746)) )
))
(declare-datatypes ((Hashable!1690 0))(
  ( (HashableExt!1689 (__x!11000 Int)) )
))
(declare-datatypes ((MutableMap!1690 0))(
  ( (MutableMapExt!1689 (__x!11001 Int)) (HashMap!1690 (underlying!3702 Cell!6871) (hashF!3609 Hashable!1690) (_size!3574 (_ BitVec 32)) (defaultValue!1850 Int)) )
))
(declare-datatypes ((CacheDown!1030 0))(
  ( (CacheDown!1031 (cache!2071 MutableMap!1690)) )
))
(declare-fun cacheDown!768 () CacheDown!1030)

(declare-fun e!993533 () Bool)

(declare-fun inv!21969 (CacheDown!1030) Bool)

(assert (=> start!143622 (and (inv!21969 cacheDown!768) e!993533)))

(assert (=> start!143622 true))

(declare-fun b!1549599 () Bool)

(declare-fun res!692703 () Bool)

(assert (=> b!1549599 (=> (not res!692703) (not e!993535))))

(declare-fun ruleValid!672 (LexerInterface!2569 Rule!5658) Bool)

(assert (=> b!1549599 (= res!692703 (ruleValid!672 thiss!16438 rule!240))))

(declare-fun b!1549600 () Bool)

(declare-fun e!993512 () Bool)

(assert (=> b!1549600 (= e!993509 e!993512)))

(declare-fun b!1549601 () Bool)

(declare-fun e!993513 () Bool)

(declare-fun tp!452409 () Bool)

(declare-fun inv!21970 (Conc!5547) Bool)

(assert (=> b!1549601 (= e!993513 (and (inv!21970 (c!252205 (totalInput!2428 cacheFurthestNullable!103))) tp!452409))))

(declare-fun b!1549602 () Bool)

(declare-fun e!993504 () Bool)

(declare-fun e!993520 () Bool)

(assert (=> b!1549602 (= e!993504 e!993520)))

(declare-fun e!993516 () Bool)

(declare-fun tp!452411 () Bool)

(declare-fun e!993505 () Bool)

(declare-fun tp!452400 () Bool)

(declare-fun array_inv!1924 (array!6000) Bool)

(declare-fun array_inv!1925 (array!5998) Bool)

(assert (=> b!1549603 (= e!993516 (and tp!452396 tp!452400 tp!452411 (array_inv!1924 (_keys!2038 (v!23533 (underlying!3697 (v!23534 (underlying!3698 (cache!2069 cacheUp!755))))))) (array_inv!1925 (_values!2023 (v!23533 (underlying!3697 (v!23534 (underlying!3698 (cache!2069 cacheUp!755))))))) e!993505))))

(declare-fun mapNonEmpty!8118 () Bool)

(declare-fun tp!452404 () Bool)

(declare-fun tp!452386 () Bool)

(assert (=> mapNonEmpty!8118 (= mapRes!8118 (and tp!452404 tp!452386))))

(declare-fun mapKey!8119 () (_ BitVec 32))

(declare-fun mapValue!8120 () List!16778)

(declare-fun mapRest!8119 () (Array (_ BitVec 32) List!16778))

(assert (=> mapNonEmpty!8118 (= (arr!2676 (_values!2023 (v!23533 (underlying!3697 (v!23534 (underlying!3698 (cache!2069 cacheUp!755))))))) (store mapRest!8119 mapKey!8119 mapValue!8120))))

(declare-fun e!993521 () Bool)

(declare-fun e!993510 () Bool)

(assert (=> b!1549604 (= e!993521 (and e!993510 tp!452399))))

(declare-fun b!1549605 () Bool)

(declare-fun e!993522 () Bool)

(declare-fun tp!452389 () Bool)

(declare-fun mapRes!8119 () Bool)

(assert (=> b!1549605 (= e!993522 (and tp!452389 mapRes!8119))))

(declare-fun condMapEmpty!8119 () Bool)

(declare-fun mapDefault!8119 () List!16780)

(assert (=> b!1549605 (= condMapEmpty!8119 (= (arr!2679 (_values!2025 (v!23537 (underlying!3701 (v!23538 (underlying!3702 (cache!2071 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16780)) mapDefault!8119)))))

(declare-fun b!1549606 () Bool)

(declare-fun tp!452406 () Bool)

(assert (=> b!1549606 (= e!993505 (and tp!452406 mapRes!8118))))

(declare-fun condMapEmpty!8118 () Bool)

(declare-fun mapDefault!8118 () List!16778)

(assert (=> b!1549606 (= condMapEmpty!8118 (= (arr!2676 (_values!2023 (v!23533 (underlying!3697 (v!23534 (underlying!3698 (cache!2069 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16778)) mapDefault!8118)))))

(declare-datatypes ((tuple2!16050 0))(
  ( (tuple2!16051 (_1!9316 BalanceConc!11036) (_2!9316 BalanceConc!11036)) )
))
(declare-datatypes ((tuple4!862 0))(
  ( (tuple4!863 (_1!9317 tuple2!16050) (_2!9317 CacheUp!1024) (_3!1291 CacheDown!1030) (_4!431 CacheFurthestNullable!450)) )
))
(declare-fun lt!536819 () tuple4!862)

(declare-datatypes ((Token!5452 0))(
  ( (Token!5453 (value!93122 TokenValue!3019) (rule!4716 Rule!5658) (size!13512 Int) (originalCharacters!3757 List!16776)) )
))
(declare-datatypes ((tuple2!16052 0))(
  ( (tuple2!16053 (_1!9318 Token!5452) (_2!9318 BalanceConc!11036)) )
))
(declare-datatypes ((Option!3015 0))(
  ( (None!3014) (Some!3014 (v!23539 tuple2!16052)) )
))
(declare-fun e!993531 () Option!3015)

(declare-fun lt!536821 () List!16776)

(declare-fun lt!536824 () Int)

(declare-fun lt!536817 () TokenValue!3019)

(assert (=> b!1549607 (= e!993531 (Some!3014 (tuple2!16053 (Token!5453 lt!536817 rule!240 lt!536824 lt!536821) (_2!9316 (_1!9317 lt!536819)))))))

(declare-datatypes ((Unit!25991 0))(
  ( (Unit!25992) )
))
(declare-fun lt!536816 () Unit!25991)

(declare-fun lt!536818 () List!16776)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!304 (Regex!4257 List!16776) Unit!25991)

(assert (=> b!1549607 (= lt!536816 (longestMatchIsAcceptedByMatchOrIsEmpty!304 (regex!2929 rule!240) lt!536818))))

(declare-fun findLongestMatchInner!320 (Regex!4257 List!16776 Int List!16776 List!16776 Int) tuple2!16044)

(declare-fun size!13513 (List!16776) Int)

(assert (=> b!1549607 (= lt!536812 (findLongestMatchInner!320 (regex!2929 rule!240) Nil!16708 (size!13513 Nil!16708) lt!536818 lt!536818 (size!13513 lt!536818)))))

(declare-fun res!692707 () Bool)

(declare-fun isEmpty!10076 (List!16776) Bool)

(assert (=> b!1549607 (= res!692707 (isEmpty!10076 (_1!9311 lt!536812)))))

(assert (=> b!1549607 (=> res!692707 e!993524)))

(assert (=> b!1549607 e!993524))

(declare-fun lt!536823 () Unit!25991)

(declare-fun lemmaInv!414 (TokenValueInjection!5698) Unit!25991)

(assert (=> b!1549607 (= lt!536823 (lemmaInv!414 (transformation!2929 rule!240)))))

(declare-fun lt!536822 () Unit!25991)

(declare-fun ForallOf!201 (Int BalanceConc!11036) Unit!25991)

(assert (=> b!1549607 (= lt!536822 (ForallOf!201 lambda!65613 (_1!9316 (_1!9317 lt!536819))))))

(declare-fun list!6471 (BalanceConc!11036) List!16776)

(assert (=> b!1549607 (= lt!536821 (list!6471 (_1!9316 (_1!9317 lt!536819))))))

(declare-fun lt!536825 () BalanceConc!11036)

(declare-fun seqFromList!1764 (List!16776) BalanceConc!11036)

(assert (=> b!1549607 (= lt!536825 (seqFromList!1764 lt!536821))))

(declare-fun lt!536815 () Unit!25991)

(assert (=> b!1549607 (= lt!536815 (ForallOf!201 lambda!65613 lt!536825))))

(declare-fun apply!4100 (TokenValueInjection!5698 BalanceConc!11036) TokenValue!3019)

(assert (=> b!1549607 (= lt!536817 (apply!4100 (transformation!2929 rule!240) (_1!9316 (_1!9317 lt!536819))))))

(declare-fun size!13514 (BalanceConc!11036) Int)

(assert (=> b!1549607 (= lt!536824 (size!13514 (_1!9316 (_1!9317 lt!536819))))))

(declare-fun lt!536827 () Unit!25991)

(declare-fun lemmaEqSameImage!144 (TokenValueInjection!5698 BalanceConc!11036 BalanceConc!11036) Unit!25991)

(assert (=> b!1549607 (= lt!536827 (lemmaEqSameImage!144 (transformation!2929 rule!240) (_1!9316 (_1!9317 lt!536819)) lt!536825))))

(declare-fun b!1549608 () Bool)

(declare-fun res!692700 () Bool)

(assert (=> b!1549608 (=> (not res!692700) (not e!993535))))

(declare-fun valid!1403 (CacheDown!1030) Bool)

(assert (=> b!1549608 (= res!692700 (valid!1403 cacheDown!768))))

(declare-fun mapNonEmpty!8119 () Bool)

(declare-fun mapRes!8120 () Bool)

(declare-fun tp!452412 () Bool)

(declare-fun tp!452401 () Bool)

(assert (=> mapNonEmpty!8119 (= mapRes!8120 (and tp!452412 tp!452401))))

(declare-fun mapValue!8119 () List!16779)

(declare-fun mapKey!8118 () (_ BitVec 32))

(declare-fun mapRest!8118 () (Array (_ BitVec 32) List!16779))

(assert (=> mapNonEmpty!8119 (= (arr!2678 (_values!2024 (v!23535 (underlying!3699 (v!23536 (underlying!3700 (cache!2070 cacheFurthestNullable!103))))))) (store mapRest!8118 mapKey!8118 mapValue!8119))))

(declare-fun e!993507 () Bool)

(assert (=> b!1549609 (= e!993507 (and e!993502 tp!452392))))

(declare-fun b!1549610 () Bool)

(declare-fun e!993529 () Bool)

(assert (=> b!1549610 (= e!993520 e!993529)))

(declare-fun b!1549611 () Bool)

(assert (=> b!1549611 (= e!993512 e!993516)))

(declare-fun mapIsEmpty!8119 () Bool)

(assert (=> mapIsEmpty!8119 mapRes!8119))

(declare-fun b!1549612 () Bool)

(declare-fun res!692702 () Bool)

(assert (=> b!1549612 (=> (not res!692702) (not e!993535))))

(declare-fun valid!1404 (CacheFurthestNullable!450) Bool)

(assert (=> b!1549612 (= res!692702 (valid!1404 cacheFurthestNullable!103))))

(declare-fun b!1549613 () Bool)

(assert (=> b!1549613 (= e!993531 None!3014)))

(declare-fun mapIsEmpty!8120 () Bool)

(assert (=> mapIsEmpty!8120 mapRes!8120))

(declare-fun b!1549614 () Bool)

(declare-fun res!692706 () Bool)

(assert (=> b!1549614 (=> (not res!692706) (not e!993535))))

(declare-fun valid!1405 (CacheUp!1024) Bool)

(assert (=> b!1549614 (= res!692706 (valid!1405 cacheUp!755))))

(declare-fun b!1549615 () Bool)

(declare-fun lt!536826 () MutLongMap!1745)

(assert (=> b!1549615 (= e!993510 (and e!993504 ((_ is LongMap!1745) lt!536826)))))

(assert (=> b!1549615 (= lt!536826 (v!23536 (underlying!3700 (cache!2070 cacheFurthestNullable!103))))))

(declare-fun b!1549616 () Bool)

(declare-fun tp!452387 () Bool)

(assert (=> b!1549616 (= e!993523 (and (inv!21970 (c!252205 input!1676)) tp!452387))))

(declare-fun b!1549617 () Bool)

(assert (=> b!1549617 (= e!993514 e!993507)))

(declare-fun e!993532 () Bool)

(declare-fun tp!452394 () Bool)

(declare-fun tp!452397 () Bool)

(declare-fun array_inv!1926 (array!6002) Bool)

(assert (=> b!1549618 (= e!993529 (and tp!452393 tp!452397 tp!452394 (array_inv!1924 (_keys!2039 (v!23535 (underlying!3699 (v!23536 (underlying!3700 (cache!2070 cacheFurthestNullable!103))))))) (array_inv!1926 (_values!2024 (v!23535 (underlying!3699 (v!23536 (underlying!3700 (cache!2070 cacheFurthestNullable!103))))))) e!993532))))

(declare-fun b!1549619 () Bool)

(assert (=> b!1549619 (= e!993503 (and e!993521 (inv!21966 (totalInput!2428 cacheFurthestNullable!103)) e!993513))))

(declare-fun mapNonEmpty!8120 () Bool)

(declare-fun tp!452410 () Bool)

(declare-fun tp!452402 () Bool)

(assert (=> mapNonEmpty!8120 (= mapRes!8119 (and tp!452410 tp!452402))))

(declare-fun mapValue!8118 () List!16780)

(declare-fun mapRest!8120 () (Array (_ BitVec 32) List!16780))

(declare-fun mapKey!8120 () (_ BitVec 32))

(assert (=> mapNonEmpty!8120 (= (arr!2679 (_values!2025 (v!23537 (underlying!3701 (v!23538 (underlying!3702 (cache!2071 cacheDown!768))))))) (store mapRest!8120 mapKey!8120 mapValue!8118))))

(declare-fun b!1549620 () Bool)

(declare-fun e!993519 () Bool)

(declare-fun lt!536813 () MutLongMap!1746)

(assert (=> b!1549620 (= e!993530 (and e!993519 ((_ is LongMap!1746) lt!536813)))))

(assert (=> b!1549620 (= lt!536813 (v!23538 (underlying!3702 (cache!2071 cacheDown!768))))))

(declare-fun b!1549621 () Bool)

(assert (=> b!1549621 (= e!993533 e!993526)))

(assert (=> b!1549622 (= e!993517 (and tp!452408 tp!452391))))

(declare-fun b!1549623 () Bool)

(declare-fun res!692705 () Bool)

(declare-fun e!993518 () Bool)

(assert (=> b!1549623 (=> (not res!692705) (not e!993518))))

(assert (=> b!1549623 (= res!692705 (= (totalInput!2428 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1549624 () Bool)

(assert (=> b!1549624 (= e!993519 e!993534)))

(declare-fun b!1549625 () Bool)

(declare-fun tp!452403 () Bool)

(assert (=> b!1549625 (= e!993532 (and tp!452403 mapRes!8120))))

(declare-fun condMapEmpty!8120 () Bool)

(declare-fun mapDefault!8120 () List!16779)

(assert (=> b!1549625 (= condMapEmpty!8120 (= (arr!2678 (_values!2024 (v!23535 (underlying!3699 (v!23536 (underlying!3700 (cache!2070 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16779)) mapDefault!8120)))))

(declare-fun b!1549626 () Bool)

(declare-fun tp!452388 () Bool)

(assert (=> b!1549626 (= e!993525 (and (inv!21970 (c!252205 totalInput!568)) tp!452388))))

(declare-fun tp!452407 () Bool)

(declare-fun tp!452395 () Bool)

(declare-fun array_inv!1927 (array!6004) Bool)

(assert (=> b!1549627 (= e!993508 (and tp!452390 tp!452395 tp!452407 (array_inv!1924 (_keys!2040 (v!23537 (underlying!3701 (v!23538 (underlying!3702 (cache!2071 cacheDown!768))))))) (array_inv!1927 (_values!2025 (v!23537 (underlying!3701 (v!23538 (underlying!3702 (cache!2071 cacheDown!768))))))) e!993522))))

(declare-fun b!1549628 () Bool)

(assert (=> b!1549628 (= e!993535 e!993518)))

(declare-fun res!692704 () Bool)

(assert (=> b!1549628 (=> (not res!692704) (not e!993518))))

(declare-fun isSuffix!363 (List!16776 List!16776) Bool)

(assert (=> b!1549628 (= res!692704 (isSuffix!363 lt!536818 (list!6471 totalInput!568)))))

(assert (=> b!1549628 (= lt!536818 (list!6471 input!1676))))

(declare-fun b!1549629 () Bool)

(assert (=> b!1549629 (= e!993518 false)))

(declare-fun lt!536814 () Option!3015)

(assert (=> b!1549629 (= lt!536814 e!993531)))

(declare-fun c!252204 () Bool)

(declare-fun isEmpty!10077 (BalanceConc!11036) Bool)

(assert (=> b!1549629 (= c!252204 (isEmpty!10077 (_1!9316 (_1!9317 lt!536819))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!36 (Regex!4257 BalanceConc!11036 BalanceConc!11036 CacheUp!1024 CacheDown!1030 CacheFurthestNullable!450) tuple4!862)

(assert (=> b!1549629 (= lt!536819 (findLongestMatchWithZipperSequenceV3Mem!36 (regex!2929 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (= (and start!143622 res!692701) b!1549599))

(assert (= (and b!1549599 res!692703) b!1549614))

(assert (= (and b!1549614 res!692706) b!1549608))

(assert (= (and b!1549608 res!692700) b!1549612))

(assert (= (and b!1549612 res!692702) b!1549628))

(assert (= (and b!1549628 res!692704) b!1549623))

(assert (= (and b!1549623 res!692705) b!1549629))

(assert (= (and b!1549629 c!252204) b!1549613))

(assert (= (and b!1549629 (not c!252204)) b!1549607))

(assert (= (and b!1549607 (not res!692707)) b!1549597))

(assert (= start!143622 b!1549626))

(assert (= (and b!1549606 condMapEmpty!8118) mapIsEmpty!8118))

(assert (= (and b!1549606 (not condMapEmpty!8118)) mapNonEmpty!8118))

(assert (= b!1549603 b!1549606))

(assert (= b!1549611 b!1549603))

(assert (= b!1549600 b!1549611))

(assert (= (and b!1549594 ((_ is LongMap!1744) (v!23534 (underlying!3698 (cache!2069 cacheUp!755))))) b!1549600))

(assert (= b!1549609 b!1549594))

(assert (= (and b!1549617 ((_ is HashMap!1688) (cache!2069 cacheUp!755))) b!1549609))

(assert (= start!143622 b!1549617))

(assert (= (and b!1549625 condMapEmpty!8120) mapIsEmpty!8120))

(assert (= (and b!1549625 (not condMapEmpty!8120)) mapNonEmpty!8119))

(assert (= b!1549618 b!1549625))

(assert (= b!1549610 b!1549618))

(assert (= b!1549602 b!1549610))

(assert (= (and b!1549615 ((_ is LongMap!1745) (v!23536 (underlying!3700 (cache!2070 cacheFurthestNullable!103))))) b!1549602))

(assert (= b!1549604 b!1549615))

(assert (= (and b!1549619 ((_ is HashMap!1689) (cache!2070 cacheFurthestNullable!103))) b!1549604))

(assert (= b!1549619 b!1549601))

(assert (= start!143622 b!1549619))

(assert (= start!143622 b!1549616))

(assert (= b!1549595 b!1549622))

(assert (= start!143622 b!1549595))

(assert (= (and b!1549605 condMapEmpty!8119) mapIsEmpty!8119))

(assert (= (and b!1549605 (not condMapEmpty!8119)) mapNonEmpty!8120))

(assert (= b!1549627 b!1549605))

(assert (= b!1549598 b!1549627))

(assert (= b!1549624 b!1549598))

(assert (= (and b!1549620 ((_ is LongMap!1746) (v!23538 (underlying!3702 (cache!2071 cacheDown!768))))) b!1549624))

(assert (= b!1549596 b!1549620))

(assert (= (and b!1549621 ((_ is HashMap!1690) (cache!2071 cacheDown!768))) b!1549596))

(assert (= start!143622 b!1549621))

(declare-fun m!1822519 () Bool)

(assert (=> b!1549601 m!1822519))

(declare-fun m!1822521 () Bool)

(assert (=> b!1549603 m!1822521))

(declare-fun m!1822523 () Bool)

(assert (=> b!1549603 m!1822523))

(declare-fun m!1822525 () Bool)

(assert (=> b!1549614 m!1822525))

(declare-fun m!1822527 () Bool)

(assert (=> b!1549626 m!1822527))

(declare-fun m!1822529 () Bool)

(assert (=> mapNonEmpty!8120 m!1822529))

(declare-fun m!1822531 () Bool)

(assert (=> b!1549612 m!1822531))

(declare-fun m!1822533 () Bool)

(assert (=> b!1549595 m!1822533))

(declare-fun m!1822535 () Bool)

(assert (=> b!1549595 m!1822535))

(declare-fun m!1822537 () Bool)

(assert (=> b!1549629 m!1822537))

(declare-fun m!1822539 () Bool)

(assert (=> b!1549629 m!1822539))

(declare-fun m!1822541 () Bool)

(assert (=> b!1549616 m!1822541))

(declare-fun m!1822543 () Bool)

(assert (=> b!1549628 m!1822543))

(assert (=> b!1549628 m!1822543))

(declare-fun m!1822545 () Bool)

(assert (=> b!1549628 m!1822545))

(declare-fun m!1822547 () Bool)

(assert (=> b!1549628 m!1822547))

(declare-fun m!1822549 () Bool)

(assert (=> b!1549607 m!1822549))

(declare-fun m!1822551 () Bool)

(assert (=> b!1549607 m!1822551))

(declare-fun m!1822553 () Bool)

(assert (=> b!1549607 m!1822553))

(declare-fun m!1822555 () Bool)

(assert (=> b!1549607 m!1822555))

(assert (=> b!1549607 m!1822555))

(assert (=> b!1549607 m!1822553))

(declare-fun m!1822557 () Bool)

(assert (=> b!1549607 m!1822557))

(declare-fun m!1822559 () Bool)

(assert (=> b!1549607 m!1822559))

(declare-fun m!1822561 () Bool)

(assert (=> b!1549607 m!1822561))

(declare-fun m!1822563 () Bool)

(assert (=> b!1549607 m!1822563))

(declare-fun m!1822565 () Bool)

(assert (=> b!1549607 m!1822565))

(declare-fun m!1822567 () Bool)

(assert (=> b!1549607 m!1822567))

(declare-fun m!1822569 () Bool)

(assert (=> b!1549607 m!1822569))

(declare-fun m!1822571 () Bool)

(assert (=> b!1549607 m!1822571))

(declare-fun m!1822573 () Bool)

(assert (=> b!1549607 m!1822573))

(declare-fun m!1822575 () Bool)

(assert (=> b!1549597 m!1822575))

(declare-fun m!1822577 () Bool)

(assert (=> mapNonEmpty!8119 m!1822577))

(declare-fun m!1822579 () Bool)

(assert (=> start!143622 m!1822579))

(declare-fun m!1822581 () Bool)

(assert (=> start!143622 m!1822581))

(declare-fun m!1822583 () Bool)

(assert (=> start!143622 m!1822583))

(declare-fun m!1822585 () Bool)

(assert (=> start!143622 m!1822585))

(declare-fun m!1822587 () Bool)

(assert (=> start!143622 m!1822587))

(declare-fun m!1822589 () Bool)

(assert (=> b!1549599 m!1822589))

(declare-fun m!1822591 () Bool)

(assert (=> mapNonEmpty!8118 m!1822591))

(declare-fun m!1822593 () Bool)

(assert (=> b!1549618 m!1822593))

(declare-fun m!1822595 () Bool)

(assert (=> b!1549618 m!1822595))

(declare-fun m!1822597 () Bool)

(assert (=> b!1549608 m!1822597))

(declare-fun m!1822599 () Bool)

(assert (=> b!1549619 m!1822599))

(declare-fun m!1822601 () Bool)

(assert (=> b!1549627 m!1822601))

(declare-fun m!1822603 () Bool)

(assert (=> b!1549627 m!1822603))

(check-sat (not start!143622) (not b!1549606) (not b!1549601) (not mapNonEmpty!8118) (not b!1549618) (not b!1549597) (not b_next!41733) (not b!1549626) (not mapNonEmpty!8119) b_and!108123 (not b_next!41731) (not b_next!41743) (not b_next!41745) (not b!1549612) b_and!108131 (not b_next!41741) (not b_next!41739) b_and!108127 (not b!1549608) (not b!1549616) (not b_next!41735) (not b!1549605) b_and!108121 (not b_next!41737) (not b!1549625) (not b!1549603) (not mapNonEmpty!8120) b_and!108129 b_and!108117 b_and!108119 (not b!1549607) (not b!1549619) b_and!108125 (not b!1549627) (not b!1549628) (not b!1549629) (not b!1549595) (not b!1549599) (not b!1549614))
(check-sat (not b_next!41745) (not b_next!41733) (not b_next!41735) b_and!108121 (not b_next!41737) b_and!108129 b_and!108125 b_and!108123 (not b_next!41731) (not b_next!41743) b_and!108131 (not b_next!41741) (not b_next!41739) b_and!108127 b_and!108117 b_and!108119)
