; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411890 () Bool)

(assert start!411890)

(declare-fun b!4288789 () Bool)

(declare-fun b_free!127271 () Bool)

(declare-fun b_next!127975 () Bool)

(assert (=> b!4288789 (= b_free!127271 (not b_next!127975))))

(declare-fun tp!1314367 () Bool)

(declare-fun b_and!338487 () Bool)

(assert (=> b!4288789 (= tp!1314367 b_and!338487)))

(declare-fun b!4288791 () Bool)

(declare-fun b_free!127273 () Bool)

(declare-fun b_next!127977 () Bool)

(assert (=> b!4288791 (= b_free!127273 (not b_next!127977))))

(declare-fun tp!1314365 () Bool)

(declare-fun b_and!338489 () Bool)

(assert (=> b!4288791 (= tp!1314365 b_and!338489)))

(declare-fun b!4288760 () Bool)

(declare-fun b_free!127275 () Bool)

(declare-fun b_next!127979 () Bool)

(assert (=> b!4288760 (= b_free!127275 (not b_next!127979))))

(declare-fun tp!1314370 () Bool)

(declare-fun b_and!338491 () Bool)

(assert (=> b!4288760 (= tp!1314370 b_and!338491)))

(declare-fun b!4288777 () Bool)

(declare-fun b_free!127277 () Bool)

(declare-fun b_next!127981 () Bool)

(assert (=> b!4288777 (= b_free!127277 (not b_next!127981))))

(declare-fun tp!1314383 () Bool)

(declare-fun b_and!338493 () Bool)

(assert (=> b!4288777 (= tp!1314383 b_and!338493)))

(declare-fun b!4288771 () Bool)

(declare-fun b_free!127279 () Bool)

(declare-fun b_next!127983 () Bool)

(assert (=> b!4288771 (= b_free!127279 (not b_next!127983))))

(declare-fun tp!1314382 () Bool)

(declare-fun b_and!338495 () Bool)

(assert (=> b!4288771 (= tp!1314382 b_and!338495)))

(declare-fun b!4288750 () Bool)

(declare-fun b_free!127281 () Bool)

(declare-fun b_next!127985 () Bool)

(assert (=> b!4288750 (= b_free!127281 (not b_next!127985))))

(declare-fun tp!1314360 () Bool)

(declare-fun b_and!338497 () Bool)

(assert (=> b!4288750 (= tp!1314360 b_and!338497)))

(declare-fun b!4288747 () Bool)

(declare-fun e!2663730 () Bool)

(declare-fun e!2663724 () Bool)

(declare-datatypes ((array!15600 0))(
  ( (array!15601 (arr!6968 (Array (_ BitVec 32) (_ BitVec 64))) (size!34926 (_ BitVec 32))) )
))
(declare-datatypes ((C!26076 0))(
  ( (C!26077 (val!15364 Int)) )
))
(declare-datatypes ((Regex!12939 0))(
  ( (ElementMatch!12939 (c!730198 C!26076)) (Concat!21258 (regOne!26390 Regex!12939) (regTwo!26390 Regex!12939)) (EmptyExpr!12939) (Star!12939 (reg!13268 Regex!12939)) (EmptyLang!12939) (Union!12939 (regOne!26391 Regex!12939) (regTwo!26391 Regex!12939)) )
))
(declare-datatypes ((List!47743 0))(
  ( (Nil!47619) (Cons!47619 (h!53039 Regex!12939) (t!354342 List!47743)) )
))
(declare-datatypes ((Context!5658 0))(
  ( (Context!5659 (exprs!3329 List!47743)) )
))
(declare-datatypes ((tuple3!5398 0))(
  ( (tuple3!5399 (_1!25795 Regex!12939) (_2!25795 Context!5658) (_3!3196 C!26076)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45198 0))(
  ( (tuple2!45199 (_1!25796 tuple3!5398) (_2!25796 (InoxSet Context!5658))) )
))
(declare-datatypes ((List!47744 0))(
  ( (Nil!47620) (Cons!47620 (h!53040 tuple2!45198) (t!354343 List!47744)) )
))
(declare-datatypes ((array!15602 0))(
  ( (array!15603 (arr!6969 (Array (_ BitVec 32) List!47744)) (size!34927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8724 0))(
  ( (LongMapFixedSize!8725 (defaultEntry!4747 Int) (mask!12801 (_ BitVec 32)) (extraKeys!4611 (_ BitVec 32)) (zeroValue!4621 List!47744) (minValue!4621 List!47744) (_size!8767 (_ BitVec 32)) (_keys!4662 array!15600) (_values!4643 array!15602) (_vacant!4423 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17257 0))(
  ( (Cell!17258 (v!41534 LongMapFixedSize!8724)) )
))
(declare-datatypes ((MutLongMap!4362 0))(
  ( (LongMap!4362 (underlying!8953 Cell!17257)) (MutLongMapExt!4361 (__x!29111 Int)) )
))
(declare-fun lt!1516550 () MutLongMap!4362)

(get-info :version)

(assert (=> b!4288747 (= e!2663730 (and e!2663724 ((_ is LongMap!4362) lt!1516550)))))

(declare-datatypes ((Cell!17259 0))(
  ( (Cell!17260 (v!41535 MutLongMap!4362)) )
))
(declare-datatypes ((Hashable!4278 0))(
  ( (HashableExt!4277 (__x!29112 Int)) )
))
(declare-datatypes ((MutableMap!4268 0))(
  ( (MutableMapExt!4267 (__x!29113 Int)) (HashMap!4268 (underlying!8954 Cell!17259) (hashF!6310 Hashable!4278) (_size!8768 (_ BitVec 32)) (defaultValue!4439 Int)) )
))
(declare-datatypes ((CacheDown!2906 0))(
  ( (CacheDown!2907 (cache!4408 MutableMap!4268)) )
))
(declare-fun cacheDown!1163 () CacheDown!2906)

(assert (=> b!4288747 (= lt!1516550 (v!41535 (underlying!8954 (cache!4408 cacheDown!1163))))))

(declare-fun b!4288748 () Bool)

(declare-fun res!1759239 () Bool)

(declare-fun e!2663735 () Bool)

(assert (=> b!4288748 (=> (not res!1759239) (not e!2663735))))

(declare-datatypes ((tuple2!45200 0))(
  ( (tuple2!45201 (_1!25797 Context!5658) (_2!25797 C!26076)) )
))
(declare-datatypes ((tuple2!45202 0))(
  ( (tuple2!45203 (_1!25798 tuple2!45200) (_2!25798 (InoxSet Context!5658))) )
))
(declare-datatypes ((List!47745 0))(
  ( (Nil!47621) (Cons!47621 (h!53041 tuple2!45202) (t!354344 List!47745)) )
))
(declare-datatypes ((array!15604 0))(
  ( (array!15605 (arr!6970 (Array (_ BitVec 32) List!47745)) (size!34928 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8726 0))(
  ( (LongMapFixedSize!8727 (defaultEntry!4748 Int) (mask!12802 (_ BitVec 32)) (extraKeys!4612 (_ BitVec 32)) (zeroValue!4622 List!47745) (minValue!4622 List!47745) (_size!8769 (_ BitVec 32)) (_keys!4663 array!15600) (_values!4644 array!15604) (_vacant!4424 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17261 0))(
  ( (Cell!17262 (v!41536 LongMapFixedSize!8726)) )
))
(declare-datatypes ((MutLongMap!4363 0))(
  ( (LongMap!4363 (underlying!8955 Cell!17261)) (MutLongMapExt!4362 (__x!29114 Int)) )
))
(declare-datatypes ((Cell!17263 0))(
  ( (Cell!17264 (v!41537 MutLongMap!4363)) )
))
(declare-datatypes ((Hashable!4279 0))(
  ( (HashableExt!4278 (__x!29115 Int)) )
))
(declare-datatypes ((MutableMap!4269 0))(
  ( (MutableMapExt!4268 (__x!29116 Int)) (HashMap!4269 (underlying!8956 Cell!17263) (hashF!6311 Hashable!4279) (_size!8770 (_ BitVec 32)) (defaultValue!4440 Int)) )
))
(declare-datatypes ((CacheUp!2788 0))(
  ( (CacheUp!2789 (cache!4409 MutableMap!4269)) )
))
(declare-datatypes ((tuple2!45204 0))(
  ( (tuple2!45205 (_1!25799 (InoxSet Context!5658)) (_2!25799 Int)) )
))
(declare-datatypes ((tuple2!45206 0))(
  ( (tuple2!45207 (_1!25800 tuple2!45204) (_2!25800 Int)) )
))
(declare-datatypes ((List!47746 0))(
  ( (Nil!47622) (Cons!47622 (h!53042 tuple2!45206) (t!354345 List!47746)) )
))
(declare-datatypes ((array!15606 0))(
  ( (array!15607 (arr!6971 (Array (_ BitVec 32) List!47746)) (size!34929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8728 0))(
  ( (LongMapFixedSize!8729 (defaultEntry!4749 Int) (mask!12803 (_ BitVec 32)) (extraKeys!4613 (_ BitVec 32)) (zeroValue!4623 List!47746) (minValue!4623 List!47746) (_size!8771 (_ BitVec 32)) (_keys!4664 array!15600) (_values!4645 array!15606) (_vacant!4425 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17265 0))(
  ( (Cell!17266 (v!41538 LongMapFixedSize!8728)) )
))
(declare-datatypes ((List!47747 0))(
  ( (Nil!47623) (Cons!47623 (h!53043 C!26076) (t!354346 List!47747)) )
))
(declare-datatypes ((IArray!28823 0))(
  ( (IArray!28824 (innerList!14469 List!47747)) )
))
(declare-datatypes ((Conc!14381 0))(
  ( (Node!14381 (left!35383 Conc!14381) (right!35713 Conc!14381) (csize!28992 Int) (cheight!14592 Int)) (Leaf!22252 (xs!17687 IArray!28823) (csize!28993 Int)) (Empty!14381) )
))
(declare-datatypes ((MutLongMap!4364 0))(
  ( (LongMap!4364 (underlying!8957 Cell!17265)) (MutLongMapExt!4363 (__x!29117 Int)) )
))
(declare-datatypes ((Cell!17267 0))(
  ( (Cell!17268 (v!41539 MutLongMap!4364)) )
))
(declare-datatypes ((Hashable!4280 0))(
  ( (HashableExt!4279 (__x!29118 Int)) )
))
(declare-datatypes ((MutableMap!4270 0))(
  ( (MutableMapExt!4269 (__x!29119 Int)) (HashMap!4270 (underlying!8958 Cell!17267) (hashF!6312 Hashable!4280) (_size!8772 (_ BitVec 32)) (defaultValue!4441 Int)) )
))
(declare-datatypes ((BalanceConc!28252 0))(
  ( (BalanceConc!28253 (c!730199 Conc!14381)) )
))
(declare-datatypes ((CacheFindLongestMatch!450 0))(
  ( (CacheFindLongestMatch!451 (cache!4410 MutableMap!4270) (totalInput!4335 BalanceConc!28252)) )
))
(declare-datatypes ((tuple4!994 0))(
  ( (tuple4!995 (_1!25801 Int) (_2!25801 CacheUp!2788) (_3!3197 CacheDown!2906) (_4!497 CacheFindLongestMatch!450)) )
))
(declare-fun lt!1516556 () tuple4!994)

(declare-fun valid!3392 (CacheDown!2906) Bool)

(assert (=> b!4288748 (= res!1759239 (valid!3392 (_3!3197 lt!1516556)))))

(declare-fun mapNonEmpty!19668 () Bool)

(declare-fun mapRes!19668 () Bool)

(declare-fun tp!1314363 () Bool)

(declare-fun tp!1314384 () Bool)

(assert (=> mapNonEmpty!19668 (= mapRes!19668 (and tp!1314363 tp!1314384))))

(declare-fun mapKey!19668 () (_ BitVec 32))

(declare-fun mapValue!19670 () List!47746)

(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!450)

(declare-fun mapRest!19668 () (Array (_ BitVec 32) List!47746))

(assert (=> mapNonEmpty!19668 (= (arr!6971 (_values!4645 (v!41538 (underlying!8957 (v!41539 (underlying!8958 (cache!4410 cacheFindLongestMatch!199))))))) (store mapRest!19668 mapKey!19668 mapValue!19670))))

(declare-fun b!4288749 () Bool)

(declare-fun e!2663727 () Bool)

(declare-fun tp!1314368 () Bool)

(assert (=> b!4288749 (= e!2663727 (and tp!1314368 mapRes!19668))))

(declare-fun condMapEmpty!19668 () Bool)

(declare-fun mapDefault!19669 () List!47746)

(assert (=> b!4288749 (= condMapEmpty!19668 (= (arr!6971 (_values!4645 (v!41538 (underlying!8957 (v!41539 (underlying!8958 (cache!4410 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47746)) mapDefault!19669)))))

(declare-fun cacheUp!1044 () CacheUp!2788)

(declare-fun e!2663712 () Bool)

(declare-fun tp!1314362 () Bool)

(declare-fun tp!1314374 () Bool)

(declare-fun e!2663736 () Bool)

(declare-fun array_inv!4999 (array!15600) Bool)

(declare-fun array_inv!5000 (array!15604) Bool)

(assert (=> b!4288750 (= e!2663736 (and tp!1314360 tp!1314362 tp!1314374 (array_inv!4999 (_keys!4663 (v!41536 (underlying!8955 (v!41537 (underlying!8956 (cache!4409 cacheUp!1044))))))) (array_inv!5000 (_values!4644 (v!41536 (underlying!8955 (v!41537 (underlying!8956 (cache!4409 cacheUp!1044))))))) e!2663712))))

(declare-fun b!4288752 () Bool)

(declare-fun tp!1314378 () Bool)

(declare-fun mapRes!19670 () Bool)

(assert (=> b!4288752 (= e!2663712 (and tp!1314378 mapRes!19670))))

(declare-fun condMapEmpty!19669 () Bool)

(declare-fun mapDefault!19668 () List!47745)

(assert (=> b!4288752 (= condMapEmpty!19669 (= (arr!6970 (_values!4644 (v!41536 (underlying!8955 (v!41537 (underlying!8956 (cache!4409 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47745)) mapDefault!19668)))))

(declare-fun b!4288753 () Bool)

(declare-fun e!2663742 () Bool)

(declare-datatypes ((tuple2!45208 0))(
  ( (tuple2!45209 (_1!25802 BalanceConc!28252) (_2!25802 BalanceConc!28252)) )
))
(declare-datatypes ((tuple4!996 0))(
  ( (tuple4!997 (_1!25803 tuple2!45208) (_2!25803 CacheUp!2788) (_3!3198 CacheDown!2906) (_4!498 CacheFindLongestMatch!450)) )
))
(declare-fun lt!1516561 () tuple4!996)

(declare-fun totalInput!1189 () BalanceConc!28252)

(assert (=> b!4288753 (= e!2663742 (= (totalInput!4335 (_4!498 lt!1516561)) totalInput!1189))))

(declare-fun b!4288754 () Bool)

(declare-fun e!2663711 () Bool)

(declare-fun tp!1314388 () Bool)

(declare-fun inv!63096 (Conc!14381) Bool)

(assert (=> b!4288754 (= e!2663711 (and (inv!63096 (c!730199 (totalInput!4335 cacheFindLongestMatch!199))) tp!1314388))))

(declare-fun b!4288755 () Bool)

(declare-fun e!2663731 () Bool)

(declare-fun e!2663737 () Bool)

(assert (=> b!4288755 (= e!2663731 e!2663737)))

(declare-fun b!4288756 () Bool)

(declare-fun e!2663732 () Bool)

(declare-fun e!2663718 () Bool)

(assert (=> b!4288756 (= e!2663732 e!2663718)))

(declare-fun b!4288757 () Bool)

(declare-fun e!2663722 () Bool)

(declare-fun lt!1516562 () tuple2!45208)

(declare-datatypes ((tuple2!45210 0))(
  ( (tuple2!45211 (_1!25804 List!47747) (_2!25804 List!47747)) )
))
(declare-fun lt!1516554 () tuple2!45210)

(declare-fun list!17346 (BalanceConc!28252) List!47747)

(assert (=> b!4288757 (= e!2663722 (= (list!17346 (_2!25802 lt!1516562)) (_2!25804 lt!1516554)))))

(declare-fun mapNonEmpty!19669 () Bool)

(declare-fun tp!1314375 () Bool)

(declare-fun tp!1314387 () Bool)

(assert (=> mapNonEmpty!19669 (= mapRes!19670 (and tp!1314375 tp!1314387))))

(declare-fun mapValue!19668 () List!47745)

(declare-fun mapRest!19669 () (Array (_ BitVec 32) List!47745))

(declare-fun mapKey!19670 () (_ BitVec 32))

(assert (=> mapNonEmpty!19669 (= (arr!6970 (_values!4644 (v!41536 (underlying!8955 (v!41537 (underlying!8956 (cache!4409 cacheUp!1044))))))) (store mapRest!19669 mapKey!19670 mapValue!19668))))

(declare-fun b!4288758 () Bool)

(declare-fun e!2663733 () Bool)

(declare-fun e!2663710 () Bool)

(assert (=> b!4288758 (= e!2663733 e!2663710)))

(declare-fun b!4288759 () Bool)

(declare-fun res!1759227 () Bool)

(declare-fun e!2663721 () Bool)

(assert (=> b!4288759 (=> (not res!1759227) (not e!2663721))))

(declare-fun valid!3393 (CacheUp!2788) Bool)

(assert (=> b!4288759 (= res!1759227 (valid!3393 (_2!25803 lt!1516561)))))

(declare-fun e!2663734 () Bool)

(declare-fun tp!1314380 () Bool)

(declare-fun tp!1314372 () Bool)

(declare-fun array_inv!5001 (array!15606) Bool)

(assert (=> b!4288760 (= e!2663734 (and tp!1314370 tp!1314380 tp!1314372 (array_inv!4999 (_keys!4664 (v!41538 (underlying!8957 (v!41539 (underlying!8958 (cache!4410 cacheFindLongestMatch!199))))))) (array_inv!5001 (_values!4645 (v!41538 (underlying!8957 (v!41539 (underlying!8958 (cache!4410 cacheFindLongestMatch!199))))))) e!2663727))))

(declare-fun b!4288761 () Bool)

(declare-fun res!1759225 () Bool)

(declare-fun e!2663743 () Bool)

(assert (=> b!4288761 (=> (not res!1759225) (not e!2663743))))

(declare-fun lt!1516548 () tuple4!996)

(assert (=> b!4288761 (= res!1759225 (valid!3392 (_3!3198 lt!1516548)))))

(declare-fun b!4288762 () Bool)

(declare-fun e!2663739 () Bool)

(declare-fun e!2663726 () Bool)

(declare-fun inv!63097 (BalanceConc!28252) Bool)

(assert (=> b!4288762 (= e!2663739 (and e!2663726 (inv!63097 (totalInput!4335 cacheFindLongestMatch!199)) e!2663711))))

(declare-fun b!4288763 () Bool)

(declare-fun res!1759226 () Bool)

(assert (=> b!4288763 (=> (not res!1759226) (not e!2663735))))

(assert (=> b!4288763 (= res!1759226 (valid!3393 (_2!25801 lt!1516556)))))

(declare-fun b!4288764 () Bool)

(declare-fun res!1759237 () Bool)

(declare-fun e!2663716 () Bool)

(assert (=> b!4288764 (=> (not res!1759237) (not e!2663716))))

(declare-fun valid!3394 (CacheFindLongestMatch!450) Bool)

(assert (=> b!4288764 (= res!1759237 (valid!3394 cacheFindLongestMatch!199))))

(declare-fun b!4288765 () Bool)

(declare-fun e!2663715 () Bool)

(declare-fun e!2663729 () Bool)

(declare-fun lt!1516555 () MutLongMap!4364)

(assert (=> b!4288765 (= e!2663715 (and e!2663729 ((_ is LongMap!4364) lt!1516555)))))

(assert (=> b!4288765 (= lt!1516555 (v!41539 (underlying!8958 (cache!4410 cacheFindLongestMatch!199))))))

(declare-fun b!4288766 () Bool)

(assert (=> b!4288766 (= e!2663721 (= (totalInput!4335 (_4!498 lt!1516561)) totalInput!1189))))

(declare-fun b!4288767 () Bool)

(declare-fun res!1759230 () Bool)

(assert (=> b!4288767 (=> (not res!1759230) (not e!2663743))))

(assert (=> b!4288767 (= res!1759230 (valid!3393 (_2!25803 lt!1516548)))))

(declare-fun b!4288768 () Bool)

(declare-fun e!2663713 () Bool)

(assert (=> b!4288768 (= e!2663729 e!2663713)))

(declare-fun b!4288769 () Bool)

(declare-fun e!2663728 () Bool)

(declare-fun tp!1314377 () Bool)

(assert (=> b!4288769 (= e!2663728 tp!1314377)))

(declare-fun b!4288770 () Bool)

(declare-fun res!1759231 () Bool)

(assert (=> b!4288770 (=> (not res!1759231) (not e!2663735))))

(assert (=> b!4288770 (= res!1759231 (valid!3394 (_4!497 lt!1516556)))))

(declare-fun e!2663723 () Bool)

(assert (=> b!4288771 (= e!2663710 (and e!2663723 tp!1314382))))

(declare-fun b!4288772 () Bool)

(declare-fun res!1759235 () Bool)

(assert (=> b!4288772 (=> (not res!1759235) (not e!2663721))))

(assert (=> b!4288772 (= res!1759235 (valid!3392 (_3!3198 lt!1516561)))))

(declare-fun mapIsEmpty!19668 () Bool)

(assert (=> mapIsEmpty!19668 mapRes!19670))

(declare-fun b!4288773 () Bool)

(declare-fun res!1759238 () Bool)

(assert (=> b!4288773 (=> (not res!1759238) (not e!2663742))))

(assert (=> b!4288773 (= res!1759238 (valid!3394 (_4!498 lt!1516561)))))

(declare-fun b!4288774 () Bool)

(declare-fun res!1759232 () Bool)

(assert (=> b!4288774 (=> (not res!1759232) (not e!2663742))))

(assert (=> b!4288774 (= res!1759232 (valid!3392 (_3!3198 lt!1516561)))))

(declare-fun b!4288775 () Bool)

(declare-fun e!2663741 () Bool)

(declare-fun lt!1516557 () MutLongMap!4363)

(assert (=> b!4288775 (= e!2663723 (and e!2663741 ((_ is LongMap!4363) lt!1516557)))))

(assert (=> b!4288775 (= lt!1516557 (v!41537 (underlying!8956 (cache!4409 cacheUp!1044))))))

(declare-fun mapIsEmpty!19669 () Bool)

(assert (=> mapIsEmpty!19669 mapRes!19668))

(declare-fun b!4288776 () Bool)

(declare-fun res!1759234 () Bool)

(assert (=> b!4288776 (=> (not res!1759234) (not e!2663716))))

(assert (=> b!4288776 (= res!1759234 (valid!3393 cacheUp!1044))))

(assert (=> b!4288777 (= e!2663726 (and e!2663715 tp!1314383))))

(declare-fun b!4288778 () Bool)

(declare-fun tp!1314385 () Bool)

(declare-fun tp!1314369 () Bool)

(assert (=> b!4288778 (= e!2663728 (and tp!1314385 tp!1314369))))

(declare-fun mapIsEmpty!19670 () Bool)

(declare-fun mapRes!19669 () Bool)

(assert (=> mapIsEmpty!19670 mapRes!19669))

(declare-fun b!4288779 () Bool)

(declare-fun res!1759219 () Bool)

(assert (=> b!4288779 (=> (not res!1759219) (not e!2663743))))

(assert (=> b!4288779 (= res!1759219 (valid!3394 (_4!498 lt!1516548)))))

(declare-fun b!4288780 () Bool)

(declare-fun e!2663740 () Bool)

(assert (=> b!4288780 (= e!2663740 e!2663736)))

(declare-fun b!4288781 () Bool)

(declare-fun res!1759217 () Bool)

(assert (=> b!4288781 (=> (not res!1759217) (not e!2663716))))

(assert (=> b!4288781 (= res!1759217 (valid!3392 cacheDown!1163))))

(declare-fun b!4288782 () Bool)

(declare-fun res!1759218 () Bool)

(assert (=> b!4288782 (=> (not res!1759218) (not e!2663735))))

(assert (=> b!4288782 (= res!1759218 (= (totalInput!4335 (_4!497 lt!1516556)) totalInput!1189))))

(declare-fun b!4288783 () Bool)

(declare-fun e!2663725 () Bool)

(declare-fun tp!1314364 () Bool)

(assert (=> b!4288783 (= e!2663725 (and tp!1314364 mapRes!19669))))

(declare-fun condMapEmpty!19670 () Bool)

(declare-fun mapDefault!19670 () List!47744)

(assert (=> b!4288783 (= condMapEmpty!19670 (= (arr!6969 (_values!4643 (v!41534 (underlying!8953 (v!41535 (underlying!8954 (cache!4408 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47744)) mapDefault!19670)))))

(declare-fun res!1759216 () Bool)

(assert (=> start!411890 (=> (not res!1759216) (not e!2663716))))

(declare-fun r!15285 () Regex!12939)

(declare-fun validRegex!5859 (Regex!12939) Bool)

(assert (=> start!411890 (= res!1759216 (validRegex!5859 r!15285))))

(assert (=> start!411890 e!2663716))

(declare-fun e!2663717 () Bool)

(assert (=> start!411890 (and (inv!63097 totalInput!1189) e!2663717)))

(assert (=> start!411890 e!2663728))

(declare-fun input!6546 () BalanceConc!28252)

(declare-fun e!2663719 () Bool)

(assert (=> start!411890 (and (inv!63097 input!6546) e!2663719)))

(declare-fun inv!63098 (CacheFindLongestMatch!450) Bool)

(assert (=> start!411890 (and (inv!63098 cacheFindLongestMatch!199) e!2663739)))

(declare-fun inv!63099 (CacheDown!2906) Bool)

(assert (=> start!411890 (and (inv!63099 cacheDown!1163) e!2663732)))

(declare-fun inv!63100 (CacheUp!2788) Bool)

(assert (=> start!411890 (and (inv!63100 cacheUp!1044) e!2663733)))

(declare-fun b!4288751 () Bool)

(assert (=> b!4288751 (= e!2663743 (= (totalInput!4335 (_4!498 lt!1516548)) totalInput!1189))))

(declare-fun b!4288784 () Bool)

(declare-fun e!2663720 () Bool)

(assert (=> b!4288784 (= e!2663720 (not e!2663742))))

(declare-fun res!1759229 () Bool)

(assert (=> b!4288784 (=> (not res!1759229) (not e!2663742))))

(declare-fun lt!1516552 () tuple2!45208)

(assert (=> b!4288784 (= res!1759229 (= (_1!25803 lt!1516561) lt!1516552))))

(assert (=> b!4288784 e!2663721))

(declare-fun res!1759222 () Bool)

(assert (=> b!4288784 (=> (not res!1759222) (not e!2663721))))

(assert (=> b!4288784 (= res!1759222 (= (_1!25803 lt!1516561) lt!1516562))))

(declare-fun lt!1516560 () (InoxSet Context!5658))

(declare-fun findLongestMatchZipperFastV2Mem!8 ((InoxSet Context!5658) BalanceConc!28252 BalanceConc!28252 CacheUp!2788 CacheDown!2906 CacheFindLongestMatch!450) tuple4!996)

(assert (=> b!4288784 (= lt!1516561 (findLongestMatchZipperFastV2Mem!8 lt!1516560 input!6546 totalInput!1189 (_2!25803 lt!1516548) (_3!3198 lt!1516548) (_4!498 lt!1516548)))))

(assert (=> b!4288784 e!2663735))

(declare-fun res!1759220 () Bool)

(assert (=> b!4288784 (=> (not res!1759220) (not e!2663735))))

(declare-fun lt!1516559 () Int)

(declare-fun lt!1516549 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!24 ((InoxSet Context!5658) Int BalanceConc!28252 Int) Int)

(assert (=> b!4288784 (= res!1759220 (= (_1!25801 lt!1516556) (findLongestMatchInnerZipperFastV2!24 lt!1516560 lt!1516549 totalInput!1189 lt!1516559)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!6 ((InoxSet Context!5658) Int BalanceConc!28252 Int CacheUp!2788 CacheDown!2906 CacheFindLongestMatch!450) tuple4!994)

(assert (=> b!4288784 (= lt!1516556 (findLongestMatchInnerZipperFastV2Mem!6 lt!1516560 lt!1516549 totalInput!1189 lt!1516559 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(declare-fun size!34930 (BalanceConc!28252) Int)

(assert (=> b!4288784 (= lt!1516549 (- lt!1516559 (size!34930 input!6546)))))

(assert (=> b!4288784 (= lt!1516559 (size!34930 totalInput!1189))))

(assert (=> b!4288784 e!2663743))

(declare-fun res!1759233 () Bool)

(assert (=> b!4288784 (=> (not res!1759233) (not e!2663743))))

(assert (=> b!4288784 (= res!1759233 (= (_1!25803 lt!1516548) lt!1516562))))

(assert (=> b!4288784 (= lt!1516548 (findLongestMatchZipperFastV2Mem!8 lt!1516560 input!6546 totalInput!1189 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(assert (=> b!4288784 (= lt!1516552 lt!1516562)))

(declare-fun findLongestMatchWithZipperSequenceV2!128 (Regex!12939 BalanceConc!28252 BalanceConc!28252) tuple2!45208)

(assert (=> b!4288784 (= lt!1516552 (findLongestMatchWithZipperSequenceV2!128 r!15285 input!6546 totalInput!1189))))

(declare-fun lt!1516551 () List!47747)

(declare-fun sizeTr!338 (List!47747 Int) Int)

(declare-fun size!34931 (List!47747) Int)

(assert (=> b!4288784 (= (sizeTr!338 lt!1516551 0) (size!34931 lt!1516551))))

(declare-datatypes ((Unit!66405 0))(
  ( (Unit!66406) )
))
(declare-fun lt!1516553 () Unit!66405)

(declare-fun lemmaSizeTrEqualsSize!337 (List!47747 Int) Unit!66405)

(assert (=> b!4288784 (= lt!1516553 (lemmaSizeTrEqualsSize!337 lt!1516551 0))))

(assert (=> b!4288784 e!2663722))

(declare-fun res!1759223 () Bool)

(assert (=> b!4288784 (=> (not res!1759223) (not e!2663722))))

(assert (=> b!4288784 (= res!1759223 (= (list!17346 (_1!25802 lt!1516562)) (_1!25804 lt!1516554)))))

(declare-fun findLongestMatch!1629 (Regex!12939 List!47747) tuple2!45210)

(assert (=> b!4288784 (= lt!1516554 (findLongestMatch!1629 r!15285 lt!1516551))))

(declare-fun findLongestMatchZipperFastV2!24 ((InoxSet Context!5658) BalanceConc!28252 BalanceConc!28252) tuple2!45208)

(assert (=> b!4288784 (= lt!1516562 (findLongestMatchZipperFastV2!24 lt!1516560 input!6546 totalInput!1189))))

(declare-fun lt!1516558 () Unit!66405)

(declare-fun longestMatchV2SameAsRegex!23 (Regex!12939 (InoxSet Context!5658) BalanceConc!28252 BalanceConc!28252) Unit!66405)

(assert (=> b!4288784 (= lt!1516558 (longestMatchV2SameAsRegex!23 r!15285 lt!1516560 input!6546 totalInput!1189))))

(declare-fun focus!329 (Regex!12939) (InoxSet Context!5658))

(assert (=> b!4288784 (= lt!1516560 (focus!329 r!15285))))

(declare-fun b!4288785 () Bool)

(assert (=> b!4288785 (= e!2663716 e!2663720)))

(declare-fun res!1759221 () Bool)

(assert (=> b!4288785 (=> (not res!1759221) (not e!2663720))))

(declare-fun isSuffix!1029 (List!47747 List!47747) Bool)

(assert (=> b!4288785 (= res!1759221 (isSuffix!1029 lt!1516551 (list!17346 totalInput!1189)))))

(assert (=> b!4288785 (= lt!1516551 (list!17346 input!6546))))

(declare-fun b!4288786 () Bool)

(assert (=> b!4288786 (= e!2663713 e!2663734)))

(declare-fun b!4288787 () Bool)

(declare-fun res!1759236 () Bool)

(assert (=> b!4288787 (=> (not res!1759236) (not e!2663742))))

(assert (=> b!4288787 (= res!1759236 (valid!3393 (_2!25803 lt!1516561)))))

(declare-fun b!4288788 () Bool)

(assert (=> b!4288788 (= e!2663724 e!2663731)))

(declare-fun tp!1314361 () Bool)

(declare-fun tp!1314379 () Bool)

(declare-fun array_inv!5002 (array!15602) Bool)

(assert (=> b!4288789 (= e!2663737 (and tp!1314367 tp!1314361 tp!1314379 (array_inv!4999 (_keys!4662 (v!41534 (underlying!8953 (v!41535 (underlying!8954 (cache!4408 cacheDown!1163))))))) (array_inv!5002 (_values!4643 (v!41534 (underlying!8953 (v!41535 (underlying!8954 (cache!4408 cacheDown!1163))))))) e!2663725))))

(declare-fun b!4288790 () Bool)

(declare-fun tp!1314381 () Bool)

(declare-fun tp!1314386 () Bool)

(assert (=> b!4288790 (= e!2663728 (and tp!1314381 tp!1314386))))

(assert (=> b!4288791 (= e!2663718 (and e!2663730 tp!1314365))))

(declare-fun b!4288792 () Bool)

(declare-fun tp!1314371 () Bool)

(assert (=> b!4288792 (= e!2663719 (and (inv!63096 (c!730199 input!6546)) tp!1314371))))

(declare-fun b!4288793 () Bool)

(declare-fun res!1759228 () Bool)

(assert (=> b!4288793 (=> (not res!1759228) (not e!2663721))))

(assert (=> b!4288793 (= res!1759228 (valid!3394 (_4!498 lt!1516561)))))

(declare-fun b!4288794 () Bool)

(declare-fun tp_is_empty!23109 () Bool)

(assert (=> b!4288794 (= e!2663728 tp_is_empty!23109)))

(declare-fun b!4288795 () Bool)

(declare-fun splitAt!219 (BalanceConc!28252 Int) tuple2!45208)

(assert (=> b!4288795 (= e!2663735 (= lt!1516548 (tuple4!997 (splitAt!219 input!6546 (_1!25801 lt!1516556)) (_2!25801 lt!1516556) (_3!3197 lt!1516556) (_4!497 lt!1516556))))))

(declare-fun b!4288796 () Bool)

(declare-fun res!1759224 () Bool)

(assert (=> b!4288796 (=> (not res!1759224) (not e!2663716))))

(assert (=> b!4288796 (= res!1759224 (= (totalInput!4335 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4288797 () Bool)

(declare-fun tp!1314373 () Bool)

(assert (=> b!4288797 (= e!2663717 (and (inv!63096 (c!730199 totalInput!1189)) tp!1314373))))

(declare-fun b!4288798 () Bool)

(assert (=> b!4288798 (= e!2663741 e!2663740)))

(declare-fun mapNonEmpty!19670 () Bool)

(declare-fun tp!1314376 () Bool)

(declare-fun tp!1314366 () Bool)

(assert (=> mapNonEmpty!19670 (= mapRes!19669 (and tp!1314376 tp!1314366))))

(declare-fun mapValue!19669 () List!47744)

(declare-fun mapKey!19669 () (_ BitVec 32))

(declare-fun mapRest!19670 () (Array (_ BitVec 32) List!47744))

(assert (=> mapNonEmpty!19670 (= (arr!6969 (_values!4643 (v!41534 (underlying!8953 (v!41535 (underlying!8954 (cache!4408 cacheDown!1163))))))) (store mapRest!19670 mapKey!19669 mapValue!19669))))

(assert (= (and start!411890 res!1759216) b!4288776))

(assert (= (and b!4288776 res!1759234) b!4288781))

(assert (= (and b!4288781 res!1759217) b!4288764))

(assert (= (and b!4288764 res!1759237) b!4288796))

(assert (= (and b!4288796 res!1759224) b!4288785))

(assert (= (and b!4288785 res!1759221) b!4288784))

(assert (= (and b!4288784 res!1759223) b!4288757))

(assert (= (and b!4288784 res!1759233) b!4288767))

(assert (= (and b!4288767 res!1759230) b!4288761))

(assert (= (and b!4288761 res!1759225) b!4288779))

(assert (= (and b!4288779 res!1759219) b!4288751))

(assert (= (and b!4288784 res!1759220) b!4288763))

(assert (= (and b!4288763 res!1759226) b!4288748))

(assert (= (and b!4288748 res!1759239) b!4288770))

(assert (= (and b!4288770 res!1759231) b!4288782))

(assert (= (and b!4288782 res!1759218) b!4288795))

(assert (= (and b!4288784 res!1759222) b!4288759))

(assert (= (and b!4288759 res!1759227) b!4288772))

(assert (= (and b!4288772 res!1759235) b!4288793))

(assert (= (and b!4288793 res!1759228) b!4288766))

(assert (= (and b!4288784 res!1759229) b!4288774))

(assert (= (and b!4288774 res!1759232) b!4288787))

(assert (= (and b!4288787 res!1759236) b!4288773))

(assert (= (and b!4288773 res!1759238) b!4288753))

(assert (= start!411890 b!4288797))

(assert (= (and start!411890 ((_ is ElementMatch!12939) r!15285)) b!4288794))

(assert (= (and start!411890 ((_ is Concat!21258) r!15285)) b!4288778))

(assert (= (and start!411890 ((_ is Star!12939) r!15285)) b!4288769))

(assert (= (and start!411890 ((_ is Union!12939) r!15285)) b!4288790))

(assert (= start!411890 b!4288792))

(assert (= (and b!4288749 condMapEmpty!19668) mapIsEmpty!19669))

(assert (= (and b!4288749 (not condMapEmpty!19668)) mapNonEmpty!19668))

(assert (= b!4288760 b!4288749))

(assert (= b!4288786 b!4288760))

(assert (= b!4288768 b!4288786))

(assert (= (and b!4288765 ((_ is LongMap!4364) (v!41539 (underlying!8958 (cache!4410 cacheFindLongestMatch!199))))) b!4288768))

(assert (= b!4288777 b!4288765))

(assert (= (and b!4288762 ((_ is HashMap!4270) (cache!4410 cacheFindLongestMatch!199))) b!4288777))

(assert (= b!4288762 b!4288754))

(assert (= start!411890 b!4288762))

(assert (= (and b!4288783 condMapEmpty!19670) mapIsEmpty!19670))

(assert (= (and b!4288783 (not condMapEmpty!19670)) mapNonEmpty!19670))

(assert (= b!4288789 b!4288783))

(assert (= b!4288755 b!4288789))

(assert (= b!4288788 b!4288755))

(assert (= (and b!4288747 ((_ is LongMap!4362) (v!41535 (underlying!8954 (cache!4408 cacheDown!1163))))) b!4288788))

(assert (= b!4288791 b!4288747))

(assert (= (and b!4288756 ((_ is HashMap!4268) (cache!4408 cacheDown!1163))) b!4288791))

(assert (= start!411890 b!4288756))

(assert (= (and b!4288752 condMapEmpty!19669) mapIsEmpty!19668))

(assert (= (and b!4288752 (not condMapEmpty!19669)) mapNonEmpty!19669))

(assert (= b!4288750 b!4288752))

(assert (= b!4288780 b!4288750))

(assert (= b!4288798 b!4288780))

(assert (= (and b!4288775 ((_ is LongMap!4363) (v!41537 (underlying!8956 (cache!4409 cacheUp!1044))))) b!4288798))

(assert (= b!4288771 b!4288775))

(assert (= (and b!4288758 ((_ is HashMap!4269) (cache!4409 cacheUp!1044))) b!4288771))

(assert (= start!411890 b!4288758))

(declare-fun m!4883529 () Bool)

(assert (=> b!4288754 m!4883529))

(declare-fun m!4883531 () Bool)

(assert (=> b!4288793 m!4883531))

(declare-fun m!4883533 () Bool)

(assert (=> b!4288797 m!4883533))

(declare-fun m!4883535 () Bool)

(assert (=> b!4288760 m!4883535))

(declare-fun m!4883537 () Bool)

(assert (=> b!4288760 m!4883537))

(declare-fun m!4883539 () Bool)

(assert (=> mapNonEmpty!19669 m!4883539))

(declare-fun m!4883541 () Bool)

(assert (=> b!4288764 m!4883541))

(declare-fun m!4883543 () Bool)

(assert (=> b!4288757 m!4883543))

(declare-fun m!4883545 () Bool)

(assert (=> b!4288774 m!4883545))

(declare-fun m!4883547 () Bool)

(assert (=> b!4288763 m!4883547))

(assert (=> b!4288773 m!4883531))

(declare-fun m!4883549 () Bool)

(assert (=> b!4288761 m!4883549))

(declare-fun m!4883551 () Bool)

(assert (=> b!4288792 m!4883551))

(assert (=> b!4288772 m!4883545))

(declare-fun m!4883553 () Bool)

(assert (=> mapNonEmpty!19670 m!4883553))

(declare-fun m!4883555 () Bool)

(assert (=> b!4288789 m!4883555))

(declare-fun m!4883557 () Bool)

(assert (=> b!4288789 m!4883557))

(declare-fun m!4883559 () Bool)

(assert (=> b!4288779 m!4883559))

(declare-fun m!4883561 () Bool)

(assert (=> b!4288776 m!4883561))

(declare-fun m!4883563 () Bool)

(assert (=> b!4288781 m!4883563))

(declare-fun m!4883565 () Bool)

(assert (=> b!4288767 m!4883565))

(declare-fun m!4883567 () Bool)

(assert (=> b!4288762 m!4883567))

(declare-fun m!4883569 () Bool)

(assert (=> b!4288785 m!4883569))

(assert (=> b!4288785 m!4883569))

(declare-fun m!4883571 () Bool)

(assert (=> b!4288785 m!4883571))

(declare-fun m!4883573 () Bool)

(assert (=> b!4288785 m!4883573))

(declare-fun m!4883575 () Bool)

(assert (=> b!4288750 m!4883575))

(declare-fun m!4883577 () Bool)

(assert (=> b!4288750 m!4883577))

(declare-fun m!4883579 () Bool)

(assert (=> mapNonEmpty!19668 m!4883579))

(declare-fun m!4883581 () Bool)

(assert (=> b!4288770 m!4883581))

(declare-fun m!4883583 () Bool)

(assert (=> b!4288748 m!4883583))

(declare-fun m!4883585 () Bool)

(assert (=> b!4288759 m!4883585))

(declare-fun m!4883587 () Bool)

(assert (=> b!4288795 m!4883587))

(assert (=> b!4288787 m!4883585))

(declare-fun m!4883589 () Bool)

(assert (=> b!4288784 m!4883589))

(declare-fun m!4883591 () Bool)

(assert (=> b!4288784 m!4883591))

(declare-fun m!4883593 () Bool)

(assert (=> b!4288784 m!4883593))

(declare-fun m!4883595 () Bool)

(assert (=> b!4288784 m!4883595))

(declare-fun m!4883597 () Bool)

(assert (=> b!4288784 m!4883597))

(declare-fun m!4883599 () Bool)

(assert (=> b!4288784 m!4883599))

(declare-fun m!4883601 () Bool)

(assert (=> b!4288784 m!4883601))

(declare-fun m!4883603 () Bool)

(assert (=> b!4288784 m!4883603))

(declare-fun m!4883605 () Bool)

(assert (=> b!4288784 m!4883605))

(declare-fun m!4883607 () Bool)

(assert (=> b!4288784 m!4883607))

(declare-fun m!4883609 () Bool)

(assert (=> b!4288784 m!4883609))

(declare-fun m!4883611 () Bool)

(assert (=> b!4288784 m!4883611))

(declare-fun m!4883613 () Bool)

(assert (=> b!4288784 m!4883613))

(declare-fun m!4883615 () Bool)

(assert (=> b!4288784 m!4883615))

(declare-fun m!4883617 () Bool)

(assert (=> b!4288784 m!4883617))

(declare-fun m!4883619 () Bool)

(assert (=> start!411890 m!4883619))

(declare-fun m!4883621 () Bool)

(assert (=> start!411890 m!4883621))

(declare-fun m!4883623 () Bool)

(assert (=> start!411890 m!4883623))

(declare-fun m!4883625 () Bool)

(assert (=> start!411890 m!4883625))

(declare-fun m!4883627 () Bool)

(assert (=> start!411890 m!4883627))

(declare-fun m!4883629 () Bool)

(assert (=> start!411890 m!4883629))

(check-sat (not b_next!127975) (not b!4288793) (not start!411890) (not b!4288789) (not b!4288757) (not b!4288763) (not b!4288759) (not mapNonEmpty!19670) (not b!4288795) (not b!4288776) (not b!4288797) (not b!4288764) (not b!4288774) (not b!4288784) (not mapNonEmpty!19669) (not b!4288749) (not b!4288770) b_and!338497 (not b!4288767) (not b!4288762) (not b!4288760) (not b!4288783) b_and!338489 (not b!4288750) (not b!4288779) (not b!4288752) b_and!338493 (not b!4288787) (not mapNonEmpty!19668) (not b!4288773) (not b_next!127985) b_and!338495 (not b!4288748) (not b_next!127983) (not b!4288754) (not b_next!127977) (not b_next!127979) (not b!4288778) (not b!4288790) (not b!4288792) b_and!338491 b_and!338487 (not b!4288781) tp_is_empty!23109 (not b!4288785) (not b!4288772) (not b!4288761) (not b_next!127981) (not b!4288769))
(check-sat (not b_next!127975) b_and!338497 b_and!338489 b_and!338493 (not b_next!127983) b_and!338491 b_and!338487 (not b_next!127981) (not b_next!127985) b_and!338495 (not b_next!127977) (not b_next!127979))
