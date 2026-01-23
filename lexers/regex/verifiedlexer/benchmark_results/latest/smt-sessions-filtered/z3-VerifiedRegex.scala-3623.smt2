; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207532 () Bool)

(assert start!207532)

(declare-fun b!2131196 () Bool)

(declare-fun b_free!62213 () Bool)

(declare-fun b_next!62917 () Bool)

(assert (=> b!2131196 (= b_free!62213 (not b_next!62917))))

(declare-fun tp!655491 () Bool)

(declare-fun b_and!171793 () Bool)

(assert (=> b!2131196 (= tp!655491 b_and!171793)))

(declare-fun b!2131200 () Bool)

(declare-fun b_free!62215 () Bool)

(declare-fun b_next!62919 () Bool)

(assert (=> b!2131200 (= b_free!62215 (not b_next!62919))))

(declare-fun tp!655508 () Bool)

(declare-fun b_and!171795 () Bool)

(assert (=> b!2131200 (= tp!655508 b_and!171795)))

(declare-fun b!2131233 () Bool)

(declare-fun b_free!62217 () Bool)

(declare-fun b_next!62921 () Bool)

(assert (=> b!2131233 (= b_free!62217 (not b_next!62921))))

(declare-fun tp!655500 () Bool)

(declare-fun b_and!171797 () Bool)

(assert (=> b!2131233 (= tp!655500 b_and!171797)))

(declare-fun b!2131201 () Bool)

(declare-fun b_free!62219 () Bool)

(declare-fun b_next!62923 () Bool)

(assert (=> b!2131201 (= b_free!62219 (not b_next!62923))))

(declare-fun tp!655495 () Bool)

(declare-fun b_and!171799 () Bool)

(assert (=> b!2131201 (= tp!655495 b_and!171799)))

(declare-fun b!2131212 () Bool)

(declare-fun b_free!62221 () Bool)

(declare-fun b_next!62925 () Bool)

(assert (=> b!2131212 (= b_free!62221 (not b_next!62925))))

(declare-fun tp!655502 () Bool)

(declare-fun b_and!171801 () Bool)

(assert (=> b!2131212 (= tp!655502 b_and!171801)))

(declare-fun b!2131207 () Bool)

(declare-fun b_free!62223 () Bool)

(declare-fun b_next!62927 () Bool)

(assert (=> b!2131207 (= b_free!62223 (not b_next!62927))))

(declare-fun tp!655489 () Bool)

(declare-fun b_and!171803 () Bool)

(assert (=> b!2131207 (= tp!655489 b_and!171803)))

(declare-fun b!2131209 () Bool)

(assert (=> b!2131209 true))

(declare-fun bs!444252 () Bool)

(declare-fun b!2131230 () Bool)

(assert (= bs!444252 (and b!2131230 b!2131209)))

(declare-fun lambda!79195 () Int)

(declare-fun lambda!79194 () Int)

(assert (=> bs!444252 (not (= lambda!79195 lambda!79194))))

(assert (=> b!2131230 true))

(declare-fun b!2131194 () Bool)

(declare-fun e!1359395 () Bool)

(declare-fun tp!655492 () Bool)

(declare-fun mapRes!12522 () Bool)

(assert (=> b!2131194 (= e!1359395 (and tp!655492 mapRes!12522))))

(declare-fun condMapEmpty!12521 () Bool)

(declare-datatypes ((C!11572 0))(
  ( (C!11573 (val!6772 Int)) )
))
(declare-datatypes ((Regex!5713 0))(
  ( (ElementMatch!5713 (c!340187 C!11572)) (Concat!10015 (regOne!11938 Regex!5713) (regTwo!11938 Regex!5713)) (EmptyExpr!5713) (Star!5713 (reg!6042 Regex!5713)) (EmptyLang!5713) (Union!5713 (regOne!11939 Regex!5713) (regTwo!11939 Regex!5713)) )
))
(declare-datatypes ((List!24055 0))(
  ( (Nil!23971) (Cons!23971 (h!29372 Regex!5713) (t!196583 List!24055)) )
))
(declare-datatypes ((Context!2566 0))(
  ( (Context!2567 (exprs!1783 List!24055)) )
))
(declare-datatypes ((tuple3!3112 0))(
  ( (tuple3!3113 (_1!13878 Regex!5713) (_2!13878 Context!2566) (_3!2026 C!11572)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23704 0))(
  ( (tuple2!23705 (_1!13879 tuple3!3112) (_2!13879 (InoxSet Context!2566))) )
))
(declare-datatypes ((List!24056 0))(
  ( (Nil!23972) (Cons!23972 (h!29373 tuple2!23704) (t!196584 List!24056)) )
))
(declare-datatypes ((Hashable!2497 0))(
  ( (HashableExt!2496 (__x!15925 Int)) )
))
(declare-datatypes ((array!8811 0))(
  ( (array!8812 (arr!3917 (Array (_ BitVec 32) (_ BitVec 64))) (size!18749 (_ BitVec 32))) )
))
(declare-datatypes ((array!8813 0))(
  ( (array!8814 (arr!3918 (Array (_ BitVec 32) List!24056)) (size!18750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5166 0))(
  ( (LongMapFixedSize!5167 (defaultEntry!2948 Int) (mask!6755 (_ BitVec 32)) (extraKeys!2831 (_ BitVec 32)) (zeroValue!2841 List!24056) (minValue!2841 List!24056) (_size!5217 (_ BitVec 32)) (_keys!2880 array!8811) (_values!2863 array!8813) (_vacant!2644 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10157 0))(
  ( (Cell!10158 (v!28523 LongMapFixedSize!5166)) )
))
(declare-datatypes ((MutLongMap!2583 0))(
  ( (LongMap!2583 (underlying!5361 Cell!10157)) (MutLongMapExt!2582 (__x!15926 Int)) )
))
(declare-datatypes ((Cell!10159 0))(
  ( (Cell!10160 (v!28524 MutLongMap!2583)) )
))
(declare-datatypes ((MutableMap!2497 0))(
  ( (MutableMapExt!2496 (__x!15927 Int)) (HashMap!2497 (underlying!5362 Cell!10159) (hashF!4420 Hashable!2497) (_size!5218 (_ BitVec 32)) (defaultValue!2659 Int)) )
))
(declare-datatypes ((CacheDown!1714 0))(
  ( (CacheDown!1715 (cache!2878 MutableMap!2497)) )
))
(declare-fun cacheDown!1098 () CacheDown!1714)

(declare-fun mapDefault!12520 () List!24056)

(assert (=> b!2131194 (= condMapEmpty!12521 (= (arr!3918 (_values!2863 (v!28523 (underlying!5361 (v!28524 (underlying!5362 (cache!2878 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24056)) mapDefault!12520)))))

(declare-fun b!2131195 () Bool)

(declare-fun e!1359400 () Bool)

(declare-fun e!1359406 () Bool)

(assert (=> b!2131195 (= e!1359400 e!1359406)))

(declare-fun setIsEmpty!15744 () Bool)

(declare-fun setRes!15745 () Bool)

(assert (=> setIsEmpty!15744 setRes!15745))

(declare-fun mapIsEmpty!12520 () Bool)

(assert (=> mapIsEmpty!12520 mapRes!12522))

(declare-fun tp!655501 () Bool)

(declare-fun e!1359424 () Bool)

(declare-fun tp!655487 () Bool)

(declare-datatypes ((tuple2!23706 0))(
  ( (tuple2!23707 (_1!13880 Context!2566) (_2!13880 C!11572)) )
))
(declare-datatypes ((tuple2!23708 0))(
  ( (tuple2!23709 (_1!13881 tuple2!23706) (_2!13881 (InoxSet Context!2566))) )
))
(declare-datatypes ((List!24057 0))(
  ( (Nil!23973) (Cons!23973 (h!29374 tuple2!23708) (t!196585 List!24057)) )
))
(declare-datatypes ((array!8815 0))(
  ( (array!8816 (arr!3919 (Array (_ BitVec 32) List!24057)) (size!18751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5168 0))(
  ( (LongMapFixedSize!5169 (defaultEntry!2949 Int) (mask!6756 (_ BitVec 32)) (extraKeys!2832 (_ BitVec 32)) (zeroValue!2842 List!24057) (minValue!2842 List!24057) (_size!5219 (_ BitVec 32)) (_keys!2881 array!8811) (_values!2864 array!8815) (_vacant!2645 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10161 0))(
  ( (Cell!10162 (v!28525 LongMapFixedSize!5168)) )
))
(declare-datatypes ((MutLongMap!2584 0))(
  ( (LongMap!2584 (underlying!5363 Cell!10161)) (MutLongMapExt!2583 (__x!15928 Int)) )
))
(declare-datatypes ((Cell!10163 0))(
  ( (Cell!10164 (v!28526 MutLongMap!2584)) )
))
(declare-datatypes ((Hashable!2498 0))(
  ( (HashableExt!2497 (__x!15929 Int)) )
))
(declare-datatypes ((MutableMap!2498 0))(
  ( (MutableMapExt!2497 (__x!15930 Int)) (HashMap!2498 (underlying!5364 Cell!10163) (hashF!4421 Hashable!2498) (_size!5220 (_ BitVec 32)) (defaultValue!2660 Int)) )
))
(declare-datatypes ((CacheUp!1732 0))(
  ( (CacheUp!1733 (cache!2879 MutableMap!2498)) )
))
(declare-fun cacheUp!979 () CacheUp!1732)

(declare-fun array_inv!2799 (array!8811) Bool)

(declare-fun array_inv!2800 (array!8815) Bool)

(assert (=> b!2131196 (= e!1359406 (and tp!655491 tp!655501 tp!655487 (array_inv!2799 (_keys!2881 (v!28525 (underlying!5363 (v!28526 (underlying!5364 (cache!2879 cacheUp!979))))))) (array_inv!2800 (_values!2864 (v!28525 (underlying!5363 (v!28526 (underlying!5364 (cache!2879 cacheUp!979))))))) e!1359424))))

(declare-fun b!2131197 () Bool)

(declare-fun e!1359418 () Bool)

(declare-fun e!1359408 () Bool)

(declare-fun lt!796482 () MutLongMap!2583)

(get-info :version)

(assert (=> b!2131197 (= e!1359418 (and e!1359408 ((_ is LongMap!2583) lt!796482)))))

(assert (=> b!2131197 (= lt!796482 (v!28524 (underlying!5362 (cache!2878 cacheDown!1098))))))

(declare-fun b!2131198 () Bool)

(declare-fun e!1359409 () Bool)

(declare-fun e!1359416 () Bool)

(assert (=> b!2131198 (= e!1359409 (not e!1359416))))

(declare-fun res!921305 () Bool)

(assert (=> b!2131198 (=> res!921305 e!1359416)))

(declare-datatypes ((tuple3!3114 0))(
  ( (tuple3!3115 (_1!13882 (InoxSet Context!2566)) (_2!13882 Int) (_3!2027 Int)) )
))
(declare-datatypes ((tuple2!23710 0))(
  ( (tuple2!23711 (_1!13883 tuple3!3114) (_2!13883 Int)) )
))
(declare-datatypes ((List!24058 0))(
  ( (Nil!23974) (Cons!23974 (h!29375 tuple2!23710) (t!196586 List!24058)) )
))
(declare-datatypes ((array!8817 0))(
  ( (array!8818 (arr!3920 (Array (_ BitVec 32) List!24058)) (size!18752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5170 0))(
  ( (LongMapFixedSize!5171 (defaultEntry!2950 Int) (mask!6757 (_ BitVec 32)) (extraKeys!2833 (_ BitVec 32)) (zeroValue!2843 List!24058) (minValue!2843 List!24058) (_size!5221 (_ BitVec 32)) (_keys!2882 array!8811) (_values!2865 array!8817) (_vacant!2646 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10165 0))(
  ( (Cell!10166 (v!28527 LongMapFixedSize!5170)) )
))
(declare-datatypes ((List!24059 0))(
  ( (Nil!23975) (Cons!23975 (h!29376 C!11572) (t!196587 List!24059)) )
))
(declare-datatypes ((IArray!15707 0))(
  ( (IArray!15708 (innerList!7911 List!24059)) )
))
(declare-datatypes ((Conc!7851 0))(
  ( (Node!7851 (left!18492 Conc!7851) (right!18822 Conc!7851) (csize!15932 Int) (cheight!8062 Int)) (Leaf!11475 (xs!10793 IArray!15707) (csize!15933 Int)) (Empty!7851) )
))
(declare-datatypes ((MutLongMap!2585 0))(
  ( (LongMap!2585 (underlying!5365 Cell!10165)) (MutLongMapExt!2584 (__x!15931 Int)) )
))
(declare-datatypes ((Cell!10167 0))(
  ( (Cell!10168 (v!28528 MutLongMap!2585)) )
))
(declare-datatypes ((Hashable!2499 0))(
  ( (HashableExt!2498 (__x!15932 Int)) )
))
(declare-datatypes ((MutableMap!2499 0))(
  ( (MutableMapExt!2498 (__x!15933 Int)) (HashMap!2499 (underlying!5366 Cell!10167) (hashF!4422 Hashable!2499) (_size!5222 (_ BitVec 32)) (defaultValue!2661 Int)) )
))
(declare-datatypes ((BalanceConc!15464 0))(
  ( (BalanceConc!15465 (c!340188 Conc!7851)) )
))
(declare-datatypes ((CacheFurthestNullable!672 0))(
  ( (CacheFurthestNullable!673 (cache!2880 MutableMap!2499) (totalInput!3003 BalanceConc!15464)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!672)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2566))

(declare-fun from!1043 () Int)

(declare-datatypes ((Option!4893 0))(
  ( (None!4892) (Some!4892 (v!28529 Int)) )
))
(declare-fun get!7359 (CacheFurthestNullable!672 (InoxSet Context!2566) Int Int) Option!4893)

(assert (=> b!2131198 (= res!921305 ((_ is Some!4892) (get!7359 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!120 0))(
  ( (StackFrame!121 (z!5788 (InoxSet Context!2566)) (from!2674 Int) (lastNullablePos!361 Int) (res!921313 Int) (totalInput!3004 BalanceConc!15464)) )
))
(declare-datatypes ((List!24060 0))(
  ( (Nil!23976) (Cons!23976 (h!29377 StackFrame!120) (t!196588 List!24060)) )
))
(declare-fun stack!8 () List!24060)

(declare-fun forall!4907 (List!24060 Int) Bool)

(assert (=> b!2131198 (forall!4907 stack!8 lambda!79194)))

(declare-fun e!1359421 () Bool)

(declare-fun e!1359411 () Bool)

(declare-fun b!2131199 () Bool)

(declare-fun e!1359413 () Bool)

(declare-fun inv!31602 (BalanceConc!15464) Bool)

(assert (=> b!2131199 (= e!1359421 (and e!1359411 (inv!31602 (totalInput!3003 cacheFurthestNullable!114)) e!1359413))))

(declare-fun e!1359403 () Bool)

(assert (=> b!2131201 (= e!1359411 (and e!1359403 tp!655495))))

(declare-fun b!2131202 () Bool)

(assert (=> b!2131202 (= e!1359416 true)))

(declare-fun totalInput!851 () BalanceConc!15464)

(declare-fun lt!796478 () Bool)

(declare-fun nullableZipper!97 ((InoxSet Context!2566)) Bool)

(declare-datatypes ((tuple3!3116 0))(
  ( (tuple3!3117 (_1!13884 (InoxSet Context!2566)) (_2!13884 CacheUp!1732) (_3!2028 CacheDown!1714)) )
))
(declare-fun derivationStepZipperMem!23 ((InoxSet Context!2566) C!11572 CacheUp!1732 CacheDown!1714) tuple3!3116)

(declare-fun apply!5922 (BalanceConc!15464 Int) C!11572)

(assert (=> b!2131202 (= lt!796478 (nullableZipper!97 (_1!13884 (derivationStepZipperMem!23 z!3839 (apply!5922 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))))

(declare-fun e!1359419 () Bool)

(declare-fun e!1359426 () Bool)

(declare-fun b!2131203 () Bool)

(assert (=> b!2131203 (= e!1359419 (and setRes!15745 (inv!31602 (totalInput!3004 (h!29377 stack!8))) e!1359426))))

(declare-fun condSetEmpty!15744 () Bool)

(assert (=> b!2131203 (= condSetEmpty!15744 (= (z!5788 (h!29377 stack!8)) ((as const (Array Context!2566 Bool)) false)))))

(declare-fun b!2131204 () Bool)

(declare-fun tp!655505 () Bool)

(declare-fun inv!31603 (Conc!7851) Bool)

(assert (=> b!2131204 (= e!1359413 (and (inv!31603 (c!340188 (totalInput!3003 cacheFurthestNullable!114))) tp!655505))))

(declare-fun b!2131205 () Bool)

(declare-fun e!1359414 () Bool)

(declare-fun e!1359410 () Bool)

(assert (=> b!2131205 (= e!1359414 e!1359410)))

(declare-fun setIsEmpty!15745 () Bool)

(declare-fun setRes!15744 () Bool)

(assert (=> setIsEmpty!15745 setRes!15744))

(declare-fun b!2131206 () Bool)

(declare-fun res!921302 () Bool)

(declare-fun e!1359417 () Bool)

(assert (=> b!2131206 (=> (not res!921302) (not e!1359417))))

(declare-fun e!1359423 () Bool)

(assert (=> b!2131206 (= res!921302 e!1359423)))

(declare-fun res!921304 () Bool)

(assert (=> b!2131206 (=> res!921304 e!1359423)))

(assert (=> b!2131206 (= res!921304 (not (nullableZipper!97 z!3839)))))

(declare-fun e!1359425 () Bool)

(declare-fun tp!655506 () Bool)

(declare-fun tp!655488 () Bool)

(declare-fun array_inv!2801 (array!8817) Bool)

(assert (=> b!2131207 (= e!1359410 (and tp!655489 tp!655488 tp!655506 (array_inv!2799 (_keys!2882 (v!28527 (underlying!5365 (v!28528 (underlying!5366 (cache!2880 cacheFurthestNullable!114))))))) (array_inv!2801 (_values!2865 (v!28527 (underlying!5365 (v!28528 (underlying!5366 (cache!2880 cacheFurthestNullable!114))))))) e!1359425))))

(declare-fun b!2131208 () Bool)

(declare-fun tp!655482 () Bool)

(assert (=> b!2131208 (= e!1359426 (and (inv!31603 (c!340188 (totalInput!3004 (h!29377 stack!8)))) tp!655482))))

(assert (=> b!2131209 (= e!1359417 e!1359409)))

(declare-fun res!921301 () Bool)

(assert (=> b!2131209 (=> (not res!921301) (not e!1359409))))

(assert (=> b!2131209 (= res!921301 (forall!4907 stack!8 lambda!79194))))

(declare-fun lt!796481 () Int)

(declare-fun lt!796477 () Int)

(declare-fun furthestNullablePosition!33 ((InoxSet Context!2566) Int BalanceConc!15464 Int Int) Int)

(assert (=> b!2131209 (= lt!796481 (furthestNullablePosition!33 z!3839 from!1043 totalInput!851 lt!796477 lastNullablePos!123))))

(declare-fun b!2131210 () Bool)

(declare-fun e!1359394 () Bool)

(declare-fun e!1359396 () Bool)

(declare-fun lt!796480 () MutLongMap!2584)

(assert (=> b!2131210 (= e!1359394 (and e!1359396 ((_ is LongMap!2584) lt!796480)))))

(assert (=> b!2131210 (= lt!796480 (v!28526 (underlying!5364 (cache!2879 cacheUp!979))))))

(declare-fun b!2131211 () Bool)

(declare-fun e!1359422 () Bool)

(declare-fun lt!796479 () MutLongMap!2585)

(assert (=> b!2131211 (= e!1359403 (and e!1359422 ((_ is LongMap!2585) lt!796479)))))

(assert (=> b!2131211 (= lt!796479 (v!28528 (underlying!5366 (cache!2880 cacheFurthestNullable!114))))))

(declare-fun e!1359392 () Bool)

(declare-fun tp!655486 () Bool)

(declare-fun tp!655493 () Bool)

(declare-fun array_inv!2802 (array!8813) Bool)

(assert (=> b!2131212 (= e!1359392 (and tp!655502 tp!655493 tp!655486 (array_inv!2799 (_keys!2880 (v!28523 (underlying!5361 (v!28524 (underlying!5362 (cache!2878 cacheDown!1098))))))) (array_inv!2802 (_values!2863 (v!28523 (underlying!5361 (v!28524 (underlying!5362 (cache!2878 cacheDown!1098))))))) e!1359395))))

(declare-fun b!2131213 () Bool)

(declare-fun tp!655509 () Bool)

(declare-fun mapRes!12520 () Bool)

(assert (=> b!2131213 (= e!1359425 (and tp!655509 mapRes!12520))))

(declare-fun condMapEmpty!12520 () Bool)

(declare-fun mapDefault!12522 () List!24058)

(assert (=> b!2131213 (= condMapEmpty!12520 (= (arr!3920 (_values!2865 (v!28527 (underlying!5365 (v!28528 (underlying!5366 (cache!2880 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24058)) mapDefault!12522)))))

(declare-fun b!2131214 () Bool)

(declare-fun e!1359415 () Bool)

(declare-fun tp!655503 () Bool)

(assert (=> b!2131214 (= e!1359415 tp!655503)))

(declare-fun b!2131215 () Bool)

(declare-fun res!921312 () Bool)

(assert (=> b!2131215 (=> (not res!921312) (not e!1359417))))

(declare-fun valid!2028 (CacheFurthestNullable!672) Bool)

(assert (=> b!2131215 (= res!921312 (valid!2028 cacheFurthestNullable!114))))

(declare-fun b!2131216 () Bool)

(assert (=> b!2131216 (= e!1359423 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2131217 () Bool)

(declare-fun res!921300 () Bool)

(assert (=> b!2131217 (=> res!921300 e!1359416)))

(declare-fun lostCauseZipper!73 ((InoxSet Context!2566)) Bool)

(assert (=> b!2131217 (= res!921300 (lostCauseZipper!73 z!3839))))

(declare-fun b!2131218 () Bool)

(declare-fun res!921303 () Bool)

(assert (=> b!2131218 (=> res!921303 e!1359416)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2131218 (= res!921303 (= from!1043 totalInputSize!296))))

(declare-fun tp!655484 () Bool)

(declare-fun e!1359405 () Bool)

(declare-fun b!2131219 () Bool)

(declare-fun inv!31604 (StackFrame!120) Bool)

(assert (=> b!2131219 (= e!1359405 (and (inv!31604 (h!29377 stack!8)) e!1359419 tp!655484))))

(declare-fun mapIsEmpty!12521 () Bool)

(assert (=> mapIsEmpty!12521 mapRes!12520))

(declare-fun b!2131220 () Bool)

(assert (=> b!2131220 (= e!1359396 e!1359400)))

(declare-fun tp!655510 () Bool)

(declare-fun e!1359407 () Bool)

(declare-fun setElem!15744 () Context!2566)

(declare-fun setNonEmpty!15744 () Bool)

(declare-fun inv!31605 (Context!2566) Bool)

(assert (=> setNonEmpty!15744 (= setRes!15745 (and tp!655510 (inv!31605 setElem!15744) e!1359407))))

(declare-fun setRest!15744 () (InoxSet Context!2566))

(assert (=> setNonEmpty!15744 (= (z!5788 (h!29377 stack!8)) ((_ map or) (store ((as const (Array Context!2566 Bool)) false) setElem!15744 true) setRest!15744))))

(declare-fun b!2131221 () Bool)

(declare-fun res!921309 () Bool)

(assert (=> b!2131221 (=> (not res!921309) (not e!1359417))))

(assert (=> b!2131221 (= res!921309 (= (totalInput!3003 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2131222 () Bool)

(declare-fun e!1359412 () Bool)

(declare-fun tp!655494 () Bool)

(assert (=> b!2131222 (= e!1359412 (and (inv!31603 (c!340188 totalInput!851)) tp!655494))))

(declare-fun setElem!15745 () Context!2566)

(declare-fun setNonEmpty!15745 () Bool)

(declare-fun tp!655485 () Bool)

(assert (=> setNonEmpty!15745 (= setRes!15744 (and tp!655485 (inv!31605 setElem!15745) e!1359415))))

(declare-fun setRest!15745 () (InoxSet Context!2566))

(assert (=> setNonEmpty!15745 (= z!3839 ((_ map or) (store ((as const (Array Context!2566 Bool)) false) setElem!15745 true) setRest!15745))))

(declare-fun b!2131223 () Bool)

(declare-fun tp!655497 () Bool)

(assert (=> b!2131223 (= e!1359407 tp!655497)))

(declare-fun b!2131224 () Bool)

(declare-fun e!1359404 () Bool)

(assert (=> b!2131224 (= e!1359408 e!1359404)))

(declare-fun b!2131225 () Bool)

(assert (=> b!2131225 (= e!1359422 e!1359414)))

(declare-fun b!2131226 () Bool)

(declare-fun tp!655483 () Bool)

(declare-fun mapRes!12521 () Bool)

(assert (=> b!2131226 (= e!1359424 (and tp!655483 mapRes!12521))))

(declare-fun condMapEmpty!12522 () Bool)

(declare-fun mapDefault!12521 () List!24057)

(assert (=> b!2131226 (= condMapEmpty!12522 (= (arr!3919 (_values!2864 (v!28525 (underlying!5363 (v!28526 (underlying!5364 (cache!2879 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24057)) mapDefault!12521)))))

(declare-fun b!2131227 () Bool)

(declare-fun e!1359402 () Bool)

(declare-fun e!1359398 () Bool)

(assert (=> b!2131227 (= e!1359402 e!1359398)))

(declare-fun b!2131228 () Bool)

(declare-fun res!921310 () Bool)

(assert (=> b!2131228 (=> (not res!921310) (not e!1359417))))

(declare-fun valid!2029 (CacheDown!1714) Bool)

(assert (=> b!2131228 (= res!921310 (valid!2029 cacheDown!1098))))

(declare-fun b!2131229 () Bool)

(declare-fun res!921311 () Bool)

(assert (=> b!2131229 (=> (not res!921311) (not e!1359417))))

(declare-fun valid!2030 (CacheUp!1732) Bool)

(assert (=> b!2131229 (= res!921311 (valid!2030 cacheUp!979))))

(declare-fun res!921307 () Bool)

(declare-fun e!1359420 () Bool)

(assert (=> start!207532 (=> (not res!921307) (not e!1359420))))

(assert (=> start!207532 (= res!921307 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207532 e!1359420))

(declare-fun inv!31606 (CacheFurthestNullable!672) Bool)

(assert (=> start!207532 (and (inv!31606 cacheFurthestNullable!114) e!1359421)))

(assert (=> start!207532 true))

(declare-fun inv!31607 (CacheDown!1714) Bool)

(assert (=> start!207532 (and (inv!31607 cacheDown!1098) e!1359402)))

(declare-fun e!1359393 () Bool)

(declare-fun inv!31608 (CacheUp!1732) Bool)

(assert (=> start!207532 (and (inv!31608 cacheUp!979) e!1359393)))

(declare-fun condSetEmpty!15745 () Bool)

(assert (=> start!207532 (= condSetEmpty!15745 (= z!3839 ((as const (Array Context!2566 Bool)) false)))))

(assert (=> start!207532 setRes!15744))

(assert (=> start!207532 (and (inv!31602 totalInput!851) e!1359412)))

(assert (=> start!207532 e!1359405))

(assert (=> b!2131200 (= e!1359398 (and e!1359418 tp!655508))))

(declare-fun res!921308 () Bool)

(assert (=> b!2131230 (=> (not res!921308) (not e!1359409))))

(assert (=> b!2131230 (= res!921308 (forall!4907 stack!8 lambda!79195))))

(declare-fun b!2131231 () Bool)

(assert (=> b!2131231 (= e!1359404 e!1359392)))

(declare-fun mapNonEmpty!12520 () Bool)

(declare-fun tp!655504 () Bool)

(declare-fun tp!655499 () Bool)

(assert (=> mapNonEmpty!12520 (= mapRes!12521 (and tp!655504 tp!655499))))

(declare-fun mapValue!12520 () List!24057)

(declare-fun mapKey!12520 () (_ BitVec 32))

(declare-fun mapRest!12521 () (Array (_ BitVec 32) List!24057))

(assert (=> mapNonEmpty!12520 (= (arr!3919 (_values!2864 (v!28525 (underlying!5363 (v!28526 (underlying!5364 (cache!2879 cacheUp!979))))))) (store mapRest!12521 mapKey!12520 mapValue!12520))))

(declare-fun b!2131232 () Bool)

(declare-fun e!1359427 () Bool)

(assert (=> b!2131232 (= e!1359393 e!1359427)))

(declare-fun mapNonEmpty!12521 () Bool)

(declare-fun tp!655496 () Bool)

(declare-fun tp!655507 () Bool)

(assert (=> mapNonEmpty!12521 (= mapRes!12520 (and tp!655496 tp!655507))))

(declare-fun mapRest!12520 () (Array (_ BitVec 32) List!24058))

(declare-fun mapKey!12522 () (_ BitVec 32))

(declare-fun mapValue!12522 () List!24058)

(assert (=> mapNonEmpty!12521 (= (arr!3920 (_values!2865 (v!28527 (underlying!5365 (v!28528 (underlying!5366 (cache!2880 cacheFurthestNullable!114))))))) (store mapRest!12520 mapKey!12522 mapValue!12522))))

(assert (=> b!2131233 (= e!1359427 (and e!1359394 tp!655500))))

(declare-fun mapIsEmpty!12522 () Bool)

(assert (=> mapIsEmpty!12522 mapRes!12521))

(declare-fun mapNonEmpty!12522 () Bool)

(declare-fun tp!655490 () Bool)

(declare-fun tp!655498 () Bool)

(assert (=> mapNonEmpty!12522 (= mapRes!12522 (and tp!655490 tp!655498))))

(declare-fun mapRest!12522 () (Array (_ BitVec 32) List!24056))

(declare-fun mapKey!12521 () (_ BitVec 32))

(declare-fun mapValue!12521 () List!24056)

(assert (=> mapNonEmpty!12522 (= (arr!3918 (_values!2863 (v!28523 (underlying!5361 (v!28524 (underlying!5362 (cache!2878 cacheDown!1098))))))) (store mapRest!12522 mapKey!12521 mapValue!12521))))

(declare-fun b!2131234 () Bool)

(assert (=> b!2131234 (= e!1359420 e!1359417)))

(declare-fun res!921306 () Bool)

(assert (=> b!2131234 (=> (not res!921306) (not e!1359417))))

(assert (=> b!2131234 (= res!921306 (and (= totalInputSize!296 lt!796477) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18753 (BalanceConc!15464) Int)

(assert (=> b!2131234 (= lt!796477 (size!18753 totalInput!851))))

(assert (= (and start!207532 res!921307) b!2131234))

(assert (= (and b!2131234 res!921306) b!2131206))

(assert (= (and b!2131206 (not res!921304)) b!2131216))

(assert (= (and b!2131206 res!921302) b!2131229))

(assert (= (and b!2131229 res!921311) b!2131228))

(assert (= (and b!2131228 res!921310) b!2131215))

(assert (= (and b!2131215 res!921312) b!2131221))

(assert (= (and b!2131221 res!921309) b!2131209))

(assert (= (and b!2131209 res!921301) b!2131230))

(assert (= (and b!2131230 res!921308) b!2131198))

(assert (= (and b!2131198 (not res!921305)) b!2131218))

(assert (= (and b!2131218 (not res!921303)) b!2131217))

(assert (= (and b!2131217 (not res!921300)) b!2131202))

(assert (= (and b!2131213 condMapEmpty!12520) mapIsEmpty!12521))

(assert (= (and b!2131213 (not condMapEmpty!12520)) mapNonEmpty!12521))

(assert (= b!2131207 b!2131213))

(assert (= b!2131205 b!2131207))

(assert (= b!2131225 b!2131205))

(assert (= (and b!2131211 ((_ is LongMap!2585) (v!28528 (underlying!5366 (cache!2880 cacheFurthestNullable!114))))) b!2131225))

(assert (= b!2131201 b!2131211))

(assert (= (and b!2131199 ((_ is HashMap!2499) (cache!2880 cacheFurthestNullable!114))) b!2131201))

(assert (= b!2131199 b!2131204))

(assert (= start!207532 b!2131199))

(assert (= (and b!2131194 condMapEmpty!12521) mapIsEmpty!12520))

(assert (= (and b!2131194 (not condMapEmpty!12521)) mapNonEmpty!12522))

(assert (= b!2131212 b!2131194))

(assert (= b!2131231 b!2131212))

(assert (= b!2131224 b!2131231))

(assert (= (and b!2131197 ((_ is LongMap!2583) (v!28524 (underlying!5362 (cache!2878 cacheDown!1098))))) b!2131224))

(assert (= b!2131200 b!2131197))

(assert (= (and b!2131227 ((_ is HashMap!2497) (cache!2878 cacheDown!1098))) b!2131200))

(assert (= start!207532 b!2131227))

(assert (= (and b!2131226 condMapEmpty!12522) mapIsEmpty!12522))

(assert (= (and b!2131226 (not condMapEmpty!12522)) mapNonEmpty!12520))

(assert (= b!2131196 b!2131226))

(assert (= b!2131195 b!2131196))

(assert (= b!2131220 b!2131195))

(assert (= (and b!2131210 ((_ is LongMap!2584) (v!28526 (underlying!5364 (cache!2879 cacheUp!979))))) b!2131220))

(assert (= b!2131233 b!2131210))

(assert (= (and b!2131232 ((_ is HashMap!2498) (cache!2879 cacheUp!979))) b!2131233))

(assert (= start!207532 b!2131232))

(assert (= (and start!207532 condSetEmpty!15745) setIsEmpty!15745))

(assert (= (and start!207532 (not condSetEmpty!15745)) setNonEmpty!15745))

(assert (= setNonEmpty!15745 b!2131214))

(assert (= start!207532 b!2131222))

(assert (= (and b!2131203 condSetEmpty!15744) setIsEmpty!15744))

(assert (= (and b!2131203 (not condSetEmpty!15744)) setNonEmpty!15744))

(assert (= setNonEmpty!15744 b!2131223))

(assert (= b!2131203 b!2131208))

(assert (= b!2131219 b!2131203))

(assert (= (and start!207532 ((_ is Cons!23976) stack!8)) b!2131219))

(declare-fun m!2580972 () Bool)

(assert (=> b!2131209 m!2580972))

(declare-fun m!2580974 () Bool)

(assert (=> b!2131209 m!2580974))

(declare-fun m!2580976 () Bool)

(assert (=> b!2131229 m!2580976))

(declare-fun m!2580978 () Bool)

(assert (=> mapNonEmpty!12521 m!2580978))

(declare-fun m!2580980 () Bool)

(assert (=> b!2131234 m!2580980))

(declare-fun m!2580982 () Bool)

(assert (=> b!2131215 m!2580982))

(declare-fun m!2580984 () Bool)

(assert (=> b!2131219 m!2580984))

(declare-fun m!2580986 () Bool)

(assert (=> b!2131207 m!2580986))

(declare-fun m!2580988 () Bool)

(assert (=> b!2131207 m!2580988))

(declare-fun m!2580990 () Bool)

(assert (=> setNonEmpty!15744 m!2580990))

(declare-fun m!2580992 () Bool)

(assert (=> b!2131208 m!2580992))

(declare-fun m!2580994 () Bool)

(assert (=> mapNonEmpty!12520 m!2580994))

(declare-fun m!2580996 () Bool)

(assert (=> b!2131212 m!2580996))

(declare-fun m!2580998 () Bool)

(assert (=> b!2131212 m!2580998))

(declare-fun m!2581000 () Bool)

(assert (=> setNonEmpty!15745 m!2581000))

(declare-fun m!2581002 () Bool)

(assert (=> b!2131196 m!2581002))

(declare-fun m!2581004 () Bool)

(assert (=> b!2131196 m!2581004))

(declare-fun m!2581006 () Bool)

(assert (=> b!2131217 m!2581006))

(declare-fun m!2581008 () Bool)

(assert (=> b!2131230 m!2581008))

(declare-fun m!2581010 () Bool)

(assert (=> b!2131228 m!2581010))

(declare-fun m!2581012 () Bool)

(assert (=> b!2131203 m!2581012))

(declare-fun m!2581014 () Bool)

(assert (=> b!2131202 m!2581014))

(assert (=> b!2131202 m!2581014))

(declare-fun m!2581016 () Bool)

(assert (=> b!2131202 m!2581016))

(declare-fun m!2581018 () Bool)

(assert (=> b!2131202 m!2581018))

(declare-fun m!2581020 () Bool)

(assert (=> b!2131206 m!2581020))

(declare-fun m!2581022 () Bool)

(assert (=> b!2131222 m!2581022))

(declare-fun m!2581024 () Bool)

(assert (=> b!2131204 m!2581024))

(declare-fun m!2581026 () Bool)

(assert (=> b!2131199 m!2581026))

(declare-fun m!2581028 () Bool)

(assert (=> start!207532 m!2581028))

(declare-fun m!2581030 () Bool)

(assert (=> start!207532 m!2581030))

(declare-fun m!2581032 () Bool)

(assert (=> start!207532 m!2581032))

(declare-fun m!2581034 () Bool)

(assert (=> start!207532 m!2581034))

(declare-fun m!2581036 () Bool)

(assert (=> mapNonEmpty!12522 m!2581036))

(declare-fun m!2581038 () Bool)

(assert (=> b!2131198 m!2581038))

(assert (=> b!2131198 m!2580972))

(check-sat (not b!2131230) (not b_next!62925) (not b!2131234) (not b_next!62921) (not b!2131209) (not b!2131222) b_and!171801 (not b!2131223) (not b!2131212) (not b!2131226) (not b!2131196) (not b!2131202) (not b!2131207) b_and!171793 (not setNonEmpty!15745) (not mapNonEmpty!12521) (not start!207532) (not b!2131214) (not setNonEmpty!15744) (not b!2131198) b_and!171795 b_and!171803 (not b!2131228) (not b!2131204) b_and!171799 (not b_next!62917) (not mapNonEmpty!12522) (not b!2131215) (not b!2131206) (not b_next!62927) (not b_next!62919) (not b!2131213) (not mapNonEmpty!12520) (not b!2131208) (not b!2131203) (not b_next!62923) (not b!2131229) b_and!171797 (not b!2131217) (not b!2131199) (not b!2131219) (not b!2131194))
(check-sat b_and!171793 (not b_next!62925) (not b_next!62921) b_and!171799 (not b_next!62917) b_and!171801 b_and!171795 b_and!171803 (not b_next!62927) (not b_next!62919) b_and!171797 (not b_next!62923))
