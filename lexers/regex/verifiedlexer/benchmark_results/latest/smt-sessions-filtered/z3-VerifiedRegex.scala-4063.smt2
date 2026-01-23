; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218348 () Bool)

(assert start!218348)

(declare-fun b!2241096 () Bool)

(declare-fun b_free!65081 () Bool)

(declare-fun b_next!65785 () Bool)

(assert (=> b!2241096 (= b_free!65081 (not b_next!65785))))

(declare-fun tp!706475 () Bool)

(declare-fun b_and!175101 () Bool)

(assert (=> b!2241096 (= tp!706475 b_and!175101)))

(declare-fun b!2241091 () Bool)

(declare-fun b_free!65083 () Bool)

(declare-fun b_next!65787 () Bool)

(assert (=> b!2241091 (= b_free!65083 (not b_next!65787))))

(declare-fun tp!706480 () Bool)

(declare-fun b_and!175103 () Bool)

(assert (=> b!2241091 (= tp!706480 b_and!175103)))

(declare-fun res!957853 () Bool)

(declare-fun e!1432991 () Bool)

(assert (=> start!218348 (=> (not res!957853) (not e!1432991))))

(declare-datatypes ((C!13180 0))(
  ( (C!13181 (val!7638 Int)) )
))
(declare-datatypes ((Regex!6517 0))(
  ( (ElementMatch!6517 (c!356846 C!13180)) (Concat!10855 (regOne!13546 Regex!6517) (regTwo!13546 Regex!6517)) (EmptyExpr!6517) (Star!6517 (reg!6846 Regex!6517)) (EmptyLang!6517) (Union!6517 (regOne!13547 Regex!6517) (regTwo!13547 Regex!6517)) )
))
(declare-datatypes ((List!26530 0))(
  ( (Nil!26436) (Cons!26436 (h!31837 Regex!6517) (t!199966 List!26530)) )
))
(declare-datatypes ((Context!4130 0))(
  ( (Context!4131 (exprs!2565 List!26530)) )
))
(declare-datatypes ((tuple2!25874 0))(
  ( (tuple2!25875 (_1!15447 Context!4130) (_2!15447 C!13180)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25876 0))(
  ( (tuple2!25877 (_1!15448 tuple2!25874) (_2!15448 (InoxSet Context!4130))) )
))
(declare-datatypes ((List!26531 0))(
  ( (Nil!26437) (Cons!26437 (h!31838 tuple2!25876) (t!199967 List!26531)) )
))
(declare-datatypes ((array!11034 0))(
  ( (array!11035 (arr!4897 (Array (_ BitVec 32) (_ BitVec 64))) (size!20678 (_ BitVec 32))) )
))
(declare-datatypes ((array!11036 0))(
  ( (array!11037 (arr!4898 (Array (_ BitVec 32) List!26531)) (size!20679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6310 0))(
  ( (LongMapFixedSize!6311 (defaultEntry!3520 Int) (mask!7767 (_ BitVec 32)) (extraKeys!3403 (_ BitVec 32)) (zeroValue!3413 List!26531) (minValue!3413 List!26531) (_size!6357 (_ BitVec 32)) (_keys!3452 array!11034) (_values!3435 array!11036) (_vacant!3216 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12437 0))(
  ( (Cell!12438 (v!30069 LongMapFixedSize!6310)) )
))
(declare-datatypes ((MutLongMap!3155 0))(
  ( (LongMap!3155 (underlying!6511 Cell!12437)) (MutLongMapExt!3154 (__x!17691 Int)) )
))
(declare-datatypes ((Hashable!3065 0))(
  ( (HashableExt!3064 (__x!17692 Int)) )
))
(declare-datatypes ((Cell!12439 0))(
  ( (Cell!12440 (v!30070 MutLongMap!3155)) )
))
(declare-datatypes ((MutableMap!3065 0))(
  ( (MutableMapExt!3064 (__x!17693 Int)) (HashMap!3065 (underlying!6512 Cell!12439) (hashF!4988 Hashable!3065) (_size!6358 (_ BitVec 32)) (defaultValue!3227 Int)) )
))
(declare-datatypes ((CacheUp!2000 0))(
  ( (CacheUp!2001 (cache!3446 MutableMap!3065)) )
))
(declare-fun thiss!28657 () CacheUp!2000)

(declare-fun validCacheMapUp!300 (MutableMap!3065) Bool)

(assert (=> start!218348 (= res!957853 (validCacheMapUp!300 (cache!3446 thiss!28657)))))

(assert (=> start!218348 e!1432991))

(declare-fun e!1432983 () Bool)

(declare-fun inv!35905 (CacheUp!2000) Bool)

(assert (=> start!218348 (and (inv!35905 thiss!28657) e!1432983)))

(declare-fun ctx!40 () Context!4130)

(declare-fun e!1432990 () Bool)

(declare-fun inv!35906 (Context!4130) Bool)

(assert (=> start!218348 (and (inv!35906 ctx!40) e!1432990)))

(declare-fun tp_is_empty!10255 () Bool)

(assert (=> start!218348 tp_is_empty!10255))

(declare-fun mapIsEmpty!14786 () Bool)

(declare-fun mapRes!14786 () Bool)

(assert (=> mapIsEmpty!14786 mapRes!14786))

(declare-fun b!2241086 () Bool)

(declare-fun e!1432987 () Bool)

(declare-fun e!1432984 () Bool)

(assert (=> b!2241086 (= e!1432987 e!1432984)))

(declare-fun b!2241087 () Bool)

(declare-fun res!957854 () Bool)

(assert (=> b!2241087 (=> (not res!957854) (not e!1432991))))

(declare-fun a!949 () C!13180)

(declare-fun contains!4492 (MutableMap!3065 tuple2!25874) Bool)

(assert (=> b!2241087 (= res!957854 (not (contains!4492 (cache!3446 thiss!28657) (tuple2!25875 ctx!40 a!949))))))

(declare-fun mapNonEmpty!14786 () Bool)

(declare-fun tp!706479 () Bool)

(declare-fun tp!706476 () Bool)

(assert (=> mapNonEmpty!14786 (= mapRes!14786 (and tp!706479 tp!706476))))

(declare-fun mapKey!14786 () (_ BitVec 32))

(declare-fun mapValue!14786 () List!26531)

(declare-fun mapRest!14786 () (Array (_ BitVec 32) List!26531))

(assert (=> mapNonEmpty!14786 (= (arr!4898 (_values!3435 (v!30069 (underlying!6511 (v!30070 (underlying!6512 (cache!3446 thiss!28657))))))) (store mapRest!14786 mapKey!14786 mapValue!14786))))

(declare-fun b!2241088 () Bool)

(declare-fun e!1432986 () Bool)

(assert (=> b!2241088 (= e!1432984 e!1432986)))

(declare-fun b!2241089 () Bool)

(declare-datatypes ((Option!5162 0))(
  ( (None!5161) (Some!5161 (v!30071 (InoxSet Context!4130))) )
))
(declare-fun get!8001 (Option!5162) (InoxSet Context!4130))

(declare-fun derivationStepZipperUp!45 (Context!4130 C!13180) (InoxSet Context!4130))

(assert (=> b!2241089 (= e!1432991 (not (= (get!8001 None!5161) (derivationStepZipperUp!45 ctx!40 a!949))))))

(declare-fun b!2241090 () Bool)

(declare-fun res!957852 () Bool)

(assert (=> b!2241090 (=> (not res!957852) (not e!1432991))))

(assert (=> b!2241090 (= res!957852 false)))

(declare-fun e!1432992 () Bool)

(declare-fun e!1432988 () Bool)

(assert (=> b!2241091 (= e!1432992 (and e!1432988 tp!706480))))

(declare-fun b!2241092 () Bool)

(declare-fun tp!706481 () Bool)

(assert (=> b!2241092 (= e!1432990 tp!706481)))

(declare-fun b!2241093 () Bool)

(declare-fun e!1432985 () Bool)

(declare-fun tp!706478 () Bool)

(assert (=> b!2241093 (= e!1432985 (and tp!706478 mapRes!14786))))

(declare-fun condMapEmpty!14786 () Bool)

(declare-fun mapDefault!14786 () List!26531)

(assert (=> b!2241093 (= condMapEmpty!14786 (= (arr!4898 (_values!3435 (v!30069 (underlying!6511 (v!30070 (underlying!6512 (cache!3446 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26531)) mapDefault!14786)))))

(declare-fun b!2241094 () Bool)

(declare-fun lt!834129 () MutLongMap!3155)

(get-info :version)

(assert (=> b!2241094 (= e!1432988 (and e!1432987 ((_ is LongMap!3155) lt!834129)))))

(assert (=> b!2241094 (= lt!834129 (v!30070 (underlying!6512 (cache!3446 thiss!28657))))))

(declare-fun b!2241095 () Bool)

(assert (=> b!2241095 (= e!1432983 e!1432992)))

(declare-fun tp!706477 () Bool)

(declare-fun tp!706482 () Bool)

(declare-fun array_inv!3515 (array!11034) Bool)

(declare-fun array_inv!3516 (array!11036) Bool)

(assert (=> b!2241096 (= e!1432986 (and tp!706475 tp!706482 tp!706477 (array_inv!3515 (_keys!3452 (v!30069 (underlying!6511 (v!30070 (underlying!6512 (cache!3446 thiss!28657))))))) (array_inv!3516 (_values!3435 (v!30069 (underlying!6511 (v!30070 (underlying!6512 (cache!3446 thiss!28657))))))) e!1432985))))

(assert (= (and start!218348 res!957853) b!2241087))

(assert (= (and b!2241087 res!957854) b!2241090))

(assert (= (and b!2241090 res!957852) b!2241089))

(assert (= (and b!2241093 condMapEmpty!14786) mapIsEmpty!14786))

(assert (= (and b!2241093 (not condMapEmpty!14786)) mapNonEmpty!14786))

(assert (= b!2241096 b!2241093))

(assert (= b!2241088 b!2241096))

(assert (= b!2241086 b!2241088))

(assert (= (and b!2241094 ((_ is LongMap!3155) (v!30070 (underlying!6512 (cache!3446 thiss!28657))))) b!2241086))

(assert (= b!2241091 b!2241094))

(assert (= (and b!2241095 ((_ is HashMap!3065) (cache!3446 thiss!28657))) b!2241091))

(assert (= start!218348 b!2241095))

(assert (= start!218348 b!2241092))

(declare-fun m!2673408 () Bool)

(assert (=> b!2241096 m!2673408))

(declare-fun m!2673410 () Bool)

(assert (=> b!2241096 m!2673410))

(declare-fun m!2673412 () Bool)

(assert (=> start!218348 m!2673412))

(declare-fun m!2673414 () Bool)

(assert (=> start!218348 m!2673414))

(declare-fun m!2673416 () Bool)

(assert (=> start!218348 m!2673416))

(declare-fun m!2673418 () Bool)

(assert (=> b!2241087 m!2673418))

(declare-fun m!2673420 () Bool)

(assert (=> b!2241089 m!2673420))

(declare-fun m!2673422 () Bool)

(assert (=> b!2241089 m!2673422))

(declare-fun m!2673424 () Bool)

(assert (=> mapNonEmpty!14786 m!2673424))

(check-sat (not b!2241096) (not b!2241093) (not mapNonEmpty!14786) (not start!218348) (not b_next!65785) b_and!175101 b_and!175103 (not b!2241092) (not b!2241087) tp_is_empty!10255 (not b_next!65787) (not b!2241089))
(check-sat b_and!175101 b_and!175103 (not b_next!65787) (not b_next!65785))
