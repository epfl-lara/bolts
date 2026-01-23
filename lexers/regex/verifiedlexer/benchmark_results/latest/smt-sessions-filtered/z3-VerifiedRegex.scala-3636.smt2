; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207584 () Bool)

(assert start!207584)

(declare-fun b!2134664 () Bool)

(declare-fun b_free!62525 () Bool)

(declare-fun b_next!63229 () Bool)

(assert (=> b!2134664 (= b_free!62525 (not b_next!63229))))

(declare-fun tp!657768 () Bool)

(declare-fun b_and!172105 () Bool)

(assert (=> b!2134664 (= tp!657768 b_and!172105)))

(declare-fun b!2134682 () Bool)

(declare-fun b_free!62527 () Bool)

(declare-fun b_next!63231 () Bool)

(assert (=> b!2134682 (= b_free!62527 (not b_next!63231))))

(declare-fun tp!657752 () Bool)

(declare-fun b_and!172107 () Bool)

(assert (=> b!2134682 (= tp!657752 b_and!172107)))

(declare-fun b!2134645 () Bool)

(declare-fun b_free!62529 () Bool)

(declare-fun b_next!63233 () Bool)

(assert (=> b!2134645 (= b_free!62529 (not b_next!63233))))

(declare-fun tp!657745 () Bool)

(declare-fun b_and!172109 () Bool)

(assert (=> b!2134645 (= tp!657745 b_and!172109)))

(declare-fun b!2134679 () Bool)

(declare-fun b_free!62531 () Bool)

(declare-fun b_next!63235 () Bool)

(assert (=> b!2134679 (= b_free!62531 (not b_next!63235))))

(declare-fun tp!657760 () Bool)

(declare-fun b_and!172111 () Bool)

(assert (=> b!2134679 (= tp!657760 b_and!172111)))

(declare-fun b!2134673 () Bool)

(declare-fun b_free!62533 () Bool)

(declare-fun b_next!63237 () Bool)

(assert (=> b!2134673 (= b_free!62533 (not b_next!63237))))

(declare-fun tp!657766 () Bool)

(declare-fun b_and!172113 () Bool)

(assert (=> b!2134673 (= tp!657766 b_and!172113)))

(declare-fun b!2134650 () Bool)

(declare-fun b_free!62535 () Bool)

(declare-fun b_next!63239 () Bool)

(assert (=> b!2134650 (= b_free!62535 (not b_next!63239))))

(declare-fun tp!657751 () Bool)

(declare-fun b_and!172115 () Bool)

(assert (=> b!2134650 (= tp!657751 b_and!172115)))

(declare-fun b!2134668 () Bool)

(assert (=> b!2134668 true))

(declare-fun bs!444304 () Bool)

(declare-fun b!2134659 () Bool)

(assert (= bs!444304 (and b!2134659 b!2134668)))

(declare-fun lambda!79403 () Int)

(declare-fun lambda!79402 () Int)

(assert (=> bs!444304 (not (= lambda!79403 lambda!79402))))

(assert (=> b!2134659 true))

(declare-fun tp!657746 () Bool)

(declare-datatypes ((C!11624 0))(
  ( (C!11625 (val!6798 Int)) )
))
(declare-datatypes ((Regex!5739 0))(
  ( (ElementMatch!5739 (c!340299 C!11624)) (Concat!10041 (regOne!11990 Regex!5739) (regTwo!11990 Regex!5739)) (EmptyExpr!5739) (Star!5739 (reg!6068 Regex!5739)) (EmptyLang!5739) (Union!5739 (regOne!11991 Regex!5739) (regTwo!11991 Regex!5739)) )
))
(declare-datatypes ((List!24204 0))(
  ( (Nil!24120) (Cons!24120 (h!29521 Regex!5739) (t!196732 List!24204)) )
))
(declare-datatypes ((Context!2618 0))(
  ( (Context!2619 (exprs!1809 List!24204)) )
))
(declare-datatypes ((tuple3!3240 0))(
  ( (tuple3!3241 (_1!14039 Regex!5739) (_2!14039 Context!2618) (_3!2090 C!11624)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23898 0))(
  ( (tuple2!23899 (_1!14040 tuple3!3240) (_2!14040 (InoxSet Context!2618))) )
))
(declare-datatypes ((List!24205 0))(
  ( (Nil!24121) (Cons!24121 (h!29522 tuple2!23898) (t!196733 List!24205)) )
))
(declare-datatypes ((Hashable!2570 0))(
  ( (HashableExt!2569 (__x!16144 Int)) )
))
(declare-datatypes ((array!9009 0))(
  ( (array!9010 (arr!4016 (Array (_ BitVec 32) (_ BitVec 64))) (size!18866 (_ BitVec 32))) )
))
(declare-datatypes ((array!9011 0))(
  ( (array!9012 (arr!4017 (Array (_ BitVec 32) List!24205)) (size!18867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5312 0))(
  ( (LongMapFixedSize!5313 (defaultEntry!3021 Int) (mask!6841 (_ BitVec 32)) (extraKeys!2904 (_ BitVec 32)) (zeroValue!2914 List!24205) (minValue!2914 List!24205) (_size!5363 (_ BitVec 32)) (_keys!2953 array!9009) (_values!2936 array!9011) (_vacant!2717 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10449 0))(
  ( (Cell!10450 (v!28683 LongMapFixedSize!5312)) )
))
(declare-datatypes ((MutLongMap!2656 0))(
  ( (LongMap!2656 (underlying!5507 Cell!10449)) (MutLongMapExt!2655 (__x!16145 Int)) )
))
(declare-datatypes ((Cell!10451 0))(
  ( (Cell!10452 (v!28684 MutLongMap!2656)) )
))
(declare-datatypes ((MutableMap!2570 0))(
  ( (MutableMapExt!2569 (__x!16146 Int)) (HashMap!2570 (underlying!5508 Cell!10451) (hashF!4493 Hashable!2570) (_size!5364 (_ BitVec 32)) (defaultValue!2732 Int)) )
))
(declare-datatypes ((CacheDown!1760 0))(
  ( (CacheDown!1761 (cache!2951 MutableMap!2570)) )
))
(declare-fun cacheDown!1098 () CacheDown!1760)

(declare-fun e!1362310 () Bool)

(declare-fun e!1362335 () Bool)

(declare-fun tp!657757 () Bool)

(declare-fun array_inv!2872 (array!9009) Bool)

(declare-fun array_inv!2873 (array!9011) Bool)

(assert (=> b!2134645 (= e!1362310 (and tp!657745 tp!657757 tp!657746 (array_inv!2872 (_keys!2953 (v!28683 (underlying!5507 (v!28684 (underlying!5508 (cache!2951 cacheDown!1098))))))) (array_inv!2873 (_values!2936 (v!28683 (underlying!5507 (v!28684 (underlying!5508 (cache!2951 cacheDown!1098))))))) e!1362335))))

(declare-fun b!2134646 () Bool)

(declare-fun res!922378 () Bool)

(declare-fun e!1362301 () Bool)

(assert (=> b!2134646 (=> res!922378 e!1362301)))

(declare-fun z!3839 () (InoxSet Context!2618))

(declare-fun lostCauseZipper!90 ((InoxSet Context!2618)) Bool)

(assert (=> b!2134646 (= res!922378 (lostCauseZipper!90 z!3839))))

(declare-fun b!2134647 () Bool)

(declare-fun e!1362337 () Bool)

(declare-fun e!1362329 () Bool)

(declare-datatypes ((tuple2!23900 0))(
  ( (tuple2!23901 (_1!14041 Context!2618) (_2!14041 C!11624)) )
))
(declare-datatypes ((tuple2!23902 0))(
  ( (tuple2!23903 (_1!14042 tuple2!23900) (_2!14042 (InoxSet Context!2618))) )
))
(declare-datatypes ((List!24206 0))(
  ( (Nil!24122) (Cons!24122 (h!29523 tuple2!23902) (t!196734 List!24206)) )
))
(declare-datatypes ((array!9013 0))(
  ( (array!9014 (arr!4018 (Array (_ BitVec 32) List!24206)) (size!18868 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5314 0))(
  ( (LongMapFixedSize!5315 (defaultEntry!3022 Int) (mask!6842 (_ BitVec 32)) (extraKeys!2905 (_ BitVec 32)) (zeroValue!2915 List!24206) (minValue!2915 List!24206) (_size!5365 (_ BitVec 32)) (_keys!2954 array!9009) (_values!2937 array!9013) (_vacant!2718 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10453 0))(
  ( (Cell!10454 (v!28685 LongMapFixedSize!5314)) )
))
(declare-datatypes ((MutLongMap!2657 0))(
  ( (LongMap!2657 (underlying!5509 Cell!10453)) (MutLongMapExt!2656 (__x!16147 Int)) )
))
(declare-fun lt!797034 () MutLongMap!2657)

(get-info :version)

(assert (=> b!2134647 (= e!1362337 (and e!1362329 ((_ is LongMap!2657) lt!797034)))))

(declare-datatypes ((Cell!10455 0))(
  ( (Cell!10456 (v!28686 MutLongMap!2657)) )
))
(declare-datatypes ((Hashable!2571 0))(
  ( (HashableExt!2570 (__x!16148 Int)) )
))
(declare-datatypes ((MutableMap!2571 0))(
  ( (MutableMapExt!2570 (__x!16149 Int)) (HashMap!2571 (underlying!5510 Cell!10455) (hashF!4494 Hashable!2571) (_size!5366 (_ BitVec 32)) (defaultValue!2733 Int)) )
))
(declare-datatypes ((CacheUp!1780 0))(
  ( (CacheUp!1781 (cache!2952 MutableMap!2571)) )
))
(declare-fun cacheUp!979 () CacheUp!1780)

(assert (=> b!2134647 (= lt!797034 (v!28686 (underlying!5510 (cache!2952 cacheUp!979))))))

(declare-fun mapNonEmpty!12754 () Bool)

(declare-fun mapRes!12755 () Bool)

(declare-fun tp!657762 () Bool)

(declare-fun tp!657772 () Bool)

(assert (=> mapNonEmpty!12754 (= mapRes!12755 (and tp!657762 tp!657772))))

(declare-fun mapKey!12754 () (_ BitVec 32))

(declare-fun mapValue!12754 () List!24206)

(declare-fun mapRest!12755 () (Array (_ BitVec 32) List!24206))

(assert (=> mapNonEmpty!12754 (= (arr!4018 (_values!2937 (v!28685 (underlying!5509 (v!28686 (underlying!5510 (cache!2952 cacheUp!979))))))) (store mapRest!12755 mapKey!12754 mapValue!12754))))

(declare-fun b!2134648 () Bool)

(declare-fun e!1362312 () Bool)

(assert (=> b!2134648 (= e!1362312 (not e!1362301))))

(declare-fun res!922372 () Bool)

(assert (=> b!2134648 (=> res!922372 e!1362301)))

(declare-datatypes ((tuple3!3242 0))(
  ( (tuple3!3243 (_1!14043 (InoxSet Context!2618)) (_2!14043 Int) (_3!2091 Int)) )
))
(declare-datatypes ((tuple2!23904 0))(
  ( (tuple2!23905 (_1!14044 tuple3!3242) (_2!14044 Int)) )
))
(declare-datatypes ((List!24207 0))(
  ( (Nil!24123) (Cons!24123 (h!29524 tuple2!23904) (t!196735 List!24207)) )
))
(declare-datatypes ((array!9015 0))(
  ( (array!9016 (arr!4019 (Array (_ BitVec 32) List!24207)) (size!18869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5316 0))(
  ( (LongMapFixedSize!5317 (defaultEntry!3023 Int) (mask!6843 (_ BitVec 32)) (extraKeys!2906 (_ BitVec 32)) (zeroValue!2916 List!24207) (minValue!2916 List!24207) (_size!5367 (_ BitVec 32)) (_keys!2955 array!9009) (_values!2938 array!9015) (_vacant!2719 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10457 0))(
  ( (Cell!10458 (v!28687 LongMapFixedSize!5316)) )
))
(declare-datatypes ((List!24208 0))(
  ( (Nil!24124) (Cons!24124 (h!29525 C!11624) (t!196736 List!24208)) )
))
(declare-datatypes ((IArray!15759 0))(
  ( (IArray!15760 (innerList!7937 List!24208)) )
))
(declare-datatypes ((Conc!7877 0))(
  ( (Node!7877 (left!18583 Conc!7877) (right!18913 Conc!7877) (csize!15984 Int) (cheight!8088 Int)) (Leaf!11514 (xs!10819 IArray!15759) (csize!15985 Int)) (Empty!7877) )
))
(declare-datatypes ((MutLongMap!2658 0))(
  ( (LongMap!2658 (underlying!5511 Cell!10457)) (MutLongMapExt!2657 (__x!16150 Int)) )
))
(declare-datatypes ((Cell!10459 0))(
  ( (Cell!10460 (v!28688 MutLongMap!2658)) )
))
(declare-datatypes ((Hashable!2572 0))(
  ( (HashableExt!2571 (__x!16151 Int)) )
))
(declare-datatypes ((MutableMap!2572 0))(
  ( (MutableMapExt!2571 (__x!16152 Int)) (HashMap!2572 (underlying!5512 Cell!10459) (hashF!4495 Hashable!2572) (_size!5368 (_ BitVec 32)) (defaultValue!2734 Int)) )
))
(declare-datatypes ((BalanceConc!15516 0))(
  ( (BalanceConc!15517 (c!340300 Conc!7877)) )
))
(declare-datatypes ((CacheFurthestNullable!724 0))(
  ( (CacheFurthestNullable!725 (cache!2953 MutableMap!2572) (totalInput!3053 BalanceConc!15516)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!724)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(declare-datatypes ((Option!4907 0))(
  ( (None!4906) (Some!4906 (v!28689 Int)) )
))
(declare-fun get!7386 (CacheFurthestNullable!724 (InoxSet Context!2618) Int Int) Option!4907)

(assert (=> b!2134648 (= res!922372 ((_ is Some!4906) (get!7386 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!168 0))(
  ( (StackFrame!169 (z!5812 (InoxSet Context!2618)) (from!2698 Int) (lastNullablePos!385 Int) (res!922381 Int) (totalInput!3054 BalanceConc!15516)) )
))
(declare-datatypes ((List!24209 0))(
  ( (Nil!24125) (Cons!24125 (h!29526 StackFrame!168) (t!196737 List!24209)) )
))
(declare-fun stack!8 () List!24209)

(declare-fun forall!4927 (List!24209 Int) Bool)

(assert (=> b!2134648 (forall!4927 stack!8 lambda!79402)))

(declare-fun mapIsEmpty!12754 () Bool)

(assert (=> mapIsEmpty!12754 mapRes!12755))

(declare-fun b!2134649 () Bool)

(declare-fun e!1362331 () Bool)

(declare-fun e!1362321 () Bool)

(assert (=> b!2134649 (= e!1362331 e!1362321)))

(declare-fun res!922371 () Bool)

(assert (=> b!2134649 (=> (not res!922371) (not e!1362321))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!797038 () Int)

(assert (=> b!2134649 (= res!922371 (and (= totalInputSize!296 lt!797038) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15516)

(declare-fun size!18870 (BalanceConc!15516) Int)

(assert (=> b!2134649 (= lt!797038 (size!18870 totalInput!851))))

(declare-fun e!1362318 () Bool)

(declare-fun e!1362313 () Bool)

(assert (=> b!2134650 (= e!1362318 (and e!1362313 tp!657751))))

(declare-fun b!2134651 () Bool)

(declare-fun e!1362324 () Bool)

(assert (=> b!2134651 (= e!1362301 e!1362324)))

(declare-fun res!922368 () Bool)

(assert (=> b!2134651 (=> res!922368 e!1362324)))

(declare-fun lt!797037 () Int)

(declare-fun lt!797036 () Int)

(declare-datatypes ((tuple3!3244 0))(
  ( (tuple3!3245 (_1!14045 (InoxSet Context!2618)) (_2!14045 CacheUp!1780) (_3!2092 CacheDown!1760)) )
))
(declare-fun lt!797035 () tuple3!3244)

(declare-fun furthestNullablePosition!50 ((InoxSet Context!2618) Int BalanceConc!15516 Int Int) Int)

(assert (=> b!2134651 (= res!922368 (not (= lt!797037 (furthestNullablePosition!50 (_1!14045 lt!797035) (+ 1 from!1043) totalInput!851 lt!797038 lt!797036))))))

(declare-fun lt!797039 () Bool)

(assert (=> b!2134651 (= lt!797036 (ite lt!797039 from!1043 lastNullablePos!123))))

(declare-fun nullableZipper!116 ((InoxSet Context!2618)) Bool)

(assert (=> b!2134651 (= lt!797039 (nullableZipper!116 (_1!14045 lt!797035)))))

(declare-fun derivationStepZipperMem!38 ((InoxSet Context!2618) C!11624 CacheUp!1780 CacheDown!1760) tuple3!3244)

(declare-fun apply!5937 (BalanceConc!15516 Int) C!11624)

(assert (=> b!2134651 (= lt!797035 (derivationStepZipperMem!38 z!3839 (apply!5937 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun e!1362328 () Bool)

(declare-fun setRes!15900 () Bool)

(declare-fun tp!657748 () Bool)

(declare-fun setNonEmpty!15900 () Bool)

(declare-fun setElem!15901 () Context!2618)

(declare-fun inv!31776 (Context!2618) Bool)

(assert (=> setNonEmpty!15900 (= setRes!15900 (and tp!657748 (inv!31776 setElem!15901) e!1362328))))

(declare-fun setRest!15900 () (InoxSet Context!2618))

(assert (=> setNonEmpty!15900 (= (z!5812 (h!29526 stack!8)) ((_ map or) (store ((as const (Array Context!2618 Bool)) false) setElem!15901 true) setRest!15900))))

(declare-fun b!2134652 () Bool)

(declare-fun e!1362317 () Bool)

(declare-fun tp!657744 () Bool)

(declare-fun inv!31777 (Conc!7877) Bool)

(assert (=> b!2134652 (= e!1362317 (and (inv!31777 (c!340300 totalInput!851)) tp!657744))))

(declare-fun b!2134653 () Bool)

(assert (=> b!2134653 (= e!1362324 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) lt!797038) (< lt!797036 (- 1)) (>= lt!797036 (+ 1 from!1043)) (not lt!797039) (= lt!797036 from!1043)))))

(declare-fun b!2134654 () Bool)

(declare-fun e!1362336 () Bool)

(declare-fun tp!657749 () Bool)

(assert (=> b!2134654 (= e!1362336 tp!657749)))

(declare-fun setIsEmpty!15900 () Bool)

(assert (=> setIsEmpty!15900 setRes!15900))

(declare-fun b!2134655 () Bool)

(declare-fun e!1362314 () Bool)

(declare-fun lt!797040 () MutLongMap!2658)

(assert (=> b!2134655 (= e!1362313 (and e!1362314 ((_ is LongMap!2658) lt!797040)))))

(assert (=> b!2134655 (= lt!797040 (v!28688 (underlying!5512 (cache!2953 cacheFurthestNullable!114))))))

(declare-fun b!2134656 () Bool)

(declare-fun e!1362315 () Bool)

(declare-fun e!1362322 () Bool)

(assert (=> b!2134656 (= e!1362315 e!1362322)))

(declare-fun mapIsEmpty!12755 () Bool)

(declare-fun mapRes!12754 () Bool)

(assert (=> mapIsEmpty!12755 mapRes!12754))

(declare-fun b!2134657 () Bool)

(declare-fun e!1362326 () Bool)

(declare-fun e!1362334 () Bool)

(assert (=> b!2134657 (= e!1362326 e!1362334)))

(declare-fun b!2134658 () Bool)

(declare-fun e!1362327 () Bool)

(assert (=> b!2134658 (= e!1362329 e!1362327)))

(declare-fun res!922369 () Bool)

(assert (=> b!2134659 (=> (not res!922369) (not e!1362312))))

(assert (=> b!2134659 (= res!922369 (forall!4927 stack!8 lambda!79403))))

(declare-fun b!2134660 () Bool)

(declare-fun tp!657767 () Bool)

(declare-fun mapRes!12756 () Bool)

(assert (=> b!2134660 (= e!1362335 (and tp!657767 mapRes!12756))))

(declare-fun condMapEmpty!12754 () Bool)

(declare-fun mapDefault!12756 () List!24205)

(assert (=> b!2134660 (= condMapEmpty!12754 (= (arr!4017 (_values!2936 (v!28683 (underlying!5507 (v!28684 (underlying!5508 (cache!2951 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24205)) mapDefault!12756)))))

(declare-fun b!2134661 () Bool)

(declare-fun res!922370 () Bool)

(assert (=> b!2134661 (=> (not res!922370) (not e!1362321))))

(assert (=> b!2134661 (= res!922370 (= (totalInput!3053 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2134662 () Bool)

(declare-fun e!1362333 () Bool)

(declare-fun lt!797033 () MutLongMap!2656)

(assert (=> b!2134662 (= e!1362333 (and e!1362315 ((_ is LongMap!2656) lt!797033)))))

(assert (=> b!2134662 (= lt!797033 (v!28684 (underlying!5508 (cache!2951 cacheDown!1098))))))

(declare-fun b!2134663 () Bool)

(declare-fun e!1362304 () Bool)

(declare-fun e!1362303 () Bool)

(declare-fun inv!31778 (BalanceConc!15516) Bool)

(assert (=> b!2134663 (= e!1362303 (and e!1362318 (inv!31778 (totalInput!3053 cacheFurthestNullable!114)) e!1362304))))

(declare-fun e!1362323 () Bool)

(assert (=> b!2134664 (= e!1362323 (and e!1362333 tp!657768))))

(declare-fun b!2134665 () Bool)

(assert (=> b!2134665 (= e!1362322 e!1362310)))

(declare-fun e!1362320 () Bool)

(declare-fun e!1362325 () Bool)

(declare-fun b!2134666 () Bool)

(assert (=> b!2134666 (= e!1362325 (and setRes!15900 (inv!31778 (totalInput!3054 (h!29526 stack!8))) e!1362320))))

(declare-fun condSetEmpty!15900 () Bool)

(assert (=> b!2134666 (= condSetEmpty!15900 (= (z!5812 (h!29526 stack!8)) ((as const (Array Context!2618 Bool)) false)))))

(declare-fun b!2134667 () Bool)

(declare-fun res!922377 () Bool)

(assert (=> b!2134667 (=> (not res!922377) (not e!1362321))))

(declare-fun valid!2079 (CacheDown!1760) Bool)

(assert (=> b!2134667 (= res!922377 (valid!2079 cacheDown!1098))))

(assert (=> b!2134668 (= e!1362321 e!1362312)))

(declare-fun res!922374 () Bool)

(assert (=> b!2134668 (=> (not res!922374) (not e!1362312))))

(assert (=> b!2134668 (= res!922374 (forall!4927 stack!8 lambda!79402))))

(assert (=> b!2134668 (= lt!797037 (furthestNullablePosition!50 z!3839 from!1043 totalInput!851 lt!797038 lastNullablePos!123))))

(declare-fun b!2134669 () Bool)

(declare-fun res!922380 () Bool)

(assert (=> b!2134669 (=> (not res!922380) (not e!1362321))))

(declare-fun valid!2080 (CacheUp!1780) Bool)

(assert (=> b!2134669 (= res!922380 (valid!2080 cacheUp!979))))

(declare-fun b!2134670 () Bool)

(declare-fun e!1362332 () Bool)

(declare-fun tp!657763 () Bool)

(assert (=> b!2134670 (= e!1362332 (and tp!657763 mapRes!12754))))

(declare-fun condMapEmpty!12755 () Bool)

(declare-fun mapDefault!12755 () List!24207)

(assert (=> b!2134670 (= condMapEmpty!12755 (= (arr!4019 (_values!2938 (v!28687 (underlying!5511 (v!28688 (underlying!5512 (cache!2953 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24207)) mapDefault!12755)))))

(declare-fun b!2134671 () Bool)

(declare-fun res!922379 () Bool)

(assert (=> b!2134671 (=> (not res!922379) (not e!1362321))))

(declare-fun e!1362311 () Bool)

(assert (=> b!2134671 (= res!922379 e!1362311)))

(declare-fun res!922375 () Bool)

(assert (=> b!2134671 (=> res!922375 e!1362311)))

(assert (=> b!2134671 (= res!922375 (not (nullableZipper!116 z!3839)))))

(declare-fun b!2134672 () Bool)

(declare-fun res!922376 () Bool)

(assert (=> b!2134672 (=> res!922376 e!1362301)))

(assert (=> b!2134672 (= res!922376 (= from!1043 totalInputSize!296))))

(declare-fun e!1362307 () Bool)

(declare-fun tp!657753 () Bool)

(declare-fun e!1362319 () Bool)

(declare-fun tp!657761 () Bool)

(declare-fun array_inv!2874 (array!9013) Bool)

(assert (=> b!2134673 (= e!1362319 (and tp!657766 tp!657753 tp!657761 (array_inv!2872 (_keys!2954 (v!28685 (underlying!5509 (v!28686 (underlying!5510 (cache!2952 cacheUp!979))))))) (array_inv!2874 (_values!2937 (v!28685 (underlying!5509 (v!28686 (underlying!5510 (cache!2952 cacheUp!979))))))) e!1362307))))

(declare-fun mapNonEmpty!12755 () Bool)

(declare-fun tp!657758 () Bool)

(declare-fun tp!657747 () Bool)

(assert (=> mapNonEmpty!12755 (= mapRes!12754 (and tp!657758 tp!657747))))

(declare-fun mapRest!12756 () (Array (_ BitVec 32) List!24207))

(declare-fun mapKey!12755 () (_ BitVec 32))

(declare-fun mapValue!12756 () List!24207)

(assert (=> mapNonEmpty!12755 (= (arr!4019 (_values!2938 (v!28687 (underlying!5511 (v!28688 (underlying!5512 (cache!2953 cacheFurthestNullable!114))))))) (store mapRest!12756 mapKey!12755 mapValue!12756))))

(declare-fun b!2134674 () Bool)

(declare-fun tp!657764 () Bool)

(assert (=> b!2134674 (= e!1362304 (and (inv!31777 (c!340300 (totalInput!3053 cacheFurthestNullable!114))) tp!657764))))

(declare-fun b!2134675 () Bool)

(declare-fun tp!657770 () Bool)

(assert (=> b!2134675 (= e!1362307 (and tp!657770 mapRes!12755))))

(declare-fun condMapEmpty!12756 () Bool)

(declare-fun mapDefault!12754 () List!24206)

(assert (=> b!2134675 (= condMapEmpty!12756 (= (arr!4018 (_values!2937 (v!28685 (underlying!5509 (v!28686 (underlying!5510 (cache!2952 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24206)) mapDefault!12754)))))

(declare-fun b!2134676 () Bool)

(declare-fun tp!657765 () Bool)

(assert (=> b!2134676 (= e!1362328 tp!657765)))

(declare-fun mapNonEmpty!12756 () Bool)

(declare-fun tp!657754 () Bool)

(declare-fun tp!657769 () Bool)

(assert (=> mapNonEmpty!12756 (= mapRes!12756 (and tp!657754 tp!657769))))

(declare-fun mapValue!12755 () List!24205)

(declare-fun mapKey!12756 () (_ BitVec 32))

(declare-fun mapRest!12754 () (Array (_ BitVec 32) List!24205))

(assert (=> mapNonEmpty!12756 (= (arr!4017 (_values!2936 (v!28683 (underlying!5507 (v!28684 (underlying!5508 (cache!2951 cacheDown!1098))))))) (store mapRest!12754 mapKey!12756 mapValue!12755))))

(declare-fun b!2134677 () Bool)

(declare-fun e!1362306 () Bool)

(declare-fun e!1362330 () Bool)

(assert (=> b!2134677 (= e!1362306 e!1362330)))

(declare-fun b!2134678 () Bool)

(assert (=> b!2134678 (= e!1362314 e!1362326)))

(declare-fun tp!657771 () Bool)

(declare-fun tp!657755 () Bool)

(declare-fun array_inv!2875 (array!9015) Bool)

(assert (=> b!2134679 (= e!1362334 (and tp!657760 tp!657755 tp!657771 (array_inv!2872 (_keys!2955 (v!28687 (underlying!5511 (v!28688 (underlying!5512 (cache!2953 cacheFurthestNullable!114))))))) (array_inv!2875 (_values!2938 (v!28687 (underlying!5511 (v!28688 (underlying!5512 (cache!2953 cacheFurthestNullable!114))))))) e!1362332))))

(declare-fun tp!657750 () Bool)

(declare-fun b!2134680 () Bool)

(declare-fun e!1362316 () Bool)

(declare-fun inv!31779 (StackFrame!168) Bool)

(assert (=> b!2134680 (= e!1362316 (and (inv!31779 (h!29526 stack!8)) e!1362325 tp!657750))))

(declare-fun b!2134681 () Bool)

(declare-fun tp!657756 () Bool)

(assert (=> b!2134681 (= e!1362320 (and (inv!31777 (c!340300 (totalInput!3054 (h!29526 stack!8)))) tp!657756))))

(assert (=> b!2134682 (= e!1362330 (and e!1362337 tp!657752))))

(declare-fun b!2134683 () Bool)

(declare-fun res!922367 () Bool)

(assert (=> b!2134683 (=> (not res!922367) (not e!1362321))))

(declare-fun valid!2081 (CacheFurthestNullable!724) Bool)

(assert (=> b!2134683 (= res!922367 (valid!2081 cacheFurthestNullable!114))))

(declare-fun b!2134684 () Bool)

(declare-fun e!1362309 () Bool)

(assert (=> b!2134684 (= e!1362309 e!1362323)))

(declare-fun b!2134685 () Bool)

(assert (=> b!2134685 (= e!1362311 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun setIsEmpty!15901 () Bool)

(declare-fun setRes!15901 () Bool)

(assert (=> setIsEmpty!15901 setRes!15901))

(declare-fun mapIsEmpty!12756 () Bool)

(assert (=> mapIsEmpty!12756 mapRes!12756))

(declare-fun b!2134686 () Bool)

(assert (=> b!2134686 (= e!1362327 e!1362319)))

(declare-fun tp!657759 () Bool)

(declare-fun setNonEmpty!15901 () Bool)

(declare-fun setElem!15900 () Context!2618)

(assert (=> setNonEmpty!15901 (= setRes!15901 (and tp!657759 (inv!31776 setElem!15900) e!1362336))))

(declare-fun setRest!15901 () (InoxSet Context!2618))

(assert (=> setNonEmpty!15901 (= z!3839 ((_ map or) (store ((as const (Array Context!2618 Bool)) false) setElem!15900 true) setRest!15901))))

(declare-fun res!922373 () Bool)

(assert (=> start!207584 (=> (not res!922373) (not e!1362331))))

(assert (=> start!207584 (= res!922373 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207584 e!1362331))

(declare-fun inv!31780 (CacheFurthestNullable!724) Bool)

(assert (=> start!207584 (and (inv!31780 cacheFurthestNullable!114) e!1362303)))

(assert (=> start!207584 true))

(declare-fun inv!31781 (CacheDown!1760) Bool)

(assert (=> start!207584 (and (inv!31781 cacheDown!1098) e!1362309)))

(declare-fun inv!31782 (CacheUp!1780) Bool)

(assert (=> start!207584 (and (inv!31782 cacheUp!979) e!1362306)))

(declare-fun condSetEmpty!15901 () Bool)

(assert (=> start!207584 (= condSetEmpty!15901 (= z!3839 ((as const (Array Context!2618 Bool)) false)))))

(assert (=> start!207584 setRes!15901))

(assert (=> start!207584 (and (inv!31778 totalInput!851) e!1362317)))

(assert (=> start!207584 e!1362316))

(assert (= (and start!207584 res!922373) b!2134649))

(assert (= (and b!2134649 res!922371) b!2134671))

(assert (= (and b!2134671 (not res!922375)) b!2134685))

(assert (= (and b!2134671 res!922379) b!2134669))

(assert (= (and b!2134669 res!922380) b!2134667))

(assert (= (and b!2134667 res!922377) b!2134683))

(assert (= (and b!2134683 res!922367) b!2134661))

(assert (= (and b!2134661 res!922370) b!2134668))

(assert (= (and b!2134668 res!922374) b!2134659))

(assert (= (and b!2134659 res!922369) b!2134648))

(assert (= (and b!2134648 (not res!922372)) b!2134672))

(assert (= (and b!2134672 (not res!922376)) b!2134646))

(assert (= (and b!2134646 (not res!922378)) b!2134651))

(assert (= (and b!2134651 (not res!922368)) b!2134653))

(assert (= (and b!2134670 condMapEmpty!12755) mapIsEmpty!12755))

(assert (= (and b!2134670 (not condMapEmpty!12755)) mapNonEmpty!12755))

(assert (= b!2134679 b!2134670))

(assert (= b!2134657 b!2134679))

(assert (= b!2134678 b!2134657))

(assert (= (and b!2134655 ((_ is LongMap!2658) (v!28688 (underlying!5512 (cache!2953 cacheFurthestNullable!114))))) b!2134678))

(assert (= b!2134650 b!2134655))

(assert (= (and b!2134663 ((_ is HashMap!2572) (cache!2953 cacheFurthestNullable!114))) b!2134650))

(assert (= b!2134663 b!2134674))

(assert (= start!207584 b!2134663))

(assert (= (and b!2134660 condMapEmpty!12754) mapIsEmpty!12756))

(assert (= (and b!2134660 (not condMapEmpty!12754)) mapNonEmpty!12756))

(assert (= b!2134645 b!2134660))

(assert (= b!2134665 b!2134645))

(assert (= b!2134656 b!2134665))

(assert (= (and b!2134662 ((_ is LongMap!2656) (v!28684 (underlying!5508 (cache!2951 cacheDown!1098))))) b!2134656))

(assert (= b!2134664 b!2134662))

(assert (= (and b!2134684 ((_ is HashMap!2570) (cache!2951 cacheDown!1098))) b!2134664))

(assert (= start!207584 b!2134684))

(assert (= (and b!2134675 condMapEmpty!12756) mapIsEmpty!12754))

(assert (= (and b!2134675 (not condMapEmpty!12756)) mapNonEmpty!12754))

(assert (= b!2134673 b!2134675))

(assert (= b!2134686 b!2134673))

(assert (= b!2134658 b!2134686))

(assert (= (and b!2134647 ((_ is LongMap!2657) (v!28686 (underlying!5510 (cache!2952 cacheUp!979))))) b!2134658))

(assert (= b!2134682 b!2134647))

(assert (= (and b!2134677 ((_ is HashMap!2571) (cache!2952 cacheUp!979))) b!2134682))

(assert (= start!207584 b!2134677))

(assert (= (and start!207584 condSetEmpty!15901) setIsEmpty!15901))

(assert (= (and start!207584 (not condSetEmpty!15901)) setNonEmpty!15901))

(assert (= setNonEmpty!15901 b!2134654))

(assert (= start!207584 b!2134652))

(assert (= (and b!2134666 condSetEmpty!15900) setIsEmpty!15900))

(assert (= (and b!2134666 (not condSetEmpty!15900)) setNonEmpty!15900))

(assert (= setNonEmpty!15900 b!2134676))

(assert (= b!2134666 b!2134681))

(assert (= b!2134680 b!2134666))

(assert (= (and start!207584 ((_ is Cons!24125) stack!8)) b!2134680))

(declare-fun m!2582782 () Bool)

(assert (=> mapNonEmpty!12754 m!2582782))

(declare-fun m!2582784 () Bool)

(assert (=> setNonEmpty!15901 m!2582784))

(declare-fun m!2582786 () Bool)

(assert (=> b!2134674 m!2582786))

(declare-fun m!2582788 () Bool)

(assert (=> b!2134680 m!2582788))

(declare-fun m!2582790 () Bool)

(assert (=> b!2134663 m!2582790))

(declare-fun m!2582792 () Bool)

(assert (=> b!2134671 m!2582792))

(declare-fun m!2582794 () Bool)

(assert (=> b!2134668 m!2582794))

(declare-fun m!2582796 () Bool)

(assert (=> b!2134668 m!2582796))

(declare-fun m!2582798 () Bool)

(assert (=> b!2134683 m!2582798))

(declare-fun m!2582800 () Bool)

(assert (=> b!2134646 m!2582800))

(declare-fun m!2582802 () Bool)

(assert (=> b!2134659 m!2582802))

(declare-fun m!2582804 () Bool)

(assert (=> b!2134649 m!2582804))

(declare-fun m!2582806 () Bool)

(assert (=> mapNonEmpty!12755 m!2582806))

(declare-fun m!2582808 () Bool)

(assert (=> b!2134651 m!2582808))

(declare-fun m!2582810 () Bool)

(assert (=> b!2134651 m!2582810))

(declare-fun m!2582812 () Bool)

(assert (=> b!2134651 m!2582812))

(assert (=> b!2134651 m!2582812))

(declare-fun m!2582814 () Bool)

(assert (=> b!2134651 m!2582814))

(declare-fun m!2582816 () Bool)

(assert (=> mapNonEmpty!12756 m!2582816))

(declare-fun m!2582818 () Bool)

(assert (=> b!2134667 m!2582818))

(declare-fun m!2582820 () Bool)

(assert (=> b!2134648 m!2582820))

(assert (=> b!2134648 m!2582794))

(declare-fun m!2582822 () Bool)

(assert (=> b!2134669 m!2582822))

(declare-fun m!2582824 () Bool)

(assert (=> setNonEmpty!15900 m!2582824))

(declare-fun m!2582826 () Bool)

(assert (=> start!207584 m!2582826))

(declare-fun m!2582828 () Bool)

(assert (=> start!207584 m!2582828))

(declare-fun m!2582830 () Bool)

(assert (=> start!207584 m!2582830))

(declare-fun m!2582832 () Bool)

(assert (=> start!207584 m!2582832))

(declare-fun m!2582834 () Bool)

(assert (=> b!2134679 m!2582834))

(declare-fun m!2582836 () Bool)

(assert (=> b!2134679 m!2582836))

(declare-fun m!2582838 () Bool)

(assert (=> b!2134673 m!2582838))

(declare-fun m!2582840 () Bool)

(assert (=> b!2134673 m!2582840))

(declare-fun m!2582842 () Bool)

(assert (=> b!2134652 m!2582842))

(declare-fun m!2582844 () Bool)

(assert (=> b!2134681 m!2582844))

(declare-fun m!2582846 () Bool)

(assert (=> b!2134645 m!2582846))

(declare-fun m!2582848 () Bool)

(assert (=> b!2134645 m!2582848))

(declare-fun m!2582850 () Bool)

(assert (=> b!2134666 m!2582850))

(check-sat (not b!2134659) b_and!172109 (not b!2134668) (not b_next!63239) (not b!2134681) (not b!2134652) (not mapNonEmpty!12755) (not b!2134646) (not b!2134670) (not b_next!63231) (not b!2134648) (not b!2134679) (not b!2134666) (not b!2134671) (not b!2134676) (not b!2134651) b_and!172107 b_and!172115 b_and!172113 (not b!2134663) (not setNonEmpty!15900) (not b!2134683) (not b_next!63237) b_and!172111 (not b!2134680) (not b!2134649) (not b_next!63235) (not b_next!63233) (not b!2134673) (not b_next!63229) (not b!2134674) (not b!2134654) (not mapNonEmpty!12756) (not b!2134667) (not b!2134675) (not mapNonEmpty!12754) (not b!2134660) b_and!172105 (not start!207584) (not b!2134669) (not b!2134645) (not setNonEmpty!15901))
(check-sat (not b_next!63231) b_and!172107 b_and!172109 (not b_next!63239) (not b_next!63229) b_and!172105 b_and!172115 b_and!172113 (not b_next!63237) b_and!172111 (not b_next!63235) (not b_next!63233))
