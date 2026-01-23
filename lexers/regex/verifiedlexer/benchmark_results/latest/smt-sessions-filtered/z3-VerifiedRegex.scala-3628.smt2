; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207552 () Bool)

(assert start!207552)

(declare-fun b!2132516 () Bool)

(declare-fun b_free!62333 () Bool)

(declare-fun b_next!63037 () Bool)

(assert (=> b!2132516 (= b_free!62333 (not b_next!63037))))

(declare-fun tp!656378 () Bool)

(declare-fun b_and!171913 () Bool)

(assert (=> b!2132516 (= tp!656378 b_and!171913)))

(declare-fun b!2132522 () Bool)

(declare-fun b_free!62335 () Bool)

(declare-fun b_next!63039 () Bool)

(assert (=> b!2132522 (= b_free!62335 (not b_next!63039))))

(declare-fun tp!656355 () Bool)

(declare-fun b_and!171915 () Bool)

(assert (=> b!2132522 (= tp!656355 b_and!171915)))

(declare-fun b!2132524 () Bool)

(declare-fun b_free!62337 () Bool)

(declare-fun b_next!63041 () Bool)

(assert (=> b!2132524 (= b_free!62337 (not b_next!63041))))

(declare-fun tp!656366 () Bool)

(declare-fun b_and!171917 () Bool)

(assert (=> b!2132524 (= tp!656366 b_and!171917)))

(declare-fun b!2132517 () Bool)

(declare-fun b_free!62339 () Bool)

(declare-fun b_next!63043 () Bool)

(assert (=> b!2132517 (= b_free!62339 (not b_next!63043))))

(declare-fun tp!656377 () Bool)

(declare-fun b_and!171919 () Bool)

(assert (=> b!2132517 (= tp!656377 b_and!171919)))

(declare-fun b!2132547 () Bool)

(declare-fun b_free!62341 () Bool)

(declare-fun b_next!63045 () Bool)

(assert (=> b!2132547 (= b_free!62341 (not b_next!63045))))

(declare-fun tp!656363 () Bool)

(declare-fun b_and!171921 () Bool)

(assert (=> b!2132547 (= tp!656363 b_and!171921)))

(declare-fun b!2132520 () Bool)

(declare-fun b_free!62343 () Bool)

(declare-fun b_next!63047 () Bool)

(assert (=> b!2132520 (= b_free!62343 (not b_next!63047))))

(declare-fun tp!656365 () Bool)

(declare-fun b_and!171923 () Bool)

(assert (=> b!2132520 (= tp!656365 b_and!171923)))

(declare-fun b!2132531 () Bool)

(assert (=> b!2132531 true))

(declare-fun bs!444272 () Bool)

(declare-fun b!2132535 () Bool)

(assert (= bs!444272 (and b!2132535 b!2132531)))

(declare-fun lambda!79275 () Int)

(declare-fun lambda!79274 () Int)

(assert (=> bs!444272 (not (= lambda!79275 lambda!79274))))

(assert (=> b!2132535 true))

(declare-fun b!2132510 () Bool)

(declare-fun e!1360511 () Bool)

(declare-fun tp!656362 () Bool)

(assert (=> b!2132510 (= e!1360511 tp!656362)))

(declare-fun b!2132512 () Bool)

(declare-fun e!1360524 () Bool)

(declare-datatypes ((C!11592 0))(
  ( (C!11593 (val!6782 Int)) )
))
(declare-datatypes ((Regex!5723 0))(
  ( (ElementMatch!5723 (c!340231 C!11592)) (Concat!10025 (regOne!11958 Regex!5723) (regTwo!11958 Regex!5723)) (EmptyExpr!5723) (Star!5723 (reg!6052 Regex!5723)) (EmptyLang!5723) (Union!5723 (regOne!11959 Regex!5723) (regTwo!11959 Regex!5723)) )
))
(declare-datatypes ((List!24114 0))(
  ( (Nil!24030) (Cons!24030 (h!29431 Regex!5723) (t!196642 List!24114)) )
))
(declare-datatypes ((Context!2586 0))(
  ( (Context!2587 (exprs!1793 List!24114)) )
))
(declare-datatypes ((List!24115 0))(
  ( (Nil!24031) (Cons!24031 (h!29432 C!11592) (t!196643 List!24115)) )
))
(declare-datatypes ((IArray!15727 0))(
  ( (IArray!15728 (innerList!7921 List!24115)) )
))
(declare-datatypes ((Conc!7861 0))(
  ( (Node!7861 (left!18527 Conc!7861) (right!18857 Conc!7861) (csize!15952 Int) (cheight!8072 Int)) (Leaf!11490 (xs!10803 IArray!15727) (csize!15953 Int)) (Empty!7861) )
))
(declare-datatypes ((BalanceConc!15484 0))(
  ( (BalanceConc!15485 (c!340232 Conc!7861)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!140 0))(
  ( (StackFrame!141 (z!5798 (InoxSet Context!2586)) (from!2684 Int) (lastNullablePos!371 Int) (res!921713 Int) (totalInput!3023 BalanceConc!15484)) )
))
(declare-datatypes ((List!24116 0))(
  ( (Nil!24032) (Cons!24032 (h!29433 StackFrame!140) (t!196644 List!24116)) )
))
(declare-fun stack!8 () List!24116)

(declare-fun tp!656375 () Bool)

(declare-fun inv!31676 (Conc!7861) Bool)

(assert (=> b!2132512 (= e!1360524 (and (inv!31676 (c!340232 (totalInput!3023 (h!29433 stack!8)))) tp!656375))))

(declare-fun b!2132513 () Bool)

(declare-fun e!1360529 () Bool)

(declare-fun e!1360534 () Bool)

(assert (=> b!2132513 (= e!1360529 e!1360534)))

(declare-fun b!2132514 () Bool)

(declare-fun res!921701 () Bool)

(declare-fun e!1360522 () Bool)

(assert (=> b!2132514 (=> (not res!921701) (not e!1360522))))

(declare-datatypes ((tuple3!3166 0))(
  ( (tuple3!3167 (_1!13943 (InoxSet Context!2586)) (_2!13943 Int) (_3!2053 Int)) )
))
(declare-datatypes ((tuple2!23780 0))(
  ( (tuple2!23781 (_1!13944 tuple3!3166) (_2!13944 Int)) )
))
(declare-datatypes ((List!24117 0))(
  ( (Nil!24033) (Cons!24033 (h!29434 tuple2!23780) (t!196645 List!24117)) )
))
(declare-datatypes ((array!8889 0))(
  ( (array!8890 (arr!3956 (Array (_ BitVec 32) (_ BitVec 64))) (size!18796 (_ BitVec 32))) )
))
(declare-datatypes ((array!8891 0))(
  ( (array!8892 (arr!3957 (Array (_ BitVec 32) List!24117)) (size!18797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5224 0))(
  ( (LongMapFixedSize!5225 (defaultEntry!2977 Int) (mask!6789 (_ BitVec 32)) (extraKeys!2860 (_ BitVec 32)) (zeroValue!2870 List!24117) (minValue!2870 List!24117) (_size!5275 (_ BitVec 32)) (_keys!2909 array!8889) (_values!2892 array!8891) (_vacant!2673 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10273 0))(
  ( (Cell!10274 (v!28587 LongMapFixedSize!5224)) )
))
(declare-datatypes ((MutLongMap!2612 0))(
  ( (LongMap!2612 (underlying!5419 Cell!10273)) (MutLongMapExt!2611 (__x!16012 Int)) )
))
(declare-datatypes ((Cell!10275 0))(
  ( (Cell!10276 (v!28588 MutLongMap!2612)) )
))
(declare-datatypes ((Hashable!2526 0))(
  ( (HashableExt!2525 (__x!16013 Int)) )
))
(declare-datatypes ((MutableMap!2526 0))(
  ( (MutableMapExt!2525 (__x!16014 Int)) (HashMap!2526 (underlying!5420 Cell!10275) (hashF!4449 Hashable!2526) (_size!5276 (_ BitVec 32)) (defaultValue!2688 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!692 0))(
  ( (CacheFurthestNullable!693 (cache!2907 MutableMap!2526) (totalInput!3024 BalanceConc!15484)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!692)

(declare-fun totalInput!851 () BalanceConc!15484)

(assert (=> b!2132514 (= res!921701 (= (totalInput!3024 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2132515 () Bool)

(declare-fun res!921708 () Bool)

(declare-fun e!1360526 () Bool)

(assert (=> b!2132515 (=> res!921708 e!1360526)))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2132515 (= res!921708 (= from!1043 totalInputSize!296))))

(declare-fun e!1360500 () Bool)

(declare-fun e!1360518 () Bool)

(assert (=> b!2132516 (= e!1360500 (and e!1360518 tp!656378))))

(declare-fun e!1360512 () Bool)

(declare-fun e!1360515 () Bool)

(assert (=> b!2132517 (= e!1360512 (and e!1360515 tp!656377))))

(declare-fun b!2132518 () Bool)

(declare-fun e!1360509 () Bool)

(declare-fun e!1360508 () Bool)

(assert (=> b!2132518 (= e!1360509 e!1360508)))

(declare-fun mapNonEmpty!12610 () Bool)

(declare-fun mapRes!12611 () Bool)

(declare-fun tp!656372 () Bool)

(declare-fun tp!656376 () Bool)

(assert (=> mapNonEmpty!12610 (= mapRes!12611 (and tp!656372 tp!656376))))

(declare-datatypes ((tuple3!3168 0))(
  ( (tuple3!3169 (_1!13945 Regex!5723) (_2!13945 Context!2586) (_3!2054 C!11592)) )
))
(declare-datatypes ((tuple2!23782 0))(
  ( (tuple2!23783 (_1!13946 tuple3!3168) (_2!13946 (InoxSet Context!2586))) )
))
(declare-datatypes ((List!24118 0))(
  ( (Nil!24034) (Cons!24034 (h!29435 tuple2!23782) (t!196646 List!24118)) )
))
(declare-fun mapRest!12610 () (Array (_ BitVec 32) List!24118))

(declare-fun mapKey!12611 () (_ BitVec 32))

(declare-datatypes ((Hashable!2527 0))(
  ( (HashableExt!2526 (__x!16015 Int)) )
))
(declare-datatypes ((array!8893 0))(
  ( (array!8894 (arr!3958 (Array (_ BitVec 32) List!24118)) (size!18798 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5226 0))(
  ( (LongMapFixedSize!5227 (defaultEntry!2978 Int) (mask!6790 (_ BitVec 32)) (extraKeys!2861 (_ BitVec 32)) (zeroValue!2871 List!24118) (minValue!2871 List!24118) (_size!5277 (_ BitVec 32)) (_keys!2910 array!8889) (_values!2893 array!8893) (_vacant!2674 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10277 0))(
  ( (Cell!10278 (v!28589 LongMapFixedSize!5226)) )
))
(declare-datatypes ((MutLongMap!2613 0))(
  ( (LongMap!2613 (underlying!5421 Cell!10277)) (MutLongMapExt!2612 (__x!16016 Int)) )
))
(declare-datatypes ((Cell!10279 0))(
  ( (Cell!10280 (v!28590 MutLongMap!2613)) )
))
(declare-datatypes ((MutableMap!2527 0))(
  ( (MutableMapExt!2526 (__x!16017 Int)) (HashMap!2527 (underlying!5422 Cell!10279) (hashF!4450 Hashable!2527) (_size!5278 (_ BitVec 32)) (defaultValue!2689 Int)) )
))
(declare-datatypes ((CacheDown!1734 0))(
  ( (CacheDown!1735 (cache!2908 MutableMap!2527)) )
))
(declare-fun cacheDown!1098 () CacheDown!1734)

(declare-fun mapValue!12610 () List!24118)

(assert (=> mapNonEmpty!12610 (= (arr!3958 (_values!2893 (v!28589 (underlying!5421 (v!28590 (underlying!5422 (cache!2908 cacheDown!1098))))))) (store mapRest!12610 mapKey!12611 mapValue!12610))))

(declare-fun b!2132519 () Bool)

(declare-fun res!921709 () Bool)

(assert (=> b!2132519 (=> res!921709 e!1360526)))

(declare-fun z!3839 () (InoxSet Context!2586))

(declare-fun lostCauseZipper!79 ((InoxSet Context!2586)) Bool)

(assert (=> b!2132519 (= res!921709 (lostCauseZipper!79 z!3839))))

(declare-fun e!1360531 () Bool)

(declare-fun e!1360504 () Bool)

(declare-fun tp!656364 () Bool)

(declare-fun tp!656361 () Bool)

(declare-fun array_inv!2828 (array!8889) Bool)

(declare-fun array_inv!2829 (array!8893) Bool)

(assert (=> b!2132520 (= e!1360531 (and tp!656365 tp!656361 tp!656364 (array_inv!2828 (_keys!2910 (v!28589 (underlying!5421 (v!28590 (underlying!5422 (cache!2908 cacheDown!1098))))))) (array_inv!2829 (_values!2893 (v!28589 (underlying!5421 (v!28590 (underlying!5422 (cache!2908 cacheDown!1098))))))) e!1360504))))

(declare-fun b!2132521 () Bool)

(declare-fun e!1360533 () Bool)

(declare-fun lt!796685 () MutLongMap!2612)

(get-info :version)

(assert (=> b!2132521 (= e!1360518 (and e!1360533 ((_ is LongMap!2612) lt!796685)))))

(assert (=> b!2132521 (= lt!796685 (v!28588 (underlying!5420 (cache!2907 cacheFurthestNullable!114))))))

(declare-fun tp!656370 () Bool)

(declare-fun tp!656358 () Bool)

(declare-fun e!1360517 () Bool)

(declare-fun array_inv!2830 (array!8891) Bool)

(assert (=> b!2132522 (= e!1360508 (and tp!656355 tp!656370 tp!656358 (array_inv!2828 (_keys!2909 (v!28587 (underlying!5419 (v!28588 (underlying!5420 (cache!2907 cacheFurthestNullable!114))))))) (array_inv!2830 (_values!2892 (v!28587 (underlying!5419 (v!28588 (underlying!5420 (cache!2907 cacheFurthestNullable!114))))))) e!1360517))))

(declare-fun b!2132523 () Bool)

(declare-fun e!1360532 () Bool)

(declare-datatypes ((tuple2!23784 0))(
  ( (tuple2!23785 (_1!13947 Context!2586) (_2!13947 C!11592)) )
))
(declare-datatypes ((tuple2!23786 0))(
  ( (tuple2!23787 (_1!13948 tuple2!23784) (_2!13948 (InoxSet Context!2586))) )
))
(declare-datatypes ((List!24119 0))(
  ( (Nil!24035) (Cons!24035 (h!29436 tuple2!23786) (t!196647 List!24119)) )
))
(declare-datatypes ((array!8895 0))(
  ( (array!8896 (arr!3959 (Array (_ BitVec 32) List!24119)) (size!18799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5228 0))(
  ( (LongMapFixedSize!5229 (defaultEntry!2979 Int) (mask!6791 (_ BitVec 32)) (extraKeys!2862 (_ BitVec 32)) (zeroValue!2872 List!24119) (minValue!2872 List!24119) (_size!5279 (_ BitVec 32)) (_keys!2911 array!8889) (_values!2894 array!8895) (_vacant!2675 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10281 0))(
  ( (Cell!10282 (v!28591 LongMapFixedSize!5228)) )
))
(declare-datatypes ((MutLongMap!2614 0))(
  ( (LongMap!2614 (underlying!5423 Cell!10281)) (MutLongMapExt!2613 (__x!16018 Int)) )
))
(declare-fun lt!796686 () MutLongMap!2614)

(assert (=> b!2132523 (= e!1360515 (and e!1360532 ((_ is LongMap!2614) lt!796686)))))

(declare-datatypes ((Cell!10283 0))(
  ( (Cell!10284 (v!28592 MutLongMap!2614)) )
))
(declare-datatypes ((Hashable!2528 0))(
  ( (HashableExt!2527 (__x!16019 Int)) )
))
(declare-datatypes ((MutableMap!2528 0))(
  ( (MutableMapExt!2527 (__x!16020 Int)) (HashMap!2528 (underlying!5424 Cell!10283) (hashF!4451 Hashable!2528) (_size!5280 (_ BitVec 32)) (defaultValue!2690 Int)) )
))
(declare-datatypes ((CacheUp!1750 0))(
  ( (CacheUp!1751 (cache!2909 MutableMap!2528)) )
))
(declare-fun cacheUp!979 () CacheUp!1750)

(assert (=> b!2132523 (= lt!796686 (v!28592 (underlying!5424 (cache!2909 cacheUp!979))))))

(declare-fun setIsEmpty!15804 () Bool)

(declare-fun setRes!15805 () Bool)

(assert (=> setIsEmpty!15804 setRes!15805))

(declare-fun res!921705 () Bool)

(declare-fun e!1360514 () Bool)

(assert (=> start!207552 (=> (not res!921705) (not e!1360514))))

(assert (=> start!207552 (= res!921705 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207552 e!1360514))

(declare-fun e!1360513 () Bool)

(declare-fun inv!31677 (CacheFurthestNullable!692) Bool)

(assert (=> start!207552 (and (inv!31677 cacheFurthestNullable!114) e!1360513)))

(assert (=> start!207552 true))

(declare-fun inv!31678 (CacheDown!1734) Bool)

(assert (=> start!207552 (and (inv!31678 cacheDown!1098) e!1360529)))

(declare-fun e!1360536 () Bool)

(declare-fun inv!31679 (CacheUp!1750) Bool)

(assert (=> start!207552 (and (inv!31679 cacheUp!979) e!1360536)))

(declare-fun condSetEmpty!15804 () Bool)

(assert (=> start!207552 (= condSetEmpty!15804 (= z!3839 ((as const (Array Context!2586 Bool)) false)))))

(assert (=> start!207552 setRes!15805))

(declare-fun e!1360521 () Bool)

(declare-fun inv!31680 (BalanceConc!15484) Bool)

(assert (=> start!207552 (and (inv!31680 totalInput!851) e!1360521)))

(declare-fun e!1360520 () Bool)

(assert (=> start!207552 e!1360520))

(declare-fun b!2132511 () Bool)

(declare-fun tp!656353 () Bool)

(assert (=> b!2132511 (= e!1360521 (and (inv!31676 (c!340232 totalInput!851)) tp!656353))))

(declare-fun e!1360525 () Bool)

(assert (=> b!2132524 (= e!1360534 (and e!1360525 tp!656366))))

(declare-fun e!1360527 () Bool)

(declare-fun setRes!15804 () Bool)

(declare-fun b!2132525 () Bool)

(assert (=> b!2132525 (= e!1360527 (and setRes!15804 (inv!31680 (totalInput!3023 (h!29433 stack!8))) e!1360524))))

(declare-fun condSetEmpty!15805 () Bool)

(assert (=> b!2132525 (= condSetEmpty!15805 (= (z!5798 (h!29433 stack!8)) ((as const (Array Context!2586 Bool)) false)))))

(declare-fun b!2132526 () Bool)

(declare-fun e!1360523 () Bool)

(declare-fun e!1360530 () Bool)

(assert (=> b!2132526 (= e!1360523 e!1360530)))

(declare-fun b!2132527 () Bool)

(declare-fun tp!656354 () Bool)

(declare-fun mapRes!12612 () Bool)

(assert (=> b!2132527 (= e!1360517 (and tp!656354 mapRes!12612))))

(declare-fun condMapEmpty!12610 () Bool)

(declare-fun mapDefault!12610 () List!24117)

(assert (=> b!2132527 (= condMapEmpty!12610 (= (arr!3957 (_values!2892 (v!28587 (underlying!5419 (v!28588 (underlying!5420 (cache!2907 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24117)) mapDefault!12610)))))

(declare-fun setIsEmpty!15805 () Bool)

(assert (=> setIsEmpty!15805 setRes!15804))

(declare-fun b!2132528 () Bool)

(assert (=> b!2132528 (= e!1360536 e!1360512)))

(declare-fun b!2132529 () Bool)

(declare-fun res!921712 () Bool)

(assert (=> b!2132529 (=> (not res!921712) (not e!1360522))))

(declare-fun valid!2048 (CacheDown!1734) Bool)

(assert (=> b!2132529 (= res!921712 (valid!2048 cacheDown!1098))))

(declare-fun mapIsEmpty!12610 () Bool)

(assert (=> mapIsEmpty!12610 mapRes!12612))

(declare-fun b!2132530 () Bool)

(assert (=> b!2132530 (= e!1360533 e!1360509)))

(declare-fun e!1360516 () Bool)

(assert (=> b!2132531 (= e!1360522 e!1360516)))

(declare-fun res!921710 () Bool)

(assert (=> b!2132531 (=> (not res!921710) (not e!1360516))))

(declare-fun forall!4916 (List!24116 Int) Bool)

(assert (=> b!2132531 (= res!921710 (forall!4916 stack!8 lambda!79274))))

(declare-fun lt!796688 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796690 () Int)

(declare-fun furthestNullablePosition!40 ((InoxSet Context!2586) Int BalanceConc!15484 Int Int) Int)

(assert (=> b!2132531 (= lt!796690 (furthestNullablePosition!40 z!3839 from!1043 totalInput!851 lt!796688 lastNullablePos!123))))

(declare-fun b!2132532 () Bool)

(declare-fun e!1360528 () Int)

(assert (=> b!2132532 (= e!1360528 from!1043)))

(declare-fun b!2132533 () Bool)

(declare-fun e!1360501 () Bool)

(assert (=> b!2132533 (= e!1360501 e!1360522)))

(declare-fun res!921702 () Bool)

(assert (=> b!2132533 (=> (not res!921702) (not e!1360522))))

(declare-fun lt!796687 () Bool)

(assert (=> b!2132533 (= res!921702 lt!796687)))

(declare-fun e!1360507 () Bool)

(assert (=> b!2132533 (= lt!796687 e!1360507)))

(declare-fun res!921711 () Bool)

(assert (=> b!2132533 (=> res!921711 e!1360507)))

(declare-fun nullableZipper!106 ((InoxSet Context!2586)) Bool)

(assert (=> b!2132533 (= res!921711 (not (nullableZipper!106 z!3839)))))

(declare-fun b!2132534 () Bool)

(declare-fun res!921700 () Bool)

(assert (=> b!2132534 (=> (not res!921700) (not e!1360522))))

(declare-fun valid!2049 (CacheFurthestNullable!692) Bool)

(assert (=> b!2132534 (= res!921700 (valid!2049 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!12611 () Bool)

(declare-fun mapRes!12610 () Bool)

(declare-fun tp!656374 () Bool)

(declare-fun tp!656368 () Bool)

(assert (=> mapNonEmpty!12611 (= mapRes!12610 (and tp!656374 tp!656368))))

(declare-fun mapKey!12612 () (_ BitVec 32))

(declare-fun mapValue!12611 () List!24119)

(declare-fun mapRest!12612 () (Array (_ BitVec 32) List!24119))

(assert (=> mapNonEmpty!12611 (= (arr!3959 (_values!2894 (v!28591 (underlying!5423 (v!28592 (underlying!5424 (cache!2909 cacheUp!979))))))) (store mapRest!12612 mapKey!12612 mapValue!12611))))

(declare-fun tp!656352 () Bool)

(declare-fun setNonEmpty!15804 () Bool)

(declare-fun setElem!15804 () Context!2586)

(declare-fun inv!31681 (Context!2586) Bool)

(assert (=> setNonEmpty!15804 (= setRes!15804 (and tp!656352 (inv!31681 setElem!15804) e!1360511))))

(declare-fun setRest!15804 () (InoxSet Context!2586))

(assert (=> setNonEmpty!15804 (= (z!5798 (h!29433 stack!8)) ((_ map or) (store ((as const (Array Context!2586 Bool)) false) setElem!15804 true) setRest!15804))))

(declare-fun res!921707 () Bool)

(assert (=> b!2132535 (=> (not res!921707) (not e!1360516))))

(assert (=> b!2132535 (= res!921707 (forall!4916 stack!8 lambda!79275))))

(declare-fun b!2132536 () Bool)

(declare-fun e!1360535 () Bool)

(declare-fun tp!656369 () Bool)

(assert (=> b!2132536 (= e!1360535 (and tp!656369 mapRes!12610))))

(declare-fun condMapEmpty!12611 () Bool)

(declare-fun mapDefault!12611 () List!24119)

(assert (=> b!2132536 (= condMapEmpty!12611 (= (arr!3959 (_values!2894 (v!28591 (underlying!5423 (v!28592 (underlying!5424 (cache!2909 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24119)) mapDefault!12611)))))

(declare-fun e!1360506 () Bool)

(declare-fun tp!656357 () Bool)

(declare-fun setElem!15805 () Context!2586)

(declare-fun setNonEmpty!15805 () Bool)

(assert (=> setNonEmpty!15805 (= setRes!15805 (and tp!656357 (inv!31681 setElem!15805) e!1360506))))

(declare-fun setRest!15805 () (InoxSet Context!2586))

(assert (=> setNonEmpty!15805 (= z!3839 ((_ map or) (store ((as const (Array Context!2586 Bool)) false) setElem!15805 true) setRest!15805))))

(declare-fun b!2132537 () Bool)

(assert (=> b!2132537 (= e!1360514 e!1360501)))

(declare-fun res!921703 () Bool)

(assert (=> b!2132537 (=> (not res!921703) (not e!1360501))))

(assert (=> b!2132537 (= res!921703 (and (= totalInputSize!296 lt!796688) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18800 (BalanceConc!15484) Int)

(assert (=> b!2132537 (= lt!796688 (size!18800 totalInput!851))))

(declare-fun mapIsEmpty!12611 () Bool)

(assert (=> mapIsEmpty!12611 mapRes!12610))

(declare-fun b!2132538 () Bool)

(declare-fun tp!656371 () Bool)

(assert (=> b!2132538 (= e!1360504 (and tp!656371 mapRes!12611))))

(declare-fun condMapEmpty!12612 () Bool)

(declare-fun mapDefault!12612 () List!24118)

(assert (=> b!2132538 (= condMapEmpty!12612 (= (arr!3958 (_values!2893 (v!28589 (underlying!5421 (v!28590 (underlying!5422 (cache!2908 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24118)) mapDefault!12612)))))

(declare-fun b!2132539 () Bool)

(declare-fun e!1360502 () Bool)

(declare-fun tp!656367 () Bool)

(assert (=> b!2132539 (= e!1360502 (and (inv!31676 (c!340232 (totalInput!3024 cacheFurthestNullable!114))) tp!656367))))

(declare-fun b!2132540 () Bool)

(assert (=> b!2132540 (= e!1360532 e!1360523)))

(declare-fun mapIsEmpty!12612 () Bool)

(assert (=> mapIsEmpty!12612 mapRes!12611))

(declare-fun b!2132541 () Bool)

(declare-fun e!1360510 () Bool)

(declare-fun lt!796692 () MutLongMap!2613)

(assert (=> b!2132541 (= e!1360525 (and e!1360510 ((_ is LongMap!2613) lt!796692)))))

(assert (=> b!2132541 (= lt!796692 (v!28590 (underlying!5422 (cache!2908 cacheDown!1098))))))

(declare-fun b!2132542 () Bool)

(assert (=> b!2132542 (= e!1360528 lastNullablePos!123)))

(declare-fun b!2132543 () Bool)

(declare-fun res!921704 () Bool)

(assert (=> b!2132543 (=> (not res!921704) (not e!1360522))))

(declare-fun valid!2050 (CacheUp!1750) Bool)

(assert (=> b!2132543 (= res!921704 (valid!2050 cacheUp!979))))

(declare-fun b!2132544 () Bool)

(declare-fun e!1360503 () Bool)

(assert (=> b!2132544 (= e!1360510 e!1360503)))

(declare-fun b!2132545 () Bool)

(assert (=> b!2132545 (= e!1360507 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2132546 () Bool)

(assert (=> b!2132546 (= e!1360526 (or (> from!1043 lt!796688) lt!796687))))

(declare-datatypes ((tuple3!3170 0))(
  ( (tuple3!3171 (_1!13949 (InoxSet Context!2586)) (_2!13949 CacheUp!1750) (_3!2055 CacheDown!1734)) )
))
(declare-fun lt!796691 () tuple3!3170)

(declare-fun lt!796689 () Int)

(assert (=> b!2132546 (= lt!796689 (furthestNullablePosition!40 (_1!13949 lt!796691) (+ 1 from!1043) totalInput!851 lt!796688 e!1360528))))

(declare-fun c!340230 () Bool)

(assert (=> b!2132546 (= c!340230 (nullableZipper!106 (_1!13949 lt!796691)))))

(declare-fun derivationStepZipperMem!30 ((InoxSet Context!2586) C!11592 CacheUp!1750 CacheDown!1734) tuple3!3170)

(declare-fun apply!5929 (BalanceConc!15484 Int) C!11592)

(assert (=> b!2132546 (= lt!796691 (derivationStepZipperMem!30 z!3839 (apply!5929 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun tp!656356 () Bool)

(declare-fun tp!656359 () Bool)

(declare-fun array_inv!2831 (array!8895) Bool)

(assert (=> b!2132547 (= e!1360530 (and tp!656363 tp!656356 tp!656359 (array_inv!2828 (_keys!2911 (v!28591 (underlying!5423 (v!28592 (underlying!5424 (cache!2909 cacheUp!979))))))) (array_inv!2831 (_values!2894 (v!28591 (underlying!5423 (v!28592 (underlying!5424 (cache!2909 cacheUp!979))))))) e!1360535))))

(declare-fun b!2132548 () Bool)

(declare-fun tp!656379 () Bool)

(declare-fun inv!31682 (StackFrame!140) Bool)

(assert (=> b!2132548 (= e!1360520 (and (inv!31682 (h!29433 stack!8)) e!1360527 tp!656379))))

(declare-fun mapNonEmpty!12612 () Bool)

(declare-fun tp!656360 () Bool)

(declare-fun tp!656380 () Bool)

(assert (=> mapNonEmpty!12612 (= mapRes!12612 (and tp!656360 tp!656380))))

(declare-fun mapValue!12612 () List!24117)

(declare-fun mapKey!12610 () (_ BitVec 32))

(declare-fun mapRest!12611 () (Array (_ BitVec 32) List!24117))

(assert (=> mapNonEmpty!12612 (= (arr!3957 (_values!2892 (v!28587 (underlying!5419 (v!28588 (underlying!5420 (cache!2907 cacheFurthestNullable!114))))))) (store mapRest!12611 mapKey!12610 mapValue!12612))))

(declare-fun b!2132549 () Bool)

(assert (=> b!2132549 (= e!1360513 (and e!1360500 (inv!31680 (totalInput!3024 cacheFurthestNullable!114)) e!1360502))))

(declare-fun b!2132550 () Bool)

(declare-fun tp!656373 () Bool)

(assert (=> b!2132550 (= e!1360506 tp!656373)))

(declare-fun b!2132551 () Bool)

(assert (=> b!2132551 (= e!1360503 e!1360531)))

(declare-fun b!2132552 () Bool)

(assert (=> b!2132552 (= e!1360516 (not e!1360526))))

(declare-fun res!921706 () Bool)

(assert (=> b!2132552 (=> res!921706 e!1360526)))

(declare-datatypes ((Option!4899 0))(
  ( (None!4898) (Some!4898 (v!28593 Int)) )
))
(declare-fun get!7370 (CacheFurthestNullable!692 (InoxSet Context!2586) Int Int) Option!4899)

(assert (=> b!2132552 (= res!921706 ((_ is Some!4898) (get!7370 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2132552 (forall!4916 stack!8 lambda!79274)))

(assert (= (and start!207552 res!921705) b!2132537))

(assert (= (and b!2132537 res!921703) b!2132533))

(assert (= (and b!2132533 (not res!921711)) b!2132545))

(assert (= (and b!2132533 res!921702) b!2132543))

(assert (= (and b!2132543 res!921704) b!2132529))

(assert (= (and b!2132529 res!921712) b!2132534))

(assert (= (and b!2132534 res!921700) b!2132514))

(assert (= (and b!2132514 res!921701) b!2132531))

(assert (= (and b!2132531 res!921710) b!2132535))

(assert (= (and b!2132535 res!921707) b!2132552))

(assert (= (and b!2132552 (not res!921706)) b!2132515))

(assert (= (and b!2132515 (not res!921708)) b!2132519))

(assert (= (and b!2132519 (not res!921709)) b!2132546))

(assert (= (and b!2132546 c!340230) b!2132532))

(assert (= (and b!2132546 (not c!340230)) b!2132542))

(assert (= (and b!2132527 condMapEmpty!12610) mapIsEmpty!12610))

(assert (= (and b!2132527 (not condMapEmpty!12610)) mapNonEmpty!12612))

(assert (= b!2132522 b!2132527))

(assert (= b!2132518 b!2132522))

(assert (= b!2132530 b!2132518))

(assert (= (and b!2132521 ((_ is LongMap!2612) (v!28588 (underlying!5420 (cache!2907 cacheFurthestNullable!114))))) b!2132530))

(assert (= b!2132516 b!2132521))

(assert (= (and b!2132549 ((_ is HashMap!2526) (cache!2907 cacheFurthestNullable!114))) b!2132516))

(assert (= b!2132549 b!2132539))

(assert (= start!207552 b!2132549))

(assert (= (and b!2132538 condMapEmpty!12612) mapIsEmpty!12612))

(assert (= (and b!2132538 (not condMapEmpty!12612)) mapNonEmpty!12610))

(assert (= b!2132520 b!2132538))

(assert (= b!2132551 b!2132520))

(assert (= b!2132544 b!2132551))

(assert (= (and b!2132541 ((_ is LongMap!2613) (v!28590 (underlying!5422 (cache!2908 cacheDown!1098))))) b!2132544))

(assert (= b!2132524 b!2132541))

(assert (= (and b!2132513 ((_ is HashMap!2527) (cache!2908 cacheDown!1098))) b!2132524))

(assert (= start!207552 b!2132513))

(assert (= (and b!2132536 condMapEmpty!12611) mapIsEmpty!12611))

(assert (= (and b!2132536 (not condMapEmpty!12611)) mapNonEmpty!12611))

(assert (= b!2132547 b!2132536))

(assert (= b!2132526 b!2132547))

(assert (= b!2132540 b!2132526))

(assert (= (and b!2132523 ((_ is LongMap!2614) (v!28592 (underlying!5424 (cache!2909 cacheUp!979))))) b!2132540))

(assert (= b!2132517 b!2132523))

(assert (= (and b!2132528 ((_ is HashMap!2528) (cache!2909 cacheUp!979))) b!2132517))

(assert (= start!207552 b!2132528))

(assert (= (and start!207552 condSetEmpty!15804) setIsEmpty!15804))

(assert (= (and start!207552 (not condSetEmpty!15804)) setNonEmpty!15805))

(assert (= setNonEmpty!15805 b!2132550))

(assert (= start!207552 b!2132511))

(assert (= (and b!2132525 condSetEmpty!15805) setIsEmpty!15805))

(assert (= (and b!2132525 (not condSetEmpty!15805)) setNonEmpty!15804))

(assert (= setNonEmpty!15804 b!2132510))

(assert (= b!2132525 b!2132512))

(assert (= b!2132548 b!2132525))

(assert (= (and start!207552 ((_ is Cons!24032) stack!8)) b!2132548))

(declare-fun m!2581662 () Bool)

(assert (=> b!2132512 m!2581662))

(declare-fun m!2581664 () Bool)

(assert (=> mapNonEmpty!12612 m!2581664))

(declare-fun m!2581666 () Bool)

(assert (=> start!207552 m!2581666))

(declare-fun m!2581668 () Bool)

(assert (=> start!207552 m!2581668))

(declare-fun m!2581670 () Bool)

(assert (=> start!207552 m!2581670))

(declare-fun m!2581672 () Bool)

(assert (=> start!207552 m!2581672))

(declare-fun m!2581674 () Bool)

(assert (=> b!2132522 m!2581674))

(declare-fun m!2581676 () Bool)

(assert (=> b!2132522 m!2581676))

(declare-fun m!2581678 () Bool)

(assert (=> b!2132533 m!2581678))

(declare-fun m!2581680 () Bool)

(assert (=> setNonEmpty!15805 m!2581680))

(declare-fun m!2581682 () Bool)

(assert (=> b!2132537 m!2581682))

(declare-fun m!2581684 () Bool)

(assert (=> b!2132549 m!2581684))

(declare-fun m!2581686 () Bool)

(assert (=> b!2132539 m!2581686))

(declare-fun m!2581688 () Bool)

(assert (=> b!2132534 m!2581688))

(declare-fun m!2581690 () Bool)

(assert (=> b!2132519 m!2581690))

(declare-fun m!2581692 () Bool)

(assert (=> b!2132531 m!2581692))

(declare-fun m!2581694 () Bool)

(assert (=> b!2132531 m!2581694))

(declare-fun m!2581696 () Bool)

(assert (=> b!2132546 m!2581696))

(declare-fun m!2581698 () Bool)

(assert (=> b!2132546 m!2581698))

(declare-fun m!2581700 () Bool)

(assert (=> b!2132546 m!2581700))

(assert (=> b!2132546 m!2581700))

(declare-fun m!2581702 () Bool)

(assert (=> b!2132546 m!2581702))

(declare-fun m!2581704 () Bool)

(assert (=> b!2132547 m!2581704))

(declare-fun m!2581706 () Bool)

(assert (=> b!2132547 m!2581706))

(declare-fun m!2581708 () Bool)

(assert (=> b!2132543 m!2581708))

(declare-fun m!2581710 () Bool)

(assert (=> b!2132552 m!2581710))

(assert (=> b!2132552 m!2581692))

(declare-fun m!2581712 () Bool)

(assert (=> setNonEmpty!15804 m!2581712))

(declare-fun m!2581714 () Bool)

(assert (=> b!2132529 m!2581714))

(declare-fun m!2581716 () Bool)

(assert (=> mapNonEmpty!12611 m!2581716))

(declare-fun m!2581718 () Bool)

(assert (=> b!2132520 m!2581718))

(declare-fun m!2581720 () Bool)

(assert (=> b!2132520 m!2581720))

(declare-fun m!2581722 () Bool)

(assert (=> mapNonEmpty!12610 m!2581722))

(declare-fun m!2581724 () Bool)

(assert (=> b!2132548 m!2581724))

(declare-fun m!2581726 () Bool)

(assert (=> b!2132525 m!2581726))

(declare-fun m!2581728 () Bool)

(assert (=> b!2132511 m!2581728))

(declare-fun m!2581730 () Bool)

(assert (=> b!2132535 m!2581730))

(check-sat (not b_next!63041) (not b!2132522) (not b!2132546) (not b!2132536) (not b!2132525) (not b!2132548) (not b!2132533) (not mapNonEmpty!12611) (not b!2132537) (not b!2132519) (not b!2132520) (not b!2132549) (not b!2132538) (not b_next!63039) b_and!171917 b_and!171913 (not b!2132547) (not b!2132539) (not b_next!63043) (not b!2132527) (not b!2132511) b_and!171919 (not mapNonEmpty!12612) (not b_next!63045) (not b_next!63037) (not b!2132534) b_and!171915 (not b!2132543) b_and!171921 (not b!2132531) (not b!2132510) (not b!2132512) (not setNonEmpty!15804) (not b!2132529) (not b!2132550) (not start!207552) (not b!2132552) (not b_next!63047) (not b!2132535) b_and!171923 (not mapNonEmpty!12610) (not setNonEmpty!15805))
(check-sat b_and!171913 (not b_next!63041) (not b_next!63043) b_and!171919 (not b_next!63045) (not b_next!63037) b_and!171915 b_and!171921 (not b_next!63039) b_and!171917 (not b_next!63047) b_and!171923)
