; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45346 () Bool)

(assert start!45346)

(declare-fun b_free!13245 () Bool)

(declare-fun b_next!13245 () Bool)

(assert (=> start!45346 (= b_free!13245 (not b_next!13245))))

(declare-fun tp!131005 () Bool)

(declare-fun b_and!50613 () Bool)

(assert (=> start!45346 (= tp!131005 b_and!50613)))

(declare-fun b_free!13247 () Bool)

(declare-fun b_next!13247 () Bool)

(assert (=> start!45346 (= b_free!13247 (not b_next!13247))))

(declare-fun tp!131004 () Bool)

(declare-fun b_and!50615 () Bool)

(assert (=> start!45346 (= tp!131004 b_and!50615)))

(declare-fun b!472646 () Bool)

(assert (=> b!472646 true))

(declare-fun lambda!14205 () Int)

(declare-fun order!4325 () Int)

(declare-fun f!1019 () Int)

(declare-fun order!4323 () Int)

(declare-fun dynLambda!2941 (Int Int) Int)

(declare-fun dynLambda!2942 (Int Int) Int)

(assert (=> b!472646 (< (dynLambda!2941 order!4323 f!1019) (dynLambda!2942 order!4325 lambda!14205))))

(assert (=> b!472646 true))

(declare-fun order!4327 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2943 (Int Int) Int)

(assert (=> b!472646 (< (dynLambda!2943 order!4327 p!1765) (dynLambda!2942 order!4325 lambda!14205))))

(declare-fun bs!58577 () Bool)

(declare-fun b!472647 () Bool)

(assert (= bs!58577 (and b!472647 b!472646)))

(declare-fun lambda!14206 () Int)

(assert (=> bs!58577 (not (= lambda!14206 lambda!14205))))

(assert (=> b!472647 true))

(assert (=> b!472647 true))

(assert (=> b!472647 (< (dynLambda!2941 order!4323 f!1019) (dynLambda!2942 order!4325 lambda!14206))))

(declare-fun b!472644 () Bool)

(declare-fun inst!206 () Bool)

(declare-fun tp_is_empty!2213 () Bool)

(declare-datatypes ((A!417 0))(
  ( (A!418 (val!1555 Int)) )
))
(declare-fun x!112949 () A!417)

(declare-datatypes ((B!979 0))(
  ( (B!980 (val!1556 Int)) )
))
(declare-fun forall!1340 ((Set B!979) Int) Bool)

(declare-fun dynLambda!2944 (Int A!417) (Set B!979))

(assert (=> b!472644 (= inst!206 (=> tp_is_empty!2213 (forall!1340 (dynLambda!2944 f!1019 x!112949) p!1765)))))

(declare-fun b_lambda!19841 () Bool)

(assert (=> (not b_lambda!19841) (not b!472644)))

(declare-fun t!73059 () Bool)

(declare-fun tb!47077 () Bool)

(assert (=> (and start!45346 (= f!1019 f!1019) t!73059) tb!47077))

(assert (=> b!472644 t!73059))

(declare-fun result!51896 () Bool)

(declare-fun b_and!50617 () Bool)

(assert (= b_and!50613 (and (=> t!73059 result!51896) b_and!50617)))

(declare-fun m!746055 () Bool)

(assert (=> b!472644 m!746055))

(assert (=> b!472644 m!746055))

(declare-fun m!746057 () Bool)

(assert (=> b!472644 m!746057))

(declare-fun bs!58578 () Bool)

(declare-fun neg-inst!206 () Bool)

(declare-fun s!18185 () Bool)

(assert (= bs!58578 (and neg-inst!206 s!18185)))

(assert (=> bs!58578 (=> true (forall!1340 (dynLambda!2944 f!1019 x!112949) p!1765))))

(declare-fun b_lambda!19843 () Bool)

(assert (=> (not b_lambda!19843) (not bs!58578)))

(assert (=> bs!58578 t!73059))

(declare-fun b_and!50619 () Bool)

(assert (= b_and!50617 (and (=> t!73059 result!51896) b_and!50619)))

(assert (=> m!746055 m!746057))

(assert (=> m!746055 s!18185))

(declare-fun bs!58579 () Bool)

(assert (= bs!58579 (and neg-inst!206 b!472644)))

(assert (=> bs!58579 (= true inst!206)))

(declare-fun e!289055 () Bool)

(declare-fun e!289051 () Bool)

(assert (=> b!472644 (= e!289055 e!289051)))

(declare-fun res!209754 () Bool)

(assert (=> b!472644 (=> res!209754 e!289051)))

(declare-fun lt!210433 () (Set B!979))

(assert (=> b!472644 (= res!209754 (not (forall!1340 lt!210433 p!1765)))))

(declare-fun Forall!263 (Int) Bool)

(assert (=> b!472644 (= (Forall!263 lambda!14205) inst!206)))

(declare-fun b!472645 () Bool)

(declare-fun e!289054 () Bool)

(assert (=> b!472645 (= e!289054 e!289055)))

(declare-fun res!209748 () Bool)

(assert (=> b!472645 (=> res!209748 e!289055)))

(declare-datatypes ((List!4580 0))(
  ( (Nil!4570) (Cons!4570 (h!9967 B!979) (t!73062 List!4580)) )
))
(declare-fun lt!210431 () List!4580)

(declare-fun elm!3 () B!979)

(declare-fun contains!1036 (List!4580 B!979) Bool)

(assert (=> b!472645 (= res!209748 (not (contains!1036 lt!210431 elm!3)))))

(declare-fun toList!351 ((Set B!979)) List!4580)

(assert (=> b!472645 (= lt!210431 (toList!351 lt!210433))))

(declare-fun res!209752 () Bool)

(declare-fun e!289050 () Bool)

(assert (=> b!472646 (=> (not res!209752) (not e!289050))))

(assert (=> b!472646 (= res!209752 (Forall!263 lambda!14205))))

(declare-fun e!289053 () Bool)

(assert (=> b!472647 (= e!289050 (not e!289053))))

(declare-fun res!209749 () Bool)

(assert (=> b!472647 (=> res!209749 e!289053)))

(declare-fun s!1493 () (Set A!417))

(declare-fun exists!80 ((Set A!417) Int) Bool)

(assert (=> b!472647 (= res!209749 (not (exists!80 s!1493 lambda!14206)))))

(declare-fun empty!2679 () A!417)

(declare-fun flatMapPost!37 ((Set A!417) Int B!979) A!417)

(assert (=> b!472647 (= (flatMapPost!37 s!1493 f!1019 elm!3) empty!2679)))

(assert (=> b!472647 true))

(assert (=> b!472647 tp_is_empty!2213))

(declare-fun res!209753 () Bool)

(assert (=> start!45346 (=> (not res!209753) (not e!289050))))

(declare-fun flatMap!113 ((Set A!417) Int) (Set B!979))

(assert (=> start!45346 (= res!209753 (set.member elm!3 (flatMap!113 s!1493 f!1019)))))

(assert (=> start!45346 e!289050))

(declare-fun tp_is_empty!2215 () Bool)

(assert (=> start!45346 tp_is_empty!2215))

(declare-fun condSetEmpty!2077 () Bool)

(assert (=> start!45346 (= condSetEmpty!2077 (= s!1493 (as set.empty (Set A!417))))))

(declare-fun setRes!2077 () Bool)

(assert (=> start!45346 setRes!2077))

(assert (=> start!45346 tp!131005))

(assert (=> start!45346 tp!131004))

(declare-fun b!472648 () Bool)

(declare-fun forall!1341 (List!4580 Int) Bool)

(assert (=> b!472648 (= e!289051 (forall!1341 lt!210431 p!1765))))

(declare-fun setIsEmpty!2077 () Bool)

(assert (=> setIsEmpty!2077 setRes!2077))

(declare-fun b!472649 () Bool)

(declare-fun e!289052 () Bool)

(assert (=> b!472649 (= e!289053 e!289052)))

(declare-fun res!209750 () Bool)

(assert (=> b!472649 (=> res!209750 e!289052)))

(declare-datatypes ((List!4581 0))(
  ( (Nil!4571) (Cons!4571 (h!9968 A!417) (t!73063 List!4581)) )
))
(declare-fun lt!210432 () List!4581)

(declare-fun exists!81 (List!4581 Int) Bool)

(assert (=> b!472649 (= res!209750 (not (exists!81 lt!210432 lambda!14206)))))

(declare-fun toList!352 ((Set A!417)) List!4581)

(assert (=> b!472649 (= lt!210432 (toList!352 s!1493))))

(declare-fun b!472650 () Bool)

(assert (=> b!472650 (= e!289052 e!289054)))

(declare-fun res!209751 () Bool)

(assert (=> b!472650 (=> res!209751 e!289054)))

(assert (=> b!472650 (= res!209751 (not (set.member elm!3 lt!210433)))))

(declare-fun getWitness!39 (List!4581 Int) A!417)

(assert (=> b!472650 (= lt!210433 (dynLambda!2944 f!1019 (getWitness!39 lt!210432 lambda!14206)))))

(declare-fun setNonEmpty!2077 () Bool)

(declare-fun tp!131006 () Bool)

(assert (=> setNonEmpty!2077 (= setRes!2077 (and tp!131006 tp_is_empty!2213))))

(declare-fun setElem!2077 () A!417)

(declare-fun setRest!2077 () (Set A!417))

(assert (=> setNonEmpty!2077 (= s!1493 (set.union (set.insert setElem!2077 (as set.empty (Set A!417))) setRest!2077))))

(assert (= (and start!45346 res!209753) b!472646))

(assert (= (and b!472646 res!209752) b!472647))

(assert (= (and b!472647 (not res!209749)) b!472649))

(assert (= (and b!472649 (not res!209750)) b!472650))

(assert (= (and b!472650 (not res!209751)) b!472645))

(assert (= (and b!472645 (not res!209748)) b!472644))

(assert (= neg-inst!206 inst!206))

(assert (= (and b!472644 (not res!209754)) b!472648))

(assert (= (and start!45346 condSetEmpty!2077) setIsEmpty!2077))

(assert (= (and start!45346 (not condSetEmpty!2077)) setNonEmpty!2077))

(declare-fun b_lambda!19845 () Bool)

(assert (=> (not b_lambda!19845) (not b!472650)))

(declare-fun t!73061 () Bool)

(declare-fun tb!47079 () Bool)

(assert (=> (and start!45346 (= f!1019 f!1019) t!73061) tb!47079))

(assert (=> b!472650 t!73061))

(declare-fun result!51898 () Bool)

(declare-fun b_and!50621 () Bool)

(assert (= b_and!50619 (and (=> t!73061 result!51898) b_and!50621)))

(declare-fun m!746059 () Bool)

(assert (=> b!472650 m!746059))

(declare-fun m!746061 () Bool)

(assert (=> b!472650 m!746061))

(assert (=> b!472650 m!746061))

(declare-fun m!746063 () Bool)

(assert (=> b!472650 m!746063))

(declare-fun m!746065 () Bool)

(assert (=> b!472649 m!746065))

(declare-fun m!746067 () Bool)

(assert (=> b!472649 m!746067))

(declare-fun m!746069 () Bool)

(assert (=> start!45346 m!746069))

(declare-fun m!746071 () Bool)

(assert (=> start!45346 m!746071))

(declare-fun m!746073 () Bool)

(assert (=> b!472648 m!746073))

(declare-fun m!746075 () Bool)

(assert (=> b!472644 m!746075))

(declare-fun m!746077 () Bool)

(assert (=> b!472644 m!746077))

(declare-fun m!746079 () Bool)

(assert (=> b!472647 m!746079))

(declare-fun m!746081 () Bool)

(assert (=> b!472647 m!746081))

(assert (=> b!472646 m!746077))

(declare-fun m!746083 () Bool)

(assert (=> b!472645 m!746083))

(declare-fun m!746085 () Bool)

(assert (=> b!472645 m!746085))

(push 1)

(assert b_and!50615)

(assert (not b!472645))

(assert (not b!472646))

(assert b_and!50621)

(assert (not b_lambda!19841))

(assert (not b_next!13247))

(assert (not start!45346))

(assert (not b!472647))

(assert (not b_next!13245))

(assert (not b!472649))

(assert tp_is_empty!2213)

(assert (not b_lambda!19845))

(assert (not bs!58578))

(assert (not setNonEmpty!2077))

(assert (not b!472648))

(assert (not b!472650))

(assert (not b_lambda!19843))

(assert (not tb!47077))

(assert (not b!472644))

(assert (not tb!47079))

(assert tp_is_empty!2215)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50621)

(assert b_and!50615)

(assert (not b_next!13245))

(assert (not b_next!13247))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19853 () Bool)

(assert (= b_lambda!19841 (or (and start!45346 b_free!13245) b_lambda!19853)))

(declare-fun b_lambda!19855 () Bool)

(assert (= b_lambda!19843 (or (and start!45346 b_free!13245) b_lambda!19855)))

(declare-fun b_lambda!19857 () Bool)

(assert (= b_lambda!19845 (or (and start!45346 b_free!13245) b_lambda!19857)))

(push 1)

(assert b_and!50615)

(assert (not b!472645))

(assert (not b!472646))

(assert b_and!50621)

(assert (not b_lambda!19857))

(assert (not start!45346))

(assert (not b!472647))

(assert (not b_next!13245))

(assert (not b!472649))

(assert tp_is_empty!2213)

(assert (not b_lambda!19853))

(assert (not bs!58578))

(assert (not setNonEmpty!2077))

(assert (not b!472648))

(assert (not b!472650))

(assert (not tb!47077))

(assert (not b!472644))

(assert (not b_lambda!19855))

(assert (not b_next!13247))

(assert (not tb!47079))

(assert tp_is_empty!2215)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50621)

(assert b_and!50615)

(assert (not b_next!13245))

(assert (not b_next!13247))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!58583 () Bool)

(declare-fun d!179627 () Bool)

(assert (= bs!58583 (and d!179627 b!472646)))

(declare-fun lambda!14221 () Int)

(assert (=> bs!58583 (not (= lambda!14221 lambda!14205))))

(declare-fun bs!58584 () Bool)

(assert (= bs!58584 (and d!179627 b!472647)))

(assert (=> bs!58584 (not (= lambda!14221 lambda!14206))))

(assert (=> d!179627 true))

(assert (=> d!179627 (< (dynLambda!2942 order!4325 lambda!14206) (dynLambda!2942 order!4325 lambda!14221))))

(declare-fun forall!1344 (List!4581 Int) Bool)

(assert (=> d!179627 (= (exists!81 lt!210432 lambda!14206) (not (forall!1344 lt!210432 lambda!14221)))))

(declare-fun bs!58585 () Bool)

(assert (= bs!58585 d!179627))

(declare-fun m!746119 () Bool)

(assert (=> bs!58585 m!746119))

(assert (=> b!472649 d!179627))

(declare-fun d!179629 () Bool)

(declare-fun e!289076 () Bool)

(assert (=> d!179629 e!289076))

(declare-fun res!209778 () Bool)

(assert (=> d!179629 (=> (not res!209778) (not e!289076))))

(declare-fun lt!210445 () List!4581)

(declare-fun noDuplicate!105 (List!4581) Bool)

(assert (=> d!179629 (= res!209778 (noDuplicate!105 lt!210445))))

(declare-fun choose!3608 ((Set A!417)) List!4581)

(assert (=> d!179629 (= lt!210445 (choose!3608 s!1493))))

(assert (=> d!179629 (= (toList!352 s!1493) lt!210445)))

(declare-fun b!472688 () Bool)

(declare-fun content!782 (List!4581) (Set A!417))

(assert (=> b!472688 (= e!289076 (= (content!782 lt!210445) s!1493))))

(assert (= (and d!179629 res!209778) b!472688))

(declare-fun m!746121 () Bool)

(assert (=> d!179629 m!746121))

(declare-fun m!746123 () Bool)

(assert (=> d!179629 m!746123))

(declare-fun m!746125 () Bool)

(assert (=> b!472688 m!746125))

(assert (=> b!472649 d!179629))

(declare-fun lt!210448 () Bool)

(declare-fun d!179631 () Bool)

(assert (=> d!179631 (= lt!210448 (forall!1341 (toList!351 (dynLambda!2944 f!1019 x!112949)) p!1765))))

(declare-fun choose!3609 ((Set B!979) Int) Bool)

(assert (=> d!179631 (= lt!210448 (choose!3609 (dynLambda!2944 f!1019 x!112949) p!1765))))

(assert (=> d!179631 (= (forall!1340 (dynLambda!2944 f!1019 x!112949) p!1765) lt!210448)))

(declare-fun bs!58586 () Bool)

(assert (= bs!58586 d!179631))

(assert (=> bs!58586 m!746055))

(declare-fun m!746127 () Bool)

(assert (=> bs!58586 m!746127))

(assert (=> bs!58586 m!746127))

(declare-fun m!746129 () Bool)

(assert (=> bs!58586 m!746129))

(assert (=> bs!58586 m!746055))

(declare-fun m!746131 () Bool)

(assert (=> bs!58586 m!746131))

(assert (=> bs!58578 d!179631))

(declare-fun d!179633 () Bool)

(declare-fun lt!210451 () Bool)

(declare-fun content!783 (List!4580) (Set B!979))

(assert (=> d!179633 (= lt!210451 (set.member elm!3 (content!783 lt!210431)))))

(declare-fun e!289081 () Bool)

(assert (=> d!179633 (= lt!210451 e!289081)))

(declare-fun res!209784 () Bool)

(assert (=> d!179633 (=> (not res!209784) (not e!289081))))

(assert (=> d!179633 (= res!209784 (is-Cons!4570 lt!210431))))

(assert (=> d!179633 (= (contains!1036 lt!210431 elm!3) lt!210451)))

(declare-fun b!472693 () Bool)

(declare-fun e!289082 () Bool)

(assert (=> b!472693 (= e!289081 e!289082)))

(declare-fun res!209783 () Bool)

(assert (=> b!472693 (=> res!209783 e!289082)))

(assert (=> b!472693 (= res!209783 (= (h!9967 lt!210431) elm!3))))

(declare-fun b!472694 () Bool)

(assert (=> b!472694 (= e!289082 (contains!1036 (t!73062 lt!210431) elm!3))))

(assert (= (and d!179633 res!209784) b!472693))

(assert (= (and b!472693 (not res!209783)) b!472694))

(declare-fun m!746133 () Bool)

(assert (=> d!179633 m!746133))

(declare-fun m!746135 () Bool)

(assert (=> d!179633 m!746135))

(declare-fun m!746137 () Bool)

(assert (=> b!472694 m!746137))

(assert (=> b!472645 d!179633))

(declare-fun d!179635 () Bool)

(declare-fun e!289085 () Bool)

(assert (=> d!179635 e!289085))

(declare-fun res!209787 () Bool)

(assert (=> d!179635 (=> (not res!209787) (not e!289085))))

(declare-fun lt!210454 () List!4580)

(declare-fun noDuplicate!106 (List!4580) Bool)

(assert (=> d!179635 (= res!209787 (noDuplicate!106 lt!210454))))

(declare-fun choose!3610 ((Set B!979)) List!4580)

(assert (=> d!179635 (= lt!210454 (choose!3610 lt!210433))))

(assert (=> d!179635 (= (toList!351 lt!210433) lt!210454)))

(declare-fun b!472697 () Bool)

(assert (=> b!472697 (= e!289085 (= (content!783 lt!210454) lt!210433))))

(assert (= (and d!179635 res!209787) b!472697))

(declare-fun m!746139 () Bool)

(assert (=> d!179635 m!746139))

(declare-fun m!746141 () Bool)

(assert (=> d!179635 m!746141))

(declare-fun m!746143 () Bool)

(assert (=> b!472697 m!746143))

(assert (=> b!472645 d!179635))

(assert (=> b!472644 d!179631))

(declare-fun d!179637 () Bool)

(declare-fun lt!210455 () Bool)

(assert (=> d!179637 (= lt!210455 (forall!1341 (toList!351 lt!210433) p!1765))))

(assert (=> d!179637 (= lt!210455 (choose!3609 lt!210433 p!1765))))

(assert (=> d!179637 (= (forall!1340 lt!210433 p!1765) lt!210455)))

(declare-fun bs!58587 () Bool)

(assert (= bs!58587 d!179637))

(assert (=> bs!58587 m!746085))

(assert (=> bs!58587 m!746085))

(declare-fun m!746145 () Bool)

(assert (=> bs!58587 m!746145))

(declare-fun m!746147 () Bool)

(assert (=> bs!58587 m!746147))

(assert (=> b!472644 d!179637))

(declare-fun d!179639 () Bool)

(declare-fun choose!3611 (Int) Bool)

(assert (=> d!179639 (= (Forall!263 lambda!14205) (choose!3611 lambda!14205))))

(declare-fun bs!58588 () Bool)

(assert (= bs!58588 d!179639))

(declare-fun m!746149 () Bool)

(assert (=> bs!58588 m!746149))

(assert (=> b!472644 d!179639))

(declare-fun d!179641 () Bool)

(declare-fun lt!210458 () Bool)

(assert (=> d!179641 (= lt!210458 (exists!81 (toList!352 s!1493) lambda!14206))))

(declare-fun choose!3612 ((Set A!417) Int) Bool)

(assert (=> d!179641 (= lt!210458 (choose!3612 s!1493 lambda!14206))))

(assert (=> d!179641 (= (exists!80 s!1493 lambda!14206) lt!210458)))

(declare-fun bs!58589 () Bool)

(assert (= bs!58589 d!179641))

(assert (=> bs!58589 m!746067))

(assert (=> bs!58589 m!746067))

(declare-fun m!746151 () Bool)

(assert (=> bs!58589 m!746151))

(declare-fun m!746153 () Bool)

(assert (=> bs!58589 m!746153))

(assert (=> b!472647 d!179641))

(declare-fun bs!58590 () Bool)

(declare-fun d!179643 () Bool)

(assert (= bs!58590 (and d!179643 b!472646)))

(declare-fun lambda!14224 () Int)

(assert (=> bs!58590 (not (= lambda!14224 lambda!14205))))

(declare-fun bs!58591 () Bool)

(assert (= bs!58591 (and d!179643 b!472647)))

(assert (=> bs!58591 (= lambda!14224 lambda!14206)))

(declare-fun bs!58592 () Bool)

(assert (= bs!58592 (and d!179643 d!179627)))

(assert (=> bs!58592 (not (= lambda!14224 lambda!14221))))

(assert (=> d!179643 true))

(assert (=> d!179643 true))

(assert (=> d!179643 (< (dynLambda!2941 order!4323 f!1019) (dynLambda!2942 order!4325 lambda!14224))))

(assert (=> d!179643 (= (set.member elm!3 (flatMap!113 s!1493 f!1019)) (exists!80 s!1493 lambda!14224))))

(declare-fun lt!210461 () A!417)

(declare-fun choose!3613 ((Set A!417) Int B!979) A!417)

(assert (=> d!179643 (= lt!210461 (choose!3613 s!1493 f!1019 elm!3))))

(assert (=> d!179643 (= (flatMapPost!37 s!1493 f!1019 elm!3) lt!210461)))

(declare-fun bs!58593 () Bool)

(assert (= bs!58593 d!179643))

(assert (=> bs!58593 m!746069))

(assert (=> bs!58593 m!746071))

(declare-fun m!746155 () Bool)

(assert (=> bs!58593 m!746155))

(declare-fun m!746157 () Bool)

(assert (=> bs!58593 m!746157))

(assert (=> b!472647 d!179643))

(declare-fun d!179645 () Bool)

(declare-fun res!209792 () Bool)

(declare-fun e!289090 () Bool)

(assert (=> d!179645 (=> res!209792 e!289090)))

(assert (=> d!179645 (= res!209792 (is-Nil!4570 lt!210431))))

(assert (=> d!179645 (= (forall!1341 lt!210431 p!1765) e!289090)))

(declare-fun b!472703 () Bool)

(declare-fun e!289091 () Bool)

(assert (=> b!472703 (= e!289090 e!289091)))

(declare-fun res!209793 () Bool)

(assert (=> b!472703 (=> (not res!209793) (not e!289091))))

(declare-fun dynLambda!2949 (Int B!979) Bool)

(assert (=> b!472703 (= res!209793 (dynLambda!2949 p!1765 (h!9967 lt!210431)))))

(declare-fun b!472704 () Bool)

(assert (=> b!472704 (= e!289091 (forall!1341 (t!73062 lt!210431) p!1765))))

(assert (= (and d!179645 (not res!209792)) b!472703))

(assert (= (and b!472703 res!209793) b!472704))

(declare-fun b_lambda!19865 () Bool)

(assert (=> (not b_lambda!19865) (not b!472703)))

(declare-fun t!73071 () Bool)

(declare-fun tb!47085 () Bool)

(assert (=> (and start!45346 (= p!1765 p!1765) t!73071) tb!47085))

(declare-fun result!51904 () Bool)

(assert (=> tb!47085 (= result!51904 true)))

(assert (=> b!472703 t!73071))

(declare-fun b_and!50633 () Bool)

(assert (= b_and!50615 (and (=> t!73071 result!51904) b_and!50633)))

(declare-fun m!746159 () Bool)

(assert (=> b!472703 m!746159))

(declare-fun m!746161 () Bool)

(assert (=> b!472704 m!746161))

(assert (=> b!472648 d!179645))

(assert (=> b!472646 d!179639))

(declare-fun d!179647 () Bool)

(declare-fun choose!3614 ((Set A!417) Int) (Set B!979))

(assert (=> d!179647 (= (flatMap!113 s!1493 f!1019) (choose!3614 s!1493 f!1019))))

(declare-fun bs!58594 () Bool)

(assert (= bs!58594 d!179647))

(declare-fun m!746163 () Bool)

(assert (=> bs!58594 m!746163))

(assert (=> start!45346 d!179647))

(declare-fun b!472717 () Bool)

(declare-fun e!289103 () A!417)

(assert (=> b!472717 (= e!289103 (getWitness!39 (t!73063 lt!210432) lambda!14206))))

(declare-fun b!472718 () Bool)

(declare-fun e!289102 () Bool)

(declare-fun lt!210466 () A!417)

(declare-fun contains!1038 (List!4581 A!417) Bool)

(assert (=> b!472718 (= e!289102 (contains!1038 lt!210432 lt!210466))))

(declare-fun b!472719 () Bool)

(declare-fun e!289100 () A!417)

(assert (=> b!472719 (= e!289100 e!289103)))

(declare-fun c!94904 () Bool)

(assert (=> b!472719 (= c!94904 (is-Cons!4571 lt!210432))))

(declare-fun b!472720 () Bool)

(declare-fun e!289101 () Bool)

(declare-fun dynLambda!2950 (Int A!417) Bool)

(assert (=> b!472720 (= e!289101 (dynLambda!2950 lambda!14206 (h!9968 lt!210432)))))

(declare-fun b!472721 () Bool)

(declare-datatypes ((Unit!8314 0))(
  ( (Unit!8315) )
))
(declare-fun lt!210467 () Unit!8314)

(declare-fun Unit!8316 () Unit!8314)

(assert (=> b!472721 (= lt!210467 Unit!8316)))

(assert (=> b!472721 false))

(declare-fun head!1145 (List!4581) A!417)

(assert (=> b!472721 (= e!289103 (head!1145 lt!210432))))

(declare-fun d!179649 () Bool)

(assert (=> d!179649 e!289102))

(declare-fun res!209798 () Bool)

(assert (=> d!179649 (=> (not res!209798) (not e!289102))))

(assert (=> d!179649 (= res!209798 (dynLambda!2950 lambda!14206 lt!210466))))

(assert (=> d!179649 (= lt!210466 e!289100)))

(declare-fun c!94903 () Bool)

(assert (=> d!179649 (= c!94903 e!289101)))

(declare-fun res!209799 () Bool)

(assert (=> d!179649 (=> (not res!209799) (not e!289101))))

(assert (=> d!179649 (= res!209799 (is-Cons!4571 lt!210432))))

(assert (=> d!179649 (exists!81 lt!210432 lambda!14206)))

(assert (=> d!179649 (= (getWitness!39 lt!210432 lambda!14206) lt!210466)))

(declare-fun b!472722 () Bool)

(assert (=> b!472722 (= e!289100 (h!9968 lt!210432))))

(assert (= (and d!179649 res!209799) b!472720))

(assert (= (and d!179649 c!94903) b!472722))

(assert (= (and d!179649 (not c!94903)) b!472719))

(assert (= (and b!472719 c!94904) b!472717))

(assert (= (and b!472719 (not c!94904)) b!472721))

(assert (= (and d!179649 res!209798) b!472718))

(declare-fun b_lambda!19867 () Bool)

(assert (=> (not b_lambda!19867) (not b!472720)))

(declare-fun b_lambda!19869 () Bool)

(assert (=> (not b_lambda!19869) (not d!179649)))

(declare-fun m!746165 () Bool)

(assert (=> d!179649 m!746165))

(assert (=> d!179649 m!746065))

(declare-fun m!746167 () Bool)

(assert (=> b!472717 m!746167))

(declare-fun m!746169 () Bool)

(assert (=> b!472720 m!746169))

(declare-fun m!746171 () Bool)

(assert (=> b!472721 m!746171))

(declare-fun m!746173 () Bool)

(assert (=> b!472718 m!746173))

(assert (=> b!472650 d!179649))

(declare-fun condSetEmpty!2083 () Bool)

(assert (=> tb!47077 (= condSetEmpty!2083 (= (dynLambda!2944 f!1019 x!112949) (as set.empty (Set B!979))))))

(declare-fun setRes!2083 () Bool)

(assert (=> tb!47077 (= result!51896 setRes!2083)))

(declare-fun setIsEmpty!2083 () Bool)

(assert (=> setIsEmpty!2083 setRes!2083))

(declare-fun setNonEmpty!2083 () Bool)

(declare-fun tp!131018 () Bool)

(assert (=> setNonEmpty!2083 (= setRes!2083 (and tp!131018 tp_is_empty!2215))))

(declare-fun setElem!2083 () B!979)

(declare-fun setRest!2083 () (Set B!979))

(assert (=> setNonEmpty!2083 (= (dynLambda!2944 f!1019 x!112949) (set.union (set.insert setElem!2083 (as set.empty (Set B!979))) setRest!2083))))

(assert (= (and tb!47077 condSetEmpty!2083) setIsEmpty!2083))

(assert (= (and tb!47077 (not condSetEmpty!2083)) setNonEmpty!2083))

(declare-fun condSetEmpty!2084 () Bool)

(assert (=> tb!47079 (= condSetEmpty!2084 (= (dynLambda!2944 f!1019 (getWitness!39 lt!210432 lambda!14206)) (as set.empty (Set B!979))))))

(declare-fun setRes!2084 () Bool)

(assert (=> tb!47079 (= result!51898 setRes!2084)))

(declare-fun setIsEmpty!2084 () Bool)

(assert (=> setIsEmpty!2084 setRes!2084))

(declare-fun setNonEmpty!2084 () Bool)

(declare-fun tp!131019 () Bool)

(assert (=> setNonEmpty!2084 (= setRes!2084 (and tp!131019 tp_is_empty!2215))))

(declare-fun setElem!2084 () B!979)

(declare-fun setRest!2084 () (Set B!979))

(assert (=> setNonEmpty!2084 (= (dynLambda!2944 f!1019 (getWitness!39 lt!210432 lambda!14206)) (set.union (set.insert setElem!2084 (as set.empty (Set B!979))) setRest!2084))))

(assert (= (and tb!47079 condSetEmpty!2084) setIsEmpty!2084))

(assert (= (and tb!47079 (not condSetEmpty!2084)) setNonEmpty!2084))

(declare-fun condSetEmpty!2087 () Bool)

(assert (=> setNonEmpty!2077 (= condSetEmpty!2087 (= setRest!2077 (as set.empty (Set A!417))))))

(declare-fun setRes!2087 () Bool)

(assert (=> setNonEmpty!2077 (= tp!131006 setRes!2087)))

(declare-fun setIsEmpty!2087 () Bool)

(assert (=> setIsEmpty!2087 setRes!2087))

(declare-fun setNonEmpty!2087 () Bool)

(declare-fun tp!131022 () Bool)

(assert (=> setNonEmpty!2087 (= setRes!2087 (and tp!131022 tp_is_empty!2213))))

(declare-fun setElem!2087 () A!417)

(declare-fun setRest!2087 () (Set A!417))

(assert (=> setNonEmpty!2087 (= setRest!2077 (set.union (set.insert setElem!2087 (as set.empty (Set A!417))) setRest!2087))))

(assert (= (and setNonEmpty!2077 condSetEmpty!2087) setIsEmpty!2087))

(assert (= (and setNonEmpty!2077 (not condSetEmpty!2087)) setNonEmpty!2087))

(declare-fun b_lambda!19871 () Bool)

(assert (= b_lambda!19865 (or (and start!45346 b_free!13247) b_lambda!19871)))

(declare-fun b_lambda!19873 () Bool)

(assert (= b_lambda!19867 (or b!472647 b_lambda!19873)))

(declare-fun bs!58595 () Bool)

(declare-fun d!179651 () Bool)

(assert (= bs!58595 (and d!179651 b!472647)))

(assert (=> bs!58595 (= (dynLambda!2950 lambda!14206 (h!9968 lt!210432)) (set.member elm!3 (dynLambda!2944 f!1019 (h!9968 lt!210432))))))

(declare-fun b_lambda!19877 () Bool)

(assert (=> (not b_lambda!19877) (not bs!58595)))

(declare-fun t!73073 () Bool)

(declare-fun tb!47087 () Bool)

(assert (=> (and start!45346 (= f!1019 f!1019) t!73073) tb!47087))

(assert (=> bs!58595 t!73073))

(declare-fun result!51910 () Bool)

(declare-fun b_and!50635 () Bool)

(assert (= b_and!50621 (and (=> t!73073 result!51910) b_and!50635)))

(declare-fun m!746175 () Bool)

(assert (=> bs!58595 m!746175))

(declare-fun m!746177 () Bool)

(assert (=> bs!58595 m!746177))

(assert (=> b!472720 d!179651))

(declare-fun b_lambda!19875 () Bool)

(assert (= b_lambda!19869 (or b!472647 b_lambda!19875)))

(declare-fun bs!58596 () Bool)

(declare-fun d!179653 () Bool)

(assert (= bs!58596 (and d!179653 b!472647)))

(assert (=> bs!58596 (= (dynLambda!2950 lambda!14206 lt!210466) (set.member elm!3 (dynLambda!2944 f!1019 lt!210466)))))

(declare-fun b_lambda!19879 () Bool)

(assert (=> (not b_lambda!19879) (not bs!58596)))

(declare-fun t!73075 () Bool)

(declare-fun tb!47089 () Bool)

(assert (=> (and start!45346 (= f!1019 f!1019) t!73075) tb!47089))

(assert (=> bs!58596 t!73075))

(declare-fun result!51912 () Bool)

(declare-fun b_and!50637 () Bool)

(assert (= b_and!50635 (and (=> t!73075 result!51912) b_and!50637)))

(declare-fun m!746179 () Bool)

(assert (=> bs!58596 m!746179))

(declare-fun m!746181 () Bool)

(assert (=> bs!58596 m!746181))

(assert (=> d!179649 d!179653))

(push 1)

(assert (not b!472717))

(assert (not d!179647))

(assert (not tb!47089))

(assert (not b!472694))

(assert (not tb!47087))

(assert b_and!50637)

(assert (not b_lambda!19857))

(assert (not b_lambda!19875))

(assert (not d!179639))

(assert tp_is_empty!2213)

(assert (not setNonEmpty!2087))

(assert (not b!472704))

(assert (not d!179631))

(assert (not b!472697))

(assert (not d!179633))

(assert (not b_lambda!19873))

(assert (not d!179649))

(assert (not d!179627))

(assert (not b_lambda!19855))

(assert (not b_next!13247))

(assert (not d!179635))

(assert (not b!472718))

(assert (not d!179629))

(assert (not b!472688))

(assert b_and!50633)

(assert (not b_lambda!19877))

(assert (not b_lambda!19879))

(assert (not b_next!13245))

(assert (not b!472721))

(assert (not b_lambda!19871))

(assert (not setNonEmpty!2083))

(assert (not d!179641))

(assert (not d!179637))

(assert (not setNonEmpty!2084))

(assert (not b_lambda!19853))

(assert (not d!179643))

(assert tp_is_empty!2215)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50637)

(assert b_and!50633)

(assert (not b_next!13245))

(assert (not b_next!13247))

(check-sat)

(pop 1)

