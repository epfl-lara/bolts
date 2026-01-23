; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206910 () Bool)

(assert start!206910)

(declare-fun b!2119383 () Bool)

(declare-fun b_free!61445 () Bool)

(declare-fun b_next!62149 () Bool)

(assert (=> b!2119383 (= b_free!61445 (not b_next!62149))))

(declare-fun tp!647902 () Bool)

(declare-fun b_and!171025 () Bool)

(assert (=> b!2119383 (= tp!647902 b_and!171025)))

(declare-fun b!2119367 () Bool)

(declare-fun b_free!61447 () Bool)

(declare-fun b_next!62151 () Bool)

(assert (=> b!2119367 (= b_free!61447 (not b_next!62151))))

(declare-fun tp!647894 () Bool)

(declare-fun b_and!171027 () Bool)

(assert (=> b!2119367 (= tp!647894 b_and!171027)))

(declare-fun b!2119382 () Bool)

(declare-fun b_free!61449 () Bool)

(declare-fun b_next!62153 () Bool)

(assert (=> b!2119382 (= b_free!61449 (not b_next!62153))))

(declare-fun tp!647897 () Bool)

(declare-fun b_and!171029 () Bool)

(assert (=> b!2119382 (= tp!647897 b_and!171029)))

(declare-fun b!2119362 () Bool)

(declare-fun b_free!61451 () Bool)

(declare-fun b_next!62155 () Bool)

(assert (=> b!2119362 (= b_free!61451 (not b_next!62155))))

(declare-fun tp!647899 () Bool)

(declare-fun b_and!171031 () Bool)

(assert (=> b!2119362 (= tp!647899 b_and!171031)))

(declare-fun b!2119377 () Bool)

(declare-fun b_free!61453 () Bool)

(declare-fun b_next!62157 () Bool)

(assert (=> b!2119377 (= b_free!61453 (not b_next!62157))))

(declare-fun tp!647912 () Bool)

(declare-fun b_and!171033 () Bool)

(assert (=> b!2119377 (= tp!647912 b_and!171033)))

(declare-fun b!2119375 () Bool)

(declare-fun b_free!61455 () Bool)

(declare-fun b_next!62159 () Bool)

(assert (=> b!2119375 (= b_free!61455 (not b_next!62159))))

(declare-fun tp!647892 () Bool)

(declare-fun b_and!171035 () Bool)

(assert (=> b!2119375 (= tp!647892 b_and!171035)))

(declare-fun e!1349312 () Bool)

(declare-datatypes ((Hashable!2322 0))(
  ( (HashableExt!2321 (__x!15400 Int)) )
))
(declare-datatypes ((C!11444 0))(
  ( (C!11445 (val!6708 Int)) )
))
(declare-datatypes ((Regex!5649 0))(
  ( (ElementMatch!5649 (c!339639 C!11444)) (Concat!9951 (regOne!11810 Regex!5649) (regTwo!11810 Regex!5649)) (EmptyExpr!5649) (Star!5649 (reg!5978 Regex!5649)) (EmptyLang!5649) (Union!5649 (regOne!11811 Regex!5649) (regTwo!11811 Regex!5649)) )
))
(declare-datatypes ((List!23703 0))(
  ( (Nil!23619) (Cons!23619 (h!29020 Regex!5649) (t!196219 List!23703)) )
))
(declare-datatypes ((Context!2438 0))(
  ( (Context!2439 (exprs!1719 List!23703)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!2832 0))(
  ( (tuple3!2833 (_1!13472 (InoxSet Context!2438)) (_2!13472 Int) (_3!1886 Int)) )
))
(declare-datatypes ((tuple2!23172 0))(
  ( (tuple2!23173 (_1!13473 tuple3!2832) (_2!13473 Int)) )
))
(declare-datatypes ((List!23704 0))(
  ( (Nil!23620) (Cons!23620 (h!29021 tuple2!23172) (t!196220 List!23704)) )
))
(declare-datatypes ((array!8293 0))(
  ( (array!8294 (arr!3678 (Array (_ BitVec 32) List!23704)) (size!18451 (_ BitVec 32))) )
))
(declare-datatypes ((array!8295 0))(
  ( (array!8296 (arr!3679 (Array (_ BitVec 32) (_ BitVec 64))) (size!18452 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4816 0))(
  ( (LongMapFixedSize!4817 (defaultEntry!2773 Int) (mask!6548 (_ BitVec 32)) (extraKeys!2656 (_ BitVec 32)) (zeroValue!2666 List!23704) (minValue!2666 List!23704) (_size!4867 (_ BitVec 32)) (_keys!2705 array!8295) (_values!2688 array!8293) (_vacant!2469 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9457 0))(
  ( (Cell!9458 (v!28147 LongMapFixedSize!4816)) )
))
(declare-datatypes ((List!23705 0))(
  ( (Nil!23621) (Cons!23621 (h!29022 C!11444) (t!196221 List!23705)) )
))
(declare-datatypes ((IArray!15581 0))(
  ( (IArray!15582 (innerList!7848 List!23705)) )
))
(declare-datatypes ((MutLongMap!2408 0))(
  ( (LongMap!2408 (underlying!5011 Cell!9457)) (MutLongMapExt!2407 (__x!15401 Int)) )
))
(declare-datatypes ((Cell!9459 0))(
  ( (Cell!9460 (v!28148 MutLongMap!2408)) )
))
(declare-datatypes ((Conc!7788 0))(
  ( (Node!7788 (left!18289 Conc!7788) (right!18619 Conc!7788) (csize!15806 Int) (cheight!7999 Int)) (Leaf!11380 (xs!10730 IArray!15581) (csize!15807 Int)) (Empty!7788) )
))
(declare-datatypes ((BalanceConc!15338 0))(
  ( (BalanceConc!15339 (c!339640 Conc!7788)) )
))
(declare-datatypes ((MutableMap!2322 0))(
  ( (MutableMapExt!2321 (__x!15402 Int)) (HashMap!2322 (underlying!5012 Cell!9459) (hashF!4245 Hashable!2322) (_size!4868 (_ BitVec 32)) (defaultValue!2484 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!568 0))(
  ( (CacheFurthestNullable!569 (cache!2703 MutableMap!2322) (totalInput!2883 BalanceConc!15338)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!568)

(declare-fun b!2119359 () Bool)

(declare-fun e!1349300 () Bool)

(declare-fun e!1349301 () Bool)

(declare-fun inv!31209 (BalanceConc!15338) Bool)

(assert (=> b!2119359 (= e!1349300 (and e!1349312 (inv!31209 (totalInput!2883 cacheFurthestNullable!130)) e!1349301))))

(declare-fun b!2119361 () Bool)

(declare-fun e!1349315 () Bool)

(declare-fun e!1349318 () Bool)

(assert (=> b!2119361 (= e!1349315 e!1349318)))

(declare-fun e!1349327 () Bool)

(declare-fun e!1349302 () Bool)

(assert (=> b!2119362 (= e!1349327 (and e!1349302 tp!647899))))

(declare-fun b!2119363 () Bool)

(declare-fun tp!647890 () Bool)

(declare-fun inv!31210 (Conc!7788) Bool)

(assert (=> b!2119363 (= e!1349301 (and (inv!31210 (c!339640 (totalInput!2883 cacheFurthestNullable!130))) tp!647890))))

(declare-fun b!2119364 () Bool)

(declare-fun e!1349316 () Bool)

(declare-fun tp!647906 () Bool)

(declare-fun mapRes!11660 () Bool)

(assert (=> b!2119364 (= e!1349316 (and tp!647906 mapRes!11660))))

(declare-fun condMapEmpty!11661 () Bool)

(declare-datatypes ((tuple2!23174 0))(
  ( (tuple2!23175 (_1!13474 Context!2438) (_2!13474 C!11444)) )
))
(declare-datatypes ((tuple2!23176 0))(
  ( (tuple2!23177 (_1!13475 tuple2!23174) (_2!13475 (InoxSet Context!2438))) )
))
(declare-datatypes ((List!23706 0))(
  ( (Nil!23622) (Cons!23622 (h!29023 tuple2!23176) (t!196222 List!23706)) )
))
(declare-datatypes ((array!8297 0))(
  ( (array!8298 (arr!3680 (Array (_ BitVec 32) List!23706)) (size!18453 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4818 0))(
  ( (LongMapFixedSize!4819 (defaultEntry!2774 Int) (mask!6549 (_ BitVec 32)) (extraKeys!2657 (_ BitVec 32)) (zeroValue!2667 List!23706) (minValue!2667 List!23706) (_size!4869 (_ BitVec 32)) (_keys!2706 array!8295) (_values!2689 array!8297) (_vacant!2470 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9461 0))(
  ( (Cell!9462 (v!28149 LongMapFixedSize!4818)) )
))
(declare-datatypes ((Hashable!2323 0))(
  ( (HashableExt!2322 (__x!15403 Int)) )
))
(declare-datatypes ((MutLongMap!2409 0))(
  ( (LongMap!2409 (underlying!5013 Cell!9461)) (MutLongMapExt!2408 (__x!15404 Int)) )
))
(declare-datatypes ((Cell!9463 0))(
  ( (Cell!9464 (v!28150 MutLongMap!2409)) )
))
(declare-datatypes ((MutableMap!2323 0))(
  ( (MutableMapExt!2322 (__x!15405 Int)) (HashMap!2323 (underlying!5014 Cell!9463) (hashF!4246 Hashable!2323) (_size!4870 (_ BitVec 32)) (defaultValue!2485 Int)) )
))
(declare-datatypes ((CacheUp!1606 0))(
  ( (CacheUp!1607 (cache!2704 MutableMap!2323)) )
))
(declare-fun cacheUp!991 () CacheUp!1606)

(declare-fun mapDefault!11660 () List!23706)

(assert (=> b!2119364 (= condMapEmpty!11661 (= (arr!3680 (_values!2689 (v!28149 (underlying!5013 (v!28150 (underlying!5014 (cache!2704 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23706)) mapDefault!11660)))))

(declare-fun mapNonEmpty!11660 () Bool)

(declare-fun tp!647910 () Bool)

(declare-fun tp!647911 () Bool)

(assert (=> mapNonEmpty!11660 (= mapRes!11660 (and tp!647910 tp!647911))))

(declare-fun mapValue!11661 () List!23706)

(declare-fun mapRest!11661 () (Array (_ BitVec 32) List!23706))

(declare-fun mapKey!11661 () (_ BitVec 32))

(assert (=> mapNonEmpty!11660 (= (arr!3680 (_values!2689 (v!28149 (underlying!5013 (v!28150 (underlying!5014 (cache!2704 cacheUp!991))))))) (store mapRest!11661 mapKey!11661 mapValue!11661))))

(declare-fun b!2119365 () Bool)

(declare-fun e!1349305 () Bool)

(declare-fun lt!794479 () MutLongMap!2408)

(get-info :version)

(assert (=> b!2119365 (= e!1349305 (and e!1349315 ((_ is LongMap!2408) lt!794479)))))

(assert (=> b!2119365 (= lt!794479 (v!28148 (underlying!5012 (cache!2703 cacheFurthestNullable!130))))))

(declare-fun b!2119366 () Bool)

(declare-fun e!1349307 () Bool)

(assert (=> b!2119366 (= e!1349307 e!1349327)))

(declare-fun tp!647896 () Bool)

(declare-fun e!1349304 () Bool)

(declare-fun tp!647904 () Bool)

(declare-fun array_inv!2640 (array!8295) Bool)

(declare-fun array_inv!2641 (array!8297) Bool)

(assert (=> b!2119367 (= e!1349304 (and tp!647894 tp!647904 tp!647896 (array_inv!2640 (_keys!2706 (v!28149 (underlying!5013 (v!28150 (underlying!5014 (cache!2704 cacheUp!991))))))) (array_inv!2641 (_values!2689 (v!28149 (underlying!5013 (v!28150 (underlying!5014 (cache!2704 cacheUp!991))))))) e!1349316))))

(declare-fun b!2119368 () Bool)

(declare-fun e!1349325 () Bool)

(declare-fun e!1349313 () Bool)

(assert (=> b!2119368 (= e!1349325 e!1349313)))

(declare-fun b!2119360 () Bool)

(declare-fun res!918703 () Bool)

(declare-fun e!1349308 () Bool)

(assert (=> b!2119360 (=> (not res!918703) (not e!1349308))))

(declare-fun totalInput!886 () BalanceConc!15338)

(assert (=> b!2119360 (= res!918703 (= (totalInput!2883 cacheFurthestNullable!130) totalInput!886))))

(declare-fun res!918701 () Bool)

(assert (=> start!206910 (=> (not res!918701) (not e!1349308))))

(declare-fun input!5507 () BalanceConc!15338)

(declare-fun isSuffix!609 (List!23705 List!23705) Bool)

(declare-fun list!9515 (BalanceConc!15338) List!23705)

(assert (=> start!206910 (= res!918701 (isSuffix!609 (list!9515 input!5507) (list!9515 totalInput!886)))))

(assert (=> start!206910 e!1349308))

(declare-fun inv!31211 (CacheFurthestNullable!568) Bool)

(assert (=> start!206910 (and (inv!31211 cacheFurthestNullable!130) e!1349300)))

(declare-fun condSetEmpty!14614 () Bool)

(declare-fun z!3883 () (InoxSet Context!2438))

(assert (=> start!206910 (= condSetEmpty!14614 (= z!3883 ((as const (Array Context!2438 Bool)) false)))))

(declare-fun setRes!14614 () Bool)

(assert (=> start!206910 setRes!14614))

(declare-fun e!1349309 () Bool)

(assert (=> start!206910 (and (inv!31209 input!5507) e!1349309)))

(declare-datatypes ((tuple3!2834 0))(
  ( (tuple3!2835 (_1!13476 Regex!5649) (_2!13476 Context!2438) (_3!1887 C!11444)) )
))
(declare-datatypes ((tuple2!23178 0))(
  ( (tuple2!23179 (_1!13477 tuple3!2834) (_2!13477 (InoxSet Context!2438))) )
))
(declare-datatypes ((List!23707 0))(
  ( (Nil!23623) (Cons!23623 (h!29024 tuple2!23178) (t!196223 List!23707)) )
))
(declare-datatypes ((array!8299 0))(
  ( (array!8300 (arr!3681 (Array (_ BitVec 32) List!23707)) (size!18454 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4820 0))(
  ( (LongMapFixedSize!4821 (defaultEntry!2775 Int) (mask!6550 (_ BitVec 32)) (extraKeys!2658 (_ BitVec 32)) (zeroValue!2668 List!23707) (minValue!2668 List!23707) (_size!4871 (_ BitVec 32)) (_keys!2707 array!8295) (_values!2690 array!8299) (_vacant!2471 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9465 0))(
  ( (Cell!9466 (v!28151 LongMapFixedSize!4820)) )
))
(declare-datatypes ((MutLongMap!2410 0))(
  ( (LongMap!2410 (underlying!5015 Cell!9465)) (MutLongMapExt!2409 (__x!15406 Int)) )
))
(declare-datatypes ((Cell!9467 0))(
  ( (Cell!9468 (v!28152 MutLongMap!2410)) )
))
(declare-datatypes ((Hashable!2324 0))(
  ( (HashableExt!2323 (__x!15407 Int)) )
))
(declare-datatypes ((MutableMap!2324 0))(
  ( (MutableMapExt!2323 (__x!15408 Int)) (HashMap!2324 (underlying!5016 Cell!9467) (hashF!4247 Hashable!2324) (_size!4872 (_ BitVec 32)) (defaultValue!2486 Int)) )
))
(declare-datatypes ((CacheDown!1594 0))(
  ( (CacheDown!1595 (cache!2705 MutableMap!2324)) )
))
(declare-fun cacheDown!1110 () CacheDown!1594)

(declare-fun inv!31212 (CacheDown!1594) Bool)

(assert (=> start!206910 (and (inv!31212 cacheDown!1110) e!1349307)))

(declare-fun inv!31213 (CacheUp!1606) Bool)

(assert (=> start!206910 (and (inv!31213 cacheUp!991) e!1349325)))

(declare-fun e!1349320 () Bool)

(assert (=> start!206910 (and (inv!31209 totalInput!886) e!1349320)))

(declare-fun b!2119369 () Bool)

(declare-fun e!1349317 () Bool)

(declare-fun e!1349319 () Bool)

(assert (=> b!2119369 (= e!1349317 e!1349319)))

(declare-fun b!2119370 () Bool)

(declare-fun res!918702 () Bool)

(assert (=> b!2119370 (=> (not res!918702) (not e!1349308))))

(declare-fun valid!1899 (CacheFurthestNullable!568) Bool)

(assert (=> b!2119370 (= res!918702 (valid!1899 cacheFurthestNullable!130))))

(declare-fun b!2119371 () Bool)

(declare-fun res!918704 () Bool)

(assert (=> b!2119371 (=> (not res!918704) (not e!1349308))))

(declare-fun valid!1900 (CacheUp!1606) Bool)

(assert (=> b!2119371 (= res!918704 (valid!1900 cacheUp!991))))

(declare-fun b!2119372 () Bool)

(declare-fun lt!794476 () MutLongMap!2410)

(assert (=> b!2119372 (= e!1349302 (and e!1349317 ((_ is LongMap!2410) lt!794476)))))

(assert (=> b!2119372 (= lt!794476 (v!28152 (underlying!5016 (cache!2705 cacheDown!1110))))))

(declare-fun mapNonEmpty!11661 () Bool)

(declare-fun mapRes!11661 () Bool)

(declare-fun tp!647903 () Bool)

(declare-fun tp!647895 () Bool)

(assert (=> mapNonEmpty!11661 (= mapRes!11661 (and tp!647903 tp!647895))))

(declare-fun mapKey!11662 () (_ BitVec 32))

(declare-fun mapValue!11662 () List!23704)

(declare-fun mapRest!11660 () (Array (_ BitVec 32) List!23704))

(assert (=> mapNonEmpty!11661 (= (arr!3678 (_values!2688 (v!28147 (underlying!5011 (v!28148 (underlying!5012 (cache!2703 cacheFurthestNullable!130))))))) (store mapRest!11660 mapKey!11662 mapValue!11662))))

(declare-fun b!2119373 () Bool)

(assert (=> b!2119373 (= e!1349308 false)))

(declare-fun lt!794478 () Bool)

(declare-fun nullableZipper!55 ((InoxSet Context!2438)) Bool)

(assert (=> b!2119373 (= lt!794478 (nullableZipper!55 z!3883))))

(declare-fun lt!794481 () Int)

(declare-fun size!18455 (BalanceConc!15338) Int)

(assert (=> b!2119373 (= lt!794481 (size!18455 input!5507))))

(declare-fun lt!794480 () Int)

(assert (=> b!2119373 (= lt!794480 (size!18455 totalInput!886))))

(declare-fun b!2119374 () Bool)

(declare-fun e!1349299 () Bool)

(assert (=> b!2119374 (= e!1349318 e!1349299)))

(declare-fun e!1349323 () Bool)

(declare-fun tp!647893 () Bool)

(declare-fun e!1349311 () Bool)

(declare-fun tp!647887 () Bool)

(declare-fun array_inv!2642 (array!8299) Bool)

(assert (=> b!2119375 (= e!1349311 (and tp!647892 tp!647893 tp!647887 (array_inv!2640 (_keys!2707 (v!28151 (underlying!5015 (v!28152 (underlying!5016 (cache!2705 cacheDown!1110))))))) (array_inv!2642 (_values!2690 (v!28151 (underlying!5015 (v!28152 (underlying!5016 (cache!2705 cacheDown!1110))))))) e!1349323))))

(declare-fun b!2119376 () Bool)

(declare-fun e!1349324 () Bool)

(assert (=> b!2119376 (= e!1349324 e!1349304)))

(declare-fun e!1349306 () Bool)

(assert (=> b!2119377 (= e!1349313 (and e!1349306 tp!647912))))

(declare-fun b!2119378 () Bool)

(declare-fun e!1349314 () Bool)

(declare-fun lt!794477 () MutLongMap!2409)

(assert (=> b!2119378 (= e!1349306 (and e!1349314 ((_ is LongMap!2409) lt!794477)))))

(assert (=> b!2119378 (= lt!794477 (v!28150 (underlying!5014 (cache!2704 cacheUp!991))))))

(declare-fun b!2119379 () Bool)

(declare-fun e!1349321 () Bool)

(declare-fun tp!647888 () Bool)

(assert (=> b!2119379 (= e!1349321 tp!647888)))

(declare-fun b!2119380 () Bool)

(declare-fun tp!647907 () Bool)

(assert (=> b!2119380 (= e!1349320 (and (inv!31210 (c!339640 totalInput!886)) tp!647907))))

(declare-fun b!2119381 () Bool)

(declare-fun tp!647901 () Bool)

(assert (=> b!2119381 (= e!1349309 (and (inv!31210 (c!339640 input!5507)) tp!647901))))

(assert (=> b!2119382 (= e!1349312 (and e!1349305 tp!647897))))

(declare-fun e!1349326 () Bool)

(declare-fun tp!647909 () Bool)

(declare-fun tp!647905 () Bool)

(declare-fun array_inv!2643 (array!8293) Bool)

(assert (=> b!2119383 (= e!1349299 (and tp!647902 tp!647905 tp!647909 (array_inv!2640 (_keys!2705 (v!28147 (underlying!5011 (v!28148 (underlying!5012 (cache!2703 cacheFurthestNullable!130))))))) (array_inv!2643 (_values!2688 (v!28147 (underlying!5011 (v!28148 (underlying!5012 (cache!2703 cacheFurthestNullable!130))))))) e!1349326))))

(declare-fun mapIsEmpty!11660 () Bool)

(declare-fun mapRes!11662 () Bool)

(assert (=> mapIsEmpty!11660 mapRes!11662))

(declare-fun b!2119384 () Bool)

(declare-fun tp!647900 () Bool)

(assert (=> b!2119384 (= e!1349326 (and tp!647900 mapRes!11661))))

(declare-fun condMapEmpty!11662 () Bool)

(declare-fun mapDefault!11662 () List!23704)

(assert (=> b!2119384 (= condMapEmpty!11662 (= (arr!3678 (_values!2688 (v!28147 (underlying!5011 (v!28148 (underlying!5012 (cache!2703 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23704)) mapDefault!11662)))))

(declare-fun b!2119385 () Bool)

(declare-fun tp!647908 () Bool)

(assert (=> b!2119385 (= e!1349323 (and tp!647908 mapRes!11662))))

(declare-fun condMapEmpty!11660 () Bool)

(declare-fun mapDefault!11661 () List!23707)

(assert (=> b!2119385 (= condMapEmpty!11660 (= (arr!3681 (_values!2690 (v!28151 (underlying!5015 (v!28152 (underlying!5016 (cache!2705 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23707)) mapDefault!11661)))))

(declare-fun mapIsEmpty!11661 () Bool)

(assert (=> mapIsEmpty!11661 mapRes!11660))

(declare-fun b!2119386 () Bool)

(assert (=> b!2119386 (= e!1349319 e!1349311)))

(declare-fun b!2119387 () Bool)

(assert (=> b!2119387 (= e!1349314 e!1349324)))

(declare-fun setElem!14614 () Context!2438)

(declare-fun setNonEmpty!14614 () Bool)

(declare-fun tp!647898 () Bool)

(declare-fun inv!31214 (Context!2438) Bool)

(assert (=> setNonEmpty!14614 (= setRes!14614 (and tp!647898 (inv!31214 setElem!14614) e!1349321))))

(declare-fun setRest!14614 () (InoxSet Context!2438))

(assert (=> setNonEmpty!14614 (= z!3883 ((_ map or) (store ((as const (Array Context!2438 Bool)) false) setElem!14614 true) setRest!14614))))

(declare-fun mapIsEmpty!11662 () Bool)

(assert (=> mapIsEmpty!11662 mapRes!11661))

(declare-fun mapNonEmpty!11662 () Bool)

(declare-fun tp!647891 () Bool)

(declare-fun tp!647889 () Bool)

(assert (=> mapNonEmpty!11662 (= mapRes!11662 (and tp!647891 tp!647889))))

(declare-fun mapRest!11662 () (Array (_ BitVec 32) List!23707))

(declare-fun mapKey!11660 () (_ BitVec 32))

(declare-fun mapValue!11660 () List!23707)

(assert (=> mapNonEmpty!11662 (= (arr!3681 (_values!2690 (v!28151 (underlying!5015 (v!28152 (underlying!5016 (cache!2705 cacheDown!1110))))))) (store mapRest!11662 mapKey!11660 mapValue!11660))))

(declare-fun setIsEmpty!14614 () Bool)

(assert (=> setIsEmpty!14614 setRes!14614))

(declare-fun b!2119388 () Bool)

(declare-fun res!918705 () Bool)

(assert (=> b!2119388 (=> (not res!918705) (not e!1349308))))

(declare-fun valid!1901 (CacheDown!1594) Bool)

(assert (=> b!2119388 (= res!918705 (valid!1901 cacheDown!1110))))

(assert (= (and start!206910 res!918701) b!2119371))

(assert (= (and b!2119371 res!918704) b!2119388))

(assert (= (and b!2119388 res!918705) b!2119370))

(assert (= (and b!2119370 res!918702) b!2119360))

(assert (= (and b!2119360 res!918703) b!2119373))

(assert (= (and b!2119384 condMapEmpty!11662) mapIsEmpty!11662))

(assert (= (and b!2119384 (not condMapEmpty!11662)) mapNonEmpty!11661))

(assert (= b!2119383 b!2119384))

(assert (= b!2119374 b!2119383))

(assert (= b!2119361 b!2119374))

(assert (= (and b!2119365 ((_ is LongMap!2408) (v!28148 (underlying!5012 (cache!2703 cacheFurthestNullable!130))))) b!2119361))

(assert (= b!2119382 b!2119365))

(assert (= (and b!2119359 ((_ is HashMap!2322) (cache!2703 cacheFurthestNullable!130))) b!2119382))

(assert (= b!2119359 b!2119363))

(assert (= start!206910 b!2119359))

(assert (= (and start!206910 condSetEmpty!14614) setIsEmpty!14614))

(assert (= (and start!206910 (not condSetEmpty!14614)) setNonEmpty!14614))

(assert (= setNonEmpty!14614 b!2119379))

(assert (= start!206910 b!2119381))

(assert (= (and b!2119385 condMapEmpty!11660) mapIsEmpty!11660))

(assert (= (and b!2119385 (not condMapEmpty!11660)) mapNonEmpty!11662))

(assert (= b!2119375 b!2119385))

(assert (= b!2119386 b!2119375))

(assert (= b!2119369 b!2119386))

(assert (= (and b!2119372 ((_ is LongMap!2410) (v!28152 (underlying!5016 (cache!2705 cacheDown!1110))))) b!2119369))

(assert (= b!2119362 b!2119372))

(assert (= (and b!2119366 ((_ is HashMap!2324) (cache!2705 cacheDown!1110))) b!2119362))

(assert (= start!206910 b!2119366))

(assert (= (and b!2119364 condMapEmpty!11661) mapIsEmpty!11661))

(assert (= (and b!2119364 (not condMapEmpty!11661)) mapNonEmpty!11660))

(assert (= b!2119367 b!2119364))

(assert (= b!2119376 b!2119367))

(assert (= b!2119387 b!2119376))

(assert (= (and b!2119378 ((_ is LongMap!2409) (v!28150 (underlying!5014 (cache!2704 cacheUp!991))))) b!2119387))

(assert (= b!2119377 b!2119378))

(assert (= (and b!2119368 ((_ is HashMap!2323) (cache!2704 cacheUp!991))) b!2119377))

(assert (= start!206910 b!2119368))

(assert (= start!206910 b!2119380))

(declare-fun m!2574011 () Bool)

(assert (=> b!2119381 m!2574011))

(declare-fun m!2574013 () Bool)

(assert (=> b!2119359 m!2574013))

(declare-fun m!2574015 () Bool)

(assert (=> mapNonEmpty!11660 m!2574015))

(declare-fun m!2574017 () Bool)

(assert (=> mapNonEmpty!11661 m!2574017))

(declare-fun m!2574019 () Bool)

(assert (=> b!2119363 m!2574019))

(declare-fun m!2574021 () Bool)

(assert (=> b!2119388 m!2574021))

(declare-fun m!2574023 () Bool)

(assert (=> b!2119367 m!2574023))

(declare-fun m!2574025 () Bool)

(assert (=> b!2119367 m!2574025))

(declare-fun m!2574027 () Bool)

(assert (=> b!2119383 m!2574027))

(declare-fun m!2574029 () Bool)

(assert (=> b!2119383 m!2574029))

(declare-fun m!2574031 () Bool)

(assert (=> b!2119370 m!2574031))

(declare-fun m!2574033 () Bool)

(assert (=> b!2119373 m!2574033))

(declare-fun m!2574035 () Bool)

(assert (=> b!2119373 m!2574035))

(declare-fun m!2574037 () Bool)

(assert (=> b!2119373 m!2574037))

(declare-fun m!2574039 () Bool)

(assert (=> setNonEmpty!14614 m!2574039))

(declare-fun m!2574041 () Bool)

(assert (=> mapNonEmpty!11662 m!2574041))

(declare-fun m!2574043 () Bool)

(assert (=> b!2119375 m!2574043))

(declare-fun m!2574045 () Bool)

(assert (=> b!2119375 m!2574045))

(declare-fun m!2574047 () Bool)

(assert (=> b!2119371 m!2574047))

(declare-fun m!2574049 () Bool)

(assert (=> b!2119380 m!2574049))

(declare-fun m!2574051 () Bool)

(assert (=> start!206910 m!2574051))

(declare-fun m!2574053 () Bool)

(assert (=> start!206910 m!2574053))

(declare-fun m!2574055 () Bool)

(assert (=> start!206910 m!2574055))

(declare-fun m!2574057 () Bool)

(assert (=> start!206910 m!2574057))

(declare-fun m!2574059 () Bool)

(assert (=> start!206910 m!2574059))

(declare-fun m!2574061 () Bool)

(assert (=> start!206910 m!2574061))

(assert (=> start!206910 m!2574057))

(assert (=> start!206910 m!2574051))

(declare-fun m!2574063 () Bool)

(assert (=> start!206910 m!2574063))

(declare-fun m!2574065 () Bool)

(assert (=> start!206910 m!2574065))

(check-sat (not mapNonEmpty!11660) (not b_next!62159) b_and!171027 (not b_next!62157) (not b!2119375) (not b_next!62149) (not b!2119388) (not b!2119370) b_and!171029 b_and!171033 b_and!171035 (not setNonEmpty!14614) (not mapNonEmpty!11662) (not b_next!62153) (not b!2119363) (not b!2119384) (not b!2119371) (not b!2119373) b_and!171025 (not b_next!62155) (not b_next!62151) (not b!2119367) (not b!2119385) (not b!2119380) (not b!2119379) (not b!2119383) (not b!2119364) b_and!171031 (not mapNonEmpty!11661) (not b!2119359) (not b!2119381) (not start!206910))
(check-sat (not b_next!62159) b_and!171027 (not b_next!62153) (not b_next!62157) (not b_next!62151) (not b_next!62149) b_and!171031 b_and!171029 b_and!171033 b_and!171035 b_and!171025 (not b_next!62155))
