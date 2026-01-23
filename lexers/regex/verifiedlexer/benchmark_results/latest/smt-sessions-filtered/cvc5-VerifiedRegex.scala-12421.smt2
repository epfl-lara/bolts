; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693988 () Bool)

(assert start!693988)

(declare-fun b_free!133787 () Bool)

(declare-fun b_next!134577 () Bool)

(assert (=> start!693988 (= b_free!133787 (not b_next!134577))))

(declare-fun tp!1961954 () Bool)

(declare-fun b_and!350899 () Bool)

(assert (=> start!693988 (= tp!1961954 b_and!350899)))

(declare-fun b!7124063 () Bool)

(declare-fun e!4281045 () Bool)

(declare-fun e!4281044 () Bool)

(assert (=> b!7124063 (= e!4281045 e!4281044)))

(declare-fun res!2906837 () Bool)

(assert (=> b!7124063 (=> (not res!2906837) (not e!4281044))))

(declare-datatypes ((A!693 0))(
  ( (A!694 (val!28019 Int)) )
))
(declare-fun lt!2562686 () A!693)

(declare-fun lt!2562685 () (Set A!693))

(assert (=> b!7124063 (= res!2906837 (set.member lt!2562686 lt!2562685))))

(declare-fun s1!413 () (Set A!693))

(declare-fun s2!384 () (Set A!693))

(assert (=> b!7124063 (= lt!2562685 (set.union s1!413 s2!384))))

(declare-fun res!2906836 () Bool)

(declare-fun e!4281043 () Bool)

(assert (=> start!693988 (=> (not res!2906836) (not e!4281043))))

(declare-fun f!518 () Int)

(declare-datatypes ((B!3351 0))(
  ( (B!3352 (val!28020 Int)) )
))
(declare-fun b!25321 () B!3351)

(declare-fun map!16466 ((Set A!693) Int) (Set B!3351))

(assert (=> start!693988 (= res!2906836 (set.member b!25321 (map!16466 s1!413 f!518)))))

(assert (=> start!693988 e!4281043))

(declare-fun tp_is_empty!45537 () Bool)

(assert (=> start!693988 tp_is_empty!45537))

(declare-fun condSetEmpty!51445 () Bool)

(assert (=> start!693988 (= condSetEmpty!51445 (= s1!413 (as set.empty (Set A!693))))))

(declare-fun setRes!51444 () Bool)

(assert (=> start!693988 setRes!51444))

(assert (=> start!693988 tp!1961954))

(declare-fun condSetEmpty!51444 () Bool)

(assert (=> start!693988 (= condSetEmpty!51444 (= s2!384 (as set.empty (Set A!693))))))

(declare-fun setRes!51445 () Bool)

(assert (=> start!693988 setRes!51445))

(declare-fun setIsEmpty!51444 () Bool)

(assert (=> setIsEmpty!51444 setRes!51444))

(declare-fun b!7124064 () Bool)

(assert (=> b!7124064 (= e!4281043 e!4281045)))

(declare-fun res!2906838 () Bool)

(assert (=> b!7124064 (=> (not res!2906838) (not e!4281045))))

(assert (=> b!7124064 (= res!2906838 (set.member lt!2562686 s1!413))))

(declare-fun mapPost2!575 ((Set A!693) Int B!3351) A!693)

(assert (=> b!7124064 (= lt!2562686 (mapPost2!575 s1!413 f!518 b!25321))))

(declare-fun setIsEmpty!51445 () Bool)

(assert (=> setIsEmpty!51445 setRes!51445))

(declare-fun b!7124065 () Bool)

(declare-fun dynLambda!28093 (Int A!693) B!3351)

(assert (=> b!7124065 (= e!4281044 (not (set.member (dynLambda!28093 f!518 lt!2562686) (map!16466 lt!2562685 f!518))))))

(declare-datatypes ((Unit!162801 0))(
  ( (Unit!162802) )
))
(declare-fun empty!2819 () Unit!162801)

(declare-fun mapPost1!9 ((Set A!693) Int A!693) Unit!162801)

(assert (=> b!7124065 (= (mapPost1!9 lt!2562685 f!518 lt!2562686) empty!2819)))

(assert (=> b!7124065 true))

(declare-fun setNonEmpty!51444 () Bool)

(declare-fun tp!1961952 () Bool)

(declare-fun tp_is_empty!45539 () Bool)

(assert (=> setNonEmpty!51444 (= setRes!51444 (and tp!1961952 tp_is_empty!45539))))

(declare-fun setElem!51444 () A!693)

(declare-fun setRest!51444 () (Set A!693))

(assert (=> setNonEmpty!51444 (= s1!413 (set.union (set.insert setElem!51444 (as set.empty (Set A!693))) setRest!51444))))

(declare-fun setNonEmpty!51445 () Bool)

(declare-fun tp!1961953 () Bool)

(assert (=> setNonEmpty!51445 (= setRes!51445 (and tp!1961953 tp_is_empty!45539))))

(declare-fun setElem!51445 () A!693)

(declare-fun setRest!51445 () (Set A!693))

(assert (=> setNonEmpty!51445 (= s2!384 (set.union (set.insert setElem!51445 (as set.empty (Set A!693))) setRest!51445))))

(assert (= (and start!693988 res!2906836) b!7124064))

(assert (= (and b!7124064 res!2906838) b!7124063))

(assert (= (and b!7124063 res!2906837) b!7124065))

(assert (= (and start!693988 condSetEmpty!51445) setIsEmpty!51444))

(assert (= (and start!693988 (not condSetEmpty!51445)) setNonEmpty!51444))

(assert (= (and start!693988 condSetEmpty!51444) setIsEmpty!51445))

(assert (= (and start!693988 (not condSetEmpty!51444)) setNonEmpty!51445))

(declare-fun b_lambda!271809 () Bool)

(assert (=> (not b_lambda!271809) (not b!7124065)))

(declare-fun t!382963 () Bool)

(declare-fun tb!262013 () Bool)

(assert (=> (and start!693988 (= f!518 f!518) t!382963) tb!262013))

(declare-fun result!349316 () Bool)

(assert (=> tb!262013 (= result!349316 tp_is_empty!45537)))

(assert (=> b!7124065 t!382963))

(declare-fun b_and!350901 () Bool)

(assert (= b_and!350899 (and (=> t!382963 result!349316) b_and!350901)))

(declare-fun m!7841476 () Bool)

(assert (=> b!7124063 m!7841476))

(declare-fun m!7841478 () Bool)

(assert (=> start!693988 m!7841478))

(declare-fun m!7841480 () Bool)

(assert (=> start!693988 m!7841480))

(declare-fun m!7841482 () Bool)

(assert (=> b!7124064 m!7841482))

(declare-fun m!7841484 () Bool)

(assert (=> b!7124064 m!7841484))

(declare-fun m!7841486 () Bool)

(assert (=> b!7124065 m!7841486))

(declare-fun m!7841488 () Bool)

(assert (=> b!7124065 m!7841488))

(assert (=> b!7124065 m!7841486))

(declare-fun m!7841490 () Bool)

(assert (=> b!7124065 m!7841490))

(declare-fun m!7841492 () Bool)

(assert (=> b!7124065 m!7841492))

(push 1)

(assert tp_is_empty!45537)

(assert (not b_next!134577))

(assert (not setNonEmpty!51444))

(assert (not start!693988))

(assert tp_is_empty!45539)

(assert (not b!7124064))

(assert b_and!350901)

(assert (not b_lambda!271809))

(assert (not b!7124065))

(assert (not setNonEmpty!51445))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350901)

(assert (not b_next!134577))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!271813 () Bool)

(assert (= b_lambda!271809 (or (and start!693988 b_free!133787) b_lambda!271813)))

(push 1)

(assert tp_is_empty!45537)

(assert (not b_next!134577))

(assert (not setNonEmpty!51444))

(assert (not b_lambda!271813))

(assert (not start!693988))

(assert tp_is_empty!45539)

(assert (not b!7124064))

(assert b_and!350901)

(assert (not b!7124065))

(assert (not setNonEmpty!51445))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350901)

(assert (not b_next!134577))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223240 () Bool)

(declare-fun e!4281057 () Bool)

(assert (=> d!2223240 e!4281057))

(declare-fun res!2906850 () Bool)

(assert (=> d!2223240 (=> (not res!2906850) (not e!4281057))))

(declare-fun lt!2562695 () A!693)

(assert (=> d!2223240 (= res!2906850 (= b!25321 (dynLambda!28093 f!518 lt!2562695)))))

(declare-fun choose!55064 ((Set A!693) Int B!3351) A!693)

(assert (=> d!2223240 (= lt!2562695 (choose!55064 s1!413 f!518 b!25321))))

(assert (=> d!2223240 (set.member b!25321 (map!16466 s1!413 f!518))))

(assert (=> d!2223240 (= (mapPost2!575 s1!413 f!518 b!25321) lt!2562695)))

(declare-fun b!7124082 () Bool)

(assert (=> b!7124082 (= e!4281057 (set.member lt!2562695 s1!413))))

(assert (= (and d!2223240 res!2906850) b!7124082))

(declare-fun b_lambda!271815 () Bool)

(assert (=> (not b_lambda!271815) (not d!2223240)))

(declare-fun t!382967 () Bool)

(declare-fun tb!262017 () Bool)

(assert (=> (and start!693988 (= f!518 f!518) t!382967) tb!262017))

(declare-fun result!349324 () Bool)

(assert (=> tb!262017 (= result!349324 tp_is_empty!45537)))

(assert (=> d!2223240 t!382967))

(declare-fun b_and!350907 () Bool)

(assert (= b_and!350901 (and (=> t!382967 result!349324) b_and!350907)))

(declare-fun m!7841512 () Bool)

(assert (=> d!2223240 m!7841512))

(declare-fun m!7841514 () Bool)

(assert (=> d!2223240 m!7841514))

(assert (=> d!2223240 m!7841478))

(assert (=> d!2223240 m!7841480))

(declare-fun m!7841516 () Bool)

(assert (=> b!7124082 m!7841516))

(assert (=> b!7124064 d!2223240))

(declare-fun d!2223242 () Bool)

(declare-fun choose!55065 ((Set A!693) Int) (Set B!3351))

(assert (=> d!2223242 (= (map!16466 s1!413 f!518) (choose!55065 s1!413 f!518))))

(declare-fun bs!1886219 () Bool)

(assert (= bs!1886219 d!2223242))

(declare-fun m!7841518 () Bool)

(assert (=> bs!1886219 m!7841518))

(assert (=> start!693988 d!2223242))

(declare-fun d!2223244 () Bool)

(assert (=> d!2223244 (= (map!16466 lt!2562685 f!518) (choose!55065 lt!2562685 f!518))))

(declare-fun bs!1886220 () Bool)

(assert (= bs!1886220 d!2223244))

(declare-fun m!7841520 () Bool)

(assert (=> bs!1886220 m!7841520))

(assert (=> b!7124065 d!2223244))

(declare-fun d!2223246 () Bool)

(declare-fun e!4281060 () Bool)

(assert (=> d!2223246 e!4281060))

(declare-fun res!2906853 () Bool)

(assert (=> d!2223246 (=> res!2906853 e!4281060)))

(assert (=> d!2223246 (= res!2906853 (not (set.member lt!2562686 lt!2562685)))))

(declare-fun lt!2562698 () Unit!162801)

(declare-fun choose!55066 ((Set A!693) Int A!693) Unit!162801)

(assert (=> d!2223246 (= lt!2562698 (choose!55066 lt!2562685 f!518 lt!2562686))))

(assert (=> d!2223246 (= (mapPost1!9 lt!2562685 f!518 lt!2562686) lt!2562698)))

(declare-fun b!7124085 () Bool)

(assert (=> b!7124085 (= e!4281060 (set.member (dynLambda!28093 f!518 lt!2562686) (map!16466 lt!2562685 f!518)))))

(assert (= (and d!2223246 (not res!2906853)) b!7124085))

(declare-fun b_lambda!271817 () Bool)

(assert (=> (not b_lambda!271817) (not b!7124085)))

(assert (=> b!7124085 t!382963))

(declare-fun b_and!350909 () Bool)

(assert (= b_and!350907 (and (=> t!382963 result!349316) b_and!350909)))

(assert (=> d!2223246 m!7841476))

(declare-fun m!7841522 () Bool)

(assert (=> d!2223246 m!7841522))

(assert (=> b!7124085 m!7841486))

(assert (=> b!7124085 m!7841488))

(assert (=> b!7124085 m!7841486))

(assert (=> b!7124085 m!7841490))

(assert (=> b!7124065 d!2223246))

(declare-fun condSetEmpty!51454 () Bool)

(assert (=> setNonEmpty!51445 (= condSetEmpty!51454 (= setRest!51445 (as set.empty (Set A!693))))))

(declare-fun setRes!51454 () Bool)

(assert (=> setNonEmpty!51445 (= tp!1961953 setRes!51454)))

(declare-fun setIsEmpty!51454 () Bool)

(assert (=> setIsEmpty!51454 setRes!51454))

(declare-fun setNonEmpty!51454 () Bool)

(declare-fun tp!1961966 () Bool)

(assert (=> setNonEmpty!51454 (= setRes!51454 (and tp!1961966 tp_is_empty!45539))))

(declare-fun setElem!51454 () A!693)

(declare-fun setRest!51454 () (Set A!693))

(assert (=> setNonEmpty!51454 (= setRest!51445 (set.union (set.insert setElem!51454 (as set.empty (Set A!693))) setRest!51454))))

(assert (= (and setNonEmpty!51445 condSetEmpty!51454) setIsEmpty!51454))

(assert (= (and setNonEmpty!51445 (not condSetEmpty!51454)) setNonEmpty!51454))

(declare-fun condSetEmpty!51455 () Bool)

(assert (=> setNonEmpty!51444 (= condSetEmpty!51455 (= setRest!51444 (as set.empty (Set A!693))))))

(declare-fun setRes!51455 () Bool)

(assert (=> setNonEmpty!51444 (= tp!1961952 setRes!51455)))

(declare-fun setIsEmpty!51455 () Bool)

(assert (=> setIsEmpty!51455 setRes!51455))

(declare-fun setNonEmpty!51455 () Bool)

(declare-fun tp!1961967 () Bool)

(assert (=> setNonEmpty!51455 (= setRes!51455 (and tp!1961967 tp_is_empty!45539))))

(declare-fun setElem!51455 () A!693)

(declare-fun setRest!51455 () (Set A!693))

(assert (=> setNonEmpty!51455 (= setRest!51444 (set.union (set.insert setElem!51455 (as set.empty (Set A!693))) setRest!51455))))

(assert (= (and setNonEmpty!51444 condSetEmpty!51455) setIsEmpty!51455))

(assert (= (and setNonEmpty!51444 (not condSetEmpty!51455)) setNonEmpty!51455))

(declare-fun b_lambda!271821 () Bool)

(assert (= b_lambda!271815 (or (and start!693988 b_free!133787) b_lambda!271821)))

(declare-fun b_lambda!271823 () Bool)

(assert (= b_lambda!271817 (or (and start!693988 b_free!133787) b_lambda!271823)))

(push 1)

(assert (not d!2223242))

(assert tp_is_empty!45537)

(assert b_and!350909)

(assert (not b_next!134577))

(assert (not b_lambda!271823))

(assert (not b_lambda!271813))

(assert tp_is_empty!45539)

(assert (not d!2223244))

(assert (not setNonEmpty!51455))

(assert (not b_lambda!271821))

(assert (not d!2223246))

(assert (not d!2223240))

(assert (not setNonEmpty!51454))

(assert (not b!7124085))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350909)

(assert (not b_next!134577))

(check-sat)

(pop 1)

