; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712414 () Bool)

(assert start!712414)

(declare-fun b_free!133971 () Bool)

(declare-fun b_next!134761 () Bool)

(assert (=> start!712414 (= b_free!133971 (not b_next!134761))))

(declare-fun tp!2075525 () Bool)

(declare-fun b_and!351311 () Bool)

(assert (=> start!712414 (= tp!2075525 b_and!351311)))

(declare-fun b!7313187 () Bool)

(assert (=> b!7313187 true))

(declare-fun b!7313183 () Bool)

(declare-fun e!4377572 () Bool)

(declare-fun e!4377574 () Bool)

(assert (=> b!7313183 (= e!4377572 e!4377574)))

(declare-fun res!2954829 () Bool)

(assert (=> b!7313183 (=> (not res!2954829) (not e!4377574))))

(declare-datatypes ((B!3519 0))(
  ( (B!3520 (val!29075 Int)) )
))
(declare-datatypes ((List!71163 0))(
  ( (Nil!71039) (Cons!71039 (h!77487 B!3519) (t!385339 List!71163)) )
))
(declare-fun lRes!18 () List!71163)

(declare-fun lt!2601042 () List!71163)

(declare-fun subseq!820 (List!71163 List!71163) Bool)

(assert (=> b!7313183 (= res!2954829 (subseq!820 lRes!18 lt!2601042))))

(declare-fun lt!2601045 () (Set B!3519))

(declare-fun toList!11572 ((Set B!3519)) List!71163)

(assert (=> b!7313183 (= lt!2601042 (toList!11572 lt!2601045))))

(declare-datatypes ((A!817 0))(
  ( (A!818 (val!29076 Int)) )
))
(declare-fun s!1437 () (Set A!817))

(declare-fun f!883 () Int)

(declare-fun flatMap!3019 ((Set A!817) Int) (Set B!3519))

(assert (=> b!7313183 (= lt!2601045 (flatMap!3019 s!1437 f!883))))

(declare-fun b!7313184 () Bool)

(declare-fun res!2954827 () Bool)

(assert (=> b!7313184 (=> (not res!2954827) (not e!4377574))))

(assert (=> b!7313184 (= res!2954827 (is-Cons!71039 lRes!18))))

(declare-fun b!7313185 () Bool)

(declare-fun e!4377575 () Bool)

(declare-fun lambda!451732 () Int)

(declare-fun forall!17741 (List!71163 Int) Bool)

(assert (=> b!7313185 (= e!4377575 (forall!17741 (t!385339 lRes!18) lambda!451732))))

(declare-fun setNonEmpty!54040 () Bool)

(declare-fun setRes!54040 () Bool)

(declare-fun tp!2075524 () Bool)

(declare-fun tp_is_empty!47429 () Bool)

(assert (=> setNonEmpty!54040 (= setRes!54040 (and tp!2075524 tp_is_empty!47429))))

(declare-fun setElem!54040 () A!817)

(declare-fun setRest!54040 () (Set A!817))

(assert (=> setNonEmpty!54040 (= s!1437 (set.union (set.insert setElem!54040 (as set.empty (Set A!817))) setRest!54040))))

(declare-fun b!7313186 () Bool)

(declare-fun e!4377573 () Bool)

(declare-fun tp_is_empty!47431 () Bool)

(declare-fun tp!2075526 () Bool)

(assert (=> b!7313186 (= e!4377573 (and tp_is_empty!47431 tp!2075526))))

(declare-fun setIsEmpty!54040 () Bool)

(assert (=> setIsEmpty!54040 setRes!54040))

(declare-fun res!2954830 () Bool)

(assert (=> start!712414 (=> (not res!2954830) (not e!4377572))))

(declare-fun elmt!118 () A!817)

(assert (=> start!712414 (= res!2954830 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!817)))))))

(assert (=> start!712414 e!4377572))

(declare-fun condSetEmpty!54040 () Bool)

(assert (=> start!712414 (= condSetEmpty!54040 (= s!1437 (as set.empty (Set A!817))))))

(assert (=> start!712414 setRes!54040))

(assert (=> start!712414 tp_is_empty!47429))

(assert (=> start!712414 tp!2075525))

(assert (=> start!712414 e!4377573))

(assert (=> b!7313187 (= e!4377574 (not (set.member (h!77487 lRes!18) lt!2601045)))))

(declare-datatypes ((Unit!164502 0))(
  ( (Unit!164503) )
))
(declare-fun lt!2601046 () Unit!164502)

(declare-fun subseqContains!37 (List!71163 List!71163 B!3519) Unit!164502)

(assert (=> b!7313187 (= lt!2601046 (subseqContains!37 lRes!18 lt!2601042 (h!77487 lRes!18)))))

(assert (=> b!7313187 e!4377575))

(declare-fun res!2954828 () Bool)

(assert (=> b!7313187 (=> (not res!2954828) (not e!4377575))))

(assert (=> b!7313187 (= res!2954828 (forall!17741 (t!385339 lRes!18) lambda!451732))))

(declare-fun lt!2601041 () List!71163)

(declare-fun dynLambda!29092 (Int A!817) (Set B!3519))

(assert (=> b!7313187 (= lt!2601041 (toList!11572 (dynLambda!29092 f!883 elmt!118)))))

(declare-fun lt!2601043 () Unit!164502)

(declare-fun lemmaFlatMapOnSingletonSetList1!13 ((Set A!817) A!817 Int List!71163) Unit!164502)

(assert (=> b!7313187 (= lt!2601043 (lemmaFlatMapOnSingletonSetList1!13 s!1437 elmt!118 f!883 (t!385339 lRes!18)))))

(declare-fun lt!2601044 () Unit!164502)

(declare-fun subseqTail!65 (List!71163 List!71163) Unit!164502)

(assert (=> b!7313187 (= lt!2601044 (subseqTail!65 lRes!18 lt!2601042))))

(assert (= (and start!712414 res!2954830) b!7313183))

(assert (= (and b!7313183 res!2954829) b!7313184))

(assert (= (and b!7313184 res!2954827) b!7313187))

(assert (= (and b!7313187 res!2954828) b!7313185))

(assert (= (and start!712414 condSetEmpty!54040) setIsEmpty!54040))

(assert (= (and start!712414 (not condSetEmpty!54040)) setNonEmpty!54040))

(assert (= (and start!712414 (is-Cons!71039 lRes!18)) b!7313186))

(declare-fun b_lambda!282285 () Bool)

(assert (=> (not b_lambda!282285) (not b!7313187)))

(declare-fun t!385338 () Bool)

(declare-fun tb!262205 () Bool)

(assert (=> (and start!712414 (= f!883 f!883) t!385338) tb!262205))

(assert (=> b!7313187 t!385338))

(declare-fun result!352848 () Bool)

(declare-fun b_and!351313 () Bool)

(assert (= b_and!351311 (and (=> t!385338 result!352848) b_and!351313)))

(declare-fun m!7977346 () Bool)

(assert (=> b!7313183 m!7977346))

(declare-fun m!7977348 () Bool)

(assert (=> b!7313183 m!7977348))

(declare-fun m!7977350 () Bool)

(assert (=> b!7313183 m!7977350))

(declare-fun m!7977352 () Bool)

(assert (=> b!7313185 m!7977352))

(declare-fun m!7977354 () Bool)

(assert (=> start!712414 m!7977354))

(declare-fun m!7977356 () Bool)

(assert (=> b!7313187 m!7977356))

(declare-fun m!7977358 () Bool)

(assert (=> b!7313187 m!7977358))

(declare-fun m!7977360 () Bool)

(assert (=> b!7313187 m!7977360))

(assert (=> b!7313187 m!7977356))

(declare-fun m!7977362 () Bool)

(assert (=> b!7313187 m!7977362))

(assert (=> b!7313187 m!7977352))

(declare-fun m!7977364 () Bool)

(assert (=> b!7313187 m!7977364))

(declare-fun m!7977366 () Bool)

(assert (=> b!7313187 m!7977366))

(push 1)

(assert (not b!7313186))

(assert (not setNonEmpty!54040))

(assert (not b_next!134761))

(assert tp_is_empty!47429)

(assert tp_is_empty!47431)

(assert (not b!7313185))

(assert (not b!7313183))

(assert (not b_lambda!282285))

(assert (not tb!262205))

(assert (not b!7313187))

(assert b_and!351313)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351313)

(assert (not b_next!134761))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282289 () Bool)

(assert (= b_lambda!282285 (or (and start!712414 b_free!133971) b_lambda!282289)))

(push 1)

(assert (not b!7313186))

(assert (not setNonEmpty!54040))

(assert (not b_lambda!282289))

(assert (not b_next!134761))

(assert tp_is_empty!47429)

(assert (not tb!262205))

(assert tp_is_empty!47431)

(assert (not b!7313185))

(assert (not b!7313183))

(assert (not b!7313187))

(assert b_and!351313)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351313)

(assert (not b_next!134761))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270677 () Bool)

(declare-fun tail!14628 (List!71163) List!71163)

(assert (=> d!2270677 (subseq!820 (tail!14628 lRes!18) lt!2601042)))

(declare-fun lt!2601067 () Unit!164502)

(declare-fun e!4377597 () Unit!164502)

(assert (=> d!2270677 (= lt!2601067 e!4377597)))

(declare-fun c!1357695 () Bool)

(assert (=> d!2270677 (= c!1357695 (and (is-Cons!71039 lRes!18) (is-Cons!71039 lt!2601042)))))

(declare-fun e!4377598 () Bool)

(assert (=> d!2270677 e!4377598))

(declare-fun res!2954845 () Bool)

(assert (=> d!2270677 (=> (not res!2954845) (not e!4377598))))

(declare-fun isEmpty!40849 (List!71163) Bool)

(assert (=> d!2270677 (= res!2954845 (not (isEmpty!40849 lRes!18)))))

(assert (=> d!2270677 (= (subseqTail!65 lRes!18 lt!2601042) lt!2601067)))

(declare-fun b!7313221 () Bool)

(declare-fun e!4377596 () Unit!164502)

(assert (=> b!7313221 (= e!4377597 e!4377596)))

(declare-fun c!1357693 () Bool)

(assert (=> b!7313221 (= c!1357693 (subseq!820 lRes!18 (t!385339 lt!2601042)))))

(declare-fun b!7313222 () Bool)

(declare-fun c!1357694 () Bool)

(assert (=> b!7313222 (= c!1357694 (not (isEmpty!40849 (t!385339 lRes!18))))))

(declare-fun e!4377599 () Unit!164502)

(assert (=> b!7313222 (= e!4377596 e!4377599)))

(declare-fun b!7313223 () Bool)

(declare-fun call!665742 () Unit!164502)

(assert (=> b!7313223 (= e!4377599 call!665742)))

(declare-fun b!7313224 () Bool)

(assert (=> b!7313224 (= e!4377596 call!665742)))

(declare-fun b!7313225 () Bool)

(assert (=> b!7313225 (= e!4377598 (subseq!820 lRes!18 lt!2601042))))

(declare-fun b!7313226 () Bool)

(declare-fun Unit!164506 () Unit!164502)

(assert (=> b!7313226 (= e!4377599 Unit!164506)))

(declare-fun bm!665737 () Bool)

(assert (=> bm!665737 (= call!665742 (subseqTail!65 (ite c!1357693 lRes!18 (t!385339 lRes!18)) (t!385339 lt!2601042)))))

(declare-fun b!7313227 () Bool)

(declare-fun Unit!164507 () Unit!164502)

(assert (=> b!7313227 (= e!4377597 Unit!164507)))

(assert (= (and d!2270677 res!2954845) b!7313225))

(assert (= (and d!2270677 c!1357695) b!7313221))

(assert (= (and d!2270677 (not c!1357695)) b!7313227))

(assert (= (and b!7313221 c!1357693) b!7313224))

(assert (= (and b!7313221 (not c!1357693)) b!7313222))

(assert (= (and b!7313222 c!1357694) b!7313223))

(assert (= (and b!7313222 (not c!1357694)) b!7313226))

(assert (= (or b!7313224 b!7313223) bm!665737))

(declare-fun m!7977390 () Bool)

(assert (=> b!7313222 m!7977390))

(declare-fun m!7977392 () Bool)

(assert (=> bm!665737 m!7977392))

(assert (=> b!7313225 m!7977346))

(declare-fun m!7977394 () Bool)

(assert (=> b!7313221 m!7977394))

(declare-fun m!7977396 () Bool)

(assert (=> d!2270677 m!7977396))

(assert (=> d!2270677 m!7977396))

(declare-fun m!7977398 () Bool)

(assert (=> d!2270677 m!7977398))

(declare-fun m!7977400 () Bool)

(assert (=> d!2270677 m!7977400))

(assert (=> b!7313187 d!2270677))

(declare-fun d!2270681 () Bool)

(declare-fun res!2954850 () Bool)

(declare-fun e!4377604 () Bool)

(assert (=> d!2270681 (=> res!2954850 e!4377604)))

(assert (=> d!2270681 (= res!2954850 (is-Nil!71039 (t!385339 lRes!18)))))

(assert (=> d!2270681 (= (forall!17741 (t!385339 lRes!18) lambda!451732) e!4377604)))

(declare-fun b!7313232 () Bool)

(declare-fun e!4377605 () Bool)

(assert (=> b!7313232 (= e!4377604 e!4377605)))

(declare-fun res!2954851 () Bool)

(assert (=> b!7313232 (=> (not res!2954851) (not e!4377605))))

(declare-fun dynLambda!29094 (Int B!3519) Bool)

(assert (=> b!7313232 (= res!2954851 (dynLambda!29094 lambda!451732 (h!77487 (t!385339 lRes!18))))))

(declare-fun b!7313233 () Bool)

(assert (=> b!7313233 (= e!4377605 (forall!17741 (t!385339 (t!385339 lRes!18)) lambda!451732))))

(assert (= (and d!2270681 (not res!2954850)) b!7313232))

(assert (= (and b!7313232 res!2954851) b!7313233))

(declare-fun b_lambda!282293 () Bool)

(assert (=> (not b_lambda!282293) (not b!7313232)))

(declare-fun m!7977402 () Bool)

(assert (=> b!7313232 m!7977402))

(declare-fun m!7977404 () Bool)

(assert (=> b!7313233 m!7977404))

(assert (=> b!7313187 d!2270681))

(declare-fun d!2270683 () Bool)

(declare-fun e!4377608 () Bool)

(assert (=> d!2270683 e!4377608))

(declare-fun res!2954854 () Bool)

(assert (=> d!2270683 (=> (not res!2954854) (not e!4377608))))

(declare-fun lt!2601070 () List!71163)

(declare-fun noDuplicate!3039 (List!71163) Bool)

(assert (=> d!2270683 (= res!2954854 (noDuplicate!3039 lt!2601070))))

(declare-fun choose!56658 ((Set B!3519)) List!71163)

(assert (=> d!2270683 (= lt!2601070 (choose!56658 (dynLambda!29092 f!883 elmt!118)))))

(assert (=> d!2270683 (= (toList!11572 (dynLambda!29092 f!883 elmt!118)) lt!2601070)))

(declare-fun b!7313236 () Bool)

(declare-fun content!14858 (List!71163) (Set B!3519))

(assert (=> b!7313236 (= e!4377608 (= (content!14858 lt!2601070) (dynLambda!29092 f!883 elmt!118)))))

(assert (= (and d!2270683 res!2954854) b!7313236))

(declare-fun m!7977406 () Bool)

(assert (=> d!2270683 m!7977406))

(assert (=> d!2270683 m!7977356))

(declare-fun m!7977408 () Bool)

(assert (=> d!2270683 m!7977408))

(declare-fun m!7977410 () Bool)

(assert (=> b!7313236 m!7977410))

(assert (=> b!7313187 d!2270683))

(declare-fun bs!1914608 () Bool)

(declare-fun d!2270685 () Bool)

(assert (= bs!1914608 (and d!2270685 b!7313187)))

(declare-fun lt!2601076 () List!71163)

(declare-fun lambda!451740 () Int)

(assert (=> bs!1914608 (= (= lt!2601076 lt!2601041) (= lambda!451740 lambda!451732))))

(assert (=> d!2270685 true))

(assert (=> d!2270685 (forall!17741 (t!385339 lRes!18) lambda!451740)))

(assert (=> d!2270685 (= lt!2601076 (toList!11572 (dynLambda!29092 f!883 elmt!118)))))

(declare-fun lt!2601075 () Unit!164502)

(declare-fun choose!56659 ((Set A!817) A!817 Int List!71163) Unit!164502)

(assert (=> d!2270685 (= lt!2601075 (choose!56659 s!1437 elmt!118 f!883 (t!385339 lRes!18)))))

(assert (=> d!2270685 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!817))))))

(assert (=> d!2270685 (= (lemmaFlatMapOnSingletonSetList1!13 s!1437 elmt!118 f!883 (t!385339 lRes!18)) lt!2601075)))

(declare-fun b_lambda!282295 () Bool)

(assert (=> (not b_lambda!282295) (not d!2270685)))

(assert (=> d!2270685 t!385338))

(declare-fun b_and!351319 () Bool)

(assert (= b_and!351313 (and (=> t!385338 result!352848) b_and!351319)))

(assert (=> d!2270685 m!7977356))

(assert (=> d!2270685 m!7977362))

(assert (=> d!2270685 m!7977354))

(assert (=> d!2270685 m!7977356))

(declare-fun m!7977412 () Bool)

(assert (=> d!2270685 m!7977412))

(declare-fun m!7977414 () Bool)

(assert (=> d!2270685 m!7977414))

(assert (=> b!7313187 d!2270685))

(declare-fun d!2270687 () Bool)

(declare-fun contains!20773 (List!71163 B!3519) Bool)

(assert (=> d!2270687 (contains!20773 lt!2601042 (h!77487 lRes!18))))

(declare-fun lt!2601081 () Unit!164502)

(declare-fun choose!56660 (List!71163 List!71163 B!3519) Unit!164502)

(assert (=> d!2270687 (= lt!2601081 (choose!56660 lRes!18 lt!2601042 (h!77487 lRes!18)))))

(declare-fun e!4377619 () Bool)

(assert (=> d!2270687 e!4377619))

(declare-fun res!2954859 () Bool)

(assert (=> d!2270687 (=> (not res!2954859) (not e!4377619))))

(assert (=> d!2270687 (= res!2954859 (subseq!820 lRes!18 lt!2601042))))

(assert (=> d!2270687 (= (subseqContains!37 lRes!18 lt!2601042 (h!77487 lRes!18)) lt!2601081)))

(declare-fun b!7313253 () Bool)

(assert (=> b!7313253 (= e!4377619 (contains!20773 lRes!18 (h!77487 lRes!18)))))

(assert (= (and d!2270687 res!2954859) b!7313253))

(declare-fun m!7977416 () Bool)

(assert (=> d!2270687 m!7977416))

(declare-fun m!7977418 () Bool)

(assert (=> d!2270687 m!7977418))

(assert (=> d!2270687 m!7977346))

(declare-fun m!7977420 () Bool)

(assert (=> b!7313253 m!7977420))

(assert (=> b!7313187 d!2270687))

(declare-fun b!7313263 () Bool)

(declare-fun e!4377631 () Bool)

(declare-fun e!4377629 () Bool)

(assert (=> b!7313263 (= e!4377631 e!4377629)))

(declare-fun res!2954871 () Bool)

(assert (=> b!7313263 (=> res!2954871 e!4377629)))

(declare-fun e!4377628 () Bool)

(assert (=> b!7313263 (= res!2954871 e!4377628)))

(declare-fun res!2954868 () Bool)

(assert (=> b!7313263 (=> (not res!2954868) (not e!4377628))))

(assert (=> b!7313263 (= res!2954868 (= (h!77487 lRes!18) (h!77487 lt!2601042)))))

(declare-fun b!7313265 () Bool)

(assert (=> b!7313265 (= e!4377629 (subseq!820 lRes!18 (t!385339 lt!2601042)))))

(declare-fun b!7313262 () Bool)

(declare-fun e!4377630 () Bool)

(assert (=> b!7313262 (= e!4377630 e!4377631)))

(declare-fun res!2954869 () Bool)

(assert (=> b!7313262 (=> (not res!2954869) (not e!4377631))))

(assert (=> b!7313262 (= res!2954869 (is-Cons!71039 lt!2601042))))

(declare-fun b!7313264 () Bool)

(assert (=> b!7313264 (= e!4377628 (subseq!820 (t!385339 lRes!18) (t!385339 lt!2601042)))))

(declare-fun d!2270689 () Bool)

(declare-fun res!2954870 () Bool)

(assert (=> d!2270689 (=> res!2954870 e!4377630)))

(assert (=> d!2270689 (= res!2954870 (is-Nil!71039 lRes!18))))

(assert (=> d!2270689 (= (subseq!820 lRes!18 lt!2601042) e!4377630)))

(assert (= (and d!2270689 (not res!2954870)) b!7313262))

(assert (= (and b!7313262 res!2954869) b!7313263))

(assert (= (and b!7313263 res!2954868) b!7313264))

(assert (= (and b!7313263 (not res!2954871)) b!7313265))

(assert (=> b!7313265 m!7977394))

(declare-fun m!7977422 () Bool)

(assert (=> b!7313264 m!7977422))

(assert (=> b!7313183 d!2270689))

(declare-fun d!2270691 () Bool)

(declare-fun e!4377632 () Bool)

(assert (=> d!2270691 e!4377632))

(declare-fun res!2954872 () Bool)

(assert (=> d!2270691 (=> (not res!2954872) (not e!4377632))))

(declare-fun lt!2601082 () List!71163)

(assert (=> d!2270691 (= res!2954872 (noDuplicate!3039 lt!2601082))))

(assert (=> d!2270691 (= lt!2601082 (choose!56658 lt!2601045))))

(assert (=> d!2270691 (= (toList!11572 lt!2601045) lt!2601082)))

(declare-fun b!7313266 () Bool)

(assert (=> b!7313266 (= e!4377632 (= (content!14858 lt!2601082) lt!2601045))))

(assert (= (and d!2270691 res!2954872) b!7313266))

(declare-fun m!7977424 () Bool)

(assert (=> d!2270691 m!7977424))

(declare-fun m!7977426 () Bool)

(assert (=> d!2270691 m!7977426))

(declare-fun m!7977428 () Bool)

(assert (=> b!7313266 m!7977428))

(assert (=> b!7313183 d!2270691))

(declare-fun d!2270693 () Bool)

(declare-fun choose!56661 ((Set A!817) Int) (Set B!3519))

(assert (=> d!2270693 (= (flatMap!3019 s!1437 f!883) (choose!56661 s!1437 f!883))))

(declare-fun bs!1914609 () Bool)

(assert (= bs!1914609 d!2270693))

(declare-fun m!7977430 () Bool)

(assert (=> bs!1914609 m!7977430))

(assert (=> b!7313183 d!2270693))

(assert (=> b!7313185 d!2270681))

(declare-fun condSetEmpty!54046 () Bool)

(assert (=> tb!262205 (= condSetEmpty!54046 (= (dynLambda!29092 f!883 elmt!118) (as set.empty (Set B!3519))))))

(declare-fun setRes!54046 () Bool)

(assert (=> tb!262205 (= result!352848 setRes!54046)))

(declare-fun setIsEmpty!54046 () Bool)

(assert (=> setIsEmpty!54046 setRes!54046))

(declare-fun setNonEmpty!54046 () Bool)

(declare-fun tp!2075538 () Bool)

(assert (=> setNonEmpty!54046 (= setRes!54046 (and tp!2075538 tp_is_empty!47431))))

(declare-fun setRest!54046 () (Set B!3519))

(declare-fun setElem!54046 () B!3519)

(assert (=> setNonEmpty!54046 (= (dynLambda!29092 f!883 elmt!118) (set.union (set.insert setElem!54046 (as set.empty (Set B!3519))) setRest!54046))))

(assert (= (and tb!262205 condSetEmpty!54046) setIsEmpty!54046))

(assert (= (and tb!262205 (not condSetEmpty!54046)) setNonEmpty!54046))

(declare-fun condSetEmpty!54049 () Bool)

(assert (=> setNonEmpty!54040 (= condSetEmpty!54049 (= setRest!54040 (as set.empty (Set A!817))))))

(declare-fun setRes!54049 () Bool)

(assert (=> setNonEmpty!54040 (= tp!2075524 setRes!54049)))

(declare-fun setIsEmpty!54049 () Bool)

(assert (=> setIsEmpty!54049 setRes!54049))

(declare-fun setNonEmpty!54049 () Bool)

(declare-fun tp!2075541 () Bool)

(assert (=> setNonEmpty!54049 (= setRes!54049 (and tp!2075541 tp_is_empty!47429))))

(declare-fun setElem!54049 () A!817)

(declare-fun setRest!54049 () (Set A!817))

(assert (=> setNonEmpty!54049 (= setRest!54040 (set.union (set.insert setElem!54049 (as set.empty (Set A!817))) setRest!54049))))

(assert (= (and setNonEmpty!54040 condSetEmpty!54049) setIsEmpty!54049))

(assert (= (and setNonEmpty!54040 (not condSetEmpty!54049)) setNonEmpty!54049))

(declare-fun b!7313282 () Bool)

(declare-fun e!4377639 () Bool)

(declare-fun tp!2075544 () Bool)

(assert (=> b!7313282 (= e!4377639 (and tp_is_empty!47431 tp!2075544))))

(assert (=> b!7313186 (= tp!2075526 e!4377639)))

(assert (= (and b!7313186 (is-Cons!71039 (t!385339 lRes!18))) b!7313282))

(declare-fun b_lambda!282297 () Bool)

(assert (= b_lambda!282293 (or b!7313187 b_lambda!282297)))

(declare-fun bs!1914610 () Bool)

(declare-fun d!2270695 () Bool)

(assert (= bs!1914610 (and d!2270695 b!7313187)))

(assert (=> bs!1914610 (= (dynLambda!29094 lambda!451732 (h!77487 (t!385339 lRes!18))) (contains!20773 lt!2601041 (h!77487 (t!385339 lRes!18))))))

(declare-fun m!7977432 () Bool)

(assert (=> bs!1914610 m!7977432))

(assert (=> b!7313232 d!2270695))

(declare-fun b_lambda!282299 () Bool)

(assert (= b_lambda!282295 (or (and start!712414 b_free!133971) b_lambda!282299)))

(push 1)

(assert (not b!7313225))

(assert (not b!7313253))

(assert (not b_lambda!282289))

(assert (not b_next!134761))

(assert (not b!7313282))

(assert (not b!7313264))

(assert (not bm!665737))

(assert tp_is_empty!47431)

(assert (not d!2270677))

(assert (not b_lambda!282297))

(assert (not b_lambda!282299))

(assert (not b!7313266))

(assert (not d!2270683))

(assert (not b!7313221))

(assert (not b!7313236))

(assert (not d!2270691))

(assert (not setNonEmpty!54046))

(assert (not d!2270687))

(assert (not d!2270685))

(assert (not b!7313233))

(assert (not b!7313222))

(assert tp_is_empty!47429)

(assert (not d!2270693))

(assert (not b!7313265))

(assert (not setNonEmpty!54049))

(assert b_and!351319)

(assert (not bs!1914610))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351319)

(assert (not b_next!134761))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7313318 () Bool)

(declare-fun e!4377671 () Bool)

(declare-fun e!4377669 () Bool)

(assert (=> b!7313318 (= e!4377671 e!4377669)))

(declare-fun res!2954902 () Bool)

(assert (=> b!7313318 (=> res!2954902 e!4377669)))

(declare-fun e!4377668 () Bool)

(assert (=> b!7313318 (= res!2954902 e!4377668)))

(declare-fun res!2954899 () Bool)

(assert (=> b!7313318 (=> (not res!2954899) (not e!4377668))))

(assert (=> b!7313318 (= res!2954899 (= (h!77487 lRes!18) (h!77487 (t!385339 lt!2601042))))))

(declare-fun b!7313320 () Bool)

(assert (=> b!7313320 (= e!4377669 (subseq!820 lRes!18 (t!385339 (t!385339 lt!2601042))))))

(declare-fun b!7313317 () Bool)

(declare-fun e!4377670 () Bool)

(assert (=> b!7313317 (= e!4377670 e!4377671)))

(declare-fun res!2954900 () Bool)

(assert (=> b!7313317 (=> (not res!2954900) (not e!4377671))))

(assert (=> b!7313317 (= res!2954900 (is-Cons!71039 (t!385339 lt!2601042)))))

(declare-fun b!7313319 () Bool)

(assert (=> b!7313319 (= e!4377668 (subseq!820 (t!385339 lRes!18) (t!385339 (t!385339 lt!2601042))))))

(declare-fun d!2270713 () Bool)

(declare-fun res!2954901 () Bool)

(assert (=> d!2270713 (=> res!2954901 e!4377670)))

(assert (=> d!2270713 (= res!2954901 (is-Nil!71039 lRes!18))))

(assert (=> d!2270713 (= (subseq!820 lRes!18 (t!385339 lt!2601042)) e!4377670)))

(assert (= (and d!2270713 (not res!2954901)) b!7313317))

(assert (= (and b!7313317 res!2954900) b!7313318))

(assert (= (and b!7313318 res!2954899) b!7313319))

(assert (= (and b!7313318 (not res!2954902)) b!7313320))

(declare-fun m!7977478 () Bool)

(assert (=> b!7313320 m!7977478))

(declare-fun m!7977480 () Bool)

(assert (=> b!7313319 m!7977480))

(assert (=> b!7313221 d!2270713))

(declare-fun d!2270715 () Bool)

(assert (=> d!2270715 (= (isEmpty!40849 (t!385339 lRes!18)) (is-Nil!71039 (t!385339 lRes!18)))))

(assert (=> b!7313222 d!2270715))

(declare-fun d!2270717 () Bool)

(declare-fun res!2954907 () Bool)

(declare-fun e!4377676 () Bool)

(assert (=> d!2270717 (=> res!2954907 e!4377676)))

(assert (=> d!2270717 (= res!2954907 (is-Nil!71039 lt!2601082))))

(assert (=> d!2270717 (= (noDuplicate!3039 lt!2601082) e!4377676)))

(declare-fun b!7313325 () Bool)

(declare-fun e!4377677 () Bool)

(assert (=> b!7313325 (= e!4377676 e!4377677)))

(declare-fun res!2954908 () Bool)

(assert (=> b!7313325 (=> (not res!2954908) (not e!4377677))))

(assert (=> b!7313325 (= res!2954908 (not (contains!20773 (t!385339 lt!2601082) (h!77487 lt!2601082))))))

(declare-fun b!7313326 () Bool)

(assert (=> b!7313326 (= e!4377677 (noDuplicate!3039 (t!385339 lt!2601082)))))

(assert (= (and d!2270717 (not res!2954907)) b!7313325))

(assert (= (and b!7313325 res!2954908) b!7313326))

(declare-fun m!7977482 () Bool)

(assert (=> b!7313325 m!7977482))

(declare-fun m!7977484 () Bool)

(assert (=> b!7313326 m!7977484))

(assert (=> d!2270691 d!2270717))

(declare-fun d!2270719 () Bool)

(declare-fun e!4377683 () Bool)

(assert (=> d!2270719 e!4377683))

(declare-fun res!2954913 () Bool)

(assert (=> d!2270719 (=> (not res!2954913) (not e!4377683))))

(declare-fun res!2954914 () List!71163)

(assert (=> d!2270719 (= res!2954913 (noDuplicate!3039 res!2954914))))

(declare-fun e!4377682 () Bool)

(assert (=> d!2270719 e!4377682))

(assert (=> d!2270719 (= (choose!56658 lt!2601045) res!2954914)))

(declare-fun b!7313331 () Bool)

(declare-fun tp!2075556 () Bool)

(assert (=> b!7313331 (= e!4377682 (and tp_is_empty!47431 tp!2075556))))

(declare-fun b!7313332 () Bool)

(assert (=> b!7313332 (= e!4377683 (= (content!14858 res!2954914) lt!2601045))))

(assert (= (and d!2270719 (is-Cons!71039 res!2954914)) b!7313331))

(assert (= (and d!2270719 res!2954913) b!7313332))

(declare-fun m!7977486 () Bool)

(assert (=> d!2270719 m!7977486))

(declare-fun m!7977488 () Bool)

(assert (=> b!7313332 m!7977488))

(assert (=> d!2270691 d!2270719))

(declare-fun d!2270721 () Bool)

(declare-fun res!2954915 () Bool)

(declare-fun e!4377684 () Bool)

(assert (=> d!2270721 (=> res!2954915 e!4377684)))

(assert (=> d!2270721 (= res!2954915 (is-Nil!71039 (t!385339 lRes!18)))))

(assert (=> d!2270721 (= (forall!17741 (t!385339 lRes!18) lambda!451740) e!4377684)))

(declare-fun b!7313333 () Bool)

(declare-fun e!4377685 () Bool)

(assert (=> b!7313333 (= e!4377684 e!4377685)))

(declare-fun res!2954916 () Bool)

(assert (=> b!7313333 (=> (not res!2954916) (not e!4377685))))

(assert (=> b!7313333 (= res!2954916 (dynLambda!29094 lambda!451740 (h!77487 (t!385339 lRes!18))))))

(declare-fun b!7313334 () Bool)

(assert (=> b!7313334 (= e!4377685 (forall!17741 (t!385339 (t!385339 lRes!18)) lambda!451740))))

(assert (= (and d!2270721 (not res!2954915)) b!7313333))

(assert (= (and b!7313333 res!2954916) b!7313334))

(declare-fun b_lambda!282309 () Bool)

(assert (=> (not b_lambda!282309) (not b!7313333)))

(declare-fun m!7977490 () Bool)

(assert (=> b!7313333 m!7977490))

(declare-fun m!7977492 () Bool)

(assert (=> b!7313334 m!7977492))

(assert (=> d!2270685 d!2270721))

(assert (=> d!2270685 d!2270683))

(declare-fun bs!1914614 () Bool)

(declare-fun d!2270723 () Bool)

(assert (= bs!1914614 (and d!2270723 b!7313187)))

(declare-fun lt!2601099 () List!71163)

(declare-fun lambda!451746 () Int)

(assert (=> bs!1914614 (= (= lt!2601099 lt!2601041) (= lambda!451746 lambda!451732))))

(declare-fun bs!1914615 () Bool)

(assert (= bs!1914615 (and d!2270723 d!2270685)))

(assert (=> bs!1914615 (= (= lt!2601099 lt!2601076) (= lambda!451746 lambda!451740))))

(assert (=> d!2270723 true))

(assert (=> d!2270723 (forall!17741 (t!385339 lRes!18) lambda!451746)))

(assert (=> d!2270723 (= lt!2601099 (toList!11572 (dynLambda!29092 f!883 elmt!118)))))

(assert (=> d!2270723 true))

(declare-fun _$14!1603 () Unit!164502)

(assert (=> d!2270723 (= (choose!56659 s!1437 elmt!118 f!883 (t!385339 lRes!18)) _$14!1603)))

(declare-fun b_lambda!282311 () Bool)

(assert (=> (not b_lambda!282311) (not d!2270723)))

(assert (=> d!2270723 t!385338))

(declare-fun b_and!351323 () Bool)

(assert (= b_and!351319 (and (=> t!385338 result!352848) b_and!351323)))

(declare-fun m!7977494 () Bool)

(assert (=> d!2270723 m!7977494))

(assert (=> d!2270723 m!7977356))

(assert (=> d!2270723 m!7977356))

(assert (=> d!2270723 m!7977362))

(assert (=> d!2270685 d!2270723))

(declare-fun d!2270725 () Bool)

(declare-fun res!2954917 () Bool)

(declare-fun e!4377686 () Bool)

(assert (=> d!2270725 (=> res!2954917 e!4377686)))

(assert (=> d!2270725 (= res!2954917 (is-Nil!71039 (t!385339 (t!385339 lRes!18))))))

(assert (=> d!2270725 (= (forall!17741 (t!385339 (t!385339 lRes!18)) lambda!451732) e!4377686)))

(declare-fun b!7313335 () Bool)

(declare-fun e!4377687 () Bool)

(assert (=> b!7313335 (= e!4377686 e!4377687)))

(declare-fun res!2954918 () Bool)

(assert (=> b!7313335 (=> (not res!2954918) (not e!4377687))))

(assert (=> b!7313335 (= res!2954918 (dynLambda!29094 lambda!451732 (h!77487 (t!385339 (t!385339 lRes!18)))))))

(declare-fun b!7313336 () Bool)

(assert (=> b!7313336 (= e!4377687 (forall!17741 (t!385339 (t!385339 (t!385339 lRes!18))) lambda!451732))))

(assert (= (and d!2270725 (not res!2954917)) b!7313335))

(assert (= (and b!7313335 res!2954918) b!7313336))

(declare-fun b_lambda!282313 () Bool)

(assert (=> (not b_lambda!282313) (not b!7313335)))

(declare-fun m!7977496 () Bool)

(assert (=> b!7313335 m!7977496))

(declare-fun m!7977498 () Bool)

(assert (=> b!7313336 m!7977498))

(assert (=> b!7313233 d!2270725))

(declare-fun d!2270727 () Bool)

(declare-fun lt!2601102 () Bool)

(assert (=> d!2270727 (= lt!2601102 (set.member (h!77487 lRes!18) (content!14858 lRes!18)))))

(declare-fun e!4377693 () Bool)

(assert (=> d!2270727 (= lt!2601102 e!4377693)))

(declare-fun res!2954923 () Bool)

(assert (=> d!2270727 (=> (not res!2954923) (not e!4377693))))

(assert (=> d!2270727 (= res!2954923 (is-Cons!71039 lRes!18))))

(assert (=> d!2270727 (= (contains!20773 lRes!18 (h!77487 lRes!18)) lt!2601102)))

(declare-fun b!7313341 () Bool)

(declare-fun e!4377692 () Bool)

(assert (=> b!7313341 (= e!4377693 e!4377692)))

(declare-fun res!2954924 () Bool)

(assert (=> b!7313341 (=> res!2954924 e!4377692)))

(assert (=> b!7313341 (= res!2954924 (= (h!77487 lRes!18) (h!77487 lRes!18)))))

(declare-fun b!7313342 () Bool)

(assert (=> b!7313342 (= e!4377692 (contains!20773 (t!385339 lRes!18) (h!77487 lRes!18)))))

(assert (= (and d!2270727 res!2954923) b!7313341))

(assert (= (and b!7313341 (not res!2954924)) b!7313342))

(declare-fun m!7977500 () Bool)

(assert (=> d!2270727 m!7977500))

(declare-fun m!7977502 () Bool)

(assert (=> d!2270727 m!7977502))

(declare-fun m!7977504 () Bool)

(assert (=> b!7313342 m!7977504))

(assert (=> b!7313253 d!2270727))

(declare-fun d!2270729 () Bool)

(assert (=> d!2270729 true))

(declare-fun setRes!54058 () Bool)

(assert (=> d!2270729 setRes!54058))

(declare-fun condSetEmpty!54058 () Bool)

(declare-fun res!2954927 () (Set B!3519))

(assert (=> d!2270729 (= condSetEmpty!54058 (= res!2954927 (as set.empty (Set B!3519))))))

(assert (=> d!2270729 (= (choose!56661 s!1437 f!883) res!2954927)))

(declare-fun setIsEmpty!54058 () Bool)

(assert (=> setIsEmpty!54058 setRes!54058))

(declare-fun setNonEmpty!54058 () Bool)

(declare-fun tp!2075559 () Bool)

(assert (=> setNonEmpty!54058 (= setRes!54058 (and tp!2075559 tp_is_empty!47431))))

(declare-fun setElem!54058 () B!3519)

(declare-fun setRest!54058 () (Set B!3519))

(assert (=> setNonEmpty!54058 (= res!2954927 (set.union (set.insert setElem!54058 (as set.empty (Set B!3519))) setRest!54058))))

(assert (= (and d!2270729 condSetEmpty!54058) setIsEmpty!54058))

(assert (= (and d!2270729 (not condSetEmpty!54058)) setNonEmpty!54058))

(assert (=> d!2270693 d!2270729))

(declare-fun b!7313344 () Bool)

(declare-fun e!4377697 () Bool)

(declare-fun e!4377695 () Bool)

(assert (=> b!7313344 (= e!4377697 e!4377695)))

(declare-fun res!2954931 () Bool)

(assert (=> b!7313344 (=> res!2954931 e!4377695)))

(declare-fun e!4377694 () Bool)

(assert (=> b!7313344 (= res!2954931 e!4377694)))

(declare-fun res!2954928 () Bool)

(assert (=> b!7313344 (=> (not res!2954928) (not e!4377694))))

(assert (=> b!7313344 (= res!2954928 (= (h!77487 (tail!14628 lRes!18)) (h!77487 lt!2601042)))))

(declare-fun b!7313346 () Bool)

(assert (=> b!7313346 (= e!4377695 (subseq!820 (tail!14628 lRes!18) (t!385339 lt!2601042)))))

(declare-fun b!7313343 () Bool)

(declare-fun e!4377696 () Bool)

(assert (=> b!7313343 (= e!4377696 e!4377697)))

(declare-fun res!2954929 () Bool)

(assert (=> b!7313343 (=> (not res!2954929) (not e!4377697))))

(assert (=> b!7313343 (= res!2954929 (is-Cons!71039 lt!2601042))))

(declare-fun b!7313345 () Bool)

(assert (=> b!7313345 (= e!4377694 (subseq!820 (t!385339 (tail!14628 lRes!18)) (t!385339 lt!2601042)))))

(declare-fun d!2270731 () Bool)

(declare-fun res!2954930 () Bool)

(assert (=> d!2270731 (=> res!2954930 e!4377696)))

(assert (=> d!2270731 (= res!2954930 (is-Nil!71039 (tail!14628 lRes!18)))))

(assert (=> d!2270731 (= (subseq!820 (tail!14628 lRes!18) lt!2601042) e!4377696)))

(assert (= (and d!2270731 (not res!2954930)) b!7313343))

(assert (= (and b!7313343 res!2954929) b!7313344))

(assert (= (and b!7313344 res!2954928) b!7313345))

(assert (= (and b!7313344 (not res!2954931)) b!7313346))

(assert (=> b!7313346 m!7977396))

(declare-fun m!7977506 () Bool)

(assert (=> b!7313346 m!7977506))

(declare-fun m!7977508 () Bool)

(assert (=> b!7313345 m!7977508))

(assert (=> d!2270677 d!2270731))

(declare-fun d!2270733 () Bool)

(assert (=> d!2270733 (= (tail!14628 lRes!18) (t!385339 lRes!18))))

(assert (=> d!2270677 d!2270733))

(declare-fun d!2270735 () Bool)

(assert (=> d!2270735 (= (isEmpty!40849 lRes!18) (is-Nil!71039 lRes!18))))

(assert (=> d!2270677 d!2270735))

(assert (=> b!7313225 d!2270689))

(declare-fun d!2270737 () Bool)

(declare-fun c!1357707 () Bool)

(assert (=> d!2270737 (= c!1357707 (is-Nil!71039 lt!2601070))))

(declare-fun e!4377700 () (Set B!3519))

(assert (=> d!2270737 (= (content!14858 lt!2601070) e!4377700)))

(declare-fun b!7313351 () Bool)

(assert (=> b!7313351 (= e!4377700 (as set.empty (Set B!3519)))))

(declare-fun b!7313352 () Bool)

(assert (=> b!7313352 (= e!4377700 (set.union (set.insert (h!77487 lt!2601070) (as set.empty (Set B!3519))) (content!14858 (t!385339 lt!2601070))))))

(assert (= (and d!2270737 c!1357707) b!7313351))

(assert (= (and d!2270737 (not c!1357707)) b!7313352))

(declare-fun m!7977510 () Bool)

(assert (=> b!7313352 m!7977510))

(declare-fun m!7977512 () Bool)

(assert (=> b!7313352 m!7977512))

(assert (=> b!7313236 d!2270737))

(declare-fun d!2270739 () Bool)

(declare-fun c!1357708 () Bool)

(assert (=> d!2270739 (= c!1357708 (is-Nil!71039 lt!2601082))))

(declare-fun e!4377701 () (Set B!3519))

(assert (=> d!2270739 (= (content!14858 lt!2601082) e!4377701)))

(declare-fun b!7313353 () Bool)

(assert (=> b!7313353 (= e!4377701 (as set.empty (Set B!3519)))))

(declare-fun b!7313354 () Bool)

(assert (=> b!7313354 (= e!4377701 (set.union (set.insert (h!77487 lt!2601082) (as set.empty (Set B!3519))) (content!14858 (t!385339 lt!2601082))))))

(assert (= (and d!2270739 c!1357708) b!7313353))

(assert (= (and d!2270739 (not c!1357708)) b!7313354))

(declare-fun m!7977514 () Bool)

(assert (=> b!7313354 m!7977514))

(declare-fun m!7977516 () Bool)

(assert (=> b!7313354 m!7977516))

(assert (=> b!7313266 d!2270739))

(declare-fun b!7313356 () Bool)

(declare-fun e!4377705 () Bool)

(declare-fun e!4377703 () Bool)

(assert (=> b!7313356 (= e!4377705 e!4377703)))

(declare-fun res!2954935 () Bool)

(assert (=> b!7313356 (=> res!2954935 e!4377703)))

(declare-fun e!4377702 () Bool)

(assert (=> b!7313356 (= res!2954935 e!4377702)))

(declare-fun res!2954932 () Bool)

(assert (=> b!7313356 (=> (not res!2954932) (not e!4377702))))

(assert (=> b!7313356 (= res!2954932 (= (h!77487 (t!385339 lRes!18)) (h!77487 (t!385339 lt!2601042))))))

(declare-fun b!7313358 () Bool)

(assert (=> b!7313358 (= e!4377703 (subseq!820 (t!385339 lRes!18) (t!385339 (t!385339 lt!2601042))))))

(declare-fun b!7313355 () Bool)

(declare-fun e!4377704 () Bool)

(assert (=> b!7313355 (= e!4377704 e!4377705)))

(declare-fun res!2954933 () Bool)

(assert (=> b!7313355 (=> (not res!2954933) (not e!4377705))))

(assert (=> b!7313355 (= res!2954933 (is-Cons!71039 (t!385339 lt!2601042)))))

(declare-fun b!7313357 () Bool)

(assert (=> b!7313357 (= e!4377702 (subseq!820 (t!385339 (t!385339 lRes!18)) (t!385339 (t!385339 lt!2601042))))))

(declare-fun d!2270741 () Bool)

(declare-fun res!2954934 () Bool)

(assert (=> d!2270741 (=> res!2954934 e!4377704)))

(assert (=> d!2270741 (= res!2954934 (is-Nil!71039 (t!385339 lRes!18)))))

(assert (=> d!2270741 (= (subseq!820 (t!385339 lRes!18) (t!385339 lt!2601042)) e!4377704)))

(assert (= (and d!2270741 (not res!2954934)) b!7313355))

(assert (= (and b!7313355 res!2954933) b!7313356))

(assert (= (and b!7313356 res!2954932) b!7313357))

(assert (= (and b!7313356 (not res!2954935)) b!7313358))

(assert (=> b!7313358 m!7977480))

(declare-fun m!7977518 () Bool)

(assert (=> b!7313357 m!7977518))

(assert (=> b!7313264 d!2270741))

(declare-fun d!2270743 () Bool)

(assert (=> d!2270743 (subseq!820 (tail!14628 (ite c!1357693 lRes!18 (t!385339 lRes!18))) (t!385339 lt!2601042))))

(declare-fun lt!2601103 () Unit!164502)

(declare-fun e!4377707 () Unit!164502)

(assert (=> d!2270743 (= lt!2601103 e!4377707)))

(declare-fun c!1357711 () Bool)

(assert (=> d!2270743 (= c!1357711 (and (is-Cons!71039 (ite c!1357693 lRes!18 (t!385339 lRes!18))) (is-Cons!71039 (t!385339 lt!2601042))))))

(declare-fun e!4377708 () Bool)

(assert (=> d!2270743 e!4377708))

(declare-fun res!2954936 () Bool)

(assert (=> d!2270743 (=> (not res!2954936) (not e!4377708))))

(assert (=> d!2270743 (= res!2954936 (not (isEmpty!40849 (ite c!1357693 lRes!18 (t!385339 lRes!18)))))))

(assert (=> d!2270743 (= (subseqTail!65 (ite c!1357693 lRes!18 (t!385339 lRes!18)) (t!385339 lt!2601042)) lt!2601103)))

(declare-fun b!7313359 () Bool)

(declare-fun e!4377706 () Unit!164502)

(assert (=> b!7313359 (= e!4377707 e!4377706)))

(declare-fun c!1357709 () Bool)

(assert (=> b!7313359 (= c!1357709 (subseq!820 (ite c!1357693 lRes!18 (t!385339 lRes!18)) (t!385339 (t!385339 lt!2601042))))))

(declare-fun b!7313360 () Bool)

(declare-fun c!1357710 () Bool)

(assert (=> b!7313360 (= c!1357710 (not (isEmpty!40849 (t!385339 (ite c!1357693 lRes!18 (t!385339 lRes!18))))))))

(declare-fun e!4377709 () Unit!164502)

(assert (=> b!7313360 (= e!4377706 e!4377709)))

(declare-fun b!7313361 () Bool)

(declare-fun call!665746 () Unit!164502)

(assert (=> b!7313361 (= e!4377709 call!665746)))

(declare-fun b!7313362 () Bool)

(assert (=> b!7313362 (= e!4377706 call!665746)))

(declare-fun b!7313363 () Bool)

(assert (=> b!7313363 (= e!4377708 (subseq!820 (ite c!1357693 lRes!18 (t!385339 lRes!18)) (t!385339 lt!2601042)))))

(declare-fun b!7313364 () Bool)

(declare-fun Unit!164510 () Unit!164502)

(assert (=> b!7313364 (= e!4377709 Unit!164510)))

(declare-fun bm!665741 () Bool)

(assert (=> bm!665741 (= call!665746 (subseqTail!65 (ite c!1357709 (ite c!1357693 lRes!18 (t!385339 lRes!18)) (t!385339 (ite c!1357693 lRes!18 (t!385339 lRes!18)))) (t!385339 (t!385339 lt!2601042))))))

(declare-fun b!7313365 () Bool)

(declare-fun Unit!164511 () Unit!164502)

(assert (=> b!7313365 (= e!4377707 Unit!164511)))

(assert (= (and d!2270743 res!2954936) b!7313363))

(assert (= (and d!2270743 c!1357711) b!7313359))

(assert (= (and d!2270743 (not c!1357711)) b!7313365))

(assert (= (and b!7313359 c!1357709) b!7313362))

(assert (= (and b!7313359 (not c!1357709)) b!7313360))

(assert (= (and b!7313360 c!1357710) b!7313361))

(assert (= (and b!7313360 (not c!1357710)) b!7313364))

(assert (= (or b!7313362 b!7313361) bm!665741))

(declare-fun m!7977520 () Bool)

(assert (=> b!7313360 m!7977520))

(declare-fun m!7977522 () Bool)

(assert (=> bm!665741 m!7977522))

(declare-fun m!7977524 () Bool)

(assert (=> b!7313363 m!7977524))

(declare-fun m!7977526 () Bool)

(assert (=> b!7313359 m!7977526))

(declare-fun m!7977528 () Bool)

(assert (=> d!2270743 m!7977528))

(assert (=> d!2270743 m!7977528))

(declare-fun m!7977530 () Bool)

(assert (=> d!2270743 m!7977530))

(declare-fun m!7977532 () Bool)

(assert (=> d!2270743 m!7977532))

(assert (=> bm!665737 d!2270743))

(declare-fun d!2270745 () Bool)

(declare-fun lt!2601104 () Bool)

(assert (=> d!2270745 (= lt!2601104 (set.member (h!77487 (t!385339 lRes!18)) (content!14858 lt!2601041)))))

(declare-fun e!4377711 () Bool)

(assert (=> d!2270745 (= lt!2601104 e!4377711)))

(declare-fun res!2954937 () Bool)

(assert (=> d!2270745 (=> (not res!2954937) (not e!4377711))))

(assert (=> d!2270745 (= res!2954937 (is-Cons!71039 lt!2601041))))

(assert (=> d!2270745 (= (contains!20773 lt!2601041 (h!77487 (t!385339 lRes!18))) lt!2601104)))

(declare-fun b!7313366 () Bool)

(declare-fun e!4377710 () Bool)

(assert (=> b!7313366 (= e!4377711 e!4377710)))

(declare-fun res!2954938 () Bool)

(assert (=> b!7313366 (=> res!2954938 e!4377710)))

(assert (=> b!7313366 (= res!2954938 (= (h!77487 lt!2601041) (h!77487 (t!385339 lRes!18))))))

(declare-fun b!7313367 () Bool)

(assert (=> b!7313367 (= e!4377710 (contains!20773 (t!385339 lt!2601041) (h!77487 (t!385339 lRes!18))))))

(assert (= (and d!2270745 res!2954937) b!7313366))

(assert (= (and b!7313366 (not res!2954938)) b!7313367))

(declare-fun m!7977534 () Bool)

(assert (=> d!2270745 m!7977534))

(declare-fun m!7977536 () Bool)

(assert (=> d!2270745 m!7977536))

(declare-fun m!7977538 () Bool)

(assert (=> b!7313367 m!7977538))

(assert (=> bs!1914610 d!2270745))

(assert (=> b!7313265 d!2270713))

(declare-fun d!2270747 () Bool)

(declare-fun lt!2601105 () Bool)

(assert (=> d!2270747 (= lt!2601105 (set.member (h!77487 lRes!18) (content!14858 lt!2601042)))))

(declare-fun e!4377713 () Bool)

(assert (=> d!2270747 (= lt!2601105 e!4377713)))

(declare-fun res!2954939 () Bool)

(assert (=> d!2270747 (=> (not res!2954939) (not e!4377713))))

(assert (=> d!2270747 (= res!2954939 (is-Cons!71039 lt!2601042))))

(assert (=> d!2270747 (= (contains!20773 lt!2601042 (h!77487 lRes!18)) lt!2601105)))

(declare-fun b!7313368 () Bool)

(declare-fun e!4377712 () Bool)

(assert (=> b!7313368 (= e!4377713 e!4377712)))

(declare-fun res!2954940 () Bool)

(assert (=> b!7313368 (=> res!2954940 e!4377712)))

(assert (=> b!7313368 (= res!2954940 (= (h!77487 lt!2601042) (h!77487 lRes!18)))))

(declare-fun b!7313369 () Bool)

(assert (=> b!7313369 (= e!4377712 (contains!20773 (t!385339 lt!2601042) (h!77487 lRes!18)))))

(assert (= (and d!2270747 res!2954939) b!7313368))

(assert (= (and b!7313368 (not res!2954940)) b!7313369))

(declare-fun m!7977540 () Bool)

(assert (=> d!2270747 m!7977540))

(declare-fun m!7977542 () Bool)

(assert (=> d!2270747 m!7977542))

(declare-fun m!7977544 () Bool)

(assert (=> b!7313369 m!7977544))

(assert (=> d!2270687 d!2270747))

(declare-fun d!2270749 () Bool)

(assert (=> d!2270749 (contains!20773 lt!2601042 (h!77487 lRes!18))))

(assert (=> d!2270749 true))

(declare-fun _$10!242 () Unit!164502)

(assert (=> d!2270749 (= (choose!56660 lRes!18 lt!2601042 (h!77487 lRes!18)) _$10!242)))

(declare-fun bs!1914616 () Bool)

(assert (= bs!1914616 d!2270749))

(assert (=> bs!1914616 m!7977416))

(assert (=> d!2270687 d!2270749))

(assert (=> d!2270687 d!2270689))

(declare-fun d!2270751 () Bool)

(declare-fun res!2954941 () Bool)

(declare-fun e!4377714 () Bool)

(assert (=> d!2270751 (=> res!2954941 e!4377714)))

(assert (=> d!2270751 (= res!2954941 (is-Nil!71039 lt!2601070))))

(assert (=> d!2270751 (= (noDuplicate!3039 lt!2601070) e!4377714)))

(declare-fun b!7313370 () Bool)

(declare-fun e!4377715 () Bool)

(assert (=> b!7313370 (= e!4377714 e!4377715)))

(declare-fun res!2954942 () Bool)

(assert (=> b!7313370 (=> (not res!2954942) (not e!4377715))))

(assert (=> b!7313370 (= res!2954942 (not (contains!20773 (t!385339 lt!2601070) (h!77487 lt!2601070))))))

(declare-fun b!7313371 () Bool)

(assert (=> b!7313371 (= e!4377715 (noDuplicate!3039 (t!385339 lt!2601070)))))

(assert (= (and d!2270751 (not res!2954941)) b!7313370))

(assert (= (and b!7313370 res!2954942) b!7313371))

(declare-fun m!7977546 () Bool)

(assert (=> b!7313370 m!7977546))

(declare-fun m!7977548 () Bool)

(assert (=> b!7313371 m!7977548))

(assert (=> d!2270683 d!2270751))

(declare-fun d!2270753 () Bool)

(declare-fun e!4377717 () Bool)

(assert (=> d!2270753 e!4377717))

(declare-fun res!2954943 () Bool)

(assert (=> d!2270753 (=> (not res!2954943) (not e!4377717))))

(declare-fun res!2954944 () List!71163)

(assert (=> d!2270753 (= res!2954943 (noDuplicate!3039 res!2954944))))

(declare-fun e!4377716 () Bool)

(assert (=> d!2270753 e!4377716))

(assert (=> d!2270753 (= (choose!56658 (dynLambda!29092 f!883 elmt!118)) res!2954944)))

(declare-fun b!7313372 () Bool)

(declare-fun tp!2075560 () Bool)

(assert (=> b!7313372 (= e!4377716 (and tp_is_empty!47431 tp!2075560))))

(declare-fun b!7313373 () Bool)

(assert (=> b!7313373 (= e!4377717 (= (content!14858 res!2954944) (dynLambda!29092 f!883 elmt!118)))))

(assert (= (and d!2270753 (is-Cons!71039 res!2954944)) b!7313372))

(assert (= (and d!2270753 res!2954943) b!7313373))

(declare-fun m!7977550 () Bool)

(assert (=> d!2270753 m!7977550))

(declare-fun m!7977552 () Bool)

(assert (=> b!7313373 m!7977552))

(assert (=> d!2270683 d!2270753))

(declare-fun b!7313374 () Bool)

(declare-fun e!4377718 () Bool)

(declare-fun tp!2075561 () Bool)

(assert (=> b!7313374 (= e!4377718 (and tp_is_empty!47431 tp!2075561))))

(assert (=> b!7313282 (= tp!2075544 e!4377718)))

(assert (= (and b!7313282 (is-Cons!71039 (t!385339 (t!385339 lRes!18)))) b!7313374))

(declare-fun condSetEmpty!54059 () Bool)

(assert (=> setNonEmpty!54049 (= condSetEmpty!54059 (= setRest!54049 (as set.empty (Set A!817))))))

(declare-fun setRes!54059 () Bool)

(assert (=> setNonEmpty!54049 (= tp!2075541 setRes!54059)))

(declare-fun setIsEmpty!54059 () Bool)

(assert (=> setIsEmpty!54059 setRes!54059))

(declare-fun setNonEmpty!54059 () Bool)

(declare-fun tp!2075562 () Bool)

(assert (=> setNonEmpty!54059 (= setRes!54059 (and tp!2075562 tp_is_empty!47429))))

(declare-fun setElem!54059 () A!817)

(declare-fun setRest!54059 () (Set A!817))

(assert (=> setNonEmpty!54059 (= setRest!54049 (set.union (set.insert setElem!54059 (as set.empty (Set A!817))) setRest!54059))))

(assert (= (and setNonEmpty!54049 condSetEmpty!54059) setIsEmpty!54059))

(assert (= (and setNonEmpty!54049 (not condSetEmpty!54059)) setNonEmpty!54059))

(declare-fun condSetEmpty!54060 () Bool)

(assert (=> setNonEmpty!54046 (= condSetEmpty!54060 (= setRest!54046 (as set.empty (Set B!3519))))))

(declare-fun setRes!54060 () Bool)

(assert (=> setNonEmpty!54046 (= tp!2075538 setRes!54060)))

(declare-fun setIsEmpty!54060 () Bool)

(assert (=> setIsEmpty!54060 setRes!54060))

(declare-fun setNonEmpty!54060 () Bool)

(declare-fun tp!2075563 () Bool)

(assert (=> setNonEmpty!54060 (= setRes!54060 (and tp!2075563 tp_is_empty!47431))))

(declare-fun setElem!54060 () B!3519)

(declare-fun setRest!54060 () (Set B!3519))

(assert (=> setNonEmpty!54060 (= setRest!54046 (set.union (set.insert setElem!54060 (as set.empty (Set B!3519))) setRest!54060))))

(assert (= (and setNonEmpty!54046 condSetEmpty!54060) setIsEmpty!54060))

(assert (= (and setNonEmpty!54046 (not condSetEmpty!54060)) setNonEmpty!54060))

(declare-fun b_lambda!282315 () Bool)

(assert (= b_lambda!282309 (or d!2270685 b_lambda!282315)))

(declare-fun bs!1914617 () Bool)

(declare-fun d!2270755 () Bool)

(assert (= bs!1914617 (and d!2270755 d!2270685)))

(assert (=> bs!1914617 (= (dynLambda!29094 lambda!451740 (h!77487 (t!385339 lRes!18))) (contains!20773 lt!2601076 (h!77487 (t!385339 lRes!18))))))

(declare-fun m!7977554 () Bool)

(assert (=> bs!1914617 m!7977554))

(assert (=> b!7313333 d!2270755))

(declare-fun b_lambda!282317 () Bool)

(assert (= b_lambda!282311 (or (and start!712414 b_free!133971) b_lambda!282317)))

(declare-fun b_lambda!282319 () Bool)

(assert (= b_lambda!282313 (or b!7313187 b_lambda!282319)))

(declare-fun bs!1914618 () Bool)

(declare-fun d!2270757 () Bool)

(assert (= bs!1914618 (and d!2270757 b!7313187)))

(assert (=> bs!1914618 (= (dynLambda!29094 lambda!451732 (h!77487 (t!385339 (t!385339 lRes!18)))) (contains!20773 lt!2601041 (h!77487 (t!385339 (t!385339 lRes!18)))))))

(declare-fun m!7977556 () Bool)

(assert (=> bs!1914618 m!7977556))

(assert (=> b!7313335 d!2270757))

(push 1)

(assert (not bs!1914618))

(assert (not b!7313358))

(assert (not b!7313319))

(assert (not d!2270749))

(assert (not b!7313334))

(assert (not b_lambda!282299))

(assert (not bm!665741))

(assert (not b!7313320))

(assert (not d!2270745))

(assert (not b!7313332))

(assert (not b!7313372))

(assert (not b_lambda!282315))

(assert (not bs!1914617))

(assert (not b!7313363))

(assert (not setNonEmpty!54060))

(assert (not b_lambda!282319))

(assert (not b!7313325))

(assert (not b!7313326))

(assert (not b_lambda!282289))

(assert (not b!7313354))

(assert (not b!7313357))

(assert (not b_lambda!282317))

(assert (not b_next!134761))

(assert (not d!2270719))

(assert b_and!351323)

(assert (not b!7313370))

(assert (not b!7313371))

(assert (not d!2270743))

(assert tp_is_empty!47429)

(assert (not b!7313373))

(assert (not b!7313360))

(assert (not d!2270727))

(assert (not b!7313331))

(assert (not d!2270753))

(assert (not b!7313367))

(assert (not b!7313369))

(assert (not b!7313336))

(assert (not b!7313346))

(assert tp_is_empty!47431)

(assert (not b!7313345))

(assert (not b!7313342))

(assert (not b!7313359))

(assert (not d!2270747))

(assert (not b_lambda!282297))

(assert (not setNonEmpty!54059))

(assert (not setNonEmpty!54058))

(assert (not b!7313352))

(assert (not b!7313374))

(assert (not d!2270723))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351323)

(assert (not b_next!134761))

(check-sat)

(pop 1)

