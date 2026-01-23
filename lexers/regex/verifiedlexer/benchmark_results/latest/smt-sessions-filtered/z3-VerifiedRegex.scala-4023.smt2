; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217724 () Bool)

(assert start!217724)

(declare-fun b!2233434 () Bool)

(declare-fun b_free!64761 () Bool)

(declare-fun b_next!65465 () Bool)

(assert (=> b!2233434 (= b_free!64761 (not b_next!65465))))

(declare-fun tp!700979 () Bool)

(declare-fun b_and!174749 () Bool)

(assert (=> b!2233434 (= tp!700979 b_and!174749)))

(declare-fun b!2233435 () Bool)

(declare-fun b_free!64763 () Bool)

(declare-fun b_next!65467 () Bool)

(assert (=> b!2233435 (= b_free!64763 (not b_next!65467))))

(declare-fun tp!700993 () Bool)

(declare-fun b_and!174751 () Bool)

(assert (=> b!2233435 (= tp!700993 b_and!174751)))

(declare-fun b!2233416 () Bool)

(declare-fun e!1427355 () Bool)

(declare-fun tp!700988 () Bool)

(assert (=> b!2233416 (= e!1427355 tp!700988)))

(declare-fun b!2233417 () Bool)

(declare-fun e!1427359 () Bool)

(declare-fun e!1427348 () Bool)

(declare-datatypes ((C!13020 0))(
  ( (C!13021 (val!7558 Int)) )
))
(declare-datatypes ((Regex!6437 0))(
  ( (ElementMatch!6437 (c!356102 C!13020)) (Concat!10775 (regOne!13386 Regex!6437) (regTwo!13386 Regex!6437)) (EmptyExpr!6437) (Star!6437 (reg!6766 Regex!6437)) (EmptyLang!6437) (Union!6437 (regOne!13387 Regex!6437) (regTwo!13387 Regex!6437)) )
))
(declare-datatypes ((List!26346 0))(
  ( (Nil!26252) (Cons!26252 (h!31653 Regex!6437) (t!199766 List!26346)) )
))
(declare-datatypes ((Context!3970 0))(
  ( (Context!3971 (exprs!2485 List!26346)) )
))
(declare-datatypes ((tuple3!3946 0))(
  ( (tuple3!3947 (_1!15249 Regex!6437) (_2!15249 Context!3970) (_3!2443 C!13020)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25612 0))(
  ( (tuple2!25613 (_1!15250 tuple3!3946) (_2!15250 (InoxSet Context!3970))) )
))
(declare-datatypes ((List!26347 0))(
  ( (Nil!26253) (Cons!26253 (h!31654 tuple2!25612) (t!199767 List!26347)) )
))
(declare-datatypes ((array!10662 0))(
  ( (array!10663 (arr!4737 (Array (_ BitVec 32) (_ BitVec 64))) (size!20518 (_ BitVec 32))) )
))
(declare-datatypes ((array!10664 0))(
  ( (array!10665 (arr!4738 (Array (_ BitVec 32) List!26347)) (size!20519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6150 0))(
  ( (LongMapFixedSize!6151 (defaultEntry!3440 Int) (mask!7647 (_ BitVec 32)) (extraKeys!3323 (_ BitVec 32)) (zeroValue!3333 List!26347) (minValue!3333 List!26347) (_size!6197 (_ BitVec 32)) (_keys!3372 array!10662) (_values!3355 array!10664) (_vacant!3136 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12117 0))(
  ( (Cell!12118 (v!29853 LongMapFixedSize!6150)) )
))
(declare-datatypes ((MutLongMap!3075 0))(
  ( (LongMap!3075 (underlying!6351 Cell!12117)) (MutLongMapExt!3074 (__x!17451 Int)) )
))
(declare-fun lt!830733 () MutLongMap!3075)

(get-info :version)

(assert (=> b!2233417 (= e!1427359 (and e!1427348 ((_ is LongMap!3075) lt!830733)))))

(declare-datatypes ((Cell!12119 0))(
  ( (Cell!12120 (v!29854 MutLongMap!3075)) )
))
(declare-datatypes ((Hashable!2985 0))(
  ( (HashableExt!2984 (__x!17452 Int)) )
))
(declare-datatypes ((MutableMap!2985 0))(
  ( (MutableMapExt!2984 (__x!17453 Int)) (HashMap!2985 (underlying!6352 Cell!12119) (hashF!4908 Hashable!2985) (_size!6198 (_ BitVec 32)) (defaultValue!3147 Int)) )
))
(declare-datatypes ((CacheDown!2016 0))(
  ( (CacheDown!2017 (cache!3366 MutableMap!2985)) )
))
(declare-fun thiss!28822 () CacheDown!2016)

(assert (=> b!2233417 (= lt!830733 (v!29854 (underlying!6352 (cache!3366 thiss!28822))))))

(declare-fun setIsEmpty!20205 () Bool)

(declare-fun setRes!20205 () Bool)

(assert (=> setIsEmpty!20205 setRes!20205))

(declare-fun b!2233418 () Bool)

(declare-fun e!1427353 () Bool)

(declare-fun tp!700981 () Bool)

(assert (=> b!2233418 (= e!1427353 tp!700981)))

(declare-fun b!2233419 () Bool)

(declare-fun e!1427356 () Bool)

(declare-fun tp!700984 () Bool)

(declare-fun tp!700980 () Bool)

(assert (=> b!2233419 (= e!1427356 (and tp!700984 tp!700980))))

(declare-fun b!2233420 () Bool)

(declare-fun e!1427351 () Bool)

(declare-fun e!1427349 () Bool)

(assert (=> b!2233420 (= e!1427351 e!1427349)))

(declare-fun b!2233421 () Bool)

(declare-fun tp_is_empty!10099 () Bool)

(assert (=> b!2233421 (= e!1427356 tp_is_empty!10099)))

(declare-fun b!2233422 () Bool)

(declare-fun e!1427352 () Bool)

(declare-fun tp!700995 () Bool)

(declare-fun mapRes!14468 () Bool)

(assert (=> b!2233422 (= e!1427352 (and tp!700995 mapRes!14468))))

(declare-fun condMapEmpty!14468 () Bool)

(declare-fun mapDefault!14468 () List!26347)

(assert (=> b!2233422 (= condMapEmpty!14468 (= (arr!4738 (_values!3355 (v!29853 (underlying!6351 (v!29854 (underlying!6352 (cache!3366 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26347)) mapDefault!14468)))))

(declare-fun b!2233423 () Bool)

(declare-fun e!1427354 () Bool)

(assert (=> b!2233423 (= e!1427354 tp_is_empty!10099)))

(declare-fun b!2233424 () Bool)

(declare-fun tp!700982 () Bool)

(declare-fun tp!700987 () Bool)

(assert (=> b!2233424 (= e!1427354 (and tp!700982 tp!700987))))

(declare-fun b!2233425 () Bool)

(declare-fun e!1427347 () Bool)

(assert (=> b!2233425 (= e!1427348 e!1427347)))

(declare-fun b!2233426 () Bool)

(declare-fun tp!700977 () Bool)

(assert (=> b!2233426 (= e!1427354 tp!700977)))

(declare-fun res!956067 () Bool)

(declare-fun e!1427360 () Bool)

(assert (=> start!217724 (=> (not res!956067) (not e!1427360))))

(declare-fun validCacheMapDown!292 (MutableMap!2985) Bool)

(assert (=> start!217724 (= res!956067 (validCacheMapDown!292 (cache!3366 thiss!28822)))))

(assert (=> start!217724 e!1427360))

(assert (=> start!217724 tp_is_empty!10099))

(declare-fun condSetEmpty!20206 () Bool)

(declare-fun res!14291 () (InoxSet Context!3970))

(assert (=> start!217724 (= condSetEmpty!20206 (= res!14291 ((as const (Array Context!3970 Bool)) false)))))

(declare-fun setRes!20206 () Bool)

(assert (=> start!217724 setRes!20206))

(declare-fun ctx!56 () Context!3970)

(declare-fun inv!35657 (Context!3970) Bool)

(assert (=> start!217724 (and (inv!35657 ctx!56) e!1427353)))

(assert (=> start!217724 e!1427354))

(declare-fun inv!35658 (CacheDown!2016) Bool)

(assert (=> start!217724 (and (inv!35658 thiss!28822) e!1427351)))

(declare-fun condSetEmpty!20205 () Bool)

(declare-fun _$16!19 () tuple2!25612)

(assert (=> start!217724 (= condSetEmpty!20205 (= (_2!15250 _$16!19) ((as const (Array Context!3970 Bool)) false)))))

(declare-fun e!1427357 () Bool)

(assert (=> start!217724 (and e!1427356 (inv!35657 (_2!15249 (_1!15250 _$16!19))) e!1427357 tp_is_empty!10099 setRes!20205)))

(declare-fun mapNonEmpty!14468 () Bool)

(declare-fun tp!700998 () Bool)

(declare-fun tp!700991 () Bool)

(assert (=> mapNonEmpty!14468 (= mapRes!14468 (and tp!700998 tp!700991))))

(declare-fun mapValue!14468 () List!26347)

(declare-fun mapRest!14468 () (Array (_ BitVec 32) List!26347))

(declare-fun mapKey!14468 () (_ BitVec 32))

(assert (=> mapNonEmpty!14468 (= (arr!4738 (_values!3355 (v!29853 (underlying!6351 (v!29854 (underlying!6352 (cache!3366 thiss!28822))))))) (store mapRest!14468 mapKey!14468 mapValue!14468))))

(declare-fun b!2233427 () Bool)

(declare-fun e!1427350 () Bool)

(assert (=> b!2233427 (= e!1427347 e!1427350)))

(declare-fun b!2233428 () Bool)

(declare-fun tp!700990 () Bool)

(declare-fun tp!700978 () Bool)

(assert (=> b!2233428 (= e!1427356 (and tp!700990 tp!700978))))

(declare-fun b!2233429 () Bool)

(declare-fun tp!700986 () Bool)

(assert (=> b!2233429 (= e!1427356 tp!700986)))

(declare-fun b!2233430 () Bool)

(assert (=> b!2233430 (= e!1427360 false)))

(declare-fun b!2233431 () Bool)

(declare-fun e!1427361 () Bool)

(declare-fun tp!700983 () Bool)

(assert (=> b!2233431 (= e!1427361 tp!700983)))

(declare-fun b!2233432 () Bool)

(declare-fun tp!700994 () Bool)

(declare-fun tp!700996 () Bool)

(assert (=> b!2233432 (= e!1427354 (and tp!700994 tp!700996))))

(declare-fun b!2233433 () Bool)

(declare-fun res!956066 () Bool)

(assert (=> b!2233433 (=> (not res!956066) (not e!1427360))))

(declare-fun r!4773 () Regex!6437)

(declare-fun validRegex!2405 (Regex!6437) Bool)

(assert (=> b!2233433 (= res!956066 (validRegex!2405 r!4773))))

(declare-fun tp!700989 () Bool)

(declare-fun setElem!20205 () Context!3970)

(declare-fun setNonEmpty!20205 () Bool)

(assert (=> setNonEmpty!20205 (= setRes!20206 (and tp!700989 (inv!35657 setElem!20205) e!1427361))))

(declare-fun setRest!20206 () (InoxSet Context!3970))

(assert (=> setNonEmpty!20205 (= res!14291 ((_ map or) (store ((as const (Array Context!3970 Bool)) false) setElem!20205 true) setRest!20206))))

(declare-fun setIsEmpty!20206 () Bool)

(assert (=> setIsEmpty!20206 setRes!20206))

(assert (=> b!2233434 (= e!1427349 (and e!1427359 tp!700979))))

(declare-fun mapIsEmpty!14468 () Bool)

(assert (=> mapIsEmpty!14468 mapRes!14468))

(declare-fun tp!700985 () Bool)

(declare-fun tp!700997 () Bool)

(declare-fun array_inv!3399 (array!10662) Bool)

(declare-fun array_inv!3400 (array!10664) Bool)

(assert (=> b!2233435 (= e!1427350 (and tp!700993 tp!700997 tp!700985 (array_inv!3399 (_keys!3372 (v!29853 (underlying!6351 (v!29854 (underlying!6352 (cache!3366 thiss!28822))))))) (array_inv!3400 (_values!3355 (v!29853 (underlying!6351 (v!29854 (underlying!6352 (cache!3366 thiss!28822))))))) e!1427352))))

(declare-fun b!2233436 () Bool)

(declare-fun tp!700976 () Bool)

(assert (=> b!2233436 (= e!1427357 tp!700976)))

(declare-fun b!2233437 () Bool)

(declare-fun res!956065 () Bool)

(assert (=> b!2233437 (=> (not res!956065) (not e!1427360))))

(declare-fun a!1010 () C!13020)

(declare-fun derivationStepZipperDown!52 (Regex!6437 Context!3970 C!13020) (InoxSet Context!3970))

(assert (=> b!2233437 (= res!956065 (= res!14291 (derivationStepZipperDown!52 r!4773 ctx!56 a!1010)))))

(declare-fun setNonEmpty!20206 () Bool)

(declare-fun tp!700992 () Bool)

(declare-fun setElem!20206 () Context!3970)

(assert (=> setNonEmpty!20206 (= setRes!20205 (and tp!700992 (inv!35657 setElem!20206) e!1427355))))

(declare-fun setRest!20205 () (InoxSet Context!3970))

(assert (=> setNonEmpty!20206 (= (_2!15250 _$16!19) ((_ map or) (store ((as const (Array Context!3970 Bool)) false) setElem!20206 true) setRest!20205))))

(assert (= (and start!217724 res!956067) b!2233433))

(assert (= (and b!2233433 res!956066) b!2233437))

(assert (= (and b!2233437 res!956065) b!2233430))

(assert (= (and start!217724 condSetEmpty!20206) setIsEmpty!20206))

(assert (= (and start!217724 (not condSetEmpty!20206)) setNonEmpty!20205))

(assert (= setNonEmpty!20205 b!2233431))

(assert (= start!217724 b!2233418))

(assert (= (and start!217724 ((_ is ElementMatch!6437) r!4773)) b!2233423))

(assert (= (and start!217724 ((_ is Concat!10775) r!4773)) b!2233424))

(assert (= (and start!217724 ((_ is Star!6437) r!4773)) b!2233426))

(assert (= (and start!217724 ((_ is Union!6437) r!4773)) b!2233432))

(assert (= (and b!2233422 condMapEmpty!14468) mapIsEmpty!14468))

(assert (= (and b!2233422 (not condMapEmpty!14468)) mapNonEmpty!14468))

(assert (= b!2233435 b!2233422))

(assert (= b!2233427 b!2233435))

(assert (= b!2233425 b!2233427))

(assert (= (and b!2233417 ((_ is LongMap!3075) (v!29854 (underlying!6352 (cache!3366 thiss!28822))))) b!2233425))

(assert (= b!2233434 b!2233417))

(assert (= (and b!2233420 ((_ is HashMap!2985) (cache!3366 thiss!28822))) b!2233434))

(assert (= start!217724 b!2233420))

(assert (= (and start!217724 ((_ is ElementMatch!6437) (_1!15249 (_1!15250 _$16!19)))) b!2233421))

(assert (= (and start!217724 ((_ is Concat!10775) (_1!15249 (_1!15250 _$16!19)))) b!2233428))

(assert (= (and start!217724 ((_ is Star!6437) (_1!15249 (_1!15250 _$16!19)))) b!2233429))

(assert (= (and start!217724 ((_ is Union!6437) (_1!15249 (_1!15250 _$16!19)))) b!2233419))

(assert (= start!217724 b!2233436))

(assert (= (and start!217724 condSetEmpty!20205) setIsEmpty!20205))

(assert (= (and start!217724 (not condSetEmpty!20205)) setNonEmpty!20206))

(assert (= setNonEmpty!20206 b!2233416))

(declare-fun m!2668608 () Bool)

(assert (=> start!217724 m!2668608))

(declare-fun m!2668610 () Bool)

(assert (=> start!217724 m!2668610))

(declare-fun m!2668612 () Bool)

(assert (=> start!217724 m!2668612))

(declare-fun m!2668614 () Bool)

(assert (=> start!217724 m!2668614))

(declare-fun m!2668616 () Bool)

(assert (=> mapNonEmpty!14468 m!2668616))

(declare-fun m!2668618 () Bool)

(assert (=> setNonEmpty!20205 m!2668618))

(declare-fun m!2668620 () Bool)

(assert (=> b!2233433 m!2668620))

(declare-fun m!2668622 () Bool)

(assert (=> b!2233437 m!2668622))

(declare-fun m!2668624 () Bool)

(assert (=> setNonEmpty!20206 m!2668624))

(declare-fun m!2668626 () Bool)

(assert (=> b!2233435 m!2668626))

(declare-fun m!2668628 () Bool)

(assert (=> b!2233435 m!2668628))

(check-sat (not start!217724) (not b!2233426) (not setNonEmpty!20206) (not b!2233436) (not b!2233428) (not b!2233429) b_and!174749 b_and!174751 (not b!2233424) (not b!2233432) (not b_next!65467) tp_is_empty!10099 (not b!2233433) (not b!2233422) (not b!2233416) (not b_next!65465) (not b!2233437) (not setNonEmpty!20205) (not mapNonEmpty!14468) (not b!2233418) (not b!2233419) (not b!2233431) (not b!2233435))
(check-sat b_and!174751 b_and!174749 (not b_next!65465) (not b_next!65467))
