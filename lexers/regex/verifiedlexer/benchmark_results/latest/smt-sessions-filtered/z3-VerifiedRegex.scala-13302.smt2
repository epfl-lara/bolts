; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723214 () Bool)

(assert start!723214)

(declare-fun b_free!134349 () Bool)

(declare-fun b_next!135139 () Bool)

(assert (=> start!723214 (= b_free!134349 (not b_next!135139))))

(declare-fun tp!2157372 () Bool)

(declare-fun b_and!351965 () Bool)

(assert (=> start!723214 (= tp!2157372 b_and!351965)))

(declare-fun b!7448151 () Bool)

(assert (=> b!7448151 true))

(declare-fun order!29617 () Int)

(declare-fun lambda!460669 () Int)

(declare-fun f!463 () Int)

(declare-fun order!29619 () Int)

(declare-fun dynLambda!29755 (Int Int) Int)

(declare-fun dynLambda!29756 (Int Int) Int)

(assert (=> b!7448151 (< (dynLambda!29755 order!29617 f!463) (dynLambda!29756 order!29619 lambda!460669))))

(assert (=> b!7448151 true))

(declare-fun b!7448149 () Bool)

(declare-fun e!4446476 () Bool)

(declare-fun e!4446475 () Bool)

(assert (=> b!7448149 (= e!4446476 e!4446475)))

(declare-fun res!2987640 () Bool)

(assert (=> b!7448149 (=> (not res!2987640) (not e!4446475))))

(declare-datatypes ((B!3893 0))(
  ( (B!3894 (val!29997 Int)) )
))
(declare-fun lt!2619629 () B!3893)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2619628 () (InoxSet B!3893))

(assert (=> b!7448149 (= res!2987640 (select lt!2619628 lt!2619629))))

(declare-datatypes ((List!72181 0))(
  ( (Nil!72057) (Cons!72057 (h!78505 B!3893) (t!386746 List!72181)) )
))
(declare-fun head!15281 (List!72181) B!3893)

(declare-fun toList!11804 ((InoxSet B!3893)) List!72181)

(assert (=> b!7448149 (= lt!2619629 (head!15281 (toList!11804 lt!2619628)))))

(declare-fun b!7448150 () Bool)

(declare-fun e!4446474 () Bool)

(assert (=> b!7448150 (= e!4446474 e!4446476)))

(declare-fun res!2987641 () Bool)

(assert (=> b!7448150 (=> (not res!2987641) (not e!4446476))))

(assert (=> b!7448150 (= res!2987641 (not (= lt!2619628 ((as const (Array B!3893 Bool)) false))))))

(declare-datatypes ((A!1139 0))(
  ( (A!1140 (val!29998 Int)) )
))
(declare-fun s!1397 () (InoxSet A!1139))

(declare-fun flatMap!3255 ((InoxSet A!1139) Int) (InoxSet B!3893))

(assert (=> b!7448150 (= lt!2619628 (flatMap!3255 s!1397 f!463))))

(declare-fun exists!4824 ((InoxSet A!1139) Int) Bool)

(assert (=> b!7448151 (= e!4446475 (not (exists!4824 s!1397 lambda!460669)))))

(declare-fun empty!3695 () A!1139)

(declare-fun flatMapPost!244 ((InoxSet A!1139) Int B!3893) A!1139)

(assert (=> b!7448151 (= (flatMapPost!244 s!1397 f!463 lt!2619629) empty!3695)))

(assert (=> b!7448151 true))

(declare-fun tp_is_empty!49223 () Bool)

(assert (=> b!7448151 tp_is_empty!49223))

(declare-fun res!2987642 () Bool)

(assert (=> start!723214 (=> (not res!2987642) (not e!4446474))))

(assert (=> start!723214 (= res!2987642 (= s!1397 ((as const (Array A!1139 Bool)) false)))))

(assert (=> start!723214 e!4446474))

(declare-fun condSetEmpty!56774 () Bool)

(assert (=> start!723214 (= condSetEmpty!56774 (= s!1397 ((as const (Array A!1139 Bool)) false)))))

(declare-fun setRes!56774 () Bool)

(assert (=> start!723214 setRes!56774))

(assert (=> start!723214 tp!2157372))

(declare-fun setNonEmpty!56774 () Bool)

(declare-fun tp!2157373 () Bool)

(assert (=> setNonEmpty!56774 (= setRes!56774 (and tp!2157373 tp_is_empty!49223))))

(declare-fun setElem!56774 () A!1139)

(declare-fun setRest!56774 () (InoxSet A!1139))

(assert (=> setNonEmpty!56774 (= s!1397 ((_ map or) (store ((as const (Array A!1139 Bool)) false) setElem!56774 true) setRest!56774))))

(declare-fun setIsEmpty!56774 () Bool)

(assert (=> setIsEmpty!56774 setRes!56774))

(assert (= (and start!723214 res!2987642) b!7448150))

(assert (= (and b!7448150 res!2987641) b!7448149))

(assert (= (and b!7448149 res!2987640) b!7448151))

(assert (= (and start!723214 condSetEmpty!56774) setIsEmpty!56774))

(assert (= (and start!723214 (not condSetEmpty!56774)) setNonEmpty!56774))

(declare-fun m!8055820 () Bool)

(assert (=> b!7448149 m!8055820))

(declare-fun m!8055822 () Bool)

(assert (=> b!7448149 m!8055822))

(assert (=> b!7448149 m!8055822))

(declare-fun m!8055824 () Bool)

(assert (=> b!7448149 m!8055824))

(declare-fun m!8055826 () Bool)

(assert (=> b!7448150 m!8055826))

(declare-fun m!8055828 () Bool)

(assert (=> b!7448151 m!8055828))

(declare-fun m!8055830 () Bool)

(assert (=> b!7448151 m!8055830))

(check-sat (not b!7448150) tp_is_empty!49223 (not b!7448151) (not setNonEmpty!56774) (not b_next!135139) (not b!7448149) b_and!351965)
(check-sat b_and!351965 (not b_next!135139))
(get-model)

(declare-fun d!2296771 () Bool)

(declare-fun lt!2619640 () Bool)

(declare-datatypes ((List!72183 0))(
  ( (Nil!72059) (Cons!72059 (h!78507 A!1139) (t!386748 List!72183)) )
))
(declare-fun exists!4826 (List!72183 Int) Bool)

(declare-fun toList!11806 ((InoxSet A!1139)) List!72183)

(assert (=> d!2296771 (= lt!2619640 (exists!4826 (toList!11806 s!1397) lambda!460669))))

(declare-fun choose!57566 ((InoxSet A!1139) Int) Bool)

(assert (=> d!2296771 (= lt!2619640 (choose!57566 s!1397 lambda!460669))))

(assert (=> d!2296771 (= (exists!4824 s!1397 lambda!460669) lt!2619640)))

(declare-fun bs!1926818 () Bool)

(assert (= bs!1926818 d!2296771))

(declare-fun m!8055846 () Bool)

(assert (=> bs!1926818 m!8055846))

(assert (=> bs!1926818 m!8055846))

(declare-fun m!8055848 () Bool)

(assert (=> bs!1926818 m!8055848))

(declare-fun m!8055850 () Bool)

(assert (=> bs!1926818 m!8055850))

(assert (=> b!7448151 d!2296771))

(declare-fun bs!1926821 () Bool)

(declare-fun d!2296775 () Bool)

(assert (= bs!1926821 (and d!2296775 b!7448151)))

(declare-fun lambda!460675 () Int)

(assert (=> bs!1926821 (= lambda!460675 lambda!460669)))

(assert (=> d!2296775 true))

(assert (=> d!2296775 true))

(assert (=> d!2296775 (< (dynLambda!29755 order!29617 f!463) (dynLambda!29756 order!29619 lambda!460675))))

(assert (=> d!2296775 (= (select (flatMap!3255 s!1397 f!463) lt!2619629) (exists!4824 s!1397 lambda!460675))))

(declare-fun lt!2619644 () A!1139)

(declare-fun choose!57568 ((InoxSet A!1139) Int B!3893) A!1139)

(assert (=> d!2296775 (= lt!2619644 (choose!57568 s!1397 f!463 lt!2619629))))

(assert (=> d!2296775 (= (flatMapPost!244 s!1397 f!463 lt!2619629) lt!2619644)))

(declare-fun bs!1926822 () Bool)

(assert (= bs!1926822 d!2296775))

(assert (=> bs!1926822 m!8055826))

(declare-fun m!8055858 () Bool)

(assert (=> bs!1926822 m!8055858))

(declare-fun m!8055860 () Bool)

(assert (=> bs!1926822 m!8055860))

(declare-fun m!8055862 () Bool)

(assert (=> bs!1926822 m!8055862))

(assert (=> b!7448151 d!2296775))

(declare-fun d!2296777 () Bool)

(declare-fun choose!57569 ((InoxSet A!1139) Int) (InoxSet B!3893))

(assert (=> d!2296777 (= (flatMap!3255 s!1397 f!463) (choose!57569 s!1397 f!463))))

(declare-fun bs!1926823 () Bool)

(assert (= bs!1926823 d!2296777))

(declare-fun m!8055864 () Bool)

(assert (=> bs!1926823 m!8055864))

(assert (=> b!7448150 d!2296777))

(declare-fun d!2296779 () Bool)

(assert (=> d!2296779 (= (head!15281 (toList!11804 lt!2619628)) (h!78505 (toList!11804 lt!2619628)))))

(assert (=> b!7448149 d!2296779))

(declare-fun d!2296781 () Bool)

(declare-fun e!4446482 () Bool)

(assert (=> d!2296781 e!4446482))

(declare-fun res!2987648 () Bool)

(assert (=> d!2296781 (=> (not res!2987648) (not e!4446482))))

(declare-fun lt!2619647 () List!72181)

(declare-fun noDuplicate!3135 (List!72181) Bool)

(assert (=> d!2296781 (= res!2987648 (noDuplicate!3135 lt!2619647))))

(declare-fun choose!57570 ((InoxSet B!3893)) List!72181)

(assert (=> d!2296781 (= lt!2619647 (choose!57570 lt!2619628))))

(assert (=> d!2296781 (= (toList!11804 lt!2619628) lt!2619647)))

(declare-fun b!7448165 () Bool)

(declare-fun content!15247 (List!72181) (InoxSet B!3893))

(assert (=> b!7448165 (= e!4446482 (= (content!15247 lt!2619647) lt!2619628))))

(assert (= (and d!2296781 res!2987648) b!7448165))

(declare-fun m!8055866 () Bool)

(assert (=> d!2296781 m!8055866))

(declare-fun m!8055868 () Bool)

(assert (=> d!2296781 m!8055868))

(declare-fun m!8055870 () Bool)

(assert (=> b!7448165 m!8055870))

(assert (=> b!7448149 d!2296781))

(declare-fun condSetEmpty!56780 () Bool)

(assert (=> setNonEmpty!56774 (= condSetEmpty!56780 (= setRest!56774 ((as const (Array A!1139 Bool)) false)))))

(declare-fun setRes!56780 () Bool)

(assert (=> setNonEmpty!56774 (= tp!2157373 setRes!56780)))

(declare-fun setIsEmpty!56780 () Bool)

(assert (=> setIsEmpty!56780 setRes!56780))

(declare-fun setNonEmpty!56780 () Bool)

(declare-fun tp!2157379 () Bool)

(assert (=> setNonEmpty!56780 (= setRes!56780 (and tp!2157379 tp_is_empty!49223))))

(declare-fun setElem!56780 () A!1139)

(declare-fun setRest!56780 () (InoxSet A!1139))

(assert (=> setNonEmpty!56780 (= setRest!56774 ((_ map or) (store ((as const (Array A!1139 Bool)) false) setElem!56780 true) setRest!56780))))

(assert (= (and setNonEmpty!56774 condSetEmpty!56780) setIsEmpty!56780))

(assert (= (and setNonEmpty!56774 (not condSetEmpty!56780)) setNonEmpty!56780))

(check-sat (not d!2296771) (not b_next!135139) (not d!2296775) tp_is_empty!49223 (not b!7448165) b_and!351965 (not d!2296781) (not d!2296777) (not setNonEmpty!56780))
(check-sat b_and!351965 (not b_next!135139))
