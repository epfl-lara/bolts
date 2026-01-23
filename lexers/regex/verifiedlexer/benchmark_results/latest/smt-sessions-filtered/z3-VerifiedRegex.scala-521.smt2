; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14416 () Bool)

(assert start!14416)

(declare-fun b!137155 () Bool)

(declare-fun b_free!4005 () Bool)

(declare-fun b_next!4005 () Bool)

(assert (=> b!137155 (= b_free!4005 (not b_next!4005))))

(declare-fun tp!71479 () Bool)

(declare-fun b_and!6157 () Bool)

(assert (=> b!137155 (= tp!71479 b_and!6157)))

(declare-fun b!137153 () Bool)

(declare-fun b_free!4007 () Bool)

(declare-fun b_next!4007 () Bool)

(assert (=> b!137153 (= b_free!4007 (not b_next!4007))))

(declare-fun tp!71480 () Bool)

(declare-fun b_and!6159 () Bool)

(assert (=> b!137153 (= tp!71480 b_and!6159)))

(declare-fun b!137152 () Bool)

(declare-fun e!79881 () Bool)

(declare-datatypes ((array!1697 0))(
  ( (array!1698 (arr!786 (Array (_ BitVec 32) (_ BitVec 64))) (size!2040 (_ BitVec 32))) )
))
(declare-datatypes ((C!2100 0))(
  ( (C!2101 (val!936 Int)) )
))
(declare-datatypes ((Regex!589 0))(
  ( (ElementMatch!589 (c!29030 C!2100)) (Concat!985 (regOne!1690 Regex!589) (regTwo!1690 Regex!589)) (EmptyExpr!589) (Star!589 (reg!918 Regex!589)) (EmptyLang!589) (Union!589 (regOne!1691 Regex!589) (regTwo!1691 Regex!589)) )
))
(declare-datatypes ((List!2267 0))(
  ( (Nil!2257) (Cons!2257 (h!7654 Regex!589) (t!22853 List!2267)) )
))
(declare-datatypes ((Context!258 0))(
  ( (Context!259 (exprs!629 List!2267)) )
))
(declare-datatypes ((tuple2!2444 0))(
  ( (tuple2!2445 (_1!1432 Context!258) (_2!1432 C!2100)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!2446 0))(
  ( (tuple2!2447 (_1!1433 tuple2!2444) (_2!1433 (InoxSet Context!258))) )
))
(declare-datatypes ((List!2268 0))(
  ( (Nil!2258) (Cons!2258 (h!7655 tuple2!2446) (t!22854 List!2268)) )
))
(declare-datatypes ((array!1699 0))(
  ( (array!1700 (arr!787 (Array (_ BitVec 32) List!2268)) (size!2041 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!902 0))(
  ( (LongMapFixedSize!903 (defaultEntry!798 Int) (mask!1497 (_ BitVec 32)) (extraKeys!697 (_ BitVec 32)) (zeroValue!707 List!2268) (minValue!707 List!2268) (_size!1019 (_ BitVec 32)) (_keys!742 array!1697) (_values!729 array!1699) (_vacant!512 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1761 0))(
  ( (Cell!1762 (v!13502 LongMapFixedSize!902)) )
))
(declare-datatypes ((MutLongMap!451 0))(
  ( (LongMap!451 (underlying!1089 Cell!1761)) (MutLongMapExt!450 (__x!2258 Int)) )
))
(declare-datatypes ((Cell!1763 0))(
  ( (Cell!1764 (v!13503 MutLongMap!451)) )
))
(declare-datatypes ((Hashable!431 0))(
  ( (HashableExt!430 (__x!2259 Int)) )
))
(declare-datatypes ((MutableMap!431 0))(
  ( (MutableMapExt!430 (__x!2260 Int)) (HashMap!431 (underlying!1090 Cell!1763) (hashF!2307 Hashable!431) (_size!1020 (_ BitVec 32)) (defaultValue!580 Int)) )
))
(declare-datatypes ((CacheUp!190 0))(
  ( (CacheUp!191 (cache!884 MutableMap!431)) )
))
(declare-fun thiss!28652 () CacheUp!190)

(get-info :version)

(assert (=> b!137152 (= e!79881 (not ((_ is HashMap!431) (cache!884 thiss!28652))))))

(declare-fun e!79885 () Bool)

(declare-fun e!79880 () Bool)

(assert (=> b!137153 (= e!79885 (and e!79880 tp!71480))))

(declare-fun b!137154 () Bool)

(declare-fun e!79884 () Bool)

(assert (=> b!137154 (= e!79884 e!79885)))

(declare-fun tp!71485 () Bool)

(declare-fun tp!71483 () Bool)

(declare-fun e!79882 () Bool)

(declare-fun e!79886 () Bool)

(declare-fun array_inv!569 (array!1697) Bool)

(declare-fun array_inv!570 (array!1699) Bool)

(assert (=> b!137155 (= e!79882 (and tp!71479 tp!71483 tp!71485 (array_inv!569 (_keys!742 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) (array_inv!570 (_values!729 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) e!79886))))

(declare-fun b!137156 () Bool)

(declare-fun tp!71484 () Bool)

(declare-fun mapRes!1739 () Bool)

(assert (=> b!137156 (= e!79886 (and tp!71484 mapRes!1739))))

(declare-fun condMapEmpty!1739 () Bool)

(declare-fun mapDefault!1739 () List!2268)

(assert (=> b!137156 (= condMapEmpty!1739 (= (arr!787 (_values!729 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) ((as const (Array (_ BitVec 32) List!2268)) mapDefault!1739)))))

(declare-fun res!64259 () Bool)

(assert (=> start!14416 (=> (not res!64259) (not e!79881))))

(declare-fun validCacheMapUp!28 (MutableMap!431) Bool)

(assert (=> start!14416 (= res!64259 (validCacheMapUp!28 (cache!884 thiss!28652)))))

(assert (=> start!14416 e!79881))

(declare-fun inv!2987 (CacheUp!190) Bool)

(assert (=> start!14416 (and (inv!2987 thiss!28652) e!79884)))

(declare-fun b!137157 () Bool)

(declare-fun e!79878 () Bool)

(declare-fun lt!41008 () MutLongMap!451)

(assert (=> b!137157 (= e!79880 (and e!79878 ((_ is LongMap!451) lt!41008)))))

(assert (=> b!137157 (= lt!41008 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))

(declare-fun mapIsEmpty!1739 () Bool)

(assert (=> mapIsEmpty!1739 mapRes!1739))

(declare-fun b!137158 () Bool)

(declare-fun e!79879 () Bool)

(assert (=> b!137158 (= e!79878 e!79879)))

(declare-fun b!137159 () Bool)

(assert (=> b!137159 (= e!79879 e!79882)))

(declare-fun mapNonEmpty!1739 () Bool)

(declare-fun tp!71481 () Bool)

(declare-fun tp!71482 () Bool)

(assert (=> mapNonEmpty!1739 (= mapRes!1739 (and tp!71481 tp!71482))))

(declare-fun mapRest!1739 () (Array (_ BitVec 32) List!2268))

(declare-fun mapKey!1739 () (_ BitVec 32))

(declare-fun mapValue!1739 () List!2268)

(assert (=> mapNonEmpty!1739 (= (arr!787 (_values!729 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) (store mapRest!1739 mapKey!1739 mapValue!1739))))

(assert (= (and start!14416 res!64259) b!137152))

(assert (= (and b!137156 condMapEmpty!1739) mapIsEmpty!1739))

(assert (= (and b!137156 (not condMapEmpty!1739)) mapNonEmpty!1739))

(assert (= b!137155 b!137156))

(assert (= b!137159 b!137155))

(assert (= b!137158 b!137159))

(assert (= (and b!137157 ((_ is LongMap!451) (v!13503 (underlying!1090 (cache!884 thiss!28652))))) b!137158))

(assert (= b!137153 b!137157))

(assert (= (and b!137154 ((_ is HashMap!431) (cache!884 thiss!28652))) b!137153))

(assert (= start!14416 b!137154))

(declare-fun m!121483 () Bool)

(assert (=> b!137155 m!121483))

(declare-fun m!121485 () Bool)

(assert (=> b!137155 m!121485))

(declare-fun m!121487 () Bool)

(assert (=> start!14416 m!121487))

(declare-fun m!121489 () Bool)

(assert (=> start!14416 m!121489))

(declare-fun m!121491 () Bool)

(assert (=> mapNonEmpty!1739 m!121491))

(check-sat (not b_next!4005) (not mapNonEmpty!1739) (not b_next!4007) b_and!6159 (not b!137156) (not b!137155) b_and!6157 (not start!14416))
(check-sat b_and!6157 b_and!6159 (not b_next!4007) (not b_next!4005))
(get-model)

(declare-fun d!32872 () Bool)

(declare-fun res!64264 () Bool)

(declare-fun e!79889 () Bool)

(assert (=> d!32872 (=> (not res!64264) (not e!79889))))

(declare-fun valid!406 (MutableMap!431) Bool)

(assert (=> d!32872 (= res!64264 (valid!406 (cache!884 thiss!28652)))))

(assert (=> d!32872 (= (validCacheMapUp!28 (cache!884 thiss!28652)) e!79889)))

(declare-fun b!137164 () Bool)

(declare-fun res!64265 () Bool)

(assert (=> b!137164 (=> (not res!64265) (not e!79889))))

(declare-fun invariantList!36 (List!2268) Bool)

(declare-datatypes ((ListMap!95 0))(
  ( (ListMap!96 (toList!295 List!2268)) )
))
(declare-fun map!599 (MutableMap!431) ListMap!95)

(assert (=> b!137164 (= res!64265 (invariantList!36 (toList!295 (map!599 (cache!884 thiss!28652)))))))

(declare-fun b!137165 () Bool)

(declare-fun lambda!3305 () Int)

(declare-fun forall!349 (List!2268 Int) Bool)

(assert (=> b!137165 (= e!79889 (forall!349 (toList!295 (map!599 (cache!884 thiss!28652))) lambda!3305))))

(assert (= (and d!32872 res!64264) b!137164))

(assert (= (and b!137164 res!64265) b!137165))

(declare-fun m!121494 () Bool)

(assert (=> d!32872 m!121494))

(declare-fun m!121496 () Bool)

(assert (=> b!137164 m!121496))

(declare-fun m!121498 () Bool)

(assert (=> b!137164 m!121498))

(assert (=> b!137165 m!121496))

(declare-fun m!121500 () Bool)

(assert (=> b!137165 m!121500))

(assert (=> start!14416 d!32872))

(declare-fun d!32874 () Bool)

(declare-fun res!64268 () Bool)

(declare-fun e!79892 () Bool)

(assert (=> d!32874 (=> (not res!64268) (not e!79892))))

(assert (=> d!32874 (= res!64268 ((_ is HashMap!431) (cache!884 thiss!28652)))))

(assert (=> d!32874 (= (inv!2987 thiss!28652) e!79892)))

(declare-fun b!137168 () Bool)

(assert (=> b!137168 (= e!79892 (validCacheMapUp!28 (cache!884 thiss!28652)))))

(assert (= (and d!32874 res!64268) b!137168))

(assert (=> b!137168 m!121487))

(assert (=> start!14416 d!32874))

(declare-fun d!32876 () Bool)

(assert (=> d!32876 (= (array_inv!569 (_keys!742 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) (bvsge (size!2040 (_keys!742 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) #b00000000000000000000000000000000))))

(assert (=> b!137155 d!32876))

(declare-fun d!32878 () Bool)

(assert (=> d!32878 (= (array_inv!570 (_values!729 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) (bvsge (size!2041 (_values!729 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652))))))) #b00000000000000000000000000000000))))

(assert (=> b!137155 d!32878))

(declare-fun tp!71496 () Bool)

(declare-fun e!79901 () Bool)

(declare-fun b!137177 () Bool)

(declare-fun tp_is_empty!1541 () Bool)

(declare-fun e!79899 () Bool)

(declare-fun setRes!1749 () Bool)

(declare-fun inv!2988 (Context!258) Bool)

(assert (=> b!137177 (= e!79899 (and (inv!2988 (_1!1432 (_1!1433 (h!7655 (zeroValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))))) e!79901 tp_is_empty!1541 setRes!1749 tp!71496))))

(declare-fun condSetEmpty!1749 () Bool)

(assert (=> b!137177 (= condSetEmpty!1749 (= (_2!1433 (h!7655 (zeroValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))) ((as const (Array Context!258 Bool)) false)))))

(declare-fun setElem!1749 () Context!258)

(declare-fun setNonEmpty!1749 () Bool)

(declare-fun tp!71497 () Bool)

(declare-fun e!79900 () Bool)

(assert (=> setNonEmpty!1749 (= setRes!1749 (and tp!71497 (inv!2988 setElem!1749) e!79900))))

(declare-fun setRest!1749 () (InoxSet Context!258))

(assert (=> setNonEmpty!1749 (= (_2!1433 (h!7655 (zeroValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))) ((_ map or) (store ((as const (Array Context!258 Bool)) false) setElem!1749 true) setRest!1749))))

(declare-fun b!137178 () Bool)

(declare-fun tp!71495 () Bool)

(assert (=> b!137178 (= e!79901 tp!71495)))

(declare-fun b!137179 () Bool)

(declare-fun tp!71494 () Bool)

(assert (=> b!137179 (= e!79900 tp!71494)))

(assert (=> b!137155 (= tp!71483 e!79899)))

(declare-fun setIsEmpty!1749 () Bool)

(assert (=> setIsEmpty!1749 setRes!1749))

(assert (= b!137177 b!137178))

(assert (= (and b!137177 condSetEmpty!1749) setIsEmpty!1749))

(assert (= (and b!137177 (not condSetEmpty!1749)) setNonEmpty!1749))

(assert (= setNonEmpty!1749 b!137179))

(assert (= (and b!137155 ((_ is Cons!2258) (zeroValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))) b!137177))

(declare-fun m!121502 () Bool)

(assert (=> b!137177 m!121502))

(declare-fun m!121504 () Bool)

(assert (=> setNonEmpty!1749 m!121504))

(declare-fun tp!71500 () Bool)

(declare-fun b!137180 () Bool)

(declare-fun e!79904 () Bool)

(declare-fun setRes!1750 () Bool)

(declare-fun e!79902 () Bool)

(assert (=> b!137180 (= e!79902 (and (inv!2988 (_1!1432 (_1!1433 (h!7655 (minValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))))) e!79904 tp_is_empty!1541 setRes!1750 tp!71500))))

(declare-fun condSetEmpty!1750 () Bool)

(assert (=> b!137180 (= condSetEmpty!1750 (= (_2!1433 (h!7655 (minValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))) ((as const (Array Context!258 Bool)) false)))))

(declare-fun e!79903 () Bool)

(declare-fun tp!71501 () Bool)

(declare-fun setNonEmpty!1750 () Bool)

(declare-fun setElem!1750 () Context!258)

(assert (=> setNonEmpty!1750 (= setRes!1750 (and tp!71501 (inv!2988 setElem!1750) e!79903))))

(declare-fun setRest!1750 () (InoxSet Context!258))

(assert (=> setNonEmpty!1750 (= (_2!1433 (h!7655 (minValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))) ((_ map or) (store ((as const (Array Context!258 Bool)) false) setElem!1750 true) setRest!1750))))

(declare-fun b!137181 () Bool)

(declare-fun tp!71499 () Bool)

(assert (=> b!137181 (= e!79904 tp!71499)))

(declare-fun b!137182 () Bool)

(declare-fun tp!71498 () Bool)

(assert (=> b!137182 (= e!79903 tp!71498)))

(assert (=> b!137155 (= tp!71485 e!79902)))

(declare-fun setIsEmpty!1750 () Bool)

(assert (=> setIsEmpty!1750 setRes!1750))

(assert (= b!137180 b!137181))

(assert (= (and b!137180 condSetEmpty!1750) setIsEmpty!1750))

(assert (= (and b!137180 (not condSetEmpty!1750)) setNonEmpty!1750))

(assert (= setNonEmpty!1750 b!137182))

(assert (= (and b!137155 ((_ is Cons!2258) (minValue!707 (v!13502 (underlying!1089 (v!13503 (underlying!1090 (cache!884 thiss!28652)))))))) b!137180))

(declare-fun m!121506 () Bool)

(assert (=> b!137180 m!121506))

(declare-fun m!121508 () Bool)

(assert (=> setNonEmpty!1750 m!121508))

(declare-fun e!79907 () Bool)

(declare-fun setRes!1751 () Bool)

(declare-fun tp!71504 () Bool)

(declare-fun b!137183 () Bool)

(declare-fun e!79905 () Bool)

(assert (=> b!137183 (= e!79905 (and (inv!2988 (_1!1432 (_1!1433 (h!7655 mapDefault!1739)))) e!79907 tp_is_empty!1541 setRes!1751 tp!71504))))

(declare-fun condSetEmpty!1751 () Bool)

(assert (=> b!137183 (= condSetEmpty!1751 (= (_2!1433 (h!7655 mapDefault!1739)) ((as const (Array Context!258 Bool)) false)))))

(declare-fun setNonEmpty!1751 () Bool)

(declare-fun tp!71505 () Bool)

(declare-fun setElem!1751 () Context!258)

(declare-fun e!79906 () Bool)

(assert (=> setNonEmpty!1751 (= setRes!1751 (and tp!71505 (inv!2988 setElem!1751) e!79906))))

(declare-fun setRest!1751 () (InoxSet Context!258))

(assert (=> setNonEmpty!1751 (= (_2!1433 (h!7655 mapDefault!1739)) ((_ map or) (store ((as const (Array Context!258 Bool)) false) setElem!1751 true) setRest!1751))))

(declare-fun b!137184 () Bool)

(declare-fun tp!71503 () Bool)

(assert (=> b!137184 (= e!79907 tp!71503)))

(declare-fun b!137185 () Bool)

(declare-fun tp!71502 () Bool)

(assert (=> b!137185 (= e!79906 tp!71502)))

(assert (=> b!137156 (= tp!71484 e!79905)))

(declare-fun setIsEmpty!1751 () Bool)

(assert (=> setIsEmpty!1751 setRes!1751))

(assert (= b!137183 b!137184))

(assert (= (and b!137183 condSetEmpty!1751) setIsEmpty!1751))

(assert (= (and b!137183 (not condSetEmpty!1751)) setNonEmpty!1751))

(assert (= setNonEmpty!1751 b!137185))

(assert (= (and b!137156 ((_ is Cons!2258) mapDefault!1739)) b!137183))

(declare-fun m!121510 () Bool)

(assert (=> b!137183 m!121510))

(declare-fun m!121512 () Bool)

(assert (=> setNonEmpty!1751 m!121512))

(declare-fun e!79922 () Bool)

(declare-fun setElem!1756 () Context!258)

(declare-fun tp!71524 () Bool)

(declare-fun setRes!1757 () Bool)

(declare-fun setNonEmpty!1756 () Bool)

(assert (=> setNonEmpty!1756 (= setRes!1757 (and tp!71524 (inv!2988 setElem!1756) e!79922))))

(declare-fun mapValue!1742 () List!2268)

(declare-fun setRest!1756 () (InoxSet Context!258))

(assert (=> setNonEmpty!1756 (= (_2!1433 (h!7655 mapValue!1742)) ((_ map or) (store ((as const (Array Context!258 Bool)) false) setElem!1756 true) setRest!1756))))

(declare-fun e!79923 () Bool)

(declare-fun mapDefault!1742 () List!2268)

(declare-fun e!79924 () Bool)

(declare-fun tp!71531 () Bool)

(declare-fun b!137200 () Bool)

(declare-fun setRes!1756 () Bool)

(assert (=> b!137200 (= e!79923 (and (inv!2988 (_1!1432 (_1!1433 (h!7655 mapDefault!1742)))) e!79924 tp_is_empty!1541 setRes!1756 tp!71531))))

(declare-fun condSetEmpty!1757 () Bool)

(assert (=> b!137200 (= condSetEmpty!1757 (= (_2!1433 (h!7655 mapDefault!1742)) ((as const (Array Context!258 Bool)) false)))))

(declare-fun setIsEmpty!1756 () Bool)

(assert (=> setIsEmpty!1756 setRes!1757))

(declare-fun setIsEmpty!1757 () Bool)

(assert (=> setIsEmpty!1757 setRes!1756))

(declare-fun mapNonEmpty!1742 () Bool)

(declare-fun mapRes!1742 () Bool)

(declare-fun tp!71529 () Bool)

(declare-fun e!79920 () Bool)

(assert (=> mapNonEmpty!1742 (= mapRes!1742 (and tp!71529 e!79920))))

(declare-fun mapKey!1742 () (_ BitVec 32))

(declare-fun mapRest!1742 () (Array (_ BitVec 32) List!2268))

(assert (=> mapNonEmpty!1742 (= mapRest!1739 (store mapRest!1742 mapKey!1742 mapValue!1742))))

(declare-fun b!137201 () Bool)

(declare-fun tp!71527 () Bool)

(assert (=> b!137201 (= e!79922 tp!71527)))

(declare-fun b!137202 () Bool)

(declare-fun tp!71532 () Bool)

(assert (=> b!137202 (= e!79924 tp!71532)))

(declare-fun e!79921 () Bool)

(declare-fun setElem!1757 () Context!258)

(declare-fun setNonEmpty!1757 () Bool)

(declare-fun tp!71530 () Bool)

(assert (=> setNonEmpty!1757 (= setRes!1756 (and tp!71530 (inv!2988 setElem!1757) e!79921))))

(declare-fun setRest!1757 () (InoxSet Context!258))

(assert (=> setNonEmpty!1757 (= (_2!1433 (h!7655 mapDefault!1742)) ((_ map or) (store ((as const (Array Context!258 Bool)) false) setElem!1757 true) setRest!1757))))

(declare-fun condMapEmpty!1742 () Bool)

(assert (=> mapNonEmpty!1739 (= condMapEmpty!1742 (= mapRest!1739 ((as const (Array (_ BitVec 32) List!2268)) mapDefault!1742)))))

(assert (=> mapNonEmpty!1739 (= tp!71481 (and e!79923 mapRes!1742))))

(declare-fun mapIsEmpty!1742 () Bool)

(assert (=> mapIsEmpty!1742 mapRes!1742))

(declare-fun b!137203 () Bool)

(declare-fun e!79925 () Bool)

(declare-fun tp!71528 () Bool)

(assert (=> b!137203 (= e!79925 tp!71528)))

(declare-fun b!137204 () Bool)

(declare-fun tp!71526 () Bool)

(assert (=> b!137204 (= e!79921 tp!71526)))

(declare-fun b!137205 () Bool)

(declare-fun tp!71525 () Bool)

(assert (=> b!137205 (= e!79920 (and (inv!2988 (_1!1432 (_1!1433 (h!7655 mapValue!1742)))) e!79925 tp_is_empty!1541 setRes!1757 tp!71525))))

(declare-fun condSetEmpty!1756 () Bool)

(assert (=> b!137205 (= condSetEmpty!1756 (= (_2!1433 (h!7655 mapValue!1742)) ((as const (Array Context!258 Bool)) false)))))

(assert (= (and mapNonEmpty!1739 condMapEmpty!1742) mapIsEmpty!1742))

(assert (= (and mapNonEmpty!1739 (not condMapEmpty!1742)) mapNonEmpty!1742))

(assert (= b!137205 b!137203))

(assert (= (and b!137205 condSetEmpty!1756) setIsEmpty!1756))

(assert (= (and b!137205 (not condSetEmpty!1756)) setNonEmpty!1756))

(assert (= setNonEmpty!1756 b!137201))

(assert (= (and mapNonEmpty!1742 ((_ is Cons!2258) mapValue!1742)) b!137205))

(assert (= b!137200 b!137202))

(assert (= (and b!137200 condSetEmpty!1757) setIsEmpty!1757))

(assert (= (and b!137200 (not condSetEmpty!1757)) setNonEmpty!1757))

(assert (= setNonEmpty!1757 b!137204))

(assert (= (and mapNonEmpty!1739 ((_ is Cons!2258) mapDefault!1742)) b!137200))

(declare-fun m!121514 () Bool)

(assert (=> b!137200 m!121514))

(declare-fun m!121516 () Bool)

(assert (=> setNonEmpty!1757 m!121516))

(declare-fun m!121518 () Bool)

(assert (=> b!137205 m!121518))

(declare-fun m!121520 () Bool)

(assert (=> setNonEmpty!1756 m!121520))

(declare-fun m!121522 () Bool)

(assert (=> mapNonEmpty!1742 m!121522))

(declare-fun tp!71535 () Bool)

(declare-fun e!79926 () Bool)

(declare-fun b!137206 () Bool)

(declare-fun setRes!1758 () Bool)

(declare-fun e!79928 () Bool)

(assert (=> b!137206 (= e!79926 (and (inv!2988 (_1!1432 (_1!1433 (h!7655 mapValue!1739)))) e!79928 tp_is_empty!1541 setRes!1758 tp!71535))))

(declare-fun condSetEmpty!1758 () Bool)

(assert (=> b!137206 (= condSetEmpty!1758 (= (_2!1433 (h!7655 mapValue!1739)) ((as const (Array Context!258 Bool)) false)))))

(declare-fun tp!71536 () Bool)

(declare-fun setNonEmpty!1758 () Bool)

(declare-fun e!79927 () Bool)

(declare-fun setElem!1758 () Context!258)

(assert (=> setNonEmpty!1758 (= setRes!1758 (and tp!71536 (inv!2988 setElem!1758) e!79927))))

(declare-fun setRest!1758 () (InoxSet Context!258))

(assert (=> setNonEmpty!1758 (= (_2!1433 (h!7655 mapValue!1739)) ((_ map or) (store ((as const (Array Context!258 Bool)) false) setElem!1758 true) setRest!1758))))

(declare-fun b!137207 () Bool)

(declare-fun tp!71534 () Bool)

(assert (=> b!137207 (= e!79928 tp!71534)))

(declare-fun b!137208 () Bool)

(declare-fun tp!71533 () Bool)

(assert (=> b!137208 (= e!79927 tp!71533)))

(assert (=> mapNonEmpty!1739 (= tp!71482 e!79926)))

(declare-fun setIsEmpty!1758 () Bool)

(assert (=> setIsEmpty!1758 setRes!1758))

(assert (= b!137206 b!137207))

(assert (= (and b!137206 condSetEmpty!1758) setIsEmpty!1758))

(assert (= (and b!137206 (not condSetEmpty!1758)) setNonEmpty!1758))

(assert (= setNonEmpty!1758 b!137208))

(assert (= (and mapNonEmpty!1739 ((_ is Cons!2258) mapValue!1739)) b!137206))

(declare-fun m!121524 () Bool)

(assert (=> b!137206 m!121524))

(declare-fun m!121526 () Bool)

(assert (=> setNonEmpty!1758 m!121526))

(check-sat (not b!137184) (not setNonEmpty!1750) (not b!137204) (not b_next!4005) (not b!137206) (not setNonEmpty!1749) (not b!137185) b_and!6159 tp_is_empty!1541 (not b!137181) (not b!137165) (not b!137183) (not b!137201) (not setNonEmpty!1758) (not b!137178) (not b!137200) (not b!137208) (not b!137202) (not b!137168) (not mapNonEmpty!1742) (not b!137203) (not b!137205) (not b!137177) (not d!32872) (not b_next!4007) (not setNonEmpty!1756) (not setNonEmpty!1751) (not b!137182) (not b!137179) (not b!137164) b_and!6157 (not b!137207) (not b!137180) (not setNonEmpty!1757))
(check-sat b_and!6157 b_and!6159 (not b_next!4007) (not b_next!4005))
