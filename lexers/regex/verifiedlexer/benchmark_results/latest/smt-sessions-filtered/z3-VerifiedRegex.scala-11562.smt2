; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638170 () Bool)

(assert start!638170)

(declare-fun b!6494638 () Bool)

(assert (=> b!6494638 true))

(assert (=> b!6494638 true))

(declare-fun lambda!359763 () Int)

(declare-fun lambda!359762 () Int)

(assert (=> b!6494638 (not (= lambda!359763 lambda!359762))))

(assert (=> b!6494638 true))

(assert (=> b!6494638 true))

(declare-fun b!6494613 () Bool)

(assert (=> b!6494613 true))

(declare-fun bs!1649623 () Bool)

(declare-fun b!6494603 () Bool)

(assert (= bs!1649623 (and b!6494603 b!6494638)))

(declare-datatypes ((C!33012 0))(
  ( (C!33013 (val!26208 Int)) )
))
(declare-datatypes ((Regex!16371 0))(
  ( (ElementMatch!16371 (c!1190421 C!33012)) (Concat!25216 (regOne!33254 Regex!16371) (regTwo!33254 Regex!16371)) (EmptyExpr!16371) (Star!16371 (reg!16700 Regex!16371)) (EmptyLang!16371) (Union!16371 (regOne!33255 Regex!16371) (regTwo!33255 Regex!16371)) )
))
(declare-fun lt!2390398 () Regex!16371)

(declare-fun r!7292 () Regex!16371)

(declare-fun lambda!359765 () Int)

(assert (=> bs!1649623 (= (= lt!2390398 (regOne!33254 r!7292)) (= lambda!359765 lambda!359762))))

(assert (=> bs!1649623 (not (= lambda!359765 lambda!359763))))

(assert (=> b!6494603 true))

(assert (=> b!6494603 true))

(assert (=> b!6494603 true))

(declare-fun lambda!359766 () Int)

(assert (=> bs!1649623 (not (= lambda!359766 lambda!359762))))

(assert (=> bs!1649623 (= (= lt!2390398 (regOne!33254 r!7292)) (= lambda!359766 lambda!359763))))

(assert (=> b!6494603 (not (= lambda!359766 lambda!359765))))

(assert (=> b!6494603 true))

(assert (=> b!6494603 true))

(assert (=> b!6494603 true))

(declare-fun bs!1649624 () Bool)

(declare-fun b!6494635 () Bool)

(assert (= bs!1649624 (and b!6494635 b!6494638)))

(declare-fun lambda!359767 () Int)

(declare-datatypes ((List!65412 0))(
  ( (Nil!65288) (Cons!65288 (h!71736 C!33012) (t!379042 List!65412)) )
))
(declare-fun s!2326 () List!65412)

(declare-datatypes ((tuple2!66700 0))(
  ( (tuple2!66701 (_1!36653 List!65412) (_2!36653 List!65412)) )
))
(declare-fun lt!2390391 () tuple2!66700)

(assert (=> bs!1649624 (= (and (= (_1!36653 lt!2390391) s!2326) (= (reg!16700 (regOne!33254 r!7292)) (regOne!33254 r!7292)) (= lt!2390398 (regTwo!33254 r!7292))) (= lambda!359767 lambda!359762))))

(assert (=> bs!1649624 (not (= lambda!359767 lambda!359763))))

(declare-fun bs!1649625 () Bool)

(assert (= bs!1649625 (and b!6494635 b!6494603)))

(assert (=> bs!1649625 (= (and (= (_1!36653 lt!2390391) s!2326) (= (reg!16700 (regOne!33254 r!7292)) lt!2390398) (= lt!2390398 (regTwo!33254 r!7292))) (= lambda!359767 lambda!359765))))

(assert (=> bs!1649625 (not (= lambda!359767 lambda!359766))))

(assert (=> b!6494635 true))

(assert (=> b!6494635 true))

(assert (=> b!6494635 true))

(declare-fun lambda!359768 () Int)

(assert (=> b!6494635 (not (= lambda!359768 lambda!359767))))

(assert (=> bs!1649625 (not (= lambda!359768 lambda!359766))))

(assert (=> bs!1649624 (not (= lambda!359768 lambda!359762))))

(assert (=> bs!1649625 (not (= lambda!359768 lambda!359765))))

(assert (=> bs!1649624 (not (= lambda!359768 lambda!359763))))

(assert (=> b!6494635 true))

(assert (=> b!6494635 true))

(assert (=> b!6494635 true))

(declare-fun lambda!359769 () Int)

(assert (=> b!6494635 (not (= lambda!359769 lambda!359768))))

(assert (=> b!6494635 (not (= lambda!359769 lambda!359767))))

(assert (=> bs!1649625 (= (and (= (_1!36653 lt!2390391) s!2326) (= (reg!16700 (regOne!33254 r!7292)) lt!2390398) (= lt!2390398 (regTwo!33254 r!7292))) (= lambda!359769 lambda!359766))))

(assert (=> bs!1649624 (not (= lambda!359769 lambda!359762))))

(assert (=> bs!1649625 (not (= lambda!359769 lambda!359765))))

(assert (=> bs!1649624 (= (and (= (_1!36653 lt!2390391) s!2326) (= (reg!16700 (regOne!33254 r!7292)) (regOne!33254 r!7292)) (= lt!2390398 (regTwo!33254 r!7292))) (= lambda!359769 lambda!359763))))

(assert (=> b!6494635 true))

(assert (=> b!6494635 true))

(assert (=> b!6494635 true))

(declare-fun b!6494597 () Bool)

(declare-fun res!2667332 () Bool)

(declare-fun e!3935709 () Bool)

(assert (=> b!6494597 (=> res!2667332 e!3935709)))

(declare-datatypes ((List!65413 0))(
  ( (Nil!65289) (Cons!65289 (h!71737 Regex!16371) (t!379043 List!65413)) )
))
(declare-datatypes ((Context!11510 0))(
  ( (Context!11511 (exprs!6255 List!65413)) )
))
(declare-datatypes ((List!65414 0))(
  ( (Nil!65290) (Cons!65290 (h!71738 Context!11510) (t!379044 List!65414)) )
))
(declare-fun zl!343 () List!65414)

(declare-fun isEmpty!37484 (List!65413) Bool)

(assert (=> b!6494597 (= res!2667332 (isEmpty!37484 (t!379043 (exprs!6255 (h!71738 zl!343)))))))

(declare-fun res!2667322 () Bool)

(declare-fun e!3935727 () Bool)

(assert (=> start!638170 (=> (not res!2667322) (not e!3935727))))

(declare-fun validRegex!8107 (Regex!16371) Bool)

(assert (=> start!638170 (= res!2667322 (validRegex!8107 r!7292))))

(assert (=> start!638170 e!3935727))

(declare-fun e!3935726 () Bool)

(assert (=> start!638170 e!3935726))

(declare-fun condSetEmpty!44245 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11510))

(assert (=> start!638170 (= condSetEmpty!44245 (= z!1189 ((as const (Array Context!11510 Bool)) false)))))

(declare-fun setRes!44245 () Bool)

(assert (=> start!638170 setRes!44245))

(declare-fun e!3935707 () Bool)

(assert (=> start!638170 e!3935707))

(declare-fun e!3935720 () Bool)

(assert (=> start!638170 e!3935720))

(declare-fun b!6494598 () Bool)

(declare-fun res!2667320 () Bool)

(assert (=> b!6494598 (=> (not res!2667320) (not e!3935727))))

(declare-fun toList!10155 ((InoxSet Context!11510)) List!65414)

(assert (=> b!6494598 (= res!2667320 (= (toList!10155 z!1189) zl!343))))

(declare-fun b!6494599 () Bool)

(declare-fun res!2667312 () Bool)

(declare-fun e!3935721 () Bool)

(assert (=> b!6494599 (=> res!2667312 e!3935721)))

(declare-fun generalisedConcat!1968 (List!65413) Regex!16371)

(assert (=> b!6494599 (= res!2667312 (not (= r!7292 (generalisedConcat!1968 (exprs!6255 (h!71738 zl!343))))))))

(declare-fun b!6494600 () Bool)

(declare-fun tp_is_empty!41995 () Bool)

(assert (=> b!6494600 (= e!3935726 tp_is_empty!41995)))

(declare-fun b!6494601 () Bool)

(declare-fun tp!1797203 () Bool)

(assert (=> b!6494601 (= e!3935720 (and tp_is_empty!41995 tp!1797203))))

(declare-fun b!6494602 () Bool)

(declare-fun e!3935715 () Bool)

(declare-fun lt!2390433 () Bool)

(assert (=> b!6494602 (= e!3935715 lt!2390433)))

(declare-fun e!3935711 () Bool)

(declare-fun e!3935718 () Bool)

(assert (=> b!6494603 (= e!3935711 e!3935718)))

(declare-fun res!2667325 () Bool)

(assert (=> b!6494603 (=> res!2667325 e!3935718)))

(declare-fun ++!14452 (List!65412 List!65412) List!65412)

(assert (=> b!6494603 (= res!2667325 (not (= (++!14452 (_1!36653 lt!2390391) (_2!36653 lt!2390391)) s!2326)))))

(declare-datatypes ((Option!16262 0))(
  ( (None!16261) (Some!16261 (v!52440 tuple2!66700)) )
))
(declare-fun lt!2390419 () Option!16262)

(declare-fun get!22640 (Option!16262) tuple2!66700)

(assert (=> b!6494603 (= lt!2390391 (get!22640 lt!2390419))))

(declare-fun Exists!3441 (Int) Bool)

(assert (=> b!6494603 (= (Exists!3441 lambda!359765) (Exists!3441 lambda!359766))))

(declare-datatypes ((Unit!158817 0))(
  ( (Unit!158818) )
))
(declare-fun lt!2390448 () Unit!158817)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1978 (Regex!16371 Regex!16371 List!65412) Unit!158817)

(assert (=> b!6494603 (= lt!2390448 (lemmaExistCutMatchRandMatchRSpecEquivalent!1978 lt!2390398 (regTwo!33254 r!7292) s!2326))))

(declare-fun isDefined!12965 (Option!16262) Bool)

(assert (=> b!6494603 (= (isDefined!12965 lt!2390419) (Exists!3441 lambda!359765))))

(declare-fun findConcatSeparation!2676 (Regex!16371 Regex!16371 List!65412 List!65412 List!65412) Option!16262)

(assert (=> b!6494603 (= lt!2390419 (findConcatSeparation!2676 lt!2390398 (regTwo!33254 r!7292) Nil!65288 s!2326 s!2326))))

(declare-fun lt!2390443 () Unit!158817)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2440 (Regex!16371 Regex!16371 List!65412) Unit!158817)

(assert (=> b!6494603 (= lt!2390443 (lemmaFindConcatSeparationEquivalentToExists!2440 lt!2390398 (regTwo!33254 r!7292) s!2326))))

(declare-fun b!6494604 () Bool)

(declare-fun e!3935723 () Bool)

(assert (=> b!6494604 (= e!3935727 e!3935723)))

(declare-fun res!2667329 () Bool)

(assert (=> b!6494604 (=> (not res!2667329) (not e!3935723))))

(declare-fun lt!2390418 () Regex!16371)

(assert (=> b!6494604 (= res!2667329 (= r!7292 lt!2390418))))

(declare-fun unfocusZipper!2113 (List!65414) Regex!16371)

(assert (=> b!6494604 (= lt!2390418 (unfocusZipper!2113 zl!343))))

(declare-fun b!6494605 () Bool)

(declare-fun e!3935730 () Bool)

(declare-fun e!3935710 () Bool)

(assert (=> b!6494605 (= e!3935730 e!3935710)))

(declare-fun res!2667333 () Bool)

(assert (=> b!6494605 (=> res!2667333 e!3935710)))

(declare-fun lt!2390412 () Regex!16371)

(assert (=> b!6494605 (= res!2667333 (not (= r!7292 lt!2390412)))))

(assert (=> b!6494605 (= lt!2390412 (Concat!25216 lt!2390398 (regTwo!33254 r!7292)))))

(declare-fun b!6494606 () Bool)

(declare-fun e!3935717 () Bool)

(declare-fun tp!1797200 () Bool)

(assert (=> b!6494606 (= e!3935717 tp!1797200)))

(declare-fun b!6494607 () Bool)

(declare-fun e!3935729 () Bool)

(assert (=> b!6494607 (= e!3935729 e!3935711)))

(declare-fun res!2667336 () Bool)

(assert (=> b!6494607 (=> res!2667336 e!3935711)))

(declare-fun lt!2390416 () Bool)

(assert (=> b!6494607 (= res!2667336 (not lt!2390416))))

(declare-fun e!3935719 () Bool)

(assert (=> b!6494607 e!3935719))

(declare-fun res!2667308 () Bool)

(assert (=> b!6494607 (=> (not res!2667308) (not e!3935719))))

(declare-fun lt!2390403 () Regex!16371)

(declare-fun matchRSpec!3472 (Regex!16371 List!65412) Bool)

(assert (=> b!6494607 (= res!2667308 (= lt!2390433 (matchRSpec!3472 lt!2390403 s!2326)))))

(declare-fun matchR!8554 (Regex!16371 List!65412) Bool)

(assert (=> b!6494607 (= lt!2390433 (matchR!8554 lt!2390403 s!2326))))

(declare-fun lt!2390399 () Unit!158817)

(declare-fun mainMatchTheorem!3472 (Regex!16371 List!65412) Unit!158817)

(assert (=> b!6494607 (= lt!2390399 (mainMatchTheorem!3472 lt!2390403 s!2326))))

(declare-fun b!6494608 () Bool)

(declare-fun res!2667330 () Bool)

(assert (=> b!6494608 (=> res!2667330 e!3935721)))

(get-info :version)

(assert (=> b!6494608 (= res!2667330 (or ((_ is EmptyExpr!16371) r!7292) ((_ is EmptyLang!16371) r!7292) ((_ is ElementMatch!16371) r!7292) ((_ is Union!16371) r!7292) (not ((_ is Concat!25216) r!7292))))))

(declare-fun e!3935708 () Bool)

(declare-fun b!6494609 () Bool)

(declare-fun tp!1797202 () Bool)

(declare-fun inv!84174 (Context!11510) Bool)

(assert (=> b!6494609 (= e!3935707 (and (inv!84174 (h!71738 zl!343)) e!3935708 tp!1797202))))

(declare-fun setIsEmpty!44245 () Bool)

(assert (=> setIsEmpty!44245 setRes!44245))

(declare-fun b!6494610 () Bool)

(declare-fun matchZipper!2383 ((InoxSet Context!11510) List!65412) Bool)

(assert (=> b!6494610 (= e!3935718 (matchZipper!2383 z!1189 s!2326))))

(declare-fun lt!2390404 () Unit!158817)

(declare-fun e!3935724 () Unit!158817)

(assert (=> b!6494610 (= lt!2390404 e!3935724)))

(declare-fun c!1190420 () Bool)

(declare-fun isEmpty!37485 (List!65412) Bool)

(assert (=> b!6494610 (= c!1190420 (isEmpty!37485 (_1!36653 lt!2390391)))))

(declare-fun b!6494611 () Bool)

(declare-fun e!3935722 () Bool)

(declare-fun e!3935728 () Bool)

(assert (=> b!6494611 (= e!3935722 e!3935728)))

(declare-fun res!2667319 () Bool)

(assert (=> b!6494611 (=> res!2667319 e!3935728)))

(declare-fun lt!2390452 () (InoxSet Context!11510))

(declare-fun lt!2390426 () (InoxSet Context!11510))

(assert (=> b!6494611 (= res!2667319 (not (= lt!2390452 lt!2390426)))))

(declare-fun lt!2390429 () Context!11510)

(declare-fun derivationStepZipperDown!1619 (Regex!16371 Context!11510 C!33012) (InoxSet Context!11510))

(assert (=> b!6494611 (= lt!2390426 (derivationStepZipperDown!1619 (reg!16700 (regOne!33254 r!7292)) lt!2390429 (h!71736 s!2326)))))

(declare-fun lt!2390396 () List!65413)

(assert (=> b!6494611 (= lt!2390429 (Context!11511 lt!2390396))))

(assert (=> b!6494611 (= lt!2390396 (Cons!65289 lt!2390398 (t!379043 (exprs!6255 (h!71738 zl!343)))))))

(assert (=> b!6494611 (= lt!2390398 (Star!16371 (reg!16700 (regOne!33254 r!7292))))))

(declare-fun b!6494612 () Bool)

(declare-fun e!3935716 () Unit!158817)

(declare-fun Unit!158819 () Unit!158817)

(assert (=> b!6494612 (= e!3935716 Unit!158819)))

(assert (=> b!6494613 (= e!3935709 e!3935722)))

(declare-fun res!2667334 () Bool)

(assert (=> b!6494613 (=> res!2667334 e!3935722)))

(assert (=> b!6494613 (= res!2667334 (or (and ((_ is ElementMatch!16371) (regOne!33254 r!7292)) (= (c!1190421 (regOne!33254 r!7292)) (h!71736 s!2326))) ((_ is Union!16371) (regOne!33254 r!7292))))))

(declare-fun lt!2390400 () Unit!158817)

(assert (=> b!6494613 (= lt!2390400 e!3935716)))

(declare-fun c!1190419 () Bool)

(declare-fun nullable!6364 (Regex!16371) Bool)

(assert (=> b!6494613 (= c!1190419 (nullable!6364 (h!71737 (exprs!6255 (h!71738 zl!343)))))))

(declare-fun lambda!359764 () Int)

(declare-fun flatMap!1876 ((InoxSet Context!11510) Int) (InoxSet Context!11510))

(declare-fun derivationStepZipperUp!1545 (Context!11510 C!33012) (InoxSet Context!11510))

(assert (=> b!6494613 (= (flatMap!1876 z!1189 lambda!359764) (derivationStepZipperUp!1545 (h!71738 zl!343) (h!71736 s!2326)))))

(declare-fun lt!2390423 () Unit!158817)

(declare-fun lemmaFlatMapOnSingletonSet!1402 ((InoxSet Context!11510) Context!11510 Int) Unit!158817)

(assert (=> b!6494613 (= lt!2390423 (lemmaFlatMapOnSingletonSet!1402 z!1189 (h!71738 zl!343) lambda!359764))))

(declare-fun lt!2390438 () (InoxSet Context!11510))

(declare-fun lt!2390442 () Context!11510)

(assert (=> b!6494613 (= lt!2390438 (derivationStepZipperUp!1545 lt!2390442 (h!71736 s!2326)))))

(assert (=> b!6494613 (= lt!2390452 (derivationStepZipperDown!1619 (h!71737 (exprs!6255 (h!71738 zl!343))) lt!2390442 (h!71736 s!2326)))))

(assert (=> b!6494613 (= lt!2390442 (Context!11511 (t!379043 (exprs!6255 (h!71738 zl!343)))))))

(declare-fun lt!2390436 () (InoxSet Context!11510))

(assert (=> b!6494613 (= lt!2390436 (derivationStepZipperUp!1545 (Context!11511 (Cons!65289 (h!71737 (exprs!6255 (h!71738 zl!343))) (t!379043 (exprs!6255 (h!71738 zl!343))))) (h!71736 s!2326)))))

(declare-fun b!6494614 () Bool)

(declare-fun res!2667338 () Bool)

(assert (=> b!6494614 (=> res!2667338 e!3935721)))

(assert (=> b!6494614 (= res!2667338 (not ((_ is Cons!65289) (exprs!6255 (h!71738 zl!343)))))))

(declare-fun b!6494615 () Bool)

(assert (=> b!6494615 (= e!3935723 (not e!3935721))))

(declare-fun res!2667321 () Bool)

(assert (=> b!6494615 (=> res!2667321 e!3935721)))

(assert (=> b!6494615 (= res!2667321 (not ((_ is Cons!65290) zl!343)))))

(declare-fun lt!2390432 () Bool)

(assert (=> b!6494615 (= lt!2390416 lt!2390432)))

(assert (=> b!6494615 (= lt!2390432 (matchRSpec!3472 r!7292 s!2326))))

(assert (=> b!6494615 (= lt!2390416 (matchR!8554 r!7292 s!2326))))

(declare-fun lt!2390434 () Unit!158817)

(assert (=> b!6494615 (= lt!2390434 (mainMatchTheorem!3472 r!7292 s!2326))))

(declare-fun b!6494616 () Bool)

(declare-fun res!2667335 () Bool)

(assert (=> b!6494616 (=> res!2667335 e!3935722)))

(assert (=> b!6494616 (= res!2667335 (or ((_ is Concat!25216) (regOne!33254 r!7292)) (not ((_ is Star!16371) (regOne!33254 r!7292)))))))

(declare-fun b!6494617 () Bool)

(declare-fun res!2667337 () Bool)

(assert (=> b!6494617 (=> res!2667337 e!3935730)))

(declare-fun lt!2390414 () (InoxSet Context!11510))

(declare-fun lt!2390447 () (InoxSet Context!11510))

(assert (=> b!6494617 (= res!2667337 (not (= (matchZipper!2383 lt!2390414 s!2326) (matchZipper!2383 lt!2390447 (t!379042 s!2326)))))))

(declare-fun bm!562433 () Bool)

(declare-fun lt!2390402 () Regex!16371)

(declare-fun call!562440 () Bool)

(declare-fun lt!2390395 () List!65412)

(assert (=> bm!562433 (= call!562440 (matchR!8554 (ite c!1190420 lt!2390402 lt!2390398) (ite c!1190420 s!2326 lt!2390395)))))

(declare-fun b!6494618 () Bool)

(declare-fun e!3935714 () Bool)

(assert (=> b!6494618 (= e!3935714 (matchZipper!2383 lt!2390438 (t!379042 s!2326)))))

(declare-fun b!6494619 () Bool)

(declare-fun res!2667327 () Bool)

(assert (=> b!6494619 (=> res!2667327 e!3935722)))

(declare-fun e!3935712 () Bool)

(assert (=> b!6494619 (= res!2667327 e!3935712)))

(declare-fun res!2667311 () Bool)

(assert (=> b!6494619 (=> (not res!2667311) (not e!3935712))))

(assert (=> b!6494619 (= res!2667311 ((_ is Concat!25216) (regOne!33254 r!7292)))))

(declare-fun b!6494620 () Bool)

(declare-fun e!3935725 () Bool)

(declare-fun e!3935706 () Bool)

(assert (=> b!6494620 (= e!3935725 e!3935706)))

(declare-fun res!2667324 () Bool)

(assert (=> b!6494620 (=> res!2667324 e!3935706)))

(declare-fun lt!2390394 () List!65414)

(assert (=> b!6494620 (= res!2667324 (not (= (unfocusZipper!2113 lt!2390394) (reg!16700 (regOne!33254 r!7292)))))))

(declare-fun lt!2390413 () Context!11510)

(assert (=> b!6494620 (= lt!2390394 (Cons!65290 lt!2390413 Nil!65290))))

(declare-fun lt!2390393 () (InoxSet Context!11510))

(assert (=> b!6494620 (= (flatMap!1876 lt!2390393 lambda!359764) (derivationStepZipperUp!1545 lt!2390429 (h!71736 s!2326)))))

(declare-fun lt!2390451 () Unit!158817)

(assert (=> b!6494620 (= lt!2390451 (lemmaFlatMapOnSingletonSet!1402 lt!2390393 lt!2390429 lambda!359764))))

(declare-fun lt!2390424 () (InoxSet Context!11510))

(assert (=> b!6494620 (= (flatMap!1876 lt!2390424 lambda!359764) (derivationStepZipperUp!1545 lt!2390413 (h!71736 s!2326)))))

(declare-fun lt!2390389 () Unit!158817)

(assert (=> b!6494620 (= lt!2390389 (lemmaFlatMapOnSingletonSet!1402 lt!2390424 lt!2390413 lambda!359764))))

(declare-fun lt!2390450 () (InoxSet Context!11510))

(assert (=> b!6494620 (= lt!2390450 (derivationStepZipperUp!1545 lt!2390429 (h!71736 s!2326)))))

(declare-fun lt!2390440 () (InoxSet Context!11510))

(assert (=> b!6494620 (= lt!2390440 (derivationStepZipperUp!1545 lt!2390413 (h!71736 s!2326)))))

(assert (=> b!6494620 (= lt!2390393 (store ((as const (Array Context!11510 Bool)) false) lt!2390429 true))))

(assert (=> b!6494620 (= lt!2390424 (store ((as const (Array Context!11510 Bool)) false) lt!2390413 true))))

(declare-fun lt!2390446 () List!65413)

(assert (=> b!6494620 (= lt!2390413 (Context!11511 lt!2390446))))

(assert (=> b!6494620 (= lt!2390446 (Cons!65289 (reg!16700 (regOne!33254 r!7292)) Nil!65289))))

(declare-fun b!6494621 () Bool)

(declare-fun tp!1797198 () Bool)

(assert (=> b!6494621 (= e!3935708 tp!1797198)))

(declare-fun b!6494622 () Bool)

(declare-fun Unit!158820 () Unit!158817)

(assert (=> b!6494622 (= e!3935724 Unit!158820)))

(declare-fun lt!2390431 () (InoxSet Context!11510))

(assert (=> b!6494622 (= lt!2390431 (store ((as const (Array Context!11510 Bool)) false) lt!2390442 true))))

(declare-fun lt!2390392 () Unit!158817)

(assert (=> b!6494622 (= lt!2390392 (lemmaFlatMapOnSingletonSet!1402 lt!2390431 lt!2390442 lambda!359764))))

(assert (=> b!6494622 (= (flatMap!1876 lt!2390431 lambda!359764) (derivationStepZipperUp!1545 lt!2390442 (h!71736 s!2326)))))

(assert (=> b!6494622 (= lt!2390402 (generalisedConcat!1968 (t!379043 (exprs!6255 (h!71738 zl!343)))))))

(declare-fun lt!2390428 () Unit!158817)

(declare-fun call!562441 () Unit!158817)

(assert (=> b!6494622 (= lt!2390428 call!562441)))

(declare-fun res!2667326 () Bool)

(declare-fun call!562438 () Bool)

(assert (=> b!6494622 (= res!2667326 (= call!562440 call!562438))))

(declare-fun e!3935713 () Bool)

(assert (=> b!6494622 (=> (not res!2667326) (not e!3935713))))

(assert (=> b!6494622 e!3935713))

(declare-fun b!6494623 () Bool)

(assert (=> b!6494623 (= e!3935710 e!3935725)))

(declare-fun res!2667313 () Bool)

(assert (=> b!6494623 (=> res!2667313 e!3935725)))

(declare-fun lt!2390388 () Context!11510)

(assert (=> b!6494623 (= res!2667313 (not (= (unfocusZipper!2113 (Cons!65290 lt!2390388 Nil!65290)) lt!2390403)))))

(assert (=> b!6494623 (= lt!2390403 (Concat!25216 (reg!16700 (regOne!33254 r!7292)) lt!2390412))))

(declare-fun bm!562434 () Bool)

(declare-fun call!562439 () Bool)

(assert (=> bm!562434 (= call!562439 (matchZipper!2383 z!1189 s!2326))))

(declare-fun b!6494624 () Bool)

(declare-fun Unit!158821 () Unit!158817)

(assert (=> b!6494624 (= e!3935716 Unit!158821)))

(declare-fun lt!2390417 () Unit!158817)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1202 ((InoxSet Context!11510) (InoxSet Context!11510) List!65412) Unit!158817)

(assert (=> b!6494624 (= lt!2390417 (lemmaZipperConcatMatchesSameAsBothZippers!1202 lt!2390452 lt!2390438 (t!379042 s!2326)))))

(declare-fun res!2667318 () Bool)

(assert (=> b!6494624 (= res!2667318 (matchZipper!2383 lt!2390452 (t!379042 s!2326)))))

(assert (=> b!6494624 (=> res!2667318 e!3935714)))

(assert (=> b!6494624 (= (matchZipper!2383 ((_ map or) lt!2390452 lt!2390438) (t!379042 s!2326)) e!3935714)))

(declare-fun b!6494625 () Bool)

(assert (=> b!6494625 (= e!3935713 call!562439)))

(declare-fun b!6494626 () Bool)

(declare-fun tp!1797195 () Bool)

(declare-fun tp!1797197 () Bool)

(assert (=> b!6494626 (= e!3935726 (and tp!1797195 tp!1797197))))

(declare-fun b!6494627 () Bool)

(declare-fun res!2667309 () Bool)

(assert (=> b!6494627 (=> res!2667309 e!3935730)))

(assert (=> b!6494627 (= res!2667309 (not (= lt!2390418 r!7292)))))

(declare-fun b!6494628 () Bool)

(declare-fun res!2667316 () Bool)

(assert (=> b!6494628 (=> res!2667316 e!3935718)))

(assert (=> b!6494628 (= res!2667316 (not (matchR!8554 lt!2390398 (_1!36653 lt!2390391))))))

(declare-fun bm!562435 () Bool)

(declare-fun lt!2390425 () List!65412)

(assert (=> bm!562435 (= call!562438 (matchZipper!2383 (ite c!1190420 lt!2390431 lt!2390393) (ite c!1190420 s!2326 lt!2390425)))))

(declare-fun b!6494629 () Bool)

(declare-fun tp!1797204 () Bool)

(assert (=> b!6494629 (= e!3935726 tp!1797204)))

(declare-fun lt!2390435 () List!65414)

(declare-fun bm!562436 () Bool)

(declare-fun theoremZipperRegexEquiv!837 ((InoxSet Context!11510) List!65414 Regex!16371 List!65412) Unit!158817)

(assert (=> bm!562436 (= call!562441 (theoremZipperRegexEquiv!837 (ite c!1190420 lt!2390431 lt!2390393) (ite c!1190420 (Cons!65290 lt!2390442 Nil!65290) lt!2390435) (ite c!1190420 lt!2390402 lt!2390412) (ite c!1190420 s!2326 lt!2390425)))))

(declare-fun b!6494630 () Bool)

(declare-fun res!2667323 () Bool)

(assert (=> b!6494630 (=> res!2667323 e!3935721)))

(declare-fun isEmpty!37486 (List!65414) Bool)

(assert (=> b!6494630 (= res!2667323 (not (isEmpty!37486 (t!379044 zl!343))))))

(declare-fun tp!1797199 () Bool)

(declare-fun setNonEmpty!44245 () Bool)

(declare-fun setElem!44245 () Context!11510)

(assert (=> setNonEmpty!44245 (= setRes!44245 (and tp!1797199 (inv!84174 setElem!44245) e!3935717))))

(declare-fun setRest!44245 () (InoxSet Context!11510))

(assert (=> setNonEmpty!44245 (= z!1189 ((_ map or) (store ((as const (Array Context!11510 Bool)) false) setElem!44245 true) setRest!44245))))

(declare-fun b!6494631 () Bool)

(declare-fun tp!1797201 () Bool)

(declare-fun tp!1797196 () Bool)

(assert (=> b!6494631 (= e!3935726 (and tp!1797201 tp!1797196))))

(declare-fun b!6494632 () Bool)

(assert (=> b!6494632 (= e!3935712 (nullable!6364 (regOne!33254 (regOne!33254 r!7292))))))

(declare-fun b!6494633 () Bool)

(declare-fun res!2667331 () Bool)

(assert (=> b!6494633 (=> res!2667331 e!3935721)))

(declare-fun generalisedUnion!2215 (List!65413) Regex!16371)

(declare-fun unfocusZipperList!1792 (List!65414) List!65413)

(assert (=> b!6494633 (= res!2667331 (not (= r!7292 (generalisedUnion!2215 (unfocusZipperList!1792 zl!343)))))))

(declare-fun b!6494634 () Bool)

(assert (=> b!6494634 (= e!3935706 e!3935729)))

(declare-fun res!2667328 () Bool)

(assert (=> b!6494634 (=> res!2667328 e!3935729)))

(assert (=> b!6494634 (= res!2667328 (not (= (unfocusZipper!2113 lt!2390435) lt!2390412)))))

(assert (=> b!6494634 (= lt!2390435 (Cons!65290 lt!2390429 Nil!65290))))

(declare-fun Unit!158822 () Unit!158817)

(assert (=> b!6494635 (= e!3935724 Unit!158822)))

(declare-fun lt!2390445 () Unit!158817)

(assert (=> b!6494635 (= lt!2390445 (mainMatchTheorem!3472 lt!2390398 (_1!36653 lt!2390391)))))

(assert (=> b!6494635 (matchRSpec!3472 lt!2390398 (_1!36653 lt!2390391))))

(declare-fun lt!2390390 () Unit!158817)

(assert (=> b!6494635 (= lt!2390390 (lemmaFindConcatSeparationEquivalentToExists!2440 (reg!16700 (regOne!33254 r!7292)) lt!2390398 (_1!36653 lt!2390391)))))

(declare-fun lt!2390411 () Option!16262)

(assert (=> b!6494635 (= lt!2390411 (findConcatSeparation!2676 (reg!16700 (regOne!33254 r!7292)) lt!2390398 Nil!65288 (_1!36653 lt!2390391) (_1!36653 lt!2390391)))))

(assert (=> b!6494635 (= (isDefined!12965 lt!2390411) (Exists!3441 lambda!359767))))

(declare-fun lt!2390439 () Unit!158817)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!662 (Regex!16371 List!65412) Unit!158817)

(assert (=> b!6494635 (= lt!2390439 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!662 (reg!16700 (regOne!33254 r!7292)) (_1!36653 lt!2390391)))))

(assert (=> b!6494635 (= (Exists!3441 lambda!359767) (Exists!3441 lambda!359768))))

(declare-fun lt!2390422 () Unit!158817)

(assert (=> b!6494635 (= lt!2390422 (lemmaExistCutMatchRandMatchRSpecEquivalent!1978 (reg!16700 (regOne!33254 r!7292)) lt!2390398 (_1!36653 lt!2390391)))))

(assert (=> b!6494635 (= (Exists!3441 lambda!359767) (Exists!3441 lambda!359769))))

(declare-fun lt!2390407 () tuple2!66700)

(assert (=> b!6494635 (= lt!2390407 (get!22640 lt!2390411))))

(declare-fun lt!2390444 () Unit!158817)

(declare-fun lemmaConcatAssociativity!2942 (List!65412 List!65412 List!65412) Unit!158817)

(assert (=> b!6494635 (= lt!2390444 (lemmaConcatAssociativity!2942 (_1!36653 lt!2390407) (_2!36653 lt!2390407) (_2!36653 lt!2390391)))))

(assert (=> b!6494635 (= lt!2390395 (++!14452 (_1!36653 lt!2390407) (_2!36653 lt!2390407)))))

(assert (=> b!6494635 (= lt!2390425 (++!14452 (_2!36653 lt!2390407) (_2!36653 lt!2390391)))))

(declare-fun lt!2390427 () List!65412)

(assert (=> b!6494635 (= lt!2390427 (++!14452 lt!2390395 (_2!36653 lt!2390391)))))

(declare-fun lt!2390409 () List!65412)

(assert (=> b!6494635 (= lt!2390409 (++!14452 (_1!36653 lt!2390407) lt!2390425))))

(assert (=> b!6494635 (= lt!2390427 lt!2390409)))

(declare-fun lt!2390401 () Unit!158817)

(declare-fun lemmaStarApp!148 (Regex!16371 List!65412 List!65412) Unit!158817)

(assert (=> b!6494635 (= lt!2390401 (lemmaStarApp!148 (reg!16700 (regOne!33254 r!7292)) (_1!36653 lt!2390407) (_2!36653 lt!2390407)))))

(assert (=> b!6494635 call!562440))

(declare-fun lt!2390437 () Unit!158817)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!334 (Regex!16371 Regex!16371 List!65412 List!65412) Unit!158817)

(assert (=> b!6494635 (= lt!2390437 (lemmaTwoRegexMatchThenConcatMatchesConcatString!334 lt!2390398 (regTwo!33254 r!7292) (_2!36653 lt!2390407) (_2!36653 lt!2390391)))))

(assert (=> b!6494635 (matchR!8554 lt!2390412 lt!2390425)))

(declare-fun lt!2390449 () Unit!158817)

(assert (=> b!6494635 (= lt!2390449 (theoremZipperRegexEquiv!837 lt!2390424 lt!2390394 (reg!16700 (regOne!33254 r!7292)) (_1!36653 lt!2390407)))))

(assert (=> b!6494635 (= (matchR!8554 (reg!16700 (regOne!33254 r!7292)) (_1!36653 lt!2390407)) (matchZipper!2383 lt!2390424 (_1!36653 lt!2390407)))))

(declare-fun lt!2390441 () Unit!158817)

(assert (=> b!6494635 (= lt!2390441 call!562441)))

(assert (=> b!6494635 call!562438))

(declare-fun lt!2390405 () Unit!158817)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!172 (Context!11510 Context!11510 List!65412 List!65412) Unit!158817)

(assert (=> b!6494635 (= lt!2390405 (lemmaConcatenateContextMatchesConcatOfStrings!172 lt!2390413 lt!2390429 (_1!36653 lt!2390407) lt!2390425))))

(declare-fun lt!2390408 () Unit!158817)

(declare-fun lambda!359770 () Int)

(declare-fun lemmaConcatPreservesForall!350 (List!65413 List!65413 Int) Unit!158817)

(assert (=> b!6494635 (= lt!2390408 (lemmaConcatPreservesForall!350 lt!2390446 lt!2390396 lambda!359770))))

(declare-fun ++!14453 (List!65413 List!65413) List!65413)

(assert (=> b!6494635 (matchZipper!2383 (store ((as const (Array Context!11510 Bool)) false) (Context!11511 (++!14453 lt!2390446 lt!2390396)) true) lt!2390409)))

(declare-fun lt!2390406 () Unit!158817)

(assert (=> b!6494635 (= lt!2390406 (lemmaTwoRegexMatchThenConcatMatchesConcatString!334 (reg!16700 (regOne!33254 r!7292)) lt!2390412 (_1!36653 lt!2390407) lt!2390425))))

(declare-fun res!2667315 () Bool)

(assert (=> b!6494635 (= res!2667315 (matchR!8554 lt!2390403 lt!2390409))))

(assert (=> b!6494635 (=> (not res!2667315) (not e!3935715))))

(assert (=> b!6494635 e!3935715))

(declare-fun lt!2390430 () Unit!158817)

(assert (=> b!6494635 (= lt!2390430 (lemmaConcatPreservesForall!350 lt!2390446 lt!2390396 lambda!359770))))

(assert (=> b!6494635 call!562439))

(declare-fun b!6494636 () Bool)

(assert (=> b!6494636 (= e!3935719 (or (not lt!2390416) lt!2390432))))

(declare-fun b!6494637 () Bool)

(declare-fun res!2667314 () Bool)

(assert (=> b!6494637 (=> res!2667314 e!3935718)))

(assert (=> b!6494637 (= res!2667314 (not (matchR!8554 (regTwo!33254 r!7292) (_2!36653 lt!2390391))))))

(assert (=> b!6494638 (= e!3935721 e!3935709)))

(declare-fun res!2667317 () Bool)

(assert (=> b!6494638 (=> res!2667317 e!3935709)))

(declare-fun lt!2390420 () Bool)

(assert (=> b!6494638 (= res!2667317 (or (not (= lt!2390416 lt!2390420)) ((_ is Nil!65288) s!2326)))))

(assert (=> b!6494638 (= (Exists!3441 lambda!359762) (Exists!3441 lambda!359763))))

(declare-fun lt!2390421 () Unit!158817)

(assert (=> b!6494638 (= lt!2390421 (lemmaExistCutMatchRandMatchRSpecEquivalent!1978 (regOne!33254 r!7292) (regTwo!33254 r!7292) s!2326))))

(assert (=> b!6494638 (= lt!2390420 (Exists!3441 lambda!359762))))

(assert (=> b!6494638 (= lt!2390420 (isDefined!12965 (findConcatSeparation!2676 (regOne!33254 r!7292) (regTwo!33254 r!7292) Nil!65288 s!2326 s!2326)))))

(declare-fun lt!2390410 () Unit!158817)

(assert (=> b!6494638 (= lt!2390410 (lemmaFindConcatSeparationEquivalentToExists!2440 (regOne!33254 r!7292) (regTwo!33254 r!7292) s!2326))))

(declare-fun b!6494639 () Bool)

(assert (=> b!6494639 (= e!3935728 e!3935730)))

(declare-fun res!2667310 () Bool)

(assert (=> b!6494639 (=> res!2667310 e!3935730)))

(assert (=> b!6494639 (= res!2667310 (not (= lt!2390447 lt!2390426)))))

(assert (=> b!6494639 (= (flatMap!1876 lt!2390414 lambda!359764) (derivationStepZipperUp!1545 lt!2390388 (h!71736 s!2326)))))

(declare-fun lt!2390415 () Unit!158817)

(assert (=> b!6494639 (= lt!2390415 (lemmaFlatMapOnSingletonSet!1402 lt!2390414 lt!2390388 lambda!359764))))

(declare-fun lt!2390397 () (InoxSet Context!11510))

(assert (=> b!6494639 (= lt!2390397 (derivationStepZipperUp!1545 lt!2390388 (h!71736 s!2326)))))

(declare-fun derivationStepZipper!2337 ((InoxSet Context!11510) C!33012) (InoxSet Context!11510))

(assert (=> b!6494639 (= lt!2390447 (derivationStepZipper!2337 lt!2390414 (h!71736 s!2326)))))

(assert (=> b!6494639 (= lt!2390414 (store ((as const (Array Context!11510 Bool)) false) lt!2390388 true))))

(assert (=> b!6494639 (= lt!2390388 (Context!11511 (Cons!65289 (reg!16700 (regOne!33254 r!7292)) lt!2390396)))))

(assert (= (and start!638170 res!2667322) b!6494598))

(assert (= (and b!6494598 res!2667320) b!6494604))

(assert (= (and b!6494604 res!2667329) b!6494615))

(assert (= (and b!6494615 (not res!2667321)) b!6494630))

(assert (= (and b!6494630 (not res!2667323)) b!6494599))

(assert (= (and b!6494599 (not res!2667312)) b!6494614))

(assert (= (and b!6494614 (not res!2667338)) b!6494633))

(assert (= (and b!6494633 (not res!2667331)) b!6494608))

(assert (= (and b!6494608 (not res!2667330)) b!6494638))

(assert (= (and b!6494638 (not res!2667317)) b!6494597))

(assert (= (and b!6494597 (not res!2667332)) b!6494613))

(assert (= (and b!6494613 c!1190419) b!6494624))

(assert (= (and b!6494613 (not c!1190419)) b!6494612))

(assert (= (and b!6494624 (not res!2667318)) b!6494618))

(assert (= (and b!6494613 (not res!2667334)) b!6494619))

(assert (= (and b!6494619 res!2667311) b!6494632))

(assert (= (and b!6494619 (not res!2667327)) b!6494616))

(assert (= (and b!6494616 (not res!2667335)) b!6494611))

(assert (= (and b!6494611 (not res!2667319)) b!6494639))

(assert (= (and b!6494639 (not res!2667310)) b!6494617))

(assert (= (and b!6494617 (not res!2667337)) b!6494627))

(assert (= (and b!6494627 (not res!2667309)) b!6494605))

(assert (= (and b!6494605 (not res!2667333)) b!6494623))

(assert (= (and b!6494623 (not res!2667313)) b!6494620))

(assert (= (and b!6494620 (not res!2667324)) b!6494634))

(assert (= (and b!6494634 (not res!2667328)) b!6494607))

(assert (= (and b!6494607 res!2667308) b!6494636))

(assert (= (and b!6494607 (not res!2667336)) b!6494603))

(assert (= (and b!6494603 (not res!2667325)) b!6494628))

(assert (= (and b!6494628 (not res!2667316)) b!6494637))

(assert (= (and b!6494637 (not res!2667314)) b!6494610))

(assert (= (and b!6494610 c!1190420) b!6494622))

(assert (= (and b!6494610 (not c!1190420)) b!6494635))

(assert (= (and b!6494622 res!2667326) b!6494625))

(assert (= (and b!6494635 res!2667315) b!6494602))

(assert (= (or b!6494622 b!6494635) bm!562433))

(assert (= (or b!6494622 b!6494635) bm!562436))

(assert (= (or b!6494625 b!6494635) bm!562434))

(assert (= (or b!6494622 b!6494635) bm!562435))

(assert (= (and start!638170 ((_ is ElementMatch!16371) r!7292)) b!6494600))

(assert (= (and start!638170 ((_ is Concat!25216) r!7292)) b!6494631))

(assert (= (and start!638170 ((_ is Star!16371) r!7292)) b!6494629))

(assert (= (and start!638170 ((_ is Union!16371) r!7292)) b!6494626))

(assert (= (and start!638170 condSetEmpty!44245) setIsEmpty!44245))

(assert (= (and start!638170 (not condSetEmpty!44245)) setNonEmpty!44245))

(assert (= setNonEmpty!44245 b!6494606))

(assert (= b!6494609 b!6494621))

(assert (= (and start!638170 ((_ is Cons!65290) zl!343)) b!6494609))

(assert (= (and start!638170 ((_ is Cons!65288) s!2326)) b!6494601))

(declare-fun m!7283294 () Bool)

(assert (=> setNonEmpty!44245 m!7283294))

(declare-fun m!7283296 () Bool)

(assert (=> bm!562436 m!7283296))

(declare-fun m!7283298 () Bool)

(assert (=> bm!562434 m!7283298))

(declare-fun m!7283300 () Bool)

(assert (=> b!6494632 m!7283300))

(declare-fun m!7283302 () Bool)

(assert (=> b!6494624 m!7283302))

(declare-fun m!7283304 () Bool)

(assert (=> b!6494624 m!7283304))

(declare-fun m!7283306 () Bool)

(assert (=> b!6494624 m!7283306))

(declare-fun m!7283308 () Bool)

(assert (=> b!6494630 m!7283308))

(declare-fun m!7283310 () Bool)

(assert (=> start!638170 m!7283310))

(declare-fun m!7283312 () Bool)

(assert (=> bm!562435 m!7283312))

(declare-fun m!7283314 () Bool)

(assert (=> b!6494620 m!7283314))

(declare-fun m!7283316 () Bool)

(assert (=> b!6494620 m!7283316))

(declare-fun m!7283318 () Bool)

(assert (=> b!6494620 m!7283318))

(declare-fun m!7283320 () Bool)

(assert (=> b!6494620 m!7283320))

(declare-fun m!7283322 () Bool)

(assert (=> b!6494620 m!7283322))

(declare-fun m!7283324 () Bool)

(assert (=> b!6494620 m!7283324))

(declare-fun m!7283326 () Bool)

(assert (=> b!6494620 m!7283326))

(declare-fun m!7283328 () Bool)

(assert (=> b!6494620 m!7283328))

(declare-fun m!7283330 () Bool)

(assert (=> b!6494620 m!7283330))

(declare-fun m!7283332 () Bool)

(assert (=> b!6494637 m!7283332))

(assert (=> b!6494610 m!7283298))

(declare-fun m!7283334 () Bool)

(assert (=> b!6494610 m!7283334))

(declare-fun m!7283336 () Bool)

(assert (=> b!6494638 m!7283336))

(declare-fun m!7283338 () Bool)

(assert (=> b!6494638 m!7283338))

(declare-fun m!7283340 () Bool)

(assert (=> b!6494638 m!7283340))

(declare-fun m!7283342 () Bool)

(assert (=> b!6494638 m!7283342))

(declare-fun m!7283344 () Bool)

(assert (=> b!6494638 m!7283344))

(assert (=> b!6494638 m!7283338))

(assert (=> b!6494638 m!7283340))

(declare-fun m!7283346 () Bool)

(assert (=> b!6494638 m!7283346))

(declare-fun m!7283348 () Bool)

(assert (=> b!6494634 m!7283348))

(declare-fun m!7283350 () Bool)

(assert (=> b!6494639 m!7283350))

(declare-fun m!7283352 () Bool)

(assert (=> b!6494639 m!7283352))

(declare-fun m!7283354 () Bool)

(assert (=> b!6494639 m!7283354))

(declare-fun m!7283356 () Bool)

(assert (=> b!6494639 m!7283356))

(declare-fun m!7283358 () Bool)

(assert (=> b!6494639 m!7283358))

(declare-fun m!7283360 () Bool)

(assert (=> b!6494603 m!7283360))

(declare-fun m!7283362 () Bool)

(assert (=> b!6494603 m!7283362))

(assert (=> b!6494603 m!7283360))

(declare-fun m!7283364 () Bool)

(assert (=> b!6494603 m!7283364))

(declare-fun m!7283366 () Bool)

(assert (=> b!6494603 m!7283366))

(declare-fun m!7283368 () Bool)

(assert (=> b!6494603 m!7283368))

(declare-fun m!7283370 () Bool)

(assert (=> b!6494603 m!7283370))

(declare-fun m!7283372 () Bool)

(assert (=> b!6494603 m!7283372))

(declare-fun m!7283374 () Bool)

(assert (=> b!6494603 m!7283374))

(declare-fun m!7283376 () Bool)

(assert (=> b!6494633 m!7283376))

(assert (=> b!6494633 m!7283376))

(declare-fun m!7283378 () Bool)

(assert (=> b!6494633 m!7283378))

(declare-fun m!7283380 () Bool)

(assert (=> b!6494618 m!7283380))

(declare-fun m!7283382 () Bool)

(assert (=> b!6494597 m!7283382))

(declare-fun m!7283384 () Bool)

(assert (=> b!6494599 m!7283384))

(declare-fun m!7283386 () Bool)

(assert (=> b!6494622 m!7283386))

(declare-fun m!7283388 () Bool)

(assert (=> b!6494622 m!7283388))

(declare-fun m!7283390 () Bool)

(assert (=> b!6494622 m!7283390))

(declare-fun m!7283392 () Bool)

(assert (=> b!6494622 m!7283392))

(declare-fun m!7283394 () Bool)

(assert (=> b!6494622 m!7283394))

(declare-fun m!7283396 () Bool)

(assert (=> b!6494617 m!7283396))

(declare-fun m!7283398 () Bool)

(assert (=> b!6494617 m!7283398))

(declare-fun m!7283400 () Bool)

(assert (=> b!6494615 m!7283400))

(declare-fun m!7283402 () Bool)

(assert (=> b!6494615 m!7283402))

(declare-fun m!7283404 () Bool)

(assert (=> b!6494615 m!7283404))

(declare-fun m!7283406 () Bool)

(assert (=> b!6494604 m!7283406))

(declare-fun m!7283408 () Bool)

(assert (=> b!6494598 m!7283408))

(declare-fun m!7283410 () Bool)

(assert (=> b!6494609 m!7283410))

(declare-fun m!7283412 () Bool)

(assert (=> b!6494613 m!7283412))

(declare-fun m!7283414 () Bool)

(assert (=> b!6494613 m!7283414))

(declare-fun m!7283416 () Bool)

(assert (=> b!6494613 m!7283416))

(assert (=> b!6494613 m!7283388))

(declare-fun m!7283418 () Bool)

(assert (=> b!6494613 m!7283418))

(declare-fun m!7283420 () Bool)

(assert (=> b!6494613 m!7283420))

(declare-fun m!7283422 () Bool)

(assert (=> b!6494613 m!7283422))

(declare-fun m!7283424 () Bool)

(assert (=> bm!562433 m!7283424))

(declare-fun m!7283426 () Bool)

(assert (=> b!6494623 m!7283426))

(declare-fun m!7283428 () Bool)

(assert (=> b!6494607 m!7283428))

(declare-fun m!7283430 () Bool)

(assert (=> b!6494607 m!7283430))

(declare-fun m!7283432 () Bool)

(assert (=> b!6494607 m!7283432))

(declare-fun m!7283434 () Bool)

(assert (=> b!6494611 m!7283434))

(declare-fun m!7283436 () Bool)

(assert (=> b!6494635 m!7283436))

(declare-fun m!7283438 () Bool)

(assert (=> b!6494635 m!7283438))

(declare-fun m!7283440 () Bool)

(assert (=> b!6494635 m!7283440))

(declare-fun m!7283442 () Bool)

(assert (=> b!6494635 m!7283442))

(declare-fun m!7283444 () Bool)

(assert (=> b!6494635 m!7283444))

(declare-fun m!7283446 () Bool)

(assert (=> b!6494635 m!7283446))

(declare-fun m!7283448 () Bool)

(assert (=> b!6494635 m!7283448))

(declare-fun m!7283450 () Bool)

(assert (=> b!6494635 m!7283450))

(declare-fun m!7283452 () Bool)

(assert (=> b!6494635 m!7283452))

(declare-fun m!7283454 () Bool)

(assert (=> b!6494635 m!7283454))

(declare-fun m!7283456 () Bool)

(assert (=> b!6494635 m!7283456))

(declare-fun m!7283458 () Bool)

(assert (=> b!6494635 m!7283458))

(declare-fun m!7283460 () Bool)

(assert (=> b!6494635 m!7283460))

(declare-fun m!7283462 () Bool)

(assert (=> b!6494635 m!7283462))

(declare-fun m!7283464 () Bool)

(assert (=> b!6494635 m!7283464))

(declare-fun m!7283466 () Bool)

(assert (=> b!6494635 m!7283466))

(assert (=> b!6494635 m!7283452))

(declare-fun m!7283468 () Bool)

(assert (=> b!6494635 m!7283468))

(declare-fun m!7283470 () Bool)

(assert (=> b!6494635 m!7283470))

(declare-fun m!7283472 () Bool)

(assert (=> b!6494635 m!7283472))

(declare-fun m!7283474 () Bool)

(assert (=> b!6494635 m!7283474))

(declare-fun m!7283476 () Bool)

(assert (=> b!6494635 m!7283476))

(declare-fun m!7283478 () Bool)

(assert (=> b!6494635 m!7283478))

(declare-fun m!7283480 () Bool)

(assert (=> b!6494635 m!7283480))

(assert (=> b!6494635 m!7283478))

(declare-fun m!7283482 () Bool)

(assert (=> b!6494635 m!7283482))

(declare-fun m!7283484 () Bool)

(assert (=> b!6494635 m!7283484))

(declare-fun m!7283486 () Bool)

(assert (=> b!6494635 m!7283486))

(declare-fun m!7283488 () Bool)

(assert (=> b!6494635 m!7283488))

(declare-fun m!7283490 () Bool)

(assert (=> b!6494635 m!7283490))

(assert (=> b!6494635 m!7283456))

(declare-fun m!7283492 () Bool)

(assert (=> b!6494635 m!7283492))

(assert (=> b!6494635 m!7283456))

(declare-fun m!7283494 () Bool)

(assert (=> b!6494628 m!7283494))

(check-sat (not b!6494626) (not b!6494635) (not b!6494615) (not start!638170) (not b!6494634) (not b!6494637) (not bm!562436) (not setNonEmpty!44245) (not b!6494603) (not b!6494598) (not b!6494601) (not b!6494633) (not b!6494610) (not b!6494631) (not b!6494606) (not b!6494624) (not b!6494609) (not b!6494639) (not b!6494628) (not b!6494630) (not b!6494632) (not bm!562435) (not b!6494613) (not b!6494621) (not b!6494617) (not b!6494629) (not b!6494622) (not b!6494597) (not b!6494623) (not b!6494611) (not b!6494604) (not b!6494618) (not bm!562434) (not b!6494599) tp_is_empty!41995 (not b!6494620) (not b!6494607) (not bm!562433) (not b!6494638))
(check-sat)
