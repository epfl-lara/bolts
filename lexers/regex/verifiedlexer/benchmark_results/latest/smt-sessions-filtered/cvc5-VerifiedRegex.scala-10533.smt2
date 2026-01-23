; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542810 () Bool)

(assert start!542810)

(declare-fun b!5132162 () Bool)

(assert (=> b!5132162 true))

(declare-fun bs!1198396 () Bool)

(declare-fun b!5132161 () Bool)

(declare-fun b!5132164 () Bool)

(assert (= bs!1198396 (and b!5132161 b!5132164)))

(declare-fun lambda!254685 () Int)

(declare-fun lambda!254684 () Int)

(assert (=> bs!1198396 (not (= lambda!254685 lambda!254684))))

(declare-fun bs!1198397 () Bool)

(declare-fun b!5132165 () Bool)

(assert (= bs!1198397 (and b!5132165 b!5132164)))

(declare-fun lambda!254686 () Int)

(assert (=> bs!1198397 (not (= lambda!254686 lambda!254684))))

(declare-fun bs!1198398 () Bool)

(assert (= bs!1198398 (and b!5132165 b!5132161)))

(assert (=> bs!1198398 (not (= lambda!254686 lambda!254685))))

(assert (=> b!5132165 true))

(assert (=> b!5132165 true))

(declare-fun b!5132158 () Bool)

(declare-fun res!2185820 () Bool)

(declare-fun e!3200980 () Bool)

(assert (=> b!5132158 (=> (not res!2185820) (not e!3200980))))

(declare-datatypes ((C!28978 0))(
  ( (C!28979 (val!24141 Int)) )
))
(declare-datatypes ((Regex!14356 0))(
  ( (ElementMatch!14356 (c!883073 C!28978)) (Concat!23201 (regOne!29224 Regex!14356) (regTwo!29224 Regex!14356)) (EmptyExpr!14356) (Star!14356 (reg!14685 Regex!14356)) (EmptyLang!14356) (Union!14356 (regOne!29225 Regex!14356) (regTwo!29225 Regex!14356)) )
))
(declare-datatypes ((List!59649 0))(
  ( (Nil!59525) (Cons!59525 (h!65973 Regex!14356) (t!372676 List!59649)) )
))
(declare-datatypes ((Context!7480 0))(
  ( (Context!7481 (exprs!4240 List!59649)) )
))
(declare-fun z!1054 () (Set Context!7480))

(declare-fun forall!13793 ((Set Context!7480) Int) Bool)

(assert (=> b!5132158 (= res!2185820 (forall!13793 z!1054 lambda!254684))))

(declare-fun b!5132159 () Bool)

(declare-fun res!2185814 () Bool)

(assert (=> b!5132159 (=> (not res!2185814) (not e!3200980))))

(declare-fun lt!2117575 () Bool)

(assert (=> b!5132159 (= res!2185814 (not lt!2117575))))

(declare-fun setElem!31167 () Context!7480)

(declare-fun setRes!31167 () Bool)

(declare-fun setNonEmpty!31167 () Bool)

(declare-fun tp!1431734 () Bool)

(declare-fun e!3200975 () Bool)

(declare-fun inv!79072 (Context!7480) Bool)

(assert (=> setNonEmpty!31167 (= setRes!31167 (and tp!1431734 (inv!79072 setElem!31167) e!3200975))))

(declare-fun setRest!31167 () (Set Context!7480))

(assert (=> setNonEmpty!31167 (= z!1054 (set.union (set.insert setElem!31167 (as set.empty (Set Context!7480))) setRest!31167))))

(declare-fun setIsEmpty!31167 () Bool)

(assert (=> setIsEmpty!31167 setRes!31167))

(declare-fun b!5132160 () Bool)

(declare-fun tp!1431735 () Bool)

(assert (=> b!5132160 (= e!3200975 tp!1431735)))

(declare-fun e!3200976 () Bool)

(assert (=> b!5132161 (= e!3200980 (not e!3200976))))

(declare-fun res!2185815 () Bool)

(assert (=> b!5132161 (=> res!2185815 e!3200976)))

(declare-fun lt!2117571 () (Set Context!7480))

(declare-fun exists!1670 ((Set Context!7480) Int) Bool)

(assert (=> b!5132161 (= res!2185815 (not (exists!1670 lt!2117571 lambda!254685)))))

(declare-datatypes ((List!59650 0))(
  ( (Nil!59526) (Cons!59526 (h!65974 Context!7480) (t!372677 List!59650)) )
))
(declare-fun lt!2117572 () List!59650)

(declare-fun exists!1671 (List!59650 Int) Bool)

(assert (=> b!5132161 (exists!1671 lt!2117572 lambda!254685)))

(declare-datatypes ((Unit!150815 0))(
  ( (Unit!150816) )
))
(declare-fun lt!2117573 () Unit!150815)

(declare-fun lemmaNotForallThenExists!389 (List!59650 Int) Unit!150815)

(assert (=> b!5132161 (= lt!2117573 (lemmaNotForallThenExists!389 lt!2117572 lambda!254684))))

(declare-fun toList!8341 ((Set Context!7480)) List!59650)

(assert (=> b!5132161 (= lt!2117572 (toList!8341 lt!2117571))))

(declare-fun res!2185817 () Bool)

(declare-fun e!3200979 () Bool)

(assert (=> start!542810 (=> (not res!2185817) (not e!3200979))))

(declare-fun lostCauseZipper!1200 ((Set Context!7480)) Bool)

(assert (=> start!542810 (= res!2185817 (lostCauseZipper!1200 z!1054))))

(assert (=> start!542810 e!3200979))

(declare-fun condSetEmpty!31167 () Bool)

(assert (=> start!542810 (= condSetEmpty!31167 (= z!1054 (as set.empty (Set Context!7480))))))

(assert (=> start!542810 setRes!31167))

(declare-fun tp_is_empty!37885 () Bool)

(assert (=> start!542810 tp_is_empty!37885))

(declare-fun e!3200981 () Bool)

(assert (=> b!5132162 (= e!3200979 e!3200981)))

(declare-fun res!2185819 () Bool)

(assert (=> b!5132162 (=> (not res!2185819) (not e!3200981))))

(declare-fun lambda!254683 () Int)

(declare-fun flatMap!407 ((Set Context!7480) Int) (Set Context!7480))

(assert (=> b!5132162 (= res!2185819 (= lt!2117571 (flatMap!407 z!1054 lambda!254683)))))

(declare-fun a!1233 () C!28978)

(declare-fun derivationStepZipper!911 ((Set Context!7480) C!28978) (Set Context!7480))

(assert (=> b!5132162 (= lt!2117571 (derivationStepZipper!911 z!1054 a!1233))))

(declare-fun b!5132163 () Bool)

(declare-fun res!2185818 () Bool)

(assert (=> b!5132163 (=> (not res!2185818) (not e!3200980))))

(assert (=> b!5132163 (= res!2185818 (not (forall!13793 lt!2117571 lambda!254684)))))

(assert (=> b!5132164 (= e!3200981 e!3200980)))

(declare-fun res!2185816 () Bool)

(assert (=> b!5132164 (=> (not res!2185816) (not e!3200980))))

(assert (=> b!5132164 (= res!2185816 (= lt!2117575 (forall!13793 lt!2117571 lambda!254684)))))

(assert (=> b!5132164 (= lt!2117575 (lostCauseZipper!1200 lt!2117571))))

(declare-fun e!3200978 () Bool)

(declare-fun e!3200977 () Bool)

(assert (=> b!5132165 (= e!3200978 e!3200977)))

(declare-fun res!2185813 () Bool)

(assert (=> b!5132165 (=> res!2185813 e!3200977)))

(assert (=> b!5132165 (= res!2185813 (not (exists!1670 z!1054 lambda!254686)))))

(assert (=> b!5132165 (exists!1670 z!1054 lambda!254686)))

(declare-fun lt!2117570 () Unit!150815)

(declare-fun lt!2117574 () Context!7480)

(declare-fun lemmaFlatMapPost!11 ((Set Context!7480) Int Context!7480) Unit!150815)

(assert (=> b!5132165 (= lt!2117570 (lemmaFlatMapPost!11 z!1054 lambda!254683 lt!2117574))))

(declare-fun b!5132166 () Bool)

(declare-fun getWitness!804 ((Set Context!7480) Int) Context!7480)

(assert (=> b!5132166 (= e!3200977 (set.member (getWitness!804 z!1054 lambda!254686) z!1054))))

(declare-fun b!5132167 () Bool)

(declare-fun res!2185822 () Bool)

(assert (=> b!5132167 (=> res!2185822 e!3200978)))

(declare-fun lostCause!1299 (Context!7480) Bool)

(assert (=> b!5132167 (= res!2185822 (lostCause!1299 lt!2117574))))

(declare-fun b!5132168 () Bool)

(assert (=> b!5132168 (= e!3200976 e!3200978)))

(declare-fun res!2185821 () Bool)

(assert (=> b!5132168 (=> res!2185821 e!3200978)))

(assert (=> b!5132168 (= res!2185821 (not (set.member lt!2117574 lt!2117571)))))

(declare-fun getWitness!805 (List!59650 Int) Context!7480)

(assert (=> b!5132168 (= lt!2117574 (getWitness!805 lt!2117572 lambda!254685))))

(assert (= (and start!542810 res!2185817) b!5132162))

(assert (= (and b!5132162 res!2185819) b!5132164))

(assert (= (and b!5132164 res!2185816) b!5132158))

(assert (= (and b!5132158 res!2185820) b!5132159))

(assert (= (and b!5132159 res!2185814) b!5132163))

(assert (= (and b!5132163 res!2185818) b!5132161))

(assert (= (and b!5132161 (not res!2185815)) b!5132168))

(assert (= (and b!5132168 (not res!2185821)) b!5132167))

(assert (= (and b!5132167 (not res!2185822)) b!5132165))

(assert (= (and b!5132165 (not res!2185813)) b!5132166))

(assert (= (and start!542810 condSetEmpty!31167) setIsEmpty!31167))

(assert (= (and start!542810 (not condSetEmpty!31167)) setNonEmpty!31167))

(assert (= setNonEmpty!31167 b!5132160))

(declare-fun m!6197810 () Bool)

(assert (=> b!5132166 m!6197810))

(assert (=> b!5132166 m!6197810))

(declare-fun m!6197812 () Bool)

(assert (=> b!5132166 m!6197812))

(declare-fun m!6197814 () Bool)

(assert (=> b!5132164 m!6197814))

(declare-fun m!6197816 () Bool)

(assert (=> b!5132164 m!6197816))

(declare-fun m!6197818 () Bool)

(assert (=> setNonEmpty!31167 m!6197818))

(declare-fun m!6197820 () Bool)

(assert (=> b!5132162 m!6197820))

(declare-fun m!6197822 () Bool)

(assert (=> b!5132162 m!6197822))

(declare-fun m!6197824 () Bool)

(assert (=> b!5132161 m!6197824))

(declare-fun m!6197826 () Bool)

(assert (=> b!5132161 m!6197826))

(declare-fun m!6197828 () Bool)

(assert (=> b!5132161 m!6197828))

(declare-fun m!6197830 () Bool)

(assert (=> b!5132161 m!6197830))

(assert (=> b!5132163 m!6197814))

(declare-fun m!6197832 () Bool)

(assert (=> start!542810 m!6197832))

(declare-fun m!6197834 () Bool)

(assert (=> b!5132158 m!6197834))

(declare-fun m!6197836 () Bool)

(assert (=> b!5132165 m!6197836))

(assert (=> b!5132165 m!6197836))

(declare-fun m!6197838 () Bool)

(assert (=> b!5132165 m!6197838))

(declare-fun m!6197840 () Bool)

(assert (=> b!5132168 m!6197840))

(declare-fun m!6197842 () Bool)

(assert (=> b!5132168 m!6197842))

(declare-fun m!6197844 () Bool)

(assert (=> b!5132167 m!6197844))

(push 1)

(assert (not b!5132168))

(assert (not b!5132164))

(assert (not b!5132158))

(assert (not b!5132163))

(assert (not start!542810))

(assert (not b!5132160))

(assert (not b!5132161))

(assert (not b!5132165))

(assert (not b!5132162))

(assert tp_is_empty!37885)

(assert (not b!5132166))

(assert (not b!5132167))

(assert (not setNonEmpty!31167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1660688 () Bool)

(declare-fun lt!2117596 () Bool)

(declare-fun forall!13795 (List!59650 Int) Bool)

(assert (=> d!1660688 (= lt!2117596 (forall!13795 (toList!8341 lt!2117571) lambda!254684))))

(declare-fun choose!37903 ((Set Context!7480) Int) Bool)

(assert (=> d!1660688 (= lt!2117596 (choose!37903 lt!2117571 lambda!254684))))

(assert (=> d!1660688 (= (forall!13793 lt!2117571 lambda!254684) lt!2117596)))

(declare-fun bs!1198402 () Bool)

(assert (= bs!1198402 d!1660688))

(assert (=> bs!1198402 m!6197830))

(assert (=> bs!1198402 m!6197830))

(declare-fun m!6197882 () Bool)

(assert (=> bs!1198402 m!6197882))

(declare-fun m!6197884 () Bool)

(assert (=> bs!1198402 m!6197884))

(assert (=> b!5132163 d!1660688))

(declare-fun d!1660690 () Bool)

(declare-fun e!3201014 () Bool)

(assert (=> d!1660690 e!3201014))

(declare-fun res!2185857 () Bool)

(assert (=> d!1660690 (=> (not res!2185857) (not e!3201014))))

(declare-fun lt!2117602 () Context!7480)

(declare-fun dynLambda!23699 (Int Context!7480) Bool)

(assert (=> d!1660690 (= res!2185857 (dynLambda!23699 lambda!254685 lt!2117602))))

(declare-fun e!3201013 () Context!7480)

(assert (=> d!1660690 (= lt!2117602 e!3201013)))

(declare-fun c!883089 () Bool)

(declare-fun e!3201016 () Bool)

(assert (=> d!1660690 (= c!883089 e!3201016)))

(declare-fun res!2185858 () Bool)

(assert (=> d!1660690 (=> (not res!2185858) (not e!3201016))))

(assert (=> d!1660690 (= res!2185858 (is-Cons!59526 lt!2117572))))

(assert (=> d!1660690 (exists!1671 lt!2117572 lambda!254685)))

(assert (=> d!1660690 (= (getWitness!805 lt!2117572 lambda!254685) lt!2117602)))

(declare-fun b!5132226 () Bool)

(assert (=> b!5132226 (= e!3201016 (dynLambda!23699 lambda!254685 (h!65974 lt!2117572)))))

(declare-fun b!5132227 () Bool)

(declare-fun e!3201015 () Context!7480)

(assert (=> b!5132227 (= e!3201013 e!3201015)))

(declare-fun c!883090 () Bool)

(assert (=> b!5132227 (= c!883090 (is-Cons!59526 lt!2117572))))

(declare-fun b!5132228 () Bool)

(declare-fun lt!2117601 () Unit!150815)

(declare-fun Unit!150819 () Unit!150815)

(assert (=> b!5132228 (= lt!2117601 Unit!150819)))

(assert (=> b!5132228 false))

(declare-fun head!10988 (List!59650) Context!7480)

(assert (=> b!5132228 (= e!3201015 (head!10988 lt!2117572))))

(declare-fun b!5132229 () Bool)

(assert (=> b!5132229 (= e!3201013 (h!65974 lt!2117572))))

(declare-fun b!5132230 () Bool)

(assert (=> b!5132230 (= e!3201015 (getWitness!805 (t!372677 lt!2117572) lambda!254685))))

(declare-fun b!5132231 () Bool)

(declare-fun contains!19641 (List!59650 Context!7480) Bool)

(assert (=> b!5132231 (= e!3201014 (contains!19641 lt!2117572 lt!2117602))))

(assert (= (and d!1660690 res!2185858) b!5132226))

(assert (= (and d!1660690 c!883089) b!5132229))

(assert (= (and d!1660690 (not c!883089)) b!5132227))

(assert (= (and b!5132227 c!883090) b!5132230))

(assert (= (and b!5132227 (not c!883090)) b!5132228))

(assert (= (and d!1660690 res!2185857) b!5132231))

(declare-fun b_lambda!199861 () Bool)

(assert (=> (not b_lambda!199861) (not d!1660690)))

(declare-fun b_lambda!199863 () Bool)

(assert (=> (not b_lambda!199863) (not b!5132226)))

(declare-fun m!6197886 () Bool)

(assert (=> b!5132228 m!6197886))

(declare-fun m!6197888 () Bool)

(assert (=> b!5132226 m!6197888))

(declare-fun m!6197890 () Bool)

(assert (=> d!1660690 m!6197890))

(assert (=> d!1660690 m!6197826))

(declare-fun m!6197892 () Bool)

(assert (=> b!5132231 m!6197892))

(declare-fun m!6197894 () Bool)

(assert (=> b!5132230 m!6197894))

(assert (=> b!5132168 d!1660690))

(declare-fun bs!1198403 () Bool)

(declare-fun d!1660692 () Bool)

(assert (= bs!1198403 (and d!1660692 b!5132164)))

(declare-fun lambda!254725 () Int)

(assert (=> bs!1198403 (= lambda!254725 lambda!254684)))

(declare-fun bs!1198404 () Bool)

(assert (= bs!1198404 (and d!1660692 b!5132161)))

(assert (=> bs!1198404 (not (= lambda!254725 lambda!254685))))

(declare-fun bs!1198405 () Bool)

(assert (= bs!1198405 (and d!1660692 b!5132165)))

(assert (=> bs!1198405 (not (= lambda!254725 lambda!254686))))

(declare-fun bs!1198406 () Bool)

(declare-fun b!5132236 () Bool)

(assert (= bs!1198406 (and b!5132236 b!5132164)))

(declare-fun lambda!254726 () Int)

(assert (=> bs!1198406 (not (= lambda!254726 lambda!254684))))

(declare-fun bs!1198407 () Bool)

(assert (= bs!1198407 (and b!5132236 b!5132161)))

(assert (=> bs!1198407 (= lambda!254726 lambda!254685)))

(declare-fun bs!1198408 () Bool)

(assert (= bs!1198408 (and b!5132236 b!5132165)))

(assert (=> bs!1198408 (not (= lambda!254726 lambda!254686))))

(declare-fun bs!1198409 () Bool)

(assert (= bs!1198409 (and b!5132236 d!1660692)))

(assert (=> bs!1198409 (not (= lambda!254726 lambda!254725))))

(declare-fun bs!1198410 () Bool)

(declare-fun b!5132237 () Bool)

(assert (= bs!1198410 (and b!5132237 b!5132236)))

(declare-fun lambda!254727 () Int)

(assert (=> bs!1198410 (= lambda!254727 lambda!254726)))

(declare-fun bs!1198411 () Bool)

(assert (= bs!1198411 (and b!5132237 b!5132164)))

(assert (=> bs!1198411 (not (= lambda!254727 lambda!254684))))

(declare-fun bs!1198412 () Bool)

(assert (= bs!1198412 (and b!5132237 d!1660692)))

(assert (=> bs!1198412 (not (= lambda!254727 lambda!254725))))

(declare-fun bs!1198413 () Bool)

(assert (= bs!1198413 (and b!5132237 b!5132165)))

(assert (=> bs!1198413 (not (= lambda!254727 lambda!254686))))

(declare-fun bs!1198414 () Bool)

(assert (= bs!1198414 (and b!5132237 b!5132161)))

(assert (=> bs!1198414 (= lambda!254727 lambda!254685)))

(declare-fun bm!357219 () Bool)

(declare-fun call!357225 () List!59650)

(assert (=> bm!357219 (= call!357225 (toList!8341 z!1054))))

(declare-fun lt!2117619 () Bool)

(declare-datatypes ((List!59653 0))(
  ( (Nil!59529) (Cons!59529 (h!65977 C!28978) (t!372680 List!59653)) )
))
(declare-datatypes ((Option!14740 0))(
  ( (None!14739) (Some!14739 (v!50768 List!59653)) )
))
(declare-fun isEmpty!32001 (Option!14740) Bool)

(declare-fun getLanguageWitness!877 ((Set Context!7480)) Option!14740)

(assert (=> d!1660692 (= lt!2117619 (isEmpty!32001 (getLanguageWitness!877 z!1054)))))

(assert (=> d!1660692 (= lt!2117619 (forall!13793 z!1054 lambda!254725))))

(declare-fun lt!2117622 () Unit!150815)

(declare-fun e!3201023 () Unit!150815)

(assert (=> d!1660692 (= lt!2117622 e!3201023)))

(declare-fun c!883101 () Bool)

(assert (=> d!1660692 (= c!883101 (not (forall!13793 z!1054 lambda!254725)))))

(assert (=> d!1660692 (= (lostCauseZipper!1200 z!1054) lt!2117619)))

(declare-fun Unit!150820 () Unit!150815)

(assert (=> b!5132237 (= e!3201023 Unit!150820)))

(declare-fun lt!2117624 () List!59650)

(assert (=> b!5132237 (= lt!2117624 call!357225)))

(declare-fun lt!2117626 () Unit!150815)

(declare-fun lemmaForallThenNotExists!362 (List!59650 Int) Unit!150815)

(assert (=> b!5132237 (= lt!2117626 (lemmaForallThenNotExists!362 lt!2117624 lambda!254725))))

(declare-fun call!357224 () Bool)

(assert (=> b!5132237 (not call!357224)))

(declare-fun lt!2117621 () Unit!150815)

(assert (=> b!5132237 (= lt!2117621 lt!2117626)))

(declare-fun lt!2117620 () List!59650)

(declare-fun bm!357220 () Bool)

(assert (=> bm!357220 (= call!357224 (exists!1671 (ite c!883101 lt!2117620 lt!2117624) (ite c!883101 lambda!254726 lambda!254727)))))

(declare-fun Unit!150821 () Unit!150815)

(assert (=> b!5132236 (= e!3201023 Unit!150821)))

(assert (=> b!5132236 (= lt!2117620 call!357225)))

(declare-fun lt!2117625 () Unit!150815)

(assert (=> b!5132236 (= lt!2117625 (lemmaNotForallThenExists!389 lt!2117620 lambda!254725))))

(assert (=> b!5132236 call!357224))

(declare-fun lt!2117623 () Unit!150815)

(assert (=> b!5132236 (= lt!2117623 lt!2117625)))

(assert (= (and d!1660692 c!883101) b!5132236))

(assert (= (and d!1660692 (not c!883101)) b!5132237))

(assert (= (or b!5132236 b!5132237) bm!357219))

(assert (= (or b!5132236 b!5132237) bm!357220))

(declare-fun m!6197896 () Bool)

(assert (=> b!5132237 m!6197896))

(declare-fun m!6197898 () Bool)

(assert (=> bm!357219 m!6197898))

(declare-fun m!6197900 () Bool)

(assert (=> d!1660692 m!6197900))

(assert (=> d!1660692 m!6197900))

(declare-fun m!6197902 () Bool)

(assert (=> d!1660692 m!6197902))

(declare-fun m!6197904 () Bool)

(assert (=> d!1660692 m!6197904))

(assert (=> d!1660692 m!6197904))

(declare-fun m!6197906 () Bool)

(assert (=> b!5132236 m!6197906))

(declare-fun m!6197908 () Bool)

(assert (=> bm!357220 m!6197908))

(assert (=> start!542810 d!1660692))

(declare-fun d!1660696 () Bool)

(declare-fun choose!37904 ((Set Context!7480) Int) (Set Context!7480))

(assert (=> d!1660696 (= (flatMap!407 z!1054 lambda!254683) (choose!37904 z!1054 lambda!254683))))

(declare-fun bs!1198415 () Bool)

(assert (= bs!1198415 d!1660696))

(declare-fun m!6197910 () Bool)

(assert (=> bs!1198415 m!6197910))

(assert (=> b!5132162 d!1660696))

(declare-fun bs!1198416 () Bool)

(declare-fun d!1660698 () Bool)

(assert (= bs!1198416 (and d!1660698 b!5132162)))

(declare-fun lambda!254730 () Int)

(assert (=> bs!1198416 (= lambda!254730 lambda!254683)))

(assert (=> d!1660698 true))

(assert (=> d!1660698 (= (derivationStepZipper!911 z!1054 a!1233) (flatMap!407 z!1054 lambda!254730))))

(declare-fun bs!1198417 () Bool)

(assert (= bs!1198417 d!1660698))

(declare-fun m!6197912 () Bool)

(assert (=> bs!1198417 m!6197912))

(assert (=> b!5132162 d!1660698))

(assert (=> b!5132164 d!1660688))

(declare-fun bs!1198418 () Bool)

(declare-fun d!1660700 () Bool)

(assert (= bs!1198418 (and d!1660700 b!5132236)))

(declare-fun lambda!254731 () Int)

(assert (=> bs!1198418 (not (= lambda!254731 lambda!254726))))

(declare-fun bs!1198419 () Bool)

(assert (= bs!1198419 (and d!1660700 b!5132164)))

(assert (=> bs!1198419 (= lambda!254731 lambda!254684)))

(declare-fun bs!1198420 () Bool)

(assert (= bs!1198420 (and d!1660700 d!1660692)))

(assert (=> bs!1198420 (= lambda!254731 lambda!254725)))

(declare-fun bs!1198421 () Bool)

(assert (= bs!1198421 (and d!1660700 b!5132161)))

(assert (=> bs!1198421 (not (= lambda!254731 lambda!254685))))

(declare-fun bs!1198422 () Bool)

(assert (= bs!1198422 (and d!1660700 b!5132237)))

(assert (=> bs!1198422 (not (= lambda!254731 lambda!254727))))

(declare-fun bs!1198423 () Bool)

(assert (= bs!1198423 (and d!1660700 b!5132165)))

(assert (=> bs!1198423 (not (= lambda!254731 lambda!254686))))

(declare-fun bs!1198424 () Bool)

(declare-fun b!5132238 () Bool)

(assert (= bs!1198424 (and b!5132238 b!5132236)))

(declare-fun lambda!254732 () Int)

(assert (=> bs!1198424 (= lambda!254732 lambda!254726)))

(declare-fun bs!1198426 () Bool)

(assert (= bs!1198426 (and b!5132238 b!5132164)))

(assert (=> bs!1198426 (not (= lambda!254732 lambda!254684))))

(declare-fun bs!1198427 () Bool)

(assert (= bs!1198427 (and b!5132238 d!1660692)))

(assert (=> bs!1198427 (not (= lambda!254732 lambda!254725))))

(declare-fun bs!1198428 () Bool)

(assert (= bs!1198428 (and b!5132238 d!1660700)))

(assert (=> bs!1198428 (not (= lambda!254732 lambda!254731))))

(declare-fun bs!1198429 () Bool)

(assert (= bs!1198429 (and b!5132238 b!5132161)))

(assert (=> bs!1198429 (= lambda!254732 lambda!254685)))

(declare-fun bs!1198430 () Bool)

(assert (= bs!1198430 (and b!5132238 b!5132237)))

(assert (=> bs!1198430 (= lambda!254732 lambda!254727)))

(declare-fun bs!1198431 () Bool)

(assert (= bs!1198431 (and b!5132238 b!5132165)))

(assert (=> bs!1198431 (not (= lambda!254732 lambda!254686))))

(declare-fun bs!1198432 () Bool)

(declare-fun b!5132239 () Bool)

(assert (= bs!1198432 (and b!5132239 b!5132236)))

(declare-fun lambda!254733 () Int)

(assert (=> bs!1198432 (= lambda!254733 lambda!254726)))

(declare-fun bs!1198433 () Bool)

(assert (= bs!1198433 (and b!5132239 b!5132164)))

(assert (=> bs!1198433 (not (= lambda!254733 lambda!254684))))

(declare-fun bs!1198434 () Bool)

(assert (= bs!1198434 (and b!5132239 d!1660692)))

(assert (=> bs!1198434 (not (= lambda!254733 lambda!254725))))

(declare-fun bs!1198435 () Bool)

(assert (= bs!1198435 (and b!5132239 d!1660700)))

(assert (=> bs!1198435 (not (= lambda!254733 lambda!254731))))

(declare-fun bs!1198436 () Bool)

(assert (= bs!1198436 (and b!5132239 b!5132161)))

(assert (=> bs!1198436 (= lambda!254733 lambda!254685)))

(declare-fun bs!1198437 () Bool)

(assert (= bs!1198437 (and b!5132239 b!5132238)))

(assert (=> bs!1198437 (= lambda!254733 lambda!254732)))

(declare-fun bs!1198438 () Bool)

(assert (= bs!1198438 (and b!5132239 b!5132237)))

(assert (=> bs!1198438 (= lambda!254733 lambda!254727)))

(declare-fun bs!1198439 () Bool)

(assert (= bs!1198439 (and b!5132239 b!5132165)))

(assert (=> bs!1198439 (not (= lambda!254733 lambda!254686))))

(declare-fun bm!357221 () Bool)

(declare-fun call!357227 () List!59650)

(assert (=> bm!357221 (= call!357227 (toList!8341 lt!2117571))))

(declare-fun lt!2117629 () Bool)

(assert (=> d!1660700 (= lt!2117629 (isEmpty!32001 (getLanguageWitness!877 lt!2117571)))))

(assert (=> d!1660700 (= lt!2117629 (forall!13793 lt!2117571 lambda!254731))))

(declare-fun lt!2117632 () Unit!150815)

(declare-fun e!3201024 () Unit!150815)

(assert (=> d!1660700 (= lt!2117632 e!3201024)))

(declare-fun c!883104 () Bool)

(assert (=> d!1660700 (= c!883104 (not (forall!13793 lt!2117571 lambda!254731)))))

(assert (=> d!1660700 (= (lostCauseZipper!1200 lt!2117571) lt!2117629)))

(declare-fun Unit!150822 () Unit!150815)

(assert (=> b!5132239 (= e!3201024 Unit!150822)))

(declare-fun lt!2117634 () List!59650)

(assert (=> b!5132239 (= lt!2117634 call!357227)))

(declare-fun lt!2117636 () Unit!150815)

(assert (=> b!5132239 (= lt!2117636 (lemmaForallThenNotExists!362 lt!2117634 lambda!254731))))

(declare-fun call!357226 () Bool)

(assert (=> b!5132239 (not call!357226)))

(declare-fun lt!2117631 () Unit!150815)

(assert (=> b!5132239 (= lt!2117631 lt!2117636)))

(declare-fun lt!2117630 () List!59650)

(declare-fun bm!357222 () Bool)

(assert (=> bm!357222 (= call!357226 (exists!1671 (ite c!883104 lt!2117630 lt!2117634) (ite c!883104 lambda!254732 lambda!254733)))))

(declare-fun Unit!150823 () Unit!150815)

(assert (=> b!5132238 (= e!3201024 Unit!150823)))

(assert (=> b!5132238 (= lt!2117630 call!357227)))

(declare-fun lt!2117635 () Unit!150815)

(assert (=> b!5132238 (= lt!2117635 (lemmaNotForallThenExists!389 lt!2117630 lambda!254731))))

(assert (=> b!5132238 call!357226))

(declare-fun lt!2117633 () Unit!150815)

(assert (=> b!5132238 (= lt!2117633 lt!2117635)))

(assert (= (and d!1660700 c!883104) b!5132238))

(assert (= (and d!1660700 (not c!883104)) b!5132239))

(assert (= (or b!5132238 b!5132239) bm!357221))

(assert (= (or b!5132238 b!5132239) bm!357222))

(declare-fun m!6197918 () Bool)

(assert (=> b!5132239 m!6197918))

(assert (=> bm!357221 m!6197830))

(declare-fun m!6197920 () Bool)

(assert (=> d!1660700 m!6197920))

(assert (=> d!1660700 m!6197920))

(declare-fun m!6197922 () Bool)

(assert (=> d!1660700 m!6197922))

(declare-fun m!6197924 () Bool)

(assert (=> d!1660700 m!6197924))

(assert (=> d!1660700 m!6197924))

(declare-fun m!6197926 () Bool)

(assert (=> b!5132238 m!6197926))

(declare-fun m!6197928 () Bool)

(assert (=> bm!357222 m!6197928))

(assert (=> b!5132164 d!1660700))

(declare-fun d!1660704 () Bool)

(declare-fun lambda!254736 () Int)

(declare-fun forall!13796 (List!59649 Int) Bool)

(assert (=> d!1660704 (= (inv!79072 setElem!31167) (forall!13796 (exprs!4240 setElem!31167) lambda!254736))))

(declare-fun bs!1198440 () Bool)

(assert (= bs!1198440 d!1660704))

(declare-fun m!6197930 () Bool)

(assert (=> bs!1198440 m!6197930))

(assert (=> setNonEmpty!31167 d!1660704))

(declare-fun d!1660706 () Bool)

(declare-fun lt!2117640 () Bool)

(assert (=> d!1660706 (= lt!2117640 (exists!1671 (toList!8341 z!1054) lambda!254686))))

(declare-fun choose!37905 ((Set Context!7480) Int) Bool)

(assert (=> d!1660706 (= lt!2117640 (choose!37905 z!1054 lambda!254686))))

(assert (=> d!1660706 (= (exists!1670 z!1054 lambda!254686) lt!2117640)))

(declare-fun bs!1198441 () Bool)

(assert (= bs!1198441 d!1660706))

(assert (=> bs!1198441 m!6197898))

(assert (=> bs!1198441 m!6197898))

(declare-fun m!6197932 () Bool)

(assert (=> bs!1198441 m!6197932))

(declare-fun m!6197934 () Bool)

(assert (=> bs!1198441 m!6197934))

(assert (=> b!5132165 d!1660706))

(declare-fun bs!1198442 () Bool)

(declare-fun d!1660708 () Bool)

(assert (= bs!1198442 (and d!1660708 b!5132236)))

(declare-fun lambda!254739 () Int)

(assert (=> bs!1198442 (not (= lambda!254739 lambda!254726))))

(declare-fun bs!1198443 () Bool)

(assert (= bs!1198443 (and d!1660708 b!5132164)))

(assert (=> bs!1198443 (not (= lambda!254739 lambda!254684))))

(declare-fun bs!1198444 () Bool)

(assert (= bs!1198444 (and d!1660708 b!5132239)))

(assert (=> bs!1198444 (not (= lambda!254739 lambda!254733))))

(declare-fun bs!1198445 () Bool)

(assert (= bs!1198445 (and d!1660708 d!1660692)))

(assert (=> bs!1198445 (not (= lambda!254739 lambda!254725))))

(declare-fun bs!1198446 () Bool)

(assert (= bs!1198446 (and d!1660708 d!1660700)))

(assert (=> bs!1198446 (not (= lambda!254739 lambda!254731))))

(declare-fun bs!1198447 () Bool)

(assert (= bs!1198447 (and d!1660708 b!5132161)))

(assert (=> bs!1198447 (not (= lambda!254739 lambda!254685))))

(declare-fun bs!1198448 () Bool)

(assert (= bs!1198448 (and d!1660708 b!5132238)))

(assert (=> bs!1198448 (not (= lambda!254739 lambda!254732))))

(declare-fun bs!1198449 () Bool)

(assert (= bs!1198449 (and d!1660708 b!5132237)))

(assert (=> bs!1198449 (not (= lambda!254739 lambda!254727))))

(declare-fun bs!1198450 () Bool)

(assert (= bs!1198450 (and d!1660708 b!5132165)))

(assert (=> bs!1198450 (not (= lambda!254739 lambda!254686))))

(assert (=> d!1660708 true))

(assert (=> d!1660708 true))

(declare-fun order!26869 () Int)

(declare-fun order!26867 () Int)

(declare-fun dynLambda!23700 (Int Int) Int)

(declare-fun dynLambda!23701 (Int Int) Int)

(assert (=> d!1660708 (< (dynLambda!23700 order!26867 lambda!254683) (dynLambda!23701 order!26869 lambda!254739))))

(assert (=> d!1660708 (exists!1670 z!1054 lambda!254739)))

(declare-fun lt!2117643 () Unit!150815)

(declare-fun choose!37906 ((Set Context!7480) Int Context!7480) Unit!150815)

(assert (=> d!1660708 (= lt!2117643 (choose!37906 z!1054 lambda!254683 lt!2117574))))

(assert (=> d!1660708 (set.member lt!2117574 (flatMap!407 z!1054 lambda!254683))))

(assert (=> d!1660708 (= (lemmaFlatMapPost!11 z!1054 lambda!254683 lt!2117574) lt!2117643)))

(declare-fun bs!1198451 () Bool)

(assert (= bs!1198451 d!1660708))

(declare-fun m!6197936 () Bool)

(assert (=> bs!1198451 m!6197936))

(declare-fun m!6197938 () Bool)

(assert (=> bs!1198451 m!6197938))

(assert (=> bs!1198451 m!6197820))

(declare-fun m!6197940 () Bool)

(assert (=> bs!1198451 m!6197940))

(assert (=> b!5132165 d!1660708))

(declare-fun bs!1198452 () Bool)

(declare-fun d!1660710 () Bool)

(assert (= bs!1198452 (and d!1660710 d!1660704)))

(declare-fun lambda!254744 () Int)

(assert (=> bs!1198452 (not (= lambda!254744 lambda!254736))))

(declare-fun exists!1674 (List!59649 Int) Bool)

(assert (=> d!1660710 (= (lostCause!1299 lt!2117574) (exists!1674 (exprs!4240 lt!2117574) lambda!254744))))

(declare-fun bs!1198453 () Bool)

(assert (= bs!1198453 d!1660710))

(declare-fun m!6197942 () Bool)

(assert (=> bs!1198453 m!6197942))

(assert (=> b!5132167 d!1660710))

(declare-fun d!1660712 () Bool)

(declare-fun lt!2117648 () Bool)

(assert (=> d!1660712 (= lt!2117648 (forall!13795 (toList!8341 z!1054) lambda!254684))))

(assert (=> d!1660712 (= lt!2117648 (choose!37903 z!1054 lambda!254684))))

(assert (=> d!1660712 (= (forall!13793 z!1054 lambda!254684) lt!2117648)))

(declare-fun bs!1198454 () Bool)

(assert (= bs!1198454 d!1660712))

(assert (=> bs!1198454 m!6197898))

(assert (=> bs!1198454 m!6197898))

(declare-fun m!6197944 () Bool)

(assert (=> bs!1198454 m!6197944))

(declare-fun m!6197946 () Bool)

(assert (=> bs!1198454 m!6197946))

(assert (=> b!5132158 d!1660712))

(declare-fun d!1660714 () Bool)

(declare-fun lt!2117649 () Bool)

(assert (=> d!1660714 (= lt!2117649 (exists!1671 (toList!8341 lt!2117571) lambda!254685))))

(assert (=> d!1660714 (= lt!2117649 (choose!37905 lt!2117571 lambda!254685))))

(assert (=> d!1660714 (= (exists!1670 lt!2117571 lambda!254685) lt!2117649)))

(declare-fun bs!1198455 () Bool)

(assert (= bs!1198455 d!1660714))

(assert (=> bs!1198455 m!6197830))

(assert (=> bs!1198455 m!6197830))

(declare-fun m!6197948 () Bool)

(assert (=> bs!1198455 m!6197948))

(declare-fun m!6197950 () Bool)

(assert (=> bs!1198455 m!6197950))

(assert (=> b!5132161 d!1660714))

(declare-fun bs!1198456 () Bool)

(declare-fun d!1660716 () Bool)

(assert (= bs!1198456 (and d!1660716 b!5132236)))

(declare-fun lambda!254749 () Int)

(assert (=> bs!1198456 (not (= lambda!254749 lambda!254726))))

(declare-fun bs!1198457 () Bool)

(assert (= bs!1198457 (and d!1660716 b!5132164)))

(assert (=> bs!1198457 (not (= lambda!254749 lambda!254684))))

(declare-fun bs!1198458 () Bool)

(assert (= bs!1198458 (and d!1660716 b!5132239)))

(assert (=> bs!1198458 (not (= lambda!254749 lambda!254733))))

(declare-fun bs!1198459 () Bool)

(assert (= bs!1198459 (and d!1660716 d!1660692)))

(assert (=> bs!1198459 (not (= lambda!254749 lambda!254725))))

(declare-fun bs!1198460 () Bool)

(assert (= bs!1198460 (and d!1660716 d!1660700)))

(assert (=> bs!1198460 (not (= lambda!254749 lambda!254731))))

(declare-fun bs!1198461 () Bool)

(assert (= bs!1198461 (and d!1660716 b!5132161)))

(assert (=> bs!1198461 (not (= lambda!254749 lambda!254685))))

(declare-fun bs!1198462 () Bool)

(assert (= bs!1198462 (and d!1660716 d!1660708)))

(assert (=> bs!1198462 (not (= lambda!254749 lambda!254739))))

(declare-fun bs!1198463 () Bool)

(assert (= bs!1198463 (and d!1660716 b!5132238)))

(assert (=> bs!1198463 (not (= lambda!254749 lambda!254732))))

(declare-fun bs!1198464 () Bool)

(assert (= bs!1198464 (and d!1660716 b!5132237)))

(assert (=> bs!1198464 (not (= lambda!254749 lambda!254727))))

(declare-fun bs!1198465 () Bool)

(assert (= bs!1198465 (and d!1660716 b!5132165)))

(assert (=> bs!1198465 (not (= lambda!254749 lambda!254686))))

(assert (=> d!1660716 true))

(assert (=> d!1660716 (< (dynLambda!23701 order!26869 lambda!254685) (dynLambda!23701 order!26869 lambda!254749))))

(assert (=> d!1660716 (= (exists!1671 lt!2117572 lambda!254685) (not (forall!13795 lt!2117572 lambda!254749)))))

(declare-fun bs!1198466 () Bool)

(assert (= bs!1198466 d!1660716))

(declare-fun m!6197952 () Bool)

(assert (=> bs!1198466 m!6197952))

(assert (=> b!5132161 d!1660716))

(declare-fun bs!1198467 () Bool)

(declare-fun d!1660718 () Bool)

(assert (= bs!1198467 (and d!1660718 b!5132236)))

(declare-fun lambda!254758 () Int)

(assert (=> bs!1198467 (not (= lambda!254758 lambda!254726))))

(declare-fun bs!1198468 () Bool)

(assert (= bs!1198468 (and d!1660718 b!5132164)))

(assert (=> bs!1198468 (not (= lambda!254758 lambda!254684))))

(declare-fun bs!1198469 () Bool)

(assert (= bs!1198469 (and d!1660718 d!1660716)))

(assert (=> bs!1198469 (= (= lambda!254684 lambda!254685) (= lambda!254758 lambda!254749))))

(declare-fun bs!1198470 () Bool)

(assert (= bs!1198470 (and d!1660718 b!5132239)))

(assert (=> bs!1198470 (not (= lambda!254758 lambda!254733))))

(declare-fun bs!1198471 () Bool)

(assert (= bs!1198471 (and d!1660718 d!1660692)))

(assert (=> bs!1198471 (not (= lambda!254758 lambda!254725))))

(declare-fun bs!1198472 () Bool)

(assert (= bs!1198472 (and d!1660718 d!1660700)))

(assert (=> bs!1198472 (not (= lambda!254758 lambda!254731))))

(declare-fun bs!1198473 () Bool)

(assert (= bs!1198473 (and d!1660718 b!5132161)))

(assert (=> bs!1198473 (not (= lambda!254758 lambda!254685))))

(declare-fun bs!1198474 () Bool)

(assert (= bs!1198474 (and d!1660718 d!1660708)))

(assert (=> bs!1198474 (not (= lambda!254758 lambda!254739))))

(declare-fun bs!1198475 () Bool)

(assert (= bs!1198475 (and d!1660718 b!5132238)))

(assert (=> bs!1198475 (not (= lambda!254758 lambda!254732))))

(declare-fun bs!1198476 () Bool)

(assert (= bs!1198476 (and d!1660718 b!5132237)))

(assert (=> bs!1198476 (not (= lambda!254758 lambda!254727))))

(declare-fun bs!1198477 () Bool)

(assert (= bs!1198477 (and d!1660718 b!5132165)))

(assert (=> bs!1198477 (not (= lambda!254758 lambda!254686))))

(assert (=> d!1660718 true))

(assert (=> d!1660718 (< (dynLambda!23701 order!26869 lambda!254684) (dynLambda!23701 order!26869 lambda!254758))))

(assert (=> d!1660718 (exists!1671 lt!2117572 lambda!254758)))

(declare-fun lt!2117664 () Unit!150815)

(declare-fun choose!37907 (List!59650 Int) Unit!150815)

(assert (=> d!1660718 (= lt!2117664 (choose!37907 lt!2117572 lambda!254684))))

(assert (=> d!1660718 (not (forall!13795 lt!2117572 lambda!254684))))

(assert (=> d!1660718 (= (lemmaNotForallThenExists!389 lt!2117572 lambda!254684) lt!2117664)))

(declare-fun bs!1198478 () Bool)

(assert (= bs!1198478 d!1660718))

(declare-fun m!6197954 () Bool)

(assert (=> bs!1198478 m!6197954))

(declare-fun m!6197956 () Bool)

(assert (=> bs!1198478 m!6197956))

(declare-fun m!6197958 () Bool)

(assert (=> bs!1198478 m!6197958))

(assert (=> b!5132161 d!1660718))

(declare-fun d!1660720 () Bool)

(declare-fun e!3201035 () Bool)

(assert (=> d!1660720 e!3201035))

(declare-fun res!2185861 () Bool)

(assert (=> d!1660720 (=> (not res!2185861) (not e!3201035))))

(declare-fun lt!2117667 () List!59650)

(declare-fun noDuplicate!1097 (List!59650) Bool)

(assert (=> d!1660720 (= res!2185861 (noDuplicate!1097 lt!2117667))))

(declare-fun choose!37908 ((Set Context!7480)) List!59650)

(assert (=> d!1660720 (= lt!2117667 (choose!37908 lt!2117571))))

(assert (=> d!1660720 (= (toList!8341 lt!2117571) lt!2117667)))

(declare-fun b!5132251 () Bool)

(declare-fun content!10574 (List!59650) (Set Context!7480))

(assert (=> b!5132251 (= e!3201035 (= (content!10574 lt!2117667) lt!2117571))))

(assert (= (and d!1660720 res!2185861) b!5132251))

(declare-fun m!6197960 () Bool)

(assert (=> d!1660720 m!6197960))

(declare-fun m!6197962 () Bool)

(assert (=> d!1660720 m!6197962))

(declare-fun m!6197964 () Bool)

(assert (=> b!5132251 m!6197964))

(assert (=> b!5132161 d!1660720))

(declare-fun d!1660722 () Bool)

(declare-fun e!3201038 () Bool)

(assert (=> d!1660722 e!3201038))

(declare-fun res!2185864 () Bool)

(assert (=> d!1660722 (=> (not res!2185864) (not e!3201038))))

(declare-fun lt!2117670 () Context!7480)

(assert (=> d!1660722 (= res!2185864 (dynLambda!23699 lambda!254686 lt!2117670))))

(assert (=> d!1660722 (= lt!2117670 (getWitness!805 (toList!8341 z!1054) lambda!254686))))

(assert (=> d!1660722 (exists!1670 z!1054 lambda!254686)))

(assert (=> d!1660722 (= (getWitness!804 z!1054 lambda!254686) lt!2117670)))

(declare-fun b!5132254 () Bool)

(assert (=> b!5132254 (= e!3201038 (set.member lt!2117670 z!1054))))

(assert (= (and d!1660722 res!2185864) b!5132254))

(declare-fun b_lambda!199865 () Bool)

(assert (=> (not b_lambda!199865) (not d!1660722)))

(declare-fun m!6197966 () Bool)

(assert (=> d!1660722 m!6197966))

(assert (=> d!1660722 m!6197898))

(assert (=> d!1660722 m!6197898))

(declare-fun m!6197968 () Bool)

(assert (=> d!1660722 m!6197968))

(assert (=> d!1660722 m!6197836))

(declare-fun m!6197970 () Bool)

(assert (=> b!5132254 m!6197970))

(assert (=> b!5132166 d!1660722))

(declare-fun condSetEmpty!31173 () Bool)

(assert (=> setNonEmpty!31167 (= condSetEmpty!31173 (= setRest!31167 (as set.empty (Set Context!7480))))))

(declare-fun setRes!31173 () Bool)

(assert (=> setNonEmpty!31167 (= tp!1431734 setRes!31173)))

(declare-fun setIsEmpty!31173 () Bool)

(assert (=> setIsEmpty!31173 setRes!31173))

(declare-fun setElem!31173 () Context!7480)

(declare-fun e!3201041 () Bool)

(declare-fun tp!1431747 () Bool)

(declare-fun setNonEmpty!31173 () Bool)

(assert (=> setNonEmpty!31173 (= setRes!31173 (and tp!1431747 (inv!79072 setElem!31173) e!3201041))))

(declare-fun setRest!31173 () (Set Context!7480))

(assert (=> setNonEmpty!31173 (= setRest!31167 (set.union (set.insert setElem!31173 (as set.empty (Set Context!7480))) setRest!31173))))

(declare-fun b!5132259 () Bool)

(declare-fun tp!1431746 () Bool)

(assert (=> b!5132259 (= e!3201041 tp!1431746)))

(assert (= (and setNonEmpty!31167 condSetEmpty!31173) setIsEmpty!31173))

(assert (= (and setNonEmpty!31167 (not condSetEmpty!31173)) setNonEmpty!31173))

(assert (= setNonEmpty!31173 b!5132259))

(declare-fun m!6197972 () Bool)

(assert (=> setNonEmpty!31173 m!6197972))

(declare-fun b!5132266 () Bool)

(declare-fun e!3201045 () Bool)

(declare-fun tp!1431752 () Bool)

(declare-fun tp!1431753 () Bool)

(assert (=> b!5132266 (= e!3201045 (and tp!1431752 tp!1431753))))

(assert (=> b!5132160 (= tp!1431735 e!3201045)))

(assert (= (and b!5132160 (is-Cons!59525 (exprs!4240 setElem!31167))) b!5132266))

(declare-fun b_lambda!199867 () Bool)

(assert (= b_lambda!199863 (or b!5132161 b_lambda!199867)))

(declare-fun bs!1198479 () Bool)

(declare-fun d!1660724 () Bool)

(assert (= bs!1198479 (and d!1660724 b!5132161)))

(assert (=> bs!1198479 (= (dynLambda!23699 lambda!254685 (h!65974 lt!2117572)) (not (lostCause!1299 (h!65974 lt!2117572))))))

(declare-fun m!6197974 () Bool)

(assert (=> bs!1198479 m!6197974))

(assert (=> b!5132226 d!1660724))

(declare-fun b_lambda!199869 () Bool)

(assert (= b_lambda!199865 (or b!5132165 b_lambda!199869)))

(declare-fun bs!1198480 () Bool)

(declare-fun d!1660726 () Bool)

(assert (= bs!1198480 (and d!1660726 b!5132165)))

(declare-fun derivationStepZipperUp!65 (Context!7480 C!28978) (Set Context!7480))

(assert (=> bs!1198480 (= (dynLambda!23699 lambda!254686 lt!2117670) (set.member lt!2117574 (derivationStepZipperUp!65 lt!2117670 a!1233)))))

(declare-fun m!6197976 () Bool)

(assert (=> bs!1198480 m!6197976))

(declare-fun m!6197978 () Bool)

(assert (=> bs!1198480 m!6197978))

(assert (=> d!1660722 d!1660726))

(declare-fun b_lambda!199871 () Bool)

(assert (= b_lambda!199861 (or b!5132161 b_lambda!199871)))

(declare-fun bs!1198482 () Bool)

(declare-fun d!1660728 () Bool)

(assert (= bs!1198482 (and d!1660728 b!5132161)))

(assert (=> bs!1198482 (= (dynLambda!23699 lambda!254685 lt!2117602) (not (lostCause!1299 lt!2117602)))))

(declare-fun m!6197980 () Bool)

(assert (=> bs!1198482 m!6197980))

(assert (=> d!1660690 d!1660728))

(push 1)

(assert (not d!1660706))

(assert (not b!5132230))

(assert (not bm!357219))

(assert (not bs!1198480))

(assert (not d!1660700))

(assert (not d!1660710))

(assert (not d!1660720))

(assert (not d!1660714))

(assert (not d!1660718))

(assert (not b!5132266))

(assert (not d!1660722))

(assert (not b!5132259))

(assert (not b!5132238))

(assert (not bs!1198479))

(assert (not b!5132237))

(assert (not b!5132228))

(assert (not d!1660708))

(assert (not b!5132231))

(assert (not d!1660688))

(assert (not b_lambda!199869))

(assert (not b_lambda!199867))

(assert (not bm!357220))

(assert (not setNonEmpty!31173))

(assert (not d!1660692))

(assert (not bm!357221))

(assert (not b!5132239))

(assert (not d!1660698))

(assert (not d!1660704))

(assert (not b_lambda!199871))

(assert (not bm!357222))

(assert (not bs!1198482))

(assert tp_is_empty!37885)

(assert (not b!5132236))

(assert (not b!5132251))

(assert (not d!1660696))

(assert (not d!1660690))

(assert (not d!1660716))

(assert (not d!1660712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

