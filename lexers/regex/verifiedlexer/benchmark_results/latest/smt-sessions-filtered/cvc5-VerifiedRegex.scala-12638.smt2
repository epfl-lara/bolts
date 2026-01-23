; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700140 () Bool)

(assert start!700140)

(declare-fun b!7195149 () Bool)

(assert (=> b!7195149 true))

(declare-fun setRes!53381 () Bool)

(declare-datatypes ((C!37042 0))(
  ( (C!37043 (val!28469 Int)) )
))
(declare-datatypes ((Regex!18384 0))(
  ( (ElementMatch!18384 (c!1339170 C!37042)) (Concat!27229 (regOne!37280 Regex!18384) (regTwo!37280 Regex!18384)) (EmptyExpr!18384) (Star!18384 (reg!18713 Regex!18384)) (EmptyLang!18384) (Union!18384 (regOne!37281 Regex!18384) (regTwo!37281 Regex!18384)) )
))
(declare-datatypes ((List!69872 0))(
  ( (Nil!69748) (Cons!69748 (h!76196 Regex!18384) (t!383899 List!69872)) )
))
(declare-datatypes ((Context!14672 0))(
  ( (Context!14673 (exprs!7836 List!69872)) )
))
(declare-fun setElem!53381 () Context!14672)

(declare-fun tp!2000301 () Bool)

(declare-fun setNonEmpty!53381 () Bool)

(declare-fun e!4320707 () Bool)

(declare-fun inv!88983 (Context!14672) Bool)

(assert (=> setNonEmpty!53381 (= setRes!53381 (and tp!2000301 (inv!88983 setElem!53381) e!4320707))))

(declare-fun z!3517 () (Set Context!14672))

(declare-fun setRest!53381 () (Set Context!14672))

(assert (=> setNonEmpty!53381 (= z!3517 (set.union (set.insert setElem!53381 (as set.empty (Set Context!14672))) setRest!53381))))

(declare-fun b!7195148 () Bool)

(declare-fun e!4320706 () Bool)

(declare-fun tp_is_empty!46325 () Bool)

(declare-fun tp!2000302 () Bool)

(assert (=> b!7195148 (= e!4320706 (and tp_is_empty!46325 tp!2000302))))

(declare-fun lt!2571550 () (Set Context!14672))

(declare-fun e!4320710 () Bool)

(declare-fun lambda!438077 () Int)

(declare-datatypes ((List!69873 0))(
  ( (Nil!69749) (Cons!69749 (h!76197 Context!14672) (t!383900 List!69873)) )
))
(declare-fun head!14728 (List!69873) Context!14672)

(declare-fun toList!11321 ((Set Context!14672)) List!69873)

(declare-fun flatMap!2683 ((Set Context!14672) Int) (Set Context!14672))

(assert (=> b!7195149 (= e!4320710 (not (set.member (head!14728 (toList!11321 lt!2571550)) (flatMap!2683 z!3517 lambda!438077))))))

(declare-fun b!7195150 () Bool)

(declare-fun e!4320709 () Bool)

(declare-fun tp!2000303 () Bool)

(assert (=> b!7195150 (= e!4320709 tp!2000303)))

(declare-fun setIsEmpty!53381 () Bool)

(assert (=> setIsEmpty!53381 setRes!53381))

(declare-fun res!2929106 () Bool)

(declare-fun e!4320708 () Bool)

(assert (=> start!700140 (=> (not res!2929106) (not e!4320708))))

(declare-fun c!10544 () Context!14672)

(assert (=> start!700140 (= res!2929106 (= z!3517 (set.insert c!10544 (as set.empty (Set Context!14672)))))))

(assert (=> start!700140 e!4320708))

(declare-fun condSetEmpty!53381 () Bool)

(assert (=> start!700140 (= condSetEmpty!53381 (= z!3517 (as set.empty (Set Context!14672))))))

(assert (=> start!700140 setRes!53381))

(assert (=> start!700140 (and (inv!88983 c!10544) e!4320709)))

(assert (=> start!700140 e!4320706))

(declare-fun b!7195151 () Bool)

(declare-fun res!2929109 () Bool)

(assert (=> b!7195151 (=> (not res!2929109) (not e!4320710))))

(assert (=> b!7195151 (= res!2929109 (not (= lt!2571550 (as set.empty (Set Context!14672)))))))

(declare-fun b!7195152 () Bool)

(declare-fun res!2929105 () Bool)

(assert (=> b!7195152 (=> (not res!2929105) (not e!4320708))))

(declare-fun isEmpty!40263 (List!69872) Bool)

(assert (=> b!7195152 (= res!2929105 (not (isEmpty!40263 (exprs!7836 c!10544))))))

(declare-fun b!7195153 () Bool)

(declare-fun res!2929110 () Bool)

(assert (=> b!7195153 (=> (not res!2929110) (not e!4320708))))

(declare-fun head!14729 (List!69872) Regex!18384)

(assert (=> b!7195153 (= res!2929110 (= (head!14729 (exprs!7836 c!10544)) EmptyLang!18384))))

(declare-fun b!7195154 () Bool)

(declare-fun tp!2000304 () Bool)

(assert (=> b!7195154 (= e!4320707 tp!2000304)))

(declare-fun b!7195155 () Bool)

(declare-fun res!2929108 () Bool)

(assert (=> b!7195155 (=> (not res!2929108) (not e!4320708))))

(declare-datatypes ((List!69874 0))(
  ( (Nil!69750) (Cons!69750 (h!76198 C!37042) (t!383901 List!69874)) )
))
(declare-fun s!7961 () List!69874)

(declare-fun isEmpty!40264 (List!69874) Bool)

(assert (=> b!7195155 (= res!2929108 (not (isEmpty!40264 s!7961)))))

(declare-fun b!7195156 () Bool)

(assert (=> b!7195156 (= e!4320708 e!4320710)))

(declare-fun res!2929107 () Bool)

(assert (=> b!7195156 (=> (not res!2929107) (not e!4320710))))

(declare-fun lt!2571549 () C!37042)

(declare-fun derivationStepZipperUp!2350 (Context!14672 C!37042) (Set Context!14672))

(assert (=> b!7195156 (= res!2929107 (= (derivationStepZipperUp!2350 c!10544 lt!2571549) (as set.empty (Set Context!14672))))))

(declare-fun derivationStepZipper!3243 ((Set Context!14672) C!37042) (Set Context!14672))

(assert (=> b!7195156 (= lt!2571550 (derivationStepZipper!3243 z!3517 lt!2571549))))

(declare-fun head!14730 (List!69874) C!37042)

(assert (=> b!7195156 (= lt!2571549 (head!14730 s!7961))))

(assert (= (and start!700140 res!2929106) b!7195152))

(assert (= (and b!7195152 res!2929105) b!7195153))

(assert (= (and b!7195153 res!2929110) b!7195155))

(assert (= (and b!7195155 res!2929108) b!7195156))

(assert (= (and b!7195156 res!2929107) b!7195151))

(assert (= (and b!7195151 res!2929109) b!7195149))

(assert (= (and start!700140 condSetEmpty!53381) setIsEmpty!53381))

(assert (= (and start!700140 (not condSetEmpty!53381)) setNonEmpty!53381))

(assert (= setNonEmpty!53381 b!7195154))

(assert (= start!700140 b!7195150))

(assert (= (and start!700140 (is-Cons!69750 s!7961)) b!7195148))

(declare-fun m!7889254 () Bool)

(assert (=> b!7195149 m!7889254))

(assert (=> b!7195149 m!7889254))

(declare-fun m!7889256 () Bool)

(assert (=> b!7195149 m!7889256))

(declare-fun m!7889258 () Bool)

(assert (=> b!7195149 m!7889258))

(assert (=> b!7195149 m!7889256))

(declare-fun m!7889260 () Bool)

(assert (=> b!7195149 m!7889260))

(declare-fun m!7889262 () Bool)

(assert (=> setNonEmpty!53381 m!7889262))

(declare-fun m!7889264 () Bool)

(assert (=> b!7195156 m!7889264))

(declare-fun m!7889266 () Bool)

(assert (=> b!7195156 m!7889266))

(declare-fun m!7889268 () Bool)

(assert (=> b!7195156 m!7889268))

(declare-fun m!7889270 () Bool)

(assert (=> b!7195155 m!7889270))

(declare-fun m!7889272 () Bool)

(assert (=> start!700140 m!7889272))

(declare-fun m!7889274 () Bool)

(assert (=> start!700140 m!7889274))

(declare-fun m!7889276 () Bool)

(assert (=> b!7195153 m!7889276))

(declare-fun m!7889278 () Bool)

(assert (=> b!7195152 m!7889278))

(push 1)

(assert (not b!7195155))

(assert (not setNonEmpty!53381))

(assert (not b!7195148))

(assert tp_is_empty!46325)

(assert (not b!7195152))

(assert (not b!7195154))

(assert (not b!7195153))

(assert (not b!7195149))

(assert (not start!700140))

(assert (not b!7195156))

(assert (not b!7195150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!656137 () Bool)

(declare-fun call!656142 () (Set Context!14672))

(declare-fun derivationStepZipperDown!2527 (Regex!18384 Context!14672 C!37042) (Set Context!14672))

(assert (=> bm!656137 (= call!656142 (derivationStepZipperDown!2527 (h!76196 (exprs!7836 c!10544)) (Context!14673 (t!383899 (exprs!7836 c!10544))) lt!2571549))))

(declare-fun d!2241365 () Bool)

(declare-fun c!1339176 () Bool)

(declare-fun e!4320734 () Bool)

(assert (=> d!2241365 (= c!1339176 e!4320734)))

(declare-fun res!2929131 () Bool)

(assert (=> d!2241365 (=> (not res!2929131) (not e!4320734))))

(assert (=> d!2241365 (= res!2929131 (is-Cons!69748 (exprs!7836 c!10544)))))

(declare-fun e!4320732 () (Set Context!14672))

(assert (=> d!2241365 (= (derivationStepZipperUp!2350 c!10544 lt!2571549) e!4320732)))

(declare-fun b!7195198 () Bool)

(assert (=> b!7195198 (= e!4320732 (set.union call!656142 (derivationStepZipperUp!2350 (Context!14673 (t!383899 (exprs!7836 c!10544))) lt!2571549)))))

(declare-fun b!7195199 () Bool)

(declare-fun e!4320733 () (Set Context!14672))

(assert (=> b!7195199 (= e!4320732 e!4320733)))

(declare-fun c!1339177 () Bool)

(assert (=> b!7195199 (= c!1339177 (is-Cons!69748 (exprs!7836 c!10544)))))

(declare-fun b!7195200 () Bool)

(assert (=> b!7195200 (= e!4320733 call!656142)))

(declare-fun b!7195201 () Bool)

(assert (=> b!7195201 (= e!4320733 (as set.empty (Set Context!14672)))))

(declare-fun b!7195202 () Bool)

(declare-fun nullable!7796 (Regex!18384) Bool)

(assert (=> b!7195202 (= e!4320734 (nullable!7796 (h!76196 (exprs!7836 c!10544))))))

(assert (= (and d!2241365 res!2929131) b!7195202))

(assert (= (and d!2241365 c!1339176) b!7195198))

(assert (= (and d!2241365 (not c!1339176)) b!7195199))

(assert (= (and b!7195199 c!1339177) b!7195200))

(assert (= (and b!7195199 (not c!1339177)) b!7195201))

(assert (= (or b!7195198 b!7195200) bm!656137))

(declare-fun m!7889306 () Bool)

(assert (=> bm!656137 m!7889306))

(declare-fun m!7889308 () Bool)

(assert (=> b!7195198 m!7889308))

(declare-fun m!7889310 () Bool)

(assert (=> b!7195202 m!7889310))

(assert (=> b!7195156 d!2241365))

(declare-fun bs!1900500 () Bool)

(declare-fun d!2241367 () Bool)

(assert (= bs!1900500 (and d!2241367 b!7195149)))

(declare-fun lambda!438086 () Int)

(assert (=> bs!1900500 (= lambda!438086 lambda!438077)))

(assert (=> d!2241367 true))

(assert (=> d!2241367 (= (derivationStepZipper!3243 z!3517 lt!2571549) (flatMap!2683 z!3517 lambda!438086))))

(declare-fun bs!1900501 () Bool)

(assert (= bs!1900501 d!2241367))

(declare-fun m!7889314 () Bool)

(assert (=> bs!1900501 m!7889314))

(assert (=> b!7195156 d!2241367))

(declare-fun d!2241371 () Bool)

(assert (=> d!2241371 (= (head!14730 s!7961) (h!76198 s!7961))))

(assert (=> b!7195156 d!2241371))

(declare-fun d!2241375 () Bool)

(declare-fun lambda!438089 () Int)

(declare-fun forall!17207 (List!69872 Int) Bool)

(assert (=> d!2241375 (= (inv!88983 c!10544) (forall!17207 (exprs!7836 c!10544) lambda!438089))))

(declare-fun bs!1900502 () Bool)

(assert (= bs!1900502 d!2241375))

(declare-fun m!7889316 () Bool)

(assert (=> bs!1900502 m!7889316))

(assert (=> start!700140 d!2241375))

(declare-fun d!2241379 () Bool)

(assert (=> d!2241379 (= (isEmpty!40263 (exprs!7836 c!10544)) (is-Nil!69748 (exprs!7836 c!10544)))))

(assert (=> b!7195152 d!2241379))

(declare-fun bs!1900503 () Bool)

(declare-fun d!2241381 () Bool)

(assert (= bs!1900503 (and d!2241381 d!2241375)))

(declare-fun lambda!438090 () Int)

(assert (=> bs!1900503 (= lambda!438090 lambda!438089)))

(assert (=> d!2241381 (= (inv!88983 setElem!53381) (forall!17207 (exprs!7836 setElem!53381) lambda!438090))))

(declare-fun bs!1900504 () Bool)

(assert (= bs!1900504 d!2241381))

(declare-fun m!7889318 () Bool)

(assert (=> bs!1900504 m!7889318))

(assert (=> setNonEmpty!53381 d!2241381))

(declare-fun d!2241383 () Bool)

(assert (=> d!2241383 (= (head!14728 (toList!11321 lt!2571550)) (h!76197 (toList!11321 lt!2571550)))))

(assert (=> b!7195149 d!2241383))

(declare-fun d!2241385 () Bool)

(declare-fun e!4320740 () Bool)

(assert (=> d!2241385 e!4320740))

(declare-fun res!2929137 () Bool)

(assert (=> d!2241385 (=> (not res!2929137) (not e!4320740))))

(declare-fun lt!2571562 () List!69873)

(declare-fun noDuplicate!2904 (List!69873) Bool)

(assert (=> d!2241385 (= res!2929137 (noDuplicate!2904 lt!2571562))))

(declare-fun choose!55428 ((Set Context!14672)) List!69873)

(assert (=> d!2241385 (= lt!2571562 (choose!55428 lt!2571550))))

(assert (=> d!2241385 (= (toList!11321 lt!2571550) lt!2571562)))

(declare-fun b!7195208 () Bool)

(declare-fun content!14333 (List!69873) (Set Context!14672))

(assert (=> b!7195208 (= e!4320740 (= (content!14333 lt!2571562) lt!2571550))))

(assert (= (and d!2241385 res!2929137) b!7195208))

(declare-fun m!7889328 () Bool)

(assert (=> d!2241385 m!7889328))

(declare-fun m!7889330 () Bool)

(assert (=> d!2241385 m!7889330))

(declare-fun m!7889332 () Bool)

(assert (=> b!7195208 m!7889332))

(assert (=> b!7195149 d!2241385))

(declare-fun d!2241391 () Bool)

(declare-fun choose!55429 ((Set Context!14672) Int) (Set Context!14672))

(assert (=> d!2241391 (= (flatMap!2683 z!3517 lambda!438077) (choose!55429 z!3517 lambda!438077))))

(declare-fun bs!1900507 () Bool)

(assert (= bs!1900507 d!2241391))

(declare-fun m!7889334 () Bool)

(assert (=> bs!1900507 m!7889334))

(assert (=> b!7195149 d!2241391))

(declare-fun d!2241395 () Bool)

(assert (=> d!2241395 (= (head!14729 (exprs!7836 c!10544)) (h!76196 (exprs!7836 c!10544)))))

(assert (=> b!7195153 d!2241395))

(declare-fun d!2241399 () Bool)

(assert (=> d!2241399 (= (isEmpty!40264 s!7961) (is-Nil!69750 s!7961))))

(assert (=> b!7195155 d!2241399))

(declare-fun b!7195213 () Bool)

(declare-fun e!4320743 () Bool)

(declare-fun tp!2000319 () Bool)

(assert (=> b!7195213 (= e!4320743 (and tp_is_empty!46325 tp!2000319))))

(assert (=> b!7195148 (= tp!2000302 e!4320743)))

(assert (= (and b!7195148 (is-Cons!69750 (t!383901 s!7961))) b!7195213))

(declare-fun condSetEmpty!53387 () Bool)

(assert (=> setNonEmpty!53381 (= condSetEmpty!53387 (= setRest!53381 (as set.empty (Set Context!14672))))))

(declare-fun setRes!53387 () Bool)

(assert (=> setNonEmpty!53381 (= tp!2000301 setRes!53387)))

(declare-fun setIsEmpty!53387 () Bool)

(assert (=> setIsEmpty!53387 setRes!53387))

(declare-fun tp!2000324 () Bool)

(declare-fun e!4320746 () Bool)

(declare-fun setNonEmpty!53387 () Bool)

(declare-fun setElem!53387 () Context!14672)

(assert (=> setNonEmpty!53387 (= setRes!53387 (and tp!2000324 (inv!88983 setElem!53387) e!4320746))))

(declare-fun setRest!53387 () (Set Context!14672))

(assert (=> setNonEmpty!53387 (= setRest!53381 (set.union (set.insert setElem!53387 (as set.empty (Set Context!14672))) setRest!53387))))

(declare-fun b!7195218 () Bool)

(declare-fun tp!2000325 () Bool)

(assert (=> b!7195218 (= e!4320746 tp!2000325)))

(assert (= (and setNonEmpty!53381 condSetEmpty!53387) setIsEmpty!53387))

(assert (= (and setNonEmpty!53381 (not condSetEmpty!53387)) setNonEmpty!53387))

(assert (= setNonEmpty!53387 b!7195218))

(declare-fun m!7889338 () Bool)

(assert (=> setNonEmpty!53387 m!7889338))

(declare-fun b!7195223 () Bool)

(declare-fun e!4320749 () Bool)

(declare-fun tp!2000330 () Bool)

(declare-fun tp!2000331 () Bool)

(assert (=> b!7195223 (= e!4320749 (and tp!2000330 tp!2000331))))

(assert (=> b!7195154 (= tp!2000304 e!4320749)))

(assert (= (and b!7195154 (is-Cons!69748 (exprs!7836 setElem!53381))) b!7195223))

(declare-fun b!7195224 () Bool)

(declare-fun e!4320750 () Bool)

(declare-fun tp!2000332 () Bool)

(declare-fun tp!2000333 () Bool)

(assert (=> b!7195224 (= e!4320750 (and tp!2000332 tp!2000333))))

(assert (=> b!7195150 (= tp!2000303 e!4320750)))

(assert (= (and b!7195150 (is-Cons!69748 (exprs!7836 c!10544))) b!7195224))

(push 1)

(assert (not d!2241367))

(assert (not b!7195223))

(assert (not bm!656137))

(assert (not b!7195198))

(assert tp_is_empty!46325)

(assert (not d!2241391))

(assert (not b!7195213))

(assert (not d!2241381))

(assert (not b!7195218))

(assert (not b!7195202))

(assert (not b!7195208))

(assert (not d!2241375))

(assert (not setNonEmpty!53387))

(assert (not d!2241385))

(assert (not b!7195224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1900511 () Bool)

(declare-fun d!2241407 () Bool)

(assert (= bs!1900511 (and d!2241407 d!2241375)))

(declare-fun lambda!438095 () Int)

(assert (=> bs!1900511 (= lambda!438095 lambda!438089)))

(declare-fun bs!1900512 () Bool)

(assert (= bs!1900512 (and d!2241407 d!2241381)))

(assert (=> bs!1900512 (= lambda!438095 lambda!438090)))

(assert (=> d!2241407 (= (inv!88983 setElem!53387) (forall!17207 (exprs!7836 setElem!53387) lambda!438095))))

(declare-fun bs!1900513 () Bool)

(assert (= bs!1900513 d!2241407))

(declare-fun m!7889350 () Bool)

(assert (=> bs!1900513 m!7889350))

(assert (=> setNonEmpty!53387 d!2241407))

(declare-fun d!2241409 () Bool)

(declare-fun res!2929145 () Bool)

(declare-fun e!4320774 () Bool)

(assert (=> d!2241409 (=> res!2929145 e!4320774)))

(assert (=> d!2241409 (= res!2929145 (is-Nil!69748 (exprs!7836 c!10544)))))

(assert (=> d!2241409 (= (forall!17207 (exprs!7836 c!10544) lambda!438089) e!4320774)))

(declare-fun b!7195260 () Bool)

(declare-fun e!4320775 () Bool)

(assert (=> b!7195260 (= e!4320774 e!4320775)))

(declare-fun res!2929146 () Bool)

(assert (=> b!7195260 (=> (not res!2929146) (not e!4320775))))

(declare-fun dynLambda!28400 (Int Regex!18384) Bool)

(assert (=> b!7195260 (= res!2929146 (dynLambda!28400 lambda!438089 (h!76196 (exprs!7836 c!10544))))))

(declare-fun b!7195261 () Bool)

(assert (=> b!7195261 (= e!4320775 (forall!17207 (t!383899 (exprs!7836 c!10544)) lambda!438089))))

(assert (= (and d!2241409 (not res!2929145)) b!7195260))

(assert (= (and b!7195260 res!2929146) b!7195261))

(declare-fun b_lambda!275835 () Bool)

(assert (=> (not b_lambda!275835) (not b!7195260)))

(declare-fun m!7889352 () Bool)

(assert (=> b!7195260 m!7889352))

(declare-fun m!7889354 () Bool)

(assert (=> b!7195261 m!7889354))

(assert (=> d!2241375 d!2241409))

(declare-fun d!2241411 () Bool)

(declare-fun nullableFct!3050 (Regex!18384) Bool)

(assert (=> d!2241411 (= (nullable!7796 (h!76196 (exprs!7836 c!10544))) (nullableFct!3050 (h!76196 (exprs!7836 c!10544))))))

(declare-fun bs!1900514 () Bool)

(assert (= bs!1900514 d!2241411))

(declare-fun m!7889356 () Bool)

(assert (=> bs!1900514 m!7889356))

(assert (=> b!7195202 d!2241411))

(declare-fun b!7195284 () Bool)

(declare-fun e!4320789 () (Set Context!14672))

(declare-fun e!4320791 () (Set Context!14672))

(assert (=> b!7195284 (= e!4320789 e!4320791)))

(declare-fun c!1339202 () Bool)

(assert (=> b!7195284 (= c!1339202 (is-Concat!27229 (h!76196 (exprs!7836 c!10544))))))

(declare-fun b!7195285 () Bool)

(declare-fun e!4320788 () (Set Context!14672))

(assert (=> b!7195285 (= e!4320788 (set.insert (Context!14673 (t!383899 (exprs!7836 c!10544))) (as set.empty (Set Context!14672))))))

(declare-fun b!7195286 () Bool)

(declare-fun e!4320792 () (Set Context!14672))

(declare-fun call!656163 () (Set Context!14672))

(assert (=> b!7195286 (= e!4320792 call!656163)))

(declare-fun b!7195287 () Bool)

(assert (=> b!7195287 (= e!4320791 call!656163)))

(declare-fun bm!656153 () Bool)

(declare-fun call!656160 () (Set Context!14672))

(declare-fun call!656159 () (Set Context!14672))

(assert (=> bm!656153 (= call!656160 call!656159)))

(declare-fun bm!656154 () Bool)

(declare-fun call!656162 () List!69872)

(declare-fun call!656158 () List!69872)

(assert (=> bm!656154 (= call!656162 call!656158)))

(declare-fun b!7195288 () Bool)

(declare-fun call!656161 () (Set Context!14672))

(assert (=> b!7195288 (= e!4320789 (set.union call!656161 call!656160))))

(declare-fun b!7195289 () Bool)

(assert (=> b!7195289 (= e!4320792 (as set.empty (Set Context!14672)))))

(declare-fun c!1339198 () Bool)

(declare-fun bm!656155 () Bool)

(declare-fun c!1339199 () Bool)

(assert (=> bm!656155 (= call!656159 (derivationStepZipperDown!2527 (ite c!1339199 (regTwo!37281 (h!76196 (exprs!7836 c!10544))) (ite c!1339198 (regTwo!37280 (h!76196 (exprs!7836 c!10544))) (ite c!1339202 (regOne!37280 (h!76196 (exprs!7836 c!10544))) (reg!18713 (h!76196 (exprs!7836 c!10544)))))) (ite (or c!1339199 c!1339198) (Context!14673 (t!383899 (exprs!7836 c!10544))) (Context!14673 call!656162)) lt!2571549))))

(declare-fun bm!656156 () Bool)

(assert (=> bm!656156 (= call!656161 (derivationStepZipperDown!2527 (ite c!1339199 (regOne!37281 (h!76196 (exprs!7836 c!10544))) (regOne!37280 (h!76196 (exprs!7836 c!10544)))) (ite c!1339199 (Context!14673 (t!383899 (exprs!7836 c!10544))) (Context!14673 call!656158)) lt!2571549))))

(declare-fun d!2241413 () Bool)

(declare-fun c!1339201 () Bool)

(assert (=> d!2241413 (= c!1339201 (and (is-ElementMatch!18384 (h!76196 (exprs!7836 c!10544))) (= (c!1339170 (h!76196 (exprs!7836 c!10544))) lt!2571549)))))

(assert (=> d!2241413 (= (derivationStepZipperDown!2527 (h!76196 (exprs!7836 c!10544)) (Context!14673 (t!383899 (exprs!7836 c!10544))) lt!2571549) e!4320788)))

(declare-fun b!7195290 () Bool)

(declare-fun c!1339200 () Bool)

(assert (=> b!7195290 (= c!1339200 (is-Star!18384 (h!76196 (exprs!7836 c!10544))))))

(assert (=> b!7195290 (= e!4320791 e!4320792)))

(declare-fun b!7195291 () Bool)

(declare-fun e!4320790 () Bool)

(assert (=> b!7195291 (= e!4320790 (nullable!7796 (regOne!37280 (h!76196 (exprs!7836 c!10544)))))))

(declare-fun bm!656157 () Bool)

(assert (=> bm!656157 (= call!656163 call!656160)))

(declare-fun b!7195292 () Bool)

(declare-fun e!4320793 () (Set Context!14672))

(assert (=> b!7195292 (= e!4320788 e!4320793)))

(assert (=> b!7195292 (= c!1339199 (is-Union!18384 (h!76196 (exprs!7836 c!10544))))))

(declare-fun b!7195293 () Bool)

(assert (=> b!7195293 (= e!4320793 (set.union call!656161 call!656159))))

(declare-fun b!7195294 () Bool)

(assert (=> b!7195294 (= c!1339198 e!4320790)))

(declare-fun res!2929149 () Bool)

(assert (=> b!7195294 (=> (not res!2929149) (not e!4320790))))

(assert (=> b!7195294 (= res!2929149 (is-Concat!27229 (h!76196 (exprs!7836 c!10544))))))

(assert (=> b!7195294 (= e!4320793 e!4320789)))

(declare-fun bm!656158 () Bool)

(declare-fun $colon$colon!2850 (List!69872 Regex!18384) List!69872)

(assert (=> bm!656158 (= call!656158 ($colon$colon!2850 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544)))) (ite (or c!1339198 c!1339202) (regTwo!37280 (h!76196 (exprs!7836 c!10544))) (h!76196 (exprs!7836 c!10544)))))))

(assert (= (and d!2241413 c!1339201) b!7195285))

(assert (= (and d!2241413 (not c!1339201)) b!7195292))

(assert (= (and b!7195292 c!1339199) b!7195293))

(assert (= (and b!7195292 (not c!1339199)) b!7195294))

(assert (= (and b!7195294 res!2929149) b!7195291))

(assert (= (and b!7195294 c!1339198) b!7195288))

(assert (= (and b!7195294 (not c!1339198)) b!7195284))

(assert (= (and b!7195284 c!1339202) b!7195287))

(assert (= (and b!7195284 (not c!1339202)) b!7195290))

(assert (= (and b!7195290 c!1339200) b!7195286))

(assert (= (and b!7195290 (not c!1339200)) b!7195289))

(assert (= (or b!7195287 b!7195286) bm!656154))

(assert (= (or b!7195287 b!7195286) bm!656157))

(assert (= (or b!7195288 bm!656157) bm!656153))

(assert (= (or b!7195288 bm!656154) bm!656158))

(assert (= (or b!7195293 b!7195288) bm!656156))

(assert (= (or b!7195293 bm!656153) bm!656155))

(declare-fun m!7889358 () Bool)

(assert (=> bm!656156 m!7889358))

(declare-fun m!7889360 () Bool)

(assert (=> b!7195291 m!7889360))

(declare-fun m!7889362 () Bool)

(assert (=> bm!656155 m!7889362))

(declare-fun m!7889364 () Bool)

(assert (=> b!7195285 m!7889364))

(declare-fun m!7889366 () Bool)

(assert (=> bm!656158 m!7889366))

(assert (=> bm!656137 d!2241413))

(declare-fun d!2241415 () Bool)

(assert (=> d!2241415 (= (flatMap!2683 z!3517 lambda!438086) (choose!55429 z!3517 lambda!438086))))

(declare-fun bs!1900515 () Bool)

(assert (= bs!1900515 d!2241415))

(declare-fun m!7889368 () Bool)

(assert (=> bs!1900515 m!7889368))

(assert (=> d!2241367 d!2241415))

(declare-fun bm!656159 () Bool)

(declare-fun call!656164 () (Set Context!14672))

(assert (=> bm!656159 (= call!656164 (derivationStepZipperDown!2527 (h!76196 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544))))) (Context!14673 (t!383899 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544)))))) lt!2571549))))

(declare-fun d!2241417 () Bool)

(declare-fun c!1339203 () Bool)

(declare-fun e!4320796 () Bool)

(assert (=> d!2241417 (= c!1339203 e!4320796)))

(declare-fun res!2929150 () Bool)

(assert (=> d!2241417 (=> (not res!2929150) (not e!4320796))))

(assert (=> d!2241417 (= res!2929150 (is-Cons!69748 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544))))))))

(declare-fun e!4320794 () (Set Context!14672))

(assert (=> d!2241417 (= (derivationStepZipperUp!2350 (Context!14673 (t!383899 (exprs!7836 c!10544))) lt!2571549) e!4320794)))

(declare-fun b!7195295 () Bool)

(assert (=> b!7195295 (= e!4320794 (set.union call!656164 (derivationStepZipperUp!2350 (Context!14673 (t!383899 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544)))))) lt!2571549)))))

(declare-fun b!7195296 () Bool)

(declare-fun e!4320795 () (Set Context!14672))

(assert (=> b!7195296 (= e!4320794 e!4320795)))

(declare-fun c!1339204 () Bool)

(assert (=> b!7195296 (= c!1339204 (is-Cons!69748 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544))))))))

(declare-fun b!7195297 () Bool)

(assert (=> b!7195297 (= e!4320795 call!656164)))

(declare-fun b!7195298 () Bool)

(assert (=> b!7195298 (= e!4320795 (as set.empty (Set Context!14672)))))

(declare-fun b!7195299 () Bool)

(assert (=> b!7195299 (= e!4320796 (nullable!7796 (h!76196 (exprs!7836 (Context!14673 (t!383899 (exprs!7836 c!10544)))))))))

(assert (= (and d!2241417 res!2929150) b!7195299))

(assert (= (and d!2241417 c!1339203) b!7195295))

(assert (= (and d!2241417 (not c!1339203)) b!7195296))

(assert (= (and b!7195296 c!1339204) b!7195297))

(assert (= (and b!7195296 (not c!1339204)) b!7195298))

(assert (= (or b!7195295 b!7195297) bm!656159))

(declare-fun m!7889370 () Bool)

(assert (=> bm!656159 m!7889370))

(declare-fun m!7889372 () Bool)

(assert (=> b!7195295 m!7889372))

(declare-fun m!7889374 () Bool)

(assert (=> b!7195299 m!7889374))

(assert (=> b!7195198 d!2241417))

(declare-fun d!2241419 () Bool)

(declare-fun res!2929151 () Bool)

(declare-fun e!4320797 () Bool)

(assert (=> d!2241419 (=> res!2929151 e!4320797)))

(assert (=> d!2241419 (= res!2929151 (is-Nil!69748 (exprs!7836 setElem!53381)))))

(assert (=> d!2241419 (= (forall!17207 (exprs!7836 setElem!53381) lambda!438090) e!4320797)))

(declare-fun b!7195300 () Bool)

(declare-fun e!4320798 () Bool)

(assert (=> b!7195300 (= e!4320797 e!4320798)))

(declare-fun res!2929152 () Bool)

(assert (=> b!7195300 (=> (not res!2929152) (not e!4320798))))

(assert (=> b!7195300 (= res!2929152 (dynLambda!28400 lambda!438090 (h!76196 (exprs!7836 setElem!53381))))))

(declare-fun b!7195301 () Bool)

(assert (=> b!7195301 (= e!4320798 (forall!17207 (t!383899 (exprs!7836 setElem!53381)) lambda!438090))))

(assert (= (and d!2241419 (not res!2929151)) b!7195300))

(assert (= (and b!7195300 res!2929152) b!7195301))

(declare-fun b_lambda!275837 () Bool)

(assert (=> (not b_lambda!275837) (not b!7195300)))

(declare-fun m!7889376 () Bool)

(assert (=> b!7195300 m!7889376))

(declare-fun m!7889378 () Bool)

(assert (=> b!7195301 m!7889378))

(assert (=> d!2241381 d!2241419))

(declare-fun d!2241421 () Bool)

(declare-fun c!1339207 () Bool)

(assert (=> d!2241421 (= c!1339207 (is-Nil!69749 lt!2571562))))

(declare-fun e!4320801 () (Set Context!14672))

(assert (=> d!2241421 (= (content!14333 lt!2571562) e!4320801)))

(declare-fun b!7195306 () Bool)

(assert (=> b!7195306 (= e!4320801 (as set.empty (Set Context!14672)))))

(declare-fun b!7195307 () Bool)

(assert (=> b!7195307 (= e!4320801 (set.union (set.insert (h!76197 lt!2571562) (as set.empty (Set Context!14672))) (content!14333 (t!383900 lt!2571562))))))

(assert (= (and d!2241421 c!1339207) b!7195306))

(assert (= (and d!2241421 (not c!1339207)) b!7195307))

(declare-fun m!7889380 () Bool)

(assert (=> b!7195307 m!7889380))

(declare-fun m!7889382 () Bool)

(assert (=> b!7195307 m!7889382))

(assert (=> b!7195208 d!2241421))

(declare-fun d!2241423 () Bool)

(assert (=> d!2241423 true))

(declare-fun setRes!53393 () Bool)

(assert (=> d!2241423 setRes!53393))

(declare-fun condSetEmpty!53393 () Bool)

(declare-fun res!2929155 () (Set Context!14672))

(assert (=> d!2241423 (= condSetEmpty!53393 (= res!2929155 (as set.empty (Set Context!14672))))))

(assert (=> d!2241423 (= (choose!55429 z!3517 lambda!438077) res!2929155)))

(declare-fun setIsEmpty!53393 () Bool)

(assert (=> setIsEmpty!53393 setRes!53393))

(declare-fun setElem!53393 () Context!14672)

(declare-fun setNonEmpty!53393 () Bool)

(declare-fun tp!2000355 () Bool)

(declare-fun e!4320804 () Bool)

(assert (=> setNonEmpty!53393 (= setRes!53393 (and tp!2000355 (inv!88983 setElem!53393) e!4320804))))

(declare-fun setRest!53393 () (Set Context!14672))

(assert (=> setNonEmpty!53393 (= res!2929155 (set.union (set.insert setElem!53393 (as set.empty (Set Context!14672))) setRest!53393))))

(declare-fun b!7195310 () Bool)

(declare-fun tp!2000356 () Bool)

(assert (=> b!7195310 (= e!4320804 tp!2000356)))

(assert (= (and d!2241423 condSetEmpty!53393) setIsEmpty!53393))

(assert (= (and d!2241423 (not condSetEmpty!53393)) setNonEmpty!53393))

(assert (= setNonEmpty!53393 b!7195310))

(declare-fun m!7889384 () Bool)

(assert (=> setNonEmpty!53393 m!7889384))

(assert (=> d!2241391 d!2241423))

(declare-fun d!2241425 () Bool)

(declare-fun res!2929160 () Bool)

(declare-fun e!4320809 () Bool)

(assert (=> d!2241425 (=> res!2929160 e!4320809)))

(assert (=> d!2241425 (= res!2929160 (is-Nil!69749 lt!2571562))))

(assert (=> d!2241425 (= (noDuplicate!2904 lt!2571562) e!4320809)))

(declare-fun b!7195315 () Bool)

(declare-fun e!4320810 () Bool)

(assert (=> b!7195315 (= e!4320809 e!4320810)))

(declare-fun res!2929161 () Bool)

(assert (=> b!7195315 (=> (not res!2929161) (not e!4320810))))

(declare-fun contains!20727 (List!69873 Context!14672) Bool)

(assert (=> b!7195315 (= res!2929161 (not (contains!20727 (t!383900 lt!2571562) (h!76197 lt!2571562))))))

(declare-fun b!7195316 () Bool)

(assert (=> b!7195316 (= e!4320810 (noDuplicate!2904 (t!383900 lt!2571562)))))

(assert (= (and d!2241425 (not res!2929160)) b!7195315))

(assert (= (and b!7195315 res!2929161) b!7195316))

(declare-fun m!7889386 () Bool)

(assert (=> b!7195315 m!7889386))

(declare-fun m!7889388 () Bool)

(assert (=> b!7195316 m!7889388))

(assert (=> d!2241385 d!2241425))

(declare-fun d!2241427 () Bool)

(declare-fun e!4320819 () Bool)

(assert (=> d!2241427 e!4320819))

(declare-fun res!2929167 () Bool)

(assert (=> d!2241427 (=> (not res!2929167) (not e!4320819))))

(declare-fun res!2929166 () List!69873)

(assert (=> d!2241427 (= res!2929167 (noDuplicate!2904 res!2929166))))

(declare-fun e!4320817 () Bool)

(assert (=> d!2241427 e!4320817))

(assert (=> d!2241427 (= (choose!55428 lt!2571550) res!2929166)))

(declare-fun b!7195324 () Bool)

(declare-fun e!4320818 () Bool)

(declare-fun tp!2000361 () Bool)

(assert (=> b!7195324 (= e!4320818 tp!2000361)))

(declare-fun b!7195323 () Bool)

(declare-fun tp!2000362 () Bool)

(assert (=> b!7195323 (= e!4320817 (and (inv!88983 (h!76197 res!2929166)) e!4320818 tp!2000362))))

(declare-fun b!7195325 () Bool)

(assert (=> b!7195325 (= e!4320819 (= (content!14333 res!2929166) lt!2571550))))

(assert (= b!7195323 b!7195324))

(assert (= (and d!2241427 (is-Cons!69749 res!2929166)) b!7195323))

(assert (= (and d!2241427 res!2929167) b!7195325))

(declare-fun m!7889390 () Bool)

(assert (=> d!2241427 m!7889390))

(declare-fun m!7889392 () Bool)

(assert (=> b!7195323 m!7889392))

(declare-fun m!7889394 () Bool)

(assert (=> b!7195325 m!7889394))

(assert (=> d!2241385 d!2241427))

(declare-fun condSetEmpty!53394 () Bool)

(assert (=> setNonEmpty!53387 (= condSetEmpty!53394 (= setRest!53387 (as set.empty (Set Context!14672))))))

(declare-fun setRes!53394 () Bool)

(assert (=> setNonEmpty!53387 (= tp!2000324 setRes!53394)))

(declare-fun setIsEmpty!53394 () Bool)

(assert (=> setIsEmpty!53394 setRes!53394))

(declare-fun setElem!53394 () Context!14672)

(declare-fun tp!2000363 () Bool)

(declare-fun e!4320820 () Bool)

(declare-fun setNonEmpty!53394 () Bool)

(assert (=> setNonEmpty!53394 (= setRes!53394 (and tp!2000363 (inv!88983 setElem!53394) e!4320820))))

(declare-fun setRest!53394 () (Set Context!14672))

(assert (=> setNonEmpty!53394 (= setRest!53387 (set.union (set.insert setElem!53394 (as set.empty (Set Context!14672))) setRest!53394))))

(declare-fun b!7195326 () Bool)

(declare-fun tp!2000364 () Bool)

(assert (=> b!7195326 (= e!4320820 tp!2000364)))

(assert (= (and setNonEmpty!53387 condSetEmpty!53394) setIsEmpty!53394))

(assert (= (and setNonEmpty!53387 (not condSetEmpty!53394)) setNonEmpty!53394))

(assert (= setNonEmpty!53394 b!7195326))

(declare-fun m!7889396 () Bool)

(assert (=> setNonEmpty!53394 m!7889396))

(declare-fun b!7195327 () Bool)

(declare-fun e!4320821 () Bool)

(declare-fun tp!2000365 () Bool)

(declare-fun tp!2000366 () Bool)

(assert (=> b!7195327 (= e!4320821 (and tp!2000365 tp!2000366))))

(assert (=> b!7195218 (= tp!2000325 e!4320821)))

(assert (= (and b!7195218 (is-Cons!69748 (exprs!7836 setElem!53387))) b!7195327))

(declare-fun b!7195328 () Bool)

(declare-fun e!4320822 () Bool)

(declare-fun tp!2000367 () Bool)

(assert (=> b!7195328 (= e!4320822 (and tp_is_empty!46325 tp!2000367))))

(assert (=> b!7195213 (= tp!2000319 e!4320822)))

(assert (= (and b!7195213 (is-Cons!69750 (t!383901 (t!383901 s!7961)))) b!7195328))

(declare-fun e!4320825 () Bool)

(assert (=> b!7195224 (= tp!2000332 e!4320825)))

(declare-fun b!7195342 () Bool)

(declare-fun tp!2000382 () Bool)

(declare-fun tp!2000380 () Bool)

(assert (=> b!7195342 (= e!4320825 (and tp!2000382 tp!2000380))))

(declare-fun b!7195339 () Bool)

(assert (=> b!7195339 (= e!4320825 tp_is_empty!46325)))

(declare-fun b!7195341 () Bool)

(declare-fun tp!2000379 () Bool)

(assert (=> b!7195341 (= e!4320825 tp!2000379)))

(declare-fun b!7195340 () Bool)

(declare-fun tp!2000378 () Bool)

(declare-fun tp!2000381 () Bool)

(assert (=> b!7195340 (= e!4320825 (and tp!2000378 tp!2000381))))

(assert (= (and b!7195224 (is-ElementMatch!18384 (h!76196 (exprs!7836 c!10544)))) b!7195339))

(assert (= (and b!7195224 (is-Concat!27229 (h!76196 (exprs!7836 c!10544)))) b!7195340))

(assert (= (and b!7195224 (is-Star!18384 (h!76196 (exprs!7836 c!10544)))) b!7195341))

(assert (= (and b!7195224 (is-Union!18384 (h!76196 (exprs!7836 c!10544)))) b!7195342))

(declare-fun b!7195343 () Bool)

(declare-fun e!4320826 () Bool)

(declare-fun tp!2000383 () Bool)

(declare-fun tp!2000384 () Bool)

(assert (=> b!7195343 (= e!4320826 (and tp!2000383 tp!2000384))))

(assert (=> b!7195224 (= tp!2000333 e!4320826)))

(assert (= (and b!7195224 (is-Cons!69748 (t!383899 (exprs!7836 c!10544)))) b!7195343))

(declare-fun e!4320827 () Bool)

(assert (=> b!7195223 (= tp!2000330 e!4320827)))

(declare-fun b!7195347 () Bool)

(declare-fun tp!2000389 () Bool)

(declare-fun tp!2000387 () Bool)

(assert (=> b!7195347 (= e!4320827 (and tp!2000389 tp!2000387))))

(declare-fun b!7195344 () Bool)

(assert (=> b!7195344 (= e!4320827 tp_is_empty!46325)))

(declare-fun b!7195346 () Bool)

(declare-fun tp!2000386 () Bool)

(assert (=> b!7195346 (= e!4320827 tp!2000386)))

(declare-fun b!7195345 () Bool)

(declare-fun tp!2000385 () Bool)

(declare-fun tp!2000388 () Bool)

(assert (=> b!7195345 (= e!4320827 (and tp!2000385 tp!2000388))))

(assert (= (and b!7195223 (is-ElementMatch!18384 (h!76196 (exprs!7836 setElem!53381)))) b!7195344))

(assert (= (and b!7195223 (is-Concat!27229 (h!76196 (exprs!7836 setElem!53381)))) b!7195345))

(assert (= (and b!7195223 (is-Star!18384 (h!76196 (exprs!7836 setElem!53381)))) b!7195346))

(assert (= (and b!7195223 (is-Union!18384 (h!76196 (exprs!7836 setElem!53381)))) b!7195347))

(declare-fun b!7195348 () Bool)

(declare-fun e!4320828 () Bool)

(declare-fun tp!2000390 () Bool)

(declare-fun tp!2000391 () Bool)

(assert (=> b!7195348 (= e!4320828 (and tp!2000390 tp!2000391))))

(assert (=> b!7195223 (= tp!2000331 e!4320828)))

(assert (= (and b!7195223 (is-Cons!69748 (t!383899 (exprs!7836 setElem!53381)))) b!7195348))

(declare-fun b_lambda!275839 () Bool)

(assert (= b_lambda!275837 (or d!2241381 b_lambda!275839)))

(declare-fun bs!1900516 () Bool)

(declare-fun d!2241429 () Bool)

(assert (= bs!1900516 (and d!2241429 d!2241381)))

(declare-fun validRegex!9484 (Regex!18384) Bool)

(assert (=> bs!1900516 (= (dynLambda!28400 lambda!438090 (h!76196 (exprs!7836 setElem!53381))) (validRegex!9484 (h!76196 (exprs!7836 setElem!53381))))))

(declare-fun m!7889398 () Bool)

(assert (=> bs!1900516 m!7889398))

(assert (=> b!7195300 d!2241429))

(declare-fun b_lambda!275841 () Bool)

(assert (= b_lambda!275835 (or d!2241375 b_lambda!275841)))

(declare-fun bs!1900517 () Bool)

(declare-fun d!2241431 () Bool)

(assert (= bs!1900517 (and d!2241431 d!2241375)))

(assert (=> bs!1900517 (= (dynLambda!28400 lambda!438089 (h!76196 (exprs!7836 c!10544))) (validRegex!9484 (h!76196 (exprs!7836 c!10544))))))

(declare-fun m!7889400 () Bool)

(assert (=> bs!1900517 m!7889400))

(assert (=> b!7195260 d!2241431))

(push 1)

(assert (not b!7195291))

(assert (not b!7195323))

(assert (not bm!656155))

(assert (not b!7195326))

(assert (not d!2241415))

(assert (not b!7195347))

(assert (not b!7195328))

(assert (not bm!656159))

(assert (not b!7195310))

(assert (not b!7195342))

(assert (not b!7195307))

(assert (not b!7195325))

(assert (not bs!1900516))

(assert (not b!7195299))

(assert (not b_lambda!275839))

(assert (not b!7195261))

(assert (not b!7195343))

(assert (not d!2241407))

(assert (not b!7195340))

(assert (not b!7195301))

(assert tp_is_empty!46325)

(assert (not bm!656156))

(assert (not b!7195315))

(assert (not bm!656158))

(assert (not b!7195341))

(assert (not b!7195346))

(assert (not b!7195327))

(assert (not setNonEmpty!53394))

(assert (not setNonEmpty!53393))

(assert (not b!7195316))

(assert (not b!7195345))

(assert (not b_lambda!275841))

(assert (not bs!1900517))

(assert (not b!7195348))

(assert (not b!7195295))

(assert (not d!2241427))

(assert (not d!2241411))

(assert (not b!7195324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

