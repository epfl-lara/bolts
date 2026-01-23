; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721042 () Bool)

(assert start!721042)

(declare-fun b!7398308 () Bool)

(assert (=> b!7398308 true))

(declare-fun b!7398303 () Bool)

(declare-fun res!2980759 () Bool)

(declare-fun e!4426439 () Bool)

(assert (=> b!7398303 (=> (not res!2980759) (not e!4426439))))

(declare-datatypes ((C!39030 0))(
  ( (C!39031 (val!29889 Int)) )
))
(declare-datatypes ((Regex!19378 0))(
  ( (ElementMatch!19378 (c!1374069 C!39030)) (Concat!28223 (regOne!39268 Regex!19378) (regTwo!39268 Regex!19378)) (EmptyExpr!19378) (Star!19378 (reg!19707 Regex!19378)) (EmptyLang!19378) (Union!19378 (regOne!39269 Regex!19378) (regTwo!39269 Regex!19378)) )
))
(declare-datatypes ((List!71932 0))(
  ( (Nil!71808) (Cons!71808 (h!78256 Regex!19378) (t!386489 List!71932)) )
))
(declare-datatypes ((Context!16636 0))(
  ( (Context!16637 (exprs!8818 List!71932)) )
))
(declare-fun c!10532 () Context!16636)

(declare-fun a!2228 () C!39030)

(declare-fun head!15140 (List!71932) Regex!19378)

(assert (=> b!7398303 (= res!2980759 (= (head!15140 (exprs!8818 c!10532)) (ElementMatch!19378 a!2228)))))

(declare-fun b!7398304 () Bool)

(declare-fun res!2980757 () Bool)

(assert (=> b!7398304 (=> (not res!2980757) (not e!4426439))))

(declare-fun isEmpty!41018 (List!71932) Bool)

(declare-fun tail!14785 (List!71932) List!71932)

(assert (=> b!7398304 (= res!2980757 (isEmpty!41018 (tail!14785 (exprs!8818 c!10532))))))

(declare-fun b!7398305 () Bool)

(declare-fun e!4426442 () Bool)

(declare-fun tp_is_empty!49019 () Bool)

(declare-fun tp!2111503 () Bool)

(assert (=> b!7398305 (= e!4426442 (and tp_is_empty!49019 tp!2111503))))

(declare-fun b!7398306 () Bool)

(declare-fun e!4426438 () Bool)

(declare-fun lt!2618033 () Context!16636)

(declare-fun lt!2618032 () (Set Context!16636))

(assert (=> b!7398306 (= e!4426438 (not (set.member lt!2618033 lt!2618032)))))

(declare-fun b!7398307 () Bool)

(declare-fun e!4426443 () Bool)

(declare-fun tp!2111504 () Bool)

(assert (=> b!7398307 (= e!4426443 tp!2111504)))

(declare-fun e!4426440 () Bool)

(assert (=> b!7398308 (= e!4426440 e!4426438)))

(declare-fun res!2980758 () Bool)

(assert (=> b!7398308 (=> (not res!2980758) (not e!4426438))))

(declare-fun lambda!459262 () Int)

(declare-fun z!3451 () (Set Context!16636))

(declare-fun flatMap!3188 ((Set Context!16636) Int) (Set Context!16636))

(assert (=> b!7398308 (= res!2980758 (set.member lt!2618033 (flatMap!3188 z!3451 lambda!459262)))))

(declare-datatypes ((List!71933 0))(
  ( (Nil!71809) (Cons!71809 (h!78257 Context!16636) (t!386490 List!71933)) )
))
(declare-fun head!15141 (List!71933) Context!16636)

(declare-fun toList!11739 ((Set Context!16636)) List!71933)

(assert (=> b!7398308 (= lt!2618033 (head!15141 (toList!11739 lt!2618032)))))

(declare-fun setIsEmpty!56049 () Bool)

(declare-fun setRes!56049 () Bool)

(assert (=> setIsEmpty!56049 setRes!56049))

(declare-fun setNonEmpty!56049 () Bool)

(declare-fun setElem!56049 () Context!16636)

(declare-fun tp!2111502 () Bool)

(declare-fun inv!91807 (Context!16636) Bool)

(assert (=> setNonEmpty!56049 (= setRes!56049 (and tp!2111502 (inv!91807 setElem!56049) e!4426443))))

(declare-fun setRest!56049 () (Set Context!16636))

(assert (=> setNonEmpty!56049 (= z!3451 (set.union (set.insert setElem!56049 (as set.empty (Set Context!16636))) setRest!56049))))

(declare-fun b!7398309 () Bool)

(declare-fun res!2980754 () Bool)

(assert (=> b!7398309 (=> (not res!2980754) (not e!4426439))))

(declare-datatypes ((List!71934 0))(
  ( (Nil!71810) (Cons!71810 (h!78258 C!39030) (t!386491 List!71934)) )
))
(declare-fun s!7927 () List!71934)

(assert (=> b!7398309 (= res!2980754 (and (or (not (is-Cons!71810 s!7927)) (not (= (h!78258 s!7927) a!2228))) (is-Cons!71810 s!7927) (not (= (h!78258 s!7927) a!2228))))))

(declare-fun res!2980760 () Bool)

(assert (=> start!721042 (=> (not res!2980760) (not e!4426439))))

(assert (=> start!721042 (= res!2980760 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16636)))))))

(assert (=> start!721042 e!4426439))

(declare-fun condSetEmpty!56049 () Bool)

(assert (=> start!721042 (= condSetEmpty!56049 (= z!3451 (as set.empty (Set Context!16636))))))

(assert (=> start!721042 setRes!56049))

(declare-fun e!4426441 () Bool)

(assert (=> start!721042 (and (inv!91807 c!10532) e!4426441)))

(assert (=> start!721042 tp_is_empty!49019))

(assert (=> start!721042 e!4426442))

(declare-fun b!7398310 () Bool)

(declare-fun res!2980756 () Bool)

(assert (=> b!7398310 (=> (not res!2980756) (not e!4426439))))

(assert (=> b!7398310 (= res!2980756 (not (isEmpty!41018 (exprs!8818 c!10532))))))

(declare-fun b!7398311 () Bool)

(declare-fun tp!2111505 () Bool)

(assert (=> b!7398311 (= e!4426441 tp!2111505)))

(declare-fun b!7398312 () Bool)

(declare-fun res!2980755 () Bool)

(assert (=> b!7398312 (=> (not res!2980755) (not e!4426440))))

(assert (=> b!7398312 (= res!2980755 (not (= lt!2618032 (as set.empty (Set Context!16636)))))))

(declare-fun b!7398313 () Bool)

(assert (=> b!7398313 (= e!4426439 e!4426440)))

(declare-fun res!2980753 () Bool)

(assert (=> b!7398313 (=> (not res!2980753) (not e!4426440))))

(declare-fun derivationStepZipperUp!2784 (Context!16636 C!39030) (Set Context!16636))

(assert (=> b!7398313 (= res!2980753 (= (derivationStepZipperUp!2784 c!10532 (h!78258 s!7927)) (as set.empty (Set Context!16636))))))

(declare-fun derivationStepZipper!3660 ((Set Context!16636) C!39030) (Set Context!16636))

(assert (=> b!7398313 (= lt!2618032 (derivationStepZipper!3660 z!3451 (h!78258 s!7927)))))

(assert (= (and start!721042 res!2980760) b!7398310))

(assert (= (and b!7398310 res!2980756) b!7398303))

(assert (= (and b!7398303 res!2980759) b!7398304))

(assert (= (and b!7398304 res!2980757) b!7398309))

(assert (= (and b!7398309 res!2980754) b!7398313))

(assert (= (and b!7398313 res!2980753) b!7398312))

(assert (= (and b!7398312 res!2980755) b!7398308))

(assert (= (and b!7398308 res!2980758) b!7398306))

(assert (= (and start!721042 condSetEmpty!56049) setIsEmpty!56049))

(assert (= (and start!721042 (not condSetEmpty!56049)) setNonEmpty!56049))

(assert (= setNonEmpty!56049 b!7398307))

(assert (= start!721042 b!7398311))

(assert (= (and start!721042 (is-Cons!71810 s!7927)) b!7398305))

(declare-fun m!8039312 () Bool)

(assert (=> b!7398303 m!8039312))

(declare-fun m!8039314 () Bool)

(assert (=> b!7398310 m!8039314))

(declare-fun m!8039316 () Bool)

(assert (=> b!7398308 m!8039316))

(declare-fun m!8039318 () Bool)

(assert (=> b!7398308 m!8039318))

(declare-fun m!8039320 () Bool)

(assert (=> b!7398308 m!8039320))

(assert (=> b!7398308 m!8039320))

(declare-fun m!8039322 () Bool)

(assert (=> b!7398308 m!8039322))

(declare-fun m!8039324 () Bool)

(assert (=> b!7398313 m!8039324))

(declare-fun m!8039326 () Bool)

(assert (=> b!7398313 m!8039326))

(declare-fun m!8039328 () Bool)

(assert (=> b!7398304 m!8039328))

(assert (=> b!7398304 m!8039328))

(declare-fun m!8039330 () Bool)

(assert (=> b!7398304 m!8039330))

(declare-fun m!8039332 () Bool)

(assert (=> setNonEmpty!56049 m!8039332))

(declare-fun m!8039334 () Bool)

(assert (=> start!721042 m!8039334))

(declare-fun m!8039336 () Bool)

(assert (=> start!721042 m!8039336))

(declare-fun m!8039338 () Bool)

(assert (=> b!7398306 m!8039338))

(push 1)

(assert (not b!7398303))

(assert (not b!7398313))

(assert (not b!7398307))

(assert (not b!7398310))

(assert (not start!721042))

(assert tp_is_empty!49019)

(assert (not b!7398305))

(assert (not b!7398308))

(assert (not setNonEmpty!56049))

(assert (not b!7398304))

(assert (not b!7398311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2289035 () Bool)

(assert (=> d!2289035 (= (isEmpty!41018 (exprs!8818 c!10532)) (is-Nil!71808 (exprs!8818 c!10532)))))

(assert (=> b!7398310 d!2289035))

(declare-fun d!2289037 () Bool)

(declare-fun choose!57402 ((Set Context!16636) Int) (Set Context!16636))

(assert (=> d!2289037 (= (flatMap!3188 z!3451 lambda!459262) (choose!57402 z!3451 lambda!459262))))

(declare-fun bs!1923197 () Bool)

(assert (= bs!1923197 d!2289037))

(declare-fun m!8039368 () Bool)

(assert (=> bs!1923197 m!8039368))

(assert (=> b!7398308 d!2289037))

(declare-fun d!2289039 () Bool)

(assert (=> d!2289039 (= (head!15141 (toList!11739 lt!2618032)) (h!78257 (toList!11739 lt!2618032)))))

(assert (=> b!7398308 d!2289039))

(declare-fun d!2289041 () Bool)

(declare-fun e!4426464 () Bool)

(assert (=> d!2289041 e!4426464))

(declare-fun res!2980787 () Bool)

(assert (=> d!2289041 (=> (not res!2980787) (not e!4426464))))

(declare-fun lt!2618042 () List!71933)

(declare-fun noDuplicate!3098 (List!71933) Bool)

(assert (=> d!2289041 (= res!2980787 (noDuplicate!3098 lt!2618042))))

(declare-fun choose!57403 ((Set Context!16636)) List!71933)

(assert (=> d!2289041 (= lt!2618042 (choose!57403 lt!2618032))))

(assert (=> d!2289041 (= (toList!11739 lt!2618032) lt!2618042)))

(declare-fun b!7398353 () Bool)

(declare-fun content!15210 (List!71933) (Set Context!16636))

(assert (=> b!7398353 (= e!4426464 (= (content!15210 lt!2618042) lt!2618032))))

(assert (= (and d!2289041 res!2980787) b!7398353))

(declare-fun m!8039370 () Bool)

(assert (=> d!2289041 m!8039370))

(declare-fun m!8039372 () Bool)

(assert (=> d!2289041 m!8039372))

(declare-fun m!8039374 () Bool)

(assert (=> b!7398353 m!8039374))

(assert (=> b!7398308 d!2289041))

(declare-fun d!2289043 () Bool)

(assert (=> d!2289043 (= (isEmpty!41018 (tail!14785 (exprs!8818 c!10532))) (is-Nil!71808 (tail!14785 (exprs!8818 c!10532))))))

(assert (=> b!7398304 d!2289043))

(declare-fun d!2289045 () Bool)

(assert (=> d!2289045 (= (tail!14785 (exprs!8818 c!10532)) (t!386489 (exprs!8818 c!10532)))))

(assert (=> b!7398304 d!2289045))

(declare-fun d!2289047 () Bool)

(assert (=> d!2289047 (= (head!15140 (exprs!8818 c!10532)) (h!78256 (exprs!8818 c!10532)))))

(assert (=> b!7398303 d!2289047))

(declare-fun d!2289049 () Bool)

(declare-fun lambda!459268 () Int)

(declare-fun forall!18166 (List!71932 Int) Bool)

(assert (=> d!2289049 (= (inv!91807 c!10532) (forall!18166 (exprs!8818 c!10532) lambda!459268))))

(declare-fun bs!1923198 () Bool)

(assert (= bs!1923198 d!2289049))

(declare-fun m!8039376 () Bool)

(assert (=> bs!1923198 m!8039376))

(assert (=> start!721042 d!2289049))

(declare-fun bs!1923199 () Bool)

(declare-fun d!2289051 () Bool)

(assert (= bs!1923199 (and d!2289051 d!2289049)))

(declare-fun lambda!459269 () Int)

(assert (=> bs!1923199 (= lambda!459269 lambda!459268)))

(assert (=> d!2289051 (= (inv!91807 setElem!56049) (forall!18166 (exprs!8818 setElem!56049) lambda!459269))))

(declare-fun bs!1923200 () Bool)

(assert (= bs!1923200 d!2289051))

(declare-fun m!8039378 () Bool)

(assert (=> bs!1923200 m!8039378))

(assert (=> setNonEmpty!56049 d!2289051))

(declare-fun d!2289053 () Bool)

(declare-fun c!1374075 () Bool)

(declare-fun e!4426473 () Bool)

(assert (=> d!2289053 (= c!1374075 e!4426473)))

(declare-fun res!2980790 () Bool)

(assert (=> d!2289053 (=> (not res!2980790) (not e!4426473))))

(assert (=> d!2289053 (= res!2980790 (is-Cons!71808 (exprs!8818 c!10532)))))

(declare-fun e!4426471 () (Set Context!16636))

(assert (=> d!2289053 (= (derivationStepZipperUp!2784 c!10532 (h!78258 s!7927)) e!4426471)))

(declare-fun b!7398364 () Bool)

(declare-fun e!4426472 () (Set Context!16636))

(assert (=> b!7398364 (= e!4426472 (as set.empty (Set Context!16636)))))

(declare-fun b!7398365 () Bool)

(declare-fun nullable!8431 (Regex!19378) Bool)

(assert (=> b!7398365 (= e!4426473 (nullable!8431 (h!78256 (exprs!8818 c!10532))))))

(declare-fun b!7398366 () Bool)

(declare-fun call!681154 () (Set Context!16636))

(assert (=> b!7398366 (= e!4426472 call!681154)))

(declare-fun b!7398367 () Bool)

(assert (=> b!7398367 (= e!4426471 e!4426472)))

(declare-fun c!1374076 () Bool)

(assert (=> b!7398367 (= c!1374076 (is-Cons!71808 (exprs!8818 c!10532)))))

(declare-fun b!7398368 () Bool)

(assert (=> b!7398368 (= e!4426471 (set.union call!681154 (derivationStepZipperUp!2784 (Context!16637 (t!386489 (exprs!8818 c!10532))) (h!78258 s!7927))))))

(declare-fun bm!681149 () Bool)

(declare-fun derivationStepZipperDown!3183 (Regex!19378 Context!16636 C!39030) (Set Context!16636))

(assert (=> bm!681149 (= call!681154 (derivationStepZipperDown!3183 (h!78256 (exprs!8818 c!10532)) (Context!16637 (t!386489 (exprs!8818 c!10532))) (h!78258 s!7927)))))

(assert (= (and d!2289053 res!2980790) b!7398365))

(assert (= (and d!2289053 c!1374075) b!7398368))

(assert (= (and d!2289053 (not c!1374075)) b!7398367))

(assert (= (and b!7398367 c!1374076) b!7398366))

(assert (= (and b!7398367 (not c!1374076)) b!7398364))

(assert (= (or b!7398368 b!7398366) bm!681149))

(declare-fun m!8039380 () Bool)

(assert (=> b!7398365 m!8039380))

(declare-fun m!8039382 () Bool)

(assert (=> b!7398368 m!8039382))

(declare-fun m!8039384 () Bool)

(assert (=> bm!681149 m!8039384))

(assert (=> b!7398313 d!2289053))

(declare-fun bs!1923201 () Bool)

(declare-fun d!2289055 () Bool)

(assert (= bs!1923201 (and d!2289055 b!7398308)))

(declare-fun lambda!459272 () Int)

(assert (=> bs!1923201 (= lambda!459272 lambda!459262)))

(assert (=> d!2289055 true))

(assert (=> d!2289055 (= (derivationStepZipper!3660 z!3451 (h!78258 s!7927)) (flatMap!3188 z!3451 lambda!459272))))

(declare-fun bs!1923202 () Bool)

(assert (= bs!1923202 d!2289055))

(declare-fun m!8039386 () Bool)

(assert (=> bs!1923202 m!8039386))

(assert (=> b!7398313 d!2289055))

(declare-fun b!7398375 () Bool)

(declare-fun e!4426476 () Bool)

(declare-fun tp!2111522 () Bool)

(declare-fun tp!2111523 () Bool)

(assert (=> b!7398375 (= e!4426476 (and tp!2111522 tp!2111523))))

(assert (=> b!7398311 (= tp!2111505 e!4426476)))

(assert (= (and b!7398311 (is-Cons!71808 (exprs!8818 c!10532))) b!7398375))

(declare-fun b!7398376 () Bool)

(declare-fun e!4426477 () Bool)

(declare-fun tp!2111524 () Bool)

(declare-fun tp!2111525 () Bool)

(assert (=> b!7398376 (= e!4426477 (and tp!2111524 tp!2111525))))

(assert (=> b!7398307 (= tp!2111504 e!4426477)))

(assert (= (and b!7398307 (is-Cons!71808 (exprs!8818 setElem!56049))) b!7398376))

(declare-fun b!7398381 () Bool)

(declare-fun e!4426480 () Bool)

(declare-fun tp!2111528 () Bool)

(assert (=> b!7398381 (= e!4426480 (and tp_is_empty!49019 tp!2111528))))

(assert (=> b!7398305 (= tp!2111503 e!4426480)))

(assert (= (and b!7398305 (is-Cons!71810 (t!386491 s!7927))) b!7398381))

(declare-fun condSetEmpty!56055 () Bool)

(assert (=> setNonEmpty!56049 (= condSetEmpty!56055 (= setRest!56049 (as set.empty (Set Context!16636))))))

(declare-fun setRes!56055 () Bool)

(assert (=> setNonEmpty!56049 (= tp!2111502 setRes!56055)))

(declare-fun setIsEmpty!56055 () Bool)

(assert (=> setIsEmpty!56055 setRes!56055))

(declare-fun tp!2111533 () Bool)

(declare-fun e!4426483 () Bool)

(declare-fun setNonEmpty!56055 () Bool)

(declare-fun setElem!56055 () Context!16636)

(assert (=> setNonEmpty!56055 (= setRes!56055 (and tp!2111533 (inv!91807 setElem!56055) e!4426483))))

(declare-fun setRest!56055 () (Set Context!16636))

(assert (=> setNonEmpty!56055 (= setRest!56049 (set.union (set.insert setElem!56055 (as set.empty (Set Context!16636))) setRest!56055))))

(declare-fun b!7398386 () Bool)

(declare-fun tp!2111534 () Bool)

(assert (=> b!7398386 (= e!4426483 tp!2111534)))

(assert (= (and setNonEmpty!56049 condSetEmpty!56055) setIsEmpty!56055))

(assert (= (and setNonEmpty!56049 (not condSetEmpty!56055)) setNonEmpty!56055))

(assert (= setNonEmpty!56055 b!7398386))

(declare-fun m!8039388 () Bool)

(assert (=> setNonEmpty!56055 m!8039388))

(push 1)

(assert (not bm!681149))

(assert (not b!7398368))

(assert (not b!7398375))

(assert tp_is_empty!49019)

(assert (not b!7398365))

(assert (not d!2289051))

(assert (not d!2289049))

(assert (not d!2289055))

(assert (not b!7398353))

(assert (not d!2289037))

(assert (not setNonEmpty!56055))

(assert (not b!7398386))

(assert (not d!2289041))

(assert (not b!7398376))

(assert (not b!7398381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

