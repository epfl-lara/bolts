; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714316 () Bool)

(assert start!714316)

(declare-fun b_free!134267 () Bool)

(declare-fun b_next!135057 () Bool)

(assert (=> start!714316 (= b_free!134267 (not b_next!135057))))

(declare-fun tp!2079574 () Bool)

(declare-fun b_and!351767 () Bool)

(assert (=> start!714316 (= tp!2079574 b_and!351767)))

(declare-fun b!7321436 () Bool)

(declare-fun res!2959314 () Bool)

(declare-fun e!4383588 () Bool)

(assert (=> b!7321436 (=> (not res!2959314) (not e!4383588))))

(declare-fun p!1702 () Int)

(declare-datatypes ((A!1113 0))(
  ( (A!1114 (val!29431 Int)) )
))
(declare-fun e!9205 () A!1113)

(declare-fun dynLambda!29360 (Int A!1113) Bool)

(assert (=> b!7321436 (= res!2959314 (dynLambda!29360 p!1702 e!9205))))

(declare-fun setIsEmpty!55796 () Bool)

(declare-fun setRes!55796 () Bool)

(assert (=> setIsEmpty!55796 setRes!55796))

(declare-fun setNonEmpty!55796 () Bool)

(declare-fun tp!2079575 () Bool)

(declare-fun tp_is_empty!48113 () Bool)

(assert (=> setNonEmpty!55796 (= setRes!55796 (and tp!2079575 tp_is_empty!48113))))

(declare-fun s!1482 () (Set A!1113))

(declare-fun setElem!55796 () A!1113)

(declare-fun setRest!55796 () (Set A!1113))

(assert (=> setNonEmpty!55796 (= s!1482 (set.union (set.insert setElem!55796 (as set.empty (Set A!1113))) setRest!55796))))

(declare-fun res!2959313 () Bool)

(assert (=> start!714316 (=> (not res!2959313) (not e!4383588))))

(assert (=> start!714316 (= res!2959313 (set.member e!9205 s!1482))))

(assert (=> start!714316 e!4383588))

(assert (=> start!714316 tp_is_empty!48113))

(declare-fun condSetEmpty!55796 () Bool)

(assert (=> start!714316 (= condSetEmpty!55796 (= s!1482 (as set.empty (Set A!1113))))))

(assert (=> start!714316 setRes!55796))

(assert (=> start!714316 tp!2079574))

(declare-fun b!7321437 () Bool)

(declare-fun exists!4706 ((Set A!1113) Int) Bool)

(assert (=> b!7321437 (= e!4383588 (not (exists!4706 s!1482 p!1702)))))

(declare-datatypes ((List!71430 0))(
  ( (Nil!71306) (Cons!71306 (h!77754 A!1113) (t!385763 List!71430)) )
))
(declare-fun lt!2604686 () List!71430)

(declare-fun exists!4707 (List!71430 Int) Bool)

(assert (=> b!7321437 (exists!4707 lt!2604686 p!1702)))

(declare-datatypes ((Unit!164877 0))(
  ( (Unit!164878) )
))
(declare-fun lt!2604685 () Unit!164877)

(declare-fun lemmaContainsThenExists!292 (List!71430 A!1113 Int) Unit!164877)

(assert (=> b!7321437 (= lt!2604685 (lemmaContainsThenExists!292 lt!2604686 e!9205 p!1702))))

(declare-fun toList!11717 ((Set A!1113)) List!71430)

(assert (=> b!7321437 (= lt!2604686 (toList!11717 s!1482))))

(assert (= (and start!714316 res!2959313) b!7321436))

(assert (= (and b!7321436 res!2959314) b!7321437))

(assert (= (and start!714316 condSetEmpty!55796) setIsEmpty!55796))

(assert (= (and start!714316 (not condSetEmpty!55796)) setNonEmpty!55796))

(declare-fun b_lambda!283007 () Bool)

(assert (=> (not b_lambda!283007) (not b!7321436)))

(declare-fun t!385762 () Bool)

(declare-fun tb!262343 () Bool)

(assert (=> (and start!714316 (= p!1702 p!1702) t!385762) tb!262343))

(declare-fun result!353530 () Bool)

(assert (=> tb!262343 (= result!353530 true)))

(assert (=> b!7321436 t!385762))

(declare-fun b_and!351769 () Bool)

(assert (= b_and!351767 (and (=> t!385762 result!353530) b_and!351769)))

(declare-fun m!7987194 () Bool)

(assert (=> b!7321436 m!7987194))

(declare-fun m!7987196 () Bool)

(assert (=> start!714316 m!7987196))

(declare-fun m!7987198 () Bool)

(assert (=> b!7321437 m!7987198))

(declare-fun m!7987200 () Bool)

(assert (=> b!7321437 m!7987200))

(declare-fun m!7987202 () Bool)

(assert (=> b!7321437 m!7987202))

(declare-fun m!7987204 () Bool)

(assert (=> b!7321437 m!7987204))

(push 1)

(assert (not b_next!135057))

(assert b_and!351769)

(assert (not setNonEmpty!55796))

(assert tp_is_empty!48113)

(assert (not b!7321437))

(assert (not b_lambda!283007))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351769)

(assert (not b_next!135057))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!283011 () Bool)

(assert (= b_lambda!283007 (or (and start!714316 b_free!134267) b_lambda!283011)))

(push 1)

(assert (not b!7321437))

(assert (not b_next!135057))

(assert b_and!351769)

(assert (not setNonEmpty!55796))

(assert tp_is_empty!48113)

(assert (not b_lambda!283011))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351769)

(assert (not b_next!135057))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273612 () Bool)

(declare-fun lt!2604695 () Bool)

(assert (=> d!2273612 (= lt!2604695 (exists!4707 (toList!11717 s!1482) p!1702))))

(declare-fun choose!56929 ((Set A!1113) Int) Bool)

(assert (=> d!2273612 (= lt!2604695 (choose!56929 s!1482 p!1702))))

(assert (=> d!2273612 (= (exists!4706 s!1482 p!1702) lt!2604695)))

(declare-fun bs!1916081 () Bool)

(assert (= bs!1916081 d!2273612))

(assert (=> bs!1916081 m!7987204))

(assert (=> bs!1916081 m!7987204))

(declare-fun m!7987218 () Bool)

(assert (=> bs!1916081 m!7987218))

(declare-fun m!7987220 () Bool)

(assert (=> bs!1916081 m!7987220))

(assert (=> b!7321437 d!2273612))

(declare-fun d!2273614 () Bool)

(assert (=> d!2273614 true))

(declare-fun order!29405 () Int)

(declare-fun lambda!453541 () Int)

(declare-fun dynLambda!29362 (Int Int) Int)

(assert (=> d!2273614 (< (dynLambda!29362 order!29405 p!1702) (dynLambda!29362 order!29405 lambda!453541))))

(declare-fun forall!17813 (List!71430 Int) Bool)

(assert (=> d!2273614 (= (exists!4707 lt!2604686 p!1702) (not (forall!17813 lt!2604686 lambda!453541)))))

(declare-fun bs!1916082 () Bool)

(assert (= bs!1916082 d!2273614))

(declare-fun m!7987222 () Bool)

(assert (=> bs!1916082 m!7987222))

(assert (=> b!7321437 d!2273614))

(declare-fun d!2273616 () Bool)

(assert (=> d!2273616 (exists!4707 lt!2604686 p!1702)))

(declare-fun lt!2604698 () Unit!164877)

(declare-fun choose!56930 (List!71430 A!1113 Int) Unit!164877)

(assert (=> d!2273616 (= lt!2604698 (choose!56930 lt!2604686 e!9205 p!1702))))

(declare-fun contains!20816 (List!71430 A!1113) Bool)

(assert (=> d!2273616 (contains!20816 lt!2604686 e!9205)))

(assert (=> d!2273616 (= (lemmaContainsThenExists!292 lt!2604686 e!9205 p!1702) lt!2604698)))

(declare-fun bs!1916083 () Bool)

(assert (= bs!1916083 d!2273616))

(assert (=> bs!1916083 m!7987200))

(declare-fun m!7987224 () Bool)

(assert (=> bs!1916083 m!7987224))

(declare-fun m!7987226 () Bool)

(assert (=> bs!1916083 m!7987226))

(assert (=> b!7321437 d!2273616))

(declare-fun d!2273618 () Bool)

(declare-fun e!4383595 () Bool)

(assert (=> d!2273618 e!4383595))

(declare-fun res!2959323 () Bool)

(assert (=> d!2273618 (=> (not res!2959323) (not e!4383595))))

(declare-fun lt!2604701 () List!71430)

(declare-fun noDuplicate!3086 (List!71430) Bool)

(assert (=> d!2273618 (= res!2959323 (noDuplicate!3086 lt!2604701))))

(declare-fun choose!56931 ((Set A!1113)) List!71430)

(assert (=> d!2273618 (= lt!2604701 (choose!56931 s!1482))))

(assert (=> d!2273618 (= (toList!11717 s!1482) lt!2604701)))

(declare-fun b!7321448 () Bool)

(declare-fun content!14905 (List!71430) (Set A!1113))

(assert (=> b!7321448 (= e!4383595 (= (content!14905 lt!2604701) s!1482))))

(assert (= (and d!2273618 res!2959323) b!7321448))

(declare-fun m!7987228 () Bool)

(assert (=> d!2273618 m!7987228))

(declare-fun m!7987230 () Bool)

(assert (=> d!2273618 m!7987230))

(declare-fun m!7987232 () Bool)

(assert (=> b!7321448 m!7987232))

(assert (=> b!7321437 d!2273618))

(declare-fun condSetEmpty!55802 () Bool)

(assert (=> setNonEmpty!55796 (= condSetEmpty!55802 (= setRest!55796 (as set.empty (Set A!1113))))))

(declare-fun setRes!55802 () Bool)

(assert (=> setNonEmpty!55796 (= tp!2079575 setRes!55802)))

(declare-fun setIsEmpty!55802 () Bool)

(assert (=> setIsEmpty!55802 setRes!55802))

(declare-fun setNonEmpty!55802 () Bool)

(declare-fun tp!2079584 () Bool)

(assert (=> setNonEmpty!55802 (= setRes!55802 (and tp!2079584 tp_is_empty!48113))))

(declare-fun setElem!55802 () A!1113)

(declare-fun setRest!55802 () (Set A!1113))

(assert (=> setNonEmpty!55802 (= setRest!55796 (set.union (set.insert setElem!55802 (as set.empty (Set A!1113))) setRest!55802))))

(assert (= (and setNonEmpty!55796 condSetEmpty!55802) setIsEmpty!55802))

(assert (= (and setNonEmpty!55796 (not condSetEmpty!55802)) setNonEmpty!55802))

(push 1)

(assert (not b_next!135057))

(assert b_and!351769)

(assert (not d!2273612))

(assert (not d!2273618))

(assert (not d!2273616))

(assert (not d!2273614))

(assert (not b!7321448))

(assert (not b_lambda!283011))

(assert tp_is_empty!48113)

(assert (not setNonEmpty!55802))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351769)

(assert (not b_next!135057))

(check-sat)

(pop 1)

