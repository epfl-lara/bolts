; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662558 () Bool)

(assert start!662558)

(declare-fun b!6863318 () Bool)

(assert (=> b!6863318 true))

(declare-fun b!6863320 () Bool)

(assert (=> b!6863320 true))

(declare-fun bs!1834338 () Bool)

(declare-fun b!6863332 () Bool)

(assert (= bs!1834338 (and b!6863332 b!6863318)))

(declare-fun lambda!388238 () Int)

(declare-fun lambda!388236 () Int)

(assert (=> bs!1834338 (not (= lambda!388238 lambda!388236))))

(declare-fun b!6863314 () Bool)

(declare-fun res!2800050 () Bool)

(declare-fun e!4137599 () Bool)

(assert (=> b!6863314 (=> (not res!2800050) (not e!4137599))))

(declare-datatypes ((C!33654 0))(
  ( (C!33655 (val!26529 Int)) )
))
(declare-datatypes ((Regex!16692 0))(
  ( (ElementMatch!16692 (c!1277386 C!33654)) (Concat!25537 (regOne!33896 Regex!16692) (regTwo!33896 Regex!16692)) (EmptyExpr!16692) (Star!16692 (reg!17021 Regex!16692)) (EmptyLang!16692) (Union!16692 (regOne!33897 Regex!16692) (regTwo!33897 Regex!16692)) )
))
(declare-fun r!7292 () Regex!16692)

(declare-datatypes ((List!66375 0))(
  ( (Nil!66251) (Cons!66251 (h!72699 Regex!16692) (t!380118 List!66375)) )
))
(declare-datatypes ((Context!12152 0))(
  ( (Context!12153 (exprs!6576 List!66375)) )
))
(declare-datatypes ((List!66376 0))(
  ( (Nil!66252) (Cons!66252 (h!72700 Context!12152) (t!380119 List!66376)) )
))
(declare-fun zl!343 () List!66376)

(declare-fun unfocusZipper!2434 (List!66376) Regex!16692)

(assert (=> b!6863314 (= res!2800050 (= r!7292 (unfocusZipper!2434 zl!343)))))

(declare-fun b!6863315 () Bool)

(declare-fun e!4137600 () Bool)

(declare-fun tp_is_empty!42637 () Bool)

(declare-fun tp!1883161 () Bool)

(assert (=> b!6863315 (= e!4137600 (and tp_is_empty!42637 tp!1883161))))

(declare-fun b!6863316 () Bool)

(declare-fun res!2800058 () Bool)

(declare-fun e!4137602 () Bool)

(assert (=> b!6863316 (=> res!2800058 e!4137602)))

(declare-fun isEmpty!38612 (List!66376) Bool)

(assert (=> b!6863316 (= res!2800058 (isEmpty!38612 (t!380119 zl!343)))))

(declare-fun b!6863317 () Bool)

(declare-fun e!4137601 () Bool)

(declare-fun tp!1883162 () Bool)

(declare-fun tp!1883166 () Bool)

(assert (=> b!6863317 (= e!4137601 (and tp!1883162 tp!1883166))))

(declare-fun e!4137595 () Bool)

(assert (=> b!6863318 (= e!4137602 e!4137595)))

(declare-fun res!2800056 () Bool)

(assert (=> b!6863318 (=> res!2800056 e!4137595)))

(declare-fun lt!2457589 () Bool)

(assert (=> b!6863318 (= res!2800056 lt!2457589)))

(declare-fun lt!2457581 () List!66375)

(declare-fun exists!2816 (List!66375 Int) Bool)

(assert (=> b!6863318 (= lt!2457589 (exists!2816 lt!2457581 lambda!388236))))

(declare-datatypes ((List!66377 0))(
  ( (Nil!66253) (Cons!66253 (h!72701 C!33654) (t!380120 List!66377)) )
))
(declare-fun s!2326 () List!66377)

(declare-datatypes ((Unit!160147 0))(
  ( (Unit!160148) )
))
(declare-fun lt!2457590 () Unit!160147)

(declare-fun matchRGenUnionSpec!331 (Regex!16692 List!66375 List!66377) Unit!160147)

(assert (=> b!6863318 (= lt!2457590 (matchRGenUnionSpec!331 r!7292 lt!2457581 s!2326))))

(declare-fun unfocusZipperList!2109 (List!66376) List!66375)

(assert (=> b!6863318 (= lt!2457581 (unfocusZipperList!2109 zl!343))))

(declare-fun e!4137606 () Bool)

(declare-fun b!6863319 () Bool)

(declare-fun tp!1883168 () Bool)

(declare-fun e!4137596 () Bool)

(declare-fun inv!84978 (Context!12152) Bool)

(assert (=> b!6863319 (= e!4137606 (and (inv!84978 (h!72700 zl!343)) e!4137596 tp!1883168))))

(declare-fun e!4137603 () Bool)

(assert (=> b!6863320 (= e!4137595 e!4137603)))

(declare-fun res!2800051 () Bool)

(assert (=> b!6863320 (=> res!2800051 e!4137603)))

(declare-fun lambda!388237 () Int)

(declare-fun exists!2817 (List!66376 Int) Bool)

(assert (=> b!6863320 (= res!2800051 (not (exists!2817 zl!343 lambda!388237)))))

(assert (=> b!6863320 (exists!2817 zl!343 lambda!388237)))

(declare-fun lt!2457582 () Unit!160147)

(declare-fun lemmaZipperMatchesExistsMatchingContext!91 (List!66376 List!66377) Unit!160147)

(assert (=> b!6863320 (= lt!2457582 (lemmaZipperMatchesExistsMatchingContext!91 zl!343 s!2326))))

(declare-fun b!6863321 () Bool)

(assert (=> b!6863321 (= e!4137601 tp_is_empty!42637)))

(declare-fun b!6863322 () Bool)

(assert (=> b!6863322 (= e!4137599 (not e!4137602))))

(declare-fun res!2800059 () Bool)

(assert (=> b!6863322 (=> res!2800059 e!4137602)))

(declare-fun e!4137597 () Bool)

(assert (=> b!6863322 (= res!2800059 e!4137597)))

(declare-fun res!2800057 () Bool)

(assert (=> b!6863322 (=> (not res!2800057) (not e!4137597))))

(assert (=> b!6863322 (= res!2800057 (is-Cons!66252 zl!343))))

(declare-fun matchRSpec!3793 (Regex!16692 List!66377) Bool)

(assert (=> b!6863322 (= lt!2457589 (matchRSpec!3793 r!7292 s!2326))))

(declare-fun matchR!8875 (Regex!16692 List!66377) Bool)

(assert (=> b!6863322 (= lt!2457589 (matchR!8875 r!7292 s!2326))))

(declare-fun lt!2457587 () Unit!160147)

(declare-fun mainMatchTheorem!3793 (Regex!16692 List!66377) Unit!160147)

(assert (=> b!6863322 (= lt!2457587 (mainMatchTheorem!3793 r!7292 s!2326))))

(declare-fun b!6863323 () Bool)

(assert (=> b!6863323 (= e!4137597 (isEmpty!38612 (t!380119 zl!343)))))

(declare-fun b!6863324 () Bool)

(declare-fun res!2800055 () Bool)

(assert (=> b!6863324 (=> res!2800055 e!4137595)))

(assert (=> b!6863324 (= res!2800055 (exists!2816 lt!2457581 lambda!388236))))

(declare-fun b!6863325 () Bool)

(declare-fun res!2800053 () Bool)

(assert (=> b!6863325 (=> res!2800053 e!4137602)))

(assert (=> b!6863325 (= res!2800053 (or (not (is-Cons!66252 zl!343)) (is-Nil!66253 s!2326) (not (= zl!343 (Cons!66252 (h!72700 zl!343) (t!380119 zl!343))))))))

(declare-fun b!6863326 () Bool)

(declare-fun e!4137604 () Bool)

(declare-fun tp!1883160 () Bool)

(assert (=> b!6863326 (= e!4137604 tp!1883160)))

(declare-fun b!6863327 () Bool)

(declare-fun tp!1883164 () Bool)

(assert (=> b!6863327 (= e!4137596 tp!1883164)))

(declare-fun setNonEmpty!47194 () Bool)

(declare-fun tp!1883165 () Bool)

(declare-fun setRes!47194 () Bool)

(declare-fun setElem!47194 () Context!12152)

(assert (=> setNonEmpty!47194 (= setRes!47194 (and tp!1883165 (inv!84978 setElem!47194) e!4137604))))

(declare-fun z!1189 () (Set Context!12152))

(declare-fun setRest!47194 () (Set Context!12152))

(assert (=> setNonEmpty!47194 (= z!1189 (set.union (set.insert setElem!47194 (as set.empty (Set Context!12152))) setRest!47194))))

(declare-fun b!6863328 () Bool)

(declare-fun tp!1883169 () Bool)

(declare-fun tp!1883167 () Bool)

(assert (=> b!6863328 (= e!4137601 (and tp!1883169 tp!1883167))))

(declare-fun b!6863329 () Bool)

(declare-fun e!4137598 () Bool)

(declare-fun e!4137605 () Bool)

(assert (=> b!6863329 (= e!4137598 e!4137605)))

(declare-fun res!2800060 () Bool)

(assert (=> b!6863329 (=> res!2800060 e!4137605)))

(declare-fun lt!2457584 () Int)

(declare-fun lt!2457583 () Context!12152)

(declare-fun zipperDepthTotal!441 (List!66376) Int)

(assert (=> b!6863329 (= res!2800060 (<= lt!2457584 (zipperDepthTotal!441 (Cons!66252 lt!2457583 Nil!66252))))))

(declare-fun lt!2457586 () Int)

(assert (=> b!6863329 (< lt!2457586 lt!2457584)))

(assert (=> b!6863329 (= lt!2457584 (zipperDepthTotal!441 zl!343))))

(declare-fun contextDepthTotal!413 (Context!12152) Int)

(assert (=> b!6863329 (= lt!2457586 (contextDepthTotal!413 lt!2457583))))

(declare-fun lt!2457585 () Unit!160147)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!45 (List!66376 Context!12152) Unit!160147)

(assert (=> b!6863329 (= lt!2457585 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!45 zl!343 lt!2457583))))

(declare-fun setIsEmpty!47194 () Bool)

(assert (=> setIsEmpty!47194 setRes!47194))

(declare-fun res!2800052 () Bool)

(assert (=> start!662558 (=> (not res!2800052) (not e!4137599))))

(declare-fun validRegex!8428 (Regex!16692) Bool)

(assert (=> start!662558 (= res!2800052 (validRegex!8428 r!7292))))

(assert (=> start!662558 e!4137599))

(assert (=> start!662558 e!4137601))

(declare-fun condSetEmpty!47194 () Bool)

(assert (=> start!662558 (= condSetEmpty!47194 (= z!1189 (as set.empty (Set Context!12152))))))

(assert (=> start!662558 setRes!47194))

(assert (=> start!662558 e!4137606))

(assert (=> start!662558 e!4137600))

(declare-fun b!6863330 () Bool)

(declare-fun res!2800049 () Bool)

(assert (=> b!6863330 (=> (not res!2800049) (not e!4137599))))

(declare-fun toList!10476 ((Set Context!12152)) List!66376)

(assert (=> b!6863330 (= res!2800049 (= (toList!10476 z!1189) zl!343))))

(declare-fun b!6863331 () Bool)

(declare-fun res!2800061 () Bool)

(assert (=> b!6863331 (=> res!2800061 e!4137595)))

(declare-fun matchZipper!2658 ((Set Context!12152) List!66377) Bool)

(assert (=> b!6863331 (= res!2800061 (not (matchZipper!2658 z!1189 s!2326)))))

(assert (=> b!6863332 (= e!4137603 e!4137598)))

(declare-fun res!2800054 () Bool)

(assert (=> b!6863332 (=> res!2800054 e!4137598)))

(declare-fun forall!15881 (List!66375 Int) Bool)

(assert (=> b!6863332 (= res!2800054 (not (forall!15881 (exprs!6576 lt!2457583) lambda!388238)))))

(assert (=> b!6863332 (forall!15881 (exprs!6576 lt!2457583) lambda!388238)))

(declare-fun lt!2457588 () Unit!160147)

(declare-fun lemmaContextForallValidExprs!67 (Context!12152 List!66375) Unit!160147)

(assert (=> b!6863332 (= lt!2457588 (lemmaContextForallValidExprs!67 lt!2457583 (exprs!6576 lt!2457583)))))

(declare-fun getWitness!971 (List!66376 Int) Context!12152)

(assert (=> b!6863332 (= lt!2457583 (getWitness!971 zl!343 lambda!388237))))

(declare-fun b!6863333 () Bool)

(declare-fun generalisedConcat!2280 (List!66375) Regex!16692)

(assert (=> b!6863333 (= e!4137605 (validRegex!8428 (generalisedConcat!2280 (exprs!6576 lt!2457583))))))

(declare-fun b!6863334 () Bool)

(declare-fun tp!1883163 () Bool)

(assert (=> b!6863334 (= e!4137601 tp!1883163)))

(assert (= (and start!662558 res!2800052) b!6863330))

(assert (= (and b!6863330 res!2800049) b!6863314))

(assert (= (and b!6863314 res!2800050) b!6863322))

(assert (= (and b!6863322 res!2800057) b!6863323))

(assert (= (and b!6863322 (not res!2800059)) b!6863325))

(assert (= (and b!6863325 (not res!2800053)) b!6863316))

(assert (= (and b!6863316 (not res!2800058)) b!6863318))

(assert (= (and b!6863318 (not res!2800056)) b!6863324))

(assert (= (and b!6863324 (not res!2800055)) b!6863331))

(assert (= (and b!6863331 (not res!2800061)) b!6863320))

(assert (= (and b!6863320 (not res!2800051)) b!6863332))

(assert (= (and b!6863332 (not res!2800054)) b!6863329))

(assert (= (and b!6863329 (not res!2800060)) b!6863333))

(assert (= (and start!662558 (is-ElementMatch!16692 r!7292)) b!6863321))

(assert (= (and start!662558 (is-Concat!25537 r!7292)) b!6863328))

(assert (= (and start!662558 (is-Star!16692 r!7292)) b!6863334))

(assert (= (and start!662558 (is-Union!16692 r!7292)) b!6863317))

(assert (= (and start!662558 condSetEmpty!47194) setIsEmpty!47194))

(assert (= (and start!662558 (not condSetEmpty!47194)) setNonEmpty!47194))

(assert (= setNonEmpty!47194 b!6863326))

(assert (= b!6863319 b!6863327))

(assert (= (and start!662558 (is-Cons!66252 zl!343)) b!6863319))

(assert (= (and start!662558 (is-Cons!66253 s!2326)) b!6863315))

(declare-fun m!7596644 () Bool)

(assert (=> start!662558 m!7596644))

(declare-fun m!7596646 () Bool)

(assert (=> b!6863324 m!7596646))

(declare-fun m!7596648 () Bool)

(assert (=> b!6863331 m!7596648))

(declare-fun m!7596650 () Bool)

(assert (=> b!6863319 m!7596650))

(declare-fun m!7596652 () Bool)

(assert (=> b!6863322 m!7596652))

(declare-fun m!7596654 () Bool)

(assert (=> b!6863322 m!7596654))

(declare-fun m!7596656 () Bool)

(assert (=> b!6863322 m!7596656))

(declare-fun m!7596658 () Bool)

(assert (=> b!6863320 m!7596658))

(assert (=> b!6863320 m!7596658))

(declare-fun m!7596660 () Bool)

(assert (=> b!6863320 m!7596660))

(declare-fun m!7596662 () Bool)

(assert (=> b!6863323 m!7596662))

(declare-fun m!7596664 () Bool)

(assert (=> b!6863333 m!7596664))

(assert (=> b!6863333 m!7596664))

(declare-fun m!7596666 () Bool)

(assert (=> b!6863333 m!7596666))

(declare-fun m!7596668 () Bool)

(assert (=> b!6863314 m!7596668))

(declare-fun m!7596670 () Bool)

(assert (=> b!6863330 m!7596670))

(declare-fun m!7596672 () Bool)

(assert (=> setNonEmpty!47194 m!7596672))

(assert (=> b!6863316 m!7596662))

(assert (=> b!6863318 m!7596646))

(declare-fun m!7596674 () Bool)

(assert (=> b!6863318 m!7596674))

(declare-fun m!7596676 () Bool)

(assert (=> b!6863318 m!7596676))

(declare-fun m!7596678 () Bool)

(assert (=> b!6863332 m!7596678))

(assert (=> b!6863332 m!7596678))

(declare-fun m!7596680 () Bool)

(assert (=> b!6863332 m!7596680))

(declare-fun m!7596682 () Bool)

(assert (=> b!6863332 m!7596682))

(declare-fun m!7596684 () Bool)

(assert (=> b!6863329 m!7596684))

(declare-fun m!7596686 () Bool)

(assert (=> b!6863329 m!7596686))

(declare-fun m!7596688 () Bool)

(assert (=> b!6863329 m!7596688))

(declare-fun m!7596690 () Bool)

(assert (=> b!6863329 m!7596690))

(push 1)

(assert tp_is_empty!42637)

(assert (not b!6863315))

(assert (not b!6863317))

(assert (not b!6863318))

(assert (not b!6863328))

(assert (not b!6863333))

(assert (not b!6863314))

(assert (not b!6863332))

(assert (not b!6863322))

(assert (not b!6863329))

(assert (not b!6863323))

(assert (not b!6863319))

(assert (not b!6863331))

(assert (not start!662558))

(assert (not b!6863316))

(assert (not b!6863326))

(assert (not b!6863324))

(assert (not b!6863334))

(assert (not b!6863330))

(assert (not setNonEmpty!47194))

(assert (not b!6863327))

(assert (not b!6863320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!625097 () Bool)

(declare-fun call!625104 () Bool)

(declare-fun c!1277395 () Bool)

(assert (=> bm!625097 (= call!625104 (validRegex!8428 (ite c!1277395 (regOne!33897 r!7292) (regOne!33896 r!7292))))))

(declare-fun d!2156260 () Bool)

(declare-fun res!2800115 () Bool)

(declare-fun e!4137663 () Bool)

(assert (=> d!2156260 (=> res!2800115 e!4137663)))

(assert (=> d!2156260 (= res!2800115 (is-ElementMatch!16692 r!7292))))

(assert (=> d!2156260 (= (validRegex!8428 r!7292) e!4137663)))

(declare-fun bm!625098 () Bool)

(declare-fun call!625103 () Bool)

(declare-fun call!625102 () Bool)

(assert (=> bm!625098 (= call!625103 call!625102)))

(declare-fun b!6863428 () Bool)

(declare-fun res!2800118 () Bool)

(declare-fun e!4137665 () Bool)

(assert (=> b!6863428 (=> (not res!2800118) (not e!4137665))))

(assert (=> b!6863428 (= res!2800118 call!625104)))

(declare-fun e!4137661 () Bool)

(assert (=> b!6863428 (= e!4137661 e!4137665)))

(declare-fun b!6863429 () Bool)

(declare-fun e!4137666 () Bool)

(assert (=> b!6863429 (= e!4137666 e!4137661)))

(assert (=> b!6863429 (= c!1277395 (is-Union!16692 r!7292))))

(declare-fun b!6863430 () Bool)

(assert (=> b!6863430 (= e!4137663 e!4137666)))

(declare-fun c!1277394 () Bool)

(assert (=> b!6863430 (= c!1277394 (is-Star!16692 r!7292))))

(declare-fun b!6863431 () Bool)

(assert (=> b!6863431 (= e!4137665 call!625103)))

(declare-fun bm!625099 () Bool)

(assert (=> bm!625099 (= call!625102 (validRegex!8428 (ite c!1277394 (reg!17021 r!7292) (ite c!1277395 (regTwo!33897 r!7292) (regTwo!33896 r!7292)))))))

(declare-fun b!6863432 () Bool)

(declare-fun e!4137662 () Bool)

(assert (=> b!6863432 (= e!4137662 call!625102)))

(declare-fun b!6863433 () Bool)

(assert (=> b!6863433 (= e!4137666 e!4137662)))

(declare-fun res!2800116 () Bool)

(declare-fun nullable!6653 (Regex!16692) Bool)

(assert (=> b!6863433 (= res!2800116 (not (nullable!6653 (reg!17021 r!7292))))))

(assert (=> b!6863433 (=> (not res!2800116) (not e!4137662))))

(declare-fun b!6863434 () Bool)

(declare-fun e!4137667 () Bool)

(declare-fun e!4137664 () Bool)

(assert (=> b!6863434 (= e!4137667 e!4137664)))

(declare-fun res!2800117 () Bool)

(assert (=> b!6863434 (=> (not res!2800117) (not e!4137664))))

(assert (=> b!6863434 (= res!2800117 call!625104)))

(declare-fun b!6863435 () Bool)

(assert (=> b!6863435 (= e!4137664 call!625103)))

(declare-fun b!6863436 () Bool)

(declare-fun res!2800119 () Bool)

(assert (=> b!6863436 (=> res!2800119 e!4137667)))

(assert (=> b!6863436 (= res!2800119 (not (is-Concat!25537 r!7292)))))

(assert (=> b!6863436 (= e!4137661 e!4137667)))

(assert (= (and d!2156260 (not res!2800115)) b!6863430))

(assert (= (and b!6863430 c!1277394) b!6863433))

(assert (= (and b!6863430 (not c!1277394)) b!6863429))

(assert (= (and b!6863433 res!2800116) b!6863432))

(assert (= (and b!6863429 c!1277395) b!6863428))

(assert (= (and b!6863429 (not c!1277395)) b!6863436))

(assert (= (and b!6863428 res!2800118) b!6863431))

(assert (= (and b!6863436 (not res!2800119)) b!6863434))

(assert (= (and b!6863434 res!2800117) b!6863435))

(assert (= (or b!6863431 b!6863435) bm!625098))

(assert (= (or b!6863428 b!6863434) bm!625097))

(assert (= (or b!6863432 bm!625098) bm!625099))

(declare-fun m!7596740 () Bool)

(assert (=> bm!625097 m!7596740))

(declare-fun m!7596742 () Bool)

(assert (=> bm!625099 m!7596742))

(declare-fun m!7596744 () Bool)

(assert (=> b!6863433 m!7596744))

(assert (=> start!662558 d!2156260))

(declare-fun bs!1834340 () Bool)

(declare-fun d!2156262 () Bool)

(assert (= bs!1834340 (and d!2156262 b!6863318)))

(declare-fun lambda!388258 () Int)

(assert (=> bs!1834340 (not (= lambda!388258 lambda!388236))))

(declare-fun bs!1834341 () Bool)

(assert (= bs!1834341 (and d!2156262 b!6863332)))

(assert (=> bs!1834341 (not (= lambda!388258 lambda!388238))))

(assert (=> d!2156262 true))

(declare-fun order!27709 () Int)

(declare-fun dynLambda!26509 (Int Int) Int)

(assert (=> d!2156262 (< (dynLambda!26509 order!27709 lambda!388236) (dynLambda!26509 order!27709 lambda!388258))))

(assert (=> d!2156262 (= (exists!2816 lt!2457581 lambda!388236) (not (forall!15881 lt!2457581 lambda!388258)))))

(declare-fun bs!1834342 () Bool)

(assert (= bs!1834342 d!2156262))

(declare-fun m!7596746 () Bool)

(assert (=> bs!1834342 m!7596746))

(assert (=> b!6863318 d!2156262))

(declare-fun bs!1834343 () Bool)

(declare-fun d!2156264 () Bool)

(assert (= bs!1834343 (and d!2156264 b!6863318)))

(declare-fun lambda!388263 () Int)

(assert (=> bs!1834343 (not (= lambda!388263 lambda!388236))))

(declare-fun bs!1834344 () Bool)

(assert (= bs!1834344 (and d!2156264 b!6863332)))

(assert (=> bs!1834344 (= lambda!388263 lambda!388238)))

(declare-fun bs!1834345 () Bool)

(assert (= bs!1834345 (and d!2156264 d!2156262)))

(assert (=> bs!1834345 (not (= lambda!388263 lambda!388258))))

(declare-fun lambda!388264 () Int)

(assert (=> bs!1834343 (= lambda!388264 lambda!388236)))

(assert (=> bs!1834344 (not (= lambda!388264 lambda!388238))))

(assert (=> bs!1834345 (not (= lambda!388264 lambda!388258))))

(declare-fun bs!1834346 () Bool)

(assert (= bs!1834346 d!2156264))

(assert (=> bs!1834346 (not (= lambda!388264 lambda!388263))))

(assert (=> d!2156264 true))

(assert (=> d!2156264 (= (matchR!8875 r!7292 s!2326) (exists!2816 lt!2457581 lambda!388264))))

(declare-fun lt!2457623 () Unit!160147)

(declare-fun choose!51144 (Regex!16692 List!66375 List!66377) Unit!160147)

(assert (=> d!2156264 (= lt!2457623 (choose!51144 r!7292 lt!2457581 s!2326))))

(assert (=> d!2156264 (forall!15881 lt!2457581 lambda!388263)))

(assert (=> d!2156264 (= (matchRGenUnionSpec!331 r!7292 lt!2457581 s!2326) lt!2457623)))

(assert (=> bs!1834346 m!7596654))

(declare-fun m!7596748 () Bool)

(assert (=> bs!1834346 m!7596748))

(declare-fun m!7596750 () Bool)

(assert (=> bs!1834346 m!7596750))

(declare-fun m!7596752 () Bool)

(assert (=> bs!1834346 m!7596752))

(assert (=> b!6863318 d!2156264))

(declare-fun bs!1834347 () Bool)

(declare-fun d!2156266 () Bool)

(assert (= bs!1834347 (and d!2156266 d!2156264)))

(declare-fun lambda!388267 () Int)

(assert (=> bs!1834347 (= lambda!388267 lambda!388263)))

(declare-fun bs!1834348 () Bool)

(assert (= bs!1834348 (and d!2156266 b!6863332)))

(assert (=> bs!1834348 (= lambda!388267 lambda!388238)))

(declare-fun bs!1834349 () Bool)

(assert (= bs!1834349 (and d!2156266 d!2156262)))

(assert (=> bs!1834349 (not (= lambda!388267 lambda!388258))))

(declare-fun bs!1834350 () Bool)

(assert (= bs!1834350 (and d!2156266 b!6863318)))

(assert (=> bs!1834350 (not (= lambda!388267 lambda!388236))))

(assert (=> bs!1834347 (not (= lambda!388267 lambda!388264))))

(declare-fun lt!2457626 () List!66375)

(assert (=> d!2156266 (forall!15881 lt!2457626 lambda!388267)))

(declare-fun e!4137672 () List!66375)

(assert (=> d!2156266 (= lt!2457626 e!4137672)))

(declare-fun c!1277398 () Bool)

(assert (=> d!2156266 (= c!1277398 (is-Cons!66252 zl!343))))

(assert (=> d!2156266 (= (unfocusZipperList!2109 zl!343) lt!2457626)))

(declare-fun b!6863445 () Bool)

(assert (=> b!6863445 (= e!4137672 (Cons!66251 (generalisedConcat!2280 (exprs!6576 (h!72700 zl!343))) (unfocusZipperList!2109 (t!380119 zl!343))))))

(declare-fun b!6863446 () Bool)

(assert (=> b!6863446 (= e!4137672 Nil!66251)))

(assert (= (and d!2156266 c!1277398) b!6863445))

(assert (= (and d!2156266 (not c!1277398)) b!6863446))

(declare-fun m!7596754 () Bool)

(assert (=> d!2156266 m!7596754))

(declare-fun m!7596756 () Bool)

(assert (=> b!6863445 m!7596756))

(declare-fun m!7596758 () Bool)

(assert (=> b!6863445 m!7596758))

(assert (=> b!6863318 d!2156266))

(declare-fun bs!1834351 () Bool)

(declare-fun d!2156268 () Bool)

(assert (= bs!1834351 (and d!2156268 d!2156264)))

(declare-fun lambda!388270 () Int)

(assert (=> bs!1834351 (= lambda!388270 lambda!388263)))

(declare-fun bs!1834352 () Bool)

(assert (= bs!1834352 (and d!2156268 b!6863332)))

(assert (=> bs!1834352 (= lambda!388270 lambda!388238)))

(declare-fun bs!1834353 () Bool)

(assert (= bs!1834353 (and d!2156268 d!2156262)))

(assert (=> bs!1834353 (not (= lambda!388270 lambda!388258))))

(declare-fun bs!1834354 () Bool)

(assert (= bs!1834354 (and d!2156268 b!6863318)))

(assert (=> bs!1834354 (not (= lambda!388270 lambda!388236))))

(assert (=> bs!1834351 (not (= lambda!388270 lambda!388264))))

(declare-fun bs!1834355 () Bool)

(assert (= bs!1834355 (and d!2156268 d!2156266)))

(assert (=> bs!1834355 (= lambda!388270 lambda!388267)))

(assert (=> d!2156268 (= (inv!84978 setElem!47194) (forall!15881 (exprs!6576 setElem!47194) lambda!388270))))

(declare-fun bs!1834356 () Bool)

(assert (= bs!1834356 d!2156268))

(declare-fun m!7596760 () Bool)

(assert (=> bs!1834356 m!7596760))

(assert (=> setNonEmpty!47194 d!2156268))

(declare-fun d!2156270 () Bool)

(assert (=> d!2156270 (= (isEmpty!38612 (t!380119 zl!343)) (is-Nil!66252 (t!380119 zl!343)))))

(assert (=> b!6863316 d!2156270))

(declare-fun bm!625100 () Bool)

(declare-fun call!625107 () Bool)

(declare-fun c!1277400 () Bool)

(assert (=> bm!625100 (= call!625107 (validRegex!8428 (ite c!1277400 (regOne!33897 (generalisedConcat!2280 (exprs!6576 lt!2457583))) (regOne!33896 (generalisedConcat!2280 (exprs!6576 lt!2457583))))))))

(declare-fun d!2156272 () Bool)

(declare-fun res!2800122 () Bool)

(declare-fun e!4137675 () Bool)

(assert (=> d!2156272 (=> res!2800122 e!4137675)))

(assert (=> d!2156272 (= res!2800122 (is-ElementMatch!16692 (generalisedConcat!2280 (exprs!6576 lt!2457583))))))

(assert (=> d!2156272 (= (validRegex!8428 (generalisedConcat!2280 (exprs!6576 lt!2457583))) e!4137675)))

(declare-fun bm!625101 () Bool)

(declare-fun call!625106 () Bool)

(declare-fun call!625105 () Bool)

(assert (=> bm!625101 (= call!625106 call!625105)))

(declare-fun b!6863447 () Bool)

(declare-fun res!2800125 () Bool)

(declare-fun e!4137677 () Bool)

(assert (=> b!6863447 (=> (not res!2800125) (not e!4137677))))

(assert (=> b!6863447 (= res!2800125 call!625107)))

(declare-fun e!4137673 () Bool)

(assert (=> b!6863447 (= e!4137673 e!4137677)))

(declare-fun b!6863448 () Bool)

(declare-fun e!4137678 () Bool)

(assert (=> b!6863448 (= e!4137678 e!4137673)))

(assert (=> b!6863448 (= c!1277400 (is-Union!16692 (generalisedConcat!2280 (exprs!6576 lt!2457583))))))

(declare-fun b!6863449 () Bool)

(assert (=> b!6863449 (= e!4137675 e!4137678)))

(declare-fun c!1277399 () Bool)

(assert (=> b!6863449 (= c!1277399 (is-Star!16692 (generalisedConcat!2280 (exprs!6576 lt!2457583))))))

(declare-fun b!6863450 () Bool)

(assert (=> b!6863450 (= e!4137677 call!625106)))

(declare-fun bm!625102 () Bool)

(assert (=> bm!625102 (= call!625105 (validRegex!8428 (ite c!1277399 (reg!17021 (generalisedConcat!2280 (exprs!6576 lt!2457583))) (ite c!1277400 (regTwo!33897 (generalisedConcat!2280 (exprs!6576 lt!2457583))) (regTwo!33896 (generalisedConcat!2280 (exprs!6576 lt!2457583)))))))))

(declare-fun b!6863451 () Bool)

(declare-fun e!4137674 () Bool)

(assert (=> b!6863451 (= e!4137674 call!625105)))

(declare-fun b!6863452 () Bool)

(assert (=> b!6863452 (= e!4137678 e!4137674)))

(declare-fun res!2800123 () Bool)

(assert (=> b!6863452 (= res!2800123 (not (nullable!6653 (reg!17021 (generalisedConcat!2280 (exprs!6576 lt!2457583))))))))

(assert (=> b!6863452 (=> (not res!2800123) (not e!4137674))))

(declare-fun b!6863453 () Bool)

(declare-fun e!4137679 () Bool)

(declare-fun e!4137676 () Bool)

(assert (=> b!6863453 (= e!4137679 e!4137676)))

(declare-fun res!2800124 () Bool)

(assert (=> b!6863453 (=> (not res!2800124) (not e!4137676))))

(assert (=> b!6863453 (= res!2800124 call!625107)))

(declare-fun b!6863454 () Bool)

(assert (=> b!6863454 (= e!4137676 call!625106)))

(declare-fun b!6863455 () Bool)

(declare-fun res!2800126 () Bool)

(assert (=> b!6863455 (=> res!2800126 e!4137679)))

(assert (=> b!6863455 (= res!2800126 (not (is-Concat!25537 (generalisedConcat!2280 (exprs!6576 lt!2457583)))))))

(assert (=> b!6863455 (= e!4137673 e!4137679)))

(assert (= (and d!2156272 (not res!2800122)) b!6863449))

(assert (= (and b!6863449 c!1277399) b!6863452))

(assert (= (and b!6863449 (not c!1277399)) b!6863448))

(assert (= (and b!6863452 res!2800123) b!6863451))

(assert (= (and b!6863448 c!1277400) b!6863447))

(assert (= (and b!6863448 (not c!1277400)) b!6863455))

(assert (= (and b!6863447 res!2800125) b!6863450))

(assert (= (and b!6863455 (not res!2800126)) b!6863453))

(assert (= (and b!6863453 res!2800124) b!6863454))

(assert (= (or b!6863450 b!6863454) bm!625101))

(assert (= (or b!6863447 b!6863453) bm!625100))

(assert (= (or b!6863451 bm!625101) bm!625102))

(declare-fun m!7596762 () Bool)

(assert (=> bm!625100 m!7596762))

(declare-fun m!7596764 () Bool)

(assert (=> bm!625102 m!7596764))

(declare-fun m!7596766 () Bool)

(assert (=> b!6863452 m!7596766))

(assert (=> b!6863333 d!2156272))

(declare-fun bs!1834357 () Bool)

(declare-fun d!2156274 () Bool)

(assert (= bs!1834357 (and d!2156274 d!2156264)))

(declare-fun lambda!388273 () Int)

(assert (=> bs!1834357 (= lambda!388273 lambda!388263)))

(declare-fun bs!1834358 () Bool)

(assert (= bs!1834358 (and d!2156274 b!6863332)))

(assert (=> bs!1834358 (= lambda!388273 lambda!388238)))

(declare-fun bs!1834359 () Bool)

(assert (= bs!1834359 (and d!2156274 d!2156262)))

(assert (=> bs!1834359 (not (= lambda!388273 lambda!388258))))

(declare-fun bs!1834360 () Bool)

(assert (= bs!1834360 (and d!2156274 b!6863318)))

(assert (=> bs!1834360 (not (= lambda!388273 lambda!388236))))

(assert (=> bs!1834357 (not (= lambda!388273 lambda!388264))))

(declare-fun bs!1834361 () Bool)

(assert (= bs!1834361 (and d!2156274 d!2156268)))

(assert (=> bs!1834361 (= lambda!388273 lambda!388270)))

(declare-fun bs!1834362 () Bool)

(assert (= bs!1834362 (and d!2156274 d!2156266)))

(assert (=> bs!1834362 (= lambda!388273 lambda!388267)))

(declare-fun e!4137695 () Bool)

(assert (=> d!2156274 e!4137695))

(declare-fun res!2800131 () Bool)

(assert (=> d!2156274 (=> (not res!2800131) (not e!4137695))))

(declare-fun lt!2457631 () Regex!16692)

(assert (=> d!2156274 (= res!2800131 (validRegex!8428 lt!2457631))))

(declare-fun e!4137697 () Regex!16692)

(assert (=> d!2156274 (= lt!2457631 e!4137697)))

(declare-fun c!1277411 () Bool)

(declare-fun e!4137696 () Bool)

(assert (=> d!2156274 (= c!1277411 e!4137696)))

(declare-fun res!2800132 () Bool)

(assert (=> d!2156274 (=> (not res!2800132) (not e!4137696))))

(assert (=> d!2156274 (= res!2800132 (is-Cons!66251 (exprs!6576 lt!2457583)))))

(assert (=> d!2156274 (forall!15881 (exprs!6576 lt!2457583) lambda!388273)))

(assert (=> d!2156274 (= (generalisedConcat!2280 (exprs!6576 lt!2457583)) lt!2457631)))

(declare-fun b!6863480 () Bool)

(declare-fun e!4137699 () Bool)

(declare-fun isEmptyExpr!2013 (Regex!16692) Bool)

(assert (=> b!6863480 (= e!4137699 (isEmptyExpr!2013 lt!2457631))))

(declare-fun b!6863481 () Bool)

(declare-fun e!4137694 () Regex!16692)

(assert (=> b!6863481 (= e!4137694 EmptyExpr!16692)))

(declare-fun b!6863482 () Bool)

(assert (=> b!6863482 (= e!4137694 (Concat!25537 (h!72699 (exprs!6576 lt!2457583)) (generalisedConcat!2280 (t!380118 (exprs!6576 lt!2457583)))))))

(declare-fun b!6863483 () Bool)

(declare-fun isEmpty!38614 (List!66375) Bool)

(assert (=> b!6863483 (= e!4137696 (isEmpty!38614 (t!380118 (exprs!6576 lt!2457583))))))

(declare-fun b!6863484 () Bool)

(declare-fun e!4137698 () Bool)

(assert (=> b!6863484 (= e!4137699 e!4137698)))

(declare-fun c!1277413 () Bool)

(declare-fun tail!12826 (List!66375) List!66375)

(assert (=> b!6863484 (= c!1277413 (isEmpty!38614 (tail!12826 (exprs!6576 lt!2457583))))))

(declare-fun b!6863485 () Bool)

(assert (=> b!6863485 (= e!4137697 (h!72699 (exprs!6576 lt!2457583)))))

(declare-fun b!6863486 () Bool)

(declare-fun head!13765 (List!66375) Regex!16692)

(assert (=> b!6863486 (= e!4137698 (= lt!2457631 (head!13765 (exprs!6576 lt!2457583))))))

(declare-fun b!6863487 () Bool)

(assert (=> b!6863487 (= e!4137695 e!4137699)))

(declare-fun c!1277412 () Bool)

(assert (=> b!6863487 (= c!1277412 (isEmpty!38614 (exprs!6576 lt!2457583)))))

(declare-fun b!6863488 () Bool)

(assert (=> b!6863488 (= e!4137697 e!4137694)))

(declare-fun c!1277414 () Bool)

(assert (=> b!6863488 (= c!1277414 (is-Cons!66251 (exprs!6576 lt!2457583)))))

(declare-fun b!6863489 () Bool)

(declare-fun isConcat!1536 (Regex!16692) Bool)

(assert (=> b!6863489 (= e!4137698 (isConcat!1536 lt!2457631))))

(assert (= (and d!2156274 res!2800132) b!6863483))

(assert (= (and d!2156274 c!1277411) b!6863485))

(assert (= (and d!2156274 (not c!1277411)) b!6863488))

(assert (= (and b!6863488 c!1277414) b!6863482))

(assert (= (and b!6863488 (not c!1277414)) b!6863481))

(assert (= (and d!2156274 res!2800131) b!6863487))

(assert (= (and b!6863487 c!1277412) b!6863480))

(assert (= (and b!6863487 (not c!1277412)) b!6863484))

(assert (= (and b!6863484 c!1277413) b!6863486))

(assert (= (and b!6863484 (not c!1277413)) b!6863489))

(declare-fun m!7596768 () Bool)

(assert (=> b!6863482 m!7596768))

(declare-fun m!7596770 () Bool)

(assert (=> b!6863480 m!7596770))

(declare-fun m!7596772 () Bool)

(assert (=> d!2156274 m!7596772))

(declare-fun m!7596774 () Bool)

(assert (=> d!2156274 m!7596774))

(declare-fun m!7596776 () Bool)

(assert (=> b!6863489 m!7596776))

(declare-fun m!7596778 () Bool)

(assert (=> b!6863486 m!7596778))

(declare-fun m!7596780 () Bool)

(assert (=> b!6863483 m!7596780))

(declare-fun m!7596782 () Bool)

(assert (=> b!6863487 m!7596782))

(declare-fun m!7596784 () Bool)

(assert (=> b!6863484 m!7596784))

(assert (=> b!6863484 m!7596784))

(declare-fun m!7596786 () Bool)

(assert (=> b!6863484 m!7596786))

(assert (=> b!6863333 d!2156274))

(declare-fun d!2156278 () Bool)

(declare-fun lt!2457635 () Regex!16692)

(assert (=> d!2156278 (validRegex!8428 lt!2457635)))

(declare-fun generalisedUnion!2528 (List!66375) Regex!16692)

(assert (=> d!2156278 (= lt!2457635 (generalisedUnion!2528 (unfocusZipperList!2109 zl!343)))))

(assert (=> d!2156278 (= (unfocusZipper!2434 zl!343) lt!2457635)))

(declare-fun bs!1834363 () Bool)

(assert (= bs!1834363 d!2156278))

(declare-fun m!7596792 () Bool)

(assert (=> bs!1834363 m!7596792))

(assert (=> bs!1834363 m!7596676))

(assert (=> bs!1834363 m!7596676))

(declare-fun m!7596794 () Bool)

(assert (=> bs!1834363 m!7596794))

(assert (=> b!6863314 d!2156278))

(assert (=> b!6863323 d!2156270))

(declare-fun d!2156282 () Bool)

(declare-fun res!2800137 () Bool)

(declare-fun e!4137706 () Bool)

(assert (=> d!2156282 (=> res!2800137 e!4137706)))

(assert (=> d!2156282 (= res!2800137 (is-Nil!66251 (exprs!6576 lt!2457583)))))

(assert (=> d!2156282 (= (forall!15881 (exprs!6576 lt!2457583) lambda!388238) e!4137706)))

(declare-fun b!6863498 () Bool)

(declare-fun e!4137707 () Bool)

(assert (=> b!6863498 (= e!4137706 e!4137707)))

(declare-fun res!2800138 () Bool)

(assert (=> b!6863498 (=> (not res!2800138) (not e!4137707))))

(declare-fun dynLambda!26510 (Int Regex!16692) Bool)

(assert (=> b!6863498 (= res!2800138 (dynLambda!26510 lambda!388238 (h!72699 (exprs!6576 lt!2457583))))))

(declare-fun b!6863499 () Bool)

(assert (=> b!6863499 (= e!4137707 (forall!15881 (t!380118 (exprs!6576 lt!2457583)) lambda!388238))))

(assert (= (and d!2156282 (not res!2800137)) b!6863498))

(assert (= (and b!6863498 res!2800138) b!6863499))

(declare-fun b_lambda!259443 () Bool)

(assert (=> (not b_lambda!259443) (not b!6863498)))

(declare-fun m!7596800 () Bool)

(assert (=> b!6863498 m!7596800))

(declare-fun m!7596802 () Bool)

(assert (=> b!6863499 m!7596802))

(assert (=> b!6863332 d!2156282))

(declare-fun bs!1834364 () Bool)

(declare-fun d!2156286 () Bool)

(assert (= bs!1834364 (and d!2156286 d!2156264)))

(declare-fun lambda!388276 () Int)

(assert (=> bs!1834364 (= lambda!388276 lambda!388263)))

(declare-fun bs!1834365 () Bool)

(assert (= bs!1834365 (and d!2156286 b!6863332)))

(assert (=> bs!1834365 (= lambda!388276 lambda!388238)))

(declare-fun bs!1834366 () Bool)

(assert (= bs!1834366 (and d!2156286 d!2156262)))

(assert (=> bs!1834366 (not (= lambda!388276 lambda!388258))))

(declare-fun bs!1834367 () Bool)

(assert (= bs!1834367 (and d!2156286 b!6863318)))

(assert (=> bs!1834367 (not (= lambda!388276 lambda!388236))))

(declare-fun bs!1834368 () Bool)

(assert (= bs!1834368 (and d!2156286 d!2156274)))

(assert (=> bs!1834368 (= lambda!388276 lambda!388273)))

(assert (=> bs!1834364 (not (= lambda!388276 lambda!388264))))

(declare-fun bs!1834369 () Bool)

(assert (= bs!1834369 (and d!2156286 d!2156268)))

(assert (=> bs!1834369 (= lambda!388276 lambda!388270)))

(declare-fun bs!1834370 () Bool)

(assert (= bs!1834370 (and d!2156286 d!2156266)))

(assert (=> bs!1834370 (= lambda!388276 lambda!388267)))

(assert (=> d!2156286 (forall!15881 (exprs!6576 lt!2457583) lambda!388276)))

(declare-fun lt!2457639 () Unit!160147)

(declare-fun choose!51145 (Context!12152 List!66375) Unit!160147)

(assert (=> d!2156286 (= lt!2457639 (choose!51145 lt!2457583 (exprs!6576 lt!2457583)))))

(assert (=> d!2156286 (= (exprs!6576 lt!2457583) (exprs!6576 lt!2457583))))

(assert (=> d!2156286 (= (lemmaContextForallValidExprs!67 lt!2457583 (exprs!6576 lt!2457583)) lt!2457639)))

(declare-fun bs!1834371 () Bool)

(assert (= bs!1834371 d!2156286))

(declare-fun m!7596804 () Bool)

(assert (=> bs!1834371 m!7596804))

(declare-fun m!7596806 () Bool)

(assert (=> bs!1834371 m!7596806))

(assert (=> b!6863332 d!2156286))

(declare-fun b!6863518 () Bool)

(declare-fun e!4137720 () Context!12152)

(assert (=> b!6863518 (= e!4137720 (getWitness!971 (t!380119 zl!343) lambda!388237))))

(declare-fun b!6863519 () Bool)

(declare-fun e!4137721 () Context!12152)

(assert (=> b!6863519 (= e!4137721 e!4137720)))

(declare-fun c!1277426 () Bool)

(assert (=> b!6863519 (= c!1277426 (is-Cons!66252 zl!343))))

(declare-fun b!6863520 () Bool)

(assert (=> b!6863520 (= e!4137721 (h!72700 zl!343))))

(declare-fun d!2156288 () Bool)

(declare-fun e!4137719 () Bool)

(assert (=> d!2156288 e!4137719))

(declare-fun res!2800143 () Bool)

(assert (=> d!2156288 (=> (not res!2800143) (not e!4137719))))

(declare-fun lt!2457647 () Context!12152)

(declare-fun dynLambda!26511 (Int Context!12152) Bool)

(assert (=> d!2156288 (= res!2800143 (dynLambda!26511 lambda!388237 lt!2457647))))

(assert (=> d!2156288 (= lt!2457647 e!4137721)))

(declare-fun c!1277427 () Bool)

(declare-fun e!4137722 () Bool)

(assert (=> d!2156288 (= c!1277427 e!4137722)))

(declare-fun res!2800144 () Bool)

(assert (=> d!2156288 (=> (not res!2800144) (not e!4137722))))

(assert (=> d!2156288 (= res!2800144 (is-Cons!66252 zl!343))))

(assert (=> d!2156288 (exists!2817 zl!343 lambda!388237)))

(assert (=> d!2156288 (= (getWitness!971 zl!343 lambda!388237) lt!2457647)))

(declare-fun b!6863521 () Bool)

(declare-fun contains!20350 (List!66376 Context!12152) Bool)

(assert (=> b!6863521 (= e!4137719 (contains!20350 zl!343 lt!2457647))))

(declare-fun b!6863522 () Bool)

(declare-fun lt!2457648 () Unit!160147)

(declare-fun Unit!160151 () Unit!160147)

(assert (=> b!6863522 (= lt!2457648 Unit!160151)))

(assert (=> b!6863522 false))

(declare-fun head!13766 (List!66376) Context!12152)

(assert (=> b!6863522 (= e!4137720 (head!13766 zl!343))))

(declare-fun b!6863523 () Bool)

(assert (=> b!6863523 (= e!4137722 (dynLambda!26511 lambda!388237 (h!72700 zl!343)))))

(assert (= (and d!2156288 res!2800144) b!6863523))

(assert (= (and d!2156288 c!1277427) b!6863520))

(assert (= (and d!2156288 (not c!1277427)) b!6863519))

(assert (= (and b!6863519 c!1277426) b!6863518))

(assert (= (and b!6863519 (not c!1277426)) b!6863522))

(assert (= (and d!2156288 res!2800143) b!6863521))

(declare-fun b_lambda!259445 () Bool)

(assert (=> (not b_lambda!259445) (not d!2156288)))

(declare-fun b_lambda!259447 () Bool)

(assert (=> (not b_lambda!259447) (not b!6863523)))

(declare-fun m!7596812 () Bool)

(assert (=> b!6863523 m!7596812))

(declare-fun m!7596814 () Bool)

(assert (=> b!6863521 m!7596814))

(declare-fun m!7596816 () Bool)

(assert (=> b!6863518 m!7596816))

(declare-fun m!7596818 () Bool)

(assert (=> b!6863522 m!7596818))

(declare-fun m!7596820 () Bool)

(assert (=> d!2156288 m!7596820))

(assert (=> d!2156288 m!7596658))

(assert (=> b!6863332 d!2156288))

(assert (=> b!6863324 d!2156262))

(declare-fun b!6863565 () Bool)

(assert (=> b!6863565 true))

(assert (=> b!6863565 true))

(declare-fun bs!1834375 () Bool)

(declare-fun b!6863561 () Bool)

(assert (= bs!1834375 (and b!6863561 b!6863565)))

(declare-fun lambda!388285 () Int)

(declare-fun lambda!388284 () Int)

(assert (=> bs!1834375 (not (= lambda!388285 lambda!388284))))

(assert (=> b!6863561 true))

(assert (=> b!6863561 true))

(declare-fun bm!625107 () Bool)

(declare-fun call!625113 () Bool)

(declare-fun isEmpty!38615 (List!66377) Bool)

(assert (=> bm!625107 (= call!625113 (isEmpty!38615 s!2326))))

(declare-fun b!6863559 () Bool)

(declare-fun c!1277440 () Bool)

(assert (=> b!6863559 (= c!1277440 (is-ElementMatch!16692 r!7292))))

(declare-fun e!4137747 () Bool)

(declare-fun e!4137741 () Bool)

(assert (=> b!6863559 (= e!4137747 e!4137741)))

(declare-fun b!6863560 () Bool)

(assert (=> b!6863560 (= e!4137741 (= s!2326 (Cons!66253 (c!1277386 r!7292) Nil!66253)))))

(declare-fun e!4137743 () Bool)

(declare-fun call!625112 () Bool)

(assert (=> b!6863561 (= e!4137743 call!625112)))

(declare-fun bm!625108 () Bool)

(declare-fun c!1277437 () Bool)

(declare-fun Exists!3752 (Int) Bool)

(assert (=> bm!625108 (= call!625112 (Exists!3752 (ite c!1277437 lambda!388284 lambda!388285)))))

(declare-fun b!6863562 () Bool)

(declare-fun e!4137746 () Bool)

(assert (=> b!6863562 (= e!4137746 (matchRSpec!3793 (regTwo!33897 r!7292) s!2326))))

(declare-fun b!6863563 () Bool)

(declare-fun c!1277438 () Bool)

(assert (=> b!6863563 (= c!1277438 (is-Union!16692 r!7292))))

(declare-fun e!4137745 () Bool)

(assert (=> b!6863563 (= e!4137741 e!4137745)))

(declare-fun b!6863564 () Bool)

(declare-fun e!4137742 () Bool)

(assert (=> b!6863564 (= e!4137742 e!4137747)))

(declare-fun res!2800162 () Bool)

(assert (=> b!6863564 (= res!2800162 (not (is-EmptyLang!16692 r!7292)))))

(assert (=> b!6863564 (=> (not res!2800162) (not e!4137747))))

(declare-fun e!4137744 () Bool)

(assert (=> b!6863565 (= e!4137744 call!625112)))

(declare-fun b!6863566 () Bool)

(declare-fun res!2800161 () Bool)

(assert (=> b!6863566 (=> res!2800161 e!4137744)))

(assert (=> b!6863566 (= res!2800161 call!625113)))

(assert (=> b!6863566 (= e!4137743 e!4137744)))

(declare-fun b!6863567 () Bool)

(assert (=> b!6863567 (= e!4137745 e!4137746)))

(declare-fun res!2800163 () Bool)

(assert (=> b!6863567 (= res!2800163 (matchRSpec!3793 (regOne!33897 r!7292) s!2326))))

(assert (=> b!6863567 (=> res!2800163 e!4137746)))

(declare-fun b!6863568 () Bool)

(assert (=> b!6863568 (= e!4137742 call!625113)))

(declare-fun b!6863558 () Bool)

(assert (=> b!6863558 (= e!4137745 e!4137743)))

(assert (=> b!6863558 (= c!1277437 (is-Star!16692 r!7292))))

(declare-fun d!2156292 () Bool)

(declare-fun c!1277439 () Bool)

(assert (=> d!2156292 (= c!1277439 (is-EmptyExpr!16692 r!7292))))

(assert (=> d!2156292 (= (matchRSpec!3793 r!7292 s!2326) e!4137742)))

(assert (= (and d!2156292 c!1277439) b!6863568))

(assert (= (and d!2156292 (not c!1277439)) b!6863564))

(assert (= (and b!6863564 res!2800162) b!6863559))

(assert (= (and b!6863559 c!1277440) b!6863560))

(assert (= (and b!6863559 (not c!1277440)) b!6863563))

(assert (= (and b!6863563 c!1277438) b!6863567))

(assert (= (and b!6863563 (not c!1277438)) b!6863558))

(assert (= (and b!6863567 (not res!2800163)) b!6863562))

(assert (= (and b!6863558 c!1277437) b!6863566))

(assert (= (and b!6863558 (not c!1277437)) b!6863561))

(assert (= (and b!6863566 (not res!2800161)) b!6863565))

(assert (= (or b!6863565 b!6863561) bm!625108))

(assert (= (or b!6863568 b!6863566) bm!625107))

(declare-fun m!7596828 () Bool)

(assert (=> bm!625107 m!7596828))

(declare-fun m!7596830 () Bool)

(assert (=> bm!625108 m!7596830))

(declare-fun m!7596832 () Bool)

(assert (=> b!6863562 m!7596832))

(declare-fun m!7596834 () Bool)

(assert (=> b!6863567 m!7596834))

(assert (=> b!6863322 d!2156292))

(declare-fun b!6863601 () Bool)

(declare-fun e!4137765 () Bool)

(assert (=> b!6863601 (= e!4137765 (nullable!6653 r!7292))))

(declare-fun b!6863602 () Bool)

(declare-fun e!4137766 () Bool)

(declare-fun head!13767 (List!66377) C!33654)

(assert (=> b!6863602 (= e!4137766 (not (= (head!13767 s!2326) (c!1277386 r!7292))))))

(declare-fun b!6863603 () Bool)

(declare-fun res!2800186 () Bool)

(declare-fun e!4137767 () Bool)

(assert (=> b!6863603 (=> (not res!2800186) (not e!4137767))))

(declare-fun tail!12827 (List!66377) List!66377)

(assert (=> b!6863603 (= res!2800186 (isEmpty!38615 (tail!12827 s!2326)))))

(declare-fun b!6863604 () Bool)

(declare-fun e!4137768 () Bool)

(assert (=> b!6863604 (= e!4137768 e!4137766)))

(declare-fun res!2800187 () Bool)

(assert (=> b!6863604 (=> res!2800187 e!4137766)))

(declare-fun call!625116 () Bool)

(assert (=> b!6863604 (= res!2800187 call!625116)))

(declare-fun b!6863605 () Bool)

(assert (=> b!6863605 (= e!4137767 (= (head!13767 s!2326) (c!1277386 r!7292)))))

(declare-fun b!6863606 () Bool)

(declare-fun res!2800180 () Bool)

(assert (=> b!6863606 (=> res!2800180 e!4137766)))

(assert (=> b!6863606 (= res!2800180 (not (isEmpty!38615 (tail!12827 s!2326))))))

(declare-fun d!2156298 () Bool)

(declare-fun e!4137762 () Bool)

(assert (=> d!2156298 e!4137762))

(declare-fun c!1277450 () Bool)

(assert (=> d!2156298 (= c!1277450 (is-EmptyExpr!16692 r!7292))))

(declare-fun lt!2457657 () Bool)

(assert (=> d!2156298 (= lt!2457657 e!4137765)))

(declare-fun c!1277451 () Bool)

(assert (=> d!2156298 (= c!1277451 (isEmpty!38615 s!2326))))

(assert (=> d!2156298 (validRegex!8428 r!7292)))

(assert (=> d!2156298 (= (matchR!8875 r!7292 s!2326) lt!2457657)))

(declare-fun b!6863607 () Bool)

(declare-fun res!2800185 () Bool)

(assert (=> b!6863607 (=> (not res!2800185) (not e!4137767))))

(assert (=> b!6863607 (= res!2800185 (not call!625116))))

(declare-fun b!6863608 () Bool)

(declare-fun derivativeStep!5335 (Regex!16692 C!33654) Regex!16692)

(assert (=> b!6863608 (= e!4137765 (matchR!8875 (derivativeStep!5335 r!7292 (head!13767 s!2326)) (tail!12827 s!2326)))))

(declare-fun b!6863609 () Bool)

(declare-fun e!4137763 () Bool)

(assert (=> b!6863609 (= e!4137763 e!4137768)))

(declare-fun res!2800182 () Bool)

(assert (=> b!6863609 (=> (not res!2800182) (not e!4137768))))

(assert (=> b!6863609 (= res!2800182 (not lt!2457657))))

(declare-fun b!6863610 () Bool)

(declare-fun res!2800181 () Bool)

(assert (=> b!6863610 (=> res!2800181 e!4137763)))

(assert (=> b!6863610 (= res!2800181 e!4137767)))

(declare-fun res!2800183 () Bool)

(assert (=> b!6863610 (=> (not res!2800183) (not e!4137767))))

(assert (=> b!6863610 (= res!2800183 lt!2457657)))

(declare-fun b!6863611 () Bool)

(assert (=> b!6863611 (= e!4137762 (= lt!2457657 call!625116))))

(declare-fun b!6863612 () Bool)

(declare-fun e!4137764 () Bool)

(assert (=> b!6863612 (= e!4137762 e!4137764)))

(declare-fun c!1277449 () Bool)

(assert (=> b!6863612 (= c!1277449 (is-EmptyLang!16692 r!7292))))

(declare-fun b!6863613 () Bool)

(declare-fun res!2800184 () Bool)

(assert (=> b!6863613 (=> res!2800184 e!4137763)))

(assert (=> b!6863613 (= res!2800184 (not (is-ElementMatch!16692 r!7292)))))

(assert (=> b!6863613 (= e!4137764 e!4137763)))

(declare-fun bm!625111 () Bool)

(assert (=> bm!625111 (= call!625116 (isEmpty!38615 s!2326))))

(declare-fun b!6863614 () Bool)

(assert (=> b!6863614 (= e!4137764 (not lt!2457657))))

(assert (= (and d!2156298 c!1277451) b!6863601))

(assert (= (and d!2156298 (not c!1277451)) b!6863608))

(assert (= (and d!2156298 c!1277450) b!6863611))

(assert (= (and d!2156298 (not c!1277450)) b!6863612))

(assert (= (and b!6863612 c!1277449) b!6863614))

(assert (= (and b!6863612 (not c!1277449)) b!6863613))

(assert (= (and b!6863613 (not res!2800184)) b!6863610))

(assert (= (and b!6863610 res!2800183) b!6863607))

(assert (= (and b!6863607 res!2800185) b!6863603))

(assert (= (and b!6863603 res!2800186) b!6863605))

(assert (= (and b!6863610 (not res!2800181)) b!6863609))

(assert (= (and b!6863609 res!2800182) b!6863604))

(assert (= (and b!6863604 (not res!2800187)) b!6863606))

(assert (= (and b!6863606 (not res!2800180)) b!6863602))

(assert (= (or b!6863611 b!6863604 b!6863607) bm!625111))

(assert (=> d!2156298 m!7596828))

(assert (=> d!2156298 m!7596644))

(declare-fun m!7596844 () Bool)

(assert (=> b!6863603 m!7596844))

(assert (=> b!6863603 m!7596844))

(declare-fun m!7596846 () Bool)

(assert (=> b!6863603 m!7596846))

(declare-fun m!7596848 () Bool)

(assert (=> b!6863602 m!7596848))

(assert (=> b!6863608 m!7596848))

(assert (=> b!6863608 m!7596848))

(declare-fun m!7596850 () Bool)

(assert (=> b!6863608 m!7596850))

(assert (=> b!6863608 m!7596844))

(assert (=> b!6863608 m!7596850))

(assert (=> b!6863608 m!7596844))

(declare-fun m!7596852 () Bool)

(assert (=> b!6863608 m!7596852))

(declare-fun m!7596854 () Bool)

(assert (=> b!6863601 m!7596854))

(assert (=> b!6863605 m!7596848))

(assert (=> bm!625111 m!7596828))

(assert (=> b!6863606 m!7596844))

(assert (=> b!6863606 m!7596844))

(assert (=> b!6863606 m!7596846))

(assert (=> b!6863322 d!2156298))

(declare-fun d!2156302 () Bool)

(assert (=> d!2156302 (= (matchR!8875 r!7292 s!2326) (matchRSpec!3793 r!7292 s!2326))))

(declare-fun lt!2457663 () Unit!160147)

(declare-fun choose!51146 (Regex!16692 List!66377) Unit!160147)

(assert (=> d!2156302 (= lt!2457663 (choose!51146 r!7292 s!2326))))

(assert (=> d!2156302 (validRegex!8428 r!7292)))

(assert (=> d!2156302 (= (mainMatchTheorem!3793 r!7292 s!2326) lt!2457663)))

(declare-fun bs!1834379 () Bool)

(assert (= bs!1834379 d!2156302))

(assert (=> bs!1834379 m!7596654))

(assert (=> bs!1834379 m!7596652))

(declare-fun m!7596862 () Bool)

(assert (=> bs!1834379 m!7596862))

(assert (=> bs!1834379 m!7596644))

(assert (=> b!6863322 d!2156302))

(declare-fun d!2156308 () Bool)

(declare-fun c!1277454 () Bool)

(assert (=> d!2156308 (= c!1277454 (isEmpty!38615 s!2326))))

(declare-fun e!4137774 () Bool)

(assert (=> d!2156308 (= (matchZipper!2658 z!1189 s!2326) e!4137774)))

(declare-fun b!6863622 () Bool)

(declare-fun nullableZipper!2366 ((Set Context!12152)) Bool)

(assert (=> b!6863622 (= e!4137774 (nullableZipper!2366 z!1189))))

(declare-fun b!6863623 () Bool)

(declare-fun derivationStepZipper!2613 ((Set Context!12152) C!33654) (Set Context!12152))

(assert (=> b!6863623 (= e!4137774 (matchZipper!2658 (derivationStepZipper!2613 z!1189 (head!13767 s!2326)) (tail!12827 s!2326)))))

(assert (= (and d!2156308 c!1277454) b!6863622))

(assert (= (and d!2156308 (not c!1277454)) b!6863623))

(assert (=> d!2156308 m!7596828))

(declare-fun m!7596864 () Bool)

(assert (=> b!6863622 m!7596864))

(assert (=> b!6863623 m!7596848))

(assert (=> b!6863623 m!7596848))

(declare-fun m!7596866 () Bool)

(assert (=> b!6863623 m!7596866))

(assert (=> b!6863623 m!7596844))

(assert (=> b!6863623 m!7596866))

(assert (=> b!6863623 m!7596844))

(declare-fun m!7596868 () Bool)

(assert (=> b!6863623 m!7596868))

(assert (=> b!6863331 d!2156308))

(declare-fun d!2156310 () Bool)

(declare-fun e!4137791 () Bool)

(assert (=> d!2156310 e!4137791))

(declare-fun res!2800203 () Bool)

(assert (=> d!2156310 (=> (not res!2800203) (not e!4137791))))

(declare-fun lt!2457666 () List!66376)

(declare-fun noDuplicate!2456 (List!66376) Bool)

(assert (=> d!2156310 (= res!2800203 (noDuplicate!2456 lt!2457666))))

(declare-fun choose!51147 ((Set Context!12152)) List!66376)

(assert (=> d!2156310 (= lt!2457666 (choose!51147 z!1189))))

(assert (=> d!2156310 (= (toList!10476 z!1189) lt!2457666)))

(declare-fun b!6863644 () Bool)

(declare-fun content!13005 (List!66376) (Set Context!12152))

(assert (=> b!6863644 (= e!4137791 (= (content!13005 lt!2457666) z!1189))))

(assert (= (and d!2156310 res!2800203) b!6863644))

(declare-fun m!7596870 () Bool)

(assert (=> d!2156310 m!7596870))

(declare-fun m!7596872 () Bool)

(assert (=> d!2156310 m!7596872))

(declare-fun m!7596874 () Bool)

(assert (=> b!6863644 m!7596874))

(assert (=> b!6863330 d!2156310))

(declare-fun bs!1834380 () Bool)

(declare-fun d!2156312 () Bool)

(assert (= bs!1834380 (and d!2156312 d!2156264)))

(declare-fun lambda!388289 () Int)

(assert (=> bs!1834380 (= lambda!388289 lambda!388263)))

(declare-fun bs!1834381 () Bool)

(assert (= bs!1834381 (and d!2156312 b!6863332)))

(assert (=> bs!1834381 (= lambda!388289 lambda!388238)))

(declare-fun bs!1834382 () Bool)

(assert (= bs!1834382 (and d!2156312 d!2156262)))

(assert (=> bs!1834382 (not (= lambda!388289 lambda!388258))))

(declare-fun bs!1834383 () Bool)

(assert (= bs!1834383 (and d!2156312 b!6863318)))

(assert (=> bs!1834383 (not (= lambda!388289 lambda!388236))))

(declare-fun bs!1834384 () Bool)

(assert (= bs!1834384 (and d!2156312 d!2156274)))

(assert (=> bs!1834384 (= lambda!388289 lambda!388273)))

(assert (=> bs!1834380 (not (= lambda!388289 lambda!388264))))

(declare-fun bs!1834385 () Bool)

(assert (= bs!1834385 (and d!2156312 d!2156266)))

(assert (=> bs!1834385 (= lambda!388289 lambda!388267)))

(declare-fun bs!1834386 () Bool)

(assert (= bs!1834386 (and d!2156312 d!2156268)))

(assert (=> bs!1834386 (= lambda!388289 lambda!388270)))

(declare-fun bs!1834387 () Bool)

(assert (= bs!1834387 (and d!2156312 d!2156286)))

(assert (=> bs!1834387 (= lambda!388289 lambda!388276)))

(assert (=> d!2156312 (= (inv!84978 (h!72700 zl!343)) (forall!15881 (exprs!6576 (h!72700 zl!343)) lambda!388289))))

(declare-fun bs!1834388 () Bool)

(assert (= bs!1834388 d!2156312))

(declare-fun m!7596876 () Bool)

(assert (=> bs!1834388 m!7596876))

(assert (=> b!6863319 d!2156312))

(declare-fun d!2156314 () Bool)

(declare-fun lt!2457669 () Int)

(assert (=> d!2156314 (>= lt!2457669 0)))

(declare-fun e!4137794 () Int)

(assert (=> d!2156314 (= lt!2457669 e!4137794)))

(declare-fun c!1277461 () Bool)

(assert (=> d!2156314 (= c!1277461 (is-Cons!66252 (Cons!66252 lt!2457583 Nil!66252)))))

(assert (=> d!2156314 (= (zipperDepthTotal!441 (Cons!66252 lt!2457583 Nil!66252)) lt!2457669)))

(declare-fun b!6863649 () Bool)

(assert (=> b!6863649 (= e!4137794 (+ (contextDepthTotal!413 (h!72700 (Cons!66252 lt!2457583 Nil!66252))) (zipperDepthTotal!441 (t!380119 (Cons!66252 lt!2457583 Nil!66252)))))))

(declare-fun b!6863650 () Bool)

(assert (=> b!6863650 (= e!4137794 0)))

(assert (= (and d!2156314 c!1277461) b!6863649))

(assert (= (and d!2156314 (not c!1277461)) b!6863650))

(declare-fun m!7596878 () Bool)

(assert (=> b!6863649 m!7596878))

(declare-fun m!7596880 () Bool)

(assert (=> b!6863649 m!7596880))

(assert (=> b!6863329 d!2156314))

(declare-fun d!2156316 () Bool)

(declare-fun lt!2457670 () Int)

(assert (=> d!2156316 (>= lt!2457670 0)))

(declare-fun e!4137795 () Int)

(assert (=> d!2156316 (= lt!2457670 e!4137795)))

(declare-fun c!1277462 () Bool)

(assert (=> d!2156316 (= c!1277462 (is-Cons!66252 zl!343))))

(assert (=> d!2156316 (= (zipperDepthTotal!441 zl!343) lt!2457670)))

(declare-fun b!6863651 () Bool)

(assert (=> b!6863651 (= e!4137795 (+ (contextDepthTotal!413 (h!72700 zl!343)) (zipperDepthTotal!441 (t!380119 zl!343))))))

(declare-fun b!6863652 () Bool)

(assert (=> b!6863652 (= e!4137795 0)))

(assert (= (and d!2156316 c!1277462) b!6863651))

(assert (= (and d!2156316 (not c!1277462)) b!6863652))

(declare-fun m!7596882 () Bool)

(assert (=> b!6863651 m!7596882))

(declare-fun m!7596884 () Bool)

(assert (=> b!6863651 m!7596884))

(assert (=> b!6863329 d!2156316))

(declare-fun d!2156318 () Bool)

(declare-fun lt!2457673 () Int)

(assert (=> d!2156318 (>= lt!2457673 0)))

(declare-fun e!4137798 () Int)

(assert (=> d!2156318 (= lt!2457673 e!4137798)))

(declare-fun c!1277466 () Bool)

(assert (=> d!2156318 (= c!1277466 (is-Cons!66251 (exprs!6576 lt!2457583)))))

(assert (=> d!2156318 (= (contextDepthTotal!413 lt!2457583) lt!2457673)))

(declare-fun b!6863657 () Bool)

(declare-fun regexDepthTotal!258 (Regex!16692) Int)

(assert (=> b!6863657 (= e!4137798 (+ (regexDepthTotal!258 (h!72699 (exprs!6576 lt!2457583))) (contextDepthTotal!413 (Context!12153 (t!380118 (exprs!6576 lt!2457583))))))))

(declare-fun b!6863658 () Bool)

(assert (=> b!6863658 (= e!4137798 1)))

(assert (= (and d!2156318 c!1277466) b!6863657))

(assert (= (and d!2156318 (not c!1277466)) b!6863658))

(declare-fun m!7596886 () Bool)

(assert (=> b!6863657 m!7596886))

(declare-fun m!7596888 () Bool)

(assert (=> b!6863657 m!7596888))

(assert (=> b!6863329 d!2156318))

(declare-fun d!2156320 () Bool)

(assert (=> d!2156320 (< (contextDepthTotal!413 lt!2457583) (zipperDepthTotal!441 zl!343))))

(declare-fun lt!2457676 () Unit!160147)

(declare-fun choose!51148 (List!66376 Context!12152) Unit!160147)

(assert (=> d!2156320 (= lt!2457676 (choose!51148 zl!343 lt!2457583))))

(assert (=> d!2156320 (contains!20350 zl!343 lt!2457583)))

(assert (=> d!2156320 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!45 zl!343 lt!2457583) lt!2457676)))

(declare-fun bs!1834389 () Bool)

(assert (= bs!1834389 d!2156320))

(assert (=> bs!1834389 m!7596688))

(assert (=> bs!1834389 m!7596686))

(declare-fun m!7596890 () Bool)

(assert (=> bs!1834389 m!7596890))

(declare-fun m!7596892 () Bool)

(assert (=> bs!1834389 m!7596892))

(assert (=> b!6863329 d!2156320))

(declare-fun bs!1834390 () Bool)

(declare-fun d!2156322 () Bool)

(assert (= bs!1834390 (and d!2156322 b!6863320)))

(declare-fun lambda!388292 () Int)

(assert (=> bs!1834390 (not (= lambda!388292 lambda!388237))))

(assert (=> d!2156322 true))

(declare-fun order!27713 () Int)

(declare-fun dynLambda!26512 (Int Int) Int)

(assert (=> d!2156322 (< (dynLambda!26512 order!27713 lambda!388237) (dynLambda!26512 order!27713 lambda!388292))))

(declare-fun forall!15883 (List!66376 Int) Bool)

(assert (=> d!2156322 (= (exists!2817 zl!343 lambda!388237) (not (forall!15883 zl!343 lambda!388292)))))

(declare-fun bs!1834391 () Bool)

(assert (= bs!1834391 d!2156322))

(declare-fun m!7596900 () Bool)

(assert (=> bs!1834391 m!7596900))

(assert (=> b!6863320 d!2156322))

(declare-fun bs!1834392 () Bool)

(declare-fun d!2156326 () Bool)

(assert (= bs!1834392 (and d!2156326 b!6863320)))

(declare-fun lambda!388295 () Int)

(assert (=> bs!1834392 (= lambda!388295 lambda!388237)))

(declare-fun bs!1834393 () Bool)

(assert (= bs!1834393 (and d!2156326 d!2156322)))

(assert (=> bs!1834393 (not (= lambda!388295 lambda!388292))))

(assert (=> d!2156326 true))

(assert (=> d!2156326 (exists!2817 zl!343 lambda!388295)))

(declare-fun lt!2457679 () Unit!160147)

(declare-fun choose!51149 (List!66376 List!66377) Unit!160147)

(assert (=> d!2156326 (= lt!2457679 (choose!51149 zl!343 s!2326))))

(assert (=> d!2156326 (matchZipper!2658 (content!13005 zl!343) s!2326)))

(assert (=> d!2156326 (= (lemmaZipperMatchesExistsMatchingContext!91 zl!343 s!2326) lt!2457679)))

(declare-fun bs!1834394 () Bool)

(assert (= bs!1834394 d!2156326))

(declare-fun m!7596906 () Bool)

(assert (=> bs!1834394 m!7596906))

(declare-fun m!7596908 () Bool)

(assert (=> bs!1834394 m!7596908))

(declare-fun m!7596910 () Bool)

(assert (=> bs!1834394 m!7596910))

(assert (=> bs!1834394 m!7596910))

(declare-fun m!7596912 () Bool)

(assert (=> bs!1834394 m!7596912))

(assert (=> b!6863320 d!2156326))

(declare-fun b!6863687 () Bool)

(declare-fun e!4137814 () Bool)

(declare-fun tp!1883214 () Bool)

(declare-fun tp!1883210 () Bool)

(assert (=> b!6863687 (= e!4137814 (and tp!1883214 tp!1883210))))

(assert (=> b!6863328 (= tp!1883169 e!4137814)))

(declare-fun b!6863689 () Bool)

(declare-fun tp!1883211 () Bool)

(declare-fun tp!1883213 () Bool)

(assert (=> b!6863689 (= e!4137814 (and tp!1883211 tp!1883213))))

(declare-fun b!6863688 () Bool)

(declare-fun tp!1883212 () Bool)

(assert (=> b!6863688 (= e!4137814 tp!1883212)))

(declare-fun b!6863686 () Bool)

(assert (=> b!6863686 (= e!4137814 tp_is_empty!42637)))

(assert (= (and b!6863328 (is-ElementMatch!16692 (regOne!33896 r!7292))) b!6863686))

(assert (= (and b!6863328 (is-Concat!25537 (regOne!33896 r!7292))) b!6863687))

(assert (= (and b!6863328 (is-Star!16692 (regOne!33896 r!7292))) b!6863688))

(assert (= (and b!6863328 (is-Union!16692 (regOne!33896 r!7292))) b!6863689))

(declare-fun b!6863691 () Bool)

(declare-fun e!4137815 () Bool)

(declare-fun tp!1883219 () Bool)

(declare-fun tp!1883215 () Bool)

(assert (=> b!6863691 (= e!4137815 (and tp!1883219 tp!1883215))))

(assert (=> b!6863328 (= tp!1883167 e!4137815)))

(declare-fun b!6863693 () Bool)

(declare-fun tp!1883216 () Bool)

(declare-fun tp!1883218 () Bool)

(assert (=> b!6863693 (= e!4137815 (and tp!1883216 tp!1883218))))

(declare-fun b!6863692 () Bool)

(declare-fun tp!1883217 () Bool)

(assert (=> b!6863692 (= e!4137815 tp!1883217)))

(declare-fun b!6863690 () Bool)

(assert (=> b!6863690 (= e!4137815 tp_is_empty!42637)))

(assert (= (and b!6863328 (is-ElementMatch!16692 (regTwo!33896 r!7292))) b!6863690))

(assert (= (and b!6863328 (is-Concat!25537 (regTwo!33896 r!7292))) b!6863691))

(assert (= (and b!6863328 (is-Star!16692 (regTwo!33896 r!7292))) b!6863692))

(assert (= (and b!6863328 (is-Union!16692 (regTwo!33896 r!7292))) b!6863693))

(declare-fun b!6863698 () Bool)

(declare-fun e!4137818 () Bool)

(declare-fun tp!1883224 () Bool)

(declare-fun tp!1883225 () Bool)

(assert (=> b!6863698 (= e!4137818 (and tp!1883224 tp!1883225))))

(assert (=> b!6863327 (= tp!1883164 e!4137818)))

(assert (= (and b!6863327 (is-Cons!66251 (exprs!6576 (h!72700 zl!343)))) b!6863698))

(declare-fun b!6863700 () Bool)

(declare-fun e!4137819 () Bool)

(declare-fun tp!1883230 () Bool)

(declare-fun tp!1883226 () Bool)

(assert (=> b!6863700 (= e!4137819 (and tp!1883230 tp!1883226))))

(assert (=> b!6863317 (= tp!1883162 e!4137819)))

(declare-fun b!6863702 () Bool)

(declare-fun tp!1883227 () Bool)

(declare-fun tp!1883229 () Bool)

(assert (=> b!6863702 (= e!4137819 (and tp!1883227 tp!1883229))))

(declare-fun b!6863701 () Bool)

(declare-fun tp!1883228 () Bool)

(assert (=> b!6863701 (= e!4137819 tp!1883228)))

(declare-fun b!6863699 () Bool)

(assert (=> b!6863699 (= e!4137819 tp_is_empty!42637)))

(assert (= (and b!6863317 (is-ElementMatch!16692 (regOne!33897 r!7292))) b!6863699))

(assert (= (and b!6863317 (is-Concat!25537 (regOne!33897 r!7292))) b!6863700))

(assert (= (and b!6863317 (is-Star!16692 (regOne!33897 r!7292))) b!6863701))

(assert (= (and b!6863317 (is-Union!16692 (regOne!33897 r!7292))) b!6863702))

(declare-fun b!6863704 () Bool)

(declare-fun e!4137820 () Bool)

(declare-fun tp!1883235 () Bool)

(declare-fun tp!1883231 () Bool)

(assert (=> b!6863704 (= e!4137820 (and tp!1883235 tp!1883231))))

(assert (=> b!6863317 (= tp!1883166 e!4137820)))

(declare-fun b!6863706 () Bool)

(declare-fun tp!1883232 () Bool)

(declare-fun tp!1883234 () Bool)

(assert (=> b!6863706 (= e!4137820 (and tp!1883232 tp!1883234))))

(declare-fun b!6863705 () Bool)

(declare-fun tp!1883233 () Bool)

(assert (=> b!6863705 (= e!4137820 tp!1883233)))

(declare-fun b!6863703 () Bool)

(assert (=> b!6863703 (= e!4137820 tp_is_empty!42637)))

(assert (= (and b!6863317 (is-ElementMatch!16692 (regTwo!33897 r!7292))) b!6863703))

(assert (= (and b!6863317 (is-Concat!25537 (regTwo!33897 r!7292))) b!6863704))

(assert (= (and b!6863317 (is-Star!16692 (regTwo!33897 r!7292))) b!6863705))

(assert (= (and b!6863317 (is-Union!16692 (regTwo!33897 r!7292))) b!6863706))

(declare-fun condSetEmpty!47200 () Bool)

(assert (=> setNonEmpty!47194 (= condSetEmpty!47200 (= setRest!47194 (as set.empty (Set Context!12152))))))

(declare-fun setRes!47200 () Bool)

(assert (=> setNonEmpty!47194 (= tp!1883165 setRes!47200)))

(declare-fun setIsEmpty!47200 () Bool)

(assert (=> setIsEmpty!47200 setRes!47200))

(declare-fun setElem!47200 () Context!12152)

(declare-fun e!4137823 () Bool)

(declare-fun setNonEmpty!47200 () Bool)

(declare-fun tp!1883240 () Bool)

(assert (=> setNonEmpty!47200 (= setRes!47200 (and tp!1883240 (inv!84978 setElem!47200) e!4137823))))

(declare-fun setRest!47200 () (Set Context!12152))

(assert (=> setNonEmpty!47200 (= setRest!47194 (set.union (set.insert setElem!47200 (as set.empty (Set Context!12152))) setRest!47200))))

(declare-fun b!6863711 () Bool)

(declare-fun tp!1883241 () Bool)

(assert (=> b!6863711 (= e!4137823 tp!1883241)))

(assert (= (and setNonEmpty!47194 condSetEmpty!47200) setIsEmpty!47200))

(assert (= (and setNonEmpty!47194 (not condSetEmpty!47200)) setNonEmpty!47200))

(assert (= setNonEmpty!47200 b!6863711))

(declare-fun m!7596914 () Bool)

(assert (=> setNonEmpty!47200 m!7596914))

(declare-fun b!6863716 () Bool)

(declare-fun e!4137826 () Bool)

(declare-fun tp!1883244 () Bool)

(assert (=> b!6863716 (= e!4137826 (and tp_is_empty!42637 tp!1883244))))

(assert (=> b!6863315 (= tp!1883161 e!4137826)))

(assert (= (and b!6863315 (is-Cons!66253 (t!380120 s!2326))) b!6863716))

(declare-fun b!6863717 () Bool)

(declare-fun e!4137827 () Bool)

(declare-fun tp!1883245 () Bool)

(declare-fun tp!1883246 () Bool)

(assert (=> b!6863717 (= e!4137827 (and tp!1883245 tp!1883246))))

(assert (=> b!6863326 (= tp!1883160 e!4137827)))

(assert (= (and b!6863326 (is-Cons!66251 (exprs!6576 setElem!47194))) b!6863717))

(declare-fun b!6863725 () Bool)

(declare-fun e!4137833 () Bool)

(declare-fun tp!1883251 () Bool)

(assert (=> b!6863725 (= e!4137833 tp!1883251)))

(declare-fun b!6863724 () Bool)

(declare-fun tp!1883252 () Bool)

(declare-fun e!4137832 () Bool)

(assert (=> b!6863724 (= e!4137832 (and (inv!84978 (h!72700 (t!380119 zl!343))) e!4137833 tp!1883252))))

(assert (=> b!6863319 (= tp!1883168 e!4137832)))

(assert (= b!6863724 b!6863725))

(assert (= (and b!6863319 (is-Cons!66252 (t!380119 zl!343))) b!6863724))

(declare-fun m!7596916 () Bool)

(assert (=> b!6863724 m!7596916))

(declare-fun b!6863727 () Bool)

(declare-fun e!4137834 () Bool)

(declare-fun tp!1883257 () Bool)

(declare-fun tp!1883253 () Bool)

(assert (=> b!6863727 (= e!4137834 (and tp!1883257 tp!1883253))))

(assert (=> b!6863334 (= tp!1883163 e!4137834)))

(declare-fun b!6863729 () Bool)

(declare-fun tp!1883254 () Bool)

(declare-fun tp!1883256 () Bool)

(assert (=> b!6863729 (= e!4137834 (and tp!1883254 tp!1883256))))

(declare-fun b!6863728 () Bool)

(declare-fun tp!1883255 () Bool)

(assert (=> b!6863728 (= e!4137834 tp!1883255)))

(declare-fun b!6863726 () Bool)

(assert (=> b!6863726 (= e!4137834 tp_is_empty!42637)))

(assert (= (and b!6863334 (is-ElementMatch!16692 (reg!17021 r!7292))) b!6863726))

(assert (= (and b!6863334 (is-Concat!25537 (reg!17021 r!7292))) b!6863727))

(assert (= (and b!6863334 (is-Star!16692 (reg!17021 r!7292))) b!6863728))

(assert (= (and b!6863334 (is-Union!16692 (reg!17021 r!7292))) b!6863729))

(declare-fun b_lambda!259451 () Bool)

(assert (= b_lambda!259447 (or b!6863320 b_lambda!259451)))

(declare-fun bs!1834395 () Bool)

(declare-fun d!2156330 () Bool)

(assert (= bs!1834395 (and d!2156330 b!6863320)))

(assert (=> bs!1834395 (= (dynLambda!26511 lambda!388237 (h!72700 zl!343)) (matchZipper!2658 (set.insert (h!72700 zl!343) (as set.empty (Set Context!12152))) s!2326))))

(declare-fun m!7596918 () Bool)

(assert (=> bs!1834395 m!7596918))

(assert (=> bs!1834395 m!7596918))

(declare-fun m!7596920 () Bool)

(assert (=> bs!1834395 m!7596920))

(assert (=> b!6863523 d!2156330))

(declare-fun b_lambda!259453 () Bool)

(assert (= b_lambda!259445 (or b!6863320 b_lambda!259453)))

(declare-fun bs!1834396 () Bool)

(declare-fun d!2156332 () Bool)

(assert (= bs!1834396 (and d!2156332 b!6863320)))

(assert (=> bs!1834396 (= (dynLambda!26511 lambda!388237 lt!2457647) (matchZipper!2658 (set.insert lt!2457647 (as set.empty (Set Context!12152))) s!2326))))

(declare-fun m!7596922 () Bool)

(assert (=> bs!1834396 m!7596922))

(assert (=> bs!1834396 m!7596922))

(declare-fun m!7596924 () Bool)

(assert (=> bs!1834396 m!7596924))

(assert (=> d!2156288 d!2156332))

(declare-fun b_lambda!259455 () Bool)

(assert (= b_lambda!259443 (or b!6863332 b_lambda!259455)))

(declare-fun bs!1834397 () Bool)

(declare-fun d!2156334 () Bool)

(assert (= bs!1834397 (and d!2156334 b!6863332)))

(assert (=> bs!1834397 (= (dynLambda!26510 lambda!388238 (h!72699 (exprs!6576 lt!2457583))) (validRegex!8428 (h!72699 (exprs!6576 lt!2457583))))))

(declare-fun m!7596926 () Bool)

(assert (=> bs!1834397 m!7596926))

(assert (=> b!6863498 d!2156334))

(push 1)

(assert (not b!6863608))

(assert (not bs!1834396))

(assert (not b!6863486))

(assert (not b!6863606))

(assert (not bm!625100))

(assert (not b!6863567))

(assert (not b!6863729))

(assert (not b_lambda!259453))

(assert (not b!6863711))

(assert tp_is_empty!42637)

(assert (not b!6863691))

(assert (not b!6863521))

(assert (not b!6863499))

(assert (not b!6863487))

(assert (not bm!625097))

(assert (not b!6863717))

(assert (not d!2156298))

(assert (not d!2156264))

(assert (not b!6863482))

(assert (not bs!1834397))

(assert (not bm!625108))

(assert (not b!6863657))

(assert (not b!6863727))

(assert (not b!6863705))

(assert (not b!6863692))

(assert (not b!6863603))

(assert (not b!6863688))

(assert (not bm!625107))

(assert (not b!6863602))

(assert (not b!6863484))

(assert (not b!6863698))

(assert (not b!6863489))

(assert (not b!6863700))

(assert (not b!6863649))

(assert (not b!6863644))

(assert (not b!6863728))

(assert (not bm!625102))

(assert (not b!6863693))

(assert (not bm!625099))

(assert (not b!6863706))

(assert (not d!2156274))

(assert (not b!6863689))

(assert (not d!2156310))

(assert (not d!2156302))

(assert (not bs!1834395))

(assert (not b!6863433))

(assert (not b!6863605))

(assert (not d!2156312))

(assert (not setNonEmpty!47200))

(assert (not d!2156320))

(assert (not b_lambda!259451))

(assert (not b!6863724))

(assert (not d!2156326))

(assert (not b!6863651))

(assert (not d!2156262))

(assert (not d!2156278))

(assert (not d!2156322))

(assert (not b!6863716))

(assert (not b!6863452))

(assert (not b!6863687))

(assert (not b!6863704))

(assert (not d!2156268))

(assert (not d!2156266))

(assert (not d!2156308))

(assert (not b!6863562))

(assert (not b!6863518))

(assert (not b!6863725))

(assert (not d!2156288))

(assert (not b_lambda!259455))

(assert (not b!6863522))

(assert (not b!6863702))

(assert (not b!6863445))

(assert (not b!6863623))

(assert (not b!6863483))

(assert (not b!6863701))

(assert (not b!6863480))

(assert (not bm!625111))

(assert (not b!6863622))

(assert (not b!6863601))

(assert (not d!2156286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

