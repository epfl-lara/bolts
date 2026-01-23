; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694004 () Bool)

(assert start!694004)

(declare-fun b_free!133791 () Bool)

(declare-fun b_next!134581 () Bool)

(assert (=> start!694004 (= b_free!133791 (not b_next!134581))))

(declare-fun tp!1961979 () Bool)

(declare-fun b_and!350913 () Bool)

(assert (=> start!694004 (= tp!1961979 b_and!350913)))

(declare-fun res!2906869 () Bool)

(declare-fun e!4281076 () Bool)

(assert (=> start!694004 (=> (not res!2906869) (not e!4281076))))

(declare-datatypes ((B!3355 0))(
  ( (B!3356 (val!28023 Int)) )
))
(declare-fun b!25321 () B!3355)

(declare-fun lt!2562714 () (Set B!3355))

(assert (=> start!694004 (= res!2906869 (set.member b!25321 lt!2562714))))

(declare-datatypes ((A!697 0))(
  ( (A!698 (val!28024 Int)) )
))
(declare-fun s1!413 () (Set A!697))

(declare-fun f!518 () Int)

(declare-fun map!16469 ((Set A!697) Int) (Set B!3355))

(assert (=> start!694004 (= lt!2562714 (map!16469 s1!413 f!518))))

(assert (=> start!694004 e!4281076))

(declare-fun tp_is_empty!45545 () Bool)

(assert (=> start!694004 tp_is_empty!45545))

(declare-fun condSetEmpty!51464 () Bool)

(assert (=> start!694004 (= condSetEmpty!51464 (= s1!413 (as set.empty (Set A!697))))))

(declare-fun setRes!51464 () Bool)

(assert (=> start!694004 setRes!51464))

(declare-fun condSetEmpty!51465 () Bool)

(declare-fun s2!384 () (Set A!697))

(assert (=> start!694004 (= condSetEmpty!51465 (= s2!384 (as set.empty (Set A!697))))))

(declare-fun setRes!51465 () Bool)

(assert (=> start!694004 setRes!51465))

(assert (=> start!694004 tp!1961979))

(declare-fun setNonEmpty!51464 () Bool)

(declare-fun tp!1961978 () Bool)

(declare-fun tp_is_empty!45547 () Bool)

(assert (=> setNonEmpty!51464 (= setRes!51465 (and tp!1961978 tp_is_empty!45547))))

(declare-fun setElem!51465 () A!697)

(declare-fun setRest!51464 () (Set A!697))

(assert (=> setNonEmpty!51464 (= s2!384 (set.union (set.insert setElem!51465 (as set.empty (Set A!697))) setRest!51464))))

(declare-fun setNonEmpty!51465 () Bool)

(declare-fun tp!1961980 () Bool)

(assert (=> setNonEmpty!51465 (= setRes!51464 (and tp!1961980 tp_is_empty!45547))))

(declare-fun setElem!51464 () A!697)

(declare-fun setRest!51465 () (Set A!697))

(assert (=> setNonEmpty!51465 (= s1!413 (set.union (set.insert setElem!51464 (as set.empty (Set A!697))) setRest!51465))))

(declare-fun b!7124105 () Bool)

(declare-fun e!4281075 () Bool)

(declare-fun e!4281078 () Bool)

(assert (=> b!7124105 (= e!4281075 (not e!4281078))))

(declare-fun res!2906868 () Bool)

(assert (=> b!7124105 (=> res!2906868 e!4281078)))

(declare-fun lt!2562715 () (Set B!3355))

(declare-fun lt!2562716 () A!697)

(declare-fun dynLambda!28095 (Int A!697) B!3355)

(assert (=> b!7124105 (= res!2906868 (not (set.member (dynLambda!28095 f!518 lt!2562716) lt!2562715)))))

(declare-fun lt!2562713 () (Set A!697))

(assert (=> b!7124105 (= lt!2562715 (map!16469 lt!2562713 f!518))))

(declare-datatypes ((Unit!162805 0))(
  ( (Unit!162806) )
))
(declare-fun empty!2827 () Unit!162805)

(declare-fun mapPost1!11 ((Set A!697) Int A!697) Unit!162805)

(assert (=> b!7124105 (= (mapPost1!11 lt!2562713 f!518 lt!2562716) empty!2827)))

(assert (=> b!7124105 true))

(declare-fun setIsEmpty!51464 () Bool)

(assert (=> setIsEmpty!51464 setRes!51465))

(declare-fun b!7124106 () Bool)

(declare-fun e!4281077 () Bool)

(assert (=> b!7124106 (= e!4281076 e!4281077)))

(declare-fun res!2906870 () Bool)

(assert (=> b!7124106 (=> (not res!2906870) (not e!4281077))))

(assert (=> b!7124106 (= res!2906870 (set.member lt!2562716 s1!413))))

(declare-fun mapPost2!577 ((Set A!697) Int B!3355) A!697)

(assert (=> b!7124106 (= lt!2562716 (mapPost2!577 s1!413 f!518 b!25321))))

(declare-fun b!7124107 () Bool)

(assert (=> b!7124107 (= e!4281077 e!4281075)))

(declare-fun res!2906871 () Bool)

(assert (=> b!7124107 (=> (not res!2906871) (not e!4281075))))

(assert (=> b!7124107 (= res!2906871 (set.member lt!2562716 lt!2562713))))

(assert (=> b!7124107 (= lt!2562713 (set.union s1!413 s2!384))))

(declare-fun setIsEmpty!51465 () Bool)

(assert (=> setIsEmpty!51465 setRes!51464))

(declare-fun b!7124108 () Bool)

(assert (=> b!7124108 (= e!4281078 (= (set.member b!25321 (set.union lt!2562714 (map!16469 s2!384 f!518))) (set.member b!25321 lt!2562715)))))

(assert (= (and start!694004 res!2906869) b!7124106))

(assert (= (and b!7124106 res!2906870) b!7124107))

(assert (= (and b!7124107 res!2906871) b!7124105))

(assert (= (and b!7124105 (not res!2906868)) b!7124108))

(assert (= (and start!694004 condSetEmpty!51464) setIsEmpty!51465))

(assert (= (and start!694004 (not condSetEmpty!51464)) setNonEmpty!51465))

(assert (= (and start!694004 condSetEmpty!51465) setIsEmpty!51464))

(assert (= (and start!694004 (not condSetEmpty!51465)) setNonEmpty!51464))

(declare-fun b_lambda!271829 () Bool)

(assert (=> (not b_lambda!271829) (not b!7124105)))

(declare-fun t!382969 () Bool)

(declare-fun tb!262019 () Bool)

(assert (=> (and start!694004 (= f!518 f!518) t!382969) tb!262019))

(declare-fun result!349330 () Bool)

(assert (=> tb!262019 (= result!349330 tp_is_empty!45545)))

(assert (=> b!7124105 t!382969))

(declare-fun b_and!350915 () Bool)

(assert (= b_and!350913 (and (=> t!382969 result!349330) b_and!350915)))

(declare-fun m!7841530 () Bool)

(assert (=> start!694004 m!7841530))

(declare-fun m!7841532 () Bool)

(assert (=> start!694004 m!7841532))

(declare-fun m!7841534 () Bool)

(assert (=> b!7124105 m!7841534))

(assert (=> b!7124105 m!7841534))

(declare-fun m!7841536 () Bool)

(assert (=> b!7124105 m!7841536))

(declare-fun m!7841538 () Bool)

(assert (=> b!7124105 m!7841538))

(declare-fun m!7841540 () Bool)

(assert (=> b!7124105 m!7841540))

(declare-fun m!7841542 () Bool)

(assert (=> b!7124107 m!7841542))

(declare-fun m!7841544 () Bool)

(assert (=> b!7124108 m!7841544))

(declare-fun m!7841546 () Bool)

(assert (=> b!7124108 m!7841546))

(declare-fun m!7841548 () Bool)

(assert (=> b!7124108 m!7841548))

(declare-fun m!7841550 () Bool)

(assert (=> b!7124106 m!7841550))

(declare-fun m!7841552 () Bool)

(assert (=> b!7124106 m!7841552))

(push 1)

(assert (not b!7124108))

(assert (not b_next!134581))

(assert (not b!7124106))

(assert (not b_lambda!271829))

(assert (not start!694004))

(assert (not b!7124105))

(assert (not setNonEmpty!51464))

(assert b_and!350915)

(assert tp_is_empty!45545)

(assert (not setNonEmpty!51465))

(assert tp_is_empty!45547)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350915)

(assert (not b_next!134581))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!271833 () Bool)

(assert (= b_lambda!271829 (or (and start!694004 b_free!133791) b_lambda!271833)))

(push 1)

(assert (not b!7124108))

(assert (not b_next!134581))

(assert (not b!7124106))

(assert (not b!7124105))

(assert (not setNonEmpty!51464))

(assert b_and!350915)

(assert tp_is_empty!45545)

(assert (not b_lambda!271833))

(assert (not start!694004))

(assert (not setNonEmpty!51465))

(assert tp_is_empty!45547)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350915)

(assert (not b_next!134581))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223257 () Bool)

(declare-fun e!4281093 () Bool)

(assert (=> d!2223257 e!4281093))

(declare-fun res!2906886 () Bool)

(assert (=> d!2223257 (=> (not res!2906886) (not e!4281093))))

(declare-fun lt!2562731 () A!697)

(assert (=> d!2223257 (= res!2906886 (= b!25321 (dynLambda!28095 f!518 lt!2562731)))))

(declare-fun choose!55067 ((Set A!697) Int B!3355) A!697)

(assert (=> d!2223257 (= lt!2562731 (choose!55067 s1!413 f!518 b!25321))))

(assert (=> d!2223257 (set.member b!25321 (map!16469 s1!413 f!518))))

(assert (=> d!2223257 (= (mapPost2!577 s1!413 f!518 b!25321) lt!2562731)))

(declare-fun b!7124128 () Bool)

(assert (=> b!7124128 (= e!4281093 (set.member lt!2562731 s1!413))))

(assert (= (and d!2223257 res!2906886) b!7124128))

(declare-fun b_lambda!271837 () Bool)

(assert (=> (not b_lambda!271837) (not d!2223257)))

(declare-fun t!382973 () Bool)

(declare-fun tb!262023 () Bool)

(assert (=> (and start!694004 (= f!518 f!518) t!382973) tb!262023))

(declare-fun result!349338 () Bool)

(assert (=> tb!262023 (= result!349338 tp_is_empty!45545)))

(assert (=> d!2223257 t!382973))

(declare-fun b_and!350921 () Bool)

(assert (= b_and!350915 (and (=> t!382973 result!349338) b_and!350921)))

(declare-fun m!7841578 () Bool)

(assert (=> d!2223257 m!7841578))

(declare-fun m!7841580 () Bool)

(assert (=> d!2223257 m!7841580))

(assert (=> d!2223257 m!7841532))

(declare-fun m!7841582 () Bool)

(assert (=> d!2223257 m!7841582))

(declare-fun m!7841584 () Bool)

(assert (=> b!7124128 m!7841584))

(assert (=> b!7124106 d!2223257))

(declare-fun d!2223259 () Bool)

(declare-fun choose!55068 ((Set A!697) Int) (Set B!3355))

(assert (=> d!2223259 (= (map!16469 s1!413 f!518) (choose!55068 s1!413 f!518))))

(declare-fun bs!1886225 () Bool)

(assert (= bs!1886225 d!2223259))

(declare-fun m!7841586 () Bool)

(assert (=> bs!1886225 m!7841586))

(assert (=> start!694004 d!2223259))

(declare-fun d!2223261 () Bool)

(assert (=> d!2223261 (= (map!16469 lt!2562713 f!518) (choose!55068 lt!2562713 f!518))))

(declare-fun bs!1886226 () Bool)

(assert (= bs!1886226 d!2223261))

(declare-fun m!7841588 () Bool)

(assert (=> bs!1886226 m!7841588))

(assert (=> b!7124105 d!2223261))

(declare-fun d!2223263 () Bool)

(declare-fun e!4281096 () Bool)

(assert (=> d!2223263 e!4281096))

(declare-fun res!2906889 () Bool)

(assert (=> d!2223263 (=> res!2906889 e!4281096)))

(assert (=> d!2223263 (= res!2906889 (not (set.member lt!2562716 lt!2562713)))))

(declare-fun lt!2562734 () Unit!162805)

(declare-fun choose!55069 ((Set A!697) Int A!697) Unit!162805)

(assert (=> d!2223263 (= lt!2562734 (choose!55069 lt!2562713 f!518 lt!2562716))))

(assert (=> d!2223263 (= (mapPost1!11 lt!2562713 f!518 lt!2562716) lt!2562734)))

(declare-fun b!7124131 () Bool)

(assert (=> b!7124131 (= e!4281096 (set.member (dynLambda!28095 f!518 lt!2562716) (map!16469 lt!2562713 f!518)))))

(assert (= (and d!2223263 (not res!2906889)) b!7124131))

(declare-fun b_lambda!271839 () Bool)

(assert (=> (not b_lambda!271839) (not b!7124131)))

(assert (=> b!7124131 t!382969))

(declare-fun b_and!350923 () Bool)

(assert (= b_and!350921 (and (=> t!382969 result!349330) b_and!350923)))

(assert (=> d!2223263 m!7841542))

(declare-fun m!7841590 () Bool)

(assert (=> d!2223263 m!7841590))

(assert (=> b!7124131 m!7841534))

(assert (=> b!7124131 m!7841538))

(assert (=> b!7124131 m!7841534))

(declare-fun m!7841592 () Bool)

(assert (=> b!7124131 m!7841592))

(assert (=> b!7124105 d!2223263))

(declare-fun d!2223265 () Bool)

(assert (=> d!2223265 (= (map!16469 s2!384 f!518) (choose!55068 s2!384 f!518))))

(declare-fun bs!1886227 () Bool)

(assert (= bs!1886227 d!2223265))

(declare-fun m!7841594 () Bool)

(assert (=> bs!1886227 m!7841594))

(assert (=> b!7124108 d!2223265))

(declare-fun condSetEmpty!51474 () Bool)

(assert (=> setNonEmpty!51465 (= condSetEmpty!51474 (= setRest!51465 (as set.empty (Set A!697))))))

(declare-fun setRes!51474 () Bool)

(assert (=> setNonEmpty!51465 (= tp!1961980 setRes!51474)))

(declare-fun setIsEmpty!51474 () Bool)

(assert (=> setIsEmpty!51474 setRes!51474))

(declare-fun setNonEmpty!51474 () Bool)

(declare-fun tp!1961992 () Bool)

(assert (=> setNonEmpty!51474 (= setRes!51474 (and tp!1961992 tp_is_empty!45547))))

(declare-fun setElem!51474 () A!697)

(declare-fun setRest!51474 () (Set A!697))

(assert (=> setNonEmpty!51474 (= setRest!51465 (set.union (set.insert setElem!51474 (as set.empty (Set A!697))) setRest!51474))))

(assert (= (and setNonEmpty!51465 condSetEmpty!51474) setIsEmpty!51474))

(assert (= (and setNonEmpty!51465 (not condSetEmpty!51474)) setNonEmpty!51474))

(declare-fun condSetEmpty!51475 () Bool)

(assert (=> setNonEmpty!51464 (= condSetEmpty!51475 (= setRest!51464 (as set.empty (Set A!697))))))

(declare-fun setRes!51475 () Bool)

(assert (=> setNonEmpty!51464 (= tp!1961978 setRes!51475)))

(declare-fun setIsEmpty!51475 () Bool)

(assert (=> setIsEmpty!51475 setRes!51475))

(declare-fun setNonEmpty!51475 () Bool)

(declare-fun tp!1961993 () Bool)

(assert (=> setNonEmpty!51475 (= setRes!51475 (and tp!1961993 tp_is_empty!45547))))

(declare-fun setElem!51475 () A!697)

(declare-fun setRest!51475 () (Set A!697))

(assert (=> setNonEmpty!51475 (= setRest!51464 (set.union (set.insert setElem!51475 (as set.empty (Set A!697))) setRest!51475))))

(assert (= (and setNonEmpty!51464 condSetEmpty!51475) setIsEmpty!51475))

(assert (= (and setNonEmpty!51464 (not condSetEmpty!51475)) setNonEmpty!51475))

(declare-fun b_lambda!271841 () Bool)

(assert (= b_lambda!271839 (or (and start!694004 b_free!133791) b_lambda!271841)))

(declare-fun b_lambda!271843 () Bool)

(assert (= b_lambda!271837 (or (and start!694004 b_free!133791) b_lambda!271843)))

(push 1)

(assert (not d!2223265))

(assert (not setNonEmpty!51475))

(assert tp_is_empty!45545)

(assert (not b_lambda!271841))

(assert tp_is_empty!45547)

(assert (not b!7124131))

(assert (not d!2223257))

(assert (not d!2223261))

(assert b_and!350923)

(assert (not d!2223259))

(assert (not setNonEmpty!51474))

(assert (not b_lambda!271843))

(assert (not b_next!134581))

(assert (not b_lambda!271833))

(assert (not d!2223263))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350923)

(assert (not b_next!134581))

(check-sat)

(pop 1)

