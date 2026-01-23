; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143526 () Bool)

(assert start!143526)

(declare-fun b!1545745 () Bool)

(declare-fun b_free!40547 () Bool)

(declare-fun b_next!41251 () Bool)

(assert (=> b!1545745 (= b_free!40547 (not b_next!41251))))

(declare-fun tp!449789 () Bool)

(declare-fun b_and!107637 () Bool)

(assert (=> b!1545745 (= tp!449789 b_and!107637)))

(declare-fun b!1545754 () Bool)

(declare-fun b_free!40549 () Bool)

(declare-fun b_next!41253 () Bool)

(assert (=> b!1545754 (= b_free!40549 (not b_next!41253))))

(declare-fun tp!449773 () Bool)

(declare-fun b_and!107639 () Bool)

(assert (=> b!1545754 (= tp!449773 b_and!107639)))

(declare-fun b!1545761 () Bool)

(declare-fun b_free!40551 () Bool)

(declare-fun b_next!41255 () Bool)

(assert (=> b!1545761 (= b_free!40551 (not b_next!41255))))

(declare-fun tp!449798 () Bool)

(declare-fun b_and!107641 () Bool)

(assert (=> b!1545761 (= tp!449798 b_and!107641)))

(declare-fun b!1545769 () Bool)

(declare-fun b_free!40553 () Bool)

(declare-fun b_next!41257 () Bool)

(assert (=> b!1545769 (= b_free!40553 (not b_next!41257))))

(declare-fun tp!449793 () Bool)

(declare-fun b_and!107643 () Bool)

(assert (=> b!1545769 (= tp!449793 b_and!107643)))

(declare-fun b!1545755 () Bool)

(declare-fun b_free!40555 () Bool)

(declare-fun b_next!41259 () Bool)

(assert (=> b!1545755 (= b_free!40555 (not b_next!41259))))

(declare-fun tp!449774 () Bool)

(declare-fun b_and!107645 () Bool)

(assert (=> b!1545755 (= tp!449774 b_and!107645)))

(declare-fun b_free!40557 () Bool)

(declare-fun b_next!41261 () Bool)

(assert (=> b!1545755 (= b_free!40557 (not b_next!41261))))

(declare-fun tp!449797 () Bool)

(declare-fun b_and!107647 () Bool)

(assert (=> b!1545755 (= tp!449797 b_and!107647)))

(declare-fun b!1545777 () Bool)

(declare-fun b_free!40559 () Bool)

(declare-fun b_next!41263 () Bool)

(assert (=> b!1545777 (= b_free!40559 (not b_next!41263))))

(declare-fun tp!449775 () Bool)

(declare-fun b_and!107649 () Bool)

(assert (=> b!1545777 (= tp!449775 b_and!107649)))

(declare-fun b!1545765 () Bool)

(declare-fun b_free!40561 () Bool)

(declare-fun b_next!41265 () Bool)

(assert (=> b!1545765 (= b_free!40561 (not b_next!41265))))

(declare-fun tp!449792 () Bool)

(declare-fun b_and!107651 () Bool)

(assert (=> b!1545765 (= tp!449792 b_and!107651)))

(declare-fun e!990008 () Bool)

(declare-fun e!990026 () Bool)

(assert (=> b!1545745 (= e!990008 (and e!990026 tp!449789))))

(declare-fun b!1545746 () Bool)

(declare-fun e!990007 () Bool)

(declare-datatypes ((C!8632 0))(
  ( (C!8633 (val!4888 Int)) )
))
(declare-datatypes ((Regex!4227 0))(
  ( (ElementMatch!4227 (c!252105 C!8632)) (Concat!7218 (regOne!8966 Regex!4227) (regTwo!8966 Regex!4227)) (EmptyExpr!4227) (Star!4227 (reg!4556 Regex!4227)) (EmptyLang!4227) (Union!4227 (regOne!8967 Regex!4227) (regTwo!8967 Regex!4227)) )
))
(declare-datatypes ((List!16610 0))(
  ( (Nil!16542) (Cons!16542 (h!21943 Regex!4227) (t!141013 List!16610)) )
))
(declare-datatypes ((Context!1490 0))(
  ( (Context!1491 (exprs!1245 List!16610)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1614 0))(
  ( (tuple3!1615 (_1!9074 (InoxSet Context!1490)) (_2!9074 Int) (_3!1218 Int)) )
))
(declare-datatypes ((tuple2!15712 0))(
  ( (tuple2!15713 (_1!9075 tuple3!1614) (_2!9075 Int)) )
))
(declare-datatypes ((List!16611 0))(
  ( (Nil!16543) (Cons!16543 (h!21944 tuple2!15712) (t!141014 List!16611)) )
))
(declare-datatypes ((array!5778 0))(
  ( (array!5779 (arr!2568 (Array (_ BitVec 32) List!16611)) (size!13361 (_ BitVec 32))) )
))
(declare-datatypes ((array!5780 0))(
  ( (array!5781 (arr!2569 (Array (_ BitVec 32) (_ BitVec 64))) (size!13362 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3332 0))(
  ( (LongMapFixedSize!3333 (defaultEntry!2026 Int) (mask!4868 (_ BitVec 32)) (extraKeys!1913 (_ BitVec 32)) (zeroValue!1923 List!16611) (minValue!1923 List!16611) (_size!3413 (_ BitVec 32)) (_keys!1960 array!5780) (_values!1945 array!5778) (_vacant!1727 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6549 0))(
  ( (Cell!6550 (v!23353 LongMapFixedSize!3332)) )
))
(declare-datatypes ((MutLongMap!1666 0))(
  ( (LongMap!1666 (underlying!3541 Cell!6549)) (MutLongMapExt!1665 (__x!10710 Int)) )
))
(declare-fun lt!535551 () MutLongMap!1666)

(get-info :version)

(assert (=> b!1545746 (= e!990026 (and e!990007 ((_ is LongMap!1666) lt!535551)))))

(declare-datatypes ((Hashable!1610 0))(
  ( (HashableExt!1609 (__x!10711 Int)) )
))
(declare-datatypes ((List!16612 0))(
  ( (Nil!16544) (Cons!16544 (h!21945 C!8632) (t!141015 List!16612)) )
))
(declare-datatypes ((IArray!11041 0))(
  ( (IArray!11042 (innerList!5578 List!16612)) )
))
(declare-datatypes ((Conc!5518 0))(
  ( (Node!5518 (left!13512 Conc!5518) (right!13842 Conc!5518) (csize!11266 Int) (cheight!5729 Int)) (Leaf!8177 (xs!8318 IArray!11041) (csize!11267 Int)) (Empty!5518) )
))
(declare-datatypes ((BalanceConc!10978 0))(
  ( (BalanceConc!10979 (c!252106 Conc!5518)) )
))
(declare-datatypes ((Cell!6551 0))(
  ( (Cell!6552 (v!23354 MutLongMap!1666)) )
))
(declare-datatypes ((MutableMap!1610 0))(
  ( (MutableMapExt!1609 (__x!10712 Int)) (HashMap!1610 (underlying!3542 Cell!6551) (hashF!3529 Hashable!1610) (_size!3414 (_ BitVec 32)) (defaultValue!1770 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!398 0))(
  ( (CacheFurthestNullable!399 (cache!1991 MutableMap!1610) (totalInput!2402 BalanceConc!10978)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!398)

(assert (=> b!1545746 (= lt!535551 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))

(declare-fun b!1545747 () Bool)

(declare-fun res!691563 () Bool)

(declare-fun e!990017 () Bool)

(assert (=> b!1545747 (=> (not res!691563) (not e!990017))))

(declare-fun input!1676 () BalanceConc!10978)

(declare-fun totalInput!568 () BalanceConc!10978)

(declare-fun isSuffix!344 (List!16612 List!16612) Bool)

(declare-fun list!6447 (BalanceConc!10978) List!16612)

(assert (=> b!1545747 (= res!691563 (isSuffix!344 (list!6447 input!1676) (list!6447 totalInput!568)))))

(declare-fun b!1545748 () Bool)

(declare-fun e!990031 () Bool)

(declare-fun e!990006 () Bool)

(assert (=> b!1545748 (= e!990031 e!990006)))

(declare-fun b!1545749 () Bool)

(declare-fun e!990018 () Bool)

(declare-fun e!990027 () Bool)

(assert (=> b!1545749 (= e!990018 e!990027)))

(declare-fun b!1545750 () Bool)

(declare-fun res!691565 () Bool)

(assert (=> b!1545750 (=> (not res!691565) (not e!990017))))

(declare-datatypes ((tuple3!1616 0))(
  ( (tuple3!1617 (_1!9076 Regex!4227) (_2!9076 Context!1490) (_3!1219 C!8632)) )
))
(declare-datatypes ((tuple2!15714 0))(
  ( (tuple2!15715 (_1!9077 tuple3!1616) (_2!9077 (InoxSet Context!1490))) )
))
(declare-datatypes ((List!16613 0))(
  ( (Nil!16545) (Cons!16545 (h!21946 tuple2!15714) (t!141016 List!16613)) )
))
(declare-datatypes ((array!5782 0))(
  ( (array!5783 (arr!2570 (Array (_ BitVec 32) List!16613)) (size!13363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3334 0))(
  ( (LongMapFixedSize!3335 (defaultEntry!2027 Int) (mask!4869 (_ BitVec 32)) (extraKeys!1914 (_ BitVec 32)) (zeroValue!1924 List!16613) (minValue!1924 List!16613) (_size!3415 (_ BitVec 32)) (_keys!1961 array!5780) (_values!1946 array!5782) (_vacant!1728 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6553 0))(
  ( (Cell!6554 (v!23355 LongMapFixedSize!3334)) )
))
(declare-datatypes ((MutLongMap!1667 0))(
  ( (LongMap!1667 (underlying!3543 Cell!6553)) (MutLongMapExt!1666 (__x!10713 Int)) )
))
(declare-datatypes ((Cell!6555 0))(
  ( (Cell!6556 (v!23356 MutLongMap!1667)) )
))
(declare-datatypes ((Hashable!1611 0))(
  ( (HashableExt!1610 (__x!10714 Int)) )
))
(declare-datatypes ((MutableMap!1611 0))(
  ( (MutableMapExt!1610 (__x!10715 Int)) (HashMap!1611 (underlying!3544 Cell!6555) (hashF!3530 Hashable!1611) (_size!3416 (_ BitVec 32)) (defaultValue!1771 Int)) )
))
(declare-datatypes ((CacheDown!980 0))(
  ( (CacheDown!981 (cache!1992 MutableMap!1611)) )
))
(declare-fun cacheDown!768 () CacheDown!980)

(declare-fun valid!1350 (CacheDown!980) Bool)

(assert (=> b!1545750 (= res!691565 (valid!1350 cacheDown!768))))

(declare-fun b!1545751 () Bool)

(declare-datatypes ((List!16614 0))(
  ( (Nil!16546) (Cons!16546 (h!21947 (_ BitVec 16)) (t!141017 List!16614)) )
))
(declare-datatypes ((TokenValue!2991 0))(
  ( (FloatLiteralValue!5982 (text!21382 List!16614)) (TokenValueExt!2990 (__x!10716 Int)) (Broken!14955 (value!92311 List!16614)) (Object!3058) (End!2991) (Def!2991) (Underscore!2991) (Match!2991) (Else!2991) (Error!2991) (Case!2991) (If!2991) (Extends!2991) (Abstract!2991) (Class!2991) (Val!2991) (DelimiterValue!5982 (del!3051 List!16614)) (KeywordValue!2997 (value!92312 List!16614)) (CommentValue!5982 (value!92313 List!16614)) (WhitespaceValue!5982 (value!92314 List!16614)) (IndentationValue!2991 (value!92315 List!16614)) (String!19238) (Int32!2991) (Broken!14956 (value!92316 List!16614)) (Boolean!2992) (Unit!25928) (OperatorValue!2994 (op!3051 List!16614)) (IdentifierValue!5982 (value!92317 List!16614)) (IdentifierValue!5983 (value!92318 List!16614)) (WhitespaceValue!5983 (value!92319 List!16614)) (True!5982) (False!5982) (Broken!14957 (value!92320 List!16614)) (Broken!14958 (value!92321 List!16614)) (True!5983) (RightBrace!2991) (RightBracket!2991) (Colon!2991) (Null!2991) (Comma!2991) (LeftBracket!2991) (False!5983) (LeftBrace!2991) (ImaginaryLiteralValue!2991 (text!21383 List!16614)) (StringLiteralValue!8973 (value!92322 List!16614)) (EOFValue!2991 (value!92323 List!16614)) (IdentValue!2991 (value!92324 List!16614)) (DelimiterValue!5983 (value!92325 List!16614)) (DedentValue!2991 (value!92326 List!16614)) (NewLineValue!2991 (value!92327 List!16614)) (IntegerValue!8973 (value!92328 (_ BitVec 32)) (text!21384 List!16614)) (IntegerValue!8974 (value!92329 Int) (text!21385 List!16614)) (Times!2991) (Or!2991) (Equal!2991) (Minus!2991) (Broken!14959 (value!92330 List!16614)) (And!2991) (Div!2991) (LessEqual!2991) (Mod!2991) (Concat!7219) (Not!2991) (Plus!2991) (SpaceValue!2991 (value!92331 List!16614)) (IntegerValue!8975 (value!92332 Int) (text!21386 List!16614)) (StringLiteralValue!8974 (text!21387 List!16614)) (FloatLiteralValue!5983 (text!21388 List!16614)) (BytesLiteralValue!2991 (value!92333 List!16614)) (CommentValue!5983 (value!92334 List!16614)) (StringLiteralValue!8975 (value!92335 List!16614)) (ErrorTokenValue!2991 (msg!3052 List!16614)) )
))
(declare-datatypes ((String!19239 0))(
  ( (String!19240 (value!92336 String)) )
))
(declare-datatypes ((TokenValueInjection!5642 0))(
  ( (TokenValueInjection!5643 (toValue!4264 Int) (toChars!4123 Int)) )
))
(declare-datatypes ((Rule!5602 0))(
  ( (Rule!5603 (regex!2901 Regex!4227) (tag!3165 String!19239) (isSeparator!2901 Bool) (transformation!2901 TokenValueInjection!5642)) )
))
(declare-fun rule!240 () Rule!5602)

(declare-fun validRegex!1705 (Regex!4227) Bool)

(assert (=> b!1545751 (= e!990017 (not (validRegex!1705 (regex!2901 rule!240))))))

(declare-fun b!1545752 () Bool)

(declare-fun e!990010 () Bool)

(declare-fun e!990028 () Bool)

(declare-datatypes ((tuple2!15716 0))(
  ( (tuple2!15717 (_1!9078 Context!1490) (_2!9078 C!8632)) )
))
(declare-datatypes ((tuple2!15718 0))(
  ( (tuple2!15719 (_1!9079 tuple2!15716) (_2!9079 (InoxSet Context!1490))) )
))
(declare-datatypes ((List!16615 0))(
  ( (Nil!16547) (Cons!16547 (h!21948 tuple2!15718) (t!141018 List!16615)) )
))
(declare-datatypes ((array!5784 0))(
  ( (array!5785 (arr!2571 (Array (_ BitVec 32) List!16615)) (size!13364 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3336 0))(
  ( (LongMapFixedSize!3337 (defaultEntry!2028 Int) (mask!4870 (_ BitVec 32)) (extraKeys!1915 (_ BitVec 32)) (zeroValue!1925 List!16615) (minValue!1925 List!16615) (_size!3417 (_ BitVec 32)) (_keys!1962 array!5780) (_values!1947 array!5784) (_vacant!1729 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6557 0))(
  ( (Cell!6558 (v!23357 LongMapFixedSize!3336)) )
))
(declare-datatypes ((MutLongMap!1668 0))(
  ( (LongMap!1668 (underlying!3545 Cell!6557)) (MutLongMapExt!1667 (__x!10717 Int)) )
))
(declare-fun lt!535550 () MutLongMap!1668)

(assert (=> b!1545752 (= e!990010 (and e!990028 ((_ is LongMap!1668) lt!535550)))))

(declare-datatypes ((Hashable!1612 0))(
  ( (HashableExt!1611 (__x!10718 Int)) )
))
(declare-datatypes ((Cell!6559 0))(
  ( (Cell!6560 (v!23358 MutLongMap!1668)) )
))
(declare-datatypes ((MutableMap!1612 0))(
  ( (MutableMapExt!1611 (__x!10719 Int)) (HashMap!1612 (underlying!3546 Cell!6559) (hashF!3531 Hashable!1612) (_size!3418 (_ BitVec 32)) (defaultValue!1772 Int)) )
))
(declare-datatypes ((CacheUp!970 0))(
  ( (CacheUp!971 (cache!1993 MutableMap!1612)) )
))
(declare-fun cacheUp!755 () CacheUp!970)

(assert (=> b!1545752 (= lt!535550 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))

(declare-fun b!1545753 () Bool)

(declare-fun res!691560 () Bool)

(assert (=> b!1545753 (=> (not res!691560) (not e!990017))))

(declare-datatypes ((LexerInterface!2550 0))(
  ( (LexerInterfaceExt!2547 (__x!10720 Int)) (Lexer!2548) )
))
(declare-fun thiss!16438 () LexerInterface!2550)

(declare-fun ruleValid!655 (LexerInterface!2550 Rule!5602) Bool)

(assert (=> b!1545753 (= res!691560 (ruleValid!655 thiss!16438 rule!240))))

(declare-fun tp!449785 () Bool)

(declare-fun tp!449784 () Bool)

(declare-fun e!990024 () Bool)

(declare-fun array_inv!1847 (array!5780) Bool)

(declare-fun array_inv!1848 (array!5778) Bool)

(assert (=> b!1545754 (= e!990027 (and tp!449773 tp!449784 tp!449785 (array_inv!1847 (_keys!1960 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) (array_inv!1848 (_values!1945 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) e!990024))))

(declare-fun e!990016 () Bool)

(assert (=> b!1545755 (= e!990016 (and tp!449774 tp!449797))))

(declare-fun mapNonEmpty!7839 () Bool)

(declare-fun mapRes!7840 () Bool)

(declare-fun tp!449795 () Bool)

(declare-fun tp!449787 () Bool)

(assert (=> mapNonEmpty!7839 (= mapRes!7840 (and tp!449795 tp!449787))))

(declare-fun mapValue!7840 () List!16615)

(declare-fun mapKey!7841 () (_ BitVec 32))

(declare-fun mapRest!7841 () (Array (_ BitVec 32) List!16615))

(assert (=> mapNonEmpty!7839 (= (arr!2571 (_values!1947 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) (store mapRest!7841 mapKey!7841 mapValue!7840))))

(declare-fun res!691566 () Bool)

(assert (=> start!143526 (=> (not res!691566) (not e!990017))))

(assert (=> start!143526 (= res!691566 ((_ is Lexer!2548) thiss!16438))))

(assert (=> start!143526 e!990017))

(declare-fun e!990021 () Bool)

(declare-fun inv!21814 (BalanceConc!10978) Bool)

(assert (=> start!143526 (and (inv!21814 totalInput!568) e!990021)))

(declare-fun inv!21815 (CacheUp!970) Bool)

(assert (=> start!143526 (and (inv!21815 cacheUp!755) e!990031)))

(declare-fun e!990034 () Bool)

(declare-fun inv!21816 (CacheFurthestNullable!398) Bool)

(assert (=> start!143526 (and (inv!21816 cacheFurthestNullable!103) e!990034)))

(declare-fun e!990005 () Bool)

(assert (=> start!143526 (and (inv!21814 input!1676) e!990005)))

(declare-fun e!990032 () Bool)

(assert (=> start!143526 e!990032))

(declare-fun e!990019 () Bool)

(declare-fun inv!21817 (CacheDown!980) Bool)

(assert (=> start!143526 (and (inv!21817 cacheDown!768) e!990019)))

(assert (=> start!143526 true))

(declare-fun tp!449777 () Bool)

(declare-fun b!1545756 () Bool)

(declare-fun inv!21807 (String!19239) Bool)

(declare-fun inv!21818 (TokenValueInjection!5642) Bool)

(assert (=> b!1545756 (= e!990032 (and tp!449777 (inv!21807 (tag!3165 rule!240)) (inv!21818 (transformation!2901 rule!240)) e!990016))))

(declare-fun b!1545757 () Bool)

(declare-fun tp!449780 () Bool)

(declare-fun inv!21819 (Conc!5518) Bool)

(assert (=> b!1545757 (= e!990005 (and (inv!21819 (c!252106 input!1676)) tp!449780))))

(declare-fun b!1545758 () Bool)

(declare-fun res!691561 () Bool)

(assert (=> b!1545758 (=> (not res!691561) (not e!990017))))

(declare-fun valid!1351 (CacheUp!970) Bool)

(assert (=> b!1545758 (= res!691561 (valid!1351 cacheUp!755))))

(declare-fun b!1545759 () Bool)

(declare-fun tp!449786 () Bool)

(declare-fun mapRes!7841 () Bool)

(assert (=> b!1545759 (= e!990024 (and tp!449786 mapRes!7841))))

(declare-fun condMapEmpty!7840 () Bool)

(declare-fun mapDefault!7840 () List!16611)

(assert (=> b!1545759 (= condMapEmpty!7840 (= (arr!2568 (_values!1945 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16611)) mapDefault!7840)))))

(declare-fun mapIsEmpty!7839 () Bool)

(assert (=> mapIsEmpty!7839 mapRes!7840))

(declare-fun b!1545760 () Bool)

(declare-fun e!990015 () Bool)

(declare-fun tp!449783 () Bool)

(declare-fun mapRes!7839 () Bool)

(assert (=> b!1545760 (= e!990015 (and tp!449783 mapRes!7839))))

(declare-fun condMapEmpty!7839 () Bool)

(declare-fun mapDefault!7839 () List!16613)

(assert (=> b!1545760 (= condMapEmpty!7839 (= (arr!2570 (_values!1946 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16613)) mapDefault!7839)))))

(assert (=> b!1545761 (= e!990006 (and e!990010 tp!449798))))

(declare-fun b!1545762 () Bool)

(declare-fun tp!449782 () Bool)

(assert (=> b!1545762 (= e!990021 (and (inv!21819 (c!252106 totalInput!568)) tp!449782))))

(declare-fun b!1545763 () Bool)

(declare-fun e!990014 () Bool)

(assert (=> b!1545763 (= e!990019 e!990014)))

(declare-fun mapIsEmpty!7840 () Bool)

(assert (=> mapIsEmpty!7840 mapRes!7841))

(declare-fun b!1545764 () Bool)

(declare-fun res!691562 () Bool)

(assert (=> b!1545764 (=> (not res!691562) (not e!990017))))

(declare-fun valid!1352 (CacheFurthestNullable!398) Bool)

(assert (=> b!1545764 (= res!691562 (valid!1352 cacheFurthestNullable!103))))

(declare-fun e!990013 () Bool)

(assert (=> b!1545765 (= e!990014 (and e!990013 tp!449792))))

(declare-fun b!1545766 () Bool)

(declare-fun e!990023 () Bool)

(declare-fun tp!449788 () Bool)

(assert (=> b!1545766 (= e!990023 (and (inv!21819 (c!252106 (totalInput!2402 cacheFurthestNullable!103))) tp!449788))))

(declare-fun b!1545767 () Bool)

(declare-fun res!691564 () Bool)

(assert (=> b!1545767 (=> (not res!691564) (not e!990017))))

(assert (=> b!1545767 (= res!691564 (= (totalInput!2402 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1545768 () Bool)

(declare-fun e!990035 () Bool)

(declare-fun tp!449776 () Bool)

(assert (=> b!1545768 (= e!990035 (and tp!449776 mapRes!7840))))

(declare-fun condMapEmpty!7841 () Bool)

(declare-fun mapDefault!7841 () List!16615)

(assert (=> b!1545768 (= condMapEmpty!7841 (= (arr!2571 (_values!1947 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16615)) mapDefault!7841)))))

(declare-fun tp!449794 () Bool)

(declare-fun e!990033 () Bool)

(declare-fun tp!449781 () Bool)

(declare-fun array_inv!1849 (array!5784) Bool)

(assert (=> b!1545769 (= e!990033 (and tp!449793 tp!449794 tp!449781 (array_inv!1847 (_keys!1962 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) (array_inv!1849 (_values!1947 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) e!990035))))

(declare-fun b!1545770 () Bool)

(declare-fun e!990011 () Bool)

(assert (=> b!1545770 (= e!990028 e!990011)))

(declare-fun mapNonEmpty!7840 () Bool)

(declare-fun tp!449779 () Bool)

(declare-fun tp!449796 () Bool)

(assert (=> mapNonEmpty!7840 (= mapRes!7841 (and tp!449779 tp!449796))))

(declare-fun mapValue!7841 () List!16611)

(declare-fun mapKey!7839 () (_ BitVec 32))

(declare-fun mapRest!7840 () (Array (_ BitVec 32) List!16611))

(assert (=> mapNonEmpty!7840 (= (arr!2568 (_values!1945 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) (store mapRest!7840 mapKey!7839 mapValue!7841))))

(declare-fun mapIsEmpty!7841 () Bool)

(assert (=> mapIsEmpty!7841 mapRes!7839))

(declare-fun b!1545771 () Bool)

(assert (=> b!1545771 (= e!990007 e!990018)))

(declare-fun mapNonEmpty!7841 () Bool)

(declare-fun tp!449791 () Bool)

(declare-fun tp!449790 () Bool)

(assert (=> mapNonEmpty!7841 (= mapRes!7839 (and tp!449791 tp!449790))))

(declare-fun mapRest!7839 () (Array (_ BitVec 32) List!16613))

(declare-fun mapKey!7840 () (_ BitVec 32))

(declare-fun mapValue!7839 () List!16613)

(assert (=> mapNonEmpty!7841 (= (arr!2570 (_values!1946 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) (store mapRest!7839 mapKey!7840 mapValue!7839))))

(declare-fun b!1545772 () Bool)

(assert (=> b!1545772 (= e!990011 e!990033)))

(declare-fun b!1545773 () Bool)

(assert (=> b!1545773 (= e!990034 (and e!990008 (inv!21814 (totalInput!2402 cacheFurthestNullable!103)) e!990023))))

(declare-fun b!1545774 () Bool)

(declare-fun e!990009 () Bool)

(declare-fun lt!535552 () MutLongMap!1667)

(assert (=> b!1545774 (= e!990013 (and e!990009 ((_ is LongMap!1667) lt!535552)))))

(assert (=> b!1545774 (= lt!535552 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))

(declare-fun b!1545775 () Bool)

(declare-fun e!990012 () Bool)

(declare-fun e!990022 () Bool)

(assert (=> b!1545775 (= e!990012 e!990022)))

(declare-fun b!1545776 () Bool)

(assert (=> b!1545776 (= e!990009 e!990012)))

(declare-fun tp!449778 () Bool)

(declare-fun tp!449799 () Bool)

(declare-fun array_inv!1850 (array!5782) Bool)

(assert (=> b!1545777 (= e!990022 (and tp!449775 tp!449799 tp!449778 (array_inv!1847 (_keys!1961 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) (array_inv!1850 (_values!1946 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) e!990015))))

(assert (= (and start!143526 res!691566) b!1545753))

(assert (= (and b!1545753 res!691560) b!1545758))

(assert (= (and b!1545758 res!691561) b!1545750))

(assert (= (and b!1545750 res!691565) b!1545764))

(assert (= (and b!1545764 res!691562) b!1545747))

(assert (= (and b!1545747 res!691563) b!1545767))

(assert (= (and b!1545767 res!691564) b!1545751))

(assert (= start!143526 b!1545762))

(assert (= (and b!1545768 condMapEmpty!7841) mapIsEmpty!7839))

(assert (= (and b!1545768 (not condMapEmpty!7841)) mapNonEmpty!7839))

(assert (= b!1545769 b!1545768))

(assert (= b!1545772 b!1545769))

(assert (= b!1545770 b!1545772))

(assert (= (and b!1545752 ((_ is LongMap!1668) (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))) b!1545770))

(assert (= b!1545761 b!1545752))

(assert (= (and b!1545748 ((_ is HashMap!1612) (cache!1993 cacheUp!755))) b!1545761))

(assert (= start!143526 b!1545748))

(assert (= (and b!1545759 condMapEmpty!7840) mapIsEmpty!7840))

(assert (= (and b!1545759 (not condMapEmpty!7840)) mapNonEmpty!7840))

(assert (= b!1545754 b!1545759))

(assert (= b!1545749 b!1545754))

(assert (= b!1545771 b!1545749))

(assert (= (and b!1545746 ((_ is LongMap!1666) (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))) b!1545771))

(assert (= b!1545745 b!1545746))

(assert (= (and b!1545773 ((_ is HashMap!1610) (cache!1991 cacheFurthestNullable!103))) b!1545745))

(assert (= b!1545773 b!1545766))

(assert (= start!143526 b!1545773))

(assert (= start!143526 b!1545757))

(assert (= b!1545756 b!1545755))

(assert (= start!143526 b!1545756))

(assert (= (and b!1545760 condMapEmpty!7839) mapIsEmpty!7841))

(assert (= (and b!1545760 (not condMapEmpty!7839)) mapNonEmpty!7841))

(assert (= b!1545777 b!1545760))

(assert (= b!1545775 b!1545777))

(assert (= b!1545776 b!1545775))

(assert (= (and b!1545774 ((_ is LongMap!1667) (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))) b!1545776))

(assert (= b!1545765 b!1545774))

(assert (= (and b!1545763 ((_ is HashMap!1611) (cache!1992 cacheDown!768))) b!1545765))

(assert (= start!143526 b!1545763))

(declare-fun m!1819711 () Bool)

(assert (=> b!1545762 m!1819711))

(declare-fun m!1819713 () Bool)

(assert (=> mapNonEmpty!7839 m!1819713))

(declare-fun m!1819715 () Bool)

(assert (=> b!1545758 m!1819715))

(declare-fun m!1819717 () Bool)

(assert (=> b!1545751 m!1819717))

(declare-fun m!1819719 () Bool)

(assert (=> b!1545750 m!1819719))

(declare-fun m!1819721 () Bool)

(assert (=> mapNonEmpty!7841 m!1819721))

(declare-fun m!1819723 () Bool)

(assert (=> b!1545747 m!1819723))

(declare-fun m!1819725 () Bool)

(assert (=> b!1545747 m!1819725))

(assert (=> b!1545747 m!1819723))

(assert (=> b!1545747 m!1819725))

(declare-fun m!1819727 () Bool)

(assert (=> b!1545747 m!1819727))

(declare-fun m!1819729 () Bool)

(assert (=> b!1545764 m!1819729))

(declare-fun m!1819731 () Bool)

(assert (=> b!1545756 m!1819731))

(declare-fun m!1819733 () Bool)

(assert (=> b!1545756 m!1819733))

(declare-fun m!1819735 () Bool)

(assert (=> mapNonEmpty!7840 m!1819735))

(declare-fun m!1819737 () Bool)

(assert (=> b!1545773 m!1819737))

(declare-fun m!1819739 () Bool)

(assert (=> b!1545777 m!1819739))

(declare-fun m!1819741 () Bool)

(assert (=> b!1545777 m!1819741))

(declare-fun m!1819743 () Bool)

(assert (=> b!1545766 m!1819743))

(declare-fun m!1819745 () Bool)

(assert (=> b!1545769 m!1819745))

(declare-fun m!1819747 () Bool)

(assert (=> b!1545769 m!1819747))

(declare-fun m!1819749 () Bool)

(assert (=> b!1545754 m!1819749))

(declare-fun m!1819751 () Bool)

(assert (=> b!1545754 m!1819751))

(declare-fun m!1819753 () Bool)

(assert (=> start!143526 m!1819753))

(declare-fun m!1819755 () Bool)

(assert (=> start!143526 m!1819755))

(declare-fun m!1819757 () Bool)

(assert (=> start!143526 m!1819757))

(declare-fun m!1819759 () Bool)

(assert (=> start!143526 m!1819759))

(declare-fun m!1819761 () Bool)

(assert (=> start!143526 m!1819761))

(declare-fun m!1819763 () Bool)

(assert (=> b!1545753 m!1819763))

(declare-fun m!1819765 () Bool)

(assert (=> b!1545757 m!1819765))

(check-sat (not b!1545754) b_and!107651 b_and!107643 b_and!107647 (not b!1545758) (not b!1545756) (not b!1545750) (not b!1545773) (not b!1545747) (not b!1545764) (not b!1545777) (not b_next!41261) (not b_next!41253) (not b_next!41259) b_and!107637 (not b_next!41251) (not start!143526) (not mapNonEmpty!7841) (not b!1545762) (not mapNonEmpty!7839) b_and!107641 (not b!1545769) (not b!1545751) (not mapNonEmpty!7840) (not b!1545766) (not b_next!41263) b_and!107645 (not b_next!41257) (not b_next!41265) (not b!1545760) b_and!107639 (not b!1545753) (not b!1545759) (not b_next!41255) b_and!107649 (not b!1545768) (not b!1545757))
(check-sat b_and!107651 b_and!107643 b_and!107647 b_and!107641 b_and!107639 (not b_next!41255) b_and!107649 (not b_next!41261) (not b_next!41253) (not b_next!41259) b_and!107637 (not b_next!41251) (not b_next!41263) b_and!107645 (not b_next!41257) (not b_next!41265))
(get-model)

(declare-fun d!460105 () Bool)

(declare-fun isBalanced!1637 (Conc!5518) Bool)

(assert (=> d!460105 (= (inv!21814 totalInput!568) (isBalanced!1637 (c!252106 totalInput!568)))))

(declare-fun bs!387035 () Bool)

(assert (= bs!387035 d!460105))

(declare-fun m!1819767 () Bool)

(assert (=> bs!387035 m!1819767))

(assert (=> start!143526 d!460105))

(declare-fun d!460107 () Bool)

(declare-fun res!691571 () Bool)

(declare-fun e!990038 () Bool)

(assert (=> d!460107 (=> (not res!691571) (not e!990038))))

(assert (=> d!460107 (= res!691571 ((_ is HashMap!1611) (cache!1992 cacheDown!768)))))

(assert (=> d!460107 (= (inv!21817 cacheDown!768) e!990038)))

(declare-fun b!1545780 () Bool)

(declare-fun validCacheMapDown!155 (MutableMap!1611) Bool)

(assert (=> b!1545780 (= e!990038 (validCacheMapDown!155 (cache!1992 cacheDown!768)))))

(assert (= (and d!460107 res!691571) b!1545780))

(declare-fun m!1819769 () Bool)

(assert (=> b!1545780 m!1819769))

(assert (=> start!143526 d!460107))

(declare-fun d!460109 () Bool)

(declare-fun res!691574 () Bool)

(declare-fun e!990041 () Bool)

(assert (=> d!460109 (=> (not res!691574) (not e!990041))))

(assert (=> d!460109 (= res!691574 ((_ is HashMap!1612) (cache!1993 cacheUp!755)))))

(assert (=> d!460109 (= (inv!21815 cacheUp!755) e!990041)))

(declare-fun b!1545783 () Bool)

(declare-fun validCacheMapUp!155 (MutableMap!1612) Bool)

(assert (=> b!1545783 (= e!990041 (validCacheMapUp!155 (cache!1993 cacheUp!755)))))

(assert (= (and d!460109 res!691574) b!1545783))

(declare-fun m!1819771 () Bool)

(assert (=> b!1545783 m!1819771))

(assert (=> start!143526 d!460109))

(declare-fun d!460111 () Bool)

(assert (=> d!460111 (= (inv!21814 input!1676) (isBalanced!1637 (c!252106 input!1676)))))

(declare-fun bs!387036 () Bool)

(assert (= bs!387036 d!460111))

(declare-fun m!1819773 () Bool)

(assert (=> bs!387036 m!1819773))

(assert (=> start!143526 d!460111))

(declare-fun d!460113 () Bool)

(declare-fun res!691577 () Bool)

(declare-fun e!990044 () Bool)

(assert (=> d!460113 (=> (not res!691577) (not e!990044))))

(assert (=> d!460113 (= res!691577 ((_ is HashMap!1610) (cache!1991 cacheFurthestNullable!103)))))

(assert (=> d!460113 (= (inv!21816 cacheFurthestNullable!103) e!990044)))

(declare-fun b!1545786 () Bool)

(declare-fun validCacheMapFurthestNullable!68 (MutableMap!1610 BalanceConc!10978) Bool)

(assert (=> b!1545786 (= e!990044 (validCacheMapFurthestNullable!68 (cache!1991 cacheFurthestNullable!103) (totalInput!2402 cacheFurthestNullable!103)))))

(assert (= (and d!460113 res!691577) b!1545786))

(declare-fun m!1819775 () Bool)

(assert (=> b!1545786 m!1819775))

(assert (=> start!143526 d!460113))

(declare-fun d!460115 () Bool)

(assert (=> d!460115 (= (array_inv!1847 (_keys!1962 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) (bvsge (size!13362 (_keys!1962 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1545769 d!460115))

(declare-fun d!460117 () Bool)

(assert (=> d!460117 (= (array_inv!1849 (_values!1947 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) (bvsge (size!13364 (_values!1947 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1545769 d!460117))

(declare-fun d!460119 () Bool)

(assert (=> d!460119 (= (valid!1350 cacheDown!768) (validCacheMapDown!155 (cache!1992 cacheDown!768)))))

(declare-fun bs!387037 () Bool)

(assert (= bs!387037 d!460119))

(assert (=> bs!387037 m!1819769))

(assert (=> b!1545750 d!460119))

(declare-fun d!460121 () Bool)

(assert (=> d!460121 (= (array_inv!1847 (_keys!1961 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) (bvsge (size!13362 (_keys!1961 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1545777 d!460121))

(declare-fun d!460123 () Bool)

(assert (=> d!460123 (= (array_inv!1850 (_values!1946 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) (bvsge (size!13363 (_values!1946 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1545777 d!460123))

(declare-fun b!1545805 () Bool)

(declare-fun e!990063 () Bool)

(declare-fun e!990061 () Bool)

(assert (=> b!1545805 (= e!990063 e!990061)))

(declare-fun c!252112 () Bool)

(assert (=> b!1545805 (= c!252112 ((_ is Union!4227) (regex!2901 rule!240)))))

(declare-fun d!460125 () Bool)

(declare-fun res!691589 () Bool)

(declare-fun e!990060 () Bool)

(assert (=> d!460125 (=> res!691589 e!990060)))

(assert (=> d!460125 (= res!691589 ((_ is ElementMatch!4227) (regex!2901 rule!240)))))

(assert (=> d!460125 (= (validRegex!1705 (regex!2901 rule!240)) e!990060)))

(declare-fun b!1545806 () Bool)

(declare-fun res!691591 () Bool)

(declare-fun e!990059 () Bool)

(assert (=> b!1545806 (=> (not res!691591) (not e!990059))))

(declare-fun call!101755 () Bool)

(assert (=> b!1545806 (= res!691591 call!101755)))

(assert (=> b!1545806 (= e!990061 e!990059)))

(declare-fun bm!101750 () Bool)

(declare-fun call!101756 () Bool)

(assert (=> bm!101750 (= call!101755 call!101756)))

(declare-fun b!1545807 () Bool)

(declare-fun e!990064 () Bool)

(assert (=> b!1545807 (= e!990063 e!990064)))

(declare-fun res!691590 () Bool)

(declare-fun nullable!1264 (Regex!4227) Bool)

(assert (=> b!1545807 (= res!691590 (not (nullable!1264 (reg!4556 (regex!2901 rule!240)))))))

(assert (=> b!1545807 (=> (not res!691590) (not e!990064))))

(declare-fun b!1545808 () Bool)

(assert (=> b!1545808 (= e!990064 call!101756)))

(declare-fun b!1545809 () Bool)

(declare-fun e!990062 () Bool)

(declare-fun e!990065 () Bool)

(assert (=> b!1545809 (= e!990062 e!990065)))

(declare-fun res!691592 () Bool)

(assert (=> b!1545809 (=> (not res!691592) (not e!990065))))

(assert (=> b!1545809 (= res!691592 call!101755)))

(declare-fun b!1545810 () Bool)

(declare-fun call!101757 () Bool)

(assert (=> b!1545810 (= e!990059 call!101757)))

(declare-fun bm!101751 () Bool)

(assert (=> bm!101751 (= call!101757 (validRegex!1705 (ite c!252112 (regTwo!8967 (regex!2901 rule!240)) (regTwo!8966 (regex!2901 rule!240)))))))

(declare-fun b!1545811 () Bool)

(declare-fun res!691588 () Bool)

(assert (=> b!1545811 (=> res!691588 e!990062)))

(assert (=> b!1545811 (= res!691588 (not ((_ is Concat!7218) (regex!2901 rule!240))))))

(assert (=> b!1545811 (= e!990061 e!990062)))

(declare-fun b!1545812 () Bool)

(assert (=> b!1545812 (= e!990065 call!101757)))

(declare-fun b!1545813 () Bool)

(assert (=> b!1545813 (= e!990060 e!990063)))

(declare-fun c!252111 () Bool)

(assert (=> b!1545813 (= c!252111 ((_ is Star!4227) (regex!2901 rule!240)))))

(declare-fun bm!101752 () Bool)

(assert (=> bm!101752 (= call!101756 (validRegex!1705 (ite c!252111 (reg!4556 (regex!2901 rule!240)) (ite c!252112 (regOne!8967 (regex!2901 rule!240)) (regOne!8966 (regex!2901 rule!240))))))))

(assert (= (and d!460125 (not res!691589)) b!1545813))

(assert (= (and b!1545813 c!252111) b!1545807))

(assert (= (and b!1545813 (not c!252111)) b!1545805))

(assert (= (and b!1545807 res!691590) b!1545808))

(assert (= (and b!1545805 c!252112) b!1545806))

(assert (= (and b!1545805 (not c!252112)) b!1545811))

(assert (= (and b!1545806 res!691591) b!1545810))

(assert (= (and b!1545811 (not res!691588)) b!1545809))

(assert (= (and b!1545809 res!691592) b!1545812))

(assert (= (or b!1545810 b!1545812) bm!101751))

(assert (= (or b!1545806 b!1545809) bm!101750))

(assert (= (or b!1545808 bm!101750) bm!101752))

(declare-fun m!1819777 () Bool)

(assert (=> b!1545807 m!1819777))

(declare-fun m!1819779 () Bool)

(assert (=> bm!101751 m!1819779))

(declare-fun m!1819781 () Bool)

(assert (=> bm!101752 m!1819781))

(assert (=> b!1545751 d!460125))

(declare-fun d!460127 () Bool)

(declare-fun c!252115 () Bool)

(assert (=> d!460127 (= c!252115 ((_ is Node!5518) (c!252106 totalInput!568)))))

(declare-fun e!990070 () Bool)

(assert (=> d!460127 (= (inv!21819 (c!252106 totalInput!568)) e!990070)))

(declare-fun b!1545820 () Bool)

(declare-fun inv!21820 (Conc!5518) Bool)

(assert (=> b!1545820 (= e!990070 (inv!21820 (c!252106 totalInput!568)))))

(declare-fun b!1545821 () Bool)

(declare-fun e!990071 () Bool)

(assert (=> b!1545821 (= e!990070 e!990071)))

(declare-fun res!691595 () Bool)

(assert (=> b!1545821 (= res!691595 (not ((_ is Leaf!8177) (c!252106 totalInput!568))))))

(assert (=> b!1545821 (=> res!691595 e!990071)))

(declare-fun b!1545822 () Bool)

(declare-fun inv!21821 (Conc!5518) Bool)

(assert (=> b!1545822 (= e!990071 (inv!21821 (c!252106 totalInput!568)))))

(assert (= (and d!460127 c!252115) b!1545820))

(assert (= (and d!460127 (not c!252115)) b!1545821))

(assert (= (and b!1545821 (not res!691595)) b!1545822))

(declare-fun m!1819783 () Bool)

(assert (=> b!1545820 m!1819783))

(declare-fun m!1819785 () Bool)

(assert (=> b!1545822 m!1819785))

(assert (=> b!1545762 d!460127))

(declare-fun d!460129 () Bool)

(declare-fun res!691600 () Bool)

(declare-fun e!990074 () Bool)

(assert (=> d!460129 (=> (not res!691600) (not e!990074))))

(assert (=> d!460129 (= res!691600 (validRegex!1705 (regex!2901 rule!240)))))

(assert (=> d!460129 (= (ruleValid!655 thiss!16438 rule!240) e!990074)))

(declare-fun b!1545827 () Bool)

(declare-fun res!691601 () Bool)

(assert (=> b!1545827 (=> (not res!691601) (not e!990074))))

(assert (=> b!1545827 (= res!691601 (not (nullable!1264 (regex!2901 rule!240))))))

(declare-fun b!1545828 () Bool)

(assert (=> b!1545828 (= e!990074 (not (= (tag!3165 rule!240) (String!19240 ""))))))

(assert (= (and d!460129 res!691600) b!1545827))

(assert (= (and b!1545827 res!691601) b!1545828))

(assert (=> d!460129 m!1819717))

(declare-fun m!1819787 () Bool)

(assert (=> b!1545827 m!1819787))

(assert (=> b!1545753 d!460129))

(declare-fun d!460131 () Bool)

(assert (=> d!460131 (= (array_inv!1847 (_keys!1960 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) (bvsge (size!13362 (_keys!1960 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1545754 d!460131))

(declare-fun d!460133 () Bool)

(assert (=> d!460133 (= (array_inv!1848 (_values!1945 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) (bvsge (size!13361 (_values!1945 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1545754 d!460133))

(declare-fun d!460135 () Bool)

(assert (=> d!460135 (= (valid!1352 cacheFurthestNullable!103) (validCacheMapFurthestNullable!68 (cache!1991 cacheFurthestNullable!103) (totalInput!2402 cacheFurthestNullable!103)))))

(declare-fun bs!387038 () Bool)

(assert (= bs!387038 d!460135))

(assert (=> bs!387038 m!1819775))

(assert (=> b!1545764 d!460135))

(declare-fun d!460137 () Bool)

(assert (=> d!460137 (= (inv!21807 (tag!3165 rule!240)) (= (mod (str.len (value!92336 (tag!3165 rule!240))) 2) 0))))

(assert (=> b!1545756 d!460137))

(declare-fun d!460139 () Bool)

(declare-fun res!691604 () Bool)

(declare-fun e!990077 () Bool)

(assert (=> d!460139 (=> (not res!691604) (not e!990077))))

(declare-fun semiInverseModEq!1091 (Int Int) Bool)

(assert (=> d!460139 (= res!691604 (semiInverseModEq!1091 (toChars!4123 (transformation!2901 rule!240)) (toValue!4264 (transformation!2901 rule!240))))))

(assert (=> d!460139 (= (inv!21818 (transformation!2901 rule!240)) e!990077)))

(declare-fun b!1545831 () Bool)

(declare-fun equivClasses!1050 (Int Int) Bool)

(assert (=> b!1545831 (= e!990077 (equivClasses!1050 (toChars!4123 (transformation!2901 rule!240)) (toValue!4264 (transformation!2901 rule!240))))))

(assert (= (and d!460139 res!691604) b!1545831))

(declare-fun m!1819789 () Bool)

(assert (=> d!460139 m!1819789))

(declare-fun m!1819791 () Bool)

(assert (=> b!1545831 m!1819791))

(assert (=> b!1545756 d!460139))

(declare-fun d!460141 () Bool)

(assert (=> d!460141 (= (inv!21814 (totalInput!2402 cacheFurthestNullable!103)) (isBalanced!1637 (c!252106 (totalInput!2402 cacheFurthestNullable!103))))))

(declare-fun bs!387039 () Bool)

(assert (= bs!387039 d!460141))

(declare-fun m!1819793 () Bool)

(assert (=> bs!387039 m!1819793))

(assert (=> b!1545773 d!460141))

(declare-fun d!460143 () Bool)

(declare-fun c!252116 () Bool)

(assert (=> d!460143 (= c!252116 ((_ is Node!5518) (c!252106 input!1676)))))

(declare-fun e!990078 () Bool)

(assert (=> d!460143 (= (inv!21819 (c!252106 input!1676)) e!990078)))

(declare-fun b!1545832 () Bool)

(assert (=> b!1545832 (= e!990078 (inv!21820 (c!252106 input!1676)))))

(declare-fun b!1545833 () Bool)

(declare-fun e!990079 () Bool)

(assert (=> b!1545833 (= e!990078 e!990079)))

(declare-fun res!691605 () Bool)

(assert (=> b!1545833 (= res!691605 (not ((_ is Leaf!8177) (c!252106 input!1676))))))

(assert (=> b!1545833 (=> res!691605 e!990079)))

(declare-fun b!1545834 () Bool)

(assert (=> b!1545834 (= e!990079 (inv!21821 (c!252106 input!1676)))))

(assert (= (and d!460143 c!252116) b!1545832))

(assert (= (and d!460143 (not c!252116)) b!1545833))

(assert (= (and b!1545833 (not res!691605)) b!1545834))

(declare-fun m!1819795 () Bool)

(assert (=> b!1545832 m!1819795))

(declare-fun m!1819797 () Bool)

(assert (=> b!1545834 m!1819797))

(assert (=> b!1545757 d!460143))

(declare-fun d!460145 () Bool)

(declare-fun c!252117 () Bool)

(assert (=> d!460145 (= c!252117 ((_ is Node!5518) (c!252106 (totalInput!2402 cacheFurthestNullable!103))))))

(declare-fun e!990080 () Bool)

(assert (=> d!460145 (= (inv!21819 (c!252106 (totalInput!2402 cacheFurthestNullable!103))) e!990080)))

(declare-fun b!1545835 () Bool)

(assert (=> b!1545835 (= e!990080 (inv!21820 (c!252106 (totalInput!2402 cacheFurthestNullable!103))))))

(declare-fun b!1545836 () Bool)

(declare-fun e!990081 () Bool)

(assert (=> b!1545836 (= e!990080 e!990081)))

(declare-fun res!691606 () Bool)

(assert (=> b!1545836 (= res!691606 (not ((_ is Leaf!8177) (c!252106 (totalInput!2402 cacheFurthestNullable!103)))))))

(assert (=> b!1545836 (=> res!691606 e!990081)))

(declare-fun b!1545837 () Bool)

(assert (=> b!1545837 (= e!990081 (inv!21821 (c!252106 (totalInput!2402 cacheFurthestNullable!103))))))

(assert (= (and d!460145 c!252117) b!1545835))

(assert (= (and d!460145 (not c!252117)) b!1545836))

(assert (= (and b!1545836 (not res!691606)) b!1545837))

(declare-fun m!1819799 () Bool)

(assert (=> b!1545835 m!1819799))

(declare-fun m!1819801 () Bool)

(assert (=> b!1545837 m!1819801))

(assert (=> b!1545766 d!460145))

(declare-fun d!460147 () Bool)

(declare-fun e!990084 () Bool)

(assert (=> d!460147 e!990084))

(declare-fun res!691609 () Bool)

(assert (=> d!460147 (=> res!691609 e!990084)))

(declare-fun lt!535555 () Bool)

(assert (=> d!460147 (= res!691609 (not lt!535555))))

(declare-fun drop!779 (List!16612 Int) List!16612)

(declare-fun size!13365 (List!16612) Int)

(assert (=> d!460147 (= lt!535555 (= (list!6447 input!1676) (drop!779 (list!6447 totalInput!568) (- (size!13365 (list!6447 totalInput!568)) (size!13365 (list!6447 input!1676))))))))

(assert (=> d!460147 (= (isSuffix!344 (list!6447 input!1676) (list!6447 totalInput!568)) lt!535555)))

(declare-fun b!1545840 () Bool)

(assert (=> b!1545840 (= e!990084 (>= (size!13365 (list!6447 totalInput!568)) (size!13365 (list!6447 input!1676))))))

(assert (= (and d!460147 (not res!691609)) b!1545840))

(assert (=> d!460147 m!1819725))

(declare-fun m!1819803 () Bool)

(assert (=> d!460147 m!1819803))

(assert (=> d!460147 m!1819723))

(declare-fun m!1819805 () Bool)

(assert (=> d!460147 m!1819805))

(assert (=> d!460147 m!1819725))

(declare-fun m!1819807 () Bool)

(assert (=> d!460147 m!1819807))

(assert (=> b!1545840 m!1819725))

(assert (=> b!1545840 m!1819803))

(assert (=> b!1545840 m!1819723))

(assert (=> b!1545840 m!1819805))

(assert (=> b!1545747 d!460147))

(declare-fun d!460149 () Bool)

(declare-fun list!6448 (Conc!5518) List!16612)

(assert (=> d!460149 (= (list!6447 input!1676) (list!6448 (c!252106 input!1676)))))

(declare-fun bs!387040 () Bool)

(assert (= bs!387040 d!460149))

(declare-fun m!1819809 () Bool)

(assert (=> bs!387040 m!1819809))

(assert (=> b!1545747 d!460149))

(declare-fun d!460151 () Bool)

(assert (=> d!460151 (= (list!6447 totalInput!568) (list!6448 (c!252106 totalInput!568)))))

(declare-fun bs!387041 () Bool)

(assert (= bs!387041 d!460151))

(declare-fun m!1819811 () Bool)

(assert (=> bs!387041 m!1819811))

(assert (=> b!1545747 d!460151))

(declare-fun d!460153 () Bool)

(assert (=> d!460153 (= (valid!1351 cacheUp!755) (validCacheMapUp!155 (cache!1993 cacheUp!755)))))

(declare-fun bs!387042 () Bool)

(assert (= bs!387042 d!460153))

(assert (=> bs!387042 m!1819771))

(assert (=> b!1545758 d!460153))

(declare-fun e!990089 () Bool)

(declare-fun setRes!10496 () Bool)

(declare-fun tp!449807 () Bool)

(declare-fun setElem!10496 () Context!1490)

(declare-fun setNonEmpty!10496 () Bool)

(declare-fun inv!21822 (Context!1490) Bool)

(assert (=> setNonEmpty!10496 (= setRes!10496 (and tp!449807 (inv!21822 setElem!10496) e!990089))))

(declare-fun setRest!10496 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10496 (= (_1!9074 (_1!9075 (h!21944 mapDefault!7840))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10496 true) setRest!10496))))

(declare-fun b!1545847 () Bool)

(declare-fun e!990090 () Bool)

(declare-fun tp!449806 () Bool)

(assert (=> b!1545847 (= e!990090 (and setRes!10496 tp!449806))))

(declare-fun condSetEmpty!10496 () Bool)

(assert (=> b!1545847 (= condSetEmpty!10496 (= (_1!9074 (_1!9075 (h!21944 mapDefault!7840))) ((as const (Array Context!1490 Bool)) false)))))

(assert (=> b!1545759 (= tp!449786 e!990090)))

(declare-fun b!1545848 () Bool)

(declare-fun tp!449808 () Bool)

(assert (=> b!1545848 (= e!990089 tp!449808)))

(declare-fun setIsEmpty!10496 () Bool)

(assert (=> setIsEmpty!10496 setRes!10496))

(assert (= (and b!1545847 condSetEmpty!10496) setIsEmpty!10496))

(assert (= (and b!1545847 (not condSetEmpty!10496)) setNonEmpty!10496))

(assert (= setNonEmpty!10496 b!1545848))

(assert (= (and b!1545759 ((_ is Cons!16543) mapDefault!7840)) b!1545847))

(declare-fun m!1819813 () Bool)

(assert (=> setNonEmpty!10496 m!1819813))

(declare-fun b!1545857 () Bool)

(declare-fun e!990099 () Bool)

(declare-fun tp!449817 () Bool)

(assert (=> b!1545857 (= e!990099 tp!449817)))

(declare-fun setRes!10499 () Bool)

(declare-fun e!990097 () Bool)

(declare-fun b!1545858 () Bool)

(declare-fun tp_is_empty!7055 () Bool)

(declare-fun tp!449819 () Bool)

(assert (=> b!1545858 (= e!990097 (and (inv!21822 (_1!9078 (_1!9079 (h!21948 mapDefault!7841)))) e!990099 tp_is_empty!7055 setRes!10499 tp!449819))))

(declare-fun condSetEmpty!10499 () Bool)

(assert (=> b!1545858 (= condSetEmpty!10499 (= (_2!9079 (h!21948 mapDefault!7841)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545859 () Bool)

(declare-fun e!990098 () Bool)

(declare-fun tp!449818 () Bool)

(assert (=> b!1545859 (= e!990098 tp!449818)))

(assert (=> b!1545768 (= tp!449776 e!990097)))

(declare-fun setIsEmpty!10499 () Bool)

(assert (=> setIsEmpty!10499 setRes!10499))

(declare-fun setNonEmpty!10499 () Bool)

(declare-fun setElem!10499 () Context!1490)

(declare-fun tp!449820 () Bool)

(assert (=> setNonEmpty!10499 (= setRes!10499 (and tp!449820 (inv!21822 setElem!10499) e!990098))))

(declare-fun setRest!10499 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10499 (= (_2!9079 (h!21948 mapDefault!7841)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10499 true) setRest!10499))))

(assert (= b!1545858 b!1545857))

(assert (= (and b!1545858 condSetEmpty!10499) setIsEmpty!10499))

(assert (= (and b!1545858 (not condSetEmpty!10499)) setNonEmpty!10499))

(assert (= setNonEmpty!10499 b!1545859))

(assert (= (and b!1545768 ((_ is Cons!16547) mapDefault!7841)) b!1545858))

(declare-fun m!1819815 () Bool)

(assert (=> b!1545858 m!1819815))

(declare-fun m!1819817 () Bool)

(assert (=> setNonEmpty!10499 m!1819817))

(declare-fun b!1545860 () Bool)

(declare-fun e!990102 () Bool)

(declare-fun tp!449821 () Bool)

(assert (=> b!1545860 (= e!990102 tp!449821)))

(declare-fun e!990100 () Bool)

(declare-fun b!1545861 () Bool)

(declare-fun tp!449823 () Bool)

(declare-fun setRes!10500 () Bool)

(assert (=> b!1545861 (= e!990100 (and (inv!21822 (_1!9078 (_1!9079 (h!21948 (zeroValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))))) e!990102 tp_is_empty!7055 setRes!10500 tp!449823))))

(declare-fun condSetEmpty!10500 () Bool)

(assert (=> b!1545861 (= condSetEmpty!10500 (= (_2!9079 (h!21948 (zeroValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545862 () Bool)

(declare-fun e!990101 () Bool)

(declare-fun tp!449822 () Bool)

(assert (=> b!1545862 (= e!990101 tp!449822)))

(assert (=> b!1545769 (= tp!449794 e!990100)))

(declare-fun setIsEmpty!10500 () Bool)

(assert (=> setIsEmpty!10500 setRes!10500))

(declare-fun setNonEmpty!10500 () Bool)

(declare-fun tp!449824 () Bool)

(declare-fun setElem!10500 () Context!1490)

(assert (=> setNonEmpty!10500 (= setRes!10500 (and tp!449824 (inv!21822 setElem!10500) e!990101))))

(declare-fun setRest!10500 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10500 (= (_2!9079 (h!21948 (zeroValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10500 true) setRest!10500))))

(assert (= b!1545861 b!1545860))

(assert (= (and b!1545861 condSetEmpty!10500) setIsEmpty!10500))

(assert (= (and b!1545861 (not condSetEmpty!10500)) setNonEmpty!10500))

(assert (= setNonEmpty!10500 b!1545862))

(assert (= (and b!1545769 ((_ is Cons!16547) (zeroValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))) b!1545861))

(declare-fun m!1819819 () Bool)

(assert (=> b!1545861 m!1819819))

(declare-fun m!1819821 () Bool)

(assert (=> setNonEmpty!10500 m!1819821))

(declare-fun b!1545863 () Bool)

(declare-fun e!990105 () Bool)

(declare-fun tp!449825 () Bool)

(assert (=> b!1545863 (= e!990105 tp!449825)))

(declare-fun setRes!10501 () Bool)

(declare-fun b!1545864 () Bool)

(declare-fun tp!449827 () Bool)

(declare-fun e!990103 () Bool)

(assert (=> b!1545864 (= e!990103 (and (inv!21822 (_1!9078 (_1!9079 (h!21948 (minValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))))) e!990105 tp_is_empty!7055 setRes!10501 tp!449827))))

(declare-fun condSetEmpty!10501 () Bool)

(assert (=> b!1545864 (= condSetEmpty!10501 (= (_2!9079 (h!21948 (minValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545865 () Bool)

(declare-fun e!990104 () Bool)

(declare-fun tp!449826 () Bool)

(assert (=> b!1545865 (= e!990104 tp!449826)))

(assert (=> b!1545769 (= tp!449781 e!990103)))

(declare-fun setIsEmpty!10501 () Bool)

(assert (=> setIsEmpty!10501 setRes!10501))

(declare-fun setElem!10501 () Context!1490)

(declare-fun setNonEmpty!10501 () Bool)

(declare-fun tp!449828 () Bool)

(assert (=> setNonEmpty!10501 (= setRes!10501 (and tp!449828 (inv!21822 setElem!10501) e!990104))))

(declare-fun setRest!10501 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10501 (= (_2!9079 (h!21948 (minValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10501 true) setRest!10501))))

(assert (= b!1545864 b!1545863))

(assert (= (and b!1545864 condSetEmpty!10501) setIsEmpty!10501))

(assert (= (and b!1545864 (not condSetEmpty!10501)) setNonEmpty!10501))

(assert (= setNonEmpty!10501 b!1545865))

(assert (= (and b!1545769 ((_ is Cons!16547) (minValue!1925 (v!23357 (underlying!3545 (v!23358 (underlying!3546 (cache!1993 cacheUp!755)))))))) b!1545864))

(declare-fun m!1819823 () Bool)

(assert (=> b!1545864 m!1819823))

(declare-fun m!1819825 () Bool)

(assert (=> setNonEmpty!10501 m!1819825))

(declare-fun setRes!10504 () Bool)

(declare-fun e!990114 () Bool)

(declare-fun tp!449840 () Bool)

(declare-fun b!1545874 () Bool)

(declare-fun tp!449839 () Bool)

(declare-fun e!990112 () Bool)

(assert (=> b!1545874 (= e!990112 (and tp!449840 (inv!21822 (_2!9076 (_1!9077 (h!21946 (zeroValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))))) e!990114 tp_is_empty!7055 setRes!10504 tp!449839))))

(declare-fun condSetEmpty!10504 () Bool)

(assert (=> b!1545874 (= condSetEmpty!10504 (= (_2!9077 (h!21946 (zeroValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545875 () Bool)

(declare-fun e!990113 () Bool)

(declare-fun tp!449841 () Bool)

(assert (=> b!1545875 (= e!990113 tp!449841)))

(declare-fun b!1545876 () Bool)

(declare-fun tp!449842 () Bool)

(assert (=> b!1545876 (= e!990114 tp!449842)))

(declare-fun setNonEmpty!10504 () Bool)

(declare-fun tp!449843 () Bool)

(declare-fun setElem!10504 () Context!1490)

(assert (=> setNonEmpty!10504 (= setRes!10504 (and tp!449843 (inv!21822 setElem!10504) e!990113))))

(declare-fun setRest!10504 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10504 (= (_2!9077 (h!21946 (zeroValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10504 true) setRest!10504))))

(declare-fun setIsEmpty!10504 () Bool)

(assert (=> setIsEmpty!10504 setRes!10504))

(assert (=> b!1545777 (= tp!449799 e!990112)))

(assert (= b!1545874 b!1545876))

(assert (= (and b!1545874 condSetEmpty!10504) setIsEmpty!10504))

(assert (= (and b!1545874 (not condSetEmpty!10504)) setNonEmpty!10504))

(assert (= setNonEmpty!10504 b!1545875))

(assert (= (and b!1545777 ((_ is Cons!16545) (zeroValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))) b!1545874))

(declare-fun m!1819827 () Bool)

(assert (=> b!1545874 m!1819827))

(declare-fun m!1819829 () Bool)

(assert (=> setNonEmpty!10504 m!1819829))

(declare-fun e!990115 () Bool)

(declare-fun setRes!10505 () Bool)

(declare-fun tp!449844 () Bool)

(declare-fun e!990117 () Bool)

(declare-fun tp!449845 () Bool)

(declare-fun b!1545877 () Bool)

(assert (=> b!1545877 (= e!990115 (and tp!449845 (inv!21822 (_2!9076 (_1!9077 (h!21946 (minValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))))) e!990117 tp_is_empty!7055 setRes!10505 tp!449844))))

(declare-fun condSetEmpty!10505 () Bool)

(assert (=> b!1545877 (= condSetEmpty!10505 (= (_2!9077 (h!21946 (minValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545878 () Bool)

(declare-fun e!990116 () Bool)

(declare-fun tp!449846 () Bool)

(assert (=> b!1545878 (= e!990116 tp!449846)))

(declare-fun b!1545879 () Bool)

(declare-fun tp!449847 () Bool)

(assert (=> b!1545879 (= e!990117 tp!449847)))

(declare-fun setElem!10505 () Context!1490)

(declare-fun tp!449848 () Bool)

(declare-fun setNonEmpty!10505 () Bool)

(assert (=> setNonEmpty!10505 (= setRes!10505 (and tp!449848 (inv!21822 setElem!10505) e!990116))))

(declare-fun setRest!10505 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10505 (= (_2!9077 (h!21946 (minValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10505 true) setRest!10505))))

(declare-fun setIsEmpty!10505 () Bool)

(assert (=> setIsEmpty!10505 setRes!10505))

(assert (=> b!1545777 (= tp!449778 e!990115)))

(assert (= b!1545877 b!1545879))

(assert (= (and b!1545877 condSetEmpty!10505) setIsEmpty!10505))

(assert (= (and b!1545877 (not condSetEmpty!10505)) setNonEmpty!10505))

(assert (= setNonEmpty!10505 b!1545878))

(assert (= (and b!1545777 ((_ is Cons!16545) (minValue!1924 (v!23355 (underlying!3543 (v!23356 (underlying!3544 (cache!1992 cacheDown!768)))))))) b!1545877))

(declare-fun m!1819831 () Bool)

(assert (=> b!1545877 m!1819831))

(declare-fun m!1819833 () Bool)

(assert (=> setNonEmpty!10505 m!1819833))

(declare-fun e!990118 () Bool)

(declare-fun setRes!10506 () Bool)

(declare-fun tp!449849 () Bool)

(declare-fun b!1545880 () Bool)

(declare-fun e!990120 () Bool)

(declare-fun tp!449850 () Bool)

(assert (=> b!1545880 (= e!990118 (and tp!449850 (inv!21822 (_2!9076 (_1!9077 (h!21946 mapDefault!7839)))) e!990120 tp_is_empty!7055 setRes!10506 tp!449849))))

(declare-fun condSetEmpty!10506 () Bool)

(assert (=> b!1545880 (= condSetEmpty!10506 (= (_2!9077 (h!21946 mapDefault!7839)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545881 () Bool)

(declare-fun e!990119 () Bool)

(declare-fun tp!449851 () Bool)

(assert (=> b!1545881 (= e!990119 tp!449851)))

(declare-fun b!1545882 () Bool)

(declare-fun tp!449852 () Bool)

(assert (=> b!1545882 (= e!990120 tp!449852)))

(declare-fun setElem!10506 () Context!1490)

(declare-fun tp!449853 () Bool)

(declare-fun setNonEmpty!10506 () Bool)

(assert (=> setNonEmpty!10506 (= setRes!10506 (and tp!449853 (inv!21822 setElem!10506) e!990119))))

(declare-fun setRest!10506 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10506 (= (_2!9077 (h!21946 mapDefault!7839)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10506 true) setRest!10506))))

(declare-fun setIsEmpty!10506 () Bool)

(assert (=> setIsEmpty!10506 setRes!10506))

(assert (=> b!1545760 (= tp!449783 e!990118)))

(assert (= b!1545880 b!1545882))

(assert (= (and b!1545880 condSetEmpty!10506) setIsEmpty!10506))

(assert (= (and b!1545880 (not condSetEmpty!10506)) setNonEmpty!10506))

(assert (= setNonEmpty!10506 b!1545881))

(assert (= (and b!1545760 ((_ is Cons!16545) mapDefault!7839)) b!1545880))

(declare-fun m!1819835 () Bool)

(assert (=> b!1545880 m!1819835))

(declare-fun m!1819837 () Bool)

(assert (=> setNonEmpty!10506 m!1819837))

(declare-fun setNonEmpty!10511 () Bool)

(declare-fun tp!449868 () Bool)

(declare-fun e!990130 () Bool)

(declare-fun setRes!10512 () Bool)

(declare-fun setElem!10512 () Context!1490)

(assert (=> setNonEmpty!10511 (= setRes!10512 (and tp!449868 (inv!21822 setElem!10512) e!990130))))

(declare-fun mapValue!7844 () List!16611)

(declare-fun setRest!10512 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10511 (= (_1!9074 (_1!9075 (h!21944 mapValue!7844))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10512 true) setRest!10512))))

(declare-fun b!1545893 () Bool)

(declare-fun e!990131 () Bool)

(declare-fun tp!449871 () Bool)

(assert (=> b!1545893 (= e!990131 (and setRes!10512 tp!449871))))

(declare-fun condSetEmpty!10511 () Bool)

(assert (=> b!1545893 (= condSetEmpty!10511 (= (_1!9074 (_1!9075 (h!21944 mapValue!7844))) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun setElem!10511 () Context!1490)

(declare-fun setNonEmpty!10512 () Bool)

(declare-fun setRes!10511 () Bool)

(declare-fun e!990132 () Bool)

(declare-fun tp!449870 () Bool)

(assert (=> setNonEmpty!10512 (= setRes!10511 (and tp!449870 (inv!21822 setElem!10511) e!990132))))

(declare-fun mapDefault!7844 () List!16611)

(declare-fun setRest!10511 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10512 (= (_1!9074 (_1!9075 (h!21944 mapDefault!7844))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10511 true) setRest!10511))))

(declare-fun b!1545894 () Bool)

(declare-fun tp!449873 () Bool)

(assert (=> b!1545894 (= e!990130 tp!449873)))

(declare-fun setIsEmpty!10511 () Bool)

(assert (=> setIsEmpty!10511 setRes!10511))

(declare-fun condMapEmpty!7844 () Bool)

(assert (=> mapNonEmpty!7840 (= condMapEmpty!7844 (= mapRest!7840 ((as const (Array (_ BitVec 32) List!16611)) mapDefault!7844)))))

(declare-fun e!990129 () Bool)

(declare-fun mapRes!7844 () Bool)

(assert (=> mapNonEmpty!7840 (= tp!449779 (and e!990129 mapRes!7844))))

(declare-fun b!1545895 () Bool)

(declare-fun tp!449872 () Bool)

(assert (=> b!1545895 (= e!990132 tp!449872)))

(declare-fun mapNonEmpty!7844 () Bool)

(declare-fun tp!449874 () Bool)

(assert (=> mapNonEmpty!7844 (= mapRes!7844 (and tp!449874 e!990131))))

(declare-fun mapRest!7844 () (Array (_ BitVec 32) List!16611))

(declare-fun mapKey!7844 () (_ BitVec 32))

(assert (=> mapNonEmpty!7844 (= mapRest!7840 (store mapRest!7844 mapKey!7844 mapValue!7844))))

(declare-fun mapIsEmpty!7844 () Bool)

(assert (=> mapIsEmpty!7844 mapRes!7844))

(declare-fun setIsEmpty!10512 () Bool)

(assert (=> setIsEmpty!10512 setRes!10512))

(declare-fun b!1545896 () Bool)

(declare-fun tp!449869 () Bool)

(assert (=> b!1545896 (= e!990129 (and setRes!10511 tp!449869))))

(declare-fun condSetEmpty!10512 () Bool)

(assert (=> b!1545896 (= condSetEmpty!10512 (= (_1!9074 (_1!9075 (h!21944 mapDefault!7844))) ((as const (Array Context!1490 Bool)) false)))))

(assert (= (and mapNonEmpty!7840 condMapEmpty!7844) mapIsEmpty!7844))

(assert (= (and mapNonEmpty!7840 (not condMapEmpty!7844)) mapNonEmpty!7844))

(assert (= (and b!1545893 condSetEmpty!10511) setIsEmpty!10512))

(assert (= (and b!1545893 (not condSetEmpty!10511)) setNonEmpty!10511))

(assert (= setNonEmpty!10511 b!1545894))

(assert (= (and mapNonEmpty!7844 ((_ is Cons!16543) mapValue!7844)) b!1545893))

(assert (= (and b!1545896 condSetEmpty!10512) setIsEmpty!10511))

(assert (= (and b!1545896 (not condSetEmpty!10512)) setNonEmpty!10512))

(assert (= setNonEmpty!10512 b!1545895))

(assert (= (and mapNonEmpty!7840 ((_ is Cons!16543) mapDefault!7844)) b!1545896))

(declare-fun m!1819839 () Bool)

(assert (=> setNonEmpty!10511 m!1819839))

(declare-fun m!1819841 () Bool)

(assert (=> setNonEmpty!10512 m!1819841))

(declare-fun m!1819843 () Bool)

(assert (=> mapNonEmpty!7844 m!1819843))

(declare-fun tp!449876 () Bool)

(declare-fun setElem!10513 () Context!1490)

(declare-fun setNonEmpty!10513 () Bool)

(declare-fun setRes!10513 () Bool)

(declare-fun e!990133 () Bool)

(assert (=> setNonEmpty!10513 (= setRes!10513 (and tp!449876 (inv!21822 setElem!10513) e!990133))))

(declare-fun setRest!10513 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10513 (= (_1!9074 (_1!9075 (h!21944 mapValue!7841))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10513 true) setRest!10513))))

(declare-fun b!1545897 () Bool)

(declare-fun e!990134 () Bool)

(declare-fun tp!449875 () Bool)

(assert (=> b!1545897 (= e!990134 (and setRes!10513 tp!449875))))

(declare-fun condSetEmpty!10513 () Bool)

(assert (=> b!1545897 (= condSetEmpty!10513 (= (_1!9074 (_1!9075 (h!21944 mapValue!7841))) ((as const (Array Context!1490 Bool)) false)))))

(assert (=> mapNonEmpty!7840 (= tp!449796 e!990134)))

(declare-fun b!1545898 () Bool)

(declare-fun tp!449877 () Bool)

(assert (=> b!1545898 (= e!990133 tp!449877)))

(declare-fun setIsEmpty!10513 () Bool)

(assert (=> setIsEmpty!10513 setRes!10513))

(assert (= (and b!1545897 condSetEmpty!10513) setIsEmpty!10513))

(assert (= (and b!1545897 (not condSetEmpty!10513)) setNonEmpty!10513))

(assert (= setNonEmpty!10513 b!1545898))

(assert (= (and mapNonEmpty!7840 ((_ is Cons!16543) mapValue!7841)) b!1545897))

(declare-fun m!1819845 () Bool)

(assert (=> setNonEmpty!10513 m!1819845))

(declare-fun tp!449886 () Bool)

(declare-fun e!990139 () Bool)

(declare-fun b!1545907 () Bool)

(declare-fun tp!449885 () Bool)

(assert (=> b!1545907 (= e!990139 (and (inv!21819 (left!13512 (c!252106 totalInput!568))) tp!449885 (inv!21819 (right!13842 (c!252106 totalInput!568))) tp!449886))))

(declare-fun b!1545909 () Bool)

(declare-fun e!990140 () Bool)

(declare-fun tp!449884 () Bool)

(assert (=> b!1545909 (= e!990140 tp!449884)))

(declare-fun b!1545908 () Bool)

(declare-fun inv!21823 (IArray!11041) Bool)

(assert (=> b!1545908 (= e!990139 (and (inv!21823 (xs!8318 (c!252106 totalInput!568))) e!990140))))

(assert (=> b!1545762 (= tp!449782 (and (inv!21819 (c!252106 totalInput!568)) e!990139))))

(assert (= (and b!1545762 ((_ is Node!5518) (c!252106 totalInput!568))) b!1545907))

(assert (= b!1545908 b!1545909))

(assert (= (and b!1545762 ((_ is Leaf!8177) (c!252106 totalInput!568))) b!1545908))

(declare-fun m!1819847 () Bool)

(assert (=> b!1545907 m!1819847))

(declare-fun m!1819849 () Bool)

(assert (=> b!1545907 m!1819849))

(declare-fun m!1819851 () Bool)

(assert (=> b!1545908 m!1819851))

(assert (=> b!1545762 m!1819711))

(declare-fun setElem!10514 () Context!1490)

(declare-fun setNonEmpty!10514 () Bool)

(declare-fun e!990141 () Bool)

(declare-fun tp!449888 () Bool)

(declare-fun setRes!10514 () Bool)

(assert (=> setNonEmpty!10514 (= setRes!10514 (and tp!449888 (inv!21822 setElem!10514) e!990141))))

(declare-fun setRest!10514 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10514 (= (_1!9074 (_1!9075 (h!21944 (zeroValue!1923 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10514 true) setRest!10514))))

(declare-fun b!1545910 () Bool)

(declare-fun e!990142 () Bool)

(declare-fun tp!449887 () Bool)

(assert (=> b!1545910 (= e!990142 (and setRes!10514 tp!449887))))

(declare-fun condSetEmpty!10514 () Bool)

(assert (=> b!1545910 (= condSetEmpty!10514 (= (_1!9074 (_1!9075 (h!21944 (zeroValue!1923 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))))) ((as const (Array Context!1490 Bool)) false)))))

(assert (=> b!1545754 (= tp!449784 e!990142)))

(declare-fun b!1545911 () Bool)

(declare-fun tp!449889 () Bool)

(assert (=> b!1545911 (= e!990141 tp!449889)))

(declare-fun setIsEmpty!10514 () Bool)

(assert (=> setIsEmpty!10514 setRes!10514))

(assert (= (and b!1545910 condSetEmpty!10514) setIsEmpty!10514))

(assert (= (and b!1545910 (not condSetEmpty!10514)) setNonEmpty!10514))

(assert (= setNonEmpty!10514 b!1545911))

(assert (= (and b!1545754 ((_ is Cons!16543) (zeroValue!1923 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103)))))))) b!1545910))

(declare-fun m!1819853 () Bool)

(assert (=> setNonEmpty!10514 m!1819853))

(declare-fun tp!449891 () Bool)

(declare-fun setElem!10515 () Context!1490)

(declare-fun setRes!10515 () Bool)

(declare-fun setNonEmpty!10515 () Bool)

(declare-fun e!990143 () Bool)

(assert (=> setNonEmpty!10515 (= setRes!10515 (and tp!449891 (inv!21822 setElem!10515) e!990143))))

(declare-fun setRest!10515 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10515 (= (_1!9074 (_1!9075 (h!21944 (minValue!1923 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10515 true) setRest!10515))))

(declare-fun b!1545912 () Bool)

(declare-fun e!990144 () Bool)

(declare-fun tp!449890 () Bool)

(assert (=> b!1545912 (= e!990144 (and setRes!10515 tp!449890))))

(declare-fun condSetEmpty!10515 () Bool)

(assert (=> b!1545912 (= condSetEmpty!10515 (= (_1!9074 (_1!9075 (h!21944 (minValue!1923 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103))))))))) ((as const (Array Context!1490 Bool)) false)))))

(assert (=> b!1545754 (= tp!449785 e!990144)))

(declare-fun b!1545913 () Bool)

(declare-fun tp!449892 () Bool)

(assert (=> b!1545913 (= e!990143 tp!449892)))

(declare-fun setIsEmpty!10515 () Bool)

(assert (=> setIsEmpty!10515 setRes!10515))

(assert (= (and b!1545912 condSetEmpty!10515) setIsEmpty!10515))

(assert (= (and b!1545912 (not condSetEmpty!10515)) setNonEmpty!10515))

(assert (= setNonEmpty!10515 b!1545913))

(assert (= (and b!1545754 ((_ is Cons!16543) (minValue!1923 (v!23353 (underlying!3541 (v!23354 (underlying!3542 (cache!1991 cacheFurthestNullable!103)))))))) b!1545912))

(declare-fun m!1819855 () Bool)

(assert (=> setNonEmpty!10515 m!1819855))

(declare-fun condMapEmpty!7847 () Bool)

(declare-fun mapDefault!7847 () List!16613)

(assert (=> mapNonEmpty!7841 (= condMapEmpty!7847 (= mapRest!7839 ((as const (Array (_ BitVec 32) List!16613)) mapDefault!7847)))))

(declare-fun e!990157 () Bool)

(declare-fun mapRes!7847 () Bool)

(assert (=> mapNonEmpty!7841 (= tp!449791 (and e!990157 mapRes!7847))))

(declare-fun b!1545928 () Bool)

(declare-fun e!990160 () Bool)

(declare-fun tp!449922 () Bool)

(assert (=> b!1545928 (= e!990160 tp!449922)))

(declare-fun tp!449917 () Bool)

(declare-fun setElem!10521 () Context!1490)

(declare-fun setRes!10521 () Bool)

(declare-fun setNonEmpty!10520 () Bool)

(assert (=> setNonEmpty!10520 (= setRes!10521 (and tp!449917 (inv!21822 setElem!10521) e!990160))))

(declare-fun mapValue!7847 () List!16613)

(declare-fun setRest!10521 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10520 (= (_2!9077 (h!21946 mapValue!7847)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10521 true) setRest!10521))))

(declare-fun b!1545929 () Bool)

(declare-fun e!990161 () Bool)

(declare-fun tp!449923 () Bool)

(assert (=> b!1545929 (= e!990161 tp!449923)))

(declare-fun mapNonEmpty!7847 () Bool)

(declare-fun tp!449919 () Bool)

(declare-fun e!990158 () Bool)

(assert (=> mapNonEmpty!7847 (= mapRes!7847 (and tp!449919 e!990158))))

(declare-fun mapKey!7847 () (_ BitVec 32))

(declare-fun mapRest!7847 () (Array (_ BitVec 32) List!16613))

(assert (=> mapNonEmpty!7847 (= mapRest!7839 (store mapRest!7847 mapKey!7847 mapValue!7847))))

(declare-fun setRes!10520 () Bool)

(declare-fun setNonEmpty!10521 () Bool)

(declare-fun e!990159 () Bool)

(declare-fun tp!449921 () Bool)

(declare-fun setElem!10520 () Context!1490)

(assert (=> setNonEmpty!10521 (= setRes!10520 (and tp!449921 (inv!21822 setElem!10520) e!990159))))

(declare-fun setRest!10520 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10521 (= (_2!9077 (h!21946 mapDefault!7847)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10520 true) setRest!10520))))

(declare-fun setIsEmpty!10520 () Bool)

(assert (=> setIsEmpty!10520 setRes!10520))

(declare-fun tp!449924 () Bool)

(declare-fun tp!449920 () Bool)

(declare-fun b!1545930 () Bool)

(declare-fun e!990162 () Bool)

(assert (=> b!1545930 (= e!990157 (and tp!449920 (inv!21822 (_2!9076 (_1!9077 (h!21946 mapDefault!7847)))) e!990162 tp_is_empty!7055 setRes!10520 tp!449924))))

(declare-fun condSetEmpty!10520 () Bool)

(assert (=> b!1545930 (= condSetEmpty!10520 (= (_2!9077 (h!21946 mapDefault!7847)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545931 () Bool)

(declare-fun tp!449916 () Bool)

(assert (=> b!1545931 (= e!990159 tp!449916)))

(declare-fun mapIsEmpty!7847 () Bool)

(assert (=> mapIsEmpty!7847 mapRes!7847))

(declare-fun b!1545932 () Bool)

(declare-fun tp!449925 () Bool)

(assert (=> b!1545932 (= e!990162 tp!449925)))

(declare-fun tp!449918 () Bool)

(declare-fun tp!449915 () Bool)

(declare-fun b!1545933 () Bool)

(assert (=> b!1545933 (= e!990158 (and tp!449915 (inv!21822 (_2!9076 (_1!9077 (h!21946 mapValue!7847)))) e!990161 tp_is_empty!7055 setRes!10521 tp!449918))))

(declare-fun condSetEmpty!10521 () Bool)

(assert (=> b!1545933 (= condSetEmpty!10521 (= (_2!9077 (h!21946 mapValue!7847)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun setIsEmpty!10521 () Bool)

(assert (=> setIsEmpty!10521 setRes!10521))

(assert (= (and mapNonEmpty!7841 condMapEmpty!7847) mapIsEmpty!7847))

(assert (= (and mapNonEmpty!7841 (not condMapEmpty!7847)) mapNonEmpty!7847))

(assert (= b!1545933 b!1545929))

(assert (= (and b!1545933 condSetEmpty!10521) setIsEmpty!10521))

(assert (= (and b!1545933 (not condSetEmpty!10521)) setNonEmpty!10520))

(assert (= setNonEmpty!10520 b!1545928))

(assert (= (and mapNonEmpty!7847 ((_ is Cons!16545) mapValue!7847)) b!1545933))

(assert (= b!1545930 b!1545932))

(assert (= (and b!1545930 condSetEmpty!10520) setIsEmpty!10520))

(assert (= (and b!1545930 (not condSetEmpty!10520)) setNonEmpty!10521))

(assert (= setNonEmpty!10521 b!1545931))

(assert (= (and mapNonEmpty!7841 ((_ is Cons!16545) mapDefault!7847)) b!1545930))

(declare-fun m!1819857 () Bool)

(assert (=> mapNonEmpty!7847 m!1819857))

(declare-fun m!1819859 () Bool)

(assert (=> b!1545930 m!1819859))

(declare-fun m!1819861 () Bool)

(assert (=> setNonEmpty!10521 m!1819861))

(declare-fun m!1819863 () Bool)

(assert (=> setNonEmpty!10520 m!1819863))

(declare-fun m!1819865 () Bool)

(assert (=> b!1545933 m!1819865))

(declare-fun setRes!10522 () Bool)

(declare-fun b!1545934 () Bool)

(declare-fun e!990165 () Bool)

(declare-fun tp!449927 () Bool)

(declare-fun tp!449926 () Bool)

(declare-fun e!990163 () Bool)

(assert (=> b!1545934 (= e!990163 (and tp!449927 (inv!21822 (_2!9076 (_1!9077 (h!21946 mapValue!7839)))) e!990165 tp_is_empty!7055 setRes!10522 tp!449926))))

(declare-fun condSetEmpty!10522 () Bool)

(assert (=> b!1545934 (= condSetEmpty!10522 (= (_2!9077 (h!21946 mapValue!7839)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545935 () Bool)

(declare-fun e!990164 () Bool)

(declare-fun tp!449928 () Bool)

(assert (=> b!1545935 (= e!990164 tp!449928)))

(declare-fun b!1545936 () Bool)

(declare-fun tp!449929 () Bool)

(assert (=> b!1545936 (= e!990165 tp!449929)))

(declare-fun setNonEmpty!10522 () Bool)

(declare-fun tp!449930 () Bool)

(declare-fun setElem!10522 () Context!1490)

(assert (=> setNonEmpty!10522 (= setRes!10522 (and tp!449930 (inv!21822 setElem!10522) e!990164))))

(declare-fun setRest!10522 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10522 (= (_2!9077 (h!21946 mapValue!7839)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10522 true) setRest!10522))))

(declare-fun setIsEmpty!10522 () Bool)

(assert (=> setIsEmpty!10522 setRes!10522))

(assert (=> mapNonEmpty!7841 (= tp!449790 e!990163)))

(assert (= b!1545934 b!1545936))

(assert (= (and b!1545934 condSetEmpty!10522) setIsEmpty!10522))

(assert (= (and b!1545934 (not condSetEmpty!10522)) setNonEmpty!10522))

(assert (= setNonEmpty!10522 b!1545935))

(assert (= (and mapNonEmpty!7841 ((_ is Cons!16545) mapValue!7839)) b!1545934))

(declare-fun m!1819867 () Bool)

(assert (=> b!1545934 m!1819867))

(declare-fun m!1819869 () Bool)

(assert (=> setNonEmpty!10522 m!1819869))

(declare-fun b!1545951 () Bool)

(declare-fun e!990180 () Bool)

(declare-fun tp!449951 () Bool)

(assert (=> b!1545951 (= e!990180 tp!449951)))

(declare-fun b!1545952 () Bool)

(declare-fun e!990182 () Bool)

(declare-fun tp!449957 () Bool)

(assert (=> b!1545952 (= e!990182 tp!449957)))

(declare-fun setIsEmpty!10527 () Bool)

(declare-fun setRes!10528 () Bool)

(assert (=> setIsEmpty!10527 setRes!10528))

(declare-fun mapIsEmpty!7850 () Bool)

(declare-fun mapRes!7850 () Bool)

(assert (=> mapIsEmpty!7850 mapRes!7850))

(declare-fun b!1545953 () Bool)

(declare-fun mapDefault!7850 () List!16615)

(declare-fun e!990183 () Bool)

(declare-fun tp!449952 () Bool)

(declare-fun e!990179 () Bool)

(assert (=> b!1545953 (= e!990183 (and (inv!21822 (_1!9078 (_1!9079 (h!21948 mapDefault!7850)))) e!990179 tp_is_empty!7055 setRes!10528 tp!449952))))

(declare-fun condSetEmpty!10527 () Bool)

(assert (=> b!1545953 (= condSetEmpty!10527 (= (_2!9079 (h!21948 mapDefault!7850)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun condMapEmpty!7850 () Bool)

(assert (=> mapNonEmpty!7839 (= condMapEmpty!7850 (= mapRest!7841 ((as const (Array (_ BitVec 32) List!16615)) mapDefault!7850)))))

(assert (=> mapNonEmpty!7839 (= tp!449795 (and e!990183 mapRes!7850))))

(declare-fun b!1545954 () Bool)

(declare-fun e!990181 () Bool)

(declare-fun tp!449955 () Bool)

(assert (=> b!1545954 (= e!990181 tp!449955)))

(declare-fun setRes!10527 () Bool)

(declare-fun tp!449954 () Bool)

(declare-fun setNonEmpty!10527 () Bool)

(declare-fun setElem!10528 () Context!1490)

(assert (=> setNonEmpty!10527 (= setRes!10527 (and tp!449954 (inv!21822 setElem!10528) e!990182))))

(declare-fun mapValue!7850 () List!16615)

(declare-fun setRest!10527 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10527 (= (_2!9079 (h!21948 mapValue!7850)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10528 true) setRest!10527))))

(declare-fun tp!449953 () Bool)

(declare-fun e!990178 () Bool)

(declare-fun b!1545955 () Bool)

(assert (=> b!1545955 (= e!990178 (and (inv!21822 (_1!9078 (_1!9079 (h!21948 mapValue!7850)))) e!990180 tp_is_empty!7055 setRes!10527 tp!449953))))

(declare-fun condSetEmpty!10528 () Bool)

(assert (=> b!1545955 (= condSetEmpty!10528 (= (_2!9079 (h!21948 mapValue!7850)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun tp!449956 () Bool)

(declare-fun setElem!10527 () Context!1490)

(declare-fun setNonEmpty!10528 () Bool)

(assert (=> setNonEmpty!10528 (= setRes!10528 (and tp!449956 (inv!21822 setElem!10527) e!990181))))

(declare-fun setRest!10528 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10528 (= (_2!9079 (h!21948 mapDefault!7850)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10527 true) setRest!10528))))

(declare-fun b!1545956 () Bool)

(declare-fun tp!449950 () Bool)

(assert (=> b!1545956 (= e!990179 tp!449950)))

(declare-fun mapNonEmpty!7850 () Bool)

(declare-fun tp!449949 () Bool)

(assert (=> mapNonEmpty!7850 (= mapRes!7850 (and tp!449949 e!990178))))

(declare-fun mapKey!7850 () (_ BitVec 32))

(declare-fun mapRest!7850 () (Array (_ BitVec 32) List!16615))

(assert (=> mapNonEmpty!7850 (= mapRest!7841 (store mapRest!7850 mapKey!7850 mapValue!7850))))

(declare-fun setIsEmpty!10528 () Bool)

(assert (=> setIsEmpty!10528 setRes!10527))

(assert (= (and mapNonEmpty!7839 condMapEmpty!7850) mapIsEmpty!7850))

(assert (= (and mapNonEmpty!7839 (not condMapEmpty!7850)) mapNonEmpty!7850))

(assert (= b!1545955 b!1545951))

(assert (= (and b!1545955 condSetEmpty!10528) setIsEmpty!10528))

(assert (= (and b!1545955 (not condSetEmpty!10528)) setNonEmpty!10527))

(assert (= setNonEmpty!10527 b!1545952))

(assert (= (and mapNonEmpty!7850 ((_ is Cons!16547) mapValue!7850)) b!1545955))

(assert (= b!1545953 b!1545956))

(assert (= (and b!1545953 condSetEmpty!10527) setIsEmpty!10527))

(assert (= (and b!1545953 (not condSetEmpty!10527)) setNonEmpty!10528))

(assert (= setNonEmpty!10528 b!1545954))

(assert (= (and mapNonEmpty!7839 ((_ is Cons!16547) mapDefault!7850)) b!1545953))

(declare-fun m!1819871 () Bool)

(assert (=> b!1545953 m!1819871))

(declare-fun m!1819873 () Bool)

(assert (=> setNonEmpty!10528 m!1819873))

(declare-fun m!1819875 () Bool)

(assert (=> b!1545955 m!1819875))

(declare-fun m!1819877 () Bool)

(assert (=> mapNonEmpty!7850 m!1819877))

(declare-fun m!1819879 () Bool)

(assert (=> setNonEmpty!10527 m!1819879))

(declare-fun b!1545957 () Bool)

(declare-fun e!990186 () Bool)

(declare-fun tp!449958 () Bool)

(assert (=> b!1545957 (= e!990186 tp!449958)))

(declare-fun setRes!10529 () Bool)

(declare-fun b!1545958 () Bool)

(declare-fun tp!449960 () Bool)

(declare-fun e!990184 () Bool)

(assert (=> b!1545958 (= e!990184 (and (inv!21822 (_1!9078 (_1!9079 (h!21948 mapValue!7840)))) e!990186 tp_is_empty!7055 setRes!10529 tp!449960))))

(declare-fun condSetEmpty!10529 () Bool)

(assert (=> b!1545958 (= condSetEmpty!10529 (= (_2!9079 (h!21948 mapValue!7840)) ((as const (Array Context!1490 Bool)) false)))))

(declare-fun b!1545959 () Bool)

(declare-fun e!990185 () Bool)

(declare-fun tp!449959 () Bool)

(assert (=> b!1545959 (= e!990185 tp!449959)))

(assert (=> mapNonEmpty!7839 (= tp!449787 e!990184)))

(declare-fun setIsEmpty!10529 () Bool)

(assert (=> setIsEmpty!10529 setRes!10529))

(declare-fun setNonEmpty!10529 () Bool)

(declare-fun setElem!10529 () Context!1490)

(declare-fun tp!449961 () Bool)

(assert (=> setNonEmpty!10529 (= setRes!10529 (and tp!449961 (inv!21822 setElem!10529) e!990185))))

(declare-fun setRest!10529 () (InoxSet Context!1490))

(assert (=> setNonEmpty!10529 (= (_2!9079 (h!21948 mapValue!7840)) ((_ map or) (store ((as const (Array Context!1490 Bool)) false) setElem!10529 true) setRest!10529))))

(assert (= b!1545958 b!1545957))

(assert (= (and b!1545958 condSetEmpty!10529) setIsEmpty!10529))

(assert (= (and b!1545958 (not condSetEmpty!10529)) setNonEmpty!10529))

(assert (= setNonEmpty!10529 b!1545959))

(assert (= (and mapNonEmpty!7839 ((_ is Cons!16547) mapValue!7840)) b!1545958))

(declare-fun m!1819881 () Bool)

(assert (=> b!1545958 m!1819881))

(declare-fun m!1819883 () Bool)

(assert (=> setNonEmpty!10529 m!1819883))

(declare-fun b!1545973 () Bool)

(declare-fun e!990189 () Bool)

(declare-fun tp!449973 () Bool)

(declare-fun tp!449974 () Bool)

(assert (=> b!1545973 (= e!990189 (and tp!449973 tp!449974))))

(declare-fun b!1545972 () Bool)

(declare-fun tp!449976 () Bool)

(assert (=> b!1545972 (= e!990189 tp!449976)))

(assert (=> b!1545756 (= tp!449777 e!990189)))

(declare-fun b!1545970 () Bool)

(assert (=> b!1545970 (= e!990189 tp_is_empty!7055)))

(declare-fun b!1545971 () Bool)

(declare-fun tp!449972 () Bool)

(declare-fun tp!449975 () Bool)

(assert (=> b!1545971 (= e!990189 (and tp!449972 tp!449975))))

(assert (= (and b!1545756 ((_ is ElementMatch!4227) (regex!2901 rule!240))) b!1545970))

(assert (= (and b!1545756 ((_ is Concat!7218) (regex!2901 rule!240))) b!1545971))

(assert (= (and b!1545756 ((_ is Star!4227) (regex!2901 rule!240))) b!1545972))

(assert (= (and b!1545756 ((_ is Union!4227) (regex!2901 rule!240))) b!1545973))

(declare-fun b!1545974 () Bool)

(declare-fun e!990190 () Bool)

(declare-fun tp!449978 () Bool)

(declare-fun tp!449979 () Bool)

(assert (=> b!1545974 (= e!990190 (and (inv!21819 (left!13512 (c!252106 input!1676))) tp!449978 (inv!21819 (right!13842 (c!252106 input!1676))) tp!449979))))

(declare-fun b!1545976 () Bool)

(declare-fun e!990191 () Bool)

(declare-fun tp!449977 () Bool)

(assert (=> b!1545976 (= e!990191 tp!449977)))

(declare-fun b!1545975 () Bool)

(assert (=> b!1545975 (= e!990190 (and (inv!21823 (xs!8318 (c!252106 input!1676))) e!990191))))

(assert (=> b!1545757 (= tp!449780 (and (inv!21819 (c!252106 input!1676)) e!990190))))

(assert (= (and b!1545757 ((_ is Node!5518) (c!252106 input!1676))) b!1545974))

(assert (= b!1545975 b!1545976))

(assert (= (and b!1545757 ((_ is Leaf!8177) (c!252106 input!1676))) b!1545975))

(declare-fun m!1819885 () Bool)

(assert (=> b!1545974 m!1819885))

(declare-fun m!1819887 () Bool)

(assert (=> b!1545974 m!1819887))

(declare-fun m!1819889 () Bool)

(assert (=> b!1545975 m!1819889))

(assert (=> b!1545757 m!1819765))

(declare-fun tp!449981 () Bool)

(declare-fun b!1545977 () Bool)

(declare-fun tp!449982 () Bool)

(declare-fun e!990192 () Bool)

(assert (=> b!1545977 (= e!990192 (and (inv!21819 (left!13512 (c!252106 (totalInput!2402 cacheFurthestNullable!103)))) tp!449981 (inv!21819 (right!13842 (c!252106 (totalInput!2402 cacheFurthestNullable!103)))) tp!449982))))

(declare-fun b!1545979 () Bool)

(declare-fun e!990193 () Bool)

(declare-fun tp!449980 () Bool)

(assert (=> b!1545979 (= e!990193 tp!449980)))

(declare-fun b!1545978 () Bool)

(assert (=> b!1545978 (= e!990192 (and (inv!21823 (xs!8318 (c!252106 (totalInput!2402 cacheFurthestNullable!103)))) e!990193))))

(assert (=> b!1545766 (= tp!449788 (and (inv!21819 (c!252106 (totalInput!2402 cacheFurthestNullable!103))) e!990192))))

(assert (= (and b!1545766 ((_ is Node!5518) (c!252106 (totalInput!2402 cacheFurthestNullable!103)))) b!1545977))

(assert (= b!1545978 b!1545979))

(assert (= (and b!1545766 ((_ is Leaf!8177) (c!252106 (totalInput!2402 cacheFurthestNullable!103)))) b!1545978))

(declare-fun m!1819891 () Bool)

(assert (=> b!1545977 m!1819891))

(declare-fun m!1819893 () Bool)

(assert (=> b!1545977 m!1819893))

(declare-fun m!1819895 () Bool)

(assert (=> b!1545978 m!1819895))

(assert (=> b!1545766 m!1819743))

(check-sat (not d!460139) (not b!1545959) (not b!1545972) (not mapNonEmpty!7844) (not b!1545865) (not b!1545894) (not setNonEmpty!10521) (not setNonEmpty!10500) (not b!1545862) (not b!1545951) (not b!1545974) (not b!1545879) (not b!1545780) (not b!1545832) (not b!1545876) (not b!1545909) (not b!1545822) b_and!107651 (not b!1545911) (not setNonEmpty!10504) (not b!1545861) (not b!1545932) (not setNonEmpty!10496) (not b!1545973) (not d!460129) (not b!1545955) (not setNonEmpty!10501) (not b!1545857) b_and!107643 (not b!1545860) (not b!1545928) (not d!460111) (not b!1545877) (not b!1545835) (not b!1545956) (not b!1545975) (not d!460147) (not b!1545864) (not b!1545837) (not b!1545847) (not setNonEmpty!10528) (not setNonEmpty!10520) (not mapNonEmpty!7847) (not b!1545807) (not b_next!41261) (not b_next!41253) (not bm!101751) b_and!107647 (not d!460119) (not b!1545952) (not b_next!41259) b_and!107637 (not b_next!41251) (not b!1545895) (not d!460135) (not b!1545971) (not b!1545858) (not setNonEmpty!10512) (not b!1545898) (not setNonEmpty!10527) (not b!1545936) (not b!1545762) (not b!1545881) b_and!107641 (not d!460151) (not b!1545783) (not b!1545766) (not b_next!41263) (not b!1545933) b_and!107645 (not setNonEmpty!10522) (not bm!101752) (not b!1545875) (not setNonEmpty!10513) (not mapNonEmpty!7850) (not setNonEmpty!10514) (not d!460141) (not b!1545910) (not b!1545882) (not d!460149) (not b!1545880) (not b!1545957) (not b_next!41257) (not setNonEmpty!10499) tp_is_empty!7055 (not b_next!41265) (not b!1545977) b_and!107639 (not b!1545786) (not setNonEmpty!10506) (not b!1545930) (not b!1545976) (not d!460105) (not b!1545893) (not b!1545874) (not setNonEmpty!10515) (not b!1545912) (not b!1545958) (not b_next!41255) (not b!1545827) (not b!1545820) (not b!1545831) (not b!1545896) (not setNonEmpty!10529) (not b!1545913) (not b!1545934) (not b!1545931) (not d!460153) (not setNonEmpty!10505) (not b!1545935) (not b!1545929) (not b!1545954) (not b!1545863) (not b!1545908) (not b!1545953) b_and!107649 (not b!1545834) (not setNonEmpty!10511) (not b!1545757) (not b!1545840) (not b!1545859) (not b!1545878) (not b!1545897) (not b!1545848) (not b!1545979) (not b!1545978) (not b!1545907))
(check-sat b_and!107651 b_and!107643 b_and!107647 b_and!107641 b_and!107639 (not b_next!41255) b_and!107649 (not b_next!41261) (not b_next!41253) (not b_next!41259) b_and!107637 (not b_next!41251) (not b_next!41263) b_and!107645 (not b_next!41257) (not b_next!41265))
