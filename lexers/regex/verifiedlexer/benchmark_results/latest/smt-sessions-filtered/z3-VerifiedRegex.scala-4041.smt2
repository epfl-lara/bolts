; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218016 () Bool)

(assert start!218016)

(declare-fun b!2237267 () Bool)

(declare-fun b_free!64905 () Bool)

(declare-fun b_next!65609 () Bool)

(assert (=> b!2237267 (= b_free!64905 (not b_next!65609))))

(declare-fun tp!703668 () Bool)

(declare-fun b_and!174901 () Bool)

(assert (=> b!2237267 (= tp!703668 b_and!174901)))

(declare-fun b!2237271 () Bool)

(declare-fun b_free!64907 () Bool)

(declare-fun b_next!65611 () Bool)

(assert (=> b!2237271 (= b_free!64907 (not b_next!65611))))

(declare-fun tp!703670 () Bool)

(declare-fun b_and!174903 () Bool)

(assert (=> b!2237271 (= tp!703670 b_and!174903)))

(declare-fun b!2237266 () Bool)

(declare-fun e!1430033 () Bool)

(declare-fun e!1430036 () Bool)

(assert (=> b!2237266 (= e!1430033 e!1430036)))

(declare-fun mapNonEmpty!14609 () Bool)

(declare-fun mapRes!14609 () Bool)

(declare-fun tp!703671 () Bool)

(declare-fun tp!703672 () Bool)

(assert (=> mapNonEmpty!14609 (= mapRes!14609 (and tp!703671 tp!703672))))

(declare-datatypes ((C!13092 0))(
  ( (C!13093 (val!7594 Int)) )
))
(declare-datatypes ((Regex!6473 0))(
  ( (ElementMatch!6473 (c!356486 C!13092)) (Concat!10811 (regOne!13458 Regex!6473) (regTwo!13458 Regex!6473)) (EmptyExpr!6473) (Star!6473 (reg!6802 Regex!6473)) (EmptyLang!6473) (Union!6473 (regOne!13459 Regex!6473) (regTwo!13459 Regex!6473)) )
))
(declare-datatypes ((List!26428 0))(
  ( (Nil!26334) (Cons!26334 (h!31735 Regex!6473) (t!199852 List!26428)) )
))
(declare-datatypes ((Context!4042 0))(
  ( (Context!4043 (exprs!2521 List!26428)) )
))
(declare-datatypes ((tuple3!4018 0))(
  ( (tuple3!4019 (_1!15345 Regex!6473) (_2!15345 Context!4042) (_3!2479 C!13092)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25732 0))(
  ( (tuple2!25733 (_1!15346 tuple3!4018) (_2!15346 (InoxSet Context!4042))) )
))
(declare-datatypes ((List!26429 0))(
  ( (Nil!26335) (Cons!26335 (h!31736 tuple2!25732) (t!199853 List!26429)) )
))
(declare-fun mapRest!14609 () (Array (_ BitVec 32) List!26429))

(declare-fun mapKey!14609 () (_ BitVec 32))

(declare-fun mapValue!14609 () List!26429)

(declare-datatypes ((Hashable!3021 0))(
  ( (HashableExt!3020 (__x!17559 Int)) )
))
(declare-datatypes ((array!10828 0))(
  ( (array!10829 (arr!4809 (Array (_ BitVec 32) List!26429)) (size!20590 (_ BitVec 32))) )
))
(declare-datatypes ((array!10830 0))(
  ( (array!10831 (arr!4810 (Array (_ BitVec 32) (_ BitVec 64))) (size!20591 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6222 0))(
  ( (LongMapFixedSize!6223 (defaultEntry!3476 Int) (mask!7701 (_ BitVec 32)) (extraKeys!3359 (_ BitVec 32)) (zeroValue!3369 List!26429) (minValue!3369 List!26429) (_size!6269 (_ BitVec 32)) (_keys!3408 array!10830) (_values!3391 array!10828) (_vacant!3172 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12261 0))(
  ( (Cell!12262 (v!29947 LongMapFixedSize!6222)) )
))
(declare-datatypes ((MutLongMap!3111 0))(
  ( (LongMap!3111 (underlying!6423 Cell!12261)) (MutLongMapExt!3110 (__x!17560 Int)) )
))
(declare-datatypes ((Cell!12263 0))(
  ( (Cell!12264 (v!29948 MutLongMap!3111)) )
))
(declare-datatypes ((MutableMap!3021 0))(
  ( (MutableMapExt!3020 (__x!17561 Int)) (HashMap!3021 (underlying!6424 Cell!12263) (hashF!4944 Hashable!3021) (_size!6270 (_ BitVec 32)) (defaultValue!3183 Int)) )
))
(declare-datatypes ((CacheDown!2088 0))(
  ( (CacheDown!2089 (cache!3402 MutableMap!3021)) )
))
(declare-fun thiss!28743 () CacheDown!2088)

(assert (=> mapNonEmpty!14609 (= (arr!4809 (_values!3391 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) (store mapRest!14609 mapKey!14609 mapValue!14609))))

(declare-fun tp!703673 () Bool)

(declare-fun tp!703674 () Bool)

(declare-fun e!1430034 () Bool)

(declare-fun e!1430035 () Bool)

(declare-fun array_inv!3455 (array!10830) Bool)

(declare-fun array_inv!3456 (array!10828) Bool)

(assert (=> b!2237267 (= e!1430035 (and tp!703668 tp!703674 tp!703673 (array_inv!3455 (_keys!3408 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) (array_inv!3456 (_values!3391 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) e!1430034))))

(declare-fun b!2237268 () Bool)

(declare-fun e!1430040 () Bool)

(declare-fun e!1430039 () Bool)

(assert (=> b!2237268 (= e!1430040 e!1430039)))

(declare-fun b!2237270 () Bool)

(assert (=> b!2237270 (= e!1430039 e!1430035)))

(declare-fun e!1430037 () Bool)

(assert (=> b!2237271 (= e!1430036 (and e!1430037 tp!703670))))

(declare-fun b!2237272 () Bool)

(declare-fun lt!832254 () MutLongMap!3111)

(get-info :version)

(assert (=> b!2237272 (= e!1430037 (and e!1430040 ((_ is LongMap!3111) lt!832254)))))

(assert (=> b!2237272 (= lt!832254 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))

(declare-fun res!957020 () Bool)

(declare-fun e!1430032 () Bool)

(assert (=> start!218016 (=> (not res!957020) (not e!1430032))))

(declare-fun validCacheMapDown!321 (MutableMap!3021) Bool)

(assert (=> start!218016 (= res!957020 (validCacheMapDown!321 (cache!3402 thiss!28743)))))

(assert (=> start!218016 e!1430032))

(declare-fun inv!35771 (CacheDown!2088) Bool)

(assert (=> start!218016 (and (inv!35771 thiss!28743) e!1430033)))

(declare-fun b!2237269 () Bool)

(declare-fun tp!703669 () Bool)

(assert (=> b!2237269 (= e!1430034 (and tp!703669 mapRes!14609))))

(declare-fun condMapEmpty!14609 () Bool)

(declare-fun mapDefault!14609 () List!26429)

(assert (=> b!2237269 (= condMapEmpty!14609 (= (arr!4809 (_values!3391 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26429)) mapDefault!14609)))))

(declare-fun mapIsEmpty!14609 () Bool)

(assert (=> mapIsEmpty!14609 mapRes!14609))

(declare-fun b!2237273 () Bool)

(assert (=> b!2237273 (= e!1430032 (not ((_ is HashMap!3021) (cache!3402 thiss!28743))))))

(assert (= (and start!218016 res!957020) b!2237273))

(assert (= (and b!2237269 condMapEmpty!14609) mapIsEmpty!14609))

(assert (= (and b!2237269 (not condMapEmpty!14609)) mapNonEmpty!14609))

(assert (= b!2237267 b!2237269))

(assert (= b!2237270 b!2237267))

(assert (= b!2237268 b!2237270))

(assert (= (and b!2237272 ((_ is LongMap!3111) (v!29948 (underlying!6424 (cache!3402 thiss!28743))))) b!2237268))

(assert (= b!2237271 b!2237272))

(assert (= (and b!2237266 ((_ is HashMap!3021) (cache!3402 thiss!28743))) b!2237271))

(assert (= start!218016 b!2237266))

(declare-fun m!2670819 () Bool)

(assert (=> mapNonEmpty!14609 m!2670819))

(declare-fun m!2670821 () Bool)

(assert (=> b!2237267 m!2670821))

(declare-fun m!2670823 () Bool)

(assert (=> b!2237267 m!2670823))

(declare-fun m!2670825 () Bool)

(assert (=> start!218016 m!2670825))

(declare-fun m!2670827 () Bool)

(assert (=> start!218016 m!2670827))

(check-sat b_and!174901 (not mapNonEmpty!14609) (not b!2237269) b_and!174903 (not b_next!65611) (not start!218016) (not b_next!65609) (not b!2237267))
(check-sat b_and!174901 b_and!174903 (not b_next!65611) (not b_next!65609))
(get-model)

(declare-fun d!665518 () Bool)

(assert (=> d!665518 (= (array_inv!3455 (_keys!3408 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) (bvsge (size!20591 (_keys!3408 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2237267 d!665518))

(declare-fun d!665520 () Bool)

(assert (=> d!665520 (= (array_inv!3456 (_values!3391 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) (bvsge (size!20590 (_values!3391 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2237267 d!665520))

(declare-fun d!665522 () Bool)

(declare-fun res!957027 () Bool)

(declare-fun e!1430045 () Bool)

(assert (=> d!665522 (=> (not res!957027) (not e!1430045))))

(declare-fun valid!2346 (MutableMap!3021) Bool)

(assert (=> d!665522 (= res!957027 (valid!2346 (cache!3402 thiss!28743)))))

(assert (=> d!665522 (= (validCacheMapDown!321 (cache!3402 thiss!28743)) e!1430045)))

(declare-fun b!2237280 () Bool)

(declare-fun res!957028 () Bool)

(assert (=> b!2237280 (=> (not res!957028) (not e!1430045))))

(declare-fun invariantList!375 (List!26429) Bool)

(declare-datatypes ((ListMap!841 0))(
  ( (ListMap!842 (toList!1359 List!26429)) )
))
(declare-fun map!5417 (MutableMap!3021) ListMap!841)

(assert (=> b!2237280 (= res!957028 (invariantList!375 (toList!1359 (map!5417 (cache!3402 thiss!28743)))))))

(declare-fun b!2237281 () Bool)

(declare-fun lambda!84547 () Int)

(declare-fun forall!5407 (List!26429 Int) Bool)

(assert (=> b!2237281 (= e!1430045 (forall!5407 (toList!1359 (map!5417 (cache!3402 thiss!28743))) lambda!84547))))

(assert (= (and d!665522 res!957027) b!2237280))

(assert (= (and b!2237280 res!957028) b!2237281))

(declare-fun m!2670830 () Bool)

(assert (=> d!665522 m!2670830))

(declare-fun m!2670832 () Bool)

(assert (=> b!2237280 m!2670832))

(declare-fun m!2670834 () Bool)

(assert (=> b!2237280 m!2670834))

(assert (=> b!2237281 m!2670832))

(declare-fun m!2670836 () Bool)

(assert (=> b!2237281 m!2670836))

(assert (=> start!218016 d!665522))

(declare-fun d!665524 () Bool)

(declare-fun res!957031 () Bool)

(declare-fun e!1430048 () Bool)

(assert (=> d!665524 (=> (not res!957031) (not e!1430048))))

(assert (=> d!665524 (= res!957031 ((_ is HashMap!3021) (cache!3402 thiss!28743)))))

(assert (=> d!665524 (= (inv!35771 thiss!28743) e!1430048)))

(declare-fun b!2237284 () Bool)

(assert (=> b!2237284 (= e!1430048 (validCacheMapDown!321 (cache!3402 thiss!28743)))))

(assert (= (and d!665524 res!957031) b!2237284))

(assert (=> b!2237284 m!2670825))

(assert (=> start!218016 d!665524))

(declare-fun b!2237293 () Bool)

(declare-fun e!1430057 () Bool)

(declare-fun tp!703686 () Bool)

(assert (=> b!2237293 (= e!1430057 tp!703686)))

(declare-fun setRes!20416 () Bool)

(declare-fun setElem!20416 () Context!4042)

(declare-fun setNonEmpty!20416 () Bool)

(declare-fun tp!703689 () Bool)

(declare-fun inv!35772 (Context!4042) Bool)

(assert (=> setNonEmpty!20416 (= setRes!20416 (and tp!703689 (inv!35772 setElem!20416) e!1430057))))

(declare-fun setRest!20416 () (InoxSet Context!4042))

(assert (=> setNonEmpty!20416 (= (_2!15346 (h!31736 (zeroValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4042 Bool)) false) setElem!20416 true) setRest!20416))))

(declare-fun tp_is_empty!10169 () Bool)

(declare-fun b!2237294 () Bool)

(declare-fun e!1430055 () Bool)

(declare-fun tp!703687 () Bool)

(declare-fun tp!703688 () Bool)

(declare-fun e!1430056 () Bool)

(assert (=> b!2237294 (= e!1430055 (and tp!703688 (inv!35772 (_2!15345 (_1!15346 (h!31736 (zeroValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))))) e!1430056 tp_is_empty!10169 setRes!20416 tp!703687))))

(declare-fun condSetEmpty!20416 () Bool)

(assert (=> b!2237294 (= condSetEmpty!20416 (= (_2!15346 (h!31736 (zeroValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))) ((as const (Array Context!4042 Bool)) false)))))

(assert (=> b!2237267 (= tp!703674 e!1430055)))

(declare-fun b!2237295 () Bool)

(declare-fun tp!703685 () Bool)

(assert (=> b!2237295 (= e!1430056 tp!703685)))

(declare-fun setIsEmpty!20416 () Bool)

(assert (=> setIsEmpty!20416 setRes!20416))

(assert (= b!2237294 b!2237295))

(assert (= (and b!2237294 condSetEmpty!20416) setIsEmpty!20416))

(assert (= (and b!2237294 (not condSetEmpty!20416)) setNonEmpty!20416))

(assert (= setNonEmpty!20416 b!2237293))

(assert (= (and b!2237267 ((_ is Cons!26335) (zeroValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))) b!2237294))

(declare-fun m!2670838 () Bool)

(assert (=> setNonEmpty!20416 m!2670838))

(declare-fun m!2670840 () Bool)

(assert (=> b!2237294 m!2670840))

(declare-fun b!2237296 () Bool)

(declare-fun e!1430060 () Bool)

(declare-fun tp!703691 () Bool)

(assert (=> b!2237296 (= e!1430060 tp!703691)))

(declare-fun tp!703694 () Bool)

(declare-fun setRes!20417 () Bool)

(declare-fun setElem!20417 () Context!4042)

(declare-fun setNonEmpty!20417 () Bool)

(assert (=> setNonEmpty!20417 (= setRes!20417 (and tp!703694 (inv!35772 setElem!20417) e!1430060))))

(declare-fun setRest!20417 () (InoxSet Context!4042))

(assert (=> setNonEmpty!20417 (= (_2!15346 (h!31736 (minValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4042 Bool)) false) setElem!20417 true) setRest!20417))))

(declare-fun e!1430059 () Bool)

(declare-fun b!2237297 () Bool)

(declare-fun tp!703693 () Bool)

(declare-fun e!1430058 () Bool)

(declare-fun tp!703692 () Bool)

(assert (=> b!2237297 (= e!1430058 (and tp!703693 (inv!35772 (_2!15345 (_1!15346 (h!31736 (minValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))))) e!1430059 tp_is_empty!10169 setRes!20417 tp!703692))))

(declare-fun condSetEmpty!20417 () Bool)

(assert (=> b!2237297 (= condSetEmpty!20417 (= (_2!15346 (h!31736 (minValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))) ((as const (Array Context!4042 Bool)) false)))))

(assert (=> b!2237267 (= tp!703673 e!1430058)))

(declare-fun b!2237298 () Bool)

(declare-fun tp!703690 () Bool)

(assert (=> b!2237298 (= e!1430059 tp!703690)))

(declare-fun setIsEmpty!20417 () Bool)

(assert (=> setIsEmpty!20417 setRes!20417))

(assert (= b!2237297 b!2237298))

(assert (= (and b!2237297 condSetEmpty!20417) setIsEmpty!20417))

(assert (= (and b!2237297 (not condSetEmpty!20417)) setNonEmpty!20417))

(assert (= setNonEmpty!20417 b!2237296))

(assert (= (and b!2237267 ((_ is Cons!26335) (minValue!3369 (v!29947 (underlying!6423 (v!29948 (underlying!6424 (cache!3402 thiss!28743)))))))) b!2237297))

(declare-fun m!2670842 () Bool)

(assert (=> setNonEmpty!20417 m!2670842))

(declare-fun m!2670844 () Bool)

(assert (=> b!2237297 m!2670844))

(declare-fun mapNonEmpty!14612 () Bool)

(declare-fun mapRes!14612 () Bool)

(declare-fun tp!703725 () Bool)

(declare-fun e!1430076 () Bool)

(assert (=> mapNonEmpty!14612 (= mapRes!14612 (and tp!703725 e!1430076))))

(declare-fun mapValue!14612 () List!26429)

(declare-fun mapRest!14612 () (Array (_ BitVec 32) List!26429))

(declare-fun mapKey!14612 () (_ BitVec 32))

(assert (=> mapNonEmpty!14612 (= mapRest!14609 (store mapRest!14612 mapKey!14612 mapValue!14612))))

(declare-fun setIsEmpty!20422 () Bool)

(declare-fun setRes!20422 () Bool)

(assert (=> setIsEmpty!20422 setRes!20422))

(declare-fun b!2237313 () Bool)

(declare-fun e!1430075 () Bool)

(declare-fun tp!703723 () Bool)

(assert (=> b!2237313 (= e!1430075 tp!703723)))

(declare-fun condMapEmpty!14612 () Bool)

(declare-fun mapDefault!14612 () List!26429)

(assert (=> mapNonEmpty!14609 (= condMapEmpty!14612 (= mapRest!14609 ((as const (Array (_ BitVec 32) List!26429)) mapDefault!14612)))))

(declare-fun e!1430074 () Bool)

(assert (=> mapNonEmpty!14609 (= tp!703671 (and e!1430074 mapRes!14612))))

(declare-fun setElem!20422 () Context!4042)

(declare-fun tp!703727 () Bool)

(declare-fun setNonEmpty!20422 () Bool)

(declare-fun e!1430077 () Bool)

(assert (=> setNonEmpty!20422 (= setRes!20422 (and tp!703727 (inv!35772 setElem!20422) e!1430077))))

(declare-fun setRest!20423 () (InoxSet Context!4042))

(assert (=> setNonEmpty!20422 (= (_2!15346 (h!31736 mapValue!14612)) ((_ map or) (store ((as const (Array Context!4042 Bool)) false) setElem!20422 true) setRest!20423))))

(declare-fun setIsEmpty!20423 () Bool)

(declare-fun setRes!20423 () Bool)

(assert (=> setIsEmpty!20423 setRes!20423))

(declare-fun b!2237314 () Bool)

(declare-fun e!1430073 () Bool)

(declare-fun tp!703726 () Bool)

(assert (=> b!2237314 (= e!1430073 tp!703726)))

(declare-fun b!2237315 () Bool)

(declare-fun tp!703718 () Bool)

(assert (=> b!2237315 (= e!1430077 tp!703718)))

(declare-fun b!2237316 () Bool)

(declare-fun tp!703724 () Bool)

(declare-fun tp!703717 () Bool)

(assert (=> b!2237316 (= e!1430076 (and tp!703717 (inv!35772 (_2!15345 (_1!15346 (h!31736 mapValue!14612)))) e!1430075 tp_is_empty!10169 setRes!20422 tp!703724))))

(declare-fun condSetEmpty!20423 () Bool)

(assert (=> b!2237316 (= condSetEmpty!20423 (= (_2!15346 (h!31736 mapValue!14612)) ((as const (Array Context!4042 Bool)) false)))))

(declare-fun b!2237317 () Bool)

(declare-fun e!1430078 () Bool)

(declare-fun tp!703719 () Bool)

(assert (=> b!2237317 (= e!1430078 tp!703719)))

(declare-fun mapIsEmpty!14612 () Bool)

(assert (=> mapIsEmpty!14612 mapRes!14612))

(declare-fun setElem!20423 () Context!4042)

(declare-fun tp!703720 () Bool)

(declare-fun setNonEmpty!20423 () Bool)

(assert (=> setNonEmpty!20423 (= setRes!20423 (and tp!703720 (inv!35772 setElem!20423) e!1430078))))

(declare-fun setRest!20422 () (InoxSet Context!4042))

(assert (=> setNonEmpty!20423 (= (_2!15346 (h!31736 mapDefault!14612)) ((_ map or) (store ((as const (Array Context!4042 Bool)) false) setElem!20423 true) setRest!20422))))

(declare-fun b!2237318 () Bool)

(declare-fun tp!703722 () Bool)

(declare-fun tp!703721 () Bool)

(assert (=> b!2237318 (= e!1430074 (and tp!703721 (inv!35772 (_2!15345 (_1!15346 (h!31736 mapDefault!14612)))) e!1430073 tp_is_empty!10169 setRes!20423 tp!703722))))

(declare-fun condSetEmpty!20422 () Bool)

(assert (=> b!2237318 (= condSetEmpty!20422 (= (_2!15346 (h!31736 mapDefault!14612)) ((as const (Array Context!4042 Bool)) false)))))

(assert (= (and mapNonEmpty!14609 condMapEmpty!14612) mapIsEmpty!14612))

(assert (= (and mapNonEmpty!14609 (not condMapEmpty!14612)) mapNonEmpty!14612))

(assert (= b!2237316 b!2237313))

(assert (= (and b!2237316 condSetEmpty!20423) setIsEmpty!20422))

(assert (= (and b!2237316 (not condSetEmpty!20423)) setNonEmpty!20422))

(assert (= setNonEmpty!20422 b!2237315))

(assert (= (and mapNonEmpty!14612 ((_ is Cons!26335) mapValue!14612)) b!2237316))

(assert (= b!2237318 b!2237314))

(assert (= (and b!2237318 condSetEmpty!20422) setIsEmpty!20423))

(assert (= (and b!2237318 (not condSetEmpty!20422)) setNonEmpty!20423))

(assert (= setNonEmpty!20423 b!2237317))

(assert (= (and mapNonEmpty!14609 ((_ is Cons!26335) mapDefault!14612)) b!2237318))

(declare-fun m!2670846 () Bool)

(assert (=> mapNonEmpty!14612 m!2670846))

(declare-fun m!2670848 () Bool)

(assert (=> setNonEmpty!20423 m!2670848))

(declare-fun m!2670850 () Bool)

(assert (=> b!2237316 m!2670850))

(declare-fun m!2670852 () Bool)

(assert (=> setNonEmpty!20422 m!2670852))

(declare-fun m!2670854 () Bool)

(assert (=> b!2237318 m!2670854))

(declare-fun b!2237319 () Bool)

(declare-fun e!1430081 () Bool)

(declare-fun tp!703729 () Bool)

(assert (=> b!2237319 (= e!1430081 tp!703729)))

(declare-fun setElem!20424 () Context!4042)

(declare-fun tp!703732 () Bool)

(declare-fun setRes!20424 () Bool)

(declare-fun setNonEmpty!20424 () Bool)

(assert (=> setNonEmpty!20424 (= setRes!20424 (and tp!703732 (inv!35772 setElem!20424) e!1430081))))

(declare-fun setRest!20424 () (InoxSet Context!4042))

(assert (=> setNonEmpty!20424 (= (_2!15346 (h!31736 mapValue!14609)) ((_ map or) (store ((as const (Array Context!4042 Bool)) false) setElem!20424 true) setRest!20424))))

(declare-fun tp!703730 () Bool)

(declare-fun b!2237320 () Bool)

(declare-fun e!1430079 () Bool)

(declare-fun tp!703731 () Bool)

(declare-fun e!1430080 () Bool)

(assert (=> b!2237320 (= e!1430079 (and tp!703731 (inv!35772 (_2!15345 (_1!15346 (h!31736 mapValue!14609)))) e!1430080 tp_is_empty!10169 setRes!20424 tp!703730))))

(declare-fun condSetEmpty!20424 () Bool)

(assert (=> b!2237320 (= condSetEmpty!20424 (= (_2!15346 (h!31736 mapValue!14609)) ((as const (Array Context!4042 Bool)) false)))))

(assert (=> mapNonEmpty!14609 (= tp!703672 e!1430079)))

(declare-fun b!2237321 () Bool)

(declare-fun tp!703728 () Bool)

(assert (=> b!2237321 (= e!1430080 tp!703728)))

(declare-fun setIsEmpty!20424 () Bool)

(assert (=> setIsEmpty!20424 setRes!20424))

(assert (= b!2237320 b!2237321))

(assert (= (and b!2237320 condSetEmpty!20424) setIsEmpty!20424))

(assert (= (and b!2237320 (not condSetEmpty!20424)) setNonEmpty!20424))

(assert (= setNonEmpty!20424 b!2237319))

(assert (= (and mapNonEmpty!14609 ((_ is Cons!26335) mapValue!14609)) b!2237320))

(declare-fun m!2670856 () Bool)

(assert (=> setNonEmpty!20424 m!2670856))

(declare-fun m!2670858 () Bool)

(assert (=> b!2237320 m!2670858))

(declare-fun b!2237322 () Bool)

(declare-fun e!1430084 () Bool)

(declare-fun tp!703734 () Bool)

(assert (=> b!2237322 (= e!1430084 tp!703734)))

(declare-fun setRes!20425 () Bool)

(declare-fun setNonEmpty!20425 () Bool)

(declare-fun setElem!20425 () Context!4042)

(declare-fun tp!703737 () Bool)

(assert (=> setNonEmpty!20425 (= setRes!20425 (and tp!703737 (inv!35772 setElem!20425) e!1430084))))

(declare-fun setRest!20425 () (InoxSet Context!4042))

(assert (=> setNonEmpty!20425 (= (_2!15346 (h!31736 mapDefault!14609)) ((_ map or) (store ((as const (Array Context!4042 Bool)) false) setElem!20425 true) setRest!20425))))

(declare-fun b!2237323 () Bool)

(declare-fun tp!703735 () Bool)

(declare-fun e!1430083 () Bool)

(declare-fun tp!703736 () Bool)

(declare-fun e!1430082 () Bool)

(assert (=> b!2237323 (= e!1430082 (and tp!703736 (inv!35772 (_2!15345 (_1!15346 (h!31736 mapDefault!14609)))) e!1430083 tp_is_empty!10169 setRes!20425 tp!703735))))

(declare-fun condSetEmpty!20425 () Bool)

(assert (=> b!2237323 (= condSetEmpty!20425 (= (_2!15346 (h!31736 mapDefault!14609)) ((as const (Array Context!4042 Bool)) false)))))

(assert (=> b!2237269 (= tp!703669 e!1430082)))

(declare-fun b!2237324 () Bool)

(declare-fun tp!703733 () Bool)

(assert (=> b!2237324 (= e!1430083 tp!703733)))

(declare-fun setIsEmpty!20425 () Bool)

(assert (=> setIsEmpty!20425 setRes!20425))

(assert (= b!2237323 b!2237324))

(assert (= (and b!2237323 condSetEmpty!20425) setIsEmpty!20425))

(assert (= (and b!2237323 (not condSetEmpty!20425)) setNonEmpty!20425))

(assert (= setNonEmpty!20425 b!2237322))

(assert (= (and b!2237269 ((_ is Cons!26335) mapDefault!14609)) b!2237323))

(declare-fun m!2670860 () Bool)

(assert (=> setNonEmpty!20425 m!2670860))

(declare-fun m!2670862 () Bool)

(assert (=> b!2237323 m!2670862))

(check-sat (not mapNonEmpty!14612) (not setNonEmpty!20422) (not setNonEmpty!20424) (not b!2237313) (not b_next!65611) (not b!2237284) (not setNonEmpty!20416) (not b!2237314) (not setNonEmpty!20417) (not b!2237318) (not b!2237321) tp_is_empty!10169 (not setNonEmpty!20425) b_and!174901 (not b!2237317) (not d!665522) (not b!2237281) (not b!2237296) (not b!2237316) (not b!2237293) b_and!174903 (not b!2237294) (not b_next!65609) (not b!2237324) (not b!2237320) (not b!2237322) (not b!2237298) (not b!2237297) (not b!2237323) (not b!2237315) (not b!2237295) (not b!2237319) (not b!2237280) (not setNonEmpty!20423))
(check-sat b_and!174901 b_and!174903 (not b_next!65611) (not b_next!65609))
