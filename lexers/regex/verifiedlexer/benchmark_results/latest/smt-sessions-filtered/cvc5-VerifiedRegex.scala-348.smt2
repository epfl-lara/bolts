; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11152 () Bool)

(assert start!11152)

(declare-fun b_free!3373 () Bool)

(declare-fun b_next!3373 () Bool)

(assert (=> start!11152 (= b_free!3373 (not b_next!3373))))

(declare-fun tp!59535 () Bool)

(declare-fun b_and!5335 () Bool)

(assert (=> start!11152 (= tp!59535 b_and!5335)))

(declare-fun b_free!3375 () Bool)

(declare-fun b_next!3375 () Bool)

(assert (=> start!11152 (= b_free!3375 (not b_next!3375))))

(declare-fun tp!59536 () Bool)

(declare-fun b_and!5337 () Bool)

(assert (=> start!11152 (= tp!59536 b_and!5337)))

(assert (=> start!11152 true))

(declare-fun lambda!2573 () Int)

(declare-fun f!927 () Int)

(declare-fun order!1039 () Int)

(declare-fun order!1037 () Int)

(declare-fun dynLambda!682 (Int Int) Int)

(declare-fun dynLambda!683 (Int Int) Int)

(assert (=> start!11152 (< (dynLambda!682 order!1037 f!927) (dynLambda!683 order!1039 lambda!2573))))

(assert (=> start!11152 true))

(declare-fun g!9 () Int)

(assert (=> start!11152 (< (dynLambda!682 order!1037 g!9) (dynLambda!683 order!1039 lambda!2573))))

(declare-fun res!52909 () Bool)

(declare-fun e!61196 () Bool)

(assert (=> start!11152 (=> (not res!52909) (not e!61196))))

(declare-datatypes ((A!289 0))(
  ( (A!290 (val!592 Int)) )
))
(declare-fun s!1451 () (Set A!289))

(declare-fun forall!303 ((Set A!289) Int) Bool)

(assert (=> start!11152 (= res!52909 (forall!303 s!1451 lambda!2573))))

(assert (=> start!11152 e!61196))

(declare-fun condSetEmpty!1559 () Bool)

(assert (=> start!11152 (= condSetEmpty!1559 (= s!1451 (as set.empty (Set A!289))))))

(declare-fun setRes!1559 () Bool)

(assert (=> start!11152 setRes!1559))

(assert (=> start!11152 tp!59535))

(assert (=> start!11152 tp!59536))

(declare-fun b!109810 () Bool)

(declare-datatypes ((List!1768 0))(
  ( (Nil!1762) (Cons!1762 (h!7159 A!289) (t!22003 List!1768)) )
))
(declare-fun size!1544 (List!1768) Int)

(declare-fun toList!247 ((Set A!289)) List!1768)

(assert (=> b!109810 (= e!61196 (< (size!1544 (toList!247 s!1451)) 0))))

(declare-fun setIsEmpty!1559 () Bool)

(assert (=> setIsEmpty!1559 setRes!1559))

(declare-fun setNonEmpty!1559 () Bool)

(declare-fun tp!59534 () Bool)

(declare-fun tp_is_empty!891 () Bool)

(assert (=> setNonEmpty!1559 (= setRes!1559 (and tp!59534 tp_is_empty!891))))

(declare-fun setElem!1559 () A!289)

(declare-fun setRest!1559 () (Set A!289))

(assert (=> setNonEmpty!1559 (= s!1451 (set.union (set.insert setElem!1559 (as set.empty (Set A!289))) setRest!1559))))

(assert (= (and start!11152 res!52909) b!109810))

(assert (= (and start!11152 condSetEmpty!1559) setIsEmpty!1559))

(assert (= (and start!11152 (not condSetEmpty!1559)) setNonEmpty!1559))

(declare-fun m!99622 () Bool)

(assert (=> start!11152 m!99622))

(declare-fun m!99624 () Bool)

(assert (=> b!109810 m!99624))

(assert (=> b!109810 m!99624))

(declare-fun m!99626 () Bool)

(assert (=> b!109810 m!99626))

(push 1)

(assert (not setNonEmpty!1559))

(assert b_and!5337)

(assert (not b_next!3375))

(assert b_and!5335)

(assert tp_is_empty!891)

(assert (not b_next!3373))

(assert (not b!109810))

(assert (not start!11152))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5335)

(assert b_and!5337)

(assert (not b_next!3375))

(assert (not b_next!3373))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27391 () Bool)

(declare-fun lt!31815 () Int)

(assert (=> d!27391 (>= lt!31815 0)))

(declare-fun e!61202 () Int)

(assert (=> d!27391 (= lt!31815 e!61202)))

(declare-fun c!26153 () Bool)

(assert (=> d!27391 (= c!26153 (is-Nil!1762 (toList!247 s!1451)))))

(assert (=> d!27391 (= (size!1544 (toList!247 s!1451)) lt!31815)))

(declare-fun b!109822 () Bool)

(assert (=> b!109822 (= e!61202 0)))

(declare-fun b!109823 () Bool)

(assert (=> b!109823 (= e!61202 (+ 1 (size!1544 (t!22003 (toList!247 s!1451)))))))

(assert (= (and d!27391 c!26153) b!109822))

(assert (= (and d!27391 (not c!26153)) b!109823))

(declare-fun m!99634 () Bool)

(assert (=> b!109823 m!99634))

(assert (=> b!109810 d!27391))

(declare-fun d!27393 () Bool)

(declare-fun e!61205 () Bool)

(assert (=> d!27393 e!61205))

(declare-fun res!52915 () Bool)

(assert (=> d!27393 (=> (not res!52915) (not e!61205))))

(declare-fun lt!31818 () List!1768)

(declare-fun noDuplicate!16 (List!1768) Bool)

(assert (=> d!27393 (= res!52915 (noDuplicate!16 lt!31818))))

(declare-fun choose!1463 ((Set A!289)) List!1768)

(assert (=> d!27393 (= lt!31818 (choose!1463 s!1451))))

(assert (=> d!27393 (= (toList!247 s!1451) lt!31818)))

(declare-fun b!109826 () Bool)

(declare-fun content!186 (List!1768) (Set A!289))

(assert (=> b!109826 (= e!61205 (= (content!186 lt!31818) s!1451))))

(assert (= (and d!27393 res!52915) b!109826))

(declare-fun m!99636 () Bool)

(assert (=> d!27393 m!99636))

(declare-fun m!99638 () Bool)

(assert (=> d!27393 m!99638))

(declare-fun m!99640 () Bool)

(assert (=> b!109826 m!99640))

(assert (=> b!109810 d!27393))

(declare-fun d!27395 () Bool)

(declare-fun lt!31823 () Bool)

(declare-fun forall!305 (List!1768 Int) Bool)

(assert (=> d!27395 (= lt!31823 (forall!305 (toList!247 s!1451) lambda!2573))))

(declare-fun choose!1464 ((Set A!289) Int) Bool)

(assert (=> d!27395 (= lt!31823 (choose!1464 s!1451 lambda!2573))))

(assert (=> d!27395 (= (forall!303 s!1451 lambda!2573) lt!31823)))

(declare-fun bs!10909 () Bool)

(assert (= bs!10909 d!27395))

(assert (=> bs!10909 m!99624))

(assert (=> bs!10909 m!99624))

(declare-fun m!99642 () Bool)

(assert (=> bs!10909 m!99642))

(declare-fun m!99644 () Bool)

(assert (=> bs!10909 m!99644))

(assert (=> start!11152 d!27395))

(declare-fun condSetEmpty!1565 () Bool)

(assert (=> setNonEmpty!1559 (= condSetEmpty!1565 (= setRest!1559 (as set.empty (Set A!289))))))

(declare-fun setRes!1565 () Bool)

(assert (=> setNonEmpty!1559 (= tp!59534 setRes!1565)))

(declare-fun setIsEmpty!1565 () Bool)

(assert (=> setIsEmpty!1565 setRes!1565))

(declare-fun setNonEmpty!1565 () Bool)

(declare-fun tp!59548 () Bool)

(assert (=> setNonEmpty!1565 (= setRes!1565 (and tp!59548 tp_is_empty!891))))

(declare-fun setElem!1565 () A!289)

(declare-fun setRest!1565 () (Set A!289))

(assert (=> setNonEmpty!1565 (= setRest!1559 (set.union (set.insert setElem!1565 (as set.empty (Set A!289))) setRest!1565))))

(assert (= (and setNonEmpty!1559 condSetEmpty!1565) setIsEmpty!1565))

(assert (= (and setNonEmpty!1559 (not condSetEmpty!1565)) setNonEmpty!1565))

(push 1)

(assert b_and!5337)

(assert (not b!109823))

(assert b_and!5335)

(assert tp_is_empty!891)

(assert (not b_next!3373))

(assert (not b!109826))

(assert (not b_next!3375))

(assert (not d!27395))

(assert (not setNonEmpty!1565))

(assert (not d!27393))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5335)

(assert b_and!5337)

(assert (not b_next!3375))

(assert (not b_next!3373))

(check-sat)

(pop 1)

