; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712338 () Bool)

(assert start!712338)

(declare-fun b_free!133947 () Bool)

(declare-fun b_next!134737 () Bool)

(assert (=> start!712338 (= b_free!133947 (not b_next!134737))))

(declare-fun tp!2075369 () Bool)

(declare-fun b_and!351269 () Bool)

(assert (=> start!712338 (= tp!2075369 b_and!351269)))

(declare-fun b!7312797 () Bool)

(assert (=> b!7312797 true))

(declare-fun setNonEmpty!53974 () Bool)

(declare-fun setRes!53974 () Bool)

(declare-fun tp!2075370 () Bool)

(declare-fun tp_is_empty!47381 () Bool)

(assert (=> setNonEmpty!53974 (= setRes!53974 (and tp!2075370 tp_is_empty!47381))))

(declare-datatypes ((A!793 0))(
  ( (A!794 (val!29051 Int)) )
))
(declare-fun s!1445 () (Set A!793))

(declare-fun setElem!53974 () A!793)

(declare-fun setRest!53974 () (Set A!793))

(assert (=> setNonEmpty!53974 (= s!1445 (set.union (set.insert setElem!53974 (as set.empty (Set A!793))) setRest!53974))))

(declare-fun e!4377296 () Bool)

(declare-datatypes ((B!3495 0))(
  ( (B!3496 (val!29052 Int)) )
))
(declare-datatypes ((List!71151 0))(
  ( (Nil!71027) (Cons!71027 (h!77475 B!3495) (t!385311 List!71151)) )
))
(declare-fun lRes!24 () List!71151)

(declare-fun lambda!451691 () Int)

(declare-fun forall!17735 (List!71151 Int) Bool)

(assert (=> b!7312797 (= e!4377296 (not (forall!17735 lRes!24 lambda!451691)))))

(declare-fun lt!2600909 () List!71151)

(declare-fun f!903 () Int)

(declare-fun toList!11560 ((Set B!3495)) List!71151)

(declare-fun flatMap!3009 ((Set A!793) Int) (Set B!3495))

(assert (=> b!7312797 (= lt!2600909 (toList!11560 (flatMap!3009 s!1445 f!903)))))

(declare-fun res!2954583 () Bool)

(assert (=> start!712338 (=> (not res!2954583) (not e!4377296))))

(declare-fun elmt!124 () A!793)

(assert (=> start!712338 (= res!2954583 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!793)))))))

(assert (=> start!712338 e!4377296))

(declare-fun condSetEmpty!53974 () Bool)

(assert (=> start!712338 (= condSetEmpty!53974 (= s!1445 (as set.empty (Set A!793))))))

(assert (=> start!712338 setRes!53974))

(assert (=> start!712338 tp_is_empty!47381))

(declare-fun e!4377297 () Bool)

(assert (=> start!712338 e!4377297))

(assert (=> start!712338 tp!2075369))

(declare-fun b!7312798 () Bool)

(declare-fun tp_is_empty!47383 () Bool)

(declare-fun tp!2075368 () Bool)

(assert (=> b!7312798 (= e!4377297 (and tp_is_empty!47383 tp!2075368))))

(declare-fun setIsEmpty!53974 () Bool)

(assert (=> setIsEmpty!53974 setRes!53974))

(declare-fun b!7312799 () Bool)

(declare-fun res!2954585 () Bool)

(assert (=> b!7312799 (=> (not res!2954585) (not e!4377296))))

(declare-fun subseq!808 (List!71151 List!71151) Bool)

(declare-fun dynLambda!29078 (Int A!793) (Set B!3495))

(assert (=> b!7312799 (= res!2954585 (subseq!808 lRes!24 (toList!11560 (dynLambda!29078 f!903 elmt!124))))))

(declare-fun b!7312800 () Bool)

(declare-fun res!2954584 () Bool)

(assert (=> b!7312800 (=> (not res!2954584) (not e!4377296))))

(assert (=> b!7312800 (= res!2954584 (not (is-Cons!71027 lRes!24)))))

(assert (= (and start!712338 res!2954583) b!7312799))

(assert (= (and b!7312799 res!2954585) b!7312800))

(assert (= (and b!7312800 res!2954584) b!7312797))

(assert (= (and start!712338 condSetEmpty!53974) setIsEmpty!53974))

(assert (= (and start!712338 (not condSetEmpty!53974)) setNonEmpty!53974))

(assert (= (and start!712338 (is-Cons!71027 lRes!24)) b!7312798))

(declare-fun b_lambda!282249 () Bool)

(assert (=> (not b_lambda!282249) (not b!7312799)))

(declare-fun t!385310 () Bool)

(declare-fun tb!262189 () Bool)

(assert (=> (and start!712338 (= f!903 f!903) t!385310) tb!262189))

(assert (=> b!7312799 t!385310))

(declare-fun result!352800 () Bool)

(declare-fun b_and!351271 () Bool)

(assert (= b_and!351269 (and (=> t!385310 result!352800) b_and!351271)))

(declare-fun m!7977056 () Bool)

(assert (=> b!7312797 m!7977056))

(declare-fun m!7977058 () Bool)

(assert (=> b!7312797 m!7977058))

(assert (=> b!7312797 m!7977058))

(declare-fun m!7977060 () Bool)

(assert (=> b!7312797 m!7977060))

(declare-fun m!7977062 () Bool)

(assert (=> start!712338 m!7977062))

(declare-fun m!7977064 () Bool)

(assert (=> b!7312799 m!7977064))

(assert (=> b!7312799 m!7977064))

(declare-fun m!7977066 () Bool)

(assert (=> b!7312799 m!7977066))

(assert (=> b!7312799 m!7977066))

(declare-fun m!7977068 () Bool)

(assert (=> b!7312799 m!7977068))

(push 1)

(assert (not b_next!134737))

(assert (not b!7312797))

(assert (not setNonEmpty!53974))

(assert tp_is_empty!47383)

(assert (not b!7312799))

(assert (not b!7312798))

(assert b_and!351271)

(assert (not b_lambda!282249))

(assert tp_is_empty!47381)

(assert (not tb!262189))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351271)

(assert (not b_next!134737))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282253 () Bool)

(assert (= b_lambda!282249 (or (and start!712338 b_free!133947) b_lambda!282253)))

(push 1)

(assert (not b_next!134737))

(assert (not b!7312797))

(assert (not setNonEmpty!53974))

(assert tp_is_empty!47383)

(assert (not b!7312799))

(assert (not b_lambda!282253))

(assert (not b!7312798))

(assert b_and!351271)

(assert tp_is_empty!47381)

(assert (not tb!262189))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351271)

(assert (not b_next!134737))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270611 () Bool)

(declare-fun res!2954599 () Bool)

(declare-fun e!4377308 () Bool)

(assert (=> d!2270611 (=> res!2954599 e!4377308)))

(assert (=> d!2270611 (= res!2954599 (is-Nil!71027 lRes!24))))

(assert (=> d!2270611 (= (forall!17735 lRes!24 lambda!451691) e!4377308)))

(declare-fun b!7312821 () Bool)

(declare-fun e!4377309 () Bool)

(assert (=> b!7312821 (= e!4377308 e!4377309)))

(declare-fun res!2954600 () Bool)

(assert (=> b!7312821 (=> (not res!2954600) (not e!4377309))))

(declare-fun dynLambda!29080 (Int B!3495) Bool)

(assert (=> b!7312821 (= res!2954600 (dynLambda!29080 lambda!451691 (h!77475 lRes!24)))))

(declare-fun b!7312822 () Bool)

(assert (=> b!7312822 (= e!4377309 (forall!17735 (t!385311 lRes!24) lambda!451691))))

(assert (= (and d!2270611 (not res!2954599)) b!7312821))

(assert (= (and b!7312821 res!2954600) b!7312822))

(declare-fun b_lambda!282255 () Bool)

(assert (=> (not b_lambda!282255) (not b!7312821)))

(declare-fun m!7977084 () Bool)

(assert (=> b!7312821 m!7977084))

(declare-fun m!7977086 () Bool)

(assert (=> b!7312822 m!7977086))

(assert (=> b!7312797 d!2270611))

(declare-fun d!2270613 () Bool)

(declare-fun e!4377312 () Bool)

(assert (=> d!2270613 e!4377312))

(declare-fun res!2954603 () Bool)

(assert (=> d!2270613 (=> (not res!2954603) (not e!4377312))))

(declare-fun lt!2600915 () List!71151)

(declare-fun noDuplicate!3035 (List!71151) Bool)

(assert (=> d!2270613 (= res!2954603 (noDuplicate!3035 lt!2600915))))

(declare-fun choose!56649 ((Set B!3495)) List!71151)

(assert (=> d!2270613 (= lt!2600915 (choose!56649 (flatMap!3009 s!1445 f!903)))))

(assert (=> d!2270613 (= (toList!11560 (flatMap!3009 s!1445 f!903)) lt!2600915)))

(declare-fun b!7312825 () Bool)

(declare-fun content!14854 (List!71151) (Set B!3495))

(assert (=> b!7312825 (= e!4377312 (= (content!14854 lt!2600915) (flatMap!3009 s!1445 f!903)))))

(assert (= (and d!2270613 res!2954603) b!7312825))

(declare-fun m!7977088 () Bool)

(assert (=> d!2270613 m!7977088))

(assert (=> d!2270613 m!7977058))

(declare-fun m!7977090 () Bool)

(assert (=> d!2270613 m!7977090))

(declare-fun m!7977092 () Bool)

(assert (=> b!7312825 m!7977092))

(assert (=> b!7312797 d!2270613))

(declare-fun d!2270615 () Bool)

(declare-fun choose!56650 ((Set A!793) Int) (Set B!3495))

(assert (=> d!2270615 (= (flatMap!3009 s!1445 f!903) (choose!56650 s!1445 f!903))))

(declare-fun bs!1914588 () Bool)

(assert (= bs!1914588 d!2270615))

(declare-fun m!7977094 () Bool)

(assert (=> bs!1914588 m!7977094))

(assert (=> b!7312797 d!2270615))

(declare-fun b!7312834 () Bool)

(declare-fun e!4377321 () Bool)

(declare-fun e!4377323 () Bool)

(assert (=> b!7312834 (= e!4377321 e!4377323)))

(declare-fun res!2954614 () Bool)

(assert (=> b!7312834 (=> (not res!2954614) (not e!4377323))))

(assert (=> b!7312834 (= res!2954614 (is-Cons!71027 (toList!11560 (dynLambda!29078 f!903 elmt!124))))))

(declare-fun b!7312837 () Bool)

(declare-fun e!4377324 () Bool)

(assert (=> b!7312837 (= e!4377324 (subseq!808 lRes!24 (t!385311 (toList!11560 (dynLambda!29078 f!903 elmt!124)))))))

(declare-fun e!4377322 () Bool)

(declare-fun b!7312836 () Bool)

(assert (=> b!7312836 (= e!4377322 (subseq!808 (t!385311 lRes!24) (t!385311 (toList!11560 (dynLambda!29078 f!903 elmt!124)))))))

(declare-fun b!7312835 () Bool)

(assert (=> b!7312835 (= e!4377323 e!4377324)))

(declare-fun res!2954613 () Bool)

(assert (=> b!7312835 (=> res!2954613 e!4377324)))

(assert (=> b!7312835 (= res!2954613 e!4377322)))

(declare-fun res!2954612 () Bool)

(assert (=> b!7312835 (=> (not res!2954612) (not e!4377322))))

(assert (=> b!7312835 (= res!2954612 (= (h!77475 lRes!24) (h!77475 (toList!11560 (dynLambda!29078 f!903 elmt!124)))))))

(declare-fun d!2270617 () Bool)

(declare-fun res!2954615 () Bool)

(assert (=> d!2270617 (=> res!2954615 e!4377321)))

(assert (=> d!2270617 (= res!2954615 (is-Nil!71027 lRes!24))))

(assert (=> d!2270617 (= (subseq!808 lRes!24 (toList!11560 (dynLambda!29078 f!903 elmt!124))) e!4377321)))

(assert (= (and d!2270617 (not res!2954615)) b!7312834))

(assert (= (and b!7312834 res!2954614) b!7312835))

(assert (= (and b!7312835 res!2954612) b!7312836))

(assert (= (and b!7312835 (not res!2954613)) b!7312837))

(declare-fun m!7977096 () Bool)

(assert (=> b!7312837 m!7977096))

(declare-fun m!7977098 () Bool)

(assert (=> b!7312836 m!7977098))

(assert (=> b!7312799 d!2270617))

(declare-fun d!2270619 () Bool)

(declare-fun e!4377325 () Bool)

(assert (=> d!2270619 e!4377325))

(declare-fun res!2954616 () Bool)

(assert (=> d!2270619 (=> (not res!2954616) (not e!4377325))))

(declare-fun lt!2600916 () List!71151)

(assert (=> d!2270619 (= res!2954616 (noDuplicate!3035 lt!2600916))))

(assert (=> d!2270619 (= lt!2600916 (choose!56649 (dynLambda!29078 f!903 elmt!124)))))

(assert (=> d!2270619 (= (toList!11560 (dynLambda!29078 f!903 elmt!124)) lt!2600916)))

(declare-fun b!7312838 () Bool)

(assert (=> b!7312838 (= e!4377325 (= (content!14854 lt!2600916) (dynLambda!29078 f!903 elmt!124)))))

(assert (= (and d!2270619 res!2954616) b!7312838))

(declare-fun m!7977100 () Bool)

(assert (=> d!2270619 m!7977100))

(assert (=> d!2270619 m!7977064))

(declare-fun m!7977102 () Bool)

(assert (=> d!2270619 m!7977102))

(declare-fun m!7977104 () Bool)

(assert (=> b!7312838 m!7977104))

(assert (=> b!7312799 d!2270619))

(declare-fun condSetEmpty!53980 () Bool)

(assert (=> tb!262189 (= condSetEmpty!53980 (= (dynLambda!29078 f!903 elmt!124) (as set.empty (Set B!3495))))))

(declare-fun setRes!53980 () Bool)

(assert (=> tb!262189 (= result!352800 setRes!53980)))

(declare-fun setIsEmpty!53980 () Bool)

(assert (=> setIsEmpty!53980 setRes!53980))

(declare-fun setNonEmpty!53980 () Bool)

(declare-fun tp!2075382 () Bool)

(assert (=> setNonEmpty!53980 (= setRes!53980 (and tp!2075382 tp_is_empty!47383))))

(declare-fun setElem!53980 () B!3495)

(declare-fun setRest!53980 () (Set B!3495))

(assert (=> setNonEmpty!53980 (= (dynLambda!29078 f!903 elmt!124) (set.union (set.insert setElem!53980 (as set.empty (Set B!3495))) setRest!53980))))

(assert (= (and tb!262189 condSetEmpty!53980) setIsEmpty!53980))

(assert (= (and tb!262189 (not condSetEmpty!53980)) setNonEmpty!53980))

(declare-fun b!7312845 () Bool)

(declare-fun e!4377328 () Bool)

(declare-fun tp!2075385 () Bool)

(assert (=> b!7312845 (= e!4377328 (and tp_is_empty!47383 tp!2075385))))

(assert (=> b!7312798 (= tp!2075368 e!4377328)))

(assert (= (and b!7312798 (is-Cons!71027 (t!385311 lRes!24))) b!7312845))

(declare-fun condSetEmpty!53983 () Bool)

(assert (=> setNonEmpty!53974 (= condSetEmpty!53983 (= setRest!53974 (as set.empty (Set A!793))))))

(declare-fun setRes!53983 () Bool)

(assert (=> setNonEmpty!53974 (= tp!2075370 setRes!53983)))

(declare-fun setIsEmpty!53983 () Bool)

(assert (=> setIsEmpty!53983 setRes!53983))

(declare-fun setNonEmpty!53983 () Bool)

(declare-fun tp!2075388 () Bool)

(assert (=> setNonEmpty!53983 (= setRes!53983 (and tp!2075388 tp_is_empty!47381))))

(declare-fun setElem!53983 () A!793)

(declare-fun setRest!53983 () (Set A!793))

(assert (=> setNonEmpty!53983 (= setRest!53974 (set.union (set.insert setElem!53983 (as set.empty (Set A!793))) setRest!53983))))

(assert (= (and setNonEmpty!53974 condSetEmpty!53983) setIsEmpty!53983))

(assert (= (and setNonEmpty!53974 (not condSetEmpty!53983)) setNonEmpty!53983))

(declare-fun b_lambda!282259 () Bool)

(assert (= b_lambda!282255 (or b!7312797 b_lambda!282259)))

(declare-fun bs!1914589 () Bool)

(declare-fun d!2270621 () Bool)

(assert (= bs!1914589 (and d!2270621 b!7312797)))

(declare-fun contains!20770 (List!71151 B!3495) Bool)

(assert (=> bs!1914589 (= (dynLambda!29080 lambda!451691 (h!77475 lRes!24)) (contains!20770 lt!2600909 (h!77475 lRes!24)))))

(declare-fun m!7977106 () Bool)

(assert (=> bs!1914589 m!7977106))

(assert (=> b!7312821 d!2270621))

(push 1)

(assert (not b_next!134737))

(assert (not b_lambda!282259))

(assert (not setNonEmpty!53983))

(assert (not d!2270615))

(assert (not b!7312837))

(assert (not b!7312825))

(assert (not d!2270619))

(assert (not b!7312822))

(assert (not d!2270613))

(assert tp_is_empty!47383)

(assert (not b!7312836))

(assert (not bs!1914589))

(assert (not b_lambda!282253))

(assert (not b!7312845))

(assert b_and!351271)

(assert (not b!7312838))

(assert tp_is_empty!47381)

(assert (not setNonEmpty!53980))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351271)

(assert (not b_next!134737))

(check-sat)

(pop 1)

