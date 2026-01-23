; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270408 () Bool)

(assert start!270408)

(declare-fun b!2797070 () Bool)

(declare-fun b_free!79253 () Bool)

(declare-fun b_next!79957 () Bool)

(assert (=> b!2797070 (= b_free!79253 (not b_next!79957))))

(declare-fun tp!890386 () Bool)

(declare-fun b_and!203991 () Bool)

(assert (=> b!2797070 (= tp!890386 b_and!203991)))

(declare-fun b!2797074 () Bool)

(declare-fun b_free!79255 () Bool)

(declare-fun b_next!79959 () Bool)

(assert (=> b!2797074 (= b_free!79255 (not b_next!79959))))

(declare-fun tp!890393 () Bool)

(declare-fun b_and!203993 () Bool)

(assert (=> b!2797074 (= tp!890393 b_and!203993)))

(declare-fun b!2797058 () Bool)

(declare-fun b_free!79257 () Bool)

(declare-fun b_next!79961 () Bool)

(assert (=> b!2797058 (= b_free!79257 (not b_next!79961))))

(declare-fun tp!890394 () Bool)

(declare-fun b_and!203995 () Bool)

(assert (=> b!2797058 (= tp!890394 b_and!203995)))

(declare-fun b!2797063 () Bool)

(declare-fun b_free!79259 () Bool)

(declare-fun b_next!79963 () Bool)

(assert (=> b!2797063 (= b_free!79259 (not b_next!79963))))

(declare-fun tp!890381 () Bool)

(declare-fun b_and!203997 () Bool)

(assert (=> b!2797063 (= tp!890381 b_and!203997)))

(declare-fun b!2797051 () Bool)

(declare-fun e!1766730 () Bool)

(declare-fun e!1766738 () Bool)

(assert (=> b!2797051 (= e!1766730 e!1766738)))

(declare-fun res!1165942 () Bool)

(assert (=> b!2797051 (=> res!1165942 e!1766738)))

(declare-datatypes ((C!16564 0))(
  ( (C!16565 (val!10216 Int)) )
))
(declare-datatypes ((List!32577 0))(
  ( (Nil!32477) (Cons!32477 (h!37897 C!16564) (t!228737 List!32577)) )
))
(declare-datatypes ((IArray!20135 0))(
  ( (IArray!20136 (innerList!10125 List!32577)) )
))
(declare-datatypes ((Conc!10065 0))(
  ( (Node!10065 (left!24564 Conc!10065) (right!24894 Conc!10065) (csize!20360 Int) (cheight!10276 Int)) (Leaf!15335 (xs!13177 IArray!20135) (csize!20361 Int)) (Empty!10065) )
))
(declare-datatypes ((BalanceConc!19744 0))(
  ( (BalanceConc!19745 (c!453683 Conc!10065)) )
))
(declare-fun totalInput!758 () BalanceConc!19744)

(declare-fun testedPSize!143 () Int)

(declare-fun testedSuffix!143 () List!32577)

(declare-fun apply!7579 (BalanceConc!19744 Int) C!16564)

(declare-fun head!6191 (List!32577) C!16564)

(assert (=> b!2797051 (= res!1165942 (not (= (apply!7579 totalInput!758 testedPSize!143) (head!6191 testedSuffix!143))))))

(declare-fun lt!999304 () List!32577)

(declare-fun drop!1739 (List!32577 Int) List!32577)

(declare-fun apply!7580 (List!32577 Int) C!16564)

(assert (=> b!2797051 (= (head!6191 (drop!1739 lt!999304 testedPSize!143)) (apply!7580 lt!999304 testedPSize!143))))

(declare-datatypes ((Unit!46610 0))(
  ( (Unit!46611) )
))
(declare-fun lt!999308 () Unit!46610)

(declare-fun lemmaDropApply!943 (List!32577 Int) Unit!46610)

(assert (=> b!2797051 (= lt!999308 (lemmaDropApply!943 lt!999304 testedPSize!143))))

(declare-fun lt!999310 () List!32577)

(declare-fun lt!999313 () List!32577)

(declare-fun testedP!183 () List!32577)

(assert (=> b!2797051 (not (or (not (= lt!999313 testedP!183)) (not (= lt!999310 testedSuffix!143))))))

(declare-fun lt!999305 () Unit!46610)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!373 (List!32577 List!32577 List!32577 List!32577) Unit!46610)

(assert (=> b!2797051 (= lt!999305 (lemmaConcatSameAndSameSizesThenSameLists!373 lt!999313 lt!999310 testedP!183 testedSuffix!143))))

(declare-fun b!2797052 () Bool)

(declare-fun e!1766735 () Bool)

(declare-fun tp!890390 () Bool)

(declare-fun mapRes!18190 () Bool)

(assert (=> b!2797052 (= e!1766735 (and tp!890390 mapRes!18190))))

(declare-fun condMapEmpty!18189 () Bool)

(declare-datatypes ((array!14218 0))(
  ( (array!14219 (arr!6335 (Array (_ BitVec 32) (_ BitVec 64))) (size!25327 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8203 0))(
  ( (ElementMatch!8203 (c!453684 C!16564)) (Concat!13291 (regOne!16918 Regex!8203) (regTwo!16918 Regex!8203)) (EmptyExpr!8203) (Star!8203 (reg!8532 Regex!8203)) (EmptyLang!8203) (Union!8203 (regOne!16919 Regex!8203) (regTwo!16919 Regex!8203)) )
))
(declare-datatypes ((List!32578 0))(
  ( (Nil!32478) (Cons!32478 (h!37898 Regex!8203) (t!228738 List!32578)) )
))
(declare-datatypes ((Context!4842 0))(
  ( (Context!4843 (exprs!2921 List!32578)) )
))
(declare-datatypes ((tuple3!5140 0))(
  ( (tuple3!5141 (_1!19556 Regex!8203) (_2!19556 Context!4842) (_3!3040 C!16564)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33032 0))(
  ( (tuple2!33033 (_1!19557 tuple3!5140) (_2!19557 (InoxSet Context!4842))) )
))
(declare-datatypes ((List!32579 0))(
  ( (Nil!32479) (Cons!32479 (h!37899 tuple2!33032) (t!228739 List!32579)) )
))
(declare-datatypes ((array!14220 0))(
  ( (array!14221 (arr!6336 (Array (_ BitVec 32) List!32579)) (size!25328 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7998 0))(
  ( (LongMapFixedSize!7999 (defaultEntry!4384 Int) (mask!9837 (_ BitVec 32)) (extraKeys!4248 (_ BitVec 32)) (zeroValue!4258 List!32579) (minValue!4258 List!32579) (_size!8041 (_ BitVec 32)) (_keys!4299 array!14218) (_values!4280 array!14220) (_vacant!4060 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15805 0))(
  ( (Cell!15806 (v!34079 LongMapFixedSize!7998)) )
))
(declare-datatypes ((MutLongMap!3999 0))(
  ( (LongMap!3999 (underlying!8201 Cell!15805)) (MutLongMapExt!3998 (__x!21647 Int)) )
))
(declare-datatypes ((Cell!15807 0))(
  ( (Cell!15808 (v!34080 MutLongMap!3999)) )
))
(declare-datatypes ((Hashable!3915 0))(
  ( (HashableExt!3914 (__x!21648 Int)) )
))
(declare-datatypes ((MutableMap!3905 0))(
  ( (MutableMapExt!3904 (__x!21649 Int)) (HashMap!3905 (underlying!8202 Cell!15807) (hashF!5947 Hashable!3915) (_size!8042 (_ BitVec 32)) (defaultValue!4076 Int)) )
))
(declare-datatypes ((CacheDown!2732 0))(
  ( (CacheDown!2733 (cache!4048 MutableMap!3905)) )
))
(declare-fun cacheDown!1009 () CacheDown!2732)

(declare-fun mapDefault!18190 () List!32579)

(assert (=> b!2797052 (= condMapEmpty!18189 (= (arr!6336 (_values!4280 (v!34079 (underlying!8201 (v!34080 (underlying!8202 (cache!4048 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32579)) mapDefault!18190)))))

(declare-fun b!2797053 () Bool)

(declare-fun e!1766741 () Bool)

(declare-fun tp!890378 () Bool)

(declare-fun inv!44113 (Conc!10065) Bool)

(assert (=> b!2797053 (= e!1766741 (and (inv!44113 (c!453683 totalInput!758)) tp!890378))))

(declare-fun b!2797054 () Bool)

(declare-fun e!1766732 () Bool)

(declare-fun lt!999320 () Int)

(declare-fun lt!999315 () Int)

(assert (=> b!2797054 (= e!1766732 (= lt!999320 lt!999315))))

(declare-fun isPrefix!2625 (List!32577 List!32577) Bool)

(assert (=> b!2797054 (isPrefix!2625 lt!999304 lt!999304)))

(declare-fun lt!999312 () Unit!46610)

(declare-fun lemmaIsPrefixRefl!1709 (List!32577 List!32577) Unit!46610)

(assert (=> b!2797054 (= lt!999312 (lemmaIsPrefixRefl!1709 lt!999304 lt!999304))))

(declare-fun b!2797055 () Bool)

(declare-fun e!1766728 () Bool)

(declare-fun e!1766715 () Bool)

(assert (=> b!2797055 (= e!1766728 e!1766715)))

(declare-fun res!1165945 () Bool)

(assert (=> b!2797055 (=> (not res!1165945) (not e!1766715))))

(assert (=> b!2797055 (= res!1165945 (= testedPSize!143 lt!999315))))

(declare-fun size!25329 (List!32577) Int)

(assert (=> b!2797055 (= lt!999315 (size!25329 testedP!183))))

(declare-fun b!2797056 () Bool)

(declare-fun e!1766739 () Bool)

(declare-fun e!1766723 () Bool)

(assert (=> b!2797056 (= e!1766739 e!1766723)))

(declare-fun b!2797057 () Bool)

(declare-fun e!1766731 () Bool)

(declare-fun e!1766720 () Bool)

(assert (=> b!2797057 (= e!1766731 e!1766720)))

(declare-fun e!1766740 () Bool)

(assert (=> b!2797058 (= e!1766723 (and e!1766740 tp!890394))))

(declare-fun b!2797059 () Bool)

(declare-fun e!1766725 () Bool)

(declare-fun e!1766722 () Bool)

(assert (=> b!2797059 (= e!1766725 e!1766722)))

(declare-fun b!2797060 () Bool)

(declare-fun res!1165944 () Bool)

(assert (=> b!2797060 (=> res!1165944 e!1766730)))

(declare-datatypes ((tuple2!33034 0))(
  ( (tuple2!33035 (_1!19558 BalanceConc!19744) (_2!19558 BalanceConc!19744)) )
))
(declare-fun lt!999311 () tuple2!33034)

(declare-fun size!25330 (BalanceConc!19744) Int)

(assert (=> b!2797060 (= res!1165944 (not (= (size!25330 (_1!19558 lt!999311)) testedPSize!143)))))

(declare-fun b!2797061 () Bool)

(declare-fun e!1766717 () Bool)

(declare-fun tp_is_empty!14219 () Bool)

(declare-fun tp!890395 () Bool)

(assert (=> b!2797061 (= e!1766717 (and tp_is_empty!14219 tp!890395))))

(declare-fun b!2797062 () Bool)

(declare-fun e!1766714 () Bool)

(assert (=> b!2797062 (= e!1766715 e!1766714)))

(declare-fun res!1165951 () Bool)

(assert (=> b!2797062 (=> (not res!1165951) (not e!1766714))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!999309 () Int)

(assert (=> b!2797062 (= res!1165951 (= totalInputSize!205 lt!999309))))

(assert (=> b!2797062 (= lt!999309 (size!25330 totalInput!758))))

(declare-fun e!1766724 () Bool)

(assert (=> b!2797063 (= e!1766722 (and e!1766724 tp!890381))))

(declare-fun b!2797064 () Bool)

(declare-fun e!1766727 () Bool)

(declare-fun e!1766716 () Bool)

(assert (=> b!2797064 (= e!1766727 e!1766716)))

(declare-fun res!1165950 () Bool)

(assert (=> b!2797064 (=> res!1165950 e!1766716)))

(declare-fun z!3684 () (InoxSet Context!4842))

(declare-fun lostCauseZipper!496 ((InoxSet Context!4842)) Bool)

(assert (=> b!2797064 (= res!1165950 (lostCauseZipper!496 z!3684))))

(declare-fun lt!999318 () List!32577)

(assert (=> b!2797064 (and (= testedSuffix!143 lt!999318) (= lt!999318 testedSuffix!143))))

(declare-fun lt!999306 () Unit!46610)

(declare-fun lemmaSamePrefixThenSameSuffix!1199 (List!32577 List!32577 List!32577 List!32577 List!32577) Unit!46610)

(assert (=> b!2797064 (= lt!999306 (lemmaSamePrefixThenSameSuffix!1199 testedP!183 testedSuffix!143 testedP!183 lt!999318 lt!999304))))

(declare-fun getSuffix!1301 (List!32577 List!32577) List!32577)

(assert (=> b!2797064 (= lt!999318 (getSuffix!1301 lt!999304 testedP!183))))

(declare-fun b!2797065 () Bool)

(declare-fun res!1165946 () Bool)

(assert (=> b!2797065 (=> (not res!1165946) (not e!1766714))))

(declare-fun valid!3132 (CacheDown!2732) Bool)

(assert (=> b!2797065 (= res!1165946 (valid!3132 cacheDown!1009))))

(declare-fun e!1766729 () Bool)

(declare-fun tp!890383 () Bool)

(declare-fun setElem!24290 () Context!4842)

(declare-fun setRes!24290 () Bool)

(declare-fun setNonEmpty!24290 () Bool)

(declare-fun inv!44114 (Context!4842) Bool)

(assert (=> setNonEmpty!24290 (= setRes!24290 (and tp!890383 (inv!44114 setElem!24290) e!1766729))))

(declare-fun setRest!24290 () (InoxSet Context!4842))

(assert (=> setNonEmpty!24290 (= z!3684 ((_ map or) (store ((as const (Array Context!4842 Bool)) false) setElem!24290 true) setRest!24290))))

(declare-fun setIsEmpty!24290 () Bool)

(assert (=> setIsEmpty!24290 setRes!24290))

(declare-fun b!2797066 () Bool)

(declare-fun tp!890382 () Bool)

(assert (=> b!2797066 (= e!1766729 tp!890382)))

(declare-fun b!2797067 () Bool)

(declare-fun e!1766734 () Bool)

(declare-fun tp!890384 () Bool)

(assert (=> b!2797067 (= e!1766734 (and tp_is_empty!14219 tp!890384))))

(declare-fun b!2797068 () Bool)

(assert (=> b!2797068 (= e!1766714 (not e!1766727))))

(declare-fun res!1165953 () Bool)

(assert (=> b!2797068 (=> res!1165953 e!1766727)))

(assert (=> b!2797068 (= res!1165953 (not (isPrefix!2625 testedP!183 lt!999304)))))

(declare-fun lt!999314 () List!32577)

(assert (=> b!2797068 (isPrefix!2625 testedP!183 lt!999314)))

(declare-fun lt!999319 () Unit!46610)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1733 (List!32577 List!32577) Unit!46610)

(assert (=> b!2797068 (= lt!999319 (lemmaConcatTwoListThenFirstIsPrefix!1733 testedP!183 testedSuffix!143))))

(declare-fun mapIsEmpty!18189 () Bool)

(assert (=> mapIsEmpty!18189 mapRes!18190))

(declare-fun b!2797069 () Bool)

(declare-fun e!1766737 () Bool)

(declare-fun tp!890379 () Bool)

(declare-fun mapRes!18189 () Bool)

(assert (=> b!2797069 (= e!1766737 (and tp!890379 mapRes!18189))))

(declare-fun condMapEmpty!18190 () Bool)

(declare-datatypes ((Hashable!3916 0))(
  ( (HashableExt!3915 (__x!21650 Int)) )
))
(declare-datatypes ((tuple2!33036 0))(
  ( (tuple2!33037 (_1!19559 Context!4842) (_2!19559 C!16564)) )
))
(declare-datatypes ((tuple2!33038 0))(
  ( (tuple2!33039 (_1!19560 tuple2!33036) (_2!19560 (InoxSet Context!4842))) )
))
(declare-datatypes ((List!32580 0))(
  ( (Nil!32480) (Cons!32480 (h!37900 tuple2!33038) (t!228740 List!32580)) )
))
(declare-datatypes ((array!14222 0))(
  ( (array!14223 (arr!6337 (Array (_ BitVec 32) List!32580)) (size!25331 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8000 0))(
  ( (LongMapFixedSize!8001 (defaultEntry!4385 Int) (mask!9838 (_ BitVec 32)) (extraKeys!4249 (_ BitVec 32)) (zeroValue!4259 List!32580) (minValue!4259 List!32580) (_size!8043 (_ BitVec 32)) (_keys!4300 array!14218) (_values!4281 array!14222) (_vacant!4061 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15809 0))(
  ( (Cell!15810 (v!34081 LongMapFixedSize!8000)) )
))
(declare-datatypes ((MutLongMap!4000 0))(
  ( (LongMap!4000 (underlying!8203 Cell!15809)) (MutLongMapExt!3999 (__x!21651 Int)) )
))
(declare-datatypes ((Cell!15811 0))(
  ( (Cell!15812 (v!34082 MutLongMap!4000)) )
))
(declare-datatypes ((MutableMap!3906 0))(
  ( (MutableMapExt!3905 (__x!21652 Int)) (HashMap!3906 (underlying!8204 Cell!15811) (hashF!5948 Hashable!3916) (_size!8044 (_ BitVec 32)) (defaultValue!4077 Int)) )
))
(declare-datatypes ((CacheUp!2610 0))(
  ( (CacheUp!2611 (cache!4049 MutableMap!3906)) )
))
(declare-fun cacheUp!890 () CacheUp!2610)

(declare-fun mapDefault!18189 () List!32580)

(assert (=> b!2797069 (= condMapEmpty!18190 (= (arr!6337 (_values!4281 (v!34081 (underlying!8203 (v!34082 (underlying!8204 (cache!4049 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32580)) mapDefault!18189)))))

(declare-fun tp!890391 () Bool)

(declare-fun tp!890387 () Bool)

(declare-fun array_inv!4536 (array!14218) Bool)

(declare-fun array_inv!4537 (array!14222) Bool)

(assert (=> b!2797070 (= e!1766720 (and tp!890386 tp!890391 tp!890387 (array_inv!4536 (_keys!4300 (v!34081 (underlying!8203 (v!34082 (underlying!8204 (cache!4049 cacheUp!890))))))) (array_inv!4537 (_values!4281 (v!34081 (underlying!8203 (v!34082 (underlying!8204 (cache!4049 cacheUp!890))))))) e!1766737))))

(declare-fun b!2797071 () Bool)

(declare-fun e!1766719 () Bool)

(declare-fun e!1766726 () Bool)

(assert (=> b!2797071 (= e!1766719 e!1766726)))

(declare-fun b!2797072 () Bool)

(declare-fun e!1766721 () Bool)

(declare-fun lt!999316 () MutLongMap!3999)

(get-info :version)

(assert (=> b!2797072 (= e!1766724 (and e!1766721 ((_ is LongMap!3999) lt!999316)))))

(assert (=> b!2797072 (= lt!999316 (v!34080 (underlying!8202 (cache!4048 cacheDown!1009))))))

(declare-fun b!2797073 () Bool)

(assert (=> b!2797073 (= e!1766716 e!1766730)))

(declare-fun res!1165949 () Bool)

(assert (=> b!2797073 (=> res!1165949 e!1766730)))

(declare-fun ++!8012 (List!32577 List!32577) List!32577)

(assert (=> b!2797073 (= res!1165949 (not (= (++!8012 lt!999313 lt!999310) lt!999304)))))

(declare-fun list!12201 (BalanceConc!19744) List!32577)

(assert (=> b!2797073 (= lt!999310 (list!12201 (_2!19558 lt!999311)))))

(assert (=> b!2797073 (= lt!999313 (list!12201 (_1!19558 lt!999311)))))

(declare-fun splitAt!183 (BalanceConc!19744 Int) tuple2!33034)

(assert (=> b!2797073 (= lt!999311 (splitAt!183 totalInput!758 testedPSize!143))))

(declare-fun tp!890377 () Bool)

(declare-fun tp!890388 () Bool)

(declare-fun array_inv!4538 (array!14220) Bool)

(assert (=> b!2797074 (= e!1766726 (and tp!890393 tp!890388 tp!890377 (array_inv!4536 (_keys!4299 (v!34079 (underlying!8201 (v!34080 (underlying!8202 (cache!4048 cacheDown!1009))))))) (array_inv!4538 (_values!4280 (v!34079 (underlying!8201 (v!34080 (underlying!8202 (cache!4048 cacheDown!1009))))))) e!1766735))))

(declare-fun b!2797075 () Bool)

(assert (=> b!2797075 (= e!1766721 e!1766719)))

(declare-fun b!2797076 () Bool)

(declare-fun res!1165948 () Bool)

(assert (=> b!2797076 (=> (not res!1165948) (not e!1766714))))

(declare-fun valid!3133 (CacheUp!2610) Bool)

(assert (=> b!2797076 (= res!1165948 (valid!3133 cacheUp!890))))

(declare-fun b!2797077 () Bool)

(declare-fun e!1766736 () Bool)

(assert (=> b!2797077 (= e!1766736 e!1766731)))

(declare-fun b!2797078 () Bool)

(declare-fun lt!999317 () MutLongMap!4000)

(assert (=> b!2797078 (= e!1766740 (and e!1766736 ((_ is LongMap!4000) lt!999317)))))

(assert (=> b!2797078 (= lt!999317 (v!34082 (underlying!8204 (cache!4049 cacheUp!890))))))

(declare-fun mapNonEmpty!18189 () Bool)

(declare-fun tp!890385 () Bool)

(declare-fun tp!890392 () Bool)

(assert (=> mapNonEmpty!18189 (= mapRes!18190 (and tp!890385 tp!890392))))

(declare-fun mapRest!18190 () (Array (_ BitVec 32) List!32579))

(declare-fun mapKey!18189 () (_ BitVec 32))

(declare-fun mapValue!18190 () List!32579)

(assert (=> mapNonEmpty!18189 (= (arr!6336 (_values!4280 (v!34079 (underlying!8201 (v!34080 (underlying!8202 (cache!4048 cacheDown!1009))))))) (store mapRest!18190 mapKey!18189 mapValue!18190))))

(declare-fun res!1165952 () Bool)

(assert (=> start!270408 (=> (not res!1165952) (not e!1766728))))

(assert (=> start!270408 (= res!1165952 (= lt!999314 lt!999304))))

(assert (=> start!270408 (= lt!999304 (list!12201 totalInput!758))))

(assert (=> start!270408 (= lt!999314 (++!8012 testedP!183 testedSuffix!143))))

(assert (=> start!270408 e!1766728))

(declare-fun inv!44115 (BalanceConc!19744) Bool)

(assert (=> start!270408 (and (inv!44115 totalInput!758) e!1766741)))

(declare-fun condSetEmpty!24290 () Bool)

(assert (=> start!270408 (= condSetEmpty!24290 (= z!3684 ((as const (Array Context!4842 Bool)) false)))))

(assert (=> start!270408 setRes!24290))

(assert (=> start!270408 true))

(assert (=> start!270408 e!1766734))

(assert (=> start!270408 e!1766717))

(declare-fun inv!44116 (CacheDown!2732) Bool)

(assert (=> start!270408 (and (inv!44116 cacheDown!1009) e!1766725)))

(declare-fun inv!44117 (CacheUp!2610) Bool)

(assert (=> start!270408 (and (inv!44117 cacheUp!890) e!1766739)))

(declare-fun mapNonEmpty!18190 () Bool)

(declare-fun tp!890380 () Bool)

(declare-fun tp!890389 () Bool)

(assert (=> mapNonEmpty!18190 (= mapRes!18189 (and tp!890380 tp!890389))))

(declare-fun mapValue!18189 () List!32580)

(declare-fun mapKey!18190 () (_ BitVec 32))

(declare-fun mapRest!18189 () (Array (_ BitVec 32) List!32580))

(assert (=> mapNonEmpty!18190 (= (arr!6337 (_values!4281 (v!34081 (underlying!8203 (v!34082 (underlying!8204 (cache!4049 cacheUp!890))))))) (store mapRest!18189 mapKey!18190 mapValue!18189))))

(declare-fun b!2797079 () Bool)

(assert (=> b!2797079 (= e!1766738 e!1766732)))

(declare-fun res!1165947 () Bool)

(assert (=> b!2797079 (=> res!1165947 e!1766732)))

(assert (=> b!2797079 (= res!1165947 (not (= lt!999315 lt!999309)))))

(assert (=> b!2797079 (<= lt!999315 lt!999320)))

(assert (=> b!2797079 (= lt!999320 (size!25329 lt!999304))))

(declare-fun lt!999307 () Unit!46610)

(declare-fun lemmaIsPrefixThenSmallerEqSize!285 (List!32577 List!32577) Unit!46610)

(assert (=> b!2797079 (= lt!999307 (lemmaIsPrefixThenSmallerEqSize!285 testedP!183 lt!999304))))

(declare-fun b!2797080 () Bool)

(declare-fun res!1165943 () Bool)

(assert (=> b!2797080 (=> res!1165943 e!1766716)))

(assert (=> b!2797080 (= res!1165943 (= testedPSize!143 totalInputSize!205))))

(declare-fun mapIsEmpty!18190 () Bool)

(assert (=> mapIsEmpty!18190 mapRes!18189))

(assert (= (and start!270408 res!1165952) b!2797055))

(assert (= (and b!2797055 res!1165945) b!2797062))

(assert (= (and b!2797062 res!1165951) b!2797076))

(assert (= (and b!2797076 res!1165948) b!2797065))

(assert (= (and b!2797065 res!1165946) b!2797068))

(assert (= (and b!2797068 (not res!1165953)) b!2797064))

(assert (= (and b!2797064 (not res!1165950)) b!2797080))

(assert (= (and b!2797080 (not res!1165943)) b!2797073))

(assert (= (and b!2797073 (not res!1165949)) b!2797060))

(assert (= (and b!2797060 (not res!1165944)) b!2797051))

(assert (= (and b!2797051 (not res!1165942)) b!2797079))

(assert (= (and b!2797079 (not res!1165947)) b!2797054))

(assert (= start!270408 b!2797053))

(assert (= (and start!270408 condSetEmpty!24290) setIsEmpty!24290))

(assert (= (and start!270408 (not condSetEmpty!24290)) setNonEmpty!24290))

(assert (= setNonEmpty!24290 b!2797066))

(assert (= (and start!270408 ((_ is Cons!32477) testedP!183)) b!2797067))

(assert (= (and start!270408 ((_ is Cons!32477) testedSuffix!143)) b!2797061))

(assert (= (and b!2797052 condMapEmpty!18189) mapIsEmpty!18189))

(assert (= (and b!2797052 (not condMapEmpty!18189)) mapNonEmpty!18189))

(assert (= b!2797074 b!2797052))

(assert (= b!2797071 b!2797074))

(assert (= b!2797075 b!2797071))

(assert (= (and b!2797072 ((_ is LongMap!3999) (v!34080 (underlying!8202 (cache!4048 cacheDown!1009))))) b!2797075))

(assert (= b!2797063 b!2797072))

(assert (= (and b!2797059 ((_ is HashMap!3905) (cache!4048 cacheDown!1009))) b!2797063))

(assert (= start!270408 b!2797059))

(assert (= (and b!2797069 condMapEmpty!18190) mapIsEmpty!18190))

(assert (= (and b!2797069 (not condMapEmpty!18190)) mapNonEmpty!18190))

(assert (= b!2797070 b!2797069))

(assert (= b!2797057 b!2797070))

(assert (= b!2797077 b!2797057))

(assert (= (and b!2797078 ((_ is LongMap!4000) (v!34082 (underlying!8204 (cache!4049 cacheUp!890))))) b!2797077))

(assert (= b!2797058 b!2797078))

(assert (= (and b!2797056 ((_ is HashMap!3906) (cache!4049 cacheUp!890))) b!2797058))

(assert (= start!270408 b!2797056))

(declare-fun m!3226591 () Bool)

(assert (=> mapNonEmpty!18189 m!3226591))

(declare-fun m!3226593 () Bool)

(assert (=> b!2797076 m!3226593))

(declare-fun m!3226595 () Bool)

(assert (=> setNonEmpty!24290 m!3226595))

(declare-fun m!3226597 () Bool)

(assert (=> b!2797074 m!3226597))

(declare-fun m!3226599 () Bool)

(assert (=> b!2797074 m!3226599))

(declare-fun m!3226601 () Bool)

(assert (=> b!2797065 m!3226601))

(declare-fun m!3226603 () Bool)

(assert (=> b!2797053 m!3226603))

(declare-fun m!3226605 () Bool)

(assert (=> mapNonEmpty!18190 m!3226605))

(declare-fun m!3226607 () Bool)

(assert (=> b!2797070 m!3226607))

(declare-fun m!3226609 () Bool)

(assert (=> b!2797070 m!3226609))

(declare-fun m!3226611 () Bool)

(assert (=> b!2797062 m!3226611))

(declare-fun m!3226613 () Bool)

(assert (=> b!2797054 m!3226613))

(declare-fun m!3226615 () Bool)

(assert (=> b!2797054 m!3226615))

(declare-fun m!3226617 () Bool)

(assert (=> b!2797051 m!3226617))

(declare-fun m!3226619 () Bool)

(assert (=> b!2797051 m!3226619))

(declare-fun m!3226621 () Bool)

(assert (=> b!2797051 m!3226621))

(declare-fun m!3226623 () Bool)

(assert (=> b!2797051 m!3226623))

(declare-fun m!3226625 () Bool)

(assert (=> b!2797051 m!3226625))

(declare-fun m!3226627 () Bool)

(assert (=> b!2797051 m!3226627))

(assert (=> b!2797051 m!3226627))

(declare-fun m!3226629 () Bool)

(assert (=> b!2797051 m!3226629))

(declare-fun m!3226631 () Bool)

(assert (=> b!2797064 m!3226631))

(declare-fun m!3226633 () Bool)

(assert (=> b!2797064 m!3226633))

(declare-fun m!3226635 () Bool)

(assert (=> b!2797064 m!3226635))

(declare-fun m!3226637 () Bool)

(assert (=> start!270408 m!3226637))

(declare-fun m!3226639 () Bool)

(assert (=> start!270408 m!3226639))

(declare-fun m!3226641 () Bool)

(assert (=> start!270408 m!3226641))

(declare-fun m!3226643 () Bool)

(assert (=> start!270408 m!3226643))

(declare-fun m!3226645 () Bool)

(assert (=> start!270408 m!3226645))

(declare-fun m!3226647 () Bool)

(assert (=> b!2797060 m!3226647))

(declare-fun m!3226649 () Bool)

(assert (=> b!2797079 m!3226649))

(declare-fun m!3226651 () Bool)

(assert (=> b!2797079 m!3226651))

(declare-fun m!3226653 () Bool)

(assert (=> b!2797055 m!3226653))

(declare-fun m!3226655 () Bool)

(assert (=> b!2797068 m!3226655))

(declare-fun m!3226657 () Bool)

(assert (=> b!2797068 m!3226657))

(declare-fun m!3226659 () Bool)

(assert (=> b!2797068 m!3226659))

(declare-fun m!3226661 () Bool)

(assert (=> b!2797073 m!3226661))

(declare-fun m!3226663 () Bool)

(assert (=> b!2797073 m!3226663))

(declare-fun m!3226665 () Bool)

(assert (=> b!2797073 m!3226665))

(declare-fun m!3226667 () Bool)

(assert (=> b!2797073 m!3226667))

(check-sat (not b_next!79961) (not b!2797055) (not b!2797060) (not b!2797052) (not b!2797076) (not b_next!79963) (not b_next!79957) (not b!2797074) (not b!2797079) (not b!2797062) (not b_next!79959) b_and!203997 (not b!2797054) (not b!2797073) (not b!2797061) (not b!2797067) tp_is_empty!14219 b_and!203991 (not b!2797064) (not b!2797066) (not b!2797051) (not start!270408) (not b!2797068) b_and!203993 (not mapNonEmpty!18190) (not b!2797053) (not mapNonEmpty!18189) (not b!2797065) (not setNonEmpty!24290) (not b!2797070) (not b!2797069) b_and!203995)
(check-sat (not b_next!79961) b_and!203991 b_and!203993 (not b_next!79963) (not b_next!79957) (not b_next!79959) b_and!203997 b_and!203995)
