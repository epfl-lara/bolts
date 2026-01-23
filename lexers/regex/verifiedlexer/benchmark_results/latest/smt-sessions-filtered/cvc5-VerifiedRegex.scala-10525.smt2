; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542546 () Bool)

(assert start!542546)

(declare-fun b!5131334 () Bool)

(assert (=> b!5131334 true))

(declare-fun b!5131335 () Bool)

(declare-fun e!3200378 () Bool)

(declare-fun tp!1431429 () Bool)

(assert (=> b!5131335 (= e!3200378 tp!1431429)))

(declare-fun lambda!254081 () Int)

(declare-fun e!3200379 () Bool)

(declare-datatypes ((C!28946 0))(
  ( (C!28947 (val!24125 Int)) )
))
(declare-fun a!1233 () C!28946)

(declare-datatypes ((Regex!14340 0))(
  ( (ElementMatch!14340 (c!882740 C!28946)) (Concat!23185 (regOne!29192 Regex!14340) (regTwo!29192 Regex!14340)) (EmptyExpr!14340) (Star!14340 (reg!14669 Regex!14340)) (EmptyLang!14340) (Union!14340 (regOne!29193 Regex!14340) (regTwo!29193 Regex!14340)) )
))
(declare-datatypes ((List!59611 0))(
  ( (Nil!59487) (Cons!59487 (h!65935 Regex!14340) (t!372638 List!59611)) )
))
(declare-datatypes ((Context!7448 0))(
  ( (Context!7449 (exprs!4224 List!59611)) )
))
(declare-fun z!1054 () (Set Context!7448))

(declare-fun derivationStepZipper!895 ((Set Context!7448) C!28946) (Set Context!7448))

(declare-fun flatMap!391 ((Set Context!7448) Int) (Set Context!7448))

(assert (=> b!5131334 (= e!3200379 (not (= (derivationStepZipper!895 z!1054 a!1233) (flatMap!391 z!1054 lambda!254081))))))

(declare-fun res!2185409 () Bool)

(assert (=> start!542546 (=> (not res!2185409) (not e!3200379))))

(declare-fun lostCauseZipper!1184 ((Set Context!7448)) Bool)

(assert (=> start!542546 (= res!2185409 (lostCauseZipper!1184 z!1054))))

(assert (=> start!542546 e!3200379))

(declare-fun condSetEmpty!31075 () Bool)

(assert (=> start!542546 (= condSetEmpty!31075 (= z!1054 (as set.empty (Set Context!7448))))))

(declare-fun setRes!31075 () Bool)

(assert (=> start!542546 setRes!31075))

(declare-fun tp_is_empty!37853 () Bool)

(assert (=> start!542546 tp_is_empty!37853))

(declare-fun setNonEmpty!31075 () Bool)

(declare-fun tp!1431428 () Bool)

(declare-fun setElem!31075 () Context!7448)

(declare-fun inv!79032 (Context!7448) Bool)

(assert (=> setNonEmpty!31075 (= setRes!31075 (and tp!1431428 (inv!79032 setElem!31075) e!3200378))))

(declare-fun setRest!31075 () (Set Context!7448))

(assert (=> setNonEmpty!31075 (= z!1054 (set.union (set.insert setElem!31075 (as set.empty (Set Context!7448))) setRest!31075))))

(declare-fun setIsEmpty!31075 () Bool)

(assert (=> setIsEmpty!31075 setRes!31075))

(assert (= (and start!542546 res!2185409) b!5131334))

(assert (= (and start!542546 condSetEmpty!31075) setIsEmpty!31075))

(assert (= (and start!542546 (not condSetEmpty!31075)) setNonEmpty!31075))

(assert (= setNonEmpty!31075 b!5131335))

(declare-fun m!6196630 () Bool)

(assert (=> b!5131334 m!6196630))

(declare-fun m!6196632 () Bool)

(assert (=> b!5131334 m!6196632))

(declare-fun m!6196634 () Bool)

(assert (=> start!542546 m!6196634))

(declare-fun m!6196636 () Bool)

(assert (=> setNonEmpty!31075 m!6196636))

(push 1)

(assert (not start!542546))

(assert tp_is_empty!37853)

(assert (not b!5131334))

(assert (not b!5131335))

(assert (not setNonEmpty!31075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1197545 () Bool)

(declare-fun b!5131350 () Bool)

(declare-fun d!1660292 () Bool)

(assert (= bs!1197545 (and b!5131350 d!1660292)))

(declare-fun lambda!254098 () Int)

(declare-fun lambda!254097 () Int)

(assert (=> bs!1197545 (not (= lambda!254098 lambda!254097))))

(declare-fun bs!1197546 () Bool)

(declare-fun b!5131351 () Bool)

(assert (= bs!1197546 (and b!5131351 d!1660292)))

(declare-fun lambda!254099 () Int)

(assert (=> bs!1197546 (not (= lambda!254099 lambda!254097))))

(declare-fun bs!1197547 () Bool)

(assert (= bs!1197547 (and b!5131351 b!5131350)))

(assert (=> bs!1197547 (= lambda!254099 lambda!254098)))

(declare-datatypes ((Unit!150757 0))(
  ( (Unit!150758) )
))
(declare-fun e!3200392 () Unit!150757)

(declare-fun Unit!150759 () Unit!150757)

(assert (=> b!5131350 (= e!3200392 Unit!150759)))

(declare-datatypes ((List!59613 0))(
  ( (Nil!59489) (Cons!59489 (h!65937 Context!7448) (t!372640 List!59613)) )
))
(declare-fun lt!2116927 () List!59613)

(declare-fun call!357135 () List!59613)

(assert (=> b!5131350 (= lt!2116927 call!357135)))

(declare-fun lt!2116925 () Unit!150757)

(declare-fun lemmaNotForallThenExists!378 (List!59613 Int) Unit!150757)

(assert (=> b!5131350 (= lt!2116925 (lemmaNotForallThenExists!378 lt!2116927 lambda!254097))))

(declare-fun call!357134 () Bool)

(assert (=> b!5131350 call!357134))

(declare-fun lt!2116928 () Unit!150757)

(assert (=> b!5131350 (= lt!2116928 lt!2116925)))

(declare-fun bm!357130 () Bool)

(declare-fun lt!2116930 () List!59613)

(declare-fun c!882752 () Bool)

(declare-fun exists!1647 (List!59613 Int) Bool)

(assert (=> bm!357130 (= call!357134 (exists!1647 (ite c!882752 lt!2116927 lt!2116930) (ite c!882752 lambda!254098 lambda!254099)))))

(declare-fun bm!357129 () Bool)

(declare-fun toList!8330 ((Set Context!7448)) List!59613)

(assert (=> bm!357129 (= call!357135 (toList!8330 z!1054))))

(declare-fun lt!2116926 () Bool)

(declare-datatypes ((List!59614 0))(
  ( (Nil!59490) (Cons!59490 (h!65938 C!28946) (t!372641 List!59614)) )
))
(declare-datatypes ((Option!14730 0))(
  ( (None!14729) (Some!14729 (v!50756 List!59614)) )
))
(declare-fun isEmpty!31991 (Option!14730) Bool)

(declare-fun getLanguageWitness!865 ((Set Context!7448)) Option!14730)

(assert (=> d!1660292 (= lt!2116926 (isEmpty!31991 (getLanguageWitness!865 z!1054)))))

(declare-fun forall!13762 ((Set Context!7448) Int) Bool)

(assert (=> d!1660292 (= lt!2116926 (forall!13762 z!1054 lambda!254097))))

(declare-fun lt!2116931 () Unit!150757)

(assert (=> d!1660292 (= lt!2116931 e!3200392)))

(assert (=> d!1660292 (= c!882752 (not (forall!13762 z!1054 lambda!254097)))))

(assert (=> d!1660292 (= (lostCauseZipper!1184 z!1054) lt!2116926)))

(declare-fun Unit!150760 () Unit!150757)

(assert (=> b!5131351 (= e!3200392 Unit!150760)))

(assert (=> b!5131351 (= lt!2116930 call!357135)))

(declare-fun lt!2116929 () Unit!150757)

(declare-fun lemmaForallThenNotExists!353 (List!59613 Int) Unit!150757)

(assert (=> b!5131351 (= lt!2116929 (lemmaForallThenNotExists!353 lt!2116930 lambda!254097))))

(assert (=> b!5131351 (not call!357134)))

(declare-fun lt!2116932 () Unit!150757)

(assert (=> b!5131351 (= lt!2116932 lt!2116929)))

(assert (= (and d!1660292 c!882752) b!5131350))

(assert (= (and d!1660292 (not c!882752)) b!5131351))

(assert (= (or b!5131350 b!5131351) bm!357129))

(assert (= (or b!5131350 b!5131351) bm!357130))

(declare-fun m!6196646 () Bool)

(assert (=> bm!357130 m!6196646))

(declare-fun m!6196648 () Bool)

(assert (=> d!1660292 m!6196648))

(assert (=> d!1660292 m!6196648))

(declare-fun m!6196650 () Bool)

(assert (=> d!1660292 m!6196650))

(declare-fun m!6196652 () Bool)

(assert (=> d!1660292 m!6196652))

(assert (=> d!1660292 m!6196652))

(declare-fun m!6196654 () Bool)

(assert (=> b!5131350 m!6196654))

(declare-fun m!6196656 () Bool)

(assert (=> b!5131351 m!6196656))

(declare-fun m!6196658 () Bool)

(assert (=> bm!357129 m!6196658))

(assert (=> start!542546 d!1660292))

(declare-fun bs!1197548 () Bool)

(declare-fun d!1660296 () Bool)

(assert (= bs!1197548 (and d!1660296 b!5131334)))

(declare-fun lambda!254105 () Int)

(assert (=> bs!1197548 (= lambda!254105 lambda!254081)))

(assert (=> d!1660296 true))

(assert (=> d!1660296 (= (derivationStepZipper!895 z!1054 a!1233) (flatMap!391 z!1054 lambda!254105))))

(declare-fun bs!1197549 () Bool)

(assert (= bs!1197549 d!1660296))

(declare-fun m!6196662 () Bool)

(assert (=> bs!1197549 m!6196662))

(assert (=> b!5131334 d!1660296))

(declare-fun d!1660298 () Bool)

(declare-fun choose!37872 ((Set Context!7448) Int) (Set Context!7448))

(assert (=> d!1660298 (= (flatMap!391 z!1054 lambda!254081) (choose!37872 z!1054 lambda!254081))))

(declare-fun bs!1197551 () Bool)

(assert (= bs!1197551 d!1660298))

(declare-fun m!6196664 () Bool)

(assert (=> bs!1197551 m!6196664))

(assert (=> b!5131334 d!1660298))

(declare-fun d!1660302 () Bool)

(declare-fun lambda!254108 () Int)

(declare-fun forall!13763 (List!59611 Int) Bool)

(assert (=> d!1660302 (= (inv!79032 setElem!31075) (forall!13763 (exprs!4224 setElem!31075) lambda!254108))))

(declare-fun bs!1197552 () Bool)

(assert (= bs!1197552 d!1660302))

(declare-fun m!6196666 () Bool)

(assert (=> bs!1197552 m!6196666))

(assert (=> setNonEmpty!31075 d!1660302))

(declare-fun condSetEmpty!31081 () Bool)

(assert (=> setNonEmpty!31075 (= condSetEmpty!31081 (= setRest!31075 (as set.empty (Set Context!7448))))))

(declare-fun setRes!31081 () Bool)

(assert (=> setNonEmpty!31075 (= tp!1431428 setRes!31081)))

(declare-fun setIsEmpty!31081 () Bool)

(assert (=> setIsEmpty!31081 setRes!31081))

(declare-fun setNonEmpty!31081 () Bool)

(declare-fun setElem!31081 () Context!7448)

(declare-fun e!3200395 () Bool)

(declare-fun tp!1431440 () Bool)

(assert (=> setNonEmpty!31081 (= setRes!31081 (and tp!1431440 (inv!79032 setElem!31081) e!3200395))))

(declare-fun setRest!31081 () (Set Context!7448))

(assert (=> setNonEmpty!31081 (= setRest!31075 (set.union (set.insert setElem!31081 (as set.empty (Set Context!7448))) setRest!31081))))

(declare-fun b!5131356 () Bool)

(declare-fun tp!1431441 () Bool)

(assert (=> b!5131356 (= e!3200395 tp!1431441)))

(assert (= (and setNonEmpty!31075 condSetEmpty!31081) setIsEmpty!31081))

(assert (= (and setNonEmpty!31075 (not condSetEmpty!31081)) setNonEmpty!31081))

(assert (= setNonEmpty!31081 b!5131356))

(declare-fun m!6196668 () Bool)

(assert (=> setNonEmpty!31081 m!6196668))

(declare-fun b!5131361 () Bool)

(declare-fun e!3200398 () Bool)

(declare-fun tp!1431446 () Bool)

(declare-fun tp!1431447 () Bool)

(assert (=> b!5131361 (= e!3200398 (and tp!1431446 tp!1431447))))

(assert (=> b!5131335 (= tp!1431429 e!3200398)))

(assert (= (and b!5131335 (is-Cons!59487 (exprs!4224 setElem!31075))) b!5131361))

(push 1)

(assert (not bm!357129))

(assert (not d!1660302))

(assert tp_is_empty!37853)

(assert (not d!1660292))

(assert (not b!5131361))

(assert (not b!5131356))

(assert (not b!5131351))

(assert (not d!1660296))

(assert (not b!5131350))

(assert (not d!1660298))

(assert (not setNonEmpty!31081))

(assert (not bm!357130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

