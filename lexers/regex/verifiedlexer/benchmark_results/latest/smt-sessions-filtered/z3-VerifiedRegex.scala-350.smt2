; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11174 () Bool)

(assert start!11174)

(declare-fun b_free!3393 () Bool)

(declare-fun b_next!3393 () Bool)

(assert (=> start!11174 (= b_free!3393 (not b_next!3393))))

(declare-fun tp!59586 () Bool)

(declare-fun b_and!5363 () Bool)

(assert (=> start!11174 (= tp!59586 b_and!5363)))

(declare-fun b_free!3395 () Bool)

(declare-fun b_next!3395 () Bool)

(assert (=> start!11174 (= b_free!3395 (not b_next!3395))))

(declare-fun tp!59585 () Bool)

(declare-fun b_and!5365 () Bool)

(assert (=> start!11174 (= tp!59585 b_and!5365)))

(assert (=> start!11174 true))

(declare-fun lambda!2612 () Int)

(declare-fun order!1057 () Int)

(declare-fun order!1059 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!693 (Int Int) Int)

(declare-fun dynLambda!694 (Int Int) Int)

(assert (=> start!11174 (< (dynLambda!693 order!1057 f!927) (dynLambda!694 order!1059 lambda!2612))))

(assert (=> start!11174 true))

(declare-fun g!9 () Int)

(assert (=> start!11174 (< (dynLambda!693 order!1057 g!9) (dynLambda!694 order!1059 lambda!2612))))

(declare-fun b!109900 () Bool)

(declare-fun e!61262 () Bool)

(declare-fun e!61264 () Bool)

(assert (=> b!109900 (= e!61262 e!61264)))

(declare-fun res!52978 () Bool)

(assert (=> b!109900 (=> (not res!52978) (not e!61264))))

(declare-datatypes ((A!299 0))(
  ( (A!300 (val!600 Int)) )
))
(declare-datatypes ((List!1773 0))(
  ( (Nil!1767) (Cons!1767 (h!7164 A!299) (t!22024 List!1773)) )
))
(declare-fun lt!31911 () List!1773)

(get-info :version)

(assert (=> b!109900 (= res!52978 ((_ is Cons!1767) lt!31911))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1451 () (InoxSet A!299))

(declare-fun toList!252 ((InoxSet A!299)) List!1773)

(assert (=> b!109900 (= lt!31911 (toList!252 s!1451))))

(declare-fun b!109901 () Bool)

(declare-fun e!61263 () Bool)

(assert (=> b!109901 (= e!61263 (not (= s!1451 ((as const (Array A!299 Bool)) false))))))

(declare-datatypes ((Unit!1236 0))(
  ( (Unit!1237) )
))
(declare-fun lt!31909 () Unit!1236)

(declare-fun forallContained!26 (List!1773 Int A!299) Unit!1236)

(assert (=> b!109901 (= lt!31909 (forallContained!26 lt!31911 lambda!2612 (h!7164 lt!31911)))))

(declare-fun setNonEmpty!1580 () Bool)

(declare-fun setRes!1580 () Bool)

(declare-fun tp!59587 () Bool)

(declare-fun tp_is_empty!901 () Bool)

(assert (=> setNonEmpty!1580 (= setRes!1580 (and tp!59587 tp_is_empty!901))))

(declare-fun setElem!1580 () A!299)

(declare-fun setRest!1580 () (InoxSet A!299))

(assert (=> setNonEmpty!1580 (= s!1451 ((_ map or) (store ((as const (Array A!299 Bool)) false) setElem!1580 true) setRest!1580))))

(declare-fun b!109902 () Bool)

(declare-fun res!52974 () Bool)

(assert (=> b!109902 (=> res!52974 e!61263)))

(declare-fun lt!31913 () (InoxSet A!299))

(declare-fun forall!313 ((InoxSet A!299) Int) Bool)

(assert (=> b!109902 (= res!52974 (not (forall!313 lt!31913 lambda!2612)))))

(declare-fun b!109903 () Bool)

(declare-fun e!61265 () Bool)

(assert (=> b!109903 (= e!61265 e!61263)))

(declare-fun res!52973 () Bool)

(assert (=> b!109903 (=> res!52973 e!61263)))

(declare-datatypes ((B!587 0))(
  ( (B!588 (val!601 Int)) )
))
(declare-fun dynLambda!695 (Int A!299) (InoxSet B!587))

(assert (=> b!109903 (= res!52973 (not (= (dynLambda!695 f!927 (h!7164 lt!31911)) (dynLambda!695 g!9 (h!7164 lt!31911)))))))

(assert (=> b!109903 (forall!313 lt!31913 lambda!2612)))

(declare-fun lt!31914 () Unit!1236)

(declare-fun lemmaForallThenOnContent!30 (List!1773 Int) Unit!1236)

(assert (=> b!109903 (= lt!31914 (lemmaForallThenOnContent!30 (t!22024 lt!31911) lambda!2612))))

(declare-fun b!109904 () Bool)

(declare-fun e!61261 () Bool)

(assert (=> b!109904 (= e!61264 e!61261)))

(declare-fun res!52977 () Bool)

(assert (=> b!109904 (=> (not res!52977) (not e!61261))))

(declare-fun lt!31907 () (InoxSet A!299))

(assert (=> b!109904 (= res!52977 (= s!1451 lt!31907))))

(declare-fun lt!31912 () (InoxSet A!299))

(assert (=> b!109904 (= lt!31907 ((_ map or) lt!31912 lt!31913))))

(declare-fun content!191 (List!1773) (InoxSet A!299))

(assert (=> b!109904 (= lt!31913 (content!191 (t!22024 lt!31911)))))

(assert (=> b!109904 (= lt!31912 (store ((as const (Array A!299 Bool)) false) (h!7164 lt!31911) true))))

(declare-fun b!109905 () Bool)

(assert (=> b!109905 (= e!61261 (not e!61265))))

(declare-fun res!52976 () Bool)

(assert (=> b!109905 (=> res!52976 e!61265)))

(declare-fun forall!314 (List!1773 Int) Bool)

(assert (=> b!109905 (= res!52976 (not (forall!314 (t!22024 lt!31911) lambda!2612)))))

(declare-fun flatMap!53 ((InoxSet A!299) Int) (InoxSet B!587))

(assert (=> b!109905 (= ((_ map or) (flatMap!53 lt!31912 g!9) (flatMap!53 lt!31913 g!9)) (flatMap!53 lt!31907 g!9))))

(declare-fun lt!31910 () Unit!1236)

(declare-fun lemmaFlatMapAssociative!36 ((InoxSet A!299) (InoxSet A!299) Int) Unit!1236)

(assert (=> b!109905 (= lt!31910 (lemmaFlatMapAssociative!36 lt!31912 lt!31913 g!9))))

(assert (=> b!109905 (= ((_ map or) (flatMap!53 lt!31912 f!927) (flatMap!53 lt!31913 f!927)) (flatMap!53 lt!31907 f!927))))

(declare-fun lt!31908 () Unit!1236)

(assert (=> b!109905 (= lt!31908 (lemmaFlatMapAssociative!36 lt!31912 lt!31913 f!927))))

(declare-fun setIsEmpty!1580 () Bool)

(assert (=> setIsEmpty!1580 setRes!1580))

(declare-fun res!52975 () Bool)

(assert (=> start!11174 (=> (not res!52975) (not e!61262))))

(assert (=> start!11174 (= res!52975 (forall!313 s!1451 lambda!2612))))

(assert (=> start!11174 e!61262))

(declare-fun condSetEmpty!1580 () Bool)

(assert (=> start!11174 (= condSetEmpty!1580 (= s!1451 ((as const (Array A!299 Bool)) false)))))

(assert (=> start!11174 setRes!1580))

(assert (=> start!11174 tp!59586))

(assert (=> start!11174 tp!59585))

(assert (= (and start!11174 res!52975) b!109900))

(assert (= (and b!109900 res!52978) b!109904))

(assert (= (and b!109904 res!52977) b!109905))

(assert (= (and b!109905 (not res!52976)) b!109903))

(assert (= (and b!109903 (not res!52973)) b!109902))

(assert (= (and b!109902 (not res!52974)) b!109901))

(assert (= (and start!11174 condSetEmpty!1580) setIsEmpty!1580))

(assert (= (and start!11174 (not condSetEmpty!1580)) setNonEmpty!1580))

(declare-fun b_lambda!1521 () Bool)

(assert (=> (not b_lambda!1521) (not b!109903)))

(declare-fun t!22017 () Bool)

(declare-fun tb!3511 () Bool)

(assert (=> (and start!11174 (= f!927 f!927) t!22017) tb!3511))

(assert (=> b!109903 t!22017))

(declare-fun result!5060 () Bool)

(declare-fun b_and!5367 () Bool)

(assert (= b_and!5363 (and (=> t!22017 result!5060) b_and!5367)))

(declare-fun t!22019 () Bool)

(declare-fun tb!3513 () Bool)

(assert (=> (and start!11174 (= g!9 f!927) t!22019) tb!3513))

(assert (=> b!109903 t!22019))

(declare-fun result!5062 () Bool)

(declare-fun b_and!5369 () Bool)

(assert (= b_and!5365 (and (=> t!22019 result!5062) b_and!5369)))

(declare-fun b_lambda!1523 () Bool)

(assert (=> (not b_lambda!1523) (not b!109903)))

(declare-fun tb!3515 () Bool)

(declare-fun t!22021 () Bool)

(assert (=> (and start!11174 (= f!927 g!9) t!22021) tb!3515))

(assert (=> b!109903 t!22021))

(declare-fun result!5064 () Bool)

(declare-fun b_and!5371 () Bool)

(assert (= b_and!5367 (and (=> t!22021 result!5064) b_and!5371)))

(declare-fun t!22023 () Bool)

(declare-fun tb!3517 () Bool)

(assert (=> (and start!11174 (= g!9 g!9) t!22023) tb!3517))

(assert (=> b!109903 t!22023))

(declare-fun result!5066 () Bool)

(declare-fun b_and!5373 () Bool)

(assert (= b_and!5369 (and (=> t!22023 result!5066) b_and!5373)))

(declare-fun m!99746 () Bool)

(assert (=> start!11174 m!99746))

(declare-fun m!99748 () Bool)

(assert (=> b!109903 m!99748))

(declare-fun m!99750 () Bool)

(assert (=> b!109903 m!99750))

(declare-fun m!99752 () Bool)

(assert (=> b!109903 m!99752))

(declare-fun m!99754 () Bool)

(assert (=> b!109903 m!99754))

(declare-fun m!99756 () Bool)

(assert (=> b!109904 m!99756))

(declare-fun m!99758 () Bool)

(assert (=> b!109904 m!99758))

(declare-fun m!99760 () Bool)

(assert (=> b!109900 m!99760))

(declare-fun m!99762 () Bool)

(assert (=> b!109905 m!99762))

(declare-fun m!99764 () Bool)

(assert (=> b!109905 m!99764))

(declare-fun m!99766 () Bool)

(assert (=> b!109905 m!99766))

(declare-fun m!99768 () Bool)

(assert (=> b!109905 m!99768))

(declare-fun m!99770 () Bool)

(assert (=> b!109905 m!99770))

(declare-fun m!99772 () Bool)

(assert (=> b!109905 m!99772))

(declare-fun m!99774 () Bool)

(assert (=> b!109905 m!99774))

(declare-fun m!99776 () Bool)

(assert (=> b!109905 m!99776))

(declare-fun m!99778 () Bool)

(assert (=> b!109905 m!99778))

(declare-fun m!99780 () Bool)

(assert (=> b!109901 m!99780))

(assert (=> b!109902 m!99752))

(check-sat tp_is_empty!901 (not tb!3513) (not b!109905) (not setNonEmpty!1580) (not b!109902) (not b_next!3393) b_and!5373 (not b_lambda!1523) (not b!109901) (not tb!3517) (not b_lambda!1521) (not tb!3515) (not b_next!3395) b_and!5371 (not b!109900) (not start!11174) (not b!109903) (not tb!3511) (not b!109904))
(check-sat b_and!5371 b_and!5373 (not b_next!3395) (not b_next!3393))
