; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14460 () Bool)

(assert start!14460)

(declare-fun b!137521 () Bool)

(declare-fun b_free!4029 () Bool)

(declare-fun b_next!4029 () Bool)

(assert (=> b!137521 (= b_free!4029 (not b_next!4029))))

(declare-fun tp!71800 () Bool)

(declare-fun b_and!6181 () Bool)

(assert (=> b!137521 (= tp!71800 b_and!6181)))

(declare-fun b!137518 () Bool)

(declare-fun b_free!4031 () Bool)

(declare-fun b_next!4031 () Bool)

(assert (=> b!137518 (= b_free!4031 (not b_next!4031))))

(declare-fun tp!71803 () Bool)

(declare-fun b_and!6183 () Bool)

(assert (=> b!137518 (= tp!71803 b_and!6183)))

(declare-fun b!137516 () Bool)

(declare-fun e!80216 () Bool)

(declare-datatypes ((C!2112 0))(
  ( (C!2113 (val!942 Int)) )
))
(declare-datatypes ((List!2283 0))(
  ( (Nil!2273) (Cons!2273 (h!7670 C!2112) (t!22869 List!2283)) )
))
(declare-datatypes ((IArray!1203 0))(
  ( (IArray!1204 (innerList!659 List!2283)) )
))
(declare-datatypes ((Conc!601 0))(
  ( (Node!601 (left!1769 Conc!601) (right!2099 Conc!601) (csize!1432 Int) (cheight!812 Int)) (Leaf!1126 (xs!3196 IArray!1203) (csize!1433 Int)) (Empty!601) )
))
(declare-datatypes ((BalanceConc!1210 0))(
  ( (BalanceConc!1211 (c!29044 Conc!601)) )
))
(declare-datatypes ((Regex!595 0))(
  ( (ElementMatch!595 (c!29045 C!2112)) (Concat!991 (regOne!1702 Regex!595) (regTwo!1702 Regex!595)) (EmptyExpr!595) (Star!595 (reg!924 Regex!595)) (EmptyLang!595) (Union!595 (regOne!1703 Regex!595) (regTwo!1703 Regex!595)) )
))
(declare-datatypes ((List!2284 0))(
  ( (Nil!2274) (Cons!2274 (h!7671 Regex!595) (t!22870 List!2284)) )
))
(declare-datatypes ((Context!270 0))(
  ( (Context!271 (exprs!635 List!2284)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!336 0))(
  ( (tuple3!337 (_1!1445 (InoxSet Context!270)) (_2!1445 Int) (_3!213 Int)) )
))
(declare-datatypes ((array!1727 0))(
  ( (array!1728 (arr!798 (Array (_ BitVec 32) (_ BitVec 64))) (size!2052 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2464 0))(
  ( (tuple2!2465 (_1!1446 tuple3!336) (_2!1446 Int)) )
))
(declare-datatypes ((List!2285 0))(
  ( (Nil!2275) (Cons!2275 (h!7672 tuple2!2464) (t!22871 List!2285)) )
))
(declare-datatypes ((array!1729 0))(
  ( (array!1730 (arr!799 (Array (_ BitVec 32) List!2285)) (size!2053 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!914 0))(
  ( (LongMapFixedSize!915 (defaultEntry!804 Int) (mask!1506 (_ BitVec 32)) (extraKeys!703 (_ BitVec 32)) (zeroValue!713 List!2285) (minValue!713 List!2285) (_size!1031 (_ BitVec 32)) (_keys!748 array!1727) (_values!735 array!1729) (_vacant!518 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1785 0))(
  ( (Cell!1786 (v!13514 LongMapFixedSize!914)) )
))
(declare-datatypes ((MutLongMap!457 0))(
  ( (LongMap!457 (underlying!1101 Cell!1785)) (MutLongMapExt!456 (__x!2276 Int)) )
))
(declare-datatypes ((Cell!1787 0))(
  ( (Cell!1788 (v!13515 MutLongMap!457)) )
))
(declare-datatypes ((Hashable!437 0))(
  ( (HashableExt!436 (__x!2277 Int)) )
))
(declare-datatypes ((MutableMap!437 0))(
  ( (MutableMapExt!436 (__x!2278 Int)) (HashMap!437 (underlying!1102 Cell!1787) (hashF!2313 Hashable!437) (_size!1032 (_ BitVec 32)) (defaultValue!586 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!134 0))(
  ( (CacheFurthestNullable!135 (cache!890 MutableMap!437) (totalInput!1615 BalanceConc!1210)) )
))
(declare-fun thiss!29168 () CacheFurthestNullable!134)

(get-info :version)

(assert (=> b!137516 (= e!80216 (not ((_ is HashMap!437) (cache!890 thiss!29168))))))

(declare-fun b!137517 () Bool)

(declare-fun e!80213 () Bool)

(declare-fun lastNullablePos!98 () Int)

(declare-fun from!959 () Int)

(assert (=> b!137517 (= e!80213 (= lastNullablePos!98 (- from!959 1)))))

(declare-fun tp!71805 () Bool)

(declare-fun e!80215 () Bool)

(declare-fun tp!71806 () Bool)

(declare-fun e!80212 () Bool)

(declare-fun array_inv!575 (array!1727) Bool)

(declare-fun array_inv!576 (array!1729) Bool)

(assert (=> b!137518 (= e!80215 (and tp!71803 tp!71806 tp!71805 (array_inv!575 (_keys!748 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) (array_inv!576 (_values!735 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) e!80212))))

(declare-fun b!137519 () Bool)

(declare-fun res!64342 () Bool)

(assert (=> b!137519 (=> (not res!64342) (not e!80216))))

(assert (=> b!137519 (= res!64342 e!80213)))

(declare-fun res!64343 () Bool)

(assert (=> b!137519 (=> res!64343 e!80213)))

(declare-fun z!523 () (InoxSet Context!270))

(declare-fun nullableZipper!8 ((InoxSet Context!270)) Bool)

(assert (=> b!137519 (= res!64343 (not (nullableZipper!8 z!523)))))

(declare-fun e!80210 () Bool)

(declare-fun e!80205 () Bool)

(declare-fun b!137520 () Bool)

(declare-fun e!80209 () Bool)

(declare-fun inv!3010 (BalanceConc!1210) Bool)

(assert (=> b!137520 (= e!80210 (and e!80205 (inv!3010 (totalInput!1615 thiss!29168)) e!80209))))

(declare-fun tp!71802 () Bool)

(declare-fun setRes!1797 () Bool)

(declare-fun setNonEmpty!1797 () Bool)

(declare-fun e!80207 () Bool)

(declare-fun setElem!1797 () Context!270)

(declare-fun inv!3011 (Context!270) Bool)

(assert (=> setNonEmpty!1797 (= setRes!1797 (and tp!71802 (inv!3011 setElem!1797) e!80207))))

(declare-fun setRest!1797 () (InoxSet Context!270))

(assert (=> setNonEmpty!1797 (= z!523 ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1797 true) setRest!1797))))

(declare-fun res!64341 () Bool)

(assert (=> start!14460 (=> (not res!64341) (not e!80216))))

(assert (=> start!14460 (= res!64341 (and (>= lastNullablePos!98 (- 1)) (< lastNullablePos!98 from!959)))))

(assert (=> start!14460 e!80216))

(assert (=> start!14460 true))

(declare-fun condSetEmpty!1797 () Bool)

(assert (=> start!14460 (= condSetEmpty!1797 (= z!523 ((as const (Array Context!270 Bool)) false)))))

(assert (=> start!14460 setRes!1797))

(declare-fun inv!3012 (CacheFurthestNullable!134) Bool)

(assert (=> start!14460 (and (inv!3012 thiss!29168) e!80210)))

(declare-fun setIsEmpty!1797 () Bool)

(assert (=> setIsEmpty!1797 setRes!1797))

(declare-fun e!80214 () Bool)

(assert (=> b!137521 (= e!80205 (and e!80214 tp!71800))))

(declare-fun b!137522 () Bool)

(declare-fun e!80206 () Bool)

(declare-fun e!80208 () Bool)

(assert (=> b!137522 (= e!80206 e!80208)))

(declare-fun b!137523 () Bool)

(declare-fun tp!71801 () Bool)

(declare-fun mapRes!1766 () Bool)

(assert (=> b!137523 (= e!80212 (and tp!71801 mapRes!1766))))

(declare-fun condMapEmpty!1766 () Bool)

(declare-fun mapDefault!1766 () List!2285)

(assert (=> b!137523 (= condMapEmpty!1766 (= (arr!799 (_values!735 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) ((as const (Array (_ BitVec 32) List!2285)) mapDefault!1766)))))

(declare-fun b!137524 () Bool)

(declare-fun res!64340 () Bool)

(assert (=> b!137524 (=> (not res!64340) (not e!80216))))

(declare-fun validCacheMapFurthestNullable!21 (MutableMap!437 BalanceConc!1210) Bool)

(assert (=> b!137524 (= res!64340 (validCacheMapFurthestNullable!21 (cache!890 thiss!29168) (totalInput!1615 thiss!29168)))))

(declare-fun b!137525 () Bool)

(declare-fun lt!41026 () MutLongMap!457)

(assert (=> b!137525 (= e!80214 (and e!80206 ((_ is LongMap!457) lt!41026)))))

(assert (=> b!137525 (= lt!41026 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))

(declare-fun mapIsEmpty!1766 () Bool)

(assert (=> mapIsEmpty!1766 mapRes!1766))

(declare-fun b!137526 () Bool)

(declare-fun tp!71808 () Bool)

(assert (=> b!137526 (= e!80207 tp!71808)))

(declare-fun mapNonEmpty!1766 () Bool)

(declare-fun tp!71809 () Bool)

(declare-fun tp!71804 () Bool)

(assert (=> mapNonEmpty!1766 (= mapRes!1766 (and tp!71809 tp!71804))))

(declare-fun mapKey!1766 () (_ BitVec 32))

(declare-fun mapValue!1766 () List!2285)

(declare-fun mapRest!1766 () (Array (_ BitVec 32) List!2285))

(assert (=> mapNonEmpty!1766 (= (arr!799 (_values!735 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) (store mapRest!1766 mapKey!1766 mapValue!1766))))

(declare-fun b!137527 () Bool)

(declare-fun tp!71807 () Bool)

(declare-fun inv!3013 (Conc!601) Bool)

(assert (=> b!137527 (= e!80209 (and (inv!3013 (c!29044 (totalInput!1615 thiss!29168))) tp!71807))))

(declare-fun b!137528 () Bool)

(assert (=> b!137528 (= e!80208 e!80215)))

(assert (= (and start!14460 res!64341) b!137519))

(assert (= (and b!137519 (not res!64343)) b!137517))

(assert (= (and b!137519 res!64342) b!137524))

(assert (= (and b!137524 res!64340) b!137516))

(assert (= (and start!14460 condSetEmpty!1797) setIsEmpty!1797))

(assert (= (and start!14460 (not condSetEmpty!1797)) setNonEmpty!1797))

(assert (= setNonEmpty!1797 b!137526))

(assert (= (and b!137523 condMapEmpty!1766) mapIsEmpty!1766))

(assert (= (and b!137523 (not condMapEmpty!1766)) mapNonEmpty!1766))

(assert (= b!137518 b!137523))

(assert (= b!137528 b!137518))

(assert (= b!137522 b!137528))

(assert (= (and b!137525 ((_ is LongMap!457) (v!13515 (underlying!1102 (cache!890 thiss!29168))))) b!137522))

(assert (= b!137521 b!137525))

(assert (= (and b!137520 ((_ is HashMap!437) (cache!890 thiss!29168))) b!137521))

(assert (= b!137520 b!137527))

(assert (= start!14460 b!137520))

(declare-fun m!121677 () Bool)

(assert (=> start!14460 m!121677))

(declare-fun m!121679 () Bool)

(assert (=> b!137518 m!121679))

(declare-fun m!121681 () Bool)

(assert (=> b!137518 m!121681))

(declare-fun m!121683 () Bool)

(assert (=> b!137519 m!121683))

(declare-fun m!121685 () Bool)

(assert (=> setNonEmpty!1797 m!121685))

(declare-fun m!121687 () Bool)

(assert (=> b!137524 m!121687))

(declare-fun m!121689 () Bool)

(assert (=> mapNonEmpty!1766 m!121689))

(declare-fun m!121691 () Bool)

(assert (=> b!137520 m!121691))

(declare-fun m!121693 () Bool)

(assert (=> b!137527 m!121693))

(check-sat (not b!137523) b_and!6181 (not b!137526) (not mapNonEmpty!1766) (not b!137519) (not start!14460) (not b!137524) (not b!137527) (not setNonEmpty!1797) b_and!6183 (not b!137518) (not b!137520) (not b_next!4031) (not b_next!4029))
(check-sat b_and!6183 b_and!6181 (not b_next!4029) (not b_next!4031))
(get-model)

(declare-fun d!32907 () Bool)

(declare-fun res!64346 () Bool)

(declare-fun e!80219 () Bool)

(assert (=> d!32907 (=> (not res!64346) (not e!80219))))

(assert (=> d!32907 (= res!64346 ((_ is HashMap!437) (cache!890 thiss!29168)))))

(assert (=> d!32907 (= (inv!3012 thiss!29168) e!80219)))

(declare-fun b!137531 () Bool)

(assert (=> b!137531 (= e!80219 (validCacheMapFurthestNullable!21 (cache!890 thiss!29168) (totalInput!1615 thiss!29168)))))

(assert (= (and d!32907 res!64346) b!137531))

(assert (=> b!137531 m!121687))

(assert (=> start!14460 d!32907))

(declare-fun d!32909 () Bool)

(declare-fun lambda!3320 () Int)

(declare-fun exists!45 ((InoxSet Context!270) Int) Bool)

(assert (=> d!32909 (= (nullableZipper!8 z!523) (exists!45 z!523 lambda!3320))))

(declare-fun bs!12793 () Bool)

(assert (= bs!12793 d!32909))

(declare-fun m!121695 () Bool)

(assert (=> bs!12793 m!121695))

(assert (=> b!137519 d!32909))

(declare-fun b!137537 () Bool)

(assert (=> b!137537 true))

(declare-fun d!32911 () Bool)

(declare-fun res!64351 () Bool)

(declare-fun e!80222 () Bool)

(assert (=> d!32911 (=> (not res!64351) (not e!80222))))

(declare-fun valid!410 (MutableMap!437) Bool)

(assert (=> d!32911 (= res!64351 (valid!410 (cache!890 thiss!29168)))))

(assert (=> d!32911 (= (validCacheMapFurthestNullable!21 (cache!890 thiss!29168) (totalInput!1615 thiss!29168)) e!80222)))

(declare-fun b!137536 () Bool)

(declare-fun res!64352 () Bool)

(assert (=> b!137536 (=> (not res!64352) (not e!80222))))

(declare-fun invariantList!38 (List!2285) Bool)

(declare-datatypes ((ListMap!99 0))(
  ( (ListMap!100 (toList!298 List!2285)) )
))
(declare-fun map!605 (MutableMap!437) ListMap!99)

(assert (=> b!137536 (= res!64352 (invariantList!38 (toList!298 (map!605 (cache!890 thiss!29168)))))))

(declare-fun lambda!3323 () Int)

(declare-fun forall!353 (List!2285 Int) Bool)

(assert (=> b!137537 (= e!80222 (forall!353 (toList!298 (map!605 (cache!890 thiss!29168))) lambda!3323))))

(assert (= (and d!32911 res!64351) b!137536))

(assert (= (and b!137536 res!64352) b!137537))

(declare-fun m!121698 () Bool)

(assert (=> d!32911 m!121698))

(declare-fun m!121700 () Bool)

(assert (=> b!137536 m!121700))

(declare-fun m!121702 () Bool)

(assert (=> b!137536 m!121702))

(assert (=> b!137537 m!121700))

(declare-fun m!121704 () Bool)

(assert (=> b!137537 m!121704))

(assert (=> b!137524 d!32911))

(declare-fun d!32913 () Bool)

(declare-fun lambda!3326 () Int)

(declare-fun forall!354 (List!2284 Int) Bool)

(assert (=> d!32913 (= (inv!3011 setElem!1797) (forall!354 (exprs!635 setElem!1797) lambda!3326))))

(declare-fun bs!12794 () Bool)

(assert (= bs!12794 d!32913))

(declare-fun m!121706 () Bool)

(assert (=> bs!12794 m!121706))

(assert (=> setNonEmpty!1797 d!32913))

(declare-fun d!32915 () Bool)

(declare-fun isBalanced!181 (Conc!601) Bool)

(assert (=> d!32915 (= (inv!3010 (totalInput!1615 thiss!29168)) (isBalanced!181 (c!29044 (totalInput!1615 thiss!29168))))))

(declare-fun bs!12795 () Bool)

(assert (= bs!12795 d!32915))

(declare-fun m!121708 () Bool)

(assert (=> bs!12795 m!121708))

(assert (=> b!137520 d!32915))

(declare-fun d!32917 () Bool)

(declare-fun c!29050 () Bool)

(assert (=> d!32917 (= c!29050 ((_ is Node!601) (c!29044 (totalInput!1615 thiss!29168))))))

(declare-fun e!80227 () Bool)

(assert (=> d!32917 (= (inv!3013 (c!29044 (totalInput!1615 thiss!29168))) e!80227)))

(declare-fun b!137546 () Bool)

(declare-fun inv!3014 (Conc!601) Bool)

(assert (=> b!137546 (= e!80227 (inv!3014 (c!29044 (totalInput!1615 thiss!29168))))))

(declare-fun b!137547 () Bool)

(declare-fun e!80228 () Bool)

(assert (=> b!137547 (= e!80227 e!80228)))

(declare-fun res!64355 () Bool)

(assert (=> b!137547 (= res!64355 (not ((_ is Leaf!1126) (c!29044 (totalInput!1615 thiss!29168)))))))

(assert (=> b!137547 (=> res!64355 e!80228)))

(declare-fun b!137548 () Bool)

(declare-fun inv!3015 (Conc!601) Bool)

(assert (=> b!137548 (= e!80228 (inv!3015 (c!29044 (totalInput!1615 thiss!29168))))))

(assert (= (and d!32917 c!29050) b!137546))

(assert (= (and d!32917 (not c!29050)) b!137547))

(assert (= (and b!137547 (not res!64355)) b!137548))

(declare-fun m!121710 () Bool)

(assert (=> b!137546 m!121710))

(declare-fun m!121712 () Bool)

(assert (=> b!137548 m!121712))

(assert (=> b!137527 d!32917))

(declare-fun d!32919 () Bool)

(assert (=> d!32919 (= (array_inv!575 (_keys!748 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) (bvsge (size!2052 (_keys!748 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) #b00000000000000000000000000000000))))

(assert (=> b!137518 d!32919))

(declare-fun d!32921 () Bool)

(assert (=> d!32921 (= (array_inv!576 (_values!735 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) (bvsge (size!2053 (_values!735 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))) #b00000000000000000000000000000000))))

(assert (=> b!137518 d!32921))

(declare-fun condMapEmpty!1769 () Bool)

(declare-fun mapDefault!1769 () List!2285)

(assert (=> mapNonEmpty!1766 (= condMapEmpty!1769 (= mapRest!1766 ((as const (Array (_ BitVec 32) List!2285)) mapDefault!1769)))))

(declare-fun e!80237 () Bool)

(declare-fun mapRes!1769 () Bool)

(assert (=> mapNonEmpty!1766 (= tp!71809 (and e!80237 mapRes!1769))))

(declare-fun mapNonEmpty!1769 () Bool)

(declare-fun tp!71829 () Bool)

(declare-fun e!80240 () Bool)

(assert (=> mapNonEmpty!1769 (= mapRes!1769 (and tp!71829 e!80240))))

(declare-fun mapKey!1769 () (_ BitVec 32))

(declare-fun mapValue!1769 () List!2285)

(declare-fun mapRest!1769 () (Array (_ BitVec 32) List!2285))

(assert (=> mapNonEmpty!1769 (= mapRest!1766 (store mapRest!1769 mapKey!1769 mapValue!1769))))

(declare-fun setIsEmpty!1802 () Bool)

(declare-fun setRes!1803 () Bool)

(assert (=> setIsEmpty!1802 setRes!1803))

(declare-fun mapIsEmpty!1769 () Bool)

(assert (=> mapIsEmpty!1769 mapRes!1769))

(declare-fun setIsEmpty!1803 () Bool)

(declare-fun setRes!1802 () Bool)

(assert (=> setIsEmpty!1803 setRes!1802))

(declare-fun b!137559 () Bool)

(declare-fun tp!71825 () Bool)

(assert (=> b!137559 (= e!80237 (and setRes!1803 tp!71825))))

(declare-fun condSetEmpty!1803 () Bool)

(assert (=> b!137559 (= condSetEmpty!1803 (= (_1!1445 (_1!1446 (h!7672 mapDefault!1769))) ((as const (Array Context!270 Bool)) false)))))

(declare-fun setNonEmpty!1802 () Bool)

(declare-fun e!80239 () Bool)

(declare-fun setElem!1802 () Context!270)

(declare-fun tp!71830 () Bool)

(assert (=> setNonEmpty!1802 (= setRes!1803 (and tp!71830 (inv!3011 setElem!1802) e!80239))))

(declare-fun setRest!1803 () (InoxSet Context!270))

(assert (=> setNonEmpty!1802 (= (_1!1445 (_1!1446 (h!7672 mapDefault!1769))) ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1802 true) setRest!1803))))

(declare-fun b!137560 () Bool)

(declare-fun e!80238 () Bool)

(declare-fun tp!71824 () Bool)

(assert (=> b!137560 (= e!80238 tp!71824)))

(declare-fun b!137561 () Bool)

(declare-fun tp!71826 () Bool)

(assert (=> b!137561 (= e!80239 tp!71826)))

(declare-fun b!137562 () Bool)

(declare-fun tp!71827 () Bool)

(assert (=> b!137562 (= e!80240 (and setRes!1802 tp!71827))))

(declare-fun condSetEmpty!1802 () Bool)

(assert (=> b!137562 (= condSetEmpty!1802 (= (_1!1445 (_1!1446 (h!7672 mapValue!1769))) ((as const (Array Context!270 Bool)) false)))))

(declare-fun setNonEmpty!1803 () Bool)

(declare-fun setElem!1803 () Context!270)

(declare-fun tp!71828 () Bool)

(assert (=> setNonEmpty!1803 (= setRes!1802 (and tp!71828 (inv!3011 setElem!1803) e!80238))))

(declare-fun setRest!1802 () (InoxSet Context!270))

(assert (=> setNonEmpty!1803 (= (_1!1445 (_1!1446 (h!7672 mapValue!1769))) ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1803 true) setRest!1802))))

(assert (= (and mapNonEmpty!1766 condMapEmpty!1769) mapIsEmpty!1769))

(assert (= (and mapNonEmpty!1766 (not condMapEmpty!1769)) mapNonEmpty!1769))

(assert (= (and b!137562 condSetEmpty!1802) setIsEmpty!1803))

(assert (= (and b!137562 (not condSetEmpty!1802)) setNonEmpty!1803))

(assert (= setNonEmpty!1803 b!137560))

(assert (= (and mapNonEmpty!1769 ((_ is Cons!2275) mapValue!1769)) b!137562))

(assert (= (and b!137559 condSetEmpty!1803) setIsEmpty!1802))

(assert (= (and b!137559 (not condSetEmpty!1803)) setNonEmpty!1802))

(assert (= setNonEmpty!1802 b!137561))

(assert (= (and mapNonEmpty!1766 ((_ is Cons!2275) mapDefault!1769)) b!137559))

(declare-fun m!121714 () Bool)

(assert (=> mapNonEmpty!1769 m!121714))

(declare-fun m!121716 () Bool)

(assert (=> setNonEmpty!1802 m!121716))

(declare-fun m!121718 () Bool)

(assert (=> setNonEmpty!1803 m!121718))

(declare-fun b!137570 () Bool)

(declare-fun e!80245 () Bool)

(declare-fun tp!71838 () Bool)

(assert (=> b!137570 (= e!80245 tp!71838)))

(declare-fun setRes!1806 () Bool)

(declare-fun tp!71839 () Bool)

(declare-fun setNonEmpty!1806 () Bool)

(declare-fun setElem!1806 () Context!270)

(assert (=> setNonEmpty!1806 (= setRes!1806 (and tp!71839 (inv!3011 setElem!1806) e!80245))))

(declare-fun setRest!1806 () (InoxSet Context!270))

(assert (=> setNonEmpty!1806 (= (_1!1445 (_1!1446 (h!7672 mapValue!1766))) ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1806 true) setRest!1806))))

(declare-fun b!137569 () Bool)

(declare-fun e!80246 () Bool)

(declare-fun tp!71837 () Bool)

(assert (=> b!137569 (= e!80246 (and setRes!1806 tp!71837))))

(declare-fun condSetEmpty!1806 () Bool)

(assert (=> b!137569 (= condSetEmpty!1806 (= (_1!1445 (_1!1446 (h!7672 mapValue!1766))) ((as const (Array Context!270 Bool)) false)))))

(assert (=> mapNonEmpty!1766 (= tp!71804 e!80246)))

(declare-fun setIsEmpty!1806 () Bool)

(assert (=> setIsEmpty!1806 setRes!1806))

(assert (= (and b!137569 condSetEmpty!1806) setIsEmpty!1806))

(assert (= (and b!137569 (not condSetEmpty!1806)) setNonEmpty!1806))

(assert (= setNonEmpty!1806 b!137570))

(assert (= (and mapNonEmpty!1766 ((_ is Cons!2275) mapValue!1766)) b!137569))

(declare-fun m!121720 () Bool)

(assert (=> setNonEmpty!1806 m!121720))

(declare-fun b!137572 () Bool)

(declare-fun e!80247 () Bool)

(declare-fun tp!71841 () Bool)

(assert (=> b!137572 (= e!80247 tp!71841)))

(declare-fun tp!71842 () Bool)

(declare-fun setRes!1807 () Bool)

(declare-fun setElem!1807 () Context!270)

(declare-fun setNonEmpty!1807 () Bool)

(assert (=> setNonEmpty!1807 (= setRes!1807 (and tp!71842 (inv!3011 setElem!1807) e!80247))))

(declare-fun setRest!1807 () (InoxSet Context!270))

(assert (=> setNonEmpty!1807 (= (_1!1445 (_1!1446 (h!7672 mapDefault!1766))) ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1807 true) setRest!1807))))

(declare-fun b!137571 () Bool)

(declare-fun e!80248 () Bool)

(declare-fun tp!71840 () Bool)

(assert (=> b!137571 (= e!80248 (and setRes!1807 tp!71840))))

(declare-fun condSetEmpty!1807 () Bool)

(assert (=> b!137571 (= condSetEmpty!1807 (= (_1!1445 (_1!1446 (h!7672 mapDefault!1766))) ((as const (Array Context!270 Bool)) false)))))

(assert (=> b!137523 (= tp!71801 e!80248)))

(declare-fun setIsEmpty!1807 () Bool)

(assert (=> setIsEmpty!1807 setRes!1807))

(assert (= (and b!137571 condSetEmpty!1807) setIsEmpty!1807))

(assert (= (and b!137571 (not condSetEmpty!1807)) setNonEmpty!1807))

(assert (= setNonEmpty!1807 b!137572))

(assert (= (and b!137523 ((_ is Cons!2275) mapDefault!1766)) b!137571))

(declare-fun m!121722 () Bool)

(assert (=> setNonEmpty!1807 m!121722))

(declare-fun condSetEmpty!1810 () Bool)

(assert (=> setNonEmpty!1797 (= condSetEmpty!1810 (= setRest!1797 ((as const (Array Context!270 Bool)) false)))))

(declare-fun setRes!1810 () Bool)

(assert (=> setNonEmpty!1797 (= tp!71802 setRes!1810)))

(declare-fun setIsEmpty!1810 () Bool)

(assert (=> setIsEmpty!1810 setRes!1810))

(declare-fun setElem!1810 () Context!270)

(declare-fun setNonEmpty!1810 () Bool)

(declare-fun tp!71847 () Bool)

(declare-fun e!80251 () Bool)

(assert (=> setNonEmpty!1810 (= setRes!1810 (and tp!71847 (inv!3011 setElem!1810) e!80251))))

(declare-fun setRest!1810 () (InoxSet Context!270))

(assert (=> setNonEmpty!1810 (= setRest!1797 ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1810 true) setRest!1810))))

(declare-fun b!137577 () Bool)

(declare-fun tp!71848 () Bool)

(assert (=> b!137577 (= e!80251 tp!71848)))

(assert (= (and setNonEmpty!1797 condSetEmpty!1810) setIsEmpty!1810))

(assert (= (and setNonEmpty!1797 (not condSetEmpty!1810)) setNonEmpty!1810))

(assert (= setNonEmpty!1810 b!137577))

(declare-fun m!121724 () Bool)

(assert (=> setNonEmpty!1810 m!121724))

(declare-fun tp!71856 () Bool)

(declare-fun b!137586 () Bool)

(declare-fun tp!71857 () Bool)

(declare-fun e!80257 () Bool)

(assert (=> b!137586 (= e!80257 (and (inv!3013 (left!1769 (c!29044 (totalInput!1615 thiss!29168)))) tp!71857 (inv!3013 (right!2099 (c!29044 (totalInput!1615 thiss!29168)))) tp!71856))))

(declare-fun b!137588 () Bool)

(declare-fun e!80256 () Bool)

(declare-fun tp!71855 () Bool)

(assert (=> b!137588 (= e!80256 tp!71855)))

(declare-fun b!137587 () Bool)

(declare-fun inv!3016 (IArray!1203) Bool)

(assert (=> b!137587 (= e!80257 (and (inv!3016 (xs!3196 (c!29044 (totalInput!1615 thiss!29168)))) e!80256))))

(assert (=> b!137527 (= tp!71807 (and (inv!3013 (c!29044 (totalInput!1615 thiss!29168))) e!80257))))

(assert (= (and b!137527 ((_ is Node!601) (c!29044 (totalInput!1615 thiss!29168)))) b!137586))

(assert (= b!137587 b!137588))

(assert (= (and b!137527 ((_ is Leaf!1126) (c!29044 (totalInput!1615 thiss!29168)))) b!137587))

(declare-fun m!121726 () Bool)

(assert (=> b!137586 m!121726))

(declare-fun m!121728 () Bool)

(assert (=> b!137586 m!121728))

(declare-fun m!121730 () Bool)

(assert (=> b!137587 m!121730))

(assert (=> b!137527 m!121693))

(declare-fun b!137590 () Bool)

(declare-fun e!80258 () Bool)

(declare-fun tp!71859 () Bool)

(assert (=> b!137590 (= e!80258 tp!71859)))

(declare-fun setRes!1811 () Bool)

(declare-fun tp!71860 () Bool)

(declare-fun setNonEmpty!1811 () Bool)

(declare-fun setElem!1811 () Context!270)

(assert (=> setNonEmpty!1811 (= setRes!1811 (and tp!71860 (inv!3011 setElem!1811) e!80258))))

(declare-fun setRest!1811 () (InoxSet Context!270))

(assert (=> setNonEmpty!1811 (= (_1!1445 (_1!1446 (h!7672 (zeroValue!713 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))))) ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1811 true) setRest!1811))))

(declare-fun b!137589 () Bool)

(declare-fun e!80259 () Bool)

(declare-fun tp!71858 () Bool)

(assert (=> b!137589 (= e!80259 (and setRes!1811 tp!71858))))

(declare-fun condSetEmpty!1811 () Bool)

(assert (=> b!137589 (= condSetEmpty!1811 (= (_1!1445 (_1!1446 (h!7672 (zeroValue!713 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))))) ((as const (Array Context!270 Bool)) false)))))

(assert (=> b!137518 (= tp!71806 e!80259)))

(declare-fun setIsEmpty!1811 () Bool)

(assert (=> setIsEmpty!1811 setRes!1811))

(assert (= (and b!137589 condSetEmpty!1811) setIsEmpty!1811))

(assert (= (and b!137589 (not condSetEmpty!1811)) setNonEmpty!1811))

(assert (= setNonEmpty!1811 b!137590))

(assert (= (and b!137518 ((_ is Cons!2275) (zeroValue!713 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168)))))))) b!137589))

(declare-fun m!121732 () Bool)

(assert (=> setNonEmpty!1811 m!121732))

(declare-fun b!137592 () Bool)

(declare-fun e!80260 () Bool)

(declare-fun tp!71862 () Bool)

(assert (=> b!137592 (= e!80260 tp!71862)))

(declare-fun setRes!1812 () Bool)

(declare-fun setNonEmpty!1812 () Bool)

(declare-fun tp!71863 () Bool)

(declare-fun setElem!1812 () Context!270)

(assert (=> setNonEmpty!1812 (= setRes!1812 (and tp!71863 (inv!3011 setElem!1812) e!80260))))

(declare-fun setRest!1812 () (InoxSet Context!270))

(assert (=> setNonEmpty!1812 (= (_1!1445 (_1!1446 (h!7672 (minValue!713 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))))) ((_ map or) (store ((as const (Array Context!270 Bool)) false) setElem!1812 true) setRest!1812))))

(declare-fun b!137591 () Bool)

(declare-fun e!80261 () Bool)

(declare-fun tp!71861 () Bool)

(assert (=> b!137591 (= e!80261 (and setRes!1812 tp!71861))))

(declare-fun condSetEmpty!1812 () Bool)

(assert (=> b!137591 (= condSetEmpty!1812 (= (_1!1445 (_1!1446 (h!7672 (minValue!713 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168))))))))) ((as const (Array Context!270 Bool)) false)))))

(assert (=> b!137518 (= tp!71805 e!80261)))

(declare-fun setIsEmpty!1812 () Bool)

(assert (=> setIsEmpty!1812 setRes!1812))

(assert (= (and b!137591 condSetEmpty!1812) setIsEmpty!1812))

(assert (= (and b!137591 (not condSetEmpty!1812)) setNonEmpty!1812))

(assert (= setNonEmpty!1812 b!137592))

(assert (= (and b!137518 ((_ is Cons!2275) (minValue!713 (v!13514 (underlying!1101 (v!13515 (underlying!1102 (cache!890 thiss!29168)))))))) b!137591))

(declare-fun m!121734 () Bool)

(assert (=> setNonEmpty!1812 m!121734))

(declare-fun b!137597 () Bool)

(declare-fun e!80264 () Bool)

(declare-fun tp!71868 () Bool)

(declare-fun tp!71869 () Bool)

(assert (=> b!137597 (= e!80264 (and tp!71868 tp!71869))))

(assert (=> b!137526 (= tp!71808 e!80264)))

(assert (= (and b!137526 ((_ is Cons!2274) (exprs!635 setElem!1797))) b!137597))

(check-sat (not d!32915) (not b!137559) (not mapNonEmpty!1769) (not b!137571) (not b!137569) (not b!137537) (not b!137570) (not b!137592) b_and!6183 (not b!137561) (not setNonEmpty!1812) (not setNonEmpty!1807) (not b!137591) (not setNonEmpty!1806) (not b!137527) (not d!32909) (not b!137589) b_and!6181 (not b!137560) (not setNonEmpty!1802) (not b!137590) (not b!137586) (not b!137546) (not b!137597) (not d!32911) (not setNonEmpty!1810) (not b!137548) (not b!137562) (not d!32913) (not b_next!4031) (not setNonEmpty!1811) (not b_next!4029) (not b!137572) (not setNonEmpty!1803) (not b!137587) (not b!137577) (not b!137536) (not b!137588) (not b!137531))
(check-sat b_and!6183 b_and!6181 (not b_next!4029) (not b_next!4031))
