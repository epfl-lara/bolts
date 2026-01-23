; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14480 () Bool)

(assert start!14480)

(declare-fun b!137672 () Bool)

(declare-fun b_free!4037 () Bool)

(declare-fun b_next!4037 () Bool)

(assert (=> b!137672 (= b_free!4037 (not b_next!4037))))

(declare-fun tp!71925 () Bool)

(declare-fun b_and!6189 () Bool)

(assert (=> b!137672 (= tp!71925 b_and!6189)))

(declare-fun b!137670 () Bool)

(declare-fun b_free!4039 () Bool)

(declare-fun b_next!4039 () Bool)

(assert (=> b!137670 (= b_free!4039 (not b_next!4039))))

(declare-fun tp!71926 () Bool)

(declare-fun b_and!6191 () Bool)

(assert (=> b!137670 (= tp!71926 b_and!6191)))

(declare-fun b!137668 () Bool)

(declare-fun e!80330 () Bool)

(declare-fun tp!71921 () Bool)

(declare-fun mapRes!1775 () Bool)

(assert (=> b!137668 (= e!80330 (and tp!71921 mapRes!1775))))

(declare-fun condMapEmpty!1775 () Bool)

(declare-datatypes ((C!2116 0))(
  ( (C!2117 (val!944 Int)) )
))
(declare-datatypes ((List!2289 0))(
  ( (Nil!2279) (Cons!2279 (h!7676 C!2116) (t!22875 List!2289)) )
))
(declare-datatypes ((IArray!1207 0))(
  ( (IArray!1208 (innerList!661 List!2289)) )
))
(declare-datatypes ((Conc!603 0))(
  ( (Node!603 (left!1774 Conc!603) (right!2104 Conc!603) (csize!1436 Int) (cheight!814 Int)) (Leaf!1129 (xs!3198 IArray!1207) (csize!1437 Int)) (Empty!603) )
))
(declare-datatypes ((BalanceConc!1214 0))(
  ( (BalanceConc!1215 (c!29053 Conc!603)) )
))
(declare-datatypes ((Regex!597 0))(
  ( (ElementMatch!597 (c!29054 C!2116)) (Concat!993 (regOne!1706 Regex!597) (regTwo!1706 Regex!597)) (EmptyExpr!597) (Star!597 (reg!926 Regex!597)) (EmptyLang!597) (Union!597 (regOne!1707 Regex!597) (regTwo!1707 Regex!597)) )
))
(declare-datatypes ((List!2290 0))(
  ( (Nil!2280) (Cons!2280 (h!7677 Regex!597) (t!22876 List!2290)) )
))
(declare-datatypes ((Context!274 0))(
  ( (Context!275 (exprs!637 List!2290)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!340 0))(
  ( (tuple3!341 (_1!1449 (InoxSet Context!274)) (_2!1449 Int) (_3!215 Int)) )
))
(declare-datatypes ((array!1737 0))(
  ( (array!1738 (arr!802 (Array (_ BitVec 32) (_ BitVec 64))) (size!2056 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2468 0))(
  ( (tuple2!2469 (_1!1450 tuple3!340) (_2!1450 Int)) )
))
(declare-datatypes ((List!2291 0))(
  ( (Nil!2281) (Cons!2281 (h!7678 tuple2!2468) (t!22877 List!2291)) )
))
(declare-datatypes ((array!1739 0))(
  ( (array!1740 (arr!803 (Array (_ BitVec 32) List!2291)) (size!2057 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!918 0))(
  ( (LongMapFixedSize!919 (defaultEntry!806 Int) (mask!1509 (_ BitVec 32)) (extraKeys!705 (_ BitVec 32)) (zeroValue!715 List!2291) (minValue!715 List!2291) (_size!1035 (_ BitVec 32)) (_keys!750 array!1737) (_values!737 array!1739) (_vacant!520 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1793 0))(
  ( (Cell!1794 (v!13518 LongMapFixedSize!918)) )
))
(declare-datatypes ((MutLongMap!459 0))(
  ( (LongMap!459 (underlying!1105 Cell!1793)) (MutLongMapExt!458 (__x!2282 Int)) )
))
(declare-datatypes ((Cell!1795 0))(
  ( (Cell!1796 (v!13519 MutLongMap!459)) )
))
(declare-datatypes ((Hashable!439 0))(
  ( (HashableExt!438 (__x!2283 Int)) )
))
(declare-datatypes ((MutableMap!439 0))(
  ( (MutableMapExt!438 (__x!2284 Int)) (HashMap!439 (underlying!1106 Cell!1795) (hashF!2315 Hashable!439) (_size!1036 (_ BitVec 32)) (defaultValue!588 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!138 0))(
  ( (CacheFurthestNullable!139 (cache!892 MutableMap!439) (totalInput!1618 BalanceConc!1214)) )
))
(declare-fun thiss!29168 () CacheFurthestNullable!138)

(declare-fun mapDefault!1775 () List!2291)

(assert (=> b!137668 (= condMapEmpty!1775 (= (arr!803 (_values!737 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) ((as const (Array (_ BitVec 32) List!2291)) mapDefault!1775)))))

(declare-fun b!137669 () Bool)

(declare-fun e!80332 () Bool)

(declare-fun e!80326 () Bool)

(assert (=> b!137669 (= e!80332 e!80326)))

(declare-fun tp!71920 () Bool)

(declare-fun tp!71928 () Bool)

(declare-fun array_inv!577 (array!1737) Bool)

(declare-fun array_inv!578 (array!1739) Bool)

(assert (=> b!137670 (= e!80326 (and tp!71926 tp!71920 tp!71928 (array_inv!577 (_keys!750 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) (array_inv!578 (_values!737 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) e!80330))))

(declare-fun e!80336 () Bool)

(declare-fun e!80334 () Bool)

(declare-fun e!80333 () Bool)

(declare-fun b!137671 () Bool)

(declare-fun inv!3023 (BalanceConc!1214) Bool)

(assert (=> b!137671 (= e!80334 (and e!80333 (inv!3023 (totalInput!1618 thiss!29168)) e!80336))))

(declare-fun e!80335 () Bool)

(assert (=> b!137672 (= e!80333 (and e!80335 tp!71925))))

(declare-fun setIsEmpty!1818 () Bool)

(declare-fun setRes!1818 () Bool)

(assert (=> setIsEmpty!1818 setRes!1818))

(declare-fun res!64384 () Bool)

(declare-fun e!80328 () Bool)

(assert (=> start!14480 (=> (not res!64384) (not e!80328))))

(declare-fun lastNullablePos!98 () Int)

(declare-fun from!959 () Int)

(assert (=> start!14480 (= res!64384 (and (>= lastNullablePos!98 (- 1)) (< lastNullablePos!98 from!959)))))

(assert (=> start!14480 e!80328))

(assert (=> start!14480 true))

(declare-fun condSetEmpty!1818 () Bool)

(declare-fun z!523 () (InoxSet Context!274))

(assert (=> start!14480 (= condSetEmpty!1818 (= z!523 ((as const (Array Context!274 Bool)) false)))))

(assert (=> start!14480 setRes!1818))

(declare-fun inv!3024 (CacheFurthestNullable!138) Bool)

(assert (=> start!14480 (and (inv!3024 thiss!29168) e!80334)))

(declare-fun b!137673 () Bool)

(declare-fun e!80327 () Bool)

(assert (=> b!137673 (= e!80327 (= lastNullablePos!98 (- from!959 1)))))

(declare-fun mapNonEmpty!1775 () Bool)

(declare-fun tp!71927 () Bool)

(declare-fun tp!71922 () Bool)

(assert (=> mapNonEmpty!1775 (= mapRes!1775 (and tp!71927 tp!71922))))

(declare-fun mapKey!1775 () (_ BitVec 32))

(declare-fun mapRest!1775 () (Array (_ BitVec 32) List!2291))

(declare-fun mapValue!1775 () List!2291)

(assert (=> mapNonEmpty!1775 (= (arr!803 (_values!737 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) (store mapRest!1775 mapKey!1775 mapValue!1775))))

(declare-fun b!137674 () Bool)

(declare-fun res!64383 () Bool)

(assert (=> b!137674 (=> (not res!64383) (not e!80328))))

(declare-fun validCacheMapFurthestNullable!22 (MutableMap!439 BalanceConc!1214) Bool)

(assert (=> b!137674 (= res!64383 (validCacheMapFurthestNullable!22 (cache!892 thiss!29168) (totalInput!1618 thiss!29168)))))

(declare-fun b!137675 () Bool)

(declare-fun res!64381 () Bool)

(assert (=> b!137675 (=> (not res!64381) (not e!80328))))

(assert (=> b!137675 (= res!64381 e!80327)))

(declare-fun res!64382 () Bool)

(assert (=> b!137675 (=> res!64382 e!80327)))

(declare-fun nullableZipper!10 ((InoxSet Context!274)) Bool)

(assert (=> b!137675 (= res!64382 (not (nullableZipper!10 z!523)))))

(declare-fun b!137676 () Bool)

(declare-fun res!64385 () Bool)

(assert (=> b!137676 (=> (not res!64385) (not e!80328))))

(get-info :version)

(assert (=> b!137676 (= res!64385 ((_ is HashMap!439) (cache!892 thiss!29168)))))

(declare-fun b!137677 () Bool)

(declare-fun tp!71924 () Bool)

(declare-fun inv!3025 (Conc!603) Bool)

(assert (=> b!137677 (= e!80336 (and (inv!3025 (c!29053 (totalInput!1618 thiss!29168))) tp!71924))))

(declare-fun setElem!1818 () Context!274)

(declare-fun tp!71923 () Bool)

(declare-fun e!80329 () Bool)

(declare-fun setNonEmpty!1818 () Bool)

(declare-fun inv!3026 (Context!274) Bool)

(assert (=> setNonEmpty!1818 (= setRes!1818 (and tp!71923 (inv!3026 setElem!1818) e!80329))))

(declare-fun setRest!1818 () (InoxSet Context!274))

(assert (=> setNonEmpty!1818 (= z!523 ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1818 true) setRest!1818))))

(declare-fun mapIsEmpty!1775 () Bool)

(assert (=> mapIsEmpty!1775 mapRes!1775))

(declare-fun b!137678 () Bool)

(declare-fun valid!412 (MutableMap!439) Bool)

(assert (=> b!137678 (= e!80328 (not (valid!412 (cache!892 thiss!29168))))))

(declare-fun b!137679 () Bool)

(declare-fun tp!71929 () Bool)

(assert (=> b!137679 (= e!80329 tp!71929)))

(declare-fun b!137680 () Bool)

(declare-fun e!80331 () Bool)

(declare-fun lt!41032 () MutLongMap!459)

(assert (=> b!137680 (= e!80335 (and e!80331 ((_ is LongMap!459) lt!41032)))))

(assert (=> b!137680 (= lt!41032 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))

(declare-fun b!137681 () Bool)

(assert (=> b!137681 (= e!80331 e!80332)))

(assert (= (and start!14480 res!64384) b!137675))

(assert (= (and b!137675 (not res!64382)) b!137673))

(assert (= (and b!137675 res!64381) b!137674))

(assert (= (and b!137674 res!64383) b!137676))

(assert (= (and b!137676 res!64385) b!137678))

(assert (= (and start!14480 condSetEmpty!1818) setIsEmpty!1818))

(assert (= (and start!14480 (not condSetEmpty!1818)) setNonEmpty!1818))

(assert (= setNonEmpty!1818 b!137679))

(assert (= (and b!137668 condMapEmpty!1775) mapIsEmpty!1775))

(assert (= (and b!137668 (not condMapEmpty!1775)) mapNonEmpty!1775))

(assert (= b!137670 b!137668))

(assert (= b!137669 b!137670))

(assert (= b!137681 b!137669))

(assert (= (and b!137680 ((_ is LongMap!459) (v!13519 (underlying!1106 (cache!892 thiss!29168))))) b!137681))

(assert (= b!137672 b!137680))

(assert (= (and b!137671 ((_ is HashMap!439) (cache!892 thiss!29168))) b!137672))

(assert (= b!137671 b!137677))

(assert (= start!14480 b!137671))

(declare-fun m!121756 () Bool)

(assert (=> b!137677 m!121756))

(declare-fun m!121758 () Bool)

(assert (=> b!137678 m!121758))

(declare-fun m!121760 () Bool)

(assert (=> b!137674 m!121760))

(declare-fun m!121762 () Bool)

(assert (=> b!137670 m!121762))

(declare-fun m!121764 () Bool)

(assert (=> b!137670 m!121764))

(declare-fun m!121766 () Bool)

(assert (=> b!137675 m!121766))

(declare-fun m!121768 () Bool)

(assert (=> b!137671 m!121768))

(declare-fun m!121770 () Bool)

(assert (=> start!14480 m!121770))

(declare-fun m!121772 () Bool)

(assert (=> setNonEmpty!1818 m!121772))

(declare-fun m!121774 () Bool)

(assert (=> mapNonEmpty!1775 m!121774))

(check-sat (not mapNonEmpty!1775) (not b_next!4039) (not start!14480) (not b!137668) (not setNonEmpty!1818) b_and!6189 b_and!6191 (not b!137678) (not b!137675) (not b!137679) (not b!137670) (not b!137674) (not b!137671) (not b_next!4037) (not b!137677))
(check-sat b_and!6191 b_and!6189 (not b_next!4037) (not b_next!4039))
(get-model)

(declare-fun d!32924 () Bool)

(assert (=> d!32924 (= (array_inv!577 (_keys!750 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) (bvsge (size!2056 (_keys!750 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) #b00000000000000000000000000000000))))

(assert (=> b!137670 d!32924))

(declare-fun d!32926 () Bool)

(assert (=> d!32926 (= (array_inv!578 (_values!737 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) (bvsge (size!2057 (_values!737 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))) #b00000000000000000000000000000000))))

(assert (=> b!137670 d!32926))

(declare-fun b!137687 () Bool)

(assert (=> b!137687 true))

(declare-fun d!32928 () Bool)

(declare-fun res!64390 () Bool)

(declare-fun e!80339 () Bool)

(assert (=> d!32928 (=> (not res!64390) (not e!80339))))

(assert (=> d!32928 (= res!64390 (valid!412 (cache!892 thiss!29168)))))

(assert (=> d!32928 (= (validCacheMapFurthestNullable!22 (cache!892 thiss!29168) (totalInput!1618 thiss!29168)) e!80339)))

(declare-fun b!137686 () Bool)

(declare-fun res!64391 () Bool)

(assert (=> b!137686 (=> (not res!64391) (not e!80339))))

(declare-fun invariantList!39 (List!2291) Bool)

(declare-datatypes ((ListMap!101 0))(
  ( (ListMap!102 (toList!299 List!2291)) )
))
(declare-fun map!607 (MutableMap!439) ListMap!101)

(assert (=> b!137686 (= res!64391 (invariantList!39 (toList!299 (map!607 (cache!892 thiss!29168)))))))

(declare-fun lambda!3329 () Int)

(declare-fun forall!355 (List!2291 Int) Bool)

(assert (=> b!137687 (= e!80339 (forall!355 (toList!299 (map!607 (cache!892 thiss!29168))) lambda!3329))))

(assert (= (and d!32928 res!64390) b!137686))

(assert (= (and b!137686 res!64391) b!137687))

(assert (=> d!32928 m!121758))

(declare-fun m!121777 () Bool)

(assert (=> b!137686 m!121777))

(declare-fun m!121779 () Bool)

(assert (=> b!137686 m!121779))

(assert (=> b!137687 m!121777))

(declare-fun m!121781 () Bool)

(assert (=> b!137687 m!121781))

(assert (=> b!137674 d!32928))

(declare-fun d!32930 () Bool)

(declare-fun res!64396 () Bool)

(declare-fun e!80342 () Bool)

(assert (=> d!32930 (=> (not res!64396) (not e!80342))))

(declare-fun valid!413 (MutLongMap!459) Bool)

(assert (=> d!32930 (= res!64396 (valid!413 (v!13519 (underlying!1106 (cache!892 thiss!29168)))))))

(assert (=> d!32930 (= (valid!412 (cache!892 thiss!29168)) e!80342)))

(declare-fun b!137694 () Bool)

(declare-fun res!64397 () Bool)

(assert (=> b!137694 (=> (not res!64397) (not e!80342))))

(declare-fun lambda!3332 () Int)

(declare-datatypes ((tuple2!2470 0))(
  ( (tuple2!2471 (_1!1451 (_ BitVec 64)) (_2!1451 List!2291)) )
))
(declare-datatypes ((List!2292 0))(
  ( (Nil!2282) (Cons!2282 (h!7679 tuple2!2470) (t!22878 List!2292)) )
))
(declare-fun forall!356 (List!2292 Int) Bool)

(declare-datatypes ((ListLongMap!45 0))(
  ( (ListLongMap!46 (toList!300 List!2292)) )
))
(declare-fun map!608 (MutLongMap!459) ListLongMap!45)

(assert (=> b!137694 (= res!64397 (forall!356 (toList!300 (map!608 (v!13519 (underlying!1106 (cache!892 thiss!29168))))) lambda!3332))))

(declare-fun b!137695 () Bool)

(declare-fun allKeysSameHashInMap!14 (ListLongMap!45 Hashable!439) Bool)

(assert (=> b!137695 (= e!80342 (allKeysSameHashInMap!14 (map!608 (v!13519 (underlying!1106 (cache!892 thiss!29168)))) (hashF!2315 (cache!892 thiss!29168))))))

(assert (= (and d!32930 res!64396) b!137694))

(assert (= (and b!137694 res!64397) b!137695))

(declare-fun m!121783 () Bool)

(assert (=> d!32930 m!121783))

(declare-fun m!121785 () Bool)

(assert (=> b!137694 m!121785))

(declare-fun m!121787 () Bool)

(assert (=> b!137694 m!121787))

(assert (=> b!137695 m!121785))

(assert (=> b!137695 m!121785))

(declare-fun m!121789 () Bool)

(assert (=> b!137695 m!121789))

(assert (=> b!137678 d!32930))

(declare-fun d!32932 () Bool)

(declare-fun isBalanced!182 (Conc!603) Bool)

(assert (=> d!32932 (= (inv!3023 (totalInput!1618 thiss!29168)) (isBalanced!182 (c!29053 (totalInput!1618 thiss!29168))))))

(declare-fun bs!12798 () Bool)

(assert (= bs!12798 d!32932))

(declare-fun m!121791 () Bool)

(assert (=> bs!12798 m!121791))

(assert (=> b!137671 d!32932))

(declare-fun d!32934 () Bool)

(declare-fun lambda!3335 () Int)

(declare-fun exists!46 ((InoxSet Context!274) Int) Bool)

(assert (=> d!32934 (= (nullableZipper!10 z!523) (exists!46 z!523 lambda!3335))))

(declare-fun bs!12799 () Bool)

(assert (= bs!12799 d!32934))

(declare-fun m!121793 () Bool)

(assert (=> bs!12799 m!121793))

(assert (=> b!137675 d!32934))

(declare-fun d!32936 () Bool)

(declare-fun res!64400 () Bool)

(declare-fun e!80345 () Bool)

(assert (=> d!32936 (=> (not res!64400) (not e!80345))))

(assert (=> d!32936 (= res!64400 ((_ is HashMap!439) (cache!892 thiss!29168)))))

(assert (=> d!32936 (= (inv!3024 thiss!29168) e!80345)))

(declare-fun b!137698 () Bool)

(assert (=> b!137698 (= e!80345 (validCacheMapFurthestNullable!22 (cache!892 thiss!29168) (totalInput!1618 thiss!29168)))))

(assert (= (and d!32936 res!64400) b!137698))

(assert (=> b!137698 m!121760))

(assert (=> start!14480 d!32936))

(declare-fun d!32938 () Bool)

(declare-fun c!29059 () Bool)

(assert (=> d!32938 (= c!29059 ((_ is Node!603) (c!29053 (totalInput!1618 thiss!29168))))))

(declare-fun e!80350 () Bool)

(assert (=> d!32938 (= (inv!3025 (c!29053 (totalInput!1618 thiss!29168))) e!80350)))

(declare-fun b!137705 () Bool)

(declare-fun inv!3027 (Conc!603) Bool)

(assert (=> b!137705 (= e!80350 (inv!3027 (c!29053 (totalInput!1618 thiss!29168))))))

(declare-fun b!137706 () Bool)

(declare-fun e!80351 () Bool)

(assert (=> b!137706 (= e!80350 e!80351)))

(declare-fun res!64403 () Bool)

(assert (=> b!137706 (= res!64403 (not ((_ is Leaf!1129) (c!29053 (totalInput!1618 thiss!29168)))))))

(assert (=> b!137706 (=> res!64403 e!80351)))

(declare-fun b!137707 () Bool)

(declare-fun inv!3028 (Conc!603) Bool)

(assert (=> b!137707 (= e!80351 (inv!3028 (c!29053 (totalInput!1618 thiss!29168))))))

(assert (= (and d!32938 c!29059) b!137705))

(assert (= (and d!32938 (not c!29059)) b!137706))

(assert (= (and b!137706 (not res!64403)) b!137707))

(declare-fun m!121795 () Bool)

(assert (=> b!137705 m!121795))

(declare-fun m!121797 () Bool)

(assert (=> b!137707 m!121797))

(assert (=> b!137677 d!32938))

(declare-fun d!32940 () Bool)

(declare-fun lambda!3338 () Int)

(declare-fun forall!357 (List!2290 Int) Bool)

(assert (=> d!32940 (= (inv!3026 setElem!1818) (forall!357 (exprs!637 setElem!1818) lambda!3338))))

(declare-fun bs!12800 () Bool)

(assert (= bs!12800 d!32940))

(declare-fun m!121799 () Bool)

(assert (=> bs!12800 m!121799))

(assert (=> setNonEmpty!1818 d!32940))

(declare-fun b!137714 () Bool)

(declare-fun e!80356 () Bool)

(declare-fun setRes!1821 () Bool)

(declare-fun tp!71937 () Bool)

(assert (=> b!137714 (= e!80356 (and setRes!1821 tp!71937))))

(declare-fun condSetEmpty!1821 () Bool)

(assert (=> b!137714 (= condSetEmpty!1821 (= (_1!1449 (_1!1450 (h!7678 (zeroValue!715 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))))) ((as const (Array Context!274 Bool)) false)))))

(declare-fun tp!71938 () Bool)

(declare-fun e!80357 () Bool)

(declare-fun setNonEmpty!1821 () Bool)

(declare-fun setElem!1821 () Context!274)

(assert (=> setNonEmpty!1821 (= setRes!1821 (and tp!71938 (inv!3026 setElem!1821) e!80357))))

(declare-fun setRest!1821 () (InoxSet Context!274))

(assert (=> setNonEmpty!1821 (= (_1!1449 (_1!1450 (h!7678 (zeroValue!715 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))))) ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1821 true) setRest!1821))))

(declare-fun setIsEmpty!1821 () Bool)

(assert (=> setIsEmpty!1821 setRes!1821))

(declare-fun b!137715 () Bool)

(declare-fun tp!71936 () Bool)

(assert (=> b!137715 (= e!80357 tp!71936)))

(assert (=> b!137670 (= tp!71920 e!80356)))

(assert (= (and b!137714 condSetEmpty!1821) setIsEmpty!1821))

(assert (= (and b!137714 (not condSetEmpty!1821)) setNonEmpty!1821))

(assert (= setNonEmpty!1821 b!137715))

(assert (= (and b!137670 ((_ is Cons!2281) (zeroValue!715 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168)))))))) b!137714))

(declare-fun m!121801 () Bool)

(assert (=> setNonEmpty!1821 m!121801))

(declare-fun b!137716 () Bool)

(declare-fun e!80358 () Bool)

(declare-fun setRes!1822 () Bool)

(declare-fun tp!71940 () Bool)

(assert (=> b!137716 (= e!80358 (and setRes!1822 tp!71940))))

(declare-fun condSetEmpty!1822 () Bool)

(assert (=> b!137716 (= condSetEmpty!1822 (= (_1!1449 (_1!1450 (h!7678 (minValue!715 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))))) ((as const (Array Context!274 Bool)) false)))))

(declare-fun tp!71941 () Bool)

(declare-fun setNonEmpty!1822 () Bool)

(declare-fun setElem!1822 () Context!274)

(declare-fun e!80359 () Bool)

(assert (=> setNonEmpty!1822 (= setRes!1822 (and tp!71941 (inv!3026 setElem!1822) e!80359))))

(declare-fun setRest!1822 () (InoxSet Context!274))

(assert (=> setNonEmpty!1822 (= (_1!1449 (_1!1450 (h!7678 (minValue!715 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168))))))))) ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1822 true) setRest!1822))))

(declare-fun setIsEmpty!1822 () Bool)

(assert (=> setIsEmpty!1822 setRes!1822))

(declare-fun b!137717 () Bool)

(declare-fun tp!71939 () Bool)

(assert (=> b!137717 (= e!80359 tp!71939)))

(assert (=> b!137670 (= tp!71928 e!80358)))

(assert (= (and b!137716 condSetEmpty!1822) setIsEmpty!1822))

(assert (= (and b!137716 (not condSetEmpty!1822)) setNonEmpty!1822))

(assert (= setNonEmpty!1822 b!137717))

(assert (= (and b!137670 ((_ is Cons!2281) (minValue!715 (v!13518 (underlying!1105 (v!13519 (underlying!1106 (cache!892 thiss!29168)))))))) b!137716))

(declare-fun m!121803 () Bool)

(assert (=> setNonEmpty!1822 m!121803))

(declare-fun condMapEmpty!1778 () Bool)

(declare-fun mapDefault!1778 () List!2291)

(assert (=> mapNonEmpty!1775 (= condMapEmpty!1778 (= mapRest!1775 ((as const (Array (_ BitVec 32) List!2291)) mapDefault!1778)))))

(declare-fun e!80368 () Bool)

(declare-fun mapRes!1778 () Bool)

(assert (=> mapNonEmpty!1775 (= tp!71927 (and e!80368 mapRes!1778))))

(declare-fun setIsEmpty!1827 () Bool)

(declare-fun setRes!1828 () Bool)

(assert (=> setIsEmpty!1827 setRes!1828))

(declare-fun tp!71958 () Bool)

(declare-fun setNonEmpty!1827 () Bool)

(declare-fun setElem!1828 () Context!274)

(declare-fun e!80371 () Bool)

(assert (=> setNonEmpty!1827 (= setRes!1828 (and tp!71958 (inv!3026 setElem!1828) e!80371))))

(declare-fun mapValue!1778 () List!2291)

(declare-fun setRest!1827 () (InoxSet Context!274))

(assert (=> setNonEmpty!1827 (= (_1!1449 (_1!1450 (h!7678 mapValue!1778))) ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1828 true) setRest!1827))))

(declare-fun b!137728 () Bool)

(declare-fun setRes!1827 () Bool)

(declare-fun tp!71961 () Bool)

(assert (=> b!137728 (= e!80368 (and setRes!1827 tp!71961))))

(declare-fun condSetEmpty!1828 () Bool)

(assert (=> b!137728 (= condSetEmpty!1828 (= (_1!1449 (_1!1450 (h!7678 mapDefault!1778))) ((as const (Array Context!274 Bool)) false)))))

(declare-fun b!137729 () Bool)

(declare-fun e!80370 () Bool)

(declare-fun tp!71957 () Bool)

(assert (=> b!137729 (= e!80370 tp!71957)))

(declare-fun b!137730 () Bool)

(declare-fun tp!71962 () Bool)

(assert (=> b!137730 (= e!80371 tp!71962)))

(declare-fun b!137731 () Bool)

(declare-fun e!80369 () Bool)

(declare-fun tp!71960 () Bool)

(assert (=> b!137731 (= e!80369 (and setRes!1828 tp!71960))))

(declare-fun condSetEmpty!1827 () Bool)

(assert (=> b!137731 (= condSetEmpty!1827 (= (_1!1449 (_1!1450 (h!7678 mapValue!1778))) ((as const (Array Context!274 Bool)) false)))))

(declare-fun mapNonEmpty!1778 () Bool)

(declare-fun tp!71956 () Bool)

(assert (=> mapNonEmpty!1778 (= mapRes!1778 (and tp!71956 e!80369))))

(declare-fun mapRest!1778 () (Array (_ BitVec 32) List!2291))

(declare-fun mapKey!1778 () (_ BitVec 32))

(assert (=> mapNonEmpty!1778 (= mapRest!1775 (store mapRest!1778 mapKey!1778 mapValue!1778))))

(declare-fun setIsEmpty!1828 () Bool)

(assert (=> setIsEmpty!1828 setRes!1827))

(declare-fun mapIsEmpty!1778 () Bool)

(assert (=> mapIsEmpty!1778 mapRes!1778))

(declare-fun setElem!1827 () Context!274)

(declare-fun setNonEmpty!1828 () Bool)

(declare-fun tp!71959 () Bool)

(assert (=> setNonEmpty!1828 (= setRes!1827 (and tp!71959 (inv!3026 setElem!1827) e!80370))))

(declare-fun setRest!1828 () (InoxSet Context!274))

(assert (=> setNonEmpty!1828 (= (_1!1449 (_1!1450 (h!7678 mapDefault!1778))) ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1827 true) setRest!1828))))

(assert (= (and mapNonEmpty!1775 condMapEmpty!1778) mapIsEmpty!1778))

(assert (= (and mapNonEmpty!1775 (not condMapEmpty!1778)) mapNonEmpty!1778))

(assert (= (and b!137731 condSetEmpty!1827) setIsEmpty!1827))

(assert (= (and b!137731 (not condSetEmpty!1827)) setNonEmpty!1827))

(assert (= setNonEmpty!1827 b!137730))

(assert (= (and mapNonEmpty!1778 ((_ is Cons!2281) mapValue!1778)) b!137731))

(assert (= (and b!137728 condSetEmpty!1828) setIsEmpty!1828))

(assert (= (and b!137728 (not condSetEmpty!1828)) setNonEmpty!1828))

(assert (= setNonEmpty!1828 b!137729))

(assert (= (and mapNonEmpty!1775 ((_ is Cons!2281) mapDefault!1778)) b!137728))

(declare-fun m!121805 () Bool)

(assert (=> setNonEmpty!1827 m!121805))

(declare-fun m!121807 () Bool)

(assert (=> mapNonEmpty!1778 m!121807))

(declare-fun m!121809 () Bool)

(assert (=> setNonEmpty!1828 m!121809))

(declare-fun b!137732 () Bool)

(declare-fun e!80372 () Bool)

(declare-fun setRes!1829 () Bool)

(declare-fun tp!71964 () Bool)

(assert (=> b!137732 (= e!80372 (and setRes!1829 tp!71964))))

(declare-fun condSetEmpty!1829 () Bool)

(assert (=> b!137732 (= condSetEmpty!1829 (= (_1!1449 (_1!1450 (h!7678 mapValue!1775))) ((as const (Array Context!274 Bool)) false)))))

(declare-fun setElem!1829 () Context!274)

(declare-fun e!80373 () Bool)

(declare-fun tp!71965 () Bool)

(declare-fun setNonEmpty!1829 () Bool)

(assert (=> setNonEmpty!1829 (= setRes!1829 (and tp!71965 (inv!3026 setElem!1829) e!80373))))

(declare-fun setRest!1829 () (InoxSet Context!274))

(assert (=> setNonEmpty!1829 (= (_1!1449 (_1!1450 (h!7678 mapValue!1775))) ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1829 true) setRest!1829))))

(declare-fun setIsEmpty!1829 () Bool)

(assert (=> setIsEmpty!1829 setRes!1829))

(declare-fun b!137733 () Bool)

(declare-fun tp!71963 () Bool)

(assert (=> b!137733 (= e!80373 tp!71963)))

(assert (=> mapNonEmpty!1775 (= tp!71922 e!80372)))

(assert (= (and b!137732 condSetEmpty!1829) setIsEmpty!1829))

(assert (= (and b!137732 (not condSetEmpty!1829)) setNonEmpty!1829))

(assert (= setNonEmpty!1829 b!137733))

(assert (= (and mapNonEmpty!1775 ((_ is Cons!2281) mapValue!1775)) b!137732))

(declare-fun m!121811 () Bool)

(assert (=> setNonEmpty!1829 m!121811))

(declare-fun b!137738 () Bool)

(declare-fun e!80376 () Bool)

(declare-fun tp!71970 () Bool)

(declare-fun tp!71971 () Bool)

(assert (=> b!137738 (= e!80376 (and tp!71970 tp!71971))))

(assert (=> b!137679 (= tp!71929 e!80376)))

(assert (= (and b!137679 ((_ is Cons!2280) (exprs!637 setElem!1818))) b!137738))

(declare-fun b!137739 () Bool)

(declare-fun e!80377 () Bool)

(declare-fun setRes!1830 () Bool)

(declare-fun tp!71973 () Bool)

(assert (=> b!137739 (= e!80377 (and setRes!1830 tp!71973))))

(declare-fun condSetEmpty!1830 () Bool)

(assert (=> b!137739 (= condSetEmpty!1830 (= (_1!1449 (_1!1450 (h!7678 mapDefault!1775))) ((as const (Array Context!274 Bool)) false)))))

(declare-fun setNonEmpty!1830 () Bool)

(declare-fun tp!71974 () Bool)

(declare-fun e!80378 () Bool)

(declare-fun setElem!1830 () Context!274)

(assert (=> setNonEmpty!1830 (= setRes!1830 (and tp!71974 (inv!3026 setElem!1830) e!80378))))

(declare-fun setRest!1830 () (InoxSet Context!274))

(assert (=> setNonEmpty!1830 (= (_1!1449 (_1!1450 (h!7678 mapDefault!1775))) ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1830 true) setRest!1830))))

(declare-fun setIsEmpty!1830 () Bool)

(assert (=> setIsEmpty!1830 setRes!1830))

(declare-fun b!137740 () Bool)

(declare-fun tp!71972 () Bool)

(assert (=> b!137740 (= e!80378 tp!71972)))

(assert (=> b!137668 (= tp!71921 e!80377)))

(assert (= (and b!137739 condSetEmpty!1830) setIsEmpty!1830))

(assert (= (and b!137739 (not condSetEmpty!1830)) setNonEmpty!1830))

(assert (= setNonEmpty!1830 b!137740))

(assert (= (and b!137668 ((_ is Cons!2281) mapDefault!1775)) b!137739))

(declare-fun m!121813 () Bool)

(assert (=> setNonEmpty!1830 m!121813))

(declare-fun tp!71981 () Bool)

(declare-fun tp!71982 () Bool)

(declare-fun e!80383 () Bool)

(declare-fun b!137749 () Bool)

(assert (=> b!137749 (= e!80383 (and (inv!3025 (left!1774 (c!29053 (totalInput!1618 thiss!29168)))) tp!71981 (inv!3025 (right!2104 (c!29053 (totalInput!1618 thiss!29168)))) tp!71982))))

(declare-fun b!137751 () Bool)

(declare-fun e!80384 () Bool)

(declare-fun tp!71983 () Bool)

(assert (=> b!137751 (= e!80384 tp!71983)))

(declare-fun b!137750 () Bool)

(declare-fun inv!3029 (IArray!1207) Bool)

(assert (=> b!137750 (= e!80383 (and (inv!3029 (xs!3198 (c!29053 (totalInput!1618 thiss!29168)))) e!80384))))

(assert (=> b!137677 (= tp!71924 (and (inv!3025 (c!29053 (totalInput!1618 thiss!29168))) e!80383))))

(assert (= (and b!137677 ((_ is Node!603) (c!29053 (totalInput!1618 thiss!29168)))) b!137749))

(assert (= b!137750 b!137751))

(assert (= (and b!137677 ((_ is Leaf!1129) (c!29053 (totalInput!1618 thiss!29168)))) b!137750))

(declare-fun m!121815 () Bool)

(assert (=> b!137749 m!121815))

(declare-fun m!121817 () Bool)

(assert (=> b!137749 m!121817))

(declare-fun m!121819 () Bool)

(assert (=> b!137750 m!121819))

(assert (=> b!137677 m!121756))

(declare-fun condSetEmpty!1833 () Bool)

(assert (=> setNonEmpty!1818 (= condSetEmpty!1833 (= setRest!1818 ((as const (Array Context!274 Bool)) false)))))

(declare-fun setRes!1833 () Bool)

(assert (=> setNonEmpty!1818 (= tp!71923 setRes!1833)))

(declare-fun setIsEmpty!1833 () Bool)

(assert (=> setIsEmpty!1833 setRes!1833))

(declare-fun tp!71988 () Bool)

(declare-fun setNonEmpty!1833 () Bool)

(declare-fun setElem!1833 () Context!274)

(declare-fun e!80387 () Bool)

(assert (=> setNonEmpty!1833 (= setRes!1833 (and tp!71988 (inv!3026 setElem!1833) e!80387))))

(declare-fun setRest!1833 () (InoxSet Context!274))

(assert (=> setNonEmpty!1833 (= setRest!1818 ((_ map or) (store ((as const (Array Context!274 Bool)) false) setElem!1833 true) setRest!1833))))

(declare-fun b!137756 () Bool)

(declare-fun tp!71989 () Bool)

(assert (=> b!137756 (= e!80387 tp!71989)))

(assert (= (and setNonEmpty!1818 condSetEmpty!1833) setIsEmpty!1833))

(assert (= (and setNonEmpty!1818 (not condSetEmpty!1833)) setNonEmpty!1833))

(assert (= setNonEmpty!1833 b!137756))

(declare-fun m!121821 () Bool)

(assert (=> setNonEmpty!1833 m!121821))

(check-sat (not b!137732) (not b!137714) (not b!137733) (not b!137750) (not b!137728) (not setNonEmpty!1829) (not setNonEmpty!1828) (not d!32940) (not b!137729) (not b!137698) (not b!137715) (not d!32928) (not b!137677) (not b!137738) (not b_next!4039) (not b!137695) (not b!137717) (not setNonEmpty!1822) (not b!137707) b_and!6189 (not b!137716) (not b!137730) (not b!137731) (not b!137749) (not b!137686) b_and!6191 (not setNonEmpty!1827) (not b!137705) (not b!137687) (not b!137740) (not b!137694) (not b!137756) (not b!137739) (not setNonEmpty!1821) (not d!32932) (not b_next!4037) (not setNonEmpty!1830) (not setNonEmpty!1833) (not mapNonEmpty!1778) (not d!32930) (not b!137751) (not d!32934))
(check-sat b_and!6191 b_and!6189 (not b_next!4037) (not b_next!4039))
