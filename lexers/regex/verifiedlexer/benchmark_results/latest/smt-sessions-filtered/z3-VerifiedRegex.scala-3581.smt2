; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206518 () Bool)

(assert start!206518)

(declare-fun b!2113588 () Bool)

(declare-fun b_free!61205 () Bool)

(declare-fun b_next!61909 () Bool)

(assert (=> b!2113588 (= b_free!61205 (not b_next!61909))))

(declare-fun tp!644546 () Bool)

(declare-fun b_and!170785 () Bool)

(assert (=> b!2113588 (= tp!644546 b_and!170785)))

(declare-fun b!2113616 () Bool)

(declare-fun b_free!61207 () Bool)

(declare-fun b_next!61911 () Bool)

(assert (=> b!2113616 (= b_free!61207 (not b_next!61911))))

(declare-fun tp!644541 () Bool)

(declare-fun b_and!170787 () Bool)

(assert (=> b!2113616 (= tp!644541 b_and!170787)))

(declare-fun b!2113601 () Bool)

(declare-fun b_free!61209 () Bool)

(declare-fun b_next!61913 () Bool)

(assert (=> b!2113601 (= b_free!61209 (not b_next!61913))))

(declare-fun tp!644547 () Bool)

(declare-fun b_and!170789 () Bool)

(assert (=> b!2113601 (= tp!644547 b_and!170789)))

(declare-fun b!2113590 () Bool)

(declare-fun b_free!61211 () Bool)

(declare-fun b_next!61915 () Bool)

(assert (=> b!2113590 (= b_free!61211 (not b_next!61915))))

(declare-fun tp!644536 () Bool)

(declare-fun b_and!170791 () Bool)

(assert (=> b!2113590 (= tp!644536 b_and!170791)))

(declare-fun b!2113615 () Bool)

(declare-fun b_free!61213 () Bool)

(declare-fun b_next!61917 () Bool)

(assert (=> b!2113615 (= b_free!61213 (not b_next!61917))))

(declare-fun tp!644535 () Bool)

(declare-fun b_and!170793 () Bool)

(assert (=> b!2113615 (= tp!644535 b_and!170793)))

(declare-fun b!2113609 () Bool)

(declare-fun b_free!61215 () Bool)

(declare-fun b_next!61919 () Bool)

(assert (=> b!2113609 (= b_free!61215 (not b_next!61919))))

(declare-fun tp!644542 () Bool)

(declare-fun b_and!170795 () Bool)

(assert (=> b!2113609 (= tp!644542 b_and!170795)))

(declare-fun b!2113584 () Bool)

(declare-fun e!1344850 () Bool)

(declare-fun tp!644539 () Bool)

(assert (=> b!2113584 (= e!1344850 tp!644539)))

(declare-fun b!2113585 () Bool)

(declare-fun e!1344857 () Bool)

(assert (=> b!2113585 (= e!1344857 (not true))))

(declare-fun e!1344866 () Bool)

(assert (=> b!2113585 e!1344866))

(declare-fun res!917497 () Bool)

(assert (=> b!2113585 (=> (not res!917497) (not e!1344866))))

(declare-datatypes ((C!11404 0))(
  ( (C!11405 (val!6688 Int)) )
))
(declare-datatypes ((List!23600 0))(
  ( (Nil!23516) (Cons!23516 (h!28917 C!11404) (t!196109 List!23600)) )
))
(declare-datatypes ((IArray!15545 0))(
  ( (IArray!15546 (innerList!7830 List!23600)) )
))
(declare-datatypes ((Conc!7770 0))(
  ( (Node!7770 (left!18239 Conc!7770) (right!18569 Conc!7770) (csize!15770 Int) (cheight!7981 Int)) (Leaf!11352 (xs!10712 IArray!15545) (csize!15771 Int)) (Empty!7770) )
))
(declare-datatypes ((BalanceConc!15302 0))(
  ( (BalanceConc!15303 (c!339193 Conc!7770)) )
))
(declare-datatypes ((tuple2!22968 0))(
  ( (tuple2!22969 (_1!13321 BalanceConc!15302) (_2!13321 BalanceConc!15302)) )
))
(declare-fun lt!792938 () tuple2!22968)

(declare-datatypes ((tuple2!22970 0))(
  ( (tuple2!22971 (_1!13322 List!23600) (_2!13322 List!23600)) )
))
(declare-fun lt!792934 () tuple2!22970)

(declare-fun list!9496 (BalanceConc!15302) List!23600)

(assert (=> b!2113585 (= res!917497 (= (list!9496 (_1!13321 lt!792938)) (_1!13322 lt!792934)))))

(declare-fun input!6660 () BalanceConc!15302)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!5629 0))(
  ( (ElementMatch!5629 (c!339194 C!11404)) (Concat!9931 (regOne!11770 Regex!5629) (regTwo!11770 Regex!5629)) (EmptyExpr!5629) (Star!5629 (reg!5958 Regex!5629)) (EmptyLang!5629) (Union!5629 (regOne!11771 Regex!5629) (regTwo!11771 Regex!5629)) )
))
(declare-datatypes ((List!23601 0))(
  ( (Nil!23517) (Cons!23517 (h!28918 Regex!5629) (t!196110 List!23601)) )
))
(declare-datatypes ((Context!2398 0))(
  ( (Context!2399 (exprs!1699 List!23601)) )
))
(declare-fun lt!792940 () (InoxSet Context!2398))

(declare-fun totalInput!1306 () BalanceConc!15302)

(declare-fun findLongestMatchZipperFastV2!7 ((InoxSet Context!2398) BalanceConc!15302 BalanceConc!15302) tuple2!22968)

(assert (=> b!2113585 (= lt!792938 (findLongestMatchZipperFastV2!7 lt!792940 input!6660 totalInput!1306))))

(declare-fun r!15373 () Regex!5629)

(declare-datatypes ((Unit!37530 0))(
  ( (Unit!37531) )
))
(declare-fun lt!792931 () Unit!37530)

(declare-fun longestMatchV2SameAsRegex!7 (Regex!5629 (InoxSet Context!2398) BalanceConc!15302 BalanceConc!15302) Unit!37530)

(assert (=> b!2113585 (= lt!792931 (longestMatchV2SameAsRegex!7 r!15373 lt!792940 input!6660 totalInput!1306))))

(declare-fun lt!792932 () List!23600)

(declare-fun sizeTr!92 (List!23600 Int) Int)

(declare-fun size!18361 (List!23600) Int)

(assert (=> b!2113585 (= (sizeTr!92 lt!792932 0) (size!18361 lt!792932))))

(declare-fun lt!792937 () Unit!37530)

(declare-fun lemmaSizeTrEqualsSize!92 (List!23600 Int) Unit!37530)

(assert (=> b!2113585 (= lt!792937 (lemmaSizeTrEqualsSize!92 lt!792932 0))))

(declare-fun e!1344874 () Bool)

(assert (=> b!2113585 e!1344874))

(declare-fun res!917494 () Bool)

(assert (=> b!2113585 (=> (not res!917494) (not e!1344874))))

(declare-fun lt!792936 () tuple2!22968)

(assert (=> b!2113585 (= res!917494 (= (list!9496 (_1!13321 lt!792936)) (_1!13322 lt!792934)))))

(declare-fun findLongestMatch!509 (Regex!5629 List!23600) tuple2!22970)

(assert (=> b!2113585 (= lt!792934 (findLongestMatch!509 r!15373 lt!792932))))

(declare-fun findLongestMatchZipperSequenceV3!2 ((InoxSet Context!2398) BalanceConc!15302 BalanceConc!15302) tuple2!22968)

(assert (=> b!2113585 (= lt!792936 (findLongestMatchZipperSequenceV3!2 lt!792940 input!6660 totalInput!1306))))

(declare-fun lt!792935 () Unit!37530)

(declare-fun longestMatchV3SameAsRegex!2 (Regex!5629 (InoxSet Context!2398) BalanceConc!15302 BalanceConc!15302) Unit!37530)

(assert (=> b!2113585 (= lt!792935 (longestMatchV3SameAsRegex!2 r!15373 lt!792940 input!6660 totalInput!1306))))

(declare-fun focus!269 (Regex!5629) (InoxSet Context!2398))

(assert (=> b!2113585 (= lt!792940 (focus!269 r!15373))))

(declare-fun b!2113586 () Bool)

(declare-fun e!1344877 () Bool)

(declare-fun e!1344876 () Bool)

(assert (=> b!2113586 (= e!1344877 e!1344876)))

(declare-fun mapNonEmpty!11323 () Bool)

(declare-fun mapRes!11323 () Bool)

(declare-fun tp!644553 () Bool)

(declare-fun tp!644559 () Bool)

(assert (=> mapNonEmpty!11323 (= mapRes!11323 (and tp!644553 tp!644559))))

(declare-datatypes ((tuple3!2746 0))(
  ( (tuple3!2747 (_1!13323 (InoxSet Context!2398)) (_2!13323 Int) (_3!1837 Int)) )
))
(declare-datatypes ((tuple2!22972 0))(
  ( (tuple2!22973 (_1!13324 tuple3!2746) (_2!13324 Int)) )
))
(declare-datatypes ((List!23602 0))(
  ( (Nil!23518) (Cons!23518 (h!28919 tuple2!22972) (t!196111 List!23602)) )
))
(declare-fun mapRest!11325 () (Array (_ BitVec 32) List!23602))

(declare-fun mapValue!11325 () List!23602)

(declare-fun mapKey!11323 () (_ BitVec 32))

(declare-datatypes ((Hashable!2272 0))(
  ( (HashableExt!2271 (__x!15250 Int)) )
))
(declare-datatypes ((array!8133 0))(
  ( (array!8134 (arr!3608 (Array (_ BitVec 32) List!23602)) (size!18362 (_ BitVec 32))) )
))
(declare-datatypes ((array!8135 0))(
  ( (array!8136 (arr!3609 (Array (_ BitVec 32) (_ BitVec 64))) (size!18363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4716 0))(
  ( (LongMapFixedSize!4717 (defaultEntry!2723 Int) (mask!6488 (_ BitVec 32)) (extraKeys!2606 (_ BitVec 32)) (zeroValue!2616 List!23602) (minValue!2616 List!23602) (_size!4767 (_ BitVec 32)) (_keys!2655 array!8135) (_values!2638 array!8133) (_vacant!2419 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9257 0))(
  ( (Cell!9258 (v!28043 LongMapFixedSize!4716)) )
))
(declare-datatypes ((MutLongMap!2358 0))(
  ( (LongMap!2358 (underlying!4911 Cell!9257)) (MutLongMapExt!2357 (__x!15251 Int)) )
))
(declare-datatypes ((Cell!9259 0))(
  ( (Cell!9260 (v!28044 MutLongMap!2358)) )
))
(declare-datatypes ((MutableMap!2272 0))(
  ( (MutableMapExt!2271 (__x!15252 Int)) (HashMap!2272 (underlying!4912 Cell!9259) (hashF!4195 Hashable!2272) (_size!4768 (_ BitVec 32)) (defaultValue!2434 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!542 0))(
  ( (CacheFurthestNullable!543 (cache!2653 MutableMap!2272) (totalInput!2828 BalanceConc!15302)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!542)

(assert (=> mapNonEmpty!11323 (= (arr!3608 (_values!2638 (v!28043 (underlying!4911 (v!28044 (underlying!4912 (cache!2653 cacheFurthestNullable!141))))))) (store mapRest!11325 mapKey!11323 mapValue!11325))))

(declare-fun b!2113587 () Bool)

(declare-fun e!1344868 () Bool)

(declare-fun e!1344852 () Bool)

(declare-fun e!1344867 () Bool)

(declare-fun inv!31098 (BalanceConc!15302) Bool)

(assert (=> b!2113587 (= e!1344868 (and e!1344867 (inv!31098 (totalInput!2828 cacheFurthestNullable!141)) e!1344852))))

(declare-fun tp!644556 () Bool)

(declare-fun e!1344865 () Bool)

(declare-fun e!1344870 () Bool)

(declare-fun tp!644554 () Bool)

(declare-datatypes ((tuple2!22974 0))(
  ( (tuple2!22975 (_1!13325 Context!2398) (_2!13325 C!11404)) )
))
(declare-datatypes ((tuple2!22976 0))(
  ( (tuple2!22977 (_1!13326 tuple2!22974) (_2!13326 (InoxSet Context!2398))) )
))
(declare-datatypes ((List!23603 0))(
  ( (Nil!23519) (Cons!23519 (h!28920 tuple2!22976) (t!196112 List!23603)) )
))
(declare-datatypes ((array!8137 0))(
  ( (array!8138 (arr!3610 (Array (_ BitVec 32) List!23603)) (size!18364 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2273 0))(
  ( (HashableExt!2272 (__x!15253 Int)) )
))
(declare-datatypes ((LongMapFixedSize!4718 0))(
  ( (LongMapFixedSize!4719 (defaultEntry!2724 Int) (mask!6489 (_ BitVec 32)) (extraKeys!2607 (_ BitVec 32)) (zeroValue!2617 List!23603) (minValue!2617 List!23603) (_size!4769 (_ BitVec 32)) (_keys!2656 array!8135) (_values!2639 array!8137) (_vacant!2420 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9261 0))(
  ( (Cell!9262 (v!28045 LongMapFixedSize!4718)) )
))
(declare-datatypes ((MutLongMap!2359 0))(
  ( (LongMap!2359 (underlying!4913 Cell!9261)) (MutLongMapExt!2358 (__x!15254 Int)) )
))
(declare-datatypes ((Cell!9263 0))(
  ( (Cell!9264 (v!28046 MutLongMap!2359)) )
))
(declare-datatypes ((MutableMap!2273 0))(
  ( (MutableMapExt!2272 (__x!15255 Int)) (HashMap!2273 (underlying!4914 Cell!9263) (hashF!4196 Hashable!2273) (_size!4770 (_ BitVec 32)) (defaultValue!2435 Int)) )
))
(declare-datatypes ((CacheUp!1566 0))(
  ( (CacheUp!1567 (cache!2654 MutableMap!2273)) )
))
(declare-fun cacheUp!1110 () CacheUp!1566)

(declare-fun array_inv!2593 (array!8135) Bool)

(declare-fun array_inv!2594 (array!8137) Bool)

(assert (=> b!2113588 (= e!1344865 (and tp!644546 tp!644556 tp!644554 (array_inv!2593 (_keys!2656 (v!28045 (underlying!4913 (v!28046 (underlying!4914 (cache!2654 cacheUp!1110))))))) (array_inv!2594 (_values!2639 (v!28045 (underlying!4913 (v!28046 (underlying!4914 (cache!2654 cacheUp!1110))))))) e!1344870))))

(declare-fun b!2113589 () Bool)

(declare-fun e!1344849 () Bool)

(declare-fun e!1344863 () Bool)

(declare-fun lt!792933 () MutLongMap!2358)

(get-info :version)

(assert (=> b!2113589 (= e!1344849 (and e!1344863 ((_ is LongMap!2358) lt!792933)))))

(assert (=> b!2113589 (= lt!792933 (v!28044 (underlying!4912 (cache!2653 cacheFurthestNullable!141))))))

(declare-fun e!1344873 () Bool)

(declare-fun e!1344860 () Bool)

(assert (=> b!2113590 (= e!1344873 (and e!1344860 tp!644536))))

(declare-fun b!2113591 () Bool)

(declare-fun e!1344862 () Bool)

(declare-fun e!1344853 () Bool)

(assert (=> b!2113591 (= e!1344862 e!1344853)))

(declare-fun b!2113592 () Bool)

(declare-fun tp_is_empty!9447 () Bool)

(assert (=> b!2113592 (= e!1344850 tp_is_empty!9447)))

(declare-fun b!2113593 () Bool)

(declare-fun e!1344848 () Bool)

(declare-fun lt!792939 () MutLongMap!2359)

(assert (=> b!2113593 (= e!1344860 (and e!1344848 ((_ is LongMap!2359) lt!792939)))))

(assert (=> b!2113593 (= lt!792939 (v!28046 (underlying!4914 (cache!2654 cacheUp!1110))))))

(declare-fun b!2113594 () Bool)

(assert (=> b!2113594 (= e!1344874 (= (list!9496 (_2!13321 lt!792936)) (_2!13322 lt!792934)))))

(declare-fun b!2113595 () Bool)

(declare-fun e!1344847 () Bool)

(declare-fun tp!644538 () Bool)

(declare-fun inv!31099 (Conc!7770) Bool)

(assert (=> b!2113595 (= e!1344847 (and (inv!31099 (c!339193 totalInput!1306)) tp!644538))))

(declare-fun mapNonEmpty!11324 () Bool)

(declare-fun mapRes!11324 () Bool)

(declare-fun tp!644557 () Bool)

(declare-fun tp!644551 () Bool)

(assert (=> mapNonEmpty!11324 (= mapRes!11324 (and tp!644557 tp!644551))))

(declare-fun mapRest!11324 () (Array (_ BitVec 32) List!23603))

(declare-fun mapValue!11324 () List!23603)

(declare-fun mapKey!11324 () (_ BitVec 32))

(assert (=> mapNonEmpty!11324 (= (arr!3610 (_values!2639 (v!28045 (underlying!4913 (v!28046 (underlying!4914 (cache!2654 cacheUp!1110))))))) (store mapRest!11324 mapKey!11324 mapValue!11324))))

(declare-fun b!2113596 () Bool)

(assert (=> b!2113596 (= e!1344863 e!1344877)))

(declare-fun b!2113597 () Bool)

(declare-fun res!917491 () Bool)

(declare-fun e!1344861 () Bool)

(assert (=> b!2113597 (=> (not res!917491) (not e!1344861))))

(declare-datatypes ((tuple3!2748 0))(
  ( (tuple3!2749 (_1!13327 Regex!5629) (_2!13327 Context!2398) (_3!1838 C!11404)) )
))
(declare-datatypes ((tuple2!22978 0))(
  ( (tuple2!22979 (_1!13328 tuple3!2748) (_2!13328 (InoxSet Context!2398))) )
))
(declare-datatypes ((List!23604 0))(
  ( (Nil!23520) (Cons!23520 (h!28921 tuple2!22978) (t!196113 List!23604)) )
))
(declare-datatypes ((array!8139 0))(
  ( (array!8140 (arr!3611 (Array (_ BitVec 32) List!23604)) (size!18365 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4720 0))(
  ( (LongMapFixedSize!4721 (defaultEntry!2725 Int) (mask!6490 (_ BitVec 32)) (extraKeys!2608 (_ BitVec 32)) (zeroValue!2618 List!23604) (minValue!2618 List!23604) (_size!4771 (_ BitVec 32)) (_keys!2657 array!8135) (_values!2640 array!8139) (_vacant!2421 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9265 0))(
  ( (Cell!9266 (v!28047 LongMapFixedSize!4720)) )
))
(declare-datatypes ((MutLongMap!2360 0))(
  ( (LongMap!2360 (underlying!4915 Cell!9265)) (MutLongMapExt!2359 (__x!15256 Int)) )
))
(declare-datatypes ((Hashable!2274 0))(
  ( (HashableExt!2273 (__x!15257 Int)) )
))
(declare-datatypes ((Cell!9267 0))(
  ( (Cell!9268 (v!28048 MutLongMap!2360)) )
))
(declare-datatypes ((MutableMap!2274 0))(
  ( (MutableMapExt!2273 (__x!15258 Int)) (HashMap!2274 (underlying!4916 Cell!9267) (hashF!4197 Hashable!2274) (_size!4772 (_ BitVec 32)) (defaultValue!2436 Int)) )
))
(declare-datatypes ((CacheDown!1560 0))(
  ( (CacheDown!1561 (cache!2655 MutableMap!2274)) )
))
(declare-fun cacheDown!1229 () CacheDown!1560)

(declare-fun valid!1860 (CacheDown!1560) Bool)

(assert (=> b!2113597 (= res!917491 (valid!1860 cacheDown!1229))))

(declare-fun b!2113598 () Bool)

(declare-fun res!917492 () Bool)

(assert (=> b!2113598 (=> (not res!917492) (not e!1344861))))

(assert (=> b!2113598 (= res!917492 (= (totalInput!2828 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2113599 () Bool)

(declare-fun e!1344851 () Bool)

(assert (=> b!2113599 (= e!1344853 e!1344851)))

(declare-fun b!2113600 () Bool)

(declare-fun e!1344856 () Bool)

(declare-fun tp!644550 () Bool)

(assert (=> b!2113600 (= e!1344856 (and (inv!31099 (c!339193 input!6660)) tp!644550))))

(declare-fun e!1344855 () Bool)

(declare-fun tp!644558 () Bool)

(declare-fun tp!644537 () Bool)

(declare-fun array_inv!2595 (array!8133) Bool)

(assert (=> b!2113601 (= e!1344876 (and tp!644547 tp!644537 tp!644558 (array_inv!2593 (_keys!2655 (v!28043 (underlying!4911 (v!28044 (underlying!4912 (cache!2653 cacheFurthestNullable!141))))))) (array_inv!2595 (_values!2638 (v!28043 (underlying!4911 (v!28044 (underlying!4912 (cache!2653 cacheFurthestNullable!141))))))) e!1344855))))

(declare-fun b!2113602 () Bool)

(declare-fun e!1344854 () Bool)

(declare-fun tp!644555 () Bool)

(declare-fun mapRes!11325 () Bool)

(assert (=> b!2113602 (= e!1344854 (and tp!644555 mapRes!11325))))

(declare-fun condMapEmpty!11323 () Bool)

(declare-fun mapDefault!11324 () List!23604)

(assert (=> b!2113602 (= condMapEmpty!11323 (= (arr!3611 (_values!2640 (v!28047 (underlying!4915 (v!28048 (underlying!4916 (cache!2655 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23604)) mapDefault!11324)))))

(declare-fun mapIsEmpty!11323 () Bool)

(assert (=> mapIsEmpty!11323 mapRes!11324))

(declare-fun b!2113603 () Bool)

(declare-fun e!1344858 () Bool)

(declare-fun lt!792941 () MutLongMap!2360)

(assert (=> b!2113603 (= e!1344858 (and e!1344862 ((_ is LongMap!2360) lt!792941)))))

(assert (=> b!2113603 (= lt!792941 (v!28048 (underlying!4916 (cache!2655 cacheDown!1229))))))

(declare-fun b!2113604 () Bool)

(declare-fun e!1344872 () Bool)

(declare-fun e!1344875 () Bool)

(assert (=> b!2113604 (= e!1344872 e!1344875)))

(declare-fun b!2113605 () Bool)

(declare-fun e!1344869 () Bool)

(assert (=> b!2113605 (= e!1344869 e!1344865)))

(declare-fun b!2113606 () Bool)

(assert (=> b!2113606 (= e!1344861 e!1344857)))

(declare-fun res!917489 () Bool)

(assert (=> b!2113606 (=> (not res!917489) (not e!1344857))))

(declare-fun isSuffix!597 (List!23600 List!23600) Bool)

(assert (=> b!2113606 (= res!917489 (isSuffix!597 lt!792932 (list!9496 totalInput!1306)))))

(assert (=> b!2113606 (= lt!792932 (list!9496 input!6660))))

(declare-fun b!2113607 () Bool)

(declare-fun res!917496 () Bool)

(assert (=> b!2113607 (=> (not res!917496) (not e!1344861))))

(declare-fun valid!1861 (CacheFurthestNullable!542) Bool)

(assert (=> b!2113607 (= res!917496 (valid!1861 cacheFurthestNullable!141))))

(declare-fun mapIsEmpty!11324 () Bool)

(assert (=> mapIsEmpty!11324 mapRes!11325))

(declare-fun mapIsEmpty!11325 () Bool)

(assert (=> mapIsEmpty!11325 mapRes!11323))

(declare-fun b!2113608 () Bool)

(declare-fun tp!644552 () Bool)

(assert (=> b!2113608 (= e!1344855 (and tp!644552 mapRes!11323))))

(declare-fun condMapEmpty!11324 () Bool)

(declare-fun mapDefault!11323 () List!23602)

(assert (=> b!2113608 (= condMapEmpty!11324 (= (arr!3608 (_values!2638 (v!28043 (underlying!4911 (v!28044 (underlying!4912 (cache!2653 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23602)) mapDefault!11323)))))

(assert (=> b!2113609 (= e!1344867 (and e!1344849 tp!644542))))

(declare-fun b!2113610 () Bool)

(declare-fun res!917495 () Bool)

(assert (=> b!2113610 (=> (not res!917495) (not e!1344866))))

(assert (=> b!2113610 (= res!917495 (= (list!9496 (_2!13321 lt!792938)) (_2!13322 lt!792934)))))

(declare-fun b!2113611 () Bool)

(assert (=> b!2113611 (= e!1344848 e!1344869)))

(declare-fun b!2113612 () Bool)

(declare-fun tp!644534 () Bool)

(declare-fun tp!644532 () Bool)

(assert (=> b!2113612 (= e!1344850 (and tp!644534 tp!644532))))

(declare-fun b!2113613 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!76 (Regex!5629 BalanceConc!15302 BalanceConc!15302) tuple2!22968)

(assert (=> b!2113613 (= e!1344866 (= (findLongestMatchWithZipperSequenceV2!76 r!15373 input!6660 totalInput!1306) lt!792938))))

(declare-fun mapNonEmpty!11325 () Bool)

(declare-fun tp!644545 () Bool)

(declare-fun tp!644540 () Bool)

(assert (=> mapNonEmpty!11325 (= mapRes!11325 (and tp!644545 tp!644540))))

(declare-fun mapKey!11325 () (_ BitVec 32))

(declare-fun mapValue!11323 () List!23604)

(declare-fun mapRest!11323 () (Array (_ BitVec 32) List!23604))

(assert (=> mapNonEmpty!11325 (= (arr!3611 (_values!2640 (v!28047 (underlying!4915 (v!28048 (underlying!4916 (cache!2655 cacheDown!1229))))))) (store mapRest!11323 mapKey!11325 mapValue!11323))))

(declare-fun b!2113614 () Bool)

(declare-fun tp!644533 () Bool)

(declare-fun tp!644560 () Bool)

(assert (=> b!2113614 (= e!1344850 (and tp!644533 tp!644560))))

(declare-fun tp!644548 () Bool)

(declare-fun tp!644549 () Bool)

(declare-fun array_inv!2596 (array!8139) Bool)

(assert (=> b!2113615 (= e!1344851 (and tp!644535 tp!644549 tp!644548 (array_inv!2593 (_keys!2657 (v!28047 (underlying!4915 (v!28048 (underlying!4916 (cache!2655 cacheDown!1229))))))) (array_inv!2596 (_values!2640 (v!28047 (underlying!4915 (v!28048 (underlying!4916 (cache!2655 cacheDown!1229))))))) e!1344854))))

(assert (=> b!2113616 (= e!1344875 (and e!1344858 tp!644541))))

(declare-fun res!917493 () Bool)

(assert (=> start!206518 (=> (not res!917493) (not e!1344861))))

(declare-fun validRegex!2221 (Regex!5629) Bool)

(assert (=> start!206518 (= res!917493 (validRegex!2221 r!15373))))

(assert (=> start!206518 e!1344861))

(declare-fun inv!31100 (CacheDown!1560) Bool)

(assert (=> start!206518 (and (inv!31100 cacheDown!1229) e!1344872)))

(assert (=> start!206518 e!1344850))

(declare-fun e!1344878 () Bool)

(declare-fun inv!31101 (CacheUp!1566) Bool)

(assert (=> start!206518 (and (inv!31101 cacheUp!1110) e!1344878)))

(assert (=> start!206518 (and (inv!31098 input!6660) e!1344856)))

(assert (=> start!206518 (and (inv!31098 totalInput!1306) e!1344847)))

(declare-fun inv!31102 (CacheFurthestNullable!542) Bool)

(assert (=> start!206518 (and (inv!31102 cacheFurthestNullable!141) e!1344868)))

(declare-fun b!2113617 () Bool)

(declare-fun res!917490 () Bool)

(assert (=> b!2113617 (=> (not res!917490) (not e!1344861))))

(declare-fun valid!1862 (CacheUp!1566) Bool)

(assert (=> b!2113617 (= res!917490 (valid!1862 cacheUp!1110))))

(declare-fun b!2113618 () Bool)

(assert (=> b!2113618 (= e!1344878 e!1344873)))

(declare-fun b!2113619 () Bool)

(declare-fun tp!644544 () Bool)

(assert (=> b!2113619 (= e!1344852 (and (inv!31099 (c!339193 (totalInput!2828 cacheFurthestNullable!141))) tp!644544))))

(declare-fun b!2113620 () Bool)

(declare-fun tp!644543 () Bool)

(assert (=> b!2113620 (= e!1344870 (and tp!644543 mapRes!11324))))

(declare-fun condMapEmpty!11325 () Bool)

(declare-fun mapDefault!11325 () List!23603)

(assert (=> b!2113620 (= condMapEmpty!11325 (= (arr!3610 (_values!2639 (v!28045 (underlying!4913 (v!28046 (underlying!4914 (cache!2654 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23603)) mapDefault!11325)))))

(assert (= (and start!206518 res!917493) b!2113617))

(assert (= (and b!2113617 res!917490) b!2113597))

(assert (= (and b!2113597 res!917491) b!2113607))

(assert (= (and b!2113607 res!917496) b!2113598))

(assert (= (and b!2113598 res!917492) b!2113606))

(assert (= (and b!2113606 res!917489) b!2113585))

(assert (= (and b!2113585 res!917494) b!2113594))

(assert (= (and b!2113585 res!917497) b!2113610))

(assert (= (and b!2113610 res!917495) b!2113613))

(assert (= (and b!2113602 condMapEmpty!11323) mapIsEmpty!11324))

(assert (= (and b!2113602 (not condMapEmpty!11323)) mapNonEmpty!11325))

(assert (= b!2113615 b!2113602))

(assert (= b!2113599 b!2113615))

(assert (= b!2113591 b!2113599))

(assert (= (and b!2113603 ((_ is LongMap!2360) (v!28048 (underlying!4916 (cache!2655 cacheDown!1229))))) b!2113591))

(assert (= b!2113616 b!2113603))

(assert (= (and b!2113604 ((_ is HashMap!2274) (cache!2655 cacheDown!1229))) b!2113616))

(assert (= start!206518 b!2113604))

(assert (= (and start!206518 ((_ is ElementMatch!5629) r!15373)) b!2113592))

(assert (= (and start!206518 ((_ is Concat!9931) r!15373)) b!2113614))

(assert (= (and start!206518 ((_ is Star!5629) r!15373)) b!2113584))

(assert (= (and start!206518 ((_ is Union!5629) r!15373)) b!2113612))

(assert (= (and b!2113620 condMapEmpty!11325) mapIsEmpty!11323))

(assert (= (and b!2113620 (not condMapEmpty!11325)) mapNonEmpty!11324))

(assert (= b!2113588 b!2113620))

(assert (= b!2113605 b!2113588))

(assert (= b!2113611 b!2113605))

(assert (= (and b!2113593 ((_ is LongMap!2359) (v!28046 (underlying!4914 (cache!2654 cacheUp!1110))))) b!2113611))

(assert (= b!2113590 b!2113593))

(assert (= (and b!2113618 ((_ is HashMap!2273) (cache!2654 cacheUp!1110))) b!2113590))

(assert (= start!206518 b!2113618))

(assert (= start!206518 b!2113600))

(assert (= start!206518 b!2113595))

(assert (= (and b!2113608 condMapEmpty!11324) mapIsEmpty!11325))

(assert (= (and b!2113608 (not condMapEmpty!11324)) mapNonEmpty!11323))

(assert (= b!2113601 b!2113608))

(assert (= b!2113586 b!2113601))

(assert (= b!2113596 b!2113586))

(assert (= (and b!2113589 ((_ is LongMap!2358) (v!28044 (underlying!4912 (cache!2653 cacheFurthestNullable!141))))) b!2113596))

(assert (= b!2113609 b!2113589))

(assert (= (and b!2113587 ((_ is HashMap!2272) (cache!2653 cacheFurthestNullable!141))) b!2113609))

(assert (= b!2113587 b!2113619))

(assert (= start!206518 b!2113587))

(declare-fun m!2569685 () Bool)

(assert (=> b!2113613 m!2569685))

(declare-fun m!2569687 () Bool)

(assert (=> b!2113606 m!2569687))

(assert (=> b!2113606 m!2569687))

(declare-fun m!2569689 () Bool)

(assert (=> b!2113606 m!2569689))

(declare-fun m!2569691 () Bool)

(assert (=> b!2113606 m!2569691))

(declare-fun m!2569693 () Bool)

(assert (=> mapNonEmpty!11324 m!2569693))

(declare-fun m!2569695 () Bool)

(assert (=> b!2113588 m!2569695))

(declare-fun m!2569697 () Bool)

(assert (=> b!2113588 m!2569697))

(declare-fun m!2569699 () Bool)

(assert (=> b!2113587 m!2569699))

(declare-fun m!2569701 () Bool)

(assert (=> b!2113607 m!2569701))

(declare-fun m!2569703 () Bool)

(assert (=> b!2113610 m!2569703))

(declare-fun m!2569705 () Bool)

(assert (=> b!2113617 m!2569705))

(declare-fun m!2569707 () Bool)

(assert (=> b!2113619 m!2569707))

(declare-fun m!2569709 () Bool)

(assert (=> b!2113594 m!2569709))

(declare-fun m!2569711 () Bool)

(assert (=> mapNonEmpty!11325 m!2569711))

(declare-fun m!2569713 () Bool)

(assert (=> b!2113615 m!2569713))

(declare-fun m!2569715 () Bool)

(assert (=> b!2113615 m!2569715))

(declare-fun m!2569717 () Bool)

(assert (=> mapNonEmpty!11323 m!2569717))

(declare-fun m!2569719 () Bool)

(assert (=> b!2113595 m!2569719))

(declare-fun m!2569721 () Bool)

(assert (=> b!2113601 m!2569721))

(declare-fun m!2569723 () Bool)

(assert (=> b!2113601 m!2569723))

(declare-fun m!2569725 () Bool)

(assert (=> b!2113585 m!2569725))

(declare-fun m!2569727 () Bool)

(assert (=> b!2113585 m!2569727))

(declare-fun m!2569729 () Bool)

(assert (=> b!2113585 m!2569729))

(declare-fun m!2569731 () Bool)

(assert (=> b!2113585 m!2569731))

(declare-fun m!2569733 () Bool)

(assert (=> b!2113585 m!2569733))

(declare-fun m!2569735 () Bool)

(assert (=> b!2113585 m!2569735))

(declare-fun m!2569737 () Bool)

(assert (=> b!2113585 m!2569737))

(declare-fun m!2569739 () Bool)

(assert (=> b!2113585 m!2569739))

(declare-fun m!2569741 () Bool)

(assert (=> b!2113585 m!2569741))

(declare-fun m!2569743 () Bool)

(assert (=> b!2113585 m!2569743))

(declare-fun m!2569745 () Bool)

(assert (=> b!2113585 m!2569745))

(declare-fun m!2569747 () Bool)

(assert (=> b!2113597 m!2569747))

(declare-fun m!2569749 () Bool)

(assert (=> start!206518 m!2569749))

(declare-fun m!2569751 () Bool)

(assert (=> start!206518 m!2569751))

(declare-fun m!2569753 () Bool)

(assert (=> start!206518 m!2569753))

(declare-fun m!2569755 () Bool)

(assert (=> start!206518 m!2569755))

(declare-fun m!2569757 () Bool)

(assert (=> start!206518 m!2569757))

(declare-fun m!2569759 () Bool)

(assert (=> start!206518 m!2569759))

(declare-fun m!2569761 () Bool)

(assert (=> b!2113600 m!2569761))

(check-sat (not b!2113619) (not b!2113602) (not b!2113585) (not b_next!61915) b_and!170789 (not b!2113600) (not mapNonEmpty!11325) (not start!206518) (not b_next!61909) (not b_next!61911) (not b!2113614) (not b!2113584) (not b!2113613) (not b!2113595) (not b!2113606) (not b!2113588) b_and!170793 (not b!2113594) b_and!170787 (not b_next!61917) (not b!2113610) (not b!2113620) (not b_next!61919) (not mapNonEmpty!11324) (not b!2113608) (not b!2113615) (not b!2113612) (not b!2113617) (not mapNonEmpty!11323) (not b!2113601) b_and!170785 (not b!2113607) (not b!2113587) b_and!170791 (not b!2113597) b_and!170795 tp_is_empty!9447 (not b_next!61913))
(check-sat b_and!170793 (not b_next!61919) (not b_next!61915) b_and!170789 b_and!170785 (not b_next!61913) (not b_next!61909) (not b_next!61911) b_and!170787 (not b_next!61917) b_and!170791 b_and!170795)
