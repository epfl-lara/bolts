; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693732 () Bool)

(assert start!693732)

(declare-fun b_free!133731 () Bool)

(declare-fun b_next!134521 () Bool)

(assert (=> start!693732 (= b_free!133731 (not b_next!134521))))

(declare-fun tp!1961474 () Bool)

(declare-fun b_and!350827 () Bool)

(assert (=> start!693732 (= tp!1961474 b_and!350827)))

(declare-fun b!7122982 () Bool)

(declare-fun e!4280239 () Bool)

(declare-fun tp_is_empty!45427 () Bool)

(declare-fun tp!1961476 () Bool)

(assert (=> b!7122982 (= e!4280239 (and tp_is_empty!45427 tp!1961476))))

(declare-fun setIsEmpty!51192 () Bool)

(declare-fun setRes!51193 () Bool)

(assert (=> setIsEmpty!51192 setRes!51193))

(declare-fun b!7122983 () Bool)

(declare-fun res!2906184 () Bool)

(declare-fun e!4280240 () Bool)

(assert (=> b!7122983 (=> (not res!2906184) (not e!4280240))))

(declare-datatypes ((A!637 0))(
  ( (A!638 (val!27963 Int)) )
))
(declare-fun s1!424 () (Set A!637))

(declare-datatypes ((B!3295 0))(
  ( (B!3296 (val!27964 Int)) )
))
(declare-datatypes ((List!69017 0))(
  ( (Nil!68893) (Cons!68893 (h!75341 B!3295) (t!382928 List!69017)) )
))
(declare-fun l2!759 () List!69017)

(declare-fun s2!395 () (Set A!637))

(declare-fun f!607 () Int)

(declare-fun subseq!756 (List!69017 List!69017) Bool)

(declare-fun toList!11120 ((Set B!3295)) List!69017)

(declare-fun map!16424 ((Set A!637) Int) (Set B!3295))

(assert (=> b!7122983 (= res!2906184 (subseq!756 l2!759 (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607))))))

(declare-fun setNonEmpty!51192 () Bool)

(declare-fun setRes!51192 () Bool)

(declare-fun tp!1961475 () Bool)

(declare-fun tp_is_empty!45425 () Bool)

(assert (=> setNonEmpty!51192 (= setRes!51192 (and tp!1961475 tp_is_empty!45425))))

(declare-fun setElem!51192 () A!637)

(declare-fun setRest!51192 () (Set A!637))

(assert (=> setNonEmpty!51192 (= s2!395 (set.union (set.insert setElem!51192 (as set.empty (Set A!637))) setRest!51192))))

(declare-fun b!7122984 () Bool)

(declare-fun size!41439 (List!69017) Int)

(assert (=> b!7122984 (= e!4280240 (< (size!41439 l2!759) 0))))

(declare-fun b!7122985 () Bool)

(declare-fun e!4280238 () Bool)

(declare-fun tp!1961472 () Bool)

(assert (=> b!7122985 (= e!4280238 (and tp_is_empty!45427 tp!1961472))))

(declare-fun setIsEmpty!51193 () Bool)

(assert (=> setIsEmpty!51193 setRes!51192))

(declare-fun res!2906183 () Bool)

(assert (=> start!693732 (=> (not res!2906183) (not e!4280240))))

(declare-fun l1!770 () List!69017)

(assert (=> start!693732 (= res!2906183 (= l1!770 (toList!11120 (set.union (map!16424 s1!424 f!607) (map!16424 s2!395 f!607)))))))

(assert (=> start!693732 e!4280240))

(declare-fun condSetEmpty!51192 () Bool)

(assert (=> start!693732 (= condSetEmpty!51192 (= s1!424 (as set.empty (Set A!637))))))

(assert (=> start!693732 setRes!51193))

(assert (=> start!693732 e!4280239))

(assert (=> start!693732 e!4280238))

(declare-fun condSetEmpty!51193 () Bool)

(assert (=> start!693732 (= condSetEmpty!51193 (= s2!395 (as set.empty (Set A!637))))))

(assert (=> start!693732 setRes!51192))

(assert (=> start!693732 tp!1961474))

(declare-fun setNonEmpty!51193 () Bool)

(declare-fun tp!1961473 () Bool)

(assert (=> setNonEmpty!51193 (= setRes!51193 (and tp!1961473 tp_is_empty!45425))))

(declare-fun setElem!51193 () A!637)

(declare-fun setRest!51193 () (Set A!637))

(assert (=> setNonEmpty!51193 (= s1!424 (set.union (set.insert setElem!51193 (as set.empty (Set A!637))) setRest!51193))))

(assert (= (and start!693732 res!2906183) b!7122983))

(assert (= (and b!7122983 res!2906184) b!7122984))

(assert (= (and start!693732 condSetEmpty!51192) setIsEmpty!51192))

(assert (= (and start!693732 (not condSetEmpty!51192)) setNonEmpty!51193))

(assert (= (and start!693732 (is-Cons!68893 l2!759)) b!7122982))

(assert (= (and start!693732 (is-Cons!68893 l1!770)) b!7122985))

(assert (= (and start!693732 condSetEmpty!51193) setIsEmpty!51193))

(assert (= (and start!693732 (not condSetEmpty!51193)) setNonEmpty!51192))

(declare-fun m!7840292 () Bool)

(assert (=> b!7122983 m!7840292))

(assert (=> b!7122983 m!7840292))

(declare-fun m!7840294 () Bool)

(assert (=> b!7122983 m!7840294))

(assert (=> b!7122983 m!7840294))

(declare-fun m!7840296 () Bool)

(assert (=> b!7122983 m!7840296))

(declare-fun m!7840298 () Bool)

(assert (=> b!7122984 m!7840298))

(declare-fun m!7840300 () Bool)

(assert (=> start!693732 m!7840300))

(declare-fun m!7840302 () Bool)

(assert (=> start!693732 m!7840302))

(declare-fun m!7840304 () Bool)

(assert (=> start!693732 m!7840304))

(push 1)

(assert (not setNonEmpty!51193))

(assert tp_is_empty!45425)

(assert (not b!7122985))

(assert (not b!7122983))

(assert (not start!693732))

(assert b_and!350827)

(assert (not b!7122984))

(assert tp_is_empty!45427)

(assert (not b_next!134521))

(assert (not b!7122982))

(assert (not setNonEmpty!51192))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350827)

(assert (not b_next!134521))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2222816 () Bool)

(declare-fun lt!2562330 () Int)

(assert (=> d!2222816 (>= lt!2562330 0)))

(declare-fun e!4280252 () Int)

(assert (=> d!2222816 (= lt!2562330 e!4280252)))

(declare-fun c!1329084 () Bool)

(assert (=> d!2222816 (= c!1329084 (is-Nil!68893 l2!759))))

(assert (=> d!2222816 (= (size!41439 l2!759) lt!2562330)))

(declare-fun b!7123002 () Bool)

(assert (=> b!7123002 (= e!4280252 0)))

(declare-fun b!7123003 () Bool)

(assert (=> b!7123003 (= e!4280252 (+ 1 (size!41439 (t!382928 l2!759))))))

(assert (= (and d!2222816 c!1329084) b!7123002))

(assert (= (and d!2222816 (not c!1329084)) b!7123003))

(declare-fun m!7840320 () Bool)

(assert (=> b!7123003 m!7840320))

(assert (=> b!7122984 d!2222816))

(declare-fun d!2222818 () Bool)

(declare-fun e!4280255 () Bool)

(assert (=> d!2222818 e!4280255))

(declare-fun res!2906193 () Bool)

(assert (=> d!2222818 (=> (not res!2906193) (not e!4280255))))

(declare-fun lt!2562333 () List!69017)

(declare-fun noDuplicate!2795 (List!69017) Bool)

(assert (=> d!2222818 (= res!2906193 (noDuplicate!2795 lt!2562333))))

(declare-fun choose!55026 ((Set B!3295)) List!69017)

(assert (=> d!2222818 (= lt!2562333 (choose!55026 (set.union (map!16424 s1!424 f!607) (map!16424 s2!395 f!607))))))

(assert (=> d!2222818 (= (toList!11120 (set.union (map!16424 s1!424 f!607) (map!16424 s2!395 f!607))) lt!2562333)))

(declare-fun b!7123006 () Bool)

(declare-fun content!14094 (List!69017) (Set B!3295))

(assert (=> b!7123006 (= e!4280255 (= (content!14094 lt!2562333) (set.union (map!16424 s1!424 f!607) (map!16424 s2!395 f!607))))))

(assert (= (and d!2222818 res!2906193) b!7123006))

(declare-fun m!7840322 () Bool)

(assert (=> d!2222818 m!7840322))

(declare-fun m!7840324 () Bool)

(assert (=> d!2222818 m!7840324))

(declare-fun m!7840326 () Bool)

(assert (=> b!7123006 m!7840326))

(assert (=> start!693732 d!2222818))

(declare-fun d!2222820 () Bool)

(declare-fun choose!55027 ((Set A!637) Int) (Set B!3295))

(assert (=> d!2222820 (= (map!16424 s1!424 f!607) (choose!55027 s1!424 f!607))))

(declare-fun bs!1886119 () Bool)

(assert (= bs!1886119 d!2222820))

(declare-fun m!7840328 () Bool)

(assert (=> bs!1886119 m!7840328))

(assert (=> start!693732 d!2222820))

(declare-fun d!2222822 () Bool)

(assert (=> d!2222822 (= (map!16424 s2!395 f!607) (choose!55027 s2!395 f!607))))

(declare-fun bs!1886120 () Bool)

(assert (= bs!1886120 d!2222822))

(declare-fun m!7840330 () Bool)

(assert (=> bs!1886120 m!7840330))

(assert (=> start!693732 d!2222822))

(declare-fun d!2222824 () Bool)

(declare-fun res!2906203 () Bool)

(declare-fun e!4280264 () Bool)

(assert (=> d!2222824 (=> res!2906203 e!4280264)))

(assert (=> d!2222824 (= res!2906203 (is-Nil!68893 l2!759))))

(assert (=> d!2222824 (= (subseq!756 l2!759 (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607))) e!4280264)))

(declare-fun e!4280265 () Bool)

(declare-fun b!7123017 () Bool)

(assert (=> b!7123017 (= e!4280265 (subseq!756 (t!382928 l2!759) (t!382928 (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607)))))))

(declare-fun b!7123016 () Bool)

(declare-fun e!4280267 () Bool)

(declare-fun e!4280266 () Bool)

(assert (=> b!7123016 (= e!4280267 e!4280266)))

(declare-fun res!2906202 () Bool)

(assert (=> b!7123016 (=> res!2906202 e!4280266)))

(assert (=> b!7123016 (= res!2906202 e!4280265)))

(declare-fun res!2906205 () Bool)

(assert (=> b!7123016 (=> (not res!2906205) (not e!4280265))))

(assert (=> b!7123016 (= res!2906205 (= (h!75341 l2!759) (h!75341 (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607)))))))

(declare-fun b!7123018 () Bool)

(assert (=> b!7123018 (= e!4280266 (subseq!756 l2!759 (t!382928 (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607)))))))

(declare-fun b!7123015 () Bool)

(assert (=> b!7123015 (= e!4280264 e!4280267)))

(declare-fun res!2906204 () Bool)

(assert (=> b!7123015 (=> (not res!2906204) (not e!4280267))))

(assert (=> b!7123015 (= res!2906204 (is-Cons!68893 (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607))))))

(assert (= (and d!2222824 (not res!2906203)) b!7123015))

(assert (= (and b!7123015 res!2906204) b!7123016))

(assert (= (and b!7123016 res!2906205) b!7123017))

(assert (= (and b!7123016 (not res!2906202)) b!7123018))

(declare-fun m!7840332 () Bool)

(assert (=> b!7123017 m!7840332))

(declare-fun m!7840334 () Bool)

(assert (=> b!7123018 m!7840334))

(assert (=> b!7122983 d!2222824))

(declare-fun d!2222826 () Bool)

(declare-fun e!4280268 () Bool)

(assert (=> d!2222826 e!4280268))

(declare-fun res!2906206 () Bool)

(assert (=> d!2222826 (=> (not res!2906206) (not e!4280268))))

(declare-fun lt!2562334 () List!69017)

(assert (=> d!2222826 (= res!2906206 (noDuplicate!2795 lt!2562334))))

(assert (=> d!2222826 (= lt!2562334 (choose!55026 (map!16424 (set.union s1!424 s2!395) f!607)))))

(assert (=> d!2222826 (= (toList!11120 (map!16424 (set.union s1!424 s2!395) f!607)) lt!2562334)))

(declare-fun b!7123019 () Bool)

(assert (=> b!7123019 (= e!4280268 (= (content!14094 lt!2562334) (map!16424 (set.union s1!424 s2!395) f!607)))))

(assert (= (and d!2222826 res!2906206) b!7123019))

(declare-fun m!7840336 () Bool)

(assert (=> d!2222826 m!7840336))

(assert (=> d!2222826 m!7840292))

(declare-fun m!7840338 () Bool)

(assert (=> d!2222826 m!7840338))

(declare-fun m!7840340 () Bool)

(assert (=> b!7123019 m!7840340))

(assert (=> b!7122983 d!2222826))

(declare-fun d!2222828 () Bool)

(assert (=> d!2222828 (= (map!16424 (set.union s1!424 s2!395) f!607) (choose!55027 (set.union s1!424 s2!395) f!607))))

(declare-fun bs!1886121 () Bool)

(assert (= bs!1886121 d!2222828))

(declare-fun m!7840342 () Bool)

(assert (=> bs!1886121 m!7840342))

(assert (=> b!7122983 d!2222828))

(declare-fun b!7123024 () Bool)

(declare-fun e!4280271 () Bool)

(declare-fun tp!1961494 () Bool)

(assert (=> b!7123024 (= e!4280271 (and tp_is_empty!45427 tp!1961494))))

(assert (=> b!7122985 (= tp!1961472 e!4280271)))

(assert (= (and b!7122985 (is-Cons!68893 (t!382928 l1!770))) b!7123024))

(declare-fun b!7123025 () Bool)

(declare-fun e!4280272 () Bool)

(declare-fun tp!1961495 () Bool)

(assert (=> b!7123025 (= e!4280272 (and tp_is_empty!45427 tp!1961495))))

(assert (=> b!7122982 (= tp!1961476 e!4280272)))

(assert (= (and b!7122982 (is-Cons!68893 (t!382928 l2!759))) b!7123025))

(declare-fun condSetEmpty!51202 () Bool)

(assert (=> setNonEmpty!51193 (= condSetEmpty!51202 (= setRest!51193 (as set.empty (Set A!637))))))

(declare-fun setRes!51202 () Bool)

(assert (=> setNonEmpty!51193 (= tp!1961473 setRes!51202)))

(declare-fun setIsEmpty!51202 () Bool)

(assert (=> setIsEmpty!51202 setRes!51202))

(declare-fun setNonEmpty!51202 () Bool)

(declare-fun tp!1961498 () Bool)

(assert (=> setNonEmpty!51202 (= setRes!51202 (and tp!1961498 tp_is_empty!45425))))

(declare-fun setElem!51202 () A!637)

(declare-fun setRest!51202 () (Set A!637))

(assert (=> setNonEmpty!51202 (= setRest!51193 (set.union (set.insert setElem!51202 (as set.empty (Set A!637))) setRest!51202))))

(assert (= (and setNonEmpty!51193 condSetEmpty!51202) setIsEmpty!51202))

(assert (= (and setNonEmpty!51193 (not condSetEmpty!51202)) setNonEmpty!51202))

(declare-fun condSetEmpty!51203 () Bool)

(assert (=> setNonEmpty!51192 (= condSetEmpty!51203 (= setRest!51192 (as set.empty (Set A!637))))))

(declare-fun setRes!51203 () Bool)

(assert (=> setNonEmpty!51192 (= tp!1961475 setRes!51203)))

(declare-fun setIsEmpty!51203 () Bool)

(assert (=> setIsEmpty!51203 setRes!51203))

(declare-fun setNonEmpty!51203 () Bool)

(declare-fun tp!1961499 () Bool)

(assert (=> setNonEmpty!51203 (= setRes!51203 (and tp!1961499 tp_is_empty!45425))))

(declare-fun setElem!51203 () A!637)

(declare-fun setRest!51203 () (Set A!637))

(assert (=> setNonEmpty!51203 (= setRest!51192 (set.union (set.insert setElem!51203 (as set.empty (Set A!637))) setRest!51203))))

(assert (= (and setNonEmpty!51192 condSetEmpty!51203) setIsEmpty!51203))

(assert (= (and setNonEmpty!51192 (not condSetEmpty!51203)) setNonEmpty!51203))

(push 1)

(assert (not d!2222828))

(assert tp_is_empty!45425)

(assert (not b!7123017))

(assert (not setNonEmpty!51202))

(assert b_and!350827)

(assert (not d!2222818))

(assert (not setNonEmpty!51203))

(assert (not b!7123019))

(assert (not b!7123025))

(assert (not b!7123024))

(assert (not b_next!134521))

(assert (not d!2222822))

(assert (not b!7123006))

(assert (not b!7123018))

(assert (not d!2222826))

(assert (not d!2222820))

(assert tp_is_empty!45427)

(assert (not b!7123003))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350827)

(assert (not b_next!134521))

(check-sat)

(pop 1)

