; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712296 () Bool)

(assert start!712296)

(declare-fun b_free!133939 () Bool)

(declare-fun b_next!134729 () Bool)

(assert (=> start!712296 (= b_free!133939 (not b_next!134729))))

(declare-fun tp!2075314 () Bool)

(declare-fun b_and!351253 () Bool)

(assert (=> start!712296 (= tp!2075314 b_and!351253)))

(declare-fun b!7312571 () Bool)

(assert (=> b!7312571 true))

(declare-fun e!4377141 () Bool)

(declare-datatypes ((B!3487 0))(
  ( (B!3488 (val!29043 Int)) )
))
(declare-datatypes ((List!71147 0))(
  ( (Nil!71023) (Cons!71023 (h!77471 B!3487) (t!385297 List!71147)) )
))
(declare-fun lRes!24 () List!71147)

(declare-fun lambda!451654 () Int)

(declare-fun forall!17731 (List!71147 Int) Bool)

(assert (=> b!7312571 (= e!4377141 (not (forall!17731 lRes!24 lambda!451654)))))

(declare-fun e!4377137 () Bool)

(assert (=> b!7312571 e!4377137))

(declare-fun res!2954437 () Bool)

(assert (=> b!7312571 (=> (not res!2954437) (not e!4377137))))

(declare-fun lt!2600818 () List!71147)

(declare-fun contains!20766 (List!71147 B!3487) Bool)

(assert (=> b!7312571 (= res!2954437 (contains!20766 lt!2600818 (h!77471 lRes!24)))))

(declare-datatypes ((Unit!164478 0))(
  ( (Unit!164479) )
))
(declare-fun lt!2600819 () Unit!164478)

(declare-fun subseqContains!31 (List!71147 List!71147 B!3487) Unit!164478)

(assert (=> b!7312571 (= lt!2600819 (subseqContains!31 lRes!24 lt!2600818 (h!77471 lRes!24)))))

(declare-fun e!4377138 () Bool)

(assert (=> b!7312571 e!4377138))

(declare-fun res!2954441 () Bool)

(assert (=> b!7312571 (=> (not res!2954441) (not e!4377138))))

(assert (=> b!7312571 (= res!2954441 (forall!17731 (t!385297 lRes!24) lambda!451654))))

(declare-fun lt!2600817 () List!71147)

(declare-datatypes ((A!785 0))(
  ( (A!786 (val!29044 Int)) )
))
(declare-fun s!1445 () (Set A!785))

(declare-fun f!903 () Int)

(declare-fun toList!11556 ((Set B!3487)) List!71147)

(declare-fun flatMap!3005 ((Set A!785) Int) (Set B!3487))

(assert (=> b!7312571 (= lt!2600817 (toList!11556 (flatMap!3005 s!1445 f!903)))))

(declare-fun lt!2600816 () Unit!164478)

(declare-fun elmt!124 () A!785)

(declare-fun lemmaFlatMapOnSingletonSetList2!15 ((Set A!785) A!785 Int List!71147) Unit!164478)

(assert (=> b!7312571 (= lt!2600816 (lemmaFlatMapOnSingletonSetList2!15 s!1445 elmt!124 f!903 (t!385297 lRes!24)))))

(declare-fun lt!2600815 () Unit!164478)

(declare-fun subseqTail!55 (List!71147 List!71147) Unit!164478)

(assert (=> b!7312571 (= lt!2600815 (subseqTail!55 lRes!24 lt!2600818))))

(declare-fun b!7312572 () Bool)

(declare-fun e!4377139 () Bool)

(assert (=> b!7312572 (= e!4377139 e!4377141)))

(declare-fun res!2954439 () Bool)

(assert (=> b!7312572 (=> (not res!2954439) (not e!4377141))))

(declare-fun subseq!804 (List!71147 List!71147) Bool)

(assert (=> b!7312572 (= res!2954439 (subseq!804 lRes!24 lt!2600818))))

(declare-fun dynLambda!29071 (Int A!785) (Set B!3487))

(assert (=> b!7312572 (= lt!2600818 (toList!11556 (dynLambda!29071 f!903 elmt!124)))))

(declare-fun b!7312573 () Bool)

(declare-fun e!4377140 () Bool)

(declare-fun tp_is_empty!47367 () Bool)

(declare-fun tp!2075316 () Bool)

(assert (=> b!7312573 (= e!4377140 (and tp_is_empty!47367 tp!2075316))))

(declare-fun b!7312574 () Bool)

(declare-fun res!2954436 () Bool)

(assert (=> b!7312574 (=> (not res!2954436) (not e!4377137))))

(declare-fun empty!3091 () A!785)

(declare-fun flatMapPost!93 ((Set A!785) Int B!3487) A!785)

(assert (=> b!7312574 (= res!2954436 (= (flatMapPost!93 s!1445 f!903 (h!77471 lRes!24)) empty!3091))))

(assert (=> b!7312574 true))

(declare-fun tp_is_empty!47365 () Bool)

(assert (=> b!7312574 tp_is_empty!47365))

(declare-fun b!7312575 () Bool)

(assert (=> b!7312575 (= e!4377137 (contains!20766 lt!2600817 (h!77471 lRes!24)))))

(declare-fun res!2954438 () Bool)

(assert (=> start!712296 (=> (not res!2954438) (not e!4377139))))

(assert (=> start!712296 (= res!2954438 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!785)))))))

(assert (=> start!712296 e!4377139))

(declare-fun condSetEmpty!53950 () Bool)

(assert (=> start!712296 (= condSetEmpty!53950 (= s!1445 (as set.empty (Set A!785))))))

(declare-fun setRes!53950 () Bool)

(assert (=> start!712296 setRes!53950))

(assert (=> start!712296 tp_is_empty!47365))

(assert (=> start!712296 e!4377140))

(assert (=> start!712296 tp!2075314))

(declare-fun b!7312576 () Bool)

(assert (=> b!7312576 (= e!4377138 (forall!17731 (t!385297 lRes!24) lambda!451654))))

(declare-fun b!7312577 () Bool)

(declare-fun res!2954440 () Bool)

(assert (=> b!7312577 (=> (not res!2954440) (not e!4377141))))

(assert (=> b!7312577 (= res!2954440 (is-Cons!71023 lRes!24))))

(declare-fun setNonEmpty!53950 () Bool)

(declare-fun tp!2075315 () Bool)

(assert (=> setNonEmpty!53950 (= setRes!53950 (and tp!2075315 tp_is_empty!47365))))

(declare-fun setElem!53950 () A!785)

(declare-fun setRest!53950 () (Set A!785))

(assert (=> setNonEmpty!53950 (= s!1445 (set.union (set.insert setElem!53950 (as set.empty (Set A!785))) setRest!53950))))

(declare-fun setIsEmpty!53950 () Bool)

(assert (=> setIsEmpty!53950 setRes!53950))

(assert (= (and start!712296 res!2954438) b!7312572))

(assert (= (and b!7312572 res!2954439) b!7312577))

(assert (= (and b!7312577 res!2954440) b!7312571))

(assert (= (and b!7312571 res!2954441) b!7312576))

(assert (= (and b!7312571 res!2954437) b!7312574))

(assert (= (and b!7312574 res!2954436) b!7312575))

(assert (= (and start!712296 condSetEmpty!53950) setIsEmpty!53950))

(assert (= (and start!712296 (not condSetEmpty!53950)) setNonEmpty!53950))

(assert (= (and start!712296 (is-Cons!71023 lRes!24)) b!7312573))

(declare-fun b_lambda!282221 () Bool)

(assert (=> (not b_lambda!282221) (not b!7312572)))

(declare-fun t!385296 () Bool)

(declare-fun tb!262181 () Bool)

(assert (=> (and start!712296 (= f!903 f!903) t!385296) tb!262181))

(assert (=> b!7312572 t!385296))

(declare-fun result!352780 () Bool)

(declare-fun b_and!351255 () Bool)

(assert (= b_and!351253 (and (=> t!385296 result!352780) b_and!351255)))

(declare-fun m!7976836 () Bool)

(assert (=> b!7312571 m!7976836))

(declare-fun m!7976838 () Bool)

(assert (=> b!7312571 m!7976838))

(declare-fun m!7976840 () Bool)

(assert (=> b!7312571 m!7976840))

(declare-fun m!7976842 () Bool)

(assert (=> b!7312571 m!7976842))

(declare-fun m!7976844 () Bool)

(assert (=> b!7312571 m!7976844))

(declare-fun m!7976846 () Bool)

(assert (=> b!7312571 m!7976846))

(declare-fun m!7976848 () Bool)

(assert (=> b!7312571 m!7976848))

(declare-fun m!7976850 () Bool)

(assert (=> b!7312571 m!7976850))

(assert (=> b!7312571 m!7976840))

(declare-fun m!7976852 () Bool)

(assert (=> b!7312575 m!7976852))

(assert (=> b!7312576 m!7976848))

(declare-fun m!7976854 () Bool)

(assert (=> start!712296 m!7976854))

(declare-fun m!7976856 () Bool)

(assert (=> b!7312572 m!7976856))

(declare-fun m!7976858 () Bool)

(assert (=> b!7312572 m!7976858))

(assert (=> b!7312572 m!7976858))

(declare-fun m!7976860 () Bool)

(assert (=> b!7312572 m!7976860))

(declare-fun m!7976862 () Bool)

(assert (=> b!7312574 m!7976862))

(push 1)

(assert b_and!351255)

(assert tp_is_empty!47365)

(assert (not b!7312573))

(assert (not b!7312575))

(assert (not tb!262181))

(assert (not b!7312576))

(assert (not b!7312571))

(assert (not b_next!134729))

(assert (not setNonEmpty!53950))

(assert tp_is_empty!47367)

(assert (not b!7312572))

(assert (not b_lambda!282221))

(assert (not b!7312574))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351255)

(assert (not b_next!134729))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282225 () Bool)

(assert (= b_lambda!282221 (or (and start!712296 b_free!133939) b_lambda!282225)))

(push 1)

(assert b_and!351255)

(assert tp_is_empty!47365)

(assert (not b!7312573))

(assert (not b!7312575))

(assert (not b_lambda!282225))

(assert (not tb!262181))

(assert (not b!7312576))

(assert (not b!7312574))

(assert (not b!7312571))

(assert (not b_next!134729))

(assert (not setNonEmpty!53950))

(assert tp_is_empty!47367)

(assert (not b!7312572))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351255)

(assert (not b_next!134729))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270561 () Bool)

(declare-fun lt!2600837 () Bool)

(declare-fun content!14853 (List!71147) (Set B!3487))

(assert (=> d!2270561 (= lt!2600837 (set.member (h!77471 lRes!24) (content!14853 lt!2600817)))))

(declare-fun e!4377162 () Bool)

(assert (=> d!2270561 (= lt!2600837 e!4377162)))

(declare-fun res!2954465 () Bool)

(assert (=> d!2270561 (=> (not res!2954465) (not e!4377162))))

(assert (=> d!2270561 (= res!2954465 (is-Cons!71023 lt!2600817))))

(assert (=> d!2270561 (= (contains!20766 lt!2600817 (h!77471 lRes!24)) lt!2600837)))

(declare-fun b!7312607 () Bool)

(declare-fun e!4377161 () Bool)

(assert (=> b!7312607 (= e!4377162 e!4377161)))

(declare-fun res!2954464 () Bool)

(assert (=> b!7312607 (=> res!2954464 e!4377161)))

(assert (=> b!7312607 (= res!2954464 (= (h!77471 lt!2600817) (h!77471 lRes!24)))))

(declare-fun b!7312608 () Bool)

(assert (=> b!7312608 (= e!4377161 (contains!20766 (t!385297 lt!2600817) (h!77471 lRes!24)))))

(assert (= (and d!2270561 res!2954465) b!7312607))

(assert (= (and b!7312607 (not res!2954464)) b!7312608))

(declare-fun m!7976892 () Bool)

(assert (=> d!2270561 m!7976892))

(declare-fun m!7976894 () Bool)

(assert (=> d!2270561 m!7976894))

(declare-fun m!7976896 () Bool)

(assert (=> b!7312608 m!7976896))

(assert (=> b!7312575 d!2270561))

(declare-fun d!2270563 () Bool)

(assert (=> d!2270563 true))

(assert (=> d!2270563 true))

(declare-fun order!29083 () Int)

(declare-fun lambda!451664 () Int)

(declare-fun order!29081 () Int)

(declare-fun dynLambda!29073 (Int Int) Int)

(declare-fun dynLambda!29074 (Int Int) Int)

(assert (=> d!2270563 (< (dynLambda!29073 order!29081 f!903) (dynLambda!29074 order!29083 lambda!451664))))

(declare-fun exists!4513 ((Set A!785) Int) Bool)

(assert (=> d!2270563 (= (set.member (h!77471 lRes!24) (flatMap!3005 s!1445 f!903)) (exists!4513 s!1445 lambda!451664))))

(declare-fun lt!2600840 () A!785)

(declare-fun choose!56644 ((Set A!785) Int B!3487) A!785)

(assert (=> d!2270563 (= lt!2600840 (choose!56644 s!1445 f!903 (h!77471 lRes!24)))))

(assert (=> d!2270563 (= (flatMapPost!93 s!1445 f!903 (h!77471 lRes!24)) lt!2600840)))

(declare-fun bs!1914575 () Bool)

(assert (= bs!1914575 d!2270563))

(assert (=> bs!1914575 m!7976840))

(declare-fun m!7976898 () Bool)

(assert (=> bs!1914575 m!7976898))

(declare-fun m!7976900 () Bool)

(assert (=> bs!1914575 m!7976900))

(declare-fun m!7976902 () Bool)

(assert (=> bs!1914575 m!7976902))

(assert (=> b!7312574 d!2270563))

(declare-fun b!7312625 () Bool)

(declare-fun e!4377172 () Bool)

(assert (=> b!7312625 (= e!4377172 (subseq!804 lRes!24 (t!385297 lt!2600818)))))

(declare-fun b!7312624 () Bool)

(declare-fun e!4377173 () Bool)

(assert (=> b!7312624 (= e!4377173 (subseq!804 (t!385297 lRes!24) (t!385297 lt!2600818)))))

(declare-fun d!2270565 () Bool)

(declare-fun res!2954476 () Bool)

(declare-fun e!4377174 () Bool)

(assert (=> d!2270565 (=> res!2954476 e!4377174)))

(assert (=> d!2270565 (= res!2954476 (is-Nil!71023 lRes!24))))

(assert (=> d!2270565 (= (subseq!804 lRes!24 lt!2600818) e!4377174)))

(declare-fun b!7312623 () Bool)

(declare-fun e!4377171 () Bool)

(assert (=> b!7312623 (= e!4377171 e!4377172)))

(declare-fun res!2954475 () Bool)

(assert (=> b!7312623 (=> res!2954475 e!4377172)))

(assert (=> b!7312623 (= res!2954475 e!4377173)))

(declare-fun res!2954474 () Bool)

(assert (=> b!7312623 (=> (not res!2954474) (not e!4377173))))

(assert (=> b!7312623 (= res!2954474 (= (h!77471 lRes!24) (h!77471 lt!2600818)))))

(declare-fun b!7312622 () Bool)

(assert (=> b!7312622 (= e!4377174 e!4377171)))

(declare-fun res!2954477 () Bool)

(assert (=> b!7312622 (=> (not res!2954477) (not e!4377171))))

(assert (=> b!7312622 (= res!2954477 (is-Cons!71023 lt!2600818))))

(assert (= (and d!2270565 (not res!2954476)) b!7312622))

(assert (= (and b!7312622 res!2954477) b!7312623))

(assert (= (and b!7312623 res!2954474) b!7312624))

(assert (= (and b!7312623 (not res!2954475)) b!7312625))

(declare-fun m!7976904 () Bool)

(assert (=> b!7312625 m!7976904))

(declare-fun m!7976906 () Bool)

(assert (=> b!7312624 m!7976906))

(assert (=> b!7312572 d!2270565))

(declare-fun d!2270567 () Bool)

(declare-fun e!4377177 () Bool)

(assert (=> d!2270567 e!4377177))

(declare-fun res!2954480 () Bool)

(assert (=> d!2270567 (=> (not res!2954480) (not e!4377177))))

(declare-fun lt!2600843 () List!71147)

(declare-fun noDuplicate!3034 (List!71147) Bool)

(assert (=> d!2270567 (= res!2954480 (noDuplicate!3034 lt!2600843))))

(declare-fun choose!56645 ((Set B!3487)) List!71147)

(assert (=> d!2270567 (= lt!2600843 (choose!56645 (dynLambda!29071 f!903 elmt!124)))))

(assert (=> d!2270567 (= (toList!11556 (dynLambda!29071 f!903 elmt!124)) lt!2600843)))

(declare-fun b!7312628 () Bool)

(assert (=> b!7312628 (= e!4377177 (= (content!14853 lt!2600843) (dynLambda!29071 f!903 elmt!124)))))

(assert (= (and d!2270567 res!2954480) b!7312628))

(declare-fun m!7976908 () Bool)

(assert (=> d!2270567 m!7976908))

(assert (=> d!2270567 m!7976858))

(declare-fun m!7976910 () Bool)

(assert (=> d!2270567 m!7976910))

(declare-fun m!7976912 () Bool)

(assert (=> b!7312628 m!7976912))

(assert (=> b!7312572 d!2270567))

(declare-fun d!2270569 () Bool)

(declare-fun res!2954485 () Bool)

(declare-fun e!4377182 () Bool)

(assert (=> d!2270569 (=> res!2954485 e!4377182)))

(assert (=> d!2270569 (= res!2954485 (is-Nil!71023 (t!385297 lRes!24)))))

(assert (=> d!2270569 (= (forall!17731 (t!385297 lRes!24) lambda!451654) e!4377182)))

(declare-fun b!7312633 () Bool)

(declare-fun e!4377183 () Bool)

(assert (=> b!7312633 (= e!4377182 e!4377183)))

(declare-fun res!2954486 () Bool)

(assert (=> b!7312633 (=> (not res!2954486) (not e!4377183))))

(declare-fun dynLambda!29075 (Int B!3487) Bool)

(assert (=> b!7312633 (= res!2954486 (dynLambda!29075 lambda!451654 (h!77471 (t!385297 lRes!24))))))

(declare-fun b!7312634 () Bool)

(assert (=> b!7312634 (= e!4377183 (forall!17731 (t!385297 (t!385297 lRes!24)) lambda!451654))))

(assert (= (and d!2270569 (not res!2954485)) b!7312633))

(assert (= (and b!7312633 res!2954486) b!7312634))

(declare-fun b_lambda!282229 () Bool)

(assert (=> (not b_lambda!282229) (not b!7312633)))

(declare-fun m!7976914 () Bool)

(assert (=> b!7312633 m!7976914))

(declare-fun m!7976916 () Bool)

(assert (=> b!7312634 m!7976916))

(assert (=> b!7312576 d!2270569))

(declare-fun d!2270571 () Bool)

(declare-fun res!2954487 () Bool)

(declare-fun e!4377184 () Bool)

(assert (=> d!2270571 (=> res!2954487 e!4377184)))

(assert (=> d!2270571 (= res!2954487 (is-Nil!71023 lRes!24))))

(assert (=> d!2270571 (= (forall!17731 lRes!24 lambda!451654) e!4377184)))

(declare-fun b!7312635 () Bool)

(declare-fun e!4377185 () Bool)

(assert (=> b!7312635 (= e!4377184 e!4377185)))

(declare-fun res!2954488 () Bool)

(assert (=> b!7312635 (=> (not res!2954488) (not e!4377185))))

(assert (=> b!7312635 (= res!2954488 (dynLambda!29075 lambda!451654 (h!77471 lRes!24)))))

(declare-fun b!7312636 () Bool)

(assert (=> b!7312636 (= e!4377185 (forall!17731 (t!385297 lRes!24) lambda!451654))))

(assert (= (and d!2270571 (not res!2954487)) b!7312635))

(assert (= (and b!7312635 res!2954488) b!7312636))

(declare-fun b_lambda!282231 () Bool)

(assert (=> (not b_lambda!282231) (not b!7312635)))

(declare-fun m!7976918 () Bool)

(assert (=> b!7312635 m!7976918))

(assert (=> b!7312636 m!7976848))

(assert (=> b!7312571 d!2270571))

(declare-fun d!2270573 () Bool)

(declare-fun e!4377186 () Bool)

(assert (=> d!2270573 e!4377186))

(declare-fun res!2954489 () Bool)

(assert (=> d!2270573 (=> (not res!2954489) (not e!4377186))))

(declare-fun lt!2600844 () List!71147)

(assert (=> d!2270573 (= res!2954489 (noDuplicate!3034 lt!2600844))))

(assert (=> d!2270573 (= lt!2600844 (choose!56645 (flatMap!3005 s!1445 f!903)))))

(assert (=> d!2270573 (= (toList!11556 (flatMap!3005 s!1445 f!903)) lt!2600844)))

(declare-fun b!7312637 () Bool)

(assert (=> b!7312637 (= e!4377186 (= (content!14853 lt!2600844) (flatMap!3005 s!1445 f!903)))))

(assert (= (and d!2270573 res!2954489) b!7312637))

(declare-fun m!7976920 () Bool)

(assert (=> d!2270573 m!7976920))

(assert (=> d!2270573 m!7976840))

(declare-fun m!7976922 () Bool)

(assert (=> d!2270573 m!7976922))

(declare-fun m!7976924 () Bool)

(assert (=> b!7312637 m!7976924))

(assert (=> b!7312571 d!2270573))

(assert (=> b!7312571 d!2270569))

(declare-fun d!2270575 () Bool)

(assert (=> d!2270575 (contains!20766 lt!2600818 (h!77471 lRes!24))))

(declare-fun lt!2600847 () Unit!164478)

(declare-fun choose!56646 (List!71147 List!71147 B!3487) Unit!164478)

(assert (=> d!2270575 (= lt!2600847 (choose!56646 lRes!24 lt!2600818 (h!77471 lRes!24)))))

(declare-fun e!4377189 () Bool)

(assert (=> d!2270575 e!4377189))

(declare-fun res!2954492 () Bool)

(assert (=> d!2270575 (=> (not res!2954492) (not e!4377189))))

(assert (=> d!2270575 (= res!2954492 (subseq!804 lRes!24 lt!2600818))))

(assert (=> d!2270575 (= (subseqContains!31 lRes!24 lt!2600818 (h!77471 lRes!24)) lt!2600847)))

(declare-fun b!7312640 () Bool)

(assert (=> b!7312640 (= e!4377189 (contains!20766 lRes!24 (h!77471 lRes!24)))))

(assert (= (and d!2270575 res!2954492) b!7312640))

(assert (=> d!2270575 m!7976838))

(declare-fun m!7976926 () Bool)

(assert (=> d!2270575 m!7976926))

(assert (=> d!2270575 m!7976856))

(declare-fun m!7976928 () Bool)

(assert (=> b!7312640 m!7976928))

(assert (=> b!7312571 d!2270575))

(declare-fun d!2270577 () Bool)

(declare-fun lt!2600848 () Bool)

(assert (=> d!2270577 (= lt!2600848 (set.member (h!77471 lRes!24) (content!14853 lt!2600818)))))

(declare-fun e!4377191 () Bool)

(assert (=> d!2270577 (= lt!2600848 e!4377191)))

(declare-fun res!2954494 () Bool)

(assert (=> d!2270577 (=> (not res!2954494) (not e!4377191))))

(assert (=> d!2270577 (= res!2954494 (is-Cons!71023 lt!2600818))))

(assert (=> d!2270577 (= (contains!20766 lt!2600818 (h!77471 lRes!24)) lt!2600848)))

(declare-fun b!7312641 () Bool)

(declare-fun e!4377190 () Bool)

(assert (=> b!7312641 (= e!4377191 e!4377190)))

(declare-fun res!2954493 () Bool)

(assert (=> b!7312641 (=> res!2954493 e!4377190)))

(assert (=> b!7312641 (= res!2954493 (= (h!77471 lt!2600818) (h!77471 lRes!24)))))

(declare-fun b!7312642 () Bool)

(assert (=> b!7312642 (= e!4377190 (contains!20766 (t!385297 lt!2600818) (h!77471 lRes!24)))))

(assert (= (and d!2270577 res!2954494) b!7312641))

(assert (= (and b!7312641 (not res!2954493)) b!7312642))

(declare-fun m!7976930 () Bool)

(assert (=> d!2270577 m!7976930))

(declare-fun m!7976932 () Bool)

(assert (=> d!2270577 m!7976932))

(declare-fun m!7976934 () Bool)

(assert (=> b!7312642 m!7976934))

(assert (=> b!7312571 d!2270577))

(declare-fun b!7312657 () Bool)

(declare-fun c!1357659 () Bool)

(declare-fun isEmpty!40845 (List!71147) Bool)

(assert (=> b!7312657 (= c!1357659 (not (isEmpty!40845 (t!385297 lRes!24))))))

(declare-fun e!4377201 () Unit!164478)

(declare-fun e!4377203 () Unit!164478)

(assert (=> b!7312657 (= e!4377201 e!4377203)))

(declare-fun b!7312659 () Bool)

(declare-fun call!665730 () Unit!164478)

(assert (=> b!7312659 (= e!4377203 call!665730)))

(declare-fun b!7312660 () Bool)

(declare-fun e!4377202 () Unit!164478)

(declare-fun Unit!164482 () Unit!164478)

(assert (=> b!7312660 (= e!4377202 Unit!164482)))

(declare-fun b!7312661 () Bool)

(assert (=> b!7312661 (= e!4377201 call!665730)))

(declare-fun b!7312662 () Bool)

(assert (=> b!7312662 (= e!4377202 e!4377201)))

(declare-fun c!1357657 () Bool)

(assert (=> b!7312662 (= c!1357657 (subseq!804 lRes!24 (t!385297 lt!2600818)))))

(declare-fun bm!665725 () Bool)

(assert (=> bm!665725 (= call!665730 (subseqTail!55 (ite c!1357657 lRes!24 (t!385297 lRes!24)) (t!385297 lt!2600818)))))

(declare-fun b!7312663 () Bool)

(declare-fun e!4377200 () Bool)

(assert (=> b!7312663 (= e!4377200 (subseq!804 lRes!24 lt!2600818))))

(declare-fun b!7312658 () Bool)

(declare-fun Unit!164483 () Unit!164478)

(assert (=> b!7312658 (= e!4377203 Unit!164483)))

(declare-fun d!2270579 () Bool)

(declare-fun tail!14626 (List!71147) List!71147)

(assert (=> d!2270579 (subseq!804 (tail!14626 lRes!24) lt!2600818)))

(declare-fun lt!2600851 () Unit!164478)

(assert (=> d!2270579 (= lt!2600851 e!4377202)))

(declare-fun c!1357658 () Bool)

(assert (=> d!2270579 (= c!1357658 (and (is-Cons!71023 lRes!24) (is-Cons!71023 lt!2600818)))))

(assert (=> d!2270579 e!4377200))

(declare-fun res!2954497 () Bool)

(assert (=> d!2270579 (=> (not res!2954497) (not e!4377200))))

(assert (=> d!2270579 (= res!2954497 (not (isEmpty!40845 lRes!24)))))

(assert (=> d!2270579 (= (subseqTail!55 lRes!24 lt!2600818) lt!2600851)))

(assert (= (and d!2270579 res!2954497) b!7312663))

(assert (= (and d!2270579 c!1357658) b!7312662))

(assert (= (and d!2270579 (not c!1357658)) b!7312660))

(assert (= (and b!7312662 c!1357657) b!7312661))

(assert (= (and b!7312662 (not c!1357657)) b!7312657))

(assert (= (and b!7312657 c!1357659) b!7312659))

(assert (= (and b!7312657 (not c!1357659)) b!7312658))

(assert (= (or b!7312661 b!7312659) bm!665725))

(declare-fun m!7976936 () Bool)

(assert (=> d!2270579 m!7976936))

(assert (=> d!2270579 m!7976936))

(declare-fun m!7976938 () Bool)

(assert (=> d!2270579 m!7976938))

(declare-fun m!7976940 () Bool)

(assert (=> d!2270579 m!7976940))

(declare-fun m!7976942 () Bool)

(assert (=> bm!665725 m!7976942))

(declare-fun m!7976944 () Bool)

(assert (=> b!7312657 m!7976944))

(assert (=> b!7312663 m!7976856))

(assert (=> b!7312662 m!7976904))

(assert (=> b!7312571 d!2270579))

(declare-fun bs!1914576 () Bool)

(declare-fun d!2270581 () Bool)

(assert (= bs!1914576 (and d!2270581 b!7312571)))

(declare-fun lt!2600857 () List!71147)

(declare-fun lambda!451667 () Int)

(assert (=> bs!1914576 (= (= lt!2600857 lt!2600817) (= lambda!451667 lambda!451654))))

(assert (=> d!2270581 true))

(assert (=> d!2270581 (forall!17731 (t!385297 lRes!24) lambda!451667)))

(assert (=> d!2270581 (= lt!2600857 (toList!11556 (flatMap!3005 s!1445 f!903)))))

(declare-fun lt!2600856 () Unit!164478)

(declare-fun choose!56647 ((Set A!785) A!785 Int List!71147) Unit!164478)

(assert (=> d!2270581 (= lt!2600856 (choose!56647 s!1445 elmt!124 f!903 (t!385297 lRes!24)))))

(assert (=> d!2270581 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!785))))))

(assert (=> d!2270581 (= (lemmaFlatMapOnSingletonSetList2!15 s!1445 elmt!124 f!903 (t!385297 lRes!24)) lt!2600856)))

(declare-fun bs!1914577 () Bool)

(assert (= bs!1914577 d!2270581))

(declare-fun m!7976946 () Bool)

(assert (=> bs!1914577 m!7976946))

(assert (=> bs!1914577 m!7976854))

(assert (=> bs!1914577 m!7976840))

(assert (=> bs!1914577 m!7976842))

(declare-fun m!7976948 () Bool)

(assert (=> bs!1914577 m!7976948))

(assert (=> bs!1914577 m!7976840))

(assert (=> b!7312571 d!2270581))

(declare-fun d!2270583 () Bool)

(declare-fun choose!56648 ((Set A!785) Int) (Set B!3487))

(assert (=> d!2270583 (= (flatMap!3005 s!1445 f!903) (choose!56648 s!1445 f!903))))

(declare-fun bs!1914578 () Bool)

(assert (= bs!1914578 d!2270583))

(declare-fun m!7976950 () Bool)

(assert (=> bs!1914578 m!7976950))

(assert (=> b!7312571 d!2270583))

(declare-fun condSetEmpty!53956 () Bool)

(assert (=> tb!262181 (= condSetEmpty!53956 (= (dynLambda!29071 f!903 elmt!124) (as set.empty (Set B!3487))))))

(declare-fun setRes!53956 () Bool)

(assert (=> tb!262181 (= result!352780 setRes!53956)))

(declare-fun setIsEmpty!53956 () Bool)

(assert (=> setIsEmpty!53956 setRes!53956))

(declare-fun setNonEmpty!53956 () Bool)

(declare-fun tp!2075328 () Bool)

(assert (=> setNonEmpty!53956 (= setRes!53956 (and tp!2075328 tp_is_empty!47367))))

(declare-fun setElem!53956 () B!3487)

(declare-fun setRest!53956 () (Set B!3487))

(assert (=> setNonEmpty!53956 (= (dynLambda!29071 f!903 elmt!124) (set.union (set.insert setElem!53956 (as set.empty (Set B!3487))) setRest!53956))))

(assert (= (and tb!262181 condSetEmpty!53956) setIsEmpty!53956))

(assert (= (and tb!262181 (not condSetEmpty!53956)) setNonEmpty!53956))

(declare-fun condSetEmpty!53959 () Bool)

(assert (=> setNonEmpty!53950 (= condSetEmpty!53959 (= setRest!53950 (as set.empty (Set A!785))))))

(declare-fun setRes!53959 () Bool)

(assert (=> setNonEmpty!53950 (= tp!2075315 setRes!53959)))

(declare-fun setIsEmpty!53959 () Bool)

(assert (=> setIsEmpty!53959 setRes!53959))

(declare-fun setNonEmpty!53959 () Bool)

(declare-fun tp!2075331 () Bool)

(assert (=> setNonEmpty!53959 (= setRes!53959 (and tp!2075331 tp_is_empty!47365))))

(declare-fun setElem!53959 () A!785)

(declare-fun setRest!53959 () (Set A!785))

(assert (=> setNonEmpty!53959 (= setRest!53950 (set.union (set.insert setElem!53959 (as set.empty (Set A!785))) setRest!53959))))

(assert (= (and setNonEmpty!53950 condSetEmpty!53959) setIsEmpty!53959))

(assert (= (and setNonEmpty!53950 (not condSetEmpty!53959)) setNonEmpty!53959))

(declare-fun b!7312672 () Bool)

(declare-fun e!4377206 () Bool)

(declare-fun tp!2075334 () Bool)

(assert (=> b!7312672 (= e!4377206 (and tp_is_empty!47367 tp!2075334))))

(assert (=> b!7312573 (= tp!2075316 e!4377206)))

(assert (= (and b!7312573 (is-Cons!71023 (t!385297 lRes!24))) b!7312672))

(declare-fun b_lambda!282233 () Bool)

(assert (= b_lambda!282229 (or b!7312571 b_lambda!282233)))

(declare-fun bs!1914579 () Bool)

(declare-fun d!2270587 () Bool)

(assert (= bs!1914579 (and d!2270587 b!7312571)))

(assert (=> bs!1914579 (= (dynLambda!29075 lambda!451654 (h!77471 (t!385297 lRes!24))) (contains!20766 lt!2600817 (h!77471 (t!385297 lRes!24))))))

(declare-fun m!7976952 () Bool)

(assert (=> bs!1914579 m!7976952))

(assert (=> b!7312633 d!2270587))

(declare-fun b_lambda!282235 () Bool)

(assert (= b_lambda!282231 (or b!7312571 b_lambda!282235)))

(declare-fun bs!1914580 () Bool)

(declare-fun d!2270589 () Bool)

(assert (= bs!1914580 (and d!2270589 b!7312571)))

(assert (=> bs!1914580 (= (dynLambda!29075 lambda!451654 (h!77471 lRes!24)) (contains!20766 lt!2600817 (h!77471 lRes!24)))))

(assert (=> bs!1914580 m!7976852))

(assert (=> b!7312635 d!2270589))

(push 1)

(assert (not b!7312628))

(assert (not d!2270583))

(assert (not b!7312663))

(assert tp_is_empty!47367)

(assert (not b_next!134729))

(assert b_and!351255)

(assert (not b!7312625))

(assert (not b_lambda!282233))

(assert tp_is_empty!47365)

(assert (not b_lambda!282235))

(assert (not b!7312634))

(assert (not d!2270567))

(assert (not b!7312637))

(assert (not d!2270575))

(assert (not b!7312624))

(assert (not bm!665725))

(assert (not d!2270563))

(assert (not bs!1914580))

(assert (not b_lambda!282225))

(assert (not b!7312672))

(assert (not d!2270579))

(assert (not d!2270577))

(assert (not d!2270561))

(assert (not b!7312642))

(assert (not b!7312662))

(assert (not b!7312636))

(assert (not setNonEmpty!53959))

(assert (not b!7312640))

(assert (not b!7312608))

(assert (not setNonEmpty!53956))

(assert (not bs!1914579))

(assert (not b!7312657))

(assert (not d!2270573))

(assert (not d!2270581))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351255)

(assert (not b_next!134729))

(check-sat)

(pop 1)

