; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143626 () Bool)

(assert start!143626)

(declare-fun b!1549837 () Bool)

(declare-fun b_free!41059 () Bool)

(declare-fun b_next!41763 () Bool)

(assert (=> b!1549837 (= b_free!41059 (not b_next!41763))))

(declare-fun tp!452574 () Bool)

(declare-fun b_and!108149 () Bool)

(assert (=> b!1549837 (= tp!452574 b_and!108149)))

(declare-fun b_free!41061 () Bool)

(declare-fun b_next!41765 () Bool)

(assert (=> b!1549837 (= b_free!41061 (not b_next!41765))))

(declare-fun tp!452557 () Bool)

(declare-fun b_and!108151 () Bool)

(assert (=> b!1549837 (= tp!452557 b_and!108151)))

(declare-fun b!1549845 () Bool)

(declare-fun b_free!41063 () Bool)

(declare-fun b_next!41767 () Bool)

(assert (=> b!1549845 (= b_free!41063 (not b_next!41767))))

(declare-fun tp!452549 () Bool)

(declare-fun b_and!108153 () Bool)

(assert (=> b!1549845 (= tp!452549 b_and!108153)))

(declare-fun b!1549852 () Bool)

(declare-fun b_free!41065 () Bool)

(declare-fun b_next!41769 () Bool)

(assert (=> b!1549852 (= b_free!41065 (not b_next!41769))))

(declare-fun tp!452565 () Bool)

(declare-fun b_and!108155 () Bool)

(assert (=> b!1549852 (= tp!452565 b_and!108155)))

(declare-fun b!1549855 () Bool)

(declare-fun b_free!41067 () Bool)

(declare-fun b_next!41771 () Bool)

(assert (=> b!1549855 (= b_free!41067 (not b_next!41771))))

(declare-fun tp!452568 () Bool)

(declare-fun b_and!108157 () Bool)

(assert (=> b!1549855 (= tp!452568 b_and!108157)))

(declare-fun b!1549861 () Bool)

(declare-fun b_free!41069 () Bool)

(declare-fun b_next!41773 () Bool)

(assert (=> b!1549861 (= b_free!41069 (not b_next!41773))))

(declare-fun tp!452548 () Bool)

(declare-fun b_and!108159 () Bool)

(assert (=> b!1549861 (= tp!452548 b_and!108159)))

(declare-fun b!1549859 () Bool)

(declare-fun b_free!41071 () Bool)

(declare-fun b_next!41775 () Bool)

(assert (=> b!1549859 (= b_free!41071 (not b_next!41775))))

(declare-fun tp!452556 () Bool)

(declare-fun b_and!108161 () Bool)

(assert (=> b!1549859 (= tp!452556 b_and!108161)))

(declare-fun b!1549848 () Bool)

(declare-fun b_free!41073 () Bool)

(declare-fun b_next!41777 () Bool)

(assert (=> b!1549848 (= b_free!41073 (not b_next!41777))))

(declare-fun tp!452558 () Bool)

(declare-fun b_and!108163 () Bool)

(assert (=> b!1549848 (= tp!452558 b_and!108163)))

(declare-fun b!1549869 () Bool)

(declare-fun e!993757 () Bool)

(assert (=> b!1549869 (= e!993757 true)))

(declare-fun b!1549868 () Bool)

(declare-fun e!993756 () Bool)

(assert (=> b!1549868 (= e!993756 e!993757)))

(declare-fun b!1549839 () Bool)

(assert (=> b!1549839 e!993756))

(assert (= b!1549868 b!1549869))

(assert (= b!1549839 b!1549868))

(declare-datatypes ((List!16786 0))(
  ( (Nil!16718) (Cons!16718 (h!22119 (_ BitVec 16)) (t!141189 List!16786)) )
))
(declare-datatypes ((TokenValue!3021 0))(
  ( (FloatLiteralValue!6042 (text!21592 List!16786)) (TokenValueExt!3020 (__x!11009 Int)) (Broken!15105 (value!93152 List!16786)) (Object!3088) (End!3021) (Def!3021) (Underscore!3021) (Match!3021) (Else!3021) (Error!3021) (Case!3021) (If!3021) (Extends!3021) (Abstract!3021) (Class!3021) (Val!3021) (DelimiterValue!6042 (del!3081 List!16786)) (KeywordValue!3027 (value!93153 List!16786)) (CommentValue!6042 (value!93154 List!16786)) (WhitespaceValue!6042 (value!93155 List!16786)) (IndentationValue!3021 (value!93156 List!16786)) (String!19392) (Int32!3021) (Broken!15106 (value!93157 List!16786)) (Boolean!3022) (Unit!25994) (OperatorValue!3024 (op!3081 List!16786)) (IdentifierValue!6042 (value!93158 List!16786)) (IdentifierValue!6043 (value!93159 List!16786)) (WhitespaceValue!6043 (value!93160 List!16786)) (True!6042) (False!6042) (Broken!15107 (value!93161 List!16786)) (Broken!15108 (value!93162 List!16786)) (True!6043) (RightBrace!3021) (RightBracket!3021) (Colon!3021) (Null!3021) (Comma!3021) (LeftBracket!3021) (False!6043) (LeftBrace!3021) (ImaginaryLiteralValue!3021 (text!21593 List!16786)) (StringLiteralValue!9063 (value!93163 List!16786)) (EOFValue!3021 (value!93164 List!16786)) (IdentValue!3021 (value!93165 List!16786)) (DelimiterValue!6043 (value!93166 List!16786)) (DedentValue!3021 (value!93167 List!16786)) (NewLineValue!3021 (value!93168 List!16786)) (IntegerValue!9063 (value!93169 (_ BitVec 32)) (text!21594 List!16786)) (IntegerValue!9064 (value!93170 Int) (text!21595 List!16786)) (Times!3021) (Or!3021) (Equal!3021) (Minus!3021) (Broken!15109 (value!93171 List!16786)) (And!3021) (Div!3021) (LessEqual!3021) (Mod!3021) (Concat!7280) (Not!3021) (Plus!3021) (SpaceValue!3021 (value!93172 List!16786)) (IntegerValue!9065 (value!93173 Int) (text!21596 List!16786)) (StringLiteralValue!9064 (text!21597 List!16786)) (FloatLiteralValue!6043 (text!21598 List!16786)) (BytesLiteralValue!3021 (value!93174 List!16786)) (CommentValue!6043 (value!93175 List!16786)) (StringLiteralValue!9065 (value!93176 List!16786)) (ErrorTokenValue!3021 (msg!3082 List!16786)) )
))
(declare-datatypes ((C!8696 0))(
  ( (C!8697 (val!4920 Int)) )
))
(declare-datatypes ((List!16787 0))(
  ( (Nil!16719) (Cons!16719 (h!22120 C!8696) (t!141190 List!16787)) )
))
(declare-datatypes ((IArray!11103 0))(
  ( (IArray!11104 (innerList!5609 List!16787)) )
))
(declare-datatypes ((Conc!5549 0))(
  ( (Node!5549 (left!13615 Conc!5549) (right!13945 Conc!5549) (csize!11328 Int) (cheight!5760 Int)) (Leaf!8224 (xs!8349 IArray!11103) (csize!11329 Int)) (Empty!5549) )
))
(declare-datatypes ((BalanceConc!11040 0))(
  ( (BalanceConc!11041 (c!252217 Conc!5549)) )
))
(declare-datatypes ((String!19393 0))(
  ( (String!19394 (value!93177 String)) )
))
(declare-datatypes ((Regex!4259 0))(
  ( (ElementMatch!4259 (c!252218 C!8696)) (Concat!7281 (regOne!9030 Regex!4259) (regTwo!9030 Regex!4259)) (EmptyExpr!4259) (Star!4259 (reg!4588 Regex!4259)) (EmptyLang!4259) (Union!4259 (regOne!9031 Regex!4259) (regTwo!9031 Regex!4259)) )
))
(declare-datatypes ((TokenValueInjection!5702 0))(
  ( (TokenValueInjection!5703 (toValue!4294 Int) (toChars!4153 Int)) )
))
(declare-datatypes ((Rule!5662 0))(
  ( (Rule!5663 (regex!2931 Regex!4259) (tag!3195 String!19393) (isSeparator!2931 Bool) (transformation!2931 TokenValueInjection!5702)) )
))
(declare-fun rule!240 () Rule!5662)

(declare-fun lambda!65623 () Int)

(declare-fun order!9801 () Int)

(declare-fun order!9799 () Int)

(declare-fun dynLambda!7394 (Int Int) Int)

(declare-fun dynLambda!7395 (Int Int) Int)

(assert (=> b!1549869 (< (dynLambda!7394 order!9799 (toValue!4294 (transformation!2931 rule!240))) (dynLambda!7395 order!9801 lambda!65623))))

(declare-fun order!9803 () Int)

(declare-fun dynLambda!7396 (Int Int) Int)

(assert (=> b!1549869 (< (dynLambda!7396 order!9803 (toChars!4153 (transformation!2931 rule!240))) (dynLambda!7395 order!9801 lambda!65623))))

(declare-fun b!1549826 () Bool)

(declare-fun e!993749 () Bool)

(declare-fun tp!452571 () Bool)

(declare-fun mapRes!8136 () Bool)

(assert (=> b!1549826 (= e!993749 (and tp!452571 mapRes!8136))))

(declare-fun condMapEmpty!8136 () Bool)

(declare-datatypes ((List!16788 0))(
  ( (Nil!16720) (Cons!16720 (h!22121 Regex!4259) (t!141191 List!16788)) )
))
(declare-datatypes ((Context!1554 0))(
  ( (Context!1555 (exprs!1277 List!16788)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1722 0))(
  ( (tuple3!1723 (_1!9323 (InoxSet Context!1554)) (_2!9323 Int) (_3!1293 Int)) )
))
(declare-datatypes ((tuple2!16060 0))(
  ( (tuple2!16061 (_1!9324 tuple3!1722) (_2!9324 Int)) )
))
(declare-datatypes ((List!16789 0))(
  ( (Nil!16721) (Cons!16721 (h!22122 tuple2!16060) (t!141192 List!16789)) )
))
(declare-datatypes ((array!6012 0))(
  ( (array!6013 (arr!2683 (Array (_ BitVec 32) List!16789)) (size!13518 (_ BitVec 32))) )
))
(declare-datatypes ((array!6014 0))(
  ( (array!6015 (arr!2684 (Array (_ BitVec 32) (_ BitVec 64))) (size!13519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3498 0))(
  ( (LongMapFixedSize!3499 (defaultEntry!2109 Int) (mask!4967 (_ BitVec 32)) (extraKeys!1996 (_ BitVec 32)) (zeroValue!2006 List!16789) (minValue!2006 List!16789) (_size!3579 (_ BitVec 32)) (_keys!2043 array!6014) (_values!2028 array!6012) (_vacant!1810 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6881 0))(
  ( (Cell!6882 (v!23544 LongMapFixedSize!3498)) )
))
(declare-datatypes ((Hashable!1693 0))(
  ( (HashableExt!1692 (__x!11010 Int)) )
))
(declare-datatypes ((MutLongMap!1749 0))(
  ( (LongMap!1749 (underlying!3707 Cell!6881)) (MutLongMapExt!1748 (__x!11011 Int)) )
))
(declare-datatypes ((Cell!6883 0))(
  ( (Cell!6884 (v!23545 MutLongMap!1749)) )
))
(declare-datatypes ((MutableMap!1693 0))(
  ( (MutableMapExt!1692 (__x!11012 Int)) (HashMap!1693 (underlying!3708 Cell!6883) (hashF!3612 Hashable!1693) (_size!3580 (_ BitVec 32)) (defaultValue!1853 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!454 0))(
  ( (CacheFurthestNullable!455 (cache!2074 MutableMap!1693) (totalInput!2430 BalanceConc!11040)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!454)

(declare-fun mapDefault!8137 () List!16789)

(assert (=> b!1549826 (= condMapEmpty!8136 (= (arr!2683 (_values!2028 (v!23544 (underlying!3707 (v!23545 (underlying!3708 (cache!2074 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16789)) mapDefault!8137)))))

(declare-fun b!1549827 () Bool)

(declare-fun e!993729 () Bool)

(declare-fun tp!452550 () Bool)

(declare-fun mapRes!8138 () Bool)

(assert (=> b!1549827 (= e!993729 (and tp!452550 mapRes!8138))))

(declare-fun condMapEmpty!8138 () Bool)

(declare-datatypes ((tuple3!1724 0))(
  ( (tuple3!1725 (_1!9325 Regex!4259) (_2!9325 Context!1554) (_3!1294 C!8696)) )
))
(declare-datatypes ((tuple2!16062 0))(
  ( (tuple2!16063 (_1!9326 tuple3!1724) (_2!9326 (InoxSet Context!1554))) )
))
(declare-datatypes ((List!16790 0))(
  ( (Nil!16722) (Cons!16722 (h!22123 tuple2!16062) (t!141193 List!16790)) )
))
(declare-datatypes ((array!6016 0))(
  ( (array!6017 (arr!2685 (Array (_ BitVec 32) List!16790)) (size!13520 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3500 0))(
  ( (LongMapFixedSize!3501 (defaultEntry!2110 Int) (mask!4968 (_ BitVec 32)) (extraKeys!1997 (_ BitVec 32)) (zeroValue!2007 List!16790) (minValue!2007 List!16790) (_size!3581 (_ BitVec 32)) (_keys!2044 array!6014) (_values!2029 array!6016) (_vacant!1811 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6885 0))(
  ( (Cell!6886 (v!23546 LongMapFixedSize!3500)) )
))
(declare-datatypes ((MutLongMap!1750 0))(
  ( (LongMap!1750 (underlying!3709 Cell!6885)) (MutLongMapExt!1749 (__x!11013 Int)) )
))
(declare-datatypes ((Cell!6887 0))(
  ( (Cell!6888 (v!23547 MutLongMap!1750)) )
))
(declare-datatypes ((Hashable!1694 0))(
  ( (HashableExt!1693 (__x!11014 Int)) )
))
(declare-datatypes ((MutableMap!1694 0))(
  ( (MutableMapExt!1693 (__x!11015 Int)) (HashMap!1694 (underlying!3710 Cell!6887) (hashF!3613 Hashable!1694) (_size!3582 (_ BitVec 32)) (defaultValue!1854 Int)) )
))
(declare-datatypes ((CacheDown!1032 0))(
  ( (CacheDown!1033 (cache!2075 MutableMap!1694)) )
))
(declare-fun cacheDown!768 () CacheDown!1032)

(declare-fun mapDefault!8138 () List!16790)

(assert (=> b!1549827 (= condMapEmpty!8138 (= (arr!2685 (_values!2029 (v!23546 (underlying!3709 (v!23547 (underlying!3710 (cache!2075 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16790)) mapDefault!8138)))))

(declare-fun b!1549828 () Bool)

(declare-fun e!993723 () Bool)

(declare-datatypes ((tuple2!16064 0))(
  ( (tuple2!16065 (_1!9327 List!16787) (_2!9327 List!16787)) )
))
(declare-fun lt!536916 () tuple2!16064)

(declare-fun matchR!1867 (Regex!4259 List!16787) Bool)

(assert (=> b!1549828 (= e!993723 (matchR!1867 (regex!2931 rule!240) (_1!9327 lt!536916)))))

(declare-fun b!1549829 () Bool)

(declare-fun e!993721 () Bool)

(declare-fun totalInput!568 () BalanceConc!11040)

(declare-fun tp!452553 () Bool)

(declare-fun inv!21975 (Conc!5549) Bool)

(assert (=> b!1549829 (= e!993721 (and (inv!21975 (c!252217 totalInput!568)) tp!452553))))

(declare-fun mapIsEmpty!8136 () Bool)

(assert (=> mapIsEmpty!8136 mapRes!8136))

(declare-fun b!1549831 () Bool)

(declare-fun res!692753 () Bool)

(declare-fun e!993738 () Bool)

(assert (=> b!1549831 (=> (not res!692753) (not e!993738))))

(assert (=> b!1549831 (= res!692753 (= (totalInput!2430 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1549832 () Bool)

(declare-fun res!692751 () Bool)

(declare-fun e!993731 () Bool)

(assert (=> b!1549832 (=> (not res!692751) (not e!993731))))

(declare-fun valid!1406 (CacheFurthestNullable!454) Bool)

(assert (=> b!1549832 (= res!692751 (valid!1406 cacheFurthestNullable!103))))

(declare-fun b!1549833 () Bool)

(declare-fun e!993740 () Bool)

(declare-fun e!993728 () Bool)

(declare-fun lt!536917 () MutLongMap!1750)

(get-info :version)

(assert (=> b!1549833 (= e!993740 (and e!993728 ((_ is LongMap!1750) lt!536917)))))

(assert (=> b!1549833 (= lt!536917 (v!23547 (underlying!3710 (cache!2075 cacheDown!768))))))

(declare-fun mapIsEmpty!8137 () Bool)

(assert (=> mapIsEmpty!8137 mapRes!8138))

(declare-fun e!993726 () Bool)

(declare-fun b!1549834 () Bool)

(declare-fun e!993735 () Bool)

(declare-fun tp!452554 () Bool)

(declare-fun inv!21973 (String!19393) Bool)

(declare-fun inv!21976 (TokenValueInjection!5702) Bool)

(assert (=> b!1549834 (= e!993726 (and tp!452554 (inv!21973 (tag!3195 rule!240)) (inv!21976 (transformation!2931 rule!240)) e!993735))))

(declare-fun b!1549835 () Bool)

(declare-fun e!993724 () Bool)

(declare-fun e!993745 () Bool)

(assert (=> b!1549835 (= e!993724 e!993745)))

(declare-fun b!1549836 () Bool)

(declare-fun e!993744 () Bool)

(declare-fun e!993736 () Bool)

(declare-fun e!993722 () Bool)

(declare-fun inv!21977 (BalanceConc!11040) Bool)

(assert (=> b!1549836 (= e!993722 (and e!993736 (inv!21977 (totalInput!2430 cacheFurthestNullable!103)) e!993744))))

(declare-fun mapNonEmpty!8136 () Bool)

(declare-fun mapRes!8137 () Bool)

(declare-fun tp!452560 () Bool)

(declare-fun tp!452563 () Bool)

(assert (=> mapNonEmpty!8136 (= mapRes!8137 (and tp!452560 tp!452563))))

(declare-datatypes ((tuple2!16066 0))(
  ( (tuple2!16067 (_1!9328 Context!1554) (_2!9328 C!8696)) )
))
(declare-datatypes ((tuple2!16068 0))(
  ( (tuple2!16069 (_1!9329 tuple2!16066) (_2!9329 (InoxSet Context!1554))) )
))
(declare-datatypes ((List!16791 0))(
  ( (Nil!16723) (Cons!16723 (h!22124 tuple2!16068) (t!141194 List!16791)) )
))
(declare-datatypes ((array!6018 0))(
  ( (array!6019 (arr!2686 (Array (_ BitVec 32) List!16791)) (size!13521 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1695 0))(
  ( (HashableExt!1694 (__x!11016 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3502 0))(
  ( (LongMapFixedSize!3503 (defaultEntry!2111 Int) (mask!4969 (_ BitVec 32)) (extraKeys!1998 (_ BitVec 32)) (zeroValue!2008 List!16791) (minValue!2008 List!16791) (_size!3583 (_ BitVec 32)) (_keys!2045 array!6014) (_values!2030 array!6018) (_vacant!1812 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6889 0))(
  ( (Cell!6890 (v!23548 LongMapFixedSize!3502)) )
))
(declare-datatypes ((MutLongMap!1751 0))(
  ( (LongMap!1751 (underlying!3711 Cell!6889)) (MutLongMapExt!1750 (__x!11017 Int)) )
))
(declare-datatypes ((Cell!6891 0))(
  ( (Cell!6892 (v!23549 MutLongMap!1751)) )
))
(declare-datatypes ((MutableMap!1695 0))(
  ( (MutableMapExt!1694 (__x!11018 Int)) (HashMap!1695 (underlying!3712 Cell!6891) (hashF!3614 Hashable!1695) (_size!3584 (_ BitVec 32)) (defaultValue!1855 Int)) )
))
(declare-datatypes ((CacheUp!1028 0))(
  ( (CacheUp!1029 (cache!2076 MutableMap!1695)) )
))
(declare-fun cacheUp!755 () CacheUp!1028)

(declare-fun mapRest!8136 () (Array (_ BitVec 32) List!16791))

(declare-fun mapValue!8137 () List!16791)

(declare-fun mapKey!8137 () (_ BitVec 32))

(assert (=> mapNonEmpty!8136 (= (arr!2686 (_values!2030 (v!23548 (underlying!3711 (v!23549 (underlying!3712 (cache!2076 cacheUp!755))))))) (store mapRest!8136 mapKey!8137 mapValue!8137))))

(declare-fun mapNonEmpty!8137 () Bool)

(declare-fun tp!452569 () Bool)

(declare-fun tp!452573 () Bool)

(assert (=> mapNonEmpty!8137 (= mapRes!8136 (and tp!452569 tp!452573))))

(declare-fun mapKey!8136 () (_ BitVec 32))

(declare-fun mapValue!8136 () List!16789)

(declare-fun mapRest!8137 () (Array (_ BitVec 32) List!16789))

(assert (=> mapNonEmpty!8137 (= (arr!2683 (_values!2028 (v!23544 (underlying!3707 (v!23545 (underlying!3708 (cache!2074 cacheFurthestNullable!103))))))) (store mapRest!8137 mapKey!8136 mapValue!8136))))

(assert (=> b!1549837 (= e!993735 (and tp!452574 tp!452557))))

(declare-fun b!1549838 () Bool)

(assert (=> b!1549838 (= e!993731 e!993738)))

(declare-fun res!692748 () Bool)

(assert (=> b!1549838 (=> (not res!692748) (not e!993738))))

(declare-fun lt!536914 () List!16787)

(declare-fun isSuffix!364 (List!16787 List!16787) Bool)

(declare-fun list!6472 (BalanceConc!11040) List!16787)

(assert (=> b!1549838 (= res!692748 (isSuffix!364 lt!536914 (list!6472 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11040)

(assert (=> b!1549838 (= lt!536914 (list!6472 input!1676))))

(declare-fun lt!536925 () TokenValue!3021)

(declare-fun lt!536913 () List!16787)

(declare-fun lt!536922 () Int)

(declare-datatypes ((Token!5454 0))(
  ( (Token!5455 (value!93178 TokenValue!3021) (rule!4717 Rule!5662) (size!13522 Int) (originalCharacters!3758 List!16787)) )
))
(declare-datatypes ((tuple2!16070 0))(
  ( (tuple2!16071 (_1!9330 Token!5454) (_2!9330 BalanceConc!11040)) )
))
(declare-datatypes ((Option!3016 0))(
  ( (None!3015) (Some!3015 (v!23550 tuple2!16070)) )
))
(declare-fun e!993748 () Option!3016)

(declare-datatypes ((tuple2!16072 0))(
  ( (tuple2!16073 (_1!9331 BalanceConc!11040) (_2!9331 BalanceConc!11040)) )
))
(declare-datatypes ((tuple4!864 0))(
  ( (tuple4!865 (_1!9332 tuple2!16072) (_2!9332 CacheUp!1028) (_3!1295 CacheDown!1032) (_4!432 CacheFurthestNullable!454)) )
))
(declare-fun lt!536918 () tuple4!864)

(assert (=> b!1549839 (= e!993748 (Some!3015 (tuple2!16071 (Token!5455 lt!536925 rule!240 lt!536922 lt!536913) (_2!9331 (_1!9332 lt!536918)))))))

(declare-datatypes ((Unit!25995 0))(
  ( (Unit!25996) )
))
(declare-fun lt!536924 () Unit!25995)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!305 (Regex!4259 List!16787) Unit!25995)

(assert (=> b!1549839 (= lt!536924 (longestMatchIsAcceptedByMatchOrIsEmpty!305 (regex!2931 rule!240) lt!536914))))

(declare-fun findLongestMatchInner!321 (Regex!4259 List!16787 Int List!16787 List!16787 Int) tuple2!16064)

(declare-fun size!13523 (List!16787) Int)

(assert (=> b!1549839 (= lt!536916 (findLongestMatchInner!321 (regex!2931 rule!240) Nil!16719 (size!13523 Nil!16719) lt!536914 lt!536914 (size!13523 lt!536914)))))

(declare-fun res!692755 () Bool)

(declare-fun isEmpty!10078 (List!16787) Bool)

(assert (=> b!1549839 (= res!692755 (isEmpty!10078 (_1!9327 lt!536916)))))

(assert (=> b!1549839 (=> res!692755 e!993723)))

(assert (=> b!1549839 e!993723))

(declare-fun lt!536921 () Unit!25995)

(declare-fun lemmaInv!415 (TokenValueInjection!5702) Unit!25995)

(assert (=> b!1549839 (= lt!536921 (lemmaInv!415 (transformation!2931 rule!240)))))

(declare-fun lt!536919 () Unit!25995)

(declare-fun ForallOf!202 (Int BalanceConc!11040) Unit!25995)

(assert (=> b!1549839 (= lt!536919 (ForallOf!202 lambda!65623 (_1!9331 (_1!9332 lt!536918))))))

(assert (=> b!1549839 (= lt!536913 (list!6472 (_1!9331 (_1!9332 lt!536918))))))

(declare-fun lt!536929 () BalanceConc!11040)

(declare-fun seqFromList!1765 (List!16787) BalanceConc!11040)

(assert (=> b!1549839 (= lt!536929 (seqFromList!1765 lt!536913))))

(declare-fun lt!536927 () Unit!25995)

(assert (=> b!1549839 (= lt!536927 (ForallOf!202 lambda!65623 lt!536929))))

(declare-fun apply!4101 (TokenValueInjection!5702 BalanceConc!11040) TokenValue!3021)

(assert (=> b!1549839 (= lt!536925 (apply!4101 (transformation!2931 rule!240) (_1!9331 (_1!9332 lt!536918))))))

(declare-fun size!13524 (BalanceConc!11040) Int)

(assert (=> b!1549839 (= lt!536922 (size!13524 (_1!9331 (_1!9332 lt!536918))))))

(declare-fun lt!536926 () Unit!25995)

(declare-fun lemmaEqSameImage!145 (TokenValueInjection!5702 BalanceConc!11040 BalanceConc!11040) Unit!25995)

(assert (=> b!1549839 (= lt!536926 (lemmaEqSameImage!145 (transformation!2931 rule!240) (_1!9331 (_1!9332 lt!536918)) lt!536929))))

(declare-fun b!1549840 () Bool)

(declare-fun e!993742 () Bool)

(declare-fun lt!536920 () MutLongMap!1749)

(assert (=> b!1549840 (= e!993742 (and e!993724 ((_ is LongMap!1749) lt!536920)))))

(assert (=> b!1549840 (= lt!536920 (v!23545 (underlying!3708 (cache!2074 cacheFurthestNullable!103))))))

(declare-fun b!1549841 () Bool)

(declare-fun e!993747 () Bool)

(declare-fun e!993743 () Bool)

(declare-fun lt!536928 () MutLongMap!1751)

(assert (=> b!1549841 (= e!993747 (and e!993743 ((_ is LongMap!1751) lt!536928)))))

(assert (=> b!1549841 (= lt!536928 (v!23549 (underlying!3712 (cache!2076 cacheUp!755))))))

(declare-fun b!1549842 () Bool)

(declare-fun e!993719 () Bool)

(assert (=> b!1549842 (= e!993743 e!993719)))

(declare-fun b!1549843 () Bool)

(assert (=> b!1549843 (= e!993748 None!3015)))

(declare-fun b!1549830 () Bool)

(declare-fun e!993741 () Bool)

(assert (=> b!1549830 (= e!993745 e!993741)))

(declare-fun res!692752 () Bool)

(assert (=> start!143626 (=> (not res!692752) (not e!993731))))

(declare-datatypes ((LexerInterface!2570 0))(
  ( (LexerInterfaceExt!2567 (__x!11019 Int)) (Lexer!2568) )
))
(declare-fun thiss!16438 () LexerInterface!2570)

(assert (=> start!143626 (= res!692752 ((_ is Lexer!2568) thiss!16438))))

(assert (=> start!143626 e!993731))

(assert (=> start!143626 (and (inv!21977 totalInput!568) e!993721)))

(declare-fun e!993750 () Bool)

(declare-fun inv!21978 (CacheUp!1028) Bool)

(assert (=> start!143626 (and (inv!21978 cacheUp!755) e!993750)))

(declare-fun inv!21979 (CacheFurthestNullable!454) Bool)

(assert (=> start!143626 (and (inv!21979 cacheFurthestNullable!103) e!993722)))

(declare-fun e!993727 () Bool)

(assert (=> start!143626 (and (inv!21977 input!1676) e!993727)))

(assert (=> start!143626 e!993726))

(declare-fun e!993732 () Bool)

(declare-fun inv!21980 (CacheDown!1032) Bool)

(assert (=> start!143626 (and (inv!21980 cacheDown!768) e!993732)))

(assert (=> start!143626 true))

(declare-fun b!1549844 () Bool)

(declare-fun res!692749 () Bool)

(assert (=> b!1549844 (=> (not res!692749) (not e!993731))))

(declare-fun ruleValid!673 (LexerInterface!2570 Rule!5662) Bool)

(assert (=> b!1549844 (= res!692749 (ruleValid!673 thiss!16438 rule!240))))

(declare-fun e!993730 () Bool)

(declare-fun e!993751 () Bool)

(declare-fun tp!452570 () Bool)

(declare-fun tp!452561 () Bool)

(declare-fun array_inv!1930 (array!6014) Bool)

(declare-fun array_inv!1931 (array!6018) Bool)

(assert (=> b!1549845 (= e!993751 (and tp!452549 tp!452570 tp!452561 (array_inv!1930 (_keys!2045 (v!23548 (underlying!3711 (v!23549 (underlying!3712 (cache!2076 cacheUp!755))))))) (array_inv!1931 (_values!2030 (v!23548 (underlying!3711 (v!23549 (underlying!3712 (cache!2076 cacheUp!755))))))) e!993730))))

(declare-fun mapIsEmpty!8138 () Bool)

(assert (=> mapIsEmpty!8138 mapRes!8137))

(declare-fun b!1549846 () Bool)

(declare-fun e!993725 () Bool)

(assert (=> b!1549846 (= e!993750 e!993725)))

(declare-fun b!1549847 () Bool)

(declare-fun res!692754 () Bool)

(assert (=> b!1549847 (=> (not res!692754) (not e!993731))))

(declare-fun valid!1407 (CacheDown!1032) Bool)

(assert (=> b!1549847 (= res!692754 (valid!1407 cacheDown!768))))

(assert (=> b!1549848 (= e!993736 (and e!993742 tp!452558))))

(declare-fun b!1549849 () Bool)

(declare-fun tp!452551 () Bool)

(assert (=> b!1549849 (= e!993727 (and (inv!21975 (c!252217 input!1676)) tp!452551))))

(declare-fun b!1549850 () Bool)

(assert (=> b!1549850 (= e!993719 e!993751)))

(declare-fun b!1549851 () Bool)

(declare-fun e!993718 () Bool)

(declare-fun e!993733 () Bool)

(assert (=> b!1549851 (= e!993718 e!993733)))

(assert (=> b!1549852 (= e!993725 (and e!993747 tp!452565))))

(declare-fun b!1549853 () Bool)

(assert (=> b!1549853 (= e!993728 e!993718)))

(declare-fun b!1549854 () Bool)

(assert (=> b!1549854 (= e!993738 false)))

(declare-datatypes ((tuple2!16074 0))(
  ( (tuple2!16075 (_1!9333 Token!5454) (_2!9333 List!16787)) )
))
(declare-datatypes ((Option!3017 0))(
  ( (None!3016) (Some!3016 (v!23551 tuple2!16074)) )
))
(declare-fun lt!536923 () Option!3017)

(declare-fun maxPrefixOneRule!693 (LexerInterface!2570 Rule!5662 List!16787) Option!3017)

(assert (=> b!1549854 (= lt!536923 (maxPrefixOneRule!693 thiss!16438 rule!240 lt!536914))))

(declare-fun lt!536915 () Option!3016)

(assert (=> b!1549854 (= lt!536915 e!993748)))

(declare-fun c!252216 () Bool)

(declare-fun isEmpty!10079 (BalanceConc!11040) Bool)

(assert (=> b!1549854 (= c!252216 (isEmpty!10079 (_1!9331 (_1!9332 lt!536918))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!37 (Regex!4259 BalanceConc!11040 BalanceConc!11040 CacheUp!1028 CacheDown!1032 CacheFurthestNullable!454) tuple4!864)

(assert (=> b!1549854 (= lt!536918 (findLongestMatchWithZipperSequenceV3Mem!37 (regex!2931 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun e!993737 () Bool)

(assert (=> b!1549855 (= e!993737 (and e!993740 tp!452568))))

(declare-fun b!1549856 () Bool)

(declare-fun tp!452566 () Bool)

(assert (=> b!1549856 (= e!993730 (and tp!452566 mapRes!8137))))

(declare-fun condMapEmpty!8137 () Bool)

(declare-fun mapDefault!8136 () List!16791)

(assert (=> b!1549856 (= condMapEmpty!8137 (= (arr!2686 (_values!2030 (v!23548 (underlying!3711 (v!23549 (underlying!3712 (cache!2076 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16791)) mapDefault!8136)))))

(declare-fun b!1549857 () Bool)

(declare-fun res!692750 () Bool)

(assert (=> b!1549857 (=> (not res!692750) (not e!993731))))

(declare-fun valid!1408 (CacheUp!1028) Bool)

(assert (=> b!1549857 (= res!692750 (valid!1408 cacheUp!755))))

(declare-fun b!1549858 () Bool)

(declare-fun tp!452559 () Bool)

(assert (=> b!1549858 (= e!993744 (and (inv!21975 (c!252217 (totalInput!2430 cacheFurthestNullable!103))) tp!452559))))

(declare-fun tp!452567 () Bool)

(declare-fun tp!452555 () Bool)

(declare-fun array_inv!1932 (array!6012) Bool)

(assert (=> b!1549859 (= e!993741 (and tp!452556 tp!452567 tp!452555 (array_inv!1930 (_keys!2043 (v!23544 (underlying!3707 (v!23545 (underlying!3708 (cache!2074 cacheFurthestNullable!103))))))) (array_inv!1932 (_values!2028 (v!23544 (underlying!3707 (v!23545 (underlying!3708 (cache!2074 cacheFurthestNullable!103))))))) e!993749))))

(declare-fun mapNonEmpty!8138 () Bool)

(declare-fun tp!452562 () Bool)

(declare-fun tp!452572 () Bool)

(assert (=> mapNonEmpty!8138 (= mapRes!8138 (and tp!452562 tp!452572))))

(declare-fun mapValue!8138 () List!16790)

(declare-fun mapRest!8138 () (Array (_ BitVec 32) List!16790))

(declare-fun mapKey!8138 () (_ BitVec 32))

(assert (=> mapNonEmpty!8138 (= (arr!2685 (_values!2029 (v!23546 (underlying!3709 (v!23547 (underlying!3710 (cache!2075 cacheDown!768))))))) (store mapRest!8138 mapKey!8138 mapValue!8138))))

(declare-fun b!1549860 () Bool)

(assert (=> b!1549860 (= e!993732 e!993737)))

(declare-fun tp!452564 () Bool)

(declare-fun tp!452552 () Bool)

(declare-fun array_inv!1933 (array!6016) Bool)

(assert (=> b!1549861 (= e!993733 (and tp!452548 tp!452564 tp!452552 (array_inv!1930 (_keys!2044 (v!23546 (underlying!3709 (v!23547 (underlying!3710 (cache!2075 cacheDown!768))))))) (array_inv!1933 (_values!2029 (v!23546 (underlying!3709 (v!23547 (underlying!3710 (cache!2075 cacheDown!768))))))) e!993729))))

(assert (= (and start!143626 res!692752) b!1549844))

(assert (= (and b!1549844 res!692749) b!1549857))

(assert (= (and b!1549857 res!692750) b!1549847))

(assert (= (and b!1549847 res!692754) b!1549832))

(assert (= (and b!1549832 res!692751) b!1549838))

(assert (= (and b!1549838 res!692748) b!1549831))

(assert (= (and b!1549831 res!692753) b!1549854))

(assert (= (and b!1549854 c!252216) b!1549843))

(assert (= (and b!1549854 (not c!252216)) b!1549839))

(assert (= (and b!1549839 (not res!692755)) b!1549828))

(assert (= start!143626 b!1549829))

(assert (= (and b!1549856 condMapEmpty!8137) mapIsEmpty!8138))

(assert (= (and b!1549856 (not condMapEmpty!8137)) mapNonEmpty!8136))

(assert (= b!1549845 b!1549856))

(assert (= b!1549850 b!1549845))

(assert (= b!1549842 b!1549850))

(assert (= (and b!1549841 ((_ is LongMap!1751) (v!23549 (underlying!3712 (cache!2076 cacheUp!755))))) b!1549842))

(assert (= b!1549852 b!1549841))

(assert (= (and b!1549846 ((_ is HashMap!1695) (cache!2076 cacheUp!755))) b!1549852))

(assert (= start!143626 b!1549846))

(assert (= (and b!1549826 condMapEmpty!8136) mapIsEmpty!8136))

(assert (= (and b!1549826 (not condMapEmpty!8136)) mapNonEmpty!8137))

(assert (= b!1549859 b!1549826))

(assert (= b!1549830 b!1549859))

(assert (= b!1549835 b!1549830))

(assert (= (and b!1549840 ((_ is LongMap!1749) (v!23545 (underlying!3708 (cache!2074 cacheFurthestNullable!103))))) b!1549835))

(assert (= b!1549848 b!1549840))

(assert (= (and b!1549836 ((_ is HashMap!1693) (cache!2074 cacheFurthestNullable!103))) b!1549848))

(assert (= b!1549836 b!1549858))

(assert (= start!143626 b!1549836))

(assert (= start!143626 b!1549849))

(assert (= b!1549834 b!1549837))

(assert (= start!143626 b!1549834))

(assert (= (and b!1549827 condMapEmpty!8138) mapIsEmpty!8137))

(assert (= (and b!1549827 (not condMapEmpty!8138)) mapNonEmpty!8138))

(assert (= b!1549861 b!1549827))

(assert (= b!1549851 b!1549861))

(assert (= b!1549853 b!1549851))

(assert (= (and b!1549833 ((_ is LongMap!1750) (v!23547 (underlying!3710 (cache!2075 cacheDown!768))))) b!1549853))

(assert (= b!1549855 b!1549833))

(assert (= (and b!1549860 ((_ is HashMap!1694) (cache!2075 cacheDown!768))) b!1549855))

(assert (= start!143626 b!1549860))

(declare-fun m!1822693 () Bool)

(assert (=> b!1549829 m!1822693))

(declare-fun m!1822695 () Bool)

(assert (=> mapNonEmpty!8138 m!1822695))

(declare-fun m!1822697 () Bool)

(assert (=> mapNonEmpty!8136 m!1822697))

(declare-fun m!1822699 () Bool)

(assert (=> b!1549854 m!1822699))

(declare-fun m!1822701 () Bool)

(assert (=> b!1549854 m!1822701))

(declare-fun m!1822703 () Bool)

(assert (=> b!1549854 m!1822703))

(declare-fun m!1822705 () Bool)

(assert (=> b!1549858 m!1822705))

(declare-fun m!1822707 () Bool)

(assert (=> start!143626 m!1822707))

(declare-fun m!1822709 () Bool)

(assert (=> start!143626 m!1822709))

(declare-fun m!1822711 () Bool)

(assert (=> start!143626 m!1822711))

(declare-fun m!1822713 () Bool)

(assert (=> start!143626 m!1822713))

(declare-fun m!1822715 () Bool)

(assert (=> start!143626 m!1822715))

(declare-fun m!1822717 () Bool)

(assert (=> b!1549845 m!1822717))

(declare-fun m!1822719 () Bool)

(assert (=> b!1549845 m!1822719))

(declare-fun m!1822721 () Bool)

(assert (=> mapNonEmpty!8137 m!1822721))

(declare-fun m!1822723 () Bool)

(assert (=> b!1549834 m!1822723))

(declare-fun m!1822725 () Bool)

(assert (=> b!1549834 m!1822725))

(declare-fun m!1822727 () Bool)

(assert (=> b!1549838 m!1822727))

(assert (=> b!1549838 m!1822727))

(declare-fun m!1822729 () Bool)

(assert (=> b!1549838 m!1822729))

(declare-fun m!1822731 () Bool)

(assert (=> b!1549838 m!1822731))

(declare-fun m!1822733 () Bool)

(assert (=> b!1549832 m!1822733))

(declare-fun m!1822735 () Bool)

(assert (=> b!1549828 m!1822735))

(declare-fun m!1822737 () Bool)

(assert (=> b!1549839 m!1822737))

(declare-fun m!1822739 () Bool)

(assert (=> b!1549839 m!1822739))

(declare-fun m!1822741 () Bool)

(assert (=> b!1549839 m!1822741))

(declare-fun m!1822743 () Bool)

(assert (=> b!1549839 m!1822743))

(declare-fun m!1822745 () Bool)

(assert (=> b!1549839 m!1822745))

(assert (=> b!1549839 m!1822739))

(assert (=> b!1549839 m!1822737))

(declare-fun m!1822747 () Bool)

(assert (=> b!1549839 m!1822747))

(declare-fun m!1822749 () Bool)

(assert (=> b!1549839 m!1822749))

(declare-fun m!1822751 () Bool)

(assert (=> b!1549839 m!1822751))

(declare-fun m!1822753 () Bool)

(assert (=> b!1549839 m!1822753))

(declare-fun m!1822755 () Bool)

(assert (=> b!1549839 m!1822755))

(declare-fun m!1822757 () Bool)

(assert (=> b!1549839 m!1822757))

(declare-fun m!1822759 () Bool)

(assert (=> b!1549839 m!1822759))

(declare-fun m!1822761 () Bool)

(assert (=> b!1549839 m!1822761))

(declare-fun m!1822763 () Bool)

(assert (=> b!1549861 m!1822763))

(declare-fun m!1822765 () Bool)

(assert (=> b!1549861 m!1822765))

(declare-fun m!1822767 () Bool)

(assert (=> b!1549836 m!1822767))

(declare-fun m!1822769 () Bool)

(assert (=> b!1549844 m!1822769))

(declare-fun m!1822771 () Bool)

(assert (=> b!1549857 m!1822771))

(declare-fun m!1822773 () Bool)

(assert (=> b!1549849 m!1822773))

(declare-fun m!1822775 () Bool)

(assert (=> b!1549859 m!1822775))

(declare-fun m!1822777 () Bool)

(assert (=> b!1549859 m!1822777))

(declare-fun m!1822779 () Bool)

(assert (=> b!1549847 m!1822779))

(check-sat (not b_next!41775) (not b!1549839) (not b!1549858) b_and!108161 b_and!108159 (not b!1549829) (not b!1549838) (not mapNonEmpty!8136) (not b!1549849) (not b!1549828) (not b!1549861) b_and!108151 b_and!108163 (not b!1549832) (not b!1549857) (not mapNonEmpty!8138) (not b!1549826) (not b!1549836) (not b_next!41773) (not start!143626) (not b!1549845) b_and!108149 b_and!108157 (not b_next!41769) (not b!1549844) b_and!108153 (not b_next!41777) (not mapNonEmpty!8137) (not b_next!41763) (not b_next!41771) (not b!1549827) (not b_next!41767) b_and!108155 (not b!1549856) (not b!1549859) (not b_next!41765) (not b!1549847) (not b!1549834) (not b!1549854))
(check-sat (not b_next!41775) (not b_next!41773) b_and!108149 b_and!108161 b_and!108159 (not b_next!41763) (not b_next!41771) (not b_next!41765) b_and!108151 b_and!108163 b_and!108157 (not b_next!41769) b_and!108153 (not b_next!41777) (not b_next!41767) b_and!108155)
