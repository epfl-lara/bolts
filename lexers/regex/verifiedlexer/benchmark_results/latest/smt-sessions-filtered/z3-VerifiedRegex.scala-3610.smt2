; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207442 () Bool)

(assert start!207442)

(declare-fun b!2127726 () Bool)

(declare-fun b_free!61901 () Bool)

(declare-fun b_next!62605 () Bool)

(assert (=> b!2127726 (= b_free!61901 (not b_next!62605))))

(declare-fun tp!653038 () Bool)

(declare-fun b_and!171481 () Bool)

(assert (=> b!2127726 (= tp!653038 b_and!171481)))

(declare-fun b!2127715 () Bool)

(declare-fun b_free!61903 () Bool)

(declare-fun b_next!62607 () Bool)

(assert (=> b!2127715 (= b_free!61903 (not b_next!62607))))

(declare-fun tp!653045 () Bool)

(declare-fun b_and!171483 () Bool)

(assert (=> b!2127715 (= tp!653045 b_and!171483)))

(declare-fun b!2127722 () Bool)

(declare-fun b_free!61905 () Bool)

(declare-fun b_next!62609 () Bool)

(assert (=> b!2127722 (= b_free!61905 (not b_next!62609))))

(declare-fun tp!653035 () Bool)

(declare-fun b_and!171485 () Bool)

(assert (=> b!2127722 (= tp!653035 b_and!171485)))

(declare-fun b!2127736 () Bool)

(declare-fun b_free!61907 () Bool)

(declare-fun b_next!62611 () Bool)

(assert (=> b!2127736 (= b_free!61907 (not b_next!62611))))

(declare-fun tp!653034 () Bool)

(declare-fun b_and!171487 () Bool)

(assert (=> b!2127736 (= tp!653034 b_and!171487)))

(declare-fun b!2127727 () Bool)

(declare-fun b_free!61909 () Bool)

(declare-fun b_next!62613 () Bool)

(assert (=> b!2127727 (= b_free!61909 (not b_next!62613))))

(declare-fun tp!653044 () Bool)

(declare-fun b_and!171489 () Bool)

(assert (=> b!2127727 (= tp!653044 b_and!171489)))

(declare-fun b!2127746 () Bool)

(declare-fun b_free!61911 () Bool)

(declare-fun b_next!62615 () Bool)

(assert (=> b!2127746 (= b_free!61911 (not b_next!62615))))

(declare-fun tp!653024 () Bool)

(declare-fun b_and!171491 () Bool)

(assert (=> b!2127746 (= tp!653024 b_and!171491)))

(declare-fun b!2127723 () Bool)

(assert (=> b!2127723 true))

(declare-fun bs!444183 () Bool)

(declare-fun b!2127731 () Bool)

(assert (= bs!444183 (and b!2127731 b!2127723)))

(declare-fun lambda!78951 () Int)

(declare-fun lambda!78950 () Int)

(assert (=> bs!444183 (not (= lambda!78951 lambda!78950))))

(assert (=> b!2127731 true))

(declare-fun b!2127713 () Bool)

(declare-fun res!920264 () Bool)

(declare-fun e!1356389 () Bool)

(assert (=> b!2127713 (=> (not res!920264) (not e!1356389))))

(declare-datatypes ((C!11520 0))(
  ( (C!11521 (val!6746 Int)) )
))
(declare-datatypes ((Regex!5687 0))(
  ( (ElementMatch!5687 (c!340122 C!11520)) (Concat!9989 (regOne!11886 Regex!5687) (regTwo!11886 Regex!5687)) (EmptyExpr!5687) (Star!5687 (reg!6016 Regex!5687)) (EmptyLang!5687) (Union!5687 (regOne!11887 Regex!5687) (regTwo!11887 Regex!5687)) )
))
(declare-datatypes ((List!23906 0))(
  ( (Nil!23822) (Cons!23822 (h!29223 Regex!5687) (t!196434 List!23906)) )
))
(declare-datatypes ((Context!2514 0))(
  ( (Context!2515 (exprs!1757 List!23906)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3014 0))(
  ( (tuple3!3015 (_1!13731 (InoxSet Context!2514)) (_2!13731 Int) (_3!1977 Int)) )
))
(declare-datatypes ((tuple2!23508 0))(
  ( (tuple2!23509 (_1!13732 tuple3!3014) (_2!13732 Int)) )
))
(declare-datatypes ((List!23907 0))(
  ( (Nil!23823) (Cons!23823 (h!29224 tuple2!23508) (t!196435 List!23907)) )
))
(declare-datatypes ((array!8609 0))(
  ( (array!8610 (arr!3818 (Array (_ BitVec 32) (_ BitVec 64))) (size!18632 (_ BitVec 32))) )
))
(declare-datatypes ((array!8611 0))(
  ( (array!8612 (arr!3819 (Array (_ BitVec 32) List!23907)) (size!18633 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5020 0))(
  ( (LongMapFixedSize!5021 (defaultEntry!2875 Int) (mask!6669 (_ BitVec 32)) (extraKeys!2758 (_ BitVec 32)) (zeroValue!2768 List!23907) (minValue!2768 List!23907) (_size!5071 (_ BitVec 32)) (_keys!2807 array!8609) (_values!2790 array!8611) (_vacant!2571 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9865 0))(
  ( (Cell!9866 (v!28360 LongMapFixedSize!5020)) )
))
(declare-datatypes ((List!23908 0))(
  ( (Nil!23824) (Cons!23824 (h!29225 C!11520) (t!196436 List!23908)) )
))
(declare-datatypes ((IArray!15655 0))(
  ( (IArray!15656 (innerList!7885 List!23908)) )
))
(declare-datatypes ((Conc!7825 0))(
  ( (Node!7825 (left!18401 Conc!7825) (right!18731 Conc!7825) (csize!15880 Int) (cheight!8036 Int)) (Leaf!11436 (xs!10767 IArray!15655) (csize!15881 Int)) (Empty!7825) )
))
(declare-datatypes ((MutLongMap!2510 0))(
  ( (LongMap!2510 (underlying!5215 Cell!9865)) (MutLongMapExt!2509 (__x!15706 Int)) )
))
(declare-datatypes ((Cell!9867 0))(
  ( (Cell!9868 (v!28361 MutLongMap!2510)) )
))
(declare-datatypes ((Hashable!2424 0))(
  ( (HashableExt!2423 (__x!15707 Int)) )
))
(declare-datatypes ((MutableMap!2424 0))(
  ( (MutableMapExt!2423 (__x!15708 Int)) (HashMap!2424 (underlying!5216 Cell!9867) (hashF!4347 Hashable!2424) (_size!5072 (_ BitVec 32)) (defaultValue!2586 Int)) )
))
(declare-datatypes ((BalanceConc!15412 0))(
  ( (BalanceConc!15413 (c!340123 Conc!7825)) )
))
(declare-datatypes ((CacheFurthestNullable!622 0))(
  ( (CacheFurthestNullable!623 (cache!2805 MutableMap!2424) (totalInput!2952 BalanceConc!15412)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!622)

(declare-fun valid!1976 (CacheFurthestNullable!622) Bool)

(assert (=> b!2127713 (= res!920264 (valid!1976 cacheFurthestNullable!114))))

(declare-fun b!2127714 () Bool)

(declare-fun e!1356399 () Bool)

(declare-fun e!1356395 () Bool)

(assert (=> b!2127714 (= e!1356399 e!1356395)))

(declare-fun tp!653042 () Bool)

(declare-datatypes ((tuple2!23510 0))(
  ( (tuple2!23511 (_1!13733 Context!2514) (_2!13733 C!11520)) )
))
(declare-datatypes ((tuple2!23512 0))(
  ( (tuple2!23513 (_1!13734 tuple2!23510) (_2!13734 (InoxSet Context!2514))) )
))
(declare-datatypes ((List!23909 0))(
  ( (Nil!23825) (Cons!23825 (h!29226 tuple2!23512) (t!196437 List!23909)) )
))
(declare-datatypes ((array!8613 0))(
  ( (array!8614 (arr!3820 (Array (_ BitVec 32) List!23909)) (size!18634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5022 0))(
  ( (LongMapFixedSize!5023 (defaultEntry!2876 Int) (mask!6670 (_ BitVec 32)) (extraKeys!2759 (_ BitVec 32)) (zeroValue!2769 List!23909) (minValue!2769 List!23909) (_size!5073 (_ BitVec 32)) (_keys!2808 array!8609) (_values!2791 array!8613) (_vacant!2572 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9869 0))(
  ( (Cell!9870 (v!28362 LongMapFixedSize!5022)) )
))
(declare-datatypes ((MutLongMap!2511 0))(
  ( (LongMap!2511 (underlying!5217 Cell!9869)) (MutLongMapExt!2510 (__x!15709 Int)) )
))
(declare-datatypes ((Cell!9871 0))(
  ( (Cell!9872 (v!28363 MutLongMap!2511)) )
))
(declare-datatypes ((Hashable!2425 0))(
  ( (HashableExt!2424 (__x!15710 Int)) )
))
(declare-datatypes ((MutableMap!2425 0))(
  ( (MutableMapExt!2424 (__x!15711 Int)) (HashMap!2425 (underlying!5218 Cell!9871) (hashF!4348 Hashable!2425) (_size!5074 (_ BitVec 32)) (defaultValue!2587 Int)) )
))
(declare-datatypes ((CacheUp!1682 0))(
  ( (CacheUp!1683 (cache!2806 MutableMap!2425)) )
))
(declare-fun cacheUp!979 () CacheUp!1682)

(declare-fun e!1356401 () Bool)

(declare-fun tp!653027 () Bool)

(declare-fun e!1356386 () Bool)

(declare-fun array_inv!2728 (array!8609) Bool)

(declare-fun array_inv!2729 (array!8613) Bool)

(assert (=> b!2127715 (= e!1356386 (and tp!653045 tp!653042 tp!653027 (array_inv!2728 (_keys!2808 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) (array_inv!2729 (_values!2791 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) e!1356401))))

(declare-fun b!2127716 () Bool)

(declare-fun res!920261 () Bool)

(assert (=> b!2127716 (=> (not res!920261) (not e!1356389))))

(declare-fun valid!1977 (CacheUp!1682) Bool)

(assert (=> b!2127716 (= res!920261 (valid!1977 cacheUp!979))))

(declare-fun b!2127717 () Bool)

(declare-fun tp!653052 () Bool)

(declare-fun mapRes!12279 () Bool)

(assert (=> b!2127717 (= e!1356401 (and tp!653052 mapRes!12279))))

(declare-fun condMapEmpty!12278 () Bool)

(declare-fun mapDefault!12277 () List!23909)

(assert (=> b!2127717 (= condMapEmpty!12278 (= (arr!3820 (_values!2791 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23909)) mapDefault!12277)))))

(declare-fun b!2127718 () Bool)

(declare-fun e!1356398 () Bool)

(declare-fun tp!653036 () Bool)

(assert (=> b!2127718 (= e!1356398 tp!653036)))

(declare-fun b!2127719 () Bool)

(declare-fun e!1356377 () Bool)

(declare-fun tp!653039 () Bool)

(declare-fun inv!31430 (Conc!7825) Bool)

(assert (=> b!2127719 (= e!1356377 (and (inv!31430 (c!340123 (totalInput!2952 cacheFurthestNullable!114))) tp!653039))))

(declare-fun b!2127720 () Bool)

(declare-fun e!1356372 () Bool)

(declare-fun validCacheMapFurthestNullable!100 (MutableMap!2424 BalanceConc!15412) Bool)

(assert (=> b!2127720 (= e!1356372 (not (validCacheMapFurthestNullable!100 (cache!2805 cacheFurthestNullable!114) (totalInput!2952 cacheFurthestNullable!114))))))

(declare-datatypes ((StackFrame!72 0))(
  ( (StackFrame!73 (z!5762 (InoxSet Context!2514)) (from!2649 Int) (lastNullablePos!336 Int) (res!920268 Int) (totalInput!2953 BalanceConc!15412)) )
))
(declare-datatypes ((List!23910 0))(
  ( (Nil!23826) (Cons!23826 (h!29227 StackFrame!72) (t!196438 List!23910)) )
))
(declare-fun stack!8 () List!23910)

(declare-fun forall!4885 (List!23910 Int) Bool)

(assert (=> b!2127720 (forall!4885 stack!8 lambda!78950)))

(declare-fun setIsEmpty!15545 () Bool)

(declare-fun setRes!15546 () Bool)

(assert (=> setIsEmpty!15545 setRes!15546))

(declare-fun b!2127721 () Bool)

(declare-fun e!1356397 () Bool)

(declare-fun e!1356375 () Bool)

(assert (=> b!2127721 (= e!1356397 e!1356375)))

(declare-fun e!1356387 () Bool)

(assert (=> b!2127722 (= e!1356375 (and e!1356387 tp!653035))))

(assert (=> b!2127723 (= e!1356389 e!1356372)))

(declare-fun res!920259 () Bool)

(assert (=> b!2127723 (=> (not res!920259) (not e!1356372))))

(assert (=> b!2127723 (= res!920259 (forall!4885 stack!8 lambda!78950))))

(declare-fun lt!796034 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(declare-fun totalInput!851 () BalanceConc!15412)

(declare-fun lt!796033 () Int)

(declare-fun z!3839 () (InoxSet Context!2514))

(declare-fun furthestNullablePosition!16 ((InoxSet Context!2514) Int BalanceConc!15412 Int Int) Int)

(assert (=> b!2127723 (= lt!796034 (furthestNullablePosition!16 z!3839 from!1043 totalInput!851 lt!796033 lastNullablePos!123))))

(declare-fun setRes!15545 () Bool)

(declare-fun setElem!15545 () Context!2514)

(declare-fun setNonEmpty!15545 () Bool)

(declare-fun tp!653028 () Bool)

(declare-fun inv!31431 (Context!2514) Bool)

(assert (=> setNonEmpty!15545 (= setRes!15545 (and tp!653028 (inv!31431 setElem!15545) e!1356398))))

(declare-fun setRest!15545 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15545 (= (z!5762 (h!29227 stack!8)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15545 true) setRest!15545))))

(declare-fun b!2127724 () Bool)

(declare-fun e!1356383 () Bool)

(declare-fun tp!653049 () Bool)

(declare-fun mapRes!12277 () Bool)

(assert (=> b!2127724 (= e!1356383 (and tp!653049 mapRes!12277))))

(declare-fun condMapEmpty!12279 () Bool)

(declare-datatypes ((tuple3!3016 0))(
  ( (tuple3!3017 (_1!13735 Regex!5687) (_2!13735 Context!2514) (_3!1978 C!11520)) )
))
(declare-datatypes ((tuple2!23514 0))(
  ( (tuple2!23515 (_1!13736 tuple3!3016) (_2!13736 (InoxSet Context!2514))) )
))
(declare-datatypes ((List!23911 0))(
  ( (Nil!23827) (Cons!23827 (h!29228 tuple2!23514) (t!196439 List!23911)) )
))
(declare-datatypes ((Hashable!2426 0))(
  ( (HashableExt!2425 (__x!15712 Int)) )
))
(declare-datatypes ((array!8615 0))(
  ( (array!8616 (arr!3821 (Array (_ BitVec 32) List!23911)) (size!18635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5024 0))(
  ( (LongMapFixedSize!5025 (defaultEntry!2877 Int) (mask!6671 (_ BitVec 32)) (extraKeys!2760 (_ BitVec 32)) (zeroValue!2770 List!23911) (minValue!2770 List!23911) (_size!5075 (_ BitVec 32)) (_keys!2809 array!8609) (_values!2792 array!8615) (_vacant!2573 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9873 0))(
  ( (Cell!9874 (v!28364 LongMapFixedSize!5024)) )
))
(declare-datatypes ((MutLongMap!2512 0))(
  ( (LongMap!2512 (underlying!5219 Cell!9873)) (MutLongMapExt!2511 (__x!15713 Int)) )
))
(declare-datatypes ((Cell!9875 0))(
  ( (Cell!9876 (v!28365 MutLongMap!2512)) )
))
(declare-datatypes ((MutableMap!2426 0))(
  ( (MutableMapExt!2425 (__x!15714 Int)) (HashMap!2426 (underlying!5220 Cell!9875) (hashF!4349 Hashable!2426) (_size!5076 (_ BitVec 32)) (defaultValue!2588 Int)) )
))
(declare-datatypes ((CacheDown!1668 0))(
  ( (CacheDown!1669 (cache!2807 MutableMap!2426)) )
))
(declare-fun cacheDown!1098 () CacheDown!1668)

(declare-fun mapDefault!12278 () List!23911)

(assert (=> b!2127724 (= condMapEmpty!12279 (= (arr!3821 (_values!2792 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23911)) mapDefault!12278)))))

(declare-fun b!2127725 () Bool)

(declare-fun res!920265 () Bool)

(assert (=> b!2127725 (=> (not res!920265) (not e!1356389))))

(declare-fun e!1356404 () Bool)

(assert (=> b!2127725 (= res!920265 e!1356404)))

(declare-fun res!920258 () Bool)

(assert (=> b!2127725 (=> res!920258 e!1356404)))

(declare-fun nullableZipper!78 ((InoxSet Context!2514)) Bool)

(assert (=> b!2127725 (= res!920258 (not (nullableZipper!78 z!3839)))))

(declare-fun setIsEmpty!15546 () Bool)

(assert (=> setIsEmpty!15546 setRes!15545))

(declare-fun e!1356382 () Bool)

(declare-fun e!1356396 () Bool)

(assert (=> b!2127726 (= e!1356382 (and e!1356396 tp!653038))))

(declare-fun mapNonEmpty!12277 () Bool)

(declare-fun mapRes!12278 () Bool)

(declare-fun tp!653046 () Bool)

(declare-fun tp!653031 () Bool)

(assert (=> mapNonEmpty!12277 (= mapRes!12278 (and tp!653046 tp!653031))))

(declare-fun mapRest!12278 () (Array (_ BitVec 32) List!23907))

(declare-fun mapValue!12277 () List!23907)

(declare-fun mapKey!12279 () (_ BitVec 32))

(assert (=> mapNonEmpty!12277 (= (arr!3819 (_values!2790 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) (store mapRest!12278 mapKey!12279 mapValue!12277))))

(declare-fun mapIsEmpty!12277 () Bool)

(assert (=> mapIsEmpty!12277 mapRes!12279))

(declare-fun mapNonEmpty!12278 () Bool)

(declare-fun tp!653033 () Bool)

(declare-fun tp!653030 () Bool)

(assert (=> mapNonEmpty!12278 (= mapRes!12279 (and tp!653033 tp!653030))))

(declare-fun mapKey!12278 () (_ BitVec 32))

(declare-fun mapValue!12278 () List!23909)

(declare-fun mapRest!12277 () (Array (_ BitVec 32) List!23909))

(assert (=> mapNonEmpty!12278 (= (arr!3820 (_values!2791 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) (store mapRest!12277 mapKey!12278 mapValue!12278))))

(declare-fun tp!653043 () Bool)

(declare-fun tp!653047 () Bool)

(declare-fun array_inv!2730 (array!8615) Bool)

(assert (=> b!2127727 (= e!1356395 (and tp!653044 tp!653047 tp!653043 (array_inv!2728 (_keys!2809 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) (array_inv!2730 (_values!2792 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) e!1356383))))

(declare-fun mapIsEmpty!12278 () Bool)

(assert (=> mapIsEmpty!12278 mapRes!12278))

(declare-fun b!2127728 () Bool)

(declare-fun e!1356381 () Bool)

(declare-fun tp!653037 () Bool)

(assert (=> b!2127728 (= e!1356381 tp!653037)))

(declare-fun b!2127729 () Bool)

(declare-fun e!1356380 () Bool)

(declare-fun tp!653025 () Bool)

(assert (=> b!2127729 (= e!1356380 (and (inv!31430 (c!340123 totalInput!851)) tp!653025))))

(declare-fun mapNonEmpty!12279 () Bool)

(declare-fun tp!653048 () Bool)

(declare-fun tp!653026 () Bool)

(assert (=> mapNonEmpty!12279 (= mapRes!12277 (and tp!653048 tp!653026))))

(declare-fun mapValue!12279 () List!23911)

(declare-fun mapRest!12279 () (Array (_ BitVec 32) List!23911))

(declare-fun mapKey!12277 () (_ BitVec 32))

(assert (=> mapNonEmpty!12279 (= (arr!3821 (_values!2792 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) (store mapRest!12279 mapKey!12277 mapValue!12279))))

(declare-fun b!2127730 () Bool)

(declare-fun e!1356388 () Bool)

(declare-fun lt!796031 () MutLongMap!2511)

(get-info :version)

(assert (=> b!2127730 (= e!1356396 (and e!1356388 ((_ is LongMap!2511) lt!796031)))))

(assert (=> b!2127730 (= lt!796031 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))

(declare-fun res!920260 () Bool)

(assert (=> b!2127731 (=> (not res!920260) (not e!1356372))))

(assert (=> b!2127731 (= res!920260 (forall!4885 stack!8 lambda!78951))))

(declare-fun b!2127732 () Bool)

(declare-fun e!1356378 () Bool)

(declare-fun e!1356384 () Bool)

(assert (=> b!2127732 (= e!1356378 e!1356384)))

(declare-fun b!2127733 () Bool)

(declare-fun e!1356376 () Bool)

(declare-fun lt!796035 () MutLongMap!2510)

(assert (=> b!2127733 (= e!1356376 (and e!1356378 ((_ is LongMap!2510) lt!796035)))))

(assert (=> b!2127733 (= lt!796035 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))

(declare-fun setNonEmpty!15546 () Bool)

(declare-fun setElem!15546 () Context!2514)

(declare-fun tp!653040 () Bool)

(assert (=> setNonEmpty!15546 (= setRes!15546 (and tp!653040 (inv!31431 setElem!15546) e!1356381))))

(declare-fun setRest!15546 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15546 (= z!3839 ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15546 true) setRest!15546))))

(declare-fun b!2127734 () Bool)

(assert (=> b!2127734 (= e!1356404 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2127735 () Bool)

(declare-fun res!920267 () Bool)

(assert (=> b!2127735 (=> (not res!920267) (not e!1356389))))

(declare-fun valid!1978 (CacheDown!1668) Bool)

(assert (=> b!2127735 (= res!920267 (valid!1978 cacheDown!1098))))

(declare-fun e!1356374 () Bool)

(assert (=> b!2127736 (= e!1356374 (and e!1356376 tp!653034))))

(declare-fun b!2127737 () Bool)

(declare-fun e!1356406 () Bool)

(declare-fun tp!653051 () Bool)

(assert (=> b!2127737 (= e!1356406 (and tp!653051 mapRes!12278))))

(declare-fun condMapEmpty!12277 () Bool)

(declare-fun mapDefault!12279 () List!23907)

(assert (=> b!2127737 (= condMapEmpty!12277 (= (arr!3819 (_values!2790 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23907)) mapDefault!12279)))))

(declare-fun b!2127738 () Bool)

(declare-fun e!1356394 () Bool)

(assert (=> b!2127738 (= e!1356394 e!1356382)))

(declare-fun e!1356402 () Bool)

(declare-fun b!2127739 () Bool)

(declare-fun inv!31432 (BalanceConc!15412) Bool)

(assert (=> b!2127739 (= e!1356402 (and e!1356374 (inv!31432 (totalInput!2952 cacheFurthestNullable!114)) e!1356377))))

(declare-fun b!2127740 () Bool)

(declare-fun e!1356373 () Bool)

(assert (=> b!2127740 (= e!1356373 e!1356386)))

(declare-fun mapIsEmpty!12279 () Bool)

(assert (=> mapIsEmpty!12279 mapRes!12277))

(declare-fun b!2127741 () Bool)

(declare-fun e!1356390 () Bool)

(assert (=> b!2127741 (= e!1356384 e!1356390)))

(declare-fun b!2127742 () Bool)

(declare-fun e!1356393 () Bool)

(declare-fun tp!653050 () Bool)

(assert (=> b!2127742 (= e!1356393 (and (inv!31430 (c!340123 (totalInput!2953 (h!29227 stack!8)))) tp!653050))))

(declare-fun b!2127743 () Bool)

(declare-fun e!1356385 () Bool)

(assert (=> b!2127743 (= e!1356385 e!1356389)))

(declare-fun res!920263 () Bool)

(assert (=> b!2127743 (=> (not res!920263) (not e!1356389))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2127743 (= res!920263 (and (= totalInputSize!296 lt!796033) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18636 (BalanceConc!15412) Int)

(assert (=> b!2127743 (= lt!796033 (size!18636 totalInput!851))))

(declare-fun b!2127744 () Bool)

(declare-fun res!920262 () Bool)

(assert (=> b!2127744 (=> (not res!920262) (not e!1356389))))

(assert (=> b!2127744 (= res!920262 (= (totalInput!2952 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2127745 () Bool)

(declare-fun e!1356379 () Bool)

(declare-fun lt!796032 () MutLongMap!2512)

(assert (=> b!2127745 (= e!1356387 (and e!1356379 ((_ is LongMap!2512) lt!796032)))))

(assert (=> b!2127745 (= lt!796032 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))

(declare-fun tp!653029 () Bool)

(declare-fun tp!653032 () Bool)

(declare-fun array_inv!2731 (array!8611) Bool)

(assert (=> b!2127746 (= e!1356390 (and tp!653024 tp!653032 tp!653029 (array_inv!2728 (_keys!2807 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) (array_inv!2731 (_values!2790 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) e!1356406))))

(declare-fun b!2127747 () Bool)

(assert (=> b!2127747 (= e!1356388 e!1356373)))

(declare-fun e!1356400 () Bool)

(declare-fun b!2127748 () Bool)

(declare-fun tp!653041 () Bool)

(declare-fun e!1356391 () Bool)

(declare-fun inv!31433 (StackFrame!72) Bool)

(assert (=> b!2127748 (= e!1356400 (and (inv!31433 (h!29227 stack!8)) e!1356391 tp!653041))))

(declare-fun res!920266 () Bool)

(assert (=> start!207442 (=> (not res!920266) (not e!1356385))))

(assert (=> start!207442 (= res!920266 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207442 e!1356385))

(declare-fun inv!31434 (CacheFurthestNullable!622) Bool)

(assert (=> start!207442 (and (inv!31434 cacheFurthestNullable!114) e!1356402)))

(assert (=> start!207442 true))

(declare-fun inv!31435 (CacheDown!1668) Bool)

(assert (=> start!207442 (and (inv!31435 cacheDown!1098) e!1356397)))

(declare-fun inv!31436 (CacheUp!1682) Bool)

(assert (=> start!207442 (and (inv!31436 cacheUp!979) e!1356394)))

(declare-fun condSetEmpty!15546 () Bool)

(assert (=> start!207442 (= condSetEmpty!15546 (= z!3839 ((as const (Array Context!2514 Bool)) false)))))

(assert (=> start!207442 setRes!15546))

(assert (=> start!207442 (and (inv!31432 totalInput!851) e!1356380)))

(assert (=> start!207442 e!1356400))

(declare-fun b!2127749 () Bool)

(assert (=> b!2127749 (= e!1356391 (and setRes!15545 (inv!31432 (totalInput!2953 (h!29227 stack!8))) e!1356393))))

(declare-fun condSetEmpty!15545 () Bool)

(assert (=> b!2127749 (= condSetEmpty!15545 (= (z!5762 (h!29227 stack!8)) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127750 () Bool)

(assert (=> b!2127750 (= e!1356379 e!1356399)))

(assert (= (and start!207442 res!920266) b!2127743))

(assert (= (and b!2127743 res!920263) b!2127725))

(assert (= (and b!2127725 (not res!920258)) b!2127734))

(assert (= (and b!2127725 res!920265) b!2127716))

(assert (= (and b!2127716 res!920261) b!2127735))

(assert (= (and b!2127735 res!920267) b!2127713))

(assert (= (and b!2127713 res!920264) b!2127744))

(assert (= (and b!2127744 res!920262) b!2127723))

(assert (= (and b!2127723 res!920259) b!2127731))

(assert (= (and b!2127731 res!920260) b!2127720))

(assert (= (and b!2127737 condMapEmpty!12277) mapIsEmpty!12278))

(assert (= (and b!2127737 (not condMapEmpty!12277)) mapNonEmpty!12277))

(assert (= b!2127746 b!2127737))

(assert (= b!2127741 b!2127746))

(assert (= b!2127732 b!2127741))

(assert (= (and b!2127733 ((_ is LongMap!2510) (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))) b!2127732))

(assert (= b!2127736 b!2127733))

(assert (= (and b!2127739 ((_ is HashMap!2424) (cache!2805 cacheFurthestNullable!114))) b!2127736))

(assert (= b!2127739 b!2127719))

(assert (= start!207442 b!2127739))

(assert (= (and b!2127724 condMapEmpty!12279) mapIsEmpty!12279))

(assert (= (and b!2127724 (not condMapEmpty!12279)) mapNonEmpty!12279))

(assert (= b!2127727 b!2127724))

(assert (= b!2127714 b!2127727))

(assert (= b!2127750 b!2127714))

(assert (= (and b!2127745 ((_ is LongMap!2512) (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))) b!2127750))

(assert (= b!2127722 b!2127745))

(assert (= (and b!2127721 ((_ is HashMap!2426) (cache!2807 cacheDown!1098))) b!2127722))

(assert (= start!207442 b!2127721))

(assert (= (and b!2127717 condMapEmpty!12278) mapIsEmpty!12277))

(assert (= (and b!2127717 (not condMapEmpty!12278)) mapNonEmpty!12278))

(assert (= b!2127715 b!2127717))

(assert (= b!2127740 b!2127715))

(assert (= b!2127747 b!2127740))

(assert (= (and b!2127730 ((_ is LongMap!2511) (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))) b!2127747))

(assert (= b!2127726 b!2127730))

(assert (= (and b!2127738 ((_ is HashMap!2425) (cache!2806 cacheUp!979))) b!2127726))

(assert (= start!207442 b!2127738))

(assert (= (and start!207442 condSetEmpty!15546) setIsEmpty!15545))

(assert (= (and start!207442 (not condSetEmpty!15546)) setNonEmpty!15546))

(assert (= setNonEmpty!15546 b!2127728))

(assert (= start!207442 b!2127729))

(assert (= (and b!2127749 condSetEmpty!15545) setIsEmpty!15546))

(assert (= (and b!2127749 (not condSetEmpty!15545)) setNonEmpty!15545))

(assert (= setNonEmpty!15545 b!2127718))

(assert (= b!2127749 b!2127742))

(assert (= b!2127748 b!2127749))

(assert (= (and start!207442 ((_ is Cons!23826) stack!8)) b!2127748))

(declare-fun m!2579189 () Bool)

(assert (=> setNonEmpty!15546 m!2579189))

(declare-fun m!2579191 () Bool)

(assert (=> mapNonEmpty!12279 m!2579191))

(declare-fun m!2579193 () Bool)

(assert (=> b!2127715 m!2579193))

(declare-fun m!2579195 () Bool)

(assert (=> b!2127715 m!2579195))

(declare-fun m!2579197 () Bool)

(assert (=> b!2127713 m!2579197))

(declare-fun m!2579199 () Bool)

(assert (=> b!2127749 m!2579199))

(declare-fun m!2579201 () Bool)

(assert (=> b!2127748 m!2579201))

(declare-fun m!2579203 () Bool)

(assert (=> b!2127731 m!2579203))

(declare-fun m!2579205 () Bool)

(assert (=> b!2127719 m!2579205))

(declare-fun m!2579207 () Bool)

(assert (=> b!2127729 m!2579207))

(declare-fun m!2579209 () Bool)

(assert (=> b!2127739 m!2579209))

(declare-fun m!2579211 () Bool)

(assert (=> b!2127723 m!2579211))

(declare-fun m!2579213 () Bool)

(assert (=> b!2127723 m!2579213))

(declare-fun m!2579215 () Bool)

(assert (=> mapNonEmpty!12278 m!2579215))

(declare-fun m!2579217 () Bool)

(assert (=> b!2127743 m!2579217))

(declare-fun m!2579219 () Bool)

(assert (=> start!207442 m!2579219))

(declare-fun m!2579221 () Bool)

(assert (=> start!207442 m!2579221))

(declare-fun m!2579223 () Bool)

(assert (=> start!207442 m!2579223))

(declare-fun m!2579225 () Bool)

(assert (=> start!207442 m!2579225))

(declare-fun m!2579227 () Bool)

(assert (=> mapNonEmpty!12277 m!2579227))

(declare-fun m!2579229 () Bool)

(assert (=> b!2127735 m!2579229))

(declare-fun m!2579231 () Bool)

(assert (=> b!2127725 m!2579231))

(declare-fun m!2579233 () Bool)

(assert (=> b!2127746 m!2579233))

(declare-fun m!2579235 () Bool)

(assert (=> b!2127746 m!2579235))

(declare-fun m!2579237 () Bool)

(assert (=> b!2127727 m!2579237))

(declare-fun m!2579239 () Bool)

(assert (=> b!2127727 m!2579239))

(declare-fun m!2579241 () Bool)

(assert (=> b!2127716 m!2579241))

(declare-fun m!2579243 () Bool)

(assert (=> b!2127720 m!2579243))

(assert (=> b!2127720 m!2579211))

(declare-fun m!2579245 () Bool)

(assert (=> setNonEmpty!15545 m!2579245))

(declare-fun m!2579247 () Bool)

(assert (=> b!2127742 m!2579247))

(check-sat (not setNonEmpty!15545) (not mapNonEmpty!12277) (not start!207442) (not b!2127717) (not b!2127724) (not b!2127739) (not b!2127715) (not b!2127727) (not b!2127720) (not b!2127728) (not setNonEmpty!15546) (not b!2127748) (not b!2127746) (not b!2127713) (not b!2127718) (not b!2127725) (not b!2127731) (not b_next!62607) (not b!2127749) (not b!2127723) (not b_next!62611) (not b_next!62615) b_and!171487 (not b_next!62613) b_and!171481 (not b_next!62605) (not b!2127729) (not b!2127716) (not b!2127743) (not mapNonEmpty!12278) (not b!2127742) (not mapNonEmpty!12279) (not b!2127719) (not b!2127737) (not b_next!62609) b_and!171483 b_and!171489 b_and!171491 b_and!171485 (not b!2127735))
(check-sat (not b_next!62607) (not b_next!62611) (not b_next!62605) b_and!171485 (not b_next!62615) b_and!171487 (not b_next!62613) b_and!171481 (not b_next!62609) b_and!171483 b_and!171489 b_and!171491)
(get-model)

(declare-fun d!644245 () Bool)

(declare-fun lambda!78954 () Int)

(declare-fun forall!4886 (List!23906 Int) Bool)

(assert (=> d!644245 (= (inv!31431 setElem!15546) (forall!4886 (exprs!1757 setElem!15546) lambda!78954))))

(declare-fun bs!444184 () Bool)

(assert (= bs!444184 d!644245))

(declare-fun m!2579249 () Bool)

(assert (=> bs!444184 m!2579249))

(assert (=> setNonEmpty!15546 d!644245))

(declare-fun d!644247 () Bool)

(declare-fun lt!796038 () Int)

(declare-fun size!18637 (List!23908) Int)

(declare-fun list!9542 (BalanceConc!15412) List!23908)

(assert (=> d!644247 (= lt!796038 (size!18637 (list!9542 totalInput!851)))))

(declare-fun size!18638 (Conc!7825) Int)

(assert (=> d!644247 (= lt!796038 (size!18638 (c!340123 totalInput!851)))))

(assert (=> d!644247 (= (size!18636 totalInput!851) lt!796038)))

(declare-fun bs!444185 () Bool)

(assert (= bs!444185 d!644247))

(declare-fun m!2579251 () Bool)

(assert (=> bs!444185 m!2579251))

(assert (=> bs!444185 m!2579251))

(declare-fun m!2579253 () Bool)

(assert (=> bs!444185 m!2579253))

(declare-fun m!2579255 () Bool)

(assert (=> bs!444185 m!2579255))

(assert (=> b!2127743 d!644247))

(declare-fun d!644249 () Bool)

(declare-fun c!340126 () Bool)

(assert (=> d!644249 (= c!340126 ((_ is Node!7825) (c!340123 (totalInput!2953 (h!29227 stack!8)))))))

(declare-fun e!1356411 () Bool)

(assert (=> d!644249 (= (inv!31430 (c!340123 (totalInput!2953 (h!29227 stack!8)))) e!1356411)))

(declare-fun b!2127761 () Bool)

(declare-fun inv!31437 (Conc!7825) Bool)

(assert (=> b!2127761 (= e!1356411 (inv!31437 (c!340123 (totalInput!2953 (h!29227 stack!8)))))))

(declare-fun b!2127762 () Bool)

(declare-fun e!1356412 () Bool)

(assert (=> b!2127762 (= e!1356411 e!1356412)))

(declare-fun res!920271 () Bool)

(assert (=> b!2127762 (= res!920271 (not ((_ is Leaf!11436) (c!340123 (totalInput!2953 (h!29227 stack!8))))))))

(assert (=> b!2127762 (=> res!920271 e!1356412)))

(declare-fun b!2127763 () Bool)

(declare-fun inv!31438 (Conc!7825) Bool)

(assert (=> b!2127763 (= e!1356412 (inv!31438 (c!340123 (totalInput!2953 (h!29227 stack!8)))))))

(assert (= (and d!644249 c!340126) b!2127761))

(assert (= (and d!644249 (not c!340126)) b!2127762))

(assert (= (and b!2127762 (not res!920271)) b!2127763))

(declare-fun m!2579257 () Bool)

(assert (=> b!2127761 m!2579257))

(declare-fun m!2579259 () Bool)

(assert (=> b!2127763 m!2579259))

(assert (=> b!2127742 d!644249))

(declare-fun b!2127769 () Bool)

(assert (=> b!2127769 true))

(declare-fun d!644251 () Bool)

(declare-fun res!920276 () Bool)

(declare-fun e!1356415 () Bool)

(assert (=> d!644251 (=> (not res!920276) (not e!1356415))))

(declare-fun valid!1979 (MutableMap!2424) Bool)

(assert (=> d!644251 (= res!920276 (valid!1979 (cache!2805 cacheFurthestNullable!114)))))

(assert (=> d!644251 (= (validCacheMapFurthestNullable!100 (cache!2805 cacheFurthestNullable!114) (totalInput!2952 cacheFurthestNullable!114)) e!1356415)))

(declare-fun b!2127768 () Bool)

(declare-fun res!920277 () Bool)

(assert (=> b!2127768 (=> (not res!920277) (not e!1356415))))

(declare-fun invariantList!307 (List!23907) Bool)

(declare-datatypes ((ListMap!663 0))(
  ( (ListMap!664 (toList!1072 List!23907)) )
))
(declare-fun map!4850 (MutableMap!2424) ListMap!663)

(assert (=> b!2127768 (= res!920277 (invariantList!307 (toList!1072 (map!4850 (cache!2805 cacheFurthestNullable!114)))))))

(declare-fun lambda!78957 () Int)

(declare-fun forall!4887 (List!23907 Int) Bool)

(assert (=> b!2127769 (= e!1356415 (forall!4887 (toList!1072 (map!4850 (cache!2805 cacheFurthestNullable!114))) lambda!78957))))

(assert (= (and d!644251 res!920276) b!2127768))

(assert (= (and b!2127768 res!920277) b!2127769))

(declare-fun m!2579262 () Bool)

(assert (=> d!644251 m!2579262))

(declare-fun m!2579264 () Bool)

(assert (=> b!2127768 m!2579264))

(declare-fun m!2579266 () Bool)

(assert (=> b!2127768 m!2579266))

(assert (=> b!2127769 m!2579264))

(declare-fun m!2579268 () Bool)

(assert (=> b!2127769 m!2579268))

(assert (=> b!2127720 d!644251))

(declare-fun d!644253 () Bool)

(declare-fun res!920282 () Bool)

(declare-fun e!1356420 () Bool)

(assert (=> d!644253 (=> res!920282 e!1356420)))

(assert (=> d!644253 (= res!920282 ((_ is Nil!23826) stack!8))))

(assert (=> d!644253 (= (forall!4885 stack!8 lambda!78950) e!1356420)))

(declare-fun b!2127776 () Bool)

(declare-fun e!1356421 () Bool)

(assert (=> b!2127776 (= e!1356420 e!1356421)))

(declare-fun res!920283 () Bool)

(assert (=> b!2127776 (=> (not res!920283) (not e!1356421))))

(declare-fun dynLambda!11365 (Int StackFrame!72) Bool)

(assert (=> b!2127776 (= res!920283 (dynLambda!11365 lambda!78950 (h!29227 stack!8)))))

(declare-fun b!2127777 () Bool)

(assert (=> b!2127777 (= e!1356421 (forall!4885 (t!196438 stack!8) lambda!78950))))

(assert (= (and d!644253 (not res!920282)) b!2127776))

(assert (= (and b!2127776 res!920283) b!2127777))

(declare-fun b_lambda!70565 () Bool)

(assert (=> (not b_lambda!70565) (not b!2127776)))

(declare-fun m!2579270 () Bool)

(assert (=> b!2127776 m!2579270))

(declare-fun m!2579272 () Bool)

(assert (=> b!2127777 m!2579272))

(assert (=> b!2127720 d!644253))

(declare-fun d!644255 () Bool)

(assert (=> d!644255 (= (array_inv!2728 (_keys!2809 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) (bvsge (size!18632 (_keys!2809 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2127727 d!644255))

(declare-fun d!644257 () Bool)

(assert (=> d!644257 (= (array_inv!2730 (_values!2792 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) (bvsge (size!18635 (_values!2792 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2127727 d!644257))

(declare-fun d!644259 () Bool)

(declare-fun res!920284 () Bool)

(declare-fun e!1356422 () Bool)

(assert (=> d!644259 (=> res!920284 e!1356422)))

(assert (=> d!644259 (= res!920284 ((_ is Nil!23826) stack!8))))

(assert (=> d!644259 (= (forall!4885 stack!8 lambda!78951) e!1356422)))

(declare-fun b!2127778 () Bool)

(declare-fun e!1356423 () Bool)

(assert (=> b!2127778 (= e!1356422 e!1356423)))

(declare-fun res!920285 () Bool)

(assert (=> b!2127778 (=> (not res!920285) (not e!1356423))))

(assert (=> b!2127778 (= res!920285 (dynLambda!11365 lambda!78951 (h!29227 stack!8)))))

(declare-fun b!2127779 () Bool)

(assert (=> b!2127779 (= e!1356423 (forall!4885 (t!196438 stack!8) lambda!78951))))

(assert (= (and d!644259 (not res!920284)) b!2127778))

(assert (= (and b!2127778 res!920285) b!2127779))

(declare-fun b_lambda!70567 () Bool)

(assert (=> (not b_lambda!70567) (not b!2127778)))

(declare-fun m!2579274 () Bool)

(assert (=> b!2127778 m!2579274))

(declare-fun m!2579276 () Bool)

(assert (=> b!2127779 m!2579276))

(assert (=> b!2127731 d!644259))

(declare-fun d!644261 () Bool)

(declare-fun res!920288 () Bool)

(declare-fun e!1356426 () Bool)

(assert (=> d!644261 (=> (not res!920288) (not e!1356426))))

(assert (=> d!644261 (= res!920288 ((_ is HashMap!2424) (cache!2805 cacheFurthestNullable!114)))))

(assert (=> d!644261 (= (inv!31434 cacheFurthestNullable!114) e!1356426)))

(declare-fun b!2127782 () Bool)

(assert (=> b!2127782 (= e!1356426 (validCacheMapFurthestNullable!100 (cache!2805 cacheFurthestNullable!114) (totalInput!2952 cacheFurthestNullable!114)))))

(assert (= (and d!644261 res!920288) b!2127782))

(assert (=> b!2127782 m!2579243))

(assert (=> start!207442 d!644261))

(declare-fun d!644263 () Bool)

(declare-fun res!920291 () Bool)

(declare-fun e!1356429 () Bool)

(assert (=> d!644263 (=> (not res!920291) (not e!1356429))))

(assert (=> d!644263 (= res!920291 ((_ is HashMap!2426) (cache!2807 cacheDown!1098)))))

(assert (=> d!644263 (= (inv!31435 cacheDown!1098) e!1356429)))

(declare-fun b!2127785 () Bool)

(declare-fun validCacheMapDown!248 (MutableMap!2426) Bool)

(assert (=> b!2127785 (= e!1356429 (validCacheMapDown!248 (cache!2807 cacheDown!1098)))))

(assert (= (and d!644263 res!920291) b!2127785))

(declare-fun m!2579278 () Bool)

(assert (=> b!2127785 m!2579278))

(assert (=> start!207442 d!644263))

(declare-fun d!644265 () Bool)

(declare-fun res!920294 () Bool)

(declare-fun e!1356432 () Bool)

(assert (=> d!644265 (=> (not res!920294) (not e!1356432))))

(assert (=> d!644265 (= res!920294 ((_ is HashMap!2425) (cache!2806 cacheUp!979)))))

(assert (=> d!644265 (= (inv!31436 cacheUp!979) e!1356432)))

(declare-fun b!2127788 () Bool)

(declare-fun validCacheMapUp!250 (MutableMap!2425) Bool)

(assert (=> b!2127788 (= e!1356432 (validCacheMapUp!250 (cache!2806 cacheUp!979)))))

(assert (= (and d!644265 res!920294) b!2127788))

(declare-fun m!2579280 () Bool)

(assert (=> b!2127788 m!2579280))

(assert (=> start!207442 d!644265))

(declare-fun d!644267 () Bool)

(declare-fun isBalanced!2454 (Conc!7825) Bool)

(assert (=> d!644267 (= (inv!31432 totalInput!851) (isBalanced!2454 (c!340123 totalInput!851)))))

(declare-fun bs!444186 () Bool)

(assert (= bs!444186 d!644267))

(declare-fun m!2579282 () Bool)

(assert (=> bs!444186 m!2579282))

(assert (=> start!207442 d!644267))

(declare-fun d!644269 () Bool)

(declare-fun c!340127 () Bool)

(assert (=> d!644269 (= c!340127 ((_ is Node!7825) (c!340123 (totalInput!2952 cacheFurthestNullable!114))))))

(declare-fun e!1356433 () Bool)

(assert (=> d!644269 (= (inv!31430 (c!340123 (totalInput!2952 cacheFurthestNullable!114))) e!1356433)))

(declare-fun b!2127789 () Bool)

(assert (=> b!2127789 (= e!1356433 (inv!31437 (c!340123 (totalInput!2952 cacheFurthestNullable!114))))))

(declare-fun b!2127790 () Bool)

(declare-fun e!1356434 () Bool)

(assert (=> b!2127790 (= e!1356433 e!1356434)))

(declare-fun res!920295 () Bool)

(assert (=> b!2127790 (= res!920295 (not ((_ is Leaf!11436) (c!340123 (totalInput!2952 cacheFurthestNullable!114)))))))

(assert (=> b!2127790 (=> res!920295 e!1356434)))

(declare-fun b!2127791 () Bool)

(assert (=> b!2127791 (= e!1356434 (inv!31438 (c!340123 (totalInput!2952 cacheFurthestNullable!114))))))

(assert (= (and d!644269 c!340127) b!2127789))

(assert (= (and d!644269 (not c!340127)) b!2127790))

(assert (= (and b!2127790 (not res!920295)) b!2127791))

(declare-fun m!2579284 () Bool)

(assert (=> b!2127789 m!2579284))

(declare-fun m!2579286 () Bool)

(assert (=> b!2127791 m!2579286))

(assert (=> b!2127719 d!644269))

(declare-fun b!2127804 () Bool)

(declare-fun e!1356439 () Bool)

(assert (=> b!2127804 (= e!1356439 (= (res!920268 (h!29227 stack!8)) (furthestNullablePosition!16 (z!5762 (h!29227 stack!8)) (from!2649 (h!29227 stack!8)) (totalInput!2953 (h!29227 stack!8)) (size!18636 (totalInput!2953 (h!29227 stack!8))) (lastNullablePos!336 (h!29227 stack!8)))))))

(declare-fun b!2127805 () Bool)

(declare-fun e!1356440 () Bool)

(assert (=> b!2127805 (= e!1356440 (= (lastNullablePos!336 (h!29227 stack!8)) (- (from!2649 (h!29227 stack!8)) 1)))))

(declare-fun d!644271 () Bool)

(declare-fun res!920311 () Bool)

(assert (=> d!644271 (=> (not res!920311) (not e!1356439))))

(assert (=> d!644271 (= res!920311 (>= (from!2649 (h!29227 stack!8)) 0))))

(assert (=> d!644271 (= (inv!31433 (h!29227 stack!8)) e!1356439)))

(declare-fun b!2127806 () Bool)

(declare-fun res!920312 () Bool)

(assert (=> b!2127806 (=> (not res!920312) (not e!1356439))))

(assert (=> b!2127806 (= res!920312 (and (>= (lastNullablePos!336 (h!29227 stack!8)) (- 1)) (< (lastNullablePos!336 (h!29227 stack!8)) (from!2649 (h!29227 stack!8)))))))

(declare-fun b!2127807 () Bool)

(declare-fun res!920310 () Bool)

(assert (=> b!2127807 (=> (not res!920310) (not e!1356439))))

(assert (=> b!2127807 (= res!920310 (= (size!18636 (totalInput!2953 (h!29227 stack!8))) (size!18636 (totalInput!2953 (h!29227 stack!8)))))))

(declare-fun b!2127808 () Bool)

(declare-fun res!920308 () Bool)

(assert (=> b!2127808 (=> (not res!920308) (not e!1356439))))

(assert (=> b!2127808 (= res!920308 e!1356440)))

(declare-fun res!920313 () Bool)

(assert (=> b!2127808 (=> res!920313 e!1356440)))

(assert (=> b!2127808 (= res!920313 (not (nullableZipper!78 (z!5762 (h!29227 stack!8)))))))

(declare-fun b!2127809 () Bool)

(declare-fun res!920309 () Bool)

(assert (=> b!2127809 (=> (not res!920309) (not e!1356439))))

(assert (=> b!2127809 (= res!920309 (<= (from!2649 (h!29227 stack!8)) (size!18636 (totalInput!2953 (h!29227 stack!8)))))))

(assert (= (and d!644271 res!920311) b!2127809))

(assert (= (and b!2127809 res!920309) b!2127807))

(assert (= (and b!2127807 res!920310) b!2127806))

(assert (= (and b!2127806 res!920312) b!2127808))

(assert (= (and b!2127808 (not res!920313)) b!2127805))

(assert (= (and b!2127808 res!920308) b!2127804))

(declare-fun m!2579288 () Bool)

(assert (=> b!2127804 m!2579288))

(assert (=> b!2127804 m!2579288))

(declare-fun m!2579290 () Bool)

(assert (=> b!2127804 m!2579290))

(assert (=> b!2127807 m!2579288))

(declare-fun m!2579292 () Bool)

(assert (=> b!2127808 m!2579292))

(assert (=> b!2127809 m!2579288))

(assert (=> b!2127748 d!644271))

(declare-fun d!644273 () Bool)

(declare-fun c!340128 () Bool)

(assert (=> d!644273 (= c!340128 ((_ is Node!7825) (c!340123 totalInput!851)))))

(declare-fun e!1356441 () Bool)

(assert (=> d!644273 (= (inv!31430 (c!340123 totalInput!851)) e!1356441)))

(declare-fun b!2127810 () Bool)

(assert (=> b!2127810 (= e!1356441 (inv!31437 (c!340123 totalInput!851)))))

(declare-fun b!2127811 () Bool)

(declare-fun e!1356442 () Bool)

(assert (=> b!2127811 (= e!1356441 e!1356442)))

(declare-fun res!920314 () Bool)

(assert (=> b!2127811 (= res!920314 (not ((_ is Leaf!11436) (c!340123 totalInput!851))))))

(assert (=> b!2127811 (=> res!920314 e!1356442)))

(declare-fun b!2127812 () Bool)

(assert (=> b!2127812 (= e!1356442 (inv!31438 (c!340123 totalInput!851)))))

(assert (= (and d!644273 c!340128) b!2127810))

(assert (= (and d!644273 (not c!340128)) b!2127811))

(assert (= (and b!2127811 (not res!920314)) b!2127812))

(declare-fun m!2579294 () Bool)

(assert (=> b!2127810 m!2579294))

(declare-fun m!2579296 () Bool)

(assert (=> b!2127812 m!2579296))

(assert (=> b!2127729 d!644273))

(declare-fun d!644275 () Bool)

(assert (=> d!644275 (= (array_inv!2728 (_keys!2808 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) (bvsge (size!18632 (_keys!2808 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2127715 d!644275))

(declare-fun d!644277 () Bool)

(assert (=> d!644277 (= (array_inv!2729 (_values!2791 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) (bvsge (size!18634 (_values!2791 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2127715 d!644277))

(declare-fun d!644279 () Bool)

(assert (=> d!644279 (= (valid!1977 cacheUp!979) (validCacheMapUp!250 (cache!2806 cacheUp!979)))))

(declare-fun bs!444187 () Bool)

(assert (= bs!444187 d!644279))

(assert (=> bs!444187 m!2579280))

(assert (=> b!2127716 d!644279))

(declare-fun d!644281 () Bool)

(assert (=> d!644281 (= (inv!31432 (totalInput!2952 cacheFurthestNullable!114)) (isBalanced!2454 (c!340123 (totalInput!2952 cacheFurthestNullable!114))))))

(declare-fun bs!444188 () Bool)

(assert (= bs!444188 d!644281))

(declare-fun m!2579298 () Bool)

(assert (=> bs!444188 m!2579298))

(assert (=> b!2127739 d!644281))

(declare-fun d!644283 () Bool)

(assert (=> d!644283 (= (inv!31432 (totalInput!2953 (h!29227 stack!8))) (isBalanced!2454 (c!340123 (totalInput!2953 (h!29227 stack!8)))))))

(declare-fun bs!444189 () Bool)

(assert (= bs!444189 d!644283))

(declare-fun m!2579300 () Bool)

(assert (=> bs!444189 m!2579300))

(assert (=> b!2127749 d!644283))

(declare-fun d!644285 () Bool)

(declare-fun lambda!78960 () Int)

(declare-fun exists!700 ((InoxSet Context!2514) Int) Bool)

(assert (=> d!644285 (= (nullableZipper!78 z!3839) (exists!700 z!3839 lambda!78960))))

(declare-fun bs!444190 () Bool)

(assert (= bs!444190 d!644285))

(declare-fun m!2579302 () Bool)

(assert (=> bs!444190 m!2579302))

(assert (=> b!2127725 d!644285))

(declare-fun d!644287 () Bool)

(assert (=> d!644287 (= (valid!1976 cacheFurthestNullable!114) (validCacheMapFurthestNullable!100 (cache!2805 cacheFurthestNullable!114) (totalInput!2952 cacheFurthestNullable!114)))))

(declare-fun bs!444191 () Bool)

(assert (= bs!444191 d!644287))

(assert (=> bs!444191 m!2579243))

(assert (=> b!2127713 d!644287))

(declare-fun d!644289 () Bool)

(assert (=> d!644289 (= (valid!1978 cacheDown!1098) (validCacheMapDown!248 (cache!2807 cacheDown!1098)))))

(declare-fun bs!444192 () Bool)

(assert (= bs!444192 d!644289))

(assert (=> bs!444192 m!2579278))

(assert (=> b!2127735 d!644289))

(declare-fun bs!444193 () Bool)

(declare-fun d!644291 () Bool)

(assert (= bs!444193 (and d!644291 d!644245)))

(declare-fun lambda!78961 () Int)

(assert (=> bs!444193 (= lambda!78961 lambda!78954)))

(assert (=> d!644291 (= (inv!31431 setElem!15545) (forall!4886 (exprs!1757 setElem!15545) lambda!78961))))

(declare-fun bs!444194 () Bool)

(assert (= bs!444194 d!644291))

(declare-fun m!2579304 () Bool)

(assert (=> bs!444194 m!2579304))

(assert (=> setNonEmpty!15545 d!644291))

(declare-fun d!644293 () Bool)

(assert (=> d!644293 (= (array_inv!2728 (_keys!2807 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) (bvsge (size!18632 (_keys!2807 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2127746 d!644293))

(declare-fun d!644295 () Bool)

(assert (=> d!644295 (= (array_inv!2731 (_values!2790 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) (bvsge (size!18633 (_values!2790 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2127746 d!644295))

(assert (=> b!2127723 d!644253))

(declare-fun d!644297 () Bool)

(declare-fun lt!796044 () Int)

(assert (=> d!644297 (and (>= lt!796044 (- 1)) (< lt!796044 lt!796033) (>= lt!796044 lastNullablePos!123) (or (= lt!796044 lastNullablePos!123) (>= lt!796044 from!1043)))))

(declare-fun e!1356451 () Int)

(assert (=> d!644297 (= lt!796044 e!1356451)))

(declare-fun c!340136 () Bool)

(declare-fun e!1356449 () Bool)

(assert (=> d!644297 (= c!340136 e!1356449)))

(declare-fun res!920317 () Bool)

(assert (=> d!644297 (=> res!920317 e!1356449)))

(assert (=> d!644297 (= res!920317 (= from!1043 lt!796033))))

(assert (=> d!644297 (and (>= from!1043 0) (<= from!1043 lt!796033))))

(assert (=> d!644297 (= (furthestNullablePosition!16 z!3839 from!1043 totalInput!851 lt!796033 lastNullablePos!123) lt!796044)))

(declare-fun b!2127823 () Bool)

(declare-fun lostCauseZipper!62 ((InoxSet Context!2514)) Bool)

(assert (=> b!2127823 (= e!1356449 (lostCauseZipper!62 z!3839))))

(declare-fun b!2127824 () Bool)

(declare-fun e!1356450 () Int)

(assert (=> b!2127824 (= e!1356450 lastNullablePos!123)))

(declare-fun lt!796043 () (InoxSet Context!2514))

(declare-fun b!2127825 () Bool)

(assert (=> b!2127825 (= e!1356451 (furthestNullablePosition!16 lt!796043 (+ from!1043 1) totalInput!851 lt!796033 e!1356450))))

(declare-fun derivationStepZipper!89 ((InoxSet Context!2514) C!11520) (InoxSet Context!2514))

(declare-fun apply!5920 (BalanceConc!15412 Int) C!11520)

(assert (=> b!2127825 (= lt!796043 (derivationStepZipper!89 z!3839 (apply!5920 totalInput!851 from!1043)))))

(declare-fun c!340135 () Bool)

(assert (=> b!2127825 (= c!340135 (nullableZipper!78 lt!796043))))

(declare-fun b!2127826 () Bool)

(assert (=> b!2127826 (= e!1356450 from!1043)))

(declare-fun b!2127827 () Bool)

(assert (=> b!2127827 (= e!1356451 lastNullablePos!123)))

(assert (= (and d!644297 (not res!920317)) b!2127823))

(assert (= (and d!644297 c!340136) b!2127827))

(assert (= (and d!644297 (not c!340136)) b!2127825))

(assert (= (and b!2127825 c!340135) b!2127826))

(assert (= (and b!2127825 (not c!340135)) b!2127824))

(declare-fun m!2579306 () Bool)

(assert (=> b!2127823 m!2579306))

(declare-fun m!2579308 () Bool)

(assert (=> b!2127825 m!2579308))

(declare-fun m!2579310 () Bool)

(assert (=> b!2127825 m!2579310))

(assert (=> b!2127825 m!2579310))

(declare-fun m!2579312 () Bool)

(assert (=> b!2127825 m!2579312))

(declare-fun m!2579314 () Bool)

(assert (=> b!2127825 m!2579314))

(assert (=> b!2127723 d!644297))

(declare-fun condSetEmpty!15549 () Bool)

(assert (=> setNonEmpty!15546 (= condSetEmpty!15549 (= setRest!15546 ((as const (Array Context!2514 Bool)) false)))))

(declare-fun setRes!15549 () Bool)

(assert (=> setNonEmpty!15546 (= tp!653040 setRes!15549)))

(declare-fun setIsEmpty!15549 () Bool)

(assert (=> setIsEmpty!15549 setRes!15549))

(declare-fun setNonEmpty!15549 () Bool)

(declare-fun setElem!15549 () Context!2514)

(declare-fun tp!653057 () Bool)

(declare-fun e!1356454 () Bool)

(assert (=> setNonEmpty!15549 (= setRes!15549 (and tp!653057 (inv!31431 setElem!15549) e!1356454))))

(declare-fun setRest!15549 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15549 (= setRest!15546 ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15549 true) setRest!15549))))

(declare-fun b!2127832 () Bool)

(declare-fun tp!653058 () Bool)

(assert (=> b!2127832 (= e!1356454 tp!653058)))

(assert (= (and setNonEmpty!15546 condSetEmpty!15549) setIsEmpty!15549))

(assert (= (and setNonEmpty!15546 (not condSetEmpty!15549)) setNonEmpty!15549))

(assert (= setNonEmpty!15549 b!2127832))

(declare-fun m!2579316 () Bool)

(assert (=> setNonEmpty!15549 m!2579316))

(declare-fun e!1356460 () Bool)

(declare-fun tp!653067 () Bool)

(declare-fun tp!653065 () Bool)

(declare-fun b!2127841 () Bool)

(assert (=> b!2127841 (= e!1356460 (and (inv!31430 (left!18401 (c!340123 (totalInput!2953 (h!29227 stack!8))))) tp!653067 (inv!31430 (right!18731 (c!340123 (totalInput!2953 (h!29227 stack!8))))) tp!653065))))

(declare-fun b!2127843 () Bool)

(declare-fun e!1356459 () Bool)

(declare-fun tp!653066 () Bool)

(assert (=> b!2127843 (= e!1356459 tp!653066)))

(declare-fun b!2127842 () Bool)

(declare-fun inv!31439 (IArray!15655) Bool)

(assert (=> b!2127842 (= e!1356460 (and (inv!31439 (xs!10767 (c!340123 (totalInput!2953 (h!29227 stack!8))))) e!1356459))))

(assert (=> b!2127742 (= tp!653050 (and (inv!31430 (c!340123 (totalInput!2953 (h!29227 stack!8)))) e!1356460))))

(assert (= (and b!2127742 ((_ is Node!7825) (c!340123 (totalInput!2953 (h!29227 stack!8))))) b!2127841))

(assert (= b!2127842 b!2127843))

(assert (= (and b!2127742 ((_ is Leaf!11436) (c!340123 (totalInput!2953 (h!29227 stack!8))))) b!2127842))

(declare-fun m!2579318 () Bool)

(assert (=> b!2127841 m!2579318))

(declare-fun m!2579320 () Bool)

(assert (=> b!2127841 m!2579320))

(declare-fun m!2579322 () Bool)

(assert (=> b!2127842 m!2579322))

(assert (=> b!2127742 m!2579247))

(declare-fun tp!653082 () Bool)

(declare-fun setRes!15552 () Bool)

(declare-fun setElem!15552 () Context!2514)

(declare-fun e!1356469 () Bool)

(declare-fun setNonEmpty!15552 () Bool)

(assert (=> setNonEmpty!15552 (= setRes!15552 (and tp!653082 (inv!31431 setElem!15552) e!1356469))))

(declare-fun setRest!15552 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15552 (= (_2!13736 (h!29228 (zeroValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15552 true) setRest!15552))))

(declare-fun b!2127852 () Bool)

(declare-fun e!1356467 () Bool)

(declare-fun tp!653078 () Bool)

(assert (=> b!2127852 (= e!1356467 tp!653078)))

(declare-fun tp!653080 () Bool)

(declare-fun tp_is_empty!9501 () Bool)

(declare-fun tp!653079 () Bool)

(declare-fun e!1356468 () Bool)

(declare-fun b!2127853 () Bool)

(assert (=> b!2127853 (= e!1356468 (and tp!653080 (inv!31431 (_2!13735 (_1!13736 (h!29228 (zeroValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))))) e!1356467 tp_is_empty!9501 setRes!15552 tp!653079))))

(declare-fun condSetEmpty!15552 () Bool)

(assert (=> b!2127853 (= condSetEmpty!15552 (= (_2!13736 (h!29228 (zeroValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127854 () Bool)

(declare-fun tp!653081 () Bool)

(assert (=> b!2127854 (= e!1356469 tp!653081)))

(declare-fun setIsEmpty!15552 () Bool)

(assert (=> setIsEmpty!15552 setRes!15552))

(assert (=> b!2127727 (= tp!653047 e!1356468)))

(assert (= b!2127853 b!2127852))

(assert (= (and b!2127853 condSetEmpty!15552) setIsEmpty!15552))

(assert (= (and b!2127853 (not condSetEmpty!15552)) setNonEmpty!15552))

(assert (= setNonEmpty!15552 b!2127854))

(assert (= (and b!2127727 ((_ is Cons!23827) (zeroValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))) b!2127853))

(declare-fun m!2579324 () Bool)

(assert (=> setNonEmpty!15552 m!2579324))

(declare-fun m!2579326 () Bool)

(assert (=> b!2127853 m!2579326))

(declare-fun e!1356472 () Bool)

(declare-fun tp!653087 () Bool)

(declare-fun setNonEmpty!15553 () Bool)

(declare-fun setRes!15553 () Bool)

(declare-fun setElem!15553 () Context!2514)

(assert (=> setNonEmpty!15553 (= setRes!15553 (and tp!653087 (inv!31431 setElem!15553) e!1356472))))

(declare-fun setRest!15553 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15553 (= (_2!13736 (h!29228 (minValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15553 true) setRest!15553))))

(declare-fun b!2127855 () Bool)

(declare-fun e!1356470 () Bool)

(declare-fun tp!653083 () Bool)

(assert (=> b!2127855 (= e!1356470 tp!653083)))

(declare-fun tp!653085 () Bool)

(declare-fun tp!653084 () Bool)

(declare-fun b!2127856 () Bool)

(declare-fun e!1356471 () Bool)

(assert (=> b!2127856 (= e!1356471 (and tp!653085 (inv!31431 (_2!13735 (_1!13736 (h!29228 (minValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))))) e!1356470 tp_is_empty!9501 setRes!15553 tp!653084))))

(declare-fun condSetEmpty!15553 () Bool)

(assert (=> b!2127856 (= condSetEmpty!15553 (= (_2!13736 (h!29228 (minValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127857 () Bool)

(declare-fun tp!653086 () Bool)

(assert (=> b!2127857 (= e!1356472 tp!653086)))

(declare-fun setIsEmpty!15553 () Bool)

(assert (=> setIsEmpty!15553 setRes!15553))

(assert (=> b!2127727 (= tp!653043 e!1356471)))

(assert (= b!2127856 b!2127855))

(assert (= (and b!2127856 condSetEmpty!15553) setIsEmpty!15553))

(assert (= (and b!2127856 (not condSetEmpty!15553)) setNonEmpty!15553))

(assert (= setNonEmpty!15553 b!2127857))

(assert (= (and b!2127727 ((_ is Cons!23827) (minValue!2770 (v!28364 (underlying!5219 (v!28365 (underlying!5220 (cache!2807 cacheDown!1098)))))))) b!2127856))

(declare-fun m!2579328 () Bool)

(assert (=> setNonEmpty!15553 m!2579328))

(declare-fun m!2579330 () Bool)

(assert (=> b!2127856 m!2579330))

(declare-fun e!1356485 () Bool)

(declare-fun setRes!15559 () Bool)

(declare-fun setNonEmpty!15558 () Bool)

(declare-fun tp!653112 () Bool)

(declare-fun setElem!15559 () Context!2514)

(assert (=> setNonEmpty!15558 (= setRes!15559 (and tp!653112 (inv!31431 setElem!15559) e!1356485))))

(declare-fun mapValue!12282 () List!23909)

(declare-fun setRest!15558 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15558 (= (_2!13734 (h!29226 mapValue!12282)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15559 true) setRest!15558))))

(declare-fun b!2127872 () Bool)

(declare-fun e!1356490 () Bool)

(declare-fun tp!653107 () Bool)

(assert (=> b!2127872 (= e!1356490 tp!653107)))

(declare-fun b!2127873 () Bool)

(declare-fun tp!653109 () Bool)

(assert (=> b!2127873 (= e!1356485 tp!653109)))

(declare-fun mapNonEmpty!12282 () Bool)

(declare-fun mapRes!12282 () Bool)

(declare-fun tp!653110 () Bool)

(declare-fun e!1356487 () Bool)

(assert (=> mapNonEmpty!12282 (= mapRes!12282 (and tp!653110 e!1356487))))

(declare-fun mapRest!12282 () (Array (_ BitVec 32) List!23909))

(declare-fun mapKey!12282 () (_ BitVec 32))

(assert (=> mapNonEmpty!12282 (= mapRest!12277 (store mapRest!12282 mapKey!12282 mapValue!12282))))

(declare-fun mapIsEmpty!12282 () Bool)

(assert (=> mapIsEmpty!12282 mapRes!12282))

(declare-fun setRes!15558 () Bool)

(declare-fun setNonEmpty!15559 () Bool)

(declare-fun setElem!15558 () Context!2514)

(declare-fun tp!653108 () Bool)

(assert (=> setNonEmpty!15559 (= setRes!15558 (and tp!653108 (inv!31431 setElem!15558) e!1356490))))

(declare-fun mapDefault!12282 () List!23909)

(declare-fun setRest!15559 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15559 (= (_2!13734 (h!29226 mapDefault!12282)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15558 true) setRest!15559))))

(declare-fun b!2127874 () Bool)

(declare-fun tp!653113 () Bool)

(declare-fun e!1356488 () Bool)

(assert (=> b!2127874 (= e!1356487 (and (inv!31431 (_1!13733 (_1!13734 (h!29226 mapValue!12282)))) e!1356488 tp_is_empty!9501 setRes!15559 tp!653113))))

(declare-fun condSetEmpty!15558 () Bool)

(assert (=> b!2127874 (= condSetEmpty!15558 (= (_2!13734 (h!29226 mapValue!12282)) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127875 () Bool)

(declare-fun e!1356486 () Bool)

(declare-fun tp!653106 () Bool)

(assert (=> b!2127875 (= e!1356486 tp!653106)))

(declare-fun setIsEmpty!15558 () Bool)

(assert (=> setIsEmpty!15558 setRes!15558))

(declare-fun setIsEmpty!15559 () Bool)

(assert (=> setIsEmpty!15559 setRes!15559))

(declare-fun b!2127877 () Bool)

(declare-fun tp!653114 () Bool)

(assert (=> b!2127877 (= e!1356488 tp!653114)))

(declare-fun condMapEmpty!12282 () Bool)

(assert (=> mapNonEmpty!12278 (= condMapEmpty!12282 (= mapRest!12277 ((as const (Array (_ BitVec 32) List!23909)) mapDefault!12282)))))

(declare-fun e!1356489 () Bool)

(assert (=> mapNonEmpty!12278 (= tp!653033 (and e!1356489 mapRes!12282))))

(declare-fun tp!653111 () Bool)

(declare-fun b!2127876 () Bool)

(assert (=> b!2127876 (= e!1356489 (and (inv!31431 (_1!13733 (_1!13734 (h!29226 mapDefault!12282)))) e!1356486 tp_is_empty!9501 setRes!15558 tp!653111))))

(declare-fun condSetEmpty!15559 () Bool)

(assert (=> b!2127876 (= condSetEmpty!15559 (= (_2!13734 (h!29226 mapDefault!12282)) ((as const (Array Context!2514 Bool)) false)))))

(assert (= (and mapNonEmpty!12278 condMapEmpty!12282) mapIsEmpty!12282))

(assert (= (and mapNonEmpty!12278 (not condMapEmpty!12282)) mapNonEmpty!12282))

(assert (= b!2127874 b!2127877))

(assert (= (and b!2127874 condSetEmpty!15558) setIsEmpty!15559))

(assert (= (and b!2127874 (not condSetEmpty!15558)) setNonEmpty!15558))

(assert (= setNonEmpty!15558 b!2127873))

(assert (= (and mapNonEmpty!12282 ((_ is Cons!23825) mapValue!12282)) b!2127874))

(assert (= b!2127876 b!2127875))

(assert (= (and b!2127876 condSetEmpty!15559) setIsEmpty!15558))

(assert (= (and b!2127876 (not condSetEmpty!15559)) setNonEmpty!15559))

(assert (= setNonEmpty!15559 b!2127872))

(assert (= (and mapNonEmpty!12278 ((_ is Cons!23825) mapDefault!12282)) b!2127876))

(declare-fun m!2579332 () Bool)

(assert (=> setNonEmpty!15559 m!2579332))

(declare-fun m!2579334 () Bool)

(assert (=> mapNonEmpty!12282 m!2579334))

(declare-fun m!2579336 () Bool)

(assert (=> b!2127876 m!2579336))

(declare-fun m!2579338 () Bool)

(assert (=> setNonEmpty!15558 m!2579338))

(declare-fun m!2579340 () Bool)

(assert (=> b!2127874 m!2579340))

(declare-fun b!2127886 () Bool)

(declare-fun e!1356497 () Bool)

(declare-fun tp!653124 () Bool)

(assert (=> b!2127886 (= e!1356497 tp!653124)))

(declare-fun b!2127887 () Bool)

(declare-fun e!1356499 () Bool)

(declare-fun tp!653126 () Bool)

(assert (=> b!2127887 (= e!1356499 tp!653126)))

(declare-fun tp!653125 () Bool)

(declare-fun setNonEmpty!15562 () Bool)

(declare-fun setRes!15562 () Bool)

(declare-fun setElem!15562 () Context!2514)

(assert (=> setNonEmpty!15562 (= setRes!15562 (and tp!653125 (inv!31431 setElem!15562) e!1356497))))

(declare-fun setRest!15562 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15562 (= (_2!13734 (h!29226 mapValue!12278)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15562 true) setRest!15562))))

(declare-fun setIsEmpty!15562 () Bool)

(assert (=> setIsEmpty!15562 setRes!15562))

(declare-fun e!1356498 () Bool)

(assert (=> mapNonEmpty!12278 (= tp!653030 e!1356498)))

(declare-fun b!2127888 () Bool)

(declare-fun tp!653123 () Bool)

(assert (=> b!2127888 (= e!1356498 (and (inv!31431 (_1!13733 (_1!13734 (h!29226 mapValue!12278)))) e!1356499 tp_is_empty!9501 setRes!15562 tp!653123))))

(declare-fun condSetEmpty!15562 () Bool)

(assert (=> b!2127888 (= condSetEmpty!15562 (= (_2!13734 (h!29226 mapValue!12278)) ((as const (Array Context!2514 Bool)) false)))))

(assert (= b!2127888 b!2127887))

(assert (= (and b!2127888 condSetEmpty!15562) setIsEmpty!15562))

(assert (= (and b!2127888 (not condSetEmpty!15562)) setNonEmpty!15562))

(assert (= setNonEmpty!15562 b!2127886))

(assert (= (and mapNonEmpty!12278 ((_ is Cons!23825) mapValue!12278)) b!2127888))

(declare-fun m!2579342 () Bool)

(assert (=> setNonEmpty!15562 m!2579342))

(declare-fun m!2579344 () Bool)

(assert (=> b!2127888 m!2579344))

(declare-fun b!2127893 () Bool)

(declare-fun e!1356502 () Bool)

(declare-fun tp!653131 () Bool)

(declare-fun tp!653132 () Bool)

(assert (=> b!2127893 (= e!1356502 (and tp!653131 tp!653132))))

(assert (=> b!2127718 (= tp!653036 e!1356502)))

(assert (= (and b!2127718 ((_ is Cons!23822) (exprs!1757 setElem!15545))) b!2127893))

(declare-fun mapNonEmpty!12285 () Bool)

(declare-fun mapRes!12285 () Bool)

(declare-fun tp!653152 () Bool)

(declare-fun e!1356514 () Bool)

(assert (=> mapNonEmpty!12285 (= mapRes!12285 (and tp!653152 e!1356514))))

(declare-fun mapKey!12285 () (_ BitVec 32))

(declare-fun mapValue!12285 () List!23907)

(declare-fun mapRest!12285 () (Array (_ BitVec 32) List!23907))

(assert (=> mapNonEmpty!12285 (= mapRest!12278 (store mapRest!12285 mapKey!12285 mapValue!12285))))

(declare-fun b!2127904 () Bool)

(declare-fun setRes!15567 () Bool)

(declare-fun tp!653149 () Bool)

(assert (=> b!2127904 (= e!1356514 (and setRes!15567 tp!653149))))

(declare-fun condSetEmpty!15567 () Bool)

(assert (=> b!2127904 (= condSetEmpty!15567 (= (_1!13731 (_1!13732 (h!29224 mapValue!12285))) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127905 () Bool)

(declare-fun e!1356512 () Bool)

(declare-fun tp!653147 () Bool)

(assert (=> b!2127905 (= e!1356512 tp!653147)))

(declare-fun setIsEmpty!15567 () Bool)

(assert (=> setIsEmpty!15567 setRes!15567))

(declare-fun setElem!15567 () Context!2514)

(declare-fun tp!653148 () Bool)

(declare-fun e!1356513 () Bool)

(declare-fun setNonEmpty!15567 () Bool)

(assert (=> setNonEmpty!15567 (= setRes!15567 (and tp!653148 (inv!31431 setElem!15567) e!1356513))))

(declare-fun setRest!15568 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15567 (= (_1!13731 (_1!13732 (h!29224 mapValue!12285))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15567 true) setRest!15568))))

(declare-fun b!2127906 () Bool)

(declare-fun e!1356511 () Bool)

(declare-fun setRes!15568 () Bool)

(declare-fun tp!653151 () Bool)

(assert (=> b!2127906 (= e!1356511 (and setRes!15568 tp!653151))))

(declare-fun condSetEmpty!15568 () Bool)

(declare-fun mapDefault!12285 () List!23907)

(assert (=> b!2127906 (= condSetEmpty!15568 (= (_1!13731 (_1!13732 (h!29224 mapDefault!12285))) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun setIsEmpty!15568 () Bool)

(assert (=> setIsEmpty!15568 setRes!15568))

(declare-fun b!2127907 () Bool)

(declare-fun tp!653153 () Bool)

(assert (=> b!2127907 (= e!1356513 tp!653153)))

(declare-fun setNonEmpty!15568 () Bool)

(declare-fun tp!653150 () Bool)

(declare-fun setElem!15568 () Context!2514)

(assert (=> setNonEmpty!15568 (= setRes!15568 (and tp!653150 (inv!31431 setElem!15568) e!1356512))))

(declare-fun setRest!15567 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15568 (= (_1!13731 (_1!13732 (h!29224 mapDefault!12285))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15568 true) setRest!15567))))

(declare-fun condMapEmpty!12285 () Bool)

(assert (=> mapNonEmpty!12277 (= condMapEmpty!12285 (= mapRest!12278 ((as const (Array (_ BitVec 32) List!23907)) mapDefault!12285)))))

(assert (=> mapNonEmpty!12277 (= tp!653046 (and e!1356511 mapRes!12285))))

(declare-fun mapIsEmpty!12285 () Bool)

(assert (=> mapIsEmpty!12285 mapRes!12285))

(assert (= (and mapNonEmpty!12277 condMapEmpty!12285) mapIsEmpty!12285))

(assert (= (and mapNonEmpty!12277 (not condMapEmpty!12285)) mapNonEmpty!12285))

(assert (= (and b!2127904 condSetEmpty!15567) setIsEmpty!15567))

(assert (= (and b!2127904 (not condSetEmpty!15567)) setNonEmpty!15567))

(assert (= setNonEmpty!15567 b!2127907))

(assert (= (and mapNonEmpty!12285 ((_ is Cons!23823) mapValue!12285)) b!2127904))

(assert (= (and b!2127906 condSetEmpty!15568) setIsEmpty!15568))

(assert (= (and b!2127906 (not condSetEmpty!15568)) setNonEmpty!15568))

(assert (= setNonEmpty!15568 b!2127905))

(assert (= (and mapNonEmpty!12277 ((_ is Cons!23823) mapDefault!12285)) b!2127906))

(declare-fun m!2579346 () Bool)

(assert (=> mapNonEmpty!12285 m!2579346))

(declare-fun m!2579348 () Bool)

(assert (=> setNonEmpty!15567 m!2579348))

(declare-fun m!2579350 () Bool)

(assert (=> setNonEmpty!15568 m!2579350))

(declare-fun setIsEmpty!15571 () Bool)

(declare-fun setRes!15571 () Bool)

(assert (=> setIsEmpty!15571 setRes!15571))

(declare-fun tp!653161 () Bool)

(declare-fun e!1356520 () Bool)

(declare-fun setElem!15571 () Context!2514)

(declare-fun setNonEmpty!15571 () Bool)

(assert (=> setNonEmpty!15571 (= setRes!15571 (and tp!653161 (inv!31431 setElem!15571) e!1356520))))

(declare-fun setRest!15571 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15571 (= (_1!13731 (_1!13732 (h!29224 mapValue!12277))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15571 true) setRest!15571))))

(declare-fun b!2127915 () Bool)

(declare-fun tp!653162 () Bool)

(assert (=> b!2127915 (= e!1356520 tp!653162)))

(declare-fun b!2127914 () Bool)

(declare-fun e!1356519 () Bool)

(declare-fun tp!653160 () Bool)

(assert (=> b!2127914 (= e!1356519 (and setRes!15571 tp!653160))))

(declare-fun condSetEmpty!15571 () Bool)

(assert (=> b!2127914 (= condSetEmpty!15571 (= (_1!13731 (_1!13732 (h!29224 mapValue!12277))) ((as const (Array Context!2514 Bool)) false)))))

(assert (=> mapNonEmpty!12277 (= tp!653031 e!1356519)))

(assert (= (and b!2127914 condSetEmpty!15571) setIsEmpty!15571))

(assert (= (and b!2127914 (not condSetEmpty!15571)) setNonEmpty!15571))

(assert (= setNonEmpty!15571 b!2127915))

(assert (= (and mapNonEmpty!12277 ((_ is Cons!23823) mapValue!12277)) b!2127914))

(declare-fun m!2579352 () Bool)

(assert (=> setNonEmpty!15571 m!2579352))

(declare-fun b!2127916 () Bool)

(declare-fun tp!653163 () Bool)

(declare-fun e!1356522 () Bool)

(declare-fun tp!653165 () Bool)

(assert (=> b!2127916 (= e!1356522 (and (inv!31430 (left!18401 (c!340123 (totalInput!2952 cacheFurthestNullable!114)))) tp!653165 (inv!31430 (right!18731 (c!340123 (totalInput!2952 cacheFurthestNullable!114)))) tp!653163))))

(declare-fun b!2127918 () Bool)

(declare-fun e!1356521 () Bool)

(declare-fun tp!653164 () Bool)

(assert (=> b!2127918 (= e!1356521 tp!653164)))

(declare-fun b!2127917 () Bool)

(assert (=> b!2127917 (= e!1356522 (and (inv!31439 (xs!10767 (c!340123 (totalInput!2952 cacheFurthestNullable!114)))) e!1356521))))

(assert (=> b!2127719 (= tp!653039 (and (inv!31430 (c!340123 (totalInput!2952 cacheFurthestNullable!114))) e!1356522))))

(assert (= (and b!2127719 ((_ is Node!7825) (c!340123 (totalInput!2952 cacheFurthestNullable!114)))) b!2127916))

(assert (= b!2127917 b!2127918))

(assert (= (and b!2127719 ((_ is Leaf!11436) (c!340123 (totalInput!2952 cacheFurthestNullable!114)))) b!2127917))

(declare-fun m!2579354 () Bool)

(assert (=> b!2127916 m!2579354))

(declare-fun m!2579356 () Bool)

(assert (=> b!2127916 m!2579356))

(declare-fun m!2579358 () Bool)

(assert (=> b!2127917 m!2579358))

(assert (=> b!2127719 m!2579205))

(declare-fun setIsEmpty!15574 () Bool)

(declare-fun setRes!15574 () Bool)

(assert (=> setIsEmpty!15574 setRes!15574))

(declare-fun e!1356532 () Bool)

(assert (=> b!2127748 (= tp!653041 e!1356532)))

(declare-fun b!2127929 () Bool)

(declare-fun e!1356533 () Bool)

(declare-fun tp!653177 () Bool)

(assert (=> b!2127929 (= e!1356533 (and (inv!31430 (c!340123 (totalInput!2953 (h!29227 (t!196438 stack!8))))) tp!653177))))

(declare-fun e!1356531 () Bool)

(declare-fun b!2127930 () Bool)

(declare-fun tp!653175 () Bool)

(assert (=> b!2127930 (= e!1356532 (and (inv!31433 (h!29227 (t!196438 stack!8))) e!1356531 tp!653175))))

(declare-fun e!1356534 () Bool)

(declare-fun setElem!15574 () Context!2514)

(declare-fun tp!653176 () Bool)

(declare-fun setNonEmpty!15574 () Bool)

(assert (=> setNonEmpty!15574 (= setRes!15574 (and tp!653176 (inv!31431 setElem!15574) e!1356534))))

(declare-fun setRest!15574 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15574 (= (z!5762 (h!29227 (t!196438 stack!8))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15574 true) setRest!15574))))

(declare-fun b!2127931 () Bool)

(assert (=> b!2127931 (= e!1356531 (and setRes!15574 (inv!31432 (totalInput!2953 (h!29227 (t!196438 stack!8)))) e!1356533))))

(declare-fun condSetEmpty!15574 () Bool)

(assert (=> b!2127931 (= condSetEmpty!15574 (= (z!5762 (h!29227 (t!196438 stack!8))) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127932 () Bool)

(declare-fun tp!653174 () Bool)

(assert (=> b!2127932 (= e!1356534 tp!653174)))

(assert (= (and b!2127931 condSetEmpty!15574) setIsEmpty!15574))

(assert (= (and b!2127931 (not condSetEmpty!15574)) setNonEmpty!15574))

(assert (= setNonEmpty!15574 b!2127932))

(assert (= b!2127931 b!2127929))

(assert (= b!2127930 b!2127931))

(assert (= (and b!2127748 ((_ is Cons!23826) (t!196438 stack!8))) b!2127930))

(declare-fun m!2579360 () Bool)

(assert (=> b!2127929 m!2579360))

(declare-fun m!2579362 () Bool)

(assert (=> b!2127930 m!2579362))

(declare-fun m!2579364 () Bool)

(assert (=> setNonEmpty!15574 m!2579364))

(declare-fun m!2579366 () Bool)

(assert (=> b!2127931 m!2579366))

(declare-fun setNonEmpty!15575 () Bool)

(declare-fun setElem!15575 () Context!2514)

(declare-fun setRes!15575 () Bool)

(declare-fun tp!653182 () Bool)

(declare-fun e!1356537 () Bool)

(assert (=> setNonEmpty!15575 (= setRes!15575 (and tp!653182 (inv!31431 setElem!15575) e!1356537))))

(declare-fun setRest!15575 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15575 (= (_2!13736 (h!29228 mapDefault!12278)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15575 true) setRest!15575))))

(declare-fun b!2127933 () Bool)

(declare-fun e!1356535 () Bool)

(declare-fun tp!653178 () Bool)

(assert (=> b!2127933 (= e!1356535 tp!653178)))

(declare-fun tp!653180 () Bool)

(declare-fun tp!653179 () Bool)

(declare-fun b!2127934 () Bool)

(declare-fun e!1356536 () Bool)

(assert (=> b!2127934 (= e!1356536 (and tp!653180 (inv!31431 (_2!13735 (_1!13736 (h!29228 mapDefault!12278)))) e!1356535 tp_is_empty!9501 setRes!15575 tp!653179))))

(declare-fun condSetEmpty!15575 () Bool)

(assert (=> b!2127934 (= condSetEmpty!15575 (= (_2!13736 (h!29228 mapDefault!12278)) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127935 () Bool)

(declare-fun tp!653181 () Bool)

(assert (=> b!2127935 (= e!1356537 tp!653181)))

(declare-fun setIsEmpty!15575 () Bool)

(assert (=> setIsEmpty!15575 setRes!15575))

(assert (=> b!2127724 (= tp!653049 e!1356536)))

(assert (= b!2127934 b!2127933))

(assert (= (and b!2127934 condSetEmpty!15575) setIsEmpty!15575))

(assert (= (and b!2127934 (not condSetEmpty!15575)) setNonEmpty!15575))

(assert (= setNonEmpty!15575 b!2127935))

(assert (= (and b!2127724 ((_ is Cons!23827) mapDefault!12278)) b!2127934))

(declare-fun m!2579368 () Bool)

(assert (=> setNonEmpty!15575 m!2579368))

(declare-fun m!2579370 () Bool)

(assert (=> b!2127934 m!2579370))

(declare-fun b!2127950 () Bool)

(declare-fun e!1356553 () Bool)

(declare-fun tp!653211 () Bool)

(assert (=> b!2127950 (= e!1356553 tp!653211)))

(declare-fun b!2127951 () Bool)

(declare-fun e!1356554 () Bool)

(declare-fun tp!653206 () Bool)

(assert (=> b!2127951 (= e!1356554 tp!653206)))

(declare-fun mapIsEmpty!12288 () Bool)

(declare-fun mapRes!12288 () Bool)

(assert (=> mapIsEmpty!12288 mapRes!12288))

(declare-fun setIsEmpty!15580 () Bool)

(declare-fun setRes!15580 () Bool)

(assert (=> setIsEmpty!15580 setRes!15580))

(declare-fun setIsEmpty!15581 () Bool)

(declare-fun setRes!15581 () Bool)

(assert (=> setIsEmpty!15581 setRes!15581))

(declare-fun tp!653207 () Bool)

(declare-fun setNonEmpty!15580 () Bool)

(declare-fun setElem!15581 () Context!2514)

(declare-fun e!1356550 () Bool)

(assert (=> setNonEmpty!15580 (= setRes!15580 (and tp!653207 (inv!31431 setElem!15581) e!1356550))))

(declare-fun mapDefault!12288 () List!23911)

(declare-fun setRest!15581 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15580 (= (_2!13736 (h!29228 mapDefault!12288)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15581 true) setRest!15581))))

(declare-fun tp!653205 () Bool)

(declare-fun tp!653215 () Bool)

(declare-fun b!2127953 () Bool)

(declare-fun e!1356551 () Bool)

(assert (=> b!2127953 (= e!1356551 (and tp!653205 (inv!31431 (_2!13735 (_1!13736 (h!29228 mapDefault!12288)))) e!1356553 tp_is_empty!9501 setRes!15580 tp!653215))))

(declare-fun condSetEmpty!15580 () Bool)

(assert (=> b!2127953 (= condSetEmpty!15580 (= (_2!13736 (h!29228 mapDefault!12288)) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127952 () Bool)

(declare-fun e!1356555 () Bool)

(declare-fun tp!653208 () Bool)

(assert (=> b!2127952 (= e!1356555 tp!653208)))

(declare-fun condMapEmpty!12288 () Bool)

(assert (=> mapNonEmpty!12279 (= condMapEmpty!12288 (= mapRest!12279 ((as const (Array (_ BitVec 32) List!23911)) mapDefault!12288)))))

(assert (=> mapNonEmpty!12279 (= tp!653048 (and e!1356551 mapRes!12288))))

(declare-fun tp!653210 () Bool)

(declare-fun tp!653212 () Bool)

(declare-fun e!1356552 () Bool)

(declare-fun b!2127954 () Bool)

(declare-fun mapValue!12288 () List!23911)

(assert (=> b!2127954 (= e!1356552 (and tp!653210 (inv!31431 (_2!13735 (_1!13736 (h!29228 mapValue!12288)))) e!1356554 tp_is_empty!9501 setRes!15581 tp!653212))))

(declare-fun condSetEmpty!15581 () Bool)

(assert (=> b!2127954 (= condSetEmpty!15581 (= (_2!13736 (h!29228 mapValue!12288)) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun setNonEmpty!15581 () Bool)

(declare-fun setElem!15580 () Context!2514)

(declare-fun tp!653209 () Bool)

(assert (=> setNonEmpty!15581 (= setRes!15581 (and tp!653209 (inv!31431 setElem!15580) e!1356555))))

(declare-fun setRest!15580 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15581 (= (_2!13736 (h!29228 mapValue!12288)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15580 true) setRest!15580))))

(declare-fun mapNonEmpty!12288 () Bool)

(declare-fun tp!653213 () Bool)

(assert (=> mapNonEmpty!12288 (= mapRes!12288 (and tp!653213 e!1356552))))

(declare-fun mapRest!12288 () (Array (_ BitVec 32) List!23911))

(declare-fun mapKey!12288 () (_ BitVec 32))

(assert (=> mapNonEmpty!12288 (= mapRest!12279 (store mapRest!12288 mapKey!12288 mapValue!12288))))

(declare-fun b!2127955 () Bool)

(declare-fun tp!653214 () Bool)

(assert (=> b!2127955 (= e!1356550 tp!653214)))

(assert (= (and mapNonEmpty!12279 condMapEmpty!12288) mapIsEmpty!12288))

(assert (= (and mapNonEmpty!12279 (not condMapEmpty!12288)) mapNonEmpty!12288))

(assert (= b!2127954 b!2127951))

(assert (= (and b!2127954 condSetEmpty!15581) setIsEmpty!15581))

(assert (= (and b!2127954 (not condSetEmpty!15581)) setNonEmpty!15581))

(assert (= setNonEmpty!15581 b!2127952))

(assert (= (and mapNonEmpty!12288 ((_ is Cons!23827) mapValue!12288)) b!2127954))

(assert (= b!2127953 b!2127950))

(assert (= (and b!2127953 condSetEmpty!15580) setIsEmpty!15580))

(assert (= (and b!2127953 (not condSetEmpty!15580)) setNonEmpty!15580))

(assert (= setNonEmpty!15580 b!2127955))

(assert (= (and mapNonEmpty!12279 ((_ is Cons!23827) mapDefault!12288)) b!2127953))

(declare-fun m!2579372 () Bool)

(assert (=> b!2127954 m!2579372))

(declare-fun m!2579374 () Bool)

(assert (=> setNonEmpty!15581 m!2579374))

(declare-fun m!2579376 () Bool)

(assert (=> b!2127953 m!2579376))

(declare-fun m!2579378 () Bool)

(assert (=> setNonEmpty!15580 m!2579378))

(declare-fun m!2579380 () Bool)

(assert (=> mapNonEmpty!12288 m!2579380))

(declare-fun setRes!15582 () Bool)

(declare-fun setNonEmpty!15582 () Bool)

(declare-fun e!1356558 () Bool)

(declare-fun tp!653220 () Bool)

(declare-fun setElem!15582 () Context!2514)

(assert (=> setNonEmpty!15582 (= setRes!15582 (and tp!653220 (inv!31431 setElem!15582) e!1356558))))

(declare-fun setRest!15582 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15582 (= (_2!13736 (h!29228 mapValue!12279)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15582 true) setRest!15582))))

(declare-fun b!2127956 () Bool)

(declare-fun e!1356556 () Bool)

(declare-fun tp!653216 () Bool)

(assert (=> b!2127956 (= e!1356556 tp!653216)))

(declare-fun b!2127957 () Bool)

(declare-fun e!1356557 () Bool)

(declare-fun tp!653217 () Bool)

(declare-fun tp!653218 () Bool)

(assert (=> b!2127957 (= e!1356557 (and tp!653218 (inv!31431 (_2!13735 (_1!13736 (h!29228 mapValue!12279)))) e!1356556 tp_is_empty!9501 setRes!15582 tp!653217))))

(declare-fun condSetEmpty!15582 () Bool)

(assert (=> b!2127957 (= condSetEmpty!15582 (= (_2!13736 (h!29228 mapValue!12279)) ((as const (Array Context!2514 Bool)) false)))))

(declare-fun b!2127958 () Bool)

(declare-fun tp!653219 () Bool)

(assert (=> b!2127958 (= e!1356558 tp!653219)))

(declare-fun setIsEmpty!15582 () Bool)

(assert (=> setIsEmpty!15582 setRes!15582))

(assert (=> mapNonEmpty!12279 (= tp!653026 e!1356557)))

(assert (= b!2127957 b!2127956))

(assert (= (and b!2127957 condSetEmpty!15582) setIsEmpty!15582))

(assert (= (and b!2127957 (not condSetEmpty!15582)) setNonEmpty!15582))

(assert (= setNonEmpty!15582 b!2127958))

(assert (= (and mapNonEmpty!12279 ((_ is Cons!23827) mapValue!12279)) b!2127957))

(declare-fun m!2579382 () Bool)

(assert (=> setNonEmpty!15582 m!2579382))

(declare-fun m!2579384 () Bool)

(assert (=> b!2127957 m!2579384))

(declare-fun tp!653223 () Bool)

(declare-fun b!2127959 () Bool)

(declare-fun e!1356560 () Bool)

(declare-fun tp!653221 () Bool)

(assert (=> b!2127959 (= e!1356560 (and (inv!31430 (left!18401 (c!340123 totalInput!851))) tp!653223 (inv!31430 (right!18731 (c!340123 totalInput!851))) tp!653221))))

(declare-fun b!2127961 () Bool)

(declare-fun e!1356559 () Bool)

(declare-fun tp!653222 () Bool)

(assert (=> b!2127961 (= e!1356559 tp!653222)))

(declare-fun b!2127960 () Bool)

(assert (=> b!2127960 (= e!1356560 (and (inv!31439 (xs!10767 (c!340123 totalInput!851))) e!1356559))))

(assert (=> b!2127729 (= tp!653025 (and (inv!31430 (c!340123 totalInput!851)) e!1356560))))

(assert (= (and b!2127729 ((_ is Node!7825) (c!340123 totalInput!851))) b!2127959))

(assert (= b!2127960 b!2127961))

(assert (= (and b!2127729 ((_ is Leaf!11436) (c!340123 totalInput!851))) b!2127960))

(declare-fun m!2579386 () Bool)

(assert (=> b!2127959 m!2579386))

(declare-fun m!2579388 () Bool)

(assert (=> b!2127959 m!2579388))

(declare-fun m!2579390 () Bool)

(assert (=> b!2127960 m!2579390))

(assert (=> b!2127729 m!2579207))

(declare-fun b!2127962 () Bool)

(declare-fun e!1356561 () Bool)

(declare-fun tp!653225 () Bool)

(assert (=> b!2127962 (= e!1356561 tp!653225)))

(declare-fun b!2127963 () Bool)

(declare-fun e!1356563 () Bool)

(declare-fun tp!653227 () Bool)

(assert (=> b!2127963 (= e!1356563 tp!653227)))

(declare-fun tp!653226 () Bool)

(declare-fun setElem!15583 () Context!2514)

(declare-fun setNonEmpty!15583 () Bool)

(declare-fun setRes!15583 () Bool)

(assert (=> setNonEmpty!15583 (= setRes!15583 (and tp!653226 (inv!31431 setElem!15583) e!1356561))))

(declare-fun setRest!15583 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15583 (= (_2!13734 (h!29226 (zeroValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15583 true) setRest!15583))))

(declare-fun setIsEmpty!15583 () Bool)

(assert (=> setIsEmpty!15583 setRes!15583))

(declare-fun e!1356562 () Bool)

(assert (=> b!2127715 (= tp!653042 e!1356562)))

(declare-fun b!2127964 () Bool)

(declare-fun tp!653224 () Bool)

(assert (=> b!2127964 (= e!1356562 (and (inv!31431 (_1!13733 (_1!13734 (h!29226 (zeroValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))))) e!1356563 tp_is_empty!9501 setRes!15583 tp!653224))))

(declare-fun condSetEmpty!15583 () Bool)

(assert (=> b!2127964 (= condSetEmpty!15583 (= (_2!13734 (h!29226 (zeroValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))) ((as const (Array Context!2514 Bool)) false)))))

(assert (= b!2127964 b!2127963))

(assert (= (and b!2127964 condSetEmpty!15583) setIsEmpty!15583))

(assert (= (and b!2127964 (not condSetEmpty!15583)) setNonEmpty!15583))

(assert (= setNonEmpty!15583 b!2127962))

(assert (= (and b!2127715 ((_ is Cons!23825) (zeroValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))) b!2127964))

(declare-fun m!2579392 () Bool)

(assert (=> setNonEmpty!15583 m!2579392))

(declare-fun m!2579394 () Bool)

(assert (=> b!2127964 m!2579394))

(declare-fun b!2127965 () Bool)

(declare-fun e!1356564 () Bool)

(declare-fun tp!653229 () Bool)

(assert (=> b!2127965 (= e!1356564 tp!653229)))

(declare-fun b!2127966 () Bool)

(declare-fun e!1356566 () Bool)

(declare-fun tp!653231 () Bool)

(assert (=> b!2127966 (= e!1356566 tp!653231)))

(declare-fun setRes!15584 () Bool)

(declare-fun setNonEmpty!15584 () Bool)

(declare-fun tp!653230 () Bool)

(declare-fun setElem!15584 () Context!2514)

(assert (=> setNonEmpty!15584 (= setRes!15584 (and tp!653230 (inv!31431 setElem!15584) e!1356564))))

(declare-fun setRest!15584 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15584 (= (_2!13734 (h!29226 (minValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15584 true) setRest!15584))))

(declare-fun setIsEmpty!15584 () Bool)

(assert (=> setIsEmpty!15584 setRes!15584))

(declare-fun e!1356565 () Bool)

(assert (=> b!2127715 (= tp!653027 e!1356565)))

(declare-fun tp!653228 () Bool)

(declare-fun b!2127967 () Bool)

(assert (=> b!2127967 (= e!1356565 (and (inv!31431 (_1!13733 (_1!13734 (h!29226 (minValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))))) e!1356566 tp_is_empty!9501 setRes!15584 tp!653228))))

(declare-fun condSetEmpty!15584 () Bool)

(assert (=> b!2127967 (= condSetEmpty!15584 (= (_2!13734 (h!29226 (minValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))) ((as const (Array Context!2514 Bool)) false)))))

(assert (= b!2127967 b!2127966))

(assert (= (and b!2127967 condSetEmpty!15584) setIsEmpty!15584))

(assert (= (and b!2127967 (not condSetEmpty!15584)) setNonEmpty!15584))

(assert (= setNonEmpty!15584 b!2127965))

(assert (= (and b!2127715 ((_ is Cons!23825) (minValue!2769 (v!28362 (underlying!5217 (v!28363 (underlying!5218 (cache!2806 cacheUp!979)))))))) b!2127967))

(declare-fun m!2579396 () Bool)

(assert (=> setNonEmpty!15584 m!2579396))

(declare-fun m!2579398 () Bool)

(assert (=> b!2127967 m!2579398))

(declare-fun b!2127968 () Bool)

(declare-fun e!1356567 () Bool)

(declare-fun tp!653233 () Bool)

(assert (=> b!2127968 (= e!1356567 tp!653233)))

(declare-fun b!2127969 () Bool)

(declare-fun e!1356569 () Bool)

(declare-fun tp!653235 () Bool)

(assert (=> b!2127969 (= e!1356569 tp!653235)))

(declare-fun setRes!15585 () Bool)

(declare-fun tp!653234 () Bool)

(declare-fun setNonEmpty!15585 () Bool)

(declare-fun setElem!15585 () Context!2514)

(assert (=> setNonEmpty!15585 (= setRes!15585 (and tp!653234 (inv!31431 setElem!15585) e!1356567))))

(declare-fun setRest!15585 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15585 (= (_2!13734 (h!29226 mapDefault!12277)) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15585 true) setRest!15585))))

(declare-fun setIsEmpty!15585 () Bool)

(assert (=> setIsEmpty!15585 setRes!15585))

(declare-fun e!1356568 () Bool)

(assert (=> b!2127717 (= tp!653052 e!1356568)))

(declare-fun tp!653232 () Bool)

(declare-fun b!2127970 () Bool)

(assert (=> b!2127970 (= e!1356568 (and (inv!31431 (_1!13733 (_1!13734 (h!29226 mapDefault!12277)))) e!1356569 tp_is_empty!9501 setRes!15585 tp!653232))))

(declare-fun condSetEmpty!15585 () Bool)

(assert (=> b!2127970 (= condSetEmpty!15585 (= (_2!13734 (h!29226 mapDefault!12277)) ((as const (Array Context!2514 Bool)) false)))))

(assert (= b!2127970 b!2127969))

(assert (= (and b!2127970 condSetEmpty!15585) setIsEmpty!15585))

(assert (= (and b!2127970 (not condSetEmpty!15585)) setNonEmpty!15585))

(assert (= setNonEmpty!15585 b!2127968))

(assert (= (and b!2127717 ((_ is Cons!23825) mapDefault!12277)) b!2127970))

(declare-fun m!2579400 () Bool)

(assert (=> setNonEmpty!15585 m!2579400))

(declare-fun m!2579402 () Bool)

(assert (=> b!2127970 m!2579402))

(declare-fun setIsEmpty!15586 () Bool)

(declare-fun setRes!15586 () Bool)

(assert (=> setIsEmpty!15586 setRes!15586))

(declare-fun e!1356571 () Bool)

(declare-fun tp!653237 () Bool)

(declare-fun setElem!15586 () Context!2514)

(declare-fun setNonEmpty!15586 () Bool)

(assert (=> setNonEmpty!15586 (= setRes!15586 (and tp!653237 (inv!31431 setElem!15586) e!1356571))))

(declare-fun setRest!15586 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15586 (= (_1!13731 (_1!13732 (h!29224 mapDefault!12279))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15586 true) setRest!15586))))

(declare-fun b!2127972 () Bool)

(declare-fun tp!653238 () Bool)

(assert (=> b!2127972 (= e!1356571 tp!653238)))

(declare-fun b!2127971 () Bool)

(declare-fun e!1356570 () Bool)

(declare-fun tp!653236 () Bool)

(assert (=> b!2127971 (= e!1356570 (and setRes!15586 tp!653236))))

(declare-fun condSetEmpty!15586 () Bool)

(assert (=> b!2127971 (= condSetEmpty!15586 (= (_1!13731 (_1!13732 (h!29224 mapDefault!12279))) ((as const (Array Context!2514 Bool)) false)))))

(assert (=> b!2127737 (= tp!653051 e!1356570)))

(assert (= (and b!2127971 condSetEmpty!15586) setIsEmpty!15586))

(assert (= (and b!2127971 (not condSetEmpty!15586)) setNonEmpty!15586))

(assert (= setNonEmpty!15586 b!2127972))

(assert (= (and b!2127737 ((_ is Cons!23823) mapDefault!12279)) b!2127971))

(declare-fun m!2579404 () Bool)

(assert (=> setNonEmpty!15586 m!2579404))

(declare-fun condSetEmpty!15587 () Bool)

(assert (=> setNonEmpty!15545 (= condSetEmpty!15587 (= setRest!15545 ((as const (Array Context!2514 Bool)) false)))))

(declare-fun setRes!15587 () Bool)

(assert (=> setNonEmpty!15545 (= tp!653028 setRes!15587)))

(declare-fun setIsEmpty!15587 () Bool)

(assert (=> setIsEmpty!15587 setRes!15587))

(declare-fun tp!653239 () Bool)

(declare-fun setElem!15587 () Context!2514)

(declare-fun e!1356572 () Bool)

(declare-fun setNonEmpty!15587 () Bool)

(assert (=> setNonEmpty!15587 (= setRes!15587 (and tp!653239 (inv!31431 setElem!15587) e!1356572))))

(declare-fun setRest!15587 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15587 (= setRest!15545 ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15587 true) setRest!15587))))

(declare-fun b!2127973 () Bool)

(declare-fun tp!653240 () Bool)

(assert (=> b!2127973 (= e!1356572 tp!653240)))

(assert (= (and setNonEmpty!15545 condSetEmpty!15587) setIsEmpty!15587))

(assert (= (and setNonEmpty!15545 (not condSetEmpty!15587)) setNonEmpty!15587))

(assert (= setNonEmpty!15587 b!2127973))

(declare-fun m!2579406 () Bool)

(assert (=> setNonEmpty!15587 m!2579406))

(declare-fun setIsEmpty!15588 () Bool)

(declare-fun setRes!15588 () Bool)

(assert (=> setIsEmpty!15588 setRes!15588))

(declare-fun setNonEmpty!15588 () Bool)

(declare-fun e!1356574 () Bool)

(declare-fun tp!653242 () Bool)

(declare-fun setElem!15588 () Context!2514)

(assert (=> setNonEmpty!15588 (= setRes!15588 (and tp!653242 (inv!31431 setElem!15588) e!1356574))))

(declare-fun setRest!15588 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15588 (= (_1!13731 (_1!13732 (h!29224 (zeroValue!2768 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15588 true) setRest!15588))))

(declare-fun b!2127975 () Bool)

(declare-fun tp!653243 () Bool)

(assert (=> b!2127975 (= e!1356574 tp!653243)))

(declare-fun b!2127974 () Bool)

(declare-fun e!1356573 () Bool)

(declare-fun tp!653241 () Bool)

(assert (=> b!2127974 (= e!1356573 (and setRes!15588 tp!653241))))

(declare-fun condSetEmpty!15588 () Bool)

(assert (=> b!2127974 (= condSetEmpty!15588 (= (_1!13731 (_1!13732 (h!29224 (zeroValue!2768 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))))) ((as const (Array Context!2514 Bool)) false)))))

(assert (=> b!2127746 (= tp!653032 e!1356573)))

(assert (= (and b!2127974 condSetEmpty!15588) setIsEmpty!15588))

(assert (= (and b!2127974 (not condSetEmpty!15588)) setNonEmpty!15588))

(assert (= setNonEmpty!15588 b!2127975))

(assert (= (and b!2127746 ((_ is Cons!23823) (zeroValue!2768 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114)))))))) b!2127974))

(declare-fun m!2579408 () Bool)

(assert (=> setNonEmpty!15588 m!2579408))

(declare-fun setIsEmpty!15589 () Bool)

(declare-fun setRes!15589 () Bool)

(assert (=> setIsEmpty!15589 setRes!15589))

(declare-fun setElem!15589 () Context!2514)

(declare-fun setNonEmpty!15589 () Bool)

(declare-fun e!1356576 () Bool)

(declare-fun tp!653245 () Bool)

(assert (=> setNonEmpty!15589 (= setRes!15589 (and tp!653245 (inv!31431 setElem!15589) e!1356576))))

(declare-fun setRest!15589 () (InoxSet Context!2514))

(assert (=> setNonEmpty!15589 (= (_1!13731 (_1!13732 (h!29224 (minValue!2768 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2514 Bool)) false) setElem!15589 true) setRest!15589))))

(declare-fun b!2127977 () Bool)

(declare-fun tp!653246 () Bool)

(assert (=> b!2127977 (= e!1356576 tp!653246)))

(declare-fun b!2127976 () Bool)

(declare-fun e!1356575 () Bool)

(declare-fun tp!653244 () Bool)

(assert (=> b!2127976 (= e!1356575 (and setRes!15589 tp!653244))))

(declare-fun condSetEmpty!15589 () Bool)

(assert (=> b!2127976 (= condSetEmpty!15589 (= (_1!13731 (_1!13732 (h!29224 (minValue!2768 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114))))))))) ((as const (Array Context!2514 Bool)) false)))))

(assert (=> b!2127746 (= tp!653029 e!1356575)))

(assert (= (and b!2127976 condSetEmpty!15589) setIsEmpty!15589))

(assert (= (and b!2127976 (not condSetEmpty!15589)) setNonEmpty!15589))

(assert (= setNonEmpty!15589 b!2127977))

(assert (= (and b!2127746 ((_ is Cons!23823) (minValue!2768 (v!28360 (underlying!5215 (v!28361 (underlying!5216 (cache!2805 cacheFurthestNullable!114)))))))) b!2127976))

(declare-fun m!2579410 () Bool)

(assert (=> setNonEmpty!15589 m!2579410))

(declare-fun b!2127978 () Bool)

(declare-fun e!1356577 () Bool)

(declare-fun tp!653247 () Bool)

(declare-fun tp!653248 () Bool)

(assert (=> b!2127978 (= e!1356577 (and tp!653247 tp!653248))))

(assert (=> b!2127728 (= tp!653037 e!1356577)))

(assert (= (and b!2127728 ((_ is Cons!23822) (exprs!1757 setElem!15546))) b!2127978))

(declare-fun b_lambda!70569 () Bool)

(assert (= b_lambda!70565 (or b!2127723 b_lambda!70569)))

(declare-fun bs!444195 () Bool)

(declare-fun d!644299 () Bool)

(assert (= bs!444195 (and d!644299 b!2127723)))

(assert (=> bs!444195 (= (dynLambda!11365 lambda!78950 (h!29227 stack!8)) (= (res!920268 (h!29227 stack!8)) lt!796034))))

(assert (=> b!2127776 d!644299))

(declare-fun b_lambda!70571 () Bool)

(assert (= b_lambda!70567 (or b!2127731 b_lambda!70571)))

(declare-fun bs!444196 () Bool)

(declare-fun d!644301 () Bool)

(assert (= bs!444196 (and d!644301 b!2127731)))

(assert (=> bs!444196 (= (dynLambda!11365 lambda!78951 (h!29227 stack!8)) (= (totalInput!2953 (h!29227 stack!8)) totalInput!851))))

(assert (=> b!2127778 d!644301))

(check-sat (not d!644291) (not d!644279) (not b!2127917) (not b!2127929) (not b!2127769) (not setNonEmpty!15562) (not b!2127958) (not b!2127978) (not d!644285) (not b!2127782) (not b!2127968) (not b!2127905) (not b!2127768) (not setNonEmpty!15582) (not b!2127916) (not b!2127965) (not b!2127960) (not b!2127954) (not b!2127964) (not b!2127962) (not setNonEmpty!15568) (not b!2127791) (not b!2127789) (not b!2127930) (not b!2127876) (not b!2127872) (not b!2127823) (not setNonEmpty!15567) (not b!2127957) (not b!2127970) (not b!2127977) (not b!2127843) (not setNonEmpty!15580) (not b!2127855) (not b!2127812) (not b!2127877) (not b!2127976) (not b!2127852) (not b!2127961) (not mapNonEmpty!12288) (not b!2127950) (not setNonEmpty!15575) (not b!2127809) (not b!2127857) (not b!2127959) (not b!2127810) (not b!2127931) (not b!2127785) (not b!2127893) (not b_next!62607) (not mapNonEmpty!12285) (not b!2127915) (not b!2127761) (not setNonEmpty!15586) (not b!2127856) (not b!2127969) (not b_next!62611) (not setNonEmpty!15583) (not b!2127841) (not b_next!62615) (not setNonEmpty!15587) (not b!2127973) b_and!171487 (not b!2127804) (not d!644281) (not b!2127932) (not b!2127934) (not d!644245) (not b!2127873) (not b!2127918) (not b_next!62613) (not b!2127966) (not b!2127906) b_and!171481 (not setNonEmpty!15559) (not b!2127935) (not d!644289) (not b!2127887) (not b_next!62605) (not b!2127904) (not b!2127888) (not setNonEmpty!15549) (not b!2127729) (not setNonEmpty!15558) (not b!2127788) (not b!2127807) (not setNonEmpty!15571) (not b!2127963) (not setNonEmpty!15552) (not setNonEmpty!15588) (not setNonEmpty!15581) (not b!2127907) (not b!2127974) (not b!2127832) (not b!2127975) (not b!2127777) (not b!2127763) (not b!2127742) (not b_lambda!70569) (not setNonEmpty!15553) (not b!2127825) (not b!2127853) (not b!2127956) (not b!2127955) (not b!2127808) (not b!2127719) (not b!2127874) (not setNonEmpty!15574) (not setNonEmpty!15589) b_and!171491 (not mapNonEmpty!12282) (not b!2127854) (not b_next!62609) (not setNonEmpty!15585) b_and!171483 (not b!2127952) b_and!171489 (not d!644267) (not b!2127886) (not b!2127951) (not d!644283) b_and!171485 (not d!644251) (not b_lambda!70571) (not b!2127967) (not d!644287) tp_is_empty!9501 (not b!2127953) (not b!2127933) (not setNonEmpty!15584) (not b!2127875) (not b!2127972) (not b!2127779) (not b!2127971) (not b!2127842) (not d!644247) (not b!2127914))
(check-sat (not b_next!62607) (not b_next!62611) (not b_next!62605) b_and!171485 (not b_next!62615) b_and!171487 (not b_next!62613) b_and!171481 (not b_next!62609) b_and!171483 b_and!171489 b_and!171491)
