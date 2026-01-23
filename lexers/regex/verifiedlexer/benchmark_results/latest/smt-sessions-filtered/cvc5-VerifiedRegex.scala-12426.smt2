; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694062 () Bool)

(assert start!694062)

(declare-fun b_free!133807 () Bool)

(declare-fun b_next!134597 () Bool)

(assert (=> start!694062 (= b_free!133807 (not b_next!134597))))

(declare-fun tp!1962084 () Bool)

(declare-fun b_and!350965 () Bool)

(assert (=> start!694062 (= tp!1962084 b_and!350965)))

(declare-fun res!2907014 () Bool)

(declare-fun e!4281206 () Bool)

(assert (=> start!694062 (=> (not res!2907014) (not e!4281206))))

(declare-datatypes ((B!3371 0))(
  ( (B!3372 (val!28039 Int)) )
))
(declare-fun b!25321 () B!3371)

(declare-fun f!518 () Int)

(declare-datatypes ((A!713 0))(
  ( (A!714 (val!28040 Int)) )
))
(declare-fun s1!413 () (Set A!713))

(declare-fun map!16481 ((Set A!713) Int) (Set B!3371))

(assert (=> start!694062 (= res!2907014 (not (set.member b!25321 (map!16481 s1!413 f!518))))))

(assert (=> start!694062 e!4281206))

(declare-fun tp_is_empty!45577 () Bool)

(assert (=> start!694062 tp_is_empty!45577))

(declare-fun condSetEmpty!51545 () Bool)

(assert (=> start!694062 (= condSetEmpty!51545 (= s1!413 (as set.empty (Set A!713))))))

(declare-fun setRes!51545 () Bool)

(assert (=> start!694062 setRes!51545))

(assert (=> start!694062 tp!1962084))

(declare-fun condSetEmpty!51544 () Bool)

(declare-fun s2!384 () (Set A!713))

(assert (=> start!694062 (= condSetEmpty!51544 (= s2!384 (as set.empty (Set A!713))))))

(declare-fun setRes!51544 () Bool)

(assert (=> start!694062 setRes!51544))

(declare-fun setNonEmpty!51544 () Bool)

(declare-fun tp!1962083 () Bool)

(declare-fun tp_is_empty!45579 () Bool)

(assert (=> setNonEmpty!51544 (= setRes!51545 (and tp!1962083 tp_is_empty!45579))))

(declare-fun setElem!51545 () A!713)

(declare-fun setRest!51544 () (Set A!713))

(assert (=> setNonEmpty!51544 (= s1!413 (set.union (set.insert setElem!51545 (as set.empty (Set A!713))) setRest!51544))))

(declare-fun b!7124288 () Bool)

(declare-fun e!4281205 () Bool)

(assert (=> b!7124288 (= e!4281205 (not false))))

(declare-fun lt!2562839 () A!713)

(declare-datatypes ((Unit!162821 0))(
  ( (Unit!162822) )
))
(declare-fun empty!2859 () Unit!162821)

(declare-fun mapPost1!19 ((Set A!713) Int A!713) Unit!162821)

(assert (=> b!7124288 (= (mapPost1!19 s2!384 f!518 lt!2562839) empty!2859)))

(assert (=> b!7124288 true))

(declare-fun setNonEmpty!51545 () Bool)

(declare-fun tp!1962082 () Bool)

(assert (=> setNonEmpty!51545 (= setRes!51544 (and tp!1962082 tp_is_empty!45579))))

(declare-fun setElem!51544 () A!713)

(declare-fun setRest!51545 () (Set A!713))

(assert (=> setNonEmpty!51545 (= s2!384 (set.union (set.insert setElem!51544 (as set.empty (Set A!713))) setRest!51545))))

(declare-fun b!7124289 () Bool)

(declare-fun res!2907012 () Bool)

(assert (=> b!7124289 (=> (not res!2907012) (not e!4281206))))

(assert (=> b!7124289 (= res!2907012 (not (set.member b!25321 (map!16481 s2!384 f!518))))))

(declare-fun b!7124290 () Bool)

(declare-fun e!4281207 () Bool)

(assert (=> b!7124290 (= e!4281206 e!4281207)))

(declare-fun res!2907013 () Bool)

(assert (=> b!7124290 (=> (not res!2907013) (not e!4281207))))

(declare-fun lt!2562838 () (Set A!713))

(assert (=> b!7124290 (= res!2907013 (set.member b!25321 (map!16481 lt!2562838 f!518)))))

(assert (=> b!7124290 (= lt!2562838 (set.union s1!413 s2!384))))

(declare-fun b!7124291 () Bool)

(assert (=> b!7124291 (= e!4281207 e!4281205)))

(declare-fun res!2907015 () Bool)

(assert (=> b!7124291 (=> (not res!2907015) (not e!4281205))))

(declare-fun lt!2562837 () Bool)

(assert (=> b!7124291 (= res!2907015 (and (or lt!2562837 (set.member lt!2562839 s2!384)) (not lt!2562837)))))

(assert (=> b!7124291 (= lt!2562837 (set.member lt!2562839 s1!413))))

(declare-fun mapPost2!585 ((Set A!713) Int B!3371) A!713)

(assert (=> b!7124291 (= lt!2562839 (mapPost2!585 lt!2562838 f!518 b!25321))))

(declare-fun setIsEmpty!51544 () Bool)

(assert (=> setIsEmpty!51544 setRes!51544))

(declare-fun setIsEmpty!51545 () Bool)

(assert (=> setIsEmpty!51545 setRes!51545))

(assert (= (and start!694062 res!2907014) b!7124289))

(assert (= (and b!7124289 res!2907012) b!7124290))

(assert (= (and b!7124290 res!2907013) b!7124291))

(assert (= (and b!7124291 res!2907015) b!7124288))

(assert (= (and start!694062 condSetEmpty!51545) setIsEmpty!51545))

(assert (= (and start!694062 (not condSetEmpty!51545)) setNonEmpty!51544))

(assert (= (and start!694062 condSetEmpty!51544) setIsEmpty!51544))

(assert (= (and start!694062 (not condSetEmpty!51544)) setNonEmpty!51545))

(declare-fun m!7841822 () Bool)

(assert (=> b!7124291 m!7841822))

(declare-fun m!7841824 () Bool)

(assert (=> b!7124291 m!7841824))

(declare-fun m!7841826 () Bool)

(assert (=> b!7124291 m!7841826))

(declare-fun m!7841828 () Bool)

(assert (=> b!7124289 m!7841828))

(declare-fun m!7841830 () Bool)

(assert (=> b!7124289 m!7841830))

(declare-fun m!7841832 () Bool)

(assert (=> b!7124290 m!7841832))

(declare-fun m!7841834 () Bool)

(assert (=> b!7124290 m!7841834))

(declare-fun m!7841836 () Bool)

(assert (=> start!694062 m!7841836))

(declare-fun m!7841838 () Bool)

(assert (=> start!694062 m!7841838))

(declare-fun m!7841840 () Bool)

(assert (=> b!7124288 m!7841840))

(push 1)

(assert (not setNonEmpty!51544))

(assert tp_is_empty!45579)

(assert (not b!7124291))

(assert (not start!694062))

(assert (not b!7124289))

(assert (not b!7124288))

(assert (not b_next!134597))

(assert b_and!350965)

(assert tp_is_empty!45577)

(assert (not setNonEmpty!51545))

(assert (not b!7124290))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350965)

(assert (not b_next!134597))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223329 () Bool)

(declare-fun choose!55084 ((Set A!713) Int) (Set B!3371))

(assert (=> d!2223329 (= (map!16481 lt!2562838 f!518) (choose!55084 lt!2562838 f!518))))

(declare-fun bs!1886253 () Bool)

(assert (= bs!1886253 d!2223329))

(declare-fun m!7841862 () Bool)

(assert (=> bs!1886253 m!7841862))

(assert (=> b!7124290 d!2223329))

(declare-fun d!2223331 () Bool)

(declare-fun e!4281219 () Bool)

(assert (=> d!2223331 e!4281219))

(declare-fun res!2907030 () Bool)

(assert (=> d!2223331 (=> (not res!2907030) (not e!4281219))))

(declare-fun lt!2562851 () A!713)

(declare-fun dynLambda!28103 (Int A!713) B!3371)

(assert (=> d!2223331 (= res!2907030 (= b!25321 (dynLambda!28103 f!518 lt!2562851)))))

(declare-fun choose!55085 ((Set A!713) Int B!3371) A!713)

(assert (=> d!2223331 (= lt!2562851 (choose!55085 lt!2562838 f!518 b!25321))))

(assert (=> d!2223331 (set.member b!25321 (map!16481 lt!2562838 f!518))))

(assert (=> d!2223331 (= (mapPost2!585 lt!2562838 f!518 b!25321) lt!2562851)))

(declare-fun b!7124307 () Bool)

(assert (=> b!7124307 (= e!4281219 (set.member lt!2562851 lt!2562838))))

(assert (= (and d!2223331 res!2907030) b!7124307))

(declare-fun b_lambda!271901 () Bool)

(assert (=> (not b_lambda!271901) (not d!2223331)))

(declare-fun t!382997 () Bool)

(declare-fun tb!262047 () Bool)

(assert (=> (and start!694062 (= f!518 f!518) t!382997) tb!262047))

(declare-fun result!349390 () Bool)

(assert (=> tb!262047 (= result!349390 tp_is_empty!45577)))

(assert (=> d!2223331 t!382997))

(declare-fun b_and!350969 () Bool)

(assert (= b_and!350965 (and (=> t!382997 result!349390) b_and!350969)))

(declare-fun m!7841864 () Bool)

(assert (=> d!2223331 m!7841864))

(declare-fun m!7841866 () Bool)

(assert (=> d!2223331 m!7841866))

(assert (=> d!2223331 m!7841832))

(assert (=> d!2223331 m!7841834))

(declare-fun m!7841868 () Bool)

(assert (=> b!7124307 m!7841868))

(assert (=> b!7124291 d!2223331))

(declare-fun d!2223333 () Bool)

(assert (=> d!2223333 (= (map!16481 s2!384 f!518) (choose!55084 s2!384 f!518))))

(declare-fun bs!1886254 () Bool)

(assert (= bs!1886254 d!2223333))

(declare-fun m!7841870 () Bool)

(assert (=> bs!1886254 m!7841870))

(assert (=> b!7124289 d!2223333))

(declare-fun d!2223335 () Bool)

(assert (=> d!2223335 (= (map!16481 s1!413 f!518) (choose!55084 s1!413 f!518))))

(declare-fun bs!1886255 () Bool)

(assert (= bs!1886255 d!2223335))

(declare-fun m!7841872 () Bool)

(assert (=> bs!1886255 m!7841872))

(assert (=> start!694062 d!2223335))

(declare-fun d!2223337 () Bool)

(declare-fun e!4281222 () Bool)

(assert (=> d!2223337 e!4281222))

(declare-fun res!2907033 () Bool)

(assert (=> d!2223337 (=> res!2907033 e!4281222)))

(assert (=> d!2223337 (= res!2907033 (not (set.member lt!2562839 s2!384)))))

(declare-fun lt!2562854 () Unit!162821)

(declare-fun choose!55086 ((Set A!713) Int A!713) Unit!162821)

(assert (=> d!2223337 (= lt!2562854 (choose!55086 s2!384 f!518 lt!2562839))))

(assert (=> d!2223337 (= (mapPost1!19 s2!384 f!518 lt!2562839) lt!2562854)))

(declare-fun b!7124312 () Bool)

(assert (=> b!7124312 (= e!4281222 (set.member (dynLambda!28103 f!518 lt!2562839) (map!16481 s2!384 f!518)))))

(assert (= (and d!2223337 (not res!2907033)) b!7124312))

(declare-fun b_lambda!271903 () Bool)

(assert (=> (not b_lambda!271903) (not b!7124312)))

(declare-fun t!382999 () Bool)

(declare-fun tb!262049 () Bool)

(assert (=> (and start!694062 (= f!518 f!518) t!382999) tb!262049))

(declare-fun result!349394 () Bool)

(assert (=> tb!262049 (= result!349394 tp_is_empty!45577)))

(assert (=> b!7124312 t!382999))

(declare-fun b_and!350971 () Bool)

(assert (= b_and!350969 (and (=> t!382999 result!349394) b_and!350971)))

(assert (=> d!2223337 m!7841822))

(declare-fun m!7841874 () Bool)

(assert (=> d!2223337 m!7841874))

(declare-fun m!7841876 () Bool)

(assert (=> b!7124312 m!7841876))

(assert (=> b!7124312 m!7841828))

(assert (=> b!7124312 m!7841876))

(declare-fun m!7841878 () Bool)

(assert (=> b!7124312 m!7841878))

(assert (=> b!7124288 d!2223337))

(declare-fun condSetEmpty!51554 () Bool)

(assert (=> setNonEmpty!51545 (= condSetEmpty!51554 (= setRest!51545 (as set.empty (Set A!713))))))

(declare-fun setRes!51554 () Bool)

(assert (=> setNonEmpty!51545 (= tp!1962082 setRes!51554)))

(declare-fun setIsEmpty!51554 () Bool)

(assert (=> setIsEmpty!51554 setRes!51554))

(declare-fun setNonEmpty!51554 () Bool)

(declare-fun tp!1962096 () Bool)

(assert (=> setNonEmpty!51554 (= setRes!51554 (and tp!1962096 tp_is_empty!45579))))

(declare-fun setElem!51554 () A!713)

(declare-fun setRest!51554 () (Set A!713))

(assert (=> setNonEmpty!51554 (= setRest!51545 (set.union (set.insert setElem!51554 (as set.empty (Set A!713))) setRest!51554))))

(assert (= (and setNonEmpty!51545 condSetEmpty!51554) setIsEmpty!51554))

(assert (= (and setNonEmpty!51545 (not condSetEmpty!51554)) setNonEmpty!51554))

(declare-fun condSetEmpty!51555 () Bool)

(assert (=> setNonEmpty!51544 (= condSetEmpty!51555 (= setRest!51544 (as set.empty (Set A!713))))))

(declare-fun setRes!51555 () Bool)

(assert (=> setNonEmpty!51544 (= tp!1962083 setRes!51555)))

(declare-fun setIsEmpty!51555 () Bool)

(assert (=> setIsEmpty!51555 setRes!51555))

(declare-fun setNonEmpty!51555 () Bool)

(declare-fun tp!1962097 () Bool)

(assert (=> setNonEmpty!51555 (= setRes!51555 (and tp!1962097 tp_is_empty!45579))))

(declare-fun setElem!51555 () A!713)

(declare-fun setRest!51555 () (Set A!713))

(assert (=> setNonEmpty!51555 (= setRest!51544 (set.union (set.insert setElem!51555 (as set.empty (Set A!713))) setRest!51555))))

(assert (= (and setNonEmpty!51544 condSetEmpty!51555) setIsEmpty!51555))

(assert (= (and setNonEmpty!51544 (not condSetEmpty!51555)) setNonEmpty!51555))

(declare-fun b_lambda!271905 () Bool)

(assert (= b_lambda!271901 (or (and start!694062 b_free!133807) b_lambda!271905)))

(declare-fun b_lambda!271907 () Bool)

(assert (= b_lambda!271903 (or (and start!694062 b_free!133807) b_lambda!271907)))

(push 1)

(assert tp_is_empty!45579)

(assert (not d!2223337))

(assert (not b!7124312))

(assert (not d!2223335))

(assert (not b_lambda!271905))

(assert b_and!350971)

(assert (not b_next!134597))

(assert (not setNonEmpty!51554))

(assert (not setNonEmpty!51555))

(assert tp_is_empty!45577)

(assert (not d!2223333))

(assert (not d!2223331))

(assert (not b_lambda!271907))

(assert (not d!2223329))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350971)

(assert (not b_next!134597))

(check-sat)

(pop 1)

