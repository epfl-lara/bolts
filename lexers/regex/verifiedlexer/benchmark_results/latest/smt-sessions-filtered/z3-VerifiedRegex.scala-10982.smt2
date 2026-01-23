; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569438 () Bool)

(assert start!569438)

(declare-fun b!5424618 () Bool)

(assert (=> b!5424618 true))

(assert (=> b!5424618 true))

(declare-fun lambda!284395 () Int)

(declare-fun lambda!284394 () Int)

(assert (=> b!5424618 (not (= lambda!284395 lambda!284394))))

(assert (=> b!5424618 true))

(assert (=> b!5424618 true))

(declare-fun b!5424587 () Bool)

(assert (=> b!5424587 true))

(declare-fun b!5424612 () Bool)

(assert (=> b!5424612 true))

(declare-fun bs!1253248 () Bool)

(declare-fun b!5424623 () Bool)

(assert (= bs!1253248 (and b!5424623 b!5424618)))

(declare-datatypes ((C!30692 0))(
  ( (C!30693 (val!25048 Int)) )
))
(declare-datatypes ((Regex!15211 0))(
  ( (ElementMatch!15211 (c!946119 C!30692)) (Concat!24056 (regOne!30934 Regex!15211) (regTwo!30934 Regex!15211)) (EmptyExpr!15211) (Star!15211 (reg!15540 Regex!15211)) (EmptyLang!15211) (Union!15211 (regOne!30935 Regex!15211) (regTwo!30935 Regex!15211)) )
))
(declare-fun r!7292 () Regex!15211)

(declare-fun lambda!284399 () Int)

(declare-fun lt!2212548 () Regex!15211)

(assert (=> bs!1253248 (= (= lt!2212548 (regOne!30934 r!7292)) (= lambda!284399 lambda!284394))))

(assert (=> bs!1253248 (not (= lambda!284399 lambda!284395))))

(assert (=> b!5424623 true))

(assert (=> b!5424623 true))

(assert (=> b!5424623 true))

(declare-fun lambda!284400 () Int)

(assert (=> bs!1253248 (not (= lambda!284400 lambda!284394))))

(assert (=> bs!1253248 (= (= lt!2212548 (regOne!30934 r!7292)) (= lambda!284400 lambda!284395))))

(assert (=> b!5424623 (not (= lambda!284400 lambda!284399))))

(assert (=> b!5424623 true))

(assert (=> b!5424623 true))

(assert (=> b!5424623 true))

(declare-fun bs!1253249 () Bool)

(declare-fun b!5424575 () Bool)

(assert (= bs!1253249 (and b!5424575 b!5424618)))

(declare-datatypes ((List!61932 0))(
  ( (Nil!61808) (Cons!61808 (h!68256 C!30692) (t!375155 List!61932)) )
))
(declare-fun s!2326 () List!61932)

(declare-datatypes ((tuple2!64820 0))(
  ( (tuple2!64821 (_1!35713 List!61932) (_2!35713 List!61932)) )
))
(declare-fun lt!2212594 () tuple2!64820)

(declare-fun lambda!284401 () Int)

(declare-fun lt!2212593 () Regex!15211)

(assert (=> bs!1253249 (= (and (= (_1!35713 lt!2212594) s!2326) (= (reg!15540 (regOne!30934 r!7292)) (regOne!30934 r!7292)) (= lt!2212593 (regTwo!30934 r!7292))) (= lambda!284401 lambda!284394))))

(assert (=> bs!1253249 (not (= lambda!284401 lambda!284395))))

(declare-fun bs!1253250 () Bool)

(assert (= bs!1253250 (and b!5424575 b!5424623)))

(assert (=> bs!1253250 (= (and (= (_1!35713 lt!2212594) s!2326) (= (reg!15540 (regOne!30934 r!7292)) lt!2212548) (= lt!2212593 (regTwo!30934 r!7292))) (= lambda!284401 lambda!284399))))

(assert (=> bs!1253250 (not (= lambda!284401 lambda!284400))))

(assert (=> b!5424575 true))

(assert (=> b!5424575 true))

(assert (=> b!5424575 true))

(declare-fun lambda!284402 () Int)

(assert (=> b!5424575 (not (= lambda!284402 lambda!284401))))

(assert (=> bs!1253250 (= (and (= (_1!35713 lt!2212594) s!2326) (= (reg!15540 (regOne!30934 r!7292)) lt!2212548) (= lt!2212593 (regTwo!30934 r!7292))) (= lambda!284402 lambda!284400))))

(assert (=> bs!1253249 (not (= lambda!284402 lambda!284394))))

(assert (=> bs!1253249 (= (and (= (_1!35713 lt!2212594) s!2326) (= (reg!15540 (regOne!30934 r!7292)) (regOne!30934 r!7292)) (= lt!2212593 (regTwo!30934 r!7292))) (= lambda!284402 lambda!284395))))

(assert (=> bs!1253250 (not (= lambda!284402 lambda!284399))))

(assert (=> b!5424575 true))

(assert (=> b!5424575 true))

(assert (=> b!5424575 true))

(declare-fun lambda!284403 () Int)

(assert (=> b!5424575 (not (= lambda!284403 lambda!284401))))

(assert (=> bs!1253250 (not (= lambda!284403 lambda!284400))))

(assert (=> b!5424575 (not (= lambda!284403 lambda!284402))))

(assert (=> bs!1253249 (not (= lambda!284403 lambda!284394))))

(assert (=> bs!1253249 (not (= lambda!284403 lambda!284395))))

(assert (=> bs!1253250 (not (= lambda!284403 lambda!284399))))

(assert (=> b!5424575 true))

(assert (=> b!5424575 true))

(assert (=> b!5424575 true))

(declare-fun e!3361698 () Bool)

(declare-fun e!3361674 () Bool)

(assert (=> b!5424575 (= e!3361698 e!3361674)))

(declare-fun res!2308415 () Bool)

(assert (=> b!5424575 (=> res!2308415 e!3361674)))

(declare-fun lt!2212603 () tuple2!64820)

(declare-fun matchR!7396 (Regex!15211 List!61932) Bool)

(assert (=> b!5424575 (= res!2308415 (not (matchR!7396 (reg!15540 (regOne!30934 r!7292)) (_1!35713 lt!2212603))))))

(declare-fun lt!2212557 () List!61932)

(declare-fun lt!2212549 () List!61932)

(declare-fun ++!13595 (List!61932 List!61932) List!61932)

(assert (=> b!5424575 (= lt!2212557 (++!13595 (_1!35713 lt!2212603) lt!2212549))))

(declare-fun lt!2212543 () List!61932)

(assert (=> b!5424575 (= lt!2212557 (++!13595 lt!2212543 (_2!35713 lt!2212594)))))

(assert (=> b!5424575 (= lt!2212549 (++!13595 (_2!35713 lt!2212603) (_2!35713 lt!2212594)))))

(assert (=> b!5424575 (= lt!2212543 (++!13595 (_1!35713 lt!2212603) (_2!35713 lt!2212603)))))

(declare-datatypes ((Unit!154366 0))(
  ( (Unit!154367) )
))
(declare-fun lt!2212555 () Unit!154366)

(declare-fun lemmaConcatAssociativity!2846 (List!61932 List!61932 List!61932) Unit!154366)

(assert (=> b!5424575 (= lt!2212555 (lemmaConcatAssociativity!2846 (_1!35713 lt!2212603) (_2!35713 lt!2212603) (_2!35713 lt!2212594)))))

(declare-datatypes ((Option!15322 0))(
  ( (None!15321) (Some!15321 (v!51350 tuple2!64820)) )
))
(declare-fun lt!2212600 () Option!15322)

(declare-fun get!21319 (Option!15322) tuple2!64820)

(assert (=> b!5424575 (= lt!2212603 (get!21319 lt!2212600))))

(declare-fun Exists!2392 (Int) Bool)

(assert (=> b!5424575 (= (Exists!2392 lambda!284401) (Exists!2392 lambda!284403))))

(declare-fun lt!2212578 () Unit!154366)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!422 (Regex!15211 List!61932) Unit!154366)

(assert (=> b!5424575 (= lt!2212578 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!422 (reg!15540 (regOne!30934 r!7292)) (_1!35713 lt!2212594)))))

(assert (=> b!5424575 (= (Exists!2392 lambda!284401) (Exists!2392 lambda!284402))))

(declare-fun lt!2212586 () Unit!154366)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1046 (Regex!15211 Regex!15211 List!61932) Unit!154366)

(assert (=> b!5424575 (= lt!2212586 (lemmaExistCutMatchRandMatchRSpecEquivalent!1046 (reg!15540 (regOne!30934 r!7292)) lt!2212593 (_1!35713 lt!2212594)))))

(declare-fun isDefined!12025 (Option!15322) Bool)

(assert (=> b!5424575 (= (isDefined!12025 lt!2212600) (Exists!2392 lambda!284401))))

(declare-fun findConcatSeparation!1736 (Regex!15211 Regex!15211 List!61932 List!61932 List!61932) Option!15322)

(assert (=> b!5424575 (= lt!2212600 (findConcatSeparation!1736 (reg!15540 (regOne!30934 r!7292)) lt!2212593 Nil!61808 (_1!35713 lt!2212594) (_1!35713 lt!2212594)))))

(declare-fun lt!2212584 () Unit!154366)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1500 (Regex!15211 Regex!15211 List!61932) Unit!154366)

(assert (=> b!5424575 (= lt!2212584 (lemmaFindConcatSeparationEquivalentToExists!1500 (reg!15540 (regOne!30934 r!7292)) lt!2212593 (_1!35713 lt!2212594)))))

(declare-fun matchRSpec!2314 (Regex!15211 List!61932) Bool)

(assert (=> b!5424575 (matchRSpec!2314 lt!2212548 (_1!35713 lt!2212594))))

(declare-fun lt!2212563 () Unit!154366)

(declare-fun mainMatchTheorem!2314 (Regex!15211 List!61932) Unit!154366)

(assert (=> b!5424575 (= lt!2212563 (mainMatchTheorem!2314 lt!2212548 (_1!35713 lt!2212594)))))

(declare-fun setRes!35357 () Bool)

(declare-fun tp!1497195 () Bool)

(declare-fun e!3361696 () Bool)

(declare-datatypes ((List!61933 0))(
  ( (Nil!61809) (Cons!61809 (h!68257 Regex!15211) (t!375156 List!61933)) )
))
(declare-datatypes ((Context!9190 0))(
  ( (Context!9191 (exprs!5095 List!61933)) )
))
(declare-fun setElem!35357 () Context!9190)

(declare-fun setNonEmpty!35357 () Bool)

(declare-fun inv!81274 (Context!9190) Bool)

(assert (=> setNonEmpty!35357 (= setRes!35357 (and tp!1497195 (inv!81274 setElem!35357) e!3361696))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9190))

(declare-fun setRest!35357 () (InoxSet Context!9190))

(assert (=> setNonEmpty!35357 (= z!1189 ((_ map or) (store ((as const (Array Context!9190 Bool)) false) setElem!35357 true) setRest!35357))))

(declare-fun b!5424576 () Bool)

(declare-fun e!3361682 () Bool)

(declare-fun tp!1497194 () Bool)

(assert (=> b!5424576 (= e!3361682 tp!1497194)))

(declare-fun b!5424577 () Bool)

(declare-fun res!2308399 () Bool)

(declare-fun e!3361683 () Bool)

(assert (=> b!5424577 (=> res!2308399 e!3361683)))

(declare-datatypes ((List!61934 0))(
  ( (Nil!61810) (Cons!61810 (h!68258 Context!9190) (t!375157 List!61934)) )
))
(declare-fun zl!343 () List!61934)

(declare-fun generalisedConcat!880 (List!61933) Regex!15211)

(assert (=> b!5424577 (= res!2308399 (not (= r!7292 (generalisedConcat!880 (exprs!5095 (h!68258 zl!343))))))))

(declare-fun res!2308405 () Bool)

(declare-fun e!3361670 () Bool)

(assert (=> start!569438 (=> (not res!2308405) (not e!3361670))))

(declare-fun validRegex!6947 (Regex!15211) Bool)

(assert (=> start!569438 (= res!2308405 (validRegex!6947 r!7292))))

(assert (=> start!569438 e!3361670))

(declare-fun e!3361685 () Bool)

(assert (=> start!569438 e!3361685))

(declare-fun condSetEmpty!35357 () Bool)

(assert (=> start!569438 (= condSetEmpty!35357 (= z!1189 ((as const (Array Context!9190 Bool)) false)))))

(assert (=> start!569438 setRes!35357))

(declare-fun e!3361675 () Bool)

(assert (=> start!569438 e!3361675))

(declare-fun e!3361691 () Bool)

(assert (=> start!569438 e!3361691))

(declare-fun b!5424578 () Bool)

(declare-fun res!2308383 () Bool)

(assert (=> b!5424578 (=> res!2308383 e!3361683)))

(get-info :version)

(assert (=> b!5424578 (= res!2308383 (or ((_ is EmptyExpr!15211) r!7292) ((_ is EmptyLang!15211) r!7292) ((_ is ElementMatch!15211) r!7292) ((_ is Union!15211) r!7292) (not ((_ is Concat!24056) r!7292))))))

(declare-fun b!5424579 () Bool)

(declare-fun e!3361690 () Bool)

(declare-fun lt!2212580 () Bool)

(assert (=> b!5424579 (= e!3361690 lt!2212580)))

(declare-fun b!5424580 () Bool)

(declare-fun e!3361692 () Bool)

(declare-fun e!3361673 () Bool)

(assert (=> b!5424580 (= e!3361692 e!3361673)))

(declare-fun res!2308400 () Bool)

(assert (=> b!5424580 (=> res!2308400 e!3361673)))

(declare-fun lt!2212588 () List!61932)

(assert (=> b!5424580 (= res!2308400 (not (= s!2326 lt!2212588)))))

(declare-fun lt!2212541 () tuple2!64820)

(assert (=> b!5424580 (= lt!2212588 (++!13595 (_1!35713 lt!2212541) (_2!35713 lt!2212541)))))

(declare-fun lt!2212579 () Option!15322)

(assert (=> b!5424580 (= lt!2212541 (get!21319 lt!2212579))))

(assert (=> b!5424580 (isDefined!12025 lt!2212579)))

(declare-fun lt!2212540 () (InoxSet Context!9190))

(declare-fun lt!2212597 () (InoxSet Context!9190))

(declare-fun findConcatSeparationZippers!68 ((InoxSet Context!9190) (InoxSet Context!9190) List!61932 List!61932 List!61932) Option!15322)

(assert (=> b!5424580 (= lt!2212579 (findConcatSeparationZippers!68 lt!2212597 lt!2212540 Nil!61808 s!2326 s!2326))))

(declare-fun lt!2212574 () Unit!154366)

(declare-fun lt!2212572 () Context!9190)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!68 ((InoxSet Context!9190) Context!9190 List!61932) Unit!154366)

(assert (=> b!5424580 (= lt!2212574 (lemmaConcatZipperMatchesStringThenFindConcatDefined!68 lt!2212597 lt!2212572 s!2326))))

(declare-fun b!5424581 () Bool)

(declare-fun res!2308395 () Bool)

(assert (=> b!5424581 (=> res!2308395 e!3361683)))

(declare-fun isEmpty!33808 (List!61934) Bool)

(assert (=> b!5424581 (= res!2308395 (not (isEmpty!33808 (t!375157 zl!343))))))

(declare-fun b!5424582 () Bool)

(declare-fun e!3361681 () Bool)

(declare-fun e!3361693 () Bool)

(assert (=> b!5424582 (= e!3361681 e!3361693)))

(declare-fun res!2308409 () Bool)

(assert (=> b!5424582 (=> res!2308409 e!3361693)))

(declare-fun lt!2212575 () Bool)

(assert (=> b!5424582 (= res!2308409 lt!2212575)))

(declare-fun lt!2212562 () Regex!15211)

(assert (=> b!5424582 (= lt!2212580 (matchRSpec!2314 lt!2212562 s!2326))))

(assert (=> b!5424582 (= lt!2212580 (matchR!7396 lt!2212562 s!2326))))

(declare-fun lt!2212590 () Unit!154366)

(assert (=> b!5424582 (= lt!2212590 (mainMatchTheorem!2314 lt!2212562 s!2326))))

(declare-fun b!5424583 () Bool)

(declare-fun tp!1497200 () Bool)

(assert (=> b!5424583 (= e!3361685 tp!1497200)))

(declare-fun b!5424584 () Bool)

(declare-fun res!2308379 () Bool)

(declare-fun e!3361689 () Bool)

(assert (=> b!5424584 (=> res!2308379 e!3361689)))

(assert (=> b!5424584 (= res!2308379 (or ((_ is Concat!24056) (regOne!30934 r!7292)) (not ((_ is Star!15211) (regOne!30934 r!7292)))))))

(declare-fun b!5424585 () Bool)

(declare-fun tp!1497196 () Bool)

(declare-fun tp!1497193 () Bool)

(assert (=> b!5424585 (= e!3361685 (and tp!1497196 tp!1497193))))

(declare-fun b!5424586 () Bool)

(declare-fun e!3361687 () Unit!154366)

(declare-fun Unit!154368 () Unit!154366)

(assert (=> b!5424586 (= e!3361687 Unit!154368)))

(declare-fun e!3361694 () Bool)

(assert (=> b!5424587 (= e!3361694 e!3361689)))

(declare-fun res!2308403 () Bool)

(assert (=> b!5424587 (=> res!2308403 e!3361689)))

(assert (=> b!5424587 (= res!2308403 (or (and ((_ is ElementMatch!15211) (regOne!30934 r!7292)) (= (c!946119 (regOne!30934 r!7292)) (h!68256 s!2326))) ((_ is Union!15211) (regOne!30934 r!7292))))))

(declare-fun lt!2212544 () Unit!154366)

(assert (=> b!5424587 (= lt!2212544 e!3361687)))

(declare-fun c!946118 () Bool)

(declare-fun lt!2212605 () Bool)

(assert (=> b!5424587 (= c!946118 lt!2212605)))

(declare-fun nullable!5380 (Regex!15211) Bool)

(assert (=> b!5424587 (= lt!2212605 (nullable!5380 (h!68257 (exprs!5095 (h!68258 zl!343)))))))

(declare-fun lambda!284396 () Int)

(declare-fun flatMap!938 ((InoxSet Context!9190) Int) (InoxSet Context!9190))

(declare-fun derivationStepZipperUp!583 (Context!9190 C!30692) (InoxSet Context!9190))

(assert (=> b!5424587 (= (flatMap!938 z!1189 lambda!284396) (derivationStepZipperUp!583 (h!68258 zl!343) (h!68256 s!2326)))))

(declare-fun lt!2212569 () Unit!154366)

(declare-fun lemmaFlatMapOnSingletonSet!470 ((InoxSet Context!9190) Context!9190 Int) Unit!154366)

(assert (=> b!5424587 (= lt!2212569 (lemmaFlatMapOnSingletonSet!470 z!1189 (h!68258 zl!343) lambda!284396))))

(declare-fun lt!2212581 () (InoxSet Context!9190))

(declare-fun lt!2212592 () Context!9190)

(assert (=> b!5424587 (= lt!2212581 (derivationStepZipperUp!583 lt!2212592 (h!68256 s!2326)))))

(declare-fun lt!2212564 () (InoxSet Context!9190))

(declare-fun derivationStepZipperDown!659 (Regex!15211 Context!9190 C!30692) (InoxSet Context!9190))

(assert (=> b!5424587 (= lt!2212564 (derivationStepZipperDown!659 (h!68257 (exprs!5095 (h!68258 zl!343))) lt!2212592 (h!68256 s!2326)))))

(assert (=> b!5424587 (= lt!2212592 (Context!9191 (t!375156 (exprs!5095 (h!68258 zl!343)))))))

(declare-fun lt!2212552 () (InoxSet Context!9190))

(assert (=> b!5424587 (= lt!2212552 (derivationStepZipperUp!583 (Context!9191 (Cons!61809 (h!68257 (exprs!5095 (h!68258 zl!343))) (t!375156 (exprs!5095 (h!68258 zl!343))))) (h!68256 s!2326)))))

(declare-fun b!5424588 () Bool)

(declare-fun e!3361678 () Bool)

(assert (=> b!5424588 (= e!3361678 (not e!3361683))))

(declare-fun res!2308388 () Bool)

(assert (=> b!5424588 (=> res!2308388 e!3361683)))

(assert (=> b!5424588 (= res!2308388 (not ((_ is Cons!61810) zl!343)))))

(assert (=> b!5424588 (= lt!2212575 (matchRSpec!2314 r!7292 s!2326))))

(assert (=> b!5424588 (= lt!2212575 (matchR!7396 r!7292 s!2326))))

(declare-fun lt!2212589 () Unit!154366)

(assert (=> b!5424588 (= lt!2212589 (mainMatchTheorem!2314 r!7292 s!2326))))

(declare-fun b!5424589 () Bool)

(declare-fun e!3361695 () Bool)

(assert (=> b!5424589 (= e!3361695 true)))

(declare-fun lt!2212539 () Regex!15211)

(assert (=> b!5424589 (matchR!7396 lt!2212539 lt!2212557)))

(declare-fun lt!2212587 () Unit!154366)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!234 (Regex!15211 Regex!15211 List!61932 List!61932) Unit!154366)

(assert (=> b!5424589 (= lt!2212587 (lemmaTwoRegexMatchThenConcatMatchesConcatString!234 lt!2212593 (regTwo!30934 r!7292) lt!2212543 (_2!35713 lt!2212594)))))

(declare-fun b!5424590 () Bool)

(assert (=> b!5424590 (= e!3361670 e!3361678)))

(declare-fun res!2308417 () Bool)

(assert (=> b!5424590 (=> (not res!2308417) (not e!3361678))))

(declare-fun lt!2212591 () Regex!15211)

(assert (=> b!5424590 (= res!2308417 (= r!7292 lt!2212591))))

(declare-fun unfocusZipper!953 (List!61934) Regex!15211)

(assert (=> b!5424590 (= lt!2212591 (unfocusZipper!953 zl!343))))

(declare-fun b!5424591 () Bool)

(declare-fun e!3361676 () Bool)

(assert (=> b!5424591 (= e!3361676 e!3361681)))

(declare-fun res!2308396 () Bool)

(assert (=> b!5424591 (=> res!2308396 e!3361681)))

(declare-fun lt!2212606 () List!61934)

(assert (=> b!5424591 (= res!2308396 (not (= (unfocusZipper!953 lt!2212606) lt!2212539)))))

(assert (=> b!5424591 (= lt!2212606 (Cons!61810 lt!2212572 Nil!61810))))

(declare-fun b!5424592 () Bool)

(declare-fun res!2308393 () Bool)

(assert (=> b!5424592 (=> res!2308393 e!3361674)))

(assert (=> b!5424592 (= res!2308393 (not (matchR!7396 lt!2212593 (_2!35713 lt!2212603))))))

(declare-fun b!5424593 () Bool)

(assert (=> b!5424593 (= e!3361674 e!3361695)))

(declare-fun res!2308401 () Bool)

(assert (=> b!5424593 (=> res!2308401 e!3361695)))

(assert (=> b!5424593 (= res!2308401 (not (matchR!7396 (regTwo!30934 r!7292) (_2!35713 lt!2212594))))))

(assert (=> b!5424593 (matchR!7396 lt!2212593 lt!2212543)))

(declare-fun lt!2212596 () Unit!154366)

(declare-fun lemmaStarApp!64 (Regex!15211 List!61932 List!61932) Unit!154366)

(assert (=> b!5424593 (= lt!2212596 (lemmaStarApp!64 (reg!15540 (regOne!30934 r!7292)) (_1!35713 lt!2212603) (_2!35713 lt!2212603)))))

(declare-fun b!5424594 () Bool)

(declare-fun res!2308384 () Bool)

(assert (=> b!5424594 (=> res!2308384 e!3361683)))

(assert (=> b!5424594 (= res!2308384 (not ((_ is Cons!61809) (exprs!5095 (h!68258 zl!343)))))))

(declare-fun b!5424595 () Bool)

(declare-fun res!2308398 () Bool)

(assert (=> b!5424595 (=> res!2308398 e!3361693)))

(declare-fun matchZipper!1455 ((InoxSet Context!9190) List!61932) Bool)

(assert (=> b!5424595 (= res!2308398 (not (matchZipper!1455 z!1189 s!2326)))))

(declare-fun b!5424596 () Bool)

(declare-fun res!2308413 () Bool)

(assert (=> b!5424596 (=> (not res!2308413) (not e!3361670))))

(declare-fun toList!8995 ((InoxSet Context!9190)) List!61934)

(assert (=> b!5424596 (= res!2308413 (= (toList!8995 z!1189) zl!343))))

(declare-fun b!5424597 () Bool)

(declare-fun res!2308386 () Bool)

(assert (=> b!5424597 (=> res!2308386 e!3361689)))

(declare-fun e!3361679 () Bool)

(assert (=> b!5424597 (= res!2308386 e!3361679)))

(declare-fun res!2308392 () Bool)

(assert (=> b!5424597 (=> (not res!2308392) (not e!3361679))))

(assert (=> b!5424597 (= res!2308392 ((_ is Concat!24056) (regOne!30934 r!7292)))))

(declare-fun b!5424598 () Bool)

(declare-fun e!3361680 () Bool)

(declare-fun e!3361697 () Bool)

(assert (=> b!5424598 (= e!3361680 e!3361697)))

(declare-fun res!2308407 () Bool)

(assert (=> b!5424598 (=> res!2308407 e!3361697)))

(declare-fun lt!2212560 () (InoxSet Context!9190))

(declare-fun lt!2212570 () (InoxSet Context!9190))

(assert (=> b!5424598 (= res!2308407 (not (= lt!2212560 lt!2212570)))))

(declare-fun lt!2212607 () (InoxSet Context!9190))

(declare-fun lt!2212556 () Context!9190)

(assert (=> b!5424598 (= (flatMap!938 lt!2212607 lambda!284396) (derivationStepZipperUp!583 lt!2212556 (h!68256 s!2326)))))

(declare-fun lt!2212567 () Unit!154366)

(assert (=> b!5424598 (= lt!2212567 (lemmaFlatMapOnSingletonSet!470 lt!2212607 lt!2212556 lambda!284396))))

(declare-fun lt!2212577 () (InoxSet Context!9190))

(assert (=> b!5424598 (= lt!2212577 (derivationStepZipperUp!583 lt!2212556 (h!68256 s!2326)))))

(declare-fun derivationStepZipper!1450 ((InoxSet Context!9190) C!30692) (InoxSet Context!9190))

(assert (=> b!5424598 (= lt!2212560 (derivationStepZipper!1450 lt!2212607 (h!68256 s!2326)))))

(assert (=> b!5424598 (= lt!2212607 (store ((as const (Array Context!9190 Bool)) false) lt!2212556 true))))

(declare-fun lt!2212565 () List!61933)

(assert (=> b!5424598 (= lt!2212556 (Context!9191 (Cons!61809 (reg!15540 (regOne!30934 r!7292)) lt!2212565)))))

(declare-fun b!5424599 () Bool)

(declare-fun tp_is_empty!39675 () Bool)

(assert (=> b!5424599 (= e!3361685 tp_is_empty!39675)))

(declare-fun b!5424600 () Bool)

(declare-fun tp!1497197 () Bool)

(declare-fun tp!1497201 () Bool)

(assert (=> b!5424600 (= e!3361685 (and tp!1497197 tp!1497201))))

(declare-fun b!5424601 () Bool)

(declare-fun Unit!154369 () Unit!154366)

(assert (=> b!5424601 (= e!3361687 Unit!154369)))

(declare-fun lt!2212550 () Unit!154366)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!448 ((InoxSet Context!9190) (InoxSet Context!9190) List!61932) Unit!154366)

(assert (=> b!5424601 (= lt!2212550 (lemmaZipperConcatMatchesSameAsBothZippers!448 lt!2212564 lt!2212581 (t!375155 s!2326)))))

(declare-fun res!2308382 () Bool)

(assert (=> b!5424601 (= res!2308382 (matchZipper!1455 lt!2212564 (t!375155 s!2326)))))

(declare-fun e!3361677 () Bool)

(assert (=> b!5424601 (=> res!2308382 e!3361677)))

(assert (=> b!5424601 (= (matchZipper!1455 ((_ map or) lt!2212564 lt!2212581) (t!375155 s!2326)) e!3361677)))

(declare-fun b!5424602 () Bool)

(declare-fun e!3361688 () Bool)

(declare-fun e!3361672 () Bool)

(assert (=> b!5424602 (= e!3361688 e!3361672)))

(declare-fun res!2308414 () Bool)

(assert (=> b!5424602 (=> res!2308414 e!3361672)))

(assert (=> b!5424602 (= res!2308414 (not (= (unfocusZipper!953 (Cons!61810 lt!2212556 Nil!61810)) lt!2212562)))))

(assert (=> b!5424602 (= lt!2212562 (Concat!24056 (reg!15540 (regOne!30934 r!7292)) lt!2212539))))

(declare-fun b!5424603 () Bool)

(declare-fun res!2308389 () Bool)

(assert (=> b!5424603 (=> res!2308389 e!3361694)))

(declare-fun isEmpty!33809 (List!61933) Bool)

(assert (=> b!5424603 (= res!2308389 (isEmpty!33809 (t!375156 (exprs!5095 (h!68258 zl!343)))))))

(declare-fun b!5424604 () Bool)

(declare-fun res!2308416 () Bool)

(declare-fun e!3361671 () Bool)

(assert (=> b!5424604 (=> res!2308416 e!3361671)))

(declare-fun lt!2212568 () Bool)

(declare-fun lt!2212608 () Bool)

(assert (=> b!5424604 (= res!2308416 (or (not lt!2212568) (not lt!2212608)))))

(declare-fun b!5424605 () Bool)

(assert (=> b!5424605 (= e!3361679 (nullable!5380 (regOne!30934 (regOne!30934 r!7292))))))

(declare-fun b!5424606 () Bool)

(declare-fun tp!1497192 () Bool)

(assert (=> b!5424606 (= e!3361675 (and (inv!81274 (h!68258 zl!343)) e!3361682 tp!1497192))))

(declare-fun b!5424607 () Bool)

(declare-fun e!3361684 () Bool)

(assert (=> b!5424607 (= e!3361684 (not (matchZipper!1455 lt!2212581 (t!375155 s!2326))))))

(declare-fun setIsEmpty!35357 () Bool)

(assert (=> setIsEmpty!35357 setRes!35357))

(declare-fun b!5424608 () Bool)

(declare-fun tp!1497198 () Bool)

(assert (=> b!5424608 (= e!3361691 (and tp_is_empty!39675 tp!1497198))))

(declare-fun b!5424609 () Bool)

(declare-fun res!2308391 () Bool)

(assert (=> b!5424609 (=> res!2308391 e!3361693)))

(assert (=> b!5424609 (= res!2308391 (not lt!2212605))))

(declare-fun b!5424610 () Bool)

(declare-fun e!3361686 () Bool)

(assert (=> b!5424610 (= e!3361697 e!3361686)))

(declare-fun res!2308404 () Bool)

(assert (=> b!5424610 (=> res!2308404 e!3361686)))

(assert (=> b!5424610 (= res!2308404 (not (= lt!2212608 (matchZipper!1455 lt!2212560 (t!375155 s!2326)))))))

(assert (=> b!5424610 (= lt!2212608 (matchZipper!1455 lt!2212607 s!2326))))

(declare-fun b!5424611 () Bool)

(declare-fun res!2308410 () Bool)

(assert (=> b!5424611 (=> res!2308410 e!3361683)))

(declare-fun generalisedUnion!1140 (List!61933) Regex!15211)

(declare-fun unfocusZipperList!653 (List!61934) List!61933)

(assert (=> b!5424611 (= res!2308410 (not (= r!7292 (generalisedUnion!1140 (unfocusZipperList!653 zl!343)))))))

(assert (=> b!5424612 (= e!3361671 e!3361692)))

(declare-fun res!2308380 () Bool)

(assert (=> b!5424612 (=> res!2308380 e!3361692)))

(declare-fun appendTo!70 ((InoxSet Context!9190) Context!9190) (InoxSet Context!9190))

(assert (=> b!5424612 (= res!2308380 (not (= (appendTo!70 lt!2212597 lt!2212572) lt!2212607)))))

(declare-fun lambda!284397 () Int)

(declare-fun lt!2212553 () List!61933)

(declare-fun map!14201 ((InoxSet Context!9190) Int) (InoxSet Context!9190))

(declare-fun ++!13596 (List!61933 List!61933) List!61933)

(assert (=> b!5424612 (= (map!14201 lt!2212597 lambda!284397) (store ((as const (Array Context!9190 Bool)) false) (Context!9191 (++!13596 lt!2212553 lt!2212565)) true))))

(declare-fun lambda!284398 () Int)

(declare-fun lt!2212558 () Unit!154366)

(declare-fun lemmaConcatPreservesForall!236 (List!61933 List!61933 Int) Unit!154366)

(assert (=> b!5424612 (= lt!2212558 (lemmaConcatPreservesForall!236 lt!2212553 lt!2212565 lambda!284398))))

(declare-fun lt!2212573 () Unit!154366)

(declare-fun lt!2212547 () Context!9190)

(declare-fun lemmaMapOnSingletonSet!70 ((InoxSet Context!9190) Context!9190 Int) Unit!154366)

(assert (=> b!5424612 (= lt!2212573 (lemmaMapOnSingletonSet!70 lt!2212597 lt!2212547 lambda!284397))))

(declare-fun b!5424613 () Bool)

(assert (=> b!5424613 (= e!3361693 e!3361671)))

(declare-fun res!2308387 () Bool)

(assert (=> b!5424613 (=> res!2308387 e!3361671)))

(assert (=> b!5424613 (= res!2308387 e!3361684)))

(declare-fun res!2308390 () Bool)

(assert (=> b!5424613 (=> (not res!2308390) (not e!3361684))))

(assert (=> b!5424613 (= res!2308390 (not lt!2212568))))

(assert (=> b!5424613 (= lt!2212568 (matchZipper!1455 lt!2212564 (t!375155 s!2326)))))

(declare-fun b!5424614 () Bool)

(assert (=> b!5424614 (= e!3361677 (matchZipper!1455 lt!2212581 (t!375155 s!2326)))))

(declare-fun b!5424615 () Bool)

(assert (=> b!5424615 (= e!3361689 e!3361680)))

(declare-fun res!2308385 () Bool)

(assert (=> b!5424615 (=> res!2308385 e!3361680)))

(assert (=> b!5424615 (= res!2308385 (not (= lt!2212564 lt!2212570)))))

(assert (=> b!5424615 (= lt!2212570 (derivationStepZipperDown!659 (reg!15540 (regOne!30934 r!7292)) lt!2212572 (h!68256 s!2326)))))

(assert (=> b!5424615 (= lt!2212572 (Context!9191 lt!2212565))))

(assert (=> b!5424615 (= lt!2212565 (Cons!61809 lt!2212593 (t!375156 (exprs!5095 (h!68258 zl!343)))))))

(assert (=> b!5424615 (= lt!2212593 (Star!15211 (reg!15540 (regOne!30934 r!7292))))))

(declare-fun b!5424616 () Bool)

(declare-fun res!2308381 () Bool)

(assert (=> b!5424616 (=> res!2308381 e!3361686)))

(assert (=> b!5424616 (= res!2308381 (not (= lt!2212591 r!7292)))))

(declare-fun b!5424617 () Bool)

(assert (=> b!5424617 (= e!3361672 e!3361676)))

(declare-fun res!2308408 () Bool)

(assert (=> b!5424617 (=> res!2308408 e!3361676)))

(declare-fun lt!2212595 () List!61934)

(assert (=> b!5424617 (= res!2308408 (not (= (unfocusZipper!953 lt!2212595) (reg!15540 (regOne!30934 r!7292)))))))

(assert (=> b!5424617 (= lt!2212595 (Cons!61810 lt!2212547 Nil!61810))))

(assert (=> b!5424617 (= (flatMap!938 lt!2212540 lambda!284396) (derivationStepZipperUp!583 lt!2212572 (h!68256 s!2326)))))

(declare-fun lt!2212561 () Unit!154366)

(assert (=> b!5424617 (= lt!2212561 (lemmaFlatMapOnSingletonSet!470 lt!2212540 lt!2212572 lambda!284396))))

(assert (=> b!5424617 (= (flatMap!938 lt!2212597 lambda!284396) (derivationStepZipperUp!583 lt!2212547 (h!68256 s!2326)))))

(declare-fun lt!2212542 () Unit!154366)

(assert (=> b!5424617 (= lt!2212542 (lemmaFlatMapOnSingletonSet!470 lt!2212597 lt!2212547 lambda!284396))))

(declare-fun lt!2212576 () (InoxSet Context!9190))

(assert (=> b!5424617 (= lt!2212576 (derivationStepZipperUp!583 lt!2212572 (h!68256 s!2326)))))

(declare-fun lt!2212601 () (InoxSet Context!9190))

(assert (=> b!5424617 (= lt!2212601 (derivationStepZipperUp!583 lt!2212547 (h!68256 s!2326)))))

(assert (=> b!5424617 (= lt!2212540 (store ((as const (Array Context!9190 Bool)) false) lt!2212572 true))))

(assert (=> b!5424617 (= lt!2212597 (store ((as const (Array Context!9190 Bool)) false) lt!2212547 true))))

(assert (=> b!5424617 (= lt!2212547 (Context!9191 lt!2212553))))

(assert (=> b!5424617 (= lt!2212553 (Cons!61809 (reg!15540 (regOne!30934 r!7292)) Nil!61809))))

(assert (=> b!5424618 (= e!3361683 e!3361694)))

(declare-fun res!2308411 () Bool)

(assert (=> b!5424618 (=> res!2308411 e!3361694)))

(declare-fun lt!2212582 () Bool)

(assert (=> b!5424618 (= res!2308411 (or (not (= lt!2212575 lt!2212582)) ((_ is Nil!61808) s!2326)))))

(assert (=> b!5424618 (= (Exists!2392 lambda!284394) (Exists!2392 lambda!284395))))

(declare-fun lt!2212604 () Unit!154366)

(assert (=> b!5424618 (= lt!2212604 (lemmaExistCutMatchRandMatchRSpecEquivalent!1046 (regOne!30934 r!7292) (regTwo!30934 r!7292) s!2326))))

(assert (=> b!5424618 (= lt!2212582 (Exists!2392 lambda!284394))))

(assert (=> b!5424618 (= lt!2212582 (isDefined!12025 (findConcatSeparation!1736 (regOne!30934 r!7292) (regTwo!30934 r!7292) Nil!61808 s!2326 s!2326)))))

(declare-fun lt!2212551 () Unit!154366)

(assert (=> b!5424618 (= lt!2212551 (lemmaFindConcatSeparationEquivalentToExists!1500 (regOne!30934 r!7292) (regTwo!30934 r!7292) s!2326))))

(declare-fun b!5424619 () Bool)

(declare-fun res!2308412 () Bool)

(assert (=> b!5424619 (=> res!2308412 e!3361673)))

(assert (=> b!5424619 (= res!2308412 (not (matchZipper!1455 lt!2212597 (_1!35713 lt!2212541))))))

(declare-fun b!5424620 () Bool)

(declare-fun tp!1497199 () Bool)

(assert (=> b!5424620 (= e!3361696 tp!1497199)))

(declare-fun b!5424621 () Bool)

(declare-fun res!2308402 () Bool)

(assert (=> b!5424621 (=> res!2308402 e!3361673)))

(assert (=> b!5424621 (= res!2308402 (not (matchZipper!1455 lt!2212540 (_2!35713 lt!2212541))))))

(declare-fun b!5424622 () Bool)

(assert (=> b!5424622 (= e!3361686 e!3361688)))

(declare-fun res!2308397 () Bool)

(assert (=> b!5424622 (=> res!2308397 e!3361688)))

(assert (=> b!5424622 (= res!2308397 (not (= r!7292 lt!2212539)))))

(assert (=> b!5424622 (= lt!2212539 (Concat!24056 lt!2212593 (regTwo!30934 r!7292)))))

(assert (=> b!5424623 (= e!3361673 e!3361698)))

(declare-fun res!2308406 () Bool)

(assert (=> b!5424623 (=> res!2308406 e!3361698)))

(assert (=> b!5424623 (= res!2308406 (not (matchR!7396 lt!2212548 (_1!35713 lt!2212594))))))

(declare-fun lt!2212602 () Option!15322)

(assert (=> b!5424623 (= lt!2212594 (get!21319 lt!2212602))))

(assert (=> b!5424623 (= (Exists!2392 lambda!284399) (Exists!2392 lambda!284400))))

(declare-fun lt!2212585 () Unit!154366)

(assert (=> b!5424623 (= lt!2212585 (lemmaExistCutMatchRandMatchRSpecEquivalent!1046 lt!2212548 (regTwo!30934 r!7292) s!2326))))

(assert (=> b!5424623 (= (isDefined!12025 lt!2212602) (Exists!2392 lambda!284399))))

(assert (=> b!5424623 (= lt!2212602 (findConcatSeparation!1736 lt!2212548 (regTwo!30934 r!7292) Nil!61808 s!2326 s!2326))))

(declare-fun lt!2212566 () Unit!154366)

(assert (=> b!5424623 (= lt!2212566 (lemmaFindConcatSeparationEquivalentToExists!1500 lt!2212548 (regTwo!30934 r!7292) s!2326))))

(declare-fun lt!2212545 () Regex!15211)

(assert (=> b!5424623 (matchRSpec!2314 lt!2212545 s!2326)))

(declare-fun lt!2212546 () Unit!154366)

(assert (=> b!5424623 (= lt!2212546 (mainMatchTheorem!2314 lt!2212545 s!2326))))

(assert (=> b!5424623 (matchR!7396 lt!2212545 s!2326)))

(assert (=> b!5424623 (= lt!2212545 (Concat!24056 lt!2212548 (regTwo!30934 r!7292)))))

(assert (=> b!5424623 (= lt!2212548 (Concat!24056 (reg!15540 (regOne!30934 r!7292)) lt!2212593))))

(declare-fun lt!2212571 () Unit!154366)

(declare-fun lemmaConcatAssociative!64 (Regex!15211 Regex!15211 Regex!15211 List!61932) Unit!154366)

(assert (=> b!5424623 (= lt!2212571 (lemmaConcatAssociative!64 (reg!15540 (regOne!30934 r!7292)) lt!2212593 (regTwo!30934 r!7292) s!2326))))

(assert (=> b!5424623 e!3361690))

(declare-fun res!2308394 () Bool)

(assert (=> b!5424623 (=> (not res!2308394) (not e!3361690))))

(assert (=> b!5424623 (= res!2308394 (matchR!7396 lt!2212562 lt!2212588))))

(declare-fun lt!2212598 () Unit!154366)

(assert (=> b!5424623 (= lt!2212598 (lemmaTwoRegexMatchThenConcatMatchesConcatString!234 (reg!15540 (regOne!30934 r!7292)) lt!2212539 (_1!35713 lt!2212541) (_2!35713 lt!2212541)))))

(assert (=> b!5424623 (matchR!7396 lt!2212539 (_2!35713 lt!2212541))))

(declare-fun lt!2212554 () Unit!154366)

(declare-fun theoremZipperRegexEquiv!525 ((InoxSet Context!9190) List!61934 Regex!15211 List!61932) Unit!154366)

(assert (=> b!5424623 (= lt!2212554 (theoremZipperRegexEquiv!525 lt!2212540 lt!2212606 lt!2212539 (_2!35713 lt!2212541)))))

(assert (=> b!5424623 (matchR!7396 (reg!15540 (regOne!30934 r!7292)) (_1!35713 lt!2212541))))

(declare-fun lt!2212583 () Unit!154366)

(assert (=> b!5424623 (= lt!2212583 (theoremZipperRegexEquiv!525 lt!2212597 lt!2212595 (reg!15540 (regOne!30934 r!7292)) (_1!35713 lt!2212541)))))

(assert (=> b!5424623 (matchZipper!1455 (store ((as const (Array Context!9190 Bool)) false) (Context!9191 (++!13596 lt!2212553 lt!2212565)) true) lt!2212588)))

(declare-fun lt!2212559 () Unit!154366)

(assert (=> b!5424623 (= lt!2212559 (lemmaConcatPreservesForall!236 lt!2212553 lt!2212565 lambda!284398))))

(declare-fun lt!2212599 () Unit!154366)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!84 (Context!9190 Context!9190 List!61932 List!61932) Unit!154366)

(assert (=> b!5424623 (= lt!2212599 (lemmaConcatenateContextMatchesConcatOfStrings!84 lt!2212547 lt!2212572 (_1!35713 lt!2212541) (_2!35713 lt!2212541)))))

(assert (= (and start!569438 res!2308405) b!5424596))

(assert (= (and b!5424596 res!2308413) b!5424590))

(assert (= (and b!5424590 res!2308417) b!5424588))

(assert (= (and b!5424588 (not res!2308388)) b!5424581))

(assert (= (and b!5424581 (not res!2308395)) b!5424577))

(assert (= (and b!5424577 (not res!2308399)) b!5424594))

(assert (= (and b!5424594 (not res!2308384)) b!5424611))

(assert (= (and b!5424611 (not res!2308410)) b!5424578))

(assert (= (and b!5424578 (not res!2308383)) b!5424618))

(assert (= (and b!5424618 (not res!2308411)) b!5424603))

(assert (= (and b!5424603 (not res!2308389)) b!5424587))

(assert (= (and b!5424587 c!946118) b!5424601))

(assert (= (and b!5424587 (not c!946118)) b!5424586))

(assert (= (and b!5424601 (not res!2308382)) b!5424614))

(assert (= (and b!5424587 (not res!2308403)) b!5424597))

(assert (= (and b!5424597 res!2308392) b!5424605))

(assert (= (and b!5424597 (not res!2308386)) b!5424584))

(assert (= (and b!5424584 (not res!2308379)) b!5424615))

(assert (= (and b!5424615 (not res!2308385)) b!5424598))

(assert (= (and b!5424598 (not res!2308407)) b!5424610))

(assert (= (and b!5424610 (not res!2308404)) b!5424616))

(assert (= (and b!5424616 (not res!2308381)) b!5424622))

(assert (= (and b!5424622 (not res!2308397)) b!5424602))

(assert (= (and b!5424602 (not res!2308414)) b!5424617))

(assert (= (and b!5424617 (not res!2308408)) b!5424591))

(assert (= (and b!5424591 (not res!2308396)) b!5424582))

(assert (= (and b!5424582 (not res!2308409)) b!5424595))

(assert (= (and b!5424595 (not res!2308398)) b!5424609))

(assert (= (and b!5424609 (not res!2308391)) b!5424613))

(assert (= (and b!5424613 res!2308390) b!5424607))

(assert (= (and b!5424613 (not res!2308387)) b!5424604))

(assert (= (and b!5424604 (not res!2308416)) b!5424612))

(assert (= (and b!5424612 (not res!2308380)) b!5424580))

(assert (= (and b!5424580 (not res!2308400)) b!5424619))

(assert (= (and b!5424619 (not res!2308412)) b!5424621))

(assert (= (and b!5424621 (not res!2308402)) b!5424623))

(assert (= (and b!5424623 res!2308394) b!5424579))

(assert (= (and b!5424623 (not res!2308406)) b!5424575))

(assert (= (and b!5424575 (not res!2308415)) b!5424592))

(assert (= (and b!5424592 (not res!2308393)) b!5424593))

(assert (= (and b!5424593 (not res!2308401)) b!5424589))

(assert (= (and start!569438 ((_ is ElementMatch!15211) r!7292)) b!5424599))

(assert (= (and start!569438 ((_ is Concat!24056) r!7292)) b!5424585))

(assert (= (and start!569438 ((_ is Star!15211) r!7292)) b!5424583))

(assert (= (and start!569438 ((_ is Union!15211) r!7292)) b!5424600))

(assert (= (and start!569438 condSetEmpty!35357) setIsEmpty!35357))

(assert (= (and start!569438 (not condSetEmpty!35357)) setNonEmpty!35357))

(assert (= setNonEmpty!35357 b!5424620))

(assert (= b!5424606 b!5424576))

(assert (= (and start!569438 ((_ is Cons!61810) zl!343)) b!5424606))

(assert (= (and start!569438 ((_ is Cons!61808) s!2326)) b!5424608))

(declare-fun m!6448692 () Bool)

(assert (=> b!5424615 m!6448692))

(declare-fun m!6448694 () Bool)

(assert (=> b!5424607 m!6448694))

(declare-fun m!6448696 () Bool)

(assert (=> b!5424595 m!6448696))

(declare-fun m!6448698 () Bool)

(assert (=> start!569438 m!6448698))

(declare-fun m!6448700 () Bool)

(assert (=> b!5424580 m!6448700))

(declare-fun m!6448702 () Bool)

(assert (=> b!5424580 m!6448702))

(declare-fun m!6448704 () Bool)

(assert (=> b!5424580 m!6448704))

(declare-fun m!6448706 () Bool)

(assert (=> b!5424580 m!6448706))

(declare-fun m!6448708 () Bool)

(assert (=> b!5424580 m!6448708))

(declare-fun m!6448710 () Bool)

(assert (=> b!5424575 m!6448710))

(declare-fun m!6448712 () Bool)

(assert (=> b!5424575 m!6448712))

(declare-fun m!6448714 () Bool)

(assert (=> b!5424575 m!6448714))

(declare-fun m!6448716 () Bool)

(assert (=> b!5424575 m!6448716))

(declare-fun m!6448718 () Bool)

(assert (=> b!5424575 m!6448718))

(assert (=> b!5424575 m!6448712))

(declare-fun m!6448720 () Bool)

(assert (=> b!5424575 m!6448720))

(declare-fun m!6448722 () Bool)

(assert (=> b!5424575 m!6448722))

(declare-fun m!6448724 () Bool)

(assert (=> b!5424575 m!6448724))

(declare-fun m!6448726 () Bool)

(assert (=> b!5424575 m!6448726))

(declare-fun m!6448728 () Bool)

(assert (=> b!5424575 m!6448728))

(declare-fun m!6448730 () Bool)

(assert (=> b!5424575 m!6448730))

(declare-fun m!6448732 () Bool)

(assert (=> b!5424575 m!6448732))

(declare-fun m!6448734 () Bool)

(assert (=> b!5424575 m!6448734))

(declare-fun m!6448736 () Bool)

(assert (=> b!5424575 m!6448736))

(declare-fun m!6448738 () Bool)

(assert (=> b!5424575 m!6448738))

(assert (=> b!5424575 m!6448712))

(declare-fun m!6448740 () Bool)

(assert (=> b!5424575 m!6448740))

(declare-fun m!6448742 () Bool)

(assert (=> b!5424575 m!6448742))

(declare-fun m!6448744 () Bool)

(assert (=> b!5424621 m!6448744))

(declare-fun m!6448746 () Bool)

(assert (=> b!5424611 m!6448746))

(assert (=> b!5424611 m!6448746))

(declare-fun m!6448748 () Bool)

(assert (=> b!5424611 m!6448748))

(declare-fun m!6448750 () Bool)

(assert (=> b!5424587 m!6448750))

(declare-fun m!6448752 () Bool)

(assert (=> b!5424587 m!6448752))

(declare-fun m!6448754 () Bool)

(assert (=> b!5424587 m!6448754))

(declare-fun m!6448756 () Bool)

(assert (=> b!5424587 m!6448756))

(declare-fun m!6448758 () Bool)

(assert (=> b!5424587 m!6448758))

(declare-fun m!6448760 () Bool)

(assert (=> b!5424587 m!6448760))

(declare-fun m!6448762 () Bool)

(assert (=> b!5424587 m!6448762))

(declare-fun m!6448764 () Bool)

(assert (=> b!5424582 m!6448764))

(declare-fun m!6448766 () Bool)

(assert (=> b!5424582 m!6448766))

(declare-fun m!6448768 () Bool)

(assert (=> b!5424582 m!6448768))

(declare-fun m!6448770 () Bool)

(assert (=> b!5424603 m!6448770))

(declare-fun m!6448772 () Bool)

(assert (=> b!5424589 m!6448772))

(declare-fun m!6448774 () Bool)

(assert (=> b!5424589 m!6448774))

(declare-fun m!6448776 () Bool)

(assert (=> b!5424581 m!6448776))

(declare-fun m!6448778 () Bool)

(assert (=> b!5424605 m!6448778))

(declare-fun m!6448780 () Bool)

(assert (=> b!5424617 m!6448780))

(declare-fun m!6448782 () Bool)

(assert (=> b!5424617 m!6448782))

(declare-fun m!6448784 () Bool)

(assert (=> b!5424617 m!6448784))

(declare-fun m!6448786 () Bool)

(assert (=> b!5424617 m!6448786))

(declare-fun m!6448788 () Bool)

(assert (=> b!5424617 m!6448788))

(declare-fun m!6448790 () Bool)

(assert (=> b!5424617 m!6448790))

(declare-fun m!6448792 () Bool)

(assert (=> b!5424617 m!6448792))

(declare-fun m!6448794 () Bool)

(assert (=> b!5424617 m!6448794))

(declare-fun m!6448796 () Bool)

(assert (=> b!5424617 m!6448796))

(declare-fun m!6448798 () Bool)

(assert (=> b!5424577 m!6448798))

(declare-fun m!6448800 () Bool)

(assert (=> b!5424612 m!6448800))

(declare-fun m!6448802 () Bool)

(assert (=> b!5424612 m!6448802))

(declare-fun m!6448804 () Bool)

(assert (=> b!5424612 m!6448804))

(declare-fun m!6448806 () Bool)

(assert (=> b!5424612 m!6448806))

(declare-fun m!6448808 () Bool)

(assert (=> b!5424612 m!6448808))

(declare-fun m!6448810 () Bool)

(assert (=> b!5424612 m!6448810))

(declare-fun m!6448812 () Bool)

(assert (=> b!5424602 m!6448812))

(declare-fun m!6448814 () Bool)

(assert (=> b!5424592 m!6448814))

(declare-fun m!6448816 () Bool)

(assert (=> b!5424596 m!6448816))

(declare-fun m!6448818 () Bool)

(assert (=> b!5424613 m!6448818))

(declare-fun m!6448820 () Bool)

(assert (=> b!5424610 m!6448820))

(declare-fun m!6448822 () Bool)

(assert (=> b!5424610 m!6448822))

(declare-fun m!6448824 () Bool)

(assert (=> b!5424623 m!6448824))

(declare-fun m!6448826 () Bool)

(assert (=> b!5424623 m!6448826))

(declare-fun m!6448828 () Bool)

(assert (=> b!5424623 m!6448828))

(assert (=> b!5424623 m!6448802))

(declare-fun m!6448830 () Bool)

(assert (=> b!5424623 m!6448830))

(declare-fun m!6448832 () Bool)

(assert (=> b!5424623 m!6448832))

(declare-fun m!6448834 () Bool)

(assert (=> b!5424623 m!6448834))

(declare-fun m!6448836 () Bool)

(assert (=> b!5424623 m!6448836))

(assert (=> b!5424623 m!6448808))

(declare-fun m!6448838 () Bool)

(assert (=> b!5424623 m!6448838))

(declare-fun m!6448840 () Bool)

(assert (=> b!5424623 m!6448840))

(declare-fun m!6448842 () Bool)

(assert (=> b!5424623 m!6448842))

(assert (=> b!5424623 m!6448804))

(declare-fun m!6448844 () Bool)

(assert (=> b!5424623 m!6448844))

(declare-fun m!6448846 () Bool)

(assert (=> b!5424623 m!6448846))

(declare-fun m!6448848 () Bool)

(assert (=> b!5424623 m!6448848))

(assert (=> b!5424623 m!6448848))

(declare-fun m!6448850 () Bool)

(assert (=> b!5424623 m!6448850))

(declare-fun m!6448852 () Bool)

(assert (=> b!5424623 m!6448852))

(declare-fun m!6448854 () Bool)

(assert (=> b!5424623 m!6448854))

(assert (=> b!5424623 m!6448808))

(declare-fun m!6448856 () Bool)

(assert (=> b!5424623 m!6448856))

(declare-fun m!6448858 () Bool)

(assert (=> b!5424623 m!6448858))

(declare-fun m!6448860 () Bool)

(assert (=> b!5424623 m!6448860))

(declare-fun m!6448862 () Bool)

(assert (=> b!5424623 m!6448862))

(declare-fun m!6448864 () Bool)

(assert (=> b!5424591 m!6448864))

(assert (=> b!5424614 m!6448694))

(declare-fun m!6448866 () Bool)

(assert (=> setNonEmpty!35357 m!6448866))

(declare-fun m!6448868 () Bool)

(assert (=> b!5424590 m!6448868))

(declare-fun m!6448870 () Bool)

(assert (=> b!5424606 m!6448870))

(declare-fun m!6448872 () Bool)

(assert (=> b!5424588 m!6448872))

(declare-fun m!6448874 () Bool)

(assert (=> b!5424588 m!6448874))

(declare-fun m!6448876 () Bool)

(assert (=> b!5424588 m!6448876))

(declare-fun m!6448878 () Bool)

(assert (=> b!5424618 m!6448878))

(assert (=> b!5424618 m!6448878))

(declare-fun m!6448880 () Bool)

(assert (=> b!5424618 m!6448880))

(declare-fun m!6448882 () Bool)

(assert (=> b!5424618 m!6448882))

(declare-fun m!6448884 () Bool)

(assert (=> b!5424618 m!6448884))

(declare-fun m!6448886 () Bool)

(assert (=> b!5424618 m!6448886))

(assert (=> b!5424618 m!6448882))

(declare-fun m!6448888 () Bool)

(assert (=> b!5424618 m!6448888))

(declare-fun m!6448890 () Bool)

(assert (=> b!5424593 m!6448890))

(declare-fun m!6448892 () Bool)

(assert (=> b!5424593 m!6448892))

(declare-fun m!6448894 () Bool)

(assert (=> b!5424593 m!6448894))

(declare-fun m!6448896 () Bool)

(assert (=> b!5424598 m!6448896))

(declare-fun m!6448898 () Bool)

(assert (=> b!5424598 m!6448898))

(declare-fun m!6448900 () Bool)

(assert (=> b!5424598 m!6448900))

(declare-fun m!6448902 () Bool)

(assert (=> b!5424598 m!6448902))

(declare-fun m!6448904 () Bool)

(assert (=> b!5424598 m!6448904))

(declare-fun m!6448906 () Bool)

(assert (=> b!5424619 m!6448906))

(declare-fun m!6448908 () Bool)

(assert (=> b!5424601 m!6448908))

(assert (=> b!5424601 m!6448818))

(declare-fun m!6448910 () Bool)

(assert (=> b!5424601 m!6448910))

(check-sat (not b!5424592) (not b!5424602) (not b!5424583) (not b!5424620) (not b!5424593) (not b!5424582) (not b!5424623) (not b!5424612) (not b!5424576) (not b!5424601) (not b!5424614) (not b!5424580) (not b!5424581) (not b!5424606) (not b!5424605) (not b!5424590) (not b!5424588) (not b!5424607) (not b!5424575) (not b!5424621) tp_is_empty!39675 (not b!5424619) (not b!5424591) (not b!5424615) (not b!5424613) (not b!5424600) (not b!5424585) (not b!5424617) (not b!5424610) (not b!5424595) (not b!5424587) (not setNonEmpty!35357) (not b!5424589) (not b!5424611) (not b!5424596) (not b!5424598) (not b!5424577) (not b!5424608) (not start!569438) (not b!5424618) (not b!5424603))
(check-sat)
