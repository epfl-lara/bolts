; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66300 () Bool)

(assert start!66300)

(declare-fun b!694055 () Bool)

(declare-fun b_free!19777 () Bool)

(declare-fun b_next!19841 () Bool)

(assert (=> b!694055 (= b_free!19777 (not b_next!19841))))

(declare-fun tp!209879 () Bool)

(declare-fun b_and!63571 () Bool)

(assert (=> b!694055 (= tp!209879 b_and!63571)))

(declare-fun b!694052 () Bool)

(declare-fun b_free!19779 () Bool)

(declare-fun b_next!19843 () Bool)

(assert (=> b!694052 (= b_free!19779 (not b_next!19843))))

(declare-fun tp!209889 () Bool)

(declare-fun b_and!63573 () Bool)

(assert (=> b!694052 (= tp!209889 b_and!63573)))

(declare-fun b_free!19781 () Bool)

(declare-fun b_next!19845 () Bool)

(assert (=> b!694052 (= b_free!19781 (not b_next!19845))))

(declare-fun tp!209880 () Bool)

(declare-fun b_and!63575 () Bool)

(assert (=> b!694052 (= tp!209880 b_and!63575)))

(declare-fun b!694054 () Bool)

(declare-fun b_free!19783 () Bool)

(declare-fun b_next!19847 () Bool)

(assert (=> b!694054 (= b_free!19783 (not b_next!19847))))

(declare-fun tp!209892 () Bool)

(declare-fun b_and!63577 () Bool)

(assert (=> b!694054 (= tp!209892 b_and!63577)))

(declare-fun b!694044 () Bool)

(declare-fun b_free!19785 () Bool)

(declare-fun b_next!19849 () Bool)

(assert (=> b!694044 (= b_free!19785 (not b_next!19849))))

(declare-fun tp!209895 () Bool)

(declare-fun b_and!63579 () Bool)

(assert (=> b!694044 (= tp!209895 b_and!63579)))

(declare-fun b!694029 () Bool)

(declare-fun b_free!19787 () Bool)

(declare-fun b_next!19851 () Bool)

(assert (=> b!694029 (= b_free!19787 (not b_next!19851))))

(declare-fun tp!209867 () Bool)

(declare-fun b_and!63581 () Bool)

(assert (=> b!694029 (= tp!209867 b_and!63581)))

(declare-fun b!694038 () Bool)

(declare-fun b_free!19789 () Bool)

(declare-fun b_next!19853 () Bool)

(assert (=> b!694038 (= b_free!19789 (not b_next!19853))))

(declare-fun tp!209896 () Bool)

(declare-fun b_and!63583 () Bool)

(assert (=> b!694038 (= tp!209896 b_and!63583)))

(declare-fun b!694043 () Bool)

(declare-fun b_free!19791 () Bool)

(declare-fun b_next!19855 () Bool)

(assert (=> b!694043 (= b_free!19791 (not b_next!19855))))

(declare-fun tp!209872 () Bool)

(declare-fun b_and!63585 () Bool)

(assert (=> b!694043 (= tp!209872 b_and!63585)))

(declare-fun res!314394 () Bool)

(declare-fun e!437003 () Bool)

(assert (=> start!66300 (=> (not res!314394) (not e!437003))))

(declare-datatypes ((LexerInterface!1325 0))(
  ( (LexerInterfaceExt!1322 (__x!5490 Int)) (Lexer!1323) )
))
(declare-fun thiss!12529 () LexerInterface!1325)

(get-info :version)

(assert (=> start!66300 (= res!314394 ((_ is Lexer!1323) thiss!12529))))

(assert (=> start!66300 e!437003))

(declare-datatypes ((List!7572 0))(
  ( (Nil!7558) (Cons!7558 (h!12959 (_ BitVec 16)) (t!87395 List!7572)) )
))
(declare-datatypes ((TokenValue!1556 0))(
  ( (FloatLiteralValue!3112 (text!11337 List!7572)) (TokenValueExt!1555 (__x!5491 Int)) (Broken!7780 (value!48731 List!7572)) (Object!1569) (End!1556) (Def!1556) (Underscore!1556) (Match!1556) (Else!1556) (Error!1556) (Case!1556) (If!1556) (Extends!1556) (Abstract!1556) (Class!1556) (Val!1556) (DelimiterValue!3112 (del!1616 List!7572)) (KeywordValue!1562 (value!48732 List!7572)) (CommentValue!3112 (value!48733 List!7572)) (WhitespaceValue!3112 (value!48734 List!7572)) (IndentationValue!1556 (value!48735 List!7572)) (String!9505) (Int32!1556) (Broken!7781 (value!48736 List!7572)) (Boolean!1557) (Unit!12669) (OperatorValue!1559 (op!1616 List!7572)) (IdentifierValue!3112 (value!48737 List!7572)) (IdentifierValue!3113 (value!48738 List!7572)) (WhitespaceValue!3113 (value!48739 List!7572)) (True!3112) (False!3112) (Broken!7782 (value!48740 List!7572)) (Broken!7783 (value!48741 List!7572)) (True!3113) (RightBrace!1556) (RightBracket!1556) (Colon!1556) (Null!1556) (Comma!1556) (LeftBracket!1556) (False!3113) (LeftBrace!1556) (ImaginaryLiteralValue!1556 (text!11338 List!7572)) (StringLiteralValue!4668 (value!48742 List!7572)) (EOFValue!1556 (value!48743 List!7572)) (IdentValue!1556 (value!48744 List!7572)) (DelimiterValue!3113 (value!48745 List!7572)) (DedentValue!1556 (value!48746 List!7572)) (NewLineValue!1556 (value!48747 List!7572)) (IntegerValue!4668 (value!48748 (_ BitVec 32)) (text!11339 List!7572)) (IntegerValue!4669 (value!48749 Int) (text!11340 List!7572)) (Times!1556) (Or!1556) (Equal!1556) (Minus!1556) (Broken!7784 (value!48750 List!7572)) (And!1556) (Div!1556) (LessEqual!1556) (Mod!1556) (Concat!3407) (Not!1556) (Plus!1556) (SpaceValue!1556 (value!48751 List!7572)) (IntegerValue!4670 (value!48752 Int) (text!11341 List!7572)) (StringLiteralValue!4669 (text!11342 List!7572)) (FloatLiteralValue!3113 (text!11343 List!7572)) (BytesLiteralValue!1556 (value!48753 List!7572)) (CommentValue!3113 (value!48754 List!7572)) (StringLiteralValue!4670 (value!48755 List!7572)) (ErrorTokenValue!1556 (msg!1617 List!7572)) )
))
(declare-datatypes ((C!4304 0))(
  ( (C!4305 (val!2382 Int)) )
))
(declare-datatypes ((Regex!1851 0))(
  ( (ElementMatch!1851 (c!121772 C!4304)) (Concat!3408 (regOne!4214 Regex!1851) (regTwo!4214 Regex!1851)) (EmptyExpr!1851) (Star!1851 (reg!2180 Regex!1851)) (EmptyLang!1851) (Union!1851 (regOne!4215 Regex!1851) (regTwo!4215 Regex!1851)) )
))
(declare-datatypes ((String!9506 0))(
  ( (String!9507 (value!48756 String)) )
))
(declare-datatypes ((List!7573 0))(
  ( (Nil!7559) (Cons!7559 (h!12960 C!4304) (t!87396 List!7573)) )
))
(declare-datatypes ((IArray!5325 0))(
  ( (IArray!5326 (innerList!2720 List!7573)) )
))
(declare-datatypes ((Conc!2662 0))(
  ( (Node!2662 (left!6022 Conc!2662) (right!6352 Conc!2662) (csize!5554 Int) (cheight!2873 Int)) (Leaf!3941 (xs!5315 IArray!5325) (csize!5555 Int)) (Empty!2662) )
))
(declare-datatypes ((BalanceConc!5336 0))(
  ( (BalanceConc!5337 (c!121773 Conc!2662)) )
))
(declare-datatypes ((TokenValueInjection!2848 0))(
  ( (TokenValueInjection!2849 (toValue!2476 Int) (toChars!2335 Int)) )
))
(declare-datatypes ((Rule!2824 0))(
  ( (Rule!2825 (regex!1512 Regex!1851) (tag!1774 String!9506) (isSeparator!1512 Bool) (transformation!1512 TokenValueInjection!2848)) )
))
(declare-datatypes ((Token!2724 0))(
  ( (Token!2725 (value!48757 TokenValue!1556) (rule!2551 Rule!2824) (size!6174 Int) (originalCharacters!1787 List!7573)) )
))
(declare-datatypes ((List!7574 0))(
  ( (Nil!7560) (Cons!7560 (h!12961 Token!2724) (t!87397 List!7574)) )
))
(declare-datatypes ((IArray!5327 0))(
  ( (IArray!5328 (innerList!2721 List!7574)) )
))
(declare-datatypes ((Conc!2663 0))(
  ( (Node!2663 (left!6023 Conc!2663) (right!6353 Conc!2663) (csize!5556 Int) (cheight!2874 Int)) (Leaf!3942 (xs!5316 IArray!5327) (csize!5557 Int)) (Empty!2663) )
))
(declare-datatypes ((BalanceConc!5338 0))(
  ( (BalanceConc!5339 (c!121774 Conc!2663)) )
))
(declare-fun acc!372 () BalanceConc!5338)

(declare-fun e!437005 () Bool)

(declare-fun inv!9672 (BalanceConc!5338) Bool)

(assert (=> start!66300 (and (inv!9672 acc!372) e!437005)))

(declare-fun treated!50 () BalanceConc!5336)

(declare-fun e!436994 () Bool)

(declare-fun inv!9673 (BalanceConc!5336) Bool)

(assert (=> start!66300 (and (inv!9673 treated!50) e!436994)))

(declare-fun totalInput!378 () BalanceConc!5336)

(declare-fun e!436981 () Bool)

(assert (=> start!66300 (and (inv!9673 totalInput!378) e!436981)))

(declare-fun input!870 () BalanceConc!5336)

(declare-fun e!436986 () Bool)

(assert (=> start!66300 (and (inv!9673 input!870) e!436986)))

(declare-fun e!437000 () Bool)

(assert (=> start!66300 e!437000))

(assert (=> start!66300 true))

(declare-datatypes ((array!2955 0))(
  ( (array!2956 (arr!1335 (Array (_ BitVec 32) (_ BitVec 64))) (size!6175 (_ BitVec 32))) )
))
(declare-datatypes ((List!7575 0))(
  ( (Nil!7561) (Cons!7561 (h!12962 Regex!1851) (t!87398 List!7575)) )
))
(declare-datatypes ((Context!506 0))(
  ( (Context!507 (exprs!753 List!7575)) )
))
(declare-datatypes ((tuple2!7990 0))(
  ( (tuple2!7991 (_1!4420 Context!506) (_2!4420 C!4304)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7992 0))(
  ( (tuple2!7993 (_1!4421 tuple2!7990) (_2!4421 (InoxSet Context!506))) )
))
(declare-datatypes ((List!7576 0))(
  ( (Nil!7562) (Cons!7562 (h!12963 tuple2!7992) (t!87399 List!7576)) )
))
(declare-datatypes ((array!2957 0))(
  ( (array!2958 (arr!1336 (Array (_ BitVec 32) List!7576)) (size!6176 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1588 0))(
  ( (LongMapFixedSize!1589 (defaultEntry!1150 Int) (mask!2604 (_ BitVec 32)) (extraKeys!1041 (_ BitVec 32)) (zeroValue!1051 List!7576) (minValue!1051 List!7576) (_size!1697 (_ BitVec 32)) (_keys!1088 array!2955) (_values!1073 array!2957) (_vacant!855 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3117 0))(
  ( (Cell!3118 (v!17712 LongMapFixedSize!1588)) )
))
(declare-datatypes ((MutLongMap!794 0))(
  ( (LongMap!794 (underlying!1771 Cell!3117)) (MutLongMapExt!793 (__x!5492 Int)) )
))
(declare-datatypes ((Hashable!766 0))(
  ( (HashableExt!765 (__x!5493 Int)) )
))
(declare-datatypes ((Cell!3119 0))(
  ( (Cell!3120 (v!17713 MutLongMap!794)) )
))
(declare-datatypes ((MutableMap!766 0))(
  ( (MutableMapExt!765 (__x!5494 Int)) (HashMap!766 (underlying!1772 Cell!3119) (hashF!2674 Hashable!766) (_size!1698 (_ BitVec 32)) (defaultValue!917 Int)) )
))
(declare-datatypes ((CacheUp!398 0))(
  ( (CacheUp!399 (cache!1153 MutableMap!766)) )
))
(declare-fun cacheUp!502 () CacheUp!398)

(declare-fun e!436999 () Bool)

(declare-fun inv!9674 (CacheUp!398) Bool)

(assert (=> start!66300 (and (inv!9674 cacheUp!502) e!436999)))

(declare-datatypes ((tuple3!730 0))(
  ( (tuple3!731 (_1!4422 Regex!1851) (_2!4422 Context!506) (_3!425 C!4304)) )
))
(declare-datatypes ((tuple2!7994 0))(
  ( (tuple2!7995 (_1!4423 tuple3!730) (_2!4423 (InoxSet Context!506))) )
))
(declare-datatypes ((List!7577 0))(
  ( (Nil!7563) (Cons!7563 (h!12964 tuple2!7994) (t!87400 List!7577)) )
))
(declare-datatypes ((array!2959 0))(
  ( (array!2960 (arr!1337 (Array (_ BitVec 32) List!7577)) (size!6177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1590 0))(
  ( (LongMapFixedSize!1591 (defaultEntry!1151 Int) (mask!2605 (_ BitVec 32)) (extraKeys!1042 (_ BitVec 32)) (zeroValue!1052 List!7577) (minValue!1052 List!7577) (_size!1699 (_ BitVec 32)) (_keys!1089 array!2955) (_values!1074 array!2959) (_vacant!856 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3121 0))(
  ( (Cell!3122 (v!17714 LongMapFixedSize!1590)) )
))
(declare-datatypes ((MutLongMap!795 0))(
  ( (LongMap!795 (underlying!1773 Cell!3121)) (MutLongMapExt!794 (__x!5495 Int)) )
))
(declare-datatypes ((Cell!3123 0))(
  ( (Cell!3124 (v!17715 MutLongMap!795)) )
))
(declare-datatypes ((Hashable!767 0))(
  ( (HashableExt!766 (__x!5496 Int)) )
))
(declare-datatypes ((MutableMap!767 0))(
  ( (MutableMapExt!766 (__x!5497 Int)) (HashMap!767 (underlying!1774 Cell!3123) (hashF!2675 Hashable!767) (_size!1700 (_ BitVec 32)) (defaultValue!918 Int)) )
))
(declare-datatypes ((CacheDown!402 0))(
  ( (CacheDown!403 (cache!1154 MutableMap!767)) )
))
(declare-fun cacheDown!515 () CacheDown!402)

(declare-fun e!436987 () Bool)

(declare-fun inv!9675 (CacheDown!402) Bool)

(assert (=> start!66300 (and (inv!9675 cacheDown!515) e!436987)))

(declare-datatypes ((Hashable!768 0))(
  ( (HashableExt!767 (__x!5498 Int)) )
))
(declare-datatypes ((tuple2!7996 0))(
  ( (tuple2!7997 (_1!4424 (InoxSet Context!506)) (_2!4424 Int)) )
))
(declare-datatypes ((tuple2!7998 0))(
  ( (tuple2!7999 (_1!4425 tuple2!7996) (_2!4425 Int)) )
))
(declare-datatypes ((List!7578 0))(
  ( (Nil!7564) (Cons!7564 (h!12965 tuple2!7998) (t!87401 List!7578)) )
))
(declare-datatypes ((array!2961 0))(
  ( (array!2962 (arr!1338 (Array (_ BitVec 32) List!7578)) (size!6178 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1592 0))(
  ( (LongMapFixedSize!1593 (defaultEntry!1152 Int) (mask!2606 (_ BitVec 32)) (extraKeys!1043 (_ BitVec 32)) (zeroValue!1053 List!7578) (minValue!1053 List!7578) (_size!1701 (_ BitVec 32)) (_keys!1090 array!2955) (_values!1075 array!2961) (_vacant!857 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3125 0))(
  ( (Cell!3126 (v!17716 LongMapFixedSize!1592)) )
))
(declare-datatypes ((MutLongMap!796 0))(
  ( (LongMap!796 (underlying!1775 Cell!3125)) (MutLongMapExt!795 (__x!5499 Int)) )
))
(declare-datatypes ((Cell!3127 0))(
  ( (Cell!3128 (v!17717 MutLongMap!796)) )
))
(declare-datatypes ((MutableMap!768 0))(
  ( (MutableMapExt!767 (__x!5500 Int)) (HashMap!768 (underlying!1776 Cell!3127) (hashF!2676 Hashable!768) (_size!1702 (_ BitVec 32)) (defaultValue!919 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!58 0))(
  ( (CacheFindLongestMatch!59 (cache!1155 MutableMap!768) (totalInput!1811 BalanceConc!5336)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!58)

(declare-fun e!436983 () Bool)

(declare-fun inv!9676 (CacheFindLongestMatch!58) Bool)

(assert (=> start!66300 (and (inv!9676 cacheFindLongestMatch!74) e!436983)))

(declare-fun b!694026 () Bool)

(declare-fun res!314395 () Bool)

(declare-fun e!436995 () Bool)

(assert (=> b!694026 (=> (not res!314395) (not e!436995))))

(declare-fun valid!679 (CacheFindLongestMatch!58) Bool)

(assert (=> b!694026 (= res!314395 (valid!679 cacheFindLongestMatch!74))))

(declare-fun b!694027 () Bool)

(declare-fun e!436979 () Bool)

(assert (=> b!694027 (= e!436979 true)))

(declare-datatypes ((tuple2!8000 0))(
  ( (tuple2!8001 (_1!4426 Token!2724) (_2!4426 BalanceConc!5336)) )
))
(declare-datatypes ((Option!1711 0))(
  ( (None!1710) (Some!1710 (v!17718 tuple2!8000)) )
))
(declare-datatypes ((tuple4!120 0))(
  ( (tuple4!121 (_1!4427 Option!1711) (_2!4427 CacheUp!398) (_3!426 CacheDown!402) (_4!60 CacheFindLongestMatch!58)) )
))
(declare-fun lt!285301 () tuple4!120)

(declare-datatypes ((List!7579 0))(
  ( (Nil!7565) (Cons!7565 (h!12966 Rule!2824) (t!87402 List!7579)) )
))
(declare-fun rules!1486 () List!7579)

(declare-datatypes ((tuple2!8002 0))(
  ( (tuple2!8003 (_1!4428 BalanceConc!5338) (_2!4428 BalanceConc!5336)) )
))
(declare-fun lt!285299 () tuple2!8002)

(declare-fun lexRec!167 (LexerInterface!1325 List!7579 BalanceConc!5336) tuple2!8002)

(assert (=> b!694027 (= lt!285299 (lexRec!167 thiss!12529 rules!1486 (_2!4426 (v!17718 (_1!4427 lt!285301)))))))

(declare-fun b!694028 () Bool)

(declare-fun e!437007 () Bool)

(declare-fun tp!209885 () Bool)

(declare-fun mapRes!3193 () Bool)

(assert (=> b!694028 (= e!437007 (and tp!209885 mapRes!3193))))

(declare-fun condMapEmpty!3192 () Bool)

(declare-fun mapDefault!3193 () List!7577)

(assert (=> b!694028 (= condMapEmpty!3192 (= (arr!1337 (_values!1074 (v!17714 (underlying!1773 (v!17715 (underlying!1774 (cache!1154 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7577)) mapDefault!3193)))))

(declare-fun tp!209875 () Bool)

(declare-fun e!437006 () Bool)

(declare-fun e!436978 () Bool)

(declare-fun tp!209870 () Bool)

(declare-fun array_inv!979 (array!2955) Bool)

(declare-fun array_inv!980 (array!2957) Bool)

(assert (=> b!694029 (= e!437006 (and tp!209867 tp!209870 tp!209875 (array_inv!979 (_keys!1088 (v!17712 (underlying!1771 (v!17713 (underlying!1772 (cache!1153 cacheUp!502))))))) (array_inv!980 (_values!1073 (v!17712 (underlying!1771 (v!17713 (underlying!1772 (cache!1153 cacheUp!502))))))) e!436978))))

(declare-fun b!694030 () Bool)

(declare-fun e!436998 () Bool)

(declare-fun e!437002 () Bool)

(assert (=> b!694030 (= e!436998 e!437002)))

(declare-fun res!314393 () Bool)

(assert (=> b!694030 (=> (not res!314393) (not e!437002))))

(declare-fun lt!285293 () tuple2!8002)

(declare-fun list!3163 (BalanceConc!5338) List!7574)

(assert (=> b!694030 (= res!314393 (= (list!3163 (_1!4428 lt!285293)) (list!3163 acc!372)))))

(assert (=> b!694030 (= lt!285293 (lexRec!167 thiss!12529 rules!1486 treated!50))))

(declare-fun b!694031 () Bool)

(declare-fun e!437001 () Bool)

(declare-fun e!436980 () Bool)

(declare-fun lt!285302 () MutLongMap!796)

(assert (=> b!694031 (= e!437001 (and e!436980 ((_ is LongMap!796) lt!285302)))))

(assert (=> b!694031 (= lt!285302 (v!17717 (underlying!1776 (cache!1155 cacheFindLongestMatch!74))))))

(declare-fun mapIsEmpty!3191 () Bool)

(declare-fun mapRes!3191 () Bool)

(assert (=> mapIsEmpty!3191 mapRes!3191))

(declare-fun b!694032 () Bool)

(declare-fun res!314384 () Bool)

(assert (=> b!694032 (=> (not res!314384) (not e!437003))))

(declare-fun isEmpty!4892 (List!7579) Bool)

(assert (=> b!694032 (= res!314384 (not (isEmpty!4892 rules!1486)))))

(declare-fun b!694033 () Bool)

(declare-fun e!437010 () Bool)

(declare-fun tp!209871 () Bool)

(declare-fun inv!9677 (Conc!2662) Bool)

(assert (=> b!694033 (= e!437010 (and (inv!9677 (c!121773 (totalInput!1811 cacheFindLongestMatch!74))) tp!209871))))

(declare-fun b!694034 () Bool)

(declare-fun e!436975 () Bool)

(declare-fun e!436993 () Bool)

(assert (=> b!694034 (= e!436975 e!436993)))

(declare-fun mapIsEmpty!3192 () Bool)

(declare-fun mapRes!3192 () Bool)

(assert (=> mapIsEmpty!3192 mapRes!3192))

(declare-fun b!694035 () Bool)

(declare-fun res!314387 () Bool)

(assert (=> b!694035 (=> (not res!314387) (not e!437003))))

(declare-fun rulesInvariant!1256 (LexerInterface!1325 List!7579) Bool)

(assert (=> b!694035 (= res!314387 (rulesInvariant!1256 thiss!12529 rules!1486))))

(declare-fun mapIsEmpty!3193 () Bool)

(assert (=> mapIsEmpty!3193 mapRes!3193))

(declare-fun b!694036 () Bool)

(declare-fun e!436988 () Bool)

(declare-fun e!436976 () Bool)

(assert (=> b!694036 (= e!436988 e!436976)))

(declare-fun b!694037 () Bool)

(declare-fun tp!209887 () Bool)

(assert (=> b!694037 (= e!436978 (and tp!209887 mapRes!3191))))

(declare-fun condMapEmpty!3193 () Bool)

(declare-fun mapDefault!3192 () List!7576)

(assert (=> b!694037 (= condMapEmpty!3193 (= (arr!1336 (_values!1073 (v!17712 (underlying!1771 (v!17713 (underlying!1772 (cache!1153 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7576)) mapDefault!3192)))))

(declare-fun e!436974 () Bool)

(assert (=> b!694038 (= e!436974 (and e!437001 tp!209896))))

(declare-fun b!694039 () Bool)

(declare-fun res!314390 () Bool)

(assert (=> b!694039 (=> (not res!314390) (not e!436995))))

(declare-fun lt!285305 () tuple2!8002)

(declare-fun lt!285298 () tuple2!8002)

(declare-fun list!3164 (BalanceConc!5336) List!7573)

(assert (=> b!694039 (= res!314390 (= (list!3164 (_2!4428 lt!285305)) (list!3164 (_2!4428 lt!285298))))))

(declare-fun mapNonEmpty!3191 () Bool)

(declare-fun tp!209881 () Bool)

(declare-fun tp!209868 () Bool)

(assert (=> mapNonEmpty!3191 (= mapRes!3192 (and tp!209881 tp!209868))))

(declare-fun mapValue!3192 () List!7578)

(declare-fun mapRest!3193 () (Array (_ BitVec 32) List!7578))

(declare-fun mapKey!3193 () (_ BitVec 32))

(assert (=> mapNonEmpty!3191 (= (arr!1338 (_values!1075 (v!17716 (underlying!1775 (v!17717 (underlying!1776 (cache!1155 cacheFindLongestMatch!74))))))) (store mapRest!3193 mapKey!3193 mapValue!3192))))

(declare-fun b!694040 () Bool)

(declare-fun tp!209878 () Bool)

(assert (=> b!694040 (= e!436994 (and (inv!9677 (c!121773 treated!50)) tp!209878))))

(declare-fun mapNonEmpty!3192 () Bool)

(declare-fun tp!209890 () Bool)

(declare-fun tp!209888 () Bool)

(assert (=> mapNonEmpty!3192 (= mapRes!3193 (and tp!209890 tp!209888))))

(declare-fun mapKey!3191 () (_ BitVec 32))

(declare-fun mapRest!3192 () (Array (_ BitVec 32) List!7577))

(declare-fun mapValue!3193 () List!7577)

(assert (=> mapNonEmpty!3192 (= (arr!1337 (_values!1074 (v!17714 (underlying!1773 (v!17715 (underlying!1774 (cache!1154 cacheDown!515))))))) (store mapRest!3192 mapKey!3191 mapValue!3193))))

(declare-fun b!694041 () Bool)

(declare-fun tp!209874 () Bool)

(assert (=> b!694041 (= e!436986 (and (inv!9677 (c!121773 input!870)) tp!209874))))

(declare-fun b!694042 () Bool)

(declare-fun res!314382 () Bool)

(assert (=> b!694042 (=> (not res!314382) (not e!436995))))

(declare-fun valid!680 (CacheUp!398) Bool)

(assert (=> b!694042 (= res!314382 (valid!680 cacheUp!502))))

(declare-fun e!436997 () Bool)

(declare-fun e!437008 () Bool)

(assert (=> b!694043 (= e!436997 (and e!437008 tp!209872))))

(declare-fun tp!209869 () Bool)

(declare-fun tp!209877 () Bool)

(declare-fun array_inv!981 (array!2959) Bool)

(assert (=> b!694044 (= e!436976 (and tp!209895 tp!209869 tp!209877 (array_inv!979 (_keys!1089 (v!17714 (underlying!1773 (v!17715 (underlying!1774 (cache!1154 cacheDown!515))))))) (array_inv!981 (_values!1074 (v!17714 (underlying!1773 (v!17715 (underlying!1774 (cache!1154 cacheDown!515))))))) e!437007))))

(declare-fun b!694045 () Bool)

(declare-fun e!436996 () Bool)

(assert (=> b!694045 (= e!436996 e!437006)))

(declare-fun b!694046 () Bool)

(assert (=> b!694046 (= e!436980 e!436975)))

(declare-fun b!694047 () Bool)

(declare-fun res!314389 () Bool)

(assert (=> b!694047 (=> (not res!314389) (not e!436995))))

(assert (=> b!694047 (= res!314389 (= (totalInput!1811 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!694048 () Bool)

(declare-fun e!436991 () Bool)

(declare-fun e!437009 () Bool)

(declare-fun lt!285296 () MutLongMap!794)

(assert (=> b!694048 (= e!436991 (and e!437009 ((_ is LongMap!794) lt!285296)))))

(assert (=> b!694048 (= lt!285296 (v!17713 (underlying!1772 (cache!1153 cacheUp!502))))))

(declare-fun b!694049 () Bool)

(declare-fun e!436990 () Bool)

(declare-fun tp!209883 () Bool)

(assert (=> b!694049 (= e!437000 (and e!436990 tp!209883))))

(declare-fun b!694050 () Bool)

(assert (=> b!694050 (= e!436983 (and e!436974 (inv!9673 (totalInput!1811 cacheFindLongestMatch!74)) e!437010))))

(declare-fun mapNonEmpty!3193 () Bool)

(declare-fun tp!209882 () Bool)

(declare-fun tp!209886 () Bool)

(assert (=> mapNonEmpty!3193 (= mapRes!3191 (and tp!209882 tp!209886))))

(declare-fun mapRest!3191 () (Array (_ BitVec 32) List!7576))

(declare-fun mapKey!3192 () (_ BitVec 32))

(declare-fun mapValue!3191 () List!7576)

(assert (=> mapNonEmpty!3193 (= (arr!1336 (_values!1073 (v!17712 (underlying!1771 (v!17713 (underlying!1772 (cache!1153 cacheUp!502))))))) (store mapRest!3191 mapKey!3192 mapValue!3191))))

(declare-fun b!694051 () Bool)

(assert (=> b!694051 (= e!437003 e!436998)))

(declare-fun res!314385 () Bool)

(assert (=> b!694051 (=> (not res!314385) (not e!436998))))

(declare-fun lt!285303 () List!7573)

(declare-fun lt!285297 () List!7573)

(assert (=> b!694051 (= res!314385 (= lt!285303 lt!285297))))

(declare-fun lt!285294 () List!7573)

(declare-fun lt!285304 () List!7573)

(declare-fun ++!1968 (List!7573 List!7573) List!7573)

(assert (=> b!694051 (= lt!285297 (++!1968 lt!285294 lt!285304))))

(assert (=> b!694051 (= lt!285303 (list!3164 totalInput!378))))

(assert (=> b!694051 (= lt!285304 (list!3164 input!870))))

(assert (=> b!694051 (= lt!285294 (list!3164 treated!50))))

(declare-fun e!436982 () Bool)

(assert (=> b!694052 (= e!436982 (and tp!209889 tp!209880))))

(declare-fun b!694053 () Bool)

(declare-fun tp!209891 () Bool)

(declare-fun inv!9678 (Conc!2663) Bool)

(assert (=> b!694053 (= e!437005 (and (inv!9678 (c!121774 acc!372)) tp!209891))))

(declare-fun e!437004 () Bool)

(declare-fun tp!209876 () Bool)

(declare-fun tp!209894 () Bool)

(declare-fun array_inv!982 (array!2961) Bool)

(assert (=> b!694054 (= e!436993 (and tp!209892 tp!209894 tp!209876 (array_inv!979 (_keys!1090 (v!17716 (underlying!1775 (v!17717 (underlying!1776 (cache!1155 cacheFindLongestMatch!74))))))) (array_inv!982 (_values!1075 (v!17716 (underlying!1775 (v!17717 (underlying!1776 (cache!1155 cacheFindLongestMatch!74))))))) e!437004))))

(declare-fun e!436972 () Bool)

(assert (=> b!694055 (= e!436972 (and e!436991 tp!209879))))

(declare-fun b!694056 () Bool)

(declare-fun e!436984 () Bool)

(declare-fun lt!285300 () MutLongMap!795)

(assert (=> b!694056 (= e!437008 (and e!436984 ((_ is LongMap!795) lt!285300)))))

(assert (=> b!694056 (= lt!285300 (v!17715 (underlying!1774 (cache!1154 cacheDown!515))))))

(declare-fun b!694057 () Bool)

(assert (=> b!694057 (= e!436984 e!436988)))

(declare-fun b!694058 () Bool)

(assert (=> b!694058 (= e!436987 e!436997)))

(declare-fun b!694059 () Bool)

(declare-fun tp!209893 () Bool)

(assert (=> b!694059 (= e!436981 (and (inv!9677 (c!121773 totalInput!378)) tp!209893))))

(declare-fun b!694060 () Bool)

(assert (=> b!694060 (= e!437009 e!436996)))

(declare-fun b!694061 () Bool)

(declare-fun tp!209884 () Bool)

(declare-fun inv!9670 (String!9506) Bool)

(declare-fun inv!9679 (TokenValueInjection!2848) Bool)

(assert (=> b!694061 (= e!436990 (and tp!209884 (inv!9670 (tag!1774 (h!12966 rules!1486))) (inv!9679 (transformation!1512 (h!12966 rules!1486))) e!436982))))

(declare-fun b!694062 () Bool)

(assert (=> b!694062 (= e!437002 e!436995)))

(declare-fun res!314383 () Bool)

(assert (=> b!694062 (=> (not res!314383) (not e!436995))))

(declare-fun ++!1969 (BalanceConc!5338 BalanceConc!5338) BalanceConc!5338)

(assert (=> b!694062 (= res!314383 (= (list!3163 (_1!4428 lt!285305)) (list!3163 (++!1969 acc!372 (_1!4428 lt!285298)))))))

(assert (=> b!694062 (= lt!285298 (lexRec!167 thiss!12529 rules!1486 input!870))))

(assert (=> b!694062 (= lt!285305 (lexRec!167 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!694063 () Bool)

(assert (=> b!694063 (= e!436999 e!436972)))

(declare-fun b!694064 () Bool)

(declare-fun res!314392 () Bool)

(assert (=> b!694064 (=> (not res!314392) (not e!436995))))

(declare-fun valid!681 (CacheDown!402) Bool)

(assert (=> b!694064 (= res!314392 (valid!681 cacheDown!515))))

(declare-fun b!694065 () Bool)

(declare-fun res!314386 () Bool)

(assert (=> b!694065 (=> (not res!314386) (not e!437002))))

(declare-fun isEmpty!4893 (List!7573) Bool)

(assert (=> b!694065 (= res!314386 (isEmpty!4893 (list!3164 (_2!4428 lt!285293))))))

(declare-fun b!694066 () Bool)

(declare-fun tp!209873 () Bool)

(assert (=> b!694066 (= e!437004 (and tp!209873 mapRes!3192))))

(declare-fun condMapEmpty!3191 () Bool)

(declare-fun mapDefault!3191 () List!7578)

(assert (=> b!694066 (= condMapEmpty!3191 (= (arr!1338 (_values!1075 (v!17716 (underlying!1775 (v!17717 (underlying!1776 (cache!1155 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7578)) mapDefault!3191)))))

(declare-fun b!694067 () Bool)

(declare-fun e!436992 () Bool)

(assert (=> b!694067 (= e!436992 e!436979)))

(declare-fun res!314388 () Bool)

(assert (=> b!694067 (=> res!314388 e!436979)))

(assert (=> b!694067 (= res!314388 (not ((_ is Some!1710) (_1!4427 lt!285301))))))

(declare-fun maxPrefixZipperSequenceV2Mem!4 (LexerInterface!1325 List!7579 BalanceConc!5336 BalanceConc!5336 CacheUp!398 CacheDown!402 CacheFindLongestMatch!58) tuple4!120)

(assert (=> b!694067 (= lt!285301 (maxPrefixZipperSequenceV2Mem!4 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!694068 () Bool)

(assert (=> b!694068 (= e!436995 (not e!436992))))

(declare-fun res!314391 () Bool)

(assert (=> b!694068 (=> res!314391 e!436992)))

(declare-fun isSuffix!134 (List!7573 List!7573) Bool)

(assert (=> b!694068 (= res!314391 (not (isSuffix!134 lt!285304 lt!285303)))))

(assert (=> b!694068 (isSuffix!134 lt!285304 lt!285297)))

(declare-datatypes ((Unit!12670 0))(
  ( (Unit!12671) )
))
(declare-fun lt!285295 () Unit!12670)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!134 (List!7573 List!7573) Unit!12670)

(assert (=> b!694068 (= lt!285295 (lemmaConcatTwoListThenFSndIsSuffix!134 lt!285294 lt!285304))))

(assert (= (and start!66300 res!314394) b!694032))

(assert (= (and b!694032 res!314384) b!694035))

(assert (= (and b!694035 res!314387) b!694051))

(assert (= (and b!694051 res!314385) b!694030))

(assert (= (and b!694030 res!314393) b!694065))

(assert (= (and b!694065 res!314386) b!694062))

(assert (= (and b!694062 res!314383) b!694039))

(assert (= (and b!694039 res!314390) b!694042))

(assert (= (and b!694042 res!314382) b!694064))

(assert (= (and b!694064 res!314392) b!694026))

(assert (= (and b!694026 res!314395) b!694047))

(assert (= (and b!694047 res!314389) b!694068))

(assert (= (and b!694068 (not res!314391)) b!694067))

(assert (= (and b!694067 (not res!314388)) b!694027))

(assert (= start!66300 b!694053))

(assert (= start!66300 b!694040))

(assert (= start!66300 b!694059))

(assert (= start!66300 b!694041))

(assert (= b!694061 b!694052))

(assert (= b!694049 b!694061))

(assert (= (and start!66300 ((_ is Cons!7565) rules!1486)) b!694049))

(assert (= (and b!694037 condMapEmpty!3193) mapIsEmpty!3191))

(assert (= (and b!694037 (not condMapEmpty!3193)) mapNonEmpty!3193))

(assert (= b!694029 b!694037))

(assert (= b!694045 b!694029))

(assert (= b!694060 b!694045))

(assert (= (and b!694048 ((_ is LongMap!794) (v!17713 (underlying!1772 (cache!1153 cacheUp!502))))) b!694060))

(assert (= b!694055 b!694048))

(assert (= (and b!694063 ((_ is HashMap!766) (cache!1153 cacheUp!502))) b!694055))

(assert (= start!66300 b!694063))

(assert (= (and b!694028 condMapEmpty!3192) mapIsEmpty!3193))

(assert (= (and b!694028 (not condMapEmpty!3192)) mapNonEmpty!3192))

(assert (= b!694044 b!694028))

(assert (= b!694036 b!694044))

(assert (= b!694057 b!694036))

(assert (= (and b!694056 ((_ is LongMap!795) (v!17715 (underlying!1774 (cache!1154 cacheDown!515))))) b!694057))

(assert (= b!694043 b!694056))

(assert (= (and b!694058 ((_ is HashMap!767) (cache!1154 cacheDown!515))) b!694043))

(assert (= start!66300 b!694058))

(assert (= (and b!694066 condMapEmpty!3191) mapIsEmpty!3192))

(assert (= (and b!694066 (not condMapEmpty!3191)) mapNonEmpty!3191))

(assert (= b!694054 b!694066))

(assert (= b!694034 b!694054))

(assert (= b!694046 b!694034))

(assert (= (and b!694031 ((_ is LongMap!796) (v!17717 (underlying!1776 (cache!1155 cacheFindLongestMatch!74))))) b!694046))

(assert (= b!694038 b!694031))

(assert (= (and b!694050 ((_ is HashMap!768) (cache!1155 cacheFindLongestMatch!74))) b!694038))

(assert (= b!694050 b!694033))

(assert (= start!66300 b!694050))

(declare-fun m!950063 () Bool)

(assert (=> b!694068 m!950063))

(declare-fun m!950065 () Bool)

(assert (=> b!694068 m!950065))

(declare-fun m!950067 () Bool)

(assert (=> b!694068 m!950067))

(declare-fun m!950069 () Bool)

(assert (=> b!694059 m!950069))

(declare-fun m!950071 () Bool)

(assert (=> b!694044 m!950071))

(declare-fun m!950073 () Bool)

(assert (=> b!694044 m!950073))

(declare-fun m!950075 () Bool)

(assert (=> b!694040 m!950075))

(declare-fun m!950077 () Bool)

(assert (=> mapNonEmpty!3193 m!950077))

(declare-fun m!950079 () Bool)

(assert (=> b!694062 m!950079))

(declare-fun m!950081 () Bool)

(assert (=> b!694062 m!950081))

(assert (=> b!694062 m!950079))

(declare-fun m!950083 () Bool)

(assert (=> b!694062 m!950083))

(declare-fun m!950085 () Bool)

(assert (=> b!694062 m!950085))

(declare-fun m!950087 () Bool)

(assert (=> b!694062 m!950087))

(declare-fun m!950089 () Bool)

(assert (=> b!694032 m!950089))

(declare-fun m!950091 () Bool)

(assert (=> b!694035 m!950091))

(declare-fun m!950093 () Bool)

(assert (=> b!694039 m!950093))

(declare-fun m!950095 () Bool)

(assert (=> b!694039 m!950095))

(declare-fun m!950097 () Bool)

(assert (=> b!694027 m!950097))

(declare-fun m!950099 () Bool)

(assert (=> mapNonEmpty!3192 m!950099))

(declare-fun m!950101 () Bool)

(assert (=> b!694053 m!950101))

(declare-fun m!950103 () Bool)

(assert (=> b!694054 m!950103))

(declare-fun m!950105 () Bool)

(assert (=> b!694054 m!950105))

(declare-fun m!950107 () Bool)

(assert (=> b!694065 m!950107))

(assert (=> b!694065 m!950107))

(declare-fun m!950109 () Bool)

(assert (=> b!694065 m!950109))

(declare-fun m!950111 () Bool)

(assert (=> start!66300 m!950111))

(declare-fun m!950113 () Bool)

(assert (=> start!66300 m!950113))

(declare-fun m!950115 () Bool)

(assert (=> start!66300 m!950115))

(declare-fun m!950117 () Bool)

(assert (=> start!66300 m!950117))

(declare-fun m!950119 () Bool)

(assert (=> start!66300 m!950119))

(declare-fun m!950121 () Bool)

(assert (=> start!66300 m!950121))

(declare-fun m!950123 () Bool)

(assert (=> start!66300 m!950123))

(declare-fun m!950125 () Bool)

(assert (=> b!694061 m!950125))

(declare-fun m!950127 () Bool)

(assert (=> b!694061 m!950127))

(declare-fun m!950129 () Bool)

(assert (=> b!694042 m!950129))

(declare-fun m!950131 () Bool)

(assert (=> b!694026 m!950131))

(declare-fun m!950133 () Bool)

(assert (=> b!694041 m!950133))

(declare-fun m!950135 () Bool)

(assert (=> b!694051 m!950135))

(declare-fun m!950137 () Bool)

(assert (=> b!694051 m!950137))

(declare-fun m!950139 () Bool)

(assert (=> b!694051 m!950139))

(declare-fun m!950141 () Bool)

(assert (=> b!694051 m!950141))

(declare-fun m!950143 () Bool)

(assert (=> b!694030 m!950143))

(declare-fun m!950145 () Bool)

(assert (=> b!694030 m!950145))

(declare-fun m!950147 () Bool)

(assert (=> b!694030 m!950147))

(declare-fun m!950149 () Bool)

(assert (=> b!694067 m!950149))

(declare-fun m!950151 () Bool)

(assert (=> mapNonEmpty!3191 m!950151))

(declare-fun m!950153 () Bool)

(assert (=> b!694050 m!950153))

(declare-fun m!950155 () Bool)

(assert (=> b!694029 m!950155))

(declare-fun m!950157 () Bool)

(assert (=> b!694029 m!950157))

(declare-fun m!950159 () Bool)

(assert (=> b!694033 m!950159))

(declare-fun m!950161 () Bool)

(assert (=> b!694064 m!950161))

(check-sat (not mapNonEmpty!3193) (not b_next!19851) (not b!694029) (not b!694026) (not b!694059) (not b!694054) b_and!63583 (not b!694037) (not b!694065) b_and!63579 (not b!694066) (not b!694068) (not b!694053) (not b_next!19841) (not b!694061) b_and!63575 (not b!694028) b_and!63581 (not b!694032) (not b!694040) (not b!694042) (not b!694041) (not mapNonEmpty!3191) (not b!694044) (not b!694027) (not b!694030) (not b_next!19843) (not start!66300) (not mapNonEmpty!3192) (not b!694033) (not b!694051) (not b!694062) (not b_next!19847) (not b!694067) (not b!694064) (not b!694050) (not b_next!19845) b_and!63571 (not b_next!19855) b_and!63573 (not b!694049) (not b_next!19853) (not b!694035) b_and!63585 b_and!63577 (not b_next!19849) (not b!694039))
(check-sat (not b_next!19851) b_and!63579 (not b_next!19841) (not b_next!19843) (not b_next!19847) b_and!63583 (not b_next!19853) b_and!63575 b_and!63581 (not b_next!19845) b_and!63571 (not b_next!19855) b_and!63573 b_and!63585 b_and!63577 (not b_next!19849))
