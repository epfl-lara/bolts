; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411594 () Bool)

(assert start!411594)

(declare-fun b!4283834 () Bool)

(declare-fun b_free!126843 () Bool)

(declare-fun b_next!127547 () Bool)

(assert (=> b!4283834 (= b_free!126843 (not b_next!127547))))

(declare-fun tp!1310700 () Bool)

(declare-fun b_and!338045 () Bool)

(assert (=> b!4283834 (= tp!1310700 b_and!338045)))

(declare-fun b!4283837 () Bool)

(declare-fun b_free!126845 () Bool)

(declare-fun b_next!127549 () Bool)

(assert (=> b!4283837 (= b_free!126845 (not b_next!127549))))

(declare-fun tp!1310719 () Bool)

(declare-fun b_and!338047 () Bool)

(assert (=> b!4283837 (= tp!1310719 b_and!338047)))

(declare-fun b_free!126847 () Bool)

(declare-fun b_next!127551 () Bool)

(assert (=> b!4283837 (= b_free!126847 (not b_next!127551))))

(declare-fun tp!1310714 () Bool)

(declare-fun b_and!338049 () Bool)

(assert (=> b!4283837 (= tp!1310714 b_and!338049)))

(declare-fun b!4283816 () Bool)

(declare-fun b_free!126849 () Bool)

(declare-fun b_next!127553 () Bool)

(assert (=> b!4283816 (= b_free!126849 (not b_next!127553))))

(declare-fun tp!1310711 () Bool)

(declare-fun b_and!338051 () Bool)

(assert (=> b!4283816 (= tp!1310711 b_and!338051)))

(declare-fun b!4283826 () Bool)

(declare-fun b_free!126851 () Bool)

(declare-fun b_next!127555 () Bool)

(assert (=> b!4283826 (= b_free!126851 (not b_next!127555))))

(declare-fun tp!1310717 () Bool)

(declare-fun b_and!338053 () Bool)

(assert (=> b!4283826 (= tp!1310717 b_and!338053)))

(declare-fun b!4283822 () Bool)

(declare-fun b_free!126853 () Bool)

(declare-fun b_next!127557 () Bool)

(assert (=> b!4283822 (= b_free!126853 (not b_next!127557))))

(declare-fun tp!1310697 () Bool)

(declare-fun b_and!338055 () Bool)

(assert (=> b!4283822 (= tp!1310697 b_and!338055)))

(declare-fun b!4283827 () Bool)

(declare-fun b_free!126855 () Bool)

(declare-fun b_next!127559 () Bool)

(assert (=> b!4283827 (= b_free!126855 (not b_next!127559))))

(declare-fun tp!1310707 () Bool)

(declare-fun b_and!338057 () Bool)

(assert (=> b!4283827 (= tp!1310707 b_and!338057)))

(declare-fun b!4283817 () Bool)

(declare-fun b_free!126857 () Bool)

(declare-fun b_next!127561 () Bool)

(assert (=> b!4283817 (= b_free!126857 (not b_next!127561))))

(declare-fun tp!1310699 () Bool)

(declare-fun b_and!338059 () Bool)

(assert (=> b!4283817 (= tp!1310699 b_and!338059)))

(declare-fun b!4283813 () Bool)

(declare-fun res!1757875 () Bool)

(declare-fun e!2659721 () Bool)

(assert (=> b!4283813 (=> (not res!1757875) (not e!2659721))))

(declare-datatypes ((C!26012 0))(
  ( (C!26013 (val!15332 Int)) )
))
(declare-datatypes ((Regex!12907 0))(
  ( (ElementMatch!12907 (c!730019 C!26012)) (Concat!21216 (regOne!26326 Regex!12907) (regTwo!26326 Regex!12907)) (EmptyExpr!12907) (Star!12907 (reg!13236 Regex!12907)) (EmptyLang!12907) (Union!12907 (regOne!26327 Regex!12907) (regTwo!26327 Regex!12907)) )
))
(declare-datatypes ((List!47578 0))(
  ( (Nil!47454) (Cons!47454 (h!52874 Regex!12907) (t!354167 List!47578)) )
))
(declare-datatypes ((Context!5594 0))(
  ( (Context!5595 (exprs!3297 List!47578)) )
))
(declare-datatypes ((Hashable!4189 0))(
  ( (HashableExt!4188 (__x!28827 Int)) )
))
(declare-datatypes ((tuple3!5342 0))(
  ( (tuple3!5343 (_1!25555 Regex!12907) (_2!25555 Context!5594) (_3!3144 C!26012)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44822 0))(
  ( (tuple2!44823 (_1!25556 tuple3!5342) (_2!25556 (InoxSet Context!5594))) )
))
(declare-datatypes ((List!47579 0))(
  ( (Nil!47455) (Cons!47455 (h!52875 tuple2!44822) (t!354168 List!47579)) )
))
(declare-datatypes ((array!15338 0))(
  ( (array!15339 (arr!6847 (Array (_ BitVec 32) List!47579)) (size!34777 (_ BitVec 32))) )
))
(declare-datatypes ((array!15340 0))(
  ( (array!15341 (arr!6848 (Array (_ BitVec 32) (_ BitVec 64))) (size!34778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8546 0))(
  ( (LongMapFixedSize!8547 (defaultEntry!4658 Int) (mask!12696 (_ BitVec 32)) (extraKeys!4522 (_ BitVec 32)) (zeroValue!4532 List!47579) (minValue!4532 List!47579) (_size!8589 (_ BitVec 32)) (_keys!4573 array!15340) (_values!4554 array!15338) (_vacant!4334 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16901 0))(
  ( (Cell!16902 (v!41353 LongMapFixedSize!8546)) )
))
(declare-datatypes ((MutLongMap!4273 0))(
  ( (LongMap!4273 (underlying!8775 Cell!16901)) (MutLongMapExt!4272 (__x!28828 Int)) )
))
(declare-datatypes ((Cell!16903 0))(
  ( (Cell!16904 (v!41354 MutLongMap!4273)) )
))
(declare-datatypes ((MutableMap!4179 0))(
  ( (MutableMapExt!4178 (__x!28829 Int)) (HashMap!4179 (underlying!8776 Cell!16903) (hashF!6221 Hashable!4189) (_size!8590 (_ BitVec 32)) (defaultValue!4350 Int)) )
))
(declare-datatypes ((CacheDown!2850 0))(
  ( (CacheDown!2851 (cache!4319 MutableMap!4179)) )
))
(declare-fun cacheDown!738 () CacheDown!2850)

(declare-fun valid!3319 (CacheDown!2850) Bool)

(assert (=> b!4283813 (= res!1757875 (valid!3319 cacheDown!738))))

(declare-fun b!4283814 () Bool)

(declare-fun e!2659728 () Bool)

(declare-datatypes ((List!47580 0))(
  ( (Nil!47456) (Cons!47456 (h!52876 C!26012) (t!354169 List!47580)) )
))
(declare-datatypes ((IArray!28763 0))(
  ( (IArray!28764 (innerList!14439 List!47580)) )
))
(declare-datatypes ((Conc!14351 0))(
  ( (Node!14351 (left!35333 Conc!14351) (right!35663 Conc!14351) (csize!28932 Int) (cheight!14562 Int)) (Leaf!22206 (xs!17657 IArray!28763) (csize!28933 Int)) (Empty!14351) )
))
(declare-datatypes ((BalanceConc!28192 0))(
  ( (BalanceConc!28193 (c!730020 Conc!14351)) )
))
(declare-fun totalInput!528 () BalanceConc!28192)

(declare-fun tp!1310718 () Bool)

(declare-fun inv!62894 (Conc!14351) Bool)

(assert (=> b!4283814 (= e!2659728 (and (inv!62894 (c!730020 totalInput!528)) tp!1310718))))

(declare-fun b!4283815 () Bool)

(declare-fun e!2659729 () Bool)

(declare-fun e!2659717 () Bool)

(declare-datatypes ((tuple2!44824 0))(
  ( (tuple2!44825 (_1!25557 Context!5594) (_2!25557 C!26012)) )
))
(declare-datatypes ((tuple2!44826 0))(
  ( (tuple2!44827 (_1!25558 tuple2!44824) (_2!25558 (InoxSet Context!5594))) )
))
(declare-datatypes ((List!47581 0))(
  ( (Nil!47457) (Cons!47457 (h!52877 tuple2!44826) (t!354170 List!47581)) )
))
(declare-datatypes ((array!15342 0))(
  ( (array!15343 (arr!6849 (Array (_ BitVec 32) List!47581)) (size!34779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8548 0))(
  ( (LongMapFixedSize!8549 (defaultEntry!4659 Int) (mask!12697 (_ BitVec 32)) (extraKeys!4523 (_ BitVec 32)) (zeroValue!4533 List!47581) (minValue!4533 List!47581) (_size!8591 (_ BitVec 32)) (_keys!4574 array!15340) (_values!4555 array!15342) (_vacant!4335 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16905 0))(
  ( (Cell!16906 (v!41355 LongMapFixedSize!8548)) )
))
(declare-datatypes ((MutLongMap!4274 0))(
  ( (LongMap!4274 (underlying!8777 Cell!16905)) (MutLongMapExt!4273 (__x!28830 Int)) )
))
(declare-fun lt!1515495 () MutLongMap!4274)

(get-info :version)

(assert (=> b!4283815 (= e!2659729 (and e!2659717 ((_ is LongMap!4274) lt!1515495)))))

(declare-datatypes ((Cell!16907 0))(
  ( (Cell!16908 (v!41356 MutLongMap!4274)) )
))
(declare-datatypes ((Hashable!4190 0))(
  ( (HashableExt!4189 (__x!28831 Int)) )
))
(declare-datatypes ((MutableMap!4180 0))(
  ( (MutableMapExt!4179 (__x!28832 Int)) (HashMap!4180 (underlying!8778 Cell!16907) (hashF!6222 Hashable!4190) (_size!8592 (_ BitVec 32)) (defaultValue!4351 Int)) )
))
(declare-datatypes ((CacheUp!2726 0))(
  ( (CacheUp!2727 (cache!4320 MutableMap!4180)) )
))
(declare-fun cacheUp!725 () CacheUp!2726)

(assert (=> b!4283815 (= lt!1515495 (v!41356 (underlying!8778 (cache!4320 cacheUp!725))))))

(declare-fun mapNonEmpty!19335 () Bool)

(declare-fun mapRes!19337 () Bool)

(declare-fun tp!1310715 () Bool)

(declare-fun tp!1310698 () Bool)

(assert (=> mapNonEmpty!19335 (= mapRes!19337 (and tp!1310715 tp!1310698))))

(declare-fun mapRest!19335 () (Array (_ BitVec 32) List!47581))

(declare-fun mapKey!19336 () (_ BitVec 32))

(declare-fun mapValue!19336 () List!47581)

(assert (=> mapNonEmpty!19335 (= (arr!6849 (_values!4555 (v!41355 (underlying!8777 (v!41356 (underlying!8778 (cache!4320 cacheUp!725))))))) (store mapRest!19335 mapKey!19336 mapValue!19336))))

(declare-fun e!2659733 () Bool)

(assert (=> b!4283816 (= e!2659733 (and e!2659729 tp!1310711))))

(declare-fun e!2659737 () Bool)

(declare-fun e!2659746 () Bool)

(assert (=> b!4283817 (= e!2659737 (and e!2659746 tp!1310699))))

(declare-fun mapIsEmpty!19335 () Bool)

(assert (=> mapIsEmpty!19335 mapRes!19337))

(declare-fun b!4283818 () Bool)

(declare-fun res!1757878 () Bool)

(assert (=> b!4283818 (=> (not res!1757878) (not e!2659721))))

(declare-fun input!1632 () BalanceConc!28192)

(declare-fun isSuffix!1007 (List!47580 List!47580) Bool)

(declare-fun list!17318 (BalanceConc!28192) List!47580)

(assert (=> b!4283818 (= res!1757878 (isSuffix!1007 (list!17318 input!1632) (list!17318 totalInput!528)))))

(declare-fun b!4283819 () Bool)

(declare-fun e!2659743 () Bool)

(assert (=> b!4283819 (= e!2659743 false)))

(declare-fun e!2659738 () Bool)

(declare-fun b!4283820 () Bool)

(declare-datatypes ((Hashable!4191 0))(
  ( (HashableExt!4190 (__x!28833 Int)) )
))
(declare-datatypes ((tuple2!44828 0))(
  ( (tuple2!44829 (_1!25559 (InoxSet Context!5594)) (_2!25559 Int)) )
))
(declare-datatypes ((tuple2!44830 0))(
  ( (tuple2!44831 (_1!25560 tuple2!44828) (_2!25560 Int)) )
))
(declare-datatypes ((List!47582 0))(
  ( (Nil!47458) (Cons!47458 (h!52878 tuple2!44830) (t!354171 List!47582)) )
))
(declare-datatypes ((array!15344 0))(
  ( (array!15345 (arr!6850 (Array (_ BitVec 32) List!47582)) (size!34780 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8550 0))(
  ( (LongMapFixedSize!8551 (defaultEntry!4660 Int) (mask!12698 (_ BitVec 32)) (extraKeys!4524 (_ BitVec 32)) (zeroValue!4534 List!47582) (minValue!4534 List!47582) (_size!8593 (_ BitVec 32)) (_keys!4575 array!15340) (_values!4556 array!15344) (_vacant!4336 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16909 0))(
  ( (Cell!16910 (v!41357 LongMapFixedSize!8550)) )
))
(declare-datatypes ((MutLongMap!4275 0))(
  ( (LongMap!4275 (underlying!8779 Cell!16909)) (MutLongMapExt!4274 (__x!28834 Int)) )
))
(declare-datatypes ((Cell!16911 0))(
  ( (Cell!16912 (v!41358 MutLongMap!4275)) )
))
(declare-datatypes ((MutableMap!4181 0))(
  ( (MutableMapExt!4180 (__x!28835 Int)) (HashMap!4181 (underlying!8780 Cell!16911) (hashF!6223 Hashable!4191) (_size!8594 (_ BitVec 32)) (defaultValue!4352 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!390 0))(
  ( (CacheFindLongestMatch!391 (cache!4321 MutableMap!4181) (totalInput!4294 BalanceConc!28192)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!390)

(declare-fun e!2659727 () Bool)

(declare-fun inv!62895 (BalanceConc!28192) Bool)

(assert (=> b!4283820 (= e!2659738 (and e!2659737 (inv!62895 (totalInput!4294 cacheFindLongestMatch!156)) e!2659727))))

(declare-fun b!4283821 () Bool)

(declare-fun res!1757874 () Bool)

(assert (=> b!4283821 (=> (not res!1757874) (not e!2659721))))

(declare-fun valid!3320 (CacheUp!2726) Bool)

(assert (=> b!4283821 (= res!1757874 (valid!3320 cacheUp!725))))

(declare-fun e!2659715 () Bool)

(declare-fun e!2659744 () Bool)

(assert (=> b!4283822 (= e!2659715 (and e!2659744 tp!1310697))))

(declare-datatypes ((List!47583 0))(
  ( (Nil!47459) (Cons!47459 (h!52879 (_ BitVec 16)) (t!354172 List!47583)) )
))
(declare-datatypes ((TokenValue!8309 0))(
  ( (FloatLiteralValue!16618 (text!58608 List!47583)) (TokenValueExt!8308 (__x!28836 Int)) (Broken!41545 (value!250765 List!47583)) (Object!8432) (End!8309) (Def!8309) (Underscore!8309) (Match!8309) (Else!8309) (Error!8309) (Case!8309) (If!8309) (Extends!8309) (Abstract!8309) (Class!8309) (Val!8309) (DelimiterValue!16618 (del!8369 List!47583)) (KeywordValue!8315 (value!250766 List!47583)) (CommentValue!16618 (value!250767 List!47583)) (WhitespaceValue!16618 (value!250768 List!47583)) (IndentationValue!8309 (value!250769 List!47583)) (String!55540) (Int32!8309) (Broken!41546 (value!250770 List!47583)) (Boolean!8310) (Unit!66365) (OperatorValue!8312 (op!8369 List!47583)) (IdentifierValue!16618 (value!250771 List!47583)) (IdentifierValue!16619 (value!250772 List!47583)) (WhitespaceValue!16619 (value!250773 List!47583)) (True!16618) (False!16618) (Broken!41547 (value!250774 List!47583)) (Broken!41548 (value!250775 List!47583)) (True!16619) (RightBrace!8309) (RightBracket!8309) (Colon!8309) (Null!8309) (Comma!8309) (LeftBracket!8309) (False!16619) (LeftBrace!8309) (ImaginaryLiteralValue!8309 (text!58609 List!47583)) (StringLiteralValue!24927 (value!250776 List!47583)) (EOFValue!8309 (value!250777 List!47583)) (IdentValue!8309 (value!250778 List!47583)) (DelimiterValue!16619 (value!250779 List!47583)) (DedentValue!8309 (value!250780 List!47583)) (NewLineValue!8309 (value!250781 List!47583)) (IntegerValue!24927 (value!250782 (_ BitVec 32)) (text!58610 List!47583)) (IntegerValue!24928 (value!250783 Int) (text!58611 List!47583)) (Times!8309) (Or!8309) (Equal!8309) (Minus!8309) (Broken!41549 (value!250784 List!47583)) (And!8309) (Div!8309) (LessEqual!8309) (Mod!8309) (Concat!21217) (Not!8309) (Plus!8309) (SpaceValue!8309 (value!250785 List!47583)) (IntegerValue!24929 (value!250786 Int) (text!58612 List!47583)) (StringLiteralValue!24928 (text!58613 List!47583)) (FloatLiteralValue!16619 (text!58614 List!47583)) (BytesLiteralValue!8309 (value!250787 List!47583)) (CommentValue!16619 (value!250788 List!47583)) (StringLiteralValue!24929 (value!250789 List!47583)) (ErrorTokenValue!8309 (msg!8370 List!47583)) )
))
(declare-datatypes ((String!55541 0))(
  ( (String!55542 (value!250790 String)) )
))
(declare-datatypes ((TokenValueInjection!15926 0))(
  ( (TokenValueInjection!15927 (toValue!10850 Int) (toChars!10709 Int)) )
))
(declare-datatypes ((Rule!15798 0))(
  ( (Rule!15799 (regex!7999 Regex!12907) (tag!8863 String!55541) (isSeparator!7999 Bool) (transformation!7999 TokenValueInjection!15926)) )
))
(declare-fun rule!232 () Rule!15798)

(declare-fun tp!1310696 () Bool)

(declare-fun b!4283823 () Bool)

(declare-fun e!2659726 () Bool)

(declare-fun e!2659740 () Bool)

(declare-fun inv!62893 (String!55541) Bool)

(declare-fun inv!62896 (TokenValueInjection!15926) Bool)

(assert (=> b!4283823 (= e!2659726 (and tp!1310696 (inv!62893 (tag!8863 rule!232)) (inv!62896 (transformation!7999 rule!232)) e!2659740))))

(declare-fun mapIsEmpty!19336 () Bool)

(declare-fun mapRes!19335 () Bool)

(assert (=> mapIsEmpty!19336 mapRes!19335))

(declare-fun b!4283824 () Bool)

(declare-fun e!2659718 () Bool)

(declare-fun lt!1515498 () MutLongMap!4273)

(assert (=> b!4283824 (= e!2659744 (and e!2659718 ((_ is LongMap!4273) lt!1515498)))))

(assert (=> b!4283824 (= lt!1515498 (v!41354 (underlying!8776 (cache!4319 cacheDown!738))))))

(declare-fun b!4283825 () Bool)

(declare-fun e!2659730 () Bool)

(declare-fun tp!1310701 () Bool)

(assert (=> b!4283825 (= e!2659730 (and tp!1310701 mapRes!19335))))

(declare-fun condMapEmpty!19335 () Bool)

(declare-fun mapDefault!19335 () List!47579)

(assert (=> b!4283825 (= condMapEmpty!19335 (= (arr!6847 (_values!4554 (v!41353 (underlying!8775 (v!41354 (underlying!8776 (cache!4319 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47579)) mapDefault!19335)))))

(declare-fun tp!1310713 () Bool)

(declare-fun e!2659716 () Bool)

(declare-fun e!2659723 () Bool)

(declare-fun tp!1310708 () Bool)

(declare-fun array_inv!4902 (array!15340) Bool)

(declare-fun array_inv!4903 (array!15342) Bool)

(assert (=> b!4283826 (= e!2659723 (and tp!1310717 tp!1310713 tp!1310708 (array_inv!4902 (_keys!4574 (v!41355 (underlying!8777 (v!41356 (underlying!8778 (cache!4320 cacheUp!725))))))) (array_inv!4903 (_values!4555 (v!41355 (underlying!8777 (v!41356 (underlying!8778 (cache!4320 cacheUp!725))))))) e!2659716))))

(declare-fun mapNonEmpty!19336 () Bool)

(declare-fun tp!1310709 () Bool)

(declare-fun tp!1310722 () Bool)

(assert (=> mapNonEmpty!19336 (= mapRes!19335 (and tp!1310709 tp!1310722))))

(declare-fun mapValue!19335 () List!47579)

(declare-fun mapRest!19337 () (Array (_ BitVec 32) List!47579))

(declare-fun mapKey!19337 () (_ BitVec 32))

(assert (=> mapNonEmpty!19336 (= (arr!6847 (_values!4554 (v!41353 (underlying!8775 (v!41354 (underlying!8776 (cache!4319 cacheDown!738))))))) (store mapRest!19337 mapKey!19337 mapValue!19335))))

(declare-fun tp!1310710 () Bool)

(declare-fun tp!1310721 () Bool)

(declare-fun e!2659720 () Bool)

(declare-fun array_inv!4904 (array!15338) Bool)

(assert (=> b!4283827 (= e!2659720 (and tp!1310707 tp!1310721 tp!1310710 (array_inv!4902 (_keys!4573 (v!41353 (underlying!8775 (v!41354 (underlying!8776 (cache!4319 cacheDown!738))))))) (array_inv!4904 (_values!4554 (v!41353 (underlying!8775 (v!41354 (underlying!8776 (cache!4319 cacheDown!738))))))) e!2659730))))

(declare-fun b!4283828 () Bool)

(assert (=> b!4283828 (= e!2659721 e!2659743)))

(declare-fun res!1757877 () Bool)

(assert (=> b!4283828 (=> (not res!1757877) (not e!2659743))))

(declare-datatypes ((tuple2!44832 0))(
  ( (tuple2!44833 (_1!25561 BalanceConc!28192) (_2!25561 BalanceConc!28192)) )
))
(declare-datatypes ((tuple4!946 0))(
  ( (tuple4!947 (_1!25562 tuple2!44832) (_2!25562 CacheUp!2726) (_3!3145 CacheDown!2850) (_4!473 CacheFindLongestMatch!390)) )
))
(declare-fun lt!1515497 () tuple4!946)

(declare-fun findLongestMatchWithZipperSequenceV2!116 (Regex!12907 BalanceConc!28192 BalanceConc!28192) tuple2!44832)

(assert (=> b!4283828 (= res!1757877 (= (_1!25562 lt!1515497) (findLongestMatchWithZipperSequenceV2!116 (regex!7999 rule!232) input!1632 totalInput!528)))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!39 (Regex!12907 BalanceConc!28192 BalanceConc!28192 CacheUp!2726 CacheDown!2850 CacheFindLongestMatch!390) tuple4!946)

(assert (=> b!4283828 (= lt!1515497 (findLongestMatchWithZipperSequenceV2Mem!39 (regex!7999 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun mapIsEmpty!19337 () Bool)

(declare-fun mapRes!19336 () Bool)

(assert (=> mapIsEmpty!19337 mapRes!19336))

(declare-fun b!4283829 () Bool)

(declare-fun e!2659725 () Bool)

(assert (=> b!4283829 (= e!2659725 e!2659723)))

(declare-fun res!1757876 () Bool)

(assert (=> start!411594 (=> (not res!1757876) (not e!2659721))))

(declare-datatypes ((LexerInterface!7594 0))(
  ( (LexerInterfaceExt!7591 (__x!28837 Int)) (Lexer!7592) )
))
(declare-fun thiss!16356 () LexerInterface!7594)

(assert (=> start!411594 (= res!1757876 ((_ is Lexer!7592) thiss!16356))))

(assert (=> start!411594 e!2659721))

(assert (=> start!411594 true))

(assert (=> start!411594 e!2659726))

(declare-fun e!2659741 () Bool)

(assert (=> start!411594 (and (inv!62895 input!1632) e!2659741)))

(declare-fun e!2659739 () Bool)

(declare-fun inv!62897 (CacheDown!2850) Bool)

(assert (=> start!411594 (and (inv!62897 cacheDown!738) e!2659739)))

(declare-fun inv!62898 (CacheFindLongestMatch!390) Bool)

(assert (=> start!411594 (and (inv!62898 cacheFindLongestMatch!156) e!2659738)))

(assert (=> start!411594 (and (inv!62895 totalInput!528) e!2659728)))

(declare-fun e!2659742 () Bool)

(declare-fun inv!62899 (CacheUp!2726) Bool)

(assert (=> start!411594 (and (inv!62899 cacheUp!725) e!2659742)))

(declare-fun b!4283830 () Bool)

(declare-fun tp!1310704 () Bool)

(assert (=> b!4283830 (= e!2659741 (and (inv!62894 (c!730020 input!1632)) tp!1310704))))

(declare-fun mapNonEmpty!19337 () Bool)

(declare-fun tp!1310706 () Bool)

(declare-fun tp!1310716 () Bool)

(assert (=> mapNonEmpty!19337 (= mapRes!19336 (and tp!1310706 tp!1310716))))

(declare-fun mapKey!19335 () (_ BitVec 32))

(declare-fun mapValue!19337 () List!47582)

(declare-fun mapRest!19336 () (Array (_ BitVec 32) List!47582))

(assert (=> mapNonEmpty!19337 (= (arr!6850 (_values!4556 (v!41357 (underlying!8779 (v!41358 (underlying!8780 (cache!4321 cacheFindLongestMatch!156))))))) (store mapRest!19336 mapKey!19335 mapValue!19337))))

(declare-fun b!4283831 () Bool)

(assert (=> b!4283831 (= e!2659739 e!2659715)))

(declare-fun b!4283832 () Bool)

(declare-fun e!2659719 () Bool)

(declare-fun tp!1310712 () Bool)

(assert (=> b!4283832 (= e!2659719 (and tp!1310712 mapRes!19336))))

(declare-fun condMapEmpty!19337 () Bool)

(declare-fun mapDefault!19336 () List!47582)

(assert (=> b!4283832 (= condMapEmpty!19337 (= (arr!6850 (_values!4556 (v!41357 (underlying!8779 (v!41358 (underlying!8780 (cache!4321 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47582)) mapDefault!19336)))))

(declare-fun b!4283833 () Bool)

(declare-fun res!1757879 () Bool)

(assert (=> b!4283833 (=> (not res!1757879) (not e!2659721))))

(declare-fun valid!3321 (CacheFindLongestMatch!390) Bool)

(assert (=> b!4283833 (= res!1757879 (valid!3321 cacheFindLongestMatch!156))))

(declare-fun tp!1310720 () Bool)

(declare-fun tp!1310703 () Bool)

(declare-fun e!2659722 () Bool)

(declare-fun array_inv!4905 (array!15344) Bool)

(assert (=> b!4283834 (= e!2659722 (and tp!1310700 tp!1310720 tp!1310703 (array_inv!4902 (_keys!4575 (v!41357 (underlying!8779 (v!41358 (underlying!8780 (cache!4321 cacheFindLongestMatch!156))))))) (array_inv!4905 (_values!4556 (v!41357 (underlying!8779 (v!41358 (underlying!8780 (cache!4321 cacheFindLongestMatch!156))))))) e!2659719))))

(declare-fun b!4283835 () Bool)

(declare-fun e!2659734 () Bool)

(assert (=> b!4283835 (= e!2659734 e!2659722)))

(declare-fun b!4283836 () Bool)

(declare-fun res!1757872 () Bool)

(assert (=> b!4283836 (=> (not res!1757872) (not e!2659721))))

(assert (=> b!4283836 (= res!1757872 (= (totalInput!4294 cacheFindLongestMatch!156) totalInput!528))))

(assert (=> b!4283837 (= e!2659740 (and tp!1310719 tp!1310714))))

(declare-fun b!4283838 () Bool)

(assert (=> b!4283838 (= e!2659742 e!2659733)))

(declare-fun b!4283839 () Bool)

(declare-fun tp!1310702 () Bool)

(assert (=> b!4283839 (= e!2659716 (and tp!1310702 mapRes!19337))))

(declare-fun condMapEmpty!19336 () Bool)

(declare-fun mapDefault!19337 () List!47581)

(assert (=> b!4283839 (= condMapEmpty!19336 (= (arr!6849 (_values!4555 (v!41355 (underlying!8777 (v!41356 (underlying!8778 (cache!4320 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47581)) mapDefault!19337)))))

(declare-fun b!4283840 () Bool)

(declare-fun e!2659735 () Bool)

(declare-fun lt!1515496 () MutLongMap!4275)

(assert (=> b!4283840 (= e!2659746 (and e!2659735 ((_ is LongMap!4275) lt!1515496)))))

(assert (=> b!4283840 (= lt!1515496 (v!41358 (underlying!8780 (cache!4321 cacheFindLongestMatch!156))))))

(declare-fun b!4283841 () Bool)

(declare-fun e!2659724 () Bool)

(assert (=> b!4283841 (= e!2659724 e!2659720)))

(declare-fun b!4283842 () Bool)

(assert (=> b!4283842 (= e!2659735 e!2659734)))

(declare-fun b!4283843 () Bool)

(declare-fun tp!1310705 () Bool)

(assert (=> b!4283843 (= e!2659727 (and (inv!62894 (c!730020 (totalInput!4294 cacheFindLongestMatch!156))) tp!1310705))))

(declare-fun b!4283844 () Bool)

(declare-fun res!1757873 () Bool)

(assert (=> b!4283844 (=> (not res!1757873) (not e!2659743))))

(declare-fun isEmpty!28009 (BalanceConc!28192) Bool)

(assert (=> b!4283844 (= res!1757873 (not (isEmpty!28009 (_1!25561 (_1!25562 lt!1515497)))))))

(declare-fun b!4283845 () Bool)

(assert (=> b!4283845 (= e!2659717 e!2659725)))

(declare-fun b!4283846 () Bool)

(declare-fun res!1757871 () Bool)

(assert (=> b!4283846 (=> (not res!1757871) (not e!2659721))))

(declare-fun ruleValid!3617 (LexerInterface!7594 Rule!15798) Bool)

(assert (=> b!4283846 (= res!1757871 (ruleValid!3617 thiss!16356 rule!232))))

(declare-fun b!4283847 () Bool)

(assert (=> b!4283847 (= e!2659718 e!2659724)))

(assert (= (and start!411594 res!1757876) b!4283846))

(assert (= (and b!4283846 res!1757871) b!4283821))

(assert (= (and b!4283821 res!1757874) b!4283813))

(assert (= (and b!4283813 res!1757875) b!4283833))

(assert (= (and b!4283833 res!1757879) b!4283818))

(assert (= (and b!4283818 res!1757878) b!4283836))

(assert (= (and b!4283836 res!1757872) b!4283828))

(assert (= (and b!4283828 res!1757877) b!4283844))

(assert (= (and b!4283844 res!1757873) b!4283819))

(assert (= b!4283823 b!4283837))

(assert (= start!411594 b!4283823))

(assert (= start!411594 b!4283830))

(assert (= (and b!4283825 condMapEmpty!19335) mapIsEmpty!19336))

(assert (= (and b!4283825 (not condMapEmpty!19335)) mapNonEmpty!19336))

(assert (= b!4283827 b!4283825))

(assert (= b!4283841 b!4283827))

(assert (= b!4283847 b!4283841))

(assert (= (and b!4283824 ((_ is LongMap!4273) (v!41354 (underlying!8776 (cache!4319 cacheDown!738))))) b!4283847))

(assert (= b!4283822 b!4283824))

(assert (= (and b!4283831 ((_ is HashMap!4179) (cache!4319 cacheDown!738))) b!4283822))

(assert (= start!411594 b!4283831))

(assert (= (and b!4283832 condMapEmpty!19337) mapIsEmpty!19337))

(assert (= (and b!4283832 (not condMapEmpty!19337)) mapNonEmpty!19337))

(assert (= b!4283834 b!4283832))

(assert (= b!4283835 b!4283834))

(assert (= b!4283842 b!4283835))

(assert (= (and b!4283840 ((_ is LongMap!4275) (v!41358 (underlying!8780 (cache!4321 cacheFindLongestMatch!156))))) b!4283842))

(assert (= b!4283817 b!4283840))

(assert (= (and b!4283820 ((_ is HashMap!4181) (cache!4321 cacheFindLongestMatch!156))) b!4283817))

(assert (= b!4283820 b!4283843))

(assert (= start!411594 b!4283820))

(assert (= start!411594 b!4283814))

(assert (= (and b!4283839 condMapEmpty!19336) mapIsEmpty!19335))

(assert (= (and b!4283839 (not condMapEmpty!19336)) mapNonEmpty!19335))

(assert (= b!4283826 b!4283839))

(assert (= b!4283829 b!4283826))

(assert (= b!4283845 b!4283829))

(assert (= (and b!4283815 ((_ is LongMap!4274) (v!41356 (underlying!8778 (cache!4320 cacheUp!725))))) b!4283845))

(assert (= b!4283816 b!4283815))

(assert (= (and b!4283838 ((_ is HashMap!4180) (cache!4320 cacheUp!725))) b!4283816))

(assert (= start!411594 b!4283838))

(declare-fun m!4880221 () Bool)

(assert (=> mapNonEmpty!19337 m!4880221))

(declare-fun m!4880223 () Bool)

(assert (=> b!4283828 m!4880223))

(declare-fun m!4880225 () Bool)

(assert (=> b!4283828 m!4880225))

(declare-fun m!4880227 () Bool)

(assert (=> b!4283827 m!4880227))

(declare-fun m!4880229 () Bool)

(assert (=> b!4283827 m!4880229))

(declare-fun m!4880231 () Bool)

(assert (=> start!411594 m!4880231))

(declare-fun m!4880233 () Bool)

(assert (=> start!411594 m!4880233))

(declare-fun m!4880235 () Bool)

(assert (=> start!411594 m!4880235))

(declare-fun m!4880237 () Bool)

(assert (=> start!411594 m!4880237))

(declare-fun m!4880239 () Bool)

(assert (=> start!411594 m!4880239))

(declare-fun m!4880241 () Bool)

(assert (=> mapNonEmpty!19335 m!4880241))

(declare-fun m!4880243 () Bool)

(assert (=> mapNonEmpty!19336 m!4880243))

(declare-fun m!4880245 () Bool)

(assert (=> b!4283833 m!4880245))

(declare-fun m!4880247 () Bool)

(assert (=> b!4283826 m!4880247))

(declare-fun m!4880249 () Bool)

(assert (=> b!4283826 m!4880249))

(declare-fun m!4880251 () Bool)

(assert (=> b!4283846 m!4880251))

(declare-fun m!4880253 () Bool)

(assert (=> b!4283843 m!4880253))

(declare-fun m!4880255 () Bool)

(assert (=> b!4283821 m!4880255))

(declare-fun m!4880257 () Bool)

(assert (=> b!4283818 m!4880257))

(declare-fun m!4880259 () Bool)

(assert (=> b!4283818 m!4880259))

(assert (=> b!4283818 m!4880257))

(assert (=> b!4283818 m!4880259))

(declare-fun m!4880261 () Bool)

(assert (=> b!4283818 m!4880261))

(declare-fun m!4880263 () Bool)

(assert (=> b!4283813 m!4880263))

(declare-fun m!4880265 () Bool)

(assert (=> b!4283844 m!4880265))

(declare-fun m!4880267 () Bool)

(assert (=> b!4283823 m!4880267))

(declare-fun m!4880269 () Bool)

(assert (=> b!4283823 m!4880269))

(declare-fun m!4880271 () Bool)

(assert (=> b!4283820 m!4880271))

(declare-fun m!4880273 () Bool)

(assert (=> b!4283814 m!4880273))

(declare-fun m!4880275 () Bool)

(assert (=> b!4283834 m!4880275))

(declare-fun m!4880277 () Bool)

(assert (=> b!4283834 m!4880277))

(declare-fun m!4880279 () Bool)

(assert (=> b!4283830 m!4880279))

(check-sat b_and!338047 (not b!4283821) b_and!338055 (not b!4283820) (not b!4283826) (not b_next!127551) (not b!4283846) (not b_next!127549) (not b!4283823) (not b_next!127561) (not b_next!127557) (not mapNonEmpty!19337) (not b!4283832) (not b!4283818) (not b_next!127553) (not b!4283834) b_and!338059 (not b!4283839) (not b!4283814) (not b_next!127555) (not b!4283843) (not b!4283830) (not b!4283828) (not b!4283833) b_and!338057 (not b!4283813) b_and!338049 (not start!411594) (not b_next!127559) b_and!338051 (not b!4283844) (not mapNonEmpty!19335) (not b!4283825) (not mapNonEmpty!19336) (not b!4283827) (not b_next!127547) b_and!338045 b_and!338053)
(check-sat b_and!338047 (not b_next!127555) b_and!338057 b_and!338055 b_and!338049 (not b_next!127551) (not b_next!127549) (not b_next!127561) (not b_next!127557) (not b_next!127547) (not b_next!127553) b_and!338059 (not b_next!127559) b_and!338051 b_and!338045 b_and!338053)
