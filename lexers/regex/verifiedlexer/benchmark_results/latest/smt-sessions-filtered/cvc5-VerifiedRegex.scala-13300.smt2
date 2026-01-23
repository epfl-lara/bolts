; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723178 () Bool)

(assert start!723178)

(declare-fun b_free!134339 () Bool)

(declare-fun b_next!135129 () Bool)

(assert (=> start!723178 (= b_free!134339 (not b_next!135129))))

(declare-fun tp!2157325 () Bool)

(declare-fun b_and!351955 () Bool)

(assert (=> start!723178 (= tp!2157325 b_and!351955)))

(declare-fun b!7448048 () Bool)

(assert (=> b!7448048 true))

(declare-fun order!29605 () Int)

(declare-fun order!29607 () Int)

(declare-fun lambda!460658 () Int)

(declare-fun f!463 () Int)

(declare-fun dynLambda!29749 (Int Int) Int)

(declare-fun dynLambda!29750 (Int Int) Int)

(assert (=> b!7448048 (< (dynLambda!29749 order!29605 f!463) (dynLambda!29750 order!29607 lambda!460658))))

(assert (=> b!7448048 true))

(declare-fun setNonEmpty!56748 () Bool)

(declare-fun setRes!56748 () Bool)

(declare-fun tp!2157326 () Bool)

(declare-fun tp_is_empty!49209 () Bool)

(assert (=> setNonEmpty!56748 (= setRes!56748 (and tp!2157326 tp_is_empty!49209))))

(declare-datatypes ((A!1129 0))(
  ( (A!1130 (val!29987 Int)) )
))
(declare-fun s!1397 () (Set A!1129))

(declare-fun setElem!56748 () A!1129)

(declare-fun setRest!56748 () (Set A!1129))

(assert (=> setNonEmpty!56748 (= s!1397 (set.union (set.insert setElem!56748 (as set.empty (Set A!1129))) setRest!56748))))

(declare-fun e!4446397 () Bool)

(declare-fun e!4446396 () Bool)

(assert (=> b!7448048 (= e!4446397 (not e!4446396))))

(declare-fun res!2987566 () Bool)

(assert (=> b!7448048 (=> res!2987566 e!4446396)))

(declare-fun exists!4821 ((Set A!1129) Int) Bool)

(assert (=> b!7448048 (= res!2987566 (not (exists!4821 s!1397 lambda!460658)))))

(declare-fun empty!3683 () A!1129)

(declare-datatypes ((B!3883 0))(
  ( (B!3884 (val!29988 Int)) )
))
(declare-fun lt!2619599 () B!3883)

(declare-fun flatMapPost!241 ((Set A!1129) Int B!3883) A!1129)

(assert (=> b!7448048 (= (flatMapPost!241 s!1397 f!463 lt!2619599) empty!3683)))

(assert (=> b!7448048 true))

(assert (=> b!7448048 tp_is_empty!49209))

(declare-fun b!7448049 () Bool)

(declare-fun e!4446395 () Bool)

(declare-fun e!4446398 () Bool)

(assert (=> b!7448049 (= e!4446395 e!4446398)))

(declare-fun res!2987564 () Bool)

(assert (=> b!7448049 (=> (not res!2987564) (not e!4446398))))

(declare-fun lt!2619598 () (Set B!3883))

(assert (=> b!7448049 (= res!2987564 (not (= lt!2619598 (as set.empty (Set B!3883)))))))

(declare-fun flatMap!3250 ((Set A!1129) Int) (Set B!3883))

(assert (=> b!7448049 (= lt!2619598 (flatMap!3250 s!1397 f!463))))

(declare-fun b!7448050 () Bool)

(assert (=> b!7448050 (= e!4446396 (exists!4821 s!1397 lambda!460658))))

(declare-fun b!7448051 () Bool)

(assert (=> b!7448051 (= e!4446398 e!4446397)))

(declare-fun res!2987567 () Bool)

(assert (=> b!7448051 (=> (not res!2987567) (not e!4446397))))

(assert (=> b!7448051 (= res!2987567 (set.member lt!2619599 lt!2619598))))

(declare-datatypes ((List!72176 0))(
  ( (Nil!72052) (Cons!72052 (h!78500 B!3883) (t!386741 List!72176)) )
))
(declare-fun head!15276 (List!72176) B!3883)

(declare-fun toList!11799 ((Set B!3883)) List!72176)

(assert (=> b!7448051 (= lt!2619599 (head!15276 (toList!11799 lt!2619598)))))

(declare-fun setIsEmpty!56748 () Bool)

(assert (=> setIsEmpty!56748 setRes!56748))

(declare-fun res!2987565 () Bool)

(assert (=> start!723178 (=> (not res!2987565) (not e!4446395))))

(assert (=> start!723178 (= res!2987565 (= s!1397 (as set.empty (Set A!1129))))))

(assert (=> start!723178 e!4446395))

(declare-fun condSetEmpty!56748 () Bool)

(assert (=> start!723178 (= condSetEmpty!56748 (= s!1397 (as set.empty (Set A!1129))))))

(assert (=> start!723178 setRes!56748))

(assert (=> start!723178 tp!2157325))

(assert (= (and start!723178 res!2987565) b!7448049))

(assert (= (and b!7448049 res!2987564) b!7448051))

(assert (= (and b!7448051 res!2987567) b!7448048))

(assert (= (and b!7448048 (not res!2987566)) b!7448050))

(assert (= (and start!723178 condSetEmpty!56748) setIsEmpty!56748))

(assert (= (and start!723178 (not condSetEmpty!56748)) setNonEmpty!56748))

(declare-fun m!8055732 () Bool)

(assert (=> b!7448048 m!8055732))

(declare-fun m!8055734 () Bool)

(assert (=> b!7448048 m!8055734))

(declare-fun m!8055736 () Bool)

(assert (=> b!7448049 m!8055736))

(assert (=> b!7448050 m!8055732))

(declare-fun m!8055738 () Bool)

(assert (=> b!7448051 m!8055738))

(declare-fun m!8055740 () Bool)

(assert (=> b!7448051 m!8055740))

(assert (=> b!7448051 m!8055740))

(declare-fun m!8055742 () Bool)

(assert (=> b!7448051 m!8055742))

(push 1)

(assert (not setNonEmpty!56748))

(assert tp_is_empty!49209)

(assert (not b!7448051))

(assert (not b!7448050))

(assert (not b!7448049))

(assert (not b_next!135129))

(assert (not b!7448048))

(assert b_and!351955)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351955)

(assert (not b_next!135129))

(check-sat)

(pop 1)

