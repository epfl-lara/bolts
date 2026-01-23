; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14428 () Bool)

(assert start!14428)

(declare-fun b!137261 () Bool)

(declare-fun b_free!4013 () Bool)

(declare-fun b_next!4013 () Bool)

(assert (=> b!137261 (= b_free!4013 (not b_next!4013))))

(declare-fun tp!71573 () Bool)

(declare-fun b_and!6165 () Bool)

(assert (=> b!137261 (= tp!71573 b_and!6165)))

(declare-fun b!137260 () Bool)

(declare-fun b_free!4015 () Bool)

(declare-fun b_next!4015 () Bool)

(assert (=> b!137260 (= b_free!4015 (not b_next!4015))))

(declare-fun tp!71572 () Bool)

(declare-fun b_and!6167 () Bool)

(assert (=> b!137260 (= tp!71572 b_and!6167)))

(declare-fun b!137254 () Bool)

(declare-fun e!79975 () Bool)

(declare-fun e!79979 () Bool)

(assert (=> b!137254 (= e!79975 e!79979)))

(declare-fun b!137255 () Bool)

(declare-fun e!79980 () Bool)

(declare-fun tp!71576 () Bool)

(declare-fun mapRes!1748 () Bool)

(assert (=> b!137255 (= e!79980 (and tp!71576 mapRes!1748))))

(declare-fun condMapEmpty!1748 () Bool)

(declare-datatypes ((array!1707 0))(
  ( (array!1708 (arr!790 (Array (_ BitVec 32) (_ BitVec 64))) (size!2044 (_ BitVec 32))) )
))
(declare-datatypes ((C!2104 0))(
  ( (C!2105 (val!938 Int)) )
))
(declare-datatypes ((Regex!591 0))(
  ( (ElementMatch!591 (c!29032 C!2104)) (Concat!987 (regOne!1694 Regex!591) (regTwo!1694 Regex!591)) (EmptyExpr!591) (Star!591 (reg!920 Regex!591)) (EmptyLang!591) (Union!591 (regOne!1695 Regex!591) (regTwo!1695 Regex!591)) )
))
(declare-datatypes ((List!2271 0))(
  ( (Nil!2261) (Cons!2261 (h!7658 Regex!591) (t!22857 List!2271)) )
))
(declare-datatypes ((Context!262 0))(
  ( (Context!263 (exprs!631 List!2271)) )
))
(declare-datatypes ((tuple2!2452 0))(
  ( (tuple2!2453 (_1!1436 Context!262) (_2!1436 C!2104)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!2454 0))(
  ( (tuple2!2455 (_1!1437 tuple2!2452) (_2!1437 (InoxSet Context!262))) )
))
(declare-datatypes ((List!2272 0))(
  ( (Nil!2262) (Cons!2262 (h!7659 tuple2!2454) (t!22858 List!2272)) )
))
(declare-datatypes ((array!1709 0))(
  ( (array!1710 (arr!791 (Array (_ BitVec 32) List!2272)) (size!2045 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!906 0))(
  ( (LongMapFixedSize!907 (defaultEntry!800 Int) (mask!1500 (_ BitVec 32)) (extraKeys!699 (_ BitVec 32)) (zeroValue!709 List!2272) (minValue!709 List!2272) (_size!1023 (_ BitVec 32)) (_keys!744 array!1707) (_values!731 array!1709) (_vacant!514 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1769 0))(
  ( (Cell!1770 (v!13506 LongMapFixedSize!906)) )
))
(declare-datatypes ((MutLongMap!453 0))(
  ( (LongMap!453 (underlying!1093 Cell!1769)) (MutLongMapExt!452 (__x!2264 Int)) )
))
(declare-datatypes ((Cell!1771 0))(
  ( (Cell!1772 (v!13507 MutLongMap!453)) )
))
(declare-datatypes ((Hashable!433 0))(
  ( (HashableExt!432 (__x!2265 Int)) )
))
(declare-datatypes ((MutableMap!433 0))(
  ( (MutableMapExt!432 (__x!2266 Int)) (HashMap!433 (underlying!1094 Cell!1771) (hashF!2309 Hashable!433) (_size!1024 (_ BitVec 32)) (defaultValue!582 Int)) )
))
(declare-datatypes ((CacheUp!194 0))(
  ( (CacheUp!195 (cache!886 MutableMap!433)) )
))
(declare-fun thiss!28652 () CacheUp!194)

(declare-fun mapDefault!1748 () List!2272)

(assert (=> b!137255 (= condMapEmpty!1748 (= (arr!791 (_values!731 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) ((as const (Array (_ BitVec 32) List!2272)) mapDefault!1748)))))

(declare-fun b!137256 () Bool)

(declare-fun e!79981 () Bool)

(declare-fun lt!41014 () MutLongMap!453)

(get-info :version)

(assert (=> b!137256 (= e!79981 (and e!79975 ((_ is LongMap!453) lt!41014)))))

(assert (=> b!137256 (= lt!41014 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))

(declare-fun b!137257 () Bool)

(declare-fun e!79982 () Bool)

(declare-fun e!79978 () Bool)

(assert (=> b!137257 (= e!79982 e!79978)))

(declare-fun b!137258 () Bool)

(declare-fun e!79974 () Bool)

(declare-fun valid!408 (MutableMap!433) Bool)

(assert (=> b!137258 (= e!79974 (not (valid!408 (cache!886 thiss!28652))))))

(declare-fun b!137259 () Bool)

(declare-fun res!64280 () Bool)

(assert (=> b!137259 (=> (not res!64280) (not e!79974))))

(assert (=> b!137259 (= res!64280 ((_ is HashMap!433) (cache!886 thiss!28652)))))

(assert (=> b!137260 (= e!79978 (and e!79981 tp!71572))))

(declare-fun mapIsEmpty!1748 () Bool)

(assert (=> mapIsEmpty!1748 mapRes!1748))

(declare-fun tp!71575 () Bool)

(declare-fun e!79977 () Bool)

(declare-fun tp!71577 () Bool)

(declare-fun array_inv!571 (array!1707) Bool)

(declare-fun array_inv!572 (array!1709) Bool)

(assert (=> b!137261 (= e!79977 (and tp!71573 tp!71577 tp!71575 (array_inv!571 (_keys!744 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) (array_inv!572 (_values!731 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) e!79980))))

(declare-fun b!137262 () Bool)

(assert (=> b!137262 (= e!79979 e!79977)))

(declare-fun mapNonEmpty!1748 () Bool)

(declare-fun tp!71574 () Bool)

(declare-fun tp!71578 () Bool)

(assert (=> mapNonEmpty!1748 (= mapRes!1748 (and tp!71574 tp!71578))))

(declare-fun mapValue!1748 () List!2272)

(declare-fun mapKey!1748 () (_ BitVec 32))

(declare-fun mapRest!1748 () (Array (_ BitVec 32) List!2272))

(assert (=> mapNonEmpty!1748 (= (arr!791 (_values!731 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) (store mapRest!1748 mapKey!1748 mapValue!1748))))

(declare-fun res!64279 () Bool)

(assert (=> start!14428 (=> (not res!64279) (not e!79974))))

(declare-fun validCacheMapUp!30 (MutableMap!433) Bool)

(assert (=> start!14428 (= res!64279 (validCacheMapUp!30 (cache!886 thiss!28652)))))

(assert (=> start!14428 e!79974))

(declare-fun inv!2993 (CacheUp!194) Bool)

(assert (=> start!14428 (and (inv!2993 thiss!28652) e!79982)))

(assert (= (and start!14428 res!64279) b!137259))

(assert (= (and b!137259 res!64280) b!137258))

(assert (= (and b!137255 condMapEmpty!1748) mapIsEmpty!1748))

(assert (= (and b!137255 (not condMapEmpty!1748)) mapNonEmpty!1748))

(assert (= b!137261 b!137255))

(assert (= b!137262 b!137261))

(assert (= b!137254 b!137262))

(assert (= (and b!137256 ((_ is LongMap!453) (v!13507 (underlying!1094 (cache!886 thiss!28652))))) b!137254))

(assert (= b!137260 b!137256))

(assert (= (and b!137257 ((_ is HashMap!433) (cache!886 thiss!28652))) b!137260))

(assert (= start!14428 b!137257))

(declare-fun m!121540 () Bool)

(assert (=> b!137258 m!121540))

(declare-fun m!121542 () Bool)

(assert (=> b!137261 m!121542))

(declare-fun m!121544 () Bool)

(assert (=> b!137261 m!121544))

(declare-fun m!121546 () Bool)

(assert (=> mapNonEmpty!1748 m!121546))

(declare-fun m!121548 () Bool)

(assert (=> start!14428 m!121548))

(declare-fun m!121550 () Bool)

(assert (=> start!14428 m!121550))

(check-sat (not b!137255) (not start!14428) (not b!137258) (not b_next!4013) (not b!137261) b_and!6167 b_and!6165 (not mapNonEmpty!1748) (not b_next!4015))
(check-sat b_and!6165 b_and!6167 (not b_next!4015) (not b_next!4013))
(get-model)

(declare-fun d!32881 () Bool)

(declare-fun res!64285 () Bool)

(declare-fun e!79985 () Bool)

(assert (=> d!32881 (=> (not res!64285) (not e!79985))))

(assert (=> d!32881 (= res!64285 (valid!408 (cache!886 thiss!28652)))))

(assert (=> d!32881 (= (validCacheMapUp!30 (cache!886 thiss!28652)) e!79985)))

(declare-fun b!137267 () Bool)

(declare-fun res!64286 () Bool)

(assert (=> b!137267 (=> (not res!64286) (not e!79985))))

(declare-fun invariantList!37 (List!2272) Bool)

(declare-datatypes ((ListMap!97 0))(
  ( (ListMap!98 (toList!296 List!2272)) )
))
(declare-fun map!601 (MutableMap!433) ListMap!97)

(assert (=> b!137267 (= res!64286 (invariantList!37 (toList!296 (map!601 (cache!886 thiss!28652)))))))

(declare-fun b!137268 () Bool)

(declare-fun lambda!3308 () Int)

(declare-fun forall!350 (List!2272 Int) Bool)

(assert (=> b!137268 (= e!79985 (forall!350 (toList!296 (map!601 (cache!886 thiss!28652))) lambda!3308))))

(assert (= (and d!32881 res!64285) b!137267))

(assert (= (and b!137267 res!64286) b!137268))

(assert (=> d!32881 m!121540))

(declare-fun m!121553 () Bool)

(assert (=> b!137267 m!121553))

(declare-fun m!121555 () Bool)

(assert (=> b!137267 m!121555))

(assert (=> b!137268 m!121553))

(declare-fun m!121557 () Bool)

(assert (=> b!137268 m!121557))

(assert (=> start!14428 d!32881))

(declare-fun d!32883 () Bool)

(declare-fun res!64289 () Bool)

(declare-fun e!79988 () Bool)

(assert (=> d!32883 (=> (not res!64289) (not e!79988))))

(assert (=> d!32883 (= res!64289 ((_ is HashMap!433) (cache!886 thiss!28652)))))

(assert (=> d!32883 (= (inv!2993 thiss!28652) e!79988)))

(declare-fun b!137271 () Bool)

(assert (=> b!137271 (= e!79988 (validCacheMapUp!30 (cache!886 thiss!28652)))))

(assert (= (and d!32883 res!64289) b!137271))

(assert (=> b!137271 m!121548))

(assert (=> start!14428 d!32883))

(declare-fun d!32885 () Bool)

(assert (=> d!32885 (= (array_inv!571 (_keys!744 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) (bvsge (size!2044 (_keys!744 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) #b00000000000000000000000000000000))))

(assert (=> b!137261 d!32885))

(declare-fun d!32887 () Bool)

(assert (=> d!32887 (= (array_inv!572 (_values!731 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) (bvsge (size!2045 (_values!731 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652))))))) #b00000000000000000000000000000000))))

(assert (=> b!137261 d!32887))

(declare-fun d!32889 () Bool)

(declare-fun res!64294 () Bool)

(declare-fun e!79991 () Bool)

(assert (=> d!32889 (=> (not res!64294) (not e!79991))))

(declare-fun valid!409 (MutLongMap!453) Bool)

(assert (=> d!32889 (= res!64294 (valid!409 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))

(assert (=> d!32889 (= (valid!408 (cache!886 thiss!28652)) e!79991)))

(declare-fun b!137276 () Bool)

(declare-fun res!64295 () Bool)

(assert (=> b!137276 (=> (not res!64295) (not e!79991))))

(declare-fun lambda!3311 () Int)

(declare-datatypes ((tuple2!2456 0))(
  ( (tuple2!2457 (_1!1438 (_ BitVec 64)) (_2!1438 List!2272)) )
))
(declare-datatypes ((List!2273 0))(
  ( (Nil!2263) (Cons!2263 (h!7660 tuple2!2456) (t!22859 List!2273)) )
))
(declare-fun forall!351 (List!2273 Int) Bool)

(declare-datatypes ((ListLongMap!43 0))(
  ( (ListLongMap!44 (toList!297 List!2273)) )
))
(declare-fun map!602 (MutLongMap!453) ListLongMap!43)

(assert (=> b!137276 (= res!64295 (forall!351 (toList!297 (map!602 (v!13507 (underlying!1094 (cache!886 thiss!28652))))) lambda!3311))))

(declare-fun b!137277 () Bool)

(declare-fun allKeysSameHashInMap!13 (ListLongMap!43 Hashable!433) Bool)

(assert (=> b!137277 (= e!79991 (allKeysSameHashInMap!13 (map!602 (v!13507 (underlying!1094 (cache!886 thiss!28652)))) (hashF!2309 (cache!886 thiss!28652))))))

(assert (= (and d!32889 res!64294) b!137276))

(assert (= (and b!137276 res!64295) b!137277))

(declare-fun m!121559 () Bool)

(assert (=> d!32889 m!121559))

(declare-fun m!121561 () Bool)

(assert (=> b!137276 m!121561))

(declare-fun m!121563 () Bool)

(assert (=> b!137276 m!121563))

(assert (=> b!137277 m!121561))

(assert (=> b!137277 m!121561))

(declare-fun m!121565 () Bool)

(assert (=> b!137277 m!121565))

(assert (=> b!137258 d!32889))

(declare-fun setIsEmpty!1763 () Bool)

(declare-fun setRes!1764 () Bool)

(assert (=> setIsEmpty!1763 setRes!1764))

(declare-fun setElem!1764 () Context!262)

(declare-fun tp!71604 () Bool)

(declare-fun e!80005 () Bool)

(declare-fun setNonEmpty!1763 () Bool)

(declare-fun inv!2994 (Context!262) Bool)

(assert (=> setNonEmpty!1763 (= setRes!1764 (and tp!71604 (inv!2994 setElem!1764) e!80005))))

(declare-fun mapDefault!1751 () List!2272)

(declare-fun setRest!1763 () (InoxSet Context!262))

(assert (=> setNonEmpty!1763 (= (_2!1437 (h!7659 mapDefault!1751)) ((_ map or) (store ((as const (Array Context!262 Bool)) false) setElem!1764 true) setRest!1763))))

(declare-fun mapIsEmpty!1751 () Bool)

(declare-fun mapRes!1751 () Bool)

(assert (=> mapIsEmpty!1751 mapRes!1751))

(declare-fun e!80004 () Bool)

(declare-fun tp!71601 () Bool)

(declare-fun tp_is_empty!1543 () Bool)

(declare-fun e!80007 () Bool)

(declare-fun b!137292 () Bool)

(assert (=> b!137292 (= e!80007 (and (inv!2994 (_1!1436 (_1!1437 (h!7659 mapDefault!1751)))) e!80004 tp_is_empty!1543 setRes!1764 tp!71601))))

(declare-fun condSetEmpty!1763 () Bool)

(assert (=> b!137292 (= condSetEmpty!1763 (= (_2!1437 (h!7659 mapDefault!1751)) ((as const (Array Context!262 Bool)) false)))))

(declare-fun setElem!1763 () Context!262)

(declare-fun setNonEmpty!1764 () Bool)

(declare-fun e!80009 () Bool)

(declare-fun setRes!1763 () Bool)

(declare-fun tp!71605 () Bool)

(assert (=> setNonEmpty!1764 (= setRes!1763 (and tp!71605 (inv!2994 setElem!1763) e!80009))))

(declare-fun mapValue!1751 () List!2272)

(declare-fun setRest!1764 () (InoxSet Context!262))

(assert (=> setNonEmpty!1764 (= (_2!1437 (h!7659 mapValue!1751)) ((_ map or) (store ((as const (Array Context!262 Bool)) false) setElem!1763 true) setRest!1764))))

(declare-fun b!137293 () Bool)

(declare-fun tp!71602 () Bool)

(assert (=> b!137293 (= e!80009 tp!71602)))

(declare-fun b!137294 () Bool)

(declare-fun tp!71599 () Bool)

(assert (=> b!137294 (= e!80005 tp!71599)))

(declare-fun condMapEmpty!1751 () Bool)

(assert (=> mapNonEmpty!1748 (= condMapEmpty!1751 (= mapRest!1748 ((as const (Array (_ BitVec 32) List!2272)) mapDefault!1751)))))

(assert (=> mapNonEmpty!1748 (= tp!71574 (and e!80007 mapRes!1751))))

(declare-fun b!137295 () Bool)

(declare-fun e!80006 () Bool)

(declare-fun tp!71600 () Bool)

(assert (=> b!137295 (= e!80006 tp!71600)))

(declare-fun b!137296 () Bool)

(declare-fun tp!71598 () Bool)

(assert (=> b!137296 (= e!80004 tp!71598)))

(declare-fun setIsEmpty!1764 () Bool)

(assert (=> setIsEmpty!1764 setRes!1763))

(declare-fun e!80008 () Bool)

(declare-fun tp!71597 () Bool)

(declare-fun b!137297 () Bool)

(assert (=> b!137297 (= e!80008 (and (inv!2994 (_1!1436 (_1!1437 (h!7659 mapValue!1751)))) e!80006 tp_is_empty!1543 setRes!1763 tp!71597))))

(declare-fun condSetEmpty!1764 () Bool)

(assert (=> b!137297 (= condSetEmpty!1764 (= (_2!1437 (h!7659 mapValue!1751)) ((as const (Array Context!262 Bool)) false)))))

(declare-fun mapNonEmpty!1751 () Bool)

(declare-fun tp!71603 () Bool)

(assert (=> mapNonEmpty!1751 (= mapRes!1751 (and tp!71603 e!80008))))

(declare-fun mapRest!1751 () (Array (_ BitVec 32) List!2272))

(declare-fun mapKey!1751 () (_ BitVec 32))

(assert (=> mapNonEmpty!1751 (= mapRest!1748 (store mapRest!1751 mapKey!1751 mapValue!1751))))

(assert (= (and mapNonEmpty!1748 condMapEmpty!1751) mapIsEmpty!1751))

(assert (= (and mapNonEmpty!1748 (not condMapEmpty!1751)) mapNonEmpty!1751))

(assert (= b!137297 b!137295))

(assert (= (and b!137297 condSetEmpty!1764) setIsEmpty!1764))

(assert (= (and b!137297 (not condSetEmpty!1764)) setNonEmpty!1764))

(assert (= setNonEmpty!1764 b!137293))

(assert (= (and mapNonEmpty!1751 ((_ is Cons!2262) mapValue!1751)) b!137297))

(assert (= b!137292 b!137296))

(assert (= (and b!137292 condSetEmpty!1763) setIsEmpty!1763))

(assert (= (and b!137292 (not condSetEmpty!1763)) setNonEmpty!1763))

(assert (= setNonEmpty!1763 b!137294))

(assert (= (and mapNonEmpty!1748 ((_ is Cons!2262) mapDefault!1751)) b!137292))

(declare-fun m!121567 () Bool)

(assert (=> setNonEmpty!1763 m!121567))

(declare-fun m!121569 () Bool)

(assert (=> setNonEmpty!1764 m!121569))

(declare-fun m!121571 () Bool)

(assert (=> b!137297 m!121571))

(declare-fun m!121573 () Bool)

(assert (=> b!137292 m!121573))

(declare-fun m!121575 () Bool)

(assert (=> mapNonEmpty!1751 m!121575))

(declare-fun b!137306 () Bool)

(declare-fun e!80018 () Bool)

(declare-fun tp!71616 () Bool)

(assert (=> b!137306 (= e!80018 tp!71616)))

(declare-fun setIsEmpty!1767 () Bool)

(declare-fun setRes!1767 () Bool)

(assert (=> setIsEmpty!1767 setRes!1767))

(declare-fun b!137307 () Bool)

(declare-fun e!80017 () Bool)

(declare-fun tp!71617 () Bool)

(assert (=> b!137307 (= e!80017 tp!71617)))

(declare-fun tp!71614 () Bool)

(declare-fun setNonEmpty!1767 () Bool)

(declare-fun setElem!1767 () Context!262)

(assert (=> setNonEmpty!1767 (= setRes!1767 (and tp!71614 (inv!2994 setElem!1767) e!80017))))

(declare-fun setRest!1767 () (InoxSet Context!262))

(assert (=> setNonEmpty!1767 (= (_2!1437 (h!7659 mapValue!1748)) ((_ map or) (store ((as const (Array Context!262 Bool)) false) setElem!1767 true) setRest!1767))))

(declare-fun tp!71615 () Bool)

(declare-fun e!80016 () Bool)

(declare-fun b!137308 () Bool)

(assert (=> b!137308 (= e!80016 (and (inv!2994 (_1!1436 (_1!1437 (h!7659 mapValue!1748)))) e!80018 tp_is_empty!1543 setRes!1767 tp!71615))))

(declare-fun condSetEmpty!1767 () Bool)

(assert (=> b!137308 (= condSetEmpty!1767 (= (_2!1437 (h!7659 mapValue!1748)) ((as const (Array Context!262 Bool)) false)))))

(assert (=> mapNonEmpty!1748 (= tp!71578 e!80016)))

(assert (= b!137308 b!137306))

(assert (= (and b!137308 condSetEmpty!1767) setIsEmpty!1767))

(assert (= (and b!137308 (not condSetEmpty!1767)) setNonEmpty!1767))

(assert (= setNonEmpty!1767 b!137307))

(assert (= (and mapNonEmpty!1748 ((_ is Cons!2262) mapValue!1748)) b!137308))

(declare-fun m!121577 () Bool)

(assert (=> setNonEmpty!1767 m!121577))

(declare-fun m!121579 () Bool)

(assert (=> b!137308 m!121579))

(declare-fun b!137309 () Bool)

(declare-fun e!80021 () Bool)

(declare-fun tp!71620 () Bool)

(assert (=> b!137309 (= e!80021 tp!71620)))

(declare-fun setIsEmpty!1768 () Bool)

(declare-fun setRes!1768 () Bool)

(assert (=> setIsEmpty!1768 setRes!1768))

(declare-fun b!137310 () Bool)

(declare-fun e!80020 () Bool)

(declare-fun tp!71621 () Bool)

(assert (=> b!137310 (= e!80020 tp!71621)))

(declare-fun setNonEmpty!1768 () Bool)

(declare-fun tp!71618 () Bool)

(declare-fun setElem!1768 () Context!262)

(assert (=> setNonEmpty!1768 (= setRes!1768 (and tp!71618 (inv!2994 setElem!1768) e!80020))))

(declare-fun setRest!1768 () (InoxSet Context!262))

(assert (=> setNonEmpty!1768 (= (_2!1437 (h!7659 mapDefault!1748)) ((_ map or) (store ((as const (Array Context!262 Bool)) false) setElem!1768 true) setRest!1768))))

(declare-fun e!80019 () Bool)

(declare-fun b!137311 () Bool)

(declare-fun tp!71619 () Bool)

(assert (=> b!137311 (= e!80019 (and (inv!2994 (_1!1436 (_1!1437 (h!7659 mapDefault!1748)))) e!80021 tp_is_empty!1543 setRes!1768 tp!71619))))

(declare-fun condSetEmpty!1768 () Bool)

(assert (=> b!137311 (= condSetEmpty!1768 (= (_2!1437 (h!7659 mapDefault!1748)) ((as const (Array Context!262 Bool)) false)))))

(assert (=> b!137255 (= tp!71576 e!80019)))

(assert (= b!137311 b!137309))

(assert (= (and b!137311 condSetEmpty!1768) setIsEmpty!1768))

(assert (= (and b!137311 (not condSetEmpty!1768)) setNonEmpty!1768))

(assert (= setNonEmpty!1768 b!137310))

(assert (= (and b!137255 ((_ is Cons!2262) mapDefault!1748)) b!137311))

(declare-fun m!121581 () Bool)

(assert (=> setNonEmpty!1768 m!121581))

(declare-fun m!121583 () Bool)

(assert (=> b!137311 m!121583))

(declare-fun b!137312 () Bool)

(declare-fun e!80024 () Bool)

(declare-fun tp!71624 () Bool)

(assert (=> b!137312 (= e!80024 tp!71624)))

(declare-fun setIsEmpty!1769 () Bool)

(declare-fun setRes!1769 () Bool)

(assert (=> setIsEmpty!1769 setRes!1769))

(declare-fun b!137313 () Bool)

(declare-fun e!80023 () Bool)

(declare-fun tp!71625 () Bool)

(assert (=> b!137313 (= e!80023 tp!71625)))

(declare-fun setNonEmpty!1769 () Bool)

(declare-fun tp!71622 () Bool)

(declare-fun setElem!1769 () Context!262)

(assert (=> setNonEmpty!1769 (= setRes!1769 (and tp!71622 (inv!2994 setElem!1769) e!80023))))

(declare-fun setRest!1769 () (InoxSet Context!262))

(assert (=> setNonEmpty!1769 (= (_2!1437 (h!7659 (zeroValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))) ((_ map or) (store ((as const (Array Context!262 Bool)) false) setElem!1769 true) setRest!1769))))

(declare-fun tp!71623 () Bool)

(declare-fun e!80022 () Bool)

(declare-fun b!137314 () Bool)

(assert (=> b!137314 (= e!80022 (and (inv!2994 (_1!1436 (_1!1437 (h!7659 (zeroValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))))) e!80024 tp_is_empty!1543 setRes!1769 tp!71623))))

(declare-fun condSetEmpty!1769 () Bool)

(assert (=> b!137314 (= condSetEmpty!1769 (= (_2!1437 (h!7659 (zeroValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))) ((as const (Array Context!262 Bool)) false)))))

(assert (=> b!137261 (= tp!71577 e!80022)))

(assert (= b!137314 b!137312))

(assert (= (and b!137314 condSetEmpty!1769) setIsEmpty!1769))

(assert (= (and b!137314 (not condSetEmpty!1769)) setNonEmpty!1769))

(assert (= setNonEmpty!1769 b!137313))

(assert (= (and b!137261 ((_ is Cons!2262) (zeroValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))) b!137314))

(declare-fun m!121585 () Bool)

(assert (=> setNonEmpty!1769 m!121585))

(declare-fun m!121587 () Bool)

(assert (=> b!137314 m!121587))

(declare-fun b!137315 () Bool)

(declare-fun e!80027 () Bool)

(declare-fun tp!71628 () Bool)

(assert (=> b!137315 (= e!80027 tp!71628)))

(declare-fun setIsEmpty!1770 () Bool)

(declare-fun setRes!1770 () Bool)

(assert (=> setIsEmpty!1770 setRes!1770))

(declare-fun b!137316 () Bool)

(declare-fun e!80026 () Bool)

(declare-fun tp!71629 () Bool)

(assert (=> b!137316 (= e!80026 tp!71629)))

(declare-fun setNonEmpty!1770 () Bool)

(declare-fun setElem!1770 () Context!262)

(declare-fun tp!71626 () Bool)

(assert (=> setNonEmpty!1770 (= setRes!1770 (and tp!71626 (inv!2994 setElem!1770) e!80026))))

(declare-fun setRest!1770 () (InoxSet Context!262))

(assert (=> setNonEmpty!1770 (= (_2!1437 (h!7659 (minValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))) ((_ map or) (store ((as const (Array Context!262 Bool)) false) setElem!1770 true) setRest!1770))))

(declare-fun tp!71627 () Bool)

(declare-fun b!137317 () Bool)

(declare-fun e!80025 () Bool)

(assert (=> b!137317 (= e!80025 (and (inv!2994 (_1!1436 (_1!1437 (h!7659 (minValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))))) e!80027 tp_is_empty!1543 setRes!1770 tp!71627))))

(declare-fun condSetEmpty!1770 () Bool)

(assert (=> b!137317 (= condSetEmpty!1770 (= (_2!1437 (h!7659 (minValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))) ((as const (Array Context!262 Bool)) false)))))

(assert (=> b!137261 (= tp!71575 e!80025)))

(assert (= b!137317 b!137315))

(assert (= (and b!137317 condSetEmpty!1770) setIsEmpty!1770))

(assert (= (and b!137317 (not condSetEmpty!1770)) setNonEmpty!1770))

(assert (= setNonEmpty!1770 b!137316))

(assert (= (and b!137261 ((_ is Cons!2262) (minValue!709 (v!13506 (underlying!1093 (v!13507 (underlying!1094 (cache!886 thiss!28652)))))))) b!137317))

(declare-fun m!121589 () Bool)

(assert (=> setNonEmpty!1770 m!121589))

(declare-fun m!121591 () Bool)

(assert (=> b!137317 m!121591))

(check-sat (not b!137271) (not d!32889) (not b!137310) (not b!137292) (not b!137312) (not b!137293) (not b!137311) (not b!137306) (not setNonEmpty!1770) (not setNonEmpty!1768) (not b!137315) (not b_next!4013) b_and!6167 (not b!137296) (not d!32881) (not b!137277) (not b!137268) (not b!137267) (not b!137294) (not setNonEmpty!1764) (not b!137297) (not b!137316) (not b!137276) (not setNonEmpty!1769) (not b!137309) (not setNonEmpty!1767) tp_is_empty!1543 (not b!137313) (not b!137307) (not b!137295) (not b!137308) (not b!137317) b_and!6165 (not b!137314) (not setNonEmpty!1763) (not mapNonEmpty!1751) (not b_next!4015))
(check-sat b_and!6165 b_and!6167 (not b_next!4015) (not b_next!4013))
