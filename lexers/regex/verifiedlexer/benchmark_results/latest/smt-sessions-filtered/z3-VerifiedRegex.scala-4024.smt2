; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217728 () Bool)

(assert start!217728)

(declare-fun b!2233547 () Bool)

(declare-fun b_free!64769 () Bool)

(declare-fun b_next!65473 () Bool)

(assert (=> b!2233547 (= b_free!64769 (not b_next!65473))))

(declare-fun tp!701087 () Bool)

(declare-fun b_and!174757 () Bool)

(assert (=> b!2233547 (= tp!701087 b_and!174757)))

(declare-fun b!2233543 () Bool)

(declare-fun b_free!64771 () Bool)

(declare-fun b_next!65475 () Bool)

(assert (=> b!2233543 (= b_free!64771 (not b_next!65475))))

(declare-fun tp!701086 () Bool)

(declare-fun b_and!174759 () Bool)

(assert (=> b!2233543 (= tp!701086 b_and!174759)))

(declare-fun b!2233542 () Bool)

(declare-fun e!1427443 () Bool)

(declare-fun tp!701085 () Bool)

(declare-fun mapRes!14474 () Bool)

(assert (=> b!2233542 (= e!1427443 (and tp!701085 mapRes!14474))))

(declare-fun condMapEmpty!14474 () Bool)

(declare-datatypes ((C!13024 0))(
  ( (C!13025 (val!7560 Int)) )
))
(declare-datatypes ((Regex!6439 0))(
  ( (ElementMatch!6439 (c!356104 C!13024)) (Concat!10777 (regOne!13390 Regex!6439) (regTwo!13390 Regex!6439)) (EmptyExpr!6439) (Star!6439 (reg!6768 Regex!6439)) (EmptyLang!6439) (Union!6439 (regOne!13391 Regex!6439) (regTwo!13391 Regex!6439)) )
))
(declare-datatypes ((List!26350 0))(
  ( (Nil!26256) (Cons!26256 (h!31657 Regex!6439) (t!199770 List!26350)) )
))
(declare-datatypes ((Context!3974 0))(
  ( (Context!3975 (exprs!2487 List!26350)) )
))
(declare-datatypes ((tuple3!3950 0))(
  ( (tuple3!3951 (_1!15253 Regex!6439) (_2!15253 Context!3974) (_3!2445 C!13024)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25616 0))(
  ( (tuple2!25617 (_1!15254 tuple3!3950) (_2!15254 (InoxSet Context!3974))) )
))
(declare-datatypes ((List!26351 0))(
  ( (Nil!26257) (Cons!26257 (h!31658 tuple2!25616) (t!199771 List!26351)) )
))
(declare-datatypes ((array!10670 0))(
  ( (array!10671 (arr!4741 (Array (_ BitVec 32) (_ BitVec 64))) (size!20522 (_ BitVec 32))) )
))
(declare-datatypes ((array!10672 0))(
  ( (array!10673 (arr!4742 (Array (_ BitVec 32) List!26351)) (size!20523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6154 0))(
  ( (LongMapFixedSize!6155 (defaultEntry!3442 Int) (mask!7650 (_ BitVec 32)) (extraKeys!3325 (_ BitVec 32)) (zeroValue!3335 List!26351) (minValue!3335 List!26351) (_size!6201 (_ BitVec 32)) (_keys!3374 array!10670) (_values!3357 array!10672) (_vacant!3138 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12125 0))(
  ( (Cell!12126 (v!29857 LongMapFixedSize!6154)) )
))
(declare-datatypes ((MutLongMap!3077 0))(
  ( (LongMap!3077 (underlying!6355 Cell!12125)) (MutLongMapExt!3076 (__x!17457 Int)) )
))
(declare-datatypes ((Cell!12127 0))(
  ( (Cell!12128 (v!29858 MutLongMap!3077)) )
))
(declare-datatypes ((Hashable!2987 0))(
  ( (HashableExt!2986 (__x!17458 Int)) )
))
(declare-datatypes ((MutableMap!2987 0))(
  ( (MutableMapExt!2986 (__x!17459 Int)) (HashMap!2987 (underlying!6356 Cell!12127) (hashF!4910 Hashable!2987) (_size!6202 (_ BitVec 32)) (defaultValue!3149 Int)) )
))
(declare-datatypes ((CacheDown!2020 0))(
  ( (CacheDown!2021 (cache!3368 MutableMap!2987)) )
))
(declare-fun thiss!28822 () CacheDown!2020)

(declare-fun mapDefault!14474 () List!26351)

(assert (=> b!2233542 (= condMapEmpty!14474 (= (arr!4742 (_values!3357 (v!29857 (underlying!6355 (v!29858 (underlying!6356 (cache!3368 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26351)) mapDefault!14474)))))

(declare-fun e!1427437 () Bool)

(declare-fun e!1427442 () Bool)

(assert (=> b!2233543 (= e!1427437 (and e!1427442 tp!701086))))

(declare-fun b!2233544 () Bool)

(declare-fun res!956111 () Bool)

(declare-fun e!1427434 () Bool)

(assert (=> b!2233544 (=> (not res!956111) (not e!1427434))))

(declare-fun valid!2326 (MutableMap!2987) Bool)

(assert (=> b!2233544 (= res!956111 (valid!2326 (cache!3368 thiss!28822)))))

(declare-fun a!1010 () C!13024)

(declare-fun res!14291 () (InoxSet Context!3974))

(declare-fun b!2233545 () Bool)

(declare-fun ctx!56 () Context!3974)

(declare-fun r!4773 () Regex!6439)

(declare-fun e!1427435 () Bool)

(declare-fun derivationStepZipperDown!54 (Regex!6439 Context!3974 C!13024) (InoxSet Context!3974))

(assert (=> b!2233545 (= e!1427435 (= res!14291 (derivationStepZipperDown!54 r!4773 ctx!56 a!1010)))))

(declare-fun b!2233546 () Bool)

(declare-fun e!1427440 () Bool)

(declare-fun tp!701075 () Bool)

(assert (=> b!2233546 (= e!1427440 tp!701075)))

(declare-fun tp!701077 () Bool)

(declare-fun e!1427439 () Bool)

(declare-fun tp!701080 () Bool)

(declare-fun array_inv!3403 (array!10670) Bool)

(declare-fun array_inv!3404 (array!10672) Bool)

(assert (=> b!2233547 (= e!1427439 (and tp!701087 tp!701080 tp!701077 (array_inv!3403 (_keys!3374 (v!29857 (underlying!6355 (v!29858 (underlying!6356 (cache!3368 thiss!28822))))))) (array_inv!3404 (_values!3357 (v!29857 (underlying!6355 (v!29858 (underlying!6356 (cache!3368 thiss!28822))))))) e!1427443))))

(declare-fun b!2233548 () Bool)

(declare-fun e!1427438 () Bool)

(declare-fun tp!701076 () Bool)

(assert (=> b!2233548 (= e!1427438 tp!701076)))

(declare-fun b!2233549 () Bool)

(declare-fun tp!701078 () Bool)

(declare-fun tp!701088 () Bool)

(assert (=> b!2233549 (= e!1427438 (and tp!701078 tp!701088))))

(declare-fun setIsEmpty!20212 () Bool)

(declare-fun setRes!20212 () Bool)

(assert (=> setIsEmpty!20212 setRes!20212))

(declare-fun b!2233550 () Bool)

(declare-fun res!956113 () Bool)

(assert (=> b!2233550 (=> (not res!956113) (not e!1427434))))

(get-info :version)

(assert (=> b!2233550 (= res!956113 ((_ is HashMap!2987) (cache!3368 thiss!28822)))))

(declare-fun b!2233551 () Bool)

(declare-fun tp!701084 () Bool)

(declare-fun tp!701081 () Bool)

(assert (=> b!2233551 (= e!1427438 (and tp!701084 tp!701081))))

(declare-fun b!2233552 () Bool)

(declare-fun e!1427431 () Bool)

(declare-fun tp!701082 () Bool)

(assert (=> b!2233552 (= e!1427431 tp!701082)))

(declare-fun b!2233553 () Bool)

(declare-fun res!956109 () Bool)

(assert (=> b!2233553 (=> (not res!956109) (not e!1427434))))

(declare-fun validRegex!2407 (Regex!6439) Bool)

(assert (=> b!2233553 (= res!956109 (validRegex!2407 r!4773))))

(declare-fun b!2233554 () Bool)

(assert (=> b!2233554 (= e!1427434 false)))

(declare-fun lt!830744 () Bool)

(assert (=> b!2233554 (= lt!830744 e!1427435)))

(declare-fun res!956108 () Bool)

(assert (=> b!2233554 (=> (not res!956108) (not e!1427435))))

(assert (=> b!2233554 (= res!956108 (validRegex!2407 r!4773))))

(declare-fun b!2233555 () Bool)

(declare-fun e!1427432 () Bool)

(declare-fun lt!830745 () MutLongMap!3077)

(assert (=> b!2233555 (= e!1427442 (and e!1427432 ((_ is LongMap!3077) lt!830745)))))

(assert (=> b!2233555 (= lt!830745 (v!29858 (underlying!6356 (cache!3368 thiss!28822))))))

(declare-fun res!956107 () Bool)

(assert (=> start!217728 (=> (not res!956107) (not e!1427434))))

(declare-fun validCacheMapDown!294 (MutableMap!2987) Bool)

(assert (=> start!217728 (= res!956107 (validCacheMapDown!294 (cache!3368 thiss!28822)))))

(assert (=> start!217728 e!1427434))

(declare-fun tp_is_empty!10103 () Bool)

(assert (=> start!217728 tp_is_empty!10103))

(declare-fun condSetEmpty!20212 () Bool)

(assert (=> start!217728 (= condSetEmpty!20212 (= res!14291 ((as const (Array Context!3974 Bool)) false)))))

(assert (=> start!217728 setRes!20212))

(declare-fun inv!35664 (Context!3974) Bool)

(assert (=> start!217728 (and (inv!35664 ctx!56) e!1427440)))

(assert (=> start!217728 e!1427438))

(declare-fun e!1427433 () Bool)

(declare-fun inv!35665 (CacheDown!2020) Bool)

(assert (=> start!217728 (and (inv!35665 thiss!28822) e!1427433)))

(declare-fun b!2233556 () Bool)

(assert (=> b!2233556 (= e!1427438 tp_is_empty!10103)))

(declare-fun mapIsEmpty!14474 () Bool)

(assert (=> mapIsEmpty!14474 mapRes!14474))

(declare-fun setNonEmpty!20212 () Bool)

(declare-fun setElem!20212 () Context!3974)

(declare-fun tp!701074 () Bool)

(assert (=> setNonEmpty!20212 (= setRes!20212 (and tp!701074 (inv!35664 setElem!20212) e!1427431))))

(declare-fun setRest!20212 () (InoxSet Context!3974))

(assert (=> setNonEmpty!20212 (= res!14291 ((_ map or) (store ((as const (Array Context!3974 Bool)) false) setElem!20212 true) setRest!20212))))

(declare-fun b!2233557 () Bool)

(declare-fun e!1427441 () Bool)

(assert (=> b!2233557 (= e!1427432 e!1427441)))

(declare-fun mapNonEmpty!14474 () Bool)

(declare-fun tp!701079 () Bool)

(declare-fun tp!701083 () Bool)

(assert (=> mapNonEmpty!14474 (= mapRes!14474 (and tp!701079 tp!701083))))

(declare-fun mapRest!14474 () (Array (_ BitVec 32) List!26351))

(declare-fun mapValue!14474 () List!26351)

(declare-fun mapKey!14474 () (_ BitVec 32))

(assert (=> mapNonEmpty!14474 (= (arr!4742 (_values!3357 (v!29857 (underlying!6355 (v!29858 (underlying!6356 (cache!3368 thiss!28822))))))) (store mapRest!14474 mapKey!14474 mapValue!14474))))

(declare-fun b!2233558 () Bool)

(declare-fun res!956110 () Bool)

(assert (=> b!2233558 (=> (not res!956110) (not e!1427434))))

(assert (=> b!2233558 (= res!956110 (= res!14291 (derivationStepZipperDown!54 r!4773 ctx!56 a!1010)))))

(declare-fun b!2233559 () Bool)

(assert (=> b!2233559 (= e!1427433 e!1427437)))

(declare-fun b!2233560 () Bool)

(assert (=> b!2233560 (= e!1427441 e!1427439)))

(declare-fun b!2233561 () Bool)

(declare-fun res!956112 () Bool)

(assert (=> b!2233561 (=> (not res!956112) (not e!1427434))))

(declare-fun lambda!84344 () Int)

(declare-fun forall!5372 (List!26351 Int) Bool)

(declare-datatypes ((ListMap!807 0))(
  ( (ListMap!808 (toList!1332 List!26351)) )
))
(declare-fun map!5373 (MutableMap!2987) ListMap!807)

(assert (=> b!2233561 (= res!956112 (forall!5372 (toList!1332 (map!5373 (cache!3368 thiss!28822))) lambda!84344))))

(assert (= (and start!217728 res!956107) b!2233553))

(assert (= (and b!2233553 res!956109) b!2233558))

(assert (= (and b!2233558 res!956110) b!2233550))

(assert (= (and b!2233550 res!956113) b!2233544))

(assert (= (and b!2233544 res!956111) b!2233561))

(assert (= (and b!2233561 res!956112) b!2233554))

(assert (= (and b!2233554 res!956108) b!2233545))

(assert (= (and start!217728 condSetEmpty!20212) setIsEmpty!20212))

(assert (= (and start!217728 (not condSetEmpty!20212)) setNonEmpty!20212))

(assert (= setNonEmpty!20212 b!2233552))

(assert (= start!217728 b!2233546))

(assert (= (and start!217728 ((_ is ElementMatch!6439) r!4773)) b!2233556))

(assert (= (and start!217728 ((_ is Concat!10777) r!4773)) b!2233551))

(assert (= (and start!217728 ((_ is Star!6439) r!4773)) b!2233548))

(assert (= (and start!217728 ((_ is Union!6439) r!4773)) b!2233549))

(assert (= (and b!2233542 condMapEmpty!14474) mapIsEmpty!14474))

(assert (= (and b!2233542 (not condMapEmpty!14474)) mapNonEmpty!14474))

(assert (= b!2233547 b!2233542))

(assert (= b!2233560 b!2233547))

(assert (= b!2233557 b!2233560))

(assert (= (and b!2233555 ((_ is LongMap!3077) (v!29858 (underlying!6356 (cache!3368 thiss!28822))))) b!2233557))

(assert (= b!2233543 b!2233555))

(assert (= (and b!2233559 ((_ is HashMap!2987) (cache!3368 thiss!28822))) b!2233543))

(assert (= start!217728 b!2233559))

(declare-fun m!2668654 () Bool)

(assert (=> b!2233554 m!2668654))

(declare-fun m!2668656 () Bool)

(assert (=> b!2233544 m!2668656))

(declare-fun m!2668658 () Bool)

(assert (=> b!2233545 m!2668658))

(assert (=> b!2233558 m!2668658))

(assert (=> b!2233553 m!2668654))

(declare-fun m!2668660 () Bool)

(assert (=> b!2233561 m!2668660))

(declare-fun m!2668662 () Bool)

(assert (=> b!2233561 m!2668662))

(declare-fun m!2668664 () Bool)

(assert (=> start!217728 m!2668664))

(declare-fun m!2668666 () Bool)

(assert (=> start!217728 m!2668666))

(declare-fun m!2668668 () Bool)

(assert (=> start!217728 m!2668668))

(declare-fun m!2668670 () Bool)

(assert (=> mapNonEmpty!14474 m!2668670))

(declare-fun m!2668672 () Bool)

(assert (=> setNonEmpty!20212 m!2668672))

(declare-fun m!2668674 () Bool)

(assert (=> b!2233547 m!2668674))

(declare-fun m!2668676 () Bool)

(assert (=> b!2233547 m!2668676))

(check-sat (not b!2233553) b_and!174759 (not b!2233554) tp_is_empty!10103 (not b!2233548) (not b!2233561) (not b!2233551) (not b!2233558) (not setNonEmpty!20212) (not b!2233544) b_and!174757 (not b_next!65475) (not b!2233552) (not b!2233542) (not b!2233549) (not b!2233546) (not b!2233547) (not start!217728) (not b!2233545) (not b_next!65473) (not mapNonEmpty!14474))
(check-sat b_and!174757 b_and!174759 (not b_next!65475) (not b_next!65473))
