; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14442 () Bool)

(assert start!14442)

(declare-fun b!137384 () Bool)

(declare-fun b_free!4021 () Bool)

(declare-fun b_next!4021 () Bool)

(assert (=> b!137384 (= b_free!4021 (not b_next!4021))))

(declare-fun tp!71687 () Bool)

(declare-fun b_and!6173 () Bool)

(assert (=> b!137384 (= tp!71687 b_and!6173)))

(declare-fun b!137385 () Bool)

(declare-fun b_free!4023 () Bool)

(declare-fun b_next!4023 () Bool)

(assert (=> b!137385 (= b_free!4023 (not b_next!4023))))

(declare-fun tp!71683 () Bool)

(declare-fun b_and!6175 () Bool)

(assert (=> b!137385 (= tp!71683 b_and!6175)))

(declare-fun b!137378 () Bool)

(declare-fun e!80091 () Bool)

(declare-fun e!80090 () Bool)

(assert (=> b!137378 (= e!80091 e!80090)))

(declare-fun tp!71684 () Bool)

(declare-fun setRes!1776 () Bool)

(declare-fun setNonEmpty!1776 () Bool)

(declare-datatypes ((C!2108 0))(
  ( (C!2109 (val!940 Int)) )
))
(declare-datatypes ((Regex!593 0))(
  ( (ElementMatch!593 (c!29035 C!2108)) (Concat!989 (regOne!1698 Regex!593) (regTwo!1698 Regex!593)) (EmptyExpr!593) (Star!593 (reg!922 Regex!593)) (EmptyLang!593) (Union!593 (regOne!1699 Regex!593) (regTwo!1699 Regex!593)) )
))
(declare-datatypes ((List!2277 0))(
  ( (Nil!2267) (Cons!2267 (h!7664 Regex!593) (t!22863 List!2277)) )
))
(declare-datatypes ((Context!266 0))(
  ( (Context!267 (exprs!633 List!2277)) )
))
(declare-fun setElem!1776 () Context!266)

(declare-fun e!80089 () Bool)

(declare-fun inv!3000 (Context!266) Bool)

(assert (=> setNonEmpty!1776 (= setRes!1776 (and tp!71684 (inv!3000 setElem!1776) e!80089))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!523 () (InoxSet Context!266))

(declare-fun setRest!1776 () (InoxSet Context!266))

(assert (=> setNonEmpty!1776 (= z!523 ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1776 true) setRest!1776))))

(declare-fun b!137379 () Bool)

(declare-fun e!80095 () Bool)

(declare-datatypes ((List!2278 0))(
  ( (Nil!2268) (Cons!2268 (h!7665 C!2108) (t!22864 List!2278)) )
))
(declare-datatypes ((IArray!1199 0))(
  ( (IArray!1200 (innerList!657 List!2278)) )
))
(declare-datatypes ((Conc!599 0))(
  ( (Node!599 (left!1766 Conc!599) (right!2096 Conc!599) (csize!1428 Int) (cheight!810 Int)) (Leaf!1123 (xs!3194 IArray!1199) (csize!1429 Int)) (Empty!599) )
))
(declare-datatypes ((BalanceConc!1206 0))(
  ( (BalanceConc!1207 (c!29036 Conc!599)) )
))
(declare-datatypes ((tuple3!332 0))(
  ( (tuple3!333 (_1!1441 (InoxSet Context!266)) (_2!1441 Int) (_3!211 Int)) )
))
(declare-datatypes ((array!1717 0))(
  ( (array!1718 (arr!794 (Array (_ BitVec 32) (_ BitVec 64))) (size!2048 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2460 0))(
  ( (tuple2!2461 (_1!1442 tuple3!332) (_2!1442 Int)) )
))
(declare-datatypes ((List!2279 0))(
  ( (Nil!2269) (Cons!2269 (h!7666 tuple2!2460) (t!22865 List!2279)) )
))
(declare-datatypes ((array!1719 0))(
  ( (array!1720 (arr!795 (Array (_ BitVec 32) List!2279)) (size!2049 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!910 0))(
  ( (LongMapFixedSize!911 (defaultEntry!802 Int) (mask!1503 (_ BitVec 32)) (extraKeys!701 (_ BitVec 32)) (zeroValue!711 List!2279) (minValue!711 List!2279) (_size!1027 (_ BitVec 32)) (_keys!746 array!1717) (_values!733 array!1719) (_vacant!516 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1777 0))(
  ( (Cell!1778 (v!13510 LongMapFixedSize!910)) )
))
(declare-datatypes ((MutLongMap!455 0))(
  ( (LongMap!455 (underlying!1097 Cell!1777)) (MutLongMapExt!454 (__x!2270 Int)) )
))
(declare-datatypes ((Cell!1779 0))(
  ( (Cell!1780 (v!13511 MutLongMap!455)) )
))
(declare-datatypes ((Hashable!435 0))(
  ( (HashableExt!434 (__x!2271 Int)) )
))
(declare-datatypes ((MutableMap!435 0))(
  ( (MutableMapExt!434 (__x!2272 Int)) (HashMap!435 (underlying!1098 Cell!1779) (hashF!2311 Hashable!435) (_size!1028 (_ BitVec 32)) (defaultValue!584 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!130 0))(
  ( (CacheFurthestNullable!131 (cache!888 MutableMap!435) (totalInput!1613 BalanceConc!1206)) )
))
(declare-fun thiss!29168 () CacheFurthestNullable!130)

(declare-fun tp!71682 () Bool)

(declare-fun inv!3001 (Conc!599) Bool)

(assert (=> b!137379 (= e!80095 (and (inv!3001 (c!29036 (totalInput!1613 thiss!29168))) tp!71682))))

(declare-fun b!137380 () Bool)

(declare-fun e!80092 () Bool)

(get-info :version)

(assert (=> b!137380 (= e!80092 (not ((_ is HashMap!435) (cache!888 thiss!29168))))))

(declare-fun b!137381 () Bool)

(declare-fun e!80099 () Bool)

(assert (=> b!137381 (= e!80099 e!80091)))

(declare-fun b!137382 () Bool)

(declare-fun e!80096 () Bool)

(declare-fun lastNullablePos!98 () Int)

(declare-fun from!959 () Int)

(assert (=> b!137382 (= e!80096 (= lastNullablePos!98 (- from!959 1)))))

(declare-fun mapIsEmpty!1757 () Bool)

(declare-fun mapRes!1757 () Bool)

(assert (=> mapIsEmpty!1757 mapRes!1757))

(declare-fun tp!71685 () Bool)

(declare-fun tp!71686 () Bool)

(declare-fun e!80093 () Bool)

(declare-fun array_inv!573 (array!1717) Bool)

(declare-fun array_inv!574 (array!1719) Bool)

(assert (=> b!137384 (= e!80090 (and tp!71687 tp!71685 tp!71686 (array_inv!573 (_keys!746 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) (array_inv!574 (_values!733 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) e!80093))))

(declare-fun setIsEmpty!1776 () Bool)

(assert (=> setIsEmpty!1776 setRes!1776))

(declare-fun e!80094 () Bool)

(declare-fun e!80088 () Bool)

(assert (=> b!137385 (= e!80094 (and e!80088 tp!71683))))

(declare-fun b!137386 () Bool)

(declare-fun tp!71680 () Bool)

(assert (=> b!137386 (= e!80089 tp!71680)))

(declare-fun e!80098 () Bool)

(declare-fun b!137387 () Bool)

(declare-fun inv!3002 (BalanceConc!1206) Bool)

(assert (=> b!137387 (= e!80098 (and e!80094 (inv!3002 (totalInput!1613 thiss!29168)) e!80095))))

(declare-fun b!137388 () Bool)

(declare-fun tp!71681 () Bool)

(assert (=> b!137388 (= e!80093 (and tp!71681 mapRes!1757))))

(declare-fun condMapEmpty!1757 () Bool)

(declare-fun mapDefault!1757 () List!2279)

(assert (=> b!137388 (= condMapEmpty!1757 (= (arr!795 (_values!733 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) ((as const (Array (_ BitVec 32) List!2279)) mapDefault!1757)))))

(declare-fun b!137389 () Bool)

(declare-fun lt!41020 () MutLongMap!455)

(assert (=> b!137389 (= e!80088 (and e!80099 ((_ is LongMap!455) lt!41020)))))

(assert (=> b!137389 (= lt!41020 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))

(declare-fun mapNonEmpty!1757 () Bool)

(declare-fun tp!71689 () Bool)

(declare-fun tp!71688 () Bool)

(assert (=> mapNonEmpty!1757 (= mapRes!1757 (and tp!71689 tp!71688))))

(declare-fun mapValue!1757 () List!2279)

(declare-fun mapRest!1757 () (Array (_ BitVec 32) List!2279))

(declare-fun mapKey!1757 () (_ BitVec 32))

(assert (=> mapNonEmpty!1757 (= (arr!795 (_values!733 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) (store mapRest!1757 mapKey!1757 mapValue!1757))))

(declare-fun b!137383 () Bool)

(declare-fun res!64311 () Bool)

(assert (=> b!137383 (=> (not res!64311) (not e!80092))))

(assert (=> b!137383 (= res!64311 e!80096)))

(declare-fun res!64312 () Bool)

(assert (=> b!137383 (=> res!64312 e!80096)))

(declare-fun nullableZipper!7 ((InoxSet Context!266)) Bool)

(assert (=> b!137383 (= res!64312 (not (nullableZipper!7 z!523)))))

(declare-fun res!64313 () Bool)

(assert (=> start!14442 (=> (not res!64313) (not e!80092))))

(assert (=> start!14442 (= res!64313 (and (>= lastNullablePos!98 (- 1)) (< lastNullablePos!98 from!959)))))

(assert (=> start!14442 e!80092))

(assert (=> start!14442 true))

(declare-fun condSetEmpty!1776 () Bool)

(assert (=> start!14442 (= condSetEmpty!1776 (= z!523 ((as const (Array Context!266 Bool)) false)))))

(assert (=> start!14442 setRes!1776))

(declare-fun inv!3003 (CacheFurthestNullable!130) Bool)

(assert (=> start!14442 (and (inv!3003 thiss!29168) e!80098)))

(assert (= (and start!14442 res!64313) b!137383))

(assert (= (and b!137383 (not res!64312)) b!137382))

(assert (= (and b!137383 res!64311) b!137380))

(assert (= (and start!14442 condSetEmpty!1776) setIsEmpty!1776))

(assert (= (and start!14442 (not condSetEmpty!1776)) setNonEmpty!1776))

(assert (= setNonEmpty!1776 b!137386))

(assert (= (and b!137388 condMapEmpty!1757) mapIsEmpty!1757))

(assert (= (and b!137388 (not condMapEmpty!1757)) mapNonEmpty!1757))

(assert (= b!137384 b!137388))

(assert (= b!137378 b!137384))

(assert (= b!137381 b!137378))

(assert (= (and b!137389 ((_ is LongMap!455) (v!13511 (underlying!1098 (cache!888 thiss!29168))))) b!137381))

(assert (= b!137385 b!137389))

(assert (= (and b!137387 ((_ is HashMap!435) (cache!888 thiss!29168))) b!137385))

(assert (= b!137387 b!137379))

(assert (= start!14442 b!137387))

(declare-fun m!121609 () Bool)

(assert (=> b!137383 m!121609))

(declare-fun m!121611 () Bool)

(assert (=> setNonEmpty!1776 m!121611))

(declare-fun m!121613 () Bool)

(assert (=> start!14442 m!121613))

(declare-fun m!121615 () Bool)

(assert (=> b!137387 m!121615))

(declare-fun m!121617 () Bool)

(assert (=> b!137384 m!121617))

(declare-fun m!121619 () Bool)

(assert (=> b!137384 m!121619))

(declare-fun m!121621 () Bool)

(assert (=> mapNonEmpty!1757 m!121621))

(declare-fun m!121623 () Bool)

(assert (=> b!137379 m!121623))

(check-sat (not b!137388) (not b!137379) (not b_next!4023) (not start!14442) (not b_next!4021) b_and!6173 (not b!137387) (not mapNonEmpty!1757) (not b!137383) b_and!6175 (not b!137386) (not b!137384) (not setNonEmpty!1776))
(check-sat b_and!6173 b_and!6175 (not b_next!4023) (not b_next!4021))
(get-model)

(declare-fun d!32892 () Bool)

(declare-fun isBalanced!180 (Conc!599) Bool)

(assert (=> d!32892 (= (inv!3002 (totalInput!1613 thiss!29168)) (isBalanced!180 (c!29036 (totalInput!1613 thiss!29168))))))

(declare-fun bs!12788 () Bool)

(assert (= bs!12788 d!32892))

(declare-fun m!121625 () Bool)

(assert (=> bs!12788 m!121625))

(assert (=> b!137387 d!32892))

(declare-fun d!32894 () Bool)

(declare-fun lambda!3314 () Int)

(declare-fun forall!352 (List!2277 Int) Bool)

(assert (=> d!32894 (= (inv!3000 setElem!1776) (forall!352 (exprs!633 setElem!1776) lambda!3314))))

(declare-fun bs!12789 () Bool)

(assert (= bs!12789 d!32894))

(declare-fun m!121627 () Bool)

(assert (=> bs!12789 m!121627))

(assert (=> setNonEmpty!1776 d!32894))

(declare-fun d!32896 () Bool)

(declare-fun lambda!3317 () Int)

(declare-fun exists!44 ((InoxSet Context!266) Int) Bool)

(assert (=> d!32896 (= (nullableZipper!7 z!523) (exists!44 z!523 lambda!3317))))

(declare-fun bs!12790 () Bool)

(assert (= bs!12790 d!32896))

(declare-fun m!121629 () Bool)

(assert (=> bs!12790 m!121629))

(assert (=> b!137383 d!32896))

(declare-fun d!32898 () Bool)

(declare-fun res!64316 () Bool)

(declare-fun e!80102 () Bool)

(assert (=> d!32898 (=> (not res!64316) (not e!80102))))

(assert (=> d!32898 (= res!64316 ((_ is HashMap!435) (cache!888 thiss!29168)))))

(assert (=> d!32898 (= (inv!3003 thiss!29168) e!80102)))

(declare-fun b!137392 () Bool)

(declare-fun validCacheMapFurthestNullable!20 (MutableMap!435 BalanceConc!1206) Bool)

(assert (=> b!137392 (= e!80102 (validCacheMapFurthestNullable!20 (cache!888 thiss!29168) (totalInput!1613 thiss!29168)))))

(assert (= (and d!32898 res!64316) b!137392))

(declare-fun m!121631 () Bool)

(assert (=> b!137392 m!121631))

(assert (=> start!14442 d!32898))

(declare-fun d!32900 () Bool)

(assert (=> d!32900 (= (array_inv!573 (_keys!746 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) (bvsge (size!2048 (_keys!746 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) #b00000000000000000000000000000000))))

(assert (=> b!137384 d!32900))

(declare-fun d!32902 () Bool)

(assert (=> d!32902 (= (array_inv!574 (_values!733 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) (bvsge (size!2049 (_values!733 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))) #b00000000000000000000000000000000))))

(assert (=> b!137384 d!32902))

(declare-fun d!32904 () Bool)

(declare-fun c!29041 () Bool)

(assert (=> d!32904 (= c!29041 ((_ is Node!599) (c!29036 (totalInput!1613 thiss!29168))))))

(declare-fun e!80107 () Bool)

(assert (=> d!32904 (= (inv!3001 (c!29036 (totalInput!1613 thiss!29168))) e!80107)))

(declare-fun b!137399 () Bool)

(declare-fun inv!3004 (Conc!599) Bool)

(assert (=> b!137399 (= e!80107 (inv!3004 (c!29036 (totalInput!1613 thiss!29168))))))

(declare-fun b!137400 () Bool)

(declare-fun e!80108 () Bool)

(assert (=> b!137400 (= e!80107 e!80108)))

(declare-fun res!64319 () Bool)

(assert (=> b!137400 (= res!64319 (not ((_ is Leaf!1123) (c!29036 (totalInput!1613 thiss!29168)))))))

(assert (=> b!137400 (=> res!64319 e!80108)))

(declare-fun b!137401 () Bool)

(declare-fun inv!3005 (Conc!599) Bool)

(assert (=> b!137401 (= e!80108 (inv!3005 (c!29036 (totalInput!1613 thiss!29168))))))

(assert (= (and d!32904 c!29041) b!137399))

(assert (= (and d!32904 (not c!29041)) b!137400))

(assert (= (and b!137400 (not res!64319)) b!137401))

(declare-fun m!121633 () Bool)

(assert (=> b!137399 m!121633))

(declare-fun m!121635 () Bool)

(assert (=> b!137401 m!121635))

(assert (=> b!137379 d!32904))

(declare-fun condMapEmpty!1760 () Bool)

(declare-fun mapDefault!1760 () List!2279)

(assert (=> mapNonEmpty!1757 (= condMapEmpty!1760 (= mapRest!1757 ((as const (Array (_ BitVec 32) List!2279)) mapDefault!1760)))))

(declare-fun e!80120 () Bool)

(declare-fun mapRes!1760 () Bool)

(assert (=> mapNonEmpty!1757 (= tp!71689 (and e!80120 mapRes!1760))))

(declare-fun setIsEmpty!1781 () Bool)

(declare-fun setRes!1781 () Bool)

(assert (=> setIsEmpty!1781 setRes!1781))

(declare-fun setNonEmpty!1781 () Bool)

(declare-fun setElem!1781 () Context!266)

(declare-fun tp!71705 () Bool)

(declare-fun e!80117 () Bool)

(assert (=> setNonEmpty!1781 (= setRes!1781 (and tp!71705 (inv!3000 setElem!1781) e!80117))))

(declare-fun setRest!1781 () (InoxSet Context!266))

(assert (=> setNonEmpty!1781 (= (_1!1441 (_1!1442 (h!7666 mapDefault!1760))) ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1781 true) setRest!1781))))

(declare-fun mapNonEmpty!1760 () Bool)

(declare-fun tp!71707 () Bool)

(declare-fun e!80119 () Bool)

(assert (=> mapNonEmpty!1760 (= mapRes!1760 (and tp!71707 e!80119))))

(declare-fun mapValue!1760 () List!2279)

(declare-fun mapKey!1760 () (_ BitVec 32))

(declare-fun mapRest!1760 () (Array (_ BitVec 32) List!2279))

(assert (=> mapNonEmpty!1760 (= mapRest!1757 (store mapRest!1760 mapKey!1760 mapValue!1760))))

(declare-fun b!137412 () Bool)

(declare-fun setRes!1782 () Bool)

(declare-fun tp!71706 () Bool)

(assert (=> b!137412 (= e!80119 (and setRes!1782 tp!71706))))

(declare-fun condSetEmpty!1781 () Bool)

(assert (=> b!137412 (= condSetEmpty!1781 (= (_1!1441 (_1!1442 (h!7666 mapValue!1760))) ((as const (Array Context!266 Bool)) false)))))

(declare-fun e!80118 () Bool)

(declare-fun setNonEmpty!1782 () Bool)

(declare-fun setElem!1782 () Context!266)

(declare-fun tp!71704 () Bool)

(assert (=> setNonEmpty!1782 (= setRes!1782 (and tp!71704 (inv!3000 setElem!1782) e!80118))))

(declare-fun setRest!1782 () (InoxSet Context!266))

(assert (=> setNonEmpty!1782 (= (_1!1441 (_1!1442 (h!7666 mapValue!1760))) ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1782 true) setRest!1782))))

(declare-fun b!137413 () Bool)

(declare-fun tp!71709 () Bool)

(assert (=> b!137413 (= e!80120 (and setRes!1781 tp!71709))))

(declare-fun condSetEmpty!1782 () Bool)

(assert (=> b!137413 (= condSetEmpty!1782 (= (_1!1441 (_1!1442 (h!7666 mapDefault!1760))) ((as const (Array Context!266 Bool)) false)))))

(declare-fun mapIsEmpty!1760 () Bool)

(assert (=> mapIsEmpty!1760 mapRes!1760))

(declare-fun setIsEmpty!1782 () Bool)

(assert (=> setIsEmpty!1782 setRes!1782))

(declare-fun b!137414 () Bool)

(declare-fun tp!71708 () Bool)

(assert (=> b!137414 (= e!80118 tp!71708)))

(declare-fun b!137415 () Bool)

(declare-fun tp!71710 () Bool)

(assert (=> b!137415 (= e!80117 tp!71710)))

(assert (= (and mapNonEmpty!1757 condMapEmpty!1760) mapIsEmpty!1760))

(assert (= (and mapNonEmpty!1757 (not condMapEmpty!1760)) mapNonEmpty!1760))

(assert (= (and b!137412 condSetEmpty!1781) setIsEmpty!1782))

(assert (= (and b!137412 (not condSetEmpty!1781)) setNonEmpty!1782))

(assert (= setNonEmpty!1782 b!137414))

(assert (= (and mapNonEmpty!1760 ((_ is Cons!2269) mapValue!1760)) b!137412))

(assert (= (and b!137413 condSetEmpty!1782) setIsEmpty!1781))

(assert (= (and b!137413 (not condSetEmpty!1782)) setNonEmpty!1781))

(assert (= setNonEmpty!1781 b!137415))

(assert (= (and mapNonEmpty!1757 ((_ is Cons!2269) mapDefault!1760)) b!137413))

(declare-fun m!121637 () Bool)

(assert (=> setNonEmpty!1781 m!121637))

(declare-fun m!121639 () Bool)

(assert (=> mapNonEmpty!1760 m!121639))

(declare-fun m!121641 () Bool)

(assert (=> setNonEmpty!1782 m!121641))

(declare-fun b!137423 () Bool)

(declare-fun e!80125 () Bool)

(declare-fun tp!71718 () Bool)

(assert (=> b!137423 (= e!80125 tp!71718)))

(declare-fun setRes!1785 () Bool)

(declare-fun setElem!1785 () Context!266)

(declare-fun tp!71717 () Bool)

(declare-fun setNonEmpty!1785 () Bool)

(assert (=> setNonEmpty!1785 (= setRes!1785 (and tp!71717 (inv!3000 setElem!1785) e!80125))))

(declare-fun setRest!1785 () (InoxSet Context!266))

(assert (=> setNonEmpty!1785 (= (_1!1441 (_1!1442 (h!7666 mapValue!1757))) ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1785 true) setRest!1785))))

(declare-fun b!137422 () Bool)

(declare-fun e!80126 () Bool)

(declare-fun tp!71719 () Bool)

(assert (=> b!137422 (= e!80126 (and setRes!1785 tp!71719))))

(declare-fun condSetEmpty!1785 () Bool)

(assert (=> b!137422 (= condSetEmpty!1785 (= (_1!1441 (_1!1442 (h!7666 mapValue!1757))) ((as const (Array Context!266 Bool)) false)))))

(assert (=> mapNonEmpty!1757 (= tp!71688 e!80126)))

(declare-fun setIsEmpty!1785 () Bool)

(assert (=> setIsEmpty!1785 setRes!1785))

(assert (= (and b!137422 condSetEmpty!1785) setIsEmpty!1785))

(assert (= (and b!137422 (not condSetEmpty!1785)) setNonEmpty!1785))

(assert (= setNonEmpty!1785 b!137423))

(assert (= (and mapNonEmpty!1757 ((_ is Cons!2269) mapValue!1757)) b!137422))

(declare-fun m!121643 () Bool)

(assert (=> setNonEmpty!1785 m!121643))

(declare-fun b!137428 () Bool)

(declare-fun e!80129 () Bool)

(declare-fun tp!71724 () Bool)

(declare-fun tp!71725 () Bool)

(assert (=> b!137428 (= e!80129 (and tp!71724 tp!71725))))

(assert (=> b!137386 (= tp!71680 e!80129)))

(assert (= (and b!137386 ((_ is Cons!2267) (exprs!633 setElem!1776))) b!137428))

(declare-fun condSetEmpty!1788 () Bool)

(assert (=> setNonEmpty!1776 (= condSetEmpty!1788 (= setRest!1776 ((as const (Array Context!266 Bool)) false)))))

(declare-fun setRes!1788 () Bool)

(assert (=> setNonEmpty!1776 (= tp!71684 setRes!1788)))

(declare-fun setIsEmpty!1788 () Bool)

(assert (=> setIsEmpty!1788 setRes!1788))

(declare-fun setNonEmpty!1788 () Bool)

(declare-fun e!80132 () Bool)

(declare-fun setElem!1788 () Context!266)

(declare-fun tp!71731 () Bool)

(assert (=> setNonEmpty!1788 (= setRes!1788 (and tp!71731 (inv!3000 setElem!1788) e!80132))))

(declare-fun setRest!1788 () (InoxSet Context!266))

(assert (=> setNonEmpty!1788 (= setRest!1776 ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1788 true) setRest!1788))))

(declare-fun b!137433 () Bool)

(declare-fun tp!71730 () Bool)

(assert (=> b!137433 (= e!80132 tp!71730)))

(assert (= (and setNonEmpty!1776 condSetEmpty!1788) setIsEmpty!1788))

(assert (= (and setNonEmpty!1776 (not condSetEmpty!1788)) setNonEmpty!1788))

(assert (= setNonEmpty!1788 b!137433))

(declare-fun m!121645 () Bool)

(assert (=> setNonEmpty!1788 m!121645))

(declare-fun b!137435 () Bool)

(declare-fun e!80133 () Bool)

(declare-fun tp!71733 () Bool)

(assert (=> b!137435 (= e!80133 tp!71733)))

(declare-fun setRes!1789 () Bool)

(declare-fun tp!71732 () Bool)

(declare-fun setElem!1789 () Context!266)

(declare-fun setNonEmpty!1789 () Bool)

(assert (=> setNonEmpty!1789 (= setRes!1789 (and tp!71732 (inv!3000 setElem!1789) e!80133))))

(declare-fun setRest!1789 () (InoxSet Context!266))

(assert (=> setNonEmpty!1789 (= (_1!1441 (_1!1442 (h!7666 (zeroValue!711 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))))) ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1789 true) setRest!1789))))

(declare-fun b!137434 () Bool)

(declare-fun e!80134 () Bool)

(declare-fun tp!71734 () Bool)

(assert (=> b!137434 (= e!80134 (and setRes!1789 tp!71734))))

(declare-fun condSetEmpty!1789 () Bool)

(assert (=> b!137434 (= condSetEmpty!1789 (= (_1!1441 (_1!1442 (h!7666 (zeroValue!711 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))))) ((as const (Array Context!266 Bool)) false)))))

(assert (=> b!137384 (= tp!71685 e!80134)))

(declare-fun setIsEmpty!1789 () Bool)

(assert (=> setIsEmpty!1789 setRes!1789))

(assert (= (and b!137434 condSetEmpty!1789) setIsEmpty!1789))

(assert (= (and b!137434 (not condSetEmpty!1789)) setNonEmpty!1789))

(assert (= setNonEmpty!1789 b!137435))

(assert (= (and b!137384 ((_ is Cons!2269) (zeroValue!711 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168)))))))) b!137434))

(declare-fun m!121647 () Bool)

(assert (=> setNonEmpty!1789 m!121647))

(declare-fun b!137437 () Bool)

(declare-fun e!80135 () Bool)

(declare-fun tp!71736 () Bool)

(assert (=> b!137437 (= e!80135 tp!71736)))

(declare-fun setNonEmpty!1790 () Bool)

(declare-fun setRes!1790 () Bool)

(declare-fun tp!71735 () Bool)

(declare-fun setElem!1790 () Context!266)

(assert (=> setNonEmpty!1790 (= setRes!1790 (and tp!71735 (inv!3000 setElem!1790) e!80135))))

(declare-fun setRest!1790 () (InoxSet Context!266))

(assert (=> setNonEmpty!1790 (= (_1!1441 (_1!1442 (h!7666 (minValue!711 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))))) ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1790 true) setRest!1790))))

(declare-fun b!137436 () Bool)

(declare-fun e!80136 () Bool)

(declare-fun tp!71737 () Bool)

(assert (=> b!137436 (= e!80136 (and setRes!1790 tp!71737))))

(declare-fun condSetEmpty!1790 () Bool)

(assert (=> b!137436 (= condSetEmpty!1790 (= (_1!1441 (_1!1442 (h!7666 (minValue!711 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168))))))))) ((as const (Array Context!266 Bool)) false)))))

(assert (=> b!137384 (= tp!71686 e!80136)))

(declare-fun setIsEmpty!1790 () Bool)

(assert (=> setIsEmpty!1790 setRes!1790))

(assert (= (and b!137436 condSetEmpty!1790) setIsEmpty!1790))

(assert (= (and b!137436 (not condSetEmpty!1790)) setNonEmpty!1790))

(assert (= setNonEmpty!1790 b!137437))

(assert (= (and b!137384 ((_ is Cons!2269) (minValue!711 (v!13510 (underlying!1097 (v!13511 (underlying!1098 (cache!888 thiss!29168)))))))) b!137436))

(declare-fun m!121649 () Bool)

(assert (=> setNonEmpty!1790 m!121649))

(declare-fun b!137439 () Bool)

(declare-fun e!80137 () Bool)

(declare-fun tp!71739 () Bool)

(assert (=> b!137439 (= e!80137 tp!71739)))

(declare-fun setElem!1791 () Context!266)

(declare-fun tp!71738 () Bool)

(declare-fun setNonEmpty!1791 () Bool)

(declare-fun setRes!1791 () Bool)

(assert (=> setNonEmpty!1791 (= setRes!1791 (and tp!71738 (inv!3000 setElem!1791) e!80137))))

(declare-fun setRest!1791 () (InoxSet Context!266))

(assert (=> setNonEmpty!1791 (= (_1!1441 (_1!1442 (h!7666 mapDefault!1757))) ((_ map or) (store ((as const (Array Context!266 Bool)) false) setElem!1791 true) setRest!1791))))

(declare-fun b!137438 () Bool)

(declare-fun e!80138 () Bool)

(declare-fun tp!71740 () Bool)

(assert (=> b!137438 (= e!80138 (and setRes!1791 tp!71740))))

(declare-fun condSetEmpty!1791 () Bool)

(assert (=> b!137438 (= condSetEmpty!1791 (= (_1!1441 (_1!1442 (h!7666 mapDefault!1757))) ((as const (Array Context!266 Bool)) false)))))

(assert (=> b!137388 (= tp!71681 e!80138)))

(declare-fun setIsEmpty!1791 () Bool)

(assert (=> setIsEmpty!1791 setRes!1791))

(assert (= (and b!137438 condSetEmpty!1791) setIsEmpty!1791))

(assert (= (and b!137438 (not condSetEmpty!1791)) setNonEmpty!1791))

(assert (= setNonEmpty!1791 b!137439))

(assert (= (and b!137388 ((_ is Cons!2269) mapDefault!1757)) b!137438))

(declare-fun m!121651 () Bool)

(assert (=> setNonEmpty!1791 m!121651))

(declare-fun b!137448 () Bool)

(declare-fun e!80143 () Bool)

(declare-fun tp!71747 () Bool)

(declare-fun tp!71749 () Bool)

(assert (=> b!137448 (= e!80143 (and (inv!3001 (left!1766 (c!29036 (totalInput!1613 thiss!29168)))) tp!71749 (inv!3001 (right!2096 (c!29036 (totalInput!1613 thiss!29168)))) tp!71747))))

(declare-fun b!137450 () Bool)

(declare-fun e!80144 () Bool)

(declare-fun tp!71748 () Bool)

(assert (=> b!137450 (= e!80144 tp!71748)))

(declare-fun b!137449 () Bool)

(declare-fun inv!3006 (IArray!1199) Bool)

(assert (=> b!137449 (= e!80143 (and (inv!3006 (xs!3194 (c!29036 (totalInput!1613 thiss!29168)))) e!80144))))

(assert (=> b!137379 (= tp!71682 (and (inv!3001 (c!29036 (totalInput!1613 thiss!29168))) e!80143))))

(assert (= (and b!137379 ((_ is Node!599) (c!29036 (totalInput!1613 thiss!29168)))) b!137448))

(assert (= b!137449 b!137450))

(assert (= (and b!137379 ((_ is Leaf!1123) (c!29036 (totalInput!1613 thiss!29168)))) b!137449))

(declare-fun m!121653 () Bool)

(assert (=> b!137448 m!121653))

(declare-fun m!121655 () Bool)

(assert (=> b!137448 m!121655))

(declare-fun m!121657 () Bool)

(assert (=> b!137449 m!121657))

(assert (=> b!137379 m!121623))

(check-sat (not b!137379) (not b_next!4023) (not setNonEmpty!1789) (not b!137423) (not b!137439) (not b_next!4021) b_and!6173 (not setNonEmpty!1788) (not b!137412) (not d!32892) (not b!137392) (not b!137449) (not d!32894) (not b!137414) (not b!137413) (not d!32896) b_and!6175 (not b!137434) (not b!137399) (not setNonEmpty!1781) (not b!137415) (not b!137448) (not b!137450) (not b!137437) (not mapNonEmpty!1760) (not b!137422) (not setNonEmpty!1785) (not b!137428) (not setNonEmpty!1782) (not b!137433) (not setNonEmpty!1791) (not setNonEmpty!1790) (not b!137438) (not b!137436) (not b!137401) (not b!137435))
(check-sat b_and!6173 b_and!6175 (not b_next!4023) (not b_next!4021))
