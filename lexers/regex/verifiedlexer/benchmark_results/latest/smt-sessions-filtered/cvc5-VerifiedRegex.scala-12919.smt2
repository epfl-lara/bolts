; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712482 () Bool)

(assert start!712482)

(declare-fun b_free!133975 () Bool)

(declare-fun b_next!134765 () Bool)

(assert (=> start!712482 (= b_free!133975 (not b_next!134765))))

(declare-fun tp!2075582 () Bool)

(declare-fun b_and!351327 () Bool)

(assert (=> start!712482 (= tp!2075582 b_and!351327)))

(declare-fun b!7313445 () Bool)

(assert (=> b!7313445 true))

(declare-fun b!7313447 () Bool)

(assert (=> b!7313447 true))

(declare-fun f!883 () Int)

(declare-fun order!29095 () Int)

(declare-fun order!29093 () Int)

(declare-fun lambda!451757 () Int)

(declare-fun dynLambda!29096 (Int Int) Int)

(declare-fun dynLambda!29097 (Int Int) Int)

(assert (=> b!7313447 (< (dynLambda!29096 order!29093 f!883) (dynLambda!29097 order!29095 lambda!451757))))

(assert (=> b!7313447 true))

(declare-fun e!4377783 () Bool)

(declare-fun e!4377784 () Bool)

(assert (=> b!7313445 (= e!4377783 (not e!4377784))))

(declare-fun res!2955005 () Bool)

(assert (=> b!7313445 (=> res!2955005 e!4377784)))

(declare-datatypes ((B!3523 0))(
  ( (B!3524 (val!29079 Int)) )
))
(declare-datatypes ((List!71165 0))(
  ( (Nil!71041) (Cons!71041 (h!77489 B!3523) (t!385349 List!71165)) )
))
(declare-fun lRes!18 () List!71165)

(declare-fun lt!2601131 () (Set B!3523))

(assert (=> b!7313445 (= res!2955005 (not (set.member (h!77489 lRes!18) lt!2601131)))))

(declare-datatypes ((Unit!164513 0))(
  ( (Unit!164514) )
))
(declare-fun lt!2601132 () Unit!164513)

(declare-fun lt!2601128 () List!71165)

(declare-fun subseqContains!39 (List!71165 List!71165 B!3523) Unit!164513)

(assert (=> b!7313445 (= lt!2601132 (subseqContains!39 lRes!18 lt!2601128 (h!77489 lRes!18)))))

(declare-fun e!4377780 () Bool)

(assert (=> b!7313445 e!4377780))

(declare-fun res!2955002 () Bool)

(assert (=> b!7313445 (=> (not res!2955002) (not e!4377780))))

(declare-fun lambda!451756 () Int)

(declare-fun forall!17743 (List!71165 Int) Bool)

(assert (=> b!7313445 (= res!2955002 (forall!17743 (t!385349 lRes!18) lambda!451756))))

(declare-fun lt!2601130 () List!71165)

(declare-datatypes ((A!821 0))(
  ( (A!822 (val!29080 Int)) )
))
(declare-fun elmt!118 () A!821)

(declare-fun toList!11574 ((Set B!3523)) List!71165)

(declare-fun dynLambda!29098 (Int A!821) (Set B!3523))

(assert (=> b!7313445 (= lt!2601130 (toList!11574 (dynLambda!29098 f!883 elmt!118)))))

(declare-fun s!1437 () (Set A!821))

(declare-fun lt!2601129 () Unit!164513)

(declare-fun lemmaFlatMapOnSingletonSetList1!15 ((Set A!821) A!821 Int List!71165) Unit!164513)

(assert (=> b!7313445 (= lt!2601129 (lemmaFlatMapOnSingletonSetList1!15 s!1437 elmt!118 f!883 (t!385349 lRes!18)))))

(declare-fun lt!2601127 () Unit!164513)

(declare-fun subseqTail!67 (List!71165 List!71165) Unit!164513)

(assert (=> b!7313445 (= lt!2601127 (subseqTail!67 lRes!18 lt!2601128))))

(declare-fun setNonEmpty!54068 () Bool)

(declare-fun setRes!54068 () Bool)

(declare-fun tp!2075580 () Bool)

(declare-fun tp_is_empty!47437 () Bool)

(assert (=> setNonEmpty!54068 (= setRes!54068 (and tp!2075580 tp_is_empty!47437))))

(declare-fun setElem!54068 () A!821)

(declare-fun setRest!54068 () (Set A!821))

(assert (=> setNonEmpty!54068 (= s!1437 (set.union (set.insert setElem!54068 (as set.empty (Set A!821))) setRest!54068))))

(declare-fun b!7313446 () Bool)

(declare-fun e!4377781 () Bool)

(assert (=> b!7313446 (= e!4377781 e!4377783)))

(declare-fun res!2955003 () Bool)

(assert (=> b!7313446 (=> (not res!2955003) (not e!4377783))))

(declare-fun subseq!822 (List!71165 List!71165) Bool)

(assert (=> b!7313446 (= res!2955003 (subseq!822 lRes!18 lt!2601128))))

(assert (=> b!7313446 (= lt!2601128 (toList!11574 lt!2601131))))

(declare-fun flatMap!3021 ((Set A!821) Int) (Set B!3523))

(assert (=> b!7313446 (= lt!2601131 (flatMap!3021 s!1437 f!883))))

(declare-fun exists!4516 ((Set A!821) Int) Bool)

(assert (=> b!7313447 (= e!4377784 (exists!4516 s!1437 lambda!451757))))

(declare-fun empty!3115 () A!821)

(declare-fun flatMapPost!99 ((Set A!821) Int B!3523) A!821)

(assert (=> b!7313447 (= (flatMapPost!99 s!1437 f!883 (h!77489 lRes!18)) empty!3115)))

(assert (=> b!7313447 true))

(assert (=> b!7313447 tp_is_empty!47437))

(declare-fun res!2955004 () Bool)

(assert (=> start!712482 (=> (not res!2955004) (not e!4377781))))

(assert (=> start!712482 (= res!2955004 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!821)))))))

(assert (=> start!712482 e!4377781))

(declare-fun condSetEmpty!54068 () Bool)

(assert (=> start!712482 (= condSetEmpty!54068 (= s!1437 (as set.empty (Set A!821))))))

(assert (=> start!712482 setRes!54068))

(assert (=> start!712482 tp_is_empty!47437))

(assert (=> start!712482 tp!2075582))

(declare-fun e!4377782 () Bool)

(assert (=> start!712482 e!4377782))

(declare-fun setIsEmpty!54068 () Bool)

(assert (=> setIsEmpty!54068 setRes!54068))

(declare-fun b!7313448 () Bool)

(declare-fun tp_is_empty!47439 () Bool)

(declare-fun tp!2075581 () Bool)

(assert (=> b!7313448 (= e!4377782 (and tp_is_empty!47439 tp!2075581))))

(declare-fun b!7313449 () Bool)

(declare-fun res!2955001 () Bool)

(assert (=> b!7313449 (=> (not res!2955001) (not e!4377783))))

(assert (=> b!7313449 (= res!2955001 (is-Cons!71041 lRes!18))))

(declare-fun b!7313450 () Bool)

(assert (=> b!7313450 (= e!4377780 (forall!17743 (t!385349 lRes!18) lambda!451756))))

(assert (= (and start!712482 res!2955004) b!7313446))

(assert (= (and b!7313446 res!2955003) b!7313449))

(assert (= (and b!7313449 res!2955001) b!7313445))

(assert (= (and b!7313445 res!2955002) b!7313450))

(assert (= (and b!7313445 (not res!2955005)) b!7313447))

(assert (= (and start!712482 condSetEmpty!54068) setIsEmpty!54068))

(assert (= (and start!712482 (not condSetEmpty!54068)) setNonEmpty!54068))

(assert (= (and start!712482 (is-Cons!71041 lRes!18)) b!7313448))

(declare-fun b_lambda!282333 () Bool)

(assert (=> (not b_lambda!282333) (not b!7313445)))

(declare-fun t!385348 () Bool)

(declare-fun tb!262209 () Bool)

(assert (=> (and start!712482 (= f!883 f!883) t!385348) tb!262209))

(assert (=> b!7313445 t!385348))

(declare-fun result!352864 () Bool)

(declare-fun b_and!351329 () Bool)

(assert (= b_and!351327 (and (=> t!385348 result!352864) b_and!351329)))

(declare-fun m!7977638 () Bool)

(assert (=> b!7313450 m!7977638))

(declare-fun m!7977640 () Bool)

(assert (=> b!7313447 m!7977640))

(declare-fun m!7977642 () Bool)

(assert (=> b!7313447 m!7977642))

(declare-fun m!7977644 () Bool)

(assert (=> b!7313446 m!7977644))

(declare-fun m!7977646 () Bool)

(assert (=> b!7313446 m!7977646))

(declare-fun m!7977648 () Bool)

(assert (=> b!7313446 m!7977648))

(declare-fun m!7977650 () Bool)

(assert (=> b!7313445 m!7977650))

(declare-fun m!7977652 () Bool)

(assert (=> b!7313445 m!7977652))

(declare-fun m!7977654 () Bool)

(assert (=> b!7313445 m!7977654))

(declare-fun m!7977656 () Bool)

(assert (=> b!7313445 m!7977656))

(declare-fun m!7977658 () Bool)

(assert (=> b!7313445 m!7977658))

(assert (=> b!7313445 m!7977650))

(declare-fun m!7977660 () Bool)

(assert (=> b!7313445 m!7977660))

(assert (=> b!7313445 m!7977638))

(declare-fun m!7977662 () Bool)

(assert (=> start!712482 m!7977662))

(push 1)

(assert (not b_lambda!282333))

(assert (not b_next!134765))

(assert (not b!7313448))

(assert (not setNonEmpty!54068))

(assert (not b!7313450))

(assert tp_is_empty!47437)

(assert (not tb!262209))

(assert (not b!7313446))

(assert b_and!351329)

(assert (not b!7313445))

(assert tp_is_empty!47439)

(assert (not b!7313447))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351329)

(assert (not b_next!134765))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282337 () Bool)

(assert (= b_lambda!282333 (or (and start!712482 b_free!133975) b_lambda!282337)))

(push 1)

(assert (not b_next!134765))

(assert (not b!7313448))

(assert (not setNonEmpty!54068))

(assert tp_is_empty!47437)

(assert (not tb!262209))

(assert (not b!7313446))

(assert b_and!351329)

(assert (not b!7313445))

(assert (not b!7313450))

(assert (not b_lambda!282337))

(assert tp_is_empty!47439)

(assert (not b!7313447))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351329)

(assert (not b_next!134765))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270806 () Bool)

(declare-fun contains!20775 (List!71165 B!3523) Bool)

(assert (=> d!2270806 (contains!20775 lt!2601128 (h!77489 lRes!18))))

(declare-fun lt!2601153 () Unit!164513)

(declare-fun choose!56666 (List!71165 List!71165 B!3523) Unit!164513)

(assert (=> d!2270806 (= lt!2601153 (choose!56666 lRes!18 lt!2601128 (h!77489 lRes!18)))))

(declare-fun e!4377802 () Bool)

(assert (=> d!2270806 e!4377802))

(declare-fun res!2955023 () Bool)

(assert (=> d!2270806 (=> (not res!2955023) (not e!4377802))))

(assert (=> d!2270806 (= res!2955023 (subseq!822 lRes!18 lt!2601128))))

(assert (=> d!2270806 (= (subseqContains!39 lRes!18 lt!2601128 (h!77489 lRes!18)) lt!2601153)))

(declare-fun b!7313483 () Bool)

(assert (=> b!7313483 (= e!4377802 (contains!20775 lRes!18 (h!77489 lRes!18)))))

(assert (= (and d!2270806 res!2955023) b!7313483))

(declare-fun m!7977690 () Bool)

(assert (=> d!2270806 m!7977690))

(declare-fun m!7977692 () Bool)

(assert (=> d!2270806 m!7977692))

(assert (=> d!2270806 m!7977644))

(declare-fun m!7977694 () Bool)

(assert (=> b!7313483 m!7977694))

(assert (=> b!7313445 d!2270806))

(declare-fun d!2270808 () Bool)

(declare-fun res!2955028 () Bool)

(declare-fun e!4377807 () Bool)

(assert (=> d!2270808 (=> res!2955028 e!4377807)))

(assert (=> d!2270808 (= res!2955028 (is-Nil!71041 (t!385349 lRes!18)))))

(assert (=> d!2270808 (= (forall!17743 (t!385349 lRes!18) lambda!451756) e!4377807)))

(declare-fun b!7313488 () Bool)

(declare-fun e!4377808 () Bool)

(assert (=> b!7313488 (= e!4377807 e!4377808)))

(declare-fun res!2955029 () Bool)

(assert (=> b!7313488 (=> (not res!2955029) (not e!4377808))))

(declare-fun dynLambda!29102 (Int B!3523) Bool)

(assert (=> b!7313488 (= res!2955029 (dynLambda!29102 lambda!451756 (h!77489 (t!385349 lRes!18))))))

(declare-fun b!7313489 () Bool)

(assert (=> b!7313489 (= e!4377808 (forall!17743 (t!385349 (t!385349 lRes!18)) lambda!451756))))

(assert (= (and d!2270808 (not res!2955028)) b!7313488))

(assert (= (and b!7313488 res!2955029) b!7313489))

(declare-fun b_lambda!282339 () Bool)

(assert (=> (not b_lambda!282339) (not b!7313488)))

(declare-fun m!7977696 () Bool)

(assert (=> b!7313488 m!7977696))

(declare-fun m!7977698 () Bool)

(assert (=> b!7313489 m!7977698))

(assert (=> b!7313445 d!2270808))

(declare-fun bs!1914626 () Bool)

(declare-fun d!2270810 () Bool)

(assert (= bs!1914626 (and d!2270810 b!7313445)))

(declare-fun lambda!451768 () Int)

(declare-fun lt!2601159 () List!71165)

(assert (=> bs!1914626 (= (= lt!2601159 lt!2601130) (= lambda!451768 lambda!451756))))

(assert (=> d!2270810 true))

(assert (=> d!2270810 (forall!17743 (t!385349 lRes!18) lambda!451768)))

(assert (=> d!2270810 (= lt!2601159 (toList!11574 (dynLambda!29098 f!883 elmt!118)))))

(declare-fun lt!2601158 () Unit!164513)

(declare-fun choose!56667 ((Set A!821) A!821 Int List!71165) Unit!164513)

(assert (=> d!2270810 (= lt!2601158 (choose!56667 s!1437 elmt!118 f!883 (t!385349 lRes!18)))))

(assert (=> d!2270810 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!821))))))

(assert (=> d!2270810 (= (lemmaFlatMapOnSingletonSetList1!15 s!1437 elmt!118 f!883 (t!385349 lRes!18)) lt!2601158)))

(declare-fun b_lambda!282341 () Bool)

(assert (=> (not b_lambda!282341) (not d!2270810)))

(assert (=> d!2270810 t!385348))

(declare-fun b_and!351335 () Bool)

(assert (= b_and!351329 (and (=> t!385348 result!352864) b_and!351335)))

(declare-fun m!7977700 () Bool)

(assert (=> d!2270810 m!7977700))

(assert (=> d!2270810 m!7977650))

(assert (=> d!2270810 m!7977660))

(assert (=> d!2270810 m!7977662))

(assert (=> d!2270810 m!7977650))

(declare-fun m!7977702 () Bool)

(assert (=> d!2270810 m!7977702))

(assert (=> b!7313445 d!2270810))

(declare-fun d!2270812 () Bool)

(declare-fun e!4377811 () Bool)

(assert (=> d!2270812 e!4377811))

(declare-fun res!2955032 () Bool)

(assert (=> d!2270812 (=> (not res!2955032) (not e!4377811))))

(declare-fun lt!2601162 () List!71165)

(declare-fun noDuplicate!3041 (List!71165) Bool)

(assert (=> d!2270812 (= res!2955032 (noDuplicate!3041 lt!2601162))))

(declare-fun choose!56668 ((Set B!3523)) List!71165)

(assert (=> d!2270812 (= lt!2601162 (choose!56668 (dynLambda!29098 f!883 elmt!118)))))

(assert (=> d!2270812 (= (toList!11574 (dynLambda!29098 f!883 elmt!118)) lt!2601162)))

(declare-fun b!7313492 () Bool)

(declare-fun content!14860 (List!71165) (Set B!3523))

(assert (=> b!7313492 (= e!4377811 (= (content!14860 lt!2601162) (dynLambda!29098 f!883 elmt!118)))))

(assert (= (and d!2270812 res!2955032) b!7313492))

(declare-fun m!7977704 () Bool)

(assert (=> d!2270812 m!7977704))

(assert (=> d!2270812 m!7977650))

(declare-fun m!7977706 () Bool)

(assert (=> d!2270812 m!7977706))

(declare-fun m!7977708 () Bool)

(assert (=> b!7313492 m!7977708))

(assert (=> b!7313445 d!2270812))

(declare-fun b!7313507 () Bool)

(declare-fun e!4377823 () Unit!164513)

(declare-fun Unit!164517 () Unit!164513)

(assert (=> b!7313507 (= e!4377823 Unit!164517)))

(declare-fun b!7313508 () Bool)

(declare-fun c!1357726 () Bool)

(declare-fun isEmpty!40851 (List!71165) Bool)

(assert (=> b!7313508 (= c!1357726 (not (isEmpty!40851 (t!385349 lRes!18))))))

(declare-fun e!4377820 () Unit!164513)

(declare-fun e!4377822 () Unit!164513)

(assert (=> b!7313508 (= e!4377820 e!4377822)))

(declare-fun b!7313509 () Bool)

(declare-fun call!665750 () Unit!164513)

(assert (=> b!7313509 (= e!4377820 call!665750)))

(declare-fun b!7313510 () Bool)

(declare-fun Unit!164518 () Unit!164513)

(assert (=> b!7313510 (= e!4377822 Unit!164518)))

(declare-fun b!7313511 () Bool)

(assert (=> b!7313511 (= e!4377822 call!665750)))

(declare-fun b!7313512 () Bool)

(assert (=> b!7313512 (= e!4377823 e!4377820)))

(declare-fun c!1357727 () Bool)

(assert (=> b!7313512 (= c!1357727 (subseq!822 lRes!18 (t!385349 lt!2601128)))))

(declare-fun d!2270814 () Bool)

(declare-fun tail!14630 (List!71165) List!71165)

(assert (=> d!2270814 (subseq!822 (tail!14630 lRes!18) lt!2601128)))

(declare-fun lt!2601165 () Unit!164513)

(assert (=> d!2270814 (= lt!2601165 e!4377823)))

(declare-fun c!1357725 () Bool)

(assert (=> d!2270814 (= c!1357725 (and (is-Cons!71041 lRes!18) (is-Cons!71041 lt!2601128)))))

(declare-fun e!4377821 () Bool)

(assert (=> d!2270814 e!4377821))

(declare-fun res!2955035 () Bool)

(assert (=> d!2270814 (=> (not res!2955035) (not e!4377821))))

(assert (=> d!2270814 (= res!2955035 (not (isEmpty!40851 lRes!18)))))

(assert (=> d!2270814 (= (subseqTail!67 lRes!18 lt!2601128) lt!2601165)))

(declare-fun b!7313513 () Bool)

(assert (=> b!7313513 (= e!4377821 (subseq!822 lRes!18 lt!2601128))))

(declare-fun bm!665745 () Bool)

(assert (=> bm!665745 (= call!665750 (subseqTail!67 (ite c!1357727 lRes!18 (t!385349 lRes!18)) (t!385349 lt!2601128)))))

(assert (= (and d!2270814 res!2955035) b!7313513))

(assert (= (and d!2270814 c!1357725) b!7313512))

(assert (= (and d!2270814 (not c!1357725)) b!7313507))

(assert (= (and b!7313512 c!1357727) b!7313509))

(assert (= (and b!7313512 (not c!1357727)) b!7313508))

(assert (= (and b!7313508 c!1357726) b!7313511))

(assert (= (and b!7313508 (not c!1357726)) b!7313510))

(assert (= (or b!7313509 b!7313511) bm!665745))

(declare-fun m!7977710 () Bool)

(assert (=> b!7313512 m!7977710))

(assert (=> b!7313513 m!7977644))

(declare-fun m!7977712 () Bool)

(assert (=> d!2270814 m!7977712))

(assert (=> d!2270814 m!7977712))

(declare-fun m!7977714 () Bool)

(assert (=> d!2270814 m!7977714))

(declare-fun m!7977716 () Bool)

(assert (=> d!2270814 m!7977716))

(declare-fun m!7977718 () Bool)

(assert (=> bm!665745 m!7977718))

(declare-fun m!7977720 () Bool)

(assert (=> b!7313508 m!7977720))

(assert (=> b!7313445 d!2270814))

(declare-fun d!2270816 () Bool)

(declare-fun lt!2601168 () Bool)

(declare-datatypes ((List!71167 0))(
  ( (Nil!71043) (Cons!71043 (h!77491 A!821) (t!385354 List!71167)) )
))
(declare-fun exists!4518 (List!71167 Int) Bool)

(declare-fun toList!11576 ((Set A!821)) List!71167)

(assert (=> d!2270816 (= lt!2601168 (exists!4518 (toList!11576 s!1437) lambda!451757))))

(declare-fun choose!56669 ((Set A!821) Int) Bool)

(assert (=> d!2270816 (= lt!2601168 (choose!56669 s!1437 lambda!451757))))

(assert (=> d!2270816 (= (exists!4516 s!1437 lambda!451757) lt!2601168)))

(declare-fun bs!1914627 () Bool)

(assert (= bs!1914627 d!2270816))

(declare-fun m!7977722 () Bool)

(assert (=> bs!1914627 m!7977722))

(assert (=> bs!1914627 m!7977722))

(declare-fun m!7977724 () Bool)

(assert (=> bs!1914627 m!7977724))

(declare-fun m!7977726 () Bool)

(assert (=> bs!1914627 m!7977726))

(assert (=> b!7313447 d!2270816))

(declare-fun bs!1914628 () Bool)

(declare-fun d!2270818 () Bool)

(assert (= bs!1914628 (and d!2270818 b!7313447)))

(declare-fun lambda!451771 () Int)

(assert (=> bs!1914628 (= lambda!451771 lambda!451757)))

(assert (=> d!2270818 true))

(assert (=> d!2270818 true))

(assert (=> d!2270818 (< (dynLambda!29096 order!29093 f!883) (dynLambda!29097 order!29095 lambda!451771))))

(assert (=> d!2270818 (= (set.member (h!77489 lRes!18) (flatMap!3021 s!1437 f!883)) (exists!4516 s!1437 lambda!451771))))

(declare-fun lt!2601171 () A!821)

(declare-fun choose!56670 ((Set A!821) Int B!3523) A!821)

(assert (=> d!2270818 (= lt!2601171 (choose!56670 s!1437 f!883 (h!77489 lRes!18)))))

(assert (=> d!2270818 (= (flatMapPost!99 s!1437 f!883 (h!77489 lRes!18)) lt!2601171)))

(declare-fun bs!1914629 () Bool)

(assert (= bs!1914629 d!2270818))

(assert (=> bs!1914629 m!7977648))

(declare-fun m!7977728 () Bool)

(assert (=> bs!1914629 m!7977728))

(declare-fun m!7977730 () Bool)

(assert (=> bs!1914629 m!7977730))

(declare-fun m!7977732 () Bool)

(assert (=> bs!1914629 m!7977732))

(assert (=> b!7313447 d!2270818))

(declare-fun b!7313525 () Bool)

(declare-fun e!4377835 () Bool)

(declare-fun e!4377833 () Bool)

(assert (=> b!7313525 (= e!4377835 e!4377833)))

(declare-fun res!2955045 () Bool)

(assert (=> b!7313525 (=> (not res!2955045) (not e!4377833))))

(assert (=> b!7313525 (= res!2955045 (is-Cons!71041 lt!2601128))))

(declare-fun b!7313527 () Bool)

(declare-fun e!4377832 () Bool)

(assert (=> b!7313527 (= e!4377832 (subseq!822 (t!385349 lRes!18) (t!385349 lt!2601128)))))

(declare-fun b!7313526 () Bool)

(declare-fun e!4377834 () Bool)

(assert (=> b!7313526 (= e!4377833 e!4377834)))

(declare-fun res!2955047 () Bool)

(assert (=> b!7313526 (=> res!2955047 e!4377834)))

(assert (=> b!7313526 (= res!2955047 e!4377832)))

(declare-fun res!2955044 () Bool)

(assert (=> b!7313526 (=> (not res!2955044) (not e!4377832))))

(assert (=> b!7313526 (= res!2955044 (= (h!77489 lRes!18) (h!77489 lt!2601128)))))

(declare-fun d!2270820 () Bool)

(declare-fun res!2955046 () Bool)

(assert (=> d!2270820 (=> res!2955046 e!4377835)))

(assert (=> d!2270820 (= res!2955046 (is-Nil!71041 lRes!18))))

(assert (=> d!2270820 (= (subseq!822 lRes!18 lt!2601128) e!4377835)))

(declare-fun b!7313528 () Bool)

(assert (=> b!7313528 (= e!4377834 (subseq!822 lRes!18 (t!385349 lt!2601128)))))

(assert (= (and d!2270820 (not res!2955046)) b!7313525))

(assert (= (and b!7313525 res!2955045) b!7313526))

(assert (= (and b!7313526 res!2955044) b!7313527))

(assert (= (and b!7313526 (not res!2955047)) b!7313528))

(declare-fun m!7977734 () Bool)

(assert (=> b!7313527 m!7977734))

(assert (=> b!7313528 m!7977710))

(assert (=> b!7313446 d!2270820))

(declare-fun d!2270822 () Bool)

(declare-fun e!4377836 () Bool)

(assert (=> d!2270822 e!4377836))

(declare-fun res!2955048 () Bool)

(assert (=> d!2270822 (=> (not res!2955048) (not e!4377836))))

(declare-fun lt!2601172 () List!71165)

(assert (=> d!2270822 (= res!2955048 (noDuplicate!3041 lt!2601172))))

(assert (=> d!2270822 (= lt!2601172 (choose!56668 lt!2601131))))

(assert (=> d!2270822 (= (toList!11574 lt!2601131) lt!2601172)))

(declare-fun b!7313529 () Bool)

(assert (=> b!7313529 (= e!4377836 (= (content!14860 lt!2601172) lt!2601131))))

(assert (= (and d!2270822 res!2955048) b!7313529))

(declare-fun m!7977736 () Bool)

(assert (=> d!2270822 m!7977736))

(declare-fun m!7977738 () Bool)

(assert (=> d!2270822 m!7977738))

(declare-fun m!7977740 () Bool)

(assert (=> b!7313529 m!7977740))

(assert (=> b!7313446 d!2270822))

(declare-fun d!2270824 () Bool)

(declare-fun choose!56671 ((Set A!821) Int) (Set B!3523))

(assert (=> d!2270824 (= (flatMap!3021 s!1437 f!883) (choose!56671 s!1437 f!883))))

(declare-fun bs!1914630 () Bool)

(assert (= bs!1914630 d!2270824))

(declare-fun m!7977742 () Bool)

(assert (=> bs!1914630 m!7977742))

(assert (=> b!7313446 d!2270824))

(assert (=> b!7313450 d!2270808))

(declare-fun b!7313534 () Bool)

(declare-fun e!4377839 () Bool)

(declare-fun tp!2075594 () Bool)

(assert (=> b!7313534 (= e!4377839 (and tp_is_empty!47439 tp!2075594))))

(assert (=> b!7313448 (= tp!2075581 e!4377839)))

(assert (= (and b!7313448 (is-Cons!71041 (t!385349 lRes!18))) b!7313534))

(declare-fun condSetEmpty!54074 () Bool)

(assert (=> tb!262209 (= condSetEmpty!54074 (= (dynLambda!29098 f!883 elmt!118) (as set.empty (Set B!3523))))))

(declare-fun setRes!54074 () Bool)

(assert (=> tb!262209 (= result!352864 setRes!54074)))

(declare-fun setIsEmpty!54074 () Bool)

(assert (=> setIsEmpty!54074 setRes!54074))

(declare-fun setNonEmpty!54074 () Bool)

(declare-fun tp!2075597 () Bool)

(assert (=> setNonEmpty!54074 (= setRes!54074 (and tp!2075597 tp_is_empty!47439))))

(declare-fun setRest!54074 () (Set B!3523))

(declare-fun setElem!54074 () B!3523)

(assert (=> setNonEmpty!54074 (= (dynLambda!29098 f!883 elmt!118) (set.union (set.insert setElem!54074 (as set.empty (Set B!3523))) setRest!54074))))

(assert (= (and tb!262209 condSetEmpty!54074) setIsEmpty!54074))

(assert (= (and tb!262209 (not condSetEmpty!54074)) setNonEmpty!54074))

(declare-fun condSetEmpty!54077 () Bool)

(assert (=> setNonEmpty!54068 (= condSetEmpty!54077 (= setRest!54068 (as set.empty (Set A!821))))))

(declare-fun setRes!54077 () Bool)

(assert (=> setNonEmpty!54068 (= tp!2075580 setRes!54077)))

(declare-fun setIsEmpty!54077 () Bool)

(assert (=> setIsEmpty!54077 setRes!54077))

(declare-fun setNonEmpty!54077 () Bool)

(declare-fun tp!2075600 () Bool)

(assert (=> setNonEmpty!54077 (= setRes!54077 (and tp!2075600 tp_is_empty!47437))))

(declare-fun setElem!54077 () A!821)

(declare-fun setRest!54077 () (Set A!821))

(assert (=> setNonEmpty!54077 (= setRest!54068 (set.union (set.insert setElem!54077 (as set.empty (Set A!821))) setRest!54077))))

(assert (= (and setNonEmpty!54068 condSetEmpty!54077) setIsEmpty!54077))

(assert (= (and setNonEmpty!54068 (not condSetEmpty!54077)) setNonEmpty!54077))

(declare-fun b_lambda!282345 () Bool)

(assert (= b_lambda!282339 (or b!7313445 b_lambda!282345)))

(declare-fun bs!1914631 () Bool)

(declare-fun d!2270826 () Bool)

(assert (= bs!1914631 (and d!2270826 b!7313445)))

(assert (=> bs!1914631 (= (dynLambda!29102 lambda!451756 (h!77489 (t!385349 lRes!18))) (contains!20775 lt!2601130 (h!77489 (t!385349 lRes!18))))))

(declare-fun m!7977744 () Bool)

(assert (=> bs!1914631 m!7977744))

(assert (=> b!7313488 d!2270826))

(declare-fun b_lambda!282347 () Bool)

(assert (= b_lambda!282341 (or (and start!712482 b_free!133975) b_lambda!282347)))

(push 1)

(assert (not d!2270814))

(assert (not bm!665745))

(assert (not d!2270806))

(assert (not d!2270824))

(assert (not bs!1914631))

(assert (not b!7313489))

(assert (not d!2270816))

(assert (not b!7313534))

(assert (not d!2270822))

(assert (not b!7313483))

(assert (not setNonEmpty!54074))

(assert (not b!7313492))

(assert (not b!7313513))

(assert b_and!351335)

(assert (not setNonEmpty!54077))

(assert (not b!7313527))

(assert (not d!2270812))

(assert (not b_next!134765))

(assert (not d!2270810))

(assert (not b!7313528))

(assert (not b!7313529))

(assert (not d!2270818))

(assert (not b!7313512))

(assert (not b_lambda!282337))

(assert (not b!7313508))

(assert tp_is_empty!47437)

(assert tp_is_empty!47439)

(assert (not b_lambda!282347))

(assert (not b_lambda!282345))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351335)

(assert (not b_next!134765))

(check-sat)

(pop 1)

