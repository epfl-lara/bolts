; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207666 () Bool)

(assert start!207666)

(declare-fun b!2137449 () Bool)

(declare-fun b_free!62741 () Bool)

(declare-fun b_next!63445 () Bool)

(assert (=> b!2137449 (= b_free!62741 (not b_next!63445))))

(declare-fun tp!659527 () Bool)

(declare-fun b_and!172321 () Bool)

(assert (=> b!2137449 (= tp!659527 b_and!172321)))

(declare-fun b!2137460 () Bool)

(declare-fun b_free!62743 () Bool)

(declare-fun b_next!63447 () Bool)

(assert (=> b!2137460 (= b_free!62743 (not b_next!63447))))

(declare-fun tp!659507 () Bool)

(declare-fun b_and!172323 () Bool)

(assert (=> b!2137460 (= tp!659507 b_and!172323)))

(declare-fun b!2137442 () Bool)

(declare-fun b_free!62745 () Bool)

(declare-fun b_next!63449 () Bool)

(assert (=> b!2137442 (= b_free!62745 (not b_next!63449))))

(declare-fun tp!659511 () Bool)

(declare-fun b_and!172325 () Bool)

(assert (=> b!2137442 (= tp!659511 b_and!172325)))

(declare-fun b!2137459 () Bool)

(declare-fun b_free!62747 () Bool)

(declare-fun b_next!63451 () Bool)

(assert (=> b!2137459 (= b_free!62747 (not b_next!63451))))

(declare-fun tp!659514 () Bool)

(declare-fun b_and!172327 () Bool)

(assert (=> b!2137459 (= tp!659514 b_and!172327)))

(declare-fun b!2137450 () Bool)

(declare-fun b_free!62749 () Bool)

(declare-fun b_next!63453 () Bool)

(assert (=> b!2137450 (= b_free!62749 (not b_next!63453))))

(declare-fun tp!659526 () Bool)

(declare-fun b_and!172329 () Bool)

(assert (=> b!2137450 (= tp!659526 b_and!172329)))

(declare-fun b!2137466 () Bool)

(declare-fun b_free!62751 () Bool)

(declare-fun b_next!63455 () Bool)

(assert (=> b!2137466 (= b_free!62751 (not b_next!63455))))

(declare-fun tp!659534 () Bool)

(declare-fun b_and!172331 () Bool)

(assert (=> b!2137466 (= tp!659534 b_and!172331)))

(declare-fun b!2137455 () Bool)

(assert (=> b!2137455 true))

(declare-fun bs!444399 () Bool)

(declare-fun b!2137487 () Bool)

(assert (= bs!444399 (and b!2137487 b!2137455)))

(declare-fun lambda!79737 () Int)

(declare-fun lambda!79736 () Int)

(assert (=> bs!444399 (not (= lambda!79737 lambda!79736))))

(assert (=> b!2137487 true))

(declare-fun bs!444400 () Bool)

(declare-fun b!2137471 () Bool)

(assert (= bs!444400 (and b!2137471 b!2137455)))

(declare-fun lambda!79738 () Int)

(declare-fun lt!797584 () Int)

(declare-fun lt!797591 () Int)

(assert (=> bs!444400 (= (= lt!797584 lt!797591) (= lambda!79738 lambda!79736))))

(declare-fun bs!444401 () Bool)

(assert (= bs!444401 (and b!2137471 b!2137487)))

(assert (=> bs!444401 (not (= lambda!79738 lambda!79737))))

(assert (=> b!2137471 true))

(declare-fun b!2137440 () Bool)

(declare-fun e!1364601 () Bool)

(declare-datatypes ((C!11660 0))(
  ( (C!11661 (val!6816 Int)) )
))
(declare-datatypes ((Regex!5757 0))(
  ( (ElementMatch!5757 (c!340391 C!11660)) (Concat!10059 (regOne!12026 Regex!5757) (regTwo!12026 Regex!5757)) (EmptyExpr!5757) (Star!5757 (reg!6086 Regex!5757)) (EmptyLang!5757) (Union!5757 (regOne!12027 Regex!5757) (regTwo!12027 Regex!5757)) )
))
(declare-datatypes ((List!24306 0))(
  ( (Nil!24222) (Cons!24222 (h!29623 Regex!5757) (t!196834 List!24306)) )
))
(declare-datatypes ((Context!2654 0))(
  ( (Context!2655 (exprs!1827 List!24306)) )
))
(declare-datatypes ((List!24307 0))(
  ( (Nil!24223) (Cons!24223 (h!29624 C!11660) (t!196835 List!24307)) )
))
(declare-datatypes ((IArray!15795 0))(
  ( (IArray!15796 (innerList!7955 List!24307)) )
))
(declare-datatypes ((Conc!7895 0))(
  ( (Node!7895 (left!18646 Conc!7895) (right!18976 Conc!7895) (csize!16020 Int) (cheight!8106 Int)) (Leaf!11541 (xs!10837 IArray!15795) (csize!16021 Int)) (Empty!7895) )
))
(declare-datatypes ((BalanceConc!15552 0))(
  ( (BalanceConc!15553 (c!340392 Conc!7895)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!200 0))(
  ( (StackFrame!201 (z!5833 (InoxSet Context!2654)) (from!2716 Int) (lastNullablePos!403 Int) (res!923371 Int) (totalInput!3087 BalanceConc!15552)) )
))
(declare-datatypes ((List!24308 0))(
  ( (Nil!24224) (Cons!24224 (h!29625 StackFrame!200) (t!196836 List!24308)) )
))
(declare-fun stack!8 () List!24308)

(declare-fun tp!659524 () Bool)

(declare-fun inv!31893 (Conc!7895) Bool)

(assert (=> b!2137440 (= e!1364601 (and (inv!31893 (c!340392 (totalInput!3087 (h!29625 stack!8)))) tp!659524))))

(declare-fun b!2137441 () Bool)

(declare-fun e!1364575 () Bool)

(declare-fun e!1364585 () Bool)

(assert (=> b!2137441 (= e!1364575 e!1364585)))

(declare-fun res!923361 () Bool)

(assert (=> b!2137441 (=> (not res!923361) (not e!1364585))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!797587 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2137441 (= res!923361 (and (= totalInputSize!296 lt!797587) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15552)

(declare-fun size!18945 (BalanceConc!15552) Int)

(assert (=> b!2137441 (= lt!797587 (size!18945 totalInput!851))))

(declare-fun res!923351 () Bool)

(assert (=> start!207666 (=> (not res!923351) (not e!1364575))))

(assert (=> start!207666 (= res!923351 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207666 e!1364575))

(declare-datatypes ((tuple3!3332 0))(
  ( (tuple3!3333 (_1!14149 (InoxSet Context!2654)) (_2!14149 Int) (_3!2136 Int)) )
))
(declare-datatypes ((tuple2!24026 0))(
  ( (tuple2!24027 (_1!14150 tuple3!3332) (_2!14150 Int)) )
))
(declare-datatypes ((List!24309 0))(
  ( (Nil!24225) (Cons!24225 (h!29626 tuple2!24026) (t!196837 List!24309)) )
))
(declare-datatypes ((array!9147 0))(
  ( (array!9148 (arr!4083 (Array (_ BitVec 32) (_ BitVec 64))) (size!18946 (_ BitVec 32))) )
))
(declare-datatypes ((array!9149 0))(
  ( (array!9150 (arr!4084 (Array (_ BitVec 32) List!24309)) (size!18947 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5410 0))(
  ( (LongMapFixedSize!5411 (defaultEntry!3070 Int) (mask!6899 (_ BitVec 32)) (extraKeys!2953 (_ BitVec 32)) (zeroValue!2963 List!24309) (minValue!2963 List!24309) (_size!5461 (_ BitVec 32)) (_keys!3002 array!9147) (_values!2985 array!9149) (_vacant!2766 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10645 0))(
  ( (Cell!10646 (v!28795 LongMapFixedSize!5410)) )
))
(declare-datatypes ((MutLongMap!2705 0))(
  ( (LongMap!2705 (underlying!5605 Cell!10645)) (MutLongMapExt!2704 (__x!16291 Int)) )
))
(declare-datatypes ((Cell!10647 0))(
  ( (Cell!10648 (v!28796 MutLongMap!2705)) )
))
(declare-datatypes ((Hashable!2619 0))(
  ( (HashableExt!2618 (__x!16292 Int)) )
))
(declare-datatypes ((MutableMap!2619 0))(
  ( (MutableMapExt!2618 (__x!16293 Int)) (HashMap!2619 (underlying!5606 Cell!10647) (hashF!4542 Hashable!2619) (_size!5462 (_ BitVec 32)) (defaultValue!2781 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!758 0))(
  ( (CacheFurthestNullable!759 (cache!3000 MutableMap!2619) (totalInput!3088 BalanceConc!15552)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!758)

(declare-fun e!1364577 () Bool)

(declare-fun inv!31894 (CacheFurthestNullable!758) Bool)

(assert (=> start!207666 (and (inv!31894 cacheFurthestNullable!114) e!1364577)))

(assert (=> start!207666 true))

(declare-datatypes ((tuple3!3334 0))(
  ( (tuple3!3335 (_1!14151 Regex!5757) (_2!14151 Context!2654) (_3!2137 C!11660)) )
))
(declare-datatypes ((tuple2!24028 0))(
  ( (tuple2!24029 (_1!14152 tuple3!3334) (_2!14152 (InoxSet Context!2654))) )
))
(declare-datatypes ((List!24310 0))(
  ( (Nil!24226) (Cons!24226 (h!29627 tuple2!24028) (t!196838 List!24310)) )
))
(declare-datatypes ((Hashable!2620 0))(
  ( (HashableExt!2619 (__x!16294 Int)) )
))
(declare-datatypes ((array!9151 0))(
  ( (array!9152 (arr!4085 (Array (_ BitVec 32) List!24310)) (size!18948 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5412 0))(
  ( (LongMapFixedSize!5413 (defaultEntry!3071 Int) (mask!6900 (_ BitVec 32)) (extraKeys!2954 (_ BitVec 32)) (zeroValue!2964 List!24310) (minValue!2964 List!24310) (_size!5463 (_ BitVec 32)) (_keys!3003 array!9147) (_values!2986 array!9151) (_vacant!2767 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10649 0))(
  ( (Cell!10650 (v!28797 LongMapFixedSize!5412)) )
))
(declare-datatypes ((MutLongMap!2706 0))(
  ( (LongMap!2706 (underlying!5607 Cell!10649)) (MutLongMapExt!2705 (__x!16295 Int)) )
))
(declare-datatypes ((Cell!10651 0))(
  ( (Cell!10652 (v!28798 MutLongMap!2706)) )
))
(declare-datatypes ((MutableMap!2620 0))(
  ( (MutableMapExt!2619 (__x!16296 Int)) (HashMap!2620 (underlying!5608 Cell!10651) (hashF!4543 Hashable!2620) (_size!5464 (_ BitVec 32)) (defaultValue!2782 Int)) )
))
(declare-datatypes ((CacheDown!1794 0))(
  ( (CacheDown!1795 (cache!3001 MutableMap!2620)) )
))
(declare-fun cacheDown!1098 () CacheDown!1794)

(declare-fun e!1364595 () Bool)

(declare-fun inv!31895 (CacheDown!1794) Bool)

(assert (=> start!207666 (and (inv!31895 cacheDown!1098) e!1364595)))

(declare-datatypes ((tuple2!24030 0))(
  ( (tuple2!24031 (_1!14153 Context!2654) (_2!14153 C!11660)) )
))
(declare-datatypes ((tuple2!24032 0))(
  ( (tuple2!24033 (_1!14154 tuple2!24030) (_2!14154 (InoxSet Context!2654))) )
))
(declare-datatypes ((List!24311 0))(
  ( (Nil!24227) (Cons!24227 (h!29628 tuple2!24032) (t!196839 List!24311)) )
))
(declare-datatypes ((array!9153 0))(
  ( (array!9154 (arr!4086 (Array (_ BitVec 32) List!24311)) (size!18949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5414 0))(
  ( (LongMapFixedSize!5415 (defaultEntry!3072 Int) (mask!6901 (_ BitVec 32)) (extraKeys!2955 (_ BitVec 32)) (zeroValue!2965 List!24311) (minValue!2965 List!24311) (_size!5465 (_ BitVec 32)) (_keys!3004 array!9147) (_values!2987 array!9153) (_vacant!2768 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10653 0))(
  ( (Cell!10654 (v!28799 LongMapFixedSize!5414)) )
))
(declare-datatypes ((MutLongMap!2707 0))(
  ( (LongMap!2707 (underlying!5609 Cell!10653)) (MutLongMapExt!2706 (__x!16297 Int)) )
))
(declare-datatypes ((Cell!10655 0))(
  ( (Cell!10656 (v!28800 MutLongMap!2707)) )
))
(declare-datatypes ((Hashable!2621 0))(
  ( (HashableExt!2620 (__x!16298 Int)) )
))
(declare-datatypes ((MutableMap!2621 0))(
  ( (MutableMapExt!2620 (__x!16299 Int)) (HashMap!2621 (underlying!5610 Cell!10655) (hashF!4544 Hashable!2621) (_size!5466 (_ BitVec 32)) (defaultValue!2783 Int)) )
))
(declare-datatypes ((CacheUp!1810 0))(
  ( (CacheUp!1811 (cache!3002 MutableMap!2621)) )
))
(declare-fun cacheUp!979 () CacheUp!1810)

(declare-fun e!1364588 () Bool)

(declare-fun inv!31896 (CacheUp!1810) Bool)

(assert (=> start!207666 (and (inv!31896 cacheUp!979) e!1364588)))

(declare-fun condSetEmpty!16052 () Bool)

(declare-fun z!3839 () (InoxSet Context!2654))

(assert (=> start!207666 (= condSetEmpty!16052 (= z!3839 ((as const (Array Context!2654 Bool)) false)))))

(declare-fun setRes!16051 () Bool)

(assert (=> start!207666 setRes!16051))

(declare-fun e!1364593 () Bool)

(declare-fun inv!31897 (BalanceConc!15552) Bool)

(assert (=> start!207666 (and (inv!31897 totalInput!851) e!1364593)))

(declare-fun e!1364606 () Bool)

(assert (=> start!207666 e!1364606))

(declare-fun mapIsEmpty!12925 () Bool)

(declare-fun mapRes!12927 () Bool)

(assert (=> mapIsEmpty!12925 mapRes!12927))

(declare-fun e!1364581 () Bool)

(declare-fun e!1364578 () Bool)

(declare-fun tp!659529 () Bool)

(declare-fun tp!659508 () Bool)

(declare-fun array_inv!2920 (array!9147) Bool)

(declare-fun array_inv!2921 (array!9149) Bool)

(assert (=> b!2137442 (= e!1364581 (and tp!659511 tp!659508 tp!659529 (array_inv!2920 (_keys!3002 (v!28795 (underlying!5605 (v!28796 (underlying!5606 (cache!3000 cacheFurthestNullable!114))))))) (array_inv!2921 (_values!2985 (v!28795 (underlying!5605 (v!28796 (underlying!5606 (cache!3000 cacheFurthestNullable!114))))))) e!1364578))))

(declare-fun b!2137443 () Bool)

(declare-fun e!1364574 () Bool)

(declare-fun e!1364602 () Bool)

(assert (=> b!2137443 (= e!1364574 e!1364602)))

(declare-fun b!2137444 () Bool)

(declare-fun res!923364 () Bool)

(declare-fun e!1364584 () Bool)

(assert (=> b!2137444 (=> res!923364 e!1364584)))

(declare-datatypes ((tuple3!3336 0))(
  ( (tuple3!3337 (_1!14155 (InoxSet Context!2654)) (_2!14155 CacheUp!1810) (_3!2138 CacheDown!1794)) )
))
(declare-fun lt!797588 () tuple3!3336)

(declare-fun valid!2114 (CacheDown!1794) Bool)

(assert (=> b!2137444 (= res!923364 (not (valid!2114 (_3!2138 lt!797588))))))

(declare-fun setIsEmpty!16051 () Bool)

(assert (=> setIsEmpty!16051 setRes!16051))

(declare-fun e!1364576 () Bool)

(declare-fun e!1364579 () Bool)

(declare-fun b!2137445 () Bool)

(assert (=> b!2137445 (= e!1364577 (and e!1364579 (inv!31897 (totalInput!3088 cacheFurthestNullable!114)) e!1364576))))

(declare-fun b!2137446 () Bool)

(declare-fun e!1364587 () Bool)

(declare-fun e!1364591 () Bool)

(assert (=> b!2137446 (= e!1364587 e!1364591)))

(declare-fun res!923369 () Bool)

(assert (=> b!2137446 (=> res!923369 e!1364591)))

(assert (=> b!2137446 (= res!923369 (not (= lt!797591 lt!797584)))))

(declare-fun lt!797581 () Int)

(declare-fun furthestNullablePosition!64 ((InoxSet Context!2654) Int BalanceConc!15552 Int Int) Int)

(assert (=> b!2137446 (= lt!797584 (furthestNullablePosition!64 (_1!14155 lt!797588) (+ 1 from!1043) totalInput!851 lt!797587 lt!797581))))

(declare-fun lt!797585 () List!24308)

(assert (=> b!2137446 (= lt!797585 (Cons!24224 (StackFrame!201 z!3839 from!1043 lastNullablePos!123 lt!797591 totalInput!851) stack!8))))

(declare-fun lt!797589 () Bool)

(assert (=> b!2137446 (= lt!797581 (ite lt!797589 from!1043 lastNullablePos!123))))

(declare-fun nullableZipper!128 ((InoxSet Context!2654)) Bool)

(assert (=> b!2137446 (= lt!797589 (nullableZipper!128 (_1!14155 lt!797588)))))

(declare-fun derivationStepZipperMem!50 ((InoxSet Context!2654) C!11660 CacheUp!1810 CacheDown!1794) tuple3!3336)

(declare-fun apply!5951 (BalanceConc!15552 Int) C!11660)

(assert (=> b!2137446 (= lt!797588 (derivationStepZipperMem!50 z!3839 (apply!5951 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2137447 () Bool)

(declare-fun tp!659515 () Bool)

(assert (=> b!2137447 (= e!1364576 (and (inv!31893 (c!340392 (totalInput!3088 cacheFurthestNullable!114))) tp!659515))))

(declare-fun b!2137448 () Bool)

(declare-fun e!1364571 () Bool)

(assert (=> b!2137448 (= e!1364571 e!1364581)))

(declare-fun e!1364580 () Bool)

(assert (=> b!2137449 (= e!1364579 (and e!1364580 tp!659527))))

(declare-fun setIsEmpty!16052 () Bool)

(declare-fun setRes!16052 () Bool)

(assert (=> setIsEmpty!16052 setRes!16052))

(declare-fun e!1364599 () Bool)

(declare-fun e!1364592 () Bool)

(assert (=> b!2137450 (= e!1364599 (and e!1364592 tp!659526))))

(declare-fun mapIsEmpty!12926 () Bool)

(declare-fun mapRes!12925 () Bool)

(assert (=> mapIsEmpty!12926 mapRes!12925))

(declare-fun b!2137451 () Bool)

(declare-fun forall!4944 (List!24308 Int) Bool)

(assert (=> b!2137451 (= e!1364584 (forall!4944 lt!797585 lambda!79738))))

(declare-fun b!2137452 () Bool)

(declare-fun res!923354 () Bool)

(assert (=> b!2137452 (=> res!923354 e!1364584)))

(assert (=> b!2137452 (= res!923354 (not (forall!4944 lt!797585 lambda!79737)))))

(declare-fun b!2137453 () Bool)

(declare-fun res!923357 () Bool)

(assert (=> b!2137453 (=> res!923357 e!1364587)))

(assert (=> b!2137453 (= res!923357 (= from!1043 totalInputSize!296))))

(declare-fun b!2137454 () Bool)

(declare-fun e!1364598 () Bool)

(assert (=> b!2137454 (= e!1364598 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1364573 () Bool)

(assert (=> b!2137455 (= e!1364585 e!1364573)))

(declare-fun res!923362 () Bool)

(assert (=> b!2137455 (=> (not res!923362) (not e!1364573))))

(assert (=> b!2137455 (= res!923362 (forall!4944 stack!8 lambda!79736))))

(assert (=> b!2137455 (= lt!797591 (furthestNullablePosition!64 z!3839 from!1043 totalInput!851 lt!797587 lastNullablePos!123))))

(declare-fun b!2137456 () Bool)

(declare-fun e!1364569 () Bool)

(assert (=> b!2137456 (= e!1364602 e!1364569)))

(declare-fun b!2137457 () Bool)

(declare-fun tp!659523 () Bool)

(assert (=> b!2137457 (= e!1364578 (and tp!659523 mapRes!12927))))

(declare-fun condMapEmpty!12926 () Bool)

(declare-fun mapDefault!12927 () List!24309)

(assert (=> b!2137457 (= condMapEmpty!12926 (= (arr!4084 (_values!2985 (v!28795 (underlying!5605 (v!28796 (underlying!5606 (cache!3000 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24309)) mapDefault!12927)))))

(declare-fun b!2137458 () Bool)

(declare-fun res!923356 () Bool)

(assert (=> b!2137458 (=> (not res!923356) (not e!1364585))))

(assert (=> b!2137458 (= res!923356 (valid!2114 cacheDown!1098))))

(declare-fun tp!659506 () Bool)

(declare-fun e!1364594 () Bool)

(declare-fun tp!659516 () Bool)

(declare-fun array_inv!2922 (array!9151) Bool)

(assert (=> b!2137459 (= e!1364569 (and tp!659514 tp!659506 tp!659516 (array_inv!2920 (_keys!3003 (v!28797 (underlying!5607 (v!28798 (underlying!5608 (cache!3001 cacheDown!1098))))))) (array_inv!2922 (_values!2986 (v!28797 (underlying!5607 (v!28798 (underlying!5608 (cache!3001 cacheDown!1098))))))) e!1364594))))

(declare-fun tp!659517 () Bool)

(declare-fun e!1364600 () Bool)

(declare-fun e!1364582 () Bool)

(declare-fun tp!659532 () Bool)

(declare-fun array_inv!2923 (array!9153) Bool)

(assert (=> b!2137460 (= e!1364600 (and tp!659507 tp!659517 tp!659532 (array_inv!2920 (_keys!3004 (v!28799 (underlying!5609 (v!28800 (underlying!5610 (cache!3002 cacheUp!979))))))) (array_inv!2923 (_values!2987 (v!28799 (underlying!5609 (v!28800 (underlying!5610 (cache!3002 cacheUp!979))))))) e!1364582))))

(declare-fun setNonEmpty!16051 () Bool)

(declare-fun tp!659528 () Bool)

(declare-fun e!1364586 () Bool)

(declare-fun setElem!16051 () Context!2654)

(declare-fun inv!31898 (Context!2654) Bool)

(assert (=> setNonEmpty!16051 (= setRes!16052 (and tp!659528 (inv!31898 setElem!16051) e!1364586))))

(declare-fun setRest!16051 () (InoxSet Context!2654))

(assert (=> setNonEmpty!16051 (= (z!5833 (h!29625 stack!8)) ((_ map or) (store ((as const (Array Context!2654 Bool)) false) setElem!16051 true) setRest!16051))))

(declare-fun b!2137461 () Bool)

(declare-fun res!923365 () Bool)

(assert (=> b!2137461 (=> (not res!923365) (not e!1364585))))

(assert (=> b!2137461 (= res!923365 e!1364598)))

(declare-fun res!923359 () Bool)

(assert (=> b!2137461 (=> res!923359 e!1364598)))

(assert (=> b!2137461 (= res!923359 (not (nullableZipper!128 z!3839)))))

(declare-fun mapIsEmpty!12927 () Bool)

(declare-fun mapRes!12926 () Bool)

(assert (=> mapIsEmpty!12927 mapRes!12926))

(declare-fun b!2137462 () Bool)

(declare-fun tp!659530 () Bool)

(assert (=> b!2137462 (= e!1364586 tp!659530)))

(declare-fun b!2137463 () Bool)

(declare-fun e!1364572 () Bool)

(declare-fun e!1364597 () Bool)

(assert (=> b!2137463 (= e!1364572 e!1364597)))

(declare-fun b!2137464 () Bool)

(declare-fun e!1364583 () Bool)

(assert (=> b!2137464 (= e!1364588 e!1364583)))

(declare-fun b!2137465 () Bool)

(declare-fun res!923355 () Bool)

(assert (=> b!2137465 (=> (not res!923355) (not e!1364585))))

(assert (=> b!2137465 (= res!923355 (= (totalInput!3088 cacheFurthestNullable!114) totalInput!851))))

(declare-fun e!1364590 () Bool)

(assert (=> b!2137466 (= e!1364583 (and e!1364590 tp!659534))))

(declare-fun b!2137467 () Bool)

(declare-fun res!923360 () Bool)

(assert (=> b!2137467 (=> res!923360 e!1364584)))

(assert (=> b!2137467 (= res!923360 (not (forall!4944 lt!797585 lambda!79738)))))

(declare-fun b!2137468 () Bool)

(declare-fun e!1364605 () Bool)

(declare-fun tp!659521 () Bool)

(assert (=> b!2137468 (= e!1364605 tp!659521)))

(declare-fun b!2137469 () Bool)

(declare-fun res!923368 () Bool)

(assert (=> b!2137469 (=> res!923368 e!1364584)))

(assert (=> b!2137469 (= res!923368 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) totalInputSize!296) (< lt!797581 (- 1)) (>= lt!797581 (+ 1 from!1043)) (and lt!797589 (not (= lt!797581 from!1043)))))))

(declare-fun b!2137470 () Bool)

(assert (=> b!2137470 (= e!1364595 e!1364599)))

(assert (=> b!2137471 (= e!1364591 e!1364584)))

(declare-fun res!923366 () Bool)

(assert (=> b!2137471 (=> res!923366 e!1364584)))

(assert (=> b!2137471 (= res!923366 (not (forall!4944 stack!8 lambda!79738)))))

(assert (=> b!2137471 (forall!4944 stack!8 lambda!79738)))

(declare-datatypes ((Unit!37669 0))(
  ( (Unit!37670) )
))
(declare-fun lt!797582 () Unit!37669)

(declare-fun lemmaStackPreservesForEqualRes!20 (List!24308 Int Int) Unit!37669)

(assert (=> b!2137471 (= lt!797582 (lemmaStackPreservesForEqualRes!20 stack!8 lt!797591 lt!797584))))

(assert (=> b!2137471 (forall!4944 stack!8 lambda!79736)))

(declare-fun b!2137472 () Bool)

(declare-fun lt!797590 () MutLongMap!2707)

(get-info :version)

(assert (=> b!2137472 (= e!1364590 (and e!1364572 ((_ is LongMap!2707) lt!797590)))))

(assert (=> b!2137472 (= lt!797590 (v!28800 (underlying!5610 (cache!3002 cacheUp!979))))))

(declare-fun b!2137473 () Bool)

(declare-fun e!1364589 () Bool)

(assert (=> b!2137473 (= e!1364589 (and setRes!16052 (inv!31897 (totalInput!3087 (h!29625 stack!8))) e!1364601))))

(declare-fun condSetEmpty!16051 () Bool)

(assert (=> b!2137473 (= condSetEmpty!16051 (= (z!5833 (h!29625 stack!8)) ((as const (Array Context!2654 Bool)) false)))))

(declare-fun b!2137474 () Bool)

(declare-fun res!923370 () Bool)

(assert (=> b!2137474 (=> (not res!923370) (not e!1364585))))

(declare-fun valid!2115 (CacheUp!1810) Bool)

(assert (=> b!2137474 (= res!923370 (valid!2115 cacheUp!979))))

(declare-fun b!2137475 () Bool)

(declare-fun res!923367 () Bool)

(assert (=> b!2137475 (=> res!923367 e!1364587)))

(declare-fun lostCauseZipper!104 ((InoxSet Context!2654)) Bool)

(assert (=> b!2137475 (= res!923367 (lostCauseZipper!104 z!3839))))

(declare-fun b!2137476 () Bool)

(declare-fun tp!659518 () Bool)

(assert (=> b!2137476 (= e!1364594 (and tp!659518 mapRes!12926))))

(declare-fun condMapEmpty!12927 () Bool)

(declare-fun mapDefault!12926 () List!24310)

(assert (=> b!2137476 (= condMapEmpty!12927 (= (arr!4085 (_values!2986 (v!28797 (underlying!5607 (v!28798 (underlying!5608 (cache!3001 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24310)) mapDefault!12926)))))

(declare-fun b!2137477 () Bool)

(declare-fun lt!797586 () MutLongMap!2706)

(assert (=> b!2137477 (= e!1364592 (and e!1364574 ((_ is LongMap!2706) lt!797586)))))

(assert (=> b!2137477 (= lt!797586 (v!28798 (underlying!5608 (cache!3001 cacheDown!1098))))))

(declare-fun b!2137478 () Bool)

(declare-fun e!1364603 () Bool)

(declare-fun lt!797583 () MutLongMap!2705)

(assert (=> b!2137478 (= e!1364580 (and e!1364603 ((_ is LongMap!2705) lt!797583)))))

(assert (=> b!2137478 (= lt!797583 (v!28796 (underlying!5606 (cache!3000 cacheFurthestNullable!114))))))

(declare-fun b!2137479 () Bool)

(declare-fun tp!659512 () Bool)

(assert (=> b!2137479 (= e!1364582 (and tp!659512 mapRes!12925))))

(declare-fun condMapEmpty!12925 () Bool)

(declare-fun mapDefault!12925 () List!24311)

(assert (=> b!2137479 (= condMapEmpty!12925 (= (arr!4086 (_values!2987 (v!28799 (underlying!5609 (v!28800 (underlying!5610 (cache!3002 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24311)) mapDefault!12925)))))

(declare-fun b!2137480 () Bool)

(declare-fun res!923363 () Bool)

(assert (=> b!2137480 (=> res!923363 e!1364584)))

(assert (=> b!2137480 (= res!923363 (not (valid!2115 (_2!14155 lt!797588))))))

(declare-fun mapNonEmpty!12925 () Bool)

(declare-fun tp!659513 () Bool)

(declare-fun tp!659531 () Bool)

(assert (=> mapNonEmpty!12925 (= mapRes!12925 (and tp!659513 tp!659531))))

(declare-fun mapKey!12927 () (_ BitVec 32))

(declare-fun mapRest!12925 () (Array (_ BitVec 32) List!24311))

(declare-fun mapValue!12925 () List!24311)

(assert (=> mapNonEmpty!12925 (= (arr!4086 (_values!2987 (v!28799 (underlying!5609 (v!28800 (underlying!5610 (cache!3002 cacheUp!979))))))) (store mapRest!12925 mapKey!12927 mapValue!12925))))

(declare-fun tp!659533 () Bool)

(declare-fun b!2137481 () Bool)

(declare-fun inv!31899 (StackFrame!200) Bool)

(assert (=> b!2137481 (= e!1364606 (and (inv!31899 (h!29625 stack!8)) e!1364589 tp!659533))))

(declare-fun b!2137482 () Bool)

(assert (=> b!2137482 (= e!1364603 e!1364571)))

(declare-fun b!2137483 () Bool)

(assert (=> b!2137483 (= e!1364573 (not e!1364587))))

(declare-fun res!923352 () Bool)

(assert (=> b!2137483 (=> res!923352 e!1364587)))

(declare-datatypes ((Option!4921 0))(
  ( (None!4920) (Some!4920 (v!28801 Int)) )
))
(declare-fun get!7409 (CacheFurthestNullable!758 (InoxSet Context!2654) Int Int) Option!4921)

(assert (=> b!2137483 (= res!923352 ((_ is Some!4920) (get!7409 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2137483 (forall!4944 stack!8 lambda!79736)))

(declare-fun setNonEmpty!16052 () Bool)

(declare-fun setElem!16052 () Context!2654)

(declare-fun tp!659509 () Bool)

(assert (=> setNonEmpty!16052 (= setRes!16051 (and tp!659509 (inv!31898 setElem!16052) e!1364605))))

(declare-fun setRest!16052 () (InoxSet Context!2654))

(assert (=> setNonEmpty!16052 (= z!3839 ((_ map or) (store ((as const (Array Context!2654 Bool)) false) setElem!16052 true) setRest!16052))))

(declare-fun b!2137484 () Bool)

(assert (=> b!2137484 (= e!1364597 e!1364600)))

(declare-fun b!2137485 () Bool)

(declare-fun tp!659522 () Bool)

(assert (=> b!2137485 (= e!1364593 (and (inv!31893 (c!340392 totalInput!851)) tp!659522))))

(declare-fun mapNonEmpty!12926 () Bool)

(declare-fun tp!659519 () Bool)

(declare-fun tp!659520 () Bool)

(assert (=> mapNonEmpty!12926 (= mapRes!12926 (and tp!659519 tp!659520))))

(declare-fun mapKey!12925 () (_ BitVec 32))

(declare-fun mapValue!12926 () List!24310)

(declare-fun mapRest!12927 () (Array (_ BitVec 32) List!24310))

(assert (=> mapNonEmpty!12926 (= (arr!4085 (_values!2986 (v!28797 (underlying!5607 (v!28798 (underlying!5608 (cache!3001 cacheDown!1098))))))) (store mapRest!12927 mapKey!12925 mapValue!12926))))

(declare-fun b!2137486 () Bool)

(declare-fun res!923353 () Bool)

(assert (=> b!2137486 (=> (not res!923353) (not e!1364585))))

(declare-fun valid!2116 (CacheFurthestNullable!758) Bool)

(assert (=> b!2137486 (= res!923353 (valid!2116 cacheFurthestNullable!114))))

(declare-fun res!923358 () Bool)

(assert (=> b!2137487 (=> (not res!923358) (not e!1364573))))

(assert (=> b!2137487 (= res!923358 (forall!4944 stack!8 lambda!79737))))

(declare-fun mapNonEmpty!12927 () Bool)

(declare-fun tp!659510 () Bool)

(declare-fun tp!659525 () Bool)

(assert (=> mapNonEmpty!12927 (= mapRes!12927 (and tp!659510 tp!659525))))

(declare-fun mapRest!12926 () (Array (_ BitVec 32) List!24309))

(declare-fun mapValue!12927 () List!24309)

(declare-fun mapKey!12926 () (_ BitVec 32))

(assert (=> mapNonEmpty!12927 (= (arr!4084 (_values!2985 (v!28795 (underlying!5605 (v!28796 (underlying!5606 (cache!3000 cacheFurthestNullable!114))))))) (store mapRest!12926 mapKey!12926 mapValue!12927))))

(assert (= (and start!207666 res!923351) b!2137441))

(assert (= (and b!2137441 res!923361) b!2137461))

(assert (= (and b!2137461 (not res!923359)) b!2137454))

(assert (= (and b!2137461 res!923365) b!2137474))

(assert (= (and b!2137474 res!923370) b!2137458))

(assert (= (and b!2137458 res!923356) b!2137486))

(assert (= (and b!2137486 res!923353) b!2137465))

(assert (= (and b!2137465 res!923355) b!2137455))

(assert (= (and b!2137455 res!923362) b!2137487))

(assert (= (and b!2137487 res!923358) b!2137483))

(assert (= (and b!2137483 (not res!923352)) b!2137453))

(assert (= (and b!2137453 (not res!923357)) b!2137475))

(assert (= (and b!2137475 (not res!923367)) b!2137446))

(assert (= (and b!2137446 (not res!923369)) b!2137471))

(assert (= (and b!2137471 (not res!923366)) b!2137467))

(assert (= (and b!2137467 (not res!923360)) b!2137452))

(assert (= (and b!2137452 (not res!923354)) b!2137469))

(assert (= (and b!2137469 (not res!923368)) b!2137480))

(assert (= (and b!2137480 (not res!923363)) b!2137444))

(assert (= (and b!2137444 (not res!923364)) b!2137451))

(assert (= (and b!2137457 condMapEmpty!12926) mapIsEmpty!12925))

(assert (= (and b!2137457 (not condMapEmpty!12926)) mapNonEmpty!12927))

(assert (= b!2137442 b!2137457))

(assert (= b!2137448 b!2137442))

(assert (= b!2137482 b!2137448))

(assert (= (and b!2137478 ((_ is LongMap!2705) (v!28796 (underlying!5606 (cache!3000 cacheFurthestNullable!114))))) b!2137482))

(assert (= b!2137449 b!2137478))

(assert (= (and b!2137445 ((_ is HashMap!2619) (cache!3000 cacheFurthestNullable!114))) b!2137449))

(assert (= b!2137445 b!2137447))

(assert (= start!207666 b!2137445))

(assert (= (and b!2137476 condMapEmpty!12927) mapIsEmpty!12927))

(assert (= (and b!2137476 (not condMapEmpty!12927)) mapNonEmpty!12926))

(assert (= b!2137459 b!2137476))

(assert (= b!2137456 b!2137459))

(assert (= b!2137443 b!2137456))

(assert (= (and b!2137477 ((_ is LongMap!2706) (v!28798 (underlying!5608 (cache!3001 cacheDown!1098))))) b!2137443))

(assert (= b!2137450 b!2137477))

(assert (= (and b!2137470 ((_ is HashMap!2620) (cache!3001 cacheDown!1098))) b!2137450))

(assert (= start!207666 b!2137470))

(assert (= (and b!2137479 condMapEmpty!12925) mapIsEmpty!12926))

(assert (= (and b!2137479 (not condMapEmpty!12925)) mapNonEmpty!12925))

(assert (= b!2137460 b!2137479))

(assert (= b!2137484 b!2137460))

(assert (= b!2137463 b!2137484))

(assert (= (and b!2137472 ((_ is LongMap!2707) (v!28800 (underlying!5610 (cache!3002 cacheUp!979))))) b!2137463))

(assert (= b!2137466 b!2137472))

(assert (= (and b!2137464 ((_ is HashMap!2621) (cache!3002 cacheUp!979))) b!2137466))

(assert (= start!207666 b!2137464))

(assert (= (and start!207666 condSetEmpty!16052) setIsEmpty!16051))

(assert (= (and start!207666 (not condSetEmpty!16052)) setNonEmpty!16052))

(assert (= setNonEmpty!16052 b!2137468))

(assert (= start!207666 b!2137485))

(assert (= (and b!2137473 condSetEmpty!16051) setIsEmpty!16052))

(assert (= (and b!2137473 (not condSetEmpty!16051)) setNonEmpty!16051))

(assert (= setNonEmpty!16051 b!2137462))

(assert (= b!2137473 b!2137440))

(assert (= b!2137481 b!2137473))

(assert (= (and start!207666 ((_ is Cons!24224) stack!8)) b!2137481))

(declare-fun m!2584378 () Bool)

(assert (=> b!2137451 m!2584378))

(declare-fun m!2584380 () Bool)

(assert (=> b!2137458 m!2584380))

(declare-fun m!2584382 () Bool)

(assert (=> b!2137445 m!2584382))

(declare-fun m!2584384 () Bool)

(assert (=> b!2137446 m!2584384))

(declare-fun m!2584386 () Bool)

(assert (=> b!2137446 m!2584386))

(declare-fun m!2584388 () Bool)

(assert (=> b!2137446 m!2584388))

(assert (=> b!2137446 m!2584388))

(declare-fun m!2584390 () Bool)

(assert (=> b!2137446 m!2584390))

(declare-fun m!2584392 () Bool)

(assert (=> mapNonEmpty!12926 m!2584392))

(declare-fun m!2584394 () Bool)

(assert (=> b!2137480 m!2584394))

(declare-fun m!2584396 () Bool)

(assert (=> b!2137440 m!2584396))

(declare-fun m!2584398 () Bool)

(assert (=> b!2137442 m!2584398))

(declare-fun m!2584400 () Bool)

(assert (=> b!2137442 m!2584400))

(declare-fun m!2584402 () Bool)

(assert (=> b!2137481 m!2584402))

(declare-fun m!2584404 () Bool)

(assert (=> start!207666 m!2584404))

(declare-fun m!2584406 () Bool)

(assert (=> start!207666 m!2584406))

(declare-fun m!2584408 () Bool)

(assert (=> start!207666 m!2584408))

(declare-fun m!2584410 () Bool)

(assert (=> start!207666 m!2584410))

(declare-fun m!2584412 () Bool)

(assert (=> mapNonEmpty!12925 m!2584412))

(declare-fun m!2584414 () Bool)

(assert (=> b!2137461 m!2584414))

(declare-fun m!2584416 () Bool)

(assert (=> b!2137483 m!2584416))

(declare-fun m!2584418 () Bool)

(assert (=> b!2137483 m!2584418))

(declare-fun m!2584420 () Bool)

(assert (=> b!2137460 m!2584420))

(declare-fun m!2584422 () Bool)

(assert (=> b!2137460 m!2584422))

(declare-fun m!2584424 () Bool)

(assert (=> b!2137485 m!2584424))

(declare-fun m!2584426 () Bool)

(assert (=> b!2137471 m!2584426))

(assert (=> b!2137471 m!2584426))

(declare-fun m!2584428 () Bool)

(assert (=> b!2137471 m!2584428))

(assert (=> b!2137471 m!2584418))

(assert (=> b!2137467 m!2584378))

(declare-fun m!2584430 () Bool)

(assert (=> b!2137486 m!2584430))

(declare-fun m!2584432 () Bool)

(assert (=> b!2137473 m!2584432))

(declare-fun m!2584434 () Bool)

(assert (=> b!2137444 m!2584434))

(declare-fun m!2584436 () Bool)

(assert (=> b!2137474 m!2584436))

(declare-fun m!2584438 () Bool)

(assert (=> mapNonEmpty!12927 m!2584438))

(declare-fun m!2584440 () Bool)

(assert (=> b!2137475 m!2584440))

(declare-fun m!2584442 () Bool)

(assert (=> b!2137487 m!2584442))

(declare-fun m!2584444 () Bool)

(assert (=> setNonEmpty!16051 m!2584444))

(declare-fun m!2584446 () Bool)

(assert (=> b!2137441 m!2584446))

(declare-fun m!2584448 () Bool)

(assert (=> setNonEmpty!16052 m!2584448))

(declare-fun m!2584450 () Bool)

(assert (=> b!2137447 m!2584450))

(declare-fun m!2584452 () Bool)

(assert (=> b!2137459 m!2584452))

(declare-fun m!2584454 () Bool)

(assert (=> b!2137459 m!2584454))

(assert (=> b!2137455 m!2584418))

(declare-fun m!2584456 () Bool)

(assert (=> b!2137455 m!2584456))

(declare-fun m!2584458 () Bool)

(assert (=> b!2137452 m!2584458))

(check-sat (not b_next!63455) b_and!172323 (not b!2137446) (not b!2137479) (not b!2137447) (not b_next!63445) (not b!2137480) (not mapNonEmpty!12927) (not b!2137481) (not b!2137457) (not b!2137474) (not b!2137486) (not setNonEmpty!16051) (not b!2137444) (not b!2137440) (not b!2137471) (not b!2137441) (not b!2137487) (not b!2137462) (not b_next!63447) (not b_next!63449) (not b!2137483) (not setNonEmpty!16052) (not b!2137458) (not b!2137455) b_and!172321 (not mapNonEmpty!12926) b_and!172331 (not b!2137473) (not b!2137445) (not b_next!63453) (not b!2137460) (not b!2137485) b_and!172325 (not b!2137452) (not b!2137442) (not b!2137461) (not b!2137468) b_and!172327 (not b_next!63451) (not b!2137451) (not mapNonEmpty!12925) b_and!172329 (not b!2137475) (not b!2137467) (not start!207666) (not b!2137459) (not b!2137476))
(check-sat (not b_next!63455) b_and!172323 b_and!172321 (not b_next!63445) b_and!172331 (not b_next!63453) b_and!172325 b_and!172329 (not b_next!63447) (not b_next!63449) b_and!172327 (not b_next!63451))
