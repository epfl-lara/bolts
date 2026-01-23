; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144864 () Bool)

(assert start!144864)

(declare-fun b!1560779 () Bool)

(declare-fun b_free!41671 () Bool)

(declare-fun b_next!42375 () Bool)

(assert (=> b!1560779 (= b_free!41671 (not b_next!42375))))

(declare-fun tp!459164 () Bool)

(declare-fun b_and!108945 () Bool)

(assert (=> b!1560779 (= tp!459164 b_and!108945)))

(declare-fun b!1560754 () Bool)

(declare-fun b_free!41673 () Bool)

(declare-fun b_next!42377 () Bool)

(assert (=> b!1560754 (= b_free!41673 (not b_next!42377))))

(declare-fun tp!459176 () Bool)

(declare-fun b_and!108947 () Bool)

(assert (=> b!1560754 (= tp!459176 b_and!108947)))

(declare-fun b!1560781 () Bool)

(declare-fun b_free!41675 () Bool)

(declare-fun b_next!42379 () Bool)

(assert (=> b!1560781 (= b_free!41675 (not b_next!42379))))

(declare-fun tp!459173 () Bool)

(declare-fun b_and!108949 () Bool)

(assert (=> b!1560781 (= tp!459173 b_and!108949)))

(declare-fun b!1560756 () Bool)

(declare-fun b_free!41677 () Bool)

(declare-fun b_next!42381 () Bool)

(assert (=> b!1560756 (= b_free!41677 (not b_next!42381))))

(declare-fun tp!459156 () Bool)

(declare-fun b_and!108951 () Bool)

(assert (=> b!1560756 (= tp!459156 b_and!108951)))

(declare-fun b!1560763 () Bool)

(declare-fun b_free!41679 () Bool)

(declare-fun b_next!42383 () Bool)

(assert (=> b!1560763 (= b_free!41679 (not b_next!42383))))

(declare-fun tp!459158 () Bool)

(declare-fun b_and!108953 () Bool)

(assert (=> b!1560763 (= tp!459158 b_and!108953)))

(declare-fun b_free!41681 () Bool)

(declare-fun b_next!42385 () Bool)

(assert (=> b!1560763 (= b_free!41681 (not b_next!42385))))

(declare-fun tp!459165 () Bool)

(declare-fun b_and!108955 () Bool)

(assert (=> b!1560763 (= tp!459165 b_and!108955)))

(declare-fun b!1560764 () Bool)

(declare-fun b_free!41683 () Bool)

(declare-fun b_next!42387 () Bool)

(assert (=> b!1560764 (= b_free!41683 (not b_next!42387))))

(declare-fun tp!459161 () Bool)

(declare-fun b_and!108957 () Bool)

(assert (=> b!1560764 (= tp!459161 b_and!108957)))

(declare-fun b!1560776 () Bool)

(declare-fun b_free!41685 () Bool)

(declare-fun b_next!42389 () Bool)

(assert (=> b!1560776 (= b_free!41685 (not b_next!42389))))

(declare-fun tp!459172 () Bool)

(declare-fun b_and!108959 () Bool)

(assert (=> b!1560776 (= tp!459172 b_and!108959)))

(declare-fun b!1560796 () Bool)

(declare-fun e!1002174 () Bool)

(assert (=> b!1560796 (= e!1002174 true)))

(declare-fun b!1560795 () Bool)

(declare-fun e!1002173 () Bool)

(assert (=> b!1560795 (= e!1002173 e!1002174)))

(declare-fun b!1560778 () Bool)

(assert (=> b!1560778 e!1002173))

(assert (= b!1560795 b!1560796))

(assert (= b!1560778 b!1560795))

(declare-fun lambda!66032 () Int)

(declare-fun order!10017 () Int)

(declare-fun order!10019 () Int)

(declare-datatypes ((List!16996 0))(
  ( (Nil!16928) (Cons!16928 (h!22329 (_ BitVec 16)) (t!141525 List!16996)) )
))
(declare-datatypes ((TokenValue!3057 0))(
  ( (FloatLiteralValue!6114 (text!21844 List!16996)) (TokenValueExt!3056 (__x!11380 Int)) (Broken!15285 (value!94166 List!16996)) (Object!3124) (End!3057) (Def!3057) (Underscore!3057) (Match!3057) (Else!3057) (Error!3057) (Case!3057) (If!3057) (Extends!3057) (Abstract!3057) (Class!3057) (Val!3057) (DelimiterValue!6114 (del!3117 List!16996)) (KeywordValue!3063 (value!94167 List!16996)) (CommentValue!6114 (value!94168 List!16996)) (WhitespaceValue!6114 (value!94169 List!16996)) (IndentationValue!3057 (value!94170 List!16996)) (String!19572) (Int32!3057) (Broken!15286 (value!94171 List!16996)) (Boolean!3058) (Unit!26141) (OperatorValue!3060 (op!3117 List!16996)) (IdentifierValue!6114 (value!94172 List!16996)) (IdentifierValue!6115 (value!94173 List!16996)) (WhitespaceValue!6115 (value!94174 List!16996)) (True!6114) (False!6114) (Broken!15287 (value!94175 List!16996)) (Broken!15288 (value!94176 List!16996)) (True!6115) (RightBrace!3057) (RightBracket!3057) (Colon!3057) (Null!3057) (Comma!3057) (LeftBracket!3057) (False!6115) (LeftBrace!3057) (ImaginaryLiteralValue!3057 (text!21845 List!16996)) (StringLiteralValue!9171 (value!94177 List!16996)) (EOFValue!3057 (value!94178 List!16996)) (IdentValue!3057 (value!94179 List!16996)) (DelimiterValue!6115 (value!94180 List!16996)) (DedentValue!3057 (value!94181 List!16996)) (NewLineValue!3057 (value!94182 List!16996)) (IntegerValue!9171 (value!94183 (_ BitVec 32)) (text!21846 List!16996)) (IntegerValue!9172 (value!94184 Int) (text!21847 List!16996)) (Times!3057) (Or!3057) (Equal!3057) (Minus!3057) (Broken!15289 (value!94185 List!16996)) (And!3057) (Div!3057) (LessEqual!3057) (Mod!3057) (Concat!7352) (Not!3057) (Plus!3057) (SpaceValue!3057 (value!94186 List!16996)) (IntegerValue!9173 (value!94187 Int) (text!21848 List!16996)) (StringLiteralValue!9172 (text!21849 List!16996)) (FloatLiteralValue!6115 (text!21850 List!16996)) (BytesLiteralValue!3057 (value!94188 List!16996)) (CommentValue!6115 (value!94189 List!16996)) (StringLiteralValue!9173 (value!94190 List!16996)) (ErrorTokenValue!3057 (msg!3118 List!16996)) )
))
(declare-datatypes ((C!8768 0))(
  ( (C!8769 (val!4956 Int)) )
))
(declare-datatypes ((List!16997 0))(
  ( (Nil!16929) (Cons!16929 (h!22330 C!8768) (t!141526 List!16997)) )
))
(declare-datatypes ((IArray!11175 0))(
  ( (IArray!11176 (innerList!5645 List!16997)) )
))
(declare-datatypes ((Conc!5585 0))(
  ( (Node!5585 (left!13735 Conc!5585) (right!14065 Conc!5585) (csize!11400 Int) (cheight!5796 Int)) (Leaf!8278 (xs!8385 IArray!11175) (csize!11401 Int)) (Empty!5585) )
))
(declare-datatypes ((BalanceConc!11112 0))(
  ( (BalanceConc!11113 (c!253139 Conc!5585)) )
))
(declare-datatypes ((Regex!4295 0))(
  ( (ElementMatch!4295 (c!253140 C!8768)) (Concat!7353 (regOne!9102 Regex!4295) (regTwo!9102 Regex!4295)) (EmptyExpr!4295) (Star!4295 (reg!4624 Regex!4295)) (EmptyLang!4295) (Union!4295 (regOne!9103 Regex!4295) (regTwo!9103 Regex!4295)) )
))
(declare-datatypes ((String!19573 0))(
  ( (String!19574 (value!94191 String)) )
))
(declare-datatypes ((TokenValueInjection!5774 0))(
  ( (TokenValueInjection!5775 (toValue!4346 Int) (toChars!4205 Int)) )
))
(declare-datatypes ((Rule!5734 0))(
  ( (Rule!5735 (regex!2967 Regex!4295) (tag!3231 String!19573) (isSeparator!2967 Bool) (transformation!2967 TokenValueInjection!5774)) )
))
(declare-fun rule!240 () Rule!5734)

(declare-fun dynLambda!7536 (Int Int) Int)

(declare-fun dynLambda!7537 (Int Int) Int)

(assert (=> b!1560796 (< (dynLambda!7536 order!10017 (toValue!4346 (transformation!2967 rule!240))) (dynLambda!7537 order!10019 lambda!66032))))

(declare-fun order!10021 () Int)

(declare-fun dynLambda!7538 (Int Int) Int)

(assert (=> b!1560796 (< (dynLambda!7538 order!10021 (toChars!4205 (transformation!2967 rule!240))) (dynLambda!7537 order!10019 lambda!66032))))

(declare-fun b!1560747 () Bool)

(declare-fun res!695989 () Bool)

(declare-fun e!1002143 () Bool)

(assert (=> b!1560747 (=> res!695989 e!1002143)))

(declare-fun lt!540541 () Bool)

(assert (=> b!1560747 (= res!695989 (not lt!540541))))

(declare-fun b!1560748 () Bool)

(declare-fun e!1002152 () Bool)

(declare-fun e!1002148 () Bool)

(assert (=> b!1560748 (= e!1002152 e!1002148)))

(declare-fun b!1560749 () Bool)

(declare-fun e!1002166 () Bool)

(assert (=> b!1560749 (= e!1002148 e!1002166)))

(declare-fun b!1560751 () Bool)

(declare-fun res!695982 () Bool)

(declare-fun e!1002161 () Bool)

(assert (=> b!1560751 (=> (not res!695982) (not e!1002161))))

(declare-datatypes ((List!16998 0))(
  ( (Nil!16930) (Cons!16930 (h!22331 Regex!4295) (t!141527 List!16998)) )
))
(declare-datatypes ((Context!1626 0))(
  ( (Context!1627 (exprs!1313 List!16998)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1860 0))(
  ( (tuple3!1861 (_1!9652 (InoxSet Context!1626)) (_2!9652 Int) (_3!1391 Int)) )
))
(declare-datatypes ((tuple2!16522 0))(
  ( (tuple2!16523 (_1!9653 tuple3!1860) (_2!9653 Int)) )
))
(declare-datatypes ((List!16999 0))(
  ( (Nil!16931) (Cons!16931 (h!22332 tuple2!16522) (t!141528 List!16999)) )
))
(declare-datatypes ((array!6344 0))(
  ( (array!6345 (arr!2821 (Array (_ BitVec 32) List!16999)) (size!13734 (_ BitVec 32))) )
))
(declare-datatypes ((array!6346 0))(
  ( (array!6347 (arr!2822 (Array (_ BitVec 32) (_ BitVec 64))) (size!13735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3702 0))(
  ( (LongMapFixedSize!3703 (defaultEntry!2211 Int) (mask!5087 (_ BitVec 32)) (extraKeys!2098 (_ BitVec 32)) (zeroValue!2108 List!16999) (minValue!2108 List!16999) (_size!3783 (_ BitVec 32)) (_keys!2145 array!6346) (_values!2130 array!6344) (_vacant!1912 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7289 0))(
  ( (Cell!7290 (v!23791 LongMapFixedSize!3702)) )
))
(declare-datatypes ((Hashable!1795 0))(
  ( (HashableExt!1794 (__x!11381 Int)) )
))
(declare-datatypes ((MutLongMap!1851 0))(
  ( (LongMap!1851 (underlying!3911 Cell!7289)) (MutLongMapExt!1850 (__x!11382 Int)) )
))
(declare-datatypes ((Cell!7291 0))(
  ( (Cell!7292 (v!23792 MutLongMap!1851)) )
))
(declare-datatypes ((MutableMap!1795 0))(
  ( (MutableMapExt!1794 (__x!11383 Int)) (HashMap!1795 (underlying!3912 Cell!7291) (hashF!3714 Hashable!1795) (_size!3784 (_ BitVec 32)) (defaultValue!1955 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!522 0))(
  ( (CacheFurthestNullable!523 (cache!2176 MutableMap!1795) (totalInput!2497 BalanceConc!11112)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!522)

(declare-fun valid!1483 (CacheFurthestNullable!522) Bool)

(assert (=> b!1560751 (= res!695982 (valid!1483 cacheFurthestNullable!103))))

(declare-fun mapNonEmpty!8622 () Bool)

(declare-fun mapRes!8623 () Bool)

(declare-fun tp!459159 () Bool)

(declare-fun tp!459160 () Bool)

(assert (=> mapNonEmpty!8622 (= mapRes!8623 (and tp!459159 tp!459160))))

(declare-datatypes ((tuple2!16524 0))(
  ( (tuple2!16525 (_1!9654 Context!1626) (_2!9654 C!8768)) )
))
(declare-datatypes ((tuple2!16526 0))(
  ( (tuple2!16527 (_1!9655 tuple2!16524) (_2!9655 (InoxSet Context!1626))) )
))
(declare-datatypes ((List!17000 0))(
  ( (Nil!16932) (Cons!16932 (h!22333 tuple2!16526) (t!141529 List!17000)) )
))
(declare-datatypes ((array!6348 0))(
  ( (array!6349 (arr!2823 (Array (_ BitVec 32) List!17000)) (size!13736 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1796 0))(
  ( (HashableExt!1795 (__x!11384 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3704 0))(
  ( (LongMapFixedSize!3705 (defaultEntry!2212 Int) (mask!5088 (_ BitVec 32)) (extraKeys!2099 (_ BitVec 32)) (zeroValue!2109 List!17000) (minValue!2109 List!17000) (_size!3785 (_ BitVec 32)) (_keys!2146 array!6346) (_values!2131 array!6348) (_vacant!1913 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7293 0))(
  ( (Cell!7294 (v!23793 LongMapFixedSize!3704)) )
))
(declare-datatypes ((MutLongMap!1852 0))(
  ( (LongMap!1852 (underlying!3913 Cell!7293)) (MutLongMapExt!1851 (__x!11385 Int)) )
))
(declare-datatypes ((Cell!7295 0))(
  ( (Cell!7296 (v!23794 MutLongMap!1852)) )
))
(declare-datatypes ((MutableMap!1796 0))(
  ( (MutableMapExt!1795 (__x!11386 Int)) (HashMap!1796 (underlying!3914 Cell!7295) (hashF!3715 Hashable!1796) (_size!3786 (_ BitVec 32)) (defaultValue!1956 Int)) )
))
(declare-datatypes ((CacheUp!1094 0))(
  ( (CacheUp!1095 (cache!2177 MutableMap!1796)) )
))
(declare-fun cacheUp!755 () CacheUp!1094)

(declare-fun mapRest!8623 () (Array (_ BitVec 32) List!17000))

(declare-fun mapValue!8622 () List!17000)

(declare-fun mapKey!8624 () (_ BitVec 32))

(assert (=> mapNonEmpty!8622 (= (arr!2823 (_values!2131 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) (store mapRest!8623 mapKey!8624 mapValue!8622))))

(declare-fun b!1560752 () Bool)

(declare-fun e!1002158 () Bool)

(declare-fun e!1002146 () Bool)

(assert (=> b!1560752 (= e!1002158 (not e!1002146))))

(declare-fun res!695987 () Bool)

(assert (=> b!1560752 (=> res!695987 e!1002146)))

(declare-fun semiInverseModEq!1124 (Int Int) Bool)

(assert (=> b!1560752 (= res!695987 (not (semiInverseModEq!1124 (toChars!4205 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240)))))))

(declare-datatypes ((Unit!26142 0))(
  ( (Unit!26143) )
))
(declare-fun lt!540550 () Unit!26142)

(declare-fun lemmaInv!437 (TokenValueInjection!5774) Unit!26142)

(assert (=> b!1560752 (= lt!540550 (lemmaInv!437 (transformation!2967 rule!240)))))

(declare-fun e!1002167 () Bool)

(assert (=> b!1560752 e!1002167))

(declare-fun res!695992 () Bool)

(assert (=> b!1560752 (=> res!695992 e!1002167)))

(declare-datatypes ((tuple2!16528 0))(
  ( (tuple2!16529 (_1!9656 List!16997) (_2!9656 List!16997)) )
))
(declare-fun lt!540558 () tuple2!16528)

(declare-fun isEmpty!10160 (List!16997) Bool)

(assert (=> b!1560752 (= res!695992 (isEmpty!10160 (_1!9656 lt!540558)))))

(declare-fun lt!540557 () List!16997)

(declare-fun findLongestMatchInner!343 (Regex!4295 List!16997 Int List!16997 List!16997 Int) tuple2!16528)

(declare-fun size!13737 (List!16997) Int)

(assert (=> b!1560752 (= lt!540558 (findLongestMatchInner!343 (regex!2967 rule!240) Nil!16929 (size!13737 Nil!16929) lt!540557 lt!540557 (size!13737 lt!540557)))))

(declare-fun lt!540543 () Unit!26142)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!327 (Regex!4295 List!16997) Unit!26142)

(assert (=> b!1560752 (= lt!540543 (longestMatchIsAcceptedByMatchOrIsEmpty!327 (regex!2967 rule!240) lt!540557))))

(declare-fun b!1560753 () Bool)

(declare-fun e!1002150 () Bool)

(declare-fun e!1002145 () Bool)

(assert (=> b!1560753 (= e!1002150 e!1002145)))

(declare-fun res!695993 () Bool)

(assert (=> b!1560753 (=> res!695993 e!1002145)))

(declare-fun lt!540559 () Int)

(declare-fun lt!540549 () List!16997)

(declare-datatypes ((Token!5502 0))(
  ( (Token!5503 (value!94192 TokenValue!3057) (rule!4751 Rule!5734) (size!13738 Int) (originalCharacters!3782 List!16997)) )
))
(declare-datatypes ((tuple2!16530 0))(
  ( (tuple2!16531 (_1!9657 Token!5502) (_2!9657 List!16997)) )
))
(declare-fun lt!540556 () tuple2!16530)

(declare-fun lt!540555 () TokenValue!3057)

(assert (=> b!1560753 (= res!695993 (or (not (= (value!94192 (_1!9657 lt!540556)) lt!540555)) (not (= (rule!4751 (_1!9657 lt!540556)) rule!240)) (not (= (size!13738 (_1!9657 lt!540556)) lt!540559)) (not (= (originalCharacters!3782 (_1!9657 lt!540556)) lt!540549))))))

(declare-datatypes ((Option!3059 0))(
  ( (None!3058) (Some!3058 (v!23795 tuple2!16530)) )
))
(declare-fun lt!540554 () Option!3059)

(declare-fun get!4871 (Option!3059) tuple2!16530)

(assert (=> b!1560753 (= lt!540556 (get!4871 lt!540554))))

(declare-fun e!1002139 () Bool)

(declare-fun e!1002142 () Bool)

(assert (=> b!1560754 (= e!1002139 (and e!1002142 tp!459176))))

(declare-fun b!1560755 () Bool)

(declare-fun e!1002156 () Bool)

(declare-fun e!1002141 () Bool)

(assert (=> b!1560755 (= e!1002156 e!1002141)))

(declare-fun e!1002149 () Bool)

(declare-fun e!1002155 () Bool)

(assert (=> b!1560756 (= e!1002149 (and e!1002155 tp!459156))))

(declare-fun mapNonEmpty!8623 () Bool)

(declare-fun mapRes!8624 () Bool)

(declare-fun tp!459171 () Bool)

(declare-fun tp!459157 () Bool)

(assert (=> mapNonEmpty!8623 (= mapRes!8624 (and tp!459171 tp!459157))))

(declare-fun mapRest!8624 () (Array (_ BitVec 32) List!16999))

(declare-fun mapKey!8622 () (_ BitVec 32))

(declare-fun mapValue!8623 () List!16999)

(assert (=> mapNonEmpty!8623 (= (arr!2821 (_values!2130 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) (store mapRest!8624 mapKey!8622 mapValue!8623))))

(declare-fun b!1560757 () Bool)

(declare-fun e!1002133 () Bool)

(assert (=> b!1560757 (= e!1002133 e!1002139)))

(declare-fun b!1560758 () Bool)

(declare-fun e!1002136 () Bool)

(declare-fun totalInput!568 () BalanceConc!11112)

(declare-fun tp!459177 () Bool)

(declare-fun inv!22231 (Conc!5585) Bool)

(assert (=> b!1560758 (= e!1002136 (and (inv!22231 (c!253139 totalInput!568)) tp!459177))))

(declare-fun e!1002138 () Bool)

(declare-fun e!1002151 () Bool)

(declare-fun b!1560759 () Bool)

(declare-fun e!1002162 () Bool)

(declare-fun inv!22232 (BalanceConc!11112) Bool)

(assert (=> b!1560759 (= e!1002151 (and e!1002138 (inv!22232 (totalInput!2497 cacheFurthestNullable!103)) e!1002162))))

(declare-fun b!1560760 () Bool)

(declare-fun e!1002157 () Bool)

(assert (=> b!1560760 (= e!1002157 e!1002156)))

(declare-fun b!1560761 () Bool)

(declare-fun e!1002154 () Bool)

(declare-fun e!1002160 () Bool)

(assert (=> b!1560761 (= e!1002154 e!1002160)))

(declare-fun b!1560762 () Bool)

(declare-fun res!695995 () Bool)

(assert (=> b!1560762 (=> res!695995 e!1002143)))

(declare-fun lt!540553 () BalanceConc!11112)

(declare-fun list!6516 (BalanceConc!11112) List!16997)

(assert (=> b!1560762 (= res!695995 (not (= (list!6516 lt!540553) lt!540549)))))

(declare-fun e!1002164 () Bool)

(assert (=> b!1560763 (= e!1002164 (and tp!459158 tp!459165))))

(declare-fun e!1002165 () Bool)

(assert (=> b!1560764 (= e!1002138 (and e!1002165 tp!459161))))

(declare-fun b!1560765 () Bool)

(declare-fun res!695984 () Bool)

(declare-fun e!1002134 () Bool)

(assert (=> b!1560765 (=> (not res!695984) (not e!1002134))))

(assert (=> b!1560765 (= res!695984 (= (totalInput!2497 cacheFurthestNullable!103) totalInput!568))))

(declare-fun mapIsEmpty!8622 () Bool)

(declare-fun mapRes!8622 () Bool)

(assert (=> mapIsEmpty!8622 mapRes!8622))

(declare-fun b!1560766 () Bool)

(declare-fun e!1002131 () Bool)

(declare-fun tp!459155 () Bool)

(assert (=> b!1560766 (= e!1002131 (and tp!459155 mapRes!8623))))

(declare-fun condMapEmpty!8623 () Bool)

(declare-fun mapDefault!8622 () List!17000)

(assert (=> b!1560766 (= condMapEmpty!8623 (= (arr!2823 (_values!2131 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!17000)) mapDefault!8622)))))

(declare-fun b!1560767 () Bool)

(declare-fun tp!459178 () Bool)

(assert (=> b!1560767 (= e!1002162 (and (inv!22231 (c!253139 (totalInput!2497 cacheFurthestNullable!103))) tp!459178))))

(declare-fun b!1560768 () Bool)

(assert (=> b!1560768 (= e!1002143 e!1002150)))

(declare-fun res!695991 () Bool)

(assert (=> b!1560768 (=> res!695991 e!1002150)))

(declare-fun apply!4121 (TokenValueInjection!5774 BalanceConc!11112) TokenValue!3057)

(assert (=> b!1560768 (= res!695991 (not (= (apply!4121 (transformation!2967 rule!240) lt!540553) lt!540555)))))

(declare-datatypes ((tuple3!1862 0))(
  ( (tuple3!1863 (_1!9658 Regex!4295) (_2!9658 Context!1626) (_3!1392 C!8768)) )
))
(declare-datatypes ((tuple2!16532 0))(
  ( (tuple2!16533 (_1!9659 tuple3!1862) (_2!9659 (InoxSet Context!1626))) )
))
(declare-datatypes ((List!17001 0))(
  ( (Nil!16933) (Cons!16933 (h!22334 tuple2!16532) (t!141530 List!17001)) )
))
(declare-datatypes ((array!6350 0))(
  ( (array!6351 (arr!2824 (Array (_ BitVec 32) List!17001)) (size!13739 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3706 0))(
  ( (LongMapFixedSize!3707 (defaultEntry!2213 Int) (mask!5089 (_ BitVec 32)) (extraKeys!2100 (_ BitVec 32)) (zeroValue!2110 List!17001) (minValue!2110 List!17001) (_size!3787 (_ BitVec 32)) (_keys!2147 array!6346) (_values!2132 array!6350) (_vacant!1914 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7297 0))(
  ( (Cell!7298 (v!23796 LongMapFixedSize!3706)) )
))
(declare-datatypes ((tuple2!16534 0))(
  ( (tuple2!16535 (_1!9660 BalanceConc!11112) (_2!9660 BalanceConc!11112)) )
))
(declare-datatypes ((MutLongMap!1853 0))(
  ( (LongMap!1853 (underlying!3915 Cell!7297)) (MutLongMapExt!1852 (__x!11387 Int)) )
))
(declare-datatypes ((Cell!7299 0))(
  ( (Cell!7300 (v!23797 MutLongMap!1853)) )
))
(declare-datatypes ((Hashable!1797 0))(
  ( (HashableExt!1796 (__x!11388 Int)) )
))
(declare-datatypes ((MutableMap!1797 0))(
  ( (MutableMapExt!1796 (__x!11389 Int)) (HashMap!1797 (underlying!3916 Cell!7299) (hashF!3716 Hashable!1797) (_size!3788 (_ BitVec 32)) (defaultValue!1957 Int)) )
))
(declare-datatypes ((CacheDown!1102 0))(
  ( (CacheDown!1103 (cache!2178 MutableMap!1797)) )
))
(declare-datatypes ((tuple4!922 0))(
  ( (tuple4!923 (_1!9661 tuple2!16534) (_2!9661 CacheUp!1094) (_3!1393 CacheDown!1102) (_4!461 CacheFurthestNullable!522)) )
))
(declare-fun lt!540542 () tuple4!922)

(declare-fun lt!540544 () Unit!26142)

(declare-fun lemmaEqSameImage!157 (TokenValueInjection!5774 BalanceConc!11112 BalanceConc!11112) Unit!26142)

(assert (=> b!1560768 (= lt!540544 (lemmaEqSameImage!157 (transformation!2967 rule!240) (_1!9660 (_1!9661 lt!540542)) lt!540553))))

(declare-fun mapIsEmpty!8623 () Bool)

(assert (=> mapIsEmpty!8623 mapRes!8624))

(declare-fun b!1560750 () Bool)

(declare-fun lt!540551 () MutLongMap!1851)

(get-info :version)

(assert (=> b!1560750 (= e!1002165 (and e!1002152 ((_ is LongMap!1851) lt!540551)))))

(assert (=> b!1560750 (= lt!540551 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))

(declare-fun res!695981 () Bool)

(assert (=> start!144864 (=> (not res!695981) (not e!1002161))))

(declare-datatypes ((LexerInterface!2599 0))(
  ( (LexerInterfaceExt!2596 (__x!11390 Int)) (Lexer!2597) )
))
(declare-fun thiss!16438 () LexerInterface!2599)

(assert (=> start!144864 (= res!695981 ((_ is Lexer!2597) thiss!16438))))

(assert (=> start!144864 e!1002161))

(assert (=> start!144864 (and (inv!22232 totalInput!568) e!1002136)))

(declare-fun inv!22233 (CacheUp!1094) Bool)

(assert (=> start!144864 (and (inv!22233 cacheUp!755) e!1002133)))

(declare-fun inv!22234 (CacheFurthestNullable!522) Bool)

(assert (=> start!144864 (and (inv!22234 cacheFurthestNullable!103) e!1002151)))

(declare-fun input!1676 () BalanceConc!11112)

(declare-fun e!1002135 () Bool)

(assert (=> start!144864 (and (inv!22232 input!1676) e!1002135)))

(declare-fun e!1002132 () Bool)

(assert (=> start!144864 e!1002132))

(declare-fun cacheDown!768 () CacheDown!1102)

(declare-fun e!1002147 () Bool)

(declare-fun inv!22235 (CacheDown!1102) Bool)

(assert (=> start!144864 (and (inv!22235 cacheDown!768) e!1002147)))

(assert (=> start!144864 true))

(declare-fun b!1560769 () Bool)

(declare-fun lt!540546 () MutLongMap!1853)

(assert (=> b!1560769 (= e!1002155 (and e!1002157 ((_ is LongMap!1853) lt!540546)))))

(assert (=> b!1560769 (= lt!540546 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))

(declare-fun b!1560770 () Bool)

(declare-fun tp!459169 () Bool)

(declare-fun inv!22230 (String!19573) Bool)

(declare-fun inv!22236 (TokenValueInjection!5774) Bool)

(assert (=> b!1560770 (= e!1002132 (and tp!459169 (inv!22230 (tag!3231 rule!240)) (inv!22236 (transformation!2967 rule!240)) e!1002164))))

(declare-fun mapNonEmpty!8624 () Bool)

(declare-fun tp!459166 () Bool)

(declare-fun tp!459170 () Bool)

(assert (=> mapNonEmpty!8624 (= mapRes!8622 (and tp!459166 tp!459170))))

(declare-fun mapRest!8622 () (Array (_ BitVec 32) List!17001))

(declare-fun mapKey!8623 () (_ BitVec 32))

(declare-fun mapValue!8624 () List!17001)

(assert (=> mapNonEmpty!8624 (= (arr!2824 (_values!2132 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) (store mapRest!8622 mapKey!8623 mapValue!8624))))

(declare-fun b!1560771 () Bool)

(declare-fun e!1002168 () Bool)

(declare-fun tp!459175 () Bool)

(assert (=> b!1560771 (= e!1002168 (and tp!459175 mapRes!8622))))

(declare-fun condMapEmpty!8624 () Bool)

(declare-fun mapDefault!8623 () List!17001)

(assert (=> b!1560771 (= condMapEmpty!8624 (= (arr!2824 (_values!2132 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!17001)) mapDefault!8623)))))

(declare-fun b!1560772 () Bool)

(declare-fun e!1002137 () Bool)

(assert (=> b!1560772 (= e!1002160 e!1002137)))

(declare-fun b!1560773 () Bool)

(declare-fun matchR!1888 (Regex!4295 List!16997) Bool)

(assert (=> b!1560773 (= e!1002167 (matchR!1888 (regex!2967 rule!240) (_1!9656 lt!540558)))))

(declare-fun b!1560774 () Bool)

(assert (=> b!1560774 (= e!1002147 e!1002149)))

(declare-fun b!1560775 () Bool)

(declare-fun res!695988 () Bool)

(assert (=> b!1560775 (=> (not res!695988) (not e!1002161))))

(declare-fun valid!1484 (CacheDown!1102) Bool)

(assert (=> b!1560775 (= res!695988 (valid!1484 cacheDown!768))))

(declare-fun tp!459168 () Bool)

(declare-fun tp!459174 () Bool)

(declare-fun array_inv!2029 (array!6346) Bool)

(declare-fun array_inv!2030 (array!6348) Bool)

(assert (=> b!1560776 (= e!1002137 (and tp!459172 tp!459174 tp!459168 (array_inv!2029 (_keys!2146 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) (array_inv!2030 (_values!2131 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) e!1002131))))

(declare-fun b!1560777 () Bool)

(assert (=> b!1560777 (= e!1002134 e!1002158)))

(declare-fun res!695980 () Bool)

(assert (=> b!1560777 (=> (not res!695980) (not e!1002158))))

(declare-fun isEmpty!10161 (BalanceConc!11112) Bool)

(assert (=> b!1560777 (= res!695980 (not (isEmpty!10161 (_1!9660 (_1!9661 lt!540542)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!62 (Regex!4295 BalanceConc!11112 BalanceConc!11112 CacheUp!1094 CacheDown!1102 CacheFurthestNullable!522) tuple4!922)

(assert (=> b!1560777 (= lt!540542 (findLongestMatchWithZipperSequenceV3Mem!62 (regex!2967 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun res!695985 () Bool)

(assert (=> b!1560778 (=> res!695985 e!1002146)))

(declare-fun Forall!619 (Int) Bool)

(assert (=> b!1560778 (= res!695985 (not (Forall!619 lambda!66032)))))

(declare-fun tp!459167 () Bool)

(declare-fun tp!459162 () Bool)

(declare-fun array_inv!2031 (array!6350) Bool)

(assert (=> b!1560779 (= e!1002141 (and tp!459164 tp!459167 tp!459162 (array_inv!2029 (_keys!2147 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) (array_inv!2031 (_values!2132 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) e!1002168))))

(declare-fun b!1560780 () Bool)

(assert (=> b!1560780 (= e!1002146 e!1002143)))

(declare-fun res!695990 () Bool)

(assert (=> b!1560780 (=> res!695990 e!1002143)))

(declare-fun isDefined!2459 (Option!3059) Bool)

(assert (=> b!1560780 (= res!695990 (not (= lt!540541 (isDefined!2459 lt!540554))))))

(declare-fun lt!540547 () Token!5502)

(declare-datatypes ((tuple2!16536 0))(
  ( (tuple2!16537 (_1!9662 Token!5502) (_2!9662 BalanceConc!11112)) )
))
(declare-datatypes ((Option!3060 0))(
  ( (None!3059) (Some!3059 (v!23798 tuple2!16536)) )
))
(declare-fun isDefined!2460 (Option!3060) Bool)

(assert (=> b!1560780 (= lt!540541 (isDefined!2460 (Some!3059 (tuple2!16537 lt!540547 (_2!9660 (_1!9661 lt!540542))))))))

(declare-fun maxPrefixOneRule!713 (LexerInterface!2599 Rule!5734 List!16997) Option!3059)

(assert (=> b!1560780 (= lt!540554 (maxPrefixOneRule!713 thiss!16438 rule!240 lt!540557))))

(assert (=> b!1560780 (= lt!540547 (Token!5503 lt!540555 rule!240 lt!540559 lt!540549))))

(declare-fun size!13740 (BalanceConc!11112) Int)

(assert (=> b!1560780 (= lt!540559 (size!13740 (_1!9660 (_1!9661 lt!540542))))))

(assert (=> b!1560780 (= lt!540555 (apply!4121 (transformation!2967 rule!240) (_1!9660 (_1!9661 lt!540542))))))

(declare-fun lt!540548 () Unit!26142)

(declare-fun ForallOf!222 (Int BalanceConc!11112) Unit!26142)

(assert (=> b!1560780 (= lt!540548 (ForallOf!222 lambda!66032 lt!540553))))

(declare-fun seqFromList!1785 (List!16997) BalanceConc!11112)

(assert (=> b!1560780 (= lt!540553 (seqFromList!1785 lt!540549))))

(assert (=> b!1560780 (= lt!540549 (list!6516 (_1!9660 (_1!9661 lt!540542))))))

(declare-fun lt!540552 () Unit!26142)

(assert (=> b!1560780 (= lt!540552 (ForallOf!222 lambda!66032 (_1!9660 (_1!9661 lt!540542))))))

(declare-fun tp!459180 () Bool)

(declare-fun e!1002163 () Bool)

(declare-fun tp!459154 () Bool)

(declare-fun array_inv!2032 (array!6344) Bool)

(assert (=> b!1560781 (= e!1002166 (and tp!459173 tp!459180 tp!459154 (array_inv!2029 (_keys!2145 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) (array_inv!2032 (_values!2130 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) e!1002163))))

(declare-fun b!1560782 () Bool)

(declare-fun lt!540545 () MutLongMap!1852)

(assert (=> b!1560782 (= e!1002142 (and e!1002154 ((_ is LongMap!1852) lt!540545)))))

(assert (=> b!1560782 (= lt!540545 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))

(declare-fun b!1560783 () Bool)

(declare-fun res!695986 () Bool)

(assert (=> b!1560783 (=> (not res!695986) (not e!1002161))))

(declare-fun ruleValid!696 (LexerInterface!2599 Rule!5734) Bool)

(assert (=> b!1560783 (= res!695986 (ruleValid!696 thiss!16438 rule!240))))

(declare-fun b!1560784 () Bool)

(assert (=> b!1560784 (= e!1002161 e!1002134)))

(declare-fun res!695983 () Bool)

(assert (=> b!1560784 (=> (not res!695983) (not e!1002134))))

(declare-fun isSuffix!387 (List!16997 List!16997) Bool)

(assert (=> b!1560784 (= res!695983 (isSuffix!387 lt!540557 (list!6516 totalInput!568)))))

(assert (=> b!1560784 (= lt!540557 (list!6516 input!1676))))

(declare-fun b!1560785 () Bool)

(declare-fun tp!459179 () Bool)

(assert (=> b!1560785 (= e!1002135 (and (inv!22231 (c!253139 input!1676)) tp!459179))))

(declare-fun b!1560786 () Bool)

(declare-fun res!695994 () Bool)

(assert (=> b!1560786 (=> (not res!695994) (not e!1002161))))

(declare-fun valid!1485 (CacheUp!1094) Bool)

(assert (=> b!1560786 (= res!695994 (valid!1485 cacheUp!755))))

(declare-fun mapIsEmpty!8624 () Bool)

(assert (=> mapIsEmpty!8624 mapRes!8623))

(declare-fun b!1560787 () Bool)

(declare-fun tp!459163 () Bool)

(assert (=> b!1560787 (= e!1002163 (and tp!459163 mapRes!8624))))

(declare-fun condMapEmpty!8622 () Bool)

(declare-fun mapDefault!8624 () List!16999)

(assert (=> b!1560787 (= condMapEmpty!8622 (= (arr!2821 (_values!2130 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16999)) mapDefault!8624)))))

(declare-fun b!1560788 () Bool)

(declare-fun inv!22237 (Token!5502) Bool)

(assert (=> b!1560788 (= e!1002145 (inv!22237 lt!540547))))

(assert (= (and start!144864 res!695981) b!1560783))

(assert (= (and b!1560783 res!695986) b!1560786))

(assert (= (and b!1560786 res!695994) b!1560775))

(assert (= (and b!1560775 res!695988) b!1560751))

(assert (= (and b!1560751 res!695982) b!1560784))

(assert (= (and b!1560784 res!695983) b!1560765))

(assert (= (and b!1560765 res!695984) b!1560777))

(assert (= (and b!1560777 res!695980) b!1560752))

(assert (= (and b!1560752 (not res!695992)) b!1560773))

(assert (= (and b!1560752 (not res!695987)) b!1560778))

(assert (= (and b!1560778 (not res!695985)) b!1560780))

(assert (= (and b!1560780 (not res!695990)) b!1560747))

(assert (= (and b!1560747 (not res!695989)) b!1560762))

(assert (= (and b!1560762 (not res!695995)) b!1560768))

(assert (= (and b!1560768 (not res!695991)) b!1560753))

(assert (= (and b!1560753 (not res!695993)) b!1560788))

(assert (= start!144864 b!1560758))

(assert (= (and b!1560766 condMapEmpty!8623) mapIsEmpty!8624))

(assert (= (and b!1560766 (not condMapEmpty!8623)) mapNonEmpty!8622))

(assert (= b!1560776 b!1560766))

(assert (= b!1560772 b!1560776))

(assert (= b!1560761 b!1560772))

(assert (= (and b!1560782 ((_ is LongMap!1852) (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))) b!1560761))

(assert (= b!1560754 b!1560782))

(assert (= (and b!1560757 ((_ is HashMap!1796) (cache!2177 cacheUp!755))) b!1560754))

(assert (= start!144864 b!1560757))

(assert (= (and b!1560787 condMapEmpty!8622) mapIsEmpty!8623))

(assert (= (and b!1560787 (not condMapEmpty!8622)) mapNonEmpty!8623))

(assert (= b!1560781 b!1560787))

(assert (= b!1560749 b!1560781))

(assert (= b!1560748 b!1560749))

(assert (= (and b!1560750 ((_ is LongMap!1851) (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))) b!1560748))

(assert (= b!1560764 b!1560750))

(assert (= (and b!1560759 ((_ is HashMap!1795) (cache!2176 cacheFurthestNullable!103))) b!1560764))

(assert (= b!1560759 b!1560767))

(assert (= start!144864 b!1560759))

(assert (= start!144864 b!1560785))

(assert (= b!1560770 b!1560763))

(assert (= start!144864 b!1560770))

(assert (= (and b!1560771 condMapEmpty!8624) mapIsEmpty!8622))

(assert (= (and b!1560771 (not condMapEmpty!8624)) mapNonEmpty!8624))

(assert (= b!1560779 b!1560771))

(assert (= b!1560755 b!1560779))

(assert (= b!1560760 b!1560755))

(assert (= (and b!1560769 ((_ is LongMap!1853) (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))) b!1560760))

(assert (= b!1560756 b!1560769))

(assert (= (and b!1560774 ((_ is HashMap!1797) (cache!2178 cacheDown!768))) b!1560756))

(assert (= start!144864 b!1560774))

(declare-fun m!1832288 () Bool)

(assert (=> mapNonEmpty!8623 m!1832288))

(declare-fun m!1832290 () Bool)

(assert (=> b!1560753 m!1832290))

(declare-fun m!1832292 () Bool)

(assert (=> mapNonEmpty!8624 m!1832292))

(declare-fun m!1832294 () Bool)

(assert (=> start!144864 m!1832294))

(declare-fun m!1832296 () Bool)

(assert (=> start!144864 m!1832296))

(declare-fun m!1832298 () Bool)

(assert (=> start!144864 m!1832298))

(declare-fun m!1832300 () Bool)

(assert (=> start!144864 m!1832300))

(declare-fun m!1832302 () Bool)

(assert (=> start!144864 m!1832302))

(declare-fun m!1832304 () Bool)

(assert (=> b!1560777 m!1832304))

(declare-fun m!1832306 () Bool)

(assert (=> b!1560777 m!1832306))

(declare-fun m!1832308 () Bool)

(assert (=> b!1560785 m!1832308))

(declare-fun m!1832310 () Bool)

(assert (=> b!1560758 m!1832310))

(declare-fun m!1832312 () Bool)

(assert (=> b!1560786 m!1832312))

(declare-fun m!1832314 () Bool)

(assert (=> b!1560762 m!1832314))

(declare-fun m!1832316 () Bool)

(assert (=> b!1560784 m!1832316))

(assert (=> b!1560784 m!1832316))

(declare-fun m!1832318 () Bool)

(assert (=> b!1560784 m!1832318))

(declare-fun m!1832320 () Bool)

(assert (=> b!1560784 m!1832320))

(declare-fun m!1832322 () Bool)

(assert (=> b!1560773 m!1832322))

(declare-fun m!1832324 () Bool)

(assert (=> mapNonEmpty!8622 m!1832324))

(declare-fun m!1832326 () Bool)

(assert (=> b!1560752 m!1832326))

(declare-fun m!1832328 () Bool)

(assert (=> b!1560752 m!1832328))

(declare-fun m!1832330 () Bool)

(assert (=> b!1560752 m!1832330))

(declare-fun m!1832332 () Bool)

(assert (=> b!1560752 m!1832332))

(declare-fun m!1832334 () Bool)

(assert (=> b!1560752 m!1832334))

(declare-fun m!1832336 () Bool)

(assert (=> b!1560752 m!1832336))

(assert (=> b!1560752 m!1832326))

(assert (=> b!1560752 m!1832328))

(declare-fun m!1832338 () Bool)

(assert (=> b!1560752 m!1832338))

(declare-fun m!1832340 () Bool)

(assert (=> b!1560770 m!1832340))

(declare-fun m!1832342 () Bool)

(assert (=> b!1560770 m!1832342))

(declare-fun m!1832344 () Bool)

(assert (=> b!1560767 m!1832344))

(declare-fun m!1832346 () Bool)

(assert (=> b!1560783 m!1832346))

(declare-fun m!1832348 () Bool)

(assert (=> b!1560779 m!1832348))

(declare-fun m!1832350 () Bool)

(assert (=> b!1560779 m!1832350))

(declare-fun m!1832352 () Bool)

(assert (=> b!1560788 m!1832352))

(declare-fun m!1832354 () Bool)

(assert (=> b!1560759 m!1832354))

(declare-fun m!1832356 () Bool)

(assert (=> b!1560776 m!1832356))

(declare-fun m!1832358 () Bool)

(assert (=> b!1560776 m!1832358))

(declare-fun m!1832360 () Bool)

(assert (=> b!1560780 m!1832360))

(declare-fun m!1832362 () Bool)

(assert (=> b!1560780 m!1832362))

(declare-fun m!1832364 () Bool)

(assert (=> b!1560780 m!1832364))

(declare-fun m!1832366 () Bool)

(assert (=> b!1560780 m!1832366))

(declare-fun m!1832368 () Bool)

(assert (=> b!1560780 m!1832368))

(declare-fun m!1832370 () Bool)

(assert (=> b!1560780 m!1832370))

(declare-fun m!1832372 () Bool)

(assert (=> b!1560780 m!1832372))

(declare-fun m!1832374 () Bool)

(assert (=> b!1560780 m!1832374))

(declare-fun m!1832376 () Bool)

(assert (=> b!1560780 m!1832376))

(declare-fun m!1832378 () Bool)

(assert (=> b!1560781 m!1832378))

(declare-fun m!1832380 () Bool)

(assert (=> b!1560781 m!1832380))

(declare-fun m!1832382 () Bool)

(assert (=> b!1560775 m!1832382))

(declare-fun m!1832384 () Bool)

(assert (=> b!1560751 m!1832384))

(declare-fun m!1832386 () Bool)

(assert (=> b!1560768 m!1832386))

(declare-fun m!1832388 () Bool)

(assert (=> b!1560768 m!1832388))

(declare-fun m!1832390 () Bool)

(assert (=> b!1560778 m!1832390))

(check-sat b_and!108955 (not b!1560776) (not b!1560766) (not b!1560751) (not start!144864) (not b_next!42377) (not b!1560787) (not b!1560773) (not b!1560779) b_and!108947 (not b!1560759) (not b!1560752) b_and!108957 (not b!1560771) (not b!1560767) (not b!1560786) (not mapNonEmpty!8624) b_and!108953 (not b!1560777) (not mapNonEmpty!8622) (not b!1560768) (not mapNonEmpty!8623) (not b_next!42375) (not b!1560785) (not b_next!42389) (not b_next!42387) (not b!1560778) (not b!1560775) (not b_next!42383) b_and!108949 (not b!1560780) (not b!1560762) (not b!1560758) (not b!1560770) (not b!1560784) (not b!1560781) (not b_next!42379) b_and!108951 b_and!108959 (not b!1560783) (not b_next!42385) b_and!108945 (not b!1560788) (not b!1560753) (not b_next!42381))
(check-sat b_and!108957 b_and!108955 b_and!108953 (not b_next!42375) (not b_next!42377) b_and!108947 b_and!108959 (not b_next!42381) (not b_next!42389) (not b_next!42387) (not b_next!42383) b_and!108949 (not b_next!42379) b_and!108951 (not b_next!42385) b_and!108945)
(get-model)

(declare-fun d!462279 () Bool)

(declare-fun list!6517 (Conc!5585) List!16997)

(assert (=> d!462279 (= (list!6516 lt!540553) (list!6517 (c!253139 lt!540553)))))

(declare-fun bs!388882 () Bool)

(assert (= bs!388882 d!462279))

(declare-fun m!1832392 () Bool)

(assert (=> bs!388882 m!1832392))

(assert (=> b!1560762 d!462279))

(declare-fun d!462281 () Bool)

(assert (=> d!462281 (= (get!4871 lt!540554) (v!23795 lt!540554))))

(assert (=> b!1560753 d!462281))

(declare-fun d!462283 () Bool)

(assert (=> d!462283 (= (array_inv!2029 (_keys!2145 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) (bvsge (size!13735 (_keys!2145 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560781 d!462283))

(declare-fun d!462285 () Bool)

(assert (=> d!462285 (= (array_inv!2032 (_values!2130 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) (bvsge (size!13734 (_values!2130 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560781 d!462285))

(declare-fun d!462287 () Bool)

(assert (=> d!462287 (= (array_inv!2029 (_keys!2147 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) (bvsge (size!13735 (_keys!2147 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560779 d!462287))

(declare-fun d!462289 () Bool)

(assert (=> d!462289 (= (array_inv!2031 (_values!2132 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) (bvsge (size!13739 (_values!2132 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560779 d!462289))

(declare-fun d!462291 () Bool)

(assert (=> d!462291 (= (inv!22230 (tag!3231 rule!240)) (= (mod (str.len (value!94191 (tag!3231 rule!240))) 2) 0))))

(assert (=> b!1560770 d!462291))

(declare-fun d!462293 () Bool)

(declare-fun res!696000 () Bool)

(declare-fun e!1002177 () Bool)

(assert (=> d!462293 (=> (not res!696000) (not e!1002177))))

(assert (=> d!462293 (= res!696000 (semiInverseModEq!1124 (toChars!4205 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))))))

(assert (=> d!462293 (= (inv!22236 (transformation!2967 rule!240)) e!1002177)))

(declare-fun b!1560799 () Bool)

(declare-fun equivClasses!1065 (Int Int) Bool)

(assert (=> b!1560799 (= e!1002177 (equivClasses!1065 (toChars!4205 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))))))

(assert (= (and d!462293 res!696000) b!1560799))

(assert (=> d!462293 m!1832334))

(declare-fun m!1832394 () Bool)

(assert (=> b!1560799 m!1832394))

(assert (=> b!1560770 d!462293))

(declare-fun d!462295 () Bool)

(declare-fun isBalanced!1652 (Conc!5585) Bool)

(assert (=> d!462295 (= (inv!22232 totalInput!568) (isBalanced!1652 (c!253139 totalInput!568)))))

(declare-fun bs!388883 () Bool)

(assert (= bs!388883 d!462295))

(declare-fun m!1832396 () Bool)

(assert (=> bs!388883 m!1832396))

(assert (=> start!144864 d!462295))

(declare-fun d!462297 () Bool)

(declare-fun res!696003 () Bool)

(declare-fun e!1002180 () Bool)

(assert (=> d!462297 (=> (not res!696003) (not e!1002180))))

(assert (=> d!462297 (= res!696003 ((_ is HashMap!1797) (cache!2178 cacheDown!768)))))

(assert (=> d!462297 (= (inv!22235 cacheDown!768) e!1002180)))

(declare-fun b!1560802 () Bool)

(declare-fun validCacheMapDown!170 (MutableMap!1797) Bool)

(assert (=> b!1560802 (= e!1002180 (validCacheMapDown!170 (cache!2178 cacheDown!768)))))

(assert (= (and d!462297 res!696003) b!1560802))

(declare-fun m!1832398 () Bool)

(assert (=> b!1560802 m!1832398))

(assert (=> start!144864 d!462297))

(declare-fun d!462299 () Bool)

(declare-fun res!696006 () Bool)

(declare-fun e!1002183 () Bool)

(assert (=> d!462299 (=> (not res!696006) (not e!1002183))))

(assert (=> d!462299 (= res!696006 ((_ is HashMap!1796) (cache!2177 cacheUp!755)))))

(assert (=> d!462299 (= (inv!22233 cacheUp!755) e!1002183)))

(declare-fun b!1560805 () Bool)

(declare-fun validCacheMapUp!170 (MutableMap!1796) Bool)

(assert (=> b!1560805 (= e!1002183 (validCacheMapUp!170 (cache!2177 cacheUp!755)))))

(assert (= (and d!462299 res!696006) b!1560805))

(declare-fun m!1832400 () Bool)

(assert (=> b!1560805 m!1832400))

(assert (=> start!144864 d!462299))

(declare-fun d!462301 () Bool)

(assert (=> d!462301 (= (inv!22232 input!1676) (isBalanced!1652 (c!253139 input!1676)))))

(declare-fun bs!388884 () Bool)

(assert (= bs!388884 d!462301))

(declare-fun m!1832402 () Bool)

(assert (=> bs!388884 m!1832402))

(assert (=> start!144864 d!462301))

(declare-fun d!462303 () Bool)

(declare-fun res!696009 () Bool)

(declare-fun e!1002186 () Bool)

(assert (=> d!462303 (=> (not res!696009) (not e!1002186))))

(assert (=> d!462303 (= res!696009 ((_ is HashMap!1795) (cache!2176 cacheFurthestNullable!103)))))

(assert (=> d!462303 (= (inv!22234 cacheFurthestNullable!103) e!1002186)))

(declare-fun b!1560808 () Bool)

(declare-fun validCacheMapFurthestNullable!83 (MutableMap!1795 BalanceConc!11112) Bool)

(assert (=> b!1560808 (= e!1002186 (validCacheMapFurthestNullable!83 (cache!2176 cacheFurthestNullable!103) (totalInput!2497 cacheFurthestNullable!103)))))

(assert (= (and d!462303 res!696009) b!1560808))

(declare-fun m!1832404 () Bool)

(assert (=> b!1560808 m!1832404))

(assert (=> start!144864 d!462303))

(declare-fun d!462305 () Bool)

(declare-fun lt!540562 () Int)

(assert (=> d!462305 (>= lt!540562 0)))

(declare-fun e!1002189 () Int)

(assert (=> d!462305 (= lt!540562 e!1002189)))

(declare-fun c!253143 () Bool)

(assert (=> d!462305 (= c!253143 ((_ is Nil!16929) Nil!16929))))

(assert (=> d!462305 (= (size!13737 Nil!16929) lt!540562)))

(declare-fun b!1560813 () Bool)

(assert (=> b!1560813 (= e!1002189 0)))

(declare-fun b!1560814 () Bool)

(assert (=> b!1560814 (= e!1002189 (+ 1 (size!13737 (t!141526 Nil!16929))))))

(assert (= (and d!462305 c!253143) b!1560813))

(assert (= (and d!462305 (not c!253143)) b!1560814))

(declare-fun m!1832406 () Bool)

(assert (=> b!1560814 m!1832406))

(assert (=> b!1560752 d!462305))

(declare-fun d!462307 () Bool)

(declare-fun e!1002192 () Bool)

(assert (=> d!462307 e!1002192))

(declare-fun res!696012 () Bool)

(assert (=> d!462307 (=> res!696012 e!1002192)))

(assert (=> d!462307 (= res!696012 (isEmpty!10160 (_1!9656 (findLongestMatchInner!343 (regex!2967 rule!240) Nil!16929 (size!13737 Nil!16929) lt!540557 lt!540557 (size!13737 lt!540557)))))))

(declare-fun lt!540565 () Unit!26142)

(declare-fun choose!9314 (Regex!4295 List!16997) Unit!26142)

(assert (=> d!462307 (= lt!540565 (choose!9314 (regex!2967 rule!240) lt!540557))))

(declare-fun validRegex!1720 (Regex!4295) Bool)

(assert (=> d!462307 (validRegex!1720 (regex!2967 rule!240))))

(assert (=> d!462307 (= (longestMatchIsAcceptedByMatchOrIsEmpty!327 (regex!2967 rule!240) lt!540557) lt!540565)))

(declare-fun b!1560817 () Bool)

(assert (=> b!1560817 (= e!1002192 (matchR!1888 (regex!2967 rule!240) (_1!9656 (findLongestMatchInner!343 (regex!2967 rule!240) Nil!16929 (size!13737 Nil!16929) lt!540557 lt!540557 (size!13737 lt!540557)))))))

(assert (= (and d!462307 (not res!696012)) b!1560817))

(declare-fun m!1832408 () Bool)

(assert (=> d!462307 m!1832408))

(declare-fun m!1832410 () Bool)

(assert (=> d!462307 m!1832410))

(assert (=> d!462307 m!1832326))

(declare-fun m!1832412 () Bool)

(assert (=> d!462307 m!1832412))

(assert (=> d!462307 m!1832328))

(assert (=> d!462307 m!1832326))

(assert (=> d!462307 m!1832328))

(assert (=> d!462307 m!1832330))

(assert (=> b!1560817 m!1832326))

(assert (=> b!1560817 m!1832328))

(assert (=> b!1560817 m!1832326))

(assert (=> b!1560817 m!1832328))

(assert (=> b!1560817 m!1832330))

(declare-fun m!1832414 () Bool)

(assert (=> b!1560817 m!1832414))

(assert (=> b!1560752 d!462307))

(declare-fun d!462309 () Bool)

(assert (=> d!462309 (= (isEmpty!10160 (_1!9656 lt!540558)) ((_ is Nil!16929) (_1!9656 lt!540558)))))

(assert (=> b!1560752 d!462309))

(declare-fun d!462311 () Bool)

(declare-fun lt!540566 () Int)

(assert (=> d!462311 (>= lt!540566 0)))

(declare-fun e!1002193 () Int)

(assert (=> d!462311 (= lt!540566 e!1002193)))

(declare-fun c!253144 () Bool)

(assert (=> d!462311 (= c!253144 ((_ is Nil!16929) lt!540557))))

(assert (=> d!462311 (= (size!13737 lt!540557) lt!540566)))

(declare-fun b!1560818 () Bool)

(assert (=> b!1560818 (= e!1002193 0)))

(declare-fun b!1560819 () Bool)

(assert (=> b!1560819 (= e!1002193 (+ 1 (size!13737 (t!141526 lt!540557))))))

(assert (= (and d!462311 c!253144) b!1560818))

(assert (= (and d!462311 (not c!253144)) b!1560819))

(declare-fun m!1832416 () Bool)

(assert (=> b!1560819 m!1832416))

(assert (=> b!1560752 d!462311))

(declare-fun d!462313 () Bool)

(declare-fun e!1002196 () Bool)

(assert (=> d!462313 e!1002196))

(declare-fun res!696015 () Bool)

(assert (=> d!462313 (=> (not res!696015) (not e!1002196))))

(assert (=> d!462313 (= res!696015 (semiInverseModEq!1124 (toChars!4205 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))))))

(declare-fun Unit!26144 () Unit!26142)

(assert (=> d!462313 (= (lemmaInv!437 (transformation!2967 rule!240)) Unit!26144)))

(declare-fun b!1560822 () Bool)

(assert (=> b!1560822 (= e!1002196 (equivClasses!1065 (toChars!4205 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))))))

(assert (= (and d!462313 res!696015) b!1560822))

(assert (=> d!462313 m!1832334))

(assert (=> b!1560822 m!1832394))

(assert (=> b!1560752 d!462313))

(declare-fun call!102251 () List!16997)

(declare-fun call!102253 () tuple2!16528)

(declare-fun call!102258 () Regex!4295)

(declare-fun lt!540640 () List!16997)

(declare-fun bm!102246 () Bool)

(assert (=> bm!102246 (= call!102253 (findLongestMatchInner!343 call!102258 lt!540640 (+ (size!13737 Nil!16929) 1) call!102251 lt!540557 (size!13737 lt!540557)))))

(declare-fun b!1560851 () Bool)

(declare-fun e!1002217 () Bool)

(declare-fun e!1002218 () Bool)

(assert (=> b!1560851 (= e!1002217 e!1002218)))

(declare-fun res!696020 () Bool)

(assert (=> b!1560851 (=> res!696020 e!1002218)))

(declare-fun lt!540623 () tuple2!16528)

(assert (=> b!1560851 (= res!696020 (isEmpty!10160 (_1!9656 lt!540623)))))

(declare-fun b!1560852 () Bool)

(declare-fun e!1002213 () Unit!26142)

(declare-fun Unit!26145 () Unit!26142)

(assert (=> b!1560852 (= e!1002213 Unit!26145)))

(declare-fun b!1560853 () Bool)

(declare-fun e!1002214 () tuple2!16528)

(assert (=> b!1560853 (= e!1002214 call!102253)))

(declare-fun b!1560854 () Bool)

(declare-fun c!253160 () Bool)

(declare-fun call!102257 () Bool)

(assert (=> b!1560854 (= c!253160 call!102257)))

(declare-fun lt!540628 () Unit!26142)

(declare-fun lt!540645 () Unit!26142)

(assert (=> b!1560854 (= lt!540628 lt!540645)))

(assert (=> b!1560854 (= lt!540557 Nil!16929)))

(declare-fun call!102256 () Unit!26142)

(assert (=> b!1560854 (= lt!540645 call!102256)))

(declare-fun lt!540634 () Unit!26142)

(declare-fun lt!540629 () Unit!26142)

(assert (=> b!1560854 (= lt!540634 lt!540629)))

(declare-fun call!102252 () Bool)

(assert (=> b!1560854 call!102252))

(declare-fun call!102255 () Unit!26142)

(assert (=> b!1560854 (= lt!540629 call!102255)))

(declare-fun e!1002216 () tuple2!16528)

(declare-fun e!1002219 () tuple2!16528)

(assert (=> b!1560854 (= e!1002216 e!1002219)))

(declare-fun b!1560855 () Bool)

(declare-fun e!1002220 () tuple2!16528)

(assert (=> b!1560855 (= e!1002220 (tuple2!16529 Nil!16929 lt!540557))))

(declare-fun b!1560856 () Bool)

(assert (=> b!1560856 (= e!1002218 (>= (size!13737 (_1!9656 lt!540623)) (size!13737 Nil!16929)))))

(declare-fun bm!102247 () Bool)

(declare-fun isPrefix!1268 (List!16997 List!16997) Bool)

(assert (=> bm!102247 (= call!102252 (isPrefix!1268 lt!540557 lt!540557))))

(declare-fun bm!102248 () Bool)

(declare-fun call!102254 () C!8768)

(declare-fun derivativeStep!1030 (Regex!4295 C!8768) Regex!4295)

(assert (=> bm!102248 (= call!102258 (derivativeStep!1030 (regex!2967 rule!240) call!102254))))

(declare-fun b!1560857 () Bool)

(assert (=> b!1560857 (= e!1002214 e!1002220)))

(declare-fun lt!540649 () tuple2!16528)

(assert (=> b!1560857 (= lt!540649 call!102253)))

(declare-fun c!253158 () Bool)

(assert (=> b!1560857 (= c!253158 (isEmpty!10160 (_1!9656 lt!540649)))))

(declare-fun b!1560858 () Bool)

(declare-fun e!1002215 () tuple2!16528)

(assert (=> b!1560858 (= e!1002215 (tuple2!16529 Nil!16929 lt!540557))))

(declare-fun bm!102250 () Bool)

(declare-fun lemmaIsPrefixRefl!898 (List!16997 List!16997) Unit!26142)

(assert (=> bm!102250 (= call!102255 (lemmaIsPrefixRefl!898 lt!540557 lt!540557))))

(declare-fun b!1560859 () Bool)

(assert (=> b!1560859 (= e!1002219 (tuple2!16529 Nil!16929 Nil!16929))))

(declare-fun b!1560860 () Bool)

(declare-fun c!253162 () Bool)

(assert (=> b!1560860 (= c!253162 call!102257)))

(declare-fun lt!540646 () Unit!26142)

(declare-fun lt!540633 () Unit!26142)

(assert (=> b!1560860 (= lt!540646 lt!540633)))

(declare-fun lt!540639 () C!8768)

(declare-fun lt!540650 () List!16997)

(declare-fun ++!4422 (List!16997 List!16997) List!16997)

(assert (=> b!1560860 (= (++!4422 (++!4422 Nil!16929 (Cons!16929 lt!540639 Nil!16929)) lt!540650) lt!540557)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!447 (List!16997 C!8768 List!16997 List!16997) Unit!26142)

(assert (=> b!1560860 (= lt!540633 (lemmaMoveElementToOtherListKeepsConcatEq!447 Nil!16929 lt!540639 lt!540650 lt!540557))))

(declare-fun tail!2216 (List!16997) List!16997)

(assert (=> b!1560860 (= lt!540650 (tail!2216 lt!540557))))

(declare-fun head!3121 (List!16997) C!8768)

(assert (=> b!1560860 (= lt!540639 (head!3121 lt!540557))))

(declare-fun lt!540624 () Unit!26142)

(declare-fun lt!540637 () Unit!26142)

(assert (=> b!1560860 (= lt!540624 lt!540637)))

(declare-fun getSuffix!678 (List!16997 List!16997) List!16997)

(assert (=> b!1560860 (isPrefix!1268 (++!4422 Nil!16929 (Cons!16929 (head!3121 (getSuffix!678 lt!540557 Nil!16929)) Nil!16929)) lt!540557)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!121 (List!16997 List!16997) Unit!26142)

(assert (=> b!1560860 (= lt!540637 (lemmaAddHeadSuffixToPrefixStillPrefix!121 Nil!16929 lt!540557))))

(declare-fun lt!540648 () Unit!26142)

(declare-fun lt!540642 () Unit!26142)

(assert (=> b!1560860 (= lt!540648 lt!540642)))

(assert (=> b!1560860 (= lt!540642 (lemmaAddHeadSuffixToPrefixStillPrefix!121 Nil!16929 lt!540557))))

(assert (=> b!1560860 (= lt!540640 (++!4422 Nil!16929 (Cons!16929 (head!3121 lt!540557) Nil!16929)))))

(declare-fun lt!540647 () Unit!26142)

(assert (=> b!1560860 (= lt!540647 e!1002213)))

(declare-fun c!253157 () Bool)

(assert (=> b!1560860 (= c!253157 (= (size!13737 Nil!16929) (size!13737 lt!540557)))))

(declare-fun lt!540643 () Unit!26142)

(declare-fun lt!540635 () Unit!26142)

(assert (=> b!1560860 (= lt!540643 lt!540635)))

(assert (=> b!1560860 (<= (size!13737 Nil!16929) (size!13737 lt!540557))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!122 (List!16997 List!16997) Unit!26142)

(assert (=> b!1560860 (= lt!540635 (lemmaIsPrefixThenSmallerEqSize!122 Nil!16929 lt!540557))))

(assert (=> b!1560860 (= e!1002216 e!1002214)))

(declare-fun b!1560861 () Bool)

(assert (=> b!1560861 (= e!1002219 (tuple2!16529 Nil!16929 lt!540557))))

(declare-fun bm!102251 () Bool)

(assert (=> bm!102251 (= call!102251 (tail!2216 lt!540557))))

(declare-fun b!1560862 () Bool)

(declare-fun Unit!26146 () Unit!26142)

(assert (=> b!1560862 (= e!1002213 Unit!26146)))

(declare-fun lt!540627 () Unit!26142)

(assert (=> b!1560862 (= lt!540627 call!102255)))

(assert (=> b!1560862 call!102252))

(declare-fun lt!540638 () Unit!26142)

(assert (=> b!1560862 (= lt!540638 lt!540627)))

(declare-fun lt!540631 () Unit!26142)

(assert (=> b!1560862 (= lt!540631 call!102256)))

(assert (=> b!1560862 (= lt!540557 Nil!16929)))

(declare-fun lt!540641 () Unit!26142)

(assert (=> b!1560862 (= lt!540641 lt!540631)))

(assert (=> b!1560862 false))

(declare-fun d!462315 () Bool)

(assert (=> d!462315 e!1002217))

(declare-fun res!696021 () Bool)

(assert (=> d!462315 (=> (not res!696021) (not e!1002217))))

(assert (=> d!462315 (= res!696021 (= (++!4422 (_1!9656 lt!540623) (_2!9656 lt!540623)) lt!540557))))

(assert (=> d!462315 (= lt!540623 e!1002215)))

(declare-fun c!253161 () Bool)

(declare-fun lostCause!396 (Regex!4295) Bool)

(assert (=> d!462315 (= c!253161 (lostCause!396 (regex!2967 rule!240)))))

(declare-fun lt!540632 () Unit!26142)

(declare-fun Unit!26147 () Unit!26142)

(assert (=> d!462315 (= lt!540632 Unit!26147)))

(assert (=> d!462315 (= (getSuffix!678 lt!540557 Nil!16929) lt!540557)))

(declare-fun lt!540625 () Unit!26142)

(declare-fun lt!540636 () Unit!26142)

(assert (=> d!462315 (= lt!540625 lt!540636)))

(declare-fun lt!540644 () List!16997)

(assert (=> d!462315 (= lt!540557 lt!540644)))

(declare-fun lemmaSamePrefixThenSameSuffix!630 (List!16997 List!16997 List!16997 List!16997 List!16997) Unit!26142)

(assert (=> d!462315 (= lt!540636 (lemmaSamePrefixThenSameSuffix!630 Nil!16929 lt!540557 Nil!16929 lt!540644 lt!540557))))

(assert (=> d!462315 (= lt!540644 (getSuffix!678 lt!540557 Nil!16929))))

(declare-fun lt!540626 () Unit!26142)

(declare-fun lt!540630 () Unit!26142)

(assert (=> d!462315 (= lt!540626 lt!540630)))

(assert (=> d!462315 (isPrefix!1268 Nil!16929 (++!4422 Nil!16929 lt!540557))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!793 (List!16997 List!16997) Unit!26142)

(assert (=> d!462315 (= lt!540630 (lemmaConcatTwoListThenFirstIsPrefix!793 Nil!16929 lt!540557))))

(assert (=> d!462315 (validRegex!1720 (regex!2967 rule!240))))

(assert (=> d!462315 (= (findLongestMatchInner!343 (regex!2967 rule!240) Nil!16929 (size!13737 Nil!16929) lt!540557 lt!540557 (size!13737 lt!540557)) lt!540623)))

(declare-fun bm!102249 () Bool)

(declare-fun nullable!1279 (Regex!4295) Bool)

(assert (=> bm!102249 (= call!102257 (nullable!1279 (regex!2967 rule!240)))))

(declare-fun b!1560863 () Bool)

(assert (=> b!1560863 (= e!1002215 e!1002216)))

(declare-fun c!253159 () Bool)

(assert (=> b!1560863 (= c!253159 (= (size!13737 Nil!16929) (size!13737 lt!540557)))))

(declare-fun bm!102252 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!132 (List!16997 List!16997 List!16997) Unit!26142)

(assert (=> bm!102252 (= call!102256 (lemmaIsPrefixSameLengthThenSameList!132 lt!540557 Nil!16929 lt!540557))))

(declare-fun b!1560864 () Bool)

(assert (=> b!1560864 (= e!1002220 lt!540649)))

(declare-fun bm!102253 () Bool)

(assert (=> bm!102253 (= call!102254 (head!3121 lt!540557))))

(assert (= (and d!462315 c!253161) b!1560858))

(assert (= (and d!462315 (not c!253161)) b!1560863))

(assert (= (and b!1560863 c!253159) b!1560854))

(assert (= (and b!1560863 (not c!253159)) b!1560860))

(assert (= (and b!1560854 c!253160) b!1560859))

(assert (= (and b!1560854 (not c!253160)) b!1560861))

(assert (= (and b!1560860 c!253157) b!1560862))

(assert (= (and b!1560860 (not c!253157)) b!1560852))

(assert (= (and b!1560860 c!253162) b!1560857))

(assert (= (and b!1560860 (not c!253162)) b!1560853))

(assert (= (and b!1560857 c!253158) b!1560855))

(assert (= (and b!1560857 (not c!253158)) b!1560864))

(assert (= (or b!1560857 b!1560853) bm!102251))

(assert (= (or b!1560857 b!1560853) bm!102253))

(assert (= (or b!1560857 b!1560853) bm!102248))

(assert (= (or b!1560857 b!1560853) bm!102246))

(assert (= (or b!1560854 b!1560862) bm!102252))

(assert (= (or b!1560854 b!1560862) bm!102250))

(assert (= (or b!1560854 b!1560860) bm!102249))

(assert (= (or b!1560854 b!1560862) bm!102247))

(assert (= (and d!462315 res!696021) b!1560851))

(assert (= (and b!1560851 (not res!696020)) b!1560856))

(declare-fun m!1832418 () Bool)

(assert (=> bm!102248 m!1832418))

(declare-fun m!1832420 () Bool)

(assert (=> bm!102247 m!1832420))

(declare-fun m!1832422 () Bool)

(assert (=> bm!102251 m!1832422))

(declare-fun m!1832424 () Bool)

(assert (=> b!1560857 m!1832424))

(assert (=> b!1560860 m!1832422))

(declare-fun m!1832426 () Bool)

(assert (=> b!1560860 m!1832426))

(declare-fun m!1832428 () Bool)

(assert (=> b!1560860 m!1832428))

(declare-fun m!1832430 () Bool)

(assert (=> b!1560860 m!1832430))

(declare-fun m!1832432 () Bool)

(assert (=> b!1560860 m!1832432))

(declare-fun m!1832434 () Bool)

(assert (=> b!1560860 m!1832434))

(assert (=> b!1560860 m!1832328))

(declare-fun m!1832436 () Bool)

(assert (=> b!1560860 m!1832436))

(declare-fun m!1832438 () Bool)

(assert (=> b!1560860 m!1832438))

(declare-fun m!1832440 () Bool)

(assert (=> b!1560860 m!1832440))

(declare-fun m!1832442 () Bool)

(assert (=> b!1560860 m!1832442))

(assert (=> b!1560860 m!1832326))

(assert (=> b!1560860 m!1832428))

(declare-fun m!1832444 () Bool)

(assert (=> b!1560860 m!1832444))

(assert (=> b!1560860 m!1832432))

(assert (=> b!1560860 m!1832438))

(declare-fun m!1832446 () Bool)

(assert (=> b!1560860 m!1832446))

(declare-fun m!1832448 () Bool)

(assert (=> b!1560856 m!1832448))

(assert (=> b!1560856 m!1832326))

(declare-fun m!1832450 () Bool)

(assert (=> b!1560851 m!1832450))

(declare-fun m!1832452 () Bool)

(assert (=> bm!102250 m!1832452))

(declare-fun m!1832454 () Bool)

(assert (=> bm!102252 m!1832454))

(declare-fun m!1832456 () Bool)

(assert (=> d!462315 m!1832456))

(declare-fun m!1832458 () Bool)

(assert (=> d!462315 m!1832458))

(declare-fun m!1832460 () Bool)

(assert (=> d!462315 m!1832460))

(declare-fun m!1832462 () Bool)

(assert (=> d!462315 m!1832462))

(assert (=> d!462315 m!1832460))

(declare-fun m!1832464 () Bool)

(assert (=> d!462315 m!1832464))

(assert (=> d!462315 m!1832408))

(assert (=> d!462315 m!1832428))

(declare-fun m!1832466 () Bool)

(assert (=> d!462315 m!1832466))

(declare-fun m!1832468 () Bool)

(assert (=> bm!102249 m!1832468))

(assert (=> bm!102246 m!1832328))

(declare-fun m!1832470 () Bool)

(assert (=> bm!102246 m!1832470))

(assert (=> bm!102253 m!1832436))

(assert (=> b!1560752 d!462315))

(declare-fun bs!388885 () Bool)

(declare-fun d!462317 () Bool)

(assert (= bs!388885 (and d!462317 b!1560778)))

(declare-fun lambda!66035 () Int)

(assert (=> bs!388885 (= lambda!66035 lambda!66032)))

(assert (=> d!462317 true))

(assert (=> d!462317 (< (dynLambda!7538 order!10021 (toChars!4205 (transformation!2967 rule!240))) (dynLambda!7537 order!10019 lambda!66035))))

(assert (=> d!462317 true))

(assert (=> d!462317 (< (dynLambda!7536 order!10017 (toValue!4346 (transformation!2967 rule!240))) (dynLambda!7537 order!10019 lambda!66035))))

(assert (=> d!462317 (= (semiInverseModEq!1124 (toChars!4205 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))) (Forall!619 lambda!66035))))

(declare-fun bs!388886 () Bool)

(assert (= bs!388886 d!462317))

(declare-fun m!1832472 () Bool)

(assert (=> bs!388886 m!1832472))

(assert (=> b!1560752 d!462317))

(declare-fun d!462319 () Bool)

(declare-fun dynLambda!7539 (Int BalanceConc!11112) TokenValue!3057)

(assert (=> d!462319 (= (apply!4121 (transformation!2967 rule!240) (_1!9660 (_1!9661 lt!540542))) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) (_1!9660 (_1!9661 lt!540542))))))

(declare-fun b_lambda!49069 () Bool)

(assert (=> (not b_lambda!49069) (not d!462319)))

(declare-fun t!141532 () Bool)

(declare-fun tb!87379 () Bool)

(assert (=> (and b!1560763 (= (toValue!4346 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))) t!141532) tb!87379))

(declare-fun result!105650 () Bool)

(declare-fun inv!21 (TokenValue!3057) Bool)

(assert (=> tb!87379 (= result!105650 (inv!21 (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) (_1!9660 (_1!9661 lt!540542)))))))

(declare-fun m!1832474 () Bool)

(assert (=> tb!87379 m!1832474))

(assert (=> d!462319 t!141532))

(declare-fun b_and!108961 () Bool)

(assert (= b_and!108953 (and (=> t!141532 result!105650) b_and!108961)))

(declare-fun m!1832476 () Bool)

(assert (=> d!462319 m!1832476))

(assert (=> b!1560780 d!462319))

(declare-fun d!462321 () Bool)

(assert (=> d!462321 (= (list!6516 (_1!9660 (_1!9661 lt!540542))) (list!6517 (c!253139 (_1!9660 (_1!9661 lt!540542)))))))

(declare-fun bs!388887 () Bool)

(assert (= bs!388887 d!462321))

(declare-fun m!1832478 () Bool)

(assert (=> bs!388887 m!1832478))

(assert (=> b!1560780 d!462321))

(declare-fun d!462323 () Bool)

(declare-fun dynLambda!7540 (Int BalanceConc!11112) Bool)

(assert (=> d!462323 (dynLambda!7540 lambda!66032 (_1!9660 (_1!9661 lt!540542)))))

(declare-fun lt!540653 () Unit!26142)

(declare-fun choose!9315 (Int BalanceConc!11112) Unit!26142)

(assert (=> d!462323 (= lt!540653 (choose!9315 lambda!66032 (_1!9660 (_1!9661 lt!540542))))))

(assert (=> d!462323 (Forall!619 lambda!66032)))

(assert (=> d!462323 (= (ForallOf!222 lambda!66032 (_1!9660 (_1!9661 lt!540542))) lt!540653)))

(declare-fun b_lambda!49071 () Bool)

(assert (=> (not b_lambda!49071) (not d!462323)))

(declare-fun bs!388888 () Bool)

(assert (= bs!388888 d!462323))

(declare-fun m!1832480 () Bool)

(assert (=> bs!388888 m!1832480))

(declare-fun m!1832482 () Bool)

(assert (=> bs!388888 m!1832482))

(assert (=> bs!388888 m!1832390))

(assert (=> b!1560780 d!462323))

(declare-fun d!462325 () Bool)

(declare-fun fromListB!769 (List!16997) BalanceConc!11112)

(assert (=> d!462325 (= (seqFromList!1785 lt!540549) (fromListB!769 lt!540549))))

(declare-fun bs!388889 () Bool)

(assert (= bs!388889 d!462325))

(declare-fun m!1832484 () Bool)

(assert (=> bs!388889 m!1832484))

(assert (=> b!1560780 d!462325))

(declare-fun d!462327 () Bool)

(declare-fun lt!540656 () Int)

(assert (=> d!462327 (= lt!540656 (size!13737 (list!6516 (_1!9660 (_1!9661 lt!540542)))))))

(declare-fun size!13741 (Conc!5585) Int)

(assert (=> d!462327 (= lt!540656 (size!13741 (c!253139 (_1!9660 (_1!9661 lt!540542)))))))

(assert (=> d!462327 (= (size!13740 (_1!9660 (_1!9661 lt!540542))) lt!540656)))

(declare-fun bs!388890 () Bool)

(assert (= bs!388890 d!462327))

(assert (=> bs!388890 m!1832366))

(assert (=> bs!388890 m!1832366))

(declare-fun m!1832486 () Bool)

(assert (=> bs!388890 m!1832486))

(declare-fun m!1832488 () Bool)

(assert (=> bs!388890 m!1832488))

(assert (=> b!1560780 d!462327))

(declare-fun b!1560889 () Bool)

(declare-fun res!696041 () Bool)

(declare-fun e!1002232 () Bool)

(assert (=> b!1560889 (=> (not res!696041) (not e!1002232))))

(declare-fun lt!540671 () Option!3059)

(assert (=> b!1560889 (= res!696041 (< (size!13737 (_2!9657 (get!4871 lt!540671))) (size!13737 lt!540557)))))

(declare-fun b!1560890 () Bool)

(declare-fun res!696040 () Bool)

(assert (=> b!1560890 (=> (not res!696040) (not e!1002232))))

(declare-fun charsOf!1653 (Token!5502) BalanceConc!11112)

(assert (=> b!1560890 (= res!696040 (= (++!4422 (list!6516 (charsOf!1653 (_1!9657 (get!4871 lt!540671)))) (_2!9657 (get!4871 lt!540671))) lt!540557))))

(declare-fun b!1560891 () Bool)

(declare-fun e!1002233 () Option!3059)

(declare-fun lt!540669 () tuple2!16528)

(assert (=> b!1560891 (= e!1002233 (Some!3058 (tuple2!16531 (Token!5503 (apply!4121 (transformation!2967 rule!240) (seqFromList!1785 (_1!9656 lt!540669))) rule!240 (size!13740 (seqFromList!1785 (_1!9656 lt!540669))) (_1!9656 lt!540669)) (_2!9656 lt!540669))))))

(declare-fun lt!540667 () Unit!26142)

(assert (=> b!1560891 (= lt!540667 (longestMatchIsAcceptedByMatchOrIsEmpty!327 (regex!2967 rule!240) lt!540557))))

(declare-fun res!696039 () Bool)

(assert (=> b!1560891 (= res!696039 (isEmpty!10160 (_1!9656 (findLongestMatchInner!343 (regex!2967 rule!240) Nil!16929 (size!13737 Nil!16929) lt!540557 lt!540557 (size!13737 lt!540557)))))))

(declare-fun e!1002235 () Bool)

(assert (=> b!1560891 (=> res!696039 e!1002235)))

(assert (=> b!1560891 e!1002235))

(declare-fun lt!540670 () Unit!26142)

(assert (=> b!1560891 (= lt!540670 lt!540667)))

(declare-fun lt!540668 () Unit!26142)

(declare-fun lemmaSemiInverse!372 (TokenValueInjection!5774 BalanceConc!11112) Unit!26142)

(assert (=> b!1560891 (= lt!540668 (lemmaSemiInverse!372 (transformation!2967 rule!240) (seqFromList!1785 (_1!9656 lt!540669))))))

(declare-fun b!1560893 () Bool)

(assert (=> b!1560893 (= e!1002232 (= (size!13738 (_1!9657 (get!4871 lt!540671))) (size!13737 (originalCharacters!3782 (_1!9657 (get!4871 lt!540671))))))))

(declare-fun b!1560894 () Bool)

(declare-fun res!696042 () Bool)

(assert (=> b!1560894 (=> (not res!696042) (not e!1002232))))

(assert (=> b!1560894 (= res!696042 (= (value!94192 (_1!9657 (get!4871 lt!540671))) (apply!4121 (transformation!2967 (rule!4751 (_1!9657 (get!4871 lt!540671)))) (seqFromList!1785 (originalCharacters!3782 (_1!9657 (get!4871 lt!540671)))))))))

(declare-fun b!1560895 () Bool)

(assert (=> b!1560895 (= e!1002233 None!3058)))

(declare-fun b!1560896 () Bool)

(declare-fun e!1002234 () Bool)

(assert (=> b!1560896 (= e!1002234 e!1002232)))

(declare-fun res!696036 () Bool)

(assert (=> b!1560896 (=> (not res!696036) (not e!1002232))))

(assert (=> b!1560896 (= res!696036 (matchR!1888 (regex!2967 rule!240) (list!6516 (charsOf!1653 (_1!9657 (get!4871 lt!540671))))))))

(declare-fun b!1560897 () Bool)

(assert (=> b!1560897 (= e!1002235 (matchR!1888 (regex!2967 rule!240) (_1!9656 (findLongestMatchInner!343 (regex!2967 rule!240) Nil!16929 (size!13737 Nil!16929) lt!540557 lt!540557 (size!13737 lt!540557)))))))

(declare-fun b!1560892 () Bool)

(declare-fun res!696038 () Bool)

(assert (=> b!1560892 (=> (not res!696038) (not e!1002232))))

(assert (=> b!1560892 (= res!696038 (= (rule!4751 (_1!9657 (get!4871 lt!540671))) rule!240))))

(declare-fun d!462329 () Bool)

(assert (=> d!462329 e!1002234))

(declare-fun res!696037 () Bool)

(assert (=> d!462329 (=> res!696037 e!1002234)))

(declare-fun isEmpty!10162 (Option!3059) Bool)

(assert (=> d!462329 (= res!696037 (isEmpty!10162 lt!540671))))

(assert (=> d!462329 (= lt!540671 e!1002233)))

(declare-fun c!253165 () Bool)

(assert (=> d!462329 (= c!253165 (isEmpty!10160 (_1!9656 lt!540669)))))

(declare-fun findLongestMatch!270 (Regex!4295 List!16997) tuple2!16528)

(assert (=> d!462329 (= lt!540669 (findLongestMatch!270 (regex!2967 rule!240) lt!540557))))

(assert (=> d!462329 (ruleValid!696 thiss!16438 rule!240)))

(assert (=> d!462329 (= (maxPrefixOneRule!713 thiss!16438 rule!240 lt!540557) lt!540671)))

(assert (= (and d!462329 c!253165) b!1560895))

(assert (= (and d!462329 (not c!253165)) b!1560891))

(assert (= (and b!1560891 (not res!696039)) b!1560897))

(assert (= (and d!462329 (not res!696037)) b!1560896))

(assert (= (and b!1560896 res!696036) b!1560890))

(assert (= (and b!1560890 res!696040) b!1560889))

(assert (= (and b!1560889 res!696041) b!1560892))

(assert (= (and b!1560892 res!696038) b!1560894))

(assert (= (and b!1560894 res!696042) b!1560893))

(declare-fun m!1832490 () Bool)

(assert (=> d!462329 m!1832490))

(declare-fun m!1832492 () Bool)

(assert (=> d!462329 m!1832492))

(declare-fun m!1832494 () Bool)

(assert (=> d!462329 m!1832494))

(assert (=> d!462329 m!1832346))

(assert (=> b!1560891 m!1832326))

(assert (=> b!1560891 m!1832328))

(assert (=> b!1560891 m!1832330))

(declare-fun m!1832496 () Bool)

(assert (=> b!1560891 m!1832496))

(declare-fun m!1832498 () Bool)

(assert (=> b!1560891 m!1832498))

(assert (=> b!1560891 m!1832410))

(assert (=> b!1560891 m!1832496))

(declare-fun m!1832500 () Bool)

(assert (=> b!1560891 m!1832500))

(assert (=> b!1560891 m!1832338))

(assert (=> b!1560891 m!1832496))

(assert (=> b!1560891 m!1832496))

(declare-fun m!1832502 () Bool)

(assert (=> b!1560891 m!1832502))

(assert (=> b!1560891 m!1832328))

(assert (=> b!1560891 m!1832326))

(declare-fun m!1832504 () Bool)

(assert (=> b!1560893 m!1832504))

(declare-fun m!1832506 () Bool)

(assert (=> b!1560893 m!1832506))

(assert (=> b!1560889 m!1832504))

(declare-fun m!1832508 () Bool)

(assert (=> b!1560889 m!1832508))

(assert (=> b!1560889 m!1832328))

(assert (=> b!1560890 m!1832504))

(declare-fun m!1832510 () Bool)

(assert (=> b!1560890 m!1832510))

(assert (=> b!1560890 m!1832510))

(declare-fun m!1832512 () Bool)

(assert (=> b!1560890 m!1832512))

(assert (=> b!1560890 m!1832512))

(declare-fun m!1832514 () Bool)

(assert (=> b!1560890 m!1832514))

(assert (=> b!1560892 m!1832504))

(assert (=> b!1560897 m!1832326))

(assert (=> b!1560897 m!1832328))

(assert (=> b!1560897 m!1832326))

(assert (=> b!1560897 m!1832328))

(assert (=> b!1560897 m!1832330))

(assert (=> b!1560897 m!1832414))

(assert (=> b!1560894 m!1832504))

(declare-fun m!1832516 () Bool)

(assert (=> b!1560894 m!1832516))

(assert (=> b!1560894 m!1832516))

(declare-fun m!1832518 () Bool)

(assert (=> b!1560894 m!1832518))

(assert (=> b!1560896 m!1832504))

(assert (=> b!1560896 m!1832510))

(assert (=> b!1560896 m!1832510))

(assert (=> b!1560896 m!1832512))

(assert (=> b!1560896 m!1832512))

(declare-fun m!1832520 () Bool)

(assert (=> b!1560896 m!1832520))

(assert (=> b!1560780 d!462329))

(declare-fun d!462331 () Bool)

(assert (=> d!462331 (dynLambda!7540 lambda!66032 lt!540553)))

(declare-fun lt!540672 () Unit!26142)

(assert (=> d!462331 (= lt!540672 (choose!9315 lambda!66032 lt!540553))))

(assert (=> d!462331 (Forall!619 lambda!66032)))

(assert (=> d!462331 (= (ForallOf!222 lambda!66032 lt!540553) lt!540672)))

(declare-fun b_lambda!49073 () Bool)

(assert (=> (not b_lambda!49073) (not d!462331)))

(declare-fun bs!388891 () Bool)

(assert (= bs!388891 d!462331))

(declare-fun m!1832522 () Bool)

(assert (=> bs!388891 m!1832522))

(declare-fun m!1832524 () Bool)

(assert (=> bs!388891 m!1832524))

(assert (=> bs!388891 m!1832390))

(assert (=> b!1560780 d!462331))

(declare-fun d!462333 () Bool)

(declare-fun isEmpty!10163 (Option!3060) Bool)

(assert (=> d!462333 (= (isDefined!2460 (Some!3059 (tuple2!16537 lt!540547 (_2!9660 (_1!9661 lt!540542))))) (not (isEmpty!10163 (Some!3059 (tuple2!16537 lt!540547 (_2!9660 (_1!9661 lt!540542)))))))))

(declare-fun bs!388892 () Bool)

(assert (= bs!388892 d!462333))

(declare-fun m!1832526 () Bool)

(assert (=> bs!388892 m!1832526))

(assert (=> b!1560780 d!462333))

(declare-fun d!462335 () Bool)

(assert (=> d!462335 (= (isDefined!2459 lt!540554) (not (isEmpty!10162 lt!540554)))))

(declare-fun bs!388893 () Bool)

(assert (= bs!388893 d!462335))

(declare-fun m!1832528 () Bool)

(assert (=> bs!388893 m!1832528))

(assert (=> b!1560780 d!462335))

(declare-fun d!462337 () Bool)

(declare-fun res!696047 () Bool)

(declare-fun e!1002238 () Bool)

(assert (=> d!462337 (=> (not res!696047) (not e!1002238))))

(assert (=> d!462337 (= res!696047 (validRegex!1720 (regex!2967 rule!240)))))

(assert (=> d!462337 (= (ruleValid!696 thiss!16438 rule!240) e!1002238)))

(declare-fun b!1560902 () Bool)

(declare-fun res!696048 () Bool)

(assert (=> b!1560902 (=> (not res!696048) (not e!1002238))))

(assert (=> b!1560902 (= res!696048 (not (nullable!1279 (regex!2967 rule!240))))))

(declare-fun b!1560903 () Bool)

(assert (=> b!1560903 (= e!1002238 (not (= (tag!3231 rule!240) (String!19574 ""))))))

(assert (= (and d!462337 res!696047) b!1560902))

(assert (= (and b!1560902 res!696048) b!1560903))

(assert (=> d!462337 m!1832408))

(assert (=> b!1560902 m!1832468))

(assert (=> b!1560783 d!462337))

(declare-fun b!1560933 () Bool)

(declare-fun res!696065 () Bool)

(declare-fun e!1002258 () Bool)

(assert (=> b!1560933 (=> (not res!696065) (not e!1002258))))

(assert (=> b!1560933 (= res!696065 (isEmpty!10160 (tail!2216 (_1!9656 lt!540558))))))

(declare-fun b!1560934 () Bool)

(declare-fun e!1002257 () Bool)

(assert (=> b!1560934 (= e!1002257 (not (= (head!3121 (_1!9656 lt!540558)) (c!253140 (regex!2967 rule!240)))))))

(declare-fun b!1560935 () Bool)

(declare-fun res!696068 () Bool)

(declare-fun e!1002259 () Bool)

(assert (=> b!1560935 (=> res!696068 e!1002259)))

(assert (=> b!1560935 (= res!696068 (not ((_ is ElementMatch!4295) (regex!2967 rule!240))))))

(declare-fun e!1002256 () Bool)

(assert (=> b!1560935 (= e!1002256 e!1002259)))

(declare-fun b!1560936 () Bool)

(declare-fun e!1002255 () Bool)

(assert (=> b!1560936 (= e!1002255 (matchR!1888 (derivativeStep!1030 (regex!2967 rule!240) (head!3121 (_1!9656 lt!540558))) (tail!2216 (_1!9656 lt!540558))))))

(declare-fun b!1560932 () Bool)

(declare-fun res!696066 () Bool)

(assert (=> b!1560932 (=> res!696066 e!1002257)))

(assert (=> b!1560932 (= res!696066 (not (isEmpty!10160 (tail!2216 (_1!9656 lt!540558)))))))

(declare-fun d!462339 () Bool)

(declare-fun e!1002253 () Bool)

(assert (=> d!462339 e!1002253))

(declare-fun c!253173 () Bool)

(assert (=> d!462339 (= c!253173 ((_ is EmptyExpr!4295) (regex!2967 rule!240)))))

(declare-fun lt!540675 () Bool)

(assert (=> d!462339 (= lt!540675 e!1002255)))

(declare-fun c!253172 () Bool)

(assert (=> d!462339 (= c!253172 (isEmpty!10160 (_1!9656 lt!540558)))))

(assert (=> d!462339 (validRegex!1720 (regex!2967 rule!240))))

(assert (=> d!462339 (= (matchR!1888 (regex!2967 rule!240) (_1!9656 lt!540558)) lt!540675)))

(declare-fun b!1560937 () Bool)

(declare-fun e!1002254 () Bool)

(assert (=> b!1560937 (= e!1002259 e!1002254)))

(declare-fun res!696070 () Bool)

(assert (=> b!1560937 (=> (not res!696070) (not e!1002254))))

(assert (=> b!1560937 (= res!696070 (not lt!540675))))

(declare-fun bm!102256 () Bool)

(declare-fun call!102261 () Bool)

(assert (=> bm!102256 (= call!102261 (isEmpty!10160 (_1!9656 lt!540558)))))

(declare-fun b!1560938 () Bool)

(assert (=> b!1560938 (= e!1002253 e!1002256)))

(declare-fun c!253174 () Bool)

(assert (=> b!1560938 (= c!253174 ((_ is EmptyLang!4295) (regex!2967 rule!240)))))

(declare-fun b!1560939 () Bool)

(assert (=> b!1560939 (= e!1002258 (= (head!3121 (_1!9656 lt!540558)) (c!253140 (regex!2967 rule!240))))))

(declare-fun b!1560940 () Bool)

(declare-fun res!696067 () Bool)

(assert (=> b!1560940 (=> res!696067 e!1002259)))

(assert (=> b!1560940 (= res!696067 e!1002258)))

(declare-fun res!696072 () Bool)

(assert (=> b!1560940 (=> (not res!696072) (not e!1002258))))

(assert (=> b!1560940 (= res!696072 lt!540675)))

(declare-fun b!1560941 () Bool)

(assert (=> b!1560941 (= e!1002254 e!1002257)))

(declare-fun res!696071 () Bool)

(assert (=> b!1560941 (=> res!696071 e!1002257)))

(assert (=> b!1560941 (= res!696071 call!102261)))

(declare-fun b!1560942 () Bool)

(declare-fun res!696069 () Bool)

(assert (=> b!1560942 (=> (not res!696069) (not e!1002258))))

(assert (=> b!1560942 (= res!696069 (not call!102261))))

(declare-fun b!1560943 () Bool)

(assert (=> b!1560943 (= e!1002253 (= lt!540675 call!102261))))

(declare-fun b!1560944 () Bool)

(assert (=> b!1560944 (= e!1002255 (nullable!1279 (regex!2967 rule!240)))))

(declare-fun b!1560945 () Bool)

(assert (=> b!1560945 (= e!1002256 (not lt!540675))))

(assert (= (and d!462339 c!253172) b!1560944))

(assert (= (and d!462339 (not c!253172)) b!1560936))

(assert (= (and d!462339 c!253173) b!1560943))

(assert (= (and d!462339 (not c!253173)) b!1560938))

(assert (= (and b!1560938 c!253174) b!1560945))

(assert (= (and b!1560938 (not c!253174)) b!1560935))

(assert (= (and b!1560935 (not res!696068)) b!1560940))

(assert (= (and b!1560940 res!696072) b!1560942))

(assert (= (and b!1560942 res!696069) b!1560933))

(assert (= (and b!1560933 res!696065) b!1560939))

(assert (= (and b!1560940 (not res!696067)) b!1560937))

(assert (= (and b!1560937 res!696070) b!1560941))

(assert (= (and b!1560941 (not res!696071)) b!1560932))

(assert (= (and b!1560932 (not res!696066)) b!1560934))

(assert (= (or b!1560943 b!1560942 b!1560941) bm!102256))

(declare-fun m!1832530 () Bool)

(assert (=> b!1560936 m!1832530))

(assert (=> b!1560936 m!1832530))

(declare-fun m!1832532 () Bool)

(assert (=> b!1560936 m!1832532))

(declare-fun m!1832534 () Bool)

(assert (=> b!1560936 m!1832534))

(assert (=> b!1560936 m!1832532))

(assert (=> b!1560936 m!1832534))

(declare-fun m!1832536 () Bool)

(assert (=> b!1560936 m!1832536))

(assert (=> b!1560934 m!1832530))

(assert (=> b!1560933 m!1832534))

(assert (=> b!1560933 m!1832534))

(declare-fun m!1832538 () Bool)

(assert (=> b!1560933 m!1832538))

(assert (=> b!1560932 m!1832534))

(assert (=> b!1560932 m!1832534))

(assert (=> b!1560932 m!1832538))

(assert (=> d!462339 m!1832332))

(assert (=> d!462339 m!1832408))

(assert (=> b!1560939 m!1832530))

(assert (=> bm!102256 m!1832332))

(assert (=> b!1560944 m!1832468))

(assert (=> b!1560773 d!462339))

(declare-fun d!462341 () Bool)

(declare-fun e!1002262 () Bool)

(assert (=> d!462341 e!1002262))

(declare-fun res!696075 () Bool)

(assert (=> d!462341 (=> res!696075 e!1002262)))

(declare-fun lt!540678 () Bool)

(assert (=> d!462341 (= res!696075 (not lt!540678))))

(declare-fun drop!794 (List!16997 Int) List!16997)

(assert (=> d!462341 (= lt!540678 (= lt!540557 (drop!794 (list!6516 totalInput!568) (- (size!13737 (list!6516 totalInput!568)) (size!13737 lt!540557)))))))

(assert (=> d!462341 (= (isSuffix!387 lt!540557 (list!6516 totalInput!568)) lt!540678)))

(declare-fun b!1560948 () Bool)

(assert (=> b!1560948 (= e!1002262 (>= (size!13737 (list!6516 totalInput!568)) (size!13737 lt!540557)))))

(assert (= (and d!462341 (not res!696075)) b!1560948))

(assert (=> d!462341 m!1832316))

(declare-fun m!1832540 () Bool)

(assert (=> d!462341 m!1832540))

(assert (=> d!462341 m!1832328))

(assert (=> d!462341 m!1832316))

(declare-fun m!1832542 () Bool)

(assert (=> d!462341 m!1832542))

(assert (=> b!1560948 m!1832316))

(assert (=> b!1560948 m!1832540))

(assert (=> b!1560948 m!1832328))

(assert (=> b!1560784 d!462341))

(declare-fun d!462343 () Bool)

(assert (=> d!462343 (= (list!6516 totalInput!568) (list!6517 (c!253139 totalInput!568)))))

(declare-fun bs!388894 () Bool)

(assert (= bs!388894 d!462343))

(declare-fun m!1832544 () Bool)

(assert (=> bs!388894 m!1832544))

(assert (=> b!1560784 d!462343))

(declare-fun d!462345 () Bool)

(assert (=> d!462345 (= (list!6516 input!1676) (list!6517 (c!253139 input!1676)))))

(declare-fun bs!388895 () Bool)

(assert (= bs!388895 d!462345))

(declare-fun m!1832546 () Bool)

(assert (=> bs!388895 m!1832546))

(assert (=> b!1560784 d!462345))

(declare-fun d!462347 () Bool)

(assert (=> d!462347 (= (valid!1484 cacheDown!768) (validCacheMapDown!170 (cache!2178 cacheDown!768)))))

(declare-fun bs!388896 () Bool)

(assert (= bs!388896 d!462347))

(assert (=> bs!388896 m!1832398))

(assert (=> b!1560775 d!462347))

(declare-fun d!462349 () Bool)

(assert (=> d!462349 (= (valid!1485 cacheUp!755) (validCacheMapUp!170 (cache!2177 cacheUp!755)))))

(declare-fun bs!388897 () Bool)

(assert (= bs!388897 d!462349))

(assert (=> bs!388897 m!1832400))

(assert (=> b!1560786 d!462349))

(declare-fun d!462351 () Bool)

(declare-fun c!253177 () Bool)

(assert (=> d!462351 (= c!253177 ((_ is Node!5585) (c!253139 (totalInput!2497 cacheFurthestNullable!103))))))

(declare-fun e!1002267 () Bool)

(assert (=> d!462351 (= (inv!22231 (c!253139 (totalInput!2497 cacheFurthestNullable!103))) e!1002267)))

(declare-fun b!1560955 () Bool)

(declare-fun inv!22238 (Conc!5585) Bool)

(assert (=> b!1560955 (= e!1002267 (inv!22238 (c!253139 (totalInput!2497 cacheFurthestNullable!103))))))

(declare-fun b!1560956 () Bool)

(declare-fun e!1002268 () Bool)

(assert (=> b!1560956 (= e!1002267 e!1002268)))

(declare-fun res!696078 () Bool)

(assert (=> b!1560956 (= res!696078 (not ((_ is Leaf!8278) (c!253139 (totalInput!2497 cacheFurthestNullable!103)))))))

(assert (=> b!1560956 (=> res!696078 e!1002268)))

(declare-fun b!1560957 () Bool)

(declare-fun inv!22239 (Conc!5585) Bool)

(assert (=> b!1560957 (= e!1002268 (inv!22239 (c!253139 (totalInput!2497 cacheFurthestNullable!103))))))

(assert (= (and d!462351 c!253177) b!1560955))

(assert (= (and d!462351 (not c!253177)) b!1560956))

(assert (= (and b!1560956 (not res!696078)) b!1560957))

(declare-fun m!1832548 () Bool)

(assert (=> b!1560955 m!1832548))

(declare-fun m!1832550 () Bool)

(assert (=> b!1560957 m!1832550))

(assert (=> b!1560767 d!462351))

(declare-fun d!462353 () Bool)

(assert (=> d!462353 (= (array_inv!2029 (_keys!2146 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) (bvsge (size!13735 (_keys!2146 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560776 d!462353))

(declare-fun d!462355 () Bool)

(assert (=> d!462355 (= (array_inv!2030 (_values!2131 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) (bvsge (size!13736 (_values!2131 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1560776 d!462355))

(declare-fun d!462357 () Bool)

(declare-fun c!253178 () Bool)

(assert (=> d!462357 (= c!253178 ((_ is Node!5585) (c!253139 input!1676)))))

(declare-fun e!1002269 () Bool)

(assert (=> d!462357 (= (inv!22231 (c!253139 input!1676)) e!1002269)))

(declare-fun b!1560958 () Bool)

(assert (=> b!1560958 (= e!1002269 (inv!22238 (c!253139 input!1676)))))

(declare-fun b!1560959 () Bool)

(declare-fun e!1002270 () Bool)

(assert (=> b!1560959 (= e!1002269 e!1002270)))

(declare-fun res!696079 () Bool)

(assert (=> b!1560959 (= res!696079 (not ((_ is Leaf!8278) (c!253139 input!1676))))))

(assert (=> b!1560959 (=> res!696079 e!1002270)))

(declare-fun b!1560960 () Bool)

(assert (=> b!1560960 (= e!1002270 (inv!22239 (c!253139 input!1676)))))

(assert (= (and d!462357 c!253178) b!1560958))

(assert (= (and d!462357 (not c!253178)) b!1560959))

(assert (= (and b!1560959 (not res!696079)) b!1560960))

(declare-fun m!1832552 () Bool)

(assert (=> b!1560958 m!1832552))

(declare-fun m!1832554 () Bool)

(assert (=> b!1560960 m!1832554))

(assert (=> b!1560785 d!462357))

(declare-fun d!462359 () Bool)

(assert (=> d!462359 (= (valid!1483 cacheFurthestNullable!103) (validCacheMapFurthestNullable!83 (cache!2176 cacheFurthestNullable!103) (totalInput!2497 cacheFurthestNullable!103)))))

(declare-fun bs!388898 () Bool)

(assert (= bs!388898 d!462359))

(assert (=> bs!388898 m!1832404))

(assert (=> b!1560751 d!462359))

(declare-fun d!462361 () Bool)

(declare-fun choose!9316 (Int) Bool)

(assert (=> d!462361 (= (Forall!619 lambda!66032) (choose!9316 lambda!66032))))

(declare-fun bs!388899 () Bool)

(assert (= bs!388899 d!462361))

(declare-fun m!1832556 () Bool)

(assert (=> bs!388899 m!1832556))

(assert (=> b!1560778 d!462361))

(declare-fun d!462363 () Bool)

(declare-fun res!696084 () Bool)

(declare-fun e!1002273 () Bool)

(assert (=> d!462363 (=> (not res!696084) (not e!1002273))))

(assert (=> d!462363 (= res!696084 (not (isEmpty!10160 (originalCharacters!3782 lt!540547))))))

(assert (=> d!462363 (= (inv!22237 lt!540547) e!1002273)))

(declare-fun b!1560965 () Bool)

(declare-fun res!696085 () Bool)

(assert (=> b!1560965 (=> (not res!696085) (not e!1002273))))

(declare-fun dynLambda!7541 (Int TokenValue!3057) BalanceConc!11112)

(assert (=> b!1560965 (= res!696085 (= (originalCharacters!3782 lt!540547) (list!6516 (dynLambda!7541 (toChars!4205 (transformation!2967 (rule!4751 lt!540547))) (value!94192 lt!540547)))))))

(declare-fun b!1560966 () Bool)

(assert (=> b!1560966 (= e!1002273 (= (size!13738 lt!540547) (size!13737 (originalCharacters!3782 lt!540547))))))

(assert (= (and d!462363 res!696084) b!1560965))

(assert (= (and b!1560965 res!696085) b!1560966))

(declare-fun b_lambda!49075 () Bool)

(assert (=> (not b_lambda!49075) (not b!1560965)))

(declare-fun t!141534 () Bool)

(declare-fun tb!87381 () Bool)

(assert (=> (and b!1560763 (= (toChars!4205 (transformation!2967 rule!240)) (toChars!4205 (transformation!2967 (rule!4751 lt!540547)))) t!141534) tb!87381))

(declare-fun b!1560971 () Bool)

(declare-fun e!1002276 () Bool)

(declare-fun tp!459183 () Bool)

(assert (=> b!1560971 (= e!1002276 (and (inv!22231 (c!253139 (dynLambda!7541 (toChars!4205 (transformation!2967 (rule!4751 lt!540547))) (value!94192 lt!540547)))) tp!459183))))

(declare-fun result!105654 () Bool)

(assert (=> tb!87381 (= result!105654 (and (inv!22232 (dynLambda!7541 (toChars!4205 (transformation!2967 (rule!4751 lt!540547))) (value!94192 lt!540547))) e!1002276))))

(assert (= tb!87381 b!1560971))

(declare-fun m!1832558 () Bool)

(assert (=> b!1560971 m!1832558))

(declare-fun m!1832560 () Bool)

(assert (=> tb!87381 m!1832560))

(assert (=> b!1560965 t!141534))

(declare-fun b_and!108963 () Bool)

(assert (= b_and!108955 (and (=> t!141534 result!105654) b_and!108963)))

(declare-fun m!1832562 () Bool)

(assert (=> d!462363 m!1832562))

(declare-fun m!1832564 () Bool)

(assert (=> b!1560965 m!1832564))

(assert (=> b!1560965 m!1832564))

(declare-fun m!1832566 () Bool)

(assert (=> b!1560965 m!1832566))

(declare-fun m!1832568 () Bool)

(assert (=> b!1560966 m!1832568))

(assert (=> b!1560788 d!462363))

(declare-fun d!462365 () Bool)

(declare-fun c!253179 () Bool)

(assert (=> d!462365 (= c!253179 ((_ is Node!5585) (c!253139 totalInput!568)))))

(declare-fun e!1002277 () Bool)

(assert (=> d!462365 (= (inv!22231 (c!253139 totalInput!568)) e!1002277)))

(declare-fun b!1560972 () Bool)

(assert (=> b!1560972 (= e!1002277 (inv!22238 (c!253139 totalInput!568)))))

(declare-fun b!1560973 () Bool)

(declare-fun e!1002278 () Bool)

(assert (=> b!1560973 (= e!1002277 e!1002278)))

(declare-fun res!696086 () Bool)

(assert (=> b!1560973 (= res!696086 (not ((_ is Leaf!8278) (c!253139 totalInput!568))))))

(assert (=> b!1560973 (=> res!696086 e!1002278)))

(declare-fun b!1560974 () Bool)

(assert (=> b!1560974 (= e!1002278 (inv!22239 (c!253139 totalInput!568)))))

(assert (= (and d!462365 c!253179) b!1560972))

(assert (= (and d!462365 (not c!253179)) b!1560973))

(assert (= (and b!1560973 (not res!696086)) b!1560974))

(declare-fun m!1832570 () Bool)

(assert (=> b!1560972 m!1832570))

(declare-fun m!1832572 () Bool)

(assert (=> b!1560974 m!1832572))

(assert (=> b!1560758 d!462365))

(declare-fun d!462367 () Bool)

(assert (=> d!462367 (= (apply!4121 (transformation!2967 rule!240) lt!540553) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) lt!540553))))

(declare-fun b_lambda!49077 () Bool)

(assert (=> (not b_lambda!49077) (not d!462367)))

(declare-fun t!141536 () Bool)

(declare-fun tb!87383 () Bool)

(assert (=> (and b!1560763 (= (toValue!4346 (transformation!2967 rule!240)) (toValue!4346 (transformation!2967 rule!240))) t!141536) tb!87383))

(declare-fun result!105658 () Bool)

(assert (=> tb!87383 (= result!105658 (inv!21 (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) lt!540553)))))

(declare-fun m!1832574 () Bool)

(assert (=> tb!87383 m!1832574))

(assert (=> d!462367 t!141536))

(declare-fun b_and!108965 () Bool)

(assert (= b_and!108961 (and (=> t!141536 result!105658) b_and!108965)))

(declare-fun m!1832576 () Bool)

(assert (=> d!462367 m!1832576))

(assert (=> b!1560768 d!462367))

(declare-fun b!1560981 () Bool)

(declare-fun e!1002284 () Bool)

(assert (=> b!1560981 (= e!1002284 true)))

(declare-fun d!462369 () Bool)

(assert (=> d!462369 e!1002284))

(assert (= d!462369 b!1560981))

(declare-fun lambda!66038 () Int)

(declare-fun order!10023 () Int)

(declare-fun dynLambda!7542 (Int Int) Int)

(assert (=> b!1560981 (< (dynLambda!7536 order!10017 (toValue!4346 (transformation!2967 rule!240))) (dynLambda!7542 order!10023 lambda!66038))))

(assert (=> b!1560981 (< (dynLambda!7538 order!10021 (toChars!4205 (transformation!2967 rule!240))) (dynLambda!7542 order!10023 lambda!66038))))

(assert (=> d!462369 (= (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) (_1!9660 (_1!9661 lt!540542))) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) lt!540553))))

(declare-fun lt!540681 () Unit!26142)

(declare-fun Forall2of!48 (Int BalanceConc!11112 BalanceConc!11112) Unit!26142)

(assert (=> d!462369 (= lt!540681 (Forall2of!48 lambda!66038 (_1!9660 (_1!9661 lt!540542)) lt!540553))))

(assert (=> d!462369 (= (list!6516 (_1!9660 (_1!9661 lt!540542))) (list!6516 lt!540553))))

(assert (=> d!462369 (= (lemmaEqSameImage!157 (transformation!2967 rule!240) (_1!9660 (_1!9661 lt!540542)) lt!540553) lt!540681)))

(declare-fun b_lambda!49079 () Bool)

(assert (=> (not b_lambda!49079) (not d!462369)))

(assert (=> d!462369 t!141532))

(declare-fun b_and!108967 () Bool)

(assert (= b_and!108965 (and (=> t!141532 result!105650) b_and!108967)))

(declare-fun b_lambda!49081 () Bool)

(assert (=> (not b_lambda!49081) (not d!462369)))

(assert (=> d!462369 t!141536))

(declare-fun b_and!108969 () Bool)

(assert (= b_and!108967 (and (=> t!141536 result!105658) b_and!108969)))

(assert (=> d!462369 m!1832366))

(assert (=> d!462369 m!1832576))

(assert (=> d!462369 m!1832314))

(assert (=> d!462369 m!1832476))

(declare-fun m!1832578 () Bool)

(assert (=> d!462369 m!1832578))

(assert (=> b!1560768 d!462369))

(declare-fun d!462371 () Bool)

(declare-fun lt!540684 () Bool)

(assert (=> d!462371 (= lt!540684 (isEmpty!10160 (list!6516 (_1!9660 (_1!9661 lt!540542)))))))

(declare-fun isEmpty!10164 (Conc!5585) Bool)

(assert (=> d!462371 (= lt!540684 (isEmpty!10164 (c!253139 (_1!9660 (_1!9661 lt!540542)))))))

(assert (=> d!462371 (= (isEmpty!10161 (_1!9660 (_1!9661 lt!540542))) lt!540684)))

(declare-fun bs!388900 () Bool)

(assert (= bs!388900 d!462371))

(assert (=> bs!388900 m!1832366))

(assert (=> bs!388900 m!1832366))

(declare-fun m!1832580 () Bool)

(assert (=> bs!388900 m!1832580))

(declare-fun m!1832582 () Bool)

(assert (=> bs!388900 m!1832582))

(assert (=> b!1560777 d!462371))

(declare-fun b!1560990 () Bool)

(declare-fun res!696098 () Bool)

(declare-fun e!1002287 () Bool)

(assert (=> b!1560990 (=> (not res!696098) (not e!1002287))))

(declare-fun lt!540687 () tuple4!922)

(assert (=> b!1560990 (= res!696098 (valid!1484 (_3!1393 lt!540687)))))

(declare-fun b!1560991 () Bool)

(declare-fun res!696097 () Bool)

(assert (=> b!1560991 (=> (not res!696097) (not e!1002287))))

(assert (=> b!1560991 (= res!696097 (valid!1485 (_2!9661 lt!540687)))))

(declare-fun b!1560992 () Bool)

(declare-fun res!696100 () Bool)

(assert (=> b!1560992 (=> (not res!696100) (not e!1002287))))

(assert (=> b!1560992 (= res!696100 (valid!1483 (_4!461 lt!540687)))))

(declare-fun b!1560993 () Bool)

(assert (=> b!1560993 (= e!1002287 (= (totalInput!2497 (_4!461 lt!540687)) totalInput!568))))

(declare-fun d!462373 () Bool)

(assert (=> d!462373 e!1002287))

(declare-fun res!696099 () Bool)

(assert (=> d!462373 (=> (not res!696099) (not e!1002287))))

(assert (=> d!462373 (= res!696099 (= (tuple2!16529 (list!6516 (_1!9660 (_1!9661 lt!540687))) (list!6516 (_2!9660 (_1!9661 lt!540687)))) (findLongestMatch!270 (regex!2967 rule!240) (list!6516 input!1676))))))

(declare-fun choose!9317 (Regex!4295 BalanceConc!11112 BalanceConc!11112 CacheUp!1094 CacheDown!1102 CacheFurthestNullable!522) tuple4!922)

(assert (=> d!462373 (= lt!540687 (choose!9317 (regex!2967 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!462373 (validRegex!1720 (regex!2967 rule!240))))

(assert (=> d!462373 (= (findLongestMatchWithZipperSequenceV3Mem!62 (regex!2967 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!540687)))

(assert (= (and d!462373 res!696099) b!1560990))

(assert (= (and b!1560990 res!696098) b!1560991))

(assert (= (and b!1560991 res!696097) b!1560992))

(assert (= (and b!1560992 res!696100) b!1560993))

(declare-fun m!1832584 () Bool)

(assert (=> b!1560990 m!1832584))

(declare-fun m!1832586 () Bool)

(assert (=> b!1560991 m!1832586))

(declare-fun m!1832588 () Bool)

(assert (=> b!1560992 m!1832588))

(declare-fun m!1832590 () Bool)

(assert (=> d!462373 m!1832590))

(assert (=> d!462373 m!1832320))

(declare-fun m!1832592 () Bool)

(assert (=> d!462373 m!1832592))

(declare-fun m!1832594 () Bool)

(assert (=> d!462373 m!1832594))

(assert (=> d!462373 m!1832408))

(assert (=> d!462373 m!1832320))

(declare-fun m!1832596 () Bool)

(assert (=> d!462373 m!1832596))

(assert (=> b!1560777 d!462373))

(declare-fun d!462375 () Bool)

(assert (=> d!462375 (= (inv!22232 (totalInput!2497 cacheFurthestNullable!103)) (isBalanced!1652 (c!253139 (totalInput!2497 cacheFurthestNullable!103))))))

(declare-fun bs!388901 () Bool)

(assert (= bs!388901 d!462375))

(declare-fun m!1832598 () Bool)

(assert (=> bs!388901 m!1832598))

(assert (=> b!1560759 d!462375))

(declare-fun tp_is_empty!7085 () Bool)

(declare-fun tp!459214 () Bool)

(declare-fun e!1002304 () Bool)

(declare-fun mapValue!8627 () List!17001)

(declare-fun setRes!11170 () Bool)

(declare-fun tp!459209 () Bool)

(declare-fun e!1002301 () Bool)

(declare-fun b!1561008 () Bool)

(declare-fun inv!22240 (Context!1626) Bool)

(assert (=> b!1561008 (= e!1002304 (and tp!459214 (inv!22240 (_2!9658 (_1!9659 (h!22334 mapValue!8627)))) e!1002301 tp_is_empty!7085 setRes!11170 tp!459209))))

(declare-fun condSetEmpty!11171 () Bool)

(assert (=> b!1561008 (= condSetEmpty!11171 (= (_2!9659 (h!22334 mapValue!8627)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun b!1561009 () Bool)

(declare-fun tp!459212 () Bool)

(assert (=> b!1561009 (= e!1002301 tp!459212)))

(declare-fun mapIsEmpty!8627 () Bool)

(declare-fun mapRes!8627 () Bool)

(assert (=> mapIsEmpty!8627 mapRes!8627))

(declare-fun b!1561010 () Bool)

(declare-fun e!1002305 () Bool)

(declare-fun tp!459213 () Bool)

(assert (=> b!1561010 (= e!1002305 tp!459213)))

(declare-fun setIsEmpty!11170 () Bool)

(assert (=> setIsEmpty!11170 setRes!11170))

(declare-fun setIsEmpty!11171 () Bool)

(declare-fun setRes!11171 () Bool)

(assert (=> setIsEmpty!11171 setRes!11171))

(declare-fun setNonEmpty!11170 () Bool)

(declare-fun tp!459210 () Bool)

(declare-fun e!1002300 () Bool)

(declare-fun setElem!11171 () Context!1626)

(assert (=> setNonEmpty!11170 (= setRes!11171 (and tp!459210 (inv!22240 setElem!11171) e!1002300))))

(declare-fun mapDefault!8627 () List!17001)

(declare-fun setRest!11171 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11170 (= (_2!9659 (h!22334 mapDefault!8627)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11171 true) setRest!11171))))

(declare-fun mapNonEmpty!8627 () Bool)

(declare-fun tp!459216 () Bool)

(assert (=> mapNonEmpty!8627 (= mapRes!8627 (and tp!459216 e!1002304))))

(declare-fun mapRest!8627 () (Array (_ BitVec 32) List!17001))

(declare-fun mapKey!8627 () (_ BitVec 32))

(assert (=> mapNonEmpty!8627 (= mapRest!8622 (store mapRest!8627 mapKey!8627 mapValue!8627))))

(declare-fun b!1561012 () Bool)

(declare-fun tp!459206 () Bool)

(assert (=> b!1561012 (= e!1002300 tp!459206)))

(declare-fun setElem!11170 () Context!1626)

(declare-fun tp!459211 () Bool)

(declare-fun setNonEmpty!11171 () Bool)

(declare-fun e!1002302 () Bool)

(assert (=> setNonEmpty!11171 (= setRes!11170 (and tp!459211 (inv!22240 setElem!11170) e!1002302))))

(declare-fun setRest!11170 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11171 (= (_2!9659 (h!22334 mapValue!8627)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11170 true) setRest!11170))))

(declare-fun b!1561013 () Bool)

(declare-fun tp!459215 () Bool)

(assert (=> b!1561013 (= e!1002302 tp!459215)))

(declare-fun tp!459207 () Bool)

(declare-fun e!1002303 () Bool)

(declare-fun tp!459208 () Bool)

(declare-fun b!1561011 () Bool)

(assert (=> b!1561011 (= e!1002303 (and tp!459207 (inv!22240 (_2!9658 (_1!9659 (h!22334 mapDefault!8627)))) e!1002305 tp_is_empty!7085 setRes!11171 tp!459208))))

(declare-fun condSetEmpty!11170 () Bool)

(assert (=> b!1561011 (= condSetEmpty!11170 (= (_2!9659 (h!22334 mapDefault!8627)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun condMapEmpty!8627 () Bool)

(assert (=> mapNonEmpty!8624 (= condMapEmpty!8627 (= mapRest!8622 ((as const (Array (_ BitVec 32) List!17001)) mapDefault!8627)))))

(assert (=> mapNonEmpty!8624 (= tp!459166 (and e!1002303 mapRes!8627))))

(assert (= (and mapNonEmpty!8624 condMapEmpty!8627) mapIsEmpty!8627))

(assert (= (and mapNonEmpty!8624 (not condMapEmpty!8627)) mapNonEmpty!8627))

(assert (= b!1561008 b!1561009))

(assert (= (and b!1561008 condSetEmpty!11171) setIsEmpty!11170))

(assert (= (and b!1561008 (not condSetEmpty!11171)) setNonEmpty!11171))

(assert (= setNonEmpty!11171 b!1561013))

(assert (= (and mapNonEmpty!8627 ((_ is Cons!16933) mapValue!8627)) b!1561008))

(assert (= b!1561011 b!1561010))

(assert (= (and b!1561011 condSetEmpty!11170) setIsEmpty!11171))

(assert (= (and b!1561011 (not condSetEmpty!11170)) setNonEmpty!11170))

(assert (= setNonEmpty!11170 b!1561012))

(assert (= (and mapNonEmpty!8624 ((_ is Cons!16933) mapDefault!8627)) b!1561011))

(declare-fun m!1832600 () Bool)

(assert (=> setNonEmpty!11171 m!1832600))

(declare-fun m!1832602 () Bool)

(assert (=> mapNonEmpty!8627 m!1832602))

(declare-fun m!1832604 () Bool)

(assert (=> setNonEmpty!11170 m!1832604))

(declare-fun m!1832606 () Bool)

(assert (=> b!1561008 m!1832606))

(declare-fun m!1832608 () Bool)

(assert (=> b!1561011 m!1832608))

(declare-fun b!1561022 () Bool)

(declare-fun e!1002314 () Bool)

(declare-fun tp!459230 () Bool)

(assert (=> b!1561022 (= e!1002314 tp!459230)))

(declare-fun e!1002313 () Bool)

(assert (=> mapNonEmpty!8624 (= tp!459170 e!1002313)))

(declare-fun b!1561023 () Bool)

(declare-fun e!1002312 () Bool)

(declare-fun tp!459228 () Bool)

(assert (=> b!1561023 (= e!1002312 tp!459228)))

(declare-fun tp!459227 () Bool)

(declare-fun b!1561024 () Bool)

(declare-fun setRes!11174 () Bool)

(declare-fun tp!459231 () Bool)

(assert (=> b!1561024 (= e!1002313 (and tp!459231 (inv!22240 (_2!9658 (_1!9659 (h!22334 mapValue!8624)))) e!1002312 tp_is_empty!7085 setRes!11174 tp!459227))))

(declare-fun condSetEmpty!11174 () Bool)

(assert (=> b!1561024 (= condSetEmpty!11174 (= (_2!9659 (h!22334 mapValue!8624)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun tp!459229 () Bool)

(declare-fun setElem!11174 () Context!1626)

(declare-fun setNonEmpty!11174 () Bool)

(assert (=> setNonEmpty!11174 (= setRes!11174 (and tp!459229 (inv!22240 setElem!11174) e!1002314))))

(declare-fun setRest!11174 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11174 (= (_2!9659 (h!22334 mapValue!8624)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11174 true) setRest!11174))))

(declare-fun setIsEmpty!11174 () Bool)

(assert (=> setIsEmpty!11174 setRes!11174))

(assert (= b!1561024 b!1561023))

(assert (= (and b!1561024 condSetEmpty!11174) setIsEmpty!11174))

(assert (= (and b!1561024 (not condSetEmpty!11174)) setNonEmpty!11174))

(assert (= setNonEmpty!11174 b!1561022))

(assert (= (and mapNonEmpty!8624 ((_ is Cons!16933) mapValue!8624)) b!1561024))

(declare-fun m!1832610 () Bool)

(assert (=> b!1561024 m!1832610))

(declare-fun m!1832612 () Bool)

(assert (=> setNonEmpty!11174 m!1832612))

(declare-fun e!1002319 () Bool)

(assert (=> b!1560781 (= tp!459180 e!1002319)))

(declare-fun setIsEmpty!11177 () Bool)

(declare-fun setRes!11177 () Bool)

(assert (=> setIsEmpty!11177 setRes!11177))

(declare-fun b!1561032 () Bool)

(declare-fun e!1002320 () Bool)

(declare-fun tp!459238 () Bool)

(assert (=> b!1561032 (= e!1002320 tp!459238)))

(declare-fun b!1561031 () Bool)

(declare-fun tp!459239 () Bool)

(assert (=> b!1561031 (= e!1002319 (and setRes!11177 tp!459239))))

(declare-fun condSetEmpty!11177 () Bool)

(assert (=> b!1561031 (= condSetEmpty!11177 (= (_1!9652 (_1!9653 (h!22332 (zeroValue!2108 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun tp!459240 () Bool)

(declare-fun setElem!11177 () Context!1626)

(declare-fun setNonEmpty!11177 () Bool)

(assert (=> setNonEmpty!11177 (= setRes!11177 (and tp!459240 (inv!22240 setElem!11177) e!1002320))))

(declare-fun setRest!11177 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11177 (= (_1!9652 (_1!9653 (h!22332 (zeroValue!2108 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11177 true) setRest!11177))))

(assert (= (and b!1561031 condSetEmpty!11177) setIsEmpty!11177))

(assert (= (and b!1561031 (not condSetEmpty!11177)) setNonEmpty!11177))

(assert (= setNonEmpty!11177 b!1561032))

(assert (= (and b!1560781 ((_ is Cons!16931) (zeroValue!2108 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103)))))))) b!1561031))

(declare-fun m!1832614 () Bool)

(assert (=> setNonEmpty!11177 m!1832614))

(declare-fun e!1002321 () Bool)

(assert (=> b!1560781 (= tp!459154 e!1002321)))

(declare-fun setIsEmpty!11178 () Bool)

(declare-fun setRes!11178 () Bool)

(assert (=> setIsEmpty!11178 setRes!11178))

(declare-fun b!1561034 () Bool)

(declare-fun e!1002322 () Bool)

(declare-fun tp!459241 () Bool)

(assert (=> b!1561034 (= e!1002322 tp!459241)))

(declare-fun b!1561033 () Bool)

(declare-fun tp!459242 () Bool)

(assert (=> b!1561033 (= e!1002321 (and setRes!11178 tp!459242))))

(declare-fun condSetEmpty!11178 () Bool)

(assert (=> b!1561033 (= condSetEmpty!11178 (= (_1!9652 (_1!9653 (h!22332 (minValue!2108 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setElem!11178 () Context!1626)

(declare-fun tp!459243 () Bool)

(declare-fun setNonEmpty!11178 () Bool)

(assert (=> setNonEmpty!11178 (= setRes!11178 (and tp!459243 (inv!22240 setElem!11178) e!1002322))))

(declare-fun setRest!11178 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11178 (= (_1!9652 (_1!9653 (h!22332 (minValue!2108 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11178 true) setRest!11178))))

(assert (= (and b!1561033 condSetEmpty!11178) setIsEmpty!11178))

(assert (= (and b!1561033 (not condSetEmpty!11178)) setNonEmpty!11178))

(assert (= setNonEmpty!11178 b!1561034))

(assert (= (and b!1560781 ((_ is Cons!16931) (minValue!2108 (v!23791 (underlying!3911 (v!23792 (underlying!3912 (cache!2176 cacheFurthestNullable!103)))))))) b!1561033))

(declare-fun m!1832616 () Bool)

(assert (=> setNonEmpty!11178 m!1832616))

(declare-fun mapDefault!8630 () List!17000)

(declare-fun e!1002335 () Bool)

(declare-fun b!1561049 () Bool)

(declare-fun setRes!11183 () Bool)

(declare-fun e!1002339 () Bool)

(declare-fun tp!459263 () Bool)

(assert (=> b!1561049 (= e!1002335 (and (inv!22240 (_1!9654 (_1!9655 (h!22333 mapDefault!8630)))) e!1002339 tp_is_empty!7085 setRes!11183 tp!459263))))

(declare-fun condSetEmpty!11183 () Bool)

(assert (=> b!1561049 (= condSetEmpty!11183 (= (_2!9655 (h!22333 mapDefault!8630)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun b!1561050 () Bool)

(declare-fun e!1002340 () Bool)

(declare-fun tp!459270 () Bool)

(assert (=> b!1561050 (= e!1002340 tp!459270)))

(declare-fun setIsEmpty!11183 () Bool)

(declare-fun setRes!11184 () Bool)

(assert (=> setIsEmpty!11183 setRes!11184))

(declare-fun setIsEmpty!11184 () Bool)

(assert (=> setIsEmpty!11184 setRes!11183))

(declare-fun b!1561051 () Bool)

(declare-fun e!1002337 () Bool)

(declare-fun tp!459269 () Bool)

(assert (=> b!1561051 (= e!1002337 tp!459269)))

(declare-fun b!1561052 () Bool)

(declare-fun e!1002338 () Bool)

(declare-fun tp!459264 () Bool)

(assert (=> b!1561052 (= e!1002338 tp!459264)))

(declare-fun tp!459267 () Bool)

(declare-fun setElem!11184 () Context!1626)

(declare-fun setNonEmpty!11184 () Bool)

(assert (=> setNonEmpty!11184 (= setRes!11184 (and tp!459267 (inv!22240 setElem!11184) e!1002338))))

(declare-fun mapValue!8630 () List!17000)

(declare-fun setRest!11184 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11184 (= (_2!9655 (h!22333 mapValue!8630)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11184 true) setRest!11184))))

(declare-fun mapIsEmpty!8630 () Bool)

(declare-fun mapRes!8630 () Bool)

(assert (=> mapIsEmpty!8630 mapRes!8630))

(declare-fun e!1002336 () Bool)

(declare-fun b!1561053 () Bool)

(declare-fun tp!459265 () Bool)

(assert (=> b!1561053 (= e!1002336 (and (inv!22240 (_1!9654 (_1!9655 (h!22333 mapValue!8630)))) e!1002337 tp_is_empty!7085 setRes!11184 tp!459265))))

(declare-fun condSetEmpty!11184 () Bool)

(assert (=> b!1561053 (= condSetEmpty!11184 (= (_2!9655 (h!22333 mapValue!8630)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun condMapEmpty!8630 () Bool)

(assert (=> mapNonEmpty!8622 (= condMapEmpty!8630 (= mapRest!8623 ((as const (Array (_ BitVec 32) List!17000)) mapDefault!8630)))))

(assert (=> mapNonEmpty!8622 (= tp!459159 (and e!1002335 mapRes!8630))))

(declare-fun setElem!11183 () Context!1626)

(declare-fun tp!459266 () Bool)

(declare-fun setNonEmpty!11183 () Bool)

(assert (=> setNonEmpty!11183 (= setRes!11183 (and tp!459266 (inv!22240 setElem!11183) e!1002340))))

(declare-fun setRest!11183 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11183 (= (_2!9655 (h!22333 mapDefault!8630)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11183 true) setRest!11183))))

(declare-fun mapNonEmpty!8630 () Bool)

(declare-fun tp!459262 () Bool)

(assert (=> mapNonEmpty!8630 (= mapRes!8630 (and tp!459262 e!1002336))))

(declare-fun mapRest!8630 () (Array (_ BitVec 32) List!17000))

(declare-fun mapKey!8630 () (_ BitVec 32))

(assert (=> mapNonEmpty!8630 (= mapRest!8623 (store mapRest!8630 mapKey!8630 mapValue!8630))))

(declare-fun b!1561054 () Bool)

(declare-fun tp!459268 () Bool)

(assert (=> b!1561054 (= e!1002339 tp!459268)))

(assert (= (and mapNonEmpty!8622 condMapEmpty!8630) mapIsEmpty!8630))

(assert (= (and mapNonEmpty!8622 (not condMapEmpty!8630)) mapNonEmpty!8630))

(assert (= b!1561053 b!1561051))

(assert (= (and b!1561053 condSetEmpty!11184) setIsEmpty!11183))

(assert (= (and b!1561053 (not condSetEmpty!11184)) setNonEmpty!11184))

(assert (= setNonEmpty!11184 b!1561052))

(assert (= (and mapNonEmpty!8630 ((_ is Cons!16932) mapValue!8630)) b!1561053))

(assert (= b!1561049 b!1561054))

(assert (= (and b!1561049 condSetEmpty!11183) setIsEmpty!11184))

(assert (= (and b!1561049 (not condSetEmpty!11183)) setNonEmpty!11183))

(assert (= setNonEmpty!11183 b!1561050))

(assert (= (and mapNonEmpty!8622 ((_ is Cons!16932) mapDefault!8630)) b!1561049))

(declare-fun m!1832618 () Bool)

(assert (=> setNonEmpty!11183 m!1832618))

(declare-fun m!1832620 () Bool)

(assert (=> mapNonEmpty!8630 m!1832620))

(declare-fun m!1832622 () Bool)

(assert (=> setNonEmpty!11184 m!1832622))

(declare-fun m!1832624 () Bool)

(assert (=> b!1561049 m!1832624))

(declare-fun m!1832626 () Bool)

(assert (=> b!1561053 m!1832626))

(declare-fun b!1561063 () Bool)

(declare-fun e!1002348 () Bool)

(declare-fun tp!459281 () Bool)

(assert (=> b!1561063 (= e!1002348 tp!459281)))

(declare-fun b!1561064 () Bool)

(declare-fun e!1002347 () Bool)

(declare-fun tp!459282 () Bool)

(assert (=> b!1561064 (= e!1002347 tp!459282)))

(declare-fun setNonEmpty!11187 () Bool)

(declare-fun tp!459280 () Bool)

(declare-fun setRes!11187 () Bool)

(declare-fun setElem!11187 () Context!1626)

(assert (=> setNonEmpty!11187 (= setRes!11187 (and tp!459280 (inv!22240 setElem!11187) e!1002348))))

(declare-fun setRest!11187 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11187 (= (_2!9655 (h!22333 mapValue!8622)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11187 true) setRest!11187))))

(declare-fun b!1561065 () Bool)

(declare-fun tp!459279 () Bool)

(declare-fun e!1002349 () Bool)

(assert (=> b!1561065 (= e!1002349 (and (inv!22240 (_1!9654 (_1!9655 (h!22333 mapValue!8622)))) e!1002347 tp_is_empty!7085 setRes!11187 tp!459279))))

(declare-fun condSetEmpty!11187 () Bool)

(assert (=> b!1561065 (= condSetEmpty!11187 (= (_2!9655 (h!22333 mapValue!8622)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setIsEmpty!11187 () Bool)

(assert (=> setIsEmpty!11187 setRes!11187))

(assert (=> mapNonEmpty!8622 (= tp!459160 e!1002349)))

(assert (= b!1561065 b!1561064))

(assert (= (and b!1561065 condSetEmpty!11187) setIsEmpty!11187))

(assert (= (and b!1561065 (not condSetEmpty!11187)) setNonEmpty!11187))

(assert (= setNonEmpty!11187 b!1561063))

(assert (= (and mapNonEmpty!8622 ((_ is Cons!16932) mapValue!8622)) b!1561065))

(declare-fun m!1832628 () Bool)

(assert (=> setNonEmpty!11187 m!1832628))

(declare-fun m!1832630 () Bool)

(assert (=> b!1561065 m!1832630))

(declare-fun b!1561066 () Bool)

(declare-fun e!1002352 () Bool)

(declare-fun tp!459286 () Bool)

(assert (=> b!1561066 (= e!1002352 tp!459286)))

(declare-fun e!1002351 () Bool)

(assert (=> b!1560779 (= tp!459167 e!1002351)))

(declare-fun b!1561067 () Bool)

(declare-fun e!1002350 () Bool)

(declare-fun tp!459284 () Bool)

(assert (=> b!1561067 (= e!1002350 tp!459284)))

(declare-fun tp!459287 () Bool)

(declare-fun tp!459283 () Bool)

(declare-fun b!1561068 () Bool)

(declare-fun setRes!11188 () Bool)

(assert (=> b!1561068 (= e!1002351 (and tp!459287 (inv!22240 (_2!9658 (_1!9659 (h!22334 (zeroValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))))) e!1002350 tp_is_empty!7085 setRes!11188 tp!459283))))

(declare-fun condSetEmpty!11188 () Bool)

(assert (=> b!1561068 (= condSetEmpty!11188 (= (_2!9659 (h!22334 (zeroValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun tp!459285 () Bool)

(declare-fun setNonEmpty!11188 () Bool)

(declare-fun setElem!11188 () Context!1626)

(assert (=> setNonEmpty!11188 (= setRes!11188 (and tp!459285 (inv!22240 setElem!11188) e!1002352))))

(declare-fun setRest!11188 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11188 (= (_2!9659 (h!22334 (zeroValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11188 true) setRest!11188))))

(declare-fun setIsEmpty!11188 () Bool)

(assert (=> setIsEmpty!11188 setRes!11188))

(assert (= b!1561068 b!1561067))

(assert (= (and b!1561068 condSetEmpty!11188) setIsEmpty!11188))

(assert (= (and b!1561068 (not condSetEmpty!11188)) setNonEmpty!11188))

(assert (= setNonEmpty!11188 b!1561066))

(assert (= (and b!1560779 ((_ is Cons!16933) (zeroValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))) b!1561068))

(declare-fun m!1832632 () Bool)

(assert (=> b!1561068 m!1832632))

(declare-fun m!1832634 () Bool)

(assert (=> setNonEmpty!11188 m!1832634))

(declare-fun b!1561069 () Bool)

(declare-fun e!1002355 () Bool)

(declare-fun tp!459291 () Bool)

(assert (=> b!1561069 (= e!1002355 tp!459291)))

(declare-fun e!1002354 () Bool)

(assert (=> b!1560779 (= tp!459162 e!1002354)))

(declare-fun b!1561070 () Bool)

(declare-fun e!1002353 () Bool)

(declare-fun tp!459289 () Bool)

(assert (=> b!1561070 (= e!1002353 tp!459289)))

(declare-fun setRes!11189 () Bool)

(declare-fun tp!459292 () Bool)

(declare-fun b!1561071 () Bool)

(declare-fun tp!459288 () Bool)

(assert (=> b!1561071 (= e!1002354 (and tp!459292 (inv!22240 (_2!9658 (_1!9659 (h!22334 (minValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))))) e!1002353 tp_is_empty!7085 setRes!11189 tp!459288))))

(declare-fun condSetEmpty!11189 () Bool)

(assert (=> b!1561071 (= condSetEmpty!11189 (= (_2!9659 (h!22334 (minValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setElem!11189 () Context!1626)

(declare-fun setNonEmpty!11189 () Bool)

(declare-fun tp!459290 () Bool)

(assert (=> setNonEmpty!11189 (= setRes!11189 (and tp!459290 (inv!22240 setElem!11189) e!1002355))))

(declare-fun setRest!11189 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11189 (= (_2!9659 (h!22334 (minValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11189 true) setRest!11189))))

(declare-fun setIsEmpty!11189 () Bool)

(assert (=> setIsEmpty!11189 setRes!11189))

(assert (= b!1561071 b!1561070))

(assert (= (and b!1561071 condSetEmpty!11189) setIsEmpty!11189))

(assert (= (and b!1561071 (not condSetEmpty!11189)) setNonEmpty!11189))

(assert (= setNonEmpty!11189 b!1561069))

(assert (= (and b!1560779 ((_ is Cons!16933) (minValue!2110 (v!23796 (underlying!3915 (v!23797 (underlying!3916 (cache!2178 cacheDown!768)))))))) b!1561071))

(declare-fun m!1832636 () Bool)

(assert (=> b!1561071 m!1832636))

(declare-fun m!1832638 () Bool)

(assert (=> setNonEmpty!11189 m!1832638))

(declare-fun b!1561082 () Bool)

(declare-fun e!1002358 () Bool)

(assert (=> b!1561082 (= e!1002358 tp_is_empty!7085)))

(assert (=> b!1560770 (= tp!459169 e!1002358)))

(declare-fun b!1561084 () Bool)

(declare-fun tp!459305 () Bool)

(assert (=> b!1561084 (= e!1002358 tp!459305)))

(declare-fun b!1561085 () Bool)

(declare-fun tp!459304 () Bool)

(declare-fun tp!459306 () Bool)

(assert (=> b!1561085 (= e!1002358 (and tp!459304 tp!459306))))

(declare-fun b!1561083 () Bool)

(declare-fun tp!459307 () Bool)

(declare-fun tp!459303 () Bool)

(assert (=> b!1561083 (= e!1002358 (and tp!459307 tp!459303))))

(assert (= (and b!1560770 ((_ is ElementMatch!4295) (regex!2967 rule!240))) b!1561082))

(assert (= (and b!1560770 ((_ is Concat!7353) (regex!2967 rule!240))) b!1561083))

(assert (= (and b!1560770 ((_ is Star!4295) (regex!2967 rule!240))) b!1561084))

(assert (= (and b!1560770 ((_ is Union!4295) (regex!2967 rule!240))) b!1561085))

(declare-fun b!1561086 () Bool)

(declare-fun e!1002361 () Bool)

(declare-fun tp!459311 () Bool)

(assert (=> b!1561086 (= e!1002361 tp!459311)))

(declare-fun e!1002360 () Bool)

(assert (=> b!1560771 (= tp!459175 e!1002360)))

(declare-fun b!1561087 () Bool)

(declare-fun e!1002359 () Bool)

(declare-fun tp!459309 () Bool)

(assert (=> b!1561087 (= e!1002359 tp!459309)))

(declare-fun tp!459308 () Bool)

(declare-fun setRes!11190 () Bool)

(declare-fun tp!459312 () Bool)

(declare-fun b!1561088 () Bool)

(assert (=> b!1561088 (= e!1002360 (and tp!459312 (inv!22240 (_2!9658 (_1!9659 (h!22334 mapDefault!8623)))) e!1002359 tp_is_empty!7085 setRes!11190 tp!459308))))

(declare-fun condSetEmpty!11190 () Bool)

(assert (=> b!1561088 (= condSetEmpty!11190 (= (_2!9659 (h!22334 mapDefault!8623)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setElem!11190 () Context!1626)

(declare-fun tp!459310 () Bool)

(declare-fun setNonEmpty!11190 () Bool)

(assert (=> setNonEmpty!11190 (= setRes!11190 (and tp!459310 (inv!22240 setElem!11190) e!1002361))))

(declare-fun setRest!11190 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11190 (= (_2!9659 (h!22334 mapDefault!8623)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11190 true) setRest!11190))))

(declare-fun setIsEmpty!11190 () Bool)

(assert (=> setIsEmpty!11190 setRes!11190))

(assert (= b!1561088 b!1561087))

(assert (= (and b!1561088 condSetEmpty!11190) setIsEmpty!11190))

(assert (= (and b!1561088 (not condSetEmpty!11190)) setNonEmpty!11190))

(assert (= setNonEmpty!11190 b!1561086))

(assert (= (and b!1560771 ((_ is Cons!16933) mapDefault!8623)) b!1561088))

(declare-fun m!1832640 () Bool)

(assert (=> b!1561088 m!1832640))

(declare-fun m!1832642 () Bool)

(assert (=> setNonEmpty!11190 m!1832642))

(declare-fun tp!459320 () Bool)

(declare-fun e!1002367 () Bool)

(declare-fun b!1561097 () Bool)

(declare-fun tp!459319 () Bool)

(assert (=> b!1561097 (= e!1002367 (and (inv!22231 (left!13735 (c!253139 (totalInput!2497 cacheFurthestNullable!103)))) tp!459320 (inv!22231 (right!14065 (c!253139 (totalInput!2497 cacheFurthestNullable!103)))) tp!459319))))

(declare-fun b!1561099 () Bool)

(declare-fun e!1002366 () Bool)

(declare-fun tp!459321 () Bool)

(assert (=> b!1561099 (= e!1002366 tp!459321)))

(declare-fun b!1561098 () Bool)

(declare-fun inv!22241 (IArray!11175) Bool)

(assert (=> b!1561098 (= e!1002367 (and (inv!22241 (xs!8385 (c!253139 (totalInput!2497 cacheFurthestNullable!103)))) e!1002366))))

(assert (=> b!1560767 (= tp!459178 (and (inv!22231 (c!253139 (totalInput!2497 cacheFurthestNullable!103))) e!1002367))))

(assert (= (and b!1560767 ((_ is Node!5585) (c!253139 (totalInput!2497 cacheFurthestNullable!103)))) b!1561097))

(assert (= b!1561098 b!1561099))

(assert (= (and b!1560767 ((_ is Leaf!8278) (c!253139 (totalInput!2497 cacheFurthestNullable!103)))) b!1561098))

(declare-fun m!1832644 () Bool)

(assert (=> b!1561097 m!1832644))

(declare-fun m!1832646 () Bool)

(assert (=> b!1561097 m!1832646))

(declare-fun m!1832648 () Bool)

(assert (=> b!1561098 m!1832648))

(assert (=> b!1560767 m!1832344))

(declare-fun b!1561100 () Bool)

(declare-fun e!1002369 () Bool)

(declare-fun tp!459324 () Bool)

(assert (=> b!1561100 (= e!1002369 tp!459324)))

(declare-fun b!1561101 () Bool)

(declare-fun e!1002368 () Bool)

(declare-fun tp!459325 () Bool)

(assert (=> b!1561101 (= e!1002368 tp!459325)))

(declare-fun tp!459323 () Bool)

(declare-fun setRes!11191 () Bool)

(declare-fun setElem!11191 () Context!1626)

(declare-fun setNonEmpty!11191 () Bool)

(assert (=> setNonEmpty!11191 (= setRes!11191 (and tp!459323 (inv!22240 setElem!11191) e!1002369))))

(declare-fun setRest!11191 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11191 (= (_2!9655 (h!22333 (zeroValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11191 true) setRest!11191))))

(declare-fun tp!459322 () Bool)

(declare-fun b!1561102 () Bool)

(declare-fun e!1002370 () Bool)

(assert (=> b!1561102 (= e!1002370 (and (inv!22240 (_1!9654 (_1!9655 (h!22333 (zeroValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))))) e!1002368 tp_is_empty!7085 setRes!11191 tp!459322))))

(declare-fun condSetEmpty!11191 () Bool)

(assert (=> b!1561102 (= condSetEmpty!11191 (= (_2!9655 (h!22333 (zeroValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setIsEmpty!11191 () Bool)

(assert (=> setIsEmpty!11191 setRes!11191))

(assert (=> b!1560776 (= tp!459174 e!1002370)))

(assert (= b!1561102 b!1561101))

(assert (= (and b!1561102 condSetEmpty!11191) setIsEmpty!11191))

(assert (= (and b!1561102 (not condSetEmpty!11191)) setNonEmpty!11191))

(assert (= setNonEmpty!11191 b!1561100))

(assert (= (and b!1560776 ((_ is Cons!16932) (zeroValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))) b!1561102))

(declare-fun m!1832650 () Bool)

(assert (=> setNonEmpty!11191 m!1832650))

(declare-fun m!1832652 () Bool)

(assert (=> b!1561102 m!1832652))

(declare-fun b!1561103 () Bool)

(declare-fun e!1002372 () Bool)

(declare-fun tp!459328 () Bool)

(assert (=> b!1561103 (= e!1002372 tp!459328)))

(declare-fun b!1561104 () Bool)

(declare-fun e!1002371 () Bool)

(declare-fun tp!459329 () Bool)

(assert (=> b!1561104 (= e!1002371 tp!459329)))

(declare-fun tp!459327 () Bool)

(declare-fun setNonEmpty!11192 () Bool)

(declare-fun setRes!11192 () Bool)

(declare-fun setElem!11192 () Context!1626)

(assert (=> setNonEmpty!11192 (= setRes!11192 (and tp!459327 (inv!22240 setElem!11192) e!1002372))))

(declare-fun setRest!11192 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11192 (= (_2!9655 (h!22333 (minValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11192 true) setRest!11192))))

(declare-fun e!1002373 () Bool)

(declare-fun tp!459326 () Bool)

(declare-fun b!1561105 () Bool)

(assert (=> b!1561105 (= e!1002373 (and (inv!22240 (_1!9654 (_1!9655 (h!22333 (minValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))))) e!1002371 tp_is_empty!7085 setRes!11192 tp!459326))))

(declare-fun condSetEmpty!11192 () Bool)

(assert (=> b!1561105 (= condSetEmpty!11192 (= (_2!9655 (h!22333 (minValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setIsEmpty!11192 () Bool)

(assert (=> setIsEmpty!11192 setRes!11192))

(assert (=> b!1560776 (= tp!459168 e!1002373)))

(assert (= b!1561105 b!1561104))

(assert (= (and b!1561105 condSetEmpty!11192) setIsEmpty!11192))

(assert (= (and b!1561105 (not condSetEmpty!11192)) setNonEmpty!11192))

(assert (= setNonEmpty!11192 b!1561103))

(assert (= (and b!1560776 ((_ is Cons!16932) (minValue!2109 (v!23793 (underlying!3913 (v!23794 (underlying!3914 (cache!2177 cacheUp!755)))))))) b!1561105))

(declare-fun m!1832654 () Bool)

(assert (=> setNonEmpty!11192 m!1832654))

(declare-fun m!1832656 () Bool)

(assert (=> b!1561105 m!1832656))

(declare-fun b!1561116 () Bool)

(declare-fun e!1002382 () Bool)

(declare-fun tp!459344 () Bool)

(assert (=> b!1561116 (= e!1002382 tp!459344)))

(declare-fun setIsEmpty!11197 () Bool)

(declare-fun setRes!11198 () Bool)

(assert (=> setIsEmpty!11197 setRes!11198))

(declare-fun mapNonEmpty!8633 () Bool)

(declare-fun mapRes!8633 () Bool)

(declare-fun tp!459348 () Bool)

(declare-fun e!1002385 () Bool)

(assert (=> mapNonEmpty!8633 (= mapRes!8633 (and tp!459348 e!1002385))))

(declare-fun mapKey!8633 () (_ BitVec 32))

(declare-fun mapRest!8633 () (Array (_ BitVec 32) List!16999))

(declare-fun mapValue!8633 () List!16999)

(assert (=> mapNonEmpty!8633 (= mapRest!8624 (store mapRest!8633 mapKey!8633 mapValue!8633))))

(declare-fun condMapEmpty!8633 () Bool)

(declare-fun mapDefault!8633 () List!16999)

(assert (=> mapNonEmpty!8623 (= condMapEmpty!8633 (= mapRest!8624 ((as const (Array (_ BitVec 32) List!16999)) mapDefault!8633)))))

(declare-fun e!1002383 () Bool)

(assert (=> mapNonEmpty!8623 (= tp!459171 (and e!1002383 mapRes!8633))))

(declare-fun setIsEmpty!11198 () Bool)

(declare-fun setRes!11197 () Bool)

(assert (=> setIsEmpty!11198 setRes!11197))

(declare-fun b!1561117 () Bool)

(declare-fun tp!459345 () Bool)

(assert (=> b!1561117 (= e!1002385 (and setRes!11197 tp!459345))))

(declare-fun condSetEmpty!11197 () Bool)

(assert (=> b!1561117 (= condSetEmpty!11197 (= (_1!9652 (_1!9653 (h!22332 mapValue!8633))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun b!1561118 () Bool)

(declare-fun tp!459350 () Bool)

(assert (=> b!1561118 (= e!1002383 (and setRes!11198 tp!459350))))

(declare-fun condSetEmpty!11198 () Bool)

(assert (=> b!1561118 (= condSetEmpty!11198 (= (_1!9652 (_1!9653 (h!22332 mapDefault!8633))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun b!1561119 () Bool)

(declare-fun e!1002384 () Bool)

(declare-fun tp!459346 () Bool)

(assert (=> b!1561119 (= e!1002384 tp!459346)))

(declare-fun tp!459349 () Bool)

(declare-fun setNonEmpty!11197 () Bool)

(declare-fun setElem!11198 () Context!1626)

(assert (=> setNonEmpty!11197 (= setRes!11198 (and tp!459349 (inv!22240 setElem!11198) e!1002384))))

(declare-fun setRest!11198 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11197 (= (_1!9652 (_1!9653 (h!22332 mapDefault!8633))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11198 true) setRest!11198))))

(declare-fun setElem!11197 () Context!1626)

(declare-fun tp!459347 () Bool)

(declare-fun setNonEmpty!11198 () Bool)

(assert (=> setNonEmpty!11198 (= setRes!11197 (and tp!459347 (inv!22240 setElem!11197) e!1002382))))

(declare-fun setRest!11197 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11198 (= (_1!9652 (_1!9653 (h!22332 mapValue!8633))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11197 true) setRest!11197))))

(declare-fun mapIsEmpty!8633 () Bool)

(assert (=> mapIsEmpty!8633 mapRes!8633))

(assert (= (and mapNonEmpty!8623 condMapEmpty!8633) mapIsEmpty!8633))

(assert (= (and mapNonEmpty!8623 (not condMapEmpty!8633)) mapNonEmpty!8633))

(assert (= (and b!1561117 condSetEmpty!11197) setIsEmpty!11198))

(assert (= (and b!1561117 (not condSetEmpty!11197)) setNonEmpty!11198))

(assert (= setNonEmpty!11198 b!1561116))

(assert (= (and mapNonEmpty!8633 ((_ is Cons!16931) mapValue!8633)) b!1561117))

(assert (= (and b!1561118 condSetEmpty!11198) setIsEmpty!11197))

(assert (= (and b!1561118 (not condSetEmpty!11198)) setNonEmpty!11197))

(assert (= setNonEmpty!11197 b!1561119))

(assert (= (and mapNonEmpty!8623 ((_ is Cons!16931) mapDefault!8633)) b!1561118))

(declare-fun m!1832658 () Bool)

(assert (=> mapNonEmpty!8633 m!1832658))

(declare-fun m!1832660 () Bool)

(assert (=> setNonEmpty!11197 m!1832660))

(declare-fun m!1832662 () Bool)

(assert (=> setNonEmpty!11198 m!1832662))

(declare-fun e!1002386 () Bool)

(assert (=> mapNonEmpty!8623 (= tp!459157 e!1002386)))

(declare-fun setIsEmpty!11199 () Bool)

(declare-fun setRes!11199 () Bool)

(assert (=> setIsEmpty!11199 setRes!11199))

(declare-fun b!1561121 () Bool)

(declare-fun e!1002387 () Bool)

(declare-fun tp!459351 () Bool)

(assert (=> b!1561121 (= e!1002387 tp!459351)))

(declare-fun b!1561120 () Bool)

(declare-fun tp!459352 () Bool)

(assert (=> b!1561120 (= e!1002386 (and setRes!11199 tp!459352))))

(declare-fun condSetEmpty!11199 () Bool)

(assert (=> b!1561120 (= condSetEmpty!11199 (= (_1!9652 (_1!9653 (h!22332 mapValue!8623))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setNonEmpty!11199 () Bool)

(declare-fun setElem!11199 () Context!1626)

(declare-fun tp!459353 () Bool)

(assert (=> setNonEmpty!11199 (= setRes!11199 (and tp!459353 (inv!22240 setElem!11199) e!1002387))))

(declare-fun setRest!11199 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11199 (= (_1!9652 (_1!9653 (h!22332 mapValue!8623))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11199 true) setRest!11199))))

(assert (= (and b!1561120 condSetEmpty!11199) setIsEmpty!11199))

(assert (= (and b!1561120 (not condSetEmpty!11199)) setNonEmpty!11199))

(assert (= setNonEmpty!11199 b!1561121))

(assert (= (and mapNonEmpty!8623 ((_ is Cons!16931) mapValue!8623)) b!1561120))

(declare-fun m!1832664 () Bool)

(assert (=> setNonEmpty!11199 m!1832664))

(declare-fun b!1561122 () Bool)

(declare-fun e!1002389 () Bool)

(declare-fun tp!459354 () Bool)

(declare-fun tp!459355 () Bool)

(assert (=> b!1561122 (= e!1002389 (and (inv!22231 (left!13735 (c!253139 input!1676))) tp!459355 (inv!22231 (right!14065 (c!253139 input!1676))) tp!459354))))

(declare-fun b!1561124 () Bool)

(declare-fun e!1002388 () Bool)

(declare-fun tp!459356 () Bool)

(assert (=> b!1561124 (= e!1002388 tp!459356)))

(declare-fun b!1561123 () Bool)

(assert (=> b!1561123 (= e!1002389 (and (inv!22241 (xs!8385 (c!253139 input!1676))) e!1002388))))

(assert (=> b!1560785 (= tp!459179 (and (inv!22231 (c!253139 input!1676)) e!1002389))))

(assert (= (and b!1560785 ((_ is Node!5585) (c!253139 input!1676))) b!1561122))

(assert (= b!1561123 b!1561124))

(assert (= (and b!1560785 ((_ is Leaf!8278) (c!253139 input!1676))) b!1561123))

(declare-fun m!1832666 () Bool)

(assert (=> b!1561122 m!1832666))

(declare-fun m!1832668 () Bool)

(assert (=> b!1561122 m!1832668))

(declare-fun m!1832670 () Bool)

(assert (=> b!1561123 m!1832670))

(assert (=> b!1560785 m!1832308))

(declare-fun b!1561125 () Bool)

(declare-fun e!1002391 () Bool)

(declare-fun tp!459359 () Bool)

(assert (=> b!1561125 (= e!1002391 tp!459359)))

(declare-fun b!1561126 () Bool)

(declare-fun e!1002390 () Bool)

(declare-fun tp!459360 () Bool)

(assert (=> b!1561126 (= e!1002390 tp!459360)))

(declare-fun setNonEmpty!11200 () Bool)

(declare-fun tp!459358 () Bool)

(declare-fun setElem!11200 () Context!1626)

(declare-fun setRes!11200 () Bool)

(assert (=> setNonEmpty!11200 (= setRes!11200 (and tp!459358 (inv!22240 setElem!11200) e!1002391))))

(declare-fun setRest!11200 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11200 (= (_2!9655 (h!22333 mapDefault!8622)) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11200 true) setRest!11200))))

(declare-fun e!1002392 () Bool)

(declare-fun b!1561127 () Bool)

(declare-fun tp!459357 () Bool)

(assert (=> b!1561127 (= e!1002392 (and (inv!22240 (_1!9654 (_1!9655 (h!22333 mapDefault!8622)))) e!1002390 tp_is_empty!7085 setRes!11200 tp!459357))))

(declare-fun condSetEmpty!11200 () Bool)

(assert (=> b!1561127 (= condSetEmpty!11200 (= (_2!9655 (h!22333 mapDefault!8622)) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setIsEmpty!11200 () Bool)

(assert (=> setIsEmpty!11200 setRes!11200))

(assert (=> b!1560766 (= tp!459155 e!1002392)))

(assert (= b!1561127 b!1561126))

(assert (= (and b!1561127 condSetEmpty!11200) setIsEmpty!11200))

(assert (= (and b!1561127 (not condSetEmpty!11200)) setNonEmpty!11200))

(assert (= setNonEmpty!11200 b!1561125))

(assert (= (and b!1560766 ((_ is Cons!16932) mapDefault!8622)) b!1561127))

(declare-fun m!1832672 () Bool)

(assert (=> setNonEmpty!11200 m!1832672))

(declare-fun m!1832674 () Bool)

(assert (=> b!1561127 m!1832674))

(declare-fun b!1561128 () Bool)

(declare-fun e!1002394 () Bool)

(declare-fun tp!459362 () Bool)

(declare-fun tp!459361 () Bool)

(assert (=> b!1561128 (= e!1002394 (and (inv!22231 (left!13735 (c!253139 totalInput!568))) tp!459362 (inv!22231 (right!14065 (c!253139 totalInput!568))) tp!459361))))

(declare-fun b!1561130 () Bool)

(declare-fun e!1002393 () Bool)

(declare-fun tp!459363 () Bool)

(assert (=> b!1561130 (= e!1002393 tp!459363)))

(declare-fun b!1561129 () Bool)

(assert (=> b!1561129 (= e!1002394 (and (inv!22241 (xs!8385 (c!253139 totalInput!568))) e!1002393))))

(assert (=> b!1560758 (= tp!459177 (and (inv!22231 (c!253139 totalInput!568)) e!1002394))))

(assert (= (and b!1560758 ((_ is Node!5585) (c!253139 totalInput!568))) b!1561128))

(assert (= b!1561129 b!1561130))

(assert (= (and b!1560758 ((_ is Leaf!8278) (c!253139 totalInput!568))) b!1561129))

(declare-fun m!1832676 () Bool)

(assert (=> b!1561128 m!1832676))

(declare-fun m!1832678 () Bool)

(assert (=> b!1561128 m!1832678))

(declare-fun m!1832680 () Bool)

(assert (=> b!1561129 m!1832680))

(assert (=> b!1560758 m!1832310))

(declare-fun e!1002395 () Bool)

(assert (=> b!1560787 (= tp!459163 e!1002395)))

(declare-fun setIsEmpty!11201 () Bool)

(declare-fun setRes!11201 () Bool)

(assert (=> setIsEmpty!11201 setRes!11201))

(declare-fun b!1561132 () Bool)

(declare-fun e!1002396 () Bool)

(declare-fun tp!459364 () Bool)

(assert (=> b!1561132 (= e!1002396 tp!459364)))

(declare-fun b!1561131 () Bool)

(declare-fun tp!459365 () Bool)

(assert (=> b!1561131 (= e!1002395 (and setRes!11201 tp!459365))))

(declare-fun condSetEmpty!11201 () Bool)

(assert (=> b!1561131 (= condSetEmpty!11201 (= (_1!9652 (_1!9653 (h!22332 mapDefault!8624))) ((as const (Array Context!1626 Bool)) false)))))

(declare-fun setNonEmpty!11201 () Bool)

(declare-fun tp!459366 () Bool)

(declare-fun setElem!11201 () Context!1626)

(assert (=> setNonEmpty!11201 (= setRes!11201 (and tp!459366 (inv!22240 setElem!11201) e!1002396))))

(declare-fun setRest!11201 () (InoxSet Context!1626))

(assert (=> setNonEmpty!11201 (= (_1!9652 (_1!9653 (h!22332 mapDefault!8624))) ((_ map or) (store ((as const (Array Context!1626 Bool)) false) setElem!11201 true) setRest!11201))))

(assert (= (and b!1561131 condSetEmpty!11201) setIsEmpty!11201))

(assert (= (and b!1561131 (not condSetEmpty!11201)) setNonEmpty!11201))

(assert (= setNonEmpty!11201 b!1561132))

(assert (= (and b!1560787 ((_ is Cons!16931) mapDefault!8624)) b!1561131))

(declare-fun m!1832682 () Bool)

(assert (=> setNonEmpty!11201 m!1832682))

(declare-fun b_lambda!49083 () Bool)

(assert (= b_lambda!49071 (or b!1560778 b_lambda!49083)))

(declare-fun bs!388902 () Bool)

(declare-fun d!462377 () Bool)

(assert (= bs!388902 (and d!462377 b!1560778)))

(assert (=> bs!388902 (= (dynLambda!7540 lambda!66032 (_1!9660 (_1!9661 lt!540542))) (= (list!6516 (dynLambda!7541 (toChars!4205 (transformation!2967 rule!240)) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) (_1!9660 (_1!9661 lt!540542))))) (list!6516 (_1!9660 (_1!9661 lt!540542)))))))

(declare-fun b_lambda!49095 () Bool)

(assert (=> (not b_lambda!49095) (not bs!388902)))

(declare-fun t!141538 () Bool)

(declare-fun tb!87385 () Bool)

(assert (=> (and b!1560763 (= (toChars!4205 (transformation!2967 rule!240)) (toChars!4205 (transformation!2967 rule!240))) t!141538) tb!87385))

(declare-fun b!1561133 () Bool)

(declare-fun e!1002397 () Bool)

(declare-fun tp!459367 () Bool)

(assert (=> b!1561133 (= e!1002397 (and (inv!22231 (c!253139 (dynLambda!7541 (toChars!4205 (transformation!2967 rule!240)) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) (_1!9660 (_1!9661 lt!540542)))))) tp!459367))))

(declare-fun result!105676 () Bool)

(assert (=> tb!87385 (= result!105676 (and (inv!22232 (dynLambda!7541 (toChars!4205 (transformation!2967 rule!240)) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) (_1!9660 (_1!9661 lt!540542))))) e!1002397))))

(assert (= tb!87385 b!1561133))

(declare-fun m!1832684 () Bool)

(assert (=> b!1561133 m!1832684))

(declare-fun m!1832686 () Bool)

(assert (=> tb!87385 m!1832686))

(assert (=> bs!388902 t!141538))

(declare-fun b_and!108971 () Bool)

(assert (= b_and!108963 (and (=> t!141538 result!105676) b_and!108971)))

(declare-fun b_lambda!49097 () Bool)

(assert (=> (not b_lambda!49097) (not bs!388902)))

(assert (=> bs!388902 t!141532))

(declare-fun b_and!108973 () Bool)

(assert (= b_and!108969 (and (=> t!141532 result!105650) b_and!108973)))

(assert (=> bs!388902 m!1832476))

(declare-fun m!1832688 () Bool)

(assert (=> bs!388902 m!1832688))

(assert (=> bs!388902 m!1832366))

(assert (=> bs!388902 m!1832476))

(assert (=> bs!388902 m!1832688))

(declare-fun m!1832690 () Bool)

(assert (=> bs!388902 m!1832690))

(assert (=> d!462323 d!462377))

(declare-fun b_lambda!49085 () Bool)

(assert (= b_lambda!49079 (or (and b!1560763 b_free!41679) b_lambda!49085)))

(declare-fun b_lambda!49087 () Bool)

(assert (= b_lambda!49081 (or (and b!1560763 b_free!41679) b_lambda!49087)))

(declare-fun b_lambda!49089 () Bool)

(assert (= b_lambda!49069 (or (and b!1560763 b_free!41679) b_lambda!49089)))

(declare-fun b_lambda!49091 () Bool)

(assert (= b_lambda!49073 (or b!1560778 b_lambda!49091)))

(declare-fun bs!388903 () Bool)

(declare-fun d!462379 () Bool)

(assert (= bs!388903 (and d!462379 b!1560778)))

(assert (=> bs!388903 (= (dynLambda!7540 lambda!66032 lt!540553) (= (list!6516 (dynLambda!7541 (toChars!4205 (transformation!2967 rule!240)) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) lt!540553))) (list!6516 lt!540553)))))

(declare-fun b_lambda!49099 () Bool)

(assert (=> (not b_lambda!49099) (not bs!388903)))

(declare-fun t!141540 () Bool)

(declare-fun tb!87387 () Bool)

(assert (=> (and b!1560763 (= (toChars!4205 (transformation!2967 rule!240)) (toChars!4205 (transformation!2967 rule!240))) t!141540) tb!87387))

(declare-fun b!1561134 () Bool)

(declare-fun e!1002398 () Bool)

(declare-fun tp!459368 () Bool)

(assert (=> b!1561134 (= e!1002398 (and (inv!22231 (c!253139 (dynLambda!7541 (toChars!4205 (transformation!2967 rule!240)) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) lt!540553)))) tp!459368))))

(declare-fun result!105678 () Bool)

(assert (=> tb!87387 (= result!105678 (and (inv!22232 (dynLambda!7541 (toChars!4205 (transformation!2967 rule!240)) (dynLambda!7539 (toValue!4346 (transformation!2967 rule!240)) lt!540553))) e!1002398))))

(assert (= tb!87387 b!1561134))

(declare-fun m!1832692 () Bool)

(assert (=> b!1561134 m!1832692))

(declare-fun m!1832694 () Bool)

(assert (=> tb!87387 m!1832694))

(assert (=> bs!388903 t!141540))

(declare-fun b_and!108975 () Bool)

(assert (= b_and!108971 (and (=> t!141540 result!105678) b_and!108975)))

(declare-fun b_lambda!49101 () Bool)

(assert (=> (not b_lambda!49101) (not bs!388903)))

(assert (=> bs!388903 t!141536))

(declare-fun b_and!108977 () Bool)

(assert (= b_and!108973 (and (=> t!141536 result!105658) b_and!108977)))

(assert (=> bs!388903 m!1832576))

(declare-fun m!1832696 () Bool)

(assert (=> bs!388903 m!1832696))

(assert (=> bs!388903 m!1832314))

(assert (=> bs!388903 m!1832576))

(assert (=> bs!388903 m!1832696))

(declare-fun m!1832698 () Bool)

(assert (=> bs!388903 m!1832698))

(assert (=> d!462331 d!462379))

(declare-fun b_lambda!49093 () Bool)

(assert (= b_lambda!49077 (or (and b!1560763 b_free!41679) b_lambda!49093)))

(check-sat tp_is_empty!7085 (not b!1561117) (not b!1560957) (not b!1561052) (not d!462317) (not d!462323) b_and!108957 (not setNonEmpty!11183) (not setNonEmpty!11174) (not b!1561086) (not setNonEmpty!11170) (not b!1560851) (not bs!388903) (not b!1561105) (not b!1561119) (not b!1561063) (not setNonEmpty!11188) (not b_lambda!49093) (not b!1560936) (not b!1560819) (not b!1561097) (not d!462371) (not b!1561103) (not b!1561099) (not b!1560767) b_and!108977 (not b!1561122) (not b!1561129) (not b!1561012) (not bm!102256) (not b!1561084) (not b!1561132) (not d!462293) (not tb!87381) (not d!462359) (not b!1561064) (not b!1560814) (not b_lambda!49101) (not b!1561024) (not b!1560802) (not b!1561008) (not b!1560974) (not b!1561033) (not d!462369) (not b!1561022) (not b!1561131) (not b!1560971) (not b!1560960) (not d!462327) (not b!1560808) (not d!462373) (not b!1561034) (not b_lambda!49095) (not setNonEmpty!11192) (not d!462329) (not b_next!42375) (not b!1560902) (not tb!87385) (not b!1561083) (not b!1561118) (not d!462345) (not b!1561013) (not b!1560933) (not b_lambda!49085) (not tb!87387) (not bm!102253) (not b!1560785) (not b_next!42389) (not b!1561085) (not d!462325) (not b_next!42387) (not b!1560893) (not b!1560958) (not b!1560890) (not setNonEmpty!11200) (not tb!87383) (not b!1561011) (not b!1560991) (not b!1561071) (not bm!102249) (not tb!87379) (not setNonEmpty!11171) (not b!1561128) (not setNonEmpty!11197) (not b!1561104) (not d!462343) (not b!1560948) (not b!1560939) (not setNonEmpty!11187) (not b!1560955) (not setNonEmpty!11191) (not b!1561088) (not bs!388902) (not b!1560822) (not setNonEmpty!11184) (not b_next!42377) (not b_lambda!49091) (not setNonEmpty!11198) (not b!1560932) (not d!462347) (not mapNonEmpty!8627) (not setNonEmpty!11177) (not d!462337) (not b!1561123) (not setNonEmpty!11189) (not b!1560856) (not b_lambda!49087) (not d!462375) (not bm!102251) (not b_lambda!49099) (not mapNonEmpty!8633) (not b!1561069) (not b!1561134) (not b!1561101) (not d!462363) (not b!1561068) (not b_lambda!49075) (not b!1561121) (not b_next!42383) b_and!108949 (not d!462339) (not b!1560799) (not b!1561066) (not b!1560892) (not b!1561126) (not b!1561032) (not setNonEmpty!11190) (not b!1561120) (not d!462321) (not b!1560817) (not b!1561010) (not b!1560965) (not b!1561100) (not setNonEmpty!11199) (not setNonEmpty!11201) (not b_lambda!49097) (not b!1561133) (not b!1560857) (not bm!102248) (not b!1560944) (not b!1561116) (not d!462307) (not b!1561125) (not b!1561098) (not bm!102252) (not b!1560805) (not b!1561102) (not bm!102250) (not b_lambda!49089) (not d!462341) (not b!1560894) (not b!1561065) (not b!1560758) (not b!1561054) (not d!462279) (not bm!102246) (not b!1560990) b_and!108975 (not b!1561031) b_and!108951 (not b_next!42379) (not d!462315) (not b!1561087) (not b!1561009) b_and!108947 (not d!462349) (not b!1560992) (not b!1561049) (not d!462301) (not b!1561051) (not d!462335) (not b!1561053) b_and!108959 (not b!1561124) (not b!1561127) (not b!1561050) (not b!1560972) (not d!462361) (not b!1561070) (not b!1560860) (not b!1561130) (not setNonEmpty!11178) (not b!1561067) (not b!1560966) (not b!1560889) (not bm!102247) (not d!462331) (not b_next!42385) (not b!1561023) (not b!1560891) b_and!108945 (not b!1560896) (not d!462295) (not b_lambda!49083) (not d!462333) (not b!1560897) (not b_next!42381) (not mapNonEmpty!8630) (not b!1560934) (not d!462313))
(check-sat b_and!108957 b_and!108977 (not b_next!42375) (not b_next!42377) b_and!108947 b_and!108959 (not b_next!42381) (not b_next!42389) (not b_next!42387) (not b_next!42383) b_and!108949 (not b_next!42379) b_and!108975 b_and!108951 (not b_next!42385) b_and!108945)
