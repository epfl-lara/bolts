; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566154 () Bool)

(assert start!566154)

(declare-fun b!5385597 () Bool)

(assert (=> b!5385597 true))

(assert (=> b!5385597 true))

(declare-fun lambda!279180 () Int)

(declare-fun lambda!279179 () Int)

(assert (=> b!5385597 (not (= lambda!279180 lambda!279179))))

(assert (=> b!5385597 true))

(assert (=> b!5385597 true))

(declare-fun b!5385570 () Bool)

(assert (=> b!5385570 true))

(declare-fun bs!1246516 () Bool)

(declare-fun b!5385602 () Bool)

(assert (= bs!1246516 (and b!5385602 b!5385597)))

(declare-datatypes ((C!30512 0))(
  ( (C!30513 (val!24958 Int)) )
))
(declare-datatypes ((Regex!15121 0))(
  ( (ElementMatch!15121 (c!938539 C!30512)) (Concat!23966 (regOne!30754 Regex!15121) (regTwo!30754 Regex!15121)) (EmptyExpr!15121) (Star!15121 (reg!15450 Regex!15121)) (EmptyLang!15121) (Union!15121 (regOne!30755 Regex!15121) (regTwo!30755 Regex!15121)) )
))
(declare-fun r!7292 () Regex!15121)

(declare-fun lt!2193474 () Regex!15121)

(declare-fun lambda!279182 () Int)

(assert (=> bs!1246516 (= (= lt!2193474 (regOne!30754 r!7292)) (= lambda!279182 lambda!279179))))

(assert (=> bs!1246516 (not (= lambda!279182 lambda!279180))))

(assert (=> b!5385602 true))

(assert (=> b!5385602 true))

(assert (=> b!5385602 true))

(declare-fun lambda!279183 () Int)

(assert (=> bs!1246516 (not (= lambda!279183 lambda!279179))))

(assert (=> bs!1246516 (= (= lt!2193474 (regOne!30754 r!7292)) (= lambda!279183 lambda!279180))))

(assert (=> b!5385602 (not (= lambda!279183 lambda!279182))))

(assert (=> b!5385602 true))

(assert (=> b!5385602 true))

(assert (=> b!5385602 true))

(declare-fun bs!1246517 () Bool)

(declare-fun b!5385592 () Bool)

(assert (= bs!1246517 (and b!5385592 b!5385597)))

(declare-datatypes ((List!61662 0))(
  ( (Nil!61538) (Cons!61538 (h!67986 C!30512) (t!374885 List!61662)) )
))
(declare-fun s!2326 () List!61662)

(declare-fun lambda!279184 () Int)

(declare-datatypes ((tuple2!64640 0))(
  ( (tuple2!64641 (_1!35623 List!61662) (_2!35623 List!61662)) )
))
(declare-fun lt!2193514 () tuple2!64640)

(assert (=> bs!1246517 (= (and (= (_1!35623 lt!2193514) s!2326) (= (reg!15450 (regOne!30754 r!7292)) (regOne!30754 r!7292)) (= lt!2193474 (regTwo!30754 r!7292))) (= lambda!279184 lambda!279179))))

(assert (=> bs!1246517 (not (= lambda!279184 lambda!279180))))

(declare-fun bs!1246518 () Bool)

(assert (= bs!1246518 (and b!5385592 b!5385602)))

(assert (=> bs!1246518 (= (and (= (_1!35623 lt!2193514) s!2326) (= (reg!15450 (regOne!30754 r!7292)) lt!2193474) (= lt!2193474 (regTwo!30754 r!7292))) (= lambda!279184 lambda!279182))))

(assert (=> bs!1246518 (not (= lambda!279184 lambda!279183))))

(assert (=> b!5385592 true))

(assert (=> b!5385592 true))

(assert (=> b!5385592 true))

(declare-fun lambda!279185 () Int)

(assert (=> bs!1246518 (not (= lambda!279185 lambda!279183))))

(assert (=> b!5385592 (not (= lambda!279185 lambda!279184))))

(assert (=> bs!1246517 (not (= lambda!279185 lambda!279179))))

(assert (=> bs!1246517 (not (= lambda!279185 lambda!279180))))

(assert (=> bs!1246518 (not (= lambda!279185 lambda!279182))))

(assert (=> b!5385592 true))

(assert (=> b!5385592 true))

(assert (=> b!5385592 true))

(declare-fun lambda!279186 () Int)

(assert (=> bs!1246518 (= (and (= (_1!35623 lt!2193514) s!2326) (= (reg!15450 (regOne!30754 r!7292)) lt!2193474) (= lt!2193474 (regTwo!30754 r!7292))) (= lambda!279186 lambda!279183))))

(assert (=> b!5385592 (not (= lambda!279186 lambda!279184))))

(assert (=> bs!1246517 (not (= lambda!279186 lambda!279179))))

(assert (=> b!5385592 (not (= lambda!279186 lambda!279185))))

(assert (=> bs!1246517 (= (and (= (_1!35623 lt!2193514) s!2326) (= (reg!15450 (regOne!30754 r!7292)) (regOne!30754 r!7292)) (= lt!2193474 (regTwo!30754 r!7292))) (= lambda!279186 lambda!279180))))

(assert (=> bs!1246518 (not (= lambda!279186 lambda!279182))))

(assert (=> b!5385592 true))

(assert (=> b!5385592 true))

(assert (=> b!5385592 true))

(declare-fun res!2287544 () Bool)

(declare-fun e!3340440 () Bool)

(assert (=> start!566154 (=> (not res!2287544) (not e!3340440))))

(declare-fun validRegex!6857 (Regex!15121) Bool)

(assert (=> start!566154 (= res!2287544 (validRegex!6857 r!7292))))

(assert (=> start!566154 e!3340440))

(declare-fun e!3340449 () Bool)

(assert (=> start!566154 e!3340449))

(declare-fun condSetEmpty!34961 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61663 0))(
  ( (Nil!61539) (Cons!61539 (h!67987 Regex!15121) (t!374886 List!61663)) )
))
(declare-datatypes ((Context!9010 0))(
  ( (Context!9011 (exprs!5005 List!61663)) )
))
(declare-fun z!1189 () (InoxSet Context!9010))

(assert (=> start!566154 (= condSetEmpty!34961 (= z!1189 ((as const (Array Context!9010 Bool)) false)))))

(declare-fun setRes!34961 () Bool)

(assert (=> start!566154 setRes!34961))

(declare-fun e!3340456 () Bool)

(assert (=> start!566154 e!3340456))

(declare-fun e!3340448 () Bool)

(assert (=> start!566154 e!3340448))

(declare-fun e!3340442 () Bool)

(declare-fun e!3340444 () Bool)

(assert (=> b!5385570 (= e!3340442 e!3340444)))

(declare-fun res!2287559 () Bool)

(assert (=> b!5385570 (=> res!2287559 e!3340444)))

(get-info :version)

(assert (=> b!5385570 (= res!2287559 (or (and ((_ is ElementMatch!15121) (regOne!30754 r!7292)) (= (c!938539 (regOne!30754 r!7292)) (h!67986 s!2326))) ((_ is Union!15121) (regOne!30754 r!7292))))))

(declare-datatypes ((Unit!154002 0))(
  ( (Unit!154003) )
))
(declare-fun lt!2193513 () Unit!154002)

(declare-fun e!3340433 () Unit!154002)

(assert (=> b!5385570 (= lt!2193513 e!3340433)))

(declare-fun c!938538 () Bool)

(declare-datatypes ((List!61664 0))(
  ( (Nil!61540) (Cons!61540 (h!67988 Context!9010) (t!374887 List!61664)) )
))
(declare-fun zl!343 () List!61664)

(declare-fun nullable!5290 (Regex!15121) Bool)

(assert (=> b!5385570 (= c!938538 (nullable!5290 (h!67987 (exprs!5005 (h!67988 zl!343)))))))

(declare-fun lambda!279181 () Int)

(declare-fun flatMap!848 ((InoxSet Context!9010) Int) (InoxSet Context!9010))

(declare-fun derivationStepZipperUp!493 (Context!9010 C!30512) (InoxSet Context!9010))

(assert (=> b!5385570 (= (flatMap!848 z!1189 lambda!279181) (derivationStepZipperUp!493 (h!67988 zl!343) (h!67986 s!2326)))))

(declare-fun lt!2193476 () Unit!154002)

(declare-fun lemmaFlatMapOnSingletonSet!380 ((InoxSet Context!9010) Context!9010 Int) Unit!154002)

(assert (=> b!5385570 (= lt!2193476 (lemmaFlatMapOnSingletonSet!380 z!1189 (h!67988 zl!343) lambda!279181))))

(declare-fun lt!2193498 () (InoxSet Context!9010))

(declare-fun lt!2193515 () Context!9010)

(assert (=> b!5385570 (= lt!2193498 (derivationStepZipperUp!493 lt!2193515 (h!67986 s!2326)))))

(declare-fun lt!2193462 () (InoxSet Context!9010))

(declare-fun derivationStepZipperDown!569 (Regex!15121 Context!9010 C!30512) (InoxSet Context!9010))

(assert (=> b!5385570 (= lt!2193462 (derivationStepZipperDown!569 (h!67987 (exprs!5005 (h!67988 zl!343))) lt!2193515 (h!67986 s!2326)))))

(assert (=> b!5385570 (= lt!2193515 (Context!9011 (t!374886 (exprs!5005 (h!67988 zl!343)))))))

(declare-fun lt!2193500 () (InoxSet Context!9010))

(assert (=> b!5385570 (= lt!2193500 (derivationStepZipperUp!493 (Context!9011 (Cons!61539 (h!67987 (exprs!5005 (h!67988 zl!343))) (t!374886 (exprs!5005 (h!67988 zl!343))))) (h!67986 s!2326)))))

(declare-fun b!5385571 () Bool)

(declare-fun e!3340450 () Bool)

(declare-fun e!3340447 () Bool)

(assert (=> b!5385571 (= e!3340450 e!3340447)))

(declare-fun res!2287561 () Bool)

(assert (=> b!5385571 (=> res!2287561 e!3340447)))

(declare-fun lt!2193470 () List!61662)

(assert (=> b!5385571 (= res!2287561 (not (= lt!2193470 s!2326)))))

(declare-fun lt!2193491 () List!61662)

(assert (=> b!5385571 (= lt!2193470 lt!2193491)))

(declare-fun lt!2193482 () tuple2!64640)

(declare-fun lt!2193489 () List!61662)

(declare-fun ++!13427 (List!61662 List!61662) List!61662)

(assert (=> b!5385571 (= lt!2193491 (++!13427 (_1!35623 lt!2193482) lt!2193489))))

(declare-fun lt!2193461 () List!61662)

(assert (=> b!5385571 (= lt!2193470 (++!13427 lt!2193461 (_2!35623 lt!2193514)))))

(assert (=> b!5385571 (= lt!2193489 (++!13427 (_2!35623 lt!2193482) (_2!35623 lt!2193514)))))

(declare-fun lt!2193486 () Unit!154002)

(declare-fun lemmaConcatAssociativity!2818 (List!61662 List!61662 List!61662) Unit!154002)

(assert (=> b!5385571 (= lt!2193486 (lemmaConcatAssociativity!2818 (_1!35623 lt!2193482) (_2!35623 lt!2193482) (_2!35623 lt!2193514)))))

(declare-fun b!5385572 () Bool)

(declare-fun e!3340434 () Bool)

(assert (=> b!5385572 (= e!3340444 e!3340434)))

(declare-fun res!2287558 () Bool)

(assert (=> b!5385572 (=> res!2287558 e!3340434)))

(declare-fun lt!2193507 () (InoxSet Context!9010))

(assert (=> b!5385572 (= res!2287558 (not (= lt!2193462 lt!2193507)))))

(declare-fun lt!2193460 () Context!9010)

(assert (=> b!5385572 (= lt!2193507 (derivationStepZipperDown!569 (reg!15450 (regOne!30754 r!7292)) lt!2193460 (h!67986 s!2326)))))

(declare-fun lt!2193497 () List!61663)

(assert (=> b!5385572 (= lt!2193460 (Context!9011 lt!2193497))))

(assert (=> b!5385572 (= lt!2193497 (Cons!61539 lt!2193474 (t!374886 (exprs!5005 (h!67988 zl!343)))))))

(assert (=> b!5385572 (= lt!2193474 (Star!15121 (reg!15450 (regOne!30754 r!7292))))))

(declare-fun b!5385573 () Bool)

(declare-fun e!3340451 () Bool)

(declare-fun e!3340436 () Bool)

(assert (=> b!5385573 (= e!3340451 (not e!3340436))))

(declare-fun res!2287560 () Bool)

(assert (=> b!5385573 (=> res!2287560 e!3340436)))

(assert (=> b!5385573 (= res!2287560 (not ((_ is Cons!61540) zl!343)))))

(declare-fun lt!2193503 () Bool)

(declare-fun lt!2193506 () Bool)

(assert (=> b!5385573 (= lt!2193503 lt!2193506)))

(declare-fun matchRSpec!2224 (Regex!15121 List!61662) Bool)

(assert (=> b!5385573 (= lt!2193506 (matchRSpec!2224 r!7292 s!2326))))

(declare-fun matchR!7306 (Regex!15121 List!61662) Bool)

(assert (=> b!5385573 (= lt!2193503 (matchR!7306 r!7292 s!2326))))

(declare-fun lt!2193496 () Unit!154002)

(declare-fun mainMatchTheorem!2224 (Regex!15121 List!61662) Unit!154002)

(assert (=> b!5385573 (= lt!2193496 (mainMatchTheorem!2224 r!7292 s!2326))))

(declare-fun b!5385574 () Bool)

(declare-fun tp!1492043 () Bool)

(declare-fun tp!1492036 () Bool)

(assert (=> b!5385574 (= e!3340449 (and tp!1492043 tp!1492036))))

(declare-fun b!5385575 () Bool)

(declare-fun tp_is_empty!39495 () Bool)

(assert (=> b!5385575 (= e!3340449 tp_is_empty!39495)))

(declare-fun b!5385576 () Bool)

(declare-fun e!3340452 () Bool)

(declare-fun tp!1492041 () Bool)

(assert (=> b!5385576 (= e!3340452 tp!1492041)))

(declare-fun b!5385577 () Bool)

(declare-fun lt!2193487 () Regex!15121)

(assert (=> b!5385577 (= e!3340447 (validRegex!6857 lt!2193487))))

(declare-fun lt!2193488 () List!61663)

(declare-fun matchZipper!1365 ((InoxSet Context!9010) List!61662) Bool)

(declare-fun ++!13428 (List!61663 List!61663) List!61663)

(assert (=> b!5385577 (matchZipper!1365 (store ((as const (Array Context!9010 Bool)) false) (Context!9011 (++!13428 lt!2193488 lt!2193497)) true) lt!2193491)))

(declare-fun lambda!279187 () Int)

(declare-fun lt!2193480 () Unit!154002)

(declare-fun lemmaConcatPreservesForall!152 (List!61663 List!61663 Int) Unit!154002)

(assert (=> b!5385577 (= lt!2193480 (lemmaConcatPreservesForall!152 lt!2193488 lt!2193497 lambda!279187))))

(declare-fun lt!2193466 () Unit!154002)

(declare-fun lt!2193485 () Context!9010)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!8 (Context!9010 Context!9010 List!61662 List!61662) Unit!154002)

(assert (=> b!5385577 (= lt!2193466 (lemmaConcatenateContextMatchesConcatOfStrings!8 lt!2193485 lt!2193460 (_1!35623 lt!2193482) lt!2193489))))

(declare-fun lt!2193493 () (InoxSet Context!9010))

(assert (=> b!5385577 (matchZipper!1365 lt!2193493 lt!2193489)))

(declare-fun lt!2193504 () List!61664)

(declare-fun lt!2193478 () Unit!154002)

(declare-fun theoremZipperRegexEquiv!451 ((InoxSet Context!9010) List!61664 Regex!15121 List!61662) Unit!154002)

(assert (=> b!5385577 (= lt!2193478 (theoremZipperRegexEquiv!451 lt!2193493 lt!2193504 lt!2193487 lt!2193489))))

(declare-fun lt!2193477 () (InoxSet Context!9010))

(assert (=> b!5385577 (matchZipper!1365 lt!2193477 (_1!35623 lt!2193482))))

(declare-fun lt!2193471 () Unit!154002)

(declare-fun lt!2193492 () List!61664)

(assert (=> b!5385577 (= lt!2193471 (theoremZipperRegexEquiv!451 lt!2193477 lt!2193492 (reg!15450 (regOne!30754 r!7292)) (_1!35623 lt!2193482)))))

(assert (=> b!5385577 (matchR!7306 lt!2193487 lt!2193489)))

(declare-fun lt!2193463 () Unit!154002)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!168 (Regex!15121 Regex!15121 List!61662 List!61662) Unit!154002)

(assert (=> b!5385577 (= lt!2193463 (lemmaTwoRegexMatchThenConcatMatchesConcatString!168 lt!2193474 (regTwo!30754 r!7292) (_2!35623 lt!2193482) (_2!35623 lt!2193514)))))

(assert (=> b!5385577 (matchR!7306 lt!2193474 lt!2193461)))

(declare-fun lt!2193472 () Unit!154002)

(declare-fun lemmaStarApp!42 (Regex!15121 List!61662 List!61662) Unit!154002)

(assert (=> b!5385577 (= lt!2193472 (lemmaStarApp!42 (reg!15450 (regOne!30754 r!7292)) (_1!35623 lt!2193482) (_2!35623 lt!2193482)))))

(declare-fun b!5385578 () Bool)

(declare-fun res!2287552 () Bool)

(declare-fun e!3340438 () Bool)

(assert (=> b!5385578 (=> res!2287552 e!3340438)))

(declare-fun lt!2193468 () (InoxSet Context!9010))

(declare-fun lt!2193502 () (InoxSet Context!9010))

(assert (=> b!5385578 (= res!2287552 (not (= (matchZipper!1365 lt!2193468 s!2326) (matchZipper!1365 lt!2193502 (t!374885 s!2326)))))))

(declare-fun b!5385579 () Bool)

(declare-fun tp!1492037 () Bool)

(declare-fun e!3340443 () Bool)

(declare-fun inv!81049 (Context!9010) Bool)

(assert (=> b!5385579 (= e!3340456 (and (inv!81049 (h!67988 zl!343)) e!3340443 tp!1492037))))

(declare-fun b!5385580 () Bool)

(declare-fun e!3340454 () Bool)

(declare-fun e!3340441 () Bool)

(assert (=> b!5385580 (= e!3340454 e!3340441)))

(declare-fun res!2287531 () Bool)

(assert (=> b!5385580 (=> res!2287531 e!3340441)))

(declare-fun unfocusZipper!863 (List!61664) Regex!15121)

(assert (=> b!5385580 (= res!2287531 (not (= (unfocusZipper!863 lt!2193492) (reg!15450 (regOne!30754 r!7292)))))))

(assert (=> b!5385580 (= lt!2193492 (Cons!61540 lt!2193485 Nil!61540))))

(assert (=> b!5385580 (= (flatMap!848 lt!2193493 lambda!279181) (derivationStepZipperUp!493 lt!2193460 (h!67986 s!2326)))))

(declare-fun lt!2193469 () Unit!154002)

(assert (=> b!5385580 (= lt!2193469 (lemmaFlatMapOnSingletonSet!380 lt!2193493 lt!2193460 lambda!279181))))

(assert (=> b!5385580 (= (flatMap!848 lt!2193477 lambda!279181) (derivationStepZipperUp!493 lt!2193485 (h!67986 s!2326)))))

(declare-fun lt!2193508 () Unit!154002)

(assert (=> b!5385580 (= lt!2193508 (lemmaFlatMapOnSingletonSet!380 lt!2193477 lt!2193485 lambda!279181))))

(declare-fun lt!2193465 () (InoxSet Context!9010))

(assert (=> b!5385580 (= lt!2193465 (derivationStepZipperUp!493 lt!2193460 (h!67986 s!2326)))))

(declare-fun lt!2193467 () (InoxSet Context!9010))

(assert (=> b!5385580 (= lt!2193467 (derivationStepZipperUp!493 lt!2193485 (h!67986 s!2326)))))

(assert (=> b!5385580 (= lt!2193493 (store ((as const (Array Context!9010 Bool)) false) lt!2193460 true))))

(assert (=> b!5385580 (= lt!2193477 (store ((as const (Array Context!9010 Bool)) false) lt!2193485 true))))

(assert (=> b!5385580 (= lt!2193485 (Context!9011 lt!2193488))))

(assert (=> b!5385580 (= lt!2193488 (Cons!61539 (reg!15450 (regOne!30754 r!7292)) Nil!61539))))

(declare-fun b!5385581 () Bool)

(declare-fun e!3340437 () Bool)

(assert (=> b!5385581 (= e!3340437 (nullable!5290 (regOne!30754 (regOne!30754 r!7292))))))

(declare-fun b!5385582 () Bool)

(declare-fun e!3340455 () Bool)

(assert (=> b!5385582 (= e!3340455 e!3340454)))

(declare-fun res!2287540 () Bool)

(assert (=> b!5385582 (=> res!2287540 e!3340454)))

(declare-fun lt!2193501 () Context!9010)

(declare-fun lt!2193495 () Regex!15121)

(assert (=> b!5385582 (= res!2287540 (not (= (unfocusZipper!863 (Cons!61540 lt!2193501 Nil!61540)) lt!2193495)))))

(assert (=> b!5385582 (= lt!2193495 (Concat!23966 (reg!15450 (regOne!30754 r!7292)) lt!2193487))))

(declare-fun b!5385583 () Bool)

(declare-fun tp!1492038 () Bool)

(assert (=> b!5385583 (= e!3340449 tp!1492038)))

(declare-fun b!5385584 () Bool)

(assert (=> b!5385584 (= e!3340440 e!3340451)))

(declare-fun res!2287554 () Bool)

(assert (=> b!5385584 (=> (not res!2287554) (not e!3340451))))

(declare-fun lt!2193479 () Regex!15121)

(assert (=> b!5385584 (= res!2287554 (= r!7292 lt!2193479))))

(assert (=> b!5385584 (= lt!2193479 (unfocusZipper!863 zl!343))))

(declare-fun b!5385585 () Bool)

(assert (=> b!5385585 (= e!3340438 e!3340455)))

(declare-fun res!2287550 () Bool)

(assert (=> b!5385585 (=> res!2287550 e!3340455)))

(assert (=> b!5385585 (= res!2287550 (not (= r!7292 lt!2193487)))))

(assert (=> b!5385585 (= lt!2193487 (Concat!23966 lt!2193474 (regTwo!30754 r!7292)))))

(declare-fun b!5385586 () Bool)

(declare-fun e!3340453 () Bool)

(declare-fun e!3340445 () Bool)

(assert (=> b!5385586 (= e!3340453 e!3340445)))

(declare-fun res!2287549 () Bool)

(assert (=> b!5385586 (=> res!2287549 e!3340445)))

(assert (=> b!5385586 (= res!2287549 (not lt!2193503))))

(declare-fun e!3340446 () Bool)

(assert (=> b!5385586 e!3340446))

(declare-fun res!2287546 () Bool)

(assert (=> b!5385586 (=> (not res!2287546) (not e!3340446))))

(assert (=> b!5385586 (= res!2287546 (= (matchR!7306 lt!2193495 s!2326) (matchRSpec!2224 lt!2193495 s!2326)))))

(declare-fun lt!2193475 () Unit!154002)

(assert (=> b!5385586 (= lt!2193475 (mainMatchTheorem!2224 lt!2193495 s!2326))))

(declare-fun b!5385587 () Bool)

(assert (=> b!5385587 (= e!3340441 e!3340453)))

(declare-fun res!2287557 () Bool)

(assert (=> b!5385587 (=> res!2287557 e!3340453)))

(assert (=> b!5385587 (= res!2287557 (not (= (unfocusZipper!863 lt!2193504) lt!2193487)))))

(assert (=> b!5385587 (= lt!2193504 (Cons!61540 lt!2193460 Nil!61540))))

(declare-fun setElem!34961 () Context!9010)

(declare-fun tp!1492045 () Bool)

(declare-fun setNonEmpty!34961 () Bool)

(assert (=> setNonEmpty!34961 (= setRes!34961 (and tp!1492045 (inv!81049 setElem!34961) e!3340452))))

(declare-fun setRest!34961 () (InoxSet Context!9010))

(assert (=> setNonEmpty!34961 (= z!1189 ((_ map or) (store ((as const (Array Context!9010 Bool)) false) setElem!34961 true) setRest!34961))))

(declare-fun b!5385588 () Bool)

(declare-fun res!2287562 () Bool)

(declare-fun e!3340435 () Bool)

(assert (=> b!5385588 (=> res!2287562 e!3340435)))

(declare-fun isEmpty!33534 (List!61662) Bool)

(assert (=> b!5385588 (= res!2287562 (isEmpty!33534 (_1!35623 lt!2193514)))))

(declare-fun b!5385589 () Bool)

(declare-fun Unit!154004 () Unit!154002)

(assert (=> b!5385589 (= e!3340433 Unit!154004)))

(declare-fun b!5385590 () Bool)

(declare-fun tp!1492039 () Bool)

(assert (=> b!5385590 (= e!3340448 (and tp_is_empty!39495 tp!1492039))))

(declare-fun b!5385591 () Bool)

(assert (=> b!5385591 (= e!3340446 (or (not lt!2193503) lt!2193506))))

(assert (=> b!5385592 (= e!3340435 e!3340450)))

(declare-fun res!2287556 () Bool)

(assert (=> b!5385592 (=> res!2287556 e!3340450)))

(assert (=> b!5385592 (= res!2287556 (not (= (_1!35623 lt!2193514) lt!2193461)))))

(assert (=> b!5385592 (= lt!2193461 (++!13427 (_1!35623 lt!2193482) (_2!35623 lt!2193482)))))

(declare-datatypes ((Option!15232 0))(
  ( (None!15231) (Some!15231 (v!51260 tuple2!64640)) )
))
(declare-fun lt!2193511 () Option!15232)

(declare-fun get!21190 (Option!15232) tuple2!64640)

(assert (=> b!5385592 (= lt!2193482 (get!21190 lt!2193511))))

(declare-fun Exists!2302 (Int) Bool)

(assert (=> b!5385592 (= (Exists!2302 lambda!279184) (Exists!2302 lambda!279186))))

(declare-fun lt!2193494 () Unit!154002)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!956 (Regex!15121 Regex!15121 List!61662) Unit!154002)

(assert (=> b!5385592 (= lt!2193494 (lemmaExistCutMatchRandMatchRSpecEquivalent!956 (reg!15450 (regOne!30754 r!7292)) lt!2193474 (_1!35623 lt!2193514)))))

(assert (=> b!5385592 (= (Exists!2302 lambda!279184) (Exists!2302 lambda!279185))))

(declare-fun lt!2193510 () Unit!154002)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!386 (Regex!15121 List!61662) Unit!154002)

(assert (=> b!5385592 (= lt!2193510 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!386 (reg!15450 (regOne!30754 r!7292)) (_1!35623 lt!2193514)))))

(declare-fun isDefined!11935 (Option!15232) Bool)

(assert (=> b!5385592 (= (isDefined!11935 lt!2193511) (Exists!2302 lambda!279184))))

(declare-fun findConcatSeparation!1646 (Regex!15121 Regex!15121 List!61662 List!61662 List!61662) Option!15232)

(assert (=> b!5385592 (= lt!2193511 (findConcatSeparation!1646 (reg!15450 (regOne!30754 r!7292)) lt!2193474 Nil!61538 (_1!35623 lt!2193514) (_1!35623 lt!2193514)))))

(declare-fun lt!2193484 () Unit!154002)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1410 (Regex!15121 Regex!15121 List!61662) Unit!154002)

(assert (=> b!5385592 (= lt!2193484 (lemmaFindConcatSeparationEquivalentToExists!1410 (reg!15450 (regOne!30754 r!7292)) lt!2193474 (_1!35623 lt!2193514)))))

(assert (=> b!5385592 (matchRSpec!2224 lt!2193474 (_1!35623 lt!2193514))))

(declare-fun lt!2193490 () Unit!154002)

(assert (=> b!5385592 (= lt!2193490 (mainMatchTheorem!2224 lt!2193474 (_1!35623 lt!2193514)))))

(declare-fun b!5385593 () Bool)

(assert (=> b!5385593 (= e!3340434 e!3340438)))

(declare-fun res!2287539 () Bool)

(assert (=> b!5385593 (=> res!2287539 e!3340438)))

(assert (=> b!5385593 (= res!2287539 (not (= lt!2193502 lt!2193507)))))

(assert (=> b!5385593 (= (flatMap!848 lt!2193468 lambda!279181) (derivationStepZipperUp!493 lt!2193501 (h!67986 s!2326)))))

(declare-fun lt!2193499 () Unit!154002)

(assert (=> b!5385593 (= lt!2193499 (lemmaFlatMapOnSingletonSet!380 lt!2193468 lt!2193501 lambda!279181))))

(declare-fun lt!2193473 () (InoxSet Context!9010))

(assert (=> b!5385593 (= lt!2193473 (derivationStepZipperUp!493 lt!2193501 (h!67986 s!2326)))))

(declare-fun derivationStepZipper!1360 ((InoxSet Context!9010) C!30512) (InoxSet Context!9010))

(assert (=> b!5385593 (= lt!2193502 (derivationStepZipper!1360 lt!2193468 (h!67986 s!2326)))))

(assert (=> b!5385593 (= lt!2193468 (store ((as const (Array Context!9010 Bool)) false) lt!2193501 true))))

(assert (=> b!5385593 (= lt!2193501 (Context!9011 (Cons!61539 (reg!15450 (regOne!30754 r!7292)) lt!2193497)))))

(declare-fun b!5385594 () Bool)

(declare-fun res!2287551 () Bool)

(assert (=> b!5385594 (=> res!2287551 e!3340436)))

(declare-fun generalisedUnion!1050 (List!61663) Regex!15121)

(declare-fun unfocusZipperList!563 (List!61664) List!61663)

(assert (=> b!5385594 (= res!2287551 (not (= r!7292 (generalisedUnion!1050 (unfocusZipperList!563 zl!343)))))))

(declare-fun b!5385595 () Bool)

(declare-fun res!2287548 () Bool)

(assert (=> b!5385595 (=> res!2287548 e!3340438)))

(assert (=> b!5385595 (= res!2287548 (not (= lt!2193479 r!7292)))))

(declare-fun b!5385596 () Bool)

(declare-fun res!2287534 () Bool)

(assert (=> b!5385596 (=> (not res!2287534) (not e!3340440))))

(declare-fun toList!8905 ((InoxSet Context!9010)) List!61664)

(assert (=> b!5385596 (= res!2287534 (= (toList!8905 z!1189) zl!343))))

(assert (=> b!5385597 (= e!3340436 e!3340442)))

(declare-fun res!2287535 () Bool)

(assert (=> b!5385597 (=> res!2287535 e!3340442)))

(declare-fun lt!2193512 () Bool)

(assert (=> b!5385597 (= res!2287535 (or (not (= lt!2193503 lt!2193512)) ((_ is Nil!61538) s!2326)))))

(assert (=> b!5385597 (= (Exists!2302 lambda!279179) (Exists!2302 lambda!279180))))

(declare-fun lt!2193505 () Unit!154002)

(assert (=> b!5385597 (= lt!2193505 (lemmaExistCutMatchRandMatchRSpecEquivalent!956 (regOne!30754 r!7292) (regTwo!30754 r!7292) s!2326))))

(assert (=> b!5385597 (= lt!2193512 (Exists!2302 lambda!279179))))

(assert (=> b!5385597 (= lt!2193512 (isDefined!11935 (findConcatSeparation!1646 (regOne!30754 r!7292) (regTwo!30754 r!7292) Nil!61538 s!2326 s!2326)))))

(declare-fun lt!2193483 () Unit!154002)

(assert (=> b!5385597 (= lt!2193483 (lemmaFindConcatSeparationEquivalentToExists!1410 (regOne!30754 r!7292) (regTwo!30754 r!7292) s!2326))))

(declare-fun b!5385598 () Bool)

(declare-fun res!2287555 () Bool)

(assert (=> b!5385598 (=> res!2287555 e!3340435)))

(assert (=> b!5385598 (= res!2287555 (not (matchR!7306 (regTwo!30754 r!7292) (_2!35623 lt!2193514))))))

(declare-fun b!5385599 () Bool)

(declare-fun res!2287553 () Bool)

(assert (=> b!5385599 (=> res!2287553 e!3340436)))

(assert (=> b!5385599 (= res!2287553 (or ((_ is EmptyExpr!15121) r!7292) ((_ is EmptyLang!15121) r!7292) ((_ is ElementMatch!15121) r!7292) ((_ is Union!15121) r!7292) (not ((_ is Concat!23966) r!7292))))))

(declare-fun b!5385600 () Bool)

(declare-fun res!2287532 () Bool)

(assert (=> b!5385600 (=> res!2287532 e!3340444)))

(assert (=> b!5385600 (= res!2287532 (or ((_ is Concat!23966) (regOne!30754 r!7292)) (not ((_ is Star!15121) (regOne!30754 r!7292)))))))

(declare-fun b!5385601 () Bool)

(declare-fun res!2287543 () Bool)

(assert (=> b!5385601 (=> res!2287543 e!3340444)))

(assert (=> b!5385601 (= res!2287543 e!3340437)))

(declare-fun res!2287537 () Bool)

(assert (=> b!5385601 (=> (not res!2287537) (not e!3340437))))

(assert (=> b!5385601 (= res!2287537 ((_ is Concat!23966) (regOne!30754 r!7292)))))

(assert (=> b!5385602 (= e!3340445 e!3340435)))

(declare-fun res!2287538 () Bool)

(assert (=> b!5385602 (=> res!2287538 e!3340435)))

(assert (=> b!5385602 (= res!2287538 (not (= (++!13427 (_1!35623 lt!2193514) (_2!35623 lt!2193514)) s!2326)))))

(declare-fun lt!2193481 () Option!15232)

(assert (=> b!5385602 (= lt!2193514 (get!21190 lt!2193481))))

(assert (=> b!5385602 (= (Exists!2302 lambda!279182) (Exists!2302 lambda!279183))))

(declare-fun lt!2193516 () Unit!154002)

(assert (=> b!5385602 (= lt!2193516 (lemmaExistCutMatchRandMatchRSpecEquivalent!956 lt!2193474 (regTwo!30754 r!7292) s!2326))))

(assert (=> b!5385602 (= (isDefined!11935 lt!2193481) (Exists!2302 lambda!279182))))

(assert (=> b!5385602 (= lt!2193481 (findConcatSeparation!1646 lt!2193474 (regTwo!30754 r!7292) Nil!61538 s!2326 s!2326))))

(declare-fun lt!2193464 () Unit!154002)

(assert (=> b!5385602 (= lt!2193464 (lemmaFindConcatSeparationEquivalentToExists!1410 lt!2193474 (regTwo!30754 r!7292) s!2326))))

(declare-fun b!5385603 () Bool)

(declare-fun res!2287533 () Bool)

(assert (=> b!5385603 (=> res!2287533 e!3340436)))

(assert (=> b!5385603 (= res!2287533 (not ((_ is Cons!61539) (exprs!5005 (h!67988 zl!343)))))))

(declare-fun b!5385604 () Bool)

(declare-fun res!2287541 () Bool)

(assert (=> b!5385604 (=> res!2287541 e!3340436)))

(declare-fun isEmpty!33535 (List!61664) Bool)

(assert (=> b!5385604 (= res!2287541 (not (isEmpty!33535 (t!374887 zl!343))))))

(declare-fun setIsEmpty!34961 () Bool)

(assert (=> setIsEmpty!34961 setRes!34961))

(declare-fun b!5385605 () Bool)

(declare-fun res!2287536 () Bool)

(assert (=> b!5385605 (=> res!2287536 e!3340442)))

(declare-fun isEmpty!33536 (List!61663) Bool)

(assert (=> b!5385605 (= res!2287536 (isEmpty!33536 (t!374886 (exprs!5005 (h!67988 zl!343)))))))

(declare-fun b!5385606 () Bool)

(declare-fun e!3340439 () Bool)

(assert (=> b!5385606 (= e!3340439 (matchZipper!1365 lt!2193498 (t!374885 s!2326)))))

(declare-fun b!5385607 () Bool)

(declare-fun res!2287530 () Bool)

(assert (=> b!5385607 (=> res!2287530 e!3340435)))

(assert (=> b!5385607 (= res!2287530 (not (matchR!7306 lt!2193474 (_1!35623 lt!2193514))))))

(declare-fun b!5385608 () Bool)

(declare-fun Unit!154005 () Unit!154002)

(assert (=> b!5385608 (= e!3340433 Unit!154005)))

(declare-fun lt!2193509 () Unit!154002)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!358 ((InoxSet Context!9010) (InoxSet Context!9010) List!61662) Unit!154002)

(assert (=> b!5385608 (= lt!2193509 (lemmaZipperConcatMatchesSameAsBothZippers!358 lt!2193462 lt!2193498 (t!374885 s!2326)))))

(declare-fun res!2287563 () Bool)

(assert (=> b!5385608 (= res!2287563 (matchZipper!1365 lt!2193462 (t!374885 s!2326)))))

(assert (=> b!5385608 (=> res!2287563 e!3340439)))

(assert (=> b!5385608 (= (matchZipper!1365 ((_ map or) lt!2193462 lt!2193498) (t!374885 s!2326)) e!3340439)))

(declare-fun b!5385609 () Bool)

(declare-fun res!2287545 () Bool)

(assert (=> b!5385609 (=> res!2287545 e!3340447)))

(assert (=> b!5385609 (= res!2287545 (not (matchR!7306 lt!2193474 (_2!35623 lt!2193482))))))

(declare-fun b!5385610 () Bool)

(declare-fun res!2287547 () Bool)

(assert (=> b!5385610 (=> res!2287547 e!3340436)))

(declare-fun generalisedConcat!790 (List!61663) Regex!15121)

(assert (=> b!5385610 (= res!2287547 (not (= r!7292 (generalisedConcat!790 (exprs!5005 (h!67988 zl!343))))))))

(declare-fun b!5385611 () Bool)

(declare-fun tp!1492044 () Bool)

(declare-fun tp!1492042 () Bool)

(assert (=> b!5385611 (= e!3340449 (and tp!1492044 tp!1492042))))

(declare-fun b!5385612 () Bool)

(declare-fun res!2287542 () Bool)

(assert (=> b!5385612 (=> res!2287542 e!3340447)))

(assert (=> b!5385612 (= res!2287542 (not (matchR!7306 (reg!15450 (regOne!30754 r!7292)) (_1!35623 lt!2193482))))))

(declare-fun b!5385613 () Bool)

(declare-fun tp!1492040 () Bool)

(assert (=> b!5385613 (= e!3340443 tp!1492040)))

(assert (= (and start!566154 res!2287544) b!5385596))

(assert (= (and b!5385596 res!2287534) b!5385584))

(assert (= (and b!5385584 res!2287554) b!5385573))

(assert (= (and b!5385573 (not res!2287560)) b!5385604))

(assert (= (and b!5385604 (not res!2287541)) b!5385610))

(assert (= (and b!5385610 (not res!2287547)) b!5385603))

(assert (= (and b!5385603 (not res!2287533)) b!5385594))

(assert (= (and b!5385594 (not res!2287551)) b!5385599))

(assert (= (and b!5385599 (not res!2287553)) b!5385597))

(assert (= (and b!5385597 (not res!2287535)) b!5385605))

(assert (= (and b!5385605 (not res!2287536)) b!5385570))

(assert (= (and b!5385570 c!938538) b!5385608))

(assert (= (and b!5385570 (not c!938538)) b!5385589))

(assert (= (and b!5385608 (not res!2287563)) b!5385606))

(assert (= (and b!5385570 (not res!2287559)) b!5385601))

(assert (= (and b!5385601 res!2287537) b!5385581))

(assert (= (and b!5385601 (not res!2287543)) b!5385600))

(assert (= (and b!5385600 (not res!2287532)) b!5385572))

(assert (= (and b!5385572 (not res!2287558)) b!5385593))

(assert (= (and b!5385593 (not res!2287539)) b!5385578))

(assert (= (and b!5385578 (not res!2287552)) b!5385595))

(assert (= (and b!5385595 (not res!2287548)) b!5385585))

(assert (= (and b!5385585 (not res!2287550)) b!5385582))

(assert (= (and b!5385582 (not res!2287540)) b!5385580))

(assert (= (and b!5385580 (not res!2287531)) b!5385587))

(assert (= (and b!5385587 (not res!2287557)) b!5385586))

(assert (= (and b!5385586 res!2287546) b!5385591))

(assert (= (and b!5385586 (not res!2287549)) b!5385602))

(assert (= (and b!5385602 (not res!2287538)) b!5385607))

(assert (= (and b!5385607 (not res!2287530)) b!5385598))

(assert (= (and b!5385598 (not res!2287555)) b!5385588))

(assert (= (and b!5385588 (not res!2287562)) b!5385592))

(assert (= (and b!5385592 (not res!2287556)) b!5385571))

(assert (= (and b!5385571 (not res!2287561)) b!5385612))

(assert (= (and b!5385612 (not res!2287542)) b!5385609))

(assert (= (and b!5385609 (not res!2287545)) b!5385577))

(assert (= (and start!566154 ((_ is ElementMatch!15121) r!7292)) b!5385575))

(assert (= (and start!566154 ((_ is Concat!23966) r!7292)) b!5385611))

(assert (= (and start!566154 ((_ is Star!15121) r!7292)) b!5385583))

(assert (= (and start!566154 ((_ is Union!15121) r!7292)) b!5385574))

(assert (= (and start!566154 condSetEmpty!34961) setIsEmpty!34961))

(assert (= (and start!566154 (not condSetEmpty!34961)) setNonEmpty!34961))

(assert (= setNonEmpty!34961 b!5385576))

(assert (= b!5385579 b!5385613))

(assert (= (and start!566154 ((_ is Cons!61540) zl!343)) b!5385579))

(assert (= (and start!566154 ((_ is Cons!61538) s!2326)) b!5385590))

(declare-fun m!6411312 () Bool)

(assert (=> b!5385586 m!6411312))

(declare-fun m!6411314 () Bool)

(assert (=> b!5385586 m!6411314))

(declare-fun m!6411316 () Bool)

(assert (=> b!5385586 m!6411316))

(declare-fun m!6411318 () Bool)

(assert (=> b!5385606 m!6411318))

(declare-fun m!6411320 () Bool)

(assert (=> b!5385604 m!6411320))

(declare-fun m!6411322 () Bool)

(assert (=> b!5385577 m!6411322))

(declare-fun m!6411324 () Bool)

(assert (=> b!5385577 m!6411324))

(declare-fun m!6411326 () Bool)

(assert (=> b!5385577 m!6411326))

(declare-fun m!6411328 () Bool)

(assert (=> b!5385577 m!6411328))

(declare-fun m!6411330 () Bool)

(assert (=> b!5385577 m!6411330))

(declare-fun m!6411332 () Bool)

(assert (=> b!5385577 m!6411332))

(declare-fun m!6411334 () Bool)

(assert (=> b!5385577 m!6411334))

(declare-fun m!6411336 () Bool)

(assert (=> b!5385577 m!6411336))

(declare-fun m!6411338 () Bool)

(assert (=> b!5385577 m!6411338))

(declare-fun m!6411340 () Bool)

(assert (=> b!5385577 m!6411340))

(assert (=> b!5385577 m!6411338))

(declare-fun m!6411342 () Bool)

(assert (=> b!5385577 m!6411342))

(declare-fun m!6411344 () Bool)

(assert (=> b!5385577 m!6411344))

(declare-fun m!6411346 () Bool)

(assert (=> b!5385577 m!6411346))

(declare-fun m!6411348 () Bool)

(assert (=> b!5385577 m!6411348))

(declare-fun m!6411350 () Bool)

(assert (=> b!5385612 m!6411350))

(declare-fun m!6411352 () Bool)

(assert (=> b!5385605 m!6411352))

(declare-fun m!6411354 () Bool)

(assert (=> b!5385593 m!6411354))

(declare-fun m!6411356 () Bool)

(assert (=> b!5385593 m!6411356))

(declare-fun m!6411358 () Bool)

(assert (=> b!5385593 m!6411358))

(declare-fun m!6411360 () Bool)

(assert (=> b!5385593 m!6411360))

(declare-fun m!6411362 () Bool)

(assert (=> b!5385593 m!6411362))

(declare-fun m!6411364 () Bool)

(assert (=> b!5385587 m!6411364))

(declare-fun m!6411366 () Bool)

(assert (=> b!5385588 m!6411366))

(declare-fun m!6411368 () Bool)

(assert (=> b!5385573 m!6411368))

(declare-fun m!6411370 () Bool)

(assert (=> b!5385573 m!6411370))

(declare-fun m!6411372 () Bool)

(assert (=> b!5385573 m!6411372))

(declare-fun m!6411374 () Bool)

(assert (=> b!5385579 m!6411374))

(declare-fun m!6411376 () Bool)

(assert (=> b!5385596 m!6411376))

(declare-fun m!6411378 () Bool)

(assert (=> b!5385578 m!6411378))

(declare-fun m!6411380 () Bool)

(assert (=> b!5385578 m!6411380))

(declare-fun m!6411382 () Bool)

(assert (=> b!5385584 m!6411382))

(declare-fun m!6411384 () Bool)

(assert (=> b!5385594 m!6411384))

(assert (=> b!5385594 m!6411384))

(declare-fun m!6411386 () Bool)

(assert (=> b!5385594 m!6411386))

(declare-fun m!6411388 () Bool)

(assert (=> b!5385608 m!6411388))

(declare-fun m!6411390 () Bool)

(assert (=> b!5385608 m!6411390))

(declare-fun m!6411392 () Bool)

(assert (=> b!5385608 m!6411392))

(declare-fun m!6411394 () Bool)

(assert (=> b!5385607 m!6411394))

(declare-fun m!6411396 () Bool)

(assert (=> b!5385570 m!6411396))

(declare-fun m!6411398 () Bool)

(assert (=> b!5385570 m!6411398))

(declare-fun m!6411400 () Bool)

(assert (=> b!5385570 m!6411400))

(declare-fun m!6411402 () Bool)

(assert (=> b!5385570 m!6411402))

(declare-fun m!6411404 () Bool)

(assert (=> b!5385570 m!6411404))

(declare-fun m!6411406 () Bool)

(assert (=> b!5385570 m!6411406))

(declare-fun m!6411408 () Bool)

(assert (=> b!5385570 m!6411408))

(declare-fun m!6411410 () Bool)

(assert (=> setNonEmpty!34961 m!6411410))

(declare-fun m!6411412 () Bool)

(assert (=> b!5385571 m!6411412))

(declare-fun m!6411414 () Bool)

(assert (=> b!5385571 m!6411414))

(declare-fun m!6411416 () Bool)

(assert (=> b!5385571 m!6411416))

(declare-fun m!6411418 () Bool)

(assert (=> b!5385571 m!6411418))

(declare-fun m!6411420 () Bool)

(assert (=> start!566154 m!6411420))

(declare-fun m!6411422 () Bool)

(assert (=> b!5385581 m!6411422))

(declare-fun m!6411424 () Bool)

(assert (=> b!5385572 m!6411424))

(declare-fun m!6411426 () Bool)

(assert (=> b!5385609 m!6411426))

(declare-fun m!6411428 () Bool)

(assert (=> b!5385580 m!6411428))

(declare-fun m!6411430 () Bool)

(assert (=> b!5385580 m!6411430))

(declare-fun m!6411432 () Bool)

(assert (=> b!5385580 m!6411432))

(declare-fun m!6411434 () Bool)

(assert (=> b!5385580 m!6411434))

(declare-fun m!6411436 () Bool)

(assert (=> b!5385580 m!6411436))

(declare-fun m!6411438 () Bool)

(assert (=> b!5385580 m!6411438))

(declare-fun m!6411440 () Bool)

(assert (=> b!5385580 m!6411440))

(declare-fun m!6411442 () Bool)

(assert (=> b!5385580 m!6411442))

(declare-fun m!6411444 () Bool)

(assert (=> b!5385580 m!6411444))

(declare-fun m!6411446 () Bool)

(assert (=> b!5385582 m!6411446))

(declare-fun m!6411448 () Bool)

(assert (=> b!5385592 m!6411448))

(declare-fun m!6411450 () Bool)

(assert (=> b!5385592 m!6411450))

(declare-fun m!6411452 () Bool)

(assert (=> b!5385592 m!6411452))

(declare-fun m!6411454 () Bool)

(assert (=> b!5385592 m!6411454))

(declare-fun m!6411456 () Bool)

(assert (=> b!5385592 m!6411456))

(assert (=> b!5385592 m!6411452))

(declare-fun m!6411458 () Bool)

(assert (=> b!5385592 m!6411458))

(assert (=> b!5385592 m!6411452))

(declare-fun m!6411460 () Bool)

(assert (=> b!5385592 m!6411460))

(declare-fun m!6411462 () Bool)

(assert (=> b!5385592 m!6411462))

(declare-fun m!6411464 () Bool)

(assert (=> b!5385592 m!6411464))

(declare-fun m!6411466 () Bool)

(assert (=> b!5385592 m!6411466))

(declare-fun m!6411468 () Bool)

(assert (=> b!5385592 m!6411468))

(declare-fun m!6411470 () Bool)

(assert (=> b!5385592 m!6411470))

(declare-fun m!6411472 () Bool)

(assert (=> b!5385598 m!6411472))

(declare-fun m!6411474 () Bool)

(assert (=> b!5385597 m!6411474))

(declare-fun m!6411476 () Bool)

(assert (=> b!5385597 m!6411476))

(declare-fun m!6411478 () Bool)

(assert (=> b!5385597 m!6411478))

(declare-fun m!6411480 () Bool)

(assert (=> b!5385597 m!6411480))

(assert (=> b!5385597 m!6411478))

(declare-fun m!6411482 () Bool)

(assert (=> b!5385597 m!6411482))

(assert (=> b!5385597 m!6411474))

(declare-fun m!6411484 () Bool)

(assert (=> b!5385597 m!6411484))

(declare-fun m!6411486 () Bool)

(assert (=> b!5385602 m!6411486))

(declare-fun m!6411488 () Bool)

(assert (=> b!5385602 m!6411488))

(declare-fun m!6411490 () Bool)

(assert (=> b!5385602 m!6411490))

(assert (=> b!5385602 m!6411486))

(declare-fun m!6411492 () Bool)

(assert (=> b!5385602 m!6411492))

(declare-fun m!6411494 () Bool)

(assert (=> b!5385602 m!6411494))

(declare-fun m!6411496 () Bool)

(assert (=> b!5385602 m!6411496))

(declare-fun m!6411498 () Bool)

(assert (=> b!5385602 m!6411498))

(declare-fun m!6411500 () Bool)

(assert (=> b!5385602 m!6411500))

(declare-fun m!6411502 () Bool)

(assert (=> b!5385610 m!6411502))

(check-sat (not b!5385608) (not b!5385586) (not b!5385597) (not b!5385577) (not b!5385593) (not b!5385602) (not b!5385596) (not b!5385579) (not b!5385573) (not b!5385612) (not b!5385606) (not b!5385578) (not b!5385583) (not b!5385613) (not b!5385580) (not b!5385581) (not b!5385607) (not b!5385582) (not b!5385570) (not b!5385588) (not b!5385604) (not b!5385605) (not b!5385587) (not b!5385574) tp_is_empty!39495 (not b!5385590) (not b!5385592) (not b!5385610) (not b!5385611) (not setNonEmpty!34961) (not b!5385572) (not b!5385609) (not b!5385584) (not b!5385576) (not b!5385571) (not b!5385594) (not b!5385598) (not start!566154))
(check-sat)
