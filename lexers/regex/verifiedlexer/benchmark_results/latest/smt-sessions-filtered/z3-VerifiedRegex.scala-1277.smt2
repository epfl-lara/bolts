; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66296 () Bool)

(assert start!66296)

(declare-fun b!693788 () Bool)

(declare-fun b_free!19745 () Bool)

(declare-fun b_next!19809 () Bool)

(assert (=> b!693788 (= b_free!19745 (not b_next!19809))))

(declare-fun tp!209700 () Bool)

(declare-fun b_and!63539 () Bool)

(assert (=> b!693788 (= tp!209700 b_and!63539)))

(declare-fun b!693782 () Bool)

(declare-fun b_free!19747 () Bool)

(declare-fun b_next!19811 () Bool)

(assert (=> b!693782 (= b_free!19747 (not b_next!19811))))

(declare-fun tp!209715 () Bool)

(declare-fun b_and!63541 () Bool)

(assert (=> b!693782 (= tp!209715 b_and!63541)))

(declare-fun b!693808 () Bool)

(declare-fun b_free!19749 () Bool)

(declare-fun b_next!19813 () Bool)

(assert (=> b!693808 (= b_free!19749 (not b_next!19813))))

(declare-fun tp!209695 () Bool)

(declare-fun b_and!63543 () Bool)

(assert (=> b!693808 (= tp!209695 b_and!63543)))

(declare-fun b!693796 () Bool)

(declare-fun b_free!19751 () Bool)

(declare-fun b_next!19815 () Bool)

(assert (=> b!693796 (= b_free!19751 (not b_next!19815))))

(declare-fun tp!209697 () Bool)

(declare-fun b_and!63545 () Bool)

(assert (=> b!693796 (= tp!209697 b_and!63545)))

(declare-fun b!693799 () Bool)

(declare-fun b_free!19753 () Bool)

(declare-fun b_next!19817 () Bool)

(assert (=> b!693799 (= b_free!19753 (not b_next!19817))))

(declare-fun tp!209704 () Bool)

(declare-fun b_and!63547 () Bool)

(assert (=> b!693799 (= tp!209704 b_and!63547)))

(declare-fun b!693800 () Bool)

(declare-fun b_free!19755 () Bool)

(declare-fun b_next!19819 () Bool)

(assert (=> b!693800 (= b_free!19755 (not b_next!19819))))

(declare-fun tp!209693 () Bool)

(declare-fun b_and!63549 () Bool)

(assert (=> b!693800 (= tp!209693 b_and!63549)))

(declare-fun b!693778 () Bool)

(declare-fun b_free!19757 () Bool)

(declare-fun b_next!19821 () Bool)

(assert (=> b!693778 (= b_free!19757 (not b_next!19821))))

(declare-fun tp!209694 () Bool)

(declare-fun b_and!63551 () Bool)

(assert (=> b!693778 (= tp!209694 b_and!63551)))

(declare-fun b_free!19759 () Bool)

(declare-fun b_next!19823 () Bool)

(assert (=> b!693778 (= b_free!19759 (not b_next!19823))))

(declare-fun tp!209702 () Bool)

(declare-fun b_and!63553 () Bool)

(assert (=> b!693778 (= tp!209702 b_and!63553)))

(declare-fun b!693769 () Bool)

(declare-fun res!314307 () Bool)

(declare-fun e!436764 () Bool)

(assert (=> b!693769 (=> (not res!314307) (not e!436764))))

(declare-datatypes ((LexerInterface!1323 0))(
  ( (LexerInterfaceExt!1320 (__x!5471 Int)) (Lexer!1321) )
))
(declare-fun thiss!12529 () LexerInterface!1323)

(declare-datatypes ((List!7557 0))(
  ( (Nil!7543) (Cons!7543 (h!12944 (_ BitVec 16)) (t!87380 List!7557)) )
))
(declare-datatypes ((TokenValue!1554 0))(
  ( (FloatLiteralValue!3108 (text!11323 List!7557)) (TokenValueExt!1553 (__x!5472 Int)) (Broken!7770 (value!48674 List!7557)) (Object!1567) (End!1554) (Def!1554) (Underscore!1554) (Match!1554) (Else!1554) (Error!1554) (Case!1554) (If!1554) (Extends!1554) (Abstract!1554) (Class!1554) (Val!1554) (DelimiterValue!3108 (del!1614 List!7557)) (KeywordValue!1560 (value!48675 List!7557)) (CommentValue!3108 (value!48676 List!7557)) (WhitespaceValue!3108 (value!48677 List!7557)) (IndentationValue!1554 (value!48678 List!7557)) (String!9495) (Int32!1554) (Broken!7771 (value!48679 List!7557)) (Boolean!1555) (Unit!12663) (OperatorValue!1557 (op!1614 List!7557)) (IdentifierValue!3108 (value!48680 List!7557)) (IdentifierValue!3109 (value!48681 List!7557)) (WhitespaceValue!3109 (value!48682 List!7557)) (True!3108) (False!3108) (Broken!7772 (value!48683 List!7557)) (Broken!7773 (value!48684 List!7557)) (True!3109) (RightBrace!1554) (RightBracket!1554) (Colon!1554) (Null!1554) (Comma!1554) (LeftBracket!1554) (False!3109) (LeftBrace!1554) (ImaginaryLiteralValue!1554 (text!11324 List!7557)) (StringLiteralValue!4662 (value!48685 List!7557)) (EOFValue!1554 (value!48686 List!7557)) (IdentValue!1554 (value!48687 List!7557)) (DelimiterValue!3109 (value!48688 List!7557)) (DedentValue!1554 (value!48689 List!7557)) (NewLineValue!1554 (value!48690 List!7557)) (IntegerValue!4662 (value!48691 (_ BitVec 32)) (text!11325 List!7557)) (IntegerValue!4663 (value!48692 Int) (text!11326 List!7557)) (Times!1554) (Or!1554) (Equal!1554) (Minus!1554) (Broken!7774 (value!48693 List!7557)) (And!1554) (Div!1554) (LessEqual!1554) (Mod!1554) (Concat!3403) (Not!1554) (Plus!1554) (SpaceValue!1554 (value!48694 List!7557)) (IntegerValue!4664 (value!48695 Int) (text!11327 List!7557)) (StringLiteralValue!4663 (text!11328 List!7557)) (FloatLiteralValue!3109 (text!11329 List!7557)) (BytesLiteralValue!1554 (value!48696 List!7557)) (CommentValue!3109 (value!48697 List!7557)) (StringLiteralValue!4664 (value!48698 List!7557)) (ErrorTokenValue!1554 (msg!1615 List!7557)) )
))
(declare-datatypes ((C!4300 0))(
  ( (C!4301 (val!2380 Int)) )
))
(declare-datatypes ((List!7558 0))(
  ( (Nil!7544) (Cons!7544 (h!12945 C!4300) (t!87381 List!7558)) )
))
(declare-datatypes ((IArray!5317 0))(
  ( (IArray!5318 (innerList!2716 List!7558)) )
))
(declare-datatypes ((Conc!2658 0))(
  ( (Node!2658 (left!6017 Conc!2658) (right!6347 Conc!2658) (csize!5546 Int) (cheight!2869 Int)) (Leaf!3936 (xs!5311 IArray!5317) (csize!5547 Int)) (Empty!2658) )
))
(declare-datatypes ((BalanceConc!5328 0))(
  ( (BalanceConc!5329 (c!121766 Conc!2658)) )
))
(declare-datatypes ((Regex!1849 0))(
  ( (ElementMatch!1849 (c!121767 C!4300)) (Concat!3404 (regOne!4210 Regex!1849) (regTwo!4210 Regex!1849)) (EmptyExpr!1849) (Star!1849 (reg!2178 Regex!1849)) (EmptyLang!1849) (Union!1849 (regOne!4211 Regex!1849) (regTwo!4211 Regex!1849)) )
))
(declare-datatypes ((String!9496 0))(
  ( (String!9497 (value!48699 String)) )
))
(declare-datatypes ((TokenValueInjection!2844 0))(
  ( (TokenValueInjection!2845 (toValue!2474 Int) (toChars!2333 Int)) )
))
(declare-datatypes ((Rule!2820 0))(
  ( (Rule!2821 (regex!1510 Regex!1849) (tag!1772 String!9496) (isSeparator!1510 Bool) (transformation!1510 TokenValueInjection!2844)) )
))
(declare-datatypes ((List!7559 0))(
  ( (Nil!7545) (Cons!7545 (h!12946 Rule!2820) (t!87382 List!7559)) )
))
(declare-fun rules!1486 () List!7559)

(declare-fun rulesInvariant!1255 (LexerInterface!1323 List!7559) Bool)

(assert (=> b!693769 (= res!314307 (rulesInvariant!1255 thiss!12529 rules!1486))))

(declare-fun b!693770 () Bool)

(declare-fun e!436760 () Bool)

(declare-datatypes ((Token!2720 0))(
  ( (Token!2721 (value!48700 TokenValue!1554) (rule!2549 Rule!2820) (size!6165 Int) (originalCharacters!1785 List!7558)) )
))
(declare-datatypes ((List!7560 0))(
  ( (Nil!7546) (Cons!7546 (h!12947 Token!2720) (t!87383 List!7560)) )
))
(declare-datatypes ((IArray!5319 0))(
  ( (IArray!5320 (innerList!2717 List!7560)) )
))
(declare-datatypes ((Conc!2659 0))(
  ( (Node!2659 (left!6018 Conc!2659) (right!6348 Conc!2659) (csize!5548 Int) (cheight!2870 Int)) (Leaf!3937 (xs!5312 IArray!5319) (csize!5549 Int)) (Empty!2659) )
))
(declare-datatypes ((BalanceConc!5330 0))(
  ( (BalanceConc!5331 (c!121768 Conc!2659)) )
))
(declare-fun acc!372 () BalanceConc!5330)

(declare-fun tp!209689 () Bool)

(declare-fun inv!9660 (Conc!2659) Bool)

(assert (=> b!693770 (= e!436760 (and (inv!9660 (c!121768 acc!372)) tp!209689))))

(declare-fun b!693771 () Bool)

(declare-fun e!436773 () Bool)

(declare-fun e!436775 () Bool)

(assert (=> b!693771 (= e!436773 e!436775)))

(declare-fun res!314310 () Bool)

(assert (=> b!693771 (=> (not res!314310) (not e!436775))))

(declare-datatypes ((tuple2!7966 0))(
  ( (tuple2!7967 (_1!4406 BalanceConc!5330) (_2!4406 BalanceConc!5328)) )
))
(declare-fun lt!285223 () tuple2!7966)

(declare-fun list!3160 (BalanceConc!5330) List!7560)

(assert (=> b!693771 (= res!314310 (= (list!3160 (_1!4406 lt!285223)) (list!3160 acc!372)))))

(declare-fun treated!50 () BalanceConc!5328)

(declare-fun lexRec!165 (LexerInterface!1323 List!7559 BalanceConc!5328) tuple2!7966)

(assert (=> b!693771 (= lt!285223 (lexRec!165 thiss!12529 rules!1486 treated!50))))

(declare-fun b!693772 () Bool)

(declare-fun res!314304 () Bool)

(declare-fun e!436750 () Bool)

(assert (=> b!693772 (=> (not res!314304) (not e!436750))))

(declare-datatypes ((array!2941 0))(
  ( (array!2942 (arr!1328 (Array (_ BitVec 32) (_ BitVec 64))) (size!6166 (_ BitVec 32))) )
))
(declare-datatypes ((List!7561 0))(
  ( (Nil!7547) (Cons!7547 (h!12948 Regex!1849) (t!87384 List!7561)) )
))
(declare-datatypes ((Context!502 0))(
  ( (Context!503 (exprs!751 List!7561)) )
))
(declare-datatypes ((tuple3!728 0))(
  ( (tuple3!729 (_1!4407 Regex!1849) (_2!4407 Context!502) (_3!423 C!4300)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7968 0))(
  ( (tuple2!7969 (_1!4408 tuple3!728) (_2!4408 (InoxSet Context!502))) )
))
(declare-datatypes ((List!7562 0))(
  ( (Nil!7548) (Cons!7548 (h!12949 tuple2!7968) (t!87385 List!7562)) )
))
(declare-datatypes ((array!2943 0))(
  ( (array!2944 (arr!1329 (Array (_ BitVec 32) List!7562)) (size!6167 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1578 0))(
  ( (LongMapFixedSize!1579 (defaultEntry!1145 Int) (mask!2598 (_ BitVec 32)) (extraKeys!1036 (_ BitVec 32)) (zeroValue!1046 List!7562) (minValue!1046 List!7562) (_size!1687 (_ BitVec 32)) (_keys!1083 array!2941) (_values!1068 array!2943) (_vacant!850 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3097 0))(
  ( (Cell!3098 (v!17701 LongMapFixedSize!1578)) )
))
(declare-datatypes ((MutLongMap!789 0))(
  ( (LongMap!789 (underlying!1761 Cell!3097)) (MutLongMapExt!788 (__x!5473 Int)) )
))
(declare-datatypes ((Cell!3099 0))(
  ( (Cell!3100 (v!17702 MutLongMap!789)) )
))
(declare-datatypes ((Hashable!761 0))(
  ( (HashableExt!760 (__x!5474 Int)) )
))
(declare-datatypes ((MutableMap!761 0))(
  ( (MutableMapExt!760 (__x!5475 Int)) (HashMap!761 (underlying!1762 Cell!3099) (hashF!2669 Hashable!761) (_size!1688 (_ BitVec 32)) (defaultValue!912 Int)) )
))
(declare-datatypes ((CacheDown!400 0))(
  ( (CacheDown!401 (cache!1148 MutableMap!761)) )
))
(declare-fun cacheDown!515 () CacheDown!400)

(declare-fun valid!676 (CacheDown!400) Bool)

(assert (=> b!693772 (= res!314304 (valid!676 cacheDown!515))))

(declare-fun b!693773 () Bool)

(declare-fun e!436746 () Bool)

(declare-fun e!436772 () Bool)

(declare-datatypes ((tuple2!7970 0))(
  ( (tuple2!7971 (_1!4409 Context!502) (_2!4409 C!4300)) )
))
(declare-datatypes ((tuple2!7972 0))(
  ( (tuple2!7973 (_1!4410 tuple2!7970) (_2!4410 (InoxSet Context!502))) )
))
(declare-datatypes ((List!7563 0))(
  ( (Nil!7549) (Cons!7549 (h!12950 tuple2!7972) (t!87386 List!7563)) )
))
(declare-datatypes ((array!2945 0))(
  ( (array!2946 (arr!1330 (Array (_ BitVec 32) List!7563)) (size!6168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1580 0))(
  ( (LongMapFixedSize!1581 (defaultEntry!1146 Int) (mask!2599 (_ BitVec 32)) (extraKeys!1037 (_ BitVec 32)) (zeroValue!1047 List!7563) (minValue!1047 List!7563) (_size!1689 (_ BitVec 32)) (_keys!1084 array!2941) (_values!1069 array!2945) (_vacant!851 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3101 0))(
  ( (Cell!3102 (v!17703 LongMapFixedSize!1580)) )
))
(declare-datatypes ((MutLongMap!790 0))(
  ( (LongMap!790 (underlying!1763 Cell!3101)) (MutLongMapExt!789 (__x!5476 Int)) )
))
(declare-fun lt!285220 () MutLongMap!790)

(get-info :version)

(assert (=> b!693773 (= e!436746 (and e!436772 ((_ is LongMap!790) lt!285220)))))

(declare-datatypes ((Hashable!762 0))(
  ( (HashableExt!761 (__x!5477 Int)) )
))
(declare-datatypes ((Cell!3103 0))(
  ( (Cell!3104 (v!17704 MutLongMap!790)) )
))
(declare-datatypes ((MutableMap!762 0))(
  ( (MutableMapExt!761 (__x!5478 Int)) (HashMap!762 (underlying!1764 Cell!3103) (hashF!2670 Hashable!762) (_size!1690 (_ BitVec 32)) (defaultValue!913 Int)) )
))
(declare-datatypes ((CacheUp!394 0))(
  ( (CacheUp!395 (cache!1149 MutableMap!762)) )
))
(declare-fun cacheUp!502 () CacheUp!394)

(assert (=> b!693773 (= lt!285220 (v!17704 (underlying!1764 (cache!1149 cacheUp!502))))))

(declare-fun b!693774 () Bool)

(declare-fun e!436763 () Bool)

(declare-fun tp!209711 () Bool)

(declare-fun inv!9661 (Conc!2658) Bool)

(assert (=> b!693774 (= e!436763 (and (inv!9661 (c!121766 treated!50)) tp!209711))))

(declare-fun b!693775 () Bool)

(declare-fun res!314301 () Bool)

(assert (=> b!693775 (=> (not res!314301) (not e!436775))))

(declare-fun isEmpty!4890 (List!7558) Bool)

(declare-fun list!3161 (BalanceConc!5328) List!7558)

(assert (=> b!693775 (= res!314301 (isEmpty!4890 (list!3161 (_2!4406 lt!285223))))))

(declare-fun b!693776 () Bool)

(declare-fun e!436769 () Bool)

(declare-datatypes ((Hashable!763 0))(
  ( (HashableExt!762 (__x!5479 Int)) )
))
(declare-datatypes ((tuple2!7974 0))(
  ( (tuple2!7975 (_1!4411 (InoxSet Context!502)) (_2!4411 Int)) )
))
(declare-datatypes ((tuple2!7976 0))(
  ( (tuple2!7977 (_1!4412 tuple2!7974) (_2!4412 Int)) )
))
(declare-datatypes ((List!7564 0))(
  ( (Nil!7550) (Cons!7550 (h!12951 tuple2!7976) (t!87387 List!7564)) )
))
(declare-datatypes ((array!2947 0))(
  ( (array!2948 (arr!1331 (Array (_ BitVec 32) List!7564)) (size!6169 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1582 0))(
  ( (LongMapFixedSize!1583 (defaultEntry!1147 Int) (mask!2600 (_ BitVec 32)) (extraKeys!1038 (_ BitVec 32)) (zeroValue!1048 List!7564) (minValue!1048 List!7564) (_size!1691 (_ BitVec 32)) (_keys!1085 array!2941) (_values!1070 array!2947) (_vacant!852 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3105 0))(
  ( (Cell!3106 (v!17705 LongMapFixedSize!1582)) )
))
(declare-datatypes ((MutLongMap!791 0))(
  ( (LongMap!791 (underlying!1765 Cell!3105)) (MutLongMapExt!790 (__x!5480 Int)) )
))
(declare-datatypes ((Cell!3107 0))(
  ( (Cell!3108 (v!17706 MutLongMap!791)) )
))
(declare-datatypes ((MutableMap!763 0))(
  ( (MutableMapExt!762 (__x!5481 Int)) (HashMap!763 (underlying!1766 Cell!3107) (hashF!2671 Hashable!763) (_size!1692 (_ BitVec 32)) (defaultValue!914 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!54 0))(
  ( (CacheFindLongestMatch!55 (cache!1150 MutableMap!763) (totalInput!1809 BalanceConc!5328)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!54)

(declare-fun tp!209703 () Bool)

(assert (=> b!693776 (= e!436769 (and (inv!9661 (c!121766 (totalInput!1809 cacheFindLongestMatch!74))) tp!209703))))

(declare-fun b!693777 () Bool)

(declare-fun e!436751 () Bool)

(declare-fun e!436759 () Bool)

(assert (=> b!693777 (= e!436751 e!436759)))

(declare-fun e!436774 () Bool)

(assert (=> b!693778 (= e!436774 (and tp!209694 tp!209702))))

(declare-fun mapNonEmpty!3173 () Bool)

(declare-fun mapRes!3175 () Bool)

(declare-fun tp!209701 () Bool)

(declare-fun tp!209709 () Bool)

(assert (=> mapNonEmpty!3173 (= mapRes!3175 (and tp!209701 tp!209709))))

(declare-fun mapValue!3173 () List!7564)

(declare-fun mapRest!3174 () (Array (_ BitVec 32) List!7564))

(declare-fun mapKey!3174 () (_ BitVec 32))

(assert (=> mapNonEmpty!3173 (= (arr!1331 (_values!1070 (v!17705 (underlying!1765 (v!17706 (underlying!1766 (cache!1150 cacheFindLongestMatch!74))))))) (store mapRest!3174 mapKey!3174 mapValue!3173))))

(declare-fun b!693779 () Bool)

(declare-fun e!436740 () Bool)

(declare-fun tp!209698 () Bool)

(assert (=> b!693779 (= e!436740 (and tp!209698 mapRes!3175))))

(declare-fun condMapEmpty!3174 () Bool)

(declare-fun mapDefault!3174 () List!7564)

(assert (=> b!693779 (= condMapEmpty!3174 (= (arr!1331 (_values!1070 (v!17705 (underlying!1765 (v!17706 (underlying!1766 (cache!1150 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7564)) mapDefault!3174)))))

(declare-fun b!693780 () Bool)

(declare-fun e!436743 () Bool)

(declare-fun tp!209714 () Bool)

(declare-fun mapRes!3174 () Bool)

(assert (=> b!693780 (= e!436743 (and tp!209714 mapRes!3174))))

(declare-fun condMapEmpty!3173 () Bool)

(declare-fun mapDefault!3173 () List!7563)

(assert (=> b!693780 (= condMapEmpty!3173 (= (arr!1330 (_values!1069 (v!17703 (underlying!1763 (v!17704 (underlying!1764 (cache!1149 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7563)) mapDefault!3173)))))

(declare-fun b!693781 () Bool)

(declare-fun e!436754 () Bool)

(declare-fun e!436766 () Bool)

(declare-fun tp!209712 () Bool)

(assert (=> b!693781 (= e!436754 (and e!436766 tp!209712))))

(declare-fun e!436768 () Bool)

(declare-fun e!436758 () Bool)

(assert (=> b!693782 (= e!436768 (and e!436758 tp!209715))))

(declare-fun b!693783 () Bool)

(declare-fun e!436753 () Bool)

(declare-fun e!436742 () Bool)

(assert (=> b!693783 (= e!436753 e!436742)))

(declare-fun b!693784 () Bool)

(declare-fun e!436752 () Bool)

(declare-fun e!436756 () Bool)

(assert (=> b!693784 (= e!436752 e!436756)))

(declare-fun b!693785 () Bool)

(declare-fun res!314308 () Bool)

(assert (=> b!693785 (=> (not res!314308) (not e!436750))))

(declare-fun valid!677 (CacheUp!394) Bool)

(assert (=> b!693785 (= res!314308 (valid!677 cacheUp!502))))

(declare-fun b!693786 () Bool)

(declare-fun tp!209707 () Bool)

(declare-fun inv!9659 (String!9496) Bool)

(declare-fun inv!9662 (TokenValueInjection!2844) Bool)

(assert (=> b!693786 (= e!436766 (and tp!209707 (inv!9659 (tag!1772 (h!12946 rules!1486))) (inv!9662 (transformation!1510 (h!12946 rules!1486))) e!436774))))

(declare-fun b!693787 () Bool)

(declare-fun e!436747 () Bool)

(declare-fun tp!209706 () Bool)

(declare-fun mapRes!3173 () Bool)

(assert (=> b!693787 (= e!436747 (and tp!209706 mapRes!3173))))

(declare-fun condMapEmpty!3175 () Bool)

(declare-fun mapDefault!3175 () List!7562)

(assert (=> b!693787 (= condMapEmpty!3175 (= (arr!1329 (_values!1068 (v!17701 (underlying!1761 (v!17702 (underlying!1762 (cache!1148 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7562)) mapDefault!3175)))))

(declare-fun e!436739 () Bool)

(assert (=> b!693788 (= e!436739 (and e!436746 tp!209700))))

(declare-fun b!693789 () Bool)

(declare-fun e!436765 () Bool)

(assert (=> b!693789 (= e!436759 e!436765)))

(declare-fun b!693790 () Bool)

(declare-fun e!436770 () Bool)

(declare-fun totalInput!378 () BalanceConc!5328)

(declare-fun tp!209713 () Bool)

(assert (=> b!693790 (= e!436770 (and (inv!9661 (c!121766 totalInput!378)) tp!209713))))

(declare-fun b!693791 () Bool)

(assert (=> b!693791 (= e!436772 e!436752)))

(declare-fun b!693792 () Bool)

(declare-fun res!314302 () Bool)

(assert (=> b!693792 (=> (not res!314302) (not e!436750))))

(declare-fun lt!285225 () tuple2!7966)

(declare-fun lt!285217 () tuple2!7966)

(assert (=> b!693792 (= res!314302 (= (list!3161 (_2!4406 lt!285225)) (list!3161 (_2!4406 lt!285217))))))

(declare-fun b!693793 () Bool)

(declare-fun lt!285227 () MutLongMap!791)

(assert (=> b!693793 (= e!436758 (and e!436751 ((_ is LongMap!791) lt!285227)))))

(assert (=> b!693793 (= lt!285227 (v!17706 (underlying!1766 (cache!1150 cacheFindLongestMatch!74))))))

(declare-fun mapNonEmpty!3174 () Bool)

(declare-fun tp!209688 () Bool)

(declare-fun tp!209699 () Bool)

(assert (=> mapNonEmpty!3174 (= mapRes!3173 (and tp!209688 tp!209699))))

(declare-fun mapValue!3174 () List!7562)

(declare-fun mapRest!3175 () (Array (_ BitVec 32) List!7562))

(declare-fun mapKey!3173 () (_ BitVec 32))

(assert (=> mapNonEmpty!3174 (= (arr!1329 (_values!1068 (v!17701 (underlying!1761 (v!17702 (underlying!1762 (cache!1148 cacheDown!515))))))) (store mapRest!3175 mapKey!3173 mapValue!3174))))

(declare-fun e!436748 () Bool)

(declare-fun b!693794 () Bool)

(declare-fun inv!9663 (BalanceConc!5328) Bool)

(assert (=> b!693794 (= e!436748 (and e!436768 (inv!9663 (totalInput!1809 cacheFindLongestMatch!74)) e!436769))))

(declare-fun mapIsEmpty!3173 () Bool)

(assert (=> mapIsEmpty!3173 mapRes!3173))

(declare-fun res!314305 () Bool)

(assert (=> start!66296 (=> (not res!314305) (not e!436764))))

(assert (=> start!66296 (= res!314305 ((_ is Lexer!1321) thiss!12529))))

(assert (=> start!66296 e!436764))

(declare-fun inv!9664 (BalanceConc!5330) Bool)

(assert (=> start!66296 (and (inv!9664 acc!372) e!436760)))

(assert (=> start!66296 (and (inv!9663 treated!50) e!436763)))

(assert (=> start!66296 (and (inv!9663 totalInput!378) e!436770)))

(declare-fun input!870 () BalanceConc!5328)

(declare-fun e!436745 () Bool)

(assert (=> start!66296 (and (inv!9663 input!870) e!436745)))

(assert (=> start!66296 e!436754))

(assert (=> start!66296 true))

(declare-fun e!436761 () Bool)

(declare-fun inv!9665 (CacheUp!394) Bool)

(assert (=> start!66296 (and (inv!9665 cacheUp!502) e!436761)))

(declare-fun inv!9666 (CacheDown!400) Bool)

(assert (=> start!66296 (and (inv!9666 cacheDown!515) e!436753)))

(declare-fun inv!9667 (CacheFindLongestMatch!54) Bool)

(assert (=> start!66296 (and (inv!9667 cacheFindLongestMatch!74) e!436748)))

(declare-fun mapIsEmpty!3174 () Bool)

(assert (=> mapIsEmpty!3174 mapRes!3175))

(declare-fun b!693795 () Bool)

(assert (=> b!693795 (= e!436775 e!436750)))

(declare-fun res!314309 () Bool)

(assert (=> b!693795 (=> (not res!314309) (not e!436750))))

(declare-fun ++!1966 (BalanceConc!5330 BalanceConc!5330) BalanceConc!5330)

(assert (=> b!693795 (= res!314309 (= (list!3160 (_1!4406 lt!285225)) (list!3160 (++!1966 acc!372 (_1!4406 lt!285217)))))))

(assert (=> b!693795 (= lt!285217 (lexRec!165 thiss!12529 rules!1486 input!870))))

(assert (=> b!693795 (= lt!285225 (lexRec!165 thiss!12529 rules!1486 totalInput!378))))

(declare-fun e!436767 () Bool)

(assert (=> b!693796 (= e!436742 (and e!436767 tp!209697))))

(declare-fun b!693797 () Bool)

(assert (=> b!693797 (= e!436764 e!436773)))

(declare-fun res!314303 () Bool)

(assert (=> b!693797 (=> (not res!314303) (not e!436773))))

(declare-fun lt!285219 () List!7558)

(declare-fun lt!285221 () List!7558)

(assert (=> b!693797 (= res!314303 (= lt!285219 lt!285221))))

(declare-fun lt!285222 () List!7558)

(declare-fun lt!285218 () List!7558)

(declare-fun ++!1967 (List!7558 List!7558) List!7558)

(assert (=> b!693797 (= lt!285221 (++!1967 lt!285222 lt!285218))))

(assert (=> b!693797 (= lt!285219 (list!3161 totalInput!378))))

(assert (=> b!693797 (= lt!285218 (list!3161 input!870))))

(assert (=> b!693797 (= lt!285222 (list!3161 treated!50))))

(declare-fun b!693798 () Bool)

(declare-fun res!314306 () Bool)

(assert (=> b!693798 (=> (not res!314306) (not e!436750))))

(assert (=> b!693798 (= res!314306 (= (totalInput!1809 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun mapIsEmpty!3175 () Bool)

(assert (=> mapIsEmpty!3175 mapRes!3174))

(declare-fun e!436776 () Bool)

(declare-fun tp!209692 () Bool)

(declare-fun tp!209691 () Bool)

(declare-fun array_inv!973 (array!2941) Bool)

(declare-fun array_inv!974 (array!2943) Bool)

(assert (=> b!693799 (= e!436776 (and tp!209704 tp!209692 tp!209691 (array_inv!973 (_keys!1083 (v!17701 (underlying!1761 (v!17702 (underlying!1762 (cache!1148 cacheDown!515))))))) (array_inv!974 (_values!1068 (v!17701 (underlying!1761 (v!17702 (underlying!1762 (cache!1148 cacheDown!515))))))) e!436747))))

(declare-fun tp!209690 () Bool)

(declare-fun tp!209716 () Bool)

(declare-fun array_inv!975 (array!2947) Bool)

(assert (=> b!693800 (= e!436765 (and tp!209693 tp!209690 tp!209716 (array_inv!973 (_keys!1085 (v!17705 (underlying!1765 (v!17706 (underlying!1766 (cache!1150 cacheFindLongestMatch!74))))))) (array_inv!975 (_values!1070 (v!17705 (underlying!1765 (v!17706 (underlying!1766 (cache!1150 cacheFindLongestMatch!74))))))) e!436740))))

(declare-fun b!693801 () Bool)

(declare-fun e!436757 () Bool)

(declare-fun lt!285224 () MutLongMap!789)

(assert (=> b!693801 (= e!436767 (and e!436757 ((_ is LongMap!789) lt!285224)))))

(assert (=> b!693801 (= lt!285224 (v!17702 (underlying!1762 (cache!1148 cacheDown!515))))))

(declare-fun b!693802 () Bool)

(declare-fun res!314300 () Bool)

(assert (=> b!693802 (=> (not res!314300) (not e!436750))))

(declare-fun valid!678 (CacheFindLongestMatch!54) Bool)

(assert (=> b!693802 (= res!314300 (valid!678 cacheFindLongestMatch!74))))

(declare-fun b!693803 () Bool)

(assert (=> b!693803 (= e!436761 e!436739)))

(declare-fun b!693804 () Bool)

(declare-fun e!436762 () Bool)

(assert (=> b!693804 (= e!436750 (not e!436762))))

(declare-fun res!314299 () Bool)

(assert (=> b!693804 (=> res!314299 e!436762)))

(declare-fun isSuffix!132 (List!7558 List!7558) Bool)

(assert (=> b!693804 (= res!314299 (not (isSuffix!132 lt!285218 lt!285219)))))

(assert (=> b!693804 (isSuffix!132 lt!285218 lt!285221)))

(declare-datatypes ((Unit!12664 0))(
  ( (Unit!12665) )
))
(declare-fun lt!285216 () Unit!12664)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!132 (List!7558 List!7558) Unit!12664)

(assert (=> b!693804 (= lt!285216 (lemmaConcatTwoListThenFSndIsSuffix!132 lt!285222 lt!285218))))

(declare-fun mapNonEmpty!3175 () Bool)

(declare-fun tp!209687 () Bool)

(declare-fun tp!209710 () Bool)

(assert (=> mapNonEmpty!3175 (= mapRes!3174 (and tp!209687 tp!209710))))

(declare-fun mapValue!3175 () List!7563)

(declare-fun mapKey!3175 () (_ BitVec 32))

(declare-fun mapRest!3173 () (Array (_ BitVec 32) List!7563))

(assert (=> mapNonEmpty!3175 (= (arr!1330 (_values!1069 (v!17703 (underlying!1763 (v!17704 (underlying!1764 (cache!1149 cacheUp!502))))))) (store mapRest!3173 mapKey!3175 mapValue!3175))))

(declare-fun b!693805 () Bool)

(declare-fun res!314311 () Bool)

(assert (=> b!693805 (=> (not res!314311) (not e!436764))))

(declare-fun isEmpty!4891 (List!7559) Bool)

(assert (=> b!693805 (= res!314311 (not (isEmpty!4891 rules!1486)))))

(declare-fun b!693806 () Bool)

(declare-fun e!436755 () Bool)

(assert (=> b!693806 (= e!436757 e!436755)))

(declare-fun b!693807 () Bool)

(assert (=> b!693807 (= e!436755 e!436776)))

(declare-fun tp!209705 () Bool)

(declare-fun tp!209696 () Bool)

(declare-fun array_inv!976 (array!2945) Bool)

(assert (=> b!693808 (= e!436756 (and tp!209695 tp!209705 tp!209696 (array_inv!973 (_keys!1084 (v!17703 (underlying!1763 (v!17704 (underlying!1764 (cache!1149 cacheUp!502))))))) (array_inv!976 (_values!1069 (v!17703 (underlying!1763 (v!17704 (underlying!1764 (cache!1149 cacheUp!502))))))) e!436743))))

(declare-fun b!693809 () Bool)

(assert (=> b!693809 (= e!436762 true)))

(declare-datatypes ((tuple2!7978 0))(
  ( (tuple2!7979 (_1!4413 Token!2720) (_2!4413 BalanceConc!5328)) )
))
(declare-datatypes ((Option!1710 0))(
  ( (None!1709) (Some!1709 (v!17707 tuple2!7978)) )
))
(declare-datatypes ((tuple4!118 0))(
  ( (tuple4!119 (_1!4414 Option!1710) (_2!4414 CacheUp!394) (_3!424 CacheDown!400) (_4!59 CacheFindLongestMatch!54)) )
))
(declare-fun lt!285226 () tuple4!118)

(declare-fun maxPrefixZipperSequenceV2Mem!3 (LexerInterface!1323 List!7559 BalanceConc!5328 BalanceConc!5328 CacheUp!394 CacheDown!400 CacheFindLongestMatch!54) tuple4!118)

(assert (=> b!693809 (= lt!285226 (maxPrefixZipperSequenceV2Mem!3 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!693810 () Bool)

(declare-fun tp!209708 () Bool)

(assert (=> b!693810 (= e!436745 (and (inv!9661 (c!121766 input!870)) tp!209708))))

(assert (= (and start!66296 res!314305) b!693805))

(assert (= (and b!693805 res!314311) b!693769))

(assert (= (and b!693769 res!314307) b!693797))

(assert (= (and b!693797 res!314303) b!693771))

(assert (= (and b!693771 res!314310) b!693775))

(assert (= (and b!693775 res!314301) b!693795))

(assert (= (and b!693795 res!314309) b!693792))

(assert (= (and b!693792 res!314302) b!693785))

(assert (= (and b!693785 res!314308) b!693772))

(assert (= (and b!693772 res!314304) b!693802))

(assert (= (and b!693802 res!314300) b!693798))

(assert (= (and b!693798 res!314306) b!693804))

(assert (= (and b!693804 (not res!314299)) b!693809))

(assert (= start!66296 b!693770))

(assert (= start!66296 b!693774))

(assert (= start!66296 b!693790))

(assert (= start!66296 b!693810))

(assert (= b!693786 b!693778))

(assert (= b!693781 b!693786))

(assert (= (and start!66296 ((_ is Cons!7545) rules!1486)) b!693781))

(assert (= (and b!693780 condMapEmpty!3173) mapIsEmpty!3175))

(assert (= (and b!693780 (not condMapEmpty!3173)) mapNonEmpty!3175))

(assert (= b!693808 b!693780))

(assert (= b!693784 b!693808))

(assert (= b!693791 b!693784))

(assert (= (and b!693773 ((_ is LongMap!790) (v!17704 (underlying!1764 (cache!1149 cacheUp!502))))) b!693791))

(assert (= b!693788 b!693773))

(assert (= (and b!693803 ((_ is HashMap!762) (cache!1149 cacheUp!502))) b!693788))

(assert (= start!66296 b!693803))

(assert (= (and b!693787 condMapEmpty!3175) mapIsEmpty!3173))

(assert (= (and b!693787 (not condMapEmpty!3175)) mapNonEmpty!3174))

(assert (= b!693799 b!693787))

(assert (= b!693807 b!693799))

(assert (= b!693806 b!693807))

(assert (= (and b!693801 ((_ is LongMap!789) (v!17702 (underlying!1762 (cache!1148 cacheDown!515))))) b!693806))

(assert (= b!693796 b!693801))

(assert (= (and b!693783 ((_ is HashMap!761) (cache!1148 cacheDown!515))) b!693796))

(assert (= start!66296 b!693783))

(assert (= (and b!693779 condMapEmpty!3174) mapIsEmpty!3174))

(assert (= (and b!693779 (not condMapEmpty!3174)) mapNonEmpty!3173))

(assert (= b!693800 b!693779))

(assert (= b!693789 b!693800))

(assert (= b!693777 b!693789))

(assert (= (and b!693793 ((_ is LongMap!791) (v!17706 (underlying!1766 (cache!1150 cacheFindLongestMatch!74))))) b!693777))

(assert (= b!693782 b!693793))

(assert (= (and b!693794 ((_ is HashMap!763) (cache!1150 cacheFindLongestMatch!74))) b!693782))

(assert (= b!693794 b!693776))

(assert (= start!66296 b!693794))

(declare-fun m!949865 () Bool)

(assert (=> b!693790 m!949865))

(declare-fun m!949867 () Bool)

(assert (=> b!693771 m!949867))

(declare-fun m!949869 () Bool)

(assert (=> b!693771 m!949869))

(declare-fun m!949871 () Bool)

(assert (=> b!693771 m!949871))

(declare-fun m!949873 () Bool)

(assert (=> b!693792 m!949873))

(declare-fun m!949875 () Bool)

(assert (=> b!693792 m!949875))

(declare-fun m!949877 () Bool)

(assert (=> b!693802 m!949877))

(declare-fun m!949879 () Bool)

(assert (=> b!693786 m!949879))

(declare-fun m!949881 () Bool)

(assert (=> b!693786 m!949881))

(declare-fun m!949883 () Bool)

(assert (=> b!693774 m!949883))

(declare-fun m!949885 () Bool)

(assert (=> b!693808 m!949885))

(declare-fun m!949887 () Bool)

(assert (=> b!693808 m!949887))

(declare-fun m!949889 () Bool)

(assert (=> b!693799 m!949889))

(declare-fun m!949891 () Bool)

(assert (=> b!693799 m!949891))

(declare-fun m!949893 () Bool)

(assert (=> mapNonEmpty!3173 m!949893))

(declare-fun m!949895 () Bool)

(assert (=> b!693772 m!949895))

(declare-fun m!949897 () Bool)

(assert (=> b!693775 m!949897))

(assert (=> b!693775 m!949897))

(declare-fun m!949899 () Bool)

(assert (=> b!693775 m!949899))

(declare-fun m!949901 () Bool)

(assert (=> b!693769 m!949901))

(declare-fun m!949903 () Bool)

(assert (=> b!693794 m!949903))

(declare-fun m!949905 () Bool)

(assert (=> b!693797 m!949905))

(declare-fun m!949907 () Bool)

(assert (=> b!693797 m!949907))

(declare-fun m!949909 () Bool)

(assert (=> b!693797 m!949909))

(declare-fun m!949911 () Bool)

(assert (=> b!693797 m!949911))

(declare-fun m!949913 () Bool)

(assert (=> start!66296 m!949913))

(declare-fun m!949915 () Bool)

(assert (=> start!66296 m!949915))

(declare-fun m!949917 () Bool)

(assert (=> start!66296 m!949917))

(declare-fun m!949919 () Bool)

(assert (=> start!66296 m!949919))

(declare-fun m!949921 () Bool)

(assert (=> start!66296 m!949921))

(declare-fun m!949923 () Bool)

(assert (=> start!66296 m!949923))

(declare-fun m!949925 () Bool)

(assert (=> start!66296 m!949925))

(declare-fun m!949927 () Bool)

(assert (=> b!693800 m!949927))

(declare-fun m!949929 () Bool)

(assert (=> b!693800 m!949929))

(declare-fun m!949931 () Bool)

(assert (=> b!693776 m!949931))

(declare-fun m!949933 () Bool)

(assert (=> b!693770 m!949933))

(declare-fun m!949935 () Bool)

(assert (=> b!693795 m!949935))

(declare-fun m!949937 () Bool)

(assert (=> b!693795 m!949937))

(declare-fun m!949939 () Bool)

(assert (=> b!693795 m!949939))

(declare-fun m!949941 () Bool)

(assert (=> b!693795 m!949941))

(assert (=> b!693795 m!949935))

(declare-fun m!949943 () Bool)

(assert (=> b!693795 m!949943))

(declare-fun m!949945 () Bool)

(assert (=> b!693785 m!949945))

(declare-fun m!949947 () Bool)

(assert (=> b!693804 m!949947))

(declare-fun m!949949 () Bool)

(assert (=> b!693804 m!949949))

(declare-fun m!949951 () Bool)

(assert (=> b!693804 m!949951))

(declare-fun m!949953 () Bool)

(assert (=> b!693809 m!949953))

(declare-fun m!949955 () Bool)

(assert (=> mapNonEmpty!3174 m!949955))

(declare-fun m!949957 () Bool)

(assert (=> mapNonEmpty!3175 m!949957))

(declare-fun m!949959 () Bool)

(assert (=> b!693805 m!949959))

(declare-fun m!949961 () Bool)

(assert (=> b!693810 m!949961))

(check-sat b_and!63541 (not start!66296) (not b!693770) (not b!693787) (not b_next!19823) (not b!693792) (not b!693780) (not b_next!19821) (not b!693775) (not mapNonEmpty!3175) (not b_next!19809) (not b_next!19817) b_and!63539 (not b_next!19815) (not b!693774) (not b!693805) b_and!63543 (not b!693809) (not b!693776) (not b!693800) (not b!693781) b_and!63553 (not mapNonEmpty!3174) (not b!693779) (not b!693795) (not b!693802) (not b!693804) (not b!693771) (not b!693808) b_and!63549 (not mapNonEmpty!3173) (not b!693810) b_and!63545 (not b_next!19813) (not b!693785) (not b!693797) (not b_next!19819) (not b!693790) (not b!693786) (not b!693794) (not b!693799) b_and!63551 (not b!693769) (not b!693772) (not b_next!19811) b_and!63547)
(check-sat b_and!63543 b_and!63553 b_and!63541 (not b_next!19823) b_and!63549 (not b_next!19819) (not b_next!19821) b_and!63551 (not b_next!19809) (not b_next!19817) b_and!63539 (not b_next!19815) b_and!63545 (not b_next!19813) (not b_next!19811) b_and!63547)
