; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269168 () Bool)

(assert start!269168)

(declare-fun b!2785802 () Bool)

(declare-fun b_free!78773 () Bool)

(declare-fun b_next!79477 () Bool)

(assert (=> b!2785802 (= b_free!78773 (not b_next!79477))))

(declare-fun tp!883205 () Bool)

(declare-fun b_and!203511 () Bool)

(assert (=> b!2785802 (= tp!883205 b_and!203511)))

(declare-fun b!2785805 () Bool)

(declare-fun b_free!78775 () Bool)

(declare-fun b_next!79479 () Bool)

(assert (=> b!2785805 (= b_free!78775 (not b_next!79479))))

(declare-fun tp!883201 () Bool)

(declare-fun b_and!203513 () Bool)

(assert (=> b!2785805 (= tp!883201 b_and!203513)))

(declare-fun b!2785814 () Bool)

(declare-fun b_free!78777 () Bool)

(declare-fun b_next!79481 () Bool)

(assert (=> b!2785814 (= b_free!78777 (not b_next!79481))))

(declare-fun tp!883199 () Bool)

(declare-fun b_and!203515 () Bool)

(assert (=> b!2785814 (= tp!883199 b_and!203515)))

(declare-fun b!2785804 () Bool)

(declare-fun b_free!78779 () Bool)

(declare-fun b_next!79483 () Bool)

(assert (=> b!2785804 (= b_free!78779 (not b_next!79483))))

(declare-fun tp!883207 () Bool)

(declare-fun b_and!203517 () Bool)

(assert (=> b!2785804 (= tp!883207 b_and!203517)))

(declare-fun b!2785787 () Bool)

(declare-fun e!1757930 () Bool)

(declare-fun tp_is_empty!14099 () Bool)

(declare-fun tp!883206 () Bool)

(assert (=> b!2785787 (= e!1757930 (and tp_is_empty!14099 tp!883206))))

(declare-fun mapIsEmpty!17717 () Bool)

(declare-fun mapRes!17718 () Bool)

(assert (=> mapIsEmpty!17717 mapRes!17718))

(declare-fun b!2785788 () Bool)

(declare-fun res!1162615 () Bool)

(declare-fun e!1757942 () Bool)

(assert (=> b!2785788 (=> (not res!1162615) (not e!1757942))))

(declare-datatypes ((Hashable!3803 0))(
  ( (HashableExt!3802 (__x!21311 Int)) )
))
(declare-datatypes ((C!16444 0))(
  ( (C!16445 (val!10156 Int)) )
))
(declare-datatypes ((Regex!8143 0))(
  ( (ElementMatch!8143 (c!452458 C!16444)) (Concat!13231 (regOne!16798 Regex!8143) (regTwo!16798 Regex!8143)) (EmptyExpr!8143) (Star!8143 (reg!8472 Regex!8143)) (EmptyLang!8143) (Union!8143 (regOne!16799 Regex!8143) (regTwo!16799 Regex!8143)) )
))
(declare-datatypes ((List!32331 0))(
  ( (Nil!32231) (Cons!32231 (h!37651 Regex!8143) (t!228473 List!32331)) )
))
(declare-datatypes ((Context!4722 0))(
  ( (Context!4723 (exprs!2861 List!32331)) )
))
(declare-datatypes ((tuple2!32568 0))(
  ( (tuple2!32569 (_1!19257 Context!4722) (_2!19257 C!16444)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32570 0))(
  ( (tuple2!32571 (_1!19258 tuple2!32568) (_2!19258 (InoxSet Context!4722))) )
))
(declare-datatypes ((List!32332 0))(
  ( (Nil!32232) (Cons!32232 (h!37652 tuple2!32570) (t!228474 List!32332)) )
))
(declare-datatypes ((array!13823 0))(
  ( (array!13824 (arr!6163 (Array (_ BitVec 32) List!32332)) (size!25050 (_ BitVec 32))) )
))
(declare-datatypes ((array!13825 0))(
  ( (array!13826 (arr!6164 (Array (_ BitVec 32) (_ BitVec 64))) (size!25051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7774 0))(
  ( (LongMapFixedSize!7775 (defaultEntry!4272 Int) (mask!9695 (_ BitVec 32)) (extraKeys!4136 (_ BitVec 32)) (zeroValue!4146 List!32332) (minValue!4146 List!32332) (_size!7817 (_ BitVec 32)) (_keys!4187 array!13825) (_values!4168 array!13823) (_vacant!3948 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15357 0))(
  ( (Cell!15358 (v!33839 LongMapFixedSize!7774)) )
))
(declare-datatypes ((MutLongMap!3887 0))(
  ( (LongMap!3887 (underlying!7977 Cell!15357)) (MutLongMapExt!3886 (__x!21312 Int)) )
))
(declare-datatypes ((Cell!15359 0))(
  ( (Cell!15360 (v!33840 MutLongMap!3887)) )
))
(declare-datatypes ((MutableMap!3793 0))(
  ( (MutableMapExt!3792 (__x!21313 Int)) (HashMap!3793 (underlying!7978 Cell!15359) (hashF!5835 Hashable!3803) (_size!7818 (_ BitVec 32)) (defaultValue!3964 Int)) )
))
(declare-datatypes ((CacheUp!2496 0))(
  ( (CacheUp!2497 (cache!3936 MutableMap!3793)) )
))
(declare-fun cacheUp!890 () CacheUp!2496)

(declare-fun valid!3039 (CacheUp!2496) Bool)

(assert (=> b!2785788 (= res!1162615 (valid!3039 cacheUp!890))))

(declare-fun b!2785789 () Bool)

(declare-fun e!1757920 () Bool)

(declare-fun e!1757928 () Bool)

(declare-fun lt!995139 () MutLongMap!3887)

(get-info :version)

(assert (=> b!2785789 (= e!1757920 (and e!1757928 ((_ is LongMap!3887) lt!995139)))))

(assert (=> b!2785789 (= lt!995139 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))

(declare-fun b!2785790 () Bool)

(declare-fun e!1757927 () Bool)

(declare-fun tp!883209 () Bool)

(assert (=> b!2785790 (= e!1757927 (and tp_is_empty!14099 tp!883209))))

(declare-fun b!2785791 () Bool)

(declare-fun e!1757934 () Bool)

(assert (=> b!2785791 (= e!1757942 (not e!1757934))))

(declare-fun res!1162610 () Bool)

(assert (=> b!2785791 (=> res!1162610 e!1757934)))

(declare-datatypes ((List!32333 0))(
  ( (Nil!32233) (Cons!32233 (h!37653 C!16444) (t!228475 List!32333)) )
))
(declare-fun testedP!183 () List!32333)

(declare-fun lt!995131 () List!32333)

(declare-fun isPrefix!2585 (List!32333 List!32333) Bool)

(assert (=> b!2785791 (= res!1162610 (not (isPrefix!2585 testedP!183 lt!995131)))))

(declare-fun lt!995140 () List!32333)

(assert (=> b!2785791 (isPrefix!2585 testedP!183 lt!995140)))

(declare-datatypes ((Unit!46454 0))(
  ( (Unit!46455) )
))
(declare-fun lt!995137 () Unit!46454)

(declare-fun testedSuffix!143 () List!32333)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1695 (List!32333 List!32333) Unit!46454)

(assert (=> b!2785791 (= lt!995137 (lemmaConcatTwoListThenFirstIsPrefix!1695 testedP!183 testedSuffix!143))))

(declare-fun b!2785792 () Bool)

(declare-fun e!1757921 () Bool)

(declare-fun e!1757918 () Bool)

(declare-datatypes ((tuple3!5006 0))(
  ( (tuple3!5007 (_1!19259 Regex!8143) (_2!19259 Context!4722) (_3!2973 C!16444)) )
))
(declare-datatypes ((tuple2!32572 0))(
  ( (tuple2!32573 (_1!19260 tuple3!5006) (_2!19260 (InoxSet Context!4722))) )
))
(declare-datatypes ((List!32334 0))(
  ( (Nil!32234) (Cons!32234 (h!37654 tuple2!32572) (t!228476 List!32334)) )
))
(declare-datatypes ((array!13827 0))(
  ( (array!13828 (arr!6165 (Array (_ BitVec 32) List!32334)) (size!25052 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7776 0))(
  ( (LongMapFixedSize!7777 (defaultEntry!4273 Int) (mask!9696 (_ BitVec 32)) (extraKeys!4137 (_ BitVec 32)) (zeroValue!4147 List!32334) (minValue!4147 List!32334) (_size!7819 (_ BitVec 32)) (_keys!4188 array!13825) (_values!4169 array!13827) (_vacant!3949 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15361 0))(
  ( (Cell!15362 (v!33841 LongMapFixedSize!7776)) )
))
(declare-datatypes ((MutLongMap!3888 0))(
  ( (LongMap!3888 (underlying!7979 Cell!15361)) (MutLongMapExt!3887 (__x!21314 Int)) )
))
(declare-fun lt!995127 () MutLongMap!3888)

(assert (=> b!2785792 (= e!1757921 (and e!1757918 ((_ is LongMap!3888) lt!995127)))))

(declare-datatypes ((Cell!15363 0))(
  ( (Cell!15364 (v!33842 MutLongMap!3888)) )
))
(declare-datatypes ((Hashable!3804 0))(
  ( (HashableExt!3803 (__x!21315 Int)) )
))
(declare-datatypes ((MutableMap!3794 0))(
  ( (MutableMapExt!3793 (__x!21316 Int)) (HashMap!3794 (underlying!7980 Cell!15363) (hashF!5836 Hashable!3804) (_size!7820 (_ BitVec 32)) (defaultValue!3965 Int)) )
))
(declare-datatypes ((CacheDown!2622 0))(
  ( (CacheDown!2623 (cache!3937 MutableMap!3794)) )
))
(declare-fun cacheDown!1009 () CacheDown!2622)

(assert (=> b!2785792 (= lt!995127 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))

(declare-fun b!2785793 () Bool)

(declare-fun e!1757945 () Bool)

(declare-fun e!1757933 () Bool)

(assert (=> b!2785793 (= e!1757945 e!1757933)))

(declare-fun res!1162619 () Bool)

(assert (=> b!2785793 (=> res!1162619 e!1757933)))

(declare-datatypes ((IArray!20033 0))(
  ( (IArray!20034 (innerList!10074 List!32333)) )
))
(declare-datatypes ((Conc!10014 0))(
  ( (Node!10014 (left!24477 Conc!10014) (right!24807 Conc!10014) (csize!20258 Int) (cheight!10225 Int)) (Leaf!15254 (xs!13125 IArray!20033) (csize!20259 Int)) (Empty!10014) )
))
(declare-datatypes ((BalanceConc!19642 0))(
  ( (BalanceConc!19643 (c!452459 Conc!10014)) )
))
(declare-fun totalInput!758 () BalanceConc!19642)

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7538 (BalanceConc!19642 Int) C!16444)

(declare-fun head!6168 (List!32333) C!16444)

(assert (=> b!2785793 (= res!1162619 (not (= (apply!7538 totalInput!758 testedPSize!143) (head!6168 testedSuffix!143))))))

(declare-fun drop!1722 (List!32333 Int) List!32333)

(declare-fun apply!7539 (List!32333 Int) C!16444)

(assert (=> b!2785793 (= (head!6168 (drop!1722 lt!995131 testedPSize!143)) (apply!7539 lt!995131 testedPSize!143))))

(declare-fun lt!995125 () Unit!46454)

(declare-fun lemmaDropApply!928 (List!32333 Int) Unit!46454)

(assert (=> b!2785793 (= lt!995125 (lemmaDropApply!928 lt!995131 testedPSize!143))))

(declare-fun lt!995138 () List!32333)

(declare-fun lt!995132 () List!32333)

(assert (=> b!2785793 (not (or (not (= lt!995138 testedP!183)) (not (= lt!995132 testedSuffix!143))))))

(declare-fun lt!995136 () Unit!46454)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!355 (List!32333 List!32333 List!32333 List!32333) Unit!46454)

(assert (=> b!2785793 (= lt!995136 (lemmaConcatSameAndSameSizesThenSameLists!355 lt!995138 lt!995132 testedP!183 testedSuffix!143))))

(declare-fun b!2785794 () Bool)

(declare-fun e!1757937 () Bool)

(declare-fun tp!883214 () Bool)

(assert (=> b!2785794 (= e!1757937 (and tp!883214 mapRes!17718))))

(declare-fun condMapEmpty!17718 () Bool)

(declare-fun mapDefault!17717 () List!32334)

(assert (=> b!2785794 (= condMapEmpty!17718 (= (arr!6165 (_values!4169 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32334)) mapDefault!17717)))))

(declare-fun b!2785795 () Bool)

(declare-fun e!1757943 () Bool)

(assert (=> b!2785795 (= e!1757934 e!1757943)))

(declare-fun res!1162620 () Bool)

(assert (=> b!2785795 (=> res!1162620 e!1757943)))

(declare-fun z!3684 () (InoxSet Context!4722))

(declare-fun lostCauseZipper!462 ((InoxSet Context!4722)) Bool)

(assert (=> b!2785795 (= res!1162620 (lostCauseZipper!462 z!3684))))

(declare-fun lt!995142 () List!32333)

(assert (=> b!2785795 (and (= testedSuffix!143 lt!995142) (= lt!995142 testedSuffix!143))))

(declare-fun lt!995134 () Unit!46454)

(declare-fun lemmaSamePrefixThenSameSuffix!1163 (List!32333 List!32333 List!32333 List!32333 List!32333) Unit!46454)

(assert (=> b!2785795 (= lt!995134 (lemmaSamePrefixThenSameSuffix!1163 testedP!183 testedSuffix!143 testedP!183 lt!995142 lt!995131))))

(declare-fun getSuffix!1262 (List!32333 List!32333) List!32333)

(assert (=> b!2785795 (= lt!995142 (getSuffix!1262 lt!995131 testedP!183))))

(declare-fun b!2785796 () Bool)

(declare-fun e!1757932 () Unit!46454)

(declare-fun Unit!46456 () Unit!46454)

(assert (=> b!2785796 (= e!1757932 Unit!46456)))

(declare-fun b!2785797 () Bool)

(declare-fun e!1757929 () Bool)

(declare-fun e!1757936 () Bool)

(assert (=> b!2785797 (= e!1757929 e!1757936)))

(declare-fun res!1162613 () Bool)

(assert (=> b!2785797 (=> (not res!1162613) (not e!1757936))))

(declare-fun lt!995128 () Int)

(assert (=> b!2785797 (= res!1162613 (= testedPSize!143 lt!995128))))

(declare-fun size!25053 (List!32333) Int)

(assert (=> b!2785797 (= lt!995128 (size!25053 testedP!183))))

(declare-fun mapNonEmpty!17717 () Bool)

(declare-fun tp!883204 () Bool)

(declare-fun tp!883210 () Bool)

(assert (=> mapNonEmpty!17717 (= mapRes!17718 (and tp!883204 tp!883210))))

(declare-fun mapRest!17718 () (Array (_ BitVec 32) List!32334))

(declare-fun mapValue!17718 () List!32334)

(declare-fun mapKey!17717 () (_ BitVec 32))

(assert (=> mapNonEmpty!17717 (= (arr!6165 (_values!4169 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) (store mapRest!17718 mapKey!17717 mapValue!17718))))

(declare-fun b!2785798 () Bool)

(declare-fun res!1162617 () Bool)

(assert (=> b!2785798 (=> res!1162617 e!1757945)))

(declare-datatypes ((tuple2!32574 0))(
  ( (tuple2!32575 (_1!19261 BalanceConc!19642) (_2!19261 BalanceConc!19642)) )
))
(declare-fun lt!995141 () tuple2!32574)

(declare-fun size!25054 (BalanceConc!19642) Int)

(assert (=> b!2785798 (= res!1162617 (not (= (size!25054 (_1!19261 lt!995141)) testedPSize!143)))))

(declare-fun mapIsEmpty!17718 () Bool)

(declare-fun mapRes!17717 () Bool)

(assert (=> mapIsEmpty!17718 mapRes!17717))

(declare-fun b!2785799 () Bool)

(declare-fun e!1757922 () Bool)

(declare-fun e!1757941 () Bool)

(assert (=> b!2785799 (= e!1757922 e!1757941)))

(declare-fun b!2785800 () Bool)

(declare-fun e!1757939 () Bool)

(declare-fun e!1757935 () Bool)

(assert (=> b!2785800 (= e!1757939 e!1757935)))

(declare-fun b!2785801 () Bool)

(declare-fun res!1162618 () Bool)

(assert (=> b!2785801 (=> res!1162618 e!1757943)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2785801 (= res!1162618 (= testedPSize!143 totalInputSize!205))))

(assert (=> b!2785802 (= e!1757935 (and e!1757920 tp!883205))))

(declare-fun res!1162616 () Bool)

(assert (=> start!269168 (=> (not res!1162616) (not e!1757929))))

(assert (=> start!269168 (= res!1162616 (= lt!995140 lt!995131))))

(declare-fun list!12137 (BalanceConc!19642) List!32333)

(assert (=> start!269168 (= lt!995131 (list!12137 totalInput!758))))

(declare-fun ++!7964 (List!32333 List!32333) List!32333)

(assert (=> start!269168 (= lt!995140 (++!7964 testedP!183 testedSuffix!143))))

(assert (=> start!269168 e!1757929))

(declare-fun e!1757938 () Bool)

(declare-fun inv!43790 (BalanceConc!19642) Bool)

(assert (=> start!269168 (and (inv!43790 totalInput!758) e!1757938)))

(declare-fun condSetEmpty!23521 () Bool)

(assert (=> start!269168 (= condSetEmpty!23521 (= z!3684 ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setRes!23521 () Bool)

(assert (=> start!269168 setRes!23521))

(assert (=> start!269168 true))

(assert (=> start!269168 e!1757930))

(assert (=> start!269168 e!1757927))

(declare-fun inv!43791 (CacheDown!2622) Bool)

(assert (=> start!269168 (and (inv!43791 cacheDown!1009) e!1757922)))

(declare-fun inv!43792 (CacheUp!2496) Bool)

(assert (=> start!269168 (and (inv!43792 cacheUp!890) e!1757939)))

(declare-fun b!2785786 () Bool)

(declare-fun e!1757923 () Bool)

(declare-fun lt!995133 () Int)

(assert (=> b!2785786 (= e!1757923 (and (<= 0 testedPSize!143) (< testedPSize!143 lt!995133)))))

(assert (=> b!2785786 (isPrefix!2585 (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233)) lt!995131)))

(declare-fun lt!995129 () Unit!46454)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!465 (List!32333 List!32333) Unit!46454)

(assert (=> b!2785786 (= lt!995129 (lemmaAddHeadSuffixToPrefixStillPrefix!465 testedP!183 lt!995131))))

(declare-fun b!2785803 () Bool)

(declare-fun Unit!46457 () Unit!46454)

(assert (=> b!2785803 (= e!1757932 Unit!46457)))

(declare-fun lt!995135 () Unit!46454)

(declare-fun lemmaIsPrefixRefl!1689 (List!32333 List!32333) Unit!46454)

(assert (=> b!2785803 (= lt!995135 (lemmaIsPrefixRefl!1689 lt!995131 lt!995131))))

(assert (=> b!2785803 (isPrefix!2585 lt!995131 lt!995131)))

(declare-fun lt!995130 () Unit!46454)

(declare-fun lemmaIsPrefixSameLengthThenSameList!469 (List!32333 List!32333 List!32333) Unit!46454)

(assert (=> b!2785803 (= lt!995130 (lemmaIsPrefixSameLengthThenSameList!469 lt!995131 testedP!183 lt!995131))))

(assert (=> b!2785803 false))

(declare-fun tp!883211 () Bool)

(declare-fun e!1757931 () Bool)

(declare-fun e!1757924 () Bool)

(declare-fun tp!883202 () Bool)

(declare-fun array_inv!4414 (array!13825) Bool)

(declare-fun array_inv!4415 (array!13823) Bool)

(assert (=> b!2785804 (= e!1757931 (and tp!883207 tp!883211 tp!883202 (array_inv!4414 (_keys!4187 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) (array_inv!4415 (_values!4168 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) e!1757924))))

(assert (=> b!2785805 (= e!1757941 (and e!1757921 tp!883201))))

(declare-fun b!2785806 () Bool)

(declare-fun e!1757926 () Bool)

(declare-fun tp!883197 () Bool)

(assert (=> b!2785806 (= e!1757926 tp!883197)))

(declare-fun b!2785807 () Bool)

(declare-fun e!1757919 () Bool)

(assert (=> b!2785807 (= e!1757919 e!1757931)))

(declare-fun b!2785808 () Bool)

(declare-fun res!1162614 () Bool)

(assert (=> b!2785808 (=> (not res!1162614) (not e!1757942))))

(declare-fun valid!3040 (CacheDown!2622) Bool)

(assert (=> b!2785808 (= res!1162614 (valid!3040 cacheDown!1009))))

(declare-fun b!2785809 () Bool)

(declare-fun tp!883213 () Bool)

(declare-fun inv!43793 (Conc!10014) Bool)

(assert (=> b!2785809 (= e!1757938 (and (inv!43793 (c!452459 totalInput!758)) tp!883213))))

(declare-fun b!2785810 () Bool)

(assert (=> b!2785810 (= e!1757943 e!1757945)))

(declare-fun res!1162611 () Bool)

(assert (=> b!2785810 (=> res!1162611 e!1757945)))

(assert (=> b!2785810 (= res!1162611 (not (= (++!7964 lt!995138 lt!995132) lt!995131)))))

(assert (=> b!2785810 (= lt!995132 (list!12137 (_2!19261 lt!995141)))))

(assert (=> b!2785810 (= lt!995138 (list!12137 (_1!19261 lt!995141)))))

(declare-fun splitAt!140 (BalanceConc!19642 Int) tuple2!32574)

(assert (=> b!2785810 (= lt!995141 (splitAt!140 totalInput!758 testedPSize!143))))

(declare-fun setNonEmpty!23521 () Bool)

(declare-fun tp!883198 () Bool)

(declare-fun setElem!23521 () Context!4722)

(declare-fun inv!43794 (Context!4722) Bool)

(assert (=> setNonEmpty!23521 (= setRes!23521 (and tp!883198 (inv!43794 setElem!23521) e!1757926))))

(declare-fun setRest!23521 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23521 (= z!3684 ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23521 true) setRest!23521))))

(declare-fun b!2785811 () Bool)

(assert (=> b!2785811 (= e!1757928 e!1757919)))

(declare-fun setIsEmpty!23521 () Bool)

(assert (=> setIsEmpty!23521 setRes!23521))

(declare-fun b!2785812 () Bool)

(declare-fun e!1757944 () Bool)

(declare-fun e!1757925 () Bool)

(assert (=> b!2785812 (= e!1757944 e!1757925)))

(declare-fun b!2785813 () Bool)

(assert (=> b!2785813 (= e!1757936 e!1757942)))

(declare-fun res!1162621 () Bool)

(assert (=> b!2785813 (=> (not res!1162621) (not e!1757942))))

(assert (=> b!2785813 (= res!1162621 (= totalInputSize!205 lt!995133))))

(assert (=> b!2785813 (= lt!995133 (size!25054 totalInput!758))))

(declare-fun tp!883200 () Bool)

(declare-fun tp!883208 () Bool)

(declare-fun array_inv!4416 (array!13827) Bool)

(assert (=> b!2785814 (= e!1757925 (and tp!883199 tp!883200 tp!883208 (array_inv!4414 (_keys!4188 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) (array_inv!4416 (_values!4169 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) e!1757937))))

(declare-fun mapNonEmpty!17718 () Bool)

(declare-fun tp!883203 () Bool)

(declare-fun tp!883215 () Bool)

(assert (=> mapNonEmpty!17718 (= mapRes!17717 (and tp!883203 tp!883215))))

(declare-fun mapValue!17717 () List!32332)

(declare-fun mapKey!17718 () (_ BitVec 32))

(declare-fun mapRest!17717 () (Array (_ BitVec 32) List!32332))

(assert (=> mapNonEmpty!17718 (= (arr!6163 (_values!4168 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) (store mapRest!17717 mapKey!17718 mapValue!17717))))

(declare-fun b!2785815 () Bool)

(assert (=> b!2785815 (= e!1757933 e!1757923)))

(declare-fun res!1162612 () Bool)

(assert (=> b!2785815 (=> res!1162612 e!1757923)))

(assert (=> b!2785815 (= res!1162612 (>= lt!995128 lt!995133))))

(declare-fun lt!995143 () Unit!46454)

(assert (=> b!2785815 (= lt!995143 e!1757932)))

(declare-fun c!452457 () Bool)

(assert (=> b!2785815 (= c!452457 (= lt!995128 lt!995133))))

(assert (=> b!2785815 (<= lt!995128 (size!25053 lt!995131))))

(declare-fun lt!995126 () Unit!46454)

(declare-fun lemmaIsPrefixThenSmallerEqSize!271 (List!32333 List!32333) Unit!46454)

(assert (=> b!2785815 (= lt!995126 (lemmaIsPrefixThenSmallerEqSize!271 testedP!183 lt!995131))))

(declare-fun b!2785816 () Bool)

(assert (=> b!2785816 (= e!1757918 e!1757944)))

(declare-fun b!2785817 () Bool)

(declare-fun tp!883212 () Bool)

(assert (=> b!2785817 (= e!1757924 (and tp!883212 mapRes!17717))))

(declare-fun condMapEmpty!17717 () Bool)

(declare-fun mapDefault!17718 () List!32332)

(assert (=> b!2785817 (= condMapEmpty!17717 (= (arr!6163 (_values!4168 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32332)) mapDefault!17718)))))

(assert (= (and start!269168 res!1162616) b!2785797))

(assert (= (and b!2785797 res!1162613) b!2785813))

(assert (= (and b!2785813 res!1162621) b!2785788))

(assert (= (and b!2785788 res!1162615) b!2785808))

(assert (= (and b!2785808 res!1162614) b!2785791))

(assert (= (and b!2785791 (not res!1162610)) b!2785795))

(assert (= (and b!2785795 (not res!1162620)) b!2785801))

(assert (= (and b!2785801 (not res!1162618)) b!2785810))

(assert (= (and b!2785810 (not res!1162611)) b!2785798))

(assert (= (and b!2785798 (not res!1162617)) b!2785793))

(assert (= (and b!2785793 (not res!1162619)) b!2785815))

(assert (= (and b!2785815 c!452457) b!2785803))

(assert (= (and b!2785815 (not c!452457)) b!2785796))

(assert (= (and b!2785815 (not res!1162612)) b!2785786))

(assert (= start!269168 b!2785809))

(assert (= (and start!269168 condSetEmpty!23521) setIsEmpty!23521))

(assert (= (and start!269168 (not condSetEmpty!23521)) setNonEmpty!23521))

(assert (= setNonEmpty!23521 b!2785806))

(assert (= (and start!269168 ((_ is Cons!32233) testedP!183)) b!2785787))

(assert (= (and start!269168 ((_ is Cons!32233) testedSuffix!143)) b!2785790))

(assert (= (and b!2785794 condMapEmpty!17718) mapIsEmpty!17717))

(assert (= (and b!2785794 (not condMapEmpty!17718)) mapNonEmpty!17717))

(assert (= b!2785814 b!2785794))

(assert (= b!2785812 b!2785814))

(assert (= b!2785816 b!2785812))

(assert (= (and b!2785792 ((_ is LongMap!3888) (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))) b!2785816))

(assert (= b!2785805 b!2785792))

(assert (= (and b!2785799 ((_ is HashMap!3794) (cache!3937 cacheDown!1009))) b!2785805))

(assert (= start!269168 b!2785799))

(assert (= (and b!2785817 condMapEmpty!17717) mapIsEmpty!17718))

(assert (= (and b!2785817 (not condMapEmpty!17717)) mapNonEmpty!17718))

(assert (= b!2785804 b!2785817))

(assert (= b!2785807 b!2785804))

(assert (= b!2785811 b!2785807))

(assert (= (and b!2785789 ((_ is LongMap!3887) (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))) b!2785811))

(assert (= b!2785802 b!2785789))

(assert (= (and b!2785800 ((_ is HashMap!3793) (cache!3936 cacheUp!890))) b!2785802))

(assert (= start!269168 b!2785800))

(declare-fun m!3216163 () Bool)

(assert (=> b!2785797 m!3216163))

(declare-fun m!3216165 () Bool)

(assert (=> b!2785788 m!3216165))

(declare-fun m!3216167 () Bool)

(assert (=> b!2785815 m!3216167))

(declare-fun m!3216169 () Bool)

(assert (=> b!2785815 m!3216169))

(declare-fun m!3216171 () Bool)

(assert (=> mapNonEmpty!17718 m!3216171))

(declare-fun m!3216173 () Bool)

(assert (=> b!2785786 m!3216173))

(declare-fun m!3216175 () Bool)

(assert (=> b!2785786 m!3216175))

(assert (=> b!2785786 m!3216175))

(declare-fun m!3216177 () Bool)

(assert (=> b!2785786 m!3216177))

(declare-fun m!3216179 () Bool)

(assert (=> b!2785786 m!3216179))

(declare-fun m!3216181 () Bool)

(assert (=> b!2785793 m!3216181))

(declare-fun m!3216183 () Bool)

(assert (=> b!2785793 m!3216183))

(declare-fun m!3216185 () Bool)

(assert (=> b!2785793 m!3216185))

(declare-fun m!3216187 () Bool)

(assert (=> b!2785793 m!3216187))

(assert (=> b!2785793 m!3216185))

(declare-fun m!3216189 () Bool)

(assert (=> b!2785793 m!3216189))

(declare-fun m!3216191 () Bool)

(assert (=> b!2785793 m!3216191))

(declare-fun m!3216193 () Bool)

(assert (=> b!2785793 m!3216193))

(declare-fun m!3216195 () Bool)

(assert (=> setNonEmpty!23521 m!3216195))

(declare-fun m!3216197 () Bool)

(assert (=> start!269168 m!3216197))

(declare-fun m!3216199 () Bool)

(assert (=> start!269168 m!3216199))

(declare-fun m!3216201 () Bool)

(assert (=> start!269168 m!3216201))

(declare-fun m!3216203 () Bool)

(assert (=> start!269168 m!3216203))

(declare-fun m!3216205 () Bool)

(assert (=> start!269168 m!3216205))

(declare-fun m!3216207 () Bool)

(assert (=> b!2785809 m!3216207))

(declare-fun m!3216209 () Bool)

(assert (=> b!2785803 m!3216209))

(declare-fun m!3216211 () Bool)

(assert (=> b!2785803 m!3216211))

(declare-fun m!3216213 () Bool)

(assert (=> b!2785803 m!3216213))

(declare-fun m!3216215 () Bool)

(assert (=> b!2785808 m!3216215))

(declare-fun m!3216217 () Bool)

(assert (=> b!2785813 m!3216217))

(declare-fun m!3216219 () Bool)

(assert (=> b!2785795 m!3216219))

(declare-fun m!3216221 () Bool)

(assert (=> b!2785795 m!3216221))

(declare-fun m!3216223 () Bool)

(assert (=> b!2785795 m!3216223))

(declare-fun m!3216225 () Bool)

(assert (=> b!2785798 m!3216225))

(declare-fun m!3216227 () Bool)

(assert (=> b!2785791 m!3216227))

(declare-fun m!3216229 () Bool)

(assert (=> b!2785791 m!3216229))

(declare-fun m!3216231 () Bool)

(assert (=> b!2785791 m!3216231))

(declare-fun m!3216233 () Bool)

(assert (=> b!2785810 m!3216233))

(declare-fun m!3216235 () Bool)

(assert (=> b!2785810 m!3216235))

(declare-fun m!3216237 () Bool)

(assert (=> b!2785810 m!3216237))

(declare-fun m!3216239 () Bool)

(assert (=> b!2785810 m!3216239))

(declare-fun m!3216241 () Bool)

(assert (=> b!2785804 m!3216241))

(declare-fun m!3216243 () Bool)

(assert (=> b!2785804 m!3216243))

(declare-fun m!3216245 () Bool)

(assert (=> mapNonEmpty!17717 m!3216245))

(declare-fun m!3216247 () Bool)

(assert (=> b!2785814 m!3216247))

(declare-fun m!3216249 () Bool)

(assert (=> b!2785814 m!3216249))

(check-sat (not b!2785810) (not b!2785791) (not b!2785793) (not b!2785786) (not b!2785804) (not b_next!79479) (not b!2785794) b_and!203515 (not mapNonEmpty!17717) (not b!2785790) (not b!2785814) (not b!2785798) (not b!2785808) b_and!203513 (not mapNonEmpty!17718) (not setNonEmpty!23521) (not b!2785797) b_and!203511 (not b!2785788) b_and!203517 (not start!269168) (not b!2785803) (not b!2785815) tp_is_empty!14099 (not b!2785787) (not b!2785795) (not b_next!79477) (not b_next!79481) (not b_next!79483) (not b!2785809) (not b!2785806) (not b!2785817) (not b!2785813))
(check-sat b_and!203513 b_and!203511 b_and!203517 (not b_next!79479) b_and!203515 (not b_next!79483) (not b_next!79477) (not b_next!79481))
(get-model)

(declare-fun d!810538 () Bool)

(declare-fun lt!995146 () Int)

(assert (=> d!810538 (= lt!995146 (size!25053 (list!12137 (_1!19261 lt!995141))))))

(declare-fun size!25055 (Conc!10014) Int)

(assert (=> d!810538 (= lt!995146 (size!25055 (c!452459 (_1!19261 lt!995141))))))

(assert (=> d!810538 (= (size!25054 (_1!19261 lt!995141)) lt!995146)))

(declare-fun bs!510896 () Bool)

(assert (= bs!510896 d!810538))

(assert (=> bs!510896 m!3216237))

(assert (=> bs!510896 m!3216237))

(declare-fun m!3216251 () Bool)

(assert (=> bs!510896 m!3216251))

(declare-fun m!3216253 () Bool)

(assert (=> bs!510896 m!3216253))

(assert (=> b!2785798 d!810538))

(declare-fun d!810540 () Bool)

(declare-fun validCacheMapDown!409 (MutableMap!3794) Bool)

(assert (=> d!810540 (= (valid!3040 cacheDown!1009) (validCacheMapDown!409 (cache!3937 cacheDown!1009)))))

(declare-fun bs!510897 () Bool)

(assert (= bs!510897 d!810540))

(declare-fun m!3216255 () Bool)

(assert (=> bs!510897 m!3216255))

(assert (=> b!2785808 d!810540))

(declare-fun d!810542 () Bool)

(declare-fun validCacheMapUp!378 (MutableMap!3793) Bool)

(assert (=> d!810542 (= (valid!3039 cacheUp!890) (validCacheMapUp!378 (cache!3936 cacheUp!890)))))

(declare-fun bs!510898 () Bool)

(assert (= bs!510898 d!810542))

(declare-fun m!3216257 () Bool)

(assert (=> bs!510898 m!3216257))

(assert (=> b!2785788 d!810542))

(declare-fun d!810544 () Bool)

(declare-fun lt!995149 () Int)

(assert (=> d!810544 (>= lt!995149 0)))

(declare-fun e!1757949 () Int)

(assert (=> d!810544 (= lt!995149 e!1757949)))

(declare-fun c!452462 () Bool)

(assert (=> d!810544 (= c!452462 ((_ is Nil!32233) lt!995131))))

(assert (=> d!810544 (= (size!25053 lt!995131) lt!995149)))

(declare-fun b!2785822 () Bool)

(assert (=> b!2785822 (= e!1757949 0)))

(declare-fun b!2785823 () Bool)

(assert (=> b!2785823 (= e!1757949 (+ 1 (size!25053 (t!228475 lt!995131))))))

(assert (= (and d!810544 c!452462) b!2785822))

(assert (= (and d!810544 (not c!452462)) b!2785823))

(declare-fun m!3216259 () Bool)

(assert (=> b!2785823 m!3216259))

(assert (=> b!2785815 d!810544))

(declare-fun d!810546 () Bool)

(assert (=> d!810546 (<= (size!25053 testedP!183) (size!25053 lt!995131))))

(declare-fun lt!995152 () Unit!46454)

(declare-fun choose!16335 (List!32333 List!32333) Unit!46454)

(assert (=> d!810546 (= lt!995152 (choose!16335 testedP!183 lt!995131))))

(assert (=> d!810546 (isPrefix!2585 testedP!183 lt!995131)))

(assert (=> d!810546 (= (lemmaIsPrefixThenSmallerEqSize!271 testedP!183 lt!995131) lt!995152)))

(declare-fun bs!510899 () Bool)

(assert (= bs!510899 d!810546))

(assert (=> bs!510899 m!3216163))

(assert (=> bs!510899 m!3216167))

(declare-fun m!3216261 () Bool)

(assert (=> bs!510899 m!3216261))

(assert (=> bs!510899 m!3216227))

(assert (=> b!2785815 d!810546))

(declare-fun d!810548 () Bool)

(declare-fun c!452465 () Bool)

(assert (=> d!810548 (= c!452465 ((_ is Node!10014) (c!452459 totalInput!758)))))

(declare-fun e!1757954 () Bool)

(assert (=> d!810548 (= (inv!43793 (c!452459 totalInput!758)) e!1757954)))

(declare-fun b!2785830 () Bool)

(declare-fun inv!43795 (Conc!10014) Bool)

(assert (=> b!2785830 (= e!1757954 (inv!43795 (c!452459 totalInput!758)))))

(declare-fun b!2785831 () Bool)

(declare-fun e!1757955 () Bool)

(assert (=> b!2785831 (= e!1757954 e!1757955)))

(declare-fun res!1162624 () Bool)

(assert (=> b!2785831 (= res!1162624 (not ((_ is Leaf!15254) (c!452459 totalInput!758))))))

(assert (=> b!2785831 (=> res!1162624 e!1757955)))

(declare-fun b!2785832 () Bool)

(declare-fun inv!43796 (Conc!10014) Bool)

(assert (=> b!2785832 (= e!1757955 (inv!43796 (c!452459 totalInput!758)))))

(assert (= (and d!810548 c!452465) b!2785830))

(assert (= (and d!810548 (not c!452465)) b!2785831))

(assert (= (and b!2785831 (not res!1162624)) b!2785832))

(declare-fun m!3216263 () Bool)

(assert (=> b!2785830 m!3216263))

(declare-fun m!3216265 () Bool)

(assert (=> b!2785832 m!3216265))

(assert (=> b!2785809 d!810548))

(declare-fun d!810550 () Bool)

(assert (=> d!810550 (= (array_inv!4414 (_keys!4188 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) (bvsge (size!25051 (_keys!4188 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2785814 d!810550))

(declare-fun d!810552 () Bool)

(assert (=> d!810552 (= (array_inv!4416 (_values!4169 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) (bvsge (size!25052 (_values!4169 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2785814 d!810552))

(declare-fun d!810554 () Bool)

(declare-fun lt!995153 () Int)

(assert (=> d!810554 (= lt!995153 (size!25053 (list!12137 totalInput!758)))))

(assert (=> d!810554 (= lt!995153 (size!25055 (c!452459 totalInput!758)))))

(assert (=> d!810554 (= (size!25054 totalInput!758) lt!995153)))

(declare-fun bs!510900 () Bool)

(assert (= bs!510900 d!810554))

(assert (=> bs!510900 m!3216197))

(assert (=> bs!510900 m!3216197))

(declare-fun m!3216267 () Bool)

(assert (=> bs!510900 m!3216267))

(declare-fun m!3216269 () Bool)

(assert (=> bs!510900 m!3216269))

(assert (=> b!2785813 d!810554))

(declare-fun e!1757964 () Bool)

(declare-fun b!2785844 () Bool)

(assert (=> b!2785844 (= e!1757964 (>= (size!25053 lt!995131) (size!25053 (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233)))))))

(declare-fun b!2785843 () Bool)

(declare-fun e!1757963 () Bool)

(declare-fun tail!4400 (List!32333) List!32333)

(assert (=> b!2785843 (= e!1757963 (isPrefix!2585 (tail!4400 (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233))) (tail!4400 lt!995131)))))

(declare-fun b!2785841 () Bool)

(declare-fun e!1757962 () Bool)

(assert (=> b!2785841 (= e!1757962 e!1757963)))

(declare-fun res!1162636 () Bool)

(assert (=> b!2785841 (=> (not res!1162636) (not e!1757963))))

(assert (=> b!2785841 (= res!1162636 (not ((_ is Nil!32233) lt!995131)))))

(declare-fun d!810556 () Bool)

(assert (=> d!810556 e!1757964))

(declare-fun res!1162633 () Bool)

(assert (=> d!810556 (=> res!1162633 e!1757964)))

(declare-fun lt!995156 () Bool)

(assert (=> d!810556 (= res!1162633 (not lt!995156))))

(assert (=> d!810556 (= lt!995156 e!1757962)))

(declare-fun res!1162635 () Bool)

(assert (=> d!810556 (=> res!1162635 e!1757962)))

(assert (=> d!810556 (= res!1162635 ((_ is Nil!32233) (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233))))))

(assert (=> d!810556 (= (isPrefix!2585 (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233)) lt!995131) lt!995156)))

(declare-fun b!2785842 () Bool)

(declare-fun res!1162634 () Bool)

(assert (=> b!2785842 (=> (not res!1162634) (not e!1757963))))

(assert (=> b!2785842 (= res!1162634 (= (head!6168 (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233))) (head!6168 lt!995131)))))

(assert (= (and d!810556 (not res!1162635)) b!2785841))

(assert (= (and b!2785841 res!1162636) b!2785842))

(assert (= (and b!2785842 res!1162634) b!2785843))

(assert (= (and d!810556 (not res!1162633)) b!2785844))

(assert (=> b!2785844 m!3216167))

(assert (=> b!2785844 m!3216175))

(declare-fun m!3216271 () Bool)

(assert (=> b!2785844 m!3216271))

(assert (=> b!2785843 m!3216175))

(declare-fun m!3216273 () Bool)

(assert (=> b!2785843 m!3216273))

(declare-fun m!3216275 () Bool)

(assert (=> b!2785843 m!3216275))

(assert (=> b!2785843 m!3216273))

(assert (=> b!2785843 m!3216275))

(declare-fun m!3216277 () Bool)

(assert (=> b!2785843 m!3216277))

(assert (=> b!2785842 m!3216175))

(declare-fun m!3216279 () Bool)

(assert (=> b!2785842 m!3216279))

(declare-fun m!3216281 () Bool)

(assert (=> b!2785842 m!3216281))

(assert (=> b!2785786 d!810556))

(declare-fun b!2785854 () Bool)

(declare-fun e!1757970 () List!32333)

(assert (=> b!2785854 (= e!1757970 (Cons!32233 (h!37653 testedP!183) (++!7964 (t!228475 testedP!183) (Cons!32233 (head!6168 lt!995142) Nil!32233))))))

(declare-fun lt!995159 () List!32333)

(declare-fun b!2785856 () Bool)

(declare-fun e!1757969 () Bool)

(assert (=> b!2785856 (= e!1757969 (or (not (= (Cons!32233 (head!6168 lt!995142) Nil!32233) Nil!32233)) (= lt!995159 testedP!183)))))

(declare-fun d!810558 () Bool)

(assert (=> d!810558 e!1757969))

(declare-fun res!1162642 () Bool)

(assert (=> d!810558 (=> (not res!1162642) (not e!1757969))))

(declare-fun content!4519 (List!32333) (InoxSet C!16444))

(assert (=> d!810558 (= res!1162642 (= (content!4519 lt!995159) ((_ map or) (content!4519 testedP!183) (content!4519 (Cons!32233 (head!6168 lt!995142) Nil!32233)))))))

(assert (=> d!810558 (= lt!995159 e!1757970)))

(declare-fun c!452468 () Bool)

(assert (=> d!810558 (= c!452468 ((_ is Nil!32233) testedP!183))))

(assert (=> d!810558 (= (++!7964 testedP!183 (Cons!32233 (head!6168 lt!995142) Nil!32233)) lt!995159)))

(declare-fun b!2785855 () Bool)

(declare-fun res!1162641 () Bool)

(assert (=> b!2785855 (=> (not res!1162641) (not e!1757969))))

(assert (=> b!2785855 (= res!1162641 (= (size!25053 lt!995159) (+ (size!25053 testedP!183) (size!25053 (Cons!32233 (head!6168 lt!995142) Nil!32233)))))))

(declare-fun b!2785853 () Bool)

(assert (=> b!2785853 (= e!1757970 (Cons!32233 (head!6168 lt!995142) Nil!32233))))

(assert (= (and d!810558 c!452468) b!2785853))

(assert (= (and d!810558 (not c!452468)) b!2785854))

(assert (= (and d!810558 res!1162642) b!2785855))

(assert (= (and b!2785855 res!1162641) b!2785856))

(declare-fun m!3216283 () Bool)

(assert (=> b!2785854 m!3216283))

(declare-fun m!3216285 () Bool)

(assert (=> d!810558 m!3216285))

(declare-fun m!3216287 () Bool)

(assert (=> d!810558 m!3216287))

(declare-fun m!3216289 () Bool)

(assert (=> d!810558 m!3216289))

(declare-fun m!3216291 () Bool)

(assert (=> b!2785855 m!3216291))

(assert (=> b!2785855 m!3216163))

(declare-fun m!3216293 () Bool)

(assert (=> b!2785855 m!3216293))

(assert (=> b!2785786 d!810558))

(declare-fun d!810560 () Bool)

(assert (=> d!810560 (= (head!6168 lt!995142) (h!37653 lt!995142))))

(assert (=> b!2785786 d!810560))

(declare-fun d!810562 () Bool)

(assert (=> d!810562 (isPrefix!2585 (++!7964 testedP!183 (Cons!32233 (head!6168 (getSuffix!1262 lt!995131 testedP!183)) Nil!32233)) lt!995131)))

(declare-fun lt!995162 () Unit!46454)

(declare-fun choose!16336 (List!32333 List!32333) Unit!46454)

(assert (=> d!810562 (= lt!995162 (choose!16336 testedP!183 lt!995131))))

(assert (=> d!810562 (isPrefix!2585 testedP!183 lt!995131)))

(assert (=> d!810562 (= (lemmaAddHeadSuffixToPrefixStillPrefix!465 testedP!183 lt!995131) lt!995162)))

(declare-fun bs!510901 () Bool)

(assert (= bs!510901 d!810562))

(assert (=> bs!510901 m!3216227))

(declare-fun m!3216295 () Bool)

(assert (=> bs!510901 m!3216295))

(declare-fun m!3216297 () Bool)

(assert (=> bs!510901 m!3216297))

(declare-fun m!3216299 () Bool)

(assert (=> bs!510901 m!3216299))

(assert (=> bs!510901 m!3216223))

(declare-fun m!3216301 () Bool)

(assert (=> bs!510901 m!3216301))

(assert (=> bs!510901 m!3216297))

(assert (=> bs!510901 m!3216223))

(assert (=> b!2785786 d!810562))

(declare-fun d!810564 () Bool)

(declare-fun lt!995163 () Int)

(assert (=> d!810564 (>= lt!995163 0)))

(declare-fun e!1757971 () Int)

(assert (=> d!810564 (= lt!995163 e!1757971)))

(declare-fun c!452469 () Bool)

(assert (=> d!810564 (= c!452469 ((_ is Nil!32233) testedP!183))))

(assert (=> d!810564 (= (size!25053 testedP!183) lt!995163)))

(declare-fun b!2785857 () Bool)

(assert (=> b!2785857 (= e!1757971 0)))

(declare-fun b!2785858 () Bool)

(assert (=> b!2785858 (= e!1757971 (+ 1 (size!25053 (t!228475 testedP!183))))))

(assert (= (and d!810564 c!452469) b!2785857))

(assert (= (and d!810564 (not c!452469)) b!2785858))

(declare-fun m!3216303 () Bool)

(assert (=> b!2785858 m!3216303))

(assert (=> b!2785797 d!810564))

(declare-fun d!810566 () Bool)

(assert (=> d!810566 (= (head!6168 (drop!1722 lt!995131 testedPSize!143)) (h!37653 (drop!1722 lt!995131 testedPSize!143)))))

(assert (=> b!2785793 d!810566))

(declare-fun b!2785877 () Bool)

(declare-fun e!1757983 () List!32333)

(assert (=> b!2785877 (= e!1757983 (drop!1722 (t!228475 lt!995131) (- testedPSize!143 1)))))

(declare-fun b!2785878 () Bool)

(assert (=> b!2785878 (= e!1757983 lt!995131)))

(declare-fun b!2785879 () Bool)

(declare-fun e!1757984 () List!32333)

(assert (=> b!2785879 (= e!1757984 e!1757983)))

(declare-fun c!452479 () Bool)

(assert (=> b!2785879 (= c!452479 (<= testedPSize!143 0))))

(declare-fun bm!182478 () Bool)

(declare-fun call!182483 () Int)

(assert (=> bm!182478 (= call!182483 (size!25053 lt!995131))))

(declare-fun b!2785881 () Bool)

(declare-fun e!1757982 () Int)

(assert (=> b!2785881 (= e!1757982 0)))

(declare-fun b!2785882 () Bool)

(declare-fun e!1757985 () Int)

(assert (=> b!2785882 (= e!1757985 call!182483)))

(declare-fun b!2785883 () Bool)

(assert (=> b!2785883 (= e!1757985 e!1757982)))

(declare-fun c!452481 () Bool)

(assert (=> b!2785883 (= c!452481 (>= testedPSize!143 call!182483))))

(declare-fun b!2785884 () Bool)

(assert (=> b!2785884 (= e!1757984 Nil!32233)))

(declare-fun b!2785885 () Bool)

(declare-fun e!1757986 () Bool)

(declare-fun lt!995166 () List!32333)

(assert (=> b!2785885 (= e!1757986 (= (size!25053 lt!995166) e!1757985))))

(declare-fun c!452478 () Bool)

(assert (=> b!2785885 (= c!452478 (<= testedPSize!143 0))))

(declare-fun b!2785880 () Bool)

(assert (=> b!2785880 (= e!1757982 (- call!182483 testedPSize!143))))

(declare-fun d!810568 () Bool)

(assert (=> d!810568 e!1757986))

(declare-fun res!1162645 () Bool)

(assert (=> d!810568 (=> (not res!1162645) (not e!1757986))))

(assert (=> d!810568 (= res!1162645 (= ((_ map implies) (content!4519 lt!995166) (content!4519 lt!995131)) ((as const (InoxSet C!16444)) true)))))

(assert (=> d!810568 (= lt!995166 e!1757984)))

(declare-fun c!452480 () Bool)

(assert (=> d!810568 (= c!452480 ((_ is Nil!32233) lt!995131))))

(assert (=> d!810568 (= (drop!1722 lt!995131 testedPSize!143) lt!995166)))

(assert (= (and d!810568 c!452480) b!2785884))

(assert (= (and d!810568 (not c!452480)) b!2785879))

(assert (= (and b!2785879 c!452479) b!2785878))

(assert (= (and b!2785879 (not c!452479)) b!2785877))

(assert (= (and d!810568 res!1162645) b!2785885))

(assert (= (and b!2785885 c!452478) b!2785882))

(assert (= (and b!2785885 (not c!452478)) b!2785883))

(assert (= (and b!2785883 c!452481) b!2785881))

(assert (= (and b!2785883 (not c!452481)) b!2785880))

(assert (= (or b!2785882 b!2785883 b!2785880) bm!182478))

(declare-fun m!3216305 () Bool)

(assert (=> b!2785877 m!3216305))

(assert (=> bm!182478 m!3216167))

(declare-fun m!3216307 () Bool)

(assert (=> b!2785885 m!3216307))

(declare-fun m!3216309 () Bool)

(assert (=> d!810568 m!3216309))

(declare-fun m!3216311 () Bool)

(assert (=> d!810568 m!3216311))

(assert (=> b!2785793 d!810568))

(declare-fun d!810570 () Bool)

(assert (=> d!810570 (and (= lt!995138 testedP!183) (= lt!995132 testedSuffix!143))))

(declare-fun lt!995169 () Unit!46454)

(declare-fun choose!16337 (List!32333 List!32333 List!32333 List!32333) Unit!46454)

(assert (=> d!810570 (= lt!995169 (choose!16337 lt!995138 lt!995132 testedP!183 testedSuffix!143))))

(assert (=> d!810570 (= (++!7964 lt!995138 lt!995132) (++!7964 testedP!183 testedSuffix!143))))

(assert (=> d!810570 (= (lemmaConcatSameAndSameSizesThenSameLists!355 lt!995138 lt!995132 testedP!183 testedSuffix!143) lt!995169)))

(declare-fun bs!510902 () Bool)

(assert (= bs!510902 d!810570))

(declare-fun m!3216313 () Bool)

(assert (=> bs!510902 m!3216313))

(assert (=> bs!510902 m!3216233))

(assert (=> bs!510902 m!3216205))

(assert (=> b!2785793 d!810570))

(declare-fun d!810572 () Bool)

(declare-fun lt!995172 () C!16444)

(assert (=> d!810572 (= lt!995172 (apply!7539 (list!12137 totalInput!758) testedPSize!143))))

(declare-fun apply!7540 (Conc!10014 Int) C!16444)

(assert (=> d!810572 (= lt!995172 (apply!7540 (c!452459 totalInput!758) testedPSize!143))))

(declare-fun e!1757989 () Bool)

(assert (=> d!810572 e!1757989))

(declare-fun res!1162648 () Bool)

(assert (=> d!810572 (=> (not res!1162648) (not e!1757989))))

(assert (=> d!810572 (= res!1162648 (<= 0 testedPSize!143))))

(assert (=> d!810572 (= (apply!7538 totalInput!758 testedPSize!143) lt!995172)))

(declare-fun b!2785888 () Bool)

(assert (=> b!2785888 (= e!1757989 (< testedPSize!143 (size!25054 totalInput!758)))))

(assert (= (and d!810572 res!1162648) b!2785888))

(assert (=> d!810572 m!3216197))

(assert (=> d!810572 m!3216197))

(declare-fun m!3216315 () Bool)

(assert (=> d!810572 m!3216315))

(declare-fun m!3216317 () Bool)

(assert (=> d!810572 m!3216317))

(assert (=> b!2785888 m!3216217))

(assert (=> b!2785793 d!810572))

(declare-fun d!810574 () Bool)

(declare-fun lt!995175 () C!16444)

(declare-fun contains!6002 (List!32333 C!16444) Bool)

(assert (=> d!810574 (contains!6002 lt!995131 lt!995175)))

(declare-fun e!1757994 () C!16444)

(assert (=> d!810574 (= lt!995175 e!1757994)))

(declare-fun c!452484 () Bool)

(assert (=> d!810574 (= c!452484 (= testedPSize!143 0))))

(declare-fun e!1757995 () Bool)

(assert (=> d!810574 e!1757995))

(declare-fun res!1162651 () Bool)

(assert (=> d!810574 (=> (not res!1162651) (not e!1757995))))

(assert (=> d!810574 (= res!1162651 (<= 0 testedPSize!143))))

(assert (=> d!810574 (= (apply!7539 lt!995131 testedPSize!143) lt!995175)))

(declare-fun b!2785895 () Bool)

(assert (=> b!2785895 (= e!1757995 (< testedPSize!143 (size!25053 lt!995131)))))

(declare-fun b!2785896 () Bool)

(assert (=> b!2785896 (= e!1757994 (head!6168 lt!995131))))

(declare-fun b!2785897 () Bool)

(assert (=> b!2785897 (= e!1757994 (apply!7539 (tail!4400 lt!995131) (- testedPSize!143 1)))))

(assert (= (and d!810574 res!1162651) b!2785895))

(assert (= (and d!810574 c!452484) b!2785896))

(assert (= (and d!810574 (not c!452484)) b!2785897))

(declare-fun m!3216319 () Bool)

(assert (=> d!810574 m!3216319))

(assert (=> b!2785895 m!3216167))

(assert (=> b!2785896 m!3216281))

(assert (=> b!2785897 m!3216275))

(assert (=> b!2785897 m!3216275))

(declare-fun m!3216321 () Bool)

(assert (=> b!2785897 m!3216321))

(assert (=> b!2785793 d!810574))

(declare-fun d!810576 () Bool)

(assert (=> d!810576 (= (head!6168 (drop!1722 lt!995131 testedPSize!143)) (apply!7539 lt!995131 testedPSize!143))))

(declare-fun lt!995178 () Unit!46454)

(declare-fun choose!16338 (List!32333 Int) Unit!46454)

(assert (=> d!810576 (= lt!995178 (choose!16338 lt!995131 testedPSize!143))))

(declare-fun e!1757998 () Bool)

(assert (=> d!810576 e!1757998))

(declare-fun res!1162654 () Bool)

(assert (=> d!810576 (=> (not res!1162654) (not e!1757998))))

(assert (=> d!810576 (= res!1162654 (>= testedPSize!143 0))))

(assert (=> d!810576 (= (lemmaDropApply!928 lt!995131 testedPSize!143) lt!995178)))

(declare-fun b!2785900 () Bool)

(assert (=> b!2785900 (= e!1757998 (< testedPSize!143 (size!25053 lt!995131)))))

(assert (= (and d!810576 res!1162654) b!2785900))

(assert (=> d!810576 m!3216185))

(assert (=> d!810576 m!3216185))

(assert (=> d!810576 m!3216189))

(assert (=> d!810576 m!3216191))

(declare-fun m!3216323 () Bool)

(assert (=> d!810576 m!3216323))

(assert (=> b!2785900 m!3216167))

(assert (=> b!2785793 d!810576))

(declare-fun d!810578 () Bool)

(assert (=> d!810578 (= (head!6168 testedSuffix!143) (h!37653 testedSuffix!143))))

(assert (=> b!2785793 d!810578))

(declare-fun bs!510903 () Bool)

(declare-fun b!2785905 () Bool)

(declare-fun d!810580 () Bool)

(assert (= bs!510903 (and b!2785905 d!810580)))

(declare-fun lambda!102217 () Int)

(declare-fun lambda!102216 () Int)

(assert (=> bs!510903 (not (= lambda!102217 lambda!102216))))

(declare-fun bs!510904 () Bool)

(declare-fun b!2785906 () Bool)

(assert (= bs!510904 (and b!2785906 d!810580)))

(declare-fun lambda!102218 () Int)

(assert (=> bs!510904 (not (= lambda!102218 lambda!102216))))

(declare-fun bs!510905 () Bool)

(assert (= bs!510905 (and b!2785906 b!2785905)))

(assert (=> bs!510905 (= lambda!102218 lambda!102217)))

(declare-fun bm!182483 () Bool)

(declare-datatypes ((List!32335 0))(
  ( (Nil!32235) (Cons!32235 (h!37655 Context!4722) (t!228477 List!32335)) )
))
(declare-fun call!182489 () List!32335)

(declare-fun toList!1854 ((InoxSet Context!4722)) List!32335)

(assert (=> bm!182483 (= call!182489 (toList!1854 z!3684))))

(declare-fun e!1758005 () Unit!46454)

(declare-fun Unit!46458 () Unit!46454)

(assert (=> b!2785905 (= e!1758005 Unit!46458)))

(declare-fun lt!995198 () List!32335)

(assert (=> b!2785905 (= lt!995198 call!182489)))

(declare-fun lt!995201 () Unit!46454)

(declare-fun lemmaNotForallThenExists!91 (List!32335 Int) Unit!46454)

(assert (=> b!2785905 (= lt!995201 (lemmaNotForallThenExists!91 lt!995198 lambda!102216))))

(declare-fun call!182488 () Bool)

(assert (=> b!2785905 call!182488))

(declare-fun lt!995200 () Unit!46454)

(assert (=> b!2785905 (= lt!995200 lt!995201)))

(declare-fun Unit!46459 () Unit!46454)

(assert (=> b!2785906 (= e!1758005 Unit!46459)))

(declare-fun lt!995197 () List!32335)

(assert (=> b!2785906 (= lt!995197 call!182489)))

(declare-fun lt!995202 () Unit!46454)

(declare-fun lemmaForallThenNotExists!91 (List!32335 Int) Unit!46454)

(assert (=> b!2785906 (= lt!995202 (lemmaForallThenNotExists!91 lt!995197 lambda!102216))))

(assert (=> b!2785906 (not call!182488)))

(declare-fun lt!995195 () Unit!46454)

(assert (=> b!2785906 (= lt!995195 lt!995202)))

(declare-fun c!452495 () Bool)

(declare-fun bm!182484 () Bool)

(declare-fun exists!987 (List!32335 Int) Bool)

(assert (=> bm!182484 (= call!182488 (exists!987 (ite c!452495 lt!995198 lt!995197) (ite c!452495 lambda!102217 lambda!102218)))))

(declare-fun lt!995199 () Bool)

(declare-datatypes ((Option!6269 0))(
  ( (None!6268) (Some!6268 (v!33843 List!32333)) )
))
(declare-fun isEmpty!18113 (Option!6269) Bool)

(declare-fun getLanguageWitness!199 ((InoxSet Context!4722)) Option!6269)

(assert (=> d!810580 (= lt!995199 (isEmpty!18113 (getLanguageWitness!199 z!3684)))))

(declare-fun forall!6653 ((InoxSet Context!4722) Int) Bool)

(assert (=> d!810580 (= lt!995199 (forall!6653 z!3684 lambda!102216))))

(declare-fun lt!995196 () Unit!46454)

(assert (=> d!810580 (= lt!995196 e!1758005)))

(assert (=> d!810580 (= c!452495 (not (forall!6653 z!3684 lambda!102216)))))

(assert (=> d!810580 (= (lostCauseZipper!462 z!3684) lt!995199)))

(assert (= (and d!810580 c!452495) b!2785905))

(assert (= (and d!810580 (not c!452495)) b!2785906))

(assert (= (or b!2785905 b!2785906) bm!182483))

(assert (= (or b!2785905 b!2785906) bm!182484))

(declare-fun m!3216325 () Bool)

(assert (=> b!2785906 m!3216325))

(declare-fun m!3216327 () Bool)

(assert (=> b!2785905 m!3216327))

(declare-fun m!3216329 () Bool)

(assert (=> bm!182483 m!3216329))

(declare-fun m!3216331 () Bool)

(assert (=> d!810580 m!3216331))

(assert (=> d!810580 m!3216331))

(declare-fun m!3216333 () Bool)

(assert (=> d!810580 m!3216333))

(declare-fun m!3216335 () Bool)

(assert (=> d!810580 m!3216335))

(assert (=> d!810580 m!3216335))

(declare-fun m!3216337 () Bool)

(assert (=> bm!182484 m!3216337))

(assert (=> b!2785795 d!810580))

(declare-fun d!810582 () Bool)

(assert (=> d!810582 (= testedSuffix!143 lt!995142)))

(declare-fun lt!995205 () Unit!46454)

(declare-fun choose!16339 (List!32333 List!32333 List!32333 List!32333 List!32333) Unit!46454)

(assert (=> d!810582 (= lt!995205 (choose!16339 testedP!183 testedSuffix!143 testedP!183 lt!995142 lt!995131))))

(assert (=> d!810582 (isPrefix!2585 testedP!183 lt!995131)))

(assert (=> d!810582 (= (lemmaSamePrefixThenSameSuffix!1163 testedP!183 testedSuffix!143 testedP!183 lt!995142 lt!995131) lt!995205)))

(declare-fun bs!510906 () Bool)

(assert (= bs!510906 d!810582))

(declare-fun m!3216339 () Bool)

(assert (=> bs!510906 m!3216339))

(assert (=> bs!510906 m!3216227))

(assert (=> b!2785795 d!810582))

(declare-fun d!810584 () Bool)

(declare-fun lt!995208 () List!32333)

(assert (=> d!810584 (= (++!7964 testedP!183 lt!995208) lt!995131)))

(declare-fun e!1758008 () List!32333)

(assert (=> d!810584 (= lt!995208 e!1758008)))

(declare-fun c!452498 () Bool)

(assert (=> d!810584 (= c!452498 ((_ is Cons!32233) testedP!183))))

(assert (=> d!810584 (>= (size!25053 lt!995131) (size!25053 testedP!183))))

(assert (=> d!810584 (= (getSuffix!1262 lt!995131 testedP!183) lt!995208)))

(declare-fun b!2785911 () Bool)

(assert (=> b!2785911 (= e!1758008 (getSuffix!1262 (tail!4400 lt!995131) (t!228475 testedP!183)))))

(declare-fun b!2785912 () Bool)

(assert (=> b!2785912 (= e!1758008 lt!995131)))

(assert (= (and d!810584 c!452498) b!2785911))

(assert (= (and d!810584 (not c!452498)) b!2785912))

(declare-fun m!3216341 () Bool)

(assert (=> d!810584 m!3216341))

(assert (=> d!810584 m!3216167))

(assert (=> d!810584 m!3216163))

(assert (=> b!2785911 m!3216275))

(assert (=> b!2785911 m!3216275))

(declare-fun m!3216343 () Bool)

(assert (=> b!2785911 m!3216343))

(assert (=> b!2785795 d!810584))

(declare-fun d!810586 () Bool)

(assert (=> d!810586 (= (array_inv!4414 (_keys!4187 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) (bvsge (size!25051 (_keys!4187 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2785804 d!810586))

(declare-fun d!810588 () Bool)

(assert (=> d!810588 (= (array_inv!4415 (_values!4168 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) (bvsge (size!25050 (_values!4168 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2785804 d!810588))

(declare-fun d!810590 () Bool)

(assert (=> d!810590 (isPrefix!2585 lt!995131 lt!995131)))

(declare-fun lt!995211 () Unit!46454)

(declare-fun choose!16340 (List!32333 List!32333) Unit!46454)

(assert (=> d!810590 (= lt!995211 (choose!16340 lt!995131 lt!995131))))

(assert (=> d!810590 (= (lemmaIsPrefixRefl!1689 lt!995131 lt!995131) lt!995211)))

(declare-fun bs!510907 () Bool)

(assert (= bs!510907 d!810590))

(assert (=> bs!510907 m!3216211))

(declare-fun m!3216345 () Bool)

(assert (=> bs!510907 m!3216345))

(assert (=> b!2785803 d!810590))

(declare-fun b!2785916 () Bool)

(declare-fun e!1758011 () Bool)

(assert (=> b!2785916 (= e!1758011 (>= (size!25053 lt!995131) (size!25053 lt!995131)))))

(declare-fun b!2785915 () Bool)

(declare-fun e!1758010 () Bool)

(assert (=> b!2785915 (= e!1758010 (isPrefix!2585 (tail!4400 lt!995131) (tail!4400 lt!995131)))))

(declare-fun b!2785913 () Bool)

(declare-fun e!1758009 () Bool)

(assert (=> b!2785913 (= e!1758009 e!1758010)))

(declare-fun res!1162658 () Bool)

(assert (=> b!2785913 (=> (not res!1162658) (not e!1758010))))

(assert (=> b!2785913 (= res!1162658 (not ((_ is Nil!32233) lt!995131)))))

(declare-fun d!810592 () Bool)

(assert (=> d!810592 e!1758011))

(declare-fun res!1162655 () Bool)

(assert (=> d!810592 (=> res!1162655 e!1758011)))

(declare-fun lt!995212 () Bool)

(assert (=> d!810592 (= res!1162655 (not lt!995212))))

(assert (=> d!810592 (= lt!995212 e!1758009)))

(declare-fun res!1162657 () Bool)

(assert (=> d!810592 (=> res!1162657 e!1758009)))

(assert (=> d!810592 (= res!1162657 ((_ is Nil!32233) lt!995131))))

(assert (=> d!810592 (= (isPrefix!2585 lt!995131 lt!995131) lt!995212)))

(declare-fun b!2785914 () Bool)

(declare-fun res!1162656 () Bool)

(assert (=> b!2785914 (=> (not res!1162656) (not e!1758010))))

(assert (=> b!2785914 (= res!1162656 (= (head!6168 lt!995131) (head!6168 lt!995131)))))

(assert (= (and d!810592 (not res!1162657)) b!2785913))

(assert (= (and b!2785913 res!1162658) b!2785914))

(assert (= (and b!2785914 res!1162656) b!2785915))

(assert (= (and d!810592 (not res!1162655)) b!2785916))

(assert (=> b!2785916 m!3216167))

(assert (=> b!2785916 m!3216167))

(assert (=> b!2785915 m!3216275))

(assert (=> b!2785915 m!3216275))

(assert (=> b!2785915 m!3216275))

(assert (=> b!2785915 m!3216275))

(declare-fun m!3216347 () Bool)

(assert (=> b!2785915 m!3216347))

(assert (=> b!2785914 m!3216281))

(assert (=> b!2785914 m!3216281))

(assert (=> b!2785803 d!810592))

(declare-fun d!810594 () Bool)

(assert (=> d!810594 (= lt!995131 testedP!183)))

(declare-fun lt!995215 () Unit!46454)

(declare-fun choose!16341 (List!32333 List!32333 List!32333) Unit!46454)

(assert (=> d!810594 (= lt!995215 (choose!16341 lt!995131 testedP!183 lt!995131))))

(assert (=> d!810594 (isPrefix!2585 lt!995131 lt!995131)))

(assert (=> d!810594 (= (lemmaIsPrefixSameLengthThenSameList!469 lt!995131 testedP!183 lt!995131) lt!995215)))

(declare-fun bs!510908 () Bool)

(assert (= bs!510908 d!810594))

(declare-fun m!3216349 () Bool)

(assert (=> bs!510908 m!3216349))

(assert (=> bs!510908 m!3216211))

(assert (=> b!2785803 d!810594))

(declare-fun b!2785920 () Bool)

(declare-fun e!1758014 () Bool)

(assert (=> b!2785920 (= e!1758014 (>= (size!25053 lt!995131) (size!25053 testedP!183)))))

(declare-fun b!2785919 () Bool)

(declare-fun e!1758013 () Bool)

(assert (=> b!2785919 (= e!1758013 (isPrefix!2585 (tail!4400 testedP!183) (tail!4400 lt!995131)))))

(declare-fun b!2785917 () Bool)

(declare-fun e!1758012 () Bool)

(assert (=> b!2785917 (= e!1758012 e!1758013)))

(declare-fun res!1162662 () Bool)

(assert (=> b!2785917 (=> (not res!1162662) (not e!1758013))))

(assert (=> b!2785917 (= res!1162662 (not ((_ is Nil!32233) lt!995131)))))

(declare-fun d!810596 () Bool)

(assert (=> d!810596 e!1758014))

(declare-fun res!1162659 () Bool)

(assert (=> d!810596 (=> res!1162659 e!1758014)))

(declare-fun lt!995216 () Bool)

(assert (=> d!810596 (= res!1162659 (not lt!995216))))

(assert (=> d!810596 (= lt!995216 e!1758012)))

(declare-fun res!1162661 () Bool)

(assert (=> d!810596 (=> res!1162661 e!1758012)))

(assert (=> d!810596 (= res!1162661 ((_ is Nil!32233) testedP!183))))

(assert (=> d!810596 (= (isPrefix!2585 testedP!183 lt!995131) lt!995216)))

(declare-fun b!2785918 () Bool)

(declare-fun res!1162660 () Bool)

(assert (=> b!2785918 (=> (not res!1162660) (not e!1758013))))

(assert (=> b!2785918 (= res!1162660 (= (head!6168 testedP!183) (head!6168 lt!995131)))))

(assert (= (and d!810596 (not res!1162661)) b!2785917))

(assert (= (and b!2785917 res!1162662) b!2785918))

(assert (= (and b!2785918 res!1162660) b!2785919))

(assert (= (and d!810596 (not res!1162659)) b!2785920))

(assert (=> b!2785920 m!3216167))

(assert (=> b!2785920 m!3216163))

(declare-fun m!3216351 () Bool)

(assert (=> b!2785919 m!3216351))

(assert (=> b!2785919 m!3216275))

(assert (=> b!2785919 m!3216351))

(assert (=> b!2785919 m!3216275))

(declare-fun m!3216353 () Bool)

(assert (=> b!2785919 m!3216353))

(declare-fun m!3216355 () Bool)

(assert (=> b!2785918 m!3216355))

(assert (=> b!2785918 m!3216281))

(assert (=> b!2785791 d!810596))

(declare-fun b!2785924 () Bool)

(declare-fun e!1758017 () Bool)

(assert (=> b!2785924 (= e!1758017 (>= (size!25053 lt!995140) (size!25053 testedP!183)))))

(declare-fun b!2785923 () Bool)

(declare-fun e!1758016 () Bool)

(assert (=> b!2785923 (= e!1758016 (isPrefix!2585 (tail!4400 testedP!183) (tail!4400 lt!995140)))))

(declare-fun b!2785921 () Bool)

(declare-fun e!1758015 () Bool)

(assert (=> b!2785921 (= e!1758015 e!1758016)))

(declare-fun res!1162666 () Bool)

(assert (=> b!2785921 (=> (not res!1162666) (not e!1758016))))

(assert (=> b!2785921 (= res!1162666 (not ((_ is Nil!32233) lt!995140)))))

(declare-fun d!810598 () Bool)

(assert (=> d!810598 e!1758017))

(declare-fun res!1162663 () Bool)

(assert (=> d!810598 (=> res!1162663 e!1758017)))

(declare-fun lt!995217 () Bool)

(assert (=> d!810598 (= res!1162663 (not lt!995217))))

(assert (=> d!810598 (= lt!995217 e!1758015)))

(declare-fun res!1162665 () Bool)

(assert (=> d!810598 (=> res!1162665 e!1758015)))

(assert (=> d!810598 (= res!1162665 ((_ is Nil!32233) testedP!183))))

(assert (=> d!810598 (= (isPrefix!2585 testedP!183 lt!995140) lt!995217)))

(declare-fun b!2785922 () Bool)

(declare-fun res!1162664 () Bool)

(assert (=> b!2785922 (=> (not res!1162664) (not e!1758016))))

(assert (=> b!2785922 (= res!1162664 (= (head!6168 testedP!183) (head!6168 lt!995140)))))

(assert (= (and d!810598 (not res!1162665)) b!2785921))

(assert (= (and b!2785921 res!1162666) b!2785922))

(assert (= (and b!2785922 res!1162664) b!2785923))

(assert (= (and d!810598 (not res!1162663)) b!2785924))

(declare-fun m!3216357 () Bool)

(assert (=> b!2785924 m!3216357))

(assert (=> b!2785924 m!3216163))

(assert (=> b!2785923 m!3216351))

(declare-fun m!3216359 () Bool)

(assert (=> b!2785923 m!3216359))

(assert (=> b!2785923 m!3216351))

(assert (=> b!2785923 m!3216359))

(declare-fun m!3216361 () Bool)

(assert (=> b!2785923 m!3216361))

(assert (=> b!2785922 m!3216355))

(declare-fun m!3216363 () Bool)

(assert (=> b!2785922 m!3216363))

(assert (=> b!2785791 d!810598))

(declare-fun d!810600 () Bool)

(assert (=> d!810600 (isPrefix!2585 testedP!183 (++!7964 testedP!183 testedSuffix!143))))

(declare-fun lt!995220 () Unit!46454)

(declare-fun choose!16342 (List!32333 List!32333) Unit!46454)

(assert (=> d!810600 (= lt!995220 (choose!16342 testedP!183 testedSuffix!143))))

(assert (=> d!810600 (= (lemmaConcatTwoListThenFirstIsPrefix!1695 testedP!183 testedSuffix!143) lt!995220)))

(declare-fun bs!510909 () Bool)

(assert (= bs!510909 d!810600))

(assert (=> bs!510909 m!3216205))

(assert (=> bs!510909 m!3216205))

(declare-fun m!3216365 () Bool)

(assert (=> bs!510909 m!3216365))

(declare-fun m!3216367 () Bool)

(assert (=> bs!510909 m!3216367))

(assert (=> b!2785791 d!810600))

(declare-fun d!810602 () Bool)

(declare-fun res!1162669 () Bool)

(declare-fun e!1758020 () Bool)

(assert (=> d!810602 (=> (not res!1162669) (not e!1758020))))

(assert (=> d!810602 (= res!1162669 ((_ is HashMap!3793) (cache!3936 cacheUp!890)))))

(assert (=> d!810602 (= (inv!43792 cacheUp!890) e!1758020)))

(declare-fun b!2785927 () Bool)

(assert (=> b!2785927 (= e!1758020 (validCacheMapUp!378 (cache!3936 cacheUp!890)))))

(assert (= (and d!810602 res!1162669) b!2785927))

(assert (=> b!2785927 m!3216257))

(assert (=> start!269168 d!810602))

(declare-fun d!810604 () Bool)

(declare-fun isBalanced!3054 (Conc!10014) Bool)

(assert (=> d!810604 (= (inv!43790 totalInput!758) (isBalanced!3054 (c!452459 totalInput!758)))))

(declare-fun bs!510910 () Bool)

(assert (= bs!510910 d!810604))

(declare-fun m!3216369 () Bool)

(assert (=> bs!510910 m!3216369))

(assert (=> start!269168 d!810604))

(declare-fun d!810606 () Bool)

(declare-fun res!1162672 () Bool)

(declare-fun e!1758023 () Bool)

(assert (=> d!810606 (=> (not res!1162672) (not e!1758023))))

(assert (=> d!810606 (= res!1162672 ((_ is HashMap!3794) (cache!3937 cacheDown!1009)))))

(assert (=> d!810606 (= (inv!43791 cacheDown!1009) e!1758023)))

(declare-fun b!2785930 () Bool)

(assert (=> b!2785930 (= e!1758023 (validCacheMapDown!409 (cache!3937 cacheDown!1009)))))

(assert (= (and d!810606 res!1162672) b!2785930))

(assert (=> b!2785930 m!3216255))

(assert (=> start!269168 d!810606))

(declare-fun d!810608 () Bool)

(declare-fun list!12138 (Conc!10014) List!32333)

(assert (=> d!810608 (= (list!12137 totalInput!758) (list!12138 (c!452459 totalInput!758)))))

(declare-fun bs!510911 () Bool)

(assert (= bs!510911 d!810608))

(declare-fun m!3216371 () Bool)

(assert (=> bs!510911 m!3216371))

(assert (=> start!269168 d!810608))

(declare-fun b!2785932 () Bool)

(declare-fun e!1758025 () List!32333)

(assert (=> b!2785932 (= e!1758025 (Cons!32233 (h!37653 testedP!183) (++!7964 (t!228475 testedP!183) testedSuffix!143)))))

(declare-fun b!2785934 () Bool)

(declare-fun lt!995221 () List!32333)

(declare-fun e!1758024 () Bool)

(assert (=> b!2785934 (= e!1758024 (or (not (= testedSuffix!143 Nil!32233)) (= lt!995221 testedP!183)))))

(declare-fun d!810610 () Bool)

(assert (=> d!810610 e!1758024))

(declare-fun res!1162674 () Bool)

(assert (=> d!810610 (=> (not res!1162674) (not e!1758024))))

(assert (=> d!810610 (= res!1162674 (= (content!4519 lt!995221) ((_ map or) (content!4519 testedP!183) (content!4519 testedSuffix!143))))))

(assert (=> d!810610 (= lt!995221 e!1758025)))

(declare-fun c!452499 () Bool)

(assert (=> d!810610 (= c!452499 ((_ is Nil!32233) testedP!183))))

(assert (=> d!810610 (= (++!7964 testedP!183 testedSuffix!143) lt!995221)))

(declare-fun b!2785933 () Bool)

(declare-fun res!1162673 () Bool)

(assert (=> b!2785933 (=> (not res!1162673) (not e!1758024))))

(assert (=> b!2785933 (= res!1162673 (= (size!25053 lt!995221) (+ (size!25053 testedP!183) (size!25053 testedSuffix!143))))))

(declare-fun b!2785931 () Bool)

(assert (=> b!2785931 (= e!1758025 testedSuffix!143)))

(assert (= (and d!810610 c!452499) b!2785931))

(assert (= (and d!810610 (not c!452499)) b!2785932))

(assert (= (and d!810610 res!1162674) b!2785933))

(assert (= (and b!2785933 res!1162673) b!2785934))

(declare-fun m!3216373 () Bool)

(assert (=> b!2785932 m!3216373))

(declare-fun m!3216375 () Bool)

(assert (=> d!810610 m!3216375))

(assert (=> d!810610 m!3216287))

(declare-fun m!3216377 () Bool)

(assert (=> d!810610 m!3216377))

(declare-fun m!3216379 () Bool)

(assert (=> b!2785933 m!3216379))

(assert (=> b!2785933 m!3216163))

(declare-fun m!3216381 () Bool)

(assert (=> b!2785933 m!3216381))

(assert (=> start!269168 d!810610))

(declare-fun b!2785936 () Bool)

(declare-fun e!1758027 () List!32333)

(assert (=> b!2785936 (= e!1758027 (Cons!32233 (h!37653 lt!995138) (++!7964 (t!228475 lt!995138) lt!995132)))))

(declare-fun lt!995222 () List!32333)

(declare-fun e!1758026 () Bool)

(declare-fun b!2785938 () Bool)

(assert (=> b!2785938 (= e!1758026 (or (not (= lt!995132 Nil!32233)) (= lt!995222 lt!995138)))))

(declare-fun d!810612 () Bool)

(assert (=> d!810612 e!1758026))

(declare-fun res!1162676 () Bool)

(assert (=> d!810612 (=> (not res!1162676) (not e!1758026))))

(assert (=> d!810612 (= res!1162676 (= (content!4519 lt!995222) ((_ map or) (content!4519 lt!995138) (content!4519 lt!995132))))))

(assert (=> d!810612 (= lt!995222 e!1758027)))

(declare-fun c!452500 () Bool)

(assert (=> d!810612 (= c!452500 ((_ is Nil!32233) lt!995138))))

(assert (=> d!810612 (= (++!7964 lt!995138 lt!995132) lt!995222)))

(declare-fun b!2785937 () Bool)

(declare-fun res!1162675 () Bool)

(assert (=> b!2785937 (=> (not res!1162675) (not e!1758026))))

(assert (=> b!2785937 (= res!1162675 (= (size!25053 lt!995222) (+ (size!25053 lt!995138) (size!25053 lt!995132))))))

(declare-fun b!2785935 () Bool)

(assert (=> b!2785935 (= e!1758027 lt!995132)))

(assert (= (and d!810612 c!452500) b!2785935))

(assert (= (and d!810612 (not c!452500)) b!2785936))

(assert (= (and d!810612 res!1162676) b!2785937))

(assert (= (and b!2785937 res!1162675) b!2785938))

(declare-fun m!3216383 () Bool)

(assert (=> b!2785936 m!3216383))

(declare-fun m!3216385 () Bool)

(assert (=> d!810612 m!3216385))

(declare-fun m!3216387 () Bool)

(assert (=> d!810612 m!3216387))

(declare-fun m!3216389 () Bool)

(assert (=> d!810612 m!3216389))

(declare-fun m!3216391 () Bool)

(assert (=> b!2785937 m!3216391))

(declare-fun m!3216393 () Bool)

(assert (=> b!2785937 m!3216393))

(declare-fun m!3216395 () Bool)

(assert (=> b!2785937 m!3216395))

(assert (=> b!2785810 d!810612))

(declare-fun d!810614 () Bool)

(assert (=> d!810614 (= (list!12137 (_2!19261 lt!995141)) (list!12138 (c!452459 (_2!19261 lt!995141))))))

(declare-fun bs!510912 () Bool)

(assert (= bs!510912 d!810614))

(declare-fun m!3216397 () Bool)

(assert (=> bs!510912 m!3216397))

(assert (=> b!2785810 d!810614))

(declare-fun d!810616 () Bool)

(assert (=> d!810616 (= (list!12137 (_1!19261 lt!995141)) (list!12138 (c!452459 (_1!19261 lt!995141))))))

(declare-fun bs!510913 () Bool)

(assert (= bs!510913 d!810616))

(declare-fun m!3216399 () Bool)

(assert (=> bs!510913 m!3216399))

(assert (=> b!2785810 d!810616))

(declare-fun d!810618 () Bool)

(declare-fun e!1758030 () Bool)

(assert (=> d!810618 e!1758030))

(declare-fun res!1162682 () Bool)

(assert (=> d!810618 (=> (not res!1162682) (not e!1758030))))

(declare-fun lt!995227 () tuple2!32574)

(assert (=> d!810618 (= res!1162682 (isBalanced!3054 (c!452459 (_1!19261 lt!995227))))))

(declare-datatypes ((tuple2!32576 0))(
  ( (tuple2!32577 (_1!19262 Conc!10014) (_2!19262 Conc!10014)) )
))
(declare-fun lt!995228 () tuple2!32576)

(assert (=> d!810618 (= lt!995227 (tuple2!32575 (BalanceConc!19643 (_1!19262 lt!995228)) (BalanceConc!19643 (_2!19262 lt!995228))))))

(declare-fun splitAt!141 (Conc!10014 Int) tuple2!32576)

(assert (=> d!810618 (= lt!995228 (splitAt!141 (c!452459 totalInput!758) testedPSize!143))))

(assert (=> d!810618 (isBalanced!3054 (c!452459 totalInput!758))))

(assert (=> d!810618 (= (splitAt!140 totalInput!758 testedPSize!143) lt!995227)))

(declare-fun b!2785943 () Bool)

(declare-fun res!1162681 () Bool)

(assert (=> b!2785943 (=> (not res!1162681) (not e!1758030))))

(assert (=> b!2785943 (= res!1162681 (isBalanced!3054 (c!452459 (_2!19261 lt!995227))))))

(declare-fun b!2785944 () Bool)

(declare-datatypes ((tuple2!32578 0))(
  ( (tuple2!32579 (_1!19263 List!32333) (_2!19263 List!32333)) )
))
(declare-fun splitAtIndex!57 (List!32333 Int) tuple2!32578)

(assert (=> b!2785944 (= e!1758030 (= (tuple2!32579 (list!12137 (_1!19261 lt!995227)) (list!12137 (_2!19261 lt!995227))) (splitAtIndex!57 (list!12137 totalInput!758) testedPSize!143)))))

(assert (= (and d!810618 res!1162682) b!2785943))

(assert (= (and b!2785943 res!1162681) b!2785944))

(declare-fun m!3216401 () Bool)

(assert (=> d!810618 m!3216401))

(declare-fun m!3216403 () Bool)

(assert (=> d!810618 m!3216403))

(assert (=> d!810618 m!3216369))

(declare-fun m!3216405 () Bool)

(assert (=> b!2785943 m!3216405))

(declare-fun m!3216407 () Bool)

(assert (=> b!2785944 m!3216407))

(declare-fun m!3216409 () Bool)

(assert (=> b!2785944 m!3216409))

(assert (=> b!2785944 m!3216197))

(assert (=> b!2785944 m!3216197))

(declare-fun m!3216411 () Bool)

(assert (=> b!2785944 m!3216411))

(assert (=> b!2785810 d!810618))

(declare-fun d!810620 () Bool)

(declare-fun lambda!102221 () Int)

(declare-fun forall!6654 (List!32331 Int) Bool)

(assert (=> d!810620 (= (inv!43794 setElem!23521) (forall!6654 (exprs!2861 setElem!23521) lambda!102221))))

(declare-fun bs!510914 () Bool)

(assert (= bs!510914 d!810620))

(declare-fun m!3216413 () Bool)

(assert (=> bs!510914 m!3216413))

(assert (=> setNonEmpty!23521 d!810620))

(declare-fun tp!883224 () Bool)

(declare-fun b!2785953 () Bool)

(declare-fun tp!883222 () Bool)

(declare-fun e!1758035 () Bool)

(assert (=> b!2785953 (= e!1758035 (and (inv!43793 (left!24477 (c!452459 totalInput!758))) tp!883224 (inv!43793 (right!24807 (c!452459 totalInput!758))) tp!883222))))

(declare-fun b!2785955 () Bool)

(declare-fun e!1758036 () Bool)

(declare-fun tp!883223 () Bool)

(assert (=> b!2785955 (= e!1758036 tp!883223)))

(declare-fun b!2785954 () Bool)

(declare-fun inv!43797 (IArray!20033) Bool)

(assert (=> b!2785954 (= e!1758035 (and (inv!43797 (xs!13125 (c!452459 totalInput!758))) e!1758036))))

(assert (=> b!2785809 (= tp!883213 (and (inv!43793 (c!452459 totalInput!758)) e!1758035))))

(assert (= (and b!2785809 ((_ is Node!10014) (c!452459 totalInput!758))) b!2785953))

(assert (= b!2785954 b!2785955))

(assert (= (and b!2785809 ((_ is Leaf!15254) (c!452459 totalInput!758))) b!2785954))

(declare-fun m!3216415 () Bool)

(assert (=> b!2785953 m!3216415))

(declare-fun m!3216417 () Bool)

(assert (=> b!2785953 m!3216417))

(declare-fun m!3216419 () Bool)

(assert (=> b!2785954 m!3216419))

(assert (=> b!2785809 m!3216207))

(declare-fun b!2785960 () Bool)

(declare-fun e!1758039 () Bool)

(declare-fun tp!883227 () Bool)

(assert (=> b!2785960 (= e!1758039 (and tp_is_empty!14099 tp!883227))))

(assert (=> b!2785790 (= tp!883209 e!1758039)))

(assert (= (and b!2785790 ((_ is Cons!32233) (t!228475 testedSuffix!143))) b!2785960))

(declare-fun b!2785969 () Bool)

(declare-fun e!1758046 () Bool)

(declare-fun tp!883236 () Bool)

(assert (=> b!2785969 (= e!1758046 tp!883236)))

(declare-fun b!2785970 () Bool)

(declare-fun e!1758048 () Bool)

(declare-fun tp!883237 () Bool)

(assert (=> b!2785970 (= e!1758048 tp!883237)))

(declare-fun e!1758047 () Bool)

(assert (=> b!2785817 (= tp!883212 e!1758047)))

(declare-fun tp!883239 () Bool)

(declare-fun setRes!23524 () Bool)

(declare-fun b!2785971 () Bool)

(assert (=> b!2785971 (= e!1758047 (and (inv!43794 (_1!19257 (_1!19258 (h!37652 mapDefault!17718)))) e!1758048 tp_is_empty!14099 setRes!23524 tp!883239))))

(declare-fun condSetEmpty!23524 () Bool)

(assert (=> b!2785971 (= condSetEmpty!23524 (= (_2!19258 (h!37652 mapDefault!17718)) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setIsEmpty!23524 () Bool)

(assert (=> setIsEmpty!23524 setRes!23524))

(declare-fun setElem!23524 () Context!4722)

(declare-fun tp!883238 () Bool)

(declare-fun setNonEmpty!23524 () Bool)

(assert (=> setNonEmpty!23524 (= setRes!23524 (and tp!883238 (inv!43794 setElem!23524) e!1758046))))

(declare-fun setRest!23524 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23524 (= (_2!19258 (h!37652 mapDefault!17718)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23524 true) setRest!23524))))

(assert (= b!2785971 b!2785970))

(assert (= (and b!2785971 condSetEmpty!23524) setIsEmpty!23524))

(assert (= (and b!2785971 (not condSetEmpty!23524)) setNonEmpty!23524))

(assert (= setNonEmpty!23524 b!2785969))

(assert (= (and b!2785817 ((_ is Cons!32232) mapDefault!17718)) b!2785971))

(declare-fun m!3216421 () Bool)

(assert (=> b!2785971 m!3216421))

(declare-fun m!3216423 () Bool)

(assert (=> setNonEmpty!23524 m!3216423))

(declare-fun e!1758057 () Bool)

(assert (=> b!2785814 (= tp!883200 e!1758057)))

(declare-fun b!2785980 () Bool)

(declare-fun e!1758056 () Bool)

(declare-fun tp!883252 () Bool)

(assert (=> b!2785980 (= e!1758056 tp!883252)))

(declare-fun setIsEmpty!23527 () Bool)

(declare-fun setRes!23527 () Bool)

(assert (=> setIsEmpty!23527 setRes!23527))

(declare-fun setNonEmpty!23527 () Bool)

(declare-fun setElem!23527 () Context!4722)

(declare-fun tp!883251 () Bool)

(assert (=> setNonEmpty!23527 (= setRes!23527 (and tp!883251 (inv!43794 setElem!23527) e!1758056))))

(declare-fun setRest!23527 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23527 (= (_2!19260 (h!37654 (zeroValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23527 true) setRest!23527))))

(declare-fun b!2785981 () Bool)

(declare-fun e!1758055 () Bool)

(declare-fun tp!883254 () Bool)

(assert (=> b!2785981 (= e!1758055 tp!883254)))

(declare-fun b!2785982 () Bool)

(declare-fun tp!883250 () Bool)

(declare-fun tp!883253 () Bool)

(assert (=> b!2785982 (= e!1758057 (and tp!883250 (inv!43794 (_2!19259 (_1!19260 (h!37654 (zeroValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))))) e!1758055 tp_is_empty!14099 setRes!23527 tp!883253))))

(declare-fun condSetEmpty!23527 () Bool)

(assert (=> b!2785982 (= condSetEmpty!23527 (= (_2!19260 (h!37654 (zeroValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))) ((as const (Array Context!4722 Bool)) false)))))

(assert (= b!2785982 b!2785981))

(assert (= (and b!2785982 condSetEmpty!23527) setIsEmpty!23527))

(assert (= (and b!2785982 (not condSetEmpty!23527)) setNonEmpty!23527))

(assert (= setNonEmpty!23527 b!2785980))

(assert (= (and b!2785814 ((_ is Cons!32234) (zeroValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))) b!2785982))

(declare-fun m!3216425 () Bool)

(assert (=> setNonEmpty!23527 m!3216425))

(declare-fun m!3216427 () Bool)

(assert (=> b!2785982 m!3216427))

(declare-fun e!1758060 () Bool)

(assert (=> b!2785814 (= tp!883208 e!1758060)))

(declare-fun b!2785983 () Bool)

(declare-fun e!1758059 () Bool)

(declare-fun tp!883257 () Bool)

(assert (=> b!2785983 (= e!1758059 tp!883257)))

(declare-fun setIsEmpty!23528 () Bool)

(declare-fun setRes!23528 () Bool)

(assert (=> setIsEmpty!23528 setRes!23528))

(declare-fun setNonEmpty!23528 () Bool)

(declare-fun setElem!23528 () Context!4722)

(declare-fun tp!883256 () Bool)

(assert (=> setNonEmpty!23528 (= setRes!23528 (and tp!883256 (inv!43794 setElem!23528) e!1758059))))

(declare-fun setRest!23528 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23528 (= (_2!19260 (h!37654 (minValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23528 true) setRest!23528))))

(declare-fun b!2785984 () Bool)

(declare-fun e!1758058 () Bool)

(declare-fun tp!883259 () Bool)

(assert (=> b!2785984 (= e!1758058 tp!883259)))

(declare-fun tp!883255 () Bool)

(declare-fun tp!883258 () Bool)

(declare-fun b!2785985 () Bool)

(assert (=> b!2785985 (= e!1758060 (and tp!883255 (inv!43794 (_2!19259 (_1!19260 (h!37654 (minValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))))) e!1758058 tp_is_empty!14099 setRes!23528 tp!883258))))

(declare-fun condSetEmpty!23528 () Bool)

(assert (=> b!2785985 (= condSetEmpty!23528 (= (_2!19260 (h!37654 (minValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))) ((as const (Array Context!4722 Bool)) false)))))

(assert (= b!2785985 b!2785984))

(assert (= (and b!2785985 condSetEmpty!23528) setIsEmpty!23528))

(assert (= (and b!2785985 (not condSetEmpty!23528)) setNonEmpty!23528))

(assert (= setNonEmpty!23528 b!2785983))

(assert (= (and b!2785814 ((_ is Cons!32234) (minValue!4147 (v!33841 (underlying!7979 (v!33842 (underlying!7980 (cache!3937 cacheDown!1009)))))))) b!2785985))

(declare-fun m!3216429 () Bool)

(assert (=> setNonEmpty!23528 m!3216429))

(declare-fun m!3216431 () Bool)

(assert (=> b!2785985 m!3216431))

(declare-fun b!2785986 () Bool)

(declare-fun e!1758061 () Bool)

(declare-fun tp!883260 () Bool)

(assert (=> b!2785986 (= e!1758061 (and tp_is_empty!14099 tp!883260))))

(assert (=> b!2785787 (= tp!883206 e!1758061)))

(assert (= (and b!2785787 ((_ is Cons!32233) (t!228475 testedP!183))) b!2785986))

(declare-fun e!1758076 () Bool)

(declare-fun tp!883281 () Bool)

(declare-fun mapValue!17721 () List!32332)

(declare-fun e!1758077 () Bool)

(declare-fun b!2786001 () Bool)

(declare-fun setRes!23534 () Bool)

(assert (=> b!2786001 (= e!1758077 (and (inv!43794 (_1!19257 (_1!19258 (h!37652 mapValue!17721)))) e!1758076 tp_is_empty!14099 setRes!23534 tp!883281))))

(declare-fun condSetEmpty!23533 () Bool)

(assert (=> b!2786001 (= condSetEmpty!23533 (= (_2!19258 (h!37652 mapValue!17721)) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setIsEmpty!23533 () Bool)

(declare-fun setRes!23533 () Bool)

(assert (=> setIsEmpty!23533 setRes!23533))

(declare-fun setElem!23533 () Context!4722)

(declare-fun tp!883284 () Bool)

(declare-fun e!1758078 () Bool)

(declare-fun setNonEmpty!23533 () Bool)

(assert (=> setNonEmpty!23533 (= setRes!23534 (and tp!883284 (inv!43794 setElem!23533) e!1758078))))

(declare-fun setRest!23534 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23533 (= (_2!19258 (h!37652 mapValue!17721)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23533 true) setRest!23534))))

(declare-fun b!2786002 () Bool)

(declare-fun tp!883287 () Bool)

(assert (=> b!2786002 (= e!1758076 tp!883287)))

(declare-fun setIsEmpty!23534 () Bool)

(assert (=> setIsEmpty!23534 setRes!23534))

(declare-fun e!1758075 () Bool)

(declare-fun b!2786003 () Bool)

(declare-fun tp!883285 () Bool)

(declare-fun e!1758079 () Bool)

(declare-fun mapDefault!17721 () List!32332)

(assert (=> b!2786003 (= e!1758075 (and (inv!43794 (_1!19257 (_1!19258 (h!37652 mapDefault!17721)))) e!1758079 tp_is_empty!14099 setRes!23533 tp!883285))))

(declare-fun condSetEmpty!23534 () Bool)

(assert (=> b!2786003 (= condSetEmpty!23534 (= (_2!19258 (h!37652 mapDefault!17721)) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun b!2786004 () Bool)

(declare-fun tp!883279 () Bool)

(assert (=> b!2786004 (= e!1758078 tp!883279)))

(declare-fun condMapEmpty!17721 () Bool)

(assert (=> mapNonEmpty!17718 (= condMapEmpty!17721 (= mapRest!17717 ((as const (Array (_ BitVec 32) List!32332)) mapDefault!17721)))))

(declare-fun mapRes!17721 () Bool)

(assert (=> mapNonEmpty!17718 (= tp!883203 (and e!1758075 mapRes!17721))))

(declare-fun mapNonEmpty!17721 () Bool)

(declare-fun tp!883280 () Bool)

(assert (=> mapNonEmpty!17721 (= mapRes!17721 (and tp!883280 e!1758077))))

(declare-fun mapRest!17721 () (Array (_ BitVec 32) List!32332))

(declare-fun mapKey!17721 () (_ BitVec 32))

(assert (=> mapNonEmpty!17721 (= mapRest!17717 (store mapRest!17721 mapKey!17721 mapValue!17721))))

(declare-fun setNonEmpty!23534 () Bool)

(declare-fun e!1758074 () Bool)

(declare-fun setElem!23534 () Context!4722)

(declare-fun tp!883282 () Bool)

(assert (=> setNonEmpty!23534 (= setRes!23533 (and tp!883282 (inv!43794 setElem!23534) e!1758074))))

(declare-fun setRest!23533 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23534 (= (_2!19258 (h!37652 mapDefault!17721)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23534 true) setRest!23533))))

(declare-fun mapIsEmpty!17721 () Bool)

(assert (=> mapIsEmpty!17721 mapRes!17721))

(declare-fun b!2786005 () Bool)

(declare-fun tp!883283 () Bool)

(assert (=> b!2786005 (= e!1758079 tp!883283)))

(declare-fun b!2786006 () Bool)

(declare-fun tp!883286 () Bool)

(assert (=> b!2786006 (= e!1758074 tp!883286)))

(assert (= (and mapNonEmpty!17718 condMapEmpty!17721) mapIsEmpty!17721))

(assert (= (and mapNonEmpty!17718 (not condMapEmpty!17721)) mapNonEmpty!17721))

(assert (= b!2786001 b!2786002))

(assert (= (and b!2786001 condSetEmpty!23533) setIsEmpty!23534))

(assert (= (and b!2786001 (not condSetEmpty!23533)) setNonEmpty!23533))

(assert (= setNonEmpty!23533 b!2786004))

(assert (= (and mapNonEmpty!17721 ((_ is Cons!32232) mapValue!17721)) b!2786001))

(assert (= b!2786003 b!2786005))

(assert (= (and b!2786003 condSetEmpty!23534) setIsEmpty!23533))

(assert (= (and b!2786003 (not condSetEmpty!23534)) setNonEmpty!23534))

(assert (= setNonEmpty!23534 b!2786006))

(assert (= (and mapNonEmpty!17718 ((_ is Cons!32232) mapDefault!17721)) b!2786003))

(declare-fun m!3216433 () Bool)

(assert (=> setNonEmpty!23533 m!3216433))

(declare-fun m!3216435 () Bool)

(assert (=> b!2786003 m!3216435))

(declare-fun m!3216437 () Bool)

(assert (=> b!2786001 m!3216437))

(declare-fun m!3216439 () Bool)

(assert (=> mapNonEmpty!17721 m!3216439))

(declare-fun m!3216441 () Bool)

(assert (=> setNonEmpty!23534 m!3216441))

(declare-fun b!2786007 () Bool)

(declare-fun e!1758080 () Bool)

(declare-fun tp!883288 () Bool)

(assert (=> b!2786007 (= e!1758080 tp!883288)))

(declare-fun b!2786008 () Bool)

(declare-fun e!1758082 () Bool)

(declare-fun tp!883289 () Bool)

(assert (=> b!2786008 (= e!1758082 tp!883289)))

(declare-fun e!1758081 () Bool)

(assert (=> mapNonEmpty!17718 (= tp!883215 e!1758081)))

(declare-fun tp!883291 () Bool)

(declare-fun setRes!23535 () Bool)

(declare-fun b!2786009 () Bool)

(assert (=> b!2786009 (= e!1758081 (and (inv!43794 (_1!19257 (_1!19258 (h!37652 mapValue!17717)))) e!1758082 tp_is_empty!14099 setRes!23535 tp!883291))))

(declare-fun condSetEmpty!23535 () Bool)

(assert (=> b!2786009 (= condSetEmpty!23535 (= (_2!19258 (h!37652 mapValue!17717)) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setIsEmpty!23535 () Bool)

(assert (=> setIsEmpty!23535 setRes!23535))

(declare-fun tp!883290 () Bool)

(declare-fun setElem!23535 () Context!4722)

(declare-fun setNonEmpty!23535 () Bool)

(assert (=> setNonEmpty!23535 (= setRes!23535 (and tp!883290 (inv!43794 setElem!23535) e!1758080))))

(declare-fun setRest!23535 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23535 (= (_2!19258 (h!37652 mapValue!17717)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23535 true) setRest!23535))))

(assert (= b!2786009 b!2786008))

(assert (= (and b!2786009 condSetEmpty!23535) setIsEmpty!23535))

(assert (= (and b!2786009 (not condSetEmpty!23535)) setNonEmpty!23535))

(assert (= setNonEmpty!23535 b!2786007))

(assert (= (and mapNonEmpty!17718 ((_ is Cons!32232) mapValue!17717)) b!2786009))

(declare-fun m!3216443 () Bool)

(assert (=> b!2786009 m!3216443))

(declare-fun m!3216445 () Bool)

(assert (=> setNonEmpty!23535 m!3216445))

(declare-fun setIsEmpty!23540 () Bool)

(declare-fun setRes!23541 () Bool)

(assert (=> setIsEmpty!23540 setRes!23541))

(declare-fun b!2786024 () Bool)

(declare-fun e!1758097 () Bool)

(declare-fun tp!883323 () Bool)

(assert (=> b!2786024 (= e!1758097 tp!883323)))

(declare-fun setNonEmpty!23540 () Bool)

(declare-fun tp!883320 () Bool)

(declare-fun e!1758095 () Bool)

(declare-fun setElem!23541 () Context!4722)

(assert (=> setNonEmpty!23540 (= setRes!23541 (and tp!883320 (inv!43794 setElem!23541) e!1758095))))

(declare-fun mapValue!17724 () List!32334)

(declare-fun setRest!23540 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23540 (= (_2!19260 (h!37654 mapValue!17724)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23541 true) setRest!23540))))

(declare-fun mapIsEmpty!17724 () Bool)

(declare-fun mapRes!17724 () Bool)

(assert (=> mapIsEmpty!17724 mapRes!17724))

(declare-fun tp!883319 () Bool)

(declare-fun e!1758099 () Bool)

(declare-fun setRes!23540 () Bool)

(declare-fun mapDefault!17724 () List!32334)

(declare-fun b!2786025 () Bool)

(declare-fun tp!883314 () Bool)

(assert (=> b!2786025 (= e!1758099 (and tp!883319 (inv!43794 (_2!19259 (_1!19260 (h!37654 mapDefault!17724)))) e!1758097 tp_is_empty!14099 setRes!23540 tp!883314))))

(declare-fun condSetEmpty!23540 () Bool)

(assert (=> b!2786025 (= condSetEmpty!23540 (= (_2!19260 (h!37654 mapDefault!17724)) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setIsEmpty!23541 () Bool)

(assert (=> setIsEmpty!23541 setRes!23540))

(declare-fun mapNonEmpty!17724 () Bool)

(declare-fun tp!883316 () Bool)

(declare-fun e!1758098 () Bool)

(assert (=> mapNonEmpty!17724 (= mapRes!17724 (and tp!883316 e!1758098))))

(declare-fun mapRest!17724 () (Array (_ BitVec 32) List!32334))

(declare-fun mapKey!17724 () (_ BitVec 32))

(assert (=> mapNonEmpty!17724 (= mapRest!17718 (store mapRest!17724 mapKey!17724 mapValue!17724))))

(declare-fun b!2786026 () Bool)

(declare-fun e!1758100 () Bool)

(declare-fun tp!883324 () Bool)

(assert (=> b!2786026 (= e!1758100 tp!883324)))

(declare-fun condMapEmpty!17724 () Bool)

(assert (=> mapNonEmpty!17717 (= condMapEmpty!17724 (= mapRest!17718 ((as const (Array (_ BitVec 32) List!32334)) mapDefault!17724)))))

(assert (=> mapNonEmpty!17717 (= tp!883204 (and e!1758099 mapRes!17724))))

(declare-fun b!2786027 () Bool)

(declare-fun e!1758096 () Bool)

(declare-fun tp!883318 () Bool)

(assert (=> b!2786027 (= e!1758096 tp!883318)))

(declare-fun tp!883322 () Bool)

(declare-fun tp!883317 () Bool)

(declare-fun b!2786028 () Bool)

(assert (=> b!2786028 (= e!1758098 (and tp!883317 (inv!43794 (_2!19259 (_1!19260 (h!37654 mapValue!17724)))) e!1758100 tp_is_empty!14099 setRes!23541 tp!883322))))

(declare-fun condSetEmpty!23541 () Bool)

(assert (=> b!2786028 (= condSetEmpty!23541 (= (_2!19260 (h!37654 mapValue!17724)) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun b!2786029 () Bool)

(declare-fun tp!883321 () Bool)

(assert (=> b!2786029 (= e!1758095 tp!883321)))

(declare-fun setElem!23540 () Context!4722)

(declare-fun tp!883315 () Bool)

(declare-fun setNonEmpty!23541 () Bool)

(assert (=> setNonEmpty!23541 (= setRes!23540 (and tp!883315 (inv!43794 setElem!23540) e!1758096))))

(declare-fun setRest!23541 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23541 (= (_2!19260 (h!37654 mapDefault!17724)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23540 true) setRest!23541))))

(assert (= (and mapNonEmpty!17717 condMapEmpty!17724) mapIsEmpty!17724))

(assert (= (and mapNonEmpty!17717 (not condMapEmpty!17724)) mapNonEmpty!17724))

(assert (= b!2786028 b!2786026))

(assert (= (and b!2786028 condSetEmpty!23541) setIsEmpty!23540))

(assert (= (and b!2786028 (not condSetEmpty!23541)) setNonEmpty!23540))

(assert (= setNonEmpty!23540 b!2786029))

(assert (= (and mapNonEmpty!17724 ((_ is Cons!32234) mapValue!17724)) b!2786028))

(assert (= b!2786025 b!2786024))

(assert (= (and b!2786025 condSetEmpty!23540) setIsEmpty!23541))

(assert (= (and b!2786025 (not condSetEmpty!23540)) setNonEmpty!23541))

(assert (= setNonEmpty!23541 b!2786027))

(assert (= (and mapNonEmpty!17717 ((_ is Cons!32234) mapDefault!17724)) b!2786025))

(declare-fun m!3216447 () Bool)

(assert (=> setNonEmpty!23541 m!3216447))

(declare-fun m!3216449 () Bool)

(assert (=> setNonEmpty!23540 m!3216449))

(declare-fun m!3216451 () Bool)

(assert (=> b!2786028 m!3216451))

(declare-fun m!3216453 () Bool)

(assert (=> b!2786025 m!3216453))

(declare-fun m!3216455 () Bool)

(assert (=> mapNonEmpty!17724 m!3216455))

(declare-fun e!1758103 () Bool)

(assert (=> mapNonEmpty!17717 (= tp!883210 e!1758103)))

(declare-fun b!2786030 () Bool)

(declare-fun e!1758102 () Bool)

(declare-fun tp!883327 () Bool)

(assert (=> b!2786030 (= e!1758102 tp!883327)))

(declare-fun setIsEmpty!23542 () Bool)

(declare-fun setRes!23542 () Bool)

(assert (=> setIsEmpty!23542 setRes!23542))

(declare-fun setNonEmpty!23542 () Bool)

(declare-fun setElem!23542 () Context!4722)

(declare-fun tp!883326 () Bool)

(assert (=> setNonEmpty!23542 (= setRes!23542 (and tp!883326 (inv!43794 setElem!23542) e!1758102))))

(declare-fun setRest!23542 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23542 (= (_2!19260 (h!37654 mapValue!17718)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23542 true) setRest!23542))))

(declare-fun b!2786031 () Bool)

(declare-fun e!1758101 () Bool)

(declare-fun tp!883329 () Bool)

(assert (=> b!2786031 (= e!1758101 tp!883329)))

(declare-fun tp!883325 () Bool)

(declare-fun b!2786032 () Bool)

(declare-fun tp!883328 () Bool)

(assert (=> b!2786032 (= e!1758103 (and tp!883325 (inv!43794 (_2!19259 (_1!19260 (h!37654 mapValue!17718)))) e!1758101 tp_is_empty!14099 setRes!23542 tp!883328))))

(declare-fun condSetEmpty!23542 () Bool)

(assert (=> b!2786032 (= condSetEmpty!23542 (= (_2!19260 (h!37654 mapValue!17718)) ((as const (Array Context!4722 Bool)) false)))))

(assert (= b!2786032 b!2786031))

(assert (= (and b!2786032 condSetEmpty!23542) setIsEmpty!23542))

(assert (= (and b!2786032 (not condSetEmpty!23542)) setNonEmpty!23542))

(assert (= setNonEmpty!23542 b!2786030))

(assert (= (and mapNonEmpty!17717 ((_ is Cons!32234) mapValue!17718)) b!2786032))

(declare-fun m!3216457 () Bool)

(assert (=> setNonEmpty!23542 m!3216457))

(declare-fun m!3216459 () Bool)

(assert (=> b!2786032 m!3216459))

(declare-fun b!2786037 () Bool)

(declare-fun e!1758106 () Bool)

(declare-fun tp!883334 () Bool)

(declare-fun tp!883335 () Bool)

(assert (=> b!2786037 (= e!1758106 (and tp!883334 tp!883335))))

(assert (=> b!2785806 (= tp!883197 e!1758106)))

(assert (= (and b!2785806 ((_ is Cons!32231) (exprs!2861 setElem!23521))) b!2786037))

(declare-fun e!1758109 () Bool)

(assert (=> b!2785794 (= tp!883214 e!1758109)))

(declare-fun b!2786038 () Bool)

(declare-fun e!1758108 () Bool)

(declare-fun tp!883338 () Bool)

(assert (=> b!2786038 (= e!1758108 tp!883338)))

(declare-fun setIsEmpty!23543 () Bool)

(declare-fun setRes!23543 () Bool)

(assert (=> setIsEmpty!23543 setRes!23543))

(declare-fun setNonEmpty!23543 () Bool)

(declare-fun tp!883337 () Bool)

(declare-fun setElem!23543 () Context!4722)

(assert (=> setNonEmpty!23543 (= setRes!23543 (and tp!883337 (inv!43794 setElem!23543) e!1758108))))

(declare-fun setRest!23543 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23543 (= (_2!19260 (h!37654 mapDefault!17717)) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23543 true) setRest!23543))))

(declare-fun b!2786039 () Bool)

(declare-fun e!1758107 () Bool)

(declare-fun tp!883340 () Bool)

(assert (=> b!2786039 (= e!1758107 tp!883340)))

(declare-fun tp!883339 () Bool)

(declare-fun tp!883336 () Bool)

(declare-fun b!2786040 () Bool)

(assert (=> b!2786040 (= e!1758109 (and tp!883336 (inv!43794 (_2!19259 (_1!19260 (h!37654 mapDefault!17717)))) e!1758107 tp_is_empty!14099 setRes!23543 tp!883339))))

(declare-fun condSetEmpty!23543 () Bool)

(assert (=> b!2786040 (= condSetEmpty!23543 (= (_2!19260 (h!37654 mapDefault!17717)) ((as const (Array Context!4722 Bool)) false)))))

(assert (= b!2786040 b!2786039))

(assert (= (and b!2786040 condSetEmpty!23543) setIsEmpty!23543))

(assert (= (and b!2786040 (not condSetEmpty!23543)) setNonEmpty!23543))

(assert (= setNonEmpty!23543 b!2786038))

(assert (= (and b!2785794 ((_ is Cons!32234) mapDefault!17717)) b!2786040))

(declare-fun m!3216461 () Bool)

(assert (=> setNonEmpty!23543 m!3216461))

(declare-fun m!3216463 () Bool)

(assert (=> b!2786040 m!3216463))

(declare-fun b!2786041 () Bool)

(declare-fun e!1758110 () Bool)

(declare-fun tp!883341 () Bool)

(assert (=> b!2786041 (= e!1758110 tp!883341)))

(declare-fun b!2786042 () Bool)

(declare-fun e!1758112 () Bool)

(declare-fun tp!883342 () Bool)

(assert (=> b!2786042 (= e!1758112 tp!883342)))

(declare-fun e!1758111 () Bool)

(assert (=> b!2785804 (= tp!883211 e!1758111)))

(declare-fun b!2786043 () Bool)

(declare-fun setRes!23544 () Bool)

(declare-fun tp!883344 () Bool)

(assert (=> b!2786043 (= e!1758111 (and (inv!43794 (_1!19257 (_1!19258 (h!37652 (zeroValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))))) e!1758112 tp_is_empty!14099 setRes!23544 tp!883344))))

(declare-fun condSetEmpty!23544 () Bool)

(assert (=> b!2786043 (= condSetEmpty!23544 (= (_2!19258 (h!37652 (zeroValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setIsEmpty!23544 () Bool)

(assert (=> setIsEmpty!23544 setRes!23544))

(declare-fun setElem!23544 () Context!4722)

(declare-fun setNonEmpty!23544 () Bool)

(declare-fun tp!883343 () Bool)

(assert (=> setNonEmpty!23544 (= setRes!23544 (and tp!883343 (inv!43794 setElem!23544) e!1758110))))

(declare-fun setRest!23544 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23544 (= (_2!19258 (h!37652 (zeroValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23544 true) setRest!23544))))

(assert (= b!2786043 b!2786042))

(assert (= (and b!2786043 condSetEmpty!23544) setIsEmpty!23544))

(assert (= (and b!2786043 (not condSetEmpty!23544)) setNonEmpty!23544))

(assert (= setNonEmpty!23544 b!2786041))

(assert (= (and b!2785804 ((_ is Cons!32232) (zeroValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))) b!2786043))

(declare-fun m!3216465 () Bool)

(assert (=> b!2786043 m!3216465))

(declare-fun m!3216467 () Bool)

(assert (=> setNonEmpty!23544 m!3216467))

(declare-fun b!2786044 () Bool)

(declare-fun e!1758113 () Bool)

(declare-fun tp!883345 () Bool)

(assert (=> b!2786044 (= e!1758113 tp!883345)))

(declare-fun b!2786045 () Bool)

(declare-fun e!1758115 () Bool)

(declare-fun tp!883346 () Bool)

(assert (=> b!2786045 (= e!1758115 tp!883346)))

(declare-fun e!1758114 () Bool)

(assert (=> b!2785804 (= tp!883202 e!1758114)))

(declare-fun b!2786046 () Bool)

(declare-fun tp!883348 () Bool)

(declare-fun setRes!23545 () Bool)

(assert (=> b!2786046 (= e!1758114 (and (inv!43794 (_1!19257 (_1!19258 (h!37652 (minValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))))) e!1758115 tp_is_empty!14099 setRes!23545 tp!883348))))

(declare-fun condSetEmpty!23545 () Bool)

(assert (=> b!2786046 (= condSetEmpty!23545 (= (_2!19258 (h!37652 (minValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))) ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setIsEmpty!23545 () Bool)

(assert (=> setIsEmpty!23545 setRes!23545))

(declare-fun setElem!23545 () Context!4722)

(declare-fun setNonEmpty!23545 () Bool)

(declare-fun tp!883347 () Bool)

(assert (=> setNonEmpty!23545 (= setRes!23545 (and tp!883347 (inv!43794 setElem!23545) e!1758113))))

(declare-fun setRest!23545 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23545 (= (_2!19258 (h!37652 (minValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23545 true) setRest!23545))))

(assert (= b!2786046 b!2786045))

(assert (= (and b!2786046 condSetEmpty!23545) setIsEmpty!23545))

(assert (= (and b!2786046 (not condSetEmpty!23545)) setNonEmpty!23545))

(assert (= setNonEmpty!23545 b!2786044))

(assert (= (and b!2785804 ((_ is Cons!32232) (minValue!4146 (v!33839 (underlying!7977 (v!33840 (underlying!7978 (cache!3936 cacheUp!890)))))))) b!2786046))

(declare-fun m!3216469 () Bool)

(assert (=> b!2786046 m!3216469))

(declare-fun m!3216471 () Bool)

(assert (=> setNonEmpty!23545 m!3216471))

(declare-fun condSetEmpty!23548 () Bool)

(assert (=> setNonEmpty!23521 (= condSetEmpty!23548 (= setRest!23521 ((as const (Array Context!4722 Bool)) false)))))

(declare-fun setRes!23548 () Bool)

(assert (=> setNonEmpty!23521 (= tp!883198 setRes!23548)))

(declare-fun setIsEmpty!23548 () Bool)

(assert (=> setIsEmpty!23548 setRes!23548))

(declare-fun tp!883353 () Bool)

(declare-fun e!1758118 () Bool)

(declare-fun setElem!23548 () Context!4722)

(declare-fun setNonEmpty!23548 () Bool)

(assert (=> setNonEmpty!23548 (= setRes!23548 (and tp!883353 (inv!43794 setElem!23548) e!1758118))))

(declare-fun setRest!23548 () (InoxSet Context!4722))

(assert (=> setNonEmpty!23548 (= setRest!23521 ((_ map or) (store ((as const (Array Context!4722 Bool)) false) setElem!23548 true) setRest!23548))))

(declare-fun b!2786051 () Bool)

(declare-fun tp!883354 () Bool)

(assert (=> b!2786051 (= e!1758118 tp!883354)))

(assert (= (and setNonEmpty!23521 condSetEmpty!23548) setIsEmpty!23548))

(assert (= (and setNonEmpty!23521 (not condSetEmpty!23548)) setNonEmpty!23548))

(assert (= setNonEmpty!23548 b!2786051))

(declare-fun m!3216473 () Bool)

(assert (=> setNonEmpty!23548 m!3216473))

(check-sat (not b!2785932) (not d!810576) (not b!2786004) (not bm!182483) (not b!2786051) (not setNonEmpty!23534) (not b!2786030) b_and!203513 (not d!810612) (not b!2785984) (not b!2786007) (not d!810620) (not b!2785854) (not b!2785924) (not mapNonEmpty!17721) (not b!2786038) (not b!2786009) (not setNonEmpty!23535) (not d!810594) (not b!2786003) (not b!2786044) b_and!203511 (not d!810614) (not b!2785922) (not b!2786029) (not b!2786025) (not b!2785944) (not b!2785969) (not b!2786005) (not d!810542) (not b!2785896) (not b!2785937) (not b!2785982) (not setNonEmpty!23545) (not b!2785885) (not d!810558) (not d!810600) (not d!810574) (not setNonEmpty!23543) (not b!2785895) (not d!810570) (not b!2785888) (not setNonEmpty!23541) (not b!2786001) (not b!2785960) (not b!2785844) b_and!203517 (not b!2785900) (not d!810604) (not d!810554) (not b!2786024) (not b!2785933) (not b!2785955) (not b!2785985) (not d!810610) (not b!2785981) (not b!2786008) (not setNonEmpty!23542) (not d!810590) (not d!810572) (not b!2785911) (not b!2785971) (not b!2785983) tp_is_empty!14099 (not d!810546) (not b!2785915) (not b!2785943) (not b!2785830) (not b!2785906) (not b!2785970) (not bm!182484) (not setNonEmpty!23548) (not b!2786032) (not b_next!79479) (not b!2786045) (not setNonEmpty!23533) (not b!2785919) (not b!2786002) (not b!2786040) (not b!2785855) (not b!2785927) (not b_next!79477) (not b_next!79481) (not setNonEmpty!23527) (not b!2785914) (not setNonEmpty!23528) (not b!2786026) (not b!2785923) (not d!810562) (not d!810618) (not setNonEmpty!23540) b_and!203515 (not b!2785843) (not b!2785930) (not b!2785842) (not b!2786039) (not b!2786037) (not b!2786006) (not b!2786027) (not d!810582) (not b_next!79483) (not b!2785809) (not d!810580) (not setNonEmpty!23544) (not b!2785905) (not b!2785953) (not b!2785832) (not b!2786041) (not b!2786046) (not b!2785877) (not b!2786042) (not b!2785916) (not b!2785897) (not b!2785918) (not d!810540) (not bm!182478) (not d!810584) (not d!810568) (not d!810616) (not b!2785823) (not setNonEmpty!23524) (not b!2785920) (not b!2786028) (not mapNonEmpty!17724) (not b!2785980) (not d!810608) (not b!2785986) (not b!2786031) (not b!2785858) (not b!2785954) (not b!2786043) (not d!810538) (not b!2785936))
(check-sat b_and!203513 b_and!203511 b_and!203517 (not b_next!79479) b_and!203515 (not b_next!79483) (not b_next!79477) (not b_next!79481))
