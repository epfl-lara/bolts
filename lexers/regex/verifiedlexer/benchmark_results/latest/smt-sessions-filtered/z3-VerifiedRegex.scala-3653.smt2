; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207894 () Bool)

(assert start!207894)

(declare-fun b!2140869 () Bool)

(declare-fun b_free!62933 () Bool)

(declare-fun b_next!63637 () Bool)

(assert (=> b!2140869 (= b_free!62933 (not b_next!63637))))

(declare-fun tp!661984 () Bool)

(declare-fun b_and!172513 () Bool)

(assert (=> b!2140869 (= tp!661984 b_and!172513)))

(declare-fun b!2140844 () Bool)

(declare-fun b_free!62935 () Bool)

(declare-fun b_next!63639 () Bool)

(assert (=> b!2140844 (= b_free!62935 (not b_next!63639))))

(declare-fun tp!661994 () Bool)

(declare-fun b_and!172515 () Bool)

(assert (=> b!2140844 (= tp!661994 b_and!172515)))

(declare-fun b!2140837 () Bool)

(declare-fun b_free!62937 () Bool)

(declare-fun b_next!63641 () Bool)

(assert (=> b!2140837 (= b_free!62937 (not b_next!63641))))

(declare-fun tp!661976 () Bool)

(declare-fun b_and!172517 () Bool)

(assert (=> b!2140837 (= tp!661976 b_and!172517)))

(declare-fun b!2140867 () Bool)

(declare-fun b_free!62939 () Bool)

(declare-fun b_next!63643 () Bool)

(assert (=> b!2140867 (= b_free!62939 (not b_next!63643))))

(declare-fun tp!661974 () Bool)

(declare-fun b_and!172519 () Bool)

(assert (=> b!2140867 (= tp!661974 b_and!172519)))

(declare-fun b!2140858 () Bool)

(declare-fun b_free!62941 () Bool)

(declare-fun b_next!63645 () Bool)

(assert (=> b!2140858 (= b_free!62941 (not b_next!63645))))

(declare-fun tp!661992 () Bool)

(declare-fun b_and!172521 () Bool)

(assert (=> b!2140858 (= tp!661992 b_and!172521)))

(declare-fun b!2140832 () Bool)

(declare-fun b_free!62943 () Bool)

(declare-fun b_next!63647 () Bool)

(assert (=> b!2140832 (= b_free!62943 (not b_next!63647))))

(declare-fun tp!661998 () Bool)

(declare-fun b_and!172523 () Bool)

(assert (=> b!2140832 (= tp!661998 b_and!172523)))

(declare-fun b!2140870 () Bool)

(assert (=> b!2140870 true))

(declare-fun bs!445175 () Bool)

(declare-fun b!2140848 () Bool)

(assert (= bs!445175 (and b!2140848 b!2140870)))

(declare-fun lambda!80066 () Int)

(declare-fun lambda!80065 () Int)

(assert (=> bs!445175 (not (= lambda!80066 lambda!80065))))

(assert (=> b!2140848 true))

(declare-fun bs!445176 () Bool)

(declare-fun b!2140868 () Bool)

(assert (= bs!445176 (and b!2140868 b!2140870)))

(declare-fun lt!798099 () Int)

(declare-fun lambda!80067 () Int)

(declare-fun lt!798103 () Int)

(assert (=> bs!445176 (= (= lt!798099 lt!798103) (= lambda!80067 lambda!80065))))

(declare-fun bs!445177 () Bool)

(assert (= bs!445177 (and b!2140868 b!2140848)))

(assert (=> bs!445177 (not (= lambda!80067 lambda!80066))))

(assert (=> b!2140868 true))

(declare-fun b!2140827 () Bool)

(declare-fun e!1367303 () Bool)

(declare-fun e!1367337 () Bool)

(declare-datatypes ((C!11692 0))(
  ( (C!11693 (val!6832 Int)) )
))
(declare-datatypes ((Regex!5773 0))(
  ( (ElementMatch!5773 (c!340552 C!11692)) (Concat!10075 (regOne!12058 Regex!5773) (regTwo!12058 Regex!5773)) (EmptyExpr!5773) (Star!5773 (reg!6102 Regex!5773)) (EmptyLang!5773) (Union!5773 (regOne!12059 Regex!5773) (regTwo!12059 Regex!5773)) )
))
(declare-datatypes ((List!24394 0))(
  ( (Nil!24310) (Cons!24310 (h!29711 Regex!5773) (t!196924 List!24394)) )
))
(declare-datatypes ((Context!2686 0))(
  ( (Context!2687 (exprs!1843 List!24394)) )
))
(declare-datatypes ((tuple2!24132 0))(
  ( (tuple2!24133 (_1!14238 Context!2686) (_2!14238 C!11692)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24134 0))(
  ( (tuple2!24135 (_1!14239 tuple2!24132) (_2!14239 (InoxSet Context!2686))) )
))
(declare-datatypes ((List!24395 0))(
  ( (Nil!24311) (Cons!24311 (h!29712 tuple2!24134) (t!196925 List!24395)) )
))
(declare-datatypes ((array!9277 0))(
  ( (array!9278 (arr!4140 (Array (_ BitVec 32) (_ BitVec 64))) (size!19021 (_ BitVec 32))) )
))
(declare-datatypes ((array!9279 0))(
  ( (array!9280 (arr!4141 (Array (_ BitVec 32) List!24395)) (size!19022 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5492 0))(
  ( (LongMapFixedSize!5493 (defaultEntry!3111 Int) (mask!6948 (_ BitVec 32)) (extraKeys!2994 (_ BitVec 32)) (zeroValue!3004 List!24395) (minValue!3004 List!24395) (_size!5543 (_ BitVec 32)) (_keys!3043 array!9277) (_values!3026 array!9279) (_vacant!2807 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10809 0))(
  ( (Cell!10810 (v!28890 LongMapFixedSize!5492)) )
))
(declare-datatypes ((MutLongMap!2746 0))(
  ( (LongMap!2746 (underlying!5687 Cell!10809)) (MutLongMapExt!2745 (__x!16414 Int)) )
))
(declare-fun lt!798101 () MutLongMap!2746)

(get-info :version)

(assert (=> b!2140827 (= e!1367303 (and e!1367337 ((_ is LongMap!2746) lt!798101)))))

(declare-datatypes ((Cell!10811 0))(
  ( (Cell!10812 (v!28891 MutLongMap!2746)) )
))
(declare-datatypes ((Hashable!2660 0))(
  ( (HashableExt!2659 (__x!16415 Int)) )
))
(declare-datatypes ((MutableMap!2660 0))(
  ( (MutableMapExt!2659 (__x!16416 Int)) (HashMap!2660 (underlying!5688 Cell!10811) (hashF!4583 Hashable!2660) (_size!5544 (_ BitVec 32)) (defaultValue!2822 Int)) )
))
(declare-datatypes ((CacheUp!1832 0))(
  ( (CacheUp!1833 (cache!3041 MutableMap!2660)) )
))
(declare-fun cacheUp!979 () CacheUp!1832)

(assert (=> b!2140827 (= lt!798101 (v!28891 (underlying!5688 (cache!3041 cacheUp!979))))))

(declare-fun setElem!16365 () Context!2686)

(declare-fun setRes!16366 () Bool)

(declare-fun e!1367309 () Bool)

(declare-fun setNonEmpty!16365 () Bool)

(declare-fun tp!661979 () Bool)

(declare-fun inv!31997 (Context!2686) Bool)

(assert (=> setNonEmpty!16365 (= setRes!16366 (and tp!661979 (inv!31997 setElem!16365) e!1367309))))

(declare-datatypes ((List!24396 0))(
  ( (Nil!24312) (Cons!24312 (h!29713 C!11692) (t!196926 List!24396)) )
))
(declare-datatypes ((IArray!15827 0))(
  ( (IArray!15828 (innerList!7971 List!24396)) )
))
(declare-datatypes ((Conc!7911 0))(
  ( (Node!7911 (left!18702 Conc!7911) (right!19032 Conc!7911) (csize!16052 Int) (cheight!8122 Int)) (Leaf!11565 (xs!10853 IArray!15827) (csize!16053 Int)) (Empty!7911) )
))
(declare-datatypes ((BalanceConc!15584 0))(
  ( (BalanceConc!15585 (c!340553 Conc!7911)) )
))
(declare-datatypes ((StackFrame!224 0))(
  ( (StackFrame!225 (z!5863 (InoxSet Context!2686)) (from!2737 Int) (lastNullablePos!424 Int) (res!924369 Int) (totalInput!3120 BalanceConc!15584)) )
))
(declare-datatypes ((List!24397 0))(
  ( (Nil!24313) (Cons!24313 (h!29714 StackFrame!224) (t!196927 List!24397)) )
))
(declare-fun stack!8 () List!24397)

(declare-fun setRest!16366 () (InoxSet Context!2686))

(assert (=> setNonEmpty!16365 (= (z!5863 (h!29714 stack!8)) ((_ map or) (store ((as const (Array Context!2686 Bool)) false) setElem!16365 true) setRest!16366))))

(declare-fun e!1367327 () Bool)

(declare-fun tp!661989 () Bool)

(declare-fun setRes!16365 () Bool)

(declare-fun setNonEmpty!16366 () Bool)

(declare-fun setElem!16366 () Context!2686)

(assert (=> setNonEmpty!16366 (= setRes!16365 (and tp!661989 (inv!31997 setElem!16366) e!1367327))))

(declare-fun z!3839 () (InoxSet Context!2686))

(declare-fun setRest!16365 () (InoxSet Context!2686))

(assert (=> setNonEmpty!16366 (= z!3839 ((_ map or) (store ((as const (Array Context!2686 Bool)) false) setElem!16366 true) setRest!16365))))

(declare-fun b!2140828 () Bool)

(declare-fun e!1367335 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2140828 (= e!1367335 from!1043)))

(declare-fun b!2140829 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2140829 (= e!1367335 lastNullablePos!123)))

(declare-fun b!2140830 () Bool)

(declare-fun e!1367318 () Bool)

(assert (=> b!2140830 (= e!1367337 e!1367318)))

(declare-fun b!2140831 () Bool)

(declare-fun tp!661999 () Bool)

(declare-fun e!1367330 () Bool)

(declare-fun e!1367339 () Bool)

(declare-fun inv!31998 (StackFrame!224) Bool)

(assert (=> b!2140831 (= e!1367330 (and (inv!31998 (h!29714 stack!8)) e!1367339 tp!661999))))

(declare-datatypes ((tuple3!3404 0))(
  ( (tuple3!3405 (_1!14240 (InoxSet Context!2686)) (_2!14240 Int) (_3!2172 Int)) )
))
(declare-datatypes ((tuple2!24136 0))(
  ( (tuple2!24137 (_1!14241 tuple3!3404) (_2!14241 Int)) )
))
(declare-datatypes ((List!24398 0))(
  ( (Nil!24314) (Cons!24314 (h!29715 tuple2!24136) (t!196928 List!24398)) )
))
(declare-datatypes ((array!9281 0))(
  ( (array!9282 (arr!4142 (Array (_ BitVec 32) List!24398)) (size!19023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5494 0))(
  ( (LongMapFixedSize!5495 (defaultEntry!3112 Int) (mask!6949 (_ BitVec 32)) (extraKeys!2995 (_ BitVec 32)) (zeroValue!3005 List!24398) (minValue!3005 List!24398) (_size!5545 (_ BitVec 32)) (_keys!3044 array!9277) (_values!3027 array!9281) (_vacant!2808 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10813 0))(
  ( (Cell!10814 (v!28892 LongMapFixedSize!5494)) )
))
(declare-datatypes ((MutLongMap!2747 0))(
  ( (LongMap!2747 (underlying!5689 Cell!10813)) (MutLongMapExt!2746 (__x!16417 Int)) )
))
(declare-datatypes ((Cell!10815 0))(
  ( (Cell!10816 (v!28893 MutLongMap!2747)) )
))
(declare-datatypes ((Hashable!2661 0))(
  ( (HashableExt!2660 (__x!16418 Int)) )
))
(declare-datatypes ((MutableMap!2661 0))(
  ( (MutableMapExt!2660 (__x!16419 Int)) (HashMap!2661 (underlying!5690 Cell!10815) (hashF!4584 Hashable!2661) (_size!5546 (_ BitVec 32)) (defaultValue!2823 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!790 0))(
  ( (CacheFurthestNullable!791 (cache!3042 MutableMap!2661) (totalInput!3121 BalanceConc!15584)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!790)

(declare-fun tp!661975 () Bool)

(declare-fun e!1367314 () Bool)

(declare-fun e!1367308 () Bool)

(declare-fun tp!661985 () Bool)

(declare-fun array_inv!2958 (array!9277) Bool)

(declare-fun array_inv!2959 (array!9281) Bool)

(assert (=> b!2140832 (= e!1367308 (and tp!661998 tp!661985 tp!661975 (array_inv!2958 (_keys!3044 (v!28892 (underlying!5689 (v!28893 (underlying!5690 (cache!3042 cacheFurthestNullable!114))))))) (array_inv!2959 (_values!3027 (v!28892 (underlying!5689 (v!28893 (underlying!5690 (cache!3042 cacheFurthestNullable!114))))))) e!1367314))))

(declare-fun b!2140833 () Bool)

(declare-fun e!1367331 () Bool)

(declare-fun tp!661990 () Bool)

(declare-fun inv!31999 (Conc!7911) Bool)

(assert (=> b!2140833 (= e!1367331 (and (inv!31999 (c!340553 (totalInput!3120 (h!29714 stack!8)))) tp!661990))))

(declare-fun b!2140835 () Bool)

(declare-fun e!1367328 () Bool)

(declare-fun e!1367324 () Bool)

(assert (=> b!2140835 (= e!1367328 e!1367324)))

(declare-fun res!924364 () Bool)

(assert (=> b!2140835 (=> res!924364 e!1367324)))

(assert (=> b!2140835 (= res!924364 (not (= lt!798103 lt!798099)))))

(declare-datatypes ((tuple3!3406 0))(
  ( (tuple3!3407 (_1!14242 Regex!5773) (_2!14242 Context!2686) (_3!2173 C!11692)) )
))
(declare-datatypes ((tuple2!24138 0))(
  ( (tuple2!24139 (_1!14243 tuple3!3406) (_2!14243 (InoxSet Context!2686))) )
))
(declare-datatypes ((List!24399 0))(
  ( (Nil!24315) (Cons!24315 (h!29716 tuple2!24138) (t!196929 List!24399)) )
))
(declare-datatypes ((Hashable!2662 0))(
  ( (HashableExt!2661 (__x!16420 Int)) )
))
(declare-datatypes ((array!9283 0))(
  ( (array!9284 (arr!4143 (Array (_ BitVec 32) List!24399)) (size!19024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5496 0))(
  ( (LongMapFixedSize!5497 (defaultEntry!3113 Int) (mask!6950 (_ BitVec 32)) (extraKeys!2996 (_ BitVec 32)) (zeroValue!3006 List!24399) (minValue!3006 List!24399) (_size!5547 (_ BitVec 32)) (_keys!3045 array!9277) (_values!3028 array!9283) (_vacant!2809 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10817 0))(
  ( (Cell!10818 (v!28894 LongMapFixedSize!5496)) )
))
(declare-datatypes ((MutLongMap!2748 0))(
  ( (LongMap!2748 (underlying!5691 Cell!10817)) (MutLongMapExt!2747 (__x!16421 Int)) )
))
(declare-datatypes ((Cell!10819 0))(
  ( (Cell!10820 (v!28895 MutLongMap!2748)) )
))
(declare-datatypes ((MutableMap!2662 0))(
  ( (MutableMapExt!2661 (__x!16422 Int)) (HashMap!2662 (underlying!5692 Cell!10819) (hashF!4585 Hashable!2662) (_size!5548 (_ BitVec 32)) (defaultValue!2824 Int)) )
))
(declare-datatypes ((CacheDown!1822 0))(
  ( (CacheDown!1823 (cache!3043 MutableMap!2662)) )
))
(declare-datatypes ((tuple3!3408 0))(
  ( (tuple3!3409 (_1!14244 (InoxSet Context!2686)) (_2!14244 CacheUp!1832) (_3!2174 CacheDown!1822)) )
))
(declare-fun lt!798102 () tuple3!3408)

(declare-fun totalInput!851 () BalanceConc!15584)

(declare-fun lt!798104 () Int)

(declare-fun furthestNullablePosition!74 ((InoxSet Context!2686) Int BalanceConc!15584 Int Int) Int)

(assert (=> b!2140835 (= lt!798099 (furthestNullablePosition!74 (_1!14244 lt!798102) (+ 1 from!1043) totalInput!851 lt!798104 e!1367335))))

(declare-fun c!340551 () Bool)

(declare-fun nullableZipper!137 ((InoxSet Context!2686)) Bool)

(assert (=> b!2140835 (= c!340551 (nullableZipper!137 (_1!14244 lt!798102)))))

(declare-fun cacheDown!1098 () CacheDown!1822)

(declare-fun derivationStepZipperMem!55 ((InoxSet Context!2686) C!11692 CacheUp!1832 CacheDown!1822) tuple3!3408)

(declare-fun apply!5963 (BalanceConc!15584 Int) C!11692)

(assert (=> b!2140835 (= lt!798102 (derivationStepZipperMem!55 z!3839 (apply!5963 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2140836 () Bool)

(declare-fun e!1367332 () Bool)

(declare-fun tp!662000 () Bool)

(declare-fun mapRes!13110 () Bool)

(assert (=> b!2140836 (= e!1367332 (and tp!662000 mapRes!13110))))

(declare-fun condMapEmpty!13110 () Bool)

(declare-fun mapDefault!13110 () List!24399)

(assert (=> b!2140836 (= condMapEmpty!13110 (= (arr!4143 (_values!3028 (v!28894 (underlying!5691 (v!28895 (underlying!5692 (cache!3043 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24399)) mapDefault!13110)))))

(declare-fun e!1367317 () Bool)

(declare-fun tp!661982 () Bool)

(declare-fun tp!661993 () Bool)

(declare-fun e!1367312 () Bool)

(declare-fun array_inv!2960 (array!9279) Bool)

(assert (=> b!2140837 (= e!1367312 (and tp!661976 tp!661982 tp!661993 (array_inv!2958 (_keys!3043 (v!28890 (underlying!5687 (v!28891 (underlying!5688 (cache!3041 cacheUp!979))))))) (array_inv!2960 (_values!3026 (v!28890 (underlying!5687 (v!28891 (underlying!5688 (cache!3041 cacheUp!979))))))) e!1367317))))

(declare-fun b!2140838 () Bool)

(declare-fun res!924358 () Bool)

(declare-fun e!1367320 () Bool)

(assert (=> b!2140838 (=> (not res!924358) (not e!1367320))))

(assert (=> b!2140838 (= res!924358 (= (totalInput!3121 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2140839 () Bool)

(declare-fun res!924355 () Bool)

(assert (=> b!2140839 (=> (not res!924355) (not e!1367320))))

(declare-fun valid!2145 (CacheDown!1822) Bool)

(assert (=> b!2140839 (= res!924355 (valid!2145 cacheDown!1098))))

(declare-fun b!2140840 () Bool)

(declare-fun tp!661987 () Bool)

(declare-fun mapRes!13109 () Bool)

(assert (=> b!2140840 (= e!1367317 (and tp!661987 mapRes!13109))))

(declare-fun condMapEmpty!13108 () Bool)

(declare-fun mapDefault!13108 () List!24395)

(assert (=> b!2140840 (= condMapEmpty!13108 (= (arr!4141 (_values!3026 (v!28890 (underlying!5687 (v!28891 (underlying!5688 (cache!3041 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24395)) mapDefault!13108)))))

(declare-fun mapNonEmpty!13108 () Bool)

(declare-fun mapRes!13108 () Bool)

(declare-fun tp!661980 () Bool)

(declare-fun tp!661973 () Bool)

(assert (=> mapNonEmpty!13108 (= mapRes!13108 (and tp!661980 tp!661973))))

(declare-fun mapKey!13108 () (_ BitVec 32))

(declare-fun mapValue!13109 () List!24398)

(declare-fun mapRest!13108 () (Array (_ BitVec 32) List!24398))

(assert (=> mapNonEmpty!13108 (= (arr!4142 (_values!3027 (v!28892 (underlying!5689 (v!28893 (underlying!5690 (cache!3042 cacheFurthestNullable!114))))))) (store mapRest!13108 mapKey!13108 mapValue!13109))))

(declare-fun e!1367306 () Bool)

(declare-fun b!2140841 () Bool)

(declare-fun e!1367338 () Bool)

(declare-fun e!1367305 () Bool)

(declare-fun inv!32000 (BalanceConc!15584) Bool)

(assert (=> b!2140841 (= e!1367338 (and e!1367305 (inv!32000 (totalInput!3121 cacheFurthestNullable!114)) e!1367306))))

(declare-fun b!2140842 () Bool)

(declare-fun e!1367323 () Bool)

(declare-fun tp!661997 () Bool)

(assert (=> b!2140842 (= e!1367323 (and (inv!31999 (c!340553 totalInput!851)) tp!661997))))

(declare-fun b!2140843 () Bool)

(declare-fun e!1367333 () Bool)

(declare-fun e!1367334 () Bool)

(assert (=> b!2140843 (= e!1367333 e!1367334)))

(declare-fun e!1367325 () Bool)

(declare-fun tp!661986 () Bool)

(declare-fun tp!661988 () Bool)

(declare-fun array_inv!2961 (array!9283) Bool)

(assert (=> b!2140844 (= e!1367325 (and tp!661994 tp!661986 tp!661988 (array_inv!2958 (_keys!3045 (v!28894 (underlying!5691 (v!28895 (underlying!5692 (cache!3043 cacheDown!1098))))))) (array_inv!2961 (_values!3028 (v!28894 (underlying!5691 (v!28895 (underlying!5692 (cache!3043 cacheDown!1098))))))) e!1367332))))

(declare-fun b!2140845 () Bool)

(declare-fun res!924357 () Bool)

(assert (=> b!2140845 (=> (not res!924357) (not e!1367320))))

(declare-fun valid!2146 (CacheUp!1832) Bool)

(assert (=> b!2140845 (= res!924357 (valid!2146 cacheUp!979))))

(declare-fun b!2140846 () Bool)

(declare-fun tp!662001 () Bool)

(assert (=> b!2140846 (= e!1367327 tp!662001)))

(declare-fun b!2140847 () Bool)

(declare-fun res!924362 () Bool)

(assert (=> b!2140847 (=> (not res!924362) (not e!1367320))))

(declare-fun e!1367329 () Bool)

(assert (=> b!2140847 (= res!924362 e!1367329)))

(declare-fun res!924365 () Bool)

(assert (=> b!2140847 (=> res!924365 e!1367329)))

(assert (=> b!2140847 (= res!924365 (not (nullableZipper!137 z!3839)))))

(declare-fun res!924367 () Bool)

(declare-fun e!1367326 () Bool)

(assert (=> b!2140848 (=> (not res!924367) (not e!1367326))))

(declare-fun forall!4966 (List!24397 Int) Bool)

(assert (=> b!2140848 (= res!924367 (forall!4966 stack!8 lambda!80066))))

(declare-fun b!2140849 () Bool)

(assert (=> b!2140849 (= e!1367329 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2140850 () Bool)

(declare-fun e!1367316 () Bool)

(assert (=> b!2140850 (= e!1367316 e!1367320)))

(declare-fun res!924360 () Bool)

(assert (=> b!2140850 (=> (not res!924360) (not e!1367320))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2140850 (= res!924360 (and (= totalInputSize!296 lt!798104) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19025 (BalanceConc!15584) Int)

(assert (=> b!2140850 (= lt!798104 (size!19025 totalInput!851))))

(declare-fun b!2140851 () Bool)

(declare-fun tp!661983 () Bool)

(assert (=> b!2140851 (= e!1367309 tp!661983)))

(declare-fun setIsEmpty!16365 () Bool)

(assert (=> setIsEmpty!16365 setRes!16366))

(declare-fun b!2140852 () Bool)

(assert (=> b!2140852 (= e!1367334 e!1367308)))

(declare-fun b!2140853 () Bool)

(assert (=> b!2140853 (= e!1367326 (not e!1367328))))

(declare-fun res!924356 () Bool)

(assert (=> b!2140853 (=> res!924356 e!1367328)))

(declare-datatypes ((Option!4934 0))(
  ( (None!4933) (Some!4933 (v!28896 Int)) )
))
(declare-fun get!7431 (CacheFurthestNullable!790 (InoxSet Context!2686) Int Int) Option!4934)

(assert (=> b!2140853 (= res!924356 ((_ is Some!4933) (get!7431 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2140853 (forall!4966 stack!8 lambda!80065)))

(declare-fun b!2140854 () Bool)

(declare-fun tp!661996 () Bool)

(assert (=> b!2140854 (= e!1367314 (and tp!661996 mapRes!13108))))

(declare-fun condMapEmpty!13109 () Bool)

(declare-fun mapDefault!13109 () List!24398)

(assert (=> b!2140854 (= condMapEmpty!13109 (= (arr!4142 (_values!3027 (v!28892 (underlying!5689 (v!28893 (underlying!5690 (cache!3042 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24398)) mapDefault!13109)))))

(declare-fun b!2140855 () Bool)

(assert (=> b!2140855 (= e!1367339 (and setRes!16366 (inv!32000 (totalInput!3120 (h!29714 stack!8))) e!1367331))))

(declare-fun condSetEmpty!16366 () Bool)

(assert (=> b!2140855 (= condSetEmpty!16366 (= (z!5863 (h!29714 stack!8)) ((as const (Array Context!2686 Bool)) false)))))

(declare-fun b!2140856 () Bool)

(declare-fun res!924361 () Bool)

(assert (=> b!2140856 (=> (not res!924361) (not e!1367320))))

(declare-fun valid!2147 (CacheFurthestNullable!790) Bool)

(assert (=> b!2140856 (= res!924361 (valid!2147 cacheFurthestNullable!114))))

(declare-fun b!2140857 () Bool)

(declare-fun e!1367307 () Bool)

(declare-fun e!1367304 () Bool)

(declare-fun lt!798105 () MutLongMap!2748)

(assert (=> b!2140857 (= e!1367307 (and e!1367304 ((_ is LongMap!2748) lt!798105)))))

(assert (=> b!2140857 (= lt!798105 (v!28895 (underlying!5692 (cache!3043 cacheDown!1098))))))

(declare-fun e!1367319 () Bool)

(assert (=> b!2140858 (= e!1367319 (and e!1367303 tp!661992))))

(declare-fun mapIsEmpty!13108 () Bool)

(assert (=> mapIsEmpty!13108 mapRes!13109))

(declare-fun b!2140859 () Bool)

(declare-fun tp!661978 () Bool)

(assert (=> b!2140859 (= e!1367306 (and (inv!31999 (c!340553 (totalInput!3121 cacheFurthestNullable!114))) tp!661978))))

(declare-fun b!2140860 () Bool)

(declare-fun e!1367322 () Bool)

(assert (=> b!2140860 (= e!1367304 e!1367322)))

(declare-fun b!2140861 () Bool)

(declare-fun e!1367310 () Bool)

(assert (=> b!2140861 (= e!1367310 e!1367319)))

(declare-fun b!2140862 () Bool)

(declare-fun res!924359 () Bool)

(assert (=> b!2140862 (=> res!924359 e!1367328)))

(declare-fun lostCauseZipper!113 ((InoxSet Context!2686)) Bool)

(assert (=> b!2140862 (= res!924359 (lostCauseZipper!113 z!3839))))

(declare-fun mapNonEmpty!13109 () Bool)

(declare-fun tp!661995 () Bool)

(declare-fun tp!661981 () Bool)

(assert (=> mapNonEmpty!13109 (= mapRes!13110 (and tp!661995 tp!661981))))

(declare-fun mapValue!13110 () List!24399)

(declare-fun mapRest!13110 () (Array (_ BitVec 32) List!24399))

(declare-fun mapKey!13109 () (_ BitVec 32))

(assert (=> mapNonEmpty!13109 (= (arr!4143 (_values!3028 (v!28894 (underlying!5691 (v!28895 (underlying!5692 (cache!3043 cacheDown!1098))))))) (store mapRest!13110 mapKey!13109 mapValue!13110))))

(declare-fun setIsEmpty!16366 () Bool)

(assert (=> setIsEmpty!16366 setRes!16365))

(declare-fun b!2140863 () Bool)

(declare-fun e!1367336 () Bool)

(declare-fun lt!798100 () MutLongMap!2747)

(assert (=> b!2140863 (= e!1367336 (and e!1367333 ((_ is LongMap!2747) lt!798100)))))

(assert (=> b!2140863 (= lt!798100 (v!28893 (underlying!5690 (cache!3042 cacheFurthestNullable!114))))))

(declare-fun res!924368 () Bool)

(assert (=> start!207894 (=> (not res!924368) (not e!1367316))))

(assert (=> start!207894 (= res!924368 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207894 e!1367316))

(declare-fun inv!32001 (CacheFurthestNullable!790) Bool)

(assert (=> start!207894 (and (inv!32001 cacheFurthestNullable!114) e!1367338)))

(assert (=> start!207894 true))

(declare-fun e!1367321 () Bool)

(declare-fun inv!32002 (CacheDown!1822) Bool)

(assert (=> start!207894 (and (inv!32002 cacheDown!1098) e!1367321)))

(declare-fun inv!32003 (CacheUp!1832) Bool)

(assert (=> start!207894 (and (inv!32003 cacheUp!979) e!1367310)))

(declare-fun condSetEmpty!16365 () Bool)

(assert (=> start!207894 (= condSetEmpty!16365 (= z!3839 ((as const (Array Context!2686 Bool)) false)))))

(assert (=> start!207894 setRes!16365))

(assert (=> start!207894 (and (inv!32000 totalInput!851) e!1367323)))

(assert (=> start!207894 e!1367330))

(declare-fun b!2140834 () Bool)

(declare-fun e!1367340 () Bool)

(assert (=> b!2140834 (= e!1367321 e!1367340)))

(declare-fun b!2140864 () Bool)

(declare-fun res!924363 () Bool)

(assert (=> b!2140864 (=> res!924363 e!1367328)))

(assert (=> b!2140864 (= res!924363 (= from!1043 totalInputSize!296))))

(declare-fun mapIsEmpty!13109 () Bool)

(assert (=> mapIsEmpty!13109 mapRes!13108))

(declare-fun mapNonEmpty!13110 () Bool)

(declare-fun tp!661977 () Bool)

(declare-fun tp!661991 () Bool)

(assert (=> mapNonEmpty!13110 (= mapRes!13109 (and tp!661977 tp!661991))))

(declare-fun mapValue!13108 () List!24395)

(declare-fun mapKey!13110 () (_ BitVec 32))

(declare-fun mapRest!13109 () (Array (_ BitVec 32) List!24395))

(assert (=> mapNonEmpty!13110 (= (arr!4141 (_values!3026 (v!28890 (underlying!5687 (v!28891 (underlying!5688 (cache!3041 cacheUp!979))))))) (store mapRest!13109 mapKey!13110 mapValue!13108))))

(declare-fun b!2140865 () Bool)

(assert (=> b!2140865 (= e!1367318 e!1367312)))

(declare-fun b!2140866 () Bool)

(assert (=> b!2140866 (= e!1367322 e!1367325)))

(assert (=> b!2140867 (= e!1367340 (and e!1367307 tp!661974))))

(assert (=> b!2140868 (= e!1367324 true)))

(assert (=> b!2140868 (forall!4966 stack!8 lambda!80067)))

(declare-datatypes ((Unit!37691 0))(
  ( (Unit!37692) )
))
(declare-fun lt!798098 () Unit!37691)

(declare-fun lemmaStackPreservesForEqualRes!25 (List!24397 Int Int) Unit!37691)

(assert (=> b!2140868 (= lt!798098 (lemmaStackPreservesForEqualRes!25 stack!8 lt!798103 lt!798099))))

(assert (=> b!2140868 (forall!4966 stack!8 lambda!80065)))

(assert (=> b!2140869 (= e!1367305 (and e!1367336 tp!661984))))

(assert (=> b!2140870 (= e!1367320 e!1367326)))

(declare-fun res!924366 () Bool)

(assert (=> b!2140870 (=> (not res!924366) (not e!1367326))))

(assert (=> b!2140870 (= res!924366 (forall!4966 stack!8 lambda!80065))))

(assert (=> b!2140870 (= lt!798103 (furthestNullablePosition!74 z!3839 from!1043 totalInput!851 lt!798104 lastNullablePos!123))))

(declare-fun mapIsEmpty!13110 () Bool)

(assert (=> mapIsEmpty!13110 mapRes!13110))

(assert (= (and start!207894 res!924368) b!2140850))

(assert (= (and b!2140850 res!924360) b!2140847))

(assert (= (and b!2140847 (not res!924365)) b!2140849))

(assert (= (and b!2140847 res!924362) b!2140845))

(assert (= (and b!2140845 res!924357) b!2140839))

(assert (= (and b!2140839 res!924355) b!2140856))

(assert (= (and b!2140856 res!924361) b!2140838))

(assert (= (and b!2140838 res!924358) b!2140870))

(assert (= (and b!2140870 res!924366) b!2140848))

(assert (= (and b!2140848 res!924367) b!2140853))

(assert (= (and b!2140853 (not res!924356)) b!2140864))

(assert (= (and b!2140864 (not res!924363)) b!2140862))

(assert (= (and b!2140862 (not res!924359)) b!2140835))

(assert (= (and b!2140835 c!340551) b!2140828))

(assert (= (and b!2140835 (not c!340551)) b!2140829))

(assert (= (and b!2140835 (not res!924364)) b!2140868))

(assert (= (and b!2140854 condMapEmpty!13109) mapIsEmpty!13109))

(assert (= (and b!2140854 (not condMapEmpty!13109)) mapNonEmpty!13108))

(assert (= b!2140832 b!2140854))

(assert (= b!2140852 b!2140832))

(assert (= b!2140843 b!2140852))

(assert (= (and b!2140863 ((_ is LongMap!2747) (v!28893 (underlying!5690 (cache!3042 cacheFurthestNullable!114))))) b!2140843))

(assert (= b!2140869 b!2140863))

(assert (= (and b!2140841 ((_ is HashMap!2661) (cache!3042 cacheFurthestNullable!114))) b!2140869))

(assert (= b!2140841 b!2140859))

(assert (= start!207894 b!2140841))

(assert (= (and b!2140836 condMapEmpty!13110) mapIsEmpty!13110))

(assert (= (and b!2140836 (not condMapEmpty!13110)) mapNonEmpty!13109))

(assert (= b!2140844 b!2140836))

(assert (= b!2140866 b!2140844))

(assert (= b!2140860 b!2140866))

(assert (= (and b!2140857 ((_ is LongMap!2748) (v!28895 (underlying!5692 (cache!3043 cacheDown!1098))))) b!2140860))

(assert (= b!2140867 b!2140857))

(assert (= (and b!2140834 ((_ is HashMap!2662) (cache!3043 cacheDown!1098))) b!2140867))

(assert (= start!207894 b!2140834))

(assert (= (and b!2140840 condMapEmpty!13108) mapIsEmpty!13108))

(assert (= (and b!2140840 (not condMapEmpty!13108)) mapNonEmpty!13110))

(assert (= b!2140837 b!2140840))

(assert (= b!2140865 b!2140837))

(assert (= b!2140830 b!2140865))

(assert (= (and b!2140827 ((_ is LongMap!2746) (v!28891 (underlying!5688 (cache!3041 cacheUp!979))))) b!2140830))

(assert (= b!2140858 b!2140827))

(assert (= (and b!2140861 ((_ is HashMap!2660) (cache!3041 cacheUp!979))) b!2140858))

(assert (= start!207894 b!2140861))

(assert (= (and start!207894 condSetEmpty!16365) setIsEmpty!16366))

(assert (= (and start!207894 (not condSetEmpty!16365)) setNonEmpty!16366))

(assert (= setNonEmpty!16366 b!2140846))

(assert (= start!207894 b!2140842))

(assert (= (and b!2140855 condSetEmpty!16366) setIsEmpty!16365))

(assert (= (and b!2140855 (not condSetEmpty!16366)) setNonEmpty!16365))

(assert (= setNonEmpty!16365 b!2140851))

(assert (= b!2140855 b!2140833))

(assert (= b!2140831 b!2140855))

(assert (= (and start!207894 ((_ is Cons!24313) stack!8)) b!2140831))

(declare-fun m!2586703 () Bool)

(assert (=> b!2140856 m!2586703))

(declare-fun m!2586705 () Bool)

(assert (=> b!2140837 m!2586705))

(declare-fun m!2586707 () Bool)

(assert (=> b!2140837 m!2586707))

(declare-fun m!2586709 () Bool)

(assert (=> b!2140833 m!2586709))

(declare-fun m!2586711 () Bool)

(assert (=> b!2140859 m!2586711))

(declare-fun m!2586713 () Bool)

(assert (=> b!2140835 m!2586713))

(declare-fun m!2586715 () Bool)

(assert (=> b!2140835 m!2586715))

(declare-fun m!2586717 () Bool)

(assert (=> b!2140835 m!2586717))

(assert (=> b!2140835 m!2586717))

(declare-fun m!2586719 () Bool)

(assert (=> b!2140835 m!2586719))

(declare-fun m!2586721 () Bool)

(assert (=> b!2140845 m!2586721))

(declare-fun m!2586723 () Bool)

(assert (=> b!2140832 m!2586723))

(declare-fun m!2586725 () Bool)

(assert (=> b!2140832 m!2586725))

(declare-fun m!2586727 () Bool)

(assert (=> b!2140862 m!2586727))

(declare-fun m!2586729 () Bool)

(assert (=> b!2140844 m!2586729))

(declare-fun m!2586731 () Bool)

(assert (=> b!2140844 m!2586731))

(declare-fun m!2586733 () Bool)

(assert (=> setNonEmpty!16365 m!2586733))

(declare-fun m!2586735 () Bool)

(assert (=> setNonEmpty!16366 m!2586735))

(declare-fun m!2586737 () Bool)

(assert (=> start!207894 m!2586737))

(declare-fun m!2586739 () Bool)

(assert (=> start!207894 m!2586739))

(declare-fun m!2586741 () Bool)

(assert (=> start!207894 m!2586741))

(declare-fun m!2586743 () Bool)

(assert (=> start!207894 m!2586743))

(declare-fun m!2586745 () Bool)

(assert (=> mapNonEmpty!13109 m!2586745))

(declare-fun m!2586747 () Bool)

(assert (=> b!2140842 m!2586747))

(declare-fun m!2586749 () Bool)

(assert (=> b!2140868 m!2586749))

(declare-fun m!2586751 () Bool)

(assert (=> b!2140868 m!2586751))

(declare-fun m!2586753 () Bool)

(assert (=> b!2140868 m!2586753))

(declare-fun m!2586755 () Bool)

(assert (=> b!2140853 m!2586755))

(assert (=> b!2140853 m!2586753))

(declare-fun m!2586757 () Bool)

(assert (=> b!2140850 m!2586757))

(declare-fun m!2586759 () Bool)

(assert (=> b!2140848 m!2586759))

(declare-fun m!2586761 () Bool)

(assert (=> b!2140841 m!2586761))

(declare-fun m!2586763 () Bool)

(assert (=> mapNonEmpty!13110 m!2586763))

(declare-fun m!2586765 () Bool)

(assert (=> mapNonEmpty!13108 m!2586765))

(declare-fun m!2586767 () Bool)

(assert (=> b!2140831 m!2586767))

(declare-fun m!2586769 () Bool)

(assert (=> b!2140839 m!2586769))

(assert (=> b!2140870 m!2586753))

(declare-fun m!2586771 () Bool)

(assert (=> b!2140870 m!2586771))

(declare-fun m!2586773 () Bool)

(assert (=> b!2140855 m!2586773))

(declare-fun m!2586775 () Bool)

(assert (=> b!2140847 m!2586775))

(check-sat b_and!172515 b_and!172519 (not setNonEmpty!16365) (not b!2140842) (not b!2140859) (not b!2140848) (not b_next!63647) b_and!172513 (not b!2140840) (not b!2140839) b_and!172517 (not b!2140845) (not b!2140851) (not b!2140831) (not b!2140836) (not b_next!63641) (not mapNonEmpty!13108) (not b_next!63643) (not b!2140837) (not b!2140855) (not mapNonEmpty!13109) (not b!2140856) (not b!2140847) (not mapNonEmpty!13110) b_and!172521 (not setNonEmpty!16366) (not b!2140854) (not start!207894) (not b!2140850) (not b!2140853) (not b!2140841) (not b_next!63637) (not b_next!63645) (not b!2140844) (not b!2140835) (not b!2140846) (not b_next!63639) (not b!2140868) (not b!2140833) (not b!2140862) (not b!2140832) b_and!172523 (not b!2140870))
(check-sat b_and!172515 (not b_next!63641) b_and!172519 (not b_next!63643) b_and!172521 (not b_next!63647) b_and!172513 b_and!172517 (not b_next!63639) b_and!172523 (not b_next!63637) (not b_next!63645))
