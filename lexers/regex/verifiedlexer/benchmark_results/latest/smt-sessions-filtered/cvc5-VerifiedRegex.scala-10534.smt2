; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542866 () Bool)

(assert start!542866)

(declare-fun b!5132341 () Bool)

(assert (=> b!5132341 true))

(declare-fun bs!1198562 () Bool)

(declare-fun b!5132343 () Bool)

(declare-fun b!5132340 () Bool)

(assert (= bs!1198562 (and b!5132343 b!5132340)))

(declare-fun lambda!254809 () Int)

(declare-fun lambda!254808 () Int)

(assert (=> bs!1198562 (not (= lambda!254809 lambda!254808))))

(declare-fun bs!1198563 () Bool)

(declare-fun b!5132333 () Bool)

(assert (= bs!1198563 (and b!5132333 b!5132340)))

(declare-fun lambda!254810 () Int)

(assert (=> bs!1198563 (not (= lambda!254810 lambda!254808))))

(declare-fun bs!1198564 () Bool)

(assert (= bs!1198564 (and b!5132333 b!5132343)))

(assert (=> bs!1198564 (not (= lambda!254810 lambda!254809))))

(assert (=> b!5132333 true))

(assert (=> b!5132333 true))

(declare-fun b!5132332 () Bool)

(declare-fun res!2185900 () Bool)

(declare-fun e!3201095 () Bool)

(assert (=> b!5132332 (=> res!2185900 e!3201095)))

(declare-datatypes ((C!28982 0))(
  ( (C!28983 (val!24143 Int)) )
))
(declare-datatypes ((Regex!14358 0))(
  ( (ElementMatch!14358 (c!883135 C!28982)) (Concat!23203 (regOne!29228 Regex!14358) (regTwo!29228 Regex!14358)) (EmptyExpr!14358) (Star!14358 (reg!14687 Regex!14358)) (EmptyLang!14358) (Union!14358 (regOne!29229 Regex!14358) (regTwo!29229 Regex!14358)) )
))
(declare-datatypes ((List!59655 0))(
  ( (Nil!59531) (Cons!59531 (h!65979 Regex!14358) (t!372682 List!59655)) )
))
(declare-datatypes ((Context!7484 0))(
  ( (Context!7485 (exprs!4242 List!59655)) )
))
(declare-fun lt!2117728 () Context!7484)

(declare-fun lostCause!1301 (Context!7484) Bool)

(assert (=> b!5132332 (= res!2185900 (lostCause!1301 lt!2117728))))

(declare-fun e!3201096 () Bool)

(assert (=> b!5132333 (= e!3201095 e!3201096)))

(declare-fun res!2185903 () Bool)

(assert (=> b!5132333 (=> res!2185903 e!3201096)))

(declare-fun z!1054 () (Set Context!7484))

(declare-fun exists!1676 ((Set Context!7484) Int) Bool)

(assert (=> b!5132333 (= res!2185903 (not (exists!1676 z!1054 lambda!254810)))))

(assert (=> b!5132333 (exists!1676 z!1054 lambda!254810)))

(declare-fun lambda!254807 () Int)

(declare-datatypes ((Unit!150828 0))(
  ( (Unit!150829) )
))
(declare-fun lt!2117729 () Unit!150828)

(declare-fun lemmaFlatMapPost!13 ((Set Context!7484) Int Context!7484) Unit!150828)

(assert (=> b!5132333 (= lt!2117729 (lemmaFlatMapPost!13 z!1054 lambda!254807 lt!2117728))))

(declare-fun setIsEmpty!31179 () Bool)

(declare-fun setRes!31179 () Bool)

(assert (=> setIsEmpty!31179 setRes!31179))

(declare-fun res!2185906 () Bool)

(declare-fun e!3201093 () Bool)

(assert (=> start!542866 (=> (not res!2185906) (not e!3201093))))

(declare-fun lostCauseZipper!1202 ((Set Context!7484)) Bool)

(assert (=> start!542866 (= res!2185906 (lostCauseZipper!1202 z!1054))))

(assert (=> start!542866 e!3201093))

(declare-fun condSetEmpty!31179 () Bool)

(assert (=> start!542866 (= condSetEmpty!31179 (= z!1054 (as set.empty (Set Context!7484))))))

(assert (=> start!542866 setRes!31179))

(declare-fun tp_is_empty!37889 () Bool)

(assert (=> start!542866 tp_is_empty!37889))

(declare-fun b!5132334 () Bool)

(declare-fun e!3201092 () Bool)

(declare-fun lt!2117730 () Context!7484)

(declare-fun a!1233 () C!28982)

(declare-fun derivationStepZipperUp!66 (Context!7484 C!28982) (Set Context!7484))

(assert (=> b!5132334 (= e!3201092 (set.member lt!2117728 (derivationStepZipperUp!66 lt!2117730 a!1233)))))

(declare-fun b!5132335 () Bool)

(declare-fun e!3201097 () Bool)

(declare-fun tp!1431770 () Bool)

(assert (=> b!5132335 (= e!3201097 tp!1431770)))

(declare-fun b!5132336 () Bool)

(assert (=> b!5132336 (= e!3201096 e!3201092)))

(declare-fun res!2185907 () Bool)

(assert (=> b!5132336 (=> res!2185907 e!3201092)))

(assert (=> b!5132336 (= res!2185907 (not (set.member lt!2117730 z!1054)))))

(declare-fun getWitness!808 ((Set Context!7484) Int) Context!7484)

(assert (=> b!5132336 (= lt!2117730 (getWitness!808 z!1054 lambda!254810))))

(declare-fun b!5132337 () Bool)

(declare-fun e!3201094 () Bool)

(assert (=> b!5132337 (= e!3201094 e!3201095)))

(declare-fun res!2185899 () Bool)

(assert (=> b!5132337 (=> res!2185899 e!3201095)))

(declare-fun lt!2117727 () (Set Context!7484))

(assert (=> b!5132337 (= res!2185899 (not (set.member lt!2117728 lt!2117727)))))

(declare-datatypes ((List!59656 0))(
  ( (Nil!59532) (Cons!59532 (h!65980 Context!7484) (t!372683 List!59656)) )
))
(declare-fun lt!2117726 () List!59656)

(declare-fun getWitness!809 (List!59656 Int) Context!7484)

(assert (=> b!5132337 (= lt!2117728 (getWitness!809 lt!2117726 lambda!254809))))

(declare-fun b!5132338 () Bool)

(declare-fun res!2185909 () Bool)

(declare-fun e!3201091 () Bool)

(assert (=> b!5132338 (=> (not res!2185909) (not e!3201091))))

(declare-fun forall!13799 ((Set Context!7484) Int) Bool)

(assert (=> b!5132338 (= res!2185909 (not (forall!13799 lt!2117727 lambda!254808)))))

(declare-fun b!5132339 () Bool)

(declare-fun res!2185905 () Bool)

(assert (=> b!5132339 (=> (not res!2185905) (not e!3201091))))

(assert (=> b!5132339 (= res!2185905 (forall!13799 z!1054 lambda!254808))))

(declare-fun e!3201098 () Bool)

(assert (=> b!5132340 (= e!3201098 e!3201091)))

(declare-fun res!2185901 () Bool)

(assert (=> b!5132340 (=> (not res!2185901) (not e!3201091))))

(declare-fun lt!2117724 () Bool)

(assert (=> b!5132340 (= res!2185901 (= lt!2117724 (forall!13799 lt!2117727 lambda!254808)))))

(assert (=> b!5132340 (= lt!2117724 (lostCauseZipper!1202 lt!2117727))))

(declare-fun tp!1431771 () Bool)

(declare-fun setElem!31179 () Context!7484)

(declare-fun setNonEmpty!31179 () Bool)

(declare-fun inv!79077 (Context!7484) Bool)

(assert (=> setNonEmpty!31179 (= setRes!31179 (and tp!1431771 (inv!79077 setElem!31179) e!3201097))))

(declare-fun setRest!31179 () (Set Context!7484))

(assert (=> setNonEmpty!31179 (= z!1054 (set.union (set.insert setElem!31179 (as set.empty (Set Context!7484))) setRest!31179))))

(assert (=> b!5132341 (= e!3201093 e!3201098)))

(declare-fun res!2185902 () Bool)

(assert (=> b!5132341 (=> (not res!2185902) (not e!3201098))))

(declare-fun flatMap!409 ((Set Context!7484) Int) (Set Context!7484))

(assert (=> b!5132341 (= res!2185902 (= lt!2117727 (flatMap!409 z!1054 lambda!254807)))))

(declare-fun derivationStepZipper!913 ((Set Context!7484) C!28982) (Set Context!7484))

(assert (=> b!5132341 (= lt!2117727 (derivationStepZipper!913 z!1054 a!1233))))

(declare-fun b!5132342 () Bool)

(declare-fun res!2185904 () Bool)

(assert (=> b!5132342 (=> (not res!2185904) (not e!3201091))))

(assert (=> b!5132342 (= res!2185904 (not lt!2117724))))

(assert (=> b!5132343 (= e!3201091 (not e!3201094))))

(declare-fun res!2185908 () Bool)

(assert (=> b!5132343 (=> res!2185908 e!3201094)))

(assert (=> b!5132343 (= res!2185908 (not (exists!1676 lt!2117727 lambda!254809)))))

(declare-fun exists!1677 (List!59656 Int) Bool)

(assert (=> b!5132343 (exists!1677 lt!2117726 lambda!254809)))

(declare-fun lt!2117725 () Unit!150828)

(declare-fun lemmaNotForallThenExists!391 (List!59656 Int) Unit!150828)

(assert (=> b!5132343 (= lt!2117725 (lemmaNotForallThenExists!391 lt!2117726 lambda!254808))))

(declare-fun toList!8343 ((Set Context!7484)) List!59656)

(assert (=> b!5132343 (= lt!2117726 (toList!8343 lt!2117727))))

(assert (= (and start!542866 res!2185906) b!5132341))

(assert (= (and b!5132341 res!2185902) b!5132340))

(assert (= (and b!5132340 res!2185901) b!5132339))

(assert (= (and b!5132339 res!2185905) b!5132342))

(assert (= (and b!5132342 res!2185904) b!5132338))

(assert (= (and b!5132338 res!2185909) b!5132343))

(assert (= (and b!5132343 (not res!2185908)) b!5132337))

(assert (= (and b!5132337 (not res!2185899)) b!5132332))

(assert (= (and b!5132332 (not res!2185900)) b!5132333))

(assert (= (and b!5132333 (not res!2185903)) b!5132336))

(assert (= (and b!5132336 (not res!2185907)) b!5132334))

(assert (= (and start!542866 condSetEmpty!31179) setIsEmpty!31179))

(assert (= (and start!542866 (not condSetEmpty!31179)) setNonEmpty!31179))

(assert (= setNonEmpty!31179 b!5132335))

(declare-fun m!6198074 () Bool)

(assert (=> start!542866 m!6198074))

(declare-fun m!6198076 () Bool)

(assert (=> b!5132333 m!6198076))

(assert (=> b!5132333 m!6198076))

(declare-fun m!6198078 () Bool)

(assert (=> b!5132333 m!6198078))

(declare-fun m!6198080 () Bool)

(assert (=> b!5132339 m!6198080))

(declare-fun m!6198082 () Bool)

(assert (=> b!5132336 m!6198082))

(declare-fun m!6198084 () Bool)

(assert (=> b!5132336 m!6198084))

(declare-fun m!6198086 () Bool)

(assert (=> b!5132340 m!6198086))

(declare-fun m!6198088 () Bool)

(assert (=> b!5132340 m!6198088))

(declare-fun m!6198090 () Bool)

(assert (=> b!5132337 m!6198090))

(declare-fun m!6198092 () Bool)

(assert (=> b!5132337 m!6198092))

(declare-fun m!6198094 () Bool)

(assert (=> setNonEmpty!31179 m!6198094))

(declare-fun m!6198096 () Bool)

(assert (=> b!5132332 m!6198096))

(declare-fun m!6198098 () Bool)

(assert (=> b!5132341 m!6198098))

(declare-fun m!6198100 () Bool)

(assert (=> b!5132341 m!6198100))

(assert (=> b!5132338 m!6198086))

(declare-fun m!6198102 () Bool)

(assert (=> b!5132334 m!6198102))

(declare-fun m!6198104 () Bool)

(assert (=> b!5132334 m!6198104))

(declare-fun m!6198106 () Bool)

(assert (=> b!5132343 m!6198106))

(declare-fun m!6198108 () Bool)

(assert (=> b!5132343 m!6198108))

(declare-fun m!6198110 () Bool)

(assert (=> b!5132343 m!6198110))

(declare-fun m!6198112 () Bool)

(assert (=> b!5132343 m!6198112))

(push 1)

(assert (not setNonEmpty!31179))

(assert (not b!5132339))

(assert (not b!5132336))

(assert (not b!5132343))

(assert (not b!5132334))

(assert tp_is_empty!37889)

(assert (not b!5132340))

(assert (not b!5132333))

(assert (not b!5132341))

(assert (not b!5132338))

(assert (not b!5132337))

(assert (not b!5132335))

(assert (not b!5132332))

(assert (not start!542866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1198568 () Bool)

(declare-fun d!1660765 () Bool)

(assert (= bs!1198568 (and d!1660765 b!5132340)))

(declare-fun lambda!254849 () Int)

(assert (=> bs!1198568 (= lambda!254849 lambda!254808)))

(declare-fun bs!1198569 () Bool)

(assert (= bs!1198569 (and d!1660765 b!5132343)))

(assert (=> bs!1198569 (not (= lambda!254849 lambda!254809))))

(declare-fun bs!1198570 () Bool)

(assert (= bs!1198570 (and d!1660765 b!5132333)))

(assert (=> bs!1198570 (not (= lambda!254849 lambda!254810))))

(declare-fun bs!1198571 () Bool)

(declare-fun b!5132396 () Bool)

(assert (= bs!1198571 (and b!5132396 b!5132340)))

(declare-fun lambda!254850 () Int)

(assert (=> bs!1198571 (not (= lambda!254850 lambda!254808))))

(declare-fun bs!1198572 () Bool)

(assert (= bs!1198572 (and b!5132396 b!5132343)))

(assert (=> bs!1198572 (= lambda!254850 lambda!254809)))

(declare-fun bs!1198573 () Bool)

(assert (= bs!1198573 (and b!5132396 b!5132333)))

(assert (=> bs!1198573 (not (= lambda!254850 lambda!254810))))

(declare-fun bs!1198574 () Bool)

(assert (= bs!1198574 (and b!5132396 d!1660765)))

(assert (=> bs!1198574 (not (= lambda!254850 lambda!254849))))

(declare-fun bs!1198575 () Bool)

(declare-fun b!5132397 () Bool)

(assert (= bs!1198575 (and b!5132397 d!1660765)))

(declare-fun lambda!254851 () Int)

(assert (=> bs!1198575 (not (= lambda!254851 lambda!254849))))

(declare-fun bs!1198576 () Bool)

(assert (= bs!1198576 (and b!5132397 b!5132333)))

(assert (=> bs!1198576 (not (= lambda!254851 lambda!254810))))

(declare-fun bs!1198577 () Bool)

(assert (= bs!1198577 (and b!5132397 b!5132396)))

(assert (=> bs!1198577 (= lambda!254851 lambda!254850)))

(declare-fun bs!1198578 () Bool)

(assert (= bs!1198578 (and b!5132397 b!5132340)))

(assert (=> bs!1198578 (not (= lambda!254851 lambda!254808))))

(declare-fun bs!1198579 () Bool)

(assert (= bs!1198579 (and b!5132397 b!5132343)))

(assert (=> bs!1198579 (= lambda!254851 lambda!254809)))

(declare-fun lt!2117774 () Bool)

(declare-datatypes ((List!59659 0))(
  ( (Nil!59535) (Cons!59535 (h!65983 C!28982) (t!372686 List!59659)) )
))
(declare-datatypes ((Option!14742 0))(
  ( (None!14741) (Some!14741 (v!50770 List!59659)) )
))
(declare-fun isEmpty!32003 (Option!14742) Bool)

(declare-fun getLanguageWitness!879 ((Set Context!7484)) Option!14742)

(assert (=> d!1660765 (= lt!2117774 (isEmpty!32003 (getLanguageWitness!879 z!1054)))))

(assert (=> d!1660765 (= lt!2117774 (forall!13799 z!1054 lambda!254849))))

(declare-fun lt!2117771 () Unit!150828)

(declare-fun e!3201131 () Unit!150828)

(assert (=> d!1660765 (= lt!2117771 e!3201131)))

(declare-fun c!883157 () Bool)

(assert (=> d!1660765 (= c!883157 (not (forall!13799 z!1054 lambda!254849)))))

(assert (=> d!1660765 (= (lostCauseZipper!1202 z!1054) lt!2117774)))

(declare-fun bm!357235 () Bool)

(declare-fun call!357240 () List!59656)

(assert (=> bm!357235 (= call!357240 (toList!8343 z!1054))))

(declare-fun call!357241 () Bool)

(declare-fun bm!357236 () Bool)

(declare-fun lt!2117775 () List!59656)

(declare-fun lt!2117772 () List!59656)

(assert (=> bm!357236 (= call!357241 (exists!1677 (ite c!883157 lt!2117775 lt!2117772) (ite c!883157 lambda!254850 lambda!254851)))))

(declare-fun Unit!150832 () Unit!150828)

(assert (=> b!5132396 (= e!3201131 Unit!150832)))

(assert (=> b!5132396 (= lt!2117775 call!357240)))

(declare-fun lt!2117768 () Unit!150828)

(assert (=> b!5132396 (= lt!2117768 (lemmaNotForallThenExists!391 lt!2117775 lambda!254849))))

(assert (=> b!5132396 call!357241))

(declare-fun lt!2117769 () Unit!150828)

(assert (=> b!5132396 (= lt!2117769 lt!2117768)))

(declare-fun Unit!150833 () Unit!150828)

(assert (=> b!5132397 (= e!3201131 Unit!150833)))

(assert (=> b!5132397 (= lt!2117772 call!357240)))

(declare-fun lt!2117773 () Unit!150828)

(declare-fun lemmaForallThenNotExists!364 (List!59656 Int) Unit!150828)

(assert (=> b!5132397 (= lt!2117773 (lemmaForallThenNotExists!364 lt!2117772 lambda!254849))))

(assert (=> b!5132397 (not call!357241)))

(declare-fun lt!2117770 () Unit!150828)

(assert (=> b!5132397 (= lt!2117770 lt!2117773)))

(assert (= (and d!1660765 c!883157) b!5132396))

(assert (= (and d!1660765 (not c!883157)) b!5132397))

(assert (= (or b!5132396 b!5132397) bm!357235))

(assert (= (or b!5132396 b!5132397) bm!357236))

(declare-fun m!6198154 () Bool)

(assert (=> bm!357235 m!6198154))

(declare-fun m!6198156 () Bool)

(assert (=> b!5132396 m!6198156))

(declare-fun m!6198158 () Bool)

(assert (=> bm!357236 m!6198158))

(declare-fun m!6198160 () Bool)

(assert (=> b!5132397 m!6198160))

(declare-fun m!6198162 () Bool)

(assert (=> d!1660765 m!6198162))

(assert (=> d!1660765 m!6198162))

(declare-fun m!6198164 () Bool)

(assert (=> d!1660765 m!6198164))

(declare-fun m!6198166 () Bool)

(assert (=> d!1660765 m!6198166))

(assert (=> d!1660765 m!6198166))

(assert (=> start!542866 d!1660765))

(declare-fun b!5132410 () Bool)

(declare-fun e!3201140 () Bool)

(declare-fun dynLambda!23702 (Int Context!7484) Bool)

(assert (=> b!5132410 (= e!3201140 (dynLambda!23702 lambda!254809 (h!65980 lt!2117726)))))

(declare-fun d!1660767 () Bool)

(declare-fun e!3201141 () Bool)

(assert (=> d!1660767 e!3201141))

(declare-fun res!2185948 () Bool)

(assert (=> d!1660767 (=> (not res!2185948) (not e!3201141))))

(declare-fun lt!2117781 () Context!7484)

(assert (=> d!1660767 (= res!2185948 (dynLambda!23702 lambda!254809 lt!2117781))))

(declare-fun e!3201142 () Context!7484)

(assert (=> d!1660767 (= lt!2117781 e!3201142)))

(declare-fun c!883162 () Bool)

(assert (=> d!1660767 (= c!883162 e!3201140)))

(declare-fun res!2185947 () Bool)

(assert (=> d!1660767 (=> (not res!2185947) (not e!3201140))))

(assert (=> d!1660767 (= res!2185947 (is-Cons!59532 lt!2117726))))

(assert (=> d!1660767 (exists!1677 lt!2117726 lambda!254809)))

(assert (=> d!1660767 (= (getWitness!809 lt!2117726 lambda!254809) lt!2117781)))

(declare-fun b!5132411 () Bool)

(declare-fun contains!19642 (List!59656 Context!7484) Bool)

(assert (=> b!5132411 (= e!3201141 (contains!19642 lt!2117726 lt!2117781))))

(declare-fun b!5132412 () Bool)

(assert (=> b!5132412 (= e!3201142 (h!65980 lt!2117726))))

(declare-fun b!5132413 () Bool)

(declare-fun e!3201143 () Context!7484)

(assert (=> b!5132413 (= e!3201143 (getWitness!809 (t!372683 lt!2117726) lambda!254809))))

(declare-fun b!5132414 () Bool)

(assert (=> b!5132414 (= e!3201142 e!3201143)))

(declare-fun c!883163 () Bool)

(assert (=> b!5132414 (= c!883163 (is-Cons!59532 lt!2117726))))

(declare-fun b!5132415 () Bool)

(declare-fun lt!2117780 () Unit!150828)

(declare-fun Unit!150834 () Unit!150828)

(assert (=> b!5132415 (= lt!2117780 Unit!150834)))

(assert (=> b!5132415 false))

(declare-fun head!10989 (List!59656) Context!7484)

(assert (=> b!5132415 (= e!3201143 (head!10989 lt!2117726))))

(assert (= (and d!1660767 res!2185947) b!5132410))

(assert (= (and d!1660767 c!883162) b!5132412))

(assert (= (and d!1660767 (not c!883162)) b!5132414))

(assert (= (and b!5132414 c!883163) b!5132413))

(assert (= (and b!5132414 (not c!883163)) b!5132415))

(assert (= (and d!1660767 res!2185948) b!5132411))

(declare-fun b_lambda!199885 () Bool)

(assert (=> (not b_lambda!199885) (not b!5132410)))

(declare-fun b_lambda!199887 () Bool)

(assert (=> (not b_lambda!199887) (not d!1660767)))

(declare-fun m!6198168 () Bool)

(assert (=> b!5132415 m!6198168))

(declare-fun m!6198170 () Bool)

(assert (=> b!5132411 m!6198170))

(declare-fun m!6198172 () Bool)

(assert (=> b!5132413 m!6198172))

(declare-fun m!6198174 () Bool)

(assert (=> d!1660767 m!6198174))

(assert (=> d!1660767 m!6198108))

(declare-fun m!6198176 () Bool)

(assert (=> b!5132410 m!6198176))

(assert (=> b!5132337 d!1660767))

(declare-fun d!1660769 () Bool)

(declare-fun lt!2117784 () Bool)

(declare-fun forall!13801 (List!59656 Int) Bool)

(assert (=> d!1660769 (= lt!2117784 (forall!13801 (toList!8343 lt!2117727) lambda!254808))))

(declare-fun choose!37912 ((Set Context!7484) Int) Bool)

(assert (=> d!1660769 (= lt!2117784 (choose!37912 lt!2117727 lambda!254808))))

(assert (=> d!1660769 (= (forall!13799 lt!2117727 lambda!254808) lt!2117784)))

(declare-fun bs!1198580 () Bool)

(assert (= bs!1198580 d!1660769))

(assert (=> bs!1198580 m!6198112))

(assert (=> bs!1198580 m!6198112))

(declare-fun m!6198178 () Bool)

(assert (=> bs!1198580 m!6198178))

(declare-fun m!6198180 () Bool)

(assert (=> bs!1198580 m!6198180))

(assert (=> b!5132338 d!1660769))

(declare-fun d!1660773 () Bool)

(declare-fun lt!2117785 () Bool)

(assert (=> d!1660773 (= lt!2117785 (forall!13801 (toList!8343 z!1054) lambda!254808))))

(assert (=> d!1660773 (= lt!2117785 (choose!37912 z!1054 lambda!254808))))

(assert (=> d!1660773 (= (forall!13799 z!1054 lambda!254808) lt!2117785)))

(declare-fun bs!1198581 () Bool)

(assert (= bs!1198581 d!1660773))

(assert (=> bs!1198581 m!6198154))

(assert (=> bs!1198581 m!6198154))

(declare-fun m!6198182 () Bool)

(assert (=> bs!1198581 m!6198182))

(declare-fun m!6198184 () Bool)

(assert (=> bs!1198581 m!6198184))

(assert (=> b!5132339 d!1660773))

(assert (=> b!5132340 d!1660769))

(declare-fun bs!1198582 () Bool)

(declare-fun d!1660775 () Bool)

(assert (= bs!1198582 (and d!1660775 d!1660765)))

(declare-fun lambda!254852 () Int)

(assert (=> bs!1198582 (= lambda!254852 lambda!254849)))

(declare-fun bs!1198583 () Bool)

(assert (= bs!1198583 (and d!1660775 b!5132333)))

(assert (=> bs!1198583 (not (= lambda!254852 lambda!254810))))

(declare-fun bs!1198584 () Bool)

(assert (= bs!1198584 (and d!1660775 b!5132396)))

(assert (=> bs!1198584 (not (= lambda!254852 lambda!254850))))

(declare-fun bs!1198585 () Bool)

(assert (= bs!1198585 (and d!1660775 b!5132340)))

(assert (=> bs!1198585 (= lambda!254852 lambda!254808)))

(declare-fun bs!1198586 () Bool)

(assert (= bs!1198586 (and d!1660775 b!5132343)))

(assert (=> bs!1198586 (not (= lambda!254852 lambda!254809))))

(declare-fun bs!1198587 () Bool)

(assert (= bs!1198587 (and d!1660775 b!5132397)))

(assert (=> bs!1198587 (not (= lambda!254852 lambda!254851))))

(declare-fun bs!1198588 () Bool)

(declare-fun b!5132416 () Bool)

(assert (= bs!1198588 (and b!5132416 d!1660765)))

(declare-fun lambda!254853 () Int)

(assert (=> bs!1198588 (not (= lambda!254853 lambda!254849))))

(declare-fun bs!1198589 () Bool)

(assert (= bs!1198589 (and b!5132416 b!5132333)))

(assert (=> bs!1198589 (not (= lambda!254853 lambda!254810))))

(declare-fun bs!1198590 () Bool)

(assert (= bs!1198590 (and b!5132416 b!5132396)))

(assert (=> bs!1198590 (= lambda!254853 lambda!254850)))

(declare-fun bs!1198591 () Bool)

(assert (= bs!1198591 (and b!5132416 d!1660775)))

(assert (=> bs!1198591 (not (= lambda!254853 lambda!254852))))

(declare-fun bs!1198592 () Bool)

(assert (= bs!1198592 (and b!5132416 b!5132340)))

(assert (=> bs!1198592 (not (= lambda!254853 lambda!254808))))

(declare-fun bs!1198593 () Bool)

(assert (= bs!1198593 (and b!5132416 b!5132343)))

(assert (=> bs!1198593 (= lambda!254853 lambda!254809)))

(declare-fun bs!1198594 () Bool)

(assert (= bs!1198594 (and b!5132416 b!5132397)))

(assert (=> bs!1198594 (= lambda!254853 lambda!254851)))

(declare-fun bs!1198595 () Bool)

(declare-fun b!5132417 () Bool)

(assert (= bs!1198595 (and b!5132417 d!1660765)))

(declare-fun lambda!254854 () Int)

(assert (=> bs!1198595 (not (= lambda!254854 lambda!254849))))

(declare-fun bs!1198596 () Bool)

(assert (= bs!1198596 (and b!5132417 b!5132416)))

(assert (=> bs!1198596 (= lambda!254854 lambda!254853)))

(declare-fun bs!1198597 () Bool)

(assert (= bs!1198597 (and b!5132417 b!5132333)))

(assert (=> bs!1198597 (not (= lambda!254854 lambda!254810))))

(declare-fun bs!1198598 () Bool)

(assert (= bs!1198598 (and b!5132417 b!5132396)))

(assert (=> bs!1198598 (= lambda!254854 lambda!254850)))

(declare-fun bs!1198599 () Bool)

(assert (= bs!1198599 (and b!5132417 d!1660775)))

(assert (=> bs!1198599 (not (= lambda!254854 lambda!254852))))

(declare-fun bs!1198600 () Bool)

(assert (= bs!1198600 (and b!5132417 b!5132340)))

(assert (=> bs!1198600 (not (= lambda!254854 lambda!254808))))

(declare-fun bs!1198601 () Bool)

(assert (= bs!1198601 (and b!5132417 b!5132343)))

(assert (=> bs!1198601 (= lambda!254854 lambda!254809)))

(declare-fun bs!1198602 () Bool)

(assert (= bs!1198602 (and b!5132417 b!5132397)))

(assert (=> bs!1198602 (= lambda!254854 lambda!254851)))

(declare-fun lt!2117792 () Bool)

(assert (=> d!1660775 (= lt!2117792 (isEmpty!32003 (getLanguageWitness!879 lt!2117727)))))

(assert (=> d!1660775 (= lt!2117792 (forall!13799 lt!2117727 lambda!254852))))

(declare-fun lt!2117789 () Unit!150828)

(declare-fun e!3201144 () Unit!150828)

(assert (=> d!1660775 (= lt!2117789 e!3201144)))

(declare-fun c!883164 () Bool)

(assert (=> d!1660775 (= c!883164 (not (forall!13799 lt!2117727 lambda!254852)))))

(assert (=> d!1660775 (= (lostCauseZipper!1202 lt!2117727) lt!2117792)))

(declare-fun bm!357237 () Bool)

(declare-fun call!357242 () List!59656)

(assert (=> bm!357237 (= call!357242 (toList!8343 lt!2117727))))

(declare-fun lt!2117793 () List!59656)

(declare-fun bm!357238 () Bool)

(declare-fun call!357243 () Bool)

(declare-fun lt!2117790 () List!59656)

(assert (=> bm!357238 (= call!357243 (exists!1677 (ite c!883164 lt!2117793 lt!2117790) (ite c!883164 lambda!254853 lambda!254854)))))

(declare-fun Unit!150835 () Unit!150828)

(assert (=> b!5132416 (= e!3201144 Unit!150835)))

(assert (=> b!5132416 (= lt!2117793 call!357242)))

(declare-fun lt!2117786 () Unit!150828)

(assert (=> b!5132416 (= lt!2117786 (lemmaNotForallThenExists!391 lt!2117793 lambda!254852))))

(assert (=> b!5132416 call!357243))

(declare-fun lt!2117787 () Unit!150828)

(assert (=> b!5132416 (= lt!2117787 lt!2117786)))

(declare-fun Unit!150836 () Unit!150828)

(assert (=> b!5132417 (= e!3201144 Unit!150836)))

(assert (=> b!5132417 (= lt!2117790 call!357242)))

(declare-fun lt!2117791 () Unit!150828)

(assert (=> b!5132417 (= lt!2117791 (lemmaForallThenNotExists!364 lt!2117790 lambda!254852))))

(assert (=> b!5132417 (not call!357243)))

(declare-fun lt!2117788 () Unit!150828)

(assert (=> b!5132417 (= lt!2117788 lt!2117791)))

(assert (= (and d!1660775 c!883164) b!5132416))

(assert (= (and d!1660775 (not c!883164)) b!5132417))

(assert (= (or b!5132416 b!5132417) bm!357237))

(assert (= (or b!5132416 b!5132417) bm!357238))

(assert (=> bm!357237 m!6198112))

(declare-fun m!6198186 () Bool)

(assert (=> b!5132416 m!6198186))

(declare-fun m!6198188 () Bool)

(assert (=> bm!357238 m!6198188))

(declare-fun m!6198190 () Bool)

(assert (=> b!5132417 m!6198190))

(declare-fun m!6198192 () Bool)

(assert (=> d!1660775 m!6198192))

(assert (=> d!1660775 m!6198192))

(declare-fun m!6198194 () Bool)

(assert (=> d!1660775 m!6198194))

(declare-fun m!6198196 () Bool)

(assert (=> d!1660775 m!6198196))

(assert (=> d!1660775 m!6198196))

(assert (=> b!5132340 d!1660775))

(declare-fun d!1660777 () Bool)

(declare-fun lambda!254857 () Int)

(declare-fun forall!13802 (List!59655 Int) Bool)

(assert (=> d!1660777 (= (inv!79077 setElem!31179) (forall!13802 (exprs!4242 setElem!31179) lambda!254857))))

(declare-fun bs!1198604 () Bool)

(assert (= bs!1198604 d!1660777))

(declare-fun m!6198202 () Bool)

(assert (=> bs!1198604 m!6198202))

(assert (=> setNonEmpty!31179 d!1660777))

(declare-fun d!1660781 () Bool)

(declare-fun choose!37913 ((Set Context!7484) Int) (Set Context!7484))

(assert (=> d!1660781 (= (flatMap!409 z!1054 lambda!254807) (choose!37913 z!1054 lambda!254807))))

(declare-fun bs!1198605 () Bool)

(assert (= bs!1198605 d!1660781))

(declare-fun m!6198204 () Bool)

(assert (=> bs!1198605 m!6198204))

(assert (=> b!5132341 d!1660781))

(declare-fun bs!1198607 () Bool)

(declare-fun d!1660783 () Bool)

(assert (= bs!1198607 (and d!1660783 b!5132341)))

(declare-fun lambda!254860 () Int)

(assert (=> bs!1198607 (= lambda!254860 lambda!254807)))

(assert (=> d!1660783 true))

(assert (=> d!1660783 (= (derivationStepZipper!913 z!1054 a!1233) (flatMap!409 z!1054 lambda!254860))))

(declare-fun bs!1198608 () Bool)

(assert (= bs!1198608 d!1660783))

(declare-fun m!6198208 () Bool)

(assert (=> bs!1198608 m!6198208))

(assert (=> b!5132341 d!1660783))

(declare-fun bs!1198611 () Bool)

(declare-fun d!1660787 () Bool)

(assert (= bs!1198611 (and d!1660787 d!1660777)))

(declare-fun lambda!254866 () Int)

(assert (=> bs!1198611 (not (= lambda!254866 lambda!254857))))

(declare-fun exists!1680 (List!59655 Int) Bool)

(assert (=> d!1660787 (= (lostCause!1301 lt!2117728) (exists!1680 (exprs!4242 lt!2117728) lambda!254866))))

(declare-fun bs!1198612 () Bool)

(assert (= bs!1198612 d!1660787))

(declare-fun m!6198212 () Bool)

(assert (=> bs!1198612 m!6198212))

(assert (=> b!5132332 d!1660787))

(declare-fun d!1660791 () Bool)

(declare-fun lt!2117799 () Bool)

(assert (=> d!1660791 (= lt!2117799 (exists!1677 (toList!8343 z!1054) lambda!254810))))

(declare-fun choose!37914 ((Set Context!7484) Int) Bool)

(assert (=> d!1660791 (= lt!2117799 (choose!37914 z!1054 lambda!254810))))

(assert (=> d!1660791 (= (exists!1676 z!1054 lambda!254810) lt!2117799)))

(declare-fun bs!1198613 () Bool)

(assert (= bs!1198613 d!1660791))

(assert (=> bs!1198613 m!6198154))

(assert (=> bs!1198613 m!6198154))

(declare-fun m!6198214 () Bool)

(assert (=> bs!1198613 m!6198214))

(declare-fun m!6198216 () Bool)

(assert (=> bs!1198613 m!6198216))

(assert (=> b!5132333 d!1660791))

(declare-fun bs!1198614 () Bool)

(declare-fun d!1660793 () Bool)

(assert (= bs!1198614 (and d!1660793 b!5132417)))

(declare-fun lambda!254869 () Int)

(assert (=> bs!1198614 (not (= lambda!254869 lambda!254854))))

(declare-fun bs!1198615 () Bool)

(assert (= bs!1198615 (and d!1660793 d!1660765)))

(assert (=> bs!1198615 (not (= lambda!254869 lambda!254849))))

(declare-fun bs!1198616 () Bool)

(assert (= bs!1198616 (and d!1660793 b!5132416)))

(assert (=> bs!1198616 (not (= lambda!254869 lambda!254853))))

(declare-fun bs!1198617 () Bool)

(assert (= bs!1198617 (and d!1660793 b!5132333)))

(assert (=> bs!1198617 (not (= lambda!254869 lambda!254810))))

(declare-fun bs!1198618 () Bool)

(assert (= bs!1198618 (and d!1660793 b!5132396)))

(assert (=> bs!1198618 (not (= lambda!254869 lambda!254850))))

(declare-fun bs!1198619 () Bool)

(assert (= bs!1198619 (and d!1660793 d!1660775)))

(assert (=> bs!1198619 (not (= lambda!254869 lambda!254852))))

(declare-fun bs!1198620 () Bool)

(assert (= bs!1198620 (and d!1660793 b!5132340)))

(assert (=> bs!1198620 (not (= lambda!254869 lambda!254808))))

(declare-fun bs!1198621 () Bool)

(assert (= bs!1198621 (and d!1660793 b!5132343)))

(assert (=> bs!1198621 (not (= lambda!254869 lambda!254809))))

(declare-fun bs!1198622 () Bool)

(assert (= bs!1198622 (and d!1660793 b!5132397)))

(assert (=> bs!1198622 (not (= lambda!254869 lambda!254851))))

(assert (=> d!1660793 true))

(assert (=> d!1660793 true))

(declare-fun order!26875 () Int)

(declare-fun order!26877 () Int)

(declare-fun dynLambda!23703 (Int Int) Int)

(declare-fun dynLambda!23704 (Int Int) Int)

(assert (=> d!1660793 (< (dynLambda!23703 order!26875 lambda!254807) (dynLambda!23704 order!26877 lambda!254869))))

(assert (=> d!1660793 (exists!1676 z!1054 lambda!254869)))

(declare-fun lt!2117804 () Unit!150828)

(declare-fun choose!37915 ((Set Context!7484) Int Context!7484) Unit!150828)

(assert (=> d!1660793 (= lt!2117804 (choose!37915 z!1054 lambda!254807 lt!2117728))))

(assert (=> d!1660793 (set.member lt!2117728 (flatMap!409 z!1054 lambda!254807))))

(assert (=> d!1660793 (= (lemmaFlatMapPost!13 z!1054 lambda!254807 lt!2117728) lt!2117804)))

(declare-fun bs!1198623 () Bool)

(assert (= bs!1198623 d!1660793))

(declare-fun m!6198218 () Bool)

(assert (=> bs!1198623 m!6198218))

(declare-fun m!6198220 () Bool)

(assert (=> bs!1198623 m!6198220))

(assert (=> bs!1198623 m!6198098))

(declare-fun m!6198222 () Bool)

(assert (=> bs!1198623 m!6198222))

(assert (=> b!5132333 d!1660793))

(declare-fun d!1660795 () Bool)

(declare-fun lt!2117806 () Bool)

(assert (=> d!1660795 (= lt!2117806 (exists!1677 (toList!8343 lt!2117727) lambda!254809))))

(assert (=> d!1660795 (= lt!2117806 (choose!37914 lt!2117727 lambda!254809))))

(assert (=> d!1660795 (= (exists!1676 lt!2117727 lambda!254809) lt!2117806)))

(declare-fun bs!1198624 () Bool)

(assert (= bs!1198624 d!1660795))

(assert (=> bs!1198624 m!6198112))

(assert (=> bs!1198624 m!6198112))

(declare-fun m!6198230 () Bool)

(assert (=> bs!1198624 m!6198230))

(declare-fun m!6198232 () Bool)

(assert (=> bs!1198624 m!6198232))

(assert (=> b!5132343 d!1660795))

(declare-fun bs!1198625 () Bool)

(declare-fun d!1660797 () Bool)

(assert (= bs!1198625 (and d!1660797 b!5132417)))

(declare-fun lambda!254872 () Int)

(assert (=> bs!1198625 (not (= lambda!254872 lambda!254854))))

(declare-fun bs!1198626 () Bool)

(assert (= bs!1198626 (and d!1660797 d!1660765)))

(assert (=> bs!1198626 (not (= lambda!254872 lambda!254849))))

(declare-fun bs!1198627 () Bool)

(assert (= bs!1198627 (and d!1660797 b!5132416)))

(assert (=> bs!1198627 (not (= lambda!254872 lambda!254853))))

(declare-fun bs!1198628 () Bool)

(assert (= bs!1198628 (and d!1660797 b!5132333)))

(assert (=> bs!1198628 (not (= lambda!254872 lambda!254810))))

(declare-fun bs!1198629 () Bool)

(assert (= bs!1198629 (and d!1660797 b!5132396)))

(assert (=> bs!1198629 (not (= lambda!254872 lambda!254850))))

(declare-fun bs!1198630 () Bool)

(assert (= bs!1198630 (and d!1660797 d!1660793)))

(assert (=> bs!1198630 (not (= lambda!254872 lambda!254869))))

(declare-fun bs!1198631 () Bool)

(assert (= bs!1198631 (and d!1660797 d!1660775)))

(assert (=> bs!1198631 (not (= lambda!254872 lambda!254852))))

(declare-fun bs!1198632 () Bool)

(assert (= bs!1198632 (and d!1660797 b!5132340)))

(assert (=> bs!1198632 (not (= lambda!254872 lambda!254808))))

(declare-fun bs!1198633 () Bool)

(assert (= bs!1198633 (and d!1660797 b!5132343)))

(assert (=> bs!1198633 (not (= lambda!254872 lambda!254809))))

(declare-fun bs!1198634 () Bool)

(assert (= bs!1198634 (and d!1660797 b!5132397)))

(assert (=> bs!1198634 (not (= lambda!254872 lambda!254851))))

(assert (=> d!1660797 true))

(assert (=> d!1660797 (< (dynLambda!23704 order!26877 lambda!254809) (dynLambda!23704 order!26877 lambda!254872))))

(assert (=> d!1660797 (= (exists!1677 lt!2117726 lambda!254809) (not (forall!13801 lt!2117726 lambda!254872)))))

(declare-fun bs!1198635 () Bool)

(assert (= bs!1198635 d!1660797))

(declare-fun m!6198236 () Bool)

(assert (=> bs!1198635 m!6198236))

(assert (=> b!5132343 d!1660797))

(declare-fun bs!1198636 () Bool)

(declare-fun d!1660801 () Bool)

(assert (= bs!1198636 (and d!1660801 b!5132417)))

(declare-fun lambda!254875 () Int)

(assert (=> bs!1198636 (not (= lambda!254875 lambda!254854))))

(declare-fun bs!1198637 () Bool)

(assert (= bs!1198637 (and d!1660801 d!1660765)))

(assert (=> bs!1198637 (not (= lambda!254875 lambda!254849))))

(declare-fun bs!1198638 () Bool)

(assert (= bs!1198638 (and d!1660801 d!1660797)))

(assert (=> bs!1198638 (= (= lambda!254808 lambda!254809) (= lambda!254875 lambda!254872))))

(declare-fun bs!1198639 () Bool)

(assert (= bs!1198639 (and d!1660801 b!5132416)))

(assert (=> bs!1198639 (not (= lambda!254875 lambda!254853))))

(declare-fun bs!1198640 () Bool)

(assert (= bs!1198640 (and d!1660801 b!5132333)))

(assert (=> bs!1198640 (not (= lambda!254875 lambda!254810))))

(declare-fun bs!1198641 () Bool)

(assert (= bs!1198641 (and d!1660801 b!5132396)))

(assert (=> bs!1198641 (not (= lambda!254875 lambda!254850))))

(declare-fun bs!1198642 () Bool)

(assert (= bs!1198642 (and d!1660801 d!1660793)))

(assert (=> bs!1198642 (not (= lambda!254875 lambda!254869))))

(declare-fun bs!1198643 () Bool)

(assert (= bs!1198643 (and d!1660801 d!1660775)))

(assert (=> bs!1198643 (not (= lambda!254875 lambda!254852))))

(declare-fun bs!1198644 () Bool)

(assert (= bs!1198644 (and d!1660801 b!5132340)))

(assert (=> bs!1198644 (not (= lambda!254875 lambda!254808))))

(declare-fun bs!1198645 () Bool)

(assert (= bs!1198645 (and d!1660801 b!5132343)))

(assert (=> bs!1198645 (not (= lambda!254875 lambda!254809))))

(declare-fun bs!1198646 () Bool)

(assert (= bs!1198646 (and d!1660801 b!5132397)))

(assert (=> bs!1198646 (not (= lambda!254875 lambda!254851))))

(assert (=> d!1660801 true))

(assert (=> d!1660801 (< (dynLambda!23704 order!26877 lambda!254808) (dynLambda!23704 order!26877 lambda!254875))))

(assert (=> d!1660801 (exists!1677 lt!2117726 lambda!254875)))

(declare-fun lt!2117809 () Unit!150828)

(declare-fun choose!37916 (List!59656 Int) Unit!150828)

(assert (=> d!1660801 (= lt!2117809 (choose!37916 lt!2117726 lambda!254808))))

(assert (=> d!1660801 (not (forall!13801 lt!2117726 lambda!254808))))

(assert (=> d!1660801 (= (lemmaNotForallThenExists!391 lt!2117726 lambda!254808) lt!2117809)))

(declare-fun bs!1198647 () Bool)

(assert (= bs!1198647 d!1660801))

(declare-fun m!6198238 () Bool)

(assert (=> bs!1198647 m!6198238))

(declare-fun m!6198240 () Bool)

(assert (=> bs!1198647 m!6198240))

(declare-fun m!6198242 () Bool)

(assert (=> bs!1198647 m!6198242))

(assert (=> b!5132343 d!1660801))

(declare-fun d!1660803 () Bool)

(declare-fun e!3201152 () Bool)

(assert (=> d!1660803 e!3201152))

(declare-fun res!2185954 () Bool)

(assert (=> d!1660803 (=> (not res!2185954) (not e!3201152))))

(declare-fun lt!2117812 () List!59656)

(declare-fun noDuplicate!1098 (List!59656) Bool)

(assert (=> d!1660803 (= res!2185954 (noDuplicate!1098 lt!2117812))))

(declare-fun choose!37917 ((Set Context!7484)) List!59656)

(assert (=> d!1660803 (= lt!2117812 (choose!37917 lt!2117727))))

(assert (=> d!1660803 (= (toList!8343 lt!2117727) lt!2117812)))

(declare-fun b!5132428 () Bool)

(declare-fun content!10575 (List!59656) (Set Context!7484))

(assert (=> b!5132428 (= e!3201152 (= (content!10575 lt!2117812) lt!2117727))))

(assert (= (and d!1660803 res!2185954) b!5132428))

(declare-fun m!6198244 () Bool)

(assert (=> d!1660803 m!6198244))

(declare-fun m!6198246 () Bool)

(assert (=> d!1660803 m!6198246))

(declare-fun m!6198248 () Bool)

(assert (=> b!5132428 m!6198248))

(assert (=> b!5132343 d!1660803))

(declare-fun b!5132439 () Bool)

(declare-fun e!3201159 () (Set Context!7484))

(declare-fun call!357246 () (Set Context!7484))

(assert (=> b!5132439 (= e!3201159 call!357246)))

(declare-fun d!1660805 () Bool)

(declare-fun c!883174 () Bool)

(declare-fun e!3201160 () Bool)

(assert (=> d!1660805 (= c!883174 e!3201160)))

(declare-fun res!2185957 () Bool)

(assert (=> d!1660805 (=> (not res!2185957) (not e!3201160))))

(assert (=> d!1660805 (= res!2185957 (is-Cons!59531 (exprs!4242 lt!2117730)))))

(declare-fun e!3201161 () (Set Context!7484))

(assert (=> d!1660805 (= (derivationStepZipperUp!66 lt!2117730 a!1233) e!3201161)))

(declare-fun b!5132440 () Bool)

(assert (=> b!5132440 (= e!3201159 (as set.empty (Set Context!7484)))))

(declare-fun bm!357241 () Bool)

(declare-fun derivationStepZipperDown!96 (Regex!14358 Context!7484 C!28982) (Set Context!7484))

(assert (=> bm!357241 (= call!357246 (derivationStepZipperDown!96 (h!65979 (exprs!4242 lt!2117730)) (Context!7485 (t!372682 (exprs!4242 lt!2117730))) a!1233))))

(declare-fun b!5132441 () Bool)

(assert (=> b!5132441 (= e!3201161 (set.union call!357246 (derivationStepZipperUp!66 (Context!7485 (t!372682 (exprs!4242 lt!2117730))) a!1233)))))

(declare-fun b!5132442 () Bool)

(assert (=> b!5132442 (= e!3201161 e!3201159)))

(declare-fun c!883173 () Bool)

(assert (=> b!5132442 (= c!883173 (is-Cons!59531 (exprs!4242 lt!2117730)))))

(declare-fun b!5132443 () Bool)

(declare-fun nullable!4747 (Regex!14358) Bool)

(assert (=> b!5132443 (= e!3201160 (nullable!4747 (h!65979 (exprs!4242 lt!2117730))))))

(assert (= (and d!1660805 res!2185957) b!5132443))

(assert (= (and d!1660805 c!883174) b!5132441))

(assert (= (and d!1660805 (not c!883174)) b!5132442))

(assert (= (and b!5132442 c!883173) b!5132439))

(assert (= (and b!5132442 (not c!883173)) b!5132440))

(assert (= (or b!5132441 b!5132439) bm!357241))

(declare-fun m!6198250 () Bool)

(assert (=> bm!357241 m!6198250))

(declare-fun m!6198252 () Bool)

(assert (=> b!5132441 m!6198252))

(declare-fun m!6198254 () Bool)

(assert (=> b!5132443 m!6198254))

(assert (=> b!5132334 d!1660805))

(declare-fun d!1660807 () Bool)

(declare-fun e!3201164 () Bool)

(assert (=> d!1660807 e!3201164))

(declare-fun res!2185960 () Bool)

(assert (=> d!1660807 (=> (not res!2185960) (not e!3201164))))

(declare-fun lt!2117815 () Context!7484)

(assert (=> d!1660807 (= res!2185960 (dynLambda!23702 lambda!254810 lt!2117815))))

(assert (=> d!1660807 (= lt!2117815 (getWitness!809 (toList!8343 z!1054) lambda!254810))))

(assert (=> d!1660807 (exists!1676 z!1054 lambda!254810)))

(assert (=> d!1660807 (= (getWitness!808 z!1054 lambda!254810) lt!2117815)))

(declare-fun b!5132446 () Bool)

(assert (=> b!5132446 (= e!3201164 (set.member lt!2117815 z!1054))))

(assert (= (and d!1660807 res!2185960) b!5132446))

(declare-fun b_lambda!199891 () Bool)

(assert (=> (not b_lambda!199891) (not d!1660807)))

(declare-fun m!6198258 () Bool)

(assert (=> d!1660807 m!6198258))

(assert (=> d!1660807 m!6198154))

(assert (=> d!1660807 m!6198154))

(declare-fun m!6198260 () Bool)

(assert (=> d!1660807 m!6198260))

(assert (=> d!1660807 m!6198076))

(declare-fun m!6198262 () Bool)

(assert (=> b!5132446 m!6198262))

(assert (=> b!5132336 d!1660807))

(declare-fun b!5132451 () Bool)

(declare-fun e!3201167 () Bool)

(declare-fun tp!1431782 () Bool)

(declare-fun tp!1431783 () Bool)

(assert (=> b!5132451 (= e!3201167 (and tp!1431782 tp!1431783))))

(assert (=> b!5132335 (= tp!1431770 e!3201167)))

(assert (= (and b!5132335 (is-Cons!59531 (exprs!4242 setElem!31179))) b!5132451))

(declare-fun condSetEmpty!31185 () Bool)

(assert (=> setNonEmpty!31179 (= condSetEmpty!31185 (= setRest!31179 (as set.empty (Set Context!7484))))))

(declare-fun setRes!31185 () Bool)

(assert (=> setNonEmpty!31179 (= tp!1431771 setRes!31185)))

(declare-fun setIsEmpty!31185 () Bool)

(assert (=> setIsEmpty!31185 setRes!31185))

(declare-fun setElem!31185 () Context!7484)

(declare-fun tp!1431789 () Bool)

(declare-fun e!3201170 () Bool)

(declare-fun setNonEmpty!31185 () Bool)

(assert (=> setNonEmpty!31185 (= setRes!31185 (and tp!1431789 (inv!79077 setElem!31185) e!3201170))))

(declare-fun setRest!31185 () (Set Context!7484))

(assert (=> setNonEmpty!31185 (= setRest!31179 (set.union (set.insert setElem!31185 (as set.empty (Set Context!7484))) setRest!31185))))

(declare-fun b!5132456 () Bool)

(declare-fun tp!1431788 () Bool)

(assert (=> b!5132456 (= e!3201170 tp!1431788)))

(assert (= (and setNonEmpty!31179 condSetEmpty!31185) setIsEmpty!31185))

(assert (= (and setNonEmpty!31179 (not condSetEmpty!31185)) setNonEmpty!31185))

(assert (= setNonEmpty!31185 b!5132456))

(declare-fun m!6198264 () Bool)

(assert (=> setNonEmpty!31185 m!6198264))

(declare-fun b_lambda!199893 () Bool)

(assert (= b_lambda!199891 (or b!5132333 b_lambda!199893)))

(declare-fun bs!1198649 () Bool)

(declare-fun d!1660811 () Bool)

(assert (= bs!1198649 (and d!1660811 b!5132333)))

(assert (=> bs!1198649 (= (dynLambda!23702 lambda!254810 lt!2117815) (set.member lt!2117728 (derivationStepZipperUp!66 lt!2117815 a!1233)))))

(declare-fun m!6198266 () Bool)

(assert (=> bs!1198649 m!6198266))

(declare-fun m!6198268 () Bool)

(assert (=> bs!1198649 m!6198268))

(assert (=> d!1660807 d!1660811))

(declare-fun b_lambda!199895 () Bool)

(assert (= b_lambda!199887 (or b!5132343 b_lambda!199895)))

(declare-fun bs!1198650 () Bool)

(declare-fun d!1660813 () Bool)

(assert (= bs!1198650 (and d!1660813 b!5132343)))

(assert (=> bs!1198650 (= (dynLambda!23702 lambda!254809 lt!2117781) (not (lostCause!1301 lt!2117781)))))

(declare-fun m!6198270 () Bool)

(assert (=> bs!1198650 m!6198270))

(assert (=> d!1660767 d!1660813))

(declare-fun b_lambda!199897 () Bool)

(assert (= b_lambda!199885 (or b!5132343 b_lambda!199897)))

(declare-fun bs!1198651 () Bool)

(declare-fun d!1660815 () Bool)

(assert (= bs!1198651 (and d!1660815 b!5132343)))

(assert (=> bs!1198651 (= (dynLambda!23702 lambda!254809 (h!65980 lt!2117726)) (not (lostCause!1301 (h!65980 lt!2117726))))))

(declare-fun m!6198272 () Bool)

(assert (=> bs!1198651 m!6198272))

(assert (=> b!5132410 d!1660815))

(push 1)

(assert (not d!1660783))

(assert (not b!5132416))

(assert (not b_lambda!199897))

(assert (not d!1660787))

(assert (not d!1660777))

(assert (not d!1660769))

(assert (not setNonEmpty!31185))

(assert (not bm!357237))

(assert (not d!1660797))

(assert (not b_lambda!199895))

(assert (not d!1660765))

(assert (not bm!357241))

(assert (not b!5132441))

(assert (not bm!357235))

(assert (not d!1660801))

(assert (not d!1660791))

(assert (not b!5132415))

(assert (not d!1660807))

(assert (not d!1660795))

(assert (not bm!357236))

(assert (not bs!1198649))

(assert (not b!5132396))

(assert (not b!5132443))

(assert (not d!1660793))

(assert (not d!1660767))

(assert (not b!5132451))

(assert (not b!5132397))

(assert (not b!5132411))

(assert (not b!5132417))

(assert (not b_lambda!199893))

(assert (not bm!357238))

(assert (not b!5132456))

(assert (not d!1660775))

(assert (not bs!1198650))

(assert (not b!5132428))

(assert tp_is_empty!37889)

(assert (not bs!1198651))

(assert (not d!1660773))

(assert (not d!1660803))

(assert (not d!1660781))

(assert (not b!5132413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

