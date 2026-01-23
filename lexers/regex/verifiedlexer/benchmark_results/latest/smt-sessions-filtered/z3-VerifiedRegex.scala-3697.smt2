; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208612 () Bool)

(assert start!208612)

(declare-fun b!2150755 () Bool)

(declare-fun b_free!63533 () Bool)

(declare-fun b_next!64237 () Bool)

(assert (=> b!2150755 (= b_free!63533 (not b_next!64237))))

(declare-fun tp!668289 () Bool)

(declare-fun b_and!173145 () Bool)

(assert (=> b!2150755 (= tp!668289 b_and!173145)))

(declare-fun b!2150750 () Bool)

(declare-fun b_free!63535 () Bool)

(declare-fun b_next!64239 () Bool)

(assert (=> b!2150750 (= b_free!63535 (not b_next!64239))))

(declare-fun tp!668296 () Bool)

(declare-fun b_and!173147 () Bool)

(assert (=> b!2150750 (= tp!668296 b_and!173147)))

(declare-fun b!2150747 () Bool)

(declare-fun e!1375386 () Bool)

(declare-fun e!1375387 () Bool)

(declare-datatypes ((C!11868 0))(
  ( (C!11869 (val!6920 Int)) )
))
(declare-datatypes ((Regex!5861 0))(
  ( (ElementMatch!5861 (c!341194 C!11868)) (Concat!10163 (regOne!12234 Regex!5861) (regTwo!12234 Regex!5861)) (EmptyExpr!5861) (Star!5861 (reg!6190 Regex!5861)) (EmptyLang!5861) (Union!5861 (regOne!12235 Regex!5861) (regTwo!12235 Regex!5861)) )
))
(declare-datatypes ((List!24748 0))(
  ( (Nil!24664) (Cons!24664 (h!30065 Regex!5861) (t!197294 List!24748)) )
))
(declare-datatypes ((Context!2862 0))(
  ( (Context!2863 (exprs!1931 List!24748)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3654 0))(
  ( (tuple3!3655 (_1!14543 (InoxSet Context!2862)) (_2!14543 Int) (_3!2297 Int)) )
))
(declare-datatypes ((tuple2!24492 0))(
  ( (tuple2!24493 (_1!14544 tuple3!3654) (_2!14544 Int)) )
))
(declare-datatypes ((List!24749 0))(
  ( (Nil!24665) (Cons!24665 (h!30066 tuple2!24492) (t!197295 List!24749)) )
))
(declare-datatypes ((array!9781 0))(
  ( (array!9782 (arr!4368 (Array (_ BitVec 32) (_ BitVec 64))) (size!19320 (_ BitVec 32))) )
))
(declare-datatypes ((array!9783 0))(
  ( (array!9784 (arr!4369 (Array (_ BitVec 32) List!24749)) (size!19321 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5772 0))(
  ( (LongMapFixedSize!5773 (defaultEntry!3251 Int) (mask!7132 (_ BitVec 32)) (extraKeys!3134 (_ BitVec 32)) (zeroValue!3144 List!24749) (minValue!3144 List!24749) (_size!5823 (_ BitVec 32)) (_keys!3183 array!9781) (_values!3166 array!9783) (_vacant!2947 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11369 0))(
  ( (Cell!11370 (v!29226 LongMapFixedSize!5772)) )
))
(declare-datatypes ((MutLongMap!2886 0))(
  ( (LongMap!2886 (underlying!5967 Cell!11369)) (MutLongMapExt!2885 (__x!16834 Int)) )
))
(declare-fun lt!800810 () MutLongMap!2886)

(get-info :version)

(assert (=> b!2150747 (= e!1375386 (and e!1375387 ((_ is LongMap!2886) lt!800810)))))

(declare-datatypes ((List!24750 0))(
  ( (Nil!24666) (Cons!24666 (h!30067 C!11868) (t!197296 List!24750)) )
))
(declare-datatypes ((Hashable!2800 0))(
  ( (HashableExt!2799 (__x!16835 Int)) )
))
(declare-datatypes ((Cell!11371 0))(
  ( (Cell!11372 (v!29227 MutLongMap!2886)) )
))
(declare-datatypes ((MutableMap!2800 0))(
  ( (MutableMapExt!2799 (__x!16836 Int)) (HashMap!2800 (underlying!5968 Cell!11371) (hashF!4723 Hashable!2800) (_size!5824 (_ BitVec 32)) (defaultValue!2962 Int)) )
))
(declare-datatypes ((IArray!15999 0))(
  ( (IArray!16000 (innerList!8057 List!24750)) )
))
(declare-datatypes ((Conc!7997 0))(
  ( (Node!7997 (left!18942 Conc!7997) (right!19272 Conc!7997) (csize!16224 Int) (cheight!8208 Int)) (Leaf!11695 (xs!10939 IArray!15999) (csize!16225 Int)) (Empty!7997) )
))
(declare-datatypes ((BalanceConc!15756 0))(
  ( (BalanceConc!15757 (c!341195 Conc!7997)) )
))
(declare-datatypes ((CacheFurthestNullable!958 0))(
  ( (CacheFurthestNullable!959 (cache!3181 MutableMap!2800) (totalInput!3256 BalanceConc!15756)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!958)

(assert (=> b!2150747 (= lt!800810 (v!29227 (underlying!5968 (cache!3181 thiss!29110))))))

(declare-fun b!2150748 () Bool)

(declare-fun e!1375391 () Bool)

(declare-fun localTotalInput!13 () BalanceConc!15756)

(declare-fun tp!668291 () Bool)

(declare-fun inv!32499 (Conc!7997) Bool)

(assert (=> b!2150748 (= e!1375391 (and (inv!32499 (c!341195 localTotalInput!13)) tp!668291))))

(declare-fun b!2150749 () Bool)

(declare-fun res!927495 () Bool)

(declare-fun e!1375392 () Bool)

(assert (=> b!2150749 (=> (not res!927495) (not e!1375392))))

(declare-fun validCacheMapFurthestNullable!153 (MutableMap!2800 BalanceConc!15756) Bool)

(assert (=> b!2150749 (= res!927495 (validCacheMapFurthestNullable!153 (cache!3181 thiss!29110) (totalInput!3256 thiss!29110)))))

(declare-fun e!1375390 () Bool)

(assert (=> b!2150750 (= e!1375390 (and e!1375386 tp!668296))))

(declare-fun b!2150751 () Bool)

(declare-fun res!927498 () Bool)

(assert (=> b!2150751 (=> (not res!927498) (not e!1375392))))

(declare-fun e!1375383 () Bool)

(assert (=> b!2150751 (= res!927498 e!1375383)))

(declare-fun res!927496 () Bool)

(assert (=> b!2150751 (=> res!927496 e!1375383)))

(declare-fun z!514 () (InoxSet Context!2862))

(declare-fun nullableZipper!196 ((InoxSet Context!2862)) Bool)

(assert (=> b!2150751 (= res!927496 (not (nullableZipper!196 z!514)))))

(declare-fun b!2150752 () Bool)

(declare-fun e!1375380 () Bool)

(declare-fun tp!668294 () Bool)

(declare-fun mapRes!13661 () Bool)

(assert (=> b!2150752 (= e!1375380 (and tp!668294 mapRes!13661))))

(declare-fun condMapEmpty!13661 () Bool)

(declare-fun mapDefault!13661 () List!24749)

(assert (=> b!2150752 (= condMapEmpty!13661 (= (arr!4369 (_values!3166 (v!29226 (underlying!5967 (v!29227 (underlying!5968 (cache!3181 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24749)) mapDefault!13661)))))

(declare-fun b!2150754 () Bool)

(declare-fun e!1375385 () Bool)

(declare-fun e!1375389 () Bool)

(assert (=> b!2150754 (= e!1375385 e!1375389)))

(declare-fun tp!668287 () Bool)

(declare-fun tp!668290 () Bool)

(declare-fun array_inv!3132 (array!9781) Bool)

(declare-fun array_inv!3133 (array!9783) Bool)

(assert (=> b!2150755 (= e!1375389 (and tp!668289 tp!668290 tp!668287 (array_inv!3132 (_keys!3183 (v!29226 (underlying!5967 (v!29227 (underlying!5968 (cache!3181 thiss!29110))))))) (array_inv!3133 (_values!3166 (v!29226 (underlying!5967 (v!29227 (underlying!5968 (cache!3181 thiss!29110))))))) e!1375380))))

(declare-fun b!2150756 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2150756 (= e!1375383 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun e!1375381 () Bool)

(declare-fun e!1375384 () Bool)

(declare-fun b!2150757 () Bool)

(declare-fun inv!32500 (BalanceConc!15756) Bool)

(assert (=> b!2150757 (= e!1375384 (and e!1375390 (inv!32500 (totalInput!3256 thiss!29110)) e!1375381))))

(declare-fun setRes!17182 () Bool)

(declare-fun tp!668292 () Bool)

(declare-fun e!1375382 () Bool)

(declare-fun setElem!17182 () Context!2862)

(declare-fun setNonEmpty!17182 () Bool)

(declare-fun inv!32501 (Context!2862) Bool)

(assert (=> setNonEmpty!17182 (= setRes!17182 (and tp!668292 (inv!32501 setElem!17182) e!1375382))))

(declare-fun setRest!17182 () (InoxSet Context!2862))

(assert (=> setNonEmpty!17182 (= z!514 ((_ map or) (store ((as const (Array Context!2862 Bool)) false) setElem!17182 true) setRest!17182))))

(declare-fun mapIsEmpty!13661 () Bool)

(assert (=> mapIsEmpty!13661 mapRes!13661))

(declare-fun b!2150753 () Bool)

(declare-fun tp!668288 () Bool)

(assert (=> b!2150753 (= e!1375382 tp!668288)))

(declare-fun res!927497 () Bool)

(assert (=> start!208612 (=> (not res!927497) (not e!1375392))))

(assert (=> start!208612 (= res!927497 (and (= localTotalInput!13 (totalInput!3256 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208612 e!1375392))

(declare-fun condSetEmpty!17182 () Bool)

(assert (=> start!208612 (= condSetEmpty!17182 (= z!514 ((as const (Array Context!2862 Bool)) false)))))

(assert (=> start!208612 setRes!17182))

(assert (=> start!208612 true))

(declare-fun inv!32502 (CacheFurthestNullable!958) Bool)

(assert (=> start!208612 (and (inv!32502 thiss!29110) e!1375384)))

(assert (=> start!208612 (and (inv!32500 localTotalInput!13) e!1375391)))

(declare-fun b!2150758 () Bool)

(declare-fun tp!668293 () Bool)

(assert (=> b!2150758 (= e!1375381 (and (inv!32499 (c!341195 (totalInput!3256 thiss!29110))) tp!668293))))

(declare-fun mapNonEmpty!13661 () Bool)

(declare-fun tp!668297 () Bool)

(declare-fun tp!668295 () Bool)

(assert (=> mapNonEmpty!13661 (= mapRes!13661 (and tp!668297 tp!668295))))

(declare-fun mapValue!13661 () List!24749)

(declare-fun mapKey!13661 () (_ BitVec 32))

(declare-fun mapRest!13661 () (Array (_ BitVec 32) List!24749))

(assert (=> mapNonEmpty!13661 (= (arr!4369 (_values!3166 (v!29226 (underlying!5967 (v!29227 (underlying!5968 (cache!3181 thiss!29110))))))) (store mapRest!13661 mapKey!13661 mapValue!13661))))

(declare-fun setIsEmpty!17182 () Bool)

(assert (=> setIsEmpty!17182 setRes!17182))

(declare-fun b!2150759 () Bool)

(assert (=> b!2150759 (= e!1375392 (not (validCacheMapFurthestNullable!153 (cache!3181 thiss!29110) localTotalInput!13)))))

(declare-fun b!2150760 () Bool)

(assert (=> b!2150760 (= e!1375387 e!1375385)))

(assert (= (and start!208612 res!927497) b!2150751))

(assert (= (and b!2150751 (not res!927496)) b!2150756))

(assert (= (and b!2150751 res!927498) b!2150749))

(assert (= (and b!2150749 res!927495) b!2150759))

(assert (= (and start!208612 condSetEmpty!17182) setIsEmpty!17182))

(assert (= (and start!208612 (not condSetEmpty!17182)) setNonEmpty!17182))

(assert (= setNonEmpty!17182 b!2150753))

(assert (= (and b!2150752 condMapEmpty!13661) mapIsEmpty!13661))

(assert (= (and b!2150752 (not condMapEmpty!13661)) mapNonEmpty!13661))

(assert (= b!2150755 b!2150752))

(assert (= b!2150754 b!2150755))

(assert (= b!2150760 b!2150754))

(assert (= (and b!2150747 ((_ is LongMap!2886) (v!29227 (underlying!5968 (cache!3181 thiss!29110))))) b!2150760))

(assert (= b!2150750 b!2150747))

(assert (= (and b!2150757 ((_ is HashMap!2800) (cache!3181 thiss!29110))) b!2150750))

(assert (= b!2150757 b!2150758))

(assert (= start!208612 b!2150757))

(assert (= start!208612 b!2150748))

(declare-fun m!2593406 () Bool)

(assert (=> b!2150755 m!2593406))

(declare-fun m!2593408 () Bool)

(assert (=> b!2150755 m!2593408))

(declare-fun m!2593410 () Bool)

(assert (=> b!2150758 m!2593410))

(declare-fun m!2593412 () Bool)

(assert (=> b!2150751 m!2593412))

(declare-fun m!2593414 () Bool)

(assert (=> b!2150748 m!2593414))

(declare-fun m!2593416 () Bool)

(assert (=> start!208612 m!2593416))

(declare-fun m!2593418 () Bool)

(assert (=> start!208612 m!2593418))

(declare-fun m!2593420 () Bool)

(assert (=> setNonEmpty!17182 m!2593420))

(declare-fun m!2593422 () Bool)

(assert (=> mapNonEmpty!13661 m!2593422))

(declare-fun m!2593424 () Bool)

(assert (=> b!2150757 m!2593424))

(declare-fun m!2593426 () Bool)

(assert (=> b!2150759 m!2593426))

(declare-fun m!2593428 () Bool)

(assert (=> b!2150749 m!2593428))

(check-sat (not b!2150751) (not b!2150749) (not mapNonEmpty!13661) (not b!2150752) b_and!173145 (not b_next!64239) (not b!2150757) (not start!208612) (not b!2150758) (not b!2150748) b_and!173147 (not setNonEmpty!17182) (not b!2150755) (not b!2150759) (not b!2150753) (not b_next!64237))
(check-sat b_and!173147 b_and!173145 (not b_next!64237) (not b_next!64239))
