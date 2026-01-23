; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562722 () Bool)

(assert start!562722)

(declare-fun b!5341027 () Bool)

(assert (=> b!5341027 true))

(assert (=> b!5341027 true))

(declare-fun lambda!273754 () Int)

(declare-fun lambda!273753 () Int)

(assert (=> b!5341027 (not (= lambda!273754 lambda!273753))))

(assert (=> b!5341027 true))

(assert (=> b!5341027 true))

(declare-fun b!5341011 () Bool)

(assert (=> b!5341011 true))

(declare-fun bs!1238576 () Bool)

(declare-fun b!5341016 () Bool)

(assert (= bs!1238576 (and b!5341016 b!5341027)))

(declare-datatypes ((C!30304 0))(
  ( (C!30305 (val!24854 Int)) )
))
(declare-datatypes ((Regex!15017 0))(
  ( (ElementMatch!15017 (c!929417 C!30304)) (Concat!23862 (regOne!30546 Regex!15017) (regTwo!30546 Regex!15017)) (EmptyExpr!15017) (Star!15017 (reg!15346 Regex!15017)) (EmptyLang!15017) (Union!15017 (regOne!30547 Regex!15017) (regTwo!30547 Regex!15017)) )
))
(declare-fun r!7292 () Regex!15017)

(declare-fun lambda!273756 () Int)

(declare-fun lt!2177703 () Regex!15017)

(assert (=> bs!1238576 (= (and (= (regOne!30546 (regOne!30546 r!7292)) (regOne!30546 r!7292)) (= lt!2177703 (regTwo!30546 r!7292))) (= lambda!273756 lambda!273753))))

(assert (=> bs!1238576 (not (= lambda!273756 lambda!273754))))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(declare-fun lambda!273757 () Int)

(assert (=> bs!1238576 (not (= lambda!273757 lambda!273753))))

(assert (=> bs!1238576 (= (and (= (regOne!30546 (regOne!30546 r!7292)) (regOne!30546 r!7292)) (= lt!2177703 (regTwo!30546 r!7292))) (= lambda!273757 lambda!273754))))

(assert (=> b!5341016 (not (= lambda!273757 lambda!273756))))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(declare-fun lambda!273758 () Int)

(declare-fun lt!2177676 () Regex!15017)

(assert (=> bs!1238576 (= (and (= (regTwo!30546 (regOne!30546 r!7292)) (regOne!30546 r!7292)) (= lt!2177676 (regTwo!30546 r!7292))) (= lambda!273758 lambda!273753))))

(assert (=> bs!1238576 (not (= lambda!273758 lambda!273754))))

(assert (=> b!5341016 (= (and (= (regTwo!30546 (regOne!30546 r!7292)) (regOne!30546 (regOne!30546 r!7292))) (= lt!2177676 lt!2177703)) (= lambda!273758 lambda!273756))))

(assert (=> b!5341016 (not (= lambda!273758 lambda!273757))))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(declare-fun lambda!273759 () Int)

(assert (=> b!5341016 (not (= lambda!273759 lambda!273758))))

(assert (=> bs!1238576 (= (and (= (regTwo!30546 (regOne!30546 r!7292)) (regOne!30546 r!7292)) (= lt!2177676 (regTwo!30546 r!7292))) (= lambda!273759 lambda!273754))))

(assert (=> b!5341016 (not (= lambda!273759 lambda!273756))))

(assert (=> b!5341016 (= (and (= (regTwo!30546 (regOne!30546 r!7292)) (regOne!30546 (regOne!30546 r!7292))) (= lt!2177676 lt!2177703)) (= lambda!273759 lambda!273757))))

(assert (=> bs!1238576 (not (= lambda!273759 lambda!273753))))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(assert (=> b!5341016 true))

(declare-fun b!5340993 () Bool)

(declare-fun res!2265586 () Bool)

(declare-fun e!3316478 () Bool)

(assert (=> b!5340993 (=> res!2265586 e!3316478)))

(get-info :version)

(assert (=> b!5340993 (= res!2265586 (not ((_ is Concat!23862) (regOne!30546 r!7292))))))

(declare-fun b!5340994 () Bool)

(declare-fun e!3316474 () Bool)

(declare-fun tp!1485045 () Bool)

(declare-fun tp!1485037 () Bool)

(assert (=> b!5340994 (= e!3316474 (and tp!1485045 tp!1485037))))

(declare-fun b!5340995 () Bool)

(declare-fun e!3316489 () Bool)

(declare-fun e!3316476 () Bool)

(assert (=> b!5340995 (= e!3316489 e!3316476)))

(declare-fun res!2265573 () Bool)

(assert (=> b!5340995 (=> res!2265573 e!3316476)))

(declare-datatypes ((List!61350 0))(
  ( (Nil!61226) (Cons!61226 (h!67674 Regex!15017) (t!374567 List!61350)) )
))
(declare-datatypes ((Context!8802 0))(
  ( (Context!8803 (exprs!4901 List!61350)) )
))
(declare-datatypes ((List!61351 0))(
  ( (Nil!61227) (Cons!61227 (h!67675 Context!8802) (t!374568 List!61351)) )
))
(declare-fun lt!2177692 () List!61351)

(declare-fun zl!343 () List!61351)

(declare-fun zipperDepthTotal!170 (List!61351) Int)

(assert (=> b!5340995 (= res!2265573 (>= (zipperDepthTotal!170 lt!2177692) (zipperDepthTotal!170 zl!343)))))

(declare-fun lt!2177700 () Context!8802)

(assert (=> b!5340995 (= lt!2177692 (Cons!61227 lt!2177700 Nil!61227))))

(declare-fun e!3316486 () Bool)

(declare-fun b!5340996 () Bool)

(declare-fun e!3316479 () Bool)

(declare-fun tp!1485043 () Bool)

(declare-fun inv!80789 (Context!8802) Bool)

(assert (=> b!5340996 (= e!3316479 (and (inv!80789 (h!67675 zl!343)) e!3316486 tp!1485043))))

(declare-fun b!5340997 () Bool)

(declare-fun res!2265589 () Bool)

(assert (=> b!5340997 (=> res!2265589 e!3316489)))

(declare-datatypes ((List!61352 0))(
  ( (Nil!61228) (Cons!61228 (h!67676 C!30304) (t!374569 List!61352)) )
))
(declare-fun s!2326 () List!61352)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2177701 () (InoxSet Context!8802))

(declare-fun lt!2177675 () Bool)

(declare-fun matchZipper!1261 ((InoxSet Context!8802) List!61352) Bool)

(assert (=> b!5340997 (= res!2265589 (not (= lt!2177675 (matchZipper!1261 lt!2177701 (t!374569 s!2326)))))))

(declare-fun b!5340998 () Bool)

(declare-datatypes ((Unit!153586 0))(
  ( (Unit!153587) )
))
(declare-fun e!3316481 () Unit!153586)

(declare-fun Unit!153588 () Unit!153586)

(assert (=> b!5340998 (= e!3316481 Unit!153588)))

(declare-fun lt!2177678 () (InoxSet Context!8802))

(declare-fun lt!2177705 () Unit!153586)

(declare-fun lt!2177677 () (InoxSet Context!8802))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!254 ((InoxSet Context!8802) (InoxSet Context!8802) List!61352) Unit!153586)

(assert (=> b!5340998 (= lt!2177705 (lemmaZipperConcatMatchesSameAsBothZippers!254 lt!2177677 lt!2177678 (t!374569 s!2326)))))

(declare-fun res!2265588 () Bool)

(assert (=> b!5340998 (= res!2265588 (matchZipper!1261 lt!2177677 (t!374569 s!2326)))))

(declare-fun e!3316477 () Bool)

(assert (=> b!5340998 (=> res!2265588 e!3316477)))

(assert (=> b!5340998 (= (matchZipper!1261 ((_ map or) lt!2177677 lt!2177678) (t!374569 s!2326)) e!3316477)))

(declare-fun b!5340999 () Bool)

(declare-fun res!2265574 () Bool)

(declare-fun e!3316490 () Bool)

(assert (=> b!5340999 (=> (not res!2265574) (not e!3316490))))

(declare-fun z!1189 () (InoxSet Context!8802))

(declare-fun toList!8801 ((InoxSet Context!8802)) List!61351)

(assert (=> b!5340999 (= res!2265574 (= (toList!8801 z!1189) zl!343))))

(declare-fun b!5341000 () Bool)

(declare-fun Unit!153589 () Unit!153586)

(assert (=> b!5341000 (= e!3316481 Unit!153589)))

(declare-fun b!5341002 () Bool)

(declare-fun e!3316487 () Bool)

(assert (=> b!5341002 (= e!3316487 e!3316489)))

(declare-fun res!2265579 () Bool)

(assert (=> b!5341002 (=> res!2265579 e!3316489)))

(declare-fun lt!2177695 () (InoxSet Context!8802))

(assert (=> b!5341002 (= res!2265579 (not (= lt!2177701 lt!2177695)))))

(declare-fun lt!2177691 () (InoxSet Context!8802))

(declare-fun lambda!273755 () Int)

(declare-fun flatMap!744 ((InoxSet Context!8802) Int) (InoxSet Context!8802))

(declare-fun derivationStepZipperUp!389 (Context!8802 C!30304) (InoxSet Context!8802))

(assert (=> b!5341002 (= (flatMap!744 lt!2177691 lambda!273755) (derivationStepZipperUp!389 lt!2177700 (h!67676 s!2326)))))

(declare-fun lt!2177679 () Unit!153586)

(declare-fun lemmaFlatMapOnSingletonSet!276 ((InoxSet Context!8802) Context!8802 Int) Unit!153586)

(assert (=> b!5341002 (= lt!2177679 (lemmaFlatMapOnSingletonSet!276 lt!2177691 lt!2177700 lambda!273755))))

(declare-fun lt!2177690 () (InoxSet Context!8802))

(assert (=> b!5341002 (= lt!2177690 (derivationStepZipperUp!389 lt!2177700 (h!67676 s!2326)))))

(declare-fun derivationStepZipper!1258 ((InoxSet Context!8802) C!30304) (InoxSet Context!8802))

(assert (=> b!5341002 (= lt!2177701 (derivationStepZipper!1258 lt!2177691 (h!67676 s!2326)))))

(assert (=> b!5341002 (= lt!2177691 (store ((as const (Array Context!8802 Bool)) false) lt!2177700 true))))

(declare-fun lt!2177697 () List!61350)

(assert (=> b!5341002 (= lt!2177700 (Context!8803 lt!2177697))))

(declare-fun lt!2177693 () List!61350)

(assert (=> b!5341002 (= lt!2177697 (Cons!61226 (regOne!30546 (regOne!30546 r!7292)) lt!2177693))))

(declare-fun b!5341003 () Bool)

(declare-fun res!2265565 () Bool)

(declare-fun e!3316480 () Bool)

(assert (=> b!5341003 (=> res!2265565 e!3316480)))

(assert (=> b!5341003 (= res!2265565 (or ((_ is EmptyExpr!15017) r!7292) ((_ is EmptyLang!15017) r!7292) ((_ is ElementMatch!15017) r!7292) ((_ is Union!15017) r!7292) (not ((_ is Concat!23862) r!7292))))))

(declare-fun b!5341004 () Bool)

(declare-fun res!2265568 () Bool)

(assert (=> b!5341004 (=> (not res!2265568) (not e!3316490))))

(declare-fun unfocusZipper!759 (List!61351) Regex!15017)

(assert (=> b!5341004 (= res!2265568 (= r!7292 (unfocusZipper!759 zl!343)))))

(declare-fun b!5341005 () Bool)

(declare-fun tp!1485040 () Bool)

(assert (=> b!5341005 (= e!3316474 tp!1485040)))

(declare-fun b!5341006 () Bool)

(declare-fun tp!1485039 () Bool)

(assert (=> b!5341006 (= e!3316486 tp!1485039)))

(declare-fun b!5341007 () Bool)

(declare-fun res!2265566 () Bool)

(assert (=> b!5341007 (=> res!2265566 e!3316489)))

(declare-fun contextDepthTotal!150 (Context!8802) Int)

(assert (=> b!5341007 (= res!2265566 (>= (contextDepthTotal!150 lt!2177700) (contextDepthTotal!150 (h!67675 zl!343))))))

(declare-fun b!5341008 () Bool)

(assert (=> b!5341008 (= e!3316490 (not e!3316480))))

(declare-fun res!2265582 () Bool)

(assert (=> b!5341008 (=> res!2265582 e!3316480)))

(assert (=> b!5341008 (= res!2265582 (not ((_ is Cons!61227) zl!343)))))

(declare-fun lt!2177699 () Bool)

(declare-fun matchRSpec!2120 (Regex!15017 List!61352) Bool)

(assert (=> b!5341008 (= lt!2177699 (matchRSpec!2120 r!7292 s!2326))))

(declare-fun matchR!7202 (Regex!15017 List!61352) Bool)

(assert (=> b!5341008 (= lt!2177699 (matchR!7202 r!7292 s!2326))))

(declare-fun lt!2177672 () Unit!153586)

(declare-fun mainMatchTheorem!2120 (Regex!15017 List!61352) Unit!153586)

(assert (=> b!5341008 (= lt!2177672 (mainMatchTheorem!2120 r!7292 s!2326))))

(declare-fun b!5341009 () Bool)

(declare-fun res!2265581 () Bool)

(assert (=> b!5341009 (=> res!2265581 e!3316489)))

(assert (=> b!5341009 (= res!2265581 (not (= (exprs!4901 (h!67675 zl!343)) (Cons!61226 (Concat!23862 (regOne!30546 (regOne!30546 r!7292)) (regTwo!30546 (regOne!30546 r!7292))) (t!374567 (exprs!4901 (h!67675 zl!343)))))))))

(declare-fun b!5341010 () Bool)

(assert (=> b!5341010 (= e!3316477 (matchZipper!1261 lt!2177678 (t!374569 s!2326)))))

(declare-fun e!3316483 () Bool)

(assert (=> b!5341011 (= e!3316483 e!3316478)))

(declare-fun res!2265585 () Bool)

(assert (=> b!5341011 (=> res!2265585 e!3316478)))

(assert (=> b!5341011 (= res!2265585 (or (and ((_ is ElementMatch!15017) (regOne!30546 r!7292)) (= (c!929417 (regOne!30546 r!7292)) (h!67676 s!2326))) ((_ is Union!15017) (regOne!30546 r!7292))))))

(declare-fun lt!2177688 () Unit!153586)

(assert (=> b!5341011 (= lt!2177688 e!3316481)))

(declare-fun c!929416 () Bool)

(declare-fun nullable!5186 (Regex!15017) Bool)

(assert (=> b!5341011 (= c!929416 (nullable!5186 (h!67674 (exprs!4901 (h!67675 zl!343)))))))

(assert (=> b!5341011 (= (flatMap!744 z!1189 lambda!273755) (derivationStepZipperUp!389 (h!67675 zl!343) (h!67676 s!2326)))))

(declare-fun lt!2177686 () Unit!153586)

(assert (=> b!5341011 (= lt!2177686 (lemmaFlatMapOnSingletonSet!276 z!1189 (h!67675 zl!343) lambda!273755))))

(declare-fun lt!2177680 () Context!8802)

(assert (=> b!5341011 (= lt!2177678 (derivationStepZipperUp!389 lt!2177680 (h!67676 s!2326)))))

(declare-fun derivationStepZipperDown!465 (Regex!15017 Context!8802 C!30304) (InoxSet Context!8802))

(assert (=> b!5341011 (= lt!2177677 (derivationStepZipperDown!465 (h!67674 (exprs!4901 (h!67675 zl!343))) lt!2177680 (h!67676 s!2326)))))

(assert (=> b!5341011 (= lt!2177680 (Context!8803 (t!374567 (exprs!4901 (h!67675 zl!343)))))))

(declare-fun lt!2177702 () (InoxSet Context!8802))

(assert (=> b!5341011 (= lt!2177702 (derivationStepZipperUp!389 (Context!8803 (Cons!61226 (h!67674 (exprs!4901 (h!67675 zl!343))) (t!374567 (exprs!4901 (h!67675 zl!343))))) (h!67676 s!2326)))))

(declare-fun b!5341012 () Bool)

(declare-fun e!3316485 () Bool)

(assert (=> b!5341012 (= e!3316485 (nullable!5186 (regOne!30546 (regOne!30546 r!7292))))))

(declare-fun b!5341013 () Bool)

(declare-fun e!3316475 () Bool)

(declare-fun validRegex!6753 (Regex!15017) Bool)

(assert (=> b!5341013 (= e!3316475 (validRegex!6753 (Concat!23862 (regOne!30546 r!7292) (regTwo!30546 r!7292))))))

(declare-fun b!5341014 () Bool)

(declare-fun res!2265587 () Bool)

(assert (=> b!5341014 (=> res!2265587 e!3316476)))

(declare-fun zipperDepth!126 (List!61351) Int)

(assert (=> b!5341014 (= res!2265587 (> (zipperDepth!126 lt!2177692) (zipperDepth!126 zl!343)))))

(declare-fun b!5341015 () Bool)

(declare-fun res!2265576 () Bool)

(assert (=> b!5341015 (=> res!2265576 e!3316480)))

(declare-fun generalisedConcat!686 (List!61350) Regex!15017)

(assert (=> b!5341015 (= res!2265576 (not (= r!7292 (generalisedConcat!686 (exprs!4901 (h!67675 zl!343))))))))

(assert (=> b!5341016 (= e!3316476 e!3316475)))

(declare-fun res!2265577 () Bool)

(assert (=> b!5341016 (=> res!2265577 e!3316475)))

(declare-fun lt!2177673 () Bool)

(declare-fun lt!2177674 () Bool)

(declare-fun lt!2177687 () Bool)

(assert (=> b!5341016 (= res!2265577 (or (not (= lt!2177674 lt!2177687)) (not (= lt!2177674 lt!2177673))))))

(assert (=> b!5341016 (= lt!2177674 (matchZipper!1261 z!1189 s!2326))))

(declare-fun Exists!2198 (Int) Bool)

(assert (=> b!5341016 (= (Exists!2198 lambda!273758) (Exists!2198 lambda!273759))))

(declare-fun lt!2177696 () Unit!153586)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!852 (Regex!15017 Regex!15017 List!61352) Unit!153586)

(assert (=> b!5341016 (= lt!2177696 (lemmaExistCutMatchRandMatchRSpecEquivalent!852 (regTwo!30546 (regOne!30546 r!7292)) lt!2177676 s!2326))))

(declare-datatypes ((tuple2!64432 0))(
  ( (tuple2!64433 (_1!35519 List!61352) (_2!35519 List!61352)) )
))
(declare-datatypes ((Option!15128 0))(
  ( (None!15127) (Some!15127 (v!51156 tuple2!64432)) )
))
(declare-fun isDefined!11831 (Option!15128) Bool)

(declare-fun findConcatSeparation!1542 (Regex!15017 Regex!15017 List!61352 List!61352 List!61352) Option!15128)

(assert (=> b!5341016 (= (isDefined!11831 (findConcatSeparation!1542 (regTwo!30546 (regOne!30546 r!7292)) lt!2177676 Nil!61228 s!2326 s!2326)) (Exists!2198 lambda!273758))))

(declare-fun lt!2177682 () Unit!153586)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1306 (Regex!15017 Regex!15017 List!61352) Unit!153586)

(assert (=> b!5341016 (= lt!2177682 (lemmaFindConcatSeparationEquivalentToExists!1306 (regTwo!30546 (regOne!30546 r!7292)) lt!2177676 s!2326))))

(assert (=> b!5341016 (= lt!2177676 (generalisedConcat!686 (t!374567 (exprs!4901 (h!67675 zl!343)))))))

(assert (=> b!5341016 (= (matchR!7202 lt!2177703 s!2326) (matchRSpec!2120 lt!2177703 s!2326))))

(declare-fun lt!2177698 () Unit!153586)

(assert (=> b!5341016 (= lt!2177698 (mainMatchTheorem!2120 lt!2177703 s!2326))))

(assert (=> b!5341016 (= (Exists!2198 lambda!273756) (Exists!2198 lambda!273757))))

(declare-fun lt!2177684 () Unit!153586)

(assert (=> b!5341016 (= lt!2177684 (lemmaExistCutMatchRandMatchRSpecEquivalent!852 (regOne!30546 (regOne!30546 r!7292)) lt!2177703 s!2326))))

(assert (=> b!5341016 (= (isDefined!11831 (findConcatSeparation!1542 (regOne!30546 (regOne!30546 r!7292)) lt!2177703 Nil!61228 s!2326 s!2326)) (Exists!2198 lambda!273756))))

(declare-fun lt!2177694 () Unit!153586)

(assert (=> b!5341016 (= lt!2177694 (lemmaFindConcatSeparationEquivalentToExists!1306 (regOne!30546 (regOne!30546 r!7292)) lt!2177703 s!2326))))

(assert (=> b!5341016 (= lt!2177703 (generalisedConcat!686 lt!2177693))))

(declare-fun lt!2177704 () Regex!15017)

(assert (=> b!5341016 (= lt!2177673 (matchRSpec!2120 lt!2177704 s!2326))))

(declare-fun lt!2177685 () Unit!153586)

(assert (=> b!5341016 (= lt!2177685 (mainMatchTheorem!2120 lt!2177704 s!2326))))

(assert (=> b!5341016 (= lt!2177673 lt!2177687)))

(assert (=> b!5341016 (= lt!2177687 (matchZipper!1261 lt!2177691 s!2326))))

(assert (=> b!5341016 (= lt!2177673 (matchR!7202 lt!2177704 s!2326))))

(declare-fun lt!2177683 () Unit!153586)

(declare-fun theoremZipperRegexEquiv!415 ((InoxSet Context!8802) List!61351 Regex!15017 List!61352) Unit!153586)

(assert (=> b!5341016 (= lt!2177683 (theoremZipperRegexEquiv!415 lt!2177691 lt!2177692 lt!2177704 s!2326))))

(assert (=> b!5341016 (= lt!2177704 (generalisedConcat!686 lt!2177697))))

(declare-fun b!5341017 () Bool)

(declare-fun res!2265570 () Bool)

(assert (=> b!5341017 (=> res!2265570 e!3316483)))

(declare-fun isEmpty!33203 (List!61350) Bool)

(assert (=> b!5341017 (= res!2265570 (isEmpty!33203 (t!374567 (exprs!4901 (h!67675 zl!343)))))))

(declare-fun b!5341018 () Bool)

(declare-fun res!2265575 () Bool)

(assert (=> b!5341018 (=> res!2265575 e!3316478)))

(assert (=> b!5341018 (= res!2265575 e!3316485)))

(declare-fun res!2265567 () Bool)

(assert (=> b!5341018 (=> (not res!2265567) (not e!3316485))))

(assert (=> b!5341018 (= res!2265567 ((_ is Concat!23862) (regOne!30546 r!7292)))))

(declare-fun setIsEmpty!34465 () Bool)

(declare-fun setRes!34465 () Bool)

(assert (=> setIsEmpty!34465 setRes!34465))

(declare-fun b!5341019 () Bool)

(declare-fun res!2265580 () Bool)

(assert (=> b!5341019 (=> res!2265580 e!3316480)))

(assert (=> b!5341019 (= res!2265580 (not ((_ is Cons!61226) (exprs!4901 (h!67675 zl!343)))))))

(declare-fun b!5341020 () Bool)

(declare-fun e!3316484 () Bool)

(assert (=> b!5341020 (= e!3316478 e!3316484)))

(declare-fun res!2265583 () Bool)

(assert (=> b!5341020 (=> res!2265583 e!3316484)))

(assert (=> b!5341020 (= res!2265583 (not (= lt!2177677 lt!2177695)))))

(assert (=> b!5341020 (= lt!2177695 (derivationStepZipperDown!465 (regOne!30546 (regOne!30546 r!7292)) (Context!8803 lt!2177693) (h!67676 s!2326)))))

(assert (=> b!5341020 (= lt!2177693 (Cons!61226 (regTwo!30546 (regOne!30546 r!7292)) (t!374567 (exprs!4901 (h!67675 zl!343)))))))

(declare-fun b!5341001 () Bool)

(declare-fun res!2265571 () Bool)

(assert (=> b!5341001 (=> res!2265571 e!3316480)))

(declare-fun isEmpty!33204 (List!61351) Bool)

(assert (=> b!5341001 (= res!2265571 (not (isEmpty!33204 (t!374568 zl!343))))))

(declare-fun res!2265584 () Bool)

(assert (=> start!562722 (=> (not res!2265584) (not e!3316490))))

(assert (=> start!562722 (= res!2265584 (validRegex!6753 r!7292))))

(assert (=> start!562722 e!3316490))

(assert (=> start!562722 e!3316474))

(declare-fun condSetEmpty!34465 () Bool)

(assert (=> start!562722 (= condSetEmpty!34465 (= z!1189 ((as const (Array Context!8802 Bool)) false)))))

(assert (=> start!562722 setRes!34465))

(assert (=> start!562722 e!3316479))

(declare-fun e!3316488 () Bool)

(assert (=> start!562722 e!3316488))

(declare-fun e!3316482 () Bool)

(declare-fun tp!1485044 () Bool)

(declare-fun setNonEmpty!34465 () Bool)

(declare-fun setElem!34465 () Context!8802)

(assert (=> setNonEmpty!34465 (= setRes!34465 (and tp!1485044 (inv!80789 setElem!34465) e!3316482))))

(declare-fun setRest!34465 () (InoxSet Context!8802))

(assert (=> setNonEmpty!34465 (= z!1189 ((_ map or) (store ((as const (Array Context!8802 Bool)) false) setElem!34465 true) setRest!34465))))

(declare-fun b!5341021 () Bool)

(declare-fun tp_is_empty!39287 () Bool)

(assert (=> b!5341021 (= e!3316474 tp_is_empty!39287)))

(declare-fun b!5341022 () Bool)

(declare-fun res!2265578 () Bool)

(assert (=> b!5341022 (=> res!2265578 e!3316480)))

(declare-fun generalisedUnion!946 (List!61350) Regex!15017)

(declare-fun unfocusZipperList!459 (List!61351) List!61350)

(assert (=> b!5341022 (= res!2265578 (not (= r!7292 (generalisedUnion!946 (unfocusZipperList!459 zl!343)))))))

(declare-fun b!5341023 () Bool)

(declare-fun tp!1485036 () Bool)

(declare-fun tp!1485042 () Bool)

(assert (=> b!5341023 (= e!3316474 (and tp!1485036 tp!1485042))))

(declare-fun b!5341024 () Bool)

(assert (=> b!5341024 (= e!3316484 e!3316487)))

(declare-fun res!2265569 () Bool)

(assert (=> b!5341024 (=> res!2265569 e!3316487)))

(assert (=> b!5341024 (= res!2265569 (not (= lt!2177675 (matchZipper!1261 lt!2177695 (t!374569 s!2326)))))))

(assert (=> b!5341024 (= lt!2177675 (matchZipper!1261 lt!2177677 (t!374569 s!2326)))))

(declare-fun b!5341025 () Bool)

(declare-fun tp!1485041 () Bool)

(assert (=> b!5341025 (= e!3316482 tp!1485041)))

(declare-fun b!5341026 () Bool)

(declare-fun tp!1485038 () Bool)

(assert (=> b!5341026 (= e!3316488 (and tp_is_empty!39287 tp!1485038))))

(assert (=> b!5341027 (= e!3316480 e!3316483)))

(declare-fun res!2265572 () Bool)

(assert (=> b!5341027 (=> res!2265572 e!3316483)))

(declare-fun lt!2177689 () Bool)

(assert (=> b!5341027 (= res!2265572 (or (not (= lt!2177699 lt!2177689)) ((_ is Nil!61228) s!2326)))))

(assert (=> b!5341027 (= (Exists!2198 lambda!273753) (Exists!2198 lambda!273754))))

(declare-fun lt!2177681 () Unit!153586)

(assert (=> b!5341027 (= lt!2177681 (lemmaExistCutMatchRandMatchRSpecEquivalent!852 (regOne!30546 r!7292) (regTwo!30546 r!7292) s!2326))))

(assert (=> b!5341027 (= lt!2177689 (Exists!2198 lambda!273753))))

(assert (=> b!5341027 (= lt!2177689 (isDefined!11831 (findConcatSeparation!1542 (regOne!30546 r!7292) (regTwo!30546 r!7292) Nil!61228 s!2326 s!2326)))))

(declare-fun lt!2177706 () Unit!153586)

(assert (=> b!5341027 (= lt!2177706 (lemmaFindConcatSeparationEquivalentToExists!1306 (regOne!30546 r!7292) (regTwo!30546 r!7292) s!2326))))

(assert (= (and start!562722 res!2265584) b!5340999))

(assert (= (and b!5340999 res!2265574) b!5341004))

(assert (= (and b!5341004 res!2265568) b!5341008))

(assert (= (and b!5341008 (not res!2265582)) b!5341001))

(assert (= (and b!5341001 (not res!2265571)) b!5341015))

(assert (= (and b!5341015 (not res!2265576)) b!5341019))

(assert (= (and b!5341019 (not res!2265580)) b!5341022))

(assert (= (and b!5341022 (not res!2265578)) b!5341003))

(assert (= (and b!5341003 (not res!2265565)) b!5341027))

(assert (= (and b!5341027 (not res!2265572)) b!5341017))

(assert (= (and b!5341017 (not res!2265570)) b!5341011))

(assert (= (and b!5341011 c!929416) b!5340998))

(assert (= (and b!5341011 (not c!929416)) b!5341000))

(assert (= (and b!5340998 (not res!2265588)) b!5341010))

(assert (= (and b!5341011 (not res!2265585)) b!5341018))

(assert (= (and b!5341018 res!2265567) b!5341012))

(assert (= (and b!5341018 (not res!2265575)) b!5340993))

(assert (= (and b!5340993 (not res!2265586)) b!5341020))

(assert (= (and b!5341020 (not res!2265583)) b!5341024))

(assert (= (and b!5341024 (not res!2265569)) b!5341002))

(assert (= (and b!5341002 (not res!2265579)) b!5340997))

(assert (= (and b!5340997 (not res!2265589)) b!5341009))

(assert (= (and b!5341009 (not res!2265581)) b!5341007))

(assert (= (and b!5341007 (not res!2265566)) b!5340995))

(assert (= (and b!5340995 (not res!2265573)) b!5341014))

(assert (= (and b!5341014 (not res!2265587)) b!5341016))

(assert (= (and b!5341016 (not res!2265577)) b!5341013))

(assert (= (and start!562722 ((_ is ElementMatch!15017) r!7292)) b!5341021))

(assert (= (and start!562722 ((_ is Concat!23862) r!7292)) b!5341023))

(assert (= (and start!562722 ((_ is Star!15017) r!7292)) b!5341005))

(assert (= (and start!562722 ((_ is Union!15017) r!7292)) b!5340994))

(assert (= (and start!562722 condSetEmpty!34465) setIsEmpty!34465))

(assert (= (and start!562722 (not condSetEmpty!34465)) setNonEmpty!34465))

(assert (= setNonEmpty!34465 b!5341025))

(assert (= b!5340996 b!5341006))

(assert (= (and start!562722 ((_ is Cons!61227) zl!343)) b!5340996))

(assert (= (and start!562722 ((_ is Cons!61228) s!2326)) b!5341026))

(declare-fun m!6373260 () Bool)

(assert (=> b!5341013 m!6373260))

(declare-fun m!6373262 () Bool)

(assert (=> b!5340998 m!6373262))

(declare-fun m!6373264 () Bool)

(assert (=> b!5340998 m!6373264))

(declare-fun m!6373266 () Bool)

(assert (=> b!5340998 m!6373266))

(declare-fun m!6373268 () Bool)

(assert (=> b!5341015 m!6373268))

(declare-fun m!6373270 () Bool)

(assert (=> b!5341024 m!6373270))

(assert (=> b!5341024 m!6373264))

(declare-fun m!6373272 () Bool)

(assert (=> b!5341022 m!6373272))

(assert (=> b!5341022 m!6373272))

(declare-fun m!6373274 () Bool)

(assert (=> b!5341022 m!6373274))

(declare-fun m!6373276 () Bool)

(assert (=> b!5341007 m!6373276))

(declare-fun m!6373278 () Bool)

(assert (=> b!5341007 m!6373278))

(declare-fun m!6373280 () Bool)

(assert (=> b!5341016 m!6373280))

(declare-fun m!6373282 () Bool)

(assert (=> b!5341016 m!6373282))

(declare-fun m!6373284 () Bool)

(assert (=> b!5341016 m!6373284))

(declare-fun m!6373286 () Bool)

(assert (=> b!5341016 m!6373286))

(declare-fun m!6373288 () Bool)

(assert (=> b!5341016 m!6373288))

(declare-fun m!6373290 () Bool)

(assert (=> b!5341016 m!6373290))

(declare-fun m!6373292 () Bool)

(assert (=> b!5341016 m!6373292))

(declare-fun m!6373294 () Bool)

(assert (=> b!5341016 m!6373294))

(declare-fun m!6373296 () Bool)

(assert (=> b!5341016 m!6373296))

(declare-fun m!6373298 () Bool)

(assert (=> b!5341016 m!6373298))

(declare-fun m!6373300 () Bool)

(assert (=> b!5341016 m!6373300))

(declare-fun m!6373302 () Bool)

(assert (=> b!5341016 m!6373302))

(assert (=> b!5341016 m!6373294))

(declare-fun m!6373304 () Bool)

(assert (=> b!5341016 m!6373304))

(declare-fun m!6373306 () Bool)

(assert (=> b!5341016 m!6373306))

(assert (=> b!5341016 m!6373284))

(declare-fun m!6373308 () Bool)

(assert (=> b!5341016 m!6373308))

(declare-fun m!6373310 () Bool)

(assert (=> b!5341016 m!6373310))

(declare-fun m!6373312 () Bool)

(assert (=> b!5341016 m!6373312))

(declare-fun m!6373314 () Bool)

(assert (=> b!5341016 m!6373314))

(declare-fun m!6373316 () Bool)

(assert (=> b!5341016 m!6373316))

(declare-fun m!6373318 () Bool)

(assert (=> b!5341016 m!6373318))

(assert (=> b!5341016 m!6373288))

(declare-fun m!6373320 () Bool)

(assert (=> b!5341016 m!6373320))

(assert (=> b!5341016 m!6373280))

(declare-fun m!6373322 () Bool)

(assert (=> b!5341016 m!6373322))

(declare-fun m!6373324 () Bool)

(assert (=> b!5341016 m!6373324))

(declare-fun m!6373326 () Bool)

(assert (=> b!5341016 m!6373326))

(declare-fun m!6373328 () Bool)

(assert (=> b!5341004 m!6373328))

(declare-fun m!6373330 () Bool)

(assert (=> b!5341012 m!6373330))

(declare-fun m!6373332 () Bool)

(assert (=> b!5341002 m!6373332))

(declare-fun m!6373334 () Bool)

(assert (=> b!5341002 m!6373334))

(declare-fun m!6373336 () Bool)

(assert (=> b!5341002 m!6373336))

(declare-fun m!6373338 () Bool)

(assert (=> b!5341002 m!6373338))

(declare-fun m!6373340 () Bool)

(assert (=> b!5341002 m!6373340))

(declare-fun m!6373342 () Bool)

(assert (=> b!5340995 m!6373342))

(declare-fun m!6373344 () Bool)

(assert (=> b!5340995 m!6373344))

(declare-fun m!6373346 () Bool)

(assert (=> b!5340996 m!6373346))

(declare-fun m!6373348 () Bool)

(assert (=> b!5340999 m!6373348))

(declare-fun m!6373350 () Bool)

(assert (=> b!5341014 m!6373350))

(declare-fun m!6373352 () Bool)

(assert (=> b!5341014 m!6373352))

(declare-fun m!6373354 () Bool)

(assert (=> b!5341011 m!6373354))

(declare-fun m!6373356 () Bool)

(assert (=> b!5341011 m!6373356))

(declare-fun m!6373358 () Bool)

(assert (=> b!5341011 m!6373358))

(declare-fun m!6373360 () Bool)

(assert (=> b!5341011 m!6373360))

(declare-fun m!6373362 () Bool)

(assert (=> b!5341011 m!6373362))

(declare-fun m!6373364 () Bool)

(assert (=> b!5341011 m!6373364))

(declare-fun m!6373366 () Bool)

(assert (=> b!5341011 m!6373366))

(declare-fun m!6373368 () Bool)

(assert (=> start!562722 m!6373368))

(declare-fun m!6373370 () Bool)

(assert (=> b!5340997 m!6373370))

(declare-fun m!6373372 () Bool)

(assert (=> b!5341008 m!6373372))

(declare-fun m!6373374 () Bool)

(assert (=> b!5341008 m!6373374))

(declare-fun m!6373376 () Bool)

(assert (=> b!5341008 m!6373376))

(declare-fun m!6373378 () Bool)

(assert (=> b!5341017 m!6373378))

(declare-fun m!6373380 () Bool)

(assert (=> b!5341020 m!6373380))

(declare-fun m!6373382 () Bool)

(assert (=> b!5341001 m!6373382))

(declare-fun m!6373384 () Bool)

(assert (=> setNonEmpty!34465 m!6373384))

(declare-fun m!6373386 () Bool)

(assert (=> b!5341010 m!6373386))

(declare-fun m!6373388 () Bool)

(assert (=> b!5341027 m!6373388))

(declare-fun m!6373390 () Bool)

(assert (=> b!5341027 m!6373390))

(declare-fun m!6373392 () Bool)

(assert (=> b!5341027 m!6373392))

(declare-fun m!6373394 () Bool)

(assert (=> b!5341027 m!6373394))

(declare-fun m!6373396 () Bool)

(assert (=> b!5341027 m!6373396))

(assert (=> b!5341027 m!6373392))

(assert (=> b!5341027 m!6373388))

(declare-fun m!6373398 () Bool)

(assert (=> b!5341027 m!6373398))

(check-sat (not b!5340997) (not b!5340996) (not b!5341016) (not b!5341008) (not setNonEmpty!34465) (not b!5341006) (not b!5341025) (not b!5341004) (not b!5341017) (not b!5341024) (not b!5341014) (not b!5340994) (not b!5341005) (not b!5340995) (not b!5341026) (not b!5341013) (not b!5341015) (not b!5341007) (not b!5341010) (not b!5341012) (not b!5341001) (not b!5340998) (not start!562722) (not b!5341011) (not b!5341023) (not b!5340999) (not b!5341027) (not b!5341002) (not b!5341022) (not b!5341020) tp_is_empty!39287)
(check-sat)
