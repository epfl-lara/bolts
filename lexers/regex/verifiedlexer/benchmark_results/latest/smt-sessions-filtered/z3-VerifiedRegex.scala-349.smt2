; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11170 () Bool)

(assert start!11170)

(declare-fun b_free!3385 () Bool)

(declare-fun b_next!3385 () Bool)

(assert (=> start!11170 (= b_free!3385 (not b_next!3385))))

(declare-fun tp!59568 () Bool)

(declare-fun b_and!5347 () Bool)

(assert (=> start!11170 (= tp!59568 b_and!5347)))

(declare-fun b_free!3387 () Bool)

(declare-fun b_next!3387 () Bool)

(assert (=> start!11170 (= b_free!3387 (not b_next!3387))))

(declare-fun tp!59569 () Bool)

(declare-fun b_and!5349 () Bool)

(assert (=> start!11170 (= tp!59569 b_and!5349)))

(assert (=> start!11170 true))

(declare-fun lambda!2590 () Int)

(declare-fun order!1051 () Int)

(declare-fun order!1049 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!688 (Int Int) Int)

(declare-fun dynLambda!689 (Int Int) Int)

(assert (=> start!11170 (< (dynLambda!688 order!1049 f!927) (dynLambda!689 order!1051 lambda!2590))))

(assert (=> start!11170 true))

(declare-fun g!9 () Int)

(assert (=> start!11170 (< (dynLambda!688 order!1049 g!9) (dynLambda!689 order!1051 lambda!2590))))

(declare-fun b!109862 () Bool)

(declare-fun e!61232 () Bool)

(declare-datatypes ((A!295 0))(
  ( (A!296 (val!596 Int)) )
))
(declare-datatypes ((List!1771 0))(
  ( (Nil!1765) (Cons!1765 (h!7162 A!295) (t!22006 List!1771)) )
))
(declare-fun lt!31862 () List!1771)

(declare-fun forall!309 (List!1771 Int) Bool)

(assert (=> b!109862 (= e!61232 (forall!309 (t!22006 lt!31862) lambda!2590))))

(declare-fun setIsEmpty!1574 () Bool)

(declare-fun setRes!1574 () Bool)

(assert (=> setIsEmpty!1574 setRes!1574))

(declare-fun b!109863 () Bool)

(declare-fun e!61233 () Bool)

(declare-fun e!61234 () Bool)

(assert (=> b!109863 (= e!61233 e!61234)))

(declare-fun res!52941 () Bool)

(assert (=> b!109863 (=> (not res!52941) (not e!61234))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1451 () (InoxSet A!295))

(declare-fun lt!31866 () (InoxSet A!295))

(assert (=> b!109863 (= res!52941 (= s!1451 lt!31866))))

(declare-fun lt!31864 () (InoxSet A!295))

(declare-fun lt!31861 () (InoxSet A!295))

(assert (=> b!109863 (= lt!31866 ((_ map or) lt!31864 lt!31861))))

(declare-fun content!189 (List!1771) (InoxSet A!295))

(assert (=> b!109863 (= lt!31861 (content!189 (t!22006 lt!31862)))))

(assert (=> b!109863 (= lt!31864 (store ((as const (Array A!295 Bool)) false) (h!7162 lt!31862) true))))

(declare-fun b!109864 () Bool)

(declare-fun e!61235 () Bool)

(assert (=> b!109864 (= e!61235 e!61233)))

(declare-fun res!52940 () Bool)

(assert (=> b!109864 (=> (not res!52940) (not e!61233))))

(get-info :version)

(assert (=> b!109864 (= res!52940 ((_ is Cons!1765) lt!31862))))

(declare-fun toList!250 ((InoxSet A!295)) List!1771)

(assert (=> b!109864 (= lt!31862 (toList!250 s!1451))))

(declare-fun setNonEmpty!1574 () Bool)

(declare-fun tp!59567 () Bool)

(declare-fun tp_is_empty!897 () Bool)

(assert (=> setNonEmpty!1574 (= setRes!1574 (and tp!59567 tp_is_empty!897))))

(declare-fun setElem!1574 () A!295)

(declare-fun setRest!1574 () (InoxSet A!295))

(assert (=> setNonEmpty!1574 (= s!1451 ((_ map or) (store ((as const (Array A!295 Bool)) false) setElem!1574 true) setRest!1574))))

(declare-fun res!52939 () Bool)

(assert (=> start!11170 (=> (not res!52939) (not e!61235))))

(declare-fun forall!310 ((InoxSet A!295) Int) Bool)

(assert (=> start!11170 (= res!52939 (forall!310 s!1451 lambda!2590))))

(assert (=> start!11170 e!61235))

(declare-fun condSetEmpty!1574 () Bool)

(assert (=> start!11170 (= condSetEmpty!1574 (= s!1451 ((as const (Array A!295 Bool)) false)))))

(assert (=> start!11170 setRes!1574))

(assert (=> start!11170 tp!59568))

(assert (=> start!11170 tp!59569))

(declare-fun b!109865 () Bool)

(assert (=> b!109865 (= e!61234 (not e!61232))))

(declare-fun res!52942 () Bool)

(assert (=> b!109865 (=> res!52942 e!61232)))

(assert (=> b!109865 (= res!52942 (not (forall!309 (t!22006 lt!31862) lambda!2590)))))

(declare-datatypes ((B!583 0))(
  ( (B!584 (val!597 Int)) )
))
(declare-fun flatMap!51 ((InoxSet A!295) Int) (InoxSet B!583))

(assert (=> b!109865 (= ((_ map or) (flatMap!51 lt!31864 g!9) (flatMap!51 lt!31861 g!9)) (flatMap!51 lt!31866 g!9))))

(declare-datatypes ((Unit!1232 0))(
  ( (Unit!1233) )
))
(declare-fun lt!31865 () Unit!1232)

(declare-fun lemmaFlatMapAssociative!34 ((InoxSet A!295) (InoxSet A!295) Int) Unit!1232)

(assert (=> b!109865 (= lt!31865 (lemmaFlatMapAssociative!34 lt!31864 lt!31861 g!9))))

(assert (=> b!109865 (= ((_ map or) (flatMap!51 lt!31864 f!927) (flatMap!51 lt!31861 f!927)) (flatMap!51 lt!31866 f!927))))

(declare-fun lt!31863 () Unit!1232)

(assert (=> b!109865 (= lt!31863 (lemmaFlatMapAssociative!34 lt!31864 lt!31861 f!927))))

(assert (= (and start!11170 res!52939) b!109864))

(assert (= (and b!109864 res!52940) b!109863))

(assert (= (and b!109863 res!52941) b!109865))

(assert (= (and b!109865 (not res!52942)) b!109862))

(assert (= (and start!11170 condSetEmpty!1574) setIsEmpty!1574))

(assert (= (and start!11170 (not condSetEmpty!1574)) setNonEmpty!1574))

(declare-fun m!99684 () Bool)

(assert (=> b!109864 m!99684))

(declare-fun m!99686 () Bool)

(assert (=> start!11170 m!99686))

(declare-fun m!99688 () Bool)

(assert (=> b!109863 m!99688))

(declare-fun m!99690 () Bool)

(assert (=> b!109863 m!99690))

(declare-fun m!99692 () Bool)

(assert (=> b!109862 m!99692))

(declare-fun m!99694 () Bool)

(assert (=> b!109865 m!99694))

(declare-fun m!99696 () Bool)

(assert (=> b!109865 m!99696))

(declare-fun m!99698 () Bool)

(assert (=> b!109865 m!99698))

(declare-fun m!99700 () Bool)

(assert (=> b!109865 m!99700))

(assert (=> b!109865 m!99692))

(declare-fun m!99702 () Bool)

(assert (=> b!109865 m!99702))

(declare-fun m!99704 () Bool)

(assert (=> b!109865 m!99704))

(declare-fun m!99706 () Bool)

(assert (=> b!109865 m!99706))

(declare-fun m!99708 () Bool)

(assert (=> b!109865 m!99708))

(check-sat (not b!109862) (not b_next!3385) b_and!5347 (not b_next!3387) (not b!109865) b_and!5349 (not b!109864) (not start!11170) tp_is_empty!897 (not setNonEmpty!1574) (not b!109863))
(check-sat b_and!5347 b_and!5349 (not b_next!3387) (not b_next!3385))
