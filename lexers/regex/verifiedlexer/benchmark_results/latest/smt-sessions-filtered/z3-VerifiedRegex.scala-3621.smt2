; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207524 () Bool)

(assert start!207524)

(declare-fun b!2130725 () Bool)

(declare-fun b_free!62165 () Bool)

(declare-fun b_next!62869 () Bool)

(assert (=> b!2130725 (= b_free!62165 (not b_next!62869))))

(declare-fun tp!655136 () Bool)

(declare-fun b_and!171745 () Bool)

(assert (=> b!2130725 (= tp!655136 b_and!171745)))

(declare-fun b!2130717 () Bool)

(declare-fun b_free!62167 () Bool)

(declare-fun b_next!62871 () Bool)

(assert (=> b!2130717 (= b_free!62167 (not b_next!62871))))

(declare-fun tp!655154 () Bool)

(declare-fun b_and!171747 () Bool)

(assert (=> b!2130717 (= tp!655154 b_and!171747)))

(declare-fun b!2130688 () Bool)

(declare-fun b_free!62169 () Bool)

(declare-fun b_next!62873 () Bool)

(assert (=> b!2130688 (= b_free!62169 (not b_next!62873))))

(declare-fun tp!655156 () Bool)

(declare-fun b_and!171749 () Bool)

(assert (=> b!2130688 (= tp!655156 b_and!171749)))

(declare-fun b!2130723 () Bool)

(declare-fun b_free!62171 () Bool)

(declare-fun b_next!62875 () Bool)

(assert (=> b!2130723 (= b_free!62171 (not b_next!62875))))

(declare-fun tp!655149 () Bool)

(declare-fun b_and!171751 () Bool)

(assert (=> b!2130723 (= tp!655149 b_and!171751)))

(declare-fun b!2130702 () Bool)

(declare-fun b_free!62173 () Bool)

(declare-fun b_next!62877 () Bool)

(assert (=> b!2130702 (= b_free!62173 (not b_next!62877))))

(declare-fun tp!655159 () Bool)

(declare-fun b_and!171753 () Bool)

(assert (=> b!2130702 (= tp!655159 b_and!171753)))

(declare-fun b!2130686 () Bool)

(declare-fun b_free!62175 () Bool)

(declare-fun b_next!62879 () Bool)

(assert (=> b!2130686 (= b_free!62175 (not b_next!62879))))

(declare-fun tp!655139 () Bool)

(declare-fun b_and!171755 () Bool)

(assert (=> b!2130686 (= tp!655139 b_and!171755)))

(declare-fun b!2130721 () Bool)

(assert (=> b!2130721 true))

(declare-fun bs!444244 () Bool)

(declare-fun b!2130703 () Bool)

(assert (= bs!444244 (and b!2130703 b!2130721)))

(declare-fun lambda!79163 () Int)

(declare-fun lambda!79162 () Int)

(assert (=> bs!444244 (not (= lambda!79163 lambda!79162))))

(assert (=> b!2130703 true))

(declare-fun e!1358984 () Bool)

(declare-fun e!1358979 () Bool)

(assert (=> b!2130686 (= e!1358984 (and e!1358979 tp!655139))))

(declare-fun b!2130687 () Bool)

(declare-fun e!1358977 () Bool)

(declare-datatypes ((C!11564 0))(
  ( (C!11565 (val!6768 Int)) )
))
(declare-datatypes ((Regex!5709 0))(
  ( (ElementMatch!5709 (c!340179 C!11564)) (Concat!10011 (regOne!11930 Regex!5709) (regTwo!11930 Regex!5709)) (EmptyExpr!5709) (Star!5709 (reg!6038 Regex!5709)) (EmptyLang!5709) (Union!5709 (regOne!11931 Regex!5709) (regTwo!11931 Regex!5709)) )
))
(declare-datatypes ((List!24033 0))(
  ( (Nil!23949) (Cons!23949 (h!29350 Regex!5709) (t!196561 List!24033)) )
))
(declare-datatypes ((Context!2558 0))(
  ( (Context!2559 (exprs!1779 List!24033)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3096 0))(
  ( (tuple3!3097 (_1!13857 (InoxSet Context!2558)) (_2!13857 Int) (_3!2018 Int)) )
))
(declare-datatypes ((tuple2!23678 0))(
  ( (tuple2!23679 (_1!13858 tuple3!3096) (_2!13858 Int)) )
))
(declare-datatypes ((List!24034 0))(
  ( (Nil!23950) (Cons!23950 (h!29351 tuple2!23678) (t!196562 List!24034)) )
))
(declare-datatypes ((array!8783 0))(
  ( (array!8784 (arr!3903 (Array (_ BitVec 32) (_ BitVec 64))) (size!18733 (_ BitVec 32))) )
))
(declare-datatypes ((array!8785 0))(
  ( (array!8786 (arr!3904 (Array (_ BitVec 32) List!24034)) (size!18734 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5146 0))(
  ( (LongMapFixedSize!5147 (defaultEntry!2938 Int) (mask!6743 (_ BitVec 32)) (extraKeys!2821 (_ BitVec 32)) (zeroValue!2831 List!24034) (minValue!2831 List!24034) (_size!5197 (_ BitVec 32)) (_keys!2870 array!8783) (_values!2853 array!8785) (_vacant!2634 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10117 0))(
  ( (Cell!10118 (v!28500 LongMapFixedSize!5146)) )
))
(declare-datatypes ((List!24035 0))(
  ( (Nil!23951) (Cons!23951 (h!29352 C!11564) (t!196563 List!24035)) )
))
(declare-datatypes ((IArray!15699 0))(
  ( (IArray!15700 (innerList!7907 List!24035)) )
))
(declare-datatypes ((Conc!7847 0))(
  ( (Node!7847 (left!18478 Conc!7847) (right!18808 Conc!7847) (csize!15924 Int) (cheight!8058 Int)) (Leaf!11469 (xs!10789 IArray!15699) (csize!15925 Int)) (Empty!7847) )
))
(declare-datatypes ((MutLongMap!2573 0))(
  ( (LongMap!2573 (underlying!5341 Cell!10117)) (MutLongMapExt!2572 (__x!15895 Int)) )
))
(declare-datatypes ((Cell!10119 0))(
  ( (Cell!10120 (v!28501 MutLongMap!2573)) )
))
(declare-datatypes ((Hashable!2487 0))(
  ( (HashableExt!2486 (__x!15896 Int)) )
))
(declare-datatypes ((MutableMap!2487 0))(
  ( (MutableMapExt!2486 (__x!15897 Int)) (HashMap!2487 (underlying!5342 Cell!10119) (hashF!4410 Hashable!2487) (_size!5198 (_ BitVec 32)) (defaultValue!2649 Int)) )
))
(declare-datatypes ((BalanceConc!15456 0))(
  ( (BalanceConc!15457 (c!340180 Conc!7847)) )
))
(declare-datatypes ((CacheFurthestNullable!664 0))(
  ( (CacheFurthestNullable!665 (cache!2868 MutableMap!2487) (totalInput!2995 BalanceConc!15456)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!664)

(declare-fun tp!655151 () Bool)

(declare-fun inv!31577 (Conc!7847) Bool)

(assert (=> b!2130687 (= e!1358977 (and (inv!31577 (c!340180 (totalInput!2995 cacheFurthestNullable!114))) tp!655151))))

(declare-fun e!1358980 () Bool)

(declare-fun e!1358976 () Bool)

(assert (=> b!2130688 (= e!1358980 (and e!1358976 tp!655156))))

(declare-fun b!2130689 () Bool)

(declare-fun e!1358963 () Bool)

(declare-fun e!1358962 () Bool)

(declare-datatypes ((StackFrame!112 0))(
  ( (StackFrame!113 (z!5784 (InoxSet Context!2558)) (from!2670 Int) (lastNullablePos!357 Int) (res!921153 Int) (totalInput!2996 BalanceConc!15456)) )
))
(declare-datatypes ((List!24036 0))(
  ( (Nil!23952) (Cons!23952 (h!29353 StackFrame!112) (t!196564 List!24036)) )
))
(declare-fun stack!8 () List!24036)

(declare-fun setRes!15720 () Bool)

(declare-fun inv!31578 (BalanceConc!15456) Bool)

(assert (=> b!2130689 (= e!1358962 (and setRes!15720 (inv!31578 (totalInput!2996 (h!29353 stack!8))) e!1358963))))

(declare-fun condSetEmpty!15721 () Bool)

(assert (=> b!2130689 (= condSetEmpty!15721 (= (z!5784 (h!29353 stack!8)) ((as const (Array Context!2558 Bool)) false)))))

(declare-fun b!2130690 () Bool)

(declare-fun e!1358992 () Bool)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2130690 (= e!1358992 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun setIsEmpty!15720 () Bool)

(declare-fun setRes!15721 () Bool)

(assert (=> setIsEmpty!15720 setRes!15721))

(declare-fun b!2130691 () Bool)

(declare-fun e!1358987 () Bool)

(declare-fun tp!655141 () Bool)

(declare-fun mapRes!12484 () Bool)

(assert (=> b!2130691 (= e!1358987 (and tp!655141 mapRes!12484))))

(declare-fun condMapEmpty!12485 () Bool)

(declare-fun mapDefault!12484 () List!24034)

(assert (=> b!2130691 (= condMapEmpty!12485 (= (arr!3904 (_values!2853 (v!28500 (underlying!5341 (v!28501 (underlying!5342 (cache!2868 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24034)) mapDefault!12484)))))

(declare-fun b!2130692 () Bool)

(declare-fun e!1358985 () Bool)

(declare-fun tp!655148 () Bool)

(assert (=> b!2130692 (= e!1358985 tp!655148)))

(declare-fun b!2130693 () Bool)

(declare-fun res!921143 () Bool)

(declare-fun e!1358993 () Bool)

(assert (=> b!2130693 (=> (not res!921143) (not e!1358993))))

(declare-datatypes ((tuple2!23680 0))(
  ( (tuple2!23681 (_1!13859 Context!2558) (_2!13859 C!11564)) )
))
(declare-datatypes ((tuple2!23682 0))(
  ( (tuple2!23683 (_1!13860 tuple2!23680) (_2!13860 (InoxSet Context!2558))) )
))
(declare-datatypes ((List!24037 0))(
  ( (Nil!23953) (Cons!23953 (h!29354 tuple2!23682) (t!196565 List!24037)) )
))
(declare-datatypes ((array!8787 0))(
  ( (array!8788 (arr!3905 (Array (_ BitVec 32) List!24037)) (size!18735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5148 0))(
  ( (LongMapFixedSize!5149 (defaultEntry!2939 Int) (mask!6744 (_ BitVec 32)) (extraKeys!2822 (_ BitVec 32)) (zeroValue!2832 List!24037) (minValue!2832 List!24037) (_size!5199 (_ BitVec 32)) (_keys!2871 array!8783) (_values!2854 array!8787) (_vacant!2635 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10121 0))(
  ( (Cell!10122 (v!28502 LongMapFixedSize!5148)) )
))
(declare-datatypes ((MutLongMap!2574 0))(
  ( (LongMap!2574 (underlying!5343 Cell!10121)) (MutLongMapExt!2573 (__x!15898 Int)) )
))
(declare-datatypes ((Cell!10123 0))(
  ( (Cell!10124 (v!28503 MutLongMap!2574)) )
))
(declare-datatypes ((Hashable!2488 0))(
  ( (HashableExt!2487 (__x!15899 Int)) )
))
(declare-datatypes ((MutableMap!2488 0))(
  ( (MutableMapExt!2487 (__x!15900 Int)) (HashMap!2488 (underlying!5344 Cell!10123) (hashF!4411 Hashable!2488) (_size!5200 (_ BitVec 32)) (defaultValue!2650 Int)) )
))
(declare-datatypes ((CacheUp!1726 0))(
  ( (CacheUp!1727 (cache!2869 MutableMap!2488)) )
))
(declare-fun cacheUp!979 () CacheUp!1726)

(declare-fun valid!2022 (CacheUp!1726) Bool)

(assert (=> b!2130693 (= res!921143 (valid!2022 cacheUp!979))))

(declare-fun mapIsEmpty!12484 () Bool)

(declare-fun mapRes!12486 () Bool)

(assert (=> mapIsEmpty!12484 mapRes!12486))

(declare-fun tp!655135 () Bool)

(declare-fun setNonEmpty!15720 () Bool)

(declare-fun e!1358978 () Bool)

(declare-fun setElem!15720 () Context!2558)

(declare-fun inv!31579 (Context!2558) Bool)

(assert (=> setNonEmpty!15720 (= setRes!15721 (and tp!655135 (inv!31579 setElem!15720) e!1358978))))

(declare-fun z!3839 () (InoxSet Context!2558))

(declare-fun setRest!15721 () (InoxSet Context!2558))

(assert (=> setNonEmpty!15720 (= z!3839 ((_ map or) (store ((as const (Array Context!2558 Bool)) false) setElem!15720 true) setRest!15721))))

(declare-fun tp!655160 () Bool)

(declare-fun setNonEmpty!15721 () Bool)

(declare-fun setElem!15721 () Context!2558)

(assert (=> setNonEmpty!15721 (= setRes!15720 (and tp!655160 (inv!31579 setElem!15721) e!1358985))))

(declare-fun setRest!15720 () (InoxSet Context!2558))

(assert (=> setNonEmpty!15721 (= (z!5784 (h!29353 stack!8)) ((_ map or) (store ((as const (Array Context!2558 Bool)) false) setElem!15721 true) setRest!15720))))

(declare-fun tp!655140 () Bool)

(declare-fun e!1358983 () Bool)

(declare-fun b!2130695 () Bool)

(declare-fun inv!31580 (StackFrame!112) Bool)

(assert (=> b!2130695 (= e!1358983 (and (inv!31580 (h!29353 stack!8)) e!1358962 tp!655140))))

(declare-fun b!2130696 () Bool)

(declare-fun res!921145 () Bool)

(declare-fun e!1358966 () Bool)

(assert (=> b!2130696 (=> res!921145 e!1358966)))

(declare-fun lostCauseZipper!71 ((InoxSet Context!2558)) Bool)

(assert (=> b!2130696 (= res!921145 (lostCauseZipper!71 z!3839))))

(declare-fun mapNonEmpty!12484 () Bool)

(declare-fun tp!655142 () Bool)

(declare-fun tp!655138 () Bool)

(assert (=> mapNonEmpty!12484 (= mapRes!12484 (and tp!655142 tp!655138))))

(declare-fun mapValue!12486 () List!24034)

(declare-fun mapRest!12485 () (Array (_ BitVec 32) List!24034))

(declare-fun mapKey!12486 () (_ BitVec 32))

(assert (=> mapNonEmpty!12484 (= (arr!3904 (_values!2853 (v!28500 (underlying!5341 (v!28501 (underlying!5342 (cache!2868 cacheFurthestNullable!114))))))) (store mapRest!12485 mapKey!12486 mapValue!12486))))

(declare-fun b!2130697 () Bool)

(declare-fun e!1358989 () Bool)

(declare-fun tp!655153 () Bool)

(declare-fun mapRes!12485 () Bool)

(assert (=> b!2130697 (= e!1358989 (and tp!655153 mapRes!12485))))

(declare-fun condMapEmpty!12486 () Bool)

(declare-fun mapDefault!12486 () List!24037)

(assert (=> b!2130697 (= condMapEmpty!12486 (= (arr!3905 (_values!2854 (v!28502 (underlying!5343 (v!28503 (underlying!5344 (cache!2869 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24037)) mapDefault!12486)))))

(declare-fun b!2130698 () Bool)

(declare-fun e!1358994 () Bool)

(declare-fun e!1358967 () Bool)

(assert (=> b!2130698 (= e!1358994 (and e!1358967 (inv!31578 (totalInput!2995 cacheFurthestNullable!114)) e!1358977))))

(declare-fun b!2130699 () Bool)

(declare-fun tp!655155 () Bool)

(assert (=> b!2130699 (= e!1358963 (and (inv!31577 (c!340180 (totalInput!2996 (h!29353 stack!8)))) tp!655155))))

(declare-fun b!2130700 () Bool)

(declare-fun e!1358969 () Bool)

(assert (=> b!2130700 (= e!1358969 e!1358980)))

(declare-fun b!2130701 () Bool)

(declare-fun e!1358964 () Bool)

(declare-fun e!1358981 () Bool)

(assert (=> b!2130701 (= e!1358964 e!1358981)))

(declare-fun e!1358982 () Bool)

(assert (=> b!2130702 (= e!1358967 (and e!1358982 tp!655159))))

(declare-fun res!921141 () Bool)

(declare-fun e!1358961 () Bool)

(assert (=> b!2130703 (=> (not res!921141) (not e!1358961))))

(declare-fun forall!4904 (List!24036 Int) Bool)

(assert (=> b!2130703 (= res!921141 (forall!4904 stack!8 lambda!79163))))

(declare-fun b!2130704 () Bool)

(assert (=> b!2130704 (= e!1358961 (not e!1358966))))

(declare-fun res!921147 () Bool)

(assert (=> b!2130704 (=> res!921147 e!1358966)))

(get-info :version)

(declare-datatypes ((Option!4890 0))(
  ( (None!4889) (Some!4889 (v!28504 Int)) )
))
(declare-fun get!7354 (CacheFurthestNullable!664 (InoxSet Context!2558) Int Int) Option!4890)

(assert (=> b!2130704 (= res!921147 ((_ is Some!4889) (get!7354 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2130704 (forall!4904 stack!8 lambda!79162)))

(declare-fun b!2130705 () Bool)

(declare-fun e!1358973 () Bool)

(declare-fun lt!796406 () MutLongMap!2573)

(assert (=> b!2130705 (= e!1358982 (and e!1358973 ((_ is LongMap!2573) lt!796406)))))

(assert (=> b!2130705 (= lt!796406 (v!28501 (underlying!5342 (cache!2868 cacheFurthestNullable!114))))))

(declare-fun b!2130706 () Bool)

(declare-fun e!1358975 () Bool)

(assert (=> b!2130706 (= e!1358975 e!1358964)))

(declare-fun b!2130707 () Bool)

(declare-fun e!1358974 () Bool)

(declare-fun tp!655144 () Bool)

(assert (=> b!2130707 (= e!1358974 (and tp!655144 mapRes!12486))))

(declare-fun condMapEmpty!12484 () Bool)

(declare-datatypes ((tuple3!3098 0))(
  ( (tuple3!3099 (_1!13861 Regex!5709) (_2!13861 Context!2558) (_3!2019 C!11564)) )
))
(declare-datatypes ((tuple2!23684 0))(
  ( (tuple2!23685 (_1!13862 tuple3!3098) (_2!13862 (InoxSet Context!2558))) )
))
(declare-datatypes ((List!24038 0))(
  ( (Nil!23954) (Cons!23954 (h!29355 tuple2!23684) (t!196566 List!24038)) )
))
(declare-datatypes ((Hashable!2489 0))(
  ( (HashableExt!2488 (__x!15901 Int)) )
))
(declare-datatypes ((array!8789 0))(
  ( (array!8790 (arr!3906 (Array (_ BitVec 32) List!24038)) (size!18736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5150 0))(
  ( (LongMapFixedSize!5151 (defaultEntry!2940 Int) (mask!6745 (_ BitVec 32)) (extraKeys!2823 (_ BitVec 32)) (zeroValue!2833 List!24038) (minValue!2833 List!24038) (_size!5201 (_ BitVec 32)) (_keys!2872 array!8783) (_values!2855 array!8789) (_vacant!2636 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10125 0))(
  ( (Cell!10126 (v!28505 LongMapFixedSize!5150)) )
))
(declare-datatypes ((MutLongMap!2575 0))(
  ( (LongMap!2575 (underlying!5345 Cell!10125)) (MutLongMapExt!2574 (__x!15902 Int)) )
))
(declare-datatypes ((Cell!10127 0))(
  ( (Cell!10128 (v!28506 MutLongMap!2575)) )
))
(declare-datatypes ((MutableMap!2489 0))(
  ( (MutableMapExt!2488 (__x!15903 Int)) (HashMap!2489 (underlying!5346 Cell!10127) (hashF!4412 Hashable!2489) (_size!5202 (_ BitVec 32)) (defaultValue!2651 Int)) )
))
(declare-datatypes ((CacheDown!1708 0))(
  ( (CacheDown!1709 (cache!2870 MutableMap!2489)) )
))
(declare-fun cacheDown!1098 () CacheDown!1708)

(declare-fun mapDefault!12485 () List!24038)

(assert (=> b!2130707 (= condMapEmpty!12484 (= (arr!3906 (_values!2855 (v!28505 (underlying!5345 (v!28506 (underlying!5346 (cache!2870 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24038)) mapDefault!12485)))))

(declare-fun b!2130708 () Bool)

(declare-fun tp!655158 () Bool)

(assert (=> b!2130708 (= e!1358978 tp!655158)))

(declare-fun b!2130709 () Bool)

(declare-fun lt!796409 () Int)

(assert (=> b!2130709 (= e!1358966 (and (<= 0 from!1043) (< from!1043 lt!796409)))))

(declare-fun b!2130710 () Bool)

(declare-fun e!1358972 () Bool)

(assert (=> b!2130710 (= e!1358973 e!1358972)))

(declare-fun b!2130711 () Bool)

(declare-fun e!1358986 () Bool)

(assert (=> b!2130711 (= e!1358986 e!1358984)))

(declare-fun b!2130712 () Bool)

(declare-fun e!1358960 () Bool)

(assert (=> b!2130712 (= e!1358972 e!1358960)))

(declare-fun b!2130713 () Bool)

(declare-fun e!1358968 () Bool)

(declare-fun e!1358995 () Bool)

(assert (=> b!2130713 (= e!1358968 e!1358995)))

(declare-fun b!2130714 () Bool)

(declare-fun res!921149 () Bool)

(assert (=> b!2130714 (=> (not res!921149) (not e!1358993))))

(declare-fun valid!2023 (CacheDown!1708) Bool)

(assert (=> b!2130714 (= res!921149 (valid!2023 cacheDown!1098))))

(declare-fun b!2130715 () Bool)

(declare-fun lt!796408 () MutLongMap!2575)

(assert (=> b!2130715 (= e!1358976 (and e!1358968 ((_ is LongMap!2575) lt!796408)))))

(assert (=> b!2130715 (= lt!796408 (v!28506 (underlying!5346 (cache!2870 cacheDown!1098))))))

(declare-fun b!2130716 () Bool)

(declare-fun lt!796407 () MutLongMap!2574)

(assert (=> b!2130716 (= e!1358979 (and e!1358975 ((_ is LongMap!2574) lt!796407)))))

(assert (=> b!2130716 (= lt!796407 (v!28503 (underlying!5344 (cache!2869 cacheUp!979))))))

(declare-fun setIsEmpty!15721 () Bool)

(assert (=> setIsEmpty!15721 setRes!15720))

(declare-fun tp!655157 () Bool)

(declare-fun tp!655134 () Bool)

(declare-fun array_inv!2791 (array!8783) Bool)

(declare-fun array_inv!2792 (array!8787) Bool)

(assert (=> b!2130717 (= e!1358981 (and tp!655154 tp!655157 tp!655134 (array_inv!2791 (_keys!2871 (v!28502 (underlying!5343 (v!28503 (underlying!5344 (cache!2869 cacheUp!979))))))) (array_inv!2792 (_values!2854 (v!28502 (underlying!5343 (v!28503 (underlying!5344 (cache!2869 cacheUp!979))))))) e!1358989))))

(declare-fun b!2130718 () Bool)

(declare-fun e!1358990 () Bool)

(assert (=> b!2130718 (= e!1358990 e!1358993)))

(declare-fun res!921150 () Bool)

(assert (=> b!2130718 (=> (not res!921150) (not e!1358993))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2130718 (= res!921150 (and (= totalInputSize!296 lt!796409) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15456)

(declare-fun size!18737 (BalanceConc!15456) Int)

(assert (=> b!2130718 (= lt!796409 (size!18737 totalInput!851))))

(declare-fun mapNonEmpty!12485 () Bool)

(declare-fun tp!655152 () Bool)

(declare-fun tp!655137 () Bool)

(assert (=> mapNonEmpty!12485 (= mapRes!12485 (and tp!655152 tp!655137))))

(declare-fun mapValue!12485 () List!24037)

(declare-fun mapKey!12485 () (_ BitVec 32))

(declare-fun mapRest!12484 () (Array (_ BitVec 32) List!24037))

(assert (=> mapNonEmpty!12485 (= (arr!3905 (_values!2854 (v!28502 (underlying!5343 (v!28503 (underlying!5344 (cache!2869 cacheUp!979))))))) (store mapRest!12484 mapKey!12485 mapValue!12485))))

(declare-fun b!2130719 () Bool)

(declare-fun e!1358965 () Bool)

(assert (=> b!2130719 (= e!1358995 e!1358965)))

(declare-fun b!2130720 () Bool)

(declare-fun e!1358988 () Bool)

(declare-fun tp!655161 () Bool)

(assert (=> b!2130720 (= e!1358988 (and (inv!31577 (c!340180 totalInput!851)) tp!655161))))

(assert (=> b!2130721 (= e!1358993 e!1358961)))

(declare-fun res!921152 () Bool)

(assert (=> b!2130721 (=> (not res!921152) (not e!1358961))))

(assert (=> b!2130721 (= res!921152 (forall!4904 stack!8 lambda!79162))))

(declare-fun lt!796410 () Int)

(declare-fun furthestNullablePosition!31 ((InoxSet Context!2558) Int BalanceConc!15456 Int Int) Int)

(assert (=> b!2130721 (= lt!796410 (furthestNullablePosition!31 z!3839 from!1043 totalInput!851 lt!796409 lastNullablePos!123))))

(declare-fun res!921140 () Bool)

(assert (=> start!207524 (=> (not res!921140) (not e!1358990))))

(assert (=> start!207524 (= res!921140 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207524 e!1358990))

(declare-fun inv!31581 (CacheFurthestNullable!664) Bool)

(assert (=> start!207524 (and (inv!31581 cacheFurthestNullable!114) e!1358994)))

(assert (=> start!207524 true))

(declare-fun inv!31582 (CacheDown!1708) Bool)

(assert (=> start!207524 (and (inv!31582 cacheDown!1098) e!1358969)))

(declare-fun inv!31583 (CacheUp!1726) Bool)

(assert (=> start!207524 (and (inv!31583 cacheUp!979) e!1358986)))

(declare-fun condSetEmpty!15720 () Bool)

(assert (=> start!207524 (= condSetEmpty!15720 (= z!3839 ((as const (Array Context!2558 Bool)) false)))))

(assert (=> start!207524 setRes!15721))

(assert (=> start!207524 (and (inv!31578 totalInput!851) e!1358988)))

(assert (=> start!207524 e!1358983))

(declare-fun b!2130694 () Bool)

(declare-fun res!921142 () Bool)

(assert (=> b!2130694 (=> (not res!921142) (not e!1358993))))

(assert (=> b!2130694 (= res!921142 e!1358992)))

(declare-fun res!921144 () Bool)

(assert (=> b!2130694 (=> res!921144 e!1358992)))

(declare-fun nullableZipper!94 ((InoxSet Context!2558)) Bool)

(assert (=> b!2130694 (= res!921144 (not (nullableZipper!94 z!3839)))))

(declare-fun b!2130722 () Bool)

(declare-fun res!921151 () Bool)

(assert (=> b!2130722 (=> res!921151 e!1358966)))

(assert (=> b!2130722 (= res!921151 (= from!1043 totalInputSize!296))))

(declare-fun tp!655162 () Bool)

(declare-fun tp!655146 () Bool)

(declare-fun array_inv!2793 (array!8789) Bool)

(assert (=> b!2130723 (= e!1358965 (and tp!655149 tp!655146 tp!655162 (array_inv!2791 (_keys!2872 (v!28505 (underlying!5345 (v!28506 (underlying!5346 (cache!2870 cacheDown!1098))))))) (array_inv!2793 (_values!2855 (v!28505 (underlying!5345 (v!28506 (underlying!5346 (cache!2870 cacheDown!1098))))))) e!1358974))))

(declare-fun b!2130724 () Bool)

(declare-fun res!921146 () Bool)

(assert (=> b!2130724 (=> (not res!921146) (not e!1358993))))

(assert (=> b!2130724 (= res!921146 (= (totalInput!2995 cacheFurthestNullable!114) totalInput!851))))

(declare-fun tp!655143 () Bool)

(declare-fun tp!655145 () Bool)

(declare-fun array_inv!2794 (array!8785) Bool)

(assert (=> b!2130725 (= e!1358960 (and tp!655136 tp!655143 tp!655145 (array_inv!2791 (_keys!2870 (v!28500 (underlying!5341 (v!28501 (underlying!5342 (cache!2868 cacheFurthestNullable!114))))))) (array_inv!2794 (_values!2853 (v!28500 (underlying!5341 (v!28501 (underlying!5342 (cache!2868 cacheFurthestNullable!114))))))) e!1358987))))

(declare-fun mapIsEmpty!12485 () Bool)

(assert (=> mapIsEmpty!12485 mapRes!12485))

(declare-fun b!2130726 () Bool)

(declare-fun res!921148 () Bool)

(assert (=> b!2130726 (=> (not res!921148) (not e!1358993))))

(declare-fun valid!2024 (CacheFurthestNullable!664) Bool)

(assert (=> b!2130726 (= res!921148 (valid!2024 cacheFurthestNullable!114))))

(declare-fun mapIsEmpty!12486 () Bool)

(assert (=> mapIsEmpty!12486 mapRes!12484))

(declare-fun mapNonEmpty!12486 () Bool)

(declare-fun tp!655147 () Bool)

(declare-fun tp!655150 () Bool)

(assert (=> mapNonEmpty!12486 (= mapRes!12486 (and tp!655147 tp!655150))))

(declare-fun mapRest!12486 () (Array (_ BitVec 32) List!24038))

(declare-fun mapValue!12484 () List!24038)

(declare-fun mapKey!12484 () (_ BitVec 32))

(assert (=> mapNonEmpty!12486 (= (arr!3906 (_values!2855 (v!28505 (underlying!5345 (v!28506 (underlying!5346 (cache!2870 cacheDown!1098))))))) (store mapRest!12486 mapKey!12484 mapValue!12484))))

(assert (= (and start!207524 res!921140) b!2130718))

(assert (= (and b!2130718 res!921150) b!2130694))

(assert (= (and b!2130694 (not res!921144)) b!2130690))

(assert (= (and b!2130694 res!921142) b!2130693))

(assert (= (and b!2130693 res!921143) b!2130714))

(assert (= (and b!2130714 res!921149) b!2130726))

(assert (= (and b!2130726 res!921148) b!2130724))

(assert (= (and b!2130724 res!921146) b!2130721))

(assert (= (and b!2130721 res!921152) b!2130703))

(assert (= (and b!2130703 res!921141) b!2130704))

(assert (= (and b!2130704 (not res!921147)) b!2130722))

(assert (= (and b!2130722 (not res!921151)) b!2130696))

(assert (= (and b!2130696 (not res!921145)) b!2130709))

(assert (= (and b!2130691 condMapEmpty!12485) mapIsEmpty!12486))

(assert (= (and b!2130691 (not condMapEmpty!12485)) mapNonEmpty!12484))

(assert (= b!2130725 b!2130691))

(assert (= b!2130712 b!2130725))

(assert (= b!2130710 b!2130712))

(assert (= (and b!2130705 ((_ is LongMap!2573) (v!28501 (underlying!5342 (cache!2868 cacheFurthestNullable!114))))) b!2130710))

(assert (= b!2130702 b!2130705))

(assert (= (and b!2130698 ((_ is HashMap!2487) (cache!2868 cacheFurthestNullable!114))) b!2130702))

(assert (= b!2130698 b!2130687))

(assert (= start!207524 b!2130698))

(assert (= (and b!2130707 condMapEmpty!12484) mapIsEmpty!12484))

(assert (= (and b!2130707 (not condMapEmpty!12484)) mapNonEmpty!12486))

(assert (= b!2130723 b!2130707))

(assert (= b!2130719 b!2130723))

(assert (= b!2130713 b!2130719))

(assert (= (and b!2130715 ((_ is LongMap!2575) (v!28506 (underlying!5346 (cache!2870 cacheDown!1098))))) b!2130713))

(assert (= b!2130688 b!2130715))

(assert (= (and b!2130700 ((_ is HashMap!2489) (cache!2870 cacheDown!1098))) b!2130688))

(assert (= start!207524 b!2130700))

(assert (= (and b!2130697 condMapEmpty!12486) mapIsEmpty!12485))

(assert (= (and b!2130697 (not condMapEmpty!12486)) mapNonEmpty!12485))

(assert (= b!2130717 b!2130697))

(assert (= b!2130701 b!2130717))

(assert (= b!2130706 b!2130701))

(assert (= (and b!2130716 ((_ is LongMap!2574) (v!28503 (underlying!5344 (cache!2869 cacheUp!979))))) b!2130706))

(assert (= b!2130686 b!2130716))

(assert (= (and b!2130711 ((_ is HashMap!2488) (cache!2869 cacheUp!979))) b!2130686))

(assert (= start!207524 b!2130711))

(assert (= (and start!207524 condSetEmpty!15720) setIsEmpty!15720))

(assert (= (and start!207524 (not condSetEmpty!15720)) setNonEmpty!15720))

(assert (= setNonEmpty!15720 b!2130708))

(assert (= start!207524 b!2130720))

(assert (= (and b!2130689 condSetEmpty!15721) setIsEmpty!15721))

(assert (= (and b!2130689 (not condSetEmpty!15721)) setNonEmpty!15721))

(assert (= setNonEmpty!15721 b!2130692))

(assert (= b!2130689 b!2130699))

(assert (= b!2130695 b!2130689))

(assert (= (and start!207524 ((_ is Cons!23952) stack!8)) b!2130695))

(declare-fun m!2580706 () Bool)

(assert (=> b!2130693 m!2580706))

(declare-fun m!2580708 () Bool)

(assert (=> b!2130723 m!2580708))

(declare-fun m!2580710 () Bool)

(assert (=> b!2130723 m!2580710))

(declare-fun m!2580712 () Bool)

(assert (=> start!207524 m!2580712))

(declare-fun m!2580714 () Bool)

(assert (=> start!207524 m!2580714))

(declare-fun m!2580716 () Bool)

(assert (=> start!207524 m!2580716))

(declare-fun m!2580718 () Bool)

(assert (=> start!207524 m!2580718))

(declare-fun m!2580720 () Bool)

(assert (=> b!2130718 m!2580720))

(declare-fun m!2580722 () Bool)

(assert (=> b!2130699 m!2580722))

(declare-fun m!2580724 () Bool)

(assert (=> b!2130695 m!2580724))

(declare-fun m!2580726 () Bool)

(assert (=> b!2130720 m!2580726))

(declare-fun m!2580728 () Bool)

(assert (=> b!2130694 m!2580728))

(declare-fun m!2580730 () Bool)

(assert (=> setNonEmpty!15721 m!2580730))

(declare-fun m!2580732 () Bool)

(assert (=> b!2130703 m!2580732))

(declare-fun m!2580734 () Bool)

(assert (=> b!2130721 m!2580734))

(declare-fun m!2580736 () Bool)

(assert (=> b!2130721 m!2580736))

(declare-fun m!2580738 () Bool)

(assert (=> b!2130717 m!2580738))

(declare-fun m!2580740 () Bool)

(assert (=> b!2130717 m!2580740))

(declare-fun m!2580742 () Bool)

(assert (=> mapNonEmpty!12485 m!2580742))

(declare-fun m!2580744 () Bool)

(assert (=> mapNonEmpty!12484 m!2580744))

(declare-fun m!2580746 () Bool)

(assert (=> b!2130726 m!2580746))

(declare-fun m!2580748 () Bool)

(assert (=> b!2130704 m!2580748))

(assert (=> b!2130704 m!2580734))

(declare-fun m!2580750 () Bool)

(assert (=> b!2130714 m!2580750))

(declare-fun m!2580752 () Bool)

(assert (=> b!2130696 m!2580752))

(declare-fun m!2580754 () Bool)

(assert (=> b!2130725 m!2580754))

(declare-fun m!2580756 () Bool)

(assert (=> b!2130725 m!2580756))

(declare-fun m!2580758 () Bool)

(assert (=> b!2130698 m!2580758))

(declare-fun m!2580760 () Bool)

(assert (=> mapNonEmpty!12486 m!2580760))

(declare-fun m!2580762 () Bool)

(assert (=> b!2130687 m!2580762))

(declare-fun m!2580764 () Bool)

(assert (=> setNonEmpty!15720 m!2580764))

(declare-fun m!2580766 () Bool)

(assert (=> b!2130689 m!2580766))

(check-sat b_and!171749 b_and!171755 (not b!2130720) (not b_next!62875) (not b!2130725) (not b!2130698) (not b!2130714) (not b!2130694) (not mapNonEmpty!12484) (not b!2130692) (not mapNonEmpty!12486) b_and!171751 (not b_next!62877) (not b!2130718) (not b!2130721) (not setNonEmpty!15720) (not b!2130723) b_and!171747 (not b!2130693) (not b!2130708) (not setNonEmpty!15721) (not b!2130691) b_and!171753 (not b!2130699) (not mapNonEmpty!12485) (not b!2130726) (not b!2130717) (not b!2130695) (not b!2130697) (not b!2130696) (not b_next!62869) (not b_next!62871) (not b_next!62873) (not b!2130707) (not b!2130704) (not start!207524) (not b_next!62879) b_and!171745 (not b!2130689) (not b!2130703) (not b!2130687))
(check-sat b_and!171749 b_and!171747 b_and!171755 b_and!171753 (not b_next!62875) (not b_next!62869) b_and!171751 (not b_next!62877) (not b_next!62871) (not b_next!62873) (not b_next!62879) b_and!171745)
