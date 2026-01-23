; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694016 () Bool)

(assert start!694016)

(declare-fun b_free!133795 () Bool)

(declare-fun b_next!134585 () Bool)

(assert (=> start!694016 (= b_free!133795 (not b_next!134585))))

(declare-fun tp!1962004 () Bool)

(declare-fun b_and!350925 () Bool)

(assert (=> start!694016 (= tp!1962004 b_and!350925)))

(declare-fun b!7124148 () Bool)

(declare-fun res!2906904 () Bool)

(declare-fun e!4281107 () Bool)

(assert (=> b!7124148 (=> (not res!2906904) (not e!4281107))))

(declare-datatypes ((B!3359 0))(
  ( (B!3360 (val!28027 Int)) )
))
(declare-fun b!25321 () B!3359)

(declare-datatypes ((A!701 0))(
  ( (A!702 (val!28028 Int)) )
))
(declare-fun s2!384 () (Set A!701))

(declare-fun f!518 () Int)

(declare-fun map!16472 ((Set A!701) Int) (Set B!3359))

(assert (=> b!7124148 (= res!2906904 (set.member b!25321 (map!16472 s2!384 f!518)))))

(declare-fun b!7124149 () Bool)

(declare-fun e!4281106 () Bool)

(assert (=> b!7124149 (= e!4281107 e!4281106)))

(declare-fun res!2906903 () Bool)

(assert (=> b!7124149 (=> (not res!2906903) (not e!4281106))))

(declare-fun lt!2562743 () A!701)

(assert (=> b!7124149 (= res!2906903 (set.member lt!2562743 s2!384))))

(declare-fun mapPost2!579 ((Set A!701) Int B!3359) A!701)

(assert (=> b!7124149 (= lt!2562743 (mapPost2!579 s2!384 f!518 b!25321))))

(declare-fun e!4281108 () Bool)

(declare-fun lt!2562742 () (Set A!701))

(declare-fun b!7124150 () Bool)

(declare-fun dynLambda!28097 (Int A!701) B!3359)

(assert (=> b!7124150 (= e!4281108 (not (set.member (dynLambda!28097 f!518 lt!2562743) (map!16472 lt!2562742 f!518))))))

(declare-datatypes ((Unit!162809 0))(
  ( (Unit!162810) )
))
(declare-fun empty!2835 () Unit!162809)

(declare-fun mapPost1!13 ((Set A!701) Int A!701) Unit!162809)

(assert (=> b!7124150 (= (mapPost1!13 lt!2562742 f!518 lt!2562743) empty!2835)))

(assert (=> b!7124150 true))

(declare-fun setNonEmpty!51485 () Bool)

(declare-fun setRes!51485 () Bool)

(declare-fun tp!1962005 () Bool)

(declare-fun tp_is_empty!45555 () Bool)

(assert (=> setNonEmpty!51485 (= setRes!51485 (and tp!1962005 tp_is_empty!45555))))

(declare-fun setElem!51484 () A!701)

(declare-fun setRest!51485 () (Set A!701))

(assert (=> setNonEmpty!51485 (= s2!384 (set.union (set.insert setElem!51484 (as set.empty (Set A!701))) setRest!51485))))

(declare-fun b!7124151 () Bool)

(assert (=> b!7124151 (= e!4281106 e!4281108)))

(declare-fun res!2906902 () Bool)

(assert (=> b!7124151 (=> (not res!2906902) (not e!4281108))))

(assert (=> b!7124151 (= res!2906902 (set.member lt!2562743 lt!2562742))))

(declare-fun s1!413 () (Set A!701))

(assert (=> b!7124151 (= lt!2562742 (set.union s1!413 s2!384))))

(declare-fun setNonEmpty!51484 () Bool)

(declare-fun setRes!51484 () Bool)

(declare-fun tp!1962006 () Bool)

(assert (=> setNonEmpty!51484 (= setRes!51484 (and tp!1962006 tp_is_empty!45555))))

(declare-fun setElem!51485 () A!701)

(declare-fun setRest!51484 () (Set A!701))

(assert (=> setNonEmpty!51484 (= s1!413 (set.union (set.insert setElem!51485 (as set.empty (Set A!701))) setRest!51484))))

(declare-fun res!2906901 () Bool)

(assert (=> start!694016 (=> (not res!2906901) (not e!4281107))))

(assert (=> start!694016 (= res!2906901 (not (set.member b!25321 (map!16472 s1!413 f!518))))))

(assert (=> start!694016 e!4281107))

(declare-fun tp_is_empty!45553 () Bool)

(assert (=> start!694016 tp_is_empty!45553))

(declare-fun condSetEmpty!51484 () Bool)

(assert (=> start!694016 (= condSetEmpty!51484 (= s1!413 (as set.empty (Set A!701))))))

(assert (=> start!694016 setRes!51484))

(assert (=> start!694016 tp!1962004))

(declare-fun condSetEmpty!51485 () Bool)

(assert (=> start!694016 (= condSetEmpty!51485 (= s2!384 (as set.empty (Set A!701))))))

(assert (=> start!694016 setRes!51485))

(declare-fun setIsEmpty!51484 () Bool)

(assert (=> setIsEmpty!51484 setRes!51484))

(declare-fun setIsEmpty!51485 () Bool)

(assert (=> setIsEmpty!51485 setRes!51485))

(assert (= (and start!694016 res!2906901) b!7124148))

(assert (= (and b!7124148 res!2906904) b!7124149))

(assert (= (and b!7124149 res!2906903) b!7124151))

(assert (= (and b!7124151 res!2906902) b!7124150))

(assert (= (and start!694016 condSetEmpty!51484) setIsEmpty!51484))

(assert (= (and start!694016 (not condSetEmpty!51484)) setNonEmpty!51484))

(assert (= (and start!694016 condSetEmpty!51485) setIsEmpty!51485))

(assert (= (and start!694016 (not condSetEmpty!51485)) setNonEmpty!51485))

(declare-fun b_lambda!271845 () Bool)

(assert (=> (not b_lambda!271845) (not b!7124150)))

(declare-fun t!382975 () Bool)

(declare-fun tb!262025 () Bool)

(assert (=> (and start!694016 (= f!518 f!518) t!382975) tb!262025))

(declare-fun result!349344 () Bool)

(assert (=> tb!262025 (= result!349344 tp_is_empty!45553)))

(assert (=> b!7124150 t!382975))

(declare-fun b_and!350927 () Bool)

(assert (= b_and!350925 (and (=> t!382975 result!349344) b_and!350927)))

(declare-fun m!7841596 () Bool)

(assert (=> b!7124151 m!7841596))

(declare-fun m!7841598 () Bool)

(assert (=> b!7124149 m!7841598))

(declare-fun m!7841600 () Bool)

(assert (=> b!7124149 m!7841600))

(declare-fun m!7841602 () Bool)

(assert (=> b!7124148 m!7841602))

(declare-fun m!7841604 () Bool)

(assert (=> b!7124148 m!7841604))

(declare-fun m!7841606 () Bool)

(assert (=> start!694016 m!7841606))

(declare-fun m!7841608 () Bool)

(assert (=> start!694016 m!7841608))

(declare-fun m!7841610 () Bool)

(assert (=> b!7124150 m!7841610))

(declare-fun m!7841612 () Bool)

(assert (=> b!7124150 m!7841612))

(assert (=> b!7124150 m!7841610))

(declare-fun m!7841614 () Bool)

(assert (=> b!7124150 m!7841614))

(declare-fun m!7841616 () Bool)

(assert (=> b!7124150 m!7841616))

(push 1)

(assert (not b_lambda!271845))

(assert (not b!7124150))

(assert (not b!7124148))

(assert (not b_next!134585))

(assert (not start!694016))

(assert (not b!7124149))

(assert b_and!350927)

(assert (not setNonEmpty!51485))

(assert tp_is_empty!45553)

(assert tp_is_empty!45555)

(assert (not setNonEmpty!51484))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350927)

(assert (not b_next!134585))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!271849 () Bool)

(assert (= b_lambda!271845 (or (and start!694016 b_free!133795) b_lambda!271849)))

(push 1)

(assert (not b!7124150))

(assert (not b!7124148))

(assert (not b_next!134585))

(assert (not start!694016))

(assert (not b_lambda!271849))

(assert (not b!7124149))

(assert b_and!350927)

(assert (not setNonEmpty!51485))

(assert tp_is_empty!45553)

(assert tp_is_empty!45555)

(assert (not setNonEmpty!51484))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350927)

(assert (not b_next!134585))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223270 () Bool)

(declare-fun choose!55070 ((Set A!701) Int) (Set B!3359))

(assert (=> d!2223270 (= (map!16472 s2!384 f!518) (choose!55070 s2!384 f!518))))

(declare-fun bs!1886230 () Bool)

(assert (= bs!1886230 d!2223270))

(declare-fun m!7841640 () Bool)

(assert (=> bs!1886230 m!7841640))

(assert (=> b!7124148 d!2223270))

(declare-fun d!2223272 () Bool)

(assert (=> d!2223272 (= (map!16472 lt!2562742 f!518) (choose!55070 lt!2562742 f!518))))

(declare-fun bs!1886231 () Bool)

(assert (= bs!1886231 d!2223272))

(declare-fun m!7841642 () Bool)

(assert (=> bs!1886231 m!7841642))

(assert (=> b!7124150 d!2223272))

(declare-fun d!2223274 () Bool)

(declare-fun e!4281120 () Bool)

(assert (=> d!2223274 e!4281120))

(declare-fun res!2906919 () Bool)

(assert (=> d!2223274 (=> res!2906919 e!4281120)))

(assert (=> d!2223274 (= res!2906919 (not (set.member lt!2562743 lt!2562742)))))

(declare-fun lt!2562752 () Unit!162809)

(declare-fun choose!55071 ((Set A!701) Int A!701) Unit!162809)

(assert (=> d!2223274 (= lt!2562752 (choose!55071 lt!2562742 f!518 lt!2562743))))

(assert (=> d!2223274 (= (mapPost1!13 lt!2562742 f!518 lt!2562743) lt!2562752)))

(declare-fun b!7124170 () Bool)

(assert (=> b!7124170 (= e!4281120 (set.member (dynLambda!28097 f!518 lt!2562743) (map!16472 lt!2562742 f!518)))))

(assert (= (and d!2223274 (not res!2906919)) b!7124170))

(declare-fun b_lambda!271853 () Bool)

(assert (=> (not b_lambda!271853) (not b!7124170)))

(assert (=> b!7124170 t!382975))

(declare-fun b_and!350933 () Bool)

(assert (= b_and!350927 (and (=> t!382975 result!349344) b_and!350933)))

(assert (=> d!2223274 m!7841596))

(declare-fun m!7841644 () Bool)

(assert (=> d!2223274 m!7841644))

(assert (=> b!7124170 m!7841610))

(assert (=> b!7124170 m!7841612))

(assert (=> b!7124170 m!7841610))

(assert (=> b!7124170 m!7841614))

(assert (=> b!7124150 d!2223274))

(declare-fun d!2223276 () Bool)

(declare-fun e!4281123 () Bool)

(assert (=> d!2223276 e!4281123))

(declare-fun res!2906922 () Bool)

(assert (=> d!2223276 (=> (not res!2906922) (not e!4281123))))

(declare-fun lt!2562755 () A!701)

(assert (=> d!2223276 (= res!2906922 (= b!25321 (dynLambda!28097 f!518 lt!2562755)))))

(declare-fun choose!55072 ((Set A!701) Int B!3359) A!701)

(assert (=> d!2223276 (= lt!2562755 (choose!55072 s2!384 f!518 b!25321))))

(assert (=> d!2223276 (set.member b!25321 (map!16472 s2!384 f!518))))

(assert (=> d!2223276 (= (mapPost2!579 s2!384 f!518 b!25321) lt!2562755)))

(declare-fun b!7124174 () Bool)

(assert (=> b!7124174 (= e!4281123 (set.member lt!2562755 s2!384))))

(assert (= (and d!2223276 res!2906922) b!7124174))

(declare-fun b_lambda!271855 () Bool)

(assert (=> (not b_lambda!271855) (not d!2223276)))

(declare-fun t!382979 () Bool)

(declare-fun tb!262029 () Bool)

(assert (=> (and start!694016 (= f!518 f!518) t!382979) tb!262029))

(declare-fun result!349352 () Bool)

(assert (=> tb!262029 (= result!349352 tp_is_empty!45553)))

(assert (=> d!2223276 t!382979))

(declare-fun b_and!350935 () Bool)

(assert (= b_and!350933 (and (=> t!382979 result!349352) b_and!350935)))

(declare-fun m!7841646 () Bool)

(assert (=> d!2223276 m!7841646))

(declare-fun m!7841648 () Bool)

(assert (=> d!2223276 m!7841648))

(assert (=> d!2223276 m!7841602))

(assert (=> d!2223276 m!7841604))

(declare-fun m!7841650 () Bool)

(assert (=> b!7124174 m!7841650))

(assert (=> b!7124149 d!2223276))

(declare-fun d!2223278 () Bool)

(assert (=> d!2223278 (= (map!16472 s1!413 f!518) (choose!55070 s1!413 f!518))))

(declare-fun bs!1886232 () Bool)

(assert (= bs!1886232 d!2223278))

(declare-fun m!7841652 () Bool)

(assert (=> bs!1886232 m!7841652))

(assert (=> start!694016 d!2223278))

(declare-fun condSetEmpty!51494 () Bool)

(assert (=> setNonEmpty!51484 (= condSetEmpty!51494 (= setRest!51484 (as set.empty (Set A!701))))))

(declare-fun setRes!51494 () Bool)

(assert (=> setNonEmpty!51484 (= tp!1962006 setRes!51494)))

(declare-fun setIsEmpty!51494 () Bool)

(assert (=> setIsEmpty!51494 setRes!51494))

(declare-fun setNonEmpty!51494 () Bool)

(declare-fun tp!1962018 () Bool)

(assert (=> setNonEmpty!51494 (= setRes!51494 (and tp!1962018 tp_is_empty!45555))))

(declare-fun setElem!51494 () A!701)

(declare-fun setRest!51494 () (Set A!701))

(assert (=> setNonEmpty!51494 (= setRest!51484 (set.union (set.insert setElem!51494 (as set.empty (Set A!701))) setRest!51494))))

(assert (= (and setNonEmpty!51484 condSetEmpty!51494) setIsEmpty!51494))

(assert (= (and setNonEmpty!51484 (not condSetEmpty!51494)) setNonEmpty!51494))

(declare-fun condSetEmpty!51495 () Bool)

(assert (=> setNonEmpty!51485 (= condSetEmpty!51495 (= setRest!51485 (as set.empty (Set A!701))))))

(declare-fun setRes!51495 () Bool)

(assert (=> setNonEmpty!51485 (= tp!1962005 setRes!51495)))

(declare-fun setIsEmpty!51495 () Bool)

(assert (=> setIsEmpty!51495 setRes!51495))

(declare-fun setNonEmpty!51495 () Bool)

(declare-fun tp!1962019 () Bool)

(assert (=> setNonEmpty!51495 (= setRes!51495 (and tp!1962019 tp_is_empty!45555))))

(declare-fun setElem!51495 () A!701)

(declare-fun setRest!51495 () (Set A!701))

(assert (=> setNonEmpty!51495 (= setRest!51485 (set.union (set.insert setElem!51495 (as set.empty (Set A!701))) setRest!51495))))

(assert (= (and setNonEmpty!51485 condSetEmpty!51495) setIsEmpty!51495))

(assert (= (and setNonEmpty!51485 (not condSetEmpty!51495)) setNonEmpty!51495))

(declare-fun b_lambda!271857 () Bool)

(assert (= b_lambda!271855 (or (and start!694016 b_free!133795) b_lambda!271857)))

(declare-fun b_lambda!271859 () Bool)

(assert (= b_lambda!271853 (or (and start!694016 b_free!133795) b_lambda!271859)))

(push 1)

(assert tp_is_empty!45553)

(assert (not d!2223278))

(assert (not d!2223272))

(assert (not b_next!134585))

(assert (not b!7124170))

(assert (not setNonEmpty!51495))

(assert (not b_lambda!271857))

(assert (not b_lambda!271849))

(assert tp_is_empty!45555)

(assert (not b_lambda!271859))

(assert (not d!2223270))

(assert b_and!350935)

(assert (not d!2223274))

(assert (not d!2223276))

(assert (not setNonEmpty!51494))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350935)

(assert (not b_next!134585))

(check-sat)

(pop 1)

