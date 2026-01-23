; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207288 () Bool)

(assert start!207288)

(declare-fun b!2125139 () Bool)

(declare-fun b_free!61757 () Bool)

(declare-fun b_next!62461 () Bool)

(assert (=> b!2125139 (= b_free!61757 (not b_next!62461))))

(declare-fun tp!651445 () Bool)

(declare-fun b_and!171337 () Bool)

(assert (=> b!2125139 (= tp!651445 b_and!171337)))

(declare-fun b!2125154 () Bool)

(declare-fun b_free!61759 () Bool)

(declare-fun b_next!62463 () Bool)

(assert (=> b!2125154 (= b_free!61759 (not b_next!62463))))

(declare-fun tp!651448 () Bool)

(declare-fun b_and!171339 () Bool)

(assert (=> b!2125154 (= tp!651448 b_and!171339)))

(declare-fun b!2125145 () Bool)

(declare-fun b_free!61761 () Bool)

(declare-fun b_next!62465 () Bool)

(assert (=> b!2125145 (= b_free!61761 (not b_next!62465))))

(declare-fun tp!651455 () Bool)

(declare-fun b_and!171341 () Bool)

(assert (=> b!2125145 (= tp!651455 b_and!171341)))

(declare-fun b!2125148 () Bool)

(declare-fun b_free!61763 () Bool)

(declare-fun b_next!62467 () Bool)

(assert (=> b!2125148 (= b_free!61763 (not b_next!62467))))

(declare-fun tp!651446 () Bool)

(declare-fun b_and!171343 () Bool)

(assert (=> b!2125148 (= tp!651446 b_and!171343)))

(declare-fun b!2125143 () Bool)

(declare-fun b_free!61765 () Bool)

(declare-fun b_next!62469 () Bool)

(assert (=> b!2125143 (= b_free!61765 (not b_next!62469))))

(declare-fun tp!651447 () Bool)

(declare-fun b_and!171345 () Bool)

(assert (=> b!2125143 (= tp!651447 b_and!171345)))

(declare-fun b!2125160 () Bool)

(declare-fun b_free!61767 () Bool)

(declare-fun b_next!62471 () Bool)

(assert (=> b!2125160 (= b_free!61767 (not b_next!62471))))

(declare-fun tp!651466 () Bool)

(declare-fun b_and!171347 () Bool)

(assert (=> b!2125160 (= tp!651466 b_and!171347)))

(declare-fun b!2125203 () Bool)

(declare-fun e!1354314 () Bool)

(declare-fun mapRes!12115 () Bool)

(assert (=> b!2125203 (= e!1354314 mapRes!12115)))

(declare-fun condMapEmpty!12115 () Bool)

(declare-datatypes ((C!11496 0))(
  ( (C!11497 (val!6734 Int)) )
))
(declare-datatypes ((Regex!5675 0))(
  ( (ElementMatch!5675 (c!339936 C!11496)) (Concat!9977 (regOne!11862 Regex!5675) (regTwo!11862 Regex!5675)) (EmptyExpr!5675) (Star!5675 (reg!6004 Regex!5675)) (EmptyLang!5675) (Union!5675 (regOne!11863 Regex!5675) (regTwo!11863 Regex!5675)) )
))
(declare-datatypes ((List!23841 0))(
  ( (Nil!23757) (Cons!23757 (h!29158 Regex!5675) (t!196365 List!23841)) )
))
(declare-datatypes ((Context!2490 0))(
  ( (Context!2491 (exprs!1745 List!23841)) )
))
(declare-datatypes ((tuple3!2958 0))(
  ( (tuple3!2959 (_1!13649 Regex!5675) (_2!13649 Context!2490) (_3!1949 C!11496)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23400 0))(
  ( (tuple2!23401 (_1!13650 tuple3!2958) (_2!13650 (InoxSet Context!2490))) )
))
(declare-datatypes ((tuple2!23402 0))(
  ( (tuple2!23403 (_1!13651 Context!2490) (_2!13651 C!11496)) )
))
(declare-datatypes ((tuple2!23404 0))(
  ( (tuple2!23405 (_1!13652 tuple2!23402) (_2!13652 (InoxSet Context!2490))) )
))
(declare-datatypes ((List!23842 0))(
  ( (Nil!23758) (Cons!23758 (h!29159 tuple2!23404) (t!196366 List!23842)) )
))
(declare-datatypes ((List!23843 0))(
  ( (Nil!23759) (Cons!23759 (h!29160 tuple2!23400) (t!196367 List!23843)) )
))
(declare-datatypes ((array!8507 0))(
  ( (array!8508 (arr!3771 (Array (_ BitVec 32) (_ BitVec 64))) (size!18572 (_ BitVec 32))) )
))
(declare-datatypes ((array!8509 0))(
  ( (array!8510 (arr!3772 (Array (_ BitVec 32) List!23843)) (size!18573 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4950 0))(
  ( (LongMapFixedSize!4951 (defaultEntry!2840 Int) (mask!6628 (_ BitVec 32)) (extraKeys!2723 (_ BitVec 32)) (zeroValue!2733 List!23843) (minValue!2733 List!23843) (_size!5001 (_ BitVec 32)) (_keys!2772 array!8507) (_values!2755 array!8509) (_vacant!2536 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9725 0))(
  ( (Cell!9726 (v!28287 LongMapFixedSize!4950)) )
))
(declare-datatypes ((MutLongMap!2475 0))(
  ( (LongMap!2475 (underlying!5145 Cell!9725)) (MutLongMapExt!2474 (__x!15601 Int)) )
))
(declare-datatypes ((Cell!9727 0))(
  ( (Cell!9728 (v!28288 MutLongMap!2475)) )
))
(declare-datatypes ((List!23844 0))(
  ( (Nil!23760) (Cons!23760 (h!29161 C!11496) (t!196368 List!23844)) )
))
(declare-datatypes ((IArray!15631 0))(
  ( (IArray!15632 (innerList!7873 List!23844)) )
))
(declare-datatypes ((Hashable!2389 0))(
  ( (HashableExt!2388 (__x!15602 Int)) )
))
(declare-datatypes ((Hashable!2390 0))(
  ( (HashableExt!2389 (__x!15603 Int)) )
))
(declare-datatypes ((array!8511 0))(
  ( (array!8512 (arr!3773 (Array (_ BitVec 32) List!23842)) (size!18574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4952 0))(
  ( (LongMapFixedSize!4953 (defaultEntry!2841 Int) (mask!6629 (_ BitVec 32)) (extraKeys!2724 (_ BitVec 32)) (zeroValue!2734 List!23842) (minValue!2734 List!23842) (_size!5002 (_ BitVec 32)) (_keys!2773 array!8507) (_values!2756 array!8511) (_vacant!2537 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9729 0))(
  ( (Cell!9730 (v!28289 LongMapFixedSize!4952)) )
))
(declare-datatypes ((MutLongMap!2476 0))(
  ( (LongMap!2476 (underlying!5146 Cell!9729)) (MutLongMapExt!2475 (__x!15604 Int)) )
))
(declare-datatypes ((Cell!9731 0))(
  ( (Cell!9732 (v!28290 MutLongMap!2476)) )
))
(declare-datatypes ((MutableMap!2389 0))(
  ( (MutableMapExt!2388 (__x!15605 Int)) (HashMap!2389 (underlying!5147 Cell!9731) (hashF!4312 Hashable!2390) (_size!5003 (_ BitVec 32)) (defaultValue!2551 Int)) )
))
(declare-datatypes ((CacheUp!1658 0))(
  ( (CacheUp!1659 (cache!2770 MutableMap!2389)) )
))
(declare-datatypes ((Conc!7813 0))(
  ( (Node!7813 (left!18371 Conc!7813) (right!18701 Conc!7813) (csize!15856 Int) (cheight!8024 Int)) (Leaf!11418 (xs!10755 IArray!15631) (csize!15857 Int)) (Empty!7813) )
))
(declare-datatypes ((BalanceConc!15388 0))(
  ( (BalanceConc!15389 (c!339937 Conc!7813)) )
))
(declare-datatypes ((StackFrame!62 0))(
  ( (StackFrame!63 (z!5748 (InoxSet Context!2490)) (from!2639 Int) (lastNullablePos!326 Int) (res!919714 Int) (totalInput!2931 BalanceConc!15388)) )
))
(declare-datatypes ((List!23845 0))(
  ( (Nil!23761) (Cons!23761 (h!29162 StackFrame!62) (t!196369 List!23845)) )
))
(declare-datatypes ((tuple2!23406 0))(
  ( (tuple2!23407 (_1!13653 Int) (_2!13653 List!23845)) )
))
(declare-datatypes ((MutableMap!2390 0))(
  ( (MutableMapExt!2389 (__x!15606 Int)) (HashMap!2390 (underlying!5148 Cell!9727) (hashF!4313 Hashable!2389) (_size!5004 (_ BitVec 32)) (defaultValue!2552 Int)) )
))
(declare-datatypes ((CacheDown!1644 0))(
  ( (CacheDown!1645 (cache!2771 MutableMap!2390)) )
))
(declare-datatypes ((tuple3!2960 0))(
  ( (tuple3!2961 (_1!13654 tuple2!23406) (_2!13654 CacheUp!1658) (_3!1950 CacheDown!1644)) )
))
(declare-fun lt!795553 () tuple3!2960)

(declare-fun mapDefault!12115 () List!23843)

(assert (=> b!2125203 (= condMapEmpty!12115 (= (arr!3772 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553)))))))) ((as const (Array (_ BitVec 32) List!23843)) mapDefault!12115)))))

(declare-fun b!2125204 () Bool)

(declare-fun e!1354317 () Bool)

(declare-fun e!1354315 () Bool)

(declare-fun lt!795560 () MutLongMap!2475)

(get-info :version)

(assert (=> b!2125204 (= e!1354317 (and e!1354315 ((_ is LongMap!2475) lt!795560)))))

(assert (=> b!2125204 (= lt!795560 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553)))))))

(declare-fun b!2125205 () Bool)

(declare-fun e!1354312 () Bool)

(declare-fun e!1354308 () Bool)

(assert (=> b!2125205 (= e!1354312 e!1354308)))

(declare-fun mapIsEmpty!12115 () Bool)

(declare-fun mapRes!12116 () Bool)

(assert (=> mapIsEmpty!12115 mapRes!12116))

(declare-fun b!2125206 () Bool)

(declare-fun e!1354316 () Bool)

(declare-fun e!1354318 () Bool)

(assert (=> b!2125206 (= e!1354316 e!1354318)))

(declare-fun b!2125207 () Bool)

(declare-fun e!1354319 () Bool)

(declare-fun e!1354321 () Bool)

(assert (=> b!2125207 (= e!1354319 e!1354321)))

(declare-fun setIsEmpty!15263 () Bool)

(declare-fun setRes!15263 () Bool)

(assert (=> setIsEmpty!15263 setRes!15263))

(declare-fun b!2125208 () Bool)

(declare-fun e!1354307 () Bool)

(assert (=> b!2125208 (= e!1354308 e!1354307)))

(declare-fun b!2125209 () Bool)

(declare-fun e!1354322 () Bool)

(declare-fun e!1354309 () Bool)

(assert (=> b!2125209 (= e!1354322 e!1354309)))

(declare-fun b!2125210 () Bool)

(assert (=> b!2125210 (= e!1354315 e!1354319)))

(declare-fun b!2125156 () Bool)

(declare-fun e!1354311 () Bool)

(assert (=> b!2125156 (and e!1354322 e!1354316 e!1354311)))

(declare-fun mapNonEmpty!12115 () Bool)

(assert (=> mapNonEmpty!12115 (= mapRes!12115 true)))

(declare-fun mapKey!12116 () (_ BitVec 32))

(declare-fun mapRest!12116 () (Array (_ BitVec 32) List!23843))

(declare-fun mapValue!12116 () List!23843)

(assert (=> mapNonEmpty!12115 (= (arr!3772 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553)))))))) (store mapRest!12116 mapKey!12116 mapValue!12116))))

(declare-fun b!2125211 () Bool)

(declare-fun e!1354313 () Bool)

(assert (=> b!2125211 (= e!1354311 e!1354313)))

(declare-fun b!2125212 () Bool)

(declare-fun e!1354320 () Bool)

(declare-fun lt!795559 () MutLongMap!2476)

(assert (=> b!2125212 (= e!1354320 (and e!1354312 ((_ is LongMap!2476) lt!795559)))))

(assert (=> b!2125212 (= lt!795559 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553)))))))

(declare-fun mapIsEmpty!12116 () Bool)

(assert (=> mapIsEmpty!12116 mapRes!12115))

(declare-fun setNonEmpty!15263 () Bool)

(assert (=> setNonEmpty!15263 (= setRes!15263 true)))

(declare-fun setElem!15263 () Context!2490)

(declare-fun setRest!15263 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15263 (= (z!5748 (h!29162 (_2!13653 (_1!13654 lt!795553)))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15263 true) setRest!15263))))

(declare-fun b!2125213 () Bool)

(assert (=> b!2125213 (= e!1354321 e!1354314)))

(declare-fun b!2125214 () Bool)

(declare-fun e!1354310 () Bool)

(assert (=> b!2125214 (= e!1354310 mapRes!12116)))

(declare-fun condMapEmpty!12116 () Bool)

(declare-fun mapDefault!12116 () List!23842)

(assert (=> b!2125214 (= condMapEmpty!12116 (= (arr!3773 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553)))))))) ((as const (Array (_ BitVec 32) List!23842)) mapDefault!12116)))))

(declare-fun b!2125215 () Bool)

(assert (=> b!2125215 (= e!1354309 setRes!15263)))

(declare-fun condSetEmpty!15263 () Bool)

(assert (=> b!2125215 (= condSetEmpty!15263 (= (z!5748 (h!29162 (_2!13653 (_1!13654 lt!795553)))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun mapNonEmpty!12116 () Bool)

(assert (=> mapNonEmpty!12116 (= mapRes!12116 true)))

(declare-fun mapRest!12115 () (Array (_ BitVec 32) List!23842))

(declare-fun mapValue!12115 () List!23842)

(declare-fun mapKey!12115 () (_ BitVec 32))

(assert (=> mapNonEmpty!12116 (= (arr!3773 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553)))))))) (store mapRest!12115 mapKey!12115 mapValue!12115))))

(declare-fun b!2125216 () Bool)

(assert (=> b!2125216 (= e!1354318 e!1354320)))

(declare-fun b!2125217 () Bool)

(assert (=> b!2125217 (= e!1354313 e!1354317)))

(declare-fun b!2125218 () Bool)

(assert (=> b!2125218 (= e!1354307 e!1354310)))

(assert (= (and b!2125215 condSetEmpty!15263) setIsEmpty!15263))

(assert (= (and b!2125215 (not condSetEmpty!15263)) setNonEmpty!15263))

(assert (= b!2125209 b!2125215))

(assert (= (and b!2125156 ((_ is Cons!23761) (_2!13653 (_1!13654 lt!795553)))) b!2125209))

(assert (= (and b!2125214 condMapEmpty!12116) mapIsEmpty!12115))

(assert (= (and b!2125214 (not condMapEmpty!12116)) mapNonEmpty!12116))

(assert (= b!2125218 b!2125214))

(assert (= b!2125208 b!2125218))

(assert (= b!2125205 b!2125208))

(assert (= (and b!2125212 ((_ is LongMap!2476) (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553)))))) b!2125205))

(assert (= b!2125216 b!2125212))

(assert (= (and b!2125206 ((_ is HashMap!2389) (cache!2770 (_2!13654 lt!795553)))) b!2125216))

(assert (= b!2125156 b!2125206))

(assert (= (and b!2125203 condMapEmpty!12115) mapIsEmpty!12116))

(assert (= (and b!2125203 (not condMapEmpty!12115)) mapNonEmpty!12115))

(assert (= b!2125213 b!2125203))

(assert (= b!2125207 b!2125213))

(assert (= b!2125210 b!2125207))

(assert (= (and b!2125204 ((_ is LongMap!2475) (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553)))))) b!2125210))

(assert (= b!2125217 b!2125204))

(assert (= (and b!2125211 ((_ is HashMap!2390) (cache!2771 (_3!1950 lt!795553)))) b!2125217))

(assert (= b!2125156 b!2125211))

(declare-fun order!14751 () Int)

(declare-fun order!14749 () Int)

(declare-fun lambda!78789 () Int)

(declare-fun dynLambda!11352 (Int Int) Int)

(declare-fun dynLambda!11353 (Int Int) Int)

(assert (=> b!2125217 (< (dynLambda!11352 order!14749 (defaultValue!2552 (cache!2771 (_3!1950 lt!795553)))) (dynLambda!11353 order!14751 lambda!78789))))

(declare-fun order!14753 () Int)

(declare-fun dynLambda!11354 (Int Int) Int)

(assert (=> b!2125218 (< (dynLambda!11354 order!14753 (defaultEntry!2841 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553)))))))) (dynLambda!11353 order!14751 lambda!78789))))

(declare-fun order!14755 () Int)

(declare-fun dynLambda!11355 (Int Int) Int)

(assert (=> b!2125213 (< (dynLambda!11355 order!14755 (defaultEntry!2840 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553)))))))) (dynLambda!11353 order!14751 lambda!78789))))

(declare-fun order!14757 () Int)

(declare-fun dynLambda!11356 (Int Int) Int)

(assert (=> b!2125216 (< (dynLambda!11356 order!14757 (defaultValue!2551 (cache!2770 (_2!13654 lt!795553)))) (dynLambda!11353 order!14751 lambda!78789))))

(declare-fun m!2577488 () Bool)

(assert (=> mapNonEmpty!12115 m!2577488))

(declare-fun m!2577490 () Bool)

(assert (=> mapNonEmpty!12116 m!2577490))

(declare-fun lambda!78790 () Int)

(assert (=> b!2125156 (not (= lambda!78790 lambda!78789))))

(assert (=> b!2125156 true))

(declare-fun b!2125137 () Bool)

(declare-fun res!919713 () Bool)

(declare-fun e!1354274 () Bool)

(assert (=> b!2125137 (=> (not res!919713) (not e!1354274))))

(declare-datatypes ((Hashable!2391 0))(
  ( (HashableExt!2390 (__x!15607 Int)) )
))
(declare-datatypes ((tuple3!2962 0))(
  ( (tuple3!2963 (_1!13655 (InoxSet Context!2490)) (_2!13655 Int) (_3!1951 Int)) )
))
(declare-datatypes ((tuple2!23408 0))(
  ( (tuple2!23409 (_1!13656 tuple3!2962) (_2!13656 Int)) )
))
(declare-datatypes ((List!23846 0))(
  ( (Nil!23762) (Cons!23762 (h!29163 tuple2!23408) (t!196370 List!23846)) )
))
(declare-datatypes ((array!8513 0))(
  ( (array!8514 (arr!3774 (Array (_ BitVec 32) List!23846)) (size!18575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4954 0))(
  ( (LongMapFixedSize!4955 (defaultEntry!2842 Int) (mask!6630 (_ BitVec 32)) (extraKeys!2725 (_ BitVec 32)) (zeroValue!2735 List!23846) (minValue!2735 List!23846) (_size!5005 (_ BitVec 32)) (_keys!2774 array!8507) (_values!2757 array!8513) (_vacant!2538 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9733 0))(
  ( (Cell!9734 (v!28291 LongMapFixedSize!4954)) )
))
(declare-datatypes ((MutLongMap!2477 0))(
  ( (LongMap!2477 (underlying!5149 Cell!9733)) (MutLongMapExt!2476 (__x!15608 Int)) )
))
(declare-datatypes ((Cell!9735 0))(
  ( (Cell!9736 (v!28292 MutLongMap!2477)) )
))
(declare-datatypes ((MutableMap!2391 0))(
  ( (MutableMapExt!2390 (__x!15609 Int)) (HashMap!2391 (underlying!5150 Cell!9735) (hashF!4314 Hashable!2391) (_size!5006 (_ BitVec 32)) (defaultValue!2553 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!600 0))(
  ( (CacheFurthestNullable!601 (cache!2772 MutableMap!2391) (totalInput!2932 BalanceConc!15388)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!600)

(declare-fun valid!1946 (CacheFurthestNullable!600) Bool)

(assert (=> b!2125137 (= res!919713 (valid!1946 cacheFurthestNullable!130))))

(declare-fun b!2125138 () Bool)

(declare-fun e!1354270 () Bool)

(declare-fun e!1354246 () Bool)

(assert (=> b!2125138 (= e!1354270 e!1354246)))

(declare-fun e!1354271 () Bool)

(declare-fun e!1354256 () Bool)

(assert (=> b!2125139 (= e!1354271 (and e!1354256 tp!651445))))

(declare-fun b!2125140 () Bool)

(declare-fun e!1354262 () Bool)

(assert (=> b!2125140 (= e!1354262 e!1354271)))

(declare-fun b!2125141 () Bool)

(declare-fun e!1354247 () Bool)

(declare-fun tp!651458 () Bool)

(declare-fun mapRes!12108 () Bool)

(assert (=> b!2125141 (= e!1354247 (and tp!651458 mapRes!12108))))

(declare-fun condMapEmpty!12110 () Bool)

(declare-fun mapDefault!12108 () List!23846)

(assert (=> b!2125141 (= condMapEmpty!12110 (= (arr!3774 (_values!2757 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23846)) mapDefault!12108)))))

(declare-fun mapIsEmpty!12108 () Bool)

(declare-fun mapRes!12110 () Bool)

(assert (=> mapIsEmpty!12108 mapRes!12110))

(declare-fun b!2125142 () Bool)

(declare-fun e!1354248 () Bool)

(declare-fun tp!651453 () Bool)

(assert (=> b!2125142 (= e!1354248 tp!651453)))

(declare-fun tp!651461 () Bool)

(declare-fun tp!651452 () Bool)

(declare-fun e!1354263 () Bool)

(declare-fun cacheDown!1110 () CacheDown!1644)

(declare-fun array_inv!2696 (array!8507) Bool)

(declare-fun array_inv!2697 (array!8509) Bool)

(assert (=> b!2125143 (= e!1354246 (and tp!651447 tp!651452 tp!651461 (array_inv!2696 (_keys!2772 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) (array_inv!2697 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) e!1354263))))

(declare-fun setIsEmpty!15260 () Bool)

(declare-fun setRes!15260 () Bool)

(assert (=> setIsEmpty!15260 setRes!15260))

(declare-fun b!2125144 () Bool)

(declare-fun e!1354273 () Bool)

(declare-fun tp!651464 () Bool)

(declare-fun inv!31353 (Conc!7813) Bool)

(assert (=> b!2125144 (= e!1354273 (and (inv!31353 (c!339937 (totalInput!2932 cacheFurthestNullable!130))) tp!651464))))

(declare-fun e!1354249 () Bool)

(declare-fun e!1354268 () Bool)

(assert (=> b!2125145 (= e!1354249 (and e!1354268 tp!651455))))

(declare-fun mapNonEmpty!12108 () Bool)

(declare-fun tp!651454 () Bool)

(declare-fun tp!651463 () Bool)

(assert (=> mapNonEmpty!12108 (= mapRes!12110 (and tp!651454 tp!651463))))

(declare-fun mapRest!12109 () (Array (_ BitVec 32) List!23843))

(declare-fun mapValue!12110 () List!23843)

(declare-fun mapKey!12108 () (_ BitVec 32))

(assert (=> mapNonEmpty!12108 (= (arr!3772 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) (store mapRest!12109 mapKey!12108 mapValue!12110))))

(declare-fun b!2125146 () Bool)

(declare-fun e!1354260 () Bool)

(declare-fun e!1354267 () Bool)

(declare-fun lt!795549 () MutLongMap!2475)

(assert (=> b!2125146 (= e!1354260 (and e!1354267 ((_ is LongMap!2475) lt!795549)))))

(assert (=> b!2125146 (= lt!795549 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))

(declare-fun b!2125147 () Bool)

(declare-fun e!1354254 () Bool)

(declare-fun e!1354251 () Bool)

(assert (=> b!2125147 (= e!1354254 e!1354251)))

(declare-fun tp!651459 () Bool)

(declare-fun e!1354264 () Bool)

(declare-fun tp!651469 () Bool)

(declare-fun cacheUp!991 () CacheUp!1658)

(declare-fun e!1354257 () Bool)

(declare-fun array_inv!2698 (array!8511) Bool)

(assert (=> b!2125148 (= e!1354264 (and tp!651446 tp!651469 tp!651459 (array_inv!2696 (_keys!2773 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) (array_inv!2698 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) e!1354257))))

(declare-fun b!2125149 () Bool)

(declare-fun e!1354253 () Int)

(assert (=> b!2125149 (= e!1354253 (- 1))))

(declare-fun b!2125150 () Bool)

(assert (=> b!2125150 (= e!1354267 e!1354270)))

(declare-fun mapNonEmpty!12109 () Bool)

(declare-fun mapRes!12109 () Bool)

(declare-fun tp!651462 () Bool)

(declare-fun tp!651444 () Bool)

(assert (=> mapNonEmpty!12109 (= mapRes!12109 (and tp!651462 tp!651444))))

(declare-fun mapRest!12110 () (Array (_ BitVec 32) List!23842))

(declare-fun mapKey!12110 () (_ BitVec 32))

(declare-fun mapValue!12108 () List!23842)

(assert (=> mapNonEmpty!12109 (= (arr!3773 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) (store mapRest!12110 mapKey!12110 mapValue!12108))))

(declare-fun b!2125151 () Bool)

(declare-fun e!1354258 () Bool)

(declare-fun input!5507 () BalanceConc!15388)

(declare-fun tp!651460 () Bool)

(assert (=> b!2125151 (= e!1354258 (and (inv!31353 (c!339937 input!5507)) tp!651460))))

(declare-fun b!2125152 () Bool)

(declare-fun e!1354272 () Bool)

(assert (=> b!2125152 (= e!1354272 e!1354254)))

(declare-fun b!2125153 () Bool)

(declare-fun e!1354245 () Bool)

(declare-fun inv!31354 (BalanceConc!15388) Bool)

(assert (=> b!2125153 (= e!1354245 (and e!1354249 (inv!31354 (totalInput!2932 cacheFurthestNullable!130)) e!1354273))))

(declare-fun e!1354269 () Bool)

(assert (=> b!2125154 (= e!1354269 (and e!1354260 tp!651448))))

(declare-fun b!2125155 () Bool)

(declare-fun res!919710 () Bool)

(assert (=> b!2125155 (=> (not res!919710) (not e!1354274))))

(declare-fun valid!1947 (CacheDown!1644) Bool)

(assert (=> b!2125155 (= res!919710 (valid!1947 cacheDown!1110))))

(declare-fun forall!4876 (List!23845 Int) Bool)

(assert (=> b!2125156 (= e!1354274 (not (forall!4876 (_2!13653 (_1!13654 lt!795553)) lambda!78790)))))

(assert (=> b!2125156 (forall!4876 (_2!13653 (_1!13654 lt!795553)) lambda!78789)))

(declare-fun lt!795554 () Int)

(declare-fun z!3883 () (InoxSet Context!2490))

(declare-fun lt!795550 () Int)

(declare-fun totalInput!886 () BalanceConc!15388)

(declare-fun furthestNullablePositionStackMem!14 ((InoxSet Context!2490) Int BalanceConc!15388 Int Int List!23845 CacheUp!1658 CacheDown!1644 CacheFurthestNullable!600) tuple3!2960)

(assert (=> b!2125156 (= lt!795553 (furthestNullablePositionStackMem!14 z!3883 lt!795550 totalInput!886 lt!795554 e!1354253 Nil!23761 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339935 () Bool)

(declare-fun nullableZipper!69 ((InoxSet Context!2490)) Bool)

(assert (=> b!2125156 (= c!339935 (nullableZipper!69 z!3883))))

(declare-fun size!18576 (BalanceConc!15388) Int)

(assert (=> b!2125156 (= lt!795550 (- lt!795554 (size!18576 input!5507)))))

(assert (=> b!2125156 (= lt!795554 (size!18576 totalInput!886))))

(declare-fun setElem!15260 () Context!2490)

(declare-fun tp!651456 () Bool)

(declare-fun setNonEmpty!15260 () Bool)

(declare-fun inv!31355 (Context!2490) Bool)

(assert (=> setNonEmpty!15260 (= setRes!15260 (and tp!651456 (inv!31355 setElem!15260) e!1354248))))

(declare-fun setRest!15260 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15260 (= z!3883 ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15260 true) setRest!15260))))

(declare-fun b!2125157 () Bool)

(declare-fun tp!651467 () Bool)

(assert (=> b!2125157 (= e!1354257 (and tp!651467 mapRes!12109))))

(declare-fun condMapEmpty!12109 () Bool)

(declare-fun mapDefault!12110 () List!23842)

(assert (=> b!2125157 (= condMapEmpty!12109 (= (arr!3773 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23842)) mapDefault!12110)))))

(declare-fun res!919709 () Bool)

(assert (=> start!207288 (=> (not res!919709) (not e!1354274))))

(declare-fun isSuffix!623 (List!23844 List!23844) Bool)

(declare-fun list!9537 (BalanceConc!15388) List!23844)

(assert (=> start!207288 (= res!919709 (isSuffix!623 (list!9537 input!5507) (list!9537 totalInput!886)))))

(assert (=> start!207288 e!1354274))

(declare-fun inv!31356 (CacheFurthestNullable!600) Bool)

(assert (=> start!207288 (and (inv!31356 cacheFurthestNullable!130) e!1354245)))

(declare-fun condSetEmpty!15260 () Bool)

(assert (=> start!207288 (= condSetEmpty!15260 (= z!3883 ((as const (Array Context!2490 Bool)) false)))))

(assert (=> start!207288 setRes!15260))

(assert (=> start!207288 (and (inv!31354 input!5507) e!1354258)))

(declare-fun e!1354265 () Bool)

(declare-fun inv!31357 (CacheDown!1644) Bool)

(assert (=> start!207288 (and (inv!31357 cacheDown!1110) e!1354265)))

(declare-fun inv!31358 (CacheUp!1658) Bool)

(assert (=> start!207288 (and (inv!31358 cacheUp!991) e!1354262)))

(declare-fun e!1354266 () Bool)

(assert (=> start!207288 (and (inv!31354 totalInput!886) e!1354266)))

(declare-fun b!2125158 () Bool)

(declare-fun e!1354250 () Bool)

(declare-fun lt!795551 () MutLongMap!2476)

(assert (=> b!2125158 (= e!1354256 (and e!1354250 ((_ is LongMap!2476) lt!795551)))))

(assert (=> b!2125158 (= lt!795551 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))

(declare-fun b!2125159 () Bool)

(declare-fun res!919712 () Bool)

(assert (=> b!2125159 (=> (not res!919712) (not e!1354274))))

(declare-fun valid!1948 (CacheUp!1658) Bool)

(assert (=> b!2125159 (= res!919712 (valid!1948 cacheUp!991))))

(declare-fun tp!651457 () Bool)

(declare-fun tp!651450 () Bool)

(declare-fun array_inv!2699 (array!8513) Bool)

(assert (=> b!2125160 (= e!1354251 (and tp!651466 tp!651450 tp!651457 (array_inv!2696 (_keys!2774 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) (array_inv!2699 (_values!2757 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) e!1354247))))

(declare-fun b!2125161 () Bool)

(assert (=> b!2125161 (= e!1354265 e!1354269)))

(declare-fun b!2125162 () Bool)

(declare-fun tp!651468 () Bool)

(assert (=> b!2125162 (= e!1354266 (and (inv!31353 (c!339937 totalInput!886)) tp!651468))))

(declare-fun mapIsEmpty!12109 () Bool)

(assert (=> mapIsEmpty!12109 mapRes!12109))

(declare-fun mapNonEmpty!12110 () Bool)

(declare-fun tp!651451 () Bool)

(declare-fun tp!651449 () Bool)

(assert (=> mapNonEmpty!12110 (= mapRes!12108 (and tp!651451 tp!651449))))

(declare-fun mapKey!12109 () (_ BitVec 32))

(declare-fun mapRest!12108 () (Array (_ BitVec 32) List!23846))

(declare-fun mapValue!12109 () List!23846)

(assert (=> mapNonEmpty!12110 (= (arr!3774 (_values!2757 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) (store mapRest!12108 mapKey!12109 mapValue!12109))))

(declare-fun b!2125163 () Bool)

(declare-fun e!1354259 () Bool)

(assert (=> b!2125163 (= e!1354250 e!1354259)))

(declare-fun b!2125164 () Bool)

(assert (=> b!2125164 (= e!1354253 (- lt!795550 1))))

(declare-fun b!2125165 () Bool)

(declare-fun lt!795552 () MutLongMap!2477)

(assert (=> b!2125165 (= e!1354268 (and e!1354272 ((_ is LongMap!2477) lt!795552)))))

(assert (=> b!2125165 (= lt!795552 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))

(declare-fun mapIsEmpty!12110 () Bool)

(assert (=> mapIsEmpty!12110 mapRes!12108))

(declare-fun b!2125166 () Bool)

(assert (=> b!2125166 (= e!1354259 e!1354264)))

(declare-fun b!2125167 () Bool)

(declare-fun res!919711 () Bool)

(assert (=> b!2125167 (=> (not res!919711) (not e!1354274))))

(assert (=> b!2125167 (= res!919711 (= (totalInput!2932 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2125168 () Bool)

(declare-fun tp!651465 () Bool)

(assert (=> b!2125168 (= e!1354263 (and tp!651465 mapRes!12110))))

(declare-fun condMapEmpty!12108 () Bool)

(declare-fun mapDefault!12109 () List!23843)

(assert (=> b!2125168 (= condMapEmpty!12108 (= (arr!3772 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23843)) mapDefault!12109)))))

(assert (= (and start!207288 res!919709) b!2125159))

(assert (= (and b!2125159 res!919712) b!2125155))

(assert (= (and b!2125155 res!919710) b!2125137))

(assert (= (and b!2125137 res!919713) b!2125167))

(assert (= (and b!2125167 res!919711) b!2125156))

(assert (= (and b!2125156 c!339935) b!2125164))

(assert (= (and b!2125156 (not c!339935)) b!2125149))

(assert (= (and b!2125141 condMapEmpty!12110) mapIsEmpty!12110))

(assert (= (and b!2125141 (not condMapEmpty!12110)) mapNonEmpty!12110))

(assert (= b!2125160 b!2125141))

(assert (= b!2125147 b!2125160))

(assert (= b!2125152 b!2125147))

(assert (= (and b!2125165 ((_ is LongMap!2477) (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))) b!2125152))

(assert (= b!2125145 b!2125165))

(assert (= (and b!2125153 ((_ is HashMap!2391) (cache!2772 cacheFurthestNullable!130))) b!2125145))

(assert (= b!2125153 b!2125144))

(assert (= start!207288 b!2125153))

(assert (= (and start!207288 condSetEmpty!15260) setIsEmpty!15260))

(assert (= (and start!207288 (not condSetEmpty!15260)) setNonEmpty!15260))

(assert (= setNonEmpty!15260 b!2125142))

(assert (= start!207288 b!2125151))

(assert (= (and b!2125168 condMapEmpty!12108) mapIsEmpty!12108))

(assert (= (and b!2125168 (not condMapEmpty!12108)) mapNonEmpty!12108))

(assert (= b!2125143 b!2125168))

(assert (= b!2125138 b!2125143))

(assert (= b!2125150 b!2125138))

(assert (= (and b!2125146 ((_ is LongMap!2475) (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))) b!2125150))

(assert (= b!2125154 b!2125146))

(assert (= (and b!2125161 ((_ is HashMap!2390) (cache!2771 cacheDown!1110))) b!2125154))

(assert (= start!207288 b!2125161))

(assert (= (and b!2125157 condMapEmpty!12109) mapIsEmpty!12109))

(assert (= (and b!2125157 (not condMapEmpty!12109)) mapNonEmpty!12109))

(assert (= b!2125148 b!2125157))

(assert (= b!2125166 b!2125148))

(assert (= b!2125163 b!2125166))

(assert (= (and b!2125158 ((_ is LongMap!2476) (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))) b!2125163))

(assert (= b!2125139 b!2125158))

(assert (= (and b!2125140 ((_ is HashMap!2389) (cache!2770 cacheUp!991))) b!2125139))

(assert (= start!207288 b!2125140))

(assert (= start!207288 b!2125162))

(declare-fun m!2577492 () Bool)

(assert (=> mapNonEmpty!12110 m!2577492))

(declare-fun m!2577494 () Bool)

(assert (=> b!2125137 m!2577494))

(declare-fun m!2577496 () Bool)

(assert (=> b!2125151 m!2577496))

(declare-fun m!2577498 () Bool)

(assert (=> b!2125143 m!2577498))

(declare-fun m!2577500 () Bool)

(assert (=> b!2125143 m!2577500))

(declare-fun m!2577502 () Bool)

(assert (=> b!2125144 m!2577502))

(declare-fun m!2577504 () Bool)

(assert (=> setNonEmpty!15260 m!2577504))

(declare-fun m!2577506 () Bool)

(assert (=> b!2125155 m!2577506))

(declare-fun m!2577508 () Bool)

(assert (=> b!2125153 m!2577508))

(declare-fun m!2577510 () Bool)

(assert (=> b!2125156 m!2577510))

(declare-fun m!2577512 () Bool)

(assert (=> b!2125156 m!2577512))

(declare-fun m!2577514 () Bool)

(assert (=> b!2125156 m!2577514))

(declare-fun m!2577516 () Bool)

(assert (=> b!2125156 m!2577516))

(declare-fun m!2577518 () Bool)

(assert (=> b!2125156 m!2577518))

(declare-fun m!2577520 () Bool)

(assert (=> b!2125156 m!2577520))

(declare-fun m!2577522 () Bool)

(assert (=> b!2125160 m!2577522))

(declare-fun m!2577524 () Bool)

(assert (=> b!2125160 m!2577524))

(declare-fun m!2577526 () Bool)

(assert (=> mapNonEmpty!12108 m!2577526))

(declare-fun m!2577528 () Bool)

(assert (=> b!2125159 m!2577528))

(declare-fun m!2577530 () Bool)

(assert (=> b!2125162 m!2577530))

(declare-fun m!2577532 () Bool)

(assert (=> b!2125148 m!2577532))

(declare-fun m!2577534 () Bool)

(assert (=> b!2125148 m!2577534))

(declare-fun m!2577536 () Bool)

(assert (=> mapNonEmpty!12109 m!2577536))

(declare-fun m!2577538 () Bool)

(assert (=> start!207288 m!2577538))

(declare-fun m!2577540 () Bool)

(assert (=> start!207288 m!2577540))

(declare-fun m!2577542 () Bool)

(assert (=> start!207288 m!2577542))

(declare-fun m!2577544 () Bool)

(assert (=> start!207288 m!2577544))

(declare-fun m!2577546 () Bool)

(assert (=> start!207288 m!2577546))

(declare-fun m!2577548 () Bool)

(assert (=> start!207288 m!2577548))

(assert (=> start!207288 m!2577544))

(assert (=> start!207288 m!2577538))

(declare-fun m!2577550 () Bool)

(assert (=> start!207288 m!2577550))

(declare-fun m!2577552 () Bool)

(assert (=> start!207288 m!2577552))

(check-sat (not b!2125153) (not b_next!62467) b_and!171341 (not b!2125137) (not b!2125157) (not b!2125156) (not b!2125213) (not b!2125209) (not b!2125155) (not b!2125168) b_and!171347 (not mapNonEmpty!12115) (not mapNonEmpty!12110) (not b_next!62463) (not setNonEmpty!15263) (not b_next!62471) b_and!171339 (not b!2125162) b_and!171337 (not b_next!62461) (not mapNonEmpty!12108) (not b!2125159) (not setNonEmpty!15260) (not b!2125151) (not b_next!62465) (not mapNonEmpty!12109) (not start!207288) (not b!2125143) b_and!171345 (not b!2125218) (not b!2125148) (not b!2125160) (not b!2125144) (not b!2125214) (not b_next!62469) (not b!2125142) (not b!2125203) b_and!171343 (not b!2125141) (not mapNonEmpty!12116))
(check-sat b_and!171347 (not b_next!62463) (not b_next!62471) b_and!171339 (not b_next!62467) b_and!171341 (not b_next!62465) b_and!171345 (not b_next!62469) b_and!171343 b_and!171337 (not b_next!62461))
(get-model)

(declare-fun d!643897 () Bool)

(declare-fun validCacheMapDown!246 (MutableMap!2390) Bool)

(assert (=> d!643897 (= (valid!1947 cacheDown!1110) (validCacheMapDown!246 (cache!2771 cacheDown!1110)))))

(declare-fun bs!443487 () Bool)

(assert (= bs!443487 d!643897))

(declare-fun m!2577554 () Bool)

(assert (=> bs!443487 m!2577554))

(assert (=> b!2125155 d!643897))

(declare-fun d!643899 () Bool)

(declare-fun validCacheMapFurthestNullable!98 (MutableMap!2391 BalanceConc!15388) Bool)

(assert (=> d!643899 (= (valid!1946 cacheFurthestNullable!130) (validCacheMapFurthestNullable!98 (cache!2772 cacheFurthestNullable!130) (totalInput!2932 cacheFurthestNullable!130)))))

(declare-fun bs!443488 () Bool)

(assert (= bs!443488 d!643899))

(declare-fun m!2577556 () Bool)

(assert (=> bs!443488 m!2577556))

(assert (=> b!2125137 d!643899))

(declare-fun d!643901 () Bool)

(declare-fun lambda!78793 () Int)

(declare-fun exists!697 ((InoxSet Context!2490) Int) Bool)

(assert (=> d!643901 (= (nullableZipper!69 z!3883) (exists!697 z!3883 lambda!78793))))

(declare-fun bs!443489 () Bool)

(assert (= bs!443489 d!643901))

(declare-fun m!2577558 () Bool)

(assert (=> bs!443489 m!2577558))

(assert (=> b!2125156 d!643901))

(declare-fun d!643903 () Bool)

(declare-fun res!919719 () Bool)

(declare-fun e!1354327 () Bool)

(assert (=> d!643903 (=> res!919719 e!1354327)))

(assert (=> d!643903 (= res!919719 ((_ is Nil!23761) (_2!13653 (_1!13654 lt!795553))))))

(assert (=> d!643903 (= (forall!4876 (_2!13653 (_1!13654 lt!795553)) lambda!78790) e!1354327)))

(declare-fun b!2125225 () Bool)

(declare-fun e!1354328 () Bool)

(assert (=> b!2125225 (= e!1354327 e!1354328)))

(declare-fun res!919720 () Bool)

(assert (=> b!2125225 (=> (not res!919720) (not e!1354328))))

(declare-fun dynLambda!11357 (Int StackFrame!62) Bool)

(assert (=> b!2125225 (= res!919720 (dynLambda!11357 lambda!78790 (h!29162 (_2!13653 (_1!13654 lt!795553)))))))

(declare-fun b!2125226 () Bool)

(assert (=> b!2125226 (= e!1354328 (forall!4876 (t!196369 (_2!13653 (_1!13654 lt!795553))) lambda!78790))))

(assert (= (and d!643903 (not res!919719)) b!2125225))

(assert (= (and b!2125225 res!919720) b!2125226))

(declare-fun b_lambda!70521 () Bool)

(assert (=> (not b_lambda!70521) (not b!2125225)))

(declare-fun m!2577560 () Bool)

(assert (=> b!2125225 m!2577560))

(declare-fun m!2577562 () Bool)

(assert (=> b!2125226 m!2577562))

(assert (=> b!2125156 d!643903))

(declare-fun bs!443490 () Bool)

(declare-fun d!643905 () Bool)

(assert (= bs!443490 (and d!643905 b!2125156)))

(declare-fun lambda!78808 () Int)

(declare-fun lt!795596 () Int)

(assert (=> bs!443490 (= (= lt!795596 (_1!13653 (_1!13654 lt!795553))) (= lambda!78808 lambda!78789))))

(assert (=> bs!443490 (not (= lambda!78808 lambda!78790))))

(assert (=> d!643905 true))

(declare-fun bs!443491 () Bool)

(declare-fun b!2125255 () Bool)

(assert (= bs!443491 (and b!2125255 b!2125156)))

(declare-fun lambda!78809 () Int)

(assert (=> bs!443491 (= (= e!1354253 (_1!13653 (_1!13654 lt!795553))) (= lambda!78809 lambda!78789))))

(assert (=> bs!443491 (not (= lambda!78809 lambda!78790))))

(declare-fun bs!443492 () Bool)

(assert (= bs!443492 (and b!2125255 d!643905)))

(assert (=> bs!443492 (= (= e!1354253 lt!795596) (= lambda!78809 lambda!78808))))

(assert (=> b!2125255 true))

(declare-fun bs!443493 () Bool)

(declare-fun b!2125259 () Bool)

(assert (= bs!443493 (and b!2125259 b!2125156)))

(declare-fun lt!795592 () Int)

(declare-fun lambda!78810 () Int)

(assert (=> bs!443493 (= (= lt!795592 (_1!13653 (_1!13654 lt!795553))) (= lambda!78810 lambda!78789))))

(assert (=> bs!443493 (not (= lambda!78810 lambda!78790))))

(declare-fun bs!443494 () Bool)

(assert (= bs!443494 (and b!2125259 d!643905)))

(assert (=> bs!443494 (= (= lt!795592 lt!795596) (= lambda!78810 lambda!78808))))

(declare-fun bs!443495 () Bool)

(assert (= bs!443495 (and b!2125259 b!2125255)))

(assert (=> bs!443495 (= (= lt!795592 e!1354253) (= lambda!78810 lambda!78809))))

(assert (=> b!2125259 true))

(declare-fun bs!443496 () Bool)

(declare-fun b!2125253 () Bool)

(assert (= bs!443496 (and b!2125253 d!643905)))

(declare-fun lt!795594 () tuple3!2960)

(declare-fun lambda!78811 () Int)

(assert (=> bs!443496 (= (= (_1!13653 (_1!13654 lt!795594)) lt!795596) (= lambda!78811 lambda!78808))))

(declare-fun bs!443497 () Bool)

(assert (= bs!443497 (and b!2125253 b!2125156)))

(assert (=> bs!443497 (not (= lambda!78811 lambda!78790))))

(declare-fun bs!443498 () Bool)

(assert (= bs!443498 (and b!2125253 b!2125255)))

(assert (=> bs!443498 (= (= (_1!13653 (_1!13654 lt!795594)) e!1354253) (= lambda!78811 lambda!78809))))

(declare-fun bs!443499 () Bool)

(assert (= bs!443499 (and b!2125253 b!2125259)))

(assert (=> bs!443499 (= (= (_1!13653 (_1!13654 lt!795594)) lt!795592) (= lambda!78811 lambda!78810))))

(assert (=> bs!443497 (= (= (_1!13653 (_1!13654 lt!795594)) (_1!13653 (_1!13654 lt!795553))) (= lambda!78811 lambda!78789))))

(declare-fun b!2125268 () Bool)

(declare-fun e!1354351 () Bool)

(declare-fun mapRes!12117 () Bool)

(assert (=> b!2125268 (= e!1354351 mapRes!12117)))

(declare-fun condMapEmpty!12117 () Bool)

(declare-fun mapDefault!12117 () List!23843)

(assert (=> b!2125268 (= condMapEmpty!12117 (= (arr!3772 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795594)))))))) ((as const (Array (_ BitVec 32) List!23843)) mapDefault!12117)))))

(declare-fun b!2125269 () Bool)

(declare-fun e!1354354 () Bool)

(declare-fun e!1354352 () Bool)

(declare-fun lt!795604 () MutLongMap!2475)

(assert (=> b!2125269 (= e!1354354 (and e!1354352 ((_ is LongMap!2475) lt!795604)))))

(assert (=> b!2125269 (= lt!795604 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795594)))))))

(declare-fun b!2125270 () Bool)

(declare-fun e!1354349 () Bool)

(declare-fun e!1354345 () Bool)

(assert (=> b!2125270 (= e!1354349 e!1354345)))

(declare-fun mapIsEmpty!12117 () Bool)

(declare-fun mapRes!12118 () Bool)

(assert (=> mapIsEmpty!12117 mapRes!12118))

(declare-fun b!2125271 () Bool)

(declare-fun e!1354353 () Bool)

(declare-fun e!1354355 () Bool)

(assert (=> b!2125271 (= e!1354353 e!1354355)))

(declare-fun b!2125272 () Bool)

(declare-fun e!1354356 () Bool)

(declare-fun e!1354358 () Bool)

(assert (=> b!2125272 (= e!1354356 e!1354358)))

(declare-fun setIsEmpty!15264 () Bool)

(declare-fun setRes!15264 () Bool)

(assert (=> setIsEmpty!15264 setRes!15264))

(declare-fun b!2125273 () Bool)

(declare-fun e!1354344 () Bool)

(assert (=> b!2125273 (= e!1354345 e!1354344)))

(declare-fun b!2125274 () Bool)

(declare-fun e!1354359 () Bool)

(declare-fun e!1354346 () Bool)

(assert (=> b!2125274 (= e!1354359 e!1354346)))

(declare-fun b!2125275 () Bool)

(assert (=> b!2125275 (= e!1354352 e!1354356)))

(declare-fun e!1354348 () Bool)

(assert (=> b!2125253 (and e!1354359 e!1354353 e!1354348)))

(declare-fun mapNonEmpty!12117 () Bool)

(assert (=> mapNonEmpty!12117 (= mapRes!12117 true)))

(declare-fun mapKey!12118 () (_ BitVec 32))

(declare-fun mapValue!12118 () List!23843)

(declare-fun mapRest!12118 () (Array (_ BitVec 32) List!23843))

(assert (=> mapNonEmpty!12117 (= (arr!3772 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795594)))))))) (store mapRest!12118 mapKey!12118 mapValue!12118))))

(declare-fun b!2125276 () Bool)

(declare-fun e!1354350 () Bool)

(assert (=> b!2125276 (= e!1354348 e!1354350)))

(declare-fun b!2125277 () Bool)

(declare-fun e!1354357 () Bool)

(declare-fun lt!795603 () MutLongMap!2476)

(assert (=> b!2125277 (= e!1354357 (and e!1354349 ((_ is LongMap!2476) lt!795603)))))

(assert (=> b!2125277 (= lt!795603 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795594)))))))

(declare-fun mapIsEmpty!12118 () Bool)

(assert (=> mapIsEmpty!12118 mapRes!12117))

(declare-fun setNonEmpty!15264 () Bool)

(assert (=> setNonEmpty!15264 (= setRes!15264 true)))

(declare-fun setElem!15264 () Context!2490)

(declare-fun setRest!15264 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15264 (= (z!5748 (h!29162 (_2!13653 (_1!13654 lt!795594)))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15264 true) setRest!15264))))

(declare-fun b!2125278 () Bool)

(assert (=> b!2125278 (= e!1354358 e!1354351)))

(declare-fun b!2125279 () Bool)

(declare-fun e!1354347 () Bool)

(assert (=> b!2125279 (= e!1354347 mapRes!12118)))

(declare-fun condMapEmpty!12118 () Bool)

(declare-fun mapDefault!12118 () List!23842)

(assert (=> b!2125279 (= condMapEmpty!12118 (= (arr!3773 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795594)))))))) ((as const (Array (_ BitVec 32) List!23842)) mapDefault!12118)))))

(declare-fun b!2125280 () Bool)

(assert (=> b!2125280 (= e!1354346 setRes!15264)))

(declare-fun condSetEmpty!15264 () Bool)

(assert (=> b!2125280 (= condSetEmpty!15264 (= (z!5748 (h!29162 (_2!13653 (_1!13654 lt!795594)))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun mapNonEmpty!12118 () Bool)

(assert (=> mapNonEmpty!12118 (= mapRes!12118 true)))

(declare-fun mapKey!12117 () (_ BitVec 32))

(declare-fun mapRest!12117 () (Array (_ BitVec 32) List!23842))

(declare-fun mapValue!12117 () List!23842)

(assert (=> mapNonEmpty!12118 (= (arr!3773 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795594)))))))) (store mapRest!12117 mapKey!12117 mapValue!12117))))

(declare-fun b!2125281 () Bool)

(assert (=> b!2125281 (= e!1354355 e!1354357)))

(declare-fun b!2125282 () Bool)

(assert (=> b!2125282 (= e!1354350 e!1354354)))

(declare-fun b!2125283 () Bool)

(assert (=> b!2125283 (= e!1354344 e!1354347)))

(assert (= (and b!2125280 condSetEmpty!15264) setIsEmpty!15264))

(assert (= (and b!2125280 (not condSetEmpty!15264)) setNonEmpty!15264))

(assert (= b!2125274 b!2125280))

(assert (= (and b!2125253 ((_ is Cons!23761) (_2!13653 (_1!13654 lt!795594)))) b!2125274))

(assert (= (and b!2125279 condMapEmpty!12118) mapIsEmpty!12117))

(assert (= (and b!2125279 (not condMapEmpty!12118)) mapNonEmpty!12118))

(assert (= b!2125283 b!2125279))

(assert (= b!2125273 b!2125283))

(assert (= b!2125270 b!2125273))

(assert (= (and b!2125277 ((_ is LongMap!2476) (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795594)))))) b!2125270))

(assert (= b!2125281 b!2125277))

(assert (= (and b!2125271 ((_ is HashMap!2389) (cache!2770 (_2!13654 lt!795594)))) b!2125281))

(assert (= b!2125253 b!2125271))

(assert (= (and b!2125268 condMapEmpty!12117) mapIsEmpty!12118))

(assert (= (and b!2125268 (not condMapEmpty!12117)) mapNonEmpty!12117))

(assert (= b!2125278 b!2125268))

(assert (= b!2125272 b!2125278))

(assert (= b!2125275 b!2125272))

(assert (= (and b!2125269 ((_ is LongMap!2475) (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795594)))))) b!2125275))

(assert (= b!2125282 b!2125269))

(assert (= (and b!2125276 ((_ is HashMap!2390) (cache!2771 (_3!1950 lt!795594)))) b!2125282))

(assert (= b!2125253 b!2125276))

(assert (=> b!2125282 (< (dynLambda!11352 order!14749 (defaultValue!2552 (cache!2771 (_3!1950 lt!795594)))) (dynLambda!11353 order!14751 lambda!78811))))

(assert (=> b!2125283 (< (dynLambda!11354 order!14753 (defaultEntry!2841 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795594)))))))) (dynLambda!11353 order!14751 lambda!78811))))

(assert (=> b!2125278 (< (dynLambda!11355 order!14755 (defaultEntry!2840 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795594)))))))) (dynLambda!11353 order!14751 lambda!78811))))

(assert (=> b!2125281 (< (dynLambda!11356 order!14757 (defaultValue!2551 (cache!2770 (_2!13654 lt!795594)))) (dynLambda!11353 order!14751 lambda!78811))))

(declare-fun m!2577564 () Bool)

(assert (=> mapNonEmpty!12117 m!2577564))

(declare-fun m!2577566 () Bool)

(assert (=> mapNonEmpty!12118 m!2577566))

(declare-fun bs!443500 () Bool)

(declare-fun b!2125261 () Bool)

(assert (= bs!443500 (and b!2125261 b!2125156)))

(declare-fun lambda!78812 () Int)

(assert (=> bs!443500 (= lambda!78812 lambda!78790)))

(declare-fun bs!443501 () Bool)

(assert (= bs!443501 (and b!2125261 b!2125255)))

(assert (=> bs!443501 (not (= lambda!78812 lambda!78809))))

(declare-fun bs!443502 () Bool)

(assert (= bs!443502 (and b!2125261 b!2125259)))

(assert (=> bs!443502 (not (= lambda!78812 lambda!78810))))

(assert (=> bs!443500 (not (= lambda!78812 lambda!78789))))

(declare-fun bs!443503 () Bool)

(assert (= bs!443503 (and b!2125261 d!643905)))

(assert (=> bs!443503 (not (= lambda!78812 lambda!78808))))

(declare-fun bs!443504 () Bool)

(assert (= bs!443504 (and b!2125261 b!2125253)))

(assert (=> bs!443504 (not (= lambda!78812 lambda!78811))))

(assert (=> b!2125261 true))

(declare-fun res!919740 () Bool)

(declare-fun e!1354342 () Bool)

(assert (=> b!2125253 (=> (not res!919740) (not e!1354342))))

(assert (=> b!2125253 (= res!919740 (forall!4876 (_2!13653 (_1!13654 lt!795594)) lambda!78811))))

(declare-fun b!2125254 () Bool)

(declare-fun res!919737 () Bool)

(assert (=> b!2125254 (=> (not res!919737) (not e!1354342))))

(assert (=> b!2125254 (= res!919737 (valid!1948 (_2!13654 lt!795594)))))

(declare-datatypes ((Unit!37629 0))(
  ( (Unit!37630) )
))
(declare-fun lt!795597 () Unit!37629)

(declare-fun lt!795593 () Unit!37629)

(assert (=> b!2125255 (= lt!795597 lt!795593)))

(declare-fun call!128736 () Bool)

(assert (=> b!2125255 call!128736))

(declare-fun call!128738 () Unit!37629)

(assert (=> b!2125255 (= lt!795593 call!128738)))

(declare-fun lt!795590 () Unit!37629)

(declare-fun Unit!37631 () Unit!37629)

(assert (=> b!2125255 (= lt!795590 Unit!37631)))

(declare-fun call!128737 () Bool)

(assert (=> b!2125255 call!128737))

(declare-fun e!1354340 () tuple3!2960)

(assert (=> b!2125255 (= e!1354340 (tuple3!2961 (tuple2!23407 e!1354253 Nil!23761) cacheUp!991 cacheDown!1110))))

(declare-fun b!2125256 () Bool)

(declare-fun e!1354339 () tuple3!2960)

(assert (=> b!2125256 (= e!1354339 e!1354340)))

(declare-fun res!919741 () Bool)

(assert (=> b!2125256 (= res!919741 (= lt!795550 lt!795554))))

(declare-fun e!1354341 () Bool)

(assert (=> b!2125256 (=> res!919741 e!1354341)))

(declare-fun c!339948 () Bool)

(assert (=> b!2125256 (= c!339948 e!1354341)))

(declare-fun b!2125258 () Bool)

(declare-fun e!1354343 () Int)

(assert (=> b!2125258 (= e!1354343 lt!795550)))

(declare-fun bm!128731 () Bool)

(assert (=> bm!128731 (= call!128737 (forall!4876 Nil!23761 (ite c!339948 lambda!78808 lambda!78808)))))

(declare-fun lt!795601 () Int)

(declare-fun lt!795602 () tuple3!2960)

(declare-datatypes ((tuple3!2964 0))(
  ( (tuple3!2965 (_1!13657 (InoxSet Context!2490)) (_2!13657 CacheUp!1658) (_3!1952 CacheDown!1644)) )
))
(declare-fun lt!795595 () tuple3!2964)

(assert (=> b!2125259 (= lt!795602 (furthestNullablePositionStackMem!14 (_1!13657 lt!795595) (+ lt!795550 1) totalInput!886 lt!795554 lt!795601 (Cons!23761 (StackFrame!63 z!3883 lt!795550 e!1354253 lt!795596 totalInput!886) Nil!23761) (_2!13657 lt!795595) (_3!1952 lt!795595) cacheFurthestNullable!130))))

(declare-fun lt!795591 () Unit!37629)

(declare-fun lt!795598 () Unit!37629)

(assert (=> b!2125259 (= lt!795591 lt!795598)))

(assert (=> b!2125259 call!128736))

(assert (=> b!2125259 (= lt!795598 call!128738)))

(declare-fun lt!795589 () Unit!37629)

(declare-fun Unit!37632 () Unit!37629)

(assert (=> b!2125259 (= lt!795589 Unit!37632)))

(assert (=> b!2125259 call!128737))

(declare-fun furthestNullablePosition!13 ((InoxSet Context!2490) Int BalanceConc!15388 Int Int) Int)

(assert (=> b!2125259 (= lt!795592 (furthestNullablePosition!13 (_1!13657 lt!795595) (+ lt!795550 1) totalInput!886 (size!18576 totalInput!886) lt!795601))))

(assert (=> b!2125259 (= lt!795601 e!1354343)))

(declare-fun c!339946 () Bool)

(assert (=> b!2125259 (= c!339946 (nullableZipper!69 (_1!13657 lt!795595)))))

(declare-fun derivationStepZipperMem!20 ((InoxSet Context!2490) C!11496 CacheUp!1658 CacheDown!1644) tuple3!2964)

(declare-fun apply!5916 (BalanceConc!15388 Int) C!11496)

(assert (=> b!2125259 (= lt!795595 (derivationStepZipperMem!20 z!3883 (apply!5916 totalInput!886 lt!795550) cacheUp!991 cacheDown!1110))))

(assert (=> b!2125259 (= e!1354340 (tuple3!2961 (_1!13654 lt!795602) (_2!13654 lt!795602) (_3!1950 lt!795602)))))

(declare-fun bm!128732 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!9 (List!23845 Int Int) Unit!37629)

(assert (=> bm!128732 (= call!128738 (lemmaStackPreservesForEqualRes!9 Nil!23761 lt!795596 (ite c!339948 e!1354253 lt!795592)))))

(declare-fun b!2125260 () Bool)

(declare-fun res!919735 () Bool)

(assert (=> b!2125260 (=> (not res!919735) (not e!1354342))))

(assert (=> b!2125260 (= res!919735 (valid!1947 (_3!1950 lt!795594)))))

(assert (=> b!2125261 (= e!1354342 (forall!4876 (_2!13653 (_1!13654 lt!795594)) lambda!78812))))

(declare-fun b!2125262 () Bool)

(declare-fun res!919738 () Bool)

(assert (=> b!2125262 (=> (not res!919738) (not e!1354342))))

(assert (=> b!2125262 (= res!919738 (= (totalInput!2932 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2125263 () Bool)

(declare-fun res!919739 () Bool)

(assert (=> b!2125263 (=> (not res!919739) (not e!1354342))))

(assert (=> b!2125263 (= res!919739 (valid!1946 cacheFurthestNullable!130))))

(declare-fun b!2125264 () Bool)

(assert (=> b!2125264 (= e!1354343 e!1354253)))

(declare-datatypes ((Option!4873 0))(
  ( (None!4872) (Some!4872 (v!28293 Int)) )
))
(declare-fun lt!795600 () Option!4873)

(declare-fun b!2125257 () Bool)

(assert (=> b!2125257 (= e!1354339 (tuple3!2961 (tuple2!23407 (v!28293 lt!795600) Nil!23761) cacheUp!991 cacheDown!1110))))

(assert (=> d!643905 e!1354342))

(declare-fun res!919736 () Bool)

(assert (=> d!643905 (=> (not res!919736) (not e!1354342))))

(assert (=> d!643905 (= res!919736 (= (_1!13653 (_1!13654 lt!795594)) (furthestNullablePosition!13 z!3883 lt!795550 totalInput!886 lt!795554 e!1354253)))))

(assert (=> d!643905 (= lt!795594 e!1354339)))

(declare-fun c!339947 () Bool)

(assert (=> d!643905 (= c!339947 ((_ is Some!4872) lt!795600))))

(declare-fun get!7320 (CacheFurthestNullable!600 (InoxSet Context!2490) Int Int) Option!4873)

(assert (=> d!643905 (= lt!795600 (get!7320 cacheFurthestNullable!130 z!3883 lt!795550 e!1354253))))

(declare-fun lt!795599 () Unit!37629)

(declare-fun Unit!37633 () Unit!37629)

(assert (=> d!643905 (= lt!795599 Unit!37633)))

(assert (=> d!643905 (forall!4876 Nil!23761 lambda!78808)))

(assert (=> d!643905 (= lt!795596 (furthestNullablePosition!13 z!3883 lt!795550 totalInput!886 (size!18576 totalInput!886) e!1354253))))

(assert (=> d!643905 (and (>= lt!795550 0) (<= lt!795550 lt!795554))))

(assert (=> d!643905 (= (furthestNullablePositionStackMem!14 z!3883 lt!795550 totalInput!886 lt!795554 e!1354253 Nil!23761 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!795594)))

(declare-fun b!2125265 () Bool)

(declare-fun lostCauseZipper!60 ((InoxSet Context!2490)) Bool)

(assert (=> b!2125265 (= e!1354341 (lostCauseZipper!60 z!3883))))

(declare-fun bm!128733 () Bool)

(assert (=> bm!128733 (= call!128736 (forall!4876 Nil!23761 (ite c!339948 lambda!78809 lambda!78810)))))

(assert (= (and d!643905 c!339947) b!2125257))

(assert (= (and d!643905 (not c!339947)) b!2125256))

(assert (= (and b!2125256 (not res!919741)) b!2125265))

(assert (= (and b!2125256 c!339948) b!2125255))

(assert (= (and b!2125256 (not c!339948)) b!2125259))

(assert (= (and b!2125259 c!339946) b!2125258))

(assert (= (and b!2125259 (not c!339946)) b!2125264))

(assert (= (or b!2125255 b!2125259) bm!128731))

(assert (= (or b!2125255 b!2125259) bm!128733))

(assert (= (or b!2125255 b!2125259) bm!128732))

(assert (= (and d!643905 res!919736) b!2125253))

(assert (= (and b!2125253 res!919740) b!2125254))

(assert (= (and b!2125254 res!919737) b!2125260))

(assert (= (and b!2125260 res!919735) b!2125263))

(assert (= (and b!2125263 res!919739) b!2125262))

(assert (= (and b!2125262 res!919738) b!2125261))

(declare-fun m!2577568 () Bool)

(assert (=> b!2125265 m!2577568))

(declare-fun m!2577570 () Bool)

(assert (=> b!2125253 m!2577570))

(declare-fun m!2577572 () Bool)

(assert (=> bm!128731 m!2577572))

(declare-fun m!2577574 () Bool)

(assert (=> b!2125261 m!2577574))

(declare-fun m!2577576 () Bool)

(assert (=> d!643905 m!2577576))

(declare-fun m!2577578 () Bool)

(assert (=> d!643905 m!2577578))

(assert (=> d!643905 m!2577516))

(declare-fun m!2577580 () Bool)

(assert (=> d!643905 m!2577580))

(declare-fun m!2577582 () Bool)

(assert (=> d!643905 m!2577582))

(assert (=> d!643905 m!2577516))

(declare-fun m!2577584 () Bool)

(assert (=> b!2125254 m!2577584))

(assert (=> b!2125263 m!2577494))

(declare-fun m!2577586 () Bool)

(assert (=> b!2125260 m!2577586))

(assert (=> b!2125259 m!2577516))

(declare-fun m!2577588 () Bool)

(assert (=> b!2125259 m!2577588))

(declare-fun m!2577590 () Bool)

(assert (=> b!2125259 m!2577590))

(declare-fun m!2577592 () Bool)

(assert (=> b!2125259 m!2577592))

(declare-fun m!2577594 () Bool)

(assert (=> b!2125259 m!2577594))

(declare-fun m!2577596 () Bool)

(assert (=> b!2125259 m!2577596))

(assert (=> b!2125259 m!2577590))

(assert (=> b!2125259 m!2577516))

(declare-fun m!2577598 () Bool)

(assert (=> bm!128732 m!2577598))

(declare-fun m!2577600 () Bool)

(assert (=> bm!128733 m!2577600))

(assert (=> b!2125156 d!643905))

(declare-fun d!643907 () Bool)

(declare-fun lt!795607 () Int)

(declare-fun size!18577 (List!23844) Int)

(assert (=> d!643907 (= lt!795607 (size!18577 (list!9537 totalInput!886)))))

(declare-fun size!18578 (Conc!7813) Int)

(assert (=> d!643907 (= lt!795607 (size!18578 (c!339937 totalInput!886)))))

(assert (=> d!643907 (= (size!18576 totalInput!886) lt!795607)))

(declare-fun bs!443505 () Bool)

(assert (= bs!443505 d!643907))

(assert (=> bs!443505 m!2577538))

(assert (=> bs!443505 m!2577538))

(declare-fun m!2577602 () Bool)

(assert (=> bs!443505 m!2577602))

(declare-fun m!2577604 () Bool)

(assert (=> bs!443505 m!2577604))

(assert (=> b!2125156 d!643907))

(declare-fun d!643909 () Bool)

(declare-fun res!919742 () Bool)

(declare-fun e!1354360 () Bool)

(assert (=> d!643909 (=> res!919742 e!1354360)))

(assert (=> d!643909 (= res!919742 ((_ is Nil!23761) (_2!13653 (_1!13654 lt!795553))))))

(assert (=> d!643909 (= (forall!4876 (_2!13653 (_1!13654 lt!795553)) lambda!78789) e!1354360)))

(declare-fun b!2125284 () Bool)

(declare-fun e!1354361 () Bool)

(assert (=> b!2125284 (= e!1354360 e!1354361)))

(declare-fun res!919743 () Bool)

(assert (=> b!2125284 (=> (not res!919743) (not e!1354361))))

(assert (=> b!2125284 (= res!919743 (dynLambda!11357 lambda!78789 (h!29162 (_2!13653 (_1!13654 lt!795553)))))))

(declare-fun b!2125285 () Bool)

(assert (=> b!2125285 (= e!1354361 (forall!4876 (t!196369 (_2!13653 (_1!13654 lt!795553))) lambda!78789))))

(assert (= (and d!643909 (not res!919742)) b!2125284))

(assert (= (and b!2125284 res!919743) b!2125285))

(declare-fun b_lambda!70523 () Bool)

(assert (=> (not b_lambda!70523) (not b!2125284)))

(declare-fun m!2577606 () Bool)

(assert (=> b!2125284 m!2577606))

(declare-fun m!2577608 () Bool)

(assert (=> b!2125285 m!2577608))

(assert (=> b!2125156 d!643909))

(declare-fun d!643911 () Bool)

(declare-fun lt!795608 () Int)

(assert (=> d!643911 (= lt!795608 (size!18577 (list!9537 input!5507)))))

(assert (=> d!643911 (= lt!795608 (size!18578 (c!339937 input!5507)))))

(assert (=> d!643911 (= (size!18576 input!5507) lt!795608)))

(declare-fun bs!443506 () Bool)

(assert (= bs!443506 d!643911))

(assert (=> bs!443506 m!2577544))

(assert (=> bs!443506 m!2577544))

(declare-fun m!2577610 () Bool)

(assert (=> bs!443506 m!2577610))

(declare-fun m!2577612 () Bool)

(assert (=> bs!443506 m!2577612))

(assert (=> b!2125156 d!643911))

(declare-fun d!643913 () Bool)

(declare-fun c!339951 () Bool)

(assert (=> d!643913 (= c!339951 ((_ is Node!7813) (c!339937 (totalInput!2932 cacheFurthestNullable!130))))))

(declare-fun e!1354366 () Bool)

(assert (=> d!643913 (= (inv!31353 (c!339937 (totalInput!2932 cacheFurthestNullable!130))) e!1354366)))

(declare-fun b!2125292 () Bool)

(declare-fun inv!31359 (Conc!7813) Bool)

(assert (=> b!2125292 (= e!1354366 (inv!31359 (c!339937 (totalInput!2932 cacheFurthestNullable!130))))))

(declare-fun b!2125293 () Bool)

(declare-fun e!1354367 () Bool)

(assert (=> b!2125293 (= e!1354366 e!1354367)))

(declare-fun res!919746 () Bool)

(assert (=> b!2125293 (= res!919746 (not ((_ is Leaf!11418) (c!339937 (totalInput!2932 cacheFurthestNullable!130)))))))

(assert (=> b!2125293 (=> res!919746 e!1354367)))

(declare-fun b!2125294 () Bool)

(declare-fun inv!31360 (Conc!7813) Bool)

(assert (=> b!2125294 (= e!1354367 (inv!31360 (c!339937 (totalInput!2932 cacheFurthestNullable!130))))))

(assert (= (and d!643913 c!339951) b!2125292))

(assert (= (and d!643913 (not c!339951)) b!2125293))

(assert (= (and b!2125293 (not res!919746)) b!2125294))

(declare-fun m!2577614 () Bool)

(assert (=> b!2125292 m!2577614))

(declare-fun m!2577616 () Bool)

(assert (=> b!2125294 m!2577616))

(assert (=> b!2125144 d!643913))

(declare-fun d!643915 () Bool)

(declare-fun c!339952 () Bool)

(assert (=> d!643915 (= c!339952 ((_ is Node!7813) (c!339937 totalInput!886)))))

(declare-fun e!1354368 () Bool)

(assert (=> d!643915 (= (inv!31353 (c!339937 totalInput!886)) e!1354368)))

(declare-fun b!2125295 () Bool)

(assert (=> b!2125295 (= e!1354368 (inv!31359 (c!339937 totalInput!886)))))

(declare-fun b!2125296 () Bool)

(declare-fun e!1354369 () Bool)

(assert (=> b!2125296 (= e!1354368 e!1354369)))

(declare-fun res!919747 () Bool)

(assert (=> b!2125296 (= res!919747 (not ((_ is Leaf!11418) (c!339937 totalInput!886))))))

(assert (=> b!2125296 (=> res!919747 e!1354369)))

(declare-fun b!2125297 () Bool)

(assert (=> b!2125297 (= e!1354369 (inv!31360 (c!339937 totalInput!886)))))

(assert (= (and d!643915 c!339952) b!2125295))

(assert (= (and d!643915 (not c!339952)) b!2125296))

(assert (= (and b!2125296 (not res!919747)) b!2125297))

(declare-fun m!2577618 () Bool)

(assert (=> b!2125295 m!2577618))

(declare-fun m!2577620 () Bool)

(assert (=> b!2125297 m!2577620))

(assert (=> b!2125162 d!643915))

(declare-fun d!643917 () Bool)

(declare-fun list!9538 (Conc!7813) List!23844)

(assert (=> d!643917 (= (list!9537 input!5507) (list!9538 (c!339937 input!5507)))))

(declare-fun bs!443507 () Bool)

(assert (= bs!443507 d!643917))

(declare-fun m!2577622 () Bool)

(assert (=> bs!443507 m!2577622))

(assert (=> start!207288 d!643917))

(declare-fun d!643919 () Bool)

(declare-fun isBalanced!2452 (Conc!7813) Bool)

(assert (=> d!643919 (= (inv!31354 totalInput!886) (isBalanced!2452 (c!339937 totalInput!886)))))

(declare-fun bs!443508 () Bool)

(assert (= bs!443508 d!643919))

(declare-fun m!2577624 () Bool)

(assert (=> bs!443508 m!2577624))

(assert (=> start!207288 d!643919))

(declare-fun d!643921 () Bool)

(assert (=> d!643921 (= (inv!31354 input!5507) (isBalanced!2452 (c!339937 input!5507)))))

(declare-fun bs!443509 () Bool)

(assert (= bs!443509 d!643921))

(declare-fun m!2577626 () Bool)

(assert (=> bs!443509 m!2577626))

(assert (=> start!207288 d!643921))

(declare-fun d!643923 () Bool)

(assert (=> d!643923 (= (list!9537 totalInput!886) (list!9538 (c!339937 totalInput!886)))))

(declare-fun bs!443510 () Bool)

(assert (= bs!443510 d!643923))

(declare-fun m!2577628 () Bool)

(assert (=> bs!443510 m!2577628))

(assert (=> start!207288 d!643923))

(declare-fun d!643925 () Bool)

(declare-fun res!919750 () Bool)

(declare-fun e!1354372 () Bool)

(assert (=> d!643925 (=> (not res!919750) (not e!1354372))))

(assert (=> d!643925 (= res!919750 ((_ is HashMap!2389) (cache!2770 cacheUp!991)))))

(assert (=> d!643925 (= (inv!31358 cacheUp!991) e!1354372)))

(declare-fun b!2125300 () Bool)

(declare-fun validCacheMapUp!248 (MutableMap!2389) Bool)

(assert (=> b!2125300 (= e!1354372 (validCacheMapUp!248 (cache!2770 cacheUp!991)))))

(assert (= (and d!643925 res!919750) b!2125300))

(declare-fun m!2577630 () Bool)

(assert (=> b!2125300 m!2577630))

(assert (=> start!207288 d!643925))

(declare-fun d!643927 () Bool)

(declare-fun res!919753 () Bool)

(declare-fun e!1354375 () Bool)

(assert (=> d!643927 (=> (not res!919753) (not e!1354375))))

(assert (=> d!643927 (= res!919753 ((_ is HashMap!2390) (cache!2771 cacheDown!1110)))))

(assert (=> d!643927 (= (inv!31357 cacheDown!1110) e!1354375)))

(declare-fun b!2125303 () Bool)

(assert (=> b!2125303 (= e!1354375 (validCacheMapDown!246 (cache!2771 cacheDown!1110)))))

(assert (= (and d!643927 res!919753) b!2125303))

(assert (=> b!2125303 m!2577554))

(assert (=> start!207288 d!643927))

(declare-fun d!643929 () Bool)

(declare-fun res!919756 () Bool)

(declare-fun e!1354378 () Bool)

(assert (=> d!643929 (=> (not res!919756) (not e!1354378))))

(assert (=> d!643929 (= res!919756 ((_ is HashMap!2391) (cache!2772 cacheFurthestNullable!130)))))

(assert (=> d!643929 (= (inv!31356 cacheFurthestNullable!130) e!1354378)))

(declare-fun b!2125306 () Bool)

(assert (=> b!2125306 (= e!1354378 (validCacheMapFurthestNullable!98 (cache!2772 cacheFurthestNullable!130) (totalInput!2932 cacheFurthestNullable!130)))))

(assert (= (and d!643929 res!919756) b!2125306))

(assert (=> b!2125306 m!2577556))

(assert (=> start!207288 d!643929))

(declare-fun d!643931 () Bool)

(declare-fun e!1354381 () Bool)

(assert (=> d!643931 e!1354381))

(declare-fun res!919759 () Bool)

(assert (=> d!643931 (=> res!919759 e!1354381)))

(declare-fun lt!795611 () Bool)

(assert (=> d!643931 (= res!919759 (not lt!795611))))

(declare-fun drop!1187 (List!23844 Int) List!23844)

(assert (=> d!643931 (= lt!795611 (= (list!9537 input!5507) (drop!1187 (list!9537 totalInput!886) (- (size!18577 (list!9537 totalInput!886)) (size!18577 (list!9537 input!5507))))))))

(assert (=> d!643931 (= (isSuffix!623 (list!9537 input!5507) (list!9537 totalInput!886)) lt!795611)))

(declare-fun b!2125309 () Bool)

(assert (=> b!2125309 (= e!1354381 (>= (size!18577 (list!9537 totalInput!886)) (size!18577 (list!9537 input!5507))))))

(assert (= (and d!643931 (not res!919759)) b!2125309))

(assert (=> d!643931 m!2577538))

(assert (=> d!643931 m!2577602))

(assert (=> d!643931 m!2577544))

(assert (=> d!643931 m!2577610))

(assert (=> d!643931 m!2577538))

(declare-fun m!2577632 () Bool)

(assert (=> d!643931 m!2577632))

(assert (=> b!2125309 m!2577538))

(assert (=> b!2125309 m!2577602))

(assert (=> b!2125309 m!2577544))

(assert (=> b!2125309 m!2577610))

(assert (=> start!207288 d!643931))

(declare-fun d!643933 () Bool)

(assert (=> d!643933 (= (inv!31354 (totalInput!2932 cacheFurthestNullable!130)) (isBalanced!2452 (c!339937 (totalInput!2932 cacheFurthestNullable!130))))))

(declare-fun bs!443511 () Bool)

(assert (= bs!443511 d!643933))

(declare-fun m!2577634 () Bool)

(assert (=> bs!443511 m!2577634))

(assert (=> b!2125153 d!643933))

(declare-fun d!643935 () Bool)

(assert (=> d!643935 (= (valid!1948 cacheUp!991) (validCacheMapUp!248 (cache!2770 cacheUp!991)))))

(declare-fun bs!443512 () Bool)

(assert (= bs!443512 d!643935))

(assert (=> bs!443512 m!2577630))

(assert (=> b!2125159 d!643935))

(declare-fun d!643937 () Bool)

(declare-fun c!339953 () Bool)

(assert (=> d!643937 (= c!339953 ((_ is Node!7813) (c!339937 input!5507)))))

(declare-fun e!1354382 () Bool)

(assert (=> d!643937 (= (inv!31353 (c!339937 input!5507)) e!1354382)))

(declare-fun b!2125310 () Bool)

(assert (=> b!2125310 (= e!1354382 (inv!31359 (c!339937 input!5507)))))

(declare-fun b!2125311 () Bool)

(declare-fun e!1354383 () Bool)

(assert (=> b!2125311 (= e!1354382 e!1354383)))

(declare-fun res!919760 () Bool)

(assert (=> b!2125311 (= res!919760 (not ((_ is Leaf!11418) (c!339937 input!5507))))))

(assert (=> b!2125311 (=> res!919760 e!1354383)))

(declare-fun b!2125312 () Bool)

(assert (=> b!2125312 (= e!1354383 (inv!31360 (c!339937 input!5507)))))

(assert (= (and d!643937 c!339953) b!2125310))

(assert (= (and d!643937 (not c!339953)) b!2125311))

(assert (= (and b!2125311 (not res!919760)) b!2125312))

(declare-fun m!2577636 () Bool)

(assert (=> b!2125310 m!2577636))

(declare-fun m!2577638 () Bool)

(assert (=> b!2125312 m!2577638))

(assert (=> b!2125151 d!643937))

(declare-fun d!643939 () Bool)

(assert (=> d!643939 (= (array_inv!2696 (_keys!2772 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) (bvsge (size!18572 (_keys!2772 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125143 d!643939))

(declare-fun d!643941 () Bool)

(assert (=> d!643941 (= (array_inv!2697 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) (bvsge (size!18573 (_values!2755 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125143 d!643941))

(declare-fun d!643943 () Bool)

(assert (=> d!643943 (= (array_inv!2696 (_keys!2774 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) (bvsge (size!18572 (_keys!2774 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125160 d!643943))

(declare-fun d!643945 () Bool)

(assert (=> d!643945 (= (array_inv!2699 (_values!2757 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) (bvsge (size!18575 (_values!2757 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125160 d!643945))

(declare-fun d!643947 () Bool)

(assert (=> d!643947 (= (array_inv!2696 (_keys!2773 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) (bvsge (size!18572 (_keys!2773 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125148 d!643947))

(declare-fun d!643949 () Bool)

(assert (=> d!643949 (= (array_inv!2698 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) (bvsge (size!18574 (_values!2756 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125148 d!643949))

(declare-fun d!643951 () Bool)

(declare-fun lambda!78815 () Int)

(declare-fun forall!4877 (List!23841 Int) Bool)

(assert (=> d!643951 (= (inv!31355 setElem!15260) (forall!4877 (exprs!1745 setElem!15260) lambda!78815))))

(declare-fun bs!443513 () Bool)

(assert (= bs!443513 d!643951))

(declare-fun m!2577640 () Bool)

(assert (=> bs!443513 m!2577640))

(assert (=> setNonEmpty!15260 d!643951))

(declare-fun mapValue!12121 () List!23843)

(declare-fun setRes!15270 () Bool)

(declare-fun tp_is_empty!9497 () Bool)

(declare-fun b!2125327 () Bool)

(declare-fun e!1354396 () Bool)

(declare-fun tp!651496 () Bool)

(declare-fun e!1354401 () Bool)

(declare-fun tp!651493 () Bool)

(assert (=> b!2125327 (= e!1354396 (and tp!651493 (inv!31355 (_2!13649 (_1!13650 (h!29160 mapValue!12121)))) e!1354401 tp_is_empty!9497 setRes!15270 tp!651496))))

(declare-fun condSetEmpty!15269 () Bool)

(assert (=> b!2125327 (= condSetEmpty!15269 (= (_2!13650 (h!29160 mapValue!12121)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125328 () Bool)

(declare-fun e!1354398 () Bool)

(declare-fun tp!651494 () Bool)

(assert (=> b!2125328 (= e!1354398 tp!651494)))

(declare-fun setIsEmpty!15269 () Bool)

(assert (=> setIsEmpty!15269 setRes!15270))

(declare-fun setIsEmpty!15270 () Bool)

(declare-fun setRes!15269 () Bool)

(assert (=> setIsEmpty!15270 setRes!15269))

(declare-fun mapIsEmpty!12121 () Bool)

(declare-fun mapRes!12121 () Bool)

(assert (=> mapIsEmpty!12121 mapRes!12121))

(declare-fun e!1354400 () Bool)

(declare-fun setNonEmpty!15269 () Bool)

(declare-fun tp!651502 () Bool)

(declare-fun setElem!15269 () Context!2490)

(assert (=> setNonEmpty!15269 (= setRes!15270 (and tp!651502 (inv!31355 setElem!15269) e!1354400))))

(declare-fun setRest!15270 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15269 (= (_2!13650 (h!29160 mapValue!12121)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15269 true) setRest!15270))))

(declare-fun condMapEmpty!12121 () Bool)

(declare-fun mapDefault!12121 () List!23843)

(assert (=> mapNonEmpty!12108 (= condMapEmpty!12121 (= mapRest!12109 ((as const (Array (_ BitVec 32) List!23843)) mapDefault!12121)))))

(declare-fun e!1354397 () Bool)

(assert (=> mapNonEmpty!12108 (= tp!651454 (and e!1354397 mapRes!12121))))

(declare-fun b!2125329 () Bool)

(declare-fun tp!651497 () Bool)

(assert (=> b!2125329 (= e!1354400 tp!651497)))

(declare-fun tp!651498 () Bool)

(declare-fun tp!651501 () Bool)

(declare-fun b!2125330 () Bool)

(assert (=> b!2125330 (= e!1354397 (and tp!651498 (inv!31355 (_2!13649 (_1!13650 (h!29160 mapDefault!12121)))) e!1354398 tp_is_empty!9497 setRes!15269 tp!651501))))

(declare-fun condSetEmpty!15270 () Bool)

(assert (=> b!2125330 (= condSetEmpty!15270 (= (_2!13650 (h!29160 mapDefault!12121)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun mapNonEmpty!12121 () Bool)

(declare-fun tp!651495 () Bool)

(assert (=> mapNonEmpty!12121 (= mapRes!12121 (and tp!651495 e!1354396))))

(declare-fun mapRest!12121 () (Array (_ BitVec 32) List!23843))

(declare-fun mapKey!12121 () (_ BitVec 32))

(assert (=> mapNonEmpty!12121 (= mapRest!12109 (store mapRest!12121 mapKey!12121 mapValue!12121))))

(declare-fun b!2125331 () Bool)

(declare-fun tp!651500 () Bool)

(assert (=> b!2125331 (= e!1354401 tp!651500)))

(declare-fun b!2125332 () Bool)

(declare-fun e!1354399 () Bool)

(declare-fun tp!651492 () Bool)

(assert (=> b!2125332 (= e!1354399 tp!651492)))

(declare-fun tp!651499 () Bool)

(declare-fun setElem!15270 () Context!2490)

(declare-fun setNonEmpty!15270 () Bool)

(assert (=> setNonEmpty!15270 (= setRes!15269 (and tp!651499 (inv!31355 setElem!15270) e!1354399))))

(declare-fun setRest!15269 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15270 (= (_2!13650 (h!29160 mapDefault!12121)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15270 true) setRest!15269))))

(assert (= (and mapNonEmpty!12108 condMapEmpty!12121) mapIsEmpty!12121))

(assert (= (and mapNonEmpty!12108 (not condMapEmpty!12121)) mapNonEmpty!12121))

(assert (= b!2125327 b!2125331))

(assert (= (and b!2125327 condSetEmpty!15269) setIsEmpty!15269))

(assert (= (and b!2125327 (not condSetEmpty!15269)) setNonEmpty!15269))

(assert (= setNonEmpty!15269 b!2125329))

(assert (= (and mapNonEmpty!12121 ((_ is Cons!23759) mapValue!12121)) b!2125327))

(assert (= b!2125330 b!2125328))

(assert (= (and b!2125330 condSetEmpty!15270) setIsEmpty!15270))

(assert (= (and b!2125330 (not condSetEmpty!15270)) setNonEmpty!15270))

(assert (= setNonEmpty!15270 b!2125332))

(assert (= (and mapNonEmpty!12108 ((_ is Cons!23759) mapDefault!12121)) b!2125330))

(declare-fun m!2577642 () Bool)

(assert (=> setNonEmpty!15269 m!2577642))

(declare-fun m!2577644 () Bool)

(assert (=> b!2125327 m!2577644))

(declare-fun m!2577646 () Bool)

(assert (=> b!2125330 m!2577646))

(declare-fun m!2577648 () Bool)

(assert (=> setNonEmpty!15270 m!2577648))

(declare-fun m!2577650 () Bool)

(assert (=> mapNonEmpty!12121 m!2577650))

(declare-fun setIsEmpty!15273 () Bool)

(declare-fun setRes!15273 () Bool)

(assert (=> setIsEmpty!15273 setRes!15273))

(declare-fun tp!651516 () Bool)

(declare-fun e!1354408 () Bool)

(declare-fun setElem!15273 () Context!2490)

(declare-fun setNonEmpty!15273 () Bool)

(assert (=> setNonEmpty!15273 (= setRes!15273 (and tp!651516 (inv!31355 setElem!15273) e!1354408))))

(declare-fun setRest!15273 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15273 (= (_2!13650 (h!29160 mapValue!12110)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15273 true) setRest!15273))))

(declare-fun b!2125341 () Bool)

(declare-fun tp!651514 () Bool)

(assert (=> b!2125341 (= e!1354408 tp!651514)))

(declare-fun e!1354409 () Bool)

(assert (=> mapNonEmpty!12108 (= tp!651463 e!1354409)))

(declare-fun b!2125342 () Bool)

(declare-fun e!1354410 () Bool)

(declare-fun tp!651515 () Bool)

(assert (=> b!2125342 (= e!1354410 tp!651515)))

(declare-fun b!2125343 () Bool)

(declare-fun tp!651517 () Bool)

(declare-fun tp!651513 () Bool)

(assert (=> b!2125343 (= e!1354409 (and tp!651517 (inv!31355 (_2!13649 (_1!13650 (h!29160 mapValue!12110)))) e!1354410 tp_is_empty!9497 setRes!15273 tp!651513))))

(declare-fun condSetEmpty!15273 () Bool)

(assert (=> b!2125343 (= condSetEmpty!15273 (= (_2!13650 (h!29160 mapValue!12110)) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125343 b!2125342))

(assert (= (and b!2125343 condSetEmpty!15273) setIsEmpty!15273))

(assert (= (and b!2125343 (not condSetEmpty!15273)) setNonEmpty!15273))

(assert (= setNonEmpty!15273 b!2125341))

(assert (= (and mapNonEmpty!12108 ((_ is Cons!23759) mapValue!12110)) b!2125343))

(declare-fun m!2577652 () Bool)

(assert (=> setNonEmpty!15273 m!2577652))

(declare-fun m!2577654 () Bool)

(assert (=> b!2125343 m!2577654))

(declare-fun condSetEmpty!15276 () Bool)

(assert (=> setNonEmpty!15263 (= condSetEmpty!15276 (= setRest!15263 ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setRes!15276 () Bool)

(assert (=> setNonEmpty!15263 setRes!15276))

(declare-fun setIsEmpty!15276 () Bool)

(assert (=> setIsEmpty!15276 setRes!15276))

(declare-fun setNonEmpty!15276 () Bool)

(assert (=> setNonEmpty!15276 (= setRes!15276 true)))

(declare-fun setElem!15276 () Context!2490)

(declare-fun setRest!15276 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15276 (= setRest!15263 ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15276 true) setRest!15276))))

(assert (= (and setNonEmpty!15263 condSetEmpty!15276) setIsEmpty!15276))

(assert (= (and setNonEmpty!15263 (not condSetEmpty!15276)) setNonEmpty!15276))

(declare-fun b!2125356 () Bool)

(declare-fun e!1354422 () Bool)

(declare-fun tp!651533 () Bool)

(assert (=> b!2125356 (= e!1354422 tp!651533)))

(declare-fun b!2125357 () Bool)

(declare-fun e!1354420 () Bool)

(declare-fun setRes!15281 () Bool)

(declare-fun tp!651535 () Bool)

(assert (=> b!2125357 (= e!1354420 (and setRes!15281 tp!651535))))

(declare-fun condSetEmpty!15281 () Bool)

(declare-fun mapDefault!12124 () List!23846)

(assert (=> b!2125357 (= condSetEmpty!15281 (= (_1!13655 (_1!13656 (h!29163 mapDefault!12124))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15281 () Bool)

(assert (=> setIsEmpty!15281 setRes!15281))

(declare-fun setRes!15282 () Bool)

(declare-fun e!1354419 () Bool)

(declare-fun setElem!15281 () Context!2490)

(declare-fun tp!651534 () Bool)

(declare-fun setNonEmpty!15281 () Bool)

(assert (=> setNonEmpty!15281 (= setRes!15282 (and tp!651534 (inv!31355 setElem!15281) e!1354419))))

(declare-fun mapValue!12124 () List!23846)

(declare-fun setRest!15282 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15281 (= (_1!13655 (_1!13656 (h!29163 mapValue!12124))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15281 true) setRest!15282))))

(declare-fun setIsEmpty!15282 () Bool)

(assert (=> setIsEmpty!15282 setRes!15282))

(declare-fun mapNonEmpty!12124 () Bool)

(declare-fun mapRes!12124 () Bool)

(declare-fun tp!651536 () Bool)

(declare-fun e!1354421 () Bool)

(assert (=> mapNonEmpty!12124 (= mapRes!12124 (and tp!651536 e!1354421))))

(declare-fun mapRest!12124 () (Array (_ BitVec 32) List!23846))

(declare-fun mapKey!12124 () (_ BitVec 32))

(assert (=> mapNonEmpty!12124 (= mapRest!12108 (store mapRest!12124 mapKey!12124 mapValue!12124))))

(declare-fun tp!651532 () Bool)

(declare-fun setElem!15282 () Context!2490)

(declare-fun setNonEmpty!15282 () Bool)

(assert (=> setNonEmpty!15282 (= setRes!15281 (and tp!651532 (inv!31355 setElem!15282) e!1354422))))

(declare-fun setRest!15281 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15282 (= (_1!13655 (_1!13656 (h!29163 mapDefault!12124))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15282 true) setRest!15281))))

(declare-fun b!2125358 () Bool)

(declare-fun tp!651537 () Bool)

(assert (=> b!2125358 (= e!1354421 (and setRes!15282 tp!651537))))

(declare-fun condSetEmpty!15282 () Bool)

(assert (=> b!2125358 (= condSetEmpty!15282 (= (_1!13655 (_1!13656 (h!29163 mapValue!12124))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125359 () Bool)

(declare-fun tp!651538 () Bool)

(assert (=> b!2125359 (= e!1354419 tp!651538)))

(declare-fun mapIsEmpty!12124 () Bool)

(assert (=> mapIsEmpty!12124 mapRes!12124))

(declare-fun condMapEmpty!12124 () Bool)

(assert (=> mapNonEmpty!12110 (= condMapEmpty!12124 (= mapRest!12108 ((as const (Array (_ BitVec 32) List!23846)) mapDefault!12124)))))

(assert (=> mapNonEmpty!12110 (= tp!651451 (and e!1354420 mapRes!12124))))

(assert (= (and mapNonEmpty!12110 condMapEmpty!12124) mapIsEmpty!12124))

(assert (= (and mapNonEmpty!12110 (not condMapEmpty!12124)) mapNonEmpty!12124))

(assert (= (and b!2125358 condSetEmpty!15282) setIsEmpty!15282))

(assert (= (and b!2125358 (not condSetEmpty!15282)) setNonEmpty!15281))

(assert (= setNonEmpty!15281 b!2125359))

(assert (= (and mapNonEmpty!12124 ((_ is Cons!23762) mapValue!12124)) b!2125358))

(assert (= (and b!2125357 condSetEmpty!15281) setIsEmpty!15281))

(assert (= (and b!2125357 (not condSetEmpty!15281)) setNonEmpty!15282))

(assert (= setNonEmpty!15282 b!2125356))

(assert (= (and mapNonEmpty!12110 ((_ is Cons!23762) mapDefault!12124)) b!2125357))

(declare-fun m!2577656 () Bool)

(assert (=> setNonEmpty!15281 m!2577656))

(declare-fun m!2577658 () Bool)

(assert (=> mapNonEmpty!12124 m!2577658))

(declare-fun m!2577660 () Bool)

(assert (=> setNonEmpty!15282 m!2577660))

(declare-fun b!2125366 () Bool)

(declare-fun e!1354427 () Bool)

(declare-fun setRes!15285 () Bool)

(declare-fun tp!651545 () Bool)

(assert (=> b!2125366 (= e!1354427 (and setRes!15285 tp!651545))))

(declare-fun condSetEmpty!15285 () Bool)

(assert (=> b!2125366 (= condSetEmpty!15285 (= (_1!13655 (_1!13656 (h!29163 mapValue!12109))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125367 () Bool)

(declare-fun e!1354428 () Bool)

(declare-fun tp!651546 () Bool)

(assert (=> b!2125367 (= e!1354428 tp!651546)))

(declare-fun setNonEmpty!15285 () Bool)

(declare-fun tp!651547 () Bool)

(declare-fun setElem!15285 () Context!2490)

(assert (=> setNonEmpty!15285 (= setRes!15285 (and tp!651547 (inv!31355 setElem!15285) e!1354428))))

(declare-fun setRest!15285 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15285 (= (_1!13655 (_1!13656 (h!29163 mapValue!12109))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15285 true) setRest!15285))))

(declare-fun setIsEmpty!15285 () Bool)

(assert (=> setIsEmpty!15285 setRes!15285))

(assert (=> mapNonEmpty!12110 (= tp!651449 e!1354427)))

(assert (= (and b!2125366 condSetEmpty!15285) setIsEmpty!15285))

(assert (= (and b!2125366 (not condSetEmpty!15285)) setNonEmpty!15285))

(assert (= setNonEmpty!15285 b!2125367))

(assert (= (and mapNonEmpty!12110 ((_ is Cons!23762) mapValue!12109)) b!2125366))

(declare-fun m!2577662 () Bool)

(assert (=> setNonEmpty!15285 m!2577662))

(declare-fun b!2125372 () Bool)

(declare-fun e!1354431 () Bool)

(declare-fun setRes!15288 () Bool)

(assert (=> b!2125372 (= e!1354431 setRes!15288)))

(declare-fun condSetEmpty!15288 () Bool)

(assert (=> b!2125372 (= condSetEmpty!15288 (= (_2!13652 (h!29159 mapDefault!12116)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15288 () Bool)

(assert (=> setIsEmpty!15288 setRes!15288))

(declare-fun setNonEmpty!15288 () Bool)

(assert (=> setNonEmpty!15288 (= setRes!15288 true)))

(declare-fun setElem!15288 () Context!2490)

(declare-fun setRest!15288 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15288 (= (_2!13652 (h!29159 mapDefault!12116)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15288 true) setRest!15288))))

(assert (=> b!2125214 e!1354431))

(assert (= (and b!2125372 condSetEmpty!15288) setIsEmpty!15288))

(assert (= (and b!2125372 (not condSetEmpty!15288)) setNonEmpty!15288))

(assert (= (and b!2125214 ((_ is Cons!23758) mapDefault!12116)) b!2125372))

(declare-fun b!2125377 () Bool)

(declare-fun e!1354434 () Bool)

(declare-fun setRes!15291 () Bool)

(assert (=> b!2125377 (= e!1354434 setRes!15291)))

(declare-fun condSetEmpty!15291 () Bool)

(assert (=> b!2125377 (= condSetEmpty!15291 (= (_2!13650 (h!29160 (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553))))))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15291 () Bool)

(assert (=> setIsEmpty!15291 setRes!15291))

(declare-fun setNonEmpty!15291 () Bool)

(assert (=> setNonEmpty!15291 (= setRes!15291 true)))

(declare-fun setElem!15291 () Context!2490)

(declare-fun setRest!15291 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15291 (= (_2!13650 (h!29160 (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553))))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15291 true) setRest!15291))))

(assert (=> b!2125213 e!1354434))

(assert (= (and b!2125377 condSetEmpty!15291) setIsEmpty!15291))

(assert (= (and b!2125377 (not condSetEmpty!15291)) setNonEmpty!15291))

(assert (= (and b!2125213 ((_ is Cons!23759) (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553))))))))) b!2125377))

(declare-fun b!2125378 () Bool)

(declare-fun e!1354435 () Bool)

(declare-fun setRes!15292 () Bool)

(assert (=> b!2125378 (= e!1354435 setRes!15292)))

(declare-fun condSetEmpty!15292 () Bool)

(assert (=> b!2125378 (= condSetEmpty!15292 (= (_2!13650 (h!29160 (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553))))))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15292 () Bool)

(assert (=> setIsEmpty!15292 setRes!15292))

(declare-fun setNonEmpty!15292 () Bool)

(assert (=> setNonEmpty!15292 (= setRes!15292 true)))

(declare-fun setElem!15292 () Context!2490)

(declare-fun setRest!15292 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15292 (= (_2!13650 (h!29160 (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553))))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15292 true) setRest!15292))))

(assert (=> b!2125213 e!1354435))

(assert (= (and b!2125378 condSetEmpty!15292) setIsEmpty!15292))

(assert (= (and b!2125378 (not condSetEmpty!15292)) setNonEmpty!15292))

(assert (= (and b!2125213 ((_ is Cons!23759) (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 (_3!1950 lt!795553))))))))) b!2125378))

(declare-fun e!1354441 () Bool)

(declare-fun tp!651554 () Bool)

(declare-fun b!2125387 () Bool)

(declare-fun tp!651555 () Bool)

(assert (=> b!2125387 (= e!1354441 (and (inv!31353 (left!18371 (c!339937 (totalInput!2932 cacheFurthestNullable!130)))) tp!651555 (inv!31353 (right!18701 (c!339937 (totalInput!2932 cacheFurthestNullable!130)))) tp!651554))))

(declare-fun b!2125389 () Bool)

(declare-fun e!1354440 () Bool)

(declare-fun tp!651556 () Bool)

(assert (=> b!2125389 (= e!1354440 tp!651556)))

(declare-fun b!2125388 () Bool)

(declare-fun inv!31361 (IArray!15631) Bool)

(assert (=> b!2125388 (= e!1354441 (and (inv!31361 (xs!10755 (c!339937 (totalInput!2932 cacheFurthestNullable!130)))) e!1354440))))

(assert (=> b!2125144 (= tp!651464 (and (inv!31353 (c!339937 (totalInput!2932 cacheFurthestNullable!130))) e!1354441))))

(assert (= (and b!2125144 ((_ is Node!7813) (c!339937 (totalInput!2932 cacheFurthestNullable!130)))) b!2125387))

(assert (= b!2125388 b!2125389))

(assert (= (and b!2125144 ((_ is Leaf!11418) (c!339937 (totalInput!2932 cacheFurthestNullable!130)))) b!2125388))

(declare-fun m!2577664 () Bool)

(assert (=> b!2125387 m!2577664))

(declare-fun m!2577666 () Bool)

(assert (=> b!2125387 m!2577666))

(declare-fun m!2577668 () Bool)

(assert (=> b!2125388 m!2577668))

(assert (=> b!2125144 m!2577502))

(declare-fun tp!651558 () Bool)

(declare-fun e!1354443 () Bool)

(declare-fun b!2125390 () Bool)

(declare-fun tp!651557 () Bool)

(assert (=> b!2125390 (= e!1354443 (and (inv!31353 (left!18371 (c!339937 totalInput!886))) tp!651558 (inv!31353 (right!18701 (c!339937 totalInput!886))) tp!651557))))

(declare-fun b!2125392 () Bool)

(declare-fun e!1354442 () Bool)

(declare-fun tp!651559 () Bool)

(assert (=> b!2125392 (= e!1354442 tp!651559)))

(declare-fun b!2125391 () Bool)

(assert (=> b!2125391 (= e!1354443 (and (inv!31361 (xs!10755 (c!339937 totalInput!886))) e!1354442))))

(assert (=> b!2125162 (= tp!651468 (and (inv!31353 (c!339937 totalInput!886)) e!1354443))))

(assert (= (and b!2125162 ((_ is Node!7813) (c!339937 totalInput!886))) b!2125390))

(assert (= b!2125391 b!2125392))

(assert (= (and b!2125162 ((_ is Leaf!11418) (c!339937 totalInput!886))) b!2125391))

(declare-fun m!2577670 () Bool)

(assert (=> b!2125390 m!2577670))

(declare-fun m!2577672 () Bool)

(assert (=> b!2125390 m!2577672))

(declare-fun m!2577674 () Bool)

(assert (=> b!2125391 m!2577674))

(assert (=> b!2125162 m!2577530))

(declare-fun b!2125397 () Bool)

(declare-fun e!1354446 () Bool)

(declare-fun tp!651564 () Bool)

(declare-fun tp!651565 () Bool)

(assert (=> b!2125397 (= e!1354446 (and tp!651564 tp!651565))))

(assert (=> b!2125142 (= tp!651453 e!1354446)))

(assert (= (and b!2125142 ((_ is Cons!23757) (exprs!1745 setElem!15260))) b!2125397))

(declare-fun setIsEmpty!15293 () Bool)

(declare-fun setRes!15293 () Bool)

(assert (=> setIsEmpty!15293 setRes!15293))

(declare-fun e!1354447 () Bool)

(declare-fun setNonEmpty!15293 () Bool)

(declare-fun tp!651569 () Bool)

(declare-fun setElem!15293 () Context!2490)

(assert (=> setNonEmpty!15293 (= setRes!15293 (and tp!651569 (inv!31355 setElem!15293) e!1354447))))

(declare-fun setRest!15293 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15293 (= (_2!13650 (h!29160 (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15293 true) setRest!15293))))

(declare-fun b!2125398 () Bool)

(declare-fun tp!651567 () Bool)

(assert (=> b!2125398 (= e!1354447 tp!651567)))

(declare-fun e!1354448 () Bool)

(assert (=> b!2125143 (= tp!651452 e!1354448)))

(declare-fun b!2125399 () Bool)

(declare-fun e!1354449 () Bool)

(declare-fun tp!651568 () Bool)

(assert (=> b!2125399 (= e!1354449 tp!651568)))

(declare-fun tp!651570 () Bool)

(declare-fun tp!651566 () Bool)

(declare-fun b!2125400 () Bool)

(assert (=> b!2125400 (= e!1354448 (and tp!651570 (inv!31355 (_2!13649 (_1!13650 (h!29160 (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))))) e!1354449 tp_is_empty!9497 setRes!15293 tp!651566))))

(declare-fun condSetEmpty!15293 () Bool)

(assert (=> b!2125400 (= condSetEmpty!15293 (= (_2!13650 (h!29160 (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125400 b!2125399))

(assert (= (and b!2125400 condSetEmpty!15293) setIsEmpty!15293))

(assert (= (and b!2125400 (not condSetEmpty!15293)) setNonEmpty!15293))

(assert (= setNonEmpty!15293 b!2125398))

(assert (= (and b!2125143 ((_ is Cons!23759) (zeroValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))) b!2125400))

(declare-fun m!2577676 () Bool)

(assert (=> setNonEmpty!15293 m!2577676))

(declare-fun m!2577678 () Bool)

(assert (=> b!2125400 m!2577678))

(declare-fun setIsEmpty!15294 () Bool)

(declare-fun setRes!15294 () Bool)

(assert (=> setIsEmpty!15294 setRes!15294))

(declare-fun setElem!15294 () Context!2490)

(declare-fun setNonEmpty!15294 () Bool)

(declare-fun tp!651574 () Bool)

(declare-fun e!1354450 () Bool)

(assert (=> setNonEmpty!15294 (= setRes!15294 (and tp!651574 (inv!31355 setElem!15294) e!1354450))))

(declare-fun setRest!15294 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15294 (= (_2!13650 (h!29160 (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15294 true) setRest!15294))))

(declare-fun b!2125401 () Bool)

(declare-fun tp!651572 () Bool)

(assert (=> b!2125401 (= e!1354450 tp!651572)))

(declare-fun e!1354451 () Bool)

(assert (=> b!2125143 (= tp!651461 e!1354451)))

(declare-fun b!2125402 () Bool)

(declare-fun e!1354452 () Bool)

(declare-fun tp!651573 () Bool)

(assert (=> b!2125402 (= e!1354452 tp!651573)))

(declare-fun b!2125403 () Bool)

(declare-fun tp!651571 () Bool)

(declare-fun tp!651575 () Bool)

(assert (=> b!2125403 (= e!1354451 (and tp!651575 (inv!31355 (_2!13649 (_1!13650 (h!29160 (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))))) e!1354452 tp_is_empty!9497 setRes!15294 tp!651571))))

(declare-fun condSetEmpty!15294 () Bool)

(assert (=> b!2125403 (= condSetEmpty!15294 (= (_2!13650 (h!29160 (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125403 b!2125402))

(assert (= (and b!2125403 condSetEmpty!15294) setIsEmpty!15294))

(assert (= (and b!2125403 (not condSetEmpty!15294)) setNonEmpty!15294))

(assert (= setNonEmpty!15294 b!2125401))

(assert (= (and b!2125143 ((_ is Cons!23759) (minValue!2733 (v!28287 (underlying!5145 (v!28288 (underlying!5148 (cache!2771 cacheDown!1110)))))))) b!2125403))

(declare-fun m!2577680 () Bool)

(assert (=> setNonEmpty!15294 m!2577680))

(declare-fun m!2577682 () Bool)

(assert (=> b!2125403 m!2577682))

(declare-fun setIsEmpty!15299 () Bool)

(declare-fun setRes!15299 () Bool)

(assert (=> setIsEmpty!15299 setRes!15299))

(declare-fun setIsEmpty!15300 () Bool)

(declare-fun setRes!15300 () Bool)

(assert (=> setIsEmpty!15300 setRes!15300))

(declare-fun mapIsEmpty!12127 () Bool)

(declare-fun mapRes!12127 () Bool)

(assert (=> mapIsEmpty!12127 mapRes!12127))

(declare-fun condMapEmpty!12127 () Bool)

(declare-fun mapDefault!12127 () List!23843)

(assert (=> mapNonEmpty!12115 (= condMapEmpty!12127 (= mapRest!12116 ((as const (Array (_ BitVec 32) List!23843)) mapDefault!12127)))))

(declare-fun e!1354458 () Bool)

(assert (=> mapNonEmpty!12115 (and e!1354458 mapRes!12127)))

(declare-fun mapNonEmpty!12127 () Bool)

(declare-fun e!1354457 () Bool)

(assert (=> mapNonEmpty!12127 (= mapRes!12127 e!1354457)))

(declare-fun mapRest!12127 () (Array (_ BitVec 32) List!23843))

(declare-fun mapValue!12127 () List!23843)

(declare-fun mapKey!12127 () (_ BitVec 32))

(assert (=> mapNonEmpty!12127 (= mapRest!12116 (store mapRest!12127 mapKey!12127 mapValue!12127))))

(declare-fun setNonEmpty!15299 () Bool)

(assert (=> setNonEmpty!15299 (= setRes!15300 true)))

(declare-fun setElem!15300 () Context!2490)

(declare-fun setRest!15300 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15299 (= (_2!13650 (h!29160 mapValue!12127)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15300 true) setRest!15300))))

(declare-fun b!2125410 () Bool)

(assert (=> b!2125410 (= e!1354458 setRes!15299)))

(declare-fun condSetEmpty!15300 () Bool)

(assert (=> b!2125410 (= condSetEmpty!15300 (= (_2!13650 (h!29160 mapDefault!12127)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125411 () Bool)

(assert (=> b!2125411 (= e!1354457 setRes!15300)))

(declare-fun condSetEmpty!15299 () Bool)

(assert (=> b!2125411 (= condSetEmpty!15299 (= (_2!13650 (h!29160 mapValue!12127)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setNonEmpty!15300 () Bool)

(assert (=> setNonEmpty!15300 (= setRes!15299 true)))

(declare-fun setElem!15299 () Context!2490)

(declare-fun setRest!15299 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15300 (= (_2!13650 (h!29160 mapDefault!12127)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15299 true) setRest!15299))))

(assert (= (and mapNonEmpty!12115 condMapEmpty!12127) mapIsEmpty!12127))

(assert (= (and mapNonEmpty!12115 (not condMapEmpty!12127)) mapNonEmpty!12127))

(assert (= (and b!2125411 condSetEmpty!15299) setIsEmpty!15300))

(assert (= (and b!2125411 (not condSetEmpty!15299)) setNonEmpty!15299))

(assert (= (and mapNonEmpty!12127 ((_ is Cons!23759) mapValue!12127)) b!2125411))

(assert (= (and b!2125410 condSetEmpty!15300) setIsEmpty!15299))

(assert (= (and b!2125410 (not condSetEmpty!15300)) setNonEmpty!15300))

(assert (= (and mapNonEmpty!12115 ((_ is Cons!23759) mapDefault!12127)) b!2125410))

(declare-fun m!2577684 () Bool)

(assert (=> mapNonEmpty!12127 m!2577684))

(declare-fun b!2125412 () Bool)

(declare-fun e!1354459 () Bool)

(declare-fun setRes!15301 () Bool)

(assert (=> b!2125412 (= e!1354459 setRes!15301)))

(declare-fun condSetEmpty!15301 () Bool)

(assert (=> b!2125412 (= condSetEmpty!15301 (= (_2!13650 (h!29160 mapValue!12116)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15301 () Bool)

(assert (=> setIsEmpty!15301 setRes!15301))

(declare-fun setNonEmpty!15301 () Bool)

(assert (=> setNonEmpty!15301 (= setRes!15301 true)))

(declare-fun setElem!15301 () Context!2490)

(declare-fun setRest!15301 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15301 (= (_2!13650 (h!29160 mapValue!12116)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15301 true) setRest!15301))))

(assert (=> mapNonEmpty!12115 e!1354459))

(assert (= (and b!2125412 condSetEmpty!15301) setIsEmpty!15301))

(assert (= (and b!2125412 (not condSetEmpty!15301)) setNonEmpty!15301))

(assert (= (and mapNonEmpty!12115 ((_ is Cons!23759) mapValue!12116)) b!2125412))

(declare-fun b!2125413 () Bool)

(declare-fun e!1354460 () Bool)

(declare-fun setRes!15302 () Bool)

(declare-fun tp!651576 () Bool)

(assert (=> b!2125413 (= e!1354460 (and setRes!15302 tp!651576))))

(declare-fun condSetEmpty!15302 () Bool)

(assert (=> b!2125413 (= condSetEmpty!15302 (= (_1!13655 (_1!13656 (h!29163 (zeroValue!2735 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125414 () Bool)

(declare-fun e!1354461 () Bool)

(declare-fun tp!651577 () Bool)

(assert (=> b!2125414 (= e!1354461 tp!651577)))

(declare-fun setElem!15302 () Context!2490)

(declare-fun setNonEmpty!15302 () Bool)

(declare-fun tp!651578 () Bool)

(assert (=> setNonEmpty!15302 (= setRes!15302 (and tp!651578 (inv!31355 setElem!15302) e!1354461))))

(declare-fun setRest!15302 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15302 (= (_1!13655 (_1!13656 (h!29163 (zeroValue!2735 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15302 true) setRest!15302))))

(declare-fun setIsEmpty!15302 () Bool)

(assert (=> setIsEmpty!15302 setRes!15302))

(assert (=> b!2125160 (= tp!651450 e!1354460)))

(assert (= (and b!2125413 condSetEmpty!15302) setIsEmpty!15302))

(assert (= (and b!2125413 (not condSetEmpty!15302)) setNonEmpty!15302))

(assert (= setNonEmpty!15302 b!2125414))

(assert (= (and b!2125160 ((_ is Cons!23762) (zeroValue!2735 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130)))))))) b!2125413))

(declare-fun m!2577686 () Bool)

(assert (=> setNonEmpty!15302 m!2577686))

(declare-fun b!2125415 () Bool)

(declare-fun e!1354462 () Bool)

(declare-fun setRes!15303 () Bool)

(declare-fun tp!651579 () Bool)

(assert (=> b!2125415 (= e!1354462 (and setRes!15303 tp!651579))))

(declare-fun condSetEmpty!15303 () Bool)

(assert (=> b!2125415 (= condSetEmpty!15303 (= (_1!13655 (_1!13656 (h!29163 (minValue!2735 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125416 () Bool)

(declare-fun e!1354463 () Bool)

(declare-fun tp!651580 () Bool)

(assert (=> b!2125416 (= e!1354463 tp!651580)))

(declare-fun setNonEmpty!15303 () Bool)

(declare-fun setElem!15303 () Context!2490)

(declare-fun tp!651581 () Bool)

(assert (=> setNonEmpty!15303 (= setRes!15303 (and tp!651581 (inv!31355 setElem!15303) e!1354463))))

(declare-fun setRest!15303 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15303 (= (_1!13655 (_1!13656 (h!29163 (minValue!2735 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15303 true) setRest!15303))))

(declare-fun setIsEmpty!15303 () Bool)

(assert (=> setIsEmpty!15303 setRes!15303))

(assert (=> b!2125160 (= tp!651457 e!1354462)))

(assert (= (and b!2125415 condSetEmpty!15303) setIsEmpty!15303))

(assert (= (and b!2125415 (not condSetEmpty!15303)) setNonEmpty!15303))

(assert (= setNonEmpty!15303 b!2125416))

(assert (= (and b!2125160 ((_ is Cons!23762) (minValue!2735 (v!28291 (underlying!5149 (v!28292 (underlying!5150 (cache!2772 cacheFurthestNullable!130)))))))) b!2125415))

(declare-fun m!2577688 () Bool)

(assert (=> setNonEmpty!15303 m!2577688))

(declare-fun setIsEmpty!15306 () Bool)

(declare-fun setRes!15306 () Bool)

(assert (=> setIsEmpty!15306 setRes!15306))

(declare-fun e!1354471 () Bool)

(assert (=> b!2125157 (= tp!651467 e!1354471)))

(declare-fun tp!651592 () Bool)

(declare-fun setNonEmpty!15306 () Bool)

(declare-fun e!1354472 () Bool)

(declare-fun setElem!15306 () Context!2490)

(assert (=> setNonEmpty!15306 (= setRes!15306 (and tp!651592 (inv!31355 setElem!15306) e!1354472))))

(declare-fun setRest!15306 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15306 (= (_2!13652 (h!29159 mapDefault!12110)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15306 true) setRest!15306))))

(declare-fun b!2125425 () Bool)

(declare-fun e!1354470 () Bool)

(declare-fun tp!651590 () Bool)

(assert (=> b!2125425 (= e!1354470 tp!651590)))

(declare-fun b!2125426 () Bool)

(declare-fun tp!651591 () Bool)

(assert (=> b!2125426 (= e!1354472 tp!651591)))

(declare-fun tp!651593 () Bool)

(declare-fun b!2125427 () Bool)

(assert (=> b!2125427 (= e!1354471 (and (inv!31355 (_1!13651 (_1!13652 (h!29159 mapDefault!12110)))) e!1354470 tp_is_empty!9497 setRes!15306 tp!651593))))

(declare-fun condSetEmpty!15306 () Bool)

(assert (=> b!2125427 (= condSetEmpty!15306 (= (_2!13652 (h!29159 mapDefault!12110)) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125427 b!2125425))

(assert (= (and b!2125427 condSetEmpty!15306) setIsEmpty!15306))

(assert (= (and b!2125427 (not condSetEmpty!15306)) setNonEmpty!15306))

(assert (= setNonEmpty!15306 b!2125426))

(assert (= (and b!2125157 ((_ is Cons!23758) mapDefault!12110)) b!2125427))

(declare-fun m!2577690 () Bool)

(assert (=> setNonEmpty!15306 m!2577690))

(declare-fun m!2577692 () Bool)

(assert (=> b!2125427 m!2577692))

(declare-fun condSetEmpty!15309 () Bool)

(assert (=> setNonEmpty!15260 (= condSetEmpty!15309 (= setRest!15260 ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setRes!15309 () Bool)

(assert (=> setNonEmpty!15260 (= tp!651456 setRes!15309)))

(declare-fun setIsEmpty!15309 () Bool)

(assert (=> setIsEmpty!15309 setRes!15309))

(declare-fun e!1354475 () Bool)

(declare-fun tp!651599 () Bool)

(declare-fun setElem!15309 () Context!2490)

(declare-fun setNonEmpty!15309 () Bool)

(assert (=> setNonEmpty!15309 (= setRes!15309 (and tp!651599 (inv!31355 setElem!15309) e!1354475))))

(declare-fun setRest!15309 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15309 (= setRest!15260 ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15309 true) setRest!15309))))

(declare-fun b!2125432 () Bool)

(declare-fun tp!651598 () Bool)

(assert (=> b!2125432 (= e!1354475 tp!651598)))

(assert (= (and setNonEmpty!15260 condSetEmpty!15309) setIsEmpty!15309))

(assert (= (and setNonEmpty!15260 (not condSetEmpty!15309)) setNonEmpty!15309))

(assert (= setNonEmpty!15309 b!2125432))

(declare-fun m!2577694 () Bool)

(assert (=> setNonEmpty!15309 m!2577694))

(declare-fun e!1354480 () Bool)

(assert (=> b!2125209 e!1354480))

(declare-fun b!2125439 () Bool)

(declare-fun e!1354481 () Bool)

(assert (=> b!2125439 (= e!1354480 e!1354481)))

(declare-fun setIsEmpty!15312 () Bool)

(declare-fun setRes!15312 () Bool)

(assert (=> setIsEmpty!15312 setRes!15312))

(declare-fun b!2125440 () Bool)

(assert (=> b!2125440 (= e!1354481 setRes!15312)))

(declare-fun condSetEmpty!15312 () Bool)

(assert (=> b!2125440 (= condSetEmpty!15312 (= (z!5748 (h!29162 (t!196369 (_2!13653 (_1!13654 lt!795553))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setNonEmpty!15312 () Bool)

(assert (=> setNonEmpty!15312 (= setRes!15312 true)))

(declare-fun setElem!15312 () Context!2490)

(declare-fun setRest!15312 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15312 (= (z!5748 (h!29162 (t!196369 (_2!13653 (_1!13654 lt!795553))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15312 true) setRest!15312))))

(assert (= (and b!2125440 condSetEmpty!15312) setIsEmpty!15312))

(assert (= (and b!2125440 (not condSetEmpty!15312)) setNonEmpty!15312))

(assert (= b!2125439 b!2125440))

(assert (= (and b!2125209 ((_ is Cons!23761) (t!196369 (_2!13653 (_1!13654 lt!795553))))) b!2125439))

(declare-fun b!2125441 () Bool)

(declare-fun e!1354482 () Bool)

(declare-fun setRes!15313 () Bool)

(declare-fun tp!651600 () Bool)

(assert (=> b!2125441 (= e!1354482 (and setRes!15313 tp!651600))))

(declare-fun condSetEmpty!15313 () Bool)

(assert (=> b!2125441 (= condSetEmpty!15313 (= (_1!13655 (_1!13656 (h!29163 mapDefault!12108))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125442 () Bool)

(declare-fun e!1354483 () Bool)

(declare-fun tp!651601 () Bool)

(assert (=> b!2125442 (= e!1354483 tp!651601)))

(declare-fun setNonEmpty!15313 () Bool)

(declare-fun tp!651602 () Bool)

(declare-fun setElem!15313 () Context!2490)

(assert (=> setNonEmpty!15313 (= setRes!15313 (and tp!651602 (inv!31355 setElem!15313) e!1354483))))

(declare-fun setRest!15313 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15313 (= (_1!13655 (_1!13656 (h!29163 mapDefault!12108))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15313 true) setRest!15313))))

(declare-fun setIsEmpty!15313 () Bool)

(assert (=> setIsEmpty!15313 setRes!15313))

(assert (=> b!2125141 (= tp!651458 e!1354482)))

(assert (= (and b!2125441 condSetEmpty!15313) setIsEmpty!15313))

(assert (= (and b!2125441 (not condSetEmpty!15313)) setNonEmpty!15313))

(assert (= setNonEmpty!15313 b!2125442))

(assert (= (and b!2125141 ((_ is Cons!23762) mapDefault!12108)) b!2125441))

(declare-fun m!2577696 () Bool)

(assert (=> setNonEmpty!15313 m!2577696))

(declare-fun mapNonEmpty!12130 () Bool)

(declare-fun mapRes!12130 () Bool)

(declare-fun tp!651625 () Bool)

(declare-fun e!1354498 () Bool)

(assert (=> mapNonEmpty!12130 (= mapRes!12130 (and tp!651625 e!1354498))))

(declare-fun mapKey!12130 () (_ BitVec 32))

(declare-fun mapRest!12130 () (Array (_ BitVec 32) List!23842))

(declare-fun mapValue!12130 () List!23842)

(assert (=> mapNonEmpty!12130 (= mapRest!12110 (store mapRest!12130 mapKey!12130 mapValue!12130))))

(declare-fun b!2125457 () Bool)

(declare-fun e!1354499 () Bool)

(declare-fun tp!651624 () Bool)

(assert (=> b!2125457 (= e!1354499 tp!651624)))

(declare-fun e!1354496 () Bool)

(declare-fun setRes!15319 () Bool)

(declare-fun b!2125458 () Bool)

(declare-fun tp!651621 () Bool)

(declare-fun mapDefault!12130 () List!23842)

(declare-fun e!1354501 () Bool)

(assert (=> b!2125458 (= e!1354501 (and (inv!31355 (_1!13651 (_1!13652 (h!29159 mapDefault!12130)))) e!1354496 tp_is_empty!9497 setRes!15319 tp!651621))))

(declare-fun condSetEmpty!15318 () Bool)

(assert (=> b!2125458 (= condSetEmpty!15318 (= (_2!13652 (h!29159 mapDefault!12130)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun condMapEmpty!12130 () Bool)

(assert (=> mapNonEmpty!12109 (= condMapEmpty!12130 (= mapRest!12110 ((as const (Array (_ BitVec 32) List!23842)) mapDefault!12130)))))

(assert (=> mapNonEmpty!12109 (= tp!651462 (and e!1354501 mapRes!12130))))

(declare-fun tp!651626 () Bool)

(declare-fun b!2125459 () Bool)

(declare-fun setRes!15318 () Bool)

(assert (=> b!2125459 (= e!1354498 (and (inv!31355 (_1!13651 (_1!13652 (h!29159 mapValue!12130)))) e!1354499 tp_is_empty!9497 setRes!15318 tp!651626))))

(declare-fun condSetEmpty!15319 () Bool)

(assert (=> b!2125459 (= condSetEmpty!15319 (= (_2!13652 (h!29159 mapValue!12130)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15318 () Bool)

(assert (=> setIsEmpty!15318 setRes!15318))

(declare-fun e!1354500 () Bool)

(declare-fun setNonEmpty!15318 () Bool)

(declare-fun tp!651627 () Bool)

(declare-fun setElem!15318 () Context!2490)

(assert (=> setNonEmpty!15318 (= setRes!15318 (and tp!651627 (inv!31355 setElem!15318) e!1354500))))

(declare-fun setRest!15318 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15318 (= (_2!13652 (h!29159 mapValue!12130)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15318 true) setRest!15318))))

(declare-fun b!2125460 () Bool)

(declare-fun tp!651628 () Bool)

(assert (=> b!2125460 (= e!1354496 tp!651628)))

(declare-fun b!2125461 () Bool)

(declare-fun e!1354497 () Bool)

(declare-fun tp!651622 () Bool)

(assert (=> b!2125461 (= e!1354497 tp!651622)))

(declare-fun tp!651623 () Bool)

(declare-fun setElem!15319 () Context!2490)

(declare-fun setNonEmpty!15319 () Bool)

(assert (=> setNonEmpty!15319 (= setRes!15319 (and tp!651623 (inv!31355 setElem!15319) e!1354497))))

(declare-fun setRest!15319 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15319 (= (_2!13652 (h!29159 mapDefault!12130)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15319 true) setRest!15319))))

(declare-fun b!2125462 () Bool)

(declare-fun tp!651629 () Bool)

(assert (=> b!2125462 (= e!1354500 tp!651629)))

(declare-fun setIsEmpty!15319 () Bool)

(assert (=> setIsEmpty!15319 setRes!15319))

(declare-fun mapIsEmpty!12130 () Bool)

(assert (=> mapIsEmpty!12130 mapRes!12130))

(assert (= (and mapNonEmpty!12109 condMapEmpty!12130) mapIsEmpty!12130))

(assert (= (and mapNonEmpty!12109 (not condMapEmpty!12130)) mapNonEmpty!12130))

(assert (= b!2125459 b!2125457))

(assert (= (and b!2125459 condSetEmpty!15319) setIsEmpty!15318))

(assert (= (and b!2125459 (not condSetEmpty!15319)) setNonEmpty!15318))

(assert (= setNonEmpty!15318 b!2125462))

(assert (= (and mapNonEmpty!12130 ((_ is Cons!23758) mapValue!12130)) b!2125459))

(assert (= b!2125458 b!2125460))

(assert (= (and b!2125458 condSetEmpty!15318) setIsEmpty!15319))

(assert (= (and b!2125458 (not condSetEmpty!15318)) setNonEmpty!15319))

(assert (= setNonEmpty!15319 b!2125461))

(assert (= (and mapNonEmpty!12109 ((_ is Cons!23758) mapDefault!12130)) b!2125458))

(declare-fun m!2577698 () Bool)

(assert (=> mapNonEmpty!12130 m!2577698))

(declare-fun m!2577700 () Bool)

(assert (=> b!2125459 m!2577700))

(declare-fun m!2577702 () Bool)

(assert (=> b!2125458 m!2577702))

(declare-fun m!2577704 () Bool)

(assert (=> setNonEmpty!15318 m!2577704))

(declare-fun m!2577706 () Bool)

(assert (=> setNonEmpty!15319 m!2577706))

(declare-fun setIsEmpty!15320 () Bool)

(declare-fun setRes!15320 () Bool)

(assert (=> setIsEmpty!15320 setRes!15320))

(declare-fun e!1354503 () Bool)

(assert (=> mapNonEmpty!12109 (= tp!651444 e!1354503)))

(declare-fun tp!651632 () Bool)

(declare-fun setNonEmpty!15320 () Bool)

(declare-fun e!1354504 () Bool)

(declare-fun setElem!15320 () Context!2490)

(assert (=> setNonEmpty!15320 (= setRes!15320 (and tp!651632 (inv!31355 setElem!15320) e!1354504))))

(declare-fun setRest!15320 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15320 (= (_2!13652 (h!29159 mapValue!12108)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15320 true) setRest!15320))))

(declare-fun b!2125463 () Bool)

(declare-fun e!1354502 () Bool)

(declare-fun tp!651630 () Bool)

(assert (=> b!2125463 (= e!1354502 tp!651630)))

(declare-fun b!2125464 () Bool)

(declare-fun tp!651631 () Bool)

(assert (=> b!2125464 (= e!1354504 tp!651631)))

(declare-fun tp!651633 () Bool)

(declare-fun b!2125465 () Bool)

(assert (=> b!2125465 (= e!1354503 (and (inv!31355 (_1!13651 (_1!13652 (h!29159 mapValue!12108)))) e!1354502 tp_is_empty!9497 setRes!15320 tp!651633))))

(declare-fun condSetEmpty!15320 () Bool)

(assert (=> b!2125465 (= condSetEmpty!15320 (= (_2!13652 (h!29159 mapValue!12108)) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125465 b!2125463))

(assert (= (and b!2125465 condSetEmpty!15320) setIsEmpty!15320))

(assert (= (and b!2125465 (not condSetEmpty!15320)) setNonEmpty!15320))

(assert (= setNonEmpty!15320 b!2125464))

(assert (= (and mapNonEmpty!12109 ((_ is Cons!23758) mapValue!12108)) b!2125465))

(declare-fun m!2577708 () Bool)

(assert (=> setNonEmpty!15320 m!2577708))

(declare-fun m!2577710 () Bool)

(assert (=> b!2125465 m!2577710))

(declare-fun b!2125466 () Bool)

(declare-fun e!1354505 () Bool)

(declare-fun setRes!15321 () Bool)

(assert (=> b!2125466 (= e!1354505 setRes!15321)))

(declare-fun condSetEmpty!15321 () Bool)

(assert (=> b!2125466 (= condSetEmpty!15321 (= (_2!13650 (h!29160 mapDefault!12115)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15321 () Bool)

(assert (=> setIsEmpty!15321 setRes!15321))

(declare-fun setNonEmpty!15321 () Bool)

(assert (=> setNonEmpty!15321 (= setRes!15321 true)))

(declare-fun setElem!15321 () Context!2490)

(declare-fun setRest!15321 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15321 (= (_2!13650 (h!29160 mapDefault!12115)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15321 true) setRest!15321))))

(assert (=> b!2125203 e!1354505))

(assert (= (and b!2125466 condSetEmpty!15321) setIsEmpty!15321))

(assert (= (and b!2125466 (not condSetEmpty!15321)) setNonEmpty!15321))

(assert (= (and b!2125203 ((_ is Cons!23759) mapDefault!12115)) b!2125466))

(declare-fun b!2125467 () Bool)

(declare-fun tp!651635 () Bool)

(declare-fun tp!651634 () Bool)

(declare-fun e!1354507 () Bool)

(assert (=> b!2125467 (= e!1354507 (and (inv!31353 (left!18371 (c!339937 input!5507))) tp!651635 (inv!31353 (right!18701 (c!339937 input!5507))) tp!651634))))

(declare-fun b!2125469 () Bool)

(declare-fun e!1354506 () Bool)

(declare-fun tp!651636 () Bool)

(assert (=> b!2125469 (= e!1354506 tp!651636)))

(declare-fun b!2125468 () Bool)

(assert (=> b!2125468 (= e!1354507 (and (inv!31361 (xs!10755 (c!339937 input!5507))) e!1354506))))

(assert (=> b!2125151 (= tp!651460 (and (inv!31353 (c!339937 input!5507)) e!1354507))))

(assert (= (and b!2125151 ((_ is Node!7813) (c!339937 input!5507))) b!2125467))

(assert (= b!2125468 b!2125469))

(assert (= (and b!2125151 ((_ is Leaf!11418) (c!339937 input!5507))) b!2125468))

(declare-fun m!2577712 () Bool)

(assert (=> b!2125467 m!2577712))

(declare-fun m!2577714 () Bool)

(assert (=> b!2125467 m!2577714))

(declare-fun m!2577716 () Bool)

(assert (=> b!2125468 m!2577716))

(assert (=> b!2125151 m!2577496))

(declare-fun b!2125470 () Bool)

(declare-fun e!1354508 () Bool)

(declare-fun setRes!15322 () Bool)

(assert (=> b!2125470 (= e!1354508 setRes!15322)))

(declare-fun condSetEmpty!15322 () Bool)

(assert (=> b!2125470 (= condSetEmpty!15322 (= (_2!13652 (h!29159 (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553))))))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15322 () Bool)

(assert (=> setIsEmpty!15322 setRes!15322))

(declare-fun setNonEmpty!15322 () Bool)

(assert (=> setNonEmpty!15322 (= setRes!15322 true)))

(declare-fun setElem!15322 () Context!2490)

(declare-fun setRest!15322 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15322 (= (_2!13652 (h!29159 (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553))))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15322 true) setRest!15322))))

(assert (=> b!2125218 e!1354508))

(assert (= (and b!2125470 condSetEmpty!15322) setIsEmpty!15322))

(assert (= (and b!2125470 (not condSetEmpty!15322)) setNonEmpty!15322))

(assert (= (and b!2125218 ((_ is Cons!23758) (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553))))))))) b!2125470))

(declare-fun b!2125471 () Bool)

(declare-fun e!1354509 () Bool)

(declare-fun setRes!15323 () Bool)

(assert (=> b!2125471 (= e!1354509 setRes!15323)))

(declare-fun condSetEmpty!15323 () Bool)

(assert (=> b!2125471 (= condSetEmpty!15323 (= (_2!13652 (h!29159 (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553))))))))) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15323 () Bool)

(assert (=> setIsEmpty!15323 setRes!15323))

(declare-fun setNonEmpty!15323 () Bool)

(assert (=> setNonEmpty!15323 (= setRes!15323 true)))

(declare-fun setElem!15323 () Context!2490)

(declare-fun setRest!15323 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15323 (= (_2!13652 (h!29159 (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553))))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15323 true) setRest!15323))))

(assert (=> b!2125218 e!1354509))

(assert (= (and b!2125471 condSetEmpty!15323) setIsEmpty!15323))

(assert (= (and b!2125471 (not condSetEmpty!15323)) setNonEmpty!15323))

(assert (= (and b!2125218 ((_ is Cons!23758) (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 (_2!13654 lt!795553))))))))) b!2125471))

(declare-fun setIsEmpty!15324 () Bool)

(declare-fun setRes!15324 () Bool)

(assert (=> setIsEmpty!15324 setRes!15324))

(declare-fun setElem!15324 () Context!2490)

(declare-fun e!1354510 () Bool)

(declare-fun setNonEmpty!15324 () Bool)

(declare-fun tp!651640 () Bool)

(assert (=> setNonEmpty!15324 (= setRes!15324 (and tp!651640 (inv!31355 setElem!15324) e!1354510))))

(declare-fun setRest!15324 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15324 (= (_2!13650 (h!29160 mapDefault!12109)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15324 true) setRest!15324))))

(declare-fun b!2125472 () Bool)

(declare-fun tp!651638 () Bool)

(assert (=> b!2125472 (= e!1354510 tp!651638)))

(declare-fun e!1354511 () Bool)

(assert (=> b!2125168 (= tp!651465 e!1354511)))

(declare-fun b!2125473 () Bool)

(declare-fun e!1354512 () Bool)

(declare-fun tp!651639 () Bool)

(assert (=> b!2125473 (= e!1354512 tp!651639)))

(declare-fun tp!651641 () Bool)

(declare-fun b!2125474 () Bool)

(declare-fun tp!651637 () Bool)

(assert (=> b!2125474 (= e!1354511 (and tp!651641 (inv!31355 (_2!13649 (_1!13650 (h!29160 mapDefault!12109)))) e!1354512 tp_is_empty!9497 setRes!15324 tp!651637))))

(declare-fun condSetEmpty!15324 () Bool)

(assert (=> b!2125474 (= condSetEmpty!15324 (= (_2!13650 (h!29160 mapDefault!12109)) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125474 b!2125473))

(assert (= (and b!2125474 condSetEmpty!15324) setIsEmpty!15324))

(assert (= (and b!2125474 (not condSetEmpty!15324)) setNonEmpty!15324))

(assert (= setNonEmpty!15324 b!2125472))

(assert (= (and b!2125168 ((_ is Cons!23759) mapDefault!12109)) b!2125474))

(declare-fun m!2577718 () Bool)

(assert (=> setNonEmpty!15324 m!2577718))

(declare-fun m!2577720 () Bool)

(assert (=> b!2125474 m!2577720))

(declare-fun setIsEmpty!15325 () Bool)

(declare-fun setRes!15325 () Bool)

(assert (=> setIsEmpty!15325 setRes!15325))

(declare-fun e!1354514 () Bool)

(assert (=> b!2125148 (= tp!651469 e!1354514)))

(declare-fun e!1354515 () Bool)

(declare-fun tp!651644 () Bool)

(declare-fun setNonEmpty!15325 () Bool)

(declare-fun setElem!15325 () Context!2490)

(assert (=> setNonEmpty!15325 (= setRes!15325 (and tp!651644 (inv!31355 setElem!15325) e!1354515))))

(declare-fun setRest!15325 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15325 (= (_2!13652 (h!29159 (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15325 true) setRest!15325))))

(declare-fun b!2125475 () Bool)

(declare-fun e!1354513 () Bool)

(declare-fun tp!651642 () Bool)

(assert (=> b!2125475 (= e!1354513 tp!651642)))

(declare-fun b!2125476 () Bool)

(declare-fun tp!651643 () Bool)

(assert (=> b!2125476 (= e!1354515 tp!651643)))

(declare-fun b!2125477 () Bool)

(declare-fun tp!651645 () Bool)

(assert (=> b!2125477 (= e!1354514 (and (inv!31355 (_1!13651 (_1!13652 (h!29159 (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))))) e!1354513 tp_is_empty!9497 setRes!15325 tp!651645))))

(declare-fun condSetEmpty!15325 () Bool)

(assert (=> b!2125477 (= condSetEmpty!15325 (= (_2!13652 (h!29159 (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125477 b!2125475))

(assert (= (and b!2125477 condSetEmpty!15325) setIsEmpty!15325))

(assert (= (and b!2125477 (not condSetEmpty!15325)) setNonEmpty!15325))

(assert (= setNonEmpty!15325 b!2125476))

(assert (= (and b!2125148 ((_ is Cons!23758) (zeroValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))) b!2125477))

(declare-fun m!2577722 () Bool)

(assert (=> setNonEmpty!15325 m!2577722))

(declare-fun m!2577724 () Bool)

(assert (=> b!2125477 m!2577724))

(declare-fun setIsEmpty!15326 () Bool)

(declare-fun setRes!15326 () Bool)

(assert (=> setIsEmpty!15326 setRes!15326))

(declare-fun e!1354517 () Bool)

(assert (=> b!2125148 (= tp!651459 e!1354517)))

(declare-fun tp!651648 () Bool)

(declare-fun e!1354518 () Bool)

(declare-fun setElem!15326 () Context!2490)

(declare-fun setNonEmpty!15326 () Bool)

(assert (=> setNonEmpty!15326 (= setRes!15326 (and tp!651648 (inv!31355 setElem!15326) e!1354518))))

(declare-fun setRest!15326 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15326 (= (_2!13652 (h!29159 (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15326 true) setRest!15326))))

(declare-fun b!2125478 () Bool)

(declare-fun e!1354516 () Bool)

(declare-fun tp!651646 () Bool)

(assert (=> b!2125478 (= e!1354516 tp!651646)))

(declare-fun b!2125479 () Bool)

(declare-fun tp!651647 () Bool)

(assert (=> b!2125479 (= e!1354518 tp!651647)))

(declare-fun tp!651649 () Bool)

(declare-fun b!2125480 () Bool)

(assert (=> b!2125480 (= e!1354517 (and (inv!31355 (_1!13651 (_1!13652 (h!29159 (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))))) e!1354516 tp_is_empty!9497 setRes!15326 tp!651649))))

(declare-fun condSetEmpty!15326 () Bool)

(assert (=> b!2125480 (= condSetEmpty!15326 (= (_2!13652 (h!29159 (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))) ((as const (Array Context!2490 Bool)) false)))))

(assert (= b!2125480 b!2125478))

(assert (= (and b!2125480 condSetEmpty!15326) setIsEmpty!15326))

(assert (= (and b!2125480 (not condSetEmpty!15326)) setNonEmpty!15326))

(assert (= setNonEmpty!15326 b!2125479))

(assert (= (and b!2125148 ((_ is Cons!23758) (minValue!2734 (v!28289 (underlying!5146 (v!28290 (underlying!5147 (cache!2770 cacheUp!991)))))))) b!2125480))

(declare-fun m!2577726 () Bool)

(assert (=> setNonEmpty!15326 m!2577726))

(declare-fun m!2577728 () Bool)

(assert (=> b!2125480 m!2577728))

(declare-fun setNonEmpty!15331 () Bool)

(declare-fun setRes!15332 () Bool)

(assert (=> setNonEmpty!15331 (= setRes!15332 true)))

(declare-fun mapValue!12133 () List!23842)

(declare-fun setElem!15331 () Context!2490)

(declare-fun setRest!15332 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15331 (= (_2!13652 (h!29159 mapValue!12133)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15331 true) setRest!15332))))

(declare-fun setNonEmpty!15332 () Bool)

(declare-fun setRes!15331 () Bool)

(assert (=> setNonEmpty!15332 (= setRes!15331 true)))

(declare-fun mapDefault!12133 () List!23842)

(declare-fun setElem!15332 () Context!2490)

(declare-fun setRest!15331 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15332 (= (_2!13652 (h!29159 mapDefault!12133)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15332 true) setRest!15331))))

(declare-fun setIsEmpty!15331 () Bool)

(assert (=> setIsEmpty!15331 setRes!15332))

(declare-fun setIsEmpty!15332 () Bool)

(assert (=> setIsEmpty!15332 setRes!15331))

(declare-fun mapIsEmpty!12133 () Bool)

(declare-fun mapRes!12133 () Bool)

(assert (=> mapIsEmpty!12133 mapRes!12133))

(declare-fun mapNonEmpty!12133 () Bool)

(declare-fun e!1354524 () Bool)

(assert (=> mapNonEmpty!12133 (= mapRes!12133 e!1354524)))

(declare-fun mapKey!12133 () (_ BitVec 32))

(declare-fun mapRest!12133 () (Array (_ BitVec 32) List!23842))

(assert (=> mapNonEmpty!12133 (= mapRest!12115 (store mapRest!12133 mapKey!12133 mapValue!12133))))

(declare-fun b!2125488 () Bool)

(assert (=> b!2125488 (= e!1354524 setRes!15332)))

(declare-fun condSetEmpty!15332 () Bool)

(assert (=> b!2125488 (= condSetEmpty!15332 (= (_2!13652 (h!29159 mapValue!12133)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun b!2125487 () Bool)

(declare-fun e!1354523 () Bool)

(assert (=> b!2125487 (= e!1354523 setRes!15331)))

(declare-fun condSetEmpty!15331 () Bool)

(assert (=> b!2125487 (= condSetEmpty!15331 (= (_2!13652 (h!29159 mapDefault!12133)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun condMapEmpty!12133 () Bool)

(assert (=> mapNonEmpty!12116 (= condMapEmpty!12133 (= mapRest!12115 ((as const (Array (_ BitVec 32) List!23842)) mapDefault!12133)))))

(assert (=> mapNonEmpty!12116 (and e!1354523 mapRes!12133)))

(assert (= (and mapNonEmpty!12116 condMapEmpty!12133) mapIsEmpty!12133))

(assert (= (and mapNonEmpty!12116 (not condMapEmpty!12133)) mapNonEmpty!12133))

(assert (= (and b!2125488 condSetEmpty!15332) setIsEmpty!15331))

(assert (= (and b!2125488 (not condSetEmpty!15332)) setNonEmpty!15331))

(assert (= (and mapNonEmpty!12133 ((_ is Cons!23758) mapValue!12133)) b!2125488))

(assert (= (and b!2125487 condSetEmpty!15331) setIsEmpty!15332))

(assert (= (and b!2125487 (not condSetEmpty!15331)) setNonEmpty!15332))

(assert (= (and mapNonEmpty!12116 ((_ is Cons!23758) mapDefault!12133)) b!2125487))

(declare-fun m!2577730 () Bool)

(assert (=> mapNonEmpty!12133 m!2577730))

(declare-fun b!2125489 () Bool)

(declare-fun e!1354525 () Bool)

(declare-fun setRes!15333 () Bool)

(assert (=> b!2125489 (= e!1354525 setRes!15333)))

(declare-fun condSetEmpty!15333 () Bool)

(assert (=> b!2125489 (= condSetEmpty!15333 (= (_2!13652 (h!29159 mapValue!12115)) ((as const (Array Context!2490 Bool)) false)))))

(declare-fun setIsEmpty!15333 () Bool)

(assert (=> setIsEmpty!15333 setRes!15333))

(declare-fun setNonEmpty!15333 () Bool)

(assert (=> setNonEmpty!15333 (= setRes!15333 true)))

(declare-fun setElem!15333 () Context!2490)

(declare-fun setRest!15333 () (InoxSet Context!2490))

(assert (=> setNonEmpty!15333 (= (_2!13652 (h!29159 mapValue!12115)) ((_ map or) (store ((as const (Array Context!2490 Bool)) false) setElem!15333 true) setRest!15333))))

(assert (=> mapNonEmpty!12116 e!1354525))

(assert (= (and b!2125489 condSetEmpty!15333) setIsEmpty!15333))

(assert (= (and b!2125489 (not condSetEmpty!15333)) setNonEmpty!15333))

(assert (= (and mapNonEmpty!12116 ((_ is Cons!23758) mapValue!12115)) b!2125489))

(declare-fun b_lambda!70525 () Bool)

(assert (= b_lambda!70521 (or b!2125156 b_lambda!70525)))

(declare-fun bs!443514 () Bool)

(declare-fun d!643953 () Bool)

(assert (= bs!443514 (and d!643953 b!2125156)))

(assert (=> bs!443514 (= (dynLambda!11357 lambda!78790 (h!29162 (_2!13653 (_1!13654 lt!795553)))) (= (totalInput!2931 (h!29162 (_2!13653 (_1!13654 lt!795553)))) totalInput!886))))

(assert (=> b!2125225 d!643953))

(declare-fun b_lambda!70527 () Bool)

(assert (= b_lambda!70523 (or b!2125156 b_lambda!70527)))

(declare-fun bs!443515 () Bool)

(declare-fun d!643955 () Bool)

(assert (= bs!443515 (and d!643955 b!2125156)))

(assert (=> bs!443515 (= (dynLambda!11357 lambda!78789 (h!29162 (_2!13653 (_1!13654 lt!795553)))) (= (res!919714 (h!29162 (_2!13653 (_1!13654 lt!795553)))) (_1!13653 (_1!13654 lt!795553))))))

(assert (=> b!2125284 d!643955))

(check-sat (not b!2125487) (not b!2125144) (not b!2125474) (not setNonEmpty!15285) (not b!2125469) (not b!2125432) (not setNonEmpty!15323) (not setNonEmpty!15282) (not d!643931) (not setNonEmpty!15331) (not setNonEmpty!15306) (not b!2125226) (not setNonEmpty!15302) (not setNonEmpty!15312) (not setNonEmpty!15301) (not b!2125463) b_and!171347 (not b!2125367) (not b!2125343) (not b!2125260) (not b!2125457) (not b!2125416) (not b!2125480) (not b!2125261) (not mapNonEmpty!12118) (not b!2125253) (not b!2125478) (not b!2125366) (not b!2125377) (not b!2125342) (not b!2125410) (not b_next!62463) (not b!2125358) (not b!2125312) (not b_next!62471) (not b!2125306) (not setNonEmpty!15300) (not setNonEmpty!15273) (not b!2125292) (not d!643923) (not b!2125309) (not mapNonEmpty!12130) (not b!2125268) (not mapNonEmpty!12121) (not setNonEmpty!15324) (not setNonEmpty!15309) (not setNonEmpty!15303) (not b!2125378) b_and!171339 (not b!2125162) (not b!2125397) (not d!643907) (not b!2125413) (not b_next!62467) (not b!2125412) (not b!2125468) (not b!2125462) (not b!2125329) (not setNonEmpty!15326) (not b!2125465) b_and!171337 (not b!2125263) (not b_next!62461) (not b!2125466) (not b!2125279) (not d!643911) (not b!2125391) (not d!643951) (not b!2125398) (not b!2125389) (not b!2125415) (not b!2125328) (not setNonEmpty!15276) (not b!2125387) (not d!643901) (not setNonEmpty!15264) (not b!2125401) (not b!2125441) (not b!2125488) (not b!2125479) (not b!2125390) (not b!2125297) (not mapNonEmpty!12117) (not b!2125458) (not b!2125259) (not b!2125442) (not b!2125399) (not b!2125461) (not mapNonEmpty!12124) (not b!2125359) (not setNonEmpty!15321) (not d!643919) (not b!2125464) (not d!643933) (not b!2125439) (not setNonEmpty!15325) (not b!2125475) b_and!171341 (not d!643897) (not b!2125427) (not b_lambda!70525) (not setNonEmpty!15269) (not setNonEmpty!15281) (not b!2125472) (not b!2125473) (not b!2125489) (not b!2125403) (not b!2125274) (not setNonEmpty!15313) (not d!643921) (not b!2125332) (not b!2125327) (not b!2125460) (not setNonEmpty!15293) (not b!2125151) (not b!2125330) (not b_next!62465) (not setNonEmpty!15320) (not b!2125357) (not b!2125341) (not b!2125300) b_and!171345 (not b!2125459) (not b!2125425) (not setNonEmpty!15318) (not b!2125295) (not b!2125278) (not d!643905) (not b!2125356) (not b!2125331) (not b!2125254) (not b!2125388) (not bm!128731) (not d!643917) (not mapNonEmpty!12127) (not b!2125392) (not b!2125414) (not b!2125265) (not setNonEmpty!15322) (not b!2125283) (not b!2125426) (not bm!128733) tp_is_empty!9497 (not b!2125303) (not b!2125402) (not b!2125372) (not b!2125310) (not b!2125400) (not b!2125467) (not b!2125471) (not b_next!62469) (not setNonEmpty!15319) b_and!171343 (not setNonEmpty!15292) (not setNonEmpty!15270) (not b!2125294) (not bm!128732) (not d!643935) (not setNonEmpty!15332) (not setNonEmpty!15299) (not setNonEmpty!15333) (not setNonEmpty!15288) (not b!2125411) (not b!2125476) (not mapNonEmpty!12133) (not b!2125470) (not b_lambda!70527) (not b!2125285) (not setNonEmpty!15294) (not b!2125477) (not d!643899) (not setNonEmpty!15291))
(check-sat b_and!171347 (not b_next!62463) (not b_next!62471) b_and!171339 (not b_next!62467) b_and!171341 (not b_next!62465) b_and!171345 (not b_next!62469) b_and!171343 b_and!171337 (not b_next!62461))
