; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412104 () Bool)

(assert start!412104)

(declare-fun b!4291735 () Bool)

(declare-fun b_free!127495 () Bool)

(declare-fun b_next!128199 () Bool)

(assert (=> b!4291735 (= b_free!127495 (not b_next!128199))))

(declare-fun tp!1316560 () Bool)

(declare-fun b_and!338711 () Bool)

(assert (=> b!4291735 (= tp!1316560 b_and!338711)))

(declare-fun b!4291755 () Bool)

(declare-fun b_free!127497 () Bool)

(declare-fun b_next!128201 () Bool)

(assert (=> b!4291755 (= b_free!127497 (not b_next!128201))))

(declare-fun tp!1316554 () Bool)

(declare-fun b_and!338713 () Bool)

(assert (=> b!4291755 (= tp!1316554 b_and!338713)))

(declare-fun b!4291749 () Bool)

(declare-fun b_free!127499 () Bool)

(declare-fun b_next!128203 () Bool)

(assert (=> b!4291749 (= b_free!127499 (not b_next!128203))))

(declare-fun tp!1316556 () Bool)

(declare-fun b_and!338715 () Bool)

(assert (=> b!4291749 (= tp!1316556 b_and!338715)))

(declare-fun b!4291774 () Bool)

(declare-fun b_free!127501 () Bool)

(declare-fun b_next!128205 () Bool)

(assert (=> b!4291774 (= b_free!127501 (not b_next!128205))))

(declare-fun tp!1316571 () Bool)

(declare-fun b_and!338717 () Bool)

(assert (=> b!4291774 (= tp!1316571 b_and!338717)))

(declare-fun b!4291733 () Bool)

(declare-fun b_free!127503 () Bool)

(declare-fun b_next!128207 () Bool)

(assert (=> b!4291733 (= b_free!127503 (not b_next!128207))))

(declare-fun tp!1316558 () Bool)

(declare-fun b_and!338719 () Bool)

(assert (=> b!4291733 (= tp!1316558 b_and!338719)))

(declare-fun b!4291750 () Bool)

(declare-fun b_free!127505 () Bool)

(declare-fun b_next!128209 () Bool)

(assert (=> b!4291750 (= b_free!127505 (not b_next!128209))))

(declare-fun tp!1316575 () Bool)

(declare-fun b_and!338721 () Bool)

(assert (=> b!4291750 (= tp!1316575 b_and!338721)))

(declare-fun tp!1316568 () Bool)

(declare-fun e!2666280 () Bool)

(declare-fun tp!1316570 () Bool)

(declare-fun e!2666255 () Bool)

(declare-datatypes ((C!26124 0))(
  ( (C!26125 (val!15388 Int)) )
))
(declare-datatypes ((Regex!12963 0))(
  ( (ElementMatch!12963 (c!730416 C!26124)) (Concat!21282 (regOne!26438 Regex!12963) (regTwo!26438 Regex!12963)) (EmptyExpr!12963) (Star!12963 (reg!13292 Regex!12963)) (EmptyLang!12963) (Union!12963 (regOne!26439 Regex!12963) (regTwo!26439 Regex!12963)) )
))
(declare-datatypes ((List!47840 0))(
  ( (Nil!47716) (Cons!47716 (h!53136 Regex!12963) (t!354444 List!47840)) )
))
(declare-datatypes ((Context!5706 0))(
  ( (Context!5707 (exprs!3353 List!47840)) )
))
(declare-datatypes ((tuple2!45384 0))(
  ( (tuple2!45385 (_1!25921 Context!5706) (_2!25921 C!26124)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45386 0))(
  ( (tuple2!45387 (_1!25922 tuple2!45384) (_2!25922 (InoxSet Context!5706))) )
))
(declare-datatypes ((List!47841 0))(
  ( (Nil!47717) (Cons!47717 (h!53137 tuple2!45386) (t!354445 List!47841)) )
))
(declare-datatypes ((array!15764 0))(
  ( (array!15765 (arr!7042 (Array (_ BitVec 32) (_ BitVec 64))) (size!35028 (_ BitVec 32))) )
))
(declare-datatypes ((array!15766 0))(
  ( (array!15767 (arr!7043 (Array (_ BitVec 32) List!47841)) (size!35029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8824 0))(
  ( (LongMapFixedSize!8825 (defaultEntry!4797 Int) (mask!12863 (_ BitVec 32)) (extraKeys!4661 (_ BitVec 32)) (zeroValue!4671 List!47841) (minValue!4671 List!47841) (_size!8867 (_ BitVec 32)) (_keys!4712 array!15764) (_values!4693 array!15766) (_vacant!4473 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17457 0))(
  ( (Cell!17458 (v!41640 LongMapFixedSize!8824)) )
))
(declare-datatypes ((MutLongMap!4412 0))(
  ( (LongMap!4412 (underlying!9053 Cell!17457)) (MutLongMapExt!4411 (__x!29261 Int)) )
))
(declare-datatypes ((Cell!17459 0))(
  ( (Cell!17460 (v!41641 MutLongMap!4412)) )
))
(declare-datatypes ((Hashable!4328 0))(
  ( (HashableExt!4327 (__x!29262 Int)) )
))
(declare-datatypes ((MutableMap!4318 0))(
  ( (MutableMapExt!4317 (__x!29263 Int)) (HashMap!4318 (underlying!9054 Cell!17459) (hashF!6360 Hashable!4328) (_size!8868 (_ BitVec 32)) (defaultValue!4489 Int)) )
))
(declare-datatypes ((CacheUp!2814 0))(
  ( (CacheUp!2815 (cache!4458 MutableMap!4318)) )
))
(declare-fun cacheUp!947 () CacheUp!2814)

(declare-fun array_inv!5054 (array!15764) Bool)

(declare-fun array_inv!5055 (array!15766) Bool)

(assert (=> b!4291733 (= e!2666255 (and tp!1316558 tp!1316570 tp!1316568 (array_inv!5054 (_keys!4712 (v!41640 (underlying!9053 (v!41641 (underlying!9054 (cache!4458 cacheUp!947))))))) (array_inv!5055 (_values!4693 (v!41640 (underlying!9053 (v!41641 (underlying!9054 (cache!4458 cacheUp!947))))))) e!2666280))))

(declare-fun mapIsEmpty!19870 () Bool)

(declare-fun mapRes!19870 () Bool)

(assert (=> mapIsEmpty!19870 mapRes!19870))

(declare-fun b!4291734 () Bool)

(declare-fun e!2666265 () Bool)

(declare-fun e!2666263 () Bool)

(assert (=> b!4291734 (= e!2666265 e!2666263)))

(declare-fun e!2666274 () Bool)

(declare-fun e!2666270 () Bool)

(assert (=> b!4291735 (= e!2666274 (and e!2666270 tp!1316560))))

(declare-fun b!4291736 () Bool)

(declare-fun e!2666251 () Bool)

(declare-fun tp!1316567 () Bool)

(declare-fun mapRes!19872 () Bool)

(assert (=> b!4291736 (= e!2666251 (and tp!1316567 mapRes!19872))))

(declare-fun condMapEmpty!19871 () Bool)

(declare-datatypes ((tuple2!45388 0))(
  ( (tuple2!45389 (_1!25923 (InoxSet Context!5706)) (_2!25923 Int)) )
))
(declare-datatypes ((Hashable!4329 0))(
  ( (HashableExt!4328 (__x!29264 Int)) )
))
(declare-datatypes ((tuple2!45390 0))(
  ( (tuple2!45391 (_1!25924 tuple2!45388) (_2!25924 Int)) )
))
(declare-datatypes ((List!47842 0))(
  ( (Nil!47718) (Cons!47718 (h!53138 tuple2!45390) (t!354446 List!47842)) )
))
(declare-datatypes ((array!15768 0))(
  ( (array!15769 (arr!7044 (Array (_ BitVec 32) List!47842)) (size!35030 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8826 0))(
  ( (LongMapFixedSize!8827 (defaultEntry!4798 Int) (mask!12864 (_ BitVec 32)) (extraKeys!4662 (_ BitVec 32)) (zeroValue!4672 List!47842) (minValue!4672 List!47842) (_size!8869 (_ BitVec 32)) (_keys!4713 array!15764) (_values!4694 array!15768) (_vacant!4474 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17461 0))(
  ( (Cell!17462 (v!41642 LongMapFixedSize!8826)) )
))
(declare-datatypes ((MutLongMap!4413 0))(
  ( (LongMap!4413 (underlying!9055 Cell!17461)) (MutLongMapExt!4412 (__x!29265 Int)) )
))
(declare-datatypes ((Cell!17463 0))(
  ( (Cell!17464 (v!41643 MutLongMap!4413)) )
))
(declare-datatypes ((MutableMap!4319 0))(
  ( (MutableMapExt!4318 (__x!29266 Int)) (HashMap!4319 (underlying!9056 Cell!17463) (hashF!6361 Hashable!4329) (_size!8870 (_ BitVec 32)) (defaultValue!4490 Int)) )
))
(declare-datatypes ((List!47843 0))(
  ( (Nil!47719) (Cons!47719 (h!53139 C!26124) (t!354447 List!47843)) )
))
(declare-datatypes ((IArray!28869 0))(
  ( (IArray!28870 (innerList!14492 List!47843)) )
))
(declare-datatypes ((Conc!14404 0))(
  ( (Node!14404 (left!35422 Conc!14404) (right!35752 Conc!14404) (csize!29038 Int) (cheight!14615 Int)) (Leaf!22287 (xs!17710 IArray!28869) (csize!29039 Int)) (Empty!14404) )
))
(declare-datatypes ((BalanceConc!28298 0))(
  ( (BalanceConc!28299 (c!730417 Conc!14404)) )
))
(declare-datatypes ((CacheFindLongestMatch!496 0))(
  ( (CacheFindLongestMatch!497 (cache!4459 MutableMap!4319) (totalInput!4367 BalanceConc!28298)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!496)

(declare-fun mapDefault!19872 () List!47842)

(assert (=> b!4291736 (= condMapEmpty!19871 (= (arr!7044 (_values!4694 (v!41642 (underlying!9055 (v!41643 (underlying!9056 (cache!4459 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47842)) mapDefault!19872)))))

(declare-fun mapNonEmpty!19870 () Bool)

(declare-fun tp!1316553 () Bool)

(declare-fun tp!1316565 () Bool)

(assert (=> mapNonEmpty!19870 (= mapRes!19870 (and tp!1316553 tp!1316565))))

(declare-fun mapRest!19871 () (Array (_ BitVec 32) List!47841))

(declare-fun mapKey!19870 () (_ BitVec 32))

(declare-fun mapValue!19870 () List!47841)

(assert (=> mapNonEmpty!19870 (= (arr!7043 (_values!4693 (v!41640 (underlying!9053 (v!41641 (underlying!9054 (cache!4458 cacheUp!947))))))) (store mapRest!19871 mapKey!19870 mapValue!19870))))

(declare-fun b!4291737 () Bool)

(declare-fun res!1759908 () Bool)

(declare-datatypes ((Hashable!4330 0))(
  ( (HashableExt!4329 (__x!29267 Int)) )
))
(declare-datatypes ((tuple3!5432 0))(
  ( (tuple3!5433 (_1!25925 Regex!12963) (_2!25925 Context!5706) (_3!3229 C!26124)) )
))
(declare-datatypes ((tuple2!45392 0))(
  ( (tuple2!45393 (_1!25926 tuple3!5432) (_2!25926 (InoxSet Context!5706))) )
))
(declare-datatypes ((List!47844 0))(
  ( (Nil!47720) (Cons!47720 (h!53140 tuple2!45392) (t!354448 List!47844)) )
))
(declare-datatypes ((array!15770 0))(
  ( (array!15771 (arr!7045 (Array (_ BitVec 32) List!47844)) (size!35031 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8828 0))(
  ( (LongMapFixedSize!8829 (defaultEntry!4799 Int) (mask!12865 (_ BitVec 32)) (extraKeys!4663 (_ BitVec 32)) (zeroValue!4673 List!47844) (minValue!4673 List!47844) (_size!8871 (_ BitVec 32)) (_keys!4714 array!15764) (_values!4695 array!15770) (_vacant!4475 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17465 0))(
  ( (Cell!17466 (v!41644 LongMapFixedSize!8828)) )
))
(declare-datatypes ((MutLongMap!4414 0))(
  ( (LongMap!4414 (underlying!9057 Cell!17465)) (MutLongMapExt!4413 (__x!29268 Int)) )
))
(declare-datatypes ((Cell!17467 0))(
  ( (Cell!17468 (v!41645 MutLongMap!4414)) )
))
(declare-datatypes ((MutableMap!4320 0))(
  ( (MutableMapExt!4319 (__x!29269 Int)) (HashMap!4320 (underlying!9058 Cell!17467) (hashF!6362 Hashable!4330) (_size!8872 (_ BitVec 32)) (defaultValue!4491 Int)) )
))
(declare-datatypes ((CacheDown!2934 0))(
  ( (CacheDown!2935 (cache!4460 MutableMap!4320)) )
))
(declare-datatypes ((tuple4!1026 0))(
  ( (tuple4!1027 (_1!25927 Int) (_2!25927 CacheUp!2814) (_3!3230 CacheDown!2934) (_4!513 CacheFindLongestMatch!496)) )
))
(declare-fun lt!1517076 () tuple4!1026)

(declare-fun valid!3422 (CacheUp!2814) Bool)

(assert (=> b!4291737 (= res!1759908 (valid!3422 (_2!25927 lt!1517076)))))

(declare-fun e!2666272 () Bool)

(assert (=> b!4291737 (=> (not res!1759908) (not e!2666272))))

(declare-fun b!4291738 () Bool)

(declare-fun e!2666279 () Bool)

(declare-fun z!3765 () (InoxSet Context!5706))

(declare-fun lostCauseZipper!645 ((InoxSet Context!5706)) Bool)

(assert (=> b!4291738 (= e!2666279 (lostCauseZipper!645 z!3765))))

(declare-fun b!4291739 () Bool)

(declare-fun e!2666277 () Int)

(assert (=> b!4291739 (= e!2666277 (+ 1 (_1!25927 lt!1517076)))))

(declare-fun b!4291740 () Bool)

(declare-fun totalInput!812 () BalanceConc!28298)

(assert (=> b!4291740 (= e!2666272 (= (totalInput!4367 (_4!513 lt!1517076)) totalInput!812))))

(declare-fun b!4291741 () Bool)

(declare-fun c!730412 () Bool)

(declare-datatypes ((tuple3!5434 0))(
  ( (tuple3!5435 (_1!25928 (InoxSet Context!5706)) (_2!25928 CacheUp!2814) (_3!3231 CacheDown!2934)) )
))
(declare-fun lt!1517073 () tuple3!5434)

(declare-fun nullableZipper!765 ((InoxSet Context!5706)) Bool)

(assert (=> b!4291741 (= c!730412 (nullableZipper!765 (_1!25928 lt!1517073)))))

(declare-fun e!2666250 () Int)

(assert (=> b!4291741 (= e!2666277 e!2666250)))

(declare-fun b!4291742 () Bool)

(declare-fun e!2666284 () Bool)

(declare-fun e!2666259 () Bool)

(assert (=> b!4291742 (= e!2666284 e!2666259)))

(declare-fun res!1759906 () Bool)

(assert (=> b!4291742 (=> (not res!1759906) (not e!2666259))))

(declare-fun lt!1517078 () Int)

(declare-fun totalInputSize!257 () Int)

(declare-fun from!999 () Int)

(assert (=> b!4291742 (= res!1759906 (and (<= from!999 lt!1517078) (= totalInputSize!257 lt!1517078) (= (totalInput!4367 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35032 (BalanceConc!28298) Int)

(assert (=> b!4291742 (= lt!1517078 (size!35032 totalInput!812))))

(declare-fun b!4291743 () Bool)

(declare-fun e!2666248 () Bool)

(declare-fun tp!1316555 () Bool)

(declare-fun mapRes!19871 () Bool)

(assert (=> b!4291743 (= e!2666248 (and tp!1316555 mapRes!19871))))

(declare-fun condMapEmpty!19870 () Bool)

(declare-fun cacheDown!1066 () CacheDown!2934)

(declare-fun mapDefault!19871 () List!47844)

(assert (=> b!4291743 (= condMapEmpty!19870 (= (arr!7045 (_values!4695 (v!41644 (underlying!9057 (v!41645 (underlying!9058 (cache!4460 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47844)) mapDefault!19871)))))

(declare-fun b!4291744 () Bool)

(declare-fun e!2666269 () Bool)

(declare-datatypes ((tuple4!1028 0))(
  ( (tuple4!1029 (_1!25929 Int) (_2!25929 CacheFindLongestMatch!496) (_3!3232 CacheDown!2934) (_4!514 CacheUp!2814)) )
))
(declare-fun lt!1517075 () tuple4!1028)

(assert (=> b!4291744 (= e!2666269 (= totalInput!812 (totalInput!4367 (_2!25929 lt!1517075))))))

(declare-datatypes ((Unit!66407 0))(
  ( (Unit!66408) )
))
(declare-fun lt!1517070 () Unit!66407)

(declare-fun lemmaInvariant!409 (CacheFindLongestMatch!496) Unit!66407)

(assert (=> b!4291744 (= lt!1517070 (lemmaInvariant!409 (_2!25929 lt!1517075)))))

(declare-fun b!4291745 () Bool)

(declare-fun e!2666278 () Bool)

(declare-fun e!2666283 () Bool)

(assert (=> b!4291745 (= e!2666278 e!2666283)))

(declare-fun b!4291746 () Bool)

(assert (=> b!4291746 (= e!2666250 1)))

(declare-fun b!4291747 () Bool)

(declare-fun e!2666252 () Bool)

(declare-fun tp!1316561 () Bool)

(declare-fun inv!63231 (Conc!14404) Bool)

(assert (=> b!4291747 (= e!2666252 (and (inv!63231 (c!730417 (totalInput!4367 cacheFindLongestMatch!183))) tp!1316561))))

(declare-fun mapIsEmpty!19871 () Bool)

(assert (=> mapIsEmpty!19871 mapRes!19872))

(declare-fun setIsEmpty!26472 () Bool)

(declare-fun setRes!26472 () Bool)

(assert (=> setIsEmpty!26472 setRes!26472))

(declare-fun b!4291748 () Bool)

(declare-fun e!2666285 () tuple4!1028)

(assert (=> b!4291748 (= e!2666285 (tuple4!1029 e!2666277 (_4!513 lt!1517076) (_3!3230 lt!1517076) (_2!25927 lt!1517076)))))

(declare-fun derivationStepZipperMem!130 ((InoxSet Context!5706) C!26124 CacheUp!2814 CacheDown!2934) tuple3!5434)

(declare-fun apply!10834 (BalanceConc!28298 Int) C!26124)

(assert (=> b!4291748 (= lt!1517073 (derivationStepZipperMem!130 z!3765 (apply!10834 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!14 ((InoxSet Context!5706) Int BalanceConc!28298 Int CacheUp!2814 CacheDown!2934 CacheFindLongestMatch!496) tuple4!1026)

(assert (=> b!4291748 (= lt!1517076 (findLongestMatchInnerZipperFastV2Mem!14 (_1!25928 lt!1517073) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25928 lt!1517073) (_3!3231 lt!1517073) cacheFindLongestMatch!183))))

(declare-fun res!1759907 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!33 ((InoxSet Context!5706) Int BalanceConc!28298 Int) Int)

(assert (=> b!4291748 (= res!1759907 (= (_1!25927 lt!1517076) (findLongestMatchInnerZipperFastV2!33 (_1!25928 lt!1517073) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4291748 (=> (not res!1759907) (not e!2666272))))

(assert (=> b!4291748 e!2666272))

(declare-fun c!730414 () Bool)

(assert (=> b!4291748 (= c!730414 (> (_1!25927 lt!1517076) 0))))

(declare-fun e!2666253 () Bool)

(declare-fun e!2666256 () Bool)

(assert (=> b!4291749 (= e!2666253 (and e!2666256 tp!1316556))))

(declare-fun tp!1316564 () Bool)

(declare-fun tp!1316573 () Bool)

(declare-fun e!2666267 () Bool)

(declare-fun array_inv!5056 (array!15768) Bool)

(assert (=> b!4291750 (= e!2666267 (and tp!1316575 tp!1316564 tp!1316573 (array_inv!5054 (_keys!4713 (v!41642 (underlying!9055 (v!41643 (underlying!9056 (cache!4459 cacheFindLongestMatch!183))))))) (array_inv!5056 (_values!4694 (v!41642 (underlying!9055 (v!41643 (underlying!9056 (cache!4459 cacheFindLongestMatch!183))))))) e!2666251))))

(declare-fun b!4291751 () Bool)

(declare-fun e!2666260 () Bool)

(assert (=> b!4291751 (= e!2666260 e!2666265)))

(declare-fun b!4291752 () Bool)

(assert (=> b!4291752 (= e!2666250 0)))

(declare-fun b!4291753 () Bool)

(declare-fun e!2666281 () Bool)

(assert (=> b!4291753 (= e!2666281 e!2666267)))

(declare-fun b!4291754 () Bool)

(declare-fun res!1759903 () Bool)

(assert (=> b!4291754 (=> (not res!1759903) (not e!2666259))))

(get-info :version)

(declare-datatypes ((Option!10136 0))(
  ( (None!10135) (Some!10135 (v!41646 Int)) )
))
(declare-fun get!15449 (CacheFindLongestMatch!496 (InoxSet Context!5706) Int) Option!10136)

(assert (=> b!4291754 (= res!1759903 (not ((_ is Some!10135) (get!15449 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun tp!1316559 () Bool)

(declare-fun tp!1316577 () Bool)

(declare-fun array_inv!5057 (array!15770) Bool)

(assert (=> b!4291755 (= e!2666263 (and tp!1316554 tp!1316559 tp!1316577 (array_inv!5054 (_keys!4714 (v!41644 (underlying!9057 (v!41645 (underlying!9058 (cache!4460 cacheDown!1066))))))) (array_inv!5057 (_values!4695 (v!41644 (underlying!9057 (v!41645 (underlying!9058 (cache!4460 cacheDown!1066))))))) e!2666248))))

(declare-fun b!4291756 () Bool)

(declare-fun lt!1517077 () MutLongMap!4414)

(assert (=> b!4291756 (= e!2666256 (and e!2666260 ((_ is LongMap!4414) lt!1517077)))))

(assert (=> b!4291756 (= lt!1517077 (v!41645 (underlying!9058 (cache!4460 cacheDown!1066))))))

(declare-fun b!4291757 () Bool)

(assert (=> b!4291757 (= e!2666285 (tuple4!1029 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4291758 () Bool)

(assert (=> b!4291758 (= e!2666259 (not e!2666269))))

(declare-fun res!1759902 () Bool)

(assert (=> b!4291758 (=> res!1759902 e!2666269)))

(declare-fun lt!1517069 () Int)

(assert (=> b!4291758 (= res!1759902 (not (= (_1!25929 lt!1517075) lt!1517069)))))

(declare-fun e!2666261 () Bool)

(assert (=> b!4291758 e!2666261))

(declare-fun c!730415 () Bool)

(declare-fun lt!1517072 () Bool)

(assert (=> b!4291758 (= c!730415 lt!1517072)))

(assert (=> b!4291758 (= lt!1517069 (findLongestMatchInnerZipperFastV2!33 z!3765 from!999 totalInput!812 totalInputSize!257))))

(assert (=> b!4291758 (= lt!1517075 e!2666285)))

(declare-fun c!730411 () Bool)

(assert (=> b!4291758 (= c!730411 lt!1517072)))

(assert (=> b!4291758 (= lt!1517072 e!2666279)))

(declare-fun res!1759901 () Bool)

(assert (=> b!4291758 (=> res!1759901 e!2666279)))

(assert (=> b!4291758 (= res!1759901 (= from!999 totalInputSize!257))))

(declare-fun b!4291759 () Bool)

(declare-fun e!2666271 () Bool)

(assert (=> b!4291759 (= e!2666271 e!2666281)))

(declare-fun b!4291760 () Bool)

(declare-fun e!2666273 () Bool)

(declare-fun tp!1316576 () Bool)

(assert (=> b!4291760 (= e!2666273 (and (inv!63231 (c!730417 totalInput!812)) tp!1316576))))

(declare-fun b!4291761 () Bool)

(assert (=> b!4291761 (= e!2666261 (= lt!1517069 0))))

(declare-fun b!4291762 () Bool)

(declare-fun e!2666264 () Int)

(declare-fun lt!1517068 () Int)

(assert (=> b!4291762 (= e!2666264 (+ 1 lt!1517068))))

(declare-fun b!4291763 () Bool)

(assert (=> b!4291763 (= e!2666261 (= lt!1517069 e!2666264))))

(declare-fun lt!1517067 () (InoxSet Context!5706))

(declare-fun derivationStepZipper!545 ((InoxSet Context!5706) C!26124) (InoxSet Context!5706))

(assert (=> b!4291763 (= lt!1517067 (derivationStepZipper!545 z!3765 (apply!10834 totalInput!812 from!999)))))

(assert (=> b!4291763 (= lt!1517068 (findLongestMatchInnerZipperFastV2!33 lt!1517067 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun c!730413 () Bool)

(assert (=> b!4291763 (= c!730413 (> lt!1517068 0))))

(declare-fun b!4291764 () Bool)

(declare-fun e!2666262 () Bool)

(assert (=> b!4291764 (= e!2666262 e!2666274)))

(declare-fun mapNonEmpty!19871 () Bool)

(declare-fun tp!1316557 () Bool)

(declare-fun tp!1316569 () Bool)

(assert (=> mapNonEmpty!19871 (= mapRes!19871 (and tp!1316557 tp!1316569))))

(declare-fun mapValue!19872 () List!47844)

(declare-fun mapRest!19870 () (Array (_ BitVec 32) List!47844))

(declare-fun mapKey!19872 () (_ BitVec 32))

(assert (=> mapNonEmpty!19871 (= (arr!7045 (_values!4695 (v!41644 (underlying!9057 (v!41645 (underlying!9058 (cache!4460 cacheDown!1066))))))) (store mapRest!19870 mapKey!19872 mapValue!19872))))

(declare-fun b!4291765 () Bool)

(declare-fun c!730410 () Bool)

(assert (=> b!4291765 (= c!730410 (nullableZipper!765 lt!1517067))))

(declare-fun e!2666258 () Int)

(assert (=> b!4291765 (= e!2666264 e!2666258)))

(declare-fun res!1759905 () Bool)

(assert (=> start!412104 (=> (not res!1759905) (not e!2666284))))

(assert (=> start!412104 (= res!1759905 (>= from!999 0))))

(assert (=> start!412104 e!2666284))

(declare-fun e!2666254 () Bool)

(declare-fun inv!63232 (CacheDown!2934) Bool)

(assert (=> start!412104 (and (inv!63232 cacheDown!1066) e!2666254)))

(declare-fun e!2666249 () Bool)

(declare-fun inv!63233 (CacheFindLongestMatch!496) Bool)

(assert (=> start!412104 (and (inv!63233 cacheFindLongestMatch!183) e!2666249)))

(declare-fun condSetEmpty!26472 () Bool)

(assert (=> start!412104 (= condSetEmpty!26472 (= z!3765 ((as const (Array Context!5706 Bool)) false)))))

(assert (=> start!412104 setRes!26472))

(assert (=> start!412104 true))

(declare-fun inv!63234 (BalanceConc!28298) Bool)

(assert (=> start!412104 (and (inv!63234 totalInput!812) e!2666273)))

(declare-fun inv!63235 (CacheUp!2814) Bool)

(assert (=> start!412104 (and (inv!63235 cacheUp!947) e!2666262)))

(declare-fun b!4291766 () Bool)

(declare-fun e!2666266 () Bool)

(declare-fun lt!1517074 () MutLongMap!4413)

(assert (=> b!4291766 (= e!2666266 (and e!2666271 ((_ is LongMap!4413) lt!1517074)))))

(assert (=> b!4291766 (= lt!1517074 (v!41643 (underlying!9056 (cache!4459 cacheFindLongestMatch!183))))))

(declare-fun setElem!26472 () Context!5706)

(declare-fun tp!1316574 () Bool)

(declare-fun setNonEmpty!26472 () Bool)

(declare-fun e!2666275 () Bool)

(declare-fun inv!63236 (Context!5706) Bool)

(assert (=> setNonEmpty!26472 (= setRes!26472 (and tp!1316574 (inv!63236 setElem!26472) e!2666275))))

(declare-fun setRest!26472 () (InoxSet Context!5706))

(assert (=> setNonEmpty!26472 (= z!3765 ((_ map or) (store ((as const (Array Context!5706 Bool)) false) setElem!26472 true) setRest!26472))))

(declare-fun b!4291767 () Bool)

(assert (=> b!4291767 (= e!2666254 e!2666253)))

(declare-fun b!4291768 () Bool)

(declare-fun res!1759904 () Bool)

(declare-fun valid!3423 (CacheFindLongestMatch!496) Bool)

(assert (=> b!4291768 (= res!1759904 (valid!3423 (_4!513 lt!1517076)))))

(assert (=> b!4291768 (=> (not res!1759904) (not e!2666272))))

(declare-fun b!4291769 () Bool)

(declare-fun lt!1517071 () MutLongMap!4412)

(assert (=> b!4291769 (= e!2666270 (and e!2666278 ((_ is LongMap!4412) lt!1517071)))))

(assert (=> b!4291769 (= lt!1517071 (v!41641 (underlying!9054 (cache!4458 cacheUp!947))))))

(declare-fun e!2666257 () Bool)

(declare-fun b!4291770 () Bool)

(assert (=> b!4291770 (= e!2666249 (and e!2666257 (inv!63234 (totalInput!4367 cacheFindLongestMatch!183)) e!2666252))))

(declare-fun b!4291771 () Bool)

(declare-fun res!1759909 () Bool)

(declare-fun valid!3424 (CacheDown!2934) Bool)

(assert (=> b!4291771 (= res!1759909 (valid!3424 (_3!3230 lt!1517076)))))

(assert (=> b!4291771 (=> (not res!1759909) (not e!2666272))))

(declare-fun b!4291772 () Bool)

(assert (=> b!4291772 (= e!2666258 1)))

(declare-fun b!4291773 () Bool)

(declare-fun tp!1316562 () Bool)

(assert (=> b!4291773 (= e!2666280 (and tp!1316562 mapRes!19870))))

(declare-fun condMapEmpty!19872 () Bool)

(declare-fun mapDefault!19870 () List!47841)

(assert (=> b!4291773 (= condMapEmpty!19872 (= (arr!7043 (_values!4693 (v!41640 (underlying!9053 (v!41641 (underlying!9054 (cache!4458 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47841)) mapDefault!19870)))))

(declare-fun mapIsEmpty!19872 () Bool)

(assert (=> mapIsEmpty!19872 mapRes!19871))

(assert (=> b!4291774 (= e!2666257 (and e!2666266 tp!1316571))))

(declare-fun b!4291775 () Bool)

(assert (=> b!4291775 (= e!2666258 0)))

(declare-fun b!4291776 () Bool)

(declare-fun tp!1316563 () Bool)

(assert (=> b!4291776 (= e!2666275 tp!1316563)))

(declare-fun mapNonEmpty!19872 () Bool)

(declare-fun tp!1316566 () Bool)

(declare-fun tp!1316572 () Bool)

(assert (=> mapNonEmpty!19872 (= mapRes!19872 (and tp!1316566 tp!1316572))))

(declare-fun mapRest!19872 () (Array (_ BitVec 32) List!47842))

(declare-fun mapKey!19871 () (_ BitVec 32))

(declare-fun mapValue!19871 () List!47842)

(assert (=> mapNonEmpty!19872 (= (arr!7044 (_values!4694 (v!41642 (underlying!9055 (v!41643 (underlying!9056 (cache!4459 cacheFindLongestMatch!183))))))) (store mapRest!19872 mapKey!19871 mapValue!19871))))

(declare-fun b!4291777 () Bool)

(assert (=> b!4291777 (= e!2666283 e!2666255)))

(assert (= (and start!412104 res!1759905) b!4291742))

(assert (= (and b!4291742 res!1759906) b!4291754))

(assert (= (and b!4291754 res!1759903) b!4291758))

(assert (= (and b!4291758 (not res!1759901)) b!4291738))

(assert (= (and b!4291758 c!730411) b!4291757))

(assert (= (and b!4291758 (not c!730411)) b!4291748))

(assert (= (and b!4291748 res!1759907) b!4291737))

(assert (= (and b!4291737 res!1759908) b!4291771))

(assert (= (and b!4291771 res!1759909) b!4291768))

(assert (= (and b!4291768 res!1759904) b!4291740))

(assert (= (and b!4291748 c!730414) b!4291739))

(assert (= (and b!4291748 (not c!730414)) b!4291741))

(assert (= (and b!4291741 c!730412) b!4291746))

(assert (= (and b!4291741 (not c!730412)) b!4291752))

(assert (= (and b!4291758 c!730415) b!4291761))

(assert (= (and b!4291758 (not c!730415)) b!4291763))

(assert (= (and b!4291763 c!730413) b!4291762))

(assert (= (and b!4291763 (not c!730413)) b!4291765))

(assert (= (and b!4291765 c!730410) b!4291772))

(assert (= (and b!4291765 (not c!730410)) b!4291775))

(assert (= (and b!4291758 (not res!1759902)) b!4291744))

(assert (= (and b!4291743 condMapEmpty!19870) mapIsEmpty!19872))

(assert (= (and b!4291743 (not condMapEmpty!19870)) mapNonEmpty!19871))

(assert (= b!4291755 b!4291743))

(assert (= b!4291734 b!4291755))

(assert (= b!4291751 b!4291734))

(assert (= (and b!4291756 ((_ is LongMap!4414) (v!41645 (underlying!9058 (cache!4460 cacheDown!1066))))) b!4291751))

(assert (= b!4291749 b!4291756))

(assert (= (and b!4291767 ((_ is HashMap!4320) (cache!4460 cacheDown!1066))) b!4291749))

(assert (= start!412104 b!4291767))

(assert (= (and b!4291736 condMapEmpty!19871) mapIsEmpty!19871))

(assert (= (and b!4291736 (not condMapEmpty!19871)) mapNonEmpty!19872))

(assert (= b!4291750 b!4291736))

(assert (= b!4291753 b!4291750))

(assert (= b!4291759 b!4291753))

(assert (= (and b!4291766 ((_ is LongMap!4413) (v!41643 (underlying!9056 (cache!4459 cacheFindLongestMatch!183))))) b!4291759))

(assert (= b!4291774 b!4291766))

(assert (= (and b!4291770 ((_ is HashMap!4319) (cache!4459 cacheFindLongestMatch!183))) b!4291774))

(assert (= b!4291770 b!4291747))

(assert (= start!412104 b!4291770))

(assert (= (and start!412104 condSetEmpty!26472) setIsEmpty!26472))

(assert (= (and start!412104 (not condSetEmpty!26472)) setNonEmpty!26472))

(assert (= setNonEmpty!26472 b!4291776))

(assert (= start!412104 b!4291760))

(assert (= (and b!4291773 condMapEmpty!19872) mapIsEmpty!19870))

(assert (= (and b!4291773 (not condMapEmpty!19872)) mapNonEmpty!19870))

(assert (= b!4291733 b!4291773))

(assert (= b!4291777 b!4291733))

(assert (= b!4291745 b!4291777))

(assert (= (and b!4291769 ((_ is LongMap!4412) (v!41641 (underlying!9054 (cache!4458 cacheUp!947))))) b!4291745))

(assert (= b!4291735 b!4291769))

(assert (= (and b!4291764 ((_ is HashMap!4318) (cache!4458 cacheUp!947))) b!4291735))

(assert (= start!412104 b!4291764))

(declare-fun m!4885539 () Bool)

(assert (=> setNonEmpty!26472 m!4885539))

(declare-fun m!4885541 () Bool)

(assert (=> b!4291754 m!4885541))

(declare-fun m!4885543 () Bool)

(assert (=> b!4291742 m!4885543))

(declare-fun m!4885545 () Bool)

(assert (=> b!4291765 m!4885545))

(declare-fun m!4885547 () Bool)

(assert (=> mapNonEmpty!19872 m!4885547))

(declare-fun m!4885549 () Bool)

(assert (=> b!4291763 m!4885549))

(assert (=> b!4291763 m!4885549))

(declare-fun m!4885551 () Bool)

(assert (=> b!4291763 m!4885551))

(declare-fun m!4885553 () Bool)

(assert (=> b!4291763 m!4885553))

(declare-fun m!4885555 () Bool)

(assert (=> b!4291738 m!4885555))

(declare-fun m!4885557 () Bool)

(assert (=> b!4291741 m!4885557))

(declare-fun m!4885559 () Bool)

(assert (=> b!4291771 m!4885559))

(declare-fun m!4885561 () Bool)

(assert (=> mapNonEmpty!19871 m!4885561))

(declare-fun m!4885563 () Bool)

(assert (=> b!4291744 m!4885563))

(assert (=> b!4291748 m!4885549))

(assert (=> b!4291748 m!4885549))

(declare-fun m!4885565 () Bool)

(assert (=> b!4291748 m!4885565))

(declare-fun m!4885567 () Bool)

(assert (=> b!4291748 m!4885567))

(declare-fun m!4885569 () Bool)

(assert (=> b!4291748 m!4885569))

(declare-fun m!4885571 () Bool)

(assert (=> b!4291768 m!4885571))

(declare-fun m!4885573 () Bool)

(assert (=> b!4291747 m!4885573))

(declare-fun m!4885575 () Bool)

(assert (=> mapNonEmpty!19870 m!4885575))

(declare-fun m!4885577 () Bool)

(assert (=> b!4291758 m!4885577))

(declare-fun m!4885579 () Bool)

(assert (=> start!412104 m!4885579))

(declare-fun m!4885581 () Bool)

(assert (=> start!412104 m!4885581))

(declare-fun m!4885583 () Bool)

(assert (=> start!412104 m!4885583))

(declare-fun m!4885585 () Bool)

(assert (=> start!412104 m!4885585))

(declare-fun m!4885587 () Bool)

(assert (=> b!4291737 m!4885587))

(declare-fun m!4885589 () Bool)

(assert (=> b!4291760 m!4885589))

(declare-fun m!4885591 () Bool)

(assert (=> b!4291733 m!4885591))

(declare-fun m!4885593 () Bool)

(assert (=> b!4291733 m!4885593))

(declare-fun m!4885595 () Bool)

(assert (=> b!4291750 m!4885595))

(declare-fun m!4885597 () Bool)

(assert (=> b!4291750 m!4885597))

(declare-fun m!4885599 () Bool)

(assert (=> b!4291770 m!4885599))

(declare-fun m!4885601 () Bool)

(assert (=> b!4291755 m!4885601))

(declare-fun m!4885603 () Bool)

(assert (=> b!4291755 m!4885603))

(check-sat (not b!4291758) b_and!338719 (not b!4291748) (not b!4291742) (not start!412104) (not b!4291738) (not b!4291744) (not b!4291776) (not b!4291765) b_and!338713 (not b!4291771) (not b!4291754) (not setNonEmpty!26472) (not b!4291763) b_and!338715 (not b_next!128205) b_and!338721 (not b!4291736) (not mapNonEmpty!19871) (not mapNonEmpty!19870) (not b!4291747) (not b!4291750) (not b!4291768) (not b!4291760) (not b_next!128199) (not mapNonEmpty!19872) (not b_next!128201) b_and!338717 (not b!4291741) (not b!4291733) (not b!4291770) (not b!4291755) (not b_next!128209) (not b!4291737) (not b_next!128207) (not b_next!128203) b_and!338711 (not b!4291773) (not b!4291743))
(check-sat b_and!338719 b_and!338713 b_and!338717 (not b_next!128209) (not b_next!128207) b_and!338715 (not b_next!128205) b_and!338721 (not b_next!128199) (not b_next!128201) (not b_next!128203) b_and!338711)
