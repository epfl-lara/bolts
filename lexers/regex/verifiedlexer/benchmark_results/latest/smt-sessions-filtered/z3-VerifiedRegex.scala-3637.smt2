; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207588 () Bool)

(assert start!207588)

(declare-fun b!2134925 () Bool)

(declare-fun b_free!62549 () Bool)

(declare-fun b_next!63253 () Bool)

(assert (=> b!2134925 (= b_free!62549 (not b_next!63253))))

(declare-fun tp!657935 () Bool)

(declare-fun b_and!172129 () Bool)

(assert (=> b!2134925 (= tp!657935 b_and!172129)))

(declare-fun b!2134953 () Bool)

(declare-fun b_free!62551 () Bool)

(declare-fun b_next!63255 () Bool)

(assert (=> b!2134953 (= b_free!62551 (not b_next!63255))))

(declare-fun tp!657941 () Bool)

(declare-fun b_and!172131 () Bool)

(assert (=> b!2134953 (= tp!657941 b_and!172131)))

(declare-fun b!2134938 () Bool)

(declare-fun b_free!62553 () Bool)

(declare-fun b_next!63257 () Bool)

(assert (=> b!2134938 (= b_free!62553 (not b_next!63257))))

(declare-fun tp!657922 () Bool)

(declare-fun b_and!172133 () Bool)

(assert (=> b!2134938 (= tp!657922 b_and!172133)))

(declare-fun b!2134933 () Bool)

(declare-fun b_free!62555 () Bool)

(declare-fun b_next!63259 () Bool)

(assert (=> b!2134933 (= b_free!62555 (not b_next!63259))))

(declare-fun tp!657939 () Bool)

(declare-fun b_and!172135 () Bool)

(assert (=> b!2134933 (= tp!657939 b_and!172135)))

(declare-fun b!2134956 () Bool)

(declare-fun b_free!62557 () Bool)

(declare-fun b_next!63261 () Bool)

(assert (=> b!2134956 (= b_free!62557 (not b_next!63261))))

(declare-fun tp!657920 () Bool)

(declare-fun b_and!172137 () Bool)

(assert (=> b!2134956 (= tp!657920 b_and!172137)))

(declare-fun b!2134924 () Bool)

(declare-fun b_free!62559 () Bool)

(declare-fun b_next!63263 () Bool)

(assert (=> b!2134924 (= b_free!62559 (not b_next!63263))))

(declare-fun tp!657942 () Bool)

(declare-fun b_and!172139 () Bool)

(assert (=> b!2134924 (= tp!657942 b_and!172139)))

(declare-fun b!2134937 () Bool)

(assert (=> b!2134937 true))

(declare-fun bs!444308 () Bool)

(declare-fun b!2134931 () Bool)

(assert (= bs!444308 (and b!2134931 b!2134937)))

(declare-fun lambda!79431 () Int)

(declare-fun lambda!79430 () Int)

(assert (=> bs!444308 (not (= lambda!79431 lambda!79430))))

(assert (=> b!2134931 true))

(declare-fun b!2134920 () Bool)

(declare-fun res!922460 () Bool)

(declare-fun e!1362563 () Bool)

(assert (=> b!2134920 (=> (not res!922460) (not e!1362563))))

(declare-datatypes ((C!11628 0))(
  ( (C!11629 (val!6800 Int)) )
))
(declare-datatypes ((Regex!5741 0))(
  ( (ElementMatch!5741 (c!340309 C!11628)) (Concat!10043 (regOne!11994 Regex!5741) (regTwo!11994 Regex!5741)) (EmptyExpr!5741) (Star!5741 (reg!6070 Regex!5741)) (EmptyLang!5741) (Union!5741 (regOne!11995 Regex!5741) (regTwo!11995 Regex!5741)) )
))
(declare-datatypes ((List!24213 0))(
  ( (Nil!24129) (Cons!24129 (h!29530 Regex!5741) (t!196741 List!24213)) )
))
(declare-datatypes ((Context!2622 0))(
  ( (Context!2623 (exprs!1811 List!24213)) )
))
(declare-datatypes ((tuple2!23908 0))(
  ( (tuple2!23909 (_1!14048 Context!2622) (_2!14048 C!11628)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23910 0))(
  ( (tuple2!23911 (_1!14049 tuple2!23908) (_2!14049 (InoxSet Context!2622))) )
))
(declare-datatypes ((List!24214 0))(
  ( (Nil!24130) (Cons!24130 (h!29531 tuple2!23910) (t!196742 List!24214)) )
))
(declare-datatypes ((array!9021 0))(
  ( (array!9022 (arr!4022 (Array (_ BitVec 32) (_ BitVec 64))) (size!18873 (_ BitVec 32))) )
))
(declare-datatypes ((array!9023 0))(
  ( (array!9024 (arr!4023 (Array (_ BitVec 32) List!24214)) (size!18874 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5320 0))(
  ( (LongMapFixedSize!5321 (defaultEntry!3025 Int) (mask!6846 (_ BitVec 32)) (extraKeys!2908 (_ BitVec 32)) (zeroValue!2918 List!24214) (minValue!2918 List!24214) (_size!5371 (_ BitVec 32)) (_keys!2957 array!9021) (_values!2940 array!9023) (_vacant!2721 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10465 0))(
  ( (Cell!10466 (v!28692 LongMapFixedSize!5320)) )
))
(declare-datatypes ((MutLongMap!2660 0))(
  ( (LongMap!2660 (underlying!5515 Cell!10465)) (MutLongMapExt!2659 (__x!16156 Int)) )
))
(declare-datatypes ((Cell!10467 0))(
  ( (Cell!10468 (v!28693 MutLongMap!2660)) )
))
(declare-datatypes ((Hashable!2574 0))(
  ( (HashableExt!2573 (__x!16157 Int)) )
))
(declare-datatypes ((MutableMap!2574 0))(
  ( (MutableMapExt!2573 (__x!16158 Int)) (HashMap!2574 (underlying!5516 Cell!10467) (hashF!4497 Hashable!2574) (_size!5372 (_ BitVec 32)) (defaultValue!2736 Int)) )
))
(declare-datatypes ((CacheUp!1782 0))(
  ( (CacheUp!1783 (cache!2955 MutableMap!2574)) )
))
(declare-fun cacheUp!979 () CacheUp!1782)

(declare-fun valid!2082 (CacheUp!1782) Bool)

(assert (=> b!2134920 (= res!922460 (valid!2082 cacheUp!979))))

(declare-fun b!2134921 () Bool)

(declare-fun e!1362550 () Bool)

(declare-fun e!1362533 () Bool)

(assert (=> b!2134921 (= e!1362550 e!1362533)))

(declare-fun setRes!15913 () Bool)

(declare-fun setNonEmpty!15912 () Bool)

(declare-fun e!1362569 () Bool)

(declare-fun setElem!15912 () Context!2622)

(declare-fun tp!657919 () Bool)

(declare-fun inv!31787 (Context!2622) Bool)

(assert (=> setNonEmpty!15912 (= setRes!15913 (and tp!657919 (inv!31787 setElem!15912) e!1362569))))

(declare-fun z!3839 () (InoxSet Context!2622))

(declare-fun setRest!15913 () (InoxSet Context!2622))

(assert (=> setNonEmpty!15912 (= z!3839 ((_ map or) (store ((as const (Array Context!2622 Bool)) false) setElem!15912 true) setRest!15913))))

(declare-fun b!2134922 () Bool)

(declare-fun e!1362562 () Bool)

(declare-fun tp!657945 () Bool)

(declare-fun mapRes!12774 () Bool)

(assert (=> b!2134922 (= e!1362562 (and tp!657945 mapRes!12774))))

(declare-fun condMapEmpty!12774 () Bool)

(declare-fun mapDefault!12773 () List!24214)

(assert (=> b!2134922 (= condMapEmpty!12774 (= (arr!4023 (_values!2940 (v!28692 (underlying!5515 (v!28693 (underlying!5516 (cache!2955 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24214)) mapDefault!12773)))))

(declare-fun res!922464 () Bool)

(declare-fun e!1362561 () Bool)

(assert (=> start!207588 (=> (not res!922464) (not e!1362561))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207588 (= res!922464 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207588 e!1362561))

(declare-datatypes ((tuple3!3248 0))(
  ( (tuple3!3249 (_1!14050 (InoxSet Context!2622)) (_2!14050 Int) (_3!2094 Int)) )
))
(declare-datatypes ((tuple2!23912 0))(
  ( (tuple2!23913 (_1!14051 tuple3!3248) (_2!14051 Int)) )
))
(declare-datatypes ((List!24215 0))(
  ( (Nil!24131) (Cons!24131 (h!29532 tuple2!23912) (t!196743 List!24215)) )
))
(declare-datatypes ((array!9025 0))(
  ( (array!9026 (arr!4024 (Array (_ BitVec 32) List!24215)) (size!18875 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5322 0))(
  ( (LongMapFixedSize!5323 (defaultEntry!3026 Int) (mask!6847 (_ BitVec 32)) (extraKeys!2909 (_ BitVec 32)) (zeroValue!2919 List!24215) (minValue!2919 List!24215) (_size!5373 (_ BitVec 32)) (_keys!2958 array!9021) (_values!2941 array!9025) (_vacant!2722 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10469 0))(
  ( (Cell!10470 (v!28694 LongMapFixedSize!5322)) )
))
(declare-datatypes ((List!24216 0))(
  ( (Nil!24132) (Cons!24132 (h!29533 C!11628) (t!196744 List!24216)) )
))
(declare-datatypes ((IArray!15763 0))(
  ( (IArray!15764 (innerList!7939 List!24216)) )
))
(declare-datatypes ((Conc!7879 0))(
  ( (Node!7879 (left!18590 Conc!7879) (right!18920 Conc!7879) (csize!15988 Int) (cheight!8090 Int)) (Leaf!11517 (xs!10821 IArray!15763) (csize!15989 Int)) (Empty!7879) )
))
(declare-datatypes ((MutLongMap!2661 0))(
  ( (LongMap!2661 (underlying!5517 Cell!10469)) (MutLongMapExt!2660 (__x!16159 Int)) )
))
(declare-datatypes ((Cell!10471 0))(
  ( (Cell!10472 (v!28695 MutLongMap!2661)) )
))
(declare-datatypes ((Hashable!2575 0))(
  ( (HashableExt!2574 (__x!16160 Int)) )
))
(declare-datatypes ((MutableMap!2575 0))(
  ( (MutableMapExt!2574 (__x!16161 Int)) (HashMap!2575 (underlying!5518 Cell!10471) (hashF!4498 Hashable!2575) (_size!5374 (_ BitVec 32)) (defaultValue!2737 Int)) )
))
(declare-datatypes ((BalanceConc!15520 0))(
  ( (BalanceConc!15521 (c!340310 Conc!7879)) )
))
(declare-datatypes ((CacheFurthestNullable!728 0))(
  ( (CacheFurthestNullable!729 (cache!2956 MutableMap!2575) (totalInput!3056 BalanceConc!15520)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!728)

(declare-fun e!1362546 () Bool)

(declare-fun inv!31788 (CacheFurthestNullable!728) Bool)

(assert (=> start!207588 (and (inv!31788 cacheFurthestNullable!114) e!1362546)))

(assert (=> start!207588 true))

(declare-datatypes ((tuple3!3250 0))(
  ( (tuple3!3251 (_1!14052 Regex!5741) (_2!14052 Context!2622) (_3!2095 C!11628)) )
))
(declare-datatypes ((tuple2!23914 0))(
  ( (tuple2!23915 (_1!14053 tuple3!3250) (_2!14053 (InoxSet Context!2622))) )
))
(declare-datatypes ((List!24217 0))(
  ( (Nil!24133) (Cons!24133 (h!29534 tuple2!23914) (t!196745 List!24217)) )
))
(declare-datatypes ((Hashable!2576 0))(
  ( (HashableExt!2575 (__x!16162 Int)) )
))
(declare-datatypes ((array!9027 0))(
  ( (array!9028 (arr!4025 (Array (_ BitVec 32) List!24217)) (size!18876 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5324 0))(
  ( (LongMapFixedSize!5325 (defaultEntry!3027 Int) (mask!6848 (_ BitVec 32)) (extraKeys!2910 (_ BitVec 32)) (zeroValue!2920 List!24217) (minValue!2920 List!24217) (_size!5375 (_ BitVec 32)) (_keys!2959 array!9021) (_values!2942 array!9027) (_vacant!2723 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10473 0))(
  ( (Cell!10474 (v!28696 LongMapFixedSize!5324)) )
))
(declare-datatypes ((MutLongMap!2662 0))(
  ( (LongMap!2662 (underlying!5519 Cell!10473)) (MutLongMapExt!2661 (__x!16163 Int)) )
))
(declare-datatypes ((Cell!10475 0))(
  ( (Cell!10476 (v!28697 MutLongMap!2662)) )
))
(declare-datatypes ((MutableMap!2576 0))(
  ( (MutableMapExt!2575 (__x!16164 Int)) (HashMap!2576 (underlying!5520 Cell!10475) (hashF!4499 Hashable!2576) (_size!5376 (_ BitVec 32)) (defaultValue!2738 Int)) )
))
(declare-datatypes ((CacheDown!1762 0))(
  ( (CacheDown!1763 (cache!2957 MutableMap!2576)) )
))
(declare-fun cacheDown!1098 () CacheDown!1762)

(declare-fun e!1362537 () Bool)

(declare-fun inv!31789 (CacheDown!1762) Bool)

(assert (=> start!207588 (and (inv!31789 cacheDown!1098) e!1362537)))

(declare-fun inv!31790 (CacheUp!1782) Bool)

(assert (=> start!207588 (and (inv!31790 cacheUp!979) e!1362550)))

(declare-fun condSetEmpty!15913 () Bool)

(assert (=> start!207588 (= condSetEmpty!15913 (= z!3839 ((as const (Array Context!2622 Bool)) false)))))

(assert (=> start!207588 setRes!15913))

(declare-fun totalInput!851 () BalanceConc!15520)

(declare-fun e!1362564 () Bool)

(declare-fun inv!31791 (BalanceConc!15520) Bool)

(assert (=> start!207588 (and (inv!31791 totalInput!851) e!1362564)))

(declare-fun e!1362551 () Bool)

(assert (=> start!207588 e!1362551))

(declare-fun b!2134923 () Bool)

(declare-fun e!1362568 () Bool)

(declare-fun e!1362560 () Bool)

(assert (=> b!2134923 (= e!1362568 e!1362560)))

(declare-fun tp!657930 () Bool)

(declare-fun tp!657944 () Bool)

(declare-fun e!1362539 () Bool)

(declare-fun array_inv!2876 (array!9021) Bool)

(declare-fun array_inv!2877 (array!9023) Bool)

(assert (=> b!2134924 (= e!1362539 (and tp!657942 tp!657930 tp!657944 (array_inv!2876 (_keys!2957 (v!28692 (underlying!5515 (v!28693 (underlying!5516 (cache!2955 cacheUp!979))))))) (array_inv!2877 (_values!2940 (v!28692 (underlying!5515 (v!28693 (underlying!5516 (cache!2955 cacheUp!979))))))) e!1362562))))

(declare-fun e!1362554 () Bool)

(declare-fun e!1362543 () Bool)

(assert (=> b!2134925 (= e!1362554 (and e!1362543 tp!657935))))

(declare-fun b!2134926 () Bool)

(declare-fun e!1362557 () Bool)

(assert (=> b!2134926 (= e!1362537 e!1362557)))

(declare-fun b!2134927 () Bool)

(declare-fun e!1362536 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2134927 (= e!1362536 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2134928 () Bool)

(declare-fun e!1362566 () Bool)

(declare-datatypes ((StackFrame!170 0))(
  ( (StackFrame!171 (z!5813 (InoxSet Context!2622)) (from!2699 Int) (lastNullablePos!386 Int) (res!922472 Int) (totalInput!3057 BalanceConc!15520)) )
))
(declare-datatypes ((List!24218 0))(
  ( (Nil!24134) (Cons!24134 (h!29535 StackFrame!170) (t!196746 List!24218)) )
))
(declare-fun stack!8 () List!24218)

(declare-fun tp!657931 () Bool)

(declare-fun inv!31792 (Conc!7879) Bool)

(assert (=> b!2134928 (= e!1362566 (and (inv!31792 (c!340310 (totalInput!3057 (h!29535 stack!8)))) tp!657931))))

(declare-fun e!1362549 () Bool)

(declare-fun tp!657926 () Bool)

(declare-fun b!2134929 () Bool)

(declare-fun inv!31793 (StackFrame!170) Bool)

(assert (=> b!2134929 (= e!1362551 (and (inv!31793 (h!29535 stack!8)) e!1362549 tp!657926))))

(declare-fun mapNonEmpty!12772 () Bool)

(declare-fun tp!657924 () Bool)

(declare-fun tp!657934 () Bool)

(assert (=> mapNonEmpty!12772 (= mapRes!12774 (and tp!657924 tp!657934))))

(declare-fun mapRest!12772 () (Array (_ BitVec 32) List!24214))

(declare-fun mapValue!12774 () List!24214)

(declare-fun mapKey!12772 () (_ BitVec 32))

(assert (=> mapNonEmpty!12772 (= (arr!4023 (_values!2940 (v!28692 (underlying!5515 (v!28693 (underlying!5516 (cache!2955 cacheUp!979))))))) (store mapRest!12772 mapKey!12772 mapValue!12774))))

(declare-fun b!2134930 () Bool)

(declare-fun e!1362541 () Bool)

(assert (=> b!2134930 (= e!1362541 e!1362568)))

(declare-fun res!922471 () Bool)

(declare-fun e!1362570 () Bool)

(assert (=> b!2134931 (=> (not res!922471) (not e!1362570))))

(declare-fun forall!4928 (List!24218 Int) Bool)

(assert (=> b!2134931 (= res!922471 (forall!4928 stack!8 lambda!79431))))

(declare-fun b!2134932 () Bool)

(declare-fun res!922470 () Bool)

(assert (=> b!2134932 (=> (not res!922470) (not e!1362563))))

(declare-fun valid!2083 (CacheDown!1762) Bool)

(assert (=> b!2134932 (= res!922470 (valid!2083 cacheDown!1098))))

(declare-fun tp!657932 () Bool)

(declare-fun e!1362534 () Bool)

(declare-fun tp!657937 () Bool)

(declare-fun e!1362545 () Bool)

(declare-fun array_inv!2878 (array!9025) Bool)

(assert (=> b!2134933 (= e!1362545 (and tp!657939 tp!657937 tp!657932 (array_inv!2876 (_keys!2958 (v!28694 (underlying!5517 (v!28695 (underlying!5518 (cache!2956 cacheFurthestNullable!114))))))) (array_inv!2878 (_values!2941 (v!28694 (underlying!5517 (v!28695 (underlying!5518 (cache!2956 cacheFurthestNullable!114))))))) e!1362534))))

(declare-fun tp!657918 () Bool)

(declare-fun setRes!15912 () Bool)

(declare-fun setNonEmpty!15913 () Bool)

(declare-fun e!1362555 () Bool)

(declare-fun setElem!15913 () Context!2622)

(assert (=> setNonEmpty!15913 (= setRes!15912 (and tp!657918 (inv!31787 setElem!15913) e!1362555))))

(declare-fun setRest!15912 () (InoxSet Context!2622))

(assert (=> setNonEmpty!15913 (= (z!5813 (h!29535 stack!8)) ((_ map or) (store ((as const (Array Context!2622 Bool)) false) setElem!15913 true) setRest!15912))))

(declare-fun b!2134934 () Bool)

(declare-fun e!1362548 () Bool)

(declare-fun e!1362553 () Bool)

(assert (=> b!2134934 (= e!1362548 e!1362553)))

(declare-fun res!922462 () Bool)

(assert (=> b!2134934 (=> res!922462 e!1362553)))

(assert (=> b!2134934 (= res!922462 (not (forall!4928 stack!8 lambda!79430)))))

(assert (=> b!2134934 (forall!4928 stack!8 lambda!79430)))

(declare-fun mapNonEmpty!12773 () Bool)

(declare-fun mapRes!12773 () Bool)

(declare-fun tp!657946 () Bool)

(declare-fun tp!657925 () Bool)

(assert (=> mapNonEmpty!12773 (= mapRes!12773 (and tp!657946 tp!657925))))

(declare-fun mapRest!12773 () (Array (_ BitVec 32) List!24217))

(declare-fun mapValue!12773 () List!24217)

(declare-fun mapKey!12773 () (_ BitVec 32))

(assert (=> mapNonEmpty!12773 (= (arr!4025 (_values!2942 (v!28696 (underlying!5519 (v!28697 (underlying!5520 (cache!2957 cacheDown!1098))))))) (store mapRest!12773 mapKey!12773 mapValue!12773))))

(declare-fun b!2134935 () Bool)

(declare-fun res!922465 () Bool)

(assert (=> b!2134935 (=> (not res!922465) (not e!1362563))))

(declare-fun valid!2084 (CacheFurthestNullable!728) Bool)

(assert (=> b!2134935 (= res!922465 (valid!2084 cacheFurthestNullable!114))))

(declare-fun b!2134936 () Bool)

(declare-fun e!1362559 () Bool)

(declare-fun lt!797074 () MutLongMap!2662)

(get-info :version)

(assert (=> b!2134936 (= e!1362559 (and e!1362541 ((_ is LongMap!2662) lt!797074)))))

(assert (=> b!2134936 (= lt!797074 (v!28697 (underlying!5520 (cache!2957 cacheDown!1098))))))

(assert (=> b!2134937 (= e!1362563 e!1362570)))

(declare-fun res!922469 () Bool)

(assert (=> b!2134937 (=> (not res!922469) (not e!1362570))))

(assert (=> b!2134937 (= res!922469 (forall!4928 stack!8 lambda!79430))))

(declare-fun lt!797071 () Int)

(declare-fun lt!797075 () Int)

(declare-fun furthestNullablePosition!51 ((InoxSet Context!2622) Int BalanceConc!15520 Int Int) Int)

(assert (=> b!2134937 (= lt!797075 (furthestNullablePosition!51 z!3839 from!1043 totalInput!851 lt!797071 lastNullablePos!123))))

(declare-fun e!1362556 () Bool)

(assert (=> b!2134938 (= e!1362533 (and e!1362556 tp!657922))))

(declare-fun setIsEmpty!15912 () Bool)

(assert (=> setIsEmpty!15912 setRes!15912))

(declare-fun b!2134939 () Bool)

(declare-fun e!1362547 () Bool)

(assert (=> b!2134939 (= e!1362547 e!1362539)))

(declare-fun b!2134940 () Bool)

(declare-fun e!1362542 () Bool)

(declare-fun e!1362552 () Bool)

(assert (=> b!2134940 (= e!1362542 e!1362552)))

(declare-fun b!2134941 () Bool)

(assert (=> b!2134941 (= e!1362561 e!1362563)))

(declare-fun res!922468 () Bool)

(assert (=> b!2134941 (=> (not res!922468) (not e!1362563))))

(assert (=> b!2134941 (= res!922468 (and (= totalInputSize!296 lt!797071) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18877 (BalanceConc!15520) Int)

(assert (=> b!2134941 (= lt!797071 (size!18877 totalInput!851))))

(declare-fun b!2134942 () Bool)

(declare-fun e!1362567 () Int)

(assert (=> b!2134942 (= e!1362567 from!1043)))

(declare-fun b!2134943 () Bool)

(declare-fun e!1362558 () Bool)

(declare-fun tp!657928 () Bool)

(assert (=> b!2134943 (= e!1362558 (and tp!657928 mapRes!12773))))

(declare-fun condMapEmpty!12773 () Bool)

(declare-fun mapDefault!12772 () List!24217)

(assert (=> b!2134943 (= condMapEmpty!12773 (= (arr!4025 (_values!2942 (v!28696 (underlying!5519 (v!28697 (underlying!5520 (cache!2957 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24217)) mapDefault!12772)))))

(declare-fun mapIsEmpty!12772 () Bool)

(assert (=> mapIsEmpty!12772 mapRes!12774))

(declare-fun b!2134944 () Bool)

(declare-fun e!1362535 () Bool)

(declare-fun tp!657940 () Bool)

(assert (=> b!2134944 (= e!1362535 (and (inv!31792 (c!340310 (totalInput!3056 cacheFurthestNullable!114))) tp!657940))))

(declare-fun b!2134945 () Bool)

(assert (=> b!2134945 (= e!1362546 (and e!1362554 (inv!31791 (totalInput!3056 cacheFurthestNullable!114)) e!1362535))))

(declare-fun b!2134946 () Bool)

(declare-fun tp!657929 () Bool)

(assert (=> b!2134946 (= e!1362555 tp!657929)))

(declare-fun mapNonEmpty!12774 () Bool)

(declare-fun mapRes!12772 () Bool)

(declare-fun tp!657943 () Bool)

(declare-fun tp!657923 () Bool)

(assert (=> mapNonEmpty!12774 (= mapRes!12772 (and tp!657943 tp!657923))))

(declare-fun mapRest!12774 () (Array (_ BitVec 32) List!24215))

(declare-fun mapKey!12774 () (_ BitVec 32))

(declare-fun mapValue!12772 () List!24215)

(assert (=> mapNonEmpty!12774 (= (arr!4024 (_values!2941 (v!28694 (underlying!5517 (v!28695 (underlying!5518 (cache!2956 cacheFurthestNullable!114))))))) (store mapRest!12774 mapKey!12774 mapValue!12772))))

(declare-fun b!2134947 () Bool)

(declare-fun e!1362565 () Bool)

(declare-fun lt!797073 () MutLongMap!2660)

(assert (=> b!2134947 (= e!1362556 (and e!1362565 ((_ is LongMap!2660) lt!797073)))))

(assert (=> b!2134947 (= lt!797073 (v!28693 (underlying!5516 (cache!2955 cacheUp!979))))))

(declare-fun b!2134948 () Bool)

(assert (=> b!2134948 (= e!1362565 e!1362547)))

(declare-fun b!2134949 () Bool)

(declare-fun tp!657938 () Bool)

(assert (=> b!2134949 (= e!1362534 (and tp!657938 mapRes!12772))))

(declare-fun condMapEmpty!12772 () Bool)

(declare-fun mapDefault!12774 () List!24215)

(assert (=> b!2134949 (= condMapEmpty!12772 (= (arr!4024 (_values!2941 (v!28694 (underlying!5517 (v!28695 (underlying!5518 (cache!2956 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24215)) mapDefault!12774)))))

(declare-fun b!2134950 () Bool)

(assert (=> b!2134950 (= e!1362552 e!1362545)))

(declare-fun b!2134951 () Bool)

(declare-fun res!922463 () Bool)

(declare-fun e!1362538 () Bool)

(assert (=> b!2134951 (=> res!922463 e!1362538)))

(declare-fun lostCauseZipper!91 ((InoxSet Context!2622)) Bool)

(assert (=> b!2134951 (= res!922463 (lostCauseZipper!91 z!3839))))

(declare-fun b!2134952 () Bool)

(declare-fun res!922461 () Bool)

(assert (=> b!2134952 (=> (not res!922461) (not e!1362563))))

(assert (=> b!2134952 (= res!922461 (= (totalInput!3056 cacheFurthestNullable!114) totalInput!851))))

(assert (=> b!2134953 (= e!1362557 (and e!1362559 tp!657941))))

(declare-fun b!2134954 () Bool)

(declare-fun tp!657936 () Bool)

(assert (=> b!2134954 (= e!1362564 (and (inv!31792 (c!340310 totalInput!851)) tp!657936))))

(declare-fun b!2134955 () Bool)

(assert (=> b!2134955 (= e!1362570 (not e!1362538))))

(declare-fun res!922466 () Bool)

(assert (=> b!2134955 (=> res!922466 e!1362538)))

(declare-datatypes ((Option!4908 0))(
  ( (None!4907) (Some!4907 (v!28698 Int)) )
))
(declare-fun get!7388 (CacheFurthestNullable!728 (InoxSet Context!2622) Int Int) Option!4908)

(assert (=> b!2134955 (= res!922466 ((_ is Some!4907) (get!7388 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2134955 (forall!4928 stack!8 lambda!79430)))

(declare-fun tp!657921 () Bool)

(declare-fun tp!657933 () Bool)

(declare-fun array_inv!2879 (array!9027) Bool)

(assert (=> b!2134956 (= e!1362560 (and tp!657920 tp!657933 tp!657921 (array_inv!2876 (_keys!2959 (v!28696 (underlying!5519 (v!28697 (underlying!5520 (cache!2957 cacheDown!1098))))))) (array_inv!2879 (_values!2942 (v!28696 (underlying!5519 (v!28697 (underlying!5520 (cache!2957 cacheDown!1098))))))) e!1362558))))

(declare-fun b!2134957 () Bool)

(assert (=> b!2134957 (= e!1362538 e!1362548)))

(declare-fun res!922467 () Bool)

(assert (=> b!2134957 (=> res!922467 e!1362548)))

(declare-datatypes ((tuple3!3252 0))(
  ( (tuple3!3253 (_1!14054 (InoxSet Context!2622)) (_2!14054 CacheUp!1782) (_3!2096 CacheDown!1762)) )
))
(declare-fun lt!797076 () tuple3!3252)

(assert (=> b!2134957 (= res!922467 (not (= lt!797075 (furthestNullablePosition!51 (_1!14054 lt!797076) (+ 1 from!1043) totalInput!851 lt!797071 e!1362567))))))

(declare-fun c!340308 () Bool)

(declare-fun nullableZipper!117 ((InoxSet Context!2622)) Bool)

(assert (=> b!2134957 (= c!340308 (nullableZipper!117 (_1!14054 lt!797076)))))

(declare-fun derivationStepZipperMem!39 ((InoxSet Context!2622) C!11628 CacheUp!1782 CacheDown!1762) tuple3!3252)

(declare-fun apply!5938 (BalanceConc!15520 Int) C!11628)

(assert (=> b!2134957 (= lt!797076 (derivationStepZipperMem!39 z!3839 (apply!5938 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2134958 () Bool)

(declare-fun tp!657927 () Bool)

(assert (=> b!2134958 (= e!1362569 tp!657927)))

(declare-fun b!2134959 () Bool)

(assert (=> b!2134959 (= e!1362553 (forall!4928 stack!8 lambda!79430))))

(declare-fun b!2134960 () Bool)

(assert (=> b!2134960 (= e!1362567 lastNullablePos!123)))

(declare-fun mapIsEmpty!12773 () Bool)

(assert (=> mapIsEmpty!12773 mapRes!12772))

(declare-fun b!2134961 () Bool)

(declare-fun lt!797072 () MutLongMap!2661)

(assert (=> b!2134961 (= e!1362543 (and e!1362542 ((_ is LongMap!2661) lt!797072)))))

(assert (=> b!2134961 (= lt!797072 (v!28695 (underlying!5518 (cache!2956 cacheFurthestNullable!114))))))

(declare-fun setIsEmpty!15913 () Bool)

(assert (=> setIsEmpty!15913 setRes!15913))

(declare-fun b!2134962 () Bool)

(assert (=> b!2134962 (= e!1362549 (and setRes!15912 (inv!31791 (totalInput!3057 (h!29535 stack!8))) e!1362566))))

(declare-fun condSetEmpty!15912 () Bool)

(assert (=> b!2134962 (= condSetEmpty!15912 (= (z!5813 (h!29535 stack!8)) ((as const (Array Context!2622 Bool)) false)))))

(declare-fun b!2134963 () Bool)

(declare-fun res!922459 () Bool)

(assert (=> b!2134963 (=> (not res!922459) (not e!1362563))))

(assert (=> b!2134963 (= res!922459 e!1362536)))

(declare-fun res!922457 () Bool)

(assert (=> b!2134963 (=> res!922457 e!1362536)))

(assert (=> b!2134963 (= res!922457 (not (nullableZipper!117 z!3839)))))

(declare-fun b!2134964 () Bool)

(declare-fun res!922458 () Bool)

(assert (=> b!2134964 (=> res!922458 e!1362538)))

(assert (=> b!2134964 (= res!922458 (= from!1043 totalInputSize!296))))

(declare-fun mapIsEmpty!12774 () Bool)

(assert (=> mapIsEmpty!12774 mapRes!12773))

(assert (= (and start!207588 res!922464) b!2134941))

(assert (= (and b!2134941 res!922468) b!2134963))

(assert (= (and b!2134963 (not res!922457)) b!2134927))

(assert (= (and b!2134963 res!922459) b!2134920))

(assert (= (and b!2134920 res!922460) b!2134932))

(assert (= (and b!2134932 res!922470) b!2134935))

(assert (= (and b!2134935 res!922465) b!2134952))

(assert (= (and b!2134952 res!922461) b!2134937))

(assert (= (and b!2134937 res!922469) b!2134931))

(assert (= (and b!2134931 res!922471) b!2134955))

(assert (= (and b!2134955 (not res!922466)) b!2134964))

(assert (= (and b!2134964 (not res!922458)) b!2134951))

(assert (= (and b!2134951 (not res!922463)) b!2134957))

(assert (= (and b!2134957 c!340308) b!2134942))

(assert (= (and b!2134957 (not c!340308)) b!2134960))

(assert (= (and b!2134957 (not res!922467)) b!2134934))

(assert (= (and b!2134934 (not res!922462)) b!2134959))

(assert (= (and b!2134949 condMapEmpty!12772) mapIsEmpty!12773))

(assert (= (and b!2134949 (not condMapEmpty!12772)) mapNonEmpty!12774))

(assert (= b!2134933 b!2134949))

(assert (= b!2134950 b!2134933))

(assert (= b!2134940 b!2134950))

(assert (= (and b!2134961 ((_ is LongMap!2661) (v!28695 (underlying!5518 (cache!2956 cacheFurthestNullable!114))))) b!2134940))

(assert (= b!2134925 b!2134961))

(assert (= (and b!2134945 ((_ is HashMap!2575) (cache!2956 cacheFurthestNullable!114))) b!2134925))

(assert (= b!2134945 b!2134944))

(assert (= start!207588 b!2134945))

(assert (= (and b!2134943 condMapEmpty!12773) mapIsEmpty!12774))

(assert (= (and b!2134943 (not condMapEmpty!12773)) mapNonEmpty!12773))

(assert (= b!2134956 b!2134943))

(assert (= b!2134923 b!2134956))

(assert (= b!2134930 b!2134923))

(assert (= (and b!2134936 ((_ is LongMap!2662) (v!28697 (underlying!5520 (cache!2957 cacheDown!1098))))) b!2134930))

(assert (= b!2134953 b!2134936))

(assert (= (and b!2134926 ((_ is HashMap!2576) (cache!2957 cacheDown!1098))) b!2134953))

(assert (= start!207588 b!2134926))

(assert (= (and b!2134922 condMapEmpty!12774) mapIsEmpty!12772))

(assert (= (and b!2134922 (not condMapEmpty!12774)) mapNonEmpty!12772))

(assert (= b!2134924 b!2134922))

(assert (= b!2134939 b!2134924))

(assert (= b!2134948 b!2134939))

(assert (= (and b!2134947 ((_ is LongMap!2660) (v!28693 (underlying!5516 (cache!2955 cacheUp!979))))) b!2134948))

(assert (= b!2134938 b!2134947))

(assert (= (and b!2134921 ((_ is HashMap!2574) (cache!2955 cacheUp!979))) b!2134938))

(assert (= start!207588 b!2134921))

(assert (= (and start!207588 condSetEmpty!15913) setIsEmpty!15913))

(assert (= (and start!207588 (not condSetEmpty!15913)) setNonEmpty!15912))

(assert (= setNonEmpty!15912 b!2134958))

(assert (= start!207588 b!2134954))

(assert (= (and b!2134962 condSetEmpty!15912) setIsEmpty!15912))

(assert (= (and b!2134962 (not condSetEmpty!15912)) setNonEmpty!15913))

(assert (= setNonEmpty!15913 b!2134946))

(assert (= b!2134962 b!2134928))

(assert (= b!2134929 b!2134962))

(assert (= (and start!207588 ((_ is Cons!24134) stack!8)) b!2134929))

(declare-fun m!2582922 () Bool)

(assert (=> b!2134931 m!2582922))

(declare-fun m!2582924 () Bool)

(assert (=> b!2134924 m!2582924))

(declare-fun m!2582926 () Bool)

(assert (=> b!2134924 m!2582926))

(declare-fun m!2582928 () Bool)

(assert (=> b!2134959 m!2582928))

(declare-fun m!2582930 () Bool)

(assert (=> setNonEmpty!15913 m!2582930))

(declare-fun m!2582932 () Bool)

(assert (=> b!2134957 m!2582932))

(declare-fun m!2582934 () Bool)

(assert (=> b!2134957 m!2582934))

(declare-fun m!2582936 () Bool)

(assert (=> b!2134957 m!2582936))

(assert (=> b!2134957 m!2582936))

(declare-fun m!2582938 () Bool)

(assert (=> b!2134957 m!2582938))

(declare-fun m!2582940 () Bool)

(assert (=> b!2134945 m!2582940))

(declare-fun m!2582942 () Bool)

(assert (=> mapNonEmpty!12773 m!2582942))

(declare-fun m!2582944 () Bool)

(assert (=> b!2134944 m!2582944))

(declare-fun m!2582946 () Bool)

(assert (=> b!2134920 m!2582946))

(declare-fun m!2582948 () Bool)

(assert (=> b!2134941 m!2582948))

(declare-fun m!2582950 () Bool)

(assert (=> b!2134933 m!2582950))

(declare-fun m!2582952 () Bool)

(assert (=> b!2134933 m!2582952))

(declare-fun m!2582954 () Bool)

(assert (=> b!2134932 m!2582954))

(assert (=> b!2134937 m!2582928))

(declare-fun m!2582956 () Bool)

(assert (=> b!2134937 m!2582956))

(declare-fun m!2582958 () Bool)

(assert (=> mapNonEmpty!12774 m!2582958))

(declare-fun m!2582960 () Bool)

(assert (=> start!207588 m!2582960))

(declare-fun m!2582962 () Bool)

(assert (=> start!207588 m!2582962))

(declare-fun m!2582964 () Bool)

(assert (=> start!207588 m!2582964))

(declare-fun m!2582966 () Bool)

(assert (=> start!207588 m!2582966))

(declare-fun m!2582968 () Bool)

(assert (=> b!2134935 m!2582968))

(declare-fun m!2582970 () Bool)

(assert (=> b!2134955 m!2582970))

(assert (=> b!2134955 m!2582928))

(declare-fun m!2582972 () Bool)

(assert (=> b!2134951 m!2582972))

(declare-fun m!2582974 () Bool)

(assert (=> setNonEmpty!15912 m!2582974))

(declare-fun m!2582976 () Bool)

(assert (=> mapNonEmpty!12772 m!2582976))

(assert (=> b!2134934 m!2582928))

(assert (=> b!2134934 m!2582928))

(declare-fun m!2582978 () Bool)

(assert (=> b!2134954 m!2582978))

(declare-fun m!2582980 () Bool)

(assert (=> b!2134956 m!2582980))

(declare-fun m!2582982 () Bool)

(assert (=> b!2134956 m!2582982))

(declare-fun m!2582984 () Bool)

(assert (=> b!2134962 m!2582984))

(declare-fun m!2582986 () Bool)

(assert (=> b!2134929 m!2582986))

(declare-fun m!2582988 () Bool)

(assert (=> b!2134928 m!2582988))

(declare-fun m!2582990 () Bool)

(assert (=> b!2134963 m!2582990))

(check-sat (not mapNonEmpty!12773) (not b!2134937) (not b!2134929) (not b!2134932) (not b!2134958) b_and!172137 (not b!2134934) (not b!2134931) (not b!2134957) b_and!172131 (not b!2134933) (not mapNonEmpty!12772) b_and!172133 (not b_next!63259) (not b!2134922) (not b!2134951) b_and!172135 b_and!172139 (not b!2134954) (not b!2134935) (not b_next!63257) (not b!2134955) (not b!2134944) (not b!2134956) (not start!207588) (not b!2134945) (not setNonEmpty!15912) (not mapNonEmpty!12774) (not b!2134943) (not b!2134928) (not b!2134963) (not b_next!63253) (not b!2134941) (not b!2134962) (not b!2134920) (not b_next!63263) (not setNonEmpty!15913) (not b_next!63261) (not b!2134946) (not b!2134924) (not b_next!63255) (not b!2134959) b_and!172129 (not b!2134949))
(check-sat b_and!172137 (not b_next!63257) b_and!172131 (not b_next!63253) (not b_next!63263) (not b_next!63261) (not b_next!63255) b_and!172129 b_and!172133 (not b_next!63259) b_and!172135 b_and!172139)
