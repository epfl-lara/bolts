; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565106 () Bool)

(assert start!565106)

(declare-fun b!5370594 () Bool)

(assert (=> b!5370594 true))

(assert (=> b!5370594 true))

(declare-fun lambda!277068 () Int)

(declare-fun lambda!277067 () Int)

(assert (=> b!5370594 (not (= lambda!277068 lambda!277067))))

(assert (=> b!5370594 true))

(assert (=> b!5370594 true))

(declare-fun b!5370601 () Bool)

(assert (=> b!5370601 true))

(declare-fun bs!1243762 () Bool)

(declare-fun b!5370616 () Bool)

(assert (= bs!1243762 (and b!5370616 b!5370594)))

(declare-datatypes ((C!30436 0))(
  ( (C!30437 (val!24920 Int)) )
))
(declare-datatypes ((Regex!15083 0))(
  ( (ElementMatch!15083 (c!935793 C!30436)) (Concat!23928 (regOne!30678 Regex!15083) (regTwo!30678 Regex!15083)) (EmptyExpr!15083) (Star!15083 (reg!15412 Regex!15083)) (EmptyLang!15083) (Union!15083 (regOne!30679 Regex!15083) (regTwo!30679 Regex!15083)) )
))
(declare-fun r!7292 () Regex!15083)

(declare-fun lt!2187036 () Regex!15083)

(declare-fun lambda!277070 () Int)

(assert (=> bs!1243762 (= (= lt!2187036 (regOne!30678 r!7292)) (= lambda!277070 lambda!277067))))

(assert (=> bs!1243762 (not (= lambda!277070 lambda!277068))))

(assert (=> b!5370616 true))

(assert (=> b!5370616 true))

(assert (=> b!5370616 true))

(declare-fun lambda!277071 () Int)

(assert (=> bs!1243762 (not (= lambda!277071 lambda!277067))))

(assert (=> bs!1243762 (= (= lt!2187036 (regOne!30678 r!7292)) (= lambda!277071 lambda!277068))))

(assert (=> b!5370616 (not (= lambda!277071 lambda!277070))))

(assert (=> b!5370616 true))

(assert (=> b!5370616 true))

(assert (=> b!5370616 true))

(declare-fun b!5370593 () Bool)

(declare-fun res!2279293 () Bool)

(declare-fun e!3332504 () Bool)

(assert (=> b!5370593 (=> res!2279293 e!3332504)))

(declare-datatypes ((List!61548 0))(
  ( (Nil!61424) (Cons!61424 (h!67872 Regex!15083) (t!374771 List!61548)) )
))
(declare-datatypes ((Context!8934 0))(
  ( (Context!8935 (exprs!4967 List!61548)) )
))
(declare-datatypes ((List!61549 0))(
  ( (Nil!61425) (Cons!61425 (h!67873 Context!8934) (t!374772 List!61549)) )
))
(declare-fun zl!343 () List!61549)

(get-info :version)

(assert (=> b!5370593 (= res!2279293 (not ((_ is Cons!61424) (exprs!4967 (h!67873 zl!343)))))))

(declare-fun e!3332492 () Bool)

(assert (=> b!5370594 (= e!3332504 e!3332492)))

(declare-fun res!2279294 () Bool)

(assert (=> b!5370594 (=> res!2279294 e!3332492)))

(declare-datatypes ((List!61550 0))(
  ( (Nil!61426) (Cons!61426 (h!67874 C!30436) (t!374773 List!61550)) )
))
(declare-fun s!2326 () List!61550)

(declare-fun lt!2187046 () Bool)

(declare-fun lt!2187032 () Bool)

(assert (=> b!5370594 (= res!2279294 (or (not (= lt!2187032 lt!2187046)) ((_ is Nil!61426) s!2326)))))

(declare-fun Exists!2264 (Int) Bool)

(assert (=> b!5370594 (= (Exists!2264 lambda!277067) (Exists!2264 lambda!277068))))

(declare-datatypes ((Unit!153850 0))(
  ( (Unit!153851) )
))
(declare-fun lt!2187060 () Unit!153850)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!918 (Regex!15083 Regex!15083 List!61550) Unit!153850)

(assert (=> b!5370594 (= lt!2187060 (lemmaExistCutMatchRandMatchRSpecEquivalent!918 (regOne!30678 r!7292) (regTwo!30678 r!7292) s!2326))))

(assert (=> b!5370594 (= lt!2187046 (Exists!2264 lambda!277067))))

(declare-datatypes ((tuple2!64564 0))(
  ( (tuple2!64565 (_1!35585 List!61550) (_2!35585 List!61550)) )
))
(declare-datatypes ((Option!15194 0))(
  ( (None!15193) (Some!15193 (v!51222 tuple2!64564)) )
))
(declare-fun isDefined!11897 (Option!15194) Bool)

(declare-fun findConcatSeparation!1608 (Regex!15083 Regex!15083 List!61550 List!61550 List!61550) Option!15194)

(assert (=> b!5370594 (= lt!2187046 (isDefined!11897 (findConcatSeparation!1608 (regOne!30678 r!7292) (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326)))))

(declare-fun lt!2187069 () Unit!153850)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1372 (Regex!15083 Regex!15083 List!61550) Unit!153850)

(assert (=> b!5370594 (= lt!2187069 (lemmaFindConcatSeparationEquivalentToExists!1372 (regOne!30678 r!7292) (regTwo!30678 r!7292) s!2326))))

(declare-fun b!5370595 () Bool)

(declare-fun e!3332491 () Bool)

(declare-fun tp!1489972 () Bool)

(assert (=> b!5370595 (= e!3332491 tp!1489972)))

(declare-fun b!5370596 () Bool)

(declare-fun e!3332490 () Bool)

(declare-fun tp!1489973 () Bool)

(declare-fun tp!1489971 () Bool)

(assert (=> b!5370596 (= e!3332490 (and tp!1489973 tp!1489971))))

(declare-fun b!5370598 () Bool)

(declare-fun e!3332488 () Bool)

(declare-fun e!3332500 () Bool)

(assert (=> b!5370598 (= e!3332488 e!3332500)))

(declare-fun res!2279319 () Bool)

(assert (=> b!5370598 (=> res!2279319 e!3332500)))

(declare-fun lt!2187044 () Regex!15083)

(declare-fun regexDepth!171 (Regex!15083) Int)

(assert (=> b!5370598 (= res!2279319 (< (regexDepth!171 r!7292) (regexDepth!171 lt!2187044)))))

(declare-fun generalisedConcat!752 (List!61548) Regex!15083)

(assert (=> b!5370598 (= lt!2187044 (generalisedConcat!752 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5370599 () Bool)

(declare-fun e!3332502 () Bool)

(assert (=> b!5370599 (= e!3332500 e!3332502)))

(declare-fun res!2279321 () Bool)

(assert (=> b!5370599 (=> res!2279321 e!3332502)))

(declare-fun lt!2187054 () List!61549)

(declare-fun zipperDepth!156 (List!61549) Int)

(assert (=> b!5370599 (= res!2279321 (< (zipperDepth!156 zl!343) (zipperDepth!156 lt!2187054)))))

(declare-fun lt!2187040 () Context!8934)

(assert (=> b!5370599 (= lt!2187054 (Cons!61425 lt!2187040 Nil!61425))))

(declare-fun b!5370600 () Bool)

(declare-fun e!3332509 () Bool)

(declare-fun e!3332494 () Bool)

(assert (=> b!5370600 (= e!3332509 e!3332494)))

(declare-fun res!2279320 () Bool)

(assert (=> b!5370600 (=> (not res!2279320) (not e!3332494))))

(declare-fun lt!2187072 () Regex!15083)

(assert (=> b!5370600 (= res!2279320 (= r!7292 lt!2187072))))

(declare-fun unfocusZipper!825 (List!61549) Regex!15083)

(assert (=> b!5370600 (= lt!2187072 (unfocusZipper!825 zl!343))))

(declare-fun e!3332507 () Bool)

(assert (=> b!5370601 (= e!3332492 e!3332507)))

(declare-fun res!2279302 () Bool)

(assert (=> b!5370601 (=> res!2279302 e!3332507)))

(assert (=> b!5370601 (= res!2279302 (or (and ((_ is ElementMatch!15083) (regOne!30678 r!7292)) (= (c!935793 (regOne!30678 r!7292)) (h!67874 s!2326))) ((_ is Union!15083) (regOne!30678 r!7292))))))

(declare-fun lt!2187045 () Unit!153850)

(declare-fun e!3332501 () Unit!153850)

(assert (=> b!5370601 (= lt!2187045 e!3332501)))

(declare-fun c!935792 () Bool)

(declare-fun nullable!5252 (Regex!15083) Bool)

(assert (=> b!5370601 (= c!935792 (nullable!5252 (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8934))

(declare-fun lambda!277069 () Int)

(declare-fun flatMap!810 ((InoxSet Context!8934) Int) (InoxSet Context!8934))

(declare-fun derivationStepZipperUp!455 (Context!8934 C!30436) (InoxSet Context!8934))

(assert (=> b!5370601 (= (flatMap!810 z!1189 lambda!277069) (derivationStepZipperUp!455 (h!67873 zl!343) (h!67874 s!2326)))))

(declare-fun lt!2187071 () Unit!153850)

(declare-fun lemmaFlatMapOnSingletonSet!342 ((InoxSet Context!8934) Context!8934 Int) Unit!153850)

(assert (=> b!5370601 (= lt!2187071 (lemmaFlatMapOnSingletonSet!342 z!1189 (h!67873 zl!343) lambda!277069))))

(declare-fun lt!2187038 () (InoxSet Context!8934))

(assert (=> b!5370601 (= lt!2187038 (derivationStepZipperUp!455 lt!2187040 (h!67874 s!2326)))))

(declare-fun lt!2187065 () (InoxSet Context!8934))

(declare-fun derivationStepZipperDown!531 (Regex!15083 Context!8934 C!30436) (InoxSet Context!8934))

(assert (=> b!5370601 (= lt!2187065 (derivationStepZipperDown!531 (h!67872 (exprs!4967 (h!67873 zl!343))) lt!2187040 (h!67874 s!2326)))))

(assert (=> b!5370601 (= lt!2187040 (Context!8935 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun lt!2187064 () (InoxSet Context!8934))

(assert (=> b!5370601 (= lt!2187064 (derivationStepZipperUp!455 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343))))) (h!67874 s!2326)))))

(declare-fun b!5370602 () Bool)

(assert (=> b!5370602 (= e!3332494 (not e!3332504))))

(declare-fun res!2279295 () Bool)

(assert (=> b!5370602 (=> res!2279295 e!3332504)))

(assert (=> b!5370602 (= res!2279295 (not ((_ is Cons!61425) zl!343)))))

(declare-fun lt!2187047 () Bool)

(assert (=> b!5370602 (= lt!2187032 lt!2187047)))

(declare-fun matchRSpec!2186 (Regex!15083 List!61550) Bool)

(assert (=> b!5370602 (= lt!2187047 (matchRSpec!2186 r!7292 s!2326))))

(declare-fun matchR!7268 (Regex!15083 List!61550) Bool)

(assert (=> b!5370602 (= lt!2187032 (matchR!7268 r!7292 s!2326))))

(declare-fun lt!2187042 () Unit!153850)

(declare-fun mainMatchTheorem!2186 (Regex!15083 List!61550) Unit!153850)

(assert (=> b!5370602 (= lt!2187042 (mainMatchTheorem!2186 r!7292 s!2326))))

(declare-fun b!5370603 () Bool)

(declare-fun tp_is_empty!39419 () Bool)

(assert (=> b!5370603 (= e!3332490 tp_is_empty!39419)))

(declare-fun b!5370604 () Bool)

(declare-fun res!2279298 () Bool)

(declare-fun e!3332495 () Bool)

(assert (=> b!5370604 (=> res!2279298 e!3332495)))

(declare-fun lt!2187033 () tuple2!64564)

(declare-fun isEmpty!33406 (List!61550) Bool)

(assert (=> b!5370604 (= res!2279298 (not (isEmpty!33406 (_1!35585 lt!2187033))))))

(declare-fun b!5370605 () Bool)

(declare-fun e!3332498 () Bool)

(declare-fun e!3332510 () Bool)

(assert (=> b!5370605 (= e!3332498 e!3332510)))

(declare-fun res!2279311 () Bool)

(assert (=> b!5370605 (=> res!2279311 e!3332510)))

(declare-fun lt!2187050 () Regex!15083)

(assert (=> b!5370605 (= res!2279311 (not (= r!7292 lt!2187050)))))

(assert (=> b!5370605 (= lt!2187050 (Concat!23928 lt!2187036 (regTwo!30678 r!7292)))))

(declare-fun b!5370606 () Bool)

(declare-fun e!3332506 () Bool)

(declare-fun e!3332487 () Bool)

(assert (=> b!5370606 (= e!3332506 e!3332487)))

(declare-fun res!2279307 () Bool)

(assert (=> b!5370606 (=> res!2279307 e!3332487)))

(assert (=> b!5370606 (= res!2279307 (not lt!2187032))))

(declare-fun e!3332505 () Bool)

(assert (=> b!5370606 e!3332505))

(declare-fun res!2279303 () Bool)

(assert (=> b!5370606 (=> (not res!2279303) (not e!3332505))))

(declare-fun lt!2187037 () Regex!15083)

(assert (=> b!5370606 (= res!2279303 (= (matchR!7268 lt!2187037 s!2326) (matchRSpec!2186 lt!2187037 s!2326)))))

(declare-fun lt!2187070 () Unit!153850)

(assert (=> b!5370606 (= lt!2187070 (mainMatchTheorem!2186 lt!2187037 s!2326))))

(declare-fun b!5370607 () Bool)

(declare-fun res!2279315 () Bool)

(assert (=> b!5370607 (=> res!2279315 e!3332495)))

(assert (=> b!5370607 (= res!2279315 (not (matchR!7268 lt!2187036 (_1!35585 lt!2187033))))))

(declare-fun b!5370608 () Bool)

(declare-fun e!3332503 () Bool)

(assert (=> b!5370608 (= e!3332507 e!3332503)))

(declare-fun res!2279299 () Bool)

(assert (=> b!5370608 (=> res!2279299 e!3332503)))

(declare-fun lt!2187049 () (InoxSet Context!8934))

(assert (=> b!5370608 (= res!2279299 (not (= lt!2187065 lt!2187049)))))

(declare-fun lt!2187066 () Context!8934)

(assert (=> b!5370608 (= lt!2187049 (derivationStepZipperDown!531 (reg!15412 (regOne!30678 r!7292)) lt!2187066 (h!67874 s!2326)))))

(declare-fun lt!2187067 () List!61548)

(assert (=> b!5370608 (= lt!2187066 (Context!8935 lt!2187067))))

(assert (=> b!5370608 (= lt!2187067 (Cons!61424 lt!2187036 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(assert (=> b!5370608 (= lt!2187036 (Star!15083 (reg!15412 (regOne!30678 r!7292))))))

(declare-fun setElem!34799 () Context!8934)

(declare-fun setRes!34799 () Bool)

(declare-fun setNonEmpty!34799 () Bool)

(declare-fun tp!1489974 () Bool)

(declare-fun e!3332508 () Bool)

(declare-fun inv!80954 (Context!8934) Bool)

(assert (=> setNonEmpty!34799 (= setRes!34799 (and tp!1489974 (inv!80954 setElem!34799) e!3332508))))

(declare-fun setRest!34799 () (InoxSet Context!8934))

(assert (=> setNonEmpty!34799 (= z!1189 ((_ map or) (store ((as const (Array Context!8934 Bool)) false) setElem!34799 true) setRest!34799))))

(declare-fun setIsEmpty!34799 () Bool)

(assert (=> setIsEmpty!34799 setRes!34799))

(declare-fun b!5370609 () Bool)

(declare-fun res!2279308 () Bool)

(assert (=> b!5370609 (=> res!2279308 e!3332504)))

(assert (=> b!5370609 (= res!2279308 (or ((_ is EmptyExpr!15083) r!7292) ((_ is EmptyLang!15083) r!7292) ((_ is ElementMatch!15083) r!7292) ((_ is Union!15083) r!7292) (not ((_ is Concat!23928) r!7292))))))

(declare-fun b!5370610 () Bool)

(declare-fun res!2279318 () Bool)

(assert (=> b!5370610 (=> (not res!2279318) (not e!3332509))))

(declare-fun toList!8867 ((InoxSet Context!8934)) List!61549)

(assert (=> b!5370610 (= res!2279318 (= (toList!8867 z!1189) zl!343))))

(declare-fun b!5370611 () Bool)

(declare-fun tp!1489970 () Bool)

(assert (=> b!5370611 (= e!3332508 tp!1489970)))

(declare-fun b!5370612 () Bool)

(declare-fun e!3332499 () Bool)

(assert (=> b!5370612 (= e!3332499 e!3332506)))

(declare-fun res!2279291 () Bool)

(assert (=> b!5370612 (=> res!2279291 e!3332506)))

(declare-fun lt!2187031 () Context!8934)

(assert (=> b!5370612 (= res!2279291 (not (= (unfocusZipper!825 (Cons!61425 lt!2187031 Nil!61425)) (reg!15412 (regOne!30678 r!7292)))))))

(declare-fun lt!2187039 () (InoxSet Context!8934))

(assert (=> b!5370612 (= (flatMap!810 lt!2187039 lambda!277069) (derivationStepZipperUp!455 lt!2187066 (h!67874 s!2326)))))

(declare-fun lt!2187052 () Unit!153850)

(assert (=> b!5370612 (= lt!2187052 (lemmaFlatMapOnSingletonSet!342 lt!2187039 lt!2187066 lambda!277069))))

(declare-fun lt!2187056 () (InoxSet Context!8934))

(assert (=> b!5370612 (= (flatMap!810 lt!2187056 lambda!277069) (derivationStepZipperUp!455 lt!2187031 (h!67874 s!2326)))))

(declare-fun lt!2187034 () Unit!153850)

(assert (=> b!5370612 (= lt!2187034 (lemmaFlatMapOnSingletonSet!342 lt!2187056 lt!2187031 lambda!277069))))

(declare-fun lt!2187057 () (InoxSet Context!8934))

(assert (=> b!5370612 (= lt!2187057 (derivationStepZipperUp!455 lt!2187066 (h!67874 s!2326)))))

(declare-fun lt!2187063 () (InoxSet Context!8934))

(assert (=> b!5370612 (= lt!2187063 (derivationStepZipperUp!455 lt!2187031 (h!67874 s!2326)))))

(assert (=> b!5370612 (= lt!2187039 (store ((as const (Array Context!8934 Bool)) false) lt!2187066 true))))

(assert (=> b!5370612 (= lt!2187056 (store ((as const (Array Context!8934 Bool)) false) lt!2187031 true))))

(assert (=> b!5370612 (= lt!2187031 (Context!8935 (Cons!61424 (reg!15412 (regOne!30678 r!7292)) Nil!61424)))))

(declare-fun b!5370613 () Bool)

(declare-fun res!2279317 () Bool)

(assert (=> b!5370613 (=> res!2279317 e!3332504)))

(declare-fun generalisedUnion!1012 (List!61548) Regex!15083)

(declare-fun unfocusZipperList!525 (List!61549) List!61548)

(assert (=> b!5370613 (= res!2279317 (not (= r!7292 (generalisedUnion!1012 (unfocusZipperList!525 zl!343)))))))

(declare-fun b!5370614 () Bool)

(declare-fun res!2279300 () Bool)

(assert (=> b!5370614 (=> res!2279300 e!3332498)))

(assert (=> b!5370614 (= res!2279300 (not (= lt!2187072 r!7292)))))

(declare-fun b!5370615 () Bool)

(assert (=> b!5370615 (= e!3332510 e!3332499)))

(declare-fun res!2279297 () Bool)

(assert (=> b!5370615 (=> res!2279297 e!3332499)))

(declare-fun lt!2187051 () Context!8934)

(assert (=> b!5370615 (= res!2279297 (not (= (unfocusZipper!825 (Cons!61425 lt!2187051 Nil!61425)) lt!2187037)))))

(assert (=> b!5370615 (= lt!2187037 (Concat!23928 (reg!15412 (regOne!30678 r!7292)) lt!2187050))))

(assert (=> b!5370616 (= e!3332487 e!3332495)))

(declare-fun res!2279305 () Bool)

(assert (=> b!5370616 (=> res!2279305 e!3332495)))

(declare-fun ++!13386 (List!61550 List!61550) List!61550)

(assert (=> b!5370616 (= res!2279305 (not (= (++!13386 (_1!35585 lt!2187033) (_2!35585 lt!2187033)) s!2326)))))

(declare-fun lt!2187048 () Option!15194)

(declare-fun get!21133 (Option!15194) tuple2!64564)

(assert (=> b!5370616 (= lt!2187033 (get!21133 lt!2187048))))

(assert (=> b!5370616 (= (Exists!2264 lambda!277070) (Exists!2264 lambda!277071))))

(declare-fun lt!2187059 () Unit!153850)

(assert (=> b!5370616 (= lt!2187059 (lemmaExistCutMatchRandMatchRSpecEquivalent!918 lt!2187036 (regTwo!30678 r!7292) s!2326))))

(assert (=> b!5370616 (= (isDefined!11897 lt!2187048) (Exists!2264 lambda!277070))))

(assert (=> b!5370616 (= lt!2187048 (findConcatSeparation!1608 lt!2187036 (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326))))

(declare-fun lt!2187058 () Unit!153850)

(assert (=> b!5370616 (= lt!2187058 (lemmaFindConcatSeparationEquivalentToExists!1372 lt!2187036 (regTwo!30678 r!7292) s!2326))))

(declare-fun b!5370617 () Bool)

(declare-fun res!2279292 () Bool)

(assert (=> b!5370617 (=> res!2279292 e!3332498)))

(declare-fun lt!2187068 () (InoxSet Context!8934))

(declare-fun lt!2187061 () (InoxSet Context!8934))

(declare-fun matchZipper!1327 ((InoxSet Context!8934) List!61550) Bool)

(assert (=> b!5370617 (= res!2279292 (not (= (matchZipper!1327 lt!2187068 s!2326) (matchZipper!1327 lt!2187061 (t!374773 s!2326)))))))

(declare-fun b!5370618 () Bool)

(declare-fun validRegex!6819 (Regex!15083) Bool)

(assert (=> b!5370618 (= e!3332502 (validRegex!6819 lt!2187044))))

(declare-fun lt!2187055 () (InoxSet Context!8934))

(assert (=> b!5370618 (= (matchR!7268 lt!2187044 s!2326) (matchZipper!1327 lt!2187055 s!2326))))

(declare-fun lt!2187053 () Unit!153850)

(declare-fun theoremZipperRegexEquiv!441 ((InoxSet Context!8934) List!61549 Regex!15083 List!61550) Unit!153850)

(assert (=> b!5370618 (= lt!2187053 (theoremZipperRegexEquiv!441 lt!2187055 lt!2187054 lt!2187044 s!2326))))

(declare-fun b!5370619 () Bool)

(declare-fun res!2279313 () Bool)

(assert (=> b!5370619 (=> res!2279313 e!3332507)))

(declare-fun e!3332496 () Bool)

(assert (=> b!5370619 (= res!2279313 e!3332496)))

(declare-fun res!2279310 () Bool)

(assert (=> b!5370619 (=> (not res!2279310) (not e!3332496))))

(assert (=> b!5370619 (= res!2279310 ((_ is Concat!23928) (regOne!30678 r!7292)))))

(declare-fun b!5370620 () Bool)

(declare-fun tp!1489975 () Bool)

(declare-fun tp!1489976 () Bool)

(assert (=> b!5370620 (= e!3332490 (and tp!1489975 tp!1489976))))

(declare-fun b!5370621 () Bool)

(declare-fun res!2279296 () Bool)

(assert (=> b!5370621 (=> res!2279296 e!3332495)))

(assert (=> b!5370621 (= res!2279296 (not (matchR!7268 (regTwo!30678 r!7292) (_2!35585 lt!2187033))))))

(declare-fun b!5370597 () Bool)

(assert (=> b!5370597 (= e!3332496 (nullable!5252 (regOne!30678 (regOne!30678 r!7292))))))

(declare-fun res!2279304 () Bool)

(assert (=> start!565106 (=> (not res!2279304) (not e!3332509))))

(assert (=> start!565106 (= res!2279304 (validRegex!6819 r!7292))))

(assert (=> start!565106 e!3332509))

(assert (=> start!565106 e!3332490))

(declare-fun condSetEmpty!34799 () Bool)

(assert (=> start!565106 (= condSetEmpty!34799 (= z!1189 ((as const (Array Context!8934 Bool)) false)))))

(assert (=> start!565106 setRes!34799))

(declare-fun e!3332489 () Bool)

(assert (=> start!565106 e!3332489))

(declare-fun e!3332497 () Bool)

(assert (=> start!565106 e!3332497))

(declare-fun b!5370622 () Bool)

(assert (=> b!5370622 (= e!3332495 e!3332488)))

(declare-fun res!2279316 () Bool)

(assert (=> b!5370622 (=> res!2279316 e!3332488)))

(declare-fun derivationStepZipper!1322 ((InoxSet Context!8934) C!30436) (InoxSet Context!8934))

(assert (=> b!5370622 (= res!2279316 (not (= lt!2187038 (derivationStepZipper!1322 lt!2187055 (h!67874 s!2326)))))))

(assert (=> b!5370622 (= (flatMap!810 lt!2187055 lambda!277069) (derivationStepZipperUp!455 lt!2187040 (h!67874 s!2326)))))

(declare-fun lt!2187041 () Unit!153850)

(assert (=> b!5370622 (= lt!2187041 (lemmaFlatMapOnSingletonSet!342 lt!2187055 lt!2187040 lambda!277069))))

(assert (=> b!5370622 (= lt!2187055 (store ((as const (Array Context!8934 Bool)) false) lt!2187040 true))))

(declare-fun b!5370623 () Bool)

(assert (=> b!5370623 (= e!3332505 (or (not lt!2187032) lt!2187047))))

(declare-fun b!5370624 () Bool)

(declare-fun Unit!153852 () Unit!153850)

(assert (=> b!5370624 (= e!3332501 Unit!153852)))

(declare-fun lt!2187035 () Unit!153850)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!320 ((InoxSet Context!8934) (InoxSet Context!8934) List!61550) Unit!153850)

(assert (=> b!5370624 (= lt!2187035 (lemmaZipperConcatMatchesSameAsBothZippers!320 lt!2187065 lt!2187038 (t!374773 s!2326)))))

(declare-fun res!2279312 () Bool)

(assert (=> b!5370624 (= res!2279312 (matchZipper!1327 lt!2187065 (t!374773 s!2326)))))

(declare-fun e!3332493 () Bool)

(assert (=> b!5370624 (=> res!2279312 e!3332493)))

(assert (=> b!5370624 (= (matchZipper!1327 ((_ map or) lt!2187065 lt!2187038) (t!374773 s!2326)) e!3332493)))

(declare-fun b!5370625 () Bool)

(declare-fun res!2279322 () Bool)

(assert (=> b!5370625 (=> res!2279322 e!3332504)))

(declare-fun isEmpty!33407 (List!61549) Bool)

(assert (=> b!5370625 (= res!2279322 (not (isEmpty!33407 (t!374772 zl!343))))))

(declare-fun b!5370626 () Bool)

(declare-fun res!2279306 () Bool)

(assert (=> b!5370626 (=> res!2279306 e!3332506)))

(assert (=> b!5370626 (= res!2279306 (not (= (unfocusZipper!825 (Cons!61425 lt!2187066 Nil!61425)) lt!2187050)))))

(declare-fun b!5370627 () Bool)

(assert (=> b!5370627 (= e!3332493 (matchZipper!1327 lt!2187038 (t!374773 s!2326)))))

(declare-fun b!5370628 () Bool)

(declare-fun res!2279314 () Bool)

(assert (=> b!5370628 (=> res!2279314 e!3332507)))

(assert (=> b!5370628 (= res!2279314 (or ((_ is Concat!23928) (regOne!30678 r!7292)) (not ((_ is Star!15083) (regOne!30678 r!7292)))))))

(declare-fun b!5370629 () Bool)

(declare-fun tp!1489968 () Bool)

(assert (=> b!5370629 (= e!3332490 tp!1489968)))

(declare-fun b!5370630 () Bool)

(declare-fun Unit!153853 () Unit!153850)

(assert (=> b!5370630 (= e!3332501 Unit!153853)))

(declare-fun b!5370631 () Bool)

(assert (=> b!5370631 (= e!3332503 e!3332498)))

(declare-fun res!2279301 () Bool)

(assert (=> b!5370631 (=> res!2279301 e!3332498)))

(assert (=> b!5370631 (= res!2279301 (not (= lt!2187061 lt!2187049)))))

(assert (=> b!5370631 (= (flatMap!810 lt!2187068 lambda!277069) (derivationStepZipperUp!455 lt!2187051 (h!67874 s!2326)))))

(declare-fun lt!2187043 () Unit!153850)

(assert (=> b!5370631 (= lt!2187043 (lemmaFlatMapOnSingletonSet!342 lt!2187068 lt!2187051 lambda!277069))))

(declare-fun lt!2187062 () (InoxSet Context!8934))

(assert (=> b!5370631 (= lt!2187062 (derivationStepZipperUp!455 lt!2187051 (h!67874 s!2326)))))

(assert (=> b!5370631 (= lt!2187061 (derivationStepZipper!1322 lt!2187068 (h!67874 s!2326)))))

(assert (=> b!5370631 (= lt!2187068 (store ((as const (Array Context!8934 Bool)) false) lt!2187051 true))))

(assert (=> b!5370631 (= lt!2187051 (Context!8935 (Cons!61424 (reg!15412 (regOne!30678 r!7292)) lt!2187067)))))

(declare-fun b!5370632 () Bool)

(declare-fun res!2279309 () Bool)

(assert (=> b!5370632 (=> res!2279309 e!3332504)))

(assert (=> b!5370632 (= res!2279309 (not (= r!7292 (generalisedConcat!752 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun b!5370633 () Bool)

(declare-fun tp!1489977 () Bool)

(assert (=> b!5370633 (= e!3332489 (and (inv!80954 (h!67873 zl!343)) e!3332491 tp!1489977))))

(declare-fun b!5370634 () Bool)

(declare-fun res!2279323 () Bool)

(assert (=> b!5370634 (=> res!2279323 e!3332492)))

(declare-fun isEmpty!33408 (List!61548) Bool)

(assert (=> b!5370634 (= res!2279323 (isEmpty!33408 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5370635 () Bool)

(declare-fun tp!1489969 () Bool)

(assert (=> b!5370635 (= e!3332497 (and tp_is_empty!39419 tp!1489969))))

(assert (= (and start!565106 res!2279304) b!5370610))

(assert (= (and b!5370610 res!2279318) b!5370600))

(assert (= (and b!5370600 res!2279320) b!5370602))

(assert (= (and b!5370602 (not res!2279295)) b!5370625))

(assert (= (and b!5370625 (not res!2279322)) b!5370632))

(assert (= (and b!5370632 (not res!2279309)) b!5370593))

(assert (= (and b!5370593 (not res!2279293)) b!5370613))

(assert (= (and b!5370613 (not res!2279317)) b!5370609))

(assert (= (and b!5370609 (not res!2279308)) b!5370594))

(assert (= (and b!5370594 (not res!2279294)) b!5370634))

(assert (= (and b!5370634 (not res!2279323)) b!5370601))

(assert (= (and b!5370601 c!935792) b!5370624))

(assert (= (and b!5370601 (not c!935792)) b!5370630))

(assert (= (and b!5370624 (not res!2279312)) b!5370627))

(assert (= (and b!5370601 (not res!2279302)) b!5370619))

(assert (= (and b!5370619 res!2279310) b!5370597))

(assert (= (and b!5370619 (not res!2279313)) b!5370628))

(assert (= (and b!5370628 (not res!2279314)) b!5370608))

(assert (= (and b!5370608 (not res!2279299)) b!5370631))

(assert (= (and b!5370631 (not res!2279301)) b!5370617))

(assert (= (and b!5370617 (not res!2279292)) b!5370614))

(assert (= (and b!5370614 (not res!2279300)) b!5370605))

(assert (= (and b!5370605 (not res!2279311)) b!5370615))

(assert (= (and b!5370615 (not res!2279297)) b!5370612))

(assert (= (and b!5370612 (not res!2279291)) b!5370626))

(assert (= (and b!5370626 (not res!2279306)) b!5370606))

(assert (= (and b!5370606 res!2279303) b!5370623))

(assert (= (and b!5370606 (not res!2279307)) b!5370616))

(assert (= (and b!5370616 (not res!2279305)) b!5370607))

(assert (= (and b!5370607 (not res!2279315)) b!5370621))

(assert (= (and b!5370621 (not res!2279296)) b!5370604))

(assert (= (and b!5370604 (not res!2279298)) b!5370622))

(assert (= (and b!5370622 (not res!2279316)) b!5370598))

(assert (= (and b!5370598 (not res!2279319)) b!5370599))

(assert (= (and b!5370599 (not res!2279321)) b!5370618))

(assert (= (and start!565106 ((_ is ElementMatch!15083) r!7292)) b!5370603))

(assert (= (and start!565106 ((_ is Concat!23928) r!7292)) b!5370596))

(assert (= (and start!565106 ((_ is Star!15083) r!7292)) b!5370629))

(assert (= (and start!565106 ((_ is Union!15083) r!7292)) b!5370620))

(assert (= (and start!565106 condSetEmpty!34799) setIsEmpty!34799))

(assert (= (and start!565106 (not condSetEmpty!34799)) setNonEmpty!34799))

(assert (= setNonEmpty!34799 b!5370611))

(assert (= b!5370633 b!5370595))

(assert (= (and start!565106 ((_ is Cons!61425) zl!343)) b!5370633))

(assert (= (and start!565106 ((_ is Cons!61426) s!2326)) b!5370635))

(declare-fun m!6397946 () Bool)

(assert (=> b!5370633 m!6397946))

(declare-fun m!6397948 () Bool)

(assert (=> b!5370625 m!6397948))

(declare-fun m!6397950 () Bool)

(assert (=> b!5370612 m!6397950))

(declare-fun m!6397952 () Bool)

(assert (=> b!5370612 m!6397952))

(declare-fun m!6397954 () Bool)

(assert (=> b!5370612 m!6397954))

(declare-fun m!6397956 () Bool)

(assert (=> b!5370612 m!6397956))

(declare-fun m!6397958 () Bool)

(assert (=> b!5370612 m!6397958))

(declare-fun m!6397960 () Bool)

(assert (=> b!5370612 m!6397960))

(declare-fun m!6397962 () Bool)

(assert (=> b!5370612 m!6397962))

(declare-fun m!6397964 () Bool)

(assert (=> b!5370612 m!6397964))

(declare-fun m!6397966 () Bool)

(assert (=> b!5370612 m!6397966))

(declare-fun m!6397968 () Bool)

(assert (=> b!5370624 m!6397968))

(declare-fun m!6397970 () Bool)

(assert (=> b!5370624 m!6397970))

(declare-fun m!6397972 () Bool)

(assert (=> b!5370624 m!6397972))

(declare-fun m!6397974 () Bool)

(assert (=> b!5370606 m!6397974))

(declare-fun m!6397976 () Bool)

(assert (=> b!5370606 m!6397976))

(declare-fun m!6397978 () Bool)

(assert (=> b!5370606 m!6397978))

(declare-fun m!6397980 () Bool)

(assert (=> b!5370632 m!6397980))

(declare-fun m!6397982 () Bool)

(assert (=> b!5370608 m!6397982))

(declare-fun m!6397984 () Bool)

(assert (=> b!5370622 m!6397984))

(declare-fun m!6397986 () Bool)

(assert (=> b!5370622 m!6397986))

(declare-fun m!6397988 () Bool)

(assert (=> b!5370622 m!6397988))

(declare-fun m!6397990 () Bool)

(assert (=> b!5370622 m!6397990))

(declare-fun m!6397992 () Bool)

(assert (=> b!5370622 m!6397992))

(declare-fun m!6397994 () Bool)

(assert (=> b!5370610 m!6397994))

(declare-fun m!6397996 () Bool)

(assert (=> b!5370598 m!6397996))

(declare-fun m!6397998 () Bool)

(assert (=> b!5370598 m!6397998))

(declare-fun m!6398000 () Bool)

(assert (=> b!5370598 m!6398000))

(declare-fun m!6398002 () Bool)

(assert (=> b!5370634 m!6398002))

(declare-fun m!6398004 () Bool)

(assert (=> b!5370627 m!6398004))

(declare-fun m!6398006 () Bool)

(assert (=> b!5370621 m!6398006))

(declare-fun m!6398008 () Bool)

(assert (=> b!5370626 m!6398008))

(declare-fun m!6398010 () Bool)

(assert (=> setNonEmpty!34799 m!6398010))

(declare-fun m!6398012 () Bool)

(assert (=> b!5370599 m!6398012))

(declare-fun m!6398014 () Bool)

(assert (=> b!5370599 m!6398014))

(declare-fun m!6398016 () Bool)

(assert (=> start!565106 m!6398016))

(declare-fun m!6398018 () Bool)

(assert (=> b!5370631 m!6398018))

(declare-fun m!6398020 () Bool)

(assert (=> b!5370631 m!6398020))

(declare-fun m!6398022 () Bool)

(assert (=> b!5370631 m!6398022))

(declare-fun m!6398024 () Bool)

(assert (=> b!5370631 m!6398024))

(declare-fun m!6398026 () Bool)

(assert (=> b!5370631 m!6398026))

(declare-fun m!6398028 () Bool)

(assert (=> b!5370597 m!6398028))

(declare-fun m!6398030 () Bool)

(assert (=> b!5370600 m!6398030))

(declare-fun m!6398032 () Bool)

(assert (=> b!5370617 m!6398032))

(declare-fun m!6398034 () Bool)

(assert (=> b!5370617 m!6398034))

(declare-fun m!6398036 () Bool)

(assert (=> b!5370602 m!6398036))

(declare-fun m!6398038 () Bool)

(assert (=> b!5370602 m!6398038))

(declare-fun m!6398040 () Bool)

(assert (=> b!5370602 m!6398040))

(declare-fun m!6398042 () Bool)

(assert (=> b!5370594 m!6398042))

(declare-fun m!6398044 () Bool)

(assert (=> b!5370594 m!6398044))

(declare-fun m!6398046 () Bool)

(assert (=> b!5370594 m!6398046))

(assert (=> b!5370594 m!6398042))

(declare-fun m!6398048 () Bool)

(assert (=> b!5370594 m!6398048))

(declare-fun m!6398050 () Bool)

(assert (=> b!5370594 m!6398050))

(assert (=> b!5370594 m!6398044))

(declare-fun m!6398052 () Bool)

(assert (=> b!5370594 m!6398052))

(declare-fun m!6398054 () Bool)

(assert (=> b!5370615 m!6398054))

(declare-fun m!6398056 () Bool)

(assert (=> b!5370607 m!6398056))

(declare-fun m!6398058 () Bool)

(assert (=> b!5370604 m!6398058))

(declare-fun m!6398060 () Bool)

(assert (=> b!5370601 m!6398060))

(declare-fun m!6398062 () Bool)

(assert (=> b!5370601 m!6398062))

(declare-fun m!6398064 () Bool)

(assert (=> b!5370601 m!6398064))

(declare-fun m!6398066 () Bool)

(assert (=> b!5370601 m!6398066))

(assert (=> b!5370601 m!6397990))

(declare-fun m!6398068 () Bool)

(assert (=> b!5370601 m!6398068))

(declare-fun m!6398070 () Bool)

(assert (=> b!5370601 m!6398070))

(declare-fun m!6398072 () Bool)

(assert (=> b!5370618 m!6398072))

(declare-fun m!6398074 () Bool)

(assert (=> b!5370618 m!6398074))

(declare-fun m!6398076 () Bool)

(assert (=> b!5370618 m!6398076))

(declare-fun m!6398078 () Bool)

(assert (=> b!5370618 m!6398078))

(declare-fun m!6398080 () Bool)

(assert (=> b!5370616 m!6398080))

(declare-fun m!6398082 () Bool)

(assert (=> b!5370616 m!6398082))

(declare-fun m!6398084 () Bool)

(assert (=> b!5370616 m!6398084))

(declare-fun m!6398086 () Bool)

(assert (=> b!5370616 m!6398086))

(declare-fun m!6398088 () Bool)

(assert (=> b!5370616 m!6398088))

(declare-fun m!6398090 () Bool)

(assert (=> b!5370616 m!6398090))

(assert (=> b!5370616 m!6398082))

(declare-fun m!6398092 () Bool)

(assert (=> b!5370616 m!6398092))

(declare-fun m!6398094 () Bool)

(assert (=> b!5370616 m!6398094))

(declare-fun m!6398096 () Bool)

(assert (=> b!5370613 m!6398096))

(assert (=> b!5370613 m!6398096))

(declare-fun m!6398098 () Bool)

(assert (=> b!5370613 m!6398098))

(check-sat (not b!5370629) (not b!5370617) (not b!5370618) (not b!5370607) (not b!5370599) (not b!5370616) (not b!5370624) (not b!5370622) (not b!5370596) (not b!5370598) (not b!5370631) (not b!5370634) (not b!5370613) (not b!5370594) tp_is_empty!39419 (not b!5370600) (not b!5370633) (not b!5370632) (not b!5370601) (not b!5370606) (not b!5370611) (not b!5370626) (not b!5370610) (not b!5370612) (not b!5370627) (not start!565106) (not b!5370615) (not b!5370602) (not b!5370597) (not setNonEmpty!34799) (not b!5370625) (not b!5370620) (not b!5370635) (not b!5370604) (not b!5370595) (not b!5370608) (not b!5370621))
(check-sat)
(get-model)

(declare-fun d!1720063 () Bool)

(declare-fun lt!2187096 () Regex!15083)

(assert (=> d!1720063 (validRegex!6819 lt!2187096)))

(assert (=> d!1720063 (= lt!2187096 (generalisedUnion!1012 (unfocusZipperList!525 (Cons!61425 lt!2187051 Nil!61425))))))

(assert (=> d!1720063 (= (unfocusZipper!825 (Cons!61425 lt!2187051 Nil!61425)) lt!2187096)))

(declare-fun bs!1243770 () Bool)

(assert (= bs!1243770 d!1720063))

(declare-fun m!6398180 () Bool)

(assert (=> bs!1243770 m!6398180))

(declare-fun m!6398182 () Bool)

(assert (=> bs!1243770 m!6398182))

(assert (=> bs!1243770 m!6398182))

(declare-fun m!6398184 () Bool)

(assert (=> bs!1243770 m!6398184))

(assert (=> b!5370615 d!1720063))

(declare-fun d!1720065 () Bool)

(declare-fun nullableFct!1553 (Regex!15083) Bool)

(assert (=> d!1720065 (= (nullable!5252 (regOne!30678 (regOne!30678 r!7292))) (nullableFct!1553 (regOne!30678 (regOne!30678 r!7292))))))

(declare-fun bs!1243772 () Bool)

(assert (= bs!1243772 d!1720065))

(declare-fun m!6398186 () Bool)

(assert (=> bs!1243772 m!6398186))

(assert (=> b!5370597 d!1720065))

(declare-fun b!5370814 () Bool)

(declare-fun lt!2187112 () Unit!153850)

(declare-fun lt!2187113 () Unit!153850)

(assert (=> b!5370814 (= lt!2187112 lt!2187113)))

(assert (=> b!5370814 (= (++!13386 (++!13386 Nil!61426 (Cons!61426 (h!67874 s!2326) Nil!61426)) (t!374773 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1797 (List!61550 C!30436 List!61550 List!61550) Unit!153850)

(assert (=> b!5370814 (= lt!2187113 (lemmaMoveElementToOtherListKeepsConcatEq!1797 Nil!61426 (h!67874 s!2326) (t!374773 s!2326) s!2326))))

(declare-fun e!3332612 () Option!15194)

(assert (=> b!5370814 (= e!3332612 (findConcatSeparation!1608 lt!2187036 (regTwo!30678 r!7292) (++!13386 Nil!61426 (Cons!61426 (h!67874 s!2326) Nil!61426)) (t!374773 s!2326) s!2326))))

(declare-fun b!5370815 () Bool)

(declare-fun e!3332611 () Bool)

(assert (=> b!5370815 (= e!3332611 (matchR!7268 (regTwo!30678 r!7292) s!2326))))

(declare-fun d!1720067 () Bool)

(declare-fun e!3332613 () Bool)

(assert (=> d!1720067 e!3332613))

(declare-fun res!2279425 () Bool)

(assert (=> d!1720067 (=> res!2279425 e!3332613)))

(declare-fun e!3332610 () Bool)

(assert (=> d!1720067 (= res!2279425 e!3332610)))

(declare-fun res!2279426 () Bool)

(assert (=> d!1720067 (=> (not res!2279426) (not e!3332610))))

(declare-fun lt!2187114 () Option!15194)

(assert (=> d!1720067 (= res!2279426 (isDefined!11897 lt!2187114))))

(declare-fun e!3332609 () Option!15194)

(assert (=> d!1720067 (= lt!2187114 e!3332609)))

(declare-fun c!935831 () Bool)

(assert (=> d!1720067 (= c!935831 e!3332611)))

(declare-fun res!2279422 () Bool)

(assert (=> d!1720067 (=> (not res!2279422) (not e!3332611))))

(assert (=> d!1720067 (= res!2279422 (matchR!7268 lt!2187036 Nil!61426))))

(assert (=> d!1720067 (validRegex!6819 lt!2187036)))

(assert (=> d!1720067 (= (findConcatSeparation!1608 lt!2187036 (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326) lt!2187114)))

(declare-fun b!5370816 () Bool)

(declare-fun res!2279424 () Bool)

(assert (=> b!5370816 (=> (not res!2279424) (not e!3332610))))

(assert (=> b!5370816 (= res!2279424 (matchR!7268 (regTwo!30678 r!7292) (_2!35585 (get!21133 lt!2187114))))))

(declare-fun b!5370817 () Bool)

(declare-fun res!2279423 () Bool)

(assert (=> b!5370817 (=> (not res!2279423) (not e!3332610))))

(assert (=> b!5370817 (= res!2279423 (matchR!7268 lt!2187036 (_1!35585 (get!21133 lt!2187114))))))

(declare-fun b!5370818 () Bool)

(assert (=> b!5370818 (= e!3332612 None!15193)))

(declare-fun b!5370819 () Bool)

(assert (=> b!5370819 (= e!3332609 (Some!15193 (tuple2!64565 Nil!61426 s!2326)))))

(declare-fun b!5370820 () Bool)

(assert (=> b!5370820 (= e!3332609 e!3332612)))

(declare-fun c!935832 () Bool)

(assert (=> b!5370820 (= c!935832 ((_ is Nil!61426) s!2326))))

(declare-fun b!5370821 () Bool)

(assert (=> b!5370821 (= e!3332610 (= (++!13386 (_1!35585 (get!21133 lt!2187114)) (_2!35585 (get!21133 lt!2187114))) s!2326))))

(declare-fun b!5370822 () Bool)

(assert (=> b!5370822 (= e!3332613 (not (isDefined!11897 lt!2187114)))))

(assert (= (and d!1720067 res!2279422) b!5370815))

(assert (= (and d!1720067 c!935831) b!5370819))

(assert (= (and d!1720067 (not c!935831)) b!5370820))

(assert (= (and b!5370820 c!935832) b!5370818))

(assert (= (and b!5370820 (not c!935832)) b!5370814))

(assert (= (and d!1720067 res!2279426) b!5370817))

(assert (= (and b!5370817 res!2279423) b!5370816))

(assert (= (and b!5370816 res!2279424) b!5370821))

(assert (= (and d!1720067 (not res!2279425)) b!5370822))

(declare-fun m!6398262 () Bool)

(assert (=> b!5370816 m!6398262))

(declare-fun m!6398264 () Bool)

(assert (=> b!5370816 m!6398264))

(assert (=> b!5370821 m!6398262))

(declare-fun m!6398266 () Bool)

(assert (=> b!5370821 m!6398266))

(declare-fun m!6398268 () Bool)

(assert (=> d!1720067 m!6398268))

(declare-fun m!6398270 () Bool)

(assert (=> d!1720067 m!6398270))

(declare-fun m!6398272 () Bool)

(assert (=> d!1720067 m!6398272))

(declare-fun m!6398274 () Bool)

(assert (=> b!5370815 m!6398274))

(assert (=> b!5370822 m!6398268))

(assert (=> b!5370817 m!6398262))

(declare-fun m!6398276 () Bool)

(assert (=> b!5370817 m!6398276))

(declare-fun m!6398278 () Bool)

(assert (=> b!5370814 m!6398278))

(assert (=> b!5370814 m!6398278))

(declare-fun m!6398280 () Bool)

(assert (=> b!5370814 m!6398280))

(declare-fun m!6398282 () Bool)

(assert (=> b!5370814 m!6398282))

(assert (=> b!5370814 m!6398278))

(declare-fun m!6398284 () Bool)

(assert (=> b!5370814 m!6398284))

(assert (=> b!5370616 d!1720067))

(declare-fun d!1720091 () Bool)

(assert (=> d!1720091 (= (get!21133 lt!2187048) (v!51222 lt!2187048))))

(assert (=> b!5370616 d!1720091))

(declare-fun d!1720093 () Bool)

(declare-fun isEmpty!33410 (Option!15194) Bool)

(assert (=> d!1720093 (= (isDefined!11897 lt!2187048) (not (isEmpty!33410 lt!2187048)))))

(declare-fun bs!1243791 () Bool)

(assert (= bs!1243791 d!1720093))

(declare-fun m!6398286 () Bool)

(assert (=> bs!1243791 m!6398286))

(assert (=> b!5370616 d!1720093))

(declare-fun d!1720095 () Bool)

(declare-fun choose!40337 (Int) Bool)

(assert (=> d!1720095 (= (Exists!2264 lambda!277071) (choose!40337 lambda!277071))))

(declare-fun bs!1243792 () Bool)

(assert (= bs!1243792 d!1720095))

(declare-fun m!6398308 () Bool)

(assert (=> bs!1243792 m!6398308))

(assert (=> b!5370616 d!1720095))

(declare-fun d!1720099 () Bool)

(assert (=> d!1720099 (= (Exists!2264 lambda!277070) (choose!40337 lambda!277070))))

(declare-fun bs!1243793 () Bool)

(assert (= bs!1243793 d!1720099))

(declare-fun m!6398310 () Bool)

(assert (=> bs!1243793 m!6398310))

(assert (=> b!5370616 d!1720099))

(declare-fun bs!1243796 () Bool)

(declare-fun d!1720101 () Bool)

(assert (= bs!1243796 (and d!1720101 b!5370594)))

(declare-fun lambda!277095 () Int)

(assert (=> bs!1243796 (= (= lt!2187036 (regOne!30678 r!7292)) (= lambda!277095 lambda!277067))))

(assert (=> bs!1243796 (not (= lambda!277095 lambda!277068))))

(declare-fun bs!1243797 () Bool)

(assert (= bs!1243797 (and d!1720101 b!5370616)))

(assert (=> bs!1243797 (= lambda!277095 lambda!277070)))

(assert (=> bs!1243797 (not (= lambda!277095 lambda!277071))))

(assert (=> d!1720101 true))

(assert (=> d!1720101 true))

(assert (=> d!1720101 true))

(assert (=> d!1720101 (= (isDefined!11897 (findConcatSeparation!1608 lt!2187036 (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326)) (Exists!2264 lambda!277095))))

(declare-fun lt!2187125 () Unit!153850)

(declare-fun choose!40338 (Regex!15083 Regex!15083 List!61550) Unit!153850)

(assert (=> d!1720101 (= lt!2187125 (choose!40338 lt!2187036 (regTwo!30678 r!7292) s!2326))))

(assert (=> d!1720101 (validRegex!6819 lt!2187036)))

(assert (=> d!1720101 (= (lemmaFindConcatSeparationEquivalentToExists!1372 lt!2187036 (regTwo!30678 r!7292) s!2326) lt!2187125)))

(declare-fun bs!1243798 () Bool)

(assert (= bs!1243798 d!1720101))

(declare-fun m!6398316 () Bool)

(assert (=> bs!1243798 m!6398316))

(assert (=> bs!1243798 m!6398272))

(declare-fun m!6398318 () Bool)

(assert (=> bs!1243798 m!6398318))

(assert (=> bs!1243798 m!6398094))

(assert (=> bs!1243798 m!6398094))

(declare-fun m!6398320 () Bool)

(assert (=> bs!1243798 m!6398320))

(assert (=> b!5370616 d!1720101))

(declare-fun b!5370949 () Bool)

(declare-fun e!3332688 () List!61550)

(assert (=> b!5370949 (= e!3332688 (_2!35585 lt!2187033))))

(declare-fun b!5370952 () Bool)

(declare-fun e!3332687 () Bool)

(declare-fun lt!2187132 () List!61550)

(assert (=> b!5370952 (= e!3332687 (or (not (= (_2!35585 lt!2187033) Nil!61426)) (= lt!2187132 (_1!35585 lt!2187033))))))

(declare-fun b!5370950 () Bool)

(assert (=> b!5370950 (= e!3332688 (Cons!61426 (h!67874 (_1!35585 lt!2187033)) (++!13386 (t!374773 (_1!35585 lt!2187033)) (_2!35585 lt!2187033))))))

(declare-fun b!5370951 () Bool)

(declare-fun res!2279456 () Bool)

(assert (=> b!5370951 (=> (not res!2279456) (not e!3332687))))

(declare-fun size!39793 (List!61550) Int)

(assert (=> b!5370951 (= res!2279456 (= (size!39793 lt!2187132) (+ (size!39793 (_1!35585 lt!2187033)) (size!39793 (_2!35585 lt!2187033)))))))

(declare-fun d!1720105 () Bool)

(assert (=> d!1720105 e!3332687))

(declare-fun res!2279455 () Bool)

(assert (=> d!1720105 (=> (not res!2279455) (not e!3332687))))

(declare-fun content!10979 (List!61550) (InoxSet C!30436))

(assert (=> d!1720105 (= res!2279455 (= (content!10979 lt!2187132) ((_ map or) (content!10979 (_1!35585 lt!2187033)) (content!10979 (_2!35585 lt!2187033)))))))

(assert (=> d!1720105 (= lt!2187132 e!3332688)))

(declare-fun c!935882 () Bool)

(assert (=> d!1720105 (= c!935882 ((_ is Nil!61426) (_1!35585 lt!2187033)))))

(assert (=> d!1720105 (= (++!13386 (_1!35585 lt!2187033) (_2!35585 lt!2187033)) lt!2187132)))

(assert (= (and d!1720105 c!935882) b!5370949))

(assert (= (and d!1720105 (not c!935882)) b!5370950))

(assert (= (and d!1720105 res!2279455) b!5370951))

(assert (= (and b!5370951 res!2279456) b!5370952))

(declare-fun m!6398342 () Bool)

(assert (=> b!5370950 m!6398342))

(declare-fun m!6398344 () Bool)

(assert (=> b!5370951 m!6398344))

(declare-fun m!6398346 () Bool)

(assert (=> b!5370951 m!6398346))

(declare-fun m!6398348 () Bool)

(assert (=> b!5370951 m!6398348))

(declare-fun m!6398350 () Bool)

(assert (=> d!1720105 m!6398350))

(declare-fun m!6398352 () Bool)

(assert (=> d!1720105 m!6398352))

(declare-fun m!6398354 () Bool)

(assert (=> d!1720105 m!6398354))

(assert (=> b!5370616 d!1720105))

(declare-fun bs!1243814 () Bool)

(declare-fun d!1720111 () Bool)

(assert (= bs!1243814 (and d!1720111 b!5370594)))

(declare-fun lambda!277116 () Int)

(assert (=> bs!1243814 (= (= lt!2187036 (regOne!30678 r!7292)) (= lambda!277116 lambda!277067))))

(declare-fun bs!1243815 () Bool)

(assert (= bs!1243815 (and d!1720111 b!5370616)))

(assert (=> bs!1243815 (= lambda!277116 lambda!277070)))

(assert (=> bs!1243814 (not (= lambda!277116 lambda!277068))))

(declare-fun bs!1243816 () Bool)

(assert (= bs!1243816 (and d!1720111 d!1720101)))

(assert (=> bs!1243816 (= lambda!277116 lambda!277095)))

(assert (=> bs!1243815 (not (= lambda!277116 lambda!277071))))

(assert (=> d!1720111 true))

(assert (=> d!1720111 true))

(assert (=> d!1720111 true))

(declare-fun lambda!277117 () Int)

(assert (=> bs!1243814 (not (= lambda!277117 lambda!277067))))

(assert (=> bs!1243815 (not (= lambda!277117 lambda!277070))))

(assert (=> bs!1243814 (= (= lt!2187036 (regOne!30678 r!7292)) (= lambda!277117 lambda!277068))))

(assert (=> bs!1243816 (not (= lambda!277117 lambda!277095))))

(declare-fun bs!1243817 () Bool)

(assert (= bs!1243817 d!1720111))

(assert (=> bs!1243817 (not (= lambda!277117 lambda!277116))))

(assert (=> bs!1243815 (= lambda!277117 lambda!277071)))

(assert (=> d!1720111 true))

(assert (=> d!1720111 true))

(assert (=> d!1720111 true))

(assert (=> d!1720111 (= (Exists!2264 lambda!277116) (Exists!2264 lambda!277117))))

(declare-fun lt!2187152 () Unit!153850)

(declare-fun choose!40340 (Regex!15083 Regex!15083 List!61550) Unit!153850)

(assert (=> d!1720111 (= lt!2187152 (choose!40340 lt!2187036 (regTwo!30678 r!7292) s!2326))))

(assert (=> d!1720111 (validRegex!6819 lt!2187036)))

(assert (=> d!1720111 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!918 lt!2187036 (regTwo!30678 r!7292) s!2326) lt!2187152)))

(declare-fun m!6398402 () Bool)

(assert (=> bs!1243817 m!6398402))

(declare-fun m!6398404 () Bool)

(assert (=> bs!1243817 m!6398404))

(declare-fun m!6398406 () Bool)

(assert (=> bs!1243817 m!6398406))

(assert (=> bs!1243817 m!6398272))

(assert (=> b!5370616 d!1720111))

(declare-fun d!1720125 () Bool)

(declare-fun c!935911 () Bool)

(assert (=> d!1720125 (= c!935911 (isEmpty!33406 s!2326))))

(declare-fun e!3332724 () Bool)

(assert (=> d!1720125 (= (matchZipper!1327 lt!2187068 s!2326) e!3332724)))

(declare-fun b!5371016 () Bool)

(declare-fun nullableZipper!1402 ((InoxSet Context!8934)) Bool)

(assert (=> b!5371016 (= e!3332724 (nullableZipper!1402 lt!2187068))))

(declare-fun b!5371017 () Bool)

(declare-fun head!11522 (List!61550) C!30436)

(declare-fun tail!10619 (List!61550) List!61550)

(assert (=> b!5371017 (= e!3332724 (matchZipper!1327 (derivationStepZipper!1322 lt!2187068 (head!11522 s!2326)) (tail!10619 s!2326)))))

(assert (= (and d!1720125 c!935911) b!5371016))

(assert (= (and d!1720125 (not c!935911)) b!5371017))

(declare-fun m!6398420 () Bool)

(assert (=> d!1720125 m!6398420))

(declare-fun m!6398422 () Bool)

(assert (=> b!5371016 m!6398422))

(declare-fun m!6398424 () Bool)

(assert (=> b!5371017 m!6398424))

(assert (=> b!5371017 m!6398424))

(declare-fun m!6398426 () Bool)

(assert (=> b!5371017 m!6398426))

(declare-fun m!6398428 () Bool)

(assert (=> b!5371017 m!6398428))

(assert (=> b!5371017 m!6398426))

(assert (=> b!5371017 m!6398428))

(declare-fun m!6398430 () Bool)

(assert (=> b!5371017 m!6398430))

(assert (=> b!5370617 d!1720125))

(declare-fun d!1720133 () Bool)

(declare-fun c!935912 () Bool)

(assert (=> d!1720133 (= c!935912 (isEmpty!33406 (t!374773 s!2326)))))

(declare-fun e!3332725 () Bool)

(assert (=> d!1720133 (= (matchZipper!1327 lt!2187061 (t!374773 s!2326)) e!3332725)))

(declare-fun b!5371018 () Bool)

(assert (=> b!5371018 (= e!3332725 (nullableZipper!1402 lt!2187061))))

(declare-fun b!5371019 () Bool)

(assert (=> b!5371019 (= e!3332725 (matchZipper!1327 (derivationStepZipper!1322 lt!2187061 (head!11522 (t!374773 s!2326))) (tail!10619 (t!374773 s!2326))))))

(assert (= (and d!1720133 c!935912) b!5371018))

(assert (= (and d!1720133 (not c!935912)) b!5371019))

(declare-fun m!6398432 () Bool)

(assert (=> d!1720133 m!6398432))

(declare-fun m!6398434 () Bool)

(assert (=> b!5371018 m!6398434))

(declare-fun m!6398436 () Bool)

(assert (=> b!5371019 m!6398436))

(assert (=> b!5371019 m!6398436))

(declare-fun m!6398438 () Bool)

(assert (=> b!5371019 m!6398438))

(declare-fun m!6398440 () Bool)

(assert (=> b!5371019 m!6398440))

(assert (=> b!5371019 m!6398438))

(assert (=> b!5371019 m!6398440))

(declare-fun m!6398442 () Bool)

(assert (=> b!5371019 m!6398442))

(assert (=> b!5370617 d!1720133))

(declare-fun b!5371096 () Bool)

(declare-fun e!3332771 () Int)

(declare-fun call!384608 () Int)

(assert (=> b!5371096 (= e!3332771 (+ 1 call!384608))))

(declare-fun bm!384598 () Bool)

(declare-fun call!384603 () Int)

(declare-fun c!935950 () Bool)

(assert (=> bm!384598 (= call!384603 (regexDepth!171 (ite c!935950 (regOne!30679 r!7292) (regTwo!30678 r!7292))))))

(declare-fun b!5371097 () Bool)

(declare-fun e!3332777 () Bool)

(declare-fun lt!2187165 () Int)

(declare-fun call!384604 () Int)

(assert (=> b!5371097 (= e!3332777 (> lt!2187165 call!384604))))

(declare-fun call!384606 () Int)

(declare-fun bm!384599 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!384599 (= call!384608 (maxBigInt!0 (ite c!935950 call!384603 call!384606) (ite c!935950 call!384606 call!384603)))))

(declare-fun b!5371098 () Bool)

(declare-fun e!3332772 () Int)

(assert (=> b!5371098 (= e!3332772 e!3332771)))

(declare-fun c!935949 () Bool)

(assert (=> b!5371098 (= c!935949 ((_ is Concat!23928) r!7292))))

(declare-fun bm!384600 () Bool)

(declare-fun call!384605 () Int)

(declare-fun c!935948 () Bool)

(assert (=> bm!384600 (= call!384605 (regexDepth!171 (ite c!935948 (regOne!30679 r!7292) (regTwo!30678 r!7292))))))

(declare-fun b!5371099 () Bool)

(declare-fun e!3332775 () Int)

(assert (=> b!5371099 (= e!3332775 1)))

(declare-fun b!5371100 () Bool)

(assert (=> b!5371100 (= c!935950 ((_ is Union!15083) r!7292))))

(declare-fun e!3332779 () Int)

(assert (=> b!5371100 (= e!3332779 e!3332772)))

(declare-fun b!5371101 () Bool)

(declare-fun e!3332778 () Bool)

(declare-fun e!3332773 () Bool)

(assert (=> b!5371101 (= e!3332778 e!3332773)))

(declare-fun c!935945 () Bool)

(assert (=> b!5371101 (= c!935945 ((_ is Concat!23928) r!7292))))

(declare-fun b!5371102 () Bool)

(declare-fun c!935947 () Bool)

(assert (=> b!5371102 (= c!935947 ((_ is Star!15083) r!7292))))

(assert (=> b!5371102 (= e!3332773 e!3332777)))

(declare-fun call!384609 () Int)

(declare-fun bm!384601 () Bool)

(assert (=> bm!384601 (= call!384609 (regexDepth!171 (ite c!935948 (regTwo!30679 r!7292) (ite c!935945 (regOne!30678 r!7292) (reg!15412 r!7292)))))))

(declare-fun b!5371103 () Bool)

(assert (=> b!5371103 (= e!3332771 1)))

(declare-fun b!5371104 () Bool)

(declare-fun e!3332770 () Bool)

(assert (=> b!5371104 (= e!3332770 (> lt!2187165 call!384605))))

(declare-fun b!5371105 () Bool)

(declare-fun e!3332774 () Bool)

(assert (=> b!5371105 (= e!3332774 e!3332778)))

(assert (=> b!5371105 (= c!935948 ((_ is Union!15083) r!7292))))

(declare-fun b!5371106 () Bool)

(declare-fun call!384607 () Int)

(assert (=> b!5371106 (= e!3332779 (+ 1 call!384607))))

(declare-fun b!5371107 () Bool)

(assert (=> b!5371107 (= e!3332775 e!3332779)))

(declare-fun c!935951 () Bool)

(assert (=> b!5371107 (= c!935951 ((_ is Star!15083) r!7292))))

(declare-fun b!5371108 () Bool)

(assert (=> b!5371108 (= e!3332777 (= lt!2187165 1))))

(declare-fun b!5371109 () Bool)

(declare-fun e!3332776 () Bool)

(assert (=> b!5371109 (= e!3332778 e!3332776)))

(declare-fun res!2279489 () Bool)

(assert (=> b!5371109 (= res!2279489 (> lt!2187165 call!384605))))

(assert (=> b!5371109 (=> (not res!2279489) (not e!3332776))))

(declare-fun b!5371110 () Bool)

(assert (=> b!5371110 (= e!3332772 (+ 1 call!384608))))

(declare-fun b!5371111 () Bool)

(assert (=> b!5371111 (= e!3332776 (> lt!2187165 call!384609))))

(declare-fun b!5371112 () Bool)

(declare-fun res!2279490 () Bool)

(assert (=> b!5371112 (=> (not res!2279490) (not e!3332770))))

(assert (=> b!5371112 (= res!2279490 (> lt!2187165 call!384604))))

(assert (=> b!5371112 (= e!3332773 e!3332770)))

(declare-fun d!1720135 () Bool)

(assert (=> d!1720135 e!3332774))

(declare-fun res!2279488 () Bool)

(assert (=> d!1720135 (=> (not res!2279488) (not e!3332774))))

(assert (=> d!1720135 (= res!2279488 (> lt!2187165 0))))

(assert (=> d!1720135 (= lt!2187165 e!3332775)))

(declare-fun c!935946 () Bool)

(assert (=> d!1720135 (= c!935946 ((_ is ElementMatch!15083) r!7292))))

(assert (=> d!1720135 (= (regexDepth!171 r!7292) lt!2187165)))

(declare-fun bm!384602 () Bool)

(assert (=> bm!384602 (= call!384606 call!384607)))

(declare-fun bm!384603 () Bool)

(assert (=> bm!384603 (= call!384607 (regexDepth!171 (ite c!935951 (reg!15412 r!7292) (ite c!935950 (regTwo!30679 r!7292) (regOne!30678 r!7292)))))))

(declare-fun bm!384604 () Bool)

(assert (=> bm!384604 (= call!384604 call!384609)))

(assert (= (and d!1720135 c!935946) b!5371099))

(assert (= (and d!1720135 (not c!935946)) b!5371107))

(assert (= (and b!5371107 c!935951) b!5371106))

(assert (= (and b!5371107 (not c!935951)) b!5371100))

(assert (= (and b!5371100 c!935950) b!5371110))

(assert (= (and b!5371100 (not c!935950)) b!5371098))

(assert (= (and b!5371098 c!935949) b!5371096))

(assert (= (and b!5371098 (not c!935949)) b!5371103))

(assert (= (or b!5371110 b!5371096) bm!384602))

(assert (= (or b!5371110 b!5371096) bm!384598))

(assert (= (or b!5371110 b!5371096) bm!384599))

(assert (= (or b!5371106 bm!384602) bm!384603))

(assert (= (and d!1720135 res!2279488) b!5371105))

(assert (= (and b!5371105 c!935948) b!5371109))

(assert (= (and b!5371105 (not c!935948)) b!5371101))

(assert (= (and b!5371109 res!2279489) b!5371111))

(assert (= (and b!5371101 c!935945) b!5371112))

(assert (= (and b!5371101 (not c!935945)) b!5371102))

(assert (= (and b!5371112 res!2279490) b!5371104))

(assert (= (and b!5371102 c!935947) b!5371097))

(assert (= (and b!5371102 (not c!935947)) b!5371108))

(assert (= (or b!5371112 b!5371097) bm!384604))

(assert (= (or b!5371111 bm!384604) bm!384601))

(assert (= (or b!5371109 b!5371104) bm!384600))

(declare-fun m!6398496 () Bool)

(assert (=> bm!384599 m!6398496))

(declare-fun m!6398498 () Bool)

(assert (=> bm!384603 m!6398498))

(declare-fun m!6398500 () Bool)

(assert (=> bm!384601 m!6398500))

(declare-fun m!6398502 () Bool)

(assert (=> bm!384600 m!6398502))

(declare-fun m!6398504 () Bool)

(assert (=> bm!384598 m!6398504))

(assert (=> b!5370598 d!1720135))

(declare-fun b!5371113 () Bool)

(declare-fun e!3332781 () Int)

(declare-fun call!384615 () Int)

(assert (=> b!5371113 (= e!3332781 (+ 1 call!384615))))

(declare-fun bm!384605 () Bool)

(declare-fun call!384610 () Int)

(declare-fun c!935957 () Bool)

(assert (=> bm!384605 (= call!384610 (regexDepth!171 (ite c!935957 (regOne!30679 lt!2187044) (regTwo!30678 lt!2187044))))))

(declare-fun b!5371114 () Bool)

(declare-fun e!3332787 () Bool)

(declare-fun lt!2187166 () Int)

(declare-fun call!384611 () Int)

(assert (=> b!5371114 (= e!3332787 (> lt!2187166 call!384611))))

(declare-fun call!384613 () Int)

(declare-fun bm!384606 () Bool)

(assert (=> bm!384606 (= call!384615 (maxBigInt!0 (ite c!935957 call!384610 call!384613) (ite c!935957 call!384613 call!384610)))))

(declare-fun b!5371115 () Bool)

(declare-fun e!3332782 () Int)

(assert (=> b!5371115 (= e!3332782 e!3332781)))

(declare-fun c!935956 () Bool)

(assert (=> b!5371115 (= c!935956 ((_ is Concat!23928) lt!2187044))))

(declare-fun bm!384607 () Bool)

(declare-fun call!384612 () Int)

(declare-fun c!935955 () Bool)

(assert (=> bm!384607 (= call!384612 (regexDepth!171 (ite c!935955 (regOne!30679 lt!2187044) (regTwo!30678 lt!2187044))))))

(declare-fun b!5371116 () Bool)

(declare-fun e!3332785 () Int)

(assert (=> b!5371116 (= e!3332785 1)))

(declare-fun b!5371117 () Bool)

(assert (=> b!5371117 (= c!935957 ((_ is Union!15083) lt!2187044))))

(declare-fun e!3332789 () Int)

(assert (=> b!5371117 (= e!3332789 e!3332782)))

(declare-fun b!5371118 () Bool)

(declare-fun e!3332788 () Bool)

(declare-fun e!3332783 () Bool)

(assert (=> b!5371118 (= e!3332788 e!3332783)))

(declare-fun c!935952 () Bool)

(assert (=> b!5371118 (= c!935952 ((_ is Concat!23928) lt!2187044))))

(declare-fun b!5371119 () Bool)

(declare-fun c!935954 () Bool)

(assert (=> b!5371119 (= c!935954 ((_ is Star!15083) lt!2187044))))

(assert (=> b!5371119 (= e!3332783 e!3332787)))

(declare-fun call!384616 () Int)

(declare-fun bm!384608 () Bool)

(assert (=> bm!384608 (= call!384616 (regexDepth!171 (ite c!935955 (regTwo!30679 lt!2187044) (ite c!935952 (regOne!30678 lt!2187044) (reg!15412 lt!2187044)))))))

(declare-fun b!5371120 () Bool)

(assert (=> b!5371120 (= e!3332781 1)))

(declare-fun b!5371121 () Bool)

(declare-fun e!3332780 () Bool)

(assert (=> b!5371121 (= e!3332780 (> lt!2187166 call!384612))))

(declare-fun b!5371122 () Bool)

(declare-fun e!3332784 () Bool)

(assert (=> b!5371122 (= e!3332784 e!3332788)))

(assert (=> b!5371122 (= c!935955 ((_ is Union!15083) lt!2187044))))

(declare-fun b!5371123 () Bool)

(declare-fun call!384614 () Int)

(assert (=> b!5371123 (= e!3332789 (+ 1 call!384614))))

(declare-fun b!5371124 () Bool)

(assert (=> b!5371124 (= e!3332785 e!3332789)))

(declare-fun c!935958 () Bool)

(assert (=> b!5371124 (= c!935958 ((_ is Star!15083) lt!2187044))))

(declare-fun b!5371125 () Bool)

(assert (=> b!5371125 (= e!3332787 (= lt!2187166 1))))

(declare-fun b!5371126 () Bool)

(declare-fun e!3332786 () Bool)

(assert (=> b!5371126 (= e!3332788 e!3332786)))

(declare-fun res!2279492 () Bool)

(assert (=> b!5371126 (= res!2279492 (> lt!2187166 call!384612))))

(assert (=> b!5371126 (=> (not res!2279492) (not e!3332786))))

(declare-fun b!5371127 () Bool)

(assert (=> b!5371127 (= e!3332782 (+ 1 call!384615))))

(declare-fun b!5371128 () Bool)

(assert (=> b!5371128 (= e!3332786 (> lt!2187166 call!384616))))

(declare-fun b!5371129 () Bool)

(declare-fun res!2279493 () Bool)

(assert (=> b!5371129 (=> (not res!2279493) (not e!3332780))))

(assert (=> b!5371129 (= res!2279493 (> lt!2187166 call!384611))))

(assert (=> b!5371129 (= e!3332783 e!3332780)))

(declare-fun d!1720159 () Bool)

(assert (=> d!1720159 e!3332784))

(declare-fun res!2279491 () Bool)

(assert (=> d!1720159 (=> (not res!2279491) (not e!3332784))))

(assert (=> d!1720159 (= res!2279491 (> lt!2187166 0))))

(assert (=> d!1720159 (= lt!2187166 e!3332785)))

(declare-fun c!935953 () Bool)

(assert (=> d!1720159 (= c!935953 ((_ is ElementMatch!15083) lt!2187044))))

(assert (=> d!1720159 (= (regexDepth!171 lt!2187044) lt!2187166)))

(declare-fun bm!384609 () Bool)

(assert (=> bm!384609 (= call!384613 call!384614)))

(declare-fun bm!384610 () Bool)

(assert (=> bm!384610 (= call!384614 (regexDepth!171 (ite c!935958 (reg!15412 lt!2187044) (ite c!935957 (regTwo!30679 lt!2187044) (regOne!30678 lt!2187044)))))))

(declare-fun bm!384611 () Bool)

(assert (=> bm!384611 (= call!384611 call!384616)))

(assert (= (and d!1720159 c!935953) b!5371116))

(assert (= (and d!1720159 (not c!935953)) b!5371124))

(assert (= (and b!5371124 c!935958) b!5371123))

(assert (= (and b!5371124 (not c!935958)) b!5371117))

(assert (= (and b!5371117 c!935957) b!5371127))

(assert (= (and b!5371117 (not c!935957)) b!5371115))

(assert (= (and b!5371115 c!935956) b!5371113))

(assert (= (and b!5371115 (not c!935956)) b!5371120))

(assert (= (or b!5371127 b!5371113) bm!384609))

(assert (= (or b!5371127 b!5371113) bm!384605))

(assert (= (or b!5371127 b!5371113) bm!384606))

(assert (= (or b!5371123 bm!384609) bm!384610))

(assert (= (and d!1720159 res!2279491) b!5371122))

(assert (= (and b!5371122 c!935955) b!5371126))

(assert (= (and b!5371122 (not c!935955)) b!5371118))

(assert (= (and b!5371126 res!2279492) b!5371128))

(assert (= (and b!5371118 c!935952) b!5371129))

(assert (= (and b!5371118 (not c!935952)) b!5371119))

(assert (= (and b!5371129 res!2279493) b!5371121))

(assert (= (and b!5371119 c!935954) b!5371114))

(assert (= (and b!5371119 (not c!935954)) b!5371125))

(assert (= (or b!5371129 b!5371114) bm!384611))

(assert (= (or b!5371128 bm!384611) bm!384608))

(assert (= (or b!5371126 b!5371121) bm!384607))

(declare-fun m!6398506 () Bool)

(assert (=> bm!384606 m!6398506))

(declare-fun m!6398508 () Bool)

(assert (=> bm!384610 m!6398508))

(declare-fun m!6398510 () Bool)

(assert (=> bm!384608 m!6398510))

(declare-fun m!6398512 () Bool)

(assert (=> bm!384607 m!6398512))

(declare-fun m!6398514 () Bool)

(assert (=> bm!384605 m!6398514))

(assert (=> b!5370598 d!1720159))

(declare-fun b!5371189 () Bool)

(declare-fun e!3332826 () Bool)

(declare-fun e!3332824 () Bool)

(assert (=> b!5371189 (= e!3332826 e!3332824)))

(declare-fun c!935985 () Bool)

(declare-fun tail!10620 (List!61548) List!61548)

(assert (=> b!5371189 (= c!935985 (isEmpty!33408 (tail!10620 (t!374771 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun b!5371190 () Bool)

(declare-fun lt!2187170 () Regex!15083)

(declare-fun isEmptyExpr!936 (Regex!15083) Bool)

(assert (=> b!5371190 (= e!3332826 (isEmptyExpr!936 lt!2187170))))

(declare-fun b!5371191 () Bool)

(declare-fun isConcat!459 (Regex!15083) Bool)

(assert (=> b!5371191 (= e!3332824 (isConcat!459 lt!2187170))))

(declare-fun b!5371193 () Bool)

(declare-fun e!3332825 () Regex!15083)

(declare-fun e!3332829 () Regex!15083)

(assert (=> b!5371193 (= e!3332825 e!3332829)))

(declare-fun c!935986 () Bool)

(assert (=> b!5371193 (= c!935986 ((_ is Cons!61424) (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371194 () Bool)

(assert (=> b!5371194 (= e!3332829 (Concat!23928 (h!67872 (t!374771 (exprs!4967 (h!67873 zl!343)))) (generalisedConcat!752 (t!374771 (t!374771 (exprs!4967 (h!67873 zl!343)))))))))

(declare-fun b!5371195 () Bool)

(declare-fun e!3332828 () Bool)

(assert (=> b!5371195 (= e!3332828 (isEmpty!33408 (t!374771 (t!374771 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun b!5371196 () Bool)

(assert (=> b!5371196 (= e!3332825 (h!67872 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371192 () Bool)

(declare-fun head!11523 (List!61548) Regex!15083)

(assert (=> b!5371192 (= e!3332824 (= lt!2187170 (head!11523 (t!374771 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun d!1720161 () Bool)

(declare-fun e!3332827 () Bool)

(assert (=> d!1720161 e!3332827))

(declare-fun res!2279504 () Bool)

(assert (=> d!1720161 (=> (not res!2279504) (not e!3332827))))

(assert (=> d!1720161 (= res!2279504 (validRegex!6819 lt!2187170))))

(assert (=> d!1720161 (= lt!2187170 e!3332825)))

(declare-fun c!935984 () Bool)

(assert (=> d!1720161 (= c!935984 e!3332828)))

(declare-fun res!2279503 () Bool)

(assert (=> d!1720161 (=> (not res!2279503) (not e!3332828))))

(assert (=> d!1720161 (= res!2279503 ((_ is Cons!61424) (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun lambda!277124 () Int)

(declare-fun forall!14493 (List!61548 Int) Bool)

(assert (=> d!1720161 (forall!14493 (t!374771 (exprs!4967 (h!67873 zl!343))) lambda!277124)))

(assert (=> d!1720161 (= (generalisedConcat!752 (t!374771 (exprs!4967 (h!67873 zl!343)))) lt!2187170)))

(declare-fun b!5371197 () Bool)

(assert (=> b!5371197 (= e!3332829 EmptyExpr!15083)))

(declare-fun b!5371198 () Bool)

(assert (=> b!5371198 (= e!3332827 e!3332826)))

(declare-fun c!935987 () Bool)

(assert (=> b!5371198 (= c!935987 (isEmpty!33408 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(assert (= (and d!1720161 res!2279503) b!5371195))

(assert (= (and d!1720161 c!935984) b!5371196))

(assert (= (and d!1720161 (not c!935984)) b!5371193))

(assert (= (and b!5371193 c!935986) b!5371194))

(assert (= (and b!5371193 (not c!935986)) b!5371197))

(assert (= (and d!1720161 res!2279504) b!5371198))

(assert (= (and b!5371198 c!935987) b!5371190))

(assert (= (and b!5371198 (not c!935987)) b!5371189))

(assert (= (and b!5371189 c!935985) b!5371192))

(assert (= (and b!5371189 (not c!935985)) b!5371191))

(declare-fun m!6398564 () Bool)

(assert (=> b!5371190 m!6398564))

(declare-fun m!6398566 () Bool)

(assert (=> b!5371189 m!6398566))

(assert (=> b!5371189 m!6398566))

(declare-fun m!6398568 () Bool)

(assert (=> b!5371189 m!6398568))

(declare-fun m!6398570 () Bool)

(assert (=> b!5371191 m!6398570))

(declare-fun m!6398572 () Bool)

(assert (=> d!1720161 m!6398572))

(declare-fun m!6398574 () Bool)

(assert (=> d!1720161 m!6398574))

(declare-fun m!6398576 () Bool)

(assert (=> b!5371192 m!6398576))

(declare-fun m!6398578 () Bool)

(assert (=> b!5371195 m!6398578))

(assert (=> b!5371198 m!6398002))

(declare-fun m!6398580 () Bool)

(assert (=> b!5371194 m!6398580))

(assert (=> b!5370598 d!1720161))

(declare-fun b!5371245 () Bool)

(declare-fun e!3332866 () Bool)

(declare-fun e!3332865 () Bool)

(assert (=> b!5371245 (= e!3332866 e!3332865)))

(declare-fun res!2279531 () Bool)

(assert (=> b!5371245 (=> (not res!2279531) (not e!3332865))))

(declare-fun call!384640 () Bool)

(assert (=> b!5371245 (= res!2279531 call!384640)))

(declare-fun bm!384633 () Bool)

(declare-fun c!936001 () Bool)

(assert (=> bm!384633 (= call!384640 (validRegex!6819 (ite c!936001 (regOne!30679 r!7292) (regOne!30678 r!7292))))))

(declare-fun b!5371246 () Bool)

(declare-fun e!3332862 () Bool)

(declare-fun e!3332861 () Bool)

(assert (=> b!5371246 (= e!3332862 e!3332861)))

(declare-fun c!936000 () Bool)

(assert (=> b!5371246 (= c!936000 ((_ is Star!15083) r!7292))))

(declare-fun d!1720181 () Bool)

(declare-fun res!2279528 () Bool)

(assert (=> d!1720181 (=> res!2279528 e!3332862)))

(assert (=> d!1720181 (= res!2279528 ((_ is ElementMatch!15083) r!7292))))

(assert (=> d!1720181 (= (validRegex!6819 r!7292) e!3332862)))

(declare-fun b!5371247 () Bool)

(declare-fun e!3332863 () Bool)

(assert (=> b!5371247 (= e!3332861 e!3332863)))

(declare-fun res!2279529 () Bool)

(assert (=> b!5371247 (= res!2279529 (not (nullable!5252 (reg!15412 r!7292))))))

(assert (=> b!5371247 (=> (not res!2279529) (not e!3332863))))

(declare-fun b!5371248 () Bool)

(declare-fun e!3332864 () Bool)

(assert (=> b!5371248 (= e!3332861 e!3332864)))

(assert (=> b!5371248 (= c!936001 ((_ is Union!15083) r!7292))))

(declare-fun bm!384634 () Bool)

(declare-fun call!384638 () Bool)

(declare-fun call!384639 () Bool)

(assert (=> bm!384634 (= call!384638 call!384639)))

(declare-fun b!5371249 () Bool)

(declare-fun res!2279530 () Bool)

(assert (=> b!5371249 (=> res!2279530 e!3332866)))

(assert (=> b!5371249 (= res!2279530 (not ((_ is Concat!23928) r!7292)))))

(assert (=> b!5371249 (= e!3332864 e!3332866)))

(declare-fun b!5371250 () Bool)

(assert (=> b!5371250 (= e!3332863 call!384639)))

(declare-fun b!5371251 () Bool)

(declare-fun res!2279527 () Bool)

(declare-fun e!3332860 () Bool)

(assert (=> b!5371251 (=> (not res!2279527) (not e!3332860))))

(assert (=> b!5371251 (= res!2279527 call!384640)))

(assert (=> b!5371251 (= e!3332864 e!3332860)))

(declare-fun b!5371252 () Bool)

(assert (=> b!5371252 (= e!3332865 call!384638)))

(declare-fun b!5371253 () Bool)

(assert (=> b!5371253 (= e!3332860 call!384638)))

(declare-fun bm!384635 () Bool)

(assert (=> bm!384635 (= call!384639 (validRegex!6819 (ite c!936000 (reg!15412 r!7292) (ite c!936001 (regTwo!30679 r!7292) (regTwo!30678 r!7292)))))))

(assert (= (and d!1720181 (not res!2279528)) b!5371246))

(assert (= (and b!5371246 c!936000) b!5371247))

(assert (= (and b!5371246 (not c!936000)) b!5371248))

(assert (= (and b!5371247 res!2279529) b!5371250))

(assert (= (and b!5371248 c!936001) b!5371251))

(assert (= (and b!5371248 (not c!936001)) b!5371249))

(assert (= (and b!5371251 res!2279527) b!5371253))

(assert (= (and b!5371249 (not res!2279530)) b!5371245))

(assert (= (and b!5371245 res!2279531) b!5371252))

(assert (= (or b!5371253 b!5371252) bm!384634))

(assert (= (or b!5371251 b!5371245) bm!384633))

(assert (= (or b!5371250 bm!384634) bm!384635))

(declare-fun m!6398582 () Bool)

(assert (=> bm!384633 m!6398582))

(declare-fun m!6398584 () Bool)

(assert (=> b!5371247 m!6398584))

(declare-fun m!6398586 () Bool)

(assert (=> bm!384635 m!6398586))

(assert (=> start!565106 d!1720181))

(declare-fun b!5371275 () Bool)

(assert (=> b!5371275 true))

(declare-fun bs!1243848 () Bool)

(declare-fun b!5371277 () Bool)

(assert (= bs!1243848 (and b!5371277 b!5371275)))

(declare-fun lt!2187180 () Int)

(declare-fun lambda!277138 () Int)

(declare-fun lambda!277139 () Int)

(declare-fun lt!2187181 () Int)

(assert (=> bs!1243848 (= (= lt!2187181 lt!2187180) (= lambda!277139 lambda!277138))))

(assert (=> b!5371277 true))

(declare-fun d!1720183 () Bool)

(declare-fun e!3332881 () Bool)

(assert (=> d!1720183 e!3332881))

(declare-fun res!2279541 () Bool)

(assert (=> d!1720183 (=> (not res!2279541) (not e!3332881))))

(assert (=> d!1720183 (= res!2279541 (>= lt!2187181 0))))

(declare-fun e!3332880 () Int)

(assert (=> d!1720183 (= lt!2187181 e!3332880)))

(declare-fun c!936014 () Bool)

(assert (=> d!1720183 (= c!936014 ((_ is Cons!61425) zl!343))))

(assert (=> d!1720183 (= (zipperDepth!156 zl!343) lt!2187181)))

(assert (=> b!5371275 (= e!3332880 lt!2187180)))

(declare-fun contextDepth!90 (Context!8934) Int)

(assert (=> b!5371275 (= lt!2187180 (maxBigInt!0 (contextDepth!90 (h!67873 zl!343)) (zipperDepth!156 (t!374772 zl!343))))))

(declare-fun lambda!277137 () Int)

(declare-fun lt!2187179 () Unit!153850)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!84 (List!61549 Int Int Int) Unit!153850)

(assert (=> b!5371275 (= lt!2187179 (lemmaForallContextDepthBiggerThanTransitive!84 (t!374772 zl!343) lt!2187180 (zipperDepth!156 (t!374772 zl!343)) lambda!277137))))

(declare-fun forall!14495 (List!61549 Int) Bool)

(assert (=> b!5371275 (forall!14495 (t!374772 zl!343) lambda!277138)))

(declare-fun lt!2187182 () Unit!153850)

(assert (=> b!5371275 (= lt!2187182 lt!2187179)))

(declare-fun b!5371276 () Bool)

(assert (=> b!5371276 (= e!3332880 0)))

(assert (=> b!5371277 (= e!3332881 (forall!14495 zl!343 lambda!277139))))

(assert (= (and d!1720183 c!936014) b!5371275))

(assert (= (and d!1720183 (not c!936014)) b!5371276))

(assert (= (and d!1720183 res!2279541) b!5371277))

(declare-fun m!6398596 () Bool)

(assert (=> b!5371275 m!6398596))

(declare-fun m!6398600 () Bool)

(assert (=> b!5371275 m!6398600))

(declare-fun m!6398602 () Bool)

(assert (=> b!5371275 m!6398602))

(assert (=> b!5371275 m!6398596))

(declare-fun m!6398604 () Bool)

(assert (=> b!5371275 m!6398604))

(assert (=> b!5371275 m!6398596))

(declare-fun m!6398606 () Bool)

(assert (=> b!5371275 m!6398606))

(assert (=> b!5371275 m!6398602))

(declare-fun m!6398610 () Bool)

(assert (=> b!5371277 m!6398610))

(assert (=> b!5370599 d!1720183))

(declare-fun bs!1243849 () Bool)

(declare-fun b!5371294 () Bool)

(assert (= bs!1243849 (and b!5371294 b!5371275)))

(declare-fun lambda!277140 () Int)

(assert (=> bs!1243849 (= lambda!277140 lambda!277137)))

(declare-fun lt!2187185 () Int)

(declare-fun lambda!277141 () Int)

(assert (=> bs!1243849 (= (= lt!2187185 lt!2187180) (= lambda!277141 lambda!277138))))

(declare-fun bs!1243850 () Bool)

(assert (= bs!1243850 (and b!5371294 b!5371277)))

(assert (=> bs!1243850 (= (= lt!2187185 lt!2187181) (= lambda!277141 lambda!277139))))

(assert (=> b!5371294 true))

(declare-fun bs!1243851 () Bool)

(declare-fun b!5371296 () Bool)

(assert (= bs!1243851 (and b!5371296 b!5371275)))

(declare-fun lambda!277142 () Int)

(declare-fun lt!2187186 () Int)

(assert (=> bs!1243851 (= (= lt!2187186 lt!2187180) (= lambda!277142 lambda!277138))))

(declare-fun bs!1243852 () Bool)

(assert (= bs!1243852 (and b!5371296 b!5371277)))

(assert (=> bs!1243852 (= (= lt!2187186 lt!2187181) (= lambda!277142 lambda!277139))))

(declare-fun bs!1243853 () Bool)

(assert (= bs!1243853 (and b!5371296 b!5371294)))

(assert (=> bs!1243853 (= (= lt!2187186 lt!2187185) (= lambda!277142 lambda!277141))))

(assert (=> b!5371296 true))

(declare-fun d!1720187 () Bool)

(declare-fun e!3332890 () Bool)

(assert (=> d!1720187 e!3332890))

(declare-fun res!2279550 () Bool)

(assert (=> d!1720187 (=> (not res!2279550) (not e!3332890))))

(assert (=> d!1720187 (= res!2279550 (>= lt!2187186 0))))

(declare-fun e!3332889 () Int)

(assert (=> d!1720187 (= lt!2187186 e!3332889)))

(declare-fun c!936018 () Bool)

(assert (=> d!1720187 (= c!936018 ((_ is Cons!61425) lt!2187054))))

(assert (=> d!1720187 (= (zipperDepth!156 lt!2187054) lt!2187186)))

(assert (=> b!5371294 (= e!3332889 lt!2187185)))

(assert (=> b!5371294 (= lt!2187185 (maxBigInt!0 (contextDepth!90 (h!67873 lt!2187054)) (zipperDepth!156 (t!374772 lt!2187054))))))

(declare-fun lt!2187184 () Unit!153850)

(assert (=> b!5371294 (= lt!2187184 (lemmaForallContextDepthBiggerThanTransitive!84 (t!374772 lt!2187054) lt!2187185 (zipperDepth!156 (t!374772 lt!2187054)) lambda!277140))))

(assert (=> b!5371294 (forall!14495 (t!374772 lt!2187054) lambda!277141)))

(declare-fun lt!2187187 () Unit!153850)

(assert (=> b!5371294 (= lt!2187187 lt!2187184)))

(declare-fun b!5371295 () Bool)

(assert (=> b!5371295 (= e!3332889 0)))

(assert (=> b!5371296 (= e!3332890 (forall!14495 lt!2187054 lambda!277142))))

(assert (= (and d!1720187 c!936018) b!5371294))

(assert (= (and d!1720187 (not c!936018)) b!5371295))

(assert (= (and d!1720187 res!2279550) b!5371296))

(declare-fun m!6398614 () Bool)

(assert (=> b!5371294 m!6398614))

(declare-fun m!6398616 () Bool)

(assert (=> b!5371294 m!6398616))

(declare-fun m!6398618 () Bool)

(assert (=> b!5371294 m!6398618))

(assert (=> b!5371294 m!6398614))

(declare-fun m!6398620 () Bool)

(assert (=> b!5371294 m!6398620))

(assert (=> b!5371294 m!6398614))

(declare-fun m!6398622 () Bool)

(assert (=> b!5371294 m!6398622))

(assert (=> b!5371294 m!6398618))

(declare-fun m!6398624 () Bool)

(assert (=> b!5371296 m!6398624))

(assert (=> b!5370599 d!1720187))

(declare-fun b!5371297 () Bool)

(declare-fun e!3332897 () Bool)

(declare-fun e!3332896 () Bool)

(assert (=> b!5371297 (= e!3332897 e!3332896)))

(declare-fun res!2279555 () Bool)

(assert (=> b!5371297 (=> (not res!2279555) (not e!3332896))))

(declare-fun call!384650 () Bool)

(assert (=> b!5371297 (= res!2279555 call!384650)))

(declare-fun bm!384643 () Bool)

(declare-fun c!936020 () Bool)

(assert (=> bm!384643 (= call!384650 (validRegex!6819 (ite c!936020 (regOne!30679 lt!2187044) (regOne!30678 lt!2187044))))))

(declare-fun b!5371298 () Bool)

(declare-fun e!3332893 () Bool)

(declare-fun e!3332892 () Bool)

(assert (=> b!5371298 (= e!3332893 e!3332892)))

(declare-fun c!936019 () Bool)

(assert (=> b!5371298 (= c!936019 ((_ is Star!15083) lt!2187044))))

(declare-fun d!1720191 () Bool)

(declare-fun res!2279552 () Bool)

(assert (=> d!1720191 (=> res!2279552 e!3332893)))

(assert (=> d!1720191 (= res!2279552 ((_ is ElementMatch!15083) lt!2187044))))

(assert (=> d!1720191 (= (validRegex!6819 lt!2187044) e!3332893)))

(declare-fun b!5371299 () Bool)

(declare-fun e!3332894 () Bool)

(assert (=> b!5371299 (= e!3332892 e!3332894)))

(declare-fun res!2279553 () Bool)

(assert (=> b!5371299 (= res!2279553 (not (nullable!5252 (reg!15412 lt!2187044))))))

(assert (=> b!5371299 (=> (not res!2279553) (not e!3332894))))

(declare-fun b!5371300 () Bool)

(declare-fun e!3332895 () Bool)

(assert (=> b!5371300 (= e!3332892 e!3332895)))

(assert (=> b!5371300 (= c!936020 ((_ is Union!15083) lt!2187044))))

(declare-fun bm!384644 () Bool)

(declare-fun call!384648 () Bool)

(declare-fun call!384649 () Bool)

(assert (=> bm!384644 (= call!384648 call!384649)))

(declare-fun b!5371301 () Bool)

(declare-fun res!2279554 () Bool)

(assert (=> b!5371301 (=> res!2279554 e!3332897)))

(assert (=> b!5371301 (= res!2279554 (not ((_ is Concat!23928) lt!2187044)))))

(assert (=> b!5371301 (= e!3332895 e!3332897)))

(declare-fun b!5371302 () Bool)

(assert (=> b!5371302 (= e!3332894 call!384649)))

(declare-fun b!5371303 () Bool)

(declare-fun res!2279551 () Bool)

(declare-fun e!3332891 () Bool)

(assert (=> b!5371303 (=> (not res!2279551) (not e!3332891))))

(assert (=> b!5371303 (= res!2279551 call!384650)))

(assert (=> b!5371303 (= e!3332895 e!3332891)))

(declare-fun b!5371304 () Bool)

(assert (=> b!5371304 (= e!3332896 call!384648)))

(declare-fun b!5371305 () Bool)

(assert (=> b!5371305 (= e!3332891 call!384648)))

(declare-fun bm!384645 () Bool)

(assert (=> bm!384645 (= call!384649 (validRegex!6819 (ite c!936019 (reg!15412 lt!2187044) (ite c!936020 (regTwo!30679 lt!2187044) (regTwo!30678 lt!2187044)))))))

(assert (= (and d!1720191 (not res!2279552)) b!5371298))

(assert (= (and b!5371298 c!936019) b!5371299))

(assert (= (and b!5371298 (not c!936019)) b!5371300))

(assert (= (and b!5371299 res!2279553) b!5371302))

(assert (= (and b!5371300 c!936020) b!5371303))

(assert (= (and b!5371300 (not c!936020)) b!5371301))

(assert (= (and b!5371303 res!2279551) b!5371305))

(assert (= (and b!5371301 (not res!2279554)) b!5371297))

(assert (= (and b!5371297 res!2279555) b!5371304))

(assert (= (or b!5371305 b!5371304) bm!384644))

(assert (= (or b!5371303 b!5371297) bm!384643))

(assert (= (or b!5371302 bm!384644) bm!384645))

(declare-fun m!6398626 () Bool)

(assert (=> bm!384643 m!6398626))

(declare-fun m!6398628 () Bool)

(assert (=> b!5371299 m!6398628))

(declare-fun m!6398630 () Bool)

(assert (=> bm!384645 m!6398630))

(assert (=> b!5370618 d!1720191))

(declare-fun b!5371382 () Bool)

(declare-fun e!3332945 () Bool)

(assert (=> b!5371382 (= e!3332945 (= (head!11522 s!2326) (c!935793 lt!2187044)))))

(declare-fun b!5371384 () Bool)

(declare-fun res!2279598 () Bool)

(assert (=> b!5371384 (=> (not res!2279598) (not e!3332945))))

(assert (=> b!5371384 (= res!2279598 (isEmpty!33406 (tail!10619 s!2326)))))

(declare-fun b!5371385 () Bool)

(declare-fun e!3332940 () Bool)

(declare-fun derivativeStep!4223 (Regex!15083 C!30436) Regex!15083)

(assert (=> b!5371385 (= e!3332940 (matchR!7268 (derivativeStep!4223 lt!2187044 (head!11522 s!2326)) (tail!10619 s!2326)))))

(declare-fun b!5371386 () Bool)

(declare-fun e!3332943 () Bool)

(declare-fun e!3332946 () Bool)

(assert (=> b!5371386 (= e!3332943 e!3332946)))

(declare-fun c!936039 () Bool)

(assert (=> b!5371386 (= c!936039 ((_ is EmptyLang!15083) lt!2187044))))

(declare-fun b!5371387 () Bool)

(assert (=> b!5371387 (= e!3332940 (nullable!5252 lt!2187044))))

(declare-fun bm!384655 () Bool)

(declare-fun call!384660 () Bool)

(assert (=> bm!384655 (= call!384660 (isEmpty!33406 s!2326))))

(declare-fun b!5371388 () Bool)

(declare-fun e!3332941 () Bool)

(declare-fun e!3332944 () Bool)

(assert (=> b!5371388 (= e!3332941 e!3332944)))

(declare-fun res!2279597 () Bool)

(assert (=> b!5371388 (=> res!2279597 e!3332944)))

(assert (=> b!5371388 (= res!2279597 call!384660)))

(declare-fun b!5371389 () Bool)

(declare-fun lt!2187198 () Bool)

(assert (=> b!5371389 (= e!3332946 (not lt!2187198))))

(declare-fun b!5371390 () Bool)

(declare-fun res!2279596 () Bool)

(declare-fun e!3332942 () Bool)

(assert (=> b!5371390 (=> res!2279596 e!3332942)))

(assert (=> b!5371390 (= res!2279596 e!3332945)))

(declare-fun res!2279603 () Bool)

(assert (=> b!5371390 (=> (not res!2279603) (not e!3332945))))

(assert (=> b!5371390 (= res!2279603 lt!2187198)))

(declare-fun b!5371391 () Bool)

(assert (=> b!5371391 (= e!3332944 (not (= (head!11522 s!2326) (c!935793 lt!2187044))))))

(declare-fun b!5371383 () Bool)

(declare-fun res!2279601 () Bool)

(assert (=> b!5371383 (=> (not res!2279601) (not e!3332945))))

(assert (=> b!5371383 (= res!2279601 (not call!384660))))

(declare-fun d!1720193 () Bool)

(assert (=> d!1720193 e!3332943))

(declare-fun c!936040 () Bool)

(assert (=> d!1720193 (= c!936040 ((_ is EmptyExpr!15083) lt!2187044))))

(assert (=> d!1720193 (= lt!2187198 e!3332940)))

(declare-fun c!936041 () Bool)

(assert (=> d!1720193 (= c!936041 (isEmpty!33406 s!2326))))

(assert (=> d!1720193 (validRegex!6819 lt!2187044)))

(assert (=> d!1720193 (= (matchR!7268 lt!2187044 s!2326) lt!2187198)))

(declare-fun b!5371392 () Bool)

(declare-fun res!2279599 () Bool)

(assert (=> b!5371392 (=> res!2279599 e!3332942)))

(assert (=> b!5371392 (= res!2279599 (not ((_ is ElementMatch!15083) lt!2187044)))))

(assert (=> b!5371392 (= e!3332946 e!3332942)))

(declare-fun b!5371393 () Bool)

(assert (=> b!5371393 (= e!3332943 (= lt!2187198 call!384660))))

(declare-fun b!5371394 () Bool)

(declare-fun res!2279600 () Bool)

(assert (=> b!5371394 (=> res!2279600 e!3332944)))

(assert (=> b!5371394 (= res!2279600 (not (isEmpty!33406 (tail!10619 s!2326))))))

(declare-fun b!5371395 () Bool)

(assert (=> b!5371395 (= e!3332942 e!3332941)))

(declare-fun res!2279602 () Bool)

(assert (=> b!5371395 (=> (not res!2279602) (not e!3332941))))

(assert (=> b!5371395 (= res!2279602 (not lt!2187198))))

(assert (= (and d!1720193 c!936041) b!5371387))

(assert (= (and d!1720193 (not c!936041)) b!5371385))

(assert (= (and d!1720193 c!936040) b!5371393))

(assert (= (and d!1720193 (not c!936040)) b!5371386))

(assert (= (and b!5371386 c!936039) b!5371389))

(assert (= (and b!5371386 (not c!936039)) b!5371392))

(assert (= (and b!5371392 (not res!2279599)) b!5371390))

(assert (= (and b!5371390 res!2279603) b!5371383))

(assert (= (and b!5371383 res!2279601) b!5371384))

(assert (= (and b!5371384 res!2279598) b!5371382))

(assert (= (and b!5371390 (not res!2279596)) b!5371395))

(assert (= (and b!5371395 res!2279602) b!5371388))

(assert (= (and b!5371388 (not res!2279597)) b!5371394))

(assert (= (and b!5371394 (not res!2279600)) b!5371391))

(assert (= (or b!5371393 b!5371383 b!5371388) bm!384655))

(assert (=> d!1720193 m!6398420))

(assert (=> d!1720193 m!6398072))

(declare-fun m!6398678 () Bool)

(assert (=> b!5371387 m!6398678))

(assert (=> b!5371384 m!6398428))

(assert (=> b!5371384 m!6398428))

(declare-fun m!6398680 () Bool)

(assert (=> b!5371384 m!6398680))

(assert (=> b!5371382 m!6398424))

(assert (=> bm!384655 m!6398420))

(assert (=> b!5371394 m!6398428))

(assert (=> b!5371394 m!6398428))

(assert (=> b!5371394 m!6398680))

(assert (=> b!5371385 m!6398424))

(assert (=> b!5371385 m!6398424))

(declare-fun m!6398682 () Bool)

(assert (=> b!5371385 m!6398682))

(assert (=> b!5371385 m!6398428))

(assert (=> b!5371385 m!6398682))

(assert (=> b!5371385 m!6398428))

(declare-fun m!6398684 () Bool)

(assert (=> b!5371385 m!6398684))

(assert (=> b!5371391 m!6398424))

(assert (=> b!5370618 d!1720193))

(declare-fun d!1720217 () Bool)

(declare-fun c!936043 () Bool)

(assert (=> d!1720217 (= c!936043 (isEmpty!33406 s!2326))))

(declare-fun e!3332948 () Bool)

(assert (=> d!1720217 (= (matchZipper!1327 lt!2187055 s!2326) e!3332948)))

(declare-fun b!5371398 () Bool)

(assert (=> b!5371398 (= e!3332948 (nullableZipper!1402 lt!2187055))))

(declare-fun b!5371399 () Bool)

(assert (=> b!5371399 (= e!3332948 (matchZipper!1327 (derivationStepZipper!1322 lt!2187055 (head!11522 s!2326)) (tail!10619 s!2326)))))

(assert (= (and d!1720217 c!936043) b!5371398))

(assert (= (and d!1720217 (not c!936043)) b!5371399))

(assert (=> d!1720217 m!6398420))

(declare-fun m!6398686 () Bool)

(assert (=> b!5371398 m!6398686))

(assert (=> b!5371399 m!6398424))

(assert (=> b!5371399 m!6398424))

(declare-fun m!6398688 () Bool)

(assert (=> b!5371399 m!6398688))

(assert (=> b!5371399 m!6398428))

(assert (=> b!5371399 m!6398688))

(assert (=> b!5371399 m!6398428))

(declare-fun m!6398690 () Bool)

(assert (=> b!5371399 m!6398690))

(assert (=> b!5370618 d!1720217))

(declare-fun d!1720219 () Bool)

(assert (=> d!1720219 (= (matchR!7268 lt!2187044 s!2326) (matchZipper!1327 lt!2187055 s!2326))))

(declare-fun lt!2187204 () Unit!153850)

(declare-fun choose!40343 ((InoxSet Context!8934) List!61549 Regex!15083 List!61550) Unit!153850)

(assert (=> d!1720219 (= lt!2187204 (choose!40343 lt!2187055 lt!2187054 lt!2187044 s!2326))))

(assert (=> d!1720219 (validRegex!6819 lt!2187044)))

(assert (=> d!1720219 (= (theoremZipperRegexEquiv!441 lt!2187055 lt!2187054 lt!2187044 s!2326) lt!2187204)))

(declare-fun bs!1243880 () Bool)

(assert (= bs!1243880 d!1720219))

(assert (=> bs!1243880 m!6398074))

(assert (=> bs!1243880 m!6398076))

(declare-fun m!6398694 () Bool)

(assert (=> bs!1243880 m!6398694))

(assert (=> bs!1243880 m!6398072))

(assert (=> b!5370618 d!1720219))

(declare-fun d!1720223 () Bool)

(declare-fun lt!2187205 () Regex!15083)

(assert (=> d!1720223 (validRegex!6819 lt!2187205)))

(assert (=> d!1720223 (= lt!2187205 (generalisedUnion!1012 (unfocusZipperList!525 zl!343)))))

(assert (=> d!1720223 (= (unfocusZipper!825 zl!343) lt!2187205)))

(declare-fun bs!1243881 () Bool)

(assert (= bs!1243881 d!1720223))

(declare-fun m!6398696 () Bool)

(assert (=> bs!1243881 m!6398696))

(assert (=> bs!1243881 m!6398096))

(assert (=> bs!1243881 m!6398096))

(assert (=> bs!1243881 m!6398098))

(assert (=> b!5370600 d!1720223))

(declare-fun d!1720225 () Bool)

(declare-fun choose!40344 ((InoxSet Context!8934) Int) (InoxSet Context!8934))

(assert (=> d!1720225 (= (flatMap!810 lt!2187068 lambda!277069) (choose!40344 lt!2187068 lambda!277069))))

(declare-fun bs!1243882 () Bool)

(assert (= bs!1243882 d!1720225))

(declare-fun m!6398698 () Bool)

(assert (=> bs!1243882 m!6398698))

(assert (=> b!5370631 d!1720225))

(declare-fun d!1720227 () Bool)

(declare-fun c!936050 () Bool)

(declare-fun e!3332964 () Bool)

(assert (=> d!1720227 (= c!936050 e!3332964)))

(declare-fun res!2279609 () Bool)

(assert (=> d!1720227 (=> (not res!2279609) (not e!3332964))))

(assert (=> d!1720227 (= res!2279609 ((_ is Cons!61424) (exprs!4967 lt!2187051)))))

(declare-fun e!3332963 () (InoxSet Context!8934))

(assert (=> d!1720227 (= (derivationStepZipperUp!455 lt!2187051 (h!67874 s!2326)) e!3332963)))

(declare-fun b!5371421 () Bool)

(declare-fun e!3332962 () (InoxSet Context!8934))

(declare-fun call!384663 () (InoxSet Context!8934))

(assert (=> b!5371421 (= e!3332962 call!384663)))

(declare-fun bm!384658 () Bool)

(assert (=> bm!384658 (= call!384663 (derivationStepZipperDown!531 (h!67872 (exprs!4967 lt!2187051)) (Context!8935 (t!374771 (exprs!4967 lt!2187051))) (h!67874 s!2326)))))

(declare-fun b!5371422 () Bool)

(assert (=> b!5371422 (= e!3332963 ((_ map or) call!384663 (derivationStepZipperUp!455 (Context!8935 (t!374771 (exprs!4967 lt!2187051))) (h!67874 s!2326))))))

(declare-fun b!5371423 () Bool)

(assert (=> b!5371423 (= e!3332962 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371424 () Bool)

(assert (=> b!5371424 (= e!3332964 (nullable!5252 (h!67872 (exprs!4967 lt!2187051))))))

(declare-fun b!5371425 () Bool)

(assert (=> b!5371425 (= e!3332963 e!3332962)))

(declare-fun c!936051 () Bool)

(assert (=> b!5371425 (= c!936051 ((_ is Cons!61424) (exprs!4967 lt!2187051)))))

(assert (= (and d!1720227 res!2279609) b!5371424))

(assert (= (and d!1720227 c!936050) b!5371422))

(assert (= (and d!1720227 (not c!936050)) b!5371425))

(assert (= (and b!5371425 c!936051) b!5371421))

(assert (= (and b!5371425 (not c!936051)) b!5371423))

(assert (= (or b!5371422 b!5371421) bm!384658))

(declare-fun m!6398724 () Bool)

(assert (=> bm!384658 m!6398724))

(declare-fun m!6398726 () Bool)

(assert (=> b!5371422 m!6398726))

(declare-fun m!6398728 () Bool)

(assert (=> b!5371424 m!6398728))

(assert (=> b!5370631 d!1720227))

(declare-fun d!1720237 () Bool)

(declare-fun dynLambda!24263 (Int Context!8934) (InoxSet Context!8934))

(assert (=> d!1720237 (= (flatMap!810 lt!2187068 lambda!277069) (dynLambda!24263 lambda!277069 lt!2187051))))

(declare-fun lt!2187212 () Unit!153850)

(declare-fun choose!40345 ((InoxSet Context!8934) Context!8934 Int) Unit!153850)

(assert (=> d!1720237 (= lt!2187212 (choose!40345 lt!2187068 lt!2187051 lambda!277069))))

(assert (=> d!1720237 (= lt!2187068 (store ((as const (Array Context!8934 Bool)) false) lt!2187051 true))))

(assert (=> d!1720237 (= (lemmaFlatMapOnSingletonSet!342 lt!2187068 lt!2187051 lambda!277069) lt!2187212)))

(declare-fun b_lambda!205903 () Bool)

(assert (=> (not b_lambda!205903) (not d!1720237)))

(declare-fun bs!1243885 () Bool)

(assert (= bs!1243885 d!1720237))

(assert (=> bs!1243885 m!6398018))

(declare-fun m!6398732 () Bool)

(assert (=> bs!1243885 m!6398732))

(declare-fun m!6398734 () Bool)

(assert (=> bs!1243885 m!6398734))

(assert (=> bs!1243885 m!6398026))

(assert (=> b!5370631 d!1720237))

(declare-fun bs!1243891 () Bool)

(declare-fun d!1720239 () Bool)

(assert (= bs!1243891 (and d!1720239 b!5370601)))

(declare-fun lambda!277148 () Int)

(assert (=> bs!1243891 (= lambda!277148 lambda!277069)))

(assert (=> d!1720239 true))

(assert (=> d!1720239 (= (derivationStepZipper!1322 lt!2187068 (h!67874 s!2326)) (flatMap!810 lt!2187068 lambda!277148))))

(declare-fun bs!1243892 () Bool)

(assert (= bs!1243892 d!1720239))

(declare-fun m!6398736 () Bool)

(assert (=> bs!1243892 m!6398736))

(assert (=> b!5370631 d!1720239))

(declare-fun d!1720251 () Bool)

(declare-fun e!3332988 () Bool)

(assert (=> d!1720251 e!3332988))

(declare-fun res!2279612 () Bool)

(assert (=> d!1720251 (=> (not res!2279612) (not e!3332988))))

(declare-fun lt!2187215 () List!61549)

(declare-fun noDuplicate!1356 (List!61549) Bool)

(assert (=> d!1720251 (= res!2279612 (noDuplicate!1356 lt!2187215))))

(declare-fun choose!40346 ((InoxSet Context!8934)) List!61549)

(assert (=> d!1720251 (= lt!2187215 (choose!40346 z!1189))))

(assert (=> d!1720251 (= (toList!8867 z!1189) lt!2187215)))

(declare-fun b!5371480 () Bool)

(declare-fun content!10980 (List!61549) (InoxSet Context!8934))

(assert (=> b!5371480 (= e!3332988 (= (content!10980 lt!2187215) z!1189))))

(assert (= (and d!1720251 res!2279612) b!5371480))

(declare-fun m!6398738 () Bool)

(assert (=> d!1720251 m!6398738))

(declare-fun m!6398740 () Bool)

(assert (=> d!1720251 m!6398740))

(declare-fun m!6398742 () Bool)

(assert (=> b!5371480 m!6398742))

(assert (=> b!5370610 d!1720251))

(declare-fun bs!1243893 () Bool)

(declare-fun d!1720253 () Bool)

(assert (= bs!1243893 (and d!1720253 d!1720161)))

(declare-fun lambda!277149 () Int)

(assert (=> bs!1243893 (= lambda!277149 lambda!277124)))

(declare-fun b!5371481 () Bool)

(declare-fun e!3332991 () Bool)

(declare-fun e!3332989 () Bool)

(assert (=> b!5371481 (= e!3332991 e!3332989)))

(declare-fun c!936055 () Bool)

(assert (=> b!5371481 (= c!936055 (isEmpty!33408 (tail!10620 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371482 () Bool)

(declare-fun lt!2187216 () Regex!15083)

(assert (=> b!5371482 (= e!3332991 (isEmptyExpr!936 lt!2187216))))

(declare-fun b!5371483 () Bool)

(assert (=> b!5371483 (= e!3332989 (isConcat!459 lt!2187216))))

(declare-fun b!5371485 () Bool)

(declare-fun e!3332990 () Regex!15083)

(declare-fun e!3332994 () Regex!15083)

(assert (=> b!5371485 (= e!3332990 e!3332994)))

(declare-fun c!936056 () Bool)

(assert (=> b!5371485 (= c!936056 ((_ is Cons!61424) (exprs!4967 (h!67873 zl!343))))))

(declare-fun b!5371486 () Bool)

(assert (=> b!5371486 (= e!3332994 (Concat!23928 (h!67872 (exprs!4967 (h!67873 zl!343))) (generalisedConcat!752 (t!374771 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun b!5371487 () Bool)

(declare-fun e!3332993 () Bool)

(assert (=> b!5371487 (= e!3332993 (isEmpty!33408 (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371488 () Bool)

(assert (=> b!5371488 (= e!3332990 (h!67872 (exprs!4967 (h!67873 zl!343))))))

(declare-fun b!5371484 () Bool)

(assert (=> b!5371484 (= e!3332989 (= lt!2187216 (head!11523 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun e!3332992 () Bool)

(assert (=> d!1720253 e!3332992))

(declare-fun res!2279614 () Bool)

(assert (=> d!1720253 (=> (not res!2279614) (not e!3332992))))

(assert (=> d!1720253 (= res!2279614 (validRegex!6819 lt!2187216))))

(assert (=> d!1720253 (= lt!2187216 e!3332990)))

(declare-fun c!936054 () Bool)

(assert (=> d!1720253 (= c!936054 e!3332993)))

(declare-fun res!2279613 () Bool)

(assert (=> d!1720253 (=> (not res!2279613) (not e!3332993))))

(assert (=> d!1720253 (= res!2279613 ((_ is Cons!61424) (exprs!4967 (h!67873 zl!343))))))

(assert (=> d!1720253 (forall!14493 (exprs!4967 (h!67873 zl!343)) lambda!277149)))

(assert (=> d!1720253 (= (generalisedConcat!752 (exprs!4967 (h!67873 zl!343))) lt!2187216)))

(declare-fun b!5371489 () Bool)

(assert (=> b!5371489 (= e!3332994 EmptyExpr!15083)))

(declare-fun b!5371490 () Bool)

(assert (=> b!5371490 (= e!3332992 e!3332991)))

(declare-fun c!936057 () Bool)

(assert (=> b!5371490 (= c!936057 (isEmpty!33408 (exprs!4967 (h!67873 zl!343))))))

(assert (= (and d!1720253 res!2279613) b!5371487))

(assert (= (and d!1720253 c!936054) b!5371488))

(assert (= (and d!1720253 (not c!936054)) b!5371485))

(assert (= (and b!5371485 c!936056) b!5371486))

(assert (= (and b!5371485 (not c!936056)) b!5371489))

(assert (= (and d!1720253 res!2279614) b!5371490))

(assert (= (and b!5371490 c!936057) b!5371482))

(assert (= (and b!5371490 (not c!936057)) b!5371481))

(assert (= (and b!5371481 c!936055) b!5371484))

(assert (= (and b!5371481 (not c!936055)) b!5371483))

(declare-fun m!6398744 () Bool)

(assert (=> b!5371482 m!6398744))

(declare-fun m!6398746 () Bool)

(assert (=> b!5371481 m!6398746))

(assert (=> b!5371481 m!6398746))

(declare-fun m!6398748 () Bool)

(assert (=> b!5371481 m!6398748))

(declare-fun m!6398750 () Bool)

(assert (=> b!5371483 m!6398750))

(declare-fun m!6398752 () Bool)

(assert (=> d!1720253 m!6398752))

(declare-fun m!6398754 () Bool)

(assert (=> d!1720253 m!6398754))

(declare-fun m!6398756 () Bool)

(assert (=> b!5371484 m!6398756))

(assert (=> b!5371487 m!6398002))

(declare-fun m!6398758 () Bool)

(assert (=> b!5371490 m!6398758))

(assert (=> b!5371486 m!6398000))

(assert (=> b!5370632 d!1720253))

(declare-fun bs!1243894 () Bool)

(declare-fun d!1720255 () Bool)

(assert (= bs!1243894 (and d!1720255 d!1720161)))

(declare-fun lambda!277152 () Int)

(assert (=> bs!1243894 (= lambda!277152 lambda!277124)))

(declare-fun bs!1243895 () Bool)

(assert (= bs!1243895 (and d!1720255 d!1720253)))

(assert (=> bs!1243895 (= lambda!277152 lambda!277149)))

(assert (=> d!1720255 (= (inv!80954 (h!67873 zl!343)) (forall!14493 (exprs!4967 (h!67873 zl!343)) lambda!277152))))

(declare-fun bs!1243896 () Bool)

(assert (= bs!1243896 d!1720255))

(declare-fun m!6398760 () Bool)

(assert (=> bs!1243896 m!6398760))

(assert (=> b!5370633 d!1720255))

(declare-fun d!1720257 () Bool)

(assert (=> d!1720257 (= (flatMap!810 lt!2187056 lambda!277069) (choose!40344 lt!2187056 lambda!277069))))

(declare-fun bs!1243897 () Bool)

(assert (= bs!1243897 d!1720257))

(declare-fun m!6398762 () Bool)

(assert (=> bs!1243897 m!6398762))

(assert (=> b!5370612 d!1720257))

(declare-fun d!1720259 () Bool)

(assert (=> d!1720259 (= (flatMap!810 lt!2187039 lambda!277069) (choose!40344 lt!2187039 lambda!277069))))

(declare-fun bs!1243898 () Bool)

(assert (= bs!1243898 d!1720259))

(declare-fun m!6398764 () Bool)

(assert (=> bs!1243898 m!6398764))

(assert (=> b!5370612 d!1720259))

(declare-fun d!1720261 () Bool)

(declare-fun lt!2187217 () Regex!15083)

(assert (=> d!1720261 (validRegex!6819 lt!2187217)))

(assert (=> d!1720261 (= lt!2187217 (generalisedUnion!1012 (unfocusZipperList!525 (Cons!61425 lt!2187031 Nil!61425))))))

(assert (=> d!1720261 (= (unfocusZipper!825 (Cons!61425 lt!2187031 Nil!61425)) lt!2187217)))

(declare-fun bs!1243899 () Bool)

(assert (= bs!1243899 d!1720261))

(declare-fun m!6398766 () Bool)

(assert (=> bs!1243899 m!6398766))

(declare-fun m!6398768 () Bool)

(assert (=> bs!1243899 m!6398768))

(assert (=> bs!1243899 m!6398768))

(declare-fun m!6398770 () Bool)

(assert (=> bs!1243899 m!6398770))

(assert (=> b!5370612 d!1720261))

(declare-fun d!1720263 () Bool)

(assert (=> d!1720263 (= (flatMap!810 lt!2187056 lambda!277069) (dynLambda!24263 lambda!277069 lt!2187031))))

(declare-fun lt!2187218 () Unit!153850)

(assert (=> d!1720263 (= lt!2187218 (choose!40345 lt!2187056 lt!2187031 lambda!277069))))

(assert (=> d!1720263 (= lt!2187056 (store ((as const (Array Context!8934 Bool)) false) lt!2187031 true))))

(assert (=> d!1720263 (= (lemmaFlatMapOnSingletonSet!342 lt!2187056 lt!2187031 lambda!277069) lt!2187218)))

(declare-fun b_lambda!205915 () Bool)

(assert (=> (not b_lambda!205915) (not d!1720263)))

(declare-fun bs!1243900 () Bool)

(assert (= bs!1243900 d!1720263))

(assert (=> bs!1243900 m!6397954))

(declare-fun m!6398772 () Bool)

(assert (=> bs!1243900 m!6398772))

(declare-fun m!6398774 () Bool)

(assert (=> bs!1243900 m!6398774))

(assert (=> bs!1243900 m!6397950))

(assert (=> b!5370612 d!1720263))

(declare-fun d!1720265 () Bool)

(assert (=> d!1720265 (= (flatMap!810 lt!2187039 lambda!277069) (dynLambda!24263 lambda!277069 lt!2187066))))

(declare-fun lt!2187219 () Unit!153850)

(assert (=> d!1720265 (= lt!2187219 (choose!40345 lt!2187039 lt!2187066 lambda!277069))))

(assert (=> d!1720265 (= lt!2187039 (store ((as const (Array Context!8934 Bool)) false) lt!2187066 true))))

(assert (=> d!1720265 (= (lemmaFlatMapOnSingletonSet!342 lt!2187039 lt!2187066 lambda!277069) lt!2187219)))

(declare-fun b_lambda!205917 () Bool)

(assert (=> (not b_lambda!205917) (not d!1720265)))

(declare-fun bs!1243901 () Bool)

(assert (= bs!1243901 d!1720265))

(assert (=> bs!1243901 m!6397952))

(declare-fun m!6398776 () Bool)

(assert (=> bs!1243901 m!6398776))

(declare-fun m!6398778 () Bool)

(assert (=> bs!1243901 m!6398778))

(assert (=> bs!1243901 m!6397960))

(assert (=> b!5370612 d!1720265))

(declare-fun d!1720267 () Bool)

(declare-fun c!936058 () Bool)

(declare-fun e!3332997 () Bool)

(assert (=> d!1720267 (= c!936058 e!3332997)))

(declare-fun res!2279615 () Bool)

(assert (=> d!1720267 (=> (not res!2279615) (not e!3332997))))

(assert (=> d!1720267 (= res!2279615 ((_ is Cons!61424) (exprs!4967 lt!2187031)))))

(declare-fun e!3332996 () (InoxSet Context!8934))

(assert (=> d!1720267 (= (derivationStepZipperUp!455 lt!2187031 (h!67874 s!2326)) e!3332996)))

(declare-fun b!5371491 () Bool)

(declare-fun e!3332995 () (InoxSet Context!8934))

(declare-fun call!384664 () (InoxSet Context!8934))

(assert (=> b!5371491 (= e!3332995 call!384664)))

(declare-fun bm!384659 () Bool)

(assert (=> bm!384659 (= call!384664 (derivationStepZipperDown!531 (h!67872 (exprs!4967 lt!2187031)) (Context!8935 (t!374771 (exprs!4967 lt!2187031))) (h!67874 s!2326)))))

(declare-fun b!5371492 () Bool)

(assert (=> b!5371492 (= e!3332996 ((_ map or) call!384664 (derivationStepZipperUp!455 (Context!8935 (t!374771 (exprs!4967 lt!2187031))) (h!67874 s!2326))))))

(declare-fun b!5371493 () Bool)

(assert (=> b!5371493 (= e!3332995 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371494 () Bool)

(assert (=> b!5371494 (= e!3332997 (nullable!5252 (h!67872 (exprs!4967 lt!2187031))))))

(declare-fun b!5371495 () Bool)

(assert (=> b!5371495 (= e!3332996 e!3332995)))

(declare-fun c!936059 () Bool)

(assert (=> b!5371495 (= c!936059 ((_ is Cons!61424) (exprs!4967 lt!2187031)))))

(assert (= (and d!1720267 res!2279615) b!5371494))

(assert (= (and d!1720267 c!936058) b!5371492))

(assert (= (and d!1720267 (not c!936058)) b!5371495))

(assert (= (and b!5371495 c!936059) b!5371491))

(assert (= (and b!5371495 (not c!936059)) b!5371493))

(assert (= (or b!5371492 b!5371491) bm!384659))

(declare-fun m!6398780 () Bool)

(assert (=> bm!384659 m!6398780))

(declare-fun m!6398782 () Bool)

(assert (=> b!5371492 m!6398782))

(declare-fun m!6398784 () Bool)

(assert (=> b!5371494 m!6398784))

(assert (=> b!5370612 d!1720267))

(declare-fun d!1720269 () Bool)

(declare-fun c!936060 () Bool)

(declare-fun e!3333000 () Bool)

(assert (=> d!1720269 (= c!936060 e!3333000)))

(declare-fun res!2279616 () Bool)

(assert (=> d!1720269 (=> (not res!2279616) (not e!3333000))))

(assert (=> d!1720269 (= res!2279616 ((_ is Cons!61424) (exprs!4967 lt!2187066)))))

(declare-fun e!3332999 () (InoxSet Context!8934))

(assert (=> d!1720269 (= (derivationStepZipperUp!455 lt!2187066 (h!67874 s!2326)) e!3332999)))

(declare-fun b!5371496 () Bool)

(declare-fun e!3332998 () (InoxSet Context!8934))

(declare-fun call!384665 () (InoxSet Context!8934))

(assert (=> b!5371496 (= e!3332998 call!384665)))

(declare-fun bm!384660 () Bool)

(assert (=> bm!384660 (= call!384665 (derivationStepZipperDown!531 (h!67872 (exprs!4967 lt!2187066)) (Context!8935 (t!374771 (exprs!4967 lt!2187066))) (h!67874 s!2326)))))

(declare-fun b!5371497 () Bool)

(assert (=> b!5371497 (= e!3332999 ((_ map or) call!384665 (derivationStepZipperUp!455 (Context!8935 (t!374771 (exprs!4967 lt!2187066))) (h!67874 s!2326))))))

(declare-fun b!5371498 () Bool)

(assert (=> b!5371498 (= e!3332998 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371499 () Bool)

(assert (=> b!5371499 (= e!3333000 (nullable!5252 (h!67872 (exprs!4967 lt!2187066))))))

(declare-fun b!5371500 () Bool)

(assert (=> b!5371500 (= e!3332999 e!3332998)))

(declare-fun c!936061 () Bool)

(assert (=> b!5371500 (= c!936061 ((_ is Cons!61424) (exprs!4967 lt!2187066)))))

(assert (= (and d!1720269 res!2279616) b!5371499))

(assert (= (and d!1720269 c!936060) b!5371497))

(assert (= (and d!1720269 (not c!936060)) b!5371500))

(assert (= (and b!5371500 c!936061) b!5371496))

(assert (= (and b!5371500 (not c!936061)) b!5371498))

(assert (= (or b!5371497 b!5371496) bm!384660))

(declare-fun m!6398786 () Bool)

(assert (=> bm!384660 m!6398786))

(declare-fun m!6398788 () Bool)

(assert (=> b!5371497 m!6398788))

(declare-fun m!6398790 () Bool)

(assert (=> b!5371499 m!6398790))

(assert (=> b!5370612 d!1720269))

(declare-fun bs!1243902 () Bool)

(declare-fun d!1720271 () Bool)

(assert (= bs!1243902 (and d!1720271 d!1720161)))

(declare-fun lambda!277155 () Int)

(assert (=> bs!1243902 (= lambda!277155 lambda!277124)))

(declare-fun bs!1243903 () Bool)

(assert (= bs!1243903 (and d!1720271 d!1720253)))

(assert (=> bs!1243903 (= lambda!277155 lambda!277149)))

(declare-fun bs!1243904 () Bool)

(assert (= bs!1243904 (and d!1720271 d!1720255)))

(assert (=> bs!1243904 (= lambda!277155 lambda!277152)))

(declare-fun b!5371521 () Bool)

(declare-fun e!3333013 () Regex!15083)

(declare-fun e!3333018 () Regex!15083)

(assert (=> b!5371521 (= e!3333013 e!3333018)))

(declare-fun c!936070 () Bool)

(assert (=> b!5371521 (= c!936070 ((_ is Cons!61424) (unfocusZipperList!525 zl!343)))))

(declare-fun b!5371522 () Bool)

(declare-fun e!3333015 () Bool)

(declare-fun e!3333014 () Bool)

(assert (=> b!5371522 (= e!3333015 e!3333014)))

(declare-fun c!936072 () Bool)

(assert (=> b!5371522 (= c!936072 (isEmpty!33408 (unfocusZipperList!525 zl!343)))))

(assert (=> d!1720271 e!3333015))

(declare-fun res!2279622 () Bool)

(assert (=> d!1720271 (=> (not res!2279622) (not e!3333015))))

(declare-fun lt!2187222 () Regex!15083)

(assert (=> d!1720271 (= res!2279622 (validRegex!6819 lt!2187222))))

(assert (=> d!1720271 (= lt!2187222 e!3333013)))

(declare-fun c!936071 () Bool)

(declare-fun e!3333016 () Bool)

(assert (=> d!1720271 (= c!936071 e!3333016)))

(declare-fun res!2279621 () Bool)

(assert (=> d!1720271 (=> (not res!2279621) (not e!3333016))))

(assert (=> d!1720271 (= res!2279621 ((_ is Cons!61424) (unfocusZipperList!525 zl!343)))))

(assert (=> d!1720271 (forall!14493 (unfocusZipperList!525 zl!343) lambda!277155)))

(assert (=> d!1720271 (= (generalisedUnion!1012 (unfocusZipperList!525 zl!343)) lt!2187222)))

(declare-fun b!5371523 () Bool)

(declare-fun isEmptyLang!945 (Regex!15083) Bool)

(assert (=> b!5371523 (= e!3333014 (isEmptyLang!945 lt!2187222))))

(declare-fun b!5371524 () Bool)

(declare-fun e!3333017 () Bool)

(declare-fun isUnion!377 (Regex!15083) Bool)

(assert (=> b!5371524 (= e!3333017 (isUnion!377 lt!2187222))))

(declare-fun b!5371525 () Bool)

(assert (=> b!5371525 (= e!3333014 e!3333017)))

(declare-fun c!936073 () Bool)

(assert (=> b!5371525 (= c!936073 (isEmpty!33408 (tail!10620 (unfocusZipperList!525 zl!343))))))

(declare-fun b!5371526 () Bool)

(assert (=> b!5371526 (= e!3333013 (h!67872 (unfocusZipperList!525 zl!343)))))

(declare-fun b!5371527 () Bool)

(assert (=> b!5371527 (= e!3333018 (Union!15083 (h!67872 (unfocusZipperList!525 zl!343)) (generalisedUnion!1012 (t!374771 (unfocusZipperList!525 zl!343)))))))

(declare-fun b!5371528 () Bool)

(assert (=> b!5371528 (= e!3333017 (= lt!2187222 (head!11523 (unfocusZipperList!525 zl!343))))))

(declare-fun b!5371529 () Bool)

(assert (=> b!5371529 (= e!3333016 (isEmpty!33408 (t!374771 (unfocusZipperList!525 zl!343))))))

(declare-fun b!5371530 () Bool)

(assert (=> b!5371530 (= e!3333018 EmptyLang!15083)))

(assert (= (and d!1720271 res!2279621) b!5371529))

(assert (= (and d!1720271 c!936071) b!5371526))

(assert (= (and d!1720271 (not c!936071)) b!5371521))

(assert (= (and b!5371521 c!936070) b!5371527))

(assert (= (and b!5371521 (not c!936070)) b!5371530))

(assert (= (and d!1720271 res!2279622) b!5371522))

(assert (= (and b!5371522 c!936072) b!5371523))

(assert (= (and b!5371522 (not c!936072)) b!5371525))

(assert (= (and b!5371525 c!936073) b!5371528))

(assert (= (and b!5371525 (not c!936073)) b!5371524))

(declare-fun m!6398792 () Bool)

(assert (=> b!5371529 m!6398792))

(declare-fun m!6398794 () Bool)

(assert (=> b!5371524 m!6398794))

(declare-fun m!6398796 () Bool)

(assert (=> b!5371523 m!6398796))

(assert (=> b!5371525 m!6398096))

(declare-fun m!6398798 () Bool)

(assert (=> b!5371525 m!6398798))

(assert (=> b!5371525 m!6398798))

(declare-fun m!6398800 () Bool)

(assert (=> b!5371525 m!6398800))

(declare-fun m!6398802 () Bool)

(assert (=> b!5371527 m!6398802))

(assert (=> b!5371522 m!6398096))

(declare-fun m!6398804 () Bool)

(assert (=> b!5371522 m!6398804))

(declare-fun m!6398806 () Bool)

(assert (=> d!1720271 m!6398806))

(assert (=> d!1720271 m!6398096))

(declare-fun m!6398808 () Bool)

(assert (=> d!1720271 m!6398808))

(assert (=> b!5371528 m!6398096))

(declare-fun m!6398810 () Bool)

(assert (=> b!5371528 m!6398810))

(assert (=> b!5370613 d!1720271))

(declare-fun bs!1243905 () Bool)

(declare-fun d!1720273 () Bool)

(assert (= bs!1243905 (and d!1720273 d!1720161)))

(declare-fun lambda!277158 () Int)

(assert (=> bs!1243905 (= lambda!277158 lambda!277124)))

(declare-fun bs!1243906 () Bool)

(assert (= bs!1243906 (and d!1720273 d!1720253)))

(assert (=> bs!1243906 (= lambda!277158 lambda!277149)))

(declare-fun bs!1243907 () Bool)

(assert (= bs!1243907 (and d!1720273 d!1720255)))

(assert (=> bs!1243907 (= lambda!277158 lambda!277152)))

(declare-fun bs!1243908 () Bool)

(assert (= bs!1243908 (and d!1720273 d!1720271)))

(assert (=> bs!1243908 (= lambda!277158 lambda!277155)))

(declare-fun lt!2187225 () List!61548)

(assert (=> d!1720273 (forall!14493 lt!2187225 lambda!277158)))

(declare-fun e!3333021 () List!61548)

(assert (=> d!1720273 (= lt!2187225 e!3333021)))

(declare-fun c!936076 () Bool)

(assert (=> d!1720273 (= c!936076 ((_ is Cons!61425) zl!343))))

(assert (=> d!1720273 (= (unfocusZipperList!525 zl!343) lt!2187225)))

(declare-fun b!5371535 () Bool)

(assert (=> b!5371535 (= e!3333021 (Cons!61424 (generalisedConcat!752 (exprs!4967 (h!67873 zl!343))) (unfocusZipperList!525 (t!374772 zl!343))))))

(declare-fun b!5371536 () Bool)

(assert (=> b!5371536 (= e!3333021 Nil!61424)))

(assert (= (and d!1720273 c!936076) b!5371535))

(assert (= (and d!1720273 (not c!936076)) b!5371536))

(declare-fun m!6398812 () Bool)

(assert (=> d!1720273 m!6398812))

(assert (=> b!5371535 m!6397980))

(declare-fun m!6398814 () Bool)

(assert (=> b!5371535 m!6398814))

(assert (=> b!5370613 d!1720273))

(declare-fun d!1720275 () Bool)

(assert (=> d!1720275 (= (isEmpty!33408 (t!374771 (exprs!4967 (h!67873 zl!343)))) ((_ is Nil!61424) (t!374771 (exprs!4967 (h!67873 zl!343)))))))

(assert (=> b!5370634 d!1720275))

(declare-fun b!5371537 () Bool)

(declare-fun lt!2187226 () Unit!153850)

(declare-fun lt!2187227 () Unit!153850)

(assert (=> b!5371537 (= lt!2187226 lt!2187227)))

(assert (=> b!5371537 (= (++!13386 (++!13386 Nil!61426 (Cons!61426 (h!67874 s!2326) Nil!61426)) (t!374773 s!2326)) s!2326)))

(assert (=> b!5371537 (= lt!2187227 (lemmaMoveElementToOtherListKeepsConcatEq!1797 Nil!61426 (h!67874 s!2326) (t!374773 s!2326) s!2326))))

(declare-fun e!3333025 () Option!15194)

(assert (=> b!5371537 (= e!3333025 (findConcatSeparation!1608 (regOne!30678 r!7292) (regTwo!30678 r!7292) (++!13386 Nil!61426 (Cons!61426 (h!67874 s!2326) Nil!61426)) (t!374773 s!2326) s!2326))))

(declare-fun b!5371538 () Bool)

(declare-fun e!3333024 () Bool)

(assert (=> b!5371538 (= e!3333024 (matchR!7268 (regTwo!30678 r!7292) s!2326))))

(declare-fun d!1720277 () Bool)

(declare-fun e!3333026 () Bool)

(assert (=> d!1720277 e!3333026))

(declare-fun res!2279626 () Bool)

(assert (=> d!1720277 (=> res!2279626 e!3333026)))

(declare-fun e!3333023 () Bool)

(assert (=> d!1720277 (= res!2279626 e!3333023)))

(declare-fun res!2279627 () Bool)

(assert (=> d!1720277 (=> (not res!2279627) (not e!3333023))))

(declare-fun lt!2187228 () Option!15194)

(assert (=> d!1720277 (= res!2279627 (isDefined!11897 lt!2187228))))

(declare-fun e!3333022 () Option!15194)

(assert (=> d!1720277 (= lt!2187228 e!3333022)))

(declare-fun c!936077 () Bool)

(assert (=> d!1720277 (= c!936077 e!3333024)))

(declare-fun res!2279623 () Bool)

(assert (=> d!1720277 (=> (not res!2279623) (not e!3333024))))

(assert (=> d!1720277 (= res!2279623 (matchR!7268 (regOne!30678 r!7292) Nil!61426))))

(assert (=> d!1720277 (validRegex!6819 (regOne!30678 r!7292))))

(assert (=> d!1720277 (= (findConcatSeparation!1608 (regOne!30678 r!7292) (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326) lt!2187228)))

(declare-fun b!5371539 () Bool)

(declare-fun res!2279625 () Bool)

(assert (=> b!5371539 (=> (not res!2279625) (not e!3333023))))

(assert (=> b!5371539 (= res!2279625 (matchR!7268 (regTwo!30678 r!7292) (_2!35585 (get!21133 lt!2187228))))))

(declare-fun b!5371540 () Bool)

(declare-fun res!2279624 () Bool)

(assert (=> b!5371540 (=> (not res!2279624) (not e!3333023))))

(assert (=> b!5371540 (= res!2279624 (matchR!7268 (regOne!30678 r!7292) (_1!35585 (get!21133 lt!2187228))))))

(declare-fun b!5371541 () Bool)

(assert (=> b!5371541 (= e!3333025 None!15193)))

(declare-fun b!5371542 () Bool)

(assert (=> b!5371542 (= e!3333022 (Some!15193 (tuple2!64565 Nil!61426 s!2326)))))

(declare-fun b!5371543 () Bool)

(assert (=> b!5371543 (= e!3333022 e!3333025)))

(declare-fun c!936078 () Bool)

(assert (=> b!5371543 (= c!936078 ((_ is Nil!61426) s!2326))))

(declare-fun b!5371544 () Bool)

(assert (=> b!5371544 (= e!3333023 (= (++!13386 (_1!35585 (get!21133 lt!2187228)) (_2!35585 (get!21133 lt!2187228))) s!2326))))

(declare-fun b!5371545 () Bool)

(assert (=> b!5371545 (= e!3333026 (not (isDefined!11897 lt!2187228)))))

(assert (= (and d!1720277 res!2279623) b!5371538))

(assert (= (and d!1720277 c!936077) b!5371542))

(assert (= (and d!1720277 (not c!936077)) b!5371543))

(assert (= (and b!5371543 c!936078) b!5371541))

(assert (= (and b!5371543 (not c!936078)) b!5371537))

(assert (= (and d!1720277 res!2279627) b!5371540))

(assert (= (and b!5371540 res!2279624) b!5371539))

(assert (= (and b!5371539 res!2279625) b!5371544))

(assert (= (and d!1720277 (not res!2279626)) b!5371545))

(declare-fun m!6398816 () Bool)

(assert (=> b!5371539 m!6398816))

(declare-fun m!6398818 () Bool)

(assert (=> b!5371539 m!6398818))

(assert (=> b!5371544 m!6398816))

(declare-fun m!6398820 () Bool)

(assert (=> b!5371544 m!6398820))

(declare-fun m!6398822 () Bool)

(assert (=> d!1720277 m!6398822))

(declare-fun m!6398824 () Bool)

(assert (=> d!1720277 m!6398824))

(declare-fun m!6398826 () Bool)

(assert (=> d!1720277 m!6398826))

(assert (=> b!5371538 m!6398274))

(assert (=> b!5371545 m!6398822))

(assert (=> b!5371540 m!6398816))

(declare-fun m!6398828 () Bool)

(assert (=> b!5371540 m!6398828))

(assert (=> b!5371537 m!6398278))

(assert (=> b!5371537 m!6398278))

(assert (=> b!5371537 m!6398280))

(assert (=> b!5371537 m!6398282))

(assert (=> b!5371537 m!6398278))

(declare-fun m!6398830 () Bool)

(assert (=> b!5371537 m!6398830))

(assert (=> b!5370594 d!1720277))

(declare-fun bs!1243909 () Bool)

(declare-fun d!1720279 () Bool)

(assert (= bs!1243909 (and d!1720279 b!5370594)))

(declare-fun lambda!277159 () Int)

(assert (=> bs!1243909 (= lambda!277159 lambda!277067)))

(declare-fun bs!1243910 () Bool)

(assert (= bs!1243910 (and d!1720279 b!5370616)))

(assert (=> bs!1243910 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277159 lambda!277070))))

(assert (=> bs!1243909 (not (= lambda!277159 lambda!277068))))

(declare-fun bs!1243911 () Bool)

(assert (= bs!1243911 (and d!1720279 d!1720101)))

(assert (=> bs!1243911 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277159 lambda!277095))))

(declare-fun bs!1243912 () Bool)

(assert (= bs!1243912 (and d!1720279 d!1720111)))

(assert (=> bs!1243912 (not (= lambda!277159 lambda!277117))))

(assert (=> bs!1243912 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277159 lambda!277116))))

(assert (=> bs!1243910 (not (= lambda!277159 lambda!277071))))

(assert (=> d!1720279 true))

(assert (=> d!1720279 true))

(assert (=> d!1720279 true))

(assert (=> d!1720279 (= (isDefined!11897 (findConcatSeparation!1608 (regOne!30678 r!7292) (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326)) (Exists!2264 lambda!277159))))

(declare-fun lt!2187229 () Unit!153850)

(assert (=> d!1720279 (= lt!2187229 (choose!40338 (regOne!30678 r!7292) (regTwo!30678 r!7292) s!2326))))

(assert (=> d!1720279 (validRegex!6819 (regOne!30678 r!7292))))

(assert (=> d!1720279 (= (lemmaFindConcatSeparationEquivalentToExists!1372 (regOne!30678 r!7292) (regTwo!30678 r!7292) s!2326) lt!2187229)))

(declare-fun bs!1243913 () Bool)

(assert (= bs!1243913 d!1720279))

(declare-fun m!6398832 () Bool)

(assert (=> bs!1243913 m!6398832))

(assert (=> bs!1243913 m!6398826))

(declare-fun m!6398834 () Bool)

(assert (=> bs!1243913 m!6398834))

(assert (=> bs!1243913 m!6398044))

(assert (=> bs!1243913 m!6398044))

(assert (=> bs!1243913 m!6398046))

(assert (=> b!5370594 d!1720279))

(declare-fun d!1720281 () Bool)

(assert (=> d!1720281 (= (Exists!2264 lambda!277068) (choose!40337 lambda!277068))))

(declare-fun bs!1243914 () Bool)

(assert (= bs!1243914 d!1720281))

(declare-fun m!6398836 () Bool)

(assert (=> bs!1243914 m!6398836))

(assert (=> b!5370594 d!1720281))

(declare-fun d!1720283 () Bool)

(assert (=> d!1720283 (= (Exists!2264 lambda!277067) (choose!40337 lambda!277067))))

(declare-fun bs!1243915 () Bool)

(assert (= bs!1243915 d!1720283))

(declare-fun m!6398838 () Bool)

(assert (=> bs!1243915 m!6398838))

(assert (=> b!5370594 d!1720283))

(declare-fun bs!1243916 () Bool)

(declare-fun d!1720285 () Bool)

(assert (= bs!1243916 (and d!1720285 d!1720279)))

(declare-fun lambda!277160 () Int)

(assert (=> bs!1243916 (= lambda!277160 lambda!277159)))

(declare-fun bs!1243917 () Bool)

(assert (= bs!1243917 (and d!1720285 b!5370594)))

(assert (=> bs!1243917 (= lambda!277160 lambda!277067)))

(declare-fun bs!1243918 () Bool)

(assert (= bs!1243918 (and d!1720285 b!5370616)))

(assert (=> bs!1243918 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277160 lambda!277070))))

(assert (=> bs!1243917 (not (= lambda!277160 lambda!277068))))

(declare-fun bs!1243919 () Bool)

(assert (= bs!1243919 (and d!1720285 d!1720101)))

(assert (=> bs!1243919 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277160 lambda!277095))))

(declare-fun bs!1243920 () Bool)

(assert (= bs!1243920 (and d!1720285 d!1720111)))

(assert (=> bs!1243920 (not (= lambda!277160 lambda!277117))))

(assert (=> bs!1243920 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277160 lambda!277116))))

(assert (=> bs!1243918 (not (= lambda!277160 lambda!277071))))

(assert (=> d!1720285 true))

(assert (=> d!1720285 true))

(assert (=> d!1720285 true))

(declare-fun lambda!277161 () Int)

(assert (=> bs!1243916 (not (= lambda!277161 lambda!277159))))

(assert (=> bs!1243917 (not (= lambda!277161 lambda!277067))))

(assert (=> bs!1243918 (not (= lambda!277161 lambda!277070))))

(declare-fun bs!1243921 () Bool)

(assert (= bs!1243921 d!1720285))

(assert (=> bs!1243921 (not (= lambda!277161 lambda!277160))))

(assert (=> bs!1243917 (= lambda!277161 lambda!277068)))

(assert (=> bs!1243919 (not (= lambda!277161 lambda!277095))))

(assert (=> bs!1243920 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277161 lambda!277117))))

(assert (=> bs!1243920 (not (= lambda!277161 lambda!277116))))

(assert (=> bs!1243918 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277161 lambda!277071))))

(assert (=> d!1720285 true))

(assert (=> d!1720285 true))

(assert (=> d!1720285 true))

(assert (=> d!1720285 (= (Exists!2264 lambda!277160) (Exists!2264 lambda!277161))))

(declare-fun lt!2187230 () Unit!153850)

(assert (=> d!1720285 (= lt!2187230 (choose!40340 (regOne!30678 r!7292) (regTwo!30678 r!7292) s!2326))))

(assert (=> d!1720285 (validRegex!6819 (regOne!30678 r!7292))))

(assert (=> d!1720285 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!918 (regOne!30678 r!7292) (regTwo!30678 r!7292) s!2326) lt!2187230)))

(declare-fun m!6398840 () Bool)

(assert (=> bs!1243921 m!6398840))

(declare-fun m!6398842 () Bool)

(assert (=> bs!1243921 m!6398842))

(declare-fun m!6398844 () Bool)

(assert (=> bs!1243921 m!6398844))

(assert (=> bs!1243921 m!6398826))

(assert (=> b!5370594 d!1720285))

(declare-fun d!1720287 () Bool)

(assert (=> d!1720287 (= (isDefined!11897 (findConcatSeparation!1608 (regOne!30678 r!7292) (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326)) (not (isEmpty!33410 (findConcatSeparation!1608 (regOne!30678 r!7292) (regTwo!30678 r!7292) Nil!61426 s!2326 s!2326))))))

(declare-fun bs!1243922 () Bool)

(assert (= bs!1243922 d!1720287))

(assert (=> bs!1243922 m!6398044))

(declare-fun m!6398846 () Bool)

(assert (=> bs!1243922 m!6398846))

(assert (=> b!5370594 d!1720287))

(declare-fun b!5371546 () Bool)

(declare-fun e!3333032 () Bool)

(assert (=> b!5371546 (= e!3333032 (= (head!11522 s!2326) (c!935793 lt!2187037)))))

(declare-fun b!5371548 () Bool)

(declare-fun res!2279630 () Bool)

(assert (=> b!5371548 (=> (not res!2279630) (not e!3333032))))

(assert (=> b!5371548 (= res!2279630 (isEmpty!33406 (tail!10619 s!2326)))))

(declare-fun b!5371549 () Bool)

(declare-fun e!3333027 () Bool)

(assert (=> b!5371549 (= e!3333027 (matchR!7268 (derivativeStep!4223 lt!2187037 (head!11522 s!2326)) (tail!10619 s!2326)))))

(declare-fun b!5371550 () Bool)

(declare-fun e!3333030 () Bool)

(declare-fun e!3333033 () Bool)

(assert (=> b!5371550 (= e!3333030 e!3333033)))

(declare-fun c!936079 () Bool)

(assert (=> b!5371550 (= c!936079 ((_ is EmptyLang!15083) lt!2187037))))

(declare-fun b!5371551 () Bool)

(assert (=> b!5371551 (= e!3333027 (nullable!5252 lt!2187037))))

(declare-fun bm!384661 () Bool)

(declare-fun call!384666 () Bool)

(assert (=> bm!384661 (= call!384666 (isEmpty!33406 s!2326))))

(declare-fun b!5371552 () Bool)

(declare-fun e!3333028 () Bool)

(declare-fun e!3333031 () Bool)

(assert (=> b!5371552 (= e!3333028 e!3333031)))

(declare-fun res!2279629 () Bool)

(assert (=> b!5371552 (=> res!2279629 e!3333031)))

(assert (=> b!5371552 (= res!2279629 call!384666)))

(declare-fun b!5371553 () Bool)

(declare-fun lt!2187231 () Bool)

(assert (=> b!5371553 (= e!3333033 (not lt!2187231))))

(declare-fun b!5371554 () Bool)

(declare-fun res!2279628 () Bool)

(declare-fun e!3333029 () Bool)

(assert (=> b!5371554 (=> res!2279628 e!3333029)))

(assert (=> b!5371554 (= res!2279628 e!3333032)))

(declare-fun res!2279635 () Bool)

(assert (=> b!5371554 (=> (not res!2279635) (not e!3333032))))

(assert (=> b!5371554 (= res!2279635 lt!2187231)))

(declare-fun b!5371555 () Bool)

(assert (=> b!5371555 (= e!3333031 (not (= (head!11522 s!2326) (c!935793 lt!2187037))))))

(declare-fun b!5371547 () Bool)

(declare-fun res!2279633 () Bool)

(assert (=> b!5371547 (=> (not res!2279633) (not e!3333032))))

(assert (=> b!5371547 (= res!2279633 (not call!384666))))

(declare-fun d!1720289 () Bool)

(assert (=> d!1720289 e!3333030))

(declare-fun c!936080 () Bool)

(assert (=> d!1720289 (= c!936080 ((_ is EmptyExpr!15083) lt!2187037))))

(assert (=> d!1720289 (= lt!2187231 e!3333027)))

(declare-fun c!936081 () Bool)

(assert (=> d!1720289 (= c!936081 (isEmpty!33406 s!2326))))

(assert (=> d!1720289 (validRegex!6819 lt!2187037)))

(assert (=> d!1720289 (= (matchR!7268 lt!2187037 s!2326) lt!2187231)))

(declare-fun b!5371556 () Bool)

(declare-fun res!2279631 () Bool)

(assert (=> b!5371556 (=> res!2279631 e!3333029)))

(assert (=> b!5371556 (= res!2279631 (not ((_ is ElementMatch!15083) lt!2187037)))))

(assert (=> b!5371556 (= e!3333033 e!3333029)))

(declare-fun b!5371557 () Bool)

(assert (=> b!5371557 (= e!3333030 (= lt!2187231 call!384666))))

(declare-fun b!5371558 () Bool)

(declare-fun res!2279632 () Bool)

(assert (=> b!5371558 (=> res!2279632 e!3333031)))

(assert (=> b!5371558 (= res!2279632 (not (isEmpty!33406 (tail!10619 s!2326))))))

(declare-fun b!5371559 () Bool)

(assert (=> b!5371559 (= e!3333029 e!3333028)))

(declare-fun res!2279634 () Bool)

(assert (=> b!5371559 (=> (not res!2279634) (not e!3333028))))

(assert (=> b!5371559 (= res!2279634 (not lt!2187231))))

(assert (= (and d!1720289 c!936081) b!5371551))

(assert (= (and d!1720289 (not c!936081)) b!5371549))

(assert (= (and d!1720289 c!936080) b!5371557))

(assert (= (and d!1720289 (not c!936080)) b!5371550))

(assert (= (and b!5371550 c!936079) b!5371553))

(assert (= (and b!5371550 (not c!936079)) b!5371556))

(assert (= (and b!5371556 (not res!2279631)) b!5371554))

(assert (= (and b!5371554 res!2279635) b!5371547))

(assert (= (and b!5371547 res!2279633) b!5371548))

(assert (= (and b!5371548 res!2279630) b!5371546))

(assert (= (and b!5371554 (not res!2279628)) b!5371559))

(assert (= (and b!5371559 res!2279634) b!5371552))

(assert (= (and b!5371552 (not res!2279629)) b!5371558))

(assert (= (and b!5371558 (not res!2279632)) b!5371555))

(assert (= (or b!5371557 b!5371547 b!5371552) bm!384661))

(assert (=> d!1720289 m!6398420))

(declare-fun m!6398848 () Bool)

(assert (=> d!1720289 m!6398848))

(declare-fun m!6398850 () Bool)

(assert (=> b!5371551 m!6398850))

(assert (=> b!5371548 m!6398428))

(assert (=> b!5371548 m!6398428))

(assert (=> b!5371548 m!6398680))

(assert (=> b!5371546 m!6398424))

(assert (=> bm!384661 m!6398420))

(assert (=> b!5371558 m!6398428))

(assert (=> b!5371558 m!6398428))

(assert (=> b!5371558 m!6398680))

(assert (=> b!5371549 m!6398424))

(assert (=> b!5371549 m!6398424))

(declare-fun m!6398852 () Bool)

(assert (=> b!5371549 m!6398852))

(assert (=> b!5371549 m!6398428))

(assert (=> b!5371549 m!6398852))

(assert (=> b!5371549 m!6398428))

(declare-fun m!6398854 () Bool)

(assert (=> b!5371549 m!6398854))

(assert (=> b!5371555 m!6398424))

(assert (=> b!5370606 d!1720289))

(declare-fun bs!1243923 () Bool)

(declare-fun b!5371592 () Bool)

(assert (= bs!1243923 (and b!5371592 d!1720279)))

(declare-fun lambda!277166 () Int)

(assert (=> bs!1243923 (not (= lambda!277166 lambda!277159))))

(declare-fun bs!1243924 () Bool)

(assert (= bs!1243924 (and b!5371592 b!5370594)))

(assert (=> bs!1243924 (not (= lambda!277166 lambda!277067))))

(declare-fun bs!1243925 () Bool)

(assert (= bs!1243925 (and b!5371592 d!1720285)))

(assert (=> bs!1243925 (not (= lambda!277166 lambda!277161))))

(declare-fun bs!1243926 () Bool)

(assert (= bs!1243926 (and b!5371592 b!5370616)))

(assert (=> bs!1243926 (not (= lambda!277166 lambda!277070))))

(assert (=> bs!1243925 (not (= lambda!277166 lambda!277160))))

(assert (=> bs!1243924 (not (= lambda!277166 lambda!277068))))

(declare-fun bs!1243927 () Bool)

(assert (= bs!1243927 (and b!5371592 d!1720101)))

(assert (=> bs!1243927 (not (= lambda!277166 lambda!277095))))

(declare-fun bs!1243928 () Bool)

(assert (= bs!1243928 (and b!5371592 d!1720111)))

(assert (=> bs!1243928 (not (= lambda!277166 lambda!277117))))

(assert (=> bs!1243928 (not (= lambda!277166 lambda!277116))))

(assert (=> bs!1243926 (not (= lambda!277166 lambda!277071))))

(assert (=> b!5371592 true))

(assert (=> b!5371592 true))

(declare-fun bs!1243929 () Bool)

(declare-fun b!5371594 () Bool)

(assert (= bs!1243929 (and b!5371594 d!1720279)))

(declare-fun lambda!277167 () Int)

(assert (=> bs!1243929 (not (= lambda!277167 lambda!277159))))

(declare-fun bs!1243930 () Bool)

(assert (= bs!1243930 (and b!5371594 b!5370594)))

(assert (=> bs!1243930 (not (= lambda!277167 lambda!277067))))

(declare-fun bs!1243931 () Bool)

(assert (= bs!1243931 (and b!5371594 d!1720285)))

(assert (=> bs!1243931 (= (and (= (regOne!30678 lt!2187037) (regOne!30678 r!7292)) (= (regTwo!30678 lt!2187037) (regTwo!30678 r!7292))) (= lambda!277167 lambda!277161))))

(declare-fun bs!1243932 () Bool)

(assert (= bs!1243932 (and b!5371594 b!5370616)))

(assert (=> bs!1243932 (not (= lambda!277167 lambda!277070))))

(assert (=> bs!1243931 (not (= lambda!277167 lambda!277160))))

(assert (=> bs!1243930 (= (and (= (regOne!30678 lt!2187037) (regOne!30678 r!7292)) (= (regTwo!30678 lt!2187037) (regTwo!30678 r!7292))) (= lambda!277167 lambda!277068))))

(declare-fun bs!1243933 () Bool)

(assert (= bs!1243933 (and b!5371594 d!1720101)))

(assert (=> bs!1243933 (not (= lambda!277167 lambda!277095))))

(declare-fun bs!1243934 () Bool)

(assert (= bs!1243934 (and b!5371594 d!1720111)))

(assert (=> bs!1243934 (= (and (= (regOne!30678 lt!2187037) lt!2187036) (= (regTwo!30678 lt!2187037) (regTwo!30678 r!7292))) (= lambda!277167 lambda!277117))))

(assert (=> bs!1243934 (not (= lambda!277167 lambda!277116))))

(assert (=> bs!1243932 (= (and (= (regOne!30678 lt!2187037) lt!2187036) (= (regTwo!30678 lt!2187037) (regTwo!30678 r!7292))) (= lambda!277167 lambda!277071))))

(declare-fun bs!1243935 () Bool)

(assert (= bs!1243935 (and b!5371594 b!5371592)))

(assert (=> bs!1243935 (not (= lambda!277167 lambda!277166))))

(assert (=> b!5371594 true))

(assert (=> b!5371594 true))

(declare-fun b!5371593 () Bool)

(declare-fun e!3333057 () Bool)

(declare-fun call!384671 () Bool)

(assert (=> b!5371593 (= e!3333057 call!384671)))

(declare-fun e!3333058 () Bool)

(declare-fun call!384672 () Bool)

(assert (=> b!5371594 (= e!3333058 call!384672)))

(declare-fun b!5371595 () Bool)

(declare-fun e!3333056 () Bool)

(assert (=> b!5371595 (= e!3333056 e!3333058)))

(declare-fun c!936091 () Bool)

(assert (=> b!5371595 (= c!936091 ((_ is Star!15083) lt!2187037))))

(declare-fun bm!384666 () Bool)

(assert (=> bm!384666 (= call!384671 (isEmpty!33406 s!2326))))

(declare-fun b!5371596 () Bool)

(declare-fun e!3333054 () Bool)

(assert (=> b!5371596 (= e!3333054 (= s!2326 (Cons!61426 (c!935793 lt!2187037) Nil!61426)))))

(declare-fun b!5371597 () Bool)

(declare-fun e!3333055 () Bool)

(assert (=> b!5371597 (= e!3333056 e!3333055)))

(declare-fun res!2279652 () Bool)

(assert (=> b!5371597 (= res!2279652 (matchRSpec!2186 (regOne!30679 lt!2187037) s!2326))))

(assert (=> b!5371597 (=> res!2279652 e!3333055)))

(declare-fun bm!384667 () Bool)

(assert (=> bm!384667 (= call!384672 (Exists!2264 (ite c!936091 lambda!277166 lambda!277167)))))

(declare-fun b!5371598 () Bool)

(declare-fun res!2279653 () Bool)

(declare-fun e!3333052 () Bool)

(assert (=> b!5371598 (=> res!2279653 e!3333052)))

(assert (=> b!5371598 (= res!2279653 call!384671)))

(assert (=> b!5371598 (= e!3333058 e!3333052)))

(declare-fun b!5371599 () Bool)

(declare-fun c!936092 () Bool)

(assert (=> b!5371599 (= c!936092 ((_ is ElementMatch!15083) lt!2187037))))

(declare-fun e!3333053 () Bool)

(assert (=> b!5371599 (= e!3333053 e!3333054)))

(declare-fun b!5371600 () Bool)

(assert (=> b!5371600 (= e!3333057 e!3333053)))

(declare-fun res!2279654 () Bool)

(assert (=> b!5371600 (= res!2279654 (not ((_ is EmptyLang!15083) lt!2187037)))))

(assert (=> b!5371600 (=> (not res!2279654) (not e!3333053))))

(declare-fun b!5371601 () Bool)

(declare-fun c!936093 () Bool)

(assert (=> b!5371601 (= c!936093 ((_ is Union!15083) lt!2187037))))

(assert (=> b!5371601 (= e!3333054 e!3333056)))

(declare-fun b!5371602 () Bool)

(assert (=> b!5371602 (= e!3333055 (matchRSpec!2186 (regTwo!30679 lt!2187037) s!2326))))

(assert (=> b!5371592 (= e!3333052 call!384672)))

(declare-fun d!1720291 () Bool)

(declare-fun c!936090 () Bool)

(assert (=> d!1720291 (= c!936090 ((_ is EmptyExpr!15083) lt!2187037))))

(assert (=> d!1720291 (= (matchRSpec!2186 lt!2187037 s!2326) e!3333057)))

(assert (= (and d!1720291 c!936090) b!5371593))

(assert (= (and d!1720291 (not c!936090)) b!5371600))

(assert (= (and b!5371600 res!2279654) b!5371599))

(assert (= (and b!5371599 c!936092) b!5371596))

(assert (= (and b!5371599 (not c!936092)) b!5371601))

(assert (= (and b!5371601 c!936093) b!5371597))

(assert (= (and b!5371601 (not c!936093)) b!5371595))

(assert (= (and b!5371597 (not res!2279652)) b!5371602))

(assert (= (and b!5371595 c!936091) b!5371598))

(assert (= (and b!5371595 (not c!936091)) b!5371594))

(assert (= (and b!5371598 (not res!2279653)) b!5371592))

(assert (= (or b!5371592 b!5371594) bm!384667))

(assert (= (or b!5371593 b!5371598) bm!384666))

(assert (=> bm!384666 m!6398420))

(declare-fun m!6398856 () Bool)

(assert (=> b!5371597 m!6398856))

(declare-fun m!6398858 () Bool)

(assert (=> bm!384667 m!6398858))

(declare-fun m!6398860 () Bool)

(assert (=> b!5371602 m!6398860))

(assert (=> b!5370606 d!1720291))

(declare-fun d!1720293 () Bool)

(assert (=> d!1720293 (= (matchR!7268 lt!2187037 s!2326) (matchRSpec!2186 lt!2187037 s!2326))))

(declare-fun lt!2187234 () Unit!153850)

(declare-fun choose!40348 (Regex!15083 List!61550) Unit!153850)

(assert (=> d!1720293 (= lt!2187234 (choose!40348 lt!2187037 s!2326))))

(assert (=> d!1720293 (validRegex!6819 lt!2187037)))

(assert (=> d!1720293 (= (mainMatchTheorem!2186 lt!2187037 s!2326) lt!2187234)))

(declare-fun bs!1243936 () Bool)

(assert (= bs!1243936 d!1720293))

(assert (=> bs!1243936 m!6397974))

(assert (=> bs!1243936 m!6397976))

(declare-fun m!6398862 () Bool)

(assert (=> bs!1243936 m!6398862))

(assert (=> bs!1243936 m!6398848))

(assert (=> b!5370606 d!1720293))

(declare-fun b!5371603 () Bool)

(declare-fun e!3333064 () Bool)

(assert (=> b!5371603 (= e!3333064 (= (head!11522 (_1!35585 lt!2187033)) (c!935793 lt!2187036)))))

(declare-fun b!5371605 () Bool)

(declare-fun res!2279657 () Bool)

(assert (=> b!5371605 (=> (not res!2279657) (not e!3333064))))

(assert (=> b!5371605 (= res!2279657 (isEmpty!33406 (tail!10619 (_1!35585 lt!2187033))))))

(declare-fun b!5371606 () Bool)

(declare-fun e!3333059 () Bool)

(assert (=> b!5371606 (= e!3333059 (matchR!7268 (derivativeStep!4223 lt!2187036 (head!11522 (_1!35585 lt!2187033))) (tail!10619 (_1!35585 lt!2187033))))))

(declare-fun b!5371607 () Bool)

(declare-fun e!3333062 () Bool)

(declare-fun e!3333065 () Bool)

(assert (=> b!5371607 (= e!3333062 e!3333065)))

(declare-fun c!936094 () Bool)

(assert (=> b!5371607 (= c!936094 ((_ is EmptyLang!15083) lt!2187036))))

(declare-fun b!5371608 () Bool)

(assert (=> b!5371608 (= e!3333059 (nullable!5252 lt!2187036))))

(declare-fun bm!384668 () Bool)

(declare-fun call!384673 () Bool)

(assert (=> bm!384668 (= call!384673 (isEmpty!33406 (_1!35585 lt!2187033)))))

(declare-fun b!5371609 () Bool)

(declare-fun e!3333060 () Bool)

(declare-fun e!3333063 () Bool)

(assert (=> b!5371609 (= e!3333060 e!3333063)))

(declare-fun res!2279656 () Bool)

(assert (=> b!5371609 (=> res!2279656 e!3333063)))

(assert (=> b!5371609 (= res!2279656 call!384673)))

(declare-fun b!5371610 () Bool)

(declare-fun lt!2187235 () Bool)

(assert (=> b!5371610 (= e!3333065 (not lt!2187235))))

(declare-fun b!5371611 () Bool)

(declare-fun res!2279655 () Bool)

(declare-fun e!3333061 () Bool)

(assert (=> b!5371611 (=> res!2279655 e!3333061)))

(assert (=> b!5371611 (= res!2279655 e!3333064)))

(declare-fun res!2279662 () Bool)

(assert (=> b!5371611 (=> (not res!2279662) (not e!3333064))))

(assert (=> b!5371611 (= res!2279662 lt!2187235)))

(declare-fun b!5371612 () Bool)

(assert (=> b!5371612 (= e!3333063 (not (= (head!11522 (_1!35585 lt!2187033)) (c!935793 lt!2187036))))))

(declare-fun b!5371604 () Bool)

(declare-fun res!2279660 () Bool)

(assert (=> b!5371604 (=> (not res!2279660) (not e!3333064))))

(assert (=> b!5371604 (= res!2279660 (not call!384673))))

(declare-fun d!1720295 () Bool)

(assert (=> d!1720295 e!3333062))

(declare-fun c!936095 () Bool)

(assert (=> d!1720295 (= c!936095 ((_ is EmptyExpr!15083) lt!2187036))))

(assert (=> d!1720295 (= lt!2187235 e!3333059)))

(declare-fun c!936096 () Bool)

(assert (=> d!1720295 (= c!936096 (isEmpty!33406 (_1!35585 lt!2187033)))))

(assert (=> d!1720295 (validRegex!6819 lt!2187036)))

(assert (=> d!1720295 (= (matchR!7268 lt!2187036 (_1!35585 lt!2187033)) lt!2187235)))

(declare-fun b!5371613 () Bool)

(declare-fun res!2279658 () Bool)

(assert (=> b!5371613 (=> res!2279658 e!3333061)))

(assert (=> b!5371613 (= res!2279658 (not ((_ is ElementMatch!15083) lt!2187036)))))

(assert (=> b!5371613 (= e!3333065 e!3333061)))

(declare-fun b!5371614 () Bool)

(assert (=> b!5371614 (= e!3333062 (= lt!2187235 call!384673))))

(declare-fun b!5371615 () Bool)

(declare-fun res!2279659 () Bool)

(assert (=> b!5371615 (=> res!2279659 e!3333063)))

(assert (=> b!5371615 (= res!2279659 (not (isEmpty!33406 (tail!10619 (_1!35585 lt!2187033)))))))

(declare-fun b!5371616 () Bool)

(assert (=> b!5371616 (= e!3333061 e!3333060)))

(declare-fun res!2279661 () Bool)

(assert (=> b!5371616 (=> (not res!2279661) (not e!3333060))))

(assert (=> b!5371616 (= res!2279661 (not lt!2187235))))

(assert (= (and d!1720295 c!936096) b!5371608))

(assert (= (and d!1720295 (not c!936096)) b!5371606))

(assert (= (and d!1720295 c!936095) b!5371614))

(assert (= (and d!1720295 (not c!936095)) b!5371607))

(assert (= (and b!5371607 c!936094) b!5371610))

(assert (= (and b!5371607 (not c!936094)) b!5371613))

(assert (= (and b!5371613 (not res!2279658)) b!5371611))

(assert (= (and b!5371611 res!2279662) b!5371604))

(assert (= (and b!5371604 res!2279660) b!5371605))

(assert (= (and b!5371605 res!2279657) b!5371603))

(assert (= (and b!5371611 (not res!2279655)) b!5371616))

(assert (= (and b!5371616 res!2279661) b!5371609))

(assert (= (and b!5371609 (not res!2279656)) b!5371615))

(assert (= (and b!5371615 (not res!2279659)) b!5371612))

(assert (= (or b!5371614 b!5371604 b!5371609) bm!384668))

(assert (=> d!1720295 m!6398058))

(assert (=> d!1720295 m!6398272))

(declare-fun m!6398864 () Bool)

(assert (=> b!5371608 m!6398864))

(declare-fun m!6398866 () Bool)

(assert (=> b!5371605 m!6398866))

(assert (=> b!5371605 m!6398866))

(declare-fun m!6398868 () Bool)

(assert (=> b!5371605 m!6398868))

(declare-fun m!6398870 () Bool)

(assert (=> b!5371603 m!6398870))

(assert (=> bm!384668 m!6398058))

(assert (=> b!5371615 m!6398866))

(assert (=> b!5371615 m!6398866))

(assert (=> b!5371615 m!6398868))

(assert (=> b!5371606 m!6398870))

(assert (=> b!5371606 m!6398870))

(declare-fun m!6398872 () Bool)

(assert (=> b!5371606 m!6398872))

(assert (=> b!5371606 m!6398866))

(assert (=> b!5371606 m!6398872))

(assert (=> b!5371606 m!6398866))

(declare-fun m!6398874 () Bool)

(assert (=> b!5371606 m!6398874))

(assert (=> b!5371612 m!6398870))

(assert (=> b!5370607 d!1720295))

(declare-fun d!1720297 () Bool)

(declare-fun lt!2187236 () Regex!15083)

(assert (=> d!1720297 (validRegex!6819 lt!2187236)))

(assert (=> d!1720297 (= lt!2187236 (generalisedUnion!1012 (unfocusZipperList!525 (Cons!61425 lt!2187066 Nil!61425))))))

(assert (=> d!1720297 (= (unfocusZipper!825 (Cons!61425 lt!2187066 Nil!61425)) lt!2187236)))

(declare-fun bs!1243937 () Bool)

(assert (= bs!1243937 d!1720297))

(declare-fun m!6398876 () Bool)

(assert (=> bs!1243937 m!6398876))

(declare-fun m!6398878 () Bool)

(assert (=> bs!1243937 m!6398878))

(assert (=> bs!1243937 m!6398878))

(declare-fun m!6398880 () Bool)

(assert (=> bs!1243937 m!6398880))

(assert (=> b!5370626 d!1720297))

(declare-fun d!1720299 () Bool)

(declare-fun c!936097 () Bool)

(assert (=> d!1720299 (= c!936097 (isEmpty!33406 (t!374773 s!2326)))))

(declare-fun e!3333066 () Bool)

(assert (=> d!1720299 (= (matchZipper!1327 lt!2187038 (t!374773 s!2326)) e!3333066)))

(declare-fun b!5371617 () Bool)

(assert (=> b!5371617 (= e!3333066 (nullableZipper!1402 lt!2187038))))

(declare-fun b!5371618 () Bool)

(assert (=> b!5371618 (= e!3333066 (matchZipper!1327 (derivationStepZipper!1322 lt!2187038 (head!11522 (t!374773 s!2326))) (tail!10619 (t!374773 s!2326))))))

(assert (= (and d!1720299 c!936097) b!5371617))

(assert (= (and d!1720299 (not c!936097)) b!5371618))

(assert (=> d!1720299 m!6398432))

(declare-fun m!6398882 () Bool)

(assert (=> b!5371617 m!6398882))

(assert (=> b!5371618 m!6398436))

(assert (=> b!5371618 m!6398436))

(declare-fun m!6398884 () Bool)

(assert (=> b!5371618 m!6398884))

(assert (=> b!5371618 m!6398440))

(assert (=> b!5371618 m!6398884))

(assert (=> b!5371618 m!6398440))

(declare-fun m!6398886 () Bool)

(assert (=> b!5371618 m!6398886))

(assert (=> b!5370627 d!1720299))

(declare-fun call!384686 () List!61548)

(declare-fun bm!384681 () Bool)

(declare-fun call!384691 () (InoxSet Context!8934))

(declare-fun c!936110 () Bool)

(declare-fun c!936108 () Bool)

(declare-fun c!936109 () Bool)

(assert (=> bm!384681 (= call!384691 (derivationStepZipperDown!531 (ite c!936108 (regOne!30679 (reg!15412 (regOne!30678 r!7292))) (ite c!936110 (regTwo!30678 (reg!15412 (regOne!30678 r!7292))) (ite c!936109 (regOne!30678 (reg!15412 (regOne!30678 r!7292))) (reg!15412 (reg!15412 (regOne!30678 r!7292)))))) (ite (or c!936108 c!936110) lt!2187066 (Context!8935 call!384686)) (h!67874 s!2326)))))

(declare-fun bm!384682 () Bool)

(declare-fun call!384688 () (InoxSet Context!8934))

(declare-fun call!384687 () List!61548)

(assert (=> bm!384682 (= call!384688 (derivationStepZipperDown!531 (ite c!936108 (regTwo!30679 (reg!15412 (regOne!30678 r!7292))) (regOne!30678 (reg!15412 (regOne!30678 r!7292)))) (ite c!936108 lt!2187066 (Context!8935 call!384687)) (h!67874 s!2326)))))

(declare-fun b!5371641 () Bool)

(declare-fun e!3333082 () (InoxSet Context!8934))

(declare-fun e!3333084 () (InoxSet Context!8934))

(assert (=> b!5371641 (= e!3333082 e!3333084)))

(assert (=> b!5371641 (= c!936109 ((_ is Concat!23928) (reg!15412 (regOne!30678 r!7292))))))

(declare-fun b!5371642 () Bool)

(declare-fun e!3333083 () (InoxSet Context!8934))

(assert (=> b!5371642 (= e!3333083 ((_ map or) call!384691 call!384688))))

(declare-fun bm!384683 () Bool)

(declare-fun call!384689 () (InoxSet Context!8934))

(declare-fun call!384690 () (InoxSet Context!8934))

(assert (=> bm!384683 (= call!384689 call!384690)))

(declare-fun b!5371644 () Bool)

(declare-fun e!3333081 () (InoxSet Context!8934))

(assert (=> b!5371644 (= e!3333081 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371645 () Bool)

(declare-fun e!3333079 () Bool)

(assert (=> b!5371645 (= c!936110 e!3333079)))

(declare-fun res!2279665 () Bool)

(assert (=> b!5371645 (=> (not res!2279665) (not e!3333079))))

(assert (=> b!5371645 (= res!2279665 ((_ is Concat!23928) (reg!15412 (regOne!30678 r!7292))))))

(assert (=> b!5371645 (= e!3333083 e!3333082)))

(declare-fun b!5371646 () Bool)

(assert (=> b!5371646 (= e!3333084 call!384689)))

(declare-fun b!5371647 () Bool)

(declare-fun e!3333080 () (InoxSet Context!8934))

(assert (=> b!5371647 (= e!3333080 e!3333083)))

(assert (=> b!5371647 (= c!936108 ((_ is Union!15083) (reg!15412 (regOne!30678 r!7292))))))

(declare-fun b!5371648 () Bool)

(assert (=> b!5371648 (= e!3333079 (nullable!5252 (regOne!30678 (reg!15412 (regOne!30678 r!7292)))))))

(declare-fun b!5371649 () Bool)

(assert (=> b!5371649 (= e!3333080 (store ((as const (Array Context!8934 Bool)) false) lt!2187066 true))))

(declare-fun bm!384684 () Bool)

(assert (=> bm!384684 (= call!384686 call!384687)))

(declare-fun bm!384685 () Bool)

(declare-fun $colon$colon!1452 (List!61548 Regex!15083) List!61548)

(assert (=> bm!384685 (= call!384687 ($colon$colon!1452 (exprs!4967 lt!2187066) (ite (or c!936110 c!936109) (regTwo!30678 (reg!15412 (regOne!30678 r!7292))) (reg!15412 (regOne!30678 r!7292)))))))

(declare-fun bm!384686 () Bool)

(assert (=> bm!384686 (= call!384690 call!384691)))

(declare-fun d!1720301 () Bool)

(declare-fun c!936112 () Bool)

(assert (=> d!1720301 (= c!936112 (and ((_ is ElementMatch!15083) (reg!15412 (regOne!30678 r!7292))) (= (c!935793 (reg!15412 (regOne!30678 r!7292))) (h!67874 s!2326))))))

(assert (=> d!1720301 (= (derivationStepZipperDown!531 (reg!15412 (regOne!30678 r!7292)) lt!2187066 (h!67874 s!2326)) e!3333080)))

(declare-fun b!5371643 () Bool)

(assert (=> b!5371643 (= e!3333081 call!384689)))

(declare-fun b!5371650 () Bool)

(declare-fun c!936111 () Bool)

(assert (=> b!5371650 (= c!936111 ((_ is Star!15083) (reg!15412 (regOne!30678 r!7292))))))

(assert (=> b!5371650 (= e!3333084 e!3333081)))

(declare-fun b!5371651 () Bool)

(assert (=> b!5371651 (= e!3333082 ((_ map or) call!384688 call!384690))))

(assert (= (and d!1720301 c!936112) b!5371649))

(assert (= (and d!1720301 (not c!936112)) b!5371647))

(assert (= (and b!5371647 c!936108) b!5371642))

(assert (= (and b!5371647 (not c!936108)) b!5371645))

(assert (= (and b!5371645 res!2279665) b!5371648))

(assert (= (and b!5371645 c!936110) b!5371651))

(assert (= (and b!5371645 (not c!936110)) b!5371641))

(assert (= (and b!5371641 c!936109) b!5371646))

(assert (= (and b!5371641 (not c!936109)) b!5371650))

(assert (= (and b!5371650 c!936111) b!5371643))

(assert (= (and b!5371650 (not c!936111)) b!5371644))

(assert (= (or b!5371646 b!5371643) bm!384684))

(assert (= (or b!5371646 b!5371643) bm!384683))

(assert (= (or b!5371651 bm!384684) bm!384685))

(assert (= (or b!5371651 bm!384683) bm!384686))

(assert (= (or b!5371642 b!5371651) bm!384682))

(assert (= (or b!5371642 bm!384686) bm!384681))

(declare-fun m!6398888 () Bool)

(assert (=> bm!384682 m!6398888))

(declare-fun m!6398890 () Bool)

(assert (=> bm!384685 m!6398890))

(assert (=> b!5371649 m!6397960))

(declare-fun m!6398892 () Bool)

(assert (=> bm!384681 m!6398892))

(declare-fun m!6398894 () Bool)

(assert (=> b!5371648 m!6398894))

(assert (=> b!5370608 d!1720301))

(declare-fun bs!1243938 () Bool)

(declare-fun d!1720303 () Bool)

(assert (= bs!1243938 (and d!1720303 d!1720255)))

(declare-fun lambda!277168 () Int)

(assert (=> bs!1243938 (= lambda!277168 lambda!277152)))

(declare-fun bs!1243939 () Bool)

(assert (= bs!1243939 (and d!1720303 d!1720253)))

(assert (=> bs!1243939 (= lambda!277168 lambda!277149)))

(declare-fun bs!1243940 () Bool)

(assert (= bs!1243940 (and d!1720303 d!1720161)))

(assert (=> bs!1243940 (= lambda!277168 lambda!277124)))

(declare-fun bs!1243941 () Bool)

(assert (= bs!1243941 (and d!1720303 d!1720271)))

(assert (=> bs!1243941 (= lambda!277168 lambda!277155)))

(declare-fun bs!1243942 () Bool)

(assert (= bs!1243942 (and d!1720303 d!1720273)))

(assert (=> bs!1243942 (= lambda!277168 lambda!277158)))

(assert (=> d!1720303 (= (inv!80954 setElem!34799) (forall!14493 (exprs!4967 setElem!34799) lambda!277168))))

(declare-fun bs!1243943 () Bool)

(assert (= bs!1243943 d!1720303))

(declare-fun m!6398896 () Bool)

(assert (=> bs!1243943 m!6398896))

(assert (=> setNonEmpty!34799 d!1720303))

(declare-fun d!1720305 () Bool)

(assert (=> d!1720305 (= (nullable!5252 (h!67872 (exprs!4967 (h!67873 zl!343)))) (nullableFct!1553 (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun bs!1243944 () Bool)

(assert (= bs!1243944 d!1720305))

(declare-fun m!6398898 () Bool)

(assert (=> bs!1243944 m!6398898))

(assert (=> b!5370601 d!1720305))

(declare-fun d!1720307 () Bool)

(declare-fun c!936113 () Bool)

(declare-fun e!3333087 () Bool)

(assert (=> d!1720307 (= c!936113 e!3333087)))

(declare-fun res!2279666 () Bool)

(assert (=> d!1720307 (=> (not res!2279666) (not e!3333087))))

(assert (=> d!1720307 (= res!2279666 ((_ is Cons!61424) (exprs!4967 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343))))))))))

(declare-fun e!3333086 () (InoxSet Context!8934))

(assert (=> d!1720307 (= (derivationStepZipperUp!455 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343))))) (h!67874 s!2326)) e!3333086)))

(declare-fun b!5371652 () Bool)

(declare-fun e!3333085 () (InoxSet Context!8934))

(declare-fun call!384692 () (InoxSet Context!8934))

(assert (=> b!5371652 (= e!3333085 call!384692)))

(declare-fun bm!384687 () Bool)

(assert (=> bm!384687 (= call!384692 (derivationStepZipperDown!531 (h!67872 (exprs!4967 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343))))))) (Context!8935 (t!374771 (exprs!4967 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343)))))))) (h!67874 s!2326)))))

(declare-fun b!5371653 () Bool)

(assert (=> b!5371653 (= e!3333086 ((_ map or) call!384692 (derivationStepZipperUp!455 (Context!8935 (t!374771 (exprs!4967 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343)))))))) (h!67874 s!2326))))))

(declare-fun b!5371654 () Bool)

(assert (=> b!5371654 (= e!3333085 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371655 () Bool)

(assert (=> b!5371655 (= e!3333087 (nullable!5252 (h!67872 (exprs!4967 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343)))))))))))

(declare-fun b!5371656 () Bool)

(assert (=> b!5371656 (= e!3333086 e!3333085)))

(declare-fun c!936114 () Bool)

(assert (=> b!5371656 (= c!936114 ((_ is Cons!61424) (exprs!4967 (Context!8935 (Cons!61424 (h!67872 (exprs!4967 (h!67873 zl!343))) (t!374771 (exprs!4967 (h!67873 zl!343))))))))))

(assert (= (and d!1720307 res!2279666) b!5371655))

(assert (= (and d!1720307 c!936113) b!5371653))

(assert (= (and d!1720307 (not c!936113)) b!5371656))

(assert (= (and b!5371656 c!936114) b!5371652))

(assert (= (and b!5371656 (not c!936114)) b!5371654))

(assert (= (or b!5371653 b!5371652) bm!384687))

(declare-fun m!6398900 () Bool)

(assert (=> bm!384687 m!6398900))

(declare-fun m!6398902 () Bool)

(assert (=> b!5371653 m!6398902))

(declare-fun m!6398904 () Bool)

(assert (=> b!5371655 m!6398904))

(assert (=> b!5370601 d!1720307))

(declare-fun c!936117 () Bool)

(declare-fun c!936115 () Bool)

(declare-fun call!384693 () List!61548)

(declare-fun call!384698 () (InoxSet Context!8934))

(declare-fun bm!384688 () Bool)

(declare-fun c!936116 () Bool)

(assert (=> bm!384688 (= call!384698 (derivationStepZipperDown!531 (ite c!936115 (regOne!30679 (h!67872 (exprs!4967 (h!67873 zl!343)))) (ite c!936117 (regTwo!30678 (h!67872 (exprs!4967 (h!67873 zl!343)))) (ite c!936116 (regOne!30678 (h!67872 (exprs!4967 (h!67873 zl!343)))) (reg!15412 (h!67872 (exprs!4967 (h!67873 zl!343))))))) (ite (or c!936115 c!936117) lt!2187040 (Context!8935 call!384693)) (h!67874 s!2326)))))

(declare-fun call!384695 () (InoxSet Context!8934))

(declare-fun bm!384689 () Bool)

(declare-fun call!384694 () List!61548)

(assert (=> bm!384689 (= call!384695 (derivationStepZipperDown!531 (ite c!936115 (regTwo!30679 (h!67872 (exprs!4967 (h!67873 zl!343)))) (regOne!30678 (h!67872 (exprs!4967 (h!67873 zl!343))))) (ite c!936115 lt!2187040 (Context!8935 call!384694)) (h!67874 s!2326)))))

(declare-fun b!5371657 () Bool)

(declare-fun e!3333091 () (InoxSet Context!8934))

(declare-fun e!3333093 () (InoxSet Context!8934))

(assert (=> b!5371657 (= e!3333091 e!3333093)))

(assert (=> b!5371657 (= c!936116 ((_ is Concat!23928) (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371658 () Bool)

(declare-fun e!3333092 () (InoxSet Context!8934))

(assert (=> b!5371658 (= e!3333092 ((_ map or) call!384698 call!384695))))

(declare-fun bm!384690 () Bool)

(declare-fun call!384696 () (InoxSet Context!8934))

(declare-fun call!384697 () (InoxSet Context!8934))

(assert (=> bm!384690 (= call!384696 call!384697)))

(declare-fun b!5371660 () Bool)

(declare-fun e!3333090 () (InoxSet Context!8934))

(assert (=> b!5371660 (= e!3333090 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371661 () Bool)

(declare-fun e!3333088 () Bool)

(assert (=> b!5371661 (= c!936117 e!3333088)))

(declare-fun res!2279667 () Bool)

(assert (=> b!5371661 (=> (not res!2279667) (not e!3333088))))

(assert (=> b!5371661 (= res!2279667 ((_ is Concat!23928) (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(assert (=> b!5371661 (= e!3333092 e!3333091)))

(declare-fun b!5371662 () Bool)

(assert (=> b!5371662 (= e!3333093 call!384696)))

(declare-fun b!5371663 () Bool)

(declare-fun e!3333089 () (InoxSet Context!8934))

(assert (=> b!5371663 (= e!3333089 e!3333092)))

(assert (=> b!5371663 (= c!936115 ((_ is Union!15083) (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371664 () Bool)

(assert (=> b!5371664 (= e!3333088 (nullable!5252 (regOne!30678 (h!67872 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun b!5371665 () Bool)

(assert (=> b!5371665 (= e!3333089 (store ((as const (Array Context!8934 Bool)) false) lt!2187040 true))))

(declare-fun bm!384691 () Bool)

(assert (=> bm!384691 (= call!384693 call!384694)))

(declare-fun bm!384692 () Bool)

(assert (=> bm!384692 (= call!384694 ($colon$colon!1452 (exprs!4967 lt!2187040) (ite (or c!936117 c!936116) (regTwo!30678 (h!67872 (exprs!4967 (h!67873 zl!343)))) (h!67872 (exprs!4967 (h!67873 zl!343))))))))

(declare-fun bm!384693 () Bool)

(assert (=> bm!384693 (= call!384697 call!384698)))

(declare-fun d!1720309 () Bool)

(declare-fun c!936119 () Bool)

(assert (=> d!1720309 (= c!936119 (and ((_ is ElementMatch!15083) (h!67872 (exprs!4967 (h!67873 zl!343)))) (= (c!935793 (h!67872 (exprs!4967 (h!67873 zl!343)))) (h!67874 s!2326))))))

(assert (=> d!1720309 (= (derivationStepZipperDown!531 (h!67872 (exprs!4967 (h!67873 zl!343))) lt!2187040 (h!67874 s!2326)) e!3333089)))

(declare-fun b!5371659 () Bool)

(assert (=> b!5371659 (= e!3333090 call!384696)))

(declare-fun b!5371666 () Bool)

(declare-fun c!936118 () Bool)

(assert (=> b!5371666 (= c!936118 ((_ is Star!15083) (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(assert (=> b!5371666 (= e!3333093 e!3333090)))

(declare-fun b!5371667 () Bool)

(assert (=> b!5371667 (= e!3333091 ((_ map or) call!384695 call!384697))))

(assert (= (and d!1720309 c!936119) b!5371665))

(assert (= (and d!1720309 (not c!936119)) b!5371663))

(assert (= (and b!5371663 c!936115) b!5371658))

(assert (= (and b!5371663 (not c!936115)) b!5371661))

(assert (= (and b!5371661 res!2279667) b!5371664))

(assert (= (and b!5371661 c!936117) b!5371667))

(assert (= (and b!5371661 (not c!936117)) b!5371657))

(assert (= (and b!5371657 c!936116) b!5371662))

(assert (= (and b!5371657 (not c!936116)) b!5371666))

(assert (= (and b!5371666 c!936118) b!5371659))

(assert (= (and b!5371666 (not c!936118)) b!5371660))

(assert (= (or b!5371662 b!5371659) bm!384691))

(assert (= (or b!5371662 b!5371659) bm!384690))

(assert (= (or b!5371667 bm!384691) bm!384692))

(assert (= (or b!5371667 bm!384690) bm!384693))

(assert (= (or b!5371658 b!5371667) bm!384689))

(assert (= (or b!5371658 bm!384693) bm!384688))

(declare-fun m!6398906 () Bool)

(assert (=> bm!384689 m!6398906))

(declare-fun m!6398908 () Bool)

(assert (=> bm!384692 m!6398908))

(assert (=> b!5371665 m!6397988))

(declare-fun m!6398910 () Bool)

(assert (=> bm!384688 m!6398910))

(declare-fun m!6398912 () Bool)

(assert (=> b!5371664 m!6398912))

(assert (=> b!5370601 d!1720309))

(declare-fun d!1720311 () Bool)

(declare-fun c!936120 () Bool)

(declare-fun e!3333096 () Bool)

(assert (=> d!1720311 (= c!936120 e!3333096)))

(declare-fun res!2279668 () Bool)

(assert (=> d!1720311 (=> (not res!2279668) (not e!3333096))))

(assert (=> d!1720311 (= res!2279668 ((_ is Cons!61424) (exprs!4967 (h!67873 zl!343))))))

(declare-fun e!3333095 () (InoxSet Context!8934))

(assert (=> d!1720311 (= (derivationStepZipperUp!455 (h!67873 zl!343) (h!67874 s!2326)) e!3333095)))

(declare-fun b!5371668 () Bool)

(declare-fun e!3333094 () (InoxSet Context!8934))

(declare-fun call!384699 () (InoxSet Context!8934))

(assert (=> b!5371668 (= e!3333094 call!384699)))

(declare-fun bm!384694 () Bool)

(assert (=> bm!384694 (= call!384699 (derivationStepZipperDown!531 (h!67872 (exprs!4967 (h!67873 zl!343))) (Context!8935 (t!374771 (exprs!4967 (h!67873 zl!343)))) (h!67874 s!2326)))))

(declare-fun b!5371669 () Bool)

(assert (=> b!5371669 (= e!3333095 ((_ map or) call!384699 (derivationStepZipperUp!455 (Context!8935 (t!374771 (exprs!4967 (h!67873 zl!343)))) (h!67874 s!2326))))))

(declare-fun b!5371670 () Bool)

(assert (=> b!5371670 (= e!3333094 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371671 () Bool)

(assert (=> b!5371671 (= e!3333096 (nullable!5252 (h!67872 (exprs!4967 (h!67873 zl!343)))))))

(declare-fun b!5371672 () Bool)

(assert (=> b!5371672 (= e!3333095 e!3333094)))

(declare-fun c!936121 () Bool)

(assert (=> b!5371672 (= c!936121 ((_ is Cons!61424) (exprs!4967 (h!67873 zl!343))))))

(assert (= (and d!1720311 res!2279668) b!5371671))

(assert (= (and d!1720311 c!936120) b!5371669))

(assert (= (and d!1720311 (not c!936120)) b!5371672))

(assert (= (and b!5371672 c!936121) b!5371668))

(assert (= (and b!5371672 (not c!936121)) b!5371670))

(assert (= (or b!5371669 b!5371668) bm!384694))

(declare-fun m!6398914 () Bool)

(assert (=> bm!384694 m!6398914))

(declare-fun m!6398916 () Bool)

(assert (=> b!5371669 m!6398916))

(assert (=> b!5371671 m!6398068))

(assert (=> b!5370601 d!1720311))

(declare-fun d!1720313 () Bool)

(declare-fun c!936122 () Bool)

(declare-fun e!3333099 () Bool)

(assert (=> d!1720313 (= c!936122 e!3333099)))

(declare-fun res!2279669 () Bool)

(assert (=> d!1720313 (=> (not res!2279669) (not e!3333099))))

(assert (=> d!1720313 (= res!2279669 ((_ is Cons!61424) (exprs!4967 lt!2187040)))))

(declare-fun e!3333098 () (InoxSet Context!8934))

(assert (=> d!1720313 (= (derivationStepZipperUp!455 lt!2187040 (h!67874 s!2326)) e!3333098)))

(declare-fun b!5371673 () Bool)

(declare-fun e!3333097 () (InoxSet Context!8934))

(declare-fun call!384700 () (InoxSet Context!8934))

(assert (=> b!5371673 (= e!3333097 call!384700)))

(declare-fun bm!384695 () Bool)

(assert (=> bm!384695 (= call!384700 (derivationStepZipperDown!531 (h!67872 (exprs!4967 lt!2187040)) (Context!8935 (t!374771 (exprs!4967 lt!2187040))) (h!67874 s!2326)))))

(declare-fun b!5371674 () Bool)

(assert (=> b!5371674 (= e!3333098 ((_ map or) call!384700 (derivationStepZipperUp!455 (Context!8935 (t!374771 (exprs!4967 lt!2187040))) (h!67874 s!2326))))))

(declare-fun b!5371675 () Bool)

(assert (=> b!5371675 (= e!3333097 ((as const (Array Context!8934 Bool)) false))))

(declare-fun b!5371676 () Bool)

(assert (=> b!5371676 (= e!3333099 (nullable!5252 (h!67872 (exprs!4967 lt!2187040))))))

(declare-fun b!5371677 () Bool)

(assert (=> b!5371677 (= e!3333098 e!3333097)))

(declare-fun c!936123 () Bool)

(assert (=> b!5371677 (= c!936123 ((_ is Cons!61424) (exprs!4967 lt!2187040)))))

(assert (= (and d!1720313 res!2279669) b!5371676))

(assert (= (and d!1720313 c!936122) b!5371674))

(assert (= (and d!1720313 (not c!936122)) b!5371677))

(assert (= (and b!5371677 c!936123) b!5371673))

(assert (= (and b!5371677 (not c!936123)) b!5371675))

(assert (= (or b!5371674 b!5371673) bm!384695))

(declare-fun m!6398918 () Bool)

(assert (=> bm!384695 m!6398918))

(declare-fun m!6398920 () Bool)

(assert (=> b!5371674 m!6398920))

(declare-fun m!6398922 () Bool)

(assert (=> b!5371676 m!6398922))

(assert (=> b!5370601 d!1720313))

(declare-fun d!1720315 () Bool)

(assert (=> d!1720315 (= (flatMap!810 z!1189 lambda!277069) (dynLambda!24263 lambda!277069 (h!67873 zl!343)))))

(declare-fun lt!2187237 () Unit!153850)

(assert (=> d!1720315 (= lt!2187237 (choose!40345 z!1189 (h!67873 zl!343) lambda!277069))))

(assert (=> d!1720315 (= z!1189 (store ((as const (Array Context!8934 Bool)) false) (h!67873 zl!343) true))))

(assert (=> d!1720315 (= (lemmaFlatMapOnSingletonSet!342 z!1189 (h!67873 zl!343) lambda!277069) lt!2187237)))

(declare-fun b_lambda!205919 () Bool)

(assert (=> (not b_lambda!205919) (not d!1720315)))

(declare-fun bs!1243945 () Bool)

(assert (= bs!1243945 d!1720315))

(assert (=> bs!1243945 m!6398070))

(declare-fun m!6398924 () Bool)

(assert (=> bs!1243945 m!6398924))

(declare-fun m!6398926 () Bool)

(assert (=> bs!1243945 m!6398926))

(declare-fun m!6398928 () Bool)

(assert (=> bs!1243945 m!6398928))

(assert (=> b!5370601 d!1720315))

(declare-fun d!1720317 () Bool)

(assert (=> d!1720317 (= (flatMap!810 z!1189 lambda!277069) (choose!40344 z!1189 lambda!277069))))

(declare-fun bs!1243946 () Bool)

(assert (= bs!1243946 d!1720317))

(declare-fun m!6398930 () Bool)

(assert (=> bs!1243946 m!6398930))

(assert (=> b!5370601 d!1720317))

(declare-fun b!5371678 () Bool)

(declare-fun e!3333105 () Bool)

(assert (=> b!5371678 (= e!3333105 (= (head!11522 (_2!35585 lt!2187033)) (c!935793 (regTwo!30678 r!7292))))))

(declare-fun b!5371680 () Bool)

(declare-fun res!2279672 () Bool)

(assert (=> b!5371680 (=> (not res!2279672) (not e!3333105))))

(assert (=> b!5371680 (= res!2279672 (isEmpty!33406 (tail!10619 (_2!35585 lt!2187033))))))

(declare-fun b!5371681 () Bool)

(declare-fun e!3333100 () Bool)

(assert (=> b!5371681 (= e!3333100 (matchR!7268 (derivativeStep!4223 (regTwo!30678 r!7292) (head!11522 (_2!35585 lt!2187033))) (tail!10619 (_2!35585 lt!2187033))))))

(declare-fun b!5371682 () Bool)

(declare-fun e!3333103 () Bool)

(declare-fun e!3333106 () Bool)

(assert (=> b!5371682 (= e!3333103 e!3333106)))

(declare-fun c!936124 () Bool)

(assert (=> b!5371682 (= c!936124 ((_ is EmptyLang!15083) (regTwo!30678 r!7292)))))

(declare-fun b!5371683 () Bool)

(assert (=> b!5371683 (= e!3333100 (nullable!5252 (regTwo!30678 r!7292)))))

(declare-fun bm!384696 () Bool)

(declare-fun call!384701 () Bool)

(assert (=> bm!384696 (= call!384701 (isEmpty!33406 (_2!35585 lt!2187033)))))

(declare-fun b!5371684 () Bool)

(declare-fun e!3333101 () Bool)

(declare-fun e!3333104 () Bool)

(assert (=> b!5371684 (= e!3333101 e!3333104)))

(declare-fun res!2279671 () Bool)

(assert (=> b!5371684 (=> res!2279671 e!3333104)))

(assert (=> b!5371684 (= res!2279671 call!384701)))

(declare-fun b!5371685 () Bool)

(declare-fun lt!2187238 () Bool)

(assert (=> b!5371685 (= e!3333106 (not lt!2187238))))

(declare-fun b!5371686 () Bool)

(declare-fun res!2279670 () Bool)

(declare-fun e!3333102 () Bool)

(assert (=> b!5371686 (=> res!2279670 e!3333102)))

(assert (=> b!5371686 (= res!2279670 e!3333105)))

(declare-fun res!2279677 () Bool)

(assert (=> b!5371686 (=> (not res!2279677) (not e!3333105))))

(assert (=> b!5371686 (= res!2279677 lt!2187238)))

(declare-fun b!5371687 () Bool)

(assert (=> b!5371687 (= e!3333104 (not (= (head!11522 (_2!35585 lt!2187033)) (c!935793 (regTwo!30678 r!7292)))))))

(declare-fun b!5371679 () Bool)

(declare-fun res!2279675 () Bool)

(assert (=> b!5371679 (=> (not res!2279675) (not e!3333105))))

(assert (=> b!5371679 (= res!2279675 (not call!384701))))

(declare-fun d!1720319 () Bool)

(assert (=> d!1720319 e!3333103))

(declare-fun c!936125 () Bool)

(assert (=> d!1720319 (= c!936125 ((_ is EmptyExpr!15083) (regTwo!30678 r!7292)))))

(assert (=> d!1720319 (= lt!2187238 e!3333100)))

(declare-fun c!936126 () Bool)

(assert (=> d!1720319 (= c!936126 (isEmpty!33406 (_2!35585 lt!2187033)))))

(assert (=> d!1720319 (validRegex!6819 (regTwo!30678 r!7292))))

(assert (=> d!1720319 (= (matchR!7268 (regTwo!30678 r!7292) (_2!35585 lt!2187033)) lt!2187238)))

(declare-fun b!5371688 () Bool)

(declare-fun res!2279673 () Bool)

(assert (=> b!5371688 (=> res!2279673 e!3333102)))

(assert (=> b!5371688 (= res!2279673 (not ((_ is ElementMatch!15083) (regTwo!30678 r!7292))))))

(assert (=> b!5371688 (= e!3333106 e!3333102)))

(declare-fun b!5371689 () Bool)

(assert (=> b!5371689 (= e!3333103 (= lt!2187238 call!384701))))

(declare-fun b!5371690 () Bool)

(declare-fun res!2279674 () Bool)

(assert (=> b!5371690 (=> res!2279674 e!3333104)))

(assert (=> b!5371690 (= res!2279674 (not (isEmpty!33406 (tail!10619 (_2!35585 lt!2187033)))))))

(declare-fun b!5371691 () Bool)

(assert (=> b!5371691 (= e!3333102 e!3333101)))

(declare-fun res!2279676 () Bool)

(assert (=> b!5371691 (=> (not res!2279676) (not e!3333101))))

(assert (=> b!5371691 (= res!2279676 (not lt!2187238))))

(assert (= (and d!1720319 c!936126) b!5371683))

(assert (= (and d!1720319 (not c!936126)) b!5371681))

(assert (= (and d!1720319 c!936125) b!5371689))

(assert (= (and d!1720319 (not c!936125)) b!5371682))

(assert (= (and b!5371682 c!936124) b!5371685))

(assert (= (and b!5371682 (not c!936124)) b!5371688))

(assert (= (and b!5371688 (not res!2279673)) b!5371686))

(assert (= (and b!5371686 res!2279677) b!5371679))

(assert (= (and b!5371679 res!2279675) b!5371680))

(assert (= (and b!5371680 res!2279672) b!5371678))

(assert (= (and b!5371686 (not res!2279670)) b!5371691))

(assert (= (and b!5371691 res!2279676) b!5371684))

(assert (= (and b!5371684 (not res!2279671)) b!5371690))

(assert (= (and b!5371690 (not res!2279674)) b!5371687))

(assert (= (or b!5371689 b!5371679 b!5371684) bm!384696))

(declare-fun m!6398932 () Bool)

(assert (=> d!1720319 m!6398932))

(declare-fun m!6398934 () Bool)

(assert (=> d!1720319 m!6398934))

(declare-fun m!6398936 () Bool)

(assert (=> b!5371683 m!6398936))

(declare-fun m!6398938 () Bool)

(assert (=> b!5371680 m!6398938))

(assert (=> b!5371680 m!6398938))

(declare-fun m!6398940 () Bool)

(assert (=> b!5371680 m!6398940))

(declare-fun m!6398942 () Bool)

(assert (=> b!5371678 m!6398942))

(assert (=> bm!384696 m!6398932))

(assert (=> b!5371690 m!6398938))

(assert (=> b!5371690 m!6398938))

(assert (=> b!5371690 m!6398940))

(assert (=> b!5371681 m!6398942))

(assert (=> b!5371681 m!6398942))

(declare-fun m!6398944 () Bool)

(assert (=> b!5371681 m!6398944))

(assert (=> b!5371681 m!6398938))

(assert (=> b!5371681 m!6398944))

(assert (=> b!5371681 m!6398938))

(declare-fun m!6398946 () Bool)

(assert (=> b!5371681 m!6398946))

(assert (=> b!5371687 m!6398942))

(assert (=> b!5370621 d!1720319))

(declare-fun bs!1243947 () Bool)

(declare-fun b!5371692 () Bool)

(assert (= bs!1243947 (and b!5371692 d!1720279)))

(declare-fun lambda!277169 () Int)

(assert (=> bs!1243947 (not (= lambda!277169 lambda!277159))))

(declare-fun bs!1243948 () Bool)

(assert (= bs!1243948 (and b!5371692 b!5370594)))

(assert (=> bs!1243948 (not (= lambda!277169 lambda!277067))))

(declare-fun bs!1243949 () Bool)

(assert (= bs!1243949 (and b!5371692 d!1720285)))

(assert (=> bs!1243949 (not (= lambda!277169 lambda!277161))))

(declare-fun bs!1243950 () Bool)

(assert (= bs!1243950 (and b!5371692 b!5370616)))

(assert (=> bs!1243950 (not (= lambda!277169 lambda!277070))))

(assert (=> bs!1243949 (not (= lambda!277169 lambda!277160))))

(assert (=> bs!1243948 (not (= lambda!277169 lambda!277068))))

(declare-fun bs!1243951 () Bool)

(assert (= bs!1243951 (and b!5371692 d!1720101)))

(assert (=> bs!1243951 (not (= lambda!277169 lambda!277095))))

(declare-fun bs!1243952 () Bool)

(assert (= bs!1243952 (and b!5371692 d!1720111)))

(assert (=> bs!1243952 (not (= lambda!277169 lambda!277117))))

(declare-fun bs!1243953 () Bool)

(assert (= bs!1243953 (and b!5371692 b!5371594)))

(assert (=> bs!1243953 (not (= lambda!277169 lambda!277167))))

(assert (=> bs!1243952 (not (= lambda!277169 lambda!277116))))

(assert (=> bs!1243950 (not (= lambda!277169 lambda!277071))))

(declare-fun bs!1243954 () Bool)

(assert (= bs!1243954 (and b!5371692 b!5371592)))

(assert (=> bs!1243954 (= (and (= (reg!15412 r!7292) (reg!15412 lt!2187037)) (= r!7292 lt!2187037)) (= lambda!277169 lambda!277166))))

(assert (=> b!5371692 true))

(assert (=> b!5371692 true))

(declare-fun bs!1243955 () Bool)

(declare-fun b!5371694 () Bool)

(assert (= bs!1243955 (and b!5371694 d!1720279)))

(declare-fun lambda!277170 () Int)

(assert (=> bs!1243955 (not (= lambda!277170 lambda!277159))))

(declare-fun bs!1243956 () Bool)

(assert (= bs!1243956 (and b!5371694 b!5370594)))

(assert (=> bs!1243956 (not (= lambda!277170 lambda!277067))))

(declare-fun bs!1243957 () Bool)

(assert (= bs!1243957 (and b!5371694 d!1720285)))

(assert (=> bs!1243957 (= lambda!277170 lambda!277161)))

(assert (=> bs!1243957 (not (= lambda!277170 lambda!277160))))

(assert (=> bs!1243956 (= lambda!277170 lambda!277068)))

(declare-fun bs!1243958 () Bool)

(assert (= bs!1243958 (and b!5371694 d!1720101)))

(assert (=> bs!1243958 (not (= lambda!277170 lambda!277095))))

(declare-fun bs!1243959 () Bool)

(assert (= bs!1243959 (and b!5371694 d!1720111)))

(assert (=> bs!1243959 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277170 lambda!277117))))

(declare-fun bs!1243960 () Bool)

(assert (= bs!1243960 (and b!5371694 b!5371594)))

(assert (=> bs!1243960 (= (and (= (regOne!30678 r!7292) (regOne!30678 lt!2187037)) (= (regTwo!30678 r!7292) (regTwo!30678 lt!2187037))) (= lambda!277170 lambda!277167))))

(assert (=> bs!1243959 (not (= lambda!277170 lambda!277116))))

(declare-fun bs!1243961 () Bool)

(assert (= bs!1243961 (and b!5371694 b!5370616)))

(assert (=> bs!1243961 (= (= (regOne!30678 r!7292) lt!2187036) (= lambda!277170 lambda!277071))))

(declare-fun bs!1243962 () Bool)

(assert (= bs!1243962 (and b!5371694 b!5371592)))

(assert (=> bs!1243962 (not (= lambda!277170 lambda!277166))))

(assert (=> bs!1243961 (not (= lambda!277170 lambda!277070))))

(declare-fun bs!1243963 () Bool)

(assert (= bs!1243963 (and b!5371694 b!5371692)))

(assert (=> bs!1243963 (not (= lambda!277170 lambda!277169))))

(assert (=> b!5371694 true))

(assert (=> b!5371694 true))

(declare-fun b!5371693 () Bool)

(declare-fun e!3333112 () Bool)

(declare-fun call!384702 () Bool)

(assert (=> b!5371693 (= e!3333112 call!384702)))

(declare-fun e!3333113 () Bool)

(declare-fun call!384703 () Bool)

(assert (=> b!5371694 (= e!3333113 call!384703)))

(declare-fun b!5371695 () Bool)

(declare-fun e!3333111 () Bool)

(assert (=> b!5371695 (= e!3333111 e!3333113)))

(declare-fun c!936128 () Bool)

(assert (=> b!5371695 (= c!936128 ((_ is Star!15083) r!7292))))

(declare-fun bm!384697 () Bool)

(assert (=> bm!384697 (= call!384702 (isEmpty!33406 s!2326))))

(declare-fun b!5371696 () Bool)

(declare-fun e!3333109 () Bool)

(assert (=> b!5371696 (= e!3333109 (= s!2326 (Cons!61426 (c!935793 r!7292) Nil!61426)))))

(declare-fun b!5371697 () Bool)

(declare-fun e!3333110 () Bool)

(assert (=> b!5371697 (= e!3333111 e!3333110)))

(declare-fun res!2279678 () Bool)

(assert (=> b!5371697 (= res!2279678 (matchRSpec!2186 (regOne!30679 r!7292) s!2326))))

(assert (=> b!5371697 (=> res!2279678 e!3333110)))

(declare-fun bm!384698 () Bool)

(assert (=> bm!384698 (= call!384703 (Exists!2264 (ite c!936128 lambda!277169 lambda!277170)))))

(declare-fun b!5371698 () Bool)

(declare-fun res!2279679 () Bool)

(declare-fun e!3333107 () Bool)

(assert (=> b!5371698 (=> res!2279679 e!3333107)))

(assert (=> b!5371698 (= res!2279679 call!384702)))

(assert (=> b!5371698 (= e!3333113 e!3333107)))

(declare-fun b!5371699 () Bool)

(declare-fun c!936129 () Bool)

(assert (=> b!5371699 (= c!936129 ((_ is ElementMatch!15083) r!7292))))

(declare-fun e!3333108 () Bool)

(assert (=> b!5371699 (= e!3333108 e!3333109)))

(declare-fun b!5371700 () Bool)

(assert (=> b!5371700 (= e!3333112 e!3333108)))

(declare-fun res!2279680 () Bool)

(assert (=> b!5371700 (= res!2279680 (not ((_ is EmptyLang!15083) r!7292)))))

(assert (=> b!5371700 (=> (not res!2279680) (not e!3333108))))

(declare-fun b!5371701 () Bool)

(declare-fun c!936130 () Bool)

(assert (=> b!5371701 (= c!936130 ((_ is Union!15083) r!7292))))

(assert (=> b!5371701 (= e!3333109 e!3333111)))

(declare-fun b!5371702 () Bool)

(assert (=> b!5371702 (= e!3333110 (matchRSpec!2186 (regTwo!30679 r!7292) s!2326))))

(assert (=> b!5371692 (= e!3333107 call!384703)))

(declare-fun d!1720321 () Bool)

(declare-fun c!936127 () Bool)

(assert (=> d!1720321 (= c!936127 ((_ is EmptyExpr!15083) r!7292))))

(assert (=> d!1720321 (= (matchRSpec!2186 r!7292 s!2326) e!3333112)))

(assert (= (and d!1720321 c!936127) b!5371693))

(assert (= (and d!1720321 (not c!936127)) b!5371700))

(assert (= (and b!5371700 res!2279680) b!5371699))

(assert (= (and b!5371699 c!936129) b!5371696))

(assert (= (and b!5371699 (not c!936129)) b!5371701))

(assert (= (and b!5371701 c!936130) b!5371697))

(assert (= (and b!5371701 (not c!936130)) b!5371695))

(assert (= (and b!5371697 (not res!2279678)) b!5371702))

(assert (= (and b!5371695 c!936128) b!5371698))

(assert (= (and b!5371695 (not c!936128)) b!5371694))

(assert (= (and b!5371698 (not res!2279679)) b!5371692))

(assert (= (or b!5371692 b!5371694) bm!384698))

(assert (= (or b!5371693 b!5371698) bm!384697))

(assert (=> bm!384697 m!6398420))

(declare-fun m!6398948 () Bool)

(assert (=> b!5371697 m!6398948))

(declare-fun m!6398950 () Bool)

(assert (=> bm!384698 m!6398950))

(declare-fun m!6398952 () Bool)

(assert (=> b!5371702 m!6398952))

(assert (=> b!5370602 d!1720321))

(declare-fun b!5371703 () Bool)

(declare-fun e!3333119 () Bool)

(assert (=> b!5371703 (= e!3333119 (= (head!11522 s!2326) (c!935793 r!7292)))))

(declare-fun b!5371705 () Bool)

(declare-fun res!2279683 () Bool)

(assert (=> b!5371705 (=> (not res!2279683) (not e!3333119))))

(assert (=> b!5371705 (= res!2279683 (isEmpty!33406 (tail!10619 s!2326)))))

(declare-fun b!5371706 () Bool)

(declare-fun e!3333114 () Bool)

(assert (=> b!5371706 (= e!3333114 (matchR!7268 (derivativeStep!4223 r!7292 (head!11522 s!2326)) (tail!10619 s!2326)))))

(declare-fun b!5371707 () Bool)

(declare-fun e!3333117 () Bool)

(declare-fun e!3333120 () Bool)

(assert (=> b!5371707 (= e!3333117 e!3333120)))

(declare-fun c!936131 () Bool)

(assert (=> b!5371707 (= c!936131 ((_ is EmptyLang!15083) r!7292))))

(declare-fun b!5371708 () Bool)

(assert (=> b!5371708 (= e!3333114 (nullable!5252 r!7292))))

(declare-fun bm!384699 () Bool)

(declare-fun call!384704 () Bool)

(assert (=> bm!384699 (= call!384704 (isEmpty!33406 s!2326))))

(declare-fun b!5371709 () Bool)

(declare-fun e!3333115 () Bool)

(declare-fun e!3333118 () Bool)

(assert (=> b!5371709 (= e!3333115 e!3333118)))

(declare-fun res!2279682 () Bool)

(assert (=> b!5371709 (=> res!2279682 e!3333118)))

(assert (=> b!5371709 (= res!2279682 call!384704)))

(declare-fun b!5371710 () Bool)

(declare-fun lt!2187239 () Bool)

(assert (=> b!5371710 (= e!3333120 (not lt!2187239))))

(declare-fun b!5371711 () Bool)

(declare-fun res!2279681 () Bool)

(declare-fun e!3333116 () Bool)

(assert (=> b!5371711 (=> res!2279681 e!3333116)))

(assert (=> b!5371711 (= res!2279681 e!3333119)))

(declare-fun res!2279688 () Bool)

(assert (=> b!5371711 (=> (not res!2279688) (not e!3333119))))

(assert (=> b!5371711 (= res!2279688 lt!2187239)))

(declare-fun b!5371712 () Bool)

(assert (=> b!5371712 (= e!3333118 (not (= (head!11522 s!2326) (c!935793 r!7292))))))

(declare-fun b!5371704 () Bool)

(declare-fun res!2279686 () Bool)

(assert (=> b!5371704 (=> (not res!2279686) (not e!3333119))))

(assert (=> b!5371704 (= res!2279686 (not call!384704))))

(declare-fun d!1720323 () Bool)

(assert (=> d!1720323 e!3333117))

(declare-fun c!936132 () Bool)

(assert (=> d!1720323 (= c!936132 ((_ is EmptyExpr!15083) r!7292))))

(assert (=> d!1720323 (= lt!2187239 e!3333114)))

(declare-fun c!936133 () Bool)

(assert (=> d!1720323 (= c!936133 (isEmpty!33406 s!2326))))

(assert (=> d!1720323 (validRegex!6819 r!7292)))

(assert (=> d!1720323 (= (matchR!7268 r!7292 s!2326) lt!2187239)))

(declare-fun b!5371713 () Bool)

(declare-fun res!2279684 () Bool)

(assert (=> b!5371713 (=> res!2279684 e!3333116)))

(assert (=> b!5371713 (= res!2279684 (not ((_ is ElementMatch!15083) r!7292)))))

(assert (=> b!5371713 (= e!3333120 e!3333116)))

(declare-fun b!5371714 () Bool)

(assert (=> b!5371714 (= e!3333117 (= lt!2187239 call!384704))))

(declare-fun b!5371715 () Bool)

(declare-fun res!2279685 () Bool)

(assert (=> b!5371715 (=> res!2279685 e!3333118)))

(assert (=> b!5371715 (= res!2279685 (not (isEmpty!33406 (tail!10619 s!2326))))))

(declare-fun b!5371716 () Bool)

(assert (=> b!5371716 (= e!3333116 e!3333115)))

(declare-fun res!2279687 () Bool)

(assert (=> b!5371716 (=> (not res!2279687) (not e!3333115))))

(assert (=> b!5371716 (= res!2279687 (not lt!2187239))))

(assert (= (and d!1720323 c!936133) b!5371708))

(assert (= (and d!1720323 (not c!936133)) b!5371706))

(assert (= (and d!1720323 c!936132) b!5371714))

(assert (= (and d!1720323 (not c!936132)) b!5371707))

(assert (= (and b!5371707 c!936131) b!5371710))

(assert (= (and b!5371707 (not c!936131)) b!5371713))

(assert (= (and b!5371713 (not res!2279684)) b!5371711))

(assert (= (and b!5371711 res!2279688) b!5371704))

(assert (= (and b!5371704 res!2279686) b!5371705))

(assert (= (and b!5371705 res!2279683) b!5371703))

(assert (= (and b!5371711 (not res!2279681)) b!5371716))

(assert (= (and b!5371716 res!2279687) b!5371709))

(assert (= (and b!5371709 (not res!2279682)) b!5371715))

(assert (= (and b!5371715 (not res!2279685)) b!5371712))

(assert (= (or b!5371714 b!5371704 b!5371709) bm!384699))

(assert (=> d!1720323 m!6398420))

(assert (=> d!1720323 m!6398016))

(declare-fun m!6398954 () Bool)

(assert (=> b!5371708 m!6398954))

(assert (=> b!5371705 m!6398428))

(assert (=> b!5371705 m!6398428))

(assert (=> b!5371705 m!6398680))

(assert (=> b!5371703 m!6398424))

(assert (=> bm!384699 m!6398420))

(assert (=> b!5371715 m!6398428))

(assert (=> b!5371715 m!6398428))

(assert (=> b!5371715 m!6398680))

(assert (=> b!5371706 m!6398424))

(assert (=> b!5371706 m!6398424))

(declare-fun m!6398956 () Bool)

(assert (=> b!5371706 m!6398956))

(assert (=> b!5371706 m!6398428))

(assert (=> b!5371706 m!6398956))

(assert (=> b!5371706 m!6398428))

(declare-fun m!6398958 () Bool)

(assert (=> b!5371706 m!6398958))

(assert (=> b!5371712 m!6398424))

(assert (=> b!5370602 d!1720323))

(declare-fun d!1720325 () Bool)

(assert (=> d!1720325 (= (matchR!7268 r!7292 s!2326) (matchRSpec!2186 r!7292 s!2326))))

(declare-fun lt!2187240 () Unit!153850)

(assert (=> d!1720325 (= lt!2187240 (choose!40348 r!7292 s!2326))))

(assert (=> d!1720325 (validRegex!6819 r!7292)))

(assert (=> d!1720325 (= (mainMatchTheorem!2186 r!7292 s!2326) lt!2187240)))

(declare-fun bs!1243964 () Bool)

(assert (= bs!1243964 d!1720325))

(assert (=> bs!1243964 m!6398038))

(assert (=> bs!1243964 m!6398036))

(declare-fun m!6398960 () Bool)

(assert (=> bs!1243964 m!6398960))

(assert (=> bs!1243964 m!6398016))

(assert (=> b!5370602 d!1720325))

(declare-fun bs!1243965 () Bool)

(declare-fun d!1720327 () Bool)

(assert (= bs!1243965 (and d!1720327 b!5370601)))

(declare-fun lambda!277171 () Int)

(assert (=> bs!1243965 (= lambda!277171 lambda!277069)))

(declare-fun bs!1243966 () Bool)

(assert (= bs!1243966 (and d!1720327 d!1720239)))

(assert (=> bs!1243966 (= lambda!277171 lambda!277148)))

(assert (=> d!1720327 true))

(assert (=> d!1720327 (= (derivationStepZipper!1322 lt!2187055 (h!67874 s!2326)) (flatMap!810 lt!2187055 lambda!277171))))

(declare-fun bs!1243967 () Bool)

(assert (= bs!1243967 d!1720327))

(declare-fun m!6398962 () Bool)

(assert (=> bs!1243967 m!6398962))

(assert (=> b!5370622 d!1720327))

(declare-fun d!1720329 () Bool)

(assert (=> d!1720329 (= (flatMap!810 lt!2187055 lambda!277069) (choose!40344 lt!2187055 lambda!277069))))

(declare-fun bs!1243968 () Bool)

(assert (= bs!1243968 d!1720329))

(declare-fun m!6398964 () Bool)

(assert (=> bs!1243968 m!6398964))

(assert (=> b!5370622 d!1720329))

(assert (=> b!5370622 d!1720313))

(declare-fun d!1720331 () Bool)

(assert (=> d!1720331 (= (flatMap!810 lt!2187055 lambda!277069) (dynLambda!24263 lambda!277069 lt!2187040))))

(declare-fun lt!2187241 () Unit!153850)

(assert (=> d!1720331 (= lt!2187241 (choose!40345 lt!2187055 lt!2187040 lambda!277069))))

(assert (=> d!1720331 (= lt!2187055 (store ((as const (Array Context!8934 Bool)) false) lt!2187040 true))))

(assert (=> d!1720331 (= (lemmaFlatMapOnSingletonSet!342 lt!2187055 lt!2187040 lambda!277069) lt!2187241)))

(declare-fun b_lambda!205921 () Bool)

(assert (=> (not b_lambda!205921) (not d!1720331)))

(declare-fun bs!1243969 () Bool)

(assert (= bs!1243969 d!1720331))

(assert (=> bs!1243969 m!6397992))

(declare-fun m!6398966 () Bool)

(assert (=> bs!1243969 m!6398966))

(declare-fun m!6398968 () Bool)

(assert (=> bs!1243969 m!6398968))

(assert (=> bs!1243969 m!6397988))

(assert (=> b!5370622 d!1720331))

(declare-fun d!1720333 () Bool)

(assert (=> d!1720333 (= (isEmpty!33406 (_1!35585 lt!2187033)) ((_ is Nil!61426) (_1!35585 lt!2187033)))))

(assert (=> b!5370604 d!1720333))

(declare-fun d!1720335 () Bool)

(declare-fun e!3333123 () Bool)

(assert (=> d!1720335 (= (matchZipper!1327 ((_ map or) lt!2187065 lt!2187038) (t!374773 s!2326)) e!3333123)))

(declare-fun res!2279691 () Bool)

(assert (=> d!1720335 (=> res!2279691 e!3333123)))

(assert (=> d!1720335 (= res!2279691 (matchZipper!1327 lt!2187065 (t!374773 s!2326)))))

(declare-fun lt!2187244 () Unit!153850)

(declare-fun choose!40351 ((InoxSet Context!8934) (InoxSet Context!8934) List!61550) Unit!153850)

(assert (=> d!1720335 (= lt!2187244 (choose!40351 lt!2187065 lt!2187038 (t!374773 s!2326)))))

(assert (=> d!1720335 (= (lemmaZipperConcatMatchesSameAsBothZippers!320 lt!2187065 lt!2187038 (t!374773 s!2326)) lt!2187244)))

(declare-fun b!5371719 () Bool)

(assert (=> b!5371719 (= e!3333123 (matchZipper!1327 lt!2187038 (t!374773 s!2326)))))

(assert (= (and d!1720335 (not res!2279691)) b!5371719))

(assert (=> d!1720335 m!6397972))

(assert (=> d!1720335 m!6397970))

(declare-fun m!6398970 () Bool)

(assert (=> d!1720335 m!6398970))

(assert (=> b!5371719 m!6398004))

(assert (=> b!5370624 d!1720335))

(declare-fun d!1720337 () Bool)

(declare-fun c!936134 () Bool)

(assert (=> d!1720337 (= c!936134 (isEmpty!33406 (t!374773 s!2326)))))

(declare-fun e!3333124 () Bool)

(assert (=> d!1720337 (= (matchZipper!1327 lt!2187065 (t!374773 s!2326)) e!3333124)))

(declare-fun b!5371720 () Bool)

(assert (=> b!5371720 (= e!3333124 (nullableZipper!1402 lt!2187065))))

(declare-fun b!5371721 () Bool)

(assert (=> b!5371721 (= e!3333124 (matchZipper!1327 (derivationStepZipper!1322 lt!2187065 (head!11522 (t!374773 s!2326))) (tail!10619 (t!374773 s!2326))))))

(assert (= (and d!1720337 c!936134) b!5371720))

(assert (= (and d!1720337 (not c!936134)) b!5371721))

(assert (=> d!1720337 m!6398432))

(declare-fun m!6398972 () Bool)

(assert (=> b!5371720 m!6398972))

(assert (=> b!5371721 m!6398436))

(assert (=> b!5371721 m!6398436))

(declare-fun m!6398974 () Bool)

(assert (=> b!5371721 m!6398974))

(assert (=> b!5371721 m!6398440))

(assert (=> b!5371721 m!6398974))

(assert (=> b!5371721 m!6398440))

(declare-fun m!6398976 () Bool)

(assert (=> b!5371721 m!6398976))

(assert (=> b!5370624 d!1720337))

(declare-fun d!1720339 () Bool)

(declare-fun c!936135 () Bool)

(assert (=> d!1720339 (= c!936135 (isEmpty!33406 (t!374773 s!2326)))))

(declare-fun e!3333125 () Bool)

(assert (=> d!1720339 (= (matchZipper!1327 ((_ map or) lt!2187065 lt!2187038) (t!374773 s!2326)) e!3333125)))

(declare-fun b!5371722 () Bool)

(assert (=> b!5371722 (= e!3333125 (nullableZipper!1402 ((_ map or) lt!2187065 lt!2187038)))))

(declare-fun b!5371723 () Bool)

(assert (=> b!5371723 (= e!3333125 (matchZipper!1327 (derivationStepZipper!1322 ((_ map or) lt!2187065 lt!2187038) (head!11522 (t!374773 s!2326))) (tail!10619 (t!374773 s!2326))))))

(assert (= (and d!1720339 c!936135) b!5371722))

(assert (= (and d!1720339 (not c!936135)) b!5371723))

(assert (=> d!1720339 m!6398432))

(declare-fun m!6398978 () Bool)

(assert (=> b!5371722 m!6398978))

(assert (=> b!5371723 m!6398436))

(assert (=> b!5371723 m!6398436))

(declare-fun m!6398980 () Bool)

(assert (=> b!5371723 m!6398980))

(assert (=> b!5371723 m!6398440))

(assert (=> b!5371723 m!6398980))

(assert (=> b!5371723 m!6398440))

(declare-fun m!6398982 () Bool)

(assert (=> b!5371723 m!6398982))

(assert (=> b!5370624 d!1720339))

(declare-fun d!1720341 () Bool)

(assert (=> d!1720341 (= (isEmpty!33407 (t!374772 zl!343)) ((_ is Nil!61425) (t!374772 zl!343)))))

(assert (=> b!5370625 d!1720341))

(declare-fun b!5371736 () Bool)

(declare-fun e!3333128 () Bool)

(declare-fun tp!1490048 () Bool)

(assert (=> b!5371736 (= e!3333128 tp!1490048)))

(assert (=> b!5370620 (= tp!1489975 e!3333128)))

(declare-fun b!5371737 () Bool)

(declare-fun tp!1490050 () Bool)

(declare-fun tp!1490049 () Bool)

(assert (=> b!5371737 (= e!3333128 (and tp!1490050 tp!1490049))))

(declare-fun b!5371734 () Bool)

(assert (=> b!5371734 (= e!3333128 tp_is_empty!39419)))

(declare-fun b!5371735 () Bool)

(declare-fun tp!1490047 () Bool)

(declare-fun tp!1490046 () Bool)

(assert (=> b!5371735 (= e!3333128 (and tp!1490047 tp!1490046))))

(assert (= (and b!5370620 ((_ is ElementMatch!15083) (regOne!30679 r!7292))) b!5371734))

(assert (= (and b!5370620 ((_ is Concat!23928) (regOne!30679 r!7292))) b!5371735))

(assert (= (and b!5370620 ((_ is Star!15083) (regOne!30679 r!7292))) b!5371736))

(assert (= (and b!5370620 ((_ is Union!15083) (regOne!30679 r!7292))) b!5371737))

(declare-fun b!5371740 () Bool)

(declare-fun e!3333129 () Bool)

(declare-fun tp!1490053 () Bool)

(assert (=> b!5371740 (= e!3333129 tp!1490053)))

(assert (=> b!5370620 (= tp!1489976 e!3333129)))

(declare-fun b!5371741 () Bool)

(declare-fun tp!1490055 () Bool)

(declare-fun tp!1490054 () Bool)

(assert (=> b!5371741 (= e!3333129 (and tp!1490055 tp!1490054))))

(declare-fun b!5371738 () Bool)

(assert (=> b!5371738 (= e!3333129 tp_is_empty!39419)))

(declare-fun b!5371739 () Bool)

(declare-fun tp!1490052 () Bool)

(declare-fun tp!1490051 () Bool)

(assert (=> b!5371739 (= e!3333129 (and tp!1490052 tp!1490051))))

(assert (= (and b!5370620 ((_ is ElementMatch!15083) (regTwo!30679 r!7292))) b!5371738))

(assert (= (and b!5370620 ((_ is Concat!23928) (regTwo!30679 r!7292))) b!5371739))

(assert (= (and b!5370620 ((_ is Star!15083) (regTwo!30679 r!7292))) b!5371740))

(assert (= (and b!5370620 ((_ is Union!15083) (regTwo!30679 r!7292))) b!5371741))

(declare-fun b!5371744 () Bool)

(declare-fun e!3333130 () Bool)

(declare-fun tp!1490058 () Bool)

(assert (=> b!5371744 (= e!3333130 tp!1490058)))

(assert (=> b!5370596 (= tp!1489973 e!3333130)))

(declare-fun b!5371745 () Bool)

(declare-fun tp!1490060 () Bool)

(declare-fun tp!1490059 () Bool)

(assert (=> b!5371745 (= e!3333130 (and tp!1490060 tp!1490059))))

(declare-fun b!5371742 () Bool)

(assert (=> b!5371742 (= e!3333130 tp_is_empty!39419)))

(declare-fun b!5371743 () Bool)

(declare-fun tp!1490057 () Bool)

(declare-fun tp!1490056 () Bool)

(assert (=> b!5371743 (= e!3333130 (and tp!1490057 tp!1490056))))

(assert (= (and b!5370596 ((_ is ElementMatch!15083) (regOne!30678 r!7292))) b!5371742))

(assert (= (and b!5370596 ((_ is Concat!23928) (regOne!30678 r!7292))) b!5371743))

(assert (= (and b!5370596 ((_ is Star!15083) (regOne!30678 r!7292))) b!5371744))

(assert (= (and b!5370596 ((_ is Union!15083) (regOne!30678 r!7292))) b!5371745))

(declare-fun b!5371748 () Bool)

(declare-fun e!3333131 () Bool)

(declare-fun tp!1490063 () Bool)

(assert (=> b!5371748 (= e!3333131 tp!1490063)))

(assert (=> b!5370596 (= tp!1489971 e!3333131)))

(declare-fun b!5371749 () Bool)

(declare-fun tp!1490065 () Bool)

(declare-fun tp!1490064 () Bool)

(assert (=> b!5371749 (= e!3333131 (and tp!1490065 tp!1490064))))

(declare-fun b!5371746 () Bool)

(assert (=> b!5371746 (= e!3333131 tp_is_empty!39419)))

(declare-fun b!5371747 () Bool)

(declare-fun tp!1490062 () Bool)

(declare-fun tp!1490061 () Bool)

(assert (=> b!5371747 (= e!3333131 (and tp!1490062 tp!1490061))))

(assert (= (and b!5370596 ((_ is ElementMatch!15083) (regTwo!30678 r!7292))) b!5371746))

(assert (= (and b!5370596 ((_ is Concat!23928) (regTwo!30678 r!7292))) b!5371747))

(assert (= (and b!5370596 ((_ is Star!15083) (regTwo!30678 r!7292))) b!5371748))

(assert (= (and b!5370596 ((_ is Union!15083) (regTwo!30678 r!7292))) b!5371749))

(declare-fun b!5371754 () Bool)

(declare-fun e!3333134 () Bool)

(declare-fun tp!1490070 () Bool)

(declare-fun tp!1490071 () Bool)

(assert (=> b!5371754 (= e!3333134 (and tp!1490070 tp!1490071))))

(assert (=> b!5370611 (= tp!1489970 e!3333134)))

(assert (= (and b!5370611 ((_ is Cons!61424) (exprs!4967 setElem!34799))) b!5371754))

(declare-fun b!5371762 () Bool)

(declare-fun e!3333140 () Bool)

(declare-fun tp!1490076 () Bool)

(assert (=> b!5371762 (= e!3333140 tp!1490076)))

(declare-fun b!5371761 () Bool)

(declare-fun e!3333139 () Bool)

(declare-fun tp!1490077 () Bool)

(assert (=> b!5371761 (= e!3333139 (and (inv!80954 (h!67873 (t!374772 zl!343))) e!3333140 tp!1490077))))

(assert (=> b!5370633 (= tp!1489977 e!3333139)))

(assert (= b!5371761 b!5371762))

(assert (= (and b!5370633 ((_ is Cons!61425) (t!374772 zl!343))) b!5371761))

(declare-fun m!6398984 () Bool)

(assert (=> b!5371761 m!6398984))

(declare-fun condSetEmpty!34805 () Bool)

(assert (=> setNonEmpty!34799 (= condSetEmpty!34805 (= setRest!34799 ((as const (Array Context!8934 Bool)) false)))))

(declare-fun setRes!34805 () Bool)

(assert (=> setNonEmpty!34799 (= tp!1489974 setRes!34805)))

(declare-fun setIsEmpty!34805 () Bool)

(assert (=> setIsEmpty!34805 setRes!34805))

(declare-fun tp!1490083 () Bool)

(declare-fun e!3333143 () Bool)

(declare-fun setElem!34805 () Context!8934)

(declare-fun setNonEmpty!34805 () Bool)

(assert (=> setNonEmpty!34805 (= setRes!34805 (and tp!1490083 (inv!80954 setElem!34805) e!3333143))))

(declare-fun setRest!34805 () (InoxSet Context!8934))

(assert (=> setNonEmpty!34805 (= setRest!34799 ((_ map or) (store ((as const (Array Context!8934 Bool)) false) setElem!34805 true) setRest!34805))))

(declare-fun b!5371767 () Bool)

(declare-fun tp!1490082 () Bool)

(assert (=> b!5371767 (= e!3333143 tp!1490082)))

(assert (= (and setNonEmpty!34799 condSetEmpty!34805) setIsEmpty!34805))

(assert (= (and setNonEmpty!34799 (not condSetEmpty!34805)) setNonEmpty!34805))

(assert (= setNonEmpty!34805 b!5371767))

(declare-fun m!6398986 () Bool)

(assert (=> setNonEmpty!34805 m!6398986))

(declare-fun b!5371770 () Bool)

(declare-fun e!3333144 () Bool)

(declare-fun tp!1490086 () Bool)

(assert (=> b!5371770 (= e!3333144 tp!1490086)))

(assert (=> b!5370629 (= tp!1489968 e!3333144)))

(declare-fun b!5371771 () Bool)

(declare-fun tp!1490088 () Bool)

(declare-fun tp!1490087 () Bool)

(assert (=> b!5371771 (= e!3333144 (and tp!1490088 tp!1490087))))

(declare-fun b!5371768 () Bool)

(assert (=> b!5371768 (= e!3333144 tp_is_empty!39419)))

(declare-fun b!5371769 () Bool)

(declare-fun tp!1490085 () Bool)

(declare-fun tp!1490084 () Bool)

(assert (=> b!5371769 (= e!3333144 (and tp!1490085 tp!1490084))))

(assert (= (and b!5370629 ((_ is ElementMatch!15083) (reg!15412 r!7292))) b!5371768))

(assert (= (and b!5370629 ((_ is Concat!23928) (reg!15412 r!7292))) b!5371769))

(assert (= (and b!5370629 ((_ is Star!15083) (reg!15412 r!7292))) b!5371770))

(assert (= (and b!5370629 ((_ is Union!15083) (reg!15412 r!7292))) b!5371771))

(declare-fun b!5371776 () Bool)

(declare-fun e!3333147 () Bool)

(declare-fun tp!1490091 () Bool)

(assert (=> b!5371776 (= e!3333147 (and tp_is_empty!39419 tp!1490091))))

(assert (=> b!5370635 (= tp!1489969 e!3333147)))

(assert (= (and b!5370635 ((_ is Cons!61426) (t!374773 s!2326))) b!5371776))

(declare-fun b!5371777 () Bool)

(declare-fun e!3333148 () Bool)

(declare-fun tp!1490092 () Bool)

(declare-fun tp!1490093 () Bool)

(assert (=> b!5371777 (= e!3333148 (and tp!1490092 tp!1490093))))

(assert (=> b!5370595 (= tp!1489972 e!3333148)))

(assert (= (and b!5370595 ((_ is Cons!61424) (exprs!4967 (h!67873 zl!343)))) b!5371777))

(declare-fun b_lambda!205923 () Bool)

(assert (= b_lambda!205915 (or b!5370601 b_lambda!205923)))

(declare-fun bs!1243970 () Bool)

(declare-fun d!1720343 () Bool)

(assert (= bs!1243970 (and d!1720343 b!5370601)))

(assert (=> bs!1243970 (= (dynLambda!24263 lambda!277069 lt!2187031) (derivationStepZipperUp!455 lt!2187031 (h!67874 s!2326)))))

(assert (=> bs!1243970 m!6397966))

(assert (=> d!1720263 d!1720343))

(declare-fun b_lambda!205925 () Bool)

(assert (= b_lambda!205919 (or b!5370601 b_lambda!205925)))

(declare-fun bs!1243971 () Bool)

(declare-fun d!1720345 () Bool)

(assert (= bs!1243971 (and d!1720345 b!5370601)))

(assert (=> bs!1243971 (= (dynLambda!24263 lambda!277069 (h!67873 zl!343)) (derivationStepZipperUp!455 (h!67873 zl!343) (h!67874 s!2326)))))

(assert (=> bs!1243971 m!6398066))

(assert (=> d!1720315 d!1720345))

(declare-fun b_lambda!205927 () Bool)

(assert (= b_lambda!205903 (or b!5370601 b_lambda!205927)))

(declare-fun bs!1243972 () Bool)

(declare-fun d!1720347 () Bool)

(assert (= bs!1243972 (and d!1720347 b!5370601)))

(assert (=> bs!1243972 (= (dynLambda!24263 lambda!277069 lt!2187051) (derivationStepZipperUp!455 lt!2187051 (h!67874 s!2326)))))

(assert (=> bs!1243972 m!6398022))

(assert (=> d!1720237 d!1720347))

(declare-fun b_lambda!205929 () Bool)

(assert (= b_lambda!205917 (or b!5370601 b_lambda!205929)))

(declare-fun bs!1243973 () Bool)

(declare-fun d!1720349 () Bool)

(assert (= bs!1243973 (and d!1720349 b!5370601)))

(assert (=> bs!1243973 (= (dynLambda!24263 lambda!277069 lt!2187066) (derivationStepZipperUp!455 lt!2187066 (h!67874 s!2326)))))

(assert (=> bs!1243973 m!6397956))

(assert (=> d!1720265 d!1720349))

(declare-fun b_lambda!205931 () Bool)

(assert (= b_lambda!205921 (or b!5370601 b_lambda!205931)))

(declare-fun bs!1243974 () Bool)

(declare-fun d!1720351 () Bool)

(assert (= bs!1243974 (and d!1720351 b!5370601)))

(assert (=> bs!1243974 (= (dynLambda!24263 lambda!277069 lt!2187040) (derivationStepZipperUp!455 lt!2187040 (h!67874 s!2326)))))

(assert (=> bs!1243974 m!6397990))

(assert (=> d!1720331 d!1720351))

(check-sat (not b!5371648) (not d!1720325) (not b!5371424) (not b!5370821) (not b!5371277) (not b!5371540) (not b!5371712) (not bm!384689) (not b!5371771) (not bm!384666) (not bs!1243970) (not b!5371761) (not b!5371544) (not b!5371767) tp_is_empty!39419 (not b!5371480) (not b!5371769) (not b!5371605) (not b!5371524) (not b!5371669) (not b!5371702) (not bm!384606) (not b!5371399) (not b!5371653) (not d!1720237) (not d!1720329) (not b!5371019) (not d!1720067) (not bs!1243973) (not b!5371671) (not bm!384682) (not bm!384667) (not b!5371597) (not b!5370817) (not d!1720255) (not b!5371528) (not d!1720125) (not d!1720263) (not b!5371546) (not d!1720331) (not b!5371525) (not b!5371736) (not b_lambda!205927) (not b!5371603) (not b!5371189) (not bm!384668) (not b!5370950) (not d!1720317) (not b!5371680) (not b!5371705) (not b!5371612) (not bm!384598) (not b!5371548) (not d!1720299) (not b!5371394) (not b!5371747) (not b!5371558) (not d!1720279) (not b!5371299) (not d!1720315) (not bs!1243972) (not bm!384699) (not d!1720251) (not d!1720219) (not d!1720287) (not d!1720337) (not d!1720319) (not b!5371681) (not d!1720223) (not b!5371617) (not b!5371748) (not d!1720271) (not b!5371482) (not b!5371739) (not d!1720063) (not b!5371602) (not b!5371551) (not bm!384601) (not d!1720305) (not b!5370816) (not d!1720327) (not b!5371749) (not b!5371703) (not b!5371523) (not b!5371678) (not d!1720303) (not b!5371391) (not b!5371499) (not d!1720283) (not b!5371737) (not bm!384698) (not bm!384661) (not d!1720339) (not b!5371195) (not bm!384696) (not d!1720239) (not bm!384687) (not bs!1243974) (not b!5371294) (not b!5371422) (not b!5371247) (not b!5371674) (not b!5371194) (not b!5371687) (not b!5371676) (not d!1720257) (not bs!1243971) (not bm!384688) (not b!5371192) (not b!5371690) (not b!5371722) (not b!5371697) (not b!5371743) (not b!5371721) (not b!5371762) (not b!5370814) (not bm!384643) (not b!5371776) (not b!5371296) (not b!5371664) (not b!5371683) (not b!5371535) (not b!5371706) (not b!5371549) (not bm!384681) (not d!1720095) (not b_lambda!205925) (not b!5371481) (not b!5371384) (not bm!384694) (not d!1720105) (not b!5371723) (not b!5370822) (not d!1720285) (not b!5371018) (not bm!384695) (not b!5371398) (not bm!384645) (not b!5371741) (not d!1720323) (not setNonEmpty!34805) (not d!1720101) (not d!1720193) (not b!5371490) (not b!5371486) (not b!5371494) (not b!5371190) (not b!5371538) (not bm!384692) (not d!1720289) (not b!5371529) (not d!1720133) (not d!1720225) (not d!1720261) (not d!1720093) (not b!5371735) (not b!5371275) (not d!1720297) (not bm!384655) (not b!5371537) (not b!5371719) (not b!5371483) (not bm!384603) (not bm!384608) (not bm!384635) (not bm!384660) (not b!5371522) (not b!5371385) (not d!1720161) (not b!5371487) (not d!1720295) (not bm!384697) (not b!5371555) (not bm!384605) (not b!5371016) (not b!5371777) (not b!5371745) (not bm!384633) (not b_lambda!205929) (not b!5371606) (not d!1720273) (not b!5371527) (not b!5371720) (not b!5371497) (not bm!384610) (not d!1720281) (not bm!384607) (not b!5371744) (not d!1720265) (not b!5371492) (not d!1720065) (not d!1720335) (not b!5371608) (not b!5371618) (not b!5371484) (not d!1720253) (not b!5371655) (not b!5371191) (not b!5371017) (not b!5371198) (not d!1720259) (not b_lambda!205931) (not b!5371382) (not d!1720217) (not b!5371770) (not bm!384600) (not d!1720293) (not bm!384685) (not bm!384599) (not b_lambda!205923) (not d!1720099) (not b!5371615) (not b!5371539) (not d!1720277) (not b!5371708) (not b!5370951) (not d!1720111) (not b!5370815) (not b!5371387) (not b!5371740) (not b!5371545) (not b!5371754) (not bm!384658) (not bm!384659) (not b!5371715))
(check-sat)
