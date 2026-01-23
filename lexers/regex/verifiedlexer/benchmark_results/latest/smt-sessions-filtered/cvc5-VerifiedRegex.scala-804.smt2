; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45242 () Bool)

(assert start!45242)

(declare-fun b_free!13213 () Bool)

(declare-fun b_next!13213 () Bool)

(assert (=> start!45242 (= b_free!13213 (not b_next!13213))))

(declare-fun tp!130888 () Bool)

(declare-fun b_and!50547 () Bool)

(assert (=> start!45242 (= tp!130888 b_and!50547)))

(declare-fun b_free!13215 () Bool)

(declare-fun b_next!13215 () Bool)

(assert (=> start!45242 (= b_free!13215 (not b_next!13215))))

(declare-fun tp!130889 () Bool)

(declare-fun b_and!50549 () Bool)

(assert (=> start!45242 (= tp!130889 b_and!50549)))

(declare-fun b!472302 () Bool)

(assert (=> b!472302 true))

(declare-fun order!4275 () Int)

(declare-fun order!4277 () Int)

(declare-fun lambda!14088 () Int)

(declare-fun f!1019 () Int)

(declare-fun dynLambda!2908 (Int Int) Int)

(declare-fun dynLambda!2909 (Int Int) Int)

(assert (=> b!472302 (< (dynLambda!2908 order!4275 f!1019) (dynLambda!2909 order!4277 lambda!14088))))

(assert (=> b!472302 true))

(declare-fun order!4279 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2910 (Int Int) Int)

(assert (=> b!472302 (< (dynLambda!2910 order!4279 p!1765) (dynLambda!2909 order!4277 lambda!14088))))

(declare-fun bs!58494 () Bool)

(declare-fun b!472300 () Bool)

(assert (= bs!58494 (and b!472300 b!472302)))

(declare-fun lambda!14089 () Int)

(assert (=> bs!58494 (not (= lambda!14089 lambda!14088))))

(assert (=> b!472300 true))

(assert (=> b!472300 true))

(assert (=> b!472300 (< (dynLambda!2908 order!4275 f!1019) (dynLambda!2909 order!4277 lambda!14089))))

(declare-fun setIsEmpty!2009 () Bool)

(declare-fun setRes!2009 () Bool)

(assert (=> setIsEmpty!2009 setRes!2009))

(declare-fun e!288859 () Bool)

(declare-fun e!288860 () Bool)

(assert (=> b!472300 (= e!288859 (not e!288860))))

(declare-fun res!209558 () Bool)

(assert (=> b!472300 (=> res!209558 e!288860)))

(declare-datatypes ((A!401 0))(
  ( (A!402 (val!1539 Int)) )
))
(declare-fun s!1493 () (Set A!401))

(declare-fun exists!64 ((Set A!401) Int) Bool)

(assert (=> b!472300 (= res!209558 (not (exists!64 s!1493 lambda!14089)))))

(declare-datatypes ((B!963 0))(
  ( (B!964 (val!1540 Int)) )
))
(declare-fun elm!3 () B!963)

(declare-fun empty!2647 () A!401)

(declare-fun flatMapPost!29 ((Set A!401) Int B!963) A!401)

(assert (=> b!472300 (= (flatMapPost!29 s!1493 f!1019 elm!3) empty!2647)))

(assert (=> b!472300 true))

(declare-fun tp_is_empty!2181 () Bool)

(assert (=> b!472300 tp_is_empty!2181))

(declare-fun res!209559 () Bool)

(assert (=> start!45242 (=> (not res!209559) (not e!288859))))

(declare-fun flatMap!105 ((Set A!401) Int) (Set B!963))

(assert (=> start!45242 (= res!209559 (set.member elm!3 (flatMap!105 s!1493 f!1019)))))

(assert (=> start!45242 e!288859))

(declare-fun tp_is_empty!2183 () Bool)

(assert (=> start!45242 tp_is_empty!2183))

(declare-fun condSetEmpty!2009 () Bool)

(assert (=> start!45242 (= condSetEmpty!2009 (= s!1493 (as set.empty (Set A!401))))))

(assert (=> start!45242 setRes!2009))

(assert (=> start!45242 tp!130888))

(assert (=> start!45242 tp!130889))

(declare-fun setNonEmpty!2009 () Bool)

(declare-fun tp!130890 () Bool)

(assert (=> setNonEmpty!2009 (= setRes!2009 (and tp!130890 tp_is_empty!2181))))

(declare-fun setElem!2009 () A!401)

(declare-fun setRest!2009 () (Set A!401))

(assert (=> setNonEmpty!2009 (= s!1493 (set.union (set.insert setElem!2009 (as set.empty (Set A!401))) setRest!2009))))

(declare-fun b!472301 () Bool)

(declare-datatypes ((List!4568 0))(
  ( (Nil!4558) (Cons!4558 (h!9955 A!401) (t!73018 List!4568)) )
))
(declare-fun exists!65 (List!4568 Int) Bool)

(declare-fun toList!339 ((Set A!401)) List!4568)

(assert (=> b!472301 (= e!288860 (exists!65 (toList!339 s!1493) lambda!14089))))

(declare-fun res!209557 () Bool)

(assert (=> b!472302 (=> (not res!209557) (not e!288859))))

(declare-fun Forall!255 (Int) Bool)

(assert (=> b!472302 (= res!209557 (Forall!255 lambda!14088))))

(assert (= (and start!45242 res!209559) b!472302))

(assert (= (and b!472302 res!209557) b!472300))

(assert (= (and b!472300 (not res!209558)) b!472301))

(assert (= (and start!45242 condSetEmpty!2009) setIsEmpty!2009))

(assert (= (and start!45242 (not condSetEmpty!2009)) setNonEmpty!2009))

(declare-fun m!745671 () Bool)

(assert (=> b!472300 m!745671))

(declare-fun m!745673 () Bool)

(assert (=> b!472300 m!745673))

(declare-fun m!745675 () Bool)

(assert (=> start!45242 m!745675))

(declare-fun m!745677 () Bool)

(assert (=> start!45242 m!745677))

(declare-fun m!745679 () Bool)

(assert (=> b!472301 m!745679))

(assert (=> b!472301 m!745679))

(declare-fun m!745681 () Bool)

(assert (=> b!472301 m!745681))

(declare-fun m!745683 () Bool)

(assert (=> b!472302 m!745683))

(push 1)

(assert b_and!50549)

(assert (not b!472301))

(assert tp_is_empty!2181)

(assert b_and!50547)

(assert (not b_next!13215))

(assert (not b_next!13213))

(assert (not b!472300))

(assert tp_is_empty!2183)

(assert (not b!472302))

(assert (not start!45242))

(assert (not setNonEmpty!2009))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50547)

(assert b_and!50549)

(assert (not b_next!13213))

(assert (not b_next!13215))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!58496 () Bool)

(declare-fun d!179519 () Bool)

(assert (= bs!58496 (and d!179519 b!472302)))

(declare-fun lambda!14100 () Int)

(assert (=> bs!58496 (not (= lambda!14100 lambda!14088))))

(declare-fun bs!58497 () Bool)

(assert (= bs!58497 (and d!179519 b!472300)))

(assert (=> bs!58497 (not (= lambda!14100 lambda!14089))))

(assert (=> d!179519 true))

(assert (=> d!179519 (< (dynLambda!2909 order!4277 lambda!14089) (dynLambda!2909 order!4277 lambda!14100))))

(declare-fun forall!1333 (List!4568 Int) Bool)

(assert (=> d!179519 (= (exists!65 (toList!339 s!1493) lambda!14089) (not (forall!1333 (toList!339 s!1493) lambda!14100)))))

(declare-fun bs!58498 () Bool)

(assert (= bs!58498 d!179519))

(assert (=> bs!58498 m!745679))

(declare-fun m!745699 () Bool)

(assert (=> bs!58498 m!745699))

(assert (=> b!472301 d!179519))

(declare-fun d!179521 () Bool)

(declare-fun e!288869 () Bool)

(assert (=> d!179521 e!288869))

(declare-fun res!209571 () Bool)

(assert (=> d!179521 (=> (not res!209571) (not e!288869))))

(declare-fun lt!210296 () List!4568)

(declare-fun noDuplicate!99 (List!4568) Bool)

(assert (=> d!179521 (= res!209571 (noDuplicate!99 lt!210296))))

(declare-fun choose!3585 ((Set A!401)) List!4568)

(assert (=> d!179521 (= lt!210296 (choose!3585 s!1493))))

(assert (=> d!179521 (= (toList!339 s!1493) lt!210296)))

(declare-fun b!472328 () Bool)

(declare-fun content!776 (List!4568) (Set A!401))

(assert (=> b!472328 (= e!288869 (= (content!776 lt!210296) s!1493))))

(assert (= (and d!179521 res!209571) b!472328))

(declare-fun m!745701 () Bool)

(assert (=> d!179521 m!745701))

(declare-fun m!745703 () Bool)

(assert (=> d!179521 m!745703))

(declare-fun m!745705 () Bool)

(assert (=> b!472328 m!745705))

(assert (=> b!472301 d!179521))

(declare-fun d!179523 () Bool)

(declare-fun choose!3586 (Int) Bool)

(assert (=> d!179523 (= (Forall!255 lambda!14088) (choose!3586 lambda!14088))))

(declare-fun bs!58499 () Bool)

(assert (= bs!58499 d!179523))

(declare-fun m!745707 () Bool)

(assert (=> bs!58499 m!745707))

(assert (=> b!472302 d!179523))

(declare-fun d!179525 () Bool)

(declare-fun choose!3587 ((Set A!401) Int) (Set B!963))

(assert (=> d!179525 (= (flatMap!105 s!1493 f!1019) (choose!3587 s!1493 f!1019))))

(declare-fun bs!58500 () Bool)

(assert (= bs!58500 d!179525))

(declare-fun m!745709 () Bool)

(assert (=> bs!58500 m!745709))

(assert (=> start!45242 d!179525))

(declare-fun d!179527 () Bool)

(declare-fun lt!210299 () Bool)

(assert (=> d!179527 (= lt!210299 (exists!65 (toList!339 s!1493) lambda!14089))))

(declare-fun choose!3588 ((Set A!401) Int) Bool)

(assert (=> d!179527 (= lt!210299 (choose!3588 s!1493 lambda!14089))))

(assert (=> d!179527 (= (exists!64 s!1493 lambda!14089) lt!210299)))

(declare-fun bs!58501 () Bool)

(assert (= bs!58501 d!179527))

(assert (=> bs!58501 m!745679))

(assert (=> bs!58501 m!745679))

(assert (=> bs!58501 m!745681))

(declare-fun m!745711 () Bool)

(assert (=> bs!58501 m!745711))

(assert (=> b!472300 d!179527))

(declare-fun bs!58502 () Bool)

(declare-fun d!179529 () Bool)

(assert (= bs!58502 (and d!179529 b!472302)))

(declare-fun lambda!14103 () Int)

(assert (=> bs!58502 (not (= lambda!14103 lambda!14088))))

(declare-fun bs!58503 () Bool)

(assert (= bs!58503 (and d!179529 b!472300)))

(assert (=> bs!58503 (= lambda!14103 lambda!14089)))

(declare-fun bs!58504 () Bool)

(assert (= bs!58504 (and d!179529 d!179519)))

(assert (=> bs!58504 (not (= lambda!14103 lambda!14100))))

(assert (=> d!179529 true))

(assert (=> d!179529 true))

(assert (=> d!179529 (< (dynLambda!2908 order!4275 f!1019) (dynLambda!2909 order!4277 lambda!14103))))

(assert (=> d!179529 (= (set.member elm!3 (flatMap!105 s!1493 f!1019)) (exists!64 s!1493 lambda!14103))))

(declare-fun lt!210302 () A!401)

(declare-fun choose!3589 ((Set A!401) Int B!963) A!401)

(assert (=> d!179529 (= lt!210302 (choose!3589 s!1493 f!1019 elm!3))))

(assert (=> d!179529 (= (flatMapPost!29 s!1493 f!1019 elm!3) lt!210302)))

(declare-fun bs!58505 () Bool)

(assert (= bs!58505 d!179529))

(assert (=> bs!58505 m!745675))

(assert (=> bs!58505 m!745677))

(declare-fun m!745713 () Bool)

(assert (=> bs!58505 m!745713))

(declare-fun m!745715 () Bool)

(assert (=> bs!58505 m!745715))

(assert (=> b!472300 d!179529))

(declare-fun condSetEmpty!2015 () Bool)

(assert (=> setNonEmpty!2009 (= condSetEmpty!2015 (= setRest!2009 (as set.empty (Set A!401))))))

(declare-fun setRes!2015 () Bool)

(assert (=> setNonEmpty!2009 (= tp!130890 setRes!2015)))

(declare-fun setIsEmpty!2015 () Bool)

(assert (=> setIsEmpty!2015 setRes!2015))

(declare-fun setNonEmpty!2015 () Bool)

(declare-fun tp!130902 () Bool)

(assert (=> setNonEmpty!2015 (= setRes!2015 (and tp!130902 tp_is_empty!2181))))

(declare-fun setElem!2015 () A!401)

(declare-fun setRest!2015 () (Set A!401))

(assert (=> setNonEmpty!2015 (= setRest!2009 (set.union (set.insert setElem!2015 (as set.empty (Set A!401))) setRest!2015))))

(assert (= (and setNonEmpty!2009 condSetEmpty!2015) setIsEmpty!2015))

(assert (= (and setNonEmpty!2009 (not condSetEmpty!2015)) setNonEmpty!2015))

(push 1)

(assert tp_is_empty!2183)

(assert (not setNonEmpty!2015))

(assert b_and!50547)

(assert (not b_next!13215))

(assert (not d!179525))

(assert (not b_next!13213))

(assert (not b!472328))

(assert (not d!179527))

(assert (not d!179523))

(assert (not d!179519))

(assert b_and!50549)

(assert (not d!179521))

(assert (not d!179529))

(assert tp_is_empty!2181)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50547)

(assert b_and!50549)

(assert (not b_next!13213))

(assert (not b_next!13215))

(check-sat)

(pop 1)

