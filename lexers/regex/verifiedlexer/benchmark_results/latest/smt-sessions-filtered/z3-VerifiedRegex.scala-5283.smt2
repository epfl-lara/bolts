; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271056 () Bool)

(assert start!271056)

(declare-fun b!2802728 () Bool)

(declare-fun b_free!79493 () Bool)

(declare-fun b_next!80197 () Bool)

(assert (=> b!2802728 (= b_free!79493 (not b_next!80197))))

(declare-fun tp!893455 () Bool)

(declare-fun b_and!204231 () Bool)

(assert (=> b!2802728 (= tp!893455 b_and!204231)))

(declare-fun b!2802733 () Bool)

(declare-fun b_free!79495 () Bool)

(declare-fun b_next!80199 () Bool)

(assert (=> b!2802733 (= b_free!79495 (not b_next!80199))))

(declare-fun tp!893467 () Bool)

(declare-fun b_and!204233 () Bool)

(assert (=> b!2802733 (= tp!893467 b_and!204233)))

(declare-fun b!2802712 () Bool)

(declare-fun b_free!79497 () Bool)

(declare-fun b_next!80201 () Bool)

(assert (=> b!2802712 (= b_free!79497 (not b_next!80201))))

(declare-fun tp!893465 () Bool)

(declare-fun b_and!204235 () Bool)

(assert (=> b!2802712 (= tp!893465 b_and!204235)))

(declare-fun b!2802725 () Bool)

(declare-fun b_free!79499 () Bool)

(declare-fun b_next!80203 () Bool)

(assert (=> b!2802725 (= b_free!79499 (not b_next!80203))))

(declare-fun tp!893464 () Bool)

(declare-fun b_and!204237 () Bool)

(assert (=> b!2802725 (= tp!893464 b_and!204237)))

(declare-fun setIsEmpty!24627 () Bool)

(declare-fun setRes!24627 () Bool)

(assert (=> setIsEmpty!24627 setRes!24627))

(declare-fun b!2802700 () Bool)

(declare-fun e!1771238 () Bool)

(declare-fun tp!893460 () Bool)

(declare-fun mapRes!18416 () Bool)

(assert (=> b!2802700 (= e!1771238 (and tp!893460 mapRes!18416))))

(declare-fun condMapEmpty!18416 () Bool)

(declare-datatypes ((C!16620 0))(
  ( (C!16621 (val!10244 Int)) )
))
(declare-datatypes ((array!14401 0))(
  ( (array!14402 (arr!6416 (Array (_ BitVec 32) (_ BitVec 64))) (size!25454 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8231 0))(
  ( (ElementMatch!8231 (c!454370 C!16620)) (Concat!13319 (regOne!16974 Regex!8231) (regTwo!16974 Regex!8231)) (EmptyExpr!8231) (Star!8231 (reg!8560 Regex!8231)) (EmptyLang!8231) (Union!8231 (regOne!16975 Regex!8231) (regTwo!16975 Regex!8231)) )
))
(declare-datatypes ((List!32691 0))(
  ( (Nil!32591) (Cons!32591 (h!38011 Regex!8231) (t!228861 List!32691)) )
))
(declare-datatypes ((Context!4898 0))(
  ( (Context!4899 (exprs!2949 List!32691)) )
))
(declare-datatypes ((tuple3!5224 0))(
  ( (tuple3!5225 (_1!19708 Regex!8231) (_2!19708 Context!4898) (_3!3082 C!16620)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33252 0))(
  ( (tuple2!33253 (_1!19709 tuple3!5224) (_2!19709 (InoxSet Context!4898))) )
))
(declare-datatypes ((List!32692 0))(
  ( (Nil!32592) (Cons!32592 (h!38012 tuple2!33252) (t!228862 List!32692)) )
))
(declare-datatypes ((array!14403 0))(
  ( (array!14404 (arr!6417 (Array (_ BitVec 32) List!32692)) (size!25455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8104 0))(
  ( (LongMapFixedSize!8105 (defaultEntry!4437 Int) (mask!9904 (_ BitVec 32)) (extraKeys!4301 (_ BitVec 32)) (zeroValue!4311 List!32692) (minValue!4311 List!32692) (_size!8147 (_ BitVec 32)) (_keys!4352 array!14401) (_values!4333 array!14403) (_vacant!4113 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16017 0))(
  ( (Cell!16018 (v!34194 LongMapFixedSize!8104)) )
))
(declare-datatypes ((MutLongMap!4052 0))(
  ( (LongMap!4052 (underlying!8307 Cell!16017)) (MutLongMapExt!4051 (__x!21806 Int)) )
))
(declare-datatypes ((Cell!16019 0))(
  ( (Cell!16020 (v!34195 MutLongMap!4052)) )
))
(declare-datatypes ((Hashable!3968 0))(
  ( (HashableExt!3967 (__x!21807 Int)) )
))
(declare-datatypes ((MutableMap!3958 0))(
  ( (MutableMapExt!3957 (__x!21808 Int)) (HashMap!3958 (underlying!8308 Cell!16019) (hashF!6000 Hashable!3968) (_size!8148 (_ BitVec 32)) (defaultValue!4129 Int)) )
))
(declare-datatypes ((CacheDown!2788 0))(
  ( (CacheDown!2789 (cache!4101 MutableMap!3958)) )
))
(declare-fun cacheDown!1009 () CacheDown!2788)

(declare-fun mapDefault!18416 () List!32692)

(assert (=> b!2802700 (= condMapEmpty!18416 (= (arr!6417 (_values!4333 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32692)) mapDefault!18416)))))

(declare-fun b!2802701 () Bool)

(declare-fun e!1771239 () Bool)

(declare-fun e!1771250 () Bool)

(assert (=> b!2802701 (= e!1771239 e!1771250)))

(declare-fun b!2802702 () Bool)

(declare-fun e!1771234 () Bool)

(declare-fun tp!893459 () Bool)

(declare-fun mapRes!18415 () Bool)

(assert (=> b!2802702 (= e!1771234 (and tp!893459 mapRes!18415))))

(declare-fun condMapEmpty!18415 () Bool)

(declare-datatypes ((Hashable!3969 0))(
  ( (HashableExt!3968 (__x!21809 Int)) )
))
(declare-datatypes ((tuple2!33254 0))(
  ( (tuple2!33255 (_1!19710 Context!4898) (_2!19710 C!16620)) )
))
(declare-datatypes ((tuple2!33256 0))(
  ( (tuple2!33257 (_1!19711 tuple2!33254) (_2!19711 (InoxSet Context!4898))) )
))
(declare-datatypes ((List!32693 0))(
  ( (Nil!32593) (Cons!32593 (h!38013 tuple2!33256) (t!228863 List!32693)) )
))
(declare-datatypes ((array!14405 0))(
  ( (array!14406 (arr!6418 (Array (_ BitVec 32) List!32693)) (size!25456 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8106 0))(
  ( (LongMapFixedSize!8107 (defaultEntry!4438 Int) (mask!9905 (_ BitVec 32)) (extraKeys!4302 (_ BitVec 32)) (zeroValue!4312 List!32693) (minValue!4312 List!32693) (_size!8149 (_ BitVec 32)) (_keys!4353 array!14401) (_values!4334 array!14405) (_vacant!4114 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16021 0))(
  ( (Cell!16022 (v!34196 LongMapFixedSize!8106)) )
))
(declare-datatypes ((MutLongMap!4053 0))(
  ( (LongMap!4053 (underlying!8309 Cell!16021)) (MutLongMapExt!4052 (__x!21810 Int)) )
))
(declare-datatypes ((Cell!16023 0))(
  ( (Cell!16024 (v!34197 MutLongMap!4053)) )
))
(declare-datatypes ((MutableMap!3959 0))(
  ( (MutableMapExt!3958 (__x!21811 Int)) (HashMap!3959 (underlying!8310 Cell!16023) (hashF!6001 Hashable!3969) (_size!8150 (_ BitVec 32)) (defaultValue!4130 Int)) )
))
(declare-datatypes ((CacheUp!2660 0))(
  ( (CacheUp!2661 (cache!4102 MutableMap!3959)) )
))
(declare-fun cacheUp!890 () CacheUp!2660)

(declare-fun mapDefault!18415 () List!32693)

(assert (=> b!2802702 (= condMapEmpty!18415 (= (arr!6418 (_values!4334 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32693)) mapDefault!18415)))))

(declare-fun b!2802704 () Bool)

(declare-fun e!1771233 () Bool)

(declare-fun e!1771231 () Bool)

(assert (=> b!2802704 (= e!1771233 e!1771231)))

(declare-fun res!1167831 () Bool)

(assert (=> b!2802704 (=> res!1167831 e!1771231)))

(declare-fun testedPSize!143 () Int)

(declare-datatypes ((List!32694 0))(
  ( (Nil!32594) (Cons!32594 (h!38014 C!16620) (t!228864 List!32694)) )
))
(declare-fun lt!1002113 () List!32694)

(declare-fun size!25457 (List!32694) Int)

(assert (=> b!2802704 (= res!1167831 (not (= (+ 1 testedPSize!143) (size!25457 lt!1002113))))))

(declare-fun lt!1002125 () C!16620)

(declare-fun z!3684 () (InoxSet Context!4898))

(declare-datatypes ((tuple3!5226 0))(
  ( (tuple3!5227 (_1!19712 (InoxSet Context!4898)) (_2!19712 CacheUp!2660) (_3!3083 CacheDown!2788)) )
))
(declare-fun lt!1002120 () tuple3!5226)

(declare-fun derivationStepZipperMem!120 ((InoxSet Context!4898) C!16620 CacheUp!2660 CacheDown!2788) tuple3!5226)

(assert (=> b!2802704 (= lt!1002120 (derivationStepZipperMem!120 z!3684 lt!1002125 cacheUp!890 cacheDown!1009))))

(declare-fun b!2802705 () Bool)

(declare-fun e!1771245 () Bool)

(declare-fun e!1771241 () Bool)

(assert (=> b!2802705 (= e!1771245 e!1771241)))

(declare-fun b!2802706 () Bool)

(declare-fun e!1771235 () Bool)

(declare-datatypes ((IArray!20181 0))(
  ( (IArray!20182 (innerList!10148 List!32694)) )
))
(declare-datatypes ((Conc!10088 0))(
  ( (Node!10088 (left!24605 Conc!10088) (right!24935 Conc!10088) (csize!20406 Int) (cheight!10299 Int)) (Leaf!15372 (xs!13200 IArray!20181) (csize!20407 Int)) (Empty!10088) )
))
(declare-datatypes ((BalanceConc!19790 0))(
  ( (BalanceConc!19791 (c!454371 Conc!10088)) )
))
(declare-fun totalInput!758 () BalanceConc!19790)

(declare-fun tp!893463 () Bool)

(declare-fun inv!44264 (Conc!10088) Bool)

(assert (=> b!2802706 (= e!1771235 (and (inv!44264 (c!454371 totalInput!758)) tp!893463))))

(declare-fun b!2802707 () Bool)

(declare-fun e!1771243 () Bool)

(assert (=> b!2802707 (= e!1771243 e!1771233)))

(declare-fun res!1167827 () Bool)

(assert (=> b!2802707 (=> res!1167827 e!1771233)))

(declare-fun nullableZipper!666 ((InoxSet Context!4898)) Bool)

(assert (=> b!2802707 (= res!1167827 (nullableZipper!666 z!3684))))

(declare-fun lt!1002118 () List!32694)

(declare-fun lt!1002112 () List!32694)

(declare-fun ++!8035 (List!32694 List!32694) List!32694)

(assert (=> b!2802707 (= (++!8035 lt!1002113 lt!1002118) lt!1002112)))

(declare-fun testedP!183 () List!32694)

(assert (=> b!2802707 (= lt!1002113 (++!8035 testedP!183 (Cons!32594 lt!1002125 Nil!32594)))))

(declare-datatypes ((Unit!46701 0))(
  ( (Unit!46702) )
))
(declare-fun lt!1002129 () Unit!46701)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!902 (List!32694 C!16620 List!32694 List!32694) Unit!46701)

(assert (=> b!2802707 (= lt!1002129 (lemmaMoveElementToOtherListKeepsConcatEq!902 testedP!183 lt!1002125 lt!1002118 lt!1002112))))

(declare-fun testedSuffix!143 () List!32694)

(declare-fun tail!4438 (List!32694) List!32694)

(assert (=> b!2802707 (= lt!1002118 (tail!4438 testedSuffix!143))))

(declare-fun lt!1002127 () List!32694)

(declare-fun isPrefix!2646 (List!32694 List!32694) Bool)

(declare-fun head!6211 (List!32694) C!16620)

(assert (=> b!2802707 (isPrefix!2646 (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594)) lt!1002112)))

(declare-fun lt!1002123 () Unit!46701)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!494 (List!32694 List!32694) Unit!46701)

(assert (=> b!2802707 (= lt!1002123 (lemmaAddHeadSuffixToPrefixStillPrefix!494 testedP!183 lt!1002112))))

(declare-fun b!2802708 () Bool)

(declare-fun e!1771221 () Bool)

(declare-fun tp_is_empty!14275 () Bool)

(declare-fun tp!893470 () Bool)

(assert (=> b!2802708 (= e!1771221 (and tp_is_empty!14275 tp!893470))))

(declare-fun mapIsEmpty!18415 () Bool)

(assert (=> mapIsEmpty!18415 mapRes!18416))

(declare-fun b!2802709 () Bool)

(declare-fun valid!3173 (CacheDown!2788) Bool)

(assert (=> b!2802709 (= e!1771231 (valid!3173 (_3!3083 lt!1002120)))))

(declare-fun b!2802710 () Bool)

(declare-fun e!1771228 () Bool)

(declare-fun e!1771244 () Bool)

(assert (=> b!2802710 (= e!1771228 e!1771244)))

(declare-fun res!1167828 () Bool)

(assert (=> b!2802710 (=> res!1167828 e!1771244)))

(declare-fun lt!1002131 () List!32694)

(declare-fun lt!1002122 () List!32694)

(assert (=> b!2802710 (= res!1167828 (not (= (++!8035 lt!1002122 lt!1002131) lt!1002112)))))

(declare-datatypes ((tuple2!33258 0))(
  ( (tuple2!33259 (_1!19713 BalanceConc!19790) (_2!19713 BalanceConc!19790)) )
))
(declare-fun lt!1002132 () tuple2!33258)

(declare-fun list!12228 (BalanceConc!19790) List!32694)

(assert (=> b!2802710 (= lt!1002131 (list!12228 (_2!19713 lt!1002132)))))

(assert (=> b!2802710 (= lt!1002122 (list!12228 (_1!19713 lt!1002132)))))

(declare-fun splitAt!207 (BalanceConc!19790 Int) tuple2!33258)

(assert (=> b!2802710 (= lt!1002132 (splitAt!207 totalInput!758 testedPSize!143))))

(declare-fun mapIsEmpty!18416 () Bool)

(assert (=> mapIsEmpty!18416 mapRes!18415))

(declare-fun b!2802711 () Bool)

(declare-fun e!1771247 () Bool)

(declare-fun e!1771225 () Bool)

(assert (=> b!2802711 (= e!1771247 e!1771225)))

(declare-fun res!1167829 () Bool)

(assert (=> b!2802711 (=> (not res!1167829) (not e!1771225))))

(declare-fun lt!1002119 () Int)

(assert (=> b!2802711 (= res!1167829 (= testedPSize!143 lt!1002119))))

(assert (=> b!2802711 (= lt!1002119 (size!25457 testedP!183))))

(declare-fun tp!893461 () Bool)

(declare-fun tp!893458 () Bool)

(declare-fun e!1771249 () Bool)

(declare-fun array_inv!4595 (array!14401) Bool)

(declare-fun array_inv!4596 (array!14403) Bool)

(assert (=> b!2802712 (= e!1771249 (and tp!893465 tp!893458 tp!893461 (array_inv!4595 (_keys!4352 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) (array_inv!4596 (_values!4333 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) e!1771238))))

(declare-fun b!2802713 () Bool)

(declare-fun e!1771227 () Bool)

(assert (=> b!2802713 (= e!1771244 e!1771227)))

(declare-fun res!1167824 () Bool)

(assert (=> b!2802713 (=> res!1167824 e!1771227)))

(assert (=> b!2802713 (= res!1167824 (not (= lt!1002125 (head!6211 testedSuffix!143))))))

(declare-fun apply!7626 (BalanceConc!19790 Int) C!16620)

(assert (=> b!2802713 (= lt!1002125 (apply!7626 totalInput!758 testedPSize!143))))

(declare-fun drop!1758 (List!32694 Int) List!32694)

(declare-fun apply!7627 (List!32694 Int) C!16620)

(assert (=> b!2802713 (= (head!6211 (drop!1758 lt!1002112 testedPSize!143)) (apply!7627 lt!1002112 testedPSize!143))))

(declare-fun lt!1002115 () Unit!46701)

(declare-fun lemmaDropApply!962 (List!32694 Int) Unit!46701)

(assert (=> b!2802713 (= lt!1002115 (lemmaDropApply!962 lt!1002112 testedPSize!143))))

(assert (=> b!2802713 (not (or (not (= lt!1002122 testedP!183)) (not (= lt!1002131 testedSuffix!143))))))

(declare-fun lt!1002133 () Unit!46701)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!392 (List!32694 List!32694 List!32694 List!32694) Unit!46701)

(assert (=> b!2802713 (= lt!1002133 (lemmaConcatSameAndSameSizesThenSameLists!392 lt!1002122 lt!1002131 testedP!183 testedSuffix!143))))

(declare-fun tp!893468 () Bool)

(declare-fun setNonEmpty!24627 () Bool)

(declare-fun setElem!24627 () Context!4898)

(declare-fun e!1771242 () Bool)

(declare-fun inv!44265 (Context!4898) Bool)

(assert (=> setNonEmpty!24627 (= setRes!24627 (and tp!893468 (inv!44265 setElem!24627) e!1771242))))

(declare-fun setRest!24627 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24627 (= z!3684 ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24627 true) setRest!24627))))

(declare-fun mapNonEmpty!18415 () Bool)

(declare-fun tp!893471 () Bool)

(declare-fun tp!893454 () Bool)

(assert (=> mapNonEmpty!18415 (= mapRes!18416 (and tp!893471 tp!893454))))

(declare-fun mapRest!18415 () (Array (_ BitVec 32) List!32692))

(declare-fun mapKey!18416 () (_ BitVec 32))

(declare-fun mapValue!18416 () List!32692)

(assert (=> mapNonEmpty!18415 (= (arr!6417 (_values!4333 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) (store mapRest!18415 mapKey!18416 mapValue!18416))))

(declare-fun res!1167826 () Bool)

(assert (=> start!271056 (=> (not res!1167826) (not e!1771247))))

(declare-fun lt!1002128 () List!32694)

(assert (=> start!271056 (= res!1167826 (= lt!1002128 lt!1002112))))

(assert (=> start!271056 (= lt!1002112 (list!12228 totalInput!758))))

(assert (=> start!271056 (= lt!1002128 (++!8035 testedP!183 testedSuffix!143))))

(assert (=> start!271056 e!1771247))

(declare-fun inv!44266 (BalanceConc!19790) Bool)

(assert (=> start!271056 (and (inv!44266 totalInput!758) e!1771235)))

(declare-fun condSetEmpty!24627 () Bool)

(assert (=> start!271056 (= condSetEmpty!24627 (= z!3684 ((as const (Array Context!4898 Bool)) false)))))

(assert (=> start!271056 setRes!24627))

(assert (=> start!271056 true))

(assert (=> start!271056 e!1771221))

(declare-fun e!1771223 () Bool)

(assert (=> start!271056 e!1771223))

(declare-fun e!1771226 () Bool)

(declare-fun inv!44267 (CacheDown!2788) Bool)

(assert (=> start!271056 (and (inv!44267 cacheDown!1009) e!1771226)))

(declare-fun inv!44268 (CacheUp!2660) Bool)

(assert (=> start!271056 (and (inv!44268 cacheUp!890) e!1771245)))

(declare-fun b!2802703 () Bool)

(declare-fun e!1771220 () Bool)

(assert (=> b!2802703 (= e!1771226 e!1771220)))

(declare-fun b!2802714 () Bool)

(declare-fun e!1771229 () Unit!46701)

(declare-fun Unit!46703 () Unit!46701)

(assert (=> b!2802714 (= e!1771229 Unit!46703)))

(declare-fun lt!1002116 () Unit!46701)

(declare-fun lemmaIsPrefixRefl!1725 (List!32694 List!32694) Unit!46701)

(assert (=> b!2802714 (= lt!1002116 (lemmaIsPrefixRefl!1725 lt!1002112 lt!1002112))))

(assert (=> b!2802714 (isPrefix!2646 lt!1002112 lt!1002112)))

(declare-fun lt!1002111 () Unit!46701)

(declare-fun lemmaIsPrefixSameLengthThenSameList!501 (List!32694 List!32694 List!32694) Unit!46701)

(assert (=> b!2802714 (= lt!1002111 (lemmaIsPrefixSameLengthThenSameList!501 lt!1002112 testedP!183 lt!1002112))))

(assert (=> b!2802714 false))

(declare-fun b!2802715 () Bool)

(declare-fun tp!893457 () Bool)

(assert (=> b!2802715 (= e!1771223 (and tp_is_empty!14275 tp!893457))))

(declare-fun b!2802716 () Bool)

(declare-fun e!1771246 () Bool)

(assert (=> b!2802716 (= e!1771246 e!1771249)))

(declare-fun b!2802717 () Bool)

(declare-fun e!1771224 () Bool)

(assert (=> b!2802717 (= e!1771224 e!1771246)))

(declare-fun b!2802718 () Bool)

(declare-fun e!1771232 () Bool)

(assert (=> b!2802718 (= e!1771232 e!1771239)))

(declare-fun b!2802719 () Bool)

(declare-fun e!1771248 () Bool)

(assert (=> b!2802719 (= e!1771248 e!1771228)))

(declare-fun res!1167836 () Bool)

(assert (=> b!2802719 (=> res!1167836 e!1771228)))

(declare-fun lostCauseZipper!515 ((InoxSet Context!4898)) Bool)

(assert (=> b!2802719 (= res!1167836 (lostCauseZipper!515 z!3684))))

(assert (=> b!2802719 (and (= testedSuffix!143 lt!1002127) (= lt!1002127 testedSuffix!143))))

(declare-fun lt!1002114 () Unit!46701)

(declare-fun lemmaSamePrefixThenSameSuffix!1218 (List!32694 List!32694 List!32694 List!32694 List!32694) Unit!46701)

(assert (=> b!2802719 (= lt!1002114 (lemmaSamePrefixThenSameSuffix!1218 testedP!183 testedSuffix!143 testedP!183 lt!1002127 lt!1002112))))

(declare-fun getSuffix!1320 (List!32694 List!32694) List!32694)

(assert (=> b!2802719 (= lt!1002127 (getSuffix!1320 lt!1002112 testedP!183))))

(declare-fun b!2802720 () Bool)

(declare-fun e!1771237 () Bool)

(assert (=> b!2802720 (= e!1771237 (not e!1771248))))

(declare-fun res!1167832 () Bool)

(assert (=> b!2802720 (=> res!1167832 e!1771248)))

(assert (=> b!2802720 (= res!1167832 (not (isPrefix!2646 testedP!183 lt!1002112)))))

(assert (=> b!2802720 (isPrefix!2646 testedP!183 lt!1002128)))

(declare-fun lt!1002134 () Unit!46701)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1751 (List!32694 List!32694) Unit!46701)

(assert (=> b!2802720 (= lt!1002134 (lemmaConcatTwoListThenFirstIsPrefix!1751 testedP!183 testedSuffix!143))))

(declare-fun b!2802721 () Bool)

(declare-fun res!1167838 () Bool)

(assert (=> b!2802721 (=> res!1167838 e!1771244)))

(declare-fun size!25458 (BalanceConc!19790) Int)

(assert (=> b!2802721 (= res!1167838 (not (= (size!25458 (_1!19713 lt!1002132)) testedPSize!143)))))

(declare-fun b!2802722 () Bool)

(declare-fun Unit!46704 () Unit!46701)

(assert (=> b!2802722 (= e!1771229 Unit!46704)))

(declare-fun b!2802723 () Bool)

(declare-fun res!1167837 () Bool)

(assert (=> b!2802723 (=> (not res!1167837) (not e!1771237))))

(assert (=> b!2802723 (= res!1167837 (valid!3173 cacheDown!1009))))

(declare-fun b!2802724 () Bool)

(declare-fun e!1771222 () Bool)

(declare-fun lt!1002121 () MutLongMap!4052)

(get-info :version)

(assert (=> b!2802724 (= e!1771222 (and e!1771224 ((_ is LongMap!4052) lt!1002121)))))

(assert (=> b!2802724 (= lt!1002121 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))

(assert (=> b!2802725 (= e!1771220 (and e!1771222 tp!893464))))

(declare-fun b!2802726 () Bool)

(assert (=> b!2802726 (= e!1771225 e!1771237)))

(declare-fun res!1167834 () Bool)

(assert (=> b!2802726 (=> (not res!1167834) (not e!1771237))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!1002126 () Int)

(assert (=> b!2802726 (= res!1167834 (= totalInputSize!205 lt!1002126))))

(assert (=> b!2802726 (= lt!1002126 (size!25458 totalInput!758))))

(declare-fun b!2802727 () Bool)

(declare-fun res!1167830 () Bool)

(assert (=> b!2802727 (=> res!1167830 e!1771228)))

(assert (=> b!2802727 (= res!1167830 (= testedPSize!143 totalInputSize!205))))

(declare-fun mapNonEmpty!18416 () Bool)

(declare-fun tp!893472 () Bool)

(declare-fun tp!893456 () Bool)

(assert (=> mapNonEmpty!18416 (= mapRes!18415 (and tp!893472 tp!893456))))

(declare-fun mapKey!18415 () (_ BitVec 32))

(declare-fun mapValue!18415 () List!32693)

(declare-fun mapRest!18416 () (Array (_ BitVec 32) List!32693))

(assert (=> mapNonEmpty!18416 (= (arr!6418 (_values!4334 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) (store mapRest!18416 mapKey!18415 mapValue!18415))))

(declare-fun tp!893466 () Bool)

(declare-fun tp!893469 () Bool)

(declare-fun array_inv!4597 (array!14405) Bool)

(assert (=> b!2802728 (= e!1771250 (and tp!893455 tp!893469 tp!893466 (array_inv!4595 (_keys!4353 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) (array_inv!4597 (_values!4334 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) e!1771234))))

(declare-fun b!2802729 () Bool)

(assert (=> b!2802729 (= e!1771227 e!1771243)))

(declare-fun res!1167825 () Bool)

(assert (=> b!2802729 (=> res!1167825 e!1771243)))

(assert (=> b!2802729 (= res!1167825 (>= lt!1002119 lt!1002126))))

(declare-fun lt!1002117 () Unit!46701)

(assert (=> b!2802729 (= lt!1002117 e!1771229)))

(declare-fun c!454369 () Bool)

(assert (=> b!2802729 (= c!454369 (= lt!1002119 lt!1002126))))

(assert (=> b!2802729 (<= lt!1002119 (size!25457 lt!1002112))))

(declare-fun lt!1002130 () Unit!46701)

(declare-fun lemmaIsPrefixThenSmallerEqSize!302 (List!32694 List!32694) Unit!46701)

(assert (=> b!2802729 (= lt!1002130 (lemmaIsPrefixThenSmallerEqSize!302 testedP!183 lt!1002112))))

(declare-fun b!2802730 () Bool)

(declare-fun res!1167835 () Bool)

(assert (=> b!2802730 (=> (not res!1167835) (not e!1771237))))

(declare-fun valid!3174 (CacheUp!2660) Bool)

(assert (=> b!2802730 (= res!1167835 (valid!3174 cacheUp!890))))

(declare-fun b!2802731 () Bool)

(declare-fun res!1167833 () Bool)

(assert (=> b!2802731 (=> res!1167833 e!1771231)))

(assert (=> b!2802731 (= res!1167833 (not (valid!3174 (_2!19712 lt!1002120))))))

(declare-fun b!2802732 () Bool)

(declare-fun e!1771236 () Bool)

(declare-fun lt!1002124 () MutLongMap!4053)

(assert (=> b!2802732 (= e!1771236 (and e!1771232 ((_ is LongMap!4053) lt!1002124)))))

(assert (=> b!2802732 (= lt!1002124 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))

(assert (=> b!2802733 (= e!1771241 (and e!1771236 tp!893467))))

(declare-fun b!2802734 () Bool)

(declare-fun tp!893462 () Bool)

(assert (=> b!2802734 (= e!1771242 tp!893462)))

(assert (= (and start!271056 res!1167826) b!2802711))

(assert (= (and b!2802711 res!1167829) b!2802726))

(assert (= (and b!2802726 res!1167834) b!2802730))

(assert (= (and b!2802730 res!1167835) b!2802723))

(assert (= (and b!2802723 res!1167837) b!2802720))

(assert (= (and b!2802720 (not res!1167832)) b!2802719))

(assert (= (and b!2802719 (not res!1167836)) b!2802727))

(assert (= (and b!2802727 (not res!1167830)) b!2802710))

(assert (= (and b!2802710 (not res!1167828)) b!2802721))

(assert (= (and b!2802721 (not res!1167838)) b!2802713))

(assert (= (and b!2802713 (not res!1167824)) b!2802729))

(assert (= (and b!2802729 c!454369) b!2802714))

(assert (= (and b!2802729 (not c!454369)) b!2802722))

(assert (= (and b!2802729 (not res!1167825)) b!2802707))

(assert (= (and b!2802707 (not res!1167827)) b!2802704))

(assert (= (and b!2802704 (not res!1167831)) b!2802731))

(assert (= (and b!2802731 (not res!1167833)) b!2802709))

(assert (= start!271056 b!2802706))

(assert (= (and start!271056 condSetEmpty!24627) setIsEmpty!24627))

(assert (= (and start!271056 (not condSetEmpty!24627)) setNonEmpty!24627))

(assert (= setNonEmpty!24627 b!2802734))

(assert (= (and start!271056 ((_ is Cons!32594) testedP!183)) b!2802708))

(assert (= (and start!271056 ((_ is Cons!32594) testedSuffix!143)) b!2802715))

(assert (= (and b!2802700 condMapEmpty!18416) mapIsEmpty!18415))

(assert (= (and b!2802700 (not condMapEmpty!18416)) mapNonEmpty!18415))

(assert (= b!2802712 b!2802700))

(assert (= b!2802716 b!2802712))

(assert (= b!2802717 b!2802716))

(assert (= (and b!2802724 ((_ is LongMap!4052) (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))) b!2802717))

(assert (= b!2802725 b!2802724))

(assert (= (and b!2802703 ((_ is HashMap!3958) (cache!4101 cacheDown!1009))) b!2802725))

(assert (= start!271056 b!2802703))

(assert (= (and b!2802702 condMapEmpty!18415) mapIsEmpty!18416))

(assert (= (and b!2802702 (not condMapEmpty!18415)) mapNonEmpty!18416))

(assert (= b!2802728 b!2802702))

(assert (= b!2802701 b!2802728))

(assert (= b!2802718 b!2802701))

(assert (= (and b!2802732 ((_ is LongMap!4053) (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))) b!2802718))

(assert (= b!2802733 b!2802732))

(assert (= (and b!2802705 ((_ is HashMap!3959) (cache!4102 cacheUp!890))) b!2802733))

(assert (= start!271056 b!2802705))

(declare-fun m!3232343 () Bool)

(assert (=> mapNonEmpty!18415 m!3232343))

(declare-fun m!3232345 () Bool)

(assert (=> b!2802731 m!3232345))

(declare-fun m!3232347 () Bool)

(assert (=> mapNonEmpty!18416 m!3232347))

(declare-fun m!3232349 () Bool)

(assert (=> b!2802720 m!3232349))

(declare-fun m!3232351 () Bool)

(assert (=> b!2802720 m!3232351))

(declare-fun m!3232353 () Bool)

(assert (=> b!2802720 m!3232353))

(declare-fun m!3232355 () Bool)

(assert (=> b!2802721 m!3232355))

(declare-fun m!3232357 () Bool)

(assert (=> b!2802719 m!3232357))

(declare-fun m!3232359 () Bool)

(assert (=> b!2802719 m!3232359))

(declare-fun m!3232361 () Bool)

(assert (=> b!2802719 m!3232361))

(declare-fun m!3232363 () Bool)

(assert (=> b!2802713 m!3232363))

(declare-fun m!3232365 () Bool)

(assert (=> b!2802713 m!3232365))

(declare-fun m!3232367 () Bool)

(assert (=> b!2802713 m!3232367))

(declare-fun m!3232369 () Bool)

(assert (=> b!2802713 m!3232369))

(declare-fun m!3232371 () Bool)

(assert (=> b!2802713 m!3232371))

(declare-fun m!3232373 () Bool)

(assert (=> b!2802713 m!3232373))

(assert (=> b!2802713 m!3232369))

(declare-fun m!3232375 () Bool)

(assert (=> b!2802713 m!3232375))

(declare-fun m!3232377 () Bool)

(assert (=> b!2802706 m!3232377))

(declare-fun m!3232379 () Bool)

(assert (=> b!2802704 m!3232379))

(declare-fun m!3232381 () Bool)

(assert (=> b!2802704 m!3232381))

(declare-fun m!3232383 () Bool)

(assert (=> b!2802707 m!3232383))

(declare-fun m!3232385 () Bool)

(assert (=> b!2802707 m!3232385))

(declare-fun m!3232387 () Bool)

(assert (=> b!2802707 m!3232387))

(declare-fun m!3232389 () Bool)

(assert (=> b!2802707 m!3232389))

(declare-fun m!3232391 () Bool)

(assert (=> b!2802707 m!3232391))

(assert (=> b!2802707 m!3232383))

(declare-fun m!3232393 () Bool)

(assert (=> b!2802707 m!3232393))

(declare-fun m!3232395 () Bool)

(assert (=> b!2802707 m!3232395))

(declare-fun m!3232397 () Bool)

(assert (=> b!2802707 m!3232397))

(declare-fun m!3232399 () Bool)

(assert (=> b!2802707 m!3232399))

(declare-fun m!3232401 () Bool)

(assert (=> b!2802723 m!3232401))

(declare-fun m!3232403 () Bool)

(assert (=> b!2802726 m!3232403))

(declare-fun m!3232405 () Bool)

(assert (=> b!2802714 m!3232405))

(declare-fun m!3232407 () Bool)

(assert (=> b!2802714 m!3232407))

(declare-fun m!3232409 () Bool)

(assert (=> b!2802714 m!3232409))

(declare-fun m!3232411 () Bool)

(assert (=> b!2802730 m!3232411))

(declare-fun m!3232413 () Bool)

(assert (=> setNonEmpty!24627 m!3232413))

(declare-fun m!3232415 () Bool)

(assert (=> b!2802712 m!3232415))

(declare-fun m!3232417 () Bool)

(assert (=> b!2802712 m!3232417))

(declare-fun m!3232419 () Bool)

(assert (=> b!2802710 m!3232419))

(declare-fun m!3232421 () Bool)

(assert (=> b!2802710 m!3232421))

(declare-fun m!3232423 () Bool)

(assert (=> b!2802710 m!3232423))

(declare-fun m!3232425 () Bool)

(assert (=> b!2802710 m!3232425))

(declare-fun m!3232427 () Bool)

(assert (=> b!2802729 m!3232427))

(declare-fun m!3232429 () Bool)

(assert (=> b!2802729 m!3232429))

(declare-fun m!3232431 () Bool)

(assert (=> b!2802711 m!3232431))

(declare-fun m!3232433 () Bool)

(assert (=> b!2802709 m!3232433))

(declare-fun m!3232435 () Bool)

(assert (=> start!271056 m!3232435))

(declare-fun m!3232437 () Bool)

(assert (=> start!271056 m!3232437))

(declare-fun m!3232439 () Bool)

(assert (=> start!271056 m!3232439))

(declare-fun m!3232441 () Bool)

(assert (=> start!271056 m!3232441))

(declare-fun m!3232443 () Bool)

(assert (=> start!271056 m!3232443))

(declare-fun m!3232445 () Bool)

(assert (=> b!2802728 m!3232445))

(declare-fun m!3232447 () Bool)

(assert (=> b!2802728 m!3232447))

(check-sat (not b_next!80197) (not b!2802729) (not start!271056) (not mapNonEmpty!18415) b_and!204233 (not b!2802719) (not b!2802700) (not b!2802723) (not b!2802706) (not b!2802702) (not b!2802731) (not b!2802720) b_and!204231 (not b!2802728) (not b!2802711) tp_is_empty!14275 (not b!2802704) (not b!2802734) (not b!2802710) (not setNonEmpty!24627) (not b!2802713) (not b!2802730) (not mapNonEmpty!18416) (not b_next!80203) (not b!2802712) (not b!2802709) (not b!2802707) (not b!2802714) b_and!204235 (not b!2802715) (not b!2802708) (not b_next!80201) (not b!2802726) b_and!204237 (not b!2802721) (not b_next!80199))
(check-sat (not b_next!80197) b_and!204231 b_and!204233 (not b_next!80203) b_and!204235 (not b_next!80201) b_and!204237 (not b_next!80199))
(get-model)

(declare-fun d!814064 () Bool)

(declare-fun validCacheMapDown!433 (MutableMap!3958) Bool)

(assert (=> d!814064 (= (valid!3173 (_3!3083 lt!1002120)) (validCacheMapDown!433 (cache!4101 (_3!3083 lt!1002120))))))

(declare-fun bs!516027 () Bool)

(assert (= bs!516027 d!814064))

(declare-fun m!3232449 () Bool)

(assert (=> bs!516027 m!3232449))

(assert (=> b!2802709 d!814064))

(declare-fun d!814066 () Bool)

(declare-fun e!1771256 () Bool)

(assert (=> d!814066 e!1771256))

(declare-fun res!1167844 () Bool)

(assert (=> d!814066 (=> (not res!1167844) (not e!1771256))))

(declare-fun lt!1002137 () List!32694)

(declare-fun content!4548 (List!32694) (InoxSet C!16620))

(assert (=> d!814066 (= res!1167844 (= (content!4548 lt!1002137) ((_ map or) (content!4548 lt!1002122) (content!4548 lt!1002131))))))

(declare-fun e!1771255 () List!32694)

(assert (=> d!814066 (= lt!1002137 e!1771255)))

(declare-fun c!454374 () Bool)

(assert (=> d!814066 (= c!454374 ((_ is Nil!32594) lt!1002122))))

(assert (=> d!814066 (= (++!8035 lt!1002122 lt!1002131) lt!1002137)))

(declare-fun b!2802745 () Bool)

(declare-fun res!1167843 () Bool)

(assert (=> b!2802745 (=> (not res!1167843) (not e!1771256))))

(assert (=> b!2802745 (= res!1167843 (= (size!25457 lt!1002137) (+ (size!25457 lt!1002122) (size!25457 lt!1002131))))))

(declare-fun b!2802746 () Bool)

(assert (=> b!2802746 (= e!1771256 (or (not (= lt!1002131 Nil!32594)) (= lt!1002137 lt!1002122)))))

(declare-fun b!2802743 () Bool)

(assert (=> b!2802743 (= e!1771255 lt!1002131)))

(declare-fun b!2802744 () Bool)

(assert (=> b!2802744 (= e!1771255 (Cons!32594 (h!38014 lt!1002122) (++!8035 (t!228864 lt!1002122) lt!1002131)))))

(assert (= (and d!814066 c!454374) b!2802743))

(assert (= (and d!814066 (not c!454374)) b!2802744))

(assert (= (and d!814066 res!1167844) b!2802745))

(assert (= (and b!2802745 res!1167843) b!2802746))

(declare-fun m!3232451 () Bool)

(assert (=> d!814066 m!3232451))

(declare-fun m!3232453 () Bool)

(assert (=> d!814066 m!3232453))

(declare-fun m!3232455 () Bool)

(assert (=> d!814066 m!3232455))

(declare-fun m!3232457 () Bool)

(assert (=> b!2802745 m!3232457))

(declare-fun m!3232459 () Bool)

(assert (=> b!2802745 m!3232459))

(declare-fun m!3232461 () Bool)

(assert (=> b!2802745 m!3232461))

(declare-fun m!3232463 () Bool)

(assert (=> b!2802744 m!3232463))

(assert (=> b!2802710 d!814066))

(declare-fun d!814068 () Bool)

(declare-fun list!12229 (Conc!10088) List!32694)

(assert (=> d!814068 (= (list!12228 (_2!19713 lt!1002132)) (list!12229 (c!454371 (_2!19713 lt!1002132))))))

(declare-fun bs!516028 () Bool)

(assert (= bs!516028 d!814068))

(declare-fun m!3232465 () Bool)

(assert (=> bs!516028 m!3232465))

(assert (=> b!2802710 d!814068))

(declare-fun d!814070 () Bool)

(assert (=> d!814070 (= (list!12228 (_1!19713 lt!1002132)) (list!12229 (c!454371 (_1!19713 lt!1002132))))))

(declare-fun bs!516029 () Bool)

(assert (= bs!516029 d!814070))

(declare-fun m!3232467 () Bool)

(assert (=> bs!516029 m!3232467))

(assert (=> b!2802710 d!814070))

(declare-fun d!814072 () Bool)

(declare-fun e!1771259 () Bool)

(assert (=> d!814072 e!1771259))

(declare-fun res!1167850 () Bool)

(assert (=> d!814072 (=> (not res!1167850) (not e!1771259))))

(declare-fun lt!1002142 () tuple2!33258)

(declare-fun isBalanced!3078 (Conc!10088) Bool)

(assert (=> d!814072 (= res!1167850 (isBalanced!3078 (c!454371 (_1!19713 lt!1002142))))))

(declare-datatypes ((tuple2!33260 0))(
  ( (tuple2!33261 (_1!19714 Conc!10088) (_2!19714 Conc!10088)) )
))
(declare-fun lt!1002143 () tuple2!33260)

(assert (=> d!814072 (= lt!1002142 (tuple2!33259 (BalanceConc!19791 (_1!19714 lt!1002143)) (BalanceConc!19791 (_2!19714 lt!1002143))))))

(declare-fun splitAt!208 (Conc!10088 Int) tuple2!33260)

(assert (=> d!814072 (= lt!1002143 (splitAt!208 (c!454371 totalInput!758) testedPSize!143))))

(assert (=> d!814072 (isBalanced!3078 (c!454371 totalInput!758))))

(assert (=> d!814072 (= (splitAt!207 totalInput!758 testedPSize!143) lt!1002142)))

(declare-fun b!2802751 () Bool)

(declare-fun res!1167849 () Bool)

(assert (=> b!2802751 (=> (not res!1167849) (not e!1771259))))

(assert (=> b!2802751 (= res!1167849 (isBalanced!3078 (c!454371 (_2!19713 lt!1002142))))))

(declare-fun b!2802752 () Bool)

(declare-datatypes ((tuple2!33262 0))(
  ( (tuple2!33263 (_1!19715 List!32694) (_2!19715 List!32694)) )
))
(declare-fun splitAtIndex!78 (List!32694 Int) tuple2!33262)

(assert (=> b!2802752 (= e!1771259 (= (tuple2!33263 (list!12228 (_1!19713 lt!1002142)) (list!12228 (_2!19713 lt!1002142))) (splitAtIndex!78 (list!12228 totalInput!758) testedPSize!143)))))

(assert (= (and d!814072 res!1167850) b!2802751))

(assert (= (and b!2802751 res!1167849) b!2802752))

(declare-fun m!3232469 () Bool)

(assert (=> d!814072 m!3232469))

(declare-fun m!3232471 () Bool)

(assert (=> d!814072 m!3232471))

(declare-fun m!3232473 () Bool)

(assert (=> d!814072 m!3232473))

(declare-fun m!3232475 () Bool)

(assert (=> b!2802751 m!3232475))

(declare-fun m!3232477 () Bool)

(assert (=> b!2802752 m!3232477))

(declare-fun m!3232479 () Bool)

(assert (=> b!2802752 m!3232479))

(assert (=> b!2802752 m!3232435))

(assert (=> b!2802752 m!3232435))

(declare-fun m!3232481 () Bool)

(assert (=> b!2802752 m!3232481))

(assert (=> b!2802710 d!814072))

(declare-fun d!814074 () Bool)

(assert (=> d!814074 (= (array_inv!4595 (_keys!4353 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) (bvsge (size!25454 (_keys!4353 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802728 d!814074))

(declare-fun d!814076 () Bool)

(assert (=> d!814076 (= (array_inv!4597 (_values!4334 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) (bvsge (size!25456 (_values!4334 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802728 d!814076))

(declare-fun bs!516030 () Bool)

(declare-fun b!2802757 () Bool)

(declare-fun d!814078 () Bool)

(assert (= bs!516030 (and b!2802757 d!814078)))

(declare-fun lambda!102981 () Int)

(declare-fun lambda!102980 () Int)

(assert (=> bs!516030 (not (= lambda!102981 lambda!102980))))

(declare-fun bs!516031 () Bool)

(declare-fun b!2802758 () Bool)

(assert (= bs!516031 (and b!2802758 d!814078)))

(declare-fun lambda!102982 () Int)

(assert (=> bs!516031 (not (= lambda!102982 lambda!102980))))

(declare-fun bs!516032 () Bool)

(assert (= bs!516032 (and b!2802758 b!2802757)))

(assert (=> bs!516032 (= lambda!102982 lambda!102981)))

(declare-fun e!1771266 () Unit!46701)

(declare-fun Unit!46705 () Unit!46701)

(assert (=> b!2802758 (= e!1771266 Unit!46705)))

(declare-datatypes ((List!32695 0))(
  ( (Nil!32595) (Cons!32595 (h!38015 Context!4898) (t!228865 List!32695)) )
))
(declare-fun lt!1002166 () List!32695)

(declare-fun call!182898 () List!32695)

(assert (=> b!2802758 (= lt!1002166 call!182898)))

(declare-fun lt!1002161 () Unit!46701)

(declare-fun lemmaForallThenNotExists!113 (List!32695 Int) Unit!46701)

(assert (=> b!2802758 (= lt!1002161 (lemmaForallThenNotExists!113 lt!1002166 lambda!102980))))

(declare-fun call!182897 () Bool)

(assert (=> b!2802758 (not call!182897)))

(declare-fun lt!1002165 () Unit!46701)

(assert (=> b!2802758 (= lt!1002165 lt!1002161)))

(declare-fun Unit!46706 () Unit!46701)

(assert (=> b!2802757 (= e!1771266 Unit!46706)))

(declare-fun lt!1002162 () List!32695)

(assert (=> b!2802757 (= lt!1002162 call!182898)))

(declare-fun lt!1002167 () Unit!46701)

(declare-fun lemmaNotForallThenExists!113 (List!32695 Int) Unit!46701)

(assert (=> b!2802757 (= lt!1002167 (lemmaNotForallThenExists!113 lt!1002162 lambda!102980))))

(assert (=> b!2802757 call!182897))

(declare-fun lt!1002160 () Unit!46701)

(assert (=> b!2802757 (= lt!1002160 lt!1002167)))

(declare-fun lt!1002164 () Bool)

(declare-datatypes ((Option!6291 0))(
  ( (None!6290) (Some!6290 (v!34198 List!32694)) )
))
(declare-fun isEmpty!18142 (Option!6291) Bool)

(declare-fun getLanguageWitness!227 ((InoxSet Context!4898)) Option!6291)

(assert (=> d!814078 (= lt!1002164 (isEmpty!18142 (getLanguageWitness!227 z!3684)))))

(declare-fun forall!6717 ((InoxSet Context!4898) Int) Bool)

(assert (=> d!814078 (= lt!1002164 (forall!6717 z!3684 lambda!102980))))

(declare-fun lt!1002163 () Unit!46701)

(assert (=> d!814078 (= lt!1002163 e!1771266)))

(declare-fun c!454385 () Bool)

(assert (=> d!814078 (= c!454385 (not (forall!6717 z!3684 lambda!102980)))))

(assert (=> d!814078 (= (lostCauseZipper!515 z!3684) lt!1002164)))

(declare-fun bm!182892 () Bool)

(declare-fun toList!1890 ((InoxSet Context!4898)) List!32695)

(assert (=> bm!182892 (= call!182898 (toList!1890 z!3684))))

(declare-fun bm!182893 () Bool)

(declare-fun exists!1024 (List!32695 Int) Bool)

(assert (=> bm!182893 (= call!182897 (exists!1024 (ite c!454385 lt!1002162 lt!1002166) (ite c!454385 lambda!102981 lambda!102982)))))

(assert (= (and d!814078 c!454385) b!2802757))

(assert (= (and d!814078 (not c!454385)) b!2802758))

(assert (= (or b!2802757 b!2802758) bm!182892))

(assert (= (or b!2802757 b!2802758) bm!182893))

(declare-fun m!3232483 () Bool)

(assert (=> d!814078 m!3232483))

(assert (=> d!814078 m!3232483))

(declare-fun m!3232485 () Bool)

(assert (=> d!814078 m!3232485))

(declare-fun m!3232487 () Bool)

(assert (=> d!814078 m!3232487))

(assert (=> d!814078 m!3232487))

(declare-fun m!3232489 () Bool)

(assert (=> bm!182892 m!3232489))

(declare-fun m!3232491 () Bool)

(assert (=> b!2802757 m!3232491))

(declare-fun m!3232493 () Bool)

(assert (=> b!2802758 m!3232493))

(declare-fun m!3232495 () Bool)

(assert (=> bm!182893 m!3232495))

(assert (=> b!2802719 d!814078))

(declare-fun d!814080 () Bool)

(assert (=> d!814080 (= testedSuffix!143 lt!1002127)))

(declare-fun lt!1002170 () Unit!46701)

(declare-fun choose!16524 (List!32694 List!32694 List!32694 List!32694 List!32694) Unit!46701)

(assert (=> d!814080 (= lt!1002170 (choose!16524 testedP!183 testedSuffix!143 testedP!183 lt!1002127 lt!1002112))))

(assert (=> d!814080 (isPrefix!2646 testedP!183 lt!1002112)))

(assert (=> d!814080 (= (lemmaSamePrefixThenSameSuffix!1218 testedP!183 testedSuffix!143 testedP!183 lt!1002127 lt!1002112) lt!1002170)))

(declare-fun bs!516033 () Bool)

(assert (= bs!516033 d!814080))

(declare-fun m!3232497 () Bool)

(assert (=> bs!516033 m!3232497))

(assert (=> bs!516033 m!3232349))

(assert (=> b!2802719 d!814080))

(declare-fun d!814082 () Bool)

(declare-fun lt!1002173 () List!32694)

(assert (=> d!814082 (= (++!8035 testedP!183 lt!1002173) lt!1002112)))

(declare-fun e!1771269 () List!32694)

(assert (=> d!814082 (= lt!1002173 e!1771269)))

(declare-fun c!454388 () Bool)

(assert (=> d!814082 (= c!454388 ((_ is Cons!32594) testedP!183))))

(assert (=> d!814082 (>= (size!25457 lt!1002112) (size!25457 testedP!183))))

(assert (=> d!814082 (= (getSuffix!1320 lt!1002112 testedP!183) lt!1002173)))

(declare-fun b!2802763 () Bool)

(assert (=> b!2802763 (= e!1771269 (getSuffix!1320 (tail!4438 lt!1002112) (t!228864 testedP!183)))))

(declare-fun b!2802764 () Bool)

(assert (=> b!2802764 (= e!1771269 lt!1002112)))

(assert (= (and d!814082 c!454388) b!2802763))

(assert (= (and d!814082 (not c!454388)) b!2802764))

(declare-fun m!3232499 () Bool)

(assert (=> d!814082 m!3232499))

(assert (=> d!814082 m!3232427))

(assert (=> d!814082 m!3232431))

(declare-fun m!3232501 () Bool)

(assert (=> b!2802763 m!3232501))

(assert (=> b!2802763 m!3232501))

(declare-fun m!3232503 () Bool)

(assert (=> b!2802763 m!3232503))

(assert (=> b!2802719 d!814082))

(declare-fun d!814084 () Bool)

(declare-fun res!1167853 () Bool)

(declare-fun e!1771272 () Bool)

(assert (=> d!814084 (=> (not res!1167853) (not e!1771272))))

(assert (=> d!814084 (= res!1167853 ((_ is HashMap!3959) (cache!4102 cacheUp!890)))))

(assert (=> d!814084 (= (inv!44268 cacheUp!890) e!1771272)))

(declare-fun b!2802767 () Bool)

(declare-fun validCacheMapUp!402 (MutableMap!3959) Bool)

(assert (=> b!2802767 (= e!1771272 (validCacheMapUp!402 (cache!4102 cacheUp!890)))))

(assert (= (and d!814084 res!1167853) b!2802767))

(declare-fun m!3232505 () Bool)

(assert (=> b!2802767 m!3232505))

(assert (=> start!271056 d!814084))

(declare-fun d!814086 () Bool)

(assert (=> d!814086 (= (inv!44266 totalInput!758) (isBalanced!3078 (c!454371 totalInput!758)))))

(declare-fun bs!516034 () Bool)

(assert (= bs!516034 d!814086))

(assert (=> bs!516034 m!3232473))

(assert (=> start!271056 d!814086))

(declare-fun d!814088 () Bool)

(declare-fun res!1167856 () Bool)

(declare-fun e!1771275 () Bool)

(assert (=> d!814088 (=> (not res!1167856) (not e!1771275))))

(assert (=> d!814088 (= res!1167856 ((_ is HashMap!3958) (cache!4101 cacheDown!1009)))))

(assert (=> d!814088 (= (inv!44267 cacheDown!1009) e!1771275)))

(declare-fun b!2802770 () Bool)

(assert (=> b!2802770 (= e!1771275 (validCacheMapDown!433 (cache!4101 cacheDown!1009)))))

(assert (= (and d!814088 res!1167856) b!2802770))

(declare-fun m!3232507 () Bool)

(assert (=> b!2802770 m!3232507))

(assert (=> start!271056 d!814088))

(declare-fun d!814090 () Bool)

(assert (=> d!814090 (= (list!12228 totalInput!758) (list!12229 (c!454371 totalInput!758)))))

(declare-fun bs!516035 () Bool)

(assert (= bs!516035 d!814090))

(declare-fun m!3232509 () Bool)

(assert (=> bs!516035 m!3232509))

(assert (=> start!271056 d!814090))

(declare-fun d!814092 () Bool)

(declare-fun e!1771277 () Bool)

(assert (=> d!814092 e!1771277))

(declare-fun res!1167858 () Bool)

(assert (=> d!814092 (=> (not res!1167858) (not e!1771277))))

(declare-fun lt!1002174 () List!32694)

(assert (=> d!814092 (= res!1167858 (= (content!4548 lt!1002174) ((_ map or) (content!4548 testedP!183) (content!4548 testedSuffix!143))))))

(declare-fun e!1771276 () List!32694)

(assert (=> d!814092 (= lt!1002174 e!1771276)))

(declare-fun c!454389 () Bool)

(assert (=> d!814092 (= c!454389 ((_ is Nil!32594) testedP!183))))

(assert (=> d!814092 (= (++!8035 testedP!183 testedSuffix!143) lt!1002174)))

(declare-fun b!2802773 () Bool)

(declare-fun res!1167857 () Bool)

(assert (=> b!2802773 (=> (not res!1167857) (not e!1771277))))

(assert (=> b!2802773 (= res!1167857 (= (size!25457 lt!1002174) (+ (size!25457 testedP!183) (size!25457 testedSuffix!143))))))

(declare-fun b!2802774 () Bool)

(assert (=> b!2802774 (= e!1771277 (or (not (= testedSuffix!143 Nil!32594)) (= lt!1002174 testedP!183)))))

(declare-fun b!2802771 () Bool)

(assert (=> b!2802771 (= e!1771276 testedSuffix!143)))

(declare-fun b!2802772 () Bool)

(assert (=> b!2802772 (= e!1771276 (Cons!32594 (h!38014 testedP!183) (++!8035 (t!228864 testedP!183) testedSuffix!143)))))

(assert (= (and d!814092 c!454389) b!2802771))

(assert (= (and d!814092 (not c!454389)) b!2802772))

(assert (= (and d!814092 res!1167858) b!2802773))

(assert (= (and b!2802773 res!1167857) b!2802774))

(declare-fun m!3232511 () Bool)

(assert (=> d!814092 m!3232511))

(declare-fun m!3232513 () Bool)

(assert (=> d!814092 m!3232513))

(declare-fun m!3232515 () Bool)

(assert (=> d!814092 m!3232515))

(declare-fun m!3232517 () Bool)

(assert (=> b!2802773 m!3232517))

(assert (=> b!2802773 m!3232431))

(declare-fun m!3232519 () Bool)

(assert (=> b!2802773 m!3232519))

(declare-fun m!3232521 () Bool)

(assert (=> b!2802772 m!3232521))

(assert (=> start!271056 d!814092))

(declare-fun d!814094 () Bool)

(assert (=> d!814094 (isPrefix!2646 lt!1002112 lt!1002112)))

(declare-fun lt!1002177 () Unit!46701)

(declare-fun choose!16525 (List!32694 List!32694) Unit!46701)

(assert (=> d!814094 (= lt!1002177 (choose!16525 lt!1002112 lt!1002112))))

(assert (=> d!814094 (= (lemmaIsPrefixRefl!1725 lt!1002112 lt!1002112) lt!1002177)))

(declare-fun bs!516036 () Bool)

(assert (= bs!516036 d!814094))

(assert (=> bs!516036 m!3232407))

(declare-fun m!3232523 () Bool)

(assert (=> bs!516036 m!3232523))

(assert (=> b!2802714 d!814094))

(declare-fun b!2802785 () Bool)

(declare-fun e!1771285 () Bool)

(assert (=> b!2802785 (= e!1771285 (isPrefix!2646 (tail!4438 lt!1002112) (tail!4438 lt!1002112)))))

(declare-fun d!814096 () Bool)

(declare-fun e!1771284 () Bool)

(assert (=> d!814096 e!1771284))

(declare-fun res!1167868 () Bool)

(assert (=> d!814096 (=> res!1167868 e!1771284)))

(declare-fun lt!1002180 () Bool)

(assert (=> d!814096 (= res!1167868 (not lt!1002180))))

(declare-fun e!1771286 () Bool)

(assert (=> d!814096 (= lt!1002180 e!1771286)))

(declare-fun res!1167869 () Bool)

(assert (=> d!814096 (=> res!1167869 e!1771286)))

(assert (=> d!814096 (= res!1167869 ((_ is Nil!32594) lt!1002112))))

(assert (=> d!814096 (= (isPrefix!2646 lt!1002112 lt!1002112) lt!1002180)))

(declare-fun b!2802784 () Bool)

(declare-fun res!1167870 () Bool)

(assert (=> b!2802784 (=> (not res!1167870) (not e!1771285))))

(assert (=> b!2802784 (= res!1167870 (= (head!6211 lt!1002112) (head!6211 lt!1002112)))))

(declare-fun b!2802786 () Bool)

(assert (=> b!2802786 (= e!1771284 (>= (size!25457 lt!1002112) (size!25457 lt!1002112)))))

(declare-fun b!2802783 () Bool)

(assert (=> b!2802783 (= e!1771286 e!1771285)))

(declare-fun res!1167867 () Bool)

(assert (=> b!2802783 (=> (not res!1167867) (not e!1771285))))

(assert (=> b!2802783 (= res!1167867 (not ((_ is Nil!32594) lt!1002112)))))

(assert (= (and d!814096 (not res!1167869)) b!2802783))

(assert (= (and b!2802783 res!1167867) b!2802784))

(assert (= (and b!2802784 res!1167870) b!2802785))

(assert (= (and d!814096 (not res!1167868)) b!2802786))

(assert (=> b!2802785 m!3232501))

(assert (=> b!2802785 m!3232501))

(assert (=> b!2802785 m!3232501))

(assert (=> b!2802785 m!3232501))

(declare-fun m!3232525 () Bool)

(assert (=> b!2802785 m!3232525))

(declare-fun m!3232527 () Bool)

(assert (=> b!2802784 m!3232527))

(assert (=> b!2802784 m!3232527))

(assert (=> b!2802786 m!3232427))

(assert (=> b!2802786 m!3232427))

(assert (=> b!2802714 d!814096))

(declare-fun d!814098 () Bool)

(assert (=> d!814098 (= lt!1002112 testedP!183)))

(declare-fun lt!1002183 () Unit!46701)

(declare-fun choose!16526 (List!32694 List!32694 List!32694) Unit!46701)

(assert (=> d!814098 (= lt!1002183 (choose!16526 lt!1002112 testedP!183 lt!1002112))))

(assert (=> d!814098 (isPrefix!2646 lt!1002112 lt!1002112)))

(assert (=> d!814098 (= (lemmaIsPrefixSameLengthThenSameList!501 lt!1002112 testedP!183 lt!1002112) lt!1002183)))

(declare-fun bs!516037 () Bool)

(assert (= bs!516037 d!814098))

(declare-fun m!3232529 () Bool)

(assert (=> bs!516037 m!3232529))

(assert (=> bs!516037 m!3232407))

(assert (=> b!2802714 d!814098))

(declare-fun d!814100 () Bool)

(declare-fun lt!1002186 () Int)

(assert (=> d!814100 (= lt!1002186 (size!25457 (list!12228 totalInput!758)))))

(declare-fun size!25459 (Conc!10088) Int)

(assert (=> d!814100 (= lt!1002186 (size!25459 (c!454371 totalInput!758)))))

(assert (=> d!814100 (= (size!25458 totalInput!758) lt!1002186)))

(declare-fun bs!516038 () Bool)

(assert (= bs!516038 d!814100))

(assert (=> bs!516038 m!3232435))

(assert (=> bs!516038 m!3232435))

(declare-fun m!3232531 () Bool)

(assert (=> bs!516038 m!3232531))

(declare-fun m!3232533 () Bool)

(assert (=> bs!516038 m!3232533))

(assert (=> b!2802726 d!814100))

(declare-fun d!814102 () Bool)

(assert (=> d!814102 (= (valid!3173 cacheDown!1009) (validCacheMapDown!433 (cache!4101 cacheDown!1009)))))

(declare-fun bs!516039 () Bool)

(assert (= bs!516039 d!814102))

(assert (=> bs!516039 m!3232507))

(assert (=> b!2802723 d!814102))

(declare-fun d!814104 () Bool)

(declare-fun lambda!102985 () Int)

(declare-fun forall!6718 (List!32691 Int) Bool)

(assert (=> d!814104 (= (inv!44265 setElem!24627) (forall!6718 (exprs!2949 setElem!24627) lambda!102985))))

(declare-fun bs!516040 () Bool)

(assert (= bs!516040 d!814104))

(declare-fun m!3232535 () Bool)

(assert (=> bs!516040 m!3232535))

(assert (=> setNonEmpty!24627 d!814104))

(declare-fun d!814106 () Bool)

(declare-fun c!454392 () Bool)

(assert (=> d!814106 (= c!454392 ((_ is Node!10088) (c!454371 totalInput!758)))))

(declare-fun e!1771291 () Bool)

(assert (=> d!814106 (= (inv!44264 (c!454371 totalInput!758)) e!1771291)))

(declare-fun b!2802793 () Bool)

(declare-fun inv!44269 (Conc!10088) Bool)

(assert (=> b!2802793 (= e!1771291 (inv!44269 (c!454371 totalInput!758)))))

(declare-fun b!2802794 () Bool)

(declare-fun e!1771292 () Bool)

(assert (=> b!2802794 (= e!1771291 e!1771292)))

(declare-fun res!1167873 () Bool)

(assert (=> b!2802794 (= res!1167873 (not ((_ is Leaf!15372) (c!454371 totalInput!758))))))

(assert (=> b!2802794 (=> res!1167873 e!1771292)))

(declare-fun b!2802795 () Bool)

(declare-fun inv!44270 (Conc!10088) Bool)

(assert (=> b!2802795 (= e!1771292 (inv!44270 (c!454371 totalInput!758)))))

(assert (= (and d!814106 c!454392) b!2802793))

(assert (= (and d!814106 (not c!454392)) b!2802794))

(assert (= (and b!2802794 (not res!1167873)) b!2802795))

(declare-fun m!3232537 () Bool)

(assert (=> b!2802793 m!3232537))

(declare-fun m!3232539 () Bool)

(assert (=> b!2802795 m!3232539))

(assert (=> b!2802706 d!814106))

(declare-fun e!1771294 () Bool)

(declare-fun b!2802798 () Bool)

(assert (=> b!2802798 (= e!1771294 (isPrefix!2646 (tail!4438 (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594))) (tail!4438 lt!1002112)))))

(declare-fun d!814108 () Bool)

(declare-fun e!1771293 () Bool)

(assert (=> d!814108 e!1771293))

(declare-fun res!1167875 () Bool)

(assert (=> d!814108 (=> res!1167875 e!1771293)))

(declare-fun lt!1002187 () Bool)

(assert (=> d!814108 (= res!1167875 (not lt!1002187))))

(declare-fun e!1771295 () Bool)

(assert (=> d!814108 (= lt!1002187 e!1771295)))

(declare-fun res!1167876 () Bool)

(assert (=> d!814108 (=> res!1167876 e!1771295)))

(assert (=> d!814108 (= res!1167876 ((_ is Nil!32594) (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594))))))

(assert (=> d!814108 (= (isPrefix!2646 (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594)) lt!1002112) lt!1002187)))

(declare-fun b!2802797 () Bool)

(declare-fun res!1167877 () Bool)

(assert (=> b!2802797 (=> (not res!1167877) (not e!1771294))))

(assert (=> b!2802797 (= res!1167877 (= (head!6211 (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594))) (head!6211 lt!1002112)))))

(declare-fun b!2802799 () Bool)

(assert (=> b!2802799 (= e!1771293 (>= (size!25457 lt!1002112) (size!25457 (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594)))))))

(declare-fun b!2802796 () Bool)

(assert (=> b!2802796 (= e!1771295 e!1771294)))

(declare-fun res!1167874 () Bool)

(assert (=> b!2802796 (=> (not res!1167874) (not e!1771294))))

(assert (=> b!2802796 (= res!1167874 (not ((_ is Nil!32594) lt!1002112)))))

(assert (= (and d!814108 (not res!1167876)) b!2802796))

(assert (= (and b!2802796 res!1167874) b!2802797))

(assert (= (and b!2802797 res!1167877) b!2802798))

(assert (= (and d!814108 (not res!1167875)) b!2802799))

(assert (=> b!2802798 m!3232383))

(declare-fun m!3232541 () Bool)

(assert (=> b!2802798 m!3232541))

(assert (=> b!2802798 m!3232501))

(assert (=> b!2802798 m!3232541))

(assert (=> b!2802798 m!3232501))

(declare-fun m!3232543 () Bool)

(assert (=> b!2802798 m!3232543))

(assert (=> b!2802797 m!3232383))

(declare-fun m!3232545 () Bool)

(assert (=> b!2802797 m!3232545))

(assert (=> b!2802797 m!3232527))

(assert (=> b!2802799 m!3232427))

(assert (=> b!2802799 m!3232383))

(declare-fun m!3232547 () Bool)

(assert (=> b!2802799 m!3232547))

(assert (=> b!2802707 d!814108))

(declare-fun d!814110 () Bool)

(assert (=> d!814110 (= (++!8035 (++!8035 testedP!183 (Cons!32594 lt!1002125 Nil!32594)) lt!1002118) lt!1002112)))

(declare-fun lt!1002190 () Unit!46701)

(declare-fun choose!16527 (List!32694 C!16620 List!32694 List!32694) Unit!46701)

(assert (=> d!814110 (= lt!1002190 (choose!16527 testedP!183 lt!1002125 lt!1002118 lt!1002112))))

(assert (=> d!814110 (= (++!8035 testedP!183 (Cons!32594 lt!1002125 lt!1002118)) lt!1002112)))

(assert (=> d!814110 (= (lemmaMoveElementToOtherListKeepsConcatEq!902 testedP!183 lt!1002125 lt!1002118 lt!1002112) lt!1002190)))

(declare-fun bs!516041 () Bool)

(assert (= bs!516041 d!814110))

(assert (=> bs!516041 m!3232389))

(assert (=> bs!516041 m!3232389))

(declare-fun m!3232549 () Bool)

(assert (=> bs!516041 m!3232549))

(declare-fun m!3232551 () Bool)

(assert (=> bs!516041 m!3232551))

(declare-fun m!3232553 () Bool)

(assert (=> bs!516041 m!3232553))

(assert (=> b!2802707 d!814110))

(declare-fun d!814112 () Bool)

(assert (=> d!814112 (isPrefix!2646 (++!8035 testedP!183 (Cons!32594 (head!6211 (getSuffix!1320 lt!1002112 testedP!183)) Nil!32594)) lt!1002112)))

(declare-fun lt!1002193 () Unit!46701)

(declare-fun choose!16528 (List!32694 List!32694) Unit!46701)

(assert (=> d!814112 (= lt!1002193 (choose!16528 testedP!183 lt!1002112))))

(assert (=> d!814112 (isPrefix!2646 testedP!183 lt!1002112)))

(assert (=> d!814112 (= (lemmaAddHeadSuffixToPrefixStillPrefix!494 testedP!183 lt!1002112) lt!1002193)))

(declare-fun bs!516042 () Bool)

(assert (= bs!516042 d!814112))

(assert (=> bs!516042 m!3232349))

(declare-fun m!3232555 () Bool)

(assert (=> bs!516042 m!3232555))

(declare-fun m!3232557 () Bool)

(assert (=> bs!516042 m!3232557))

(assert (=> bs!516042 m!3232557))

(declare-fun m!3232559 () Bool)

(assert (=> bs!516042 m!3232559))

(assert (=> bs!516042 m!3232361))

(declare-fun m!3232561 () Bool)

(assert (=> bs!516042 m!3232561))

(assert (=> bs!516042 m!3232361))

(assert (=> b!2802707 d!814112))

(declare-fun d!814114 () Bool)

(declare-fun e!1771297 () Bool)

(assert (=> d!814114 e!1771297))

(declare-fun res!1167879 () Bool)

(assert (=> d!814114 (=> (not res!1167879) (not e!1771297))))

(declare-fun lt!1002194 () List!32694)

(assert (=> d!814114 (= res!1167879 (= (content!4548 lt!1002194) ((_ map or) (content!4548 testedP!183) (content!4548 (Cons!32594 lt!1002125 Nil!32594)))))))

(declare-fun e!1771296 () List!32694)

(assert (=> d!814114 (= lt!1002194 e!1771296)))

(declare-fun c!454393 () Bool)

(assert (=> d!814114 (= c!454393 ((_ is Nil!32594) testedP!183))))

(assert (=> d!814114 (= (++!8035 testedP!183 (Cons!32594 lt!1002125 Nil!32594)) lt!1002194)))

(declare-fun b!2802802 () Bool)

(declare-fun res!1167878 () Bool)

(assert (=> b!2802802 (=> (not res!1167878) (not e!1771297))))

(assert (=> b!2802802 (= res!1167878 (= (size!25457 lt!1002194) (+ (size!25457 testedP!183) (size!25457 (Cons!32594 lt!1002125 Nil!32594)))))))

(declare-fun b!2802803 () Bool)

(assert (=> b!2802803 (= e!1771297 (or (not (= (Cons!32594 lt!1002125 Nil!32594) Nil!32594)) (= lt!1002194 testedP!183)))))

(declare-fun b!2802800 () Bool)

(assert (=> b!2802800 (= e!1771296 (Cons!32594 lt!1002125 Nil!32594))))

(declare-fun b!2802801 () Bool)

(assert (=> b!2802801 (= e!1771296 (Cons!32594 (h!38014 testedP!183) (++!8035 (t!228864 testedP!183) (Cons!32594 lt!1002125 Nil!32594))))))

(assert (= (and d!814114 c!454393) b!2802800))

(assert (= (and d!814114 (not c!454393)) b!2802801))

(assert (= (and d!814114 res!1167879) b!2802802))

(assert (= (and b!2802802 res!1167878) b!2802803))

(declare-fun m!3232563 () Bool)

(assert (=> d!814114 m!3232563))

(assert (=> d!814114 m!3232513))

(declare-fun m!3232565 () Bool)

(assert (=> d!814114 m!3232565))

(declare-fun m!3232567 () Bool)

(assert (=> b!2802802 m!3232567))

(assert (=> b!2802802 m!3232431))

(declare-fun m!3232569 () Bool)

(assert (=> b!2802802 m!3232569))

(declare-fun m!3232571 () Bool)

(assert (=> b!2802801 m!3232571))

(assert (=> b!2802707 d!814114))

(declare-fun d!814116 () Bool)

(declare-fun e!1771299 () Bool)

(assert (=> d!814116 e!1771299))

(declare-fun res!1167881 () Bool)

(assert (=> d!814116 (=> (not res!1167881) (not e!1771299))))

(declare-fun lt!1002195 () List!32694)

(assert (=> d!814116 (= res!1167881 (= (content!4548 lt!1002195) ((_ map or) (content!4548 testedP!183) (content!4548 (Cons!32594 (head!6211 lt!1002127) Nil!32594)))))))

(declare-fun e!1771298 () List!32694)

(assert (=> d!814116 (= lt!1002195 e!1771298)))

(declare-fun c!454394 () Bool)

(assert (=> d!814116 (= c!454394 ((_ is Nil!32594) testedP!183))))

(assert (=> d!814116 (= (++!8035 testedP!183 (Cons!32594 (head!6211 lt!1002127) Nil!32594)) lt!1002195)))

(declare-fun b!2802806 () Bool)

(declare-fun res!1167880 () Bool)

(assert (=> b!2802806 (=> (not res!1167880) (not e!1771299))))

(assert (=> b!2802806 (= res!1167880 (= (size!25457 lt!1002195) (+ (size!25457 testedP!183) (size!25457 (Cons!32594 (head!6211 lt!1002127) Nil!32594)))))))

(declare-fun b!2802807 () Bool)

(assert (=> b!2802807 (= e!1771299 (or (not (= (Cons!32594 (head!6211 lt!1002127) Nil!32594) Nil!32594)) (= lt!1002195 testedP!183)))))

(declare-fun b!2802804 () Bool)

(assert (=> b!2802804 (= e!1771298 (Cons!32594 (head!6211 lt!1002127) Nil!32594))))

(declare-fun b!2802805 () Bool)

(assert (=> b!2802805 (= e!1771298 (Cons!32594 (h!38014 testedP!183) (++!8035 (t!228864 testedP!183) (Cons!32594 (head!6211 lt!1002127) Nil!32594))))))

(assert (= (and d!814116 c!454394) b!2802804))

(assert (= (and d!814116 (not c!454394)) b!2802805))

(assert (= (and d!814116 res!1167881) b!2802806))

(assert (= (and b!2802806 res!1167880) b!2802807))

(declare-fun m!3232573 () Bool)

(assert (=> d!814116 m!3232573))

(assert (=> d!814116 m!3232513))

(declare-fun m!3232575 () Bool)

(assert (=> d!814116 m!3232575))

(declare-fun m!3232577 () Bool)

(assert (=> b!2802806 m!3232577))

(assert (=> b!2802806 m!3232431))

(declare-fun m!3232579 () Bool)

(assert (=> b!2802806 m!3232579))

(declare-fun m!3232581 () Bool)

(assert (=> b!2802805 m!3232581))

(assert (=> b!2802707 d!814116))

(declare-fun d!814118 () Bool)

(assert (=> d!814118 (= (tail!4438 testedSuffix!143) (t!228864 testedSuffix!143))))

(assert (=> b!2802707 d!814118))

(declare-fun d!814120 () Bool)

(declare-fun e!1771301 () Bool)

(assert (=> d!814120 e!1771301))

(declare-fun res!1167883 () Bool)

(assert (=> d!814120 (=> (not res!1167883) (not e!1771301))))

(declare-fun lt!1002196 () List!32694)

(assert (=> d!814120 (= res!1167883 (= (content!4548 lt!1002196) ((_ map or) (content!4548 lt!1002113) (content!4548 lt!1002118))))))

(declare-fun e!1771300 () List!32694)

(assert (=> d!814120 (= lt!1002196 e!1771300)))

(declare-fun c!454395 () Bool)

(assert (=> d!814120 (= c!454395 ((_ is Nil!32594) lt!1002113))))

(assert (=> d!814120 (= (++!8035 lt!1002113 lt!1002118) lt!1002196)))

(declare-fun b!2802810 () Bool)

(declare-fun res!1167882 () Bool)

(assert (=> b!2802810 (=> (not res!1167882) (not e!1771301))))

(assert (=> b!2802810 (= res!1167882 (= (size!25457 lt!1002196) (+ (size!25457 lt!1002113) (size!25457 lt!1002118))))))

(declare-fun b!2802811 () Bool)

(assert (=> b!2802811 (= e!1771301 (or (not (= lt!1002118 Nil!32594)) (= lt!1002196 lt!1002113)))))

(declare-fun b!2802808 () Bool)

(assert (=> b!2802808 (= e!1771300 lt!1002118)))

(declare-fun b!2802809 () Bool)

(assert (=> b!2802809 (= e!1771300 (Cons!32594 (h!38014 lt!1002113) (++!8035 (t!228864 lt!1002113) lt!1002118)))))

(assert (= (and d!814120 c!454395) b!2802808))

(assert (= (and d!814120 (not c!454395)) b!2802809))

(assert (= (and d!814120 res!1167883) b!2802810))

(assert (= (and b!2802810 res!1167882) b!2802811))

(declare-fun m!3232583 () Bool)

(assert (=> d!814120 m!3232583))

(declare-fun m!3232585 () Bool)

(assert (=> d!814120 m!3232585))

(declare-fun m!3232587 () Bool)

(assert (=> d!814120 m!3232587))

(declare-fun m!3232589 () Bool)

(assert (=> b!2802810 m!3232589))

(assert (=> b!2802810 m!3232379))

(declare-fun m!3232591 () Bool)

(assert (=> b!2802810 m!3232591))

(declare-fun m!3232593 () Bool)

(assert (=> b!2802809 m!3232593))

(assert (=> b!2802707 d!814120))

(declare-fun d!814122 () Bool)

(assert (=> d!814122 (= (head!6211 lt!1002127) (h!38014 lt!1002127))))

(assert (=> b!2802707 d!814122))

(declare-fun bs!516043 () Bool)

(declare-fun d!814124 () Bool)

(assert (= bs!516043 (and d!814124 d!814078)))

(declare-fun lambda!102988 () Int)

(assert (=> bs!516043 (not (= lambda!102988 lambda!102980))))

(declare-fun bs!516044 () Bool)

(assert (= bs!516044 (and d!814124 b!2802757)))

(assert (=> bs!516044 (not (= lambda!102988 lambda!102981))))

(declare-fun bs!516045 () Bool)

(assert (= bs!516045 (and d!814124 b!2802758)))

(assert (=> bs!516045 (not (= lambda!102988 lambda!102982))))

(declare-fun exists!1025 ((InoxSet Context!4898) Int) Bool)

(assert (=> d!814124 (= (nullableZipper!666 z!3684) (exists!1025 z!3684 lambda!102988))))

(declare-fun bs!516046 () Bool)

(assert (= bs!516046 d!814124))

(declare-fun m!3232595 () Bool)

(assert (=> bs!516046 m!3232595))

(assert (=> b!2802707 d!814124))

(declare-fun d!814126 () Bool)

(declare-fun lt!1002199 () Int)

(assert (=> d!814126 (>= lt!1002199 0)))

(declare-fun e!1771304 () Int)

(assert (=> d!814126 (= lt!1002199 e!1771304)))

(declare-fun c!454400 () Bool)

(assert (=> d!814126 (= c!454400 ((_ is Nil!32594) testedP!183))))

(assert (=> d!814126 (= (size!25457 testedP!183) lt!1002199)))

(declare-fun b!2802816 () Bool)

(assert (=> b!2802816 (= e!1771304 0)))

(declare-fun b!2802817 () Bool)

(assert (=> b!2802817 (= e!1771304 (+ 1 (size!25457 (t!228864 testedP!183))))))

(assert (= (and d!814126 c!454400) b!2802816))

(assert (= (and d!814126 (not c!454400)) b!2802817))

(declare-fun m!3232597 () Bool)

(assert (=> b!2802817 m!3232597))

(assert (=> b!2802711 d!814126))

(declare-fun d!814128 () Bool)

(declare-fun lt!1002200 () Int)

(assert (=> d!814128 (>= lt!1002200 0)))

(declare-fun e!1771305 () Int)

(assert (=> d!814128 (= lt!1002200 e!1771305)))

(declare-fun c!454401 () Bool)

(assert (=> d!814128 (= c!454401 ((_ is Nil!32594) lt!1002112))))

(assert (=> d!814128 (= (size!25457 lt!1002112) lt!1002200)))

(declare-fun b!2802818 () Bool)

(assert (=> b!2802818 (= e!1771305 0)))

(declare-fun b!2802819 () Bool)

(assert (=> b!2802819 (= e!1771305 (+ 1 (size!25457 (t!228864 lt!1002112))))))

(assert (= (and d!814128 c!454401) b!2802818))

(assert (= (and d!814128 (not c!454401)) b!2802819))

(declare-fun m!3232599 () Bool)

(assert (=> b!2802819 m!3232599))

(assert (=> b!2802729 d!814128))

(declare-fun d!814130 () Bool)

(assert (=> d!814130 (<= (size!25457 testedP!183) (size!25457 lt!1002112))))

(declare-fun lt!1002203 () Unit!46701)

(declare-fun choose!16529 (List!32694 List!32694) Unit!46701)

(assert (=> d!814130 (= lt!1002203 (choose!16529 testedP!183 lt!1002112))))

(assert (=> d!814130 (isPrefix!2646 testedP!183 lt!1002112)))

(assert (=> d!814130 (= (lemmaIsPrefixThenSmallerEqSize!302 testedP!183 lt!1002112) lt!1002203)))

(declare-fun bs!516047 () Bool)

(assert (= bs!516047 d!814130))

(assert (=> bs!516047 m!3232431))

(assert (=> bs!516047 m!3232427))

(declare-fun m!3232601 () Bool)

(assert (=> bs!516047 m!3232601))

(assert (=> bs!516047 m!3232349))

(assert (=> b!2802729 d!814130))

(declare-fun d!814132 () Bool)

(assert (=> d!814132 (= (valid!3174 cacheUp!890) (validCacheMapUp!402 (cache!4102 cacheUp!890)))))

(declare-fun bs!516048 () Bool)

(assert (= bs!516048 d!814132))

(assert (=> bs!516048 m!3232505))

(assert (=> b!2802730 d!814132))

(declare-fun b!2802822 () Bool)

(declare-fun e!1771307 () Bool)

(assert (=> b!2802822 (= e!1771307 (isPrefix!2646 (tail!4438 testedP!183) (tail!4438 lt!1002112)))))

(declare-fun d!814134 () Bool)

(declare-fun e!1771306 () Bool)

(assert (=> d!814134 e!1771306))

(declare-fun res!1167885 () Bool)

(assert (=> d!814134 (=> res!1167885 e!1771306)))

(declare-fun lt!1002204 () Bool)

(assert (=> d!814134 (= res!1167885 (not lt!1002204))))

(declare-fun e!1771308 () Bool)

(assert (=> d!814134 (= lt!1002204 e!1771308)))

(declare-fun res!1167886 () Bool)

(assert (=> d!814134 (=> res!1167886 e!1771308)))

(assert (=> d!814134 (= res!1167886 ((_ is Nil!32594) testedP!183))))

(assert (=> d!814134 (= (isPrefix!2646 testedP!183 lt!1002112) lt!1002204)))

(declare-fun b!2802821 () Bool)

(declare-fun res!1167887 () Bool)

(assert (=> b!2802821 (=> (not res!1167887) (not e!1771307))))

(assert (=> b!2802821 (= res!1167887 (= (head!6211 testedP!183) (head!6211 lt!1002112)))))

(declare-fun b!2802823 () Bool)

(assert (=> b!2802823 (= e!1771306 (>= (size!25457 lt!1002112) (size!25457 testedP!183)))))

(declare-fun b!2802820 () Bool)

(assert (=> b!2802820 (= e!1771308 e!1771307)))

(declare-fun res!1167884 () Bool)

(assert (=> b!2802820 (=> (not res!1167884) (not e!1771307))))

(assert (=> b!2802820 (= res!1167884 (not ((_ is Nil!32594) lt!1002112)))))

(assert (= (and d!814134 (not res!1167886)) b!2802820))

(assert (= (and b!2802820 res!1167884) b!2802821))

(assert (= (and b!2802821 res!1167887) b!2802822))

(assert (= (and d!814134 (not res!1167885)) b!2802823))

(declare-fun m!3232603 () Bool)

(assert (=> b!2802822 m!3232603))

(assert (=> b!2802822 m!3232501))

(assert (=> b!2802822 m!3232603))

(assert (=> b!2802822 m!3232501))

(declare-fun m!3232605 () Bool)

(assert (=> b!2802822 m!3232605))

(declare-fun m!3232607 () Bool)

(assert (=> b!2802821 m!3232607))

(assert (=> b!2802821 m!3232527))

(assert (=> b!2802823 m!3232427))

(assert (=> b!2802823 m!3232431))

(assert (=> b!2802720 d!814134))

(declare-fun b!2802826 () Bool)

(declare-fun e!1771310 () Bool)

(assert (=> b!2802826 (= e!1771310 (isPrefix!2646 (tail!4438 testedP!183) (tail!4438 lt!1002128)))))

(declare-fun d!814136 () Bool)

(declare-fun e!1771309 () Bool)

(assert (=> d!814136 e!1771309))

(declare-fun res!1167889 () Bool)

(assert (=> d!814136 (=> res!1167889 e!1771309)))

(declare-fun lt!1002205 () Bool)

(assert (=> d!814136 (= res!1167889 (not lt!1002205))))

(declare-fun e!1771311 () Bool)

(assert (=> d!814136 (= lt!1002205 e!1771311)))

(declare-fun res!1167890 () Bool)

(assert (=> d!814136 (=> res!1167890 e!1771311)))

(assert (=> d!814136 (= res!1167890 ((_ is Nil!32594) testedP!183))))

(assert (=> d!814136 (= (isPrefix!2646 testedP!183 lt!1002128) lt!1002205)))

(declare-fun b!2802825 () Bool)

(declare-fun res!1167891 () Bool)

(assert (=> b!2802825 (=> (not res!1167891) (not e!1771310))))

(assert (=> b!2802825 (= res!1167891 (= (head!6211 testedP!183) (head!6211 lt!1002128)))))

(declare-fun b!2802827 () Bool)

(assert (=> b!2802827 (= e!1771309 (>= (size!25457 lt!1002128) (size!25457 testedP!183)))))

(declare-fun b!2802824 () Bool)

(assert (=> b!2802824 (= e!1771311 e!1771310)))

(declare-fun res!1167888 () Bool)

(assert (=> b!2802824 (=> (not res!1167888) (not e!1771310))))

(assert (=> b!2802824 (= res!1167888 (not ((_ is Nil!32594) lt!1002128)))))

(assert (= (and d!814136 (not res!1167890)) b!2802824))

(assert (= (and b!2802824 res!1167888) b!2802825))

(assert (= (and b!2802825 res!1167891) b!2802826))

(assert (= (and d!814136 (not res!1167889)) b!2802827))

(assert (=> b!2802826 m!3232603))

(declare-fun m!3232609 () Bool)

(assert (=> b!2802826 m!3232609))

(assert (=> b!2802826 m!3232603))

(assert (=> b!2802826 m!3232609))

(declare-fun m!3232611 () Bool)

(assert (=> b!2802826 m!3232611))

(assert (=> b!2802825 m!3232607))

(declare-fun m!3232613 () Bool)

(assert (=> b!2802825 m!3232613))

(declare-fun m!3232615 () Bool)

(assert (=> b!2802827 m!3232615))

(assert (=> b!2802827 m!3232431))

(assert (=> b!2802720 d!814136))

(declare-fun d!814138 () Bool)

(assert (=> d!814138 (isPrefix!2646 testedP!183 (++!8035 testedP!183 testedSuffix!143))))

(declare-fun lt!1002208 () Unit!46701)

(declare-fun choose!16530 (List!32694 List!32694) Unit!46701)

(assert (=> d!814138 (= lt!1002208 (choose!16530 testedP!183 testedSuffix!143))))

(assert (=> d!814138 (= (lemmaConcatTwoListThenFirstIsPrefix!1751 testedP!183 testedSuffix!143) lt!1002208)))

(declare-fun bs!516049 () Bool)

(assert (= bs!516049 d!814138))

(assert (=> bs!516049 m!3232443))

(assert (=> bs!516049 m!3232443))

(declare-fun m!3232617 () Bool)

(assert (=> bs!516049 m!3232617))

(declare-fun m!3232619 () Bool)

(assert (=> bs!516049 m!3232619))

(assert (=> b!2802720 d!814138))

(declare-fun d!814140 () Bool)

(declare-fun lt!1002209 () Int)

(assert (=> d!814140 (= lt!1002209 (size!25457 (list!12228 (_1!19713 lt!1002132))))))

(assert (=> d!814140 (= lt!1002209 (size!25459 (c!454371 (_1!19713 lt!1002132))))))

(assert (=> d!814140 (= (size!25458 (_1!19713 lt!1002132)) lt!1002209)))

(declare-fun bs!516050 () Bool)

(assert (= bs!516050 d!814140))

(assert (=> bs!516050 m!3232423))

(assert (=> bs!516050 m!3232423))

(declare-fun m!3232621 () Bool)

(assert (=> bs!516050 m!3232621))

(declare-fun m!3232623 () Bool)

(assert (=> bs!516050 m!3232623))

(assert (=> b!2802721 d!814140))

(declare-fun d!814142 () Bool)

(assert (=> d!814142 (= (array_inv!4595 (_keys!4352 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) (bvsge (size!25454 (_keys!4352 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802712 d!814142))

(declare-fun d!814144 () Bool)

(assert (=> d!814144 (= (array_inv!4596 (_values!4333 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) (bvsge (size!25455 (_values!4333 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802712 d!814144))

(declare-fun d!814146 () Bool)

(assert (=> d!814146 (= (head!6211 (drop!1758 lt!1002112 testedPSize!143)) (apply!7627 lt!1002112 testedPSize!143))))

(declare-fun lt!1002212 () Unit!46701)

(declare-fun choose!16531 (List!32694 Int) Unit!46701)

(assert (=> d!814146 (= lt!1002212 (choose!16531 lt!1002112 testedPSize!143))))

(declare-fun e!1771314 () Bool)

(assert (=> d!814146 e!1771314))

(declare-fun res!1167894 () Bool)

(assert (=> d!814146 (=> (not res!1167894) (not e!1771314))))

(assert (=> d!814146 (= res!1167894 (>= testedPSize!143 0))))

(assert (=> d!814146 (= (lemmaDropApply!962 lt!1002112 testedPSize!143) lt!1002212)))

(declare-fun b!2802830 () Bool)

(assert (=> b!2802830 (= e!1771314 (< testedPSize!143 (size!25457 lt!1002112)))))

(assert (= (and d!814146 res!1167894) b!2802830))

(assert (=> d!814146 m!3232369))

(assert (=> d!814146 m!3232369))

(assert (=> d!814146 m!3232371))

(assert (=> d!814146 m!3232367))

(declare-fun m!3232625 () Bool)

(assert (=> d!814146 m!3232625))

(assert (=> b!2802830 m!3232427))

(assert (=> b!2802713 d!814146))

(declare-fun d!814148 () Bool)

(assert (=> d!814148 (= (head!6211 (drop!1758 lt!1002112 testedPSize!143)) (h!38014 (drop!1758 lt!1002112 testedPSize!143)))))

(assert (=> b!2802713 d!814148))

(declare-fun d!814150 () Bool)

(declare-fun lt!1002215 () C!16620)

(assert (=> d!814150 (= lt!1002215 (apply!7627 (list!12228 totalInput!758) testedPSize!143))))

(declare-fun apply!7628 (Conc!10088 Int) C!16620)

(assert (=> d!814150 (= lt!1002215 (apply!7628 (c!454371 totalInput!758) testedPSize!143))))

(declare-fun e!1771317 () Bool)

(assert (=> d!814150 e!1771317))

(declare-fun res!1167897 () Bool)

(assert (=> d!814150 (=> (not res!1167897) (not e!1771317))))

(assert (=> d!814150 (= res!1167897 (<= 0 testedPSize!143))))

(assert (=> d!814150 (= (apply!7626 totalInput!758 testedPSize!143) lt!1002215)))

(declare-fun b!2802833 () Bool)

(assert (=> b!2802833 (= e!1771317 (< testedPSize!143 (size!25458 totalInput!758)))))

(assert (= (and d!814150 res!1167897) b!2802833))

(assert (=> d!814150 m!3232435))

(assert (=> d!814150 m!3232435))

(declare-fun m!3232627 () Bool)

(assert (=> d!814150 m!3232627))

(declare-fun m!3232629 () Bool)

(assert (=> d!814150 m!3232629))

(assert (=> b!2802833 m!3232403))

(assert (=> b!2802713 d!814150))

(declare-fun d!814152 () Bool)

(declare-fun lt!1002218 () C!16620)

(declare-fun contains!6020 (List!32694 C!16620) Bool)

(assert (=> d!814152 (contains!6020 lt!1002112 lt!1002218)))

(declare-fun e!1771323 () C!16620)

(assert (=> d!814152 (= lt!1002218 e!1771323)))

(declare-fun c!454404 () Bool)

(assert (=> d!814152 (= c!454404 (= testedPSize!143 0))))

(declare-fun e!1771322 () Bool)

(assert (=> d!814152 e!1771322))

(declare-fun res!1167900 () Bool)

(assert (=> d!814152 (=> (not res!1167900) (not e!1771322))))

(assert (=> d!814152 (= res!1167900 (<= 0 testedPSize!143))))

(assert (=> d!814152 (= (apply!7627 lt!1002112 testedPSize!143) lt!1002218)))

(declare-fun b!2802840 () Bool)

(assert (=> b!2802840 (= e!1771322 (< testedPSize!143 (size!25457 lt!1002112)))))

(declare-fun b!2802841 () Bool)

(assert (=> b!2802841 (= e!1771323 (head!6211 lt!1002112))))

(declare-fun b!2802842 () Bool)

(assert (=> b!2802842 (= e!1771323 (apply!7627 (tail!4438 lt!1002112) (- testedPSize!143 1)))))

(assert (= (and d!814152 res!1167900) b!2802840))

(assert (= (and d!814152 c!454404) b!2802841))

(assert (= (and d!814152 (not c!454404)) b!2802842))

(declare-fun m!3232631 () Bool)

(assert (=> d!814152 m!3232631))

(assert (=> b!2802840 m!3232427))

(assert (=> b!2802841 m!3232527))

(assert (=> b!2802842 m!3232501))

(assert (=> b!2802842 m!3232501))

(declare-fun m!3232633 () Bool)

(assert (=> b!2802842 m!3232633))

(assert (=> b!2802713 d!814152))

(declare-fun b!2802861 () Bool)

(declare-fun e!1771337 () List!32694)

(declare-fun e!1771336 () List!32694)

(assert (=> b!2802861 (= e!1771337 e!1771336)))

(declare-fun c!454413 () Bool)

(assert (=> b!2802861 (= c!454413 (<= testedPSize!143 0))))

(declare-fun b!2802862 () Bool)

(declare-fun e!1771338 () Int)

(declare-fun call!182901 () Int)

(assert (=> b!2802862 (= e!1771338 (- call!182901 testedPSize!143))))

(declare-fun bm!182896 () Bool)

(assert (=> bm!182896 (= call!182901 (size!25457 lt!1002112))))

(declare-fun b!2802863 () Bool)

(declare-fun e!1771334 () Int)

(assert (=> b!2802863 (= e!1771334 call!182901)))

(declare-fun d!814154 () Bool)

(declare-fun e!1771335 () Bool)

(assert (=> d!814154 e!1771335))

(declare-fun res!1167903 () Bool)

(assert (=> d!814154 (=> (not res!1167903) (not e!1771335))))

(declare-fun lt!1002221 () List!32694)

(assert (=> d!814154 (= res!1167903 (= ((_ map implies) (content!4548 lt!1002221) (content!4548 lt!1002112)) ((as const (InoxSet C!16620)) true)))))

(assert (=> d!814154 (= lt!1002221 e!1771337)))

(declare-fun c!454414 () Bool)

(assert (=> d!814154 (= c!454414 ((_ is Nil!32594) lt!1002112))))

(assert (=> d!814154 (= (drop!1758 lt!1002112 testedPSize!143) lt!1002221)))

(declare-fun b!2802864 () Bool)

(assert (=> b!2802864 (= e!1771337 Nil!32594)))

(declare-fun b!2802865 () Bool)

(assert (=> b!2802865 (= e!1771334 e!1771338)))

(declare-fun c!454415 () Bool)

(assert (=> b!2802865 (= c!454415 (>= testedPSize!143 call!182901))))

(declare-fun b!2802866 () Bool)

(assert (=> b!2802866 (= e!1771338 0)))

(declare-fun b!2802867 () Bool)

(assert (=> b!2802867 (= e!1771336 (drop!1758 (t!228864 lt!1002112) (- testedPSize!143 1)))))

(declare-fun b!2802868 () Bool)

(assert (=> b!2802868 (= e!1771336 lt!1002112)))

(declare-fun b!2802869 () Bool)

(assert (=> b!2802869 (= e!1771335 (= (size!25457 lt!1002221) e!1771334))))

(declare-fun c!454416 () Bool)

(assert (=> b!2802869 (= c!454416 (<= testedPSize!143 0))))

(assert (= (and d!814154 c!454414) b!2802864))

(assert (= (and d!814154 (not c!454414)) b!2802861))

(assert (= (and b!2802861 c!454413) b!2802868))

(assert (= (and b!2802861 (not c!454413)) b!2802867))

(assert (= (and d!814154 res!1167903) b!2802869))

(assert (= (and b!2802869 c!454416) b!2802863))

(assert (= (and b!2802869 (not c!454416)) b!2802865))

(assert (= (and b!2802865 c!454415) b!2802866))

(assert (= (and b!2802865 (not c!454415)) b!2802862))

(assert (= (or b!2802863 b!2802865 b!2802862) bm!182896))

(assert (=> bm!182896 m!3232427))

(declare-fun m!3232635 () Bool)

(assert (=> d!814154 m!3232635))

(declare-fun m!3232637 () Bool)

(assert (=> d!814154 m!3232637))

(declare-fun m!3232639 () Bool)

(assert (=> b!2802867 m!3232639))

(declare-fun m!3232641 () Bool)

(assert (=> b!2802869 m!3232641))

(assert (=> b!2802713 d!814154))

(declare-fun d!814156 () Bool)

(assert (=> d!814156 (= (head!6211 testedSuffix!143) (h!38014 testedSuffix!143))))

(assert (=> b!2802713 d!814156))

(declare-fun d!814158 () Bool)

(assert (=> d!814158 (and (= lt!1002122 testedP!183) (= lt!1002131 testedSuffix!143))))

(declare-fun lt!1002224 () Unit!46701)

(declare-fun choose!16532 (List!32694 List!32694 List!32694 List!32694) Unit!46701)

(assert (=> d!814158 (= lt!1002224 (choose!16532 lt!1002122 lt!1002131 testedP!183 testedSuffix!143))))

(assert (=> d!814158 (= (++!8035 lt!1002122 lt!1002131) (++!8035 testedP!183 testedSuffix!143))))

(assert (=> d!814158 (= (lemmaConcatSameAndSameSizesThenSameLists!392 lt!1002122 lt!1002131 testedP!183 testedSuffix!143) lt!1002224)))

(declare-fun bs!516051 () Bool)

(assert (= bs!516051 d!814158))

(declare-fun m!3232643 () Bool)

(assert (=> bs!516051 m!3232643))

(assert (=> bs!516051 m!3232419))

(assert (=> bs!516051 m!3232443))

(assert (=> b!2802713 d!814158))

(declare-fun d!814160 () Bool)

(declare-fun lt!1002225 () Int)

(assert (=> d!814160 (>= lt!1002225 0)))

(declare-fun e!1771339 () Int)

(assert (=> d!814160 (= lt!1002225 e!1771339)))

(declare-fun c!454417 () Bool)

(assert (=> d!814160 (= c!454417 ((_ is Nil!32594) lt!1002113))))

(assert (=> d!814160 (= (size!25457 lt!1002113) lt!1002225)))

(declare-fun b!2802870 () Bool)

(assert (=> b!2802870 (= e!1771339 0)))

(declare-fun b!2802871 () Bool)

(assert (=> b!2802871 (= e!1771339 (+ 1 (size!25457 (t!228864 lt!1002113))))))

(assert (= (and d!814160 c!454417) b!2802870))

(assert (= (and d!814160 (not c!454417)) b!2802871))

(declare-fun m!3232645 () Bool)

(assert (=> b!2802871 m!3232645))

(assert (=> b!2802704 d!814160))

(declare-fun d!814162 () Bool)

(declare-fun e!1771342 () Bool)

(assert (=> d!814162 e!1771342))

(declare-fun res!1167908 () Bool)

(assert (=> d!814162 (=> (not res!1167908) (not e!1771342))))

(declare-fun lt!1002228 () tuple3!5226)

(declare-fun derivationStepZipper!382 ((InoxSet Context!4898) C!16620) (InoxSet Context!4898))

(assert (=> d!814162 (= res!1167908 (= (_1!19712 lt!1002228) (derivationStepZipper!382 z!3684 lt!1002125)))))

(declare-fun choose!16533 ((InoxSet Context!4898) C!16620 CacheUp!2660 CacheDown!2788) tuple3!5226)

(assert (=> d!814162 (= lt!1002228 (choose!16533 z!3684 lt!1002125 cacheUp!890 cacheDown!1009))))

(assert (=> d!814162 (= (derivationStepZipperMem!120 z!3684 lt!1002125 cacheUp!890 cacheDown!1009) lt!1002228)))

(declare-fun b!2802876 () Bool)

(declare-fun res!1167909 () Bool)

(assert (=> b!2802876 (=> (not res!1167909) (not e!1771342))))

(assert (=> b!2802876 (= res!1167909 (valid!3174 (_2!19712 lt!1002228)))))

(declare-fun b!2802877 () Bool)

(assert (=> b!2802877 (= e!1771342 (valid!3173 (_3!3083 lt!1002228)))))

(assert (= (and d!814162 res!1167908) b!2802876))

(assert (= (and b!2802876 res!1167909) b!2802877))

(declare-fun m!3232647 () Bool)

(assert (=> d!814162 m!3232647))

(declare-fun m!3232649 () Bool)

(assert (=> d!814162 m!3232649))

(declare-fun m!3232651 () Bool)

(assert (=> b!2802876 m!3232651))

(declare-fun m!3232653 () Bool)

(assert (=> b!2802877 m!3232653))

(assert (=> b!2802704 d!814162))

(declare-fun d!814164 () Bool)

(assert (=> d!814164 (= (valid!3174 (_2!19712 lt!1002120)) (validCacheMapUp!402 (cache!4102 (_2!19712 lt!1002120))))))

(declare-fun bs!516052 () Bool)

(assert (= bs!516052 d!814164))

(declare-fun m!3232655 () Bool)

(assert (=> bs!516052 m!3232655))

(assert (=> b!2802731 d!814164))

(declare-fun b!2802886 () Bool)

(declare-fun e!1771350 () Bool)

(declare-fun tp!893485 () Bool)

(assert (=> b!2802886 (= e!1771350 tp!893485)))

(declare-fun setIsEmpty!24630 () Bool)

(declare-fun setRes!24630 () Bool)

(assert (=> setIsEmpty!24630 setRes!24630))

(declare-fun setElem!24630 () Context!4898)

(declare-fun tp!893483 () Bool)

(declare-fun setNonEmpty!24630 () Bool)

(assert (=> setNonEmpty!24630 (= setRes!24630 (and tp!893483 (inv!44265 setElem!24630) e!1771350))))

(declare-fun setRest!24630 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24630 (= (_2!19709 (h!38012 mapDefault!18416)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24630 true) setRest!24630))))

(declare-fun e!1771349 () Bool)

(declare-fun tp!893484 () Bool)

(declare-fun b!2802887 () Bool)

(declare-fun e!1771351 () Bool)

(declare-fun tp!893486 () Bool)

(assert (=> b!2802887 (= e!1771351 (and tp!893484 (inv!44265 (_2!19708 (_1!19709 (h!38012 mapDefault!18416)))) e!1771349 tp_is_empty!14275 setRes!24630 tp!893486))))

(declare-fun condSetEmpty!24630 () Bool)

(assert (=> b!2802887 (= condSetEmpty!24630 (= (_2!19709 (h!38012 mapDefault!18416)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802888 () Bool)

(declare-fun tp!893487 () Bool)

(assert (=> b!2802888 (= e!1771349 tp!893487)))

(assert (=> b!2802700 (= tp!893460 e!1771351)))

(assert (= b!2802887 b!2802888))

(assert (= (and b!2802887 condSetEmpty!24630) setIsEmpty!24630))

(assert (= (and b!2802887 (not condSetEmpty!24630)) setNonEmpty!24630))

(assert (= setNonEmpty!24630 b!2802886))

(assert (= (and b!2802700 ((_ is Cons!32592) mapDefault!18416)) b!2802887))

(declare-fun m!3232657 () Bool)

(assert (=> setNonEmpty!24630 m!3232657))

(declare-fun m!3232659 () Bool)

(assert (=> b!2802887 m!3232659))

(declare-fun setIsEmpty!24635 () Bool)

(declare-fun setRes!24635 () Bool)

(assert (=> setIsEmpty!24635 setRes!24635))

(declare-fun condMapEmpty!18419 () Bool)

(declare-fun mapDefault!18419 () List!32693)

(assert (=> mapNonEmpty!18416 (= condMapEmpty!18419 (= mapRest!18416 ((as const (Array (_ BitVec 32) List!32693)) mapDefault!18419)))))

(declare-fun e!1771367 () Bool)

(declare-fun mapRes!18419 () Bool)

(assert (=> mapNonEmpty!18416 (= tp!893472 (and e!1771367 mapRes!18419))))

(declare-fun tp!893507 () Bool)

(declare-fun e!1771368 () Bool)

(declare-fun setNonEmpty!24635 () Bool)

(declare-fun setElem!24636 () Context!4898)

(assert (=> setNonEmpty!24635 (= setRes!24635 (and tp!893507 (inv!44265 setElem!24636) e!1771368))))

(declare-fun setRest!24635 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24635 (= (_2!19711 (h!38013 mapDefault!18419)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24636 true) setRest!24635))))

(declare-fun mapValue!18419 () List!32693)

(declare-fun b!2802903 () Bool)

(declare-fun e!1771366 () Bool)

(declare-fun e!1771364 () Bool)

(declare-fun tp!893512 () Bool)

(declare-fun setRes!24636 () Bool)

(assert (=> b!2802903 (= e!1771364 (and (inv!44265 (_1!19710 (_1!19711 (h!38013 mapValue!18419)))) e!1771366 tp_is_empty!14275 setRes!24636 tp!893512))))

(declare-fun condSetEmpty!24635 () Bool)

(assert (=> b!2802903 (= condSetEmpty!24635 (= (_2!19711 (h!38013 mapValue!18419)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802904 () Bool)

(declare-fun e!1771365 () Bool)

(declare-fun tp!893509 () Bool)

(assert (=> b!2802904 (= e!1771365 tp!893509)))

(declare-fun setIsEmpty!24636 () Bool)

(assert (=> setIsEmpty!24636 setRes!24636))

(declare-fun b!2802905 () Bool)

(declare-fun tp!893510 () Bool)

(assert (=> b!2802905 (= e!1771366 tp!893510)))

(declare-fun b!2802906 () Bool)

(declare-fun tp!893506 () Bool)

(assert (=> b!2802906 (= e!1771368 tp!893506)))

(declare-fun b!2802907 () Bool)

(declare-fun e!1771369 () Bool)

(declare-fun tp!893513 () Bool)

(assert (=> b!2802907 (= e!1771369 tp!893513)))

(declare-fun setElem!24635 () Context!4898)

(declare-fun setNonEmpty!24636 () Bool)

(declare-fun tp!893514 () Bool)

(assert (=> setNonEmpty!24636 (= setRes!24636 (and tp!893514 (inv!44265 setElem!24635) e!1771369))))

(declare-fun setRest!24636 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24636 (= (_2!19711 (h!38013 mapValue!18419)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24635 true) setRest!24636))))

(declare-fun mapNonEmpty!18419 () Bool)

(declare-fun tp!893508 () Bool)

(assert (=> mapNonEmpty!18419 (= mapRes!18419 (and tp!893508 e!1771364))))

(declare-fun mapRest!18419 () (Array (_ BitVec 32) List!32693))

(declare-fun mapKey!18419 () (_ BitVec 32))

(assert (=> mapNonEmpty!18419 (= mapRest!18416 (store mapRest!18419 mapKey!18419 mapValue!18419))))

(declare-fun mapIsEmpty!18419 () Bool)

(assert (=> mapIsEmpty!18419 mapRes!18419))

(declare-fun tp!893511 () Bool)

(declare-fun b!2802908 () Bool)

(assert (=> b!2802908 (= e!1771367 (and (inv!44265 (_1!19710 (_1!19711 (h!38013 mapDefault!18419)))) e!1771365 tp_is_empty!14275 setRes!24635 tp!893511))))

(declare-fun condSetEmpty!24636 () Bool)

(assert (=> b!2802908 (= condSetEmpty!24636 (= (_2!19711 (h!38013 mapDefault!18419)) ((as const (Array Context!4898 Bool)) false)))))

(assert (= (and mapNonEmpty!18416 condMapEmpty!18419) mapIsEmpty!18419))

(assert (= (and mapNonEmpty!18416 (not condMapEmpty!18419)) mapNonEmpty!18419))

(assert (= b!2802903 b!2802905))

(assert (= (and b!2802903 condSetEmpty!24635) setIsEmpty!24636))

(assert (= (and b!2802903 (not condSetEmpty!24635)) setNonEmpty!24636))

(assert (= setNonEmpty!24636 b!2802907))

(assert (= (and mapNonEmpty!18419 ((_ is Cons!32593) mapValue!18419)) b!2802903))

(assert (= b!2802908 b!2802904))

(assert (= (and b!2802908 condSetEmpty!24636) setIsEmpty!24635))

(assert (= (and b!2802908 (not condSetEmpty!24636)) setNonEmpty!24635))

(assert (= setNonEmpty!24635 b!2802906))

(assert (= (and mapNonEmpty!18416 ((_ is Cons!32593) mapDefault!18419)) b!2802908))

(declare-fun m!3232661 () Bool)

(assert (=> b!2802903 m!3232661))

(declare-fun m!3232663 () Bool)

(assert (=> setNonEmpty!24636 m!3232663))

(declare-fun m!3232665 () Bool)

(assert (=> mapNonEmpty!18419 m!3232665))

(declare-fun m!3232667 () Bool)

(assert (=> b!2802908 m!3232667))

(declare-fun m!3232669 () Bool)

(assert (=> setNonEmpty!24635 m!3232669))

(declare-fun e!1771376 () Bool)

(assert (=> mapNonEmpty!18416 (= tp!893456 e!1771376)))

(declare-fun setIsEmpty!24639 () Bool)

(declare-fun setRes!24639 () Bool)

(assert (=> setIsEmpty!24639 setRes!24639))

(declare-fun setElem!24639 () Context!4898)

(declare-fun setNonEmpty!24639 () Bool)

(declare-fun e!1771378 () Bool)

(declare-fun tp!893524 () Bool)

(assert (=> setNonEmpty!24639 (= setRes!24639 (and tp!893524 (inv!44265 setElem!24639) e!1771378))))

(declare-fun setRest!24639 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24639 (= (_2!19711 (h!38013 mapValue!18415)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24639 true) setRest!24639))))

(declare-fun b!2802917 () Bool)

(declare-fun tp!893526 () Bool)

(declare-fun e!1771377 () Bool)

(assert (=> b!2802917 (= e!1771376 (and (inv!44265 (_1!19710 (_1!19711 (h!38013 mapValue!18415)))) e!1771377 tp_is_empty!14275 setRes!24639 tp!893526))))

(declare-fun condSetEmpty!24639 () Bool)

(assert (=> b!2802917 (= condSetEmpty!24639 (= (_2!19711 (h!38013 mapValue!18415)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802918 () Bool)

(declare-fun tp!893525 () Bool)

(assert (=> b!2802918 (= e!1771378 tp!893525)))

(declare-fun b!2802919 () Bool)

(declare-fun tp!893523 () Bool)

(assert (=> b!2802919 (= e!1771377 tp!893523)))

(assert (= b!2802917 b!2802919))

(assert (= (and b!2802917 condSetEmpty!24639) setIsEmpty!24639))

(assert (= (and b!2802917 (not condSetEmpty!24639)) setNonEmpty!24639))

(assert (= setNonEmpty!24639 b!2802918))

(assert (= (and mapNonEmpty!18416 ((_ is Cons!32593) mapValue!18415)) b!2802917))

(declare-fun m!3232671 () Bool)

(assert (=> setNonEmpty!24639 m!3232671))

(declare-fun m!3232673 () Bool)

(assert (=> b!2802917 m!3232673))

(declare-fun e!1771379 () Bool)

(assert (=> b!2802728 (= tp!893469 e!1771379)))

(declare-fun setIsEmpty!24640 () Bool)

(declare-fun setRes!24640 () Bool)

(assert (=> setIsEmpty!24640 setRes!24640))

(declare-fun e!1771381 () Bool)

(declare-fun setNonEmpty!24640 () Bool)

(declare-fun tp!893528 () Bool)

(declare-fun setElem!24640 () Context!4898)

(assert (=> setNonEmpty!24640 (= setRes!24640 (and tp!893528 (inv!44265 setElem!24640) e!1771381))))

(declare-fun setRest!24640 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24640 (= (_2!19711 (h!38013 (zeroValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24640 true) setRest!24640))))

(declare-fun tp!893530 () Bool)

(declare-fun e!1771380 () Bool)

(declare-fun b!2802920 () Bool)

(assert (=> b!2802920 (= e!1771379 (and (inv!44265 (_1!19710 (_1!19711 (h!38013 (zeroValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))))) e!1771380 tp_is_empty!14275 setRes!24640 tp!893530))))

(declare-fun condSetEmpty!24640 () Bool)

(assert (=> b!2802920 (= condSetEmpty!24640 (= (_2!19711 (h!38013 (zeroValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802921 () Bool)

(declare-fun tp!893529 () Bool)

(assert (=> b!2802921 (= e!1771381 tp!893529)))

(declare-fun b!2802922 () Bool)

(declare-fun tp!893527 () Bool)

(assert (=> b!2802922 (= e!1771380 tp!893527)))

(assert (= b!2802920 b!2802922))

(assert (= (and b!2802920 condSetEmpty!24640) setIsEmpty!24640))

(assert (= (and b!2802920 (not condSetEmpty!24640)) setNonEmpty!24640))

(assert (= setNonEmpty!24640 b!2802921))

(assert (= (and b!2802728 ((_ is Cons!32593) (zeroValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))) b!2802920))

(declare-fun m!3232675 () Bool)

(assert (=> setNonEmpty!24640 m!3232675))

(declare-fun m!3232677 () Bool)

(assert (=> b!2802920 m!3232677))

(declare-fun e!1771382 () Bool)

(assert (=> b!2802728 (= tp!893466 e!1771382)))

(declare-fun setIsEmpty!24641 () Bool)

(declare-fun setRes!24641 () Bool)

(assert (=> setIsEmpty!24641 setRes!24641))

(declare-fun e!1771384 () Bool)

(declare-fun setNonEmpty!24641 () Bool)

(declare-fun tp!893532 () Bool)

(declare-fun setElem!24641 () Context!4898)

(assert (=> setNonEmpty!24641 (= setRes!24641 (and tp!893532 (inv!44265 setElem!24641) e!1771384))))

(declare-fun setRest!24641 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24641 (= (_2!19711 (h!38013 (minValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24641 true) setRest!24641))))

(declare-fun b!2802923 () Bool)

(declare-fun tp!893534 () Bool)

(declare-fun e!1771383 () Bool)

(assert (=> b!2802923 (= e!1771382 (and (inv!44265 (_1!19710 (_1!19711 (h!38013 (minValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))))) e!1771383 tp_is_empty!14275 setRes!24641 tp!893534))))

(declare-fun condSetEmpty!24641 () Bool)

(assert (=> b!2802923 (= condSetEmpty!24641 (= (_2!19711 (h!38013 (minValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802924 () Bool)

(declare-fun tp!893533 () Bool)

(assert (=> b!2802924 (= e!1771384 tp!893533)))

(declare-fun b!2802925 () Bool)

(declare-fun tp!893531 () Bool)

(assert (=> b!2802925 (= e!1771383 tp!893531)))

(assert (= b!2802923 b!2802925))

(assert (= (and b!2802923 condSetEmpty!24641) setIsEmpty!24641))

(assert (= (and b!2802923 (not condSetEmpty!24641)) setNonEmpty!24641))

(assert (= setNonEmpty!24641 b!2802924))

(assert (= (and b!2802728 ((_ is Cons!32593) (minValue!4312 (v!34196 (underlying!8309 (v!34197 (underlying!8310 (cache!4102 cacheUp!890)))))))) b!2802923))

(declare-fun m!3232679 () Bool)

(assert (=> setNonEmpty!24641 m!3232679))

(declare-fun m!3232681 () Bool)

(assert (=> b!2802923 m!3232681))

(declare-fun b!2802930 () Bool)

(declare-fun e!1771387 () Bool)

(declare-fun tp!893537 () Bool)

(assert (=> b!2802930 (= e!1771387 (and tp_is_empty!14275 tp!893537))))

(assert (=> b!2802715 (= tp!893457 e!1771387)))

(assert (= (and b!2802715 ((_ is Cons!32594) (t!228864 testedSuffix!143))) b!2802930))

(declare-fun b!2802931 () Bool)

(declare-fun e!1771388 () Bool)

(declare-fun tp!893538 () Bool)

(assert (=> b!2802931 (= e!1771388 (and tp_is_empty!14275 tp!893538))))

(assert (=> b!2802708 (= tp!893470 e!1771388)))

(assert (= (and b!2802708 ((_ is Cons!32594) (t!228864 testedP!183))) b!2802931))

(declare-fun condSetEmpty!24644 () Bool)

(assert (=> setNonEmpty!24627 (= condSetEmpty!24644 (= setRest!24627 ((as const (Array Context!4898 Bool)) false)))))

(declare-fun setRes!24644 () Bool)

(assert (=> setNonEmpty!24627 (= tp!893468 setRes!24644)))

(declare-fun setIsEmpty!24644 () Bool)

(assert (=> setIsEmpty!24644 setRes!24644))

(declare-fun setElem!24644 () Context!4898)

(declare-fun setNonEmpty!24644 () Bool)

(declare-fun e!1771391 () Bool)

(declare-fun tp!893543 () Bool)

(assert (=> setNonEmpty!24644 (= setRes!24644 (and tp!893543 (inv!44265 setElem!24644) e!1771391))))

(declare-fun setRest!24644 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24644 (= setRest!24627 ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24644 true) setRest!24644))))

(declare-fun b!2802936 () Bool)

(declare-fun tp!893544 () Bool)

(assert (=> b!2802936 (= e!1771391 tp!893544)))

(assert (= (and setNonEmpty!24627 condSetEmpty!24644) setIsEmpty!24644))

(assert (= (and setNonEmpty!24627 (not condSetEmpty!24644)) setNonEmpty!24644))

(assert (= setNonEmpty!24644 b!2802936))

(declare-fun m!3232683 () Bool)

(assert (=> setNonEmpty!24644 m!3232683))

(declare-fun condMapEmpty!18422 () Bool)

(declare-fun mapDefault!18422 () List!32692)

(assert (=> mapNonEmpty!18415 (= condMapEmpty!18422 (= mapRest!18415 ((as const (Array (_ BitVec 32) List!32692)) mapDefault!18422)))))

(declare-fun e!1771404 () Bool)

(declare-fun mapRes!18422 () Bool)

(assert (=> mapNonEmpty!18415 (= tp!893471 (and e!1771404 mapRes!18422))))

(declare-fun setIsEmpty!24649 () Bool)

(declare-fun setRes!24649 () Bool)

(assert (=> setIsEmpty!24649 setRes!24649))

(declare-fun b!2802951 () Bool)

(declare-fun e!1771407 () Bool)

(declare-fun tp!893572 () Bool)

(assert (=> b!2802951 (= e!1771407 tp!893572)))

(declare-fun b!2802952 () Bool)

(declare-fun e!1771406 () Bool)

(declare-fun tp!893568 () Bool)

(assert (=> b!2802952 (= e!1771406 tp!893568)))

(declare-fun e!1771405 () Bool)

(declare-fun b!2802953 () Bool)

(declare-fun e!1771408 () Bool)

(declare-fun tp!893576 () Bool)

(declare-fun tp!893577 () Bool)

(declare-fun mapValue!18422 () List!32692)

(assert (=> b!2802953 (= e!1771405 (and tp!893577 (inv!44265 (_2!19708 (_1!19709 (h!38012 mapValue!18422)))) e!1771408 tp_is_empty!14275 setRes!24649 tp!893576))))

(declare-fun condSetEmpty!24649 () Bool)

(assert (=> b!2802953 (= condSetEmpty!24649 (= (_2!19709 (h!38012 mapValue!18422)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun setElem!24649 () Context!4898)

(declare-fun setNonEmpty!24649 () Bool)

(declare-fun tp!893571 () Bool)

(assert (=> setNonEmpty!24649 (= setRes!24649 (and tp!893571 (inv!44265 setElem!24649) e!1771407))))

(declare-fun setRest!24649 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24649 (= (_2!19709 (h!38012 mapValue!18422)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24649 true) setRest!24649))))

(declare-fun setNonEmpty!24650 () Bool)

(declare-fun tp!893570 () Bool)

(declare-fun setRes!24650 () Bool)

(declare-fun setElem!24650 () Context!4898)

(declare-fun e!1771409 () Bool)

(assert (=> setNonEmpty!24650 (= setRes!24650 (and tp!893570 (inv!44265 setElem!24650) e!1771409))))

(declare-fun setRest!24650 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24650 (= (_2!19709 (h!38012 mapDefault!18422)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24650 true) setRest!24650))))

(declare-fun setIsEmpty!24650 () Bool)

(assert (=> setIsEmpty!24650 setRes!24650))

(declare-fun mapIsEmpty!18422 () Bool)

(assert (=> mapIsEmpty!18422 mapRes!18422))

(declare-fun tp!893575 () Bool)

(declare-fun tp!893567 () Bool)

(declare-fun b!2802954 () Bool)

(assert (=> b!2802954 (= e!1771404 (and tp!893567 (inv!44265 (_2!19708 (_1!19709 (h!38012 mapDefault!18422)))) e!1771406 tp_is_empty!14275 setRes!24650 tp!893575))))

(declare-fun condSetEmpty!24650 () Bool)

(assert (=> b!2802954 (= condSetEmpty!24650 (= (_2!19709 (h!38012 mapDefault!18422)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802955 () Bool)

(declare-fun tp!893573 () Bool)

(assert (=> b!2802955 (= e!1771409 tp!893573)))

(declare-fun mapNonEmpty!18422 () Bool)

(declare-fun tp!893574 () Bool)

(assert (=> mapNonEmpty!18422 (= mapRes!18422 (and tp!893574 e!1771405))))

(declare-fun mapKey!18422 () (_ BitVec 32))

(declare-fun mapRest!18422 () (Array (_ BitVec 32) List!32692))

(assert (=> mapNonEmpty!18422 (= mapRest!18415 (store mapRest!18422 mapKey!18422 mapValue!18422))))

(declare-fun b!2802956 () Bool)

(declare-fun tp!893569 () Bool)

(assert (=> b!2802956 (= e!1771408 tp!893569)))

(assert (= (and mapNonEmpty!18415 condMapEmpty!18422) mapIsEmpty!18422))

(assert (= (and mapNonEmpty!18415 (not condMapEmpty!18422)) mapNonEmpty!18422))

(assert (= b!2802953 b!2802956))

(assert (= (and b!2802953 condSetEmpty!24649) setIsEmpty!24649))

(assert (= (and b!2802953 (not condSetEmpty!24649)) setNonEmpty!24649))

(assert (= setNonEmpty!24649 b!2802951))

(assert (= (and mapNonEmpty!18422 ((_ is Cons!32592) mapValue!18422)) b!2802953))

(assert (= b!2802954 b!2802952))

(assert (= (and b!2802954 condSetEmpty!24650) setIsEmpty!24650))

(assert (= (and b!2802954 (not condSetEmpty!24650)) setNonEmpty!24650))

(assert (= setNonEmpty!24650 b!2802955))

(assert (= (and mapNonEmpty!18415 ((_ is Cons!32592) mapDefault!18422)) b!2802954))

(declare-fun m!3232685 () Bool)

(assert (=> b!2802953 m!3232685))

(declare-fun m!3232687 () Bool)

(assert (=> setNonEmpty!24649 m!3232687))

(declare-fun m!3232689 () Bool)

(assert (=> b!2802954 m!3232689))

(declare-fun m!3232691 () Bool)

(assert (=> mapNonEmpty!18422 m!3232691))

(declare-fun m!3232693 () Bool)

(assert (=> setNonEmpty!24650 m!3232693))

(declare-fun b!2802957 () Bool)

(declare-fun e!1771411 () Bool)

(declare-fun tp!893580 () Bool)

(assert (=> b!2802957 (= e!1771411 tp!893580)))

(declare-fun setIsEmpty!24651 () Bool)

(declare-fun setRes!24651 () Bool)

(assert (=> setIsEmpty!24651 setRes!24651))

(declare-fun tp!893578 () Bool)

(declare-fun setElem!24651 () Context!4898)

(declare-fun setNonEmpty!24651 () Bool)

(assert (=> setNonEmpty!24651 (= setRes!24651 (and tp!893578 (inv!44265 setElem!24651) e!1771411))))

(declare-fun setRest!24651 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24651 (= (_2!19709 (h!38012 mapValue!18416)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24651 true) setRest!24651))))

(declare-fun tp!893579 () Bool)

(declare-fun e!1771412 () Bool)

(declare-fun tp!893581 () Bool)

(declare-fun e!1771410 () Bool)

(declare-fun b!2802958 () Bool)

(assert (=> b!2802958 (= e!1771412 (and tp!893579 (inv!44265 (_2!19708 (_1!19709 (h!38012 mapValue!18416)))) e!1771410 tp_is_empty!14275 setRes!24651 tp!893581))))

(declare-fun condSetEmpty!24651 () Bool)

(assert (=> b!2802958 (= condSetEmpty!24651 (= (_2!19709 (h!38012 mapValue!18416)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802959 () Bool)

(declare-fun tp!893582 () Bool)

(assert (=> b!2802959 (= e!1771410 tp!893582)))

(assert (=> mapNonEmpty!18415 (= tp!893454 e!1771412)))

(assert (= b!2802958 b!2802959))

(assert (= (and b!2802958 condSetEmpty!24651) setIsEmpty!24651))

(assert (= (and b!2802958 (not condSetEmpty!24651)) setNonEmpty!24651))

(assert (= setNonEmpty!24651 b!2802957))

(assert (= (and mapNonEmpty!18415 ((_ is Cons!32592) mapValue!18416)) b!2802958))

(declare-fun m!3232695 () Bool)

(assert (=> setNonEmpty!24651 m!3232695))

(declare-fun m!3232697 () Bool)

(assert (=> b!2802958 m!3232697))

(declare-fun e!1771418 () Bool)

(declare-fun tp!893591 () Bool)

(declare-fun tp!893590 () Bool)

(declare-fun b!2802968 () Bool)

(assert (=> b!2802968 (= e!1771418 (and (inv!44264 (left!24605 (c!454371 totalInput!758))) tp!893590 (inv!44264 (right!24935 (c!454371 totalInput!758))) tp!893591))))

(declare-fun b!2802970 () Bool)

(declare-fun e!1771417 () Bool)

(declare-fun tp!893589 () Bool)

(assert (=> b!2802970 (= e!1771417 tp!893589)))

(declare-fun b!2802969 () Bool)

(declare-fun inv!44271 (IArray!20181) Bool)

(assert (=> b!2802969 (= e!1771418 (and (inv!44271 (xs!13200 (c!454371 totalInput!758))) e!1771417))))

(assert (=> b!2802706 (= tp!893463 (and (inv!44264 (c!454371 totalInput!758)) e!1771418))))

(assert (= (and b!2802706 ((_ is Node!10088) (c!454371 totalInput!758))) b!2802968))

(assert (= b!2802969 b!2802970))

(assert (= (and b!2802706 ((_ is Leaf!15372) (c!454371 totalInput!758))) b!2802969))

(declare-fun m!3232699 () Bool)

(assert (=> b!2802968 m!3232699))

(declare-fun m!3232701 () Bool)

(assert (=> b!2802968 m!3232701))

(declare-fun m!3232703 () Bool)

(assert (=> b!2802969 m!3232703))

(assert (=> b!2802706 m!3232377))

(declare-fun b!2802975 () Bool)

(declare-fun e!1771421 () Bool)

(declare-fun tp!893596 () Bool)

(declare-fun tp!893597 () Bool)

(assert (=> b!2802975 (= e!1771421 (and tp!893596 tp!893597))))

(assert (=> b!2802734 (= tp!893462 e!1771421)))

(assert (= (and b!2802734 ((_ is Cons!32591) (exprs!2949 setElem!24627))) b!2802975))

(declare-fun e!1771422 () Bool)

(assert (=> b!2802702 (= tp!893459 e!1771422)))

(declare-fun setIsEmpty!24652 () Bool)

(declare-fun setRes!24652 () Bool)

(assert (=> setIsEmpty!24652 setRes!24652))

(declare-fun setElem!24652 () Context!4898)

(declare-fun e!1771424 () Bool)

(declare-fun tp!893599 () Bool)

(declare-fun setNonEmpty!24652 () Bool)

(assert (=> setNonEmpty!24652 (= setRes!24652 (and tp!893599 (inv!44265 setElem!24652) e!1771424))))

(declare-fun setRest!24652 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24652 (= (_2!19711 (h!38013 mapDefault!18415)) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24652 true) setRest!24652))))

(declare-fun b!2802976 () Bool)

(declare-fun e!1771423 () Bool)

(declare-fun tp!893601 () Bool)

(assert (=> b!2802976 (= e!1771422 (and (inv!44265 (_1!19710 (_1!19711 (h!38013 mapDefault!18415)))) e!1771423 tp_is_empty!14275 setRes!24652 tp!893601))))

(declare-fun condSetEmpty!24652 () Bool)

(assert (=> b!2802976 (= condSetEmpty!24652 (= (_2!19711 (h!38013 mapDefault!18415)) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802977 () Bool)

(declare-fun tp!893600 () Bool)

(assert (=> b!2802977 (= e!1771424 tp!893600)))

(declare-fun b!2802978 () Bool)

(declare-fun tp!893598 () Bool)

(assert (=> b!2802978 (= e!1771423 tp!893598)))

(assert (= b!2802976 b!2802978))

(assert (= (and b!2802976 condSetEmpty!24652) setIsEmpty!24652))

(assert (= (and b!2802976 (not condSetEmpty!24652)) setNonEmpty!24652))

(assert (= setNonEmpty!24652 b!2802977))

(assert (= (and b!2802702 ((_ is Cons!32593) mapDefault!18415)) b!2802976))

(declare-fun m!3232705 () Bool)

(assert (=> setNonEmpty!24652 m!3232705))

(declare-fun m!3232707 () Bool)

(assert (=> b!2802976 m!3232707))

(declare-fun b!2802979 () Bool)

(declare-fun e!1771426 () Bool)

(declare-fun tp!893604 () Bool)

(assert (=> b!2802979 (= e!1771426 tp!893604)))

(declare-fun setIsEmpty!24653 () Bool)

(declare-fun setRes!24653 () Bool)

(assert (=> setIsEmpty!24653 setRes!24653))

(declare-fun setNonEmpty!24653 () Bool)

(declare-fun setElem!24653 () Context!4898)

(declare-fun tp!893602 () Bool)

(assert (=> setNonEmpty!24653 (= setRes!24653 (and tp!893602 (inv!44265 setElem!24653) e!1771426))))

(declare-fun setRest!24653 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24653 (= (_2!19709 (h!38012 (zeroValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24653 true) setRest!24653))))

(declare-fun b!2802980 () Bool)

(declare-fun e!1771425 () Bool)

(declare-fun tp!893605 () Bool)

(declare-fun tp!893603 () Bool)

(declare-fun e!1771427 () Bool)

(assert (=> b!2802980 (= e!1771427 (and tp!893603 (inv!44265 (_2!19708 (_1!19709 (h!38012 (zeroValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))))) e!1771425 tp_is_empty!14275 setRes!24653 tp!893605))))

(declare-fun condSetEmpty!24653 () Bool)

(assert (=> b!2802980 (= condSetEmpty!24653 (= (_2!19709 (h!38012 (zeroValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802981 () Bool)

(declare-fun tp!893606 () Bool)

(assert (=> b!2802981 (= e!1771425 tp!893606)))

(assert (=> b!2802712 (= tp!893458 e!1771427)))

(assert (= b!2802980 b!2802981))

(assert (= (and b!2802980 condSetEmpty!24653) setIsEmpty!24653))

(assert (= (and b!2802980 (not condSetEmpty!24653)) setNonEmpty!24653))

(assert (= setNonEmpty!24653 b!2802979))

(assert (= (and b!2802712 ((_ is Cons!32592) (zeroValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))) b!2802980))

(declare-fun m!3232709 () Bool)

(assert (=> setNonEmpty!24653 m!3232709))

(declare-fun m!3232711 () Bool)

(assert (=> b!2802980 m!3232711))

(declare-fun b!2802982 () Bool)

(declare-fun e!1771429 () Bool)

(declare-fun tp!893609 () Bool)

(assert (=> b!2802982 (= e!1771429 tp!893609)))

(declare-fun setIsEmpty!24654 () Bool)

(declare-fun setRes!24654 () Bool)

(assert (=> setIsEmpty!24654 setRes!24654))

(declare-fun setNonEmpty!24654 () Bool)

(declare-fun tp!893607 () Bool)

(declare-fun setElem!24654 () Context!4898)

(assert (=> setNonEmpty!24654 (= setRes!24654 (and tp!893607 (inv!44265 setElem!24654) e!1771429))))

(declare-fun setRest!24654 () (InoxSet Context!4898))

(assert (=> setNonEmpty!24654 (= (_2!19709 (h!38012 (minValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4898 Bool)) false) setElem!24654 true) setRest!24654))))

(declare-fun tp!893608 () Bool)

(declare-fun b!2802983 () Bool)

(declare-fun e!1771428 () Bool)

(declare-fun tp!893610 () Bool)

(declare-fun e!1771430 () Bool)

(assert (=> b!2802983 (= e!1771430 (and tp!893608 (inv!44265 (_2!19708 (_1!19709 (h!38012 (minValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))))) e!1771428 tp_is_empty!14275 setRes!24654 tp!893610))))

(declare-fun condSetEmpty!24654 () Bool)

(assert (=> b!2802983 (= condSetEmpty!24654 (= (_2!19709 (h!38012 (minValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))) ((as const (Array Context!4898 Bool)) false)))))

(declare-fun b!2802984 () Bool)

(declare-fun tp!893611 () Bool)

(assert (=> b!2802984 (= e!1771428 tp!893611)))

(assert (=> b!2802712 (= tp!893461 e!1771430)))

(assert (= b!2802983 b!2802984))

(assert (= (and b!2802983 condSetEmpty!24654) setIsEmpty!24654))

(assert (= (and b!2802983 (not condSetEmpty!24654)) setNonEmpty!24654))

(assert (= setNonEmpty!24654 b!2802982))

(assert (= (and b!2802712 ((_ is Cons!32592) (minValue!4311 (v!34194 (underlying!8307 (v!34195 (underlying!8308 (cache!4101 cacheDown!1009)))))))) b!2802983))

(declare-fun m!3232713 () Bool)

(assert (=> setNonEmpty!24654 m!3232713))

(declare-fun m!3232715 () Bool)

(assert (=> b!2802983 m!3232715))

(check-sat (not bm!182893) (not b!2802951) (not b!2802841) (not d!814120) (not b!2802930) (not b!2802931) (not b!2802793) (not b!2802802) (not b!2802983) (not d!814140) (not d!814116) (not d!814164) (not b_next!80197) (not b!2802842) (not b!2802810) (not setNonEmpty!24652) (not d!814110) (not b!2802977) (not b!2802959) b_and!204231 (not b!2802979) (not b!2802982) (not setNonEmpty!24639) (not b!2802917) (not b!2802984) tp_is_empty!14275 (not b!2802809) (not b!2802798) (not b!2802953) (not d!814138) (not setNonEmpty!24640) (not b!2802918) (not b!2802827) (not b!2802767) (not b!2802970) (not b!2802923) (not b!2802978) (not b!2802958) (not b!2802921) b_and!204233 (not d!814162) (not setNonEmpty!24644) (not d!814114) (not b!2802745) (not b!2802823) (not d!814154) (not setNonEmpty!24636) (not b!2802907) (not b!2802869) (not d!814100) (not d!814092) (not d!814072) (not d!814130) (not b!2802840) (not b!2802797) (not b!2802925) (not b!2802757) (not d!814104) (not setNonEmpty!24641) (not setNonEmpty!24654) (not d!814070) (not d!814158) (not d!814066) (not b!2802867) (not d!814094) (not b!2802751) (not b!2802936) (not b!2802752) (not b!2802822) (not b!2802924) (not b!2802799) (not b!2802981) (not b!2802876) (not b!2802817) (not b!2802758) (not b!2802784) (not b!2802906) (not bm!182892) (not b!2802785) (not b!2802770) (not b!2802744) (not b!2802772) (not setNonEmpty!24653) (not b!2802922) (not d!814086) (not b_next!80203) (not b!2802830) (not b!2802980) (not d!814068) (not bm!182896) (not b!2802763) (not mapNonEmpty!18422) (not b!2802786) (not d!814132) (not b!2802871) (not b!2802805) (not d!814102) (not d!814152) b_and!204235 (not d!814146) (not b!2802957) (not b!2802903) (not b!2802806) (not setNonEmpty!24650) (not b!2802877) (not b!2802887) (not d!814112) (not b!2802952) (not b!2802975) (not setNonEmpty!24651) (not b!2802955) (not b!2802826) (not b!2802886) (not b_next!80201) (not b!2802825) (not b!2802956) (not b!2802801) (not setNonEmpty!24635) (not d!814080) (not mapNonEmpty!18419) (not b!2802969) (not d!814098) (not b!2802920) (not d!814082) (not b!2802905) (not b!2802919) (not b!2802908) (not b!2802821) (not setNonEmpty!24649) b_and!204237 (not b!2802795) (not b!2802888) (not d!814064) (not b_next!80199) (not b!2802904) (not b!2802833) (not b!2802706) (not b!2802954) (not d!814078) (not d!814150) (not d!814090) (not b!2802773) (not b!2802976) (not b!2802819) (not d!814124) (not setNonEmpty!24630) (not b!2802968))
(check-sat (not b_next!80197) b_and!204231 b_and!204233 (not b_next!80203) b_and!204235 (not b_next!80201) b_and!204237 (not b_next!80199))
