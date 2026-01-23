; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217874 () Bool)

(assert start!217874)

(declare-fun b!2235435 () Bool)

(declare-fun b_free!64825 () Bool)

(declare-fun b_next!65529 () Bool)

(assert (=> b!2235435 (= b_free!64825 (not b_next!65529))))

(declare-fun tp!702384 () Bool)

(declare-fun b_and!174813 () Bool)

(assert (=> b!2235435 (= tp!702384 b_and!174813)))

(declare-fun b!2235436 () Bool)

(declare-fun b_free!64827 () Bool)

(declare-fun b_next!65531 () Bool)

(assert (=> b!2235436 (= b_free!64827 (not b_next!65531))))

(declare-fun tp!702389 () Bool)

(declare-fun b_and!174815 () Bool)

(assert (=> b!2235436 (= tp!702389 b_and!174815)))

(declare-datatypes ((C!13052 0))(
  ( (C!13053 (val!7574 Int)) )
))
(declare-fun a!1010 () C!13052)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6453 0))(
  ( (ElementMatch!6453 (c!356307 C!13052)) (Concat!10791 (regOne!13418 Regex!6453) (regTwo!13418 Regex!6453)) (EmptyExpr!6453) (Star!6453 (reg!6782 Regex!6453)) (EmptyLang!6453) (Union!6453 (regOne!13419 Regex!6453) (regTwo!13419 Regex!6453)) )
))
(declare-datatypes ((List!26383 0))(
  ( (Nil!26289) (Cons!26289 (h!31690 Regex!6453) (t!199803 List!26383)) )
))
(declare-datatypes ((Context!4002 0))(
  ( (Context!4003 (exprs!2501 List!26383)) )
))
(declare-fun res!14291 () (InoxSet Context!4002))

(declare-fun e!1428702 () Bool)

(declare-fun ctx!56 () Context!4002)

(declare-fun r!4773 () Regex!6453)

(declare-fun b!2235420 () Bool)

(declare-fun derivationStepZipperDown!64 (Regex!6453 Context!4002 C!13052) (InoxSet Context!4002))

(assert (=> b!2235420 (= e!1428702 (not (= res!14291 (derivationStepZipperDown!64 r!4773 ctx!56 a!1010))))))

(declare-fun b!2235421 () Bool)

(declare-fun e!1428703 () Bool)

(declare-fun tp_is_empty!10131 () Bool)

(assert (=> b!2235421 (= e!1428703 tp_is_empty!10131)))

(declare-fun b!2235422 () Bool)

(declare-fun e!1428701 () Bool)

(declare-fun e!1428699 () Bool)

(assert (=> b!2235422 (= e!1428701 e!1428699)))

(declare-fun setIsEmpty!20344 () Bool)

(declare-fun setRes!20344 () Bool)

(assert (=> setIsEmpty!20344 setRes!20344))

(declare-fun b!2235423 () Bool)

(declare-fun e!1428700 () Bool)

(declare-fun tp!702382 () Bool)

(assert (=> b!2235423 (= e!1428700 tp!702382)))

(declare-fun b!2235424 () Bool)

(declare-fun e!1428705 () Bool)

(assert (=> b!2235424 (= e!1428699 e!1428705)))

(declare-fun b!2235425 () Bool)

(declare-fun tp!702380 () Bool)

(assert (=> b!2235425 (= e!1428703 tp!702380)))

(declare-fun mapIsEmpty!14534 () Bool)

(declare-fun mapRes!14534 () Bool)

(assert (=> mapIsEmpty!14534 mapRes!14534))

(declare-fun b!2235426 () Bool)

(declare-fun res!956578 () Bool)

(declare-fun e!1428697 () Bool)

(assert (=> b!2235426 (=> (not res!956578) (not e!1428697))))

(assert (=> b!2235426 (= res!956578 (= res!14291 (derivationStepZipperDown!64 r!4773 ctx!56 a!1010)))))

(declare-fun setElem!20344 () Context!4002)

(declare-fun tp!702376 () Bool)

(declare-fun setNonEmpty!20344 () Bool)

(declare-fun inv!35707 (Context!4002) Bool)

(assert (=> setNonEmpty!20344 (= setRes!20344 (and tp!702376 (inv!35707 setElem!20344) e!1428700))))

(declare-fun setRest!20344 () (InoxSet Context!4002))

(assert (=> setNonEmpty!20344 (= res!14291 ((_ map or) (store ((as const (Array Context!4002 Bool)) false) setElem!20344 true) setRest!20344))))

(declare-fun b!2235427 () Bool)

(declare-fun res!956580 () Bool)

(assert (=> b!2235427 (=> (not res!956580) (not e!1428697))))

(declare-fun validRegex!2418 (Regex!6453) Bool)

(assert (=> b!2235427 (= res!956580 (validRegex!2418 r!4773))))

(declare-fun b!2235428 () Bool)

(declare-fun tp!702390 () Bool)

(declare-fun tp!702387 () Bool)

(assert (=> b!2235428 (= e!1428703 (and tp!702390 tp!702387))))

(declare-fun b!2235429 () Bool)

(declare-fun res!956581 () Bool)

(assert (=> b!2235429 (=> (not res!956581) (not e!1428697))))

(declare-datatypes ((tuple3!3978 0))(
  ( (tuple3!3979 (_1!15296 Regex!6453) (_2!15296 Context!4002) (_3!2459 C!13052)) )
))
(declare-datatypes ((tuple2!25674 0))(
  ( (tuple2!25675 (_1!15297 tuple3!3978) (_2!15297 (InoxSet Context!4002))) )
))
(declare-datatypes ((List!26384 0))(
  ( (Nil!26290) (Cons!26290 (h!31691 tuple2!25674) (t!199804 List!26384)) )
))
(declare-datatypes ((array!10738 0))(
  ( (array!10739 (arr!4769 (Array (_ BitVec 32) (_ BitVec 64))) (size!20550 (_ BitVec 32))) )
))
(declare-datatypes ((array!10740 0))(
  ( (array!10741 (arr!4770 (Array (_ BitVec 32) List!26384)) (size!20551 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6182 0))(
  ( (LongMapFixedSize!6183 (defaultEntry!3456 Int) (mask!7671 (_ BitVec 32)) (extraKeys!3339 (_ BitVec 32)) (zeroValue!3349 List!26384) (minValue!3349 List!26384) (_size!6229 (_ BitVec 32)) (_keys!3388 array!10738) (_values!3371 array!10740) (_vacant!3152 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12181 0))(
  ( (Cell!12182 (v!29891 LongMapFixedSize!6182)) )
))
(declare-datatypes ((MutLongMap!3091 0))(
  ( (LongMap!3091 (underlying!6383 Cell!12181)) (MutLongMapExt!3090 (__x!17499 Int)) )
))
(declare-datatypes ((Cell!12183 0))(
  ( (Cell!12184 (v!29892 MutLongMap!3091)) )
))
(declare-datatypes ((Hashable!3001 0))(
  ( (HashableExt!3000 (__x!17500 Int)) )
))
(declare-datatypes ((MutableMap!3001 0))(
  ( (MutableMapExt!3000 (__x!17501 Int)) (HashMap!3001 (underlying!6384 Cell!12183) (hashF!4924 Hashable!3001) (_size!6230 (_ BitVec 32)) (defaultValue!3163 Int)) )
))
(declare-datatypes ((CacheDown!2048 0))(
  ( (CacheDown!2049 (cache!3382 MutableMap!3001)) )
))
(declare-fun thiss!28822 () CacheDown!2048)

(get-info :version)

(assert (=> b!2235429 (= res!956581 ((_ is HashMap!3001) (cache!3382 thiss!28822)))))

(declare-fun b!2235430 () Bool)

(declare-fun e!1428695 () Bool)

(declare-fun lt!831390 () MutLongMap!3091)

(assert (=> b!2235430 (= e!1428695 (and e!1428701 ((_ is LongMap!3091) lt!831390)))))

(assert (=> b!2235430 (= lt!831390 (v!29892 (underlying!6384 (cache!3382 thiss!28822))))))

(declare-fun b!2235431 () Bool)

(declare-fun res!956576 () Bool)

(assert (=> b!2235431 (=> (not res!956576) (not e!1428697))))

(declare-fun lambda!84455 () Int)

(declare-fun forall!5393 (List!26384 Int) Bool)

(declare-datatypes ((ListMap!827 0))(
  ( (ListMap!828 (toList!1347 List!26384)) )
))
(declare-fun map!5395 (MutableMap!3001) ListMap!827)

(assert (=> b!2235431 (= res!956576 (forall!5393 (toList!1347 (map!5395 (cache!3382 thiss!28822))) lambda!84455))))

(declare-fun b!2235432 () Bool)

(declare-fun res!956577 () Bool)

(assert (=> b!2235432 (=> (not res!956577) (not e!1428697))))

(declare-fun valid!2338 (MutableMap!3001) Bool)

(assert (=> b!2235432 (= res!956577 (valid!2338 (cache!3382 thiss!28822)))))

(declare-fun b!2235433 () Bool)

(assert (=> b!2235433 (= e!1428697 e!1428702)))

(declare-fun res!956579 () Bool)

(assert (=> b!2235433 (=> res!956579 e!1428702)))

(assert (=> b!2235433 (= res!956579 (not (validRegex!2418 r!4773)))))

(declare-fun b!2235434 () Bool)

(declare-fun e!1428706 () Bool)

(declare-fun e!1428704 () Bool)

(assert (=> b!2235434 (= e!1428706 e!1428704)))

(declare-fun tp!702378 () Bool)

(declare-fun tp!702377 () Bool)

(declare-fun e!1428694 () Bool)

(declare-fun array_inv!3421 (array!10738) Bool)

(declare-fun array_inv!3422 (array!10740) Bool)

(assert (=> b!2235435 (= e!1428705 (and tp!702384 tp!702378 tp!702377 (array_inv!3421 (_keys!3388 (v!29891 (underlying!6383 (v!29892 (underlying!6384 (cache!3382 thiss!28822))))))) (array_inv!3422 (_values!3371 (v!29891 (underlying!6383 (v!29892 (underlying!6384 (cache!3382 thiss!28822))))))) e!1428694))))

(declare-fun mapNonEmpty!14534 () Bool)

(declare-fun tp!702381 () Bool)

(declare-fun tp!702386 () Bool)

(assert (=> mapNonEmpty!14534 (= mapRes!14534 (and tp!702381 tp!702386))))

(declare-fun mapRest!14534 () (Array (_ BitVec 32) List!26384))

(declare-fun mapValue!14534 () List!26384)

(declare-fun mapKey!14534 () (_ BitVec 32))

(assert (=> mapNonEmpty!14534 (= (arr!4770 (_values!3371 (v!29891 (underlying!6383 (v!29892 (underlying!6384 (cache!3382 thiss!28822))))))) (store mapRest!14534 mapKey!14534 mapValue!14534))))

(declare-fun res!956575 () Bool)

(assert (=> start!217874 (=> (not res!956575) (not e!1428697))))

(declare-fun validCacheMapDown!304 (MutableMap!3001) Bool)

(assert (=> start!217874 (= res!956575 (validCacheMapDown!304 (cache!3382 thiss!28822)))))

(assert (=> start!217874 e!1428697))

(assert (=> start!217874 tp_is_empty!10131))

(declare-fun condSetEmpty!20344 () Bool)

(assert (=> start!217874 (= condSetEmpty!20344 (= res!14291 ((as const (Array Context!4002 Bool)) false)))))

(assert (=> start!217874 setRes!20344))

(declare-fun e!1428696 () Bool)

(assert (=> start!217874 (and (inv!35707 ctx!56) e!1428696)))

(assert (=> start!217874 e!1428703))

(declare-fun inv!35708 (CacheDown!2048) Bool)

(assert (=> start!217874 (and (inv!35708 thiss!28822) e!1428706)))

(assert (=> b!2235436 (= e!1428704 (and e!1428695 tp!702389))))

(declare-fun b!2235437 () Bool)

(declare-fun tp!702379 () Bool)

(assert (=> b!2235437 (= e!1428694 (and tp!702379 mapRes!14534))))

(declare-fun condMapEmpty!14534 () Bool)

(declare-fun mapDefault!14534 () List!26384)

(assert (=> b!2235437 (= condMapEmpty!14534 (= (arr!4770 (_values!3371 (v!29891 (underlying!6383 (v!29892 (underlying!6384 (cache!3382 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26384)) mapDefault!14534)))))

(declare-fun b!2235438 () Bool)

(declare-fun tp!702385 () Bool)

(declare-fun tp!702383 () Bool)

(assert (=> b!2235438 (= e!1428703 (and tp!702385 tp!702383))))

(declare-fun b!2235439 () Bool)

(declare-fun tp!702388 () Bool)

(assert (=> b!2235439 (= e!1428696 tp!702388)))

(assert (= (and start!217874 res!956575) b!2235427))

(assert (= (and b!2235427 res!956580) b!2235426))

(assert (= (and b!2235426 res!956578) b!2235429))

(assert (= (and b!2235429 res!956581) b!2235432))

(assert (= (and b!2235432 res!956577) b!2235431))

(assert (= (and b!2235431 res!956576) b!2235433))

(assert (= (and b!2235433 (not res!956579)) b!2235420))

(assert (= (and start!217874 condSetEmpty!20344) setIsEmpty!20344))

(assert (= (and start!217874 (not condSetEmpty!20344)) setNonEmpty!20344))

(assert (= setNonEmpty!20344 b!2235423))

(assert (= start!217874 b!2235439))

(assert (= (and start!217874 ((_ is ElementMatch!6453) r!4773)) b!2235421))

(assert (= (and start!217874 ((_ is Concat!10791) r!4773)) b!2235438))

(assert (= (and start!217874 ((_ is Star!6453) r!4773)) b!2235425))

(assert (= (and start!217874 ((_ is Union!6453) r!4773)) b!2235428))

(assert (= (and b!2235437 condMapEmpty!14534) mapIsEmpty!14534))

(assert (= (and b!2235437 (not condMapEmpty!14534)) mapNonEmpty!14534))

(assert (= b!2235435 b!2235437))

(assert (= b!2235424 b!2235435))

(assert (= b!2235422 b!2235424))

(assert (= (and b!2235430 ((_ is LongMap!3091) (v!29892 (underlying!6384 (cache!3382 thiss!28822))))) b!2235422))

(assert (= b!2235436 b!2235430))

(assert (= (and b!2235434 ((_ is HashMap!3001) (cache!3382 thiss!28822))) b!2235436))

(assert (= start!217874 b!2235434))

(declare-fun m!2669680 () Bool)

(assert (=> mapNonEmpty!14534 m!2669680))

(declare-fun m!2669682 () Bool)

(assert (=> b!2235435 m!2669682))

(declare-fun m!2669684 () Bool)

(assert (=> b!2235435 m!2669684))

(declare-fun m!2669686 () Bool)

(assert (=> setNonEmpty!20344 m!2669686))

(declare-fun m!2669688 () Bool)

(assert (=> b!2235427 m!2669688))

(declare-fun m!2669690 () Bool)

(assert (=> b!2235420 m!2669690))

(declare-fun m!2669692 () Bool)

(assert (=> b!2235431 m!2669692))

(declare-fun m!2669694 () Bool)

(assert (=> b!2235431 m!2669694))

(declare-fun m!2669696 () Bool)

(assert (=> b!2235432 m!2669696))

(assert (=> b!2235433 m!2669688))

(assert (=> b!2235426 m!2669690))

(declare-fun m!2669698 () Bool)

(assert (=> start!217874 m!2669698))

(declare-fun m!2669700 () Bool)

(assert (=> start!217874 m!2669700))

(declare-fun m!2669702 () Bool)

(assert (=> start!217874 m!2669702))

(check-sat (not b!2235426) (not b_next!65531) (not b!2235423) (not b!2235432) tp_is_empty!10131 (not b!2235439) (not b!2235435) (not b!2235431) (not b!2235425) b_and!174815 (not b!2235437) (not b!2235433) (not start!217874) b_and!174813 (not mapNonEmpty!14534) (not setNonEmpty!20344) (not b!2235420) (not b!2235428) (not b_next!65529) (not b!2235438) (not b!2235427))
(check-sat b_and!174813 b_and!174815 (not b_next!65531) (not b_next!65529))
