; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45222 () Bool)

(assert start!45222)

(declare-fun b_free!13205 () Bool)

(declare-fun b_next!13205 () Bool)

(assert (=> start!45222 (= b_free!13205 (not b_next!13205))))

(declare-fun tp!130865 () Bool)

(declare-fun b_and!50539 () Bool)

(assert (=> start!45222 (= tp!130865 b_and!50539)))

(declare-fun b_free!13207 () Bool)

(declare-fun b_next!13207 () Bool)

(assert (=> start!45222 (= b_free!13207 (not b_next!13207))))

(declare-fun tp!130866 () Bool)

(declare-fun b_and!50541 () Bool)

(assert (=> start!45222 (= tp!130866 b_and!50541)))

(declare-fun b!472268 () Bool)

(assert (=> b!472268 true))

(declare-fun lambda!14068 () Int)

(declare-fun f!1019 () Int)

(declare-fun order!4265 () Int)

(declare-fun order!4263 () Int)

(declare-fun dynLambda!2902 (Int Int) Int)

(declare-fun dynLambda!2903 (Int Int) Int)

(assert (=> b!472268 (< (dynLambda!2902 order!4263 f!1019) (dynLambda!2903 order!4265 lambda!14068))))

(assert (=> b!472268 true))

(declare-fun order!4267 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2904 (Int Int) Int)

(assert (=> b!472268 (< (dynLambda!2904 order!4267 p!1765) (dynLambda!2903 order!4265 lambda!14068))))

(declare-fun bs!58479 () Bool)

(declare-fun b!472269 () Bool)

(assert (= bs!58479 (and b!472269 b!472268)))

(declare-fun lambda!14069 () Int)

(assert (=> bs!58479 (not (= lambda!14069 lambda!14068))))

(assert (=> b!472269 true))

(assert (=> b!472269 true))

(assert (=> b!472269 (< (dynLambda!2902 order!4263 f!1019) (dynLambda!2903 order!4265 lambda!14069))))

(declare-fun res!209543 () Bool)

(declare-fun e!288851 () Bool)

(assert (=> start!45222 (=> (not res!209543) (not e!288851))))

(declare-datatypes ((B!959 0))(
  ( (B!960 (val!1535 Int)) )
))
(declare-fun elm!3 () B!959)

(declare-datatypes ((A!397 0))(
  ( (A!398 (val!1536 Int)) )
))
(declare-fun s!1493 () (Set A!397))

(declare-fun flatMap!103 ((Set A!397) Int) (Set B!959))

(assert (=> start!45222 (= res!209543 (set.member elm!3 (flatMap!103 s!1493 f!1019)))))

(assert (=> start!45222 e!288851))

(declare-fun tp_is_empty!2175 () Bool)

(assert (=> start!45222 tp_is_empty!2175))

(declare-fun condSetEmpty!1997 () Bool)

(assert (=> start!45222 (= condSetEmpty!1997 (= s!1493 (as set.empty (Set A!397))))))

(declare-fun setRes!1997 () Bool)

(assert (=> start!45222 setRes!1997))

(assert (=> start!45222 tp!130865))

(assert (=> start!45222 tp!130866))

(declare-fun setNonEmpty!1997 () Bool)

(declare-fun tp!130864 () Bool)

(declare-fun tp_is_empty!2173 () Bool)

(assert (=> setNonEmpty!1997 (= setRes!1997 (and tp!130864 tp_is_empty!2173))))

(declare-fun setElem!1997 () A!397)

(declare-fun setRest!1997 () (Set A!397))

(assert (=> setNonEmpty!1997 (= s!1493 (set.union (set.insert setElem!1997 (as set.empty (Set A!397))) setRest!1997))))

(declare-fun res!209544 () Bool)

(assert (=> b!472268 (=> (not res!209544) (not e!288851))))

(declare-fun Forall!253 (Int) Bool)

(assert (=> b!472268 (= res!209544 (Forall!253 lambda!14068))))

(declare-fun setIsEmpty!1997 () Bool)

(assert (=> setIsEmpty!1997 setRes!1997))

(declare-fun exists!61 ((Set A!397) Int) Bool)

(assert (=> b!472269 (= e!288851 (not (exists!61 s!1493 lambda!14069)))))

(declare-fun empty!2639 () A!397)

(declare-fun flatMapPost!27 ((Set A!397) Int B!959) A!397)

(assert (=> b!472269 (= (flatMapPost!27 s!1493 f!1019 elm!3) empty!2639)))

(assert (=> b!472269 true))

(assert (=> b!472269 tp_is_empty!2173))

(assert (= (and start!45222 res!209543) b!472268))

(assert (= (and b!472268 res!209544) b!472269))

(assert (= (and start!45222 condSetEmpty!1997) setIsEmpty!1997))

(assert (= (and start!45222 (not condSetEmpty!1997)) setNonEmpty!1997))

(declare-fun m!745627 () Bool)

(assert (=> start!45222 m!745627))

(declare-fun m!745629 () Bool)

(assert (=> start!45222 m!745629))

(declare-fun m!745631 () Bool)

(assert (=> b!472268 m!745631))

(declare-fun m!745633 () Bool)

(assert (=> b!472269 m!745633))

(declare-fun m!745635 () Bool)

(assert (=> b!472269 m!745635))

(push 1)

(assert (not b_next!13205))

(assert b_and!50541)

(assert (not setNonEmpty!1997))

(assert b_and!50539)

(assert (not b!472269))

(assert (not b!472268))

(assert tp_is_empty!2175)

(assert tp_is_empty!2173)

(assert (not b_next!13207))

(assert (not start!45222))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50539)

(assert b_and!50541)

(assert (not b_next!13205))

(assert (not b_next!13207))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179502 () Bool)

(declare-fun choose!3581 (Int) Bool)

(assert (=> d!179502 (= (Forall!253 lambda!14068) (choose!3581 lambda!14068))))

(declare-fun bs!58481 () Bool)

(assert (= bs!58481 d!179502))

(declare-fun m!745647 () Bool)

(assert (=> bs!58481 m!745647))

(assert (=> b!472268 d!179502))

(declare-fun d!179504 () Bool)

(declare-fun lt!210284 () Bool)

(declare-datatypes ((List!4567 0))(
  ( (Nil!4557) (Cons!4557 (h!9954 A!397) (t!73017 List!4567)) )
))
(declare-fun exists!63 (List!4567 Int) Bool)

(declare-fun toList!338 ((Set A!397)) List!4567)

(assert (=> d!179504 (= lt!210284 (exists!63 (toList!338 s!1493) lambda!14069))))

(declare-fun choose!3582 ((Set A!397) Int) Bool)

(assert (=> d!179504 (= lt!210284 (choose!3582 s!1493 lambda!14069))))

(assert (=> d!179504 (= (exists!61 s!1493 lambda!14069) lt!210284)))

(declare-fun bs!58482 () Bool)

(assert (= bs!58482 d!179504))

(declare-fun m!745649 () Bool)

(assert (=> bs!58482 m!745649))

(assert (=> bs!58482 m!745649))

(declare-fun m!745651 () Bool)

(assert (=> bs!58482 m!745651))

(declare-fun m!745653 () Bool)

(assert (=> bs!58482 m!745653))

(assert (=> b!472269 d!179504))

(declare-fun bs!58483 () Bool)

(declare-fun d!179506 () Bool)

(assert (= bs!58483 (and d!179506 b!472268)))

(declare-fun lambda!14078 () Int)

(assert (=> bs!58483 (not (= lambda!14078 lambda!14068))))

(declare-fun bs!58484 () Bool)

(assert (= bs!58484 (and d!179506 b!472269)))

(assert (=> bs!58484 (= lambda!14078 lambda!14069)))

(assert (=> d!179506 true))

(assert (=> d!179506 true))

(assert (=> d!179506 (< (dynLambda!2902 order!4263 f!1019) (dynLambda!2903 order!4265 lambda!14078))))

(assert (=> d!179506 (= (set.member elm!3 (flatMap!103 s!1493 f!1019)) (exists!61 s!1493 lambda!14078))))

(declare-fun lt!210287 () A!397)

(declare-fun choose!3583 ((Set A!397) Int B!959) A!397)

(assert (=> d!179506 (= lt!210287 (choose!3583 s!1493 f!1019 elm!3))))

(assert (=> d!179506 (= (flatMapPost!27 s!1493 f!1019 elm!3) lt!210287)))

(declare-fun bs!58485 () Bool)

(assert (= bs!58485 d!179506))

(assert (=> bs!58485 m!745627))

(assert (=> bs!58485 m!745629))

(declare-fun m!745655 () Bool)

(assert (=> bs!58485 m!745655))

(declare-fun m!745657 () Bool)

(assert (=> bs!58485 m!745657))

(assert (=> b!472269 d!179506))

(declare-fun d!179508 () Bool)

(declare-fun choose!3584 ((Set A!397) Int) (Set B!959))

(assert (=> d!179508 (= (flatMap!103 s!1493 f!1019) (choose!3584 s!1493 f!1019))))

(declare-fun bs!58486 () Bool)

(assert (= bs!58486 d!179508))

(declare-fun m!745659 () Bool)

(assert (=> bs!58486 m!745659))

(assert (=> start!45222 d!179508))

(declare-fun condSetEmpty!2003 () Bool)

(assert (=> setNonEmpty!1997 (= condSetEmpty!2003 (= setRest!1997 (as set.empty (Set A!397))))))

(declare-fun setRes!2003 () Bool)

(assert (=> setNonEmpty!1997 (= tp!130864 setRes!2003)))

(declare-fun setIsEmpty!2003 () Bool)

(assert (=> setIsEmpty!2003 setRes!2003))

(declare-fun setNonEmpty!2003 () Bool)

(declare-fun tp!130878 () Bool)

(assert (=> setNonEmpty!2003 (= setRes!2003 (and tp!130878 tp_is_empty!2173))))

(declare-fun setElem!2003 () A!397)

(declare-fun setRest!2003 () (Set A!397))

(assert (=> setNonEmpty!2003 (= setRest!1997 (set.union (set.insert setElem!2003 (as set.empty (Set A!397))) setRest!2003))))

(assert (= (and setNonEmpty!1997 condSetEmpty!2003) setIsEmpty!2003))

(assert (= (and setNonEmpty!1997 (not condSetEmpty!2003)) setNonEmpty!2003))

(push 1)

(assert b_and!50539)

(assert (not d!179506))

(assert (not d!179502))

(assert (not b_next!13205))

(assert (not d!179508))

(assert b_and!50541)

(assert (not d!179504))

(assert (not setNonEmpty!2003))

(assert (not b_next!13207))

(assert tp_is_empty!2175)

(assert tp_is_empty!2173)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50539)

(assert b_and!50541)

(assert (not b_next!13205))

(assert (not b_next!13207))

(check-sat)

(pop 1)

