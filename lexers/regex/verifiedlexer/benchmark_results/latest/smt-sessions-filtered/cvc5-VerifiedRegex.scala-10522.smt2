; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542326 () Bool)

(assert start!542326)

(declare-fun b!5130461 () Bool)

(assert (=> b!5130461 true))

(declare-fun bs!1195683 () Bool)

(declare-fun b!5130453 () Bool)

(declare-fun b!5130448 () Bool)

(assert (= bs!1195683 (and b!5130453 b!5130448)))

(declare-fun lambda!253693 () Int)

(declare-fun lambda!253692 () Int)

(assert (=> bs!1195683 (not (= lambda!253693 lambda!253692))))

(declare-fun bs!1195684 () Bool)

(declare-fun b!5130454 () Bool)

(assert (= bs!1195684 (and b!5130454 b!5130448)))

(declare-fun lambda!253694 () Int)

(assert (=> bs!1195684 (not (= lambda!253694 lambda!253692))))

(declare-fun bs!1195685 () Bool)

(assert (= bs!1195685 (and b!5130454 b!5130453)))

(assert (=> bs!1195685 (not (= lambda!253694 lambda!253693))))

(assert (=> b!5130454 true))

(assert (=> b!5130454 true))

(declare-fun e!3199762 () Bool)

(declare-fun e!3199767 () Bool)

(assert (=> b!5130448 (= e!3199762 e!3199767)))

(declare-fun res!2184950 () Bool)

(assert (=> b!5130448 (=> (not res!2184950) (not e!3199767))))

(declare-fun lt!2116409 () Bool)

(declare-datatypes ((C!28934 0))(
  ( (C!28935 (val!24119 Int)) )
))
(declare-datatypes ((Regex!14334 0))(
  ( (ElementMatch!14334 (c!882480 C!28934)) (Concat!23179 (regOne!29180 Regex!14334) (regTwo!29180 Regex!14334)) (EmptyExpr!14334) (Star!14334 (reg!14663 Regex!14334)) (EmptyLang!14334) (Union!14334 (regOne!29181 Regex!14334) (regTwo!29181 Regex!14334)) )
))
(declare-datatypes ((List!59595 0))(
  ( (Nil!59471) (Cons!59471 (h!65919 Regex!14334) (t!372622 List!59595)) )
))
(declare-datatypes ((Context!7436 0))(
  ( (Context!7437 (exprs!4218 List!59595)) )
))
(declare-fun lt!2116405 () (Set Context!7436))

(declare-fun forall!13749 ((Set Context!7436) Int) Bool)

(assert (=> b!5130448 (= res!2184950 (= lt!2116409 (forall!13749 lt!2116405 lambda!253692)))))

(declare-fun lostCauseZipper!1178 ((Set Context!7436)) Bool)

(assert (=> b!5130448 (= lt!2116409 (lostCauseZipper!1178 lt!2116405))))

(declare-fun b!5130449 () Bool)

(declare-fun res!2184953 () Bool)

(assert (=> b!5130449 (=> (not res!2184953) (not e!3199767))))

(assert (=> b!5130449 (= res!2184953 (not (forall!13749 lt!2116405 lambda!253692)))))

(declare-fun b!5130450 () Bool)

(declare-fun res!2184959 () Bool)

(assert (=> b!5130450 (=> (not res!2184959) (not e!3199767))))

(declare-fun z!1054 () (Set Context!7436))

(assert (=> b!5130450 (= res!2184959 (forall!13749 z!1054 lambda!253692))))

(declare-fun res!2184954 () Bool)

(declare-fun e!3199765 () Bool)

(assert (=> start!542326 (=> (not res!2184954) (not e!3199765))))

(assert (=> start!542326 (= res!2184954 (lostCauseZipper!1178 z!1054))))

(assert (=> start!542326 e!3199765))

(declare-fun condSetEmpty!31037 () Bool)

(assert (=> start!542326 (= condSetEmpty!31037 (= z!1054 (as set.empty (Set Context!7436))))))

(declare-fun setRes!31037 () Bool)

(assert (=> start!542326 setRes!31037))

(declare-fun tp_is_empty!37841 () Bool)

(assert (=> start!542326 tp_is_empty!37841))

(declare-fun tp!1431271 () Bool)

(declare-fun setNonEmpty!31037 () Bool)

(declare-fun e!3199764 () Bool)

(declare-fun setElem!31037 () Context!7436)

(declare-fun inv!79017 (Context!7436) Bool)

(assert (=> setNonEmpty!31037 (= setRes!31037 (and tp!1431271 (inv!79017 setElem!31037) e!3199764))))

(declare-fun setRest!31037 () (Set Context!7436))

(assert (=> setNonEmpty!31037 (= z!1054 (set.union (set.insert setElem!31037 (as set.empty (Set Context!7436))) setRest!31037))))

(declare-fun b!5130451 () Bool)

(declare-fun tp!1431270 () Bool)

(assert (=> b!5130451 (= e!3199764 tp!1431270)))

(declare-fun b!5130452 () Bool)

(declare-fun e!3199770 () Bool)

(declare-fun e!3199763 () Bool)

(assert (=> b!5130452 (= e!3199770 e!3199763)))

(declare-fun res!2184955 () Bool)

(assert (=> b!5130452 (=> res!2184955 e!3199763)))

(declare-fun lt!2116410 () Context!7436)

(assert (=> b!5130452 (= res!2184955 (not (set.member lt!2116410 lt!2116405)))))

(declare-datatypes ((List!59596 0))(
  ( (Nil!59472) (Cons!59472 (h!65920 Context!7436) (t!372623 List!59596)) )
))
(declare-fun lt!2116412 () List!59596)

(declare-fun getWitness!784 (List!59596 Int) Context!7436)

(assert (=> b!5130452 (= lt!2116410 (getWitness!784 lt!2116412 lambda!253693))))

(assert (=> b!5130453 (= e!3199767 (not e!3199770))))

(declare-fun res!2184958 () Bool)

(assert (=> b!5130453 (=> res!2184958 e!3199770)))

(declare-fun exists!1632 ((Set Context!7436) Int) Bool)

(assert (=> b!5130453 (= res!2184958 (not (exists!1632 lt!2116405 lambda!253693)))))

(declare-fun exists!1633 (List!59596 Int) Bool)

(assert (=> b!5130453 (exists!1633 lt!2116412 lambda!253693)))

(declare-datatypes ((Unit!150716 0))(
  ( (Unit!150717) )
))
(declare-fun lt!2116411 () Unit!150716)

(declare-fun lemmaNotForallThenExists!372 (List!59596 Int) Unit!150716)

(assert (=> b!5130453 (= lt!2116411 (lemmaNotForallThenExists!372 lt!2116412 lambda!253692))))

(declare-fun toList!8324 ((Set Context!7436)) List!59596)

(assert (=> b!5130453 (= lt!2116412 (toList!8324 lt!2116405))))

(declare-fun e!3199766 () Bool)

(assert (=> b!5130454 (= e!3199763 e!3199766)))

(declare-fun res!2184947 () Bool)

(assert (=> b!5130454 (=> res!2184947 e!3199766)))

(assert (=> b!5130454 (= res!2184947 (not (exists!1632 z!1054 lambda!253694)))))

(assert (=> b!5130454 (exists!1632 z!1054 lambda!253694)))

(declare-fun lt!2116408 () Unit!150716)

(declare-fun lambda!253691 () Int)

(declare-fun lemmaFlatMapPost!3 ((Set Context!7436) Int Context!7436) Unit!150716)

(assert (=> b!5130454 (= lt!2116408 (lemmaFlatMapPost!3 z!1054 lambda!253691 lt!2116410))))

(declare-fun setIsEmpty!31037 () Bool)

(assert (=> setIsEmpty!31037 setRes!31037))

(declare-fun b!5130455 () Bool)

(declare-fun res!2184952 () Bool)

(assert (=> b!5130455 (=> (not res!2184952) (not e!3199767))))

(assert (=> b!5130455 (= res!2184952 (not lt!2116409))))

(declare-fun b!5130456 () Bool)

(declare-fun e!3199769 () Bool)

(declare-fun e!3199768 () Bool)

(assert (=> b!5130456 (= e!3199769 e!3199768)))

(declare-fun res!2184956 () Bool)

(assert (=> b!5130456 (=> (not res!2184956) (not e!3199768))))

(declare-fun lt!2116407 () List!59596)

(declare-fun forall!13750 (List!59596 Int) Bool)

(assert (=> b!5130456 (= res!2184956 (forall!13750 lt!2116407 lambda!253692))))

(assert (=> b!5130456 (= lt!2116407 (toList!8324 z!1054))))

(declare-fun b!5130457 () Bool)

(assert (=> b!5130457 (= e!3199766 e!3199769)))

(declare-fun res!2184948 () Bool)

(assert (=> b!5130457 (=> res!2184948 e!3199769)))

(declare-fun lt!2116406 () Context!7436)

(assert (=> b!5130457 (= res!2184948 (not (set.member lt!2116406 z!1054)))))

(declare-fun getWitness!785 ((Set Context!7436) Int) Context!7436)

(assert (=> b!5130457 (= lt!2116406 (getWitness!785 z!1054 lambda!253694))))

(declare-fun b!5130458 () Bool)

(declare-fun res!2184957 () Bool)

(assert (=> b!5130458 (=> res!2184957 e!3199763)))

(declare-fun lostCause!1287 (Context!7436) Bool)

(assert (=> b!5130458 (= res!2184957 (lostCause!1287 lt!2116410))))

(declare-fun b!5130459 () Bool)

(declare-fun contains!19633 (List!59596 Context!7436) Bool)

(assert (=> b!5130459 (= e!3199768 (contains!19633 lt!2116407 lt!2116406))))

(declare-fun b!5130460 () Bool)

(declare-fun res!2184949 () Bool)

(assert (=> b!5130460 (=> res!2184949 e!3199769)))

(declare-fun a!1233 () C!28934)

(declare-fun derivationStepZipperUp!59 (Context!7436 C!28934) (Set Context!7436))

(assert (=> b!5130460 (= res!2184949 (not (set.member lt!2116410 (derivationStepZipperUp!59 lt!2116406 a!1233))))))

(assert (=> b!5130461 (= e!3199765 e!3199762)))

(declare-fun res!2184951 () Bool)

(assert (=> b!5130461 (=> (not res!2184951) (not e!3199762))))

(declare-fun flatMap!385 ((Set Context!7436) Int) (Set Context!7436))

(assert (=> b!5130461 (= res!2184951 (= lt!2116405 (flatMap!385 z!1054 lambda!253691)))))

(declare-fun derivationStepZipper!889 ((Set Context!7436) C!28934) (Set Context!7436))

(assert (=> b!5130461 (= lt!2116405 (derivationStepZipper!889 z!1054 a!1233))))

(assert (= (and start!542326 res!2184954) b!5130461))

(assert (= (and b!5130461 res!2184951) b!5130448))

(assert (= (and b!5130448 res!2184950) b!5130450))

(assert (= (and b!5130450 res!2184959) b!5130455))

(assert (= (and b!5130455 res!2184952) b!5130449))

(assert (= (and b!5130449 res!2184953) b!5130453))

(assert (= (and b!5130453 (not res!2184958)) b!5130452))

(assert (= (and b!5130452 (not res!2184955)) b!5130458))

(assert (= (and b!5130458 (not res!2184957)) b!5130454))

(assert (= (and b!5130454 (not res!2184947)) b!5130457))

(assert (= (and b!5130457 (not res!2184948)) b!5130460))

(assert (= (and b!5130460 (not res!2184949)) b!5130456))

(assert (= (and b!5130456 res!2184956) b!5130459))

(assert (= (and start!542326 condSetEmpty!31037) setIsEmpty!31037))

(assert (= (and start!542326 (not condSetEmpty!31037)) setNonEmpty!31037))

(assert (= setNonEmpty!31037 b!5130451))

(declare-fun m!6195186 () Bool)

(assert (=> b!5130454 m!6195186))

(assert (=> b!5130454 m!6195186))

(declare-fun m!6195188 () Bool)

(assert (=> b!5130454 m!6195188))

(declare-fun m!6195190 () Bool)

(assert (=> b!5130457 m!6195190))

(declare-fun m!6195192 () Bool)

(assert (=> b!5130457 m!6195192))

(declare-fun m!6195194 () Bool)

(assert (=> b!5130449 m!6195194))

(declare-fun m!6195196 () Bool)

(assert (=> b!5130450 m!6195196))

(declare-fun m!6195198 () Bool)

(assert (=> b!5130461 m!6195198))

(declare-fun m!6195200 () Bool)

(assert (=> b!5130461 m!6195200))

(declare-fun m!6195202 () Bool)

(assert (=> b!5130458 m!6195202))

(declare-fun m!6195204 () Bool)

(assert (=> b!5130459 m!6195204))

(declare-fun m!6195206 () Bool)

(assert (=> start!542326 m!6195206))

(declare-fun m!6195208 () Bool)

(assert (=> b!5130456 m!6195208))

(declare-fun m!6195210 () Bool)

(assert (=> b!5130456 m!6195210))

(declare-fun m!6195212 () Bool)

(assert (=> b!5130452 m!6195212))

(declare-fun m!6195214 () Bool)

(assert (=> b!5130452 m!6195214))

(assert (=> b!5130448 m!6195194))

(declare-fun m!6195216 () Bool)

(assert (=> b!5130448 m!6195216))

(declare-fun m!6195218 () Bool)

(assert (=> setNonEmpty!31037 m!6195218))

(declare-fun m!6195220 () Bool)

(assert (=> b!5130453 m!6195220))

(declare-fun m!6195222 () Bool)

(assert (=> b!5130453 m!6195222))

(declare-fun m!6195224 () Bool)

(assert (=> b!5130453 m!6195224))

(declare-fun m!6195226 () Bool)

(assert (=> b!5130453 m!6195226))

(declare-fun m!6195228 () Bool)

(assert (=> b!5130460 m!6195228))

(declare-fun m!6195230 () Bool)

(assert (=> b!5130460 m!6195230))

(push 1)

(assert (not b!5130460))

(assert (not setNonEmpty!31037))

(assert tp_is_empty!37841)

(assert (not b!5130461))

(assert (not start!542326))

(assert (not b!5130456))

(assert (not b!5130448))

(assert (not b!5130451))

(assert (not b!5130457))

(assert (not b!5130458))

(assert (not b!5130450))

(assert (not b!5130449))

(assert (not b!5130452))

(assert (not b!5130459))

(assert (not b!5130453))

(assert (not b!5130454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1659745 () Bool)

(declare-fun lt!2116439 () Bool)

(assert (=> d!1659745 (= lt!2116439 (exists!1633 (toList!8324 z!1054) lambda!253694))))

(declare-fun choose!37844 ((Set Context!7436) Int) Bool)

(assert (=> d!1659745 (= lt!2116439 (choose!37844 z!1054 lambda!253694))))

(assert (=> d!1659745 (= (exists!1632 z!1054 lambda!253694) lt!2116439)))

(declare-fun bs!1195689 () Bool)

(assert (= bs!1195689 d!1659745))

(assert (=> bs!1195689 m!6195210))

(assert (=> bs!1195689 m!6195210))

(declare-fun m!6195278 () Bool)

(assert (=> bs!1195689 m!6195278))

(declare-fun m!6195280 () Bool)

(assert (=> bs!1195689 m!6195280))

(assert (=> b!5130454 d!1659745))

(declare-fun bs!1195690 () Bool)

(declare-fun d!1659747 () Bool)

(assert (= bs!1195690 (and d!1659747 b!5130448)))

(declare-fun lambda!253725 () Int)

(assert (=> bs!1195690 (not (= lambda!253725 lambda!253692))))

(declare-fun bs!1195691 () Bool)

(assert (= bs!1195691 (and d!1659747 b!5130453)))

(assert (=> bs!1195691 (not (= lambda!253725 lambda!253693))))

(declare-fun bs!1195692 () Bool)

(assert (= bs!1195692 (and d!1659747 b!5130454)))

(assert (=> bs!1195692 (not (= lambda!253725 lambda!253694))))

(assert (=> d!1659747 true))

(assert (=> d!1659747 true))

(declare-fun order!26837 () Int)

(declare-fun order!26835 () Int)

(declare-fun dynLambda!23672 (Int Int) Int)

(declare-fun dynLambda!23673 (Int Int) Int)

(assert (=> d!1659747 (< (dynLambda!23672 order!26835 lambda!253691) (dynLambda!23673 order!26837 lambda!253725))))

(assert (=> d!1659747 (exists!1632 z!1054 lambda!253725)))

(declare-fun lt!2116442 () Unit!150716)

(declare-fun choose!37845 ((Set Context!7436) Int Context!7436) Unit!150716)

(assert (=> d!1659747 (= lt!2116442 (choose!37845 z!1054 lambda!253691 lt!2116410))))

(assert (=> d!1659747 (set.member lt!2116410 (flatMap!385 z!1054 lambda!253691))))

(assert (=> d!1659747 (= (lemmaFlatMapPost!3 z!1054 lambda!253691 lt!2116410) lt!2116442)))

(declare-fun bs!1195693 () Bool)

(assert (= bs!1195693 d!1659747))

(declare-fun m!6195282 () Bool)

(assert (=> bs!1195693 m!6195282))

(declare-fun m!6195284 () Bool)

(assert (=> bs!1195693 m!6195284))

(assert (=> bs!1195693 m!6195198))

(declare-fun m!6195286 () Bool)

(assert (=> bs!1195693 m!6195286))

(assert (=> b!5130454 d!1659747))

(declare-fun bs!1195694 () Bool)

(declare-fun d!1659749 () Bool)

(assert (= bs!1195694 (and d!1659749 b!5130448)))

(declare-fun lambda!253738 () Int)

(assert (=> bs!1195694 (= lambda!253738 lambda!253692)))

(declare-fun bs!1195695 () Bool)

(assert (= bs!1195695 (and d!1659749 b!5130453)))

(assert (=> bs!1195695 (not (= lambda!253738 lambda!253693))))

(declare-fun bs!1195696 () Bool)

(assert (= bs!1195696 (and d!1659749 b!5130454)))

(assert (=> bs!1195696 (not (= lambda!253738 lambda!253694))))

(declare-fun bs!1195697 () Bool)

(assert (= bs!1195697 (and d!1659749 d!1659747)))

(assert (=> bs!1195697 (not (= lambda!253738 lambda!253725))))

(declare-fun bs!1195698 () Bool)

(declare-fun b!5130523 () Bool)

(assert (= bs!1195698 (and b!5130523 b!5130453)))

(declare-fun lambda!253739 () Int)

(assert (=> bs!1195698 (= lambda!253739 lambda!253693)))

(declare-fun bs!1195699 () Bool)

(assert (= bs!1195699 (and b!5130523 d!1659747)))

(assert (=> bs!1195699 (not (= lambda!253739 lambda!253725))))

(declare-fun bs!1195700 () Bool)

(assert (= bs!1195700 (and b!5130523 b!5130448)))

(assert (=> bs!1195700 (not (= lambda!253739 lambda!253692))))

(declare-fun bs!1195701 () Bool)

(assert (= bs!1195701 (and b!5130523 d!1659749)))

(assert (=> bs!1195701 (not (= lambda!253739 lambda!253738))))

(declare-fun bs!1195702 () Bool)

(assert (= bs!1195702 (and b!5130523 b!5130454)))

(assert (=> bs!1195702 (not (= lambda!253739 lambda!253694))))

(declare-fun bs!1195703 () Bool)

(declare-fun b!5130524 () Bool)

(assert (= bs!1195703 (and b!5130524 b!5130453)))

(declare-fun lambda!253740 () Int)

(assert (=> bs!1195703 (= lambda!253740 lambda!253693)))

(declare-fun bs!1195704 () Bool)

(assert (= bs!1195704 (and b!5130524 d!1659747)))

(assert (=> bs!1195704 (not (= lambda!253740 lambda!253725))))

(declare-fun bs!1195705 () Bool)

(assert (= bs!1195705 (and b!5130524 b!5130448)))

(assert (=> bs!1195705 (not (= lambda!253740 lambda!253692))))

(declare-fun bs!1195706 () Bool)

(assert (= bs!1195706 (and b!5130524 d!1659749)))

(assert (=> bs!1195706 (not (= lambda!253740 lambda!253738))))

(declare-fun bs!1195707 () Bool)

(assert (= bs!1195707 (and b!5130524 b!5130523)))

(assert (=> bs!1195707 (= lambda!253740 lambda!253739)))

(declare-fun bs!1195708 () Bool)

(assert (= bs!1195708 (and b!5130524 b!5130454)))

(assert (=> bs!1195708 (not (= lambda!253740 lambda!253694))))

(declare-fun bm!357037 () Bool)

(declare-fun call!357042 () List!59596)

(assert (=> bm!357037 (= call!357042 (toList!8324 z!1054))))

(declare-fun e!3199806 () Unit!150716)

(declare-fun Unit!150720 () Unit!150716)

(assert (=> b!5130524 (= e!3199806 Unit!150720)))

(declare-fun lt!2116462 () List!59596)

(assert (=> b!5130524 (= lt!2116462 call!357042)))

(declare-fun lt!2116460 () Unit!150716)

(declare-fun lemmaForallThenNotExists!349 (List!59596 Int) Unit!150716)

(assert (=> b!5130524 (= lt!2116460 (lemmaForallThenNotExists!349 lt!2116462 lambda!253738))))

(declare-fun call!357043 () Bool)

(assert (=> b!5130524 (not call!357043)))

(declare-fun lt!2116465 () Unit!150716)

(assert (=> b!5130524 (= lt!2116465 lt!2116460)))

(declare-fun c!882504 () Bool)

(declare-fun bm!357038 () Bool)

(declare-fun lt!2116459 () List!59596)

(assert (=> bm!357038 (= call!357043 (exists!1633 (ite c!882504 lt!2116459 lt!2116462) (ite c!882504 lambda!253739 lambda!253740)))))

(declare-fun Unit!150721 () Unit!150716)

(assert (=> b!5130523 (= e!3199806 Unit!150721)))

(assert (=> b!5130523 (= lt!2116459 call!357042)))

(declare-fun lt!2116463 () Unit!150716)

(assert (=> b!5130523 (= lt!2116463 (lemmaNotForallThenExists!372 lt!2116459 lambda!253738))))

(assert (=> b!5130523 call!357043))

(declare-fun lt!2116464 () Unit!150716)

(assert (=> b!5130523 (= lt!2116464 lt!2116463)))

(declare-fun lt!2116466 () Bool)

(declare-datatypes ((List!59599 0))(
  ( (Nil!59475) (Cons!59475 (h!65923 C!28934) (t!372626 List!59599)) )
))
(declare-datatypes ((Option!14726 0))(
  ( (None!14725) (Some!14725 (v!50749 List!59599)) )
))
(declare-fun isEmpty!31987 (Option!14726) Bool)

(declare-fun getLanguageWitness!859 ((Set Context!7436)) Option!14726)

(assert (=> d!1659749 (= lt!2116466 (isEmpty!31987 (getLanguageWitness!859 z!1054)))))

(assert (=> d!1659749 (= lt!2116466 (forall!13749 z!1054 lambda!253738))))

(declare-fun lt!2116461 () Unit!150716)

(assert (=> d!1659749 (= lt!2116461 e!3199806)))

(assert (=> d!1659749 (= c!882504 (not (forall!13749 z!1054 lambda!253738)))))

(assert (=> d!1659749 (= (lostCauseZipper!1178 z!1054) lt!2116466)))

(assert (= (and d!1659749 c!882504) b!5130523))

(assert (= (and d!1659749 (not c!882504)) b!5130524))

(assert (= (or b!5130523 b!5130524) bm!357037))

(assert (= (or b!5130523 b!5130524) bm!357038))

(declare-fun m!6195288 () Bool)

(assert (=> bm!357038 m!6195288))

(assert (=> bm!357037 m!6195210))

(declare-fun m!6195290 () Bool)

(assert (=> b!5130524 m!6195290))

(declare-fun m!6195292 () Bool)

(assert (=> b!5130523 m!6195292))

(declare-fun m!6195294 () Bool)

(assert (=> d!1659749 m!6195294))

(assert (=> d!1659749 m!6195294))

(declare-fun m!6195296 () Bool)

(assert (=> d!1659749 m!6195296))

(declare-fun m!6195298 () Bool)

(assert (=> d!1659749 m!6195298))

(assert (=> d!1659749 m!6195298))

(assert (=> start!542326 d!1659749))

(declare-fun d!1659751 () Bool)

(declare-fun e!3199809 () Bool)

(assert (=> d!1659751 e!3199809))

(declare-fun res!2185001 () Bool)

(assert (=> d!1659751 (=> (not res!2185001) (not e!3199809))))

(declare-fun lt!2116469 () Context!7436)

(declare-fun dynLambda!23674 (Int Context!7436) Bool)

(assert (=> d!1659751 (= res!2185001 (dynLambda!23674 lambda!253694 lt!2116469))))

(assert (=> d!1659751 (= lt!2116469 (getWitness!784 (toList!8324 z!1054) lambda!253694))))

(assert (=> d!1659751 (exists!1632 z!1054 lambda!253694)))

(assert (=> d!1659751 (= (getWitness!785 z!1054 lambda!253694) lt!2116469)))

(declare-fun b!5130527 () Bool)

(assert (=> b!5130527 (= e!3199809 (set.member lt!2116469 z!1054))))

(assert (= (and d!1659751 res!2185001) b!5130527))

(declare-fun b_lambda!199605 () Bool)

(assert (=> (not b_lambda!199605) (not d!1659751)))

(declare-fun m!6195300 () Bool)

(assert (=> d!1659751 m!6195300))

(assert (=> d!1659751 m!6195210))

(assert (=> d!1659751 m!6195210))

(declare-fun m!6195302 () Bool)

(assert (=> d!1659751 m!6195302))

(assert (=> d!1659751 m!6195186))

(declare-fun m!6195304 () Bool)

(assert (=> b!5130527 m!6195304))

(assert (=> b!5130457 d!1659751))

(declare-fun d!1659753 () Bool)

(declare-fun lt!2116472 () Bool)

(assert (=> d!1659753 (= lt!2116472 (forall!13750 (toList!8324 lt!2116405) lambda!253692))))

(declare-fun choose!37846 ((Set Context!7436) Int) Bool)

(assert (=> d!1659753 (= lt!2116472 (choose!37846 lt!2116405 lambda!253692))))

(assert (=> d!1659753 (= (forall!13749 lt!2116405 lambda!253692) lt!2116472)))

(declare-fun bs!1195709 () Bool)

(assert (= bs!1195709 d!1659753))

(assert (=> bs!1195709 m!6195226))

(assert (=> bs!1195709 m!6195226))

(declare-fun m!6195306 () Bool)

(assert (=> bs!1195709 m!6195306))

(declare-fun m!6195308 () Bool)

(assert (=> bs!1195709 m!6195308))

(assert (=> b!5130448 d!1659753))

(declare-fun bs!1195710 () Bool)

(declare-fun d!1659755 () Bool)

(assert (= bs!1195710 (and d!1659755 b!5130453)))

(declare-fun lambda!253741 () Int)

(assert (=> bs!1195710 (not (= lambda!253741 lambda!253693))))

(declare-fun bs!1195711 () Bool)

(assert (= bs!1195711 (and d!1659755 d!1659747)))

(assert (=> bs!1195711 (not (= lambda!253741 lambda!253725))))

(declare-fun bs!1195712 () Bool)

(assert (= bs!1195712 (and d!1659755 b!5130448)))

(assert (=> bs!1195712 (= lambda!253741 lambda!253692)))

(declare-fun bs!1195713 () Bool)

(assert (= bs!1195713 (and d!1659755 d!1659749)))

(assert (=> bs!1195713 (= lambda!253741 lambda!253738)))

(declare-fun bs!1195714 () Bool)

(assert (= bs!1195714 (and d!1659755 b!5130524)))

(assert (=> bs!1195714 (not (= lambda!253741 lambda!253740))))

(declare-fun bs!1195715 () Bool)

(assert (= bs!1195715 (and d!1659755 b!5130523)))

(assert (=> bs!1195715 (not (= lambda!253741 lambda!253739))))

(declare-fun bs!1195716 () Bool)

(assert (= bs!1195716 (and d!1659755 b!5130454)))

(assert (=> bs!1195716 (not (= lambda!253741 lambda!253694))))

(declare-fun bs!1195717 () Bool)

(declare-fun b!5130528 () Bool)

(assert (= bs!1195717 (and b!5130528 d!1659755)))

(declare-fun lambda!253742 () Int)

(assert (=> bs!1195717 (not (= lambda!253742 lambda!253741))))

(declare-fun bs!1195718 () Bool)

(assert (= bs!1195718 (and b!5130528 b!5130453)))

(assert (=> bs!1195718 (= lambda!253742 lambda!253693)))

(declare-fun bs!1195719 () Bool)

(assert (= bs!1195719 (and b!5130528 d!1659747)))

(assert (=> bs!1195719 (not (= lambda!253742 lambda!253725))))

(declare-fun bs!1195720 () Bool)

(assert (= bs!1195720 (and b!5130528 b!5130448)))

(assert (=> bs!1195720 (not (= lambda!253742 lambda!253692))))

(declare-fun bs!1195721 () Bool)

(assert (= bs!1195721 (and b!5130528 d!1659749)))

(assert (=> bs!1195721 (not (= lambda!253742 lambda!253738))))

(declare-fun bs!1195722 () Bool)

(assert (= bs!1195722 (and b!5130528 b!5130524)))

(assert (=> bs!1195722 (= lambda!253742 lambda!253740)))

(declare-fun bs!1195723 () Bool)

(assert (= bs!1195723 (and b!5130528 b!5130523)))

(assert (=> bs!1195723 (= lambda!253742 lambda!253739)))

(declare-fun bs!1195724 () Bool)

(assert (= bs!1195724 (and b!5130528 b!5130454)))

(assert (=> bs!1195724 (not (= lambda!253742 lambda!253694))))

(declare-fun bs!1195725 () Bool)

(declare-fun b!5130529 () Bool)

(assert (= bs!1195725 (and b!5130529 d!1659755)))

(declare-fun lambda!253743 () Int)

(assert (=> bs!1195725 (not (= lambda!253743 lambda!253741))))

(declare-fun bs!1195726 () Bool)

(assert (= bs!1195726 (and b!5130529 b!5130453)))

(assert (=> bs!1195726 (= lambda!253743 lambda!253693)))

(declare-fun bs!1195727 () Bool)

(assert (= bs!1195727 (and b!5130529 b!5130528)))

(assert (=> bs!1195727 (= lambda!253743 lambda!253742)))

(declare-fun bs!1195728 () Bool)

(assert (= bs!1195728 (and b!5130529 d!1659747)))

(assert (=> bs!1195728 (not (= lambda!253743 lambda!253725))))

(declare-fun bs!1195729 () Bool)

(assert (= bs!1195729 (and b!5130529 b!5130448)))

(assert (=> bs!1195729 (not (= lambda!253743 lambda!253692))))

(declare-fun bs!1195730 () Bool)

(assert (= bs!1195730 (and b!5130529 d!1659749)))

(assert (=> bs!1195730 (not (= lambda!253743 lambda!253738))))

(declare-fun bs!1195731 () Bool)

(assert (= bs!1195731 (and b!5130529 b!5130524)))

(assert (=> bs!1195731 (= lambda!253743 lambda!253740)))

(declare-fun bs!1195732 () Bool)

(assert (= bs!1195732 (and b!5130529 b!5130523)))

(assert (=> bs!1195732 (= lambda!253743 lambda!253739)))

(declare-fun bs!1195733 () Bool)

(assert (= bs!1195733 (and b!5130529 b!5130454)))

(assert (=> bs!1195733 (not (= lambda!253743 lambda!253694))))

(declare-fun bm!357039 () Bool)

(declare-fun call!357044 () List!59596)

(assert (=> bm!357039 (= call!357044 (toList!8324 lt!2116405))))

(declare-fun e!3199810 () Unit!150716)

(declare-fun Unit!150722 () Unit!150716)

(assert (=> b!5130529 (= e!3199810 Unit!150722)))

(declare-fun lt!2116476 () List!59596)

(assert (=> b!5130529 (= lt!2116476 call!357044)))

(declare-fun lt!2116474 () Unit!150716)

(assert (=> b!5130529 (= lt!2116474 (lemmaForallThenNotExists!349 lt!2116476 lambda!253741))))

(declare-fun call!357045 () Bool)

(assert (=> b!5130529 (not call!357045)))

(declare-fun lt!2116479 () Unit!150716)

(assert (=> b!5130529 (= lt!2116479 lt!2116474)))

(declare-fun bm!357040 () Bool)

(declare-fun lt!2116473 () List!59596)

(declare-fun c!882505 () Bool)

(assert (=> bm!357040 (= call!357045 (exists!1633 (ite c!882505 lt!2116473 lt!2116476) (ite c!882505 lambda!253742 lambda!253743)))))

(declare-fun Unit!150723 () Unit!150716)

(assert (=> b!5130528 (= e!3199810 Unit!150723)))

(assert (=> b!5130528 (= lt!2116473 call!357044)))

(declare-fun lt!2116477 () Unit!150716)

(assert (=> b!5130528 (= lt!2116477 (lemmaNotForallThenExists!372 lt!2116473 lambda!253741))))

(assert (=> b!5130528 call!357045))

(declare-fun lt!2116478 () Unit!150716)

(assert (=> b!5130528 (= lt!2116478 lt!2116477)))

(declare-fun lt!2116480 () Bool)

(assert (=> d!1659755 (= lt!2116480 (isEmpty!31987 (getLanguageWitness!859 lt!2116405)))))

(assert (=> d!1659755 (= lt!2116480 (forall!13749 lt!2116405 lambda!253741))))

(declare-fun lt!2116475 () Unit!150716)

(assert (=> d!1659755 (= lt!2116475 e!3199810)))

(assert (=> d!1659755 (= c!882505 (not (forall!13749 lt!2116405 lambda!253741)))))

(assert (=> d!1659755 (= (lostCauseZipper!1178 lt!2116405) lt!2116480)))

(assert (= (and d!1659755 c!882505) b!5130528))

(assert (= (and d!1659755 (not c!882505)) b!5130529))

(assert (= (or b!5130528 b!5130529) bm!357039))

(assert (= (or b!5130528 b!5130529) bm!357040))

(declare-fun m!6195310 () Bool)

(assert (=> bm!357040 m!6195310))

(assert (=> bm!357039 m!6195226))

(declare-fun m!6195312 () Bool)

(assert (=> b!5130529 m!6195312))

(declare-fun m!6195314 () Bool)

(assert (=> b!5130528 m!6195314))

(declare-fun m!6195316 () Bool)

(assert (=> d!1659755 m!6195316))

(assert (=> d!1659755 m!6195316))

(declare-fun m!6195318 () Bool)

(assert (=> d!1659755 m!6195318))

(declare-fun m!6195320 () Bool)

(assert (=> d!1659755 m!6195320))

(assert (=> d!1659755 m!6195320))

(assert (=> b!5130448 d!1659755))

(assert (=> b!5130449 d!1659753))

(declare-fun d!1659757 () Bool)

(declare-fun res!2185006 () Bool)

(declare-fun e!3199815 () Bool)

(assert (=> d!1659757 (=> res!2185006 e!3199815)))

(assert (=> d!1659757 (= res!2185006 (is-Nil!59472 lt!2116407))))

(assert (=> d!1659757 (= (forall!13750 lt!2116407 lambda!253692) e!3199815)))

(declare-fun b!5130534 () Bool)

(declare-fun e!3199816 () Bool)

(assert (=> b!5130534 (= e!3199815 e!3199816)))

(declare-fun res!2185007 () Bool)

(assert (=> b!5130534 (=> (not res!2185007) (not e!3199816))))

(assert (=> b!5130534 (= res!2185007 (dynLambda!23674 lambda!253692 (h!65920 lt!2116407)))))

(declare-fun b!5130535 () Bool)

(assert (=> b!5130535 (= e!3199816 (forall!13750 (t!372623 lt!2116407) lambda!253692))))

(assert (= (and d!1659757 (not res!2185006)) b!5130534))

(assert (= (and b!5130534 res!2185007) b!5130535))

(declare-fun b_lambda!199607 () Bool)

(assert (=> (not b_lambda!199607) (not b!5130534)))

(declare-fun m!6195322 () Bool)

(assert (=> b!5130534 m!6195322))

(declare-fun m!6195324 () Bool)

(assert (=> b!5130535 m!6195324))

(assert (=> b!5130456 d!1659757))

(declare-fun d!1659761 () Bool)

(declare-fun e!3199819 () Bool)

(assert (=> d!1659761 e!3199819))

(declare-fun res!2185010 () Bool)

(assert (=> d!1659761 (=> (not res!2185010) (not e!3199819))))

(declare-fun lt!2116483 () List!59596)

(declare-fun noDuplicate!1090 (List!59596) Bool)

(assert (=> d!1659761 (= res!2185010 (noDuplicate!1090 lt!2116483))))

(declare-fun choose!37847 ((Set Context!7436)) List!59596)

(assert (=> d!1659761 (= lt!2116483 (choose!37847 z!1054))))

(assert (=> d!1659761 (= (toList!8324 z!1054) lt!2116483)))

(declare-fun b!5130538 () Bool)

(declare-fun content!10567 (List!59596) (Set Context!7436))

(assert (=> b!5130538 (= e!3199819 (= (content!10567 lt!2116483) z!1054))))

(assert (= (and d!1659761 res!2185010) b!5130538))

(declare-fun m!6195326 () Bool)

(assert (=> d!1659761 m!6195326))

(declare-fun m!6195328 () Bool)

(assert (=> d!1659761 m!6195328))

(declare-fun m!6195330 () Bool)

(assert (=> b!5130538 m!6195330))

(assert (=> b!5130456 d!1659761))

(declare-fun d!1659763 () Bool)

(declare-fun lambda!253746 () Int)

(declare-fun forall!13753 (List!59595 Int) Bool)

(assert (=> d!1659763 (= (inv!79017 setElem!31037) (forall!13753 (exprs!4218 setElem!31037) lambda!253746))))

(declare-fun bs!1195734 () Bool)

(assert (= bs!1195734 d!1659763))

(declare-fun m!6195332 () Bool)

(assert (=> bs!1195734 m!6195332))

(assert (=> setNonEmpty!31037 d!1659763))

(declare-fun b!5130552 () Bool)

(declare-fun e!3199830 () (Set Context!7436))

(assert (=> b!5130552 (= e!3199830 (as set.empty (Set Context!7436)))))

(declare-fun b!5130553 () Bool)

(declare-fun call!357048 () (Set Context!7436))

(assert (=> b!5130553 (= e!3199830 call!357048)))

(declare-fun d!1659765 () Bool)

(declare-fun c!882511 () Bool)

(declare-fun e!3199831 () Bool)

(assert (=> d!1659765 (= c!882511 e!3199831)))

(declare-fun res!2185016 () Bool)

(assert (=> d!1659765 (=> (not res!2185016) (not e!3199831))))

(assert (=> d!1659765 (= res!2185016 (is-Cons!59471 (exprs!4218 lt!2116406)))))

(declare-fun e!3199829 () (Set Context!7436))

(assert (=> d!1659765 (= (derivationStepZipperUp!59 lt!2116406 a!1233) e!3199829)))

(declare-fun b!5130554 () Bool)

(declare-fun nullable!4744 (Regex!14334) Bool)

(assert (=> b!5130554 (= e!3199831 (nullable!4744 (h!65919 (exprs!4218 lt!2116406))))))

(declare-fun b!5130555 () Bool)

(assert (=> b!5130555 (= e!3199829 e!3199830)))

(declare-fun c!882510 () Bool)

(assert (=> b!5130555 (= c!882510 (is-Cons!59471 (exprs!4218 lt!2116406)))))

(declare-fun bm!357043 () Bool)

(declare-fun derivationStepZipperDown!93 (Regex!14334 Context!7436 C!28934) (Set Context!7436))

(assert (=> bm!357043 (= call!357048 (derivationStepZipperDown!93 (h!65919 (exprs!4218 lt!2116406)) (Context!7437 (t!372622 (exprs!4218 lt!2116406))) a!1233))))

(declare-fun b!5130556 () Bool)

(assert (=> b!5130556 (= e!3199829 (set.union call!357048 (derivationStepZipperUp!59 (Context!7437 (t!372622 (exprs!4218 lt!2116406))) a!1233)))))

(assert (= (and d!1659765 res!2185016) b!5130554))

(assert (= (and d!1659765 c!882511) b!5130556))

(assert (= (and d!1659765 (not c!882511)) b!5130555))

(assert (= (and b!5130555 c!882510) b!5130553))

(assert (= (and b!5130555 (not c!882510)) b!5130552))

(assert (= (or b!5130556 b!5130553) bm!357043))

(declare-fun m!6195340 () Bool)

(assert (=> b!5130554 m!6195340))

(declare-fun m!6195342 () Bool)

(assert (=> bm!357043 m!6195342))

(declare-fun m!6195344 () Bool)

(assert (=> b!5130556 m!6195344))

(assert (=> b!5130460 d!1659765))

(declare-fun bs!1195736 () Bool)

(declare-fun d!1659769 () Bool)

(assert (= bs!1195736 (and d!1659769 d!1659763)))

(declare-fun lambda!253749 () Int)

(assert (=> bs!1195736 (not (= lambda!253749 lambda!253746))))

(declare-fun exists!1636 (List!59595 Int) Bool)

(assert (=> d!1659769 (= (lostCause!1287 lt!2116410) (exists!1636 (exprs!4218 lt!2116410) lambda!253749))))

(declare-fun bs!1195737 () Bool)

(assert (= bs!1195737 d!1659769))

(declare-fun m!6195350 () Bool)

(assert (=> bs!1195737 m!6195350))

(assert (=> b!5130458 d!1659769))

(declare-fun d!1659773 () Bool)

(declare-fun lt!2116492 () Bool)

(assert (=> d!1659773 (= lt!2116492 (set.member lt!2116406 (content!10567 lt!2116407)))))

(declare-fun e!3199836 () Bool)

(assert (=> d!1659773 (= lt!2116492 e!3199836)))

(declare-fun res!2185021 () Bool)

(assert (=> d!1659773 (=> (not res!2185021) (not e!3199836))))

(assert (=> d!1659773 (= res!2185021 (is-Cons!59472 lt!2116407))))

(assert (=> d!1659773 (= (contains!19633 lt!2116407 lt!2116406) lt!2116492)))

(declare-fun b!5130561 () Bool)

(declare-fun e!3199837 () Bool)

(assert (=> b!5130561 (= e!3199836 e!3199837)))

(declare-fun res!2185022 () Bool)

(assert (=> b!5130561 (=> res!2185022 e!3199837)))

(assert (=> b!5130561 (= res!2185022 (= (h!65920 lt!2116407) lt!2116406))))

(declare-fun b!5130562 () Bool)

(assert (=> b!5130562 (= e!3199837 (contains!19633 (t!372623 lt!2116407) lt!2116406))))

(assert (= (and d!1659773 res!2185021) b!5130561))

(assert (= (and b!5130561 (not res!2185022)) b!5130562))

(declare-fun m!6195352 () Bool)

(assert (=> d!1659773 m!6195352))

(declare-fun m!6195354 () Bool)

(assert (=> d!1659773 m!6195354))

(declare-fun m!6195356 () Bool)

(assert (=> b!5130562 m!6195356))

(assert (=> b!5130459 d!1659773))

(declare-fun d!1659775 () Bool)

(declare-fun lt!2116493 () Bool)

(assert (=> d!1659775 (= lt!2116493 (forall!13750 (toList!8324 z!1054) lambda!253692))))

(assert (=> d!1659775 (= lt!2116493 (choose!37846 z!1054 lambda!253692))))

(assert (=> d!1659775 (= (forall!13749 z!1054 lambda!253692) lt!2116493)))

(declare-fun bs!1195738 () Bool)

(assert (= bs!1195738 d!1659775))

(assert (=> bs!1195738 m!6195210))

(assert (=> bs!1195738 m!6195210))

(declare-fun m!6195358 () Bool)

(assert (=> bs!1195738 m!6195358))

(declare-fun m!6195360 () Bool)

(assert (=> bs!1195738 m!6195360))

(assert (=> b!5130450 d!1659775))

(declare-fun d!1659777 () Bool)

(declare-fun lt!2116496 () Bool)

(assert (=> d!1659777 (= lt!2116496 (exists!1633 (toList!8324 lt!2116405) lambda!253693))))

(assert (=> d!1659777 (= lt!2116496 (choose!37844 lt!2116405 lambda!253693))))

(assert (=> d!1659777 (= (exists!1632 lt!2116405 lambda!253693) lt!2116496)))

(declare-fun bs!1195739 () Bool)

(assert (= bs!1195739 d!1659777))

(assert (=> bs!1195739 m!6195226))

(assert (=> bs!1195739 m!6195226))

(declare-fun m!6195362 () Bool)

(assert (=> bs!1195739 m!6195362))

(declare-fun m!6195364 () Bool)

(assert (=> bs!1195739 m!6195364))

(assert (=> b!5130453 d!1659777))

(declare-fun bs!1195740 () Bool)

(declare-fun d!1659779 () Bool)

(assert (= bs!1195740 (and d!1659779 d!1659755)))

(declare-fun lambda!253754 () Int)

(assert (=> bs!1195740 (not (= lambda!253754 lambda!253741))))

(declare-fun bs!1195741 () Bool)

(assert (= bs!1195741 (and d!1659779 b!5130453)))

(assert (=> bs!1195741 (not (= lambda!253754 lambda!253693))))

(declare-fun bs!1195742 () Bool)

(assert (= bs!1195742 (and d!1659779 b!5130528)))

(assert (=> bs!1195742 (not (= lambda!253754 lambda!253742))))

(declare-fun bs!1195743 () Bool)

(assert (= bs!1195743 (and d!1659779 b!5130529)))

(assert (=> bs!1195743 (not (= lambda!253754 lambda!253743))))

(declare-fun bs!1195744 () Bool)

(assert (= bs!1195744 (and d!1659779 d!1659747)))

(assert (=> bs!1195744 (not (= lambda!253754 lambda!253725))))

(declare-fun bs!1195745 () Bool)

(assert (= bs!1195745 (and d!1659779 b!5130448)))

(assert (=> bs!1195745 (not (= lambda!253754 lambda!253692))))

(declare-fun bs!1195746 () Bool)

(assert (= bs!1195746 (and d!1659779 d!1659749)))

(assert (=> bs!1195746 (not (= lambda!253754 lambda!253738))))

(declare-fun bs!1195747 () Bool)

(assert (= bs!1195747 (and d!1659779 b!5130524)))

(assert (=> bs!1195747 (not (= lambda!253754 lambda!253740))))

(declare-fun bs!1195748 () Bool)

(assert (= bs!1195748 (and d!1659779 b!5130523)))

(assert (=> bs!1195748 (not (= lambda!253754 lambda!253739))))

(declare-fun bs!1195749 () Bool)

(assert (= bs!1195749 (and d!1659779 b!5130454)))

(assert (=> bs!1195749 (not (= lambda!253754 lambda!253694))))

(assert (=> d!1659779 true))

(assert (=> d!1659779 (< (dynLambda!23673 order!26837 lambda!253693) (dynLambda!23673 order!26837 lambda!253754))))

(assert (=> d!1659779 (= (exists!1633 lt!2116412 lambda!253693) (not (forall!13750 lt!2116412 lambda!253754)))))

(declare-fun bs!1195750 () Bool)

(assert (= bs!1195750 d!1659779))

(declare-fun m!6195366 () Bool)

(assert (=> bs!1195750 m!6195366))

(assert (=> b!5130453 d!1659779))

(declare-fun bs!1195755 () Bool)

(declare-fun d!1659781 () Bool)

(assert (= bs!1195755 (and d!1659781 d!1659755)))

(declare-fun lambda!253758 () Int)

(assert (=> bs!1195755 (not (= lambda!253758 lambda!253741))))

(declare-fun bs!1195756 () Bool)

(assert (= bs!1195756 (and d!1659781 b!5130453)))

(assert (=> bs!1195756 (not (= lambda!253758 lambda!253693))))

(declare-fun bs!1195757 () Bool)

(assert (= bs!1195757 (and d!1659781 b!5130528)))

(assert (=> bs!1195757 (not (= lambda!253758 lambda!253742))))

(declare-fun bs!1195758 () Bool)

(assert (= bs!1195758 (and d!1659781 b!5130529)))

(assert (=> bs!1195758 (not (= lambda!253758 lambda!253743))))

(declare-fun bs!1195759 () Bool)

(assert (= bs!1195759 (and d!1659781 d!1659747)))

(assert (=> bs!1195759 (not (= lambda!253758 lambda!253725))))

(declare-fun bs!1195760 () Bool)

(assert (= bs!1195760 (and d!1659781 d!1659779)))

(assert (=> bs!1195760 (= (= lambda!253692 lambda!253693) (= lambda!253758 lambda!253754))))

(declare-fun bs!1195761 () Bool)

(assert (= bs!1195761 (and d!1659781 b!5130448)))

(assert (=> bs!1195761 (not (= lambda!253758 lambda!253692))))

(declare-fun bs!1195762 () Bool)

(assert (= bs!1195762 (and d!1659781 d!1659749)))

(assert (=> bs!1195762 (not (= lambda!253758 lambda!253738))))

(declare-fun bs!1195763 () Bool)

(assert (= bs!1195763 (and d!1659781 b!5130524)))

(assert (=> bs!1195763 (not (= lambda!253758 lambda!253740))))

(declare-fun bs!1195764 () Bool)

(assert (= bs!1195764 (and d!1659781 b!5130523)))

(assert (=> bs!1195764 (not (= lambda!253758 lambda!253739))))

(declare-fun bs!1195765 () Bool)

(assert (= bs!1195765 (and d!1659781 b!5130454)))

(assert (=> bs!1195765 (not (= lambda!253758 lambda!253694))))

(assert (=> d!1659781 true))

(assert (=> d!1659781 (< (dynLambda!23673 order!26837 lambda!253692) (dynLambda!23673 order!26837 lambda!253758))))

(assert (=> d!1659781 (exists!1633 lt!2116412 lambda!253758)))

(declare-fun lt!2116500 () Unit!150716)

(declare-fun choose!37848 (List!59596 Int) Unit!150716)

(assert (=> d!1659781 (= lt!2116500 (choose!37848 lt!2116412 lambda!253692))))

(assert (=> d!1659781 (not (forall!13750 lt!2116412 lambda!253692))))

(assert (=> d!1659781 (= (lemmaNotForallThenExists!372 lt!2116412 lambda!253692) lt!2116500)))

(declare-fun bs!1195766 () Bool)

(assert (= bs!1195766 d!1659781))

(declare-fun m!6195374 () Bool)

(assert (=> bs!1195766 m!6195374))

(declare-fun m!6195376 () Bool)

(assert (=> bs!1195766 m!6195376))

(declare-fun m!6195378 () Bool)

(assert (=> bs!1195766 m!6195378))

(assert (=> b!5130453 d!1659781))

(declare-fun d!1659785 () Bool)

(declare-fun e!3199840 () Bool)

(assert (=> d!1659785 e!3199840))

(declare-fun res!2185023 () Bool)

(assert (=> d!1659785 (=> (not res!2185023) (not e!3199840))))

(declare-fun lt!2116501 () List!59596)

(assert (=> d!1659785 (= res!2185023 (noDuplicate!1090 lt!2116501))))

(assert (=> d!1659785 (= lt!2116501 (choose!37847 lt!2116405))))

(assert (=> d!1659785 (= (toList!8324 lt!2116405) lt!2116501)))

(declare-fun b!5130568 () Bool)

(assert (=> b!5130568 (= e!3199840 (= (content!10567 lt!2116501) lt!2116405))))

(assert (= (and d!1659785 res!2185023) b!5130568))

(declare-fun m!6195380 () Bool)

(assert (=> d!1659785 m!6195380))

(declare-fun m!6195382 () Bool)

(assert (=> d!1659785 m!6195382))

(declare-fun m!6195384 () Bool)

(assert (=> b!5130568 m!6195384))

(assert (=> b!5130453 d!1659785))

(declare-fun d!1659787 () Bool)

(declare-fun choose!37849 ((Set Context!7436) Int) (Set Context!7436))

(assert (=> d!1659787 (= (flatMap!385 z!1054 lambda!253691) (choose!37849 z!1054 lambda!253691))))

(declare-fun bs!1195767 () Bool)

(assert (= bs!1195767 d!1659787))

(declare-fun m!6195386 () Bool)

(assert (=> bs!1195767 m!6195386))

(assert (=> b!5130461 d!1659787))

(declare-fun bs!1195768 () Bool)

(declare-fun d!1659789 () Bool)

(assert (= bs!1195768 (and d!1659789 b!5130461)))

(declare-fun lambda!253761 () Int)

(assert (=> bs!1195768 (= lambda!253761 lambda!253691)))

(assert (=> d!1659789 true))

(assert (=> d!1659789 (= (derivationStepZipper!889 z!1054 a!1233) (flatMap!385 z!1054 lambda!253761))))

(declare-fun bs!1195769 () Bool)

(assert (= bs!1195769 d!1659789))

(declare-fun m!6195388 () Bool)

(assert (=> bs!1195769 m!6195388))

(assert (=> b!5130461 d!1659789))

(declare-fun b!5130581 () Bool)

(declare-fun e!3199851 () Bool)

(assert (=> b!5130581 (= e!3199851 (dynLambda!23674 lambda!253693 (h!65920 lt!2116412)))))

(declare-fun b!5130582 () Bool)

(declare-fun e!3199850 () Context!7436)

(assert (=> b!5130582 (= e!3199850 (h!65920 lt!2116412))))

(declare-fun d!1659791 () Bool)

(declare-fun e!3199852 () Bool)

(assert (=> d!1659791 e!3199852))

(declare-fun res!2185029 () Bool)

(assert (=> d!1659791 (=> (not res!2185029) (not e!3199852))))

(declare-fun lt!2116509 () Context!7436)

(assert (=> d!1659791 (= res!2185029 (dynLambda!23674 lambda!253693 lt!2116509))))

(assert (=> d!1659791 (= lt!2116509 e!3199850)))

(declare-fun c!882518 () Bool)

(assert (=> d!1659791 (= c!882518 e!3199851)))

(declare-fun res!2185028 () Bool)

(assert (=> d!1659791 (=> (not res!2185028) (not e!3199851))))

(assert (=> d!1659791 (= res!2185028 (is-Cons!59472 lt!2116412))))

(assert (=> d!1659791 (exists!1633 lt!2116412 lambda!253693)))

(assert (=> d!1659791 (= (getWitness!784 lt!2116412 lambda!253693) lt!2116509)))

(declare-fun b!5130583 () Bool)

(declare-fun e!3199849 () Context!7436)

(assert (=> b!5130583 (= e!3199850 e!3199849)))

(declare-fun c!882519 () Bool)

(assert (=> b!5130583 (= c!882519 (is-Cons!59472 lt!2116412))))

(declare-fun b!5130584 () Bool)

(assert (=> b!5130584 (= e!3199852 (contains!19633 lt!2116412 lt!2116509))))

(declare-fun b!5130585 () Bool)

(declare-fun lt!2116510 () Unit!150716)

(declare-fun Unit!150724 () Unit!150716)

(assert (=> b!5130585 (= lt!2116510 Unit!150724)))

(assert (=> b!5130585 false))

(declare-fun head!10981 (List!59596) Context!7436)

(assert (=> b!5130585 (= e!3199849 (head!10981 lt!2116412))))

(declare-fun b!5130586 () Bool)

(assert (=> b!5130586 (= e!3199849 (getWitness!784 (t!372623 lt!2116412) lambda!253693))))

(assert (= (and d!1659791 res!2185028) b!5130581))

(assert (= (and d!1659791 c!882518) b!5130582))

(assert (= (and d!1659791 (not c!882518)) b!5130583))

(assert (= (and b!5130583 c!882519) b!5130586))

(assert (= (and b!5130583 (not c!882519)) b!5130585))

(assert (= (and d!1659791 res!2185029) b!5130584))

(declare-fun b_lambda!199611 () Bool)

(assert (=> (not b_lambda!199611) (not b!5130581)))

(declare-fun b_lambda!199613 () Bool)

(assert (=> (not b_lambda!199613) (not d!1659791)))

(declare-fun m!6195394 () Bool)

(assert (=> d!1659791 m!6195394))

(assert (=> d!1659791 m!6195222))

(declare-fun m!6195396 () Bool)

(assert (=> b!5130585 m!6195396))

(declare-fun m!6195398 () Bool)

(assert (=> b!5130584 m!6195398))

(declare-fun m!6195400 () Bool)

(assert (=> b!5130581 m!6195400))

(declare-fun m!6195402 () Bool)

(assert (=> b!5130586 m!6195402))

(assert (=> b!5130452 d!1659791))

(declare-fun condSetEmpty!31043 () Bool)

(assert (=> setNonEmpty!31037 (= condSetEmpty!31043 (= setRest!31037 (as set.empty (Set Context!7436))))))

(declare-fun setRes!31043 () Bool)

(assert (=> setNonEmpty!31037 (= tp!1431271 setRes!31043)))

(declare-fun setIsEmpty!31043 () Bool)

(assert (=> setIsEmpty!31043 setRes!31043))

(declare-fun setElem!31043 () Context!7436)

(declare-fun e!3199855 () Bool)

(declare-fun setNonEmpty!31043 () Bool)

(declare-fun tp!1431283 () Bool)

(assert (=> setNonEmpty!31043 (= setRes!31043 (and tp!1431283 (inv!79017 setElem!31043) e!3199855))))

(declare-fun setRest!31043 () (Set Context!7436))

(assert (=> setNonEmpty!31043 (= setRest!31037 (set.union (set.insert setElem!31043 (as set.empty (Set Context!7436))) setRest!31043))))

(declare-fun b!5130591 () Bool)

(declare-fun tp!1431282 () Bool)

(assert (=> b!5130591 (= e!3199855 tp!1431282)))

(assert (= (and setNonEmpty!31037 condSetEmpty!31043) setIsEmpty!31043))

(assert (= (and setNonEmpty!31037 (not condSetEmpty!31043)) setNonEmpty!31043))

(assert (= setNonEmpty!31043 b!5130591))

(declare-fun m!6195404 () Bool)

(assert (=> setNonEmpty!31043 m!6195404))

(declare-fun b!5130596 () Bool)

(declare-fun e!3199858 () Bool)

(declare-fun tp!1431288 () Bool)

(declare-fun tp!1431289 () Bool)

(assert (=> b!5130596 (= e!3199858 (and tp!1431288 tp!1431289))))

(assert (=> b!5130451 (= tp!1431270 e!3199858)))

(assert (= (and b!5130451 (is-Cons!59471 (exprs!4218 setElem!31037))) b!5130596))

(declare-fun b_lambda!199615 () Bool)

(assert (= b_lambda!199613 (or b!5130453 b_lambda!199615)))

(declare-fun bs!1195771 () Bool)

(declare-fun d!1659795 () Bool)

(assert (= bs!1195771 (and d!1659795 b!5130453)))

(assert (=> bs!1195771 (= (dynLambda!23674 lambda!253693 lt!2116509) (not (lostCause!1287 lt!2116509)))))

(declare-fun m!6195406 () Bool)

(assert (=> bs!1195771 m!6195406))

(assert (=> d!1659791 d!1659795))

(declare-fun b_lambda!199617 () Bool)

(assert (= b_lambda!199605 (or b!5130454 b_lambda!199617)))

(declare-fun bs!1195772 () Bool)

(declare-fun d!1659797 () Bool)

(assert (= bs!1195772 (and d!1659797 b!5130454)))

(assert (=> bs!1195772 (= (dynLambda!23674 lambda!253694 lt!2116469) (set.member lt!2116410 (derivationStepZipperUp!59 lt!2116469 a!1233)))))

(declare-fun m!6195408 () Bool)

(assert (=> bs!1195772 m!6195408))

(declare-fun m!6195410 () Bool)

(assert (=> bs!1195772 m!6195410))

(assert (=> d!1659751 d!1659797))

(declare-fun b_lambda!199619 () Bool)

(assert (= b_lambda!199611 (or b!5130453 b_lambda!199619)))

(declare-fun bs!1195773 () Bool)

(declare-fun d!1659799 () Bool)

(assert (= bs!1195773 (and d!1659799 b!5130453)))

(assert (=> bs!1195773 (= (dynLambda!23674 lambda!253693 (h!65920 lt!2116412)) (not (lostCause!1287 (h!65920 lt!2116412))))))

(declare-fun m!6195412 () Bool)

(assert (=> bs!1195773 m!6195412))

(assert (=> b!5130581 d!1659799))

(declare-fun b_lambda!199621 () Bool)

(assert (= b_lambda!199607 (or b!5130448 b_lambda!199621)))

(declare-fun bs!1195774 () Bool)

(declare-fun d!1659801 () Bool)

(assert (= bs!1195774 (and d!1659801 b!5130448)))

(assert (=> bs!1195774 (= (dynLambda!23674 lambda!253692 (h!65920 lt!2116407)) (lostCause!1287 (h!65920 lt!2116407)))))

(declare-fun m!6195414 () Bool)

(assert (=> bs!1195774 m!6195414))

(assert (=> b!5130534 d!1659801))

(push 1)

(assert (not setNonEmpty!31043))

(assert (not d!1659769))

(assert tp_is_empty!37841)

(assert (not bm!357038))

(assert (not b!5130585))

(assert (not b!5130596))

(assert (not d!1659753))

(assert (not d!1659749))

(assert (not b_lambda!199621))

(assert (not b!5130528))

(assert (not b!5130535))

(assert (not b!5130556))

(assert (not b!5130584))

(assert (not bm!357037))

(assert (not d!1659773))

(assert (not d!1659777))

(assert (not d!1659789))

(assert (not b_lambda!199619))

(assert (not b_lambda!199617))

(assert (not b!5130591))

(assert (not d!1659779))

(assert (not b!5130529))

(assert (not b!5130586))

(assert (not b!5130538))

(assert (not d!1659761))

(assert (not bs!1195771))

(assert (not d!1659745))

(assert (not b!5130568))

(assert (not d!1659751))

(assert (not d!1659755))

(assert (not b!5130523))

(assert (not d!1659747))

(assert (not bs!1195772))

(assert (not b!5130524))

(assert (not bs!1195774))

(assert (not bm!357043))

(assert (not d!1659781))

(assert (not d!1659763))

(assert (not d!1659775))

(assert (not bm!357040))

(assert (not d!1659785))

(assert (not b_lambda!199615))

(assert (not b!5130562))

(assert (not bs!1195773))

(assert (not d!1659791))

(assert (not bm!357039))

(assert (not b!5130554))

(assert (not d!1659787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

