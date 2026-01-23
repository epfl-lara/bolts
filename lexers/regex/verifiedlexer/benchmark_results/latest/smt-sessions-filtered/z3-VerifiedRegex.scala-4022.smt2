; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217720 () Bool)

(assert start!217720)

(declare-fun b!2233295 () Bool)

(declare-fun b_free!64753 () Bool)

(declare-fun b_next!65457 () Bool)

(assert (=> b!2233295 (= b_free!64753 (not b_next!65457))))

(declare-fun tp!700854 () Bool)

(declare-fun b_and!174741 () Bool)

(assert (=> b!2233295 (= tp!700854 b_and!174741)))

(declare-fun b!2233294 () Bool)

(declare-fun b_free!64755 () Bool)

(declare-fun b_next!65459 () Bool)

(assert (=> b!2233294 (= b_free!64755 (not b_next!65459))))

(declare-fun tp!700853 () Bool)

(declare-fun b_and!174743 () Bool)

(assert (=> b!2233294 (= tp!700853 b_and!174743)))

(declare-fun e!1427264 () Bool)

(declare-fun e!1427268 () Bool)

(assert (=> b!2233294 (= e!1427264 (and e!1427268 tp!700853))))

(declare-fun e!1427269 () Bool)

(declare-datatypes ((C!13016 0))(
  ( (C!13017 (val!7556 Int)) )
))
(declare-datatypes ((Regex!6435 0))(
  ( (ElementMatch!6435 (c!356100 C!13016)) (Concat!10773 (regOne!13382 Regex!6435) (regTwo!13382 Regex!6435)) (EmptyExpr!6435) (Star!6435 (reg!6764 Regex!6435)) (EmptyLang!6435) (Union!6435 (regOne!13383 Regex!6435) (regTwo!13383 Regex!6435)) )
))
(declare-datatypes ((List!26342 0))(
  ( (Nil!26248) (Cons!26248 (h!31649 Regex!6435) (t!199762 List!26342)) )
))
(declare-datatypes ((Context!3966 0))(
  ( (Context!3967 (exprs!2483 List!26342)) )
))
(declare-datatypes ((tuple3!3942 0))(
  ( (tuple3!3943 (_1!15245 Regex!6435) (_2!15245 Context!3966) (_3!2441 C!13016)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25608 0))(
  ( (tuple2!25609 (_1!15246 tuple3!3942) (_2!15246 (InoxSet Context!3966))) )
))
(declare-datatypes ((List!26343 0))(
  ( (Nil!26249) (Cons!26249 (h!31650 tuple2!25608) (t!199763 List!26343)) )
))
(declare-datatypes ((array!10654 0))(
  ( (array!10655 (arr!4733 (Array (_ BitVec 32) (_ BitVec 64))) (size!20514 (_ BitVec 32))) )
))
(declare-datatypes ((array!10656 0))(
  ( (array!10657 (arr!4734 (Array (_ BitVec 32) List!26343)) (size!20515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6146 0))(
  ( (LongMapFixedSize!6147 (defaultEntry!3438 Int) (mask!7644 (_ BitVec 32)) (extraKeys!3321 (_ BitVec 32)) (zeroValue!3331 List!26343) (minValue!3331 List!26343) (_size!6193 (_ BitVec 32)) (_keys!3370 array!10654) (_values!3353 array!10656) (_vacant!3134 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12109 0))(
  ( (Cell!12110 (v!29849 LongMapFixedSize!6146)) )
))
(declare-datatypes ((MutLongMap!3073 0))(
  ( (LongMap!3073 (underlying!6347 Cell!12109)) (MutLongMapExt!3072 (__x!17445 Int)) )
))
(declare-datatypes ((Cell!12111 0))(
  ( (Cell!12112 (v!29850 MutLongMap!3073)) )
))
(declare-datatypes ((Hashable!2983 0))(
  ( (HashableExt!2982 (__x!17446 Int)) )
))
(declare-datatypes ((MutableMap!2983 0))(
  ( (MutableMapExt!2982 (__x!17447 Int)) (HashMap!2983 (underlying!6348 Cell!12111) (hashF!4906 Hashable!2983) (_size!6194 (_ BitVec 32)) (defaultValue!3145 Int)) )
))
(declare-datatypes ((CacheDown!2012 0))(
  ( (CacheDown!2013 (cache!3364 MutableMap!2983)) )
))
(declare-fun thiss!28822 () CacheDown!2012)

(declare-fun e!1427270 () Bool)

(declare-fun tp!700852 () Bool)

(declare-fun tp!700855 () Bool)

(declare-fun array_inv!3397 (array!10654) Bool)

(declare-fun array_inv!3398 (array!10656) Bool)

(assert (=> b!2233295 (= e!1427270 (and tp!700854 tp!700852 tp!700855 (array_inv!3397 (_keys!3370 (v!29849 (underlying!6347 (v!29850 (underlying!6348 (cache!3364 thiss!28822))))))) (array_inv!3398 (_values!3353 (v!29849 (underlying!6347 (v!29850 (underlying!6348 (cache!3364 thiss!28822))))))) e!1427269))))

(declare-fun b!2233296 () Bool)

(declare-fun e!1427267 () Bool)

(assert (=> b!2233296 (= e!1427267 false)))

(declare-fun b!2233297 () Bool)

(declare-fun e!1427262 () Bool)

(declare-fun tp!700851 () Bool)

(declare-fun tp!700859 () Bool)

(assert (=> b!2233297 (= e!1427262 (and tp!700851 tp!700859))))

(declare-fun b!2233298 () Bool)

(declare-fun tp!700858 () Bool)

(assert (=> b!2233298 (= e!1427262 tp!700858)))

(declare-fun b!2233300 () Bool)

(declare-fun e!1427263 () Bool)

(declare-fun lt!830727 () MutLongMap!3073)

(get-info :version)

(assert (=> b!2233300 (= e!1427268 (and e!1427263 ((_ is LongMap!3073) lt!830727)))))

(assert (=> b!2233300 (= lt!830727 (v!29850 (underlying!6348 (cache!3364 thiss!28822))))))

(declare-fun b!2233301 () Bool)

(declare-fun e!1427266 () Bool)

(assert (=> b!2233301 (= e!1427266 e!1427270)))

(declare-fun b!2233302 () Bool)

(assert (=> b!2233302 (= e!1427263 e!1427266)))

(declare-fun b!2233303 () Bool)

(declare-fun tp_is_empty!10095 () Bool)

(assert (=> b!2233303 (= e!1427262 tp_is_empty!10095)))

(declare-fun b!2233304 () Bool)

(declare-fun e!1427271 () Bool)

(assert (=> b!2233304 (= e!1427271 e!1427264)))

(declare-fun b!2233305 () Bool)

(declare-fun tp!700856 () Bool)

(declare-fun tp!700860 () Bool)

(assert (=> b!2233305 (= e!1427262 (and tp!700856 tp!700860))))

(declare-fun mapIsEmpty!14462 () Bool)

(declare-fun mapRes!14462 () Bool)

(assert (=> mapIsEmpty!14462 mapRes!14462))

(declare-fun mapNonEmpty!14462 () Bool)

(declare-fun tp!700849 () Bool)

(declare-fun tp!700850 () Bool)

(assert (=> mapNonEmpty!14462 (= mapRes!14462 (and tp!700849 tp!700850))))

(declare-fun mapKey!14462 () (_ BitVec 32))

(declare-fun mapRest!14462 () (Array (_ BitVec 32) List!26343))

(declare-fun mapValue!14462 () List!26343)

(assert (=> mapNonEmpty!14462 (= (arr!4734 (_values!3353 (v!29849 (underlying!6347 (v!29850 (underlying!6348 (cache!3364 thiss!28822))))))) (store mapRest!14462 mapKey!14462 mapValue!14462))))

(declare-fun res!956049 () Bool)

(assert (=> start!217720 (=> (not res!956049) (not e!1427267))))

(declare-fun validCacheMapDown!290 (MutableMap!2983) Bool)

(assert (=> start!217720 (= res!956049 (validCacheMapDown!290 (cache!3364 thiss!28822)))))

(assert (=> start!217720 e!1427267))

(declare-fun inv!35651 (CacheDown!2012) Bool)

(assert (=> start!217720 (and (inv!35651 thiss!28822) e!1427271)))

(assert (=> start!217720 e!1427262))

(declare-fun b!2233299 () Bool)

(declare-fun tp!700857 () Bool)

(assert (=> b!2233299 (= e!1427269 (and tp!700857 mapRes!14462))))

(declare-fun condMapEmpty!14462 () Bool)

(declare-fun mapDefault!14462 () List!26343)

(assert (=> b!2233299 (= condMapEmpty!14462 (= (arr!4734 (_values!3353 (v!29849 (underlying!6347 (v!29850 (underlying!6348 (cache!3364 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26343)) mapDefault!14462)))))

(assert (= (and start!217720 res!956049) b!2233296))

(assert (= (and b!2233299 condMapEmpty!14462) mapIsEmpty!14462))

(assert (= (and b!2233299 (not condMapEmpty!14462)) mapNonEmpty!14462))

(assert (= b!2233295 b!2233299))

(assert (= b!2233301 b!2233295))

(assert (= b!2233302 b!2233301))

(assert (= (and b!2233300 ((_ is LongMap!3073) (v!29850 (underlying!6348 (cache!3364 thiss!28822))))) b!2233302))

(assert (= b!2233294 b!2233300))

(assert (= (and b!2233304 ((_ is HashMap!2983) (cache!3364 thiss!28822))) b!2233294))

(assert (= start!217720 b!2233304))

(declare-fun r!4773 () Regex!6435)

(assert (= (and start!217720 ((_ is ElementMatch!6435) r!4773)) b!2233303))

(assert (= (and start!217720 ((_ is Concat!10773) r!4773)) b!2233305))

(assert (= (and start!217720 ((_ is Star!6435) r!4773)) b!2233298))

(assert (= (and start!217720 ((_ is Union!6435) r!4773)) b!2233297))

(declare-fun m!2668576 () Bool)

(assert (=> b!2233295 m!2668576))

(declare-fun m!2668578 () Bool)

(assert (=> b!2233295 m!2668578))

(declare-fun m!2668580 () Bool)

(assert (=> mapNonEmpty!14462 m!2668580))

(declare-fun m!2668582 () Bool)

(assert (=> start!217720 m!2668582))

(declare-fun m!2668584 () Bool)

(assert (=> start!217720 m!2668584))

(check-sat (not b!2233299) b_and!174743 (not b_next!65459) (not b!2233305) (not b_next!65457) tp_is_empty!10095 (not b!2233297) (not b!2233298) (not mapNonEmpty!14462) b_and!174741 (not b!2233295) (not start!217720))
(check-sat b_and!174741 b_and!174743 (not b_next!65459) (not b_next!65457))
