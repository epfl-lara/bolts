; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712382 () Bool)

(assert start!712382)

(declare-fun b_free!133963 () Bool)

(declare-fun b_next!134753 () Bool)

(assert (=> start!712382 (= b_free!133963 (not b_next!134753))))

(declare-fun tp!2075472 () Bool)

(declare-fun b_and!351293 () Bool)

(assert (=> start!712382 (= tp!2075472 b_and!351293)))

(declare-fun b!7312988 () Bool)

(assert (=> b!7312988 true))

(declare-fun b!7312986 () Bool)

(declare-fun e!4377436 () Bool)

(declare-fun tp_is_empty!47415 () Bool)

(declare-fun tp!2075470 () Bool)

(assert (=> b!7312986 (= e!4377436 (and tp_is_empty!47415 tp!2075470))))

(declare-fun b!7312987 () Bool)

(declare-fun e!4377435 () Bool)

(declare-datatypes ((B!3511 0))(
  ( (B!3512 (val!29067 Int)) )
))
(declare-datatypes ((List!71159 0))(
  ( (Nil!71035) (Cons!71035 (h!77483 B!3511) (t!385327 List!71159)) )
))
(declare-fun lRes!18 () List!71159)

(declare-fun lambda!451699 () Int)

(declare-fun forall!17737 (List!71159 Int) Bool)

(assert (=> b!7312987 (= e!4377435 (forall!17737 (t!385327 lRes!18) lambda!451699))))

(declare-fun e!4377433 () Bool)

(declare-fun contains!20771 (List!71159 B!3511) Bool)

(assert (=> b!7312988 (= e!4377433 (not (contains!20771 lRes!18 (h!77483 lRes!18))))))

(assert (=> b!7312988 e!4377435))

(declare-fun res!2954715 () Bool)

(assert (=> b!7312988 (=> (not res!2954715) (not e!4377435))))

(assert (=> b!7312988 (= res!2954715 (forall!17737 (t!385327 lRes!18) lambda!451699))))

(declare-fun lt!2600954 () List!71159)

(declare-fun f!883 () Int)

(declare-datatypes ((A!809 0))(
  ( (A!810 (val!29068 Int)) )
))
(declare-fun elmt!118 () A!809)

(declare-fun toList!11568 ((Set B!3511)) List!71159)

(declare-fun dynLambda!29083 (Int A!809) (Set B!3511))

(assert (=> b!7312988 (= lt!2600954 (toList!11568 (dynLambda!29083 f!883 elmt!118)))))

(declare-fun s!1437 () (Set A!809))

(declare-datatypes ((Unit!164492 0))(
  ( (Unit!164493) )
))
(declare-fun lt!2600952 () Unit!164492)

(declare-fun lemmaFlatMapOnSingletonSetList1!9 ((Set A!809) A!809 Int List!71159) Unit!164492)

(assert (=> b!7312988 (= lt!2600952 (lemmaFlatMapOnSingletonSetList1!9 s!1437 elmt!118 f!883 (t!385327 lRes!18)))))

(declare-fun lt!2600953 () Unit!164492)

(declare-fun lt!2600955 () List!71159)

(declare-fun subseqTail!61 (List!71159 List!71159) Unit!164492)

(assert (=> b!7312988 (= lt!2600953 (subseqTail!61 lRes!18 lt!2600955))))

(declare-fun res!2954714 () Bool)

(declare-fun e!4377434 () Bool)

(assert (=> start!712382 (=> (not res!2954714) (not e!4377434))))

(assert (=> start!712382 (= res!2954714 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!809)))))))

(assert (=> start!712382 e!4377434))

(declare-fun condSetEmpty!54016 () Bool)

(assert (=> start!712382 (= condSetEmpty!54016 (= s!1437 (as set.empty (Set A!809))))))

(declare-fun setRes!54016 () Bool)

(assert (=> start!712382 setRes!54016))

(declare-fun tp_is_empty!47413 () Bool)

(assert (=> start!712382 tp_is_empty!47413))

(assert (=> start!712382 tp!2075472))

(assert (=> start!712382 e!4377436))

(declare-fun b!7312989 () Bool)

(assert (=> b!7312989 (= e!4377434 e!4377433)))

(declare-fun res!2954712 () Bool)

(assert (=> b!7312989 (=> (not res!2954712) (not e!4377433))))

(declare-fun subseq!816 (List!71159 List!71159) Bool)

(assert (=> b!7312989 (= res!2954712 (subseq!816 lRes!18 lt!2600955))))

(declare-fun flatMap!3015 ((Set A!809) Int) (Set B!3511))

(assert (=> b!7312989 (= lt!2600955 (toList!11568 (flatMap!3015 s!1437 f!883)))))

(declare-fun b!7312990 () Bool)

(declare-fun res!2954713 () Bool)

(assert (=> b!7312990 (=> (not res!2954713) (not e!4377433))))

(assert (=> b!7312990 (= res!2954713 (is-Cons!71035 lRes!18))))

(declare-fun setIsEmpty!54016 () Bool)

(assert (=> setIsEmpty!54016 setRes!54016))

(declare-fun setNonEmpty!54016 () Bool)

(declare-fun tp!2075471 () Bool)

(assert (=> setNonEmpty!54016 (= setRes!54016 (and tp!2075471 tp_is_empty!47413))))

(declare-fun setElem!54016 () A!809)

(declare-fun setRest!54016 () (Set A!809))

(assert (=> setNonEmpty!54016 (= s!1437 (set.union (set.insert setElem!54016 (as set.empty (Set A!809))) setRest!54016))))

(assert (= (and start!712382 res!2954714) b!7312989))

(assert (= (and b!7312989 res!2954712) b!7312990))

(assert (= (and b!7312990 res!2954713) b!7312988))

(assert (= (and b!7312988 res!2954715) b!7312987))

(assert (= (and start!712382 condSetEmpty!54016) setIsEmpty!54016))

(assert (= (and start!712382 (not condSetEmpty!54016)) setNonEmpty!54016))

(assert (= (and start!712382 (is-Cons!71035 lRes!18)) b!7312986))

(declare-fun b_lambda!282265 () Bool)

(assert (=> (not b_lambda!282265) (not b!7312988)))

(declare-fun t!385326 () Bool)

(declare-fun tb!262197 () Bool)

(assert (=> (and start!712382 (= f!883 f!883) t!385326) tb!262197))

(assert (=> b!7312988 t!385326))

(declare-fun result!352828 () Bool)

(declare-fun b_and!351295 () Bool)

(assert (= b_and!351293 (and (=> t!385326 result!352828) b_and!351295)))

(declare-fun m!7977192 () Bool)

(assert (=> b!7312987 m!7977192))

(declare-fun m!7977194 () Bool)

(assert (=> b!7312988 m!7977194))

(declare-fun m!7977196 () Bool)

(assert (=> b!7312988 m!7977196))

(declare-fun m!7977198 () Bool)

(assert (=> b!7312988 m!7977198))

(assert (=> b!7312988 m!7977192))

(assert (=> b!7312988 m!7977196))

(declare-fun m!7977200 () Bool)

(assert (=> b!7312988 m!7977200))

(declare-fun m!7977202 () Bool)

(assert (=> b!7312988 m!7977202))

(declare-fun m!7977204 () Bool)

(assert (=> start!712382 m!7977204))

(declare-fun m!7977206 () Bool)

(assert (=> b!7312989 m!7977206))

(declare-fun m!7977208 () Bool)

(assert (=> b!7312989 m!7977208))

(assert (=> b!7312989 m!7977208))

(declare-fun m!7977210 () Bool)

(assert (=> b!7312989 m!7977210))

(push 1)

(assert (not b!7312988))

(assert (not b_lambda!282265))

(assert (not tb!262197))

(assert (not b!7312986))

(assert (not b!7312987))

(assert (not setNonEmpty!54016))

(assert (not b!7312989))

(assert (not b_next!134753))

(assert tp_is_empty!47415)

(assert tp_is_empty!47413)

(assert b_and!351295)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351295)

(assert (not b_next!134753))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282269 () Bool)

(assert (= b_lambda!282265 (or (and start!712382 b_free!133963) b_lambda!282269)))

(push 1)

(assert (not b!7312988))

(assert (not b_lambda!282269))

(assert (not tb!262197))

(assert (not b!7312986))

(assert (not b!7312987))

(assert (not setNonEmpty!54016))

(assert (not b!7312989))

(assert (not b_next!134753))

(assert tp_is_empty!47415)

(assert tp_is_empty!47413)

(assert b_and!351295)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351295)

(assert (not b_next!134753))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270647 () Bool)

(declare-fun res!2954732 () Bool)

(declare-fun e!4377453 () Bool)

(assert (=> d!2270647 (=> res!2954732 e!4377453)))

(assert (=> d!2270647 (= res!2954732 (is-Nil!71035 (t!385327 lRes!18)))))

(assert (=> d!2270647 (= (forall!17737 (t!385327 lRes!18) lambda!451699) e!4377453)))

(declare-fun b!7313014 () Bool)

(declare-fun e!4377454 () Bool)

(assert (=> b!7313014 (= e!4377453 e!4377454)))

(declare-fun res!2954733 () Bool)

(assert (=> b!7313014 (=> (not res!2954733) (not e!4377454))))

(declare-fun dynLambda!29085 (Int B!3511) Bool)

(assert (=> b!7313014 (= res!2954733 (dynLambda!29085 lambda!451699 (h!77483 (t!385327 lRes!18))))))

(declare-fun b!7313015 () Bool)

(assert (=> b!7313015 (= e!4377454 (forall!17737 (t!385327 (t!385327 lRes!18)) lambda!451699))))

(assert (= (and d!2270647 (not res!2954732)) b!7313014))

(assert (= (and b!7313014 res!2954733) b!7313015))

(declare-fun b_lambda!282271 () Bool)

(assert (=> (not b_lambda!282271) (not b!7313014)))

(declare-fun m!7977232 () Bool)

(assert (=> b!7313014 m!7977232))

(declare-fun m!7977234 () Bool)

(assert (=> b!7313015 m!7977234))

(assert (=> b!7312987 d!2270647))

(declare-fun b!7313026 () Bool)

(declare-fun e!4377463 () Bool)

(assert (=> b!7313026 (= e!4377463 (subseq!816 (t!385327 lRes!18) (t!385327 lt!2600955)))))

(declare-fun d!2270649 () Bool)

(declare-fun res!2954745 () Bool)

(declare-fun e!4377464 () Bool)

(assert (=> d!2270649 (=> res!2954745 e!4377464)))

(assert (=> d!2270649 (= res!2954745 (is-Nil!71035 lRes!18))))

(assert (=> d!2270649 (= (subseq!816 lRes!18 lt!2600955) e!4377464)))

(declare-fun b!7313027 () Bool)

(declare-fun e!4377465 () Bool)

(assert (=> b!7313027 (= e!4377465 (subseq!816 lRes!18 (t!385327 lt!2600955)))))

(declare-fun b!7313025 () Bool)

(declare-fun e!4377466 () Bool)

(assert (=> b!7313025 (= e!4377466 e!4377465)))

(declare-fun res!2954744 () Bool)

(assert (=> b!7313025 (=> res!2954744 e!4377465)))

(assert (=> b!7313025 (= res!2954744 e!4377463)))

(declare-fun res!2954742 () Bool)

(assert (=> b!7313025 (=> (not res!2954742) (not e!4377463))))

(assert (=> b!7313025 (= res!2954742 (= (h!77483 lRes!18) (h!77483 lt!2600955)))))

(declare-fun b!7313024 () Bool)

(assert (=> b!7313024 (= e!4377464 e!4377466)))

(declare-fun res!2954743 () Bool)

(assert (=> b!7313024 (=> (not res!2954743) (not e!4377466))))

(assert (=> b!7313024 (= res!2954743 (is-Cons!71035 lt!2600955))))

(assert (= (and d!2270649 (not res!2954745)) b!7313024))

(assert (= (and b!7313024 res!2954743) b!7313025))

(assert (= (and b!7313025 res!2954742) b!7313026))

(assert (= (and b!7313025 (not res!2954744)) b!7313027))

(declare-fun m!7977236 () Bool)

(assert (=> b!7313026 m!7977236))

(declare-fun m!7977238 () Bool)

(assert (=> b!7313027 m!7977238))

(assert (=> b!7312989 d!2270649))

(declare-fun d!2270651 () Bool)

(declare-fun e!4377469 () Bool)

(assert (=> d!2270651 e!4377469))

(declare-fun res!2954748 () Bool)

(assert (=> d!2270651 (=> (not res!2954748) (not e!4377469))))

(declare-fun lt!2600970 () List!71159)

(declare-fun noDuplicate!3038 (List!71159) Bool)

(assert (=> d!2270651 (= res!2954748 (noDuplicate!3038 lt!2600970))))

(declare-fun choose!56655 ((Set B!3511)) List!71159)

(assert (=> d!2270651 (= lt!2600970 (choose!56655 (flatMap!3015 s!1437 f!883)))))

(assert (=> d!2270651 (= (toList!11568 (flatMap!3015 s!1437 f!883)) lt!2600970)))

(declare-fun b!7313030 () Bool)

(declare-fun content!14857 (List!71159) (Set B!3511))

(assert (=> b!7313030 (= e!4377469 (= (content!14857 lt!2600970) (flatMap!3015 s!1437 f!883)))))

(assert (= (and d!2270651 res!2954748) b!7313030))

(declare-fun m!7977240 () Bool)

(assert (=> d!2270651 m!7977240))

(assert (=> d!2270651 m!7977208))

(declare-fun m!7977242 () Bool)

(assert (=> d!2270651 m!7977242))

(declare-fun m!7977244 () Bool)

(assert (=> b!7313030 m!7977244))

(assert (=> b!7312989 d!2270651))

(declare-fun d!2270653 () Bool)

(declare-fun choose!56656 ((Set A!809) Int) (Set B!3511))

(assert (=> d!2270653 (= (flatMap!3015 s!1437 f!883) (choose!56656 s!1437 f!883))))

(declare-fun bs!1914600 () Bool)

(assert (= bs!1914600 d!2270653))

(declare-fun m!7977246 () Bool)

(assert (=> bs!1914600 m!7977246))

(assert (=> b!7312989 d!2270653))

(declare-fun d!2270655 () Bool)

(declare-fun lt!2600973 () Bool)

(assert (=> d!2270655 (= lt!2600973 (set.member (h!77483 lRes!18) (content!14857 lRes!18)))))

(declare-fun e!4377474 () Bool)

(assert (=> d!2270655 (= lt!2600973 e!4377474)))

(declare-fun res!2954754 () Bool)

(assert (=> d!2270655 (=> (not res!2954754) (not e!4377474))))

(assert (=> d!2270655 (= res!2954754 (is-Cons!71035 lRes!18))))

(assert (=> d!2270655 (= (contains!20771 lRes!18 (h!77483 lRes!18)) lt!2600973)))

(declare-fun b!7313035 () Bool)

(declare-fun e!4377475 () Bool)

(assert (=> b!7313035 (= e!4377474 e!4377475)))

(declare-fun res!2954753 () Bool)

(assert (=> b!7313035 (=> res!2954753 e!4377475)))

(assert (=> b!7313035 (= res!2954753 (= (h!77483 lRes!18) (h!77483 lRes!18)))))

(declare-fun b!7313036 () Bool)

(assert (=> b!7313036 (= e!4377475 (contains!20771 (t!385327 lRes!18) (h!77483 lRes!18)))))

(assert (= (and d!2270655 res!2954754) b!7313035))

(assert (= (and b!7313035 (not res!2954753)) b!7313036))

(declare-fun m!7977248 () Bool)

(assert (=> d!2270655 m!7977248))

(declare-fun m!7977250 () Bool)

(assert (=> d!2270655 m!7977250))

(declare-fun m!7977252 () Bool)

(assert (=> b!7313036 m!7977252))

(assert (=> b!7312988 d!2270655))

(assert (=> b!7312988 d!2270647))

(declare-fun b!7313051 () Bool)

(declare-fun e!4377485 () Unit!164492)

(declare-fun Unit!164496 () Unit!164492)

(assert (=> b!7313051 (= e!4377485 Unit!164496)))

(declare-fun b!7313052 () Bool)

(declare-fun e!4377487 () Unit!164492)

(declare-fun call!665736 () Unit!164492)

(assert (=> b!7313052 (= e!4377487 call!665736)))

(declare-fun b!7313053 () Bool)

(declare-fun c!1357675 () Bool)

(declare-fun isEmpty!40848 (List!71159) Bool)

(assert (=> b!7313053 (= c!1357675 (not (isEmpty!40848 (t!385327 lRes!18))))))

(declare-fun e!4377486 () Unit!164492)

(assert (=> b!7313053 (= e!4377486 e!4377487)))

(declare-fun b!7313054 () Bool)

(declare-fun Unit!164497 () Unit!164492)

(assert (=> b!7313054 (= e!4377487 Unit!164497)))

(declare-fun b!7313055 () Bool)

(declare-fun e!4377484 () Bool)

(assert (=> b!7313055 (= e!4377484 (subseq!816 lRes!18 lt!2600955))))

(declare-fun c!1357676 () Bool)

(declare-fun bm!665731 () Bool)

(assert (=> bm!665731 (= call!665736 (subseqTail!61 (ite c!1357676 lRes!18 (t!385327 lRes!18)) (t!385327 lt!2600955)))))

(declare-fun b!7313057 () Bool)

(assert (=> b!7313057 (= e!4377486 call!665736)))

(declare-fun b!7313056 () Bool)

(assert (=> b!7313056 (= e!4377485 e!4377486)))

(assert (=> b!7313056 (= c!1357676 (subseq!816 lRes!18 (t!385327 lt!2600955)))))

(declare-fun d!2270657 () Bool)

(declare-fun tail!14627 (List!71159) List!71159)

(assert (=> d!2270657 (subseq!816 (tail!14627 lRes!18) lt!2600955)))

(declare-fun lt!2600976 () Unit!164492)

(assert (=> d!2270657 (= lt!2600976 e!4377485)))

(declare-fun c!1357677 () Bool)

(assert (=> d!2270657 (= c!1357677 (and (is-Cons!71035 lRes!18) (is-Cons!71035 lt!2600955)))))

(assert (=> d!2270657 e!4377484))

(declare-fun res!2954757 () Bool)

(assert (=> d!2270657 (=> (not res!2954757) (not e!4377484))))

(assert (=> d!2270657 (= res!2954757 (not (isEmpty!40848 lRes!18)))))

(assert (=> d!2270657 (= (subseqTail!61 lRes!18 lt!2600955) lt!2600976)))

(assert (= (and d!2270657 res!2954757) b!7313055))

(assert (= (and d!2270657 c!1357677) b!7313056))

(assert (= (and d!2270657 (not c!1357677)) b!7313051))

(assert (= (and b!7313056 c!1357676) b!7313057))

(assert (= (and b!7313056 (not c!1357676)) b!7313053))

(assert (= (and b!7313053 c!1357675) b!7313052))

(assert (= (and b!7313053 (not c!1357675)) b!7313054))

(assert (= (or b!7313057 b!7313052) bm!665731))

(declare-fun m!7977254 () Bool)

(assert (=> d!2270657 m!7977254))

(assert (=> d!2270657 m!7977254))

(declare-fun m!7977256 () Bool)

(assert (=> d!2270657 m!7977256))

(declare-fun m!7977258 () Bool)

(assert (=> d!2270657 m!7977258))

(assert (=> b!7313055 m!7977206))

(assert (=> b!7313056 m!7977238))

(declare-fun m!7977260 () Bool)

(assert (=> b!7313053 m!7977260))

(declare-fun m!7977262 () Bool)

(assert (=> bm!665731 m!7977262))

(assert (=> b!7312988 d!2270657))

(declare-fun bs!1914601 () Bool)

(declare-fun d!2270659 () Bool)

(assert (= bs!1914601 (and d!2270659 b!7312988)))

(declare-fun lt!2600982 () List!71159)

(declare-fun lambda!451707 () Int)

(assert (=> bs!1914601 (= (= lt!2600982 lt!2600954) (= lambda!451707 lambda!451699))))

(assert (=> d!2270659 true))

(assert (=> d!2270659 (forall!17737 (t!385327 lRes!18) lambda!451707)))

(assert (=> d!2270659 (= lt!2600982 (toList!11568 (dynLambda!29083 f!883 elmt!118)))))

(declare-fun lt!2600981 () Unit!164492)

(declare-fun choose!56657 ((Set A!809) A!809 Int List!71159) Unit!164492)

(assert (=> d!2270659 (= lt!2600981 (choose!56657 s!1437 elmt!118 f!883 (t!385327 lRes!18)))))

(assert (=> d!2270659 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!809))))))

(assert (=> d!2270659 (= (lemmaFlatMapOnSingletonSetList1!9 s!1437 elmt!118 f!883 (t!385327 lRes!18)) lt!2600981)))

(declare-fun b_lambda!282275 () Bool)

(assert (=> (not b_lambda!282275) (not d!2270659)))

(assert (=> d!2270659 t!385326))

(declare-fun b_and!351301 () Bool)

(assert (= b_and!351295 (and (=> t!385326 result!352828) b_and!351301)))

(declare-fun m!7977264 () Bool)

(assert (=> d!2270659 m!7977264))

(assert (=> d!2270659 m!7977196))

(assert (=> d!2270659 m!7977200))

(declare-fun m!7977266 () Bool)

(assert (=> d!2270659 m!7977266))

(assert (=> d!2270659 m!7977204))

(assert (=> d!2270659 m!7977196))

(assert (=> b!7312988 d!2270659))

(declare-fun d!2270661 () Bool)

(declare-fun e!4377488 () Bool)

(assert (=> d!2270661 e!4377488))

(declare-fun res!2954758 () Bool)

(assert (=> d!2270661 (=> (not res!2954758) (not e!4377488))))

(declare-fun lt!2600983 () List!71159)

(assert (=> d!2270661 (= res!2954758 (noDuplicate!3038 lt!2600983))))

(assert (=> d!2270661 (= lt!2600983 (choose!56655 (dynLambda!29083 f!883 elmt!118)))))

(assert (=> d!2270661 (= (toList!11568 (dynLambda!29083 f!883 elmt!118)) lt!2600983)))

(declare-fun b!7313058 () Bool)

(assert (=> b!7313058 (= e!4377488 (= (content!14857 lt!2600983) (dynLambda!29083 f!883 elmt!118)))))

(assert (= (and d!2270661 res!2954758) b!7313058))

(declare-fun m!7977268 () Bool)

(assert (=> d!2270661 m!7977268))

(assert (=> d!2270661 m!7977196))

(declare-fun m!7977270 () Bool)

(assert (=> d!2270661 m!7977270))

(declare-fun m!7977272 () Bool)

(assert (=> b!7313058 m!7977272))

(assert (=> b!7312988 d!2270661))

(declare-fun b!7313063 () Bool)

(declare-fun e!4377491 () Bool)

(declare-fun tp!2075484 () Bool)

(assert (=> b!7313063 (= e!4377491 (and tp_is_empty!47415 tp!2075484))))

(assert (=> b!7312986 (= tp!2075470 e!4377491)))

(assert (= (and b!7312986 (is-Cons!71035 (t!385327 lRes!18))) b!7313063))

(declare-fun condSetEmpty!54022 () Bool)

(assert (=> setNonEmpty!54016 (= condSetEmpty!54022 (= setRest!54016 (as set.empty (Set A!809))))))

(declare-fun setRes!54022 () Bool)

(assert (=> setNonEmpty!54016 (= tp!2075471 setRes!54022)))

(declare-fun setIsEmpty!54022 () Bool)

(assert (=> setIsEmpty!54022 setRes!54022))

(declare-fun setNonEmpty!54022 () Bool)

(declare-fun tp!2075487 () Bool)

(assert (=> setNonEmpty!54022 (= setRes!54022 (and tp!2075487 tp_is_empty!47413))))

(declare-fun setElem!54022 () A!809)

(declare-fun setRest!54022 () (Set A!809))

(assert (=> setNonEmpty!54022 (= setRest!54016 (set.union (set.insert setElem!54022 (as set.empty (Set A!809))) setRest!54022))))

(assert (= (and setNonEmpty!54016 condSetEmpty!54022) setIsEmpty!54022))

(assert (= (and setNonEmpty!54016 (not condSetEmpty!54022)) setNonEmpty!54022))

(declare-fun condSetEmpty!54025 () Bool)

(assert (=> tb!262197 (= condSetEmpty!54025 (= (dynLambda!29083 f!883 elmt!118) (as set.empty (Set B!3511))))))

(declare-fun setRes!54025 () Bool)

(assert (=> tb!262197 (= result!352828 setRes!54025)))

(declare-fun setIsEmpty!54025 () Bool)

(assert (=> setIsEmpty!54025 setRes!54025))

(declare-fun setNonEmpty!54025 () Bool)

(declare-fun tp!2075490 () Bool)

(assert (=> setNonEmpty!54025 (= setRes!54025 (and tp!2075490 tp_is_empty!47415))))

(declare-fun setRest!54025 () (Set B!3511))

(declare-fun setElem!54025 () B!3511)

(assert (=> setNonEmpty!54025 (= (dynLambda!29083 f!883 elmt!118) (set.union (set.insert setElem!54025 (as set.empty (Set B!3511))) setRest!54025))))

(assert (= (and tb!262197 condSetEmpty!54025) setIsEmpty!54025))

(assert (= (and tb!262197 (not condSetEmpty!54025)) setNonEmpty!54025))

(declare-fun b_lambda!282277 () Bool)

(assert (= b_lambda!282271 (or b!7312988 b_lambda!282277)))

(declare-fun bs!1914602 () Bool)

(declare-fun d!2270663 () Bool)

(assert (= bs!1914602 (and d!2270663 b!7312988)))

(assert (=> bs!1914602 (= (dynLambda!29085 lambda!451699 (h!77483 (t!385327 lRes!18))) (contains!20771 lt!2600954 (h!77483 (t!385327 lRes!18))))))

(declare-fun m!7977274 () Bool)

(assert (=> bs!1914602 m!7977274))

(assert (=> b!7313014 d!2270663))

(declare-fun b_lambda!282279 () Bool)

(assert (= b_lambda!282275 (or (and start!712382 b_free!133963) b_lambda!282279)))

(push 1)

(assert b_and!351301)

(assert (not setNonEmpty!54025))

(assert (not b!7313026))

(assert (not d!2270657))

(assert (not b!7313027))

(assert (not b!7313053))

(assert (not b!7313063))

(assert (not b_lambda!282279))

(assert (not d!2270659))

(assert tp_is_empty!47413)

(assert (not d!2270655))

(assert (not d!2270653))

(assert (not d!2270661))

(assert (not b_lambda!282269))

(assert (not setNonEmpty!54022))

(assert (not b!7313055))

(assert (not d!2270651))

(assert (not b!7313030))

(assert (not b_next!134753))

(assert tp_is_empty!47415)

(assert (not b!7313036))

(assert (not b!7313015))

(assert (not bs!1914602))

(assert (not b_lambda!282277))

(assert (not b!7313058))

(assert (not bm!665731))

(assert (not b!7313056))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351301)

(assert (not b_next!134753))

(check-sat)

(pop 1)

