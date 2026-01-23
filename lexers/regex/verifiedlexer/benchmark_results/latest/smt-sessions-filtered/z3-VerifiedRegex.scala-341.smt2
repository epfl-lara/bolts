; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11082 () Bool)

(assert start!11082)

(declare-fun b_free!3321 () Bool)

(declare-fun b_next!3321 () Bool)

(assert (=> start!11082 (= b_free!3321 (not b_next!3321))))

(declare-fun tp!59405 () Bool)

(declare-fun b_and!5179 () Bool)

(assert (=> start!11082 (= tp!59405 b_and!5179)))

(declare-fun b_free!3323 () Bool)

(declare-fun b_next!3323 () Bool)

(assert (=> start!11082 (= b_free!3323 (not b_next!3323))))

(declare-fun tp!59403 () Bool)

(declare-fun b_and!5181 () Bool)

(assert (=> start!11082 (= tp!59403 b_and!5181)))

(assert (=> start!11082 true))

(declare-fun order!985 () Int)

(declare-fun order!987 () Int)

(declare-fun lambda!2470 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!645 (Int Int) Int)

(declare-fun dynLambda!646 (Int Int) Int)

(assert (=> start!11082 (< (dynLambda!645 order!985 f!927) (dynLambda!646 order!987 lambda!2470))))

(assert (=> start!11082 true))

(declare-fun g!9 () Int)

(assert (=> start!11082 (< (dynLambda!645 order!985 g!9) (dynLambda!646 order!987 lambda!2470))))

(declare-fun setIsEmpty!1506 () Bool)

(declare-fun setRes!1506 () Bool)

(assert (=> setIsEmpty!1506 setRes!1506))

(declare-fun res!52688 () Bool)

(declare-fun e!60995 () Bool)

(assert (=> start!11082 (=> (not res!52688) (not e!60995))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!263 0))(
  ( (A!264 (val!566 Int)) )
))
(declare-fun s!1451 () (InoxSet A!263))

(declare-fun forall!281 ((InoxSet A!263) Int) Bool)

(assert (=> start!11082 (= res!52688 (forall!281 s!1451 lambda!2470))))

(assert (=> start!11082 e!60995))

(declare-fun condSetEmpty!1506 () Bool)

(assert (=> start!11082 (= condSetEmpty!1506 (= s!1451 ((as const (Array A!263 Bool)) false)))))

(assert (=> start!11082 setRes!1506))

(assert (=> start!11082 tp!59405))

(assert (=> start!11082 tp!59403))

(declare-fun b!109520 () Bool)

(declare-fun e!60994 () Bool)

(declare-fun e!60996 () Bool)

(assert (=> b!109520 (= e!60994 e!60996)))

(declare-fun res!52685 () Bool)

(assert (=> b!109520 (=> res!52685 e!60996)))

(declare-datatypes ((List!1755 0))(
  ( (Nil!1749) (Cons!1749 (h!7146 A!263) (t!21910 List!1755)) )
))
(declare-fun lt!31348 () List!1755)

(declare-datatypes ((B!555 0))(
  ( (B!556 (val!567 Int)) )
))
(declare-fun dynLambda!647 (Int A!263) (InoxSet B!555))

(assert (=> b!109520 (= res!52685 (not (= (dynLambda!647 f!927 (h!7146 lt!31348)) (dynLambda!647 g!9 (h!7146 lt!31348)))))))

(declare-fun lt!31347 () (InoxSet A!263))

(assert (=> b!109520 (forall!281 lt!31347 lambda!2470)))

(declare-datatypes ((Unit!1204 0))(
  ( (Unit!1205) )
))
(declare-fun lt!31354 () Unit!1204)

(declare-fun lemmaForallThenOnContent!20 (List!1755 Int) Unit!1204)

(assert (=> b!109520 (= lt!31354 (lemmaForallThenOnContent!20 (t!21910 lt!31348) lambda!2470))))

(declare-fun setNonEmpty!1506 () Bool)

(declare-fun tp!59404 () Bool)

(declare-fun tp_is_empty!861 () Bool)

(assert (=> setNonEmpty!1506 (= setRes!1506 (and tp!59404 tp_is_empty!861))))

(declare-fun setElem!1506 () A!263)

(declare-fun setRest!1506 () (InoxSet A!263))

(assert (=> setNonEmpty!1506 (= s!1451 ((_ map or) (store ((as const (Array A!263 Bool)) false) setElem!1506 true) setRest!1506))))

(declare-fun b!109521 () Bool)

(declare-fun res!52690 () Bool)

(assert (=> b!109521 (=> res!52690 e!60996)))

(assert (=> b!109521 (= res!52690 (not (forall!281 lt!31347 lambda!2470)))))

(declare-fun b!109522 () Bool)

(declare-fun e!60997 () Bool)

(declare-fun e!60993 () Bool)

(assert (=> b!109522 (= e!60997 e!60993)))

(declare-fun res!52686 () Bool)

(assert (=> b!109522 (=> (not res!52686) (not e!60993))))

(declare-fun lt!31353 () (InoxSet A!263))

(assert (=> b!109522 (= res!52686 (= s!1451 lt!31353))))

(declare-fun lt!31351 () (InoxSet A!263))

(assert (=> b!109522 (= lt!31353 ((_ map or) lt!31351 lt!31347))))

(declare-fun content!177 (List!1755) (InoxSet A!263))

(assert (=> b!109522 (= lt!31347 (content!177 (t!21910 lt!31348)))))

(assert (=> b!109522 (= lt!31351 (store ((as const (Array A!263 Bool)) false) (h!7146 lt!31348) true))))

(declare-fun b!109523 () Bool)

(assert (=> b!109523 (= e!60996 true)))

(declare-fun size!1535 (List!1755) Int)

(declare-fun tail!188 (List!1755) List!1755)

(assert (=> b!109523 (> (size!1535 lt!31348) (size!1535 (tail!188 lt!31348)))))

(declare-fun lt!31352 () Unit!1204)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!12 ((InoxSet A!263)) Unit!1204)

(assert (=> b!109523 (= lt!31352 (lemmaToListSizeBiggerThanTailContentSize!12 s!1451))))

(declare-fun lt!31349 () Unit!1204)

(declare-fun forallContained!16 (List!1755 Int A!263) Unit!1204)

(assert (=> b!109523 (= lt!31349 (forallContained!16 lt!31348 lambda!2470 (h!7146 lt!31348)))))

(declare-fun b!109524 () Bool)

(assert (=> b!109524 (= e!60995 e!60997)))

(declare-fun res!52689 () Bool)

(assert (=> b!109524 (=> (not res!52689) (not e!60997))))

(get-info :version)

(assert (=> b!109524 (= res!52689 ((_ is Cons!1749) lt!31348))))

(declare-fun toList!234 ((InoxSet A!263)) List!1755)

(assert (=> b!109524 (= lt!31348 (toList!234 s!1451))))

(declare-fun b!109525 () Bool)

(assert (=> b!109525 (= e!60993 (not e!60994))))

(declare-fun res!52687 () Bool)

(assert (=> b!109525 (=> res!52687 e!60994)))

(declare-fun forall!282 (List!1755 Int) Bool)

(assert (=> b!109525 (= res!52687 (not (forall!282 (t!21910 lt!31348) lambda!2470)))))

(declare-fun flatMap!37 ((InoxSet A!263) Int) (InoxSet B!555))

(assert (=> b!109525 (= ((_ map or) (flatMap!37 lt!31351 g!9) (flatMap!37 lt!31347 g!9)) (flatMap!37 lt!31353 g!9))))

(declare-fun lt!31350 () Unit!1204)

(declare-fun lemmaFlatMapAssociative!24 ((InoxSet A!263) (InoxSet A!263) Int) Unit!1204)

(assert (=> b!109525 (= lt!31350 (lemmaFlatMapAssociative!24 lt!31351 lt!31347 g!9))))

(assert (=> b!109525 (= ((_ map or) (flatMap!37 lt!31351 f!927) (flatMap!37 lt!31347 f!927)) (flatMap!37 lt!31353 f!927))))

(declare-fun lt!31346 () Unit!1204)

(assert (=> b!109525 (= lt!31346 (lemmaFlatMapAssociative!24 lt!31351 lt!31347 f!927))))

(assert (= (and start!11082 res!52688) b!109524))

(assert (= (and b!109524 res!52689) b!109522))

(assert (= (and b!109522 res!52686) b!109525))

(assert (= (and b!109525 (not res!52687)) b!109520))

(assert (= (and b!109520 (not res!52685)) b!109521))

(assert (= (and b!109521 (not res!52690)) b!109523))

(assert (= (and start!11082 condSetEmpty!1506) setIsEmpty!1506))

(assert (= (and start!11082 (not condSetEmpty!1506)) setNonEmpty!1506))

(declare-fun b_lambda!1441 () Bool)

(assert (=> (not b_lambda!1441) (not b!109520)))

(declare-fun t!21903 () Bool)

(declare-fun tb!3415 () Bool)

(assert (=> (and start!11082 (= f!927 f!927) t!21903) tb!3415))

(assert (=> b!109520 t!21903))

(declare-fun result!4952 () Bool)

(declare-fun b_and!5183 () Bool)

(assert (= b_and!5179 (and (=> t!21903 result!4952) b_and!5183)))

(declare-fun t!21905 () Bool)

(declare-fun tb!3417 () Bool)

(assert (=> (and start!11082 (= g!9 f!927) t!21905) tb!3417))

(assert (=> b!109520 t!21905))

(declare-fun result!4954 () Bool)

(declare-fun b_and!5185 () Bool)

(assert (= b_and!5181 (and (=> t!21905 result!4954) b_and!5185)))

(declare-fun b_lambda!1443 () Bool)

(assert (=> (not b_lambda!1443) (not b!109520)))

(declare-fun tb!3419 () Bool)

(declare-fun t!21907 () Bool)

(assert (=> (and start!11082 (= f!927 g!9) t!21907) tb!3419))

(assert (=> b!109520 t!21907))

(declare-fun result!4956 () Bool)

(declare-fun b_and!5187 () Bool)

(assert (= b_and!5183 (and (=> t!21907 result!4956) b_and!5187)))

(declare-fun t!21909 () Bool)

(declare-fun tb!3421 () Bool)

(assert (=> (and start!11082 (= g!9 g!9) t!21909) tb!3421))

(assert (=> b!109520 t!21909))

(declare-fun result!4958 () Bool)

(declare-fun b_and!5189 () Bool)

(assert (= b_and!5185 (and (=> t!21909 result!4958) b_and!5189)))

(declare-fun m!98970 () Bool)

(assert (=> b!109525 m!98970))

(declare-fun m!98972 () Bool)

(assert (=> b!109525 m!98972))

(declare-fun m!98974 () Bool)

(assert (=> b!109525 m!98974))

(declare-fun m!98976 () Bool)

(assert (=> b!109525 m!98976))

(declare-fun m!98978 () Bool)

(assert (=> b!109525 m!98978))

(declare-fun m!98980 () Bool)

(assert (=> b!109525 m!98980))

(declare-fun m!98982 () Bool)

(assert (=> b!109525 m!98982))

(declare-fun m!98984 () Bool)

(assert (=> b!109525 m!98984))

(declare-fun m!98986 () Bool)

(assert (=> b!109525 m!98986))

(declare-fun m!98988 () Bool)

(assert (=> b!109520 m!98988))

(declare-fun m!98990 () Bool)

(assert (=> b!109520 m!98990))

(declare-fun m!98992 () Bool)

(assert (=> b!109520 m!98992))

(declare-fun m!98994 () Bool)

(assert (=> b!109520 m!98994))

(declare-fun m!98996 () Bool)

(assert (=> b!109522 m!98996))

(declare-fun m!98998 () Bool)

(assert (=> b!109522 m!98998))

(declare-fun m!99000 () Bool)

(assert (=> b!109524 m!99000))

(declare-fun m!99002 () Bool)

(assert (=> b!109523 m!99002))

(declare-fun m!99004 () Bool)

(assert (=> b!109523 m!99004))

(declare-fun m!99006 () Bool)

(assert (=> b!109523 m!99006))

(assert (=> b!109523 m!99004))

(declare-fun m!99008 () Bool)

(assert (=> b!109523 m!99008))

(declare-fun m!99010 () Bool)

(assert (=> b!109523 m!99010))

(declare-fun m!99012 () Bool)

(assert (=> start!11082 m!99012))

(assert (=> b!109521 m!98992))

(check-sat (not tb!3415) (not b!109522) (not b_lambda!1443) (not start!11082) (not b!109523) b_and!5189 (not b!109521) (not tb!3417) (not b_next!3321) (not b!109524) (not b_lambda!1441) (not tb!3421) (not setNonEmpty!1506) (not b_next!3323) (not b!109525) (not tb!3419) tp_is_empty!861 (not b!109520) b_and!5187)
(check-sat b_and!5187 b_and!5189 (not b_next!3323) (not b_next!3321))
