; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45280 () Bool)

(assert start!45280)

(declare-fun b_free!13229 () Bool)

(declare-fun b_next!13229 () Bool)

(assert (=> start!45280 (= b_free!13229 (not b_next!13229))))

(declare-fun tp!130944 () Bool)

(declare-fun b_and!50571 () Bool)

(assert (=> start!45280 (= tp!130944 b_and!50571)))

(declare-fun b_free!13231 () Bool)

(declare-fun b_next!13231 () Bool)

(assert (=> start!45280 (= b_free!13231 (not b_next!13231))))

(declare-fun tp!130943 () Bool)

(declare-fun b_and!50573 () Bool)

(assert (=> start!45280 (= tp!130943 b_and!50573)))

(declare-fun b!472433 () Bool)

(assert (=> b!472433 true))

(declare-fun order!4301 () Int)

(declare-fun f!1019 () Int)

(declare-fun order!4299 () Int)

(declare-fun lambda!14141 () Int)

(declare-fun dynLambda!2923 (Int Int) Int)

(declare-fun dynLambda!2924 (Int Int) Int)

(assert (=> b!472433 (< (dynLambda!2923 order!4299 f!1019) (dynLambda!2924 order!4301 lambda!14141))))

(assert (=> b!472433 true))

(declare-fun p!1765 () Int)

(declare-fun order!4303 () Int)

(declare-fun dynLambda!2925 (Int Int) Int)

(assert (=> b!472433 (< (dynLambda!2925 order!4303 p!1765) (dynLambda!2924 order!4301 lambda!14141))))

(declare-fun bs!58526 () Bool)

(declare-fun b!472432 () Bool)

(assert (= bs!58526 (and b!472432 b!472433)))

(declare-fun lambda!14142 () Int)

(assert (=> bs!58526 (not (= lambda!14142 lambda!14141))))

(assert (=> b!472432 true))

(assert (=> b!472432 true))

(assert (=> b!472432 (< (dynLambda!2923 order!4299 f!1019) (dynLambda!2924 order!4301 lambda!14142))))

(declare-fun e!288924 () Bool)

(declare-fun e!288925 () Bool)

(assert (=> b!472432 (= e!288924 (not e!288925))))

(declare-fun res!209625 () Bool)

(assert (=> b!472432 (=> res!209625 e!288925)))

(declare-datatypes ((A!409 0))(
  ( (A!410 (val!1547 Int)) )
))
(declare-fun s!1493 () (Set A!409))

(declare-fun exists!72 ((Set A!409) Int) Bool)

(assert (=> b!472432 (= res!209625 (not (exists!72 s!1493 lambda!14142)))))

(declare-datatypes ((B!971 0))(
  ( (B!972 (val!1548 Int)) )
))
(declare-fun elm!3 () B!971)

(declare-fun empty!2663 () A!409)

(declare-fun flatMapPost!33 ((Set A!409) Int B!971) A!409)

(assert (=> b!472432 (= (flatMapPost!33 s!1493 f!1019 elm!3) empty!2663)))

(assert (=> b!472432 true))

(declare-fun tp_is_empty!2197 () Bool)

(assert (=> b!472432 tp_is_empty!2197))

(declare-fun res!209621 () Bool)

(assert (=> b!472433 (=> (not res!209621) (not e!288924))))

(declare-fun Forall!259 (Int) Bool)

(assert (=> b!472433 (= res!209621 (Forall!259 lambda!14141))))

(declare-fun res!209622 () Bool)

(assert (=> start!45280 (=> (not res!209622) (not e!288924))))

(declare-fun flatMap!109 ((Set A!409) Int) (Set B!971))

(assert (=> start!45280 (= res!209622 (set.member elm!3 (flatMap!109 s!1493 f!1019)))))

(assert (=> start!45280 e!288924))

(declare-fun tp_is_empty!2199 () Bool)

(assert (=> start!45280 tp_is_empty!2199))

(declare-fun condSetEmpty!2039 () Bool)

(assert (=> start!45280 (= condSetEmpty!2039 (= s!1493 (as set.empty (Set A!409))))))

(declare-fun setRes!2039 () Bool)

(assert (=> start!45280 setRes!2039))

(assert (=> start!45280 tp!130944))

(assert (=> start!45280 tp!130943))

(declare-fun setIsEmpty!2039 () Bool)

(assert (=> setIsEmpty!2039 setRes!2039))

(declare-fun b!472434 () Bool)

(declare-fun e!288923 () Bool)

(declare-fun e!288926 () Bool)

(assert (=> b!472434 (= e!288923 e!288926)))

(declare-fun res!209623 () Bool)

(assert (=> b!472434 (=> res!209623 e!288926)))

(declare-fun lt!210334 () (Set B!971))

(assert (=> b!472434 (= res!209623 (not (set.member elm!3 lt!210334)))))

(declare-datatypes ((List!4572 0))(
  ( (Nil!4562) (Cons!4562 (h!9959 A!409) (t!73032 List!4572)) )
))
(declare-fun lt!210335 () List!4572)

(declare-fun dynLambda!2926 (Int A!409) (Set B!971))

(declare-fun getWitness!35 (List!4572 Int) A!409)

(assert (=> b!472434 (= lt!210334 (dynLambda!2926 f!1019 (getWitness!35 lt!210335 lambda!14142)))))

(declare-fun b!472435 () Bool)

(assert (=> b!472435 (= e!288925 e!288923)))

(declare-fun res!209624 () Bool)

(assert (=> b!472435 (=> res!209624 e!288923)))

(declare-fun exists!73 (List!4572 Int) Bool)

(assert (=> b!472435 (= res!209624 (not (exists!73 lt!210335 lambda!14142)))))

(declare-fun toList!343 ((Set A!409)) List!4572)

(assert (=> b!472435 (= lt!210335 (toList!343 s!1493))))

(declare-fun setNonEmpty!2039 () Bool)

(declare-fun tp!130942 () Bool)

(assert (=> setNonEmpty!2039 (= setRes!2039 (and tp!130942 tp_is_empty!2197))))

(declare-fun setElem!2039 () A!409)

(declare-fun setRest!2039 () (Set A!409))

(assert (=> setNonEmpty!2039 (= s!1493 (set.union (set.insert setElem!2039 (as set.empty (Set A!409))) setRest!2039))))

(declare-fun b!472436 () Bool)

(declare-datatypes ((List!4573 0))(
  ( (Nil!4563) (Cons!4563 (h!9960 B!971) (t!73033 List!4573)) )
))
(declare-fun contains!1030 (List!4573 B!971) Bool)

(declare-fun toList!344 ((Set B!971)) List!4573)

(assert (=> b!472436 (= e!288926 (contains!1030 (toList!344 lt!210334) elm!3))))

(assert (= (and start!45280 res!209622) b!472433))

(assert (= (and b!472433 res!209621) b!472432))

(assert (= (and b!472432 (not res!209625)) b!472435))

(assert (= (and b!472435 (not res!209624)) b!472434))

(assert (= (and b!472434 (not res!209623)) b!472436))

(assert (= (and start!45280 condSetEmpty!2039) setIsEmpty!2039))

(assert (= (and start!45280 (not condSetEmpty!2039)) setNonEmpty!2039))

(declare-fun b_lambda!19771 () Bool)

(assert (=> (not b_lambda!19771) (not b!472434)))

(declare-fun t!73031 () Bool)

(declare-fun tb!47057 () Bool)

(assert (=> (and start!45280 (= f!1019 f!1019) t!73031) tb!47057))

(assert (=> b!472434 t!73031))

(declare-fun result!51860 () Bool)

(declare-fun b_and!50575 () Bool)

(assert (= b_and!50571 (and (=> t!73031 result!51860) b_and!50575)))

(declare-fun m!745795 () Bool)

(assert (=> start!45280 m!745795))

(declare-fun m!745797 () Bool)

(assert (=> start!45280 m!745797))

(declare-fun m!745799 () Bool)

(assert (=> b!472434 m!745799))

(declare-fun m!745801 () Bool)

(assert (=> b!472434 m!745801))

(assert (=> b!472434 m!745801))

(declare-fun m!745803 () Bool)

(assert (=> b!472434 m!745803))

(declare-fun m!745805 () Bool)

(assert (=> b!472432 m!745805))

(declare-fun m!745807 () Bool)

(assert (=> b!472432 m!745807))

(declare-fun m!745809 () Bool)

(assert (=> b!472433 m!745809))

(declare-fun m!745811 () Bool)

(assert (=> b!472435 m!745811))

(declare-fun m!745813 () Bool)

(assert (=> b!472435 m!745813))

(declare-fun m!745815 () Bool)

(assert (=> b!472436 m!745815))

(assert (=> b!472436 m!745815))

(declare-fun m!745817 () Bool)

(assert (=> b!472436 m!745817))

(push 1)

(assert (not tb!47057))

(assert (not b!472433))

(assert b_and!50573)

(assert b_and!50575)

(assert tp_is_empty!2197)

(assert (not b!472435))

(assert (not b!472436))

(assert (not b_lambda!19771))

(assert (not b_next!13229))

(assert (not b!472434))

(assert (not setNonEmpty!2039))

(assert tp_is_empty!2199)

(assert (not start!45280))

(assert (not b!472432))

(assert (not b_next!13231))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50575)

(assert b_and!50573)

(assert (not b_next!13229))

(assert (not b_next!13231))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19775 () Bool)

(assert (= b_lambda!19771 (or (and start!45280 b_free!13229) b_lambda!19775)))

(push 1)

(assert (not tb!47057))

(assert (not b!472433))

(assert b_and!50573)

(assert b_and!50575)

(assert tp_is_empty!2197)

(assert (not b!472435))

(assert (not b!472436))

(assert (not b!472434))

(assert (not setNonEmpty!2039))

(assert tp_is_empty!2199)

(assert (not start!45280))

(assert (not b!472432))

(assert (not b_next!13231))

(assert (not b_next!13229))

(assert (not b_lambda!19775))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50575)

(assert b_and!50573)

(assert (not b_next!13229))

(assert (not b_next!13231))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179555 () Bool)

(declare-fun lt!210344 () Bool)

(assert (=> d!179555 (= lt!210344 (exists!73 (toList!343 s!1493) lambda!14142))))

(declare-fun choose!3595 ((Set A!409) Int) Bool)

(assert (=> d!179555 (= lt!210344 (choose!3595 s!1493 lambda!14142))))

(assert (=> d!179555 (= (exists!72 s!1493 lambda!14142) lt!210344)))

(declare-fun bs!58528 () Bool)

(assert (= bs!58528 d!179555))

(assert (=> bs!58528 m!745813))

(assert (=> bs!58528 m!745813))

(declare-fun m!745843 () Bool)

(assert (=> bs!58528 m!745843))

(declare-fun m!745845 () Bool)

(assert (=> bs!58528 m!745845))

(assert (=> b!472432 d!179555))

(declare-fun bs!58529 () Bool)

(declare-fun d!179557 () Bool)

(assert (= bs!58529 (and d!179557 b!472433)))

(declare-fun lambda!14155 () Int)

(assert (=> bs!58529 (not (= lambda!14155 lambda!14141))))

(declare-fun bs!58530 () Bool)

(assert (= bs!58530 (and d!179557 b!472432)))

(assert (=> bs!58530 (= lambda!14155 lambda!14142)))

(assert (=> d!179557 true))

(assert (=> d!179557 true))

(assert (=> d!179557 (< (dynLambda!2923 order!4299 f!1019) (dynLambda!2924 order!4301 lambda!14155))))

(assert (=> d!179557 (= (set.member elm!3 (flatMap!109 s!1493 f!1019)) (exists!72 s!1493 lambda!14155))))

(declare-fun lt!210347 () A!409)

(declare-fun choose!3596 ((Set A!409) Int B!971) A!409)

(assert (=> d!179557 (= lt!210347 (choose!3596 s!1493 f!1019 elm!3))))

(assert (=> d!179557 (= (flatMapPost!33 s!1493 f!1019 elm!3) lt!210347)))

(declare-fun bs!58531 () Bool)

(assert (= bs!58531 d!179557))

(assert (=> bs!58531 m!745795))

(assert (=> bs!58531 m!745797))

(declare-fun m!745847 () Bool)

(assert (=> bs!58531 m!745847))

(declare-fun m!745849 () Bool)

(assert (=> bs!58531 m!745849))

(assert (=> b!472432 d!179557))

(declare-fun bs!58532 () Bool)

(declare-fun d!179559 () Bool)

(assert (= bs!58532 (and d!179559 b!472433)))

(declare-fun lambda!14158 () Int)

(assert (=> bs!58532 (not (= lambda!14158 lambda!14141))))

(declare-fun bs!58533 () Bool)

(assert (= bs!58533 (and d!179559 b!472432)))

(assert (=> bs!58533 (not (= lambda!14158 lambda!14142))))

(declare-fun bs!58534 () Bool)

(assert (= bs!58534 (and d!179559 d!179557)))

(assert (=> bs!58534 (not (= lambda!14158 lambda!14155))))

(assert (=> d!179559 true))

(assert (=> d!179559 (< (dynLambda!2924 order!4301 lambda!14142) (dynLambda!2924 order!4301 lambda!14158))))

(declare-fun forall!1335 (List!4572 Int) Bool)

(assert (=> d!179559 (= (exists!73 lt!210335 lambda!14142) (not (forall!1335 lt!210335 lambda!14158)))))

(declare-fun bs!58535 () Bool)

(assert (= bs!58535 d!179559))

(declare-fun m!745851 () Bool)

(assert (=> bs!58535 m!745851))

(assert (=> b!472435 d!179559))

(declare-fun d!179561 () Bool)

(declare-fun e!288941 () Bool)

(assert (=> d!179561 e!288941))

(declare-fun res!209643 () Bool)

(assert (=> d!179561 (=> (not res!209643) (not e!288941))))

(declare-fun lt!210350 () List!4572)

(declare-fun noDuplicate!101 (List!4572) Bool)

(assert (=> d!179561 (= res!209643 (noDuplicate!101 lt!210350))))

(declare-fun choose!3597 ((Set A!409)) List!4572)

(assert (=> d!179561 (= lt!210350 (choose!3597 s!1493))))

(assert (=> d!179561 (= (toList!343 s!1493) lt!210350)))

(declare-fun b!472469 () Bool)

(declare-fun content!778 (List!4572) (Set A!409))

(assert (=> b!472469 (= e!288941 (= (content!778 lt!210350) s!1493))))

(assert (= (and d!179561 res!209643) b!472469))

(declare-fun m!745853 () Bool)

(assert (=> d!179561 m!745853))

(declare-fun m!745855 () Bool)

(assert (=> d!179561 m!745855))

(declare-fun m!745857 () Bool)

(assert (=> b!472469 m!745857))

(assert (=> b!472435 d!179561))

(declare-fun d!179563 () Bool)

(declare-fun e!288952 () Bool)

(assert (=> d!179563 e!288952))

(declare-fun res!209649 () Bool)

(assert (=> d!179563 (=> (not res!209649) (not e!288952))))

(declare-fun lt!210356 () A!409)

(declare-fun dynLambda!2931 (Int A!409) Bool)

(assert (=> d!179563 (= res!209649 (dynLambda!2931 lambda!14142 lt!210356))))

(declare-fun e!288951 () A!409)

(assert (=> d!179563 (= lt!210356 e!288951)))

(declare-fun c!94885 () Bool)

(declare-fun e!288950 () Bool)

(assert (=> d!179563 (= c!94885 e!288950)))

(declare-fun res!209648 () Bool)

(assert (=> d!179563 (=> (not res!209648) (not e!288950))))

(assert (=> d!179563 (= res!209648 (is-Cons!4562 lt!210335))))

(assert (=> d!179563 (exists!73 lt!210335 lambda!14142)))

(assert (=> d!179563 (= (getWitness!35 lt!210335 lambda!14142) lt!210356)))

(declare-fun b!472482 () Bool)

(declare-fun e!288953 () A!409)

(assert (=> b!472482 (= e!288951 e!288953)))

(declare-fun c!94886 () Bool)

(assert (=> b!472482 (= c!94886 (is-Cons!4562 lt!210335))))

(declare-fun b!472483 () Bool)

(assert (=> b!472483 (= e!288951 (h!9959 lt!210335))))

(declare-fun b!472484 () Bool)

(declare-fun contains!1032 (List!4572 A!409) Bool)

(assert (=> b!472484 (= e!288952 (contains!1032 lt!210335 lt!210356))))

(declare-fun b!472485 () Bool)

(declare-datatypes ((Unit!8308 0))(
  ( (Unit!8309) )
))
(declare-fun lt!210355 () Unit!8308)

(declare-fun Unit!8310 () Unit!8308)

(assert (=> b!472485 (= lt!210355 Unit!8310)))

(assert (=> b!472485 false))

(declare-fun head!1143 (List!4572) A!409)

(assert (=> b!472485 (= e!288953 (head!1143 lt!210335))))

(declare-fun b!472486 () Bool)

(assert (=> b!472486 (= e!288953 (getWitness!35 (t!73032 lt!210335) lambda!14142))))

(declare-fun b!472487 () Bool)

(assert (=> b!472487 (= e!288950 (dynLambda!2931 lambda!14142 (h!9959 lt!210335)))))

(assert (= (and d!179563 res!209648) b!472487))

(assert (= (and d!179563 c!94885) b!472483))

(assert (= (and d!179563 (not c!94885)) b!472482))

(assert (= (and b!472482 c!94886) b!472486))

(assert (= (and b!472482 (not c!94886)) b!472485))

(assert (= (and d!179563 res!209649) b!472484))

(declare-fun b_lambda!19777 () Bool)

(assert (=> (not b_lambda!19777) (not d!179563)))

(declare-fun b_lambda!19779 () Bool)

(assert (=> (not b_lambda!19779) (not b!472487)))

(declare-fun m!745859 () Bool)

(assert (=> b!472487 m!745859))

(declare-fun m!745861 () Bool)

(assert (=> b!472485 m!745861))

(declare-fun m!745863 () Bool)

(assert (=> b!472484 m!745863))

(declare-fun m!745865 () Bool)

(assert (=> b!472486 m!745865))

(declare-fun m!745867 () Bool)

(assert (=> d!179563 m!745867))

(assert (=> d!179563 m!745811))

(assert (=> b!472434 d!179563))

(declare-fun d!179565 () Bool)

(declare-fun choose!3598 ((Set A!409) Int) (Set B!971))

(assert (=> d!179565 (= (flatMap!109 s!1493 f!1019) (choose!3598 s!1493 f!1019))))

(declare-fun bs!58536 () Bool)

(assert (= bs!58536 d!179565))

(declare-fun m!745869 () Bool)

(assert (=> bs!58536 m!745869))

(assert (=> start!45280 d!179565))

(declare-fun d!179567 () Bool)

(declare-fun choose!3599 (Int) Bool)

(assert (=> d!179567 (= (Forall!259 lambda!14141) (choose!3599 lambda!14141))))

(declare-fun bs!58537 () Bool)

(assert (= bs!58537 d!179567))

(declare-fun m!745871 () Bool)

(assert (=> bs!58537 m!745871))

(assert (=> b!472433 d!179567))

(declare-fun d!179569 () Bool)

(declare-fun lt!210359 () Bool)

(declare-fun content!779 (List!4573) (Set B!971))

(assert (=> d!179569 (= lt!210359 (set.member elm!3 (content!779 (toList!344 lt!210334))))))

(declare-fun e!288959 () Bool)

(assert (=> d!179569 (= lt!210359 e!288959)))

(declare-fun res!209655 () Bool)

(assert (=> d!179569 (=> (not res!209655) (not e!288959))))

(assert (=> d!179569 (= res!209655 (is-Cons!4563 (toList!344 lt!210334)))))

(assert (=> d!179569 (= (contains!1030 (toList!344 lt!210334) elm!3) lt!210359)))

(declare-fun b!472492 () Bool)

(declare-fun e!288958 () Bool)

(assert (=> b!472492 (= e!288959 e!288958)))

(declare-fun res!209654 () Bool)

(assert (=> b!472492 (=> res!209654 e!288958)))

(assert (=> b!472492 (= res!209654 (= (h!9960 (toList!344 lt!210334)) elm!3))))

(declare-fun b!472493 () Bool)

(assert (=> b!472493 (= e!288958 (contains!1030 (t!73033 (toList!344 lt!210334)) elm!3))))

(assert (= (and d!179569 res!209655) b!472492))

(assert (= (and b!472492 (not res!209654)) b!472493))

(assert (=> d!179569 m!745815))

(declare-fun m!745873 () Bool)

(assert (=> d!179569 m!745873))

(declare-fun m!745875 () Bool)

(assert (=> d!179569 m!745875))

(declare-fun m!745877 () Bool)

(assert (=> b!472493 m!745877))

(assert (=> b!472436 d!179569))

(declare-fun d!179571 () Bool)

(declare-fun e!288962 () Bool)

(assert (=> d!179571 e!288962))

(declare-fun res!209658 () Bool)

(assert (=> d!179571 (=> (not res!209658) (not e!288962))))

(declare-fun lt!210362 () List!4573)

(declare-fun noDuplicate!102 (List!4573) Bool)

(assert (=> d!179571 (= res!209658 (noDuplicate!102 lt!210362))))

(declare-fun choose!3600 ((Set B!971)) List!4573)

(assert (=> d!179571 (= lt!210362 (choose!3600 lt!210334))))

(assert (=> d!179571 (= (toList!344 lt!210334) lt!210362)))

(declare-fun b!472496 () Bool)

(assert (=> b!472496 (= e!288962 (= (content!779 lt!210362) lt!210334))))

(assert (= (and d!179571 res!209658) b!472496))

(declare-fun m!745879 () Bool)

(assert (=> d!179571 m!745879))

(declare-fun m!745881 () Bool)

(assert (=> d!179571 m!745881))

(declare-fun m!745883 () Bool)

(assert (=> b!472496 m!745883))

(assert (=> b!472436 d!179571))

(declare-fun condSetEmpty!2045 () Bool)

(assert (=> setNonEmpty!2039 (= condSetEmpty!2045 (= setRest!2039 (as set.empty (Set A!409))))))

(declare-fun setRes!2045 () Bool)

(assert (=> setNonEmpty!2039 (= tp!130942 setRes!2045)))

(declare-fun setIsEmpty!2045 () Bool)

(assert (=> setIsEmpty!2045 setRes!2045))

(declare-fun setNonEmpty!2045 () Bool)

(declare-fun tp!130956 () Bool)

(assert (=> setNonEmpty!2045 (= setRes!2045 (and tp!130956 tp_is_empty!2197))))

(declare-fun setElem!2045 () A!409)

(declare-fun setRest!2045 () (Set A!409))

(assert (=> setNonEmpty!2045 (= setRest!2039 (set.union (set.insert setElem!2045 (as set.empty (Set A!409))) setRest!2045))))

(assert (= (and setNonEmpty!2039 condSetEmpty!2045) setIsEmpty!2045))

(assert (= (and setNonEmpty!2039 (not condSetEmpty!2045)) setNonEmpty!2045))

(declare-fun condSetEmpty!2048 () Bool)

(assert (=> tb!47057 (= condSetEmpty!2048 (= (dynLambda!2926 f!1019 (getWitness!35 lt!210335 lambda!14142)) (as set.empty (Set B!971))))))

(declare-fun setRes!2048 () Bool)

(assert (=> tb!47057 (= result!51860 setRes!2048)))

(declare-fun setIsEmpty!2048 () Bool)

(assert (=> setIsEmpty!2048 setRes!2048))

(declare-fun setNonEmpty!2048 () Bool)

(declare-fun tp!130959 () Bool)

(assert (=> setNonEmpty!2048 (= setRes!2048 (and tp!130959 tp_is_empty!2199))))

(declare-fun setElem!2048 () B!971)

(declare-fun setRest!2048 () (Set B!971))

(assert (=> setNonEmpty!2048 (= (dynLambda!2926 f!1019 (getWitness!35 lt!210335 lambda!14142)) (set.union (set.insert setElem!2048 (as set.empty (Set B!971))) setRest!2048))))

(assert (= (and tb!47057 condSetEmpty!2048) setIsEmpty!2048))

(assert (= (and tb!47057 (not condSetEmpty!2048)) setNonEmpty!2048))

(declare-fun b_lambda!19783 () Bool)

(assert (= b_lambda!19777 (or b!472432 b_lambda!19783)))

(declare-fun bs!58538 () Bool)

(declare-fun d!179573 () Bool)

(assert (= bs!58538 (and d!179573 b!472432)))

(assert (=> bs!58538 (= (dynLambda!2931 lambda!14142 lt!210356) (set.member elm!3 (dynLambda!2926 f!1019 lt!210356)))))

(declare-fun b_lambda!19787 () Bool)

(assert (=> (not b_lambda!19787) (not bs!58538)))

(declare-fun t!73039 () Bool)

(declare-fun tb!47061 () Bool)

(assert (=> (and start!45280 (= f!1019 f!1019) t!73039) tb!47061))

(assert (=> bs!58538 t!73039))

(declare-fun result!51868 () Bool)

(declare-fun b_and!50583 () Bool)

(assert (= b_and!50575 (and (=> t!73039 result!51868) b_and!50583)))

(declare-fun m!745885 () Bool)

(assert (=> bs!58538 m!745885))

(declare-fun m!745887 () Bool)

(assert (=> bs!58538 m!745887))

(assert (=> d!179563 d!179573))

(declare-fun b_lambda!19785 () Bool)

(assert (= b_lambda!19779 (or b!472432 b_lambda!19785)))

(declare-fun bs!58539 () Bool)

(declare-fun d!179575 () Bool)

(assert (= bs!58539 (and d!179575 b!472432)))

(assert (=> bs!58539 (= (dynLambda!2931 lambda!14142 (h!9959 lt!210335)) (set.member elm!3 (dynLambda!2926 f!1019 (h!9959 lt!210335))))))

(declare-fun b_lambda!19789 () Bool)

(assert (=> (not b_lambda!19789) (not bs!58539)))

(declare-fun t!73041 () Bool)

(declare-fun tb!47063 () Bool)

(assert (=> (and start!45280 (= f!1019 f!1019) t!73041) tb!47063))

(assert (=> bs!58539 t!73041))

(declare-fun result!51870 () Bool)

(declare-fun b_and!50585 () Bool)

(assert (= b_and!50583 (and (=> t!73041 result!51870) b_and!50585)))

(declare-fun m!745889 () Bool)

(assert (=> bs!58539 m!745889))

(declare-fun m!745891 () Bool)

(assert (=> bs!58539 m!745891))

(assert (=> b!472487 d!179575))

(push 1)

(assert (not b!472484))

(assert (not b!472493))

(assert tp_is_empty!2197)

(assert (not d!179565))

(assert (not tb!47061))

(assert (not b_lambda!19783))

(assert (not d!179567))

(assert (not d!179569))

(assert (not d!179563))

(assert (not setNonEmpty!2045))

(assert (not b_lambda!19785))

(assert (not d!179559))

(assert tp_is_empty!2199)

(assert (not b!472486))

(assert (not tb!47063))

(assert b_and!50585)

(assert b_and!50573)

(assert (not d!179561))

(assert (not d!179557))

(assert (not b_lambda!19787))

(assert (not b_next!13231))

(assert (not b!472469))

(assert (not d!179555))

(assert (not d!179571))

(assert (not b!472485))

(assert (not setNonEmpty!2048))

(assert (not b_lambda!19789))

(assert (not b!472496))

(assert (not b_next!13229))

(assert (not b_lambda!19775))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50585)

(assert b_and!50573)

(assert (not b_next!13229))

(assert (not b_next!13231))

(check-sat)

(pop 1)

