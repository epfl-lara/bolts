; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270002 () Bool)

(assert start!270002)

(declare-fun b!2793404 () Bool)

(declare-fun b_free!79077 () Bool)

(declare-fun b_next!79781 () Bool)

(assert (=> b!2793404 (= b_free!79077 (not b_next!79781))))

(declare-fun tp!887827 () Bool)

(declare-fun b_and!203815 () Bool)

(assert (=> b!2793404 (= tp!887827 b_and!203815)))

(declare-fun b!2793395 () Bool)

(declare-fun b_free!79079 () Bool)

(declare-fun b_next!79783 () Bool)

(assert (=> b!2793395 (= b_free!79079 (not b_next!79783))))

(declare-fun tp!887826 () Bool)

(declare-fun b_and!203817 () Bool)

(assert (=> b!2793395 (= tp!887826 b_and!203817)))

(declare-fun b!2793402 () Bool)

(declare-fun b_free!79081 () Bool)

(declare-fun b_next!79785 () Bool)

(assert (=> b!2793402 (= b_free!79081 (not b_next!79785))))

(declare-fun tp!887818 () Bool)

(declare-fun b_and!203819 () Bool)

(assert (=> b!2793402 (= tp!887818 b_and!203819)))

(declare-fun b!2793400 () Bool)

(declare-fun b_free!79083 () Bool)

(declare-fun b_next!79787 () Bool)

(assert (=> b!2793400 (= b_free!79083 (not b_next!79787))))

(declare-fun tp!887822 () Bool)

(declare-fun b_and!203821 () Bool)

(assert (=> b!2793400 (= tp!887822 b_and!203821)))

(declare-fun b!2793389 () Bool)

(declare-fun e!1763785 () Bool)

(declare-fun e!1763797 () Bool)

(assert (=> b!2793389 (= e!1763785 e!1763797)))

(declare-fun b!2793390 () Bool)

(declare-fun e!1763783 () Bool)

(declare-fun e!1763786 () Bool)

(assert (=> b!2793390 (= e!1763783 e!1763786)))

(declare-fun mapIsEmpty!18011 () Bool)

(declare-fun mapRes!18012 () Bool)

(assert (=> mapIsEmpty!18011 mapRes!18012))

(declare-fun b!2793391 () Bool)

(declare-fun e!1763779 () Bool)

(declare-fun tp_is_empty!14175 () Bool)

(declare-fun tp!887828 () Bool)

(assert (=> b!2793391 (= e!1763779 (and tp_is_empty!14175 tp!887828))))

(declare-fun b!2793392 () Bool)

(declare-fun e!1763791 () Bool)

(declare-fun e!1763775 () Bool)

(assert (=> b!2793392 (= e!1763791 e!1763775)))

(declare-fun b!2793393 () Bool)

(declare-fun res!1164952 () Bool)

(declare-fun e!1763790 () Bool)

(assert (=> b!2793393 (=> (not res!1164952) (not e!1763790))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((C!16520 0))(
  ( (C!16521 (val!10194 Int)) )
))
(declare-datatypes ((List!32487 0))(
  ( (Nil!32387) (Cons!32387 (h!37807 C!16520) (t!228639 List!32487)) )
))
(declare-datatypes ((IArray!20097 0))(
  ( (IArray!20098 (innerList!10106 List!32487)) )
))
(declare-datatypes ((Conc!10046 0))(
  ( (Node!10046 (left!24532 Conc!10046) (right!24862 Conc!10046) (csize!20322 Int) (cheight!10257 Int)) (Leaf!15305 (xs!13158 IArray!20097) (csize!20323 Int)) (Empty!10046) )
))
(declare-datatypes ((BalanceConc!19706 0))(
  ( (BalanceConc!19707 (c!453343 Conc!10046)) )
))
(declare-fun totalInput!758 () BalanceConc!19706)

(declare-fun size!25223 (BalanceConc!19706) Int)

(assert (=> b!2793393 (= res!1164952 (= totalInputSize!205 (size!25223 totalInput!758)))))

(declare-fun b!2793394 () Bool)

(declare-fun e!1763782 () Bool)

(declare-fun e!1763781 () Bool)

(assert (=> b!2793394 (= e!1763782 e!1763781)))

(declare-fun mapNonEmpty!18011 () Bool)

(declare-fun mapRes!18011 () Bool)

(declare-fun tp!887820 () Bool)

(declare-fun tp!887816 () Bool)

(assert (=> mapNonEmpty!18011 (= mapRes!18011 (and tp!887820 tp!887816))))

(declare-datatypes ((Regex!8181 0))(
  ( (ElementMatch!8181 (c!453344 C!16520)) (Concat!13269 (regOne!16874 Regex!8181) (regTwo!16874 Regex!8181)) (EmptyExpr!8181) (Star!8181 (reg!8510 Regex!8181)) (EmptyLang!8181) (Union!8181 (regOne!16875 Regex!8181) (regTwo!16875 Regex!8181)) )
))
(declare-datatypes ((List!32488 0))(
  ( (Nil!32388) (Cons!32388 (h!37808 Regex!8181) (t!228640 List!32488)) )
))
(declare-datatypes ((Context!4798 0))(
  ( (Context!4799 (exprs!2899 List!32488)) )
))
(declare-datatypes ((tuple3!5098 0))(
  ( (tuple3!5099 (_1!19457 Regex!8181) (_2!19457 Context!4798) (_3!3019 C!16520)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32876 0))(
  ( (tuple2!32877 (_1!19458 tuple3!5098) (_2!19458 (InoxSet Context!4798))) )
))
(declare-datatypes ((List!32489 0))(
  ( (Nil!32389) (Cons!32389 (h!37809 tuple2!32876) (t!228641 List!32489)) )
))
(declare-fun mapRest!18011 () (Array (_ BitVec 32) List!32489))

(declare-fun mapKey!18011 () (_ BitVec 32))

(declare-datatypes ((array!14071 0))(
  ( (array!14072 (arr!6272 (Array (_ BitVec 32) (_ BitVec 64))) (size!25224 (_ BitVec 32))) )
))
(declare-datatypes ((array!14073 0))(
  ( (array!14074 (arr!6273 (Array (_ BitVec 32) List!32489)) (size!25225 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7916 0))(
  ( (LongMapFixedSize!7917 (defaultEntry!4343 Int) (mask!9785 (_ BitVec 32)) (extraKeys!4207 (_ BitVec 32)) (zeroValue!4217 List!32489) (minValue!4217 List!32489) (_size!7959 (_ BitVec 32)) (_keys!4258 array!14071) (_values!4239 array!14073) (_vacant!4019 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15641 0))(
  ( (Cell!15642 (v!33991 LongMapFixedSize!7916)) )
))
(declare-datatypes ((MutLongMap!3958 0))(
  ( (LongMap!3958 (underlying!8119 Cell!15641)) (MutLongMapExt!3957 (__x!21524 Int)) )
))
(declare-datatypes ((Cell!15643 0))(
  ( (Cell!15644 (v!33992 MutLongMap!3958)) )
))
(declare-datatypes ((Hashable!3874 0))(
  ( (HashableExt!3873 (__x!21525 Int)) )
))
(declare-datatypes ((MutableMap!3864 0))(
  ( (MutableMapExt!3863 (__x!21526 Int)) (HashMap!3864 (underlying!8120 Cell!15643) (hashF!5906 Hashable!3874) (_size!7960 (_ BitVec 32)) (defaultValue!4035 Int)) )
))
(declare-datatypes ((CacheDown!2690 0))(
  ( (CacheDown!2691 (cache!4007 MutableMap!3864)) )
))
(declare-fun cacheDown!1009 () CacheDown!2690)

(declare-fun mapValue!18012 () List!32489)

(assert (=> mapNonEmpty!18011 (= (arr!6273 (_values!4239 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) (store mapRest!18011 mapKey!18011 mapValue!18012))))

(declare-datatypes ((Hashable!3875 0))(
  ( (HashableExt!3874 (__x!21527 Int)) )
))
(declare-datatypes ((tuple2!32878 0))(
  ( (tuple2!32879 (_1!19459 Context!4798) (_2!19459 C!16520)) )
))
(declare-datatypes ((tuple2!32880 0))(
  ( (tuple2!32881 (_1!19460 tuple2!32878) (_2!19460 (InoxSet Context!4798))) )
))
(declare-datatypes ((List!32490 0))(
  ( (Nil!32390) (Cons!32390 (h!37810 tuple2!32880) (t!228642 List!32490)) )
))
(declare-datatypes ((array!14075 0))(
  ( (array!14076 (arr!6274 (Array (_ BitVec 32) List!32490)) (size!25226 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7918 0))(
  ( (LongMapFixedSize!7919 (defaultEntry!4344 Int) (mask!9786 (_ BitVec 32)) (extraKeys!4208 (_ BitVec 32)) (zeroValue!4218 List!32490) (minValue!4218 List!32490) (_size!7961 (_ BitVec 32)) (_keys!4259 array!14071) (_values!4240 array!14075) (_vacant!4020 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15645 0))(
  ( (Cell!15646 (v!33993 LongMapFixedSize!7918)) )
))
(declare-datatypes ((MutLongMap!3959 0))(
  ( (LongMap!3959 (underlying!8121 Cell!15645)) (MutLongMapExt!3958 (__x!21528 Int)) )
))
(declare-datatypes ((Cell!15647 0))(
  ( (Cell!15648 (v!33994 MutLongMap!3959)) )
))
(declare-datatypes ((MutableMap!3865 0))(
  ( (MutableMapExt!3864 (__x!21529 Int)) (HashMap!3865 (underlying!8122 Cell!15647) (hashF!5907 Hashable!3875) (_size!7962 (_ BitVec 32)) (defaultValue!4036 Int)) )
))
(declare-datatypes ((CacheUp!2570 0))(
  ( (CacheUp!2571 (cache!4008 MutableMap!3865)) )
))
(declare-fun cacheUp!890 () CacheUp!2570)

(declare-fun tp!887821 () Bool)

(declare-fun tp!887829 () Bool)

(declare-fun e!1763796 () Bool)

(declare-fun e!1763792 () Bool)

(declare-fun array_inv!4487 (array!14071) Bool)

(declare-fun array_inv!4488 (array!14075) Bool)

(assert (=> b!2793395 (= e!1763792 (and tp!887826 tp!887829 tp!887821 (array_inv!4487 (_keys!4259 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) (array_inv!4488 (_values!4240 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) e!1763796))))

(declare-fun b!2793396 () Bool)

(declare-fun res!1164956 () Bool)

(assert (=> b!2793396 (=> (not res!1164956) (not e!1763790))))

(declare-fun valid!3098 (CacheDown!2690) Bool)

(assert (=> b!2793396 (= res!1164956 (valid!3098 cacheDown!1009))))

(declare-fun b!2793397 () Bool)

(declare-fun tp!887817 () Bool)

(assert (=> b!2793397 (= e!1763796 (and tp!887817 mapRes!18012))))

(declare-fun condMapEmpty!18012 () Bool)

(declare-fun mapDefault!18011 () List!32490)

(assert (=> b!2793397 (= condMapEmpty!18012 (= (arr!6274 (_values!4240 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32490)) mapDefault!18011)))))

(declare-fun mapNonEmpty!18012 () Bool)

(declare-fun tp!887831 () Bool)

(declare-fun tp!887814 () Bool)

(assert (=> mapNonEmpty!18012 (= mapRes!18012 (and tp!887831 tp!887814))))

(declare-fun mapKey!18012 () (_ BitVec 32))

(declare-fun mapValue!18011 () List!32490)

(declare-fun mapRest!18012 () (Array (_ BitVec 32) List!32490))

(assert (=> mapNonEmpty!18012 (= (arr!6274 (_values!4240 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) (store mapRest!18012 mapKey!18012 mapValue!18011))))

(declare-fun b!2793398 () Bool)

(declare-fun e!1763777 () Bool)

(declare-fun tp!887824 () Bool)

(assert (=> b!2793398 (= e!1763777 (and tp_is_empty!14175 tp!887824))))

(declare-fun b!2793399 () Bool)

(declare-fun e!1763778 () Bool)

(assert (=> b!2793399 (= e!1763790 (not e!1763778))))

(declare-fun res!1164957 () Bool)

(assert (=> b!2793399 (=> res!1164957 e!1763778)))

(declare-fun testedP!183 () List!32487)

(declare-fun lt!998237 () List!32487)

(declare-fun isPrefix!2609 (List!32487 List!32487) Bool)

(assert (=> b!2793399 (= res!1164957 (not (isPrefix!2609 testedP!183 lt!998237)))))

(declare-fun lt!998239 () List!32487)

(assert (=> b!2793399 (isPrefix!2609 testedP!183 lt!998239)))

(declare-datatypes ((Unit!46564 0))(
  ( (Unit!46565) )
))
(declare-fun lt!998235 () Unit!46564)

(declare-fun testedSuffix!143 () List!32487)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1718 (List!32487 List!32487) Unit!46564)

(assert (=> b!2793399 (= lt!998235 (lemmaConcatTwoListThenFirstIsPrefix!1718 testedP!183 testedSuffix!143))))

(declare-fun e!1763794 () Bool)

(assert (=> b!2793400 (= e!1763786 (and e!1763794 tp!887822))))

(declare-fun b!2793401 () Bool)

(declare-fun res!1164951 () Bool)

(assert (=> b!2793401 (=> (not res!1164951) (not e!1763790))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!25227 (List!32487) Int)

(assert (=> b!2793401 (= res!1164951 (= testedPSize!143 (size!25227 testedP!183)))))

(declare-fun tp!887819 () Bool)

(declare-fun setNonEmpty!24006 () Bool)

(declare-fun e!1763788 () Bool)

(declare-fun setElem!24006 () Context!4798)

(declare-fun setRes!24006 () Bool)

(declare-fun inv!43993 (Context!4798) Bool)

(assert (=> setNonEmpty!24006 (= setRes!24006 (and tp!887819 (inv!43993 setElem!24006) e!1763788))))

(declare-fun z!3684 () (InoxSet Context!4798))

(declare-fun setRest!24006 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24006 (= z!3684 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24006 true) setRest!24006))))

(declare-fun tp!887825 () Bool)

(declare-fun e!1763776 () Bool)

(declare-fun tp!887830 () Bool)

(declare-fun array_inv!4489 (array!14073) Bool)

(assert (=> b!2793402 (= e!1763797 (and tp!887818 tp!887830 tp!887825 (array_inv!4487 (_keys!4258 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) (array_inv!4489 (_values!4239 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) e!1763776))))

(declare-fun mapIsEmpty!18012 () Bool)

(assert (=> mapIsEmpty!18012 mapRes!18011))

(declare-fun b!2793403 () Bool)

(declare-fun e!1763784 () Bool)

(declare-fun e!1763795 () Bool)

(assert (=> b!2793403 (= e!1763784 e!1763795)))

(declare-fun res!1164955 () Bool)

(assert (=> b!2793403 (=> res!1164955 e!1763795)))

(declare-fun lt!998246 () List!32487)

(declare-fun lt!998243 () List!32487)

(declare-fun ++!7994 (List!32487 List!32487) List!32487)

(assert (=> b!2793403 (= res!1164955 (not (= (++!7994 lt!998246 lt!998243) lt!998237)))))

(declare-datatypes ((tuple2!32882 0))(
  ( (tuple2!32883 (_1!19461 BalanceConc!19706) (_2!19461 BalanceConc!19706)) )
))
(declare-fun lt!998242 () tuple2!32882)

(declare-fun list!12176 (BalanceConc!19706) List!32487)

(assert (=> b!2793403 (= lt!998243 (list!12176 (_2!19461 lt!998242)))))

(assert (=> b!2793403 (= lt!998246 (list!12176 (_1!19461 lt!998242)))))

(declare-fun splitAt!171 (BalanceConc!19706 Int) tuple2!32882)

(assert (=> b!2793403 (= lt!998242 (splitAt!171 totalInput!758 testedPSize!143))))

(declare-fun e!1763793 () Bool)

(assert (=> b!2793404 (= e!1763781 (and e!1763793 tp!887827))))

(declare-fun b!2793405 () Bool)

(declare-fun tp!887813 () Bool)

(assert (=> b!2793405 (= e!1763788 tp!887813)))

(declare-fun b!2793406 () Bool)

(declare-fun apply!7570 (BalanceConc!19706 Int) C!16520)

(declare-fun head!6184 (List!32487) C!16520)

(assert (=> b!2793406 (= e!1763795 (= (apply!7570 totalInput!758 testedPSize!143) (head!6184 testedSuffix!143)))))

(declare-fun drop!1736 (List!32487 Int) List!32487)

(declare-fun apply!7571 (List!32487 Int) C!16520)

(assert (=> b!2793406 (= (head!6184 (drop!1736 lt!998237 testedPSize!143)) (apply!7571 lt!998237 testedPSize!143))))

(declare-fun lt!998236 () Unit!46564)

(declare-fun lemmaDropApply!940 (List!32487 Int) Unit!46564)

(assert (=> b!2793406 (= lt!998236 (lemmaDropApply!940 lt!998237 testedPSize!143))))

(assert (=> b!2793406 (not (or (not (= lt!998246 testedP!183)) (not (= lt!998243 testedSuffix!143))))))

(declare-fun lt!998240 () Unit!46564)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!369 (List!32487 List!32487 List!32487 List!32487) Unit!46564)

(assert (=> b!2793406 (= lt!998240 (lemmaConcatSameAndSameSizesThenSameLists!369 lt!998246 lt!998243 testedP!183 testedSuffix!143))))

(declare-fun b!2793407 () Bool)

(declare-fun res!1164950 () Bool)

(assert (=> b!2793407 (=> (not res!1164950) (not e!1763790))))

(declare-fun valid!3099 (CacheUp!2570) Bool)

(assert (=> b!2793407 (= res!1164950 (valid!3099 cacheUp!890))))

(declare-fun b!2793408 () Bool)

(declare-fun res!1164959 () Bool)

(assert (=> b!2793408 (=> res!1164959 e!1763795)))

(assert (=> b!2793408 (= res!1164959 (not (= (size!25223 (_1!19461 lt!998242)) testedPSize!143)))))

(declare-fun b!2793409 () Bool)

(declare-fun e!1763774 () Bool)

(declare-fun tp!887823 () Bool)

(declare-fun inv!43994 (Conc!10046) Bool)

(assert (=> b!2793409 (= e!1763774 (and (inv!43994 (c!453343 totalInput!758)) tp!887823))))

(declare-fun b!2793410 () Bool)

(declare-fun tp!887815 () Bool)

(assert (=> b!2793410 (= e!1763776 (and tp!887815 mapRes!18011))))

(declare-fun condMapEmpty!18011 () Bool)

(declare-fun mapDefault!18012 () List!32489)

(assert (=> b!2793410 (= condMapEmpty!18011 (= (arr!6273 (_values!4239 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32489)) mapDefault!18012)))))

(declare-fun res!1164958 () Bool)

(assert (=> start!270002 (=> (not res!1164958) (not e!1763790))))

(assert (=> start!270002 (= res!1164958 (= lt!998239 lt!998237))))

(assert (=> start!270002 (= lt!998237 (list!12176 totalInput!758))))

(assert (=> start!270002 (= lt!998239 (++!7994 testedP!183 testedSuffix!143))))

(assert (=> start!270002 e!1763790))

(declare-fun inv!43995 (BalanceConc!19706) Bool)

(assert (=> start!270002 (and (inv!43995 totalInput!758) e!1763774)))

(declare-fun condSetEmpty!24006 () Bool)

(assert (=> start!270002 (= condSetEmpty!24006 (= z!3684 ((as const (Array Context!4798 Bool)) false)))))

(assert (=> start!270002 setRes!24006))

(assert (=> start!270002 true))

(assert (=> start!270002 e!1763777))

(assert (=> start!270002 e!1763779))

(declare-fun inv!43996 (CacheDown!2690) Bool)

(assert (=> start!270002 (and (inv!43996 cacheDown!1009) e!1763783)))

(declare-fun inv!43997 (CacheUp!2570) Bool)

(assert (=> start!270002 (and (inv!43997 cacheUp!890) e!1763782)))

(declare-fun b!2793411 () Bool)

(assert (=> b!2793411 (= e!1763778 e!1763784)))

(declare-fun res!1164954 () Bool)

(assert (=> b!2793411 (=> res!1164954 e!1763784)))

(declare-fun lostCauseZipper!486 ((InoxSet Context!4798)) Bool)

(assert (=> b!2793411 (= res!1164954 (lostCauseZipper!486 z!3684))))

(declare-fun lt!998241 () List!32487)

(assert (=> b!2793411 (and (= testedSuffix!143 lt!998241) (= lt!998241 testedSuffix!143))))

(declare-fun lt!998238 () Unit!46564)

(declare-fun lemmaSamePrefixThenSameSuffix!1187 (List!32487 List!32487 List!32487 List!32487 List!32487) Unit!46564)

(assert (=> b!2793411 (= lt!998238 (lemmaSamePrefixThenSameSuffix!1187 testedP!183 testedSuffix!143 testedP!183 lt!998241 lt!998237))))

(declare-fun getSuffix!1286 (List!32487 List!32487) List!32487)

(assert (=> b!2793411 (= lt!998241 (getSuffix!1286 lt!998237 testedP!183))))

(declare-fun b!2793412 () Bool)

(declare-fun e!1763787 () Bool)

(declare-fun lt!998244 () MutLongMap!3958)

(get-info :version)

(assert (=> b!2793412 (= e!1763794 (and e!1763787 ((_ is LongMap!3958) lt!998244)))))

(assert (=> b!2793412 (= lt!998244 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))

(declare-fun b!2793413 () Bool)

(declare-fun res!1164953 () Bool)

(assert (=> b!2793413 (=> res!1164953 e!1763784)))

(assert (=> b!2793413 (= res!1164953 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2793414 () Bool)

(assert (=> b!2793414 (= e!1763787 e!1763785)))

(declare-fun setIsEmpty!24006 () Bool)

(assert (=> setIsEmpty!24006 setRes!24006))

(declare-fun b!2793415 () Bool)

(declare-fun lt!998245 () MutLongMap!3959)

(assert (=> b!2793415 (= e!1763793 (and e!1763791 ((_ is LongMap!3959) lt!998245)))))

(assert (=> b!2793415 (= lt!998245 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))

(declare-fun b!2793416 () Bool)

(assert (=> b!2793416 (= e!1763775 e!1763792)))

(assert (= (and start!270002 res!1164958) b!2793401))

(assert (= (and b!2793401 res!1164951) b!2793393))

(assert (= (and b!2793393 res!1164952) b!2793407))

(assert (= (and b!2793407 res!1164950) b!2793396))

(assert (= (and b!2793396 res!1164956) b!2793399))

(assert (= (and b!2793399 (not res!1164957)) b!2793411))

(assert (= (and b!2793411 (not res!1164954)) b!2793413))

(assert (= (and b!2793413 (not res!1164953)) b!2793403))

(assert (= (and b!2793403 (not res!1164955)) b!2793408))

(assert (= (and b!2793408 (not res!1164959)) b!2793406))

(assert (= start!270002 b!2793409))

(assert (= (and start!270002 condSetEmpty!24006) setIsEmpty!24006))

(assert (= (and start!270002 (not condSetEmpty!24006)) setNonEmpty!24006))

(assert (= setNonEmpty!24006 b!2793405))

(assert (= (and start!270002 ((_ is Cons!32387) testedP!183)) b!2793398))

(assert (= (and start!270002 ((_ is Cons!32387) testedSuffix!143)) b!2793391))

(assert (= (and b!2793410 condMapEmpty!18011) mapIsEmpty!18012))

(assert (= (and b!2793410 (not condMapEmpty!18011)) mapNonEmpty!18011))

(assert (= b!2793402 b!2793410))

(assert (= b!2793389 b!2793402))

(assert (= b!2793414 b!2793389))

(assert (= (and b!2793412 ((_ is LongMap!3958) (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))) b!2793414))

(assert (= b!2793400 b!2793412))

(assert (= (and b!2793390 ((_ is HashMap!3864) (cache!4007 cacheDown!1009))) b!2793400))

(assert (= start!270002 b!2793390))

(assert (= (and b!2793397 condMapEmpty!18012) mapIsEmpty!18011))

(assert (= (and b!2793397 (not condMapEmpty!18012)) mapNonEmpty!18012))

(assert (= b!2793395 b!2793397))

(assert (= b!2793416 b!2793395))

(assert (= b!2793392 b!2793416))

(assert (= (and b!2793415 ((_ is LongMap!3959) (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))) b!2793392))

(assert (= b!2793404 b!2793415))

(assert (= (and b!2793394 ((_ is HashMap!3865) (cache!4008 cacheUp!890))) b!2793404))

(assert (= start!270002 b!2793394))

(declare-fun m!3223617 () Bool)

(assert (=> b!2793409 m!3223617))

(declare-fun m!3223619 () Bool)

(assert (=> b!2793411 m!3223619))

(declare-fun m!3223621 () Bool)

(assert (=> b!2793411 m!3223621))

(declare-fun m!3223623 () Bool)

(assert (=> b!2793411 m!3223623))

(declare-fun m!3223625 () Bool)

(assert (=> b!2793393 m!3223625))

(declare-fun m!3223627 () Bool)

(assert (=> start!270002 m!3223627))

(declare-fun m!3223629 () Bool)

(assert (=> start!270002 m!3223629))

(declare-fun m!3223631 () Bool)

(assert (=> start!270002 m!3223631))

(declare-fun m!3223633 () Bool)

(assert (=> start!270002 m!3223633))

(declare-fun m!3223635 () Bool)

(assert (=> start!270002 m!3223635))

(declare-fun m!3223637 () Bool)

(assert (=> b!2793402 m!3223637))

(declare-fun m!3223639 () Bool)

(assert (=> b!2793402 m!3223639))

(declare-fun m!3223641 () Bool)

(assert (=> mapNonEmpty!18011 m!3223641))

(declare-fun m!3223643 () Bool)

(assert (=> b!2793407 m!3223643))

(declare-fun m!3223645 () Bool)

(assert (=> b!2793403 m!3223645))

(declare-fun m!3223647 () Bool)

(assert (=> b!2793403 m!3223647))

(declare-fun m!3223649 () Bool)

(assert (=> b!2793403 m!3223649))

(declare-fun m!3223651 () Bool)

(assert (=> b!2793403 m!3223651))

(declare-fun m!3223653 () Bool)

(assert (=> setNonEmpty!24006 m!3223653))

(declare-fun m!3223655 () Bool)

(assert (=> b!2793408 m!3223655))

(declare-fun m!3223657 () Bool)

(assert (=> mapNonEmpty!18012 m!3223657))

(declare-fun m!3223659 () Bool)

(assert (=> b!2793396 m!3223659))

(declare-fun m!3223661 () Bool)

(assert (=> b!2793399 m!3223661))

(declare-fun m!3223663 () Bool)

(assert (=> b!2793399 m!3223663))

(declare-fun m!3223665 () Bool)

(assert (=> b!2793399 m!3223665))

(declare-fun m!3223667 () Bool)

(assert (=> b!2793401 m!3223667))

(declare-fun m!3223669 () Bool)

(assert (=> b!2793395 m!3223669))

(declare-fun m!3223671 () Bool)

(assert (=> b!2793395 m!3223671))

(declare-fun m!3223673 () Bool)

(assert (=> b!2793406 m!3223673))

(declare-fun m!3223675 () Bool)

(assert (=> b!2793406 m!3223675))

(declare-fun m!3223677 () Bool)

(assert (=> b!2793406 m!3223677))

(declare-fun m!3223679 () Bool)

(assert (=> b!2793406 m!3223679))

(declare-fun m!3223681 () Bool)

(assert (=> b!2793406 m!3223681))

(declare-fun m!3223683 () Bool)

(assert (=> b!2793406 m!3223683))

(declare-fun m!3223685 () Bool)

(assert (=> b!2793406 m!3223685))

(assert (=> b!2793406 m!3223677))

(check-sat (not b_next!79783) (not b!2793402) (not b!2793408) (not mapNonEmpty!18012) (not b!2793409) (not b_next!79787) (not b!2793395) (not b!2793399) b_and!203817 (not b!2793396) b_and!203821 tp_is_empty!14175 (not mapNonEmpty!18011) (not b!2793407) b_and!203819 (not b!2793398) (not setNonEmpty!24006) (not b!2793410) (not b!2793401) (not b_next!79781) (not b!2793405) (not start!270002) (not b!2793403) (not b_next!79785) (not b!2793391) (not b!2793406) (not b!2793397) (not b!2793411) (not b!2793393) b_and!203815)
(check-sat (not b_next!79783) (not b_next!79787) b_and!203819 (not b_next!79781) b_and!203817 (not b_next!79785) b_and!203821 b_and!203815)
(get-model)

(declare-fun d!812215 () Bool)

(declare-fun lt!998249 () Int)

(assert (=> d!812215 (>= lt!998249 0)))

(declare-fun e!1763800 () Int)

(assert (=> d!812215 (= lt!998249 e!1763800)))

(declare-fun c!453347 () Bool)

(assert (=> d!812215 (= c!453347 ((_ is Nil!32387) testedP!183))))

(assert (=> d!812215 (= (size!25227 testedP!183) lt!998249)))

(declare-fun b!2793421 () Bool)

(assert (=> b!2793421 (= e!1763800 0)))

(declare-fun b!2793422 () Bool)

(assert (=> b!2793422 (= e!1763800 (+ 1 (size!25227 (t!228639 testedP!183))))))

(assert (= (and d!812215 c!453347) b!2793421))

(assert (= (and d!812215 (not c!453347)) b!2793422))

(declare-fun m!3223687 () Bool)

(assert (=> b!2793422 m!3223687))

(assert (=> b!2793401 d!812215))

(declare-fun d!812217 () Bool)

(declare-fun c!453350 () Bool)

(assert (=> d!812217 (= c!453350 ((_ is Node!10046) (c!453343 totalInput!758)))))

(declare-fun e!1763805 () Bool)

(assert (=> d!812217 (= (inv!43994 (c!453343 totalInput!758)) e!1763805)))

(declare-fun b!2793429 () Bool)

(declare-fun inv!43998 (Conc!10046) Bool)

(assert (=> b!2793429 (= e!1763805 (inv!43998 (c!453343 totalInput!758)))))

(declare-fun b!2793430 () Bool)

(declare-fun e!1763806 () Bool)

(assert (=> b!2793430 (= e!1763805 e!1763806)))

(declare-fun res!1164962 () Bool)

(assert (=> b!2793430 (= res!1164962 (not ((_ is Leaf!15305) (c!453343 totalInput!758))))))

(assert (=> b!2793430 (=> res!1164962 e!1763806)))

(declare-fun b!2793431 () Bool)

(declare-fun inv!43999 (Conc!10046) Bool)

(assert (=> b!2793431 (= e!1763806 (inv!43999 (c!453343 totalInput!758)))))

(assert (= (and d!812217 c!453350) b!2793429))

(assert (= (and d!812217 (not c!453350)) b!2793430))

(assert (= (and b!2793430 (not res!1164962)) b!2793431))

(declare-fun m!3223689 () Bool)

(assert (=> b!2793429 m!3223689))

(declare-fun m!3223691 () Bool)

(assert (=> b!2793431 m!3223691))

(assert (=> b!2793409 d!812217))

(declare-fun d!812219 () Bool)

(declare-fun e!1763813 () Bool)

(assert (=> d!812219 e!1763813))

(declare-fun res!1164971 () Bool)

(assert (=> d!812219 (=> res!1164971 e!1763813)))

(declare-fun lt!998252 () Bool)

(assert (=> d!812219 (= res!1164971 (not lt!998252))))

(declare-fun e!1763815 () Bool)

(assert (=> d!812219 (= lt!998252 e!1763815)))

(declare-fun res!1164972 () Bool)

(assert (=> d!812219 (=> res!1164972 e!1763815)))

(assert (=> d!812219 (= res!1164972 ((_ is Nil!32387) testedP!183))))

(assert (=> d!812219 (= (isPrefix!2609 testedP!183 lt!998237) lt!998252)))

(declare-fun b!2793442 () Bool)

(declare-fun e!1763814 () Bool)

(declare-fun tail!4416 (List!32487) List!32487)

(assert (=> b!2793442 (= e!1763814 (isPrefix!2609 (tail!4416 testedP!183) (tail!4416 lt!998237)))))

(declare-fun b!2793440 () Bool)

(assert (=> b!2793440 (= e!1763815 e!1763814)))

(declare-fun res!1164974 () Bool)

(assert (=> b!2793440 (=> (not res!1164974) (not e!1763814))))

(assert (=> b!2793440 (= res!1164974 (not ((_ is Nil!32387) lt!998237)))))

(declare-fun b!2793443 () Bool)

(assert (=> b!2793443 (= e!1763813 (>= (size!25227 lt!998237) (size!25227 testedP!183)))))

(declare-fun b!2793441 () Bool)

(declare-fun res!1164973 () Bool)

(assert (=> b!2793441 (=> (not res!1164973) (not e!1763814))))

(assert (=> b!2793441 (= res!1164973 (= (head!6184 testedP!183) (head!6184 lt!998237)))))

(assert (= (and d!812219 (not res!1164972)) b!2793440))

(assert (= (and b!2793440 res!1164974) b!2793441))

(assert (= (and b!2793441 res!1164973) b!2793442))

(assert (= (and d!812219 (not res!1164971)) b!2793443))

(declare-fun m!3223693 () Bool)

(assert (=> b!2793442 m!3223693))

(declare-fun m!3223695 () Bool)

(assert (=> b!2793442 m!3223695))

(assert (=> b!2793442 m!3223693))

(assert (=> b!2793442 m!3223695))

(declare-fun m!3223697 () Bool)

(assert (=> b!2793442 m!3223697))

(declare-fun m!3223699 () Bool)

(assert (=> b!2793443 m!3223699))

(assert (=> b!2793443 m!3223667))

(declare-fun m!3223701 () Bool)

(assert (=> b!2793441 m!3223701))

(declare-fun m!3223703 () Bool)

(assert (=> b!2793441 m!3223703))

(assert (=> b!2793399 d!812219))

(declare-fun d!812221 () Bool)

(declare-fun e!1763816 () Bool)

(assert (=> d!812221 e!1763816))

(declare-fun res!1164975 () Bool)

(assert (=> d!812221 (=> res!1164975 e!1763816)))

(declare-fun lt!998253 () Bool)

(assert (=> d!812221 (= res!1164975 (not lt!998253))))

(declare-fun e!1763818 () Bool)

(assert (=> d!812221 (= lt!998253 e!1763818)))

(declare-fun res!1164976 () Bool)

(assert (=> d!812221 (=> res!1164976 e!1763818)))

(assert (=> d!812221 (= res!1164976 ((_ is Nil!32387) testedP!183))))

(assert (=> d!812221 (= (isPrefix!2609 testedP!183 lt!998239) lt!998253)))

(declare-fun b!2793446 () Bool)

(declare-fun e!1763817 () Bool)

(assert (=> b!2793446 (= e!1763817 (isPrefix!2609 (tail!4416 testedP!183) (tail!4416 lt!998239)))))

(declare-fun b!2793444 () Bool)

(assert (=> b!2793444 (= e!1763818 e!1763817)))

(declare-fun res!1164978 () Bool)

(assert (=> b!2793444 (=> (not res!1164978) (not e!1763817))))

(assert (=> b!2793444 (= res!1164978 (not ((_ is Nil!32387) lt!998239)))))

(declare-fun b!2793447 () Bool)

(assert (=> b!2793447 (= e!1763816 (>= (size!25227 lt!998239) (size!25227 testedP!183)))))

(declare-fun b!2793445 () Bool)

(declare-fun res!1164977 () Bool)

(assert (=> b!2793445 (=> (not res!1164977) (not e!1763817))))

(assert (=> b!2793445 (= res!1164977 (= (head!6184 testedP!183) (head!6184 lt!998239)))))

(assert (= (and d!812221 (not res!1164976)) b!2793444))

(assert (= (and b!2793444 res!1164978) b!2793445))

(assert (= (and b!2793445 res!1164977) b!2793446))

(assert (= (and d!812221 (not res!1164975)) b!2793447))

(assert (=> b!2793446 m!3223693))

(declare-fun m!3223705 () Bool)

(assert (=> b!2793446 m!3223705))

(assert (=> b!2793446 m!3223693))

(assert (=> b!2793446 m!3223705))

(declare-fun m!3223707 () Bool)

(assert (=> b!2793446 m!3223707))

(declare-fun m!3223709 () Bool)

(assert (=> b!2793447 m!3223709))

(assert (=> b!2793447 m!3223667))

(assert (=> b!2793445 m!3223701))

(declare-fun m!3223711 () Bool)

(assert (=> b!2793445 m!3223711))

(assert (=> b!2793399 d!812221))

(declare-fun d!812223 () Bool)

(assert (=> d!812223 (isPrefix!2609 testedP!183 (++!7994 testedP!183 testedSuffix!143))))

(declare-fun lt!998256 () Unit!46564)

(declare-fun choose!16425 (List!32487 List!32487) Unit!46564)

(assert (=> d!812223 (= lt!998256 (choose!16425 testedP!183 testedSuffix!143))))

(assert (=> d!812223 (= (lemmaConcatTwoListThenFirstIsPrefix!1718 testedP!183 testedSuffix!143) lt!998256)))

(declare-fun bs!514265 () Bool)

(assert (= bs!514265 d!812223))

(assert (=> bs!514265 m!3223635))

(assert (=> bs!514265 m!3223635))

(declare-fun m!3223713 () Bool)

(assert (=> bs!514265 m!3223713))

(declare-fun m!3223715 () Bool)

(assert (=> bs!514265 m!3223715))

(assert (=> b!2793399 d!812223))

(declare-fun d!812225 () Bool)

(declare-fun lt!998259 () Int)

(assert (=> d!812225 (= lt!998259 (size!25227 (list!12176 (_1!19461 lt!998242))))))

(declare-fun size!25228 (Conc!10046) Int)

(assert (=> d!812225 (= lt!998259 (size!25228 (c!453343 (_1!19461 lt!998242))))))

(assert (=> d!812225 (= (size!25223 (_1!19461 lt!998242)) lt!998259)))

(declare-fun bs!514266 () Bool)

(assert (= bs!514266 d!812225))

(assert (=> bs!514266 m!3223649))

(assert (=> bs!514266 m!3223649))

(declare-fun m!3223717 () Bool)

(assert (=> bs!514266 m!3223717))

(declare-fun m!3223719 () Bool)

(assert (=> bs!514266 m!3223719))

(assert (=> b!2793408 d!812225))

(declare-fun d!812227 () Bool)

(assert (=> d!812227 (= (array_inv!4487 (_keys!4258 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) (bvsge (size!25224 (_keys!4258 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2793402 d!812227))

(declare-fun d!812229 () Bool)

(assert (=> d!812229 (= (array_inv!4489 (_values!4239 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) (bvsge (size!25225 (_values!4239 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2793402 d!812229))

(declare-fun bs!514267 () Bool)

(declare-fun b!2793452 () Bool)

(declare-fun d!812231 () Bool)

(assert (= bs!514267 (and b!2793452 d!812231)))

(declare-fun lambda!102571 () Int)

(declare-fun lambda!102570 () Int)

(assert (=> bs!514267 (not (= lambda!102571 lambda!102570))))

(declare-fun bs!514268 () Bool)

(declare-fun b!2793453 () Bool)

(assert (= bs!514268 (and b!2793453 d!812231)))

(declare-fun lambda!102572 () Int)

(assert (=> bs!514268 (not (= lambda!102572 lambda!102570))))

(declare-fun bs!514269 () Bool)

(assert (= bs!514269 (and b!2793453 b!2793452)))

(assert (=> bs!514269 (= lambda!102572 lambda!102571)))

(declare-fun e!1763825 () Unit!46564)

(declare-fun Unit!46566 () Unit!46564)

(assert (=> b!2793452 (= e!1763825 Unit!46566)))

(declare-datatypes ((List!32491 0))(
  ( (Nil!32391) (Cons!32391 (h!37811 Context!4798) (t!228643 List!32491)) )
))
(declare-fun lt!998283 () List!32491)

(declare-fun call!182733 () List!32491)

(assert (=> b!2793452 (= lt!998283 call!182733)))

(declare-fun lt!998280 () Unit!46564)

(declare-fun lemmaNotForallThenExists!101 (List!32491 Int) Unit!46564)

(assert (=> b!2793452 (= lt!998280 (lemmaNotForallThenExists!101 lt!998283 lambda!102570))))

(declare-fun call!182732 () Bool)

(assert (=> b!2793452 call!182732))

(declare-fun lt!998281 () Unit!46564)

(assert (=> b!2793452 (= lt!998281 lt!998280)))

(declare-fun Unit!46567 () Unit!46564)

(assert (=> b!2793453 (= e!1763825 Unit!46567)))

(declare-fun lt!998282 () List!32491)

(assert (=> b!2793453 (= lt!998282 call!182733)))

(declare-fun lt!998278 () Unit!46564)

(declare-fun lemmaForallThenNotExists!101 (List!32491 Int) Unit!46564)

(assert (=> b!2793453 (= lt!998278 (lemmaForallThenNotExists!101 lt!998282 lambda!102570))))

(assert (=> b!2793453 (not call!182732)))

(declare-fun lt!998277 () Unit!46564)

(assert (=> b!2793453 (= lt!998277 lt!998278)))

(declare-fun bm!182727 () Bool)

(declare-fun toList!1870 ((InoxSet Context!4798)) List!32491)

(assert (=> bm!182727 (= call!182733 (toList!1870 z!3684))))

(declare-fun lt!998276 () Bool)

(declare-datatypes ((Option!6279 0))(
  ( (None!6278) (Some!6278 (v!33995 List!32487)) )
))
(declare-fun isEmpty!18126 (Option!6279) Bool)

(declare-fun getLanguageWitness!212 ((InoxSet Context!4798)) Option!6279)

(assert (=> d!812231 (= lt!998276 (isEmpty!18126 (getLanguageWitness!212 z!3684)))))

(declare-fun forall!6681 ((InoxSet Context!4798) Int) Bool)

(assert (=> d!812231 (= lt!998276 (forall!6681 z!3684 lambda!102570))))

(declare-fun lt!998279 () Unit!46564)

(assert (=> d!812231 (= lt!998279 e!1763825)))

(declare-fun c!453361 () Bool)

(assert (=> d!812231 (= c!453361 (not (forall!6681 z!3684 lambda!102570)))))

(assert (=> d!812231 (= (lostCauseZipper!486 z!3684) lt!998276)))

(declare-fun bm!182728 () Bool)

(declare-fun exists!1006 (List!32491 Int) Bool)

(assert (=> bm!182728 (= call!182732 (exists!1006 (ite c!453361 lt!998283 lt!998282) (ite c!453361 lambda!102571 lambda!102572)))))

(assert (= (and d!812231 c!453361) b!2793452))

(assert (= (and d!812231 (not c!453361)) b!2793453))

(assert (= (or b!2793452 b!2793453) bm!182727))

(assert (= (or b!2793452 b!2793453) bm!182728))

(declare-fun m!3223721 () Bool)

(assert (=> bm!182727 m!3223721))

(declare-fun m!3223723 () Bool)

(assert (=> d!812231 m!3223723))

(assert (=> d!812231 m!3223723))

(declare-fun m!3223725 () Bool)

(assert (=> d!812231 m!3223725))

(declare-fun m!3223727 () Bool)

(assert (=> d!812231 m!3223727))

(assert (=> d!812231 m!3223727))

(declare-fun m!3223729 () Bool)

(assert (=> b!2793453 m!3223729))

(declare-fun m!3223731 () Bool)

(assert (=> b!2793452 m!3223731))

(declare-fun m!3223733 () Bool)

(assert (=> bm!182728 m!3223733))

(assert (=> b!2793411 d!812231))

(declare-fun d!812233 () Bool)

(assert (=> d!812233 (= testedSuffix!143 lt!998241)))

(declare-fun lt!998286 () Unit!46564)

(declare-fun choose!16426 (List!32487 List!32487 List!32487 List!32487 List!32487) Unit!46564)

(assert (=> d!812233 (= lt!998286 (choose!16426 testedP!183 testedSuffix!143 testedP!183 lt!998241 lt!998237))))

(assert (=> d!812233 (isPrefix!2609 testedP!183 lt!998237)))

(assert (=> d!812233 (= (lemmaSamePrefixThenSameSuffix!1187 testedP!183 testedSuffix!143 testedP!183 lt!998241 lt!998237) lt!998286)))

(declare-fun bs!514270 () Bool)

(assert (= bs!514270 d!812233))

(declare-fun m!3223735 () Bool)

(assert (=> bs!514270 m!3223735))

(assert (=> bs!514270 m!3223661))

(assert (=> b!2793411 d!812233))

(declare-fun d!812235 () Bool)

(declare-fun lt!998289 () List!32487)

(assert (=> d!812235 (= (++!7994 testedP!183 lt!998289) lt!998237)))

(declare-fun e!1763828 () List!32487)

(assert (=> d!812235 (= lt!998289 e!1763828)))

(declare-fun c!453364 () Bool)

(assert (=> d!812235 (= c!453364 ((_ is Cons!32387) testedP!183))))

(assert (=> d!812235 (>= (size!25227 lt!998237) (size!25227 testedP!183))))

(assert (=> d!812235 (= (getSuffix!1286 lt!998237 testedP!183) lt!998289)))

(declare-fun b!2793458 () Bool)

(assert (=> b!2793458 (= e!1763828 (getSuffix!1286 (tail!4416 lt!998237) (t!228639 testedP!183)))))

(declare-fun b!2793459 () Bool)

(assert (=> b!2793459 (= e!1763828 lt!998237)))

(assert (= (and d!812235 c!453364) b!2793458))

(assert (= (and d!812235 (not c!453364)) b!2793459))

(declare-fun m!3223737 () Bool)

(assert (=> d!812235 m!3223737))

(assert (=> d!812235 m!3223699))

(assert (=> d!812235 m!3223667))

(assert (=> b!2793458 m!3223695))

(assert (=> b!2793458 m!3223695))

(declare-fun m!3223739 () Bool)

(assert (=> b!2793458 m!3223739))

(assert (=> b!2793411 d!812235))

(declare-fun d!812237 () Bool)

(declare-fun res!1164981 () Bool)

(declare-fun e!1763831 () Bool)

(assert (=> d!812237 (=> (not res!1164981) (not e!1763831))))

(assert (=> d!812237 (= res!1164981 ((_ is HashMap!3865) (cache!4008 cacheUp!890)))))

(assert (=> d!812237 (= (inv!43997 cacheUp!890) e!1763831)))

(declare-fun b!2793462 () Bool)

(declare-fun validCacheMapUp!388 (MutableMap!3865) Bool)

(assert (=> b!2793462 (= e!1763831 (validCacheMapUp!388 (cache!4008 cacheUp!890)))))

(assert (= (and d!812237 res!1164981) b!2793462))

(declare-fun m!3223741 () Bool)

(assert (=> b!2793462 m!3223741))

(assert (=> start!270002 d!812237))

(declare-fun d!812239 () Bool)

(declare-fun isBalanced!3064 (Conc!10046) Bool)

(assert (=> d!812239 (= (inv!43995 totalInput!758) (isBalanced!3064 (c!453343 totalInput!758)))))

(declare-fun bs!514271 () Bool)

(assert (= bs!514271 d!812239))

(declare-fun m!3223743 () Bool)

(assert (=> bs!514271 m!3223743))

(assert (=> start!270002 d!812239))

(declare-fun d!812241 () Bool)

(declare-fun res!1164984 () Bool)

(declare-fun e!1763834 () Bool)

(assert (=> d!812241 (=> (not res!1164984) (not e!1763834))))

(assert (=> d!812241 (= res!1164984 ((_ is HashMap!3864) (cache!4007 cacheDown!1009)))))

(assert (=> d!812241 (= (inv!43996 cacheDown!1009) e!1763834)))

(declare-fun b!2793465 () Bool)

(declare-fun validCacheMapDown!419 (MutableMap!3864) Bool)

(assert (=> b!2793465 (= e!1763834 (validCacheMapDown!419 (cache!4007 cacheDown!1009)))))

(assert (= (and d!812241 res!1164984) b!2793465))

(declare-fun m!3223745 () Bool)

(assert (=> b!2793465 m!3223745))

(assert (=> start!270002 d!812241))

(declare-fun d!812243 () Bool)

(declare-fun list!12177 (Conc!10046) List!32487)

(assert (=> d!812243 (= (list!12176 totalInput!758) (list!12177 (c!453343 totalInput!758)))))

(declare-fun bs!514272 () Bool)

(assert (= bs!514272 d!812243))

(declare-fun m!3223747 () Bool)

(assert (=> bs!514272 m!3223747))

(assert (=> start!270002 d!812243))

(declare-fun b!2793476 () Bool)

(declare-fun res!1164989 () Bool)

(declare-fun e!1763839 () Bool)

(assert (=> b!2793476 (=> (not res!1164989) (not e!1763839))))

(declare-fun lt!998292 () List!32487)

(assert (=> b!2793476 (= res!1164989 (= (size!25227 lt!998292) (+ (size!25227 testedP!183) (size!25227 testedSuffix!143))))))

(declare-fun b!2793474 () Bool)

(declare-fun e!1763840 () List!32487)

(assert (=> b!2793474 (= e!1763840 testedSuffix!143)))

(declare-fun b!2793477 () Bool)

(assert (=> b!2793477 (= e!1763839 (or (not (= testedSuffix!143 Nil!32387)) (= lt!998292 testedP!183)))))

(declare-fun b!2793475 () Bool)

(assert (=> b!2793475 (= e!1763840 (Cons!32387 (h!37807 testedP!183) (++!7994 (t!228639 testedP!183) testedSuffix!143)))))

(declare-fun d!812245 () Bool)

(assert (=> d!812245 e!1763839))

(declare-fun res!1164990 () Bool)

(assert (=> d!812245 (=> (not res!1164990) (not e!1763839))))

(declare-fun content!4531 (List!32487) (InoxSet C!16520))

(assert (=> d!812245 (= res!1164990 (= (content!4531 lt!998292) ((_ map or) (content!4531 testedP!183) (content!4531 testedSuffix!143))))))

(assert (=> d!812245 (= lt!998292 e!1763840)))

(declare-fun c!453367 () Bool)

(assert (=> d!812245 (= c!453367 ((_ is Nil!32387) testedP!183))))

(assert (=> d!812245 (= (++!7994 testedP!183 testedSuffix!143) lt!998292)))

(assert (= (and d!812245 c!453367) b!2793474))

(assert (= (and d!812245 (not c!453367)) b!2793475))

(assert (= (and d!812245 res!1164990) b!2793476))

(assert (= (and b!2793476 res!1164989) b!2793477))

(declare-fun m!3223749 () Bool)

(assert (=> b!2793476 m!3223749))

(assert (=> b!2793476 m!3223667))

(declare-fun m!3223751 () Bool)

(assert (=> b!2793476 m!3223751))

(declare-fun m!3223753 () Bool)

(assert (=> b!2793475 m!3223753))

(declare-fun m!3223755 () Bool)

(assert (=> d!812245 m!3223755))

(declare-fun m!3223757 () Bool)

(assert (=> d!812245 m!3223757))

(declare-fun m!3223759 () Bool)

(assert (=> d!812245 m!3223759))

(assert (=> start!270002 d!812245))

(declare-fun d!812247 () Bool)

(declare-fun lt!998293 () Int)

(assert (=> d!812247 (= lt!998293 (size!25227 (list!12176 totalInput!758)))))

(assert (=> d!812247 (= lt!998293 (size!25228 (c!453343 totalInput!758)))))

(assert (=> d!812247 (= (size!25223 totalInput!758) lt!998293)))

(declare-fun bs!514273 () Bool)

(assert (= bs!514273 d!812247))

(assert (=> bs!514273 m!3223627))

(assert (=> bs!514273 m!3223627))

(declare-fun m!3223761 () Bool)

(assert (=> bs!514273 m!3223761))

(declare-fun m!3223763 () Bool)

(assert (=> bs!514273 m!3223763))

(assert (=> b!2793393 d!812247))

(declare-fun d!812249 () Bool)

(declare-fun lambda!102575 () Int)

(declare-fun forall!6682 (List!32488 Int) Bool)

(assert (=> d!812249 (= (inv!43993 setElem!24006) (forall!6682 (exprs!2899 setElem!24006) lambda!102575))))

(declare-fun bs!514274 () Bool)

(assert (= bs!514274 d!812249))

(declare-fun m!3223765 () Bool)

(assert (=> bs!514274 m!3223765))

(assert (=> setNonEmpty!24006 d!812249))

(declare-fun d!812251 () Bool)

(assert (=> d!812251 (= (valid!3098 cacheDown!1009) (validCacheMapDown!419 (cache!4007 cacheDown!1009)))))

(declare-fun bs!514275 () Bool)

(assert (= bs!514275 d!812251))

(assert (=> bs!514275 m!3223745))

(assert (=> b!2793396 d!812251))

(declare-fun b!2793480 () Bool)

(declare-fun res!1164991 () Bool)

(declare-fun e!1763841 () Bool)

(assert (=> b!2793480 (=> (not res!1164991) (not e!1763841))))

(declare-fun lt!998294 () List!32487)

(assert (=> b!2793480 (= res!1164991 (= (size!25227 lt!998294) (+ (size!25227 lt!998246) (size!25227 lt!998243))))))

(declare-fun b!2793478 () Bool)

(declare-fun e!1763842 () List!32487)

(assert (=> b!2793478 (= e!1763842 lt!998243)))

(declare-fun b!2793481 () Bool)

(assert (=> b!2793481 (= e!1763841 (or (not (= lt!998243 Nil!32387)) (= lt!998294 lt!998246)))))

(declare-fun b!2793479 () Bool)

(assert (=> b!2793479 (= e!1763842 (Cons!32387 (h!37807 lt!998246) (++!7994 (t!228639 lt!998246) lt!998243)))))

(declare-fun d!812253 () Bool)

(assert (=> d!812253 e!1763841))

(declare-fun res!1164992 () Bool)

(assert (=> d!812253 (=> (not res!1164992) (not e!1763841))))

(assert (=> d!812253 (= res!1164992 (= (content!4531 lt!998294) ((_ map or) (content!4531 lt!998246) (content!4531 lt!998243))))))

(assert (=> d!812253 (= lt!998294 e!1763842)))

(declare-fun c!453368 () Bool)

(assert (=> d!812253 (= c!453368 ((_ is Nil!32387) lt!998246))))

(assert (=> d!812253 (= (++!7994 lt!998246 lt!998243) lt!998294)))

(assert (= (and d!812253 c!453368) b!2793478))

(assert (= (and d!812253 (not c!453368)) b!2793479))

(assert (= (and d!812253 res!1164992) b!2793480))

(assert (= (and b!2793480 res!1164991) b!2793481))

(declare-fun m!3223767 () Bool)

(assert (=> b!2793480 m!3223767))

(declare-fun m!3223769 () Bool)

(assert (=> b!2793480 m!3223769))

(declare-fun m!3223771 () Bool)

(assert (=> b!2793480 m!3223771))

(declare-fun m!3223773 () Bool)

(assert (=> b!2793479 m!3223773))

(declare-fun m!3223775 () Bool)

(assert (=> d!812253 m!3223775))

(declare-fun m!3223777 () Bool)

(assert (=> d!812253 m!3223777))

(declare-fun m!3223779 () Bool)

(assert (=> d!812253 m!3223779))

(assert (=> b!2793403 d!812253))

(declare-fun d!812255 () Bool)

(assert (=> d!812255 (= (list!12176 (_2!19461 lt!998242)) (list!12177 (c!453343 (_2!19461 lt!998242))))))

(declare-fun bs!514276 () Bool)

(assert (= bs!514276 d!812255))

(declare-fun m!3223781 () Bool)

(assert (=> bs!514276 m!3223781))

(assert (=> b!2793403 d!812255))

(declare-fun d!812257 () Bool)

(assert (=> d!812257 (= (list!12176 (_1!19461 lt!998242)) (list!12177 (c!453343 (_1!19461 lt!998242))))))

(declare-fun bs!514277 () Bool)

(assert (= bs!514277 d!812257))

(declare-fun m!3223783 () Bool)

(assert (=> bs!514277 m!3223783))

(assert (=> b!2793403 d!812257))

(declare-fun d!812259 () Bool)

(declare-fun e!1763845 () Bool)

(assert (=> d!812259 e!1763845))

(declare-fun res!1164998 () Bool)

(assert (=> d!812259 (=> (not res!1164998) (not e!1763845))))

(declare-fun lt!998300 () tuple2!32882)

(assert (=> d!812259 (= res!1164998 (isBalanced!3064 (c!453343 (_1!19461 lt!998300))))))

(declare-datatypes ((tuple2!32884 0))(
  ( (tuple2!32885 (_1!19462 Conc!10046) (_2!19462 Conc!10046)) )
))
(declare-fun lt!998299 () tuple2!32884)

(assert (=> d!812259 (= lt!998300 (tuple2!32883 (BalanceConc!19707 (_1!19462 lt!998299)) (BalanceConc!19707 (_2!19462 lt!998299))))))

(declare-fun splitAt!172 (Conc!10046 Int) tuple2!32884)

(assert (=> d!812259 (= lt!998299 (splitAt!172 (c!453343 totalInput!758) testedPSize!143))))

(assert (=> d!812259 (isBalanced!3064 (c!453343 totalInput!758))))

(assert (=> d!812259 (= (splitAt!171 totalInput!758 testedPSize!143) lt!998300)))

(declare-fun b!2793486 () Bool)

(declare-fun res!1164997 () Bool)

(assert (=> b!2793486 (=> (not res!1164997) (not e!1763845))))

(assert (=> b!2793486 (= res!1164997 (isBalanced!3064 (c!453343 (_2!19461 lt!998300))))))

(declare-fun b!2793487 () Bool)

(declare-datatypes ((tuple2!32886 0))(
  ( (tuple2!32887 (_1!19463 List!32487) (_2!19463 List!32487)) )
))
(declare-fun splitAtIndex!67 (List!32487 Int) tuple2!32886)

(assert (=> b!2793487 (= e!1763845 (= (tuple2!32887 (list!12176 (_1!19461 lt!998300)) (list!12176 (_2!19461 lt!998300))) (splitAtIndex!67 (list!12176 totalInput!758) testedPSize!143)))))

(assert (= (and d!812259 res!1164998) b!2793486))

(assert (= (and b!2793486 res!1164997) b!2793487))

(declare-fun m!3223785 () Bool)

(assert (=> d!812259 m!3223785))

(declare-fun m!3223787 () Bool)

(assert (=> d!812259 m!3223787))

(assert (=> d!812259 m!3223743))

(declare-fun m!3223789 () Bool)

(assert (=> b!2793486 m!3223789))

(declare-fun m!3223791 () Bool)

(assert (=> b!2793487 m!3223791))

(declare-fun m!3223793 () Bool)

(assert (=> b!2793487 m!3223793))

(assert (=> b!2793487 m!3223627))

(assert (=> b!2793487 m!3223627))

(declare-fun m!3223795 () Bool)

(assert (=> b!2793487 m!3223795))

(assert (=> b!2793403 d!812259))

(declare-fun d!812261 () Bool)

(assert (=> d!812261 (= (array_inv!4487 (_keys!4259 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) (bvsge (size!25224 (_keys!4259 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2793395 d!812261))

(declare-fun d!812263 () Bool)

(assert (=> d!812263 (= (array_inv!4488 (_values!4240 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) (bvsge (size!25226 (_values!4240 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2793395 d!812263))

(declare-fun d!812265 () Bool)

(assert (=> d!812265 (= (valid!3099 cacheUp!890) (validCacheMapUp!388 (cache!4008 cacheUp!890)))))

(declare-fun bs!514278 () Bool)

(assert (= bs!514278 d!812265))

(assert (=> bs!514278 m!3223741))

(assert (=> b!2793407 d!812265))

(declare-fun d!812267 () Bool)

(declare-fun lt!998303 () C!16520)

(assert (=> d!812267 (= lt!998303 (apply!7571 (list!12176 totalInput!758) testedPSize!143))))

(declare-fun apply!7572 (Conc!10046 Int) C!16520)

(assert (=> d!812267 (= lt!998303 (apply!7572 (c!453343 totalInput!758) testedPSize!143))))

(declare-fun e!1763848 () Bool)

(assert (=> d!812267 e!1763848))

(declare-fun res!1165001 () Bool)

(assert (=> d!812267 (=> (not res!1165001) (not e!1763848))))

(assert (=> d!812267 (= res!1165001 (<= 0 testedPSize!143))))

(assert (=> d!812267 (= (apply!7570 totalInput!758 testedPSize!143) lt!998303)))

(declare-fun b!2793490 () Bool)

(assert (=> b!2793490 (= e!1763848 (< testedPSize!143 (size!25223 totalInput!758)))))

(assert (= (and d!812267 res!1165001) b!2793490))

(assert (=> d!812267 m!3223627))

(assert (=> d!812267 m!3223627))

(declare-fun m!3223797 () Bool)

(assert (=> d!812267 m!3223797))

(declare-fun m!3223799 () Bool)

(assert (=> d!812267 m!3223799))

(assert (=> b!2793490 m!3223625))

(assert (=> b!2793406 d!812267))

(declare-fun d!812269 () Bool)

(declare-fun lt!998306 () C!16520)

(declare-fun contains!6011 (List!32487 C!16520) Bool)

(assert (=> d!812269 (contains!6011 lt!998237 lt!998306)))

(declare-fun e!1763854 () C!16520)

(assert (=> d!812269 (= lt!998306 e!1763854)))

(declare-fun c!453371 () Bool)

(assert (=> d!812269 (= c!453371 (= testedPSize!143 0))))

(declare-fun e!1763853 () Bool)

(assert (=> d!812269 e!1763853))

(declare-fun res!1165004 () Bool)

(assert (=> d!812269 (=> (not res!1165004) (not e!1763853))))

(assert (=> d!812269 (= res!1165004 (<= 0 testedPSize!143))))

(assert (=> d!812269 (= (apply!7571 lt!998237 testedPSize!143) lt!998306)))

(declare-fun b!2793497 () Bool)

(assert (=> b!2793497 (= e!1763853 (< testedPSize!143 (size!25227 lt!998237)))))

(declare-fun b!2793498 () Bool)

(assert (=> b!2793498 (= e!1763854 (head!6184 lt!998237))))

(declare-fun b!2793499 () Bool)

(assert (=> b!2793499 (= e!1763854 (apply!7571 (tail!4416 lt!998237) (- testedPSize!143 1)))))

(assert (= (and d!812269 res!1165004) b!2793497))

(assert (= (and d!812269 c!453371) b!2793498))

(assert (= (and d!812269 (not c!453371)) b!2793499))

(declare-fun m!3223801 () Bool)

(assert (=> d!812269 m!3223801))

(assert (=> b!2793497 m!3223699))

(assert (=> b!2793498 m!3223703))

(assert (=> b!2793499 m!3223695))

(assert (=> b!2793499 m!3223695))

(declare-fun m!3223803 () Bool)

(assert (=> b!2793499 m!3223803))

(assert (=> b!2793406 d!812269))

(declare-fun d!812271 () Bool)

(assert (=> d!812271 (= (head!6184 testedSuffix!143) (h!37807 testedSuffix!143))))

(assert (=> b!2793406 d!812271))

(declare-fun d!812273 () Bool)

(assert (=> d!812273 (and (= lt!998246 testedP!183) (= lt!998243 testedSuffix!143))))

(declare-fun lt!998309 () Unit!46564)

(declare-fun choose!16427 (List!32487 List!32487 List!32487 List!32487) Unit!46564)

(assert (=> d!812273 (= lt!998309 (choose!16427 lt!998246 lt!998243 testedP!183 testedSuffix!143))))

(assert (=> d!812273 (= (++!7994 lt!998246 lt!998243) (++!7994 testedP!183 testedSuffix!143))))

(assert (=> d!812273 (= (lemmaConcatSameAndSameSizesThenSameLists!369 lt!998246 lt!998243 testedP!183 testedSuffix!143) lt!998309)))

(declare-fun bs!514279 () Bool)

(assert (= bs!514279 d!812273))

(declare-fun m!3223805 () Bool)

(assert (=> bs!514279 m!3223805))

(assert (=> bs!514279 m!3223645))

(assert (=> bs!514279 m!3223635))

(assert (=> b!2793406 d!812273))

(declare-fun d!812275 () Bool)

(assert (=> d!812275 (= (head!6184 (drop!1736 lt!998237 testedPSize!143)) (h!37807 (drop!1736 lt!998237 testedPSize!143)))))

(assert (=> b!2793406 d!812275))

(declare-fun b!2793518 () Bool)

(declare-fun e!1763867 () Int)

(declare-fun e!1763868 () Int)

(assert (=> b!2793518 (= e!1763867 e!1763868)))

(declare-fun c!453383 () Bool)

(declare-fun call!182736 () Int)

(assert (=> b!2793518 (= c!453383 (>= testedPSize!143 call!182736))))

(declare-fun b!2793519 () Bool)

(assert (=> b!2793519 (= e!1763868 (- call!182736 testedPSize!143))))

(declare-fun b!2793520 () Bool)

(declare-fun e!1763869 () List!32487)

(assert (=> b!2793520 (= e!1763869 lt!998237)))

(declare-fun b!2793521 () Bool)

(assert (=> b!2793521 (= e!1763867 call!182736)))

(declare-fun b!2793522 () Bool)

(declare-fun e!1763865 () Bool)

(declare-fun lt!998312 () List!32487)

(assert (=> b!2793522 (= e!1763865 (= (size!25227 lt!998312) e!1763867))))

(declare-fun c!453381 () Bool)

(assert (=> b!2793522 (= c!453381 (<= testedPSize!143 0))))

(declare-fun b!2793523 () Bool)

(assert (=> b!2793523 (= e!1763869 (drop!1736 (t!228639 lt!998237) (- testedPSize!143 1)))))

(declare-fun b!2793524 () Bool)

(declare-fun e!1763866 () List!32487)

(assert (=> b!2793524 (= e!1763866 Nil!32387)))

(declare-fun b!2793525 () Bool)

(assert (=> b!2793525 (= e!1763866 e!1763869)))

(declare-fun c!453380 () Bool)

(assert (=> b!2793525 (= c!453380 (<= testedPSize!143 0))))

(declare-fun d!812277 () Bool)

(assert (=> d!812277 e!1763865))

(declare-fun res!1165007 () Bool)

(assert (=> d!812277 (=> (not res!1165007) (not e!1763865))))

(assert (=> d!812277 (= res!1165007 (= ((_ map implies) (content!4531 lt!998312) (content!4531 lt!998237)) ((as const (InoxSet C!16520)) true)))))

(assert (=> d!812277 (= lt!998312 e!1763866)))

(declare-fun c!453382 () Bool)

(assert (=> d!812277 (= c!453382 ((_ is Nil!32387) lt!998237))))

(assert (=> d!812277 (= (drop!1736 lt!998237 testedPSize!143) lt!998312)))

(declare-fun b!2793526 () Bool)

(assert (=> b!2793526 (= e!1763868 0)))

(declare-fun bm!182731 () Bool)

(assert (=> bm!182731 (= call!182736 (size!25227 lt!998237))))

(assert (= (and d!812277 c!453382) b!2793524))

(assert (= (and d!812277 (not c!453382)) b!2793525))

(assert (= (and b!2793525 c!453380) b!2793520))

(assert (= (and b!2793525 (not c!453380)) b!2793523))

(assert (= (and d!812277 res!1165007) b!2793522))

(assert (= (and b!2793522 c!453381) b!2793521))

(assert (= (and b!2793522 (not c!453381)) b!2793518))

(assert (= (and b!2793518 c!453383) b!2793526))

(assert (= (and b!2793518 (not c!453383)) b!2793519))

(assert (= (or b!2793521 b!2793518 b!2793519) bm!182731))

(declare-fun m!3223807 () Bool)

(assert (=> b!2793522 m!3223807))

(declare-fun m!3223809 () Bool)

(assert (=> b!2793523 m!3223809))

(declare-fun m!3223811 () Bool)

(assert (=> d!812277 m!3223811))

(declare-fun m!3223813 () Bool)

(assert (=> d!812277 m!3223813))

(assert (=> bm!182731 m!3223699))

(assert (=> b!2793406 d!812277))

(declare-fun d!812279 () Bool)

(assert (=> d!812279 (= (head!6184 (drop!1736 lt!998237 testedPSize!143)) (apply!7571 lt!998237 testedPSize!143))))

(declare-fun lt!998315 () Unit!46564)

(declare-fun choose!16428 (List!32487 Int) Unit!46564)

(assert (=> d!812279 (= lt!998315 (choose!16428 lt!998237 testedPSize!143))))

(declare-fun e!1763872 () Bool)

(assert (=> d!812279 e!1763872))

(declare-fun res!1165010 () Bool)

(assert (=> d!812279 (=> (not res!1165010) (not e!1763872))))

(assert (=> d!812279 (= res!1165010 (>= testedPSize!143 0))))

(assert (=> d!812279 (= (lemmaDropApply!940 lt!998237 testedPSize!143) lt!998315)))

(declare-fun b!2793529 () Bool)

(assert (=> b!2793529 (= e!1763872 (< testedPSize!143 (size!25227 lt!998237)))))

(assert (= (and d!812279 res!1165010) b!2793529))

(assert (=> d!812279 m!3223677))

(assert (=> d!812279 m!3223677))

(assert (=> d!812279 m!3223679))

(assert (=> d!812279 m!3223673))

(declare-fun m!3223815 () Bool)

(assert (=> d!812279 m!3223815))

(assert (=> b!2793529 m!3223699))

(assert (=> b!2793406 d!812279))

(declare-fun b!2793538 () Bool)

(declare-fun e!1763879 () Bool)

(declare-fun tp!887842 () Bool)

(assert (=> b!2793538 (= e!1763879 tp!887842)))

(declare-fun b!2793539 () Bool)

(declare-fun setRes!24009 () Bool)

(declare-fun tp!887846 () Bool)

(declare-fun tp!887843 () Bool)

(declare-fun e!1763881 () Bool)

(assert (=> b!2793539 (= e!1763881 (and tp!887843 (inv!43993 (_2!19457 (_1!19458 (h!37809 mapDefault!18012)))) e!1763879 tp_is_empty!14175 setRes!24009 tp!887846))))

(declare-fun condSetEmpty!24009 () Bool)

(assert (=> b!2793539 (= condSetEmpty!24009 (= (_2!19458 (h!37809 mapDefault!18012)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24009 () Bool)

(assert (=> setIsEmpty!24009 setRes!24009))

(declare-fun b!2793540 () Bool)

(declare-fun e!1763880 () Bool)

(declare-fun tp!887844 () Bool)

(assert (=> b!2793540 (= e!1763880 tp!887844)))

(assert (=> b!2793410 (= tp!887815 e!1763881)))

(declare-fun tp!887845 () Bool)

(declare-fun setNonEmpty!24009 () Bool)

(declare-fun setElem!24009 () Context!4798)

(assert (=> setNonEmpty!24009 (= setRes!24009 (and tp!887845 (inv!43993 setElem!24009) e!1763880))))

(declare-fun setRest!24009 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24009 (= (_2!19458 (h!37809 mapDefault!18012)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24009 true) setRest!24009))))

(assert (= b!2793539 b!2793538))

(assert (= (and b!2793539 condSetEmpty!24009) setIsEmpty!24009))

(assert (= (and b!2793539 (not condSetEmpty!24009)) setNonEmpty!24009))

(assert (= setNonEmpty!24009 b!2793540))

(assert (= (and b!2793410 ((_ is Cons!32389) mapDefault!18012)) b!2793539))

(declare-fun m!3223817 () Bool)

(assert (=> b!2793539 m!3223817))

(declare-fun m!3223819 () Bool)

(assert (=> setNonEmpty!24009 m!3223819))

(declare-fun b!2793549 () Bool)

(declare-fun e!1763888 () Bool)

(declare-fun tp!887855 () Bool)

(assert (=> b!2793549 (= e!1763888 tp!887855)))

(declare-fun setRes!24012 () Bool)

(declare-fun tp!887858 () Bool)

(declare-fun setElem!24012 () Context!4798)

(declare-fun setNonEmpty!24012 () Bool)

(assert (=> setNonEmpty!24012 (= setRes!24012 (and tp!887858 (inv!43993 setElem!24012) e!1763888))))

(declare-fun setRest!24012 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24012 (= (_2!19460 (h!37810 mapDefault!18011)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24012 true) setRest!24012))))

(declare-fun e!1763889 () Bool)

(assert (=> b!2793397 (= tp!887817 e!1763889)))

(declare-fun setIsEmpty!24012 () Bool)

(assert (=> setIsEmpty!24012 setRes!24012))

(declare-fun b!2793550 () Bool)

(declare-fun e!1763890 () Bool)

(declare-fun tp!887857 () Bool)

(assert (=> b!2793550 (= e!1763890 tp!887857)))

(declare-fun b!2793551 () Bool)

(declare-fun tp!887856 () Bool)

(assert (=> b!2793551 (= e!1763889 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 mapDefault!18011)))) e!1763890 tp_is_empty!14175 setRes!24012 tp!887856))))

(declare-fun condSetEmpty!24012 () Bool)

(assert (=> b!2793551 (= condSetEmpty!24012 (= (_2!19460 (h!37810 mapDefault!18011)) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793551 b!2793550))

(assert (= (and b!2793551 condSetEmpty!24012) setIsEmpty!24012))

(assert (= (and b!2793551 (not condSetEmpty!24012)) setNonEmpty!24012))

(assert (= setNonEmpty!24012 b!2793549))

(assert (= (and b!2793397 ((_ is Cons!32390) mapDefault!18011)) b!2793551))

(declare-fun m!3223821 () Bool)

(assert (=> setNonEmpty!24012 m!3223821))

(declare-fun m!3223823 () Bool)

(assert (=> b!2793551 m!3223823))

(declare-fun tp!887867 () Bool)

(declare-fun b!2793560 () Bool)

(declare-fun e!1763895 () Bool)

(declare-fun tp!887866 () Bool)

(assert (=> b!2793560 (= e!1763895 (and (inv!43994 (left!24532 (c!453343 totalInput!758))) tp!887866 (inv!43994 (right!24862 (c!453343 totalInput!758))) tp!887867))))

(declare-fun b!2793562 () Bool)

(declare-fun e!1763896 () Bool)

(declare-fun tp!887865 () Bool)

(assert (=> b!2793562 (= e!1763896 tp!887865)))

(declare-fun b!2793561 () Bool)

(declare-fun inv!44000 (IArray!20097) Bool)

(assert (=> b!2793561 (= e!1763895 (and (inv!44000 (xs!13158 (c!453343 totalInput!758))) e!1763896))))

(assert (=> b!2793409 (= tp!887823 (and (inv!43994 (c!453343 totalInput!758)) e!1763895))))

(assert (= (and b!2793409 ((_ is Node!10046) (c!453343 totalInput!758))) b!2793560))

(assert (= b!2793561 b!2793562))

(assert (= (and b!2793409 ((_ is Leaf!15305) (c!453343 totalInput!758))) b!2793561))

(declare-fun m!3223825 () Bool)

(assert (=> b!2793560 m!3223825))

(declare-fun m!3223827 () Bool)

(assert (=> b!2793560 m!3223827))

(declare-fun m!3223829 () Bool)

(assert (=> b!2793561 m!3223829))

(assert (=> b!2793409 m!3223617))

(declare-fun b!2793567 () Bool)

(declare-fun e!1763899 () Bool)

(declare-fun tp!887870 () Bool)

(assert (=> b!2793567 (= e!1763899 (and tp_is_empty!14175 tp!887870))))

(assert (=> b!2793391 (= tp!887828 e!1763899)))

(assert (= (and b!2793391 ((_ is Cons!32387) (t!228639 testedSuffix!143))) b!2793567))

(declare-fun b!2793568 () Bool)

(declare-fun e!1763900 () Bool)

(declare-fun tp!887871 () Bool)

(assert (=> b!2793568 (= e!1763900 tp!887871)))

(declare-fun setElem!24013 () Context!4798)

(declare-fun setRes!24013 () Bool)

(declare-fun tp!887874 () Bool)

(declare-fun setNonEmpty!24013 () Bool)

(assert (=> setNonEmpty!24013 (= setRes!24013 (and tp!887874 (inv!43993 setElem!24013) e!1763900))))

(declare-fun setRest!24013 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24013 (= (_2!19460 (h!37810 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24013 true) setRest!24013))))

(declare-fun e!1763901 () Bool)

(assert (=> b!2793395 (= tp!887829 e!1763901)))

(declare-fun setIsEmpty!24013 () Bool)

(assert (=> setIsEmpty!24013 setRes!24013))

(declare-fun b!2793569 () Bool)

(declare-fun e!1763902 () Bool)

(declare-fun tp!887873 () Bool)

(assert (=> b!2793569 (= e!1763902 tp!887873)))

(declare-fun b!2793570 () Bool)

(declare-fun tp!887872 () Bool)

(assert (=> b!2793570 (= e!1763901 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))) e!1763902 tp_is_empty!14175 setRes!24013 tp!887872))))

(declare-fun condSetEmpty!24013 () Bool)

(assert (=> b!2793570 (= condSetEmpty!24013 (= (_2!19460 (h!37810 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793570 b!2793569))

(assert (= (and b!2793570 condSetEmpty!24013) setIsEmpty!24013))

(assert (= (and b!2793570 (not condSetEmpty!24013)) setNonEmpty!24013))

(assert (= setNonEmpty!24013 b!2793568))

(assert (= (and b!2793395 ((_ is Cons!32390) (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))) b!2793570))

(declare-fun m!3223831 () Bool)

(assert (=> setNonEmpty!24013 m!3223831))

(declare-fun m!3223833 () Bool)

(assert (=> b!2793570 m!3223833))

(declare-fun b!2793571 () Bool)

(declare-fun e!1763903 () Bool)

(declare-fun tp!887875 () Bool)

(assert (=> b!2793571 (= e!1763903 tp!887875)))

(declare-fun setElem!24014 () Context!4798)

(declare-fun setRes!24014 () Bool)

(declare-fun tp!887878 () Bool)

(declare-fun setNonEmpty!24014 () Bool)

(assert (=> setNonEmpty!24014 (= setRes!24014 (and tp!887878 (inv!43993 setElem!24014) e!1763903))))

(declare-fun setRest!24014 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24014 (= (_2!19460 (h!37810 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24014 true) setRest!24014))))

(declare-fun e!1763904 () Bool)

(assert (=> b!2793395 (= tp!887821 e!1763904)))

(declare-fun setIsEmpty!24014 () Bool)

(assert (=> setIsEmpty!24014 setRes!24014))

(declare-fun b!2793572 () Bool)

(declare-fun e!1763905 () Bool)

(declare-fun tp!887877 () Bool)

(assert (=> b!2793572 (= e!1763905 tp!887877)))

(declare-fun b!2793573 () Bool)

(declare-fun tp!887876 () Bool)

(assert (=> b!2793573 (= e!1763904 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))) e!1763905 tp_is_empty!14175 setRes!24014 tp!887876))))

(declare-fun condSetEmpty!24014 () Bool)

(assert (=> b!2793573 (= condSetEmpty!24014 (= (_2!19460 (h!37810 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793573 b!2793572))

(assert (= (and b!2793573 condSetEmpty!24014) setIsEmpty!24014))

(assert (= (and b!2793573 (not condSetEmpty!24014)) setNonEmpty!24014))

(assert (= setNonEmpty!24014 b!2793571))

(assert (= (and b!2793395 ((_ is Cons!32390) (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))) b!2793573))

(declare-fun m!3223835 () Bool)

(assert (=> setNonEmpty!24014 m!3223835))

(declare-fun m!3223837 () Bool)

(assert (=> b!2793573 m!3223837))

(declare-fun b!2793588 () Bool)

(declare-fun e!1763922 () Bool)

(declare-fun tp!887902 () Bool)

(assert (=> b!2793588 (= e!1763922 tp!887902)))

(declare-fun e!1763921 () Bool)

(declare-fun tp!887911 () Bool)

(declare-fun setRes!24019 () Bool)

(declare-fun setNonEmpty!24019 () Bool)

(declare-fun setElem!24019 () Context!4798)

(assert (=> setNonEmpty!24019 (= setRes!24019 (and tp!887911 (inv!43993 setElem!24019) e!1763921))))

(declare-fun mapDefault!18015 () List!32489)

(declare-fun setRest!24020 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24019 (= (_2!19458 (h!37809 mapDefault!18015)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24019 true) setRest!24020))))

(declare-fun setIsEmpty!24019 () Bool)

(assert (=> setIsEmpty!24019 setRes!24019))

(declare-fun b!2793589 () Bool)

(declare-fun tp!887903 () Bool)

(assert (=> b!2793589 (= e!1763921 tp!887903)))

(declare-fun mapIsEmpty!18015 () Bool)

(declare-fun mapRes!18015 () Bool)

(assert (=> mapIsEmpty!18015 mapRes!18015))

(declare-fun e!1763918 () Bool)

(declare-fun tp!887901 () Bool)

(declare-fun tp!887905 () Bool)

(declare-fun setRes!24020 () Bool)

(declare-fun b!2793590 () Bool)

(declare-fun mapValue!18015 () List!32489)

(assert (=> b!2793590 (= e!1763918 (and tp!887905 (inv!43993 (_2!19457 (_1!19458 (h!37809 mapValue!18015)))) e!1763922 tp_is_empty!14175 setRes!24020 tp!887901))))

(declare-fun condSetEmpty!24019 () Bool)

(assert (=> b!2793590 (= condSetEmpty!24019 (= (_2!19458 (h!37809 mapValue!18015)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun b!2793591 () Bool)

(declare-fun e!1763923 () Bool)

(declare-fun tp!887907 () Bool)

(declare-fun e!1763920 () Bool)

(declare-fun tp!887908 () Bool)

(assert (=> b!2793591 (= e!1763920 (and tp!887907 (inv!43993 (_2!19457 (_1!19458 (h!37809 mapDefault!18015)))) e!1763923 tp_is_empty!14175 setRes!24019 tp!887908))))

(declare-fun condSetEmpty!24020 () Bool)

(assert (=> b!2793591 (= condSetEmpty!24020 (= (_2!19458 (h!37809 mapDefault!18015)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setElem!24020 () Context!4798)

(declare-fun tp!887904 () Bool)

(declare-fun e!1763919 () Bool)

(declare-fun setNonEmpty!24020 () Bool)

(assert (=> setNonEmpty!24020 (= setRes!24020 (and tp!887904 (inv!43993 setElem!24020) e!1763919))))

(declare-fun setRest!24019 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24020 (= (_2!19458 (h!37809 mapValue!18015)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24020 true) setRest!24019))))

(declare-fun b!2793592 () Bool)

(declare-fun tp!887910 () Bool)

(assert (=> b!2793592 (= e!1763923 tp!887910)))

(declare-fun b!2793593 () Bool)

(declare-fun tp!887909 () Bool)

(assert (=> b!2793593 (= e!1763919 tp!887909)))

(declare-fun setIsEmpty!24020 () Bool)

(assert (=> setIsEmpty!24020 setRes!24020))

(declare-fun condMapEmpty!18015 () Bool)

(assert (=> mapNonEmpty!18011 (= condMapEmpty!18015 (= mapRest!18011 ((as const (Array (_ BitVec 32) List!32489)) mapDefault!18015)))))

(assert (=> mapNonEmpty!18011 (= tp!887820 (and e!1763920 mapRes!18015))))

(declare-fun mapNonEmpty!18015 () Bool)

(declare-fun tp!887906 () Bool)

(assert (=> mapNonEmpty!18015 (= mapRes!18015 (and tp!887906 e!1763918))))

(declare-fun mapKey!18015 () (_ BitVec 32))

(declare-fun mapRest!18015 () (Array (_ BitVec 32) List!32489))

(assert (=> mapNonEmpty!18015 (= mapRest!18011 (store mapRest!18015 mapKey!18015 mapValue!18015))))

(assert (= (and mapNonEmpty!18011 condMapEmpty!18015) mapIsEmpty!18015))

(assert (= (and mapNonEmpty!18011 (not condMapEmpty!18015)) mapNonEmpty!18015))

(assert (= b!2793590 b!2793588))

(assert (= (and b!2793590 condSetEmpty!24019) setIsEmpty!24020))

(assert (= (and b!2793590 (not condSetEmpty!24019)) setNonEmpty!24020))

(assert (= setNonEmpty!24020 b!2793593))

(assert (= (and mapNonEmpty!18015 ((_ is Cons!32389) mapValue!18015)) b!2793590))

(assert (= b!2793591 b!2793592))

(assert (= (and b!2793591 condSetEmpty!24020) setIsEmpty!24019))

(assert (= (and b!2793591 (not condSetEmpty!24020)) setNonEmpty!24019))

(assert (= setNonEmpty!24019 b!2793589))

(assert (= (and mapNonEmpty!18011 ((_ is Cons!32389) mapDefault!18015)) b!2793591))

(declare-fun m!3223839 () Bool)

(assert (=> b!2793590 m!3223839))

(declare-fun m!3223841 () Bool)

(assert (=> mapNonEmpty!18015 m!3223841))

(declare-fun m!3223843 () Bool)

(assert (=> b!2793591 m!3223843))

(declare-fun m!3223845 () Bool)

(assert (=> setNonEmpty!24020 m!3223845))

(declare-fun m!3223847 () Bool)

(assert (=> setNonEmpty!24019 m!3223847))

(declare-fun b!2793594 () Bool)

(declare-fun e!1763924 () Bool)

(declare-fun tp!887912 () Bool)

(assert (=> b!2793594 (= e!1763924 tp!887912)))

(declare-fun e!1763926 () Bool)

(declare-fun tp!887913 () Bool)

(declare-fun b!2793595 () Bool)

(declare-fun tp!887916 () Bool)

(declare-fun setRes!24021 () Bool)

(assert (=> b!2793595 (= e!1763926 (and tp!887913 (inv!43993 (_2!19457 (_1!19458 (h!37809 mapValue!18012)))) e!1763924 tp_is_empty!14175 setRes!24021 tp!887916))))

(declare-fun condSetEmpty!24021 () Bool)

(assert (=> b!2793595 (= condSetEmpty!24021 (= (_2!19458 (h!37809 mapValue!18012)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24021 () Bool)

(assert (=> setIsEmpty!24021 setRes!24021))

(declare-fun b!2793596 () Bool)

(declare-fun e!1763925 () Bool)

(declare-fun tp!887914 () Bool)

(assert (=> b!2793596 (= e!1763925 tp!887914)))

(assert (=> mapNonEmpty!18011 (= tp!887816 e!1763926)))

(declare-fun setElem!24021 () Context!4798)

(declare-fun tp!887915 () Bool)

(declare-fun setNonEmpty!24021 () Bool)

(assert (=> setNonEmpty!24021 (= setRes!24021 (and tp!887915 (inv!43993 setElem!24021) e!1763925))))

(declare-fun setRest!24021 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24021 (= (_2!19458 (h!37809 mapValue!18012)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24021 true) setRest!24021))))

(assert (= b!2793595 b!2793594))

(assert (= (and b!2793595 condSetEmpty!24021) setIsEmpty!24021))

(assert (= (and b!2793595 (not condSetEmpty!24021)) setNonEmpty!24021))

(assert (= setNonEmpty!24021 b!2793596))

(assert (= (and mapNonEmpty!18011 ((_ is Cons!32389) mapValue!18012)) b!2793595))

(declare-fun m!3223849 () Bool)

(assert (=> b!2793595 m!3223849))

(declare-fun m!3223851 () Bool)

(assert (=> setNonEmpty!24021 m!3223851))

(declare-fun b!2793597 () Bool)

(declare-fun e!1763927 () Bool)

(declare-fun tp!887917 () Bool)

(assert (=> b!2793597 (= e!1763927 tp!887917)))

(declare-fun tp!887921 () Bool)

(declare-fun e!1763929 () Bool)

(declare-fun setRes!24022 () Bool)

(declare-fun tp!887918 () Bool)

(declare-fun b!2793598 () Bool)

(assert (=> b!2793598 (= e!1763929 (and tp!887918 (inv!43993 (_2!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))) e!1763927 tp_is_empty!14175 setRes!24022 tp!887921))))

(declare-fun condSetEmpty!24022 () Bool)

(assert (=> b!2793598 (= condSetEmpty!24022 (= (_2!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24022 () Bool)

(assert (=> setIsEmpty!24022 setRes!24022))

(declare-fun b!2793599 () Bool)

(declare-fun e!1763928 () Bool)

(declare-fun tp!887919 () Bool)

(assert (=> b!2793599 (= e!1763928 tp!887919)))

(assert (=> b!2793402 (= tp!887830 e!1763929)))

(declare-fun tp!887920 () Bool)

(declare-fun setElem!24022 () Context!4798)

(declare-fun setNonEmpty!24022 () Bool)

(assert (=> setNonEmpty!24022 (= setRes!24022 (and tp!887920 (inv!43993 setElem!24022) e!1763928))))

(declare-fun setRest!24022 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24022 (= (_2!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24022 true) setRest!24022))))

(assert (= b!2793598 b!2793597))

(assert (= (and b!2793598 condSetEmpty!24022) setIsEmpty!24022))

(assert (= (and b!2793598 (not condSetEmpty!24022)) setNonEmpty!24022))

(assert (= setNonEmpty!24022 b!2793599))

(assert (= (and b!2793402 ((_ is Cons!32389) (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))) b!2793598))

(declare-fun m!3223853 () Bool)

(assert (=> b!2793598 m!3223853))

(declare-fun m!3223855 () Bool)

(assert (=> setNonEmpty!24022 m!3223855))

(declare-fun b!2793600 () Bool)

(declare-fun e!1763930 () Bool)

(declare-fun tp!887922 () Bool)

(assert (=> b!2793600 (= e!1763930 tp!887922)))

(declare-fun tp!887926 () Bool)

(declare-fun b!2793601 () Bool)

(declare-fun e!1763932 () Bool)

(declare-fun tp!887923 () Bool)

(declare-fun setRes!24023 () Bool)

(assert (=> b!2793601 (= e!1763932 (and tp!887923 (inv!43993 (_2!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))) e!1763930 tp_is_empty!14175 setRes!24023 tp!887926))))

(declare-fun condSetEmpty!24023 () Bool)

(assert (=> b!2793601 (= condSetEmpty!24023 (= (_2!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24023 () Bool)

(assert (=> setIsEmpty!24023 setRes!24023))

(declare-fun b!2793602 () Bool)

(declare-fun e!1763931 () Bool)

(declare-fun tp!887924 () Bool)

(assert (=> b!2793602 (= e!1763931 tp!887924)))

(assert (=> b!2793402 (= tp!887825 e!1763932)))

(declare-fun setElem!24023 () Context!4798)

(declare-fun setNonEmpty!24023 () Bool)

(declare-fun tp!887925 () Bool)

(assert (=> setNonEmpty!24023 (= setRes!24023 (and tp!887925 (inv!43993 setElem!24023) e!1763931))))

(declare-fun setRest!24023 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24023 (= (_2!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24023 true) setRest!24023))))

(assert (= b!2793601 b!2793600))

(assert (= (and b!2793601 condSetEmpty!24023) setIsEmpty!24023))

(assert (= (and b!2793601 (not condSetEmpty!24023)) setNonEmpty!24023))

(assert (= setNonEmpty!24023 b!2793602))

(assert (= (and b!2793402 ((_ is Cons!32389) (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))) b!2793601))

(declare-fun m!3223857 () Bool)

(assert (=> b!2793601 m!3223857))

(declare-fun m!3223859 () Bool)

(assert (=> setNonEmpty!24023 m!3223859))

(declare-fun b!2793603 () Bool)

(declare-fun e!1763933 () Bool)

(declare-fun tp!887927 () Bool)

(assert (=> b!2793603 (= e!1763933 (and tp_is_empty!14175 tp!887927))))

(assert (=> b!2793398 (= tp!887824 e!1763933)))

(assert (= (and b!2793398 ((_ is Cons!32387) (t!228639 testedP!183))) b!2793603))

(declare-fun b!2793618 () Bool)

(declare-fun e!1763951 () Bool)

(declare-fun tp!887952 () Bool)

(assert (=> b!2793618 (= e!1763951 tp!887952)))

(declare-fun b!2793619 () Bool)

(declare-fun e!1763946 () Bool)

(declare-fun tp!887950 () Bool)

(assert (=> b!2793619 (= e!1763946 tp!887950)))

(declare-fun setElem!24028 () Context!4798)

(declare-fun tp!887954 () Bool)

(declare-fun setRes!24028 () Bool)

(declare-fun setNonEmpty!24028 () Bool)

(assert (=> setNonEmpty!24028 (= setRes!24028 (and tp!887954 (inv!43993 setElem!24028) e!1763951))))

(declare-fun mapDefault!18018 () List!32490)

(declare-fun setRest!24028 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24028 (= (_2!19460 (h!37810 mapDefault!18018)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24028 true) setRest!24028))))

(declare-fun e!1763947 () Bool)

(declare-fun e!1763949 () Bool)

(declare-fun b!2793620 () Bool)

(declare-fun tp!887953 () Bool)

(assert (=> b!2793620 (= e!1763947 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 mapDefault!18018)))) e!1763949 tp_is_empty!14175 setRes!24028 tp!887953))))

(declare-fun condSetEmpty!24028 () Bool)

(assert (=> b!2793620 (= condSetEmpty!24028 (= (_2!19460 (h!37810 mapDefault!18018)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun mapNonEmpty!18018 () Bool)

(declare-fun mapRes!18018 () Bool)

(declare-fun tp!887951 () Bool)

(declare-fun e!1763950 () Bool)

(assert (=> mapNonEmpty!18018 (= mapRes!18018 (and tp!887951 e!1763950))))

(declare-fun mapRest!18018 () (Array (_ BitVec 32) List!32490))

(declare-fun mapKey!18018 () (_ BitVec 32))

(declare-fun mapValue!18018 () List!32490)

(assert (=> mapNonEmpty!18018 (= mapRest!18012 (store mapRest!18018 mapKey!18018 mapValue!18018))))

(declare-fun b!2793621 () Bool)

(declare-fun tp!887949 () Bool)

(assert (=> b!2793621 (= e!1763949 tp!887949)))

(declare-fun b!2793622 () Bool)

(declare-fun e!1763948 () Bool)

(declare-fun tp!887947 () Bool)

(assert (=> b!2793622 (= e!1763948 tp!887947)))

(declare-fun setIsEmpty!24028 () Bool)

(assert (=> setIsEmpty!24028 setRes!24028))

(declare-fun condMapEmpty!18018 () Bool)

(assert (=> mapNonEmpty!18012 (= condMapEmpty!18018 (= mapRest!18012 ((as const (Array (_ BitVec 32) List!32490)) mapDefault!18018)))))

(assert (=> mapNonEmpty!18012 (= tp!887831 (and e!1763947 mapRes!18018))))

(declare-fun mapIsEmpty!18018 () Bool)

(assert (=> mapIsEmpty!18018 mapRes!18018))

(declare-fun setIsEmpty!24029 () Bool)

(declare-fun setRes!24029 () Bool)

(assert (=> setIsEmpty!24029 setRes!24029))

(declare-fun setNonEmpty!24029 () Bool)

(declare-fun tp!887946 () Bool)

(declare-fun setElem!24029 () Context!4798)

(assert (=> setNonEmpty!24029 (= setRes!24029 (and tp!887946 (inv!43993 setElem!24029) e!1763946))))

(declare-fun setRest!24029 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24029 (= (_2!19460 (h!37810 mapValue!18018)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24029 true) setRest!24029))))

(declare-fun b!2793623 () Bool)

(declare-fun tp!887948 () Bool)

(assert (=> b!2793623 (= e!1763950 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 mapValue!18018)))) e!1763948 tp_is_empty!14175 setRes!24029 tp!887948))))

(declare-fun condSetEmpty!24029 () Bool)

(assert (=> b!2793623 (= condSetEmpty!24029 (= (_2!19460 (h!37810 mapValue!18018)) ((as const (Array Context!4798 Bool)) false)))))

(assert (= (and mapNonEmpty!18012 condMapEmpty!18018) mapIsEmpty!18018))

(assert (= (and mapNonEmpty!18012 (not condMapEmpty!18018)) mapNonEmpty!18018))

(assert (= b!2793623 b!2793622))

(assert (= (and b!2793623 condSetEmpty!24029) setIsEmpty!24029))

(assert (= (and b!2793623 (not condSetEmpty!24029)) setNonEmpty!24029))

(assert (= setNonEmpty!24029 b!2793619))

(assert (= (and mapNonEmpty!18018 ((_ is Cons!32390) mapValue!18018)) b!2793623))

(assert (= b!2793620 b!2793621))

(assert (= (and b!2793620 condSetEmpty!24028) setIsEmpty!24028))

(assert (= (and b!2793620 (not condSetEmpty!24028)) setNonEmpty!24028))

(assert (= setNonEmpty!24028 b!2793618))

(assert (= (and mapNonEmpty!18012 ((_ is Cons!32390) mapDefault!18018)) b!2793620))

(declare-fun m!3223861 () Bool)

(assert (=> setNonEmpty!24029 m!3223861))

(declare-fun m!3223863 () Bool)

(assert (=> setNonEmpty!24028 m!3223863))

(declare-fun m!3223865 () Bool)

(assert (=> b!2793620 m!3223865))

(declare-fun m!3223867 () Bool)

(assert (=> b!2793623 m!3223867))

(declare-fun m!3223869 () Bool)

(assert (=> mapNonEmpty!18018 m!3223869))

(declare-fun b!2793624 () Bool)

(declare-fun e!1763952 () Bool)

(declare-fun tp!887955 () Bool)

(assert (=> b!2793624 (= e!1763952 tp!887955)))

(declare-fun setRes!24030 () Bool)

(declare-fun tp!887958 () Bool)

(declare-fun setElem!24030 () Context!4798)

(declare-fun setNonEmpty!24030 () Bool)

(assert (=> setNonEmpty!24030 (= setRes!24030 (and tp!887958 (inv!43993 setElem!24030) e!1763952))))

(declare-fun setRest!24030 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24030 (= (_2!19460 (h!37810 mapValue!18011)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24030 true) setRest!24030))))

(declare-fun e!1763953 () Bool)

(assert (=> mapNonEmpty!18012 (= tp!887814 e!1763953)))

(declare-fun setIsEmpty!24030 () Bool)

(assert (=> setIsEmpty!24030 setRes!24030))

(declare-fun b!2793625 () Bool)

(declare-fun e!1763954 () Bool)

(declare-fun tp!887957 () Bool)

(assert (=> b!2793625 (= e!1763954 tp!887957)))

(declare-fun b!2793626 () Bool)

(declare-fun tp!887956 () Bool)

(assert (=> b!2793626 (= e!1763953 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 mapValue!18011)))) e!1763954 tp_is_empty!14175 setRes!24030 tp!887956))))

(declare-fun condSetEmpty!24030 () Bool)

(assert (=> b!2793626 (= condSetEmpty!24030 (= (_2!19460 (h!37810 mapValue!18011)) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793626 b!2793625))

(assert (= (and b!2793626 condSetEmpty!24030) setIsEmpty!24030))

(assert (= (and b!2793626 (not condSetEmpty!24030)) setNonEmpty!24030))

(assert (= setNonEmpty!24030 b!2793624))

(assert (= (and mapNonEmpty!18012 ((_ is Cons!32390) mapValue!18011)) b!2793626))

(declare-fun m!3223871 () Bool)

(assert (=> setNonEmpty!24030 m!3223871))

(declare-fun m!3223873 () Bool)

(assert (=> b!2793626 m!3223873))

(declare-fun b!2793631 () Bool)

(declare-fun e!1763957 () Bool)

(declare-fun tp!887963 () Bool)

(declare-fun tp!887964 () Bool)

(assert (=> b!2793631 (= e!1763957 (and tp!887963 tp!887964))))

(assert (=> b!2793405 (= tp!887813 e!1763957)))

(assert (= (and b!2793405 ((_ is Cons!32388) (exprs!2899 setElem!24006))) b!2793631))

(declare-fun condSetEmpty!24033 () Bool)

(assert (=> setNonEmpty!24006 (= condSetEmpty!24033 (= setRest!24006 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24033 () Bool)

(assert (=> setNonEmpty!24006 (= tp!887819 setRes!24033)))

(declare-fun setIsEmpty!24033 () Bool)

(assert (=> setIsEmpty!24033 setRes!24033))

(declare-fun tp!887970 () Bool)

(declare-fun e!1763960 () Bool)

(declare-fun setElem!24033 () Context!4798)

(declare-fun setNonEmpty!24033 () Bool)

(assert (=> setNonEmpty!24033 (= setRes!24033 (and tp!887970 (inv!43993 setElem!24033) e!1763960))))

(declare-fun setRest!24033 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24033 (= setRest!24006 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24033 true) setRest!24033))))

(declare-fun b!2793636 () Bool)

(declare-fun tp!887969 () Bool)

(assert (=> b!2793636 (= e!1763960 tp!887969)))

(assert (= (and setNonEmpty!24006 condSetEmpty!24033) setIsEmpty!24033))

(assert (= (and setNonEmpty!24006 (not condSetEmpty!24033)) setNonEmpty!24033))

(assert (= setNonEmpty!24033 b!2793636))

(declare-fun m!3223875 () Bool)

(assert (=> setNonEmpty!24033 m!3223875))

(check-sat (not b!2793619) (not setNonEmpty!24019) (not b!2793623) (not b!2793589) (not b_next!79783) (not b!2793624) (not b!2793443) (not mapNonEmpty!18018) (not b!2793595) (not b!2793487) (not b!2793529) (not setNonEmpty!24030) (not d!812243) (not b!2793560) (not setNonEmpty!24012) (not b!2793596) (not setNonEmpty!24021) (not b!2793446) (not b!2793442) (not d!812223) (not b!2793597) (not b!2793486) (not b!2793562) (not b!2793452) (not b!2793429) (not b!2793622) (not b!2793570) (not d!812267) (not b!2793479) (not bm!182731) (not b!2793598) (not b!2793603) (not b!2793409) (not b!2793538) (not d!812249) (not b!2793475) (not b!2793625) (not b!2793636) (not d!812239) (not setNonEmpty!24023) (not b!2793567) (not d!812233) (not b!2793490) (not b!2793561) (not b!2793453) (not b!2793600) (not b!2793540) (not d!812259) (not setNonEmpty!24033) (not b!2793441) (not b_next!79787) (not d!812253) (not b!2793594) (not b!2793522) (not d!812265) (not b!2793569) (not setNonEmpty!24014) (not d!812235) tp_is_empty!14175 (not b!2793602) (not d!812247) (not b!2793523) b_and!203819 (not b!2793573) (not b!2793445) (not setNonEmpty!24009) (not b!2793462) (not b!2793465) (not b!2793458) (not b!2793549) (not mapNonEmpty!18015) (not b!2793498) (not d!812269) (not b!2793592) (not b!2793620) (not b!2793499) (not b_next!79781) (not b!2793480) (not setNonEmpty!24022) (not setNonEmpty!24029) (not d!812231) (not d!812257) (not b!2793551) b_and!203817 (not b!2793590) (not d!812277) (not b!2793593) (not setNonEmpty!24020) (not b!2793539) (not b!2793621) (not b!2793631) (not b!2793476) (not b!2793422) (not b!2793599) (not b_next!79785) (not d!812273) (not b!2793618) (not setNonEmpty!24028) (not b!2793431) (not b!2793601) (not d!812225) (not d!812245) (not d!812279) (not b!2793568) (not d!812255) (not bm!182727) b_and!203821 (not bm!182728) (not d!812251) (not b!2793497) (not b!2793447) (not b!2793572) (not b!2793550) (not b!2793571) (not setNonEmpty!24013) (not b!2793591) (not b!2793626) b_and!203815 (not b!2793588))
(check-sat (not b_next!79783) (not b_next!79787) b_and!203819 (not b_next!79781) b_and!203817 (not b_next!79785) b_and!203821 b_and!203815)
(get-model)

(declare-fun d!812281 () Bool)

(declare-fun lt!998316 () C!16520)

(assert (=> d!812281 (contains!6011 (tail!4416 lt!998237) lt!998316)))

(declare-fun e!1763962 () C!16520)

(assert (=> d!812281 (= lt!998316 e!1763962)))

(declare-fun c!453384 () Bool)

(assert (=> d!812281 (= c!453384 (= (- testedPSize!143 1) 0))))

(declare-fun e!1763961 () Bool)

(assert (=> d!812281 e!1763961))

(declare-fun res!1165011 () Bool)

(assert (=> d!812281 (=> (not res!1165011) (not e!1763961))))

(assert (=> d!812281 (= res!1165011 (<= 0 (- testedPSize!143 1)))))

(assert (=> d!812281 (= (apply!7571 (tail!4416 lt!998237) (- testedPSize!143 1)) lt!998316)))

(declare-fun b!2793637 () Bool)

(assert (=> b!2793637 (= e!1763961 (< (- testedPSize!143 1) (size!25227 (tail!4416 lt!998237))))))

(declare-fun b!2793638 () Bool)

(assert (=> b!2793638 (= e!1763962 (head!6184 (tail!4416 lt!998237)))))

(declare-fun b!2793639 () Bool)

(assert (=> b!2793639 (= e!1763962 (apply!7571 (tail!4416 (tail!4416 lt!998237)) (- (- testedPSize!143 1) 1)))))

(assert (= (and d!812281 res!1165011) b!2793637))

(assert (= (and d!812281 c!453384) b!2793638))

(assert (= (and d!812281 (not c!453384)) b!2793639))

(assert (=> d!812281 m!3223695))

(declare-fun m!3223877 () Bool)

(assert (=> d!812281 m!3223877))

(assert (=> b!2793637 m!3223695))

(declare-fun m!3223879 () Bool)

(assert (=> b!2793637 m!3223879))

(assert (=> b!2793638 m!3223695))

(declare-fun m!3223881 () Bool)

(assert (=> b!2793638 m!3223881))

(assert (=> b!2793639 m!3223695))

(declare-fun m!3223883 () Bool)

(assert (=> b!2793639 m!3223883))

(assert (=> b!2793639 m!3223883))

(declare-fun m!3223885 () Bool)

(assert (=> b!2793639 m!3223885))

(assert (=> b!2793499 d!812281))

(declare-fun d!812283 () Bool)

(assert (=> d!812283 (= (tail!4416 lt!998237) (t!228639 lt!998237))))

(assert (=> b!2793499 d!812283))

(declare-fun b!2793651 () Bool)

(declare-fun e!1763968 () List!32487)

(assert (=> b!2793651 (= e!1763968 (++!7994 (list!12177 (left!24532 (c!453343 (_1!19461 lt!998242)))) (list!12177 (right!24862 (c!453343 (_1!19461 lt!998242))))))))

(declare-fun d!812285 () Bool)

(declare-fun c!453389 () Bool)

(assert (=> d!812285 (= c!453389 ((_ is Empty!10046) (c!453343 (_1!19461 lt!998242))))))

(declare-fun e!1763967 () List!32487)

(assert (=> d!812285 (= (list!12177 (c!453343 (_1!19461 lt!998242))) e!1763967)))

(declare-fun b!2793648 () Bool)

(assert (=> b!2793648 (= e!1763967 Nil!32387)))

(declare-fun b!2793650 () Bool)

(declare-fun list!12178 (IArray!20097) List!32487)

(assert (=> b!2793650 (= e!1763968 (list!12178 (xs!13158 (c!453343 (_1!19461 lt!998242)))))))

(declare-fun b!2793649 () Bool)

(assert (=> b!2793649 (= e!1763967 e!1763968)))

(declare-fun c!453390 () Bool)

(assert (=> b!2793649 (= c!453390 ((_ is Leaf!15305) (c!453343 (_1!19461 lt!998242))))))

(assert (= (and d!812285 c!453389) b!2793648))

(assert (= (and d!812285 (not c!453389)) b!2793649))

(assert (= (and b!2793649 c!453390) b!2793650))

(assert (= (and b!2793649 (not c!453390)) b!2793651))

(declare-fun m!3223887 () Bool)

(assert (=> b!2793651 m!3223887))

(declare-fun m!3223889 () Bool)

(assert (=> b!2793651 m!3223889))

(assert (=> b!2793651 m!3223887))

(assert (=> b!2793651 m!3223889))

(declare-fun m!3223891 () Bool)

(assert (=> b!2793651 m!3223891))

(declare-fun m!3223893 () Bool)

(assert (=> b!2793650 m!3223893))

(assert (=> d!812257 d!812285))

(assert (=> d!812279 d!812275))

(assert (=> d!812279 d!812277))

(assert (=> d!812279 d!812269))

(declare-fun d!812287 () Bool)

(assert (=> d!812287 (= (head!6184 (drop!1736 lt!998237 testedPSize!143)) (apply!7571 lt!998237 testedPSize!143))))

(assert (=> d!812287 true))

(declare-fun _$27!826 () Unit!46564)

(assert (=> d!812287 (= (choose!16428 lt!998237 testedPSize!143) _$27!826)))

(declare-fun bs!514280 () Bool)

(assert (= bs!514280 d!812287))

(assert (=> bs!514280 m!3223677))

(assert (=> bs!514280 m!3223677))

(assert (=> bs!514280 m!3223679))

(assert (=> bs!514280 m!3223673))

(assert (=> d!812279 d!812287))

(declare-fun bs!514281 () Bool)

(declare-fun d!812289 () Bool)

(assert (= bs!514281 (and d!812289 d!812249)))

(declare-fun lambda!102576 () Int)

(assert (=> bs!514281 (= lambda!102576 lambda!102575)))

(assert (=> d!812289 (= (inv!43993 setElem!24012) (forall!6682 (exprs!2899 setElem!24012) lambda!102576))))

(declare-fun bs!514282 () Bool)

(assert (= bs!514282 d!812289))

(declare-fun m!3223895 () Bool)

(assert (=> bs!514282 m!3223895))

(assert (=> setNonEmpty!24012 d!812289))

(declare-fun d!812291 () Bool)

(declare-fun lt!998317 () Int)

(assert (=> d!812291 (>= lt!998317 0)))

(declare-fun e!1763969 () Int)

(assert (=> d!812291 (= lt!998317 e!1763969)))

(declare-fun c!453391 () Bool)

(assert (=> d!812291 (= c!453391 ((_ is Nil!32387) lt!998312))))

(assert (=> d!812291 (= (size!25227 lt!998312) lt!998317)))

(declare-fun b!2793652 () Bool)

(assert (=> b!2793652 (= e!1763969 0)))

(declare-fun b!2793653 () Bool)

(assert (=> b!2793653 (= e!1763969 (+ 1 (size!25227 (t!228639 lt!998312))))))

(assert (= (and d!812291 c!453391) b!2793652))

(assert (= (and d!812291 (not c!453391)) b!2793653))

(declare-fun m!3223897 () Bool)

(assert (=> b!2793653 m!3223897))

(assert (=> b!2793522 d!812291))

(declare-fun bs!514283 () Bool)

(declare-fun d!812293 () Bool)

(assert (= bs!514283 (and d!812293 d!812249)))

(declare-fun lambda!102577 () Int)

(assert (=> bs!514283 (= lambda!102577 lambda!102575)))

(declare-fun bs!514284 () Bool)

(assert (= bs!514284 (and d!812293 d!812289)))

(assert (=> bs!514284 (= lambda!102577 lambda!102576)))

(assert (=> d!812293 (= (inv!43993 setElem!24021) (forall!6682 (exprs!2899 setElem!24021) lambda!102577))))

(declare-fun bs!514285 () Bool)

(assert (= bs!514285 d!812293))

(declare-fun m!3223899 () Bool)

(assert (=> bs!514285 m!3223899))

(assert (=> setNonEmpty!24021 d!812293))

(declare-fun d!812295 () Bool)

(declare-fun res!1165018 () Bool)

(declare-fun e!1763972 () Bool)

(assert (=> d!812295 (=> (not res!1165018) (not e!1763972))))

(assert (=> d!812295 (= res!1165018 (= (csize!20322 (c!453343 totalInput!758)) (+ (size!25228 (left!24532 (c!453343 totalInput!758))) (size!25228 (right!24862 (c!453343 totalInput!758))))))))

(assert (=> d!812295 (= (inv!43998 (c!453343 totalInput!758)) e!1763972)))

(declare-fun b!2793660 () Bool)

(declare-fun res!1165019 () Bool)

(assert (=> b!2793660 (=> (not res!1165019) (not e!1763972))))

(assert (=> b!2793660 (= res!1165019 (and (not (= (left!24532 (c!453343 totalInput!758)) Empty!10046)) (not (= (right!24862 (c!453343 totalInput!758)) Empty!10046))))))

(declare-fun b!2793661 () Bool)

(declare-fun res!1165020 () Bool)

(assert (=> b!2793661 (=> (not res!1165020) (not e!1763972))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1495 (Conc!10046) Int)

(assert (=> b!2793661 (= res!1165020 (= (cheight!10257 (c!453343 totalInput!758)) (+ (max!0 (height!1495 (left!24532 (c!453343 totalInput!758))) (height!1495 (right!24862 (c!453343 totalInput!758)))) 1)))))

(declare-fun b!2793662 () Bool)

(assert (=> b!2793662 (= e!1763972 (<= 0 (cheight!10257 (c!453343 totalInput!758))))))

(assert (= (and d!812295 res!1165018) b!2793660))

(assert (= (and b!2793660 res!1165019) b!2793661))

(assert (= (and b!2793661 res!1165020) b!2793662))

(declare-fun m!3223901 () Bool)

(assert (=> d!812295 m!3223901))

(declare-fun m!3223903 () Bool)

(assert (=> d!812295 m!3223903))

(declare-fun m!3223905 () Bool)

(assert (=> b!2793661 m!3223905))

(declare-fun m!3223907 () Bool)

(assert (=> b!2793661 m!3223907))

(assert (=> b!2793661 m!3223905))

(assert (=> b!2793661 m!3223907))

(declare-fun m!3223909 () Bool)

(assert (=> b!2793661 m!3223909))

(assert (=> b!2793429 d!812295))

(declare-fun d!812297 () Bool)

(declare-fun res!1165034 () Bool)

(declare-fun e!1763978 () Bool)

(assert (=> d!812297 (=> res!1165034 e!1763978)))

(assert (=> d!812297 (= res!1165034 (not ((_ is Node!10046) (c!453343 (_2!19461 lt!998300)))))))

(assert (=> d!812297 (= (isBalanced!3064 (c!453343 (_2!19461 lt!998300))) e!1763978)))

(declare-fun b!2793675 () Bool)

(declare-fun res!1165038 () Bool)

(declare-fun e!1763977 () Bool)

(assert (=> b!2793675 (=> (not res!1165038) (not e!1763977))))

(assert (=> b!2793675 (= res!1165038 (isBalanced!3064 (left!24532 (c!453343 (_2!19461 lt!998300)))))))

(declare-fun b!2793676 () Bool)

(declare-fun res!1165035 () Bool)

(assert (=> b!2793676 (=> (not res!1165035) (not e!1763977))))

(assert (=> b!2793676 (= res!1165035 (<= (- (height!1495 (left!24532 (c!453343 (_2!19461 lt!998300)))) (height!1495 (right!24862 (c!453343 (_2!19461 lt!998300))))) 1))))

(declare-fun b!2793677 () Bool)

(declare-fun isEmpty!18127 (Conc!10046) Bool)

(assert (=> b!2793677 (= e!1763977 (not (isEmpty!18127 (right!24862 (c!453343 (_2!19461 lt!998300))))))))

(declare-fun b!2793678 () Bool)

(declare-fun res!1165033 () Bool)

(assert (=> b!2793678 (=> (not res!1165033) (not e!1763977))))

(assert (=> b!2793678 (= res!1165033 (isBalanced!3064 (right!24862 (c!453343 (_2!19461 lt!998300)))))))

(declare-fun b!2793679 () Bool)

(assert (=> b!2793679 (= e!1763978 e!1763977)))

(declare-fun res!1165036 () Bool)

(assert (=> b!2793679 (=> (not res!1165036) (not e!1763977))))

(assert (=> b!2793679 (= res!1165036 (<= (- 1) (- (height!1495 (left!24532 (c!453343 (_2!19461 lt!998300)))) (height!1495 (right!24862 (c!453343 (_2!19461 lt!998300)))))))))

(declare-fun b!2793680 () Bool)

(declare-fun res!1165037 () Bool)

(assert (=> b!2793680 (=> (not res!1165037) (not e!1763977))))

(assert (=> b!2793680 (= res!1165037 (not (isEmpty!18127 (left!24532 (c!453343 (_2!19461 lt!998300))))))))

(assert (= (and d!812297 (not res!1165034)) b!2793679))

(assert (= (and b!2793679 res!1165036) b!2793676))

(assert (= (and b!2793676 res!1165035) b!2793675))

(assert (= (and b!2793675 res!1165038) b!2793678))

(assert (= (and b!2793678 res!1165033) b!2793680))

(assert (= (and b!2793680 res!1165037) b!2793677))

(declare-fun m!3223911 () Bool)

(assert (=> b!2793675 m!3223911))

(declare-fun m!3223913 () Bool)

(assert (=> b!2793677 m!3223913))

(declare-fun m!3223915 () Bool)

(assert (=> b!2793680 m!3223915))

(declare-fun m!3223917 () Bool)

(assert (=> b!2793678 m!3223917))

(declare-fun m!3223919 () Bool)

(assert (=> b!2793679 m!3223919))

(declare-fun m!3223921 () Bool)

(assert (=> b!2793679 m!3223921))

(assert (=> b!2793676 m!3223919))

(assert (=> b!2793676 m!3223921))

(assert (=> b!2793486 d!812297))

(declare-fun b!2793683 () Bool)

(declare-fun res!1165039 () Bool)

(declare-fun e!1763979 () Bool)

(assert (=> b!2793683 (=> (not res!1165039) (not e!1763979))))

(declare-fun lt!998318 () List!32487)

(assert (=> b!2793683 (= res!1165039 (= (size!25227 lt!998318) (+ (size!25227 (t!228639 testedP!183)) (size!25227 testedSuffix!143))))))

(declare-fun b!2793681 () Bool)

(declare-fun e!1763980 () List!32487)

(assert (=> b!2793681 (= e!1763980 testedSuffix!143)))

(declare-fun b!2793684 () Bool)

(assert (=> b!2793684 (= e!1763979 (or (not (= testedSuffix!143 Nil!32387)) (= lt!998318 (t!228639 testedP!183))))))

(declare-fun b!2793682 () Bool)

(assert (=> b!2793682 (= e!1763980 (Cons!32387 (h!37807 (t!228639 testedP!183)) (++!7994 (t!228639 (t!228639 testedP!183)) testedSuffix!143)))))

(declare-fun d!812299 () Bool)

(assert (=> d!812299 e!1763979))

(declare-fun res!1165040 () Bool)

(assert (=> d!812299 (=> (not res!1165040) (not e!1763979))))

(assert (=> d!812299 (= res!1165040 (= (content!4531 lt!998318) ((_ map or) (content!4531 (t!228639 testedP!183)) (content!4531 testedSuffix!143))))))

(assert (=> d!812299 (= lt!998318 e!1763980)))

(declare-fun c!453392 () Bool)

(assert (=> d!812299 (= c!453392 ((_ is Nil!32387) (t!228639 testedP!183)))))

(assert (=> d!812299 (= (++!7994 (t!228639 testedP!183) testedSuffix!143) lt!998318)))

(assert (= (and d!812299 c!453392) b!2793681))

(assert (= (and d!812299 (not c!453392)) b!2793682))

(assert (= (and d!812299 res!1165040) b!2793683))

(assert (= (and b!2793683 res!1165039) b!2793684))

(declare-fun m!3223923 () Bool)

(assert (=> b!2793683 m!3223923))

(assert (=> b!2793683 m!3223687))

(assert (=> b!2793683 m!3223751))

(declare-fun m!3223925 () Bool)

(assert (=> b!2793682 m!3223925))

(declare-fun m!3223927 () Bool)

(assert (=> d!812299 m!3223927))

(declare-fun m!3223929 () Bool)

(assert (=> d!812299 m!3223929))

(assert (=> d!812299 m!3223759))

(assert (=> b!2793475 d!812299))

(declare-fun d!812301 () Bool)

(declare-fun e!1763981 () Bool)

(assert (=> d!812301 e!1763981))

(declare-fun res!1165041 () Bool)

(assert (=> d!812301 (=> res!1165041 e!1763981)))

(declare-fun lt!998319 () Bool)

(assert (=> d!812301 (= res!1165041 (not lt!998319))))

(declare-fun e!1763983 () Bool)

(assert (=> d!812301 (= lt!998319 e!1763983)))

(declare-fun res!1165042 () Bool)

(assert (=> d!812301 (=> res!1165042 e!1763983)))

(assert (=> d!812301 (= res!1165042 ((_ is Nil!32387) testedP!183))))

(assert (=> d!812301 (= (isPrefix!2609 testedP!183 (++!7994 testedP!183 testedSuffix!143)) lt!998319)))

(declare-fun b!2793687 () Bool)

(declare-fun e!1763982 () Bool)

(assert (=> b!2793687 (= e!1763982 (isPrefix!2609 (tail!4416 testedP!183) (tail!4416 (++!7994 testedP!183 testedSuffix!143))))))

(declare-fun b!2793685 () Bool)

(assert (=> b!2793685 (= e!1763983 e!1763982)))

(declare-fun res!1165044 () Bool)

(assert (=> b!2793685 (=> (not res!1165044) (not e!1763982))))

(assert (=> b!2793685 (= res!1165044 (not ((_ is Nil!32387) (++!7994 testedP!183 testedSuffix!143))))))

(declare-fun b!2793688 () Bool)

(assert (=> b!2793688 (= e!1763981 (>= (size!25227 (++!7994 testedP!183 testedSuffix!143)) (size!25227 testedP!183)))))

(declare-fun b!2793686 () Bool)

(declare-fun res!1165043 () Bool)

(assert (=> b!2793686 (=> (not res!1165043) (not e!1763982))))

(assert (=> b!2793686 (= res!1165043 (= (head!6184 testedP!183) (head!6184 (++!7994 testedP!183 testedSuffix!143))))))

(assert (= (and d!812301 (not res!1165042)) b!2793685))

(assert (= (and b!2793685 res!1165044) b!2793686))

(assert (= (and b!2793686 res!1165043) b!2793687))

(assert (= (and d!812301 (not res!1165041)) b!2793688))

(assert (=> b!2793687 m!3223693))

(assert (=> b!2793687 m!3223635))

(declare-fun m!3223931 () Bool)

(assert (=> b!2793687 m!3223931))

(assert (=> b!2793687 m!3223693))

(assert (=> b!2793687 m!3223931))

(declare-fun m!3223933 () Bool)

(assert (=> b!2793687 m!3223933))

(assert (=> b!2793688 m!3223635))

(declare-fun m!3223935 () Bool)

(assert (=> b!2793688 m!3223935))

(assert (=> b!2793688 m!3223667))

(assert (=> b!2793686 m!3223701))

(assert (=> b!2793686 m!3223635))

(declare-fun m!3223937 () Bool)

(assert (=> b!2793686 m!3223937))

(assert (=> d!812223 d!812301))

(assert (=> d!812223 d!812245))

(declare-fun d!812303 () Bool)

(assert (=> d!812303 (isPrefix!2609 testedP!183 (++!7994 testedP!183 testedSuffix!143))))

(assert (=> d!812303 true))

(declare-fun _$46!1407 () Unit!46564)

(assert (=> d!812303 (= (choose!16425 testedP!183 testedSuffix!143) _$46!1407)))

(declare-fun bs!514286 () Bool)

(assert (= bs!514286 d!812303))

(assert (=> bs!514286 m!3223635))

(assert (=> bs!514286 m!3223635))

(assert (=> bs!514286 m!3223713))

(assert (=> d!812223 d!812303))

(declare-fun bs!514287 () Bool)

(declare-fun d!812305 () Bool)

(assert (= bs!514287 (and d!812305 d!812249)))

(declare-fun lambda!102578 () Int)

(assert (=> bs!514287 (= lambda!102578 lambda!102575)))

(declare-fun bs!514288 () Bool)

(assert (= bs!514288 (and d!812305 d!812289)))

(assert (=> bs!514288 (= lambda!102578 lambda!102576)))

(declare-fun bs!514289 () Bool)

(assert (= bs!514289 (and d!812305 d!812293)))

(assert (=> bs!514289 (= lambda!102578 lambda!102577)))

(assert (=> d!812305 (= (inv!43993 setElem!24022) (forall!6682 (exprs!2899 setElem!24022) lambda!102578))))

(declare-fun bs!514290 () Bool)

(assert (= bs!514290 d!812305))

(declare-fun m!3223939 () Bool)

(assert (=> bs!514290 m!3223939))

(assert (=> setNonEmpty!24022 d!812305))

(declare-fun d!812307 () Bool)

(declare-fun res!1165051 () Bool)

(declare-fun e!1763988 () Bool)

(assert (=> d!812307 (=> (not res!1165051) (not e!1763988))))

(declare-fun valid!3100 (MutableMap!3864) Bool)

(assert (=> d!812307 (= res!1165051 (valid!3100 (cache!4007 cacheDown!1009)))))

(assert (=> d!812307 (= (validCacheMapDown!419 (cache!4007 cacheDown!1009)) e!1763988)))

(declare-fun b!2793695 () Bool)

(declare-fun res!1165052 () Bool)

(assert (=> b!2793695 (=> (not res!1165052) (not e!1763988))))

(declare-fun invariantList!460 (List!32489) Bool)

(declare-datatypes ((ListMap!1253 0))(
  ( (ListMap!1254 (toList!1871 List!32489)) )
))
(declare-fun map!7022 (MutableMap!3864) ListMap!1253)

(assert (=> b!2793695 (= res!1165052 (invariantList!460 (toList!1871 (map!7022 (cache!4007 cacheDown!1009)))))))

(declare-fun b!2793696 () Bool)

(declare-fun lambda!102581 () Int)

(declare-fun forall!6683 (List!32489 Int) Bool)

(assert (=> b!2793696 (= e!1763988 (forall!6683 (toList!1871 (map!7022 (cache!4007 cacheDown!1009))) lambda!102581))))

(assert (= (and d!812307 res!1165051) b!2793695))

(assert (= (and b!2793695 res!1165052) b!2793696))

(declare-fun m!3223942 () Bool)

(assert (=> d!812307 m!3223942))

(declare-fun m!3223944 () Bool)

(assert (=> b!2793695 m!3223944))

(declare-fun m!3223946 () Bool)

(assert (=> b!2793695 m!3223946))

(assert (=> b!2793696 m!3223944))

(declare-fun m!3223948 () Bool)

(assert (=> b!2793696 m!3223948))

(assert (=> b!2793465 d!812307))

(declare-fun d!812309 () Bool)

(declare-fun c!453395 () Bool)

(assert (=> d!812309 (= c!453395 ((_ is Nil!32387) lt!998312))))

(declare-fun e!1763991 () (InoxSet C!16520))

(assert (=> d!812309 (= (content!4531 lt!998312) e!1763991)))

(declare-fun b!2793701 () Bool)

(assert (=> b!2793701 (= e!1763991 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793702 () Bool)

(assert (=> b!2793702 (= e!1763991 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 lt!998312) true) (content!4531 (t!228639 lt!998312))))))

(assert (= (and d!812309 c!453395) b!2793701))

(assert (= (and d!812309 (not c!453395)) b!2793702))

(declare-fun m!3223950 () Bool)

(assert (=> b!2793702 m!3223950))

(declare-fun m!3223952 () Bool)

(assert (=> b!2793702 m!3223952))

(assert (=> d!812277 d!812309))

(declare-fun d!812311 () Bool)

(declare-fun c!453396 () Bool)

(assert (=> d!812311 (= c!453396 ((_ is Nil!32387) lt!998237))))

(declare-fun e!1763992 () (InoxSet C!16520))

(assert (=> d!812311 (= (content!4531 lt!998237) e!1763992)))

(declare-fun b!2793703 () Bool)

(assert (=> b!2793703 (= e!1763992 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793704 () Bool)

(assert (=> b!2793704 (= e!1763992 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 lt!998237) true) (content!4531 (t!228639 lt!998237))))))

(assert (= (and d!812311 c!453396) b!2793703))

(assert (= (and d!812311 (not c!453396)) b!2793704))

(declare-fun m!3223954 () Bool)

(assert (=> b!2793704 m!3223954))

(declare-fun m!3223956 () Bool)

(assert (=> b!2793704 m!3223956))

(assert (=> d!812277 d!812311))

(declare-fun bs!514291 () Bool)

(declare-fun d!812313 () Bool)

(assert (= bs!514291 (and d!812313 d!812249)))

(declare-fun lambda!102582 () Int)

(assert (=> bs!514291 (= lambda!102582 lambda!102575)))

(declare-fun bs!514292 () Bool)

(assert (= bs!514292 (and d!812313 d!812289)))

(assert (=> bs!514292 (= lambda!102582 lambda!102576)))

(declare-fun bs!514293 () Bool)

(assert (= bs!514293 (and d!812313 d!812293)))

(assert (=> bs!514293 (= lambda!102582 lambda!102577)))

(declare-fun bs!514294 () Bool)

(assert (= bs!514294 (and d!812313 d!812305)))

(assert (=> bs!514294 (= lambda!102582 lambda!102578)))

(assert (=> d!812313 (= (inv!43993 setElem!24023) (forall!6682 (exprs!2899 setElem!24023) lambda!102582))))

(declare-fun bs!514295 () Bool)

(assert (= bs!514295 d!812313))

(declare-fun m!3223958 () Bool)

(assert (=> bs!514295 m!3223958))

(assert (=> setNonEmpty!24023 d!812313))

(declare-fun bs!514296 () Bool)

(declare-fun d!812315 () Bool)

(assert (= bs!514296 (and d!812315 d!812293)))

(declare-fun lambda!102583 () Int)

(assert (=> bs!514296 (= lambda!102583 lambda!102577)))

(declare-fun bs!514297 () Bool)

(assert (= bs!514297 (and d!812315 d!812249)))

(assert (=> bs!514297 (= lambda!102583 lambda!102575)))

(declare-fun bs!514298 () Bool)

(assert (= bs!514298 (and d!812315 d!812313)))

(assert (=> bs!514298 (= lambda!102583 lambda!102582)))

(declare-fun bs!514299 () Bool)

(assert (= bs!514299 (and d!812315 d!812289)))

(assert (=> bs!514299 (= lambda!102583 lambda!102576)))

(declare-fun bs!514300 () Bool)

(assert (= bs!514300 (and d!812315 d!812305)))

(assert (=> bs!514300 (= lambda!102583 lambda!102578)))

(assert (=> d!812315 (= (inv!43993 (_1!19459 (_1!19460 (h!37810 mapDefault!18018)))) (forall!6682 (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapDefault!18018)))) lambda!102583))))

(declare-fun bs!514301 () Bool)

(assert (= bs!514301 d!812315))

(declare-fun m!3223960 () Bool)

(assert (=> bs!514301 m!3223960))

(assert (=> b!2793620 d!812315))

(declare-fun d!812317 () Bool)

(assert (=> d!812317 (= (head!6184 testedP!183) (h!37807 testedP!183))))

(assert (=> b!2793441 d!812317))

(declare-fun d!812319 () Bool)

(assert (=> d!812319 (= (head!6184 lt!998237) (h!37807 lt!998237))))

(assert (=> b!2793441 d!812319))

(declare-fun bs!514302 () Bool)

(declare-fun d!812321 () Bool)

(assert (= bs!514302 (and d!812321 d!812293)))

(declare-fun lambda!102584 () Int)

(assert (=> bs!514302 (= lambda!102584 lambda!102577)))

(declare-fun bs!514303 () Bool)

(assert (= bs!514303 (and d!812321 d!812249)))

(assert (=> bs!514303 (= lambda!102584 lambda!102575)))

(declare-fun bs!514304 () Bool)

(assert (= bs!514304 (and d!812321 d!812315)))

(assert (=> bs!514304 (= lambda!102584 lambda!102583)))

(declare-fun bs!514305 () Bool)

(assert (= bs!514305 (and d!812321 d!812313)))

(assert (=> bs!514305 (= lambda!102584 lambda!102582)))

(declare-fun bs!514306 () Bool)

(assert (= bs!514306 (and d!812321 d!812289)))

(assert (=> bs!514306 (= lambda!102584 lambda!102576)))

(declare-fun bs!514307 () Bool)

(assert (= bs!514307 (and d!812321 d!812305)))

(assert (=> bs!514307 (= lambda!102584 lambda!102578)))

(assert (=> d!812321 (= (inv!43993 setElem!24013) (forall!6682 (exprs!2899 setElem!24013) lambda!102584))))

(declare-fun bs!514308 () Bool)

(assert (= bs!514308 d!812321))

(declare-fun m!3223962 () Bool)

(assert (=> bs!514308 m!3223962))

(assert (=> setNonEmpty!24013 d!812321))

(declare-fun b!2793708 () Bool)

(declare-fun e!1763994 () List!32487)

(assert (=> b!2793708 (= e!1763994 (++!7994 (list!12177 (left!24532 (c!453343 totalInput!758))) (list!12177 (right!24862 (c!453343 totalInput!758)))))))

(declare-fun d!812323 () Bool)

(declare-fun c!453397 () Bool)

(assert (=> d!812323 (= c!453397 ((_ is Empty!10046) (c!453343 totalInput!758)))))

(declare-fun e!1763993 () List!32487)

(assert (=> d!812323 (= (list!12177 (c!453343 totalInput!758)) e!1763993)))

(declare-fun b!2793705 () Bool)

(assert (=> b!2793705 (= e!1763993 Nil!32387)))

(declare-fun b!2793707 () Bool)

(assert (=> b!2793707 (= e!1763994 (list!12178 (xs!13158 (c!453343 totalInput!758))))))

(declare-fun b!2793706 () Bool)

(assert (=> b!2793706 (= e!1763993 e!1763994)))

(declare-fun c!453398 () Bool)

(assert (=> b!2793706 (= c!453398 ((_ is Leaf!15305) (c!453343 totalInput!758)))))

(assert (= (and d!812323 c!453397) b!2793705))

(assert (= (and d!812323 (not c!453397)) b!2793706))

(assert (= (and b!2793706 c!453398) b!2793707))

(assert (= (and b!2793706 (not c!453398)) b!2793708))

(declare-fun m!3223964 () Bool)

(assert (=> b!2793708 m!3223964))

(declare-fun m!3223966 () Bool)

(assert (=> b!2793708 m!3223966))

(assert (=> b!2793708 m!3223964))

(assert (=> b!2793708 m!3223966))

(declare-fun m!3223968 () Bool)

(assert (=> b!2793708 m!3223968))

(declare-fun m!3223970 () Bool)

(assert (=> b!2793707 m!3223970))

(assert (=> d!812243 d!812323))

(declare-fun d!812325 () Bool)

(declare-fun res!1165057 () Bool)

(declare-fun e!1763997 () Bool)

(assert (=> d!812325 (=> (not res!1165057) (not e!1763997))))

(assert (=> d!812325 (= res!1165057 (<= (size!25227 (list!12178 (xs!13158 (c!453343 totalInput!758)))) 512))))

(assert (=> d!812325 (= (inv!43999 (c!453343 totalInput!758)) e!1763997)))

(declare-fun b!2793713 () Bool)

(declare-fun res!1165058 () Bool)

(assert (=> b!2793713 (=> (not res!1165058) (not e!1763997))))

(assert (=> b!2793713 (= res!1165058 (= (csize!20323 (c!453343 totalInput!758)) (size!25227 (list!12178 (xs!13158 (c!453343 totalInput!758))))))))

(declare-fun b!2793714 () Bool)

(assert (=> b!2793714 (= e!1763997 (and (> (csize!20323 (c!453343 totalInput!758)) 0) (<= (csize!20323 (c!453343 totalInput!758)) 512)))))

(assert (= (and d!812325 res!1165057) b!2793713))

(assert (= (and b!2793713 res!1165058) b!2793714))

(assert (=> d!812325 m!3223970))

(assert (=> d!812325 m!3223970))

(declare-fun m!3223972 () Bool)

(assert (=> d!812325 m!3223972))

(assert (=> b!2793713 m!3223970))

(assert (=> b!2793713 m!3223970))

(assert (=> b!2793713 m!3223972))

(assert (=> b!2793431 d!812325))

(declare-fun b!2793717 () Bool)

(declare-fun res!1165059 () Bool)

(declare-fun e!1763998 () Bool)

(assert (=> b!2793717 (=> (not res!1165059) (not e!1763998))))

(declare-fun lt!998320 () List!32487)

(assert (=> b!2793717 (= res!1165059 (= (size!25227 lt!998320) (+ (size!25227 testedP!183) (size!25227 lt!998289))))))

(declare-fun b!2793715 () Bool)

(declare-fun e!1763999 () List!32487)

(assert (=> b!2793715 (= e!1763999 lt!998289)))

(declare-fun b!2793718 () Bool)

(assert (=> b!2793718 (= e!1763998 (or (not (= lt!998289 Nil!32387)) (= lt!998320 testedP!183)))))

(declare-fun b!2793716 () Bool)

(assert (=> b!2793716 (= e!1763999 (Cons!32387 (h!37807 testedP!183) (++!7994 (t!228639 testedP!183) lt!998289)))))

(declare-fun d!812327 () Bool)

(assert (=> d!812327 e!1763998))

(declare-fun res!1165060 () Bool)

(assert (=> d!812327 (=> (not res!1165060) (not e!1763998))))

(assert (=> d!812327 (= res!1165060 (= (content!4531 lt!998320) ((_ map or) (content!4531 testedP!183) (content!4531 lt!998289))))))

(assert (=> d!812327 (= lt!998320 e!1763999)))

(declare-fun c!453399 () Bool)

(assert (=> d!812327 (= c!453399 ((_ is Nil!32387) testedP!183))))

(assert (=> d!812327 (= (++!7994 testedP!183 lt!998289) lt!998320)))

(assert (= (and d!812327 c!453399) b!2793715))

(assert (= (and d!812327 (not c!453399)) b!2793716))

(assert (= (and d!812327 res!1165060) b!2793717))

(assert (= (and b!2793717 res!1165059) b!2793718))

(declare-fun m!3223974 () Bool)

(assert (=> b!2793717 m!3223974))

(assert (=> b!2793717 m!3223667))

(declare-fun m!3223976 () Bool)

(assert (=> b!2793717 m!3223976))

(declare-fun m!3223978 () Bool)

(assert (=> b!2793716 m!3223978))

(declare-fun m!3223980 () Bool)

(assert (=> d!812327 m!3223980))

(assert (=> d!812327 m!3223757))

(declare-fun m!3223982 () Bool)

(assert (=> d!812327 m!3223982))

(assert (=> d!812235 d!812327))

(declare-fun d!812329 () Bool)

(declare-fun lt!998321 () Int)

(assert (=> d!812329 (>= lt!998321 0)))

(declare-fun e!1764000 () Int)

(assert (=> d!812329 (= lt!998321 e!1764000)))

(declare-fun c!453400 () Bool)

(assert (=> d!812329 (= c!453400 ((_ is Nil!32387) lt!998237))))

(assert (=> d!812329 (= (size!25227 lt!998237) lt!998321)))

(declare-fun b!2793719 () Bool)

(assert (=> b!2793719 (= e!1764000 0)))

(declare-fun b!2793720 () Bool)

(assert (=> b!2793720 (= e!1764000 (+ 1 (size!25227 (t!228639 lt!998237))))))

(assert (= (and d!812329 c!453400) b!2793719))

(assert (= (and d!812329 (not c!453400)) b!2793720))

(declare-fun m!3223984 () Bool)

(assert (=> b!2793720 m!3223984))

(assert (=> d!812235 d!812329))

(assert (=> d!812235 d!812215))

(assert (=> b!2793490 d!812247))

(declare-fun bs!514309 () Bool)

(declare-fun d!812331 () Bool)

(assert (= bs!514309 (and d!812331 d!812231)))

(declare-fun lambda!102587 () Int)

(assert (=> bs!514309 (not (= lambda!102587 lambda!102570))))

(declare-fun bs!514310 () Bool)

(assert (= bs!514310 (and d!812331 b!2793452)))

(assert (=> bs!514310 (not (= lambda!102587 lambda!102571))))

(declare-fun bs!514311 () Bool)

(assert (= bs!514311 (and d!812331 b!2793453)))

(assert (=> bs!514311 (not (= lambda!102587 lambda!102572))))

(assert (=> d!812331 true))

(declare-fun order!17247 () Int)

(declare-fun dynLambda!13621 (Int Int) Int)

(assert (=> d!812331 (< (dynLambda!13621 order!17247 lambda!102570) (dynLambda!13621 order!17247 lambda!102587))))

(assert (=> d!812331 (not (exists!1006 lt!998282 lambda!102587))))

(declare-fun lt!998324 () Unit!46564)

(declare-fun choose!16429 (List!32491 Int) Unit!46564)

(assert (=> d!812331 (= lt!998324 (choose!16429 lt!998282 lambda!102570))))

(declare-fun forall!6684 (List!32491 Int) Bool)

(assert (=> d!812331 (forall!6684 lt!998282 lambda!102570)))

(assert (=> d!812331 (= (lemmaForallThenNotExists!101 lt!998282 lambda!102570) lt!998324)))

(declare-fun bs!514312 () Bool)

(assert (= bs!514312 d!812331))

(declare-fun m!3223986 () Bool)

(assert (=> bs!514312 m!3223986))

(declare-fun m!3223988 () Bool)

(assert (=> bs!514312 m!3223988))

(declare-fun m!3223990 () Bool)

(assert (=> bs!514312 m!3223990))

(assert (=> b!2793453 d!812331))

(declare-fun bs!514313 () Bool)

(declare-fun d!812333 () Bool)

(assert (= bs!514313 (and d!812333 d!812293)))

(declare-fun lambda!102588 () Int)

(assert (=> bs!514313 (= lambda!102588 lambda!102577)))

(declare-fun bs!514314 () Bool)

(assert (= bs!514314 (and d!812333 d!812249)))

(assert (=> bs!514314 (= lambda!102588 lambda!102575)))

(declare-fun bs!514315 () Bool)

(assert (= bs!514315 (and d!812333 d!812315)))

(assert (=> bs!514315 (= lambda!102588 lambda!102583)))

(declare-fun bs!514316 () Bool)

(assert (= bs!514316 (and d!812333 d!812313)))

(assert (=> bs!514316 (= lambda!102588 lambda!102582)))

(declare-fun bs!514317 () Bool)

(assert (= bs!514317 (and d!812333 d!812321)))

(assert (=> bs!514317 (= lambda!102588 lambda!102584)))

(declare-fun bs!514318 () Bool)

(assert (= bs!514318 (and d!812333 d!812289)))

(assert (=> bs!514318 (= lambda!102588 lambda!102576)))

(declare-fun bs!514319 () Bool)

(assert (= bs!514319 (and d!812333 d!812305)))

(assert (=> bs!514319 (= lambda!102588 lambda!102578)))

(assert (=> d!812333 (= (inv!43993 setElem!24019) (forall!6682 (exprs!2899 setElem!24019) lambda!102588))))

(declare-fun bs!514320 () Bool)

(assert (= bs!514320 d!812333))

(declare-fun m!3223992 () Bool)

(assert (=> bs!514320 m!3223992))

(assert (=> setNonEmpty!24019 d!812333))

(assert (=> bm!182731 d!812329))

(declare-fun bs!514321 () Bool)

(declare-fun d!812335 () Bool)

(assert (= bs!514321 (and d!812335 d!812293)))

(declare-fun lambda!102589 () Int)

(assert (=> bs!514321 (= lambda!102589 lambda!102577)))

(declare-fun bs!514322 () Bool)

(assert (= bs!514322 (and d!812335 d!812249)))

(assert (=> bs!514322 (= lambda!102589 lambda!102575)))

(declare-fun bs!514323 () Bool)

(assert (= bs!514323 (and d!812335 d!812315)))

(assert (=> bs!514323 (= lambda!102589 lambda!102583)))

(declare-fun bs!514324 () Bool)

(assert (= bs!514324 (and d!812335 d!812313)))

(assert (=> bs!514324 (= lambda!102589 lambda!102582)))

(declare-fun bs!514325 () Bool)

(assert (= bs!514325 (and d!812335 d!812333)))

(assert (=> bs!514325 (= lambda!102589 lambda!102588)))

(declare-fun bs!514326 () Bool)

(assert (= bs!514326 (and d!812335 d!812321)))

(assert (=> bs!514326 (= lambda!102589 lambda!102584)))

(declare-fun bs!514327 () Bool)

(assert (= bs!514327 (and d!812335 d!812289)))

(assert (=> bs!514327 (= lambda!102589 lambda!102576)))

(declare-fun bs!514328 () Bool)

(assert (= bs!514328 (and d!812335 d!812305)))

(assert (=> bs!514328 (= lambda!102589 lambda!102578)))

(assert (=> d!812335 (= (inv!43993 setElem!24029) (forall!6682 (exprs!2899 setElem!24029) lambda!102589))))

(declare-fun bs!514329 () Bool)

(assert (= bs!514329 d!812335))

(declare-fun m!3223994 () Bool)

(assert (=> bs!514329 m!3223994))

(assert (=> setNonEmpty!24029 d!812335))

(declare-fun bs!514330 () Bool)

(declare-fun d!812337 () Bool)

(assert (= bs!514330 (and d!812337 d!812293)))

(declare-fun lambda!102590 () Int)

(assert (=> bs!514330 (= lambda!102590 lambda!102577)))

(declare-fun bs!514331 () Bool)

(assert (= bs!514331 (and d!812337 d!812249)))

(assert (=> bs!514331 (= lambda!102590 lambda!102575)))

(declare-fun bs!514332 () Bool)

(assert (= bs!514332 (and d!812337 d!812315)))

(assert (=> bs!514332 (= lambda!102590 lambda!102583)))

(declare-fun bs!514333 () Bool)

(assert (= bs!514333 (and d!812337 d!812313)))

(assert (=> bs!514333 (= lambda!102590 lambda!102582)))

(declare-fun bs!514334 () Bool)

(assert (= bs!514334 (and d!812337 d!812333)))

(assert (=> bs!514334 (= lambda!102590 lambda!102588)))

(declare-fun bs!514335 () Bool)

(assert (= bs!514335 (and d!812337 d!812289)))

(assert (=> bs!514335 (= lambda!102590 lambda!102576)))

(declare-fun bs!514336 () Bool)

(assert (= bs!514336 (and d!812337 d!812305)))

(assert (=> bs!514336 (= lambda!102590 lambda!102578)))

(declare-fun bs!514337 () Bool)

(assert (= bs!514337 (and d!812337 d!812321)))

(assert (=> bs!514337 (= lambda!102590 lambda!102584)))

(declare-fun bs!514338 () Bool)

(assert (= bs!514338 (and d!812337 d!812335)))

(assert (=> bs!514338 (= lambda!102590 lambda!102589)))

(assert (=> d!812337 (= (inv!43993 (_1!19459 (_1!19460 (h!37810 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))) (forall!6682 (exprs!2899 (_1!19459 (_1!19460 (h!37810 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))) lambda!102590))))

(declare-fun bs!514339 () Bool)

(assert (= bs!514339 d!812337))

(declare-fun m!3223996 () Bool)

(assert (=> bs!514339 m!3223996))

(assert (=> b!2793570 d!812337))

(declare-fun d!812339 () Bool)

(declare-fun c!453401 () Bool)

(assert (=> d!812339 (= c!453401 ((_ is Nil!32387) lt!998294))))

(declare-fun e!1764003 () (InoxSet C!16520))

(assert (=> d!812339 (= (content!4531 lt!998294) e!1764003)))

(declare-fun b!2793723 () Bool)

(assert (=> b!2793723 (= e!1764003 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793724 () Bool)

(assert (=> b!2793724 (= e!1764003 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 lt!998294) true) (content!4531 (t!228639 lt!998294))))))

(assert (= (and d!812339 c!453401) b!2793723))

(assert (= (and d!812339 (not c!453401)) b!2793724))

(declare-fun m!3223998 () Bool)

(assert (=> b!2793724 m!3223998))

(declare-fun m!3224000 () Bool)

(assert (=> b!2793724 m!3224000))

(assert (=> d!812253 d!812339))

(declare-fun d!812341 () Bool)

(declare-fun c!453402 () Bool)

(assert (=> d!812341 (= c!453402 ((_ is Nil!32387) lt!998246))))

(declare-fun e!1764004 () (InoxSet C!16520))

(assert (=> d!812341 (= (content!4531 lt!998246) e!1764004)))

(declare-fun b!2793725 () Bool)

(assert (=> b!2793725 (= e!1764004 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793726 () Bool)

(assert (=> b!2793726 (= e!1764004 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 lt!998246) true) (content!4531 (t!228639 lt!998246))))))

(assert (= (and d!812341 c!453402) b!2793725))

(assert (= (and d!812341 (not c!453402)) b!2793726))

(declare-fun m!3224002 () Bool)

(assert (=> b!2793726 m!3224002))

(declare-fun m!3224004 () Bool)

(assert (=> b!2793726 m!3224004))

(assert (=> d!812253 d!812341))

(declare-fun d!812343 () Bool)

(declare-fun c!453403 () Bool)

(assert (=> d!812343 (= c!453403 ((_ is Nil!32387) lt!998243))))

(declare-fun e!1764005 () (InoxSet C!16520))

(assert (=> d!812343 (= (content!4531 lt!998243) e!1764005)))

(declare-fun b!2793727 () Bool)

(assert (=> b!2793727 (= e!1764005 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793728 () Bool)

(assert (=> b!2793728 (= e!1764005 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 lt!998243) true) (content!4531 (t!228639 lt!998243))))))

(assert (= (and d!812343 c!453403) b!2793727))

(assert (= (and d!812343 (not c!453403)) b!2793728))

(declare-fun m!3224006 () Bool)

(assert (=> b!2793728 m!3224006))

(declare-fun m!3224008 () Bool)

(assert (=> b!2793728 m!3224008))

(assert (=> d!812253 d!812343))

(declare-fun bs!514340 () Bool)

(declare-fun d!812345 () Bool)

(assert (= bs!514340 (and d!812345 d!812293)))

(declare-fun lambda!102591 () Int)

(assert (=> bs!514340 (= lambda!102591 lambda!102577)))

(declare-fun bs!514341 () Bool)

(assert (= bs!514341 (and d!812345 d!812249)))

(assert (=> bs!514341 (= lambda!102591 lambda!102575)))

(declare-fun bs!514342 () Bool)

(assert (= bs!514342 (and d!812345 d!812315)))

(assert (=> bs!514342 (= lambda!102591 lambda!102583)))

(declare-fun bs!514343 () Bool)

(assert (= bs!514343 (and d!812345 d!812313)))

(assert (=> bs!514343 (= lambda!102591 lambda!102582)))

(declare-fun bs!514344 () Bool)

(assert (= bs!514344 (and d!812345 d!812333)))

(assert (=> bs!514344 (= lambda!102591 lambda!102588)))

(declare-fun bs!514345 () Bool)

(assert (= bs!514345 (and d!812345 d!812337)))

(assert (=> bs!514345 (= lambda!102591 lambda!102590)))

(declare-fun bs!514346 () Bool)

(assert (= bs!514346 (and d!812345 d!812289)))

(assert (=> bs!514346 (= lambda!102591 lambda!102576)))

(declare-fun bs!514347 () Bool)

(assert (= bs!514347 (and d!812345 d!812305)))

(assert (=> bs!514347 (= lambda!102591 lambda!102578)))

(declare-fun bs!514348 () Bool)

(assert (= bs!514348 (and d!812345 d!812321)))

(assert (=> bs!514348 (= lambda!102591 lambda!102584)))

(declare-fun bs!514349 () Bool)

(assert (= bs!514349 (and d!812345 d!812335)))

(assert (=> bs!514349 (= lambda!102591 lambda!102589)))

(assert (=> d!812345 (= (inv!43993 setElem!24033) (forall!6682 (exprs!2899 setElem!24033) lambda!102591))))

(declare-fun bs!514350 () Bool)

(assert (= bs!514350 d!812345))

(declare-fun m!3224010 () Bool)

(assert (=> bs!514350 m!3224010))

(assert (=> setNonEmpty!24033 d!812345))

(declare-fun d!812347 () Bool)

(declare-fun e!1764006 () Bool)

(assert (=> d!812347 e!1764006))

(declare-fun res!1165061 () Bool)

(assert (=> d!812347 (=> res!1165061 e!1764006)))

(declare-fun lt!998325 () Bool)

(assert (=> d!812347 (= res!1165061 (not lt!998325))))

(declare-fun e!1764008 () Bool)

(assert (=> d!812347 (= lt!998325 e!1764008)))

(declare-fun res!1165062 () Bool)

(assert (=> d!812347 (=> res!1165062 e!1764008)))

(assert (=> d!812347 (= res!1165062 ((_ is Nil!32387) (tail!4416 testedP!183)))))

(assert (=> d!812347 (= (isPrefix!2609 (tail!4416 testedP!183) (tail!4416 lt!998237)) lt!998325)))

(declare-fun b!2793731 () Bool)

(declare-fun e!1764007 () Bool)

(assert (=> b!2793731 (= e!1764007 (isPrefix!2609 (tail!4416 (tail!4416 testedP!183)) (tail!4416 (tail!4416 lt!998237))))))

(declare-fun b!2793729 () Bool)

(assert (=> b!2793729 (= e!1764008 e!1764007)))

(declare-fun res!1165064 () Bool)

(assert (=> b!2793729 (=> (not res!1165064) (not e!1764007))))

(assert (=> b!2793729 (= res!1165064 (not ((_ is Nil!32387) (tail!4416 lt!998237))))))

(declare-fun b!2793732 () Bool)

(assert (=> b!2793732 (= e!1764006 (>= (size!25227 (tail!4416 lt!998237)) (size!25227 (tail!4416 testedP!183))))))

(declare-fun b!2793730 () Bool)

(declare-fun res!1165063 () Bool)

(assert (=> b!2793730 (=> (not res!1165063) (not e!1764007))))

(assert (=> b!2793730 (= res!1165063 (= (head!6184 (tail!4416 testedP!183)) (head!6184 (tail!4416 lt!998237))))))

(assert (= (and d!812347 (not res!1165062)) b!2793729))

(assert (= (and b!2793729 res!1165064) b!2793730))

(assert (= (and b!2793730 res!1165063) b!2793731))

(assert (= (and d!812347 (not res!1165061)) b!2793732))

(assert (=> b!2793731 m!3223693))

(declare-fun m!3224012 () Bool)

(assert (=> b!2793731 m!3224012))

(assert (=> b!2793731 m!3223695))

(assert (=> b!2793731 m!3223883))

(assert (=> b!2793731 m!3224012))

(assert (=> b!2793731 m!3223883))

(declare-fun m!3224014 () Bool)

(assert (=> b!2793731 m!3224014))

(assert (=> b!2793732 m!3223695))

(assert (=> b!2793732 m!3223879))

(assert (=> b!2793732 m!3223693))

(declare-fun m!3224016 () Bool)

(assert (=> b!2793732 m!3224016))

(assert (=> b!2793730 m!3223693))

(declare-fun m!3224018 () Bool)

(assert (=> b!2793730 m!3224018))

(assert (=> b!2793730 m!3223695))

(assert (=> b!2793730 m!3223881))

(assert (=> b!2793442 d!812347))

(declare-fun d!812349 () Bool)

(assert (=> d!812349 (= (tail!4416 testedP!183) (t!228639 testedP!183))))

(assert (=> b!2793442 d!812349))

(assert (=> b!2793442 d!812283))

(declare-fun d!812351 () Bool)

(assert (=> d!812351 (and (= lt!998246 testedP!183) (= lt!998243 testedSuffix!143))))

(assert (=> d!812351 true))

(declare-fun _$50!334 () Unit!46564)

(assert (=> d!812351 (= (choose!16427 lt!998246 lt!998243 testedP!183 testedSuffix!143) _$50!334)))

(assert (=> d!812273 d!812351))

(assert (=> d!812273 d!812253))

(assert (=> d!812273 d!812245))

(declare-fun bs!514351 () Bool)

(declare-fun d!812353 () Bool)

(assert (= bs!514351 (and d!812353 d!812231)))

(declare-fun lambda!102594 () Int)

(assert (=> bs!514351 (not (= lambda!102594 lambda!102570))))

(declare-fun bs!514352 () Bool)

(assert (= bs!514352 (and d!812353 b!2793452)))

(assert (=> bs!514352 (not (= lambda!102594 lambda!102571))))

(declare-fun bs!514353 () Bool)

(assert (= bs!514353 (and d!812353 b!2793453)))

(assert (=> bs!514353 (not (= lambda!102594 lambda!102572))))

(declare-fun bs!514354 () Bool)

(assert (= bs!514354 (and d!812353 d!812331)))

(assert (=> bs!514354 (= (= (ite c!453361 lambda!102571 lambda!102572) lambda!102570) (= lambda!102594 lambda!102587))))

(assert (=> d!812353 true))

(assert (=> d!812353 (< (dynLambda!13621 order!17247 (ite c!453361 lambda!102571 lambda!102572)) (dynLambda!13621 order!17247 lambda!102594))))

(assert (=> d!812353 (= (exists!1006 (ite c!453361 lt!998283 lt!998282) (ite c!453361 lambda!102571 lambda!102572)) (not (forall!6684 (ite c!453361 lt!998283 lt!998282) lambda!102594)))))

(declare-fun bs!514355 () Bool)

(assert (= bs!514355 d!812353))

(declare-fun m!3224020 () Bool)

(assert (=> bs!514355 m!3224020))

(assert (=> bm!182728 d!812353))

(assert (=> b!2793445 d!812317))

(declare-fun d!812355 () Bool)

(assert (=> d!812355 (= (head!6184 lt!998239) (h!37807 lt!998239))))

(assert (=> b!2793445 d!812355))

(declare-fun d!812357 () Bool)

(declare-fun lt!998326 () C!16520)

(assert (=> d!812357 (contains!6011 (list!12176 totalInput!758) lt!998326)))

(declare-fun e!1764010 () C!16520)

(assert (=> d!812357 (= lt!998326 e!1764010)))

(declare-fun c!453404 () Bool)

(assert (=> d!812357 (= c!453404 (= testedPSize!143 0))))

(declare-fun e!1764009 () Bool)

(assert (=> d!812357 e!1764009))

(declare-fun res!1165065 () Bool)

(assert (=> d!812357 (=> (not res!1165065) (not e!1764009))))

(assert (=> d!812357 (= res!1165065 (<= 0 testedPSize!143))))

(assert (=> d!812357 (= (apply!7571 (list!12176 totalInput!758) testedPSize!143) lt!998326)))

(declare-fun b!2793733 () Bool)

(assert (=> b!2793733 (= e!1764009 (< testedPSize!143 (size!25227 (list!12176 totalInput!758))))))

(declare-fun b!2793734 () Bool)

(assert (=> b!2793734 (= e!1764010 (head!6184 (list!12176 totalInput!758)))))

(declare-fun b!2793735 () Bool)

(assert (=> b!2793735 (= e!1764010 (apply!7571 (tail!4416 (list!12176 totalInput!758)) (- testedPSize!143 1)))))

(assert (= (and d!812357 res!1165065) b!2793733))

(assert (= (and d!812357 c!453404) b!2793734))

(assert (= (and d!812357 (not c!453404)) b!2793735))

(assert (=> d!812357 m!3223627))

(declare-fun m!3224022 () Bool)

(assert (=> d!812357 m!3224022))

(assert (=> b!2793733 m!3223627))

(assert (=> b!2793733 m!3223761))

(assert (=> b!2793734 m!3223627))

(declare-fun m!3224024 () Bool)

(assert (=> b!2793734 m!3224024))

(assert (=> b!2793735 m!3223627))

(declare-fun m!3224026 () Bool)

(assert (=> b!2793735 m!3224026))

(assert (=> b!2793735 m!3224026))

(declare-fun m!3224028 () Bool)

(assert (=> b!2793735 m!3224028))

(assert (=> d!812267 d!812357))

(assert (=> d!812267 d!812243))

(declare-fun b!2793750 () Bool)

(declare-fun e!1764021 () Int)

(assert (=> b!2793750 (= e!1764021 testedPSize!143)))

(declare-fun b!2793751 () Bool)

(declare-fun e!1764020 () Bool)

(assert (=> b!2793751 (= e!1764020 (< testedPSize!143 (size!25228 (c!453343 totalInput!758))))))

(declare-fun b!2793752 () Bool)

(declare-fun e!1764019 () C!16520)

(declare-fun apply!7573 (IArray!20097 Int) C!16520)

(assert (=> b!2793752 (= e!1764019 (apply!7573 (xs!13158 (c!453343 totalInput!758)) testedPSize!143))))

(declare-fun b!2793753 () Bool)

(declare-fun e!1764022 () C!16520)

(assert (=> b!2793753 (= e!1764019 e!1764022)))

(declare-fun lt!998332 () Bool)

(declare-fun appendIndex!285 (List!32487 List!32487 Int) Bool)

(assert (=> b!2793753 (= lt!998332 (appendIndex!285 (list!12177 (left!24532 (c!453343 totalInput!758))) (list!12177 (right!24862 (c!453343 totalInput!758))) testedPSize!143))))

(declare-fun c!453411 () Bool)

(assert (=> b!2793753 (= c!453411 (< testedPSize!143 (size!25228 (left!24532 (c!453343 totalInput!758)))))))

(declare-fun b!2793754 () Bool)

(declare-fun call!182739 () C!16520)

(assert (=> b!2793754 (= e!1764022 call!182739)))

(declare-fun b!2793755 () Bool)

(assert (=> b!2793755 (= e!1764021 (- testedPSize!143 (size!25228 (left!24532 (c!453343 totalInput!758)))))))

(declare-fun bm!182734 () Bool)

(declare-fun c!453412 () Bool)

(assert (=> bm!182734 (= c!453412 c!453411)))

(assert (=> bm!182734 (= call!182739 (apply!7572 (ite c!453411 (left!24532 (c!453343 totalInput!758)) (right!24862 (c!453343 totalInput!758))) e!1764021))))

(declare-fun d!812359 () Bool)

(declare-fun lt!998331 () C!16520)

(assert (=> d!812359 (= lt!998331 (apply!7571 (list!12177 (c!453343 totalInput!758)) testedPSize!143))))

(assert (=> d!812359 (= lt!998331 e!1764019)))

(declare-fun c!453413 () Bool)

(assert (=> d!812359 (= c!453413 ((_ is Leaf!15305) (c!453343 totalInput!758)))))

(assert (=> d!812359 e!1764020))

(declare-fun res!1165068 () Bool)

(assert (=> d!812359 (=> (not res!1165068) (not e!1764020))))

(assert (=> d!812359 (= res!1165068 (<= 0 testedPSize!143))))

(assert (=> d!812359 (= (apply!7572 (c!453343 totalInput!758) testedPSize!143) lt!998331)))

(declare-fun b!2793756 () Bool)

(assert (=> b!2793756 (= e!1764022 call!182739)))

(assert (= (and d!812359 res!1165068) b!2793751))

(assert (= (and d!812359 c!453413) b!2793752))

(assert (= (and d!812359 (not c!453413)) b!2793753))

(assert (= (and b!2793753 c!453411) b!2793754))

(assert (= (and b!2793753 (not c!453411)) b!2793756))

(assert (= (or b!2793754 b!2793756) bm!182734))

(assert (= (and bm!182734 c!453412) b!2793750))

(assert (= (and bm!182734 (not c!453412)) b!2793755))

(assert (=> b!2793753 m!3223964))

(assert (=> b!2793753 m!3223966))

(assert (=> b!2793753 m!3223964))

(assert (=> b!2793753 m!3223966))

(declare-fun m!3224030 () Bool)

(assert (=> b!2793753 m!3224030))

(assert (=> b!2793753 m!3223901))

(assert (=> d!812359 m!3223747))

(assert (=> d!812359 m!3223747))

(declare-fun m!3224032 () Bool)

(assert (=> d!812359 m!3224032))

(assert (=> b!2793755 m!3223901))

(declare-fun m!3224034 () Bool)

(assert (=> b!2793752 m!3224034))

(declare-fun m!3224036 () Bool)

(assert (=> bm!182734 m!3224036))

(assert (=> b!2793751 m!3223763))

(assert (=> d!812267 d!812359))

(declare-fun d!812361 () Bool)

(assert (=> d!812361 (= (inv!44000 (xs!13158 (c!453343 totalInput!758))) (<= (size!25227 (innerList!10106 (xs!13158 (c!453343 totalInput!758)))) 2147483647))))

(declare-fun bs!514356 () Bool)

(assert (= bs!514356 d!812361))

(declare-fun m!3224038 () Bool)

(assert (=> bs!514356 m!3224038))

(assert (=> b!2793561 d!812361))

(declare-fun bs!514357 () Bool)

(declare-fun d!812363 () Bool)

(assert (= bs!514357 (and d!812363 d!812293)))

(declare-fun lambda!102595 () Int)

(assert (=> bs!514357 (= lambda!102595 lambda!102577)))

(declare-fun bs!514358 () Bool)

(assert (= bs!514358 (and d!812363 d!812249)))

(assert (=> bs!514358 (= lambda!102595 lambda!102575)))

(declare-fun bs!514359 () Bool)

(assert (= bs!514359 (and d!812363 d!812315)))

(assert (=> bs!514359 (= lambda!102595 lambda!102583)))

(declare-fun bs!514360 () Bool)

(assert (= bs!514360 (and d!812363 d!812313)))

(assert (=> bs!514360 (= lambda!102595 lambda!102582)))

(declare-fun bs!514361 () Bool)

(assert (= bs!514361 (and d!812363 d!812333)))

(assert (=> bs!514361 (= lambda!102595 lambda!102588)))

(declare-fun bs!514362 () Bool)

(assert (= bs!514362 (and d!812363 d!812345)))

(assert (=> bs!514362 (= lambda!102595 lambda!102591)))

(declare-fun bs!514363 () Bool)

(assert (= bs!514363 (and d!812363 d!812337)))

(assert (=> bs!514363 (= lambda!102595 lambda!102590)))

(declare-fun bs!514364 () Bool)

(assert (= bs!514364 (and d!812363 d!812289)))

(assert (=> bs!514364 (= lambda!102595 lambda!102576)))

(declare-fun bs!514365 () Bool)

(assert (= bs!514365 (and d!812363 d!812305)))

(assert (=> bs!514365 (= lambda!102595 lambda!102578)))

(declare-fun bs!514366 () Bool)

(assert (= bs!514366 (and d!812363 d!812321)))

(assert (=> bs!514366 (= lambda!102595 lambda!102584)))

(declare-fun bs!514367 () Bool)

(assert (= bs!514367 (and d!812363 d!812335)))

(assert (=> bs!514367 (= lambda!102595 lambda!102589)))

(assert (=> d!812363 (= (inv!43993 setElem!24020) (forall!6682 (exprs!2899 setElem!24020) lambda!102595))))

(declare-fun bs!514368 () Bool)

(assert (= bs!514368 d!812363))

(declare-fun m!3224040 () Bool)

(assert (=> bs!514368 m!3224040))

(assert (=> setNonEmpty!24020 d!812363))

(declare-fun d!812365 () Bool)

(declare-fun lt!998333 () Int)

(assert (=> d!812365 (>= lt!998333 0)))

(declare-fun e!1764023 () Int)

(assert (=> d!812365 (= lt!998333 e!1764023)))

(declare-fun c!453414 () Bool)

(assert (=> d!812365 (= c!453414 ((_ is Nil!32387) lt!998239))))

(assert (=> d!812365 (= (size!25227 lt!998239) lt!998333)))

(declare-fun b!2793757 () Bool)

(assert (=> b!2793757 (= e!1764023 0)))

(declare-fun b!2793758 () Bool)

(assert (=> b!2793758 (= e!1764023 (+ 1 (size!25227 (t!228639 lt!998239))))))

(assert (= (and d!812365 c!453414) b!2793757))

(assert (= (and d!812365 (not c!453414)) b!2793758))

(declare-fun m!3224042 () Bool)

(assert (=> b!2793758 m!3224042))

(assert (=> b!2793447 d!812365))

(assert (=> b!2793447 d!812215))

(declare-fun bs!514369 () Bool)

(declare-fun d!812367 () Bool)

(assert (= bs!514369 (and d!812367 d!812293)))

(declare-fun lambda!102596 () Int)

(assert (=> bs!514369 (= lambda!102596 lambda!102577)))

(declare-fun bs!514370 () Bool)

(assert (= bs!514370 (and d!812367 d!812249)))

(assert (=> bs!514370 (= lambda!102596 lambda!102575)))

(declare-fun bs!514371 () Bool)

(assert (= bs!514371 (and d!812367 d!812315)))

(assert (=> bs!514371 (= lambda!102596 lambda!102583)))

(declare-fun bs!514372 () Bool)

(assert (= bs!514372 (and d!812367 d!812313)))

(assert (=> bs!514372 (= lambda!102596 lambda!102582)))

(declare-fun bs!514373 () Bool)

(assert (= bs!514373 (and d!812367 d!812333)))

(assert (=> bs!514373 (= lambda!102596 lambda!102588)))

(declare-fun bs!514374 () Bool)

(assert (= bs!514374 (and d!812367 d!812345)))

(assert (=> bs!514374 (= lambda!102596 lambda!102591)))

(declare-fun bs!514375 () Bool)

(assert (= bs!514375 (and d!812367 d!812337)))

(assert (=> bs!514375 (= lambda!102596 lambda!102590)))

(declare-fun bs!514376 () Bool)

(assert (= bs!514376 (and d!812367 d!812289)))

(assert (=> bs!514376 (= lambda!102596 lambda!102576)))

(declare-fun bs!514377 () Bool)

(assert (= bs!514377 (and d!812367 d!812305)))

(assert (=> bs!514377 (= lambda!102596 lambda!102578)))

(declare-fun bs!514378 () Bool)

(assert (= bs!514378 (and d!812367 d!812321)))

(assert (=> bs!514378 (= lambda!102596 lambda!102584)))

(declare-fun bs!514379 () Bool)

(assert (= bs!514379 (and d!812367 d!812363)))

(assert (=> bs!514379 (= lambda!102596 lambda!102595)))

(declare-fun bs!514380 () Bool)

(assert (= bs!514380 (and d!812367 d!812335)))

(assert (=> bs!514380 (= lambda!102596 lambda!102589)))

(assert (=> d!812367 (= (inv!43993 (_2!19457 (_1!19458 (h!37809 mapValue!18015)))) (forall!6682 (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapValue!18015)))) lambda!102596))))

(declare-fun bs!514381 () Bool)

(assert (= bs!514381 d!812367))

(declare-fun m!3224044 () Bool)

(assert (=> bs!514381 m!3224044))

(assert (=> b!2793590 d!812367))

(declare-fun bs!514382 () Bool)

(declare-fun d!812369 () Bool)

(assert (= bs!514382 (and d!812369 d!812293)))

(declare-fun lambda!102597 () Int)

(assert (=> bs!514382 (= lambda!102597 lambda!102577)))

(declare-fun bs!514383 () Bool)

(assert (= bs!514383 (and d!812369 d!812249)))

(assert (=> bs!514383 (= lambda!102597 lambda!102575)))

(declare-fun bs!514384 () Bool)

(assert (= bs!514384 (and d!812369 d!812367)))

(assert (=> bs!514384 (= lambda!102597 lambda!102596)))

(declare-fun bs!514385 () Bool)

(assert (= bs!514385 (and d!812369 d!812315)))

(assert (=> bs!514385 (= lambda!102597 lambda!102583)))

(declare-fun bs!514386 () Bool)

(assert (= bs!514386 (and d!812369 d!812313)))

(assert (=> bs!514386 (= lambda!102597 lambda!102582)))

(declare-fun bs!514387 () Bool)

(assert (= bs!514387 (and d!812369 d!812333)))

(assert (=> bs!514387 (= lambda!102597 lambda!102588)))

(declare-fun bs!514388 () Bool)

(assert (= bs!514388 (and d!812369 d!812345)))

(assert (=> bs!514388 (= lambda!102597 lambda!102591)))

(declare-fun bs!514389 () Bool)

(assert (= bs!514389 (and d!812369 d!812337)))

(assert (=> bs!514389 (= lambda!102597 lambda!102590)))

(declare-fun bs!514390 () Bool)

(assert (= bs!514390 (and d!812369 d!812289)))

(assert (=> bs!514390 (= lambda!102597 lambda!102576)))

(declare-fun bs!514391 () Bool)

(assert (= bs!514391 (and d!812369 d!812305)))

(assert (=> bs!514391 (= lambda!102597 lambda!102578)))

(declare-fun bs!514392 () Bool)

(assert (= bs!514392 (and d!812369 d!812321)))

(assert (=> bs!514392 (= lambda!102597 lambda!102584)))

(declare-fun bs!514393 () Bool)

(assert (= bs!514393 (and d!812369 d!812363)))

(assert (=> bs!514393 (= lambda!102597 lambda!102595)))

(declare-fun bs!514394 () Bool)

(assert (= bs!514394 (and d!812369 d!812335)))

(assert (=> bs!514394 (= lambda!102597 lambda!102589)))

(assert (=> d!812369 (= (inv!43993 (_1!19459 (_1!19460 (h!37810 mapValue!18011)))) (forall!6682 (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapValue!18011)))) lambda!102597))))

(declare-fun bs!514395 () Bool)

(assert (= bs!514395 d!812369))

(declare-fun m!3224046 () Bool)

(assert (=> bs!514395 m!3224046))

(assert (=> b!2793626 d!812369))

(assert (=> b!2793497 d!812329))

(declare-fun b!2793761 () Bool)

(declare-fun res!1165069 () Bool)

(declare-fun e!1764024 () Bool)

(assert (=> b!2793761 (=> (not res!1165069) (not e!1764024))))

(declare-fun lt!998334 () List!32487)

(assert (=> b!2793761 (= res!1165069 (= (size!25227 lt!998334) (+ (size!25227 (t!228639 lt!998246)) (size!25227 lt!998243))))))

(declare-fun b!2793759 () Bool)

(declare-fun e!1764025 () List!32487)

(assert (=> b!2793759 (= e!1764025 lt!998243)))

(declare-fun b!2793762 () Bool)

(assert (=> b!2793762 (= e!1764024 (or (not (= lt!998243 Nil!32387)) (= lt!998334 (t!228639 lt!998246))))))

(declare-fun b!2793760 () Bool)

(assert (=> b!2793760 (= e!1764025 (Cons!32387 (h!37807 (t!228639 lt!998246)) (++!7994 (t!228639 (t!228639 lt!998246)) lt!998243)))))

(declare-fun d!812371 () Bool)

(assert (=> d!812371 e!1764024))

(declare-fun res!1165070 () Bool)

(assert (=> d!812371 (=> (not res!1165070) (not e!1764024))))

(assert (=> d!812371 (= res!1165070 (= (content!4531 lt!998334) ((_ map or) (content!4531 (t!228639 lt!998246)) (content!4531 lt!998243))))))

(assert (=> d!812371 (= lt!998334 e!1764025)))

(declare-fun c!453415 () Bool)

(assert (=> d!812371 (= c!453415 ((_ is Nil!32387) (t!228639 lt!998246)))))

(assert (=> d!812371 (= (++!7994 (t!228639 lt!998246) lt!998243) lt!998334)))

(assert (= (and d!812371 c!453415) b!2793759))

(assert (= (and d!812371 (not c!453415)) b!2793760))

(assert (= (and d!812371 res!1165070) b!2793761))

(assert (= (and b!2793761 res!1165069) b!2793762))

(declare-fun m!3224048 () Bool)

(assert (=> b!2793761 m!3224048))

(declare-fun m!3224050 () Bool)

(assert (=> b!2793761 m!3224050))

(assert (=> b!2793761 m!3223771))

(declare-fun m!3224052 () Bool)

(assert (=> b!2793760 m!3224052))

(declare-fun m!3224054 () Bool)

(assert (=> d!812371 m!3224054))

(assert (=> d!812371 m!3224004))

(assert (=> d!812371 m!3223779))

(assert (=> b!2793479 d!812371))

(declare-fun d!812373 () Bool)

(declare-fun lt!998335 () Int)

(assert (=> d!812373 (>= lt!998335 0)))

(declare-fun e!1764026 () Int)

(assert (=> d!812373 (= lt!998335 e!1764026)))

(declare-fun c!453416 () Bool)

(assert (=> d!812373 (= c!453416 ((_ is Nil!32387) (t!228639 testedP!183)))))

(assert (=> d!812373 (= (size!25227 (t!228639 testedP!183)) lt!998335)))

(declare-fun b!2793763 () Bool)

(assert (=> b!2793763 (= e!1764026 0)))

(declare-fun b!2793764 () Bool)

(assert (=> b!2793764 (= e!1764026 (+ 1 (size!25227 (t!228639 (t!228639 testedP!183)))))))

(assert (= (and d!812373 c!453416) b!2793763))

(assert (= (and d!812373 (not c!453416)) b!2793764))

(declare-fun m!3224056 () Bool)

(assert (=> b!2793764 m!3224056))

(assert (=> b!2793422 d!812373))

(declare-fun d!812375 () Bool)

(declare-fun lt!998336 () Int)

(assert (=> d!812375 (>= lt!998336 0)))

(declare-fun e!1764027 () Int)

(assert (=> d!812375 (= lt!998336 e!1764027)))

(declare-fun c!453417 () Bool)

(assert (=> d!812375 (= c!453417 ((_ is Nil!32387) (list!12176 totalInput!758)))))

(assert (=> d!812375 (= (size!25227 (list!12176 totalInput!758)) lt!998336)))

(declare-fun b!2793765 () Bool)

(assert (=> b!2793765 (= e!1764027 0)))

(declare-fun b!2793766 () Bool)

(assert (=> b!2793766 (= e!1764027 (+ 1 (size!25227 (t!228639 (list!12176 totalInput!758)))))))

(assert (= (and d!812375 c!453417) b!2793765))

(assert (= (and d!812375 (not c!453417)) b!2793766))

(declare-fun m!3224058 () Bool)

(assert (=> b!2793766 m!3224058))

(assert (=> d!812247 d!812375))

(assert (=> d!812247 d!812243))

(declare-fun d!812377 () Bool)

(declare-fun lt!998339 () Int)

(assert (=> d!812377 (= lt!998339 (size!25227 (list!12177 (c!453343 totalInput!758))))))

(assert (=> d!812377 (= lt!998339 (ite ((_ is Empty!10046) (c!453343 totalInput!758)) 0 (ite ((_ is Leaf!15305) (c!453343 totalInput!758)) (csize!20323 (c!453343 totalInput!758)) (csize!20322 (c!453343 totalInput!758)))))))

(assert (=> d!812377 (= (size!25228 (c!453343 totalInput!758)) lt!998339)))

(declare-fun bs!514396 () Bool)

(assert (= bs!514396 d!812377))

(assert (=> bs!514396 m!3223747))

(assert (=> bs!514396 m!3223747))

(declare-fun m!3224060 () Bool)

(assert (=> bs!514396 m!3224060))

(assert (=> d!812247 d!812377))

(declare-fun d!812379 () Bool)

(declare-fun res!1165072 () Bool)

(declare-fun e!1764029 () Bool)

(assert (=> d!812379 (=> res!1165072 e!1764029)))

(assert (=> d!812379 (= res!1165072 (not ((_ is Node!10046) (c!453343 (_1!19461 lt!998300)))))))

(assert (=> d!812379 (= (isBalanced!3064 (c!453343 (_1!19461 lt!998300))) e!1764029)))

(declare-fun b!2793767 () Bool)

(declare-fun res!1165076 () Bool)

(declare-fun e!1764028 () Bool)

(assert (=> b!2793767 (=> (not res!1165076) (not e!1764028))))

(assert (=> b!2793767 (= res!1165076 (isBalanced!3064 (left!24532 (c!453343 (_1!19461 lt!998300)))))))

(declare-fun b!2793768 () Bool)

(declare-fun res!1165073 () Bool)

(assert (=> b!2793768 (=> (not res!1165073) (not e!1764028))))

(assert (=> b!2793768 (= res!1165073 (<= (- (height!1495 (left!24532 (c!453343 (_1!19461 lt!998300)))) (height!1495 (right!24862 (c!453343 (_1!19461 lt!998300))))) 1))))

(declare-fun b!2793769 () Bool)

(assert (=> b!2793769 (= e!1764028 (not (isEmpty!18127 (right!24862 (c!453343 (_1!19461 lt!998300))))))))

(declare-fun b!2793770 () Bool)

(declare-fun res!1165071 () Bool)

(assert (=> b!2793770 (=> (not res!1165071) (not e!1764028))))

(assert (=> b!2793770 (= res!1165071 (isBalanced!3064 (right!24862 (c!453343 (_1!19461 lt!998300)))))))

(declare-fun b!2793771 () Bool)

(assert (=> b!2793771 (= e!1764029 e!1764028)))

(declare-fun res!1165074 () Bool)

(assert (=> b!2793771 (=> (not res!1165074) (not e!1764028))))

(assert (=> b!2793771 (= res!1165074 (<= (- 1) (- (height!1495 (left!24532 (c!453343 (_1!19461 lt!998300)))) (height!1495 (right!24862 (c!453343 (_1!19461 lt!998300)))))))))

(declare-fun b!2793772 () Bool)

(declare-fun res!1165075 () Bool)

(assert (=> b!2793772 (=> (not res!1165075) (not e!1764028))))

(assert (=> b!2793772 (= res!1165075 (not (isEmpty!18127 (left!24532 (c!453343 (_1!19461 lt!998300))))))))

(assert (= (and d!812379 (not res!1165072)) b!2793771))

(assert (= (and b!2793771 res!1165074) b!2793768))

(assert (= (and b!2793768 res!1165073) b!2793767))

(assert (= (and b!2793767 res!1165076) b!2793770))

(assert (= (and b!2793770 res!1165071) b!2793772))

(assert (= (and b!2793772 res!1165075) b!2793769))

(declare-fun m!3224062 () Bool)

(assert (=> b!2793767 m!3224062))

(declare-fun m!3224064 () Bool)

(assert (=> b!2793769 m!3224064))

(declare-fun m!3224066 () Bool)

(assert (=> b!2793772 m!3224066))

(declare-fun m!3224068 () Bool)

(assert (=> b!2793770 m!3224068))

(declare-fun m!3224070 () Bool)

(assert (=> b!2793771 m!3224070))

(declare-fun m!3224072 () Bool)

(assert (=> b!2793771 m!3224072))

(assert (=> b!2793768 m!3224070))

(assert (=> b!2793768 m!3224072))

(assert (=> d!812259 d!812379))

(declare-fun c!453443 () Bool)

(declare-fun bm!182747 () Bool)

(declare-fun lt!998375 () List!32487)

(declare-fun call!182752 () Int)

(declare-fun lt!998366 () List!32487)

(assert (=> bm!182747 (= call!182752 (size!25227 (ite c!453443 lt!998375 lt!998366)))))

(declare-fun b!2793821 () Bool)

(declare-fun lt!998377 () tuple2!32884)

(declare-fun call!182754 () tuple2!32884)

(assert (=> b!2793821 (= lt!998377 call!182754)))

(declare-fun e!1764054 () tuple2!32884)

(declare-fun call!182756 () Conc!10046)

(assert (=> b!2793821 (= e!1764054 (tuple2!32885 call!182756 (_2!19462 lt!998377)))))

(declare-fun e!1764060 () List!32487)

(declare-fun b!2793822 () Bool)

(declare-fun lt!998378 () List!32487)

(declare-fun c!453447 () Bool)

(assert (=> b!2793822 (= e!1764060 (ite c!453447 lt!998366 lt!998378))))

(declare-fun bm!182748 () Bool)

(declare-fun c!453449 () Bool)

(assert (=> bm!182748 (= c!453449 c!453443)))

(declare-fun call!182757 () tuple2!32886)

(declare-fun e!1764063 () Int)

(assert (=> bm!182748 (= call!182757 (splitAtIndex!67 e!1764060 (ite c!453443 testedPSize!143 e!1764063)))))

(declare-fun bm!182749 () Bool)

(declare-fun c!453441 () Bool)

(assert (=> bm!182749 (= c!453441 c!453447)))

(declare-fun call!182755 () tuple2!32886)

(assert (=> bm!182749 (= call!182755 call!182757)))

(declare-fun b!2793823 () Bool)

(declare-fun lt!998371 () tuple2!32886)

(assert (=> b!2793823 (= lt!998371 call!182755)))

(declare-fun e!1764056 () tuple2!32886)

(declare-fun call!182753 () List!32487)

(assert (=> b!2793823 (= e!1764056 (tuple2!32887 call!182753 (_2!19463 lt!998371)))))

(declare-fun bm!182750 () Bool)

(declare-fun c!453446 () Bool)

(declare-fun c!453448 () Bool)

(assert (=> bm!182750 (= c!453446 c!453448)))

(declare-fun e!1764064 () Int)

(assert (=> bm!182750 (= call!182754 (splitAt!172 (ite c!453448 (left!24532 (c!453343 totalInput!758)) (right!24862 (c!453343 totalInput!758))) e!1764064))))

(declare-fun lt!998374 () tuple2!32886)

(declare-fun bm!182751 () Bool)

(assert (=> bm!182751 (= call!182753 (++!7994 (ite c!453447 (_2!19463 lt!998374) lt!998366) (ite c!453447 lt!998378 (_1!19463 lt!998371))))))

(declare-fun b!2793825 () Bool)

(assert (=> b!2793825 (= e!1764063 (- testedPSize!143 call!182752))))

(declare-fun b!2793826 () Bool)

(declare-fun e!1764061 () tuple2!32884)

(assert (=> b!2793826 (= e!1764061 (tuple2!32885 (left!24532 (c!453343 totalInput!758)) (right!24862 (c!453343 totalInput!758))))))

(declare-fun b!2793827 () Bool)

(assert (=> b!2793827 (= e!1764060 (list!12178 (xs!13158 (c!453343 totalInput!758))))))

(declare-fun b!2793828 () Bool)

(assert (=> b!2793828 (= lt!998374 call!182755)))

(assert (=> b!2793828 (= e!1764056 (tuple2!32887 (_1!19463 lt!998374) call!182753))))

(declare-fun b!2793829 () Bool)

(declare-fun e!1764055 () tuple2!32884)

(assert (=> b!2793829 (= e!1764055 (tuple2!32885 (c!453343 totalInput!758) (c!453343 totalInput!758)))))

(declare-fun b!2793830 () Bool)

(assert (=> b!2793830 (= e!1764064 testedPSize!143)))

(declare-fun b!2793831 () Bool)

(declare-fun c!453445 () Bool)

(assert (=> b!2793831 (= c!453445 (= (size!25228 (left!24532 (c!453343 totalInput!758))) testedPSize!143))))

(declare-fun lt!998367 () Unit!46564)

(declare-fun lt!998370 () Unit!46564)

(assert (=> b!2793831 (= lt!998367 lt!998370)))

(declare-fun e!1764057 () tuple2!32886)

(assert (=> b!2793831 (= (splitAtIndex!67 (++!7994 lt!998366 lt!998378) testedPSize!143) e!1764057)))

(declare-fun c!453440 () Bool)

(assert (=> b!2793831 (= c!453440 (= call!182752 testedPSize!143))))

(declare-fun splitAtLemma!18 (List!32487 List!32487 Int) Unit!46564)

(assert (=> b!2793831 (= lt!998370 (splitAtLemma!18 lt!998366 lt!998378 testedPSize!143))))

(assert (=> b!2793831 (= lt!998378 (list!12177 (right!24862 (c!453343 totalInput!758))))))

(assert (=> b!2793831 (= lt!998366 (list!12177 (left!24532 (c!453343 totalInput!758))))))

(declare-fun e!1764062 () tuple2!32884)

(assert (=> b!2793831 (= e!1764062 e!1764061)))

(declare-fun b!2793832 () Bool)

(assert (=> b!2793832 (= e!1764061 e!1764054)))

(assert (=> b!2793832 (= c!453448 (< testedPSize!143 (size!25228 (left!24532 (c!453343 totalInput!758)))))))

(declare-fun lt!998373 () tuple2!32884)

(declare-fun bm!182752 () Bool)

(declare-fun ++!7995 (Conc!10046 Conc!10046) Conc!10046)

(assert (=> bm!182752 (= call!182756 (++!7995 (ite c!453448 (_2!19462 lt!998373) (left!24532 (c!453343 totalInput!758))) (ite c!453448 (right!24862 (c!453343 totalInput!758)) (_1!19462 lt!998377))))))

(declare-fun b!2793833 () Bool)

(declare-fun e!1764059 () tuple2!32884)

(declare-fun e!1764058 () tuple2!32884)

(assert (=> b!2793833 (= e!1764059 e!1764058)))

(declare-fun c!453442 () Bool)

(assert (=> b!2793833 (= c!453442 (= testedPSize!143 (csize!20323 (c!453343 totalInput!758))))))

(declare-fun b!2793834 () Bool)

(declare-fun lt!998372 () Unit!46564)

(declare-fun lt!998368 () Unit!46564)

(assert (=> b!2793834 (= lt!998372 lt!998368)))

(declare-fun slice!752 (List!32487 Int Int) List!32487)

(assert (=> b!2793834 (= (drop!1736 lt!998375 testedPSize!143) (slice!752 lt!998375 testedPSize!143 call!182752))))

(declare-fun dropLemma!18 (List!32487 Int) Unit!46564)

(assert (=> b!2793834 (= lt!998368 (dropLemma!18 lt!998375 testedPSize!143))))

(assert (=> b!2793834 (= lt!998375 (list!12178 (xs!13158 (c!453343 totalInput!758))))))

(declare-fun lt!998376 () tuple2!32886)

(assert (=> b!2793834 (= lt!998376 call!182757)))

(declare-fun slice!753 (IArray!20097 Int Int) IArray!20097)

(assert (=> b!2793834 (= e!1764058 (tuple2!32885 (Leaf!15305 (slice!753 (xs!13158 (c!453343 totalInput!758)) 0 testedPSize!143) testedPSize!143) (Leaf!15305 (slice!753 (xs!13158 (c!453343 totalInput!758)) testedPSize!143 (csize!20323 (c!453343 totalInput!758))) (- (csize!20323 (c!453343 totalInput!758)) testedPSize!143))))))

(declare-fun b!2793835 () Bool)

(assert (=> b!2793835 (= e!1764058 (tuple2!32885 (c!453343 totalInput!758) Empty!10046))))

(declare-fun b!2793836 () Bool)

(assert (=> b!2793836 (= e!1764055 e!1764062)))

(assert (=> b!2793836 (= c!453443 ((_ is Leaf!15305) (c!453343 totalInput!758)))))

(declare-fun b!2793837 () Bool)

(assert (=> b!2793837 (= e!1764057 (tuple2!32887 lt!998366 lt!998378))))

(declare-fun b!2793824 () Bool)

(assert (=> b!2793824 (= e!1764064 (- testedPSize!143 (size!25228 (left!24532 (c!453343 totalInput!758)))))))

(declare-fun d!812381 () Bool)

(declare-fun e!1764065 () Bool)

(assert (=> d!812381 e!1764065))

(declare-fun res!1165082 () Bool)

(assert (=> d!812381 (=> (not res!1165082) (not e!1764065))))

(declare-fun lt!998369 () tuple2!32884)

(assert (=> d!812381 (= res!1165082 (isBalanced!3064 (_1!19462 lt!998369)))))

(assert (=> d!812381 (= lt!998369 e!1764055)))

(declare-fun c!453450 () Bool)

(assert (=> d!812381 (= c!453450 ((_ is Empty!10046) (c!453343 totalInput!758)))))

(assert (=> d!812381 (isBalanced!3064 (c!453343 totalInput!758))))

(assert (=> d!812381 (= (splitAt!172 (c!453343 totalInput!758) testedPSize!143) lt!998369)))

(declare-fun b!2793838 () Bool)

(declare-fun res!1165081 () Bool)

(assert (=> b!2793838 (=> (not res!1165081) (not e!1764065))))

(assert (=> b!2793838 (= res!1165081 (isBalanced!3064 (_2!19462 lt!998369)))))

(declare-fun b!2793839 () Bool)

(assert (=> b!2793839 (= e!1764059 (tuple2!32885 Empty!10046 (c!453343 totalInput!758)))))

(declare-fun b!2793840 () Bool)

(assert (=> b!2793840 (= e!1764063 testedPSize!143)))

(declare-fun b!2793841 () Bool)

(assert (=> b!2793841 (= e!1764057 e!1764056)))

(assert (=> b!2793841 (= c!453447 (< testedPSize!143 call!182752))))

(declare-fun b!2793842 () Bool)

(assert (=> b!2793842 (= lt!998373 call!182754)))

(assert (=> b!2793842 (= e!1764054 (tuple2!32885 (_1!19462 lt!998373) call!182756))))

(declare-fun b!2793843 () Bool)

(declare-fun c!453444 () Bool)

(assert (=> b!2793843 (= c!453444 (<= testedPSize!143 0))))

(assert (=> b!2793843 (= e!1764062 e!1764059)))

(declare-fun b!2793844 () Bool)

(assert (=> b!2793844 (= e!1764065 (= (tuple2!32887 (list!12177 (_1!19462 lt!998369)) (list!12177 (_2!19462 lt!998369))) (splitAtIndex!67 (list!12177 (c!453343 totalInput!758)) testedPSize!143)))))

(assert (= (and d!812381 c!453450) b!2793829))

(assert (= (and d!812381 (not c!453450)) b!2793836))

(assert (= (and b!2793836 c!453443) b!2793843))

(assert (= (and b!2793836 (not c!453443)) b!2793831))

(assert (= (and b!2793843 c!453444) b!2793839))

(assert (= (and b!2793843 (not c!453444)) b!2793833))

(assert (= (and b!2793833 c!453442) b!2793835))

(assert (= (and b!2793833 (not c!453442)) b!2793834))

(assert (= (and b!2793831 c!453440) b!2793837))

(assert (= (and b!2793831 (not c!453440)) b!2793841))

(assert (= (and b!2793841 c!453447) b!2793828))

(assert (= (and b!2793841 (not c!453447)) b!2793823))

(assert (= (or b!2793828 b!2793823) bm!182751))

(assert (= (or b!2793828 b!2793823) bm!182749))

(assert (= (and bm!182749 c!453441) b!2793840))

(assert (= (and bm!182749 (not c!453441)) b!2793825))

(assert (= (and b!2793831 c!453445) b!2793826))

(assert (= (and b!2793831 (not c!453445)) b!2793832))

(assert (= (and b!2793832 c!453448) b!2793842))

(assert (= (and b!2793832 (not c!453448)) b!2793821))

(assert (= (or b!2793842 b!2793821) bm!182752))

(assert (= (or b!2793842 b!2793821) bm!182750))

(assert (= (and bm!182750 c!453446) b!2793830))

(assert (= (and bm!182750 (not c!453446)) b!2793824))

(assert (= (or b!2793834 b!2793825 b!2793831 b!2793841) bm!182747))

(assert (= (or b!2793834 bm!182749) bm!182748))

(assert (= (and bm!182748 c!453449) b!2793827))

(assert (= (and bm!182748 (not c!453449)) b!2793822))

(assert (= (and d!812381 res!1165082) b!2793838))

(assert (= (and b!2793838 res!1165081) b!2793844))

(declare-fun m!3224074 () Bool)

(assert (=> d!812381 m!3224074))

(assert (=> d!812381 m!3223743))

(declare-fun m!3224076 () Bool)

(assert (=> bm!182750 m!3224076))

(assert (=> b!2793824 m!3223901))

(declare-fun m!3224078 () Bool)

(assert (=> b!2793844 m!3224078))

(declare-fun m!3224080 () Bool)

(assert (=> b!2793844 m!3224080))

(assert (=> b!2793844 m!3223747))

(assert (=> b!2793844 m!3223747))

(declare-fun m!3224082 () Bool)

(assert (=> b!2793844 m!3224082))

(declare-fun m!3224084 () Bool)

(assert (=> bm!182752 m!3224084))

(declare-fun m!3224086 () Bool)

(assert (=> b!2793838 m!3224086))

(declare-fun m!3224088 () Bool)

(assert (=> bm!182748 m!3224088))

(declare-fun m!3224090 () Bool)

(assert (=> bm!182747 m!3224090))

(declare-fun m!3224092 () Bool)

(assert (=> b!2793831 m!3224092))

(assert (=> b!2793831 m!3224092))

(declare-fun m!3224094 () Bool)

(assert (=> b!2793831 m!3224094))

(declare-fun m!3224096 () Bool)

(assert (=> b!2793831 m!3224096))

(assert (=> b!2793831 m!3223901))

(assert (=> b!2793831 m!3223966))

(assert (=> b!2793831 m!3223964))

(assert (=> b!2793832 m!3223901))

(assert (=> b!2793827 m!3223970))

(declare-fun m!3224098 () Bool)

(assert (=> b!2793834 m!3224098))

(declare-fun m!3224100 () Bool)

(assert (=> b!2793834 m!3224100))

(declare-fun m!3224102 () Bool)

(assert (=> b!2793834 m!3224102))

(declare-fun m!3224104 () Bool)

(assert (=> b!2793834 m!3224104))

(assert (=> b!2793834 m!3223970))

(declare-fun m!3224106 () Bool)

(assert (=> b!2793834 m!3224106))

(declare-fun m!3224108 () Bool)

(assert (=> bm!182751 m!3224108))

(assert (=> d!812259 d!812381))

(declare-fun d!812383 () Bool)

(declare-fun res!1165084 () Bool)

(declare-fun e!1764067 () Bool)

(assert (=> d!812383 (=> res!1165084 e!1764067)))

(assert (=> d!812383 (= res!1165084 (not ((_ is Node!10046) (c!453343 totalInput!758))))))

(assert (=> d!812383 (= (isBalanced!3064 (c!453343 totalInput!758)) e!1764067)))

(declare-fun b!2793845 () Bool)

(declare-fun res!1165088 () Bool)

(declare-fun e!1764066 () Bool)

(assert (=> b!2793845 (=> (not res!1165088) (not e!1764066))))

(assert (=> b!2793845 (= res!1165088 (isBalanced!3064 (left!24532 (c!453343 totalInput!758))))))

(declare-fun b!2793846 () Bool)

(declare-fun res!1165085 () Bool)

(assert (=> b!2793846 (=> (not res!1165085) (not e!1764066))))

(assert (=> b!2793846 (= res!1165085 (<= (- (height!1495 (left!24532 (c!453343 totalInput!758))) (height!1495 (right!24862 (c!453343 totalInput!758)))) 1))))

(declare-fun b!2793847 () Bool)

(assert (=> b!2793847 (= e!1764066 (not (isEmpty!18127 (right!24862 (c!453343 totalInput!758)))))))

(declare-fun b!2793848 () Bool)

(declare-fun res!1165083 () Bool)

(assert (=> b!2793848 (=> (not res!1165083) (not e!1764066))))

(assert (=> b!2793848 (= res!1165083 (isBalanced!3064 (right!24862 (c!453343 totalInput!758))))))

(declare-fun b!2793849 () Bool)

(assert (=> b!2793849 (= e!1764067 e!1764066)))

(declare-fun res!1165086 () Bool)

(assert (=> b!2793849 (=> (not res!1165086) (not e!1764066))))

(assert (=> b!2793849 (= res!1165086 (<= (- 1) (- (height!1495 (left!24532 (c!453343 totalInput!758))) (height!1495 (right!24862 (c!453343 totalInput!758))))))))

(declare-fun b!2793850 () Bool)

(declare-fun res!1165087 () Bool)

(assert (=> b!2793850 (=> (not res!1165087) (not e!1764066))))

(assert (=> b!2793850 (= res!1165087 (not (isEmpty!18127 (left!24532 (c!453343 totalInput!758)))))))

(assert (= (and d!812383 (not res!1165084)) b!2793849))

(assert (= (and b!2793849 res!1165086) b!2793846))

(assert (= (and b!2793846 res!1165085) b!2793845))

(assert (= (and b!2793845 res!1165088) b!2793848))

(assert (= (and b!2793848 res!1165083) b!2793850))

(assert (= (and b!2793850 res!1165087) b!2793847))

(declare-fun m!3224110 () Bool)

(assert (=> b!2793845 m!3224110))

(declare-fun m!3224112 () Bool)

(assert (=> b!2793847 m!3224112))

(declare-fun m!3224114 () Bool)

(assert (=> b!2793850 m!3224114))

(declare-fun m!3224116 () Bool)

(assert (=> b!2793848 m!3224116))

(assert (=> b!2793849 m!3223905))

(assert (=> b!2793849 m!3223907))

(assert (=> b!2793846 m!3223905))

(assert (=> b!2793846 m!3223907))

(assert (=> d!812259 d!812383))

(declare-fun bs!514397 () Bool)

(declare-fun d!812385 () Bool)

(assert (= bs!514397 (and d!812385 d!812293)))

(declare-fun lambda!102598 () Int)

(assert (=> bs!514397 (= lambda!102598 lambda!102577)))

(declare-fun bs!514398 () Bool)

(assert (= bs!514398 (and d!812385 d!812249)))

(assert (=> bs!514398 (= lambda!102598 lambda!102575)))

(declare-fun bs!514399 () Bool)

(assert (= bs!514399 (and d!812385 d!812367)))

(assert (=> bs!514399 (= lambda!102598 lambda!102596)))

(declare-fun bs!514400 () Bool)

(assert (= bs!514400 (and d!812385 d!812315)))

(assert (=> bs!514400 (= lambda!102598 lambda!102583)))

(declare-fun bs!514401 () Bool)

(assert (= bs!514401 (and d!812385 d!812313)))

(assert (=> bs!514401 (= lambda!102598 lambda!102582)))

(declare-fun bs!514402 () Bool)

(assert (= bs!514402 (and d!812385 d!812333)))

(assert (=> bs!514402 (= lambda!102598 lambda!102588)))

(declare-fun bs!514403 () Bool)

(assert (= bs!514403 (and d!812385 d!812337)))

(assert (=> bs!514403 (= lambda!102598 lambda!102590)))

(declare-fun bs!514404 () Bool)

(assert (= bs!514404 (and d!812385 d!812289)))

(assert (=> bs!514404 (= lambda!102598 lambda!102576)))

(declare-fun bs!514405 () Bool)

(assert (= bs!514405 (and d!812385 d!812305)))

(assert (=> bs!514405 (= lambda!102598 lambda!102578)))

(declare-fun bs!514406 () Bool)

(assert (= bs!514406 (and d!812385 d!812321)))

(assert (=> bs!514406 (= lambda!102598 lambda!102584)))

(declare-fun bs!514407 () Bool)

(assert (= bs!514407 (and d!812385 d!812363)))

(assert (=> bs!514407 (= lambda!102598 lambda!102595)))

(declare-fun bs!514408 () Bool)

(assert (= bs!514408 (and d!812385 d!812335)))

(assert (=> bs!514408 (= lambda!102598 lambda!102589)))

(declare-fun bs!514409 () Bool)

(assert (= bs!514409 (and d!812385 d!812369)))

(assert (=> bs!514409 (= lambda!102598 lambda!102597)))

(declare-fun bs!514410 () Bool)

(assert (= bs!514410 (and d!812385 d!812345)))

(assert (=> bs!514410 (= lambda!102598 lambda!102591)))

(assert (=> d!812385 (= (inv!43993 setElem!24028) (forall!6682 (exprs!2899 setElem!24028) lambda!102598))))

(declare-fun bs!514411 () Bool)

(assert (= bs!514411 d!812385))

(declare-fun m!3224118 () Bool)

(assert (=> bs!514411 m!3224118))

(assert (=> setNonEmpty!24028 d!812385))

(declare-fun d!812387 () Bool)

(declare-fun res!1165093 () Bool)

(declare-fun e!1764070 () Bool)

(assert (=> d!812387 (=> (not res!1165093) (not e!1764070))))

(declare-fun valid!3101 (MutableMap!3865) Bool)

(assert (=> d!812387 (= res!1165093 (valid!3101 (cache!4008 cacheUp!890)))))

(assert (=> d!812387 (= (validCacheMapUp!388 (cache!4008 cacheUp!890)) e!1764070)))

(declare-fun b!2793855 () Bool)

(declare-fun res!1165094 () Bool)

(assert (=> b!2793855 (=> (not res!1165094) (not e!1764070))))

(declare-fun invariantList!461 (List!32490) Bool)

(declare-datatypes ((ListMap!1255 0))(
  ( (ListMap!1256 (toList!1872 List!32490)) )
))
(declare-fun map!7023 (MutableMap!3865) ListMap!1255)

(assert (=> b!2793855 (= res!1165094 (invariantList!461 (toList!1872 (map!7023 (cache!4008 cacheUp!890)))))))

(declare-fun b!2793856 () Bool)

(declare-fun lambda!102601 () Int)

(declare-fun forall!6685 (List!32490 Int) Bool)

(assert (=> b!2793856 (= e!1764070 (forall!6685 (toList!1872 (map!7023 (cache!4008 cacheUp!890))) lambda!102601))))

(assert (= (and d!812387 res!1165093) b!2793855))

(assert (= (and b!2793855 res!1165094) b!2793856))

(declare-fun m!3224121 () Bool)

(assert (=> d!812387 m!3224121))

(declare-fun m!3224123 () Bool)

(assert (=> b!2793855 m!3224123))

(declare-fun m!3224125 () Bool)

(assert (=> b!2793855 m!3224125))

(assert (=> b!2793856 m!3224123))

(declare-fun m!3224127 () Bool)

(assert (=> b!2793856 m!3224127))

(assert (=> b!2793462 d!812387))

(declare-fun bs!514412 () Bool)

(declare-fun d!812389 () Bool)

(assert (= bs!514412 (and d!812389 d!812249)))

(declare-fun lambda!102602 () Int)

(assert (=> bs!514412 (= lambda!102602 lambda!102575)))

(declare-fun bs!514413 () Bool)

(assert (= bs!514413 (and d!812389 d!812367)))

(assert (=> bs!514413 (= lambda!102602 lambda!102596)))

(declare-fun bs!514414 () Bool)

(assert (= bs!514414 (and d!812389 d!812315)))

(assert (=> bs!514414 (= lambda!102602 lambda!102583)))

(declare-fun bs!514415 () Bool)

(assert (= bs!514415 (and d!812389 d!812313)))

(assert (=> bs!514415 (= lambda!102602 lambda!102582)))

(declare-fun bs!514416 () Bool)

(assert (= bs!514416 (and d!812389 d!812333)))

(assert (=> bs!514416 (= lambda!102602 lambda!102588)))

(declare-fun bs!514417 () Bool)

(assert (= bs!514417 (and d!812389 d!812293)))

(assert (=> bs!514417 (= lambda!102602 lambda!102577)))

(declare-fun bs!514418 () Bool)

(assert (= bs!514418 (and d!812389 d!812385)))

(assert (=> bs!514418 (= lambda!102602 lambda!102598)))

(declare-fun bs!514419 () Bool)

(assert (= bs!514419 (and d!812389 d!812337)))

(assert (=> bs!514419 (= lambda!102602 lambda!102590)))

(declare-fun bs!514420 () Bool)

(assert (= bs!514420 (and d!812389 d!812289)))

(assert (=> bs!514420 (= lambda!102602 lambda!102576)))

(declare-fun bs!514421 () Bool)

(assert (= bs!514421 (and d!812389 d!812305)))

(assert (=> bs!514421 (= lambda!102602 lambda!102578)))

(declare-fun bs!514422 () Bool)

(assert (= bs!514422 (and d!812389 d!812321)))

(assert (=> bs!514422 (= lambda!102602 lambda!102584)))

(declare-fun bs!514423 () Bool)

(assert (= bs!514423 (and d!812389 d!812363)))

(assert (=> bs!514423 (= lambda!102602 lambda!102595)))

(declare-fun bs!514424 () Bool)

(assert (= bs!514424 (and d!812389 d!812335)))

(assert (=> bs!514424 (= lambda!102602 lambda!102589)))

(declare-fun bs!514425 () Bool)

(assert (= bs!514425 (and d!812389 d!812369)))

(assert (=> bs!514425 (= lambda!102602 lambda!102597)))

(declare-fun bs!514426 () Bool)

(assert (= bs!514426 (and d!812389 d!812345)))

(assert (=> bs!514426 (= lambda!102602 lambda!102591)))

(assert (=> d!812389 (= (inv!43993 (_2!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))) (forall!6682 (exprs!2899 (_2!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))) lambda!102602))))

(declare-fun bs!514427 () Bool)

(assert (= bs!514427 d!812389))

(declare-fun m!3224129 () Bool)

(assert (=> bs!514427 m!3224129))

(assert (=> b!2793601 d!812389))

(declare-fun bs!514428 () Bool)

(declare-fun d!812391 () Bool)

(assert (= bs!514428 (and d!812391 d!812249)))

(declare-fun lambda!102603 () Int)

(assert (=> bs!514428 (= lambda!102603 lambda!102575)))

(declare-fun bs!514429 () Bool)

(assert (= bs!514429 (and d!812391 d!812367)))

(assert (=> bs!514429 (= lambda!102603 lambda!102596)))

(declare-fun bs!514430 () Bool)

(assert (= bs!514430 (and d!812391 d!812315)))

(assert (=> bs!514430 (= lambda!102603 lambda!102583)))

(declare-fun bs!514431 () Bool)

(assert (= bs!514431 (and d!812391 d!812313)))

(assert (=> bs!514431 (= lambda!102603 lambda!102582)))

(declare-fun bs!514432 () Bool)

(assert (= bs!514432 (and d!812391 d!812333)))

(assert (=> bs!514432 (= lambda!102603 lambda!102588)))

(declare-fun bs!514433 () Bool)

(assert (= bs!514433 (and d!812391 d!812293)))

(assert (=> bs!514433 (= lambda!102603 lambda!102577)))

(declare-fun bs!514434 () Bool)

(assert (= bs!514434 (and d!812391 d!812385)))

(assert (=> bs!514434 (= lambda!102603 lambda!102598)))

(declare-fun bs!514435 () Bool)

(assert (= bs!514435 (and d!812391 d!812337)))

(assert (=> bs!514435 (= lambda!102603 lambda!102590)))

(declare-fun bs!514436 () Bool)

(assert (= bs!514436 (and d!812391 d!812289)))

(assert (=> bs!514436 (= lambda!102603 lambda!102576)))

(declare-fun bs!514437 () Bool)

(assert (= bs!514437 (and d!812391 d!812305)))

(assert (=> bs!514437 (= lambda!102603 lambda!102578)))

(declare-fun bs!514438 () Bool)

(assert (= bs!514438 (and d!812391 d!812321)))

(assert (=> bs!514438 (= lambda!102603 lambda!102584)))

(declare-fun bs!514439 () Bool)

(assert (= bs!514439 (and d!812391 d!812363)))

(assert (=> bs!514439 (= lambda!102603 lambda!102595)))

(declare-fun bs!514440 () Bool)

(assert (= bs!514440 (and d!812391 d!812335)))

(assert (=> bs!514440 (= lambda!102603 lambda!102589)))

(declare-fun bs!514441 () Bool)

(assert (= bs!514441 (and d!812391 d!812369)))

(assert (=> bs!514441 (= lambda!102603 lambda!102597)))

(declare-fun bs!514442 () Bool)

(assert (= bs!514442 (and d!812391 d!812389)))

(assert (=> bs!514442 (= lambda!102603 lambda!102602)))

(declare-fun bs!514443 () Bool)

(assert (= bs!514443 (and d!812391 d!812345)))

(assert (=> bs!514443 (= lambda!102603 lambda!102591)))

(assert (=> d!812391 (= (inv!43993 (_2!19457 (_1!19458 (h!37809 mapValue!18012)))) (forall!6682 (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapValue!18012)))) lambda!102603))))

(declare-fun bs!514444 () Bool)

(assert (= bs!514444 d!812391))

(declare-fun m!3224131 () Bool)

(assert (=> bs!514444 m!3224131))

(assert (=> b!2793595 d!812391))

(declare-fun bs!514445 () Bool)

(declare-fun d!812393 () Bool)

(assert (= bs!514445 (and d!812393 d!812249)))

(declare-fun lambda!102604 () Int)

(assert (=> bs!514445 (= lambda!102604 lambda!102575)))

(declare-fun bs!514446 () Bool)

(assert (= bs!514446 (and d!812393 d!812391)))

(assert (=> bs!514446 (= lambda!102604 lambda!102603)))

(declare-fun bs!514447 () Bool)

(assert (= bs!514447 (and d!812393 d!812367)))

(assert (=> bs!514447 (= lambda!102604 lambda!102596)))

(declare-fun bs!514448 () Bool)

(assert (= bs!514448 (and d!812393 d!812315)))

(assert (=> bs!514448 (= lambda!102604 lambda!102583)))

(declare-fun bs!514449 () Bool)

(assert (= bs!514449 (and d!812393 d!812313)))

(assert (=> bs!514449 (= lambda!102604 lambda!102582)))

(declare-fun bs!514450 () Bool)

(assert (= bs!514450 (and d!812393 d!812333)))

(assert (=> bs!514450 (= lambda!102604 lambda!102588)))

(declare-fun bs!514451 () Bool)

(assert (= bs!514451 (and d!812393 d!812293)))

(assert (=> bs!514451 (= lambda!102604 lambda!102577)))

(declare-fun bs!514452 () Bool)

(assert (= bs!514452 (and d!812393 d!812385)))

(assert (=> bs!514452 (= lambda!102604 lambda!102598)))

(declare-fun bs!514453 () Bool)

(assert (= bs!514453 (and d!812393 d!812337)))

(assert (=> bs!514453 (= lambda!102604 lambda!102590)))

(declare-fun bs!514454 () Bool)

(assert (= bs!514454 (and d!812393 d!812289)))

(assert (=> bs!514454 (= lambda!102604 lambda!102576)))

(declare-fun bs!514455 () Bool)

(assert (= bs!514455 (and d!812393 d!812305)))

(assert (=> bs!514455 (= lambda!102604 lambda!102578)))

(declare-fun bs!514456 () Bool)

(assert (= bs!514456 (and d!812393 d!812321)))

(assert (=> bs!514456 (= lambda!102604 lambda!102584)))

(declare-fun bs!514457 () Bool)

(assert (= bs!514457 (and d!812393 d!812363)))

(assert (=> bs!514457 (= lambda!102604 lambda!102595)))

(declare-fun bs!514458 () Bool)

(assert (= bs!514458 (and d!812393 d!812335)))

(assert (=> bs!514458 (= lambda!102604 lambda!102589)))

(declare-fun bs!514459 () Bool)

(assert (= bs!514459 (and d!812393 d!812369)))

(assert (=> bs!514459 (= lambda!102604 lambda!102597)))

(declare-fun bs!514460 () Bool)

(assert (= bs!514460 (and d!812393 d!812389)))

(assert (=> bs!514460 (= lambda!102604 lambda!102602)))

(declare-fun bs!514461 () Bool)

(assert (= bs!514461 (and d!812393 d!812345)))

(assert (=> bs!514461 (= lambda!102604 lambda!102591)))

(assert (=> d!812393 (= (inv!43993 (_2!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))) (forall!6682 (exprs!2899 (_2!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))) lambda!102604))))

(declare-fun bs!514462 () Bool)

(assert (= bs!514462 d!812393))

(declare-fun m!3224133 () Bool)

(assert (=> bs!514462 m!3224133))

(assert (=> b!2793598 d!812393))

(assert (=> d!812239 d!812383))

(assert (=> d!812251 d!812307))

(declare-fun bs!514463 () Bool)

(declare-fun d!812395 () Bool)

(assert (= bs!514463 (and d!812395 d!812249)))

(declare-fun lambda!102605 () Int)

(assert (=> bs!514463 (= lambda!102605 lambda!102575)))

(declare-fun bs!514464 () Bool)

(assert (= bs!514464 (and d!812395 d!812391)))

(assert (=> bs!514464 (= lambda!102605 lambda!102603)))

(declare-fun bs!514465 () Bool)

(assert (= bs!514465 (and d!812395 d!812367)))

(assert (=> bs!514465 (= lambda!102605 lambda!102596)))

(declare-fun bs!514466 () Bool)

(assert (= bs!514466 (and d!812395 d!812315)))

(assert (=> bs!514466 (= lambda!102605 lambda!102583)))

(declare-fun bs!514467 () Bool)

(assert (= bs!514467 (and d!812395 d!812313)))

(assert (=> bs!514467 (= lambda!102605 lambda!102582)))

(declare-fun bs!514468 () Bool)

(assert (= bs!514468 (and d!812395 d!812393)))

(assert (=> bs!514468 (= lambda!102605 lambda!102604)))

(declare-fun bs!514469 () Bool)

(assert (= bs!514469 (and d!812395 d!812333)))

(assert (=> bs!514469 (= lambda!102605 lambda!102588)))

(declare-fun bs!514470 () Bool)

(assert (= bs!514470 (and d!812395 d!812293)))

(assert (=> bs!514470 (= lambda!102605 lambda!102577)))

(declare-fun bs!514471 () Bool)

(assert (= bs!514471 (and d!812395 d!812385)))

(assert (=> bs!514471 (= lambda!102605 lambda!102598)))

(declare-fun bs!514472 () Bool)

(assert (= bs!514472 (and d!812395 d!812337)))

(assert (=> bs!514472 (= lambda!102605 lambda!102590)))

(declare-fun bs!514473 () Bool)

(assert (= bs!514473 (and d!812395 d!812289)))

(assert (=> bs!514473 (= lambda!102605 lambda!102576)))

(declare-fun bs!514474 () Bool)

(assert (= bs!514474 (and d!812395 d!812305)))

(assert (=> bs!514474 (= lambda!102605 lambda!102578)))

(declare-fun bs!514475 () Bool)

(assert (= bs!514475 (and d!812395 d!812321)))

(assert (=> bs!514475 (= lambda!102605 lambda!102584)))

(declare-fun bs!514476 () Bool)

(assert (= bs!514476 (and d!812395 d!812363)))

(assert (=> bs!514476 (= lambda!102605 lambda!102595)))

(declare-fun bs!514477 () Bool)

(assert (= bs!514477 (and d!812395 d!812335)))

(assert (=> bs!514477 (= lambda!102605 lambda!102589)))

(declare-fun bs!514478 () Bool)

(assert (= bs!514478 (and d!812395 d!812369)))

(assert (=> bs!514478 (= lambda!102605 lambda!102597)))

(declare-fun bs!514479 () Bool)

(assert (= bs!514479 (and d!812395 d!812389)))

(assert (=> bs!514479 (= lambda!102605 lambda!102602)))

(declare-fun bs!514480 () Bool)

(assert (= bs!514480 (and d!812395 d!812345)))

(assert (=> bs!514480 (= lambda!102605 lambda!102591)))

(assert (=> d!812395 (= (inv!43993 (_1!19459 (_1!19460 (h!37810 mapDefault!18011)))) (forall!6682 (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapDefault!18011)))) lambda!102605))))

(declare-fun bs!514481 () Bool)

(assert (= bs!514481 d!812395))

(declare-fun m!3224135 () Bool)

(assert (=> bs!514481 m!3224135))

(assert (=> b!2793551 d!812395))

(declare-fun d!812397 () Bool)

(declare-fun lt!998379 () List!32487)

(assert (=> d!812397 (= (++!7994 (t!228639 testedP!183) lt!998379) (tail!4416 lt!998237))))

(declare-fun e!1764071 () List!32487)

(assert (=> d!812397 (= lt!998379 e!1764071)))

(declare-fun c!453451 () Bool)

(assert (=> d!812397 (= c!453451 ((_ is Cons!32387) (t!228639 testedP!183)))))

(assert (=> d!812397 (>= (size!25227 (tail!4416 lt!998237)) (size!25227 (t!228639 testedP!183)))))

(assert (=> d!812397 (= (getSuffix!1286 (tail!4416 lt!998237) (t!228639 testedP!183)) lt!998379)))

(declare-fun b!2793857 () Bool)

(assert (=> b!2793857 (= e!1764071 (getSuffix!1286 (tail!4416 (tail!4416 lt!998237)) (t!228639 (t!228639 testedP!183))))))

(declare-fun b!2793858 () Bool)

(assert (=> b!2793858 (= e!1764071 (tail!4416 lt!998237))))

(assert (= (and d!812397 c!453451) b!2793857))

(assert (= (and d!812397 (not c!453451)) b!2793858))

(declare-fun m!3224137 () Bool)

(assert (=> d!812397 m!3224137))

(assert (=> d!812397 m!3223695))

(assert (=> d!812397 m!3223879))

(assert (=> d!812397 m!3223687))

(assert (=> b!2793857 m!3223695))

(assert (=> b!2793857 m!3223883))

(assert (=> b!2793857 m!3223883))

(declare-fun m!3224139 () Bool)

(assert (=> b!2793857 m!3224139))

(assert (=> b!2793458 d!812397))

(assert (=> b!2793458 d!812283))

(declare-fun d!812399 () Bool)

(declare-fun res!1165099 () Bool)

(declare-fun e!1764076 () Bool)

(assert (=> d!812399 (=> res!1165099 e!1764076)))

(assert (=> d!812399 (= res!1165099 ((_ is Nil!32388) (exprs!2899 setElem!24006)))))

(assert (=> d!812399 (= (forall!6682 (exprs!2899 setElem!24006) lambda!102575) e!1764076)))

(declare-fun b!2793863 () Bool)

(declare-fun e!1764077 () Bool)

(assert (=> b!2793863 (= e!1764076 e!1764077)))

(declare-fun res!1165100 () Bool)

(assert (=> b!2793863 (=> (not res!1165100) (not e!1764077))))

(declare-fun dynLambda!13622 (Int Regex!8181) Bool)

(assert (=> b!2793863 (= res!1165100 (dynLambda!13622 lambda!102575 (h!37808 (exprs!2899 setElem!24006))))))

(declare-fun b!2793864 () Bool)

(assert (=> b!2793864 (= e!1764077 (forall!6682 (t!228640 (exprs!2899 setElem!24006)) lambda!102575))))

(assert (= (and d!812399 (not res!1165099)) b!2793863))

(assert (= (and b!2793863 res!1165100) b!2793864))

(declare-fun b_lambda!83743 () Bool)

(assert (=> (not b_lambda!83743) (not b!2793863)))

(declare-fun m!3224141 () Bool)

(assert (=> b!2793863 m!3224141))

(declare-fun m!3224143 () Bool)

(assert (=> b!2793864 m!3224143))

(assert (=> d!812249 d!812399))

(assert (=> d!812265 d!812387))

(declare-fun d!812401 () Bool)

(declare-fun lt!998380 () Int)

(assert (=> d!812401 (>= lt!998380 0)))

(declare-fun e!1764078 () Int)

(assert (=> d!812401 (= lt!998380 e!1764078)))

(declare-fun c!453452 () Bool)

(assert (=> d!812401 (= c!453452 ((_ is Nil!32387) lt!998292))))

(assert (=> d!812401 (= (size!25227 lt!998292) lt!998380)))

(declare-fun b!2793865 () Bool)

(assert (=> b!2793865 (= e!1764078 0)))

(declare-fun b!2793866 () Bool)

(assert (=> b!2793866 (= e!1764078 (+ 1 (size!25227 (t!228639 lt!998292))))))

(assert (= (and d!812401 c!453452) b!2793865))

(assert (= (and d!812401 (not c!453452)) b!2793866))

(declare-fun m!3224145 () Bool)

(assert (=> b!2793866 m!3224145))

(assert (=> b!2793476 d!812401))

(assert (=> b!2793476 d!812215))

(declare-fun d!812403 () Bool)

(declare-fun lt!998381 () Int)

(assert (=> d!812403 (>= lt!998381 0)))

(declare-fun e!1764079 () Int)

(assert (=> d!812403 (= lt!998381 e!1764079)))

(declare-fun c!453453 () Bool)

(assert (=> d!812403 (= c!453453 ((_ is Nil!32387) testedSuffix!143))))

(assert (=> d!812403 (= (size!25227 testedSuffix!143) lt!998381)))

(declare-fun b!2793867 () Bool)

(assert (=> b!2793867 (= e!1764079 0)))

(declare-fun b!2793868 () Bool)

(assert (=> b!2793868 (= e!1764079 (+ 1 (size!25227 (t!228639 testedSuffix!143))))))

(assert (= (and d!812403 c!453453) b!2793867))

(assert (= (and d!812403 (not c!453453)) b!2793868))

(declare-fun m!3224147 () Bool)

(assert (=> b!2793868 m!3224147))

(assert (=> b!2793476 d!812403))

(declare-fun bs!514482 () Bool)

(declare-fun d!812405 () Bool)

(assert (= bs!514482 (and d!812405 d!812249)))

(declare-fun lambda!102606 () Int)

(assert (=> bs!514482 (= lambda!102606 lambda!102575)))

(declare-fun bs!514483 () Bool)

(assert (= bs!514483 (and d!812405 d!812391)))

(assert (=> bs!514483 (= lambda!102606 lambda!102603)))

(declare-fun bs!514484 () Bool)

(assert (= bs!514484 (and d!812405 d!812367)))

(assert (=> bs!514484 (= lambda!102606 lambda!102596)))

(declare-fun bs!514485 () Bool)

(assert (= bs!514485 (and d!812405 d!812395)))

(assert (=> bs!514485 (= lambda!102606 lambda!102605)))

(declare-fun bs!514486 () Bool)

(assert (= bs!514486 (and d!812405 d!812315)))

(assert (=> bs!514486 (= lambda!102606 lambda!102583)))

(declare-fun bs!514487 () Bool)

(assert (= bs!514487 (and d!812405 d!812313)))

(assert (=> bs!514487 (= lambda!102606 lambda!102582)))

(declare-fun bs!514488 () Bool)

(assert (= bs!514488 (and d!812405 d!812393)))

(assert (=> bs!514488 (= lambda!102606 lambda!102604)))

(declare-fun bs!514489 () Bool)

(assert (= bs!514489 (and d!812405 d!812333)))

(assert (=> bs!514489 (= lambda!102606 lambda!102588)))

(declare-fun bs!514490 () Bool)

(assert (= bs!514490 (and d!812405 d!812293)))

(assert (=> bs!514490 (= lambda!102606 lambda!102577)))

(declare-fun bs!514491 () Bool)

(assert (= bs!514491 (and d!812405 d!812385)))

(assert (=> bs!514491 (= lambda!102606 lambda!102598)))

(declare-fun bs!514492 () Bool)

(assert (= bs!514492 (and d!812405 d!812337)))

(assert (=> bs!514492 (= lambda!102606 lambda!102590)))

(declare-fun bs!514493 () Bool)

(assert (= bs!514493 (and d!812405 d!812289)))

(assert (=> bs!514493 (= lambda!102606 lambda!102576)))

(declare-fun bs!514494 () Bool)

(assert (= bs!514494 (and d!812405 d!812305)))

(assert (=> bs!514494 (= lambda!102606 lambda!102578)))

(declare-fun bs!514495 () Bool)

(assert (= bs!514495 (and d!812405 d!812321)))

(assert (=> bs!514495 (= lambda!102606 lambda!102584)))

(declare-fun bs!514496 () Bool)

(assert (= bs!514496 (and d!812405 d!812363)))

(assert (=> bs!514496 (= lambda!102606 lambda!102595)))

(declare-fun bs!514497 () Bool)

(assert (= bs!514497 (and d!812405 d!812335)))

(assert (=> bs!514497 (= lambda!102606 lambda!102589)))

(declare-fun bs!514498 () Bool)

(assert (= bs!514498 (and d!812405 d!812369)))

(assert (=> bs!514498 (= lambda!102606 lambda!102597)))

(declare-fun bs!514499 () Bool)

(assert (= bs!514499 (and d!812405 d!812389)))

(assert (=> bs!514499 (= lambda!102606 lambda!102602)))

(declare-fun bs!514500 () Bool)

(assert (= bs!514500 (and d!812405 d!812345)))

(assert (=> bs!514500 (= lambda!102606 lambda!102591)))

(assert (=> d!812405 (= (inv!43993 setElem!24014) (forall!6682 (exprs!2899 setElem!24014) lambda!102606))))

(declare-fun bs!514501 () Bool)

(assert (= bs!514501 d!812405))

(declare-fun m!3224149 () Bool)

(assert (=> bs!514501 m!3224149))

(assert (=> setNonEmpty!24014 d!812405))

(declare-fun b!2793869 () Bool)

(declare-fun e!1764082 () Int)

(declare-fun e!1764083 () Int)

(assert (=> b!2793869 (= e!1764082 e!1764083)))

(declare-fun c!453457 () Bool)

(declare-fun call!182758 () Int)

(assert (=> b!2793869 (= c!453457 (>= (- testedPSize!143 1) call!182758))))

(declare-fun b!2793870 () Bool)

(assert (=> b!2793870 (= e!1764083 (- call!182758 (- testedPSize!143 1)))))

(declare-fun b!2793871 () Bool)

(declare-fun e!1764084 () List!32487)

(assert (=> b!2793871 (= e!1764084 (t!228639 lt!998237))))

(declare-fun b!2793872 () Bool)

(assert (=> b!2793872 (= e!1764082 call!182758)))

(declare-fun b!2793873 () Bool)

(declare-fun e!1764080 () Bool)

(declare-fun lt!998382 () List!32487)

(assert (=> b!2793873 (= e!1764080 (= (size!25227 lt!998382) e!1764082))))

(declare-fun c!453455 () Bool)

(assert (=> b!2793873 (= c!453455 (<= (- testedPSize!143 1) 0))))

(declare-fun b!2793874 () Bool)

(assert (=> b!2793874 (= e!1764084 (drop!1736 (t!228639 (t!228639 lt!998237)) (- (- testedPSize!143 1) 1)))))

(declare-fun b!2793875 () Bool)

(declare-fun e!1764081 () List!32487)

(assert (=> b!2793875 (= e!1764081 Nil!32387)))

(declare-fun b!2793876 () Bool)

(assert (=> b!2793876 (= e!1764081 e!1764084)))

(declare-fun c!453454 () Bool)

(assert (=> b!2793876 (= c!453454 (<= (- testedPSize!143 1) 0))))

(declare-fun d!812407 () Bool)

(assert (=> d!812407 e!1764080))

(declare-fun res!1165101 () Bool)

(assert (=> d!812407 (=> (not res!1165101) (not e!1764080))))

(assert (=> d!812407 (= res!1165101 (= ((_ map implies) (content!4531 lt!998382) (content!4531 (t!228639 lt!998237))) ((as const (InoxSet C!16520)) true)))))

(assert (=> d!812407 (= lt!998382 e!1764081)))

(declare-fun c!453456 () Bool)

(assert (=> d!812407 (= c!453456 ((_ is Nil!32387) (t!228639 lt!998237)))))

(assert (=> d!812407 (= (drop!1736 (t!228639 lt!998237) (- testedPSize!143 1)) lt!998382)))

(declare-fun b!2793877 () Bool)

(assert (=> b!2793877 (= e!1764083 0)))

(declare-fun bm!182753 () Bool)

(assert (=> bm!182753 (= call!182758 (size!25227 (t!228639 lt!998237)))))

(assert (= (and d!812407 c!453456) b!2793875))

(assert (= (and d!812407 (not c!453456)) b!2793876))

(assert (= (and b!2793876 c!453454) b!2793871))

(assert (= (and b!2793876 (not c!453454)) b!2793874))

(assert (= (and d!812407 res!1165101) b!2793873))

(assert (= (and b!2793873 c!453455) b!2793872))

(assert (= (and b!2793873 (not c!453455)) b!2793869))

(assert (= (and b!2793869 c!453457) b!2793877))

(assert (= (and b!2793869 (not c!453457)) b!2793870))

(assert (= (or b!2793872 b!2793869 b!2793870) bm!182753))

(declare-fun m!3224151 () Bool)

(assert (=> b!2793873 m!3224151))

(declare-fun m!3224153 () Bool)

(assert (=> b!2793874 m!3224153))

(declare-fun m!3224155 () Bool)

(assert (=> d!812407 m!3224155))

(assert (=> d!812407 m!3223956))

(assert (=> bm!182753 m!3223984))

(assert (=> b!2793523 d!812407))

(declare-fun d!812409 () Bool)

(assert (=> d!812409 (= (list!12176 (_1!19461 lt!998300)) (list!12177 (c!453343 (_1!19461 lt!998300))))))

(declare-fun bs!514502 () Bool)

(assert (= bs!514502 d!812409))

(declare-fun m!3224157 () Bool)

(assert (=> bs!514502 m!3224157))

(assert (=> b!2793487 d!812409))

(declare-fun d!812411 () Bool)

(assert (=> d!812411 (= (list!12176 (_2!19461 lt!998300)) (list!12177 (c!453343 (_2!19461 lt!998300))))))

(declare-fun bs!514503 () Bool)

(assert (= bs!514503 d!812411))

(declare-fun m!3224159 () Bool)

(assert (=> bs!514503 m!3224159))

(assert (=> b!2793487 d!812411))

(declare-fun lt!998387 () tuple2!32886)

(declare-fun e!1764092 () Bool)

(declare-fun b!2793890 () Bool)

(assert (=> b!2793890 (= e!1764092 (= (_2!19463 lt!998387) (drop!1736 (list!12176 totalInput!758) testedPSize!143)))))

(declare-fun b!2793891 () Bool)

(declare-fun lt!998388 () tuple2!32886)

(assert (=> b!2793891 (= lt!998388 (splitAtIndex!67 (t!228639 (list!12176 totalInput!758)) (- testedPSize!143 1)))))

(declare-fun e!1764093 () tuple2!32886)

(assert (=> b!2793891 (= e!1764093 (tuple2!32887 (Cons!32387 (h!37807 (list!12176 totalInput!758)) (_1!19463 lt!998388)) (_2!19463 lt!998388)))))

(declare-fun b!2793893 () Bool)

(declare-fun e!1764091 () tuple2!32886)

(assert (=> b!2793893 (= e!1764091 e!1764093)))

(declare-fun c!453463 () Bool)

(assert (=> b!2793893 (= c!453463 (<= testedPSize!143 0))))

(declare-fun b!2793894 () Bool)

(assert (=> b!2793894 (= e!1764093 (tuple2!32887 Nil!32387 (list!12176 totalInput!758)))))

(declare-fun b!2793895 () Bool)

(declare-fun res!1165107 () Bool)

(assert (=> b!2793895 (=> (not res!1165107) (not e!1764092))))

(declare-fun take!509 (List!32487 Int) List!32487)

(assert (=> b!2793895 (= res!1165107 (= (_1!19463 lt!998387) (take!509 (list!12176 totalInput!758) testedPSize!143)))))

(declare-fun b!2793892 () Bool)

(assert (=> b!2793892 (= e!1764091 (tuple2!32887 Nil!32387 Nil!32387))))

(declare-fun d!812413 () Bool)

(assert (=> d!812413 e!1764092))

(declare-fun res!1165106 () Bool)

(assert (=> d!812413 (=> (not res!1165106) (not e!1764092))))

(assert (=> d!812413 (= res!1165106 (= (++!7994 (_1!19463 lt!998387) (_2!19463 lt!998387)) (list!12176 totalInput!758)))))

(assert (=> d!812413 (= lt!998387 e!1764091)))

(declare-fun c!453462 () Bool)

(assert (=> d!812413 (= c!453462 ((_ is Nil!32387) (list!12176 totalInput!758)))))

(assert (=> d!812413 (= (splitAtIndex!67 (list!12176 totalInput!758) testedPSize!143) lt!998387)))

(assert (= (and d!812413 c!453462) b!2793892))

(assert (= (and d!812413 (not c!453462)) b!2793893))

(assert (= (and b!2793893 c!453463) b!2793894))

(assert (= (and b!2793893 (not c!453463)) b!2793891))

(assert (= (and d!812413 res!1165106) b!2793895))

(assert (= (and b!2793895 res!1165107) b!2793890))

(assert (=> b!2793890 m!3223627))

(declare-fun m!3224161 () Bool)

(assert (=> b!2793890 m!3224161))

(declare-fun m!3224163 () Bool)

(assert (=> b!2793891 m!3224163))

(assert (=> b!2793895 m!3223627))

(declare-fun m!3224165 () Bool)

(assert (=> b!2793895 m!3224165))

(declare-fun m!3224167 () Bool)

(assert (=> d!812413 m!3224167))

(assert (=> b!2793487 d!812413))

(assert (=> b!2793487 d!812243))

(declare-fun bs!514504 () Bool)

(declare-fun d!812415 () Bool)

(assert (= bs!514504 (and d!812415 d!812249)))

(declare-fun lambda!102607 () Int)

(assert (=> bs!514504 (= lambda!102607 lambda!102575)))

(declare-fun bs!514505 () Bool)

(assert (= bs!514505 (and d!812415 d!812391)))

(assert (=> bs!514505 (= lambda!102607 lambda!102603)))

(declare-fun bs!514506 () Bool)

(assert (= bs!514506 (and d!812415 d!812395)))

(assert (=> bs!514506 (= lambda!102607 lambda!102605)))

(declare-fun bs!514507 () Bool)

(assert (= bs!514507 (and d!812415 d!812315)))

(assert (=> bs!514507 (= lambda!102607 lambda!102583)))

(declare-fun bs!514508 () Bool)

(assert (= bs!514508 (and d!812415 d!812313)))

(assert (=> bs!514508 (= lambda!102607 lambda!102582)))

(declare-fun bs!514509 () Bool)

(assert (= bs!514509 (and d!812415 d!812393)))

(assert (=> bs!514509 (= lambda!102607 lambda!102604)))

(declare-fun bs!514510 () Bool)

(assert (= bs!514510 (and d!812415 d!812333)))

(assert (=> bs!514510 (= lambda!102607 lambda!102588)))

(declare-fun bs!514511 () Bool)

(assert (= bs!514511 (and d!812415 d!812293)))

(assert (=> bs!514511 (= lambda!102607 lambda!102577)))

(declare-fun bs!514512 () Bool)

(assert (= bs!514512 (and d!812415 d!812385)))

(assert (=> bs!514512 (= lambda!102607 lambda!102598)))

(declare-fun bs!514513 () Bool)

(assert (= bs!514513 (and d!812415 d!812367)))

(assert (=> bs!514513 (= lambda!102607 lambda!102596)))

(declare-fun bs!514514 () Bool)

(assert (= bs!514514 (and d!812415 d!812405)))

(assert (=> bs!514514 (= lambda!102607 lambda!102606)))

(declare-fun bs!514515 () Bool)

(assert (= bs!514515 (and d!812415 d!812337)))

(assert (=> bs!514515 (= lambda!102607 lambda!102590)))

(declare-fun bs!514516 () Bool)

(assert (= bs!514516 (and d!812415 d!812289)))

(assert (=> bs!514516 (= lambda!102607 lambda!102576)))

(declare-fun bs!514517 () Bool)

(assert (= bs!514517 (and d!812415 d!812305)))

(assert (=> bs!514517 (= lambda!102607 lambda!102578)))

(declare-fun bs!514518 () Bool)

(assert (= bs!514518 (and d!812415 d!812321)))

(assert (=> bs!514518 (= lambda!102607 lambda!102584)))

(declare-fun bs!514519 () Bool)

(assert (= bs!514519 (and d!812415 d!812363)))

(assert (=> bs!514519 (= lambda!102607 lambda!102595)))

(declare-fun bs!514520 () Bool)

(assert (= bs!514520 (and d!812415 d!812335)))

(assert (=> bs!514520 (= lambda!102607 lambda!102589)))

(declare-fun bs!514521 () Bool)

(assert (= bs!514521 (and d!812415 d!812369)))

(assert (=> bs!514521 (= lambda!102607 lambda!102597)))

(declare-fun bs!514522 () Bool)

(assert (= bs!514522 (and d!812415 d!812389)))

(assert (=> bs!514522 (= lambda!102607 lambda!102602)))

(declare-fun bs!514523 () Bool)

(assert (= bs!514523 (and d!812415 d!812345)))

(assert (=> bs!514523 (= lambda!102607 lambda!102591)))

(assert (=> d!812415 (= (inv!43993 (_2!19457 (_1!19458 (h!37809 mapDefault!18012)))) (forall!6682 (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapDefault!18012)))) lambda!102607))))

(declare-fun bs!514524 () Bool)

(assert (= bs!514524 d!812415))

(declare-fun m!3224169 () Bool)

(assert (=> bs!514524 m!3224169))

(assert (=> b!2793539 d!812415))

(assert (=> b!2793409 d!812217))

(assert (=> b!2793443 d!812329))

(assert (=> b!2793443 d!812215))

(declare-fun bs!514525 () Bool)

(declare-fun d!812417 () Bool)

(assert (= bs!514525 (and d!812417 b!2793453)))

(declare-fun lambda!102610 () Int)

(assert (=> bs!514525 (not (= lambda!102610 lambda!102572))))

(declare-fun bs!514526 () Bool)

(assert (= bs!514526 (and d!812417 d!812331)))

(assert (=> bs!514526 (= lambda!102610 lambda!102587)))

(declare-fun bs!514527 () Bool)

(assert (= bs!514527 (and d!812417 d!812353)))

(assert (=> bs!514527 (= (= lambda!102570 (ite c!453361 lambda!102571 lambda!102572)) (= lambda!102610 lambda!102594))))

(declare-fun bs!514528 () Bool)

(assert (= bs!514528 (and d!812417 d!812231)))

(assert (=> bs!514528 (not (= lambda!102610 lambda!102570))))

(declare-fun bs!514529 () Bool)

(assert (= bs!514529 (and d!812417 b!2793452)))

(assert (=> bs!514529 (not (= lambda!102610 lambda!102571))))

(assert (=> d!812417 true))

(assert (=> d!812417 (< (dynLambda!13621 order!17247 lambda!102570) (dynLambda!13621 order!17247 lambda!102610))))

(assert (=> d!812417 (exists!1006 lt!998283 lambda!102610)))

(declare-fun lt!998391 () Unit!46564)

(declare-fun choose!16430 (List!32491 Int) Unit!46564)

(assert (=> d!812417 (= lt!998391 (choose!16430 lt!998283 lambda!102570))))

(assert (=> d!812417 (not (forall!6684 lt!998283 lambda!102570))))

(assert (=> d!812417 (= (lemmaNotForallThenExists!101 lt!998283 lambda!102570) lt!998391)))

(declare-fun bs!514530 () Bool)

(assert (= bs!514530 d!812417))

(declare-fun m!3224171 () Bool)

(assert (=> bs!514530 m!3224171))

(declare-fun m!3224173 () Bool)

(assert (=> bs!514530 m!3224173))

(declare-fun m!3224175 () Bool)

(assert (=> bs!514530 m!3224175))

(assert (=> b!2793452 d!812417))

(declare-fun bs!514531 () Bool)

(declare-fun d!812419 () Bool)

(assert (= bs!514531 (and d!812419 d!812391)))

(declare-fun lambda!102611 () Int)

(assert (=> bs!514531 (= lambda!102611 lambda!102603)))

(declare-fun bs!514532 () Bool)

(assert (= bs!514532 (and d!812419 d!812395)))

(assert (=> bs!514532 (= lambda!102611 lambda!102605)))

(declare-fun bs!514533 () Bool)

(assert (= bs!514533 (and d!812419 d!812315)))

(assert (=> bs!514533 (= lambda!102611 lambda!102583)))

(declare-fun bs!514534 () Bool)

(assert (= bs!514534 (and d!812419 d!812313)))

(assert (=> bs!514534 (= lambda!102611 lambda!102582)))

(declare-fun bs!514535 () Bool)

(assert (= bs!514535 (and d!812419 d!812393)))

(assert (=> bs!514535 (= lambda!102611 lambda!102604)))

(declare-fun bs!514536 () Bool)

(assert (= bs!514536 (and d!812419 d!812333)))

(assert (=> bs!514536 (= lambda!102611 lambda!102588)))

(declare-fun bs!514537 () Bool)

(assert (= bs!514537 (and d!812419 d!812293)))

(assert (=> bs!514537 (= lambda!102611 lambda!102577)))

(declare-fun bs!514538 () Bool)

(assert (= bs!514538 (and d!812419 d!812385)))

(assert (=> bs!514538 (= lambda!102611 lambda!102598)))

(declare-fun bs!514539 () Bool)

(assert (= bs!514539 (and d!812419 d!812415)))

(assert (=> bs!514539 (= lambda!102611 lambda!102607)))

(declare-fun bs!514540 () Bool)

(assert (= bs!514540 (and d!812419 d!812249)))

(assert (=> bs!514540 (= lambda!102611 lambda!102575)))

(declare-fun bs!514541 () Bool)

(assert (= bs!514541 (and d!812419 d!812367)))

(assert (=> bs!514541 (= lambda!102611 lambda!102596)))

(declare-fun bs!514542 () Bool)

(assert (= bs!514542 (and d!812419 d!812405)))

(assert (=> bs!514542 (= lambda!102611 lambda!102606)))

(declare-fun bs!514543 () Bool)

(assert (= bs!514543 (and d!812419 d!812337)))

(assert (=> bs!514543 (= lambda!102611 lambda!102590)))

(declare-fun bs!514544 () Bool)

(assert (= bs!514544 (and d!812419 d!812289)))

(assert (=> bs!514544 (= lambda!102611 lambda!102576)))

(declare-fun bs!514545 () Bool)

(assert (= bs!514545 (and d!812419 d!812305)))

(assert (=> bs!514545 (= lambda!102611 lambda!102578)))

(declare-fun bs!514546 () Bool)

(assert (= bs!514546 (and d!812419 d!812321)))

(assert (=> bs!514546 (= lambda!102611 lambda!102584)))

(declare-fun bs!514547 () Bool)

(assert (= bs!514547 (and d!812419 d!812363)))

(assert (=> bs!514547 (= lambda!102611 lambda!102595)))

(declare-fun bs!514548 () Bool)

(assert (= bs!514548 (and d!812419 d!812335)))

(assert (=> bs!514548 (= lambda!102611 lambda!102589)))

(declare-fun bs!514549 () Bool)

(assert (= bs!514549 (and d!812419 d!812369)))

(assert (=> bs!514549 (= lambda!102611 lambda!102597)))

(declare-fun bs!514550 () Bool)

(assert (= bs!514550 (and d!812419 d!812389)))

(assert (=> bs!514550 (= lambda!102611 lambda!102602)))

(declare-fun bs!514551 () Bool)

(assert (= bs!514551 (and d!812419 d!812345)))

(assert (=> bs!514551 (= lambda!102611 lambda!102591)))

(assert (=> d!812419 (= (inv!43993 setElem!24009) (forall!6682 (exprs!2899 setElem!24009) lambda!102611))))

(declare-fun bs!514552 () Bool)

(assert (= bs!514552 d!812419))

(declare-fun m!3224177 () Bool)

(assert (=> bs!514552 m!3224177))

(assert (=> setNonEmpty!24009 d!812419))

(declare-fun bs!514553 () Bool)

(declare-fun d!812421 () Bool)

(assert (= bs!514553 (and d!812421 d!812391)))

(declare-fun lambda!102612 () Int)

(assert (=> bs!514553 (= lambda!102612 lambda!102603)))

(declare-fun bs!514554 () Bool)

(assert (= bs!514554 (and d!812421 d!812395)))

(assert (=> bs!514554 (= lambda!102612 lambda!102605)))

(declare-fun bs!514555 () Bool)

(assert (= bs!514555 (and d!812421 d!812315)))

(assert (=> bs!514555 (= lambda!102612 lambda!102583)))

(declare-fun bs!514556 () Bool)

(assert (= bs!514556 (and d!812421 d!812419)))

(assert (=> bs!514556 (= lambda!102612 lambda!102611)))

(declare-fun bs!514557 () Bool)

(assert (= bs!514557 (and d!812421 d!812313)))

(assert (=> bs!514557 (= lambda!102612 lambda!102582)))

(declare-fun bs!514558 () Bool)

(assert (= bs!514558 (and d!812421 d!812393)))

(assert (=> bs!514558 (= lambda!102612 lambda!102604)))

(declare-fun bs!514559 () Bool)

(assert (= bs!514559 (and d!812421 d!812333)))

(assert (=> bs!514559 (= lambda!102612 lambda!102588)))

(declare-fun bs!514560 () Bool)

(assert (= bs!514560 (and d!812421 d!812293)))

(assert (=> bs!514560 (= lambda!102612 lambda!102577)))

(declare-fun bs!514561 () Bool)

(assert (= bs!514561 (and d!812421 d!812385)))

(assert (=> bs!514561 (= lambda!102612 lambda!102598)))

(declare-fun bs!514562 () Bool)

(assert (= bs!514562 (and d!812421 d!812415)))

(assert (=> bs!514562 (= lambda!102612 lambda!102607)))

(declare-fun bs!514563 () Bool)

(assert (= bs!514563 (and d!812421 d!812249)))

(assert (=> bs!514563 (= lambda!102612 lambda!102575)))

(declare-fun bs!514564 () Bool)

(assert (= bs!514564 (and d!812421 d!812367)))

(assert (=> bs!514564 (= lambda!102612 lambda!102596)))

(declare-fun bs!514565 () Bool)

(assert (= bs!514565 (and d!812421 d!812405)))

(assert (=> bs!514565 (= lambda!102612 lambda!102606)))

(declare-fun bs!514566 () Bool)

(assert (= bs!514566 (and d!812421 d!812337)))

(assert (=> bs!514566 (= lambda!102612 lambda!102590)))

(declare-fun bs!514567 () Bool)

(assert (= bs!514567 (and d!812421 d!812289)))

(assert (=> bs!514567 (= lambda!102612 lambda!102576)))

(declare-fun bs!514568 () Bool)

(assert (= bs!514568 (and d!812421 d!812305)))

(assert (=> bs!514568 (= lambda!102612 lambda!102578)))

(declare-fun bs!514569 () Bool)

(assert (= bs!514569 (and d!812421 d!812321)))

(assert (=> bs!514569 (= lambda!102612 lambda!102584)))

(declare-fun bs!514570 () Bool)

(assert (= bs!514570 (and d!812421 d!812363)))

(assert (=> bs!514570 (= lambda!102612 lambda!102595)))

(declare-fun bs!514571 () Bool)

(assert (= bs!514571 (and d!812421 d!812335)))

(assert (=> bs!514571 (= lambda!102612 lambda!102589)))

(declare-fun bs!514572 () Bool)

(assert (= bs!514572 (and d!812421 d!812369)))

(assert (=> bs!514572 (= lambda!102612 lambda!102597)))

(declare-fun bs!514573 () Bool)

(assert (= bs!514573 (and d!812421 d!812389)))

(assert (=> bs!514573 (= lambda!102612 lambda!102602)))

(declare-fun bs!514574 () Bool)

(assert (= bs!514574 (and d!812421 d!812345)))

(assert (=> bs!514574 (= lambda!102612 lambda!102591)))

(assert (=> d!812421 (= (inv!43993 (_1!19459 (_1!19460 (h!37810 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))) (forall!6682 (exprs!2899 (_1!19459 (_1!19460 (h!37810 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))) lambda!102612))))

(declare-fun bs!514575 () Bool)

(assert (= bs!514575 d!812421))

(declare-fun m!3224179 () Bool)

(assert (=> bs!514575 m!3224179))

(assert (=> b!2793573 d!812421))

(declare-fun d!812423 () Bool)

(assert (=> d!812423 (= testedSuffix!143 lt!998241)))

(assert (=> d!812423 true))

(declare-fun _$63!891 () Unit!46564)

(assert (=> d!812423 (= (choose!16426 testedP!183 testedSuffix!143 testedP!183 lt!998241 lt!998237) _$63!891)))

(assert (=> d!812233 d!812423))

(assert (=> d!812233 d!812219))

(declare-fun d!812425 () Bool)

(declare-fun lt!998394 () Bool)

(assert (=> d!812425 (= lt!998394 (select (content!4531 lt!998237) lt!998306))))

(declare-fun e!1764100 () Bool)

(assert (=> d!812425 (= lt!998394 e!1764100)))

(declare-fun res!1165113 () Bool)

(assert (=> d!812425 (=> (not res!1165113) (not e!1764100))))

(assert (=> d!812425 (= res!1165113 ((_ is Cons!32387) lt!998237))))

(assert (=> d!812425 (= (contains!6011 lt!998237 lt!998306) lt!998394)))

(declare-fun b!2793900 () Bool)

(declare-fun e!1764101 () Bool)

(assert (=> b!2793900 (= e!1764100 e!1764101)))

(declare-fun res!1165112 () Bool)

(assert (=> b!2793900 (=> res!1165112 e!1764101)))

(assert (=> b!2793900 (= res!1165112 (= (h!37807 lt!998237) lt!998306))))

(declare-fun b!2793901 () Bool)

(assert (=> b!2793901 (= e!1764101 (contains!6011 (t!228639 lt!998237) lt!998306))))

(assert (= (and d!812425 res!1165113) b!2793900))

(assert (= (and b!2793900 (not res!1165112)) b!2793901))

(assert (=> d!812425 m!3223813))

(declare-fun m!3224181 () Bool)

(assert (=> d!812425 m!3224181))

(declare-fun m!3224183 () Bool)

(assert (=> b!2793901 m!3224183))

(assert (=> d!812269 d!812425))

(declare-fun d!812427 () Bool)

(declare-fun e!1764102 () Bool)

(assert (=> d!812427 e!1764102))

(declare-fun res!1165114 () Bool)

(assert (=> d!812427 (=> res!1165114 e!1764102)))

(declare-fun lt!998395 () Bool)

(assert (=> d!812427 (= res!1165114 (not lt!998395))))

(declare-fun e!1764104 () Bool)

(assert (=> d!812427 (= lt!998395 e!1764104)))

(declare-fun res!1165115 () Bool)

(assert (=> d!812427 (=> res!1165115 e!1764104)))

(assert (=> d!812427 (= res!1165115 ((_ is Nil!32387) (tail!4416 testedP!183)))))

(assert (=> d!812427 (= (isPrefix!2609 (tail!4416 testedP!183) (tail!4416 lt!998239)) lt!998395)))

(declare-fun b!2793904 () Bool)

(declare-fun e!1764103 () Bool)

(assert (=> b!2793904 (= e!1764103 (isPrefix!2609 (tail!4416 (tail!4416 testedP!183)) (tail!4416 (tail!4416 lt!998239))))))

(declare-fun b!2793902 () Bool)

(assert (=> b!2793902 (= e!1764104 e!1764103)))

(declare-fun res!1165117 () Bool)

(assert (=> b!2793902 (=> (not res!1165117) (not e!1764103))))

(assert (=> b!2793902 (= res!1165117 (not ((_ is Nil!32387) (tail!4416 lt!998239))))))

(declare-fun b!2793905 () Bool)

(assert (=> b!2793905 (= e!1764102 (>= (size!25227 (tail!4416 lt!998239)) (size!25227 (tail!4416 testedP!183))))))

(declare-fun b!2793903 () Bool)

(declare-fun res!1165116 () Bool)

(assert (=> b!2793903 (=> (not res!1165116) (not e!1764103))))

(assert (=> b!2793903 (= res!1165116 (= (head!6184 (tail!4416 testedP!183)) (head!6184 (tail!4416 lt!998239))))))

(assert (= (and d!812427 (not res!1165115)) b!2793902))

(assert (= (and b!2793902 res!1165117) b!2793903))

(assert (= (and b!2793903 res!1165116) b!2793904))

(assert (= (and d!812427 (not res!1165114)) b!2793905))

(assert (=> b!2793904 m!3223693))

(assert (=> b!2793904 m!3224012))

(assert (=> b!2793904 m!3223705))

(declare-fun m!3224185 () Bool)

(assert (=> b!2793904 m!3224185))

(assert (=> b!2793904 m!3224012))

(assert (=> b!2793904 m!3224185))

(declare-fun m!3224187 () Bool)

(assert (=> b!2793904 m!3224187))

(assert (=> b!2793905 m!3223705))

(declare-fun m!3224189 () Bool)

(assert (=> b!2793905 m!3224189))

(assert (=> b!2793905 m!3223693))

(assert (=> b!2793905 m!3224016))

(assert (=> b!2793903 m!3223693))

(assert (=> b!2793903 m!3224018))

(assert (=> b!2793903 m!3223705))

(declare-fun m!3224191 () Bool)

(assert (=> b!2793903 m!3224191))

(assert (=> b!2793446 d!812427))

(assert (=> b!2793446 d!812349))

(declare-fun d!812429 () Bool)

(assert (=> d!812429 (= (tail!4416 lt!998239) (t!228639 lt!998239))))

(assert (=> b!2793446 d!812429))

(declare-fun bs!514576 () Bool)

(declare-fun d!812431 () Bool)

(assert (= bs!514576 (and d!812431 d!812391)))

(declare-fun lambda!102613 () Int)

(assert (=> bs!514576 (= lambda!102613 lambda!102603)))

(declare-fun bs!514577 () Bool)

(assert (= bs!514577 (and d!812431 d!812395)))

(assert (=> bs!514577 (= lambda!102613 lambda!102605)))

(declare-fun bs!514578 () Bool)

(assert (= bs!514578 (and d!812431 d!812315)))

(assert (=> bs!514578 (= lambda!102613 lambda!102583)))

(declare-fun bs!514579 () Bool)

(assert (= bs!514579 (and d!812431 d!812419)))

(assert (=> bs!514579 (= lambda!102613 lambda!102611)))

(declare-fun bs!514580 () Bool)

(assert (= bs!514580 (and d!812431 d!812313)))

(assert (=> bs!514580 (= lambda!102613 lambda!102582)))

(declare-fun bs!514581 () Bool)

(assert (= bs!514581 (and d!812431 d!812421)))

(assert (=> bs!514581 (= lambda!102613 lambda!102612)))

(declare-fun bs!514582 () Bool)

(assert (= bs!514582 (and d!812431 d!812393)))

(assert (=> bs!514582 (= lambda!102613 lambda!102604)))

(declare-fun bs!514583 () Bool)

(assert (= bs!514583 (and d!812431 d!812333)))

(assert (=> bs!514583 (= lambda!102613 lambda!102588)))

(declare-fun bs!514584 () Bool)

(assert (= bs!514584 (and d!812431 d!812293)))

(assert (=> bs!514584 (= lambda!102613 lambda!102577)))

(declare-fun bs!514585 () Bool)

(assert (= bs!514585 (and d!812431 d!812385)))

(assert (=> bs!514585 (= lambda!102613 lambda!102598)))

(declare-fun bs!514586 () Bool)

(assert (= bs!514586 (and d!812431 d!812415)))

(assert (=> bs!514586 (= lambda!102613 lambda!102607)))

(declare-fun bs!514587 () Bool)

(assert (= bs!514587 (and d!812431 d!812249)))

(assert (=> bs!514587 (= lambda!102613 lambda!102575)))

(declare-fun bs!514588 () Bool)

(assert (= bs!514588 (and d!812431 d!812367)))

(assert (=> bs!514588 (= lambda!102613 lambda!102596)))

(declare-fun bs!514589 () Bool)

(assert (= bs!514589 (and d!812431 d!812405)))

(assert (=> bs!514589 (= lambda!102613 lambda!102606)))

(declare-fun bs!514590 () Bool)

(assert (= bs!514590 (and d!812431 d!812337)))

(assert (=> bs!514590 (= lambda!102613 lambda!102590)))

(declare-fun bs!514591 () Bool)

(assert (= bs!514591 (and d!812431 d!812289)))

(assert (=> bs!514591 (= lambda!102613 lambda!102576)))

(declare-fun bs!514592 () Bool)

(assert (= bs!514592 (and d!812431 d!812305)))

(assert (=> bs!514592 (= lambda!102613 lambda!102578)))

(declare-fun bs!514593 () Bool)

(assert (= bs!514593 (and d!812431 d!812321)))

(assert (=> bs!514593 (= lambda!102613 lambda!102584)))

(declare-fun bs!514594 () Bool)

(assert (= bs!514594 (and d!812431 d!812363)))

(assert (=> bs!514594 (= lambda!102613 lambda!102595)))

(declare-fun bs!514595 () Bool)

(assert (= bs!514595 (and d!812431 d!812335)))

(assert (=> bs!514595 (= lambda!102613 lambda!102589)))

(declare-fun bs!514596 () Bool)

(assert (= bs!514596 (and d!812431 d!812369)))

(assert (=> bs!514596 (= lambda!102613 lambda!102597)))

(declare-fun bs!514597 () Bool)

(assert (= bs!514597 (and d!812431 d!812389)))

(assert (=> bs!514597 (= lambda!102613 lambda!102602)))

(declare-fun bs!514598 () Bool)

(assert (= bs!514598 (and d!812431 d!812345)))

(assert (=> bs!514598 (= lambda!102613 lambda!102591)))

(assert (=> d!812431 (= (inv!43993 setElem!24030) (forall!6682 (exprs!2899 setElem!24030) lambda!102613))))

(declare-fun bs!514599 () Bool)

(assert (= bs!514599 d!812431))

(declare-fun m!3224193 () Bool)

(assert (=> bs!514599 m!3224193))

(assert (=> setNonEmpty!24030 d!812431))

(declare-fun d!812433 () Bool)

(declare-fun e!1764107 () Bool)

(assert (=> d!812433 e!1764107))

(declare-fun res!1165120 () Bool)

(assert (=> d!812433 (=> (not res!1165120) (not e!1764107))))

(declare-fun lt!998398 () List!32491)

(declare-fun noDuplicate!548 (List!32491) Bool)

(assert (=> d!812433 (= res!1165120 (noDuplicate!548 lt!998398))))

(declare-fun choose!16431 ((InoxSet Context!4798)) List!32491)

(assert (=> d!812433 (= lt!998398 (choose!16431 z!3684))))

(assert (=> d!812433 (= (toList!1870 z!3684) lt!998398)))

(declare-fun b!2793908 () Bool)

(declare-fun content!4532 (List!32491) (InoxSet Context!4798))

(assert (=> b!2793908 (= e!1764107 (= (content!4532 lt!998398) z!3684))))

(assert (= (and d!812433 res!1165120) b!2793908))

(declare-fun m!3224195 () Bool)

(assert (=> d!812433 m!3224195))

(declare-fun m!3224197 () Bool)

(assert (=> d!812433 m!3224197))

(declare-fun m!3224199 () Bool)

(assert (=> b!2793908 m!3224199))

(assert (=> bm!182727 d!812433))

(declare-fun bs!514600 () Bool)

(declare-fun d!812435 () Bool)

(assert (= bs!514600 (and d!812435 d!812391)))

(declare-fun lambda!102614 () Int)

(assert (=> bs!514600 (= lambda!102614 lambda!102603)))

(declare-fun bs!514601 () Bool)

(assert (= bs!514601 (and d!812435 d!812395)))

(assert (=> bs!514601 (= lambda!102614 lambda!102605)))

(declare-fun bs!514602 () Bool)

(assert (= bs!514602 (and d!812435 d!812315)))

(assert (=> bs!514602 (= lambda!102614 lambda!102583)))

(declare-fun bs!514603 () Bool)

(assert (= bs!514603 (and d!812435 d!812419)))

(assert (=> bs!514603 (= lambda!102614 lambda!102611)))

(declare-fun bs!514604 () Bool)

(assert (= bs!514604 (and d!812435 d!812313)))

(assert (=> bs!514604 (= lambda!102614 lambda!102582)))

(declare-fun bs!514605 () Bool)

(assert (= bs!514605 (and d!812435 d!812431)))

(assert (=> bs!514605 (= lambda!102614 lambda!102613)))

(declare-fun bs!514606 () Bool)

(assert (= bs!514606 (and d!812435 d!812421)))

(assert (=> bs!514606 (= lambda!102614 lambda!102612)))

(declare-fun bs!514607 () Bool)

(assert (= bs!514607 (and d!812435 d!812393)))

(assert (=> bs!514607 (= lambda!102614 lambda!102604)))

(declare-fun bs!514608 () Bool)

(assert (= bs!514608 (and d!812435 d!812333)))

(assert (=> bs!514608 (= lambda!102614 lambda!102588)))

(declare-fun bs!514609 () Bool)

(assert (= bs!514609 (and d!812435 d!812293)))

(assert (=> bs!514609 (= lambda!102614 lambda!102577)))

(declare-fun bs!514610 () Bool)

(assert (= bs!514610 (and d!812435 d!812385)))

(assert (=> bs!514610 (= lambda!102614 lambda!102598)))

(declare-fun bs!514611 () Bool)

(assert (= bs!514611 (and d!812435 d!812415)))

(assert (=> bs!514611 (= lambda!102614 lambda!102607)))

(declare-fun bs!514612 () Bool)

(assert (= bs!514612 (and d!812435 d!812249)))

(assert (=> bs!514612 (= lambda!102614 lambda!102575)))

(declare-fun bs!514613 () Bool)

(assert (= bs!514613 (and d!812435 d!812367)))

(assert (=> bs!514613 (= lambda!102614 lambda!102596)))

(declare-fun bs!514614 () Bool)

(assert (= bs!514614 (and d!812435 d!812405)))

(assert (=> bs!514614 (= lambda!102614 lambda!102606)))

(declare-fun bs!514615 () Bool)

(assert (= bs!514615 (and d!812435 d!812337)))

(assert (=> bs!514615 (= lambda!102614 lambda!102590)))

(declare-fun bs!514616 () Bool)

(assert (= bs!514616 (and d!812435 d!812289)))

(assert (=> bs!514616 (= lambda!102614 lambda!102576)))

(declare-fun bs!514617 () Bool)

(assert (= bs!514617 (and d!812435 d!812305)))

(assert (=> bs!514617 (= lambda!102614 lambda!102578)))

(declare-fun bs!514618 () Bool)

(assert (= bs!514618 (and d!812435 d!812321)))

(assert (=> bs!514618 (= lambda!102614 lambda!102584)))

(declare-fun bs!514619 () Bool)

(assert (= bs!514619 (and d!812435 d!812363)))

(assert (=> bs!514619 (= lambda!102614 lambda!102595)))

(declare-fun bs!514620 () Bool)

(assert (= bs!514620 (and d!812435 d!812335)))

(assert (=> bs!514620 (= lambda!102614 lambda!102589)))

(declare-fun bs!514621 () Bool)

(assert (= bs!514621 (and d!812435 d!812369)))

(assert (=> bs!514621 (= lambda!102614 lambda!102597)))

(declare-fun bs!514622 () Bool)

(assert (= bs!514622 (and d!812435 d!812389)))

(assert (=> bs!514622 (= lambda!102614 lambda!102602)))

(declare-fun bs!514623 () Bool)

(assert (= bs!514623 (and d!812435 d!812345)))

(assert (=> bs!514623 (= lambda!102614 lambda!102591)))

(assert (=> d!812435 (= (inv!43993 (_1!19459 (_1!19460 (h!37810 mapValue!18018)))) (forall!6682 (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapValue!18018)))) lambda!102614))))

(declare-fun bs!514624 () Bool)

(assert (= bs!514624 d!812435))

(declare-fun m!3224201 () Bool)

(assert (=> bs!514624 m!3224201))

(assert (=> b!2793623 d!812435))

(declare-fun bs!514625 () Bool)

(declare-fun d!812437 () Bool)

(assert (= bs!514625 (and d!812437 d!812391)))

(declare-fun lambda!102615 () Int)

(assert (=> bs!514625 (= lambda!102615 lambda!102603)))

(declare-fun bs!514626 () Bool)

(assert (= bs!514626 (and d!812437 d!812435)))

(assert (=> bs!514626 (= lambda!102615 lambda!102614)))

(declare-fun bs!514627 () Bool)

(assert (= bs!514627 (and d!812437 d!812395)))

(assert (=> bs!514627 (= lambda!102615 lambda!102605)))

(declare-fun bs!514628 () Bool)

(assert (= bs!514628 (and d!812437 d!812315)))

(assert (=> bs!514628 (= lambda!102615 lambda!102583)))

(declare-fun bs!514629 () Bool)

(assert (= bs!514629 (and d!812437 d!812419)))

(assert (=> bs!514629 (= lambda!102615 lambda!102611)))

(declare-fun bs!514630 () Bool)

(assert (= bs!514630 (and d!812437 d!812313)))

(assert (=> bs!514630 (= lambda!102615 lambda!102582)))

(declare-fun bs!514631 () Bool)

(assert (= bs!514631 (and d!812437 d!812431)))

(assert (=> bs!514631 (= lambda!102615 lambda!102613)))

(declare-fun bs!514632 () Bool)

(assert (= bs!514632 (and d!812437 d!812421)))

(assert (=> bs!514632 (= lambda!102615 lambda!102612)))

(declare-fun bs!514633 () Bool)

(assert (= bs!514633 (and d!812437 d!812393)))

(assert (=> bs!514633 (= lambda!102615 lambda!102604)))

(declare-fun bs!514634 () Bool)

(assert (= bs!514634 (and d!812437 d!812333)))

(assert (=> bs!514634 (= lambda!102615 lambda!102588)))

(declare-fun bs!514635 () Bool)

(assert (= bs!514635 (and d!812437 d!812293)))

(assert (=> bs!514635 (= lambda!102615 lambda!102577)))

(declare-fun bs!514636 () Bool)

(assert (= bs!514636 (and d!812437 d!812385)))

(assert (=> bs!514636 (= lambda!102615 lambda!102598)))

(declare-fun bs!514637 () Bool)

(assert (= bs!514637 (and d!812437 d!812415)))

(assert (=> bs!514637 (= lambda!102615 lambda!102607)))

(declare-fun bs!514638 () Bool)

(assert (= bs!514638 (and d!812437 d!812249)))

(assert (=> bs!514638 (= lambda!102615 lambda!102575)))

(declare-fun bs!514639 () Bool)

(assert (= bs!514639 (and d!812437 d!812367)))

(assert (=> bs!514639 (= lambda!102615 lambda!102596)))

(declare-fun bs!514640 () Bool)

(assert (= bs!514640 (and d!812437 d!812405)))

(assert (=> bs!514640 (= lambda!102615 lambda!102606)))

(declare-fun bs!514641 () Bool)

(assert (= bs!514641 (and d!812437 d!812337)))

(assert (=> bs!514641 (= lambda!102615 lambda!102590)))

(declare-fun bs!514642 () Bool)

(assert (= bs!514642 (and d!812437 d!812289)))

(assert (=> bs!514642 (= lambda!102615 lambda!102576)))

(declare-fun bs!514643 () Bool)

(assert (= bs!514643 (and d!812437 d!812305)))

(assert (=> bs!514643 (= lambda!102615 lambda!102578)))

(declare-fun bs!514644 () Bool)

(assert (= bs!514644 (and d!812437 d!812321)))

(assert (=> bs!514644 (= lambda!102615 lambda!102584)))

(declare-fun bs!514645 () Bool)

(assert (= bs!514645 (and d!812437 d!812363)))

(assert (=> bs!514645 (= lambda!102615 lambda!102595)))

(declare-fun bs!514646 () Bool)

(assert (= bs!514646 (and d!812437 d!812335)))

(assert (=> bs!514646 (= lambda!102615 lambda!102589)))

(declare-fun bs!514647 () Bool)

(assert (= bs!514647 (and d!812437 d!812369)))

(assert (=> bs!514647 (= lambda!102615 lambda!102597)))

(declare-fun bs!514648 () Bool)

(assert (= bs!514648 (and d!812437 d!812389)))

(assert (=> bs!514648 (= lambda!102615 lambda!102602)))

(declare-fun bs!514649 () Bool)

(assert (= bs!514649 (and d!812437 d!812345)))

(assert (=> bs!514649 (= lambda!102615 lambda!102591)))

(assert (=> d!812437 (= (inv!43993 (_2!19457 (_1!19458 (h!37809 mapDefault!18015)))) (forall!6682 (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapDefault!18015)))) lambda!102615))))

(declare-fun bs!514650 () Bool)

(assert (= bs!514650 d!812437))

(declare-fun m!3224203 () Bool)

(assert (=> bs!514650 m!3224203))

(assert (=> b!2793591 d!812437))

(declare-fun d!812439 () Bool)

(declare-fun c!453464 () Bool)

(assert (=> d!812439 (= c!453464 ((_ is Nil!32387) lt!998292))))

(declare-fun e!1764108 () (InoxSet C!16520))

(assert (=> d!812439 (= (content!4531 lt!998292) e!1764108)))

(declare-fun b!2793909 () Bool)

(assert (=> b!2793909 (= e!1764108 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793910 () Bool)

(assert (=> b!2793910 (= e!1764108 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 lt!998292) true) (content!4531 (t!228639 lt!998292))))))

(assert (= (and d!812439 c!453464) b!2793909))

(assert (= (and d!812439 (not c!453464)) b!2793910))

(declare-fun m!3224205 () Bool)

(assert (=> b!2793910 m!3224205))

(declare-fun m!3224207 () Bool)

(assert (=> b!2793910 m!3224207))

(assert (=> d!812245 d!812439))

(declare-fun d!812441 () Bool)

(declare-fun c!453465 () Bool)

(assert (=> d!812441 (= c!453465 ((_ is Nil!32387) testedP!183))))

(declare-fun e!1764109 () (InoxSet C!16520))

(assert (=> d!812441 (= (content!4531 testedP!183) e!1764109)))

(declare-fun b!2793911 () Bool)

(assert (=> b!2793911 (= e!1764109 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793912 () Bool)

(assert (=> b!2793912 (= e!1764109 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 testedP!183) true) (content!4531 (t!228639 testedP!183))))))

(assert (= (and d!812441 c!453465) b!2793911))

(assert (= (and d!812441 (not c!453465)) b!2793912))

(declare-fun m!3224209 () Bool)

(assert (=> b!2793912 m!3224209))

(assert (=> b!2793912 m!3223929))

(assert (=> d!812245 d!812441))

(declare-fun d!812443 () Bool)

(declare-fun c!453466 () Bool)

(assert (=> d!812443 (= c!453466 ((_ is Nil!32387) testedSuffix!143))))

(declare-fun e!1764110 () (InoxSet C!16520))

(assert (=> d!812443 (= (content!4531 testedSuffix!143) e!1764110)))

(declare-fun b!2793913 () Bool)

(assert (=> b!2793913 (= e!1764110 ((as const (Array C!16520 Bool)) false))))

(declare-fun b!2793914 () Bool)

(assert (=> b!2793914 (= e!1764110 ((_ map or) (store ((as const (Array C!16520 Bool)) false) (h!37807 testedSuffix!143) true) (content!4531 (t!228639 testedSuffix!143))))))

(assert (= (and d!812443 c!453466) b!2793913))

(assert (= (and d!812443 (not c!453466)) b!2793914))

(declare-fun m!3224211 () Bool)

(assert (=> b!2793914 m!3224211))

(declare-fun m!3224213 () Bool)

(assert (=> b!2793914 m!3224213))

(assert (=> d!812245 d!812443))

(declare-fun b!2793918 () Bool)

(declare-fun e!1764112 () List!32487)

(assert (=> b!2793918 (= e!1764112 (++!7994 (list!12177 (left!24532 (c!453343 (_2!19461 lt!998242)))) (list!12177 (right!24862 (c!453343 (_2!19461 lt!998242))))))))

(declare-fun d!812445 () Bool)

(declare-fun c!453467 () Bool)

(assert (=> d!812445 (= c!453467 ((_ is Empty!10046) (c!453343 (_2!19461 lt!998242))))))

(declare-fun e!1764111 () List!32487)

(assert (=> d!812445 (= (list!12177 (c!453343 (_2!19461 lt!998242))) e!1764111)))

(declare-fun b!2793915 () Bool)

(assert (=> b!2793915 (= e!1764111 Nil!32387)))

(declare-fun b!2793917 () Bool)

(assert (=> b!2793917 (= e!1764112 (list!12178 (xs!13158 (c!453343 (_2!19461 lt!998242)))))))

(declare-fun b!2793916 () Bool)

(assert (=> b!2793916 (= e!1764111 e!1764112)))

(declare-fun c!453468 () Bool)

(assert (=> b!2793916 (= c!453468 ((_ is Leaf!15305) (c!453343 (_2!19461 lt!998242))))))

(assert (= (and d!812445 c!453467) b!2793915))

(assert (= (and d!812445 (not c!453467)) b!2793916))

(assert (= (and b!2793916 c!453468) b!2793917))

(assert (= (and b!2793916 (not c!453468)) b!2793918))

(declare-fun m!3224215 () Bool)

(assert (=> b!2793918 m!3224215))

(declare-fun m!3224217 () Bool)

(assert (=> b!2793918 m!3224217))

(assert (=> b!2793918 m!3224215))

(assert (=> b!2793918 m!3224217))

(declare-fun m!3224219 () Bool)

(assert (=> b!2793918 m!3224219))

(declare-fun m!3224221 () Bool)

(assert (=> b!2793917 m!3224221))

(assert (=> d!812255 d!812445))

(declare-fun d!812447 () Bool)

(declare-fun c!453469 () Bool)

(assert (=> d!812447 (= c!453469 ((_ is Node!10046) (left!24532 (c!453343 totalInput!758))))))

(declare-fun e!1764113 () Bool)

(assert (=> d!812447 (= (inv!43994 (left!24532 (c!453343 totalInput!758))) e!1764113)))

(declare-fun b!2793919 () Bool)

(assert (=> b!2793919 (= e!1764113 (inv!43998 (left!24532 (c!453343 totalInput!758))))))

(declare-fun b!2793920 () Bool)

(declare-fun e!1764114 () Bool)

(assert (=> b!2793920 (= e!1764113 e!1764114)))

(declare-fun res!1165121 () Bool)

(assert (=> b!2793920 (= res!1165121 (not ((_ is Leaf!15305) (left!24532 (c!453343 totalInput!758)))))))

(assert (=> b!2793920 (=> res!1165121 e!1764114)))

(declare-fun b!2793921 () Bool)

(assert (=> b!2793921 (= e!1764114 (inv!43999 (left!24532 (c!453343 totalInput!758))))))

(assert (= (and d!812447 c!453469) b!2793919))

(assert (= (and d!812447 (not c!453469)) b!2793920))

(assert (= (and b!2793920 (not res!1165121)) b!2793921))

(declare-fun m!3224223 () Bool)

(assert (=> b!2793919 m!3224223))

(declare-fun m!3224225 () Bool)

(assert (=> b!2793921 m!3224225))

(assert (=> b!2793560 d!812447))

(declare-fun d!812449 () Bool)

(declare-fun c!453470 () Bool)

(assert (=> d!812449 (= c!453470 ((_ is Node!10046) (right!24862 (c!453343 totalInput!758))))))

(declare-fun e!1764115 () Bool)

(assert (=> d!812449 (= (inv!43994 (right!24862 (c!453343 totalInput!758))) e!1764115)))

(declare-fun b!2793922 () Bool)

(assert (=> b!2793922 (= e!1764115 (inv!43998 (right!24862 (c!453343 totalInput!758))))))

(declare-fun b!2793923 () Bool)

(declare-fun e!1764116 () Bool)

(assert (=> b!2793923 (= e!1764115 e!1764116)))

(declare-fun res!1165122 () Bool)

(assert (=> b!2793923 (= res!1165122 (not ((_ is Leaf!15305) (right!24862 (c!453343 totalInput!758)))))))

(assert (=> b!2793923 (=> res!1165122 e!1764116)))

(declare-fun b!2793924 () Bool)

(assert (=> b!2793924 (= e!1764116 (inv!43999 (right!24862 (c!453343 totalInput!758))))))

(assert (= (and d!812449 c!453470) b!2793922))

(assert (= (and d!812449 (not c!453470)) b!2793923))

(assert (= (and b!2793923 (not res!1165122)) b!2793924))

(declare-fun m!3224227 () Bool)

(assert (=> b!2793922 m!3224227))

(declare-fun m!3224229 () Bool)

(assert (=> b!2793924 m!3224229))

(assert (=> b!2793560 d!812449))

(assert (=> b!2793529 d!812329))

(declare-fun d!812451 () Bool)

(assert (=> d!812451 (= (isEmpty!18126 (getLanguageWitness!212 z!3684)) (not ((_ is Some!6278) (getLanguageWitness!212 z!3684))))))

(assert (=> d!812231 d!812451))

(declare-fun bs!514651 () Bool)

(declare-fun d!812453 () Bool)

(assert (= bs!514651 (and d!812453 b!2793453)))

(declare-fun lambda!102622 () Int)

(assert (=> bs!514651 (= lambda!102622 lambda!102572)))

(declare-fun bs!514652 () Bool)

(assert (= bs!514652 (and d!812453 d!812417)))

(assert (=> bs!514652 (not (= lambda!102622 lambda!102610))))

(declare-fun bs!514653 () Bool)

(assert (= bs!514653 (and d!812453 d!812331)))

(assert (=> bs!514653 (not (= lambda!102622 lambda!102587))))

(declare-fun bs!514654 () Bool)

(assert (= bs!514654 (and d!812453 d!812353)))

(assert (=> bs!514654 (not (= lambda!102622 lambda!102594))))

(declare-fun bs!514655 () Bool)

(assert (= bs!514655 (and d!812453 d!812231)))

(assert (=> bs!514655 (not (= lambda!102622 lambda!102570))))

(declare-fun bs!514656 () Bool)

(assert (= bs!514656 (and d!812453 b!2793452)))

(assert (=> bs!514656 (= lambda!102622 lambda!102571)))

(declare-fun lt!998401 () Option!6279)

(declare-fun isDefined!4942 (Option!6279) Bool)

(declare-fun exists!1007 ((InoxSet Context!4798) Int) Bool)

(assert (=> d!812453 (= (isDefined!4942 lt!998401) (exists!1007 z!3684 lambda!102622))))

(declare-fun e!1764119 () Option!6279)

(assert (=> d!812453 (= lt!998401 e!1764119)))

(declare-fun c!453479 () Bool)

(assert (=> d!812453 (= c!453479 (exists!1007 z!3684 lambda!102622))))

(assert (=> d!812453 (= (getLanguageWitness!212 z!3684) lt!998401)))

(declare-fun b!2793929 () Bool)

(declare-fun getLanguageWitness!213 (Context!4798) Option!6279)

(declare-fun getWitness!573 ((InoxSet Context!4798) Int) Context!4798)

(assert (=> b!2793929 (= e!1764119 (getLanguageWitness!213 (getWitness!573 z!3684 lambda!102622)))))

(declare-fun b!2793930 () Bool)

(assert (=> b!2793930 (= e!1764119 None!6278)))

(assert (= (and d!812453 c!453479) b!2793929))

(assert (= (and d!812453 (not c!453479)) b!2793930))

(declare-fun m!3224231 () Bool)

(assert (=> d!812453 m!3224231))

(declare-fun m!3224233 () Bool)

(assert (=> d!812453 m!3224233))

(assert (=> d!812453 m!3224233))

(declare-fun m!3224235 () Bool)

(assert (=> b!2793929 m!3224235))

(assert (=> b!2793929 m!3224235))

(declare-fun m!3224237 () Bool)

(assert (=> b!2793929 m!3224237))

(assert (=> d!812231 d!812453))

(declare-fun d!812455 () Bool)

(declare-fun lt!998404 () Bool)

(assert (=> d!812455 (= lt!998404 (forall!6684 (toList!1870 z!3684) lambda!102570))))

(declare-fun choose!16432 ((InoxSet Context!4798) Int) Bool)

(assert (=> d!812455 (= lt!998404 (choose!16432 z!3684 lambda!102570))))

(assert (=> d!812455 (= (forall!6681 z!3684 lambda!102570) lt!998404)))

(declare-fun bs!514657 () Bool)

(assert (= bs!514657 d!812455))

(assert (=> bs!514657 m!3223721))

(assert (=> bs!514657 m!3223721))

(declare-fun m!3224239 () Bool)

(assert (=> bs!514657 m!3224239))

(declare-fun m!3224241 () Bool)

(assert (=> bs!514657 m!3224241))

(assert (=> d!812231 d!812455))

(assert (=> b!2793498 d!812319))

(declare-fun d!812457 () Bool)

(declare-fun lt!998405 () Int)

(assert (=> d!812457 (>= lt!998405 0)))

(declare-fun e!1764120 () Int)

(assert (=> d!812457 (= lt!998405 e!1764120)))

(declare-fun c!453480 () Bool)

(assert (=> d!812457 (= c!453480 ((_ is Nil!32387) lt!998294))))

(assert (=> d!812457 (= (size!25227 lt!998294) lt!998405)))

(declare-fun b!2793931 () Bool)

(assert (=> b!2793931 (= e!1764120 0)))

(declare-fun b!2793932 () Bool)

(assert (=> b!2793932 (= e!1764120 (+ 1 (size!25227 (t!228639 lt!998294))))))

(assert (= (and d!812457 c!453480) b!2793931))

(assert (= (and d!812457 (not c!453480)) b!2793932))

(declare-fun m!3224243 () Bool)

(assert (=> b!2793932 m!3224243))

(assert (=> b!2793480 d!812457))

(declare-fun d!812459 () Bool)

(declare-fun lt!998406 () Int)

(assert (=> d!812459 (>= lt!998406 0)))

(declare-fun e!1764121 () Int)

(assert (=> d!812459 (= lt!998406 e!1764121)))

(declare-fun c!453481 () Bool)

(assert (=> d!812459 (= c!453481 ((_ is Nil!32387) lt!998246))))

(assert (=> d!812459 (= (size!25227 lt!998246) lt!998406)))

(declare-fun b!2793933 () Bool)

(assert (=> b!2793933 (= e!1764121 0)))

(declare-fun b!2793934 () Bool)

(assert (=> b!2793934 (= e!1764121 (+ 1 (size!25227 (t!228639 lt!998246))))))

(assert (= (and d!812459 c!453481) b!2793933))

(assert (= (and d!812459 (not c!453481)) b!2793934))

(assert (=> b!2793934 m!3224050))

(assert (=> b!2793480 d!812459))

(declare-fun d!812461 () Bool)

(declare-fun lt!998407 () Int)

(assert (=> d!812461 (>= lt!998407 0)))

(declare-fun e!1764122 () Int)

(assert (=> d!812461 (= lt!998407 e!1764122)))

(declare-fun c!453482 () Bool)

(assert (=> d!812461 (= c!453482 ((_ is Nil!32387) lt!998243))))

(assert (=> d!812461 (= (size!25227 lt!998243) lt!998407)))

(declare-fun b!2793935 () Bool)

(assert (=> b!2793935 (= e!1764122 0)))

(declare-fun b!2793936 () Bool)

(assert (=> b!2793936 (= e!1764122 (+ 1 (size!25227 (t!228639 lt!998243))))))

(assert (= (and d!812461 c!453482) b!2793935))

(assert (= (and d!812461 (not c!453482)) b!2793936))

(declare-fun m!3224245 () Bool)

(assert (=> b!2793936 m!3224245))

(assert (=> b!2793480 d!812461))

(declare-fun d!812463 () Bool)

(declare-fun lt!998408 () Int)

(assert (=> d!812463 (>= lt!998408 0)))

(declare-fun e!1764123 () Int)

(assert (=> d!812463 (= lt!998408 e!1764123)))

(declare-fun c!453483 () Bool)

(assert (=> d!812463 (= c!453483 ((_ is Nil!32387) (list!12176 (_1!19461 lt!998242))))))

(assert (=> d!812463 (= (size!25227 (list!12176 (_1!19461 lt!998242))) lt!998408)))

(declare-fun b!2793937 () Bool)

(assert (=> b!2793937 (= e!1764123 0)))

(declare-fun b!2793938 () Bool)

(assert (=> b!2793938 (= e!1764123 (+ 1 (size!25227 (t!228639 (list!12176 (_1!19461 lt!998242))))))))

(assert (= (and d!812463 c!453483) b!2793937))

(assert (= (and d!812463 (not c!453483)) b!2793938))

(declare-fun m!3224247 () Bool)

(assert (=> b!2793938 m!3224247))

(assert (=> d!812225 d!812463))

(assert (=> d!812225 d!812257))

(declare-fun d!812465 () Bool)

(declare-fun lt!998409 () Int)

(assert (=> d!812465 (= lt!998409 (size!25227 (list!12177 (c!453343 (_1!19461 lt!998242)))))))

(assert (=> d!812465 (= lt!998409 (ite ((_ is Empty!10046) (c!453343 (_1!19461 lt!998242))) 0 (ite ((_ is Leaf!15305) (c!453343 (_1!19461 lt!998242))) (csize!20323 (c!453343 (_1!19461 lt!998242))) (csize!20322 (c!453343 (_1!19461 lt!998242))))))))

(assert (=> d!812465 (= (size!25228 (c!453343 (_1!19461 lt!998242))) lt!998409)))

(declare-fun bs!514658 () Bool)

(assert (= bs!514658 d!812465))

(assert (=> bs!514658 m!3223783))

(assert (=> bs!514658 m!3223783))

(declare-fun m!3224249 () Bool)

(assert (=> bs!514658 m!3224249))

(assert (=> d!812225 d!812465))

(declare-fun b!2793939 () Bool)

(declare-fun e!1764124 () Bool)

(declare-fun tp!887971 () Bool)

(declare-fun tp!887972 () Bool)

(assert (=> b!2793939 (= e!1764124 (and tp!887971 tp!887972))))

(assert (=> b!2793597 (= tp!887917 e!1764124)))

(assert (= (and b!2793597 ((_ is Cons!32388) (exprs!2899 (_2!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))))) b!2793939))

(declare-fun b!2793940 () Bool)

(declare-fun e!1764125 () Bool)

(declare-fun tp!887973 () Bool)

(declare-fun tp!887974 () Bool)

(assert (=> b!2793940 (= e!1764125 (and tp!887973 tp!887974))))

(assert (=> b!2793600 (= tp!887922 e!1764125)))

(assert (= (and b!2793600 ((_ is Cons!32388) (exprs!2899 (_2!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009)))))))))))) b!2793940))

(declare-fun b!2793941 () Bool)

(declare-fun e!1764126 () Bool)

(declare-fun tp!887975 () Bool)

(declare-fun tp!887976 () Bool)

(assert (=> b!2793941 (= e!1764126 (and tp!887975 tp!887976))))

(assert (=> b!2793619 (= tp!887950 e!1764126)))

(assert (= (and b!2793619 ((_ is Cons!32388) (exprs!2899 setElem!24029))) b!2793941))

(declare-fun b!2793942 () Bool)

(declare-fun e!1764127 () Bool)

(declare-fun tp!887977 () Bool)

(declare-fun tp!887978 () Bool)

(assert (=> b!2793942 (= e!1764127 (and tp!887977 tp!887978))))

(assert (=> b!2793550 (= tp!887857 e!1764127)))

(assert (= (and b!2793550 ((_ is Cons!32388) (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapDefault!18011)))))) b!2793942))

(declare-fun condSetEmpty!24034 () Bool)

(assert (=> setNonEmpty!24012 (= condSetEmpty!24034 (= setRest!24012 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24034 () Bool)

(assert (=> setNonEmpty!24012 (= tp!887858 setRes!24034)))

(declare-fun setIsEmpty!24034 () Bool)

(assert (=> setIsEmpty!24034 setRes!24034))

(declare-fun setElem!24034 () Context!4798)

(declare-fun setNonEmpty!24034 () Bool)

(declare-fun e!1764128 () Bool)

(declare-fun tp!887980 () Bool)

(assert (=> setNonEmpty!24034 (= setRes!24034 (and tp!887980 (inv!43993 setElem!24034) e!1764128))))

(declare-fun setRest!24034 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24034 (= setRest!24012 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24034 true) setRest!24034))))

(declare-fun b!2793943 () Bool)

(declare-fun tp!887979 () Bool)

(assert (=> b!2793943 (= e!1764128 tp!887979)))

(assert (= (and setNonEmpty!24012 condSetEmpty!24034) setIsEmpty!24034))

(assert (= (and setNonEmpty!24012 (not condSetEmpty!24034)) setNonEmpty!24034))

(assert (= setNonEmpty!24034 b!2793943))

(declare-fun m!3224251 () Bool)

(assert (=> setNonEmpty!24034 m!3224251))

(declare-fun b!2793944 () Bool)

(declare-fun e!1764129 () Bool)

(declare-fun tp!887981 () Bool)

(declare-fun tp!887982 () Bool)

(assert (=> b!2793944 (= e!1764129 (and tp!887981 tp!887982))))

(assert (=> b!2793594 (= tp!887912 e!1764129)))

(assert (= (and b!2793594 ((_ is Cons!32388) (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapValue!18012)))))) b!2793944))

(declare-fun condSetEmpty!24035 () Bool)

(assert (=> setNonEmpty!24021 (= condSetEmpty!24035 (= setRest!24021 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24035 () Bool)

(assert (=> setNonEmpty!24021 (= tp!887915 setRes!24035)))

(declare-fun setIsEmpty!24035 () Bool)

(assert (=> setIsEmpty!24035 setRes!24035))

(declare-fun setElem!24035 () Context!4798)

(declare-fun tp!887984 () Bool)

(declare-fun e!1764130 () Bool)

(declare-fun setNonEmpty!24035 () Bool)

(assert (=> setNonEmpty!24035 (= setRes!24035 (and tp!887984 (inv!43993 setElem!24035) e!1764130))))

(declare-fun setRest!24035 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24035 (= setRest!24021 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24035 true) setRest!24035))))

(declare-fun b!2793945 () Bool)

(declare-fun tp!887983 () Bool)

(assert (=> b!2793945 (= e!1764130 tp!887983)))

(assert (= (and setNonEmpty!24021 condSetEmpty!24035) setIsEmpty!24035))

(assert (= (and setNonEmpty!24021 (not condSetEmpty!24035)) setNonEmpty!24035))

(assert (= setNonEmpty!24035 b!2793945))

(declare-fun m!3224253 () Bool)

(assert (=> setNonEmpty!24035 m!3224253))

(declare-fun b!2793946 () Bool)

(declare-fun e!1764131 () Bool)

(declare-fun tp!887985 () Bool)

(declare-fun tp!887986 () Bool)

(assert (=> b!2793946 (= e!1764131 (and tp!887985 tp!887986))))

(assert (=> b!2793538 (= tp!887842 e!1764131)))

(assert (= (and b!2793538 ((_ is Cons!32388) (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapDefault!18012)))))) b!2793946))

(declare-fun b!2793947 () Bool)

(declare-fun e!1764132 () Bool)

(declare-fun tp!887987 () Bool)

(declare-fun tp!887988 () Bool)

(assert (=> b!2793947 (= e!1764132 (and tp!887987 tp!887988))))

(assert (=> b!2793571 (= tp!887875 e!1764132)))

(assert (= (and b!2793571 ((_ is Cons!32388) (exprs!2899 setElem!24014))) b!2793947))

(declare-fun condSetEmpty!24036 () Bool)

(assert (=> setNonEmpty!24022 (= condSetEmpty!24036 (= setRest!24022 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24036 () Bool)

(assert (=> setNonEmpty!24022 (= tp!887920 setRes!24036)))

(declare-fun setIsEmpty!24036 () Bool)

(assert (=> setIsEmpty!24036 setRes!24036))

(declare-fun setNonEmpty!24036 () Bool)

(declare-fun tp!887990 () Bool)

(declare-fun setElem!24036 () Context!4798)

(declare-fun e!1764133 () Bool)

(assert (=> setNonEmpty!24036 (= setRes!24036 (and tp!887990 (inv!43993 setElem!24036) e!1764133))))

(declare-fun setRest!24036 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24036 (= setRest!24022 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24036 true) setRest!24036))))

(declare-fun b!2793948 () Bool)

(declare-fun tp!887989 () Bool)

(assert (=> b!2793948 (= e!1764133 tp!887989)))

(assert (= (and setNonEmpty!24022 condSetEmpty!24036) setIsEmpty!24036))

(assert (= (and setNonEmpty!24022 (not condSetEmpty!24036)) setNonEmpty!24036))

(assert (= setNonEmpty!24036 b!2793948))

(declare-fun m!3224255 () Bool)

(assert (=> setNonEmpty!24036 m!3224255))

(declare-fun condSetEmpty!24037 () Bool)

(assert (=> setNonEmpty!24023 (= condSetEmpty!24037 (= setRest!24023 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24037 () Bool)

(assert (=> setNonEmpty!24023 (= tp!887925 setRes!24037)))

(declare-fun setIsEmpty!24037 () Bool)

(assert (=> setIsEmpty!24037 setRes!24037))

(declare-fun setElem!24037 () Context!4798)

(declare-fun setNonEmpty!24037 () Bool)

(declare-fun e!1764134 () Bool)

(declare-fun tp!887992 () Bool)

(assert (=> setNonEmpty!24037 (= setRes!24037 (and tp!887992 (inv!43993 setElem!24037) e!1764134))))

(declare-fun setRest!24037 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24037 (= setRest!24023 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24037 true) setRest!24037))))

(declare-fun b!2793949 () Bool)

(declare-fun tp!887991 () Bool)

(assert (=> b!2793949 (= e!1764134 tp!887991)))

(assert (= (and setNonEmpty!24023 condSetEmpty!24037) setIsEmpty!24037))

(assert (= (and setNonEmpty!24023 (not condSetEmpty!24037)) setNonEmpty!24037))

(assert (= setNonEmpty!24037 b!2793949))

(declare-fun m!3224257 () Bool)

(assert (=> setNonEmpty!24037 m!3224257))

(declare-fun b!2793950 () Bool)

(declare-fun e!1764135 () Bool)

(declare-fun tp!887993 () Bool)

(assert (=> b!2793950 (= e!1764135 tp!887993)))

(declare-fun tp!887996 () Bool)

(declare-fun setNonEmpty!24038 () Bool)

(declare-fun setRes!24038 () Bool)

(declare-fun setElem!24038 () Context!4798)

(assert (=> setNonEmpty!24038 (= setRes!24038 (and tp!887996 (inv!43993 setElem!24038) e!1764135))))

(declare-fun setRest!24038 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24038 (= (_2!19460 (h!37810 (t!228642 mapDefault!18018))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24038 true) setRest!24038))))

(declare-fun e!1764136 () Bool)

(assert (=> b!2793620 (= tp!887953 e!1764136)))

(declare-fun setIsEmpty!24038 () Bool)

(assert (=> setIsEmpty!24038 setRes!24038))

(declare-fun b!2793951 () Bool)

(declare-fun e!1764137 () Bool)

(declare-fun tp!887995 () Bool)

(assert (=> b!2793951 (= e!1764137 tp!887995)))

(declare-fun tp!887994 () Bool)

(declare-fun b!2793952 () Bool)

(assert (=> b!2793952 (= e!1764136 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (t!228642 mapDefault!18018))))) e!1764137 tp_is_empty!14175 setRes!24038 tp!887994))))

(declare-fun condSetEmpty!24038 () Bool)

(assert (=> b!2793952 (= condSetEmpty!24038 (= (_2!19460 (h!37810 (t!228642 mapDefault!18018))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793952 b!2793951))

(assert (= (and b!2793952 condSetEmpty!24038) setIsEmpty!24038))

(assert (= (and b!2793952 (not condSetEmpty!24038)) setNonEmpty!24038))

(assert (= setNonEmpty!24038 b!2793950))

(assert (= (and b!2793620 ((_ is Cons!32390) (t!228642 mapDefault!18018))) b!2793952))

(declare-fun m!3224259 () Bool)

(assert (=> setNonEmpty!24038 m!3224259))

(declare-fun m!3224261 () Bool)

(assert (=> b!2793952 m!3224261))

(declare-fun condSetEmpty!24039 () Bool)

(assert (=> setNonEmpty!24013 (= condSetEmpty!24039 (= setRest!24013 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24039 () Bool)

(assert (=> setNonEmpty!24013 (= tp!887874 setRes!24039)))

(declare-fun setIsEmpty!24039 () Bool)

(assert (=> setIsEmpty!24039 setRes!24039))

(declare-fun tp!887998 () Bool)

(declare-fun setNonEmpty!24039 () Bool)

(declare-fun setElem!24039 () Context!4798)

(declare-fun e!1764138 () Bool)

(assert (=> setNonEmpty!24039 (= setRes!24039 (and tp!887998 (inv!43993 setElem!24039) e!1764138))))

(declare-fun setRest!24039 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24039 (= setRest!24013 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24039 true) setRest!24039))))

(declare-fun b!2793953 () Bool)

(declare-fun tp!887997 () Bool)

(assert (=> b!2793953 (= e!1764138 tp!887997)))

(assert (= (and setNonEmpty!24013 condSetEmpty!24039) setIsEmpty!24039))

(assert (= (and setNonEmpty!24013 (not condSetEmpty!24039)) setNonEmpty!24039))

(assert (= setNonEmpty!24039 b!2793953))

(declare-fun m!3224263 () Bool)

(assert (=> setNonEmpty!24039 m!3224263))

(declare-fun b!2793954 () Bool)

(declare-fun e!1764139 () Bool)

(declare-fun tp!887999 () Bool)

(declare-fun tp!888000 () Bool)

(assert (=> b!2793954 (= e!1764139 (and tp!887999 tp!888000))))

(assert (=> b!2793621 (= tp!887949 e!1764139)))

(assert (= (and b!2793621 ((_ is Cons!32388) (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapDefault!18018)))))) b!2793954))

(declare-fun condSetEmpty!24040 () Bool)

(assert (=> setNonEmpty!24019 (= condSetEmpty!24040 (= setRest!24020 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24040 () Bool)

(assert (=> setNonEmpty!24019 (= tp!887911 setRes!24040)))

(declare-fun setIsEmpty!24040 () Bool)

(assert (=> setIsEmpty!24040 setRes!24040))

(declare-fun tp!888002 () Bool)

(declare-fun setNonEmpty!24040 () Bool)

(declare-fun setElem!24040 () Context!4798)

(declare-fun e!1764140 () Bool)

(assert (=> setNonEmpty!24040 (= setRes!24040 (and tp!888002 (inv!43993 setElem!24040) e!1764140))))

(declare-fun setRest!24040 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24040 (= setRest!24020 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24040 true) setRest!24040))))

(declare-fun b!2793955 () Bool)

(declare-fun tp!888001 () Bool)

(assert (=> b!2793955 (= e!1764140 tp!888001)))

(assert (= (and setNonEmpty!24019 condSetEmpty!24040) setIsEmpty!24040))

(assert (= (and setNonEmpty!24019 (not condSetEmpty!24040)) setNonEmpty!24040))

(assert (= setNonEmpty!24040 b!2793955))

(declare-fun m!3224265 () Bool)

(assert (=> setNonEmpty!24040 m!3224265))

(declare-fun b!2793956 () Bool)

(declare-fun e!1764141 () Bool)

(declare-fun tp!888003 () Bool)

(assert (=> b!2793956 (= e!1764141 (and tp_is_empty!14175 tp!888003))))

(assert (=> b!2793603 (= tp!887927 e!1764141)))

(assert (= (and b!2793603 ((_ is Cons!32387) (t!228639 (t!228639 testedP!183)))) b!2793956))

(declare-fun condSetEmpty!24041 () Bool)

(assert (=> setNonEmpty!24029 (= condSetEmpty!24041 (= setRest!24029 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24041 () Bool)

(assert (=> setNonEmpty!24029 (= tp!887946 setRes!24041)))

(declare-fun setIsEmpty!24041 () Bool)

(assert (=> setIsEmpty!24041 setRes!24041))

(declare-fun setElem!24041 () Context!4798)

(declare-fun tp!888005 () Bool)

(declare-fun e!1764142 () Bool)

(declare-fun setNonEmpty!24041 () Bool)

(assert (=> setNonEmpty!24041 (= setRes!24041 (and tp!888005 (inv!43993 setElem!24041) e!1764142))))

(declare-fun setRest!24041 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24041 (= setRest!24029 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24041 true) setRest!24041))))

(declare-fun b!2793957 () Bool)

(declare-fun tp!888004 () Bool)

(assert (=> b!2793957 (= e!1764142 tp!888004)))

(assert (= (and setNonEmpty!24029 condSetEmpty!24041) setIsEmpty!24041))

(assert (= (and setNonEmpty!24029 (not condSetEmpty!24041)) setNonEmpty!24041))

(assert (= setNonEmpty!24041 b!2793957))

(declare-fun m!3224267 () Bool)

(assert (=> setNonEmpty!24041 m!3224267))

(declare-fun b!2793958 () Bool)

(declare-fun e!1764143 () Bool)

(declare-fun tp!888006 () Bool)

(assert (=> b!2793958 (= e!1764143 tp!888006)))

(declare-fun setRes!24042 () Bool)

(declare-fun tp!888009 () Bool)

(declare-fun setNonEmpty!24042 () Bool)

(declare-fun setElem!24042 () Context!4798)

(assert (=> setNonEmpty!24042 (= setRes!24042 (and tp!888009 (inv!43993 setElem!24042) e!1764143))))

(declare-fun setRest!24042 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24042 (= (_2!19460 (h!37810 (t!228642 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24042 true) setRest!24042))))

(declare-fun e!1764144 () Bool)

(assert (=> b!2793570 (= tp!887872 e!1764144)))

(declare-fun setIsEmpty!24042 () Bool)

(assert (=> setIsEmpty!24042 setRes!24042))

(declare-fun b!2793959 () Bool)

(declare-fun e!1764145 () Bool)

(declare-fun tp!888008 () Bool)

(assert (=> b!2793959 (= e!1764145 tp!888008)))

(declare-fun tp!888007 () Bool)

(declare-fun b!2793960 () Bool)

(assert (=> b!2793960 (= e!1764144 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (t!228642 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))))) e!1764145 tp_is_empty!14175 setRes!24042 tp!888007))))

(declare-fun condSetEmpty!24042 () Bool)

(assert (=> b!2793960 (= condSetEmpty!24042 (= (_2!19460 (h!37810 (t!228642 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793960 b!2793959))

(assert (= (and b!2793960 condSetEmpty!24042) setIsEmpty!24042))

(assert (= (and b!2793960 (not condSetEmpty!24042)) setNonEmpty!24042))

(assert (= setNonEmpty!24042 b!2793958))

(assert (= (and b!2793570 ((_ is Cons!32390) (t!228642 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))) b!2793960))

(declare-fun m!3224269 () Bool)

(assert (=> setNonEmpty!24042 m!3224269))

(declare-fun m!3224271 () Bool)

(assert (=> b!2793960 m!3224271))

(declare-fun b!2793961 () Bool)

(declare-fun e!1764146 () Bool)

(declare-fun tp!888010 () Bool)

(declare-fun tp!888011 () Bool)

(assert (=> b!2793961 (= e!1764146 (and tp!888010 tp!888011))))

(assert (=> b!2793540 (= tp!887844 e!1764146)))

(assert (= (and b!2793540 ((_ is Cons!32388) (exprs!2899 setElem!24009))) b!2793961))

(declare-fun condSetEmpty!24043 () Bool)

(assert (=> setNonEmpty!24033 (= condSetEmpty!24043 (= setRest!24033 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24043 () Bool)

(assert (=> setNonEmpty!24033 (= tp!887970 setRes!24043)))

(declare-fun setIsEmpty!24043 () Bool)

(assert (=> setIsEmpty!24043 setRes!24043))

(declare-fun setNonEmpty!24043 () Bool)

(declare-fun e!1764147 () Bool)

(declare-fun setElem!24043 () Context!4798)

(declare-fun tp!888013 () Bool)

(assert (=> setNonEmpty!24043 (= setRes!24043 (and tp!888013 (inv!43993 setElem!24043) e!1764147))))

(declare-fun setRest!24043 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24043 (= setRest!24033 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24043 true) setRest!24043))))

(declare-fun b!2793962 () Bool)

(declare-fun tp!888012 () Bool)

(assert (=> b!2793962 (= e!1764147 tp!888012)))

(assert (= (and setNonEmpty!24033 condSetEmpty!24043) setIsEmpty!24043))

(assert (= (and setNonEmpty!24033 (not condSetEmpty!24043)) setNonEmpty!24043))

(assert (= setNonEmpty!24043 b!2793962))

(declare-fun m!3224273 () Bool)

(assert (=> setNonEmpty!24043 m!3224273))

(declare-fun b!2793963 () Bool)

(declare-fun e!1764148 () Bool)

(declare-fun tp!888014 () Bool)

(declare-fun tp!888015 () Bool)

(assert (=> b!2793963 (= e!1764148 (and tp!888014 tp!888015))))

(assert (=> b!2793624 (= tp!887955 e!1764148)))

(assert (= (and b!2793624 ((_ is Cons!32388) (exprs!2899 setElem!24030))) b!2793963))

(declare-fun b!2793964 () Bool)

(declare-fun e!1764149 () Bool)

(declare-fun tp!888016 () Bool)

(declare-fun tp!888017 () Bool)

(assert (=> b!2793964 (= e!1764149 (and tp!888016 tp!888017))))

(assert (=> b!2793589 (= tp!887903 e!1764149)))

(assert (= (and b!2793589 ((_ is Cons!32388) (exprs!2899 setElem!24019))) b!2793964))

(declare-fun condSetEmpty!24044 () Bool)

(assert (=> setNonEmpty!24020 (= condSetEmpty!24044 (= setRest!24019 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24044 () Bool)

(assert (=> setNonEmpty!24020 (= tp!887904 setRes!24044)))

(declare-fun setIsEmpty!24044 () Bool)

(assert (=> setIsEmpty!24044 setRes!24044))

(declare-fun setElem!24044 () Context!4798)

(declare-fun e!1764150 () Bool)

(declare-fun setNonEmpty!24044 () Bool)

(declare-fun tp!888019 () Bool)

(assert (=> setNonEmpty!24044 (= setRes!24044 (and tp!888019 (inv!43993 setElem!24044) e!1764150))))

(declare-fun setRest!24044 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24044 (= setRest!24019 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24044 true) setRest!24044))))

(declare-fun b!2793965 () Bool)

(declare-fun tp!888018 () Bool)

(assert (=> b!2793965 (= e!1764150 tp!888018)))

(assert (= (and setNonEmpty!24020 condSetEmpty!24044) setIsEmpty!24044))

(assert (= (and setNonEmpty!24020 (not condSetEmpty!24044)) setNonEmpty!24044))

(assert (= setNonEmpty!24044 b!2793965))

(declare-fun m!3224275 () Bool)

(assert (=> setNonEmpty!24044 m!3224275))

(declare-fun b!2793976 () Bool)

(declare-fun e!1764153 () Bool)

(assert (=> b!2793976 (= e!1764153 tp_is_empty!14175)))

(declare-fun b!2793979 () Bool)

(declare-fun tp!888033 () Bool)

(declare-fun tp!888030 () Bool)

(assert (=> b!2793979 (= e!1764153 (and tp!888033 tp!888030))))

(assert (=> b!2793590 (= tp!887905 e!1764153)))

(declare-fun b!2793978 () Bool)

(declare-fun tp!888034 () Bool)

(assert (=> b!2793978 (= e!1764153 tp!888034)))

(declare-fun b!2793977 () Bool)

(declare-fun tp!888032 () Bool)

(declare-fun tp!888031 () Bool)

(assert (=> b!2793977 (= e!1764153 (and tp!888032 tp!888031))))

(assert (= (and b!2793590 ((_ is ElementMatch!8181) (_1!19457 (_1!19458 (h!37809 mapValue!18015))))) b!2793976))

(assert (= (and b!2793590 ((_ is Concat!13269) (_1!19457 (_1!19458 (h!37809 mapValue!18015))))) b!2793977))

(assert (= (and b!2793590 ((_ is Star!8181) (_1!19457 (_1!19458 (h!37809 mapValue!18015))))) b!2793978))

(assert (= (and b!2793590 ((_ is Union!8181) (_1!19457 (_1!19458 (h!37809 mapValue!18015))))) b!2793979))

(declare-fun b!2793980 () Bool)

(declare-fun e!1764154 () Bool)

(declare-fun tp!888035 () Bool)

(assert (=> b!2793980 (= e!1764154 tp!888035)))

(declare-fun b!2793981 () Bool)

(declare-fun tp!888036 () Bool)

(declare-fun e!1764156 () Bool)

(declare-fun tp!888039 () Bool)

(declare-fun setRes!24045 () Bool)

(assert (=> b!2793981 (= e!1764156 (and tp!888036 (inv!43993 (_2!19457 (_1!19458 (h!37809 (t!228641 mapValue!18015))))) e!1764154 tp_is_empty!14175 setRes!24045 tp!888039))))

(declare-fun condSetEmpty!24045 () Bool)

(assert (=> b!2793981 (= condSetEmpty!24045 (= (_2!19458 (h!37809 (t!228641 mapValue!18015))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24045 () Bool)

(assert (=> setIsEmpty!24045 setRes!24045))

(declare-fun b!2793982 () Bool)

(declare-fun e!1764155 () Bool)

(declare-fun tp!888037 () Bool)

(assert (=> b!2793982 (= e!1764155 tp!888037)))

(assert (=> b!2793590 (= tp!887901 e!1764156)))

(declare-fun setElem!24045 () Context!4798)

(declare-fun setNonEmpty!24045 () Bool)

(declare-fun tp!888038 () Bool)

(assert (=> setNonEmpty!24045 (= setRes!24045 (and tp!888038 (inv!43993 setElem!24045) e!1764155))))

(declare-fun setRest!24045 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24045 (= (_2!19458 (h!37809 (t!228641 mapValue!18015))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24045 true) setRest!24045))))

(assert (= b!2793981 b!2793980))

(assert (= (and b!2793981 condSetEmpty!24045) setIsEmpty!24045))

(assert (= (and b!2793981 (not condSetEmpty!24045)) setNonEmpty!24045))

(assert (= setNonEmpty!24045 b!2793982))

(assert (= (and b!2793590 ((_ is Cons!32389) (t!228641 mapValue!18015))) b!2793981))

(declare-fun m!3224277 () Bool)

(assert (=> b!2793981 m!3224277))

(declare-fun m!3224279 () Bool)

(assert (=> setNonEmpty!24045 m!3224279))

(declare-fun b!2793983 () Bool)

(declare-fun e!1764161 () Bool)

(declare-fun tp!888041 () Bool)

(assert (=> b!2793983 (= e!1764161 tp!888041)))

(declare-fun setElem!24046 () Context!4798)

(declare-fun e!1764160 () Bool)

(declare-fun setRes!24046 () Bool)

(declare-fun tp!888050 () Bool)

(declare-fun setNonEmpty!24046 () Bool)

(assert (=> setNonEmpty!24046 (= setRes!24046 (and tp!888050 (inv!43993 setElem!24046) e!1764160))))

(declare-fun mapDefault!18019 () List!32489)

(declare-fun setRest!24047 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24046 (= (_2!19458 (h!37809 mapDefault!18019)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24046 true) setRest!24047))))

(declare-fun setIsEmpty!24046 () Bool)

(assert (=> setIsEmpty!24046 setRes!24046))

(declare-fun b!2793984 () Bool)

(declare-fun tp!888042 () Bool)

(assert (=> b!2793984 (= e!1764160 tp!888042)))

(declare-fun mapIsEmpty!18019 () Bool)

(declare-fun mapRes!18019 () Bool)

(assert (=> mapIsEmpty!18019 mapRes!18019))

(declare-fun setRes!24047 () Bool)

(declare-fun b!2793985 () Bool)

(declare-fun tp!888044 () Bool)

(declare-fun e!1764157 () Bool)

(declare-fun mapValue!18019 () List!32489)

(declare-fun tp!888040 () Bool)

(assert (=> b!2793985 (= e!1764157 (and tp!888044 (inv!43993 (_2!19457 (_1!19458 (h!37809 mapValue!18019)))) e!1764161 tp_is_empty!14175 setRes!24047 tp!888040))))

(declare-fun condSetEmpty!24046 () Bool)

(assert (=> b!2793985 (= condSetEmpty!24046 (= (_2!19458 (h!37809 mapValue!18019)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun e!1764159 () Bool)

(declare-fun tp!888046 () Bool)

(declare-fun b!2793986 () Bool)

(declare-fun e!1764162 () Bool)

(declare-fun tp!888047 () Bool)

(assert (=> b!2793986 (= e!1764159 (and tp!888046 (inv!43993 (_2!19457 (_1!19458 (h!37809 mapDefault!18019)))) e!1764162 tp_is_empty!14175 setRes!24046 tp!888047))))

(declare-fun condSetEmpty!24047 () Bool)

(assert (=> b!2793986 (= condSetEmpty!24047 (= (_2!19458 (h!37809 mapDefault!18019)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun tp!888043 () Bool)

(declare-fun e!1764158 () Bool)

(declare-fun setElem!24047 () Context!4798)

(declare-fun setNonEmpty!24047 () Bool)

(assert (=> setNonEmpty!24047 (= setRes!24047 (and tp!888043 (inv!43993 setElem!24047) e!1764158))))

(declare-fun setRest!24046 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24047 (= (_2!19458 (h!37809 mapValue!18019)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24047 true) setRest!24046))))

(declare-fun b!2793987 () Bool)

(declare-fun tp!888049 () Bool)

(assert (=> b!2793987 (= e!1764162 tp!888049)))

(declare-fun b!2793988 () Bool)

(declare-fun tp!888048 () Bool)

(assert (=> b!2793988 (= e!1764158 tp!888048)))

(declare-fun setIsEmpty!24047 () Bool)

(assert (=> setIsEmpty!24047 setRes!24047))

(declare-fun condMapEmpty!18019 () Bool)

(assert (=> mapNonEmpty!18015 (= condMapEmpty!18019 (= mapRest!18015 ((as const (Array (_ BitVec 32) List!32489)) mapDefault!18019)))))

(assert (=> mapNonEmpty!18015 (= tp!887906 (and e!1764159 mapRes!18019))))

(declare-fun mapNonEmpty!18019 () Bool)

(declare-fun tp!888045 () Bool)

(assert (=> mapNonEmpty!18019 (= mapRes!18019 (and tp!888045 e!1764157))))

(declare-fun mapRest!18019 () (Array (_ BitVec 32) List!32489))

(declare-fun mapKey!18019 () (_ BitVec 32))

(assert (=> mapNonEmpty!18019 (= mapRest!18015 (store mapRest!18019 mapKey!18019 mapValue!18019))))

(assert (= (and mapNonEmpty!18015 condMapEmpty!18019) mapIsEmpty!18019))

(assert (= (and mapNonEmpty!18015 (not condMapEmpty!18019)) mapNonEmpty!18019))

(assert (= b!2793985 b!2793983))

(assert (= (and b!2793985 condSetEmpty!24046) setIsEmpty!24047))

(assert (= (and b!2793985 (not condSetEmpty!24046)) setNonEmpty!24047))

(assert (= setNonEmpty!24047 b!2793988))

(assert (= (and mapNonEmpty!18019 ((_ is Cons!32389) mapValue!18019)) b!2793985))

(assert (= b!2793986 b!2793987))

(assert (= (and b!2793986 condSetEmpty!24047) setIsEmpty!24046))

(assert (= (and b!2793986 (not condSetEmpty!24047)) setNonEmpty!24046))

(assert (= setNonEmpty!24046 b!2793984))

(assert (= (and mapNonEmpty!18015 ((_ is Cons!32389) mapDefault!18019)) b!2793986))

(declare-fun m!3224281 () Bool)

(assert (=> b!2793985 m!3224281))

(declare-fun m!3224283 () Bool)

(assert (=> mapNonEmpty!18019 m!3224283))

(declare-fun m!3224285 () Bool)

(assert (=> b!2793986 m!3224285))

(declare-fun m!3224287 () Bool)

(assert (=> setNonEmpty!24047 m!3224287))

(declare-fun m!3224289 () Bool)

(assert (=> setNonEmpty!24046 m!3224289))

(declare-fun b!2793989 () Bool)

(declare-fun e!1764163 () Bool)

(declare-fun tp!888051 () Bool)

(assert (=> b!2793989 (= e!1764163 tp!888051)))

(declare-fun tp!888054 () Bool)

(declare-fun setNonEmpty!24048 () Bool)

(declare-fun setRes!24048 () Bool)

(declare-fun setElem!24048 () Context!4798)

(assert (=> setNonEmpty!24048 (= setRes!24048 (and tp!888054 (inv!43993 setElem!24048) e!1764163))))

(declare-fun setRest!24048 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24048 (= (_2!19460 (h!37810 (t!228642 mapValue!18011))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24048 true) setRest!24048))))

(declare-fun e!1764164 () Bool)

(assert (=> b!2793626 (= tp!887956 e!1764164)))

(declare-fun setIsEmpty!24048 () Bool)

(assert (=> setIsEmpty!24048 setRes!24048))

(declare-fun b!2793990 () Bool)

(declare-fun e!1764165 () Bool)

(declare-fun tp!888053 () Bool)

(assert (=> b!2793990 (= e!1764165 tp!888053)))

(declare-fun b!2793991 () Bool)

(declare-fun tp!888052 () Bool)

(assert (=> b!2793991 (= e!1764164 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (t!228642 mapValue!18011))))) e!1764165 tp_is_empty!14175 setRes!24048 tp!888052))))

(declare-fun condSetEmpty!24048 () Bool)

(assert (=> b!2793991 (= condSetEmpty!24048 (= (_2!19460 (h!37810 (t!228642 mapValue!18011))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2793991 b!2793990))

(assert (= (and b!2793991 condSetEmpty!24048) setIsEmpty!24048))

(assert (= (and b!2793991 (not condSetEmpty!24048)) setNonEmpty!24048))

(assert (= setNonEmpty!24048 b!2793989))

(assert (= (and b!2793626 ((_ is Cons!32390) (t!228642 mapValue!18011))) b!2793991))

(declare-fun m!3224291 () Bool)

(assert (=> setNonEmpty!24048 m!3224291))

(declare-fun m!3224293 () Bool)

(assert (=> b!2793991 m!3224293))

(declare-fun b!2793992 () Bool)

(declare-fun e!1764166 () Bool)

(declare-fun tp!888055 () Bool)

(declare-fun tp!888056 () Bool)

(assert (=> b!2793992 (= e!1764166 (and tp!888055 tp!888056))))

(assert (=> b!2793549 (= tp!887855 e!1764166)))

(assert (= (and b!2793549 ((_ is Cons!32388) (exprs!2899 setElem!24012))) b!2793992))

(declare-fun b!2793993 () Bool)

(declare-fun e!1764167 () Bool)

(declare-fun tp!888057 () Bool)

(declare-fun tp!888058 () Bool)

(assert (=> b!2793993 (= e!1764167 (and tp!888057 tp!888058))))

(assert (=> b!2793593 (= tp!887909 e!1764167)))

(assert (= (and b!2793593 ((_ is Cons!32388) (exprs!2899 setElem!24020))) b!2793993))

(declare-fun b!2793994 () Bool)

(declare-fun e!1764168 () Bool)

(declare-fun tp!888059 () Bool)

(declare-fun tp!888060 () Bool)

(assert (=> b!2793994 (= e!1764168 (and tp!888059 tp!888060))))

(assert (=> b!2793602 (= tp!887924 e!1764168)))

(assert (= (and b!2793602 ((_ is Cons!32388) (exprs!2899 setElem!24023))) b!2793994))

(declare-fun condSetEmpty!24049 () Bool)

(assert (=> setNonEmpty!24028 (= condSetEmpty!24049 (= setRest!24028 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24049 () Bool)

(assert (=> setNonEmpty!24028 (= tp!887954 setRes!24049)))

(declare-fun setIsEmpty!24049 () Bool)

(assert (=> setIsEmpty!24049 setRes!24049))

(declare-fun setElem!24049 () Context!4798)

(declare-fun tp!888062 () Bool)

(declare-fun setNonEmpty!24049 () Bool)

(declare-fun e!1764169 () Bool)

(assert (=> setNonEmpty!24049 (= setRes!24049 (and tp!888062 (inv!43993 setElem!24049) e!1764169))))

(declare-fun setRest!24049 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24049 (= setRest!24028 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24049 true) setRest!24049))))

(declare-fun b!2793995 () Bool)

(declare-fun tp!888061 () Bool)

(assert (=> b!2793995 (= e!1764169 tp!888061)))

(assert (= (and setNonEmpty!24028 condSetEmpty!24049) setIsEmpty!24049))

(assert (= (and setNonEmpty!24028 (not condSetEmpty!24049)) setNonEmpty!24049))

(assert (= setNonEmpty!24049 b!2793995))

(declare-fun m!3224295 () Bool)

(assert (=> setNonEmpty!24049 m!3224295))

(declare-fun b!2793996 () Bool)

(declare-fun e!1764170 () Bool)

(assert (=> b!2793996 (= e!1764170 tp_is_empty!14175)))

(declare-fun b!2793999 () Bool)

(declare-fun tp!888066 () Bool)

(declare-fun tp!888063 () Bool)

(assert (=> b!2793999 (= e!1764170 (and tp!888066 tp!888063))))

(assert (=> b!2793601 (= tp!887923 e!1764170)))

(declare-fun b!2793998 () Bool)

(declare-fun tp!888067 () Bool)

(assert (=> b!2793998 (= e!1764170 tp!888067)))

(declare-fun b!2793997 () Bool)

(declare-fun tp!888065 () Bool)

(declare-fun tp!888064 () Bool)

(assert (=> b!2793997 (= e!1764170 (and tp!888065 tp!888064))))

(assert (= (and b!2793601 ((_ is ElementMatch!8181) (_1!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2793996))

(assert (= (and b!2793601 ((_ is Concat!13269) (_1!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2793997))

(assert (= (and b!2793601 ((_ is Star!8181) (_1!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2793998))

(assert (= (and b!2793601 ((_ is Union!8181) (_1!19457 (_1!19458 (h!37809 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2793999))

(declare-fun b!2794000 () Bool)

(declare-fun e!1764171 () Bool)

(declare-fun tp!888068 () Bool)

(assert (=> b!2794000 (= e!1764171 tp!888068)))

(declare-fun tp!888072 () Bool)

(declare-fun e!1764173 () Bool)

(declare-fun setRes!24050 () Bool)

(declare-fun tp!888069 () Bool)

(declare-fun b!2794001 () Bool)

(assert (=> b!2794001 (= e!1764173 (and tp!888069 (inv!43993 (_2!19457 (_1!19458 (h!37809 (t!228641 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) e!1764171 tp_is_empty!14175 setRes!24050 tp!888072))))

(declare-fun condSetEmpty!24050 () Bool)

(assert (=> b!2794001 (= condSetEmpty!24050 (= (_2!19458 (h!37809 (t!228641 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24050 () Bool)

(assert (=> setIsEmpty!24050 setRes!24050))

(declare-fun b!2794002 () Bool)

(declare-fun e!1764172 () Bool)

(declare-fun tp!888070 () Bool)

(assert (=> b!2794002 (= e!1764172 tp!888070)))

(assert (=> b!2793601 (= tp!887926 e!1764173)))

(declare-fun setNonEmpty!24050 () Bool)

(declare-fun tp!888071 () Bool)

(declare-fun setElem!24050 () Context!4798)

(assert (=> setNonEmpty!24050 (= setRes!24050 (and tp!888071 (inv!43993 setElem!24050) e!1764172))))

(declare-fun setRest!24050 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24050 (= (_2!19458 (h!37809 (t!228641 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24050 true) setRest!24050))))

(assert (= b!2794001 b!2794000))

(assert (= (and b!2794001 condSetEmpty!24050) setIsEmpty!24050))

(assert (= (and b!2794001 (not condSetEmpty!24050)) setNonEmpty!24050))

(assert (= setNonEmpty!24050 b!2794002))

(assert (= (and b!2793601 ((_ is Cons!32389) (t!228641 (minValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))) b!2794001))

(declare-fun m!3224297 () Bool)

(assert (=> b!2794001 m!3224297))

(declare-fun m!3224299 () Bool)

(assert (=> setNonEmpty!24050 m!3224299))

(declare-fun b!2794003 () Bool)

(declare-fun e!1764174 () Bool)

(declare-fun tp!888073 () Bool)

(declare-fun tp!888074 () Bool)

(assert (=> b!2794003 (= e!1764174 (and tp!888073 tp!888074))))

(assert (=> b!2793618 (= tp!887952 e!1764174)))

(assert (= (and b!2793618 ((_ is Cons!32388) (exprs!2899 setElem!24028))) b!2794003))

(declare-fun b!2794004 () Bool)

(declare-fun e!1764175 () Bool)

(assert (=> b!2794004 (= e!1764175 tp_is_empty!14175)))

(declare-fun b!2794007 () Bool)

(declare-fun tp!888078 () Bool)

(declare-fun tp!888075 () Bool)

(assert (=> b!2794007 (= e!1764175 (and tp!888078 tp!888075))))

(assert (=> b!2793595 (= tp!887913 e!1764175)))

(declare-fun b!2794006 () Bool)

(declare-fun tp!888079 () Bool)

(assert (=> b!2794006 (= e!1764175 tp!888079)))

(declare-fun b!2794005 () Bool)

(declare-fun tp!888077 () Bool)

(declare-fun tp!888076 () Bool)

(assert (=> b!2794005 (= e!1764175 (and tp!888077 tp!888076))))

(assert (= (and b!2793595 ((_ is ElementMatch!8181) (_1!19457 (_1!19458 (h!37809 mapValue!18012))))) b!2794004))

(assert (= (and b!2793595 ((_ is Concat!13269) (_1!19457 (_1!19458 (h!37809 mapValue!18012))))) b!2794005))

(assert (= (and b!2793595 ((_ is Star!8181) (_1!19457 (_1!19458 (h!37809 mapValue!18012))))) b!2794006))

(assert (= (and b!2793595 ((_ is Union!8181) (_1!19457 (_1!19458 (h!37809 mapValue!18012))))) b!2794007))

(declare-fun b!2794008 () Bool)

(declare-fun e!1764176 () Bool)

(declare-fun tp!888080 () Bool)

(assert (=> b!2794008 (= e!1764176 tp!888080)))

(declare-fun e!1764178 () Bool)

(declare-fun setRes!24051 () Bool)

(declare-fun tp!888081 () Bool)

(declare-fun tp!888084 () Bool)

(declare-fun b!2794009 () Bool)

(assert (=> b!2794009 (= e!1764178 (and tp!888081 (inv!43993 (_2!19457 (_1!19458 (h!37809 (t!228641 mapValue!18012))))) e!1764176 tp_is_empty!14175 setRes!24051 tp!888084))))

(declare-fun condSetEmpty!24051 () Bool)

(assert (=> b!2794009 (= condSetEmpty!24051 (= (_2!19458 (h!37809 (t!228641 mapValue!18012))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24051 () Bool)

(assert (=> setIsEmpty!24051 setRes!24051))

(declare-fun b!2794010 () Bool)

(declare-fun e!1764177 () Bool)

(declare-fun tp!888082 () Bool)

(assert (=> b!2794010 (= e!1764177 tp!888082)))

(assert (=> b!2793595 (= tp!887916 e!1764178)))

(declare-fun setNonEmpty!24051 () Bool)

(declare-fun tp!888083 () Bool)

(declare-fun setElem!24051 () Context!4798)

(assert (=> setNonEmpty!24051 (= setRes!24051 (and tp!888083 (inv!43993 setElem!24051) e!1764177))))

(declare-fun setRest!24051 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24051 (= (_2!19458 (h!37809 (t!228641 mapValue!18012))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24051 true) setRest!24051))))

(assert (= b!2794009 b!2794008))

(assert (= (and b!2794009 condSetEmpty!24051) setIsEmpty!24051))

(assert (= (and b!2794009 (not condSetEmpty!24051)) setNonEmpty!24051))

(assert (= setNonEmpty!24051 b!2794010))

(assert (= (and b!2793595 ((_ is Cons!32389) (t!228641 mapValue!18012))) b!2794009))

(declare-fun m!3224301 () Bool)

(assert (=> b!2794009 m!3224301))

(declare-fun m!3224303 () Bool)

(assert (=> setNonEmpty!24051 m!3224303))

(declare-fun b!2794011 () Bool)

(declare-fun e!1764179 () Bool)

(assert (=> b!2794011 (= e!1764179 tp_is_empty!14175)))

(declare-fun b!2794014 () Bool)

(declare-fun tp!888088 () Bool)

(declare-fun tp!888085 () Bool)

(assert (=> b!2794014 (= e!1764179 (and tp!888088 tp!888085))))

(assert (=> b!2793598 (= tp!887918 e!1764179)))

(declare-fun b!2794013 () Bool)

(declare-fun tp!888089 () Bool)

(assert (=> b!2794013 (= e!1764179 tp!888089)))

(declare-fun b!2794012 () Bool)

(declare-fun tp!888087 () Bool)

(declare-fun tp!888086 () Bool)

(assert (=> b!2794012 (= e!1764179 (and tp!888087 tp!888086))))

(assert (= (and b!2793598 ((_ is ElementMatch!8181) (_1!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2794011))

(assert (= (and b!2793598 ((_ is Concat!13269) (_1!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2794012))

(assert (= (and b!2793598 ((_ is Star!8181) (_1!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2794013))

(assert (= (and b!2793598 ((_ is Union!8181) (_1!19457 (_1!19458 (h!37809 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) b!2794014))

(declare-fun b!2794015 () Bool)

(declare-fun e!1764180 () Bool)

(declare-fun tp!888090 () Bool)

(assert (=> b!2794015 (= e!1764180 tp!888090)))

(declare-fun b!2794016 () Bool)

(declare-fun tp!888094 () Bool)

(declare-fun e!1764182 () Bool)

(declare-fun tp!888091 () Bool)

(declare-fun setRes!24052 () Bool)

(assert (=> b!2794016 (= e!1764182 (and tp!888091 (inv!43993 (_2!19457 (_1!19458 (h!37809 (t!228641 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))))) e!1764180 tp_is_empty!14175 setRes!24052 tp!888094))))

(declare-fun condSetEmpty!24052 () Bool)

(assert (=> b!2794016 (= condSetEmpty!24052 (= (_2!19458 (h!37809 (t!228641 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24052 () Bool)

(assert (=> setIsEmpty!24052 setRes!24052))

(declare-fun b!2794017 () Bool)

(declare-fun e!1764181 () Bool)

(declare-fun tp!888092 () Bool)

(assert (=> b!2794017 (= e!1764181 tp!888092)))

(assert (=> b!2793598 (= tp!887921 e!1764182)))

(declare-fun tp!888093 () Bool)

(declare-fun setNonEmpty!24052 () Bool)

(declare-fun setElem!24052 () Context!4798)

(assert (=> setNonEmpty!24052 (= setRes!24052 (and tp!888093 (inv!43993 setElem!24052) e!1764181))))

(declare-fun setRest!24052 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24052 (= (_2!19458 (h!37809 (t!228641 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24052 true) setRest!24052))))

(assert (= b!2794016 b!2794015))

(assert (= (and b!2794016 condSetEmpty!24052) setIsEmpty!24052))

(assert (= (and b!2794016 (not condSetEmpty!24052)) setNonEmpty!24052))

(assert (= setNonEmpty!24052 b!2794017))

(assert (= (and b!2793598 ((_ is Cons!32389) (t!228641 (zeroValue!4217 (v!33991 (underlying!8119 (v!33992 (underlying!8120 (cache!4007 cacheDown!1009))))))))) b!2794016))

(declare-fun m!3224305 () Bool)

(assert (=> b!2794016 m!3224305))

(declare-fun m!3224307 () Bool)

(assert (=> setNonEmpty!24052 m!3224307))

(declare-fun b!2794018 () Bool)

(declare-fun e!1764188 () Bool)

(declare-fun tp!888101 () Bool)

(assert (=> b!2794018 (= e!1764188 tp!888101)))

(declare-fun b!2794019 () Bool)

(declare-fun e!1764183 () Bool)

(declare-fun tp!888099 () Bool)

(assert (=> b!2794019 (= e!1764183 tp!888099)))

(declare-fun setElem!24053 () Context!4798)

(declare-fun setRes!24053 () Bool)

(declare-fun setNonEmpty!24053 () Bool)

(declare-fun tp!888103 () Bool)

(assert (=> setNonEmpty!24053 (= setRes!24053 (and tp!888103 (inv!43993 setElem!24053) e!1764188))))

(declare-fun mapDefault!18020 () List!32490)

(declare-fun setRest!24053 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24053 (= (_2!19460 (h!37810 mapDefault!18020)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24053 true) setRest!24053))))

(declare-fun e!1764184 () Bool)

(declare-fun e!1764186 () Bool)

(declare-fun tp!888102 () Bool)

(declare-fun b!2794020 () Bool)

(assert (=> b!2794020 (= e!1764184 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 mapDefault!18020)))) e!1764186 tp_is_empty!14175 setRes!24053 tp!888102))))

(declare-fun condSetEmpty!24053 () Bool)

(assert (=> b!2794020 (= condSetEmpty!24053 (= (_2!19460 (h!37810 mapDefault!18020)) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun mapNonEmpty!18020 () Bool)

(declare-fun mapRes!18020 () Bool)

(declare-fun tp!888100 () Bool)

(declare-fun e!1764187 () Bool)

(assert (=> mapNonEmpty!18020 (= mapRes!18020 (and tp!888100 e!1764187))))

(declare-fun mapRest!18020 () (Array (_ BitVec 32) List!32490))

(declare-fun mapValue!18020 () List!32490)

(declare-fun mapKey!18020 () (_ BitVec 32))

(assert (=> mapNonEmpty!18020 (= mapRest!18018 (store mapRest!18020 mapKey!18020 mapValue!18020))))

(declare-fun b!2794021 () Bool)

(declare-fun tp!888098 () Bool)

(assert (=> b!2794021 (= e!1764186 tp!888098)))

(declare-fun b!2794022 () Bool)

(declare-fun e!1764185 () Bool)

(declare-fun tp!888096 () Bool)

(assert (=> b!2794022 (= e!1764185 tp!888096)))

(declare-fun setIsEmpty!24053 () Bool)

(assert (=> setIsEmpty!24053 setRes!24053))

(declare-fun condMapEmpty!18020 () Bool)

(assert (=> mapNonEmpty!18018 (= condMapEmpty!18020 (= mapRest!18018 ((as const (Array (_ BitVec 32) List!32490)) mapDefault!18020)))))

(assert (=> mapNonEmpty!18018 (= tp!887951 (and e!1764184 mapRes!18020))))

(declare-fun mapIsEmpty!18020 () Bool)

(assert (=> mapIsEmpty!18020 mapRes!18020))

(declare-fun setIsEmpty!24054 () Bool)

(declare-fun setRes!24054 () Bool)

(assert (=> setIsEmpty!24054 setRes!24054))

(declare-fun setElem!24054 () Context!4798)

(declare-fun setNonEmpty!24054 () Bool)

(declare-fun tp!888095 () Bool)

(assert (=> setNonEmpty!24054 (= setRes!24054 (and tp!888095 (inv!43993 setElem!24054) e!1764183))))

(declare-fun setRest!24054 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24054 (= (_2!19460 (h!37810 mapValue!18020)) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24054 true) setRest!24054))))

(declare-fun tp!888097 () Bool)

(declare-fun b!2794023 () Bool)

(assert (=> b!2794023 (= e!1764187 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 mapValue!18020)))) e!1764185 tp_is_empty!14175 setRes!24054 tp!888097))))

(declare-fun condSetEmpty!24054 () Bool)

(assert (=> b!2794023 (= condSetEmpty!24054 (= (_2!19460 (h!37810 mapValue!18020)) ((as const (Array Context!4798 Bool)) false)))))

(assert (= (and mapNonEmpty!18018 condMapEmpty!18020) mapIsEmpty!18020))

(assert (= (and mapNonEmpty!18018 (not condMapEmpty!18020)) mapNonEmpty!18020))

(assert (= b!2794023 b!2794022))

(assert (= (and b!2794023 condSetEmpty!24054) setIsEmpty!24054))

(assert (= (and b!2794023 (not condSetEmpty!24054)) setNonEmpty!24054))

(assert (= setNonEmpty!24054 b!2794019))

(assert (= (and mapNonEmpty!18020 ((_ is Cons!32390) mapValue!18020)) b!2794023))

(assert (= b!2794020 b!2794021))

(assert (= (and b!2794020 condSetEmpty!24053) setIsEmpty!24053))

(assert (= (and b!2794020 (not condSetEmpty!24053)) setNonEmpty!24053))

(assert (= setNonEmpty!24053 b!2794018))

(assert (= (and mapNonEmpty!18018 ((_ is Cons!32390) mapDefault!18020)) b!2794020))

(declare-fun m!3224309 () Bool)

(assert (=> setNonEmpty!24054 m!3224309))

(declare-fun m!3224311 () Bool)

(assert (=> setNonEmpty!24053 m!3224311))

(declare-fun m!3224313 () Bool)

(assert (=> b!2794020 m!3224313))

(declare-fun m!3224315 () Bool)

(assert (=> b!2794023 m!3224315))

(declare-fun m!3224317 () Bool)

(assert (=> mapNonEmpty!18020 m!3224317))

(declare-fun b!2794024 () Bool)

(declare-fun e!1764189 () Bool)

(declare-fun tp!888104 () Bool)

(assert (=> b!2794024 (= e!1764189 tp!888104)))

(declare-fun setElem!24055 () Context!4798)

(declare-fun tp!888107 () Bool)

(declare-fun setRes!24055 () Bool)

(declare-fun setNonEmpty!24055 () Bool)

(assert (=> setNonEmpty!24055 (= setRes!24055 (and tp!888107 (inv!43993 setElem!24055) e!1764189))))

(declare-fun setRest!24055 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24055 (= (_2!19460 (h!37810 (t!228642 mapDefault!18011))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24055 true) setRest!24055))))

(declare-fun e!1764190 () Bool)

(assert (=> b!2793551 (= tp!887856 e!1764190)))

(declare-fun setIsEmpty!24055 () Bool)

(assert (=> setIsEmpty!24055 setRes!24055))

(declare-fun b!2794025 () Bool)

(declare-fun e!1764191 () Bool)

(declare-fun tp!888106 () Bool)

(assert (=> b!2794025 (= e!1764191 tp!888106)))

(declare-fun b!2794026 () Bool)

(declare-fun tp!888105 () Bool)

(assert (=> b!2794026 (= e!1764190 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (t!228642 mapDefault!18011))))) e!1764191 tp_is_empty!14175 setRes!24055 tp!888105))))

(declare-fun condSetEmpty!24055 () Bool)

(assert (=> b!2794026 (= condSetEmpty!24055 (= (_2!19460 (h!37810 (t!228642 mapDefault!18011))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2794026 b!2794025))

(assert (= (and b!2794026 condSetEmpty!24055) setIsEmpty!24055))

(assert (= (and b!2794026 (not condSetEmpty!24055)) setNonEmpty!24055))

(assert (= setNonEmpty!24055 b!2794024))

(assert (= (and b!2793551 ((_ is Cons!32390) (t!228642 mapDefault!18011))) b!2794026))

(declare-fun m!3224319 () Bool)

(assert (=> setNonEmpty!24055 m!3224319))

(declare-fun m!3224321 () Bool)

(assert (=> b!2794026 m!3224321))

(declare-fun b!2794027 () Bool)

(declare-fun e!1764192 () Bool)

(declare-fun tp!888108 () Bool)

(declare-fun tp!888109 () Bool)

(assert (=> b!2794027 (= e!1764192 (and tp!888108 tp!888109))))

(assert (=> b!2793596 (= tp!887914 e!1764192)))

(assert (= (and b!2793596 ((_ is Cons!32388) (exprs!2899 setElem!24021))) b!2794027))

(declare-fun b!2794028 () Bool)

(declare-fun e!1764193 () Bool)

(declare-fun tp!888110 () Bool)

(declare-fun tp!888111 () Bool)

(assert (=> b!2794028 (= e!1764193 (and tp!888110 tp!888111))))

(assert (=> b!2793599 (= tp!887919 e!1764193)))

(assert (= (and b!2793599 ((_ is Cons!32388) (exprs!2899 setElem!24022))) b!2794028))

(declare-fun b!2794029 () Bool)

(declare-fun e!1764194 () Bool)

(declare-fun tp!888112 () Bool)

(declare-fun tp!888113 () Bool)

(assert (=> b!2794029 (= e!1764194 (and tp!888112 tp!888113))))

(assert (=> b!2793572 (= tp!887877 e!1764194)))

(assert (= (and b!2793572 ((_ is Cons!32388) (exprs!2899 (_1!19459 (_1!19460 (h!37810 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))))) b!2794029))

(declare-fun condSetEmpty!24056 () Bool)

(assert (=> setNonEmpty!24014 (= condSetEmpty!24056 (= setRest!24014 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24056 () Bool)

(assert (=> setNonEmpty!24014 (= tp!887878 setRes!24056)))

(declare-fun setIsEmpty!24056 () Bool)

(assert (=> setIsEmpty!24056 setRes!24056))

(declare-fun tp!888115 () Bool)

(declare-fun e!1764195 () Bool)

(declare-fun setNonEmpty!24056 () Bool)

(declare-fun setElem!24056 () Context!4798)

(assert (=> setNonEmpty!24056 (= setRes!24056 (and tp!888115 (inv!43993 setElem!24056) e!1764195))))

(declare-fun setRest!24056 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24056 (= setRest!24014 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24056 true) setRest!24056))))

(declare-fun b!2794030 () Bool)

(declare-fun tp!888114 () Bool)

(assert (=> b!2794030 (= e!1764195 tp!888114)))

(assert (= (and setNonEmpty!24014 condSetEmpty!24056) setIsEmpty!24056))

(assert (= (and setNonEmpty!24014 (not condSetEmpty!24056)) setNonEmpty!24056))

(assert (= setNonEmpty!24056 b!2794030))

(declare-fun m!3224323 () Bool)

(assert (=> setNonEmpty!24056 m!3224323))

(declare-fun b!2794031 () Bool)

(declare-fun e!1764196 () Bool)

(declare-fun tp!888116 () Bool)

(declare-fun tp!888117 () Bool)

(assert (=> b!2794031 (= e!1764196 (and tp!888116 tp!888117))))

(assert (=> b!2793622 (= tp!887947 e!1764196)))

(assert (= (and b!2793622 ((_ is Cons!32388) (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapValue!18018)))))) b!2794031))

(declare-fun b!2794032 () Bool)

(declare-fun e!1764197 () Bool)

(assert (=> b!2794032 (= e!1764197 tp_is_empty!14175)))

(declare-fun b!2794035 () Bool)

(declare-fun tp!888121 () Bool)

(declare-fun tp!888118 () Bool)

(assert (=> b!2794035 (= e!1764197 (and tp!888121 tp!888118))))

(assert (=> b!2793539 (= tp!887843 e!1764197)))

(declare-fun b!2794034 () Bool)

(declare-fun tp!888122 () Bool)

(assert (=> b!2794034 (= e!1764197 tp!888122)))

(declare-fun b!2794033 () Bool)

(declare-fun tp!888120 () Bool)

(declare-fun tp!888119 () Bool)

(assert (=> b!2794033 (= e!1764197 (and tp!888120 tp!888119))))

(assert (= (and b!2793539 ((_ is ElementMatch!8181) (_1!19457 (_1!19458 (h!37809 mapDefault!18012))))) b!2794032))

(assert (= (and b!2793539 ((_ is Concat!13269) (_1!19457 (_1!19458 (h!37809 mapDefault!18012))))) b!2794033))

(assert (= (and b!2793539 ((_ is Star!8181) (_1!19457 (_1!19458 (h!37809 mapDefault!18012))))) b!2794034))

(assert (= (and b!2793539 ((_ is Union!8181) (_1!19457 (_1!19458 (h!37809 mapDefault!18012))))) b!2794035))

(declare-fun b!2794036 () Bool)

(declare-fun e!1764198 () Bool)

(declare-fun tp!888123 () Bool)

(assert (=> b!2794036 (= e!1764198 tp!888123)))

(declare-fun e!1764200 () Bool)

(declare-fun b!2794037 () Bool)

(declare-fun tp!888127 () Bool)

(declare-fun setRes!24057 () Bool)

(declare-fun tp!888124 () Bool)

(assert (=> b!2794037 (= e!1764200 (and tp!888124 (inv!43993 (_2!19457 (_1!19458 (h!37809 (t!228641 mapDefault!18012))))) e!1764198 tp_is_empty!14175 setRes!24057 tp!888127))))

(declare-fun condSetEmpty!24057 () Bool)

(assert (=> b!2794037 (= condSetEmpty!24057 (= (_2!19458 (h!37809 (t!228641 mapDefault!18012))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24057 () Bool)

(assert (=> setIsEmpty!24057 setRes!24057))

(declare-fun b!2794038 () Bool)

(declare-fun e!1764199 () Bool)

(declare-fun tp!888125 () Bool)

(assert (=> b!2794038 (= e!1764199 tp!888125)))

(assert (=> b!2793539 (= tp!887846 e!1764200)))

(declare-fun tp!888126 () Bool)

(declare-fun setNonEmpty!24057 () Bool)

(declare-fun setElem!24057 () Context!4798)

(assert (=> setNonEmpty!24057 (= setRes!24057 (and tp!888126 (inv!43993 setElem!24057) e!1764199))))

(declare-fun setRest!24057 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24057 (= (_2!19458 (h!37809 (t!228641 mapDefault!18012))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24057 true) setRest!24057))))

(assert (= b!2794037 b!2794036))

(assert (= (and b!2794037 condSetEmpty!24057) setIsEmpty!24057))

(assert (= (and b!2794037 (not condSetEmpty!24057)) setNonEmpty!24057))

(assert (= setNonEmpty!24057 b!2794038))

(assert (= (and b!2793539 ((_ is Cons!32389) (t!228641 mapDefault!18012))) b!2794037))

(declare-fun m!3224325 () Bool)

(assert (=> b!2794037 m!3224325))

(declare-fun m!3224327 () Bool)

(assert (=> setNonEmpty!24057 m!3224327))

(declare-fun b!2794039 () Bool)

(declare-fun e!1764201 () Bool)

(declare-fun tp!888128 () Bool)

(declare-fun tp!888129 () Bool)

(assert (=> b!2794039 (= e!1764201 (and tp!888128 tp!888129))))

(assert (=> b!2793568 (= tp!887871 e!1764201)))

(assert (= (and b!2793568 ((_ is Cons!32388) (exprs!2899 setElem!24013))) b!2794039))

(declare-fun b!2794040 () Bool)

(declare-fun e!1764202 () Bool)

(declare-fun tp!888130 () Bool)

(declare-fun tp!888131 () Bool)

(assert (=> b!2794040 (= e!1764202 (and tp!888130 tp!888131))))

(assert (=> b!2793636 (= tp!887969 e!1764202)))

(assert (= (and b!2793636 ((_ is Cons!32388) (exprs!2899 setElem!24033))) b!2794040))

(declare-fun condSetEmpty!24058 () Bool)

(assert (=> setNonEmpty!24009 (= condSetEmpty!24058 (= setRest!24009 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24058 () Bool)

(assert (=> setNonEmpty!24009 (= tp!887845 setRes!24058)))

(declare-fun setIsEmpty!24058 () Bool)

(assert (=> setIsEmpty!24058 setRes!24058))

(declare-fun tp!888133 () Bool)

(declare-fun e!1764203 () Bool)

(declare-fun setNonEmpty!24058 () Bool)

(declare-fun setElem!24058 () Context!4798)

(assert (=> setNonEmpty!24058 (= setRes!24058 (and tp!888133 (inv!43993 setElem!24058) e!1764203))))

(declare-fun setRest!24058 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24058 (= setRest!24009 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24058 true) setRest!24058))))

(declare-fun b!2794041 () Bool)

(declare-fun tp!888132 () Bool)

(assert (=> b!2794041 (= e!1764203 tp!888132)))

(assert (= (and setNonEmpty!24009 condSetEmpty!24058) setIsEmpty!24058))

(assert (= (and setNonEmpty!24009 (not condSetEmpty!24058)) setNonEmpty!24058))

(assert (= setNonEmpty!24058 b!2794041))

(declare-fun m!3224329 () Bool)

(assert (=> setNonEmpty!24058 m!3224329))

(declare-fun b!2794042 () Bool)

(declare-fun e!1764204 () Bool)

(declare-fun tp!888134 () Bool)

(declare-fun tp!888135 () Bool)

(assert (=> b!2794042 (= e!1764204 (and tp!888134 tp!888135))))

(assert (=> b!2793569 (= tp!887873 e!1764204)))

(assert (= (and b!2793569 ((_ is Cons!32388) (exprs!2899 (_1!19459 (_1!19460 (h!37810 (zeroValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890)))))))))))) b!2794042))

(declare-fun b!2794043 () Bool)

(declare-fun e!1764205 () Bool)

(declare-fun tp!888136 () Bool)

(declare-fun tp!888137 () Bool)

(assert (=> b!2794043 (= e!1764205 (and tp!888136 tp!888137))))

(assert (=> b!2793588 (= tp!887902 e!1764205)))

(assert (= (and b!2793588 ((_ is Cons!32388) (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapValue!18015)))))) b!2794043))

(declare-fun b!2794044 () Bool)

(declare-fun e!1764206 () Bool)

(declare-fun tp!888138 () Bool)

(assert (=> b!2794044 (= e!1764206 tp!888138)))

(declare-fun setNonEmpty!24059 () Bool)

(declare-fun tp!888141 () Bool)

(declare-fun setElem!24059 () Context!4798)

(declare-fun setRes!24059 () Bool)

(assert (=> setNonEmpty!24059 (= setRes!24059 (and tp!888141 (inv!43993 setElem!24059) e!1764206))))

(declare-fun setRest!24059 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24059 (= (_2!19460 (h!37810 (t!228642 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24059 true) setRest!24059))))

(declare-fun e!1764207 () Bool)

(assert (=> b!2793573 (= tp!887876 e!1764207)))

(declare-fun setIsEmpty!24059 () Bool)

(assert (=> setIsEmpty!24059 setRes!24059))

(declare-fun b!2794045 () Bool)

(declare-fun e!1764208 () Bool)

(declare-fun tp!888140 () Bool)

(assert (=> b!2794045 (= e!1764208 tp!888140)))

(declare-fun tp!888139 () Bool)

(declare-fun b!2794046 () Bool)

(assert (=> b!2794046 (= e!1764207 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (t!228642 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))))) e!1764208 tp_is_empty!14175 setRes!24059 tp!888139))))

(declare-fun condSetEmpty!24059 () Bool)

(assert (=> b!2794046 (= condSetEmpty!24059 (= (_2!19460 (h!37810 (t!228642 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2794046 b!2794045))

(assert (= (and b!2794046 condSetEmpty!24059) setIsEmpty!24059))

(assert (= (and b!2794046 (not condSetEmpty!24059)) setNonEmpty!24059))

(assert (= setNonEmpty!24059 b!2794044))

(assert (= (and b!2793573 ((_ is Cons!32390) (t!228642 (minValue!4218 (v!33993 (underlying!8121 (v!33994 (underlying!8122 (cache!4008 cacheUp!890))))))))) b!2794046))

(declare-fun m!3224331 () Bool)

(assert (=> setNonEmpty!24059 m!3224331))

(declare-fun m!3224333 () Bool)

(assert (=> b!2794046 m!3224333))

(declare-fun condSetEmpty!24060 () Bool)

(assert (=> setNonEmpty!24030 (= condSetEmpty!24060 (= setRest!24030 ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setRes!24060 () Bool)

(assert (=> setNonEmpty!24030 (= tp!887958 setRes!24060)))

(declare-fun setIsEmpty!24060 () Bool)

(assert (=> setIsEmpty!24060 setRes!24060))

(declare-fun tp!888143 () Bool)

(declare-fun setNonEmpty!24060 () Bool)

(declare-fun setElem!24060 () Context!4798)

(declare-fun e!1764209 () Bool)

(assert (=> setNonEmpty!24060 (= setRes!24060 (and tp!888143 (inv!43993 setElem!24060) e!1764209))))

(declare-fun setRest!24060 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24060 (= setRest!24030 ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24060 true) setRest!24060))))

(declare-fun b!2794047 () Bool)

(declare-fun tp!888142 () Bool)

(assert (=> b!2794047 (= e!1764209 tp!888142)))

(assert (= (and setNonEmpty!24030 condSetEmpty!24060) setIsEmpty!24060))

(assert (= (and setNonEmpty!24030 (not condSetEmpty!24060)) setNonEmpty!24060))

(assert (= setNonEmpty!24060 b!2794047))

(declare-fun m!3224335 () Bool)

(assert (=> setNonEmpty!24060 m!3224335))

(declare-fun b!2794048 () Bool)

(declare-fun e!1764210 () Bool)

(declare-fun tp!888144 () Bool)

(assert (=> b!2794048 (= e!1764210 tp!888144)))

(declare-fun setElem!24061 () Context!4798)

(declare-fun tp!888147 () Bool)

(declare-fun setRes!24061 () Bool)

(declare-fun setNonEmpty!24061 () Bool)

(assert (=> setNonEmpty!24061 (= setRes!24061 (and tp!888147 (inv!43993 setElem!24061) e!1764210))))

(declare-fun setRest!24061 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24061 (= (_2!19460 (h!37810 (t!228642 mapValue!18018))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24061 true) setRest!24061))))

(declare-fun e!1764211 () Bool)

(assert (=> b!2793623 (= tp!887948 e!1764211)))

(declare-fun setIsEmpty!24061 () Bool)

(assert (=> setIsEmpty!24061 setRes!24061))

(declare-fun b!2794049 () Bool)

(declare-fun e!1764212 () Bool)

(declare-fun tp!888146 () Bool)

(assert (=> b!2794049 (= e!1764212 tp!888146)))

(declare-fun tp!888145 () Bool)

(declare-fun b!2794050 () Bool)

(assert (=> b!2794050 (= e!1764211 (and (inv!43993 (_1!19459 (_1!19460 (h!37810 (t!228642 mapValue!18018))))) e!1764212 tp_is_empty!14175 setRes!24061 tp!888145))))

(declare-fun condSetEmpty!24061 () Bool)

(assert (=> b!2794050 (= condSetEmpty!24061 (= (_2!19460 (h!37810 (t!228642 mapValue!18018))) ((as const (Array Context!4798 Bool)) false)))))

(assert (= b!2794050 b!2794049))

(assert (= (and b!2794050 condSetEmpty!24061) setIsEmpty!24061))

(assert (= (and b!2794050 (not condSetEmpty!24061)) setNonEmpty!24061))

(assert (= setNonEmpty!24061 b!2794048))

(assert (= (and b!2793623 ((_ is Cons!32390) (t!228642 mapValue!18018))) b!2794050))

(declare-fun m!3224337 () Bool)

(assert (=> setNonEmpty!24061 m!3224337))

(declare-fun m!3224339 () Bool)

(assert (=> b!2794050 m!3224339))

(declare-fun b!2794051 () Bool)

(declare-fun e!1764213 () Bool)

(declare-fun tp!888148 () Bool)

(declare-fun tp!888149 () Bool)

(assert (=> b!2794051 (= e!1764213 (and tp!888148 tp!888149))))

(assert (=> b!2793625 (= tp!887957 e!1764213)))

(assert (= (and b!2793625 ((_ is Cons!32388) (exprs!2899 (_1!19459 (_1!19460 (h!37810 mapValue!18011)))))) b!2794051))

(declare-fun b!2794052 () Bool)

(declare-fun e!1764214 () Bool)

(assert (=> b!2794052 (= e!1764214 tp_is_empty!14175)))

(declare-fun b!2794055 () Bool)

(declare-fun tp!888153 () Bool)

(declare-fun tp!888150 () Bool)

(assert (=> b!2794055 (= e!1764214 (and tp!888153 tp!888150))))

(assert (=> b!2793591 (= tp!887907 e!1764214)))

(declare-fun b!2794054 () Bool)

(declare-fun tp!888154 () Bool)

(assert (=> b!2794054 (= e!1764214 tp!888154)))

(declare-fun b!2794053 () Bool)

(declare-fun tp!888152 () Bool)

(declare-fun tp!888151 () Bool)

(assert (=> b!2794053 (= e!1764214 (and tp!888152 tp!888151))))

(assert (= (and b!2793591 ((_ is ElementMatch!8181) (_1!19457 (_1!19458 (h!37809 mapDefault!18015))))) b!2794052))

(assert (= (and b!2793591 ((_ is Concat!13269) (_1!19457 (_1!19458 (h!37809 mapDefault!18015))))) b!2794053))

(assert (= (and b!2793591 ((_ is Star!8181) (_1!19457 (_1!19458 (h!37809 mapDefault!18015))))) b!2794054))

(assert (= (and b!2793591 ((_ is Union!8181) (_1!19457 (_1!19458 (h!37809 mapDefault!18015))))) b!2794055))

(declare-fun b!2794056 () Bool)

(declare-fun e!1764215 () Bool)

(declare-fun tp!888155 () Bool)

(assert (=> b!2794056 (= e!1764215 tp!888155)))

(declare-fun e!1764217 () Bool)

(declare-fun tp!888156 () Bool)

(declare-fun tp!888159 () Bool)

(declare-fun setRes!24062 () Bool)

(declare-fun b!2794057 () Bool)

(assert (=> b!2794057 (= e!1764217 (and tp!888156 (inv!43993 (_2!19457 (_1!19458 (h!37809 (t!228641 mapDefault!18015))))) e!1764215 tp_is_empty!14175 setRes!24062 tp!888159))))

(declare-fun condSetEmpty!24062 () Bool)

(assert (=> b!2794057 (= condSetEmpty!24062 (= (_2!19458 (h!37809 (t!228641 mapDefault!18015))) ((as const (Array Context!4798 Bool)) false)))))

(declare-fun setIsEmpty!24062 () Bool)

(assert (=> setIsEmpty!24062 setRes!24062))

(declare-fun b!2794058 () Bool)

(declare-fun e!1764216 () Bool)

(declare-fun tp!888157 () Bool)

(assert (=> b!2794058 (= e!1764216 tp!888157)))

(assert (=> b!2793591 (= tp!887908 e!1764217)))

(declare-fun setElem!24062 () Context!4798)

(declare-fun setNonEmpty!24062 () Bool)

(declare-fun tp!888158 () Bool)

(assert (=> setNonEmpty!24062 (= setRes!24062 (and tp!888158 (inv!43993 setElem!24062) e!1764216))))

(declare-fun setRest!24062 () (InoxSet Context!4798))

(assert (=> setNonEmpty!24062 (= (_2!19458 (h!37809 (t!228641 mapDefault!18015))) ((_ map or) (store ((as const (Array Context!4798 Bool)) false) setElem!24062 true) setRest!24062))))

(assert (= b!2794057 b!2794056))

(assert (= (and b!2794057 condSetEmpty!24062) setIsEmpty!24062))

(assert (= (and b!2794057 (not condSetEmpty!24062)) setNonEmpty!24062))

(assert (= setNonEmpty!24062 b!2794058))

(assert (= (and b!2793591 ((_ is Cons!32389) (t!228641 mapDefault!18015))) b!2794057))

(declare-fun m!3224341 () Bool)

(assert (=> b!2794057 m!3224341))

(declare-fun m!3224343 () Bool)

(assert (=> setNonEmpty!24062 m!3224343))

(declare-fun b!2794059 () Bool)

(declare-fun e!1764218 () Bool)

(declare-fun tp!888160 () Bool)

(assert (=> b!2794059 (= e!1764218 (and tp_is_empty!14175 tp!888160))))

(assert (=> b!2793562 (= tp!887865 e!1764218)))

(assert (= (and b!2793562 ((_ is Cons!32387) (innerList!10106 (xs!13158 (c!453343 totalInput!758))))) b!2794059))

(declare-fun b!2794060 () Bool)

(declare-fun e!1764219 () Bool)

(declare-fun tp!888161 () Bool)

(assert (=> b!2794060 (= e!1764219 (and tp_is_empty!14175 tp!888161))))

(assert (=> b!2793567 (= tp!887870 e!1764219)))

(assert (= (and b!2793567 ((_ is Cons!32387) (t!228639 (t!228639 testedSuffix!143)))) b!2794060))

(declare-fun b!2794061 () Bool)

(declare-fun e!1764220 () Bool)

(declare-fun tp!888163 () Bool)

(declare-fun tp!888164 () Bool)

(assert (=> b!2794061 (= e!1764220 (and (inv!43994 (left!24532 (left!24532 (c!453343 totalInput!758)))) tp!888163 (inv!43994 (right!24862 (left!24532 (c!453343 totalInput!758)))) tp!888164))))

(declare-fun b!2794063 () Bool)

(declare-fun e!1764221 () Bool)

(declare-fun tp!888162 () Bool)

(assert (=> b!2794063 (= e!1764221 tp!888162)))

(declare-fun b!2794062 () Bool)

(assert (=> b!2794062 (= e!1764220 (and (inv!44000 (xs!13158 (left!24532 (c!453343 totalInput!758)))) e!1764221))))

(assert (=> b!2793560 (= tp!887866 (and (inv!43994 (left!24532 (c!453343 totalInput!758))) e!1764220))))

(assert (= (and b!2793560 ((_ is Node!10046) (left!24532 (c!453343 totalInput!758)))) b!2794061))

(assert (= b!2794062 b!2794063))

(assert (= (and b!2793560 ((_ is Leaf!15305) (left!24532 (c!453343 totalInput!758)))) b!2794062))

(declare-fun m!3224345 () Bool)

(assert (=> b!2794061 m!3224345))

(declare-fun m!3224347 () Bool)

(assert (=> b!2794061 m!3224347))

(declare-fun m!3224349 () Bool)

(assert (=> b!2794062 m!3224349))

(assert (=> b!2793560 m!3223825))

(declare-fun b!2794064 () Bool)

(declare-fun e!1764222 () Bool)

(declare-fun tp!888166 () Bool)

(declare-fun tp!888167 () Bool)

(assert (=> b!2794064 (= e!1764222 (and (inv!43994 (left!24532 (right!24862 (c!453343 totalInput!758)))) tp!888166 (inv!43994 (right!24862 (right!24862 (c!453343 totalInput!758)))) tp!888167))))

(declare-fun b!2794066 () Bool)

(declare-fun e!1764223 () Bool)

(declare-fun tp!888165 () Bool)

(assert (=> b!2794066 (= e!1764223 tp!888165)))

(declare-fun b!2794065 () Bool)

(assert (=> b!2794065 (= e!1764222 (and (inv!44000 (xs!13158 (right!24862 (c!453343 totalInput!758)))) e!1764223))))

(assert (=> b!2793560 (= tp!887867 (and (inv!43994 (right!24862 (c!453343 totalInput!758))) e!1764222))))

(assert (= (and b!2793560 ((_ is Node!10046) (right!24862 (c!453343 totalInput!758)))) b!2794064))

(assert (= b!2794065 b!2794066))

(assert (= (and b!2793560 ((_ is Leaf!15305) (right!24862 (c!453343 totalInput!758)))) b!2794065))

(declare-fun m!3224351 () Bool)

(assert (=> b!2794064 m!3224351))

(declare-fun m!3224353 () Bool)

(assert (=> b!2794064 m!3224353))

(declare-fun m!3224355 () Bool)

(assert (=> b!2794065 m!3224355))

(assert (=> b!2793560 m!3223827))

(declare-fun b!2794067 () Bool)

(declare-fun e!1764224 () Bool)

(declare-fun tp!888168 () Bool)

(declare-fun tp!888169 () Bool)

(assert (=> b!2794067 (= e!1764224 (and tp!888168 tp!888169))))

(assert (=> b!2793592 (= tp!887910 e!1764224)))

(assert (= (and b!2793592 ((_ is Cons!32388) (exprs!2899 (_2!19457 (_1!19458 (h!37809 mapDefault!18015)))))) b!2794067))

(declare-fun b!2794068 () Bool)

(declare-fun e!1764225 () Bool)

(assert (=> b!2794068 (= e!1764225 tp_is_empty!14175)))

(declare-fun b!2794071 () Bool)

(declare-fun tp!888173 () Bool)

(declare-fun tp!888170 () Bool)

(assert (=> b!2794071 (= e!1764225 (and tp!888173 tp!888170))))

(assert (=> b!2793631 (= tp!887963 e!1764225)))

(declare-fun b!2794070 () Bool)

(declare-fun tp!888174 () Bool)

(assert (=> b!2794070 (= e!1764225 tp!888174)))

(declare-fun b!2794069 () Bool)

(declare-fun tp!888172 () Bool)

(declare-fun tp!888171 () Bool)

(assert (=> b!2794069 (= e!1764225 (and tp!888172 tp!888171))))

(assert (= (and b!2793631 ((_ is ElementMatch!8181) (h!37808 (exprs!2899 setElem!24006)))) b!2794068))

(assert (= (and b!2793631 ((_ is Concat!13269) (h!37808 (exprs!2899 setElem!24006)))) b!2794069))

(assert (= (and b!2793631 ((_ is Star!8181) (h!37808 (exprs!2899 setElem!24006)))) b!2794070))

(assert (= (and b!2793631 ((_ is Union!8181) (h!37808 (exprs!2899 setElem!24006)))) b!2794071))

(declare-fun b!2794072 () Bool)

(declare-fun e!1764226 () Bool)

(declare-fun tp!888175 () Bool)

(declare-fun tp!888176 () Bool)

(assert (=> b!2794072 (= e!1764226 (and tp!888175 tp!888176))))

(assert (=> b!2793631 (= tp!887964 e!1764226)))

(assert (= (and b!2793631 ((_ is Cons!32388) (t!228640 (exprs!2899 setElem!24006)))) b!2794072))

(declare-fun b_lambda!83745 () Bool)

(assert (= b_lambda!83743 (or d!812249 b_lambda!83745)))

(declare-fun bs!514659 () Bool)

(declare-fun d!812467 () Bool)

(assert (= bs!514659 (and d!812467 d!812249)))

(declare-fun validRegex!3341 (Regex!8181) Bool)

(assert (=> bs!514659 (= (dynLambda!13622 lambda!102575 (h!37808 (exprs!2899 setElem!24006))) (validRegex!3341 (h!37808 (exprs!2899 setElem!24006))))))

(declare-fun m!3224357 () Bool)

(assert (=> bs!514659 m!3224357))

(assert (=> b!2793863 d!812467))

(check-sat (not b!2793651) (not setNonEmpty!24049) (not b!2794020) (not setNonEmpty!24052) (not d!812433) (not b!2793637) (not b_next!79783) (not b!2793951) (not b!2794030) (not b!2794016) (not b!2793956) (not b!2793955) (not d!812411) (not b!2793661) (not b!2794031) (not b!2794014) (not d!812331) (not setNonEmpty!24057) (not b!2793891) (not b!2794039) (not b!2794022) (not b!2793963) (not b!2793731) (not b!2793677) (not b!2793986) (not b!2793838) (not setNonEmpty!24038) (not d!812421) (not b!2793990) (not b!2793924) (not b!2794007) (not b!2794072) (not b!2794042) (not d!812307) (not setNonEmpty!24039) (not b!2793716) (not b!2793904) (not b!2793938) (not b!2793560) (not bm!182747) (not b!2793948) (not bm!182753) (not d!812293) (not b!2793845) (not b!2794010) (not b!2793997) (not b!2794044) (not b!2794047) (not b!2794019) (not b!2794066) (not d!812281) (not b!2793962) (not b!2794005) (not b!2793917) (not mapNonEmpty!18020) (not b!2794000) (not b!2793890) (not b!2793944) (not b!2793945) (not b!2793734) (not b!2793771) (not b!2793866) (not setNonEmpty!24055) (not b!2794048) (not b!2793683) (not b!2793929) (not b!2793905) (not b!2794008) (not b!2793998) (not b!2793713) (not b!2793676) (not b!2793995) (not d!812303) (not b!2793952) (not d!812425) (not d!812437) (not b!2793901) (not d!812371) (not b!2793708) (not d!812361) (not d!812393) (not b!2793914) (not d!812431) (not d!812289) (not d!812453) (not b!2793918) (not setNonEmpty!24051) (not b!2793680) (not bm!182750) (not bm!182752) (not b!2793942) (not setNonEmpty!24042) (not d!812409) (not d!812325) (not b!2794062) (not b!2794025) (not d!812391) (not b!2793958) (not b!2794013) (not b!2793687) (not b!2793755) (not setNonEmpty!24054) (not setNonEmpty!24036) (not d!812313) (not b_lambda!83745) (not b!2794027) (not d!812335) (not b!2793979) (not b!2793850) (not b!2794040) (not b!2793985) (not b!2793688) (not d!812295) (not b!2794024) (not b!2793943) (not b!2794009) (not d!812395) (not d!812377) (not b!2793686) (not b!2793720) (not b!2793984) (not b!2793980) (not b!2793954) (not d!812359) (not b!2794060) (not b!2793849) (not setNonEmpty!24050) (not b!2793844) (not b!2793988) (not b!2793834) (not b!2793941) (not b!2794034) (not b_next!79787) (not bm!182748) (not b!2794071) (not setNonEmpty!24040) (not b!2794063) (not b!2793959) (not b!2793965) (not setNonEmpty!24044) (not b!2793728) (not b!2793940) (not b!2794002) (not b!2793936) (not b!2794056) (not b!2794045) (not b!2794054) (not b!2793946) (not d!812415) (not b!2793751) (not b!2794026) (not b!2794006) (not b!2794069) (not setNonEmpty!24046) (not b!2793702) (not b!2793767) (not d!812407) (not b!2794035) (not b!2794001) (not setNonEmpty!24060) (not d!812413) (not b!2793650) (not setNonEmpty!24059) tp_is_empty!14175 (not b!2793726) (not b!2794043) (not setNonEmpty!24058) (not b!2794015) (not b!2794023) (not b!2793903) (not b!2793949) b_and!203819 (not d!812353) (not b!2793679) (not setNonEmpty!24061) (not setNonEmpty!24053) (not d!812435) (not d!812337) (not b!2794041) (not b!2793982) (not b!2793912) (not b!2793827) (not b!2794055) (not d!812327) (not b!2793847) (not b!2794058) (not setNonEmpty!24062) (not d!812315) (not b!2793855) (not setNonEmpty!24034) (not b!2793732) (not d!812387) (not b!2793874) (not b!2793947) (not d!812305) (not b!2794037) (not b!2793921) (not d!812357) (not b!2793961) (not b!2793760) (not b!2793848) (not setNonEmpty!24047) (not b!2794036) (not b!2794033) (not b!2793908) (not b!2794057) (not d!812405) (not b!2794017) (not b!2793981) (not b!2793910) (not d!812465) (not b!2794012) (not b!2793857) (not b!2793768) (not d!812367) (not b!2794051) (not b!2794049) (not setNonEmpty!24048) (not b!2793994) (not b!2793770) (not b_next!79781) (not b!2793932) (not b!2793832) (not d!812287) b_and!203817 (not bm!182734) (not d!812417) (not d!812381) (not b!2794003) (not b!2793675) (not b!2794061) (not b!2793769) (not b!2794070) (not b!2793846) (not b!2793752) (not b!2793992) (not b!2793772) (not mapNonEmpty!18019) (not d!812369) (not b!2793922) (not d!812321) (not d!812333) (not b!2794018) (not setNonEmpty!24041) (not b!2794050) (not b!2793939) (not b!2793730) (not b!2793639) (not b!2793696) (not b!2793999) (not b!2794021) (not b!2793758) (not b!2794046) (not b!2793735) (not b!2793653) (not b!2793707) (not b!2793764) (not b!2793987) (not b!2793824) (not b_next!79785) (not b!2793638) (not b!2793977) (not setNonEmpty!24043) (not b!2793704) (not d!812385) (not b!2794064) (not b!2793960) (not b!2793991) (not b!2793953) (not b!2793983) (not b!2793957) (not setNonEmpty!24037) (not b!2793831) (not b!2793934) (not b!2793724) (not b!2794029) (not bm!182751) (not d!812345) (not b!2794059) (not b!2793678) (not b!2794053) (not b!2793993) (not b!2793919) (not bs!514659) (not b!2793873) (not setNonEmpty!24035) (not b!2793695) (not b!2793895) (not d!812389) (not b!2793733) (not b!2793964) (not b!2794065) (not b!2793864) (not d!812397) (not d!812419) b_and!203821 (not b!2793682) (not d!812299) (not d!812455) (not b!2794038) (not d!812363) (not b!2793950) (not b!2794028) (not setNonEmpty!24045) (not b!2793717) (not b!2793753) (not b!2793766) (not b!2793856) (not b!2793978) (not b!2794067) (not setNonEmpty!24056) b_and!203815 (not b!2793989) (not b!2793761) (not b!2793868))
(check-sat (not b_next!79783) (not b_next!79787) b_and!203819 (not b_next!79781) b_and!203817 (not b_next!79785) b_and!203821 b_and!203815)
