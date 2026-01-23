; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669022 () Bool)

(assert start!669022)

(declare-fun b!6977644 () Bool)

(assert (=> b!6977644 true))

(declare-fun b!6977650 () Bool)

(assert (=> b!6977650 true))

(declare-fun b!6977643 () Bool)

(declare-fun e!4193552 () Bool)

(declare-fun tp_is_empty!43525 () Bool)

(declare-fun tp!1927455 () Bool)

(assert (=> b!6977643 (= e!4193552 (and tp_is_empty!43525 tp!1927455))))

(declare-fun e!4193550 () Bool)

(declare-fun e!4193553 () Bool)

(assert (=> b!6977644 (= e!4193550 (not e!4193553))))

(declare-fun res!2845211 () Bool)

(assert (=> b!6977644 (=> res!2845211 e!4193553)))

(declare-datatypes ((C!34570 0))(
  ( (C!34571 (val!26987 Int)) )
))
(declare-datatypes ((Regex!17150 0))(
  ( (ElementMatch!17150 (c!1293307 C!34570)) (Concat!25995 (regOne!34812 Regex!17150) (regTwo!34812 Regex!17150)) (EmptyExpr!17150) (Star!17150 (reg!17479 Regex!17150)) (EmptyLang!17150) (Union!17150 (regOne!34813 Regex!17150) (regTwo!34813 Regex!17150)) )
))
(declare-datatypes ((List!66995 0))(
  ( (Nil!66871) (Cons!66871 (h!73319 Regex!17150) (t!380738 List!66995)) )
))
(declare-datatypes ((Context!12292 0))(
  ( (Context!12293 (exprs!6646 List!66995)) )
))
(declare-fun lt!2480285 () Context!12292)

(declare-datatypes ((List!66996 0))(
  ( (Nil!66872) (Cons!66872 (h!73320 C!34570) (t!380739 List!66996)) )
))
(declare-fun s!7408 () List!66996)

(declare-fun matchZipper!2690 ((Set Context!12292) List!66996) Bool)

(assert (=> b!6977644 (= res!2845211 (not (matchZipper!2690 (set.insert lt!2480285 (as set.empty (Set Context!12292))) s!7408)))))

(declare-fun lt!2480282 () (Set Context!12292))

(declare-fun lambda!398282 () Int)

(declare-fun getWitness!1004 ((Set Context!12292) Int) Context!12292)

(assert (=> b!6977644 (= lt!2480285 (getWitness!1004 lt!2480282 lambda!398282))))

(declare-datatypes ((List!66997 0))(
  ( (Nil!66873) (Cons!66873 (h!73321 Context!12292) (t!380740 List!66997)) )
))
(declare-fun lt!2480283 () List!66997)

(declare-fun exists!2893 (List!66997 Int) Bool)

(assert (=> b!6977644 (exists!2893 lt!2480283 lambda!398282)))

(declare-datatypes ((Unit!160949 0))(
  ( (Unit!160950) )
))
(declare-fun lt!2480287 () Unit!160949)

(declare-fun lemmaZipperMatchesExistsMatchingContext!119 (List!66997 List!66996) Unit!160949)

(assert (=> b!6977644 (= lt!2480287 (lemmaZipperMatchesExistsMatchingContext!119 lt!2480283 s!7408))))

(declare-fun toList!10510 ((Set Context!12292)) List!66997)

(assert (=> b!6977644 (= lt!2480283 (toList!10510 lt!2480282))))

(declare-fun res!2845210 () Bool)

(assert (=> start!669022 (=> (not res!2845210) (not e!4193550))))

(assert (=> start!669022 (= res!2845210 (matchZipper!2690 lt!2480282 s!7408))))

(declare-fun z1!570 () (Set Context!12292))

(declare-fun ct2!306 () Context!12292)

(declare-fun appendTo!271 ((Set Context!12292) Context!12292) (Set Context!12292))

(assert (=> start!669022 (= lt!2480282 (appendTo!271 z1!570 ct2!306))))

(assert (=> start!669022 e!4193550))

(declare-fun condSetEmpty!47386 () Bool)

(assert (=> start!669022 (= condSetEmpty!47386 (= z1!570 (as set.empty (Set Context!12292))))))

(declare-fun setRes!47386 () Bool)

(assert (=> start!669022 setRes!47386))

(declare-fun e!4193555 () Bool)

(declare-fun inv!85735 (Context!12292) Bool)

(assert (=> start!669022 (and (inv!85735 ct2!306) e!4193555)))

(assert (=> start!669022 e!4193552))

(declare-fun e!4193554 () Bool)

(declare-fun setElem!47386 () Context!12292)

(declare-fun tp!1927456 () Bool)

(declare-fun setNonEmpty!47386 () Bool)

(assert (=> setNonEmpty!47386 (= setRes!47386 (and tp!1927456 (inv!85735 setElem!47386) e!4193554))))

(declare-fun setRest!47386 () (Set Context!12292))

(assert (=> setNonEmpty!47386 (= z1!570 (set.union (set.insert setElem!47386 (as set.empty (Set Context!12292))) setRest!47386))))

(declare-fun setIsEmpty!47386 () Bool)

(assert (=> setIsEmpty!47386 setRes!47386))

(declare-fun b!6977645 () Bool)

(declare-fun tp!1927457 () Bool)

(assert (=> b!6977645 (= e!4193555 tp!1927457)))

(declare-fun b!6977646 () Bool)

(declare-fun res!2845214 () Bool)

(assert (=> b!6977646 (=> (not res!2845214) (not e!4193550))))

(assert (=> b!6977646 (= res!2845214 (is-Cons!66872 s!7408))))

(declare-fun b!6977647 () Bool)

(declare-fun e!4193551 () Bool)

(declare-fun lt!2480284 () Context!12292)

(declare-fun lambda!398284 () Int)

(declare-fun forall!16026 (List!66995 Int) Bool)

(assert (=> b!6977647 (= e!4193551 (forall!16026 (exprs!6646 lt!2480284) lambda!398284))))

(declare-fun b!6977648 () Bool)

(declare-fun res!2845213 () Bool)

(assert (=> b!6977648 (=> res!2845213 e!4193553)))

(assert (=> b!6977648 (= res!2845213 (not (set.member lt!2480285 lt!2480282)))))

(declare-fun b!6977649 () Bool)

(declare-fun res!2845212 () Bool)

(assert (=> b!6977649 (=> res!2845212 e!4193551)))

(assert (=> b!6977649 (= res!2845212 (not (set.member lt!2480284 z1!570)))))

(assert (=> b!6977650 (= e!4193553 e!4193551)))

(declare-fun res!2845209 () Bool)

(assert (=> b!6977650 (=> res!2845209 e!4193551)))

(declare-fun ++!15095 (List!66995 List!66995) List!66995)

(assert (=> b!6977650 (= res!2845209 (not (= (Context!12293 (++!15095 (exprs!6646 lt!2480284) (exprs!6646 ct2!306))) lt!2480285)))))

(declare-fun lt!2480286 () Unit!160949)

(declare-fun lemmaConcatPreservesForall!486 (List!66995 List!66995 Int) Unit!160949)

(assert (=> b!6977650 (= lt!2480286 (lemmaConcatPreservesForall!486 (exprs!6646 lt!2480284) (exprs!6646 ct2!306) lambda!398284))))

(declare-fun lambda!398283 () Int)

(declare-fun mapPost2!5 ((Set Context!12292) Int Context!12292) Context!12292)

(assert (=> b!6977650 (= lt!2480284 (mapPost2!5 z1!570 lambda!398283 lt!2480285))))

(declare-fun b!6977651 () Bool)

(declare-fun tp!1927458 () Bool)

(assert (=> b!6977651 (= e!4193554 tp!1927458)))

(assert (= (and start!669022 res!2845210) b!6977646))

(assert (= (and b!6977646 res!2845214) b!6977644))

(assert (= (and b!6977644 (not res!2845211)) b!6977648))

(assert (= (and b!6977648 (not res!2845213)) b!6977650))

(assert (= (and b!6977650 (not res!2845209)) b!6977649))

(assert (= (and b!6977649 (not res!2845212)) b!6977647))

(assert (= (and start!669022 condSetEmpty!47386) setIsEmpty!47386))

(assert (= (and start!669022 (not condSetEmpty!47386)) setNonEmpty!47386))

(assert (= setNonEmpty!47386 b!6977651))

(assert (= start!669022 b!6977645))

(assert (= (and start!669022 (is-Cons!66872 s!7408)) b!6977643))

(declare-fun m!7663154 () Bool)

(assert (=> b!6977649 m!7663154))

(declare-fun m!7663156 () Bool)

(assert (=> b!6977648 m!7663156))

(declare-fun m!7663158 () Bool)

(assert (=> b!6977647 m!7663158))

(declare-fun m!7663160 () Bool)

(assert (=> b!6977650 m!7663160))

(declare-fun m!7663162 () Bool)

(assert (=> b!6977650 m!7663162))

(declare-fun m!7663164 () Bool)

(assert (=> b!6977650 m!7663164))

(declare-fun m!7663166 () Bool)

(assert (=> start!669022 m!7663166))

(declare-fun m!7663168 () Bool)

(assert (=> start!669022 m!7663168))

(declare-fun m!7663170 () Bool)

(assert (=> start!669022 m!7663170))

(declare-fun m!7663172 () Bool)

(assert (=> b!6977644 m!7663172))

(assert (=> b!6977644 m!7663172))

(declare-fun m!7663174 () Bool)

(assert (=> b!6977644 m!7663174))

(declare-fun m!7663176 () Bool)

(assert (=> b!6977644 m!7663176))

(declare-fun m!7663178 () Bool)

(assert (=> b!6977644 m!7663178))

(declare-fun m!7663180 () Bool)

(assert (=> b!6977644 m!7663180))

(declare-fun m!7663182 () Bool)

(assert (=> b!6977644 m!7663182))

(declare-fun m!7663184 () Bool)

(assert (=> setNonEmpty!47386 m!7663184))

(push 1)

(assert (not b!6977651))

(assert (not b!6977644))

(assert (not setNonEmpty!47386))

(assert (not b!6977650))

(assert (not b!6977645))

(assert (not b!6977647))

(assert (not b!6977643))

(assert (not start!669022))

(assert tp_is_empty!43525)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6977695 () Bool)

(declare-fun e!4193578 () List!66995)

(assert (=> b!6977695 (= e!4193578 (exprs!6646 ct2!306))))

(declare-fun b!6977697 () Bool)

(declare-fun res!2845239 () Bool)

(declare-fun e!4193579 () Bool)

(assert (=> b!6977697 (=> (not res!2845239) (not e!4193579))))

(declare-fun lt!2480310 () List!66995)

(declare-fun size!40859 (List!66995) Int)

(assert (=> b!6977697 (= res!2845239 (= (size!40859 lt!2480310) (+ (size!40859 (exprs!6646 lt!2480284)) (size!40859 (exprs!6646 ct2!306)))))))

(declare-fun b!6977696 () Bool)

(assert (=> b!6977696 (= e!4193578 (Cons!66871 (h!73319 (exprs!6646 lt!2480284)) (++!15095 (t!380738 (exprs!6646 lt!2480284)) (exprs!6646 ct2!306))))))

(declare-fun b!6977698 () Bool)

(assert (=> b!6977698 (= e!4193579 (or (not (= (exprs!6646 ct2!306) Nil!66871)) (= lt!2480310 (exprs!6646 lt!2480284))))))

(declare-fun d!2172539 () Bool)

(assert (=> d!2172539 e!4193579))

(declare-fun res!2845238 () Bool)

(assert (=> d!2172539 (=> (not res!2845238) (not e!4193579))))

(declare-fun content!13169 (List!66995) (Set Regex!17150))

(assert (=> d!2172539 (= res!2845238 (= (content!13169 lt!2480310) (set.union (content!13169 (exprs!6646 lt!2480284)) (content!13169 (exprs!6646 ct2!306)))))))

(assert (=> d!2172539 (= lt!2480310 e!4193578)))

(declare-fun c!1293317 () Bool)

(assert (=> d!2172539 (= c!1293317 (is-Nil!66871 (exprs!6646 lt!2480284)))))

(assert (=> d!2172539 (= (++!15095 (exprs!6646 lt!2480284) (exprs!6646 ct2!306)) lt!2480310)))

(assert (= (and d!2172539 c!1293317) b!6977695))

(assert (= (and d!2172539 (not c!1293317)) b!6977696))

(assert (= (and d!2172539 res!2845238) b!6977697))

(assert (= (and b!6977697 res!2845239) b!6977698))

(declare-fun m!7663218 () Bool)

(assert (=> b!6977697 m!7663218))

(declare-fun m!7663220 () Bool)

(assert (=> b!6977697 m!7663220))

(declare-fun m!7663222 () Bool)

(assert (=> b!6977697 m!7663222))

(declare-fun m!7663224 () Bool)

(assert (=> b!6977696 m!7663224))

(declare-fun m!7663226 () Bool)

(assert (=> d!2172539 m!7663226))

(declare-fun m!7663228 () Bool)

(assert (=> d!2172539 m!7663228))

(declare-fun m!7663230 () Bool)

(assert (=> d!2172539 m!7663230))

(assert (=> b!6977650 d!2172539))

(declare-fun d!2172541 () Bool)

(assert (=> d!2172541 (forall!16026 (++!15095 (exprs!6646 lt!2480284) (exprs!6646 ct2!306)) lambda!398284)))

(declare-fun lt!2480313 () Unit!160949)

(declare-fun choose!51949 (List!66995 List!66995 Int) Unit!160949)

(assert (=> d!2172541 (= lt!2480313 (choose!51949 (exprs!6646 lt!2480284) (exprs!6646 ct2!306) lambda!398284))))

(assert (=> d!2172541 (forall!16026 (exprs!6646 lt!2480284) lambda!398284)))

(assert (=> d!2172541 (= (lemmaConcatPreservesForall!486 (exprs!6646 lt!2480284) (exprs!6646 ct2!306) lambda!398284) lt!2480313)))

(declare-fun bs!1860211 () Bool)

(assert (= bs!1860211 d!2172541))

(assert (=> bs!1860211 m!7663160))

(assert (=> bs!1860211 m!7663160))

(declare-fun m!7663232 () Bool)

(assert (=> bs!1860211 m!7663232))

(declare-fun m!7663234 () Bool)

(assert (=> bs!1860211 m!7663234))

(assert (=> bs!1860211 m!7663158))

(assert (=> b!6977650 d!2172541))

(declare-fun d!2172543 () Bool)

(declare-fun e!4193582 () Bool)

(assert (=> d!2172543 e!4193582))

(declare-fun res!2845242 () Bool)

(assert (=> d!2172543 (=> (not res!2845242) (not e!4193582))))

(declare-fun lt!2480316 () Context!12292)

(declare-fun dynLambda!26680 (Int Context!12292) Context!12292)

(assert (=> d!2172543 (= res!2845242 (= lt!2480285 (dynLambda!26680 lambda!398283 lt!2480316)))))

(declare-fun choose!51950 ((Set Context!12292) Int Context!12292) Context!12292)

(assert (=> d!2172543 (= lt!2480316 (choose!51950 z1!570 lambda!398283 lt!2480285))))

(declare-fun map!15400 ((Set Context!12292) Int) (Set Context!12292))

(assert (=> d!2172543 (set.member lt!2480285 (map!15400 z1!570 lambda!398283))))

(assert (=> d!2172543 (= (mapPost2!5 z1!570 lambda!398283 lt!2480285) lt!2480316)))

(declare-fun b!6977702 () Bool)

(assert (=> b!6977702 (= e!4193582 (set.member lt!2480316 z1!570))))

(assert (= (and d!2172543 res!2845242) b!6977702))

(declare-fun b_lambda!261151 () Bool)

(assert (=> (not b_lambda!261151) (not d!2172543)))

(declare-fun m!7663236 () Bool)

(assert (=> d!2172543 m!7663236))

(declare-fun m!7663238 () Bool)

(assert (=> d!2172543 m!7663238))

(declare-fun m!7663240 () Bool)

(assert (=> d!2172543 m!7663240))

(declare-fun m!7663242 () Bool)

(assert (=> d!2172543 m!7663242))

(declare-fun m!7663244 () Bool)

(assert (=> b!6977702 m!7663244))

(assert (=> b!6977650 d!2172543))

(declare-fun d!2172545 () Bool)

(declare-fun c!1293320 () Bool)

(declare-fun isEmpty!39043 (List!66996) Bool)

(assert (=> d!2172545 (= c!1293320 (isEmpty!39043 s!7408))))

(declare-fun e!4193585 () Bool)

(assert (=> d!2172545 (= (matchZipper!2690 lt!2480282 s!7408) e!4193585)))

(declare-fun b!6977707 () Bool)

(declare-fun nullableZipper!2387 ((Set Context!12292)) Bool)

(assert (=> b!6977707 (= e!4193585 (nullableZipper!2387 lt!2480282))))

(declare-fun b!6977708 () Bool)

(declare-fun derivationStepZipper!2634 ((Set Context!12292) C!34570) (Set Context!12292))

(declare-fun head!14056 (List!66996) C!34570)

(declare-fun tail!13122 (List!66996) List!66996)

(assert (=> b!6977708 (= e!4193585 (matchZipper!2690 (derivationStepZipper!2634 lt!2480282 (head!14056 s!7408)) (tail!13122 s!7408)))))

(assert (= (and d!2172545 c!1293320) b!6977707))

(assert (= (and d!2172545 (not c!1293320)) b!6977708))

(declare-fun m!7663246 () Bool)

(assert (=> d!2172545 m!7663246))

(declare-fun m!7663248 () Bool)

(assert (=> b!6977707 m!7663248))

(declare-fun m!7663250 () Bool)

(assert (=> b!6977708 m!7663250))

(assert (=> b!6977708 m!7663250))

(declare-fun m!7663252 () Bool)

(assert (=> b!6977708 m!7663252))

(declare-fun m!7663254 () Bool)

(assert (=> b!6977708 m!7663254))

(assert (=> b!6977708 m!7663252))

(assert (=> b!6977708 m!7663254))

(declare-fun m!7663256 () Bool)

(assert (=> b!6977708 m!7663256))

(assert (=> start!669022 d!2172545))

(declare-fun bs!1860212 () Bool)

(declare-fun d!2172547 () Bool)

(assert (= bs!1860212 (and d!2172547 b!6977650)))

(declare-fun lambda!398304 () Int)

(assert (=> bs!1860212 (= lambda!398304 lambda!398283)))

(assert (=> d!2172547 true))

(assert (=> d!2172547 (= (appendTo!271 z1!570 ct2!306) (map!15400 z1!570 lambda!398304))))

(declare-fun bs!1860213 () Bool)

(assert (= bs!1860213 d!2172547))

(declare-fun m!7663258 () Bool)

(assert (=> bs!1860213 m!7663258))

(assert (=> start!669022 d!2172547))

(declare-fun bs!1860214 () Bool)

(declare-fun d!2172549 () Bool)

(assert (= bs!1860214 (and d!2172549 b!6977650)))

(declare-fun lambda!398307 () Int)

(assert (=> bs!1860214 (= lambda!398307 lambda!398284)))

(assert (=> d!2172549 (= (inv!85735 ct2!306) (forall!16026 (exprs!6646 ct2!306) lambda!398307))))

(declare-fun bs!1860215 () Bool)

(assert (= bs!1860215 d!2172549))

(declare-fun m!7663260 () Bool)

(assert (=> bs!1860215 m!7663260))

(assert (=> start!669022 d!2172549))

(declare-fun bs!1860216 () Bool)

(declare-fun d!2172551 () Bool)

(assert (= bs!1860216 (and d!2172551 b!6977650)))

(declare-fun lambda!398308 () Int)

(assert (=> bs!1860216 (= lambda!398308 lambda!398284)))

(declare-fun bs!1860217 () Bool)

(assert (= bs!1860217 (and d!2172551 d!2172549)))

(assert (=> bs!1860217 (= lambda!398308 lambda!398307)))

(assert (=> d!2172551 (= (inv!85735 setElem!47386) (forall!16026 (exprs!6646 setElem!47386) lambda!398308))))

(declare-fun bs!1860218 () Bool)

(assert (= bs!1860218 d!2172551))

(declare-fun m!7663262 () Bool)

(assert (=> bs!1860218 m!7663262))

(assert (=> setNonEmpty!47386 d!2172551))

(declare-fun d!2172553 () Bool)

(declare-fun c!1293322 () Bool)

(assert (=> d!2172553 (= c!1293322 (isEmpty!39043 s!7408))))

(declare-fun e!4193586 () Bool)

(assert (=> d!2172553 (= (matchZipper!2690 (set.insert lt!2480285 (as set.empty (Set Context!12292))) s!7408) e!4193586)))

(declare-fun b!6977709 () Bool)

(assert (=> b!6977709 (= e!4193586 (nullableZipper!2387 (set.insert lt!2480285 (as set.empty (Set Context!12292)))))))

(declare-fun b!6977710 () Bool)

(assert (=> b!6977710 (= e!4193586 (matchZipper!2690 (derivationStepZipper!2634 (set.insert lt!2480285 (as set.empty (Set Context!12292))) (head!14056 s!7408)) (tail!13122 s!7408)))))

(assert (= (and d!2172553 c!1293322) b!6977709))

(assert (= (and d!2172553 (not c!1293322)) b!6977710))

(assert (=> d!2172553 m!7663246))

(assert (=> b!6977709 m!7663172))

(declare-fun m!7663264 () Bool)

(assert (=> b!6977709 m!7663264))

(assert (=> b!6977710 m!7663250))

(assert (=> b!6977710 m!7663172))

(assert (=> b!6977710 m!7663250))

(declare-fun m!7663266 () Bool)

(assert (=> b!6977710 m!7663266))

(assert (=> b!6977710 m!7663254))

(assert (=> b!6977710 m!7663266))

(assert (=> b!6977710 m!7663254))

(declare-fun m!7663268 () Bool)

(assert (=> b!6977710 m!7663268))

(assert (=> b!6977644 d!2172553))

(declare-fun bs!1860219 () Bool)

(declare-fun d!2172555 () Bool)

(assert (= bs!1860219 (and d!2172555 b!6977644)))

(declare-fun lambda!398311 () Int)

(assert (=> bs!1860219 (not (= lambda!398311 lambda!398282))))

(assert (=> d!2172555 true))

(declare-fun order!27805 () Int)

(declare-fun dynLambda!26681 (Int Int) Int)

(assert (=> d!2172555 (< (dynLambda!26681 order!27805 lambda!398282) (dynLambda!26681 order!27805 lambda!398311))))

(declare-fun forall!16028 (List!66997 Int) Bool)

(assert (=> d!2172555 (= (exists!2893 lt!2480283 lambda!398282) (not (forall!16028 lt!2480283 lambda!398311)))))

(declare-fun bs!1860220 () Bool)

(assert (= bs!1860220 d!2172555))

(declare-fun m!7663270 () Bool)

(assert (=> bs!1860220 m!7663270))

(assert (=> b!6977644 d!2172555))

(declare-fun bs!1860221 () Bool)

(declare-fun d!2172557 () Bool)

(assert (= bs!1860221 (and d!2172557 b!6977644)))

(declare-fun lambda!398314 () Int)

(assert (=> bs!1860221 (= lambda!398314 lambda!398282)))

(declare-fun bs!1860222 () Bool)

(assert (= bs!1860222 (and d!2172557 d!2172555)))

(assert (=> bs!1860222 (not (= lambda!398314 lambda!398311))))

(assert (=> d!2172557 true))

(assert (=> d!2172557 (exists!2893 lt!2480283 lambda!398314)))

(declare-fun lt!2480321 () Unit!160949)

(declare-fun choose!51951 (List!66997 List!66996) Unit!160949)

(assert (=> d!2172557 (= lt!2480321 (choose!51951 lt!2480283 s!7408))))

(declare-fun content!13170 (List!66997) (Set Context!12292))

(assert (=> d!2172557 (matchZipper!2690 (content!13170 lt!2480283) s!7408)))

(assert (=> d!2172557 (= (lemmaZipperMatchesExistsMatchingContext!119 lt!2480283 s!7408) lt!2480321)))

(declare-fun bs!1860223 () Bool)

(assert (= bs!1860223 d!2172557))

(declare-fun m!7663272 () Bool)

(assert (=> bs!1860223 m!7663272))

(declare-fun m!7663274 () Bool)

(assert (=> bs!1860223 m!7663274))

(declare-fun m!7663276 () Bool)

(assert (=> bs!1860223 m!7663276))

(assert (=> bs!1860223 m!7663276))

(declare-fun m!7663278 () Bool)

(assert (=> bs!1860223 m!7663278))

(assert (=> b!6977644 d!2172557))

(declare-fun d!2172559 () Bool)

(declare-fun e!4193589 () Bool)

(assert (=> d!2172559 e!4193589))

(declare-fun res!2845246 () Bool)

(assert (=> d!2172559 (=> (not res!2845246) (not e!4193589))))

(declare-fun lt!2480324 () Context!12292)

(declare-fun dynLambda!26682 (Int Context!12292) Bool)

(assert (=> d!2172559 (= res!2845246 (dynLambda!26682 lambda!398282 lt!2480324))))

(declare-fun getWitness!1006 (List!66997 Int) Context!12292)

(assert (=> d!2172559 (= lt!2480324 (getWitness!1006 (toList!10510 lt!2480282) lambda!398282))))

(declare-fun exists!2895 ((Set Context!12292) Int) Bool)

(assert (=> d!2172559 (exists!2895 lt!2480282 lambda!398282)))

(assert (=> d!2172559 (= (getWitness!1004 lt!2480282 lambda!398282) lt!2480324)))

(declare-fun b!6977715 () Bool)

(assert (=> b!6977715 (= e!4193589 (set.member lt!2480324 lt!2480282))))

(assert (= (and d!2172559 res!2845246) b!6977715))

(declare-fun b_lambda!261153 () Bool)

(assert (=> (not b_lambda!261153) (not d!2172559)))

(declare-fun m!7663280 () Bool)

(assert (=> d!2172559 m!7663280))

(assert (=> d!2172559 m!7663182))

(assert (=> d!2172559 m!7663182))

(declare-fun m!7663282 () Bool)

(assert (=> d!2172559 m!7663282))

(declare-fun m!7663284 () Bool)

(assert (=> d!2172559 m!7663284))

(declare-fun m!7663286 () Bool)

(assert (=> b!6977715 m!7663286))

(assert (=> b!6977644 d!2172559))

(declare-fun d!2172561 () Bool)

(declare-fun e!4193592 () Bool)

(assert (=> d!2172561 e!4193592))

(declare-fun res!2845249 () Bool)

(assert (=> d!2172561 (=> (not res!2845249) (not e!4193592))))

(declare-fun lt!2480327 () List!66997)

(declare-fun noDuplicate!2478 (List!66997) Bool)

(assert (=> d!2172561 (= res!2845249 (noDuplicate!2478 lt!2480327))))

(declare-fun choose!51952 ((Set Context!12292)) List!66997)

(assert (=> d!2172561 (= lt!2480327 (choose!51952 lt!2480282))))

(assert (=> d!2172561 (= (toList!10510 lt!2480282) lt!2480327)))

(declare-fun b!6977718 () Bool)

(assert (=> b!6977718 (= e!4193592 (= (content!13170 lt!2480327) lt!2480282))))

(assert (= (and d!2172561 res!2845249) b!6977718))

(declare-fun m!7663288 () Bool)

(assert (=> d!2172561 m!7663288))

(declare-fun m!7663290 () Bool)

(assert (=> d!2172561 m!7663290))

(declare-fun m!7663292 () Bool)

(assert (=> b!6977718 m!7663292))

(assert (=> b!6977644 d!2172561))

(declare-fun d!2172565 () Bool)

(declare-fun res!2845254 () Bool)

(declare-fun e!4193597 () Bool)

(assert (=> d!2172565 (=> res!2845254 e!4193597)))

(assert (=> d!2172565 (= res!2845254 (is-Nil!66871 (exprs!6646 lt!2480284)))))

(assert (=> d!2172565 (= (forall!16026 (exprs!6646 lt!2480284) lambda!398284) e!4193597)))

(declare-fun b!6977723 () Bool)

(declare-fun e!4193598 () Bool)

(assert (=> b!6977723 (= e!4193597 e!4193598)))

(declare-fun res!2845255 () Bool)

(assert (=> b!6977723 (=> (not res!2845255) (not e!4193598))))

(declare-fun dynLambda!26683 (Int Regex!17150) Bool)

(assert (=> b!6977723 (= res!2845255 (dynLambda!26683 lambda!398284 (h!73319 (exprs!6646 lt!2480284))))))

(declare-fun b!6977724 () Bool)

(assert (=> b!6977724 (= e!4193598 (forall!16026 (t!380738 (exprs!6646 lt!2480284)) lambda!398284))))

(assert (= (and d!2172565 (not res!2845254)) b!6977723))

(assert (= (and b!6977723 res!2845255) b!6977724))

(declare-fun b_lambda!261155 () Bool)

(assert (=> (not b_lambda!261155) (not b!6977723)))

(declare-fun m!7663294 () Bool)

(assert (=> b!6977723 m!7663294))

(declare-fun m!7663296 () Bool)

(assert (=> b!6977724 m!7663296))

(assert (=> b!6977647 d!2172565))

(declare-fun b!6977729 () Bool)

(declare-fun e!4193601 () Bool)

(declare-fun tp!1927475 () Bool)

(declare-fun tp!1927476 () Bool)

(assert (=> b!6977729 (= e!4193601 (and tp!1927475 tp!1927476))))

(assert (=> b!6977645 (= tp!1927457 e!4193601)))

(assert (= (and b!6977645 (is-Cons!66871 (exprs!6646 ct2!306))) b!6977729))

(declare-fun condSetEmpty!47392 () Bool)

(assert (=> setNonEmpty!47386 (= condSetEmpty!47392 (= setRest!47386 (as set.empty (Set Context!12292))))))

(declare-fun setRes!47392 () Bool)

(assert (=> setNonEmpty!47386 (= tp!1927456 setRes!47392)))

(declare-fun setIsEmpty!47392 () Bool)

(assert (=> setIsEmpty!47392 setRes!47392))

(declare-fun tp!1927482 () Bool)

(declare-fun setNonEmpty!47392 () Bool)

(declare-fun e!4193604 () Bool)

(declare-fun setElem!47392 () Context!12292)

(assert (=> setNonEmpty!47392 (= setRes!47392 (and tp!1927482 (inv!85735 setElem!47392) e!4193604))))

(declare-fun setRest!47392 () (Set Context!12292))

(assert (=> setNonEmpty!47392 (= setRest!47386 (set.union (set.insert setElem!47392 (as set.empty (Set Context!12292))) setRest!47392))))

(declare-fun b!6977734 () Bool)

(declare-fun tp!1927481 () Bool)

(assert (=> b!6977734 (= e!4193604 tp!1927481)))

(assert (= (and setNonEmpty!47386 condSetEmpty!47392) setIsEmpty!47392))

(assert (= (and setNonEmpty!47386 (not condSetEmpty!47392)) setNonEmpty!47392))

(assert (= setNonEmpty!47392 b!6977734))

(declare-fun m!7663298 () Bool)

(assert (=> setNonEmpty!47392 m!7663298))

(declare-fun b!6977739 () Bool)

(declare-fun e!4193607 () Bool)

(declare-fun tp!1927485 () Bool)

(assert (=> b!6977739 (= e!4193607 (and tp_is_empty!43525 tp!1927485))))

(assert (=> b!6977643 (= tp!1927455 e!4193607)))

(assert (= (and b!6977643 (is-Cons!66872 (t!380739 s!7408))) b!6977739))

(declare-fun b!6977740 () Bool)

(declare-fun e!4193608 () Bool)

(declare-fun tp!1927486 () Bool)

(declare-fun tp!1927487 () Bool)

(assert (=> b!6977740 (= e!4193608 (and tp!1927486 tp!1927487))))

(assert (=> b!6977651 (= tp!1927458 e!4193608)))

(assert (= (and b!6977651 (is-Cons!66871 (exprs!6646 setElem!47386))) b!6977740))

(declare-fun b_lambda!261157 () Bool)

(assert (= b_lambda!261153 (or b!6977644 b_lambda!261157)))

(declare-fun bs!1860224 () Bool)

(declare-fun d!2172567 () Bool)

(assert (= bs!1860224 (and d!2172567 b!6977644)))

(assert (=> bs!1860224 (= (dynLambda!26682 lambda!398282 lt!2480324) (matchZipper!2690 (set.insert lt!2480324 (as set.empty (Set Context!12292))) s!7408))))

(declare-fun m!7663300 () Bool)

(assert (=> bs!1860224 m!7663300))

(assert (=> bs!1860224 m!7663300))

(declare-fun m!7663302 () Bool)

(assert (=> bs!1860224 m!7663302))

(assert (=> d!2172559 d!2172567))

(declare-fun b_lambda!261159 () Bool)

(assert (= b_lambda!261155 (or b!6977650 b_lambda!261159)))

(declare-fun bs!1860225 () Bool)

(declare-fun d!2172569 () Bool)

(assert (= bs!1860225 (and d!2172569 b!6977650)))

(declare-fun validRegex!8824 (Regex!17150) Bool)

(assert (=> bs!1860225 (= (dynLambda!26683 lambda!398284 (h!73319 (exprs!6646 lt!2480284))) (validRegex!8824 (h!73319 (exprs!6646 lt!2480284))))))

(declare-fun m!7663304 () Bool)

(assert (=> bs!1860225 m!7663304))

(assert (=> b!6977723 d!2172569))

(declare-fun b_lambda!261161 () Bool)

(assert (= b_lambda!261151 (or b!6977650 b_lambda!261161)))

(declare-fun bs!1860226 () Bool)

(declare-fun d!2172571 () Bool)

(assert (= bs!1860226 (and d!2172571 b!6977650)))

(declare-fun lt!2480328 () Unit!160949)

(assert (=> bs!1860226 (= lt!2480328 (lemmaConcatPreservesForall!486 (exprs!6646 lt!2480316) (exprs!6646 ct2!306) lambda!398284))))

(assert (=> bs!1860226 (= (dynLambda!26680 lambda!398283 lt!2480316) (Context!12293 (++!15095 (exprs!6646 lt!2480316) (exprs!6646 ct2!306))))))

(declare-fun m!7663306 () Bool)

(assert (=> bs!1860226 m!7663306))

(declare-fun m!7663308 () Bool)

(assert (=> bs!1860226 m!7663308))

(assert (=> d!2172543 d!2172571))

(push 1)

(assert (not b_lambda!261157))

(assert (not b!6977740))

(assert (not b!6977709))

(assert (not d!2172547))

(assert (not bs!1860224))

(assert (not b!6977734))

(assert (not d!2172561))

(assert (not d!2172557))

(assert (not d!2172543))

(assert (not d!2172553))

(assert (not bs!1860226))

(assert (not b!6977708))

(assert (not b!6977697))

(assert (not bs!1860225))

(assert (not d!2172551))

(assert (not b!6977739))

(assert (not b!6977724))

(assert (not b!6977696))

(assert (not b!6977729))

(assert (not b!6977707))

(assert (not d!2172555))

(assert (not d!2172545))

(assert (not d!2172549))

(assert (not d!2172559))

(assert (not setNonEmpty!47392))

(assert (not b!6977718))

(assert (not d!2172541))

(assert (not b_lambda!261161))

(assert (not d!2172539))

(assert (not b!6977710))

(assert (not b_lambda!261159))

(assert tp_is_empty!43525)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

