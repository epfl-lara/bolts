; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563110 () Bool)

(assert start!563110)

(declare-fun b!5346698 () Bool)

(assert (=> b!5346698 true))

(assert (=> b!5346698 true))

(declare-fun lambda!274571 () Int)

(declare-fun lambda!274570 () Int)

(assert (=> b!5346698 (not (= lambda!274571 lambda!274570))))

(assert (=> b!5346698 true))

(assert (=> b!5346698 true))

(declare-fun b!5346686 () Bool)

(assert (=> b!5346686 true))

(declare-fun bs!1239580 () Bool)

(declare-fun b!5346687 () Bool)

(assert (= bs!1239580 (and b!5346687 b!5346698)))

(declare-datatypes ((C!30336 0))(
  ( (C!30337 (val!24870 Int)) )
))
(declare-datatypes ((Regex!15033 0))(
  ( (ElementMatch!15033 (c!930519 C!30336)) (Concat!23878 (regOne!30578 Regex!15033) (regTwo!30578 Regex!15033)) (EmptyExpr!15033) (Star!15033 (reg!15362 Regex!15033)) (EmptyLang!15033) (Union!15033 (regOne!30579 Regex!15033) (regTwo!30579 Regex!15033)) )
))
(declare-fun r!7292 () Regex!15033)

(declare-fun lt!2179983 () Regex!15033)

(declare-fun lambda!274573 () Int)

(assert (=> bs!1239580 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274573 lambda!274570))))

(assert (=> bs!1239580 (not (= lambda!274573 lambda!274571))))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(declare-fun lambda!274574 () Int)

(assert (=> bs!1239580 (not (= lambda!274574 lambda!274570))))

(assert (=> bs!1239580 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274574 lambda!274571))))

(assert (=> b!5346687 (not (= lambda!274574 lambda!274573))))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(declare-fun lambda!274575 () Int)

(declare-fun lt!2179958 () Regex!15033)

(assert (=> bs!1239580 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274575 lambda!274570))))

(assert (=> bs!1239580 (not (= lambda!274575 lambda!274571))))

(assert (=> b!5346687 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274575 lambda!274573))))

(assert (=> b!5346687 (not (= lambda!274575 lambda!274574))))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(declare-fun lambda!274576 () Int)

(assert (=> b!5346687 (not (= lambda!274576 lambda!274573))))

(assert (=> b!5346687 (not (= lambda!274576 lambda!274575))))

(assert (=> b!5346687 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274576 lambda!274574))))

(assert (=> bs!1239580 (not (= lambda!274576 lambda!274570))))

(assert (=> bs!1239580 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274576 lambda!274571))))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(assert (=> b!5346687 true))

(declare-fun b!5346664 () Bool)

(declare-fun e!3319437 () Bool)

(declare-fun tp!1485869 () Bool)

(assert (=> b!5346664 (= e!3319437 tp!1485869)))

(declare-fun b!5346665 () Bool)

(declare-fun e!3319436 () Bool)

(declare-fun tp!1485871 () Bool)

(declare-datatypes ((List!61398 0))(
  ( (Nil!61274) (Cons!61274 (h!67722 Regex!15033) (t!374615 List!61398)) )
))
(declare-datatypes ((Context!8834 0))(
  ( (Context!8835 (exprs!4917 List!61398)) )
))
(declare-datatypes ((List!61399 0))(
  ( (Nil!61275) (Cons!61275 (h!67723 Context!8834) (t!374616 List!61399)) )
))
(declare-fun zl!343 () List!61399)

(declare-fun e!3319452 () Bool)

(declare-fun inv!80829 (Context!8834) Bool)

(assert (=> b!5346665 (= e!3319452 (and (inv!80829 (h!67723 zl!343)) e!3319436 tp!1485871))))

(declare-fun b!5346666 () Bool)

(declare-fun e!3319435 () Bool)

(declare-fun e!3319441 () Bool)

(assert (=> b!5346666 (= e!3319435 (not e!3319441))))

(declare-fun res!2268510 () Bool)

(assert (=> b!5346666 (=> res!2268510 e!3319441)))

(get-info :version)

(assert (=> b!5346666 (= res!2268510 (not ((_ is Cons!61275) zl!343)))))

(declare-fun lt!2179959 () Bool)

(declare-datatypes ((List!61400 0))(
  ( (Nil!61276) (Cons!61276 (h!67724 C!30336) (t!374617 List!61400)) )
))
(declare-fun s!2326 () List!61400)

(declare-fun matchRSpec!2136 (Regex!15033 List!61400) Bool)

(assert (=> b!5346666 (= lt!2179959 (matchRSpec!2136 r!7292 s!2326))))

(declare-fun matchR!7218 (Regex!15033 List!61400) Bool)

(assert (=> b!5346666 (= lt!2179959 (matchR!7218 r!7292 s!2326))))

(declare-datatypes ((Unit!153650 0))(
  ( (Unit!153651) )
))
(declare-fun lt!2179981 () Unit!153650)

(declare-fun mainMatchTheorem!2136 (Regex!15033 List!61400) Unit!153650)

(assert (=> b!5346666 (= lt!2179981 (mainMatchTheorem!2136 r!7292 s!2326))))

(declare-fun b!5346667 () Bool)

(declare-fun res!2268522 () Bool)

(assert (=> b!5346667 (=> (not res!2268522) (not e!3319435))))

(declare-fun unfocusZipper!775 (List!61399) Regex!15033)

(assert (=> b!5346667 (= res!2268522 (= r!7292 (unfocusZipper!775 zl!343)))))

(declare-fun b!5346668 () Bool)

(declare-fun e!3319440 () Bool)

(declare-fun e!3319446 () Bool)

(assert (=> b!5346668 (= e!3319440 e!3319446)))

(declare-fun res!2268530 () Bool)

(assert (=> b!5346668 (=> res!2268530 e!3319446)))

(declare-fun lt!2179987 () Bool)

(assert (=> b!5346668 (= res!2268530 (not (= lt!2179959 lt!2179987)))))

(declare-fun lt!2179964 () Regex!15033)

(assert (=> b!5346668 (= lt!2179987 (matchR!7218 (Concat!23878 lt!2179964 lt!2179958) s!2326))))

(declare-fun b!5346669 () Bool)

(declare-fun tp!1485866 () Bool)

(assert (=> b!5346669 (= e!3319436 tp!1485866)))

(declare-fun b!5346670 () Bool)

(declare-fun tp!1485865 () Bool)

(declare-fun tp!1485864 () Bool)

(assert (=> b!5346670 (= e!3319437 (and tp!1485865 tp!1485864))))

(declare-fun b!5346671 () Bool)

(declare-fun lambda!274577 () Int)

(declare-fun forall!14455 (List!61398 Int) Bool)

(assert (=> b!5346671 (= e!3319446 (forall!14455 (t!374615 (exprs!4917 (h!67723 zl!343))) lambda!274577))))

(assert (=> b!5346671 (= lt!2179987 (matchR!7218 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)) s!2326))))

(declare-fun lt!2179988 () Unit!153650)

(declare-fun lemmaConcatAssociative!10 (Regex!15033 Regex!15033 Regex!15033 List!61400) Unit!153650)

(assert (=> b!5346671 (= lt!2179988 (lemmaConcatAssociative!10 (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326))))

(declare-fun b!5346672 () Bool)

(declare-fun res!2268514 () Bool)

(assert (=> b!5346672 (=> res!2268514 e!3319441)))

(declare-fun generalisedUnion!962 (List!61398) Regex!15033)

(declare-fun unfocusZipperList!475 (List!61399) List!61398)

(assert (=> b!5346672 (= res!2268514 (not (= r!7292 (generalisedUnion!962 (unfocusZipperList!475 zl!343)))))))

(declare-fun b!5346673 () Bool)

(declare-fun res!2268506 () Bool)

(assert (=> b!5346673 (=> res!2268506 e!3319440)))

(assert (=> b!5346673 (= res!2268506 (not (= lt!2179959 (matchR!7218 (Concat!23878 lt!2179964 (regTwo!30578 r!7292)) s!2326))))))

(declare-fun b!5346674 () Bool)

(declare-fun e!3319444 () Unit!153650)

(declare-fun Unit!153652 () Unit!153650)

(assert (=> b!5346674 (= e!3319444 Unit!153652)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2179967 () (InoxSet Context!8834))

(declare-fun lt!2179963 () Unit!153650)

(declare-fun lt!2179966 () (InoxSet Context!8834))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!270 ((InoxSet Context!8834) (InoxSet Context!8834) List!61400) Unit!153650)

(assert (=> b!5346674 (= lt!2179963 (lemmaZipperConcatMatchesSameAsBothZippers!270 lt!2179967 lt!2179966 (t!374617 s!2326)))))

(declare-fun res!2268528 () Bool)

(declare-fun matchZipper!1277 ((InoxSet Context!8834) List!61400) Bool)

(assert (=> b!5346674 (= res!2268528 (matchZipper!1277 lt!2179967 (t!374617 s!2326)))))

(declare-fun e!3319450 () Bool)

(assert (=> b!5346674 (=> res!2268528 e!3319450)))

(assert (=> b!5346674 (= (matchZipper!1277 ((_ map or) lt!2179967 lt!2179966) (t!374617 s!2326)) e!3319450)))

(declare-fun b!5346675 () Bool)

(declare-fun res!2268529 () Bool)

(declare-fun e!3319434 () Bool)

(assert (=> b!5346675 (=> res!2268529 e!3319434)))

(assert (=> b!5346675 (= res!2268529 (not ((_ is Concat!23878) (regOne!30578 r!7292))))))

(declare-fun b!5346676 () Bool)

(declare-fun res!2268508 () Bool)

(assert (=> b!5346676 (=> res!2268508 e!3319441)))

(declare-fun isEmpty!33247 (List!61399) Bool)

(assert (=> b!5346676 (= res!2268508 (not (isEmpty!33247 (t!374616 zl!343))))))

(declare-fun b!5346677 () Bool)

(declare-fun e!3319448 () Bool)

(declare-fun e!3319442 () Bool)

(assert (=> b!5346677 (= e!3319448 e!3319442)))

(declare-fun res!2268513 () Bool)

(assert (=> b!5346677 (=> res!2268513 e!3319442)))

(declare-fun lt!2179951 () List!61399)

(declare-fun zipperDepthTotal!186 (List!61399) Int)

(assert (=> b!5346677 (= res!2268513 (>= (zipperDepthTotal!186 lt!2179951) (zipperDepthTotal!186 zl!343)))))

(declare-fun lt!2179978 () Context!8834)

(assert (=> b!5346677 (= lt!2179951 (Cons!61275 lt!2179978 Nil!61275))))

(declare-fun b!5346678 () Bool)

(declare-fun tp_is_empty!39319 () Bool)

(assert (=> b!5346678 (= e!3319437 tp_is_empty!39319)))

(declare-fun b!5346679 () Bool)

(declare-fun tp!1485867 () Bool)

(declare-fun tp!1485872 () Bool)

(assert (=> b!5346679 (= e!3319437 (and tp!1485867 tp!1485872))))

(declare-fun b!5346680 () Bool)

(declare-fun res!2268518 () Bool)

(assert (=> b!5346680 (=> res!2268518 e!3319448)))

(declare-fun contextDepthTotal!166 (Context!8834) Int)

(assert (=> b!5346680 (= res!2268518 (>= (contextDepthTotal!166 lt!2179978) (contextDepthTotal!166 (h!67723 zl!343))))))

(declare-fun b!5346681 () Bool)

(declare-fun e!3319443 () Bool)

(assert (=> b!5346681 (= e!3319434 e!3319443)))

(declare-fun res!2268520 () Bool)

(assert (=> b!5346681 (=> res!2268520 e!3319443)))

(declare-fun lt!2179961 () (InoxSet Context!8834))

(assert (=> b!5346681 (= res!2268520 (not (= lt!2179967 lt!2179961)))))

(declare-fun lt!2179974 () List!61398)

(declare-fun derivationStepZipperDown!481 (Regex!15033 Context!8834 C!30336) (InoxSet Context!8834))

(assert (=> b!5346681 (= lt!2179961 (derivationStepZipperDown!481 (regOne!30578 (regOne!30578 r!7292)) (Context!8835 lt!2179974) (h!67724 s!2326)))))

(assert (=> b!5346681 (= lt!2179974 (Cons!61274 (regTwo!30578 (regOne!30578 r!7292)) (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5346682 () Bool)

(declare-fun e!3319439 () Bool)

(declare-fun e!3319445 () Bool)

(assert (=> b!5346682 (= e!3319439 e!3319445)))

(declare-fun res!2268526 () Bool)

(assert (=> b!5346682 (=> res!2268526 e!3319445)))

(declare-fun lt!2179976 () (InoxSet Context!8834))

(assert (=> b!5346682 (= res!2268526 (not (= lt!2179976 lt!2179961)))))

(declare-fun lt!2179953 () (InoxSet Context!8834))

(declare-fun lambda!274572 () Int)

(declare-fun flatMap!760 ((InoxSet Context!8834) Int) (InoxSet Context!8834))

(declare-fun derivationStepZipperUp!405 (Context!8834 C!30336) (InoxSet Context!8834))

(assert (=> b!5346682 (= (flatMap!760 lt!2179953 lambda!274572) (derivationStepZipperUp!405 lt!2179978 (h!67724 s!2326)))))

(declare-fun lt!2179972 () Unit!153650)

(declare-fun lemmaFlatMapOnSingletonSet!292 ((InoxSet Context!8834) Context!8834 Int) Unit!153650)

(assert (=> b!5346682 (= lt!2179972 (lemmaFlatMapOnSingletonSet!292 lt!2179953 lt!2179978 lambda!274572))))

(declare-fun lt!2179960 () (InoxSet Context!8834))

(assert (=> b!5346682 (= lt!2179960 (derivationStepZipperUp!405 lt!2179978 (h!67724 s!2326)))))

(declare-fun derivationStepZipper!1274 ((InoxSet Context!8834) C!30336) (InoxSet Context!8834))

(assert (=> b!5346682 (= lt!2179976 (derivationStepZipper!1274 lt!2179953 (h!67724 s!2326)))))

(assert (=> b!5346682 (= lt!2179953 (store ((as const (Array Context!8834 Bool)) false) lt!2179978 true))))

(declare-fun lt!2179985 () List!61398)

(assert (=> b!5346682 (= lt!2179978 (Context!8835 lt!2179985))))

(assert (=> b!5346682 (= lt!2179985 (Cons!61274 (regOne!30578 (regOne!30578 r!7292)) lt!2179974))))

(declare-fun b!5346683 () Bool)

(declare-fun res!2268519 () Bool)

(assert (=> b!5346683 (=> res!2268519 e!3319442)))

(declare-fun zipperDepth!142 (List!61399) Int)

(assert (=> b!5346683 (= res!2268519 (> (zipperDepth!142 lt!2179951) (zipperDepth!142 zl!343)))))

(declare-fun b!5346684 () Bool)

(assert (=> b!5346684 (= e!3319450 (matchZipper!1277 lt!2179966 (t!374617 s!2326)))))

(declare-fun setElem!34531 () Context!8834)

(declare-fun e!3319451 () Bool)

(declare-fun tp!1485868 () Bool)

(declare-fun setNonEmpty!34531 () Bool)

(declare-fun setRes!34531 () Bool)

(assert (=> setNonEmpty!34531 (= setRes!34531 (and tp!1485868 (inv!80829 setElem!34531) e!3319451))))

(declare-fun z!1189 () (InoxSet Context!8834))

(declare-fun setRest!34531 () (InoxSet Context!8834))

(assert (=> setNonEmpty!34531 (= z!1189 ((_ map or) (store ((as const (Array Context!8834 Bool)) false) setElem!34531 true) setRest!34531))))

(declare-fun b!5346685 () Bool)

(declare-fun Unit!153653 () Unit!153650)

(assert (=> b!5346685 (= e!3319444 Unit!153653)))

(declare-fun e!3319438 () Bool)

(assert (=> b!5346686 (= e!3319438 e!3319434)))

(declare-fun res!2268512 () Bool)

(assert (=> b!5346686 (=> res!2268512 e!3319434)))

(assert (=> b!5346686 (= res!2268512 (or (and ((_ is ElementMatch!15033) (regOne!30578 r!7292)) (= (c!930519 (regOne!30578 r!7292)) (h!67724 s!2326))) ((_ is Union!15033) (regOne!30578 r!7292))))))

(declare-fun lt!2179969 () Unit!153650)

(assert (=> b!5346686 (= lt!2179969 e!3319444)))

(declare-fun c!930518 () Bool)

(declare-fun nullable!5202 (Regex!15033) Bool)

(assert (=> b!5346686 (= c!930518 (nullable!5202 (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> b!5346686 (= (flatMap!760 z!1189 lambda!274572) (derivationStepZipperUp!405 (h!67723 zl!343) (h!67724 s!2326)))))

(declare-fun lt!2179965 () Unit!153650)

(assert (=> b!5346686 (= lt!2179965 (lemmaFlatMapOnSingletonSet!292 z!1189 (h!67723 zl!343) lambda!274572))))

(declare-fun lt!2179971 () Context!8834)

(assert (=> b!5346686 (= lt!2179966 (derivationStepZipperUp!405 lt!2179971 (h!67724 s!2326)))))

(assert (=> b!5346686 (= lt!2179967 (derivationStepZipperDown!481 (h!67722 (exprs!4917 (h!67723 zl!343))) lt!2179971 (h!67724 s!2326)))))

(assert (=> b!5346686 (= lt!2179971 (Context!8835 (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun lt!2179954 () (InoxSet Context!8834))

(assert (=> b!5346686 (= lt!2179954 (derivationStepZipperUp!405 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343))))) (h!67724 s!2326)))))

(assert (=> b!5346687 (= e!3319442 e!3319440)))

(declare-fun res!2268523 () Bool)

(assert (=> b!5346687 (=> res!2268523 e!3319440)))

(declare-fun lt!2179975 () Bool)

(declare-fun lt!2179979 () Bool)

(declare-fun lt!2179980 () Bool)

(assert (=> b!5346687 (= res!2268523 (or (not (= lt!2179979 lt!2179975)) (not (= lt!2179979 lt!2179980))))))

(assert (=> b!5346687 (= lt!2179979 (matchZipper!1277 z!1189 s!2326))))

(declare-fun Exists!2214 (Int) Bool)

(assert (=> b!5346687 (= (Exists!2214 lambda!274575) (Exists!2214 lambda!274576))))

(declare-fun lt!2179962 () Unit!153650)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!868 (Regex!15033 Regex!15033 List!61400) Unit!153650)

(assert (=> b!5346687 (= lt!2179962 (lemmaExistCutMatchRandMatchRSpecEquivalent!868 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326))))

(declare-datatypes ((tuple2!64464 0))(
  ( (tuple2!64465 (_1!35535 List!61400) (_2!35535 List!61400)) )
))
(declare-datatypes ((Option!15144 0))(
  ( (None!15143) (Some!15143 (v!51172 tuple2!64464)) )
))
(declare-fun isDefined!11847 (Option!15144) Bool)

(declare-fun findConcatSeparation!1558 (Regex!15033 Regex!15033 List!61400 List!61400 List!61400) Option!15144)

(assert (=> b!5346687 (= (isDefined!11847 (findConcatSeparation!1558 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 Nil!61276 s!2326 s!2326)) (Exists!2214 lambda!274575))))

(declare-fun lt!2179986 () Unit!153650)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1322 (Regex!15033 Regex!15033 List!61400) Unit!153650)

(assert (=> b!5346687 (= lt!2179986 (lemmaFindConcatSeparationEquivalentToExists!1322 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326))))

(declare-fun generalisedConcat!702 (List!61398) Regex!15033)

(assert (=> b!5346687 (= lt!2179958 (generalisedConcat!702 (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> b!5346687 (= (matchR!7218 lt!2179983 s!2326) (matchRSpec!2136 lt!2179983 s!2326))))

(declare-fun lt!2179968 () Unit!153650)

(assert (=> b!5346687 (= lt!2179968 (mainMatchTheorem!2136 lt!2179983 s!2326))))

(assert (=> b!5346687 (= (Exists!2214 lambda!274573) (Exists!2214 lambda!274574))))

(declare-fun lt!2179952 () Unit!153650)

(assert (=> b!5346687 (= lt!2179952 (lemmaExistCutMatchRandMatchRSpecEquivalent!868 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 s!2326))))

(assert (=> b!5346687 (= (isDefined!11847 (findConcatSeparation!1558 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 Nil!61276 s!2326 s!2326)) (Exists!2214 lambda!274573))))

(declare-fun lt!2179977 () Unit!153650)

(assert (=> b!5346687 (= lt!2179977 (lemmaFindConcatSeparationEquivalentToExists!1322 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 s!2326))))

(assert (=> b!5346687 (= lt!2179983 (generalisedConcat!702 lt!2179974))))

(declare-fun lt!2179957 () Regex!15033)

(assert (=> b!5346687 (= lt!2179980 (matchRSpec!2136 lt!2179957 s!2326))))

(declare-fun lt!2179956 () Unit!153650)

(assert (=> b!5346687 (= lt!2179956 (mainMatchTheorem!2136 lt!2179957 s!2326))))

(assert (=> b!5346687 (= lt!2179980 lt!2179975)))

(assert (=> b!5346687 (= lt!2179975 (matchZipper!1277 lt!2179953 s!2326))))

(assert (=> b!5346687 (= lt!2179980 (matchR!7218 lt!2179957 s!2326))))

(declare-fun lt!2179982 () Unit!153650)

(declare-fun theoremZipperRegexEquiv!431 ((InoxSet Context!8834) List!61399 Regex!15033 List!61400) Unit!153650)

(assert (=> b!5346687 (= lt!2179982 (theoremZipperRegexEquiv!431 lt!2179953 lt!2179951 lt!2179957 s!2326))))

(assert (=> b!5346687 (= lt!2179957 (generalisedConcat!702 lt!2179985))))

(declare-fun b!5346688 () Bool)

(declare-fun res!2268515 () Bool)

(assert (=> b!5346688 (=> res!2268515 e!3319441)))

(assert (=> b!5346688 (= res!2268515 (or ((_ is EmptyExpr!15033) r!7292) ((_ is EmptyLang!15033) r!7292) ((_ is ElementMatch!15033) r!7292) ((_ is Union!15033) r!7292) (not ((_ is Concat!23878) r!7292))))))

(declare-fun b!5346689 () Bool)

(declare-fun res!2268527 () Bool)

(assert (=> b!5346689 (=> res!2268527 e!3319438)))

(declare-fun isEmpty!33248 (List!61398) Bool)

(assert (=> b!5346689 (= res!2268527 (isEmpty!33248 (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5346690 () Bool)

(declare-fun res!2268504 () Bool)

(assert (=> b!5346690 (=> res!2268504 e!3319434)))

(declare-fun e!3319449 () Bool)

(assert (=> b!5346690 (= res!2268504 e!3319449)))

(declare-fun res!2268531 () Bool)

(assert (=> b!5346690 (=> (not res!2268531) (not e!3319449))))

(assert (=> b!5346690 (= res!2268531 ((_ is Concat!23878) (regOne!30578 r!7292)))))

(declare-fun res!2268516 () Bool)

(assert (=> start!563110 (=> (not res!2268516) (not e!3319435))))

(declare-fun validRegex!6769 (Regex!15033) Bool)

(assert (=> start!563110 (= res!2268516 (validRegex!6769 r!7292))))

(assert (=> start!563110 e!3319435))

(assert (=> start!563110 e!3319437))

(declare-fun condSetEmpty!34531 () Bool)

(assert (=> start!563110 (= condSetEmpty!34531 (= z!1189 ((as const (Array Context!8834 Bool)) false)))))

(assert (=> start!563110 setRes!34531))

(assert (=> start!563110 e!3319452))

(declare-fun e!3319447 () Bool)

(assert (=> start!563110 e!3319447))

(declare-fun b!5346691 () Bool)

(declare-fun res!2268509 () Bool)

(assert (=> b!5346691 (=> (not res!2268509) (not e!3319435))))

(declare-fun toList!8817 ((InoxSet Context!8834)) List!61399)

(assert (=> b!5346691 (= res!2268509 (= (toList!8817 z!1189) zl!343))))

(declare-fun b!5346692 () Bool)

(assert (=> b!5346692 (= e!3319445 e!3319448)))

(declare-fun res!2268521 () Bool)

(assert (=> b!5346692 (=> res!2268521 e!3319448)))

(assert (=> b!5346692 (= res!2268521 (not (= (exprs!4917 (h!67723 zl!343)) (Cons!61274 lt!2179964 (t!374615 (exprs!4917 (h!67723 zl!343)))))))))

(assert (=> b!5346692 (= lt!2179964 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292))))))

(declare-fun setIsEmpty!34531 () Bool)

(assert (=> setIsEmpty!34531 setRes!34531))

(declare-fun b!5346693 () Bool)

(assert (=> b!5346693 (= e!3319449 (nullable!5202 (regOne!30578 (regOne!30578 r!7292))))))

(declare-fun b!5346694 () Bool)

(declare-fun tp!1485873 () Bool)

(assert (=> b!5346694 (= e!3319451 tp!1485873)))

(declare-fun b!5346695 () Bool)

(declare-fun res!2268511 () Bool)

(assert (=> b!5346695 (=> res!2268511 e!3319441)))

(assert (=> b!5346695 (= res!2268511 (not ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5346696 () Bool)

(declare-fun res!2268507 () Bool)

(assert (=> b!5346696 (=> res!2268507 e!3319445)))

(declare-fun lt!2179955 () Bool)

(assert (=> b!5346696 (= res!2268507 (not (= lt!2179955 (matchZipper!1277 lt!2179976 (t!374617 s!2326)))))))

(declare-fun b!5346697 () Bool)

(declare-fun tp!1485870 () Bool)

(assert (=> b!5346697 (= e!3319447 (and tp_is_empty!39319 tp!1485870))))

(assert (=> b!5346698 (= e!3319441 e!3319438)))

(declare-fun res!2268505 () Bool)

(assert (=> b!5346698 (=> res!2268505 e!3319438)))

(declare-fun lt!2179984 () Bool)

(assert (=> b!5346698 (= res!2268505 (or (not (= lt!2179959 lt!2179984)) ((_ is Nil!61276) s!2326)))))

(assert (=> b!5346698 (= (Exists!2214 lambda!274570) (Exists!2214 lambda!274571))))

(declare-fun lt!2179973 () Unit!153650)

(assert (=> b!5346698 (= lt!2179973 (lemmaExistCutMatchRandMatchRSpecEquivalent!868 (regOne!30578 r!7292) (regTwo!30578 r!7292) s!2326))))

(assert (=> b!5346698 (= lt!2179984 (Exists!2214 lambda!274570))))

(assert (=> b!5346698 (= lt!2179984 (isDefined!11847 (findConcatSeparation!1558 (regOne!30578 r!7292) (regTwo!30578 r!7292) Nil!61276 s!2326 s!2326)))))

(declare-fun lt!2179970 () Unit!153650)

(assert (=> b!5346698 (= lt!2179970 (lemmaFindConcatSeparationEquivalentToExists!1322 (regOne!30578 r!7292) (regTwo!30578 r!7292) s!2326))))

(declare-fun b!5346699 () Bool)

(assert (=> b!5346699 (= e!3319443 e!3319439)))

(declare-fun res!2268517 () Bool)

(assert (=> b!5346699 (=> res!2268517 e!3319439)))

(assert (=> b!5346699 (= res!2268517 (not (= lt!2179955 (matchZipper!1277 lt!2179961 (t!374617 s!2326)))))))

(assert (=> b!5346699 (= lt!2179955 (matchZipper!1277 lt!2179967 (t!374617 s!2326)))))

(declare-fun b!5346700 () Bool)

(declare-fun res!2268525 () Bool)

(assert (=> b!5346700 (=> res!2268525 e!3319441)))

(assert (=> b!5346700 (= res!2268525 (not (= r!7292 (generalisedConcat!702 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5346701 () Bool)

(declare-fun res!2268524 () Bool)

(assert (=> b!5346701 (=> res!2268524 e!3319440)))

(assert (=> b!5346701 (= res!2268524 (not (= lt!2179959 (matchR!7218 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292)) s!2326))))))

(assert (= (and start!563110 res!2268516) b!5346691))

(assert (= (and b!5346691 res!2268509) b!5346667))

(assert (= (and b!5346667 res!2268522) b!5346666))

(assert (= (and b!5346666 (not res!2268510)) b!5346676))

(assert (= (and b!5346676 (not res!2268508)) b!5346700))

(assert (= (and b!5346700 (not res!2268525)) b!5346695))

(assert (= (and b!5346695 (not res!2268511)) b!5346672))

(assert (= (and b!5346672 (not res!2268514)) b!5346688))

(assert (= (and b!5346688 (not res!2268515)) b!5346698))

(assert (= (and b!5346698 (not res!2268505)) b!5346689))

(assert (= (and b!5346689 (not res!2268527)) b!5346686))

(assert (= (and b!5346686 c!930518) b!5346674))

(assert (= (and b!5346686 (not c!930518)) b!5346685))

(assert (= (and b!5346674 (not res!2268528)) b!5346684))

(assert (= (and b!5346686 (not res!2268512)) b!5346690))

(assert (= (and b!5346690 res!2268531) b!5346693))

(assert (= (and b!5346690 (not res!2268504)) b!5346675))

(assert (= (and b!5346675 (not res!2268529)) b!5346681))

(assert (= (and b!5346681 (not res!2268520)) b!5346699))

(assert (= (and b!5346699 (not res!2268517)) b!5346682))

(assert (= (and b!5346682 (not res!2268526)) b!5346696))

(assert (= (and b!5346696 (not res!2268507)) b!5346692))

(assert (= (and b!5346692 (not res!2268521)) b!5346680))

(assert (= (and b!5346680 (not res!2268518)) b!5346677))

(assert (= (and b!5346677 (not res!2268513)) b!5346683))

(assert (= (and b!5346683 (not res!2268519)) b!5346687))

(assert (= (and b!5346687 (not res!2268523)) b!5346701))

(assert (= (and b!5346701 (not res!2268524)) b!5346673))

(assert (= (and b!5346673 (not res!2268506)) b!5346668))

(assert (= (and b!5346668 (not res!2268530)) b!5346671))

(assert (= (and start!563110 ((_ is ElementMatch!15033) r!7292)) b!5346678))

(assert (= (and start!563110 ((_ is Concat!23878) r!7292)) b!5346679))

(assert (= (and start!563110 ((_ is Star!15033) r!7292)) b!5346664))

(assert (= (and start!563110 ((_ is Union!15033) r!7292)) b!5346670))

(assert (= (and start!563110 condSetEmpty!34531) setIsEmpty!34531))

(assert (= (and start!563110 (not condSetEmpty!34531)) setNonEmpty!34531))

(assert (= setNonEmpty!34531 b!5346694))

(assert (= b!5346665 b!5346669))

(assert (= (and start!563110 ((_ is Cons!61275) zl!343)) b!5346665))

(assert (= (and start!563110 ((_ is Cons!61276) s!2326)) b!5346697))

(declare-fun m!6378294 () Bool)

(assert (=> b!5346667 m!6378294))

(declare-fun m!6378296 () Bool)

(assert (=> setNonEmpty!34531 m!6378296))

(declare-fun m!6378298 () Bool)

(assert (=> b!5346672 m!6378298))

(assert (=> b!5346672 m!6378298))

(declare-fun m!6378300 () Bool)

(assert (=> b!5346672 m!6378300))

(declare-fun m!6378302 () Bool)

(assert (=> b!5346686 m!6378302))

(declare-fun m!6378304 () Bool)

(assert (=> b!5346686 m!6378304))

(declare-fun m!6378306 () Bool)

(assert (=> b!5346686 m!6378306))

(declare-fun m!6378308 () Bool)

(assert (=> b!5346686 m!6378308))

(declare-fun m!6378310 () Bool)

(assert (=> b!5346686 m!6378310))

(declare-fun m!6378312 () Bool)

(assert (=> b!5346686 m!6378312))

(declare-fun m!6378314 () Bool)

(assert (=> b!5346686 m!6378314))

(declare-fun m!6378316 () Bool)

(assert (=> b!5346691 m!6378316))

(declare-fun m!6378318 () Bool)

(assert (=> b!5346665 m!6378318))

(declare-fun m!6378320 () Bool)

(assert (=> b!5346693 m!6378320))

(declare-fun m!6378322 () Bool)

(assert (=> b!5346671 m!6378322))

(declare-fun m!6378324 () Bool)

(assert (=> b!5346671 m!6378324))

(declare-fun m!6378326 () Bool)

(assert (=> b!5346671 m!6378326))

(declare-fun m!6378328 () Bool)

(assert (=> b!5346698 m!6378328))

(declare-fun m!6378330 () Bool)

(assert (=> b!5346698 m!6378330))

(declare-fun m!6378332 () Bool)

(assert (=> b!5346698 m!6378332))

(declare-fun m!6378334 () Bool)

(assert (=> b!5346698 m!6378334))

(declare-fun m!6378336 () Bool)

(assert (=> b!5346698 m!6378336))

(assert (=> b!5346698 m!6378328))

(assert (=> b!5346698 m!6378330))

(declare-fun m!6378338 () Bool)

(assert (=> b!5346698 m!6378338))

(declare-fun m!6378340 () Bool)

(assert (=> b!5346699 m!6378340))

(declare-fun m!6378342 () Bool)

(assert (=> b!5346699 m!6378342))

(declare-fun m!6378344 () Bool)

(assert (=> b!5346674 m!6378344))

(assert (=> b!5346674 m!6378342))

(declare-fun m!6378346 () Bool)

(assert (=> b!5346674 m!6378346))

(declare-fun m!6378348 () Bool)

(assert (=> b!5346689 m!6378348))

(declare-fun m!6378350 () Bool)

(assert (=> start!563110 m!6378350))

(declare-fun m!6378352 () Bool)

(assert (=> b!5346682 m!6378352))

(declare-fun m!6378354 () Bool)

(assert (=> b!5346682 m!6378354))

(declare-fun m!6378356 () Bool)

(assert (=> b!5346682 m!6378356))

(declare-fun m!6378358 () Bool)

(assert (=> b!5346682 m!6378358))

(declare-fun m!6378360 () Bool)

(assert (=> b!5346682 m!6378360))

(declare-fun m!6378362 () Bool)

(assert (=> b!5346666 m!6378362))

(declare-fun m!6378364 () Bool)

(assert (=> b!5346666 m!6378364))

(declare-fun m!6378366 () Bool)

(assert (=> b!5346666 m!6378366))

(declare-fun m!6378368 () Bool)

(assert (=> b!5346684 m!6378368))

(declare-fun m!6378370 () Bool)

(assert (=> b!5346701 m!6378370))

(declare-fun m!6378372 () Bool)

(assert (=> b!5346676 m!6378372))

(declare-fun m!6378374 () Bool)

(assert (=> b!5346680 m!6378374))

(declare-fun m!6378376 () Bool)

(assert (=> b!5346680 m!6378376))

(declare-fun m!6378378 () Bool)

(assert (=> b!5346696 m!6378378))

(declare-fun m!6378380 () Bool)

(assert (=> b!5346668 m!6378380))

(declare-fun m!6378382 () Bool)

(assert (=> b!5346677 m!6378382))

(declare-fun m!6378384 () Bool)

(assert (=> b!5346677 m!6378384))

(declare-fun m!6378386 () Bool)

(assert (=> b!5346673 m!6378386))

(declare-fun m!6378388 () Bool)

(assert (=> b!5346700 m!6378388))

(declare-fun m!6378390 () Bool)

(assert (=> b!5346681 m!6378390))

(declare-fun m!6378392 () Bool)

(assert (=> b!5346687 m!6378392))

(declare-fun m!6378394 () Bool)

(assert (=> b!5346687 m!6378394))

(declare-fun m!6378396 () Bool)

(assert (=> b!5346687 m!6378396))

(declare-fun m!6378398 () Bool)

(assert (=> b!5346687 m!6378398))

(declare-fun m!6378400 () Bool)

(assert (=> b!5346687 m!6378400))

(declare-fun m!6378402 () Bool)

(assert (=> b!5346687 m!6378402))

(declare-fun m!6378404 () Bool)

(assert (=> b!5346687 m!6378404))

(declare-fun m!6378406 () Bool)

(assert (=> b!5346687 m!6378406))

(declare-fun m!6378408 () Bool)

(assert (=> b!5346687 m!6378408))

(declare-fun m!6378410 () Bool)

(assert (=> b!5346687 m!6378410))

(declare-fun m!6378412 () Bool)

(assert (=> b!5346687 m!6378412))

(declare-fun m!6378414 () Bool)

(assert (=> b!5346687 m!6378414))

(declare-fun m!6378416 () Bool)

(assert (=> b!5346687 m!6378416))

(declare-fun m!6378418 () Bool)

(assert (=> b!5346687 m!6378418))

(declare-fun m!6378420 () Bool)

(assert (=> b!5346687 m!6378420))

(declare-fun m!6378422 () Bool)

(assert (=> b!5346687 m!6378422))

(assert (=> b!5346687 m!6378406))

(declare-fun m!6378424 () Bool)

(assert (=> b!5346687 m!6378424))

(assert (=> b!5346687 m!6378416))

(declare-fun m!6378426 () Bool)

(assert (=> b!5346687 m!6378426))

(declare-fun m!6378428 () Bool)

(assert (=> b!5346687 m!6378428))

(declare-fun m!6378430 () Bool)

(assert (=> b!5346687 m!6378430))

(assert (=> b!5346687 m!6378422))

(declare-fun m!6378432 () Bool)

(assert (=> b!5346687 m!6378432))

(declare-fun m!6378434 () Bool)

(assert (=> b!5346687 m!6378434))

(declare-fun m!6378436 () Bool)

(assert (=> b!5346687 m!6378436))

(declare-fun m!6378438 () Bool)

(assert (=> b!5346687 m!6378438))

(assert (=> b!5346687 m!6378394))

(declare-fun m!6378440 () Bool)

(assert (=> b!5346683 m!6378440))

(declare-fun m!6378442 () Bool)

(assert (=> b!5346683 m!6378442))

(check-sat tp_is_empty!39319 (not b!5346669) (not b!5346697) (not b!5346700) (not b!5346687) (not b!5346665) (not b!5346698) (not b!5346689) (not b!5346667) (not b!5346686) (not b!5346673) (not b!5346693) (not b!5346682) (not b!5346691) (not b!5346668) (not b!5346674) (not b!5346684) (not b!5346672) (not b!5346681) (not b!5346671) (not b!5346696) (not b!5346679) (not b!5346680) (not b!5346683) (not b!5346664) (not b!5346677) (not b!5346666) (not b!5346701) (not b!5346670) (not start!563110) (not b!5346676) (not setNonEmpty!34531) (not b!5346694) (not b!5346699))
(check-sat)
(get-model)

(declare-fun d!1714804 () Bool)

(declare-fun c!930522 () Bool)

(declare-fun isEmpty!33249 (List!61400) Bool)

(assert (=> d!1714804 (= c!930522 (isEmpty!33249 (t!374617 s!2326)))))

(declare-fun e!3319455 () Bool)

(assert (=> d!1714804 (= (matchZipper!1277 lt!2179976 (t!374617 s!2326)) e!3319455)))

(declare-fun b!5346712 () Bool)

(declare-fun nullableZipper!1374 ((InoxSet Context!8834)) Bool)

(assert (=> b!5346712 (= e!3319455 (nullableZipper!1374 lt!2179976))))

(declare-fun b!5346713 () Bool)

(declare-fun head!11465 (List!61400) C!30336)

(declare-fun tail!10562 (List!61400) List!61400)

(assert (=> b!5346713 (= e!3319455 (matchZipper!1277 (derivationStepZipper!1274 lt!2179976 (head!11465 (t!374617 s!2326))) (tail!10562 (t!374617 s!2326))))))

(assert (= (and d!1714804 c!930522) b!5346712))

(assert (= (and d!1714804 (not c!930522)) b!5346713))

(declare-fun m!6378444 () Bool)

(assert (=> d!1714804 m!6378444))

(declare-fun m!6378446 () Bool)

(assert (=> b!5346712 m!6378446))

(declare-fun m!6378448 () Bool)

(assert (=> b!5346713 m!6378448))

(assert (=> b!5346713 m!6378448))

(declare-fun m!6378450 () Bool)

(assert (=> b!5346713 m!6378450))

(declare-fun m!6378452 () Bool)

(assert (=> b!5346713 m!6378452))

(assert (=> b!5346713 m!6378450))

(assert (=> b!5346713 m!6378452))

(declare-fun m!6378454 () Bool)

(assert (=> b!5346713 m!6378454))

(assert (=> b!5346696 d!1714804))

(declare-fun b!5346744 () Bool)

(declare-fun res!2268542 () Bool)

(declare-fun e!3319476 () Bool)

(assert (=> b!5346744 (=> (not res!2268542) (not e!3319476))))

(declare-fun call!382167 () Bool)

(assert (=> b!5346744 (= res!2268542 call!382167)))

(declare-fun e!3319479 () Bool)

(assert (=> b!5346744 (= e!3319479 e!3319476)))

(declare-fun b!5346745 () Bool)

(declare-fun e!3319482 () Bool)

(declare-fun call!382166 () Bool)

(assert (=> b!5346745 (= e!3319482 call!382166)))

(declare-fun bm!382160 () Bool)

(declare-fun c!930534 () Bool)

(assert (=> bm!382160 (= call!382167 (validRegex!6769 (ite c!930534 (regOne!30579 r!7292) (regOne!30578 r!7292))))))

(declare-fun b!5346746 () Bool)

(declare-fun e!3319477 () Bool)

(assert (=> b!5346746 (= e!3319477 e!3319482)))

(declare-fun res!2268544 () Bool)

(assert (=> b!5346746 (=> (not res!2268544) (not e!3319482))))

(assert (=> b!5346746 (= res!2268544 call!382167)))

(declare-fun d!1714808 () Bool)

(declare-fun res!2268546 () Bool)

(declare-fun e!3319481 () Bool)

(assert (=> d!1714808 (=> res!2268546 e!3319481)))

(assert (=> d!1714808 (= res!2268546 ((_ is ElementMatch!15033) r!7292))))

(assert (=> d!1714808 (= (validRegex!6769 r!7292) e!3319481)))

(declare-fun b!5346747 () Bool)

(declare-fun e!3319478 () Bool)

(assert (=> b!5346747 (= e!3319481 e!3319478)))

(declare-fun c!930533 () Bool)

(assert (=> b!5346747 (= c!930533 ((_ is Star!15033) r!7292))))

(declare-fun b!5346748 () Bool)

(declare-fun e!3319480 () Bool)

(assert (=> b!5346748 (= e!3319478 e!3319480)))

(declare-fun res!2268545 () Bool)

(assert (=> b!5346748 (= res!2268545 (not (nullable!5202 (reg!15362 r!7292))))))

(assert (=> b!5346748 (=> (not res!2268545) (not e!3319480))))

(declare-fun bm!382161 () Bool)

(declare-fun call!382165 () Bool)

(assert (=> bm!382161 (= call!382166 call!382165)))

(declare-fun b!5346749 () Bool)

(assert (=> b!5346749 (= e!3319478 e!3319479)))

(assert (=> b!5346749 (= c!930534 ((_ is Union!15033) r!7292))))

(declare-fun b!5346750 () Bool)

(assert (=> b!5346750 (= e!3319476 call!382166)))

(declare-fun bm!382162 () Bool)

(assert (=> bm!382162 (= call!382165 (validRegex!6769 (ite c!930533 (reg!15362 r!7292) (ite c!930534 (regTwo!30579 r!7292) (regTwo!30578 r!7292)))))))

(declare-fun b!5346751 () Bool)

(assert (=> b!5346751 (= e!3319480 call!382165)))

(declare-fun b!5346752 () Bool)

(declare-fun res!2268543 () Bool)

(assert (=> b!5346752 (=> res!2268543 e!3319477)))

(assert (=> b!5346752 (= res!2268543 (not ((_ is Concat!23878) r!7292)))))

(assert (=> b!5346752 (= e!3319479 e!3319477)))

(assert (= (and d!1714808 (not res!2268546)) b!5346747))

(assert (= (and b!5346747 c!930533) b!5346748))

(assert (= (and b!5346747 (not c!930533)) b!5346749))

(assert (= (and b!5346748 res!2268545) b!5346751))

(assert (= (and b!5346749 c!930534) b!5346744))

(assert (= (and b!5346749 (not c!930534)) b!5346752))

(assert (= (and b!5346744 res!2268542) b!5346750))

(assert (= (and b!5346752 (not res!2268543)) b!5346746))

(assert (= (and b!5346746 res!2268544) b!5346745))

(assert (= (or b!5346750 b!5346745) bm!382161))

(assert (= (or b!5346744 b!5346746) bm!382160))

(assert (= (or b!5346751 bm!382161) bm!382162))

(declare-fun m!6378488 () Bool)

(assert (=> bm!382160 m!6378488))

(declare-fun m!6378490 () Bool)

(assert (=> b!5346748 m!6378490))

(declare-fun m!6378492 () Bool)

(assert (=> bm!382162 m!6378492))

(assert (=> start!563110 d!1714808))

(declare-fun d!1714820 () Bool)

(declare-fun lt!2179993 () Int)

(assert (=> d!1714820 (>= lt!2179993 0)))

(declare-fun e!3319497 () Int)

(assert (=> d!1714820 (= lt!2179993 e!3319497)))

(declare-fun c!930545 () Bool)

(assert (=> d!1714820 (= c!930545 ((_ is Cons!61275) lt!2179951))))

(assert (=> d!1714820 (= (zipperDepthTotal!186 lt!2179951) lt!2179993)))

(declare-fun b!5346777 () Bool)

(assert (=> b!5346777 (= e!3319497 (+ (contextDepthTotal!166 (h!67723 lt!2179951)) (zipperDepthTotal!186 (t!374616 lt!2179951))))))

(declare-fun b!5346778 () Bool)

(assert (=> b!5346778 (= e!3319497 0)))

(assert (= (and d!1714820 c!930545) b!5346777))

(assert (= (and d!1714820 (not c!930545)) b!5346778))

(declare-fun m!6378494 () Bool)

(assert (=> b!5346777 m!6378494))

(declare-fun m!6378496 () Bool)

(assert (=> b!5346777 m!6378496))

(assert (=> b!5346677 d!1714820))

(declare-fun d!1714822 () Bool)

(declare-fun lt!2179994 () Int)

(assert (=> d!1714822 (>= lt!2179994 0)))

(declare-fun e!3319498 () Int)

(assert (=> d!1714822 (= lt!2179994 e!3319498)))

(declare-fun c!930546 () Bool)

(assert (=> d!1714822 (= c!930546 ((_ is Cons!61275) zl!343))))

(assert (=> d!1714822 (= (zipperDepthTotal!186 zl!343) lt!2179994)))

(declare-fun b!5346779 () Bool)

(assert (=> b!5346779 (= e!3319498 (+ (contextDepthTotal!166 (h!67723 zl!343)) (zipperDepthTotal!186 (t!374616 zl!343))))))

(declare-fun b!5346780 () Bool)

(assert (=> b!5346780 (= e!3319498 0)))

(assert (= (and d!1714822 c!930546) b!5346779))

(assert (= (and d!1714822 (not c!930546)) b!5346780))

(assert (=> b!5346779 m!6378376))

(declare-fun m!6378498 () Bool)

(assert (=> b!5346779 m!6378498))

(assert (=> b!5346677 d!1714822))

(declare-fun b!5346830 () Bool)

(declare-fun e!3319527 () Bool)

(declare-fun lt!2180006 () Option!15144)

(assert (=> b!5346830 (= e!3319527 (not (isDefined!11847 lt!2180006)))))

(declare-fun b!5346831 () Bool)

(declare-fun e!3319531 () Option!15144)

(declare-fun e!3319530 () Option!15144)

(assert (=> b!5346831 (= e!3319531 e!3319530)))

(declare-fun c!930564 () Bool)

(assert (=> b!5346831 (= c!930564 ((_ is Nil!61276) s!2326))))

(declare-fun b!5346832 () Bool)

(assert (=> b!5346832 (= e!3319531 (Some!15143 (tuple2!64465 Nil!61276 s!2326)))))

(declare-fun b!5346833 () Bool)

(declare-fun res!2268567 () Bool)

(declare-fun e!3319529 () Bool)

(assert (=> b!5346833 (=> (not res!2268567) (not e!3319529))))

(declare-fun get!21075 (Option!15144) tuple2!64464)

(assert (=> b!5346833 (= res!2268567 (matchR!7218 (regTwo!30578 r!7292) (_2!35535 (get!21075 lt!2180006))))))

(declare-fun b!5346834 () Bool)

(declare-fun ++!13353 (List!61400 List!61400) List!61400)

(assert (=> b!5346834 (= e!3319529 (= (++!13353 (_1!35535 (get!21075 lt!2180006)) (_2!35535 (get!21075 lt!2180006))) s!2326))))

(declare-fun b!5346835 () Bool)

(declare-fun e!3319528 () Bool)

(assert (=> b!5346835 (= e!3319528 (matchR!7218 (regTwo!30578 r!7292) s!2326))))

(declare-fun d!1714824 () Bool)

(assert (=> d!1714824 e!3319527))

(declare-fun res!2268566 () Bool)

(assert (=> d!1714824 (=> res!2268566 e!3319527)))

(assert (=> d!1714824 (= res!2268566 e!3319529)))

(declare-fun res!2268570 () Bool)

(assert (=> d!1714824 (=> (not res!2268570) (not e!3319529))))

(assert (=> d!1714824 (= res!2268570 (isDefined!11847 lt!2180006))))

(assert (=> d!1714824 (= lt!2180006 e!3319531)))

(declare-fun c!930565 () Bool)

(assert (=> d!1714824 (= c!930565 e!3319528)))

(declare-fun res!2268568 () Bool)

(assert (=> d!1714824 (=> (not res!2268568) (not e!3319528))))

(assert (=> d!1714824 (= res!2268568 (matchR!7218 (regOne!30578 r!7292) Nil!61276))))

(assert (=> d!1714824 (validRegex!6769 (regOne!30578 r!7292))))

(assert (=> d!1714824 (= (findConcatSeparation!1558 (regOne!30578 r!7292) (regTwo!30578 r!7292) Nil!61276 s!2326 s!2326) lt!2180006)))

(declare-fun b!5346836 () Bool)

(assert (=> b!5346836 (= e!3319530 None!15143)))

(declare-fun b!5346837 () Bool)

(declare-fun lt!2180005 () Unit!153650)

(declare-fun lt!2180007 () Unit!153650)

(assert (=> b!5346837 (= lt!2180005 lt!2180007)))

(assert (=> b!5346837 (= (++!13353 (++!13353 Nil!61276 (Cons!61276 (h!67724 s!2326) Nil!61276)) (t!374617 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1768 (List!61400 C!30336 List!61400 List!61400) Unit!153650)

(assert (=> b!5346837 (= lt!2180007 (lemmaMoveElementToOtherListKeepsConcatEq!1768 Nil!61276 (h!67724 s!2326) (t!374617 s!2326) s!2326))))

(assert (=> b!5346837 (= e!3319530 (findConcatSeparation!1558 (regOne!30578 r!7292) (regTwo!30578 r!7292) (++!13353 Nil!61276 (Cons!61276 (h!67724 s!2326) Nil!61276)) (t!374617 s!2326) s!2326))))

(declare-fun b!5346838 () Bool)

(declare-fun res!2268569 () Bool)

(assert (=> b!5346838 (=> (not res!2268569) (not e!3319529))))

(assert (=> b!5346838 (= res!2268569 (matchR!7218 (regOne!30578 r!7292) (_1!35535 (get!21075 lt!2180006))))))

(assert (= (and d!1714824 res!2268568) b!5346835))

(assert (= (and d!1714824 c!930565) b!5346832))

(assert (= (and d!1714824 (not c!930565)) b!5346831))

(assert (= (and b!5346831 c!930564) b!5346836))

(assert (= (and b!5346831 (not c!930564)) b!5346837))

(assert (= (and d!1714824 res!2268570) b!5346838))

(assert (= (and b!5346838 res!2268569) b!5346833))

(assert (= (and b!5346833 res!2268567) b!5346834))

(assert (= (and d!1714824 (not res!2268566)) b!5346830))

(declare-fun m!6378532 () Bool)

(assert (=> d!1714824 m!6378532))

(declare-fun m!6378534 () Bool)

(assert (=> d!1714824 m!6378534))

(declare-fun m!6378538 () Bool)

(assert (=> d!1714824 m!6378538))

(declare-fun m!6378540 () Bool)

(assert (=> b!5346838 m!6378540))

(declare-fun m!6378544 () Bool)

(assert (=> b!5346838 m!6378544))

(assert (=> b!5346834 m!6378540))

(declare-fun m!6378546 () Bool)

(assert (=> b!5346834 m!6378546))

(declare-fun m!6378548 () Bool)

(assert (=> b!5346837 m!6378548))

(assert (=> b!5346837 m!6378548))

(declare-fun m!6378550 () Bool)

(assert (=> b!5346837 m!6378550))

(declare-fun m!6378552 () Bool)

(assert (=> b!5346837 m!6378552))

(assert (=> b!5346837 m!6378548))

(declare-fun m!6378554 () Bool)

(assert (=> b!5346837 m!6378554))

(assert (=> b!5346830 m!6378532))

(declare-fun m!6378556 () Bool)

(assert (=> b!5346835 m!6378556))

(assert (=> b!5346833 m!6378540))

(declare-fun m!6378558 () Bool)

(assert (=> b!5346833 m!6378558))

(assert (=> b!5346698 d!1714824))

(declare-fun d!1714836 () Bool)

(declare-fun choose!40091 (Int) Bool)

(assert (=> d!1714836 (= (Exists!2214 lambda!274570) (choose!40091 lambda!274570))))

(declare-fun bs!1239587 () Bool)

(assert (= bs!1239587 d!1714836))

(declare-fun m!6378560 () Bool)

(assert (=> bs!1239587 m!6378560))

(assert (=> b!5346698 d!1714836))

(declare-fun d!1714838 () Bool)

(assert (=> d!1714838 (= (Exists!2214 lambda!274571) (choose!40091 lambda!274571))))

(declare-fun bs!1239588 () Bool)

(assert (= bs!1239588 d!1714838))

(declare-fun m!6378562 () Bool)

(assert (=> bs!1239588 m!6378562))

(assert (=> b!5346698 d!1714838))

(declare-fun bs!1239591 () Bool)

(declare-fun d!1714840 () Bool)

(assert (= bs!1239591 (and d!1714840 b!5346687)))

(declare-fun lambda!274589 () Int)

(assert (=> bs!1239591 (not (= lambda!274589 lambda!274576))))

(assert (=> bs!1239591 (= (and (= (regOne!30578 r!7292) (regOne!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179983)) (= lambda!274589 lambda!274573))))

(assert (=> bs!1239591 (= (and (= (regOne!30578 r!7292) (regTwo!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179958)) (= lambda!274589 lambda!274575))))

(assert (=> bs!1239591 (not (= lambda!274589 lambda!274574))))

(declare-fun bs!1239592 () Bool)

(assert (= bs!1239592 (and d!1714840 b!5346698)))

(assert (=> bs!1239592 (= lambda!274589 lambda!274570)))

(assert (=> bs!1239592 (not (= lambda!274589 lambda!274571))))

(assert (=> d!1714840 true))

(assert (=> d!1714840 true))

(assert (=> d!1714840 true))

(assert (=> d!1714840 (= (isDefined!11847 (findConcatSeparation!1558 (regOne!30578 r!7292) (regTwo!30578 r!7292) Nil!61276 s!2326 s!2326)) (Exists!2214 lambda!274589))))

(declare-fun lt!2180015 () Unit!153650)

(declare-fun choose!40092 (Regex!15033 Regex!15033 List!61400) Unit!153650)

(assert (=> d!1714840 (= lt!2180015 (choose!40092 (regOne!30578 r!7292) (regTwo!30578 r!7292) s!2326))))

(assert (=> d!1714840 (validRegex!6769 (regOne!30578 r!7292))))

(assert (=> d!1714840 (= (lemmaFindConcatSeparationEquivalentToExists!1322 (regOne!30578 r!7292) (regTwo!30578 r!7292) s!2326) lt!2180015)))

(declare-fun bs!1239593 () Bool)

(assert (= bs!1239593 d!1714840))

(assert (=> bs!1239593 m!6378330))

(assert (=> bs!1239593 m!6378332))

(assert (=> bs!1239593 m!6378330))

(declare-fun m!6378566 () Bool)

(assert (=> bs!1239593 m!6378566))

(declare-fun m!6378568 () Bool)

(assert (=> bs!1239593 m!6378568))

(assert (=> bs!1239593 m!6378538))

(assert (=> b!5346698 d!1714840))

(declare-fun bs!1239595 () Bool)

(declare-fun d!1714844 () Bool)

(assert (= bs!1239595 (and d!1714844 b!5346687)))

(declare-fun lambda!274594 () Int)

(assert (=> bs!1239595 (not (= lambda!274594 lambda!274576))))

(assert (=> bs!1239595 (= (and (= (regOne!30578 r!7292) (regOne!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179983)) (= lambda!274594 lambda!274573))))

(assert (=> bs!1239595 (= (and (= (regOne!30578 r!7292) (regTwo!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179958)) (= lambda!274594 lambda!274575))))

(assert (=> bs!1239595 (not (= lambda!274594 lambda!274574))))

(declare-fun bs!1239596 () Bool)

(assert (= bs!1239596 (and d!1714844 d!1714840)))

(assert (=> bs!1239596 (= lambda!274594 lambda!274589)))

(declare-fun bs!1239597 () Bool)

(assert (= bs!1239597 (and d!1714844 b!5346698)))

(assert (=> bs!1239597 (= lambda!274594 lambda!274570)))

(assert (=> bs!1239597 (not (= lambda!274594 lambda!274571))))

(assert (=> d!1714844 true))

(assert (=> d!1714844 true))

(assert (=> d!1714844 true))

(declare-fun bs!1239598 () Bool)

(assert (= bs!1239598 d!1714844))

(declare-fun lambda!274595 () Int)

(assert (=> bs!1239598 (not (= lambda!274595 lambda!274594))))

(assert (=> bs!1239595 (= (and (= (regOne!30578 r!7292) (regTwo!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179958)) (= lambda!274595 lambda!274576))))

(assert (=> bs!1239595 (not (= lambda!274595 lambda!274573))))

(assert (=> bs!1239595 (not (= lambda!274595 lambda!274575))))

(assert (=> bs!1239595 (= (and (= (regOne!30578 r!7292) (regOne!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179983)) (= lambda!274595 lambda!274574))))

(assert (=> bs!1239596 (not (= lambda!274595 lambda!274589))))

(assert (=> bs!1239597 (not (= lambda!274595 lambda!274570))))

(assert (=> bs!1239597 (= lambda!274595 lambda!274571)))

(assert (=> d!1714844 true))

(assert (=> d!1714844 true))

(assert (=> d!1714844 true))

(assert (=> d!1714844 (= (Exists!2214 lambda!274594) (Exists!2214 lambda!274595))))

(declare-fun lt!2180022 () Unit!153650)

(declare-fun choose!40094 (Regex!15033 Regex!15033 List!61400) Unit!153650)

(assert (=> d!1714844 (= lt!2180022 (choose!40094 (regOne!30578 r!7292) (regTwo!30578 r!7292) s!2326))))

(assert (=> d!1714844 (validRegex!6769 (regOne!30578 r!7292))))

(assert (=> d!1714844 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!868 (regOne!30578 r!7292) (regTwo!30578 r!7292) s!2326) lt!2180022)))

(declare-fun m!6378588 () Bool)

(assert (=> bs!1239598 m!6378588))

(declare-fun m!6378590 () Bool)

(assert (=> bs!1239598 m!6378590))

(declare-fun m!6378592 () Bool)

(assert (=> bs!1239598 m!6378592))

(assert (=> bs!1239598 m!6378538))

(assert (=> b!5346698 d!1714844))

(declare-fun d!1714850 () Bool)

(declare-fun isEmpty!33251 (Option!15144) Bool)

(assert (=> d!1714850 (= (isDefined!11847 (findConcatSeparation!1558 (regOne!30578 r!7292) (regTwo!30578 r!7292) Nil!61276 s!2326 s!2326)) (not (isEmpty!33251 (findConcatSeparation!1558 (regOne!30578 r!7292) (regTwo!30578 r!7292) Nil!61276 s!2326 s!2326))))))

(declare-fun bs!1239599 () Bool)

(assert (= bs!1239599 d!1714850))

(assert (=> bs!1239599 m!6378330))

(declare-fun m!6378594 () Bool)

(assert (=> bs!1239599 m!6378594))

(assert (=> b!5346698 d!1714850))

(declare-fun d!1714852 () Bool)

(declare-fun lt!2180031 () Int)

(assert (=> d!1714852 (>= lt!2180031 0)))

(declare-fun e!3319571 () Int)

(assert (=> d!1714852 (= lt!2180031 e!3319571)))

(declare-fun c!930584 () Bool)

(assert (=> d!1714852 (= c!930584 ((_ is Cons!61274) (exprs!4917 lt!2179978)))))

(assert (=> d!1714852 (= (contextDepthTotal!166 lt!2179978) lt!2180031)))

(declare-fun b!5346917 () Bool)

(declare-fun regexDepthTotal!78 (Regex!15033) Int)

(assert (=> b!5346917 (= e!3319571 (+ (regexDepthTotal!78 (h!67722 (exprs!4917 lt!2179978))) (contextDepthTotal!166 (Context!8835 (t!374615 (exprs!4917 lt!2179978))))))))

(declare-fun b!5346918 () Bool)

(assert (=> b!5346918 (= e!3319571 1)))

(assert (= (and d!1714852 c!930584) b!5346917))

(assert (= (and d!1714852 (not c!930584)) b!5346918))

(declare-fun m!6378596 () Bool)

(assert (=> b!5346917 m!6378596))

(declare-fun m!6378598 () Bool)

(assert (=> b!5346917 m!6378598))

(assert (=> b!5346680 d!1714852))

(declare-fun d!1714854 () Bool)

(declare-fun lt!2180032 () Int)

(assert (=> d!1714854 (>= lt!2180032 0)))

(declare-fun e!3319572 () Int)

(assert (=> d!1714854 (= lt!2180032 e!3319572)))

(declare-fun c!930585 () Bool)

(assert (=> d!1714854 (= c!930585 ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343))))))

(assert (=> d!1714854 (= (contextDepthTotal!166 (h!67723 zl!343)) lt!2180032)))

(declare-fun b!5346919 () Bool)

(assert (=> b!5346919 (= e!3319572 (+ (regexDepthTotal!78 (h!67722 (exprs!4917 (h!67723 zl!343)))) (contextDepthTotal!166 (Context!8835 (t!374615 (exprs!4917 (h!67723 zl!343)))))))))

(declare-fun b!5346920 () Bool)

(assert (=> b!5346920 (= e!3319572 1)))

(assert (= (and d!1714854 c!930585) b!5346919))

(assert (= (and d!1714854 (not c!930585)) b!5346920))

(declare-fun m!6378600 () Bool)

(assert (=> b!5346919 m!6378600))

(declare-fun m!6378602 () Bool)

(assert (=> b!5346919 m!6378602))

(assert (=> b!5346680 d!1714854))

(declare-fun d!1714856 () Bool)

(declare-fun c!930586 () Bool)

(assert (=> d!1714856 (= c!930586 (isEmpty!33249 (t!374617 s!2326)))))

(declare-fun e!3319573 () Bool)

(assert (=> d!1714856 (= (matchZipper!1277 lt!2179961 (t!374617 s!2326)) e!3319573)))

(declare-fun b!5346921 () Bool)

(assert (=> b!5346921 (= e!3319573 (nullableZipper!1374 lt!2179961))))

(declare-fun b!5346922 () Bool)

(assert (=> b!5346922 (= e!3319573 (matchZipper!1277 (derivationStepZipper!1274 lt!2179961 (head!11465 (t!374617 s!2326))) (tail!10562 (t!374617 s!2326))))))

(assert (= (and d!1714856 c!930586) b!5346921))

(assert (= (and d!1714856 (not c!930586)) b!5346922))

(assert (=> d!1714856 m!6378444))

(declare-fun m!6378604 () Bool)

(assert (=> b!5346921 m!6378604))

(assert (=> b!5346922 m!6378448))

(assert (=> b!5346922 m!6378448))

(declare-fun m!6378606 () Bool)

(assert (=> b!5346922 m!6378606))

(assert (=> b!5346922 m!6378452))

(assert (=> b!5346922 m!6378606))

(assert (=> b!5346922 m!6378452))

(declare-fun m!6378608 () Bool)

(assert (=> b!5346922 m!6378608))

(assert (=> b!5346699 d!1714856))

(declare-fun d!1714858 () Bool)

(declare-fun c!930587 () Bool)

(assert (=> d!1714858 (= c!930587 (isEmpty!33249 (t!374617 s!2326)))))

(declare-fun e!3319574 () Bool)

(assert (=> d!1714858 (= (matchZipper!1277 lt!2179967 (t!374617 s!2326)) e!3319574)))

(declare-fun b!5346923 () Bool)

(assert (=> b!5346923 (= e!3319574 (nullableZipper!1374 lt!2179967))))

(declare-fun b!5346924 () Bool)

(assert (=> b!5346924 (= e!3319574 (matchZipper!1277 (derivationStepZipper!1274 lt!2179967 (head!11465 (t!374617 s!2326))) (tail!10562 (t!374617 s!2326))))))

(assert (= (and d!1714858 c!930587) b!5346923))

(assert (= (and d!1714858 (not c!930587)) b!5346924))

(assert (=> d!1714858 m!6378444))

(declare-fun m!6378610 () Bool)

(assert (=> b!5346923 m!6378610))

(assert (=> b!5346924 m!6378448))

(assert (=> b!5346924 m!6378448))

(declare-fun m!6378612 () Bool)

(assert (=> b!5346924 m!6378612))

(assert (=> b!5346924 m!6378452))

(assert (=> b!5346924 m!6378612))

(assert (=> b!5346924 m!6378452))

(declare-fun m!6378614 () Bool)

(assert (=> b!5346924 m!6378614))

(assert (=> b!5346699 d!1714858))

(declare-fun bs!1239602 () Bool)

(declare-fun d!1714860 () Bool)

(assert (= bs!1239602 (and d!1714860 b!5346671)))

(declare-fun lambda!274598 () Int)

(assert (=> bs!1239602 (= lambda!274598 lambda!274577)))

(declare-fun b!5346954 () Bool)

(declare-fun e!3319593 () Regex!15033)

(assert (=> b!5346954 (= e!3319593 (h!67722 (exprs!4917 (h!67723 zl!343))))))

(declare-fun b!5346955 () Bool)

(declare-fun e!3319597 () Bool)

(declare-fun e!3319595 () Bool)

(assert (=> b!5346955 (= e!3319597 e!3319595)))

(declare-fun c!930600 () Bool)

(declare-fun tail!10564 (List!61398) List!61398)

(assert (=> b!5346955 (= c!930600 (isEmpty!33248 (tail!10564 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5346956 () Bool)

(declare-fun e!3319594 () Bool)

(assert (=> b!5346956 (= e!3319594 (isEmpty!33248 (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5346957 () Bool)

(declare-fun e!3319596 () Regex!15033)

(assert (=> b!5346957 (= e!3319596 EmptyExpr!15033)))

(declare-fun b!5346958 () Bool)

(declare-fun lt!2180038 () Regex!15033)

(declare-fun isConcat!431 (Regex!15033) Bool)

(assert (=> b!5346958 (= e!3319595 (isConcat!431 lt!2180038))))

(declare-fun b!5346959 () Bool)

(declare-fun isEmptyExpr!908 (Regex!15033) Bool)

(assert (=> b!5346959 (= e!3319597 (isEmptyExpr!908 lt!2180038))))

(declare-fun b!5346960 () Bool)

(declare-fun e!3319592 () Bool)

(assert (=> b!5346960 (= e!3319592 e!3319597)))

(declare-fun c!930598 () Bool)

(assert (=> b!5346960 (= c!930598 (isEmpty!33248 (exprs!4917 (h!67723 zl!343))))))

(declare-fun b!5346961 () Bool)

(assert (=> b!5346961 (= e!3319596 (Concat!23878 (h!67722 (exprs!4917 (h!67723 zl!343))) (generalisedConcat!702 (t!374615 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5346962 () Bool)

(assert (=> b!5346962 (= e!3319593 e!3319596)))

(declare-fun c!930599 () Bool)

(assert (=> b!5346962 (= c!930599 ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343))))))

(declare-fun b!5346963 () Bool)

(declare-fun head!11467 (List!61398) Regex!15033)

(assert (=> b!5346963 (= e!3319595 (= lt!2180038 (head!11467 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> d!1714860 e!3319592))

(declare-fun res!2268626 () Bool)

(assert (=> d!1714860 (=> (not res!2268626) (not e!3319592))))

(assert (=> d!1714860 (= res!2268626 (validRegex!6769 lt!2180038))))

(assert (=> d!1714860 (= lt!2180038 e!3319593)))

(declare-fun c!930601 () Bool)

(assert (=> d!1714860 (= c!930601 e!3319594)))

(declare-fun res!2268627 () Bool)

(assert (=> d!1714860 (=> (not res!2268627) (not e!3319594))))

(assert (=> d!1714860 (= res!2268627 ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343))))))

(assert (=> d!1714860 (forall!14455 (exprs!4917 (h!67723 zl!343)) lambda!274598)))

(assert (=> d!1714860 (= (generalisedConcat!702 (exprs!4917 (h!67723 zl!343))) lt!2180038)))

(assert (= (and d!1714860 res!2268627) b!5346956))

(assert (= (and d!1714860 c!930601) b!5346954))

(assert (= (and d!1714860 (not c!930601)) b!5346962))

(assert (= (and b!5346962 c!930599) b!5346961))

(assert (= (and b!5346962 (not c!930599)) b!5346957))

(assert (= (and d!1714860 res!2268626) b!5346960))

(assert (= (and b!5346960 c!930598) b!5346959))

(assert (= (and b!5346960 (not c!930598)) b!5346955))

(assert (= (and b!5346955 c!930600) b!5346963))

(assert (= (and b!5346955 (not c!930600)) b!5346958))

(declare-fun m!6378644 () Bool)

(assert (=> b!5346955 m!6378644))

(assert (=> b!5346955 m!6378644))

(declare-fun m!6378646 () Bool)

(assert (=> b!5346955 m!6378646))

(assert (=> b!5346961 m!6378402))

(declare-fun m!6378648 () Bool)

(assert (=> b!5346963 m!6378648))

(declare-fun m!6378650 () Bool)

(assert (=> b!5346958 m!6378650))

(declare-fun m!6378652 () Bool)

(assert (=> d!1714860 m!6378652))

(declare-fun m!6378654 () Bool)

(assert (=> d!1714860 m!6378654))

(declare-fun m!6378656 () Bool)

(assert (=> b!5346959 m!6378656))

(declare-fun m!6378658 () Bool)

(assert (=> b!5346960 m!6378658))

(assert (=> b!5346956 m!6378348))

(assert (=> b!5346700 d!1714860))

(declare-fun c!930613 () Bool)

(declare-fun bm!382181 () Bool)

(declare-fun c!930616 () Bool)

(declare-fun call!382187 () List!61398)

(declare-fun $colon$colon!1423 (List!61398 Regex!15033) List!61398)

(assert (=> bm!382181 (= call!382187 ($colon$colon!1423 (exprs!4917 (Context!8835 lt!2179974)) (ite (or c!930613 c!930616) (regTwo!30578 (regOne!30578 (regOne!30578 r!7292))) (regOne!30578 (regOne!30578 r!7292)))))))

(declare-fun b!5346994 () Bool)

(declare-fun e!3319618 () Bool)

(assert (=> b!5346994 (= e!3319618 (nullable!5202 (regOne!30578 (regOne!30578 (regOne!30578 r!7292)))))))

(declare-fun b!5346995 () Bool)

(declare-fun e!3319616 () (InoxSet Context!8834))

(assert (=> b!5346995 (= e!3319616 (store ((as const (Array Context!8834 Bool)) false) (Context!8835 lt!2179974) true))))

(declare-fun bm!382182 () Bool)

(declare-fun call!382186 () (InoxSet Context!8834))

(declare-fun call!382189 () (InoxSet Context!8834))

(assert (=> bm!382182 (= call!382186 call!382189)))

(declare-fun b!5346996 () Bool)

(declare-fun e!3319617 () (InoxSet Context!8834))

(assert (=> b!5346996 (= e!3319616 e!3319617)))

(declare-fun c!930615 () Bool)

(assert (=> b!5346996 (= c!930615 ((_ is Union!15033) (regOne!30578 (regOne!30578 r!7292))))))

(declare-fun bm!382183 () Bool)

(declare-fun call!382190 () (InoxSet Context!8834))

(assert (=> bm!382183 (= call!382190 (derivationStepZipperDown!481 (ite c!930615 (regOne!30579 (regOne!30578 (regOne!30578 r!7292))) (regOne!30578 (regOne!30578 (regOne!30578 r!7292)))) (ite c!930615 (Context!8835 lt!2179974) (Context!8835 call!382187)) (h!67724 s!2326)))))

(declare-fun b!5346997 () Bool)

(declare-fun e!3319615 () (InoxSet Context!8834))

(assert (=> b!5346997 (= e!3319615 ((_ map or) call!382190 call!382189))))

(declare-fun bm!382184 () Bool)

(declare-fun call!382191 () (InoxSet Context!8834))

(assert (=> bm!382184 (= call!382189 call!382191)))

(declare-fun d!1714868 () Bool)

(declare-fun c!930612 () Bool)

(assert (=> d!1714868 (= c!930612 (and ((_ is ElementMatch!15033) (regOne!30578 (regOne!30578 r!7292))) (= (c!930519 (regOne!30578 (regOne!30578 r!7292))) (h!67724 s!2326))))))

(assert (=> d!1714868 (= (derivationStepZipperDown!481 (regOne!30578 (regOne!30578 r!7292)) (Context!8835 lt!2179974) (h!67724 s!2326)) e!3319616)))

(declare-fun b!5346998 () Bool)

(declare-fun e!3319619 () (InoxSet Context!8834))

(assert (=> b!5346998 (= e!3319619 call!382186)))

(declare-fun b!5346999 () Bool)

(declare-fun e!3319614 () (InoxSet Context!8834))

(assert (=> b!5346999 (= e!3319614 call!382186)))

(declare-fun bm!382185 () Bool)

(declare-fun call!382188 () List!61398)

(assert (=> bm!382185 (= call!382188 call!382187)))

(declare-fun b!5347000 () Bool)

(declare-fun c!930614 () Bool)

(assert (=> b!5347000 (= c!930614 ((_ is Star!15033) (regOne!30578 (regOne!30578 r!7292))))))

(assert (=> b!5347000 (= e!3319619 e!3319614)))

(declare-fun b!5347001 () Bool)

(assert (=> b!5347001 (= e!3319615 e!3319619)))

(assert (=> b!5347001 (= c!930616 ((_ is Concat!23878) (regOne!30578 (regOne!30578 r!7292))))))

(declare-fun b!5347002 () Bool)

(assert (=> b!5347002 (= c!930613 e!3319618)))

(declare-fun res!2268638 () Bool)

(assert (=> b!5347002 (=> (not res!2268638) (not e!3319618))))

(assert (=> b!5347002 (= res!2268638 ((_ is Concat!23878) (regOne!30578 (regOne!30578 r!7292))))))

(assert (=> b!5347002 (= e!3319617 e!3319615)))

(declare-fun bm!382186 () Bool)

(assert (=> bm!382186 (= call!382191 (derivationStepZipperDown!481 (ite c!930615 (regTwo!30579 (regOne!30578 (regOne!30578 r!7292))) (ite c!930613 (regTwo!30578 (regOne!30578 (regOne!30578 r!7292))) (ite c!930616 (regOne!30578 (regOne!30578 (regOne!30578 r!7292))) (reg!15362 (regOne!30578 (regOne!30578 r!7292)))))) (ite (or c!930615 c!930613) (Context!8835 lt!2179974) (Context!8835 call!382188)) (h!67724 s!2326)))))

(declare-fun b!5347003 () Bool)

(assert (=> b!5347003 (= e!3319614 ((as const (Array Context!8834 Bool)) false))))

(declare-fun b!5347004 () Bool)

(assert (=> b!5347004 (= e!3319617 ((_ map or) call!382190 call!382191))))

(assert (= (and d!1714868 c!930612) b!5346995))

(assert (= (and d!1714868 (not c!930612)) b!5346996))

(assert (= (and b!5346996 c!930615) b!5347004))

(assert (= (and b!5346996 (not c!930615)) b!5347002))

(assert (= (and b!5347002 res!2268638) b!5346994))

(assert (= (and b!5347002 c!930613) b!5346997))

(assert (= (and b!5347002 (not c!930613)) b!5347001))

(assert (= (and b!5347001 c!930616) b!5346998))

(assert (= (and b!5347001 (not c!930616)) b!5347000))

(assert (= (and b!5347000 c!930614) b!5346999))

(assert (= (and b!5347000 (not c!930614)) b!5347003))

(assert (= (or b!5346998 b!5346999) bm!382185))

(assert (= (or b!5346998 b!5346999) bm!382182))

(assert (= (or b!5346997 bm!382185) bm!382181))

(assert (= (or b!5346997 bm!382182) bm!382184))

(assert (= (or b!5347004 bm!382184) bm!382186))

(assert (= (or b!5347004 b!5346997) bm!382183))

(declare-fun m!6378664 () Bool)

(assert (=> bm!382181 m!6378664))

(declare-fun m!6378666 () Bool)

(assert (=> b!5346994 m!6378666))

(declare-fun m!6378668 () Bool)

(assert (=> b!5346995 m!6378668))

(declare-fun m!6378670 () Bool)

(assert (=> bm!382183 m!6378670))

(declare-fun m!6378672 () Bool)

(assert (=> bm!382186 m!6378672))

(assert (=> b!5346681 d!1714868))

(declare-fun d!1714872 () Bool)

(declare-fun choose!40097 ((InoxSet Context!8834) Int) (InoxSet Context!8834))

(assert (=> d!1714872 (= (flatMap!760 lt!2179953 lambda!274572) (choose!40097 lt!2179953 lambda!274572))))

(declare-fun bs!1239606 () Bool)

(assert (= bs!1239606 d!1714872))

(declare-fun m!6378674 () Bool)

(assert (=> bs!1239606 m!6378674))

(assert (=> b!5346682 d!1714872))

(declare-fun d!1714874 () Bool)

(declare-fun c!930621 () Bool)

(declare-fun e!3319628 () Bool)

(assert (=> d!1714874 (= c!930621 e!3319628)))

(declare-fun res!2268645 () Bool)

(assert (=> d!1714874 (=> (not res!2268645) (not e!3319628))))

(assert (=> d!1714874 (= res!2268645 ((_ is Cons!61274) (exprs!4917 lt!2179978)))))

(declare-fun e!3319629 () (InoxSet Context!8834))

(assert (=> d!1714874 (= (derivationStepZipperUp!405 lt!2179978 (h!67724 s!2326)) e!3319629)))

(declare-fun b!5347019 () Bool)

(declare-fun call!382194 () (InoxSet Context!8834))

(assert (=> b!5347019 (= e!3319629 ((_ map or) call!382194 (derivationStepZipperUp!405 (Context!8835 (t!374615 (exprs!4917 lt!2179978))) (h!67724 s!2326))))))

(declare-fun bm!382189 () Bool)

(assert (=> bm!382189 (= call!382194 (derivationStepZipperDown!481 (h!67722 (exprs!4917 lt!2179978)) (Context!8835 (t!374615 (exprs!4917 lt!2179978))) (h!67724 s!2326)))))

(declare-fun b!5347020 () Bool)

(declare-fun e!3319630 () (InoxSet Context!8834))

(assert (=> b!5347020 (= e!3319629 e!3319630)))

(declare-fun c!930622 () Bool)

(assert (=> b!5347020 (= c!930622 ((_ is Cons!61274) (exprs!4917 lt!2179978)))))

(declare-fun b!5347021 () Bool)

(assert (=> b!5347021 (= e!3319630 ((as const (Array Context!8834 Bool)) false))))

(declare-fun b!5347022 () Bool)

(assert (=> b!5347022 (= e!3319630 call!382194)))

(declare-fun b!5347023 () Bool)

(assert (=> b!5347023 (= e!3319628 (nullable!5202 (h!67722 (exprs!4917 lt!2179978))))))

(assert (= (and d!1714874 res!2268645) b!5347023))

(assert (= (and d!1714874 c!930621) b!5347019))

(assert (= (and d!1714874 (not c!930621)) b!5347020))

(assert (= (and b!5347020 c!930622) b!5347022))

(assert (= (and b!5347020 (not c!930622)) b!5347021))

(assert (= (or b!5347019 b!5347022) bm!382189))

(declare-fun m!6378686 () Bool)

(assert (=> b!5347019 m!6378686))

(declare-fun m!6378688 () Bool)

(assert (=> bm!382189 m!6378688))

(declare-fun m!6378690 () Bool)

(assert (=> b!5347023 m!6378690))

(assert (=> b!5346682 d!1714874))

(declare-fun d!1714882 () Bool)

(declare-fun dynLambda!24221 (Int Context!8834) (InoxSet Context!8834))

(assert (=> d!1714882 (= (flatMap!760 lt!2179953 lambda!274572) (dynLambda!24221 lambda!274572 lt!2179978))))

(declare-fun lt!2180048 () Unit!153650)

(declare-fun choose!40099 ((InoxSet Context!8834) Context!8834 Int) Unit!153650)

(assert (=> d!1714882 (= lt!2180048 (choose!40099 lt!2179953 lt!2179978 lambda!274572))))

(assert (=> d!1714882 (= lt!2179953 (store ((as const (Array Context!8834 Bool)) false) lt!2179978 true))))

(assert (=> d!1714882 (= (lemmaFlatMapOnSingletonSet!292 lt!2179953 lt!2179978 lambda!274572) lt!2180048)))

(declare-fun b_lambda!205273 () Bool)

(assert (=> (not b_lambda!205273) (not d!1714882)))

(declare-fun bs!1239615 () Bool)

(assert (= bs!1239615 d!1714882))

(assert (=> bs!1239615 m!6378352))

(declare-fun m!6378716 () Bool)

(assert (=> bs!1239615 m!6378716))

(declare-fun m!6378718 () Bool)

(assert (=> bs!1239615 m!6378718))

(assert (=> bs!1239615 m!6378358))

(assert (=> b!5346682 d!1714882))

(declare-fun bs!1239616 () Bool)

(declare-fun d!1714894 () Bool)

(assert (= bs!1239616 (and d!1714894 b!5346686)))

(declare-fun lambda!274610 () Int)

(assert (=> bs!1239616 (= lambda!274610 lambda!274572)))

(assert (=> d!1714894 true))

(assert (=> d!1714894 (= (derivationStepZipper!1274 lt!2179953 (h!67724 s!2326)) (flatMap!760 lt!2179953 lambda!274610))))

(declare-fun bs!1239617 () Bool)

(assert (= bs!1239617 d!1714894))

(declare-fun m!6378720 () Bool)

(assert (=> bs!1239617 m!6378720))

(assert (=> b!5346682 d!1714894))

(declare-fun b!5347102 () Bool)

(declare-fun res!2268674 () Bool)

(declare-fun e!3319678 () Bool)

(assert (=> b!5347102 (=> res!2268674 e!3319678)))

(assert (=> b!5347102 (= res!2268674 (not ((_ is ElementMatch!15033) (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292)))))))

(declare-fun e!3319673 () Bool)

(assert (=> b!5347102 (= e!3319673 e!3319678)))

(declare-fun b!5347103 () Bool)

(declare-fun res!2268670 () Bool)

(declare-fun e!3319677 () Bool)

(assert (=> b!5347103 (=> res!2268670 e!3319677)))

(assert (=> b!5347103 (= res!2268670 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347104 () Bool)

(declare-fun lt!2180051 () Bool)

(assert (=> b!5347104 (= e!3319673 (not lt!2180051))))

(declare-fun b!5347105 () Bool)

(declare-fun e!3319672 () Bool)

(declare-fun derivativeStep!4195 (Regex!15033 C!30336) Regex!15033)

(assert (=> b!5347105 (= e!3319672 (matchR!7218 (derivativeStep!4195 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292)) (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347106 () Bool)

(declare-fun e!3319674 () Bool)

(assert (=> b!5347106 (= e!3319674 e!3319677)))

(declare-fun res!2268675 () Bool)

(assert (=> b!5347106 (=> res!2268675 e!3319677)))

(declare-fun call!382218 () Bool)

(assert (=> b!5347106 (= res!2268675 call!382218)))

(declare-fun b!5347107 () Bool)

(assert (=> b!5347107 (= e!3319678 e!3319674)))

(declare-fun res!2268668 () Bool)

(assert (=> b!5347107 (=> (not res!2268668) (not e!3319674))))

(assert (=> b!5347107 (= res!2268668 (not lt!2180051))))

(declare-fun b!5347109 () Bool)

(declare-fun e!3319675 () Bool)

(assert (=> b!5347109 (= e!3319675 (= (head!11465 s!2326) (c!930519 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292)))))))

(declare-fun b!5347110 () Bool)

(declare-fun e!3319676 () Bool)

(assert (=> b!5347110 (= e!3319676 e!3319673)))

(declare-fun c!930653 () Bool)

(assert (=> b!5347110 (= c!930653 ((_ is EmptyLang!15033) (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292))))))

(declare-fun b!5347111 () Bool)

(declare-fun res!2268671 () Bool)

(assert (=> b!5347111 (=> (not res!2268671) (not e!3319675))))

(assert (=> b!5347111 (= res!2268671 (not call!382218))))

(declare-fun b!5347112 () Bool)

(assert (=> b!5347112 (= e!3319676 (= lt!2180051 call!382218))))

(declare-fun b!5347113 () Bool)

(declare-fun res!2268669 () Bool)

(assert (=> b!5347113 (=> res!2268669 e!3319678)))

(assert (=> b!5347113 (= res!2268669 e!3319675)))

(declare-fun res!2268672 () Bool)

(assert (=> b!5347113 (=> (not res!2268672) (not e!3319675))))

(assert (=> b!5347113 (= res!2268672 lt!2180051)))

(declare-fun b!5347114 () Bool)

(assert (=> b!5347114 (= e!3319677 (not (= (head!11465 s!2326) (c!930519 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292))))))))

(declare-fun b!5347108 () Bool)

(declare-fun res!2268673 () Bool)

(assert (=> b!5347108 (=> (not res!2268673) (not e!3319675))))

(assert (=> b!5347108 (= res!2268673 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1714896 () Bool)

(assert (=> d!1714896 e!3319676))

(declare-fun c!930654 () Bool)

(assert (=> d!1714896 (= c!930654 ((_ is EmptyExpr!15033) (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292))))))

(assert (=> d!1714896 (= lt!2180051 e!3319672)))

(declare-fun c!930652 () Bool)

(assert (=> d!1714896 (= c!930652 (isEmpty!33249 s!2326))))

(assert (=> d!1714896 (validRegex!6769 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292)))))

(assert (=> d!1714896 (= (matchR!7218 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292)) s!2326) lt!2180051)))

(declare-fun b!5347115 () Bool)

(assert (=> b!5347115 (= e!3319672 (nullable!5202 (Concat!23878 (regOne!30578 r!7292) (regTwo!30578 r!7292))))))

(declare-fun bm!382213 () Bool)

(assert (=> bm!382213 (= call!382218 (isEmpty!33249 s!2326))))

(assert (= (and d!1714896 c!930652) b!5347115))

(assert (= (and d!1714896 (not c!930652)) b!5347105))

(assert (= (and d!1714896 c!930654) b!5347112))

(assert (= (and d!1714896 (not c!930654)) b!5347110))

(assert (= (and b!5347110 c!930653) b!5347104))

(assert (= (and b!5347110 (not c!930653)) b!5347102))

(assert (= (and b!5347102 (not res!2268674)) b!5347113))

(assert (= (and b!5347113 res!2268672) b!5347111))

(assert (= (and b!5347111 res!2268671) b!5347108))

(assert (= (and b!5347108 res!2268673) b!5347109))

(assert (= (and b!5347113 (not res!2268669)) b!5347107))

(assert (= (and b!5347107 res!2268668) b!5347106))

(assert (= (and b!5347106 (not res!2268675)) b!5347103))

(assert (= (and b!5347103 (not res!2268670)) b!5347114))

(assert (= (or b!5347112 b!5347106 b!5347111) bm!382213))

(declare-fun m!6378732 () Bool)

(assert (=> b!5347105 m!6378732))

(assert (=> b!5347105 m!6378732))

(declare-fun m!6378734 () Bool)

(assert (=> b!5347105 m!6378734))

(declare-fun m!6378736 () Bool)

(assert (=> b!5347105 m!6378736))

(assert (=> b!5347105 m!6378734))

(assert (=> b!5347105 m!6378736))

(declare-fun m!6378738 () Bool)

(assert (=> b!5347105 m!6378738))

(declare-fun m!6378740 () Bool)

(assert (=> bm!382213 m!6378740))

(assert (=> d!1714896 m!6378740))

(declare-fun m!6378742 () Bool)

(assert (=> d!1714896 m!6378742))

(declare-fun m!6378744 () Bool)

(assert (=> b!5347115 m!6378744))

(assert (=> b!5347109 m!6378732))

(assert (=> b!5347103 m!6378736))

(assert (=> b!5347103 m!6378736))

(declare-fun m!6378746 () Bool)

(assert (=> b!5347103 m!6378746))

(assert (=> b!5347114 m!6378732))

(assert (=> b!5347108 m!6378736))

(assert (=> b!5347108 m!6378736))

(assert (=> b!5347108 m!6378746))

(assert (=> b!5346701 d!1714896))

(declare-fun b!5347163 () Bool)

(assert (=> b!5347163 true))

(declare-fun bs!1239622 () Bool)

(declare-fun b!5347165 () Bool)

(assert (= bs!1239622 (and b!5347165 b!5347163)))

(declare-fun lt!2180067 () Int)

(declare-fun lambda!274622 () Int)

(declare-fun lt!2180065 () Int)

(declare-fun lambda!274621 () Int)

(assert (=> bs!1239622 (= (= lt!2180067 lt!2180065) (= lambda!274622 lambda!274621))))

(assert (=> b!5347165 true))

(declare-fun d!1714900 () Bool)

(declare-fun e!3319708 () Bool)

(assert (=> d!1714900 e!3319708))

(declare-fun res!2268685 () Bool)

(assert (=> d!1714900 (=> (not res!2268685) (not e!3319708))))

(assert (=> d!1714900 (= res!2268685 (>= lt!2180067 0))))

(declare-fun e!3319707 () Int)

(assert (=> d!1714900 (= lt!2180067 e!3319707)))

(declare-fun c!930680 () Bool)

(assert (=> d!1714900 (= c!930680 ((_ is Cons!61275) lt!2179951))))

(assert (=> d!1714900 (= (zipperDepth!142 lt!2179951) lt!2180067)))

(assert (=> b!5347163 (= e!3319707 lt!2180065)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!79 (Context!8834) Int)

(assert (=> b!5347163 (= lt!2180065 (maxBigInt!0 (contextDepth!79 (h!67723 lt!2179951)) (zipperDepth!142 (t!374616 lt!2179951))))))

(declare-fun lambda!274620 () Int)

(declare-fun lt!2180066 () Unit!153650)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!73 (List!61399 Int Int Int) Unit!153650)

(assert (=> b!5347163 (= lt!2180066 (lemmaForallContextDepthBiggerThanTransitive!73 (t!374616 lt!2179951) lt!2180065 (zipperDepth!142 (t!374616 lt!2179951)) lambda!274620))))

(declare-fun forall!14456 (List!61399 Int) Bool)

(assert (=> b!5347163 (forall!14456 (t!374616 lt!2179951) lambda!274621)))

(declare-fun lt!2180064 () Unit!153650)

(assert (=> b!5347163 (= lt!2180064 lt!2180066)))

(declare-fun b!5347164 () Bool)

(assert (=> b!5347164 (= e!3319707 0)))

(assert (=> b!5347165 (= e!3319708 (forall!14456 lt!2179951 lambda!274622))))

(assert (= (and d!1714900 c!930680) b!5347163))

(assert (= (and d!1714900 (not c!930680)) b!5347164))

(assert (= (and d!1714900 res!2268685) b!5347165))

(declare-fun m!6378766 () Bool)

(assert (=> b!5347163 m!6378766))

(declare-fun m!6378768 () Bool)

(assert (=> b!5347163 m!6378768))

(assert (=> b!5347163 m!6378768))

(declare-fun m!6378770 () Bool)

(assert (=> b!5347163 m!6378770))

(declare-fun m!6378772 () Bool)

(assert (=> b!5347163 m!6378772))

(assert (=> b!5347163 m!6378772))

(assert (=> b!5347163 m!6378768))

(declare-fun m!6378774 () Bool)

(assert (=> b!5347163 m!6378774))

(declare-fun m!6378776 () Bool)

(assert (=> b!5347165 m!6378776))

(assert (=> b!5346683 d!1714900))

(declare-fun bs!1239623 () Bool)

(declare-fun b!5347174 () Bool)

(assert (= bs!1239623 (and b!5347174 b!5347163)))

(declare-fun lambda!274625 () Int)

(assert (=> bs!1239623 (= lambda!274625 lambda!274620)))

(declare-fun lambda!274626 () Int)

(declare-fun lt!2180069 () Int)

(assert (=> bs!1239623 (= (= lt!2180069 lt!2180065) (= lambda!274626 lambda!274621))))

(declare-fun bs!1239624 () Bool)

(assert (= bs!1239624 (and b!5347174 b!5347165)))

(assert (=> bs!1239624 (= (= lt!2180069 lt!2180067) (= lambda!274626 lambda!274622))))

(assert (=> b!5347174 true))

(declare-fun bs!1239625 () Bool)

(declare-fun b!5347176 () Bool)

(assert (= bs!1239625 (and b!5347176 b!5347163)))

(declare-fun lt!2180071 () Int)

(declare-fun lambda!274627 () Int)

(assert (=> bs!1239625 (= (= lt!2180071 lt!2180065) (= lambda!274627 lambda!274621))))

(declare-fun bs!1239626 () Bool)

(assert (= bs!1239626 (and b!5347176 b!5347165)))

(assert (=> bs!1239626 (= (= lt!2180071 lt!2180067) (= lambda!274627 lambda!274622))))

(declare-fun bs!1239627 () Bool)

(assert (= bs!1239627 (and b!5347176 b!5347174)))

(assert (=> bs!1239627 (= (= lt!2180071 lt!2180069) (= lambda!274627 lambda!274626))))

(assert (=> b!5347176 true))

(declare-fun d!1714910 () Bool)

(declare-fun e!3319712 () Bool)

(assert (=> d!1714910 e!3319712))

(declare-fun res!2268692 () Bool)

(assert (=> d!1714910 (=> (not res!2268692) (not e!3319712))))

(assert (=> d!1714910 (= res!2268692 (>= lt!2180071 0))))

(declare-fun e!3319711 () Int)

(assert (=> d!1714910 (= lt!2180071 e!3319711)))

(declare-fun c!930681 () Bool)

(assert (=> d!1714910 (= c!930681 ((_ is Cons!61275) zl!343))))

(assert (=> d!1714910 (= (zipperDepth!142 zl!343) lt!2180071)))

(assert (=> b!5347174 (= e!3319711 lt!2180069)))

(assert (=> b!5347174 (= lt!2180069 (maxBigInt!0 (contextDepth!79 (h!67723 zl!343)) (zipperDepth!142 (t!374616 zl!343))))))

(declare-fun lt!2180070 () Unit!153650)

(assert (=> b!5347174 (= lt!2180070 (lemmaForallContextDepthBiggerThanTransitive!73 (t!374616 zl!343) lt!2180069 (zipperDepth!142 (t!374616 zl!343)) lambda!274625))))

(assert (=> b!5347174 (forall!14456 (t!374616 zl!343) lambda!274626)))

(declare-fun lt!2180068 () Unit!153650)

(assert (=> b!5347174 (= lt!2180068 lt!2180070)))

(declare-fun b!5347175 () Bool)

(assert (=> b!5347175 (= e!3319711 0)))

(assert (=> b!5347176 (= e!3319712 (forall!14456 zl!343 lambda!274627))))

(assert (= (and d!1714910 c!930681) b!5347174))

(assert (= (and d!1714910 (not c!930681)) b!5347175))

(assert (= (and d!1714910 res!2268692) b!5347176))

(declare-fun m!6378778 () Bool)

(assert (=> b!5347174 m!6378778))

(declare-fun m!6378780 () Bool)

(assert (=> b!5347174 m!6378780))

(assert (=> b!5347174 m!6378780))

(declare-fun m!6378782 () Bool)

(assert (=> b!5347174 m!6378782))

(declare-fun m!6378784 () Bool)

(assert (=> b!5347174 m!6378784))

(assert (=> b!5347174 m!6378784))

(assert (=> b!5347174 m!6378780))

(declare-fun m!6378786 () Bool)

(assert (=> b!5347174 m!6378786))

(declare-fun m!6378788 () Bool)

(assert (=> b!5347176 m!6378788))

(assert (=> b!5346683 d!1714910))

(declare-fun d!1714912 () Bool)

(declare-fun c!930682 () Bool)

(assert (=> d!1714912 (= c!930682 (isEmpty!33249 (t!374617 s!2326)))))

(declare-fun e!3319715 () Bool)

(assert (=> d!1714912 (= (matchZipper!1277 lt!2179966 (t!374617 s!2326)) e!3319715)))

(declare-fun b!5347181 () Bool)

(assert (=> b!5347181 (= e!3319715 (nullableZipper!1374 lt!2179966))))

(declare-fun b!5347182 () Bool)

(assert (=> b!5347182 (= e!3319715 (matchZipper!1277 (derivationStepZipper!1274 lt!2179966 (head!11465 (t!374617 s!2326))) (tail!10562 (t!374617 s!2326))))))

(assert (= (and d!1714912 c!930682) b!5347181))

(assert (= (and d!1714912 (not c!930682)) b!5347182))

(assert (=> d!1714912 m!6378444))

(declare-fun m!6378790 () Bool)

(assert (=> b!5347181 m!6378790))

(assert (=> b!5347182 m!6378448))

(assert (=> b!5347182 m!6378448))

(declare-fun m!6378792 () Bool)

(assert (=> b!5347182 m!6378792))

(assert (=> b!5347182 m!6378452))

(assert (=> b!5347182 m!6378792))

(assert (=> b!5347182 m!6378452))

(declare-fun m!6378794 () Bool)

(assert (=> b!5347182 m!6378794))

(assert (=> b!5346684 d!1714912))

(declare-fun bs!1239628 () Bool)

(declare-fun d!1714914 () Bool)

(assert (= bs!1239628 (and d!1714914 b!5346671)))

(declare-fun lambda!274632 () Int)

(assert (=> bs!1239628 (= lambda!274632 lambda!274577)))

(declare-fun bs!1239629 () Bool)

(assert (= bs!1239629 (and d!1714914 d!1714860)))

(assert (=> bs!1239629 (= lambda!274632 lambda!274598)))

(assert (=> d!1714914 (= (inv!80829 setElem!34531) (forall!14455 (exprs!4917 setElem!34531) lambda!274632))))

(declare-fun bs!1239630 () Bool)

(assert (= bs!1239630 d!1714914))

(declare-fun m!6378796 () Bool)

(assert (=> bs!1239630 m!6378796))

(assert (=> setNonEmpty!34531 d!1714914))

(declare-fun bs!1239631 () Bool)

(declare-fun d!1714916 () Bool)

(assert (= bs!1239631 (and d!1714916 b!5346671)))

(declare-fun lambda!274633 () Int)

(assert (=> bs!1239631 (= lambda!274633 lambda!274577)))

(declare-fun bs!1239632 () Bool)

(assert (= bs!1239632 (and d!1714916 d!1714860)))

(assert (=> bs!1239632 (= lambda!274633 lambda!274598)))

(declare-fun bs!1239633 () Bool)

(assert (= bs!1239633 (and d!1714916 d!1714914)))

(assert (=> bs!1239633 (= lambda!274633 lambda!274632)))

(assert (=> d!1714916 (= (inv!80829 (h!67723 zl!343)) (forall!14455 (exprs!4917 (h!67723 zl!343)) lambda!274633))))

(declare-fun bs!1239634 () Bool)

(assert (= bs!1239634 d!1714916))

(declare-fun m!6378798 () Bool)

(assert (=> bs!1239634 m!6378798))

(assert (=> b!5346665 d!1714916))

(declare-fun bs!1239645 () Bool)

(declare-fun b!5347254 () Bool)

(assert (= bs!1239645 (and b!5347254 d!1714844)))

(declare-fun lambda!274640 () Int)

(assert (=> bs!1239645 (not (= lambda!274640 lambda!274594))))

(declare-fun bs!1239646 () Bool)

(assert (= bs!1239646 (and b!5347254 b!5346687)))

(assert (=> bs!1239646 (not (= lambda!274640 lambda!274576))))

(assert (=> bs!1239646 (not (= lambda!274640 lambda!274573))))

(assert (=> bs!1239646 (not (= lambda!274640 lambda!274575))))

(assert (=> bs!1239646 (not (= lambda!274640 lambda!274574))))

(declare-fun bs!1239647 () Bool)

(assert (= bs!1239647 (and b!5347254 d!1714840)))

(assert (=> bs!1239647 (not (= lambda!274640 lambda!274589))))

(assert (=> bs!1239645 (not (= lambda!274640 lambda!274595))))

(declare-fun bs!1239648 () Bool)

(assert (= bs!1239648 (and b!5347254 b!5346698)))

(assert (=> bs!1239648 (not (= lambda!274640 lambda!274570))))

(assert (=> bs!1239648 (not (= lambda!274640 lambda!274571))))

(assert (=> b!5347254 true))

(assert (=> b!5347254 true))

(declare-fun bs!1239654 () Bool)

(declare-fun b!5347264 () Bool)

(assert (= bs!1239654 (and b!5347264 d!1714844)))

(declare-fun lambda!274642 () Int)

(assert (=> bs!1239654 (not (= lambda!274642 lambda!274594))))

(declare-fun bs!1239655 () Bool)

(assert (= bs!1239655 (and b!5347264 b!5347254)))

(assert (=> bs!1239655 (not (= lambda!274642 lambda!274640))))

(declare-fun bs!1239656 () Bool)

(assert (= bs!1239656 (and b!5347264 b!5346687)))

(assert (=> bs!1239656 (= (and (= (regOne!30578 r!7292) (regTwo!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179958)) (= lambda!274642 lambda!274576))))

(assert (=> bs!1239656 (not (= lambda!274642 lambda!274573))))

(assert (=> bs!1239656 (not (= lambda!274642 lambda!274575))))

(assert (=> bs!1239656 (= (and (= (regOne!30578 r!7292) (regOne!30578 (regOne!30578 r!7292))) (= (regTwo!30578 r!7292) lt!2179983)) (= lambda!274642 lambda!274574))))

(declare-fun bs!1239657 () Bool)

(assert (= bs!1239657 (and b!5347264 d!1714840)))

(assert (=> bs!1239657 (not (= lambda!274642 lambda!274589))))

(assert (=> bs!1239654 (= lambda!274642 lambda!274595)))

(declare-fun bs!1239658 () Bool)

(assert (= bs!1239658 (and b!5347264 b!5346698)))

(assert (=> bs!1239658 (not (= lambda!274642 lambda!274570))))

(assert (=> bs!1239658 (= lambda!274642 lambda!274571)))

(assert (=> b!5347264 true))

(assert (=> b!5347264 true))

(declare-fun e!3319757 () Bool)

(declare-fun call!382237 () Bool)

(assert (=> b!5347254 (= e!3319757 call!382237)))

(declare-fun b!5347255 () Bool)

(declare-fun e!3319758 () Bool)

(assert (=> b!5347255 (= e!3319758 (= s!2326 (Cons!61276 (c!930519 r!7292) Nil!61276)))))

(declare-fun b!5347256 () Bool)

(declare-fun e!3319760 () Bool)

(declare-fun e!3319755 () Bool)

(assert (=> b!5347256 (= e!3319760 e!3319755)))

(declare-fun res!2268734 () Bool)

(assert (=> b!5347256 (= res!2268734 (matchRSpec!2136 (regOne!30579 r!7292) s!2326))))

(assert (=> b!5347256 (=> res!2268734 e!3319755)))

(declare-fun bm!382232 () Bool)

(declare-fun call!382238 () Bool)

(assert (=> bm!382232 (= call!382238 (isEmpty!33249 s!2326))))

(declare-fun b!5347257 () Bool)

(declare-fun c!930702 () Bool)

(assert (=> b!5347257 (= c!930702 ((_ is ElementMatch!15033) r!7292))))

(declare-fun e!3319759 () Bool)

(assert (=> b!5347257 (= e!3319759 e!3319758)))

(declare-fun b!5347258 () Bool)

(assert (=> b!5347258 (= e!3319755 (matchRSpec!2136 (regTwo!30579 r!7292) s!2326))))

(declare-fun b!5347259 () Bool)

(declare-fun res!2268732 () Bool)

(assert (=> b!5347259 (=> res!2268732 e!3319757)))

(assert (=> b!5347259 (= res!2268732 call!382238)))

(declare-fun e!3319761 () Bool)

(assert (=> b!5347259 (= e!3319761 e!3319757)))

(declare-fun b!5347260 () Bool)

(assert (=> b!5347260 (= e!3319760 e!3319761)))

(declare-fun c!930701 () Bool)

(assert (=> b!5347260 (= c!930701 ((_ is Star!15033) r!7292))))

(declare-fun bm!382233 () Bool)

(assert (=> bm!382233 (= call!382237 (Exists!2214 (ite c!930701 lambda!274640 lambda!274642)))))

(declare-fun b!5347262 () Bool)

(declare-fun e!3319756 () Bool)

(assert (=> b!5347262 (= e!3319756 call!382238)))

(declare-fun b!5347261 () Bool)

(declare-fun c!930703 () Bool)

(assert (=> b!5347261 (= c!930703 ((_ is Union!15033) r!7292))))

(assert (=> b!5347261 (= e!3319758 e!3319760)))

(declare-fun d!1714918 () Bool)

(declare-fun c!930704 () Bool)

(assert (=> d!1714918 (= c!930704 ((_ is EmptyExpr!15033) r!7292))))

(assert (=> d!1714918 (= (matchRSpec!2136 r!7292 s!2326) e!3319756)))

(declare-fun b!5347263 () Bool)

(assert (=> b!5347263 (= e!3319756 e!3319759)))

(declare-fun res!2268733 () Bool)

(assert (=> b!5347263 (= res!2268733 (not ((_ is EmptyLang!15033) r!7292)))))

(assert (=> b!5347263 (=> (not res!2268733) (not e!3319759))))

(assert (=> b!5347264 (= e!3319761 call!382237)))

(assert (= (and d!1714918 c!930704) b!5347262))

(assert (= (and d!1714918 (not c!930704)) b!5347263))

(assert (= (and b!5347263 res!2268733) b!5347257))

(assert (= (and b!5347257 c!930702) b!5347255))

(assert (= (and b!5347257 (not c!930702)) b!5347261))

(assert (= (and b!5347261 c!930703) b!5347256))

(assert (= (and b!5347261 (not c!930703)) b!5347260))

(assert (= (and b!5347256 (not res!2268734)) b!5347258))

(assert (= (and b!5347260 c!930701) b!5347259))

(assert (= (and b!5347260 (not c!930701)) b!5347264))

(assert (= (and b!5347259 (not res!2268732)) b!5347254))

(assert (= (or b!5347254 b!5347264) bm!382233))

(assert (= (or b!5347262 b!5347259) bm!382232))

(declare-fun m!6378832 () Bool)

(assert (=> b!5347256 m!6378832))

(assert (=> bm!382232 m!6378740))

(declare-fun m!6378834 () Bool)

(assert (=> b!5347258 m!6378834))

(declare-fun m!6378836 () Bool)

(assert (=> bm!382233 m!6378836))

(assert (=> b!5346666 d!1714918))

(declare-fun b!5347291 () Bool)

(declare-fun res!2268751 () Bool)

(declare-fun e!3319786 () Bool)

(assert (=> b!5347291 (=> res!2268751 e!3319786)))

(assert (=> b!5347291 (= res!2268751 (not ((_ is ElementMatch!15033) r!7292)))))

(declare-fun e!3319781 () Bool)

(assert (=> b!5347291 (= e!3319781 e!3319786)))

(declare-fun b!5347292 () Bool)

(declare-fun res!2268747 () Bool)

(declare-fun e!3319785 () Bool)

(assert (=> b!5347292 (=> res!2268747 e!3319785)))

(assert (=> b!5347292 (= res!2268747 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347293 () Bool)

(declare-fun lt!2180081 () Bool)

(assert (=> b!5347293 (= e!3319781 (not lt!2180081))))

(declare-fun b!5347294 () Bool)

(declare-fun e!3319780 () Bool)

(assert (=> b!5347294 (= e!3319780 (matchR!7218 (derivativeStep!4195 r!7292 (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347295 () Bool)

(declare-fun e!3319782 () Bool)

(assert (=> b!5347295 (= e!3319782 e!3319785)))

(declare-fun res!2268752 () Bool)

(assert (=> b!5347295 (=> res!2268752 e!3319785)))

(declare-fun call!382239 () Bool)

(assert (=> b!5347295 (= res!2268752 call!382239)))

(declare-fun b!5347296 () Bool)

(assert (=> b!5347296 (= e!3319786 e!3319782)))

(declare-fun res!2268745 () Bool)

(assert (=> b!5347296 (=> (not res!2268745) (not e!3319782))))

(assert (=> b!5347296 (= res!2268745 (not lt!2180081))))

(declare-fun b!5347298 () Bool)

(declare-fun e!3319783 () Bool)

(assert (=> b!5347298 (= e!3319783 (= (head!11465 s!2326) (c!930519 r!7292)))))

(declare-fun b!5347299 () Bool)

(declare-fun e!3319784 () Bool)

(assert (=> b!5347299 (= e!3319784 e!3319781)))

(declare-fun c!930715 () Bool)

(assert (=> b!5347299 (= c!930715 ((_ is EmptyLang!15033) r!7292))))

(declare-fun b!5347300 () Bool)

(declare-fun res!2268748 () Bool)

(assert (=> b!5347300 (=> (not res!2268748) (not e!3319783))))

(assert (=> b!5347300 (= res!2268748 (not call!382239))))

(declare-fun b!5347301 () Bool)

(assert (=> b!5347301 (= e!3319784 (= lt!2180081 call!382239))))

(declare-fun b!5347302 () Bool)

(declare-fun res!2268746 () Bool)

(assert (=> b!5347302 (=> res!2268746 e!3319786)))

(assert (=> b!5347302 (= res!2268746 e!3319783)))

(declare-fun res!2268749 () Bool)

(assert (=> b!5347302 (=> (not res!2268749) (not e!3319783))))

(assert (=> b!5347302 (= res!2268749 lt!2180081)))

(declare-fun b!5347303 () Bool)

(assert (=> b!5347303 (= e!3319785 (not (= (head!11465 s!2326) (c!930519 r!7292))))))

(declare-fun b!5347297 () Bool)

(declare-fun res!2268750 () Bool)

(assert (=> b!5347297 (=> (not res!2268750) (not e!3319783))))

(assert (=> b!5347297 (= res!2268750 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1714934 () Bool)

(assert (=> d!1714934 e!3319784))

(declare-fun c!930716 () Bool)

(assert (=> d!1714934 (= c!930716 ((_ is EmptyExpr!15033) r!7292))))

(assert (=> d!1714934 (= lt!2180081 e!3319780)))

(declare-fun c!930714 () Bool)

(assert (=> d!1714934 (= c!930714 (isEmpty!33249 s!2326))))

(assert (=> d!1714934 (validRegex!6769 r!7292)))

(assert (=> d!1714934 (= (matchR!7218 r!7292 s!2326) lt!2180081)))

(declare-fun b!5347304 () Bool)

(assert (=> b!5347304 (= e!3319780 (nullable!5202 r!7292))))

(declare-fun bm!382234 () Bool)

(assert (=> bm!382234 (= call!382239 (isEmpty!33249 s!2326))))

(assert (= (and d!1714934 c!930714) b!5347304))

(assert (= (and d!1714934 (not c!930714)) b!5347294))

(assert (= (and d!1714934 c!930716) b!5347301))

(assert (= (and d!1714934 (not c!930716)) b!5347299))

(assert (= (and b!5347299 c!930715) b!5347293))

(assert (= (and b!5347299 (not c!930715)) b!5347291))

(assert (= (and b!5347291 (not res!2268751)) b!5347302))

(assert (= (and b!5347302 res!2268749) b!5347300))

(assert (= (and b!5347300 res!2268748) b!5347297))

(assert (= (and b!5347297 res!2268750) b!5347298))

(assert (= (and b!5347302 (not res!2268746)) b!5347296))

(assert (= (and b!5347296 res!2268745) b!5347295))

(assert (= (and b!5347295 (not res!2268752)) b!5347292))

(assert (= (and b!5347292 (not res!2268747)) b!5347303))

(assert (= (or b!5347301 b!5347295 b!5347300) bm!382234))

(assert (=> b!5347294 m!6378732))

(assert (=> b!5347294 m!6378732))

(declare-fun m!6378838 () Bool)

(assert (=> b!5347294 m!6378838))

(assert (=> b!5347294 m!6378736))

(assert (=> b!5347294 m!6378838))

(assert (=> b!5347294 m!6378736))

(declare-fun m!6378840 () Bool)

(assert (=> b!5347294 m!6378840))

(assert (=> bm!382234 m!6378740))

(assert (=> d!1714934 m!6378740))

(assert (=> d!1714934 m!6378350))

(declare-fun m!6378842 () Bool)

(assert (=> b!5347304 m!6378842))

(assert (=> b!5347298 m!6378732))

(assert (=> b!5347292 m!6378736))

(assert (=> b!5347292 m!6378736))

(assert (=> b!5347292 m!6378746))

(assert (=> b!5347303 m!6378732))

(assert (=> b!5347297 m!6378736))

(assert (=> b!5347297 m!6378736))

(assert (=> b!5347297 m!6378746))

(assert (=> b!5346666 d!1714934))

(declare-fun d!1714936 () Bool)

(assert (=> d!1714936 (= (matchR!7218 r!7292 s!2326) (matchRSpec!2136 r!7292 s!2326))))

(declare-fun lt!2180084 () Unit!153650)

(declare-fun choose!40100 (Regex!15033 List!61400) Unit!153650)

(assert (=> d!1714936 (= lt!2180084 (choose!40100 r!7292 s!2326))))

(assert (=> d!1714936 (validRegex!6769 r!7292)))

(assert (=> d!1714936 (= (mainMatchTheorem!2136 r!7292 s!2326) lt!2180084)))

(declare-fun bs!1239659 () Bool)

(assert (= bs!1239659 d!1714936))

(assert (=> bs!1239659 m!6378364))

(assert (=> bs!1239659 m!6378362))

(declare-fun m!6378850 () Bool)

(assert (=> bs!1239659 m!6378850))

(assert (=> bs!1239659 m!6378350))

(assert (=> b!5346666 d!1714936))

(declare-fun d!1714940 () Bool)

(declare-fun c!930719 () Bool)

(declare-fun e!3319794 () Bool)

(assert (=> d!1714940 (= c!930719 e!3319794)))

(declare-fun res!2268758 () Bool)

(assert (=> d!1714940 (=> (not res!2268758) (not e!3319794))))

(assert (=> d!1714940 (= res!2268758 ((_ is Cons!61274) (exprs!4917 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343))))))))))

(declare-fun e!3319795 () (InoxSet Context!8834))

(assert (=> d!1714940 (= (derivationStepZipperUp!405 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343))))) (h!67724 s!2326)) e!3319795)))

(declare-fun call!382249 () (InoxSet Context!8834))

(declare-fun b!5347314 () Bool)

(assert (=> b!5347314 (= e!3319795 ((_ map or) call!382249 (derivationStepZipperUp!405 (Context!8835 (t!374615 (exprs!4917 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343)))))))) (h!67724 s!2326))))))

(declare-fun bm!382244 () Bool)

(assert (=> bm!382244 (= call!382249 (derivationStepZipperDown!481 (h!67722 (exprs!4917 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343))))))) (Context!8835 (t!374615 (exprs!4917 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343)))))))) (h!67724 s!2326)))))

(declare-fun b!5347315 () Bool)

(declare-fun e!3319796 () (InoxSet Context!8834))

(assert (=> b!5347315 (= e!3319795 e!3319796)))

(declare-fun c!930720 () Bool)

(assert (=> b!5347315 (= c!930720 ((_ is Cons!61274) (exprs!4917 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343))))))))))

(declare-fun b!5347316 () Bool)

(assert (=> b!5347316 (= e!3319796 ((as const (Array Context!8834 Bool)) false))))

(declare-fun b!5347317 () Bool)

(assert (=> b!5347317 (= e!3319796 call!382249)))

(declare-fun b!5347318 () Bool)

(assert (=> b!5347318 (= e!3319794 (nullable!5202 (h!67722 (exprs!4917 (Context!8835 (Cons!61274 (h!67722 (exprs!4917 (h!67723 zl!343))) (t!374615 (exprs!4917 (h!67723 zl!343)))))))))))

(assert (= (and d!1714940 res!2268758) b!5347318))

(assert (= (and d!1714940 c!930719) b!5347314))

(assert (= (and d!1714940 (not c!930719)) b!5347315))

(assert (= (and b!5347315 c!930720) b!5347317))

(assert (= (and b!5347315 (not c!930720)) b!5347316))

(assert (= (or b!5347314 b!5347317) bm!382244))

(declare-fun m!6378852 () Bool)

(assert (=> b!5347314 m!6378852))

(declare-fun m!6378854 () Bool)

(assert (=> bm!382244 m!6378854))

(declare-fun m!6378856 () Bool)

(assert (=> b!5347318 m!6378856))

(assert (=> b!5346686 d!1714940))

(declare-fun d!1714942 () Bool)

(declare-fun c!930721 () Bool)

(declare-fun e!3319797 () Bool)

(assert (=> d!1714942 (= c!930721 e!3319797)))

(declare-fun res!2268759 () Bool)

(assert (=> d!1714942 (=> (not res!2268759) (not e!3319797))))

(assert (=> d!1714942 (= res!2268759 ((_ is Cons!61274) (exprs!4917 lt!2179971)))))

(declare-fun e!3319798 () (InoxSet Context!8834))

(assert (=> d!1714942 (= (derivationStepZipperUp!405 lt!2179971 (h!67724 s!2326)) e!3319798)))

(declare-fun call!382250 () (InoxSet Context!8834))

(declare-fun b!5347319 () Bool)

(assert (=> b!5347319 (= e!3319798 ((_ map or) call!382250 (derivationStepZipperUp!405 (Context!8835 (t!374615 (exprs!4917 lt!2179971))) (h!67724 s!2326))))))

(declare-fun bm!382245 () Bool)

(assert (=> bm!382245 (= call!382250 (derivationStepZipperDown!481 (h!67722 (exprs!4917 lt!2179971)) (Context!8835 (t!374615 (exprs!4917 lt!2179971))) (h!67724 s!2326)))))

(declare-fun b!5347320 () Bool)

(declare-fun e!3319799 () (InoxSet Context!8834))

(assert (=> b!5347320 (= e!3319798 e!3319799)))

(declare-fun c!930722 () Bool)

(assert (=> b!5347320 (= c!930722 ((_ is Cons!61274) (exprs!4917 lt!2179971)))))

(declare-fun b!5347321 () Bool)

(assert (=> b!5347321 (= e!3319799 ((as const (Array Context!8834 Bool)) false))))

(declare-fun b!5347322 () Bool)

(assert (=> b!5347322 (= e!3319799 call!382250)))

(declare-fun b!5347323 () Bool)

(assert (=> b!5347323 (= e!3319797 (nullable!5202 (h!67722 (exprs!4917 lt!2179971))))))

(assert (= (and d!1714942 res!2268759) b!5347323))

(assert (= (and d!1714942 c!930721) b!5347319))

(assert (= (and d!1714942 (not c!930721)) b!5347320))

(assert (= (and b!5347320 c!930722) b!5347322))

(assert (= (and b!5347320 (not c!930722)) b!5347321))

(assert (= (or b!5347319 b!5347322) bm!382245))

(declare-fun m!6378858 () Bool)

(assert (=> b!5347319 m!6378858))

(declare-fun m!6378860 () Bool)

(assert (=> bm!382245 m!6378860))

(declare-fun m!6378862 () Bool)

(assert (=> b!5347323 m!6378862))

(assert (=> b!5346686 d!1714942))

(declare-fun d!1714944 () Bool)

(declare-fun c!930723 () Bool)

(declare-fun e!3319800 () Bool)

(assert (=> d!1714944 (= c!930723 e!3319800)))

(declare-fun res!2268760 () Bool)

(assert (=> d!1714944 (=> (not res!2268760) (not e!3319800))))

(assert (=> d!1714944 (= res!2268760 ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343))))))

(declare-fun e!3319801 () (InoxSet Context!8834))

(assert (=> d!1714944 (= (derivationStepZipperUp!405 (h!67723 zl!343) (h!67724 s!2326)) e!3319801)))

(declare-fun call!382251 () (InoxSet Context!8834))

(declare-fun b!5347324 () Bool)

(assert (=> b!5347324 (= e!3319801 ((_ map or) call!382251 (derivationStepZipperUp!405 (Context!8835 (t!374615 (exprs!4917 (h!67723 zl!343)))) (h!67724 s!2326))))))

(declare-fun bm!382246 () Bool)

(assert (=> bm!382246 (= call!382251 (derivationStepZipperDown!481 (h!67722 (exprs!4917 (h!67723 zl!343))) (Context!8835 (t!374615 (exprs!4917 (h!67723 zl!343)))) (h!67724 s!2326)))))

(declare-fun b!5347325 () Bool)

(declare-fun e!3319802 () (InoxSet Context!8834))

(assert (=> b!5347325 (= e!3319801 e!3319802)))

(declare-fun c!930724 () Bool)

(assert (=> b!5347325 (= c!930724 ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343))))))

(declare-fun b!5347326 () Bool)

(assert (=> b!5347326 (= e!3319802 ((as const (Array Context!8834 Bool)) false))))

(declare-fun b!5347327 () Bool)

(assert (=> b!5347327 (= e!3319802 call!382251)))

(declare-fun b!5347328 () Bool)

(assert (=> b!5347328 (= e!3319800 (nullable!5202 (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(assert (= (and d!1714944 res!2268760) b!5347328))

(assert (= (and d!1714944 c!930723) b!5347324))

(assert (= (and d!1714944 (not c!930723)) b!5347325))

(assert (= (and b!5347325 c!930724) b!5347327))

(assert (= (and b!5347325 (not c!930724)) b!5347326))

(assert (= (or b!5347324 b!5347327) bm!382246))

(declare-fun m!6378864 () Bool)

(assert (=> b!5347324 m!6378864))

(declare-fun m!6378866 () Bool)

(assert (=> bm!382246 m!6378866))

(assert (=> b!5347328 m!6378308))

(assert (=> b!5346686 d!1714944))

(declare-fun c!930729 () Bool)

(declare-fun bm!382247 () Bool)

(declare-fun call!382253 () List!61398)

(declare-fun c!930726 () Bool)

(assert (=> bm!382247 (= call!382253 ($colon$colon!1423 (exprs!4917 lt!2179971) (ite (or c!930726 c!930729) (regTwo!30578 (h!67722 (exprs!4917 (h!67723 zl!343)))) (h!67722 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5347329 () Bool)

(declare-fun e!3319807 () Bool)

(assert (=> b!5347329 (= e!3319807 (nullable!5202 (regOne!30578 (h!67722 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5347330 () Bool)

(declare-fun e!3319805 () (InoxSet Context!8834))

(assert (=> b!5347330 (= e!3319805 (store ((as const (Array Context!8834 Bool)) false) lt!2179971 true))))

(declare-fun bm!382248 () Bool)

(declare-fun call!382252 () (InoxSet Context!8834))

(declare-fun call!382255 () (InoxSet Context!8834))

(assert (=> bm!382248 (= call!382252 call!382255)))

(declare-fun b!5347331 () Bool)

(declare-fun e!3319806 () (InoxSet Context!8834))

(assert (=> b!5347331 (= e!3319805 e!3319806)))

(declare-fun c!930728 () Bool)

(assert (=> b!5347331 (= c!930728 ((_ is Union!15033) (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun bm!382249 () Bool)

(declare-fun call!382256 () (InoxSet Context!8834))

(assert (=> bm!382249 (= call!382256 (derivationStepZipperDown!481 (ite c!930728 (regOne!30579 (h!67722 (exprs!4917 (h!67723 zl!343)))) (regOne!30578 (h!67722 (exprs!4917 (h!67723 zl!343))))) (ite c!930728 lt!2179971 (Context!8835 call!382253)) (h!67724 s!2326)))))

(declare-fun b!5347332 () Bool)

(declare-fun e!3319804 () (InoxSet Context!8834))

(assert (=> b!5347332 (= e!3319804 ((_ map or) call!382256 call!382255))))

(declare-fun bm!382250 () Bool)

(declare-fun call!382257 () (InoxSet Context!8834))

(assert (=> bm!382250 (= call!382255 call!382257)))

(declare-fun d!1714946 () Bool)

(declare-fun c!930725 () Bool)

(assert (=> d!1714946 (= c!930725 (and ((_ is ElementMatch!15033) (h!67722 (exprs!4917 (h!67723 zl!343)))) (= (c!930519 (h!67722 (exprs!4917 (h!67723 zl!343)))) (h!67724 s!2326))))))

(assert (=> d!1714946 (= (derivationStepZipperDown!481 (h!67722 (exprs!4917 (h!67723 zl!343))) lt!2179971 (h!67724 s!2326)) e!3319805)))

(declare-fun b!5347333 () Bool)

(declare-fun e!3319808 () (InoxSet Context!8834))

(assert (=> b!5347333 (= e!3319808 call!382252)))

(declare-fun b!5347334 () Bool)

(declare-fun e!3319803 () (InoxSet Context!8834))

(assert (=> b!5347334 (= e!3319803 call!382252)))

(declare-fun bm!382251 () Bool)

(declare-fun call!382254 () List!61398)

(assert (=> bm!382251 (= call!382254 call!382253)))

(declare-fun b!5347335 () Bool)

(declare-fun c!930727 () Bool)

(assert (=> b!5347335 (= c!930727 ((_ is Star!15033) (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> b!5347335 (= e!3319808 e!3319803)))

(declare-fun b!5347336 () Bool)

(assert (=> b!5347336 (= e!3319804 e!3319808)))

(assert (=> b!5347336 (= c!930729 ((_ is Concat!23878) (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5347337 () Bool)

(assert (=> b!5347337 (= c!930726 e!3319807)))

(declare-fun res!2268761 () Bool)

(assert (=> b!5347337 (=> (not res!2268761) (not e!3319807))))

(assert (=> b!5347337 (= res!2268761 ((_ is Concat!23878) (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> b!5347337 (= e!3319806 e!3319804)))

(declare-fun bm!382252 () Bool)

(assert (=> bm!382252 (= call!382257 (derivationStepZipperDown!481 (ite c!930728 (regTwo!30579 (h!67722 (exprs!4917 (h!67723 zl!343)))) (ite c!930726 (regTwo!30578 (h!67722 (exprs!4917 (h!67723 zl!343)))) (ite c!930729 (regOne!30578 (h!67722 (exprs!4917 (h!67723 zl!343)))) (reg!15362 (h!67722 (exprs!4917 (h!67723 zl!343))))))) (ite (or c!930728 c!930726) lt!2179971 (Context!8835 call!382254)) (h!67724 s!2326)))))

(declare-fun b!5347338 () Bool)

(assert (=> b!5347338 (= e!3319803 ((as const (Array Context!8834 Bool)) false))))

(declare-fun b!5347339 () Bool)

(assert (=> b!5347339 (= e!3319806 ((_ map or) call!382256 call!382257))))

(assert (= (and d!1714946 c!930725) b!5347330))

(assert (= (and d!1714946 (not c!930725)) b!5347331))

(assert (= (and b!5347331 c!930728) b!5347339))

(assert (= (and b!5347331 (not c!930728)) b!5347337))

(assert (= (and b!5347337 res!2268761) b!5347329))

(assert (= (and b!5347337 c!930726) b!5347332))

(assert (= (and b!5347337 (not c!930726)) b!5347336))

(assert (= (and b!5347336 c!930729) b!5347333))

(assert (= (and b!5347336 (not c!930729)) b!5347335))

(assert (= (and b!5347335 c!930727) b!5347334))

(assert (= (and b!5347335 (not c!930727)) b!5347338))

(assert (= (or b!5347333 b!5347334) bm!382251))

(assert (= (or b!5347333 b!5347334) bm!382248))

(assert (= (or b!5347332 bm!382251) bm!382247))

(assert (= (or b!5347332 bm!382248) bm!382250))

(assert (= (or b!5347339 bm!382250) bm!382252))

(assert (= (or b!5347339 b!5347332) bm!382249))

(declare-fun m!6378868 () Bool)

(assert (=> bm!382247 m!6378868))

(declare-fun m!6378870 () Bool)

(assert (=> b!5347329 m!6378870))

(declare-fun m!6378872 () Bool)

(assert (=> b!5347330 m!6378872))

(declare-fun m!6378874 () Bool)

(assert (=> bm!382249 m!6378874))

(declare-fun m!6378876 () Bool)

(assert (=> bm!382252 m!6378876))

(assert (=> b!5346686 d!1714946))

(declare-fun d!1714948 () Bool)

(assert (=> d!1714948 (= (flatMap!760 z!1189 lambda!274572) (choose!40097 z!1189 lambda!274572))))

(declare-fun bs!1239660 () Bool)

(assert (= bs!1239660 d!1714948))

(declare-fun m!6378878 () Bool)

(assert (=> bs!1239660 m!6378878))

(assert (=> b!5346686 d!1714948))

(declare-fun d!1714950 () Bool)

(declare-fun nullableFct!1526 (Regex!15033) Bool)

(assert (=> d!1714950 (= (nullable!5202 (h!67722 (exprs!4917 (h!67723 zl!343)))) (nullableFct!1526 (h!67722 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun bs!1239661 () Bool)

(assert (= bs!1239661 d!1714950))

(declare-fun m!6378880 () Bool)

(assert (=> bs!1239661 m!6378880))

(assert (=> b!5346686 d!1714950))

(declare-fun d!1714952 () Bool)

(assert (=> d!1714952 (= (flatMap!760 z!1189 lambda!274572) (dynLambda!24221 lambda!274572 (h!67723 zl!343)))))

(declare-fun lt!2180085 () Unit!153650)

(assert (=> d!1714952 (= lt!2180085 (choose!40099 z!1189 (h!67723 zl!343) lambda!274572))))

(assert (=> d!1714952 (= z!1189 (store ((as const (Array Context!8834 Bool)) false) (h!67723 zl!343) true))))

(assert (=> d!1714952 (= (lemmaFlatMapOnSingletonSet!292 z!1189 (h!67723 zl!343) lambda!274572) lt!2180085)))

(declare-fun b_lambda!205275 () Bool)

(assert (=> (not b_lambda!205275) (not d!1714952)))

(declare-fun bs!1239662 () Bool)

(assert (= bs!1239662 d!1714952))

(assert (=> bs!1239662 m!6378310))

(declare-fun m!6378882 () Bool)

(assert (=> bs!1239662 m!6378882))

(declare-fun m!6378884 () Bool)

(assert (=> bs!1239662 m!6378884))

(declare-fun m!6378886 () Bool)

(assert (=> bs!1239662 m!6378886))

(assert (=> b!5346686 d!1714952))

(declare-fun d!1714954 () Bool)

(assert (=> d!1714954 (= (Exists!2214 lambda!274576) (choose!40091 lambda!274576))))

(declare-fun bs!1239663 () Bool)

(assert (= bs!1239663 d!1714954))

(declare-fun m!6378888 () Bool)

(assert (=> bs!1239663 m!6378888))

(assert (=> b!5346687 d!1714954))

(declare-fun bs!1239664 () Bool)

(declare-fun b!5347340 () Bool)

(assert (= bs!1239664 (and b!5347340 d!1714844)))

(declare-fun lambda!274643 () Int)

(assert (=> bs!1239664 (not (= lambda!274643 lambda!274594))))

(declare-fun bs!1239665 () Bool)

(assert (= bs!1239665 (and b!5347340 b!5347254)))

(assert (=> bs!1239665 (= (and (= (reg!15362 lt!2179983) (reg!15362 r!7292)) (= lt!2179983 r!7292)) (= lambda!274643 lambda!274640))))

(declare-fun bs!1239666 () Bool)

(assert (= bs!1239666 (and b!5347340 b!5346687)))

(assert (=> bs!1239666 (not (= lambda!274643 lambda!274576))))

(assert (=> bs!1239666 (not (= lambda!274643 lambda!274575))))

(assert (=> bs!1239666 (not (= lambda!274643 lambda!274574))))

(declare-fun bs!1239667 () Bool)

(assert (= bs!1239667 (and b!5347340 d!1714840)))

(assert (=> bs!1239667 (not (= lambda!274643 lambda!274589))))

(assert (=> bs!1239664 (not (= lambda!274643 lambda!274595))))

(declare-fun bs!1239668 () Bool)

(assert (= bs!1239668 (and b!5347340 b!5346698)))

(assert (=> bs!1239668 (not (= lambda!274643 lambda!274570))))

(assert (=> bs!1239668 (not (= lambda!274643 lambda!274571))))

(assert (=> bs!1239666 (not (= lambda!274643 lambda!274573))))

(declare-fun bs!1239669 () Bool)

(assert (= bs!1239669 (and b!5347340 b!5347264)))

(assert (=> bs!1239669 (not (= lambda!274643 lambda!274642))))

(assert (=> b!5347340 true))

(assert (=> b!5347340 true))

(declare-fun bs!1239670 () Bool)

(declare-fun b!5347350 () Bool)

(assert (= bs!1239670 (and b!5347350 d!1714844)))

(declare-fun lambda!274648 () Int)

(assert (=> bs!1239670 (not (= lambda!274648 lambda!274594))))

(declare-fun bs!1239671 () Bool)

(assert (= bs!1239671 (and b!5347350 b!5347254)))

(assert (=> bs!1239671 (not (= lambda!274648 lambda!274640))))

(declare-fun bs!1239672 () Bool)

(assert (= bs!1239672 (and b!5347350 b!5346687)))

(assert (=> bs!1239672 (= (and (= (regOne!30578 lt!2179983) (regTwo!30578 (regOne!30578 r!7292))) (= (regTwo!30578 lt!2179983) lt!2179958)) (= lambda!274648 lambda!274576))))

(assert (=> bs!1239672 (not (= lambda!274648 lambda!274575))))

(declare-fun bs!1239673 () Bool)

(assert (= bs!1239673 (and b!5347350 b!5347340)))

(assert (=> bs!1239673 (not (= lambda!274648 lambda!274643))))

(assert (=> bs!1239672 (= (and (= (regOne!30578 lt!2179983) (regOne!30578 (regOne!30578 r!7292))) (= (regTwo!30578 lt!2179983) lt!2179983)) (= lambda!274648 lambda!274574))))

(declare-fun bs!1239674 () Bool)

(assert (= bs!1239674 (and b!5347350 d!1714840)))

(assert (=> bs!1239674 (not (= lambda!274648 lambda!274589))))

(assert (=> bs!1239670 (= (and (= (regOne!30578 lt!2179983) (regOne!30578 r!7292)) (= (regTwo!30578 lt!2179983) (regTwo!30578 r!7292))) (= lambda!274648 lambda!274595))))

(declare-fun bs!1239675 () Bool)

(assert (= bs!1239675 (and b!5347350 b!5346698)))

(assert (=> bs!1239675 (not (= lambda!274648 lambda!274570))))

(assert (=> bs!1239675 (= (and (= (regOne!30578 lt!2179983) (regOne!30578 r!7292)) (= (regTwo!30578 lt!2179983) (regTwo!30578 r!7292))) (= lambda!274648 lambda!274571))))

(assert (=> bs!1239672 (not (= lambda!274648 lambda!274573))))

(declare-fun bs!1239676 () Bool)

(assert (= bs!1239676 (and b!5347350 b!5347264)))

(assert (=> bs!1239676 (= (and (= (regOne!30578 lt!2179983) (regOne!30578 r!7292)) (= (regTwo!30578 lt!2179983) (regTwo!30578 r!7292))) (= lambda!274648 lambda!274642))))

(assert (=> b!5347350 true))

(assert (=> b!5347350 true))

(declare-fun e!3319811 () Bool)

(declare-fun call!382258 () Bool)

(assert (=> b!5347340 (= e!3319811 call!382258)))

(declare-fun b!5347341 () Bool)

(declare-fun e!3319812 () Bool)

(assert (=> b!5347341 (= e!3319812 (= s!2326 (Cons!61276 (c!930519 lt!2179983) Nil!61276)))))

(declare-fun b!5347342 () Bool)

(declare-fun e!3319814 () Bool)

(declare-fun e!3319809 () Bool)

(assert (=> b!5347342 (= e!3319814 e!3319809)))

(declare-fun res!2268764 () Bool)

(assert (=> b!5347342 (= res!2268764 (matchRSpec!2136 (regOne!30579 lt!2179983) s!2326))))

(assert (=> b!5347342 (=> res!2268764 e!3319809)))

(declare-fun bm!382253 () Bool)

(declare-fun call!382259 () Bool)

(assert (=> bm!382253 (= call!382259 (isEmpty!33249 s!2326))))

(declare-fun b!5347343 () Bool)

(declare-fun c!930731 () Bool)

(assert (=> b!5347343 (= c!930731 ((_ is ElementMatch!15033) lt!2179983))))

(declare-fun e!3319813 () Bool)

(assert (=> b!5347343 (= e!3319813 e!3319812)))

(declare-fun b!5347344 () Bool)

(assert (=> b!5347344 (= e!3319809 (matchRSpec!2136 (regTwo!30579 lt!2179983) s!2326))))

(declare-fun b!5347345 () Bool)

(declare-fun res!2268762 () Bool)

(assert (=> b!5347345 (=> res!2268762 e!3319811)))

(assert (=> b!5347345 (= res!2268762 call!382259)))

(declare-fun e!3319815 () Bool)

(assert (=> b!5347345 (= e!3319815 e!3319811)))

(declare-fun b!5347346 () Bool)

(assert (=> b!5347346 (= e!3319814 e!3319815)))

(declare-fun c!930730 () Bool)

(assert (=> b!5347346 (= c!930730 ((_ is Star!15033) lt!2179983))))

(declare-fun bm!382254 () Bool)

(assert (=> bm!382254 (= call!382258 (Exists!2214 (ite c!930730 lambda!274643 lambda!274648)))))

(declare-fun b!5347348 () Bool)

(declare-fun e!3319810 () Bool)

(assert (=> b!5347348 (= e!3319810 call!382259)))

(declare-fun b!5347347 () Bool)

(declare-fun c!930732 () Bool)

(assert (=> b!5347347 (= c!930732 ((_ is Union!15033) lt!2179983))))

(assert (=> b!5347347 (= e!3319812 e!3319814)))

(declare-fun d!1714956 () Bool)

(declare-fun c!930733 () Bool)

(assert (=> d!1714956 (= c!930733 ((_ is EmptyExpr!15033) lt!2179983))))

(assert (=> d!1714956 (= (matchRSpec!2136 lt!2179983 s!2326) e!3319810)))

(declare-fun b!5347349 () Bool)

(assert (=> b!5347349 (= e!3319810 e!3319813)))

(declare-fun res!2268763 () Bool)

(assert (=> b!5347349 (= res!2268763 (not ((_ is EmptyLang!15033) lt!2179983)))))

(assert (=> b!5347349 (=> (not res!2268763) (not e!3319813))))

(assert (=> b!5347350 (= e!3319815 call!382258)))

(assert (= (and d!1714956 c!930733) b!5347348))

(assert (= (and d!1714956 (not c!930733)) b!5347349))

(assert (= (and b!5347349 res!2268763) b!5347343))

(assert (= (and b!5347343 c!930731) b!5347341))

(assert (= (and b!5347343 (not c!930731)) b!5347347))

(assert (= (and b!5347347 c!930732) b!5347342))

(assert (= (and b!5347347 (not c!930732)) b!5347346))

(assert (= (and b!5347342 (not res!2268764)) b!5347344))

(assert (= (and b!5347346 c!930730) b!5347345))

(assert (= (and b!5347346 (not c!930730)) b!5347350))

(assert (= (and b!5347345 (not res!2268762)) b!5347340))

(assert (= (or b!5347340 b!5347350) bm!382254))

(assert (= (or b!5347348 b!5347345) bm!382253))

(declare-fun m!6378890 () Bool)

(assert (=> b!5347342 m!6378890))

(assert (=> bm!382253 m!6378740))

(declare-fun m!6378892 () Bool)

(assert (=> b!5347344 m!6378892))

(declare-fun m!6378894 () Bool)

(assert (=> bm!382254 m!6378894))

(assert (=> b!5346687 d!1714956))

(declare-fun bs!1239677 () Bool)

(declare-fun d!1714958 () Bool)

(assert (= bs!1239677 (and d!1714958 b!5346671)))

(declare-fun lambda!274651 () Int)

(assert (=> bs!1239677 (= lambda!274651 lambda!274577)))

(declare-fun bs!1239678 () Bool)

(assert (= bs!1239678 (and d!1714958 d!1714860)))

(assert (=> bs!1239678 (= lambda!274651 lambda!274598)))

(declare-fun bs!1239679 () Bool)

(assert (= bs!1239679 (and d!1714958 d!1714914)))

(assert (=> bs!1239679 (= lambda!274651 lambda!274632)))

(declare-fun bs!1239680 () Bool)

(assert (= bs!1239680 (and d!1714958 d!1714916)))

(assert (=> bs!1239680 (= lambda!274651 lambda!274633)))

(declare-fun b!5347357 () Bool)

(declare-fun e!3319821 () Regex!15033)

(assert (=> b!5347357 (= e!3319821 (h!67722 (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5347358 () Bool)

(declare-fun e!3319825 () Bool)

(declare-fun e!3319823 () Bool)

(assert (=> b!5347358 (= e!3319825 e!3319823)))

(declare-fun c!930744 () Bool)

(assert (=> b!5347358 (= c!930744 (isEmpty!33248 (tail!10564 (t!374615 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5347359 () Bool)

(declare-fun e!3319822 () Bool)

(assert (=> b!5347359 (= e!3319822 (isEmpty!33248 (t!374615 (t!374615 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5347360 () Bool)

(declare-fun e!3319824 () Regex!15033)

(assert (=> b!5347360 (= e!3319824 EmptyExpr!15033)))

(declare-fun b!5347361 () Bool)

(declare-fun lt!2180094 () Regex!15033)

(assert (=> b!5347361 (= e!3319823 (isConcat!431 lt!2180094))))

(declare-fun b!5347362 () Bool)

(assert (=> b!5347362 (= e!3319825 (isEmptyExpr!908 lt!2180094))))

(declare-fun b!5347363 () Bool)

(declare-fun e!3319820 () Bool)

(assert (=> b!5347363 (= e!3319820 e!3319825)))

(declare-fun c!930742 () Bool)

(assert (=> b!5347363 (= c!930742 (isEmpty!33248 (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5347364 () Bool)

(assert (=> b!5347364 (= e!3319824 (Concat!23878 (h!67722 (t!374615 (exprs!4917 (h!67723 zl!343)))) (generalisedConcat!702 (t!374615 (t!374615 (exprs!4917 (h!67723 zl!343)))))))))

(declare-fun b!5347365 () Bool)

(assert (=> b!5347365 (= e!3319821 e!3319824)))

(declare-fun c!930743 () Bool)

(assert (=> b!5347365 (= c!930743 ((_ is Cons!61274) (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(declare-fun b!5347366 () Bool)

(assert (=> b!5347366 (= e!3319823 (= lt!2180094 (head!11467 (t!374615 (exprs!4917 (h!67723 zl!343))))))))

(assert (=> d!1714958 e!3319820))

(declare-fun res!2268767 () Bool)

(assert (=> d!1714958 (=> (not res!2268767) (not e!3319820))))

(assert (=> d!1714958 (= res!2268767 (validRegex!6769 lt!2180094))))

(assert (=> d!1714958 (= lt!2180094 e!3319821)))

(declare-fun c!930745 () Bool)

(assert (=> d!1714958 (= c!930745 e!3319822)))

(declare-fun res!2268768 () Bool)

(assert (=> d!1714958 (=> (not res!2268768) (not e!3319822))))

(assert (=> d!1714958 (= res!2268768 ((_ is Cons!61274) (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> d!1714958 (forall!14455 (t!374615 (exprs!4917 (h!67723 zl!343))) lambda!274651)))

(assert (=> d!1714958 (= (generalisedConcat!702 (t!374615 (exprs!4917 (h!67723 zl!343)))) lt!2180094)))

(assert (= (and d!1714958 res!2268768) b!5347359))

(assert (= (and d!1714958 c!930745) b!5347357))

(assert (= (and d!1714958 (not c!930745)) b!5347365))

(assert (= (and b!5347365 c!930743) b!5347364))

(assert (= (and b!5347365 (not c!930743)) b!5347360))

(assert (= (and d!1714958 res!2268767) b!5347363))

(assert (= (and b!5347363 c!930742) b!5347362))

(assert (= (and b!5347363 (not c!930742)) b!5347358))

(assert (= (and b!5347358 c!930744) b!5347366))

(assert (= (and b!5347358 (not c!930744)) b!5347361))

(declare-fun m!6378896 () Bool)

(assert (=> b!5347358 m!6378896))

(assert (=> b!5347358 m!6378896))

(declare-fun m!6378898 () Bool)

(assert (=> b!5347358 m!6378898))

(declare-fun m!6378900 () Bool)

(assert (=> b!5347364 m!6378900))

(declare-fun m!6378902 () Bool)

(assert (=> b!5347366 m!6378902))

(declare-fun m!6378904 () Bool)

(assert (=> b!5347361 m!6378904))

(declare-fun m!6378906 () Bool)

(assert (=> d!1714958 m!6378906))

(declare-fun m!6378908 () Bool)

(assert (=> d!1714958 m!6378908))

(declare-fun m!6378910 () Bool)

(assert (=> b!5347362 m!6378910))

(assert (=> b!5347363 m!6378348))

(declare-fun m!6378912 () Bool)

(assert (=> b!5347359 m!6378912))

(assert (=> b!5346687 d!1714958))

(declare-fun bs!1239683 () Bool)

(declare-fun b!5347372 () Bool)

(assert (= bs!1239683 (and b!5347372 d!1714844)))

(declare-fun lambda!274656 () Int)

(assert (=> bs!1239683 (not (= lambda!274656 lambda!274594))))

(declare-fun bs!1239685 () Bool)

(assert (= bs!1239685 (and b!5347372 b!5347254)))

(assert (=> bs!1239685 (= (and (= (reg!15362 lt!2179957) (reg!15362 r!7292)) (= lt!2179957 r!7292)) (= lambda!274656 lambda!274640))))

(declare-fun bs!1239686 () Bool)

(assert (= bs!1239686 (and b!5347372 b!5346687)))

(assert (=> bs!1239686 (not (= lambda!274656 lambda!274576))))

(assert (=> bs!1239686 (not (= lambda!274656 lambda!274575))))

(declare-fun bs!1239690 () Bool)

(assert (= bs!1239690 (and b!5347372 b!5347350)))

(assert (=> bs!1239690 (not (= lambda!274656 lambda!274648))))

(declare-fun bs!1239691 () Bool)

(assert (= bs!1239691 (and b!5347372 b!5347340)))

(assert (=> bs!1239691 (= (and (= (reg!15362 lt!2179957) (reg!15362 lt!2179983)) (= lt!2179957 lt!2179983)) (= lambda!274656 lambda!274643))))

(assert (=> bs!1239686 (not (= lambda!274656 lambda!274574))))

(declare-fun bs!1239692 () Bool)

(assert (= bs!1239692 (and b!5347372 d!1714840)))

(assert (=> bs!1239692 (not (= lambda!274656 lambda!274589))))

(assert (=> bs!1239683 (not (= lambda!274656 lambda!274595))))

(declare-fun bs!1239693 () Bool)

(assert (= bs!1239693 (and b!5347372 b!5346698)))

(assert (=> bs!1239693 (not (= lambda!274656 lambda!274570))))

(assert (=> bs!1239693 (not (= lambda!274656 lambda!274571))))

(assert (=> bs!1239686 (not (= lambda!274656 lambda!274573))))

(declare-fun bs!1239694 () Bool)

(assert (= bs!1239694 (and b!5347372 b!5347264)))

(assert (=> bs!1239694 (not (= lambda!274656 lambda!274642))))

(assert (=> b!5347372 true))

(assert (=> b!5347372 true))

(declare-fun bs!1239695 () Bool)

(declare-fun b!5347382 () Bool)

(assert (= bs!1239695 (and b!5347382 b!5347372)))

(declare-fun lambda!274659 () Int)

(assert (=> bs!1239695 (not (= lambda!274659 lambda!274656))))

(declare-fun bs!1239696 () Bool)

(assert (= bs!1239696 (and b!5347382 d!1714844)))

(assert (=> bs!1239696 (not (= lambda!274659 lambda!274594))))

(declare-fun bs!1239697 () Bool)

(assert (= bs!1239697 (and b!5347382 b!5347254)))

(assert (=> bs!1239697 (not (= lambda!274659 lambda!274640))))

(declare-fun bs!1239698 () Bool)

(assert (= bs!1239698 (and b!5347382 b!5346687)))

(assert (=> bs!1239698 (= (and (= (regOne!30578 lt!2179957) (regTwo!30578 (regOne!30578 r!7292))) (= (regTwo!30578 lt!2179957) lt!2179958)) (= lambda!274659 lambda!274576))))

(assert (=> bs!1239698 (not (= lambda!274659 lambda!274575))))

(declare-fun bs!1239699 () Bool)

(assert (= bs!1239699 (and b!5347382 b!5347350)))

(assert (=> bs!1239699 (= (and (= (regOne!30578 lt!2179957) (regOne!30578 lt!2179983)) (= (regTwo!30578 lt!2179957) (regTwo!30578 lt!2179983))) (= lambda!274659 lambda!274648))))

(declare-fun bs!1239700 () Bool)

(assert (= bs!1239700 (and b!5347382 b!5347340)))

(assert (=> bs!1239700 (not (= lambda!274659 lambda!274643))))

(assert (=> bs!1239698 (= (and (= (regOne!30578 lt!2179957) (regOne!30578 (regOne!30578 r!7292))) (= (regTwo!30578 lt!2179957) lt!2179983)) (= lambda!274659 lambda!274574))))

(declare-fun bs!1239701 () Bool)

(assert (= bs!1239701 (and b!5347382 d!1714840)))

(assert (=> bs!1239701 (not (= lambda!274659 lambda!274589))))

(assert (=> bs!1239696 (= (and (= (regOne!30578 lt!2179957) (regOne!30578 r!7292)) (= (regTwo!30578 lt!2179957) (regTwo!30578 r!7292))) (= lambda!274659 lambda!274595))))

(declare-fun bs!1239702 () Bool)

(assert (= bs!1239702 (and b!5347382 b!5346698)))

(assert (=> bs!1239702 (not (= lambda!274659 lambda!274570))))

(assert (=> bs!1239702 (= (and (= (regOne!30578 lt!2179957) (regOne!30578 r!7292)) (= (regTwo!30578 lt!2179957) (regTwo!30578 r!7292))) (= lambda!274659 lambda!274571))))

(assert (=> bs!1239698 (not (= lambda!274659 lambda!274573))))

(declare-fun bs!1239703 () Bool)

(assert (= bs!1239703 (and b!5347382 b!5347264)))

(assert (=> bs!1239703 (= (and (= (regOne!30578 lt!2179957) (regOne!30578 r!7292)) (= (regTwo!30578 lt!2179957) (regTwo!30578 r!7292))) (= lambda!274659 lambda!274642))))

(assert (=> b!5347382 true))

(assert (=> b!5347382 true))

(declare-fun e!3319830 () Bool)

(declare-fun call!382260 () Bool)

(assert (=> b!5347372 (= e!3319830 call!382260)))

(declare-fun b!5347373 () Bool)

(declare-fun e!3319831 () Bool)

(assert (=> b!5347373 (= e!3319831 (= s!2326 (Cons!61276 (c!930519 lt!2179957) Nil!61276)))))

(declare-fun b!5347374 () Bool)

(declare-fun e!3319833 () Bool)

(declare-fun e!3319828 () Bool)

(assert (=> b!5347374 (= e!3319833 e!3319828)))

(declare-fun res!2268772 () Bool)

(assert (=> b!5347374 (= res!2268772 (matchRSpec!2136 (regOne!30579 lt!2179957) s!2326))))

(assert (=> b!5347374 (=> res!2268772 e!3319828)))

(declare-fun bm!382255 () Bool)

(declare-fun call!382261 () Bool)

(assert (=> bm!382255 (= call!382261 (isEmpty!33249 s!2326))))

(declare-fun b!5347375 () Bool)

(declare-fun c!930748 () Bool)

(assert (=> b!5347375 (= c!930748 ((_ is ElementMatch!15033) lt!2179957))))

(declare-fun e!3319832 () Bool)

(assert (=> b!5347375 (= e!3319832 e!3319831)))

(declare-fun b!5347376 () Bool)

(assert (=> b!5347376 (= e!3319828 (matchRSpec!2136 (regTwo!30579 lt!2179957) s!2326))))

(declare-fun b!5347377 () Bool)

(declare-fun res!2268770 () Bool)

(assert (=> b!5347377 (=> res!2268770 e!3319830)))

(assert (=> b!5347377 (= res!2268770 call!382261)))

(declare-fun e!3319834 () Bool)

(assert (=> b!5347377 (= e!3319834 e!3319830)))

(declare-fun b!5347378 () Bool)

(assert (=> b!5347378 (= e!3319833 e!3319834)))

(declare-fun c!930747 () Bool)

(assert (=> b!5347378 (= c!930747 ((_ is Star!15033) lt!2179957))))

(declare-fun bm!382256 () Bool)

(assert (=> bm!382256 (= call!382260 (Exists!2214 (ite c!930747 lambda!274656 lambda!274659)))))

(declare-fun b!5347380 () Bool)

(declare-fun e!3319829 () Bool)

(assert (=> b!5347380 (= e!3319829 call!382261)))

(declare-fun b!5347379 () Bool)

(declare-fun c!930749 () Bool)

(assert (=> b!5347379 (= c!930749 ((_ is Union!15033) lt!2179957))))

(assert (=> b!5347379 (= e!3319831 e!3319833)))

(declare-fun d!1714960 () Bool)

(declare-fun c!930750 () Bool)

(assert (=> d!1714960 (= c!930750 ((_ is EmptyExpr!15033) lt!2179957))))

(assert (=> d!1714960 (= (matchRSpec!2136 lt!2179957 s!2326) e!3319829)))

(declare-fun b!5347381 () Bool)

(assert (=> b!5347381 (= e!3319829 e!3319832)))

(declare-fun res!2268771 () Bool)

(assert (=> b!5347381 (= res!2268771 (not ((_ is EmptyLang!15033) lt!2179957)))))

(assert (=> b!5347381 (=> (not res!2268771) (not e!3319832))))

(assert (=> b!5347382 (= e!3319834 call!382260)))

(assert (= (and d!1714960 c!930750) b!5347380))

(assert (= (and d!1714960 (not c!930750)) b!5347381))

(assert (= (and b!5347381 res!2268771) b!5347375))

(assert (= (and b!5347375 c!930748) b!5347373))

(assert (= (and b!5347375 (not c!930748)) b!5347379))

(assert (= (and b!5347379 c!930749) b!5347374))

(assert (= (and b!5347379 (not c!930749)) b!5347378))

(assert (= (and b!5347374 (not res!2268772)) b!5347376))

(assert (= (and b!5347378 c!930747) b!5347377))

(assert (= (and b!5347378 (not c!930747)) b!5347382))

(assert (= (and b!5347377 (not res!2268770)) b!5347372))

(assert (= (or b!5347372 b!5347382) bm!382256))

(assert (= (or b!5347380 b!5347377) bm!382255))

(declare-fun m!6378938 () Bool)

(assert (=> b!5347374 m!6378938))

(assert (=> bm!382255 m!6378740))

(declare-fun m!6378940 () Bool)

(assert (=> b!5347376 m!6378940))

(declare-fun m!6378944 () Bool)

(assert (=> bm!382256 m!6378944))

(assert (=> b!5346687 d!1714960))

(declare-fun bs!1239704 () Bool)

(declare-fun d!1714970 () Bool)

(assert (= bs!1239704 (and d!1714970 b!5347372)))

(declare-fun lambda!274660 () Int)

(assert (=> bs!1239704 (not (= lambda!274660 lambda!274656))))

(declare-fun bs!1239705 () Bool)

(assert (= bs!1239705 (and d!1714970 d!1714844)))

(assert (=> bs!1239705 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274660 lambda!274594))))

(declare-fun bs!1239706 () Bool)

(assert (= bs!1239706 (and d!1714970 b!5347254)))

(assert (=> bs!1239706 (not (= lambda!274660 lambda!274640))))

(declare-fun bs!1239707 () Bool)

(assert (= bs!1239707 (and d!1714970 b!5346687)))

(assert (=> bs!1239707 (not (= lambda!274660 lambda!274576))))

(assert (=> bs!1239707 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292))) (= lt!2179983 lt!2179958)) (= lambda!274660 lambda!274575))))

(declare-fun bs!1239708 () Bool)

(assert (= bs!1239708 (and d!1714970 b!5347350)))

(assert (=> bs!1239708 (not (= lambda!274660 lambda!274648))))

(declare-fun bs!1239709 () Bool)

(assert (= bs!1239709 (and d!1714970 b!5347340)))

(assert (=> bs!1239709 (not (= lambda!274660 lambda!274643))))

(assert (=> bs!1239707 (not (= lambda!274660 lambda!274574))))

(declare-fun bs!1239710 () Bool)

(assert (= bs!1239710 (and d!1714970 d!1714840)))

(assert (=> bs!1239710 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274660 lambda!274589))))

(declare-fun bs!1239711 () Bool)

(assert (= bs!1239711 (and d!1714970 b!5347382)))

(assert (=> bs!1239711 (not (= lambda!274660 lambda!274659))))

(assert (=> bs!1239705 (not (= lambda!274660 lambda!274595))))

(declare-fun bs!1239712 () Bool)

(assert (= bs!1239712 (and d!1714970 b!5346698)))

(assert (=> bs!1239712 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274660 lambda!274570))))

(assert (=> bs!1239712 (not (= lambda!274660 lambda!274571))))

(assert (=> bs!1239707 (= lambda!274660 lambda!274573)))

(declare-fun bs!1239713 () Bool)

(assert (= bs!1239713 (and d!1714970 b!5347264)))

(assert (=> bs!1239713 (not (= lambda!274660 lambda!274642))))

(assert (=> d!1714970 true))

(assert (=> d!1714970 true))

(assert (=> d!1714970 true))

(declare-fun lambda!274661 () Int)

(assert (=> bs!1239704 (not (= lambda!274661 lambda!274656))))

(assert (=> bs!1239705 (not (= lambda!274661 lambda!274594))))

(assert (=> bs!1239706 (not (= lambda!274661 lambda!274640))))

(assert (=> bs!1239707 (not (= lambda!274661 lambda!274575))))

(assert (=> bs!1239708 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 lt!2179983)) (= lt!2179983 (regTwo!30578 lt!2179983))) (= lambda!274661 lambda!274648))))

(assert (=> bs!1239709 (not (= lambda!274661 lambda!274643))))

(assert (=> bs!1239707 (= lambda!274661 lambda!274574)))

(assert (=> bs!1239710 (not (= lambda!274661 lambda!274589))))

(assert (=> bs!1239711 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 lt!2179957)) (= lt!2179983 (regTwo!30578 lt!2179957))) (= lambda!274661 lambda!274659))))

(assert (=> bs!1239705 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274661 lambda!274595))))

(assert (=> bs!1239707 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292))) (= lt!2179983 lt!2179958)) (= lambda!274661 lambda!274576))))

(declare-fun bs!1239714 () Bool)

(assert (= bs!1239714 d!1714970))

(assert (=> bs!1239714 (not (= lambda!274661 lambda!274660))))

(assert (=> bs!1239712 (not (= lambda!274661 lambda!274570))))

(assert (=> bs!1239712 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274661 lambda!274571))))

(assert (=> bs!1239707 (not (= lambda!274661 lambda!274573))))

(assert (=> bs!1239713 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274661 lambda!274642))))

(assert (=> d!1714970 true))

(assert (=> d!1714970 true))

(assert (=> d!1714970 true))

(assert (=> d!1714970 (= (Exists!2214 lambda!274660) (Exists!2214 lambda!274661))))

(declare-fun lt!2180106 () Unit!153650)

(assert (=> d!1714970 (= lt!2180106 (choose!40094 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 s!2326))))

(assert (=> d!1714970 (validRegex!6769 (regOne!30578 (regOne!30578 r!7292)))))

(assert (=> d!1714970 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!868 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 s!2326) lt!2180106)))

(declare-fun m!6378962 () Bool)

(assert (=> bs!1239714 m!6378962))

(declare-fun m!6378964 () Bool)

(assert (=> bs!1239714 m!6378964))

(declare-fun m!6378966 () Bool)

(assert (=> bs!1239714 m!6378966))

(declare-fun m!6378968 () Bool)

(assert (=> bs!1239714 m!6378968))

(assert (=> b!5346687 d!1714970))

(declare-fun b!5347409 () Bool)

(declare-fun e!3319853 () Bool)

(declare-fun lt!2180109 () Option!15144)

(assert (=> b!5347409 (= e!3319853 (not (isDefined!11847 lt!2180109)))))

(declare-fun b!5347410 () Bool)

(declare-fun e!3319857 () Option!15144)

(declare-fun e!3319856 () Option!15144)

(assert (=> b!5347410 (= e!3319857 e!3319856)))

(declare-fun c!930755 () Bool)

(assert (=> b!5347410 (= c!930755 ((_ is Nil!61276) s!2326))))

(declare-fun b!5347411 () Bool)

(assert (=> b!5347411 (= e!3319857 (Some!15143 (tuple2!64465 Nil!61276 s!2326)))))

(declare-fun b!5347412 () Bool)

(declare-fun res!2268792 () Bool)

(declare-fun e!3319855 () Bool)

(assert (=> b!5347412 (=> (not res!2268792) (not e!3319855))))

(assert (=> b!5347412 (= res!2268792 (matchR!7218 lt!2179958 (_2!35535 (get!21075 lt!2180109))))))

(declare-fun b!5347413 () Bool)

(assert (=> b!5347413 (= e!3319855 (= (++!13353 (_1!35535 (get!21075 lt!2180109)) (_2!35535 (get!21075 lt!2180109))) s!2326))))

(declare-fun b!5347414 () Bool)

(declare-fun e!3319854 () Bool)

(assert (=> b!5347414 (= e!3319854 (matchR!7218 lt!2179958 s!2326))))

(declare-fun d!1714978 () Bool)

(assert (=> d!1714978 e!3319853))

(declare-fun res!2268791 () Bool)

(assert (=> d!1714978 (=> res!2268791 e!3319853)))

(assert (=> d!1714978 (= res!2268791 e!3319855)))

(declare-fun res!2268795 () Bool)

(assert (=> d!1714978 (=> (not res!2268795) (not e!3319855))))

(assert (=> d!1714978 (= res!2268795 (isDefined!11847 lt!2180109))))

(assert (=> d!1714978 (= lt!2180109 e!3319857)))

(declare-fun c!930756 () Bool)

(assert (=> d!1714978 (= c!930756 e!3319854)))

(declare-fun res!2268793 () Bool)

(assert (=> d!1714978 (=> (not res!2268793) (not e!3319854))))

(assert (=> d!1714978 (= res!2268793 (matchR!7218 (regTwo!30578 (regOne!30578 r!7292)) Nil!61276))))

(assert (=> d!1714978 (validRegex!6769 (regTwo!30578 (regOne!30578 r!7292)))))

(assert (=> d!1714978 (= (findConcatSeparation!1558 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 Nil!61276 s!2326 s!2326) lt!2180109)))

(declare-fun b!5347415 () Bool)

(assert (=> b!5347415 (= e!3319856 None!15143)))

(declare-fun b!5347416 () Bool)

(declare-fun lt!2180108 () Unit!153650)

(declare-fun lt!2180110 () Unit!153650)

(assert (=> b!5347416 (= lt!2180108 lt!2180110)))

(assert (=> b!5347416 (= (++!13353 (++!13353 Nil!61276 (Cons!61276 (h!67724 s!2326) Nil!61276)) (t!374617 s!2326)) s!2326)))

(assert (=> b!5347416 (= lt!2180110 (lemmaMoveElementToOtherListKeepsConcatEq!1768 Nil!61276 (h!67724 s!2326) (t!374617 s!2326) s!2326))))

(assert (=> b!5347416 (= e!3319856 (findConcatSeparation!1558 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 (++!13353 Nil!61276 (Cons!61276 (h!67724 s!2326) Nil!61276)) (t!374617 s!2326) s!2326))))

(declare-fun b!5347417 () Bool)

(declare-fun res!2268794 () Bool)

(assert (=> b!5347417 (=> (not res!2268794) (not e!3319855))))

(assert (=> b!5347417 (= res!2268794 (matchR!7218 (regTwo!30578 (regOne!30578 r!7292)) (_1!35535 (get!21075 lt!2180109))))))

(assert (= (and d!1714978 res!2268793) b!5347414))

(assert (= (and d!1714978 c!930756) b!5347411))

(assert (= (and d!1714978 (not c!930756)) b!5347410))

(assert (= (and b!5347410 c!930755) b!5347415))

(assert (= (and b!5347410 (not c!930755)) b!5347416))

(assert (= (and d!1714978 res!2268795) b!5347417))

(assert (= (and b!5347417 res!2268794) b!5347412))

(assert (= (and b!5347412 res!2268792) b!5347413))

(assert (= (and d!1714978 (not res!2268791)) b!5347409))

(declare-fun m!6378970 () Bool)

(assert (=> d!1714978 m!6378970))

(declare-fun m!6378972 () Bool)

(assert (=> d!1714978 m!6378972))

(declare-fun m!6378974 () Bool)

(assert (=> d!1714978 m!6378974))

(declare-fun m!6378976 () Bool)

(assert (=> b!5347417 m!6378976))

(declare-fun m!6378978 () Bool)

(assert (=> b!5347417 m!6378978))

(assert (=> b!5347413 m!6378976))

(declare-fun m!6378980 () Bool)

(assert (=> b!5347413 m!6378980))

(assert (=> b!5347416 m!6378548))

(assert (=> b!5347416 m!6378548))

(assert (=> b!5347416 m!6378550))

(assert (=> b!5347416 m!6378552))

(assert (=> b!5347416 m!6378548))

(declare-fun m!6378982 () Bool)

(assert (=> b!5347416 m!6378982))

(assert (=> b!5347409 m!6378970))

(declare-fun m!6378984 () Bool)

(assert (=> b!5347414 m!6378984))

(assert (=> b!5347412 m!6378976))

(declare-fun m!6378986 () Bool)

(assert (=> b!5347412 m!6378986))

(assert (=> b!5346687 d!1714978))

(declare-fun bs!1239715 () Bool)

(declare-fun d!1714980 () Bool)

(assert (= bs!1239715 (and d!1714980 b!5347372)))

(declare-fun lambda!274662 () Int)

(assert (=> bs!1239715 (not (= lambda!274662 lambda!274656))))

(declare-fun bs!1239716 () Bool)

(assert (= bs!1239716 (and d!1714980 d!1714844)))

(assert (=> bs!1239716 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274662 lambda!274594))))

(declare-fun bs!1239717 () Bool)

(assert (= bs!1239717 (and d!1714980 b!5347254)))

(assert (=> bs!1239717 (not (= lambda!274662 lambda!274640))))

(declare-fun bs!1239718 () Bool)

(assert (= bs!1239718 (and d!1714980 d!1714970)))

(assert (=> bs!1239718 (not (= lambda!274662 lambda!274661))))

(declare-fun bs!1239719 () Bool)

(assert (= bs!1239719 (and d!1714980 b!5346687)))

(assert (=> bs!1239719 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292))) (= lt!2179983 lt!2179958)) (= lambda!274662 lambda!274575))))

(declare-fun bs!1239720 () Bool)

(assert (= bs!1239720 (and d!1714980 b!5347350)))

(assert (=> bs!1239720 (not (= lambda!274662 lambda!274648))))

(declare-fun bs!1239721 () Bool)

(assert (= bs!1239721 (and d!1714980 b!5347340)))

(assert (=> bs!1239721 (not (= lambda!274662 lambda!274643))))

(assert (=> bs!1239719 (not (= lambda!274662 lambda!274574))))

(declare-fun bs!1239722 () Bool)

(assert (= bs!1239722 (and d!1714980 d!1714840)))

(assert (=> bs!1239722 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274662 lambda!274589))))

(declare-fun bs!1239723 () Bool)

(assert (= bs!1239723 (and d!1714980 b!5347382)))

(assert (=> bs!1239723 (not (= lambda!274662 lambda!274659))))

(assert (=> bs!1239716 (not (= lambda!274662 lambda!274595))))

(assert (=> bs!1239719 (not (= lambda!274662 lambda!274576))))

(assert (=> bs!1239718 (= lambda!274662 lambda!274660)))

(declare-fun bs!1239725 () Bool)

(assert (= bs!1239725 (and d!1714980 b!5346698)))

(assert (=> bs!1239725 (= (and (= (regOne!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179983 (regTwo!30578 r!7292))) (= lambda!274662 lambda!274570))))

(assert (=> bs!1239725 (not (= lambda!274662 lambda!274571))))

(assert (=> bs!1239719 (= lambda!274662 lambda!274573)))

(declare-fun bs!1239726 () Bool)

(assert (= bs!1239726 (and d!1714980 b!5347264)))

(assert (=> bs!1239726 (not (= lambda!274662 lambda!274642))))

(assert (=> d!1714980 true))

(assert (=> d!1714980 true))

(assert (=> d!1714980 true))

(assert (=> d!1714980 (= (isDefined!11847 (findConcatSeparation!1558 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 Nil!61276 s!2326 s!2326)) (Exists!2214 lambda!274662))))

(declare-fun lt!2180113 () Unit!153650)

(assert (=> d!1714980 (= lt!2180113 (choose!40092 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 s!2326))))

(assert (=> d!1714980 (validRegex!6769 (regOne!30578 (regOne!30578 r!7292)))))

(assert (=> d!1714980 (= (lemmaFindConcatSeparationEquivalentToExists!1322 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 s!2326) lt!2180113)))

(declare-fun bs!1239730 () Bool)

(assert (= bs!1239730 d!1714980))

(assert (=> bs!1239730 m!6378406))

(assert (=> bs!1239730 m!6378408))

(assert (=> bs!1239730 m!6378406))

(declare-fun m!6379000 () Bool)

(assert (=> bs!1239730 m!6379000))

(declare-fun m!6379002 () Bool)

(assert (=> bs!1239730 m!6379002))

(assert (=> bs!1239730 m!6378968))

(assert (=> b!5346687 d!1714980))

(declare-fun bs!1239734 () Bool)

(declare-fun d!1714986 () Bool)

(assert (= bs!1239734 (and d!1714986 b!5347372)))

(declare-fun lambda!274664 () Int)

(assert (=> bs!1239734 (not (= lambda!274664 lambda!274656))))

(declare-fun bs!1239735 () Bool)

(assert (= bs!1239735 (and d!1714986 b!5347254)))

(assert (=> bs!1239735 (not (= lambda!274664 lambda!274640))))

(declare-fun bs!1239736 () Bool)

(assert (= bs!1239736 (and d!1714986 d!1714970)))

(assert (=> bs!1239736 (not (= lambda!274664 lambda!274661))))

(declare-fun bs!1239737 () Bool)

(assert (= bs!1239737 (and d!1714986 b!5346687)))

(assert (=> bs!1239737 (= lambda!274664 lambda!274575)))

(declare-fun bs!1239738 () Bool)

(assert (= bs!1239738 (and d!1714986 b!5347350)))

(assert (=> bs!1239738 (not (= lambda!274664 lambda!274648))))

(declare-fun bs!1239739 () Bool)

(assert (= bs!1239739 (and d!1714986 b!5347340)))

(assert (=> bs!1239739 (not (= lambda!274664 lambda!274643))))

(assert (=> bs!1239737 (not (= lambda!274664 lambda!274574))))

(declare-fun bs!1239741 () Bool)

(assert (= bs!1239741 (and d!1714986 d!1714840)))

(assert (=> bs!1239741 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274664 lambda!274589))))

(declare-fun bs!1239742 () Bool)

(assert (= bs!1239742 (and d!1714986 b!5347382)))

(assert (=> bs!1239742 (not (= lambda!274664 lambda!274659))))

(declare-fun bs!1239743 () Bool)

(assert (= bs!1239743 (and d!1714986 d!1714844)))

(assert (=> bs!1239743 (not (= lambda!274664 lambda!274595))))

(declare-fun bs!1239744 () Bool)

(assert (= bs!1239744 (and d!1714986 d!1714980)))

(assert (=> bs!1239744 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274664 lambda!274662))))

(assert (=> bs!1239743 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274664 lambda!274594))))

(assert (=> bs!1239737 (not (= lambda!274664 lambda!274576))))

(assert (=> bs!1239736 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274664 lambda!274660))))

(declare-fun bs!1239745 () Bool)

(assert (= bs!1239745 (and d!1714986 b!5346698)))

(assert (=> bs!1239745 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274664 lambda!274570))))

(assert (=> bs!1239745 (not (= lambda!274664 lambda!274571))))

(assert (=> bs!1239737 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274664 lambda!274573))))

(declare-fun bs!1239746 () Bool)

(assert (= bs!1239746 (and d!1714986 b!5347264)))

(assert (=> bs!1239746 (not (= lambda!274664 lambda!274642))))

(assert (=> d!1714986 true))

(assert (=> d!1714986 true))

(assert (=> d!1714986 true))

(assert (=> d!1714986 (= (isDefined!11847 (findConcatSeparation!1558 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 Nil!61276 s!2326 s!2326)) (Exists!2214 lambda!274664))))

(declare-fun lt!2180116 () Unit!153650)

(assert (=> d!1714986 (= lt!2180116 (choose!40092 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326))))

(assert (=> d!1714986 (validRegex!6769 (regTwo!30578 (regOne!30578 r!7292)))))

(assert (=> d!1714986 (= (lemmaFindConcatSeparationEquivalentToExists!1322 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326) lt!2180116)))

(declare-fun bs!1239747 () Bool)

(assert (= bs!1239747 d!1714986))

(assert (=> bs!1239747 m!6378394))

(assert (=> bs!1239747 m!6378396))

(assert (=> bs!1239747 m!6378394))

(declare-fun m!6379014 () Bool)

(assert (=> bs!1239747 m!6379014))

(declare-fun m!6379016 () Bool)

(assert (=> bs!1239747 m!6379016))

(assert (=> bs!1239747 m!6378974))

(assert (=> b!5346687 d!1714986))

(declare-fun b!5347426 () Bool)

(declare-fun res!2268808 () Bool)

(declare-fun e!3319868 () Bool)

(assert (=> b!5347426 (=> res!2268808 e!3319868)))

(assert (=> b!5347426 (= res!2268808 (not ((_ is ElementMatch!15033) lt!2179957)))))

(declare-fun e!3319863 () Bool)

(assert (=> b!5347426 (= e!3319863 e!3319868)))

(declare-fun b!5347427 () Bool)

(declare-fun res!2268804 () Bool)

(declare-fun e!3319867 () Bool)

(assert (=> b!5347427 (=> res!2268804 e!3319867)))

(assert (=> b!5347427 (= res!2268804 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347428 () Bool)

(declare-fun lt!2180117 () Bool)

(assert (=> b!5347428 (= e!3319863 (not lt!2180117))))

(declare-fun b!5347429 () Bool)

(declare-fun e!3319862 () Bool)

(assert (=> b!5347429 (= e!3319862 (matchR!7218 (derivativeStep!4195 lt!2179957 (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347430 () Bool)

(declare-fun e!3319864 () Bool)

(assert (=> b!5347430 (= e!3319864 e!3319867)))

(declare-fun res!2268809 () Bool)

(assert (=> b!5347430 (=> res!2268809 e!3319867)))

(declare-fun call!382263 () Bool)

(assert (=> b!5347430 (= res!2268809 call!382263)))

(declare-fun b!5347431 () Bool)

(assert (=> b!5347431 (= e!3319868 e!3319864)))

(declare-fun res!2268802 () Bool)

(assert (=> b!5347431 (=> (not res!2268802) (not e!3319864))))

(assert (=> b!5347431 (= res!2268802 (not lt!2180117))))

(declare-fun b!5347433 () Bool)

(declare-fun e!3319865 () Bool)

(assert (=> b!5347433 (= e!3319865 (= (head!11465 s!2326) (c!930519 lt!2179957)))))

(declare-fun b!5347434 () Bool)

(declare-fun e!3319866 () Bool)

(assert (=> b!5347434 (= e!3319866 e!3319863)))

(declare-fun c!930759 () Bool)

(assert (=> b!5347434 (= c!930759 ((_ is EmptyLang!15033) lt!2179957))))

(declare-fun b!5347435 () Bool)

(declare-fun res!2268805 () Bool)

(assert (=> b!5347435 (=> (not res!2268805) (not e!3319865))))

(assert (=> b!5347435 (= res!2268805 (not call!382263))))

(declare-fun b!5347436 () Bool)

(assert (=> b!5347436 (= e!3319866 (= lt!2180117 call!382263))))

(declare-fun b!5347437 () Bool)

(declare-fun res!2268803 () Bool)

(assert (=> b!5347437 (=> res!2268803 e!3319868)))

(assert (=> b!5347437 (= res!2268803 e!3319865)))

(declare-fun res!2268806 () Bool)

(assert (=> b!5347437 (=> (not res!2268806) (not e!3319865))))

(assert (=> b!5347437 (= res!2268806 lt!2180117)))

(declare-fun b!5347438 () Bool)

(assert (=> b!5347438 (= e!3319867 (not (= (head!11465 s!2326) (c!930519 lt!2179957))))))

(declare-fun b!5347432 () Bool)

(declare-fun res!2268807 () Bool)

(assert (=> b!5347432 (=> (not res!2268807) (not e!3319865))))

(assert (=> b!5347432 (= res!2268807 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1714992 () Bool)

(assert (=> d!1714992 e!3319866))

(declare-fun c!930760 () Bool)

(assert (=> d!1714992 (= c!930760 ((_ is EmptyExpr!15033) lt!2179957))))

(assert (=> d!1714992 (= lt!2180117 e!3319862)))

(declare-fun c!930758 () Bool)

(assert (=> d!1714992 (= c!930758 (isEmpty!33249 s!2326))))

(assert (=> d!1714992 (validRegex!6769 lt!2179957)))

(assert (=> d!1714992 (= (matchR!7218 lt!2179957 s!2326) lt!2180117)))

(declare-fun b!5347439 () Bool)

(assert (=> b!5347439 (= e!3319862 (nullable!5202 lt!2179957))))

(declare-fun bm!382258 () Bool)

(assert (=> bm!382258 (= call!382263 (isEmpty!33249 s!2326))))

(assert (= (and d!1714992 c!930758) b!5347439))

(assert (= (and d!1714992 (not c!930758)) b!5347429))

(assert (= (and d!1714992 c!930760) b!5347436))

(assert (= (and d!1714992 (not c!930760)) b!5347434))

(assert (= (and b!5347434 c!930759) b!5347428))

(assert (= (and b!5347434 (not c!930759)) b!5347426))

(assert (= (and b!5347426 (not res!2268808)) b!5347437))

(assert (= (and b!5347437 res!2268806) b!5347435))

(assert (= (and b!5347435 res!2268805) b!5347432))

(assert (= (and b!5347432 res!2268807) b!5347433))

(assert (= (and b!5347437 (not res!2268803)) b!5347431))

(assert (= (and b!5347431 res!2268802) b!5347430))

(assert (= (and b!5347430 (not res!2268809)) b!5347427))

(assert (= (and b!5347427 (not res!2268804)) b!5347438))

(assert (= (or b!5347436 b!5347430 b!5347435) bm!382258))

(assert (=> b!5347429 m!6378732))

(assert (=> b!5347429 m!6378732))

(declare-fun m!6379018 () Bool)

(assert (=> b!5347429 m!6379018))

(assert (=> b!5347429 m!6378736))

(assert (=> b!5347429 m!6379018))

(assert (=> b!5347429 m!6378736))

(declare-fun m!6379020 () Bool)

(assert (=> b!5347429 m!6379020))

(assert (=> bm!382258 m!6378740))

(assert (=> d!1714992 m!6378740))

(declare-fun m!6379022 () Bool)

(assert (=> d!1714992 m!6379022))

(declare-fun m!6379024 () Bool)

(assert (=> b!5347439 m!6379024))

(assert (=> b!5347433 m!6378732))

(assert (=> b!5347427 m!6378736))

(assert (=> b!5347427 m!6378736))

(assert (=> b!5347427 m!6378746))

(assert (=> b!5347438 m!6378732))

(assert (=> b!5347432 m!6378736))

(assert (=> b!5347432 m!6378736))

(assert (=> b!5347432 m!6378746))

(assert (=> b!5346687 d!1714992))

(declare-fun d!1714994 () Bool)

(declare-fun c!930761 () Bool)

(assert (=> d!1714994 (= c!930761 (isEmpty!33249 s!2326))))

(declare-fun e!3319869 () Bool)

(assert (=> d!1714994 (= (matchZipper!1277 lt!2179953 s!2326) e!3319869)))

(declare-fun b!5347440 () Bool)

(assert (=> b!5347440 (= e!3319869 (nullableZipper!1374 lt!2179953))))

(declare-fun b!5347441 () Bool)

(assert (=> b!5347441 (= e!3319869 (matchZipper!1277 (derivationStepZipper!1274 lt!2179953 (head!11465 s!2326)) (tail!10562 s!2326)))))

(assert (= (and d!1714994 c!930761) b!5347440))

(assert (= (and d!1714994 (not c!930761)) b!5347441))

(assert (=> d!1714994 m!6378740))

(declare-fun m!6379026 () Bool)

(assert (=> b!5347440 m!6379026))

(assert (=> b!5347441 m!6378732))

(assert (=> b!5347441 m!6378732))

(declare-fun m!6379028 () Bool)

(assert (=> b!5347441 m!6379028))

(assert (=> b!5347441 m!6378736))

(assert (=> b!5347441 m!6379028))

(assert (=> b!5347441 m!6378736))

(declare-fun m!6379030 () Bool)

(assert (=> b!5347441 m!6379030))

(assert (=> b!5346687 d!1714994))

(declare-fun d!1714996 () Bool)

(assert (=> d!1714996 (= (Exists!2214 lambda!274573) (choose!40091 lambda!274573))))

(declare-fun bs!1239748 () Bool)

(assert (= bs!1239748 d!1714996))

(declare-fun m!6379032 () Bool)

(assert (=> bs!1239748 m!6379032))

(assert (=> b!5346687 d!1714996))

(declare-fun d!1714998 () Bool)

(assert (=> d!1714998 (= (Exists!2214 lambda!274575) (choose!40091 lambda!274575))))

(declare-fun bs!1239749 () Bool)

(assert (= bs!1239749 d!1714998))

(declare-fun m!6379034 () Bool)

(assert (=> bs!1239749 m!6379034))

(assert (=> b!5346687 d!1714998))

(declare-fun d!1715000 () Bool)

(declare-fun c!930762 () Bool)

(assert (=> d!1715000 (= c!930762 (isEmpty!33249 s!2326))))

(declare-fun e!3319870 () Bool)

(assert (=> d!1715000 (= (matchZipper!1277 z!1189 s!2326) e!3319870)))

(declare-fun b!5347442 () Bool)

(assert (=> b!5347442 (= e!3319870 (nullableZipper!1374 z!1189))))

(declare-fun b!5347443 () Bool)

(assert (=> b!5347443 (= e!3319870 (matchZipper!1277 (derivationStepZipper!1274 z!1189 (head!11465 s!2326)) (tail!10562 s!2326)))))

(assert (= (and d!1715000 c!930762) b!5347442))

(assert (= (and d!1715000 (not c!930762)) b!5347443))

(assert (=> d!1715000 m!6378740))

(declare-fun m!6379036 () Bool)

(assert (=> b!5347442 m!6379036))

(assert (=> b!5347443 m!6378732))

(assert (=> b!5347443 m!6378732))

(declare-fun m!6379038 () Bool)

(assert (=> b!5347443 m!6379038))

(assert (=> b!5347443 m!6378736))

(assert (=> b!5347443 m!6379038))

(assert (=> b!5347443 m!6378736))

(declare-fun m!6379040 () Bool)

(assert (=> b!5347443 m!6379040))

(assert (=> b!5346687 d!1715000))

(declare-fun bs!1239750 () Bool)

(declare-fun d!1715002 () Bool)

(assert (= bs!1239750 (and d!1715002 d!1714916)))

(declare-fun lambda!274665 () Int)

(assert (=> bs!1239750 (= lambda!274665 lambda!274633)))

(declare-fun bs!1239751 () Bool)

(assert (= bs!1239751 (and d!1715002 b!5346671)))

(assert (=> bs!1239751 (= lambda!274665 lambda!274577)))

(declare-fun bs!1239752 () Bool)

(assert (= bs!1239752 (and d!1715002 d!1714914)))

(assert (=> bs!1239752 (= lambda!274665 lambda!274632)))

(declare-fun bs!1239753 () Bool)

(assert (= bs!1239753 (and d!1715002 d!1714958)))

(assert (=> bs!1239753 (= lambda!274665 lambda!274651)))

(declare-fun bs!1239754 () Bool)

(assert (= bs!1239754 (and d!1715002 d!1714860)))

(assert (=> bs!1239754 (= lambda!274665 lambda!274598)))

(declare-fun b!5347444 () Bool)

(declare-fun e!3319872 () Regex!15033)

(assert (=> b!5347444 (= e!3319872 (h!67722 lt!2179985))))

(declare-fun b!5347445 () Bool)

(declare-fun e!3319876 () Bool)

(declare-fun e!3319874 () Bool)

(assert (=> b!5347445 (= e!3319876 e!3319874)))

(declare-fun c!930765 () Bool)

(assert (=> b!5347445 (= c!930765 (isEmpty!33248 (tail!10564 lt!2179985)))))

(declare-fun b!5347446 () Bool)

(declare-fun e!3319873 () Bool)

(assert (=> b!5347446 (= e!3319873 (isEmpty!33248 (t!374615 lt!2179985)))))

(declare-fun b!5347447 () Bool)

(declare-fun e!3319875 () Regex!15033)

(assert (=> b!5347447 (= e!3319875 EmptyExpr!15033)))

(declare-fun b!5347448 () Bool)

(declare-fun lt!2180118 () Regex!15033)

(assert (=> b!5347448 (= e!3319874 (isConcat!431 lt!2180118))))

(declare-fun b!5347449 () Bool)

(assert (=> b!5347449 (= e!3319876 (isEmptyExpr!908 lt!2180118))))

(declare-fun b!5347450 () Bool)

(declare-fun e!3319871 () Bool)

(assert (=> b!5347450 (= e!3319871 e!3319876)))

(declare-fun c!930763 () Bool)

(assert (=> b!5347450 (= c!930763 (isEmpty!33248 lt!2179985))))

(declare-fun b!5347451 () Bool)

(assert (=> b!5347451 (= e!3319875 (Concat!23878 (h!67722 lt!2179985) (generalisedConcat!702 (t!374615 lt!2179985))))))

(declare-fun b!5347452 () Bool)

(assert (=> b!5347452 (= e!3319872 e!3319875)))

(declare-fun c!930764 () Bool)

(assert (=> b!5347452 (= c!930764 ((_ is Cons!61274) lt!2179985))))

(declare-fun b!5347453 () Bool)

(assert (=> b!5347453 (= e!3319874 (= lt!2180118 (head!11467 lt!2179985)))))

(assert (=> d!1715002 e!3319871))

(declare-fun res!2268810 () Bool)

(assert (=> d!1715002 (=> (not res!2268810) (not e!3319871))))

(assert (=> d!1715002 (= res!2268810 (validRegex!6769 lt!2180118))))

(assert (=> d!1715002 (= lt!2180118 e!3319872)))

(declare-fun c!930766 () Bool)

(assert (=> d!1715002 (= c!930766 e!3319873)))

(declare-fun res!2268811 () Bool)

(assert (=> d!1715002 (=> (not res!2268811) (not e!3319873))))

(assert (=> d!1715002 (= res!2268811 ((_ is Cons!61274) lt!2179985))))

(assert (=> d!1715002 (forall!14455 lt!2179985 lambda!274665)))

(assert (=> d!1715002 (= (generalisedConcat!702 lt!2179985) lt!2180118)))

(assert (= (and d!1715002 res!2268811) b!5347446))

(assert (= (and d!1715002 c!930766) b!5347444))

(assert (= (and d!1715002 (not c!930766)) b!5347452))

(assert (= (and b!5347452 c!930764) b!5347451))

(assert (= (and b!5347452 (not c!930764)) b!5347447))

(assert (= (and d!1715002 res!2268810) b!5347450))

(assert (= (and b!5347450 c!930763) b!5347449))

(assert (= (and b!5347450 (not c!930763)) b!5347445))

(assert (= (and b!5347445 c!930765) b!5347453))

(assert (= (and b!5347445 (not c!930765)) b!5347448))

(declare-fun m!6379042 () Bool)

(assert (=> b!5347445 m!6379042))

(assert (=> b!5347445 m!6379042))

(declare-fun m!6379044 () Bool)

(assert (=> b!5347445 m!6379044))

(declare-fun m!6379046 () Bool)

(assert (=> b!5347451 m!6379046))

(declare-fun m!6379048 () Bool)

(assert (=> b!5347453 m!6379048))

(declare-fun m!6379050 () Bool)

(assert (=> b!5347448 m!6379050))

(declare-fun m!6379052 () Bool)

(assert (=> d!1715002 m!6379052))

(declare-fun m!6379054 () Bool)

(assert (=> d!1715002 m!6379054))

(declare-fun m!6379056 () Bool)

(assert (=> b!5347449 m!6379056))

(declare-fun m!6379058 () Bool)

(assert (=> b!5347450 m!6379058))

(declare-fun m!6379060 () Bool)

(assert (=> b!5347446 m!6379060))

(assert (=> b!5346687 d!1715002))

(declare-fun d!1715004 () Bool)

(assert (=> d!1715004 (= (matchR!7218 lt!2179983 s!2326) (matchRSpec!2136 lt!2179983 s!2326))))

(declare-fun lt!2180121 () Unit!153650)

(assert (=> d!1715004 (= lt!2180121 (choose!40100 lt!2179983 s!2326))))

(assert (=> d!1715004 (validRegex!6769 lt!2179983)))

(assert (=> d!1715004 (= (mainMatchTheorem!2136 lt!2179983 s!2326) lt!2180121)))

(declare-fun bs!1239755 () Bool)

(assert (= bs!1239755 d!1715004))

(assert (=> bs!1239755 m!6378400))

(assert (=> bs!1239755 m!6378414))

(declare-fun m!6379062 () Bool)

(assert (=> bs!1239755 m!6379062))

(declare-fun m!6379064 () Bool)

(assert (=> bs!1239755 m!6379064))

(assert (=> b!5346687 d!1715004))

(declare-fun bs!1239756 () Bool)

(declare-fun d!1715006 () Bool)

(assert (= bs!1239756 (and d!1715006 d!1714916)))

(declare-fun lambda!274668 () Int)

(assert (=> bs!1239756 (= lambda!274668 lambda!274633)))

(declare-fun bs!1239757 () Bool)

(assert (= bs!1239757 (and d!1715006 b!5346671)))

(assert (=> bs!1239757 (= lambda!274668 lambda!274577)))

(declare-fun bs!1239758 () Bool)

(assert (= bs!1239758 (and d!1715006 d!1714914)))

(assert (=> bs!1239758 (= lambda!274668 lambda!274632)))

(declare-fun bs!1239759 () Bool)

(assert (= bs!1239759 (and d!1715006 d!1714958)))

(assert (=> bs!1239759 (= lambda!274668 lambda!274651)))

(declare-fun bs!1239760 () Bool)

(assert (= bs!1239760 (and d!1715006 d!1714860)))

(assert (=> bs!1239760 (= lambda!274668 lambda!274598)))

(declare-fun bs!1239761 () Bool)

(assert (= bs!1239761 (and d!1715006 d!1715002)))

(assert (=> bs!1239761 (= lambda!274668 lambda!274665)))

(declare-fun b!5347464 () Bool)

(declare-fun e!3319884 () Regex!15033)

(assert (=> b!5347464 (= e!3319884 (h!67722 lt!2179974))))

(declare-fun b!5347465 () Bool)

(declare-fun e!3319888 () Bool)

(declare-fun e!3319886 () Bool)

(assert (=> b!5347465 (= e!3319888 e!3319886)))

(declare-fun c!930773 () Bool)

(assert (=> b!5347465 (= c!930773 (isEmpty!33248 (tail!10564 lt!2179974)))))

(declare-fun b!5347466 () Bool)

(declare-fun e!3319885 () Bool)

(assert (=> b!5347466 (= e!3319885 (isEmpty!33248 (t!374615 lt!2179974)))))

(declare-fun b!5347467 () Bool)

(declare-fun e!3319887 () Regex!15033)

(assert (=> b!5347467 (= e!3319887 EmptyExpr!15033)))

(declare-fun b!5347468 () Bool)

(declare-fun lt!2180122 () Regex!15033)

(assert (=> b!5347468 (= e!3319886 (isConcat!431 lt!2180122))))

(declare-fun b!5347469 () Bool)

(assert (=> b!5347469 (= e!3319888 (isEmptyExpr!908 lt!2180122))))

(declare-fun b!5347470 () Bool)

(declare-fun e!3319883 () Bool)

(assert (=> b!5347470 (= e!3319883 e!3319888)))

(declare-fun c!930771 () Bool)

(assert (=> b!5347470 (= c!930771 (isEmpty!33248 lt!2179974))))

(declare-fun b!5347471 () Bool)

(assert (=> b!5347471 (= e!3319887 (Concat!23878 (h!67722 lt!2179974) (generalisedConcat!702 (t!374615 lt!2179974))))))

(declare-fun b!5347472 () Bool)

(assert (=> b!5347472 (= e!3319884 e!3319887)))

(declare-fun c!930772 () Bool)

(assert (=> b!5347472 (= c!930772 ((_ is Cons!61274) lt!2179974))))

(declare-fun b!5347473 () Bool)

(assert (=> b!5347473 (= e!3319886 (= lt!2180122 (head!11467 lt!2179974)))))

(assert (=> d!1715006 e!3319883))

(declare-fun res!2268814 () Bool)

(assert (=> d!1715006 (=> (not res!2268814) (not e!3319883))))

(assert (=> d!1715006 (= res!2268814 (validRegex!6769 lt!2180122))))

(assert (=> d!1715006 (= lt!2180122 e!3319884)))

(declare-fun c!930774 () Bool)

(assert (=> d!1715006 (= c!930774 e!3319885)))

(declare-fun res!2268815 () Bool)

(assert (=> d!1715006 (=> (not res!2268815) (not e!3319885))))

(assert (=> d!1715006 (= res!2268815 ((_ is Cons!61274) lt!2179974))))

(assert (=> d!1715006 (forall!14455 lt!2179974 lambda!274668)))

(assert (=> d!1715006 (= (generalisedConcat!702 lt!2179974) lt!2180122)))

(assert (= (and d!1715006 res!2268815) b!5347466))

(assert (= (and d!1715006 c!930774) b!5347464))

(assert (= (and d!1715006 (not c!930774)) b!5347472))

(assert (= (and b!5347472 c!930772) b!5347471))

(assert (= (and b!5347472 (not c!930772)) b!5347467))

(assert (= (and d!1715006 res!2268814) b!5347470))

(assert (= (and b!5347470 c!930771) b!5347469))

(assert (= (and b!5347470 (not c!930771)) b!5347465))

(assert (= (and b!5347465 c!930773) b!5347473))

(assert (= (and b!5347465 (not c!930773)) b!5347468))

(declare-fun m!6379066 () Bool)

(assert (=> b!5347465 m!6379066))

(assert (=> b!5347465 m!6379066))

(declare-fun m!6379068 () Bool)

(assert (=> b!5347465 m!6379068))

(declare-fun m!6379070 () Bool)

(assert (=> b!5347471 m!6379070))

(declare-fun m!6379072 () Bool)

(assert (=> b!5347473 m!6379072))

(declare-fun m!6379074 () Bool)

(assert (=> b!5347468 m!6379074))

(declare-fun m!6379076 () Bool)

(assert (=> d!1715006 m!6379076))

(declare-fun m!6379078 () Bool)

(assert (=> d!1715006 m!6379078))

(declare-fun m!6379080 () Bool)

(assert (=> b!5347469 m!6379080))

(declare-fun m!6379082 () Bool)

(assert (=> b!5347470 m!6379082))

(declare-fun m!6379084 () Bool)

(assert (=> b!5347466 m!6379084))

(assert (=> b!5346687 d!1715006))

(declare-fun bs!1239762 () Bool)

(declare-fun d!1715008 () Bool)

(assert (= bs!1239762 (and d!1715008 d!1714986)))

(declare-fun lambda!274669 () Int)

(assert (=> bs!1239762 (= lambda!274669 lambda!274664)))

(declare-fun bs!1239763 () Bool)

(assert (= bs!1239763 (and d!1715008 b!5347372)))

(assert (=> bs!1239763 (not (= lambda!274669 lambda!274656))))

(declare-fun bs!1239764 () Bool)

(assert (= bs!1239764 (and d!1715008 b!5347254)))

(assert (=> bs!1239764 (not (= lambda!274669 lambda!274640))))

(declare-fun bs!1239765 () Bool)

(assert (= bs!1239765 (and d!1715008 d!1714970)))

(assert (=> bs!1239765 (not (= lambda!274669 lambda!274661))))

(declare-fun bs!1239766 () Bool)

(assert (= bs!1239766 (and d!1715008 b!5346687)))

(assert (=> bs!1239766 (= lambda!274669 lambda!274575)))

(declare-fun bs!1239767 () Bool)

(assert (= bs!1239767 (and d!1715008 b!5347350)))

(assert (=> bs!1239767 (not (= lambda!274669 lambda!274648))))

(declare-fun bs!1239768 () Bool)

(assert (= bs!1239768 (and d!1715008 b!5347340)))

(assert (=> bs!1239768 (not (= lambda!274669 lambda!274643))))

(assert (=> bs!1239766 (not (= lambda!274669 lambda!274574))))

(declare-fun bs!1239769 () Bool)

(assert (= bs!1239769 (and d!1715008 d!1714840)))

(assert (=> bs!1239769 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274669 lambda!274589))))

(declare-fun bs!1239770 () Bool)

(assert (= bs!1239770 (and d!1715008 b!5347382)))

(assert (=> bs!1239770 (not (= lambda!274669 lambda!274659))))

(declare-fun bs!1239771 () Bool)

(assert (= bs!1239771 (and d!1715008 d!1714844)))

(assert (=> bs!1239771 (not (= lambda!274669 lambda!274595))))

(declare-fun bs!1239772 () Bool)

(assert (= bs!1239772 (and d!1715008 d!1714980)))

(assert (=> bs!1239772 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274669 lambda!274662))))

(assert (=> bs!1239771 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274669 lambda!274594))))

(assert (=> bs!1239766 (not (= lambda!274669 lambda!274576))))

(assert (=> bs!1239765 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274669 lambda!274660))))

(declare-fun bs!1239776 () Bool)

(assert (= bs!1239776 (and d!1715008 b!5346698)))

(assert (=> bs!1239776 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274669 lambda!274570))))

(assert (=> bs!1239776 (not (= lambda!274669 lambda!274571))))

(assert (=> bs!1239766 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274669 lambda!274573))))

(declare-fun bs!1239779 () Bool)

(assert (= bs!1239779 (and d!1715008 b!5347264)))

(assert (=> bs!1239779 (not (= lambda!274669 lambda!274642))))

(assert (=> d!1715008 true))

(assert (=> d!1715008 true))

(assert (=> d!1715008 true))

(declare-fun lambda!274671 () Int)

(assert (=> bs!1239762 (not (= lambda!274671 lambda!274664))))

(assert (=> bs!1239763 (not (= lambda!274671 lambda!274656))))

(assert (=> bs!1239764 (not (= lambda!274671 lambda!274640))))

(declare-fun bs!1239780 () Bool)

(assert (= bs!1239780 d!1715008))

(assert (=> bs!1239780 (not (= lambda!274671 lambda!274669))))

(assert (=> bs!1239765 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274671 lambda!274661))))

(assert (=> bs!1239766 (not (= lambda!274671 lambda!274575))))

(assert (=> bs!1239767 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 lt!2179983)) (= lt!2179958 (regTwo!30578 lt!2179983))) (= lambda!274671 lambda!274648))))

(assert (=> bs!1239768 (not (= lambda!274671 lambda!274643))))

(assert (=> bs!1239766 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 (regOne!30578 r!7292))) (= lt!2179958 lt!2179983)) (= lambda!274671 lambda!274574))))

(assert (=> bs!1239769 (not (= lambda!274671 lambda!274589))))

(assert (=> bs!1239770 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 lt!2179957)) (= lt!2179958 (regTwo!30578 lt!2179957))) (= lambda!274671 lambda!274659))))

(assert (=> bs!1239771 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274671 lambda!274595))))

(assert (=> bs!1239772 (not (= lambda!274671 lambda!274662))))

(assert (=> bs!1239771 (not (= lambda!274671 lambda!274594))))

(assert (=> bs!1239766 (= lambda!274671 lambda!274576)))

(assert (=> bs!1239765 (not (= lambda!274671 lambda!274660))))

(assert (=> bs!1239776 (not (= lambda!274671 lambda!274570))))

(assert (=> bs!1239776 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274671 lambda!274571))))

(assert (=> bs!1239766 (not (= lambda!274671 lambda!274573))))

(assert (=> bs!1239779 (= (and (= (regTwo!30578 (regOne!30578 r!7292)) (regOne!30578 r!7292)) (= lt!2179958 (regTwo!30578 r!7292))) (= lambda!274671 lambda!274642))))

(assert (=> d!1715008 true))

(assert (=> d!1715008 true))

(assert (=> d!1715008 true))

(assert (=> d!1715008 (= (Exists!2214 lambda!274669) (Exists!2214 lambda!274671))))

(declare-fun lt!2180123 () Unit!153650)

(assert (=> d!1715008 (= lt!2180123 (choose!40094 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326))))

(assert (=> d!1715008 (validRegex!6769 (regTwo!30578 (regOne!30578 r!7292)))))

(assert (=> d!1715008 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!868 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326) lt!2180123)))

(declare-fun m!6379110 () Bool)

(assert (=> bs!1239780 m!6379110))

(declare-fun m!6379112 () Bool)

(assert (=> bs!1239780 m!6379112))

(declare-fun m!6379114 () Bool)

(assert (=> bs!1239780 m!6379114))

(assert (=> bs!1239780 m!6378974))

(assert (=> b!5346687 d!1715008))

(declare-fun d!1715014 () Bool)

(assert (=> d!1715014 (= (isDefined!11847 (findConcatSeparation!1558 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 Nil!61276 s!2326 s!2326)) (not (isEmpty!33251 (findConcatSeparation!1558 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 Nil!61276 s!2326 s!2326))))))

(declare-fun bs!1239788 () Bool)

(assert (= bs!1239788 d!1715014))

(assert (=> bs!1239788 m!6378406))

(declare-fun m!6379116 () Bool)

(assert (=> bs!1239788 m!6379116))

(assert (=> b!5346687 d!1715014))

(declare-fun d!1715016 () Bool)

(assert (=> d!1715016 (= (matchR!7218 lt!2179957 s!2326) (matchRSpec!2136 lt!2179957 s!2326))))

(declare-fun lt!2180126 () Unit!153650)

(assert (=> d!1715016 (= lt!2180126 (choose!40100 lt!2179957 s!2326))))

(assert (=> d!1715016 (validRegex!6769 lt!2179957)))

(assert (=> d!1715016 (= (mainMatchTheorem!2136 lt!2179957 s!2326) lt!2180126)))

(declare-fun bs!1239790 () Bool)

(assert (= bs!1239790 d!1715016))

(assert (=> bs!1239790 m!6378410))

(assert (=> bs!1239790 m!6378424))

(declare-fun m!6379118 () Bool)

(assert (=> bs!1239790 m!6379118))

(assert (=> bs!1239790 m!6379022))

(assert (=> b!5346687 d!1715016))

(declare-fun d!1715018 () Bool)

(assert (=> d!1715018 (= (isDefined!11847 (findConcatSeparation!1558 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 Nil!61276 s!2326 s!2326)) (not (isEmpty!33251 (findConcatSeparation!1558 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 Nil!61276 s!2326 s!2326))))))

(declare-fun bs!1239791 () Bool)

(assert (= bs!1239791 d!1715018))

(assert (=> bs!1239791 m!6378394))

(declare-fun m!6379124 () Bool)

(assert (=> bs!1239791 m!6379124))

(assert (=> b!5346687 d!1715018))

(declare-fun b!5347496 () Bool)

(declare-fun res!2268826 () Bool)

(declare-fun e!3319908 () Bool)

(assert (=> b!5347496 (=> res!2268826 e!3319908)))

(assert (=> b!5347496 (= res!2268826 (not ((_ is ElementMatch!15033) lt!2179983)))))

(declare-fun e!3319903 () Bool)

(assert (=> b!5347496 (= e!3319903 e!3319908)))

(declare-fun b!5347497 () Bool)

(declare-fun res!2268822 () Bool)

(declare-fun e!3319907 () Bool)

(assert (=> b!5347497 (=> res!2268822 e!3319907)))

(assert (=> b!5347497 (= res!2268822 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347498 () Bool)

(declare-fun lt!2180127 () Bool)

(assert (=> b!5347498 (= e!3319903 (not lt!2180127))))

(declare-fun b!5347499 () Bool)

(declare-fun e!3319902 () Bool)

(assert (=> b!5347499 (= e!3319902 (matchR!7218 (derivativeStep!4195 lt!2179983 (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347500 () Bool)

(declare-fun e!3319904 () Bool)

(assert (=> b!5347500 (= e!3319904 e!3319907)))

(declare-fun res!2268827 () Bool)

(assert (=> b!5347500 (=> res!2268827 e!3319907)))

(declare-fun call!382264 () Bool)

(assert (=> b!5347500 (= res!2268827 call!382264)))

(declare-fun b!5347501 () Bool)

(assert (=> b!5347501 (= e!3319908 e!3319904)))

(declare-fun res!2268820 () Bool)

(assert (=> b!5347501 (=> (not res!2268820) (not e!3319904))))

(assert (=> b!5347501 (= res!2268820 (not lt!2180127))))

(declare-fun b!5347503 () Bool)

(declare-fun e!3319905 () Bool)

(assert (=> b!5347503 (= e!3319905 (= (head!11465 s!2326) (c!930519 lt!2179983)))))

(declare-fun b!5347504 () Bool)

(declare-fun e!3319906 () Bool)

(assert (=> b!5347504 (= e!3319906 e!3319903)))

(declare-fun c!930785 () Bool)

(assert (=> b!5347504 (= c!930785 ((_ is EmptyLang!15033) lt!2179983))))

(declare-fun b!5347505 () Bool)

(declare-fun res!2268823 () Bool)

(assert (=> b!5347505 (=> (not res!2268823) (not e!3319905))))

(assert (=> b!5347505 (= res!2268823 (not call!382264))))

(declare-fun b!5347506 () Bool)

(assert (=> b!5347506 (= e!3319906 (= lt!2180127 call!382264))))

(declare-fun b!5347507 () Bool)

(declare-fun res!2268821 () Bool)

(assert (=> b!5347507 (=> res!2268821 e!3319908)))

(assert (=> b!5347507 (= res!2268821 e!3319905)))

(declare-fun res!2268824 () Bool)

(assert (=> b!5347507 (=> (not res!2268824) (not e!3319905))))

(assert (=> b!5347507 (= res!2268824 lt!2180127)))

(declare-fun b!5347508 () Bool)

(assert (=> b!5347508 (= e!3319907 (not (= (head!11465 s!2326) (c!930519 lt!2179983))))))

(declare-fun b!5347502 () Bool)

(declare-fun res!2268825 () Bool)

(assert (=> b!5347502 (=> (not res!2268825) (not e!3319905))))

(assert (=> b!5347502 (= res!2268825 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1715022 () Bool)

(assert (=> d!1715022 e!3319906))

(declare-fun c!930786 () Bool)

(assert (=> d!1715022 (= c!930786 ((_ is EmptyExpr!15033) lt!2179983))))

(assert (=> d!1715022 (= lt!2180127 e!3319902)))

(declare-fun c!930784 () Bool)

(assert (=> d!1715022 (= c!930784 (isEmpty!33249 s!2326))))

(assert (=> d!1715022 (validRegex!6769 lt!2179983)))

(assert (=> d!1715022 (= (matchR!7218 lt!2179983 s!2326) lt!2180127)))

(declare-fun b!5347509 () Bool)

(assert (=> b!5347509 (= e!3319902 (nullable!5202 lt!2179983))))

(declare-fun bm!382259 () Bool)

(assert (=> bm!382259 (= call!382264 (isEmpty!33249 s!2326))))

(assert (= (and d!1715022 c!930784) b!5347509))

(assert (= (and d!1715022 (not c!930784)) b!5347499))

(assert (= (and d!1715022 c!930786) b!5347506))

(assert (= (and d!1715022 (not c!930786)) b!5347504))

(assert (= (and b!5347504 c!930785) b!5347498))

(assert (= (and b!5347504 (not c!930785)) b!5347496))

(assert (= (and b!5347496 (not res!2268826)) b!5347507))

(assert (= (and b!5347507 res!2268824) b!5347505))

(assert (= (and b!5347505 res!2268823) b!5347502))

(assert (= (and b!5347502 res!2268825) b!5347503))

(assert (= (and b!5347507 (not res!2268821)) b!5347501))

(assert (= (and b!5347501 res!2268820) b!5347500))

(assert (= (and b!5347500 (not res!2268827)) b!5347497))

(assert (= (and b!5347497 (not res!2268822)) b!5347508))

(assert (= (or b!5347506 b!5347500 b!5347505) bm!382259))

(assert (=> b!5347499 m!6378732))

(assert (=> b!5347499 m!6378732))

(declare-fun m!6379128 () Bool)

(assert (=> b!5347499 m!6379128))

(assert (=> b!5347499 m!6378736))

(assert (=> b!5347499 m!6379128))

(assert (=> b!5347499 m!6378736))

(declare-fun m!6379130 () Bool)

(assert (=> b!5347499 m!6379130))

(assert (=> bm!382259 m!6378740))

(assert (=> d!1715022 m!6378740))

(assert (=> d!1715022 m!6379064))

(declare-fun m!6379132 () Bool)

(assert (=> b!5347509 m!6379132))

(assert (=> b!5347503 m!6378732))

(assert (=> b!5347497 m!6378736))

(assert (=> b!5347497 m!6378736))

(assert (=> b!5347497 m!6378746))

(assert (=> b!5347508 m!6378732))

(assert (=> b!5347502 m!6378736))

(assert (=> b!5347502 m!6378736))

(assert (=> b!5347502 m!6378746))

(assert (=> b!5346687 d!1715022))

(declare-fun b!5347510 () Bool)

(declare-fun e!3319909 () Bool)

(declare-fun lt!2180130 () Option!15144)

(assert (=> b!5347510 (= e!3319909 (not (isDefined!11847 lt!2180130)))))

(declare-fun b!5347511 () Bool)

(declare-fun e!3319913 () Option!15144)

(declare-fun e!3319912 () Option!15144)

(assert (=> b!5347511 (= e!3319913 e!3319912)))

(declare-fun c!930787 () Bool)

(assert (=> b!5347511 (= c!930787 ((_ is Nil!61276) s!2326))))

(declare-fun b!5347512 () Bool)

(assert (=> b!5347512 (= e!3319913 (Some!15143 (tuple2!64465 Nil!61276 s!2326)))))

(declare-fun b!5347513 () Bool)

(declare-fun res!2268829 () Bool)

(declare-fun e!3319911 () Bool)

(assert (=> b!5347513 (=> (not res!2268829) (not e!3319911))))

(assert (=> b!5347513 (= res!2268829 (matchR!7218 lt!2179983 (_2!35535 (get!21075 lt!2180130))))))

(declare-fun b!5347514 () Bool)

(assert (=> b!5347514 (= e!3319911 (= (++!13353 (_1!35535 (get!21075 lt!2180130)) (_2!35535 (get!21075 lt!2180130))) s!2326))))

(declare-fun b!5347515 () Bool)

(declare-fun e!3319910 () Bool)

(assert (=> b!5347515 (= e!3319910 (matchR!7218 lt!2179983 s!2326))))

(declare-fun d!1715026 () Bool)

(assert (=> d!1715026 e!3319909))

(declare-fun res!2268828 () Bool)

(assert (=> d!1715026 (=> res!2268828 e!3319909)))

(assert (=> d!1715026 (= res!2268828 e!3319911)))

(declare-fun res!2268832 () Bool)

(assert (=> d!1715026 (=> (not res!2268832) (not e!3319911))))

(assert (=> d!1715026 (= res!2268832 (isDefined!11847 lt!2180130))))

(assert (=> d!1715026 (= lt!2180130 e!3319913)))

(declare-fun c!930788 () Bool)

(assert (=> d!1715026 (= c!930788 e!3319910)))

(declare-fun res!2268830 () Bool)

(assert (=> d!1715026 (=> (not res!2268830) (not e!3319910))))

(assert (=> d!1715026 (= res!2268830 (matchR!7218 (regOne!30578 (regOne!30578 r!7292)) Nil!61276))))

(assert (=> d!1715026 (validRegex!6769 (regOne!30578 (regOne!30578 r!7292)))))

(assert (=> d!1715026 (= (findConcatSeparation!1558 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 Nil!61276 s!2326 s!2326) lt!2180130)))

(declare-fun b!5347516 () Bool)

(assert (=> b!5347516 (= e!3319912 None!15143)))

(declare-fun b!5347517 () Bool)

(declare-fun lt!2180129 () Unit!153650)

(declare-fun lt!2180131 () Unit!153650)

(assert (=> b!5347517 (= lt!2180129 lt!2180131)))

(assert (=> b!5347517 (= (++!13353 (++!13353 Nil!61276 (Cons!61276 (h!67724 s!2326) Nil!61276)) (t!374617 s!2326)) s!2326)))

(assert (=> b!5347517 (= lt!2180131 (lemmaMoveElementToOtherListKeepsConcatEq!1768 Nil!61276 (h!67724 s!2326) (t!374617 s!2326) s!2326))))

(assert (=> b!5347517 (= e!3319912 (findConcatSeparation!1558 (regOne!30578 (regOne!30578 r!7292)) lt!2179983 (++!13353 Nil!61276 (Cons!61276 (h!67724 s!2326) Nil!61276)) (t!374617 s!2326) s!2326))))

(declare-fun b!5347518 () Bool)

(declare-fun res!2268831 () Bool)

(assert (=> b!5347518 (=> (not res!2268831) (not e!3319911))))

(assert (=> b!5347518 (= res!2268831 (matchR!7218 (regOne!30578 (regOne!30578 r!7292)) (_1!35535 (get!21075 lt!2180130))))))

(assert (= (and d!1715026 res!2268830) b!5347515))

(assert (= (and d!1715026 c!930788) b!5347512))

(assert (= (and d!1715026 (not c!930788)) b!5347511))

(assert (= (and b!5347511 c!930787) b!5347516))

(assert (= (and b!5347511 (not c!930787)) b!5347517))

(assert (= (and d!1715026 res!2268832) b!5347518))

(assert (= (and b!5347518 res!2268831) b!5347513))

(assert (= (and b!5347513 res!2268829) b!5347514))

(assert (= (and d!1715026 (not res!2268828)) b!5347510))

(declare-fun m!6379134 () Bool)

(assert (=> d!1715026 m!6379134))

(declare-fun m!6379136 () Bool)

(assert (=> d!1715026 m!6379136))

(assert (=> d!1715026 m!6378968))

(declare-fun m!6379138 () Bool)

(assert (=> b!5347518 m!6379138))

(declare-fun m!6379140 () Bool)

(assert (=> b!5347518 m!6379140))

(assert (=> b!5347514 m!6379138))

(declare-fun m!6379142 () Bool)

(assert (=> b!5347514 m!6379142))

(assert (=> b!5347517 m!6378548))

(assert (=> b!5347517 m!6378548))

(assert (=> b!5347517 m!6378550))

(assert (=> b!5347517 m!6378552))

(assert (=> b!5347517 m!6378548))

(declare-fun m!6379144 () Bool)

(assert (=> b!5347517 m!6379144))

(assert (=> b!5347510 m!6379134))

(assert (=> b!5347515 m!6378400))

(assert (=> b!5347513 m!6379138))

(declare-fun m!6379146 () Bool)

(assert (=> b!5347513 m!6379146))

(assert (=> b!5346687 d!1715026))

(declare-fun d!1715028 () Bool)

(assert (=> d!1715028 (= (Exists!2214 lambda!274574) (choose!40091 lambda!274574))))

(declare-fun bs!1239801 () Bool)

(assert (= bs!1239801 d!1715028))

(declare-fun m!6379148 () Bool)

(assert (=> bs!1239801 m!6379148))

(assert (=> b!5346687 d!1715028))

(declare-fun d!1715030 () Bool)

(assert (=> d!1715030 (= (matchR!7218 lt!2179957 s!2326) (matchZipper!1277 lt!2179953 s!2326))))

(declare-fun lt!2180139 () Unit!153650)

(declare-fun choose!40104 ((InoxSet Context!8834) List!61399 Regex!15033 List!61400) Unit!153650)

(assert (=> d!1715030 (= lt!2180139 (choose!40104 lt!2179953 lt!2179951 lt!2179957 s!2326))))

(assert (=> d!1715030 (validRegex!6769 lt!2179957)))

(assert (=> d!1715030 (= (theoremZipperRegexEquiv!431 lt!2179953 lt!2179951 lt!2179957 s!2326) lt!2180139)))

(declare-fun bs!1239807 () Bool)

(assert (= bs!1239807 d!1715030))

(assert (=> bs!1239807 m!6378410))

(assert (=> bs!1239807 m!6378420))

(declare-fun m!6379180 () Bool)

(assert (=> bs!1239807 m!6379180))

(assert (=> bs!1239807 m!6379022))

(assert (=> b!5346687 d!1715030))

(declare-fun d!1715038 () Bool)

(declare-fun lt!2180145 () Regex!15033)

(assert (=> d!1715038 (validRegex!6769 lt!2180145)))

(assert (=> d!1715038 (= lt!2180145 (generalisedUnion!962 (unfocusZipperList!475 zl!343)))))

(assert (=> d!1715038 (= (unfocusZipper!775 zl!343) lt!2180145)))

(declare-fun bs!1239810 () Bool)

(assert (= bs!1239810 d!1715038))

(declare-fun m!6379208 () Bool)

(assert (=> bs!1239810 m!6379208))

(assert (=> bs!1239810 m!6378298))

(assert (=> bs!1239810 m!6378298))

(assert (=> bs!1239810 m!6378300))

(assert (=> b!5346667 d!1715038))

(declare-fun b!5347561 () Bool)

(declare-fun res!2268859 () Bool)

(declare-fun e!3319943 () Bool)

(assert (=> b!5347561 (=> res!2268859 e!3319943)))

(assert (=> b!5347561 (= res!2268859 (not ((_ is ElementMatch!15033) (Concat!23878 lt!2179964 lt!2179958))))))

(declare-fun e!3319938 () Bool)

(assert (=> b!5347561 (= e!3319938 e!3319943)))

(declare-fun b!5347562 () Bool)

(declare-fun res!2268855 () Bool)

(declare-fun e!3319942 () Bool)

(assert (=> b!5347562 (=> res!2268855 e!3319942)))

(assert (=> b!5347562 (= res!2268855 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347563 () Bool)

(declare-fun lt!2180146 () Bool)

(assert (=> b!5347563 (= e!3319938 (not lt!2180146))))

(declare-fun e!3319937 () Bool)

(declare-fun b!5347564 () Bool)

(assert (=> b!5347564 (= e!3319937 (matchR!7218 (derivativeStep!4195 (Concat!23878 lt!2179964 lt!2179958) (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347565 () Bool)

(declare-fun e!3319939 () Bool)

(assert (=> b!5347565 (= e!3319939 e!3319942)))

(declare-fun res!2268860 () Bool)

(assert (=> b!5347565 (=> res!2268860 e!3319942)))

(declare-fun call!382266 () Bool)

(assert (=> b!5347565 (= res!2268860 call!382266)))

(declare-fun b!5347566 () Bool)

(assert (=> b!5347566 (= e!3319943 e!3319939)))

(declare-fun res!2268853 () Bool)

(assert (=> b!5347566 (=> (not res!2268853) (not e!3319939))))

(assert (=> b!5347566 (= res!2268853 (not lt!2180146))))

(declare-fun e!3319940 () Bool)

(declare-fun b!5347568 () Bool)

(assert (=> b!5347568 (= e!3319940 (= (head!11465 s!2326) (c!930519 (Concat!23878 lt!2179964 lt!2179958))))))

(declare-fun b!5347569 () Bool)

(declare-fun e!3319941 () Bool)

(assert (=> b!5347569 (= e!3319941 e!3319938)))

(declare-fun c!930801 () Bool)

(assert (=> b!5347569 (= c!930801 ((_ is EmptyLang!15033) (Concat!23878 lt!2179964 lt!2179958)))))

(declare-fun b!5347570 () Bool)

(declare-fun res!2268856 () Bool)

(assert (=> b!5347570 (=> (not res!2268856) (not e!3319940))))

(assert (=> b!5347570 (= res!2268856 (not call!382266))))

(declare-fun b!5347571 () Bool)

(assert (=> b!5347571 (= e!3319941 (= lt!2180146 call!382266))))

(declare-fun b!5347572 () Bool)

(declare-fun res!2268854 () Bool)

(assert (=> b!5347572 (=> res!2268854 e!3319943)))

(assert (=> b!5347572 (= res!2268854 e!3319940)))

(declare-fun res!2268857 () Bool)

(assert (=> b!5347572 (=> (not res!2268857) (not e!3319940))))

(assert (=> b!5347572 (= res!2268857 lt!2180146)))

(declare-fun b!5347573 () Bool)

(assert (=> b!5347573 (= e!3319942 (not (= (head!11465 s!2326) (c!930519 (Concat!23878 lt!2179964 lt!2179958)))))))

(declare-fun b!5347567 () Bool)

(declare-fun res!2268858 () Bool)

(assert (=> b!5347567 (=> (not res!2268858) (not e!3319940))))

(assert (=> b!5347567 (= res!2268858 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1715042 () Bool)

(assert (=> d!1715042 e!3319941))

(declare-fun c!930802 () Bool)

(assert (=> d!1715042 (= c!930802 ((_ is EmptyExpr!15033) (Concat!23878 lt!2179964 lt!2179958)))))

(assert (=> d!1715042 (= lt!2180146 e!3319937)))

(declare-fun c!930800 () Bool)

(assert (=> d!1715042 (= c!930800 (isEmpty!33249 s!2326))))

(assert (=> d!1715042 (validRegex!6769 (Concat!23878 lt!2179964 lt!2179958))))

(assert (=> d!1715042 (= (matchR!7218 (Concat!23878 lt!2179964 lt!2179958) s!2326) lt!2180146)))

(declare-fun b!5347574 () Bool)

(assert (=> b!5347574 (= e!3319937 (nullable!5202 (Concat!23878 lt!2179964 lt!2179958)))))

(declare-fun bm!382261 () Bool)

(assert (=> bm!382261 (= call!382266 (isEmpty!33249 s!2326))))

(assert (= (and d!1715042 c!930800) b!5347574))

(assert (= (and d!1715042 (not c!930800)) b!5347564))

(assert (= (and d!1715042 c!930802) b!5347571))

(assert (= (and d!1715042 (not c!930802)) b!5347569))

(assert (= (and b!5347569 c!930801) b!5347563))

(assert (= (and b!5347569 (not c!930801)) b!5347561))

(assert (= (and b!5347561 (not res!2268859)) b!5347572))

(assert (= (and b!5347572 res!2268857) b!5347570))

(assert (= (and b!5347570 res!2268856) b!5347567))

(assert (= (and b!5347567 res!2268858) b!5347568))

(assert (= (and b!5347572 (not res!2268854)) b!5347566))

(assert (= (and b!5347566 res!2268853) b!5347565))

(assert (= (and b!5347565 (not res!2268860)) b!5347562))

(assert (= (and b!5347562 (not res!2268855)) b!5347573))

(assert (= (or b!5347571 b!5347565 b!5347570) bm!382261))

(assert (=> b!5347564 m!6378732))

(assert (=> b!5347564 m!6378732))

(declare-fun m!6379218 () Bool)

(assert (=> b!5347564 m!6379218))

(assert (=> b!5347564 m!6378736))

(assert (=> b!5347564 m!6379218))

(assert (=> b!5347564 m!6378736))

(declare-fun m!6379220 () Bool)

(assert (=> b!5347564 m!6379220))

(assert (=> bm!382261 m!6378740))

(assert (=> d!1715042 m!6378740))

(declare-fun m!6379222 () Bool)

(assert (=> d!1715042 m!6379222))

(declare-fun m!6379224 () Bool)

(assert (=> b!5347574 m!6379224))

(assert (=> b!5347568 m!6378732))

(assert (=> b!5347562 m!6378736))

(assert (=> b!5347562 m!6378736))

(assert (=> b!5347562 m!6378746))

(assert (=> b!5347573 m!6378732))

(assert (=> b!5347567 m!6378736))

(assert (=> b!5347567 m!6378736))

(assert (=> b!5347567 m!6378746))

(assert (=> b!5346668 d!1715042))

(declare-fun d!1715046 () Bool)

(assert (=> d!1715046 (= (isEmpty!33248 (t!374615 (exprs!4917 (h!67723 zl!343)))) ((_ is Nil!61274) (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> b!5346689 d!1715046))

(declare-fun d!1715048 () Bool)

(declare-fun e!3319953 () Bool)

(assert (=> d!1715048 e!3319953))

(declare-fun res!2268866 () Bool)

(assert (=> d!1715048 (=> (not res!2268866) (not e!3319953))))

(declare-fun lt!2180149 () List!61399)

(declare-fun noDuplicate!1328 (List!61399) Bool)

(assert (=> d!1715048 (= res!2268866 (noDuplicate!1328 lt!2180149))))

(declare-fun choose!40105 ((InoxSet Context!8834)) List!61399)

(assert (=> d!1715048 (= lt!2180149 (choose!40105 z!1189))))

(assert (=> d!1715048 (= (toList!8817 z!1189) lt!2180149)))

(declare-fun b!5347588 () Bool)

(declare-fun content!10932 (List!61399) (InoxSet Context!8834))

(assert (=> b!5347588 (= e!3319953 (= (content!10932 lt!2180149) z!1189))))

(assert (= (and d!1715048 res!2268866) b!5347588))

(declare-fun m!6379226 () Bool)

(assert (=> d!1715048 m!6379226))

(declare-fun m!6379228 () Bool)

(assert (=> d!1715048 m!6379228))

(declare-fun m!6379230 () Bool)

(assert (=> b!5347588 m!6379230))

(assert (=> b!5346691 d!1715048))

(declare-fun d!1715050 () Bool)

(declare-fun res!2268871 () Bool)

(declare-fun e!3319958 () Bool)

(assert (=> d!1715050 (=> res!2268871 e!3319958)))

(assert (=> d!1715050 (= res!2268871 ((_ is Nil!61274) (t!374615 (exprs!4917 (h!67723 zl!343)))))))

(assert (=> d!1715050 (= (forall!14455 (t!374615 (exprs!4917 (h!67723 zl!343))) lambda!274577) e!3319958)))

(declare-fun b!5347593 () Bool)

(declare-fun e!3319959 () Bool)

(assert (=> b!5347593 (= e!3319958 e!3319959)))

(declare-fun res!2268872 () Bool)

(assert (=> b!5347593 (=> (not res!2268872) (not e!3319959))))

(declare-fun dynLambda!24223 (Int Regex!15033) Bool)

(assert (=> b!5347593 (= res!2268872 (dynLambda!24223 lambda!274577 (h!67722 (t!374615 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun b!5347594 () Bool)

(assert (=> b!5347594 (= e!3319959 (forall!14455 (t!374615 (t!374615 (exprs!4917 (h!67723 zl!343)))) lambda!274577))))

(assert (= (and d!1715050 (not res!2268871)) b!5347593))

(assert (= (and b!5347593 res!2268872) b!5347594))

(declare-fun b_lambda!205279 () Bool)

(assert (=> (not b_lambda!205279) (not b!5347593)))

(declare-fun m!6379238 () Bool)

(assert (=> b!5347593 m!6379238))

(declare-fun m!6379240 () Bool)

(assert (=> b!5347594 m!6379240))

(assert (=> b!5346671 d!1715050))

(declare-fun b!5347605 () Bool)

(declare-fun res!2268881 () Bool)

(declare-fun e!3319972 () Bool)

(assert (=> b!5347605 (=> res!2268881 e!3319972)))

(assert (=> b!5347605 (= res!2268881 (not ((_ is ElementMatch!15033) (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)))))))

(declare-fun e!3319967 () Bool)

(assert (=> b!5347605 (= e!3319967 e!3319972)))

(declare-fun b!5347606 () Bool)

(declare-fun res!2268877 () Bool)

(declare-fun e!3319971 () Bool)

(assert (=> b!5347606 (=> res!2268877 e!3319971)))

(assert (=> b!5347606 (= res!2268877 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347607 () Bool)

(declare-fun lt!2180151 () Bool)

(assert (=> b!5347607 (= e!3319967 (not lt!2180151))))

(declare-fun b!5347608 () Bool)

(declare-fun e!3319966 () Bool)

(assert (=> b!5347608 (= e!3319966 (matchR!7218 (derivativeStep!4195 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)) (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347609 () Bool)

(declare-fun e!3319968 () Bool)

(assert (=> b!5347609 (= e!3319968 e!3319971)))

(declare-fun res!2268882 () Bool)

(assert (=> b!5347609 (=> res!2268882 e!3319971)))

(declare-fun call!382269 () Bool)

(assert (=> b!5347609 (= res!2268882 call!382269)))

(declare-fun b!5347610 () Bool)

(assert (=> b!5347610 (= e!3319972 e!3319968)))

(declare-fun res!2268875 () Bool)

(assert (=> b!5347610 (=> (not res!2268875) (not e!3319968))))

(assert (=> b!5347610 (= res!2268875 (not lt!2180151))))

(declare-fun e!3319969 () Bool)

(declare-fun b!5347612 () Bool)

(assert (=> b!5347612 (= e!3319969 (= (head!11465 s!2326) (c!930519 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)))))))

(declare-fun b!5347613 () Bool)

(declare-fun e!3319970 () Bool)

(assert (=> b!5347613 (= e!3319970 e!3319967)))

(declare-fun c!930812 () Bool)

(assert (=> b!5347613 (= c!930812 ((_ is EmptyLang!15033) (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958))))))

(declare-fun b!5347614 () Bool)

(declare-fun res!2268878 () Bool)

(assert (=> b!5347614 (=> (not res!2268878) (not e!3319969))))

(assert (=> b!5347614 (= res!2268878 (not call!382269))))

(declare-fun b!5347615 () Bool)

(assert (=> b!5347615 (= e!3319970 (= lt!2180151 call!382269))))

(declare-fun b!5347616 () Bool)

(declare-fun res!2268876 () Bool)

(assert (=> b!5347616 (=> res!2268876 e!3319972)))

(assert (=> b!5347616 (= res!2268876 e!3319969)))

(declare-fun res!2268879 () Bool)

(assert (=> b!5347616 (=> (not res!2268879) (not e!3319969))))

(assert (=> b!5347616 (= res!2268879 lt!2180151)))

(declare-fun b!5347617 () Bool)

(assert (=> b!5347617 (= e!3319971 (not (= (head!11465 s!2326) (c!930519 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958))))))))

(declare-fun b!5347611 () Bool)

(declare-fun res!2268880 () Bool)

(assert (=> b!5347611 (=> (not res!2268880) (not e!3319969))))

(assert (=> b!5347611 (= res!2268880 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1715054 () Bool)

(assert (=> d!1715054 e!3319970))

(declare-fun c!930813 () Bool)

(assert (=> d!1715054 (= c!930813 ((_ is EmptyExpr!15033) (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958))))))

(assert (=> d!1715054 (= lt!2180151 e!3319966)))

(declare-fun c!930811 () Bool)

(assert (=> d!1715054 (= c!930811 (isEmpty!33249 s!2326))))

(assert (=> d!1715054 (validRegex!6769 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)))))

(assert (=> d!1715054 (= (matchR!7218 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)) s!2326) lt!2180151)))

(declare-fun b!5347618 () Bool)

(assert (=> b!5347618 (= e!3319966 (nullable!5202 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958))))))

(declare-fun bm!382264 () Bool)

(assert (=> bm!382264 (= call!382269 (isEmpty!33249 s!2326))))

(assert (= (and d!1715054 c!930811) b!5347618))

(assert (= (and d!1715054 (not c!930811)) b!5347608))

(assert (= (and d!1715054 c!930813) b!5347615))

(assert (= (and d!1715054 (not c!930813)) b!5347613))

(assert (= (and b!5347613 c!930812) b!5347607))

(assert (= (and b!5347613 (not c!930812)) b!5347605))

(assert (= (and b!5347605 (not res!2268881)) b!5347616))

(assert (= (and b!5347616 res!2268879) b!5347614))

(assert (= (and b!5347614 res!2268878) b!5347611))

(assert (= (and b!5347611 res!2268880) b!5347612))

(assert (= (and b!5347616 (not res!2268876)) b!5347610))

(assert (= (and b!5347610 res!2268875) b!5347609))

(assert (= (and b!5347609 (not res!2268882)) b!5347606))

(assert (= (and b!5347606 (not res!2268877)) b!5347617))

(assert (= (or b!5347615 b!5347609 b!5347614) bm!382264))

(assert (=> b!5347608 m!6378732))

(assert (=> b!5347608 m!6378732))

(declare-fun m!6379244 () Bool)

(assert (=> b!5347608 m!6379244))

(assert (=> b!5347608 m!6378736))

(assert (=> b!5347608 m!6379244))

(assert (=> b!5347608 m!6378736))

(declare-fun m!6379254 () Bool)

(assert (=> b!5347608 m!6379254))

(assert (=> bm!382264 m!6378740))

(assert (=> d!1715054 m!6378740))

(declare-fun m!6379262 () Bool)

(assert (=> d!1715054 m!6379262))

(declare-fun m!6379266 () Bool)

(assert (=> b!5347618 m!6379266))

(assert (=> b!5347612 m!6378732))

(assert (=> b!5347606 m!6378736))

(assert (=> b!5347606 m!6378736))

(assert (=> b!5347606 m!6378746))

(assert (=> b!5347617 m!6378732))

(assert (=> b!5347611 m!6378736))

(assert (=> b!5347611 m!6378736))

(assert (=> b!5347611 m!6378746))

(assert (=> b!5346671 d!1715054))

(declare-fun d!1715058 () Bool)

(assert (=> d!1715058 (= (matchR!7218 (Concat!23878 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292))) lt!2179958) s!2326) (matchR!7218 (Concat!23878 (regOne!30578 (regOne!30578 r!7292)) (Concat!23878 (regTwo!30578 (regOne!30578 r!7292)) lt!2179958)) s!2326))))

(declare-fun lt!2180156 () Unit!153650)

(declare-fun choose!40106 (Regex!15033 Regex!15033 Regex!15033 List!61400) Unit!153650)

(assert (=> d!1715058 (= lt!2180156 (choose!40106 (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326))))

(declare-fun e!3319989 () Bool)

(assert (=> d!1715058 e!3319989))

(declare-fun res!2268898 () Bool)

(assert (=> d!1715058 (=> (not res!2268898) (not e!3319989))))

(assert (=> d!1715058 (= res!2268898 (validRegex!6769 (regOne!30578 (regOne!30578 r!7292))))))

(assert (=> d!1715058 (= (lemmaConcatAssociative!10 (regOne!30578 (regOne!30578 r!7292)) (regTwo!30578 (regOne!30578 r!7292)) lt!2179958 s!2326) lt!2180156)))

(declare-fun b!5347648 () Bool)

(declare-fun res!2268899 () Bool)

(assert (=> b!5347648 (=> (not res!2268899) (not e!3319989))))

(assert (=> b!5347648 (= res!2268899 (validRegex!6769 (regTwo!30578 (regOne!30578 r!7292))))))

(declare-fun b!5347649 () Bool)

(assert (=> b!5347649 (= e!3319989 (validRegex!6769 lt!2179958))))

(assert (= (and d!1715058 res!2268898) b!5347648))

(assert (= (and b!5347648 res!2268899) b!5347649))

(declare-fun m!6379282 () Bool)

(assert (=> d!1715058 m!6379282))

(assert (=> d!1715058 m!6378324))

(declare-fun m!6379284 () Bool)

(assert (=> d!1715058 m!6379284))

(assert (=> d!1715058 m!6378968))

(assert (=> b!5347648 m!6378974))

(declare-fun m!6379286 () Bool)

(assert (=> b!5347649 m!6379286))

(assert (=> b!5346671 d!1715058))

(declare-fun bs!1239865 () Bool)

(declare-fun d!1715066 () Bool)

(assert (= bs!1239865 (and d!1715066 d!1714916)))

(declare-fun lambda!274683 () Int)

(assert (=> bs!1239865 (= lambda!274683 lambda!274633)))

(declare-fun bs!1239867 () Bool)

(assert (= bs!1239867 (and d!1715066 b!5346671)))

(assert (=> bs!1239867 (= lambda!274683 lambda!274577)))

(declare-fun bs!1239869 () Bool)

(assert (= bs!1239869 (and d!1715066 d!1714914)))

(assert (=> bs!1239869 (= lambda!274683 lambda!274632)))

(declare-fun bs!1239870 () Bool)

(assert (= bs!1239870 (and d!1715066 d!1715006)))

(assert (=> bs!1239870 (= lambda!274683 lambda!274668)))

(declare-fun bs!1239871 () Bool)

(assert (= bs!1239871 (and d!1715066 d!1714958)))

(assert (=> bs!1239871 (= lambda!274683 lambda!274651)))

(declare-fun bs!1239872 () Bool)

(assert (= bs!1239872 (and d!1715066 d!1714860)))

(assert (=> bs!1239872 (= lambda!274683 lambda!274598)))

(declare-fun bs!1239873 () Bool)

(assert (= bs!1239873 (and d!1715066 d!1715002)))

(assert (=> bs!1239873 (= lambda!274683 lambda!274665)))

(declare-fun b!5347671 () Bool)

(declare-fun e!3320007 () Regex!15033)

(assert (=> b!5347671 (= e!3320007 (Union!15033 (h!67722 (unfocusZipperList!475 zl!343)) (generalisedUnion!962 (t!374615 (unfocusZipperList!475 zl!343)))))))

(declare-fun b!5347672 () Bool)

(declare-fun e!3320006 () Bool)

(declare-fun e!3320003 () Bool)

(assert (=> b!5347672 (= e!3320006 e!3320003)))

(declare-fun c!930829 () Bool)

(assert (=> b!5347672 (= c!930829 (isEmpty!33248 (tail!10564 (unfocusZipperList!475 zl!343))))))

(declare-fun b!5347673 () Bool)

(declare-fun e!3320002 () Bool)

(assert (=> b!5347673 (= e!3320002 (isEmpty!33248 (t!374615 (unfocusZipperList!475 zl!343))))))

(declare-fun b!5347674 () Bool)

(declare-fun lt!2180163 () Regex!15033)

(assert (=> b!5347674 (= e!3320003 (= lt!2180163 (head!11467 (unfocusZipperList!475 zl!343))))))

(declare-fun b!5347675 () Bool)

(declare-fun e!3320005 () Regex!15033)

(assert (=> b!5347675 (= e!3320005 (h!67722 (unfocusZipperList!475 zl!343)))))

(declare-fun b!5347676 () Bool)

(assert (=> b!5347676 (= e!3320007 EmptyLang!15033)))

(declare-fun b!5347677 () Bool)

(declare-fun isEmptyLang!917 (Regex!15033) Bool)

(assert (=> b!5347677 (= e!3320006 (isEmptyLang!917 lt!2180163))))

(declare-fun b!5347678 () Bool)

(declare-fun isUnion!349 (Regex!15033) Bool)

(assert (=> b!5347678 (= e!3320003 (isUnion!349 lt!2180163))))

(declare-fun b!5347679 () Bool)

(declare-fun e!3320004 () Bool)

(assert (=> b!5347679 (= e!3320004 e!3320006)))

(declare-fun c!930830 () Bool)

(assert (=> b!5347679 (= c!930830 (isEmpty!33248 (unfocusZipperList!475 zl!343)))))

(assert (=> d!1715066 e!3320004))

(declare-fun res!2268905 () Bool)

(assert (=> d!1715066 (=> (not res!2268905) (not e!3320004))))

(assert (=> d!1715066 (= res!2268905 (validRegex!6769 lt!2180163))))

(assert (=> d!1715066 (= lt!2180163 e!3320005)))

(declare-fun c!930832 () Bool)

(assert (=> d!1715066 (= c!930832 e!3320002)))

(declare-fun res!2268904 () Bool)

(assert (=> d!1715066 (=> (not res!2268904) (not e!3320002))))

(assert (=> d!1715066 (= res!2268904 ((_ is Cons!61274) (unfocusZipperList!475 zl!343)))))

(assert (=> d!1715066 (forall!14455 (unfocusZipperList!475 zl!343) lambda!274683)))

(assert (=> d!1715066 (= (generalisedUnion!962 (unfocusZipperList!475 zl!343)) lt!2180163)))

(declare-fun b!5347670 () Bool)

(assert (=> b!5347670 (= e!3320005 e!3320007)))

(declare-fun c!930831 () Bool)

(assert (=> b!5347670 (= c!930831 ((_ is Cons!61274) (unfocusZipperList!475 zl!343)))))

(assert (= (and d!1715066 res!2268904) b!5347673))

(assert (= (and d!1715066 c!930832) b!5347675))

(assert (= (and d!1715066 (not c!930832)) b!5347670))

(assert (= (and b!5347670 c!930831) b!5347671))

(assert (= (and b!5347670 (not c!930831)) b!5347676))

(assert (= (and d!1715066 res!2268905) b!5347679))

(assert (= (and b!5347679 c!930830) b!5347677))

(assert (= (and b!5347679 (not c!930830)) b!5347672))

(assert (= (and b!5347672 c!930829) b!5347674))

(assert (= (and b!5347672 (not c!930829)) b!5347678))

(declare-fun m!6379304 () Bool)

(assert (=> b!5347671 m!6379304))

(declare-fun m!6379306 () Bool)

(assert (=> b!5347673 m!6379306))

(assert (=> b!5347679 m!6378298))

(declare-fun m!6379308 () Bool)

(assert (=> b!5347679 m!6379308))

(declare-fun m!6379310 () Bool)

(assert (=> b!5347677 m!6379310))

(assert (=> b!5347672 m!6378298))

(declare-fun m!6379312 () Bool)

(assert (=> b!5347672 m!6379312))

(assert (=> b!5347672 m!6379312))

(declare-fun m!6379314 () Bool)

(assert (=> b!5347672 m!6379314))

(declare-fun m!6379316 () Bool)

(assert (=> d!1715066 m!6379316))

(assert (=> d!1715066 m!6378298))

(declare-fun m!6379318 () Bool)

(assert (=> d!1715066 m!6379318))

(declare-fun m!6379320 () Bool)

(assert (=> b!5347678 m!6379320))

(assert (=> b!5347674 m!6378298))

(declare-fun m!6379322 () Bool)

(assert (=> b!5347674 m!6379322))

(assert (=> b!5346672 d!1715066))

(declare-fun bs!1239887 () Bool)

(declare-fun d!1715080 () Bool)

(assert (= bs!1239887 (and d!1715080 d!1714916)))

(declare-fun lambda!274688 () Int)

(assert (=> bs!1239887 (= lambda!274688 lambda!274633)))

(declare-fun bs!1239888 () Bool)

(assert (= bs!1239888 (and d!1715080 b!5346671)))

(assert (=> bs!1239888 (= lambda!274688 lambda!274577)))

(declare-fun bs!1239890 () Bool)

(assert (= bs!1239890 (and d!1715080 d!1714914)))

(assert (=> bs!1239890 (= lambda!274688 lambda!274632)))

(declare-fun bs!1239891 () Bool)

(assert (= bs!1239891 (and d!1715080 d!1715006)))

(assert (=> bs!1239891 (= lambda!274688 lambda!274668)))

(declare-fun bs!1239892 () Bool)

(assert (= bs!1239892 (and d!1715080 d!1714958)))

(assert (=> bs!1239892 (= lambda!274688 lambda!274651)))

(declare-fun bs!1239893 () Bool)

(assert (= bs!1239893 (and d!1715080 d!1715066)))

(assert (=> bs!1239893 (= lambda!274688 lambda!274683)))

(declare-fun bs!1239894 () Bool)

(assert (= bs!1239894 (and d!1715080 d!1714860)))

(assert (=> bs!1239894 (= lambda!274688 lambda!274598)))

(declare-fun bs!1239895 () Bool)

(assert (= bs!1239895 (and d!1715080 d!1715002)))

(assert (=> bs!1239895 (= lambda!274688 lambda!274665)))

(declare-fun lt!2180167 () List!61398)

(assert (=> d!1715080 (forall!14455 lt!2180167 lambda!274688)))

(declare-fun e!3320010 () List!61398)

(assert (=> d!1715080 (= lt!2180167 e!3320010)))

(declare-fun c!930835 () Bool)

(assert (=> d!1715080 (= c!930835 ((_ is Cons!61275) zl!343))))

(assert (=> d!1715080 (= (unfocusZipperList!475 zl!343) lt!2180167)))

(declare-fun b!5347684 () Bool)

(assert (=> b!5347684 (= e!3320010 (Cons!61274 (generalisedConcat!702 (exprs!4917 (h!67723 zl!343))) (unfocusZipperList!475 (t!374616 zl!343))))))

(declare-fun b!5347685 () Bool)

(assert (=> b!5347685 (= e!3320010 Nil!61274)))

(assert (= (and d!1715080 c!930835) b!5347684))

(assert (= (and d!1715080 (not c!930835)) b!5347685))

(declare-fun m!6379330 () Bool)

(assert (=> d!1715080 m!6379330))

(assert (=> b!5347684 m!6378388))

(declare-fun m!6379332 () Bool)

(assert (=> b!5347684 m!6379332))

(assert (=> b!5346672 d!1715080))

(declare-fun b!5347686 () Bool)

(declare-fun res!2268912 () Bool)

(declare-fun e!3320017 () Bool)

(assert (=> b!5347686 (=> res!2268912 e!3320017)))

(assert (=> b!5347686 (= res!2268912 (not ((_ is ElementMatch!15033) (Concat!23878 lt!2179964 (regTwo!30578 r!7292)))))))

(declare-fun e!3320012 () Bool)

(assert (=> b!5347686 (= e!3320012 e!3320017)))

(declare-fun b!5347687 () Bool)

(declare-fun res!2268908 () Bool)

(declare-fun e!3320016 () Bool)

(assert (=> b!5347687 (=> res!2268908 e!3320016)))

(assert (=> b!5347687 (= res!2268908 (not (isEmpty!33249 (tail!10562 s!2326))))))

(declare-fun b!5347688 () Bool)

(declare-fun lt!2180168 () Bool)

(assert (=> b!5347688 (= e!3320012 (not lt!2180168))))

(declare-fun b!5347689 () Bool)

(declare-fun e!3320011 () Bool)

(assert (=> b!5347689 (= e!3320011 (matchR!7218 (derivativeStep!4195 (Concat!23878 lt!2179964 (regTwo!30578 r!7292)) (head!11465 s!2326)) (tail!10562 s!2326)))))

(declare-fun b!5347690 () Bool)

(declare-fun e!3320013 () Bool)

(assert (=> b!5347690 (= e!3320013 e!3320016)))

(declare-fun res!2268913 () Bool)

(assert (=> b!5347690 (=> res!2268913 e!3320016)))

(declare-fun call!382273 () Bool)

(assert (=> b!5347690 (= res!2268913 call!382273)))

(declare-fun b!5347691 () Bool)

(assert (=> b!5347691 (= e!3320017 e!3320013)))

(declare-fun res!2268906 () Bool)

(assert (=> b!5347691 (=> (not res!2268906) (not e!3320013))))

(assert (=> b!5347691 (= res!2268906 (not lt!2180168))))

(declare-fun e!3320014 () Bool)

(declare-fun b!5347693 () Bool)

(assert (=> b!5347693 (= e!3320014 (= (head!11465 s!2326) (c!930519 (Concat!23878 lt!2179964 (regTwo!30578 r!7292)))))))

(declare-fun b!5347694 () Bool)

(declare-fun e!3320015 () Bool)

(assert (=> b!5347694 (= e!3320015 e!3320012)))

(declare-fun c!930837 () Bool)

(assert (=> b!5347694 (= c!930837 ((_ is EmptyLang!15033) (Concat!23878 lt!2179964 (regTwo!30578 r!7292))))))

(declare-fun b!5347695 () Bool)

(declare-fun res!2268909 () Bool)

(assert (=> b!5347695 (=> (not res!2268909) (not e!3320014))))

(assert (=> b!5347695 (= res!2268909 (not call!382273))))

(declare-fun b!5347696 () Bool)

(assert (=> b!5347696 (= e!3320015 (= lt!2180168 call!382273))))

(declare-fun b!5347697 () Bool)

(declare-fun res!2268907 () Bool)

(assert (=> b!5347697 (=> res!2268907 e!3320017)))

(assert (=> b!5347697 (= res!2268907 e!3320014)))

(declare-fun res!2268910 () Bool)

(assert (=> b!5347697 (=> (not res!2268910) (not e!3320014))))

(assert (=> b!5347697 (= res!2268910 lt!2180168)))

(declare-fun b!5347698 () Bool)

(assert (=> b!5347698 (= e!3320016 (not (= (head!11465 s!2326) (c!930519 (Concat!23878 lt!2179964 (regTwo!30578 r!7292))))))))

(declare-fun b!5347692 () Bool)

(declare-fun res!2268911 () Bool)

(assert (=> b!5347692 (=> (not res!2268911) (not e!3320014))))

(assert (=> b!5347692 (= res!2268911 (isEmpty!33249 (tail!10562 s!2326)))))

(declare-fun d!1715084 () Bool)

(assert (=> d!1715084 e!3320015))

(declare-fun c!930838 () Bool)

(assert (=> d!1715084 (= c!930838 ((_ is EmptyExpr!15033) (Concat!23878 lt!2179964 (regTwo!30578 r!7292))))))

(assert (=> d!1715084 (= lt!2180168 e!3320011)))

(declare-fun c!930836 () Bool)

(assert (=> d!1715084 (= c!930836 (isEmpty!33249 s!2326))))

(assert (=> d!1715084 (validRegex!6769 (Concat!23878 lt!2179964 (regTwo!30578 r!7292)))))

(assert (=> d!1715084 (= (matchR!7218 (Concat!23878 lt!2179964 (regTwo!30578 r!7292)) s!2326) lt!2180168)))

(declare-fun b!5347699 () Bool)

(assert (=> b!5347699 (= e!3320011 (nullable!5202 (Concat!23878 lt!2179964 (regTwo!30578 r!7292))))))

(declare-fun bm!382268 () Bool)

(assert (=> bm!382268 (= call!382273 (isEmpty!33249 s!2326))))

(assert (= (and d!1715084 c!930836) b!5347699))

(assert (= (and d!1715084 (not c!930836)) b!5347689))

(assert (= (and d!1715084 c!930838) b!5347696))

(assert (= (and d!1715084 (not c!930838)) b!5347694))

(assert (= (and b!5347694 c!930837) b!5347688))

(assert (= (and b!5347694 (not c!930837)) b!5347686))

(assert (= (and b!5347686 (not res!2268912)) b!5347697))

(assert (= (and b!5347697 res!2268910) b!5347695))

(assert (= (and b!5347695 res!2268909) b!5347692))

(assert (= (and b!5347692 res!2268911) b!5347693))

(assert (= (and b!5347697 (not res!2268907)) b!5347691))

(assert (= (and b!5347691 res!2268906) b!5347690))

(assert (= (and b!5347690 (not res!2268913)) b!5347687))

(assert (= (and b!5347687 (not res!2268908)) b!5347698))

(assert (= (or b!5347696 b!5347690 b!5347695) bm!382268))

(assert (=> b!5347689 m!6378732))

(assert (=> b!5347689 m!6378732))

(declare-fun m!6379334 () Bool)

(assert (=> b!5347689 m!6379334))

(assert (=> b!5347689 m!6378736))

(assert (=> b!5347689 m!6379334))

(assert (=> b!5347689 m!6378736))

(declare-fun m!6379336 () Bool)

(assert (=> b!5347689 m!6379336))

(assert (=> bm!382268 m!6378740))

(assert (=> d!1715084 m!6378740))

(declare-fun m!6379338 () Bool)

(assert (=> d!1715084 m!6379338))

(declare-fun m!6379340 () Bool)

(assert (=> b!5347699 m!6379340))

(assert (=> b!5347693 m!6378732))

(assert (=> b!5347687 m!6378736))

(assert (=> b!5347687 m!6378736))

(assert (=> b!5347687 m!6378746))

(assert (=> b!5347698 m!6378732))

(assert (=> b!5347692 m!6378736))

(assert (=> b!5347692 m!6378736))

(assert (=> b!5347692 m!6378746))

(assert (=> b!5346673 d!1715084))

(declare-fun e!3320030 () Bool)

(declare-fun d!1715086 () Bool)

(assert (=> d!1715086 (= (matchZipper!1277 ((_ map or) lt!2179967 lt!2179966) (t!374617 s!2326)) e!3320030)))

(declare-fun res!2268921 () Bool)

(assert (=> d!1715086 (=> res!2268921 e!3320030)))

(assert (=> d!1715086 (= res!2268921 (matchZipper!1277 lt!2179967 (t!374617 s!2326)))))

(declare-fun lt!2180175 () Unit!153650)

(declare-fun choose!40109 ((InoxSet Context!8834) (InoxSet Context!8834) List!61400) Unit!153650)

(assert (=> d!1715086 (= lt!2180175 (choose!40109 lt!2179967 lt!2179966 (t!374617 s!2326)))))

(assert (=> d!1715086 (= (lemmaZipperConcatMatchesSameAsBothZippers!270 lt!2179967 lt!2179966 (t!374617 s!2326)) lt!2180175)))

(declare-fun b!5347717 () Bool)

(assert (=> b!5347717 (= e!3320030 (matchZipper!1277 lt!2179966 (t!374617 s!2326)))))

(assert (= (and d!1715086 (not res!2268921)) b!5347717))

(assert (=> d!1715086 m!6378346))

(assert (=> d!1715086 m!6378342))

(declare-fun m!6379350 () Bool)

(assert (=> d!1715086 m!6379350))

(assert (=> b!5347717 m!6378368))

(assert (=> b!5346674 d!1715086))

(assert (=> b!5346674 d!1714858))

(declare-fun d!1715092 () Bool)

(declare-fun c!930844 () Bool)

(assert (=> d!1715092 (= c!930844 (isEmpty!33249 (t!374617 s!2326)))))

(declare-fun e!3320031 () Bool)

(assert (=> d!1715092 (= (matchZipper!1277 ((_ map or) lt!2179967 lt!2179966) (t!374617 s!2326)) e!3320031)))

(declare-fun b!5347718 () Bool)

(assert (=> b!5347718 (= e!3320031 (nullableZipper!1374 ((_ map or) lt!2179967 lt!2179966)))))

(declare-fun b!5347719 () Bool)

(assert (=> b!5347719 (= e!3320031 (matchZipper!1277 (derivationStepZipper!1274 ((_ map or) lt!2179967 lt!2179966) (head!11465 (t!374617 s!2326))) (tail!10562 (t!374617 s!2326))))))

(assert (= (and d!1715092 c!930844) b!5347718))

(assert (= (and d!1715092 (not c!930844)) b!5347719))

(assert (=> d!1715092 m!6378444))

(declare-fun m!6379352 () Bool)

(assert (=> b!5347718 m!6379352))

(assert (=> b!5347719 m!6378448))

(assert (=> b!5347719 m!6378448))

(declare-fun m!6379354 () Bool)

(assert (=> b!5347719 m!6379354))

(assert (=> b!5347719 m!6378452))

(assert (=> b!5347719 m!6379354))

(assert (=> b!5347719 m!6378452))

(declare-fun m!6379356 () Bool)

(assert (=> b!5347719 m!6379356))

(assert (=> b!5346674 d!1715092))

(declare-fun d!1715094 () Bool)

(assert (=> d!1715094 (= (nullable!5202 (regOne!30578 (regOne!30578 r!7292))) (nullableFct!1526 (regOne!30578 (regOne!30578 r!7292))))))

(declare-fun bs!1239904 () Bool)

(assert (= bs!1239904 d!1715094))

(declare-fun m!6379358 () Bool)

(assert (=> bs!1239904 m!6379358))

(assert (=> b!5346693 d!1715094))

(declare-fun d!1715096 () Bool)

(assert (=> d!1715096 (= (isEmpty!33247 (t!374616 zl!343)) ((_ is Nil!61275) (t!374616 zl!343)))))

(assert (=> b!5346676 d!1715096))

(declare-fun b!5347738 () Bool)

(declare-fun e!3320041 () Bool)

(declare-fun tp!1485876 () Bool)

(assert (=> b!5347738 (= e!3320041 (and tp_is_empty!39319 tp!1485876))))

(assert (=> b!5346697 (= tp!1485870 e!3320041)))

(assert (= (and b!5346697 ((_ is Cons!61276) (t!374617 s!2326))) b!5347738))

(declare-fun e!3320048 () Bool)

(assert (=> b!5346679 (= tp!1485867 e!3320048)))

(declare-fun b!5347756 () Bool)

(declare-fun tp!1485892 () Bool)

(declare-fun tp!1485894 () Bool)

(assert (=> b!5347756 (= e!3320048 (and tp!1485892 tp!1485894))))

(declare-fun b!5347755 () Bool)

(assert (=> b!5347755 (= e!3320048 tp_is_empty!39319)))

(declare-fun b!5347758 () Bool)

(declare-fun tp!1485895 () Bool)

(declare-fun tp!1485891 () Bool)

(assert (=> b!5347758 (= e!3320048 (and tp!1485895 tp!1485891))))

(declare-fun b!5347757 () Bool)

(declare-fun tp!1485893 () Bool)

(assert (=> b!5347757 (= e!3320048 tp!1485893)))

(assert (= (and b!5346679 ((_ is ElementMatch!15033) (regOne!30578 r!7292))) b!5347755))

(assert (= (and b!5346679 ((_ is Concat!23878) (regOne!30578 r!7292))) b!5347756))

(assert (= (and b!5346679 ((_ is Star!15033) (regOne!30578 r!7292))) b!5347757))

(assert (= (and b!5346679 ((_ is Union!15033) (regOne!30578 r!7292))) b!5347758))

(declare-fun e!3320049 () Bool)

(assert (=> b!5346679 (= tp!1485872 e!3320049)))

(declare-fun b!5347760 () Bool)

(declare-fun tp!1485897 () Bool)

(declare-fun tp!1485899 () Bool)

(assert (=> b!5347760 (= e!3320049 (and tp!1485897 tp!1485899))))

(declare-fun b!5347759 () Bool)

(assert (=> b!5347759 (= e!3320049 tp_is_empty!39319)))

(declare-fun b!5347762 () Bool)

(declare-fun tp!1485900 () Bool)

(declare-fun tp!1485896 () Bool)

(assert (=> b!5347762 (= e!3320049 (and tp!1485900 tp!1485896))))

(declare-fun b!5347761 () Bool)

(declare-fun tp!1485898 () Bool)

(assert (=> b!5347761 (= e!3320049 tp!1485898)))

(assert (= (and b!5346679 ((_ is ElementMatch!15033) (regTwo!30578 r!7292))) b!5347759))

(assert (= (and b!5346679 ((_ is Concat!23878) (regTwo!30578 r!7292))) b!5347760))

(assert (= (and b!5346679 ((_ is Star!15033) (regTwo!30578 r!7292))) b!5347761))

(assert (= (and b!5346679 ((_ is Union!15033) (regTwo!30578 r!7292))) b!5347762))

(declare-fun b!5347773 () Bool)

(declare-fun e!3320056 () Bool)

(declare-fun tp!1485911 () Bool)

(declare-fun tp!1485912 () Bool)

(assert (=> b!5347773 (= e!3320056 (and tp!1485911 tp!1485912))))

(assert (=> b!5346694 (= tp!1485873 e!3320056)))

(assert (= (and b!5346694 ((_ is Cons!61274) (exprs!4917 setElem!34531))) b!5347773))

(declare-fun e!3320058 () Bool)

(assert (=> b!5346664 (= tp!1485869 e!3320058)))

(declare-fun b!5347776 () Bool)

(declare-fun tp!1485916 () Bool)

(declare-fun tp!1485918 () Bool)

(assert (=> b!5347776 (= e!3320058 (and tp!1485916 tp!1485918))))

(declare-fun b!5347775 () Bool)

(assert (=> b!5347775 (= e!3320058 tp_is_empty!39319)))

(declare-fun b!5347778 () Bool)

(declare-fun tp!1485919 () Bool)

(declare-fun tp!1485915 () Bool)

(assert (=> b!5347778 (= e!3320058 (and tp!1485919 tp!1485915))))

(declare-fun b!5347777 () Bool)

(declare-fun tp!1485917 () Bool)

(assert (=> b!5347777 (= e!3320058 tp!1485917)))

(assert (= (and b!5346664 ((_ is ElementMatch!15033) (reg!15362 r!7292))) b!5347775))

(assert (= (and b!5346664 ((_ is Concat!23878) (reg!15362 r!7292))) b!5347776))

(assert (= (and b!5346664 ((_ is Star!15033) (reg!15362 r!7292))) b!5347777))

(assert (= (and b!5346664 ((_ is Union!15033) (reg!15362 r!7292))) b!5347778))

(declare-fun condSetEmpty!34537 () Bool)

(assert (=> setNonEmpty!34531 (= condSetEmpty!34537 (= setRest!34531 ((as const (Array Context!8834 Bool)) false)))))

(declare-fun setRes!34537 () Bool)

(assert (=> setNonEmpty!34531 (= tp!1485868 setRes!34537)))

(declare-fun setIsEmpty!34537 () Bool)

(assert (=> setIsEmpty!34537 setRes!34537))

(declare-fun setNonEmpty!34537 () Bool)

(declare-fun setElem!34537 () Context!8834)

(declare-fun e!3320064 () Bool)

(declare-fun tp!1485930 () Bool)

(assert (=> setNonEmpty!34537 (= setRes!34537 (and tp!1485930 (inv!80829 setElem!34537) e!3320064))))

(declare-fun setRest!34537 () (InoxSet Context!8834))

(assert (=> setNonEmpty!34537 (= setRest!34531 ((_ map or) (store ((as const (Array Context!8834 Bool)) false) setElem!34537 true) setRest!34537))))

(declare-fun b!5347788 () Bool)

(declare-fun tp!1485931 () Bool)

(assert (=> b!5347788 (= e!3320064 tp!1485931)))

(assert (= (and setNonEmpty!34531 condSetEmpty!34537) setIsEmpty!34537))

(assert (= (and setNonEmpty!34531 (not condSetEmpty!34537)) setNonEmpty!34537))

(assert (= setNonEmpty!34537 b!5347788))

(declare-fun m!6379388 () Bool)

(assert (=> setNonEmpty!34537 m!6379388))

(declare-fun b!5347797 () Bool)

(declare-fun e!3320067 () Bool)

(declare-fun tp!1485936 () Bool)

(declare-fun tp!1485937 () Bool)

(assert (=> b!5347797 (= e!3320067 (and tp!1485936 tp!1485937))))

(assert (=> b!5346669 (= tp!1485866 e!3320067)))

(assert (= (and b!5346669 ((_ is Cons!61274) (exprs!4917 (h!67723 zl!343)))) b!5347797))

(declare-fun e!3320068 () Bool)

(assert (=> b!5346670 (= tp!1485865 e!3320068)))

(declare-fun b!5347801 () Bool)

(declare-fun tp!1485943 () Bool)

(declare-fun tp!1485945 () Bool)

(assert (=> b!5347801 (= e!3320068 (and tp!1485943 tp!1485945))))

(declare-fun b!5347800 () Bool)

(assert (=> b!5347800 (= e!3320068 tp_is_empty!39319)))

(declare-fun b!5347803 () Bool)

(declare-fun tp!1485948 () Bool)

(declare-fun tp!1485942 () Bool)

(assert (=> b!5347803 (= e!3320068 (and tp!1485948 tp!1485942))))

(declare-fun b!5347802 () Bool)

(declare-fun tp!1485944 () Bool)

(assert (=> b!5347802 (= e!3320068 tp!1485944)))

(assert (= (and b!5346670 ((_ is ElementMatch!15033) (regOne!30579 r!7292))) b!5347800))

(assert (= (and b!5346670 ((_ is Concat!23878) (regOne!30579 r!7292))) b!5347801))

(assert (= (and b!5346670 ((_ is Star!15033) (regOne!30579 r!7292))) b!5347802))

(assert (= (and b!5346670 ((_ is Union!15033) (regOne!30579 r!7292))) b!5347803))

(declare-fun e!3320069 () Bool)

(assert (=> b!5346670 (= tp!1485864 e!3320069)))

(declare-fun b!5347805 () Bool)

(declare-fun tp!1485950 () Bool)

(declare-fun tp!1485952 () Bool)

(assert (=> b!5347805 (= e!3320069 (and tp!1485950 tp!1485952))))

(declare-fun b!5347804 () Bool)

(assert (=> b!5347804 (= e!3320069 tp_is_empty!39319)))

(declare-fun b!5347807 () Bool)

(declare-fun tp!1485953 () Bool)

(declare-fun tp!1485949 () Bool)

(assert (=> b!5347807 (= e!3320069 (and tp!1485953 tp!1485949))))

(declare-fun b!5347806 () Bool)

(declare-fun tp!1485951 () Bool)

(assert (=> b!5347806 (= e!3320069 tp!1485951)))

(assert (= (and b!5346670 ((_ is ElementMatch!15033) (regTwo!30579 r!7292))) b!5347804))

(assert (= (and b!5346670 ((_ is Concat!23878) (regTwo!30579 r!7292))) b!5347805))

(assert (= (and b!5346670 ((_ is Star!15033) (regTwo!30579 r!7292))) b!5347806))

(assert (= (and b!5346670 ((_ is Union!15033) (regTwo!30579 r!7292))) b!5347807))

(declare-fun b!5347824 () Bool)

(declare-fun e!3320079 () Bool)

(declare-fun tp!1485967 () Bool)

(assert (=> b!5347824 (= e!3320079 tp!1485967)))

(declare-fun tp!1485968 () Bool)

(declare-fun b!5347823 () Bool)

(declare-fun e!3320078 () Bool)

(assert (=> b!5347823 (= e!3320078 (and (inv!80829 (h!67723 (t!374616 zl!343))) e!3320079 tp!1485968))))

(assert (=> b!5346665 (= tp!1485871 e!3320078)))

(assert (= b!5347823 b!5347824))

(assert (= (and b!5346665 ((_ is Cons!61275) (t!374616 zl!343))) b!5347823))

(declare-fun m!6379390 () Bool)

(assert (=> b!5347823 m!6379390))

(declare-fun b_lambda!205281 () Bool)

(assert (= b_lambda!205273 (or b!5346686 b_lambda!205281)))

(declare-fun bs!1239905 () Bool)

(declare-fun d!1715100 () Bool)

(assert (= bs!1239905 (and d!1715100 b!5346686)))

(assert (=> bs!1239905 (= (dynLambda!24221 lambda!274572 lt!2179978) (derivationStepZipperUp!405 lt!2179978 (h!67724 s!2326)))))

(assert (=> bs!1239905 m!6378354))

(assert (=> d!1714882 d!1715100))

(declare-fun b_lambda!205283 () Bool)

(assert (= b_lambda!205279 (or b!5346671 b_lambda!205283)))

(declare-fun bs!1239906 () Bool)

(declare-fun d!1715102 () Bool)

(assert (= bs!1239906 (and d!1715102 b!5346671)))

(assert (=> bs!1239906 (= (dynLambda!24223 lambda!274577 (h!67722 (t!374615 (exprs!4917 (h!67723 zl!343))))) (validRegex!6769 (h!67722 (t!374615 (exprs!4917 (h!67723 zl!343))))))))

(declare-fun m!6379392 () Bool)

(assert (=> bs!1239906 m!6379392))

(assert (=> b!5347593 d!1715102))

(declare-fun b_lambda!205285 () Bool)

(assert (= b_lambda!205275 (or b!5346686 b_lambda!205285)))

(declare-fun bs!1239907 () Bool)

(declare-fun d!1715104 () Bool)

(assert (= bs!1239907 (and d!1715104 b!5346686)))

(assert (=> bs!1239907 (= (dynLambda!24221 lambda!274572 (h!67723 zl!343)) (derivationStepZipperUp!405 (h!67723 zl!343) (h!67724 s!2326)))))

(assert (=> bs!1239907 m!6378306))

(assert (=> d!1714952 d!1715104))

(check-sat (not bs!1239907) (not d!1714998) tp_is_empty!39319 (not b!5347568) (not b!5347342) (not b!5347608) (not b!5347564) (not b!5347358) (not bs!1239905) (not b!5347802) (not d!1715080) (not b!5347692) (not b!5347678) (not b!5347717) (not b!5347442) (not bm!382162) (not bm!382244) (not b!5347465) (not d!1715042) (not d!1715066) (not d!1715018) (not b!5347438) (not bm!382261) (not b!5347502) (not d!1714936) (not d!1715084) (not b!5347105) (not d!1715030) (not b!5347174) (not b!5347449) (not b!5347023) (not b!5347429) (not b!5347361) (not b!5347440) (not b!5347318) (not b!5346830) (not b!5347163) (not b!5347567) (not d!1714954) (not d!1714896) (not b!5347414) (not bm!382253) (not bm!382213) (not b!5347323) (not bm!382256) (not b!5347689) (not b!5347497) (not b!5347756) (not b!5347448) (not bm!382160) (not b!5347450) (not b!5347671) (not b!5346922) (not b!5347693) (not bm!382245) (not b!5347618) (not b!5346963) (not b!5347359) (not bm!382232) (not b!5347687) (not b!5347594) (not d!1714952) (not b!5347760) (not b!5347416) (not b!5347298) (not b!5347674) (not bm!382186) (not bm!382252) (not b!5347823) (not b!5347258) (not b_lambda!205285) (not b!5347441) (not b!5347776) (not b!5347510) (not b!5346833) (not b!5347473) (not b!5347103) (not d!1715092) (not b!5347672) (not d!1715004) (not bm!382246) (not setNonEmpty!34537) (not d!1714916) (not b!5347719) (not b!5347182) (not b!5347165) (not b!5347363) (not bm!382259) (not bm!382181) (not b!5347362) (not b!5347364) (not b!5346835) (not b!5347718) (not b!5347778) (not b!5347115) (not d!1714850) (not b!5347649) (not d!1714912) (not b!5347108) (not b!5346960) (not b!5346994) (not d!1714986) (not b!5347297) (not b_lambda!205281) (not b!5347518) (not bm!382264) (not d!1714914) (not b!5347329) (not b!5347588) (not b!5347777) (not d!1715094) (not b!5347513) (not bm!382255) (not d!1714824) (not d!1714958) (not b!5347439) (not d!1714994) (not d!1714996) (not b!5347294) (not d!1714856) (not d!1715054) (not b!5347773) (not b!5346838) (not d!1715000) (not b!5346713) (not b!5347324) (not b!5347803) (not b!5347499) (not b!5346923) (not d!1714978) (not d!1715022) (not b!5347432) (not b!5347109) (not b!5347738) (not b!5347797) (not bm!382234) (not b!5346961) (not b!5346834) (not d!1715016) (not b!5347181) (not b!5347673) (not d!1714948) (not d!1714858) (not d!1715086) (not d!1715014) (not b!5346919) (not bm!382233) (not d!1714860) (not b!5347328) (not b!5347574) (not b!5347019) (not b!5347562) (not b!5346955) (not d!1714838) (not b!5346748) (not bm!382247) (not d!1714882) (not b!5347443) (not b!5347517) (not b!5347762) (not b!5347366) (not b!5347788) (not b!5347374) (not b!5347453) (not b!5347807) (not b!5346777) (not b!5347514) (not d!1714836) (not b!5347446) (not b!5347445) (not bm!382189) (not b!5347409) (not b!5346924) (not d!1714804) (not b!5347611) (not b!5346956) (not b!5346958) (not b!5347304) (not b!5347699) (not d!1715048) (not bm!382258) (not b!5346959) (not b_lambda!205283) (not b!5347515) (not b!5347314) (not d!1714872) (not d!1714970) (not b!5347508) (not b!5347451) (not b!5346837) (not b!5347433) (not b!5346779) (not d!1714894) (not b!5347573) (not b!5347758) (not b!5347684) (not d!1715028) (not b!5346921) (not b!5347677) (not d!1715058) (not b!5347376) (not b!5347427) (not b!5347417) (not bm!382254) (not bm!382183) (not b!5347303) (not b!5347176) (not b!5347503) (not d!1714992) (not b!5347606) (not b!5347344) (not b!5347470) (not b!5347617) (not b!5347468) (not b!5347413) (not b!5347805) (not b!5347256) (not b!5347612) (not d!1714980) (not b!5347114) (not b!5347679) (not b!5347292) (not b!5347824) (not b!5347761) (not b!5347801) (not bm!382249) (not d!1715038) (not b!5347509) (not d!1714840) (not b!5347412) (not b!5347806) (not bs!1239906) (not b!5347471) (not d!1715002) (not b!5347319) (not d!1714844) (not b!5347698) (not b!5347469) (not b!5346712) (not d!1715006) (not b!5347757) (not bm!382268) (not d!1715026) (not b!5347466) (not b!5347648) (not b!5346917) (not d!1715008) (not d!1714934) (not d!1714950))
(check-sat)
