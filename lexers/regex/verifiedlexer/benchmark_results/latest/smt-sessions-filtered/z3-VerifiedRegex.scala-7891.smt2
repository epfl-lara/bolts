; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412232 () Bool)

(assert start!412232)

(declare-fun b!4294096 () Bool)

(declare-fun b_free!127687 () Bool)

(declare-fun b_next!128391 () Bool)

(assert (=> b!4294096 (= b_free!127687 (not b_next!128391))))

(declare-fun tp!1318100 () Bool)

(declare-fun b_and!338903 () Bool)

(assert (=> b!4294096 (= tp!1318100 b_and!338903)))

(declare-fun b!4294101 () Bool)

(declare-fun b_free!127689 () Bool)

(declare-fun b_next!128393 () Bool)

(assert (=> b!4294101 (= b_free!127689 (not b_next!128393))))

(declare-fun tp!1318095 () Bool)

(declare-fun b_and!338905 () Bool)

(assert (=> b!4294101 (= tp!1318095 b_and!338905)))

(declare-fun b!4294090 () Bool)

(declare-fun e!2668277 () Bool)

(declare-fun e!2668280 () Bool)

(assert (=> b!4294090 (= e!2668277 e!2668280)))

(declare-fun res!1760380 () Bool)

(assert (=> b!4294090 (=> (not res!1760380) (not e!2668280))))

(declare-datatypes ((C!26160 0))(
  ( (C!26161 (val!15406 Int)) )
))
(declare-datatypes ((Regex!12981 0))(
  ( (ElementMatch!12981 (c!730706 C!26160)) (Concat!21300 (regOne!26474 Regex!12981) (regTwo!26474 Regex!12981)) (EmptyExpr!12981) (Star!12981 (reg!13310 Regex!12981)) (EmptyLang!12981) (Union!12981 (regOne!26475 Regex!12981) (regTwo!26475 Regex!12981)) )
))
(declare-datatypes ((List!47925 0))(
  ( (Nil!47801) (Cons!47801 (h!53221 Regex!12981) (t!354529 List!47925)) )
))
(declare-datatypes ((Context!5742 0))(
  ( (Context!5743 (exprs!3371 List!47925)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45546 0))(
  ( (tuple2!45547 (_1!26044 (InoxSet Context!5742)) (_2!26044 Int)) )
))
(declare-datatypes ((Hashable!4375 0))(
  ( (HashableExt!4374 (__x!29402 Int)) )
))
(declare-datatypes ((array!15902 0))(
  ( (array!15903 (arr!7107 (Array (_ BitVec 32) (_ BitVec 64))) (size!35108 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45548 0))(
  ( (tuple2!45549 (_1!26045 tuple2!45546) (_2!26045 Int)) )
))
(declare-datatypes ((List!47926 0))(
  ( (Nil!47802) (Cons!47802 (h!53222 tuple2!45548) (t!354530 List!47926)) )
))
(declare-datatypes ((array!15904 0))(
  ( (array!15905 (arr!7108 (Array (_ BitVec 32) List!47926)) (size!35109 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8918 0))(
  ( (LongMapFixedSize!8919 (defaultEntry!4844 Int) (mask!12919 (_ BitVec 32)) (extraKeys!4708 (_ BitVec 32)) (zeroValue!4718 List!47926) (minValue!4718 List!47926) (_size!8961 (_ BitVec 32)) (_keys!4759 array!15902) (_values!4740 array!15904) (_vacant!4520 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17645 0))(
  ( (Cell!17646 (v!41745 LongMapFixedSize!8918)) )
))
(declare-datatypes ((MutLongMap!4459 0))(
  ( (LongMap!4459 (underlying!9147 Cell!17645)) (MutLongMapExt!4458 (__x!29403 Int)) )
))
(declare-datatypes ((Cell!17647 0))(
  ( (Cell!17648 (v!41746 MutLongMap!4459)) )
))
(declare-datatypes ((MutableMap!4365 0))(
  ( (MutableMapExt!4364 (__x!29404 Int)) (HashMap!4365 (underlying!9148 Cell!17647) (hashF!6407 Hashable!4375) (_size!8962 (_ BitVec 32)) (defaultValue!4536 Int)) )
))
(declare-datatypes ((List!47927 0))(
  ( (Nil!47803) (Cons!47803 (h!53223 C!26160) (t!354531 List!47927)) )
))
(declare-datatypes ((IArray!28905 0))(
  ( (IArray!28906 (innerList!14510 List!47927)) )
))
(declare-datatypes ((Conc!14422 0))(
  ( (Node!14422 (left!35453 Conc!14422) (right!35783 Conc!14422) (csize!29074 Int) (cheight!14633 Int)) (Leaf!22314 (xs!17728 IArray!28905) (csize!29075 Int)) (Empty!14422) )
))
(declare-datatypes ((BalanceConc!28334 0))(
  ( (BalanceConc!28335 (c!730707 Conc!14422)) )
))
(declare-datatypes ((CacheFindLongestMatch!532 0))(
  ( (CacheFindLongestMatch!533 (cache!4505 MutableMap!4365) (totalInput!4390 BalanceConc!28334)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!532)

(declare-fun lt!1517648 () Int)

(declare-fun from!999 () Int)

(declare-fun totalInput!812 () BalanceConc!28334)

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4294090 (= res!1760380 (and (<= from!999 lt!1517648) (= totalInputSize!257 lt!1517648) (= (totalInput!4390 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35110 (BalanceConc!28334) Int)

(assert (=> b!4294090 (= lt!1517648 (size!35110 totalInput!812))))

(declare-fun b!4294091 () Bool)

(declare-fun e!2668279 () Bool)

(declare-fun e!2668286 () Bool)

(assert (=> b!4294091 (= e!2668279 e!2668286)))

(declare-fun b!4294092 () Bool)

(declare-fun e!2668276 () Bool)

(declare-fun tp!1318091 () Bool)

(assert (=> b!4294092 (= e!2668276 tp!1318091)))

(declare-fun b!4294093 () Bool)

(declare-fun e!2668278 () Bool)

(declare-fun tp!1318097 () Bool)

(declare-fun inv!63330 (Conc!14422) Bool)

(assert (=> b!4294093 (= e!2668278 (and (inv!63330 (c!730707 totalInput!812)) tp!1318097))))

(declare-fun b!4294094 () Bool)

(declare-fun e!2668285 () Bool)

(declare-fun tp!1318096 () Bool)

(assert (=> b!4294094 (= e!2668285 (and (inv!63330 (c!730707 (totalInput!4390 cacheFindLongestMatch!183))) tp!1318096))))

(declare-fun setIsEmpty!26598 () Bool)

(declare-fun setRes!26598 () Bool)

(assert (=> setIsEmpty!26598 setRes!26598))

(declare-fun setElem!26598 () Context!5742)

(declare-fun tp!1318094 () Bool)

(declare-fun setNonEmpty!26598 () Bool)

(declare-fun inv!63331 (Context!5742) Bool)

(assert (=> setNonEmpty!26598 (= setRes!26598 (and tp!1318094 (inv!63331 setElem!26598) e!2668276))))

(declare-fun z!3765 () (InoxSet Context!5742))

(declare-fun setRest!26598 () (InoxSet Context!5742))

(assert (=> setNonEmpty!26598 (= z!3765 ((_ map or) (store ((as const (Array Context!5742 Bool)) false) setElem!26598 true) setRest!26598))))

(declare-fun mapIsEmpty!20028 () Bool)

(declare-fun mapRes!20028 () Bool)

(assert (=> mapIsEmpty!20028 mapRes!20028))

(declare-fun b!4294095 () Bool)

(declare-fun e!2668274 () Bool)

(assert (=> b!4294095 (= e!2668274 e!2668279)))

(declare-fun e!2668284 () Bool)

(declare-fun e!2668282 () Bool)

(assert (=> b!4294096 (= e!2668284 (and e!2668282 tp!1318100))))

(declare-fun b!4294097 () Bool)

(declare-fun e!2668275 () Bool)

(declare-fun tp!1318099 () Bool)

(assert (=> b!4294097 (= e!2668275 (and tp!1318099 mapRes!20028))))

(declare-fun condMapEmpty!20028 () Bool)

(declare-fun mapDefault!20028 () List!47926)

(assert (=> b!4294097 (= condMapEmpty!20028 (= (arr!7108 (_values!4740 (v!41745 (underlying!9147 (v!41746 (underlying!9148 (cache!4505 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47926)) mapDefault!20028)))))

(declare-fun mapNonEmpty!20028 () Bool)

(declare-fun tp!1318101 () Bool)

(declare-fun tp!1318098 () Bool)

(assert (=> mapNonEmpty!20028 (= mapRes!20028 (and tp!1318101 tp!1318098))))

(declare-fun mapValue!20028 () List!47926)

(declare-fun mapKey!20028 () (_ BitVec 32))

(declare-fun mapRest!20028 () (Array (_ BitVec 32) List!47926))

(assert (=> mapNonEmpty!20028 (= (arr!7108 (_values!4740 (v!41745 (underlying!9147 (v!41746 (underlying!9148 (cache!4505 cacheFindLongestMatch!183))))))) (store mapRest!20028 mapKey!20028 mapValue!20028))))

(declare-fun res!1760381 () Bool)

(assert (=> start!412232 (=> (not res!1760381) (not e!2668277))))

(assert (=> start!412232 (= res!1760381 (>= from!999 0))))

(assert (=> start!412232 e!2668277))

(declare-fun e!2668281 () Bool)

(declare-fun inv!63332 (CacheFindLongestMatch!532) Bool)

(assert (=> start!412232 (and (inv!63332 cacheFindLongestMatch!183) e!2668281)))

(declare-fun condSetEmpty!26598 () Bool)

(assert (=> start!412232 (= condSetEmpty!26598 (= z!3765 ((as const (Array Context!5742 Bool)) false)))))

(assert (=> start!412232 setRes!26598))

(assert (=> start!412232 true))

(declare-fun inv!63333 (BalanceConc!28334) Bool)

(assert (=> start!412232 (and (inv!63333 totalInput!812) e!2668278)))

(declare-fun b!4294098 () Bool)

(assert (=> b!4294098 (= e!2668281 (and e!2668284 (inv!63333 (totalInput!4390 cacheFindLongestMatch!183)) e!2668285))))

(declare-fun b!4294099 () Bool)

(assert (=> b!4294099 (= e!2668280 false)))

(declare-datatypes ((Option!10147 0))(
  ( (None!10146) (Some!10146 (v!41747 Int)) )
))
(declare-fun lt!1517647 () Option!10147)

(declare-fun get!15469 (CacheFindLongestMatch!532 (InoxSet Context!5742) Int) Option!10147)

(assert (=> b!4294099 (= lt!1517647 (get!15469 cacheFindLongestMatch!183 z!3765 from!999))))

(declare-fun b!4294100 () Bool)

(declare-fun lt!1517646 () MutLongMap!4459)

(get-info :version)

(assert (=> b!4294100 (= e!2668282 (and e!2668274 ((_ is LongMap!4459) lt!1517646)))))

(assert (=> b!4294100 (= lt!1517646 (v!41746 (underlying!9148 (cache!4505 cacheFindLongestMatch!183))))))

(declare-fun tp!1318093 () Bool)

(declare-fun tp!1318092 () Bool)

(declare-fun array_inv!5093 (array!15902) Bool)

(declare-fun array_inv!5094 (array!15904) Bool)

(assert (=> b!4294101 (= e!2668286 (and tp!1318095 tp!1318093 tp!1318092 (array_inv!5093 (_keys!4759 (v!41745 (underlying!9147 (v!41746 (underlying!9148 (cache!4505 cacheFindLongestMatch!183))))))) (array_inv!5094 (_values!4740 (v!41745 (underlying!9147 (v!41746 (underlying!9148 (cache!4505 cacheFindLongestMatch!183))))))) e!2668275))))

(assert (= (and start!412232 res!1760381) b!4294090))

(assert (= (and b!4294090 res!1760380) b!4294099))

(assert (= (and b!4294097 condMapEmpty!20028) mapIsEmpty!20028))

(assert (= (and b!4294097 (not condMapEmpty!20028)) mapNonEmpty!20028))

(assert (= b!4294101 b!4294097))

(assert (= b!4294091 b!4294101))

(assert (= b!4294095 b!4294091))

(assert (= (and b!4294100 ((_ is LongMap!4459) (v!41746 (underlying!9148 (cache!4505 cacheFindLongestMatch!183))))) b!4294095))

(assert (= b!4294096 b!4294100))

(assert (= (and b!4294098 ((_ is HashMap!4365) (cache!4505 cacheFindLongestMatch!183))) b!4294096))

(assert (= b!4294098 b!4294094))

(assert (= start!412232 b!4294098))

(assert (= (and start!412232 condSetEmpty!26598) setIsEmpty!26598))

(assert (= (and start!412232 (not condSetEmpty!26598)) setNonEmpty!26598))

(assert (= setNonEmpty!26598 b!4294092))

(assert (= start!412232 b!4294093))

(declare-fun m!4886898 () Bool)

(assert (=> mapNonEmpty!20028 m!4886898))

(declare-fun m!4886900 () Bool)

(assert (=> b!4294101 m!4886900))

(declare-fun m!4886902 () Bool)

(assert (=> b!4294101 m!4886902))

(declare-fun m!4886904 () Bool)

(assert (=> b!4294094 m!4886904))

(declare-fun m!4886906 () Bool)

(assert (=> start!412232 m!4886906))

(declare-fun m!4886908 () Bool)

(assert (=> start!412232 m!4886908))

(declare-fun m!4886910 () Bool)

(assert (=> setNonEmpty!26598 m!4886910))

(declare-fun m!4886912 () Bool)

(assert (=> b!4294099 m!4886912))

(declare-fun m!4886914 () Bool)

(assert (=> b!4294093 m!4886914))

(declare-fun m!4886916 () Bool)

(assert (=> b!4294090 m!4886916))

(declare-fun m!4886918 () Bool)

(assert (=> b!4294098 m!4886918))

(check-sat (not mapNonEmpty!20028) b_and!338905 (not b!4294094) (not b!4294099) (not b!4294090) b_and!338903 (not b_next!128393) (not b!4294097) (not b!4294092) (not setNonEmpty!26598) (not b_next!128391) (not b!4294098) (not b!4294093) (not b!4294101) (not start!412232))
(check-sat b_and!338903 b_and!338905 (not b_next!128393) (not b_next!128391))
