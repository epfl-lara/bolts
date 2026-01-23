; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713952 () Bool)

(assert start!713952)

(declare-fun b_free!134123 () Bool)

(declare-fun b_next!134913 () Bool)

(assert (=> start!713952 (= b_free!134123 (not b_next!134913))))

(declare-fun tp!2078780 () Bool)

(declare-fun b_and!351531 () Bool)

(assert (=> start!713952 (= tp!2078780 b_and!351531)))

(declare-fun b!7319854 () Bool)

(assert (=> b!7319854 true))

(declare-fun b!7319850 () Bool)

(declare-fun res!2958189 () Bool)

(declare-fun e!4382551 () Bool)

(assert (=> b!7319850 (=> (not res!2958189) (not e!4382551))))

(declare-datatypes ((B!3671 0))(
  ( (B!3672 (val!29289 Int)) )
))
(declare-datatypes ((List!71399 0))(
  ( (Nil!71275) (Cons!71275 (h!77723 B!3671) (t!385638 List!71399)) )
))
(declare-fun l1!805 () List!71399)

(assert (=> b!7319850 (= res!2958189 (not (is-Cons!71275 l1!805)))))

(declare-fun b!7319851 () Bool)

(declare-fun res!2958190 () Bool)

(assert (=> b!7319851 (=> (not res!2958190) (not e!4382551))))

(declare-datatypes ((A!969 0))(
  ( (A!970 (val!29290 Int)) )
))
(declare-fun s2!417 () (Set A!969))

(declare-fun s1!446 () (Set A!969))

(declare-fun l2!794 () List!71399)

(declare-fun f!760 () Int)

(declare-fun toList!11686 ((Set B!3671)) List!71399)

(declare-fun flatMap!3104 ((Set A!969) Int) (Set B!3671))

(assert (=> b!7319851 (= res!2958190 (= l2!794 (toList!11686 (flatMap!3104 (set.union s1!446 s2!417) f!760))))))

(declare-fun setNonEmpty!55239 () Bool)

(declare-fun setRes!55240 () Bool)

(declare-fun tp!2078782 () Bool)

(declare-fun tp_is_empty!47829 () Bool)

(assert (=> setNonEmpty!55239 (= setRes!55240 (and tp!2078782 tp_is_empty!47829))))

(declare-fun setElem!55239 () A!969)

(declare-fun setRest!55239 () (Set A!969))

(assert (=> setNonEmpty!55239 (= s1!446 (set.union (set.insert setElem!55239 (as set.empty (Set A!969))) setRest!55239))))

(declare-fun setNonEmpty!55240 () Bool)

(declare-fun setRes!55239 () Bool)

(declare-fun tp!2078783 () Bool)

(assert (=> setNonEmpty!55240 (= setRes!55239 (and tp!2078783 tp_is_empty!47829))))

(declare-fun setElem!55240 () A!969)

(declare-fun setRest!55240 () (Set A!969))

(assert (=> setNonEmpty!55240 (= s2!417 (set.union (set.insert setElem!55240 (as set.empty (Set A!969))) setRest!55240))))

(declare-fun b!7319852 () Bool)

(declare-fun e!4382550 () Bool)

(declare-fun tp_is_empty!47831 () Bool)

(declare-fun tp!2078779 () Bool)

(assert (=> b!7319852 (= e!4382550 (and tp_is_empty!47831 tp!2078779))))

(declare-fun b!7319853 () Bool)

(declare-fun e!4382549 () Bool)

(declare-fun tp!2078781 () Bool)

(assert (=> b!7319853 (= e!4382549 (and tp_is_empty!47831 tp!2078781))))

(declare-fun setIsEmpty!55239 () Bool)

(assert (=> setIsEmpty!55239 setRes!55240))

(declare-fun setIsEmpty!55240 () Bool)

(assert (=> setIsEmpty!55240 setRes!55239))

(declare-fun lambda!452949 () Int)

(declare-fun forall!17811 (List!71399 Int) Bool)

(assert (=> b!7319854 (= e!4382551 (not (forall!17811 l1!805 lambda!452949)))))

(declare-fun res!2958188 () Bool)

(assert (=> start!713952 (=> (not res!2958188) (not e!4382551))))

(declare-fun subseq!896 (List!71399 List!71399) Bool)

(assert (=> start!713952 (= res!2958188 (subseq!896 l1!805 (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760)))))))

(assert (=> start!713952 e!4382551))

(declare-fun condSetEmpty!55239 () Bool)

(assert (=> start!713952 (= condSetEmpty!55239 (= s2!417 (as set.empty (Set A!969))))))

(assert (=> start!713952 setRes!55239))

(declare-fun condSetEmpty!55240 () Bool)

(assert (=> start!713952 (= condSetEmpty!55240 (= s1!446 (as set.empty (Set A!969))))))

(assert (=> start!713952 setRes!55240))

(assert (=> start!713952 tp!2078780))

(assert (=> start!713952 e!4382549))

(assert (=> start!713952 e!4382550))

(assert (= (and start!713952 res!2958188) b!7319851))

(assert (= (and b!7319851 res!2958190) b!7319850))

(assert (= (and b!7319850 res!2958189) b!7319854))

(assert (= (and start!713952 condSetEmpty!55239) setIsEmpty!55240))

(assert (= (and start!713952 (not condSetEmpty!55239)) setNonEmpty!55240))

(assert (= (and start!713952 condSetEmpty!55240) setIsEmpty!55239))

(assert (= (and start!713952 (not condSetEmpty!55240)) setNonEmpty!55239))

(assert (= (and start!713952 (is-Cons!71275 l2!794)) b!7319853))

(assert (= (and start!713952 (is-Cons!71275 l1!805)) b!7319852))

(declare-fun m!7984726 () Bool)

(assert (=> b!7319851 m!7984726))

(assert (=> b!7319851 m!7984726))

(declare-fun m!7984728 () Bool)

(assert (=> b!7319851 m!7984728))

(declare-fun m!7984730 () Bool)

(assert (=> b!7319854 m!7984730))

(declare-fun m!7984732 () Bool)

(assert (=> start!713952 m!7984732))

(declare-fun m!7984734 () Bool)

(assert (=> start!713952 m!7984734))

(declare-fun m!7984736 () Bool)

(assert (=> start!713952 m!7984736))

(assert (=> start!713952 m!7984736))

(declare-fun m!7984738 () Bool)

(assert (=> start!713952 m!7984738))

(push 1)

(assert (not b!7319853))

(assert (not setNonEmpty!55240))

(assert (not b!7319852))

(assert b_and!351531)

(assert tp_is_empty!47829)

(assert (not b!7319854))

(assert (not b_next!134913))

(assert tp_is_empty!47831)

(assert (not setNonEmpty!55239))

(assert (not b!7319851))

(assert (not start!713952))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351531)

(assert (not b_next!134913))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273164 () Bool)

(declare-fun e!4382563 () Bool)

(assert (=> d!2273164 e!4382563))

(declare-fun res!2958202 () Bool)

(assert (=> d!2273164 (=> (not res!2958202) (not e!4382563))))

(declare-fun lt!2603636 () List!71399)

(declare-fun noDuplicate!3084 (List!71399) Bool)

(assert (=> d!2273164 (= res!2958202 (noDuplicate!3084 lt!2603636))))

(declare-fun choose!56848 ((Set B!3671)) List!71399)

(assert (=> d!2273164 (= lt!2603636 (choose!56848 (flatMap!3104 (set.union s1!446 s2!417) f!760)))))

(assert (=> d!2273164 (= (toList!11686 (flatMap!3104 (set.union s1!446 s2!417) f!760)) lt!2603636)))

(declare-fun b!7319876 () Bool)

(declare-fun content!14903 (List!71399) (Set B!3671))

(assert (=> b!7319876 (= e!4382563 (= (content!14903 lt!2603636) (flatMap!3104 (set.union s1!446 s2!417) f!760)))))

(assert (= (and d!2273164 res!2958202) b!7319876))

(declare-fun m!7984754 () Bool)

(assert (=> d!2273164 m!7984754))

(assert (=> d!2273164 m!7984726))

(declare-fun m!7984756 () Bool)

(assert (=> d!2273164 m!7984756))

(declare-fun m!7984758 () Bool)

(assert (=> b!7319876 m!7984758))

(assert (=> b!7319851 d!2273164))

(declare-fun d!2273166 () Bool)

(declare-fun choose!56849 ((Set A!969) Int) (Set B!3671))

(assert (=> d!2273166 (= (flatMap!3104 (set.union s1!446 s2!417) f!760) (choose!56849 (set.union s1!446 s2!417) f!760))))

(declare-fun bs!1915753 () Bool)

(assert (= bs!1915753 d!2273166))

(declare-fun m!7984760 () Bool)

(assert (=> bs!1915753 m!7984760))

(assert (=> b!7319851 d!2273166))

(declare-fun b!7319891 () Bool)

(declare-fun e!4382576 () Bool)

(assert (=> b!7319891 (= e!4382576 (subseq!896 (t!385638 l1!805) (t!385638 (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760))))))))

(declare-fun e!4382578 () Bool)

(declare-fun b!7319892 () Bool)

(assert (=> b!7319892 (= e!4382578 (subseq!896 l1!805 (t!385638 (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760))))))))

(declare-fun b!7319890 () Bool)

(declare-fun e!4382577 () Bool)

(assert (=> b!7319890 (= e!4382577 e!4382578)))

(declare-fun res!2958215 () Bool)

(assert (=> b!7319890 (=> res!2958215 e!4382578)))

(assert (=> b!7319890 (= res!2958215 e!4382576)))

(declare-fun res!2958217 () Bool)

(assert (=> b!7319890 (=> (not res!2958217) (not e!4382576))))

(assert (=> b!7319890 (= res!2958217 (= (h!77723 l1!805) (h!77723 (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760))))))))

(declare-fun d!2273168 () Bool)

(declare-fun res!2958218 () Bool)

(declare-fun e!4382579 () Bool)

(assert (=> d!2273168 (=> res!2958218 e!4382579)))

(assert (=> d!2273168 (= res!2958218 (is-Nil!71275 l1!805))))

(assert (=> d!2273168 (= (subseq!896 l1!805 (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760)))) e!4382579)))

(declare-fun b!7319889 () Bool)

(assert (=> b!7319889 (= e!4382579 e!4382577)))

(declare-fun res!2958216 () Bool)

(assert (=> b!7319889 (=> (not res!2958216) (not e!4382577))))

(assert (=> b!7319889 (= res!2958216 (is-Cons!71275 (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760)))))))

(assert (= (and d!2273168 (not res!2958218)) b!7319889))

(assert (= (and b!7319889 res!2958216) b!7319890))

(assert (= (and b!7319890 res!2958217) b!7319891))

(assert (= (and b!7319890 (not res!2958215)) b!7319892))

(declare-fun m!7984762 () Bool)

(assert (=> b!7319891 m!7984762))

(declare-fun m!7984764 () Bool)

(assert (=> b!7319892 m!7984764))

(assert (=> start!713952 d!2273168))

(declare-fun d!2273172 () Bool)

(declare-fun e!4382580 () Bool)

(assert (=> d!2273172 e!4382580))

(declare-fun res!2958219 () Bool)

(assert (=> d!2273172 (=> (not res!2958219) (not e!4382580))))

(declare-fun lt!2603637 () List!71399)

(assert (=> d!2273172 (= res!2958219 (noDuplicate!3084 lt!2603637))))

(assert (=> d!2273172 (= lt!2603637 (choose!56848 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760))))))

(assert (=> d!2273172 (= (toList!11686 (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760))) lt!2603637)))

(declare-fun b!7319893 () Bool)

(assert (=> b!7319893 (= e!4382580 (= (content!14903 lt!2603637) (set.union (flatMap!3104 s1!446 f!760) (flatMap!3104 s2!417 f!760))))))

(assert (= (and d!2273172 res!2958219) b!7319893))

(declare-fun m!7984766 () Bool)

(assert (=> d!2273172 m!7984766))

(declare-fun m!7984768 () Bool)

(assert (=> d!2273172 m!7984768))

(declare-fun m!7984770 () Bool)

(assert (=> b!7319893 m!7984770))

(assert (=> start!713952 d!2273172))

(declare-fun d!2273174 () Bool)

(assert (=> d!2273174 (= (flatMap!3104 s1!446 f!760) (choose!56849 s1!446 f!760))))

(declare-fun bs!1915754 () Bool)

(assert (= bs!1915754 d!2273174))

(declare-fun m!7984772 () Bool)

(assert (=> bs!1915754 m!7984772))

(assert (=> start!713952 d!2273174))

(declare-fun d!2273176 () Bool)

(assert (=> d!2273176 (= (flatMap!3104 s2!417 f!760) (choose!56849 s2!417 f!760))))

(declare-fun bs!1915755 () Bool)

(assert (= bs!1915755 d!2273176))

(declare-fun m!7984774 () Bool)

(assert (=> bs!1915755 m!7984774))

(assert (=> start!713952 d!2273176))

(declare-fun d!2273178 () Bool)

(declare-fun res!2958226 () Bool)

(declare-fun e!4382587 () Bool)

(assert (=> d!2273178 (=> res!2958226 e!4382587)))

(assert (=> d!2273178 (= res!2958226 (is-Nil!71275 l1!805))))

(assert (=> d!2273178 (= (forall!17811 l1!805 lambda!452949) e!4382587)))

(declare-fun b!7319900 () Bool)

(declare-fun e!4382588 () Bool)

(assert (=> b!7319900 (= e!4382587 e!4382588)))

(declare-fun res!2958227 () Bool)

(assert (=> b!7319900 (=> (not res!2958227) (not e!4382588))))

(declare-fun dynLambda!29184 (Int B!3671) Bool)

(assert (=> b!7319900 (= res!2958227 (dynLambda!29184 lambda!452949 (h!77723 l1!805)))))

(declare-fun b!7319901 () Bool)

(assert (=> b!7319901 (= e!4382588 (forall!17811 (t!385638 l1!805) lambda!452949))))

(assert (= (and d!2273178 (not res!2958226)) b!7319900))

(assert (= (and b!7319900 res!2958227) b!7319901))

(declare-fun b_lambda!282809 () Bool)

(assert (=> (not b_lambda!282809) (not b!7319900)))

(declare-fun m!7984780 () Bool)

(assert (=> b!7319900 m!7984780))

(declare-fun m!7984782 () Bool)

(assert (=> b!7319901 m!7984782))

(assert (=> b!7319854 d!2273178))

(declare-fun condSetEmpty!55249 () Bool)

(assert (=> setNonEmpty!55239 (= condSetEmpty!55249 (= setRest!55239 (as set.empty (Set A!969))))))

(declare-fun setRes!55249 () Bool)

(assert (=> setNonEmpty!55239 (= tp!2078782 setRes!55249)))

(declare-fun setIsEmpty!55249 () Bool)

(assert (=> setIsEmpty!55249 setRes!55249))

(declare-fun setNonEmpty!55249 () Bool)

(declare-fun tp!2078801 () Bool)

(assert (=> setNonEmpty!55249 (= setRes!55249 (and tp!2078801 tp_is_empty!47829))))

(declare-fun setElem!55249 () A!969)

(declare-fun setRest!55249 () (Set A!969))

(assert (=> setNonEmpty!55249 (= setRest!55239 (set.union (set.insert setElem!55249 (as set.empty (Set A!969))) setRest!55249))))

(assert (= (and setNonEmpty!55239 condSetEmpty!55249) setIsEmpty!55249))

(assert (= (and setNonEmpty!55239 (not condSetEmpty!55249)) setNonEmpty!55249))

(declare-fun condSetEmpty!55250 () Bool)

(assert (=> setNonEmpty!55240 (= condSetEmpty!55250 (= setRest!55240 (as set.empty (Set A!969))))))

(declare-fun setRes!55250 () Bool)

(assert (=> setNonEmpty!55240 (= tp!2078783 setRes!55250)))

(declare-fun setIsEmpty!55250 () Bool)

(assert (=> setIsEmpty!55250 setRes!55250))

(declare-fun setNonEmpty!55250 () Bool)

(declare-fun tp!2078802 () Bool)

(assert (=> setNonEmpty!55250 (= setRes!55250 (and tp!2078802 tp_is_empty!47829))))

(declare-fun setElem!55250 () A!969)

(declare-fun setRest!55250 () (Set A!969))

(assert (=> setNonEmpty!55250 (= setRest!55240 (set.union (set.insert setElem!55250 (as set.empty (Set A!969))) setRest!55250))))

(assert (= (and setNonEmpty!55240 condSetEmpty!55250) setIsEmpty!55250))

(assert (= (and setNonEmpty!55240 (not condSetEmpty!55250)) setNonEmpty!55250))

(declare-fun b!7319908 () Bool)

(declare-fun e!4382591 () Bool)

(declare-fun tp!2078805 () Bool)

(assert (=> b!7319908 (= e!4382591 (and tp_is_empty!47831 tp!2078805))))

(assert (=> b!7319852 (= tp!2078779 e!4382591)))

(assert (= (and b!7319852 (is-Cons!71275 (t!385638 l1!805))) b!7319908))

(declare-fun b!7319909 () Bool)

(declare-fun e!4382592 () Bool)

(declare-fun tp!2078806 () Bool)

(assert (=> b!7319909 (= e!4382592 (and tp_is_empty!47831 tp!2078806))))

(assert (=> b!7319853 (= tp!2078781 e!4382592)))

(assert (= (and b!7319853 (is-Cons!71275 (t!385638 l2!794))) b!7319909))

(declare-fun b_lambda!282811 () Bool)

(assert (= b_lambda!282809 (or b!7319854 b_lambda!282811)))

(declare-fun bs!1915756 () Bool)

(declare-fun d!2273182 () Bool)

(assert (= bs!1915756 (and d!2273182 b!7319854)))

(declare-fun contains!20813 (List!71399 B!3671) Bool)

(assert (=> bs!1915756 (= (dynLambda!29184 lambda!452949 (h!77723 l1!805)) (contains!20813 l2!794 (h!77723 l1!805)))))

(declare-fun m!7984784 () Bool)

(assert (=> bs!1915756 m!7984784))

(assert (=> b!7319900 d!2273182))

(push 1)

(assert (not b!7319901))

(assert (not b!7319891))

(assert (not b!7319892))

(assert (not setNonEmpty!55250))

(assert b_and!351531)

(assert (not d!2273176))

(assert (not b!7319893))

(assert (not b!7319909))

(assert (not d!2273174))

(assert (not setNonEmpty!55249))

(assert tp_is_empty!47829)

(assert (not b!7319908))

(assert (not d!2273166))

(assert (not b_lambda!282811))

(assert (not bs!1915756))

(assert (not b!7319876))

(assert (not b_next!134913))

(assert (not d!2273172))

(assert tp_is_empty!47831)

(assert (not d!2273164))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351531)

(assert (not b_next!134913))

(check-sat)

(pop 1)

