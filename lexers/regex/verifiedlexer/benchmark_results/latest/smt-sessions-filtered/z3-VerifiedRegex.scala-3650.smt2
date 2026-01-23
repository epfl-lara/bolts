; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207798 () Bool)

(assert start!207798)

(declare-fun b!2139579 () Bool)

(declare-fun b_free!62861 () Bool)

(declare-fun b_next!63565 () Bool)

(assert (=> b!2139579 (= b_free!62861 (not b_next!63565))))

(declare-fun tp!661071 () Bool)

(declare-fun b_and!172441 () Bool)

(assert (=> b!2139579 (= tp!661071 b_and!172441)))

(declare-fun b!2139576 () Bool)

(declare-fun b_free!62863 () Bool)

(declare-fun b_next!63567 () Bool)

(assert (=> b!2139576 (= b_free!62863 (not b_next!63567))))

(declare-fun tp!661060 () Bool)

(declare-fun b_and!172443 () Bool)

(assert (=> b!2139576 (= tp!661060 b_and!172443)))

(declare-fun b!2139563 () Bool)

(declare-fun b_free!62865 () Bool)

(declare-fun b_next!63569 () Bool)

(assert (=> b!2139563 (= b_free!62865 (not b_next!63569))))

(declare-fun tp!661082 () Bool)

(declare-fun b_and!172445 () Bool)

(assert (=> b!2139563 (= tp!661082 b_and!172445)))

(declare-fun b!2139582 () Bool)

(declare-fun b_free!62867 () Bool)

(declare-fun b_next!63571 () Bool)

(assert (=> b!2139582 (= b_free!62867 (not b_next!63571))))

(declare-fun tp!661084 () Bool)

(declare-fun b_and!172447 () Bool)

(assert (=> b!2139582 (= tp!661084 b_and!172447)))

(declare-fun b!2139586 () Bool)

(declare-fun b_free!62869 () Bool)

(declare-fun b_next!63573 () Bool)

(assert (=> b!2139586 (= b_free!62869 (not b_next!63573))))

(declare-fun tp!661063 () Bool)

(declare-fun b_and!172449 () Bool)

(assert (=> b!2139586 (= tp!661063 b_and!172449)))

(declare-fun b!2139593 () Bool)

(declare-fun b_free!62871 () Bool)

(declare-fun b_next!63575 () Bool)

(assert (=> b!2139593 (= b_free!62871 (not b_next!63575))))

(declare-fun tp!661083 () Bool)

(declare-fun b_and!172451 () Bool)

(assert (=> b!2139593 (= tp!661083 b_and!172451)))

(declare-fun b!2139561 () Bool)

(assert (=> b!2139561 true))

(declare-fun bs!445114 () Bool)

(declare-fun b!2139568 () Bool)

(assert (= bs!445114 (and b!2139568 b!2139561)))

(declare-fun lambda!79950 () Int)

(declare-fun lambda!79949 () Int)

(assert (=> bs!445114 (not (= lambda!79950 lambda!79949))))

(assert (=> b!2139568 true))

(declare-fun b!2139556 () Bool)

(declare-fun e!1366286 () Bool)

(declare-fun e!1366295 () Bool)

(assert (=> b!2139556 (= e!1366286 e!1366295)))

(declare-fun setIsEmpty!16243 () Bool)

(declare-fun setRes!16244 () Bool)

(assert (=> setIsEmpty!16243 setRes!16244))

(declare-fun mapIsEmpty!13036 () Bool)

(declare-fun mapRes!13036 () Bool)

(assert (=> mapIsEmpty!13036 mapRes!13036))

(declare-fun b!2139557 () Bool)

(declare-fun e!1366261 () Bool)

(declare-fun e!1366277 () Bool)

(declare-datatypes ((C!11680 0))(
  ( (C!11681 (val!6826 Int)) )
))
(declare-datatypes ((Regex!5767 0))(
  ( (ElementMatch!5767 (c!340472 C!11680)) (Concat!10069 (regOne!12046 Regex!5767) (regTwo!12046 Regex!5767)) (EmptyExpr!5767) (Star!5767 (reg!6096 Regex!5767)) (EmptyLang!5767) (Union!5767 (regOne!12047 Regex!5767) (regTwo!12047 Regex!5767)) )
))
(declare-datatypes ((List!24359 0))(
  ( (Nil!24275) (Cons!24275 (h!29676 Regex!5767) (t!196889 List!24359)) )
))
(declare-datatypes ((Context!2674 0))(
  ( (Context!2675 (exprs!1837 List!24359)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3376 0))(
  ( (tuple3!3377 (_1!14204 (InoxSet Context!2674)) (_2!14204 Int) (_3!2158 Int)) )
))
(declare-datatypes ((tuple2!24092 0))(
  ( (tuple2!24093 (_1!14205 tuple3!3376) (_2!14205 Int)) )
))
(declare-datatypes ((List!24360 0))(
  ( (Nil!24276) (Cons!24276 (h!29677 tuple2!24092) (t!196890 List!24360)) )
))
(declare-datatypes ((array!9225 0))(
  ( (array!9226 (arr!4118 (Array (_ BitVec 32) (_ BitVec 64))) (size!18990 (_ BitVec 32))) )
))
(declare-datatypes ((array!9227 0))(
  ( (array!9228 (arr!4119 (Array (_ BitVec 32) List!24360)) (size!18991 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5460 0))(
  ( (LongMapFixedSize!5461 (defaultEntry!3095 Int) (mask!6929 (_ BitVec 32)) (extraKeys!2978 (_ BitVec 32)) (zeroValue!2988 List!24360) (minValue!2988 List!24360) (_size!5511 (_ BitVec 32)) (_keys!3027 array!9225) (_values!3010 array!9227) (_vacant!2791 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10745 0))(
  ( (Cell!10746 (v!28852 LongMapFixedSize!5460)) )
))
(declare-datatypes ((MutLongMap!2730 0))(
  ( (LongMap!2730 (underlying!5655 Cell!10745)) (MutLongMapExt!2729 (__x!16366 Int)) )
))
(declare-fun lt!797893 () MutLongMap!2730)

(get-info :version)

(assert (=> b!2139557 (= e!1366261 (and e!1366277 ((_ is LongMap!2730) lt!797893)))))

(declare-datatypes ((List!24361 0))(
  ( (Nil!24277) (Cons!24277 (h!29678 C!11680) (t!196891 List!24361)) )
))
(declare-datatypes ((IArray!15815 0))(
  ( (IArray!15816 (innerList!7965 List!24361)) )
))
(declare-datatypes ((Conc!7905 0))(
  ( (Node!7905 (left!18681 Conc!7905) (right!19011 Conc!7905) (csize!16040 Int) (cheight!8116 Int)) (Leaf!11556 (xs!10847 IArray!15815) (csize!16041 Int)) (Empty!7905) )
))
(declare-datatypes ((Cell!10747 0))(
  ( (Cell!10748 (v!28853 MutLongMap!2730)) )
))
(declare-datatypes ((Hashable!2644 0))(
  ( (HashableExt!2643 (__x!16367 Int)) )
))
(declare-datatypes ((MutableMap!2644 0))(
  ( (MutableMapExt!2643 (__x!16368 Int)) (HashMap!2644 (underlying!5656 Cell!10747) (hashF!4567 Hashable!2644) (_size!5512 (_ BitVec 32)) (defaultValue!2806 Int)) )
))
(declare-datatypes ((BalanceConc!15572 0))(
  ( (BalanceConc!15573 (c!340473 Conc!7905)) )
))
(declare-datatypes ((CacheFurthestNullable!778 0))(
  ( (CacheFurthestNullable!779 (cache!3025 MutableMap!2644) (totalInput!3107 BalanceConc!15572)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!778)

(assert (=> b!2139557 (= lt!797893 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))

(declare-fun b!2139558 () Bool)

(declare-fun res!924015 () Bool)

(declare-fun e!1366294 () Bool)

(assert (=> b!2139558 (=> (not res!924015) (not e!1366294))))

(declare-datatypes ((tuple3!3378 0))(
  ( (tuple3!3379 (_1!14206 Regex!5767) (_2!14206 Context!2674) (_3!2159 C!11680)) )
))
(declare-datatypes ((tuple2!24094 0))(
  ( (tuple2!24095 (_1!14207 tuple3!3378) (_2!14207 (InoxSet Context!2674))) )
))
(declare-datatypes ((List!24362 0))(
  ( (Nil!24278) (Cons!24278 (h!29679 tuple2!24094) (t!196892 List!24362)) )
))
(declare-datatypes ((Hashable!2645 0))(
  ( (HashableExt!2644 (__x!16369 Int)) )
))
(declare-datatypes ((array!9229 0))(
  ( (array!9230 (arr!4120 (Array (_ BitVec 32) List!24362)) (size!18992 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5462 0))(
  ( (LongMapFixedSize!5463 (defaultEntry!3096 Int) (mask!6930 (_ BitVec 32)) (extraKeys!2979 (_ BitVec 32)) (zeroValue!2989 List!24362) (minValue!2989 List!24362) (_size!5513 (_ BitVec 32)) (_keys!3028 array!9225) (_values!3011 array!9229) (_vacant!2792 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10749 0))(
  ( (Cell!10750 (v!28854 LongMapFixedSize!5462)) )
))
(declare-datatypes ((MutLongMap!2731 0))(
  ( (LongMap!2731 (underlying!5657 Cell!10749)) (MutLongMapExt!2730 (__x!16370 Int)) )
))
(declare-datatypes ((Cell!10751 0))(
  ( (Cell!10752 (v!28855 MutLongMap!2731)) )
))
(declare-datatypes ((MutableMap!2645 0))(
  ( (MutableMapExt!2644 (__x!16371 Int)) (HashMap!2645 (underlying!5658 Cell!10751) (hashF!4568 Hashable!2645) (_size!5514 (_ BitVec 32)) (defaultValue!2807 Int)) )
))
(declare-datatypes ((CacheDown!1810 0))(
  ( (CacheDown!1811 (cache!3026 MutableMap!2645)) )
))
(declare-fun cacheDown!1098 () CacheDown!1810)

(declare-fun valid!2135 (CacheDown!1810) Bool)

(assert (=> b!2139558 (= res!924015 (valid!2135 cacheDown!1098))))

(declare-fun b!2139559 () Bool)

(declare-fun e!1366293 () Bool)

(declare-fun e!1366276 () Bool)

(assert (=> b!2139559 (= e!1366293 (not e!1366276))))

(declare-fun res!924003 () Bool)

(assert (=> b!2139559 (=> res!924003 e!1366276)))

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2674))

(declare-fun from!1043 () Int)

(declare-datatypes ((Option!4928 0))(
  ( (None!4927) (Some!4927 (v!28856 Int)) )
))
(declare-fun get!7422 (CacheFurthestNullable!778 (InoxSet Context!2674) Int Int) Option!4928)

(assert (=> b!2139559 (= res!924003 ((_ is Some!4927) (get!7422 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!214 0))(
  ( (StackFrame!215 (z!5849 (InoxSet Context!2674)) (from!2728 Int) (lastNullablePos!415 Int) (res!924016 Int) (totalInput!3108 BalanceConc!15572)) )
))
(declare-datatypes ((List!24363 0))(
  ( (Nil!24279) (Cons!24279 (h!29680 StackFrame!214) (t!196893 List!24363)) )
))
(declare-fun stack!8 () List!24363)

(declare-fun forall!4957 (List!24363 Int) Bool)

(assert (=> b!2139559 (forall!4957 stack!8 lambda!79949)))

(declare-fun b!2139560 () Bool)

(declare-fun e!1366273 () Bool)

(declare-fun tp!661078 () Bool)

(declare-fun inv!31958 (Conc!7905) Bool)

(assert (=> b!2139560 (= e!1366273 (and (inv!31958 (c!340473 (totalInput!3107 cacheFurthestNullable!114))) tp!661078))))

(declare-fun mapIsEmpty!13037 () Bool)

(declare-fun mapRes!13037 () Bool)

(assert (=> mapIsEmpty!13037 mapRes!13037))

(assert (=> b!2139561 (= e!1366294 e!1366293)))

(declare-fun res!924012 () Bool)

(assert (=> b!2139561 (=> (not res!924012) (not e!1366293))))

(assert (=> b!2139561 (= res!924012 (forall!4957 stack!8 lambda!79949))))

(declare-fun lt!797889 () Int)

(declare-fun totalInput!851 () BalanceConc!15572)

(declare-fun lt!797891 () Int)

(declare-fun furthestNullablePosition!70 ((InoxSet Context!2674) Int BalanceConc!15572 Int Int) Int)

(assert (=> b!2139561 (= lt!797889 (furthestNullablePosition!70 z!3839 from!1043 totalInput!851 lt!797891 lastNullablePos!123))))

(declare-fun e!1366262 () Bool)

(declare-fun tp!661059 () Bool)

(declare-fun e!1366278 () Bool)

(declare-fun tp!661080 () Bool)

(declare-fun array_inv!2944 (array!9225) Bool)

(declare-fun array_inv!2945 (array!9229) Bool)

(assert (=> b!2139563 (= e!1366278 (and tp!661082 tp!661059 tp!661080 (array_inv!2944 (_keys!3028 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) (array_inv!2945 (_values!3011 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) e!1366262))))

(declare-fun setNonEmpty!16243 () Bool)

(declare-fun tp!661077 () Bool)

(declare-fun setElem!16244 () Context!2674)

(declare-fun e!1366284 () Bool)

(declare-fun inv!31959 (Context!2674) Bool)

(assert (=> setNonEmpty!16243 (= setRes!16244 (and tp!661077 (inv!31959 setElem!16244) e!1366284))))

(declare-fun setRest!16244 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16243 (= z!3839 ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16244 true) setRest!16244))))

(declare-fun b!2139564 () Bool)

(declare-fun e!1366269 () Bool)

(declare-fun lostCauseZipper!110 ((InoxSet Context!2674)) Bool)

(assert (=> b!2139564 (= e!1366269 (not (lostCauseZipper!110 z!3839)))))

(declare-fun b!2139565 () Bool)

(declare-fun res!924008 () Bool)

(assert (=> b!2139565 (=> (not res!924008) (not e!1366294))))

(declare-fun valid!2136 (CacheFurthestNullable!778) Bool)

(assert (=> b!2139565 (= res!924008 (valid!2136 cacheFurthestNullable!114))))

(declare-fun b!2139566 () Bool)

(declare-fun e!1366272 () Bool)

(assert (=> b!2139566 (= e!1366272 e!1366294)))

(declare-fun res!924006 () Bool)

(assert (=> b!2139566 (=> (not res!924006) (not e!1366294))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2139566 (= res!924006 (and (= totalInputSize!296 lt!797891) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18993 (BalanceConc!15572) Int)

(assert (=> b!2139566 (= lt!797891 (size!18993 totalInput!851))))

(declare-fun b!2139567 () Bool)

(declare-fun res!924009 () Bool)

(assert (=> b!2139567 (=> (not res!924009) (not e!1366294))))

(assert (=> b!2139567 (= res!924009 (= (totalInput!3107 cacheFurthestNullable!114) totalInput!851))))

(declare-fun res!924011 () Bool)

(assert (=> b!2139568 (=> (not res!924011) (not e!1366293))))

(assert (=> b!2139568 (= res!924011 (forall!4957 stack!8 lambda!79950))))

(declare-fun b!2139569 () Bool)

(declare-fun e!1366281 () Bool)

(declare-fun tp!661062 () Bool)

(assert (=> b!2139569 (= e!1366281 (and tp!661062 mapRes!13037))))

(declare-fun condMapEmpty!13036 () Bool)

(declare-fun mapDefault!13038 () List!24360)

(assert (=> b!2139569 (= condMapEmpty!13036 (= (arr!4119 (_values!3010 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24360)) mapDefault!13038)))))

(declare-fun b!2139570 () Bool)

(assert (=> b!2139570 (= e!1366295 e!1366278)))

(declare-fun setIsEmpty!16244 () Bool)

(declare-fun setRes!16243 () Bool)

(assert (=> setIsEmpty!16244 setRes!16243))

(declare-fun b!2139571 () Bool)

(declare-fun e!1366285 () Bool)

(assert (=> b!2139571 (= e!1366277 e!1366285)))

(declare-fun mapNonEmpty!13036 () Bool)

(declare-fun tp!661081 () Bool)

(declare-fun tp!661065 () Bool)

(assert (=> mapNonEmpty!13036 (= mapRes!13037 (and tp!661081 tp!661065))))

(declare-fun mapRest!13037 () (Array (_ BitVec 32) List!24360))

(declare-fun mapValue!13038 () List!24360)

(declare-fun mapKey!13036 () (_ BitVec 32))

(assert (=> mapNonEmpty!13036 (= (arr!4119 (_values!3010 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) (store mapRest!13037 mapKey!13036 mapValue!13038))))

(declare-fun b!2139572 () Bool)

(declare-fun e!1366280 () Bool)

(declare-fun tp!661070 () Bool)

(declare-fun mapRes!13038 () Bool)

(assert (=> b!2139572 (= e!1366280 (and tp!661070 mapRes!13038))))

(declare-fun condMapEmpty!13038 () Bool)

(declare-datatypes ((tuple2!24096 0))(
  ( (tuple2!24097 (_1!14208 Context!2674) (_2!14208 C!11680)) )
))
(declare-datatypes ((tuple2!24098 0))(
  ( (tuple2!24099 (_1!14209 tuple2!24096) (_2!14209 (InoxSet Context!2674))) )
))
(declare-datatypes ((List!24364 0))(
  ( (Nil!24280) (Cons!24280 (h!29681 tuple2!24098) (t!196894 List!24364)) )
))
(declare-datatypes ((array!9231 0))(
  ( (array!9232 (arr!4121 (Array (_ BitVec 32) List!24364)) (size!18994 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5464 0))(
  ( (LongMapFixedSize!5465 (defaultEntry!3097 Int) (mask!6931 (_ BitVec 32)) (extraKeys!2980 (_ BitVec 32)) (zeroValue!2990 List!24364) (minValue!2990 List!24364) (_size!5515 (_ BitVec 32)) (_keys!3029 array!9225) (_values!3012 array!9231) (_vacant!2793 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10753 0))(
  ( (Cell!10754 (v!28857 LongMapFixedSize!5464)) )
))
(declare-datatypes ((MutLongMap!2732 0))(
  ( (LongMap!2732 (underlying!5659 Cell!10753)) (MutLongMapExt!2731 (__x!16372 Int)) )
))
(declare-datatypes ((Cell!10755 0))(
  ( (Cell!10756 (v!28858 MutLongMap!2732)) )
))
(declare-datatypes ((Hashable!2646 0))(
  ( (HashableExt!2645 (__x!16373 Int)) )
))
(declare-datatypes ((MutableMap!2646 0))(
  ( (MutableMapExt!2645 (__x!16374 Int)) (HashMap!2646 (underlying!5660 Cell!10755) (hashF!4569 Hashable!2646) (_size!5516 (_ BitVec 32)) (defaultValue!2808 Int)) )
))
(declare-datatypes ((CacheUp!1824 0))(
  ( (CacheUp!1825 (cache!3027 MutableMap!2646)) )
))
(declare-fun cacheUp!979 () CacheUp!1824)

(declare-fun mapDefault!13037 () List!24364)

(assert (=> b!2139572 (= condMapEmpty!13038 (= (arr!4121 (_values!3012 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24364)) mapDefault!13037)))))

(declare-fun b!2139573 () Bool)

(declare-fun e!1366264 () Bool)

(assert (=> b!2139573 (= e!1366285 e!1366264)))

(declare-fun b!2139574 () Bool)

(declare-fun tp!661079 () Bool)

(assert (=> b!2139574 (= e!1366284 tp!661079)))

(declare-fun e!1366287 () Bool)

(declare-fun e!1366292 () Bool)

(declare-fun tp!661068 () Bool)

(declare-fun b!2139575 () Bool)

(declare-fun inv!31960 (StackFrame!214) Bool)

(assert (=> b!2139575 (= e!1366287 (and (inv!31960 (h!29680 stack!8)) e!1366292 tp!661068))))

(declare-fun tp!661064 () Bool)

(declare-fun tp!661076 () Bool)

(declare-fun array_inv!2946 (array!9227) Bool)

(assert (=> b!2139576 (= e!1366264 (and tp!661060 tp!661064 tp!661076 (array_inv!2944 (_keys!3027 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) (array_inv!2946 (_values!3010 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) e!1366281))))

(declare-fun b!2139577 () Bool)

(declare-fun tp!661075 () Bool)

(assert (=> b!2139577 (= e!1366262 (and tp!661075 mapRes!13036))))

(declare-fun condMapEmpty!13037 () Bool)

(declare-fun mapDefault!13036 () List!24362)

(assert (=> b!2139577 (= condMapEmpty!13037 (= (arr!4120 (_values!3011 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24362)) mapDefault!13036)))))

(declare-fun b!2139578 () Bool)

(declare-fun res!924004 () Bool)

(assert (=> b!2139578 (=> (not res!924004) (not e!1366294))))

(declare-fun valid!2137 (CacheUp!1824) Bool)

(assert (=> b!2139578 (= res!924004 (valid!2137 cacheUp!979))))

(declare-fun mapNonEmpty!13037 () Bool)

(declare-fun tp!661067 () Bool)

(declare-fun tp!661069 () Bool)

(assert (=> mapNonEmpty!13037 (= mapRes!13036 (and tp!661067 tp!661069))))

(declare-fun mapValue!13037 () List!24362)

(declare-fun mapRest!13036 () (Array (_ BitVec 32) List!24362))

(declare-fun mapKey!13038 () (_ BitVec 32))

(assert (=> mapNonEmpty!13037 (= (arr!4120 (_values!3011 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) (store mapRest!13036 mapKey!13038 mapValue!13037))))

(declare-fun e!1366296 () Bool)

(declare-fun e!1366279 () Bool)

(assert (=> b!2139579 (= e!1366296 (and e!1366279 tp!661071))))

(declare-fun b!2139580 () Bool)

(declare-fun e!1366271 () Bool)

(declare-fun e!1366266 () Bool)

(declare-fun inv!31961 (BalanceConc!15572) Bool)

(assert (=> b!2139580 (= e!1366271 (and e!1366266 (inv!31961 (totalInput!3107 cacheFurthestNullable!114)) e!1366273))))

(declare-fun b!2139581 () Bool)

(declare-fun e!1366297 () Bool)

(assert (=> b!2139581 (= e!1366292 (and setRes!16243 (inv!31961 (totalInput!3108 (h!29680 stack!8))) e!1366297))))

(declare-fun condSetEmpty!16244 () Bool)

(assert (=> b!2139581 (= condSetEmpty!16244 (= (z!5849 (h!29680 stack!8)) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun e!1366270 () Bool)

(declare-fun e!1366283 () Bool)

(assert (=> b!2139582 (= e!1366270 (and e!1366283 tp!661084))))

(declare-fun mapNonEmpty!13038 () Bool)

(declare-fun tp!661061 () Bool)

(declare-fun tp!661085 () Bool)

(assert (=> mapNonEmpty!13038 (= mapRes!13038 (and tp!661061 tp!661085))))

(declare-fun mapValue!13036 () List!24364)

(declare-fun mapRest!13038 () (Array (_ BitVec 32) List!24364))

(declare-fun mapKey!13037 () (_ BitVec 32))

(assert (=> mapNonEmpty!13038 (= (arr!4121 (_values!3012 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) (store mapRest!13038 mapKey!13037 mapValue!13036))))

(declare-fun b!2139583 () Bool)

(declare-fun res!924013 () Bool)

(assert (=> b!2139583 (=> res!924013 e!1366276)))

(assert (=> b!2139583 (= res!924013 e!1366269)))

(declare-fun res!924007 () Bool)

(assert (=> b!2139583 (=> (not res!924007) (not e!1366269))))

(assert (=> b!2139583 (= res!924007 (not (= from!1043 totalInputSize!296)))))

(declare-fun b!2139584 () Bool)

(declare-fun e!1366268 () Bool)

(declare-fun e!1366265 () Bool)

(assert (=> b!2139584 (= e!1366268 e!1366265)))

(declare-fun b!2139585 () Bool)

(declare-fun lt!797892 () MutLongMap!2731)

(assert (=> b!2139585 (= e!1366283 (and e!1366286 ((_ is LongMap!2731) lt!797892)))))

(assert (=> b!2139585 (= lt!797892 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))

(assert (=> b!2139586 (= e!1366266 (and e!1366261 tp!661063))))

(declare-fun b!2139587 () Bool)

(declare-fun e!1366289 () Bool)

(declare-fun tp!661087 () Bool)

(assert (=> b!2139587 (= e!1366289 (and (inv!31958 (c!340473 totalInput!851)) tp!661087))))

(declare-fun b!2139588 () Bool)

(assert (=> b!2139588 (= e!1366276 (= lt!797889 lastNullablePos!123))))

(declare-fun b!2139589 () Bool)

(declare-fun e!1366263 () Bool)

(assert (=> b!2139589 (= e!1366263 e!1366296)))

(declare-fun b!2139590 () Bool)

(declare-fun e!1366290 () Bool)

(assert (=> b!2139590 (= e!1366290 e!1366270)))

(declare-fun b!2139591 () Bool)

(declare-fun e!1366288 () Bool)

(assert (=> b!2139591 (= e!1366288 e!1366268)))

(declare-fun b!2139592 () Bool)

(declare-fun e!1366274 () Bool)

(declare-fun tp!661072 () Bool)

(assert (=> b!2139592 (= e!1366274 tp!661072)))

(declare-fun tp!661066 () Bool)

(declare-fun tp!661086 () Bool)

(declare-fun array_inv!2947 (array!9231) Bool)

(assert (=> b!2139593 (= e!1366265 (and tp!661083 tp!661086 tp!661066 (array_inv!2944 (_keys!3029 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) (array_inv!2947 (_values!3012 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) e!1366280))))

(declare-fun setElem!16243 () Context!2674)

(declare-fun tp!661073 () Bool)

(declare-fun setNonEmpty!16244 () Bool)

(assert (=> setNonEmpty!16244 (= setRes!16243 (and tp!661073 (inv!31959 setElem!16243) e!1366274))))

(declare-fun setRest!16243 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16244 (= (z!5849 (h!29680 stack!8)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16243 true) setRest!16243))))

(declare-fun b!2139594 () Bool)

(declare-fun lt!797890 () MutLongMap!2732)

(assert (=> b!2139594 (= e!1366279 (and e!1366288 ((_ is LongMap!2732) lt!797890)))))

(assert (=> b!2139594 (= lt!797890 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))

(declare-fun b!2139595 () Bool)

(declare-fun tp!661074 () Bool)

(assert (=> b!2139595 (= e!1366297 (and (inv!31958 (c!340473 (totalInput!3108 (h!29680 stack!8)))) tp!661074))))

(declare-fun b!2139596 () Bool)

(declare-fun e!1366275 () Bool)

(assert (=> b!2139596 (= e!1366275 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapIsEmpty!13038 () Bool)

(assert (=> mapIsEmpty!13038 mapRes!13038))

(declare-fun b!2139562 () Bool)

(declare-fun res!924014 () Bool)

(assert (=> b!2139562 (=> (not res!924014) (not e!1366294))))

(assert (=> b!2139562 (= res!924014 e!1366275)))

(declare-fun res!924005 () Bool)

(assert (=> b!2139562 (=> res!924005 e!1366275)))

(declare-fun nullableZipper!133 ((InoxSet Context!2674)) Bool)

(assert (=> b!2139562 (= res!924005 (not (nullableZipper!133 z!3839)))))

(declare-fun res!924010 () Bool)

(assert (=> start!207798 (=> (not res!924010) (not e!1366272))))

(assert (=> start!207798 (= res!924010 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207798 e!1366272))

(declare-fun inv!31962 (CacheFurthestNullable!778) Bool)

(assert (=> start!207798 (and (inv!31962 cacheFurthestNullable!114) e!1366271)))

(assert (=> start!207798 true))

(declare-fun inv!31963 (CacheDown!1810) Bool)

(assert (=> start!207798 (and (inv!31963 cacheDown!1098) e!1366290)))

(declare-fun inv!31964 (CacheUp!1824) Bool)

(assert (=> start!207798 (and (inv!31964 cacheUp!979) e!1366263)))

(declare-fun condSetEmpty!16243 () Bool)

(assert (=> start!207798 (= condSetEmpty!16243 (= z!3839 ((as const (Array Context!2674 Bool)) false)))))

(assert (=> start!207798 setRes!16244))

(assert (=> start!207798 (and (inv!31961 totalInput!851) e!1366289)))

(assert (=> start!207798 e!1366287))

(assert (= (and start!207798 res!924010) b!2139566))

(assert (= (and b!2139566 res!924006) b!2139562))

(assert (= (and b!2139562 (not res!924005)) b!2139596))

(assert (= (and b!2139562 res!924014) b!2139578))

(assert (= (and b!2139578 res!924004) b!2139558))

(assert (= (and b!2139558 res!924015) b!2139565))

(assert (= (and b!2139565 res!924008) b!2139567))

(assert (= (and b!2139567 res!924009) b!2139561))

(assert (= (and b!2139561 res!924012) b!2139568))

(assert (= (and b!2139568 res!924011) b!2139559))

(assert (= (and b!2139559 (not res!924003)) b!2139583))

(assert (= (and b!2139583 res!924007) b!2139564))

(assert (= (and b!2139583 (not res!924013)) b!2139588))

(assert (= (and b!2139569 condMapEmpty!13036) mapIsEmpty!13037))

(assert (= (and b!2139569 (not condMapEmpty!13036)) mapNonEmpty!13036))

(assert (= b!2139576 b!2139569))

(assert (= b!2139573 b!2139576))

(assert (= b!2139571 b!2139573))

(assert (= (and b!2139557 ((_ is LongMap!2730) (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))) b!2139571))

(assert (= b!2139586 b!2139557))

(assert (= (and b!2139580 ((_ is HashMap!2644) (cache!3025 cacheFurthestNullable!114))) b!2139586))

(assert (= b!2139580 b!2139560))

(assert (= start!207798 b!2139580))

(assert (= (and b!2139577 condMapEmpty!13037) mapIsEmpty!13036))

(assert (= (and b!2139577 (not condMapEmpty!13037)) mapNonEmpty!13037))

(assert (= b!2139563 b!2139577))

(assert (= b!2139570 b!2139563))

(assert (= b!2139556 b!2139570))

(assert (= (and b!2139585 ((_ is LongMap!2731) (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))) b!2139556))

(assert (= b!2139582 b!2139585))

(assert (= (and b!2139590 ((_ is HashMap!2645) (cache!3026 cacheDown!1098))) b!2139582))

(assert (= start!207798 b!2139590))

(assert (= (and b!2139572 condMapEmpty!13038) mapIsEmpty!13038))

(assert (= (and b!2139572 (not condMapEmpty!13038)) mapNonEmpty!13038))

(assert (= b!2139593 b!2139572))

(assert (= b!2139584 b!2139593))

(assert (= b!2139591 b!2139584))

(assert (= (and b!2139594 ((_ is LongMap!2732) (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))) b!2139591))

(assert (= b!2139579 b!2139594))

(assert (= (and b!2139589 ((_ is HashMap!2646) (cache!3027 cacheUp!979))) b!2139579))

(assert (= start!207798 b!2139589))

(assert (= (and start!207798 condSetEmpty!16243) setIsEmpty!16243))

(assert (= (and start!207798 (not condSetEmpty!16243)) setNonEmpty!16243))

(assert (= setNonEmpty!16243 b!2139574))

(assert (= start!207798 b!2139587))

(assert (= (and b!2139581 condSetEmpty!16244) setIsEmpty!16244))

(assert (= (and b!2139581 (not condSetEmpty!16244)) setNonEmpty!16244))

(assert (= setNonEmpty!16244 b!2139592))

(assert (= b!2139581 b!2139595))

(assert (= b!2139575 b!2139581))

(assert (= (and start!207798 ((_ is Cons!24279) stack!8)) b!2139575))

(declare-fun m!2585903 () Bool)

(assert (=> b!2139595 m!2585903))

(declare-fun m!2585905 () Bool)

(assert (=> b!2139581 m!2585905))

(declare-fun m!2585907 () Bool)

(assert (=> b!2139561 m!2585907))

(declare-fun m!2585909 () Bool)

(assert (=> b!2139561 m!2585909))

(declare-fun m!2585911 () Bool)

(assert (=> b!2139593 m!2585911))

(declare-fun m!2585913 () Bool)

(assert (=> b!2139593 m!2585913))

(declare-fun m!2585915 () Bool)

(assert (=> b!2139580 m!2585915))

(declare-fun m!2585917 () Bool)

(assert (=> setNonEmpty!16243 m!2585917))

(declare-fun m!2585919 () Bool)

(assert (=> b!2139568 m!2585919))

(declare-fun m!2585921 () Bool)

(assert (=> b!2139565 m!2585921))

(declare-fun m!2585923 () Bool)

(assert (=> b!2139587 m!2585923))

(declare-fun m!2585925 () Bool)

(assert (=> b!2139575 m!2585925))

(declare-fun m!2585927 () Bool)

(assert (=> b!2139564 m!2585927))

(declare-fun m!2585929 () Bool)

(assert (=> b!2139563 m!2585929))

(declare-fun m!2585931 () Bool)

(assert (=> b!2139563 m!2585931))

(declare-fun m!2585933 () Bool)

(assert (=> setNonEmpty!16244 m!2585933))

(declare-fun m!2585935 () Bool)

(assert (=> b!2139578 m!2585935))

(declare-fun m!2585937 () Bool)

(assert (=> mapNonEmpty!13037 m!2585937))

(declare-fun m!2585939 () Bool)

(assert (=> b!2139559 m!2585939))

(assert (=> b!2139559 m!2585907))

(declare-fun m!2585941 () Bool)

(assert (=> b!2139576 m!2585941))

(declare-fun m!2585943 () Bool)

(assert (=> b!2139576 m!2585943))

(declare-fun m!2585945 () Bool)

(assert (=> b!2139558 m!2585945))

(declare-fun m!2585947 () Bool)

(assert (=> b!2139560 m!2585947))

(declare-fun m!2585949 () Bool)

(assert (=> start!207798 m!2585949))

(declare-fun m!2585951 () Bool)

(assert (=> start!207798 m!2585951))

(declare-fun m!2585953 () Bool)

(assert (=> start!207798 m!2585953))

(declare-fun m!2585955 () Bool)

(assert (=> start!207798 m!2585955))

(declare-fun m!2585957 () Bool)

(assert (=> mapNonEmpty!13038 m!2585957))

(declare-fun m!2585959 () Bool)

(assert (=> b!2139566 m!2585959))

(declare-fun m!2585961 () Bool)

(assert (=> mapNonEmpty!13036 m!2585961))

(declare-fun m!2585963 () Bool)

(assert (=> b!2139562 m!2585963))

(check-sat (not b!2139593) (not setNonEmpty!16243) (not b!2139561) (not b_next!63565) b_and!172451 (not b!2139564) (not b!2139577) (not b!2139581) (not mapNonEmpty!13036) b_and!172449 (not b!2139563) (not b!2139574) (not b!2139569) (not b!2139580) (not mapNonEmpty!13037) (not b!2139568) (not b_next!63567) b_and!172447 (not start!207798) (not b!2139576) (not b_next!63569) (not b!2139566) (not b_next!63575) (not mapNonEmpty!13038) b_and!172443 b_and!172445 (not b!2139578) (not b!2139587) b_and!172441 (not b!2139560) (not b_next!63571) (not b!2139562) (not b!2139572) (not setNonEmpty!16244) (not b!2139575) (not b!2139595) (not b!2139558) (not b!2139592) (not b!2139565) (not b_next!63573) (not b!2139559))
(check-sat (not b_next!63565) b_and!172451 (not b_next!63567) b_and!172447 (not b_next!63569) (not b_next!63571) b_and!172449 (not b_next!63573) (not b_next!63575) b_and!172443 b_and!172445 b_and!172441)
(get-model)

(declare-fun d!644713 () Bool)

(declare-fun res!924019 () Bool)

(declare-fun e!1366300 () Bool)

(assert (=> d!644713 (=> (not res!924019) (not e!1366300))))

(assert (=> d!644713 (= res!924019 ((_ is HashMap!2644) (cache!3025 cacheFurthestNullable!114)))))

(assert (=> d!644713 (= (inv!31962 cacheFurthestNullable!114) e!1366300)))

(declare-fun b!2139603 () Bool)

(declare-fun validCacheMapFurthestNullable!104 (MutableMap!2644 BalanceConc!15572) Bool)

(assert (=> b!2139603 (= e!1366300 (validCacheMapFurthestNullable!104 (cache!3025 cacheFurthestNullable!114) (totalInput!3107 cacheFurthestNullable!114)))))

(assert (= (and d!644713 res!924019) b!2139603))

(declare-fun m!2585965 () Bool)

(assert (=> b!2139603 m!2585965))

(assert (=> start!207798 d!644713))

(declare-fun d!644715 () Bool)

(declare-fun res!924022 () Bool)

(declare-fun e!1366303 () Bool)

(assert (=> d!644715 (=> (not res!924022) (not e!1366303))))

(assert (=> d!644715 (= res!924022 ((_ is HashMap!2645) (cache!3026 cacheDown!1098)))))

(assert (=> d!644715 (= (inv!31963 cacheDown!1098) e!1366303)))

(declare-fun b!2139606 () Bool)

(declare-fun validCacheMapDown!252 (MutableMap!2645) Bool)

(assert (=> b!2139606 (= e!1366303 (validCacheMapDown!252 (cache!3026 cacheDown!1098)))))

(assert (= (and d!644715 res!924022) b!2139606))

(declare-fun m!2585967 () Bool)

(assert (=> b!2139606 m!2585967))

(assert (=> start!207798 d!644715))

(declare-fun d!644717 () Bool)

(declare-fun res!924025 () Bool)

(declare-fun e!1366306 () Bool)

(assert (=> d!644717 (=> (not res!924025) (not e!1366306))))

(assert (=> d!644717 (= res!924025 ((_ is HashMap!2646) (cache!3027 cacheUp!979)))))

(assert (=> d!644717 (= (inv!31964 cacheUp!979) e!1366306)))

(declare-fun b!2139609 () Bool)

(declare-fun validCacheMapUp!254 (MutableMap!2646) Bool)

(assert (=> b!2139609 (= e!1366306 (validCacheMapUp!254 (cache!3027 cacheUp!979)))))

(assert (= (and d!644717 res!924025) b!2139609))

(declare-fun m!2585969 () Bool)

(assert (=> b!2139609 m!2585969))

(assert (=> start!207798 d!644717))

(declare-fun d!644719 () Bool)

(declare-fun isBalanced!2458 (Conc!7905) Bool)

(assert (=> d!644719 (= (inv!31961 totalInput!851) (isBalanced!2458 (c!340473 totalInput!851)))))

(declare-fun bs!445115 () Bool)

(assert (= bs!445115 d!644719))

(declare-fun m!2585971 () Bool)

(assert (=> bs!445115 m!2585971))

(assert (=> start!207798 d!644719))

(declare-fun d!644721 () Bool)

(declare-fun c!340476 () Bool)

(assert (=> d!644721 (= c!340476 ((_ is Node!7905) (c!340473 (totalInput!3107 cacheFurthestNullable!114))))))

(declare-fun e!1366311 () Bool)

(assert (=> d!644721 (= (inv!31958 (c!340473 (totalInput!3107 cacheFurthestNullable!114))) e!1366311)))

(declare-fun b!2139616 () Bool)

(declare-fun inv!31965 (Conc!7905) Bool)

(assert (=> b!2139616 (= e!1366311 (inv!31965 (c!340473 (totalInput!3107 cacheFurthestNullable!114))))))

(declare-fun b!2139617 () Bool)

(declare-fun e!1366312 () Bool)

(assert (=> b!2139617 (= e!1366311 e!1366312)))

(declare-fun res!924028 () Bool)

(assert (=> b!2139617 (= res!924028 (not ((_ is Leaf!11556) (c!340473 (totalInput!3107 cacheFurthestNullable!114)))))))

(assert (=> b!2139617 (=> res!924028 e!1366312)))

(declare-fun b!2139618 () Bool)

(declare-fun inv!31966 (Conc!7905) Bool)

(assert (=> b!2139618 (= e!1366312 (inv!31966 (c!340473 (totalInput!3107 cacheFurthestNullable!114))))))

(assert (= (and d!644721 c!340476) b!2139616))

(assert (= (and d!644721 (not c!340476)) b!2139617))

(assert (= (and b!2139617 (not res!924028)) b!2139618))

(declare-fun m!2585973 () Bool)

(assert (=> b!2139616 m!2585973))

(declare-fun m!2585975 () Bool)

(assert (=> b!2139618 m!2585975))

(assert (=> b!2139560 d!644721))

(declare-fun d!644723 () Bool)

(declare-fun c!340477 () Bool)

(assert (=> d!644723 (= c!340477 ((_ is Node!7905) (c!340473 totalInput!851)))))

(declare-fun e!1366313 () Bool)

(assert (=> d!644723 (= (inv!31958 (c!340473 totalInput!851)) e!1366313)))

(declare-fun b!2139619 () Bool)

(assert (=> b!2139619 (= e!1366313 (inv!31965 (c!340473 totalInput!851)))))

(declare-fun b!2139620 () Bool)

(declare-fun e!1366314 () Bool)

(assert (=> b!2139620 (= e!1366313 e!1366314)))

(declare-fun res!924029 () Bool)

(assert (=> b!2139620 (= res!924029 (not ((_ is Leaf!11556) (c!340473 totalInput!851))))))

(assert (=> b!2139620 (=> res!924029 e!1366314)))

(declare-fun b!2139621 () Bool)

(assert (=> b!2139621 (= e!1366314 (inv!31966 (c!340473 totalInput!851)))))

(assert (= (and d!644723 c!340477) b!2139619))

(assert (= (and d!644723 (not c!340477)) b!2139620))

(assert (= (and b!2139620 (not res!924029)) b!2139621))

(declare-fun m!2585977 () Bool)

(assert (=> b!2139619 m!2585977))

(declare-fun m!2585979 () Bool)

(assert (=> b!2139621 m!2585979))

(assert (=> b!2139587 d!644723))

(declare-fun d!644725 () Bool)

(assert (=> d!644725 (= (valid!2137 cacheUp!979) (validCacheMapUp!254 (cache!3027 cacheUp!979)))))

(declare-fun bs!445116 () Bool)

(assert (= bs!445116 d!644725))

(assert (=> bs!445116 m!2585969))

(assert (=> b!2139578 d!644725))

(declare-fun d!644727 () Bool)

(declare-fun e!1366317 () Bool)

(assert (=> d!644727 e!1366317))

(declare-fun res!924032 () Bool)

(assert (=> d!644727 (=> res!924032 e!1366317)))

(declare-fun lt!797896 () Option!4928)

(declare-fun isEmpty!14326 (Option!4928) Bool)

(assert (=> d!644727 (= res!924032 (isEmpty!14326 lt!797896))))

(declare-fun choose!12682 (CacheFurthestNullable!778 (InoxSet Context!2674) Int Int) Option!4928)

(assert (=> d!644727 (= lt!797896 (choose!12682 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644727 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644727 (= (get!7422 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!797896)))

(declare-fun b!2139624 () Bool)

(declare-fun get!7423 (Option!4928) Int)

(assert (=> b!2139624 (= e!1366317 (= (get!7423 lt!797896) (furthestNullablePosition!70 z!3839 from!1043 (totalInput!3107 cacheFurthestNullable!114) (size!18993 (totalInput!3107 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644727 (not res!924032)) b!2139624))

(declare-fun m!2585981 () Bool)

(assert (=> d!644727 m!2585981))

(declare-fun m!2585983 () Bool)

(assert (=> d!644727 m!2585983))

(declare-fun m!2585985 () Bool)

(assert (=> b!2139624 m!2585985))

(declare-fun m!2585987 () Bool)

(assert (=> b!2139624 m!2585987))

(assert (=> b!2139624 m!2585987))

(declare-fun m!2585989 () Bool)

(assert (=> b!2139624 m!2585989))

(assert (=> b!2139559 d!644727))

(declare-fun d!644729 () Bool)

(declare-fun res!924037 () Bool)

(declare-fun e!1366322 () Bool)

(assert (=> d!644729 (=> res!924037 e!1366322)))

(assert (=> d!644729 (= res!924037 ((_ is Nil!24279) stack!8))))

(assert (=> d!644729 (= (forall!4957 stack!8 lambda!79949) e!1366322)))

(declare-fun b!2139629 () Bool)

(declare-fun e!1366323 () Bool)

(assert (=> b!2139629 (= e!1366322 e!1366323)))

(declare-fun res!924038 () Bool)

(assert (=> b!2139629 (=> (not res!924038) (not e!1366323))))

(declare-fun dynLambda!11370 (Int StackFrame!214) Bool)

(assert (=> b!2139629 (= res!924038 (dynLambda!11370 lambda!79949 (h!29680 stack!8)))))

(declare-fun b!2139630 () Bool)

(assert (=> b!2139630 (= e!1366323 (forall!4957 (t!196893 stack!8) lambda!79949))))

(assert (= (and d!644729 (not res!924037)) b!2139629))

(assert (= (and b!2139629 res!924038) b!2139630))

(declare-fun b_lambda!70629 () Bool)

(assert (=> (not b_lambda!70629) (not b!2139629)))

(declare-fun m!2585991 () Bool)

(assert (=> b!2139629 m!2585991))

(declare-fun m!2585993 () Bool)

(assert (=> b!2139630 m!2585993))

(assert (=> b!2139559 d!644729))

(declare-fun d!644731 () Bool)

(assert (=> d!644731 (= (array_inv!2944 (_keys!3027 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) (bvsge (size!18990 (_keys!3027 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139576 d!644731))

(declare-fun d!644733 () Bool)

(assert (=> d!644733 (= (array_inv!2946 (_values!3010 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) (bvsge (size!18991 (_values!3010 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139576 d!644733))

(declare-fun d!644735 () Bool)

(declare-fun c!340478 () Bool)

(assert (=> d!644735 (= c!340478 ((_ is Node!7905) (c!340473 (totalInput!3108 (h!29680 stack!8)))))))

(declare-fun e!1366324 () Bool)

(assert (=> d!644735 (= (inv!31958 (c!340473 (totalInput!3108 (h!29680 stack!8)))) e!1366324)))

(declare-fun b!2139631 () Bool)

(assert (=> b!2139631 (= e!1366324 (inv!31965 (c!340473 (totalInput!3108 (h!29680 stack!8)))))))

(declare-fun b!2139632 () Bool)

(declare-fun e!1366325 () Bool)

(assert (=> b!2139632 (= e!1366324 e!1366325)))

(declare-fun res!924039 () Bool)

(assert (=> b!2139632 (= res!924039 (not ((_ is Leaf!11556) (c!340473 (totalInput!3108 (h!29680 stack!8))))))))

(assert (=> b!2139632 (=> res!924039 e!1366325)))

(declare-fun b!2139633 () Bool)

(assert (=> b!2139633 (= e!1366325 (inv!31966 (c!340473 (totalInput!3108 (h!29680 stack!8)))))))

(assert (= (and d!644735 c!340478) b!2139631))

(assert (= (and d!644735 (not c!340478)) b!2139632))

(assert (= (and b!2139632 (not res!924039)) b!2139633))

(declare-fun m!2585995 () Bool)

(assert (=> b!2139631 m!2585995))

(declare-fun m!2585997 () Bool)

(assert (=> b!2139633 m!2585997))

(assert (=> b!2139595 d!644735))

(declare-fun d!644737 () Bool)

(declare-fun res!924040 () Bool)

(declare-fun e!1366326 () Bool)

(assert (=> d!644737 (=> res!924040 e!1366326)))

(assert (=> d!644737 (= res!924040 ((_ is Nil!24279) stack!8))))

(assert (=> d!644737 (= (forall!4957 stack!8 lambda!79950) e!1366326)))

(declare-fun b!2139634 () Bool)

(declare-fun e!1366327 () Bool)

(assert (=> b!2139634 (= e!1366326 e!1366327)))

(declare-fun res!924041 () Bool)

(assert (=> b!2139634 (=> (not res!924041) (not e!1366327))))

(assert (=> b!2139634 (= res!924041 (dynLambda!11370 lambda!79950 (h!29680 stack!8)))))

(declare-fun b!2139635 () Bool)

(assert (=> b!2139635 (= e!1366327 (forall!4957 (t!196893 stack!8) lambda!79950))))

(assert (= (and d!644737 (not res!924040)) b!2139634))

(assert (= (and b!2139634 res!924041) b!2139635))

(declare-fun b_lambda!70631 () Bool)

(assert (=> (not b_lambda!70631) (not b!2139634)))

(declare-fun m!2585999 () Bool)

(assert (=> b!2139634 m!2585999))

(declare-fun m!2586001 () Bool)

(assert (=> b!2139635 m!2586001))

(assert (=> b!2139568 d!644737))

(declare-fun b!2139648 () Bool)

(declare-fun res!924059 () Bool)

(declare-fun e!1366333 () Bool)

(assert (=> b!2139648 (=> (not res!924059) (not e!1366333))))

(assert (=> b!2139648 (= res!924059 (= (size!18993 (totalInput!3108 (h!29680 stack!8))) (size!18993 (totalInput!3108 (h!29680 stack!8)))))))

(declare-fun b!2139649 () Bool)

(declare-fun res!924056 () Bool)

(assert (=> b!2139649 (=> (not res!924056) (not e!1366333))))

(assert (=> b!2139649 (= res!924056 (<= (from!2728 (h!29680 stack!8)) (size!18993 (totalInput!3108 (h!29680 stack!8)))))))

(declare-fun b!2139650 () Bool)

(declare-fun e!1366332 () Bool)

(assert (=> b!2139650 (= e!1366332 (= (lastNullablePos!415 (h!29680 stack!8)) (- (from!2728 (h!29680 stack!8)) 1)))))

(declare-fun b!2139651 () Bool)

(assert (=> b!2139651 (= e!1366333 (= (res!924016 (h!29680 stack!8)) (furthestNullablePosition!70 (z!5849 (h!29680 stack!8)) (from!2728 (h!29680 stack!8)) (totalInput!3108 (h!29680 stack!8)) (size!18993 (totalInput!3108 (h!29680 stack!8))) (lastNullablePos!415 (h!29680 stack!8)))))))

(declare-fun d!644739 () Bool)

(declare-fun res!924055 () Bool)

(assert (=> d!644739 (=> (not res!924055) (not e!1366333))))

(assert (=> d!644739 (= res!924055 (>= (from!2728 (h!29680 stack!8)) 0))))

(assert (=> d!644739 (= (inv!31960 (h!29680 stack!8)) e!1366333)))

(declare-fun b!2139652 () Bool)

(declare-fun res!924058 () Bool)

(assert (=> b!2139652 (=> (not res!924058) (not e!1366333))))

(assert (=> b!2139652 (= res!924058 e!1366332)))

(declare-fun res!924057 () Bool)

(assert (=> b!2139652 (=> res!924057 e!1366332)))

(assert (=> b!2139652 (= res!924057 (not (nullableZipper!133 (z!5849 (h!29680 stack!8)))))))

(declare-fun b!2139653 () Bool)

(declare-fun res!924054 () Bool)

(assert (=> b!2139653 (=> (not res!924054) (not e!1366333))))

(assert (=> b!2139653 (= res!924054 (and (>= (lastNullablePos!415 (h!29680 stack!8)) (- 1)) (< (lastNullablePos!415 (h!29680 stack!8)) (from!2728 (h!29680 stack!8)))))))

(assert (= (and d!644739 res!924055) b!2139649))

(assert (= (and b!2139649 res!924056) b!2139648))

(assert (= (and b!2139648 res!924059) b!2139653))

(assert (= (and b!2139653 res!924054) b!2139652))

(assert (= (and b!2139652 (not res!924057)) b!2139650))

(assert (= (and b!2139652 res!924058) b!2139651))

(declare-fun m!2586003 () Bool)

(assert (=> b!2139648 m!2586003))

(assert (=> b!2139649 m!2586003))

(assert (=> b!2139651 m!2586003))

(assert (=> b!2139651 m!2586003))

(declare-fun m!2586005 () Bool)

(assert (=> b!2139651 m!2586005))

(declare-fun m!2586007 () Bool)

(assert (=> b!2139652 m!2586007))

(assert (=> b!2139575 d!644739))

(declare-fun d!644741 () Bool)

(declare-fun lambda!79953 () Int)

(declare-fun forall!4958 (List!24359 Int) Bool)

(assert (=> d!644741 (= (inv!31959 setElem!16243) (forall!4958 (exprs!1837 setElem!16243) lambda!79953))))

(declare-fun bs!445117 () Bool)

(assert (= bs!445117 d!644741))

(declare-fun m!2586009 () Bool)

(assert (=> bs!445117 m!2586009))

(assert (=> setNonEmpty!16244 d!644741))

(declare-fun d!644743 () Bool)

(declare-fun lt!797899 () Int)

(declare-fun size!18995 (List!24361) Int)

(declare-fun list!9548 (BalanceConc!15572) List!24361)

(assert (=> d!644743 (= lt!797899 (size!18995 (list!9548 totalInput!851)))))

(declare-fun size!18996 (Conc!7905) Int)

(assert (=> d!644743 (= lt!797899 (size!18996 (c!340473 totalInput!851)))))

(assert (=> d!644743 (= (size!18993 totalInput!851) lt!797899)))

(declare-fun bs!445118 () Bool)

(assert (= bs!445118 d!644743))

(declare-fun m!2586011 () Bool)

(assert (=> bs!445118 m!2586011))

(assert (=> bs!445118 m!2586011))

(declare-fun m!2586013 () Bool)

(assert (=> bs!445118 m!2586013))

(declare-fun m!2586015 () Bool)

(assert (=> bs!445118 m!2586015))

(assert (=> b!2139566 d!644743))

(declare-fun d!644745 () Bool)

(assert (=> d!644745 (= (valid!2135 cacheDown!1098) (validCacheMapDown!252 (cache!3026 cacheDown!1098)))))

(declare-fun bs!445119 () Bool)

(assert (= bs!445119 d!644745))

(assert (=> bs!445119 m!2585967))

(assert (=> b!2139558 d!644745))

(declare-fun d!644747 () Bool)

(assert (=> d!644747 (= (array_inv!2944 (_keys!3029 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) (bvsge (size!18990 (_keys!3029 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139593 d!644747))

(declare-fun d!644749 () Bool)

(assert (=> d!644749 (= (array_inv!2947 (_values!3012 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) (bvsge (size!18994 (_values!3012 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139593 d!644749))

(declare-fun d!644751 () Bool)

(assert (=> d!644751 (= (valid!2136 cacheFurthestNullable!114) (validCacheMapFurthestNullable!104 (cache!3025 cacheFurthestNullable!114) (totalInput!3107 cacheFurthestNullable!114)))))

(declare-fun bs!445120 () Bool)

(assert (= bs!445120 d!644751))

(assert (=> bs!445120 m!2585965))

(assert (=> b!2139565 d!644751))

(declare-fun bs!445121 () Bool)

(declare-fun b!2139658 () Bool)

(declare-fun d!644753 () Bool)

(assert (= bs!445121 (and b!2139658 d!644753)))

(declare-fun lambda!79967 () Int)

(declare-fun lambda!79966 () Int)

(assert (=> bs!445121 (not (= lambda!79967 lambda!79966))))

(declare-fun bs!445122 () Bool)

(declare-fun b!2139659 () Bool)

(assert (= bs!445122 (and b!2139659 d!644753)))

(declare-fun lambda!79968 () Int)

(assert (=> bs!445122 (not (= lambda!79968 lambda!79966))))

(declare-fun bs!445123 () Bool)

(assert (= bs!445123 (and b!2139659 b!2139658)))

(assert (=> bs!445123 (= lambda!79968 lambda!79967)))

(declare-fun c!340489 () Bool)

(declare-datatypes ((List!24365 0))(
  ( (Nil!24281) (Cons!24281 (h!29682 Context!2674) (t!196895 List!24365)) )
))
(declare-fun lt!797921 () List!24365)

(declare-fun lt!797920 () List!24365)

(declare-fun call!128801 () Bool)

(declare-fun bm!128795 () Bool)

(declare-fun exists!706 (List!24365 Int) Bool)

(assert (=> bm!128795 (= call!128801 (exists!706 (ite c!340489 lt!797920 lt!797921) (ite c!340489 lambda!79967 lambda!79968)))))

(declare-datatypes ((Unit!37681 0))(
  ( (Unit!37682) )
))
(declare-fun e!1366340 () Unit!37681)

(declare-fun Unit!37683 () Unit!37681)

(assert (=> b!2139658 (= e!1366340 Unit!37683)))

(declare-fun call!128800 () List!24365)

(assert (=> b!2139658 (= lt!797920 call!128800)))

(declare-fun lt!797919 () Unit!37681)

(declare-fun lemmaNotForallThenExists!18 (List!24365 Int) Unit!37681)

(assert (=> b!2139658 (= lt!797919 (lemmaNotForallThenExists!18 lt!797920 lambda!79966))))

(assert (=> b!2139658 call!128801))

(declare-fun lt!797917 () Unit!37681)

(assert (=> b!2139658 (= lt!797917 lt!797919)))

(declare-fun Unit!37684 () Unit!37681)

(assert (=> b!2139659 (= e!1366340 Unit!37684)))

(assert (=> b!2139659 (= lt!797921 call!128800)))

(declare-fun lt!797923 () Unit!37681)

(declare-fun lemmaForallThenNotExists!18 (List!24365 Int) Unit!37681)

(assert (=> b!2139659 (= lt!797923 (lemmaForallThenNotExists!18 lt!797921 lambda!79966))))

(assert (=> b!2139659 (not call!128801)))

(declare-fun lt!797918 () Unit!37681)

(assert (=> b!2139659 (= lt!797918 lt!797923)))

(declare-fun bm!128796 () Bool)

(declare-fun toList!1078 ((InoxSet Context!2674)) List!24365)

(assert (=> bm!128796 (= call!128800 (toList!1078 z!3839))))

(declare-fun lt!797916 () Bool)

(declare-datatypes ((Option!4929 0))(
  ( (None!4928) (Some!4928 (v!28859 List!24361)) )
))
(declare-fun isEmpty!14327 (Option!4929) Bool)

(declare-fun getLanguageWitness!103 ((InoxSet Context!2674)) Option!4929)

(assert (=> d!644753 (= lt!797916 (isEmpty!14327 (getLanguageWitness!103 z!3839)))))

(declare-fun forall!4959 ((InoxSet Context!2674) Int) Bool)

(assert (=> d!644753 (= lt!797916 (forall!4959 z!3839 lambda!79966))))

(declare-fun lt!797922 () Unit!37681)

(assert (=> d!644753 (= lt!797922 e!1366340)))

(assert (=> d!644753 (= c!340489 (not (forall!4959 z!3839 lambda!79966)))))

(assert (=> d!644753 (= (lostCauseZipper!110 z!3839) lt!797916)))

(assert (= (and d!644753 c!340489) b!2139658))

(assert (= (and d!644753 (not c!340489)) b!2139659))

(assert (= (or b!2139658 b!2139659) bm!128795))

(assert (= (or b!2139658 b!2139659) bm!128796))

(declare-fun m!2586017 () Bool)

(assert (=> b!2139659 m!2586017))

(declare-fun m!2586019 () Bool)

(assert (=> bm!128796 m!2586019))

(declare-fun m!2586021 () Bool)

(assert (=> bm!128795 m!2586021))

(declare-fun m!2586023 () Bool)

(assert (=> b!2139658 m!2586023))

(declare-fun m!2586025 () Bool)

(assert (=> d!644753 m!2586025))

(assert (=> d!644753 m!2586025))

(declare-fun m!2586027 () Bool)

(assert (=> d!644753 m!2586027))

(declare-fun m!2586029 () Bool)

(assert (=> d!644753 m!2586029))

(assert (=> d!644753 m!2586029))

(assert (=> b!2139564 d!644753))

(declare-fun d!644755 () Bool)

(assert (=> d!644755 (= (array_inv!2944 (_keys!3028 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) (bvsge (size!18990 (_keys!3028 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139563 d!644755))

(declare-fun d!644757 () Bool)

(assert (=> d!644757 (= (array_inv!2945 (_values!3011 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) (bvsge (size!18992 (_values!3011 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139563 d!644757))

(declare-fun bs!445124 () Bool)

(declare-fun d!644759 () Bool)

(assert (= bs!445124 (and d!644759 d!644741)))

(declare-fun lambda!79969 () Int)

(assert (=> bs!445124 (= lambda!79969 lambda!79953)))

(assert (=> d!644759 (= (inv!31959 setElem!16244) (forall!4958 (exprs!1837 setElem!16244) lambda!79969))))

(declare-fun bs!445125 () Bool)

(assert (= bs!445125 d!644759))

(declare-fun m!2586031 () Bool)

(assert (=> bs!445125 m!2586031))

(assert (=> setNonEmpty!16243 d!644759))

(declare-fun d!644761 () Bool)

(assert (=> d!644761 (= (inv!31961 (totalInput!3108 (h!29680 stack!8))) (isBalanced!2458 (c!340473 (totalInput!3108 (h!29680 stack!8)))))))

(declare-fun bs!445126 () Bool)

(assert (= bs!445126 d!644761))

(declare-fun m!2586033 () Bool)

(assert (=> bs!445126 m!2586033))

(assert (=> b!2139581 d!644761))

(declare-fun bs!445127 () Bool)

(declare-fun d!644763 () Bool)

(assert (= bs!445127 (and d!644763 d!644753)))

(declare-fun lambda!79972 () Int)

(assert (=> bs!445127 (not (= lambda!79972 lambda!79966))))

(declare-fun bs!445128 () Bool)

(assert (= bs!445128 (and d!644763 b!2139658)))

(assert (=> bs!445128 (not (= lambda!79972 lambda!79967))))

(declare-fun bs!445129 () Bool)

(assert (= bs!445129 (and d!644763 b!2139659)))

(assert (=> bs!445129 (not (= lambda!79972 lambda!79968))))

(declare-fun exists!707 ((InoxSet Context!2674) Int) Bool)

(assert (=> d!644763 (= (nullableZipper!133 z!3839) (exists!707 z!3839 lambda!79972))))

(declare-fun bs!445130 () Bool)

(assert (= bs!445130 d!644763))

(declare-fun m!2586035 () Bool)

(assert (=> bs!445130 m!2586035))

(assert (=> b!2139562 d!644763))

(declare-fun d!644765 () Bool)

(assert (=> d!644765 (= (inv!31961 (totalInput!3107 cacheFurthestNullable!114)) (isBalanced!2458 (c!340473 (totalInput!3107 cacheFurthestNullable!114))))))

(declare-fun bs!445131 () Bool)

(assert (= bs!445131 d!644765))

(declare-fun m!2586037 () Bool)

(assert (=> bs!445131 m!2586037))

(assert (=> b!2139580 d!644765))

(assert (=> b!2139561 d!644729))

(declare-fun b!2139670 () Bool)

(declare-fun e!1366348 () Int)

(assert (=> b!2139670 (= e!1366348 lastNullablePos!123)))

(declare-fun b!2139671 () Bool)

(declare-fun e!1366349 () Int)

(assert (=> b!2139671 (= e!1366349 lastNullablePos!123)))

(declare-fun b!2139672 () Bool)

(assert (=> b!2139672 (= e!1366349 from!1043)))

(declare-fun b!2139673 () Bool)

(declare-fun e!1366347 () Bool)

(assert (=> b!2139673 (= e!1366347 (lostCauseZipper!110 z!3839))))

(declare-fun lt!797929 () (InoxSet Context!2674))

(declare-fun b!2139674 () Bool)

(assert (=> b!2139674 (= e!1366348 (furthestNullablePosition!70 lt!797929 (+ from!1043 1) totalInput!851 lt!797891 e!1366349))))

(declare-fun derivationStepZipper!93 ((InoxSet Context!2674) C!11680) (InoxSet Context!2674))

(declare-fun apply!5958 (BalanceConc!15572 Int) C!11680)

(assert (=> b!2139674 (= lt!797929 (derivationStepZipper!93 z!3839 (apply!5958 totalInput!851 from!1043)))))

(declare-fun c!340497 () Bool)

(assert (=> b!2139674 (= c!340497 (nullableZipper!133 lt!797929))))

(declare-fun d!644767 () Bool)

(declare-fun lt!797928 () Int)

(assert (=> d!644767 (and (>= lt!797928 (- 1)) (< lt!797928 lt!797891) (>= lt!797928 lastNullablePos!123) (or (= lt!797928 lastNullablePos!123) (>= lt!797928 from!1043)))))

(assert (=> d!644767 (= lt!797928 e!1366348)))

(declare-fun c!340496 () Bool)

(assert (=> d!644767 (= c!340496 e!1366347)))

(declare-fun res!924062 () Bool)

(assert (=> d!644767 (=> res!924062 e!1366347)))

(assert (=> d!644767 (= res!924062 (= from!1043 lt!797891))))

(assert (=> d!644767 (and (>= from!1043 0) (<= from!1043 lt!797891))))

(assert (=> d!644767 (= (furthestNullablePosition!70 z!3839 from!1043 totalInput!851 lt!797891 lastNullablePos!123) lt!797928)))

(assert (= (and d!644767 (not res!924062)) b!2139673))

(assert (= (and d!644767 c!340496) b!2139670))

(assert (= (and d!644767 (not c!340496)) b!2139674))

(assert (= (and b!2139674 c!340497) b!2139672))

(assert (= (and b!2139674 (not c!340497)) b!2139671))

(assert (=> b!2139673 m!2585927))

(declare-fun m!2586039 () Bool)

(assert (=> b!2139674 m!2586039))

(declare-fun m!2586041 () Bool)

(assert (=> b!2139674 m!2586041))

(assert (=> b!2139674 m!2586041))

(declare-fun m!2586043 () Bool)

(assert (=> b!2139674 m!2586043))

(declare-fun m!2586045 () Bool)

(assert (=> b!2139674 m!2586045))

(assert (=> b!2139561 d!644767))

(declare-fun e!1366354 () Bool)

(assert (=> b!2139569 (= tp!661062 e!1366354)))

(declare-fun b!2139682 () Bool)

(declare-fun e!1366355 () Bool)

(declare-fun tp!661095 () Bool)

(assert (=> b!2139682 (= e!1366355 tp!661095)))

(declare-fun b!2139681 () Bool)

(declare-fun setRes!16247 () Bool)

(declare-fun tp!661096 () Bool)

(assert (=> b!2139681 (= e!1366354 (and setRes!16247 tp!661096))))

(declare-fun condSetEmpty!16247 () Bool)

(assert (=> b!2139681 (= condSetEmpty!16247 (= (_1!14204 (_1!14205 (h!29677 mapDefault!13038))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setIsEmpty!16247 () Bool)

(assert (=> setIsEmpty!16247 setRes!16247))

(declare-fun tp!661094 () Bool)

(declare-fun setElem!16247 () Context!2674)

(declare-fun setNonEmpty!16247 () Bool)

(assert (=> setNonEmpty!16247 (= setRes!16247 (and tp!661094 (inv!31959 setElem!16247) e!1366355))))

(declare-fun setRest!16247 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16247 (= (_1!14204 (_1!14205 (h!29677 mapDefault!13038))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16247 true) setRest!16247))))

(assert (= (and b!2139681 condSetEmpty!16247) setIsEmpty!16247))

(assert (= (and b!2139681 (not condSetEmpty!16247)) setNonEmpty!16247))

(assert (= setNonEmpty!16247 b!2139682))

(assert (= (and b!2139569 ((_ is Cons!24276) mapDefault!13038)) b!2139681))

(declare-fun m!2586047 () Bool)

(assert (=> setNonEmpty!16247 m!2586047))

(declare-fun tp!661103 () Bool)

(declare-fun tp!661104 () Bool)

(declare-fun e!1366360 () Bool)

(declare-fun b!2139691 () Bool)

(assert (=> b!2139691 (= e!1366360 (and (inv!31958 (left!18681 (c!340473 (totalInput!3107 cacheFurthestNullable!114)))) tp!661103 (inv!31958 (right!19011 (c!340473 (totalInput!3107 cacheFurthestNullable!114)))) tp!661104))))

(declare-fun b!2139693 () Bool)

(declare-fun e!1366361 () Bool)

(declare-fun tp!661105 () Bool)

(assert (=> b!2139693 (= e!1366361 tp!661105)))

(declare-fun b!2139692 () Bool)

(declare-fun inv!31967 (IArray!15815) Bool)

(assert (=> b!2139692 (= e!1366360 (and (inv!31967 (xs!10847 (c!340473 (totalInput!3107 cacheFurthestNullable!114)))) e!1366361))))

(assert (=> b!2139560 (= tp!661078 (and (inv!31958 (c!340473 (totalInput!3107 cacheFurthestNullable!114))) e!1366360))))

(assert (= (and b!2139560 ((_ is Node!7905) (c!340473 (totalInput!3107 cacheFurthestNullable!114)))) b!2139691))

(assert (= b!2139692 b!2139693))

(assert (= (and b!2139560 ((_ is Leaf!11556) (c!340473 (totalInput!3107 cacheFurthestNullable!114)))) b!2139692))

(declare-fun m!2586049 () Bool)

(assert (=> b!2139691 m!2586049))

(declare-fun m!2586051 () Bool)

(assert (=> b!2139691 m!2586051))

(declare-fun m!2586053 () Bool)

(assert (=> b!2139692 m!2586053))

(assert (=> b!2139560 m!2585947))

(declare-fun b!2139694 () Bool)

(declare-fun e!1366362 () Bool)

(declare-fun tp!661107 () Bool)

(declare-fun tp!661106 () Bool)

(assert (=> b!2139694 (= e!1366362 (and (inv!31958 (left!18681 (c!340473 totalInput!851))) tp!661106 (inv!31958 (right!19011 (c!340473 totalInput!851))) tp!661107))))

(declare-fun b!2139696 () Bool)

(declare-fun e!1366363 () Bool)

(declare-fun tp!661108 () Bool)

(assert (=> b!2139696 (= e!1366363 tp!661108)))

(declare-fun b!2139695 () Bool)

(assert (=> b!2139695 (= e!1366362 (and (inv!31967 (xs!10847 (c!340473 totalInput!851))) e!1366363))))

(assert (=> b!2139587 (= tp!661087 (and (inv!31958 (c!340473 totalInput!851)) e!1366362))))

(assert (= (and b!2139587 ((_ is Node!7905) (c!340473 totalInput!851))) b!2139694))

(assert (= b!2139695 b!2139696))

(assert (= (and b!2139587 ((_ is Leaf!11556) (c!340473 totalInput!851))) b!2139695))

(declare-fun m!2586055 () Bool)

(assert (=> b!2139694 m!2586055))

(declare-fun m!2586057 () Bool)

(assert (=> b!2139694 m!2586057))

(declare-fun m!2586059 () Bool)

(assert (=> b!2139695 m!2586059))

(assert (=> b!2139587 m!2585923))

(declare-fun e!1366364 () Bool)

(assert (=> b!2139576 (= tp!661064 e!1366364)))

(declare-fun b!2139698 () Bool)

(declare-fun e!1366365 () Bool)

(declare-fun tp!661110 () Bool)

(assert (=> b!2139698 (= e!1366365 tp!661110)))

(declare-fun b!2139697 () Bool)

(declare-fun setRes!16248 () Bool)

(declare-fun tp!661111 () Bool)

(assert (=> b!2139697 (= e!1366364 (and setRes!16248 tp!661111))))

(declare-fun condSetEmpty!16248 () Bool)

(assert (=> b!2139697 (= condSetEmpty!16248 (= (_1!14204 (_1!14205 (h!29677 (zeroValue!2988 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setIsEmpty!16248 () Bool)

(assert (=> setIsEmpty!16248 setRes!16248))

(declare-fun setElem!16248 () Context!2674)

(declare-fun tp!661109 () Bool)

(declare-fun setNonEmpty!16248 () Bool)

(assert (=> setNonEmpty!16248 (= setRes!16248 (and tp!661109 (inv!31959 setElem!16248) e!1366365))))

(declare-fun setRest!16248 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16248 (= (_1!14204 (_1!14205 (h!29677 (zeroValue!2988 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16248 true) setRest!16248))))

(assert (= (and b!2139697 condSetEmpty!16248) setIsEmpty!16248))

(assert (= (and b!2139697 (not condSetEmpty!16248)) setNonEmpty!16248))

(assert (= setNonEmpty!16248 b!2139698))

(assert (= (and b!2139576 ((_ is Cons!24276) (zeroValue!2988 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114)))))))) b!2139697))

(declare-fun m!2586061 () Bool)

(assert (=> setNonEmpty!16248 m!2586061))

(declare-fun e!1366366 () Bool)

(assert (=> b!2139576 (= tp!661076 e!1366366)))

(declare-fun b!2139700 () Bool)

(declare-fun e!1366367 () Bool)

(declare-fun tp!661113 () Bool)

(assert (=> b!2139700 (= e!1366367 tp!661113)))

(declare-fun b!2139699 () Bool)

(declare-fun setRes!16249 () Bool)

(declare-fun tp!661114 () Bool)

(assert (=> b!2139699 (= e!1366366 (and setRes!16249 tp!661114))))

(declare-fun condSetEmpty!16249 () Bool)

(assert (=> b!2139699 (= condSetEmpty!16249 (= (_1!14204 (_1!14205 (h!29677 (minValue!2988 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setIsEmpty!16249 () Bool)

(assert (=> setIsEmpty!16249 setRes!16249))

(declare-fun setElem!16249 () Context!2674)

(declare-fun setNonEmpty!16249 () Bool)

(declare-fun tp!661112 () Bool)

(assert (=> setNonEmpty!16249 (= setRes!16249 (and tp!661112 (inv!31959 setElem!16249) e!1366367))))

(declare-fun setRest!16249 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16249 (= (_1!14204 (_1!14205 (h!29677 (minValue!2988 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16249 true) setRest!16249))))

(assert (= (and b!2139699 condSetEmpty!16249) setIsEmpty!16249))

(assert (= (and b!2139699 (not condSetEmpty!16249)) setNonEmpty!16249))

(assert (= setNonEmpty!16249 b!2139700))

(assert (= (and b!2139576 ((_ is Cons!24276) (minValue!2988 (v!28852 (underlying!5655 (v!28853 (underlying!5656 (cache!3025 cacheFurthestNullable!114)))))))) b!2139699))

(declare-fun m!2586063 () Bool)

(assert (=> setNonEmpty!16249 m!2586063))

(declare-fun setIsEmpty!16252 () Bool)

(declare-fun setRes!16252 () Bool)

(assert (=> setIsEmpty!16252 setRes!16252))

(declare-fun setNonEmpty!16252 () Bool)

(declare-fun setElem!16252 () Context!2674)

(declare-fun tp!661125 () Bool)

(declare-fun e!1366374 () Bool)

(assert (=> setNonEmpty!16252 (= setRes!16252 (and tp!661125 (inv!31959 setElem!16252) e!1366374))))

(declare-fun setRest!16252 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16252 (= (_2!14207 (h!29679 mapDefault!13036)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16252 true) setRest!16252))))

(declare-fun b!2139709 () Bool)

(declare-fun e!1366376 () Bool)

(declare-fun tp!661127 () Bool)

(declare-fun tp_is_empty!9509 () Bool)

(declare-fun e!1366375 () Bool)

(declare-fun tp!661129 () Bool)

(assert (=> b!2139709 (= e!1366376 (and tp!661129 (inv!31959 (_2!14206 (_1!14207 (h!29679 mapDefault!13036)))) e!1366375 tp_is_empty!9509 setRes!16252 tp!661127))))

(declare-fun condSetEmpty!16252 () Bool)

(assert (=> b!2139709 (= condSetEmpty!16252 (= (_2!14207 (h!29679 mapDefault!13036)) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> b!2139577 (= tp!661075 e!1366376)))

(declare-fun b!2139710 () Bool)

(declare-fun tp!661126 () Bool)

(assert (=> b!2139710 (= e!1366374 tp!661126)))

(declare-fun b!2139711 () Bool)

(declare-fun tp!661128 () Bool)

(assert (=> b!2139711 (= e!1366375 tp!661128)))

(assert (= b!2139709 b!2139711))

(assert (= (and b!2139709 condSetEmpty!16252) setIsEmpty!16252))

(assert (= (and b!2139709 (not condSetEmpty!16252)) setNonEmpty!16252))

(assert (= setNonEmpty!16252 b!2139710))

(assert (= (and b!2139577 ((_ is Cons!24278) mapDefault!13036)) b!2139709))

(declare-fun m!2586065 () Bool)

(assert (=> setNonEmpty!16252 m!2586065))

(declare-fun m!2586067 () Bool)

(assert (=> b!2139709 m!2586067))

(declare-fun b!2139712 () Bool)

(declare-fun tp!661131 () Bool)

(declare-fun e!1366377 () Bool)

(declare-fun tp!661130 () Bool)

(assert (=> b!2139712 (= e!1366377 (and (inv!31958 (left!18681 (c!340473 (totalInput!3108 (h!29680 stack!8))))) tp!661130 (inv!31958 (right!19011 (c!340473 (totalInput!3108 (h!29680 stack!8))))) tp!661131))))

(declare-fun b!2139714 () Bool)

(declare-fun e!1366378 () Bool)

(declare-fun tp!661132 () Bool)

(assert (=> b!2139714 (= e!1366378 tp!661132)))

(declare-fun b!2139713 () Bool)

(assert (=> b!2139713 (= e!1366377 (and (inv!31967 (xs!10847 (c!340473 (totalInput!3108 (h!29680 stack!8))))) e!1366378))))

(assert (=> b!2139595 (= tp!661074 (and (inv!31958 (c!340473 (totalInput!3108 (h!29680 stack!8)))) e!1366377))))

(assert (= (and b!2139595 ((_ is Node!7905) (c!340473 (totalInput!3108 (h!29680 stack!8))))) b!2139712))

(assert (= b!2139713 b!2139714))

(assert (= (and b!2139595 ((_ is Leaf!11556) (c!340473 (totalInput!3108 (h!29680 stack!8))))) b!2139713))

(declare-fun m!2586069 () Bool)

(assert (=> b!2139712 m!2586069))

(declare-fun m!2586071 () Bool)

(assert (=> b!2139712 m!2586071))

(declare-fun m!2586073 () Bool)

(assert (=> b!2139713 m!2586073))

(assert (=> b!2139595 m!2585903))

(declare-fun b!2139725 () Bool)

(declare-fun e!1366390 () Bool)

(declare-fun tp!661144 () Bool)

(assert (=> b!2139725 (= e!1366390 (and (inv!31958 (c!340473 (totalInput!3108 (h!29680 (t!196893 stack!8))))) tp!661144))))

(declare-fun e!1366387 () Bool)

(declare-fun setRes!16255 () Bool)

(declare-fun b!2139726 () Bool)

(assert (=> b!2139726 (= e!1366387 (and setRes!16255 (inv!31961 (totalInput!3108 (h!29680 (t!196893 stack!8)))) e!1366390))))

(declare-fun condSetEmpty!16255 () Bool)

(assert (=> b!2139726 (= condSetEmpty!16255 (= (z!5849 (h!29680 (t!196893 stack!8))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun e!1366389 () Bool)

(declare-fun b!2139727 () Bool)

(declare-fun tp!661142 () Bool)

(assert (=> b!2139727 (= e!1366389 (and (inv!31960 (h!29680 (t!196893 stack!8))) e!1366387 tp!661142))))

(declare-fun setIsEmpty!16255 () Bool)

(assert (=> setIsEmpty!16255 setRes!16255))

(declare-fun b!2139728 () Bool)

(declare-fun e!1366388 () Bool)

(declare-fun tp!661141 () Bool)

(assert (=> b!2139728 (= e!1366388 tp!661141)))

(assert (=> b!2139575 (= tp!661068 e!1366389)))

(declare-fun setNonEmpty!16255 () Bool)

(declare-fun setElem!16255 () Context!2674)

(declare-fun tp!661143 () Bool)

(assert (=> setNonEmpty!16255 (= setRes!16255 (and tp!661143 (inv!31959 setElem!16255) e!1366388))))

(declare-fun setRest!16255 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16255 (= (z!5849 (h!29680 (t!196893 stack!8))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16255 true) setRest!16255))))

(assert (= (and b!2139726 condSetEmpty!16255) setIsEmpty!16255))

(assert (= (and b!2139726 (not condSetEmpty!16255)) setNonEmpty!16255))

(assert (= setNonEmpty!16255 b!2139728))

(assert (= b!2139726 b!2139725))

(assert (= b!2139727 b!2139726))

(assert (= (and b!2139575 ((_ is Cons!24279) (t!196893 stack!8))) b!2139727))

(declare-fun m!2586075 () Bool)

(assert (=> b!2139725 m!2586075))

(declare-fun m!2586077 () Bool)

(assert (=> b!2139726 m!2586077))

(declare-fun m!2586079 () Bool)

(assert (=> b!2139727 m!2586079))

(declare-fun m!2586081 () Bool)

(assert (=> setNonEmpty!16255 m!2586081))

(declare-fun condSetEmpty!16258 () Bool)

(assert (=> setNonEmpty!16244 (= condSetEmpty!16258 (= setRest!16243 ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setRes!16258 () Bool)

(assert (=> setNonEmpty!16244 (= tp!661073 setRes!16258)))

(declare-fun setIsEmpty!16258 () Bool)

(assert (=> setIsEmpty!16258 setRes!16258))

(declare-fun tp!661149 () Bool)

(declare-fun setNonEmpty!16258 () Bool)

(declare-fun e!1366393 () Bool)

(declare-fun setElem!16258 () Context!2674)

(assert (=> setNonEmpty!16258 (= setRes!16258 (and tp!661149 (inv!31959 setElem!16258) e!1366393))))

(declare-fun setRest!16258 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16258 (= setRest!16243 ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16258 true) setRest!16258))))

(declare-fun b!2139733 () Bool)

(declare-fun tp!661150 () Bool)

(assert (=> b!2139733 (= e!1366393 tp!661150)))

(assert (= (and setNonEmpty!16244 condSetEmpty!16258) setIsEmpty!16258))

(assert (= (and setNonEmpty!16244 (not condSetEmpty!16258)) setNonEmpty!16258))

(assert (= setNonEmpty!16258 b!2139733))

(declare-fun m!2586083 () Bool)

(assert (=> setNonEmpty!16258 m!2586083))

(declare-fun b!2139742 () Bool)

(declare-fun e!1366400 () Bool)

(declare-fun tp!661159 () Bool)

(assert (=> b!2139742 (= e!1366400 tp!661159)))

(declare-fun b!2139743 () Bool)

(declare-fun e!1366401 () Bool)

(declare-fun tp!661160 () Bool)

(assert (=> b!2139743 (= e!1366401 tp!661160)))

(declare-fun setRes!16261 () Bool)

(declare-fun b!2139744 () Bool)

(declare-fun e!1366402 () Bool)

(declare-fun tp!661162 () Bool)

(assert (=> b!2139744 (= e!1366402 (and (inv!31959 (_1!14208 (_1!14209 (h!29681 (zeroValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))))) e!1366400 tp_is_empty!9509 setRes!16261 tp!661162))))

(declare-fun condSetEmpty!16261 () Bool)

(assert (=> b!2139744 (= condSetEmpty!16261 (= (_2!14209 (h!29681 (zeroValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> b!2139593 (= tp!661086 e!1366402)))

(declare-fun setIsEmpty!16261 () Bool)

(assert (=> setIsEmpty!16261 setRes!16261))

(declare-fun tp!661161 () Bool)

(declare-fun setNonEmpty!16261 () Bool)

(declare-fun setElem!16261 () Context!2674)

(assert (=> setNonEmpty!16261 (= setRes!16261 (and tp!661161 (inv!31959 setElem!16261) e!1366401))))

(declare-fun setRest!16261 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16261 (= (_2!14209 (h!29681 (zeroValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16261 true) setRest!16261))))

(assert (= b!2139744 b!2139742))

(assert (= (and b!2139744 condSetEmpty!16261) setIsEmpty!16261))

(assert (= (and b!2139744 (not condSetEmpty!16261)) setNonEmpty!16261))

(assert (= setNonEmpty!16261 b!2139743))

(assert (= (and b!2139593 ((_ is Cons!24280) (zeroValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))) b!2139744))

(declare-fun m!2586085 () Bool)

(assert (=> b!2139744 m!2586085))

(declare-fun m!2586087 () Bool)

(assert (=> setNonEmpty!16261 m!2586087))

(declare-fun b!2139745 () Bool)

(declare-fun e!1366403 () Bool)

(declare-fun tp!661163 () Bool)

(assert (=> b!2139745 (= e!1366403 tp!661163)))

(declare-fun b!2139746 () Bool)

(declare-fun e!1366404 () Bool)

(declare-fun tp!661164 () Bool)

(assert (=> b!2139746 (= e!1366404 tp!661164)))

(declare-fun b!2139747 () Bool)

(declare-fun e!1366405 () Bool)

(declare-fun tp!661166 () Bool)

(declare-fun setRes!16262 () Bool)

(assert (=> b!2139747 (= e!1366405 (and (inv!31959 (_1!14208 (_1!14209 (h!29681 (minValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))))) e!1366403 tp_is_empty!9509 setRes!16262 tp!661166))))

(declare-fun condSetEmpty!16262 () Bool)

(assert (=> b!2139747 (= condSetEmpty!16262 (= (_2!14209 (h!29681 (minValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> b!2139593 (= tp!661066 e!1366405)))

(declare-fun setIsEmpty!16262 () Bool)

(assert (=> setIsEmpty!16262 setRes!16262))

(declare-fun setNonEmpty!16262 () Bool)

(declare-fun setElem!16262 () Context!2674)

(declare-fun tp!661165 () Bool)

(assert (=> setNonEmpty!16262 (= setRes!16262 (and tp!661165 (inv!31959 setElem!16262) e!1366404))))

(declare-fun setRest!16262 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16262 (= (_2!14209 (h!29681 (minValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16262 true) setRest!16262))))

(assert (= b!2139747 b!2139745))

(assert (= (and b!2139747 condSetEmpty!16262) setIsEmpty!16262))

(assert (= (and b!2139747 (not condSetEmpty!16262)) setNonEmpty!16262))

(assert (= setNonEmpty!16262 b!2139746))

(assert (= (and b!2139593 ((_ is Cons!24280) (minValue!2990 (v!28857 (underlying!5659 (v!28858 (underlying!5660 (cache!3027 cacheUp!979)))))))) b!2139747))

(declare-fun m!2586089 () Bool)

(assert (=> b!2139747 m!2586089))

(declare-fun m!2586091 () Bool)

(assert (=> setNonEmpty!16262 m!2586091))

(declare-fun b!2139762 () Bool)

(declare-fun e!1366421 () Bool)

(declare-fun tp!661185 () Bool)

(assert (=> b!2139762 (= e!1366421 tp!661185)))

(declare-fun b!2139763 () Bool)

(declare-fun e!1366420 () Bool)

(declare-fun tp!661190 () Bool)

(assert (=> b!2139763 (= e!1366420 tp!661190)))

(declare-fun tp!661189 () Bool)

(declare-fun setElem!16268 () Context!2674)

(declare-fun setNonEmpty!16267 () Bool)

(declare-fun setRes!16268 () Bool)

(assert (=> setNonEmpty!16267 (= setRes!16268 (and tp!661189 (inv!31959 setElem!16268) e!1366420))))

(declare-fun mapDefault!13041 () List!24364)

(declare-fun setRest!16268 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16267 (= (_2!14209 (h!29681 mapDefault!13041)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16268 true) setRest!16268))))

(declare-fun setIsEmpty!16267 () Bool)

(assert (=> setIsEmpty!16267 setRes!16268))

(declare-fun setIsEmpty!16268 () Bool)

(declare-fun setRes!16267 () Bool)

(assert (=> setIsEmpty!16268 setRes!16267))

(declare-fun b!2139764 () Bool)

(declare-fun e!1366423 () Bool)

(declare-fun tp!661186 () Bool)

(assert (=> b!2139764 (= e!1366423 tp!661186)))

(declare-fun tp!661187 () Bool)

(declare-fun setNonEmpty!16268 () Bool)

(declare-fun setElem!16267 () Context!2674)

(assert (=> setNonEmpty!16268 (= setRes!16267 (and tp!661187 (inv!31959 setElem!16267) e!1366421))))

(declare-fun mapValue!13041 () List!24364)

(declare-fun setRest!16267 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16268 (= (_2!14209 (h!29681 mapValue!13041)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16267 true) setRest!16267))))

(declare-fun b!2139765 () Bool)

(declare-fun e!1366419 () Bool)

(declare-fun tp!661191 () Bool)

(assert (=> b!2139765 (= e!1366419 tp!661191)))

(declare-fun e!1366418 () Bool)

(declare-fun tp!661188 () Bool)

(declare-fun b!2139766 () Bool)

(assert (=> b!2139766 (= e!1366418 (and (inv!31959 (_1!14208 (_1!14209 (h!29681 mapValue!13041)))) e!1366423 tp_is_empty!9509 setRes!16267 tp!661188))))

(declare-fun condSetEmpty!16267 () Bool)

(assert (=> b!2139766 (= condSetEmpty!16267 (= (_2!14209 (h!29681 mapValue!13041)) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun condMapEmpty!13041 () Bool)

(assert (=> mapNonEmpty!13038 (= condMapEmpty!13041 (= mapRest!13038 ((as const (Array (_ BitVec 32) List!24364)) mapDefault!13041)))))

(declare-fun e!1366422 () Bool)

(declare-fun mapRes!13041 () Bool)

(assert (=> mapNonEmpty!13038 (= tp!661061 (and e!1366422 mapRes!13041))))

(declare-fun mapNonEmpty!13041 () Bool)

(declare-fun tp!661192 () Bool)

(assert (=> mapNonEmpty!13041 (= mapRes!13041 (and tp!661192 e!1366418))))

(declare-fun mapRest!13041 () (Array (_ BitVec 32) List!24364))

(declare-fun mapKey!13041 () (_ BitVec 32))

(assert (=> mapNonEmpty!13041 (= mapRest!13038 (store mapRest!13041 mapKey!13041 mapValue!13041))))

(declare-fun mapIsEmpty!13041 () Bool)

(assert (=> mapIsEmpty!13041 mapRes!13041))

(declare-fun b!2139767 () Bool)

(declare-fun tp!661193 () Bool)

(assert (=> b!2139767 (= e!1366422 (and (inv!31959 (_1!14208 (_1!14209 (h!29681 mapDefault!13041)))) e!1366419 tp_is_empty!9509 setRes!16268 tp!661193))))

(declare-fun condSetEmpty!16268 () Bool)

(assert (=> b!2139767 (= condSetEmpty!16268 (= (_2!14209 (h!29681 mapDefault!13041)) ((as const (Array Context!2674 Bool)) false)))))

(assert (= (and mapNonEmpty!13038 condMapEmpty!13041) mapIsEmpty!13041))

(assert (= (and mapNonEmpty!13038 (not condMapEmpty!13041)) mapNonEmpty!13041))

(assert (= b!2139766 b!2139764))

(assert (= (and b!2139766 condSetEmpty!16267) setIsEmpty!16268))

(assert (= (and b!2139766 (not condSetEmpty!16267)) setNonEmpty!16268))

(assert (= setNonEmpty!16268 b!2139762))

(assert (= (and mapNonEmpty!13041 ((_ is Cons!24280) mapValue!13041)) b!2139766))

(assert (= b!2139767 b!2139765))

(assert (= (and b!2139767 condSetEmpty!16268) setIsEmpty!16267))

(assert (= (and b!2139767 (not condSetEmpty!16268)) setNonEmpty!16267))

(assert (= setNonEmpty!16267 b!2139763))

(assert (= (and mapNonEmpty!13038 ((_ is Cons!24280) mapDefault!13041)) b!2139767))

(declare-fun m!2586093 () Bool)

(assert (=> setNonEmpty!16267 m!2586093))

(declare-fun m!2586095 () Bool)

(assert (=> b!2139766 m!2586095))

(declare-fun m!2586097 () Bool)

(assert (=> b!2139767 m!2586097))

(declare-fun m!2586099 () Bool)

(assert (=> setNonEmpty!16268 m!2586099))

(declare-fun m!2586101 () Bool)

(assert (=> mapNonEmpty!13041 m!2586101))

(declare-fun b!2139768 () Bool)

(declare-fun e!1366424 () Bool)

(declare-fun tp!661194 () Bool)

(assert (=> b!2139768 (= e!1366424 tp!661194)))

(declare-fun b!2139769 () Bool)

(declare-fun e!1366425 () Bool)

(declare-fun tp!661195 () Bool)

(assert (=> b!2139769 (= e!1366425 tp!661195)))

(declare-fun setRes!16269 () Bool)

(declare-fun b!2139770 () Bool)

(declare-fun e!1366426 () Bool)

(declare-fun tp!661197 () Bool)

(assert (=> b!2139770 (= e!1366426 (and (inv!31959 (_1!14208 (_1!14209 (h!29681 mapValue!13036)))) e!1366424 tp_is_empty!9509 setRes!16269 tp!661197))))

(declare-fun condSetEmpty!16269 () Bool)

(assert (=> b!2139770 (= condSetEmpty!16269 (= (_2!14209 (h!29681 mapValue!13036)) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> mapNonEmpty!13038 (= tp!661085 e!1366426)))

(declare-fun setIsEmpty!16269 () Bool)

(assert (=> setIsEmpty!16269 setRes!16269))

(declare-fun setNonEmpty!16269 () Bool)

(declare-fun setElem!16269 () Context!2674)

(declare-fun tp!661196 () Bool)

(assert (=> setNonEmpty!16269 (= setRes!16269 (and tp!661196 (inv!31959 setElem!16269) e!1366425))))

(declare-fun setRest!16269 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16269 (= (_2!14209 (h!29681 mapValue!13036)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16269 true) setRest!16269))))

(assert (= b!2139770 b!2139768))

(assert (= (and b!2139770 condSetEmpty!16269) setIsEmpty!16269))

(assert (= (and b!2139770 (not condSetEmpty!16269)) setNonEmpty!16269))

(assert (= setNonEmpty!16269 b!2139769))

(assert (= (and mapNonEmpty!13038 ((_ is Cons!24280) mapValue!13036)) b!2139770))

(declare-fun m!2586103 () Bool)

(assert (=> b!2139770 m!2586103))

(declare-fun m!2586105 () Bool)

(assert (=> setNonEmpty!16269 m!2586105))

(declare-fun b!2139775 () Bool)

(declare-fun e!1366429 () Bool)

(declare-fun tp!661202 () Bool)

(declare-fun tp!661203 () Bool)

(assert (=> b!2139775 (= e!1366429 (and tp!661202 tp!661203))))

(assert (=> b!2139574 (= tp!661079 e!1366429)))

(assert (= (and b!2139574 ((_ is Cons!24275) (exprs!1837 setElem!16244))) b!2139775))

(declare-fun b!2139776 () Bool)

(declare-fun e!1366430 () Bool)

(declare-fun tp!661204 () Bool)

(assert (=> b!2139776 (= e!1366430 tp!661204)))

(declare-fun b!2139777 () Bool)

(declare-fun e!1366431 () Bool)

(declare-fun tp!661205 () Bool)

(assert (=> b!2139777 (= e!1366431 tp!661205)))

(declare-fun b!2139778 () Bool)

(declare-fun setRes!16270 () Bool)

(declare-fun tp!661207 () Bool)

(declare-fun e!1366432 () Bool)

(assert (=> b!2139778 (= e!1366432 (and (inv!31959 (_1!14208 (_1!14209 (h!29681 mapDefault!13037)))) e!1366430 tp_is_empty!9509 setRes!16270 tp!661207))))

(declare-fun condSetEmpty!16270 () Bool)

(assert (=> b!2139778 (= condSetEmpty!16270 (= (_2!14209 (h!29681 mapDefault!13037)) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> b!2139572 (= tp!661070 e!1366432)))

(declare-fun setIsEmpty!16270 () Bool)

(assert (=> setIsEmpty!16270 setRes!16270))

(declare-fun tp!661206 () Bool)

(declare-fun setNonEmpty!16270 () Bool)

(declare-fun setElem!16270 () Context!2674)

(assert (=> setNonEmpty!16270 (= setRes!16270 (and tp!661206 (inv!31959 setElem!16270) e!1366431))))

(declare-fun setRest!16270 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16270 (= (_2!14209 (h!29681 mapDefault!13037)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16270 true) setRest!16270))))

(assert (= b!2139778 b!2139776))

(assert (= (and b!2139778 condSetEmpty!16270) setIsEmpty!16270))

(assert (= (and b!2139778 (not condSetEmpty!16270)) setNonEmpty!16270))

(assert (= setNonEmpty!16270 b!2139777))

(assert (= (and b!2139572 ((_ is Cons!24280) mapDefault!13037)) b!2139778))

(declare-fun m!2586107 () Bool)

(assert (=> b!2139778 m!2586107))

(declare-fun m!2586109 () Bool)

(assert (=> setNonEmpty!16270 m!2586109))

(declare-fun b!2139779 () Bool)

(declare-fun e!1366433 () Bool)

(declare-fun tp!661208 () Bool)

(declare-fun tp!661209 () Bool)

(assert (=> b!2139779 (= e!1366433 (and tp!661208 tp!661209))))

(assert (=> b!2139592 (= tp!661072 e!1366433)))

(assert (= (and b!2139592 ((_ is Cons!24275) (exprs!1837 setElem!16243))) b!2139779))

(declare-fun setRes!16275 () Bool)

(declare-fun setNonEmpty!16276 () Bool)

(declare-fun tp!661225 () Bool)

(declare-fun setElem!16276 () Context!2674)

(declare-fun e!1366442 () Bool)

(assert (=> setNonEmpty!16276 (= setRes!16275 (and tp!661225 (inv!31959 setElem!16276) e!1366442))))

(declare-fun mapValue!13044 () List!24360)

(declare-fun setRest!16276 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16276 (= (_1!14204 (_1!14205 (h!29677 mapValue!13044))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16276 true) setRest!16276))))

(declare-fun b!2139790 () Bool)

(declare-fun e!1366444 () Bool)

(declare-fun setRes!16276 () Bool)

(declare-fun tp!661224 () Bool)

(assert (=> b!2139790 (= e!1366444 (and setRes!16276 tp!661224))))

(declare-fun condSetEmpty!16276 () Bool)

(declare-fun mapDefault!13044 () List!24360)

(assert (=> b!2139790 (= condSetEmpty!16276 (= (_1!14204 (_1!14205 (h!29677 mapDefault!13044))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun b!2139791 () Bool)

(declare-fun tp!661228 () Bool)

(assert (=> b!2139791 (= e!1366442 tp!661228)))

(declare-fun setIsEmpty!16275 () Bool)

(assert (=> setIsEmpty!16275 setRes!16276))

(declare-fun mapNonEmpty!13044 () Bool)

(declare-fun mapRes!13044 () Bool)

(declare-fun tp!661226 () Bool)

(declare-fun e!1366445 () Bool)

(assert (=> mapNonEmpty!13044 (= mapRes!13044 (and tp!661226 e!1366445))))

(declare-fun mapKey!13044 () (_ BitVec 32))

(declare-fun mapRest!13044 () (Array (_ BitVec 32) List!24360))

(assert (=> mapNonEmpty!13044 (= mapRest!13037 (store mapRest!13044 mapKey!13044 mapValue!13044))))

(declare-fun b!2139792 () Bool)

(declare-fun tp!661229 () Bool)

(assert (=> b!2139792 (= e!1366445 (and setRes!16275 tp!661229))))

(declare-fun condSetEmpty!16275 () Bool)

(assert (=> b!2139792 (= condSetEmpty!16275 (= (_1!14204 (_1!14205 (h!29677 mapValue!13044))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setIsEmpty!16276 () Bool)

(assert (=> setIsEmpty!16276 setRes!16275))

(declare-fun b!2139793 () Bool)

(declare-fun e!1366443 () Bool)

(declare-fun tp!661230 () Bool)

(assert (=> b!2139793 (= e!1366443 tp!661230)))

(declare-fun mapIsEmpty!13044 () Bool)

(assert (=> mapIsEmpty!13044 mapRes!13044))

(declare-fun condMapEmpty!13044 () Bool)

(assert (=> mapNonEmpty!13036 (= condMapEmpty!13044 (= mapRest!13037 ((as const (Array (_ BitVec 32) List!24360)) mapDefault!13044)))))

(assert (=> mapNonEmpty!13036 (= tp!661081 (and e!1366444 mapRes!13044))))

(declare-fun tp!661227 () Bool)

(declare-fun setNonEmpty!16275 () Bool)

(declare-fun setElem!16275 () Context!2674)

(assert (=> setNonEmpty!16275 (= setRes!16276 (and tp!661227 (inv!31959 setElem!16275) e!1366443))))

(declare-fun setRest!16275 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16275 (= (_1!14204 (_1!14205 (h!29677 mapDefault!13044))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16275 true) setRest!16275))))

(assert (= (and mapNonEmpty!13036 condMapEmpty!13044) mapIsEmpty!13044))

(assert (= (and mapNonEmpty!13036 (not condMapEmpty!13044)) mapNonEmpty!13044))

(assert (= (and b!2139792 condSetEmpty!16275) setIsEmpty!16276))

(assert (= (and b!2139792 (not condSetEmpty!16275)) setNonEmpty!16276))

(assert (= setNonEmpty!16276 b!2139791))

(assert (= (and mapNonEmpty!13044 ((_ is Cons!24276) mapValue!13044)) b!2139792))

(assert (= (and b!2139790 condSetEmpty!16276) setIsEmpty!16275))

(assert (= (and b!2139790 (not condSetEmpty!16276)) setNonEmpty!16275))

(assert (= setNonEmpty!16275 b!2139793))

(assert (= (and mapNonEmpty!13036 ((_ is Cons!24276) mapDefault!13044)) b!2139790))

(declare-fun m!2586111 () Bool)

(assert (=> setNonEmpty!16276 m!2586111))

(declare-fun m!2586113 () Bool)

(assert (=> mapNonEmpty!13044 m!2586113))

(declare-fun m!2586115 () Bool)

(assert (=> setNonEmpty!16275 m!2586115))

(declare-fun e!1366446 () Bool)

(assert (=> mapNonEmpty!13036 (= tp!661065 e!1366446)))

(declare-fun b!2139795 () Bool)

(declare-fun e!1366447 () Bool)

(declare-fun tp!661232 () Bool)

(assert (=> b!2139795 (= e!1366447 tp!661232)))

(declare-fun b!2139794 () Bool)

(declare-fun setRes!16277 () Bool)

(declare-fun tp!661233 () Bool)

(assert (=> b!2139794 (= e!1366446 (and setRes!16277 tp!661233))))

(declare-fun condSetEmpty!16277 () Bool)

(assert (=> b!2139794 (= condSetEmpty!16277 (= (_1!14204 (_1!14205 (h!29677 mapValue!13038))) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setIsEmpty!16277 () Bool)

(assert (=> setIsEmpty!16277 setRes!16277))

(declare-fun setNonEmpty!16277 () Bool)

(declare-fun setElem!16277 () Context!2674)

(declare-fun tp!661231 () Bool)

(assert (=> setNonEmpty!16277 (= setRes!16277 (and tp!661231 (inv!31959 setElem!16277) e!1366447))))

(declare-fun setRest!16277 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16277 (= (_1!14204 (_1!14205 (h!29677 mapValue!13038))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16277 true) setRest!16277))))

(assert (= (and b!2139794 condSetEmpty!16277) setIsEmpty!16277))

(assert (= (and b!2139794 (not condSetEmpty!16277)) setNonEmpty!16277))

(assert (= setNonEmpty!16277 b!2139795))

(assert (= (and mapNonEmpty!13036 ((_ is Cons!24276) mapValue!13038)) b!2139794))

(declare-fun m!2586117 () Bool)

(assert (=> setNonEmpty!16277 m!2586117))

(declare-fun setIsEmpty!16278 () Bool)

(declare-fun setRes!16278 () Bool)

(assert (=> setIsEmpty!16278 setRes!16278))

(declare-fun setElem!16278 () Context!2674)

(declare-fun tp!661234 () Bool)

(declare-fun setNonEmpty!16278 () Bool)

(declare-fun e!1366448 () Bool)

(assert (=> setNonEmpty!16278 (= setRes!16278 (and tp!661234 (inv!31959 setElem!16278) e!1366448))))

(declare-fun setRest!16278 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16278 (= (_2!14207 (h!29679 (zeroValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16278 true) setRest!16278))))

(declare-fun tp!661236 () Bool)

(declare-fun e!1366449 () Bool)

(declare-fun b!2139796 () Bool)

(declare-fun e!1366450 () Bool)

(declare-fun tp!661238 () Bool)

(assert (=> b!2139796 (= e!1366450 (and tp!661238 (inv!31959 (_2!14206 (_1!14207 (h!29679 (zeroValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))))) e!1366449 tp_is_empty!9509 setRes!16278 tp!661236))))

(declare-fun condSetEmpty!16278 () Bool)

(assert (=> b!2139796 (= condSetEmpty!16278 (= (_2!14207 (h!29679 (zeroValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> b!2139563 (= tp!661059 e!1366450)))

(declare-fun b!2139797 () Bool)

(declare-fun tp!661235 () Bool)

(assert (=> b!2139797 (= e!1366448 tp!661235)))

(declare-fun b!2139798 () Bool)

(declare-fun tp!661237 () Bool)

(assert (=> b!2139798 (= e!1366449 tp!661237)))

(assert (= b!2139796 b!2139798))

(assert (= (and b!2139796 condSetEmpty!16278) setIsEmpty!16278))

(assert (= (and b!2139796 (not condSetEmpty!16278)) setNonEmpty!16278))

(assert (= setNonEmpty!16278 b!2139797))

(assert (= (and b!2139563 ((_ is Cons!24278) (zeroValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))) b!2139796))

(declare-fun m!2586119 () Bool)

(assert (=> setNonEmpty!16278 m!2586119))

(declare-fun m!2586121 () Bool)

(assert (=> b!2139796 m!2586121))

(declare-fun setIsEmpty!16279 () Bool)

(declare-fun setRes!16279 () Bool)

(assert (=> setIsEmpty!16279 setRes!16279))

(declare-fun setElem!16279 () Context!2674)

(declare-fun e!1366451 () Bool)

(declare-fun setNonEmpty!16279 () Bool)

(declare-fun tp!661239 () Bool)

(assert (=> setNonEmpty!16279 (= setRes!16279 (and tp!661239 (inv!31959 setElem!16279) e!1366451))))

(declare-fun setRest!16279 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16279 (= (_2!14207 (h!29679 (minValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16279 true) setRest!16279))))

(declare-fun tp!661241 () Bool)

(declare-fun tp!661243 () Bool)

(declare-fun e!1366453 () Bool)

(declare-fun b!2139799 () Bool)

(declare-fun e!1366452 () Bool)

(assert (=> b!2139799 (= e!1366453 (and tp!661243 (inv!31959 (_2!14206 (_1!14207 (h!29679 (minValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))))) e!1366452 tp_is_empty!9509 setRes!16279 tp!661241))))

(declare-fun condSetEmpty!16279 () Bool)

(assert (=> b!2139799 (= condSetEmpty!16279 (= (_2!14207 (h!29679 (minValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> b!2139563 (= tp!661080 e!1366453)))

(declare-fun b!2139800 () Bool)

(declare-fun tp!661240 () Bool)

(assert (=> b!2139800 (= e!1366451 tp!661240)))

(declare-fun b!2139801 () Bool)

(declare-fun tp!661242 () Bool)

(assert (=> b!2139801 (= e!1366452 tp!661242)))

(assert (= b!2139799 b!2139801))

(assert (= (and b!2139799 condSetEmpty!16279) setIsEmpty!16279))

(assert (= (and b!2139799 (not condSetEmpty!16279)) setNonEmpty!16279))

(assert (= setNonEmpty!16279 b!2139800))

(assert (= (and b!2139563 ((_ is Cons!24278) (minValue!2989 (v!28854 (underlying!5657 (v!28855 (underlying!5658 (cache!3026 cacheDown!1098)))))))) b!2139799))

(declare-fun m!2586123 () Bool)

(assert (=> setNonEmpty!16279 m!2586123))

(declare-fun m!2586125 () Bool)

(assert (=> b!2139799 m!2586125))

(declare-fun condSetEmpty!16280 () Bool)

(assert (=> setNonEmpty!16243 (= condSetEmpty!16280 (= setRest!16244 ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setRes!16280 () Bool)

(assert (=> setNonEmpty!16243 (= tp!661077 setRes!16280)))

(declare-fun setIsEmpty!16280 () Bool)

(assert (=> setIsEmpty!16280 setRes!16280))

(declare-fun e!1366454 () Bool)

(declare-fun setElem!16280 () Context!2674)

(declare-fun tp!661244 () Bool)

(declare-fun setNonEmpty!16280 () Bool)

(assert (=> setNonEmpty!16280 (= setRes!16280 (and tp!661244 (inv!31959 setElem!16280) e!1366454))))

(declare-fun setRest!16280 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16280 (= setRest!16244 ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16280 true) setRest!16280))))

(declare-fun b!2139802 () Bool)

(declare-fun tp!661245 () Bool)

(assert (=> b!2139802 (= e!1366454 tp!661245)))

(assert (= (and setNonEmpty!16243 condSetEmpty!16280) setIsEmpty!16280))

(assert (= (and setNonEmpty!16243 (not condSetEmpty!16280)) setNonEmpty!16280))

(assert (= setNonEmpty!16280 b!2139802))

(declare-fun m!2586127 () Bool)

(assert (=> setNonEmpty!16280 m!2586127))

(declare-fun mapNonEmpty!13047 () Bool)

(declare-fun mapRes!13047 () Bool)

(declare-fun tp!661272 () Bool)

(declare-fun e!1366467 () Bool)

(assert (=> mapNonEmpty!13047 (= mapRes!13047 (and tp!661272 e!1366467))))

(declare-fun mapKey!13047 () (_ BitVec 32))

(declare-fun mapRest!13047 () (Array (_ BitVec 32) List!24362))

(declare-fun mapValue!13047 () List!24362)

(assert (=> mapNonEmpty!13047 (= mapRest!13036 (store mapRest!13047 mapKey!13047 mapValue!13047))))

(declare-fun b!2139817 () Bool)

(declare-fun e!1366472 () Bool)

(declare-fun tp!661276 () Bool)

(assert (=> b!2139817 (= e!1366472 tp!661276)))

(declare-fun b!2139818 () Bool)

(declare-fun e!1366471 () Bool)

(declare-fun tp!661278 () Bool)

(assert (=> b!2139818 (= e!1366471 tp!661278)))

(declare-fun mapIsEmpty!13047 () Bool)

(assert (=> mapIsEmpty!13047 mapRes!13047))

(declare-fun tp!661268 () Bool)

(declare-fun b!2139819 () Bool)

(declare-fun tp!661274 () Bool)

(declare-fun setRes!16286 () Bool)

(assert (=> b!2139819 (= e!1366467 (and tp!661268 (inv!31959 (_2!14206 (_1!14207 (h!29679 mapValue!13047)))) e!1366471 tp_is_empty!9509 setRes!16286 tp!661274))))

(declare-fun condSetEmpty!16285 () Bool)

(assert (=> b!2139819 (= condSetEmpty!16285 (= (_2!14207 (h!29679 mapValue!13047)) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun setElem!16286 () Context!2674)

(declare-fun setNonEmpty!16285 () Bool)

(declare-fun tp!661275 () Bool)

(declare-fun setRes!16285 () Bool)

(assert (=> setNonEmpty!16285 (= setRes!16285 (and tp!661275 (inv!31959 setElem!16286) e!1366472))))

(declare-fun mapDefault!13047 () List!24362)

(declare-fun setRest!16286 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16285 (= (_2!14207 (h!29679 mapDefault!13047)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16286 true) setRest!16286))))

(declare-fun setIsEmpty!16285 () Bool)

(assert (=> setIsEmpty!16285 setRes!16285))

(declare-fun condMapEmpty!13047 () Bool)

(assert (=> mapNonEmpty!13037 (= condMapEmpty!13047 (= mapRest!13036 ((as const (Array (_ BitVec 32) List!24362)) mapDefault!13047)))))

(declare-fun e!1366469 () Bool)

(assert (=> mapNonEmpty!13037 (= tp!661067 (and e!1366469 mapRes!13047))))

(declare-fun tp!661277 () Bool)

(declare-fun e!1366470 () Bool)

(declare-fun b!2139820 () Bool)

(declare-fun tp!661269 () Bool)

(assert (=> b!2139820 (= e!1366469 (and tp!661277 (inv!31959 (_2!14206 (_1!14207 (h!29679 mapDefault!13047)))) e!1366470 tp_is_empty!9509 setRes!16285 tp!661269))))

(declare-fun condSetEmpty!16286 () Bool)

(assert (=> b!2139820 (= condSetEmpty!16286 (= (_2!14207 (h!29679 mapDefault!13047)) ((as const (Array Context!2674 Bool)) false)))))

(declare-fun b!2139821 () Bool)

(declare-fun tp!661273 () Bool)

(assert (=> b!2139821 (= e!1366470 tp!661273)))

(declare-fun e!1366468 () Bool)

(declare-fun setNonEmpty!16286 () Bool)

(declare-fun tp!661270 () Bool)

(declare-fun setElem!16285 () Context!2674)

(assert (=> setNonEmpty!16286 (= setRes!16286 (and tp!661270 (inv!31959 setElem!16285) e!1366468))))

(declare-fun setRest!16285 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16286 (= (_2!14207 (h!29679 mapValue!13047)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16285 true) setRest!16285))))

(declare-fun b!2139822 () Bool)

(declare-fun tp!661271 () Bool)

(assert (=> b!2139822 (= e!1366468 tp!661271)))

(declare-fun setIsEmpty!16286 () Bool)

(assert (=> setIsEmpty!16286 setRes!16286))

(assert (= (and mapNonEmpty!13037 condMapEmpty!13047) mapIsEmpty!13047))

(assert (= (and mapNonEmpty!13037 (not condMapEmpty!13047)) mapNonEmpty!13047))

(assert (= b!2139819 b!2139818))

(assert (= (and b!2139819 condSetEmpty!16285) setIsEmpty!16286))

(assert (= (and b!2139819 (not condSetEmpty!16285)) setNonEmpty!16286))

(assert (= setNonEmpty!16286 b!2139822))

(assert (= (and mapNonEmpty!13047 ((_ is Cons!24278) mapValue!13047)) b!2139819))

(assert (= b!2139820 b!2139821))

(assert (= (and b!2139820 condSetEmpty!16286) setIsEmpty!16285))

(assert (= (and b!2139820 (not condSetEmpty!16286)) setNonEmpty!16285))

(assert (= setNonEmpty!16285 b!2139817))

(assert (= (and mapNonEmpty!13037 ((_ is Cons!24278) mapDefault!13047)) b!2139820))

(declare-fun m!2586129 () Bool)

(assert (=> setNonEmpty!16286 m!2586129))

(declare-fun m!2586131 () Bool)

(assert (=> b!2139819 m!2586131))

(declare-fun m!2586133 () Bool)

(assert (=> b!2139820 m!2586133))

(declare-fun m!2586135 () Bool)

(assert (=> mapNonEmpty!13047 m!2586135))

(declare-fun m!2586137 () Bool)

(assert (=> setNonEmpty!16285 m!2586137))

(declare-fun setIsEmpty!16287 () Bool)

(declare-fun setRes!16287 () Bool)

(assert (=> setIsEmpty!16287 setRes!16287))

(declare-fun tp!661279 () Bool)

(declare-fun setNonEmpty!16287 () Bool)

(declare-fun setElem!16287 () Context!2674)

(declare-fun e!1366473 () Bool)

(assert (=> setNonEmpty!16287 (= setRes!16287 (and tp!661279 (inv!31959 setElem!16287) e!1366473))))

(declare-fun setRest!16287 () (InoxSet Context!2674))

(assert (=> setNonEmpty!16287 (= (_2!14207 (h!29679 mapValue!13037)) ((_ map or) (store ((as const (Array Context!2674 Bool)) false) setElem!16287 true) setRest!16287))))

(declare-fun e!1366474 () Bool)

(declare-fun b!2139823 () Bool)

(declare-fun e!1366475 () Bool)

(declare-fun tp!661281 () Bool)

(declare-fun tp!661283 () Bool)

(assert (=> b!2139823 (= e!1366475 (and tp!661283 (inv!31959 (_2!14206 (_1!14207 (h!29679 mapValue!13037)))) e!1366474 tp_is_empty!9509 setRes!16287 tp!661281))))

(declare-fun condSetEmpty!16287 () Bool)

(assert (=> b!2139823 (= condSetEmpty!16287 (= (_2!14207 (h!29679 mapValue!13037)) ((as const (Array Context!2674 Bool)) false)))))

(assert (=> mapNonEmpty!13037 (= tp!661069 e!1366475)))

(declare-fun b!2139824 () Bool)

(declare-fun tp!661280 () Bool)

(assert (=> b!2139824 (= e!1366473 tp!661280)))

(declare-fun b!2139825 () Bool)

(declare-fun tp!661282 () Bool)

(assert (=> b!2139825 (= e!1366474 tp!661282)))

(assert (= b!2139823 b!2139825))

(assert (= (and b!2139823 condSetEmpty!16287) setIsEmpty!16287))

(assert (= (and b!2139823 (not condSetEmpty!16287)) setNonEmpty!16287))

(assert (= setNonEmpty!16287 b!2139824))

(assert (= (and mapNonEmpty!13037 ((_ is Cons!24278) mapValue!13037)) b!2139823))

(declare-fun m!2586139 () Bool)

(assert (=> setNonEmpty!16287 m!2586139))

(declare-fun m!2586141 () Bool)

(assert (=> b!2139823 m!2586141))

(declare-fun b_lambda!70633 () Bool)

(assert (= b_lambda!70629 (or b!2139561 b_lambda!70633)))

(declare-fun bs!445132 () Bool)

(declare-fun d!644769 () Bool)

(assert (= bs!445132 (and d!644769 b!2139561)))

(assert (=> bs!445132 (= (dynLambda!11370 lambda!79949 (h!29680 stack!8)) (= (res!924016 (h!29680 stack!8)) lt!797889))))

(assert (=> b!2139629 d!644769))

(declare-fun b_lambda!70635 () Bool)

(assert (= b_lambda!70631 (or b!2139568 b_lambda!70635)))

(declare-fun bs!445133 () Bool)

(declare-fun d!644771 () Bool)

(assert (= bs!445133 (and d!644771 b!2139568)))

(assert (=> bs!445133 (= (dynLambda!11370 lambda!79950 (h!29680 stack!8)) (= (totalInput!3108 (h!29680 stack!8)) totalInput!851))))

(assert (=> b!2139634 d!644771))

(check-sat (not b!2139691) (not b!2139713) (not b!2139820) (not b!2139649) (not setNonEmpty!16262) (not setNonEmpty!16249) (not d!644759) (not b!2139696) (not b!2139817) (not d!644751) (not b!2139818) (not b!2139778) (not b!2139712) (not b!2139630) (not b!2139775) (not b!2139652) (not setNonEmpty!16270) (not setNonEmpty!16261) (not setNonEmpty!16247) (not b!2139795) (not b!2139802) (not b_next!63565) (not b!2139621) (not b!2139798) (not b!2139609) (not d!644741) (not b!2139792) (not b!2139742) (not b!2139822) (not setNonEmpty!16275) (not b!2139768) b_and!172451 (not b!2139619) (not b!2139631) (not b!2139694) (not b!2139794) (not d!644719) (not setNonEmpty!16280) (not b!2139728) (not d!644765) (not b!2139762) (not mapNonEmpty!13044) (not b!2139766) (not b!2139697) (not b_next!63567) (not b!2139682) b_and!172447 (not b!2139744) (not setNonEmpty!16287) (not b!2139725) (not b!2139681) (not b!2139698) (not b!2139659) (not setNonEmpty!16279) (not b!2139709) (not b!2139767) (not setNonEmpty!16277) (not d!644753) (not b!2139790) (not b!2139710) (not b!2139797) (not b!2139606) (not bm!128796) (not d!644743) (not b!2139624) (not b_next!63569) (not setNonEmpty!16286) (not b!2139618) (not b!2139635) (not b!2139770) (not bm!128795) (not b!2139796) (not b!2139693) (not b!2139746) (not b!2139733) (not setNonEmpty!16258) (not d!644745) (not b_next!63575) tp_is_empty!9509 (not setNonEmpty!16267) (not b!2139714) b_and!172443 b_and!172445 (not b!2139587) (not b!2139674) b_and!172441 (not b!2139747) (not b!2139695) (not b!2139726) (not b!2139560) (not b!2139764) (not d!644763) (not b_lambda!70635) (not b_next!63571) (not b!2139779) (not d!644727) (not setNonEmpty!16285) (not setNonEmpty!16269) (not b!2139777) (not b!2139743) (not b!2139765) (not mapNonEmpty!13041) (not b!2139823) (not b!2139603) (not b!2139745) (not setNonEmpty!16248) (not setNonEmpty!16276) (not setNonEmpty!16268) (not b!2139791) (not b!2139595) (not b!2139711) (not b!2139700) (not b!2139727) (not b!2139819) (not b!2139824) (not setNonEmpty!16278) (not b!2139763) (not b!2139699) (not mapNonEmpty!13047) (not b!2139651) (not b!2139658) (not b!2139825) (not b!2139616) (not b!2139801) (not b!2139692) (not setNonEmpty!16252) (not b!2139793) (not d!644761) (not b!2139776) (not b!2139648) (not b_lambda!70633) (not b!2139769) (not setNonEmpty!16255) b_and!172449 (not b!2139800) (not b_next!63573) (not d!644725) (not b!2139821) (not b!2139673) (not b!2139633) (not b!2139799))
(check-sat (not b_next!63565) b_and!172451 (not b_next!63567) b_and!172447 (not b_next!63569) (not b_next!63571) b_and!172449 (not b_next!63573) (not b_next!63575) b_and!172443 b_and!172445 b_and!172441)
