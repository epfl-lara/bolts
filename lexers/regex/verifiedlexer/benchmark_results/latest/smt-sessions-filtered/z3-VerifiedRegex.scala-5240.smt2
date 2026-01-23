; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269232 () Bool)

(assert start!269232)

(declare-fun b!2786220 () Bool)

(declare-fun b_free!78789 () Bool)

(declare-fun b_next!79493 () Bool)

(assert (=> b!2786220 (= b_free!78789 (not b_next!79493))))

(declare-fun tp!883457 () Bool)

(declare-fun b_and!203527 () Bool)

(assert (=> b!2786220 (= tp!883457 b_and!203527)))

(declare-fun b!2786232 () Bool)

(declare-fun b_free!78791 () Bool)

(declare-fun b_next!79495 () Bool)

(assert (=> b!2786232 (= b_free!78791 (not b_next!79495))))

(declare-fun tp!883458 () Bool)

(declare-fun b_and!203529 () Bool)

(assert (=> b!2786232 (= tp!883458 b_and!203529)))

(declare-fun b!2786241 () Bool)

(declare-fun b_free!78793 () Bool)

(declare-fun b_next!79497 () Bool)

(assert (=> b!2786241 (= b_free!78793 (not b_next!79497))))

(declare-fun tp!883460 () Bool)

(declare-fun b_and!203531 () Bool)

(assert (=> b!2786241 (= tp!883460 b_and!203531)))

(declare-fun b!2786218 () Bool)

(declare-fun b_free!78795 () Bool)

(declare-fun b_next!79499 () Bool)

(assert (=> b!2786218 (= b_free!78795 (not b_next!79499))))

(declare-fun tp!883456 () Bool)

(declare-fun b_and!203533 () Bool)

(assert (=> b!2786218 (= tp!883456 b_and!203533)))

(declare-fun b!2786212 () Bool)

(declare-fun e!1758278 () Bool)

(declare-fun e!1758285 () Bool)

(assert (=> b!2786212 (= e!1758278 e!1758285)))

(declare-fun b!2786213 () Bool)

(declare-datatypes ((Unit!46462 0))(
  ( (Unit!46463) )
))
(declare-fun e!1758280 () Unit!46462)

(declare-fun Unit!46464 () Unit!46462)

(assert (=> b!2786213 (= e!1758280 Unit!46464)))

(declare-fun lt!995341 () Unit!46462)

(declare-datatypes ((C!16448 0))(
  ( (C!16449 (val!10158 Int)) )
))
(declare-datatypes ((List!32339 0))(
  ( (Nil!32239) (Cons!32239 (h!37659 C!16448) (t!228481 List!32339)) )
))
(declare-fun lt!995329 () List!32339)

(declare-fun lemmaIsPrefixRefl!1690 (List!32339 List!32339) Unit!46462)

(assert (=> b!2786213 (= lt!995341 (lemmaIsPrefixRefl!1690 lt!995329 lt!995329))))

(declare-fun isPrefix!2586 (List!32339 List!32339) Bool)

(assert (=> b!2786213 (isPrefix!2586 lt!995329 lt!995329)))

(declare-fun lt!995330 () Unit!46462)

(declare-fun testedP!183 () List!32339)

(declare-fun lemmaIsPrefixSameLengthThenSameList!470 (List!32339 List!32339 List!32339) Unit!46462)

(assert (=> b!2786213 (= lt!995330 (lemmaIsPrefixSameLengthThenSameList!470 lt!995329 testedP!183 lt!995329))))

(assert (=> b!2786213 false))

(declare-fun mapNonEmpty!17735 () Bool)

(declare-fun mapRes!17735 () Bool)

(declare-fun tp!883466 () Bool)

(declare-fun tp!883455 () Bool)

(assert (=> mapNonEmpty!17735 (= mapRes!17735 (and tp!883466 tp!883455))))

(declare-datatypes ((Regex!8145 0))(
  ( (ElementMatch!8145 (c!452508 C!16448)) (Concat!13233 (regOne!16802 Regex!8145) (regTwo!16802 Regex!8145)) (EmptyExpr!8145) (Star!8145 (reg!8474 Regex!8145)) (EmptyLang!8145) (Union!8145 (regOne!16803 Regex!8145) (regTwo!16803 Regex!8145)) )
))
(declare-datatypes ((List!32340 0))(
  ( (Nil!32240) (Cons!32240 (h!37660 Regex!8145) (t!228482 List!32340)) )
))
(declare-datatypes ((Context!4726 0))(
  ( (Context!4727 (exprs!2863 List!32340)) )
))
(declare-datatypes ((tuple3!5008 0))(
  ( (tuple3!5009 (_1!19266 Regex!8145) (_2!19266 Context!4726) (_3!2974 C!16448)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32584 0))(
  ( (tuple2!32585 (_1!19267 tuple3!5008) (_2!19267 (InoxSet Context!4726))) )
))
(declare-datatypes ((List!32341 0))(
  ( (Nil!32241) (Cons!32241 (h!37661 tuple2!32584) (t!228483 List!32341)) )
))
(declare-fun mapValue!17735 () List!32341)

(declare-fun mapRest!17735 () (Array (_ BitVec 32) List!32341))

(declare-fun mapKey!17736 () (_ BitVec 32))

(declare-datatypes ((array!13836 0))(
  ( (array!13837 (arr!6168 (Array (_ BitVec 32) (_ BitVec 64))) (size!25059 (_ BitVec 32))) )
))
(declare-datatypes ((array!13838 0))(
  ( (array!13839 (arr!6169 (Array (_ BitVec 32) List!32341)) (size!25060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7780 0))(
  ( (LongMapFixedSize!7781 (defaultEntry!4275 Int) (mask!9699 (_ BitVec 32)) (extraKeys!4139 (_ BitVec 32)) (zeroValue!4149 List!32341) (minValue!4149 List!32341) (_size!7823 (_ BitVec 32)) (_keys!4190 array!13836) (_values!4171 array!13838) (_vacant!3951 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15369 0))(
  ( (Cell!15370 (v!33846 LongMapFixedSize!7780)) )
))
(declare-datatypes ((MutLongMap!3890 0))(
  ( (LongMap!3890 (underlying!7983 Cell!15369)) (MutLongMapExt!3889 (__x!21320 Int)) )
))
(declare-datatypes ((Cell!15371 0))(
  ( (Cell!15372 (v!33847 MutLongMap!3890)) )
))
(declare-datatypes ((Hashable!3806 0))(
  ( (HashableExt!3805 (__x!21321 Int)) )
))
(declare-datatypes ((MutableMap!3796 0))(
  ( (MutableMapExt!3795 (__x!21322 Int)) (HashMap!3796 (underlying!7984 Cell!15371) (hashF!5838 Hashable!3806) (_size!7824 (_ BitVec 32)) (defaultValue!3967 Int)) )
))
(declare-datatypes ((CacheDown!2624 0))(
  ( (CacheDown!2625 (cache!3939 MutableMap!3796)) )
))
(declare-fun cacheDown!1009 () CacheDown!2624)

(assert (=> mapNonEmpty!17735 (= (arr!6169 (_values!4171 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) (store mapRest!17735 mapKey!17736 mapValue!17735))))

(declare-fun b!2786214 () Bool)

(declare-fun e!1758288 () Bool)

(declare-fun e!1758265 () Bool)

(assert (=> b!2786214 (= e!1758288 e!1758265)))

(declare-fun res!1162743 () Bool)

(assert (=> b!2786214 (=> res!1162743 e!1758265)))

(declare-fun z!3684 () (InoxSet Context!4726))

(declare-fun lostCauseZipper!463 ((InoxSet Context!4726)) Bool)

(assert (=> b!2786214 (= res!1162743 (lostCauseZipper!463 z!3684))))

(declare-fun testedSuffix!143 () List!32339)

(declare-fun lt!995335 () List!32339)

(assert (=> b!2786214 (and (= testedSuffix!143 lt!995335) (= lt!995335 testedSuffix!143))))

(declare-fun lt!995326 () Unit!46462)

(declare-fun lemmaSamePrefixThenSameSuffix!1164 (List!32339 List!32339 List!32339 List!32339 List!32339) Unit!46462)

(assert (=> b!2786214 (= lt!995326 (lemmaSamePrefixThenSameSuffix!1164 testedP!183 testedSuffix!143 testedP!183 lt!995335 lt!995329))))

(declare-fun getSuffix!1263 (List!32339 List!32339) List!32339)

(assert (=> b!2786214 (= lt!995335 (getSuffix!1263 lt!995329 testedP!183))))

(declare-fun b!2786215 () Bool)

(declare-fun e!1758276 () Bool)

(declare-datatypes ((IArray!20035 0))(
  ( (IArray!20036 (innerList!10075 List!32339)) )
))
(declare-datatypes ((Conc!10015 0))(
  ( (Node!10015 (left!24479 Conc!10015) (right!24809 Conc!10015) (csize!20260 Int) (cheight!10226 Int)) (Leaf!15256 (xs!13126 IArray!20035) (csize!20261 Int)) (Empty!10015) )
))
(declare-datatypes ((BalanceConc!19644 0))(
  ( (BalanceConc!19645 (c!452509 Conc!10015)) )
))
(declare-fun totalInput!758 () BalanceConc!19644)

(declare-fun tp!883452 () Bool)

(declare-fun inv!43801 (Conc!10015) Bool)

(assert (=> b!2786215 (= e!1758276 (and (inv!43801 (c!452509 totalInput!758)) tp!883452))))

(declare-fun b!2786216 () Bool)

(declare-fun Unit!46465 () Unit!46462)

(assert (=> b!2786216 (= e!1758280 Unit!46465)))

(declare-fun b!2786217 () Bool)

(declare-fun e!1758270 () Bool)

(declare-fun e!1758289 () Bool)

(assert (=> b!2786217 (= e!1758270 e!1758289)))

(declare-fun res!1162745 () Bool)

(assert (=> b!2786217 (=> res!1162745 e!1758289)))

(declare-fun lt!995325 () Int)

(declare-fun lt!995340 () Int)

(assert (=> b!2786217 (= res!1162745 (>= lt!995325 lt!995340))))

(declare-fun lt!995324 () Unit!46462)

(assert (=> b!2786217 (= lt!995324 e!1758280)))

(declare-fun c!452507 () Bool)

(assert (=> b!2786217 (= c!452507 (= lt!995325 lt!995340))))

(declare-fun size!25061 (List!32339) Int)

(assert (=> b!2786217 (<= lt!995325 (size!25061 lt!995329))))

(declare-fun lt!995328 () Unit!46462)

(declare-fun lemmaIsPrefixThenSmallerEqSize!273 (List!32339 List!32339) Unit!46462)

(assert (=> b!2786217 (= lt!995328 (lemmaIsPrefixThenSmallerEqSize!273 testedP!183 lt!995329))))

(declare-fun setElem!23554 () Context!4726)

(declare-fun setRes!23554 () Bool)

(declare-fun e!1758264 () Bool)

(declare-fun setNonEmpty!23554 () Bool)

(declare-fun tp!883454 () Bool)

(declare-fun inv!43802 (Context!4726) Bool)

(assert (=> setNonEmpty!23554 (= setRes!23554 (and tp!883454 (inv!43802 setElem!23554) e!1758264))))

(declare-fun setRest!23554 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23554 (= z!3684 ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23554 true) setRest!23554))))

(declare-fun e!1758290 () Bool)

(declare-fun e!1758267 () Bool)

(declare-fun tp!883459 () Bool)

(declare-fun tp!883465 () Bool)

(declare-fun array_inv!4417 (array!13836) Bool)

(declare-fun array_inv!4418 (array!13838) Bool)

(assert (=> b!2786218 (= e!1758290 (and tp!883456 tp!883465 tp!883459 (array_inv!4417 (_keys!4190 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) (array_inv!4418 (_values!4171 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) e!1758267))))

(declare-fun setIsEmpty!23554 () Bool)

(assert (=> setIsEmpty!23554 setRes!23554))

(declare-fun mapIsEmpty!17735 () Bool)

(assert (=> mapIsEmpty!17735 mapRes!17735))

(declare-fun b!2786219 () Bool)

(declare-fun res!1162748 () Bool)

(declare-fun e!1758292 () Bool)

(assert (=> b!2786219 (=> res!1162748 e!1758292)))

(declare-datatypes ((tuple2!32586 0))(
  ( (tuple2!32587 (_1!19268 BalanceConc!19644) (_2!19268 BalanceConc!19644)) )
))
(declare-fun lt!995336 () tuple2!32586)

(declare-fun testedPSize!143 () Int)

(declare-fun size!25062 (BalanceConc!19644) Int)

(assert (=> b!2786219 (= res!1162748 (not (= (size!25062 (_1!19268 lt!995336)) testedPSize!143)))))

(declare-fun e!1758269 () Bool)

(declare-fun e!1758279 () Bool)

(assert (=> b!2786220 (= e!1758269 (and e!1758279 tp!883457))))

(declare-fun b!2786221 () Bool)

(declare-fun e!1758286 () Bool)

(declare-fun e!1758281 () Bool)

(declare-datatypes ((tuple2!32588 0))(
  ( (tuple2!32589 (_1!19269 Context!4726) (_2!19269 C!16448)) )
))
(declare-datatypes ((tuple2!32590 0))(
  ( (tuple2!32591 (_1!19270 tuple2!32588) (_2!19270 (InoxSet Context!4726))) )
))
(declare-datatypes ((List!32342 0))(
  ( (Nil!32242) (Cons!32242 (h!37662 tuple2!32590) (t!228484 List!32342)) )
))
(declare-datatypes ((array!13840 0))(
  ( (array!13841 (arr!6170 (Array (_ BitVec 32) List!32342)) (size!25063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7782 0))(
  ( (LongMapFixedSize!7783 (defaultEntry!4276 Int) (mask!9700 (_ BitVec 32)) (extraKeys!4140 (_ BitVec 32)) (zeroValue!4150 List!32342) (minValue!4150 List!32342) (_size!7825 (_ BitVec 32)) (_keys!4191 array!13836) (_values!4172 array!13840) (_vacant!3952 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15373 0))(
  ( (Cell!15374 (v!33848 LongMapFixedSize!7782)) )
))
(declare-datatypes ((MutLongMap!3891 0))(
  ( (LongMap!3891 (underlying!7985 Cell!15373)) (MutLongMapExt!3890 (__x!21323 Int)) )
))
(declare-fun lt!995334 () MutLongMap!3891)

(get-info :version)

(assert (=> b!2786221 (= e!1758286 (and e!1758281 ((_ is LongMap!3891) lt!995334)))))

(declare-datatypes ((Hashable!3807 0))(
  ( (HashableExt!3806 (__x!21324 Int)) )
))
(declare-datatypes ((Cell!15375 0))(
  ( (Cell!15376 (v!33849 MutLongMap!3891)) )
))
(declare-datatypes ((MutableMap!3797 0))(
  ( (MutableMapExt!3796 (__x!21325 Int)) (HashMap!3797 (underlying!7986 Cell!15375) (hashF!5839 Hashable!3807) (_size!7826 (_ BitVec 32)) (defaultValue!3968 Int)) )
))
(declare-datatypes ((CacheUp!2500 0))(
  ( (CacheUp!2501 (cache!3940 MutableMap!3797)) )
))
(declare-fun cacheUp!890 () CacheUp!2500)

(assert (=> b!2786221 (= lt!995334 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))

(declare-fun mapNonEmpty!17736 () Bool)

(declare-fun mapRes!17736 () Bool)

(declare-fun tp!883468 () Bool)

(declare-fun tp!883453 () Bool)

(assert (=> mapNonEmpty!17736 (= mapRes!17736 (and tp!883468 tp!883453))))

(declare-fun mapKey!17735 () (_ BitVec 32))

(declare-fun mapRest!17736 () (Array (_ BitVec 32) List!32342))

(declare-fun mapValue!17736 () List!32342)

(assert (=> mapNonEmpty!17736 (= (arr!6170 (_values!4172 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) (store mapRest!17736 mapKey!17735 mapValue!17736))))

(declare-fun b!2786222 () Bool)

(declare-fun e!1758268 () Bool)

(declare-fun e!1758275 () Bool)

(assert (=> b!2786222 (= e!1758268 e!1758275)))

(declare-fun res!1162744 () Bool)

(assert (=> b!2786222 (=> (not res!1162744) (not e!1758275))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2786222 (= res!1162744 (= totalInputSize!205 lt!995340))))

(assert (=> b!2786222 (= lt!995340 (size!25062 totalInput!758))))

(declare-fun b!2786223 () Bool)

(assert (=> b!2786223 (= e!1758281 e!1758278)))

(declare-fun b!2786224 () Bool)

(declare-fun e!1758287 () Bool)

(assert (=> b!2786224 (= e!1758287 e!1758268)))

(declare-fun res!1162746 () Bool)

(assert (=> b!2786224 (=> (not res!1162746) (not e!1758268))))

(assert (=> b!2786224 (= res!1162746 (= testedPSize!143 lt!995325))))

(assert (=> b!2786224 (= lt!995325 (size!25061 testedP!183))))

(declare-fun mapIsEmpty!17736 () Bool)

(assert (=> mapIsEmpty!17736 mapRes!17736))

(declare-fun b!2786225 () Bool)

(assert (=> b!2786225 (= e!1758289 (not (= testedSuffix!143 Nil!32239)))))

(declare-fun ++!7965 (List!32339 List!32339) List!32339)

(declare-fun head!6169 (List!32339) C!16448)

(assert (=> b!2786225 (isPrefix!2586 (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239)) lt!995329)))

(declare-fun lt!995332 () Unit!46462)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!466 (List!32339 List!32339) Unit!46462)

(assert (=> b!2786225 (= lt!995332 (lemmaAddHeadSuffixToPrefixStillPrefix!466 testedP!183 lt!995329))))

(declare-fun b!2786226 () Bool)

(declare-fun res!1162752 () Bool)

(assert (=> b!2786226 (=> (not res!1162752) (not e!1758275))))

(declare-fun valid!3041 (CacheDown!2624) Bool)

(assert (=> b!2786226 (= res!1162752 (valid!3041 cacheDown!1009))))

(declare-fun b!2786227 () Bool)

(declare-fun e!1758274 () Bool)

(declare-fun e!1758273 () Bool)

(assert (=> b!2786227 (= e!1758274 e!1758273)))

(declare-fun b!2786228 () Bool)

(declare-fun res!1162753 () Bool)

(assert (=> b!2786228 (=> (not res!1162753) (not e!1758275))))

(declare-fun valid!3042 (CacheUp!2500) Bool)

(assert (=> b!2786228 (= res!1162753 (valid!3042 cacheUp!890))))

(declare-fun b!2786229 () Bool)

(declare-fun e!1758271 () Bool)

(assert (=> b!2786229 (= e!1758271 e!1758269)))

(declare-fun b!2786230 () Bool)

(assert (=> b!2786230 (= e!1758292 e!1758270)))

(declare-fun res!1162750 () Bool)

(assert (=> b!2786230 (=> res!1162750 e!1758270)))

(declare-fun apply!7541 (BalanceConc!19644 Int) C!16448)

(assert (=> b!2786230 (= res!1162750 (not (= (apply!7541 totalInput!758 testedPSize!143) (head!6169 testedSuffix!143))))))

(declare-fun drop!1723 (List!32339 Int) List!32339)

(declare-fun apply!7542 (List!32339 Int) C!16448)

(assert (=> b!2786230 (= (head!6169 (drop!1723 lt!995329 testedPSize!143)) (apply!7542 lt!995329 testedPSize!143))))

(declare-fun lt!995327 () Unit!46462)

(declare-fun lemmaDropApply!929 (List!32339 Int) Unit!46462)

(assert (=> b!2786230 (= lt!995327 (lemmaDropApply!929 lt!995329 testedPSize!143))))

(declare-fun lt!995342 () List!32339)

(declare-fun lt!995339 () List!32339)

(assert (=> b!2786230 (not (or (not (= lt!995342 testedP!183)) (not (= lt!995339 testedSuffix!143))))))

(declare-fun lt!995333 () Unit!46462)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!356 (List!32339 List!32339 List!32339 List!32339) Unit!46462)

(assert (=> b!2786230 (= lt!995333 (lemmaConcatSameAndSameSizesThenSameLists!356 lt!995342 lt!995339 testedP!183 testedSuffix!143))))

(declare-fun b!2786231 () Bool)

(declare-fun lt!995337 () MutLongMap!3890)

(assert (=> b!2786231 (= e!1758279 (and e!1758274 ((_ is LongMap!3890) lt!995337)))))

(assert (=> b!2786231 (= lt!995337 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))

(declare-fun e!1758291 () Bool)

(assert (=> b!2786232 (= e!1758291 (and e!1758286 tp!883458))))

(declare-fun b!2786233 () Bool)

(assert (=> b!2786233 (= e!1758275 (not e!1758288))))

(declare-fun res!1162751 () Bool)

(assert (=> b!2786233 (=> res!1162751 e!1758288)))

(assert (=> b!2786233 (= res!1162751 (not (isPrefix!2586 testedP!183 lt!995329)))))

(declare-fun lt!995331 () List!32339)

(assert (=> b!2786233 (isPrefix!2586 testedP!183 lt!995331)))

(declare-fun lt!995338 () Unit!46462)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1696 (List!32339 List!32339) Unit!46462)

(assert (=> b!2786233 (= lt!995338 (lemmaConcatTwoListThenFirstIsPrefix!1696 testedP!183 testedSuffix!143))))

(declare-fun b!2786234 () Bool)

(declare-fun e!1758277 () Bool)

(declare-fun tp_is_empty!14103 () Bool)

(declare-fun tp!883467 () Bool)

(assert (=> b!2786234 (= e!1758277 (and tp_is_empty!14103 tp!883467))))

(declare-fun b!2786235 () Bool)

(declare-fun e!1758284 () Bool)

(declare-fun tp!883461 () Bool)

(assert (=> b!2786235 (= e!1758284 (and tp!883461 mapRes!17736))))

(declare-fun condMapEmpty!17735 () Bool)

(declare-fun mapDefault!17736 () List!32342)

(assert (=> b!2786235 (= condMapEmpty!17735 (= (arr!6170 (_values!4172 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32342)) mapDefault!17736)))))

(declare-fun b!2786236 () Bool)

(declare-fun tp!883463 () Bool)

(assert (=> b!2786236 (= e!1758267 (and tp!883463 mapRes!17735))))

(declare-fun condMapEmpty!17736 () Bool)

(declare-fun mapDefault!17735 () List!32341)

(assert (=> b!2786236 (= condMapEmpty!17736 (= (arr!6169 (_values!4171 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32341)) mapDefault!17735)))))

(declare-fun b!2786237 () Bool)

(declare-fun e!1758266 () Bool)

(declare-fun tp!883451 () Bool)

(assert (=> b!2786237 (= e!1758266 (and tp_is_empty!14103 tp!883451))))

(declare-fun b!2786238 () Bool)

(declare-fun e!1758283 () Bool)

(assert (=> b!2786238 (= e!1758283 e!1758291)))

(declare-fun b!2786239 () Bool)

(assert (=> b!2786239 (= e!1758265 e!1758292)))

(declare-fun res!1162747 () Bool)

(assert (=> b!2786239 (=> res!1162747 e!1758292)))

(assert (=> b!2786239 (= res!1162747 (not (= (++!7965 lt!995342 lt!995339) lt!995329)))))

(declare-fun list!12139 (BalanceConc!19644) List!32339)

(assert (=> b!2786239 (= lt!995339 (list!12139 (_2!19268 lt!995336)))))

(assert (=> b!2786239 (= lt!995342 (list!12139 (_1!19268 lt!995336)))))

(declare-fun splitAt!142 (BalanceConc!19644 Int) tuple2!32586)

(assert (=> b!2786239 (= lt!995336 (splitAt!142 totalInput!758 testedPSize!143))))

(declare-fun b!2786240 () Bool)

(declare-fun tp!883450 () Bool)

(assert (=> b!2786240 (= e!1758264 tp!883450)))

(declare-fun tp!883464 () Bool)

(declare-fun tp!883462 () Bool)

(declare-fun array_inv!4419 (array!13840) Bool)

(assert (=> b!2786241 (= e!1758285 (and tp!883460 tp!883462 tp!883464 (array_inv!4417 (_keys!4191 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) (array_inv!4419 (_values!4172 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) e!1758284))))

(declare-fun b!2786242 () Bool)

(declare-fun res!1162754 () Bool)

(assert (=> b!2786242 (=> res!1162754 e!1758265)))

(assert (=> b!2786242 (= res!1162754 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2786243 () Bool)

(assert (=> b!2786243 (= e!1758273 e!1758290)))

(declare-fun res!1162749 () Bool)

(assert (=> start!269232 (=> (not res!1162749) (not e!1758287))))

(assert (=> start!269232 (= res!1162749 (= lt!995331 lt!995329))))

(assert (=> start!269232 (= lt!995329 (list!12139 totalInput!758))))

(assert (=> start!269232 (= lt!995331 (++!7965 testedP!183 testedSuffix!143))))

(assert (=> start!269232 e!1758287))

(declare-fun inv!43803 (BalanceConc!19644) Bool)

(assert (=> start!269232 (and (inv!43803 totalInput!758) e!1758276)))

(declare-fun condSetEmpty!23554 () Bool)

(assert (=> start!269232 (= condSetEmpty!23554 (= z!3684 ((as const (Array Context!4726 Bool)) false)))))

(assert (=> start!269232 setRes!23554))

(assert (=> start!269232 true))

(assert (=> start!269232 e!1758277))

(assert (=> start!269232 e!1758266))

(declare-fun inv!43804 (CacheDown!2624) Bool)

(assert (=> start!269232 (and (inv!43804 cacheDown!1009) e!1758271)))

(declare-fun inv!43805 (CacheUp!2500) Bool)

(assert (=> start!269232 (and (inv!43805 cacheUp!890) e!1758283)))

(assert (= (and start!269232 res!1162749) b!2786224))

(assert (= (and b!2786224 res!1162746) b!2786222))

(assert (= (and b!2786222 res!1162744) b!2786228))

(assert (= (and b!2786228 res!1162753) b!2786226))

(assert (= (and b!2786226 res!1162752) b!2786233))

(assert (= (and b!2786233 (not res!1162751)) b!2786214))

(assert (= (and b!2786214 (not res!1162743)) b!2786242))

(assert (= (and b!2786242 (not res!1162754)) b!2786239))

(assert (= (and b!2786239 (not res!1162747)) b!2786219))

(assert (= (and b!2786219 (not res!1162748)) b!2786230))

(assert (= (and b!2786230 (not res!1162750)) b!2786217))

(assert (= (and b!2786217 c!452507) b!2786213))

(assert (= (and b!2786217 (not c!452507)) b!2786216))

(assert (= (and b!2786217 (not res!1162745)) b!2786225))

(assert (= start!269232 b!2786215))

(assert (= (and start!269232 condSetEmpty!23554) setIsEmpty!23554))

(assert (= (and start!269232 (not condSetEmpty!23554)) setNonEmpty!23554))

(assert (= setNonEmpty!23554 b!2786240))

(assert (= (and start!269232 ((_ is Cons!32239) testedP!183)) b!2786234))

(assert (= (and start!269232 ((_ is Cons!32239) testedSuffix!143)) b!2786237))

(assert (= (and b!2786236 condMapEmpty!17736) mapIsEmpty!17735))

(assert (= (and b!2786236 (not condMapEmpty!17736)) mapNonEmpty!17735))

(assert (= b!2786218 b!2786236))

(assert (= b!2786243 b!2786218))

(assert (= b!2786227 b!2786243))

(assert (= (and b!2786231 ((_ is LongMap!3890) (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))) b!2786227))

(assert (= b!2786220 b!2786231))

(assert (= (and b!2786229 ((_ is HashMap!3796) (cache!3939 cacheDown!1009))) b!2786220))

(assert (= start!269232 b!2786229))

(assert (= (and b!2786235 condMapEmpty!17735) mapIsEmpty!17736))

(assert (= (and b!2786235 (not condMapEmpty!17735)) mapNonEmpty!17736))

(assert (= b!2786241 b!2786235))

(assert (= b!2786212 b!2786241))

(assert (= b!2786223 b!2786212))

(assert (= (and b!2786221 ((_ is LongMap!3891) (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))) b!2786223))

(assert (= b!2786232 b!2786221))

(assert (= (and b!2786238 ((_ is HashMap!3797) (cache!3940 cacheUp!890))) b!2786232))

(assert (= start!269232 b!2786238))

(declare-fun m!3216563 () Bool)

(assert (=> b!2786215 m!3216563))

(declare-fun m!3216565 () Bool)

(assert (=> b!2786226 m!3216565))

(declare-fun m!3216567 () Bool)

(assert (=> b!2786217 m!3216567))

(declare-fun m!3216569 () Bool)

(assert (=> b!2786217 m!3216569))

(declare-fun m!3216571 () Bool)

(assert (=> b!2786213 m!3216571))

(declare-fun m!3216573 () Bool)

(assert (=> b!2786213 m!3216573))

(declare-fun m!3216575 () Bool)

(assert (=> b!2786213 m!3216575))

(declare-fun m!3216577 () Bool)

(assert (=> b!2786218 m!3216577))

(declare-fun m!3216579 () Bool)

(assert (=> b!2786218 m!3216579))

(declare-fun m!3216581 () Bool)

(assert (=> b!2786224 m!3216581))

(declare-fun m!3216583 () Bool)

(assert (=> b!2786222 m!3216583))

(declare-fun m!3216585 () Bool)

(assert (=> start!269232 m!3216585))

(declare-fun m!3216587 () Bool)

(assert (=> start!269232 m!3216587))

(declare-fun m!3216589 () Bool)

(assert (=> start!269232 m!3216589))

(declare-fun m!3216591 () Bool)

(assert (=> start!269232 m!3216591))

(declare-fun m!3216593 () Bool)

(assert (=> start!269232 m!3216593))

(declare-fun m!3216595 () Bool)

(assert (=> mapNonEmpty!17736 m!3216595))

(declare-fun m!3216597 () Bool)

(assert (=> b!2786230 m!3216597))

(declare-fun m!3216599 () Bool)

(assert (=> b!2786230 m!3216599))

(declare-fun m!3216601 () Bool)

(assert (=> b!2786230 m!3216601))

(declare-fun m!3216603 () Bool)

(assert (=> b!2786230 m!3216603))

(declare-fun m!3216605 () Bool)

(assert (=> b!2786230 m!3216605))

(assert (=> b!2786230 m!3216601))

(declare-fun m!3216607 () Bool)

(assert (=> b!2786230 m!3216607))

(declare-fun m!3216609 () Bool)

(assert (=> b!2786230 m!3216609))

(declare-fun m!3216611 () Bool)

(assert (=> b!2786228 m!3216611))

(declare-fun m!3216613 () Bool)

(assert (=> b!2786239 m!3216613))

(declare-fun m!3216615 () Bool)

(assert (=> b!2786239 m!3216615))

(declare-fun m!3216617 () Bool)

(assert (=> b!2786239 m!3216617))

(declare-fun m!3216619 () Bool)

(assert (=> b!2786239 m!3216619))

(declare-fun m!3216621 () Bool)

(assert (=> b!2786241 m!3216621))

(declare-fun m!3216623 () Bool)

(assert (=> b!2786241 m!3216623))

(declare-fun m!3216625 () Bool)

(assert (=> b!2786225 m!3216625))

(declare-fun m!3216627 () Bool)

(assert (=> b!2786225 m!3216627))

(assert (=> b!2786225 m!3216627))

(declare-fun m!3216629 () Bool)

(assert (=> b!2786225 m!3216629))

(declare-fun m!3216631 () Bool)

(assert (=> b!2786225 m!3216631))

(declare-fun m!3216633 () Bool)

(assert (=> setNonEmpty!23554 m!3216633))

(declare-fun m!3216635 () Bool)

(assert (=> b!2786233 m!3216635))

(declare-fun m!3216637 () Bool)

(assert (=> b!2786233 m!3216637))

(declare-fun m!3216639 () Bool)

(assert (=> b!2786233 m!3216639))

(declare-fun m!3216641 () Bool)

(assert (=> b!2786214 m!3216641))

(declare-fun m!3216643 () Bool)

(assert (=> b!2786214 m!3216643))

(declare-fun m!3216645 () Bool)

(assert (=> b!2786214 m!3216645))

(declare-fun m!3216647 () Bool)

(assert (=> b!2786219 m!3216647))

(declare-fun m!3216649 () Bool)

(assert (=> mapNonEmpty!17735 m!3216649))

(check-sat (not setNonEmpty!23554) (not start!269232) b_and!203531 (not b_next!79493) (not b!2786230) (not b_next!79497) b_and!203527 tp_is_empty!14103 (not b!2786241) b_and!203533 (not mapNonEmpty!17736) (not b!2786214) (not b!2786237) (not b!2786222) (not b_next!79499) b_and!203529 (not b!2786224) (not b_next!79495) (not b!2786239) (not b!2786225) (not b!2786234) (not b!2786226) (not b!2786217) (not b!2786219) (not b!2786236) (not b!2786215) (not b!2786213) (not b!2786240) (not b!2786228) (not b!2786233) (not mapNonEmpty!17735) (not b!2786218) (not b!2786235))
(check-sat (not b_next!79499) b_and!203529 b_and!203531 (not b_next!79493) (not b_next!79495) (not b_next!79497) b_and!203527 b_and!203533)
(get-model)

(declare-fun d!810623 () Bool)

(declare-fun lambda!102224 () Int)

(declare-fun forall!6655 (List!32340 Int) Bool)

(assert (=> d!810623 (= (inv!43802 setElem!23554) (forall!6655 (exprs!2863 setElem!23554) lambda!102224))))

(declare-fun bs!510917 () Bool)

(assert (= bs!510917 d!810623))

(declare-fun m!3216651 () Bool)

(assert (=> bs!510917 m!3216651))

(assert (=> setNonEmpty!23554 d!810623))

(declare-fun d!810625 () Bool)

(declare-fun res!1162757 () Bool)

(declare-fun e!1758295 () Bool)

(assert (=> d!810625 (=> (not res!1162757) (not e!1758295))))

(assert (=> d!810625 (= res!1162757 ((_ is HashMap!3797) (cache!3940 cacheUp!890)))))

(assert (=> d!810625 (= (inv!43805 cacheUp!890) e!1758295)))

(declare-fun b!2786246 () Bool)

(declare-fun validCacheMapUp!379 (MutableMap!3797) Bool)

(assert (=> b!2786246 (= e!1758295 (validCacheMapUp!379 (cache!3940 cacheUp!890)))))

(assert (= (and d!810625 res!1162757) b!2786246))

(declare-fun m!3216653 () Bool)

(assert (=> b!2786246 m!3216653))

(assert (=> start!269232 d!810625))

(declare-fun d!810627 () Bool)

(declare-fun isBalanced!3055 (Conc!10015) Bool)

(assert (=> d!810627 (= (inv!43803 totalInput!758) (isBalanced!3055 (c!452509 totalInput!758)))))

(declare-fun bs!510918 () Bool)

(assert (= bs!510918 d!810627))

(declare-fun m!3216655 () Bool)

(assert (=> bs!510918 m!3216655))

(assert (=> start!269232 d!810627))

(declare-fun d!810629 () Bool)

(declare-fun res!1162760 () Bool)

(declare-fun e!1758298 () Bool)

(assert (=> d!810629 (=> (not res!1162760) (not e!1758298))))

(assert (=> d!810629 (= res!1162760 ((_ is HashMap!3796) (cache!3939 cacheDown!1009)))))

(assert (=> d!810629 (= (inv!43804 cacheDown!1009) e!1758298)))

(declare-fun b!2786249 () Bool)

(declare-fun validCacheMapDown!410 (MutableMap!3796) Bool)

(assert (=> b!2786249 (= e!1758298 (validCacheMapDown!410 (cache!3939 cacheDown!1009)))))

(assert (= (and d!810629 res!1162760) b!2786249))

(declare-fun m!3216657 () Bool)

(assert (=> b!2786249 m!3216657))

(assert (=> start!269232 d!810629))

(declare-fun d!810631 () Bool)

(declare-fun list!12140 (Conc!10015) List!32339)

(assert (=> d!810631 (= (list!12139 totalInput!758) (list!12140 (c!452509 totalInput!758)))))

(declare-fun bs!510919 () Bool)

(assert (= bs!510919 d!810631))

(declare-fun m!3216659 () Bool)

(assert (=> bs!510919 m!3216659))

(assert (=> start!269232 d!810631))

(declare-fun b!2786258 () Bool)

(declare-fun e!1758304 () List!32339)

(assert (=> b!2786258 (= e!1758304 testedSuffix!143)))

(declare-fun lt!995345 () List!32339)

(declare-fun b!2786261 () Bool)

(declare-fun e!1758303 () Bool)

(assert (=> b!2786261 (= e!1758303 (or (not (= testedSuffix!143 Nil!32239)) (= lt!995345 testedP!183)))))

(declare-fun d!810633 () Bool)

(assert (=> d!810633 e!1758303))

(declare-fun res!1162766 () Bool)

(assert (=> d!810633 (=> (not res!1162766) (not e!1758303))))

(declare-fun content!4520 (List!32339) (InoxSet C!16448))

(assert (=> d!810633 (= res!1162766 (= (content!4520 lt!995345) ((_ map or) (content!4520 testedP!183) (content!4520 testedSuffix!143))))))

(assert (=> d!810633 (= lt!995345 e!1758304)))

(declare-fun c!452512 () Bool)

(assert (=> d!810633 (= c!452512 ((_ is Nil!32239) testedP!183))))

(assert (=> d!810633 (= (++!7965 testedP!183 testedSuffix!143) lt!995345)))

(declare-fun b!2786259 () Bool)

(assert (=> b!2786259 (= e!1758304 (Cons!32239 (h!37659 testedP!183) (++!7965 (t!228481 testedP!183) testedSuffix!143)))))

(declare-fun b!2786260 () Bool)

(declare-fun res!1162765 () Bool)

(assert (=> b!2786260 (=> (not res!1162765) (not e!1758303))))

(assert (=> b!2786260 (= res!1162765 (= (size!25061 lt!995345) (+ (size!25061 testedP!183) (size!25061 testedSuffix!143))))))

(assert (= (and d!810633 c!452512) b!2786258))

(assert (= (and d!810633 (not c!452512)) b!2786259))

(assert (= (and d!810633 res!1162766) b!2786260))

(assert (= (and b!2786260 res!1162765) b!2786261))

(declare-fun m!3216661 () Bool)

(assert (=> d!810633 m!3216661))

(declare-fun m!3216663 () Bool)

(assert (=> d!810633 m!3216663))

(declare-fun m!3216665 () Bool)

(assert (=> d!810633 m!3216665))

(declare-fun m!3216667 () Bool)

(assert (=> b!2786259 m!3216667))

(declare-fun m!3216669 () Bool)

(assert (=> b!2786260 m!3216669))

(assert (=> b!2786260 m!3216581))

(declare-fun m!3216671 () Bool)

(assert (=> b!2786260 m!3216671))

(assert (=> start!269232 d!810633))

(declare-fun d!810635 () Bool)

(declare-fun lt!995348 () Int)

(assert (=> d!810635 (>= lt!995348 0)))

(declare-fun e!1758307 () Int)

(assert (=> d!810635 (= lt!995348 e!1758307)))

(declare-fun c!452515 () Bool)

(assert (=> d!810635 (= c!452515 ((_ is Nil!32239) testedP!183))))

(assert (=> d!810635 (= (size!25061 testedP!183) lt!995348)))

(declare-fun b!2786266 () Bool)

(assert (=> b!2786266 (= e!1758307 0)))

(declare-fun b!2786267 () Bool)

(assert (=> b!2786267 (= e!1758307 (+ 1 (size!25061 (t!228481 testedP!183))))))

(assert (= (and d!810635 c!452515) b!2786266))

(assert (= (and d!810635 (not c!452515)) b!2786267))

(declare-fun m!3216673 () Bool)

(assert (=> b!2786267 m!3216673))

(assert (=> b!2786224 d!810635))

(declare-fun d!810637 () Bool)

(declare-fun lt!995349 () Int)

(assert (=> d!810637 (>= lt!995349 0)))

(declare-fun e!1758308 () Int)

(assert (=> d!810637 (= lt!995349 e!1758308)))

(declare-fun c!452516 () Bool)

(assert (=> d!810637 (= c!452516 ((_ is Nil!32239) lt!995329))))

(assert (=> d!810637 (= (size!25061 lt!995329) lt!995349)))

(declare-fun b!2786268 () Bool)

(assert (=> b!2786268 (= e!1758308 0)))

(declare-fun b!2786269 () Bool)

(assert (=> b!2786269 (= e!1758308 (+ 1 (size!25061 (t!228481 lt!995329))))))

(assert (= (and d!810637 c!452516) b!2786268))

(assert (= (and d!810637 (not c!452516)) b!2786269))

(declare-fun m!3216675 () Bool)

(assert (=> b!2786269 m!3216675))

(assert (=> b!2786217 d!810637))

(declare-fun d!810639 () Bool)

(assert (=> d!810639 (<= (size!25061 testedP!183) (size!25061 lt!995329))))

(declare-fun lt!995352 () Unit!46462)

(declare-fun choose!16343 (List!32339 List!32339) Unit!46462)

(assert (=> d!810639 (= lt!995352 (choose!16343 testedP!183 lt!995329))))

(assert (=> d!810639 (isPrefix!2586 testedP!183 lt!995329)))

(assert (=> d!810639 (= (lemmaIsPrefixThenSmallerEqSize!273 testedP!183 lt!995329) lt!995352)))

(declare-fun bs!510920 () Bool)

(assert (= bs!510920 d!810639))

(assert (=> bs!510920 m!3216581))

(assert (=> bs!510920 m!3216567))

(declare-fun m!3216677 () Bool)

(assert (=> bs!510920 m!3216677))

(assert (=> bs!510920 m!3216635))

(assert (=> b!2786217 d!810639))

(declare-fun b!2786281 () Bool)

(declare-fun e!1758315 () Bool)

(assert (=> b!2786281 (= e!1758315 (>= (size!25061 lt!995329) (size!25061 testedP!183)))))

(declare-fun d!810641 () Bool)

(assert (=> d!810641 e!1758315))

(declare-fun res!1162777 () Bool)

(assert (=> d!810641 (=> res!1162777 e!1758315)))

(declare-fun lt!995355 () Bool)

(assert (=> d!810641 (= res!1162777 (not lt!995355))))

(declare-fun e!1758317 () Bool)

(assert (=> d!810641 (= lt!995355 e!1758317)))

(declare-fun res!1162776 () Bool)

(assert (=> d!810641 (=> res!1162776 e!1758317)))

(assert (=> d!810641 (= res!1162776 ((_ is Nil!32239) testedP!183))))

(assert (=> d!810641 (= (isPrefix!2586 testedP!183 lt!995329) lt!995355)))

(declare-fun b!2786280 () Bool)

(declare-fun e!1758316 () Bool)

(declare-fun tail!4401 (List!32339) List!32339)

(assert (=> b!2786280 (= e!1758316 (isPrefix!2586 (tail!4401 testedP!183) (tail!4401 lt!995329)))))

(declare-fun b!2786279 () Bool)

(declare-fun res!1162778 () Bool)

(assert (=> b!2786279 (=> (not res!1162778) (not e!1758316))))

(assert (=> b!2786279 (= res!1162778 (= (head!6169 testedP!183) (head!6169 lt!995329)))))

(declare-fun b!2786278 () Bool)

(assert (=> b!2786278 (= e!1758317 e!1758316)))

(declare-fun res!1162775 () Bool)

(assert (=> b!2786278 (=> (not res!1162775) (not e!1758316))))

(assert (=> b!2786278 (= res!1162775 (not ((_ is Nil!32239) lt!995329)))))

(assert (= (and d!810641 (not res!1162776)) b!2786278))

(assert (= (and b!2786278 res!1162775) b!2786279))

(assert (= (and b!2786279 res!1162778) b!2786280))

(assert (= (and d!810641 (not res!1162777)) b!2786281))

(assert (=> b!2786281 m!3216567))

(assert (=> b!2786281 m!3216581))

(declare-fun m!3216679 () Bool)

(assert (=> b!2786280 m!3216679))

(declare-fun m!3216681 () Bool)

(assert (=> b!2786280 m!3216681))

(assert (=> b!2786280 m!3216679))

(assert (=> b!2786280 m!3216681))

(declare-fun m!3216683 () Bool)

(assert (=> b!2786280 m!3216683))

(declare-fun m!3216685 () Bool)

(assert (=> b!2786279 m!3216685))

(declare-fun m!3216687 () Bool)

(assert (=> b!2786279 m!3216687))

(assert (=> b!2786233 d!810641))

(declare-fun b!2786285 () Bool)

(declare-fun e!1758318 () Bool)

(assert (=> b!2786285 (= e!1758318 (>= (size!25061 lt!995331) (size!25061 testedP!183)))))

(declare-fun d!810643 () Bool)

(assert (=> d!810643 e!1758318))

(declare-fun res!1162781 () Bool)

(assert (=> d!810643 (=> res!1162781 e!1758318)))

(declare-fun lt!995356 () Bool)

(assert (=> d!810643 (= res!1162781 (not lt!995356))))

(declare-fun e!1758320 () Bool)

(assert (=> d!810643 (= lt!995356 e!1758320)))

(declare-fun res!1162780 () Bool)

(assert (=> d!810643 (=> res!1162780 e!1758320)))

(assert (=> d!810643 (= res!1162780 ((_ is Nil!32239) testedP!183))))

(assert (=> d!810643 (= (isPrefix!2586 testedP!183 lt!995331) lt!995356)))

(declare-fun b!2786284 () Bool)

(declare-fun e!1758319 () Bool)

(assert (=> b!2786284 (= e!1758319 (isPrefix!2586 (tail!4401 testedP!183) (tail!4401 lt!995331)))))

(declare-fun b!2786283 () Bool)

(declare-fun res!1162782 () Bool)

(assert (=> b!2786283 (=> (not res!1162782) (not e!1758319))))

(assert (=> b!2786283 (= res!1162782 (= (head!6169 testedP!183) (head!6169 lt!995331)))))

(declare-fun b!2786282 () Bool)

(assert (=> b!2786282 (= e!1758320 e!1758319)))

(declare-fun res!1162779 () Bool)

(assert (=> b!2786282 (=> (not res!1162779) (not e!1758319))))

(assert (=> b!2786282 (= res!1162779 (not ((_ is Nil!32239) lt!995331)))))

(assert (= (and d!810643 (not res!1162780)) b!2786282))

(assert (= (and b!2786282 res!1162779) b!2786283))

(assert (= (and b!2786283 res!1162782) b!2786284))

(assert (= (and d!810643 (not res!1162781)) b!2786285))

(declare-fun m!3216689 () Bool)

(assert (=> b!2786285 m!3216689))

(assert (=> b!2786285 m!3216581))

(assert (=> b!2786284 m!3216679))

(declare-fun m!3216691 () Bool)

(assert (=> b!2786284 m!3216691))

(assert (=> b!2786284 m!3216679))

(assert (=> b!2786284 m!3216691))

(declare-fun m!3216693 () Bool)

(assert (=> b!2786284 m!3216693))

(assert (=> b!2786283 m!3216685))

(declare-fun m!3216695 () Bool)

(assert (=> b!2786283 m!3216695))

(assert (=> b!2786233 d!810643))

(declare-fun d!810645 () Bool)

(assert (=> d!810645 (isPrefix!2586 testedP!183 (++!7965 testedP!183 testedSuffix!143))))

(declare-fun lt!995359 () Unit!46462)

(declare-fun choose!16344 (List!32339 List!32339) Unit!46462)

(assert (=> d!810645 (= lt!995359 (choose!16344 testedP!183 testedSuffix!143))))

(assert (=> d!810645 (= (lemmaConcatTwoListThenFirstIsPrefix!1696 testedP!183 testedSuffix!143) lt!995359)))

(declare-fun bs!510921 () Bool)

(assert (= bs!510921 d!810645))

(assert (=> bs!510921 m!3216593))

(assert (=> bs!510921 m!3216593))

(declare-fun m!3216697 () Bool)

(assert (=> bs!510921 m!3216697))

(declare-fun m!3216699 () Bool)

(assert (=> bs!510921 m!3216699))

(assert (=> b!2786233 d!810645))

(declare-fun d!810647 () Bool)

(assert (=> d!810647 (= (valid!3041 cacheDown!1009) (validCacheMapDown!410 (cache!3939 cacheDown!1009)))))

(declare-fun bs!510922 () Bool)

(assert (= bs!510922 d!810647))

(assert (=> bs!510922 m!3216657))

(assert (=> b!2786226 d!810647))

(declare-fun b!2786289 () Bool)

(declare-fun e!1758321 () Bool)

(assert (=> b!2786289 (= e!1758321 (>= (size!25061 lt!995329) (size!25061 (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239)))))))

(declare-fun d!810649 () Bool)

(assert (=> d!810649 e!1758321))

(declare-fun res!1162785 () Bool)

(assert (=> d!810649 (=> res!1162785 e!1758321)))

(declare-fun lt!995360 () Bool)

(assert (=> d!810649 (= res!1162785 (not lt!995360))))

(declare-fun e!1758323 () Bool)

(assert (=> d!810649 (= lt!995360 e!1758323)))

(declare-fun res!1162784 () Bool)

(assert (=> d!810649 (=> res!1162784 e!1758323)))

(assert (=> d!810649 (= res!1162784 ((_ is Nil!32239) (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239))))))

(assert (=> d!810649 (= (isPrefix!2586 (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239)) lt!995329) lt!995360)))

(declare-fun b!2786288 () Bool)

(declare-fun e!1758322 () Bool)

(assert (=> b!2786288 (= e!1758322 (isPrefix!2586 (tail!4401 (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239))) (tail!4401 lt!995329)))))

(declare-fun b!2786287 () Bool)

(declare-fun res!1162786 () Bool)

(assert (=> b!2786287 (=> (not res!1162786) (not e!1758322))))

(assert (=> b!2786287 (= res!1162786 (= (head!6169 (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239))) (head!6169 lt!995329)))))

(declare-fun b!2786286 () Bool)

(assert (=> b!2786286 (= e!1758323 e!1758322)))

(declare-fun res!1162783 () Bool)

(assert (=> b!2786286 (=> (not res!1162783) (not e!1758322))))

(assert (=> b!2786286 (= res!1162783 (not ((_ is Nil!32239) lt!995329)))))

(assert (= (and d!810649 (not res!1162784)) b!2786286))

(assert (= (and b!2786286 res!1162783) b!2786287))

(assert (= (and b!2786287 res!1162786) b!2786288))

(assert (= (and d!810649 (not res!1162785)) b!2786289))

(assert (=> b!2786289 m!3216567))

(assert (=> b!2786289 m!3216627))

(declare-fun m!3216701 () Bool)

(assert (=> b!2786289 m!3216701))

(assert (=> b!2786288 m!3216627))

(declare-fun m!3216703 () Bool)

(assert (=> b!2786288 m!3216703))

(assert (=> b!2786288 m!3216681))

(assert (=> b!2786288 m!3216703))

(assert (=> b!2786288 m!3216681))

(declare-fun m!3216705 () Bool)

(assert (=> b!2786288 m!3216705))

(assert (=> b!2786287 m!3216627))

(declare-fun m!3216707 () Bool)

(assert (=> b!2786287 m!3216707))

(assert (=> b!2786287 m!3216687))

(assert (=> b!2786225 d!810649))

(declare-fun b!2786290 () Bool)

(declare-fun e!1758325 () List!32339)

(assert (=> b!2786290 (= e!1758325 (Cons!32239 (head!6169 lt!995335) Nil!32239))))

(declare-fun b!2786293 () Bool)

(declare-fun lt!995361 () List!32339)

(declare-fun e!1758324 () Bool)

(assert (=> b!2786293 (= e!1758324 (or (not (= (Cons!32239 (head!6169 lt!995335) Nil!32239) Nil!32239)) (= lt!995361 testedP!183)))))

(declare-fun d!810651 () Bool)

(assert (=> d!810651 e!1758324))

(declare-fun res!1162788 () Bool)

(assert (=> d!810651 (=> (not res!1162788) (not e!1758324))))

(assert (=> d!810651 (= res!1162788 (= (content!4520 lt!995361) ((_ map or) (content!4520 testedP!183) (content!4520 (Cons!32239 (head!6169 lt!995335) Nil!32239)))))))

(assert (=> d!810651 (= lt!995361 e!1758325)))

(declare-fun c!452517 () Bool)

(assert (=> d!810651 (= c!452517 ((_ is Nil!32239) testedP!183))))

(assert (=> d!810651 (= (++!7965 testedP!183 (Cons!32239 (head!6169 lt!995335) Nil!32239)) lt!995361)))

(declare-fun b!2786291 () Bool)

(assert (=> b!2786291 (= e!1758325 (Cons!32239 (h!37659 testedP!183) (++!7965 (t!228481 testedP!183) (Cons!32239 (head!6169 lt!995335) Nil!32239))))))

(declare-fun b!2786292 () Bool)

(declare-fun res!1162787 () Bool)

(assert (=> b!2786292 (=> (not res!1162787) (not e!1758324))))

(assert (=> b!2786292 (= res!1162787 (= (size!25061 lt!995361) (+ (size!25061 testedP!183) (size!25061 (Cons!32239 (head!6169 lt!995335) Nil!32239)))))))

(assert (= (and d!810651 c!452517) b!2786290))

(assert (= (and d!810651 (not c!452517)) b!2786291))

(assert (= (and d!810651 res!1162788) b!2786292))

(assert (= (and b!2786292 res!1162787) b!2786293))

(declare-fun m!3216709 () Bool)

(assert (=> d!810651 m!3216709))

(assert (=> d!810651 m!3216663))

(declare-fun m!3216711 () Bool)

(assert (=> d!810651 m!3216711))

(declare-fun m!3216713 () Bool)

(assert (=> b!2786291 m!3216713))

(declare-fun m!3216715 () Bool)

(assert (=> b!2786292 m!3216715))

(assert (=> b!2786292 m!3216581))

(declare-fun m!3216717 () Bool)

(assert (=> b!2786292 m!3216717))

(assert (=> b!2786225 d!810651))

(declare-fun d!810653 () Bool)

(assert (=> d!810653 (= (head!6169 lt!995335) (h!37659 lt!995335))))

(assert (=> b!2786225 d!810653))

(declare-fun d!810655 () Bool)

(assert (=> d!810655 (isPrefix!2586 (++!7965 testedP!183 (Cons!32239 (head!6169 (getSuffix!1263 lt!995329 testedP!183)) Nil!32239)) lt!995329)))

(declare-fun lt!995364 () Unit!46462)

(declare-fun choose!16345 (List!32339 List!32339) Unit!46462)

(assert (=> d!810655 (= lt!995364 (choose!16345 testedP!183 lt!995329))))

(assert (=> d!810655 (isPrefix!2586 testedP!183 lt!995329)))

(assert (=> d!810655 (= (lemmaAddHeadSuffixToPrefixStillPrefix!466 testedP!183 lt!995329) lt!995364)))

(declare-fun bs!510923 () Bool)

(assert (= bs!510923 d!810655))

(assert (=> bs!510923 m!3216645))

(declare-fun m!3216719 () Bool)

(assert (=> bs!510923 m!3216719))

(declare-fun m!3216721 () Bool)

(assert (=> bs!510923 m!3216721))

(declare-fun m!3216723 () Bool)

(assert (=> bs!510923 m!3216723))

(declare-fun m!3216725 () Bool)

(assert (=> bs!510923 m!3216725))

(assert (=> bs!510923 m!3216645))

(assert (=> bs!510923 m!3216635))

(assert (=> bs!510923 m!3216723))

(assert (=> b!2786225 d!810655))

(declare-fun d!810657 () Bool)

(assert (=> d!810657 (= (array_inv!4417 (_keys!4190 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) (bvsge (size!25059 (_keys!4190 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786218 d!810657))

(declare-fun d!810659 () Bool)

(assert (=> d!810659 (= (array_inv!4418 (_values!4171 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) (bvsge (size!25060 (_values!4171 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786218 d!810659))

(declare-fun b!2786294 () Bool)

(declare-fun e!1758327 () List!32339)

(assert (=> b!2786294 (= e!1758327 lt!995339)))

(declare-fun lt!995365 () List!32339)

(declare-fun e!1758326 () Bool)

(declare-fun b!2786297 () Bool)

(assert (=> b!2786297 (= e!1758326 (or (not (= lt!995339 Nil!32239)) (= lt!995365 lt!995342)))))

(declare-fun d!810661 () Bool)

(assert (=> d!810661 e!1758326))

(declare-fun res!1162790 () Bool)

(assert (=> d!810661 (=> (not res!1162790) (not e!1758326))))

(assert (=> d!810661 (= res!1162790 (= (content!4520 lt!995365) ((_ map or) (content!4520 lt!995342) (content!4520 lt!995339))))))

(assert (=> d!810661 (= lt!995365 e!1758327)))

(declare-fun c!452518 () Bool)

(assert (=> d!810661 (= c!452518 ((_ is Nil!32239) lt!995342))))

(assert (=> d!810661 (= (++!7965 lt!995342 lt!995339) lt!995365)))

(declare-fun b!2786295 () Bool)

(assert (=> b!2786295 (= e!1758327 (Cons!32239 (h!37659 lt!995342) (++!7965 (t!228481 lt!995342) lt!995339)))))

(declare-fun b!2786296 () Bool)

(declare-fun res!1162789 () Bool)

(assert (=> b!2786296 (=> (not res!1162789) (not e!1758326))))

(assert (=> b!2786296 (= res!1162789 (= (size!25061 lt!995365) (+ (size!25061 lt!995342) (size!25061 lt!995339))))))

(assert (= (and d!810661 c!452518) b!2786294))

(assert (= (and d!810661 (not c!452518)) b!2786295))

(assert (= (and d!810661 res!1162790) b!2786296))

(assert (= (and b!2786296 res!1162789) b!2786297))

(declare-fun m!3216727 () Bool)

(assert (=> d!810661 m!3216727))

(declare-fun m!3216729 () Bool)

(assert (=> d!810661 m!3216729))

(declare-fun m!3216731 () Bool)

(assert (=> d!810661 m!3216731))

(declare-fun m!3216733 () Bool)

(assert (=> b!2786295 m!3216733))

(declare-fun m!3216735 () Bool)

(assert (=> b!2786296 m!3216735))

(declare-fun m!3216737 () Bool)

(assert (=> b!2786296 m!3216737))

(declare-fun m!3216739 () Bool)

(assert (=> b!2786296 m!3216739))

(assert (=> b!2786239 d!810661))

(declare-fun d!810663 () Bool)

(assert (=> d!810663 (= (list!12139 (_2!19268 lt!995336)) (list!12140 (c!452509 (_2!19268 lt!995336))))))

(declare-fun bs!510924 () Bool)

(assert (= bs!510924 d!810663))

(declare-fun m!3216741 () Bool)

(assert (=> bs!510924 m!3216741))

(assert (=> b!2786239 d!810663))

(declare-fun d!810665 () Bool)

(assert (=> d!810665 (= (list!12139 (_1!19268 lt!995336)) (list!12140 (c!452509 (_1!19268 lt!995336))))))

(declare-fun bs!510925 () Bool)

(assert (= bs!510925 d!810665))

(declare-fun m!3216743 () Bool)

(assert (=> bs!510925 m!3216743))

(assert (=> b!2786239 d!810665))

(declare-fun d!810667 () Bool)

(declare-fun e!1758330 () Bool)

(assert (=> d!810667 e!1758330))

(declare-fun res!1162796 () Bool)

(assert (=> d!810667 (=> (not res!1162796) (not e!1758330))))

(declare-fun lt!995370 () tuple2!32586)

(assert (=> d!810667 (= res!1162796 (isBalanced!3055 (c!452509 (_1!19268 lt!995370))))))

(declare-datatypes ((tuple2!32592 0))(
  ( (tuple2!32593 (_1!19271 Conc!10015) (_2!19271 Conc!10015)) )
))
(declare-fun lt!995371 () tuple2!32592)

(assert (=> d!810667 (= lt!995370 (tuple2!32587 (BalanceConc!19645 (_1!19271 lt!995371)) (BalanceConc!19645 (_2!19271 lt!995371))))))

(declare-fun splitAt!143 (Conc!10015 Int) tuple2!32592)

(assert (=> d!810667 (= lt!995371 (splitAt!143 (c!452509 totalInput!758) testedPSize!143))))

(assert (=> d!810667 (isBalanced!3055 (c!452509 totalInput!758))))

(assert (=> d!810667 (= (splitAt!142 totalInput!758 testedPSize!143) lt!995370)))

(declare-fun b!2786302 () Bool)

(declare-fun res!1162795 () Bool)

(assert (=> b!2786302 (=> (not res!1162795) (not e!1758330))))

(assert (=> b!2786302 (= res!1162795 (isBalanced!3055 (c!452509 (_2!19268 lt!995370))))))

(declare-fun b!2786303 () Bool)

(declare-datatypes ((tuple2!32594 0))(
  ( (tuple2!32595 (_1!19272 List!32339) (_2!19272 List!32339)) )
))
(declare-fun splitAtIndex!58 (List!32339 Int) tuple2!32594)

(assert (=> b!2786303 (= e!1758330 (= (tuple2!32595 (list!12139 (_1!19268 lt!995370)) (list!12139 (_2!19268 lt!995370))) (splitAtIndex!58 (list!12139 totalInput!758) testedPSize!143)))))

(assert (= (and d!810667 res!1162796) b!2786302))

(assert (= (and b!2786302 res!1162795) b!2786303))

(declare-fun m!3216745 () Bool)

(assert (=> d!810667 m!3216745))

(declare-fun m!3216747 () Bool)

(assert (=> d!810667 m!3216747))

(assert (=> d!810667 m!3216655))

(declare-fun m!3216749 () Bool)

(assert (=> b!2786302 m!3216749))

(declare-fun m!3216751 () Bool)

(assert (=> b!2786303 m!3216751))

(declare-fun m!3216753 () Bool)

(assert (=> b!2786303 m!3216753))

(assert (=> b!2786303 m!3216585))

(assert (=> b!2786303 m!3216585))

(declare-fun m!3216755 () Bool)

(assert (=> b!2786303 m!3216755))

(assert (=> b!2786239 d!810667))

(declare-fun d!810669 () Bool)

(assert (=> d!810669 (isPrefix!2586 lt!995329 lt!995329)))

(declare-fun lt!995374 () Unit!46462)

(declare-fun choose!16346 (List!32339 List!32339) Unit!46462)

(assert (=> d!810669 (= lt!995374 (choose!16346 lt!995329 lt!995329))))

(assert (=> d!810669 (= (lemmaIsPrefixRefl!1690 lt!995329 lt!995329) lt!995374)))

(declare-fun bs!510926 () Bool)

(assert (= bs!510926 d!810669))

(assert (=> bs!510926 m!3216573))

(declare-fun m!3216757 () Bool)

(assert (=> bs!510926 m!3216757))

(assert (=> b!2786213 d!810669))

(declare-fun b!2786307 () Bool)

(declare-fun e!1758331 () Bool)

(assert (=> b!2786307 (= e!1758331 (>= (size!25061 lt!995329) (size!25061 lt!995329)))))

(declare-fun d!810671 () Bool)

(assert (=> d!810671 e!1758331))

(declare-fun res!1162799 () Bool)

(assert (=> d!810671 (=> res!1162799 e!1758331)))

(declare-fun lt!995375 () Bool)

(assert (=> d!810671 (= res!1162799 (not lt!995375))))

(declare-fun e!1758333 () Bool)

(assert (=> d!810671 (= lt!995375 e!1758333)))

(declare-fun res!1162798 () Bool)

(assert (=> d!810671 (=> res!1162798 e!1758333)))

(assert (=> d!810671 (= res!1162798 ((_ is Nil!32239) lt!995329))))

(assert (=> d!810671 (= (isPrefix!2586 lt!995329 lt!995329) lt!995375)))

(declare-fun b!2786306 () Bool)

(declare-fun e!1758332 () Bool)

(assert (=> b!2786306 (= e!1758332 (isPrefix!2586 (tail!4401 lt!995329) (tail!4401 lt!995329)))))

(declare-fun b!2786305 () Bool)

(declare-fun res!1162800 () Bool)

(assert (=> b!2786305 (=> (not res!1162800) (not e!1758332))))

(assert (=> b!2786305 (= res!1162800 (= (head!6169 lt!995329) (head!6169 lt!995329)))))

(declare-fun b!2786304 () Bool)

(assert (=> b!2786304 (= e!1758333 e!1758332)))

(declare-fun res!1162797 () Bool)

(assert (=> b!2786304 (=> (not res!1162797) (not e!1758332))))

(assert (=> b!2786304 (= res!1162797 (not ((_ is Nil!32239) lt!995329)))))

(assert (= (and d!810671 (not res!1162798)) b!2786304))

(assert (= (and b!2786304 res!1162797) b!2786305))

(assert (= (and b!2786305 res!1162800) b!2786306))

(assert (= (and d!810671 (not res!1162799)) b!2786307))

(assert (=> b!2786307 m!3216567))

(assert (=> b!2786307 m!3216567))

(assert (=> b!2786306 m!3216681))

(assert (=> b!2786306 m!3216681))

(assert (=> b!2786306 m!3216681))

(assert (=> b!2786306 m!3216681))

(declare-fun m!3216759 () Bool)

(assert (=> b!2786306 m!3216759))

(assert (=> b!2786305 m!3216687))

(assert (=> b!2786305 m!3216687))

(assert (=> b!2786213 d!810671))

(declare-fun d!810673 () Bool)

(assert (=> d!810673 (= lt!995329 testedP!183)))

(declare-fun lt!995378 () Unit!46462)

(declare-fun choose!16347 (List!32339 List!32339 List!32339) Unit!46462)

(assert (=> d!810673 (= lt!995378 (choose!16347 lt!995329 testedP!183 lt!995329))))

(assert (=> d!810673 (isPrefix!2586 lt!995329 lt!995329)))

(assert (=> d!810673 (= (lemmaIsPrefixSameLengthThenSameList!470 lt!995329 testedP!183 lt!995329) lt!995378)))

(declare-fun bs!510927 () Bool)

(assert (= bs!510927 d!810673))

(declare-fun m!3216761 () Bool)

(assert (=> bs!510927 m!3216761))

(assert (=> bs!510927 m!3216573))

(assert (=> b!2786213 d!810673))

(declare-fun d!810675 () Bool)

(assert (=> d!810675 (= (valid!3042 cacheUp!890) (validCacheMapUp!379 (cache!3940 cacheUp!890)))))

(declare-fun bs!510928 () Bool)

(assert (= bs!510928 d!810675))

(assert (=> bs!510928 m!3216653))

(assert (=> b!2786228 d!810675))

(declare-fun d!810677 () Bool)

(declare-fun lt!995381 () Int)

(assert (=> d!810677 (= lt!995381 (size!25061 (list!12139 (_1!19268 lt!995336))))))

(declare-fun size!25064 (Conc!10015) Int)

(assert (=> d!810677 (= lt!995381 (size!25064 (c!452509 (_1!19268 lt!995336))))))

(assert (=> d!810677 (= (size!25062 (_1!19268 lt!995336)) lt!995381)))

(declare-fun bs!510929 () Bool)

(assert (= bs!510929 d!810677))

(assert (=> bs!510929 m!3216617))

(assert (=> bs!510929 m!3216617))

(declare-fun m!3216763 () Bool)

(assert (=> bs!510929 m!3216763))

(declare-fun m!3216765 () Bool)

(assert (=> bs!510929 m!3216765))

(assert (=> b!2786219 d!810677))

(declare-fun d!810679 () Bool)

(declare-fun lt!995382 () Int)

(assert (=> d!810679 (= lt!995382 (size!25061 (list!12139 totalInput!758)))))

(assert (=> d!810679 (= lt!995382 (size!25064 (c!452509 totalInput!758)))))

(assert (=> d!810679 (= (size!25062 totalInput!758) lt!995382)))

(declare-fun bs!510930 () Bool)

(assert (= bs!510930 d!810679))

(assert (=> bs!510930 m!3216585))

(assert (=> bs!510930 m!3216585))

(declare-fun m!3216767 () Bool)

(assert (=> bs!510930 m!3216767))

(declare-fun m!3216769 () Bool)

(assert (=> bs!510930 m!3216769))

(assert (=> b!2786222 d!810679))

(declare-fun d!810681 () Bool)

(declare-fun c!452521 () Bool)

(assert (=> d!810681 (= c!452521 ((_ is Node!10015) (c!452509 totalInput!758)))))

(declare-fun e!1758338 () Bool)

(assert (=> d!810681 (= (inv!43801 (c!452509 totalInput!758)) e!1758338)))

(declare-fun b!2786314 () Bool)

(declare-fun inv!43806 (Conc!10015) Bool)

(assert (=> b!2786314 (= e!1758338 (inv!43806 (c!452509 totalInput!758)))))

(declare-fun b!2786315 () Bool)

(declare-fun e!1758339 () Bool)

(assert (=> b!2786315 (= e!1758338 e!1758339)))

(declare-fun res!1162803 () Bool)

(assert (=> b!2786315 (= res!1162803 (not ((_ is Leaf!15256) (c!452509 totalInput!758))))))

(assert (=> b!2786315 (=> res!1162803 e!1758339)))

(declare-fun b!2786316 () Bool)

(declare-fun inv!43807 (Conc!10015) Bool)

(assert (=> b!2786316 (= e!1758339 (inv!43807 (c!452509 totalInput!758)))))

(assert (= (and d!810681 c!452521) b!2786314))

(assert (= (and d!810681 (not c!452521)) b!2786315))

(assert (= (and b!2786315 (not res!1162803)) b!2786316))

(declare-fun m!3216771 () Bool)

(assert (=> b!2786314 m!3216771))

(declare-fun m!3216773 () Bool)

(assert (=> b!2786316 m!3216773))

(assert (=> b!2786215 d!810681))

(declare-fun d!810683 () Bool)

(assert (=> d!810683 (= (array_inv!4417 (_keys!4191 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) (bvsge (size!25059 (_keys!4191 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786241 d!810683))

(declare-fun d!810685 () Bool)

(assert (=> d!810685 (= (array_inv!4419 (_values!4172 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) (bvsge (size!25063 (_values!4172 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786241 d!810685))

(declare-fun bs!510931 () Bool)

(declare-fun b!2786321 () Bool)

(declare-fun d!810687 () Bool)

(assert (= bs!510931 (and b!2786321 d!810687)))

(declare-fun lambda!102238 () Int)

(declare-fun lambda!102237 () Int)

(assert (=> bs!510931 (not (= lambda!102238 lambda!102237))))

(declare-fun bs!510932 () Bool)

(declare-fun b!2786322 () Bool)

(assert (= bs!510932 (and b!2786322 d!810687)))

(declare-fun lambda!102239 () Int)

(assert (=> bs!510932 (not (= lambda!102239 lambda!102237))))

(declare-fun bs!510933 () Bool)

(assert (= bs!510933 (and b!2786322 b!2786321)))

(assert (=> bs!510933 (= lambda!102239 lambda!102238)))

(declare-fun e!1758346 () Unit!46462)

(declare-fun Unit!46466 () Unit!46462)

(assert (=> b!2786321 (= e!1758346 Unit!46466)))

(declare-datatypes ((List!32343 0))(
  ( (Nil!32243) (Cons!32243 (h!37663 Context!4726) (t!228485 List!32343)) )
))
(declare-fun lt!995403 () List!32343)

(declare-fun call!182495 () List!32343)

(assert (=> b!2786321 (= lt!995403 call!182495)))

(declare-fun lt!995401 () Unit!46462)

(declare-fun lemmaNotForallThenExists!92 (List!32343 Int) Unit!46462)

(assert (=> b!2786321 (= lt!995401 (lemmaNotForallThenExists!92 lt!995403 lambda!102237))))

(declare-fun call!182494 () Bool)

(assert (=> b!2786321 call!182494))

(declare-fun lt!995400 () Unit!46462)

(assert (=> b!2786321 (= lt!995400 lt!995401)))

(declare-fun c!452532 () Bool)

(declare-fun bm!182490 () Bool)

(declare-fun lt!995402 () List!32343)

(declare-fun exists!988 (List!32343 Int) Bool)

(assert (=> bm!182490 (= call!182494 (exists!988 (ite c!452532 lt!995403 lt!995402) (ite c!452532 lambda!102238 lambda!102239)))))

(declare-fun lt!995405 () Bool)

(declare-datatypes ((Option!6270 0))(
  ( (None!6269) (Some!6269 (v!33850 List!32339)) )
))
(declare-fun isEmpty!18114 (Option!6270) Bool)

(declare-fun getLanguageWitness!200 ((InoxSet Context!4726)) Option!6270)

(assert (=> d!810687 (= lt!995405 (isEmpty!18114 (getLanguageWitness!200 z!3684)))))

(declare-fun forall!6656 ((InoxSet Context!4726) Int) Bool)

(assert (=> d!810687 (= lt!995405 (forall!6656 z!3684 lambda!102237))))

(declare-fun lt!995399 () Unit!46462)

(assert (=> d!810687 (= lt!995399 e!1758346)))

(assert (=> d!810687 (= c!452532 (not (forall!6656 z!3684 lambda!102237)))))

(assert (=> d!810687 (= (lostCauseZipper!463 z!3684) lt!995405)))

(declare-fun bm!182489 () Bool)

(declare-fun toList!1855 ((InoxSet Context!4726)) List!32343)

(assert (=> bm!182489 (= call!182495 (toList!1855 z!3684))))

(declare-fun Unit!46467 () Unit!46462)

(assert (=> b!2786322 (= e!1758346 Unit!46467)))

(assert (=> b!2786322 (= lt!995402 call!182495)))

(declare-fun lt!995404 () Unit!46462)

(declare-fun lemmaForallThenNotExists!92 (List!32343 Int) Unit!46462)

(assert (=> b!2786322 (= lt!995404 (lemmaForallThenNotExists!92 lt!995402 lambda!102237))))

(assert (=> b!2786322 (not call!182494)))

(declare-fun lt!995406 () Unit!46462)

(assert (=> b!2786322 (= lt!995406 lt!995404)))

(assert (= (and d!810687 c!452532) b!2786321))

(assert (= (and d!810687 (not c!452532)) b!2786322))

(assert (= (or b!2786321 b!2786322) bm!182489))

(assert (= (or b!2786321 b!2786322) bm!182490))

(declare-fun m!3216775 () Bool)

(assert (=> d!810687 m!3216775))

(assert (=> d!810687 m!3216775))

(declare-fun m!3216777 () Bool)

(assert (=> d!810687 m!3216777))

(declare-fun m!3216779 () Bool)

(assert (=> d!810687 m!3216779))

(assert (=> d!810687 m!3216779))

(declare-fun m!3216781 () Bool)

(assert (=> bm!182490 m!3216781))

(declare-fun m!3216783 () Bool)

(assert (=> b!2786322 m!3216783))

(declare-fun m!3216785 () Bool)

(assert (=> b!2786321 m!3216785))

(declare-fun m!3216787 () Bool)

(assert (=> bm!182489 m!3216787))

(assert (=> b!2786214 d!810687))

(declare-fun d!810689 () Bool)

(assert (=> d!810689 (= testedSuffix!143 lt!995335)))

(declare-fun lt!995409 () Unit!46462)

(declare-fun choose!16348 (List!32339 List!32339 List!32339 List!32339 List!32339) Unit!46462)

(assert (=> d!810689 (= lt!995409 (choose!16348 testedP!183 testedSuffix!143 testedP!183 lt!995335 lt!995329))))

(assert (=> d!810689 (isPrefix!2586 testedP!183 lt!995329)))

(assert (=> d!810689 (= (lemmaSamePrefixThenSameSuffix!1164 testedP!183 testedSuffix!143 testedP!183 lt!995335 lt!995329) lt!995409)))

(declare-fun bs!510934 () Bool)

(assert (= bs!510934 d!810689))

(declare-fun m!3216789 () Bool)

(assert (=> bs!510934 m!3216789))

(assert (=> bs!510934 m!3216635))

(assert (=> b!2786214 d!810689))

(declare-fun d!810691 () Bool)

(declare-fun lt!995412 () List!32339)

(assert (=> d!810691 (= (++!7965 testedP!183 lt!995412) lt!995329)))

(declare-fun e!1758349 () List!32339)

(assert (=> d!810691 (= lt!995412 e!1758349)))

(declare-fun c!452535 () Bool)

(assert (=> d!810691 (= c!452535 ((_ is Cons!32239) testedP!183))))

(assert (=> d!810691 (>= (size!25061 lt!995329) (size!25061 testedP!183))))

(assert (=> d!810691 (= (getSuffix!1263 lt!995329 testedP!183) lt!995412)))

(declare-fun b!2786327 () Bool)

(assert (=> b!2786327 (= e!1758349 (getSuffix!1263 (tail!4401 lt!995329) (t!228481 testedP!183)))))

(declare-fun b!2786328 () Bool)

(assert (=> b!2786328 (= e!1758349 lt!995329)))

(assert (= (and d!810691 c!452535) b!2786327))

(assert (= (and d!810691 (not c!452535)) b!2786328))

(declare-fun m!3216791 () Bool)

(assert (=> d!810691 m!3216791))

(assert (=> d!810691 m!3216567))

(assert (=> d!810691 m!3216581))

(assert (=> b!2786327 m!3216681))

(assert (=> b!2786327 m!3216681))

(declare-fun m!3216793 () Bool)

(assert (=> b!2786327 m!3216793))

(assert (=> b!2786214 d!810691))

(declare-fun b!2786347 () Bool)

(declare-fun e!1758362 () Bool)

(declare-fun lt!995415 () List!32339)

(declare-fun e!1758360 () Int)

(assert (=> b!2786347 (= e!1758362 (= (size!25061 lt!995415) e!1758360))))

(declare-fun c!452545 () Bool)

(assert (=> b!2786347 (= c!452545 (<= testedPSize!143 0))))

(declare-fun b!2786348 () Bool)

(declare-fun e!1758363 () Int)

(declare-fun call!182498 () Int)

(assert (=> b!2786348 (= e!1758363 (- call!182498 testedPSize!143))))

(declare-fun b!2786349 () Bool)

(assert (=> b!2786349 (= e!1758363 0)))

(declare-fun b!2786350 () Bool)

(assert (=> b!2786350 (= e!1758360 e!1758363)))

(declare-fun c!452544 () Bool)

(assert (=> b!2786350 (= c!452544 (>= testedPSize!143 call!182498))))

(declare-fun b!2786351 () Bool)

(declare-fun e!1758364 () List!32339)

(assert (=> b!2786351 (= e!1758364 (drop!1723 (t!228481 lt!995329) (- testedPSize!143 1)))))

(declare-fun b!2786352 () Bool)

(assert (=> b!2786352 (= e!1758364 lt!995329)))

(declare-fun b!2786353 () Bool)

(assert (=> b!2786353 (= e!1758360 call!182498)))

(declare-fun d!810693 () Bool)

(assert (=> d!810693 e!1758362))

(declare-fun res!1162806 () Bool)

(assert (=> d!810693 (=> (not res!1162806) (not e!1758362))))

(assert (=> d!810693 (= res!1162806 (= ((_ map implies) (content!4520 lt!995415) (content!4520 lt!995329)) ((as const (InoxSet C!16448)) true)))))

(declare-fun e!1758361 () List!32339)

(assert (=> d!810693 (= lt!995415 e!1758361)))

(declare-fun c!452547 () Bool)

(assert (=> d!810693 (= c!452547 ((_ is Nil!32239) lt!995329))))

(assert (=> d!810693 (= (drop!1723 lt!995329 testedPSize!143) lt!995415)))

(declare-fun b!2786354 () Bool)

(assert (=> b!2786354 (= e!1758361 e!1758364)))

(declare-fun c!452546 () Bool)

(assert (=> b!2786354 (= c!452546 (<= testedPSize!143 0))))

(declare-fun b!2786355 () Bool)

(assert (=> b!2786355 (= e!1758361 Nil!32239)))

(declare-fun bm!182493 () Bool)

(assert (=> bm!182493 (= call!182498 (size!25061 lt!995329))))

(assert (= (and d!810693 c!452547) b!2786355))

(assert (= (and d!810693 (not c!452547)) b!2786354))

(assert (= (and b!2786354 c!452546) b!2786352))

(assert (= (and b!2786354 (not c!452546)) b!2786351))

(assert (= (and d!810693 res!1162806) b!2786347))

(assert (= (and b!2786347 c!452545) b!2786353))

(assert (= (and b!2786347 (not c!452545)) b!2786350))

(assert (= (and b!2786350 c!452544) b!2786349))

(assert (= (and b!2786350 (not c!452544)) b!2786348))

(assert (= (or b!2786353 b!2786350 b!2786348) bm!182493))

(declare-fun m!3216795 () Bool)

(assert (=> b!2786347 m!3216795))

(declare-fun m!3216797 () Bool)

(assert (=> b!2786351 m!3216797))

(declare-fun m!3216799 () Bool)

(assert (=> d!810693 m!3216799))

(declare-fun m!3216801 () Bool)

(assert (=> d!810693 m!3216801))

(assert (=> bm!182493 m!3216567))

(assert (=> b!2786230 d!810693))

(declare-fun d!810695 () Bool)

(assert (=> d!810695 (and (= lt!995342 testedP!183) (= lt!995339 testedSuffix!143))))

(declare-fun lt!995418 () Unit!46462)

(declare-fun choose!16349 (List!32339 List!32339 List!32339 List!32339) Unit!46462)

(assert (=> d!810695 (= lt!995418 (choose!16349 lt!995342 lt!995339 testedP!183 testedSuffix!143))))

(assert (=> d!810695 (= (++!7965 lt!995342 lt!995339) (++!7965 testedP!183 testedSuffix!143))))

(assert (=> d!810695 (= (lemmaConcatSameAndSameSizesThenSameLists!356 lt!995342 lt!995339 testedP!183 testedSuffix!143) lt!995418)))

(declare-fun bs!510935 () Bool)

(assert (= bs!510935 d!810695))

(declare-fun m!3216803 () Bool)

(assert (=> bs!510935 m!3216803))

(assert (=> bs!510935 m!3216613))

(assert (=> bs!510935 m!3216593))

(assert (=> b!2786230 d!810695))

(declare-fun d!810697 () Bool)

(declare-fun lt!995421 () C!16448)

(assert (=> d!810697 (= lt!995421 (apply!7542 (list!12139 totalInput!758) testedPSize!143))))

(declare-fun apply!7543 (Conc!10015 Int) C!16448)

(assert (=> d!810697 (= lt!995421 (apply!7543 (c!452509 totalInput!758) testedPSize!143))))

(declare-fun e!1758367 () Bool)

(assert (=> d!810697 e!1758367))

(declare-fun res!1162809 () Bool)

(assert (=> d!810697 (=> (not res!1162809) (not e!1758367))))

(assert (=> d!810697 (= res!1162809 (<= 0 testedPSize!143))))

(assert (=> d!810697 (= (apply!7541 totalInput!758 testedPSize!143) lt!995421)))

(declare-fun b!2786358 () Bool)

(assert (=> b!2786358 (= e!1758367 (< testedPSize!143 (size!25062 totalInput!758)))))

(assert (= (and d!810697 res!1162809) b!2786358))

(assert (=> d!810697 m!3216585))

(assert (=> d!810697 m!3216585))

(declare-fun m!3216805 () Bool)

(assert (=> d!810697 m!3216805))

(declare-fun m!3216807 () Bool)

(assert (=> d!810697 m!3216807))

(assert (=> b!2786358 m!3216583))

(assert (=> b!2786230 d!810697))

(declare-fun d!810699 () Bool)

(declare-fun lt!995424 () C!16448)

(declare-fun contains!6003 (List!32339 C!16448) Bool)

(assert (=> d!810699 (contains!6003 lt!995329 lt!995424)))

(declare-fun e!1758372 () C!16448)

(assert (=> d!810699 (= lt!995424 e!1758372)))

(declare-fun c!452550 () Bool)

(assert (=> d!810699 (= c!452550 (= testedPSize!143 0))))

(declare-fun e!1758373 () Bool)

(assert (=> d!810699 e!1758373))

(declare-fun res!1162812 () Bool)

(assert (=> d!810699 (=> (not res!1162812) (not e!1758373))))

(assert (=> d!810699 (= res!1162812 (<= 0 testedPSize!143))))

(assert (=> d!810699 (= (apply!7542 lt!995329 testedPSize!143) lt!995424)))

(declare-fun b!2786365 () Bool)

(assert (=> b!2786365 (= e!1758373 (< testedPSize!143 (size!25061 lt!995329)))))

(declare-fun b!2786366 () Bool)

(assert (=> b!2786366 (= e!1758372 (head!6169 lt!995329))))

(declare-fun b!2786367 () Bool)

(assert (=> b!2786367 (= e!1758372 (apply!7542 (tail!4401 lt!995329) (- testedPSize!143 1)))))

(assert (= (and d!810699 res!1162812) b!2786365))

(assert (= (and d!810699 c!452550) b!2786366))

(assert (= (and d!810699 (not c!452550)) b!2786367))

(declare-fun m!3216809 () Bool)

(assert (=> d!810699 m!3216809))

(assert (=> b!2786365 m!3216567))

(assert (=> b!2786366 m!3216687))

(assert (=> b!2786367 m!3216681))

(assert (=> b!2786367 m!3216681))

(declare-fun m!3216811 () Bool)

(assert (=> b!2786367 m!3216811))

(assert (=> b!2786230 d!810699))

(declare-fun d!810701 () Bool)

(assert (=> d!810701 (= (head!6169 testedSuffix!143) (h!37659 testedSuffix!143))))

(assert (=> b!2786230 d!810701))

(declare-fun d!810703 () Bool)

(assert (=> d!810703 (= (head!6169 (drop!1723 lt!995329 testedPSize!143)) (apply!7542 lt!995329 testedPSize!143))))

(declare-fun lt!995427 () Unit!46462)

(declare-fun choose!16350 (List!32339 Int) Unit!46462)

(assert (=> d!810703 (= lt!995427 (choose!16350 lt!995329 testedPSize!143))))

(declare-fun e!1758376 () Bool)

(assert (=> d!810703 e!1758376))

(declare-fun res!1162815 () Bool)

(assert (=> d!810703 (=> (not res!1162815) (not e!1758376))))

(assert (=> d!810703 (= res!1162815 (>= testedPSize!143 0))))

(assert (=> d!810703 (= (lemmaDropApply!929 lt!995329 testedPSize!143) lt!995427)))

(declare-fun b!2786370 () Bool)

(assert (=> b!2786370 (= e!1758376 (< testedPSize!143 (size!25061 lt!995329)))))

(assert (= (and d!810703 res!1162815) b!2786370))

(assert (=> d!810703 m!3216601))

(assert (=> d!810703 m!3216601))

(assert (=> d!810703 m!3216603))

(assert (=> d!810703 m!3216605))

(declare-fun m!3216813 () Bool)

(assert (=> d!810703 m!3216813))

(assert (=> b!2786370 m!3216567))

(assert (=> b!2786230 d!810703))

(declare-fun d!810705 () Bool)

(assert (=> d!810705 (= (head!6169 (drop!1723 lt!995329 testedPSize!143)) (h!37659 (drop!1723 lt!995329 testedPSize!143)))))

(assert (=> b!2786230 d!810705))

(declare-fun b!2786375 () Bool)

(declare-fun e!1758379 () Bool)

(declare-fun tp!883473 () Bool)

(declare-fun tp!883474 () Bool)

(assert (=> b!2786375 (= e!1758379 (and tp!883473 tp!883474))))

(assert (=> b!2786240 (= tp!883450 e!1758379)))

(assert (= (and b!2786240 ((_ is Cons!32240) (exprs!2863 setElem!23554))) b!2786375))

(declare-fun tp!883503 () Bool)

(declare-fun setElem!23560 () Context!4726)

(declare-fun setRes!23560 () Bool)

(declare-fun e!1758393 () Bool)

(declare-fun setNonEmpty!23559 () Bool)

(assert (=> setNonEmpty!23559 (= setRes!23560 (and tp!883503 (inv!43802 setElem!23560) e!1758393))))

(declare-fun mapValue!17739 () List!32341)

(declare-fun setRest!23560 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23559 (= (_2!19267 (h!37661 mapValue!17739)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23560 true) setRest!23560))))

(declare-fun b!2786390 () Bool)

(declare-fun tp!883505 () Bool)

(assert (=> b!2786390 (= e!1758393 tp!883505)))

(declare-fun b!2786391 () Bool)

(declare-fun e!1758397 () Bool)

(declare-fun tp!883506 () Bool)

(assert (=> b!2786391 (= e!1758397 tp!883506)))

(declare-fun tp!883500 () Bool)

(declare-fun e!1758392 () Bool)

(declare-fun tp!883502 () Bool)

(declare-fun b!2786392 () Bool)

(assert (=> b!2786392 (= e!1758392 (and tp!883500 (inv!43802 (_2!19266 (_1!19267 (h!37661 mapValue!17739)))) e!1758397 tp_is_empty!14103 setRes!23560 tp!883502))))

(declare-fun condSetEmpty!23560 () Bool)

(assert (=> b!2786392 (= condSetEmpty!23560 (= (_2!19267 (h!37661 mapValue!17739)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun setIsEmpty!23559 () Bool)

(assert (=> setIsEmpty!23559 setRes!23560))

(declare-fun condMapEmpty!17739 () Bool)

(declare-fun mapDefault!17739 () List!32341)

(assert (=> mapNonEmpty!17735 (= condMapEmpty!17739 (= mapRest!17735 ((as const (Array (_ BitVec 32) List!32341)) mapDefault!17739)))))

(declare-fun e!1758394 () Bool)

(declare-fun mapRes!17739 () Bool)

(assert (=> mapNonEmpty!17735 (= tp!883466 (and e!1758394 mapRes!17739))))

(declare-fun tp!883498 () Bool)

(declare-fun tp!883497 () Bool)

(declare-fun setRes!23559 () Bool)

(declare-fun e!1758396 () Bool)

(declare-fun b!2786393 () Bool)

(assert (=> b!2786393 (= e!1758394 (and tp!883497 (inv!43802 (_2!19266 (_1!19267 (h!37661 mapDefault!17739)))) e!1758396 tp_is_empty!14103 setRes!23559 tp!883498))))

(declare-fun condSetEmpty!23559 () Bool)

(assert (=> b!2786393 (= condSetEmpty!23559 (= (_2!19267 (h!37661 mapDefault!17739)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun setIsEmpty!23560 () Bool)

(assert (=> setIsEmpty!23560 setRes!23559))

(declare-fun mapNonEmpty!17739 () Bool)

(declare-fun tp!883504 () Bool)

(assert (=> mapNonEmpty!17739 (= mapRes!17739 (and tp!883504 e!1758392))))

(declare-fun mapKey!17739 () (_ BitVec 32))

(declare-fun mapRest!17739 () (Array (_ BitVec 32) List!32341))

(assert (=> mapNonEmpty!17739 (= mapRest!17735 (store mapRest!17739 mapKey!17739 mapValue!17739))))

(declare-fun setNonEmpty!23560 () Bool)

(declare-fun tp!883507 () Bool)

(declare-fun setElem!23559 () Context!4726)

(declare-fun e!1758395 () Bool)

(assert (=> setNonEmpty!23560 (= setRes!23559 (and tp!883507 (inv!43802 setElem!23559) e!1758395))))

(declare-fun setRest!23559 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23560 (= (_2!19267 (h!37661 mapDefault!17739)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23559 true) setRest!23559))))

(declare-fun b!2786394 () Bool)

(declare-fun tp!883499 () Bool)

(assert (=> b!2786394 (= e!1758396 tp!883499)))

(declare-fun mapIsEmpty!17739 () Bool)

(assert (=> mapIsEmpty!17739 mapRes!17739))

(declare-fun b!2786395 () Bool)

(declare-fun tp!883501 () Bool)

(assert (=> b!2786395 (= e!1758395 tp!883501)))

(assert (= (and mapNonEmpty!17735 condMapEmpty!17739) mapIsEmpty!17739))

(assert (= (and mapNonEmpty!17735 (not condMapEmpty!17739)) mapNonEmpty!17739))

(assert (= b!2786392 b!2786391))

(assert (= (and b!2786392 condSetEmpty!23560) setIsEmpty!23559))

(assert (= (and b!2786392 (not condSetEmpty!23560)) setNonEmpty!23559))

(assert (= setNonEmpty!23559 b!2786390))

(assert (= (and mapNonEmpty!17739 ((_ is Cons!32241) mapValue!17739)) b!2786392))

(assert (= b!2786393 b!2786394))

(assert (= (and b!2786393 condSetEmpty!23559) setIsEmpty!23560))

(assert (= (and b!2786393 (not condSetEmpty!23559)) setNonEmpty!23560))

(assert (= setNonEmpty!23560 b!2786395))

(assert (= (and mapNonEmpty!17735 ((_ is Cons!32241) mapDefault!17739)) b!2786393))

(declare-fun m!3216815 () Bool)

(assert (=> b!2786393 m!3216815))

(declare-fun m!3216817 () Bool)

(assert (=> mapNonEmpty!17739 m!3216817))

(declare-fun m!3216819 () Bool)

(assert (=> b!2786392 m!3216819))

(declare-fun m!3216821 () Bool)

(assert (=> setNonEmpty!23560 m!3216821))

(declare-fun m!3216823 () Bool)

(assert (=> setNonEmpty!23559 m!3216823))

(declare-fun e!1758405 () Bool)

(declare-fun setNonEmpty!23563 () Bool)

(declare-fun setRes!23563 () Bool)

(declare-fun setElem!23563 () Context!4726)

(declare-fun tp!883519 () Bool)

(assert (=> setNonEmpty!23563 (= setRes!23563 (and tp!883519 (inv!43802 setElem!23563) e!1758405))))

(declare-fun setRest!23563 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23563 (= (_2!19267 (h!37661 mapValue!17735)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23563 true) setRest!23563))))

(declare-fun e!1758406 () Bool)

(assert (=> mapNonEmpty!17735 (= tp!883455 e!1758406)))

(declare-fun setIsEmpty!23563 () Bool)

(assert (=> setIsEmpty!23563 setRes!23563))

(declare-fun b!2786404 () Bool)

(declare-fun tp!883522 () Bool)

(assert (=> b!2786404 (= e!1758405 tp!883522)))

(declare-fun tp!883521 () Bool)

(declare-fun tp!883518 () Bool)

(declare-fun e!1758404 () Bool)

(declare-fun b!2786405 () Bool)

(assert (=> b!2786405 (= e!1758406 (and tp!883518 (inv!43802 (_2!19266 (_1!19267 (h!37661 mapValue!17735)))) e!1758404 tp_is_empty!14103 setRes!23563 tp!883521))))

(declare-fun condSetEmpty!23563 () Bool)

(assert (=> b!2786405 (= condSetEmpty!23563 (= (_2!19267 (h!37661 mapValue!17735)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun b!2786406 () Bool)

(declare-fun tp!883520 () Bool)

(assert (=> b!2786406 (= e!1758404 tp!883520)))

(assert (= b!2786405 b!2786406))

(assert (= (and b!2786405 condSetEmpty!23563) setIsEmpty!23563))

(assert (= (and b!2786405 (not condSetEmpty!23563)) setNonEmpty!23563))

(assert (= setNonEmpty!23563 b!2786404))

(assert (= (and mapNonEmpty!17735 ((_ is Cons!32241) mapValue!17735)) b!2786405))

(declare-fun m!3216825 () Bool)

(assert (=> setNonEmpty!23563 m!3216825))

(declare-fun m!3216827 () Bool)

(assert (=> b!2786405 m!3216827))

(declare-fun condSetEmpty!23566 () Bool)

(assert (=> setNonEmpty!23554 (= condSetEmpty!23566 (= setRest!23554 ((as const (Array Context!4726 Bool)) false)))))

(declare-fun setRes!23566 () Bool)

(assert (=> setNonEmpty!23554 (= tp!883454 setRes!23566)))

(declare-fun setIsEmpty!23566 () Bool)

(assert (=> setIsEmpty!23566 setRes!23566))

(declare-fun e!1758409 () Bool)

(declare-fun setElem!23566 () Context!4726)

(declare-fun setNonEmpty!23566 () Bool)

(declare-fun tp!883527 () Bool)

(assert (=> setNonEmpty!23566 (= setRes!23566 (and tp!883527 (inv!43802 setElem!23566) e!1758409))))

(declare-fun setRest!23566 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23566 (= setRest!23554 ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23566 true) setRest!23566))))

(declare-fun b!2786411 () Bool)

(declare-fun tp!883528 () Bool)

(assert (=> b!2786411 (= e!1758409 tp!883528)))

(assert (= (and setNonEmpty!23554 condSetEmpty!23566) setIsEmpty!23566))

(assert (= (and setNonEmpty!23554 (not condSetEmpty!23566)) setNonEmpty!23566))

(assert (= setNonEmpty!23566 b!2786411))

(declare-fun m!3216829 () Bool)

(assert (=> setNonEmpty!23566 m!3216829))

(declare-fun b!2786416 () Bool)

(declare-fun e!1758412 () Bool)

(declare-fun tp!883531 () Bool)

(assert (=> b!2786416 (= e!1758412 (and tp_is_empty!14103 tp!883531))))

(assert (=> b!2786234 (= tp!883467 e!1758412)))

(assert (= (and b!2786234 ((_ is Cons!32239) (t!228481 testedP!183))) b!2786416))

(declare-fun b!2786417 () Bool)

(declare-fun e!1758413 () Bool)

(declare-fun tp!883532 () Bool)

(assert (=> b!2786417 (= e!1758413 (and tp_is_empty!14103 tp!883532))))

(assert (=> b!2786237 (= tp!883451 e!1758413)))

(assert (= (and b!2786237 ((_ is Cons!32239) (t!228481 testedSuffix!143))) b!2786417))

(declare-fun e!1758418 () Bool)

(declare-fun tp!883540 () Bool)

(declare-fun b!2786426 () Bool)

(declare-fun tp!883539 () Bool)

(assert (=> b!2786426 (= e!1758418 (and (inv!43801 (left!24479 (c!452509 totalInput!758))) tp!883540 (inv!43801 (right!24809 (c!452509 totalInput!758))) tp!883539))))

(declare-fun b!2786428 () Bool)

(declare-fun e!1758419 () Bool)

(declare-fun tp!883541 () Bool)

(assert (=> b!2786428 (= e!1758419 tp!883541)))

(declare-fun b!2786427 () Bool)

(declare-fun inv!43808 (IArray!20035) Bool)

(assert (=> b!2786427 (= e!1758418 (and (inv!43808 (xs!13126 (c!452509 totalInput!758))) e!1758419))))

(assert (=> b!2786215 (= tp!883452 (and (inv!43801 (c!452509 totalInput!758)) e!1758418))))

(assert (= (and b!2786215 ((_ is Node!10015) (c!452509 totalInput!758))) b!2786426))

(assert (= b!2786427 b!2786428))

(assert (= (and b!2786215 ((_ is Leaf!15256) (c!452509 totalInput!758))) b!2786427))

(declare-fun m!3216831 () Bool)

(assert (=> b!2786426 m!3216831))

(declare-fun m!3216833 () Bool)

(assert (=> b!2786426 m!3216833))

(declare-fun m!3216835 () Bool)

(assert (=> b!2786427 m!3216835))

(assert (=> b!2786215 m!3216563))

(declare-fun e!1758421 () Bool)

(declare-fun setNonEmpty!23567 () Bool)

(declare-fun tp!883543 () Bool)

(declare-fun setRes!23567 () Bool)

(declare-fun setElem!23567 () Context!4726)

(assert (=> setNonEmpty!23567 (= setRes!23567 (and tp!883543 (inv!43802 setElem!23567) e!1758421))))

(declare-fun setRest!23567 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23567 (= (_2!19267 (h!37661 mapDefault!17735)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23567 true) setRest!23567))))

(declare-fun e!1758422 () Bool)

(assert (=> b!2786236 (= tp!883463 e!1758422)))

(declare-fun setIsEmpty!23567 () Bool)

(assert (=> setIsEmpty!23567 setRes!23567))

(declare-fun b!2786429 () Bool)

(declare-fun tp!883546 () Bool)

(assert (=> b!2786429 (= e!1758421 tp!883546)))

(declare-fun b!2786430 () Bool)

(declare-fun e!1758420 () Bool)

(declare-fun tp!883545 () Bool)

(declare-fun tp!883542 () Bool)

(assert (=> b!2786430 (= e!1758422 (and tp!883542 (inv!43802 (_2!19266 (_1!19267 (h!37661 mapDefault!17735)))) e!1758420 tp_is_empty!14103 setRes!23567 tp!883545))))

(declare-fun condSetEmpty!23567 () Bool)

(assert (=> b!2786430 (= condSetEmpty!23567 (= (_2!19267 (h!37661 mapDefault!17735)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun b!2786431 () Bool)

(declare-fun tp!883544 () Bool)

(assert (=> b!2786431 (= e!1758420 tp!883544)))

(assert (= b!2786430 b!2786431))

(assert (= (and b!2786430 condSetEmpty!23567) setIsEmpty!23567))

(assert (= (and b!2786430 (not condSetEmpty!23567)) setNonEmpty!23567))

(assert (= setNonEmpty!23567 b!2786429))

(assert (= (and b!2786236 ((_ is Cons!32241) mapDefault!17735)) b!2786430))

(declare-fun m!3216837 () Bool)

(assert (=> setNonEmpty!23567 m!3216837))

(declare-fun m!3216839 () Bool)

(assert (=> b!2786430 m!3216839))

(declare-fun setIsEmpty!23572 () Bool)

(declare-fun setRes!23572 () Bool)

(assert (=> setIsEmpty!23572 setRes!23572))

(declare-fun setIsEmpty!23573 () Bool)

(declare-fun setRes!23573 () Bool)

(assert (=> setIsEmpty!23573 setRes!23573))

(declare-fun b!2786446 () Bool)

(declare-fun e!1758436 () Bool)

(declare-fun tp!883566 () Bool)

(assert (=> b!2786446 (= e!1758436 tp!883566)))

(declare-fun mapIsEmpty!17742 () Bool)

(declare-fun mapRes!17742 () Bool)

(assert (=> mapIsEmpty!17742 mapRes!17742))

(declare-fun mapNonEmpty!17742 () Bool)

(declare-fun tp!883568 () Bool)

(declare-fun e!1758437 () Bool)

(assert (=> mapNonEmpty!17742 (= mapRes!17742 (and tp!883568 e!1758437))))

(declare-fun mapRest!17742 () (Array (_ BitVec 32) List!32342))

(declare-fun mapValue!17742 () List!32342)

(declare-fun mapKey!17742 () (_ BitVec 32))

(assert (=> mapNonEmpty!17742 (= mapRest!17736 (store mapRest!17742 mapKey!17742 mapValue!17742))))

(declare-fun setNonEmpty!23572 () Bool)

(declare-fun e!1758435 () Bool)

(declare-fun tp!883567 () Bool)

(declare-fun setElem!23573 () Context!4726)

(assert (=> setNonEmpty!23572 (= setRes!23573 (and tp!883567 (inv!43802 setElem!23573) e!1758435))))

(declare-fun setRest!23572 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23572 (= (_2!19270 (h!37662 mapValue!17742)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23573 true) setRest!23572))))

(declare-fun tp!883569 () Bool)

(declare-fun e!1758439 () Bool)

(declare-fun setNonEmpty!23573 () Bool)

(declare-fun setElem!23572 () Context!4726)

(assert (=> setNonEmpty!23573 (= setRes!23572 (and tp!883569 (inv!43802 setElem!23572) e!1758439))))

(declare-fun mapDefault!17742 () List!32342)

(declare-fun setRest!23573 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23573 (= (_2!19270 (h!37662 mapDefault!17742)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23572 true) setRest!23573))))

(declare-fun tp!883565 () Bool)

(declare-fun b!2786448 () Bool)

(assert (=> b!2786448 (= e!1758437 (and (inv!43802 (_1!19269 (_1!19270 (h!37662 mapValue!17742)))) e!1758436 tp_is_empty!14103 setRes!23573 tp!883565))))

(declare-fun condSetEmpty!23572 () Bool)

(assert (=> b!2786448 (= condSetEmpty!23572 (= (_2!19270 (h!37662 mapValue!17742)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun b!2786449 () Bool)

(declare-fun e!1758440 () Bool)

(declare-fun tp!883570 () Bool)

(assert (=> b!2786449 (= e!1758440 tp!883570)))

(declare-fun b!2786450 () Bool)

(declare-fun e!1758438 () Bool)

(declare-fun tp!883572 () Bool)

(assert (=> b!2786450 (= e!1758438 (and (inv!43802 (_1!19269 (_1!19270 (h!37662 mapDefault!17742)))) e!1758440 tp_is_empty!14103 setRes!23572 tp!883572))))

(declare-fun condSetEmpty!23573 () Bool)

(assert (=> b!2786450 (= condSetEmpty!23573 (= (_2!19270 (h!37662 mapDefault!17742)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun b!2786451 () Bool)

(declare-fun tp!883573 () Bool)

(assert (=> b!2786451 (= e!1758439 tp!883573)))

(declare-fun condMapEmpty!17742 () Bool)

(assert (=> mapNonEmpty!17736 (= condMapEmpty!17742 (= mapRest!17736 ((as const (Array (_ BitVec 32) List!32342)) mapDefault!17742)))))

(assert (=> mapNonEmpty!17736 (= tp!883468 (and e!1758438 mapRes!17742))))

(declare-fun b!2786447 () Bool)

(declare-fun tp!883571 () Bool)

(assert (=> b!2786447 (= e!1758435 tp!883571)))

(assert (= (and mapNonEmpty!17736 condMapEmpty!17742) mapIsEmpty!17742))

(assert (= (and mapNonEmpty!17736 (not condMapEmpty!17742)) mapNonEmpty!17742))

(assert (= b!2786448 b!2786446))

(assert (= (and b!2786448 condSetEmpty!23572) setIsEmpty!23573))

(assert (= (and b!2786448 (not condSetEmpty!23572)) setNonEmpty!23572))

(assert (= setNonEmpty!23572 b!2786447))

(assert (= (and mapNonEmpty!17742 ((_ is Cons!32242) mapValue!17742)) b!2786448))

(assert (= b!2786450 b!2786449))

(assert (= (and b!2786450 condSetEmpty!23573) setIsEmpty!23572))

(assert (= (and b!2786450 (not condSetEmpty!23573)) setNonEmpty!23573))

(assert (= setNonEmpty!23573 b!2786451))

(assert (= (and mapNonEmpty!17736 ((_ is Cons!32242) mapDefault!17742)) b!2786450))

(declare-fun m!3216841 () Bool)

(assert (=> setNonEmpty!23573 m!3216841))

(declare-fun m!3216843 () Bool)

(assert (=> b!2786448 m!3216843))

(declare-fun m!3216845 () Bool)

(assert (=> setNonEmpty!23572 m!3216845))

(declare-fun m!3216847 () Bool)

(assert (=> b!2786450 m!3216847))

(declare-fun m!3216849 () Bool)

(assert (=> mapNonEmpty!17742 m!3216849))

(declare-fun setIsEmpty!23576 () Bool)

(declare-fun setRes!23576 () Bool)

(assert (=> setIsEmpty!23576 setRes!23576))

(declare-fun tp!883584 () Bool)

(declare-fun e!1758447 () Bool)

(declare-fun b!2786460 () Bool)

(declare-fun e!1758448 () Bool)

(assert (=> b!2786460 (= e!1758448 (and (inv!43802 (_1!19269 (_1!19270 (h!37662 mapValue!17736)))) e!1758447 tp_is_empty!14103 setRes!23576 tp!883584))))

(declare-fun condSetEmpty!23576 () Bool)

(assert (=> b!2786460 (= condSetEmpty!23576 (= (_2!19270 (h!37662 mapValue!17736)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun setNonEmpty!23576 () Bool)

(declare-fun tp!883585 () Bool)

(declare-fun e!1758449 () Bool)

(declare-fun setElem!23576 () Context!4726)

(assert (=> setNonEmpty!23576 (= setRes!23576 (and tp!883585 (inv!43802 setElem!23576) e!1758449))))

(declare-fun setRest!23576 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23576 (= (_2!19270 (h!37662 mapValue!17736)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23576 true) setRest!23576))))

(assert (=> mapNonEmpty!17736 (= tp!883453 e!1758448)))

(declare-fun b!2786461 () Bool)

(declare-fun tp!883582 () Bool)

(assert (=> b!2786461 (= e!1758447 tp!883582)))

(declare-fun b!2786462 () Bool)

(declare-fun tp!883583 () Bool)

(assert (=> b!2786462 (= e!1758449 tp!883583)))

(assert (= b!2786460 b!2786461))

(assert (= (and b!2786460 condSetEmpty!23576) setIsEmpty!23576))

(assert (= (and b!2786460 (not condSetEmpty!23576)) setNonEmpty!23576))

(assert (= setNonEmpty!23576 b!2786462))

(assert (= (and mapNonEmpty!17736 ((_ is Cons!32242) mapValue!17736)) b!2786460))

(declare-fun m!3216851 () Bool)

(assert (=> b!2786460 m!3216851))

(declare-fun m!3216853 () Bool)

(assert (=> setNonEmpty!23576 m!3216853))

(declare-fun setIsEmpty!23577 () Bool)

(declare-fun setRes!23577 () Bool)

(assert (=> setIsEmpty!23577 setRes!23577))

(declare-fun b!2786463 () Bool)

(declare-fun tp!883588 () Bool)

(declare-fun e!1758450 () Bool)

(declare-fun e!1758451 () Bool)

(assert (=> b!2786463 (= e!1758451 (and (inv!43802 (_1!19269 (_1!19270 (h!37662 (zeroValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))))) e!1758450 tp_is_empty!14103 setRes!23577 tp!883588))))

(declare-fun condSetEmpty!23577 () Bool)

(assert (=> b!2786463 (= condSetEmpty!23577 (= (_2!19270 (h!37662 (zeroValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun tp!883589 () Bool)

(declare-fun setElem!23577 () Context!4726)

(declare-fun setNonEmpty!23577 () Bool)

(declare-fun e!1758452 () Bool)

(assert (=> setNonEmpty!23577 (= setRes!23577 (and tp!883589 (inv!43802 setElem!23577) e!1758452))))

(declare-fun setRest!23577 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23577 (= (_2!19270 (h!37662 (zeroValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23577 true) setRest!23577))))

(assert (=> b!2786241 (= tp!883462 e!1758451)))

(declare-fun b!2786464 () Bool)

(declare-fun tp!883586 () Bool)

(assert (=> b!2786464 (= e!1758450 tp!883586)))

(declare-fun b!2786465 () Bool)

(declare-fun tp!883587 () Bool)

(assert (=> b!2786465 (= e!1758452 tp!883587)))

(assert (= b!2786463 b!2786464))

(assert (= (and b!2786463 condSetEmpty!23577) setIsEmpty!23577))

(assert (= (and b!2786463 (not condSetEmpty!23577)) setNonEmpty!23577))

(assert (= setNonEmpty!23577 b!2786465))

(assert (= (and b!2786241 ((_ is Cons!32242) (zeroValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))) b!2786463))

(declare-fun m!3216855 () Bool)

(assert (=> b!2786463 m!3216855))

(declare-fun m!3216857 () Bool)

(assert (=> setNonEmpty!23577 m!3216857))

(declare-fun setIsEmpty!23578 () Bool)

(declare-fun setRes!23578 () Bool)

(assert (=> setIsEmpty!23578 setRes!23578))

(declare-fun b!2786466 () Bool)

(declare-fun tp!883592 () Bool)

(declare-fun e!1758454 () Bool)

(declare-fun e!1758453 () Bool)

(assert (=> b!2786466 (= e!1758454 (and (inv!43802 (_1!19269 (_1!19270 (h!37662 (minValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))))) e!1758453 tp_is_empty!14103 setRes!23578 tp!883592))))

(declare-fun condSetEmpty!23578 () Bool)

(assert (=> b!2786466 (= condSetEmpty!23578 (= (_2!19270 (h!37662 (minValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun e!1758455 () Bool)

(declare-fun setElem!23578 () Context!4726)

(declare-fun setNonEmpty!23578 () Bool)

(declare-fun tp!883593 () Bool)

(assert (=> setNonEmpty!23578 (= setRes!23578 (and tp!883593 (inv!43802 setElem!23578) e!1758455))))

(declare-fun setRest!23578 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23578 (= (_2!19270 (h!37662 (minValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23578 true) setRest!23578))))

(assert (=> b!2786241 (= tp!883464 e!1758454)))

(declare-fun b!2786467 () Bool)

(declare-fun tp!883590 () Bool)

(assert (=> b!2786467 (= e!1758453 tp!883590)))

(declare-fun b!2786468 () Bool)

(declare-fun tp!883591 () Bool)

(assert (=> b!2786468 (= e!1758455 tp!883591)))

(assert (= b!2786466 b!2786467))

(assert (= (and b!2786466 condSetEmpty!23578) setIsEmpty!23578))

(assert (= (and b!2786466 (not condSetEmpty!23578)) setNonEmpty!23578))

(assert (= setNonEmpty!23578 b!2786468))

(assert (= (and b!2786241 ((_ is Cons!32242) (minValue!4150 (v!33848 (underlying!7985 (v!33849 (underlying!7986 (cache!3940 cacheUp!890)))))))) b!2786466))

(declare-fun m!3216859 () Bool)

(assert (=> b!2786466 m!3216859))

(declare-fun m!3216861 () Bool)

(assert (=> setNonEmpty!23578 m!3216861))

(declare-fun setElem!23579 () Context!4726)

(declare-fun setNonEmpty!23579 () Bool)

(declare-fun tp!883595 () Bool)

(declare-fun e!1758457 () Bool)

(declare-fun setRes!23579 () Bool)

(assert (=> setNonEmpty!23579 (= setRes!23579 (and tp!883595 (inv!43802 setElem!23579) e!1758457))))

(declare-fun setRest!23579 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23579 (= (_2!19267 (h!37661 (zeroValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23579 true) setRest!23579))))

(declare-fun e!1758458 () Bool)

(assert (=> b!2786218 (= tp!883465 e!1758458)))

(declare-fun setIsEmpty!23579 () Bool)

(assert (=> setIsEmpty!23579 setRes!23579))

(declare-fun b!2786469 () Bool)

(declare-fun tp!883598 () Bool)

(assert (=> b!2786469 (= e!1758457 tp!883598)))

(declare-fun e!1758456 () Bool)

(declare-fun b!2786470 () Bool)

(declare-fun tp!883597 () Bool)

(declare-fun tp!883594 () Bool)

(assert (=> b!2786470 (= e!1758458 (and tp!883594 (inv!43802 (_2!19266 (_1!19267 (h!37661 (zeroValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))))) e!1758456 tp_is_empty!14103 setRes!23579 tp!883597))))

(declare-fun condSetEmpty!23579 () Bool)

(assert (=> b!2786470 (= condSetEmpty!23579 (= (_2!19267 (h!37661 (zeroValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun b!2786471 () Bool)

(declare-fun tp!883596 () Bool)

(assert (=> b!2786471 (= e!1758456 tp!883596)))

(assert (= b!2786470 b!2786471))

(assert (= (and b!2786470 condSetEmpty!23579) setIsEmpty!23579))

(assert (= (and b!2786470 (not condSetEmpty!23579)) setNonEmpty!23579))

(assert (= setNonEmpty!23579 b!2786469))

(assert (= (and b!2786218 ((_ is Cons!32241) (zeroValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))) b!2786470))

(declare-fun m!3216863 () Bool)

(assert (=> setNonEmpty!23579 m!3216863))

(declare-fun m!3216865 () Bool)

(assert (=> b!2786470 m!3216865))

(declare-fun tp!883600 () Bool)

(declare-fun setRes!23580 () Bool)

(declare-fun e!1758460 () Bool)

(declare-fun setElem!23580 () Context!4726)

(declare-fun setNonEmpty!23580 () Bool)

(assert (=> setNonEmpty!23580 (= setRes!23580 (and tp!883600 (inv!43802 setElem!23580) e!1758460))))

(declare-fun setRest!23580 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23580 (= (_2!19267 (h!37661 (minValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23580 true) setRest!23580))))

(declare-fun e!1758461 () Bool)

(assert (=> b!2786218 (= tp!883459 e!1758461)))

(declare-fun setIsEmpty!23580 () Bool)

(assert (=> setIsEmpty!23580 setRes!23580))

(declare-fun b!2786472 () Bool)

(declare-fun tp!883603 () Bool)

(assert (=> b!2786472 (= e!1758460 tp!883603)))

(declare-fun e!1758459 () Bool)

(declare-fun tp!883599 () Bool)

(declare-fun tp!883602 () Bool)

(declare-fun b!2786473 () Bool)

(assert (=> b!2786473 (= e!1758461 (and tp!883599 (inv!43802 (_2!19266 (_1!19267 (h!37661 (minValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))))) e!1758459 tp_is_empty!14103 setRes!23580 tp!883602))))

(declare-fun condSetEmpty!23580 () Bool)

(assert (=> b!2786473 (= condSetEmpty!23580 (= (_2!19267 (h!37661 (minValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun b!2786474 () Bool)

(declare-fun tp!883601 () Bool)

(assert (=> b!2786474 (= e!1758459 tp!883601)))

(assert (= b!2786473 b!2786474))

(assert (= (and b!2786473 condSetEmpty!23580) setIsEmpty!23580))

(assert (= (and b!2786473 (not condSetEmpty!23580)) setNonEmpty!23580))

(assert (= setNonEmpty!23580 b!2786472))

(assert (= (and b!2786218 ((_ is Cons!32241) (minValue!4149 (v!33846 (underlying!7983 (v!33847 (underlying!7984 (cache!3939 cacheDown!1009)))))))) b!2786473))

(declare-fun m!3216867 () Bool)

(assert (=> setNonEmpty!23580 m!3216867))

(declare-fun m!3216869 () Bool)

(assert (=> b!2786473 m!3216869))

(declare-fun setIsEmpty!23581 () Bool)

(declare-fun setRes!23581 () Bool)

(assert (=> setIsEmpty!23581 setRes!23581))

(declare-fun tp!883606 () Bool)

(declare-fun e!1758462 () Bool)

(declare-fun e!1758463 () Bool)

(declare-fun b!2786475 () Bool)

(assert (=> b!2786475 (= e!1758463 (and (inv!43802 (_1!19269 (_1!19270 (h!37662 mapDefault!17736)))) e!1758462 tp_is_empty!14103 setRes!23581 tp!883606))))

(declare-fun condSetEmpty!23581 () Bool)

(assert (=> b!2786475 (= condSetEmpty!23581 (= (_2!19270 (h!37662 mapDefault!17736)) ((as const (Array Context!4726 Bool)) false)))))

(declare-fun tp!883607 () Bool)

(declare-fun setElem!23581 () Context!4726)

(declare-fun e!1758464 () Bool)

(declare-fun setNonEmpty!23581 () Bool)

(assert (=> setNonEmpty!23581 (= setRes!23581 (and tp!883607 (inv!43802 setElem!23581) e!1758464))))

(declare-fun setRest!23581 () (InoxSet Context!4726))

(assert (=> setNonEmpty!23581 (= (_2!19270 (h!37662 mapDefault!17736)) ((_ map or) (store ((as const (Array Context!4726 Bool)) false) setElem!23581 true) setRest!23581))))

(assert (=> b!2786235 (= tp!883461 e!1758463)))

(declare-fun b!2786476 () Bool)

(declare-fun tp!883604 () Bool)

(assert (=> b!2786476 (= e!1758462 tp!883604)))

(declare-fun b!2786477 () Bool)

(declare-fun tp!883605 () Bool)

(assert (=> b!2786477 (= e!1758464 tp!883605)))

(assert (= b!2786475 b!2786476))

(assert (= (and b!2786475 condSetEmpty!23581) setIsEmpty!23581))

(assert (= (and b!2786475 (not condSetEmpty!23581)) setNonEmpty!23581))

(assert (= setNonEmpty!23581 b!2786477))

(assert (= (and b!2786235 ((_ is Cons!32242) mapDefault!17736)) b!2786475))

(declare-fun m!3216871 () Bool)

(assert (=> b!2786475 m!3216871))

(declare-fun m!3216873 () Bool)

(assert (=> setNonEmpty!23581 m!3216873))

(check-sat b_and!203531 (not b!2786370) (not b!2786367) (not b!2786260) (not b!2786321) (not d!810631) (not d!810703) (not b!2786405) (not d!810665) (not b!2786390) (not bm!182493) (not setNonEmpty!23572) (not b!2786447) (not setNonEmpty!23559) (not b!2786475) (not b_next!79499) (not b!2786307) b_and!203529 (not b!2786468) (not b!2786426) (not mapNonEmpty!17742) (not b!2786430) (not b!2786473) (not b!2786448) (not b!2786391) (not b_next!79493) (not setNonEmpty!23563) (not b!2786289) (not b!2786411) (not d!810675) (not b_next!79495) (not b!2786472) (not b!2786404) (not b!2786395) (not b!2786463) (not d!810691) (not b!2786429) (not b!2786465) (not setNonEmpty!23580) (not b!2786306) (not b!2786446) (not d!810677) (not b!2786288) (not b!2786347) (not d!810693) (not bm!182489) (not b!2786417) (not b!2786327) (not b_next!79497) (not b!2786461) (not d!810645) (not d!810673) (not b!2786462) (not b!2786365) (not b!2786476) (not b!2786267) (not d!810651) (not d!810661) b_and!203527 (not b!2786393) (not b!2786351) (not setNonEmpty!23577) (not b!2786249) (not mapNonEmpty!17739) (not b!2786322) (not b!2786215) (not b!2786451) (not b!2786450) (not d!810647) (not b!2786416) (not b!2786358) (not b!2786316) (not d!810695) (not d!810687) (not b!2786464) (not b!2786449) (not b!2786471) (not b!2786259) tp_is_empty!14103 (not b!2786302) (not d!810697) (not b!2786291) (not b!2786366) (not b!2786279) (not b!2786392) (not bm!182490) (not b!2786305) (not d!810623) (not b!2786281) (not setNonEmpty!23566) (not d!810669) (not b!2786428) (not b!2786460) (not d!810663) (not b!2786303) (not setNonEmpty!23579) (not b!2786477) (not b!2786283) (not setNonEmpty!23581) (not b!2786466) b_and!203533 (not d!810689) (not setNonEmpty!23576) (not b!2786292) (not b!2786314) (not b!2786246) (not setNonEmpty!23578) (not b!2786469) (not d!810633) (not d!810679) (not d!810667) (not b!2786280) (not d!810699) (not d!810655) (not b!2786467) (not b!2786285) (not b!2786427) (not b!2786394) (not b!2786375) (not b!2786474) (not b!2786284) (not b!2786287) (not b!2786269) (not b!2786296) (not setNonEmpty!23573) (not b!2786431) (not b!2786295) (not d!810627) (not setNonEmpty!23560) (not b!2786470) (not b!2786406) (not setNonEmpty!23567) (not d!810639))
(check-sat (not b_next!79499) b_and!203529 b_and!203531 (not b_next!79493) (not b_next!79495) (not b_next!79497) b_and!203527 b_and!203533)
