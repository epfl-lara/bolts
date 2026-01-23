; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696430 () Bool)

(assert start!696430)

(declare-fun b!7143346 () Bool)

(declare-fun e!4292861 () Bool)

(declare-fun tp_is_empty!46005 () Bool)

(assert (=> b!7143346 (= e!4292861 tp_is_empty!46005)))

(declare-fun b!7143347 () Bool)

(declare-fun e!4292867 () Bool)

(declare-fun e!4292865 () Bool)

(assert (=> b!7143347 (= e!4292867 e!4292865)))

(declare-fun res!2914600 () Bool)

(assert (=> b!7143347 (=> (not res!2914600) (not e!4292865))))

(declare-datatypes ((C!36642 0))(
  ( (C!36643 (val!28269 Int)) )
))
(declare-datatypes ((Regex!18184 0))(
  ( (ElementMatch!18184 (c!1332142 C!36642)) (Concat!27029 (regOne!36880 Regex!18184) (regTwo!36880 Regex!18184)) (EmptyExpr!18184) (Star!18184 (reg!18513 Regex!18184)) (EmptyLang!18184) (Union!18184 (regOne!36881 Regex!18184) (regTwo!36881 Regex!18184)) )
))
(declare-fun r!11483 () Regex!18184)

(declare-fun lt!2568128 () Regex!18184)

(assert (=> b!7143347 (= res!2914600 (= r!11483 lt!2568128))))

(declare-datatypes ((List!69446 0))(
  ( (Nil!69322) (Cons!69322 (h!75770 Regex!18184) (t!383463 List!69446)) )
))
(declare-fun lt!2568133 () List!69446)

(declare-fun generalisedUnion!2689 (List!69446) Regex!18184)

(assert (=> b!7143347 (= lt!2568128 (generalisedUnion!2689 lt!2568133))))

(declare-datatypes ((Context!14356 0))(
  ( (Context!14357 (exprs!7678 List!69446)) )
))
(declare-datatypes ((List!69447 0))(
  ( (Nil!69323) (Cons!69323 (h!75771 Context!14356) (t!383464 List!69447)) )
))
(declare-fun lt!2568129 () List!69447)

(declare-fun unfocusZipperList!2225 (List!69447) List!69446)

(assert (=> b!7143347 (= lt!2568133 (unfocusZipperList!2225 lt!2568129))))

(declare-fun b!7143348 () Bool)

(declare-fun e!4292862 () Bool)

(declare-fun z!3189 () (Set Context!14356))

(declare-fun nullableZipper!2773 ((Set Context!14356)) Bool)

(assert (=> b!7143348 (= e!4292862 (not (nullableZipper!2773 z!3189)))))

(declare-fun b!7143349 () Bool)

(declare-fun e!4292863 () Bool)

(declare-fun tp!1970329 () Bool)

(assert (=> b!7143349 (= e!4292863 tp!1970329)))

(declare-fun setNonEmpty!52636 () Bool)

(declare-fun tp!1970332 () Bool)

(declare-fun setRes!52636 () Bool)

(declare-fun setElem!52636 () Context!14356)

(declare-fun inv!88525 (Context!14356) Bool)

(assert (=> setNonEmpty!52636 (= setRes!52636 (and tp!1970332 (inv!88525 setElem!52636) e!4292863))))

(declare-fun setRest!52636 () (Set Context!14356))

(assert (=> setNonEmpty!52636 (= z!3189 (set.union (set.insert setElem!52636 (as set.empty (Set Context!14356))) setRest!52636))))

(declare-fun b!7143350 () Bool)

(declare-fun e!4292866 () Bool)

(assert (=> b!7143350 (= e!4292865 (not e!4292866))))

(declare-fun res!2914601 () Bool)

(assert (=> b!7143350 (=> res!2914601 e!4292866)))

(declare-fun lambda!435247 () Int)

(declare-fun lt!2568127 () Bool)

(declare-fun exists!3997 (List!69446 Int) Bool)

(assert (=> b!7143350 (= res!2914601 (not (= lt!2568127 (exists!3997 lt!2568133 lambda!435247))))))

(assert (=> b!7143350 (= lt!2568127 (exists!3997 lt!2568133 lambda!435247))))

(declare-fun nullable!7703 (Regex!18184) Bool)

(assert (=> b!7143350 (= lt!2568127 (nullable!7703 lt!2568128))))

(declare-datatypes ((Unit!163241 0))(
  ( (Unit!163242) )
))
(declare-fun lt!2568123 () Unit!163241)

(declare-fun nullableGenUnionSpec!71 (Regex!18184 List!69446) Unit!163241)

(assert (=> b!7143350 (= lt!2568123 (nullableGenUnionSpec!71 lt!2568128 lt!2568133))))

(declare-fun b!7143351 () Bool)

(declare-fun e!4292868 () Unit!163241)

(declare-fun Unit!163243 () Unit!163241)

(assert (=> b!7143351 (= e!4292868 Unit!163243)))

(declare-fun lt!2568132 () Context!14356)

(declare-fun lambda!435248 () Int)

(declare-fun getWitness!1965 ((Set Context!14356) Int) Context!14356)

(assert (=> b!7143351 (= lt!2568132 (getWitness!1965 z!3189 lambda!435248))))

(declare-fun lt!2568125 () Unit!163241)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!21 (List!69447 Context!14356) Unit!163241)

(assert (=> b!7143351 (= lt!2568125 (lemmaZipperContainsContextThenUnfocusZipperListContains!21 lt!2568129 lt!2568132))))

(declare-fun lt!2568131 () Regex!18184)

(declare-fun generalisedConcat!2365 (List!69446) Regex!18184)

(assert (=> b!7143351 (= lt!2568131 (generalisedConcat!2365 (exprs!7678 lt!2568132)))))

(declare-fun contains!20620 (List!69446 Regex!18184) Bool)

(assert (=> b!7143351 (contains!20620 lt!2568133 lt!2568131)))

(declare-fun lt!2568130 () Unit!163241)

(declare-fun nullableGenConcatSpec!19 (Regex!18184 List!69446) Unit!163241)

(assert (=> b!7143351 (= lt!2568130 (nullableGenConcatSpec!19 lt!2568131 (exprs!7678 lt!2568132)))))

(declare-fun forall!17022 (List!69446 Int) Bool)

(assert (=> b!7143351 (= (nullable!7703 lt!2568131) (forall!17022 (exprs!7678 lt!2568132) lambda!435247))))

(declare-fun lt!2568126 () Unit!163241)

(declare-fun lemmaContainsThenExists!202 (List!69446 Regex!18184 Int) Unit!163241)

(assert (=> b!7143351 (= lt!2568126 (lemmaContainsThenExists!202 lt!2568133 lt!2568131 lambda!435247))))

(assert (=> b!7143351 false))

(declare-fun b!7143352 () Bool)

(declare-fun tp!1970331 () Bool)

(declare-fun tp!1970326 () Bool)

(assert (=> b!7143352 (= e!4292861 (and tp!1970331 tp!1970326))))

(declare-fun b!7143353 () Bool)

(assert (=> b!7143353 (= e!4292866 e!4292862)))

(declare-fun res!2914597 () Bool)

(assert (=> b!7143353 (=> res!2914597 e!4292862)))

(declare-fun exists!3998 ((Set Context!14356) Int) Bool)

(assert (=> b!7143353 (= res!2914597 (exists!3998 z!3189 lambda!435248))))

(declare-fun lt!2568124 () Unit!163241)

(assert (=> b!7143353 (= lt!2568124 e!4292868)))

(declare-fun c!1332141 () Bool)

(assert (=> b!7143353 (= c!1332141 (exists!3998 z!3189 lambda!435248))))

(declare-fun b!7143354 () Bool)

(declare-fun e!4292864 () Bool)

(assert (=> b!7143354 (= e!4292864 e!4292867)))

(declare-fun res!2914596 () Bool)

(assert (=> b!7143354 (=> (not res!2914596) (not e!4292867))))

(declare-fun unfocusZipper!2532 (List!69447) Regex!18184)

(assert (=> b!7143354 (= res!2914596 (= r!11483 (unfocusZipper!2532 lt!2568129)))))

(declare-fun toList!11215 ((Set Context!14356)) List!69447)

(assert (=> b!7143354 (= lt!2568129 (toList!11215 z!3189))))

(declare-fun res!2914602 () Bool)

(assert (=> start!696430 (=> (not res!2914602) (not e!4292864))))

(declare-fun validRegex!9351 (Regex!18184) Bool)

(assert (=> start!696430 (= res!2914602 (validRegex!9351 r!11483))))

(assert (=> start!696430 e!4292864))

(assert (=> start!696430 e!4292861))

(declare-fun condSetEmpty!52636 () Bool)

(assert (=> start!696430 (= condSetEmpty!52636 (= z!3189 (as set.empty (Set Context!14356))))))

(assert (=> start!696430 setRes!52636))

(declare-fun b!7143355 () Bool)

(declare-fun tp!1970328 () Bool)

(declare-fun tp!1970330 () Bool)

(assert (=> b!7143355 (= e!4292861 (and tp!1970328 tp!1970330))))

(declare-fun b!7143356 () Bool)

(declare-fun tp!1970327 () Bool)

(assert (=> b!7143356 (= e!4292861 tp!1970327)))

(declare-fun b!7143357 () Bool)

(declare-fun res!2914598 () Bool)

(assert (=> b!7143357 (=> res!2914598 e!4292866)))

(assert (=> b!7143357 (= res!2914598 lt!2568127)))

(declare-fun setIsEmpty!52636 () Bool)

(assert (=> setIsEmpty!52636 setRes!52636))

(declare-fun b!7143358 () Bool)

(declare-fun Unit!163244 () Unit!163241)

(assert (=> b!7143358 (= e!4292868 Unit!163244)))

(declare-fun b!7143359 () Bool)

(declare-fun res!2914599 () Bool)

(assert (=> b!7143359 (=> res!2914599 e!4292866)))

(assert (=> b!7143359 (= res!2914599 (exists!3997 lt!2568133 lambda!435247))))

(assert (= (and start!696430 res!2914602) b!7143354))

(assert (= (and b!7143354 res!2914596) b!7143347))

(assert (= (and b!7143347 res!2914600) b!7143350))

(assert (= (and b!7143350 (not res!2914601)) b!7143357))

(assert (= (and b!7143357 (not res!2914598)) b!7143359))

(assert (= (and b!7143359 (not res!2914599)) b!7143353))

(assert (= (and b!7143353 c!1332141) b!7143351))

(assert (= (and b!7143353 (not c!1332141)) b!7143358))

(assert (= (and b!7143353 (not res!2914597)) b!7143348))

(assert (= (and start!696430 (is-ElementMatch!18184 r!11483)) b!7143346))

(assert (= (and start!696430 (is-Concat!27029 r!11483)) b!7143355))

(assert (= (and start!696430 (is-Star!18184 r!11483)) b!7143356))

(assert (= (and start!696430 (is-Union!18184 r!11483)) b!7143352))

(assert (= (and start!696430 condSetEmpty!52636) setIsEmpty!52636))

(assert (= (and start!696430 (not condSetEmpty!52636)) setNonEmpty!52636))

(assert (= setNonEmpty!52636 b!7143349))

(declare-fun m!7857474 () Bool)

(assert (=> b!7143353 m!7857474))

(assert (=> b!7143353 m!7857474))

(declare-fun m!7857476 () Bool)

(assert (=> start!696430 m!7857476))

(declare-fun m!7857478 () Bool)

(assert (=> b!7143359 m!7857478))

(declare-fun m!7857480 () Bool)

(assert (=> b!7143351 m!7857480))

(declare-fun m!7857482 () Bool)

(assert (=> b!7143351 m!7857482))

(declare-fun m!7857484 () Bool)

(assert (=> b!7143351 m!7857484))

(declare-fun m!7857486 () Bool)

(assert (=> b!7143351 m!7857486))

(declare-fun m!7857488 () Bool)

(assert (=> b!7143351 m!7857488))

(declare-fun m!7857490 () Bool)

(assert (=> b!7143351 m!7857490))

(declare-fun m!7857492 () Bool)

(assert (=> b!7143351 m!7857492))

(declare-fun m!7857494 () Bool)

(assert (=> b!7143351 m!7857494))

(declare-fun m!7857496 () Bool)

(assert (=> b!7143348 m!7857496))

(declare-fun m!7857498 () Bool)

(assert (=> setNonEmpty!52636 m!7857498))

(assert (=> b!7143350 m!7857478))

(assert (=> b!7143350 m!7857478))

(declare-fun m!7857500 () Bool)

(assert (=> b!7143350 m!7857500))

(declare-fun m!7857502 () Bool)

(assert (=> b!7143350 m!7857502))

(declare-fun m!7857504 () Bool)

(assert (=> b!7143347 m!7857504))

(declare-fun m!7857506 () Bool)

(assert (=> b!7143347 m!7857506))

(declare-fun m!7857508 () Bool)

(assert (=> b!7143354 m!7857508))

(declare-fun m!7857510 () Bool)

(assert (=> b!7143354 m!7857510))

(push 1)

(assert (not b!7143347))

(assert (not b!7143359))

(assert (not start!696430))

(assert (not b!7143353))

(assert (not b!7143350))

(assert tp_is_empty!46005)

(assert (not b!7143351))

(assert (not b!7143354))

(assert (not b!7143356))

(assert (not b!7143348))

(assert (not b!7143352))

(assert (not b!7143349))

(assert (not b!7143355))

(assert (not setNonEmpty!52636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2227745 () Bool)

(declare-fun lt!2568169 () Bool)

(declare-fun content!14217 (List!69446) (Set Regex!18184))

(assert (=> d!2227745 (= lt!2568169 (set.member lt!2568131 (content!14217 lt!2568133)))))

(declare-fun e!4292898 () Bool)

(assert (=> d!2227745 (= lt!2568169 e!4292898)))

(declare-fun res!2914628 () Bool)

(assert (=> d!2227745 (=> (not res!2914628) (not e!4292898))))

(assert (=> d!2227745 (= res!2914628 (is-Cons!69322 lt!2568133))))

(assert (=> d!2227745 (= (contains!20620 lt!2568133 lt!2568131) lt!2568169)))

(declare-fun b!7143406 () Bool)

(declare-fun e!4292897 () Bool)

(assert (=> b!7143406 (= e!4292898 e!4292897)))

(declare-fun res!2914629 () Bool)

(assert (=> b!7143406 (=> res!2914629 e!4292897)))

(assert (=> b!7143406 (= res!2914629 (= (h!75770 lt!2568133) lt!2568131))))

(declare-fun b!7143407 () Bool)

(assert (=> b!7143407 (= e!4292897 (contains!20620 (t!383463 lt!2568133) lt!2568131))))

(assert (= (and d!2227745 res!2914628) b!7143406))

(assert (= (and b!7143406 (not res!2914629)) b!7143407))

(declare-fun m!7857550 () Bool)

(assert (=> d!2227745 m!7857550))

(declare-fun m!7857552 () Bool)

(assert (=> d!2227745 m!7857552))

(declare-fun m!7857554 () Bool)

(assert (=> b!7143407 m!7857554))

(assert (=> b!7143351 d!2227745))

(declare-fun bs!1888801 () Bool)

(declare-fun d!2227747 () Bool)

(assert (= bs!1888801 (and d!2227747 b!7143350)))

(declare-fun lambda!435271 () Int)

(assert (=> bs!1888801 (not (= lambda!435271 lambda!435247))))

(declare-fun lambda!435272 () Int)

(assert (=> bs!1888801 (= lambda!435272 lambda!435247)))

(declare-fun bs!1888802 () Bool)

(assert (= bs!1888802 d!2227747))

(assert (=> bs!1888802 (not (= lambda!435272 lambda!435271))))

(assert (=> d!2227747 (= (nullable!7703 lt!2568131) (forall!17022 (exprs!7678 lt!2568132) lambda!435272))))

(declare-fun lt!2568172 () Unit!163241)

(declare-fun choose!55271 (Regex!18184 List!69446) Unit!163241)

(assert (=> d!2227747 (= lt!2568172 (choose!55271 lt!2568131 (exprs!7678 lt!2568132)))))

(assert (=> d!2227747 (forall!17022 (exprs!7678 lt!2568132) lambda!435271)))

(assert (=> d!2227747 (= (nullableGenConcatSpec!19 lt!2568131 (exprs!7678 lt!2568132)) lt!2568172)))

(assert (=> bs!1888802 m!7857492))

(declare-fun m!7857556 () Bool)

(assert (=> bs!1888802 m!7857556))

(declare-fun m!7857558 () Bool)

(assert (=> bs!1888802 m!7857558))

(declare-fun m!7857560 () Bool)

(assert (=> bs!1888802 m!7857560))

(assert (=> b!7143351 d!2227747))

(declare-fun d!2227749 () Bool)

(assert (=> d!2227749 (exists!3997 lt!2568133 lambda!435247)))

(declare-fun lt!2568175 () Unit!163241)

(declare-fun choose!55272 (List!69446 Regex!18184 Int) Unit!163241)

(assert (=> d!2227749 (= lt!2568175 (choose!55272 lt!2568133 lt!2568131 lambda!435247))))

(assert (=> d!2227749 (contains!20620 lt!2568133 lt!2568131)))

(assert (=> d!2227749 (= (lemmaContainsThenExists!202 lt!2568133 lt!2568131 lambda!435247) lt!2568175)))

(declare-fun bs!1888803 () Bool)

(assert (= bs!1888803 d!2227749))

(assert (=> bs!1888803 m!7857478))

(declare-fun m!7857562 () Bool)

(assert (=> bs!1888803 m!7857562))

(assert (=> bs!1888803 m!7857480))

(assert (=> b!7143351 d!2227749))

(declare-fun d!2227751 () Bool)

(declare-fun e!4292916 () Bool)

(assert (=> d!2227751 e!4292916))

(declare-fun res!2914642 () Bool)

(assert (=> d!2227751 (=> (not res!2914642) (not e!4292916))))

(declare-fun lt!2568178 () Context!14356)

(declare-fun dynLambda!28232 (Int Context!14356) Bool)

(assert (=> d!2227751 (= res!2914642 (dynLambda!28232 lambda!435248 lt!2568178))))

(declare-fun getWitness!1967 (List!69447 Int) Context!14356)

(assert (=> d!2227751 (= lt!2568178 (getWitness!1967 (toList!11215 z!3189) lambda!435248))))

(assert (=> d!2227751 (exists!3998 z!3189 lambda!435248)))

(assert (=> d!2227751 (= (getWitness!1965 z!3189 lambda!435248) lt!2568178)))

(declare-fun b!7143428 () Bool)

(assert (=> b!7143428 (= e!4292916 (set.member lt!2568178 z!3189))))

(assert (= (and d!2227751 res!2914642) b!7143428))

(declare-fun b_lambda!272669 () Bool)

(assert (=> (not b_lambda!272669) (not d!2227751)))

(declare-fun m!7857564 () Bool)

(assert (=> d!2227751 m!7857564))

(assert (=> d!2227751 m!7857510))

(assert (=> d!2227751 m!7857510))

(declare-fun m!7857566 () Bool)

(assert (=> d!2227751 m!7857566))

(assert (=> d!2227751 m!7857474))

(declare-fun m!7857568 () Bool)

(assert (=> b!7143428 m!7857568))

(assert (=> b!7143351 d!2227751))

(declare-fun bs!1888806 () Bool)

(declare-fun d!2227753 () Bool)

(assert (= bs!1888806 (and d!2227753 b!7143350)))

(declare-fun lambda!435278 () Int)

(assert (=> bs!1888806 (not (= lambda!435278 lambda!435247))))

(declare-fun bs!1888807 () Bool)

(assert (= bs!1888807 (and d!2227753 d!2227747)))

(assert (=> bs!1888807 (= lambda!435278 lambda!435271)))

(assert (=> bs!1888807 (not (= lambda!435278 lambda!435272))))

(declare-fun e!4292937 () Bool)

(assert (=> d!2227753 e!4292937))

(declare-fun res!2914652 () Bool)

(assert (=> d!2227753 (=> (not res!2914652) (not e!4292937))))

(declare-fun lt!2568181 () Regex!18184)

(assert (=> d!2227753 (= res!2914652 (validRegex!9351 lt!2568181))))

(declare-fun e!4292939 () Regex!18184)

(assert (=> d!2227753 (= lt!2568181 e!4292939)))

(declare-fun c!1332169 () Bool)

(declare-fun e!4292940 () Bool)

(assert (=> d!2227753 (= c!1332169 e!4292940)))

(declare-fun res!2914653 () Bool)

(assert (=> d!2227753 (=> (not res!2914653) (not e!4292940))))

(assert (=> d!2227753 (= res!2914653 (is-Cons!69322 (exprs!7678 lt!2568132)))))

(assert (=> d!2227753 (forall!17022 (exprs!7678 lt!2568132) lambda!435278)))

(assert (=> d!2227753 (= (generalisedConcat!2365 (exprs!7678 lt!2568132)) lt!2568181)))

(declare-fun b!7143460 () Bool)

(declare-fun e!4292941 () Bool)

(declare-fun isEmptyExpr!2042 (Regex!18184) Bool)

(assert (=> b!7143460 (= e!4292941 (isEmptyExpr!2042 lt!2568181))))

(declare-fun b!7143461 () Bool)

(declare-fun e!4292936 () Regex!18184)

(assert (=> b!7143461 (= e!4292936 EmptyExpr!18184)))

(declare-fun b!7143462 () Bool)

(declare-fun e!4292938 () Bool)

(declare-fun head!14518 (List!69446) Regex!18184)

(assert (=> b!7143462 (= e!4292938 (= lt!2568181 (head!14518 (exprs!7678 lt!2568132))))))

(declare-fun b!7143463 () Bool)

(declare-fun isConcat!1565 (Regex!18184) Bool)

(assert (=> b!7143463 (= e!4292938 (isConcat!1565 lt!2568181))))

(declare-fun b!7143464 () Bool)

(declare-fun isEmpty!40077 (List!69446) Bool)

(assert (=> b!7143464 (= e!4292940 (isEmpty!40077 (t!383463 (exprs!7678 lt!2568132))))))

(declare-fun b!7143465 () Bool)

(assert (=> b!7143465 (= e!4292937 e!4292941)))

(declare-fun c!1332168 () Bool)

(assert (=> b!7143465 (= c!1332168 (isEmpty!40077 (exprs!7678 lt!2568132)))))

(declare-fun b!7143466 () Bool)

(assert (=> b!7143466 (= e!4292936 (Concat!27029 (h!75770 (exprs!7678 lt!2568132)) (generalisedConcat!2365 (t!383463 (exprs!7678 lt!2568132)))))))

(declare-fun b!7143467 () Bool)

(assert (=> b!7143467 (= e!4292939 (h!75770 (exprs!7678 lt!2568132)))))

(declare-fun b!7143468 () Bool)

(assert (=> b!7143468 (= e!4292939 e!4292936)))

(declare-fun c!1332167 () Bool)

(assert (=> b!7143468 (= c!1332167 (is-Cons!69322 (exprs!7678 lt!2568132)))))

(declare-fun b!7143469 () Bool)

(assert (=> b!7143469 (= e!4292941 e!4292938)))

(declare-fun c!1332170 () Bool)

(declare-fun tail!13988 (List!69446) List!69446)

(assert (=> b!7143469 (= c!1332170 (isEmpty!40077 (tail!13988 (exprs!7678 lt!2568132))))))

(assert (= (and d!2227753 res!2914653) b!7143464))

(assert (= (and d!2227753 c!1332169) b!7143467))

(assert (= (and d!2227753 (not c!1332169)) b!7143468))

(assert (= (and b!7143468 c!1332167) b!7143466))

(assert (= (and b!7143468 (not c!1332167)) b!7143461))

(assert (= (and d!2227753 res!2914652) b!7143465))

(assert (= (and b!7143465 c!1332168) b!7143460))

(assert (= (and b!7143465 (not c!1332168)) b!7143469))

(assert (= (and b!7143469 c!1332170) b!7143462))

(assert (= (and b!7143469 (not c!1332170)) b!7143463))

(declare-fun m!7857578 () Bool)

(assert (=> b!7143466 m!7857578))

(declare-fun m!7857580 () Bool)

(assert (=> b!7143469 m!7857580))

(assert (=> b!7143469 m!7857580))

(declare-fun m!7857582 () Bool)

(assert (=> b!7143469 m!7857582))

(declare-fun m!7857584 () Bool)

(assert (=> b!7143462 m!7857584))

(declare-fun m!7857586 () Bool)

(assert (=> b!7143465 m!7857586))

(declare-fun m!7857588 () Bool)

(assert (=> d!2227753 m!7857588))

(declare-fun m!7857590 () Bool)

(assert (=> d!2227753 m!7857590))

(declare-fun m!7857592 () Bool)

(assert (=> b!7143460 m!7857592))

(declare-fun m!7857594 () Bool)

(assert (=> b!7143464 m!7857594))

(declare-fun m!7857596 () Bool)

(assert (=> b!7143463 m!7857596))

(assert (=> b!7143351 d!2227753))

(declare-fun d!2227759 () Bool)

(declare-fun nullableFct!2999 (Regex!18184) Bool)

(assert (=> d!2227759 (= (nullable!7703 lt!2568131) (nullableFct!2999 lt!2568131))))

(declare-fun bs!1888808 () Bool)

(assert (= bs!1888808 d!2227759))

(declare-fun m!7857598 () Bool)

(assert (=> bs!1888808 m!7857598))

(assert (=> b!7143351 d!2227759))

(declare-fun d!2227761 () Bool)

(declare-fun res!2914658 () Bool)

(declare-fun e!4292946 () Bool)

(assert (=> d!2227761 (=> res!2914658 e!4292946)))

(assert (=> d!2227761 (= res!2914658 (is-Nil!69322 (exprs!7678 lt!2568132)))))

(assert (=> d!2227761 (= (forall!17022 (exprs!7678 lt!2568132) lambda!435247) e!4292946)))

(declare-fun b!7143474 () Bool)

(declare-fun e!4292947 () Bool)

(assert (=> b!7143474 (= e!4292946 e!4292947)))

(declare-fun res!2914659 () Bool)

(assert (=> b!7143474 (=> (not res!2914659) (not e!4292947))))

(declare-fun dynLambda!28233 (Int Regex!18184) Bool)

(assert (=> b!7143474 (= res!2914659 (dynLambda!28233 lambda!435247 (h!75770 (exprs!7678 lt!2568132))))))

(declare-fun b!7143475 () Bool)

(assert (=> b!7143475 (= e!4292947 (forall!17022 (t!383463 (exprs!7678 lt!2568132)) lambda!435247))))

(assert (= (and d!2227761 (not res!2914658)) b!7143474))

(assert (= (and b!7143474 res!2914659) b!7143475))

(declare-fun b_lambda!272671 () Bool)

(assert (=> (not b_lambda!272671) (not b!7143474)))

(declare-fun m!7857602 () Bool)

(assert (=> b!7143474 m!7857602))

(declare-fun m!7857604 () Bool)

(assert (=> b!7143475 m!7857604))

(assert (=> b!7143351 d!2227761))

(declare-fun d!2227765 () Bool)

(assert (=> d!2227765 (contains!20620 (unfocusZipperList!2225 lt!2568129) (generalisedConcat!2365 (exprs!7678 lt!2568132)))))

(declare-fun lt!2568184 () Unit!163241)

(declare-fun choose!55273 (List!69447 Context!14356) Unit!163241)

(assert (=> d!2227765 (= lt!2568184 (choose!55273 lt!2568129 lt!2568132))))

(declare-fun contains!20622 (List!69447 Context!14356) Bool)

(assert (=> d!2227765 (contains!20622 lt!2568129 lt!2568132)))

(assert (=> d!2227765 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!21 lt!2568129 lt!2568132) lt!2568184)))

(declare-fun bs!1888812 () Bool)

(assert (= bs!1888812 d!2227765))

(declare-fun m!7857608 () Bool)

(assert (=> bs!1888812 m!7857608))

(assert (=> bs!1888812 m!7857506))

(declare-fun m!7857610 () Bool)

(assert (=> bs!1888812 m!7857610))

(assert (=> bs!1888812 m!7857506))

(assert (=> bs!1888812 m!7857482))

(declare-fun m!7857612 () Bool)

(assert (=> bs!1888812 m!7857612))

(assert (=> bs!1888812 m!7857482))

(assert (=> b!7143351 d!2227765))

(declare-fun bs!1888817 () Bool)

(declare-fun d!2227769 () Bool)

(assert (= bs!1888817 (and d!2227769 b!7143350)))

(declare-fun lambda!435290 () Int)

(assert (=> bs!1888817 (not (= lambda!435290 lambda!435247))))

(declare-fun bs!1888818 () Bool)

(assert (= bs!1888818 (and d!2227769 d!2227747)))

(assert (=> bs!1888818 (= lambda!435290 lambda!435271)))

(assert (=> bs!1888818 (not (= lambda!435290 lambda!435272))))

(declare-fun bs!1888819 () Bool)

(assert (= bs!1888819 (and d!2227769 d!2227753)))

(assert (=> bs!1888819 (= lambda!435290 lambda!435278)))

(declare-fun e!4292964 () Bool)

(assert (=> d!2227769 e!4292964))

(declare-fun res!2914664 () Bool)

(assert (=> d!2227769 (=> (not res!2914664) (not e!4292964))))

(declare-fun lt!2568190 () Regex!18184)

(assert (=> d!2227769 (= res!2914664 (validRegex!9351 lt!2568190))))

(declare-fun e!4292963 () Regex!18184)

(assert (=> d!2227769 (= lt!2568190 e!4292963)))

(declare-fun c!1332185 () Bool)

(declare-fun e!4292962 () Bool)

(assert (=> d!2227769 (= c!1332185 e!4292962)))

(declare-fun res!2914665 () Bool)

(assert (=> d!2227769 (=> (not res!2914665) (not e!4292962))))

(assert (=> d!2227769 (= res!2914665 (is-Cons!69322 lt!2568133))))

(assert (=> d!2227769 (forall!17022 lt!2568133 lambda!435290)))

(assert (=> d!2227769 (= (generalisedUnion!2689 lt!2568133) lt!2568190)))

(declare-fun b!7143496 () Bool)

(declare-fun e!4292960 () Bool)

(declare-fun isUnion!1536 (Regex!18184) Bool)

(assert (=> b!7143496 (= e!4292960 (isUnion!1536 lt!2568190))))

(declare-fun b!7143497 () Bool)

(declare-fun e!4292965 () Bool)

(assert (=> b!7143497 (= e!4292965 e!4292960)))

(declare-fun c!1332184 () Bool)

(assert (=> b!7143497 (= c!1332184 (isEmpty!40077 (tail!13988 lt!2568133)))))

(declare-fun b!7143498 () Bool)

(declare-fun e!4292961 () Regex!18184)

(assert (=> b!7143498 (= e!4292961 (Union!18184 (h!75770 lt!2568133) (generalisedUnion!2689 (t!383463 lt!2568133))))))

(declare-fun b!7143499 () Bool)

(declare-fun isEmptyLang!2109 (Regex!18184) Bool)

(assert (=> b!7143499 (= e!4292965 (isEmptyLang!2109 lt!2568190))))

(declare-fun b!7143500 () Bool)

(assert (=> b!7143500 (= e!4292960 (= lt!2568190 (head!14518 lt!2568133)))))

(declare-fun b!7143501 () Bool)

(assert (=> b!7143501 (= e!4292964 e!4292965)))

(declare-fun c!1332182 () Bool)

(assert (=> b!7143501 (= c!1332182 (isEmpty!40077 lt!2568133))))

(declare-fun b!7143502 () Bool)

(assert (=> b!7143502 (= e!4292961 EmptyLang!18184)))

(declare-fun b!7143503 () Bool)

(assert (=> b!7143503 (= e!4292962 (isEmpty!40077 (t!383463 lt!2568133)))))

(declare-fun b!7143504 () Bool)

(assert (=> b!7143504 (= e!4292963 (h!75770 lt!2568133))))

(declare-fun b!7143505 () Bool)

(assert (=> b!7143505 (= e!4292963 e!4292961)))

(declare-fun c!1332183 () Bool)

(assert (=> b!7143505 (= c!1332183 (is-Cons!69322 lt!2568133))))

(assert (= (and d!2227769 res!2914665) b!7143503))

(assert (= (and d!2227769 c!1332185) b!7143504))

(assert (= (and d!2227769 (not c!1332185)) b!7143505))

(assert (= (and b!7143505 c!1332183) b!7143498))

(assert (= (and b!7143505 (not c!1332183)) b!7143502))

(assert (= (and d!2227769 res!2914664) b!7143501))

(assert (= (and b!7143501 c!1332182) b!7143499))

(assert (= (and b!7143501 (not c!1332182)) b!7143497))

(assert (= (and b!7143497 c!1332184) b!7143500))

(assert (= (and b!7143497 (not c!1332184)) b!7143496))

(declare-fun m!7857622 () Bool)

(assert (=> b!7143499 m!7857622))

(declare-fun m!7857624 () Bool)

(assert (=> b!7143496 m!7857624))

(declare-fun m!7857626 () Bool)

(assert (=> b!7143497 m!7857626))

(assert (=> b!7143497 m!7857626))

(declare-fun m!7857628 () Bool)

(assert (=> b!7143497 m!7857628))

(declare-fun m!7857630 () Bool)

(assert (=> b!7143501 m!7857630))

(declare-fun m!7857632 () Bool)

(assert (=> b!7143503 m!7857632))

(declare-fun m!7857634 () Bool)

(assert (=> b!7143500 m!7857634))

(declare-fun m!7857636 () Bool)

(assert (=> d!2227769 m!7857636))

(declare-fun m!7857638 () Bool)

(assert (=> d!2227769 m!7857638))

(declare-fun m!7857640 () Bool)

(assert (=> b!7143498 m!7857640))

(assert (=> b!7143347 d!2227769))

(declare-fun bs!1888821 () Bool)

(declare-fun d!2227775 () Bool)

(assert (= bs!1888821 (and d!2227775 d!2227769)))

(declare-fun lambda!435293 () Int)

(assert (=> bs!1888821 (= lambda!435293 lambda!435290)))

(declare-fun bs!1888822 () Bool)

(assert (= bs!1888822 (and d!2227775 d!2227747)))

(assert (=> bs!1888822 (= lambda!435293 lambda!435271)))

(declare-fun bs!1888823 () Bool)

(assert (= bs!1888823 (and d!2227775 d!2227753)))

(assert (=> bs!1888823 (= lambda!435293 lambda!435278)))

(assert (=> bs!1888822 (not (= lambda!435293 lambda!435272))))

(declare-fun bs!1888824 () Bool)

(assert (= bs!1888824 (and d!2227775 b!7143350)))

(assert (=> bs!1888824 (not (= lambda!435293 lambda!435247))))

(declare-fun lt!2568196 () List!69446)

(assert (=> d!2227775 (forall!17022 lt!2568196 lambda!435293)))

(declare-fun e!4292969 () List!69446)

(assert (=> d!2227775 (= lt!2568196 e!4292969)))

(declare-fun c!1332188 () Bool)

(assert (=> d!2227775 (= c!1332188 (is-Cons!69323 lt!2568129))))

(assert (=> d!2227775 (= (unfocusZipperList!2225 lt!2568129) lt!2568196)))

(declare-fun b!7143510 () Bool)

(assert (=> b!7143510 (= e!4292969 (Cons!69322 (generalisedConcat!2365 (exprs!7678 (h!75771 lt!2568129))) (unfocusZipperList!2225 (t!383464 lt!2568129))))))

(declare-fun b!7143511 () Bool)

(assert (=> b!7143511 (= e!4292969 Nil!69322)))

(assert (= (and d!2227775 c!1332188) b!7143510))

(assert (= (and d!2227775 (not c!1332188)) b!7143511))

(declare-fun m!7857644 () Bool)

(assert (=> d!2227775 m!7857644))

(declare-fun m!7857646 () Bool)

(assert (=> b!7143510 m!7857646))

(declare-fun m!7857648 () Bool)

(assert (=> b!7143510 m!7857648))

(assert (=> b!7143347 d!2227775))

(declare-fun bs!1888825 () Bool)

(declare-fun d!2227779 () Bool)

(assert (= bs!1888825 (and d!2227779 b!7143353)))

(declare-fun lambda!435296 () Int)

(assert (=> bs!1888825 (= lambda!435296 lambda!435248)))

(assert (=> d!2227779 (= (nullableZipper!2773 z!3189) (exists!3998 z!3189 lambda!435296))))

(declare-fun bs!1888826 () Bool)

(assert (= bs!1888826 d!2227779))

(declare-fun m!7857650 () Bool)

(assert (=> bs!1888826 m!7857650))

(assert (=> b!7143348 d!2227779))

(declare-fun d!2227781 () Bool)

(declare-fun lt!2568201 () Bool)

(declare-fun exists!4001 (List!69447 Int) Bool)

(assert (=> d!2227781 (= lt!2568201 (exists!4001 (toList!11215 z!3189) lambda!435248))))

(declare-fun choose!55274 ((Set Context!14356) Int) Bool)

(assert (=> d!2227781 (= lt!2568201 (choose!55274 z!3189 lambda!435248))))

(assert (=> d!2227781 (= (exists!3998 z!3189 lambda!435248) lt!2568201)))

(declare-fun bs!1888827 () Bool)

(assert (= bs!1888827 d!2227781))

(assert (=> bs!1888827 m!7857510))

(assert (=> bs!1888827 m!7857510))

(declare-fun m!7857652 () Bool)

(assert (=> bs!1888827 m!7857652))

(declare-fun m!7857654 () Bool)

(assert (=> bs!1888827 m!7857654))

(assert (=> b!7143353 d!2227781))

(declare-fun b!7143536 () Bool)

(declare-fun res!2914686 () Bool)

(declare-fun e!4292995 () Bool)

(assert (=> b!7143536 (=> res!2914686 e!4292995)))

(assert (=> b!7143536 (= res!2914686 (not (is-Concat!27029 r!11483)))))

(declare-fun e!4292994 () Bool)

(assert (=> b!7143536 (= e!4292994 e!4292995)))

(declare-fun b!7143537 () Bool)

(declare-fun e!4292991 () Bool)

(declare-fun e!4292990 () Bool)

(assert (=> b!7143537 (= e!4292991 e!4292990)))

(declare-fun res!2914682 () Bool)

(assert (=> b!7143537 (= res!2914682 (not (nullable!7703 (reg!18513 r!11483))))))

(assert (=> b!7143537 (=> (not res!2914682) (not e!4292990))))

(declare-fun bm!651291 () Bool)

(declare-fun call!651296 () Bool)

(declare-fun c!1332195 () Bool)

(assert (=> bm!651291 (= call!651296 (validRegex!9351 (ite c!1332195 (regTwo!36881 r!11483) (regTwo!36880 r!11483))))))

(declare-fun b!7143538 () Bool)

(declare-fun res!2914684 () Bool)

(declare-fun e!4292993 () Bool)

(assert (=> b!7143538 (=> (not res!2914684) (not e!4292993))))

(declare-fun call!651297 () Bool)

(assert (=> b!7143538 (= res!2914684 call!651297)))

(assert (=> b!7143538 (= e!4292994 e!4292993)))

(declare-fun b!7143539 () Bool)

(declare-fun e!4292992 () Bool)

(assert (=> b!7143539 (= e!4292992 call!651296)))

(declare-fun b!7143540 () Bool)

(declare-fun e!4292996 () Bool)

(assert (=> b!7143540 (= e!4292996 e!4292991)))

(declare-fun c!1332196 () Bool)

(assert (=> b!7143540 (= c!1332196 (is-Star!18184 r!11483))))

(declare-fun d!2227783 () Bool)

(declare-fun res!2914685 () Bool)

(assert (=> d!2227783 (=> res!2914685 e!4292996)))

(assert (=> d!2227783 (= res!2914685 (is-ElementMatch!18184 r!11483))))

(assert (=> d!2227783 (= (validRegex!9351 r!11483) e!4292996)))

(declare-fun b!7143541 () Bool)

(assert (=> b!7143541 (= e!4292993 call!651296)))

(declare-fun b!7143542 () Bool)

(assert (=> b!7143542 (= e!4292991 e!4292994)))

(assert (=> b!7143542 (= c!1332195 (is-Union!18184 r!11483))))

(declare-fun call!651298 () Bool)

(declare-fun bm!651292 () Bool)

(assert (=> bm!651292 (= call!651298 (validRegex!9351 (ite c!1332196 (reg!18513 r!11483) (ite c!1332195 (regOne!36881 r!11483) (regOne!36880 r!11483)))))))

(declare-fun b!7143543 () Bool)

(assert (=> b!7143543 (= e!4292995 e!4292992)))

(declare-fun res!2914683 () Bool)

(assert (=> b!7143543 (=> (not res!2914683) (not e!4292992))))

(assert (=> b!7143543 (= res!2914683 call!651297)))

(declare-fun bm!651293 () Bool)

(assert (=> bm!651293 (= call!651297 call!651298)))

(declare-fun b!7143544 () Bool)

(assert (=> b!7143544 (= e!4292990 call!651298)))

(assert (= (and d!2227783 (not res!2914685)) b!7143540))

(assert (= (and b!7143540 c!1332196) b!7143537))

(assert (= (and b!7143540 (not c!1332196)) b!7143542))

(assert (= (and b!7143537 res!2914682) b!7143544))

(assert (= (and b!7143542 c!1332195) b!7143538))

(assert (= (and b!7143542 (not c!1332195)) b!7143536))

(assert (= (and b!7143538 res!2914684) b!7143541))

(assert (= (and b!7143536 (not res!2914686)) b!7143543))

(assert (= (and b!7143543 res!2914683) b!7143539))

(assert (= (or b!7143541 b!7143539) bm!651291))

(assert (= (or b!7143538 b!7143543) bm!651293))

(assert (= (or b!7143544 bm!651293) bm!651292))

(declare-fun m!7857662 () Bool)

(assert (=> b!7143537 m!7857662))

(declare-fun m!7857664 () Bool)

(assert (=> bm!651291 m!7857664))

(declare-fun m!7857666 () Bool)

(assert (=> bm!651292 m!7857666))

(assert (=> start!696430 d!2227783))

(declare-fun bs!1888828 () Bool)

(declare-fun d!2227787 () Bool)

(assert (= bs!1888828 (and d!2227787 d!2227769)))

(declare-fun lambda!435299 () Int)

(assert (=> bs!1888828 (= lambda!435299 lambda!435290)))

(declare-fun bs!1888829 () Bool)

(assert (= bs!1888829 (and d!2227787 d!2227747)))

(assert (=> bs!1888829 (= lambda!435299 lambda!435271)))

(declare-fun bs!1888830 () Bool)

(assert (= bs!1888830 (and d!2227787 d!2227775)))

(assert (=> bs!1888830 (= lambda!435299 lambda!435293)))

(declare-fun bs!1888831 () Bool)

(assert (= bs!1888831 (and d!2227787 d!2227753)))

(assert (=> bs!1888831 (= lambda!435299 lambda!435278)))

(assert (=> bs!1888829 (not (= lambda!435299 lambda!435272))))

(declare-fun bs!1888832 () Bool)

(assert (= bs!1888832 (and d!2227787 b!7143350)))

(assert (=> bs!1888832 (not (= lambda!435299 lambda!435247))))

(assert (=> d!2227787 (= (inv!88525 setElem!52636) (forall!17022 (exprs!7678 setElem!52636) lambda!435299))))

(declare-fun bs!1888833 () Bool)

(assert (= bs!1888833 d!2227787))

(declare-fun m!7857668 () Bool)

(assert (=> bs!1888833 m!7857668))

(assert (=> setNonEmpty!52636 d!2227787))

(declare-fun d!2227789 () Bool)

(declare-fun lt!2568208 () Regex!18184)

(assert (=> d!2227789 (validRegex!9351 lt!2568208)))

(assert (=> d!2227789 (= lt!2568208 (generalisedUnion!2689 (unfocusZipperList!2225 lt!2568129)))))

(assert (=> d!2227789 (= (unfocusZipper!2532 lt!2568129) lt!2568208)))

(declare-fun bs!1888834 () Bool)

(assert (= bs!1888834 d!2227789))

(declare-fun m!7857676 () Bool)

(assert (=> bs!1888834 m!7857676))

(assert (=> bs!1888834 m!7857506))

(assert (=> bs!1888834 m!7857506))

(declare-fun m!7857678 () Bool)

(assert (=> bs!1888834 m!7857678))

(assert (=> b!7143354 d!2227789))

(declare-fun d!2227793 () Bool)

(declare-fun e!4293002 () Bool)

(assert (=> d!2227793 e!4293002))

(declare-fun res!2914692 () Bool)

(assert (=> d!2227793 (=> (not res!2914692) (not e!4293002))))

(declare-fun lt!2568211 () List!69447)

(declare-fun noDuplicate!2839 (List!69447) Bool)

(assert (=> d!2227793 (= res!2914692 (noDuplicate!2839 lt!2568211))))

(declare-fun choose!55275 ((Set Context!14356)) List!69447)

(assert (=> d!2227793 (= lt!2568211 (choose!55275 z!3189))))

(assert (=> d!2227793 (= (toList!11215 z!3189) lt!2568211)))

(declare-fun b!7143550 () Bool)

(declare-fun content!14218 (List!69447) (Set Context!14356))

(assert (=> b!7143550 (= e!4293002 (= (content!14218 lt!2568211) z!3189))))

(assert (= (and d!2227793 res!2914692) b!7143550))

(declare-fun m!7857680 () Bool)

(assert (=> d!2227793 m!7857680))

(declare-fun m!7857682 () Bool)

(assert (=> d!2227793 m!7857682))

(declare-fun m!7857684 () Bool)

(assert (=> b!7143550 m!7857684))

(assert (=> b!7143354 d!2227793))

(declare-fun bs!1888835 () Bool)

(declare-fun d!2227795 () Bool)

(assert (= bs!1888835 (and d!2227795 d!2227769)))

(declare-fun lambda!435302 () Int)

(assert (=> bs!1888835 (not (= lambda!435302 lambda!435290))))

(declare-fun bs!1888836 () Bool)

(assert (= bs!1888836 (and d!2227795 d!2227747)))

(assert (=> bs!1888836 (not (= lambda!435302 lambda!435271))))

(declare-fun bs!1888837 () Bool)

(assert (= bs!1888837 (and d!2227795 d!2227775)))

(assert (=> bs!1888837 (not (= lambda!435302 lambda!435293))))

(declare-fun bs!1888838 () Bool)

(assert (= bs!1888838 (and d!2227795 d!2227753)))

(assert (=> bs!1888838 (not (= lambda!435302 lambda!435278))))

(assert (=> bs!1888836 (not (= lambda!435302 lambda!435272))))

(declare-fun bs!1888839 () Bool)

(assert (= bs!1888839 (and d!2227795 d!2227787)))

(assert (=> bs!1888839 (not (= lambda!435302 lambda!435299))))

(declare-fun bs!1888840 () Bool)

(assert (= bs!1888840 (and d!2227795 b!7143350)))

(assert (=> bs!1888840 (not (= lambda!435302 lambda!435247))))

(assert (=> d!2227795 true))

(declare-fun order!28593 () Int)

(declare-fun dynLambda!28234 (Int Int) Int)

(assert (=> d!2227795 (< (dynLambda!28234 order!28593 lambda!435247) (dynLambda!28234 order!28593 lambda!435302))))

(assert (=> d!2227795 (= (exists!3997 lt!2568133 lambda!435247) (not (forall!17022 lt!2568133 lambda!435302)))))

(declare-fun bs!1888841 () Bool)

(assert (= bs!1888841 d!2227795))

(declare-fun m!7857686 () Bool)

(assert (=> bs!1888841 m!7857686))

(assert (=> b!7143359 d!2227795))

(assert (=> b!7143350 d!2227795))

(declare-fun d!2227797 () Bool)

(assert (=> d!2227797 (= (nullable!7703 lt!2568128) (nullableFct!2999 lt!2568128))))

(declare-fun bs!1888842 () Bool)

(assert (= bs!1888842 d!2227797))

(declare-fun m!7857688 () Bool)

(assert (=> bs!1888842 m!7857688))

(assert (=> b!7143350 d!2227797))

(declare-fun bs!1888843 () Bool)

(declare-fun d!2227799 () Bool)

(assert (= bs!1888843 (and d!2227799 d!2227795)))

(declare-fun lambda!435307 () Int)

(assert (=> bs!1888843 (not (= lambda!435307 lambda!435302))))

(declare-fun bs!1888844 () Bool)

(assert (= bs!1888844 (and d!2227799 d!2227769)))

(assert (=> bs!1888844 (= lambda!435307 lambda!435290)))

(declare-fun bs!1888845 () Bool)

(assert (= bs!1888845 (and d!2227799 d!2227747)))

(assert (=> bs!1888845 (= lambda!435307 lambda!435271)))

(declare-fun bs!1888846 () Bool)

(assert (= bs!1888846 (and d!2227799 d!2227775)))

(assert (=> bs!1888846 (= lambda!435307 lambda!435293)))

(declare-fun bs!1888847 () Bool)

(assert (= bs!1888847 (and d!2227799 d!2227753)))

(assert (=> bs!1888847 (= lambda!435307 lambda!435278)))

(assert (=> bs!1888845 (not (= lambda!435307 lambda!435272))))

(declare-fun bs!1888848 () Bool)

(assert (= bs!1888848 (and d!2227799 d!2227787)))

(assert (=> bs!1888848 (= lambda!435307 lambda!435299)))

(declare-fun bs!1888849 () Bool)

(assert (= bs!1888849 (and d!2227799 b!7143350)))

(assert (=> bs!1888849 (not (= lambda!435307 lambda!435247))))

(declare-fun lambda!435308 () Int)

(assert (=> bs!1888843 (not (= lambda!435308 lambda!435302))))

(assert (=> bs!1888844 (not (= lambda!435308 lambda!435290))))

(assert (=> bs!1888845 (not (= lambda!435308 lambda!435271))))

(assert (=> bs!1888846 (not (= lambda!435308 lambda!435293))))

(declare-fun bs!1888850 () Bool)

(assert (= bs!1888850 d!2227799))

(assert (=> bs!1888850 (not (= lambda!435308 lambda!435307))))

(assert (=> bs!1888847 (not (= lambda!435308 lambda!435278))))

(assert (=> bs!1888845 (= lambda!435308 lambda!435272)))

(assert (=> bs!1888848 (not (= lambda!435308 lambda!435299))))

(assert (=> bs!1888849 (= lambda!435308 lambda!435247)))

(assert (=> d!2227799 (= (nullable!7703 lt!2568128) (exists!3997 lt!2568133 lambda!435308))))

(declare-fun lt!2568214 () Unit!163241)

(declare-fun choose!55276 (Regex!18184 List!69446) Unit!163241)

(assert (=> d!2227799 (= lt!2568214 (choose!55276 lt!2568128 lt!2568133))))

(assert (=> d!2227799 (forall!17022 lt!2568133 lambda!435307)))

(assert (=> d!2227799 (= (nullableGenUnionSpec!71 lt!2568128 lt!2568133) lt!2568214)))

(assert (=> bs!1888850 m!7857500))

(declare-fun m!7857690 () Bool)

(assert (=> bs!1888850 m!7857690))

(declare-fun m!7857692 () Bool)

(assert (=> bs!1888850 m!7857692))

(declare-fun m!7857694 () Bool)

(assert (=> bs!1888850 m!7857694))

(assert (=> b!7143350 d!2227799))

(declare-fun b!7143574 () Bool)

(declare-fun e!4293011 () Bool)

(declare-fun tp!1970364 () Bool)

(declare-fun tp!1970365 () Bool)

(assert (=> b!7143574 (= e!4293011 (and tp!1970364 tp!1970365))))

(declare-fun b!7143575 () Bool)

(declare-fun tp!1970368 () Bool)

(assert (=> b!7143575 (= e!4293011 tp!1970368)))

(declare-fun b!7143576 () Bool)

(declare-fun tp!1970366 () Bool)

(declare-fun tp!1970367 () Bool)

(assert (=> b!7143576 (= e!4293011 (and tp!1970366 tp!1970367))))

(declare-fun b!7143573 () Bool)

(assert (=> b!7143573 (= e!4293011 tp_is_empty!46005)))

(assert (=> b!7143356 (= tp!1970327 e!4293011)))

(assert (= (and b!7143356 (is-ElementMatch!18184 (reg!18513 r!11483))) b!7143573))

(assert (= (and b!7143356 (is-Concat!27029 (reg!18513 r!11483))) b!7143574))

(assert (= (and b!7143356 (is-Star!18184 (reg!18513 r!11483))) b!7143575))

(assert (= (and b!7143356 (is-Union!18184 (reg!18513 r!11483))) b!7143576))

(declare-fun b!7143578 () Bool)

(declare-fun e!4293012 () Bool)

(declare-fun tp!1970369 () Bool)

(declare-fun tp!1970370 () Bool)

(assert (=> b!7143578 (= e!4293012 (and tp!1970369 tp!1970370))))

(declare-fun b!7143579 () Bool)

(declare-fun tp!1970373 () Bool)

(assert (=> b!7143579 (= e!4293012 tp!1970373)))

(declare-fun b!7143580 () Bool)

(declare-fun tp!1970371 () Bool)

(declare-fun tp!1970372 () Bool)

(assert (=> b!7143580 (= e!4293012 (and tp!1970371 tp!1970372))))

(declare-fun b!7143577 () Bool)

(assert (=> b!7143577 (= e!4293012 tp_is_empty!46005)))

(assert (=> b!7143352 (= tp!1970331 e!4293012)))

(assert (= (and b!7143352 (is-ElementMatch!18184 (regOne!36881 r!11483))) b!7143577))

(assert (= (and b!7143352 (is-Concat!27029 (regOne!36881 r!11483))) b!7143578))

(assert (= (and b!7143352 (is-Star!18184 (regOne!36881 r!11483))) b!7143579))

(assert (= (and b!7143352 (is-Union!18184 (regOne!36881 r!11483))) b!7143580))

(declare-fun b!7143582 () Bool)

(declare-fun e!4293013 () Bool)

(declare-fun tp!1970374 () Bool)

(declare-fun tp!1970375 () Bool)

(assert (=> b!7143582 (= e!4293013 (and tp!1970374 tp!1970375))))

(declare-fun b!7143583 () Bool)

(declare-fun tp!1970378 () Bool)

(assert (=> b!7143583 (= e!4293013 tp!1970378)))

(declare-fun b!7143584 () Bool)

(declare-fun tp!1970376 () Bool)

(declare-fun tp!1970377 () Bool)

(assert (=> b!7143584 (= e!4293013 (and tp!1970376 tp!1970377))))

(declare-fun b!7143581 () Bool)

(assert (=> b!7143581 (= e!4293013 tp_is_empty!46005)))

(assert (=> b!7143352 (= tp!1970326 e!4293013)))

(assert (= (and b!7143352 (is-ElementMatch!18184 (regTwo!36881 r!11483))) b!7143581))

(assert (= (and b!7143352 (is-Concat!27029 (regTwo!36881 r!11483))) b!7143582))

(assert (= (and b!7143352 (is-Star!18184 (regTwo!36881 r!11483))) b!7143583))

(assert (= (and b!7143352 (is-Union!18184 (regTwo!36881 r!11483))) b!7143584))

(declare-fun b!7143599 () Bool)

(declare-fun e!4293022 () Bool)

(declare-fun tp!1970383 () Bool)

(declare-fun tp!1970384 () Bool)

(assert (=> b!7143599 (= e!4293022 (and tp!1970383 tp!1970384))))

(assert (=> b!7143349 (= tp!1970329 e!4293022)))

(assert (= (and b!7143349 (is-Cons!69322 (exprs!7678 setElem!52636))) b!7143599))

(declare-fun condSetEmpty!52642 () Bool)

(assert (=> setNonEmpty!52636 (= condSetEmpty!52642 (= setRest!52636 (as set.empty (Set Context!14356))))))

(declare-fun setRes!52642 () Bool)

(assert (=> setNonEmpty!52636 (= tp!1970332 setRes!52642)))

(declare-fun setIsEmpty!52642 () Bool)

(assert (=> setIsEmpty!52642 setRes!52642))

(declare-fun setNonEmpty!52642 () Bool)

(declare-fun tp!1970389 () Bool)

(declare-fun setElem!52642 () Context!14356)

(declare-fun e!4293025 () Bool)

(assert (=> setNonEmpty!52642 (= setRes!52642 (and tp!1970389 (inv!88525 setElem!52642) e!4293025))))

(declare-fun setRest!52642 () (Set Context!14356))

(assert (=> setNonEmpty!52642 (= setRest!52636 (set.union (set.insert setElem!52642 (as set.empty (Set Context!14356))) setRest!52642))))

(declare-fun b!7143604 () Bool)

(declare-fun tp!1970390 () Bool)

(assert (=> b!7143604 (= e!4293025 tp!1970390)))

(assert (= (and setNonEmpty!52636 condSetEmpty!52642) setIsEmpty!52642))

(assert (= (and setNonEmpty!52636 (not condSetEmpty!52642)) setNonEmpty!52642))

(assert (= setNonEmpty!52642 b!7143604))

(declare-fun m!7857696 () Bool)

(assert (=> setNonEmpty!52642 m!7857696))

(declare-fun b!7143606 () Bool)

(declare-fun e!4293026 () Bool)

(declare-fun tp!1970391 () Bool)

(declare-fun tp!1970392 () Bool)

(assert (=> b!7143606 (= e!4293026 (and tp!1970391 tp!1970392))))

(declare-fun b!7143607 () Bool)

(declare-fun tp!1970395 () Bool)

(assert (=> b!7143607 (= e!4293026 tp!1970395)))

(declare-fun b!7143608 () Bool)

(declare-fun tp!1970393 () Bool)

(declare-fun tp!1970394 () Bool)

(assert (=> b!7143608 (= e!4293026 (and tp!1970393 tp!1970394))))

(declare-fun b!7143605 () Bool)

(assert (=> b!7143605 (= e!4293026 tp_is_empty!46005)))

(assert (=> b!7143355 (= tp!1970328 e!4293026)))

(assert (= (and b!7143355 (is-ElementMatch!18184 (regOne!36880 r!11483))) b!7143605))

(assert (= (and b!7143355 (is-Concat!27029 (regOne!36880 r!11483))) b!7143606))

(assert (= (and b!7143355 (is-Star!18184 (regOne!36880 r!11483))) b!7143607))

(assert (= (and b!7143355 (is-Union!18184 (regOne!36880 r!11483))) b!7143608))

(declare-fun b!7143610 () Bool)

(declare-fun e!4293027 () Bool)

(declare-fun tp!1970396 () Bool)

(declare-fun tp!1970397 () Bool)

(assert (=> b!7143610 (= e!4293027 (and tp!1970396 tp!1970397))))

(declare-fun b!7143611 () Bool)

(declare-fun tp!1970400 () Bool)

(assert (=> b!7143611 (= e!4293027 tp!1970400)))

(declare-fun b!7143612 () Bool)

(declare-fun tp!1970398 () Bool)

(declare-fun tp!1970399 () Bool)

(assert (=> b!7143612 (= e!4293027 (and tp!1970398 tp!1970399))))

(declare-fun b!7143609 () Bool)

(assert (=> b!7143609 (= e!4293027 tp_is_empty!46005)))

(assert (=> b!7143355 (= tp!1970330 e!4293027)))

(assert (= (and b!7143355 (is-ElementMatch!18184 (regTwo!36880 r!11483))) b!7143609))

(assert (= (and b!7143355 (is-Concat!27029 (regTwo!36880 r!11483))) b!7143610))

(assert (= (and b!7143355 (is-Star!18184 (regTwo!36880 r!11483))) b!7143611))

(assert (= (and b!7143355 (is-Union!18184 (regTwo!36880 r!11483))) b!7143612))

(declare-fun b_lambda!272675 () Bool)

(assert (= b_lambda!272671 (or b!7143350 b_lambda!272675)))

(declare-fun bs!1888851 () Bool)

(declare-fun d!2227801 () Bool)

(assert (= bs!1888851 (and d!2227801 b!7143350)))

(assert (=> bs!1888851 (= (dynLambda!28233 lambda!435247 (h!75770 (exprs!7678 lt!2568132))) (nullable!7703 (h!75770 (exprs!7678 lt!2568132))))))

(declare-fun m!7857698 () Bool)

(assert (=> bs!1888851 m!7857698))

(assert (=> b!7143474 d!2227801))

(declare-fun b_lambda!272677 () Bool)

(assert (= b_lambda!272669 (or b!7143353 b_lambda!272677)))

(declare-fun bs!1888852 () Bool)

(declare-fun d!2227803 () Bool)

(assert (= bs!1888852 (and d!2227803 b!7143353)))

(declare-fun nullableContext!160 (Context!14356) Bool)

(assert (=> bs!1888852 (= (dynLambda!28232 lambda!435248 lt!2568178) (nullableContext!160 lt!2568178))))

(declare-fun m!7857700 () Bool)

(assert (=> bs!1888852 m!7857700))

(assert (=> d!2227751 d!2227803))

(push 1)

(assert (not d!2227799))

(assert (not d!2227787))

(assert (not d!2227789))

(assert (not b!7143510))

(assert (not d!2227753))

(assert (not d!2227797))

(assert (not b!7143611))

(assert (not d!2227795))

(assert (not b!7143608))

(assert (not b_lambda!272675))

(assert (not b!7143579))

(assert (not b!7143606))

(assert (not bs!1888852))

(assert (not b!7143604))

(assert (not d!2227765))

(assert (not b!7143612))

(assert (not b!7143475))

(assert (not d!2227793))

(assert (not b!7143576))

(assert (not b!7143465))

(assert (not d!2227747))

(assert (not b!7143496))

(assert (not b!7143574))

(assert (not b!7143462))

(assert (not d!2227759))

(assert (not b!7143460))

(assert (not b!7143599))

(assert (not b!7143575))

(assert (not b!7143550))

(assert (not b!7143464))

(assert (not d!2227781))

(assert (not d!2227779))

(assert (not bm!651291))

(assert (not d!2227745))

(assert (not b!7143583))

(assert (not b!7143578))

(assert (not b!7143580))

(assert (not b!7143610))

(assert (not b!7143584))

(assert (not b!7143500))

(assert (not b!7143466))

(assert (not setNonEmpty!52642))

(assert (not b!7143501))

(assert (not d!2227775))

(assert tp_is_empty!46005)

(assert (not bs!1888851))

(assert (not d!2227769))

(assert (not b!7143497))

(assert (not b!7143503))

(assert (not b!7143537))

(assert (not b_lambda!272677))

(assert (not b!7143463))

(assert (not b!7143607))

(assert (not d!2227751))

(assert (not b!7143499))

(assert (not d!2227749))

(assert (not b!7143407))

(assert (not bm!651292))

(assert (not b!7143582))

(assert (not b!7143498))

(assert (not b!7143469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

