; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10944 () Bool)

(assert start!10944)

(declare-fun b_free!3285 () Bool)

(declare-fun b_next!3285 () Bool)

(assert (=> start!10944 (= b_free!3285 (not b_next!3285))))

(declare-fun tp!59229 () Bool)

(declare-fun b_and!4991 () Bool)

(assert (=> start!10944 (= tp!59229 b_and!4991)))

(declare-fun b_free!3287 () Bool)

(declare-fun b_next!3287 () Bool)

(assert (=> start!10944 (= b_free!3287 (not b_next!3287))))

(declare-fun tp!59227 () Bool)

(declare-fun b_and!4993 () Bool)

(assert (=> start!10944 (= tp!59227 b_and!4993)))

(assert (=> start!10944 true))

(declare-fun lambda!2403 () Int)

(declare-fun order!949 () Int)

(declare-fun f!927 () Int)

(declare-fun order!951 () Int)

(declare-fun dynLambda!612 (Int Int) Int)

(declare-fun dynLambda!613 (Int Int) Int)

(assert (=> start!10944 (< (dynLambda!612 order!949 f!927) (dynLambda!613 order!951 lambda!2403))))

(assert (=> start!10944 true))

(declare-fun g!9 () Int)

(assert (=> start!10944 (< (dynLambda!612 order!949 g!9) (dynLambda!613 order!951 lambda!2403))))

(declare-fun b!109173 () Bool)

(declare-fun e!60716 () Bool)

(declare-datatypes ((A!245 0))(
  ( (A!246 (val!548 Int)) )
))
(declare-fun s!1451 () (Set A!245))

(declare-datatypes ((List!1746 0))(
  ( (Nil!1740) (Cons!1740 (h!7137 A!245) (t!21741 List!1746)) )
))
(declare-fun lt!31113 () List!1746)

(declare-fun content!168 (List!1746) (Set A!245))

(assert (=> b!109173 (= e!60716 (not (= s!1451 (set.union (set.insert (h!7137 lt!31113) (as set.empty (Set A!245))) (content!168 (t!21741 lt!31113))))))))

(declare-fun setNonEmpty!1402 () Bool)

(declare-fun setRes!1402 () Bool)

(declare-fun tp!59228 () Bool)

(declare-fun tp_is_empty!835 () Bool)

(assert (=> setNonEmpty!1402 (= setRes!1402 (and tp!59228 tp_is_empty!835))))

(declare-fun setElem!1402 () A!245)

(declare-fun setRest!1402 () (Set A!245))

(assert (=> setNonEmpty!1402 (= s!1451 (set.union (set.insert setElem!1402 (as set.empty (Set A!245))) setRest!1402))))

(declare-fun b!109172 () Bool)

(declare-fun e!60717 () Bool)

(assert (=> b!109172 (= e!60717 e!60716)))

(declare-fun res!52386 () Bool)

(assert (=> b!109172 (=> (not res!52386) (not e!60716))))

(assert (=> b!109172 (= res!52386 (is-Cons!1740 lt!31113))))

(declare-fun toList!225 ((Set A!245)) List!1746)

(assert (=> b!109172 (= lt!31113 (toList!225 s!1451))))

(declare-fun res!52385 () Bool)

(assert (=> start!10944 (=> (not res!52385) (not e!60717))))

(declare-fun forall!263 ((Set A!245) Int) Bool)

(assert (=> start!10944 (= res!52385 (forall!263 s!1451 lambda!2403))))

(assert (=> start!10944 e!60717))

(declare-fun condSetEmpty!1402 () Bool)

(assert (=> start!10944 (= condSetEmpty!1402 (= s!1451 (as set.empty (Set A!245))))))

(assert (=> start!10944 setRes!1402))

(assert (=> start!10944 tp!59229))

(assert (=> start!10944 tp!59227))

(declare-fun setIsEmpty!1402 () Bool)

(assert (=> setIsEmpty!1402 setRes!1402))

(assert (= (and start!10944 res!52385) b!109172))

(assert (= (and b!109172 res!52386) b!109173))

(assert (= (and start!10944 condSetEmpty!1402) setIsEmpty!1402))

(assert (= (and start!10944 (not condSetEmpty!1402)) setNonEmpty!1402))

(declare-fun m!98306 () Bool)

(assert (=> b!109173 m!98306))

(declare-fun m!98308 () Bool)

(assert (=> b!109173 m!98308))

(declare-fun m!98310 () Bool)

(assert (=> b!109172 m!98310))

(declare-fun m!98312 () Bool)

(assert (=> start!10944 m!98312))

(push 1)

(assert (not b!109172))

(assert (not b_next!3285))

(assert b_and!4993)

(assert b_and!4991)

(assert (not start!10944))

(assert (not setNonEmpty!1402))

(assert tp_is_empty!835)

(assert (not b!109173))

(assert (not b_next!3287))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4991)

(assert b_and!4993)

(assert (not b_next!3287))

(assert (not b_next!3285))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!26992 () Bool)

(declare-fun e!60726 () Bool)

(assert (=> d!26992 e!60726))

(declare-fun res!52395 () Bool)

(assert (=> d!26992 (=> (not res!52395) (not e!60726))))

(declare-fun lt!31119 () List!1746)

(declare-fun noDuplicate!8 (List!1746) Bool)

(assert (=> d!26992 (= res!52395 (noDuplicate!8 lt!31119))))

(declare-fun choose!1429 ((Set A!245)) List!1746)

(assert (=> d!26992 (= lt!31119 (choose!1429 s!1451))))

(assert (=> d!26992 (= (toList!225 s!1451) lt!31119)))

(declare-fun b!109186 () Bool)

(assert (=> b!109186 (= e!60726 (= (content!168 lt!31119) s!1451))))

(assert (= (and d!26992 res!52395) b!109186))

(declare-fun m!98322 () Bool)

(assert (=> d!26992 m!98322))

(declare-fun m!98324 () Bool)

(assert (=> d!26992 m!98324))

(declare-fun m!98326 () Bool)

(assert (=> b!109186 m!98326))

(assert (=> b!109172 d!26992))

(declare-fun d!26994 () Bool)

(declare-fun lt!31122 () Bool)

(declare-fun forall!265 (List!1746 Int) Bool)

(assert (=> d!26994 (= lt!31122 (forall!265 (toList!225 s!1451) lambda!2403))))

(declare-fun choose!1430 ((Set A!245) Int) Bool)

(assert (=> d!26994 (= lt!31122 (choose!1430 s!1451 lambda!2403))))

(assert (=> d!26994 (= (forall!263 s!1451 lambda!2403) lt!31122)))

(declare-fun bs!10780 () Bool)

(assert (= bs!10780 d!26994))

(assert (=> bs!10780 m!98310))

(assert (=> bs!10780 m!98310))

(declare-fun m!98328 () Bool)

(assert (=> bs!10780 m!98328))

(declare-fun m!98330 () Bool)

(assert (=> bs!10780 m!98330))

(assert (=> start!10944 d!26994))

(declare-fun d!26996 () Bool)

(declare-fun c!26109 () Bool)

(assert (=> d!26996 (= c!26109 (is-Nil!1740 (t!21741 lt!31113)))))

(declare-fun e!60729 () (Set A!245))

(assert (=> d!26996 (= (content!168 (t!21741 lt!31113)) e!60729)))

(declare-fun b!109191 () Bool)

(assert (=> b!109191 (= e!60729 (as set.empty (Set A!245)))))

(declare-fun b!109192 () Bool)

(assert (=> b!109192 (= e!60729 (set.union (set.insert (h!7137 (t!21741 lt!31113)) (as set.empty (Set A!245))) (content!168 (t!21741 (t!21741 lt!31113)))))))

(assert (= (and d!26996 c!26109) b!109191))

(assert (= (and d!26996 (not c!26109)) b!109192))

(declare-fun m!98332 () Bool)

(assert (=> b!109192 m!98332))

(declare-fun m!98334 () Bool)

(assert (=> b!109192 m!98334))

(assert (=> b!109173 d!26996))

(declare-fun condSetEmpty!1408 () Bool)

(assert (=> setNonEmpty!1402 (= condSetEmpty!1408 (= setRest!1402 (as set.empty (Set A!245))))))

(declare-fun setRes!1408 () Bool)

(assert (=> setNonEmpty!1402 (= tp!59228 setRes!1408)))

(declare-fun setIsEmpty!1408 () Bool)

(assert (=> setIsEmpty!1408 setRes!1408))

(declare-fun setNonEmpty!1408 () Bool)

(declare-fun tp!59241 () Bool)

(assert (=> setNonEmpty!1408 (= setRes!1408 (and tp!59241 tp_is_empty!835))))

(declare-fun setElem!1408 () A!245)

(declare-fun setRest!1408 () (Set A!245))

(assert (=> setNonEmpty!1408 (= setRest!1402 (set.union (set.insert setElem!1408 (as set.empty (Set A!245))) setRest!1408))))

(assert (= (and setNonEmpty!1402 condSetEmpty!1408) setIsEmpty!1408))

(assert (= (and setNonEmpty!1402 (not condSetEmpty!1408)) setNonEmpty!1408))

(push 1)

(assert (not d!26994))

(assert (not b_next!3285))

(assert b_and!4993)

(assert b_and!4991)

(assert (not setNonEmpty!1408))

(assert (not b_next!3287))

(assert (not b!109192))

(assert (not b!109186))

(assert (not d!26992))

(assert tp_is_empty!835)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4991)

(assert b_and!4993)

(assert (not b_next!3287))

(assert (not b_next!3285))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27004 () Bool)

(declare-fun c!26113 () Bool)

(assert (=> d!27004 (= c!26113 (is-Nil!1740 (t!21741 (t!21741 lt!31113))))))

(declare-fun e!60736 () (Set A!245))

(assert (=> d!27004 (= (content!168 (t!21741 (t!21741 lt!31113))) e!60736)))

(declare-fun b!109206 () Bool)

(assert (=> b!109206 (= e!60736 (as set.empty (Set A!245)))))

(declare-fun b!109207 () Bool)

(assert (=> b!109207 (= e!60736 (set.union (set.insert (h!7137 (t!21741 (t!21741 lt!31113))) (as set.empty (Set A!245))) (content!168 (t!21741 (t!21741 (t!21741 lt!31113))))))))

(assert (= (and d!27004 c!26113) b!109206))

(assert (= (and d!27004 (not c!26113)) b!109207))

(declare-fun m!98350 () Bool)

(assert (=> b!109207 m!98350))

(declare-fun m!98352 () Bool)

(assert (=> b!109207 m!98352))

(assert (=> b!109192 d!27004))

(declare-fun d!27006 () Bool)

(declare-fun res!52403 () Bool)

(declare-fun e!60741 () Bool)

(assert (=> d!27006 (=> res!52403 e!60741)))

(assert (=> d!27006 (= res!52403 (is-Nil!1740 (toList!225 s!1451)))))

(assert (=> d!27006 (= (forall!265 (toList!225 s!1451) lambda!2403) e!60741)))

(declare-fun b!109212 () Bool)

(declare-fun e!60742 () Bool)

(assert (=> b!109212 (= e!60741 e!60742)))

(declare-fun res!52404 () Bool)

(assert (=> b!109212 (=> (not res!52404) (not e!60742))))

(declare-fun dynLambda!616 (Int A!245) Bool)

(assert (=> b!109212 (= res!52404 (dynLambda!616 lambda!2403 (h!7137 (toList!225 s!1451))))))

(declare-fun b!109213 () Bool)

(assert (=> b!109213 (= e!60742 (forall!265 (t!21741 (toList!225 s!1451)) lambda!2403))))

(assert (= (and d!27006 (not res!52403)) b!109212))

(assert (= (and b!109212 res!52404) b!109213))

(declare-fun b_lambda!1285 () Bool)

(assert (=> (not b_lambda!1285) (not b!109212)))

(declare-fun m!98354 () Bool)

(assert (=> b!109212 m!98354))

(declare-fun m!98356 () Bool)

(assert (=> b!109213 m!98356))

(assert (=> d!26994 d!27006))

(assert (=> d!26994 d!26992))

(declare-fun d!27008 () Bool)

(declare-fun res!52407 () Bool)

(assert (=> d!27008 (= res!52407 (forall!265 (toList!225 s!1451) lambda!2403))))

(assert (=> d!27008 true))

(assert (=> d!27008 (= (choose!1430 s!1451 lambda!2403) res!52407)))

(declare-fun bs!10782 () Bool)

(assert (= bs!10782 d!27008))

(assert (=> bs!10782 m!98310))

(assert (=> bs!10782 m!98310))

(assert (=> bs!10782 m!98328))

(assert (=> d!26994 d!27008))

(declare-fun d!27010 () Bool)

(declare-fun res!52412 () Bool)

(declare-fun e!60747 () Bool)

(assert (=> d!27010 (=> res!52412 e!60747)))

(assert (=> d!27010 (= res!52412 (is-Nil!1740 lt!31119))))

(assert (=> d!27010 (= (noDuplicate!8 lt!31119) e!60747)))

(declare-fun b!109218 () Bool)

(declare-fun e!60748 () Bool)

(assert (=> b!109218 (= e!60747 e!60748)))

(declare-fun res!52413 () Bool)

(assert (=> b!109218 (=> (not res!52413) (not e!60748))))

(declare-fun contains!282 (List!1746 A!245) Bool)

(assert (=> b!109218 (= res!52413 (not (contains!282 (t!21741 lt!31119) (h!7137 lt!31119))))))

(declare-fun b!109219 () Bool)

(assert (=> b!109219 (= e!60748 (noDuplicate!8 (t!21741 lt!31119)))))

(assert (= (and d!27010 (not res!52412)) b!109218))

(assert (= (and b!109218 res!52413) b!109219))

(declare-fun m!98358 () Bool)

(assert (=> b!109218 m!98358))

(declare-fun m!98360 () Bool)

(assert (=> b!109219 m!98360))

(assert (=> d!26992 d!27010))

(declare-fun d!27012 () Bool)

(declare-fun e!60754 () Bool)

(assert (=> d!27012 e!60754))

(declare-fun res!52418 () Bool)

(assert (=> d!27012 (=> (not res!52418) (not e!60754))))

(declare-fun res!52419 () List!1746)

(assert (=> d!27012 (= res!52418 (noDuplicate!8 res!52419))))

(declare-fun e!60753 () Bool)

(assert (=> d!27012 e!60753))

(assert (=> d!27012 (= (choose!1429 s!1451) res!52419)))

(declare-fun b!109224 () Bool)

(declare-fun tp!59247 () Bool)

(assert (=> b!109224 (= e!60753 (and tp_is_empty!835 tp!59247))))

(declare-fun b!109225 () Bool)

(assert (=> b!109225 (= e!60754 (= (content!168 res!52419) s!1451))))

(assert (= (and d!27012 (is-Cons!1740 res!52419)) b!109224))

(assert (= (and d!27012 res!52418) b!109225))

(declare-fun m!98362 () Bool)

(assert (=> d!27012 m!98362))

(declare-fun m!98364 () Bool)

(assert (=> b!109225 m!98364))

(assert (=> d!26992 d!27012))

(declare-fun d!27014 () Bool)

(declare-fun c!26114 () Bool)

(assert (=> d!27014 (= c!26114 (is-Nil!1740 lt!31119))))

(declare-fun e!60755 () (Set A!245))

(assert (=> d!27014 (= (content!168 lt!31119) e!60755)))

(declare-fun b!109226 () Bool)

(assert (=> b!109226 (= e!60755 (as set.empty (Set A!245)))))

(declare-fun b!109227 () Bool)

(assert (=> b!109227 (= e!60755 (set.union (set.insert (h!7137 lt!31119) (as set.empty (Set A!245))) (content!168 (t!21741 lt!31119))))))

(assert (= (and d!27014 c!26114) b!109226))

(assert (= (and d!27014 (not c!26114)) b!109227))

(declare-fun m!98366 () Bool)

(assert (=> b!109227 m!98366))

(declare-fun m!98368 () Bool)

(assert (=> b!109227 m!98368))

(assert (=> b!109186 d!27014))

(declare-fun condSetEmpty!1412 () Bool)

(assert (=> setNonEmpty!1408 (= condSetEmpty!1412 (= setRest!1408 (as set.empty (Set A!245))))))

(declare-fun setRes!1412 () Bool)

(assert (=> setNonEmpty!1408 (= tp!59241 setRes!1412)))

(declare-fun setIsEmpty!1412 () Bool)

(assert (=> setIsEmpty!1412 setRes!1412))

(declare-fun setNonEmpty!1412 () Bool)

(declare-fun tp!59248 () Bool)

(assert (=> setNonEmpty!1412 (= setRes!1412 (and tp!59248 tp_is_empty!835))))

(declare-fun setElem!1412 () A!245)

(declare-fun setRest!1412 () (Set A!245))

(assert (=> setNonEmpty!1412 (= setRest!1408 (set.union (set.insert setElem!1412 (as set.empty (Set A!245))) setRest!1412))))

(assert (= (and setNonEmpty!1408 condSetEmpty!1412) setIsEmpty!1412))

(assert (= (and setNonEmpty!1408 (not condSetEmpty!1412)) setNonEmpty!1412))

(declare-fun b_lambda!1287 () Bool)

(assert (= b_lambda!1285 (or start!10944 b_lambda!1287)))

(declare-fun bs!10783 () Bool)

(declare-fun d!27016 () Bool)

(assert (= bs!10783 (and d!27016 start!10944)))

(declare-datatypes ((B!537 0))(
  ( (B!538 (val!550 Int)) )
))
(declare-fun dynLambda!617 (Int A!245) (Set B!537))

(assert (=> bs!10783 (= (dynLambda!616 lambda!2403 (h!7137 (toList!225 s!1451))) (= (dynLambda!617 f!927 (h!7137 (toList!225 s!1451))) (dynLambda!617 g!9 (h!7137 (toList!225 s!1451)))))))

(declare-fun b_lambda!1289 () Bool)

(assert (=> (not b_lambda!1289) (not bs!10783)))

(declare-fun t!21744 () Bool)

(declare-fun tb!3263 () Bool)

(assert (=> (and start!10944 (= f!927 f!927) t!21744) tb!3263))

(assert (=> bs!10783 t!21744))

(declare-fun result!4784 () Bool)

(declare-fun b_and!4999 () Bool)

(assert (= b_and!4991 (and (=> t!21744 result!4784) b_and!4999)))

(declare-fun tb!3265 () Bool)

(declare-fun t!21746 () Bool)

(assert (=> (and start!10944 (= g!9 f!927) t!21746) tb!3265))

(assert (=> bs!10783 t!21746))

(declare-fun result!4786 () Bool)

(declare-fun b_and!5001 () Bool)

(assert (= b_and!4993 (and (=> t!21746 result!4786) b_and!5001)))

(declare-fun b_lambda!1291 () Bool)

(assert (=> (not b_lambda!1291) (not bs!10783)))

(declare-fun t!21748 () Bool)

(declare-fun tb!3267 () Bool)

(assert (=> (and start!10944 (= f!927 g!9) t!21748) tb!3267))

(assert (=> bs!10783 t!21748))

(declare-fun result!4788 () Bool)

(declare-fun b_and!5003 () Bool)

(assert (= b_and!4999 (and (=> t!21748 result!4788) b_and!5003)))

(declare-fun t!21750 () Bool)

(declare-fun tb!3269 () Bool)

(assert (=> (and start!10944 (= g!9 g!9) t!21750) tb!3269))

(assert (=> bs!10783 t!21750))

(declare-fun result!4790 () Bool)

(declare-fun b_and!5005 () Bool)

(assert (= b_and!5001 (and (=> t!21750 result!4790) b_and!5005)))

(declare-fun m!98370 () Bool)

(assert (=> bs!10783 m!98370))

(declare-fun m!98372 () Bool)

(assert (=> bs!10783 m!98372))

(assert (=> b!109212 d!27016))

(push 1)

(assert (not b_lambda!1287))

(assert (not setNonEmpty!1412))

(assert (not tb!3263))

(assert (not d!27008))

(assert (not b_lambda!1291))

(assert b_and!5005)

(assert (not b!109227))

(assert (not b_lambda!1289))

(assert (not b!109213))

(assert (not tb!3267))

(assert (not b!109218))

(assert (not b_next!3287))

(assert (not b!109207))

(assert (not b!109224))

(assert (not tb!3269))

(assert (not b_next!3285))

(assert (not tb!3265))

(assert (not b!109219))

(assert b_and!5003)

(assert tp_is_empty!835)

(assert (not d!27012))

(assert (not b!109225))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5003)

(assert b_and!5005)

(assert (not b_next!3287))

(assert (not b_next!3285))

(check-sat)

(pop 1)

