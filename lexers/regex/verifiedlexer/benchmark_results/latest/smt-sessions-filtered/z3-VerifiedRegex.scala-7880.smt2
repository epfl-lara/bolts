; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412096 () Bool)

(assert start!412096)

(declare-fun b!4291210 () Bool)

(declare-fun b_free!127447 () Bool)

(declare-fun b_next!128151 () Bool)

(assert (=> b!4291210 (= b_free!127447 (not b_next!128151))))

(declare-fun tp!1316264 () Bool)

(declare-fun b_and!338663 () Bool)

(assert (=> b!4291210 (= tp!1316264 b_and!338663)))

(declare-fun b!4291225 () Bool)

(declare-fun b_free!127449 () Bool)

(declare-fun b_next!128153 () Bool)

(assert (=> b!4291225 (= b_free!127449 (not b_next!128153))))

(declare-fun tp!1316257 () Bool)

(declare-fun b_and!338665 () Bool)

(assert (=> b!4291225 (= tp!1316257 b_and!338665)))

(declare-fun b!4291235 () Bool)

(declare-fun b_free!127451 () Bool)

(declare-fun b_next!128155 () Bool)

(assert (=> b!4291235 (= b_free!127451 (not b_next!128155))))

(declare-fun tp!1316271 () Bool)

(declare-fun b_and!338667 () Bool)

(assert (=> b!4291235 (= tp!1316271 b_and!338667)))

(declare-fun b!4291217 () Bool)

(declare-fun b_free!127453 () Bool)

(declare-fun b_next!128157 () Bool)

(assert (=> b!4291217 (= b_free!127453 (not b_next!128157))))

(declare-fun tp!1316260 () Bool)

(declare-fun b_and!338669 () Bool)

(assert (=> b!4291217 (= tp!1316260 b_and!338669)))

(declare-fun b!4291230 () Bool)

(declare-fun b_free!127455 () Bool)

(declare-fun b_next!128159 () Bool)

(assert (=> b!4291230 (= b_free!127455 (not b_next!128159))))

(declare-fun tp!1316269 () Bool)

(declare-fun b_and!338671 () Bool)

(assert (=> b!4291230 (= tp!1316269 b_and!338671)))

(declare-fun b!4291226 () Bool)

(declare-fun b_free!127457 () Bool)

(declare-fun b_next!128161 () Bool)

(assert (=> b!4291226 (= b_free!127457 (not b_next!128161))))

(declare-fun tp!1316277 () Bool)

(declare-fun b_and!338673 () Bool)

(assert (=> b!4291226 (= tp!1316277 b_and!338673)))

(declare-fun b!4291206 () Bool)

(declare-fun e!2665835 () Bool)

(declare-fun e!2665824 () Bool)

(assert (=> b!4291206 (= e!2665835 e!2665824)))

(declare-fun b!4291207 () Bool)

(declare-fun e!2665807 () Bool)

(declare-fun e!2665834 () Bool)

(declare-datatypes ((C!26116 0))(
  ( (C!26117 (val!15384 Int)) )
))
(declare-datatypes ((Regex!12959 0))(
  ( (ElementMatch!12959 (c!730337 C!26116)) (Concat!21278 (regOne!26430 Regex!12959) (regTwo!26430 Regex!12959)) (EmptyExpr!12959) (Star!12959 (reg!13288 Regex!12959)) (EmptyLang!12959) (Union!12959 (regOne!26431 Regex!12959) (regTwo!26431 Regex!12959)) )
))
(declare-datatypes ((List!47823 0))(
  ( (Nil!47699) (Cons!47699 (h!53119 Regex!12959) (t!354427 List!47823)) )
))
(declare-datatypes ((Context!5698 0))(
  ( (Context!5699 (exprs!3349 List!47823)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45352 0))(
  ( (tuple2!45353 (_1!25893 (InoxSet Context!5698)) (_2!25893 Int)) )
))
(declare-datatypes ((tuple2!45354 0))(
  ( (tuple2!45355 (_1!25894 tuple2!45352) (_2!25894 Int)) )
))
(declare-datatypes ((List!47824 0))(
  ( (Nil!47700) (Cons!47700 (h!53120 tuple2!45354) (t!354428 List!47824)) )
))
(declare-datatypes ((array!15736 0))(
  ( (array!15737 (arr!7028 (Array (_ BitVec 32) (_ BitVec 64))) (size!35012 (_ BitVec 32))) )
))
(declare-datatypes ((array!15738 0))(
  ( (array!15739 (arr!7029 (Array (_ BitVec 32) List!47824)) (size!35013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8804 0))(
  ( (LongMapFixedSize!8805 (defaultEntry!4787 Int) (mask!12851 (_ BitVec 32)) (extraKeys!4651 (_ BitVec 32)) (zeroValue!4661 List!47824) (minValue!4661 List!47824) (_size!8847 (_ BitVec 32)) (_keys!4702 array!15736) (_values!4683 array!15738) (_vacant!4463 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17417 0))(
  ( (Cell!17418 (v!41617 LongMapFixedSize!8804)) )
))
(declare-datatypes ((MutLongMap!4402 0))(
  ( (LongMap!4402 (underlying!9033 Cell!17417)) (MutLongMapExt!4401 (__x!29231 Int)) )
))
(declare-fun lt!1516937 () MutLongMap!4402)

(get-info :version)

(assert (=> b!4291207 (= e!2665807 (and e!2665834 ((_ is LongMap!4402) lt!1516937)))))

(declare-datatypes ((Hashable!4318 0))(
  ( (HashableExt!4317 (__x!29232 Int)) )
))
(declare-datatypes ((Cell!17419 0))(
  ( (Cell!17420 (v!41618 MutLongMap!4402)) )
))
(declare-datatypes ((MutableMap!4308 0))(
  ( (MutableMapExt!4307 (__x!29233 Int)) (HashMap!4308 (underlying!9034 Cell!17419) (hashF!6350 Hashable!4318) (_size!8848 (_ BitVec 32)) (defaultValue!4479 Int)) )
))
(declare-datatypes ((List!47825 0))(
  ( (Nil!47701) (Cons!47701 (h!53121 C!26116) (t!354429 List!47825)) )
))
(declare-datatypes ((IArray!28863 0))(
  ( (IArray!28864 (innerList!14489 List!47825)) )
))
(declare-datatypes ((Conc!14401 0))(
  ( (Node!14401 (left!35417 Conc!14401) (right!35747 Conc!14401) (csize!29032 Int) (cheight!14612 Int)) (Leaf!22282 (xs!17707 IArray!28863) (csize!29033 Int)) (Empty!14401) )
))
(declare-datatypes ((BalanceConc!28292 0))(
  ( (BalanceConc!28293 (c!730338 Conc!14401)) )
))
(declare-datatypes ((CacheFindLongestMatch!490 0))(
  ( (CacheFindLongestMatch!491 (cache!4448 MutableMap!4308) (totalInput!4364 BalanceConc!28292)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!490)

(assert (=> b!4291207 (= lt!1516937 (v!41618 (underlying!9034 (cache!4448 cacheFindLongestMatch!183))))))

(declare-fun b!4291208 () Bool)

(declare-fun e!2665815 () Bool)

(declare-fun e!2665826 () Bool)

(assert (=> b!4291208 (= e!2665815 e!2665826)))

(declare-fun mapNonEmpty!19834 () Bool)

(declare-fun mapRes!19836 () Bool)

(declare-fun tp!1316263 () Bool)

(declare-fun tp!1316268 () Bool)

(assert (=> mapNonEmpty!19834 (= mapRes!19836 (and tp!1316263 tp!1316268))))

(declare-datatypes ((tuple3!5420 0))(
  ( (tuple3!5421 (_1!25895 Regex!12959) (_2!25895 Context!5698) (_3!3217 C!26116)) )
))
(declare-datatypes ((tuple2!45356 0))(
  ( (tuple2!45357 (_1!25896 tuple3!5420) (_2!25896 (InoxSet Context!5698))) )
))
(declare-datatypes ((List!47826 0))(
  ( (Nil!47702) (Cons!47702 (h!53122 tuple2!45356) (t!354430 List!47826)) )
))
(declare-datatypes ((Hashable!4319 0))(
  ( (HashableExt!4318 (__x!29234 Int)) )
))
(declare-datatypes ((array!15740 0))(
  ( (array!15741 (arr!7030 (Array (_ BitVec 32) List!47826)) (size!35014 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8806 0))(
  ( (LongMapFixedSize!8807 (defaultEntry!4788 Int) (mask!12852 (_ BitVec 32)) (extraKeys!4652 (_ BitVec 32)) (zeroValue!4662 List!47826) (minValue!4662 List!47826) (_size!8849 (_ BitVec 32)) (_keys!4703 array!15736) (_values!4684 array!15740) (_vacant!4464 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17421 0))(
  ( (Cell!17422 (v!41619 LongMapFixedSize!8806)) )
))
(declare-datatypes ((MutLongMap!4403 0))(
  ( (LongMap!4403 (underlying!9035 Cell!17421)) (MutLongMapExt!4402 (__x!29235 Int)) )
))
(declare-datatypes ((Cell!17423 0))(
  ( (Cell!17424 (v!41620 MutLongMap!4403)) )
))
(declare-datatypes ((MutableMap!4309 0))(
  ( (MutableMapExt!4308 (__x!29236 Int)) (HashMap!4309 (underlying!9036 Cell!17423) (hashF!6351 Hashable!4319) (_size!8850 (_ BitVec 32)) (defaultValue!4480 Int)) )
))
(declare-datatypes ((CacheDown!2926 0))(
  ( (CacheDown!2927 (cache!4449 MutableMap!4309)) )
))
(declare-fun cacheDown!1066 () CacheDown!2926)

(declare-fun mapKey!19835 () (_ BitVec 32))

(declare-fun mapValue!19836 () List!47826)

(declare-fun mapRest!19835 () (Array (_ BitVec 32) List!47826))

(assert (=> mapNonEmpty!19834 (= (arr!7030 (_values!4684 (v!41619 (underlying!9035 (v!41620 (underlying!9036 (cache!4449 cacheDown!1066))))))) (store mapRest!19835 mapKey!19835 mapValue!19836))))

(declare-fun b!4291209 () Bool)

(declare-fun e!2665812 () Bool)

(declare-datatypes ((tuple2!45358 0))(
  ( (tuple2!45359 (_1!25897 Context!5698) (_2!25897 C!26116)) )
))
(declare-datatypes ((tuple2!45360 0))(
  ( (tuple2!45361 (_1!25898 tuple2!45358) (_2!25898 (InoxSet Context!5698))) )
))
(declare-datatypes ((List!47827 0))(
  ( (Nil!47703) (Cons!47703 (h!53123 tuple2!45360) (t!354431 List!47827)) )
))
(declare-datatypes ((array!15742 0))(
  ( (array!15743 (arr!7031 (Array (_ BitVec 32) List!47827)) (size!35015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8808 0))(
  ( (LongMapFixedSize!8809 (defaultEntry!4789 Int) (mask!12853 (_ BitVec 32)) (extraKeys!4653 (_ BitVec 32)) (zeroValue!4663 List!47827) (minValue!4663 List!47827) (_size!8851 (_ BitVec 32)) (_keys!4704 array!15736) (_values!4685 array!15742) (_vacant!4465 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17425 0))(
  ( (Cell!17426 (v!41621 LongMapFixedSize!8808)) )
))
(declare-datatypes ((MutLongMap!4404 0))(
  ( (LongMap!4404 (underlying!9037 Cell!17425)) (MutLongMapExt!4403 (__x!29237 Int)) )
))
(declare-datatypes ((Cell!17427 0))(
  ( (Cell!17428 (v!41622 MutLongMap!4404)) )
))
(declare-datatypes ((Hashable!4320 0))(
  ( (HashableExt!4319 (__x!29238 Int)) )
))
(declare-datatypes ((MutableMap!4310 0))(
  ( (MutableMapExt!4309 (__x!29239 Int)) (HashMap!4310 (underlying!9038 Cell!17427) (hashF!6352 Hashable!4320) (_size!8852 (_ BitVec 32)) (defaultValue!4481 Int)) )
))
(declare-datatypes ((CacheUp!2808 0))(
  ( (CacheUp!2809 (cache!4450 MutableMap!4310)) )
))
(declare-datatypes ((tuple4!1014 0))(
  ( (tuple4!1015 (_1!25899 Int) (_2!25899 CacheUp!2808) (_3!3218 CacheDown!2926) (_4!507 CacheFindLongestMatch!490)) )
))
(declare-fun lt!1516934 () tuple4!1014)

(declare-fun totalInput!812 () BalanceConc!28292)

(assert (=> b!4291209 (= e!2665812 (= (totalInput!4364 (_4!507 lt!1516934)) totalInput!812))))

(declare-fun e!2665804 () Bool)

(declare-fun tp!1316267 () Bool)

(declare-fun tp!1316276 () Bool)

(declare-fun e!2665819 () Bool)

(declare-fun array_inv!5043 (array!15736) Bool)

(declare-fun array_inv!5044 (array!15740) Bool)

(assert (=> b!4291210 (= e!2665804 (and tp!1316264 tp!1316267 tp!1316276 (array_inv!5043 (_keys!4703 (v!41619 (underlying!9035 (v!41620 (underlying!9036 (cache!4449 cacheDown!1066))))))) (array_inv!5044 (_values!4684 (v!41619 (underlying!9035 (v!41620 (underlying!9036 (cache!4449 cacheDown!1066))))))) e!2665819))))

(declare-fun b!4291211 () Bool)

(declare-fun e!2665811 () Bool)

(declare-fun tp!1316265 () Bool)

(declare-fun mapRes!19835 () Bool)

(assert (=> b!4291211 (= e!2665811 (and tp!1316265 mapRes!19835))))

(declare-fun condMapEmpty!19834 () Bool)

(declare-fun mapDefault!19834 () List!47824)

(assert (=> b!4291211 (= condMapEmpty!19834 (= (arr!7029 (_values!4683 (v!41617 (underlying!9033 (v!41618 (underlying!9034 (cache!4448 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47824)) mapDefault!19834)))))

(declare-fun mapNonEmpty!19835 () Bool)

(declare-fun tp!1316270 () Bool)

(declare-fun tp!1316256 () Bool)

(assert (=> mapNonEmpty!19835 (= mapRes!19835 (and tp!1316270 tp!1316256))))

(declare-fun mapKey!19836 () (_ BitVec 32))

(declare-fun mapValue!19835 () List!47824)

(declare-fun mapRest!19836 () (Array (_ BitVec 32) List!47824))

(assert (=> mapNonEmpty!19835 (= (arr!7029 (_values!4683 (v!41617 (underlying!9033 (v!41618 (underlying!9034 (cache!4448 cacheFindLongestMatch!183))))))) (store mapRest!19836 mapKey!19836 mapValue!19835))))

(declare-fun b!4291212 () Bool)

(declare-fun e!2665827 () Int)

(assert (=> b!4291212 (= e!2665827 0)))

(declare-fun cacheUp!947 () CacheUp!2808)

(declare-datatypes ((tuple4!1016 0))(
  ( (tuple4!1017 (_1!25900 Int) (_2!25900 CacheFindLongestMatch!490) (_3!3219 CacheDown!2926) (_4!508 CacheUp!2808)) )
))
(declare-fun e!2665820 () tuple4!1016)

(declare-fun b!4291213 () Bool)

(assert (=> b!4291213 (= e!2665820 (tuple4!1017 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4291214 () Bool)

(declare-fun e!2665803 () Bool)

(declare-fun tp!1316261 () Bool)

(declare-fun inv!63211 (Conc!14401) Bool)

(assert (=> b!4291214 (= e!2665803 (and (inv!63211 (c!730338 (totalInput!4364 cacheFindLongestMatch!183))) tp!1316261))))

(declare-fun b!4291215 () Bool)

(assert (=> b!4291215 (= e!2665827 1)))

(declare-fun b!4291216 () Bool)

(assert (=> b!4291216 (= e!2665834 e!2665835)))

(declare-fun e!2665810 () Bool)

(declare-fun e!2665818 () Bool)

(assert (=> b!4291217 (= e!2665810 (and e!2665818 tp!1316260))))

(declare-fun b!4291218 () Bool)

(declare-fun e!2665805 () Bool)

(declare-fun e!2665822 () Bool)

(declare-fun inv!63212 (BalanceConc!28292) Bool)

(assert (=> b!4291218 (= e!2665805 (and e!2665822 (inv!63212 (totalInput!4364 cacheFindLongestMatch!183)) e!2665803))))

(declare-fun b!4291219 () Bool)

(declare-fun e!2665816 () Int)

(assert (=> b!4291219 (= e!2665820 (tuple4!1017 e!2665816 (_4!507 lt!1516934) (_3!3218 lt!1516934) (_2!25899 lt!1516934)))))

(declare-fun z!3765 () (InoxSet Context!5698))

(declare-fun from!999 () Int)

(declare-datatypes ((tuple3!5422 0))(
  ( (tuple3!5423 (_1!25901 (InoxSet Context!5698)) (_2!25901 CacheUp!2808) (_3!3220 CacheDown!2926)) )
))
(declare-fun lt!1516938 () tuple3!5422)

(declare-fun derivationStepZipperMem!128 ((InoxSet Context!5698) C!26116 CacheUp!2808 CacheDown!2926) tuple3!5422)

(declare-fun apply!10831 (BalanceConc!28292 Int) C!26116)

(assert (=> b!4291219 (= lt!1516938 (derivationStepZipperMem!128 z!3765 (apply!10831 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun totalInputSize!257 () Int)

(declare-fun findLongestMatchInnerZipperFastV2Mem!12 ((InoxSet Context!5698) Int BalanceConc!28292 Int CacheUp!2808 CacheDown!2926 CacheFindLongestMatch!490) tuple4!1014)

(assert (=> b!4291219 (= lt!1516934 (findLongestMatchInnerZipperFastV2Mem!12 (_1!25901 lt!1516938) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25901 lt!1516938) (_3!3220 lt!1516938) cacheFindLongestMatch!183))))

(declare-fun res!1759805 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!30 ((InoxSet Context!5698) Int BalanceConc!28292 Int) Int)

(assert (=> b!4291219 (= res!1759805 (= (_1!25899 lt!1516934) (findLongestMatchInnerZipperFastV2!30 (_1!25901 lt!1516938) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4291219 (=> (not res!1759805) (not e!2665812))))

(assert (=> b!4291219 e!2665812))

(declare-fun c!730336 () Bool)

(assert (=> b!4291219 (= c!730336 (> (_1!25899 lt!1516934) 0))))

(declare-fun mapIsEmpty!19834 () Bool)

(assert (=> mapIsEmpty!19834 mapRes!19836))

(declare-fun b!4291220 () Bool)

(declare-fun e!2665823 () Bool)

(declare-fun lostCauseZipper!642 ((InoxSet Context!5698)) Bool)

(assert (=> b!4291220 (= e!2665823 (lostCauseZipper!642 z!3765))))

(declare-fun b!4291221 () Bool)

(declare-fun c!730334 () Bool)

(declare-fun nullableZipper!762 ((InoxSet Context!5698)) Bool)

(assert (=> b!4291221 (= c!730334 (nullableZipper!762 (_1!25901 lt!1516938)))))

(assert (=> b!4291221 (= e!2665816 e!2665827)))

(declare-fun b!4291222 () Bool)

(declare-fun tp!1316266 () Bool)

(assert (=> b!4291222 (= e!2665819 (and tp!1316266 mapRes!19836))))

(declare-fun condMapEmpty!19836 () Bool)

(declare-fun mapDefault!19836 () List!47826)

(assert (=> b!4291222 (= condMapEmpty!19836 (= (arr!7030 (_values!4684 (v!41619 (underlying!9035 (v!41620 (underlying!9036 (cache!4449 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47826)) mapDefault!19836)))))

(declare-fun res!1759806 () Bool)

(declare-fun e!2665806 () Bool)

(assert (=> start!412096 (=> (not res!1759806) (not e!2665806))))

(assert (=> start!412096 (= res!1759806 (>= from!999 0))))

(assert (=> start!412096 e!2665806))

(declare-fun e!2665828 () Bool)

(declare-fun inv!63213 (CacheDown!2926) Bool)

(assert (=> start!412096 (and (inv!63213 cacheDown!1066) e!2665828)))

(declare-fun inv!63214 (CacheFindLongestMatch!490) Bool)

(assert (=> start!412096 (and (inv!63214 cacheFindLongestMatch!183) e!2665805)))

(declare-fun condSetEmpty!26460 () Bool)

(assert (=> start!412096 (= condSetEmpty!26460 (= z!3765 ((as const (Array Context!5698 Bool)) false)))))

(declare-fun setRes!26460 () Bool)

(assert (=> start!412096 setRes!26460))

(assert (=> start!412096 true))

(declare-fun e!2665813 () Bool)

(assert (=> start!412096 (and (inv!63212 totalInput!812) e!2665813)))

(declare-fun inv!63215 (CacheUp!2808) Bool)

(assert (=> start!412096 (and (inv!63215 cacheUp!947) e!2665815)))

(declare-fun b!4291223 () Bool)

(declare-fun e!2665808 () Bool)

(declare-fun tp!1316272 () Bool)

(assert (=> b!4291223 (= e!2665808 tp!1316272)))

(declare-fun b!4291224 () Bool)

(declare-fun e!2665829 () Bool)

(declare-fun e!2665809 () Bool)

(declare-fun lt!1516940 () MutLongMap!4404)

(assert (=> b!4291224 (= e!2665829 (and e!2665809 ((_ is LongMap!4404) lt!1516940)))))

(assert (=> b!4291224 (= lt!1516940 (v!41622 (underlying!9038 (cache!4450 cacheUp!947))))))

(declare-fun tp!1316273 () Bool)

(declare-fun tp!1316274 () Bool)

(declare-fun array_inv!5045 (array!15738) Bool)

(assert (=> b!4291225 (= e!2665824 (and tp!1316257 tp!1316273 tp!1316274 (array_inv!5043 (_keys!4702 (v!41617 (underlying!9033 (v!41618 (underlying!9034 (cache!4448 cacheFindLongestMatch!183))))))) (array_inv!5045 (_values!4683 (v!41617 (underlying!9033 (v!41618 (underlying!9034 (cache!4448 cacheFindLongestMatch!183))))))) e!2665811))))

(declare-fun mapIsEmpty!19835 () Bool)

(declare-fun mapRes!19834 () Bool)

(assert (=> mapIsEmpty!19835 mapRes!19834))

(assert (=> b!4291226 (= e!2665826 (and e!2665829 tp!1316277))))

(declare-fun b!4291227 () Bool)

(declare-fun e!2665821 () Bool)

(declare-fun e!2665833 () Bool)

(assert (=> b!4291227 (= e!2665821 e!2665833)))

(declare-fun b!4291228 () Bool)

(assert (=> b!4291228 (= e!2665816 (+ 1 (_1!25899 lt!1516934)))))

(declare-fun b!4291229 () Bool)

(declare-fun e!2665814 () Bool)

(assert (=> b!4291229 (= e!2665809 e!2665814)))

(declare-fun setIsEmpty!26460 () Bool)

(assert (=> setIsEmpty!26460 setRes!26460))

(assert (=> b!4291230 (= e!2665822 (and e!2665807 tp!1316269))))

(declare-fun b!4291231 () Bool)

(assert (=> b!4291231 (= e!2665833 e!2665804)))

(declare-fun b!4291232 () Bool)

(assert (=> b!4291232 (= e!2665828 e!2665810)))

(declare-fun b!4291233 () Bool)

(declare-fun res!1759800 () Bool)

(declare-fun e!2665830 () Bool)

(assert (=> b!4291233 (=> (not res!1759800) (not e!2665830))))

(declare-datatypes ((Option!10133 0))(
  ( (None!10132) (Some!10132 (v!41623 Int)) )
))
(declare-fun get!15444 (CacheFindLongestMatch!490 (InoxSet Context!5698) Int) Option!10133)

(assert (=> b!4291233 (= res!1759800 (not ((_ is Some!10132) (get!15444 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun mapNonEmpty!19836 () Bool)

(declare-fun tp!1316253 () Bool)

(declare-fun tp!1316262 () Bool)

(assert (=> mapNonEmpty!19836 (= mapRes!19834 (and tp!1316253 tp!1316262))))

(declare-fun mapValue!19834 () List!47827)

(declare-fun mapKey!19834 () (_ BitVec 32))

(declare-fun mapRest!19834 () (Array (_ BitVec 32) List!47827))

(assert (=> mapNonEmpty!19836 (= (arr!7031 (_values!4685 (v!41621 (underlying!9037 (v!41622 (underlying!9038 (cache!4450 cacheUp!947))))))) (store mapRest!19834 mapKey!19834 mapValue!19834))))

(declare-fun b!4291234 () Bool)

(assert (=> b!4291234 (= e!2665830 false)))

(declare-fun lt!1516936 () tuple4!1016)

(assert (=> b!4291234 (= lt!1516936 e!2665820)))

(declare-fun c!730335 () Bool)

(assert (=> b!4291234 (= c!730335 e!2665823)))

(declare-fun res!1759801 () Bool)

(assert (=> b!4291234 (=> res!1759801 e!2665823)))

(assert (=> b!4291234 (= res!1759801 (= from!999 totalInputSize!257))))

(declare-fun tp!1316259 () Bool)

(declare-fun e!2665831 () Bool)

(declare-fun tp!1316275 () Bool)

(declare-fun e!2665817 () Bool)

(declare-fun array_inv!5046 (array!15742) Bool)

(assert (=> b!4291235 (= e!2665817 (and tp!1316271 tp!1316259 tp!1316275 (array_inv!5043 (_keys!4704 (v!41621 (underlying!9037 (v!41622 (underlying!9038 (cache!4450 cacheUp!947))))))) (array_inv!5046 (_values!4685 (v!41621 (underlying!9037 (v!41622 (underlying!9038 (cache!4450 cacheUp!947))))))) e!2665831))))

(declare-fun setElem!26460 () Context!5698)

(declare-fun tp!1316255 () Bool)

(declare-fun setNonEmpty!26460 () Bool)

(declare-fun inv!63216 (Context!5698) Bool)

(assert (=> setNonEmpty!26460 (= setRes!26460 (and tp!1316255 (inv!63216 setElem!26460) e!2665808))))

(declare-fun setRest!26460 () (InoxSet Context!5698))

(assert (=> setNonEmpty!26460 (= z!3765 ((_ map or) (store ((as const (Array Context!5698 Bool)) false) setElem!26460 true) setRest!26460))))

(declare-fun b!4291236 () Bool)

(assert (=> b!4291236 (= e!2665814 e!2665817)))

(declare-fun b!4291237 () Bool)

(declare-fun res!1759807 () Bool)

(declare-fun valid!3414 (CacheFindLongestMatch!490) Bool)

(assert (=> b!4291237 (= res!1759807 (valid!3414 (_4!507 lt!1516934)))))

(assert (=> b!4291237 (=> (not res!1759807) (not e!2665812))))

(declare-fun b!4291238 () Bool)

(declare-fun res!1759802 () Bool)

(declare-fun valid!3415 (CacheUp!2808) Bool)

(assert (=> b!4291238 (= res!1759802 (valid!3415 (_2!25899 lt!1516934)))))

(assert (=> b!4291238 (=> (not res!1759802) (not e!2665812))))

(declare-fun b!4291239 () Bool)

(declare-fun tp!1316254 () Bool)

(assert (=> b!4291239 (= e!2665813 (and (inv!63211 (c!730338 totalInput!812)) tp!1316254))))

(declare-fun b!4291240 () Bool)

(declare-fun tp!1316258 () Bool)

(assert (=> b!4291240 (= e!2665831 (and tp!1316258 mapRes!19834))))

(declare-fun condMapEmpty!19835 () Bool)

(declare-fun mapDefault!19835 () List!47827)

(assert (=> b!4291240 (= condMapEmpty!19835 (= (arr!7031 (_values!4685 (v!41621 (underlying!9037 (v!41622 (underlying!9038 (cache!4450 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47827)) mapDefault!19835)))))

(declare-fun b!4291241 () Bool)

(assert (=> b!4291241 (= e!2665806 e!2665830)))

(declare-fun res!1759804 () Bool)

(assert (=> b!4291241 (=> (not res!1759804) (not e!2665830))))

(declare-fun lt!1516935 () Int)

(assert (=> b!4291241 (= res!1759804 (and (<= from!999 lt!1516935) (= totalInputSize!257 lt!1516935) (= (totalInput!4364 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35016 (BalanceConc!28292) Int)

(assert (=> b!4291241 (= lt!1516935 (size!35016 totalInput!812))))

(declare-fun b!4291242 () Bool)

(declare-fun res!1759803 () Bool)

(declare-fun valid!3416 (CacheDown!2926) Bool)

(assert (=> b!4291242 (= res!1759803 (valid!3416 (_3!3218 lt!1516934)))))

(assert (=> b!4291242 (=> (not res!1759803) (not e!2665812))))

(declare-fun b!4291243 () Bool)

(declare-fun lt!1516939 () MutLongMap!4403)

(assert (=> b!4291243 (= e!2665818 (and e!2665821 ((_ is LongMap!4403) lt!1516939)))))

(assert (=> b!4291243 (= lt!1516939 (v!41620 (underlying!9036 (cache!4449 cacheDown!1066))))))

(declare-fun mapIsEmpty!19836 () Bool)

(assert (=> mapIsEmpty!19836 mapRes!19835))

(assert (= (and start!412096 res!1759806) b!4291241))

(assert (= (and b!4291241 res!1759804) b!4291233))

(assert (= (and b!4291233 res!1759800) b!4291234))

(assert (= (and b!4291234 (not res!1759801)) b!4291220))

(assert (= (and b!4291234 c!730335) b!4291213))

(assert (= (and b!4291234 (not c!730335)) b!4291219))

(assert (= (and b!4291219 res!1759805) b!4291238))

(assert (= (and b!4291238 res!1759802) b!4291242))

(assert (= (and b!4291242 res!1759803) b!4291237))

(assert (= (and b!4291237 res!1759807) b!4291209))

(assert (= (and b!4291219 c!730336) b!4291228))

(assert (= (and b!4291219 (not c!730336)) b!4291221))

(assert (= (and b!4291221 c!730334) b!4291215))

(assert (= (and b!4291221 (not c!730334)) b!4291212))

(assert (= (and b!4291222 condMapEmpty!19836) mapIsEmpty!19834))

(assert (= (and b!4291222 (not condMapEmpty!19836)) mapNonEmpty!19834))

(assert (= b!4291210 b!4291222))

(assert (= b!4291231 b!4291210))

(assert (= b!4291227 b!4291231))

(assert (= (and b!4291243 ((_ is LongMap!4403) (v!41620 (underlying!9036 (cache!4449 cacheDown!1066))))) b!4291227))

(assert (= b!4291217 b!4291243))

(assert (= (and b!4291232 ((_ is HashMap!4309) (cache!4449 cacheDown!1066))) b!4291217))

(assert (= start!412096 b!4291232))

(assert (= (and b!4291211 condMapEmpty!19834) mapIsEmpty!19836))

(assert (= (and b!4291211 (not condMapEmpty!19834)) mapNonEmpty!19835))

(assert (= b!4291225 b!4291211))

(assert (= b!4291206 b!4291225))

(assert (= b!4291216 b!4291206))

(assert (= (and b!4291207 ((_ is LongMap!4402) (v!41618 (underlying!9034 (cache!4448 cacheFindLongestMatch!183))))) b!4291216))

(assert (= b!4291230 b!4291207))

(assert (= (and b!4291218 ((_ is HashMap!4308) (cache!4448 cacheFindLongestMatch!183))) b!4291230))

(assert (= b!4291218 b!4291214))

(assert (= start!412096 b!4291218))

(assert (= (and start!412096 condSetEmpty!26460) setIsEmpty!26460))

(assert (= (and start!412096 (not condSetEmpty!26460)) setNonEmpty!26460))

(assert (= setNonEmpty!26460 b!4291223))

(assert (= start!412096 b!4291239))

(assert (= (and b!4291240 condMapEmpty!19835) mapIsEmpty!19835))

(assert (= (and b!4291240 (not condMapEmpty!19835)) mapNonEmpty!19836))

(assert (= b!4291235 b!4291240))

(assert (= b!4291236 b!4291235))

(assert (= b!4291229 b!4291236))

(assert (= (and b!4291224 ((_ is LongMap!4404) (v!41622 (underlying!9038 (cache!4450 cacheUp!947))))) b!4291229))

(assert (= b!4291226 b!4291224))

(assert (= (and b!4291208 ((_ is HashMap!4310) (cache!4450 cacheUp!947))) b!4291226))

(assert (= start!412096 b!4291208))

(declare-fun m!4885289 () Bool)

(assert (=> b!4291210 m!4885289))

(declare-fun m!4885291 () Bool)

(assert (=> b!4291210 m!4885291))

(declare-fun m!4885293 () Bool)

(assert (=> b!4291225 m!4885293))

(declare-fun m!4885295 () Bool)

(assert (=> b!4291225 m!4885295))

(declare-fun m!4885297 () Bool)

(assert (=> b!4291238 m!4885297))

(declare-fun m!4885299 () Bool)

(assert (=> b!4291237 m!4885299))

(declare-fun m!4885301 () Bool)

(assert (=> mapNonEmpty!19835 m!4885301))

(declare-fun m!4885303 () Bool)

(assert (=> mapNonEmpty!19834 m!4885303))

(declare-fun m!4885305 () Bool)

(assert (=> b!4291221 m!4885305))

(declare-fun m!4885307 () Bool)

(assert (=> setNonEmpty!26460 m!4885307))

(declare-fun m!4885309 () Bool)

(assert (=> b!4291239 m!4885309))

(declare-fun m!4885311 () Bool)

(assert (=> b!4291242 m!4885311))

(declare-fun m!4885313 () Bool)

(assert (=> b!4291220 m!4885313))

(declare-fun m!4885315 () Bool)

(assert (=> b!4291214 m!4885315))

(declare-fun m!4885317 () Bool)

(assert (=> b!4291218 m!4885317))

(declare-fun m!4885319 () Bool)

(assert (=> b!4291235 m!4885319))

(declare-fun m!4885321 () Bool)

(assert (=> b!4291235 m!4885321))

(declare-fun m!4885323 () Bool)

(assert (=> b!4291219 m!4885323))

(assert (=> b!4291219 m!4885323))

(declare-fun m!4885325 () Bool)

(assert (=> b!4291219 m!4885325))

(declare-fun m!4885327 () Bool)

(assert (=> b!4291219 m!4885327))

(declare-fun m!4885329 () Bool)

(assert (=> b!4291219 m!4885329))

(declare-fun m!4885331 () Bool)

(assert (=> start!412096 m!4885331))

(declare-fun m!4885333 () Bool)

(assert (=> start!412096 m!4885333))

(declare-fun m!4885335 () Bool)

(assert (=> start!412096 m!4885335))

(declare-fun m!4885337 () Bool)

(assert (=> start!412096 m!4885337))

(declare-fun m!4885339 () Bool)

(assert (=> mapNonEmpty!19836 m!4885339))

(declare-fun m!4885341 () Bool)

(assert (=> b!4291233 m!4885341))

(declare-fun m!4885343 () Bool)

(assert (=> b!4291241 m!4885343))

(check-sat (not setNonEmpty!26460) (not b_next!128153) (not b!4291240) (not b_next!128155) (not b!4291210) b_and!338663 (not b!4291219) (not b!4291238) b_and!338671 (not b!4291239) b_and!338665 (not b!4291242) (not b_next!128157) (not start!412096) (not b!4291211) b_and!338669 (not b!4291222) (not b!4291223) (not mapNonEmpty!19836) b_and!338673 (not b!4291225) (not b!4291235) (not b!4291233) (not b_next!128159) (not b!4291241) (not b!4291218) (not mapNonEmpty!19835) (not b!4291221) (not b!4291237) (not b!4291220) b_and!338667 (not b_next!128161) (not b!4291214) (not mapNonEmpty!19834) (not b_next!128151))
(check-sat (not b_next!128157) b_and!338669 (not b_next!128153) b_and!338673 (not b_next!128155) (not b_next!128159) b_and!338663 b_and!338671 b_and!338667 (not b_next!128161) b_and!338665 (not b_next!128151))
