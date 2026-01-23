; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573968 () Bool)

(assert start!573968)

(declare-fun b!5493187 () Bool)

(declare-fun e!3398486 () Bool)

(declare-fun tp!1511464 () Bool)

(assert (=> b!5493187 (= e!3398486 tp!1511464)))

(declare-fun b!5493188 () Bool)

(declare-fun res!2342371 () Bool)

(declare-fun e!3398489 () Bool)

(assert (=> b!5493188 (=> (not res!2342371) (not e!3398489))))

(declare-datatypes ((C!31186 0))(
  ( (C!31187 (val!25295 Int)) )
))
(declare-datatypes ((Regex!15458 0))(
  ( (ElementMatch!15458 (c!959016 C!31186)) (Concat!24303 (regOne!31428 Regex!15458) (regTwo!31428 Regex!15458)) (EmptyExpr!15458) (Star!15458 (reg!15787 Regex!15458)) (EmptyLang!15458) (Union!15458 (regOne!31429 Regex!15458) (regTwo!31429 Regex!15458)) )
))
(declare-fun r!7292 () Regex!15458)

(declare-datatypes ((List!62673 0))(
  ( (Nil!62549) (Cons!62549 (h!68997 Regex!15458) (t!375904 List!62673)) )
))
(declare-datatypes ((Context!9684 0))(
  ( (Context!9685 (exprs!5342 List!62673)) )
))
(declare-datatypes ((List!62674 0))(
  ( (Nil!62550) (Cons!62550 (h!68998 Context!9684) (t!375905 List!62674)) )
))
(declare-fun zl!343 () List!62674)

(declare-fun unfocusZipper!1200 (List!62674) Regex!15458)

(assert (=> b!5493188 (= res!2342371 (= r!7292 (unfocusZipper!1200 zl!343)))))

(declare-fun b!5493189 () Bool)

(declare-fun e!3398488 () Bool)

(declare-fun tp!1511460 () Bool)

(assert (=> b!5493189 (= e!3398488 tp!1511460)))

(declare-fun b!5493190 () Bool)

(declare-fun e!3398490 () Bool)

(declare-fun tp_is_empty!40169 () Bool)

(declare-fun tp!1511465 () Bool)

(assert (=> b!5493190 (= e!3398490 (and tp_is_empty!40169 tp!1511465))))

(declare-fun b!5493191 () Bool)

(declare-fun e!3398487 () Bool)

(declare-fun generalisedUnion!1321 (List!62673) Regex!15458)

(declare-fun unfocusZipperList!886 (List!62674) List!62673)

(assert (=> b!5493191 (= e!3398487 (= r!7292 (generalisedUnion!1321 (unfocusZipperList!886 zl!343))))))

(declare-fun b!5493192 () Bool)

(declare-fun res!2342372 () Bool)

(assert (=> b!5493192 (=> (not res!2342372) (not e!3398489))))

(declare-fun z!1189 () (Set Context!9684))

(declare-fun toList!9242 ((Set Context!9684)) List!62674)

(assert (=> b!5493192 (= res!2342372 (= (toList!9242 z!1189) zl!343))))

(declare-fun tp!1511458 () Bool)

(declare-fun e!3398485 () Bool)

(declare-fun b!5493193 () Bool)

(declare-fun e!3398491 () Bool)

(declare-fun inv!81893 (Context!9684) Bool)

(assert (=> b!5493193 (= e!3398491 (and (inv!81893 (h!68998 zl!343)) e!3398485 tp!1511458))))

(declare-fun b!5493194 () Bool)

(declare-fun tp!1511461 () Bool)

(declare-fun tp!1511457 () Bool)

(assert (=> b!5493194 (= e!3398488 (and tp!1511461 tp!1511457))))

(declare-fun b!5493195 () Bool)

(declare-fun tp!1511463 () Bool)

(declare-fun tp!1511459 () Bool)

(assert (=> b!5493195 (= e!3398488 (and tp!1511463 tp!1511459))))

(declare-fun tp!1511462 () Bool)

(declare-fun setRes!36352 () Bool)

(declare-fun setElem!36352 () Context!9684)

(declare-fun setNonEmpty!36352 () Bool)

(assert (=> setNonEmpty!36352 (= setRes!36352 (and tp!1511462 (inv!81893 setElem!36352) e!3398486))))

(declare-fun setRest!36352 () (Set Context!9684))

(assert (=> setNonEmpty!36352 (= z!1189 (set.union (set.insert setElem!36352 (as set.empty (Set Context!9684))) setRest!36352))))

(declare-fun res!2342369 () Bool)

(assert (=> start!573968 (=> (not res!2342369) (not e!3398489))))

(declare-fun validRegex!7194 (Regex!15458) Bool)

(assert (=> start!573968 (= res!2342369 (validRegex!7194 r!7292))))

(assert (=> start!573968 e!3398489))

(assert (=> start!573968 e!3398488))

(declare-fun condSetEmpty!36352 () Bool)

(assert (=> start!573968 (= condSetEmpty!36352 (= z!1189 (as set.empty (Set Context!9684))))))

(assert (=> start!573968 setRes!36352))

(assert (=> start!573968 e!3398491))

(assert (=> start!573968 e!3398490))

(declare-fun b!5493196 () Bool)

(assert (=> b!5493196 (= e!3398489 (not e!3398487))))

(declare-fun res!2342373 () Bool)

(assert (=> b!5493196 (=> res!2342373 e!3398487)))

(assert (=> b!5493196 (= res!2342373 (not (is-Cons!62550 zl!343)))))

(declare-datatypes ((List!62675 0))(
  ( (Nil!62551) (Cons!62551 (h!68999 C!31186) (t!375906 List!62675)) )
))
(declare-fun s!2326 () List!62675)

(declare-fun matchR!7643 (Regex!15458 List!62675) Bool)

(declare-fun matchRSpec!2561 (Regex!15458 List!62675) Bool)

(assert (=> b!5493196 (= (matchR!7643 r!7292 s!2326) (matchRSpec!2561 r!7292 s!2326))))

(declare-datatypes ((Unit!155376 0))(
  ( (Unit!155377) )
))
(declare-fun lt!2242494 () Unit!155376)

(declare-fun mainMatchTheorem!2561 (Regex!15458 List!62675) Unit!155376)

(assert (=> b!5493196 (= lt!2242494 (mainMatchTheorem!2561 r!7292 s!2326))))

(declare-fun b!5493197 () Bool)

(assert (=> b!5493197 (= e!3398488 tp_is_empty!40169)))

(declare-fun b!5493198 () Bool)

(declare-fun res!2342368 () Bool)

(assert (=> b!5493198 (=> res!2342368 e!3398487)))

(declare-fun isEmpty!34350 (List!62674) Bool)

(assert (=> b!5493198 (= res!2342368 (not (isEmpty!34350 (t!375905 zl!343))))))

(declare-fun b!5493199 () Bool)

(declare-fun tp!1511456 () Bool)

(assert (=> b!5493199 (= e!3398485 tp!1511456)))

(declare-fun b!5493200 () Bool)

(declare-fun res!2342370 () Bool)

(assert (=> b!5493200 (=> res!2342370 e!3398487)))

(assert (=> b!5493200 (= res!2342370 (not (is-Cons!62549 (exprs!5342 (h!68998 zl!343)))))))

(declare-fun b!5493201 () Bool)

(declare-fun res!2342367 () Bool)

(assert (=> b!5493201 (=> res!2342367 e!3398487)))

(declare-fun generalisedConcat!1073 (List!62673) Regex!15458)

(assert (=> b!5493201 (= res!2342367 (not (= r!7292 (generalisedConcat!1073 (exprs!5342 (h!68998 zl!343))))))))

(declare-fun setIsEmpty!36352 () Bool)

(assert (=> setIsEmpty!36352 setRes!36352))

(assert (= (and start!573968 res!2342369) b!5493192))

(assert (= (and b!5493192 res!2342372) b!5493188))

(assert (= (and b!5493188 res!2342371) b!5493196))

(assert (= (and b!5493196 (not res!2342373)) b!5493198))

(assert (= (and b!5493198 (not res!2342368)) b!5493201))

(assert (= (and b!5493201 (not res!2342367)) b!5493200))

(assert (= (and b!5493200 (not res!2342370)) b!5493191))

(assert (= (and start!573968 (is-ElementMatch!15458 r!7292)) b!5493197))

(assert (= (and start!573968 (is-Concat!24303 r!7292)) b!5493195))

(assert (= (and start!573968 (is-Star!15458 r!7292)) b!5493189))

(assert (= (and start!573968 (is-Union!15458 r!7292)) b!5493194))

(assert (= (and start!573968 condSetEmpty!36352) setIsEmpty!36352))

(assert (= (and start!573968 (not condSetEmpty!36352)) setNonEmpty!36352))

(assert (= setNonEmpty!36352 b!5493187))

(assert (= b!5493193 b!5493199))

(assert (= (and start!573968 (is-Cons!62550 zl!343)) b!5493193))

(assert (= (and start!573968 (is-Cons!62551 s!2326)) b!5493190))

(declare-fun m!6504640 () Bool)

(assert (=> b!5493192 m!6504640))

(declare-fun m!6504642 () Bool)

(assert (=> b!5493201 m!6504642))

(declare-fun m!6504644 () Bool)

(assert (=> start!573968 m!6504644))

(declare-fun m!6504646 () Bool)

(assert (=> setNonEmpty!36352 m!6504646))

(declare-fun m!6504648 () Bool)

(assert (=> b!5493198 m!6504648))

(declare-fun m!6504650 () Bool)

(assert (=> b!5493193 m!6504650))

(declare-fun m!6504652 () Bool)

(assert (=> b!5493196 m!6504652))

(declare-fun m!6504654 () Bool)

(assert (=> b!5493196 m!6504654))

(declare-fun m!6504656 () Bool)

(assert (=> b!5493196 m!6504656))

(declare-fun m!6504658 () Bool)

(assert (=> b!5493188 m!6504658))

(declare-fun m!6504660 () Bool)

(assert (=> b!5493191 m!6504660))

(assert (=> b!5493191 m!6504660))

(declare-fun m!6504662 () Bool)

(assert (=> b!5493191 m!6504662))

(push 1)

(assert (not b!5493195))

(assert (not start!573968))

(assert (not setNonEmpty!36352))

(assert tp_is_empty!40169)

(assert (not b!5493194))

(assert (not b!5493191))

(assert (not b!5493189))

(assert (not b!5493201))

(assert (not b!5493196))

(assert (not b!5493193))

(assert (not b!5493187))

(assert (not b!5493198))

(assert (not b!5493199))

(assert (not b!5493188))

(assert (not b!5493190))

(assert (not b!5493192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1742211 () Bool)

(declare-fun lambda!294096 () Int)

(declare-fun forall!14651 (List!62673 Int) Bool)

(assert (=> d!1742211 (= (inv!81893 setElem!36352) (forall!14651 (exprs!5342 setElem!36352) lambda!294096))))

(declare-fun bs!1267623 () Bool)

(assert (= bs!1267623 d!1742211))

(declare-fun m!6504688 () Bool)

(assert (=> bs!1267623 m!6504688))

(assert (=> setNonEmpty!36352 d!1742211))

(declare-fun bs!1267624 () Bool)

(declare-fun d!1742213 () Bool)

(assert (= bs!1267624 (and d!1742213 d!1742211)))

(declare-fun lambda!294099 () Int)

(assert (=> bs!1267624 (= lambda!294099 lambda!294096)))

(declare-fun b!5493267 () Bool)

(declare-fun e!3398526 () Regex!15458)

(assert (=> b!5493267 (= e!3398526 (Concat!24303 (h!68997 (exprs!5342 (h!68998 zl!343))) (generalisedConcat!1073 (t!375904 (exprs!5342 (h!68998 zl!343))))))))

(declare-fun b!5493268 () Bool)

(declare-fun e!3398527 () Bool)

(declare-fun lt!2242500 () Regex!15458)

(declare-fun head!11757 (List!62673) Regex!15458)

(assert (=> b!5493268 (= e!3398527 (= lt!2242500 (head!11757 (exprs!5342 (h!68998 zl!343)))))))

(declare-fun b!5493269 () Bool)

(declare-fun e!3398525 () Bool)

(declare-fun isEmpty!34352 (List!62673) Bool)

(assert (=> b!5493269 (= e!3398525 (isEmpty!34352 (t!375904 (exprs!5342 (h!68998 zl!343)))))))

(declare-fun b!5493271 () Bool)

(declare-fun e!3398529 () Regex!15458)

(assert (=> b!5493271 (= e!3398529 e!3398526)))

(declare-fun c!959029 () Bool)

(assert (=> b!5493271 (= c!959029 (is-Cons!62549 (exprs!5342 (h!68998 zl!343))))))

(declare-fun b!5493272 () Bool)

(declare-fun isConcat!572 (Regex!15458) Bool)

(assert (=> b!5493272 (= e!3398527 (isConcat!572 lt!2242500))))

(declare-fun b!5493273 () Bool)

(declare-fun e!3398528 () Bool)

(assert (=> b!5493273 (= e!3398528 e!3398527)))

(declare-fun c!959026 () Bool)

(declare-fun tail!10852 (List!62673) List!62673)

(assert (=> b!5493273 (= c!959026 (isEmpty!34352 (tail!10852 (exprs!5342 (h!68998 zl!343)))))))

(declare-fun b!5493274 () Bool)

(assert (=> b!5493274 (= e!3398529 (h!68997 (exprs!5342 (h!68998 zl!343))))))

(declare-fun b!5493275 () Bool)

(assert (=> b!5493275 (= e!3398526 EmptyExpr!15458)))

(declare-fun b!5493276 () Bool)

(declare-fun e!3398530 () Bool)

(assert (=> b!5493276 (= e!3398530 e!3398528)))

(declare-fun c!959028 () Bool)

(assert (=> b!5493276 (= c!959028 (isEmpty!34352 (exprs!5342 (h!68998 zl!343))))))

(declare-fun b!5493270 () Bool)

(declare-fun isEmptyExpr!1049 (Regex!15458) Bool)

(assert (=> b!5493270 (= e!3398528 (isEmptyExpr!1049 lt!2242500))))

(assert (=> d!1742213 e!3398530))

(declare-fun res!2342399 () Bool)

(assert (=> d!1742213 (=> (not res!2342399) (not e!3398530))))

(assert (=> d!1742213 (= res!2342399 (validRegex!7194 lt!2242500))))

(assert (=> d!1742213 (= lt!2242500 e!3398529)))

(declare-fun c!959027 () Bool)

(assert (=> d!1742213 (= c!959027 e!3398525)))

(declare-fun res!2342400 () Bool)

(assert (=> d!1742213 (=> (not res!2342400) (not e!3398525))))

(assert (=> d!1742213 (= res!2342400 (is-Cons!62549 (exprs!5342 (h!68998 zl!343))))))

(assert (=> d!1742213 (forall!14651 (exprs!5342 (h!68998 zl!343)) lambda!294099)))

(assert (=> d!1742213 (= (generalisedConcat!1073 (exprs!5342 (h!68998 zl!343))) lt!2242500)))

(assert (= (and d!1742213 res!2342400) b!5493269))

(assert (= (and d!1742213 c!959027) b!5493274))

(assert (= (and d!1742213 (not c!959027)) b!5493271))

(assert (= (and b!5493271 c!959029) b!5493267))

(assert (= (and b!5493271 (not c!959029)) b!5493275))

(assert (= (and d!1742213 res!2342399) b!5493276))

(assert (= (and b!5493276 c!959028) b!5493270))

(assert (= (and b!5493276 (not c!959028)) b!5493273))

(assert (= (and b!5493273 c!959026) b!5493268))

(assert (= (and b!5493273 (not c!959026)) b!5493272))

(declare-fun m!6504690 () Bool)

(assert (=> d!1742213 m!6504690))

(declare-fun m!6504692 () Bool)

(assert (=> d!1742213 m!6504692))

(declare-fun m!6504694 () Bool)

(assert (=> b!5493273 m!6504694))

(assert (=> b!5493273 m!6504694))

(declare-fun m!6504696 () Bool)

(assert (=> b!5493273 m!6504696))

(declare-fun m!6504698 () Bool)

(assert (=> b!5493267 m!6504698))

(declare-fun m!6504700 () Bool)

(assert (=> b!5493276 m!6504700))

(declare-fun m!6504702 () Bool)

(assert (=> b!5493270 m!6504702))

(declare-fun m!6504704 () Bool)

(assert (=> b!5493268 m!6504704))

(declare-fun m!6504706 () Bool)

(assert (=> b!5493272 m!6504706))

(declare-fun m!6504708 () Bool)

(assert (=> b!5493269 m!6504708))

(assert (=> b!5493201 d!1742213))

(declare-fun d!1742215 () Bool)

(declare-fun res!2342411 () Bool)

(declare-fun e!3398546 () Bool)

(assert (=> d!1742215 (=> res!2342411 e!3398546)))

(assert (=> d!1742215 (= res!2342411 (is-ElementMatch!15458 r!7292))))

(assert (=> d!1742215 (= (validRegex!7194 r!7292) e!3398546)))

(declare-fun b!5493295 () Bool)

(declare-fun e!3398550 () Bool)

(declare-fun e!3398551 () Bool)

(assert (=> b!5493295 (= e!3398550 e!3398551)))

(declare-fun c!959034 () Bool)

(assert (=> b!5493295 (= c!959034 (is-Union!15458 r!7292))))

(declare-fun b!5493296 () Bool)

(declare-fun e!3398548 () Bool)

(declare-fun call!405026 () Bool)

(assert (=> b!5493296 (= e!3398548 call!405026)))

(declare-fun call!405025 () Bool)

(declare-fun bm!405019 () Bool)

(declare-fun c!959035 () Bool)

(assert (=> bm!405019 (= call!405025 (validRegex!7194 (ite c!959035 (reg!15787 r!7292) (ite c!959034 (regOne!31429 r!7292) (regOne!31428 r!7292)))))))

(declare-fun bm!405020 () Bool)

(assert (=> bm!405020 (= call!405026 (validRegex!7194 (ite c!959034 (regTwo!31429 r!7292) (regTwo!31428 r!7292))))))

(declare-fun b!5493297 () Bool)

(declare-fun e!3398545 () Bool)

(assert (=> b!5493297 (= e!3398545 call!405026)))

(declare-fun b!5493298 () Bool)

(declare-fun res!2342413 () Bool)

(assert (=> b!5493298 (=> (not res!2342413) (not e!3398545))))

(declare-fun call!405024 () Bool)

(assert (=> b!5493298 (= res!2342413 call!405024)))

(assert (=> b!5493298 (= e!3398551 e!3398545)))

(declare-fun b!5493299 () Bool)

(declare-fun res!2342415 () Bool)

(declare-fun e!3398547 () Bool)

(assert (=> b!5493299 (=> res!2342415 e!3398547)))

(assert (=> b!5493299 (= res!2342415 (not (is-Concat!24303 r!7292)))))

(assert (=> b!5493299 (= e!3398551 e!3398547)))

(declare-fun b!5493300 () Bool)

(assert (=> b!5493300 (= e!3398546 e!3398550)))

(assert (=> b!5493300 (= c!959035 (is-Star!15458 r!7292))))

(declare-fun b!5493301 () Bool)

(assert (=> b!5493301 (= e!3398547 e!3398548)))

(declare-fun res!2342414 () Bool)

(assert (=> b!5493301 (=> (not res!2342414) (not e!3398548))))

(assert (=> b!5493301 (= res!2342414 call!405024)))

(declare-fun b!5493302 () Bool)

(declare-fun e!3398549 () Bool)

(assert (=> b!5493302 (= e!3398550 e!3398549)))

(declare-fun res!2342412 () Bool)

(declare-fun nullable!5501 (Regex!15458) Bool)

(assert (=> b!5493302 (= res!2342412 (not (nullable!5501 (reg!15787 r!7292))))))

(assert (=> b!5493302 (=> (not res!2342412) (not e!3398549))))

(declare-fun b!5493303 () Bool)

(assert (=> b!5493303 (= e!3398549 call!405025)))

(declare-fun bm!405021 () Bool)

(assert (=> bm!405021 (= call!405024 call!405025)))

(assert (= (and d!1742215 (not res!2342411)) b!5493300))

(assert (= (and b!5493300 c!959035) b!5493302))

(assert (= (and b!5493300 (not c!959035)) b!5493295))

(assert (= (and b!5493302 res!2342412) b!5493303))

(assert (= (and b!5493295 c!959034) b!5493298))

(assert (= (and b!5493295 (not c!959034)) b!5493299))

(assert (= (and b!5493298 res!2342413) b!5493297))

(assert (= (and b!5493299 (not res!2342415)) b!5493301))

(assert (= (and b!5493301 res!2342414) b!5493296))

(assert (= (or b!5493297 b!5493296) bm!405020))

(assert (= (or b!5493298 b!5493301) bm!405021))

(assert (= (or b!5493303 bm!405021) bm!405019))

(declare-fun m!6504710 () Bool)

(assert (=> bm!405019 m!6504710))

(declare-fun m!6504712 () Bool)

(assert (=> bm!405020 m!6504712))

(declare-fun m!6504714 () Bool)

(assert (=> b!5493302 m!6504714))

(assert (=> start!573968 d!1742215))

(declare-fun bs!1267625 () Bool)

(declare-fun d!1742217 () Bool)

(assert (= bs!1267625 (and d!1742217 d!1742211)))

(declare-fun lambda!294102 () Int)

(assert (=> bs!1267625 (= lambda!294102 lambda!294096)))

(declare-fun bs!1267626 () Bool)

(assert (= bs!1267626 (and d!1742217 d!1742213)))

(assert (=> bs!1267626 (= lambda!294102 lambda!294099)))

(declare-fun b!5493324 () Bool)

(declare-fun e!3398569 () Bool)

(declare-fun lt!2242503 () Regex!15458)

(assert (=> b!5493324 (= e!3398569 (= lt!2242503 (head!11757 (unfocusZipperList!886 zl!343))))))

(declare-fun b!5493325 () Bool)

(declare-fun e!3398564 () Regex!15458)

(declare-fun e!3398565 () Regex!15458)

(assert (=> b!5493325 (= e!3398564 e!3398565)))

(declare-fun c!959047 () Bool)

(assert (=> b!5493325 (= c!959047 (is-Cons!62549 (unfocusZipperList!886 zl!343)))))

(declare-fun b!5493326 () Bool)

(declare-fun isUnion!490 (Regex!15458) Bool)

(assert (=> b!5493326 (= e!3398569 (isUnion!490 lt!2242503))))

(declare-fun b!5493327 () Bool)

(assert (=> b!5493327 (= e!3398565 (Union!15458 (h!68997 (unfocusZipperList!886 zl!343)) (generalisedUnion!1321 (t!375904 (unfocusZipperList!886 zl!343)))))))

(declare-fun b!5493328 () Bool)

(declare-fun e!3398566 () Bool)

(assert (=> b!5493328 (= e!3398566 e!3398569)))

(declare-fun c!959046 () Bool)

(assert (=> b!5493328 (= c!959046 (isEmpty!34352 (tail!10852 (unfocusZipperList!886 zl!343))))))

(declare-fun b!5493330 () Bool)

(assert (=> b!5493330 (= e!3398564 (h!68997 (unfocusZipperList!886 zl!343)))))

(declare-fun b!5493331 () Bool)

(assert (=> b!5493331 (= e!3398565 EmptyLang!15458)))

(declare-fun e!3398567 () Bool)

(assert (=> d!1742217 e!3398567))

(declare-fun res!2342421 () Bool)

(assert (=> d!1742217 (=> (not res!2342421) (not e!3398567))))

(assert (=> d!1742217 (= res!2342421 (validRegex!7194 lt!2242503))))

(assert (=> d!1742217 (= lt!2242503 e!3398564)))

(declare-fun c!959044 () Bool)

(declare-fun e!3398568 () Bool)

(assert (=> d!1742217 (= c!959044 e!3398568)))

(declare-fun res!2342420 () Bool)

(assert (=> d!1742217 (=> (not res!2342420) (not e!3398568))))

(assert (=> d!1742217 (= res!2342420 (is-Cons!62549 (unfocusZipperList!886 zl!343)))))

(assert (=> d!1742217 (forall!14651 (unfocusZipperList!886 zl!343) lambda!294102)))

(assert (=> d!1742217 (= (generalisedUnion!1321 (unfocusZipperList!886 zl!343)) lt!2242503)))

(declare-fun b!5493329 () Bool)

(declare-fun isEmptyLang!1060 (Regex!15458) Bool)

(assert (=> b!5493329 (= e!3398566 (isEmptyLang!1060 lt!2242503))))

(declare-fun b!5493332 () Bool)

(assert (=> b!5493332 (= e!3398568 (isEmpty!34352 (t!375904 (unfocusZipperList!886 zl!343))))))

(declare-fun b!5493333 () Bool)

(assert (=> b!5493333 (= e!3398567 e!3398566)))

(declare-fun c!959045 () Bool)

(assert (=> b!5493333 (= c!959045 (isEmpty!34352 (unfocusZipperList!886 zl!343)))))

(assert (= (and d!1742217 res!2342420) b!5493332))

(assert (= (and d!1742217 c!959044) b!5493330))

(assert (= (and d!1742217 (not c!959044)) b!5493325))

(assert (= (and b!5493325 c!959047) b!5493327))

(assert (= (and b!5493325 (not c!959047)) b!5493331))

(assert (= (and d!1742217 res!2342421) b!5493333))

(assert (= (and b!5493333 c!959045) b!5493329))

(assert (= (and b!5493333 (not c!959045)) b!5493328))

(assert (= (and b!5493328 c!959046) b!5493324))

(assert (= (and b!5493328 (not c!959046)) b!5493326))

(assert (=> b!5493333 m!6504660))

(declare-fun m!6504716 () Bool)

(assert (=> b!5493333 m!6504716))

(assert (=> b!5493328 m!6504660))

(declare-fun m!6504718 () Bool)

(assert (=> b!5493328 m!6504718))

(assert (=> b!5493328 m!6504718))

(declare-fun m!6504720 () Bool)

(assert (=> b!5493328 m!6504720))

(declare-fun m!6504722 () Bool)

(assert (=> b!5493329 m!6504722))

(declare-fun m!6504724 () Bool)

(assert (=> b!5493332 m!6504724))

(assert (=> b!5493324 m!6504660))

(declare-fun m!6504726 () Bool)

(assert (=> b!5493324 m!6504726))

(declare-fun m!6504728 () Bool)

(assert (=> b!5493326 m!6504728))

(declare-fun m!6504730 () Bool)

(assert (=> b!5493327 m!6504730))

(declare-fun m!6504732 () Bool)

(assert (=> d!1742217 m!6504732))

(assert (=> d!1742217 m!6504660))

(declare-fun m!6504734 () Bool)

(assert (=> d!1742217 m!6504734))

(assert (=> b!5493191 d!1742217))

(declare-fun bs!1267627 () Bool)

(declare-fun d!1742219 () Bool)

(assert (= bs!1267627 (and d!1742219 d!1742211)))

(declare-fun lambda!294105 () Int)

(assert (=> bs!1267627 (= lambda!294105 lambda!294096)))

(declare-fun bs!1267628 () Bool)

(assert (= bs!1267628 (and d!1742219 d!1742213)))

(assert (=> bs!1267628 (= lambda!294105 lambda!294099)))

(declare-fun bs!1267629 () Bool)

(assert (= bs!1267629 (and d!1742219 d!1742217)))

(assert (=> bs!1267629 (= lambda!294105 lambda!294102)))

(declare-fun lt!2242506 () List!62673)

(assert (=> d!1742219 (forall!14651 lt!2242506 lambda!294105)))

(declare-fun e!3398572 () List!62673)

(assert (=> d!1742219 (= lt!2242506 e!3398572)))

(declare-fun c!959050 () Bool)

(assert (=> d!1742219 (= c!959050 (is-Cons!62550 zl!343))))

(assert (=> d!1742219 (= (unfocusZipperList!886 zl!343) lt!2242506)))

(declare-fun b!5493338 () Bool)

(assert (=> b!5493338 (= e!3398572 (Cons!62549 (generalisedConcat!1073 (exprs!5342 (h!68998 zl!343))) (unfocusZipperList!886 (t!375905 zl!343))))))

(declare-fun b!5493339 () Bool)

(assert (=> b!5493339 (= e!3398572 Nil!62549)))

(assert (= (and d!1742219 c!959050) b!5493338))

(assert (= (and d!1742219 (not c!959050)) b!5493339))

(declare-fun m!6504736 () Bool)

(assert (=> d!1742219 m!6504736))

(assert (=> b!5493338 m!6504642))

(declare-fun m!6504738 () Bool)

(assert (=> b!5493338 m!6504738))

(assert (=> b!5493191 d!1742219))

(declare-fun d!1742221 () Bool)

(declare-fun e!3398575 () Bool)

(assert (=> d!1742221 e!3398575))

(declare-fun res!2342424 () Bool)

(assert (=> d!1742221 (=> (not res!2342424) (not e!3398575))))

(declare-fun lt!2242509 () List!62674)

(declare-fun noDuplicate!1469 (List!62674) Bool)

(assert (=> d!1742221 (= res!2342424 (noDuplicate!1469 lt!2242509))))

(declare-fun choose!41762 ((Set Context!9684)) List!62674)

(assert (=> d!1742221 (= lt!2242509 (choose!41762 z!1189))))

(assert (=> d!1742221 (= (toList!9242 z!1189) lt!2242509)))

(declare-fun b!5493342 () Bool)

(declare-fun content!11231 (List!62674) (Set Context!9684))

(assert (=> b!5493342 (= e!3398575 (= (content!11231 lt!2242509) z!1189))))

(assert (= (and d!1742221 res!2342424) b!5493342))

(declare-fun m!6504740 () Bool)

(assert (=> d!1742221 m!6504740))

(declare-fun m!6504742 () Bool)

(assert (=> d!1742221 m!6504742))

(declare-fun m!6504744 () Bool)

(assert (=> b!5493342 m!6504744))

(assert (=> b!5493192 d!1742221))

(declare-fun b!5493407 () Bool)

(declare-fun e!3398614 () Bool)

(assert (=> b!5493407 (= e!3398614 (nullable!5501 r!7292))))

(declare-fun b!5493408 () Bool)

(declare-fun e!3398617 () Bool)

(declare-fun lt!2242518 () Bool)

(assert (=> b!5493408 (= e!3398617 (not lt!2242518))))

(declare-fun b!5493409 () Bool)

(declare-fun res!2342448 () Bool)

(declare-fun e!3398611 () Bool)

(assert (=> b!5493409 (=> (not res!2342448) (not e!3398611))))

(declare-fun call!405029 () Bool)

(assert (=> b!5493409 (= res!2342448 (not call!405029))))

(declare-fun b!5493410 () Bool)

(declare-fun res!2342453 () Bool)

(declare-fun e!3398613 () Bool)

(assert (=> b!5493410 (=> res!2342453 e!3398613)))

(declare-fun isEmpty!34353 (List!62675) Bool)

(declare-fun tail!10853 (List!62675) List!62675)

(assert (=> b!5493410 (= res!2342453 (not (isEmpty!34353 (tail!10853 s!2326))))))

(declare-fun b!5493411 () Bool)

(declare-fun e!3398615 () Bool)

(declare-fun e!3398616 () Bool)

(assert (=> b!5493411 (= e!3398615 e!3398616)))

(declare-fun res!2342447 () Bool)

(assert (=> b!5493411 (=> (not res!2342447) (not e!3398616))))

(assert (=> b!5493411 (= res!2342447 (not lt!2242518))))

(declare-fun b!5493412 () Bool)

(declare-fun res!2342449 () Bool)

(assert (=> b!5493412 (=> (not res!2342449) (not e!3398611))))

(assert (=> b!5493412 (= res!2342449 (isEmpty!34353 (tail!10853 s!2326)))))

(declare-fun b!5493413 () Bool)

(declare-fun e!3398612 () Bool)

(assert (=> b!5493413 (= e!3398612 (= lt!2242518 call!405029))))

(declare-fun b!5493414 () Bool)

(declare-fun head!11758 (List!62675) C!31186)

(assert (=> b!5493414 (= e!3398611 (= (head!11758 s!2326) (c!959016 r!7292)))))

(declare-fun b!5493415 () Bool)

(assert (=> b!5493415 (= e!3398613 (not (= (head!11758 s!2326) (c!959016 r!7292))))))

(declare-fun b!5493416 () Bool)

(declare-fun res!2342452 () Bool)

(assert (=> b!5493416 (=> res!2342452 e!3398615)))

(assert (=> b!5493416 (= res!2342452 (not (is-ElementMatch!15458 r!7292)))))

(assert (=> b!5493416 (= e!3398617 e!3398615)))

(declare-fun d!1742223 () Bool)

(assert (=> d!1742223 e!3398612))

(declare-fun c!959074 () Bool)

(assert (=> d!1742223 (= c!959074 (is-EmptyExpr!15458 r!7292))))

(assert (=> d!1742223 (= lt!2242518 e!3398614)))

(declare-fun c!959072 () Bool)

(assert (=> d!1742223 (= c!959072 (isEmpty!34353 s!2326))))

(assert (=> d!1742223 (validRegex!7194 r!7292)))

(assert (=> d!1742223 (= (matchR!7643 r!7292 s!2326) lt!2242518)))

(declare-fun b!5493417 () Bool)

(assert (=> b!5493417 (= e!3398612 e!3398617)))

(declare-fun c!959073 () Bool)

(assert (=> b!5493417 (= c!959073 (is-EmptyLang!15458 r!7292))))

(declare-fun b!5493418 () Bool)

(assert (=> b!5493418 (= e!3398616 e!3398613)))

(declare-fun res!2342451 () Bool)

(assert (=> b!5493418 (=> res!2342451 e!3398613)))

(assert (=> b!5493418 (= res!2342451 call!405029)))

(declare-fun b!5493419 () Bool)

(declare-fun derivativeStep!4342 (Regex!15458 C!31186) Regex!15458)

(assert (=> b!5493419 (= e!3398614 (matchR!7643 (derivativeStep!4342 r!7292 (head!11758 s!2326)) (tail!10853 s!2326)))))

(declare-fun b!5493420 () Bool)

(declare-fun res!2342454 () Bool)

(assert (=> b!5493420 (=> res!2342454 e!3398615)))

(assert (=> b!5493420 (= res!2342454 e!3398611)))

(declare-fun res!2342450 () Bool)

(assert (=> b!5493420 (=> (not res!2342450) (not e!3398611))))

(assert (=> b!5493420 (= res!2342450 lt!2242518)))

(declare-fun bm!405024 () Bool)

(assert (=> bm!405024 (= call!405029 (isEmpty!34353 s!2326))))

(assert (= (and d!1742223 c!959072) b!5493407))

(assert (= (and d!1742223 (not c!959072)) b!5493419))

(assert (= (and d!1742223 c!959074) b!5493413))

(assert (= (and d!1742223 (not c!959074)) b!5493417))

(assert (= (and b!5493417 c!959073) b!5493408))

(assert (= (and b!5493417 (not c!959073)) b!5493416))

(assert (= (and b!5493416 (not res!2342452)) b!5493420))

(assert (= (and b!5493420 res!2342450) b!5493409))

(assert (= (and b!5493409 res!2342448) b!5493412))

(assert (= (and b!5493412 res!2342449) b!5493414))

(assert (= (and b!5493420 (not res!2342454)) b!5493411))

(assert (= (and b!5493411 res!2342447) b!5493418))

(assert (= (and b!5493418 (not res!2342451)) b!5493410))

(assert (= (and b!5493410 (not res!2342453)) b!5493415))

(assert (= (or b!5493413 b!5493409 b!5493418) bm!405024))

(declare-fun m!6504770 () Bool)

(assert (=> bm!405024 m!6504770))

(declare-fun m!6504772 () Bool)

(assert (=> b!5493412 m!6504772))

(assert (=> b!5493412 m!6504772))

(declare-fun m!6504774 () Bool)

(assert (=> b!5493412 m!6504774))

(declare-fun m!6504776 () Bool)

(assert (=> b!5493407 m!6504776))

(declare-fun m!6504778 () Bool)

(assert (=> b!5493419 m!6504778))

(assert (=> b!5493419 m!6504778))

(declare-fun m!6504780 () Bool)

(assert (=> b!5493419 m!6504780))

(assert (=> b!5493419 m!6504772))

(assert (=> b!5493419 m!6504780))

(assert (=> b!5493419 m!6504772))

(declare-fun m!6504782 () Bool)

(assert (=> b!5493419 m!6504782))

(assert (=> b!5493410 m!6504772))

(assert (=> b!5493410 m!6504772))

(assert (=> b!5493410 m!6504774))

(assert (=> b!5493415 m!6504778))

(assert (=> b!5493414 m!6504778))

(assert (=> d!1742223 m!6504770))

(assert (=> d!1742223 m!6504644))

(assert (=> b!5493196 d!1742223))

(declare-fun b!5493500 () Bool)

(assert (=> b!5493500 true))

(assert (=> b!5493500 true))

(declare-fun bs!1267632 () Bool)

(declare-fun b!5493499 () Bool)

(assert (= bs!1267632 (and b!5493499 b!5493500)))

(declare-fun lambda!294117 () Int)

(declare-fun lambda!294116 () Int)

(assert (=> bs!1267632 (not (= lambda!294117 lambda!294116))))

(assert (=> b!5493499 true))

(assert (=> b!5493499 true))

(declare-fun bm!405038 () Bool)

(declare-fun call!405043 () Bool)

(assert (=> bm!405038 (= call!405043 (isEmpty!34353 s!2326))))

(declare-fun c!959096 () Bool)

(declare-fun call!405044 () Bool)

(declare-fun bm!405039 () Bool)

(declare-fun Exists!2568 (Int) Bool)

(assert (=> bm!405039 (= call!405044 (Exists!2568 (ite c!959096 lambda!294116 lambda!294117)))))

(declare-fun b!5493488 () Bool)

(declare-fun e!3398663 () Bool)

(assert (=> b!5493488 (= e!3398663 (matchRSpec!2561 (regTwo!31429 r!7292) s!2326))))

(declare-fun b!5493492 () Bool)

(declare-fun e!3398662 () Bool)

(assert (=> b!5493492 (= e!3398662 call!405043)))

(declare-fun b!5493494 () Bool)

(declare-fun e!3398665 () Bool)

(assert (=> b!5493494 (= e!3398662 e!3398665)))

(declare-fun res!2342487 () Bool)

(assert (=> b!5493494 (= res!2342487 (not (is-EmptyLang!15458 r!7292)))))

(assert (=> b!5493494 (=> (not res!2342487) (not e!3398665))))

(declare-fun b!5493495 () Bool)

(declare-fun res!2342488 () Bool)

(declare-fun e!3398667 () Bool)

(assert (=> b!5493495 (=> res!2342488 e!3398667)))

(assert (=> b!5493495 (= res!2342488 call!405043)))

(declare-fun e!3398664 () Bool)

(assert (=> b!5493495 (= e!3398664 e!3398667)))

(declare-fun b!5493496 () Bool)

(declare-fun c!959095 () Bool)

(assert (=> b!5493496 (= c!959095 (is-Union!15458 r!7292))))

(declare-fun e!3398661 () Bool)

(declare-fun e!3398666 () Bool)

(assert (=> b!5493496 (= e!3398661 e!3398666)))

(declare-fun b!5493497 () Bool)

(assert (=> b!5493497 (= e!3398666 e!3398664)))

(assert (=> b!5493497 (= c!959096 (is-Star!15458 r!7292))))

(declare-fun b!5493498 () Bool)

(assert (=> b!5493498 (= e!3398661 (= s!2326 (Cons!62551 (c!959016 r!7292) Nil!62551)))))

(assert (=> b!5493499 (= e!3398664 call!405044)))

(assert (=> b!5493500 (= e!3398667 call!405044)))

(declare-fun d!1742229 () Bool)

(declare-fun c!959094 () Bool)

(assert (=> d!1742229 (= c!959094 (is-EmptyExpr!15458 r!7292))))

(assert (=> d!1742229 (= (matchRSpec!2561 r!7292 s!2326) e!3398662)))

(declare-fun b!5493501 () Bool)

(assert (=> b!5493501 (= e!3398666 e!3398663)))

(declare-fun res!2342486 () Bool)

(assert (=> b!5493501 (= res!2342486 (matchRSpec!2561 (regOne!31429 r!7292) s!2326))))

(assert (=> b!5493501 (=> res!2342486 e!3398663)))

(declare-fun b!5493502 () Bool)

(declare-fun c!959093 () Bool)

(assert (=> b!5493502 (= c!959093 (is-ElementMatch!15458 r!7292))))

(assert (=> b!5493502 (= e!3398665 e!3398661)))

(assert (= (and d!1742229 c!959094) b!5493492))

(assert (= (and d!1742229 (not c!959094)) b!5493494))

(assert (= (and b!5493494 res!2342487) b!5493502))

(assert (= (and b!5493502 c!959093) b!5493498))

(assert (= (and b!5493502 (not c!959093)) b!5493496))

(assert (= (and b!5493496 c!959095) b!5493501))

(assert (= (and b!5493496 (not c!959095)) b!5493497))

(assert (= (and b!5493501 (not res!2342486)) b!5493488))

(assert (= (and b!5493497 c!959096) b!5493495))

(assert (= (and b!5493497 (not c!959096)) b!5493499))

(assert (= (and b!5493495 (not res!2342488)) b!5493500))

(assert (= (or b!5493500 b!5493499) bm!405039))

(assert (= (or b!5493492 b!5493495) bm!405038))

(assert (=> bm!405038 m!6504770))

(declare-fun m!6504792 () Bool)

(assert (=> bm!405039 m!6504792))

(declare-fun m!6504794 () Bool)

(assert (=> b!5493488 m!6504794))

(declare-fun m!6504796 () Bool)

(assert (=> b!5493501 m!6504796))

(assert (=> b!5493196 d!1742229))

(declare-fun d!1742237 () Bool)

(assert (=> d!1742237 (= (matchR!7643 r!7292 s!2326) (matchRSpec!2561 r!7292 s!2326))))

(declare-fun lt!2242527 () Unit!155376)

(declare-fun choose!41763 (Regex!15458 List!62675) Unit!155376)

(assert (=> d!1742237 (= lt!2242527 (choose!41763 r!7292 s!2326))))

(assert (=> d!1742237 (validRegex!7194 r!7292)))

(assert (=> d!1742237 (= (mainMatchTheorem!2561 r!7292 s!2326) lt!2242527)))

(declare-fun bs!1267633 () Bool)

(assert (= bs!1267633 d!1742237))

(assert (=> bs!1267633 m!6504652))

(assert (=> bs!1267633 m!6504654))

(declare-fun m!6504798 () Bool)

(assert (=> bs!1267633 m!6504798))

(assert (=> bs!1267633 m!6504644))

(assert (=> b!5493196 d!1742237))

(declare-fun d!1742239 () Bool)

(declare-fun lt!2242530 () Regex!15458)

(assert (=> d!1742239 (validRegex!7194 lt!2242530)))

(assert (=> d!1742239 (= lt!2242530 (generalisedUnion!1321 (unfocusZipperList!886 zl!343)))))

(assert (=> d!1742239 (= (unfocusZipper!1200 zl!343) lt!2242530)))

(declare-fun bs!1267634 () Bool)

(assert (= bs!1267634 d!1742239))

(declare-fun m!6504814 () Bool)

(assert (=> bs!1267634 m!6504814))

(assert (=> bs!1267634 m!6504660))

(assert (=> bs!1267634 m!6504660))

(assert (=> bs!1267634 m!6504662))

(assert (=> b!5493188 d!1742239))

(declare-fun bs!1267635 () Bool)

(declare-fun d!1742243 () Bool)

(assert (= bs!1267635 (and d!1742243 d!1742211)))

(declare-fun lambda!294118 () Int)

(assert (=> bs!1267635 (= lambda!294118 lambda!294096)))

(declare-fun bs!1267636 () Bool)

(assert (= bs!1267636 (and d!1742243 d!1742213)))

(assert (=> bs!1267636 (= lambda!294118 lambda!294099)))

(declare-fun bs!1267637 () Bool)

(assert (= bs!1267637 (and d!1742243 d!1742217)))

(assert (=> bs!1267637 (= lambda!294118 lambda!294102)))

(declare-fun bs!1267638 () Bool)

(assert (= bs!1267638 (and d!1742243 d!1742219)))

(assert (=> bs!1267638 (= lambda!294118 lambda!294105)))

(assert (=> d!1742243 (= (inv!81893 (h!68998 zl!343)) (forall!14651 (exprs!5342 (h!68998 zl!343)) lambda!294118))))

(declare-fun bs!1267639 () Bool)

(assert (= bs!1267639 d!1742243))

(declare-fun m!6504816 () Bool)

(assert (=> bs!1267639 m!6504816))

(assert (=> b!5493193 d!1742243))

(declare-fun d!1742245 () Bool)

(assert (=> d!1742245 (= (isEmpty!34350 (t!375905 zl!343)) (is-Nil!62550 (t!375905 zl!343)))))

(assert (=> b!5493198 d!1742245))

(declare-fun b!5493541 () Bool)

(declare-fun e!3398687 () Bool)

(declare-fun tp!1511500 () Bool)

(declare-fun tp!1511501 () Bool)

(assert (=> b!5493541 (= e!3398687 (and tp!1511500 tp!1511501))))

(assert (=> b!5493199 (= tp!1511456 e!3398687)))

(assert (= (and b!5493199 (is-Cons!62549 (exprs!5342 (h!68998 zl!343)))) b!5493541))

(declare-fun b!5493555 () Bool)

(declare-fun e!3398690 () Bool)

(declare-fun tp!1511514 () Bool)

(declare-fun tp!1511515 () Bool)

(assert (=> b!5493555 (= e!3398690 (and tp!1511514 tp!1511515))))

(declare-fun b!5493552 () Bool)

(assert (=> b!5493552 (= e!3398690 tp_is_empty!40169)))

(declare-fun b!5493554 () Bool)

(declare-fun tp!1511512 () Bool)

(assert (=> b!5493554 (= e!3398690 tp!1511512)))

(assert (=> b!5493189 (= tp!1511460 e!3398690)))

(declare-fun b!5493553 () Bool)

(declare-fun tp!1511516 () Bool)

(declare-fun tp!1511513 () Bool)

(assert (=> b!5493553 (= e!3398690 (and tp!1511516 tp!1511513))))

(assert (= (and b!5493189 (is-ElementMatch!15458 (reg!15787 r!7292))) b!5493552))

(assert (= (and b!5493189 (is-Concat!24303 (reg!15787 r!7292))) b!5493553))

(assert (= (and b!5493189 (is-Star!15458 (reg!15787 r!7292))) b!5493554))

(assert (= (and b!5493189 (is-Union!15458 (reg!15787 r!7292))) b!5493555))

(declare-fun b!5493560 () Bool)

(declare-fun e!3398693 () Bool)

(declare-fun tp!1511519 () Bool)

(assert (=> b!5493560 (= e!3398693 (and tp_is_empty!40169 tp!1511519))))

(assert (=> b!5493190 (= tp!1511465 e!3398693)))

(assert (= (and b!5493190 (is-Cons!62551 (t!375906 s!2326))) b!5493560))

(declare-fun b!5493566 () Bool)

(declare-fun e!3398694 () Bool)

(declare-fun tp!1511522 () Bool)

(declare-fun tp!1511523 () Bool)

(assert (=> b!5493566 (= e!3398694 (and tp!1511522 tp!1511523))))

(declare-fun b!5493563 () Bool)

(assert (=> b!5493563 (= e!3398694 tp_is_empty!40169)))

(declare-fun b!5493565 () Bool)

(declare-fun tp!1511520 () Bool)

(assert (=> b!5493565 (= e!3398694 tp!1511520)))

(assert (=> b!5493195 (= tp!1511463 e!3398694)))

(declare-fun b!5493564 () Bool)

(declare-fun tp!1511524 () Bool)

(declare-fun tp!1511521 () Bool)

(assert (=> b!5493564 (= e!3398694 (and tp!1511524 tp!1511521))))

(assert (= (and b!5493195 (is-ElementMatch!15458 (regOne!31428 r!7292))) b!5493563))

(assert (= (and b!5493195 (is-Concat!24303 (regOne!31428 r!7292))) b!5493564))

(assert (= (and b!5493195 (is-Star!15458 (regOne!31428 r!7292))) b!5493565))

(assert (= (and b!5493195 (is-Union!15458 (regOne!31428 r!7292))) b!5493566))

(declare-fun b!5493572 () Bool)

(declare-fun e!3398697 () Bool)

(declare-fun tp!1511527 () Bool)

(declare-fun tp!1511528 () Bool)

(assert (=> b!5493572 (= e!3398697 (and tp!1511527 tp!1511528))))

(declare-fun b!5493569 () Bool)

(assert (=> b!5493569 (= e!3398697 tp_is_empty!40169)))

(declare-fun b!5493571 () Bool)

(declare-fun tp!1511525 () Bool)

(assert (=> b!5493571 (= e!3398697 tp!1511525)))

(assert (=> b!5493195 (= tp!1511459 e!3398697)))

(declare-fun b!5493570 () Bool)

(declare-fun tp!1511529 () Bool)

(declare-fun tp!1511526 () Bool)

(assert (=> b!5493570 (= e!3398697 (and tp!1511529 tp!1511526))))

(assert (= (and b!5493195 (is-ElementMatch!15458 (regTwo!31428 r!7292))) b!5493569))

(assert (= (and b!5493195 (is-Concat!24303 (regTwo!31428 r!7292))) b!5493570))

(assert (= (and b!5493195 (is-Star!15458 (regTwo!31428 r!7292))) b!5493571))

(assert (= (and b!5493195 (is-Union!15458 (regTwo!31428 r!7292))) b!5493572))

(declare-fun condSetEmpty!36358 () Bool)

(assert (=> setNonEmpty!36352 (= condSetEmpty!36358 (= setRest!36352 (as set.empty (Set Context!9684))))))

(declare-fun setRes!36358 () Bool)

(assert (=> setNonEmpty!36352 (= tp!1511462 setRes!36358)))

(declare-fun setIsEmpty!36358 () Bool)

(assert (=> setIsEmpty!36358 setRes!36358))

(declare-fun setNonEmpty!36358 () Bool)

(declare-fun tp!1511534 () Bool)

(declare-fun e!3398712 () Bool)

(declare-fun setElem!36358 () Context!9684)

(assert (=> setNonEmpty!36358 (= setRes!36358 (and tp!1511534 (inv!81893 setElem!36358) e!3398712))))

(declare-fun setRest!36358 () (Set Context!9684))

(assert (=> setNonEmpty!36358 (= setRest!36352 (set.union (set.insert setElem!36358 (as set.empty (Set Context!9684))) setRest!36358))))

(declare-fun b!5493595 () Bool)

(declare-fun tp!1511535 () Bool)

(assert (=> b!5493595 (= e!3398712 tp!1511535)))

(assert (= (and setNonEmpty!36352 condSetEmpty!36358) setIsEmpty!36358))

(assert (= (and setNonEmpty!36352 (not condSetEmpty!36358)) setNonEmpty!36358))

(assert (= setNonEmpty!36358 b!5493595))

(declare-fun m!6504818 () Bool)

(assert (=> setNonEmpty!36358 m!6504818))

(declare-fun b!5493596 () Bool)

(declare-fun e!3398713 () Bool)

(declare-fun tp!1511536 () Bool)

(declare-fun tp!1511537 () Bool)

(assert (=> b!5493596 (= e!3398713 (and tp!1511536 tp!1511537))))

(assert (=> b!5493187 (= tp!1511464 e!3398713)))

(assert (= (and b!5493187 (is-Cons!62549 (exprs!5342 setElem!36352))) b!5493596))

(declare-fun b!5493610 () Bool)

(declare-fun e!3398721 () Bool)

(declare-fun tp!1511542 () Bool)

(assert (=> b!5493610 (= e!3398721 tp!1511542)))

(declare-fun b!5493609 () Bool)

(declare-fun e!3398720 () Bool)

(declare-fun tp!1511543 () Bool)

(assert (=> b!5493609 (= e!3398720 (and (inv!81893 (h!68998 (t!375905 zl!343))) e!3398721 tp!1511543))))

(assert (=> b!5493193 (= tp!1511458 e!3398720)))

(assert (= b!5493609 b!5493610))

(assert (= (and b!5493193 (is-Cons!62550 (t!375905 zl!343))) b!5493609))

(declare-fun m!6504820 () Bool)

(assert (=> b!5493609 m!6504820))

(declare-fun b!5493614 () Bool)

(declare-fun e!3398722 () Bool)

(declare-fun tp!1511546 () Bool)

(declare-fun tp!1511547 () Bool)

(assert (=> b!5493614 (= e!3398722 (and tp!1511546 tp!1511547))))

(declare-fun b!5493611 () Bool)

(assert (=> b!5493611 (= e!3398722 tp_is_empty!40169)))

(declare-fun b!5493613 () Bool)

(declare-fun tp!1511544 () Bool)

(assert (=> b!5493613 (= e!3398722 tp!1511544)))

(assert (=> b!5493194 (= tp!1511461 e!3398722)))

(declare-fun b!5493612 () Bool)

(declare-fun tp!1511548 () Bool)

(declare-fun tp!1511545 () Bool)

(assert (=> b!5493612 (= e!3398722 (and tp!1511548 tp!1511545))))

(assert (= (and b!5493194 (is-ElementMatch!15458 (regOne!31429 r!7292))) b!5493611))

(assert (= (and b!5493194 (is-Concat!24303 (regOne!31429 r!7292))) b!5493612))

(assert (= (and b!5493194 (is-Star!15458 (regOne!31429 r!7292))) b!5493613))

(assert (= (and b!5493194 (is-Union!15458 (regOne!31429 r!7292))) b!5493614))

(declare-fun b!5493618 () Bool)

(declare-fun e!3398723 () Bool)

(declare-fun tp!1511551 () Bool)

(declare-fun tp!1511552 () Bool)

(assert (=> b!5493618 (= e!3398723 (and tp!1511551 tp!1511552))))

(declare-fun b!5493615 () Bool)

(assert (=> b!5493615 (= e!3398723 tp_is_empty!40169)))

(declare-fun b!5493617 () Bool)

(declare-fun tp!1511549 () Bool)

(assert (=> b!5493617 (= e!3398723 tp!1511549)))

(assert (=> b!5493194 (= tp!1511457 e!3398723)))

(declare-fun b!5493616 () Bool)

(declare-fun tp!1511553 () Bool)

(declare-fun tp!1511550 () Bool)

(assert (=> b!5493616 (= e!3398723 (and tp!1511553 tp!1511550))))

(assert (= (and b!5493194 (is-ElementMatch!15458 (regTwo!31429 r!7292))) b!5493615))

(assert (= (and b!5493194 (is-Concat!24303 (regTwo!31429 r!7292))) b!5493616))

(assert (= (and b!5493194 (is-Star!15458 (regTwo!31429 r!7292))) b!5493617))

(assert (= (and b!5493194 (is-Union!15458 (regTwo!31429 r!7292))) b!5493618))

(push 1)

(assert (not b!5493501))

(assert (not d!1742211))

(assert (not b!5493614))

(assert (not b!5493613))

(assert (not b!5493342))

(assert (not b!5493555))

(assert (not b!5493412))

(assert (not b!5493415))

(assert (not bm!405038))

(assert (not b!5493617))

(assert (not d!1742237))

(assert (not b!5493273))

(assert (not d!1742217))

(assert (not b!5493618))

(assert (not b!5493267))

(assert (not b!5493616))

(assert (not b!5493328))

(assert (not b!5493566))

(assert (not b!5493541))

(assert (not b!5493326))

(assert (not bm!405020))

(assert tp_is_empty!40169)

(assert (not d!1742223))

(assert (not b!5493419))

(assert (not d!1742243))

(assert (not bm!405024))

(assert (not b!5493276))

(assert (not b!5493329))

(assert (not bm!405019))

(assert (not b!5493324))

(assert (not b!5493270))

(assert (not b!5493595))

(assert (not b!5493302))

(assert (not b!5493414))

(assert (not b!5493609))

(assert (not b!5493565))

(assert (not b!5493560))

(assert (not b!5493268))

(assert (not b!5493564))

(assert (not b!5493410))

(assert (not b!5493570))

(assert (not d!1742213))

(assert (not b!5493612))

(assert (not b!5493553))

(assert (not b!5493488))

(assert (not setNonEmpty!36358))

(assert (not b!5493407))

(assert (not b!5493269))

(assert (not d!1742221))

(assert (not b!5493338))

(assert (not b!5493333))

(assert (not b!5493272))

(assert (not bm!405039))

(assert (not b!5493327))

(assert (not b!5493572))

(assert (not b!5493554))

(assert (not d!1742219))

(assert (not b!5493571))

(assert (not b!5493596))

(assert (not b!5493610))

(assert (not b!5493332))

(assert (not d!1742239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

