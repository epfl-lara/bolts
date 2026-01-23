; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11134 () Bool)

(assert start!11134)

(declare-fun b_free!3337 () Bool)

(declare-fun b_next!3337 () Bool)

(assert (=> start!11134 (= b_free!3337 (not b_next!3337))))

(declare-fun tp!59453 () Bool)

(declare-fun b_and!5259 () Bool)

(assert (=> start!11134 (= tp!59453 b_and!5259)))

(declare-fun b_free!3339 () Bool)

(declare-fun b_next!3339 () Bool)

(assert (=> start!11134 (= b_free!3339 (not b_next!3339))))

(declare-fun tp!59455 () Bool)

(declare-fun b_and!5261 () Bool)

(assert (=> start!11134 (= tp!59455 b_and!5261)))

(assert (=> start!11134 true))

(declare-fun order!1001 () Int)

(declare-fun order!1003 () Int)

(declare-fun lambda!2514 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!659 (Int Int) Int)

(declare-fun dynLambda!660 (Int Int) Int)

(assert (=> start!11134 (< (dynLambda!659 order!1001 f!927) (dynLambda!660 order!1003 lambda!2514))))

(assert (=> start!11134 true))

(declare-fun g!9 () Int)

(assert (=> start!11134 (< (dynLambda!659 order!1001 g!9) (dynLambda!660 order!1003 lambda!2514))))

(declare-fun b!109669 () Bool)

(declare-fun e!61101 () Bool)

(declare-fun e!61100 () Bool)

(assert (=> b!109669 (= e!61101 (not e!61100))))

(declare-fun res!52787 () Bool)

(assert (=> b!109669 (=> res!52787 e!61100)))

(declare-datatypes ((A!271 0))(
  ( (A!272 (val!574 Int)) )
))
(declare-datatypes ((List!1759 0))(
  ( (Nil!1753) (Cons!1753 (h!7150 A!271) (t!21962 List!1759)) )
))
(declare-fun lt!31545 () List!1759)

(declare-fun forall!289 (List!1759 Int) Bool)

(assert (=> b!109669 (= res!52787 (not (forall!289 (t!21962 lt!31545) lambda!2514)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!31548 () (InoxSet A!271))

(declare-fun lt!31541 () (InoxSet A!271))

(declare-fun lt!31543 () (InoxSet A!271))

(declare-datatypes ((B!563 0))(
  ( (B!564 (val!575 Int)) )
))
(declare-fun flatMap!41 ((InoxSet A!271) Int) (InoxSet B!563))

(assert (=> b!109669 (= ((_ map or) (flatMap!41 lt!31543 g!9) (flatMap!41 lt!31548 g!9)) (flatMap!41 lt!31541 g!9))))

(declare-datatypes ((Unit!1212 0))(
  ( (Unit!1213) )
))
(declare-fun lt!31550 () Unit!1212)

(declare-fun lemmaFlatMapAssociative!28 ((InoxSet A!271) (InoxSet A!271) Int) Unit!1212)

(assert (=> b!109669 (= lt!31550 (lemmaFlatMapAssociative!28 lt!31543 lt!31548 g!9))))

(assert (=> b!109669 (= ((_ map or) (flatMap!41 lt!31543 f!927) (flatMap!41 lt!31548 f!927)) (flatMap!41 lt!31541 f!927))))

(declare-fun lt!31546 () Unit!1212)

(assert (=> b!109669 (= lt!31546 (lemmaFlatMapAssociative!28 lt!31543 lt!31548 f!927))))

(declare-fun b!109670 () Bool)

(declare-fun e!61102 () Bool)

(declare-fun e!61103 () Bool)

(assert (=> b!109670 (= e!61102 e!61103)))

(declare-fun res!52790 () Bool)

(assert (=> b!109670 (=> (not res!52790) (not e!61103))))

(get-info :version)

(assert (=> b!109670 (= res!52790 ((_ is Cons!1753) lt!31545))))

(declare-fun s!1451 () (InoxSet A!271))

(declare-fun toList!238 ((InoxSet A!271)) List!1759)

(assert (=> b!109670 (= lt!31545 (toList!238 s!1451))))

(declare-fun setNonEmpty!1532 () Bool)

(declare-fun setRes!1532 () Bool)

(declare-fun tp!59454 () Bool)

(declare-fun tp_is_empty!873 () Bool)

(assert (=> setNonEmpty!1532 (= setRes!1532 (and tp!59454 tp_is_empty!873))))

(declare-fun setElem!1532 () A!271)

(declare-fun setRest!1532 () (InoxSet A!271))

(assert (=> setNonEmpty!1532 (= s!1451 ((_ map or) (store ((as const (Array A!271 Bool)) false) setElem!1532 true) setRest!1532))))

(declare-fun b!109671 () Bool)

(declare-fun res!52786 () Bool)

(declare-fun e!61098 () Bool)

(assert (=> b!109671 (=> res!52786 e!61098)))

(declare-fun forall!290 ((InoxSet A!271) Int) Bool)

(assert (=> b!109671 (= res!52786 (not (forall!290 lt!31548 lambda!2514)))))

(declare-fun res!52791 () Bool)

(assert (=> start!11134 (=> (not res!52791) (not e!61102))))

(assert (=> start!11134 (= res!52791 (forall!290 s!1451 lambda!2514))))

(assert (=> start!11134 e!61102))

(declare-fun condSetEmpty!1532 () Bool)

(assert (=> start!11134 (= condSetEmpty!1532 (= s!1451 ((as const (Array A!271 Bool)) false)))))

(assert (=> start!11134 setRes!1532))

(assert (=> start!11134 tp!59453))

(assert (=> start!11134 tp!59455))

(declare-fun b!109672 () Bool)

(assert (=> b!109672 (= e!61103 e!61101)))

(declare-fun res!52788 () Bool)

(assert (=> b!109672 (=> (not res!52788) (not e!61101))))

(assert (=> b!109672 (= res!52788 (= s!1451 lt!31541))))

(assert (=> b!109672 (= lt!31541 ((_ map or) lt!31543 lt!31548))))

(declare-fun content!181 (List!1759) (InoxSet A!271))

(assert (=> b!109672 (= lt!31548 (content!181 (t!21962 lt!31545)))))

(assert (=> b!109672 (= lt!31543 (store ((as const (Array A!271 Bool)) false) (h!7150 lt!31545) true))))

(declare-fun setIsEmpty!1532 () Bool)

(assert (=> setIsEmpty!1532 setRes!1532))

(declare-fun b!109673 () Bool)

(declare-fun e!61099 () Bool)

(declare-fun lt!31549 () Int)

(declare-fun lt!31547 () Int)

(assert (=> b!109673 (= e!61099 (= lt!31549 lt!31547))))

(assert (=> b!109673 (= lt!31547 lt!31549)))

(declare-fun size!1539 (List!1759) Int)

(assert (=> b!109673 (= lt!31547 (size!1539 (toList!238 lt!31548)))))

(declare-fun lt!31551 () Unit!1212)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!8 (List!1759) Unit!1212)

(assert (=> b!109673 (= lt!31551 (lemmaNoDuplicateThenContentToListSameSize!8 (t!21962 lt!31545)))))

(declare-fun b!109674 () Bool)

(assert (=> b!109674 (= e!61100 e!61098)))

(declare-fun res!52789 () Bool)

(assert (=> b!109674 (=> res!52789 e!61098)))

(declare-fun dynLambda!661 (Int A!271) (InoxSet B!563))

(assert (=> b!109674 (= res!52789 (not (= (dynLambda!661 f!927 (h!7150 lt!31545)) (dynLambda!661 g!9 (h!7150 lt!31545)))))))

(assert (=> b!109674 (forall!290 lt!31548 lambda!2514)))

(declare-fun lt!31552 () Unit!1212)

(declare-fun lemmaForallThenOnContent!24 (List!1759 Int) Unit!1212)

(assert (=> b!109674 (= lt!31552 (lemmaForallThenOnContent!24 (t!21962 lt!31545) lambda!2514))))

(declare-fun b!109675 () Bool)

(assert (=> b!109675 (= e!61098 e!61099)))

(declare-fun res!52792 () Bool)

(assert (=> b!109675 (=> res!52792 e!61099)))

(declare-fun lt!31554 () Int)

(assert (=> b!109675 (= res!52792 (not (= lt!31554 lt!31549)))))

(assert (=> b!109675 (= lt!31549 (size!1539 (t!21962 lt!31545)))))

(declare-fun lt!31544 () Int)

(assert (=> b!109675 (> lt!31544 lt!31554)))

(declare-fun tail!192 (List!1759) List!1759)

(assert (=> b!109675 (= lt!31554 (size!1539 (tail!192 lt!31545)))))

(assert (=> b!109675 (= lt!31544 (size!1539 lt!31545))))

(declare-fun lt!31553 () Unit!1212)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!16 ((InoxSet A!271)) Unit!1212)

(assert (=> b!109675 (= lt!31553 (lemmaToListSizeBiggerThanTailContentSize!16 s!1451))))

(declare-fun lt!31542 () Unit!1212)

(declare-fun forallContained!20 (List!1759 Int A!271) Unit!1212)

(assert (=> b!109675 (= lt!31542 (forallContained!20 lt!31545 lambda!2514 (h!7150 lt!31545)))))

(assert (= (and start!11134 res!52791) b!109670))

(assert (= (and b!109670 res!52790) b!109672))

(assert (= (and b!109672 res!52788) b!109669))

(assert (= (and b!109669 (not res!52787)) b!109674))

(assert (= (and b!109674 (not res!52789)) b!109671))

(assert (= (and b!109671 (not res!52786)) b!109675))

(assert (= (and b!109675 (not res!52792)) b!109673))

(assert (= (and start!11134 condSetEmpty!1532) setIsEmpty!1532))

(assert (= (and start!11134 (not condSetEmpty!1532)) setNonEmpty!1532))

(declare-fun b_lambda!1497 () Bool)

(assert (=> (not b_lambda!1497) (not b!109674)))

(declare-fun t!21955 () Bool)

(declare-fun tb!3463 () Bool)

(assert (=> (and start!11134 (= f!927 f!927) t!21955) tb!3463))

(assert (=> b!109674 t!21955))

(declare-fun result!5008 () Bool)

(declare-fun b_and!5263 () Bool)

(assert (= b_and!5259 (and (=> t!21955 result!5008) b_and!5263)))

(declare-fun tb!3465 () Bool)

(declare-fun t!21957 () Bool)

(assert (=> (and start!11134 (= g!9 f!927) t!21957) tb!3465))

(assert (=> b!109674 t!21957))

(declare-fun result!5010 () Bool)

(declare-fun b_and!5265 () Bool)

(assert (= b_and!5261 (and (=> t!21957 result!5010) b_and!5265)))

(declare-fun b_lambda!1499 () Bool)

(assert (=> (not b_lambda!1499) (not b!109674)))

(declare-fun tb!3467 () Bool)

(declare-fun t!21959 () Bool)

(assert (=> (and start!11134 (= f!927 g!9) t!21959) tb!3467))

(assert (=> b!109674 t!21959))

(declare-fun result!5012 () Bool)

(declare-fun b_and!5267 () Bool)

(assert (= b_and!5263 (and (=> t!21959 result!5012) b_and!5267)))

(declare-fun t!21961 () Bool)

(declare-fun tb!3469 () Bool)

(assert (=> (and start!11134 (= g!9 g!9) t!21961) tb!3469))

(assert (=> b!109674 t!21961))

(declare-fun result!5014 () Bool)

(declare-fun b_and!5269 () Bool)

(assert (= b_and!5265 (and (=> t!21961 result!5014) b_and!5269)))

(declare-fun m!99302 () Bool)

(assert (=> b!109674 m!99302))

(declare-fun m!99304 () Bool)

(assert (=> b!109674 m!99304))

(declare-fun m!99306 () Bool)

(assert (=> b!109674 m!99306))

(declare-fun m!99308 () Bool)

(assert (=> b!109674 m!99308))

(declare-fun m!99310 () Bool)

(assert (=> b!109673 m!99310))

(assert (=> b!109673 m!99310))

(declare-fun m!99312 () Bool)

(assert (=> b!109673 m!99312))

(declare-fun m!99314 () Bool)

(assert (=> b!109673 m!99314))

(declare-fun m!99316 () Bool)

(assert (=> b!109669 m!99316))

(declare-fun m!99318 () Bool)

(assert (=> b!109669 m!99318))

(declare-fun m!99320 () Bool)

(assert (=> b!109669 m!99320))

(declare-fun m!99322 () Bool)

(assert (=> b!109669 m!99322))

(declare-fun m!99324 () Bool)

(assert (=> b!109669 m!99324))

(declare-fun m!99326 () Bool)

(assert (=> b!109669 m!99326))

(declare-fun m!99328 () Bool)

(assert (=> b!109669 m!99328))

(declare-fun m!99330 () Bool)

(assert (=> b!109669 m!99330))

(declare-fun m!99332 () Bool)

(assert (=> b!109669 m!99332))

(assert (=> b!109671 m!99306))

(declare-fun m!99334 () Bool)

(assert (=> b!109672 m!99334))

(declare-fun m!99336 () Bool)

(assert (=> b!109672 m!99336))

(declare-fun m!99338 () Bool)

(assert (=> start!11134 m!99338))

(declare-fun m!99340 () Bool)

(assert (=> b!109675 m!99340))

(assert (=> b!109675 m!99340))

(declare-fun m!99342 () Bool)

(assert (=> b!109675 m!99342))

(declare-fun m!99344 () Bool)

(assert (=> b!109675 m!99344))

(declare-fun m!99346 () Bool)

(assert (=> b!109675 m!99346))

(declare-fun m!99348 () Bool)

(assert (=> b!109675 m!99348))

(declare-fun m!99350 () Bool)

(assert (=> b!109675 m!99350))

(declare-fun m!99352 () Bool)

(assert (=> b!109670 m!99352))

(check-sat (not b!109670) (not b_next!3339) (not b!109673) (not b!109672) (not b_next!3337) (not b!109674) (not tb!3469) (not start!11134) b_and!5269 (not tb!3465) (not b_lambda!1497) tp_is_empty!873 (not b_lambda!1499) (not b!109669) (not b!109671) (not setNonEmpty!1532) (not tb!3463) (not b!109675) (not tb!3467) b_and!5267)
(check-sat b_and!5267 b_and!5269 (not b_next!3339) (not b_next!3337))
