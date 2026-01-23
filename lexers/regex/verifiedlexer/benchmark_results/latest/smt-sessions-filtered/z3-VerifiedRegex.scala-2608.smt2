; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139550 () Bool)

(assert start!139550)

(declare-fun b!1485690 () Bool)

(declare-fun b_free!38599 () Bool)

(declare-fun b_next!39303 () Bool)

(assert (=> b!1485690 (= b_free!38599 (not b_next!39303))))

(declare-fun tp!422568 () Bool)

(declare-fun b_and!103317 () Bool)

(assert (=> b!1485690 (= tp!422568 b_and!103317)))

(declare-fun b!1485677 () Bool)

(declare-fun b_free!38601 () Bool)

(declare-fun b_next!39305 () Bool)

(assert (=> b!1485677 (= b_free!38601 (not b_next!39305))))

(declare-fun tp!422552 () Bool)

(declare-fun b_and!103319 () Bool)

(assert (=> b!1485677 (= tp!422552 b_and!103319)))

(declare-fun b!1485663 () Bool)

(declare-fun b_free!38603 () Bool)

(declare-fun b_next!39307 () Bool)

(assert (=> b!1485663 (= b_free!38603 (not b_next!39307))))

(declare-fun tp!422559 () Bool)

(declare-fun b_and!103321 () Bool)

(assert (=> b!1485663 (= tp!422559 b_and!103321)))

(declare-fun b!1485666 () Bool)

(declare-fun b_free!38605 () Bool)

(declare-fun b_next!39309 () Bool)

(assert (=> b!1485666 (= b_free!38605 (not b_next!39309))))

(declare-fun tp!422548 () Bool)

(declare-fun b_and!103323 () Bool)

(assert (=> b!1485666 (= tp!422548 b_and!103323)))

(declare-fun b_free!38607 () Bool)

(declare-fun b_next!39311 () Bool)

(assert (=> b!1485666 (= b_free!38607 (not b_next!39311))))

(declare-fun tp!422569 () Bool)

(declare-fun b_and!103325 () Bool)

(assert (=> b!1485666 (= tp!422569 b_and!103325)))

(declare-fun b!1485685 () Bool)

(declare-fun b_free!38609 () Bool)

(declare-fun b_next!39313 () Bool)

(assert (=> b!1485685 (= b_free!38609 (not b_next!39313))))

(declare-fun tp!422564 () Bool)

(declare-fun b_and!103327 () Bool)

(assert (=> b!1485685 (= tp!422564 b_and!103327)))

(declare-fun b!1485673 () Bool)

(declare-fun b_free!38611 () Bool)

(declare-fun b_next!39315 () Bool)

(assert (=> b!1485673 (= b_free!38611 (not b_next!39315))))

(declare-fun tp!422565 () Bool)

(declare-fun b_and!103329 () Bool)

(assert (=> b!1485673 (= tp!422565 b_and!103329)))

(declare-fun b!1485670 () Bool)

(declare-fun b_free!38613 () Bool)

(declare-fun b_next!39317 () Bool)

(assert (=> b!1485670 (= b_free!38613 (not b_next!39317))))

(declare-fun tp!422563 () Bool)

(declare-fun b_and!103331 () Bool)

(assert (=> b!1485670 (= tp!422563 b_and!103331)))

(declare-fun b!1485657 () Bool)

(declare-fun e!950437 () Bool)

(declare-fun tp!422562 () Bool)

(declare-fun mapRes!6600 () Bool)

(assert (=> b!1485657 (= e!950437 (and tp!422562 mapRes!6600))))

(declare-fun condMapEmpty!6601 () Bool)

(declare-datatypes ((C!8432 0))(
  ( (C!8433 (val!4788 Int)) )
))
(declare-datatypes ((Regex!4127 0))(
  ( (ElementMatch!4127 (c!243289 C!8432)) (Concat!7029 (regOne!8766 Regex!4127) (regTwo!8766 Regex!4127)) (EmptyExpr!4127) (Star!4127 (reg!4456 Regex!4127)) (EmptyLang!4127) (Union!4127 (regOne!8767 Regex!4127) (regTwo!8767 Regex!4127)) )
))
(declare-datatypes ((List!15869 0))(
  ( (Nil!15801) (Cons!15801 (h!21202 Regex!4127) (t!137791 List!15869)) )
))
(declare-datatypes ((Context!1290 0))(
  ( (Context!1291 (exprs!1145 List!15869)) )
))
(declare-datatypes ((tuple2!14482 0))(
  ( (tuple2!14483 (_1!8155 Context!1290) (_2!8155 C!8432)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14484 0))(
  ( (tuple2!14485 (_1!8156 tuple2!14482) (_2!8156 (InoxSet Context!1290))) )
))
(declare-datatypes ((List!15870 0))(
  ( (Nil!15802) (Cons!15802 (h!21203 tuple2!14484) (t!137792 List!15870)) )
))
(declare-datatypes ((array!4898 0))(
  ( (array!4899 (arr!2188 (Array (_ BitVec 32) (_ BitVec 64))) (size!12786 (_ BitVec 32))) )
))
(declare-datatypes ((array!4900 0))(
  ( (array!4901 (arr!2189 (Array (_ BitVec 32) List!15870)) (size!12787 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2772 0))(
  ( (LongMapFixedSize!2773 (defaultEntry!1746 Int) (mask!4538 (_ BitVec 32)) (extraKeys!1633 (_ BitVec 32)) (zeroValue!1643 List!15870) (minValue!1643 List!15870) (_size!2853 (_ BitVec 32)) (_keys!1680 array!4898) (_values!1665 array!4900) (_vacant!1447 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1330 0))(
  ( (HashableExt!1329 (__x!9699 Int)) )
))
(declare-datatypes ((Cell!5429 0))(
  ( (Cell!5430 (v!22628 LongMapFixedSize!2772)) )
))
(declare-datatypes ((MutLongMap!1386 0))(
  ( (LongMap!1386 (underlying!2981 Cell!5429)) (MutLongMapExt!1385 (__x!9700 Int)) )
))
(declare-datatypes ((Cell!5431 0))(
  ( (Cell!5432 (v!22629 MutLongMap!1386)) )
))
(declare-datatypes ((MutableMap!1330 0))(
  ( (MutableMapExt!1329 (__x!9701 Int)) (HashMap!1330 (underlying!2982 Cell!5431) (hashF!3249 Hashable!1330) (_size!2854 (_ BitVec 32)) (defaultValue!1490 Int)) )
))
(declare-datatypes ((CacheUp!786 0))(
  ( (CacheUp!787 (cache!1711 MutableMap!1330)) )
))
(declare-fun cacheUp!616 () CacheUp!786)

(declare-fun mapDefault!6602 () List!15870)

(assert (=> b!1485657 (= condMapEmpty!6601 (= (arr!2189 (_values!1665 (v!22628 (underlying!2981 (v!22629 (underlying!2982 (cache!1711 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15870)) mapDefault!6602)))))

(declare-fun tp!422556 () Bool)

(declare-fun b!1485658 () Bool)

(declare-datatypes ((List!15871 0))(
  ( (Nil!15803) (Cons!15803 (h!21204 (_ BitVec 16)) (t!137793 List!15871)) )
))
(declare-datatypes ((TokenValue!2902 0))(
  ( (FloatLiteralValue!5804 (text!20759 List!15871)) (TokenValueExt!2901 (__x!9702 Int)) (Broken!14510 (value!89776 List!15871)) (Object!2969) (End!2902) (Def!2902) (Underscore!2902) (Match!2902) (Else!2902) (Error!2902) (Case!2902) (If!2902) (Extends!2902) (Abstract!2902) (Class!2902) (Val!2902) (DelimiterValue!5804 (del!2962 List!15871)) (KeywordValue!2908 (value!89777 List!15871)) (CommentValue!5804 (value!89778 List!15871)) (WhitespaceValue!5804 (value!89779 List!15871)) (IndentationValue!2902 (value!89780 List!15871)) (String!18771) (Int32!2902) (Broken!14511 (value!89781 List!15871)) (Boolean!2903) (Unit!25628) (OperatorValue!2905 (op!2962 List!15871)) (IdentifierValue!5804 (value!89782 List!15871)) (IdentifierValue!5805 (value!89783 List!15871)) (WhitespaceValue!5805 (value!89784 List!15871)) (True!5804) (False!5804) (Broken!14512 (value!89785 List!15871)) (Broken!14513 (value!89786 List!15871)) (True!5805) (RightBrace!2902) (RightBracket!2902) (Colon!2902) (Null!2902) (Comma!2902) (LeftBracket!2902) (False!5805) (LeftBrace!2902) (ImaginaryLiteralValue!2902 (text!20760 List!15871)) (StringLiteralValue!8706 (value!89787 List!15871)) (EOFValue!2902 (value!89788 List!15871)) (IdentValue!2902 (value!89789 List!15871)) (DelimiterValue!5805 (value!89790 List!15871)) (DedentValue!2902 (value!89791 List!15871)) (NewLineValue!2902 (value!89792 List!15871)) (IntegerValue!8706 (value!89793 (_ BitVec 32)) (text!20761 List!15871)) (IntegerValue!8707 (value!89794 Int) (text!20762 List!15871)) (Times!2902) (Or!2902) (Equal!2902) (Minus!2902) (Broken!14514 (value!89795 List!15871)) (And!2902) (Div!2902) (LessEqual!2902) (Mod!2902) (Concat!7030) (Not!2902) (Plus!2902) (SpaceValue!2902 (value!89796 List!15871)) (IntegerValue!8708 (value!89797 Int) (text!20763 List!15871)) (StringLiteralValue!8707 (text!20764 List!15871)) (FloatLiteralValue!5805 (text!20765 List!15871)) (BytesLiteralValue!2902 (value!89798 List!15871)) (CommentValue!5805 (value!89799 List!15871)) (StringLiteralValue!8708 (value!89800 List!15871)) (ErrorTokenValue!2902 (msg!2963 List!15871)) )
))
(declare-datatypes ((List!15872 0))(
  ( (Nil!15804) (Cons!15804 (h!21205 C!8432) (t!137794 List!15872)) )
))
(declare-datatypes ((IArray!10757 0))(
  ( (IArray!10758 (innerList!5436 List!15872)) )
))
(declare-datatypes ((Conc!5376 0))(
  ( (Node!5376 (left!13276 Conc!5376) (right!13606 Conc!5376) (csize!10982 Int) (cheight!5587 Int)) (Leaf!7985 (xs!8133 IArray!10757) (csize!10983 Int)) (Empty!5376) )
))
(declare-datatypes ((BalanceConc!10694 0))(
  ( (BalanceConc!10695 (c!243290 Conc!5376)) )
))
(declare-datatypes ((String!18772 0))(
  ( (String!18773 (value!89801 String)) )
))
(declare-datatypes ((TokenValueInjection!5464 0))(
  ( (TokenValueInjection!5465 (toValue!4153 Int) (toChars!4012 Int)) )
))
(declare-datatypes ((Rule!5424 0))(
  ( (Rule!5425 (regex!2812 Regex!4127) (tag!3076 String!18772) (isSeparator!2812 Bool) (transformation!2812 TokenValueInjection!5464)) )
))
(declare-datatypes ((List!15873 0))(
  ( (Nil!15805) (Cons!15805 (h!21206 Rule!5424) (t!137795 List!15873)) )
))
(declare-fun rules!1640 () List!15873)

(declare-fun e!950427 () Bool)

(declare-fun e!950429 () Bool)

(declare-fun inv!21009 (String!18772) Bool)

(declare-fun inv!21011 (TokenValueInjection!5464) Bool)

(assert (=> b!1485658 (= e!950429 (and tp!422556 (inv!21009 (tag!3076 (h!21206 rules!1640))) (inv!21011 (transformation!2812 (h!21206 rules!1640))) e!950427))))

(declare-fun mapNonEmpty!6600 () Bool)

(declare-fun mapRes!6601 () Bool)

(declare-fun tp!422553 () Bool)

(declare-fun tp!422542 () Bool)

(assert (=> mapNonEmpty!6600 (= mapRes!6601 (and tp!422553 tp!422542))))

(declare-datatypes ((tuple3!1238 0))(
  ( (tuple3!1239 (_1!8157 Regex!4127) (_2!8157 Context!1290) (_3!914 C!8432)) )
))
(declare-datatypes ((tuple2!14486 0))(
  ( (tuple2!14487 (_1!8158 tuple3!1238) (_2!8158 (InoxSet Context!1290))) )
))
(declare-datatypes ((List!15874 0))(
  ( (Nil!15806) (Cons!15806 (h!21207 tuple2!14486) (t!137796 List!15874)) )
))
(declare-datatypes ((array!4902 0))(
  ( (array!4903 (arr!2190 (Array (_ BitVec 32) List!15874)) (size!12788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2774 0))(
  ( (LongMapFixedSize!2775 (defaultEntry!1747 Int) (mask!4539 (_ BitVec 32)) (extraKeys!1634 (_ BitVec 32)) (zeroValue!1644 List!15874) (minValue!1644 List!15874) (_size!2855 (_ BitVec 32)) (_keys!1681 array!4898) (_values!1666 array!4902) (_vacant!1448 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5433 0))(
  ( (Cell!5434 (v!22630 LongMapFixedSize!2774)) )
))
(declare-datatypes ((MutLongMap!1387 0))(
  ( (LongMap!1387 (underlying!2983 Cell!5433)) (MutLongMapExt!1386 (__x!9703 Int)) )
))
(declare-datatypes ((Cell!5435 0))(
  ( (Cell!5436 (v!22631 MutLongMap!1387)) )
))
(declare-datatypes ((Hashable!1331 0))(
  ( (HashableExt!1330 (__x!9704 Int)) )
))
(declare-datatypes ((MutableMap!1331 0))(
  ( (MutableMapExt!1330 (__x!9705 Int)) (HashMap!1331 (underlying!2984 Cell!5435) (hashF!3250 Hashable!1331) (_size!2856 (_ BitVec 32)) (defaultValue!1491 Int)) )
))
(declare-datatypes ((CacheDown!790 0))(
  ( (CacheDown!791 (cache!1712 MutableMap!1331)) )
))
(declare-fun cacheDown!629 () CacheDown!790)

(declare-fun mapKey!6601 () (_ BitVec 32))

(declare-fun mapRest!6600 () (Array (_ BitVec 32) List!15874))

(declare-fun mapValue!6600 () List!15874)

(assert (=> mapNonEmpty!6600 (= (arr!2190 (_values!1666 (v!22630 (underlying!2983 (v!22631 (underlying!2984 (cache!1712 cacheDown!629))))))) (store mapRest!6600 mapKey!6601 mapValue!6600))))

(declare-fun b!1485659 () Bool)

(declare-fun e!950424 () Bool)

(declare-fun tp!422554 () Bool)

(assert (=> b!1485659 (= e!950424 (and tp!422554 mapRes!6601))))

(declare-fun condMapEmpty!6600 () Bool)

(declare-fun mapDefault!6600 () List!15874)

(assert (=> b!1485659 (= condMapEmpty!6600 (= (arr!2190 (_values!1666 (v!22630 (underlying!2983 (v!22631 (underlying!2984 (cache!1712 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15874)) mapDefault!6600)))))

(declare-fun mapIsEmpty!6600 () Bool)

(declare-fun mapRes!6602 () Bool)

(assert (=> mapIsEmpty!6600 mapRes!6602))

(declare-fun b!1485660 () Bool)

(declare-fun e!950433 () Bool)

(declare-fun e!950416 () Bool)

(declare-datatypes ((tuple3!1240 0))(
  ( (tuple3!1241 (_1!8159 (InoxSet Context!1290)) (_2!8159 Int) (_3!915 Int)) )
))
(declare-datatypes ((tuple2!14488 0))(
  ( (tuple2!14489 (_1!8160 tuple3!1240) (_2!8160 Int)) )
))
(declare-datatypes ((List!15875 0))(
  ( (Nil!15807) (Cons!15807 (h!21208 tuple2!14488) (t!137797 List!15875)) )
))
(declare-datatypes ((array!4904 0))(
  ( (array!4905 (arr!2191 (Array (_ BitVec 32) List!15875)) (size!12789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2776 0))(
  ( (LongMapFixedSize!2777 (defaultEntry!1748 Int) (mask!4540 (_ BitVec 32)) (extraKeys!1635 (_ BitVec 32)) (zeroValue!1645 List!15875) (minValue!1645 List!15875) (_size!2857 (_ BitVec 32)) (_keys!1682 array!4898) (_values!1667 array!4904) (_vacant!1449 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5437 0))(
  ( (Cell!5438 (v!22632 LongMapFixedSize!2776)) )
))
(declare-datatypes ((MutLongMap!1388 0))(
  ( (LongMap!1388 (underlying!2985 Cell!5437)) (MutLongMapExt!1387 (__x!9706 Int)) )
))
(declare-fun lt!516077 () MutLongMap!1388)

(get-info :version)

(assert (=> b!1485660 (= e!950433 (and e!950416 ((_ is LongMap!1388) lt!516077)))))

(declare-datatypes ((Cell!5439 0))(
  ( (Cell!5440 (v!22633 MutLongMap!1388)) )
))
(declare-datatypes ((Hashable!1332 0))(
  ( (HashableExt!1331 (__x!9707 Int)) )
))
(declare-datatypes ((MutableMap!1332 0))(
  ( (MutableMapExt!1331 (__x!9708 Int)) (HashMap!1332 (underlying!2986 Cell!5439) (hashF!3251 Hashable!1332) (_size!2858 (_ BitVec 32)) (defaultValue!1492 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!212 0))(
  ( (CacheFurthestNullable!213 (cache!1713 MutableMap!1332) (totalInput!2241 BalanceConc!10694)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!212)

(assert (=> b!1485660 (= lt!516077 (v!22633 (underlying!2986 (cache!1713 cacheFurthestNullable!64))))))

(declare-fun b!1485661 () Bool)

(declare-fun e!950417 () Bool)

(declare-fun tp!422558 () Bool)

(assert (=> b!1485661 (= e!950417 (and tp!422558 mapRes!6602))))

(declare-fun condMapEmpty!6602 () Bool)

(declare-fun mapDefault!6601 () List!15875)

(assert (=> b!1485661 (= condMapEmpty!6602 (= (arr!2191 (_values!1667 (v!22632 (underlying!2985 (v!22633 (underlying!2986 (cache!1713 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15875)) mapDefault!6601)))))

(declare-fun b!1485662 () Bool)

(declare-fun e!950431 () Bool)

(declare-fun e!950441 () Bool)

(assert (=> b!1485662 (= e!950431 e!950441)))

(declare-fun res!670837 () Bool)

(assert (=> b!1485662 (=> (not res!670837) (not e!950441))))

(declare-fun lt!516072 () List!15872)

(declare-fun lt!516070 () List!15872)

(assert (=> b!1485662 (= res!670837 (= lt!516072 lt!516070))))

(declare-fun lt!516069 () List!15872)

(declare-fun lt!516058 () List!15872)

(declare-fun ++!4255 (List!15872 List!15872) List!15872)

(assert (=> b!1485662 (= lt!516070 (++!4255 lt!516069 lt!516058))))

(declare-fun totalInput!458 () BalanceConc!10694)

(declare-fun list!6268 (BalanceConc!10694) List!15872)

(assert (=> b!1485662 (= lt!516072 (list!6268 totalInput!458))))

(declare-fun input!1102 () BalanceConc!10694)

(assert (=> b!1485662 (= lt!516058 (list!6268 input!1102))))

(declare-fun treated!70 () BalanceConc!10694)

(assert (=> b!1485662 (= lt!516069 (list!6268 treated!70))))

(declare-fun tp!422557 () Bool)

(declare-fun tp!422567 () Bool)

(declare-fun e!950419 () Bool)

(declare-fun array_inv!1589 (array!4898) Bool)

(declare-fun array_inv!1590 (array!4902) Bool)

(assert (=> b!1485663 (= e!950419 (and tp!422559 tp!422567 tp!422557 (array_inv!1589 (_keys!1681 (v!22630 (underlying!2983 (v!22631 (underlying!2984 (cache!1712 cacheDown!629))))))) (array_inv!1590 (_values!1666 (v!22630 (underlying!2983 (v!22631 (underlying!2984 (cache!1712 cacheDown!629))))))) e!950424))))

(declare-fun e!950451 () Bool)

(declare-fun e!950423 () Bool)

(declare-fun b!1485664 () Bool)

(declare-fun e!950421 () Bool)

(declare-fun inv!21012 (BalanceConc!10694) Bool)

(assert (=> b!1485664 (= e!950423 (and e!950421 (inv!21012 (totalInput!2241 cacheFurthestNullable!64)) e!950451))))

(declare-fun b!1485665 () Bool)

(declare-datatypes ((Token!5286 0))(
  ( (Token!5287 (value!89802 TokenValue!2902) (rule!4589 Rule!5424) (size!12790 Int) (originalCharacters!3674 List!15872)) )
))
(declare-datatypes ((List!15876 0))(
  ( (Nil!15808) (Cons!15808 (h!21209 Token!5286) (t!137798 List!15876)) )
))
(declare-datatypes ((IArray!10759 0))(
  ( (IArray!10760 (innerList!5437 List!15876)) )
))
(declare-datatypes ((Conc!5377 0))(
  ( (Node!5377 (left!13277 Conc!5377) (right!13607 Conc!5377) (csize!10984 Int) (cheight!5588 Int)) (Leaf!7986 (xs!8134 IArray!10759) (csize!10985 Int)) (Empty!5377) )
))
(declare-datatypes ((BalanceConc!10696 0))(
  ( (BalanceConc!10697 (c!243291 Conc!5377)) )
))
(declare-datatypes ((tuple2!14490 0))(
  ( (tuple2!14491 (_1!8161 BalanceConc!10696) (_2!8161 BalanceConc!10694)) )
))
(declare-fun e!950434 () tuple2!14490)

(assert (=> b!1485665 (= e!950434 (tuple2!14491 (BalanceConc!10697 Empty!5377) input!1102))))

(assert (=> b!1485666 (= e!950427 (and tp!422548 tp!422569))))

(declare-fun mapNonEmpty!6601 () Bool)

(declare-fun tp!422547 () Bool)

(declare-fun tp!422546 () Bool)

(assert (=> mapNonEmpty!6601 (= mapRes!6602 (and tp!422547 tp!422546))))

(declare-fun mapRest!6602 () (Array (_ BitVec 32) List!15875))

(declare-fun mapKey!6602 () (_ BitVec 32))

(declare-fun mapValue!6602 () List!15875)

(assert (=> mapNonEmpty!6601 (= (arr!2191 (_values!1667 (v!22632 (underlying!2985 (v!22633 (underlying!2986 (cache!1713 cacheFurthestNullable!64))))))) (store mapRest!6602 mapKey!6602 mapValue!6602))))

(declare-fun b!1485667 () Bool)

(declare-fun res!670840 () Bool)

(declare-fun e!950418 () Bool)

(assert (=> b!1485667 (=> (not res!670840) (not e!950418))))

(assert (=> b!1485667 (= res!670840 (= (totalInput!2241 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1485668 () Bool)

(declare-fun e!950428 () Bool)

(assert (=> b!1485668 (= e!950428 e!950418)))

(declare-fun res!670831 () Bool)

(assert (=> b!1485668 (=> (not res!670831) (not e!950418))))

(declare-fun acc!392 () BalanceConc!10696)

(declare-fun lt!516080 () tuple2!14490)

(declare-fun lt!516075 () tuple2!14490)

(declare-fun list!6269 (BalanceConc!10696) List!15876)

(declare-fun ++!4256 (BalanceConc!10696 BalanceConc!10696) BalanceConc!10696)

(assert (=> b!1485668 (= res!670831 (= (list!6269 (_1!8161 lt!516075)) (list!6269 (++!4256 acc!392 (_1!8161 lt!516080)))))))

(declare-datatypes ((LexerInterface!2468 0))(
  ( (LexerInterfaceExt!2465 (__x!9709 Int)) (Lexer!2466) )
))
(declare-fun thiss!13241 () LexerInterface!2468)

(declare-fun lexRec!305 (LexerInterface!2468 List!15873 BalanceConc!10694) tuple2!14490)

(assert (=> b!1485668 (= lt!516080 (lexRec!305 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1485668 (= lt!516075 (lexRec!305 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1485669 () Bool)

(declare-fun tp!422541 () Bool)

(declare-fun inv!21013 (Conc!5376) Bool)

(assert (=> b!1485669 (= e!950451 (and (inv!21013 (c!243290 (totalInput!2241 cacheFurthestNullable!64))) tp!422541))))

(declare-fun mapIsEmpty!6601 () Bool)

(assert (=> mapIsEmpty!6601 mapRes!6600))

(declare-fun e!950440 () Bool)

(declare-fun e!950444 () Bool)

(assert (=> b!1485670 (= e!950440 (and e!950444 tp!422563))))

(declare-fun b!1485671 () Bool)

(declare-fun res!670832 () Bool)

(assert (=> b!1485671 (=> (not res!670832) (not e!950418))))

(declare-fun valid!1088 (CacheDown!790) Bool)

(assert (=> b!1485671 (= res!670832 (valid!1088 cacheDown!629))))

(declare-fun b!1485672 () Bool)

(declare-fun e!950445 () Bool)

(declare-fun e!950422 () Bool)

(assert (=> b!1485672 (= e!950445 e!950422)))

(declare-fun tp!422544 () Bool)

(declare-fun tp!422560 () Bool)

(declare-fun e!950435 () Bool)

(declare-fun array_inv!1591 (array!4904) Bool)

(assert (=> b!1485673 (= e!950435 (and tp!422565 tp!422560 tp!422544 (array_inv!1589 (_keys!1682 (v!22632 (underlying!2985 (v!22633 (underlying!2986 (cache!1713 cacheFurthestNullable!64))))))) (array_inv!1591 (_values!1667 (v!22632 (underlying!2985 (v!22633 (underlying!2986 (cache!1713 cacheFurthestNullable!64))))))) e!950417))))

(declare-fun mapNonEmpty!6602 () Bool)

(declare-fun tp!422540 () Bool)

(declare-fun tp!422555 () Bool)

(assert (=> mapNonEmpty!6602 (= mapRes!6600 (and tp!422540 tp!422555))))

(declare-fun mapKey!6600 () (_ BitVec 32))

(declare-fun mapValue!6601 () List!15870)

(declare-fun mapRest!6601 () (Array (_ BitVec 32) List!15870))

(assert (=> mapNonEmpty!6602 (= (arr!2189 (_values!1665 (v!22628 (underlying!2981 (v!22629 (underlying!2982 (cache!1711 cacheUp!616))))))) (store mapRest!6601 mapKey!6600 mapValue!6601))))

(declare-fun b!1485674 () Bool)

(declare-fun e!950414 () Bool)

(declare-fun e!950413 () Bool)

(assert (=> b!1485674 (= e!950414 e!950413)))

(declare-fun b!1485675 () Bool)

(declare-fun e!950432 () Bool)

(declare-fun e!950448 () Bool)

(assert (=> b!1485675 (= e!950432 e!950448)))

(declare-fun res!670828 () Bool)

(assert (=> b!1485675 (=> res!670828 e!950448)))

(declare-datatypes ((tuple2!14492 0))(
  ( (tuple2!14493 (_1!8162 Token!5286) (_2!8162 BalanceConc!10694)) )
))
(declare-datatypes ((Option!2894 0))(
  ( (None!2893) (Some!2893 (v!22634 tuple2!14492)) )
))
(declare-datatypes ((tuple4!590 0))(
  ( (tuple4!591 (_1!8163 Option!2894) (_2!8163 CacheUp!786) (_3!916 CacheDown!790) (_4!295 CacheFurthestNullable!212)) )
))
(declare-fun lt!516076 () tuple4!590)

(assert (=> b!1485675 (= res!670828 (not ((_ is Some!2893) (_1!8163 lt!516076))))))

(declare-fun maxPrefixZipperSequenceV3Mem!8 (LexerInterface!2468 List!15873 BalanceConc!10694 BalanceConc!10694 CacheUp!786 CacheDown!790 CacheFurthestNullable!212) tuple4!590)

(assert (=> b!1485675 (= lt!516076 (maxPrefixZipperSequenceV3Mem!8 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1485676 () Bool)

(declare-fun lt!516065 () MutLongMap!1387)

(assert (=> b!1485676 (= e!950444 (and e!950414 ((_ is LongMap!1387) lt!516065)))))

(assert (=> b!1485676 (= lt!516065 (v!22631 (underlying!2984 (cache!1712 cacheDown!629))))))

(declare-fun e!950439 () Bool)

(declare-fun e!950447 () Bool)

(assert (=> b!1485677 (= e!950439 (and e!950447 tp!422552))))

(declare-fun b!1485678 () Bool)

(declare-fun e!950415 () Bool)

(declare-fun tp!422566 () Bool)

(assert (=> b!1485678 (= e!950415 (and (inv!21013 (c!243290 input!1102)) tp!422566))))

(declare-fun b!1485679 () Bool)

(declare-fun e!950420 () Bool)

(assert (=> b!1485679 (= e!950422 e!950420)))

(declare-fun b!1485680 () Bool)

(declare-fun lt!516074 () MutLongMap!1386)

(assert (=> b!1485680 (= e!950447 (and e!950445 ((_ is LongMap!1386) lt!516074)))))

(assert (=> b!1485680 (= lt!516074 (v!22629 (underlying!2982 (cache!1711 cacheUp!616))))))

(declare-fun b!1485681 () Bool)

(assert (=> b!1485681 (= e!950413 e!950419)))

(declare-fun b!1485682 () Bool)

(declare-fun e!950436 () Bool)

(assert (=> b!1485682 (= e!950416 e!950436)))

(declare-fun b!1485683 () Bool)

(declare-fun res!670829 () Bool)

(assert (=> b!1485683 (=> (not res!670829) (not e!950431))))

(declare-fun rulesInvariant!2252 (LexerInterface!2468 List!15873) Bool)

(assert (=> b!1485683 (= res!670829 (rulesInvariant!2252 thiss!13241 rules!1640))))

(declare-fun b!1485684 () Bool)

(assert (=> b!1485684 (= e!950418 (not e!950432))))

(declare-fun res!670830 () Bool)

(assert (=> b!1485684 (=> res!670830 e!950432)))

(declare-fun isSuffix!280 (List!15872 List!15872) Bool)

(assert (=> b!1485684 (= res!670830 (not (isSuffix!280 lt!516058 lt!516072)))))

(assert (=> b!1485684 (isSuffix!280 lt!516058 lt!516070)))

(declare-datatypes ((Unit!25629 0))(
  ( (Unit!25630) )
))
(declare-fun lt!516060 () Unit!25629)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!258 (List!15872 List!15872) Unit!25629)

(assert (=> b!1485684 (= lt!516060 (lemmaConcatTwoListThenFSndIsSuffix!258 lt!516069 lt!516058))))

(declare-fun tp!422550 () Bool)

(declare-fun tp!422561 () Bool)

(declare-fun array_inv!1592 (array!4900) Bool)

(assert (=> b!1485685 (= e!950420 (and tp!422564 tp!422550 tp!422561 (array_inv!1589 (_keys!1680 (v!22628 (underlying!2981 (v!22629 (underlying!2982 (cache!1711 cacheUp!616))))))) (array_inv!1592 (_values!1665 (v!22628 (underlying!2981 (v!22629 (underlying!2982 (cache!1711 cacheUp!616))))))) e!950437))))

(declare-fun b!1485686 () Bool)

(declare-fun e!950443 () Bool)

(declare-fun tp!422551 () Bool)

(assert (=> b!1485686 (= e!950443 (and (inv!21013 (c!243290 totalInput!458)) tp!422551))))

(declare-fun b!1485687 () Bool)

(declare-fun lt!516083 () tuple2!14490)

(declare-fun lt!516063 () Option!2894)

(declare-fun prepend!437 (BalanceConc!10696 Token!5286) BalanceConc!10696)

(assert (=> b!1485687 (= e!950434 (tuple2!14491 (prepend!437 (_1!8161 lt!516083) (_1!8162 (v!22634 lt!516063))) (_2!8161 lt!516083)))))

(assert (=> b!1485687 (= lt!516083 (lexRec!305 thiss!13241 rules!1640 (_2!8162 (v!22634 lt!516063))))))

(declare-fun b!1485688 () Bool)

(declare-fun e!950442 () Bool)

(declare-fun tp!422545 () Bool)

(assert (=> b!1485688 (= e!950442 (and (inv!21013 (c!243290 treated!70)) tp!422545))))

(declare-fun b!1485689 () Bool)

(assert (=> b!1485689 (= e!950441 e!950428)))

(declare-fun res!670836 () Bool)

(assert (=> b!1485689 (=> (not res!670836) (not e!950428))))

(declare-fun lt!516057 () List!15876)

(declare-fun lt!516061 () List!15876)

(assert (=> b!1485689 (= res!670836 (= lt!516057 lt!516061))))

(assert (=> b!1485689 (= lt!516061 (list!6269 acc!392))))

(declare-fun lt!516067 () tuple2!14490)

(assert (=> b!1485689 (= lt!516057 (list!6269 (_1!8161 lt!516067)))))

(assert (=> b!1485689 (= lt!516067 (lexRec!305 thiss!13241 rules!1640 treated!70))))

(assert (=> b!1485690 (= e!950421 (and e!950433 tp!422568))))

(declare-fun res!670834 () Bool)

(assert (=> start!139550 (=> (not res!670834) (not e!950431))))

(assert (=> start!139550 (= res!670834 ((_ is Lexer!2466) thiss!13241))))

(assert (=> start!139550 e!950431))

(declare-fun e!950449 () Bool)

(declare-fun inv!21014 (BalanceConc!10696) Bool)

(assert (=> start!139550 (and (inv!21014 acc!392) e!950449)))

(declare-fun e!950450 () Bool)

(declare-fun inv!21015 (CacheUp!786) Bool)

(assert (=> start!139550 (and (inv!21015 cacheUp!616) e!950450)))

(declare-fun e!950446 () Bool)

(declare-fun inv!21016 (CacheDown!790) Bool)

(assert (=> start!139550 (and (inv!21016 cacheDown!629) e!950446)))

(assert (=> start!139550 (and (inv!21012 input!1102) e!950415)))

(assert (=> start!139550 (and (inv!21012 treated!70) e!950442)))

(assert (=> start!139550 true))

(declare-fun e!950430 () Bool)

(assert (=> start!139550 e!950430))

(declare-fun inv!21017 (CacheFurthestNullable!212) Bool)

(assert (=> start!139550 (and (inv!21017 cacheFurthestNullable!64) e!950423)))

(assert (=> start!139550 (and (inv!21012 totalInput!458) e!950443)))

(declare-fun b!1485691 () Bool)

(declare-fun res!670838 () Bool)

(assert (=> b!1485691 (=> (not res!670838) (not e!950428))))

(declare-fun isEmpty!9849 (List!15872) Bool)

(assert (=> b!1485691 (= res!670838 (isEmpty!9849 (list!6268 (_2!8161 lt!516067))))))

(declare-fun b!1485692 () Bool)

(declare-fun res!670833 () Bool)

(assert (=> b!1485692 (=> (not res!670833) (not e!950418))))

(declare-fun valid!1089 (CacheFurthestNullable!212) Bool)

(assert (=> b!1485692 (= res!670833 (valid!1089 cacheFurthestNullable!64))))

(declare-fun b!1485693 () Bool)

(declare-fun tp!422549 () Bool)

(assert (=> b!1485693 (= e!950430 (and e!950429 tp!422549))))

(declare-fun b!1485694 () Bool)

(declare-fun res!670839 () Bool)

(assert (=> b!1485694 (=> (not res!670839) (not e!950418))))

(assert (=> b!1485694 (= res!670839 (= (list!6268 (_2!8161 lt!516075)) (list!6268 (_2!8161 lt!516080))))))

(declare-fun b!1485695 () Bool)

(assert (=> b!1485695 (= e!950448 true)))

(declare-fun lt!516062 () BalanceConc!10694)

(declare-fun lt!516073 () BalanceConc!10694)

(declare-fun ++!4257 (BalanceConc!10694 BalanceConc!10694) BalanceConc!10694)

(assert (=> b!1485695 (= lt!516062 (++!4257 treated!70 lt!516073))))

(declare-fun lt!516081 () List!15872)

(declare-fun lt!516079 () List!15876)

(declare-datatypes ((tuple2!14494 0))(
  ( (tuple2!14495 (_1!8164 List!15876) (_2!8164 List!15872)) )
))
(declare-fun lexList!727 (LexerInterface!2468 List!15873 List!15872) tuple2!14494)

(assert (=> b!1485695 (= (lexList!727 thiss!13241 rules!1640 lt!516081) (tuple2!14495 lt!516079 Nil!15804))))

(declare-fun lt!516084 () Unit!25629)

(declare-fun lt!516068 () List!15876)

(declare-fun lt!516059 () tuple2!14490)

(declare-fun lt!516071 () List!15872)

(declare-fun lemmaLexThenLexPrefix!209 (LexerInterface!2468 List!15873 List!15872 List!15872 List!15876 List!15876 List!15872) Unit!25629)

(assert (=> b!1485695 (= lt!516084 (lemmaLexThenLexPrefix!209 thiss!13241 rules!1640 lt!516081 lt!516071 lt!516079 lt!516068 (list!6268 (_2!8161 lt!516059))))))

(declare-fun append!468 (BalanceConc!10696 Token!5286) BalanceConc!10696)

(assert (=> b!1485695 (= lt!516079 (list!6269 (append!468 acc!392 (_1!8162 (v!22634 (_1!8163 lt!516076))))))))

(declare-fun lt!516064 () List!15876)

(declare-fun ++!4258 (List!15876 List!15876) List!15876)

(assert (=> b!1485695 (= (++!4258 (++!4258 lt!516061 lt!516064) lt!516068) (++!4258 lt!516061 (++!4258 lt!516064 lt!516068)))))

(declare-fun lt!516078 () Unit!25629)

(declare-fun lemmaConcatAssociativity!898 (List!15876 List!15876 List!15876) Unit!25629)

(assert (=> b!1485695 (= lt!516078 (lemmaConcatAssociativity!898 lt!516061 lt!516064 lt!516068))))

(assert (=> b!1485695 (= lt!516068 (list!6269 (_1!8161 lt!516059)))))

(assert (=> b!1485695 (= lt!516064 (Cons!15808 (_1!8162 (v!22634 (_1!8163 lt!516076))) Nil!15808))))

(assert (=> b!1485695 (= lt!516080 e!950434)))

(declare-fun c!243288 () Bool)

(assert (=> b!1485695 (= c!243288 ((_ is Some!2893) lt!516063))))

(declare-fun maxPrefixZipperSequence!569 (LexerInterface!2468 List!15873 BalanceConc!10694) Option!2894)

(assert (=> b!1485695 (= lt!516063 (maxPrefixZipperSequence!569 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!516066 () List!15872)

(assert (=> b!1485695 (= (++!4255 lt!516081 lt!516071) (++!4255 lt!516069 (++!4255 lt!516066 lt!516071)))))

(assert (=> b!1485695 (= lt!516081 (++!4255 lt!516069 lt!516066))))

(declare-fun lt!516082 () Unit!25629)

(declare-fun lemmaConcatAssociativity!899 (List!15872 List!15872 List!15872) Unit!25629)

(assert (=> b!1485695 (= lt!516082 (lemmaConcatAssociativity!899 lt!516069 lt!516066 lt!516071))))

(assert (=> b!1485695 (= lt!516071 (list!6268 (_2!8162 (v!22634 (_1!8163 lt!516076)))))))

(assert (=> b!1485695 (= lt!516066 (list!6268 lt!516073))))

(declare-fun charsOf!1610 (Token!5286) BalanceConc!10694)

(assert (=> b!1485695 (= lt!516073 (charsOf!1610 (_1!8162 (v!22634 (_1!8163 lt!516076)))))))

(assert (=> b!1485695 (= lt!516059 (lexRec!305 thiss!13241 rules!1640 (_2!8162 (v!22634 (_1!8163 lt!516076)))))))

(declare-fun b!1485696 () Bool)

(declare-fun res!670835 () Bool)

(assert (=> b!1485696 (=> (not res!670835) (not e!950418))))

(declare-fun valid!1090 (CacheUp!786) Bool)

(assert (=> b!1485696 (= res!670835 (valid!1090 cacheUp!616))))

(declare-fun b!1485697 () Bool)

(assert (=> b!1485697 (= e!950436 e!950435)))

(declare-fun b!1485698 () Bool)

(declare-fun res!670827 () Bool)

(assert (=> b!1485698 (=> (not res!670827) (not e!950431))))

(declare-fun isEmpty!9850 (List!15873) Bool)

(assert (=> b!1485698 (= res!670827 (not (isEmpty!9850 rules!1640)))))

(declare-fun b!1485699 () Bool)

(assert (=> b!1485699 (= e!950450 e!950439)))

(declare-fun mapIsEmpty!6602 () Bool)

(assert (=> mapIsEmpty!6602 mapRes!6601))

(declare-fun b!1485700 () Bool)

(declare-fun tp!422543 () Bool)

(declare-fun inv!21018 (Conc!5377) Bool)

(assert (=> b!1485700 (= e!950449 (and (inv!21018 (c!243291 acc!392)) tp!422543))))

(declare-fun b!1485701 () Bool)

(assert (=> b!1485701 (= e!950446 e!950440)))

(assert (= (and start!139550 res!670834) b!1485698))

(assert (= (and b!1485698 res!670827) b!1485683))

(assert (= (and b!1485683 res!670829) b!1485662))

(assert (= (and b!1485662 res!670837) b!1485689))

(assert (= (and b!1485689 res!670836) b!1485691))

(assert (= (and b!1485691 res!670838) b!1485668))

(assert (= (and b!1485668 res!670831) b!1485694))

(assert (= (and b!1485694 res!670839) b!1485696))

(assert (= (and b!1485696 res!670835) b!1485671))

(assert (= (and b!1485671 res!670832) b!1485692))

(assert (= (and b!1485692 res!670833) b!1485667))

(assert (= (and b!1485667 res!670840) b!1485684))

(assert (= (and b!1485684 (not res!670830)) b!1485675))

(assert (= (and b!1485675 (not res!670828)) b!1485695))

(assert (= (and b!1485695 c!243288) b!1485687))

(assert (= (and b!1485695 (not c!243288)) b!1485665))

(assert (= start!139550 b!1485700))

(assert (= (and b!1485657 condMapEmpty!6601) mapIsEmpty!6601))

(assert (= (and b!1485657 (not condMapEmpty!6601)) mapNonEmpty!6602))

(assert (= b!1485685 b!1485657))

(assert (= b!1485679 b!1485685))

(assert (= b!1485672 b!1485679))

(assert (= (and b!1485680 ((_ is LongMap!1386) (v!22629 (underlying!2982 (cache!1711 cacheUp!616))))) b!1485672))

(assert (= b!1485677 b!1485680))

(assert (= (and b!1485699 ((_ is HashMap!1330) (cache!1711 cacheUp!616))) b!1485677))

(assert (= start!139550 b!1485699))

(assert (= (and b!1485659 condMapEmpty!6600) mapIsEmpty!6602))

(assert (= (and b!1485659 (not condMapEmpty!6600)) mapNonEmpty!6600))

(assert (= b!1485663 b!1485659))

(assert (= b!1485681 b!1485663))

(assert (= b!1485674 b!1485681))

(assert (= (and b!1485676 ((_ is LongMap!1387) (v!22631 (underlying!2984 (cache!1712 cacheDown!629))))) b!1485674))

(assert (= b!1485670 b!1485676))

(assert (= (and b!1485701 ((_ is HashMap!1331) (cache!1712 cacheDown!629))) b!1485670))

(assert (= start!139550 b!1485701))

(assert (= start!139550 b!1485678))

(assert (= start!139550 b!1485688))

(assert (= b!1485658 b!1485666))

(assert (= b!1485693 b!1485658))

(assert (= (and start!139550 ((_ is Cons!15805) rules!1640)) b!1485693))

(assert (= (and b!1485661 condMapEmpty!6602) mapIsEmpty!6600))

(assert (= (and b!1485661 (not condMapEmpty!6602)) mapNonEmpty!6601))

(assert (= b!1485673 b!1485661))

(assert (= b!1485697 b!1485673))

(assert (= b!1485682 b!1485697))

(assert (= (and b!1485660 ((_ is LongMap!1388) (v!22633 (underlying!2986 (cache!1713 cacheFurthestNullable!64))))) b!1485682))

(assert (= b!1485690 b!1485660))

(assert (= (and b!1485664 ((_ is HashMap!1332) (cache!1713 cacheFurthestNullable!64))) b!1485690))

(assert (= b!1485664 b!1485669))

(assert (= start!139550 b!1485664))

(assert (= start!139550 b!1485686))

(declare-fun m!1732140 () Bool)

(assert (=> b!1485668 m!1732140))

(declare-fun m!1732142 () Bool)

(assert (=> b!1485668 m!1732142))

(declare-fun m!1732144 () Bool)

(assert (=> b!1485668 m!1732144))

(assert (=> b!1485668 m!1732140))

(declare-fun m!1732146 () Bool)

(assert (=> b!1485668 m!1732146))

(declare-fun m!1732148 () Bool)

(assert (=> b!1485668 m!1732148))

(declare-fun m!1732150 () Bool)

(assert (=> b!1485687 m!1732150))

(declare-fun m!1732152 () Bool)

(assert (=> b!1485687 m!1732152))

(declare-fun m!1732154 () Bool)

(assert (=> b!1485675 m!1732154))

(declare-fun m!1732156 () Bool)

(assert (=> b!1485685 m!1732156))

(declare-fun m!1732158 () Bool)

(assert (=> b!1485685 m!1732158))

(declare-fun m!1732160 () Bool)

(assert (=> b!1485671 m!1732160))

(declare-fun m!1732162 () Bool)

(assert (=> b!1485691 m!1732162))

(assert (=> b!1485691 m!1732162))

(declare-fun m!1732164 () Bool)

(assert (=> b!1485691 m!1732164))

(declare-fun m!1732166 () Bool)

(assert (=> b!1485663 m!1732166))

(declare-fun m!1732168 () Bool)

(assert (=> b!1485663 m!1732168))

(declare-fun m!1732170 () Bool)

(assert (=> mapNonEmpty!6601 m!1732170))

(declare-fun m!1732172 () Bool)

(assert (=> b!1485696 m!1732172))

(declare-fun m!1732174 () Bool)

(assert (=> b!1485684 m!1732174))

(declare-fun m!1732176 () Bool)

(assert (=> b!1485684 m!1732176))

(declare-fun m!1732178 () Bool)

(assert (=> b!1485684 m!1732178))

(declare-fun m!1732180 () Bool)

(assert (=> b!1485664 m!1732180))

(declare-fun m!1732182 () Bool)

(assert (=> b!1485673 m!1732182))

(declare-fun m!1732184 () Bool)

(assert (=> b!1485673 m!1732184))

(declare-fun m!1732186 () Bool)

(assert (=> mapNonEmpty!6602 m!1732186))

(declare-fun m!1732188 () Bool)

(assert (=> start!139550 m!1732188))

(declare-fun m!1732190 () Bool)

(assert (=> start!139550 m!1732190))

(declare-fun m!1732192 () Bool)

(assert (=> start!139550 m!1732192))

(declare-fun m!1732194 () Bool)

(assert (=> start!139550 m!1732194))

(declare-fun m!1732196 () Bool)

(assert (=> start!139550 m!1732196))

(declare-fun m!1732198 () Bool)

(assert (=> start!139550 m!1732198))

(declare-fun m!1732200 () Bool)

(assert (=> start!139550 m!1732200))

(declare-fun m!1732202 () Bool)

(assert (=> b!1485698 m!1732202))

(declare-fun m!1732204 () Bool)

(assert (=> b!1485678 m!1732204))

(declare-fun m!1732206 () Bool)

(assert (=> b!1485689 m!1732206))

(declare-fun m!1732208 () Bool)

(assert (=> b!1485689 m!1732208))

(declare-fun m!1732210 () Bool)

(assert (=> b!1485689 m!1732210))

(declare-fun m!1732212 () Bool)

(assert (=> b!1485686 m!1732212))

(declare-fun m!1732214 () Bool)

(assert (=> mapNonEmpty!6600 m!1732214))

(declare-fun m!1732216 () Bool)

(assert (=> b!1485692 m!1732216))

(declare-fun m!1732218 () Bool)

(assert (=> b!1485695 m!1732218))

(declare-fun m!1732220 () Bool)

(assert (=> b!1485695 m!1732220))

(declare-fun m!1732222 () Bool)

(assert (=> b!1485695 m!1732222))

(declare-fun m!1732224 () Bool)

(assert (=> b!1485695 m!1732224))

(declare-fun m!1732226 () Bool)

(assert (=> b!1485695 m!1732226))

(declare-fun m!1732228 () Bool)

(assert (=> b!1485695 m!1732228))

(declare-fun m!1732230 () Bool)

(assert (=> b!1485695 m!1732230))

(declare-fun m!1732232 () Bool)

(assert (=> b!1485695 m!1732232))

(assert (=> b!1485695 m!1732230))

(declare-fun m!1732234 () Bool)

(assert (=> b!1485695 m!1732234))

(declare-fun m!1732236 () Bool)

(assert (=> b!1485695 m!1732236))

(declare-fun m!1732238 () Bool)

(assert (=> b!1485695 m!1732238))

(declare-fun m!1732240 () Bool)

(assert (=> b!1485695 m!1732240))

(declare-fun m!1732242 () Bool)

(assert (=> b!1485695 m!1732242))

(assert (=> b!1485695 m!1732218))

(declare-fun m!1732244 () Bool)

(assert (=> b!1485695 m!1732244))

(assert (=> b!1485695 m!1732242))

(declare-fun m!1732246 () Bool)

(assert (=> b!1485695 m!1732246))

(declare-fun m!1732248 () Bool)

(assert (=> b!1485695 m!1732248))

(declare-fun m!1732250 () Bool)

(assert (=> b!1485695 m!1732250))

(declare-fun m!1732252 () Bool)

(assert (=> b!1485695 m!1732252))

(declare-fun m!1732254 () Bool)

(assert (=> b!1485695 m!1732254))

(assert (=> b!1485695 m!1732250))

(declare-fun m!1732256 () Bool)

(assert (=> b!1485695 m!1732256))

(declare-fun m!1732258 () Bool)

(assert (=> b!1485695 m!1732258))

(declare-fun m!1732260 () Bool)

(assert (=> b!1485695 m!1732260))

(assert (=> b!1485695 m!1732256))

(declare-fun m!1732262 () Bool)

(assert (=> b!1485688 m!1732262))

(declare-fun m!1732264 () Bool)

(assert (=> b!1485683 m!1732264))

(declare-fun m!1732266 () Bool)

(assert (=> b!1485662 m!1732266))

(declare-fun m!1732268 () Bool)

(assert (=> b!1485662 m!1732268))

(declare-fun m!1732270 () Bool)

(assert (=> b!1485662 m!1732270))

(declare-fun m!1732272 () Bool)

(assert (=> b!1485662 m!1732272))

(declare-fun m!1732274 () Bool)

(assert (=> b!1485700 m!1732274))

(declare-fun m!1732276 () Bool)

(assert (=> b!1485669 m!1732276))

(declare-fun m!1732278 () Bool)

(assert (=> b!1485694 m!1732278))

(declare-fun m!1732280 () Bool)

(assert (=> b!1485694 m!1732280))

(declare-fun m!1732282 () Bool)

(assert (=> b!1485658 m!1732282))

(declare-fun m!1732284 () Bool)

(assert (=> b!1485658 m!1732284))

(check-sat (not b!1485669) (not b_next!39313) (not b!1485698) (not b!1485675) (not b!1485688) (not b!1485663) b_and!103329 (not b!1485684) b_and!103331 (not mapNonEmpty!6602) (not b!1485687) (not b!1485678) (not b!1485686) b_and!103319 (not b!1485659) (not b!1485668) (not b_next!39303) (not start!139550) (not b!1485689) (not b!1485693) (not b!1485664) (not b!1485692) b_and!103317 (not b_next!39311) (not b!1485683) (not b_next!39317) (not b_next!39305) (not b!1485673) (not b!1485671) (not b!1485694) b_and!103323 (not b_next!39315) b_and!103321 (not b!1485657) (not mapNonEmpty!6600) (not b_next!39307) (not b!1485695) (not b!1485691) b_and!103325 b_and!103327 (not b!1485662) (not b!1485661) (not b!1485658) (not b!1485685) (not b_next!39309) (not mapNonEmpty!6601) (not b!1485696) (not b!1485700))
(check-sat b_and!103319 (not b_next!39303) (not b_next!39313) b_and!103321 (not b_next!39307) b_and!103329 (not b_next!39309) b_and!103331 b_and!103317 (not b_next!39311) (not b_next!39317) (not b_next!39305) b_and!103323 (not b_next!39315) b_and!103325 b_and!103327)
