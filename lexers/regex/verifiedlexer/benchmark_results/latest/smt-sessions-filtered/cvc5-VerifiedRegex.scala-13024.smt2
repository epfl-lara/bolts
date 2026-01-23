; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714336 () Bool)

(assert start!714336)

(declare-fun b_free!134271 () Bool)

(declare-fun b_next!135061 () Bool)

(assert (=> start!714336 (= b_free!134271 (not b_next!135061))))

(declare-fun tp!2079592 () Bool)

(declare-fun b_and!351775 () Bool)

(assert (=> start!714336 (= tp!2079592 b_and!351775)))

(declare-fun setIsEmpty!55808 () Bool)

(declare-fun setRes!55808 () Bool)

(assert (=> setIsEmpty!55808 setRes!55808))

(declare-fun setNonEmpty!55808 () Bool)

(declare-fun tp!2079593 () Bool)

(declare-fun tp_is_empty!48117 () Bool)

(assert (=> setNonEmpty!55808 (= setRes!55808 (and tp!2079593 tp_is_empty!48117))))

(declare-datatypes ((A!1117 0))(
  ( (A!1118 (val!29433 Int)) )
))
(declare-fun s!1482 () (Set A!1117))

(declare-fun setElem!55808 () A!1117)

(declare-fun setRest!55808 () (Set A!1117))

(assert (=> setNonEmpty!55808 (= s!1482 (set.union (set.insert setElem!55808 (as set.empty (Set A!1117))) setRest!55808))))

(declare-fun b!7321463 () Bool)

(declare-fun e!4383602 () Bool)

(declare-fun e!9205 () A!1117)

(declare-datatypes ((List!71432 0))(
  ( (Nil!71308) (Cons!71308 (h!77756 A!1117) (t!385769 List!71432)) )
))
(declare-fun contains!20817 (List!71432 A!1117) Bool)

(declare-fun toList!11719 ((Set A!1117)) List!71432)

(assert (=> b!7321463 (= e!4383602 (not (contains!20817 (toList!11719 s!1482) e!9205)))))

(declare-fun b!7321462 () Bool)

(declare-fun res!2959332 () Bool)

(assert (=> b!7321462 (=> (not res!2959332) (not e!4383602))))

(declare-fun p!1702 () Int)

(declare-fun dynLambda!29363 (Int A!1117) Bool)

(assert (=> b!7321462 (= res!2959332 (dynLambda!29363 p!1702 e!9205))))

(declare-fun res!2959331 () Bool)

(assert (=> start!714336 (=> (not res!2959331) (not e!4383602))))

(assert (=> start!714336 (= res!2959331 (set.member e!9205 s!1482))))

(assert (=> start!714336 e!4383602))

(assert (=> start!714336 tp_is_empty!48117))

(declare-fun condSetEmpty!55808 () Bool)

(assert (=> start!714336 (= condSetEmpty!55808 (= s!1482 (as set.empty (Set A!1117))))))

(assert (=> start!714336 setRes!55808))

(assert (=> start!714336 tp!2079592))

(assert (= (and start!714336 res!2959331) b!7321462))

(assert (= (and b!7321462 res!2959332) b!7321463))

(assert (= (and start!714336 condSetEmpty!55808) setIsEmpty!55808))

(assert (= (and start!714336 (not condSetEmpty!55808)) setNonEmpty!55808))

(declare-fun b_lambda!283015 () Bool)

(assert (=> (not b_lambda!283015) (not b!7321462)))

(declare-fun t!385768 () Bool)

(declare-fun tb!262347 () Bool)

(assert (=> (and start!714336 (= p!1702 p!1702) t!385768) tb!262347))

(declare-fun result!353538 () Bool)

(assert (=> tb!262347 (= result!353538 true)))

(assert (=> b!7321462 t!385768))

(declare-fun b_and!351777 () Bool)

(assert (= b_and!351775 (and (=> t!385768 result!353538) b_and!351777)))

(declare-fun m!7987244 () Bool)

(assert (=> b!7321463 m!7987244))

(assert (=> b!7321463 m!7987244))

(declare-fun m!7987246 () Bool)

(assert (=> b!7321463 m!7987246))

(declare-fun m!7987248 () Bool)

(assert (=> b!7321462 m!7987248))

(declare-fun m!7987250 () Bool)

(assert (=> start!714336 m!7987250))

(push 1)

(assert (not b_lambda!283015))

(assert tp_is_empty!48117)

(assert (not b_next!135061))

(assert (not setNonEmpty!55808))

(assert (not b!7321463))

(assert b_and!351777)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351777)

(assert (not b_next!135061))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!283019 () Bool)

(assert (= b_lambda!283015 (or (and start!714336 b_free!134271) b_lambda!283019)))

(push 1)

(assert tp_is_empty!48117)

(assert (not b_next!135061))

(assert (not b_lambda!283019))

(assert (not setNonEmpty!55808))

(assert (not b!7321463))

(assert b_and!351777)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351777)

(assert (not b_next!135061))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273629 () Bool)

(declare-fun lt!2604713 () Bool)

(declare-fun content!14906 (List!71432) (Set A!1117))

(assert (=> d!2273629 (= lt!2604713 (set.member e!9205 (content!14906 (toList!11719 s!1482))))))

(declare-fun e!4383610 () Bool)

(assert (=> d!2273629 (= lt!2604713 e!4383610)))

(declare-fun res!2959343 () Bool)

(assert (=> d!2273629 (=> (not res!2959343) (not e!4383610))))

(assert (=> d!2273629 (= res!2959343 (is-Cons!71308 (toList!11719 s!1482)))))

(assert (=> d!2273629 (= (contains!20817 (toList!11719 s!1482) e!9205) lt!2604713)))

(declare-fun b!7321474 () Bool)

(declare-fun e!4383611 () Bool)

(assert (=> b!7321474 (= e!4383610 e!4383611)))

(declare-fun res!2959344 () Bool)

(assert (=> b!7321474 (=> res!2959344 e!4383611)))

(assert (=> b!7321474 (= res!2959344 (= (h!77756 (toList!11719 s!1482)) e!9205))))

(declare-fun b!7321475 () Bool)

(assert (=> b!7321475 (= e!4383611 (contains!20817 (t!385769 (toList!11719 s!1482)) e!9205))))

(assert (= (and d!2273629 res!2959343) b!7321474))

(assert (= (and b!7321474 (not res!2959344)) b!7321475))

(assert (=> d!2273629 m!7987244))

(declare-fun m!7987260 () Bool)

(assert (=> d!2273629 m!7987260))

(declare-fun m!7987262 () Bool)

(assert (=> d!2273629 m!7987262))

(declare-fun m!7987264 () Bool)

(assert (=> b!7321475 m!7987264))

(assert (=> b!7321463 d!2273629))

(declare-fun d!2273631 () Bool)

(declare-fun e!4383614 () Bool)

(assert (=> d!2273631 e!4383614))

(declare-fun res!2959347 () Bool)

(assert (=> d!2273631 (=> (not res!2959347) (not e!4383614))))

(declare-fun lt!2604716 () List!71432)

(declare-fun noDuplicate!3087 (List!71432) Bool)

(assert (=> d!2273631 (= res!2959347 (noDuplicate!3087 lt!2604716))))

(declare-fun choose!56932 ((Set A!1117)) List!71432)

(assert (=> d!2273631 (= lt!2604716 (choose!56932 s!1482))))

(assert (=> d!2273631 (= (toList!11719 s!1482) lt!2604716)))

(declare-fun b!7321478 () Bool)

(assert (=> b!7321478 (= e!4383614 (= (content!14906 lt!2604716) s!1482))))

(assert (= (and d!2273631 res!2959347) b!7321478))

(declare-fun m!7987266 () Bool)

(assert (=> d!2273631 m!7987266))

(declare-fun m!7987268 () Bool)

(assert (=> d!2273631 m!7987268))

(declare-fun m!7987270 () Bool)

(assert (=> b!7321478 m!7987270))

(assert (=> b!7321463 d!2273631))

(declare-fun condSetEmpty!55814 () Bool)

(assert (=> setNonEmpty!55808 (= condSetEmpty!55814 (= setRest!55808 (as set.empty (Set A!1117))))))

(declare-fun setRes!55814 () Bool)

(assert (=> setNonEmpty!55808 (= tp!2079593 setRes!55814)))

(declare-fun setIsEmpty!55814 () Bool)

(assert (=> setIsEmpty!55814 setRes!55814))

(declare-fun setNonEmpty!55814 () Bool)

(declare-fun tp!2079602 () Bool)

(assert (=> setNonEmpty!55814 (= setRes!55814 (and tp!2079602 tp_is_empty!48117))))

(declare-fun setElem!55814 () A!1117)

(declare-fun setRest!55814 () (Set A!1117))

(assert (=> setNonEmpty!55814 (= setRest!55808 (set.union (set.insert setElem!55814 (as set.empty (Set A!1117))) setRest!55814))))

(assert (= (and setNonEmpty!55808 condSetEmpty!55814) setIsEmpty!55814))

(assert (= (and setNonEmpty!55808 (not condSetEmpty!55814)) setNonEmpty!55814))

(push 1)

(assert (not b!7321475))

(assert (not b!7321478))

(assert tp_is_empty!48117)

(assert b_and!351777)

(assert (not d!2273631))

(assert (not d!2273629))

(assert (not setNonEmpty!55814))

(assert (not b_next!135061))

(assert (not b_lambda!283019))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351777)

(assert (not b_next!135061))

(check-sat)

(pop 1)

