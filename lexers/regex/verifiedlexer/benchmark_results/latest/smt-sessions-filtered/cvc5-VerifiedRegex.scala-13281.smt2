; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722516 () Bool)

(assert start!722516)

(declare-fun b!7434181 () Bool)

(assert (=> b!7434181 true))

(declare-fun b!7434180 () Bool)

(declare-fun e!4440229 () Bool)

(declare-fun tp_is_empty!49135 () Bool)

(declare-fun tp!2145435 () Bool)

(assert (=> b!7434180 (= e!4440229 (and tp_is_empty!49135 tp!2145435))))

(declare-fun setIsEmpty!56472 () Bool)

(declare-fun setRes!56472 () Bool)

(assert (=> setIsEmpty!56472 setRes!56472))

(declare-fun e!4440228 () Bool)

(declare-fun e!4440230 () Bool)

(assert (=> b!7434181 (= e!4440228 e!4440230)))

(declare-fun res!2985284 () Bool)

(assert (=> b!7434181 (=> (not res!2985284) (not e!4440230))))

(declare-datatypes ((C!39146 0))(
  ( (C!39147 (val!29947 Int)) )
))
(declare-datatypes ((Regex!19436 0))(
  ( (ElementMatch!19436 (c!1376384 C!39146)) (Concat!28281 (regOne!39384 Regex!19436) (regTwo!39384 Regex!19436)) (EmptyExpr!19436) (Star!19436 (reg!19765 Regex!19436)) (EmptyLang!19436) (Union!19436 (regOne!39385 Regex!19436) (regTwo!39385 Regex!19436)) )
))
(declare-datatypes ((List!72086 0))(
  ( (Nil!71962) (Cons!71962 (h!78410 Regex!19436) (t!386647 List!72086)) )
))
(declare-datatypes ((Context!16752 0))(
  ( (Context!16753 (exprs!8876 List!72086)) )
))
(declare-fun z!3488 () (Set Context!16752))

(declare-fun lambda!460240 () Int)

(declare-fun lt!2619194 () Context!16752)

(declare-fun flatMap!3226 ((Set Context!16752) Int) (Set Context!16752))

(assert (=> b!7434181 (= res!2985284 (set.member lt!2619194 (flatMap!3226 z!3488 lambda!460240)))))

(declare-fun lt!2619195 () (Set Context!16752))

(declare-datatypes ((List!72087 0))(
  ( (Nil!71963) (Cons!71963 (h!78411 Context!16752) (t!386648 List!72087)) )
))
(declare-fun head!15250 (List!72087) Context!16752)

(declare-fun toList!11779 ((Set Context!16752)) List!72087)

(assert (=> b!7434181 (= lt!2619194 (head!15250 (toList!11779 lt!2619195)))))

(declare-fun res!2985282 () Bool)

(declare-fun e!4440232 () Bool)

(assert (=> start!722516 (=> (not res!2985282) (not e!4440232))))

(declare-fun lt!2619196 () Context!16752)

(declare-datatypes ((List!72088 0))(
  ( (Nil!71964) (Cons!71964 (h!78412 C!39146) (t!386649 List!72088)) )
))
(declare-fun s!7945 () List!72088)

(assert (=> start!722516 (= res!2985282 (and (= z!3488 (set.insert lt!2619196 (as set.empty (Set Context!16752)))) (is-Cons!71964 s!7945)))))

(assert (=> start!722516 (= lt!2619196 (Context!16753 Nil!71962))))

(assert (=> start!722516 e!4440232))

(declare-fun condSetEmpty!56472 () Bool)

(assert (=> start!722516 (= condSetEmpty!56472 (= z!3488 (as set.empty (Set Context!16752))))))

(assert (=> start!722516 setRes!56472))

(assert (=> start!722516 e!4440229))

(declare-fun b!7434182 () Bool)

(declare-fun res!2985281 () Bool)

(assert (=> b!7434182 (=> (not res!2985281) (not e!4440228))))

(assert (=> b!7434182 (= res!2985281 (not (= lt!2619195 (as set.empty (Set Context!16752)))))))

(declare-fun b!7434183 () Bool)

(declare-fun e!4440231 () Bool)

(declare-fun tp!2145433 () Bool)

(assert (=> b!7434183 (= e!4440231 tp!2145433)))

(declare-fun b!7434184 () Bool)

(assert (=> b!7434184 (= e!4440232 e!4440228)))

(declare-fun res!2985283 () Bool)

(assert (=> b!7434184 (=> (not res!2985283) (not e!4440228))))

(declare-fun derivationStepZipperUp!2832 (Context!16752 C!39146) (Set Context!16752))

(assert (=> b!7434184 (= res!2985283 (= (derivationStepZipperUp!2832 lt!2619196 (h!78412 s!7945)) (as set.empty (Set Context!16752))))))

(declare-fun derivationStepZipper!3702 ((Set Context!16752) C!39146) (Set Context!16752))

(assert (=> b!7434184 (= lt!2619195 (derivationStepZipper!3702 z!3488 (h!78412 s!7945)))))

(declare-fun tp!2145434 () Bool)

(declare-fun setElem!56472 () Context!16752)

(declare-fun setNonEmpty!56472 () Bool)

(declare-fun inv!91952 (Context!16752) Bool)

(assert (=> setNonEmpty!56472 (= setRes!56472 (and tp!2145434 (inv!91952 setElem!56472) e!4440231))))

(declare-fun setRest!56472 () (Set Context!16752))

(assert (=> setNonEmpty!56472 (= z!3488 (set.union (set.insert setElem!56472 (as set.empty (Set Context!16752))) setRest!56472))))

(declare-fun b!7434185 () Bool)

(assert (=> b!7434185 (= e!4440230 (not (set.member lt!2619194 lt!2619195)))))

(assert (= (and start!722516 res!2985282) b!7434184))

(assert (= (and b!7434184 res!2985283) b!7434182))

(assert (= (and b!7434182 res!2985281) b!7434181))

(assert (= (and b!7434181 res!2985284) b!7434185))

(assert (= (and start!722516 condSetEmpty!56472) setIsEmpty!56472))

(assert (= (and start!722516 (not condSetEmpty!56472)) setNonEmpty!56472))

(assert (= setNonEmpty!56472 b!7434183))

(assert (= (and start!722516 (is-Cons!71964 s!7945)) b!7434180))

(declare-fun m!8050100 () Bool)

(assert (=> start!722516 m!8050100))

(declare-fun m!8050102 () Bool)

(assert (=> b!7434185 m!8050102))

(declare-fun m!8050104 () Bool)

(assert (=> b!7434181 m!8050104))

(declare-fun m!8050106 () Bool)

(assert (=> b!7434181 m!8050106))

(declare-fun m!8050108 () Bool)

(assert (=> b!7434181 m!8050108))

(assert (=> b!7434181 m!8050108))

(declare-fun m!8050110 () Bool)

(assert (=> b!7434181 m!8050110))

(declare-fun m!8050112 () Bool)

(assert (=> b!7434184 m!8050112))

(declare-fun m!8050114 () Bool)

(assert (=> b!7434184 m!8050114))

(declare-fun m!8050116 () Bool)

(assert (=> setNonEmpty!56472 m!8050116))

(push 1)

(assert (not b!7434184))

(assert (not b!7434181))

(assert (not setNonEmpty!56472))

(assert (not b!7434183))

(assert tp_is_empty!49135)

(assert (not b!7434180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2294030 () Bool)

(declare-fun choose!57507 ((Set Context!16752) Int) (Set Context!16752))

(assert (=> d!2294030 (= (flatMap!3226 z!3488 lambda!460240) (choose!57507 z!3488 lambda!460240))))

(declare-fun bs!1925547 () Bool)

(assert (= bs!1925547 d!2294030))

(declare-fun m!8050136 () Bool)

(assert (=> bs!1925547 m!8050136))

(assert (=> b!7434181 d!2294030))

(declare-fun d!2294032 () Bool)

(assert (=> d!2294032 (= (head!15250 (toList!11779 lt!2619195)) (h!78411 (toList!11779 lt!2619195)))))

(assert (=> b!7434181 d!2294032))

(declare-fun d!2294034 () Bool)

(declare-fun e!4440250 () Bool)

(assert (=> d!2294034 e!4440250))

(declare-fun res!2985299 () Bool)

(assert (=> d!2294034 (=> (not res!2985299) (not e!4440250))))

(declare-fun lt!2619208 () List!72087)

(declare-fun noDuplicate!3119 (List!72087) Bool)

(assert (=> d!2294034 (= res!2985299 (noDuplicate!3119 lt!2619208))))

(declare-fun choose!57508 ((Set Context!16752)) List!72087)

(assert (=> d!2294034 (= lt!2619208 (choose!57508 lt!2619195))))

(assert (=> d!2294034 (= (toList!11779 lt!2619195) lt!2619208)))

(declare-fun b!7434210 () Bool)

(declare-fun content!15231 (List!72087) (Set Context!16752))

(assert (=> b!7434210 (= e!4440250 (= (content!15231 lt!2619208) lt!2619195))))

(assert (= (and d!2294034 res!2985299) b!7434210))

(declare-fun m!8050138 () Bool)

(assert (=> d!2294034 m!8050138))

(declare-fun m!8050140 () Bool)

(assert (=> d!2294034 m!8050140))

(declare-fun m!8050142 () Bool)

(assert (=> b!7434210 m!8050142))

(assert (=> b!7434181 d!2294034))

(declare-fun d!2294036 () Bool)

(declare-fun lambda!460246 () Int)

(declare-fun forall!18218 (List!72086 Int) Bool)

(assert (=> d!2294036 (= (inv!91952 setElem!56472) (forall!18218 (exprs!8876 setElem!56472) lambda!460246))))

(declare-fun bs!1925548 () Bool)

(assert (= bs!1925548 d!2294036))

(declare-fun m!8050144 () Bool)

(assert (=> bs!1925548 m!8050144))

(assert (=> setNonEmpty!56472 d!2294036))

(declare-fun b!7434221 () Bool)

(declare-fun e!4440257 () (Set Context!16752))

(assert (=> b!7434221 (= e!4440257 (as set.empty (Set Context!16752)))))

(declare-fun d!2294038 () Bool)

(declare-fun c!1376391 () Bool)

(declare-fun e!4440259 () Bool)

(assert (=> d!2294038 (= c!1376391 e!4440259)))

(declare-fun res!2985302 () Bool)

(assert (=> d!2294038 (=> (not res!2985302) (not e!4440259))))

(assert (=> d!2294038 (= res!2985302 (is-Cons!71962 (exprs!8876 lt!2619196)))))

(declare-fun e!4440258 () (Set Context!16752))

(assert (=> d!2294038 (= (derivationStepZipperUp!2832 lt!2619196 (h!78412 s!7945)) e!4440258)))

(declare-fun bm!683226 () Bool)

(declare-fun call!683231 () (Set Context!16752))

(declare-fun derivationStepZipperDown!3222 (Regex!19436 Context!16752 C!39146) (Set Context!16752))

(assert (=> bm!683226 (= call!683231 (derivationStepZipperDown!3222 (h!78410 (exprs!8876 lt!2619196)) (Context!16753 (t!386647 (exprs!8876 lt!2619196))) (h!78412 s!7945)))))

(declare-fun b!7434222 () Bool)

(assert (=> b!7434222 (= e!4440257 call!683231)))

(declare-fun b!7434223 () Bool)

(declare-fun nullable!8474 (Regex!19436) Bool)

(assert (=> b!7434223 (= e!4440259 (nullable!8474 (h!78410 (exprs!8876 lt!2619196))))))

(declare-fun b!7434224 () Bool)

(assert (=> b!7434224 (= e!4440258 (set.union call!683231 (derivationStepZipperUp!2832 (Context!16753 (t!386647 (exprs!8876 lt!2619196))) (h!78412 s!7945))))))

(declare-fun b!7434225 () Bool)

(assert (=> b!7434225 (= e!4440258 e!4440257)))

(declare-fun c!1376390 () Bool)

(assert (=> b!7434225 (= c!1376390 (is-Cons!71962 (exprs!8876 lt!2619196)))))

(assert (= (and d!2294038 res!2985302) b!7434223))

(assert (= (and d!2294038 c!1376391) b!7434224))

(assert (= (and d!2294038 (not c!1376391)) b!7434225))

(assert (= (and b!7434225 c!1376390) b!7434222))

(assert (= (and b!7434225 (not c!1376390)) b!7434221))

(assert (= (or b!7434224 b!7434222) bm!683226))

(declare-fun m!8050146 () Bool)

(assert (=> bm!683226 m!8050146))

(declare-fun m!8050148 () Bool)

(assert (=> b!7434223 m!8050148))

(declare-fun m!8050150 () Bool)

(assert (=> b!7434224 m!8050150))

(assert (=> b!7434184 d!2294038))

(declare-fun bs!1925549 () Bool)

(declare-fun d!2294040 () Bool)

(assert (= bs!1925549 (and d!2294040 b!7434181)))

(declare-fun lambda!460249 () Int)

(assert (=> bs!1925549 (= lambda!460249 lambda!460240)))

(assert (=> d!2294040 true))

(assert (=> d!2294040 (= (derivationStepZipper!3702 z!3488 (h!78412 s!7945)) (flatMap!3226 z!3488 lambda!460249))))

(declare-fun bs!1925550 () Bool)

(assert (= bs!1925550 d!2294040))

(declare-fun m!8050152 () Bool)

(assert (=> bs!1925550 m!8050152))

(assert (=> b!7434184 d!2294040))

(declare-fun condSetEmpty!56478 () Bool)

(assert (=> setNonEmpty!56472 (= condSetEmpty!56478 (= setRest!56472 (as set.empty (Set Context!16752))))))

(declare-fun setRes!56478 () Bool)

(assert (=> setNonEmpty!56472 (= tp!2145434 setRes!56478)))

(declare-fun setIsEmpty!56478 () Bool)

(assert (=> setIsEmpty!56478 setRes!56478))

(declare-fun setElem!56478 () Context!16752)

(declare-fun tp!2145449 () Bool)

(declare-fun e!4440262 () Bool)

(declare-fun setNonEmpty!56478 () Bool)

(assert (=> setNonEmpty!56478 (= setRes!56478 (and tp!2145449 (inv!91952 setElem!56478) e!4440262))))

(declare-fun setRest!56478 () (Set Context!16752))

(assert (=> setNonEmpty!56478 (= setRest!56472 (set.union (set.insert setElem!56478 (as set.empty (Set Context!16752))) setRest!56478))))

(declare-fun b!7434232 () Bool)

(declare-fun tp!2145450 () Bool)

(assert (=> b!7434232 (= e!4440262 tp!2145450)))

(assert (= (and setNonEmpty!56472 condSetEmpty!56478) setIsEmpty!56478))

(assert (= (and setNonEmpty!56472 (not condSetEmpty!56478)) setNonEmpty!56478))

(assert (= setNonEmpty!56478 b!7434232))

(declare-fun m!8050154 () Bool)

(assert (=> setNonEmpty!56478 m!8050154))

(declare-fun b!7434237 () Bool)

(declare-fun e!4440265 () Bool)

(declare-fun tp!2145453 () Bool)

(assert (=> b!7434237 (= e!4440265 (and tp_is_empty!49135 tp!2145453))))

(assert (=> b!7434180 (= tp!2145435 e!4440265)))

(assert (= (and b!7434180 (is-Cons!71964 (t!386649 s!7945))) b!7434237))

(declare-fun b!7434242 () Bool)

(declare-fun e!4440268 () Bool)

(declare-fun tp!2145458 () Bool)

(declare-fun tp!2145459 () Bool)

(assert (=> b!7434242 (= e!4440268 (and tp!2145458 tp!2145459))))

(assert (=> b!7434183 (= tp!2145433 e!4440268)))

(assert (= (and b!7434183 (is-Cons!71962 (exprs!8876 setElem!56472))) b!7434242))

(push 1)

(assert (not d!2294040))

(assert (not b!7434224))

(assert (not b!7434237))

(assert (not bm!683226))

(assert (not d!2294036))

(assert (not d!2294034))

(assert (not d!2294030))

(assert tp_is_empty!49135)

(assert (not b!7434223))

(assert (not b!7434210))

(assert (not b!7434232))

(assert (not b!7434242))

(assert (not setNonEmpty!56478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

