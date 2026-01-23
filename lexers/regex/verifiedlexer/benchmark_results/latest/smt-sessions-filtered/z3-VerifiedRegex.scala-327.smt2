; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10874 () Bool)

(assert start!10874)

(declare-fun b_free!3209 () Bool)

(declare-fun b_next!3209 () Bool)

(assert (=> start!10874 (= b_free!3209 (not b_next!3209))))

(declare-fun tp!59043 () Bool)

(declare-fun b_and!4771 () Bool)

(assert (=> start!10874 (= tp!59043 b_and!4771)))

(declare-fun b_free!3211 () Bool)

(declare-fun b_next!3211 () Bool)

(assert (=> start!10874 (= b_free!3211 (not b_next!3211))))

(declare-fun tp!59044 () Bool)

(declare-fun b_and!4773 () Bool)

(assert (=> start!10874 (= tp!59044 b_and!4773)))

(assert (=> start!10874 true))

(declare-fun order!875 () Int)

(declare-fun order!873 () Int)

(declare-fun lambda!2226 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!558 (Int Int) Int)

(declare-fun dynLambda!559 (Int Int) Int)

(assert (=> start!10874 (< (dynLambda!558 order!873 f!927) (dynLambda!559 order!875 lambda!2226))))

(assert (=> start!10874 true))

(declare-fun g!9 () Int)

(assert (=> start!10874 (< (dynLambda!558 order!873 g!9) (dynLambda!559 order!875 lambda!2226))))

(declare-fun setIsEmpty!1331 () Bool)

(declare-fun setRes!1331 () Bool)

(assert (=> setIsEmpty!1331 setRes!1331))

(declare-fun b!108749 () Bool)

(declare-fun e!60400 () Bool)

(declare-fun e!60399 () Bool)

(assert (=> b!108749 (= e!60400 e!60399)))

(declare-fun res!52022 () Bool)

(assert (=> b!108749 (=> (not res!52022) (not e!60399))))

(declare-datatypes ((A!207 0))(
  ( (A!208 (val!512 Int)) )
))
(declare-datatypes ((List!1727 0))(
  ( (Nil!1721) (Cons!1721 (h!7118 A!207) (t!21594 List!1727)) )
))
(declare-fun lt!30539 () List!1727)

(get-info :version)

(assert (=> b!108749 (= res!52022 ((_ is Cons!1721) lt!30539))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1451 () (InoxSet A!207))

(declare-fun toList!206 ((InoxSet A!207)) List!1727)

(assert (=> b!108749 (= lt!30539 (toList!206 s!1451))))

(declare-fun setNonEmpty!1331 () Bool)

(declare-fun tp!59042 () Bool)

(declare-fun tp_is_empty!793 () Bool)

(assert (=> setNonEmpty!1331 (= setRes!1331 (and tp!59042 tp_is_empty!793))))

(declare-fun setElem!1331 () A!207)

(declare-fun setRest!1331 () (InoxSet A!207))

(assert (=> setNonEmpty!1331 (= s!1451 ((_ map or) (store ((as const (Array A!207 Bool)) false) setElem!1331 true) setRest!1331))))

(declare-fun res!52021 () Bool)

(assert (=> start!10874 (=> (not res!52021) (not e!60400))))

(declare-fun forall!230 ((InoxSet A!207) Int) Bool)

(assert (=> start!10874 (= res!52021 (forall!230 s!1451 lambda!2226))))

(assert (=> start!10874 e!60400))

(declare-fun condSetEmpty!1331 () Bool)

(assert (=> start!10874 (= condSetEmpty!1331 (= s!1451 ((as const (Array A!207 Bool)) false)))))

(assert (=> start!10874 setRes!1331))

(assert (=> start!10874 tp!59043))

(assert (=> start!10874 tp!59044))

(declare-fun b!108750 () Bool)

(declare-fun e!60401 () Bool)

(assert (=> b!108750 (= e!60401 (not true))))

(declare-fun lt!30540 () (InoxSet A!207))

(declare-fun lt!30537 () (InoxSet A!207))

(declare-fun lt!30542 () (InoxSet A!207))

(declare-datatypes ((B!503 0))(
  ( (B!504 (val!513 Int)) )
))
(declare-fun flatMap!13 ((InoxSet A!207) Int) (InoxSet B!503))

(assert (=> b!108750 (= ((_ map or) (flatMap!13 lt!30537 g!9) (flatMap!13 lt!30540 g!9)) (flatMap!13 lt!30542 g!9))))

(declare-datatypes ((Unit!1156 0))(
  ( (Unit!1157) )
))
(declare-fun lt!30541 () Unit!1156)

(declare-fun lemmaFlatMapAssociative!2 ((InoxSet A!207) (InoxSet A!207) Int) Unit!1156)

(assert (=> b!108750 (= lt!30541 (lemmaFlatMapAssociative!2 lt!30537 lt!30540 g!9))))

(assert (=> b!108750 (= ((_ map or) (flatMap!13 lt!30537 f!927) (flatMap!13 lt!30540 f!927)) (flatMap!13 lt!30542 f!927))))

(declare-fun lt!30538 () Unit!1156)

(assert (=> b!108750 (= lt!30538 (lemmaFlatMapAssociative!2 lt!30537 lt!30540 f!927))))

(declare-fun b!108751 () Bool)

(assert (=> b!108751 (= e!60399 e!60401)))

(declare-fun res!52020 () Bool)

(assert (=> b!108751 (=> (not res!52020) (not e!60401))))

(assert (=> b!108751 (= res!52020 (= s!1451 lt!30542))))

(assert (=> b!108751 (= lt!30542 ((_ map or) lt!30537 lt!30540))))

(declare-fun content!153 (List!1727) (InoxSet A!207))

(assert (=> b!108751 (= lt!30540 (content!153 (t!21594 lt!30539)))))

(assert (=> b!108751 (= lt!30537 (store ((as const (Array A!207 Bool)) false) (h!7118 lt!30539) true))))

(assert (= (and start!10874 res!52021) b!108749))

(assert (= (and b!108749 res!52022) b!108751))

(assert (= (and b!108751 res!52020) b!108750))

(assert (= (and start!10874 condSetEmpty!1331) setIsEmpty!1331))

(assert (= (and start!10874 (not condSetEmpty!1331)) setNonEmpty!1331))

(declare-fun m!97482 () Bool)

(assert (=> b!108749 m!97482))

(declare-fun m!97484 () Bool)

(assert (=> start!10874 m!97484))

(declare-fun m!97486 () Bool)

(assert (=> b!108750 m!97486))

(declare-fun m!97488 () Bool)

(assert (=> b!108750 m!97488))

(declare-fun m!97490 () Bool)

(assert (=> b!108750 m!97490))

(declare-fun m!97492 () Bool)

(assert (=> b!108750 m!97492))

(declare-fun m!97494 () Bool)

(assert (=> b!108750 m!97494))

(declare-fun m!97496 () Bool)

(assert (=> b!108750 m!97496))

(declare-fun m!97498 () Bool)

(assert (=> b!108750 m!97498))

(declare-fun m!97500 () Bool)

(assert (=> b!108750 m!97500))

(declare-fun m!97502 () Bool)

(assert (=> b!108751 m!97502))

(declare-fun m!97504 () Bool)

(assert (=> b!108751 m!97504))

(check-sat (not b!108750) tp_is_empty!793 (not b!108751) b_and!4773 (not setNonEmpty!1331) (not b_next!3209) (not b_next!3211) b_and!4771 (not start!10874) (not b!108749))
(check-sat b_and!4771 b_and!4773 (not b_next!3211) (not b_next!3209))
