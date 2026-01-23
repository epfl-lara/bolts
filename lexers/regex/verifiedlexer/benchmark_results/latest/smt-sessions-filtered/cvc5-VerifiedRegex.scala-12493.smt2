; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695046 () Bool)

(assert start!695046)

(declare-fun b_free!133851 () Bool)

(declare-fun b_next!134641 () Bool)

(assert (=> start!695046 (= b_free!133851 (not b_next!134641))))

(declare-fun tp!1966416 () Bool)

(declare-fun b_and!351065 () Bool)

(assert (=> start!695046 (= tp!1966416 b_and!351065)))

(declare-fun b!7133778 () Bool)

(declare-fun e!4287337 () Bool)

(declare-fun tp_is_empty!45837 () Bool)

(declare-fun tp!1966418 () Bool)

(assert (=> b!7133778 (= e!4287337 (and tp_is_empty!45837 tp!1966418))))

(declare-fun b!7133780 () Bool)

(declare-fun e!4287336 () Bool)

(declare-datatypes ((B!3415 0))(
  ( (B!3416 (val!28179 Int)) )
))
(declare-datatypes ((List!69272 0))(
  ( (Nil!69148) (Cons!69148 (h!75596 B!3415) (t!383281 List!69272)) )
))
(declare-fun l2!1464 () List!69272)

(declare-fun p!2111 () Int)

(declare-fun forall!16946 (List!69272 Int) Bool)

(assert (=> b!7133780 (= e!4287336 (not (forall!16946 l2!1464 p!2111)))))

(declare-fun b!7133781 () Bool)

(declare-fun e!4287335 () Bool)

(declare-fun tp!1966417 () Bool)

(assert (=> b!7133781 (= e!4287335 (and tp_is_empty!45837 tp!1966417))))

(declare-fun b!7133782 () Bool)

(declare-fun res!2910821 () Bool)

(assert (=> b!7133782 (=> (not res!2910821) (not e!4287336))))

(declare-fun l1!1495 () List!69272)

(declare-fun content!14148 (List!69272) (Set B!3415))

(assert (=> b!7133782 (= res!2910821 (set.subset (content!14148 l2!1464) (content!14148 l1!1495)))))

(declare-fun res!2910820 () Bool)

(assert (=> start!695046 (=> (not res!2910820) (not e!4287336))))

(assert (=> start!695046 (= res!2910820 (forall!16946 l1!1495 p!2111))))

(assert (=> start!695046 e!4287336))

(assert (=> start!695046 e!4287335))

(assert (=> start!695046 tp!1966416))

(assert (=> start!695046 e!4287337))

(declare-fun b!7133779 () Bool)

(declare-fun res!2910822 () Bool)

(assert (=> b!7133779 (=> (not res!2910822) (not e!4287336))))

(assert (=> b!7133779 (= res!2910822 (not (is-Cons!69148 l2!1464)))))

(assert (= (and start!695046 res!2910820) b!7133782))

(assert (= (and b!7133782 res!2910821) b!7133779))

(assert (= (and b!7133779 res!2910822) b!7133780))

(assert (= (and start!695046 (is-Cons!69148 l1!1495)) b!7133781))

(assert (= (and start!695046 (is-Cons!69148 l2!1464)) b!7133778))

(declare-fun m!7850742 () Bool)

(assert (=> b!7133780 m!7850742))

(declare-fun m!7850744 () Bool)

(assert (=> b!7133782 m!7850744))

(declare-fun m!7850746 () Bool)

(assert (=> b!7133782 m!7850746))

(declare-fun m!7850748 () Bool)

(assert (=> start!695046 m!7850748))

(push 1)

(assert (not b!7133778))

(assert b_and!351065)

(assert (not b_next!134641))

(assert (not b!7133780))

(assert (not b!7133782))

(assert (not b!7133781))

(assert (not start!695046))

(assert tp_is_empty!45837)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351065)

(assert (not b_next!134641))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226038 () Bool)

(declare-fun c!1330457 () Bool)

(assert (=> d!2226038 (= c!1330457 (is-Nil!69148 l2!1464))))

(declare-fun e!4287349 () (Set B!3415))

(assert (=> d!2226038 (= (content!14148 l2!1464) e!4287349)))

(declare-fun b!7133802 () Bool)

(assert (=> b!7133802 (= e!4287349 (as set.empty (Set B!3415)))))

(declare-fun b!7133803 () Bool)

(assert (=> b!7133803 (= e!4287349 (set.union (set.insert (h!75596 l2!1464) (as set.empty (Set B!3415))) (content!14148 (t!383281 l2!1464))))))

(assert (= (and d!2226038 c!1330457) b!7133802))

(assert (= (and d!2226038 (not c!1330457)) b!7133803))

(declare-fun m!7850758 () Bool)

(assert (=> b!7133803 m!7850758))

(declare-fun m!7850760 () Bool)

(assert (=> b!7133803 m!7850760))

(assert (=> b!7133782 d!2226038))

(declare-fun d!2226040 () Bool)

(declare-fun c!1330458 () Bool)

(assert (=> d!2226040 (= c!1330458 (is-Nil!69148 l1!1495))))

(declare-fun e!4287350 () (Set B!3415))

(assert (=> d!2226040 (= (content!14148 l1!1495) e!4287350)))

(declare-fun b!7133804 () Bool)

(assert (=> b!7133804 (= e!4287350 (as set.empty (Set B!3415)))))

(declare-fun b!7133805 () Bool)

(assert (=> b!7133805 (= e!4287350 (set.union (set.insert (h!75596 l1!1495) (as set.empty (Set B!3415))) (content!14148 (t!383281 l1!1495))))))

(assert (= (and d!2226040 c!1330458) b!7133804))

(assert (= (and d!2226040 (not c!1330458)) b!7133805))

(declare-fun m!7850762 () Bool)

(assert (=> b!7133805 m!7850762))

(declare-fun m!7850764 () Bool)

(assert (=> b!7133805 m!7850764))

(assert (=> b!7133782 d!2226040))

(declare-fun d!2226042 () Bool)

(declare-fun res!2910836 () Bool)

(declare-fun e!4287355 () Bool)

(assert (=> d!2226042 (=> res!2910836 e!4287355)))

(assert (=> d!2226042 (= res!2910836 (is-Nil!69148 l1!1495))))

(assert (=> d!2226042 (= (forall!16946 l1!1495 p!2111) e!4287355)))

(declare-fun b!7133810 () Bool)

(declare-fun e!4287356 () Bool)

(assert (=> b!7133810 (= e!4287355 e!4287356)))

(declare-fun res!2910837 () Bool)

(assert (=> b!7133810 (=> (not res!2910837) (not e!4287356))))

(declare-fun dynLambda!28129 (Int B!3415) Bool)

(assert (=> b!7133810 (= res!2910837 (dynLambda!28129 p!2111 (h!75596 l1!1495)))))

(declare-fun b!7133811 () Bool)

(assert (=> b!7133811 (= e!4287356 (forall!16946 (t!383281 l1!1495) p!2111))))

(assert (= (and d!2226042 (not res!2910836)) b!7133810))

(assert (= (and b!7133810 res!2910837) b!7133811))

(declare-fun b_lambda!272181 () Bool)

(assert (=> (not b_lambda!272181) (not b!7133810)))

(declare-fun t!383284 () Bool)

(declare-fun tb!262091 () Bool)

(assert (=> (and start!695046 (= p!2111 p!2111) t!383284) tb!262091))

(declare-fun result!349686 () Bool)

(assert (=> tb!262091 (= result!349686 true)))

(assert (=> b!7133810 t!383284))

(declare-fun b_and!351069 () Bool)

(assert (= b_and!351065 (and (=> t!383284 result!349686) b_and!351069)))

(declare-fun m!7850766 () Bool)

(assert (=> b!7133810 m!7850766))

(declare-fun m!7850768 () Bool)

(assert (=> b!7133811 m!7850768))

(assert (=> start!695046 d!2226042))

(declare-fun d!2226044 () Bool)

(declare-fun res!2910838 () Bool)

(declare-fun e!4287357 () Bool)

(assert (=> d!2226044 (=> res!2910838 e!4287357)))

(assert (=> d!2226044 (= res!2910838 (is-Nil!69148 l2!1464))))

(assert (=> d!2226044 (= (forall!16946 l2!1464 p!2111) e!4287357)))

(declare-fun b!7133812 () Bool)

(declare-fun e!4287358 () Bool)

(assert (=> b!7133812 (= e!4287357 e!4287358)))

(declare-fun res!2910839 () Bool)

(assert (=> b!7133812 (=> (not res!2910839) (not e!4287358))))

(assert (=> b!7133812 (= res!2910839 (dynLambda!28129 p!2111 (h!75596 l2!1464)))))

(declare-fun b!7133813 () Bool)

(assert (=> b!7133813 (= e!4287358 (forall!16946 (t!383281 l2!1464) p!2111))))

(assert (= (and d!2226044 (not res!2910838)) b!7133812))

(assert (= (and b!7133812 res!2910839) b!7133813))

(declare-fun b_lambda!272183 () Bool)

(assert (=> (not b_lambda!272183) (not b!7133812)))

(declare-fun t!383286 () Bool)

(declare-fun tb!262093 () Bool)

(assert (=> (and start!695046 (= p!2111 p!2111) t!383286) tb!262093))

(declare-fun result!349688 () Bool)

(assert (=> tb!262093 (= result!349688 true)))

(assert (=> b!7133812 t!383286))

(declare-fun b_and!351071 () Bool)

(assert (= b_and!351069 (and (=> t!383286 result!349688) b_and!351071)))

(declare-fun m!7850770 () Bool)

(assert (=> b!7133812 m!7850770))

(declare-fun m!7850772 () Bool)

(assert (=> b!7133813 m!7850772))

(assert (=> b!7133780 d!2226044))

(declare-fun b!7133818 () Bool)

(declare-fun e!4287361 () Bool)

(declare-fun tp!1966430 () Bool)

(assert (=> b!7133818 (= e!4287361 (and tp_is_empty!45837 tp!1966430))))

(assert (=> b!7133781 (= tp!1966417 e!4287361)))

(assert (= (and b!7133781 (is-Cons!69148 (t!383281 l1!1495))) b!7133818))

(declare-fun b!7133819 () Bool)

(declare-fun e!4287362 () Bool)

(declare-fun tp!1966431 () Bool)

(assert (=> b!7133819 (= e!4287362 (and tp_is_empty!45837 tp!1966431))))

(assert (=> b!7133778 (= tp!1966418 e!4287362)))

(assert (= (and b!7133778 (is-Cons!69148 (t!383281 l2!1464))) b!7133819))

(declare-fun b_lambda!272185 () Bool)

(assert (= b_lambda!272183 (or (and start!695046 b_free!133851) b_lambda!272185)))

(declare-fun b_lambda!272187 () Bool)

(assert (= b_lambda!272181 (or (and start!695046 b_free!133851) b_lambda!272187)))

(push 1)

(assert b_and!351071)

(assert (not b_lambda!272187))

(assert (not b_next!134641))

(assert (not b!7133818))

(assert (not b!7133805))

(assert (not b!7133819))

(assert (not b!7133813))

(assert (not b!7133811))

(assert (not b_lambda!272185))

(assert tp_is_empty!45837)

(assert (not b!7133803))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351071)

(assert (not b_next!134641))

(check-sat)

(pop 1)

