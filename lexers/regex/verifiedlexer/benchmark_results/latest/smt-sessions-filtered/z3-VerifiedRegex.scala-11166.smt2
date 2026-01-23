; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!580676 () Bool)

(assert start!580676)

(declare-fun b!5590791 () Bool)

(assert (=> b!5590791 true))

(assert (=> b!5590791 true))

(declare-fun lambda!300075 () Int)

(declare-fun lambda!300074 () Int)

(assert (=> b!5590791 (not (= lambda!300075 lambda!300074))))

(assert (=> b!5590791 true))

(assert (=> b!5590791 true))

(declare-fun b!5590764 () Bool)

(assert (=> b!5590764 true))

(declare-fun b!5590760 () Bool)

(declare-fun e!3449134 () Bool)

(declare-fun e!3449144 () Bool)

(assert (=> b!5590760 (= e!3449134 e!3449144)))

(declare-fun res!2372031 () Bool)

(assert (=> b!5590760 (=> res!2372031 e!3449144)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31428 0))(
  ( (C!31429 (val!25416 Int)) )
))
(declare-datatypes ((Regex!15579 0))(
  ( (ElementMatch!15579 (c!979652 C!31428)) (Concat!24424 (regOne!31670 Regex!15579) (regTwo!31670 Regex!15579)) (EmptyExpr!15579) (Star!15579 (reg!15908 Regex!15579)) (EmptyLang!15579) (Union!15579 (regOne!31671 Regex!15579) (regTwo!31671 Regex!15579)) )
))
(declare-datatypes ((List!63036 0))(
  ( (Nil!62912) (Cons!62912 (h!69360 Regex!15579) (t!376314 List!63036)) )
))
(declare-datatypes ((Context!9926 0))(
  ( (Context!9927 (exprs!5463 List!63036)) )
))
(declare-fun lt!2255521 () (InoxSet Context!9926))

(declare-fun lt!2255522 () (InoxSet Context!9926))

(assert (=> b!5590760 (= res!2372031 (not (= lt!2255521 lt!2255522)))))

(declare-fun lt!2255543 () (InoxSet Context!9926))

(declare-fun lt!2255547 () (InoxSet Context!9926))

(assert (=> b!5590760 (= lt!2255522 ((_ map or) lt!2255543 lt!2255547))))

(declare-fun r!7292 () Regex!15579)

(declare-datatypes ((List!63037 0))(
  ( (Nil!62913) (Cons!62913 (h!69361 C!31428) (t!376315 List!63037)) )
))
(declare-fun s!2326 () List!63037)

(declare-fun lt!2255535 () Context!9926)

(declare-fun derivationStepZipperDown!921 (Regex!15579 Context!9926 C!31428) (InoxSet Context!9926))

(assert (=> b!5590760 (= lt!2255547 (derivationStepZipperDown!921 (regTwo!31671 (regOne!31670 r!7292)) lt!2255535 (h!69361 s!2326)))))

(assert (=> b!5590760 (= lt!2255543 (derivationStepZipperDown!921 (regOne!31671 (regOne!31670 r!7292)) lt!2255535 (h!69361 s!2326)))))

(declare-fun b!5590761 () Bool)

(declare-fun res!2372046 () Bool)

(declare-fun e!3449146 () Bool)

(assert (=> b!5590761 (=> res!2372046 e!3449146)))

(declare-datatypes ((List!63038 0))(
  ( (Nil!62914) (Cons!62914 (h!69362 Context!9926) (t!376316 List!63038)) )
))
(declare-fun zl!343 () List!63038)

(declare-fun isEmpty!34730 (List!63038) Bool)

(assert (=> b!5590761 (= res!2372046 (not (isEmpty!34730 (t!376316 zl!343))))))

(declare-fun b!5590762 () Bool)

(declare-fun e!3449141 () Bool)

(declare-fun tp_is_empty!40411 () Bool)

(declare-fun tp!1546328 () Bool)

(assert (=> b!5590762 (= e!3449141 (and tp_is_empty!40411 tp!1546328))))

(declare-fun b!5590763 () Bool)

(declare-datatypes ((Unit!155724 0))(
  ( (Unit!155725) )
))
(declare-fun e!3449137 () Unit!155724)

(declare-fun Unit!155726 () Unit!155724)

(assert (=> b!5590763 (= e!3449137 Unit!155726)))

(declare-fun e!3449132 () Bool)

(assert (=> b!5590764 (= e!3449132 e!3449134)))

(declare-fun res!2372041 () Bool)

(assert (=> b!5590764 (=> res!2372041 e!3449134)))

(get-info :version)

(assert (=> b!5590764 (= res!2372041 (or (and ((_ is ElementMatch!15579) (regOne!31670 r!7292)) (= (c!979652 (regOne!31670 r!7292)) (h!69361 s!2326))) (not ((_ is Union!15579) (regOne!31670 r!7292)))))))

(declare-fun lt!2255528 () Unit!155724)

(assert (=> b!5590764 (= lt!2255528 e!3449137)))

(declare-fun c!979650 () Bool)

(declare-fun nullable!5611 (Regex!15579) Bool)

(assert (=> b!5590764 (= c!979650 (nullable!5611 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9926))

(declare-fun lambda!300076 () Int)

(declare-fun flatMap!1192 ((InoxSet Context!9926) Int) (InoxSet Context!9926))

(declare-fun derivationStepZipperUp!847 (Context!9926 C!31428) (InoxSet Context!9926))

(assert (=> b!5590764 (= (flatMap!1192 z!1189 lambda!300076) (derivationStepZipperUp!847 (h!69362 zl!343) (h!69361 s!2326)))))

(declare-fun lt!2255526 () Unit!155724)

(declare-fun lemmaFlatMapOnSingletonSet!724 ((InoxSet Context!9926) Context!9926 Int) Unit!155724)

(assert (=> b!5590764 (= lt!2255526 (lemmaFlatMapOnSingletonSet!724 z!1189 (h!69362 zl!343) lambda!300076))))

(declare-fun lt!2255546 () (InoxSet Context!9926))

(assert (=> b!5590764 (= lt!2255546 (derivationStepZipperUp!847 lt!2255535 (h!69361 s!2326)))))

(assert (=> b!5590764 (= lt!2255521 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (h!69362 zl!343))) lt!2255535 (h!69361 s!2326)))))

(assert (=> b!5590764 (= lt!2255535 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun lt!2255523 () (InoxSet Context!9926))

(assert (=> b!5590764 (= lt!2255523 (derivationStepZipperUp!847 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))) (h!69361 s!2326)))))

(declare-fun b!5590765 () Bool)

(declare-fun e!3449135 () Bool)

(declare-fun tp!1546330 () Bool)

(assert (=> b!5590765 (= e!3449135 tp!1546330)))

(declare-fun b!5590766 () Bool)

(declare-fun e!3449133 () Bool)

(declare-fun matchZipper!1717 ((InoxSet Context!9926) List!63037) Bool)

(assert (=> b!5590766 (= e!3449133 (matchZipper!1717 lt!2255547 (t!376315 s!2326)))))

(declare-fun b!5590767 () Bool)

(declare-fun e!3449131 () Bool)

(assert (=> b!5590767 (= e!3449131 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(declare-fun e!3449142 () Bool)

(declare-fun b!5590769 () Bool)

(assert (=> b!5590769 (= e!3449142 (= (matchZipper!1717 z!1189 s!2326) e!3449131))))

(declare-fun res!2372048 () Bool)

(assert (=> b!5590769 (=> res!2372048 e!3449131)))

(declare-fun lt!2255534 () Bool)

(assert (=> b!5590769 (= res!2372048 lt!2255534)))

(declare-fun b!5590770 () Bool)

(declare-fun res!2372035 () Bool)

(assert (=> b!5590770 (=> res!2372035 e!3449146)))

(declare-fun generalisedConcat!1194 (List!63036) Regex!15579)

(assert (=> b!5590770 (= res!2372035 (not (= r!7292 (generalisedConcat!1194 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun b!5590771 () Bool)

(declare-fun e!3449149 () Bool)

(declare-fun tp!1546331 () Bool)

(declare-fun tp!1546326 () Bool)

(assert (=> b!5590771 (= e!3449149 (and tp!1546331 tp!1546326))))

(declare-fun b!5590772 () Bool)

(declare-fun e!3449139 () Unit!155724)

(declare-fun Unit!155727 () Unit!155724)

(assert (=> b!5590772 (= e!3449139 Unit!155727)))

(declare-fun b!5590773 () Bool)

(declare-fun res!2372034 () Bool)

(assert (=> b!5590773 (=> res!2372034 e!3449146)))

(declare-fun generalisedUnion!1442 (List!63036) Regex!15579)

(declare-fun unfocusZipperList!1007 (List!63038) List!63036)

(assert (=> b!5590773 (= res!2372034 (not (= r!7292 (generalisedUnion!1442 (unfocusZipperList!1007 zl!343)))))))

(declare-fun b!5590774 () Bool)

(assert (=> b!5590774 (= e!3449149 tp_is_empty!40411)))

(declare-fun e!3449145 () Bool)

(declare-fun setRes!37261 () Bool)

(declare-fun setElem!37261 () Context!9926)

(declare-fun setNonEmpty!37261 () Bool)

(declare-fun tp!1546323 () Bool)

(declare-fun inv!82194 (Context!9926) Bool)

(assert (=> setNonEmpty!37261 (= setRes!37261 (and tp!1546323 (inv!82194 setElem!37261) e!3449145))))

(declare-fun setRest!37261 () (InoxSet Context!9926))

(assert (=> setNonEmpty!37261 (= z!1189 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) setElem!37261 true) setRest!37261))))

(declare-fun b!5590775 () Bool)

(declare-fun e!3449136 () Bool)

(assert (=> b!5590775 (= e!3449136 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(declare-fun b!5590776 () Bool)

(declare-fun tp!1546327 () Bool)

(assert (=> b!5590776 (= e!3449145 tp!1546327)))

(declare-fun b!5590777 () Bool)

(declare-fun tp!1546325 () Bool)

(declare-fun tp!1546329 () Bool)

(assert (=> b!5590777 (= e!3449149 (and tp!1546325 tp!1546329))))

(declare-fun b!5590778 () Bool)

(declare-fun tp!1546322 () Bool)

(declare-fun e!3449138 () Bool)

(assert (=> b!5590778 (= e!3449138 (and (inv!82194 (h!69362 zl!343)) e!3449135 tp!1546322))))

(declare-fun b!5590779 () Bool)

(declare-fun e!3449140 () Bool)

(assert (=> b!5590779 (= e!3449140 (not e!3449146))))

(declare-fun res!2372036 () Bool)

(assert (=> b!5590779 (=> res!2372036 e!3449146)))

(assert (=> b!5590779 (= res!2372036 (not ((_ is Cons!62914) zl!343)))))

(declare-fun lt!2255524 () Bool)

(declare-fun matchRSpec!2682 (Regex!15579 List!63037) Bool)

(assert (=> b!5590779 (= lt!2255524 (matchRSpec!2682 r!7292 s!2326))))

(declare-fun matchR!7764 (Regex!15579 List!63037) Bool)

(assert (=> b!5590779 (= lt!2255524 (matchR!7764 r!7292 s!2326))))

(declare-fun lt!2255537 () Unit!155724)

(declare-fun mainMatchTheorem!2682 (Regex!15579 List!63037) Unit!155724)

(assert (=> b!5590779 (= lt!2255537 (mainMatchTheorem!2682 r!7292 s!2326))))

(declare-fun b!5590780 () Bool)

(declare-fun res!2372029 () Bool)

(assert (=> b!5590780 (=> (not res!2372029) (not e!3449140))))

(declare-fun unfocusZipper!1321 (List!63038) Regex!15579)

(assert (=> b!5590780 (= res!2372029 (= r!7292 (unfocusZipper!1321 zl!343)))))

(declare-fun setIsEmpty!37261 () Bool)

(assert (=> setIsEmpty!37261 setRes!37261))

(declare-fun b!5590781 () Bool)

(declare-fun res!2372037 () Bool)

(assert (=> b!5590781 (=> (not res!2372037) (not e!3449140))))

(declare-fun toList!9363 ((InoxSet Context!9926)) List!63038)

(assert (=> b!5590781 (= res!2372037 (= (toList!9363 z!1189) zl!343))))

(declare-fun b!5590768 () Bool)

(declare-fun e!3449147 () Bool)

(assert (=> b!5590768 (= e!3449147 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(declare-fun res!2372045 () Bool)

(assert (=> start!580676 (=> (not res!2372045) (not e!3449140))))

(declare-fun validRegex!7315 (Regex!15579) Bool)

(assert (=> start!580676 (= res!2372045 (validRegex!7315 r!7292))))

(assert (=> start!580676 e!3449140))

(assert (=> start!580676 e!3449149))

(declare-fun condSetEmpty!37261 () Bool)

(assert (=> start!580676 (= condSetEmpty!37261 (= z!1189 ((as const (Array Context!9926 Bool)) false)))))

(assert (=> start!580676 setRes!37261))

(assert (=> start!580676 e!3449138))

(assert (=> start!580676 e!3449141))

(declare-fun b!5590782 () Bool)

(declare-fun Unit!155728 () Unit!155724)

(assert (=> b!5590782 (= e!3449137 Unit!155728)))

(declare-fun lt!2255541 () Unit!155724)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!604 ((InoxSet Context!9926) (InoxSet Context!9926) List!63037) Unit!155724)

(assert (=> b!5590782 (= lt!2255541 (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255521 lt!2255546 (t!376315 s!2326)))))

(declare-fun res!2372033 () Bool)

(assert (=> b!5590782 (= res!2372033 (matchZipper!1717 lt!2255521 (t!376315 s!2326)))))

(declare-fun e!3449150 () Bool)

(assert (=> b!5590782 (=> res!2372033 e!3449150)))

(assert (=> b!5590782 (= (matchZipper!1717 ((_ map or) lt!2255521 lt!2255546) (t!376315 s!2326)) e!3449150)))

(declare-fun b!5590783 () Bool)

(declare-fun res!2372027 () Bool)

(assert (=> b!5590783 (=> res!2372027 e!3449142)))

(declare-fun lt!2255520 () Bool)

(declare-fun lt!2255549 () Bool)

(assert (=> b!5590783 (= res!2372027 (and (not lt!2255520) (not lt!2255549)))))

(declare-fun b!5590784 () Bool)

(declare-fun res!2372039 () Bool)

(assert (=> b!5590784 (=> res!2372039 e!3449146)))

(assert (=> b!5590784 (= res!2372039 (or ((_ is EmptyExpr!15579) r!7292) ((_ is EmptyLang!15579) r!7292) ((_ is ElementMatch!15579) r!7292) ((_ is Union!15579) r!7292) (not ((_ is Concat!24424) r!7292))))))

(declare-fun b!5590785 () Bool)

(declare-fun tp!1546324 () Bool)

(assert (=> b!5590785 (= e!3449149 tp!1546324)))

(declare-fun b!5590786 () Bool)

(declare-fun e!3449130 () Bool)

(assert (=> b!5590786 (= e!3449144 e!3449130)))

(declare-fun res!2372040 () Bool)

(assert (=> b!5590786 (=> res!2372040 e!3449130)))

(declare-fun e!3449143 () Bool)

(assert (=> b!5590786 (= res!2372040 e!3449143)))

(declare-fun res!2372032 () Bool)

(assert (=> b!5590786 (=> (not res!2372032) (not e!3449143))))

(declare-fun lt!2255550 () Bool)

(assert (=> b!5590786 (= res!2372032 (not (= (matchZipper!1717 lt!2255521 (t!376315 s!2326)) lt!2255550)))))

(declare-fun lt!2255529 () Bool)

(assert (=> b!5590786 (= lt!2255529 lt!2255534)))

(assert (=> b!5590786 (= lt!2255534 e!3449133)))

(declare-fun res!2372038 () Bool)

(assert (=> b!5590786 (=> res!2372038 e!3449133)))

(assert (=> b!5590786 (= res!2372038 lt!2255550)))

(assert (=> b!5590786 (= lt!2255529 (matchZipper!1717 lt!2255522 (t!376315 s!2326)))))

(assert (=> b!5590786 (= lt!2255550 (matchZipper!1717 lt!2255543 (t!376315 s!2326)))))

(declare-fun lt!2255532 () Unit!155724)

(assert (=> b!5590786 (= lt!2255532 (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255543 lt!2255547 (t!376315 s!2326)))))

(declare-fun b!5590787 () Bool)

(declare-fun res!2372028 () Bool)

(assert (=> b!5590787 (=> res!2372028 e!3449132)))

(declare-fun isEmpty!34731 (List!63036) Bool)

(assert (=> b!5590787 (= res!2372028 (isEmpty!34731 (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5590788 () Bool)

(assert (=> b!5590788 (= e!3449143 (not (matchZipper!1717 lt!2255547 (t!376315 s!2326))))))

(declare-fun b!5590789 () Bool)

(assert (=> b!5590789 (= e!3449150 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(declare-fun b!5590790 () Bool)

(declare-fun e!3449148 () Unit!155724)

(declare-fun Unit!155729 () Unit!155724)

(assert (=> b!5590790 (= e!3449148 Unit!155729)))

(assert (=> b!5590791 (= e!3449146 e!3449132)))

(declare-fun res!2372044 () Bool)

(assert (=> b!5590791 (=> res!2372044 e!3449132)))

(declare-fun lt!2255548 () Bool)

(assert (=> b!5590791 (= res!2372044 (or (not (= lt!2255524 lt!2255548)) ((_ is Nil!62913) s!2326)))))

(declare-fun Exists!2679 (Int) Bool)

(assert (=> b!5590791 (= (Exists!2679 lambda!300074) (Exists!2679 lambda!300075))))

(declare-fun lt!2255525 () Unit!155724)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1308 (Regex!15579 Regex!15579 List!63037) Unit!155724)

(assert (=> b!5590791 (= lt!2255525 (lemmaExistCutMatchRandMatchRSpecEquivalent!1308 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326))))

(assert (=> b!5590791 (= lt!2255548 (Exists!2679 lambda!300074))))

(declare-datatypes ((tuple2!65352 0))(
  ( (tuple2!65353 (_1!35979 List!63037) (_2!35979 List!63037)) )
))
(declare-datatypes ((Option!15588 0))(
  ( (None!15587) (Some!15587 (v!51628 tuple2!65352)) )
))
(declare-fun isDefined!12291 (Option!15588) Bool)

(declare-fun findConcatSeparation!2002 (Regex!15579 Regex!15579 List!63037 List!63037 List!63037) Option!15588)

(assert (=> b!5590791 (= lt!2255548 (isDefined!12291 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326)))))

(declare-fun lt!2255531 () Unit!155724)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1766 (Regex!15579 Regex!15579 List!63037) Unit!155724)

(assert (=> b!5590791 (= lt!2255531 (lemmaFindConcatSeparationEquivalentToExists!1766 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326))))

(declare-fun b!5590792 () Bool)

(declare-fun Unit!155730 () Unit!155724)

(assert (=> b!5590792 (= e!3449148 Unit!155730)))

(declare-fun lt!2255533 () Unit!155724)

(assert (=> b!5590792 (= lt!2255533 (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255547 lt!2255546 (t!376315 s!2326)))))

(declare-fun res!2372030 () Bool)

(assert (=> b!5590792 (= res!2372030 (matchZipper!1717 lt!2255547 (t!376315 s!2326)))))

(assert (=> b!5590792 (=> res!2372030 e!3449136)))

(assert (=> b!5590792 (= (matchZipper!1717 ((_ map or) lt!2255547 lt!2255546) (t!376315 s!2326)) e!3449136)))

(declare-fun b!5590793 () Bool)

(declare-fun res!2372043 () Bool)

(assert (=> b!5590793 (=> res!2372043 e!3449146)))

(assert (=> b!5590793 (= res!2372043 (not ((_ is Cons!62912) (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5590794 () Bool)

(assert (=> b!5590794 (= e!3449130 e!3449142)))

(declare-fun res!2372042 () Bool)

(assert (=> b!5590794 (=> res!2372042 e!3449142)))

(assert (=> b!5590794 (= res!2372042 (not (nullable!5611 (regOne!31670 r!7292))))))

(declare-fun lt!2255542 () Unit!155724)

(assert (=> b!5590794 (= lt!2255542 e!3449148)))

(declare-fun c!979651 () Bool)

(assert (=> b!5590794 (= c!979651 lt!2255549)))

(assert (=> b!5590794 (= lt!2255549 (nullable!5611 (regTwo!31671 (regOne!31670 r!7292))))))

(declare-fun lt!2255538 () (InoxSet Context!9926))

(declare-fun lt!2255544 () Context!9926)

(assert (=> b!5590794 (= (flatMap!1192 lt!2255538 lambda!300076) (derivationStepZipperUp!847 lt!2255544 (h!69361 s!2326)))))

(declare-fun lt!2255518 () Unit!155724)

(assert (=> b!5590794 (= lt!2255518 (lemmaFlatMapOnSingletonSet!724 lt!2255538 lt!2255544 lambda!300076))))

(declare-fun lt!2255530 () (InoxSet Context!9926))

(assert (=> b!5590794 (= lt!2255530 (derivationStepZipperUp!847 lt!2255544 (h!69361 s!2326)))))

(declare-fun lt!2255527 () Unit!155724)

(assert (=> b!5590794 (= lt!2255527 e!3449139)))

(declare-fun c!979649 () Bool)

(assert (=> b!5590794 (= c!979649 lt!2255520)))

(assert (=> b!5590794 (= lt!2255520 (nullable!5611 (regOne!31671 (regOne!31670 r!7292))))))

(declare-fun lt!2255536 () Context!9926)

(declare-fun lt!2255540 () (InoxSet Context!9926))

(assert (=> b!5590794 (= (flatMap!1192 lt!2255540 lambda!300076) (derivationStepZipperUp!847 lt!2255536 (h!69361 s!2326)))))

(declare-fun lt!2255539 () Unit!155724)

(assert (=> b!5590794 (= lt!2255539 (lemmaFlatMapOnSingletonSet!724 lt!2255540 lt!2255536 lambda!300076))))

(declare-fun lt!2255545 () (InoxSet Context!9926))

(assert (=> b!5590794 (= lt!2255545 (derivationStepZipperUp!847 lt!2255536 (h!69361 s!2326)))))

(assert (=> b!5590794 (= lt!2255538 (store ((as const (Array Context!9926 Bool)) false) lt!2255544 true))))

(assert (=> b!5590794 (= lt!2255544 (Context!9927 (Cons!62912 (regTwo!31671 (regOne!31670 r!7292)) (t!376314 (exprs!5463 (h!69362 zl!343))))))))

(assert (=> b!5590794 (= lt!2255540 (store ((as const (Array Context!9926 Bool)) false) lt!2255536 true))))

(assert (=> b!5590794 (= lt!2255536 (Context!9927 (Cons!62912 (regOne!31671 (regOne!31670 r!7292)) (t!376314 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun b!5590795 () Bool)

(declare-fun Unit!155731 () Unit!155724)

(assert (=> b!5590795 (= e!3449139 Unit!155731)))

(declare-fun lt!2255519 () Unit!155724)

(assert (=> b!5590795 (= lt!2255519 (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255543 lt!2255546 (t!376315 s!2326)))))

(declare-fun res!2372047 () Bool)

(assert (=> b!5590795 (= res!2372047 lt!2255550)))

(assert (=> b!5590795 (=> res!2372047 e!3449147)))

(assert (=> b!5590795 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255546) (t!376315 s!2326)) e!3449147)))

(assert (= (and start!580676 res!2372045) b!5590781))

(assert (= (and b!5590781 res!2372037) b!5590780))

(assert (= (and b!5590780 res!2372029) b!5590779))

(assert (= (and b!5590779 (not res!2372036)) b!5590761))

(assert (= (and b!5590761 (not res!2372046)) b!5590770))

(assert (= (and b!5590770 (not res!2372035)) b!5590793))

(assert (= (and b!5590793 (not res!2372043)) b!5590773))

(assert (= (and b!5590773 (not res!2372034)) b!5590784))

(assert (= (and b!5590784 (not res!2372039)) b!5590791))

(assert (= (and b!5590791 (not res!2372044)) b!5590787))

(assert (= (and b!5590787 (not res!2372028)) b!5590764))

(assert (= (and b!5590764 c!979650) b!5590782))

(assert (= (and b!5590764 (not c!979650)) b!5590763))

(assert (= (and b!5590782 (not res!2372033)) b!5590789))

(assert (= (and b!5590764 (not res!2372041)) b!5590760))

(assert (= (and b!5590760 (not res!2372031)) b!5590786))

(assert (= (and b!5590786 (not res!2372038)) b!5590766))

(assert (= (and b!5590786 res!2372032) b!5590788))

(assert (= (and b!5590786 (not res!2372040)) b!5590794))

(assert (= (and b!5590794 c!979649) b!5590795))

(assert (= (and b!5590794 (not c!979649)) b!5590772))

(assert (= (and b!5590795 (not res!2372047)) b!5590768))

(assert (= (and b!5590794 c!979651) b!5590792))

(assert (= (and b!5590794 (not c!979651)) b!5590790))

(assert (= (and b!5590792 (not res!2372030)) b!5590775))

(assert (= (and b!5590794 (not res!2372042)) b!5590783))

(assert (= (and b!5590783 (not res!2372027)) b!5590769))

(assert (= (and b!5590769 (not res!2372048)) b!5590767))

(assert (= (and start!580676 ((_ is ElementMatch!15579) r!7292)) b!5590774))

(assert (= (and start!580676 ((_ is Concat!24424) r!7292)) b!5590777))

(assert (= (and start!580676 ((_ is Star!15579) r!7292)) b!5590785))

(assert (= (and start!580676 ((_ is Union!15579) r!7292)) b!5590771))

(assert (= (and start!580676 condSetEmpty!37261) setIsEmpty!37261))

(assert (= (and start!580676 (not condSetEmpty!37261)) setNonEmpty!37261))

(assert (= setNonEmpty!37261 b!5590776))

(assert (= b!5590778 b!5590765))

(assert (= (and start!580676 ((_ is Cons!62914) zl!343)) b!5590778))

(assert (= (and start!580676 ((_ is Cons!62913) s!2326)) b!5590762))

(declare-fun m!6570786 () Bool)

(assert (=> b!5590789 m!6570786))

(declare-fun m!6570788 () Bool)

(assert (=> b!5590778 m!6570788))

(declare-fun m!6570790 () Bool)

(assert (=> b!5590791 m!6570790))

(declare-fun m!6570792 () Bool)

(assert (=> b!5590791 m!6570792))

(declare-fun m!6570794 () Bool)

(assert (=> b!5590791 m!6570794))

(assert (=> b!5590791 m!6570790))

(declare-fun m!6570796 () Bool)

(assert (=> b!5590791 m!6570796))

(declare-fun m!6570798 () Bool)

(assert (=> b!5590791 m!6570798))

(assert (=> b!5590791 m!6570792))

(declare-fun m!6570800 () Bool)

(assert (=> b!5590791 m!6570800))

(declare-fun m!6570802 () Bool)

(assert (=> b!5590766 m!6570802))

(declare-fun m!6570804 () Bool)

(assert (=> setNonEmpty!37261 m!6570804))

(declare-fun m!6570806 () Bool)

(assert (=> b!5590773 m!6570806))

(assert (=> b!5590773 m!6570806))

(declare-fun m!6570808 () Bool)

(assert (=> b!5590773 m!6570808))

(declare-fun m!6570810 () Bool)

(assert (=> b!5590781 m!6570810))

(declare-fun m!6570812 () Bool)

(assert (=> b!5590779 m!6570812))

(declare-fun m!6570814 () Bool)

(assert (=> b!5590779 m!6570814))

(declare-fun m!6570816 () Bool)

(assert (=> b!5590779 m!6570816))

(declare-fun m!6570818 () Bool)

(assert (=> b!5590769 m!6570818))

(assert (=> b!5590768 m!6570786))

(declare-fun m!6570820 () Bool)

(assert (=> b!5590787 m!6570820))

(declare-fun m!6570822 () Bool)

(assert (=> b!5590760 m!6570822))

(declare-fun m!6570824 () Bool)

(assert (=> b!5590760 m!6570824))

(declare-fun m!6570826 () Bool)

(assert (=> b!5590794 m!6570826))

(declare-fun m!6570828 () Bool)

(assert (=> b!5590794 m!6570828))

(declare-fun m!6570830 () Bool)

(assert (=> b!5590794 m!6570830))

(declare-fun m!6570832 () Bool)

(assert (=> b!5590794 m!6570832))

(declare-fun m!6570834 () Bool)

(assert (=> b!5590794 m!6570834))

(declare-fun m!6570836 () Bool)

(assert (=> b!5590794 m!6570836))

(declare-fun m!6570838 () Bool)

(assert (=> b!5590794 m!6570838))

(declare-fun m!6570840 () Bool)

(assert (=> b!5590794 m!6570840))

(declare-fun m!6570842 () Bool)

(assert (=> b!5590794 m!6570842))

(declare-fun m!6570844 () Bool)

(assert (=> b!5590794 m!6570844))

(declare-fun m!6570846 () Bool)

(assert (=> b!5590794 m!6570846))

(declare-fun m!6570848 () Bool)

(assert (=> b!5590786 m!6570848))

(declare-fun m!6570850 () Bool)

(assert (=> b!5590786 m!6570850))

(declare-fun m!6570852 () Bool)

(assert (=> b!5590786 m!6570852))

(declare-fun m!6570854 () Bool)

(assert (=> b!5590786 m!6570854))

(declare-fun m!6570856 () Bool)

(assert (=> b!5590780 m!6570856))

(declare-fun m!6570858 () Bool)

(assert (=> start!580676 m!6570858))

(assert (=> b!5590775 m!6570786))

(assert (=> b!5590767 m!6570786))

(declare-fun m!6570860 () Bool)

(assert (=> b!5590795 m!6570860))

(declare-fun m!6570862 () Bool)

(assert (=> b!5590795 m!6570862))

(declare-fun m!6570864 () Bool)

(assert (=> b!5590761 m!6570864))

(declare-fun m!6570866 () Bool)

(assert (=> b!5590770 m!6570866))

(declare-fun m!6570868 () Bool)

(assert (=> b!5590782 m!6570868))

(assert (=> b!5590782 m!6570848))

(declare-fun m!6570870 () Bool)

(assert (=> b!5590782 m!6570870))

(assert (=> b!5590788 m!6570802))

(declare-fun m!6570872 () Bool)

(assert (=> b!5590764 m!6570872))

(declare-fun m!6570874 () Bool)

(assert (=> b!5590764 m!6570874))

(declare-fun m!6570876 () Bool)

(assert (=> b!5590764 m!6570876))

(declare-fun m!6570878 () Bool)

(assert (=> b!5590764 m!6570878))

(declare-fun m!6570880 () Bool)

(assert (=> b!5590764 m!6570880))

(declare-fun m!6570882 () Bool)

(assert (=> b!5590764 m!6570882))

(declare-fun m!6570884 () Bool)

(assert (=> b!5590764 m!6570884))

(declare-fun m!6570886 () Bool)

(assert (=> b!5590792 m!6570886))

(assert (=> b!5590792 m!6570802))

(declare-fun m!6570888 () Bool)

(assert (=> b!5590792 m!6570888))

(check-sat (not start!580676) (not b!5590785) (not b!5590773) (not b!5590770) (not b!5590791) (not b!5590789) (not b!5590779) (not b!5590776) (not b!5590765) (not b!5590760) (not b!5590766) (not b!5590792) (not b!5590761) (not setNonEmpty!37261) (not b!5590778) (not b!5590794) (not b!5590769) (not b!5590771) tp_is_empty!40411 (not b!5590767) (not b!5590795) (not b!5590764) (not b!5590788) (not b!5590786) (not b!5590782) (not b!5590780) (not b!5590762) (not b!5590781) (not b!5590768) (not b!5590777) (not b!5590775) (not b!5590787))
(check-sat)
(get-model)

(declare-fun d!1767137 () Bool)

(declare-fun c!979765 () Bool)

(declare-fun isEmpty!34734 (List!63037) Bool)

(assert (=> d!1767137 (= c!979765 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449374 () Bool)

(assert (=> d!1767137 (= (matchZipper!1717 lt!2255546 (t!376315 s!2326)) e!3449374)))

(declare-fun b!5591198 () Bool)

(declare-fun nullableZipper!1574 ((InoxSet Context!9926)) Bool)

(assert (=> b!5591198 (= e!3449374 (nullableZipper!1574 lt!2255546))))

(declare-fun b!5591199 () Bool)

(declare-fun derivationStepZipper!1678 ((InoxSet Context!9926) C!31428) (InoxSet Context!9926))

(declare-fun head!11927 (List!63037) C!31428)

(declare-fun tail!11022 (List!63037) List!63037)

(assert (=> b!5591199 (= e!3449374 (matchZipper!1717 (derivationStepZipper!1678 lt!2255546 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767137 c!979765) b!5591198))

(assert (= (and d!1767137 (not c!979765)) b!5591199))

(declare-fun m!6571168 () Bool)

(assert (=> d!1767137 m!6571168))

(declare-fun m!6571170 () Bool)

(assert (=> b!5591198 m!6571170))

(declare-fun m!6571172 () Bool)

(assert (=> b!5591199 m!6571172))

(assert (=> b!5591199 m!6571172))

(declare-fun m!6571174 () Bool)

(assert (=> b!5591199 m!6571174))

(declare-fun m!6571176 () Bool)

(assert (=> b!5591199 m!6571176))

(assert (=> b!5591199 m!6571174))

(assert (=> b!5591199 m!6571176))

(declare-fun m!6571178 () Bool)

(assert (=> b!5591199 m!6571178))

(assert (=> b!5590768 d!1767137))

(declare-fun d!1767139 () Bool)

(assert (=> d!1767139 (= (isEmpty!34731 (t!376314 (exprs!5463 (h!69362 zl!343)))) ((_ is Nil!62912) (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> b!5590787 d!1767139))

(declare-fun d!1767141 () Bool)

(declare-fun c!979766 () Bool)

(assert (=> d!1767141 (= c!979766 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449375 () Bool)

(assert (=> d!1767141 (= (matchZipper!1717 lt!2255521 (t!376315 s!2326)) e!3449375)))

(declare-fun b!5591200 () Bool)

(assert (=> b!5591200 (= e!3449375 (nullableZipper!1574 lt!2255521))))

(declare-fun b!5591201 () Bool)

(assert (=> b!5591201 (= e!3449375 (matchZipper!1717 (derivationStepZipper!1678 lt!2255521 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767141 c!979766) b!5591200))

(assert (= (and d!1767141 (not c!979766)) b!5591201))

(assert (=> d!1767141 m!6571168))

(declare-fun m!6571180 () Bool)

(assert (=> b!5591200 m!6571180))

(assert (=> b!5591201 m!6571172))

(assert (=> b!5591201 m!6571172))

(declare-fun m!6571182 () Bool)

(assert (=> b!5591201 m!6571182))

(assert (=> b!5591201 m!6571176))

(assert (=> b!5591201 m!6571182))

(assert (=> b!5591201 m!6571176))

(declare-fun m!6571184 () Bool)

(assert (=> b!5591201 m!6571184))

(assert (=> b!5590786 d!1767141))

(declare-fun d!1767143 () Bool)

(declare-fun c!979767 () Bool)

(assert (=> d!1767143 (= c!979767 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449376 () Bool)

(assert (=> d!1767143 (= (matchZipper!1717 lt!2255522 (t!376315 s!2326)) e!3449376)))

(declare-fun b!5591202 () Bool)

(assert (=> b!5591202 (= e!3449376 (nullableZipper!1574 lt!2255522))))

(declare-fun b!5591203 () Bool)

(assert (=> b!5591203 (= e!3449376 (matchZipper!1717 (derivationStepZipper!1678 lt!2255522 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767143 c!979767) b!5591202))

(assert (= (and d!1767143 (not c!979767)) b!5591203))

(assert (=> d!1767143 m!6571168))

(declare-fun m!6571186 () Bool)

(assert (=> b!5591202 m!6571186))

(assert (=> b!5591203 m!6571172))

(assert (=> b!5591203 m!6571172))

(declare-fun m!6571188 () Bool)

(assert (=> b!5591203 m!6571188))

(assert (=> b!5591203 m!6571176))

(assert (=> b!5591203 m!6571188))

(assert (=> b!5591203 m!6571176))

(declare-fun m!6571190 () Bool)

(assert (=> b!5591203 m!6571190))

(assert (=> b!5590786 d!1767143))

(declare-fun d!1767145 () Bool)

(declare-fun c!979768 () Bool)

(assert (=> d!1767145 (= c!979768 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449377 () Bool)

(assert (=> d!1767145 (= (matchZipper!1717 lt!2255543 (t!376315 s!2326)) e!3449377)))

(declare-fun b!5591204 () Bool)

(assert (=> b!5591204 (= e!3449377 (nullableZipper!1574 lt!2255543))))

(declare-fun b!5591205 () Bool)

(assert (=> b!5591205 (= e!3449377 (matchZipper!1717 (derivationStepZipper!1678 lt!2255543 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767145 c!979768) b!5591204))

(assert (= (and d!1767145 (not c!979768)) b!5591205))

(assert (=> d!1767145 m!6571168))

(declare-fun m!6571192 () Bool)

(assert (=> b!5591204 m!6571192))

(assert (=> b!5591205 m!6571172))

(assert (=> b!5591205 m!6571172))

(declare-fun m!6571194 () Bool)

(assert (=> b!5591205 m!6571194))

(assert (=> b!5591205 m!6571176))

(assert (=> b!5591205 m!6571194))

(assert (=> b!5591205 m!6571176))

(declare-fun m!6571196 () Bool)

(assert (=> b!5591205 m!6571196))

(assert (=> b!5590786 d!1767145))

(declare-fun d!1767147 () Bool)

(declare-fun e!3449380 () Bool)

(assert (=> d!1767147 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255547) (t!376315 s!2326)) e!3449380)))

(declare-fun res!2372169 () Bool)

(assert (=> d!1767147 (=> res!2372169 e!3449380)))

(assert (=> d!1767147 (= res!2372169 (matchZipper!1717 lt!2255543 (t!376315 s!2326)))))

(declare-fun lt!2255600 () Unit!155724)

(declare-fun choose!42400 ((InoxSet Context!9926) (InoxSet Context!9926) List!63037) Unit!155724)

(assert (=> d!1767147 (= lt!2255600 (choose!42400 lt!2255543 lt!2255547 (t!376315 s!2326)))))

(assert (=> d!1767147 (= (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255543 lt!2255547 (t!376315 s!2326)) lt!2255600)))

(declare-fun b!5591208 () Bool)

(assert (=> b!5591208 (= e!3449380 (matchZipper!1717 lt!2255547 (t!376315 s!2326)))))

(assert (= (and d!1767147 (not res!2372169)) b!5591208))

(declare-fun m!6571198 () Bool)

(assert (=> d!1767147 m!6571198))

(assert (=> d!1767147 m!6570852))

(declare-fun m!6571200 () Bool)

(assert (=> d!1767147 m!6571200))

(assert (=> b!5591208 m!6570802))

(assert (=> b!5590786 d!1767147))

(assert (=> b!5590767 d!1767137))

(declare-fun d!1767149 () Bool)

(declare-fun c!979769 () Bool)

(assert (=> d!1767149 (= c!979769 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449381 () Bool)

(assert (=> d!1767149 (= (matchZipper!1717 lt!2255547 (t!376315 s!2326)) e!3449381)))

(declare-fun b!5591209 () Bool)

(assert (=> b!5591209 (= e!3449381 (nullableZipper!1574 lt!2255547))))

(declare-fun b!5591210 () Bool)

(assert (=> b!5591210 (= e!3449381 (matchZipper!1717 (derivationStepZipper!1678 lt!2255547 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767149 c!979769) b!5591209))

(assert (= (and d!1767149 (not c!979769)) b!5591210))

(assert (=> d!1767149 m!6571168))

(declare-fun m!6571202 () Bool)

(assert (=> b!5591209 m!6571202))

(assert (=> b!5591210 m!6571172))

(assert (=> b!5591210 m!6571172))

(declare-fun m!6571204 () Bool)

(assert (=> b!5591210 m!6571204))

(assert (=> b!5591210 m!6571176))

(assert (=> b!5591210 m!6571204))

(assert (=> b!5591210 m!6571176))

(declare-fun m!6571206 () Bool)

(assert (=> b!5591210 m!6571206))

(assert (=> b!5590766 d!1767149))

(declare-fun d!1767151 () Bool)

(declare-fun choose!42401 ((InoxSet Context!9926) Int) (InoxSet Context!9926))

(assert (=> d!1767151 (= (flatMap!1192 z!1189 lambda!300076) (choose!42401 z!1189 lambda!300076))))

(declare-fun bs!1292782 () Bool)

(assert (= bs!1292782 d!1767151))

(declare-fun m!6571208 () Bool)

(assert (=> bs!1292782 m!6571208))

(assert (=> b!5590764 d!1767151))

(declare-fun d!1767153 () Bool)

(declare-fun nullableFct!1720 (Regex!15579) Bool)

(assert (=> d!1767153 (= (nullable!5611 (h!69360 (exprs!5463 (h!69362 zl!343)))) (nullableFct!1720 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun bs!1292783 () Bool)

(assert (= bs!1292783 d!1767153))

(declare-fun m!6571210 () Bool)

(assert (=> bs!1292783 m!6571210))

(assert (=> b!5590764 d!1767153))

(declare-fun d!1767155 () Bool)

(declare-fun dynLambda!24605 (Int Context!9926) (InoxSet Context!9926))

(assert (=> d!1767155 (= (flatMap!1192 z!1189 lambda!300076) (dynLambda!24605 lambda!300076 (h!69362 zl!343)))))

(declare-fun lt!2255603 () Unit!155724)

(declare-fun choose!42402 ((InoxSet Context!9926) Context!9926 Int) Unit!155724)

(assert (=> d!1767155 (= lt!2255603 (choose!42402 z!1189 (h!69362 zl!343) lambda!300076))))

(assert (=> d!1767155 (= z!1189 (store ((as const (Array Context!9926 Bool)) false) (h!69362 zl!343) true))))

(assert (=> d!1767155 (= (lemmaFlatMapOnSingletonSet!724 z!1189 (h!69362 zl!343) lambda!300076) lt!2255603)))

(declare-fun b_lambda!211863 () Bool)

(assert (=> (not b_lambda!211863) (not d!1767155)))

(declare-fun bs!1292784 () Bool)

(assert (= bs!1292784 d!1767155))

(assert (=> bs!1292784 m!6570874))

(declare-fun m!6571212 () Bool)

(assert (=> bs!1292784 m!6571212))

(declare-fun m!6571214 () Bool)

(assert (=> bs!1292784 m!6571214))

(declare-fun m!6571216 () Bool)

(assert (=> bs!1292784 m!6571216))

(assert (=> b!5590764 d!1767155))

(declare-fun b!5591221 () Bool)

(declare-fun e!3449389 () Bool)

(assert (=> b!5591221 (= e!3449389 (nullable!5611 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5591222 () Bool)

(declare-fun e!3449388 () (InoxSet Context!9926))

(assert (=> b!5591222 (= e!3449388 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5591223 () Bool)

(declare-fun e!3449390 () (InoxSet Context!9926))

(declare-fun call!418806 () (InoxSet Context!9926))

(assert (=> b!5591223 (= e!3449390 ((_ map or) call!418806 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) (h!69361 s!2326))))))

(declare-fun b!5591224 () Bool)

(assert (=> b!5591224 (= e!3449388 call!418806)))

(declare-fun b!5591225 () Bool)

(assert (=> b!5591225 (= e!3449390 e!3449388)))

(declare-fun c!979774 () Bool)

(assert (=> b!5591225 (= c!979774 ((_ is Cons!62912) (exprs!5463 (h!69362 zl!343))))))

(declare-fun bm!418801 () Bool)

(assert (=> bm!418801 (= call!418806 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (h!69362 zl!343))) (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) (h!69361 s!2326)))))

(declare-fun d!1767157 () Bool)

(declare-fun c!979775 () Bool)

(assert (=> d!1767157 (= c!979775 e!3449389)))

(declare-fun res!2372172 () Bool)

(assert (=> d!1767157 (=> (not res!2372172) (not e!3449389))))

(assert (=> d!1767157 (= res!2372172 ((_ is Cons!62912) (exprs!5463 (h!69362 zl!343))))))

(assert (=> d!1767157 (= (derivationStepZipperUp!847 (h!69362 zl!343) (h!69361 s!2326)) e!3449390)))

(assert (= (and d!1767157 res!2372172) b!5591221))

(assert (= (and d!1767157 c!979775) b!5591223))

(assert (= (and d!1767157 (not c!979775)) b!5591225))

(assert (= (and b!5591225 c!979774) b!5591224))

(assert (= (and b!5591225 (not c!979774)) b!5591222))

(assert (= (or b!5591223 b!5591224) bm!418801))

(assert (=> b!5591221 m!6570882))

(declare-fun m!6571218 () Bool)

(assert (=> b!5591223 m!6571218))

(declare-fun m!6571220 () Bool)

(assert (=> bm!418801 m!6571220))

(assert (=> b!5590764 d!1767157))

(declare-fun bm!418814 () Bool)

(declare-fun call!418820 () (InoxSet Context!9926))

(declare-fun call!418821 () (InoxSet Context!9926))

(assert (=> bm!418814 (= call!418820 call!418821)))

(declare-fun d!1767159 () Bool)

(declare-fun c!979787 () Bool)

(assert (=> d!1767159 (= c!979787 (and ((_ is ElementMatch!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))) (= (c!979652 (h!69360 (exprs!5463 (h!69362 zl!343)))) (h!69361 s!2326))))))

(declare-fun e!3449403 () (InoxSet Context!9926))

(assert (=> d!1767159 (= (derivationStepZipperDown!921 (h!69360 (exprs!5463 (h!69362 zl!343))) lt!2255535 (h!69361 s!2326)) e!3449403)))

(declare-fun b!5591248 () Bool)

(declare-fun e!3449406 () (InoxSet Context!9926))

(assert (=> b!5591248 (= e!3449406 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5591249 () Bool)

(declare-fun e!3449407 () (InoxSet Context!9926))

(assert (=> b!5591249 (= e!3449403 e!3449407)))

(declare-fun c!979786 () Bool)

(assert (=> b!5591249 (= c!979786 ((_ is Union!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5591250 () Bool)

(assert (=> b!5591250 (= e!3449403 (store ((as const (Array Context!9926 Bool)) false) lt!2255535 true))))

(declare-fun b!5591251 () Bool)

(declare-fun e!3449408 () (InoxSet Context!9926))

(assert (=> b!5591251 (= e!3449408 call!418820)))

(declare-fun c!979788 () Bool)

(declare-fun bm!418815 () Bool)

(declare-fun call!418824 () List!63036)

(declare-fun c!979790 () Bool)

(declare-fun $colon$colon!1642 (List!63036 Regex!15579) List!63036)

(assert (=> bm!418815 (= call!418824 ($colon$colon!1642 (exprs!5463 lt!2255535) (ite (or c!979788 c!979790) (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (h!69360 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun b!5591252 () Bool)

(assert (=> b!5591252 (= e!3449406 call!418820)))

(declare-fun bm!418816 () Bool)

(declare-fun call!418819 () List!63036)

(assert (=> bm!418816 (= call!418819 call!418824)))

(declare-fun bm!418817 () Bool)

(declare-fun call!418822 () (InoxSet Context!9926))

(assert (=> bm!418817 (= call!418821 call!418822)))

(declare-fun b!5591253 () Bool)

(declare-fun e!3449404 () Bool)

(assert (=> b!5591253 (= c!979788 e!3449404)))

(declare-fun res!2372175 () Bool)

(assert (=> b!5591253 (=> (not res!2372175) (not e!3449404))))

(assert (=> b!5591253 (= res!2372175 ((_ is Concat!24424) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun e!3449405 () (InoxSet Context!9926))

(assert (=> b!5591253 (= e!3449407 e!3449405)))

(declare-fun b!5591254 () Bool)

(declare-fun c!979789 () Bool)

(assert (=> b!5591254 (= c!979789 ((_ is Star!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> b!5591254 (= e!3449408 e!3449406)))

(declare-fun bm!418818 () Bool)

(assert (=> bm!418818 (= call!418822 (derivationStepZipperDown!921 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))) (ite (or c!979786 c!979788) lt!2255535 (Context!9927 call!418819)) (h!69361 s!2326)))))

(declare-fun b!5591255 () Bool)

(declare-fun call!418823 () (InoxSet Context!9926))

(assert (=> b!5591255 (= e!3449407 ((_ map or) call!418822 call!418823))))

(declare-fun b!5591256 () Bool)

(assert (=> b!5591256 (= e!3449405 e!3449408)))

(assert (=> b!5591256 (= c!979790 ((_ is Concat!24424) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun bm!418819 () Bool)

(assert (=> bm!418819 (= call!418823 (derivationStepZipperDown!921 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))) (ite c!979786 lt!2255535 (Context!9927 call!418824)) (h!69361 s!2326)))))

(declare-fun b!5591257 () Bool)

(assert (=> b!5591257 (= e!3449405 ((_ map or) call!418823 call!418821))))

(declare-fun b!5591258 () Bool)

(assert (=> b!5591258 (= e!3449404 (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))))

(assert (= (and d!1767159 c!979787) b!5591250))

(assert (= (and d!1767159 (not c!979787)) b!5591249))

(assert (= (and b!5591249 c!979786) b!5591255))

(assert (= (and b!5591249 (not c!979786)) b!5591253))

(assert (= (and b!5591253 res!2372175) b!5591258))

(assert (= (and b!5591253 c!979788) b!5591257))

(assert (= (and b!5591253 (not c!979788)) b!5591256))

(assert (= (and b!5591256 c!979790) b!5591251))

(assert (= (and b!5591256 (not c!979790)) b!5591254))

(assert (= (and b!5591254 c!979789) b!5591252))

(assert (= (and b!5591254 (not c!979789)) b!5591248))

(assert (= (or b!5591251 b!5591252) bm!418816))

(assert (= (or b!5591251 b!5591252) bm!418814))

(assert (= (or b!5591257 bm!418816) bm!418815))

(assert (= (or b!5591257 bm!418814) bm!418817))

(assert (= (or b!5591255 b!5591257) bm!418819))

(assert (= (or b!5591255 bm!418817) bm!418818))

(declare-fun m!6571222 () Bool)

(assert (=> b!5591258 m!6571222))

(declare-fun m!6571224 () Bool)

(assert (=> b!5591250 m!6571224))

(declare-fun m!6571226 () Bool)

(assert (=> bm!418818 m!6571226))

(declare-fun m!6571228 () Bool)

(assert (=> bm!418819 m!6571228))

(declare-fun m!6571230 () Bool)

(assert (=> bm!418815 m!6571230))

(assert (=> b!5590764 d!1767159))

(declare-fun b!5591259 () Bool)

(declare-fun e!3449410 () Bool)

(assert (=> b!5591259 (= e!3449410 (nullable!5611 (h!69360 (exprs!5463 lt!2255535))))))

(declare-fun b!5591260 () Bool)

(declare-fun e!3449409 () (InoxSet Context!9926))

(assert (=> b!5591260 (= e!3449409 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5591261 () Bool)

(declare-fun e!3449411 () (InoxSet Context!9926))

(declare-fun call!418825 () (InoxSet Context!9926))

(assert (=> b!5591261 (= e!3449411 ((_ map or) call!418825 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 lt!2255535))) (h!69361 s!2326))))))

(declare-fun b!5591262 () Bool)

(assert (=> b!5591262 (= e!3449409 call!418825)))

(declare-fun b!5591263 () Bool)

(assert (=> b!5591263 (= e!3449411 e!3449409)))

(declare-fun c!979791 () Bool)

(assert (=> b!5591263 (= c!979791 ((_ is Cons!62912) (exprs!5463 lt!2255535)))))

(declare-fun bm!418820 () Bool)

(assert (=> bm!418820 (= call!418825 (derivationStepZipperDown!921 (h!69360 (exprs!5463 lt!2255535)) (Context!9927 (t!376314 (exprs!5463 lt!2255535))) (h!69361 s!2326)))))

(declare-fun d!1767161 () Bool)

(declare-fun c!979792 () Bool)

(assert (=> d!1767161 (= c!979792 e!3449410)))

(declare-fun res!2372176 () Bool)

(assert (=> d!1767161 (=> (not res!2372176) (not e!3449410))))

(assert (=> d!1767161 (= res!2372176 ((_ is Cons!62912) (exprs!5463 lt!2255535)))))

(assert (=> d!1767161 (= (derivationStepZipperUp!847 lt!2255535 (h!69361 s!2326)) e!3449411)))

(assert (= (and d!1767161 res!2372176) b!5591259))

(assert (= (and d!1767161 c!979792) b!5591261))

(assert (= (and d!1767161 (not c!979792)) b!5591263))

(assert (= (and b!5591263 c!979791) b!5591262))

(assert (= (and b!5591263 (not c!979791)) b!5591260))

(assert (= (or b!5591261 b!5591262) bm!418820))

(declare-fun m!6571232 () Bool)

(assert (=> b!5591259 m!6571232))

(declare-fun m!6571234 () Bool)

(assert (=> b!5591261 m!6571234))

(declare-fun m!6571236 () Bool)

(assert (=> bm!418820 m!6571236))

(assert (=> b!5590764 d!1767161))

(declare-fun b!5591264 () Bool)

(declare-fun e!3449413 () Bool)

(assert (=> b!5591264 (= e!3449413 (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun b!5591265 () Bool)

(declare-fun e!3449412 () (InoxSet Context!9926))

(assert (=> b!5591265 (= e!3449412 ((as const (Array Context!9926 Bool)) false))))

(declare-fun call!418826 () (InoxSet Context!9926))

(declare-fun e!3449414 () (InoxSet Context!9926))

(declare-fun b!5591266 () Bool)

(assert (=> b!5591266 (= e!3449414 ((_ map or) call!418826 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (h!69361 s!2326))))))

(declare-fun b!5591267 () Bool)

(assert (=> b!5591267 (= e!3449412 call!418826)))

(declare-fun b!5591268 () Bool)

(assert (=> b!5591268 (= e!3449414 e!3449412)))

(declare-fun c!979793 () Bool)

(assert (=> b!5591268 (= c!979793 ((_ is Cons!62912) (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))

(declare-fun bm!418821 () Bool)

(assert (=> bm!418821 (= call!418826 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (h!69361 s!2326)))))

(declare-fun d!1767163 () Bool)

(declare-fun c!979794 () Bool)

(assert (=> d!1767163 (= c!979794 e!3449413)))

(declare-fun res!2372177 () Bool)

(assert (=> d!1767163 (=> (not res!2372177) (not e!3449413))))

(assert (=> d!1767163 (= res!2372177 ((_ is Cons!62912) (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))

(assert (=> d!1767163 (= (derivationStepZipperUp!847 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))) (h!69361 s!2326)) e!3449414)))

(assert (= (and d!1767163 res!2372177) b!5591264))

(assert (= (and d!1767163 c!979794) b!5591266))

(assert (= (and d!1767163 (not c!979794)) b!5591268))

(assert (= (and b!5591268 c!979793) b!5591267))

(assert (= (and b!5591268 (not c!979793)) b!5591265))

(assert (= (or b!5591266 b!5591267) bm!418821))

(declare-fun m!6571238 () Bool)

(assert (=> b!5591264 m!6571238))

(declare-fun m!6571240 () Bool)

(assert (=> b!5591266 m!6571240))

(declare-fun m!6571242 () Bool)

(assert (=> bm!418821 m!6571242))

(assert (=> b!5590764 d!1767163))

(declare-fun e!3449415 () Bool)

(declare-fun d!1767165 () Bool)

(assert (=> d!1767165 (= (matchZipper!1717 ((_ map or) lt!2255547 lt!2255546) (t!376315 s!2326)) e!3449415)))

(declare-fun res!2372178 () Bool)

(assert (=> d!1767165 (=> res!2372178 e!3449415)))

(assert (=> d!1767165 (= res!2372178 (matchZipper!1717 lt!2255547 (t!376315 s!2326)))))

(declare-fun lt!2255604 () Unit!155724)

(assert (=> d!1767165 (= lt!2255604 (choose!42400 lt!2255547 lt!2255546 (t!376315 s!2326)))))

(assert (=> d!1767165 (= (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255547 lt!2255546 (t!376315 s!2326)) lt!2255604)))

(declare-fun b!5591269 () Bool)

(assert (=> b!5591269 (= e!3449415 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(assert (= (and d!1767165 (not res!2372178)) b!5591269))

(assert (=> d!1767165 m!6570888))

(assert (=> d!1767165 m!6570802))

(declare-fun m!6571244 () Bool)

(assert (=> d!1767165 m!6571244))

(assert (=> b!5591269 m!6570786))

(assert (=> b!5590792 d!1767165))

(assert (=> b!5590792 d!1767149))

(declare-fun d!1767167 () Bool)

(declare-fun c!979795 () Bool)

(assert (=> d!1767167 (= c!979795 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449416 () Bool)

(assert (=> d!1767167 (= (matchZipper!1717 ((_ map or) lt!2255547 lt!2255546) (t!376315 s!2326)) e!3449416)))

(declare-fun b!5591270 () Bool)

(assert (=> b!5591270 (= e!3449416 (nullableZipper!1574 ((_ map or) lt!2255547 lt!2255546)))))

(declare-fun b!5591271 () Bool)

(assert (=> b!5591271 (= e!3449416 (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255547 lt!2255546) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767167 c!979795) b!5591270))

(assert (= (and d!1767167 (not c!979795)) b!5591271))

(assert (=> d!1767167 m!6571168))

(declare-fun m!6571246 () Bool)

(assert (=> b!5591270 m!6571246))

(assert (=> b!5591271 m!6571172))

(assert (=> b!5591271 m!6571172))

(declare-fun m!6571248 () Bool)

(assert (=> b!5591271 m!6571248))

(assert (=> b!5591271 m!6571176))

(assert (=> b!5591271 m!6571248))

(assert (=> b!5591271 m!6571176))

(declare-fun m!6571250 () Bool)

(assert (=> b!5591271 m!6571250))

(assert (=> b!5590792 d!1767167))

(declare-fun b!5591292 () Bool)

(declare-fun e!3449432 () Bool)

(assert (=> b!5591292 (= e!3449432 (isEmpty!34731 (t!376314 (unfocusZipperList!1007 zl!343))))))

(declare-fun b!5591293 () Bool)

(declare-fun e!3449430 () Bool)

(declare-fun e!3449429 () Bool)

(assert (=> b!5591293 (= e!3449430 e!3449429)))

(declare-fun c!979806 () Bool)

(assert (=> b!5591293 (= c!979806 (isEmpty!34731 (unfocusZipperList!1007 zl!343)))))

(declare-fun b!5591294 () Bool)

(declare-fun lt!2255607 () Regex!15579)

(declare-fun isEmptyLang!1143 (Regex!15579) Bool)

(assert (=> b!5591294 (= e!3449429 (isEmptyLang!1143 lt!2255607))))

(declare-fun b!5591295 () Bool)

(declare-fun e!3449433 () Regex!15579)

(assert (=> b!5591295 (= e!3449433 (h!69360 (unfocusZipperList!1007 zl!343)))))

(declare-fun b!5591296 () Bool)

(declare-fun e!3449434 () Regex!15579)

(assert (=> b!5591296 (= e!3449433 e!3449434)))

(declare-fun c!979804 () Bool)

(assert (=> b!5591296 (= c!979804 ((_ is Cons!62912) (unfocusZipperList!1007 zl!343)))))

(declare-fun d!1767169 () Bool)

(assert (=> d!1767169 e!3449430))

(declare-fun res!2372184 () Bool)

(assert (=> d!1767169 (=> (not res!2372184) (not e!3449430))))

(assert (=> d!1767169 (= res!2372184 (validRegex!7315 lt!2255607))))

(assert (=> d!1767169 (= lt!2255607 e!3449433)))

(declare-fun c!979805 () Bool)

(assert (=> d!1767169 (= c!979805 e!3449432)))

(declare-fun res!2372183 () Bool)

(assert (=> d!1767169 (=> (not res!2372183) (not e!3449432))))

(assert (=> d!1767169 (= res!2372183 ((_ is Cons!62912) (unfocusZipperList!1007 zl!343)))))

(declare-fun lambda!300107 () Int)

(declare-fun forall!14745 (List!63036 Int) Bool)

(assert (=> d!1767169 (forall!14745 (unfocusZipperList!1007 zl!343) lambda!300107)))

(assert (=> d!1767169 (= (generalisedUnion!1442 (unfocusZipperList!1007 zl!343)) lt!2255607)))

(declare-fun b!5591297 () Bool)

(assert (=> b!5591297 (= e!3449434 EmptyLang!15579)))

(declare-fun b!5591298 () Bool)

(declare-fun e!3449431 () Bool)

(assert (=> b!5591298 (= e!3449429 e!3449431)))

(declare-fun c!979807 () Bool)

(declare-fun tail!11023 (List!63036) List!63036)

(assert (=> b!5591298 (= c!979807 (isEmpty!34731 (tail!11023 (unfocusZipperList!1007 zl!343))))))

(declare-fun b!5591299 () Bool)

(declare-fun head!11928 (List!63036) Regex!15579)

(assert (=> b!5591299 (= e!3449431 (= lt!2255607 (head!11928 (unfocusZipperList!1007 zl!343))))))

(declare-fun b!5591300 () Bool)

(declare-fun isUnion!573 (Regex!15579) Bool)

(assert (=> b!5591300 (= e!3449431 (isUnion!573 lt!2255607))))

(declare-fun b!5591301 () Bool)

(assert (=> b!5591301 (= e!3449434 (Union!15579 (h!69360 (unfocusZipperList!1007 zl!343)) (generalisedUnion!1442 (t!376314 (unfocusZipperList!1007 zl!343)))))))

(assert (= (and d!1767169 res!2372183) b!5591292))

(assert (= (and d!1767169 c!979805) b!5591295))

(assert (= (and d!1767169 (not c!979805)) b!5591296))

(assert (= (and b!5591296 c!979804) b!5591301))

(assert (= (and b!5591296 (not c!979804)) b!5591297))

(assert (= (and d!1767169 res!2372184) b!5591293))

(assert (= (and b!5591293 c!979806) b!5591294))

(assert (= (and b!5591293 (not c!979806)) b!5591298))

(assert (= (and b!5591298 c!979807) b!5591299))

(assert (= (and b!5591298 (not c!979807)) b!5591300))

(declare-fun m!6571252 () Bool)

(assert (=> b!5591301 m!6571252))

(assert (=> b!5591298 m!6570806))

(declare-fun m!6571254 () Bool)

(assert (=> b!5591298 m!6571254))

(assert (=> b!5591298 m!6571254))

(declare-fun m!6571256 () Bool)

(assert (=> b!5591298 m!6571256))

(assert (=> b!5591299 m!6570806))

(declare-fun m!6571258 () Bool)

(assert (=> b!5591299 m!6571258))

(declare-fun m!6571260 () Bool)

(assert (=> b!5591294 m!6571260))

(declare-fun m!6571262 () Bool)

(assert (=> d!1767169 m!6571262))

(assert (=> d!1767169 m!6570806))

(declare-fun m!6571264 () Bool)

(assert (=> d!1767169 m!6571264))

(declare-fun m!6571266 () Bool)

(assert (=> b!5591292 m!6571266))

(assert (=> b!5591293 m!6570806))

(declare-fun m!6571268 () Bool)

(assert (=> b!5591293 m!6571268))

(declare-fun m!6571270 () Bool)

(assert (=> b!5591300 m!6571270))

(assert (=> b!5590773 d!1767169))

(declare-fun bs!1292785 () Bool)

(declare-fun d!1767171 () Bool)

(assert (= bs!1292785 (and d!1767171 d!1767169)))

(declare-fun lambda!300110 () Int)

(assert (=> bs!1292785 (= lambda!300110 lambda!300107)))

(declare-fun lt!2255610 () List!63036)

(assert (=> d!1767171 (forall!14745 lt!2255610 lambda!300110)))

(declare-fun e!3449437 () List!63036)

(assert (=> d!1767171 (= lt!2255610 e!3449437)))

(declare-fun c!979810 () Bool)

(assert (=> d!1767171 (= c!979810 ((_ is Cons!62914) zl!343))))

(assert (=> d!1767171 (= (unfocusZipperList!1007 zl!343) lt!2255610)))

(declare-fun b!5591306 () Bool)

(assert (=> b!5591306 (= e!3449437 (Cons!62912 (generalisedConcat!1194 (exprs!5463 (h!69362 zl!343))) (unfocusZipperList!1007 (t!376316 zl!343))))))

(declare-fun b!5591307 () Bool)

(assert (=> b!5591307 (= e!3449437 Nil!62912)))

(assert (= (and d!1767171 c!979810) b!5591306))

(assert (= (and d!1767171 (not c!979810)) b!5591307))

(declare-fun m!6571272 () Bool)

(assert (=> d!1767171 m!6571272))

(assert (=> b!5591306 m!6570866))

(declare-fun m!6571274 () Bool)

(assert (=> b!5591306 m!6571274))

(assert (=> b!5590773 d!1767171))

(declare-fun d!1767173 () Bool)

(declare-fun choose!42403 (Int) Bool)

(assert (=> d!1767173 (= (Exists!2679 lambda!300075) (choose!42403 lambda!300075))))

(declare-fun bs!1292786 () Bool)

(assert (= bs!1292786 d!1767173))

(declare-fun m!6571276 () Bool)

(assert (=> bs!1292786 m!6571276))

(assert (=> b!5590791 d!1767173))

(declare-fun b!5591326 () Bool)

(declare-fun e!3449449 () Option!15588)

(declare-fun e!3449448 () Option!15588)

(assert (=> b!5591326 (= e!3449449 e!3449448)))

(declare-fun c!979815 () Bool)

(assert (=> b!5591326 (= c!979815 ((_ is Nil!62913) s!2326))))

(declare-fun d!1767175 () Bool)

(declare-fun e!3449452 () Bool)

(assert (=> d!1767175 e!3449452))

(declare-fun res!2372195 () Bool)

(assert (=> d!1767175 (=> res!2372195 e!3449452)))

(declare-fun e!3449451 () Bool)

(assert (=> d!1767175 (= res!2372195 e!3449451)))

(declare-fun res!2372198 () Bool)

(assert (=> d!1767175 (=> (not res!2372198) (not e!3449451))))

(declare-fun lt!2255619 () Option!15588)

(assert (=> d!1767175 (= res!2372198 (isDefined!12291 lt!2255619))))

(assert (=> d!1767175 (= lt!2255619 e!3449449)))

(declare-fun c!979816 () Bool)

(declare-fun e!3449450 () Bool)

(assert (=> d!1767175 (= c!979816 e!3449450)))

(declare-fun res!2372196 () Bool)

(assert (=> d!1767175 (=> (not res!2372196) (not e!3449450))))

(assert (=> d!1767175 (= res!2372196 (matchR!7764 (regOne!31670 r!7292) Nil!62913))))

(assert (=> d!1767175 (validRegex!7315 (regOne!31670 r!7292))))

(assert (=> d!1767175 (= (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326) lt!2255619)))

(declare-fun b!5591327 () Bool)

(assert (=> b!5591327 (= e!3449450 (matchR!7764 (regTwo!31670 r!7292) s!2326))))

(declare-fun b!5591328 () Bool)

(declare-fun lt!2255617 () Unit!155724)

(declare-fun lt!2255618 () Unit!155724)

(assert (=> b!5591328 (= lt!2255617 lt!2255618)))

(declare-fun ++!13808 (List!63037 List!63037) List!63037)

(assert (=> b!5591328 (= (++!13808 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (t!376315 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1977 (List!63037 C!31428 List!63037 List!63037) Unit!155724)

(assert (=> b!5591328 (= lt!2255618 (lemmaMoveElementToOtherListKeepsConcatEq!1977 Nil!62913 (h!69361 s!2326) (t!376315 s!2326) s!2326))))

(assert (=> b!5591328 (= e!3449448 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (t!376315 s!2326) s!2326))))

(declare-fun b!5591329 () Bool)

(assert (=> b!5591329 (= e!3449448 None!15587)))

(declare-fun b!5591330 () Bool)

(assert (=> b!5591330 (= e!3449452 (not (isDefined!12291 lt!2255619)))))

(declare-fun b!5591331 () Bool)

(declare-fun get!21665 (Option!15588) tuple2!65352)

(assert (=> b!5591331 (= e!3449451 (= (++!13808 (_1!35979 (get!21665 lt!2255619)) (_2!35979 (get!21665 lt!2255619))) s!2326))))

(declare-fun b!5591332 () Bool)

(declare-fun res!2372199 () Bool)

(assert (=> b!5591332 (=> (not res!2372199) (not e!3449451))))

(assert (=> b!5591332 (= res!2372199 (matchR!7764 (regOne!31670 r!7292) (_1!35979 (get!21665 lt!2255619))))))

(declare-fun b!5591333 () Bool)

(assert (=> b!5591333 (= e!3449449 (Some!15587 (tuple2!65353 Nil!62913 s!2326)))))

(declare-fun b!5591334 () Bool)

(declare-fun res!2372197 () Bool)

(assert (=> b!5591334 (=> (not res!2372197) (not e!3449451))))

(assert (=> b!5591334 (= res!2372197 (matchR!7764 (regTwo!31670 r!7292) (_2!35979 (get!21665 lt!2255619))))))

(assert (= (and d!1767175 res!2372196) b!5591327))

(assert (= (and d!1767175 c!979816) b!5591333))

(assert (= (and d!1767175 (not c!979816)) b!5591326))

(assert (= (and b!5591326 c!979815) b!5591329))

(assert (= (and b!5591326 (not c!979815)) b!5591328))

(assert (= (and d!1767175 res!2372198) b!5591332))

(assert (= (and b!5591332 res!2372199) b!5591334))

(assert (= (and b!5591334 res!2372197) b!5591331))

(assert (= (and d!1767175 (not res!2372195)) b!5591330))

(declare-fun m!6571278 () Bool)

(assert (=> d!1767175 m!6571278))

(declare-fun m!6571280 () Bool)

(assert (=> d!1767175 m!6571280))

(declare-fun m!6571282 () Bool)

(assert (=> d!1767175 m!6571282))

(declare-fun m!6571284 () Bool)

(assert (=> b!5591328 m!6571284))

(assert (=> b!5591328 m!6571284))

(declare-fun m!6571286 () Bool)

(assert (=> b!5591328 m!6571286))

(declare-fun m!6571288 () Bool)

(assert (=> b!5591328 m!6571288))

(assert (=> b!5591328 m!6571284))

(declare-fun m!6571290 () Bool)

(assert (=> b!5591328 m!6571290))

(assert (=> b!5591330 m!6571278))

(declare-fun m!6571292 () Bool)

(assert (=> b!5591327 m!6571292))

(declare-fun m!6571294 () Bool)

(assert (=> b!5591332 m!6571294))

(declare-fun m!6571296 () Bool)

(assert (=> b!5591332 m!6571296))

(assert (=> b!5591334 m!6571294))

(declare-fun m!6571298 () Bool)

(assert (=> b!5591334 m!6571298))

(assert (=> b!5591331 m!6571294))

(declare-fun m!6571300 () Bool)

(assert (=> b!5591331 m!6571300))

(assert (=> b!5590791 d!1767175))

(declare-fun d!1767177 () Bool)

(assert (=> d!1767177 (= (Exists!2679 lambda!300074) (choose!42403 lambda!300074))))

(declare-fun bs!1292787 () Bool)

(assert (= bs!1292787 d!1767177))

(declare-fun m!6571302 () Bool)

(assert (=> bs!1292787 m!6571302))

(assert (=> b!5590791 d!1767177))

(declare-fun bs!1292788 () Bool)

(declare-fun d!1767179 () Bool)

(assert (= bs!1292788 (and d!1767179 b!5590791)))

(declare-fun lambda!300113 () Int)

(assert (=> bs!1292788 (= lambda!300113 lambda!300074)))

(assert (=> bs!1292788 (not (= lambda!300113 lambda!300075))))

(assert (=> d!1767179 true))

(assert (=> d!1767179 true))

(assert (=> d!1767179 true))

(assert (=> d!1767179 (= (isDefined!12291 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326)) (Exists!2679 lambda!300113))))

(declare-fun lt!2255622 () Unit!155724)

(declare-fun choose!42404 (Regex!15579 Regex!15579 List!63037) Unit!155724)

(assert (=> d!1767179 (= lt!2255622 (choose!42404 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326))))

(assert (=> d!1767179 (validRegex!7315 (regOne!31670 r!7292))))

(assert (=> d!1767179 (= (lemmaFindConcatSeparationEquivalentToExists!1766 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326) lt!2255622)))

(declare-fun bs!1292789 () Bool)

(assert (= bs!1292789 d!1767179))

(assert (=> bs!1292789 m!6570792))

(assert (=> bs!1292789 m!6570792))

(assert (=> bs!1292789 m!6570794))

(declare-fun m!6571304 () Bool)

(assert (=> bs!1292789 m!6571304))

(assert (=> bs!1292789 m!6571282))

(declare-fun m!6571306 () Bool)

(assert (=> bs!1292789 m!6571306))

(assert (=> b!5590791 d!1767179))

(declare-fun bs!1292790 () Bool)

(declare-fun d!1767181 () Bool)

(assert (= bs!1292790 (and d!1767181 b!5590791)))

(declare-fun lambda!300118 () Int)

(assert (=> bs!1292790 (= lambda!300118 lambda!300074)))

(assert (=> bs!1292790 (not (= lambda!300118 lambda!300075))))

(declare-fun bs!1292791 () Bool)

(assert (= bs!1292791 (and d!1767181 d!1767179)))

(assert (=> bs!1292791 (= lambda!300118 lambda!300113)))

(assert (=> d!1767181 true))

(assert (=> d!1767181 true))

(assert (=> d!1767181 true))

(declare-fun lambda!300119 () Int)

(assert (=> bs!1292790 (not (= lambda!300119 lambda!300074))))

(assert (=> bs!1292790 (= lambda!300119 lambda!300075)))

(assert (=> bs!1292791 (not (= lambda!300119 lambda!300113))))

(declare-fun bs!1292792 () Bool)

(assert (= bs!1292792 d!1767181))

(assert (=> bs!1292792 (not (= lambda!300119 lambda!300118))))

(assert (=> d!1767181 true))

(assert (=> d!1767181 true))

(assert (=> d!1767181 true))

(assert (=> d!1767181 (= (Exists!2679 lambda!300118) (Exists!2679 lambda!300119))))

(declare-fun lt!2255625 () Unit!155724)

(declare-fun choose!42405 (Regex!15579 Regex!15579 List!63037) Unit!155724)

(assert (=> d!1767181 (= lt!2255625 (choose!42405 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326))))

(assert (=> d!1767181 (validRegex!7315 (regOne!31670 r!7292))))

(assert (=> d!1767181 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1308 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326) lt!2255625)))

(declare-fun m!6571308 () Bool)

(assert (=> bs!1292792 m!6571308))

(declare-fun m!6571310 () Bool)

(assert (=> bs!1292792 m!6571310))

(declare-fun m!6571312 () Bool)

(assert (=> bs!1292792 m!6571312))

(assert (=> bs!1292792 m!6571282))

(assert (=> b!5590791 d!1767181))

(declare-fun d!1767183 () Bool)

(declare-fun isEmpty!34735 (Option!15588) Bool)

(assert (=> d!1767183 (= (isDefined!12291 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326)) (not (isEmpty!34735 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326))))))

(declare-fun bs!1292793 () Bool)

(assert (= bs!1292793 d!1767183))

(assert (=> bs!1292793 m!6570792))

(declare-fun m!6571314 () Bool)

(assert (=> bs!1292793 m!6571314))

(assert (=> b!5590791 d!1767183))

(declare-fun bs!1292794 () Bool)

(declare-fun d!1767185 () Bool)

(assert (= bs!1292794 (and d!1767185 d!1767169)))

(declare-fun lambda!300122 () Int)

(assert (=> bs!1292794 (= lambda!300122 lambda!300107)))

(declare-fun bs!1292795 () Bool)

(assert (= bs!1292795 (and d!1767185 d!1767171)))

(assert (=> bs!1292795 (= lambda!300122 lambda!300110)))

(declare-fun b!5591367 () Bool)

(declare-fun e!3449476 () Bool)

(assert (=> b!5591367 (= e!3449476 (isEmpty!34731 (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun e!3449474 () Bool)

(assert (=> d!1767185 e!3449474))

(declare-fun res!2372216 () Bool)

(assert (=> d!1767185 (=> (not res!2372216) (not e!3449474))))

(declare-fun lt!2255628 () Regex!15579)

(assert (=> d!1767185 (= res!2372216 (validRegex!7315 lt!2255628))))

(declare-fun e!3449472 () Regex!15579)

(assert (=> d!1767185 (= lt!2255628 e!3449472)))

(declare-fun c!979828 () Bool)

(assert (=> d!1767185 (= c!979828 e!3449476)))

(declare-fun res!2372217 () Bool)

(assert (=> d!1767185 (=> (not res!2372217) (not e!3449476))))

(assert (=> d!1767185 (= res!2372217 ((_ is Cons!62912) (exprs!5463 (h!69362 zl!343))))))

(assert (=> d!1767185 (forall!14745 (exprs!5463 (h!69362 zl!343)) lambda!300122)))

(assert (=> d!1767185 (= (generalisedConcat!1194 (exprs!5463 (h!69362 zl!343))) lt!2255628)))

(declare-fun b!5591368 () Bool)

(declare-fun e!3449473 () Bool)

(assert (=> b!5591368 (= e!3449473 (= lt!2255628 (head!11928 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5591369 () Bool)

(declare-fun isConcat!656 (Regex!15579) Bool)

(assert (=> b!5591369 (= e!3449473 (isConcat!656 lt!2255628))))

(declare-fun b!5591370 () Bool)

(declare-fun e!3449471 () Bool)

(declare-fun isEmptyExpr!1133 (Regex!15579) Bool)

(assert (=> b!5591370 (= e!3449471 (isEmptyExpr!1133 lt!2255628))))

(declare-fun b!5591371 () Bool)

(assert (=> b!5591371 (= e!3449471 e!3449473)))

(declare-fun c!979825 () Bool)

(assert (=> b!5591371 (= c!979825 (isEmpty!34731 (tail!11023 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5591372 () Bool)

(declare-fun e!3449475 () Regex!15579)

(assert (=> b!5591372 (= e!3449475 EmptyExpr!15579)))

(declare-fun b!5591373 () Bool)

(assert (=> b!5591373 (= e!3449472 e!3449475)))

(declare-fun c!979826 () Bool)

(assert (=> b!5591373 (= c!979826 ((_ is Cons!62912) (exprs!5463 (h!69362 zl!343))))))

(declare-fun b!5591374 () Bool)

(assert (=> b!5591374 (= e!3449474 e!3449471)))

(declare-fun c!979827 () Bool)

(assert (=> b!5591374 (= c!979827 (isEmpty!34731 (exprs!5463 (h!69362 zl!343))))))

(declare-fun b!5591375 () Bool)

(assert (=> b!5591375 (= e!3449472 (h!69360 (exprs!5463 (h!69362 zl!343))))))

(declare-fun b!5591376 () Bool)

(assert (=> b!5591376 (= e!3449475 (Concat!24424 (h!69360 (exprs!5463 (h!69362 zl!343))) (generalisedConcat!1194 (t!376314 (exprs!5463 (h!69362 zl!343))))))))

(assert (= (and d!1767185 res!2372217) b!5591367))

(assert (= (and d!1767185 c!979828) b!5591375))

(assert (= (and d!1767185 (not c!979828)) b!5591373))

(assert (= (and b!5591373 c!979826) b!5591376))

(assert (= (and b!5591373 (not c!979826)) b!5591372))

(assert (= (and d!1767185 res!2372216) b!5591374))

(assert (= (and b!5591374 c!979827) b!5591370))

(assert (= (and b!5591374 (not c!979827)) b!5591371))

(assert (= (and b!5591371 c!979825) b!5591368))

(assert (= (and b!5591371 (not c!979825)) b!5591369))

(declare-fun m!6571316 () Bool)

(assert (=> d!1767185 m!6571316))

(declare-fun m!6571318 () Bool)

(assert (=> d!1767185 m!6571318))

(declare-fun m!6571320 () Bool)

(assert (=> b!5591376 m!6571320))

(assert (=> b!5591367 m!6570820))

(declare-fun m!6571322 () Bool)

(assert (=> b!5591368 m!6571322))

(declare-fun m!6571324 () Bool)

(assert (=> b!5591369 m!6571324))

(declare-fun m!6571326 () Bool)

(assert (=> b!5591370 m!6571326))

(declare-fun m!6571328 () Bool)

(assert (=> b!5591371 m!6571328))

(assert (=> b!5591371 m!6571328))

(declare-fun m!6571330 () Bool)

(assert (=> b!5591371 m!6571330))

(declare-fun m!6571332 () Bool)

(assert (=> b!5591374 m!6571332))

(assert (=> b!5590770 d!1767185))

(assert (=> b!5590789 d!1767137))

(assert (=> b!5590788 d!1767149))

(declare-fun d!1767187 () Bool)

(declare-fun c!979829 () Bool)

(assert (=> d!1767187 (= c!979829 (isEmpty!34734 s!2326))))

(declare-fun e!3449477 () Bool)

(assert (=> d!1767187 (= (matchZipper!1717 z!1189 s!2326) e!3449477)))

(declare-fun b!5591377 () Bool)

(assert (=> b!5591377 (= e!3449477 (nullableZipper!1574 z!1189))))

(declare-fun b!5591378 () Bool)

(assert (=> b!5591378 (= e!3449477 (matchZipper!1717 (derivationStepZipper!1678 z!1189 (head!11927 s!2326)) (tail!11022 s!2326)))))

(assert (= (and d!1767187 c!979829) b!5591377))

(assert (= (and d!1767187 (not c!979829)) b!5591378))

(declare-fun m!6571334 () Bool)

(assert (=> d!1767187 m!6571334))

(declare-fun m!6571336 () Bool)

(assert (=> b!5591377 m!6571336))

(declare-fun m!6571338 () Bool)

(assert (=> b!5591378 m!6571338))

(assert (=> b!5591378 m!6571338))

(declare-fun m!6571340 () Bool)

(assert (=> b!5591378 m!6571340))

(declare-fun m!6571342 () Bool)

(assert (=> b!5591378 m!6571342))

(assert (=> b!5591378 m!6571340))

(assert (=> b!5591378 m!6571342))

(declare-fun m!6571344 () Bool)

(assert (=> b!5591378 m!6571344))

(assert (=> b!5590769 d!1767187))

(declare-fun bs!1292796 () Bool)

(declare-fun d!1767189 () Bool)

(assert (= bs!1292796 (and d!1767189 d!1767169)))

(declare-fun lambda!300125 () Int)

(assert (=> bs!1292796 (= lambda!300125 lambda!300107)))

(declare-fun bs!1292797 () Bool)

(assert (= bs!1292797 (and d!1767189 d!1767171)))

(assert (=> bs!1292797 (= lambda!300125 lambda!300110)))

(declare-fun bs!1292798 () Bool)

(assert (= bs!1292798 (and d!1767189 d!1767185)))

(assert (=> bs!1292798 (= lambda!300125 lambda!300122)))

(assert (=> d!1767189 (= (inv!82194 (h!69362 zl!343)) (forall!14745 (exprs!5463 (h!69362 zl!343)) lambda!300125))))

(declare-fun bs!1292799 () Bool)

(assert (= bs!1292799 d!1767189))

(declare-fun m!6571346 () Bool)

(assert (=> bs!1292799 m!6571346))

(assert (=> b!5590778 d!1767189))

(assert (=> b!5590775 d!1767137))

(declare-fun d!1767191 () Bool)

(declare-fun e!3449478 () Bool)

(assert (=> d!1767191 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255546) (t!376315 s!2326)) e!3449478)))

(declare-fun res!2372218 () Bool)

(assert (=> d!1767191 (=> res!2372218 e!3449478)))

(assert (=> d!1767191 (= res!2372218 (matchZipper!1717 lt!2255543 (t!376315 s!2326)))))

(declare-fun lt!2255629 () Unit!155724)

(assert (=> d!1767191 (= lt!2255629 (choose!42400 lt!2255543 lt!2255546 (t!376315 s!2326)))))

(assert (=> d!1767191 (= (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255543 lt!2255546 (t!376315 s!2326)) lt!2255629)))

(declare-fun b!5591379 () Bool)

(assert (=> b!5591379 (= e!3449478 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(assert (= (and d!1767191 (not res!2372218)) b!5591379))

(assert (=> d!1767191 m!6570862))

(assert (=> d!1767191 m!6570852))

(declare-fun m!6571348 () Bool)

(assert (=> d!1767191 m!6571348))

(assert (=> b!5591379 m!6570786))

(assert (=> b!5590795 d!1767191))

(declare-fun d!1767193 () Bool)

(declare-fun c!979830 () Bool)

(assert (=> d!1767193 (= c!979830 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449479 () Bool)

(assert (=> d!1767193 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255546) (t!376315 s!2326)) e!3449479)))

(declare-fun b!5591380 () Bool)

(assert (=> b!5591380 (= e!3449479 (nullableZipper!1574 ((_ map or) lt!2255543 lt!2255546)))))

(declare-fun b!5591381 () Bool)

(assert (=> b!5591381 (= e!3449479 (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255543 lt!2255546) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767193 c!979830) b!5591380))

(assert (= (and d!1767193 (not c!979830)) b!5591381))

(assert (=> d!1767193 m!6571168))

(declare-fun m!6571350 () Bool)

(assert (=> b!5591380 m!6571350))

(assert (=> b!5591381 m!6571172))

(assert (=> b!5591381 m!6571172))

(declare-fun m!6571352 () Bool)

(assert (=> b!5591381 m!6571352))

(assert (=> b!5591381 m!6571176))

(assert (=> b!5591381 m!6571352))

(assert (=> b!5591381 m!6571176))

(declare-fun m!6571354 () Bool)

(assert (=> b!5591381 m!6571354))

(assert (=> b!5590795 d!1767193))

(declare-fun d!1767195 () Bool)

(assert (=> d!1767195 (= (nullable!5611 (regTwo!31671 (regOne!31670 r!7292))) (nullableFct!1720 (regTwo!31671 (regOne!31670 r!7292))))))

(declare-fun bs!1292800 () Bool)

(assert (= bs!1292800 d!1767195))

(declare-fun m!6571356 () Bool)

(assert (=> bs!1292800 m!6571356))

(assert (=> b!5590794 d!1767195))

(declare-fun b!5591382 () Bool)

(declare-fun e!3449481 () Bool)

(assert (=> b!5591382 (= e!3449481 (nullable!5611 (h!69360 (exprs!5463 lt!2255544))))))

(declare-fun b!5591383 () Bool)

(declare-fun e!3449480 () (InoxSet Context!9926))

(assert (=> b!5591383 (= e!3449480 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5591384 () Bool)

(declare-fun call!418827 () (InoxSet Context!9926))

(declare-fun e!3449482 () (InoxSet Context!9926))

(assert (=> b!5591384 (= e!3449482 ((_ map or) call!418827 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 lt!2255544))) (h!69361 s!2326))))))

(declare-fun b!5591385 () Bool)

(assert (=> b!5591385 (= e!3449480 call!418827)))

(declare-fun b!5591386 () Bool)

(assert (=> b!5591386 (= e!3449482 e!3449480)))

(declare-fun c!979831 () Bool)

(assert (=> b!5591386 (= c!979831 ((_ is Cons!62912) (exprs!5463 lt!2255544)))))

(declare-fun bm!418822 () Bool)

(assert (=> bm!418822 (= call!418827 (derivationStepZipperDown!921 (h!69360 (exprs!5463 lt!2255544)) (Context!9927 (t!376314 (exprs!5463 lt!2255544))) (h!69361 s!2326)))))

(declare-fun d!1767197 () Bool)

(declare-fun c!979832 () Bool)

(assert (=> d!1767197 (= c!979832 e!3449481)))

(declare-fun res!2372219 () Bool)

(assert (=> d!1767197 (=> (not res!2372219) (not e!3449481))))

(assert (=> d!1767197 (= res!2372219 ((_ is Cons!62912) (exprs!5463 lt!2255544)))))

(assert (=> d!1767197 (= (derivationStepZipperUp!847 lt!2255544 (h!69361 s!2326)) e!3449482)))

(assert (= (and d!1767197 res!2372219) b!5591382))

(assert (= (and d!1767197 c!979832) b!5591384))

(assert (= (and d!1767197 (not c!979832)) b!5591386))

(assert (= (and b!5591386 c!979831) b!5591385))

(assert (= (and b!5591386 (not c!979831)) b!5591383))

(assert (= (or b!5591384 b!5591385) bm!418822))

(declare-fun m!6571358 () Bool)

(assert (=> b!5591382 m!6571358))

(declare-fun m!6571360 () Bool)

(assert (=> b!5591384 m!6571360))

(declare-fun m!6571362 () Bool)

(assert (=> bm!418822 m!6571362))

(assert (=> b!5590794 d!1767197))

(declare-fun d!1767199 () Bool)

(assert (=> d!1767199 (= (nullable!5611 (regOne!31670 r!7292)) (nullableFct!1720 (regOne!31670 r!7292)))))

(declare-fun bs!1292801 () Bool)

(assert (= bs!1292801 d!1767199))

(declare-fun m!6571364 () Bool)

(assert (=> bs!1292801 m!6571364))

(assert (=> b!5590794 d!1767199))

(declare-fun d!1767201 () Bool)

(assert (=> d!1767201 (= (flatMap!1192 lt!2255540 lambda!300076) (choose!42401 lt!2255540 lambda!300076))))

(declare-fun bs!1292802 () Bool)

(assert (= bs!1292802 d!1767201))

(declare-fun m!6571366 () Bool)

(assert (=> bs!1292802 m!6571366))

(assert (=> b!5590794 d!1767201))

(declare-fun b!5591387 () Bool)

(declare-fun e!3449484 () Bool)

(assert (=> b!5591387 (= e!3449484 (nullable!5611 (h!69360 (exprs!5463 lt!2255536))))))

(declare-fun b!5591388 () Bool)

(declare-fun e!3449483 () (InoxSet Context!9926))

(assert (=> b!5591388 (= e!3449483 ((as const (Array Context!9926 Bool)) false))))

(declare-fun call!418828 () (InoxSet Context!9926))

(declare-fun e!3449485 () (InoxSet Context!9926))

(declare-fun b!5591389 () Bool)

(assert (=> b!5591389 (= e!3449485 ((_ map or) call!418828 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 lt!2255536))) (h!69361 s!2326))))))

(declare-fun b!5591390 () Bool)

(assert (=> b!5591390 (= e!3449483 call!418828)))

(declare-fun b!5591391 () Bool)

(assert (=> b!5591391 (= e!3449485 e!3449483)))

(declare-fun c!979833 () Bool)

(assert (=> b!5591391 (= c!979833 ((_ is Cons!62912) (exprs!5463 lt!2255536)))))

(declare-fun bm!418823 () Bool)

(assert (=> bm!418823 (= call!418828 (derivationStepZipperDown!921 (h!69360 (exprs!5463 lt!2255536)) (Context!9927 (t!376314 (exprs!5463 lt!2255536))) (h!69361 s!2326)))))

(declare-fun d!1767203 () Bool)

(declare-fun c!979834 () Bool)

(assert (=> d!1767203 (= c!979834 e!3449484)))

(declare-fun res!2372220 () Bool)

(assert (=> d!1767203 (=> (not res!2372220) (not e!3449484))))

(assert (=> d!1767203 (= res!2372220 ((_ is Cons!62912) (exprs!5463 lt!2255536)))))

(assert (=> d!1767203 (= (derivationStepZipperUp!847 lt!2255536 (h!69361 s!2326)) e!3449485)))

(assert (= (and d!1767203 res!2372220) b!5591387))

(assert (= (and d!1767203 c!979834) b!5591389))

(assert (= (and d!1767203 (not c!979834)) b!5591391))

(assert (= (and b!5591391 c!979833) b!5591390))

(assert (= (and b!5591391 (not c!979833)) b!5591388))

(assert (= (or b!5591389 b!5591390) bm!418823))

(declare-fun m!6571368 () Bool)

(assert (=> b!5591387 m!6571368))

(declare-fun m!6571370 () Bool)

(assert (=> b!5591389 m!6571370))

(declare-fun m!6571372 () Bool)

(assert (=> bm!418823 m!6571372))

(assert (=> b!5590794 d!1767203))

(declare-fun d!1767205 () Bool)

(assert (=> d!1767205 (= (flatMap!1192 lt!2255538 lambda!300076) (choose!42401 lt!2255538 lambda!300076))))

(declare-fun bs!1292803 () Bool)

(assert (= bs!1292803 d!1767205))

(declare-fun m!6571374 () Bool)

(assert (=> bs!1292803 m!6571374))

(assert (=> b!5590794 d!1767205))

(declare-fun d!1767207 () Bool)

(assert (=> d!1767207 (= (flatMap!1192 lt!2255540 lambda!300076) (dynLambda!24605 lambda!300076 lt!2255536))))

(declare-fun lt!2255630 () Unit!155724)

(assert (=> d!1767207 (= lt!2255630 (choose!42402 lt!2255540 lt!2255536 lambda!300076))))

(assert (=> d!1767207 (= lt!2255540 (store ((as const (Array Context!9926 Bool)) false) lt!2255536 true))))

(assert (=> d!1767207 (= (lemmaFlatMapOnSingletonSet!724 lt!2255540 lt!2255536 lambda!300076) lt!2255630)))

(declare-fun b_lambda!211865 () Bool)

(assert (=> (not b_lambda!211865) (not d!1767207)))

(declare-fun bs!1292804 () Bool)

(assert (= bs!1292804 d!1767207))

(assert (=> bs!1292804 m!6570842))

(declare-fun m!6571376 () Bool)

(assert (=> bs!1292804 m!6571376))

(declare-fun m!6571378 () Bool)

(assert (=> bs!1292804 m!6571378))

(assert (=> bs!1292804 m!6570838))

(assert (=> b!5590794 d!1767207))

(declare-fun d!1767209 () Bool)

(assert (=> d!1767209 (= (flatMap!1192 lt!2255538 lambda!300076) (dynLambda!24605 lambda!300076 lt!2255544))))

(declare-fun lt!2255631 () Unit!155724)

(assert (=> d!1767209 (= lt!2255631 (choose!42402 lt!2255538 lt!2255544 lambda!300076))))

(assert (=> d!1767209 (= lt!2255538 (store ((as const (Array Context!9926 Bool)) false) lt!2255544 true))))

(assert (=> d!1767209 (= (lemmaFlatMapOnSingletonSet!724 lt!2255538 lt!2255544 lambda!300076) lt!2255631)))

(declare-fun b_lambda!211867 () Bool)

(assert (=> (not b_lambda!211867) (not d!1767209)))

(declare-fun bs!1292805 () Bool)

(assert (= bs!1292805 d!1767209))

(assert (=> bs!1292805 m!6570840))

(declare-fun m!6571380 () Bool)

(assert (=> bs!1292805 m!6571380))

(declare-fun m!6571382 () Bool)

(assert (=> bs!1292805 m!6571382))

(assert (=> bs!1292805 m!6570828))

(assert (=> b!5590794 d!1767209))

(declare-fun d!1767211 () Bool)

(assert (=> d!1767211 (= (nullable!5611 (regOne!31671 (regOne!31670 r!7292))) (nullableFct!1720 (regOne!31671 (regOne!31670 r!7292))))))

(declare-fun bs!1292806 () Bool)

(assert (= bs!1292806 d!1767211))

(declare-fun m!6571384 () Bool)

(assert (=> bs!1292806 m!6571384))

(assert (=> b!5590794 d!1767211))

(declare-fun b!5591410 () Bool)

(declare-fun res!2372235 () Bool)

(declare-fun e!3449502 () Bool)

(assert (=> b!5591410 (=> (not res!2372235) (not e!3449502))))

(declare-fun call!418836 () Bool)

(assert (=> b!5591410 (= res!2372235 call!418836)))

(declare-fun e!3449500 () Bool)

(assert (=> b!5591410 (= e!3449500 e!3449502)))

(declare-fun b!5591411 () Bool)

(declare-fun e!3449505 () Bool)

(declare-fun call!418835 () Bool)

(assert (=> b!5591411 (= e!3449505 call!418835)))

(declare-fun bm!418830 () Bool)

(assert (=> bm!418830 (= call!418836 call!418835)))

(declare-fun b!5591412 () Bool)

(declare-fun e!3449503 () Bool)

(declare-fun e!3449506 () Bool)

(assert (=> b!5591412 (= e!3449503 e!3449506)))

(declare-fun c!979839 () Bool)

(assert (=> b!5591412 (= c!979839 ((_ is Star!15579) r!7292))))

(declare-fun b!5591414 () Bool)

(declare-fun res!2372231 () Bool)

(declare-fun e!3449501 () Bool)

(assert (=> b!5591414 (=> res!2372231 e!3449501)))

(assert (=> b!5591414 (= res!2372231 (not ((_ is Concat!24424) r!7292)))))

(assert (=> b!5591414 (= e!3449500 e!3449501)))

(declare-fun b!5591415 () Bool)

(declare-fun call!418837 () Bool)

(assert (=> b!5591415 (= e!3449502 call!418837)))

(declare-fun b!5591416 () Bool)

(declare-fun e!3449504 () Bool)

(assert (=> b!5591416 (= e!3449504 call!418837)))

(declare-fun bm!418831 () Bool)

(declare-fun c!979840 () Bool)

(assert (=> bm!418831 (= call!418837 (validRegex!7315 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))))))

(declare-fun b!5591417 () Bool)

(assert (=> b!5591417 (= e!3449501 e!3449504)))

(declare-fun res!2372232 () Bool)

(assert (=> b!5591417 (=> (not res!2372232) (not e!3449504))))

(assert (=> b!5591417 (= res!2372232 call!418836)))

(declare-fun b!5591418 () Bool)

(assert (=> b!5591418 (= e!3449506 e!3449500)))

(assert (=> b!5591418 (= c!979840 ((_ is Union!15579) r!7292))))

(declare-fun bm!418832 () Bool)

(assert (=> bm!418832 (= call!418835 (validRegex!7315 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))))))

(declare-fun d!1767213 () Bool)

(declare-fun res!2372233 () Bool)

(assert (=> d!1767213 (=> res!2372233 e!3449503)))

(assert (=> d!1767213 (= res!2372233 ((_ is ElementMatch!15579) r!7292))))

(assert (=> d!1767213 (= (validRegex!7315 r!7292) e!3449503)))

(declare-fun b!5591413 () Bool)

(assert (=> b!5591413 (= e!3449506 e!3449505)))

(declare-fun res!2372234 () Bool)

(assert (=> b!5591413 (= res!2372234 (not (nullable!5611 (reg!15908 r!7292))))))

(assert (=> b!5591413 (=> (not res!2372234) (not e!3449505))))

(assert (= (and d!1767213 (not res!2372233)) b!5591412))

(assert (= (and b!5591412 c!979839) b!5591413))

(assert (= (and b!5591412 (not c!979839)) b!5591418))

(assert (= (and b!5591413 res!2372234) b!5591411))

(assert (= (and b!5591418 c!979840) b!5591410))

(assert (= (and b!5591418 (not c!979840)) b!5591414))

(assert (= (and b!5591410 res!2372235) b!5591415))

(assert (= (and b!5591414 (not res!2372231)) b!5591417))

(assert (= (and b!5591417 res!2372232) b!5591416))

(assert (= (or b!5591415 b!5591416) bm!418831))

(assert (= (or b!5591410 b!5591417) bm!418830))

(assert (= (or b!5591411 bm!418830) bm!418832))

(declare-fun m!6571386 () Bool)

(assert (=> bm!418831 m!6571386))

(declare-fun m!6571388 () Bool)

(assert (=> bm!418832 m!6571388))

(declare-fun m!6571390 () Bool)

(assert (=> b!5591413 m!6571390))

(assert (=> start!580676 d!1767213))

(declare-fun bs!1292807 () Bool)

(declare-fun d!1767215 () Bool)

(assert (= bs!1292807 (and d!1767215 d!1767169)))

(declare-fun lambda!300126 () Int)

(assert (=> bs!1292807 (= lambda!300126 lambda!300107)))

(declare-fun bs!1292808 () Bool)

(assert (= bs!1292808 (and d!1767215 d!1767171)))

(assert (=> bs!1292808 (= lambda!300126 lambda!300110)))

(declare-fun bs!1292809 () Bool)

(assert (= bs!1292809 (and d!1767215 d!1767185)))

(assert (=> bs!1292809 (= lambda!300126 lambda!300122)))

(declare-fun bs!1292810 () Bool)

(assert (= bs!1292810 (and d!1767215 d!1767189)))

(assert (=> bs!1292810 (= lambda!300126 lambda!300125)))

(assert (=> d!1767215 (= (inv!82194 setElem!37261) (forall!14745 (exprs!5463 setElem!37261) lambda!300126))))

(declare-fun bs!1292811 () Bool)

(assert (= bs!1292811 d!1767215))

(declare-fun m!6571392 () Bool)

(assert (=> bs!1292811 m!6571392))

(assert (=> setNonEmpty!37261 d!1767215))

(declare-fun e!3449507 () Bool)

(declare-fun d!1767217 () Bool)

(assert (=> d!1767217 (= (matchZipper!1717 ((_ map or) lt!2255521 lt!2255546) (t!376315 s!2326)) e!3449507)))

(declare-fun res!2372236 () Bool)

(assert (=> d!1767217 (=> res!2372236 e!3449507)))

(assert (=> d!1767217 (= res!2372236 (matchZipper!1717 lt!2255521 (t!376315 s!2326)))))

(declare-fun lt!2255632 () Unit!155724)

(assert (=> d!1767217 (= lt!2255632 (choose!42400 lt!2255521 lt!2255546 (t!376315 s!2326)))))

(assert (=> d!1767217 (= (lemmaZipperConcatMatchesSameAsBothZippers!604 lt!2255521 lt!2255546 (t!376315 s!2326)) lt!2255632)))

(declare-fun b!5591419 () Bool)

(assert (=> b!5591419 (= e!3449507 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(assert (= (and d!1767217 (not res!2372236)) b!5591419))

(assert (=> d!1767217 m!6570870))

(assert (=> d!1767217 m!6570848))

(declare-fun m!6571394 () Bool)

(assert (=> d!1767217 m!6571394))

(assert (=> b!5591419 m!6570786))

(assert (=> b!5590782 d!1767217))

(assert (=> b!5590782 d!1767141))

(declare-fun d!1767219 () Bool)

(declare-fun c!979841 () Bool)

(assert (=> d!1767219 (= c!979841 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449508 () Bool)

(assert (=> d!1767219 (= (matchZipper!1717 ((_ map or) lt!2255521 lt!2255546) (t!376315 s!2326)) e!3449508)))

(declare-fun b!5591420 () Bool)

(assert (=> b!5591420 (= e!3449508 (nullableZipper!1574 ((_ map or) lt!2255521 lt!2255546)))))

(declare-fun b!5591421 () Bool)

(assert (=> b!5591421 (= e!3449508 (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255521 lt!2255546) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767219 c!979841) b!5591420))

(assert (= (and d!1767219 (not c!979841)) b!5591421))

(assert (=> d!1767219 m!6571168))

(declare-fun m!6571396 () Bool)

(assert (=> b!5591420 m!6571396))

(assert (=> b!5591421 m!6571172))

(assert (=> b!5591421 m!6571172))

(declare-fun m!6571398 () Bool)

(assert (=> b!5591421 m!6571398))

(assert (=> b!5591421 m!6571176))

(assert (=> b!5591421 m!6571398))

(assert (=> b!5591421 m!6571176))

(declare-fun m!6571400 () Bool)

(assert (=> b!5591421 m!6571400))

(assert (=> b!5590782 d!1767219))

(declare-fun d!1767221 () Bool)

(declare-fun e!3449511 () Bool)

(assert (=> d!1767221 e!3449511))

(declare-fun res!2372239 () Bool)

(assert (=> d!1767221 (=> (not res!2372239) (not e!3449511))))

(declare-fun lt!2255635 () List!63038)

(declare-fun noDuplicate!1555 (List!63038) Bool)

(assert (=> d!1767221 (= res!2372239 (noDuplicate!1555 lt!2255635))))

(declare-fun choose!42406 ((InoxSet Context!9926)) List!63038)

(assert (=> d!1767221 (= lt!2255635 (choose!42406 z!1189))))

(assert (=> d!1767221 (= (toList!9363 z!1189) lt!2255635)))

(declare-fun b!5591424 () Bool)

(declare-fun content!11352 (List!63038) (InoxSet Context!9926))

(assert (=> b!5591424 (= e!3449511 (= (content!11352 lt!2255635) z!1189))))

(assert (= (and d!1767221 res!2372239) b!5591424))

(declare-fun m!6571402 () Bool)

(assert (=> d!1767221 m!6571402))

(declare-fun m!6571404 () Bool)

(assert (=> d!1767221 m!6571404))

(declare-fun m!6571406 () Bool)

(assert (=> b!5591424 m!6571406))

(assert (=> b!5590781 d!1767221))

(declare-fun d!1767223 () Bool)

(assert (=> d!1767223 (= (isEmpty!34730 (t!376316 zl!343)) ((_ is Nil!62914) (t!376316 zl!343)))))

(assert (=> b!5590761 d!1767223))

(declare-fun bm!418833 () Bool)

(declare-fun call!418839 () (InoxSet Context!9926))

(declare-fun call!418840 () (InoxSet Context!9926))

(assert (=> bm!418833 (= call!418839 call!418840)))

(declare-fun d!1767225 () Bool)

(declare-fun c!979843 () Bool)

(assert (=> d!1767225 (= c!979843 (and ((_ is ElementMatch!15579) (regTwo!31671 (regOne!31670 r!7292))) (= (c!979652 (regTwo!31671 (regOne!31670 r!7292))) (h!69361 s!2326))))))

(declare-fun e!3449512 () (InoxSet Context!9926))

(assert (=> d!1767225 (= (derivationStepZipperDown!921 (regTwo!31671 (regOne!31670 r!7292)) lt!2255535 (h!69361 s!2326)) e!3449512)))

(declare-fun b!5591425 () Bool)

(declare-fun e!3449515 () (InoxSet Context!9926))

(assert (=> b!5591425 (= e!3449515 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5591426 () Bool)

(declare-fun e!3449516 () (InoxSet Context!9926))

(assert (=> b!5591426 (= e!3449512 e!3449516)))

(declare-fun c!979842 () Bool)

(assert (=> b!5591426 (= c!979842 ((_ is Union!15579) (regTwo!31671 (regOne!31670 r!7292))))))

(declare-fun b!5591427 () Bool)

(assert (=> b!5591427 (= e!3449512 (store ((as const (Array Context!9926 Bool)) false) lt!2255535 true))))

(declare-fun b!5591428 () Bool)

(declare-fun e!3449517 () (InoxSet Context!9926))

(assert (=> b!5591428 (= e!3449517 call!418839)))

(declare-fun c!979846 () Bool)

(declare-fun c!979844 () Bool)

(declare-fun call!418843 () List!63036)

(declare-fun bm!418834 () Bool)

(assert (=> bm!418834 (= call!418843 ($colon$colon!1642 (exprs!5463 lt!2255535) (ite (or c!979844 c!979846) (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (regTwo!31671 (regOne!31670 r!7292)))))))

(declare-fun b!5591429 () Bool)

(assert (=> b!5591429 (= e!3449515 call!418839)))

(declare-fun bm!418835 () Bool)

(declare-fun call!418838 () List!63036)

(assert (=> bm!418835 (= call!418838 call!418843)))

(declare-fun bm!418836 () Bool)

(declare-fun call!418841 () (InoxSet Context!9926))

(assert (=> bm!418836 (= call!418840 call!418841)))

(declare-fun b!5591430 () Bool)

(declare-fun e!3449513 () Bool)

(assert (=> b!5591430 (= c!979844 e!3449513)))

(declare-fun res!2372240 () Bool)

(assert (=> b!5591430 (=> (not res!2372240) (not e!3449513))))

(assert (=> b!5591430 (= res!2372240 ((_ is Concat!24424) (regTwo!31671 (regOne!31670 r!7292))))))

(declare-fun e!3449514 () (InoxSet Context!9926))

(assert (=> b!5591430 (= e!3449516 e!3449514)))

(declare-fun b!5591431 () Bool)

(declare-fun c!979845 () Bool)

(assert (=> b!5591431 (= c!979845 ((_ is Star!15579) (regTwo!31671 (regOne!31670 r!7292))))))

(assert (=> b!5591431 (= e!3449517 e!3449515)))

(declare-fun bm!418837 () Bool)

(assert (=> bm!418837 (= call!418841 (derivationStepZipperDown!921 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292)))))) (ite (or c!979842 c!979844) lt!2255535 (Context!9927 call!418838)) (h!69361 s!2326)))))

(declare-fun b!5591432 () Bool)

(declare-fun call!418842 () (InoxSet Context!9926))

(assert (=> b!5591432 (= e!3449516 ((_ map or) call!418841 call!418842))))

(declare-fun b!5591433 () Bool)

(assert (=> b!5591433 (= e!3449514 e!3449517)))

(assert (=> b!5591433 (= c!979846 ((_ is Concat!24424) (regTwo!31671 (regOne!31670 r!7292))))))

(declare-fun bm!418838 () Bool)

(assert (=> bm!418838 (= call!418842 (derivationStepZipperDown!921 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))) (ite c!979842 lt!2255535 (Context!9927 call!418843)) (h!69361 s!2326)))))

(declare-fun b!5591434 () Bool)

(assert (=> b!5591434 (= e!3449514 ((_ map or) call!418842 call!418840))))

(declare-fun b!5591435 () Bool)

(assert (=> b!5591435 (= e!3449513 (nullable!5611 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))))))

(assert (= (and d!1767225 c!979843) b!5591427))

(assert (= (and d!1767225 (not c!979843)) b!5591426))

(assert (= (and b!5591426 c!979842) b!5591432))

(assert (= (and b!5591426 (not c!979842)) b!5591430))

(assert (= (and b!5591430 res!2372240) b!5591435))

(assert (= (and b!5591430 c!979844) b!5591434))

(assert (= (and b!5591430 (not c!979844)) b!5591433))

(assert (= (and b!5591433 c!979846) b!5591428))

(assert (= (and b!5591433 (not c!979846)) b!5591431))

(assert (= (and b!5591431 c!979845) b!5591429))

(assert (= (and b!5591431 (not c!979845)) b!5591425))

(assert (= (or b!5591428 b!5591429) bm!418835))

(assert (= (or b!5591428 b!5591429) bm!418833))

(assert (= (or b!5591434 bm!418835) bm!418834))

(assert (= (or b!5591434 bm!418833) bm!418836))

(assert (= (or b!5591432 b!5591434) bm!418838))

(assert (= (or b!5591432 bm!418836) bm!418837))

(declare-fun m!6571408 () Bool)

(assert (=> b!5591435 m!6571408))

(assert (=> b!5591427 m!6571224))

(declare-fun m!6571410 () Bool)

(assert (=> bm!418837 m!6571410))

(declare-fun m!6571412 () Bool)

(assert (=> bm!418838 m!6571412))

(declare-fun m!6571414 () Bool)

(assert (=> bm!418834 m!6571414))

(assert (=> b!5590760 d!1767225))

(declare-fun bm!418839 () Bool)

(declare-fun call!418845 () (InoxSet Context!9926))

(declare-fun call!418846 () (InoxSet Context!9926))

(assert (=> bm!418839 (= call!418845 call!418846)))

(declare-fun d!1767227 () Bool)

(declare-fun c!979848 () Bool)

(assert (=> d!1767227 (= c!979848 (and ((_ is ElementMatch!15579) (regOne!31671 (regOne!31670 r!7292))) (= (c!979652 (regOne!31671 (regOne!31670 r!7292))) (h!69361 s!2326))))))

(declare-fun e!3449518 () (InoxSet Context!9926))

(assert (=> d!1767227 (= (derivationStepZipperDown!921 (regOne!31671 (regOne!31670 r!7292)) lt!2255535 (h!69361 s!2326)) e!3449518)))

(declare-fun b!5591436 () Bool)

(declare-fun e!3449521 () (InoxSet Context!9926))

(assert (=> b!5591436 (= e!3449521 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5591437 () Bool)

(declare-fun e!3449522 () (InoxSet Context!9926))

(assert (=> b!5591437 (= e!3449518 e!3449522)))

(declare-fun c!979847 () Bool)

(assert (=> b!5591437 (= c!979847 ((_ is Union!15579) (regOne!31671 (regOne!31670 r!7292))))))

(declare-fun b!5591438 () Bool)

(assert (=> b!5591438 (= e!3449518 (store ((as const (Array Context!9926 Bool)) false) lt!2255535 true))))

(declare-fun b!5591439 () Bool)

(declare-fun e!3449523 () (InoxSet Context!9926))

(assert (=> b!5591439 (= e!3449523 call!418845)))

(declare-fun c!979851 () Bool)

(declare-fun call!418849 () List!63036)

(declare-fun bm!418840 () Bool)

(declare-fun c!979849 () Bool)

(assert (=> bm!418840 (= call!418849 ($colon$colon!1642 (exprs!5463 lt!2255535) (ite (or c!979849 c!979851) (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (regOne!31671 (regOne!31670 r!7292)))))))

(declare-fun b!5591440 () Bool)

(assert (=> b!5591440 (= e!3449521 call!418845)))

(declare-fun bm!418841 () Bool)

(declare-fun call!418844 () List!63036)

(assert (=> bm!418841 (= call!418844 call!418849)))

(declare-fun bm!418842 () Bool)

(declare-fun call!418847 () (InoxSet Context!9926))

(assert (=> bm!418842 (= call!418846 call!418847)))

(declare-fun b!5591441 () Bool)

(declare-fun e!3449519 () Bool)

(assert (=> b!5591441 (= c!979849 e!3449519)))

(declare-fun res!2372241 () Bool)

(assert (=> b!5591441 (=> (not res!2372241) (not e!3449519))))

(assert (=> b!5591441 (= res!2372241 ((_ is Concat!24424) (regOne!31671 (regOne!31670 r!7292))))))

(declare-fun e!3449520 () (InoxSet Context!9926))

(assert (=> b!5591441 (= e!3449522 e!3449520)))

(declare-fun b!5591442 () Bool)

(declare-fun c!979850 () Bool)

(assert (=> b!5591442 (= c!979850 ((_ is Star!15579) (regOne!31671 (regOne!31670 r!7292))))))

(assert (=> b!5591442 (= e!3449523 e!3449521)))

(declare-fun bm!418843 () Bool)

(assert (=> bm!418843 (= call!418847 (derivationStepZipperDown!921 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292)))))) (ite (or c!979847 c!979849) lt!2255535 (Context!9927 call!418844)) (h!69361 s!2326)))))

(declare-fun b!5591443 () Bool)

(declare-fun call!418848 () (InoxSet Context!9926))

(assert (=> b!5591443 (= e!3449522 ((_ map or) call!418847 call!418848))))

(declare-fun b!5591444 () Bool)

(assert (=> b!5591444 (= e!3449520 e!3449523)))

(assert (=> b!5591444 (= c!979851 ((_ is Concat!24424) (regOne!31671 (regOne!31670 r!7292))))))

(declare-fun bm!418844 () Bool)

(assert (=> bm!418844 (= call!418848 (derivationStepZipperDown!921 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))) (ite c!979847 lt!2255535 (Context!9927 call!418849)) (h!69361 s!2326)))))

(declare-fun b!5591445 () Bool)

(assert (=> b!5591445 (= e!3449520 ((_ map or) call!418848 call!418846))))

(declare-fun b!5591446 () Bool)

(assert (=> b!5591446 (= e!3449519 (nullable!5611 (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))))))

(assert (= (and d!1767227 c!979848) b!5591438))

(assert (= (and d!1767227 (not c!979848)) b!5591437))

(assert (= (and b!5591437 c!979847) b!5591443))

(assert (= (and b!5591437 (not c!979847)) b!5591441))

(assert (= (and b!5591441 res!2372241) b!5591446))

(assert (= (and b!5591441 c!979849) b!5591445))

(assert (= (and b!5591441 (not c!979849)) b!5591444))

(assert (= (and b!5591444 c!979851) b!5591439))

(assert (= (and b!5591444 (not c!979851)) b!5591442))

(assert (= (and b!5591442 c!979850) b!5591440))

(assert (= (and b!5591442 (not c!979850)) b!5591436))

(assert (= (or b!5591439 b!5591440) bm!418841))

(assert (= (or b!5591439 b!5591440) bm!418839))

(assert (= (or b!5591445 bm!418841) bm!418840))

(assert (= (or b!5591445 bm!418839) bm!418842))

(assert (= (or b!5591443 b!5591445) bm!418844))

(assert (= (or b!5591443 bm!418842) bm!418843))

(declare-fun m!6571416 () Bool)

(assert (=> b!5591446 m!6571416))

(assert (=> b!5591438 m!6571224))

(declare-fun m!6571418 () Bool)

(assert (=> bm!418843 m!6571418))

(declare-fun m!6571420 () Bool)

(assert (=> bm!418844 m!6571420))

(declare-fun m!6571422 () Bool)

(assert (=> bm!418840 m!6571422))

(assert (=> b!5590760 d!1767227))

(declare-fun d!1767229 () Bool)

(declare-fun lt!2255638 () Regex!15579)

(assert (=> d!1767229 (validRegex!7315 lt!2255638)))

(assert (=> d!1767229 (= lt!2255638 (generalisedUnion!1442 (unfocusZipperList!1007 zl!343)))))

(assert (=> d!1767229 (= (unfocusZipper!1321 zl!343) lt!2255638)))

(declare-fun bs!1292812 () Bool)

(assert (= bs!1292812 d!1767229))

(declare-fun m!6571424 () Bool)

(assert (=> bs!1292812 m!6571424))

(assert (=> bs!1292812 m!6570806))

(assert (=> bs!1292812 m!6570806))

(assert (=> bs!1292812 m!6570808))

(assert (=> b!5590780 d!1767229))

(declare-fun bs!1292813 () Bool)

(declare-fun b!5591481 () Bool)

(assert (= bs!1292813 (and b!5591481 b!5590791)))

(declare-fun lambda!300131 () Int)

(assert (=> bs!1292813 (not (= lambda!300131 lambda!300075))))

(declare-fun bs!1292814 () Bool)

(assert (= bs!1292814 (and b!5591481 d!1767181)))

(assert (=> bs!1292814 (not (= lambda!300131 lambda!300119))))

(declare-fun bs!1292815 () Bool)

(assert (= bs!1292815 (and b!5591481 d!1767179)))

(assert (=> bs!1292815 (not (= lambda!300131 lambda!300113))))

(assert (=> bs!1292813 (not (= lambda!300131 lambda!300074))))

(assert (=> bs!1292814 (not (= lambda!300131 lambda!300118))))

(assert (=> b!5591481 true))

(assert (=> b!5591481 true))

(declare-fun bs!1292816 () Bool)

(declare-fun b!5591487 () Bool)

(assert (= bs!1292816 (and b!5591487 b!5590791)))

(declare-fun lambda!300132 () Int)

(assert (=> bs!1292816 (= lambda!300132 lambda!300075)))

(declare-fun bs!1292817 () Bool)

(assert (= bs!1292817 (and b!5591487 d!1767181)))

(assert (=> bs!1292817 (= lambda!300132 lambda!300119)))

(declare-fun bs!1292818 () Bool)

(assert (= bs!1292818 (and b!5591487 d!1767179)))

(assert (=> bs!1292818 (not (= lambda!300132 lambda!300113))))

(assert (=> bs!1292816 (not (= lambda!300132 lambda!300074))))

(declare-fun bs!1292819 () Bool)

(assert (= bs!1292819 (and b!5591487 b!5591481)))

(assert (=> bs!1292819 (not (= lambda!300132 lambda!300131))))

(assert (=> bs!1292817 (not (= lambda!300132 lambda!300118))))

(assert (=> b!5591487 true))

(assert (=> b!5591487 true))

(declare-fun bm!418849 () Bool)

(declare-fun c!979860 () Bool)

(declare-fun call!418854 () Bool)

(assert (=> bm!418849 (= call!418854 (Exists!2679 (ite c!979860 lambda!300131 lambda!300132)))))

(declare-fun b!5591479 () Bool)

(declare-fun e!3449547 () Bool)

(declare-fun e!3449546 () Bool)

(assert (=> b!5591479 (= e!3449547 e!3449546)))

(declare-fun res!2372258 () Bool)

(assert (=> b!5591479 (= res!2372258 (not ((_ is EmptyLang!15579) r!7292)))))

(assert (=> b!5591479 (=> (not res!2372258) (not e!3449546))))

(declare-fun b!5591480 () Bool)

(declare-fun res!2372260 () Bool)

(declare-fun e!3449545 () Bool)

(assert (=> b!5591480 (=> res!2372260 e!3449545)))

(declare-fun call!418855 () Bool)

(assert (=> b!5591480 (= res!2372260 call!418855)))

(declare-fun e!3449544 () Bool)

(assert (=> b!5591480 (= e!3449544 e!3449545)))

(assert (=> b!5591481 (= e!3449545 call!418854)))

(declare-fun bm!418850 () Bool)

(assert (=> bm!418850 (= call!418855 (isEmpty!34734 s!2326))))

(declare-fun b!5591483 () Bool)

(declare-fun e!3449542 () Bool)

(declare-fun e!3449543 () Bool)

(assert (=> b!5591483 (= e!3449542 e!3449543)))

(declare-fun res!2372259 () Bool)

(assert (=> b!5591483 (= res!2372259 (matchRSpec!2682 (regOne!31671 r!7292) s!2326))))

(assert (=> b!5591483 (=> res!2372259 e!3449543)))

(declare-fun b!5591484 () Bool)

(assert (=> b!5591484 (= e!3449542 e!3449544)))

(assert (=> b!5591484 (= c!979860 ((_ is Star!15579) r!7292))))

(declare-fun b!5591485 () Bool)

(declare-fun c!979862 () Bool)

(assert (=> b!5591485 (= c!979862 ((_ is ElementMatch!15579) r!7292))))

(declare-fun e!3449548 () Bool)

(assert (=> b!5591485 (= e!3449546 e!3449548)))

(declare-fun b!5591486 () Bool)

(assert (=> b!5591486 (= e!3449547 call!418855)))

(assert (=> b!5591487 (= e!3449544 call!418854)))

(declare-fun b!5591482 () Bool)

(declare-fun c!979861 () Bool)

(assert (=> b!5591482 (= c!979861 ((_ is Union!15579) r!7292))))

(assert (=> b!5591482 (= e!3449548 e!3449542)))

(declare-fun d!1767231 () Bool)

(declare-fun c!979863 () Bool)

(assert (=> d!1767231 (= c!979863 ((_ is EmptyExpr!15579) r!7292))))

(assert (=> d!1767231 (= (matchRSpec!2682 r!7292 s!2326) e!3449547)))

(declare-fun b!5591488 () Bool)

(assert (=> b!5591488 (= e!3449543 (matchRSpec!2682 (regTwo!31671 r!7292) s!2326))))

(declare-fun b!5591489 () Bool)

(assert (=> b!5591489 (= e!3449548 (= s!2326 (Cons!62913 (c!979652 r!7292) Nil!62913)))))

(assert (= (and d!1767231 c!979863) b!5591486))

(assert (= (and d!1767231 (not c!979863)) b!5591479))

(assert (= (and b!5591479 res!2372258) b!5591485))

(assert (= (and b!5591485 c!979862) b!5591489))

(assert (= (and b!5591485 (not c!979862)) b!5591482))

(assert (= (and b!5591482 c!979861) b!5591483))

(assert (= (and b!5591482 (not c!979861)) b!5591484))

(assert (= (and b!5591483 (not res!2372259)) b!5591488))

(assert (= (and b!5591484 c!979860) b!5591480))

(assert (= (and b!5591484 (not c!979860)) b!5591487))

(assert (= (and b!5591480 (not res!2372260)) b!5591481))

(assert (= (or b!5591481 b!5591487) bm!418849))

(assert (= (or b!5591486 b!5591480) bm!418850))

(declare-fun m!6571426 () Bool)

(assert (=> bm!418849 m!6571426))

(assert (=> bm!418850 m!6571334))

(declare-fun m!6571428 () Bool)

(assert (=> b!5591483 m!6571428))

(declare-fun m!6571430 () Bool)

(assert (=> b!5591488 m!6571430))

(assert (=> b!5590779 d!1767231))

(declare-fun b!5591518 () Bool)

(declare-fun e!3449569 () Bool)

(assert (=> b!5591518 (= e!3449569 (not (= (head!11927 s!2326) (c!979652 r!7292))))))

(declare-fun b!5591519 () Bool)

(declare-fun res!2372278 () Bool)

(declare-fun e!3449567 () Bool)

(assert (=> b!5591519 (=> res!2372278 e!3449567)))

(declare-fun e!3449566 () Bool)

(assert (=> b!5591519 (= res!2372278 e!3449566)))

(declare-fun res!2372279 () Bool)

(assert (=> b!5591519 (=> (not res!2372279) (not e!3449566))))

(declare-fun lt!2255641 () Bool)

(assert (=> b!5591519 (= res!2372279 lt!2255641)))

(declare-fun b!5591520 () Bool)

(declare-fun e!3449563 () Bool)

(assert (=> b!5591520 (= e!3449563 (not lt!2255641))))

(declare-fun b!5591521 () Bool)

(declare-fun e!3449565 () Bool)

(declare-fun derivativeStep!4427 (Regex!15579 C!31428) Regex!15579)

(assert (=> b!5591521 (= e!3449565 (matchR!7764 (derivativeStep!4427 r!7292 (head!11927 s!2326)) (tail!11022 s!2326)))))

(declare-fun b!5591522 () Bool)

(declare-fun res!2372283 () Bool)

(assert (=> b!5591522 (=> res!2372283 e!3449567)))

(assert (=> b!5591522 (= res!2372283 (not ((_ is ElementMatch!15579) r!7292)))))

(assert (=> b!5591522 (= e!3449563 e!3449567)))

(declare-fun b!5591523 () Bool)

(declare-fun e!3449568 () Bool)

(assert (=> b!5591523 (= e!3449568 e!3449569)))

(declare-fun res!2372280 () Bool)

(assert (=> b!5591523 (=> res!2372280 e!3449569)))

(declare-fun call!418858 () Bool)

(assert (=> b!5591523 (= res!2372280 call!418858)))

(declare-fun b!5591524 () Bool)

(declare-fun res!2372277 () Bool)

(assert (=> b!5591524 (=> res!2372277 e!3449569)))

(assert (=> b!5591524 (= res!2372277 (not (isEmpty!34734 (tail!11022 s!2326))))))

(declare-fun b!5591525 () Bool)

(declare-fun e!3449564 () Bool)

(assert (=> b!5591525 (= e!3449564 (= lt!2255641 call!418858))))

(declare-fun b!5591526 () Bool)

(declare-fun res!2372281 () Bool)

(assert (=> b!5591526 (=> (not res!2372281) (not e!3449566))))

(assert (=> b!5591526 (= res!2372281 (isEmpty!34734 (tail!11022 s!2326)))))

(declare-fun b!5591527 () Bool)

(assert (=> b!5591527 (= e!3449565 (nullable!5611 r!7292))))

(declare-fun b!5591528 () Bool)

(assert (=> b!5591528 (= e!3449566 (= (head!11927 s!2326) (c!979652 r!7292)))))

(declare-fun bm!418853 () Bool)

(assert (=> bm!418853 (= call!418858 (isEmpty!34734 s!2326))))

(declare-fun b!5591529 () Bool)

(assert (=> b!5591529 (= e!3449564 e!3449563)))

(declare-fun c!979870 () Bool)

(assert (=> b!5591529 (= c!979870 ((_ is EmptyLang!15579) r!7292))))

(declare-fun b!5591530 () Bool)

(assert (=> b!5591530 (= e!3449567 e!3449568)))

(declare-fun res!2372282 () Bool)

(assert (=> b!5591530 (=> (not res!2372282) (not e!3449568))))

(assert (=> b!5591530 (= res!2372282 (not lt!2255641))))

(declare-fun d!1767233 () Bool)

(assert (=> d!1767233 e!3449564))

(declare-fun c!979871 () Bool)

(assert (=> d!1767233 (= c!979871 ((_ is EmptyExpr!15579) r!7292))))

(assert (=> d!1767233 (= lt!2255641 e!3449565)))

(declare-fun c!979872 () Bool)

(assert (=> d!1767233 (= c!979872 (isEmpty!34734 s!2326))))

(assert (=> d!1767233 (validRegex!7315 r!7292)))

(assert (=> d!1767233 (= (matchR!7764 r!7292 s!2326) lt!2255641)))

(declare-fun b!5591531 () Bool)

(declare-fun res!2372284 () Bool)

(assert (=> b!5591531 (=> (not res!2372284) (not e!3449566))))

(assert (=> b!5591531 (= res!2372284 (not call!418858))))

(assert (= (and d!1767233 c!979872) b!5591527))

(assert (= (and d!1767233 (not c!979872)) b!5591521))

(assert (= (and d!1767233 c!979871) b!5591525))

(assert (= (and d!1767233 (not c!979871)) b!5591529))

(assert (= (and b!5591529 c!979870) b!5591520))

(assert (= (and b!5591529 (not c!979870)) b!5591522))

(assert (= (and b!5591522 (not res!2372283)) b!5591519))

(assert (= (and b!5591519 res!2372279) b!5591531))

(assert (= (and b!5591531 res!2372284) b!5591526))

(assert (= (and b!5591526 res!2372281) b!5591528))

(assert (= (and b!5591519 (not res!2372278)) b!5591530))

(assert (= (and b!5591530 res!2372282) b!5591523))

(assert (= (and b!5591523 (not res!2372280)) b!5591524))

(assert (= (and b!5591524 (not res!2372277)) b!5591518))

(assert (= (or b!5591525 b!5591523 b!5591531) bm!418853))

(assert (=> b!5591518 m!6571338))

(assert (=> b!5591521 m!6571338))

(assert (=> b!5591521 m!6571338))

(declare-fun m!6571432 () Bool)

(assert (=> b!5591521 m!6571432))

(assert (=> b!5591521 m!6571342))

(assert (=> b!5591521 m!6571432))

(assert (=> b!5591521 m!6571342))

(declare-fun m!6571434 () Bool)

(assert (=> b!5591521 m!6571434))

(assert (=> bm!418853 m!6571334))

(assert (=> b!5591528 m!6571338))

(assert (=> b!5591524 m!6571342))

(assert (=> b!5591524 m!6571342))

(declare-fun m!6571436 () Bool)

(assert (=> b!5591524 m!6571436))

(assert (=> d!1767233 m!6571334))

(assert (=> d!1767233 m!6570858))

(declare-fun m!6571438 () Bool)

(assert (=> b!5591527 m!6571438))

(assert (=> b!5591526 m!6571342))

(assert (=> b!5591526 m!6571342))

(assert (=> b!5591526 m!6571436))

(assert (=> b!5590779 d!1767233))

(declare-fun d!1767235 () Bool)

(assert (=> d!1767235 (= (matchR!7764 r!7292 s!2326) (matchRSpec!2682 r!7292 s!2326))))

(declare-fun lt!2255644 () Unit!155724)

(declare-fun choose!42407 (Regex!15579 List!63037) Unit!155724)

(assert (=> d!1767235 (= lt!2255644 (choose!42407 r!7292 s!2326))))

(assert (=> d!1767235 (validRegex!7315 r!7292)))

(assert (=> d!1767235 (= (mainMatchTheorem!2682 r!7292 s!2326) lt!2255644)))

(declare-fun bs!1292820 () Bool)

(assert (= bs!1292820 d!1767235))

(assert (=> bs!1292820 m!6570814))

(assert (=> bs!1292820 m!6570812))

(declare-fun m!6571440 () Bool)

(assert (=> bs!1292820 m!6571440))

(assert (=> bs!1292820 m!6570858))

(assert (=> b!5590779 d!1767235))

(declare-fun b!5591539 () Bool)

(declare-fun e!3449575 () Bool)

(declare-fun tp!1546394 () Bool)

(assert (=> b!5591539 (= e!3449575 tp!1546394)))

(declare-fun b!5591538 () Bool)

(declare-fun e!3449574 () Bool)

(declare-fun tp!1546395 () Bool)

(assert (=> b!5591538 (= e!3449574 (and (inv!82194 (h!69362 (t!376316 zl!343))) e!3449575 tp!1546395))))

(assert (=> b!5590778 (= tp!1546322 e!3449574)))

(assert (= b!5591538 b!5591539))

(assert (= (and b!5590778 ((_ is Cons!62914) (t!376316 zl!343))) b!5591538))

(declare-fun m!6571442 () Bool)

(assert (=> b!5591538 m!6571442))

(declare-fun b!5591553 () Bool)

(declare-fun e!3449578 () Bool)

(declare-fun tp!1546406 () Bool)

(declare-fun tp!1546408 () Bool)

(assert (=> b!5591553 (= e!3449578 (and tp!1546406 tp!1546408))))

(declare-fun b!5591551 () Bool)

(declare-fun tp!1546410 () Bool)

(declare-fun tp!1546409 () Bool)

(assert (=> b!5591551 (= e!3449578 (and tp!1546410 tp!1546409))))

(declare-fun b!5591552 () Bool)

(declare-fun tp!1546407 () Bool)

(assert (=> b!5591552 (= e!3449578 tp!1546407)))

(assert (=> b!5590777 (= tp!1546325 e!3449578)))

(declare-fun b!5591550 () Bool)

(assert (=> b!5591550 (= e!3449578 tp_is_empty!40411)))

(assert (= (and b!5590777 ((_ is ElementMatch!15579) (regOne!31670 r!7292))) b!5591550))

(assert (= (and b!5590777 ((_ is Concat!24424) (regOne!31670 r!7292))) b!5591551))

(assert (= (and b!5590777 ((_ is Star!15579) (regOne!31670 r!7292))) b!5591552))

(assert (= (and b!5590777 ((_ is Union!15579) (regOne!31670 r!7292))) b!5591553))

(declare-fun b!5591557 () Bool)

(declare-fun e!3449579 () Bool)

(declare-fun tp!1546411 () Bool)

(declare-fun tp!1546413 () Bool)

(assert (=> b!5591557 (= e!3449579 (and tp!1546411 tp!1546413))))

(declare-fun b!5591555 () Bool)

(declare-fun tp!1546415 () Bool)

(declare-fun tp!1546414 () Bool)

(assert (=> b!5591555 (= e!3449579 (and tp!1546415 tp!1546414))))

(declare-fun b!5591556 () Bool)

(declare-fun tp!1546412 () Bool)

(assert (=> b!5591556 (= e!3449579 tp!1546412)))

(assert (=> b!5590777 (= tp!1546329 e!3449579)))

(declare-fun b!5591554 () Bool)

(assert (=> b!5591554 (= e!3449579 tp_is_empty!40411)))

(assert (= (and b!5590777 ((_ is ElementMatch!15579) (regTwo!31670 r!7292))) b!5591554))

(assert (= (and b!5590777 ((_ is Concat!24424) (regTwo!31670 r!7292))) b!5591555))

(assert (= (and b!5590777 ((_ is Star!15579) (regTwo!31670 r!7292))) b!5591556))

(assert (= (and b!5590777 ((_ is Union!15579) (regTwo!31670 r!7292))) b!5591557))

(declare-fun b!5591562 () Bool)

(declare-fun e!3449582 () Bool)

(declare-fun tp!1546418 () Bool)

(assert (=> b!5591562 (= e!3449582 (and tp_is_empty!40411 tp!1546418))))

(assert (=> b!5590762 (= tp!1546328 e!3449582)))

(assert (= (and b!5590762 ((_ is Cons!62913) (t!376315 s!2326))) b!5591562))

(declare-fun b!5591567 () Bool)

(declare-fun e!3449585 () Bool)

(declare-fun tp!1546423 () Bool)

(declare-fun tp!1546424 () Bool)

(assert (=> b!5591567 (= e!3449585 (and tp!1546423 tp!1546424))))

(assert (=> b!5590776 (= tp!1546327 e!3449585)))

(assert (= (and b!5590776 ((_ is Cons!62912) (exprs!5463 setElem!37261))) b!5591567))

(declare-fun b!5591571 () Bool)

(declare-fun e!3449586 () Bool)

(declare-fun tp!1546425 () Bool)

(declare-fun tp!1546427 () Bool)

(assert (=> b!5591571 (= e!3449586 (and tp!1546425 tp!1546427))))

(declare-fun b!5591569 () Bool)

(declare-fun tp!1546429 () Bool)

(declare-fun tp!1546428 () Bool)

(assert (=> b!5591569 (= e!3449586 (and tp!1546429 tp!1546428))))

(declare-fun b!5591570 () Bool)

(declare-fun tp!1546426 () Bool)

(assert (=> b!5591570 (= e!3449586 tp!1546426)))

(assert (=> b!5590785 (= tp!1546324 e!3449586)))

(declare-fun b!5591568 () Bool)

(assert (=> b!5591568 (= e!3449586 tp_is_empty!40411)))

(assert (= (and b!5590785 ((_ is ElementMatch!15579) (reg!15908 r!7292))) b!5591568))

(assert (= (and b!5590785 ((_ is Concat!24424) (reg!15908 r!7292))) b!5591569))

(assert (= (and b!5590785 ((_ is Star!15579) (reg!15908 r!7292))) b!5591570))

(assert (= (and b!5590785 ((_ is Union!15579) (reg!15908 r!7292))) b!5591571))

(declare-fun b!5591575 () Bool)

(declare-fun e!3449587 () Bool)

(declare-fun tp!1546430 () Bool)

(declare-fun tp!1546432 () Bool)

(assert (=> b!5591575 (= e!3449587 (and tp!1546430 tp!1546432))))

(declare-fun b!5591573 () Bool)

(declare-fun tp!1546434 () Bool)

(declare-fun tp!1546433 () Bool)

(assert (=> b!5591573 (= e!3449587 (and tp!1546434 tp!1546433))))

(declare-fun b!5591574 () Bool)

(declare-fun tp!1546431 () Bool)

(assert (=> b!5591574 (= e!3449587 tp!1546431)))

(assert (=> b!5590771 (= tp!1546331 e!3449587)))

(declare-fun b!5591572 () Bool)

(assert (=> b!5591572 (= e!3449587 tp_is_empty!40411)))

(assert (= (and b!5590771 ((_ is ElementMatch!15579) (regOne!31671 r!7292))) b!5591572))

(assert (= (and b!5590771 ((_ is Concat!24424) (regOne!31671 r!7292))) b!5591573))

(assert (= (and b!5590771 ((_ is Star!15579) (regOne!31671 r!7292))) b!5591574))

(assert (= (and b!5590771 ((_ is Union!15579) (regOne!31671 r!7292))) b!5591575))

(declare-fun b!5591579 () Bool)

(declare-fun e!3449588 () Bool)

(declare-fun tp!1546435 () Bool)

(declare-fun tp!1546437 () Bool)

(assert (=> b!5591579 (= e!3449588 (and tp!1546435 tp!1546437))))

(declare-fun b!5591577 () Bool)

(declare-fun tp!1546439 () Bool)

(declare-fun tp!1546438 () Bool)

(assert (=> b!5591577 (= e!3449588 (and tp!1546439 tp!1546438))))

(declare-fun b!5591578 () Bool)

(declare-fun tp!1546436 () Bool)

(assert (=> b!5591578 (= e!3449588 tp!1546436)))

(assert (=> b!5590771 (= tp!1546326 e!3449588)))

(declare-fun b!5591576 () Bool)

(assert (=> b!5591576 (= e!3449588 tp_is_empty!40411)))

(assert (= (and b!5590771 ((_ is ElementMatch!15579) (regTwo!31671 r!7292))) b!5591576))

(assert (= (and b!5590771 ((_ is Concat!24424) (regTwo!31671 r!7292))) b!5591577))

(assert (= (and b!5590771 ((_ is Star!15579) (regTwo!31671 r!7292))) b!5591578))

(assert (= (and b!5590771 ((_ is Union!15579) (regTwo!31671 r!7292))) b!5591579))

(declare-fun b!5591580 () Bool)

(declare-fun e!3449589 () Bool)

(declare-fun tp!1546440 () Bool)

(declare-fun tp!1546441 () Bool)

(assert (=> b!5591580 (= e!3449589 (and tp!1546440 tp!1546441))))

(assert (=> b!5590765 (= tp!1546330 e!3449589)))

(assert (= (and b!5590765 ((_ is Cons!62912) (exprs!5463 (h!69362 zl!343)))) b!5591580))

(declare-fun condSetEmpty!37267 () Bool)

(assert (=> setNonEmpty!37261 (= condSetEmpty!37267 (= setRest!37261 ((as const (Array Context!9926 Bool)) false)))))

(declare-fun setRes!37267 () Bool)

(assert (=> setNonEmpty!37261 (= tp!1546323 setRes!37267)))

(declare-fun setIsEmpty!37267 () Bool)

(assert (=> setIsEmpty!37267 setRes!37267))

(declare-fun e!3449592 () Bool)

(declare-fun tp!1546447 () Bool)

(declare-fun setNonEmpty!37267 () Bool)

(declare-fun setElem!37267 () Context!9926)

(assert (=> setNonEmpty!37267 (= setRes!37267 (and tp!1546447 (inv!82194 setElem!37267) e!3449592))))

(declare-fun setRest!37267 () (InoxSet Context!9926))

(assert (=> setNonEmpty!37267 (= setRest!37261 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) setElem!37267 true) setRest!37267))))

(declare-fun b!5591585 () Bool)

(declare-fun tp!1546446 () Bool)

(assert (=> b!5591585 (= e!3449592 tp!1546446)))

(assert (= (and setNonEmpty!37261 condSetEmpty!37267) setIsEmpty!37267))

(assert (= (and setNonEmpty!37261 (not condSetEmpty!37267)) setNonEmpty!37267))

(assert (= setNonEmpty!37267 b!5591585))

(declare-fun m!6571444 () Bool)

(assert (=> setNonEmpty!37267 m!6571444))

(declare-fun b_lambda!211869 () Bool)

(assert (= b_lambda!211865 (or b!5590764 b_lambda!211869)))

(declare-fun bs!1292821 () Bool)

(declare-fun d!1767237 () Bool)

(assert (= bs!1292821 (and d!1767237 b!5590764)))

(assert (=> bs!1292821 (= (dynLambda!24605 lambda!300076 lt!2255536) (derivationStepZipperUp!847 lt!2255536 (h!69361 s!2326)))))

(assert (=> bs!1292821 m!6570844))

(assert (=> d!1767207 d!1767237))

(declare-fun b_lambda!211871 () Bool)

(assert (= b_lambda!211863 (or b!5590764 b_lambda!211871)))

(declare-fun bs!1292822 () Bool)

(declare-fun d!1767239 () Bool)

(assert (= bs!1292822 (and d!1767239 b!5590764)))

(assert (=> bs!1292822 (= (dynLambda!24605 lambda!300076 (h!69362 zl!343)) (derivationStepZipperUp!847 (h!69362 zl!343) (h!69361 s!2326)))))

(assert (=> bs!1292822 m!6570876))

(assert (=> d!1767155 d!1767239))

(declare-fun b_lambda!211873 () Bool)

(assert (= b_lambda!211867 (or b!5590764 b_lambda!211873)))

(declare-fun bs!1292823 () Bool)

(declare-fun d!1767241 () Bool)

(assert (= bs!1292823 (and d!1767241 b!5590764)))

(assert (=> bs!1292823 (= (dynLambda!24605 lambda!300076 lt!2255544) (derivationStepZipperUp!847 lt!2255544 (h!69361 s!2326)))))

(assert (=> bs!1292823 m!6570846))

(assert (=> d!1767209 d!1767241))

(check-sat (not b!5591571) (not b!5591556) (not b!5591332) (not b!5591292) (not b!5591261) (not b!5591384) (not bm!418823) (not b!5591521) (not b!5591371) (not b!5591377) (not b!5591199) (not b!5591381) (not b!5591331) (not setNonEmpty!37267) (not bm!418853) (not d!1767205) (not b_lambda!211871) (not d!1767141) (not bm!418822) (not bs!1292823) (not b!5591413) (not b!5591208) (not b!5591435) (not d!1767155) (not b!5591585) (not d!1767219) (not b!5591306) (not b!5591575) (not d!1767173) (not b!5591524) (not b!5591420) (not d!1767211) (not bm!418832) (not b!5591518) (not b!5591293) (not b!5591380) (not b!5591573) tp_is_empty!40411 (not b!5591488) (not b!5591203) (not b!5591264) (not d!1767177) (not b!5591328) (not b!5591539) (not d!1767233) (not d!1767153) (not bm!418801) (not d!1767189) (not b!5591424) (not b!5591367) (not bm!418850) (not b!5591389) (not d!1767137) (not b!5591269) (not b!5591334) (not b!5591204) (not b!5591301) (not b!5591299) (not d!1767151) (not b!5591369) (not b_lambda!211873) (not b!5591557) (not b!5591419) (not d!1767215) (not b!5591580) (not b!5591210) (not bm!418820) (not d!1767199) (not b!5591551) (not b!5591298) (not d!1767207) (not bm!418843) (not b!5591578) (not b!5591198) (not b!5591570) (not b!5591552) (not d!1767179) (not d!1767217) (not b!5591202) (not bm!418844) (not d!1767201) (not d!1767195) (not b!5591209) (not d!1767185) (not d!1767143) (not b!5591577) (not bm!418815) (not b!5591200) (not b!5591294) (not d!1767169) (not b!5591271) (not b!5591378) (not b!5591579) (not b!5591387) (not b!5591562) (not d!1767175) (not b!5591259) (not d!1767183) (not b!5591330) (not d!1767171) (not d!1767235) (not bm!418837) (not b!5591379) (not b_lambda!211869) (not b!5591483) (not bs!1292821) (not d!1767191) (not d!1767145) (not bm!418834) (not b!5591526) (not b!5591221) (not b!5591569) (not bs!1292822) (not b!5591205) (not b!5591528) (not d!1767181) (not b!5591327) (not d!1767149) (not bm!418849) (not b!5591258) (not b!5591527) (not b!5591368) (not b!5591421) (not b!5591223) (not b!5591538) (not bm!418818) (not b!5591553) (not b!5591574) (not d!1767187) (not bm!418840) (not d!1767209) (not d!1767221) (not b!5591270) (not b!5591446) (not d!1767229) (not b!5591376) (not b!5591370) (not b!5591374) (not d!1767165) (not bm!418821) (not bm!418819) (not b!5591201) (not b!5591382) (not d!1767193) (not b!5591266) (not d!1767167) (not bm!418831) (not b!5591555) (not d!1767147) (not b!5591567) (not bm!418838) (not b!5591300))
(check-sat)
(get-model)

(declare-fun d!1767521 () Bool)

(declare-fun lambda!300175 () Int)

(declare-fun exists!2168 ((InoxSet Context!9926) Int) Bool)

(assert (=> d!1767521 (= (nullableZipper!1574 lt!2255546) (exists!2168 lt!2255546 lambda!300175))))

(declare-fun bs!1293031 () Bool)

(assert (= bs!1293031 d!1767521))

(declare-fun m!6572014 () Bool)

(assert (=> bs!1293031 m!6572014))

(assert (=> b!5591198 d!1767521))

(assert (=> bs!1292821 d!1767203))

(declare-fun d!1767523 () Bool)

(assert (=> d!1767523 (= (isEmpty!34734 (tail!11022 s!2326)) ((_ is Nil!62913) (tail!11022 s!2326)))))

(assert (=> b!5591524 d!1767523))

(declare-fun d!1767525 () Bool)

(assert (=> d!1767525 (= (tail!11022 s!2326) (t!376315 s!2326))))

(assert (=> b!5591524 d!1767525))

(declare-fun bs!1293032 () Bool)

(declare-fun d!1767527 () Bool)

(assert (= bs!1293032 (and d!1767527 d!1767521)))

(declare-fun lambda!300176 () Int)

(assert (=> bs!1293032 (= lambda!300176 lambda!300175)))

(assert (=> d!1767527 (= (nullableZipper!1574 z!1189) (exists!2168 z!1189 lambda!300176))))

(declare-fun bs!1293033 () Bool)

(assert (= bs!1293033 d!1767527))

(declare-fun m!6572016 () Bool)

(assert (=> bs!1293033 m!6572016))

(assert (=> b!5591377 d!1767527))

(declare-fun d!1767529 () Bool)

(assert (=> d!1767529 (= (Exists!2679 (ite c!979860 lambda!300131 lambda!300132)) (choose!42403 (ite c!979860 lambda!300131 lambda!300132)))))

(declare-fun bs!1293034 () Bool)

(assert (= bs!1293034 d!1767529))

(declare-fun m!6572018 () Bool)

(assert (=> bs!1293034 m!6572018))

(assert (=> bm!418849 d!1767529))

(assert (=> d!1767165 d!1767167))

(assert (=> d!1767165 d!1767149))

(declare-fun e!3449940 () Bool)

(declare-fun d!1767531 () Bool)

(assert (=> d!1767531 (= (matchZipper!1717 ((_ map or) lt!2255547 lt!2255546) (t!376315 s!2326)) e!3449940)))

(declare-fun res!2372481 () Bool)

(assert (=> d!1767531 (=> res!2372481 e!3449940)))

(assert (=> d!1767531 (= res!2372481 (matchZipper!1717 lt!2255547 (t!376315 s!2326)))))

(assert (=> d!1767531 true))

(declare-fun _$48!1172 () Unit!155724)

(assert (=> d!1767531 (= (choose!42400 lt!2255547 lt!2255546 (t!376315 s!2326)) _$48!1172)))

(declare-fun b!5592199 () Bool)

(assert (=> b!5592199 (= e!3449940 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(assert (= (and d!1767531 (not res!2372481)) b!5592199))

(assert (=> d!1767531 m!6570888))

(assert (=> d!1767531 m!6570802))

(assert (=> b!5592199 m!6570786))

(assert (=> d!1767165 d!1767531))

(declare-fun bs!1293035 () Bool)

(declare-fun d!1767533 () Bool)

(assert (= bs!1293035 (and d!1767533 d!1767521)))

(declare-fun lambda!300177 () Int)

(assert (=> bs!1293035 (= lambda!300177 lambda!300175)))

(declare-fun bs!1293036 () Bool)

(assert (= bs!1293036 (and d!1767533 d!1767527)))

(assert (=> bs!1293036 (= lambda!300177 lambda!300176)))

(assert (=> d!1767533 (= (nullableZipper!1574 ((_ map or) lt!2255543 lt!2255546)) (exists!2168 ((_ map or) lt!2255543 lt!2255546) lambda!300177))))

(declare-fun bs!1293037 () Bool)

(assert (= bs!1293037 d!1767533))

(declare-fun m!6572020 () Bool)

(assert (=> bs!1293037 m!6572020))

(assert (=> b!5591380 d!1767533))

(declare-fun bm!418976 () Bool)

(declare-fun call!418982 () (InoxSet Context!9926))

(declare-fun call!418983 () (InoxSet Context!9926))

(assert (=> bm!418976 (= call!418982 call!418983)))

(declare-fun c!980030 () Bool)

(declare-fun d!1767535 () Bool)

(assert (=> d!1767535 (= c!980030 (and ((_ is ElementMatch!15579) (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (= (c!979652 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (h!69361 s!2326))))))

(declare-fun e!3449941 () (InoxSet Context!9926))

(assert (=> d!1767535 (= (derivationStepZipperDown!921 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292)))))) (ite (or c!979847 c!979849) lt!2255535 (Context!9927 call!418844)) (h!69361 s!2326)) e!3449941)))

(declare-fun b!5592200 () Bool)

(declare-fun e!3449944 () (InoxSet Context!9926))

(assert (=> b!5592200 (= e!3449944 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592201 () Bool)

(declare-fun e!3449945 () (InoxSet Context!9926))

(assert (=> b!5592201 (= e!3449941 e!3449945)))

(declare-fun c!980029 () Bool)

(assert (=> b!5592201 (= c!980029 ((_ is Union!15579) (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))))))

(declare-fun b!5592202 () Bool)

(assert (=> b!5592202 (= e!3449941 (store ((as const (Array Context!9926 Bool)) false) (ite (or c!979847 c!979849) lt!2255535 (Context!9927 call!418844)) true))))

(declare-fun b!5592203 () Bool)

(declare-fun e!3449946 () (InoxSet Context!9926))

(assert (=> b!5592203 (= e!3449946 call!418982)))

(declare-fun c!980033 () Bool)

(declare-fun call!418986 () List!63036)

(declare-fun c!980031 () Bool)

(declare-fun bm!418977 () Bool)

(assert (=> bm!418977 (= call!418986 ($colon$colon!1642 (exprs!5463 (ite (or c!979847 c!979849) lt!2255535 (Context!9927 call!418844))) (ite (or c!980031 c!980033) (regTwo!31670 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292)))))))))))

(declare-fun b!5592204 () Bool)

(assert (=> b!5592204 (= e!3449944 call!418982)))

(declare-fun bm!418978 () Bool)

(declare-fun call!418981 () List!63036)

(assert (=> bm!418978 (= call!418981 call!418986)))

(declare-fun bm!418979 () Bool)

(declare-fun call!418984 () (InoxSet Context!9926))

(assert (=> bm!418979 (= call!418983 call!418984)))

(declare-fun b!5592205 () Bool)

(declare-fun e!3449942 () Bool)

(assert (=> b!5592205 (= c!980031 e!3449942)))

(declare-fun res!2372482 () Bool)

(assert (=> b!5592205 (=> (not res!2372482) (not e!3449942))))

(assert (=> b!5592205 (= res!2372482 ((_ is Concat!24424) (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))))))

(declare-fun e!3449943 () (InoxSet Context!9926))

(assert (=> b!5592205 (= e!3449945 e!3449943)))

(declare-fun c!980032 () Bool)

(declare-fun b!5592206 () Bool)

(assert (=> b!5592206 (= c!980032 ((_ is Star!15579) (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))))))

(assert (=> b!5592206 (= e!3449946 e!3449944)))

(declare-fun bm!418980 () Bool)

(assert (=> bm!418980 (= call!418984 (derivationStepZipperDown!921 (ite c!980029 (regOne!31671 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (ite c!980031 (regTwo!31670 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (ite c!980033 (regOne!31670 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (reg!15908 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292)))))))))) (ite (or c!980029 c!980031) (ite (or c!979847 c!979849) lt!2255535 (Context!9927 call!418844)) (Context!9927 call!418981)) (h!69361 s!2326)))))

(declare-fun b!5592207 () Bool)

(declare-fun call!418985 () (InoxSet Context!9926))

(assert (=> b!5592207 (= e!3449945 ((_ map or) call!418984 call!418985))))

(declare-fun b!5592208 () Bool)

(assert (=> b!5592208 (= e!3449943 e!3449946)))

(assert (=> b!5592208 (= c!980033 ((_ is Concat!24424) (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))))))

(declare-fun bm!418981 () Bool)

(assert (=> bm!418981 (= call!418985 (derivationStepZipperDown!921 (ite c!980029 (regTwo!31671 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292))))))) (regOne!31670 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292)))))))) (ite c!980029 (ite (or c!979847 c!979849) lt!2255535 (Context!9927 call!418844)) (Context!9927 call!418986)) (h!69361 s!2326)))))

(declare-fun b!5592209 () Bool)

(assert (=> b!5592209 (= e!3449943 ((_ map or) call!418985 call!418983))))

(declare-fun b!5592210 () Bool)

(assert (=> b!5592210 (= e!3449942 (nullable!5611 (regOne!31670 (ite c!979847 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (ite c!979849 (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (ite c!979851 (regOne!31670 (regOne!31671 (regOne!31670 r!7292))) (reg!15908 (regOne!31671 (regOne!31670 r!7292)))))))))))

(assert (= (and d!1767535 c!980030) b!5592202))

(assert (= (and d!1767535 (not c!980030)) b!5592201))

(assert (= (and b!5592201 c!980029) b!5592207))

(assert (= (and b!5592201 (not c!980029)) b!5592205))

(assert (= (and b!5592205 res!2372482) b!5592210))

(assert (= (and b!5592205 c!980031) b!5592209))

(assert (= (and b!5592205 (not c!980031)) b!5592208))

(assert (= (and b!5592208 c!980033) b!5592203))

(assert (= (and b!5592208 (not c!980033)) b!5592206))

(assert (= (and b!5592206 c!980032) b!5592204))

(assert (= (and b!5592206 (not c!980032)) b!5592200))

(assert (= (or b!5592203 b!5592204) bm!418978))

(assert (= (or b!5592203 b!5592204) bm!418976))

(assert (= (or b!5592209 bm!418978) bm!418977))

(assert (= (or b!5592209 bm!418976) bm!418979))

(assert (= (or b!5592207 b!5592209) bm!418981))

(assert (= (or b!5592207 bm!418979) bm!418980))

(declare-fun m!6572022 () Bool)

(assert (=> b!5592210 m!6572022))

(declare-fun m!6572024 () Bool)

(assert (=> b!5592202 m!6572024))

(declare-fun m!6572026 () Bool)

(assert (=> bm!418980 m!6572026))

(declare-fun m!6572028 () Bool)

(assert (=> bm!418981 m!6572028))

(declare-fun m!6572030 () Bool)

(assert (=> bm!418977 m!6572030))

(assert (=> bm!418843 d!1767535))

(assert (=> d!1767207 d!1767201))

(declare-fun d!1767537 () Bool)

(assert (=> d!1767537 (= (flatMap!1192 lt!2255540 lambda!300076) (dynLambda!24605 lambda!300076 lt!2255536))))

(assert (=> d!1767537 true))

(declare-fun _$13!2191 () Unit!155724)

(assert (=> d!1767537 (= (choose!42402 lt!2255540 lt!2255536 lambda!300076) _$13!2191)))

(declare-fun b_lambda!211907 () Bool)

(assert (=> (not b_lambda!211907) (not d!1767537)))

(declare-fun bs!1293038 () Bool)

(assert (= bs!1293038 d!1767537))

(assert (=> bs!1293038 m!6570842))

(assert (=> bs!1293038 m!6571376))

(assert (=> d!1767207 d!1767537))

(declare-fun d!1767539 () Bool)

(assert (=> d!1767539 (= (isEmpty!34731 (unfocusZipperList!1007 zl!343)) ((_ is Nil!62912) (unfocusZipperList!1007 zl!343)))))

(assert (=> b!5591293 d!1767539))

(declare-fun d!1767541 () Bool)

(assert (=> d!1767541 (= (head!11927 s!2326) (h!69361 s!2326))))

(assert (=> b!5591528 d!1767541))

(declare-fun d!1767543 () Bool)

(assert (=> d!1767543 (= (nullable!5611 (h!69360 (exprs!5463 lt!2255535))) (nullableFct!1720 (h!69360 (exprs!5463 lt!2255535))))))

(declare-fun bs!1293039 () Bool)

(assert (= bs!1293039 d!1767543))

(declare-fun m!6572032 () Bool)

(assert (=> bs!1293039 m!6572032))

(assert (=> b!5591259 d!1767543))

(declare-fun d!1767545 () Bool)

(assert (=> d!1767545 (= (isEmpty!34734 s!2326) ((_ is Nil!62913) s!2326))))

(assert (=> d!1767233 d!1767545))

(assert (=> d!1767233 d!1767213))

(declare-fun d!1767547 () Bool)

(assert (=> d!1767547 (= (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (nullableFct!1720 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun bs!1293040 () Bool)

(assert (= bs!1293040 d!1767547))

(declare-fun m!6572034 () Bool)

(assert (=> bs!1293040 m!6572034))

(assert (=> b!5591264 d!1767547))

(declare-fun d!1767549 () Bool)

(assert (=> d!1767549 (= (isEmpty!34734 (t!376315 s!2326)) ((_ is Nil!62913) (t!376315 s!2326)))))

(assert (=> d!1767167 d!1767549))

(declare-fun bm!418982 () Bool)

(declare-fun call!418988 () (InoxSet Context!9926))

(declare-fun call!418989 () (InoxSet Context!9926))

(assert (=> bm!418982 (= call!418988 call!418989)))

(declare-fun d!1767551 () Bool)

(declare-fun c!980035 () Bool)

(assert (=> d!1767551 (= c!980035 (and ((_ is ElementMatch!15579) (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (= (c!979652 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (h!69361 s!2326))))))

(declare-fun e!3449947 () (InoxSet Context!9926))

(assert (=> d!1767551 (= (derivationStepZipperDown!921 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))) (ite c!979842 lt!2255535 (Context!9927 call!418843)) (h!69361 s!2326)) e!3449947)))

(declare-fun b!5592211 () Bool)

(declare-fun e!3449950 () (InoxSet Context!9926))

(assert (=> b!5592211 (= e!3449950 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592212 () Bool)

(declare-fun e!3449951 () (InoxSet Context!9926))

(assert (=> b!5592212 (= e!3449947 e!3449951)))

(declare-fun c!980034 () Bool)

(assert (=> b!5592212 (= c!980034 ((_ is Union!15579) (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))))))

(declare-fun b!5592213 () Bool)

(assert (=> b!5592213 (= e!3449947 (store ((as const (Array Context!9926 Bool)) false) (ite c!979842 lt!2255535 (Context!9927 call!418843)) true))))

(declare-fun b!5592214 () Bool)

(declare-fun e!3449952 () (InoxSet Context!9926))

(assert (=> b!5592214 (= e!3449952 call!418988)))

(declare-fun bm!418983 () Bool)

(declare-fun c!980036 () Bool)

(declare-fun c!980038 () Bool)

(declare-fun call!418992 () List!63036)

(assert (=> bm!418983 (= call!418992 ($colon$colon!1642 (exprs!5463 (ite c!979842 lt!2255535 (Context!9927 call!418843))) (ite (or c!980036 c!980038) (regTwo!31670 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))))))))

(declare-fun b!5592215 () Bool)

(assert (=> b!5592215 (= e!3449950 call!418988)))

(declare-fun bm!418984 () Bool)

(declare-fun call!418987 () List!63036)

(assert (=> bm!418984 (= call!418987 call!418992)))

(declare-fun bm!418985 () Bool)

(declare-fun call!418990 () (InoxSet Context!9926))

(assert (=> bm!418985 (= call!418989 call!418990)))

(declare-fun b!5592216 () Bool)

(declare-fun e!3449948 () Bool)

(assert (=> b!5592216 (= c!980036 e!3449948)))

(declare-fun res!2372483 () Bool)

(assert (=> b!5592216 (=> (not res!2372483) (not e!3449948))))

(assert (=> b!5592216 (= res!2372483 ((_ is Concat!24424) (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))))))

(declare-fun e!3449949 () (InoxSet Context!9926))

(assert (=> b!5592216 (= e!3449951 e!3449949)))

(declare-fun b!5592217 () Bool)

(declare-fun c!980037 () Bool)

(assert (=> b!5592217 (= c!980037 ((_ is Star!15579) (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))))))

(assert (=> b!5592217 (= e!3449952 e!3449950)))

(declare-fun bm!418986 () Bool)

(assert (=> bm!418986 (= call!418990 (derivationStepZipperDown!921 (ite c!980034 (regOne!31671 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (ite c!980036 (regTwo!31670 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (ite c!980038 (regOne!31670 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (reg!15908 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))))))) (ite (or c!980034 c!980036) (ite c!979842 lt!2255535 (Context!9927 call!418843)) (Context!9927 call!418987)) (h!69361 s!2326)))))

(declare-fun b!5592218 () Bool)

(declare-fun call!418991 () (InoxSet Context!9926))

(assert (=> b!5592218 (= e!3449951 ((_ map or) call!418990 call!418991))))

(declare-fun b!5592219 () Bool)

(assert (=> b!5592219 (= e!3449949 e!3449952)))

(assert (=> b!5592219 (= c!980038 ((_ is Concat!24424) (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))))))

(declare-fun bm!418987 () Bool)

(assert (=> bm!418987 (= call!418991 (derivationStepZipperDown!921 (ite c!980034 (regTwo!31671 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))) (regOne!31670 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))))) (ite c!980034 (ite c!979842 lt!2255535 (Context!9927 call!418843)) (Context!9927 call!418992)) (h!69361 s!2326)))))

(declare-fun b!5592220 () Bool)

(assert (=> b!5592220 (= e!3449949 ((_ map or) call!418991 call!418989))))

(declare-fun b!5592221 () Bool)

(assert (=> b!5592221 (= e!3449948 (nullable!5611 (regOne!31670 (ite c!979842 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))))))))

(assert (= (and d!1767551 c!980035) b!5592213))

(assert (= (and d!1767551 (not c!980035)) b!5592212))

(assert (= (and b!5592212 c!980034) b!5592218))

(assert (= (and b!5592212 (not c!980034)) b!5592216))

(assert (= (and b!5592216 res!2372483) b!5592221))

(assert (= (and b!5592216 c!980036) b!5592220))

(assert (= (and b!5592216 (not c!980036)) b!5592219))

(assert (= (and b!5592219 c!980038) b!5592214))

(assert (= (and b!5592219 (not c!980038)) b!5592217))

(assert (= (and b!5592217 c!980037) b!5592215))

(assert (= (and b!5592217 (not c!980037)) b!5592211))

(assert (= (or b!5592214 b!5592215) bm!418984))

(assert (= (or b!5592214 b!5592215) bm!418982))

(assert (= (or b!5592220 bm!418984) bm!418983))

(assert (= (or b!5592220 bm!418982) bm!418985))

(assert (= (or b!5592218 b!5592220) bm!418987))

(assert (= (or b!5592218 bm!418985) bm!418986))

(declare-fun m!6572036 () Bool)

(assert (=> b!5592221 m!6572036))

(declare-fun m!6572038 () Bool)

(assert (=> b!5592213 m!6572038))

(declare-fun m!6572040 () Bool)

(assert (=> bm!418986 m!6572040))

(declare-fun m!6572042 () Bool)

(assert (=> bm!418987 m!6572042))

(declare-fun m!6572044 () Bool)

(assert (=> bm!418983 m!6572044))

(assert (=> bm!418838 d!1767551))

(declare-fun d!1767553 () Bool)

(declare-fun c!980041 () Bool)

(assert (=> d!1767553 (= c!980041 ((_ is Nil!62914) lt!2255635))))

(declare-fun e!3449955 () (InoxSet Context!9926))

(assert (=> d!1767553 (= (content!11352 lt!2255635) e!3449955)))

(declare-fun b!5592226 () Bool)

(assert (=> b!5592226 (= e!3449955 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592227 () Bool)

(assert (=> b!5592227 (= e!3449955 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) (h!69362 lt!2255635) true) (content!11352 (t!376316 lt!2255635))))))

(assert (= (and d!1767553 c!980041) b!5592226))

(assert (= (and d!1767553 (not c!980041)) b!5592227))

(declare-fun m!6572046 () Bool)

(assert (=> b!5592227 m!6572046))

(declare-fun m!6572048 () Bool)

(assert (=> b!5592227 m!6572048))

(assert (=> b!5591424 d!1767553))

(assert (=> b!5591269 d!1767137))

(declare-fun bm!418988 () Bool)

(declare-fun call!418994 () (InoxSet Context!9926))

(declare-fun call!418995 () (InoxSet Context!9926))

(assert (=> bm!418988 (= call!418994 call!418995)))

(declare-fun c!980043 () Bool)

(declare-fun d!1767555 () Bool)

(assert (=> d!1767555 (= c!980043 (and ((_ is ElementMatch!15579) (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (= (c!979652 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (h!69361 s!2326))))))

(declare-fun e!3449956 () (InoxSet Context!9926))

(assert (=> d!1767555 (= (derivationStepZipperDown!921 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))) (ite (or c!979786 c!979788) lt!2255535 (Context!9927 call!418819)) (h!69361 s!2326)) e!3449956)))

(declare-fun b!5592228 () Bool)

(declare-fun e!3449959 () (InoxSet Context!9926))

(assert (=> b!5592228 (= e!3449959 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592229 () Bool)

(declare-fun e!3449960 () (InoxSet Context!9926))

(assert (=> b!5592229 (= e!3449956 e!3449960)))

(declare-fun c!980042 () Bool)

(assert (=> b!5592229 (= c!980042 ((_ is Union!15579) (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun b!5592230 () Bool)

(assert (=> b!5592230 (= e!3449956 (store ((as const (Array Context!9926 Bool)) false) (ite (or c!979786 c!979788) lt!2255535 (Context!9927 call!418819)) true))))

(declare-fun b!5592231 () Bool)

(declare-fun e!3449961 () (InoxSet Context!9926))

(assert (=> b!5592231 (= e!3449961 call!418994)))

(declare-fun bm!418989 () Bool)

(declare-fun c!980044 () Bool)

(declare-fun c!980046 () Bool)

(declare-fun call!418998 () List!63036)

(assert (=> bm!418989 (= call!418998 ($colon$colon!1642 (exprs!5463 (ite (or c!979786 c!979788) lt!2255535 (Context!9927 call!418819))) (ite (or c!980044 c!980046) (regTwo!31670 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))))))))

(declare-fun b!5592232 () Bool)

(assert (=> b!5592232 (= e!3449959 call!418994)))

(declare-fun bm!418990 () Bool)

(declare-fun call!418993 () List!63036)

(assert (=> bm!418990 (= call!418993 call!418998)))

(declare-fun bm!418991 () Bool)

(declare-fun call!418996 () (InoxSet Context!9926))

(assert (=> bm!418991 (= call!418995 call!418996)))

(declare-fun b!5592233 () Bool)

(declare-fun e!3449957 () Bool)

(assert (=> b!5592233 (= c!980044 e!3449957)))

(declare-fun res!2372484 () Bool)

(assert (=> b!5592233 (=> (not res!2372484) (not e!3449957))))

(assert (=> b!5592233 (= res!2372484 ((_ is Concat!24424) (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun e!3449958 () (InoxSet Context!9926))

(assert (=> b!5592233 (= e!3449960 e!3449958)))

(declare-fun c!980045 () Bool)

(declare-fun b!5592234 () Bool)

(assert (=> b!5592234 (= c!980045 ((_ is Star!15579) (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))))

(assert (=> b!5592234 (= e!3449961 e!3449959)))

(declare-fun bm!418992 () Bool)

(assert (=> bm!418992 (= call!418996 (derivationStepZipperDown!921 (ite c!980042 (regOne!31671 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (ite c!980044 (regTwo!31670 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (ite c!980046 (regOne!31670 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (reg!15908 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))))))) (ite (or c!980042 c!980044) (ite (or c!979786 c!979788) lt!2255535 (Context!9927 call!418819)) (Context!9927 call!418993)) (h!69361 s!2326)))))

(declare-fun b!5592235 () Bool)

(declare-fun call!418997 () (InoxSet Context!9926))

(assert (=> b!5592235 (= e!3449960 ((_ map or) call!418996 call!418997))))

(declare-fun b!5592236 () Bool)

(assert (=> b!5592236 (= e!3449958 e!3449961)))

(assert (=> b!5592236 (= c!980046 ((_ is Concat!24424) (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun bm!418993 () Bool)

(assert (=> bm!418993 (= call!418997 (derivationStepZipperDown!921 (ite c!980042 (regTwo!31671 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343)))))))) (regOne!31670 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))))) (ite c!980042 (ite (or c!979786 c!979788) lt!2255535 (Context!9927 call!418819)) (Context!9927 call!418998)) (h!69361 s!2326)))))

(declare-fun b!5592237 () Bool)

(assert (=> b!5592237 (= e!3449958 ((_ map or) call!418997 call!418995))))

(declare-fun b!5592238 () Bool)

(assert (=> b!5592238 (= e!3449957 (nullable!5611 (regOne!31670 (ite c!979786 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979788 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!979790 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))))))))

(assert (= (and d!1767555 c!980043) b!5592230))

(assert (= (and d!1767555 (not c!980043)) b!5592229))

(assert (= (and b!5592229 c!980042) b!5592235))

(assert (= (and b!5592229 (not c!980042)) b!5592233))

(assert (= (and b!5592233 res!2372484) b!5592238))

(assert (= (and b!5592233 c!980044) b!5592237))

(assert (= (and b!5592233 (not c!980044)) b!5592236))

(assert (= (and b!5592236 c!980046) b!5592231))

(assert (= (and b!5592236 (not c!980046)) b!5592234))

(assert (= (and b!5592234 c!980045) b!5592232))

(assert (= (and b!5592234 (not c!980045)) b!5592228))

(assert (= (or b!5592231 b!5592232) bm!418990))

(assert (= (or b!5592231 b!5592232) bm!418988))

(assert (= (or b!5592237 bm!418990) bm!418989))

(assert (= (or b!5592237 bm!418988) bm!418991))

(assert (= (or b!5592235 b!5592237) bm!418993))

(assert (= (or b!5592235 bm!418991) bm!418992))

(declare-fun m!6572050 () Bool)

(assert (=> b!5592238 m!6572050))

(declare-fun m!6572052 () Bool)

(assert (=> b!5592230 m!6572052))

(declare-fun m!6572054 () Bool)

(assert (=> bm!418992 m!6572054))

(declare-fun m!6572056 () Bool)

(assert (=> bm!418993 m!6572056))

(declare-fun m!6572058 () Bool)

(assert (=> bm!418989 m!6572058))

(assert (=> bm!418818 d!1767555))

(declare-fun d!1767557 () Bool)

(declare-fun c!980047 () Bool)

(assert (=> d!1767557 (= c!980047 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3449962 () Bool)

(assert (=> d!1767557 (= (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255547 lt!2255546) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3449962)))

(declare-fun b!5592239 () Bool)

(assert (=> b!5592239 (= e!3449962 (nullableZipper!1574 (derivationStepZipper!1678 ((_ map or) lt!2255547 lt!2255546) (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592240 () Bool)

(assert (=> b!5592240 (= e!3449962 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 ((_ map or) lt!2255547 lt!2255546) (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767557 c!980047) b!5592239))

(assert (= (and d!1767557 (not c!980047)) b!5592240))

(assert (=> d!1767557 m!6571176))

(declare-fun m!6572060 () Bool)

(assert (=> d!1767557 m!6572060))

(assert (=> b!5592239 m!6571248))

(declare-fun m!6572062 () Bool)

(assert (=> b!5592239 m!6572062))

(assert (=> b!5592240 m!6571176))

(declare-fun m!6572064 () Bool)

(assert (=> b!5592240 m!6572064))

(assert (=> b!5592240 m!6571248))

(assert (=> b!5592240 m!6572064))

(declare-fun m!6572066 () Bool)

(assert (=> b!5592240 m!6572066))

(assert (=> b!5592240 m!6571176))

(declare-fun m!6572068 () Bool)

(assert (=> b!5592240 m!6572068))

(assert (=> b!5592240 m!6572066))

(assert (=> b!5592240 m!6572068))

(declare-fun m!6572070 () Bool)

(assert (=> b!5592240 m!6572070))

(assert (=> b!5591271 d!1767557))

(declare-fun bs!1293041 () Bool)

(declare-fun d!1767559 () Bool)

(assert (= bs!1293041 (and d!1767559 b!5590764)))

(declare-fun lambda!300180 () Int)

(assert (=> bs!1293041 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300180 lambda!300076))))

(assert (=> d!1767559 true))

(assert (=> d!1767559 (= (derivationStepZipper!1678 ((_ map or) lt!2255547 lt!2255546) (head!11927 (t!376315 s!2326))) (flatMap!1192 ((_ map or) lt!2255547 lt!2255546) lambda!300180))))

(declare-fun bs!1293042 () Bool)

(assert (= bs!1293042 d!1767559))

(declare-fun m!6572072 () Bool)

(assert (=> bs!1293042 m!6572072))

(assert (=> b!5591271 d!1767559))

(declare-fun d!1767561 () Bool)

(assert (=> d!1767561 (= (head!11927 (t!376315 s!2326)) (h!69361 (t!376315 s!2326)))))

(assert (=> b!5591271 d!1767561))

(declare-fun d!1767563 () Bool)

(assert (=> d!1767563 (= (tail!11022 (t!376315 s!2326)) (t!376315 (t!376315 s!2326)))))

(assert (=> b!5591271 d!1767563))

(declare-fun d!1767565 () Bool)

(assert (=> d!1767565 (= (head!11928 (exprs!5463 (h!69362 zl!343))) (h!69360 (exprs!5463 (h!69362 zl!343))))))

(assert (=> b!5591368 d!1767565))

(assert (=> d!1767209 d!1767205))

(declare-fun d!1767567 () Bool)

(assert (=> d!1767567 (= (flatMap!1192 lt!2255538 lambda!300076) (dynLambda!24605 lambda!300076 lt!2255544))))

(assert (=> d!1767567 true))

(declare-fun _$13!2192 () Unit!155724)

(assert (=> d!1767567 (= (choose!42402 lt!2255538 lt!2255544 lambda!300076) _$13!2192)))

(declare-fun b_lambda!211909 () Bool)

(assert (=> (not b_lambda!211909) (not d!1767567)))

(declare-fun bs!1293043 () Bool)

(assert (= bs!1293043 d!1767567))

(assert (=> bs!1293043 m!6570840))

(assert (=> bs!1293043 m!6571380))

(assert (=> d!1767209 d!1767567))

(assert (=> b!5591221 d!1767153))

(assert (=> d!1767187 d!1767545))

(assert (=> d!1767193 d!1767549))

(declare-fun d!1767569 () Bool)

(assert (=> d!1767569 (= (isEmpty!34731 (exprs!5463 (h!69362 zl!343))) ((_ is Nil!62912) (exprs!5463 (h!69362 zl!343))))))

(assert (=> b!5591374 d!1767569))

(declare-fun b!5592243 () Bool)

(declare-fun res!2372489 () Bool)

(declare-fun e!3449965 () Bool)

(assert (=> b!5592243 (=> (not res!2372489) (not e!3449965))))

(declare-fun call!419000 () Bool)

(assert (=> b!5592243 (= res!2372489 call!419000)))

(declare-fun e!3449963 () Bool)

(assert (=> b!5592243 (= e!3449963 e!3449965)))

(declare-fun b!5592244 () Bool)

(declare-fun e!3449968 () Bool)

(declare-fun call!418999 () Bool)

(assert (=> b!5592244 (= e!3449968 call!418999)))

(declare-fun bm!418994 () Bool)

(assert (=> bm!418994 (= call!419000 call!418999)))

(declare-fun b!5592245 () Bool)

(declare-fun e!3449966 () Bool)

(declare-fun e!3449969 () Bool)

(assert (=> b!5592245 (= e!3449966 e!3449969)))

(declare-fun c!980050 () Bool)

(assert (=> b!5592245 (= c!980050 ((_ is Star!15579) (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))))))

(declare-fun b!5592247 () Bool)

(declare-fun res!2372485 () Bool)

(declare-fun e!3449964 () Bool)

(assert (=> b!5592247 (=> res!2372485 e!3449964)))

(assert (=> b!5592247 (= res!2372485 (not ((_ is Concat!24424) (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292))))))))

(assert (=> b!5592247 (= e!3449963 e!3449964)))

(declare-fun b!5592248 () Bool)

(declare-fun call!419001 () Bool)

(assert (=> b!5592248 (= e!3449965 call!419001)))

(declare-fun b!5592249 () Bool)

(declare-fun e!3449967 () Bool)

(assert (=> b!5592249 (= e!3449967 call!419001)))

(declare-fun c!980051 () Bool)

(declare-fun bm!418995 () Bool)

(assert (=> bm!418995 (= call!419001 (validRegex!7315 (ite c!980051 (regTwo!31671 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))) (regTwo!31670 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))))))))

(declare-fun b!5592250 () Bool)

(assert (=> b!5592250 (= e!3449964 e!3449967)))

(declare-fun res!2372486 () Bool)

(assert (=> b!5592250 (=> (not res!2372486) (not e!3449967))))

(assert (=> b!5592250 (= res!2372486 call!419000)))

(declare-fun b!5592251 () Bool)

(assert (=> b!5592251 (= e!3449969 e!3449963)))

(assert (=> b!5592251 (= c!980051 ((_ is Union!15579) (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))))))

(declare-fun bm!418996 () Bool)

(assert (=> bm!418996 (= call!418999 (validRegex!7315 (ite c!980050 (reg!15908 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))) (ite c!980051 (regOne!31671 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))) (regOne!31670 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292))))))))))

(declare-fun d!1767571 () Bool)

(declare-fun res!2372487 () Bool)

(assert (=> d!1767571 (=> res!2372487 e!3449966)))

(assert (=> d!1767571 (= res!2372487 ((_ is ElementMatch!15579) (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))))))

(assert (=> d!1767571 (= (validRegex!7315 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))) e!3449966)))

(declare-fun b!5592246 () Bool)

(assert (=> b!5592246 (= e!3449969 e!3449968)))

(declare-fun res!2372488 () Bool)

(assert (=> b!5592246 (= res!2372488 (not (nullable!5611 (reg!15908 (ite c!979839 (reg!15908 r!7292) (ite c!979840 (regOne!31671 r!7292) (regOne!31670 r!7292)))))))))

(assert (=> b!5592246 (=> (not res!2372488) (not e!3449968))))

(assert (= (and d!1767571 (not res!2372487)) b!5592245))

(assert (= (and b!5592245 c!980050) b!5592246))

(assert (= (and b!5592245 (not c!980050)) b!5592251))

(assert (= (and b!5592246 res!2372488) b!5592244))

(assert (= (and b!5592251 c!980051) b!5592243))

(assert (= (and b!5592251 (not c!980051)) b!5592247))

(assert (= (and b!5592243 res!2372489) b!5592248))

(assert (= (and b!5592247 (not res!2372485)) b!5592250))

(assert (= (and b!5592250 res!2372486) b!5592249))

(assert (= (or b!5592248 b!5592249) bm!418995))

(assert (= (or b!5592243 b!5592250) bm!418994))

(assert (= (or b!5592244 bm!418994) bm!418996))

(declare-fun m!6572074 () Bool)

(assert (=> bm!418995 m!6572074))

(declare-fun m!6572076 () Bool)

(assert (=> bm!418996 m!6572076))

(declare-fun m!6572078 () Bool)

(assert (=> b!5592246 m!6572078))

(assert (=> bm!418832 d!1767571))

(assert (=> b!5591379 d!1767137))

(declare-fun d!1767573 () Bool)

(declare-fun c!980052 () Bool)

(assert (=> d!1767573 (= c!980052 (isEmpty!34734 (t!376315 s!2326)))))

(declare-fun e!3449970 () Bool)

(assert (=> d!1767573 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255547) (t!376315 s!2326)) e!3449970)))

(declare-fun b!5592252 () Bool)

(assert (=> b!5592252 (= e!3449970 (nullableZipper!1574 ((_ map or) lt!2255543 lt!2255547)))))

(declare-fun b!5592253 () Bool)

(assert (=> b!5592253 (= e!3449970 (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255543 lt!2255547) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))))))

(assert (= (and d!1767573 c!980052) b!5592252))

(assert (= (and d!1767573 (not c!980052)) b!5592253))

(assert (=> d!1767573 m!6571168))

(declare-fun m!6572080 () Bool)

(assert (=> b!5592252 m!6572080))

(assert (=> b!5592253 m!6571172))

(assert (=> b!5592253 m!6571172))

(declare-fun m!6572082 () Bool)

(assert (=> b!5592253 m!6572082))

(assert (=> b!5592253 m!6571176))

(assert (=> b!5592253 m!6572082))

(assert (=> b!5592253 m!6571176))

(declare-fun m!6572084 () Bool)

(assert (=> b!5592253 m!6572084))

(assert (=> d!1767147 d!1767573))

(assert (=> d!1767147 d!1767145))

(declare-fun e!3449971 () Bool)

(declare-fun d!1767575 () Bool)

(assert (=> d!1767575 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255547) (t!376315 s!2326)) e!3449971)))

(declare-fun res!2372490 () Bool)

(assert (=> d!1767575 (=> res!2372490 e!3449971)))

(assert (=> d!1767575 (= res!2372490 (matchZipper!1717 lt!2255543 (t!376315 s!2326)))))

(assert (=> d!1767575 true))

(declare-fun _$48!1173 () Unit!155724)

(assert (=> d!1767575 (= (choose!42400 lt!2255543 lt!2255547 (t!376315 s!2326)) _$48!1173)))

(declare-fun b!5592254 () Bool)

(assert (=> b!5592254 (= e!3449971 (matchZipper!1717 lt!2255547 (t!376315 s!2326)))))

(assert (= (and d!1767575 (not res!2372490)) b!5592254))

(assert (=> d!1767575 m!6571198))

(assert (=> d!1767575 m!6570852))

(assert (=> b!5592254 m!6570802))

(assert (=> d!1767147 d!1767575))

(declare-fun d!1767577 () Bool)

(declare-fun res!2372495 () Bool)

(declare-fun e!3449976 () Bool)

(assert (=> d!1767577 (=> res!2372495 e!3449976)))

(assert (=> d!1767577 (= res!2372495 ((_ is Nil!62912) lt!2255610))))

(assert (=> d!1767577 (= (forall!14745 lt!2255610 lambda!300110) e!3449976)))

(declare-fun b!5592259 () Bool)

(declare-fun e!3449977 () Bool)

(assert (=> b!5592259 (= e!3449976 e!3449977)))

(declare-fun res!2372496 () Bool)

(assert (=> b!5592259 (=> (not res!2372496) (not e!3449977))))

(declare-fun dynLambda!24607 (Int Regex!15579) Bool)

(assert (=> b!5592259 (= res!2372496 (dynLambda!24607 lambda!300110 (h!69360 lt!2255610)))))

(declare-fun b!5592260 () Bool)

(assert (=> b!5592260 (= e!3449977 (forall!14745 (t!376314 lt!2255610) lambda!300110))))

(assert (= (and d!1767577 (not res!2372495)) b!5592259))

(assert (= (and b!5592259 res!2372496) b!5592260))

(declare-fun b_lambda!211911 () Bool)

(assert (=> (not b_lambda!211911) (not b!5592259)))

(declare-fun m!6572086 () Bool)

(assert (=> b!5592259 m!6572086))

(declare-fun m!6572088 () Bool)

(assert (=> b!5592260 m!6572088))

(assert (=> d!1767171 d!1767577))

(declare-fun bs!1293044 () Bool)

(declare-fun d!1767579 () Bool)

(assert (= bs!1293044 (and d!1767579 d!1767521)))

(declare-fun lambda!300181 () Int)

(assert (=> bs!1293044 (= lambda!300181 lambda!300175)))

(declare-fun bs!1293045 () Bool)

(assert (= bs!1293045 (and d!1767579 d!1767527)))

(assert (=> bs!1293045 (= lambda!300181 lambda!300176)))

(declare-fun bs!1293046 () Bool)

(assert (= bs!1293046 (and d!1767579 d!1767533)))

(assert (=> bs!1293046 (= lambda!300181 lambda!300177)))

(assert (=> d!1767579 (= (nullableZipper!1574 lt!2255522) (exists!2168 lt!2255522 lambda!300181))))

(declare-fun bs!1293047 () Bool)

(assert (= bs!1293047 d!1767579))

(declare-fun m!6572090 () Bool)

(assert (=> bs!1293047 m!6572090))

(assert (=> b!5591202 d!1767579))

(assert (=> b!5591306 d!1767185))

(declare-fun bs!1293048 () Bool)

(declare-fun d!1767581 () Bool)

(assert (= bs!1293048 (and d!1767581 d!1767215)))

(declare-fun lambda!300182 () Int)

(assert (=> bs!1293048 (= lambda!300182 lambda!300126)))

(declare-fun bs!1293049 () Bool)

(assert (= bs!1293049 (and d!1767581 d!1767185)))

(assert (=> bs!1293049 (= lambda!300182 lambda!300122)))

(declare-fun bs!1293050 () Bool)

(assert (= bs!1293050 (and d!1767581 d!1767169)))

(assert (=> bs!1293050 (= lambda!300182 lambda!300107)))

(declare-fun bs!1293051 () Bool)

(assert (= bs!1293051 (and d!1767581 d!1767189)))

(assert (=> bs!1293051 (= lambda!300182 lambda!300125)))

(declare-fun bs!1293052 () Bool)

(assert (= bs!1293052 (and d!1767581 d!1767171)))

(assert (=> bs!1293052 (= lambda!300182 lambda!300110)))

(declare-fun lt!2255667 () List!63036)

(assert (=> d!1767581 (forall!14745 lt!2255667 lambda!300182)))

(declare-fun e!3449978 () List!63036)

(assert (=> d!1767581 (= lt!2255667 e!3449978)))

(declare-fun c!980053 () Bool)

(assert (=> d!1767581 (= c!980053 ((_ is Cons!62914) (t!376316 zl!343)))))

(assert (=> d!1767581 (= (unfocusZipperList!1007 (t!376316 zl!343)) lt!2255667)))

(declare-fun b!5592261 () Bool)

(assert (=> b!5592261 (= e!3449978 (Cons!62912 (generalisedConcat!1194 (exprs!5463 (h!69362 (t!376316 zl!343)))) (unfocusZipperList!1007 (t!376316 (t!376316 zl!343)))))))

(declare-fun b!5592262 () Bool)

(assert (=> b!5592262 (= e!3449978 Nil!62912)))

(assert (= (and d!1767581 c!980053) b!5592261))

(assert (= (and d!1767581 (not c!980053)) b!5592262))

(declare-fun m!6572092 () Bool)

(assert (=> d!1767581 m!6572092))

(declare-fun m!6572094 () Bool)

(assert (=> b!5592261 m!6572094))

(declare-fun m!6572096 () Bool)

(assert (=> b!5592261 m!6572096))

(assert (=> b!5591306 d!1767581))

(declare-fun d!1767583 () Bool)

(declare-fun c!980054 () Bool)

(assert (=> d!1767583 (= c!980054 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3449979 () Bool)

(assert (=> d!1767583 (= (matchZipper!1717 (derivationStepZipper!1678 lt!2255546 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3449979)))

(declare-fun b!5592263 () Bool)

(assert (=> b!5592263 (= e!3449979 (nullableZipper!1574 (derivationStepZipper!1678 lt!2255546 (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592264 () Bool)

(assert (=> b!5592264 (= e!3449979 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 lt!2255546 (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767583 c!980054) b!5592263))

(assert (= (and d!1767583 (not c!980054)) b!5592264))

(assert (=> d!1767583 m!6571176))

(assert (=> d!1767583 m!6572060))

(assert (=> b!5592263 m!6571174))

(declare-fun m!6572098 () Bool)

(assert (=> b!5592263 m!6572098))

(assert (=> b!5592264 m!6571176))

(assert (=> b!5592264 m!6572064))

(assert (=> b!5592264 m!6571174))

(assert (=> b!5592264 m!6572064))

(declare-fun m!6572100 () Bool)

(assert (=> b!5592264 m!6572100))

(assert (=> b!5592264 m!6571176))

(assert (=> b!5592264 m!6572068))

(assert (=> b!5592264 m!6572100))

(assert (=> b!5592264 m!6572068))

(declare-fun m!6572102 () Bool)

(assert (=> b!5592264 m!6572102))

(assert (=> b!5591199 d!1767583))

(declare-fun bs!1293053 () Bool)

(declare-fun d!1767585 () Bool)

(assert (= bs!1293053 (and d!1767585 b!5590764)))

(declare-fun lambda!300183 () Int)

(assert (=> bs!1293053 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300183 lambda!300076))))

(declare-fun bs!1293054 () Bool)

(assert (= bs!1293054 (and d!1767585 d!1767559)))

(assert (=> bs!1293054 (= lambda!300183 lambda!300180)))

(assert (=> d!1767585 true))

(assert (=> d!1767585 (= (derivationStepZipper!1678 lt!2255546 (head!11927 (t!376315 s!2326))) (flatMap!1192 lt!2255546 lambda!300183))))

(declare-fun bs!1293055 () Bool)

(assert (= bs!1293055 d!1767585))

(declare-fun m!6572104 () Bool)

(assert (=> bs!1293055 m!6572104))

(assert (=> b!5591199 d!1767585))

(assert (=> b!5591199 d!1767561))

(assert (=> b!5591199 d!1767563))

(declare-fun d!1767587 () Bool)

(declare-fun res!2372497 () Bool)

(declare-fun e!3449980 () Bool)

(assert (=> d!1767587 (=> res!2372497 e!3449980)))

(assert (=> d!1767587 (= res!2372497 ((_ is Nil!62912) (exprs!5463 setElem!37261)))))

(assert (=> d!1767587 (= (forall!14745 (exprs!5463 setElem!37261) lambda!300126) e!3449980)))

(declare-fun b!5592265 () Bool)

(declare-fun e!3449981 () Bool)

(assert (=> b!5592265 (= e!3449980 e!3449981)))

(declare-fun res!2372498 () Bool)

(assert (=> b!5592265 (=> (not res!2372498) (not e!3449981))))

(assert (=> b!5592265 (= res!2372498 (dynLambda!24607 lambda!300126 (h!69360 (exprs!5463 setElem!37261))))))

(declare-fun b!5592266 () Bool)

(assert (=> b!5592266 (= e!3449981 (forall!14745 (t!376314 (exprs!5463 setElem!37261)) lambda!300126))))

(assert (= (and d!1767587 (not res!2372497)) b!5592265))

(assert (= (and b!5592265 res!2372498) b!5592266))

(declare-fun b_lambda!211913 () Bool)

(assert (=> (not b_lambda!211913) (not b!5592265)))

(declare-fun m!6572106 () Bool)

(assert (=> b!5592265 m!6572106))

(declare-fun m!6572108 () Bool)

(assert (=> b!5592266 m!6572108))

(assert (=> d!1767215 d!1767587))

(declare-fun bs!1293056 () Bool)

(declare-fun d!1767589 () Bool)

(assert (= bs!1293056 (and d!1767589 d!1767521)))

(declare-fun lambda!300184 () Int)

(assert (=> bs!1293056 (= lambda!300184 lambda!300175)))

(declare-fun bs!1293057 () Bool)

(assert (= bs!1293057 (and d!1767589 d!1767527)))

(assert (=> bs!1293057 (= lambda!300184 lambda!300176)))

(declare-fun bs!1293058 () Bool)

(assert (= bs!1293058 (and d!1767589 d!1767533)))

(assert (=> bs!1293058 (= lambda!300184 lambda!300177)))

(declare-fun bs!1293059 () Bool)

(assert (= bs!1293059 (and d!1767589 d!1767579)))

(assert (=> bs!1293059 (= lambda!300184 lambda!300181)))

(assert (=> d!1767589 (= (nullableZipper!1574 ((_ map or) lt!2255521 lt!2255546)) (exists!2168 ((_ map or) lt!2255521 lt!2255546) lambda!300184))))

(declare-fun bs!1293060 () Bool)

(assert (= bs!1293060 d!1767589))

(declare-fun m!6572110 () Bool)

(assert (=> bs!1293060 m!6572110))

(assert (=> b!5591420 d!1767589))

(declare-fun d!1767591 () Bool)

(declare-fun c!980055 () Bool)

(assert (=> d!1767591 (= c!980055 (isEmpty!34734 (tail!11022 s!2326)))))

(declare-fun e!3449982 () Bool)

(assert (=> d!1767591 (= (matchZipper!1717 (derivationStepZipper!1678 z!1189 (head!11927 s!2326)) (tail!11022 s!2326)) e!3449982)))

(declare-fun b!5592267 () Bool)

(assert (=> b!5592267 (= e!3449982 (nullableZipper!1574 (derivationStepZipper!1678 z!1189 (head!11927 s!2326))))))

(declare-fun b!5592268 () Bool)

(assert (=> b!5592268 (= e!3449982 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 z!1189 (head!11927 s!2326)) (head!11927 (tail!11022 s!2326))) (tail!11022 (tail!11022 s!2326))))))

(assert (= (and d!1767591 c!980055) b!5592267))

(assert (= (and d!1767591 (not c!980055)) b!5592268))

(assert (=> d!1767591 m!6571342))

(assert (=> d!1767591 m!6571436))

(assert (=> b!5592267 m!6571340))

(declare-fun m!6572112 () Bool)

(assert (=> b!5592267 m!6572112))

(assert (=> b!5592268 m!6571342))

(declare-fun m!6572114 () Bool)

(assert (=> b!5592268 m!6572114))

(assert (=> b!5592268 m!6571340))

(assert (=> b!5592268 m!6572114))

(declare-fun m!6572116 () Bool)

(assert (=> b!5592268 m!6572116))

(assert (=> b!5592268 m!6571342))

(declare-fun m!6572118 () Bool)

(assert (=> b!5592268 m!6572118))

(assert (=> b!5592268 m!6572116))

(assert (=> b!5592268 m!6572118))

(declare-fun m!6572120 () Bool)

(assert (=> b!5592268 m!6572120))

(assert (=> b!5591378 d!1767591))

(declare-fun bs!1293061 () Bool)

(declare-fun d!1767593 () Bool)

(assert (= bs!1293061 (and d!1767593 b!5590764)))

(declare-fun lambda!300185 () Int)

(assert (=> bs!1293061 (= (= (head!11927 s!2326) (h!69361 s!2326)) (= lambda!300185 lambda!300076))))

(declare-fun bs!1293062 () Bool)

(assert (= bs!1293062 (and d!1767593 d!1767559)))

(assert (=> bs!1293062 (= (= (head!11927 s!2326) (head!11927 (t!376315 s!2326))) (= lambda!300185 lambda!300180))))

(declare-fun bs!1293063 () Bool)

(assert (= bs!1293063 (and d!1767593 d!1767585)))

(assert (=> bs!1293063 (= (= (head!11927 s!2326) (head!11927 (t!376315 s!2326))) (= lambda!300185 lambda!300183))))

(assert (=> d!1767593 true))

(assert (=> d!1767593 (= (derivationStepZipper!1678 z!1189 (head!11927 s!2326)) (flatMap!1192 z!1189 lambda!300185))))

(declare-fun bs!1293064 () Bool)

(assert (= bs!1293064 d!1767593))

(declare-fun m!6572122 () Bool)

(assert (=> bs!1293064 m!6572122))

(assert (=> b!5591378 d!1767593))

(assert (=> b!5591378 d!1767541))

(assert (=> b!5591378 d!1767525))

(declare-fun d!1767595 () Bool)

(assert (=> d!1767595 (= (isDefined!12291 lt!2255619) (not (isEmpty!34735 lt!2255619)))))

(declare-fun bs!1293065 () Bool)

(assert (= bs!1293065 d!1767595))

(declare-fun m!6572124 () Bool)

(assert (=> bs!1293065 m!6572124))

(assert (=> b!5591330 d!1767595))

(declare-fun d!1767597 () Bool)

(declare-fun c!980056 () Bool)

(assert (=> d!1767597 (= c!980056 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3449983 () Bool)

(assert (=> d!1767597 (= (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255543 lt!2255546) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3449983)))

(declare-fun b!5592269 () Bool)

(assert (=> b!5592269 (= e!3449983 (nullableZipper!1574 (derivationStepZipper!1678 ((_ map or) lt!2255543 lt!2255546) (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592270 () Bool)

(assert (=> b!5592270 (= e!3449983 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 ((_ map or) lt!2255543 lt!2255546) (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767597 c!980056) b!5592269))

(assert (= (and d!1767597 (not c!980056)) b!5592270))

(assert (=> d!1767597 m!6571176))

(assert (=> d!1767597 m!6572060))

(assert (=> b!5592269 m!6571352))

(declare-fun m!6572126 () Bool)

(assert (=> b!5592269 m!6572126))

(assert (=> b!5592270 m!6571176))

(assert (=> b!5592270 m!6572064))

(assert (=> b!5592270 m!6571352))

(assert (=> b!5592270 m!6572064))

(declare-fun m!6572128 () Bool)

(assert (=> b!5592270 m!6572128))

(assert (=> b!5592270 m!6571176))

(assert (=> b!5592270 m!6572068))

(assert (=> b!5592270 m!6572128))

(assert (=> b!5592270 m!6572068))

(declare-fun m!6572130 () Bool)

(assert (=> b!5592270 m!6572130))

(assert (=> b!5591381 d!1767597))

(declare-fun bs!1293066 () Bool)

(declare-fun d!1767599 () Bool)

(assert (= bs!1293066 (and d!1767599 b!5590764)))

(declare-fun lambda!300186 () Int)

(assert (=> bs!1293066 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300186 lambda!300076))))

(declare-fun bs!1293067 () Bool)

(assert (= bs!1293067 (and d!1767599 d!1767559)))

(assert (=> bs!1293067 (= lambda!300186 lambda!300180)))

(declare-fun bs!1293068 () Bool)

(assert (= bs!1293068 (and d!1767599 d!1767585)))

(assert (=> bs!1293068 (= lambda!300186 lambda!300183)))

(declare-fun bs!1293069 () Bool)

(assert (= bs!1293069 (and d!1767599 d!1767593)))

(assert (=> bs!1293069 (= (= (head!11927 (t!376315 s!2326)) (head!11927 s!2326)) (= lambda!300186 lambda!300185))))

(assert (=> d!1767599 true))

(assert (=> d!1767599 (= (derivationStepZipper!1678 ((_ map or) lt!2255543 lt!2255546) (head!11927 (t!376315 s!2326))) (flatMap!1192 ((_ map or) lt!2255543 lt!2255546) lambda!300186))))

(declare-fun bs!1293070 () Bool)

(assert (= bs!1293070 d!1767599))

(declare-fun m!6572132 () Bool)

(assert (=> bs!1293070 m!6572132))

(assert (=> b!5591381 d!1767599))

(assert (=> b!5591381 d!1767561))

(assert (=> b!5591381 d!1767563))

(assert (=> d!1767235 d!1767233))

(assert (=> d!1767235 d!1767231))

(declare-fun d!1767601 () Bool)

(assert (=> d!1767601 (= (matchR!7764 r!7292 s!2326) (matchRSpec!2682 r!7292 s!2326))))

(assert (=> d!1767601 true))

(declare-fun _$88!3871 () Unit!155724)

(assert (=> d!1767601 (= (choose!42407 r!7292 s!2326) _$88!3871)))

(declare-fun bs!1293071 () Bool)

(assert (= bs!1293071 d!1767601))

(assert (=> bs!1293071 m!6570814))

(assert (=> bs!1293071 m!6570812))

(assert (=> d!1767235 d!1767601))

(assert (=> d!1767235 d!1767213))

(declare-fun d!1767603 () Bool)

(assert (=> d!1767603 (= (nullable!5611 (h!69360 (exprs!5463 lt!2255544))) (nullableFct!1720 (h!69360 (exprs!5463 lt!2255544))))))

(declare-fun bs!1293072 () Bool)

(assert (= bs!1293072 d!1767603))

(declare-fun m!6572134 () Bool)

(assert (=> bs!1293072 m!6572134))

(assert (=> b!5591382 d!1767603))

(declare-fun b!5592271 () Bool)

(declare-fun e!3449990 () Bool)

(assert (=> b!5592271 (= e!3449990 (not (= (head!11927 (tail!11022 s!2326)) (c!979652 (derivativeStep!4427 r!7292 (head!11927 s!2326))))))))

(declare-fun b!5592272 () Bool)

(declare-fun res!2372500 () Bool)

(declare-fun e!3449988 () Bool)

(assert (=> b!5592272 (=> res!2372500 e!3449988)))

(declare-fun e!3449987 () Bool)

(assert (=> b!5592272 (= res!2372500 e!3449987)))

(declare-fun res!2372501 () Bool)

(assert (=> b!5592272 (=> (not res!2372501) (not e!3449987))))

(declare-fun lt!2255668 () Bool)

(assert (=> b!5592272 (= res!2372501 lt!2255668)))

(declare-fun b!5592273 () Bool)

(declare-fun e!3449984 () Bool)

(assert (=> b!5592273 (= e!3449984 (not lt!2255668))))

(declare-fun b!5592274 () Bool)

(declare-fun e!3449986 () Bool)

(assert (=> b!5592274 (= e!3449986 (matchR!7764 (derivativeStep!4427 (derivativeStep!4427 r!7292 (head!11927 s!2326)) (head!11927 (tail!11022 s!2326))) (tail!11022 (tail!11022 s!2326))))))

(declare-fun b!5592275 () Bool)

(declare-fun res!2372505 () Bool)

(assert (=> b!5592275 (=> res!2372505 e!3449988)))

(assert (=> b!5592275 (= res!2372505 (not ((_ is ElementMatch!15579) (derivativeStep!4427 r!7292 (head!11927 s!2326)))))))

(assert (=> b!5592275 (= e!3449984 e!3449988)))

(declare-fun b!5592276 () Bool)

(declare-fun e!3449989 () Bool)

(assert (=> b!5592276 (= e!3449989 e!3449990)))

(declare-fun res!2372502 () Bool)

(assert (=> b!5592276 (=> res!2372502 e!3449990)))

(declare-fun call!419002 () Bool)

(assert (=> b!5592276 (= res!2372502 call!419002)))

(declare-fun b!5592277 () Bool)

(declare-fun res!2372499 () Bool)

(assert (=> b!5592277 (=> res!2372499 e!3449990)))

(assert (=> b!5592277 (= res!2372499 (not (isEmpty!34734 (tail!11022 (tail!11022 s!2326)))))))

(declare-fun b!5592278 () Bool)

(declare-fun e!3449985 () Bool)

(assert (=> b!5592278 (= e!3449985 (= lt!2255668 call!419002))))

(declare-fun b!5592279 () Bool)

(declare-fun res!2372503 () Bool)

(assert (=> b!5592279 (=> (not res!2372503) (not e!3449987))))

(assert (=> b!5592279 (= res!2372503 (isEmpty!34734 (tail!11022 (tail!11022 s!2326))))))

(declare-fun b!5592280 () Bool)

(assert (=> b!5592280 (= e!3449986 (nullable!5611 (derivativeStep!4427 r!7292 (head!11927 s!2326))))))

(declare-fun b!5592281 () Bool)

(assert (=> b!5592281 (= e!3449987 (= (head!11927 (tail!11022 s!2326)) (c!979652 (derivativeStep!4427 r!7292 (head!11927 s!2326)))))))

(declare-fun bm!418997 () Bool)

(assert (=> bm!418997 (= call!419002 (isEmpty!34734 (tail!11022 s!2326)))))

(declare-fun b!5592282 () Bool)

(assert (=> b!5592282 (= e!3449985 e!3449984)))

(declare-fun c!980057 () Bool)

(assert (=> b!5592282 (= c!980057 ((_ is EmptyLang!15579) (derivativeStep!4427 r!7292 (head!11927 s!2326))))))

(declare-fun b!5592283 () Bool)

(assert (=> b!5592283 (= e!3449988 e!3449989)))

(declare-fun res!2372504 () Bool)

(assert (=> b!5592283 (=> (not res!2372504) (not e!3449989))))

(assert (=> b!5592283 (= res!2372504 (not lt!2255668))))

(declare-fun d!1767605 () Bool)

(assert (=> d!1767605 e!3449985))

(declare-fun c!980058 () Bool)

(assert (=> d!1767605 (= c!980058 ((_ is EmptyExpr!15579) (derivativeStep!4427 r!7292 (head!11927 s!2326))))))

(assert (=> d!1767605 (= lt!2255668 e!3449986)))

(declare-fun c!980059 () Bool)

(assert (=> d!1767605 (= c!980059 (isEmpty!34734 (tail!11022 s!2326)))))

(assert (=> d!1767605 (validRegex!7315 (derivativeStep!4427 r!7292 (head!11927 s!2326)))))

(assert (=> d!1767605 (= (matchR!7764 (derivativeStep!4427 r!7292 (head!11927 s!2326)) (tail!11022 s!2326)) lt!2255668)))

(declare-fun b!5592284 () Bool)

(declare-fun res!2372506 () Bool)

(assert (=> b!5592284 (=> (not res!2372506) (not e!3449987))))

(assert (=> b!5592284 (= res!2372506 (not call!419002))))

(assert (= (and d!1767605 c!980059) b!5592280))

(assert (= (and d!1767605 (not c!980059)) b!5592274))

(assert (= (and d!1767605 c!980058) b!5592278))

(assert (= (and d!1767605 (not c!980058)) b!5592282))

(assert (= (and b!5592282 c!980057) b!5592273))

(assert (= (and b!5592282 (not c!980057)) b!5592275))

(assert (= (and b!5592275 (not res!2372505)) b!5592272))

(assert (= (and b!5592272 res!2372501) b!5592284))

(assert (= (and b!5592284 res!2372506) b!5592279))

(assert (= (and b!5592279 res!2372503) b!5592281))

(assert (= (and b!5592272 (not res!2372500)) b!5592283))

(assert (= (and b!5592283 res!2372504) b!5592276))

(assert (= (and b!5592276 (not res!2372502)) b!5592277))

(assert (= (and b!5592277 (not res!2372499)) b!5592271))

(assert (= (or b!5592278 b!5592276 b!5592284) bm!418997))

(assert (=> b!5592271 m!6571342))

(assert (=> b!5592271 m!6572114))

(assert (=> b!5592274 m!6571342))

(assert (=> b!5592274 m!6572114))

(assert (=> b!5592274 m!6571432))

(assert (=> b!5592274 m!6572114))

(declare-fun m!6572136 () Bool)

(assert (=> b!5592274 m!6572136))

(assert (=> b!5592274 m!6571342))

(assert (=> b!5592274 m!6572118))

(assert (=> b!5592274 m!6572136))

(assert (=> b!5592274 m!6572118))

(declare-fun m!6572138 () Bool)

(assert (=> b!5592274 m!6572138))

(assert (=> bm!418997 m!6571342))

(assert (=> bm!418997 m!6571436))

(assert (=> b!5592281 m!6571342))

(assert (=> b!5592281 m!6572114))

(assert (=> b!5592277 m!6571342))

(assert (=> b!5592277 m!6572118))

(assert (=> b!5592277 m!6572118))

(declare-fun m!6572140 () Bool)

(assert (=> b!5592277 m!6572140))

(assert (=> d!1767605 m!6571342))

(assert (=> d!1767605 m!6571436))

(assert (=> d!1767605 m!6571432))

(declare-fun m!6572142 () Bool)

(assert (=> d!1767605 m!6572142))

(assert (=> b!5592280 m!6571432))

(declare-fun m!6572144 () Bool)

(assert (=> b!5592280 m!6572144))

(assert (=> b!5592279 m!6571342))

(assert (=> b!5592279 m!6572118))

(assert (=> b!5592279 m!6572118))

(assert (=> b!5592279 m!6572140))

(assert (=> b!5591521 d!1767605))

(declare-fun b!5592306 () Bool)

(declare-fun e!3450002 () Regex!15579)

(assert (=> b!5592306 (= e!3450002 (ite (= (head!11927 s!2326) (c!979652 r!7292)) EmptyExpr!15579 EmptyLang!15579))))

(declare-fun b!5592307 () Bool)

(declare-fun c!980071 () Bool)

(assert (=> b!5592307 (= c!980071 ((_ is Union!15579) r!7292))))

(declare-fun e!3450005 () Regex!15579)

(assert (=> b!5592307 (= e!3450002 e!3450005)))

(declare-fun bm!419006 () Bool)

(declare-fun call!419011 () Regex!15579)

(declare-fun call!419014 () Regex!15579)

(assert (=> bm!419006 (= call!419011 call!419014)))

(declare-fun b!5592308 () Bool)

(declare-fun e!3450001 () Regex!15579)

(assert (=> b!5592308 (= e!3450005 e!3450001)))

(declare-fun c!980072 () Bool)

(assert (=> b!5592308 (= c!980072 ((_ is Star!15579) r!7292))))

(declare-fun bm!419007 () Bool)

(declare-fun c!980073 () Bool)

(declare-fun call!419012 () Regex!15579)

(assert (=> bm!419007 (= call!419012 (derivativeStep!4427 (ite c!980071 (regTwo!31671 r!7292) (ite c!980072 (reg!15908 r!7292) (ite c!980073 (regTwo!31670 r!7292) (regOne!31670 r!7292)))) (head!11927 s!2326)))))

(declare-fun e!3450004 () Regex!15579)

(declare-fun call!419013 () Regex!15579)

(declare-fun b!5592309 () Bool)

(assert (=> b!5592309 (= e!3450004 (Union!15579 (Concat!24424 call!419013 (regTwo!31670 r!7292)) call!419011))))

(declare-fun b!5592310 () Bool)

(assert (=> b!5592310 (= e!3450005 (Union!15579 call!419013 call!419012))))

(declare-fun bm!419008 () Bool)

(assert (=> bm!419008 (= call!419014 call!419012)))

(declare-fun b!5592311 () Bool)

(assert (=> b!5592311 (= e!3450004 (Union!15579 (Concat!24424 call!419011 (regTwo!31670 r!7292)) EmptyLang!15579))))

(declare-fun bm!419009 () Bool)

(assert (=> bm!419009 (= call!419013 (derivativeStep!4427 (ite c!980071 (regOne!31671 r!7292) (regOne!31670 r!7292)) (head!11927 s!2326)))))

(declare-fun b!5592312 () Bool)

(assert (=> b!5592312 (= c!980073 (nullable!5611 (regOne!31670 r!7292)))))

(assert (=> b!5592312 (= e!3450001 e!3450004)))

(declare-fun b!5592313 () Bool)

(declare-fun e!3450003 () Regex!15579)

(assert (=> b!5592313 (= e!3450003 EmptyLang!15579)))

(declare-fun b!5592314 () Bool)

(assert (=> b!5592314 (= e!3450001 (Concat!24424 call!419014 r!7292))))

(declare-fun d!1767607 () Bool)

(declare-fun lt!2255671 () Regex!15579)

(assert (=> d!1767607 (validRegex!7315 lt!2255671)))

(assert (=> d!1767607 (= lt!2255671 e!3450003)))

(declare-fun c!980074 () Bool)

(assert (=> d!1767607 (= c!980074 (or ((_ is EmptyExpr!15579) r!7292) ((_ is EmptyLang!15579) r!7292)))))

(assert (=> d!1767607 (validRegex!7315 r!7292)))

(assert (=> d!1767607 (= (derivativeStep!4427 r!7292 (head!11927 s!2326)) lt!2255671)))

(declare-fun b!5592305 () Bool)

(assert (=> b!5592305 (= e!3450003 e!3450002)))

(declare-fun c!980070 () Bool)

(assert (=> b!5592305 (= c!980070 ((_ is ElementMatch!15579) r!7292))))

(assert (= (and d!1767607 c!980074) b!5592313))

(assert (= (and d!1767607 (not c!980074)) b!5592305))

(assert (= (and b!5592305 c!980070) b!5592306))

(assert (= (and b!5592305 (not c!980070)) b!5592307))

(assert (= (and b!5592307 c!980071) b!5592310))

(assert (= (and b!5592307 (not c!980071)) b!5592308))

(assert (= (and b!5592308 c!980072) b!5592314))

(assert (= (and b!5592308 (not c!980072)) b!5592312))

(assert (= (and b!5592312 c!980073) b!5592309))

(assert (= (and b!5592312 (not c!980073)) b!5592311))

(assert (= (or b!5592309 b!5592311) bm!419006))

(assert (= (or b!5592314 bm!419006) bm!419008))

(assert (= (or b!5592310 bm!419008) bm!419007))

(assert (= (or b!5592310 b!5592309) bm!419009))

(assert (=> bm!419007 m!6571338))

(declare-fun m!6572146 () Bool)

(assert (=> bm!419007 m!6572146))

(assert (=> bm!419009 m!6571338))

(declare-fun m!6572148 () Bool)

(assert (=> bm!419009 m!6572148))

(assert (=> b!5592312 m!6570836))

(declare-fun m!6572150 () Bool)

(assert (=> d!1767607 m!6572150))

(assert (=> d!1767607 m!6570858))

(assert (=> b!5591521 d!1767607))

(assert (=> b!5591521 d!1767541))

(assert (=> b!5591521 d!1767525))

(assert (=> bm!418853 d!1767545))

(declare-fun d!1767609 () Bool)

(assert (=> d!1767609 (= (isEmptyLang!1143 lt!2255607) ((_ is EmptyLang!15579) lt!2255607))))

(assert (=> b!5591294 d!1767609))

(declare-fun bm!419010 () Bool)

(declare-fun call!419016 () (InoxSet Context!9926))

(declare-fun call!419017 () (InoxSet Context!9926))

(assert (=> bm!419010 (= call!419016 call!419017)))

(declare-fun c!980076 () Bool)

(declare-fun d!1767611 () Bool)

(assert (=> d!1767611 (= c!980076 (and ((_ is ElementMatch!15579) (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (= (c!979652 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (h!69361 s!2326))))))

(declare-fun e!3450006 () (InoxSet Context!9926))

(assert (=> d!1767611 (= (derivationStepZipperDown!921 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292)))))) (ite (or c!979842 c!979844) lt!2255535 (Context!9927 call!418838)) (h!69361 s!2326)) e!3450006)))

(declare-fun b!5592315 () Bool)

(declare-fun e!3450009 () (InoxSet Context!9926))

(assert (=> b!5592315 (= e!3450009 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592316 () Bool)

(declare-fun e!3450010 () (InoxSet Context!9926))

(assert (=> b!5592316 (= e!3450006 e!3450010)))

(declare-fun c!980075 () Bool)

(assert (=> b!5592316 (= c!980075 ((_ is Union!15579) (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))))))

(declare-fun b!5592317 () Bool)

(assert (=> b!5592317 (= e!3450006 (store ((as const (Array Context!9926 Bool)) false) (ite (or c!979842 c!979844) lt!2255535 (Context!9927 call!418838)) true))))

(declare-fun b!5592318 () Bool)

(declare-fun e!3450011 () (InoxSet Context!9926))

(assert (=> b!5592318 (= e!3450011 call!419016)))

(declare-fun c!980079 () Bool)

(declare-fun c!980077 () Bool)

(declare-fun call!419020 () List!63036)

(declare-fun bm!419011 () Bool)

(assert (=> bm!419011 (= call!419020 ($colon$colon!1642 (exprs!5463 (ite (or c!979842 c!979844) lt!2255535 (Context!9927 call!418838))) (ite (or c!980077 c!980079) (regTwo!31670 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292)))))))))))

(declare-fun b!5592319 () Bool)

(assert (=> b!5592319 (= e!3450009 call!419016)))

(declare-fun bm!419012 () Bool)

(declare-fun call!419015 () List!63036)

(assert (=> bm!419012 (= call!419015 call!419020)))

(declare-fun bm!419013 () Bool)

(declare-fun call!419018 () (InoxSet Context!9926))

(assert (=> bm!419013 (= call!419017 call!419018)))

(declare-fun b!5592320 () Bool)

(declare-fun e!3450007 () Bool)

(assert (=> b!5592320 (= c!980077 e!3450007)))

(declare-fun res!2372507 () Bool)

(assert (=> b!5592320 (=> (not res!2372507) (not e!3450007))))

(assert (=> b!5592320 (= res!2372507 ((_ is Concat!24424) (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))))))

(declare-fun e!3450008 () (InoxSet Context!9926))

(assert (=> b!5592320 (= e!3450010 e!3450008)))

(declare-fun c!980078 () Bool)

(declare-fun b!5592321 () Bool)

(assert (=> b!5592321 (= c!980078 ((_ is Star!15579) (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))))))

(assert (=> b!5592321 (= e!3450011 e!3450009)))

(declare-fun bm!419014 () Bool)

(assert (=> bm!419014 (= call!419018 (derivationStepZipperDown!921 (ite c!980075 (regOne!31671 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (ite c!980077 (regTwo!31670 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (ite c!980079 (regOne!31670 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (reg!15908 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292)))))))))) (ite (or c!980075 c!980077) (ite (or c!979842 c!979844) lt!2255535 (Context!9927 call!418838)) (Context!9927 call!419015)) (h!69361 s!2326)))))

(declare-fun b!5592322 () Bool)

(declare-fun call!419019 () (InoxSet Context!9926))

(assert (=> b!5592322 (= e!3450010 ((_ map or) call!419018 call!419019))))

(declare-fun b!5592323 () Bool)

(assert (=> b!5592323 (= e!3450008 e!3450011)))

(assert (=> b!5592323 (= c!980079 ((_ is Concat!24424) (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))))))

(declare-fun bm!419015 () Bool)

(assert (=> bm!419015 (= call!419019 (derivationStepZipperDown!921 (ite c!980075 (regTwo!31671 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292))))))) (regOne!31670 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292)))))))) (ite c!980075 (ite (or c!979842 c!979844) lt!2255535 (Context!9927 call!418838)) (Context!9927 call!419020)) (h!69361 s!2326)))))

(declare-fun b!5592324 () Bool)

(assert (=> b!5592324 (= e!3450008 ((_ map or) call!419019 call!419017))))

(declare-fun b!5592325 () Bool)

(assert (=> b!5592325 (= e!3450007 (nullable!5611 (regOne!31670 (ite c!979842 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979844 (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (ite c!979846 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))) (reg!15908 (regTwo!31671 (regOne!31670 r!7292)))))))))))

(assert (= (and d!1767611 c!980076) b!5592317))

(assert (= (and d!1767611 (not c!980076)) b!5592316))

(assert (= (and b!5592316 c!980075) b!5592322))

(assert (= (and b!5592316 (not c!980075)) b!5592320))

(assert (= (and b!5592320 res!2372507) b!5592325))

(assert (= (and b!5592320 c!980077) b!5592324))

(assert (= (and b!5592320 (not c!980077)) b!5592323))

(assert (= (and b!5592323 c!980079) b!5592318))

(assert (= (and b!5592323 (not c!980079)) b!5592321))

(assert (= (and b!5592321 c!980078) b!5592319))

(assert (= (and b!5592321 (not c!980078)) b!5592315))

(assert (= (or b!5592318 b!5592319) bm!419012))

(assert (= (or b!5592318 b!5592319) bm!419010))

(assert (= (or b!5592324 bm!419012) bm!419011))

(assert (= (or b!5592324 bm!419010) bm!419013))

(assert (= (or b!5592322 b!5592324) bm!419015))

(assert (= (or b!5592322 bm!419013) bm!419014))

(declare-fun m!6572152 () Bool)

(assert (=> b!5592325 m!6572152))

(declare-fun m!6572154 () Bool)

(assert (=> b!5592317 m!6572154))

(declare-fun m!6572156 () Bool)

(assert (=> bm!419014 m!6572156))

(declare-fun m!6572158 () Bool)

(assert (=> bm!419015 m!6572158))

(declare-fun m!6572160 () Bool)

(assert (=> bm!419011 m!6572160))

(assert (=> bm!418837 d!1767611))

(declare-fun bs!1293073 () Bool)

(declare-fun d!1767613 () Bool)

(assert (= bs!1293073 (and d!1767613 d!1767521)))

(declare-fun lambda!300187 () Int)

(assert (=> bs!1293073 (= lambda!300187 lambda!300175)))

(declare-fun bs!1293074 () Bool)

(assert (= bs!1293074 (and d!1767613 d!1767533)))

(assert (=> bs!1293074 (= lambda!300187 lambda!300177)))

(declare-fun bs!1293075 () Bool)

(assert (= bs!1293075 (and d!1767613 d!1767527)))

(assert (=> bs!1293075 (= lambda!300187 lambda!300176)))

(declare-fun bs!1293076 () Bool)

(assert (= bs!1293076 (and d!1767613 d!1767579)))

(assert (=> bs!1293076 (= lambda!300187 lambda!300181)))

(declare-fun bs!1293077 () Bool)

(assert (= bs!1293077 (and d!1767613 d!1767589)))

(assert (=> bs!1293077 (= lambda!300187 lambda!300184)))

(assert (=> d!1767613 (= (nullableZipper!1574 lt!2255543) (exists!2168 lt!2255543 lambda!300187))))

(declare-fun bs!1293078 () Bool)

(assert (= bs!1293078 d!1767613))

(declare-fun m!6572162 () Bool)

(assert (=> bs!1293078 m!6572162))

(assert (=> b!5591204 d!1767613))

(assert (=> bm!418850 d!1767545))

(declare-fun b!5592326 () Bool)

(declare-fun e!3450018 () Bool)

(assert (=> b!5592326 (= e!3450018 (not (= (head!11927 (_2!35979 (get!21665 lt!2255619))) (c!979652 (regTwo!31670 r!7292)))))))

(declare-fun b!5592327 () Bool)

(declare-fun res!2372509 () Bool)

(declare-fun e!3450016 () Bool)

(assert (=> b!5592327 (=> res!2372509 e!3450016)))

(declare-fun e!3450015 () Bool)

(assert (=> b!5592327 (= res!2372509 e!3450015)))

(declare-fun res!2372510 () Bool)

(assert (=> b!5592327 (=> (not res!2372510) (not e!3450015))))

(declare-fun lt!2255672 () Bool)

(assert (=> b!5592327 (= res!2372510 lt!2255672)))

(declare-fun b!5592328 () Bool)

(declare-fun e!3450012 () Bool)

(assert (=> b!5592328 (= e!3450012 (not lt!2255672))))

(declare-fun b!5592329 () Bool)

(declare-fun e!3450014 () Bool)

(assert (=> b!5592329 (= e!3450014 (matchR!7764 (derivativeStep!4427 (regTwo!31670 r!7292) (head!11927 (_2!35979 (get!21665 lt!2255619)))) (tail!11022 (_2!35979 (get!21665 lt!2255619)))))))

(declare-fun b!5592330 () Bool)

(declare-fun res!2372514 () Bool)

(assert (=> b!5592330 (=> res!2372514 e!3450016)))

(assert (=> b!5592330 (= res!2372514 (not ((_ is ElementMatch!15579) (regTwo!31670 r!7292))))))

(assert (=> b!5592330 (= e!3450012 e!3450016)))

(declare-fun b!5592331 () Bool)

(declare-fun e!3450017 () Bool)

(assert (=> b!5592331 (= e!3450017 e!3450018)))

(declare-fun res!2372511 () Bool)

(assert (=> b!5592331 (=> res!2372511 e!3450018)))

(declare-fun call!419021 () Bool)

(assert (=> b!5592331 (= res!2372511 call!419021)))

(declare-fun b!5592332 () Bool)

(declare-fun res!2372508 () Bool)

(assert (=> b!5592332 (=> res!2372508 e!3450018)))

(assert (=> b!5592332 (= res!2372508 (not (isEmpty!34734 (tail!11022 (_2!35979 (get!21665 lt!2255619))))))))

(declare-fun b!5592333 () Bool)

(declare-fun e!3450013 () Bool)

(assert (=> b!5592333 (= e!3450013 (= lt!2255672 call!419021))))

(declare-fun b!5592334 () Bool)

(declare-fun res!2372512 () Bool)

(assert (=> b!5592334 (=> (not res!2372512) (not e!3450015))))

(assert (=> b!5592334 (= res!2372512 (isEmpty!34734 (tail!11022 (_2!35979 (get!21665 lt!2255619)))))))

(declare-fun b!5592335 () Bool)

(assert (=> b!5592335 (= e!3450014 (nullable!5611 (regTwo!31670 r!7292)))))

(declare-fun b!5592336 () Bool)

(assert (=> b!5592336 (= e!3450015 (= (head!11927 (_2!35979 (get!21665 lt!2255619))) (c!979652 (regTwo!31670 r!7292))))))

(declare-fun bm!419016 () Bool)

(assert (=> bm!419016 (= call!419021 (isEmpty!34734 (_2!35979 (get!21665 lt!2255619))))))

(declare-fun b!5592337 () Bool)

(assert (=> b!5592337 (= e!3450013 e!3450012)))

(declare-fun c!980080 () Bool)

(assert (=> b!5592337 (= c!980080 ((_ is EmptyLang!15579) (regTwo!31670 r!7292)))))

(declare-fun b!5592338 () Bool)

(assert (=> b!5592338 (= e!3450016 e!3450017)))

(declare-fun res!2372513 () Bool)

(assert (=> b!5592338 (=> (not res!2372513) (not e!3450017))))

(assert (=> b!5592338 (= res!2372513 (not lt!2255672))))

(declare-fun d!1767615 () Bool)

(assert (=> d!1767615 e!3450013))

(declare-fun c!980081 () Bool)

(assert (=> d!1767615 (= c!980081 ((_ is EmptyExpr!15579) (regTwo!31670 r!7292)))))

(assert (=> d!1767615 (= lt!2255672 e!3450014)))

(declare-fun c!980082 () Bool)

(assert (=> d!1767615 (= c!980082 (isEmpty!34734 (_2!35979 (get!21665 lt!2255619))))))

(assert (=> d!1767615 (validRegex!7315 (regTwo!31670 r!7292))))

(assert (=> d!1767615 (= (matchR!7764 (regTwo!31670 r!7292) (_2!35979 (get!21665 lt!2255619))) lt!2255672)))

(declare-fun b!5592339 () Bool)

(declare-fun res!2372515 () Bool)

(assert (=> b!5592339 (=> (not res!2372515) (not e!3450015))))

(assert (=> b!5592339 (= res!2372515 (not call!419021))))

(assert (= (and d!1767615 c!980082) b!5592335))

(assert (= (and d!1767615 (not c!980082)) b!5592329))

(assert (= (and d!1767615 c!980081) b!5592333))

(assert (= (and d!1767615 (not c!980081)) b!5592337))

(assert (= (and b!5592337 c!980080) b!5592328))

(assert (= (and b!5592337 (not c!980080)) b!5592330))

(assert (= (and b!5592330 (not res!2372514)) b!5592327))

(assert (= (and b!5592327 res!2372510) b!5592339))

(assert (= (and b!5592339 res!2372515) b!5592334))

(assert (= (and b!5592334 res!2372512) b!5592336))

(assert (= (and b!5592327 (not res!2372509)) b!5592338))

(assert (= (and b!5592338 res!2372513) b!5592331))

(assert (= (and b!5592331 (not res!2372511)) b!5592332))

(assert (= (and b!5592332 (not res!2372508)) b!5592326))

(assert (= (or b!5592333 b!5592331 b!5592339) bm!419016))

(declare-fun m!6572164 () Bool)

(assert (=> b!5592326 m!6572164))

(assert (=> b!5592329 m!6572164))

(assert (=> b!5592329 m!6572164))

(declare-fun m!6572166 () Bool)

(assert (=> b!5592329 m!6572166))

(declare-fun m!6572168 () Bool)

(assert (=> b!5592329 m!6572168))

(assert (=> b!5592329 m!6572166))

(assert (=> b!5592329 m!6572168))

(declare-fun m!6572170 () Bool)

(assert (=> b!5592329 m!6572170))

(declare-fun m!6572172 () Bool)

(assert (=> bm!419016 m!6572172))

(assert (=> b!5592336 m!6572164))

(assert (=> b!5592332 m!6572168))

(assert (=> b!5592332 m!6572168))

(declare-fun m!6572174 () Bool)

(assert (=> b!5592332 m!6572174))

(assert (=> d!1767615 m!6572172))

(declare-fun m!6572176 () Bool)

(assert (=> d!1767615 m!6572176))

(declare-fun m!6572178 () Bool)

(assert (=> b!5592335 m!6572178))

(assert (=> b!5592334 m!6572168))

(assert (=> b!5592334 m!6572168))

(assert (=> b!5592334 m!6572174))

(assert (=> b!5591334 d!1767615))

(declare-fun d!1767617 () Bool)

(assert (=> d!1767617 (= (get!21665 lt!2255619) (v!51628 lt!2255619))))

(assert (=> b!5591334 d!1767617))

(declare-fun b!5592340 () Bool)

(declare-fun e!3450020 () Bool)

(assert (=> b!5592340 (= e!3450020 (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536)))))))))

(declare-fun b!5592341 () Bool)

(declare-fun e!3450019 () (InoxSet Context!9926))

(assert (=> b!5592341 (= e!3450019 ((as const (Array Context!9926 Bool)) false))))

(declare-fun e!3450021 () (InoxSet Context!9926))

(declare-fun call!419022 () (InoxSet Context!9926))

(declare-fun b!5592342 () Bool)

(assert (=> b!5592342 (= e!3450021 ((_ map or) call!419022 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536)))))) (h!69361 s!2326))))))

(declare-fun b!5592343 () Bool)

(assert (=> b!5592343 (= e!3450019 call!419022)))

(declare-fun b!5592344 () Bool)

(assert (=> b!5592344 (= e!3450021 e!3450019)))

(declare-fun c!980083 () Bool)

(assert (=> b!5592344 (= c!980083 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536))))))))

(declare-fun bm!419017 () Bool)

(assert (=> bm!419017 (= call!419022 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536)))))) (h!69361 s!2326)))))

(declare-fun d!1767619 () Bool)

(declare-fun c!980084 () Bool)

(assert (=> d!1767619 (= c!980084 e!3450020)))

(declare-fun res!2372516 () Bool)

(assert (=> d!1767619 (=> (not res!2372516) (not e!3450020))))

(assert (=> d!1767619 (= res!2372516 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536))))))))

(assert (=> d!1767619 (= (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 lt!2255536))) (h!69361 s!2326)) e!3450021)))

(assert (= (and d!1767619 res!2372516) b!5592340))

(assert (= (and d!1767619 c!980084) b!5592342))

(assert (= (and d!1767619 (not c!980084)) b!5592344))

(assert (= (and b!5592344 c!980083) b!5592343))

(assert (= (and b!5592344 (not c!980083)) b!5592341))

(assert (= (or b!5592342 b!5592343) bm!419017))

(declare-fun m!6572180 () Bool)

(assert (=> b!5592340 m!6572180))

(declare-fun m!6572182 () Bool)

(assert (=> b!5592342 m!6572182))

(declare-fun m!6572184 () Bool)

(assert (=> bm!419017 m!6572184))

(assert (=> b!5591389 d!1767619))

(declare-fun bs!1293079 () Bool)

(declare-fun d!1767621 () Bool)

(assert (= bs!1293079 (and d!1767621 d!1767215)))

(declare-fun lambda!300188 () Int)

(assert (=> bs!1293079 (= lambda!300188 lambda!300126)))

(declare-fun bs!1293080 () Bool)

(assert (= bs!1293080 (and d!1767621 d!1767185)))

(assert (=> bs!1293080 (= lambda!300188 lambda!300122)))

(declare-fun bs!1293081 () Bool)

(assert (= bs!1293081 (and d!1767621 d!1767581)))

(assert (=> bs!1293081 (= lambda!300188 lambda!300182)))

(declare-fun bs!1293082 () Bool)

(assert (= bs!1293082 (and d!1767621 d!1767169)))

(assert (=> bs!1293082 (= lambda!300188 lambda!300107)))

(declare-fun bs!1293083 () Bool)

(assert (= bs!1293083 (and d!1767621 d!1767189)))

(assert (=> bs!1293083 (= lambda!300188 lambda!300125)))

(declare-fun bs!1293084 () Bool)

(assert (= bs!1293084 (and d!1767621 d!1767171)))

(assert (=> bs!1293084 (= lambda!300188 lambda!300110)))

(assert (=> d!1767621 (= (inv!82194 setElem!37267) (forall!14745 (exprs!5463 setElem!37267) lambda!300188))))

(declare-fun bs!1293085 () Bool)

(assert (= bs!1293085 d!1767621))

(declare-fun m!6572186 () Bool)

(assert (=> bs!1293085 m!6572186))

(assert (=> setNonEmpty!37267 d!1767621))

(declare-fun d!1767623 () Bool)

(assert (=> d!1767623 (= (nullable!5611 (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))) (nullableFct!1720 (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))))))

(declare-fun bs!1293086 () Bool)

(assert (= bs!1293086 d!1767623))

(declare-fun m!6572188 () Bool)

(assert (=> bs!1293086 m!6572188))

(assert (=> b!5591446 d!1767623))

(declare-fun d!1767625 () Bool)

(assert (=> d!1767625 (= (isEmpty!34731 (tail!11023 (unfocusZipperList!1007 zl!343))) ((_ is Nil!62912) (tail!11023 (unfocusZipperList!1007 zl!343))))))

(assert (=> b!5591298 d!1767625))

(declare-fun d!1767627 () Bool)

(assert (=> d!1767627 (= (tail!11023 (unfocusZipperList!1007 zl!343)) (t!376314 (unfocusZipperList!1007 zl!343)))))

(assert (=> b!5591298 d!1767627))

(declare-fun bm!419018 () Bool)

(declare-fun call!419024 () (InoxSet Context!9926))

(declare-fun call!419025 () (InoxSet Context!9926))

(assert (=> bm!419018 (= call!419024 call!419025)))

(declare-fun d!1767629 () Bool)

(declare-fun c!980086 () Bool)

(assert (=> d!1767629 (= c!980086 (and ((_ is ElementMatch!15579) (h!69360 (exprs!5463 lt!2255535))) (= (c!979652 (h!69360 (exprs!5463 lt!2255535))) (h!69361 s!2326))))))

(declare-fun e!3450022 () (InoxSet Context!9926))

(assert (=> d!1767629 (= (derivationStepZipperDown!921 (h!69360 (exprs!5463 lt!2255535)) (Context!9927 (t!376314 (exprs!5463 lt!2255535))) (h!69361 s!2326)) e!3450022)))

(declare-fun b!5592345 () Bool)

(declare-fun e!3450025 () (InoxSet Context!9926))

(assert (=> b!5592345 (= e!3450025 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592346 () Bool)

(declare-fun e!3450026 () (InoxSet Context!9926))

(assert (=> b!5592346 (= e!3450022 e!3450026)))

(declare-fun c!980085 () Bool)

(assert (=> b!5592346 (= c!980085 ((_ is Union!15579) (h!69360 (exprs!5463 lt!2255535))))))

(declare-fun b!5592347 () Bool)

(assert (=> b!5592347 (= e!3450022 (store ((as const (Array Context!9926 Bool)) false) (Context!9927 (t!376314 (exprs!5463 lt!2255535))) true))))

(declare-fun b!5592348 () Bool)

(declare-fun e!3450027 () (InoxSet Context!9926))

(assert (=> b!5592348 (= e!3450027 call!419024)))

(declare-fun c!980089 () Bool)

(declare-fun call!419028 () List!63036)

(declare-fun bm!419019 () Bool)

(declare-fun c!980087 () Bool)

(assert (=> bm!419019 (= call!419028 ($colon$colon!1642 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535)))) (ite (or c!980087 c!980089) (regTwo!31670 (h!69360 (exprs!5463 lt!2255535))) (h!69360 (exprs!5463 lt!2255535)))))))

(declare-fun b!5592349 () Bool)

(assert (=> b!5592349 (= e!3450025 call!419024)))

(declare-fun bm!419020 () Bool)

(declare-fun call!419023 () List!63036)

(assert (=> bm!419020 (= call!419023 call!419028)))

(declare-fun bm!419021 () Bool)

(declare-fun call!419026 () (InoxSet Context!9926))

(assert (=> bm!419021 (= call!419025 call!419026)))

(declare-fun b!5592350 () Bool)

(declare-fun e!3450023 () Bool)

(assert (=> b!5592350 (= c!980087 e!3450023)))

(declare-fun res!2372517 () Bool)

(assert (=> b!5592350 (=> (not res!2372517) (not e!3450023))))

(assert (=> b!5592350 (= res!2372517 ((_ is Concat!24424) (h!69360 (exprs!5463 lt!2255535))))))

(declare-fun e!3450024 () (InoxSet Context!9926))

(assert (=> b!5592350 (= e!3450026 e!3450024)))

(declare-fun b!5592351 () Bool)

(declare-fun c!980088 () Bool)

(assert (=> b!5592351 (= c!980088 ((_ is Star!15579) (h!69360 (exprs!5463 lt!2255535))))))

(assert (=> b!5592351 (= e!3450027 e!3450025)))

(declare-fun bm!419022 () Bool)

(assert (=> bm!419022 (= call!419026 (derivationStepZipperDown!921 (ite c!980085 (regOne!31671 (h!69360 (exprs!5463 lt!2255535))) (ite c!980087 (regTwo!31670 (h!69360 (exprs!5463 lt!2255535))) (ite c!980089 (regOne!31670 (h!69360 (exprs!5463 lt!2255535))) (reg!15908 (h!69360 (exprs!5463 lt!2255535)))))) (ite (or c!980085 c!980087) (Context!9927 (t!376314 (exprs!5463 lt!2255535))) (Context!9927 call!419023)) (h!69361 s!2326)))))

(declare-fun b!5592352 () Bool)

(declare-fun call!419027 () (InoxSet Context!9926))

(assert (=> b!5592352 (= e!3450026 ((_ map or) call!419026 call!419027))))

(declare-fun b!5592353 () Bool)

(assert (=> b!5592353 (= e!3450024 e!3450027)))

(assert (=> b!5592353 (= c!980089 ((_ is Concat!24424) (h!69360 (exprs!5463 lt!2255535))))))

(declare-fun bm!419023 () Bool)

(assert (=> bm!419023 (= call!419027 (derivationStepZipperDown!921 (ite c!980085 (regTwo!31671 (h!69360 (exprs!5463 lt!2255535))) (regOne!31670 (h!69360 (exprs!5463 lt!2255535)))) (ite c!980085 (Context!9927 (t!376314 (exprs!5463 lt!2255535))) (Context!9927 call!419028)) (h!69361 s!2326)))))

(declare-fun b!5592354 () Bool)

(assert (=> b!5592354 (= e!3450024 ((_ map or) call!419027 call!419025))))

(declare-fun b!5592355 () Bool)

(assert (=> b!5592355 (= e!3450023 (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 lt!2255535)))))))

(assert (= (and d!1767629 c!980086) b!5592347))

(assert (= (and d!1767629 (not c!980086)) b!5592346))

(assert (= (and b!5592346 c!980085) b!5592352))

(assert (= (and b!5592346 (not c!980085)) b!5592350))

(assert (= (and b!5592350 res!2372517) b!5592355))

(assert (= (and b!5592350 c!980087) b!5592354))

(assert (= (and b!5592350 (not c!980087)) b!5592353))

(assert (= (and b!5592353 c!980089) b!5592348))

(assert (= (and b!5592353 (not c!980089)) b!5592351))

(assert (= (and b!5592351 c!980088) b!5592349))

(assert (= (and b!5592351 (not c!980088)) b!5592345))

(assert (= (or b!5592348 b!5592349) bm!419020))

(assert (= (or b!5592348 b!5592349) bm!419018))

(assert (= (or b!5592354 bm!419020) bm!419019))

(assert (= (or b!5592354 bm!419018) bm!419021))

(assert (= (or b!5592352 b!5592354) bm!419023))

(assert (= (or b!5592352 bm!419021) bm!419022))

(declare-fun m!6572190 () Bool)

(assert (=> b!5592355 m!6572190))

(declare-fun m!6572192 () Bool)

(assert (=> b!5592347 m!6572192))

(declare-fun m!6572194 () Bool)

(assert (=> bm!419022 m!6572194))

(declare-fun m!6572196 () Bool)

(assert (=> bm!419023 m!6572196))

(declare-fun m!6572198 () Bool)

(assert (=> bm!419019 m!6572198))

(assert (=> bm!418820 d!1767629))

(declare-fun bm!419024 () Bool)

(declare-fun call!419030 () (InoxSet Context!9926))

(declare-fun call!419031 () (InoxSet Context!9926))

(assert (=> bm!419024 (= call!419030 call!419031)))

(declare-fun d!1767631 () Bool)

(declare-fun c!980091 () Bool)

(assert (=> d!1767631 (= c!980091 (and ((_ is ElementMatch!15579) (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (= (c!979652 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (h!69361 s!2326))))))

(declare-fun e!3450028 () (InoxSet Context!9926))

(assert (=> d!1767631 (= (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (h!69361 s!2326)) e!3450028)))

(declare-fun b!5592356 () Bool)

(declare-fun e!3450031 () (InoxSet Context!9926))

(assert (=> b!5592356 (= e!3450031 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592357 () Bool)

(declare-fun e!3450032 () (InoxSet Context!9926))

(assert (=> b!5592357 (= e!3450028 e!3450032)))

(declare-fun c!980090 () Bool)

(assert (=> b!5592357 (= c!980090 ((_ is Union!15579) (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun b!5592358 () Bool)

(assert (=> b!5592358 (= e!3450028 (store ((as const (Array Context!9926 Bool)) false) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) true))))

(declare-fun b!5592359 () Bool)

(declare-fun e!3450033 () (InoxSet Context!9926))

(assert (=> b!5592359 (= e!3450033 call!419030)))

(declare-fun call!419034 () List!63036)

(declare-fun c!980092 () Bool)

(declare-fun c!980094 () Bool)

(declare-fun bm!419025 () Bool)

(assert (=> bm!419025 (= call!419034 ($colon$colon!1642 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))) (ite (or c!980092 c!980094) (regTwo!31670 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))))

(declare-fun b!5592360 () Bool)

(assert (=> b!5592360 (= e!3450031 call!419030)))

(declare-fun bm!419026 () Bool)

(declare-fun call!419029 () List!63036)

(assert (=> bm!419026 (= call!419029 call!419034)))

(declare-fun bm!419027 () Bool)

(declare-fun call!419032 () (InoxSet Context!9926))

(assert (=> bm!419027 (= call!419031 call!419032)))

(declare-fun b!5592361 () Bool)

(declare-fun e!3450029 () Bool)

(assert (=> b!5592361 (= c!980092 e!3450029)))

(declare-fun res!2372518 () Bool)

(assert (=> b!5592361 (=> (not res!2372518) (not e!3450029))))

(assert (=> b!5592361 (= res!2372518 ((_ is Concat!24424) (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun e!3450030 () (InoxSet Context!9926))

(assert (=> b!5592361 (= e!3450032 e!3450030)))

(declare-fun b!5592362 () Bool)

(declare-fun c!980093 () Bool)

(assert (=> b!5592362 (= c!980093 ((_ is Star!15579) (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))

(assert (=> b!5592362 (= e!3450033 e!3450031)))

(declare-fun bm!419028 () Bool)

(assert (=> bm!419028 (= call!419032 (derivationStepZipperDown!921 (ite c!980090 (regOne!31671 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (ite c!980092 (regTwo!31670 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (ite c!980094 (regOne!31670 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (reg!15908 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))) (ite (or c!980090 c!980092) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (Context!9927 call!419029)) (h!69361 s!2326)))))

(declare-fun b!5592363 () Bool)

(declare-fun call!419033 () (InoxSet Context!9926))

(assert (=> b!5592363 (= e!3450032 ((_ map or) call!419032 call!419033))))

(declare-fun b!5592364 () Bool)

(assert (=> b!5592364 (= e!3450030 e!3450033)))

(assert (=> b!5592364 (= c!980094 ((_ is Concat!24424) (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))

(declare-fun bm!419029 () Bool)

(assert (=> bm!419029 (= call!419033 (derivationStepZipperDown!921 (ite c!980090 (regTwo!31671 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (regOne!31670 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))) (ite c!980090 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (Context!9927 call!419034)) (h!69361 s!2326)))))

(declare-fun b!5592365 () Bool)

(assert (=> b!5592365 (= e!3450030 ((_ map or) call!419033 call!419031))))

(declare-fun b!5592366 () Bool)

(assert (=> b!5592366 (= e!3450029 (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))))

(assert (= (and d!1767631 c!980091) b!5592358))

(assert (= (and d!1767631 (not c!980091)) b!5592357))

(assert (= (and b!5592357 c!980090) b!5592363))

(assert (= (and b!5592357 (not c!980090)) b!5592361))

(assert (= (and b!5592361 res!2372518) b!5592366))

(assert (= (and b!5592361 c!980092) b!5592365))

(assert (= (and b!5592361 (not c!980092)) b!5592364))

(assert (= (and b!5592364 c!980094) b!5592359))

(assert (= (and b!5592364 (not c!980094)) b!5592362))

(assert (= (and b!5592362 c!980093) b!5592360))

(assert (= (and b!5592362 (not c!980093)) b!5592356))

(assert (= (or b!5592359 b!5592360) bm!419026))

(assert (= (or b!5592359 b!5592360) bm!419024))

(assert (= (or b!5592365 bm!419026) bm!419025))

(assert (= (or b!5592365 bm!419024) bm!419027))

(assert (= (or b!5592363 b!5592365) bm!419029))

(assert (= (or b!5592363 bm!419027) bm!419028))

(declare-fun m!6572200 () Bool)

(assert (=> b!5592366 m!6572200))

(declare-fun m!6572202 () Bool)

(assert (=> b!5592358 m!6572202))

(declare-fun m!6572204 () Bool)

(assert (=> bm!419028 m!6572204))

(declare-fun m!6572206 () Bool)

(assert (=> bm!419029 m!6572206))

(declare-fun m!6572208 () Bool)

(assert (=> bm!419025 m!6572208))

(assert (=> bm!418821 d!1767631))

(declare-fun d!1767633 () Bool)

(assert (=> d!1767633 (= (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))) (nullableFct!1720 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun bs!1293087 () Bool)

(assert (= bs!1293087 d!1767633))

(declare-fun m!6572210 () Bool)

(assert (=> bs!1293087 m!6572210))

(assert (=> b!5591258 d!1767633))

(declare-fun bm!419034 () Bool)

(declare-fun call!419040 () Bool)

(declare-fun c!980097 () Bool)

(assert (=> bm!419034 (= call!419040 (nullable!5611 (ite c!980097 (regTwo!31671 (regTwo!31671 (regOne!31670 r!7292))) (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))))))))

(declare-fun d!1767635 () Bool)

(declare-fun res!2372531 () Bool)

(declare-fun e!3450047 () Bool)

(assert (=> d!1767635 (=> res!2372531 e!3450047)))

(assert (=> d!1767635 (= res!2372531 ((_ is EmptyExpr!15579) (regTwo!31671 (regOne!31670 r!7292))))))

(assert (=> d!1767635 (= (nullableFct!1720 (regTwo!31671 (regOne!31670 r!7292))) e!3450047)))

(declare-fun b!5592381 () Bool)

(declare-fun e!3450048 () Bool)

(assert (=> b!5592381 (= e!3450048 call!419040)))

(declare-fun b!5592382 () Bool)

(declare-fun e!3450050 () Bool)

(declare-fun e!3450049 () Bool)

(assert (=> b!5592382 (= e!3450050 e!3450049)))

(declare-fun res!2372530 () Bool)

(declare-fun call!419039 () Bool)

(assert (=> b!5592382 (= res!2372530 call!419039)))

(assert (=> b!5592382 (=> res!2372530 e!3450049)))

(declare-fun b!5592383 () Bool)

(declare-fun e!3450051 () Bool)

(assert (=> b!5592383 (= e!3450047 e!3450051)))

(declare-fun res!2372532 () Bool)

(assert (=> b!5592383 (=> (not res!2372532) (not e!3450051))))

(assert (=> b!5592383 (= res!2372532 (and (not ((_ is EmptyLang!15579) (regTwo!31671 (regOne!31670 r!7292)))) (not ((_ is ElementMatch!15579) (regTwo!31671 (regOne!31670 r!7292))))))))

(declare-fun bm!419035 () Bool)

(assert (=> bm!419035 (= call!419039 (nullable!5611 (ite c!980097 (regOne!31671 (regTwo!31671 (regOne!31670 r!7292))) (regOne!31670 (regTwo!31671 (regOne!31670 r!7292))))))))

(declare-fun b!5592384 () Bool)

(assert (=> b!5592384 (= e!3450049 call!419040)))

(declare-fun b!5592385 () Bool)

(assert (=> b!5592385 (= e!3450050 e!3450048)))

(declare-fun res!2372529 () Bool)

(assert (=> b!5592385 (= res!2372529 call!419039)))

(assert (=> b!5592385 (=> (not res!2372529) (not e!3450048))))

(declare-fun b!5592386 () Bool)

(declare-fun e!3450046 () Bool)

(assert (=> b!5592386 (= e!3450046 e!3450050)))

(assert (=> b!5592386 (= c!980097 ((_ is Union!15579) (regTwo!31671 (regOne!31670 r!7292))))))

(declare-fun b!5592387 () Bool)

(assert (=> b!5592387 (= e!3450051 e!3450046)))

(declare-fun res!2372533 () Bool)

(assert (=> b!5592387 (=> res!2372533 e!3450046)))

(assert (=> b!5592387 (= res!2372533 ((_ is Star!15579) (regTwo!31671 (regOne!31670 r!7292))))))

(assert (= (and d!1767635 (not res!2372531)) b!5592383))

(assert (= (and b!5592383 res!2372532) b!5592387))

(assert (= (and b!5592387 (not res!2372533)) b!5592386))

(assert (= (and b!5592386 c!980097) b!5592382))

(assert (= (and b!5592386 (not c!980097)) b!5592385))

(assert (= (and b!5592382 (not res!2372530)) b!5592384))

(assert (= (and b!5592385 res!2372529) b!5592381))

(assert (= (or b!5592384 b!5592381) bm!419034))

(assert (= (or b!5592382 b!5592385) bm!419035))

(declare-fun m!6572212 () Bool)

(assert (=> bm!419034 m!6572212))

(declare-fun m!6572214 () Bool)

(assert (=> bm!419035 m!6572214))

(assert (=> d!1767195 d!1767635))

(declare-fun bs!1293088 () Bool)

(declare-fun d!1767637 () Bool)

(assert (= bs!1293088 (and d!1767637 d!1767215)))

(declare-fun lambda!300189 () Int)

(assert (=> bs!1293088 (= lambda!300189 lambda!300126)))

(declare-fun bs!1293089 () Bool)

(assert (= bs!1293089 (and d!1767637 d!1767621)))

(assert (=> bs!1293089 (= lambda!300189 lambda!300188)))

(declare-fun bs!1293090 () Bool)

(assert (= bs!1293090 (and d!1767637 d!1767185)))

(assert (=> bs!1293090 (= lambda!300189 lambda!300122)))

(declare-fun bs!1293091 () Bool)

(assert (= bs!1293091 (and d!1767637 d!1767581)))

(assert (=> bs!1293091 (= lambda!300189 lambda!300182)))

(declare-fun bs!1293092 () Bool)

(assert (= bs!1293092 (and d!1767637 d!1767169)))

(assert (=> bs!1293092 (= lambda!300189 lambda!300107)))

(declare-fun bs!1293093 () Bool)

(assert (= bs!1293093 (and d!1767637 d!1767189)))

(assert (=> bs!1293093 (= lambda!300189 lambda!300125)))

(declare-fun bs!1293094 () Bool)

(assert (= bs!1293094 (and d!1767637 d!1767171)))

(assert (=> bs!1293094 (= lambda!300189 lambda!300110)))

(assert (=> d!1767637 (= (inv!82194 (h!69362 (t!376316 zl!343))) (forall!14745 (exprs!5463 (h!69362 (t!376316 zl!343))) lambda!300189))))

(declare-fun bs!1293095 () Bool)

(assert (= bs!1293095 d!1767637))

(declare-fun m!6572216 () Bool)

(assert (=> bs!1293095 m!6572216))

(assert (=> b!5591538 d!1767637))

(declare-fun d!1767639 () Bool)

(assert (=> d!1767639 (= (isConcat!656 lt!2255628) ((_ is Concat!24424) lt!2255628))))

(assert (=> b!5591369 d!1767639))

(assert (=> b!5591518 d!1767541))

(declare-fun bs!1293096 () Bool)

(declare-fun d!1767641 () Bool)

(assert (= bs!1293096 (and d!1767641 d!1767613)))

(declare-fun lambda!300190 () Int)

(assert (=> bs!1293096 (= lambda!300190 lambda!300187)))

(declare-fun bs!1293097 () Bool)

(assert (= bs!1293097 (and d!1767641 d!1767521)))

(assert (=> bs!1293097 (= lambda!300190 lambda!300175)))

(declare-fun bs!1293098 () Bool)

(assert (= bs!1293098 (and d!1767641 d!1767533)))

(assert (=> bs!1293098 (= lambda!300190 lambda!300177)))

(declare-fun bs!1293099 () Bool)

(assert (= bs!1293099 (and d!1767641 d!1767527)))

(assert (=> bs!1293099 (= lambda!300190 lambda!300176)))

(declare-fun bs!1293100 () Bool)

(assert (= bs!1293100 (and d!1767641 d!1767579)))

(assert (=> bs!1293100 (= lambda!300190 lambda!300181)))

(declare-fun bs!1293101 () Bool)

(assert (= bs!1293101 (and d!1767641 d!1767589)))

(assert (=> bs!1293101 (= lambda!300190 lambda!300184)))

(assert (=> d!1767641 (= (nullableZipper!1574 lt!2255547) (exists!2168 lt!2255547 lambda!300190))))

(declare-fun bs!1293102 () Bool)

(assert (= bs!1293102 d!1767641))

(declare-fun m!6572218 () Bool)

(assert (=> bs!1293102 m!6572218))

(assert (=> b!5591209 d!1767641))

(declare-fun d!1767643 () Bool)

(assert (=> d!1767643 true))

(declare-fun setRes!37276 () Bool)

(assert (=> d!1767643 setRes!37276))

(declare-fun condSetEmpty!37276 () Bool)

(declare-fun res!2372536 () (InoxSet Context!9926))

(assert (=> d!1767643 (= condSetEmpty!37276 (= res!2372536 ((as const (Array Context!9926 Bool)) false)))))

(assert (=> d!1767643 (= (choose!42401 lt!2255540 lambda!300076) res!2372536)))

(declare-fun setIsEmpty!37276 () Bool)

(assert (=> setIsEmpty!37276 setRes!37276))

(declare-fun setNonEmpty!37276 () Bool)

(declare-fun tp!1546617 () Bool)

(declare-fun setElem!37276 () Context!9926)

(declare-fun e!3450054 () Bool)

(assert (=> setNonEmpty!37276 (= setRes!37276 (and tp!1546617 (inv!82194 setElem!37276) e!3450054))))

(declare-fun setRest!37276 () (InoxSet Context!9926))

(assert (=> setNonEmpty!37276 (= res!2372536 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) setElem!37276 true) setRest!37276))))

(declare-fun b!5592390 () Bool)

(declare-fun tp!1546616 () Bool)

(assert (=> b!5592390 (= e!3450054 tp!1546616)))

(assert (= (and d!1767643 condSetEmpty!37276) setIsEmpty!37276))

(assert (= (and d!1767643 (not condSetEmpty!37276)) setNonEmpty!37276))

(assert (= setNonEmpty!37276 b!5592390))

(declare-fun m!6572220 () Bool)

(assert (=> setNonEmpty!37276 m!6572220))

(assert (=> d!1767201 d!1767643))

(declare-fun d!1767645 () Bool)

(declare-fun c!980098 () Bool)

(assert (=> d!1767645 (= c!980098 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3450055 () Bool)

(assert (=> d!1767645 (= (matchZipper!1717 (derivationStepZipper!1678 lt!2255522 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3450055)))

(declare-fun b!5592391 () Bool)

(assert (=> b!5592391 (= e!3450055 (nullableZipper!1574 (derivationStepZipper!1678 lt!2255522 (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592392 () Bool)

(assert (=> b!5592392 (= e!3450055 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 lt!2255522 (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767645 c!980098) b!5592391))

(assert (= (and d!1767645 (not c!980098)) b!5592392))

(assert (=> d!1767645 m!6571176))

(assert (=> d!1767645 m!6572060))

(assert (=> b!5592391 m!6571188))

(declare-fun m!6572222 () Bool)

(assert (=> b!5592391 m!6572222))

(assert (=> b!5592392 m!6571176))

(assert (=> b!5592392 m!6572064))

(assert (=> b!5592392 m!6571188))

(assert (=> b!5592392 m!6572064))

(declare-fun m!6572224 () Bool)

(assert (=> b!5592392 m!6572224))

(assert (=> b!5592392 m!6571176))

(assert (=> b!5592392 m!6572068))

(assert (=> b!5592392 m!6572224))

(assert (=> b!5592392 m!6572068))

(declare-fun m!6572226 () Bool)

(assert (=> b!5592392 m!6572226))

(assert (=> b!5591203 d!1767645))

(declare-fun bs!1293103 () Bool)

(declare-fun d!1767647 () Bool)

(assert (= bs!1293103 (and d!1767647 b!5590764)))

(declare-fun lambda!300191 () Int)

(assert (=> bs!1293103 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300191 lambda!300076))))

(declare-fun bs!1293104 () Bool)

(assert (= bs!1293104 (and d!1767647 d!1767585)))

(assert (=> bs!1293104 (= lambda!300191 lambda!300183)))

(declare-fun bs!1293105 () Bool)

(assert (= bs!1293105 (and d!1767647 d!1767593)))

(assert (=> bs!1293105 (= (= (head!11927 (t!376315 s!2326)) (head!11927 s!2326)) (= lambda!300191 lambda!300185))))

(declare-fun bs!1293106 () Bool)

(assert (= bs!1293106 (and d!1767647 d!1767559)))

(assert (=> bs!1293106 (= lambda!300191 lambda!300180)))

(declare-fun bs!1293107 () Bool)

(assert (= bs!1293107 (and d!1767647 d!1767599)))

(assert (=> bs!1293107 (= lambda!300191 lambda!300186)))

(assert (=> d!1767647 true))

(assert (=> d!1767647 (= (derivationStepZipper!1678 lt!2255522 (head!11927 (t!376315 s!2326))) (flatMap!1192 lt!2255522 lambda!300191))))

(declare-fun bs!1293108 () Bool)

(assert (= bs!1293108 d!1767647))

(declare-fun m!6572228 () Bool)

(assert (=> bs!1293108 m!6572228))

(assert (=> b!5591203 d!1767647))

(assert (=> b!5591203 d!1767561))

(assert (=> b!5591203 d!1767563))

(assert (=> d!1767179 d!1767175))

(declare-fun b!5592393 () Bool)

(declare-fun res!2372541 () Bool)

(declare-fun e!3450058 () Bool)

(assert (=> b!5592393 (=> (not res!2372541) (not e!3450058))))

(declare-fun call!419042 () Bool)

(assert (=> b!5592393 (= res!2372541 call!419042)))

(declare-fun e!3450056 () Bool)

(assert (=> b!5592393 (= e!3450056 e!3450058)))

(declare-fun b!5592394 () Bool)

(declare-fun e!3450061 () Bool)

(declare-fun call!419041 () Bool)

(assert (=> b!5592394 (= e!3450061 call!419041)))

(declare-fun bm!419036 () Bool)

(assert (=> bm!419036 (= call!419042 call!419041)))

(declare-fun b!5592395 () Bool)

(declare-fun e!3450059 () Bool)

(declare-fun e!3450062 () Bool)

(assert (=> b!5592395 (= e!3450059 e!3450062)))

(declare-fun c!980099 () Bool)

(assert (=> b!5592395 (= c!980099 ((_ is Star!15579) (regOne!31670 r!7292)))))

(declare-fun b!5592397 () Bool)

(declare-fun res!2372537 () Bool)

(declare-fun e!3450057 () Bool)

(assert (=> b!5592397 (=> res!2372537 e!3450057)))

(assert (=> b!5592397 (= res!2372537 (not ((_ is Concat!24424) (regOne!31670 r!7292))))))

(assert (=> b!5592397 (= e!3450056 e!3450057)))

(declare-fun b!5592398 () Bool)

(declare-fun call!419043 () Bool)

(assert (=> b!5592398 (= e!3450058 call!419043)))

(declare-fun b!5592399 () Bool)

(declare-fun e!3450060 () Bool)

(assert (=> b!5592399 (= e!3450060 call!419043)))

(declare-fun bm!419037 () Bool)

(declare-fun c!980100 () Bool)

(assert (=> bm!419037 (= call!419043 (validRegex!7315 (ite c!980100 (regTwo!31671 (regOne!31670 r!7292)) (regTwo!31670 (regOne!31670 r!7292)))))))

(declare-fun b!5592400 () Bool)

(assert (=> b!5592400 (= e!3450057 e!3450060)))

(declare-fun res!2372538 () Bool)

(assert (=> b!5592400 (=> (not res!2372538) (not e!3450060))))

(assert (=> b!5592400 (= res!2372538 call!419042)))

(declare-fun b!5592401 () Bool)

(assert (=> b!5592401 (= e!3450062 e!3450056)))

(assert (=> b!5592401 (= c!980100 ((_ is Union!15579) (regOne!31670 r!7292)))))

(declare-fun bm!419038 () Bool)

(assert (=> bm!419038 (= call!419041 (validRegex!7315 (ite c!980099 (reg!15908 (regOne!31670 r!7292)) (ite c!980100 (regOne!31671 (regOne!31670 r!7292)) (regOne!31670 (regOne!31670 r!7292))))))))

(declare-fun d!1767649 () Bool)

(declare-fun res!2372539 () Bool)

(assert (=> d!1767649 (=> res!2372539 e!3450059)))

(assert (=> d!1767649 (= res!2372539 ((_ is ElementMatch!15579) (regOne!31670 r!7292)))))

(assert (=> d!1767649 (= (validRegex!7315 (regOne!31670 r!7292)) e!3450059)))

(declare-fun b!5592396 () Bool)

(assert (=> b!5592396 (= e!3450062 e!3450061)))

(declare-fun res!2372540 () Bool)

(assert (=> b!5592396 (= res!2372540 (not (nullable!5611 (reg!15908 (regOne!31670 r!7292)))))))

(assert (=> b!5592396 (=> (not res!2372540) (not e!3450061))))

(assert (= (and d!1767649 (not res!2372539)) b!5592395))

(assert (= (and b!5592395 c!980099) b!5592396))

(assert (= (and b!5592395 (not c!980099)) b!5592401))

(assert (= (and b!5592396 res!2372540) b!5592394))

(assert (= (and b!5592401 c!980100) b!5592393))

(assert (= (and b!5592401 (not c!980100)) b!5592397))

(assert (= (and b!5592393 res!2372541) b!5592398))

(assert (= (and b!5592397 (not res!2372537)) b!5592400))

(assert (= (and b!5592400 res!2372538) b!5592399))

(assert (= (or b!5592398 b!5592399) bm!419037))

(assert (= (or b!5592393 b!5592400) bm!419036))

(assert (= (or b!5592394 bm!419036) bm!419038))

(declare-fun m!6572230 () Bool)

(assert (=> bm!419037 m!6572230))

(declare-fun m!6572232 () Bool)

(assert (=> bm!419038 m!6572232))

(declare-fun m!6572234 () Bool)

(assert (=> b!5592396 m!6572234))

(assert (=> d!1767179 d!1767649))

(assert (=> d!1767179 d!1767183))

(declare-fun d!1767651 () Bool)

(assert (=> d!1767651 (= (Exists!2679 lambda!300113) (choose!42403 lambda!300113))))

(declare-fun bs!1293109 () Bool)

(assert (= bs!1293109 d!1767651))

(declare-fun m!6572236 () Bool)

(assert (=> bs!1293109 m!6572236))

(assert (=> d!1767179 d!1767651))

(declare-fun bs!1293110 () Bool)

(declare-fun d!1767653 () Bool)

(assert (= bs!1293110 (and d!1767653 b!5590791)))

(declare-fun lambda!300194 () Int)

(assert (=> bs!1293110 (not (= lambda!300194 lambda!300075))))

(declare-fun bs!1293111 () Bool)

(assert (= bs!1293111 (and d!1767653 d!1767181)))

(assert (=> bs!1293111 (not (= lambda!300194 lambda!300119))))

(declare-fun bs!1293112 () Bool)

(assert (= bs!1293112 (and d!1767653 d!1767179)))

(assert (=> bs!1293112 (= lambda!300194 lambda!300113)))

(assert (=> bs!1293110 (= lambda!300194 lambda!300074)))

(declare-fun bs!1293113 () Bool)

(assert (= bs!1293113 (and d!1767653 b!5591487)))

(assert (=> bs!1293113 (not (= lambda!300194 lambda!300132))))

(declare-fun bs!1293114 () Bool)

(assert (= bs!1293114 (and d!1767653 b!5591481)))

(assert (=> bs!1293114 (not (= lambda!300194 lambda!300131))))

(assert (=> bs!1293111 (= lambda!300194 lambda!300118)))

(assert (=> d!1767653 true))

(assert (=> d!1767653 true))

(assert (=> d!1767653 true))

(assert (=> d!1767653 (= (isDefined!12291 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326)) (Exists!2679 lambda!300194))))

(assert (=> d!1767653 true))

(declare-fun _$89!1701 () Unit!155724)

(assert (=> d!1767653 (= (choose!42404 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326) _$89!1701)))

(declare-fun bs!1293115 () Bool)

(assert (= bs!1293115 d!1767653))

(assert (=> bs!1293115 m!6570792))

(assert (=> bs!1293115 m!6570792))

(assert (=> bs!1293115 m!6570794))

(declare-fun m!6572238 () Bool)

(assert (=> bs!1293115 m!6572238))

(assert (=> d!1767179 d!1767653))

(assert (=> b!5591419 d!1767137))

(declare-fun d!1767655 () Bool)

(declare-fun res!2372546 () Bool)

(declare-fun e!3450065 () Bool)

(assert (=> d!1767655 (=> res!2372546 e!3450065)))

(assert (=> d!1767655 (= res!2372546 ((_ is Nil!62912) (exprs!5463 (h!69362 zl!343))))))

(assert (=> d!1767655 (= (forall!14745 (exprs!5463 (h!69362 zl!343)) lambda!300125) e!3450065)))

(declare-fun b!5592406 () Bool)

(declare-fun e!3450066 () Bool)

(assert (=> b!5592406 (= e!3450065 e!3450066)))

(declare-fun res!2372547 () Bool)

(assert (=> b!5592406 (=> (not res!2372547) (not e!3450066))))

(assert (=> b!5592406 (= res!2372547 (dynLambda!24607 lambda!300125 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592407 () Bool)

(assert (=> b!5592407 (= e!3450066 (forall!14745 (t!376314 (exprs!5463 (h!69362 zl!343))) lambda!300125))))

(assert (= (and d!1767655 (not res!2372546)) b!5592406))

(assert (= (and b!5592406 res!2372547) b!5592407))

(declare-fun b_lambda!211915 () Bool)

(assert (=> (not b_lambda!211915) (not b!5592406)))

(declare-fun m!6572240 () Bool)

(assert (=> b!5592406 m!6572240))

(declare-fun m!6572242 () Bool)

(assert (=> b!5592407 m!6572242))

(assert (=> d!1767189 d!1767655))

(assert (=> d!1767145 d!1767549))

(declare-fun bs!1293116 () Bool)

(declare-fun d!1767657 () Bool)

(assert (= bs!1293116 (and d!1767657 d!1767613)))

(declare-fun lambda!300195 () Int)

(assert (=> bs!1293116 (= lambda!300195 lambda!300187)))

(declare-fun bs!1293117 () Bool)

(assert (= bs!1293117 (and d!1767657 d!1767521)))

(assert (=> bs!1293117 (= lambda!300195 lambda!300175)))

(declare-fun bs!1293118 () Bool)

(assert (= bs!1293118 (and d!1767657 d!1767641)))

(assert (=> bs!1293118 (= lambda!300195 lambda!300190)))

(declare-fun bs!1293119 () Bool)

(assert (= bs!1293119 (and d!1767657 d!1767533)))

(assert (=> bs!1293119 (= lambda!300195 lambda!300177)))

(declare-fun bs!1293120 () Bool)

(assert (= bs!1293120 (and d!1767657 d!1767527)))

(assert (=> bs!1293120 (= lambda!300195 lambda!300176)))

(declare-fun bs!1293121 () Bool)

(assert (= bs!1293121 (and d!1767657 d!1767579)))

(assert (=> bs!1293121 (= lambda!300195 lambda!300181)))

(declare-fun bs!1293122 () Bool)

(assert (= bs!1293122 (and d!1767657 d!1767589)))

(assert (=> bs!1293122 (= lambda!300195 lambda!300184)))

(assert (=> d!1767657 (= (nullableZipper!1574 lt!2255521) (exists!2168 lt!2255521 lambda!300195))))

(declare-fun bs!1293123 () Bool)

(assert (= bs!1293123 d!1767657))

(declare-fun m!6572244 () Bool)

(assert (=> bs!1293123 m!6572244))

(assert (=> b!5591200 d!1767657))

(declare-fun d!1767659 () Bool)

(assert (=> d!1767659 (= ($colon$colon!1642 (exprs!5463 lt!2255535) (ite (or c!979849 c!979851) (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (regOne!31671 (regOne!31670 r!7292)))) (Cons!62912 (ite (or c!979849 c!979851) (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))) (regOne!31671 (regOne!31670 r!7292))) (exprs!5463 lt!2255535)))))

(assert (=> bm!418840 d!1767659))

(declare-fun d!1767661 () Bool)

(declare-fun c!980101 () Bool)

(assert (=> d!1767661 (= c!980101 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3450067 () Bool)

(assert (=> d!1767661 (= (matchZipper!1717 (derivationStepZipper!1678 ((_ map or) lt!2255521 lt!2255546) (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3450067)))

(declare-fun b!5592408 () Bool)

(assert (=> b!5592408 (= e!3450067 (nullableZipper!1574 (derivationStepZipper!1678 ((_ map or) lt!2255521 lt!2255546) (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592409 () Bool)

(assert (=> b!5592409 (= e!3450067 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 ((_ map or) lt!2255521 lt!2255546) (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767661 c!980101) b!5592408))

(assert (= (and d!1767661 (not c!980101)) b!5592409))

(assert (=> d!1767661 m!6571176))

(assert (=> d!1767661 m!6572060))

(assert (=> b!5592408 m!6571398))

(declare-fun m!6572246 () Bool)

(assert (=> b!5592408 m!6572246))

(assert (=> b!5592409 m!6571176))

(assert (=> b!5592409 m!6572064))

(assert (=> b!5592409 m!6571398))

(assert (=> b!5592409 m!6572064))

(declare-fun m!6572248 () Bool)

(assert (=> b!5592409 m!6572248))

(assert (=> b!5592409 m!6571176))

(assert (=> b!5592409 m!6572068))

(assert (=> b!5592409 m!6572248))

(assert (=> b!5592409 m!6572068))

(declare-fun m!6572250 () Bool)

(assert (=> b!5592409 m!6572250))

(assert (=> b!5591421 d!1767661))

(declare-fun bs!1293124 () Bool)

(declare-fun d!1767663 () Bool)

(assert (= bs!1293124 (and d!1767663 b!5590764)))

(declare-fun lambda!300196 () Int)

(assert (=> bs!1293124 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300196 lambda!300076))))

(declare-fun bs!1293125 () Bool)

(assert (= bs!1293125 (and d!1767663 d!1767585)))

(assert (=> bs!1293125 (= lambda!300196 lambda!300183)))

(declare-fun bs!1293126 () Bool)

(assert (= bs!1293126 (and d!1767663 d!1767593)))

(assert (=> bs!1293126 (= (= (head!11927 (t!376315 s!2326)) (head!11927 s!2326)) (= lambda!300196 lambda!300185))))

(declare-fun bs!1293127 () Bool)

(assert (= bs!1293127 (and d!1767663 d!1767599)))

(assert (=> bs!1293127 (= lambda!300196 lambda!300186)))

(declare-fun bs!1293128 () Bool)

(assert (= bs!1293128 (and d!1767663 d!1767559)))

(assert (=> bs!1293128 (= lambda!300196 lambda!300180)))

(declare-fun bs!1293129 () Bool)

(assert (= bs!1293129 (and d!1767663 d!1767647)))

(assert (=> bs!1293129 (= lambda!300196 lambda!300191)))

(assert (=> d!1767663 true))

(assert (=> d!1767663 (= (derivationStepZipper!1678 ((_ map or) lt!2255521 lt!2255546) (head!11927 (t!376315 s!2326))) (flatMap!1192 ((_ map or) lt!2255521 lt!2255546) lambda!300196))))

(declare-fun bs!1293130 () Bool)

(assert (= bs!1293130 d!1767663))

(declare-fun m!6572252 () Bool)

(assert (=> bs!1293130 m!6572252))

(assert (=> b!5591421 d!1767663))

(assert (=> b!5591421 d!1767561))

(assert (=> b!5591421 d!1767563))

(declare-fun b!5592421 () Bool)

(declare-fun e!3450072 () Bool)

(declare-fun lt!2255675 () List!63037)

(assert (=> b!5592421 (= e!3450072 (or (not (= (_2!35979 (get!21665 lt!2255619)) Nil!62913)) (= lt!2255675 (_1!35979 (get!21665 lt!2255619)))))))

(declare-fun b!5592419 () Bool)

(declare-fun e!3450073 () List!63037)

(assert (=> b!5592419 (= e!3450073 (Cons!62913 (h!69361 (_1!35979 (get!21665 lt!2255619))) (++!13808 (t!376315 (_1!35979 (get!21665 lt!2255619))) (_2!35979 (get!21665 lt!2255619)))))))

(declare-fun d!1767665 () Bool)

(assert (=> d!1767665 e!3450072))

(declare-fun res!2372553 () Bool)

(assert (=> d!1767665 (=> (not res!2372553) (not e!3450072))))

(declare-fun content!11354 (List!63037) (InoxSet C!31428))

(assert (=> d!1767665 (= res!2372553 (= (content!11354 lt!2255675) ((_ map or) (content!11354 (_1!35979 (get!21665 lt!2255619))) (content!11354 (_2!35979 (get!21665 lt!2255619))))))))

(assert (=> d!1767665 (= lt!2255675 e!3450073)))

(declare-fun c!980104 () Bool)

(assert (=> d!1767665 (= c!980104 ((_ is Nil!62913) (_1!35979 (get!21665 lt!2255619))))))

(assert (=> d!1767665 (= (++!13808 (_1!35979 (get!21665 lt!2255619)) (_2!35979 (get!21665 lt!2255619))) lt!2255675)))

(declare-fun b!5592418 () Bool)

(assert (=> b!5592418 (= e!3450073 (_2!35979 (get!21665 lt!2255619)))))

(declare-fun b!5592420 () Bool)

(declare-fun res!2372552 () Bool)

(assert (=> b!5592420 (=> (not res!2372552) (not e!3450072))))

(declare-fun size!39965 (List!63037) Int)

(assert (=> b!5592420 (= res!2372552 (= (size!39965 lt!2255675) (+ (size!39965 (_1!35979 (get!21665 lt!2255619))) (size!39965 (_2!35979 (get!21665 lt!2255619))))))))

(assert (= (and d!1767665 c!980104) b!5592418))

(assert (= (and d!1767665 (not c!980104)) b!5592419))

(assert (= (and d!1767665 res!2372553) b!5592420))

(assert (= (and b!5592420 res!2372552) b!5592421))

(declare-fun m!6572254 () Bool)

(assert (=> b!5592419 m!6572254))

(declare-fun m!6572256 () Bool)

(assert (=> d!1767665 m!6572256))

(declare-fun m!6572258 () Bool)

(assert (=> d!1767665 m!6572258))

(declare-fun m!6572260 () Bool)

(assert (=> d!1767665 m!6572260))

(declare-fun m!6572262 () Bool)

(assert (=> b!5592420 m!6572262))

(declare-fun m!6572264 () Bool)

(assert (=> b!5592420 m!6572264))

(declare-fun m!6572266 () Bool)

(assert (=> b!5592420 m!6572266))

(assert (=> b!5591331 d!1767665))

(assert (=> b!5591331 d!1767617))

(declare-fun d!1767667 () Bool)

(assert (=> d!1767667 (= ($colon$colon!1642 (exprs!5463 lt!2255535) (ite (or c!979788 c!979790) (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (h!69360 (exprs!5463 (h!69362 zl!343))))) (Cons!62912 (ite (or c!979788 c!979790) (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (h!69360 (exprs!5463 (h!69362 zl!343)))) (exprs!5463 lt!2255535)))))

(assert (=> bm!418815 d!1767667))

(assert (=> d!1767219 d!1767549))

(declare-fun bm!419039 () Bool)

(declare-fun call!419045 () (InoxSet Context!9926))

(declare-fun call!419046 () (InoxSet Context!9926))

(assert (=> bm!419039 (= call!419045 call!419046)))

(declare-fun d!1767669 () Bool)

(declare-fun c!980106 () Bool)

(assert (=> d!1767669 (= c!980106 (and ((_ is ElementMatch!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))) (= (c!979652 (h!69360 (exprs!5463 (h!69362 zl!343)))) (h!69361 s!2326))))))

(declare-fun e!3450074 () (InoxSet Context!9926))

(assert (=> d!1767669 (= (derivationStepZipperDown!921 (h!69360 (exprs!5463 (h!69362 zl!343))) (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) (h!69361 s!2326)) e!3450074)))

(declare-fun b!5592422 () Bool)

(declare-fun e!3450077 () (InoxSet Context!9926))

(assert (=> b!5592422 (= e!3450077 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592423 () Bool)

(declare-fun e!3450078 () (InoxSet Context!9926))

(assert (=> b!5592423 (= e!3450074 e!3450078)))

(declare-fun c!980105 () Bool)

(assert (=> b!5592423 (= c!980105 ((_ is Union!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592424 () Bool)

(assert (=> b!5592424 (= e!3450074 (store ((as const (Array Context!9926 Bool)) false) (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) true))))

(declare-fun b!5592425 () Bool)

(declare-fun e!3450079 () (InoxSet Context!9926))

(assert (=> b!5592425 (= e!3450079 call!419045)))

(declare-fun call!419049 () List!63036)

(declare-fun bm!419040 () Bool)

(declare-fun c!980107 () Bool)

(declare-fun c!980109 () Bool)

(assert (=> bm!419040 (= call!419049 ($colon$colon!1642 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343))))) (ite (or c!980107 c!980109) (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (h!69360 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun b!5592426 () Bool)

(assert (=> b!5592426 (= e!3450077 call!419045)))

(declare-fun bm!419041 () Bool)

(declare-fun call!419044 () List!63036)

(assert (=> bm!419041 (= call!419044 call!419049)))

(declare-fun bm!419042 () Bool)

(declare-fun call!419047 () (InoxSet Context!9926))

(assert (=> bm!419042 (= call!419046 call!419047)))

(declare-fun b!5592427 () Bool)

(declare-fun e!3450075 () Bool)

(assert (=> b!5592427 (= c!980107 e!3450075)))

(declare-fun res!2372554 () Bool)

(assert (=> b!5592427 (=> (not res!2372554) (not e!3450075))))

(assert (=> b!5592427 (= res!2372554 ((_ is Concat!24424) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun e!3450076 () (InoxSet Context!9926))

(assert (=> b!5592427 (= e!3450078 e!3450076)))

(declare-fun b!5592428 () Bool)

(declare-fun c!980108 () Bool)

(assert (=> b!5592428 (= c!980108 ((_ is Star!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> b!5592428 (= e!3450079 e!3450077)))

(declare-fun bm!419043 () Bool)

(assert (=> bm!419043 (= call!419047 (derivationStepZipperDown!921 (ite c!980105 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!980107 (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (ite c!980109 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))) (reg!15908 (h!69360 (exprs!5463 (h!69362 zl!343))))))) (ite (or c!980105 c!980107) (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) (Context!9927 call!419044)) (h!69361 s!2326)))))

(declare-fun b!5592429 () Bool)

(declare-fun call!419048 () (InoxSet Context!9926))

(assert (=> b!5592429 (= e!3450078 ((_ map or) call!419047 call!419048))))

(declare-fun b!5592430 () Bool)

(assert (=> b!5592430 (= e!3450076 e!3450079)))

(assert (=> b!5592430 (= c!980109 ((_ is Concat!24424) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun bm!419044 () Bool)

(assert (=> bm!419044 (= call!419048 (derivationStepZipperDown!921 (ite c!980105 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))) (ite c!980105 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) (Context!9927 call!419049)) (h!69361 s!2326)))))

(declare-fun b!5592431 () Bool)

(assert (=> b!5592431 (= e!3450076 ((_ map or) call!419048 call!419046))))

(declare-fun b!5592432 () Bool)

(assert (=> b!5592432 (= e!3450075 (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))))

(assert (= (and d!1767669 c!980106) b!5592424))

(assert (= (and d!1767669 (not c!980106)) b!5592423))

(assert (= (and b!5592423 c!980105) b!5592429))

(assert (= (and b!5592423 (not c!980105)) b!5592427))

(assert (= (and b!5592427 res!2372554) b!5592432))

(assert (= (and b!5592427 c!980107) b!5592431))

(assert (= (and b!5592427 (not c!980107)) b!5592430))

(assert (= (and b!5592430 c!980109) b!5592425))

(assert (= (and b!5592430 (not c!980109)) b!5592428))

(assert (= (and b!5592428 c!980108) b!5592426))

(assert (= (and b!5592428 (not c!980108)) b!5592422))

(assert (= (or b!5592425 b!5592426) bm!419041))

(assert (= (or b!5592425 b!5592426) bm!419039))

(assert (= (or b!5592431 bm!419041) bm!419040))

(assert (= (or b!5592431 bm!419039) bm!419042))

(assert (= (or b!5592429 b!5592431) bm!419044))

(assert (= (or b!5592429 bm!419042) bm!419043))

(assert (=> b!5592432 m!6571222))

(declare-fun m!6572268 () Bool)

(assert (=> b!5592424 m!6572268))

(declare-fun m!6572270 () Bool)

(assert (=> bm!419043 m!6572270))

(declare-fun m!6572272 () Bool)

(assert (=> bm!419044 m!6572272))

(declare-fun m!6572274 () Bool)

(assert (=> bm!419040 m!6572274))

(assert (=> bm!418801 d!1767669))

(declare-fun b!5592433 () Bool)

(declare-fun e!3450086 () Bool)

(assert (=> b!5592433 (= e!3450086 (not (= (head!11927 s!2326) (c!979652 (regTwo!31670 r!7292)))))))

(declare-fun b!5592434 () Bool)

(declare-fun res!2372556 () Bool)

(declare-fun e!3450084 () Bool)

(assert (=> b!5592434 (=> res!2372556 e!3450084)))

(declare-fun e!3450083 () Bool)

(assert (=> b!5592434 (= res!2372556 e!3450083)))

(declare-fun res!2372557 () Bool)

(assert (=> b!5592434 (=> (not res!2372557) (not e!3450083))))

(declare-fun lt!2255676 () Bool)

(assert (=> b!5592434 (= res!2372557 lt!2255676)))

(declare-fun b!5592435 () Bool)

(declare-fun e!3450080 () Bool)

(assert (=> b!5592435 (= e!3450080 (not lt!2255676))))

(declare-fun b!5592436 () Bool)

(declare-fun e!3450082 () Bool)

(assert (=> b!5592436 (= e!3450082 (matchR!7764 (derivativeStep!4427 (regTwo!31670 r!7292) (head!11927 s!2326)) (tail!11022 s!2326)))))

(declare-fun b!5592437 () Bool)

(declare-fun res!2372561 () Bool)

(assert (=> b!5592437 (=> res!2372561 e!3450084)))

(assert (=> b!5592437 (= res!2372561 (not ((_ is ElementMatch!15579) (regTwo!31670 r!7292))))))

(assert (=> b!5592437 (= e!3450080 e!3450084)))

(declare-fun b!5592438 () Bool)

(declare-fun e!3450085 () Bool)

(assert (=> b!5592438 (= e!3450085 e!3450086)))

(declare-fun res!2372558 () Bool)

(assert (=> b!5592438 (=> res!2372558 e!3450086)))

(declare-fun call!419050 () Bool)

(assert (=> b!5592438 (= res!2372558 call!419050)))

(declare-fun b!5592439 () Bool)

(declare-fun res!2372555 () Bool)

(assert (=> b!5592439 (=> res!2372555 e!3450086)))

(assert (=> b!5592439 (= res!2372555 (not (isEmpty!34734 (tail!11022 s!2326))))))

(declare-fun b!5592440 () Bool)

(declare-fun e!3450081 () Bool)

(assert (=> b!5592440 (= e!3450081 (= lt!2255676 call!419050))))

(declare-fun b!5592441 () Bool)

(declare-fun res!2372559 () Bool)

(assert (=> b!5592441 (=> (not res!2372559) (not e!3450083))))

(assert (=> b!5592441 (= res!2372559 (isEmpty!34734 (tail!11022 s!2326)))))

(declare-fun b!5592442 () Bool)

(assert (=> b!5592442 (= e!3450082 (nullable!5611 (regTwo!31670 r!7292)))))

(declare-fun b!5592443 () Bool)

(assert (=> b!5592443 (= e!3450083 (= (head!11927 s!2326) (c!979652 (regTwo!31670 r!7292))))))

(declare-fun bm!419045 () Bool)

(assert (=> bm!419045 (= call!419050 (isEmpty!34734 s!2326))))

(declare-fun b!5592444 () Bool)

(assert (=> b!5592444 (= e!3450081 e!3450080)))

(declare-fun c!980110 () Bool)

(assert (=> b!5592444 (= c!980110 ((_ is EmptyLang!15579) (regTwo!31670 r!7292)))))

(declare-fun b!5592445 () Bool)

(assert (=> b!5592445 (= e!3450084 e!3450085)))

(declare-fun res!2372560 () Bool)

(assert (=> b!5592445 (=> (not res!2372560) (not e!3450085))))

(assert (=> b!5592445 (= res!2372560 (not lt!2255676))))

(declare-fun d!1767671 () Bool)

(assert (=> d!1767671 e!3450081))

(declare-fun c!980111 () Bool)

(assert (=> d!1767671 (= c!980111 ((_ is EmptyExpr!15579) (regTwo!31670 r!7292)))))

(assert (=> d!1767671 (= lt!2255676 e!3450082)))

(declare-fun c!980112 () Bool)

(assert (=> d!1767671 (= c!980112 (isEmpty!34734 s!2326))))

(assert (=> d!1767671 (validRegex!7315 (regTwo!31670 r!7292))))

(assert (=> d!1767671 (= (matchR!7764 (regTwo!31670 r!7292) s!2326) lt!2255676)))

(declare-fun b!5592446 () Bool)

(declare-fun res!2372562 () Bool)

(assert (=> b!5592446 (=> (not res!2372562) (not e!3450083))))

(assert (=> b!5592446 (= res!2372562 (not call!419050))))

(assert (= (and d!1767671 c!980112) b!5592442))

(assert (= (and d!1767671 (not c!980112)) b!5592436))

(assert (= (and d!1767671 c!980111) b!5592440))

(assert (= (and d!1767671 (not c!980111)) b!5592444))

(assert (= (and b!5592444 c!980110) b!5592435))

(assert (= (and b!5592444 (not c!980110)) b!5592437))

(assert (= (and b!5592437 (not res!2372561)) b!5592434))

(assert (= (and b!5592434 res!2372557) b!5592446))

(assert (= (and b!5592446 res!2372562) b!5592441))

(assert (= (and b!5592441 res!2372559) b!5592443))

(assert (= (and b!5592434 (not res!2372556)) b!5592445))

(assert (= (and b!5592445 res!2372560) b!5592438))

(assert (= (and b!5592438 (not res!2372558)) b!5592439))

(assert (= (and b!5592439 (not res!2372555)) b!5592433))

(assert (= (or b!5592440 b!5592438 b!5592446) bm!419045))

(assert (=> b!5592433 m!6571338))

(assert (=> b!5592436 m!6571338))

(assert (=> b!5592436 m!6571338))

(declare-fun m!6572276 () Bool)

(assert (=> b!5592436 m!6572276))

(assert (=> b!5592436 m!6571342))

(assert (=> b!5592436 m!6572276))

(assert (=> b!5592436 m!6571342))

(declare-fun m!6572278 () Bool)

(assert (=> b!5592436 m!6572278))

(assert (=> bm!419045 m!6571334))

(assert (=> b!5592443 m!6571338))

(assert (=> b!5592439 m!6571342))

(assert (=> b!5592439 m!6571342))

(assert (=> b!5592439 m!6571436))

(assert (=> d!1767671 m!6571334))

(assert (=> d!1767671 m!6572176))

(assert (=> b!5592442 m!6572178))

(assert (=> b!5592441 m!6571342))

(assert (=> b!5592441 m!6571342))

(assert (=> b!5592441 m!6571436))

(assert (=> b!5591327 d!1767671))

(declare-fun b!5592447 () Bool)

(declare-fun res!2372567 () Bool)

(declare-fun e!3450089 () Bool)

(assert (=> b!5592447 (=> (not res!2372567) (not e!3450089))))

(declare-fun call!419052 () Bool)

(assert (=> b!5592447 (= res!2372567 call!419052)))

(declare-fun e!3450087 () Bool)

(assert (=> b!5592447 (= e!3450087 e!3450089)))

(declare-fun b!5592448 () Bool)

(declare-fun e!3450092 () Bool)

(declare-fun call!419051 () Bool)

(assert (=> b!5592448 (= e!3450092 call!419051)))

(declare-fun bm!419046 () Bool)

(assert (=> bm!419046 (= call!419052 call!419051)))

(declare-fun b!5592449 () Bool)

(declare-fun e!3450090 () Bool)

(declare-fun e!3450093 () Bool)

(assert (=> b!5592449 (= e!3450090 e!3450093)))

(declare-fun c!980113 () Bool)

(assert (=> b!5592449 (= c!980113 ((_ is Star!15579) lt!2255638))))

(declare-fun b!5592451 () Bool)

(declare-fun res!2372563 () Bool)

(declare-fun e!3450088 () Bool)

(assert (=> b!5592451 (=> res!2372563 e!3450088)))

(assert (=> b!5592451 (= res!2372563 (not ((_ is Concat!24424) lt!2255638)))))

(assert (=> b!5592451 (= e!3450087 e!3450088)))

(declare-fun b!5592452 () Bool)

(declare-fun call!419053 () Bool)

(assert (=> b!5592452 (= e!3450089 call!419053)))

(declare-fun b!5592453 () Bool)

(declare-fun e!3450091 () Bool)

(assert (=> b!5592453 (= e!3450091 call!419053)))

(declare-fun bm!419047 () Bool)

(declare-fun c!980114 () Bool)

(assert (=> bm!419047 (= call!419053 (validRegex!7315 (ite c!980114 (regTwo!31671 lt!2255638) (regTwo!31670 lt!2255638))))))

(declare-fun b!5592454 () Bool)

(assert (=> b!5592454 (= e!3450088 e!3450091)))

(declare-fun res!2372564 () Bool)

(assert (=> b!5592454 (=> (not res!2372564) (not e!3450091))))

(assert (=> b!5592454 (= res!2372564 call!419052)))

(declare-fun b!5592455 () Bool)

(assert (=> b!5592455 (= e!3450093 e!3450087)))

(assert (=> b!5592455 (= c!980114 ((_ is Union!15579) lt!2255638))))

(declare-fun bm!419048 () Bool)

(assert (=> bm!419048 (= call!419051 (validRegex!7315 (ite c!980113 (reg!15908 lt!2255638) (ite c!980114 (regOne!31671 lt!2255638) (regOne!31670 lt!2255638)))))))

(declare-fun d!1767673 () Bool)

(declare-fun res!2372565 () Bool)

(assert (=> d!1767673 (=> res!2372565 e!3450090)))

(assert (=> d!1767673 (= res!2372565 ((_ is ElementMatch!15579) lt!2255638))))

(assert (=> d!1767673 (= (validRegex!7315 lt!2255638) e!3450090)))

(declare-fun b!5592450 () Bool)

(assert (=> b!5592450 (= e!3450093 e!3450092)))

(declare-fun res!2372566 () Bool)

(assert (=> b!5592450 (= res!2372566 (not (nullable!5611 (reg!15908 lt!2255638))))))

(assert (=> b!5592450 (=> (not res!2372566) (not e!3450092))))

(assert (= (and d!1767673 (not res!2372565)) b!5592449))

(assert (= (and b!5592449 c!980113) b!5592450))

(assert (= (and b!5592449 (not c!980113)) b!5592455))

(assert (= (and b!5592450 res!2372566) b!5592448))

(assert (= (and b!5592455 c!980114) b!5592447))

(assert (= (and b!5592455 (not c!980114)) b!5592451))

(assert (= (and b!5592447 res!2372567) b!5592452))

(assert (= (and b!5592451 (not res!2372563)) b!5592454))

(assert (= (and b!5592454 res!2372564) b!5592453))

(assert (= (or b!5592452 b!5592453) bm!419047))

(assert (= (or b!5592447 b!5592454) bm!419046))

(assert (= (or b!5592448 bm!419046) bm!419048))

(declare-fun m!6572280 () Bool)

(assert (=> bm!419047 m!6572280))

(declare-fun m!6572282 () Bool)

(assert (=> bm!419048 m!6572282))

(declare-fun m!6572284 () Bool)

(assert (=> b!5592450 m!6572284))

(assert (=> d!1767229 d!1767673))

(assert (=> d!1767229 d!1767169))

(assert (=> d!1767229 d!1767171))

(assert (=> d!1767137 d!1767549))

(declare-fun bs!1293131 () Bool)

(declare-fun b!5592458 () Bool)

(assert (= bs!1293131 (and b!5592458 b!5590791)))

(declare-fun lambda!300197 () Int)

(assert (=> bs!1293131 (not (= lambda!300197 lambda!300075))))

(declare-fun bs!1293132 () Bool)

(assert (= bs!1293132 (and b!5592458 d!1767181)))

(assert (=> bs!1293132 (not (= lambda!300197 lambda!300119))))

(declare-fun bs!1293133 () Bool)

(assert (= bs!1293133 (and b!5592458 d!1767179)))

(assert (=> bs!1293133 (not (= lambda!300197 lambda!300113))))

(assert (=> bs!1293131 (not (= lambda!300197 lambda!300074))))

(declare-fun bs!1293134 () Bool)

(assert (= bs!1293134 (and b!5592458 b!5591481)))

(assert (=> bs!1293134 (= (and (= (reg!15908 (regOne!31671 r!7292)) (reg!15908 r!7292)) (= (regOne!31671 r!7292) r!7292)) (= lambda!300197 lambda!300131))))

(assert (=> bs!1293132 (not (= lambda!300197 lambda!300118))))

(declare-fun bs!1293135 () Bool)

(assert (= bs!1293135 (and b!5592458 b!5591487)))

(assert (=> bs!1293135 (not (= lambda!300197 lambda!300132))))

(declare-fun bs!1293136 () Bool)

(assert (= bs!1293136 (and b!5592458 d!1767653)))

(assert (=> bs!1293136 (not (= lambda!300197 lambda!300194))))

(assert (=> b!5592458 true))

(assert (=> b!5592458 true))

(declare-fun bs!1293137 () Bool)

(declare-fun b!5592464 () Bool)

(assert (= bs!1293137 (and b!5592464 b!5590791)))

(declare-fun lambda!300198 () Int)

(assert (=> bs!1293137 (= (and (= (regOne!31670 (regOne!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regOne!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300198 lambda!300075))))

(declare-fun bs!1293138 () Bool)

(assert (= bs!1293138 (and b!5592464 b!5592458)))

(assert (=> bs!1293138 (not (= lambda!300198 lambda!300197))))

(declare-fun bs!1293139 () Bool)

(assert (= bs!1293139 (and b!5592464 d!1767181)))

(assert (=> bs!1293139 (= (and (= (regOne!31670 (regOne!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regOne!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300198 lambda!300119))))

(declare-fun bs!1293140 () Bool)

(assert (= bs!1293140 (and b!5592464 d!1767179)))

(assert (=> bs!1293140 (not (= lambda!300198 lambda!300113))))

(assert (=> bs!1293137 (not (= lambda!300198 lambda!300074))))

(declare-fun bs!1293141 () Bool)

(assert (= bs!1293141 (and b!5592464 b!5591481)))

(assert (=> bs!1293141 (not (= lambda!300198 lambda!300131))))

(assert (=> bs!1293139 (not (= lambda!300198 lambda!300118))))

(declare-fun bs!1293142 () Bool)

(assert (= bs!1293142 (and b!5592464 b!5591487)))

(assert (=> bs!1293142 (= (and (= (regOne!31670 (regOne!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regOne!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300198 lambda!300132))))

(declare-fun bs!1293143 () Bool)

(assert (= bs!1293143 (and b!5592464 d!1767653)))

(assert (=> bs!1293143 (not (= lambda!300198 lambda!300194))))

(assert (=> b!5592464 true))

(assert (=> b!5592464 true))

(declare-fun call!419054 () Bool)

(declare-fun c!980115 () Bool)

(declare-fun bm!419049 () Bool)

(assert (=> bm!419049 (= call!419054 (Exists!2679 (ite c!980115 lambda!300197 lambda!300198)))))

(declare-fun b!5592456 () Bool)

(declare-fun e!3450099 () Bool)

(declare-fun e!3450098 () Bool)

(assert (=> b!5592456 (= e!3450099 e!3450098)))

(declare-fun res!2372568 () Bool)

(assert (=> b!5592456 (= res!2372568 (not ((_ is EmptyLang!15579) (regOne!31671 r!7292))))))

(assert (=> b!5592456 (=> (not res!2372568) (not e!3450098))))

(declare-fun b!5592457 () Bool)

(declare-fun res!2372570 () Bool)

(declare-fun e!3450097 () Bool)

(assert (=> b!5592457 (=> res!2372570 e!3450097)))

(declare-fun call!419055 () Bool)

(assert (=> b!5592457 (= res!2372570 call!419055)))

(declare-fun e!3450096 () Bool)

(assert (=> b!5592457 (= e!3450096 e!3450097)))

(assert (=> b!5592458 (= e!3450097 call!419054)))

(declare-fun bm!419050 () Bool)

(assert (=> bm!419050 (= call!419055 (isEmpty!34734 s!2326))))

(declare-fun b!5592460 () Bool)

(declare-fun e!3450094 () Bool)

(declare-fun e!3450095 () Bool)

(assert (=> b!5592460 (= e!3450094 e!3450095)))

(declare-fun res!2372569 () Bool)

(assert (=> b!5592460 (= res!2372569 (matchRSpec!2682 (regOne!31671 (regOne!31671 r!7292)) s!2326))))

(assert (=> b!5592460 (=> res!2372569 e!3450095)))

(declare-fun b!5592461 () Bool)

(assert (=> b!5592461 (= e!3450094 e!3450096)))

(assert (=> b!5592461 (= c!980115 ((_ is Star!15579) (regOne!31671 r!7292)))))

(declare-fun b!5592462 () Bool)

(declare-fun c!980117 () Bool)

(assert (=> b!5592462 (= c!980117 ((_ is ElementMatch!15579) (regOne!31671 r!7292)))))

(declare-fun e!3450100 () Bool)

(assert (=> b!5592462 (= e!3450098 e!3450100)))

(declare-fun b!5592463 () Bool)

(assert (=> b!5592463 (= e!3450099 call!419055)))

(assert (=> b!5592464 (= e!3450096 call!419054)))

(declare-fun b!5592459 () Bool)

(declare-fun c!980116 () Bool)

(assert (=> b!5592459 (= c!980116 ((_ is Union!15579) (regOne!31671 r!7292)))))

(assert (=> b!5592459 (= e!3450100 e!3450094)))

(declare-fun d!1767675 () Bool)

(declare-fun c!980118 () Bool)

(assert (=> d!1767675 (= c!980118 ((_ is EmptyExpr!15579) (regOne!31671 r!7292)))))

(assert (=> d!1767675 (= (matchRSpec!2682 (regOne!31671 r!7292) s!2326) e!3450099)))

(declare-fun b!5592465 () Bool)

(assert (=> b!5592465 (= e!3450095 (matchRSpec!2682 (regTwo!31671 (regOne!31671 r!7292)) s!2326))))

(declare-fun b!5592466 () Bool)

(assert (=> b!5592466 (= e!3450100 (= s!2326 (Cons!62913 (c!979652 (regOne!31671 r!7292)) Nil!62913)))))

(assert (= (and d!1767675 c!980118) b!5592463))

(assert (= (and d!1767675 (not c!980118)) b!5592456))

(assert (= (and b!5592456 res!2372568) b!5592462))

(assert (= (and b!5592462 c!980117) b!5592466))

(assert (= (and b!5592462 (not c!980117)) b!5592459))

(assert (= (and b!5592459 c!980116) b!5592460))

(assert (= (and b!5592459 (not c!980116)) b!5592461))

(assert (= (and b!5592460 (not res!2372569)) b!5592465))

(assert (= (and b!5592461 c!980115) b!5592457))

(assert (= (and b!5592461 (not c!980115)) b!5592464))

(assert (= (and b!5592457 (not res!2372570)) b!5592458))

(assert (= (or b!5592458 b!5592464) bm!419049))

(assert (= (or b!5592463 b!5592457) bm!419050))

(declare-fun m!6572286 () Bool)

(assert (=> bm!419049 m!6572286))

(assert (=> bm!419050 m!6571334))

(declare-fun m!6572288 () Bool)

(assert (=> b!5592460 m!6572288))

(declare-fun m!6572290 () Bool)

(assert (=> b!5592465 m!6572290))

(assert (=> b!5591483 d!1767675))

(declare-fun d!1767677 () Bool)

(declare-fun c!980119 () Bool)

(assert (=> d!1767677 (= c!980119 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3450101 () Bool)

(assert (=> d!1767677 (= (matchZipper!1717 (derivationStepZipper!1678 lt!2255543 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3450101)))

(declare-fun b!5592467 () Bool)

(assert (=> b!5592467 (= e!3450101 (nullableZipper!1574 (derivationStepZipper!1678 lt!2255543 (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592468 () Bool)

(assert (=> b!5592468 (= e!3450101 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 lt!2255543 (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767677 c!980119) b!5592467))

(assert (= (and d!1767677 (not c!980119)) b!5592468))

(assert (=> d!1767677 m!6571176))

(assert (=> d!1767677 m!6572060))

(assert (=> b!5592467 m!6571194))

(declare-fun m!6572292 () Bool)

(assert (=> b!5592467 m!6572292))

(assert (=> b!5592468 m!6571176))

(assert (=> b!5592468 m!6572064))

(assert (=> b!5592468 m!6571194))

(assert (=> b!5592468 m!6572064))

(declare-fun m!6572294 () Bool)

(assert (=> b!5592468 m!6572294))

(assert (=> b!5592468 m!6571176))

(assert (=> b!5592468 m!6572068))

(assert (=> b!5592468 m!6572294))

(assert (=> b!5592468 m!6572068))

(declare-fun m!6572296 () Bool)

(assert (=> b!5592468 m!6572296))

(assert (=> b!5591205 d!1767677))

(declare-fun bs!1293144 () Bool)

(declare-fun d!1767679 () Bool)

(assert (= bs!1293144 (and d!1767679 b!5590764)))

(declare-fun lambda!300199 () Int)

(assert (=> bs!1293144 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300199 lambda!300076))))

(declare-fun bs!1293145 () Bool)

(assert (= bs!1293145 (and d!1767679 d!1767663)))

(assert (=> bs!1293145 (= lambda!300199 lambda!300196)))

(declare-fun bs!1293146 () Bool)

(assert (= bs!1293146 (and d!1767679 d!1767585)))

(assert (=> bs!1293146 (= lambda!300199 lambda!300183)))

(declare-fun bs!1293147 () Bool)

(assert (= bs!1293147 (and d!1767679 d!1767593)))

(assert (=> bs!1293147 (= (= (head!11927 (t!376315 s!2326)) (head!11927 s!2326)) (= lambda!300199 lambda!300185))))

(declare-fun bs!1293148 () Bool)

(assert (= bs!1293148 (and d!1767679 d!1767599)))

(assert (=> bs!1293148 (= lambda!300199 lambda!300186)))

(declare-fun bs!1293149 () Bool)

(assert (= bs!1293149 (and d!1767679 d!1767559)))

(assert (=> bs!1293149 (= lambda!300199 lambda!300180)))

(declare-fun bs!1293150 () Bool)

(assert (= bs!1293150 (and d!1767679 d!1767647)))

(assert (=> bs!1293150 (= lambda!300199 lambda!300191)))

(assert (=> d!1767679 true))

(assert (=> d!1767679 (= (derivationStepZipper!1678 lt!2255543 (head!11927 (t!376315 s!2326))) (flatMap!1192 lt!2255543 lambda!300199))))

(declare-fun bs!1293151 () Bool)

(assert (= bs!1293151 d!1767679))

(declare-fun m!6572298 () Bool)

(assert (=> bs!1293151 m!6572298))

(assert (=> b!5591205 d!1767679))

(assert (=> b!5591205 d!1767561))

(assert (=> b!5591205 d!1767563))

(assert (=> b!5591526 d!1767523))

(assert (=> b!5591526 d!1767525))

(declare-fun d!1767681 () Bool)

(assert (=> d!1767681 true))

(assert (=> d!1767681 true))

(declare-fun res!2372573 () Bool)

(assert (=> d!1767681 (= (choose!42403 lambda!300075) res!2372573)))

(assert (=> d!1767173 d!1767681))

(declare-fun bm!419051 () Bool)

(declare-fun call!419057 () (InoxSet Context!9926))

(declare-fun call!419058 () (InoxSet Context!9926))

(assert (=> bm!419051 (= call!419057 call!419058)))

(declare-fun d!1767683 () Bool)

(declare-fun c!980121 () Bool)

(assert (=> d!1767683 (= c!980121 (and ((_ is ElementMatch!15579) (h!69360 (exprs!5463 lt!2255544))) (= (c!979652 (h!69360 (exprs!5463 lt!2255544))) (h!69361 s!2326))))))

(declare-fun e!3450102 () (InoxSet Context!9926))

(assert (=> d!1767683 (= (derivationStepZipperDown!921 (h!69360 (exprs!5463 lt!2255544)) (Context!9927 (t!376314 (exprs!5463 lt!2255544))) (h!69361 s!2326)) e!3450102)))

(declare-fun b!5592469 () Bool)

(declare-fun e!3450105 () (InoxSet Context!9926))

(assert (=> b!5592469 (= e!3450105 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592470 () Bool)

(declare-fun e!3450106 () (InoxSet Context!9926))

(assert (=> b!5592470 (= e!3450102 e!3450106)))

(declare-fun c!980120 () Bool)

(assert (=> b!5592470 (= c!980120 ((_ is Union!15579) (h!69360 (exprs!5463 lt!2255544))))))

(declare-fun b!5592471 () Bool)

(assert (=> b!5592471 (= e!3450102 (store ((as const (Array Context!9926 Bool)) false) (Context!9927 (t!376314 (exprs!5463 lt!2255544))) true))))

(declare-fun b!5592472 () Bool)

(declare-fun e!3450107 () (InoxSet Context!9926))

(assert (=> b!5592472 (= e!3450107 call!419057)))

(declare-fun c!980122 () Bool)

(declare-fun c!980124 () Bool)

(declare-fun bm!419052 () Bool)

(declare-fun call!419061 () List!63036)

(assert (=> bm!419052 (= call!419061 ($colon$colon!1642 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544)))) (ite (or c!980122 c!980124) (regTwo!31670 (h!69360 (exprs!5463 lt!2255544))) (h!69360 (exprs!5463 lt!2255544)))))))

(declare-fun b!5592473 () Bool)

(assert (=> b!5592473 (= e!3450105 call!419057)))

(declare-fun bm!419053 () Bool)

(declare-fun call!419056 () List!63036)

(assert (=> bm!419053 (= call!419056 call!419061)))

(declare-fun bm!419054 () Bool)

(declare-fun call!419059 () (InoxSet Context!9926))

(assert (=> bm!419054 (= call!419058 call!419059)))

(declare-fun b!5592474 () Bool)

(declare-fun e!3450103 () Bool)

(assert (=> b!5592474 (= c!980122 e!3450103)))

(declare-fun res!2372574 () Bool)

(assert (=> b!5592474 (=> (not res!2372574) (not e!3450103))))

(assert (=> b!5592474 (= res!2372574 ((_ is Concat!24424) (h!69360 (exprs!5463 lt!2255544))))))

(declare-fun e!3450104 () (InoxSet Context!9926))

(assert (=> b!5592474 (= e!3450106 e!3450104)))

(declare-fun b!5592475 () Bool)

(declare-fun c!980123 () Bool)

(assert (=> b!5592475 (= c!980123 ((_ is Star!15579) (h!69360 (exprs!5463 lt!2255544))))))

(assert (=> b!5592475 (= e!3450107 e!3450105)))

(declare-fun bm!419055 () Bool)

(assert (=> bm!419055 (= call!419059 (derivationStepZipperDown!921 (ite c!980120 (regOne!31671 (h!69360 (exprs!5463 lt!2255544))) (ite c!980122 (regTwo!31670 (h!69360 (exprs!5463 lt!2255544))) (ite c!980124 (regOne!31670 (h!69360 (exprs!5463 lt!2255544))) (reg!15908 (h!69360 (exprs!5463 lt!2255544)))))) (ite (or c!980120 c!980122) (Context!9927 (t!376314 (exprs!5463 lt!2255544))) (Context!9927 call!419056)) (h!69361 s!2326)))))

(declare-fun b!5592476 () Bool)

(declare-fun call!419060 () (InoxSet Context!9926))

(assert (=> b!5592476 (= e!3450106 ((_ map or) call!419059 call!419060))))

(declare-fun b!5592477 () Bool)

(assert (=> b!5592477 (= e!3450104 e!3450107)))

(assert (=> b!5592477 (= c!980124 ((_ is Concat!24424) (h!69360 (exprs!5463 lt!2255544))))))

(declare-fun bm!419056 () Bool)

(assert (=> bm!419056 (= call!419060 (derivationStepZipperDown!921 (ite c!980120 (regTwo!31671 (h!69360 (exprs!5463 lt!2255544))) (regOne!31670 (h!69360 (exprs!5463 lt!2255544)))) (ite c!980120 (Context!9927 (t!376314 (exprs!5463 lt!2255544))) (Context!9927 call!419061)) (h!69361 s!2326)))))

(declare-fun b!5592478 () Bool)

(assert (=> b!5592478 (= e!3450104 ((_ map or) call!419060 call!419058))))

(declare-fun b!5592479 () Bool)

(assert (=> b!5592479 (= e!3450103 (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 lt!2255544)))))))

(assert (= (and d!1767683 c!980121) b!5592471))

(assert (= (and d!1767683 (not c!980121)) b!5592470))

(assert (= (and b!5592470 c!980120) b!5592476))

(assert (= (and b!5592470 (not c!980120)) b!5592474))

(assert (= (and b!5592474 res!2372574) b!5592479))

(assert (= (and b!5592474 c!980122) b!5592478))

(assert (= (and b!5592474 (not c!980122)) b!5592477))

(assert (= (and b!5592477 c!980124) b!5592472))

(assert (= (and b!5592477 (not c!980124)) b!5592475))

(assert (= (and b!5592475 c!980123) b!5592473))

(assert (= (and b!5592475 (not c!980123)) b!5592469))

(assert (= (or b!5592472 b!5592473) bm!419053))

(assert (= (or b!5592472 b!5592473) bm!419051))

(assert (= (or b!5592478 bm!419053) bm!419052))

(assert (= (or b!5592478 bm!419051) bm!419054))

(assert (= (or b!5592476 b!5592478) bm!419056))

(assert (= (or b!5592476 bm!419054) bm!419055))

(declare-fun m!6572300 () Bool)

(assert (=> b!5592479 m!6572300))

(declare-fun m!6572302 () Bool)

(assert (=> b!5592471 m!6572302))

(declare-fun m!6572304 () Bool)

(assert (=> bm!419055 m!6572304))

(declare-fun m!6572306 () Bool)

(assert (=> bm!419056 m!6572306))

(declare-fun m!6572308 () Bool)

(assert (=> bm!419052 m!6572308))

(assert (=> bm!418822 d!1767683))

(declare-fun d!1767685 () Bool)

(assert (=> d!1767685 (= (head!11928 (unfocusZipperList!1007 zl!343)) (h!69360 (unfocusZipperList!1007 zl!343)))))

(assert (=> b!5591299 d!1767685))

(assert (=> d!1767175 d!1767595))

(declare-fun b!5592480 () Bool)

(declare-fun e!3450114 () Bool)

(assert (=> b!5592480 (= e!3450114 (not (= (head!11927 Nil!62913) (c!979652 (regOne!31670 r!7292)))))))

(declare-fun b!5592481 () Bool)

(declare-fun res!2372576 () Bool)

(declare-fun e!3450112 () Bool)

(assert (=> b!5592481 (=> res!2372576 e!3450112)))

(declare-fun e!3450111 () Bool)

(assert (=> b!5592481 (= res!2372576 e!3450111)))

(declare-fun res!2372577 () Bool)

(assert (=> b!5592481 (=> (not res!2372577) (not e!3450111))))

(declare-fun lt!2255677 () Bool)

(assert (=> b!5592481 (= res!2372577 lt!2255677)))

(declare-fun b!5592482 () Bool)

(declare-fun e!3450108 () Bool)

(assert (=> b!5592482 (= e!3450108 (not lt!2255677))))

(declare-fun b!5592483 () Bool)

(declare-fun e!3450110 () Bool)

(assert (=> b!5592483 (= e!3450110 (matchR!7764 (derivativeStep!4427 (regOne!31670 r!7292) (head!11927 Nil!62913)) (tail!11022 Nil!62913)))))

(declare-fun b!5592484 () Bool)

(declare-fun res!2372581 () Bool)

(assert (=> b!5592484 (=> res!2372581 e!3450112)))

(assert (=> b!5592484 (= res!2372581 (not ((_ is ElementMatch!15579) (regOne!31670 r!7292))))))

(assert (=> b!5592484 (= e!3450108 e!3450112)))

(declare-fun b!5592485 () Bool)

(declare-fun e!3450113 () Bool)

(assert (=> b!5592485 (= e!3450113 e!3450114)))

(declare-fun res!2372578 () Bool)

(assert (=> b!5592485 (=> res!2372578 e!3450114)))

(declare-fun call!419062 () Bool)

(assert (=> b!5592485 (= res!2372578 call!419062)))

(declare-fun b!5592486 () Bool)

(declare-fun res!2372575 () Bool)

(assert (=> b!5592486 (=> res!2372575 e!3450114)))

(assert (=> b!5592486 (= res!2372575 (not (isEmpty!34734 (tail!11022 Nil!62913))))))

(declare-fun b!5592487 () Bool)

(declare-fun e!3450109 () Bool)

(assert (=> b!5592487 (= e!3450109 (= lt!2255677 call!419062))))

(declare-fun b!5592488 () Bool)

(declare-fun res!2372579 () Bool)

(assert (=> b!5592488 (=> (not res!2372579) (not e!3450111))))

(assert (=> b!5592488 (= res!2372579 (isEmpty!34734 (tail!11022 Nil!62913)))))

(declare-fun b!5592489 () Bool)

(assert (=> b!5592489 (= e!3450110 (nullable!5611 (regOne!31670 r!7292)))))

(declare-fun b!5592490 () Bool)

(assert (=> b!5592490 (= e!3450111 (= (head!11927 Nil!62913) (c!979652 (regOne!31670 r!7292))))))

(declare-fun bm!419057 () Bool)

(assert (=> bm!419057 (= call!419062 (isEmpty!34734 Nil!62913))))

(declare-fun b!5592491 () Bool)

(assert (=> b!5592491 (= e!3450109 e!3450108)))

(declare-fun c!980125 () Bool)

(assert (=> b!5592491 (= c!980125 ((_ is EmptyLang!15579) (regOne!31670 r!7292)))))

(declare-fun b!5592492 () Bool)

(assert (=> b!5592492 (= e!3450112 e!3450113)))

(declare-fun res!2372580 () Bool)

(assert (=> b!5592492 (=> (not res!2372580) (not e!3450113))))

(assert (=> b!5592492 (= res!2372580 (not lt!2255677))))

(declare-fun d!1767687 () Bool)

(assert (=> d!1767687 e!3450109))

(declare-fun c!980126 () Bool)

(assert (=> d!1767687 (= c!980126 ((_ is EmptyExpr!15579) (regOne!31670 r!7292)))))

(assert (=> d!1767687 (= lt!2255677 e!3450110)))

(declare-fun c!980127 () Bool)

(assert (=> d!1767687 (= c!980127 (isEmpty!34734 Nil!62913))))

(assert (=> d!1767687 (validRegex!7315 (regOne!31670 r!7292))))

(assert (=> d!1767687 (= (matchR!7764 (regOne!31670 r!7292) Nil!62913) lt!2255677)))

(declare-fun b!5592493 () Bool)

(declare-fun res!2372582 () Bool)

(assert (=> b!5592493 (=> (not res!2372582) (not e!3450111))))

(assert (=> b!5592493 (= res!2372582 (not call!419062))))

(assert (= (and d!1767687 c!980127) b!5592489))

(assert (= (and d!1767687 (not c!980127)) b!5592483))

(assert (= (and d!1767687 c!980126) b!5592487))

(assert (= (and d!1767687 (not c!980126)) b!5592491))

(assert (= (and b!5592491 c!980125) b!5592482))

(assert (= (and b!5592491 (not c!980125)) b!5592484))

(assert (= (and b!5592484 (not res!2372581)) b!5592481))

(assert (= (and b!5592481 res!2372577) b!5592493))

(assert (= (and b!5592493 res!2372582) b!5592488))

(assert (= (and b!5592488 res!2372579) b!5592490))

(assert (= (and b!5592481 (not res!2372576)) b!5592492))

(assert (= (and b!5592492 res!2372580) b!5592485))

(assert (= (and b!5592485 (not res!2372578)) b!5592486))

(assert (= (and b!5592486 (not res!2372575)) b!5592480))

(assert (= (or b!5592487 b!5592485 b!5592493) bm!419057))

(declare-fun m!6572310 () Bool)

(assert (=> b!5592480 m!6572310))

(assert (=> b!5592483 m!6572310))

(assert (=> b!5592483 m!6572310))

(declare-fun m!6572312 () Bool)

(assert (=> b!5592483 m!6572312))

(declare-fun m!6572314 () Bool)

(assert (=> b!5592483 m!6572314))

(assert (=> b!5592483 m!6572312))

(assert (=> b!5592483 m!6572314))

(declare-fun m!6572316 () Bool)

(assert (=> b!5592483 m!6572316))

(declare-fun m!6572318 () Bool)

(assert (=> bm!419057 m!6572318))

(assert (=> b!5592490 m!6572310))

(assert (=> b!5592486 m!6572314))

(assert (=> b!5592486 m!6572314))

(declare-fun m!6572320 () Bool)

(assert (=> b!5592486 m!6572320))

(assert (=> d!1767687 m!6572318))

(assert (=> d!1767687 m!6571282))

(assert (=> b!5592489 m!6570836))

(assert (=> b!5592488 m!6572314))

(assert (=> b!5592488 m!6572314))

(assert (=> b!5592488 m!6572320))

(assert (=> d!1767175 d!1767687))

(assert (=> d!1767175 d!1767649))

(declare-fun bm!419058 () Bool)

(declare-fun call!419064 () Bool)

(declare-fun c!980128 () Bool)

(assert (=> bm!419058 (= call!419064 (nullable!5611 (ite c!980128 (regTwo!31671 (regOne!31670 r!7292)) (regTwo!31670 (regOne!31670 r!7292)))))))

(declare-fun d!1767689 () Bool)

(declare-fun res!2372585 () Bool)

(declare-fun e!3450116 () Bool)

(assert (=> d!1767689 (=> res!2372585 e!3450116)))

(assert (=> d!1767689 (= res!2372585 ((_ is EmptyExpr!15579) (regOne!31670 r!7292)))))

(assert (=> d!1767689 (= (nullableFct!1720 (regOne!31670 r!7292)) e!3450116)))

(declare-fun b!5592494 () Bool)

(declare-fun e!3450117 () Bool)

(assert (=> b!5592494 (= e!3450117 call!419064)))

(declare-fun b!5592495 () Bool)

(declare-fun e!3450119 () Bool)

(declare-fun e!3450118 () Bool)

(assert (=> b!5592495 (= e!3450119 e!3450118)))

(declare-fun res!2372584 () Bool)

(declare-fun call!419063 () Bool)

(assert (=> b!5592495 (= res!2372584 call!419063)))

(assert (=> b!5592495 (=> res!2372584 e!3450118)))

(declare-fun b!5592496 () Bool)

(declare-fun e!3450120 () Bool)

(assert (=> b!5592496 (= e!3450116 e!3450120)))

(declare-fun res!2372586 () Bool)

(assert (=> b!5592496 (=> (not res!2372586) (not e!3450120))))

(assert (=> b!5592496 (= res!2372586 (and (not ((_ is EmptyLang!15579) (regOne!31670 r!7292))) (not ((_ is ElementMatch!15579) (regOne!31670 r!7292)))))))

(declare-fun bm!419059 () Bool)

(assert (=> bm!419059 (= call!419063 (nullable!5611 (ite c!980128 (regOne!31671 (regOne!31670 r!7292)) (regOne!31670 (regOne!31670 r!7292)))))))

(declare-fun b!5592497 () Bool)

(assert (=> b!5592497 (= e!3450118 call!419064)))

(declare-fun b!5592498 () Bool)

(assert (=> b!5592498 (= e!3450119 e!3450117)))

(declare-fun res!2372583 () Bool)

(assert (=> b!5592498 (= res!2372583 call!419063)))

(assert (=> b!5592498 (=> (not res!2372583) (not e!3450117))))

(declare-fun b!5592499 () Bool)

(declare-fun e!3450115 () Bool)

(assert (=> b!5592499 (= e!3450115 e!3450119)))

(assert (=> b!5592499 (= c!980128 ((_ is Union!15579) (regOne!31670 r!7292)))))

(declare-fun b!5592500 () Bool)

(assert (=> b!5592500 (= e!3450120 e!3450115)))

(declare-fun res!2372587 () Bool)

(assert (=> b!5592500 (=> res!2372587 e!3450115)))

(assert (=> b!5592500 (= res!2372587 ((_ is Star!15579) (regOne!31670 r!7292)))))

(assert (= (and d!1767689 (not res!2372585)) b!5592496))

(assert (= (and b!5592496 res!2372586) b!5592500))

(assert (= (and b!5592500 (not res!2372587)) b!5592499))

(assert (= (and b!5592499 c!980128) b!5592495))

(assert (= (and b!5592499 (not c!980128)) b!5592498))

(assert (= (and b!5592495 (not res!2372584)) b!5592497))

(assert (= (and b!5592498 res!2372583) b!5592494))

(assert (= (or b!5592497 b!5592494) bm!419058))

(assert (= (or b!5592495 b!5592498) bm!419059))

(declare-fun m!6572322 () Bool)

(assert (=> bm!419058 m!6572322))

(declare-fun m!6572324 () Bool)

(assert (=> bm!419059 m!6572324))

(assert (=> d!1767199 d!1767689))

(assert (=> b!5591208 d!1767149))

(declare-fun d!1767691 () Bool)

(assert (=> d!1767691 true))

(assert (=> d!1767691 true))

(declare-fun res!2372588 () Bool)

(assert (=> d!1767691 (= (choose!42403 lambda!300074) res!2372588)))

(assert (=> d!1767177 d!1767691))

(declare-fun d!1767693 () Bool)

(assert (=> d!1767693 (= (nullable!5611 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))) (nullableFct!1720 (regOne!31670 (regTwo!31671 (regOne!31670 r!7292)))))))

(declare-fun bs!1293152 () Bool)

(assert (= bs!1293152 d!1767693))

(declare-fun m!6572326 () Bool)

(assert (=> bs!1293152 m!6572326))

(assert (=> b!5591435 d!1767693))

(assert (=> bs!1292823 d!1767197))

(declare-fun d!1767695 () Bool)

(assert (=> d!1767695 (= (isEmptyExpr!1133 lt!2255628) ((_ is EmptyExpr!15579) lt!2255628))))

(assert (=> b!5591370 d!1767695))

(declare-fun b!5592501 () Bool)

(declare-fun e!3450122 () Bool)

(assert (=> b!5592501 (= e!3450122 (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535)))))))))

(declare-fun b!5592502 () Bool)

(declare-fun e!3450121 () (InoxSet Context!9926))

(assert (=> b!5592502 (= e!3450121 ((as const (Array Context!9926 Bool)) false))))

(declare-fun e!3450123 () (InoxSet Context!9926))

(declare-fun call!419065 () (InoxSet Context!9926))

(declare-fun b!5592503 () Bool)

(assert (=> b!5592503 (= e!3450123 ((_ map or) call!419065 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535)))))) (h!69361 s!2326))))))

(declare-fun b!5592504 () Bool)

(assert (=> b!5592504 (= e!3450121 call!419065)))

(declare-fun b!5592505 () Bool)

(assert (=> b!5592505 (= e!3450123 e!3450121)))

(declare-fun c!980129 () Bool)

(assert (=> b!5592505 (= c!980129 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535))))))))

(declare-fun bm!419060 () Bool)

(assert (=> bm!419060 (= call!419065 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535)))))) (h!69361 s!2326)))))

(declare-fun d!1767697 () Bool)

(declare-fun c!980130 () Bool)

(assert (=> d!1767697 (= c!980130 e!3450122)))

(declare-fun res!2372589 () Bool)

(assert (=> d!1767697 (=> (not res!2372589) (not e!3450122))))

(assert (=> d!1767697 (= res!2372589 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255535))))))))

(assert (=> d!1767697 (= (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 lt!2255535))) (h!69361 s!2326)) e!3450123)))

(assert (= (and d!1767697 res!2372589) b!5592501))

(assert (= (and d!1767697 c!980130) b!5592503))

(assert (= (and d!1767697 (not c!980130)) b!5592505))

(assert (= (and b!5592505 c!980129) b!5592504))

(assert (= (and b!5592505 (not c!980129)) b!5592502))

(assert (= (or b!5592503 b!5592504) bm!419060))

(declare-fun m!6572328 () Bool)

(assert (=> b!5592501 m!6572328))

(declare-fun m!6572330 () Bool)

(assert (=> b!5592503 m!6572330))

(declare-fun m!6572332 () Bool)

(assert (=> bm!419060 m!6572332))

(assert (=> b!5591261 d!1767697))

(declare-fun d!1767699 () Bool)

(declare-fun res!2372594 () Bool)

(declare-fun e!3450128 () Bool)

(assert (=> d!1767699 (=> res!2372594 e!3450128)))

(assert (=> d!1767699 (= res!2372594 ((_ is Nil!62914) lt!2255635))))

(assert (=> d!1767699 (= (noDuplicate!1555 lt!2255635) e!3450128)))

(declare-fun b!5592510 () Bool)

(declare-fun e!3450129 () Bool)

(assert (=> b!5592510 (= e!3450128 e!3450129)))

(declare-fun res!2372595 () Bool)

(assert (=> b!5592510 (=> (not res!2372595) (not e!3450129))))

(declare-fun contains!19812 (List!63038 Context!9926) Bool)

(assert (=> b!5592510 (= res!2372595 (not (contains!19812 (t!376316 lt!2255635) (h!69362 lt!2255635))))))

(declare-fun b!5592511 () Bool)

(assert (=> b!5592511 (= e!3450129 (noDuplicate!1555 (t!376316 lt!2255635)))))

(assert (= (and d!1767699 (not res!2372594)) b!5592510))

(assert (= (and b!5592510 res!2372595) b!5592511))

(declare-fun m!6572334 () Bool)

(assert (=> b!5592510 m!6572334))

(declare-fun m!6572336 () Bool)

(assert (=> b!5592511 m!6572336))

(assert (=> d!1767221 d!1767699))

(declare-fun d!1767701 () Bool)

(declare-fun e!3450137 () Bool)

(assert (=> d!1767701 e!3450137))

(declare-fun res!2372601 () Bool)

(assert (=> d!1767701 (=> (not res!2372601) (not e!3450137))))

(declare-fun res!2372600 () List!63038)

(assert (=> d!1767701 (= res!2372601 (noDuplicate!1555 res!2372600))))

(declare-fun e!3450138 () Bool)

(assert (=> d!1767701 e!3450138))

(assert (=> d!1767701 (= (choose!42406 z!1189) res!2372600)))

(declare-fun b!5592519 () Bool)

(declare-fun e!3450136 () Bool)

(declare-fun tp!1546622 () Bool)

(assert (=> b!5592519 (= e!3450136 tp!1546622)))

(declare-fun tp!1546623 () Bool)

(declare-fun b!5592518 () Bool)

(assert (=> b!5592518 (= e!3450138 (and (inv!82194 (h!69362 res!2372600)) e!3450136 tp!1546623))))

(declare-fun b!5592520 () Bool)

(assert (=> b!5592520 (= e!3450137 (= (content!11352 res!2372600) z!1189))))

(assert (= b!5592518 b!5592519))

(assert (= (and d!1767701 ((_ is Cons!62914) res!2372600)) b!5592518))

(assert (= (and d!1767701 res!2372601) b!5592520))

(declare-fun m!6572338 () Bool)

(assert (=> d!1767701 m!6572338))

(declare-fun m!6572340 () Bool)

(assert (=> b!5592518 m!6572340))

(declare-fun m!6572342 () Bool)

(assert (=> b!5592520 m!6572342))

(assert (=> d!1767221 d!1767701))

(declare-fun b!5592521 () Bool)

(declare-fun e!3450140 () Bool)

(assert (=> b!5592521 (= e!3450140 (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))))))

(declare-fun b!5592522 () Bool)

(declare-fun e!3450139 () (InoxSet Context!9926))

(assert (=> b!5592522 (= e!3450139 ((as const (Array Context!9926 Bool)) false))))

(declare-fun call!419066 () (InoxSet Context!9926))

(declare-fun e!3450141 () (InoxSet Context!9926))

(declare-fun b!5592523 () Bool)

(assert (=> b!5592523 (= e!3450141 ((_ map or) call!419066 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))) (h!69361 s!2326))))))

(declare-fun b!5592524 () Bool)

(assert (=> b!5592524 (= e!3450139 call!419066)))

(declare-fun b!5592525 () Bool)

(assert (=> b!5592525 (= e!3450141 e!3450139)))

(declare-fun c!980131 () Bool)

(assert (=> b!5592525 (= c!980131 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))))

(declare-fun bm!419061 () Bool)

(assert (=> bm!419061 (= call!419066 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))))))) (h!69361 s!2326)))))

(declare-fun d!1767703 () Bool)

(declare-fun c!980132 () Bool)

(assert (=> d!1767703 (= c!980132 e!3450140)))

(declare-fun res!2372602 () Bool)

(assert (=> d!1767703 (=> (not res!2372602) (not e!3450140))))

(assert (=> d!1767703 (= res!2372602 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))))))))

(assert (=> d!1767703 (= (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (Cons!62912 (h!69360 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343)))))))) (h!69361 s!2326)) e!3450141)))

(assert (= (and d!1767703 res!2372602) b!5592521))

(assert (= (and d!1767703 c!980132) b!5592523))

(assert (= (and d!1767703 (not c!980132)) b!5592525))

(assert (= (and b!5592525 c!980131) b!5592524))

(assert (= (and b!5592525 (not c!980131)) b!5592522))

(assert (= (or b!5592523 b!5592524) bm!419061))

(declare-fun m!6572344 () Bool)

(assert (=> b!5592521 m!6572344))

(declare-fun m!6572346 () Bool)

(assert (=> b!5592523 m!6572346))

(declare-fun m!6572348 () Bool)

(assert (=> bm!419061 m!6572348))

(assert (=> b!5591266 d!1767703))

(assert (=> d!1767191 d!1767193))

(assert (=> d!1767191 d!1767145))

(declare-fun e!3450142 () Bool)

(declare-fun d!1767705 () Bool)

(assert (=> d!1767705 (= (matchZipper!1717 ((_ map or) lt!2255543 lt!2255546) (t!376315 s!2326)) e!3450142)))

(declare-fun res!2372603 () Bool)

(assert (=> d!1767705 (=> res!2372603 e!3450142)))

(assert (=> d!1767705 (= res!2372603 (matchZipper!1717 lt!2255543 (t!376315 s!2326)))))

(assert (=> d!1767705 true))

(declare-fun _$48!1174 () Unit!155724)

(assert (=> d!1767705 (= (choose!42400 lt!2255543 lt!2255546 (t!376315 s!2326)) _$48!1174)))

(declare-fun b!5592526 () Bool)

(assert (=> b!5592526 (= e!3450142 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(assert (= (and d!1767705 (not res!2372603)) b!5592526))

(assert (=> d!1767705 m!6570862))

(assert (=> d!1767705 m!6570852))

(assert (=> b!5592526 m!6570786))

(assert (=> d!1767191 d!1767705))

(declare-fun b!5592527 () Bool)

(declare-fun e!3450144 () Bool)

(assert (=> b!5592527 (= e!3450144 (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343))))))))))

(declare-fun b!5592528 () Bool)

(declare-fun e!3450143 () (InoxSet Context!9926))

(assert (=> b!5592528 (= e!3450143 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592529 () Bool)

(declare-fun call!419067 () (InoxSet Context!9926))

(declare-fun e!3450145 () (InoxSet Context!9926))

(assert (=> b!5592529 (= e!3450145 ((_ map or) call!419067 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343))))))) (h!69361 s!2326))))))

(declare-fun b!5592530 () Bool)

(assert (=> b!5592530 (= e!3450143 call!419067)))

(declare-fun b!5592531 () Bool)

(assert (=> b!5592531 (= e!3450145 e!3450143)))

(declare-fun c!980133 () Bool)

(assert (=> b!5592531 (= c!980133 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun bm!419062 () Bool)

(assert (=> bm!419062 (= call!419067 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343))))))) (h!69361 s!2326)))))

(declare-fun d!1767707 () Bool)

(declare-fun c!980134 () Bool)

(assert (=> d!1767707 (= c!980134 e!3450144)))

(declare-fun res!2372604 () Bool)

(assert (=> d!1767707 (=> (not res!2372604) (not e!3450144))))

(assert (=> d!1767707 (= res!2372604 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))))))))

(assert (=> d!1767707 (= (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (h!69362 zl!343)))) (h!69361 s!2326)) e!3450145)))

(assert (= (and d!1767707 res!2372604) b!5592527))

(assert (= (and d!1767707 c!980134) b!5592529))

(assert (= (and d!1767707 (not c!980134)) b!5592531))

(assert (= (and b!5592531 c!980133) b!5592530))

(assert (= (and b!5592531 (not c!980133)) b!5592528))

(assert (= (or b!5592529 b!5592530) bm!419062))

(declare-fun m!6572350 () Bool)

(assert (=> b!5592527 m!6572350))

(declare-fun m!6572352 () Bool)

(assert (=> b!5592529 m!6572352))

(declare-fun m!6572354 () Bool)

(assert (=> bm!419062 m!6572354))

(assert (=> b!5591223 d!1767707))

(declare-fun bs!1293153 () Bool)

(declare-fun d!1767709 () Bool)

(assert (= bs!1293153 (and d!1767709 d!1767215)))

(declare-fun lambda!300200 () Int)

(assert (=> bs!1293153 (= lambda!300200 lambda!300126)))

(declare-fun bs!1293154 () Bool)

(assert (= bs!1293154 (and d!1767709 d!1767621)))

(assert (=> bs!1293154 (= lambda!300200 lambda!300188)))

(declare-fun bs!1293155 () Bool)

(assert (= bs!1293155 (and d!1767709 d!1767185)))

(assert (=> bs!1293155 (= lambda!300200 lambda!300122)))

(declare-fun bs!1293156 () Bool)

(assert (= bs!1293156 (and d!1767709 d!1767581)))

(assert (=> bs!1293156 (= lambda!300200 lambda!300182)))

(declare-fun bs!1293157 () Bool)

(assert (= bs!1293157 (and d!1767709 d!1767169)))

(assert (=> bs!1293157 (= lambda!300200 lambda!300107)))

(declare-fun bs!1293158 () Bool)

(assert (= bs!1293158 (and d!1767709 d!1767189)))

(assert (=> bs!1293158 (= lambda!300200 lambda!300125)))

(declare-fun bs!1293159 () Bool)

(assert (= bs!1293159 (and d!1767709 d!1767171)))

(assert (=> bs!1293159 (= lambda!300200 lambda!300110)))

(declare-fun bs!1293160 () Bool)

(assert (= bs!1293160 (and d!1767709 d!1767637)))

(assert (=> bs!1293160 (= lambda!300200 lambda!300189)))

(declare-fun b!5592532 () Bool)

(declare-fun e!3450151 () Bool)

(assert (=> b!5592532 (= e!3450151 (isEmpty!34731 (t!376314 (t!376314 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun e!3450149 () Bool)

(assert (=> d!1767709 e!3450149))

(declare-fun res!2372605 () Bool)

(assert (=> d!1767709 (=> (not res!2372605) (not e!3450149))))

(declare-fun lt!2255678 () Regex!15579)

(assert (=> d!1767709 (= res!2372605 (validRegex!7315 lt!2255678))))

(declare-fun e!3450147 () Regex!15579)

(assert (=> d!1767709 (= lt!2255678 e!3450147)))

(declare-fun c!980138 () Bool)

(assert (=> d!1767709 (= c!980138 e!3450151)))

(declare-fun res!2372606 () Bool)

(assert (=> d!1767709 (=> (not res!2372606) (not e!3450151))))

(assert (=> d!1767709 (= res!2372606 ((_ is Cons!62912) (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> d!1767709 (forall!14745 (t!376314 (exprs!5463 (h!69362 zl!343))) lambda!300200)))

(assert (=> d!1767709 (= (generalisedConcat!1194 (t!376314 (exprs!5463 (h!69362 zl!343)))) lt!2255678)))

(declare-fun b!5592533 () Bool)

(declare-fun e!3450148 () Bool)

(assert (=> b!5592533 (= e!3450148 (= lt!2255678 (head!11928 (t!376314 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun b!5592534 () Bool)

(assert (=> b!5592534 (= e!3450148 (isConcat!656 lt!2255678))))

(declare-fun b!5592535 () Bool)

(declare-fun e!3450146 () Bool)

(assert (=> b!5592535 (= e!3450146 (isEmptyExpr!1133 lt!2255678))))

(declare-fun b!5592536 () Bool)

(assert (=> b!5592536 (= e!3450146 e!3450148)))

(declare-fun c!980135 () Bool)

(assert (=> b!5592536 (= c!980135 (isEmpty!34731 (tail!11023 (t!376314 (exprs!5463 (h!69362 zl!343))))))))

(declare-fun b!5592537 () Bool)

(declare-fun e!3450150 () Regex!15579)

(assert (=> b!5592537 (= e!3450150 EmptyExpr!15579)))

(declare-fun b!5592538 () Bool)

(assert (=> b!5592538 (= e!3450147 e!3450150)))

(declare-fun c!980136 () Bool)

(assert (=> b!5592538 (= c!980136 ((_ is Cons!62912) (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592539 () Bool)

(assert (=> b!5592539 (= e!3450149 e!3450146)))

(declare-fun c!980137 () Bool)

(assert (=> b!5592539 (= c!980137 (isEmpty!34731 (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592540 () Bool)

(assert (=> b!5592540 (= e!3450147 (h!69360 (t!376314 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592541 () Bool)

(assert (=> b!5592541 (= e!3450150 (Concat!24424 (h!69360 (t!376314 (exprs!5463 (h!69362 zl!343)))) (generalisedConcat!1194 (t!376314 (t!376314 (exprs!5463 (h!69362 zl!343)))))))))

(assert (= (and d!1767709 res!2372606) b!5592532))

(assert (= (and d!1767709 c!980138) b!5592540))

(assert (= (and d!1767709 (not c!980138)) b!5592538))

(assert (= (and b!5592538 c!980136) b!5592541))

(assert (= (and b!5592538 (not c!980136)) b!5592537))

(assert (= (and d!1767709 res!2372605) b!5592539))

(assert (= (and b!5592539 c!980137) b!5592535))

(assert (= (and b!5592539 (not c!980137)) b!5592536))

(assert (= (and b!5592536 c!980135) b!5592533))

(assert (= (and b!5592536 (not c!980135)) b!5592534))

(declare-fun m!6572356 () Bool)

(assert (=> d!1767709 m!6572356))

(declare-fun m!6572358 () Bool)

(assert (=> d!1767709 m!6572358))

(declare-fun m!6572360 () Bool)

(assert (=> b!5592541 m!6572360))

(declare-fun m!6572362 () Bool)

(assert (=> b!5592532 m!6572362))

(declare-fun m!6572364 () Bool)

(assert (=> b!5592533 m!6572364))

(declare-fun m!6572366 () Bool)

(assert (=> b!5592534 m!6572366))

(declare-fun m!6572368 () Bool)

(assert (=> b!5592535 m!6572368))

(declare-fun m!6572370 () Bool)

(assert (=> b!5592536 m!6572370))

(assert (=> b!5592536 m!6572370))

(declare-fun m!6572372 () Bool)

(assert (=> b!5592536 m!6572372))

(assert (=> b!5592539 m!6570820))

(assert (=> b!5591376 d!1767709))

(declare-fun d!1767711 () Bool)

(assert (=> d!1767711 (= (isEmpty!34735 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326)) (not ((_ is Some!15587) (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) Nil!62913 s!2326 s!2326))))))

(assert (=> d!1767183 d!1767711))

(declare-fun bm!419063 () Bool)

(declare-fun call!419069 () (InoxSet Context!9926))

(declare-fun call!419070 () (InoxSet Context!9926))

(assert (=> bm!419063 (= call!419069 call!419070)))

(declare-fun d!1767713 () Bool)

(declare-fun c!980140 () Bool)

(assert (=> d!1767713 (= c!980140 (and ((_ is ElementMatch!15579) (h!69360 (exprs!5463 lt!2255536))) (= (c!979652 (h!69360 (exprs!5463 lt!2255536))) (h!69361 s!2326))))))

(declare-fun e!3450152 () (InoxSet Context!9926))

(assert (=> d!1767713 (= (derivationStepZipperDown!921 (h!69360 (exprs!5463 lt!2255536)) (Context!9927 (t!376314 (exprs!5463 lt!2255536))) (h!69361 s!2326)) e!3450152)))

(declare-fun b!5592542 () Bool)

(declare-fun e!3450155 () (InoxSet Context!9926))

(assert (=> b!5592542 (= e!3450155 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592543 () Bool)

(declare-fun e!3450156 () (InoxSet Context!9926))

(assert (=> b!5592543 (= e!3450152 e!3450156)))

(declare-fun c!980139 () Bool)

(assert (=> b!5592543 (= c!980139 ((_ is Union!15579) (h!69360 (exprs!5463 lt!2255536))))))

(declare-fun b!5592544 () Bool)

(assert (=> b!5592544 (= e!3450152 (store ((as const (Array Context!9926 Bool)) false) (Context!9927 (t!376314 (exprs!5463 lt!2255536))) true))))

(declare-fun b!5592545 () Bool)

(declare-fun e!3450157 () (InoxSet Context!9926))

(assert (=> b!5592545 (= e!3450157 call!419069)))

(declare-fun bm!419064 () Bool)

(declare-fun c!980143 () Bool)

(declare-fun c!980141 () Bool)

(declare-fun call!419073 () List!63036)

(assert (=> bm!419064 (= call!419073 ($colon$colon!1642 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255536)))) (ite (or c!980141 c!980143) (regTwo!31670 (h!69360 (exprs!5463 lt!2255536))) (h!69360 (exprs!5463 lt!2255536)))))))

(declare-fun b!5592546 () Bool)

(assert (=> b!5592546 (= e!3450155 call!419069)))

(declare-fun bm!419065 () Bool)

(declare-fun call!419068 () List!63036)

(assert (=> bm!419065 (= call!419068 call!419073)))

(declare-fun bm!419066 () Bool)

(declare-fun call!419071 () (InoxSet Context!9926))

(assert (=> bm!419066 (= call!419070 call!419071)))

(declare-fun b!5592547 () Bool)

(declare-fun e!3450153 () Bool)

(assert (=> b!5592547 (= c!980141 e!3450153)))

(declare-fun res!2372607 () Bool)

(assert (=> b!5592547 (=> (not res!2372607) (not e!3450153))))

(assert (=> b!5592547 (= res!2372607 ((_ is Concat!24424) (h!69360 (exprs!5463 lt!2255536))))))

(declare-fun e!3450154 () (InoxSet Context!9926))

(assert (=> b!5592547 (= e!3450156 e!3450154)))

(declare-fun b!5592548 () Bool)

(declare-fun c!980142 () Bool)

(assert (=> b!5592548 (= c!980142 ((_ is Star!15579) (h!69360 (exprs!5463 lt!2255536))))))

(assert (=> b!5592548 (= e!3450157 e!3450155)))

(declare-fun bm!419067 () Bool)

(assert (=> bm!419067 (= call!419071 (derivationStepZipperDown!921 (ite c!980139 (regOne!31671 (h!69360 (exprs!5463 lt!2255536))) (ite c!980141 (regTwo!31670 (h!69360 (exprs!5463 lt!2255536))) (ite c!980143 (regOne!31670 (h!69360 (exprs!5463 lt!2255536))) (reg!15908 (h!69360 (exprs!5463 lt!2255536)))))) (ite (or c!980139 c!980141) (Context!9927 (t!376314 (exprs!5463 lt!2255536))) (Context!9927 call!419068)) (h!69361 s!2326)))))

(declare-fun b!5592549 () Bool)

(declare-fun call!419072 () (InoxSet Context!9926))

(assert (=> b!5592549 (= e!3450156 ((_ map or) call!419071 call!419072))))

(declare-fun b!5592550 () Bool)

(assert (=> b!5592550 (= e!3450154 e!3450157)))

(assert (=> b!5592550 (= c!980143 ((_ is Concat!24424) (h!69360 (exprs!5463 lt!2255536))))))

(declare-fun bm!419068 () Bool)

(assert (=> bm!419068 (= call!419072 (derivationStepZipperDown!921 (ite c!980139 (regTwo!31671 (h!69360 (exprs!5463 lt!2255536))) (regOne!31670 (h!69360 (exprs!5463 lt!2255536)))) (ite c!980139 (Context!9927 (t!376314 (exprs!5463 lt!2255536))) (Context!9927 call!419073)) (h!69361 s!2326)))))

(declare-fun b!5592551 () Bool)

(assert (=> b!5592551 (= e!3450154 ((_ map or) call!419072 call!419070))))

(declare-fun b!5592552 () Bool)

(assert (=> b!5592552 (= e!3450153 (nullable!5611 (regOne!31670 (h!69360 (exprs!5463 lt!2255536)))))))

(assert (= (and d!1767713 c!980140) b!5592544))

(assert (= (and d!1767713 (not c!980140)) b!5592543))

(assert (= (and b!5592543 c!980139) b!5592549))

(assert (= (and b!5592543 (not c!980139)) b!5592547))

(assert (= (and b!5592547 res!2372607) b!5592552))

(assert (= (and b!5592547 c!980141) b!5592551))

(assert (= (and b!5592547 (not c!980141)) b!5592550))

(assert (= (and b!5592550 c!980143) b!5592545))

(assert (= (and b!5592550 (not c!980143)) b!5592548))

(assert (= (and b!5592548 c!980142) b!5592546))

(assert (= (and b!5592548 (not c!980142)) b!5592542))

(assert (= (or b!5592545 b!5592546) bm!419065))

(assert (= (or b!5592545 b!5592546) bm!419063))

(assert (= (or b!5592551 bm!419065) bm!419064))

(assert (= (or b!5592551 bm!419063) bm!419066))

(assert (= (or b!5592549 b!5592551) bm!419068))

(assert (= (or b!5592549 bm!419066) bm!419067))

(declare-fun m!6572374 () Bool)

(assert (=> b!5592552 m!6572374))

(declare-fun m!6572376 () Bool)

(assert (=> b!5592544 m!6572376))

(declare-fun m!6572378 () Bool)

(assert (=> bm!419067 m!6572378))

(declare-fun m!6572380 () Bool)

(assert (=> bm!419068 m!6572380))

(declare-fun m!6572382 () Bool)

(assert (=> bm!419064 m!6572382))

(assert (=> bm!418823 d!1767713))

(declare-fun bm!419069 () Bool)

(declare-fun call!419075 () Bool)

(declare-fun c!980144 () Bool)

(assert (=> bm!419069 (= call!419075 (nullable!5611 (ite c!980144 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regTwo!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun d!1767715 () Bool)

(declare-fun res!2372610 () Bool)

(declare-fun e!3450159 () Bool)

(assert (=> d!1767715 (=> res!2372610 e!3450159)))

(assert (=> d!1767715 (= res!2372610 ((_ is EmptyExpr!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> d!1767715 (= (nullableFct!1720 (h!69360 (exprs!5463 (h!69362 zl!343)))) e!3450159)))

(declare-fun b!5592553 () Bool)

(declare-fun e!3450160 () Bool)

(assert (=> b!5592553 (= e!3450160 call!419075)))

(declare-fun b!5592554 () Bool)

(declare-fun e!3450162 () Bool)

(declare-fun e!3450161 () Bool)

(assert (=> b!5592554 (= e!3450162 e!3450161)))

(declare-fun res!2372609 () Bool)

(declare-fun call!419074 () Bool)

(assert (=> b!5592554 (= res!2372609 call!419074)))

(assert (=> b!5592554 (=> res!2372609 e!3450161)))

(declare-fun b!5592555 () Bool)

(declare-fun e!3450163 () Bool)

(assert (=> b!5592555 (= e!3450159 e!3450163)))

(declare-fun res!2372611 () Bool)

(assert (=> b!5592555 (=> (not res!2372611) (not e!3450163))))

(assert (=> b!5592555 (= res!2372611 (and (not ((_ is EmptyLang!15579) (h!69360 (exprs!5463 (h!69362 zl!343))))) (not ((_ is ElementMatch!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun bm!419070 () Bool)

(assert (=> bm!419070 (= call!419074 (nullable!5611 (ite c!980144 (regOne!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun b!5592556 () Bool)

(assert (=> b!5592556 (= e!3450161 call!419075)))

(declare-fun b!5592557 () Bool)

(assert (=> b!5592557 (= e!3450162 e!3450160)))

(declare-fun res!2372608 () Bool)

(assert (=> b!5592557 (= res!2372608 call!419074)))

(assert (=> b!5592557 (=> (not res!2372608) (not e!3450160))))

(declare-fun b!5592558 () Bool)

(declare-fun e!3450158 () Bool)

(assert (=> b!5592558 (= e!3450158 e!3450162)))

(assert (=> b!5592558 (= c!980144 ((_ is Union!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592559 () Bool)

(assert (=> b!5592559 (= e!3450163 e!3450158)))

(declare-fun res!2372612 () Bool)

(assert (=> b!5592559 (=> res!2372612 e!3450158)))

(assert (=> b!5592559 (= res!2372612 ((_ is Star!15579) (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(assert (= (and d!1767715 (not res!2372610)) b!5592555))

(assert (= (and b!5592555 res!2372611) b!5592559))

(assert (= (and b!5592559 (not res!2372612)) b!5592558))

(assert (= (and b!5592558 c!980144) b!5592554))

(assert (= (and b!5592558 (not c!980144)) b!5592557))

(assert (= (and b!5592554 (not res!2372609)) b!5592556))

(assert (= (and b!5592557 res!2372608) b!5592553))

(assert (= (or b!5592556 b!5592553) bm!419069))

(assert (= (or b!5592554 b!5592557) bm!419070))

(declare-fun m!6572384 () Bool)

(assert (=> bm!419069 m!6572384))

(declare-fun m!6572386 () Bool)

(assert (=> bm!419070 m!6572386))

(assert (=> d!1767153 d!1767715))

(assert (=> d!1767149 d!1767549))

(declare-fun bs!1293161 () Bool)

(declare-fun d!1767717 () Bool)

(assert (= bs!1293161 (and d!1767717 d!1767215)))

(declare-fun lambda!300201 () Int)

(assert (=> bs!1293161 (= lambda!300201 lambda!300126)))

(declare-fun bs!1293162 () Bool)

(assert (= bs!1293162 (and d!1767717 d!1767621)))

(assert (=> bs!1293162 (= lambda!300201 lambda!300188)))

(declare-fun bs!1293163 () Bool)

(assert (= bs!1293163 (and d!1767717 d!1767185)))

(assert (=> bs!1293163 (= lambda!300201 lambda!300122)))

(declare-fun bs!1293164 () Bool)

(assert (= bs!1293164 (and d!1767717 d!1767581)))

(assert (=> bs!1293164 (= lambda!300201 lambda!300182)))

(declare-fun bs!1293165 () Bool)

(assert (= bs!1293165 (and d!1767717 d!1767169)))

(assert (=> bs!1293165 (= lambda!300201 lambda!300107)))

(declare-fun bs!1293166 () Bool)

(assert (= bs!1293166 (and d!1767717 d!1767189)))

(assert (=> bs!1293166 (= lambda!300201 lambda!300125)))

(declare-fun bs!1293167 () Bool)

(assert (= bs!1293167 (and d!1767717 d!1767637)))

(assert (=> bs!1293167 (= lambda!300201 lambda!300189)))

(declare-fun bs!1293168 () Bool)

(assert (= bs!1293168 (and d!1767717 d!1767709)))

(assert (=> bs!1293168 (= lambda!300201 lambda!300200)))

(declare-fun bs!1293169 () Bool)

(assert (= bs!1293169 (and d!1767717 d!1767171)))

(assert (=> bs!1293169 (= lambda!300201 lambda!300110)))

(declare-fun b!5592560 () Bool)

(declare-fun e!3450167 () Bool)

(assert (=> b!5592560 (= e!3450167 (isEmpty!34731 (t!376314 (t!376314 (unfocusZipperList!1007 zl!343)))))))

(declare-fun b!5592561 () Bool)

(declare-fun e!3450165 () Bool)

(declare-fun e!3450164 () Bool)

(assert (=> b!5592561 (= e!3450165 e!3450164)))

(declare-fun c!980147 () Bool)

(assert (=> b!5592561 (= c!980147 (isEmpty!34731 (t!376314 (unfocusZipperList!1007 zl!343))))))

(declare-fun b!5592562 () Bool)

(declare-fun lt!2255679 () Regex!15579)

(assert (=> b!5592562 (= e!3450164 (isEmptyLang!1143 lt!2255679))))

(declare-fun b!5592563 () Bool)

(declare-fun e!3450168 () Regex!15579)

(assert (=> b!5592563 (= e!3450168 (h!69360 (t!376314 (unfocusZipperList!1007 zl!343))))))

(declare-fun b!5592564 () Bool)

(declare-fun e!3450169 () Regex!15579)

(assert (=> b!5592564 (= e!3450168 e!3450169)))

(declare-fun c!980145 () Bool)

(assert (=> b!5592564 (= c!980145 ((_ is Cons!62912) (t!376314 (unfocusZipperList!1007 zl!343))))))

(assert (=> d!1767717 e!3450165))

(declare-fun res!2372614 () Bool)

(assert (=> d!1767717 (=> (not res!2372614) (not e!3450165))))

(assert (=> d!1767717 (= res!2372614 (validRegex!7315 lt!2255679))))

(assert (=> d!1767717 (= lt!2255679 e!3450168)))

(declare-fun c!980146 () Bool)

(assert (=> d!1767717 (= c!980146 e!3450167)))

(declare-fun res!2372613 () Bool)

(assert (=> d!1767717 (=> (not res!2372613) (not e!3450167))))

(assert (=> d!1767717 (= res!2372613 ((_ is Cons!62912) (t!376314 (unfocusZipperList!1007 zl!343))))))

(assert (=> d!1767717 (forall!14745 (t!376314 (unfocusZipperList!1007 zl!343)) lambda!300201)))

(assert (=> d!1767717 (= (generalisedUnion!1442 (t!376314 (unfocusZipperList!1007 zl!343))) lt!2255679)))

(declare-fun b!5592565 () Bool)

(assert (=> b!5592565 (= e!3450169 EmptyLang!15579)))

(declare-fun b!5592566 () Bool)

(declare-fun e!3450166 () Bool)

(assert (=> b!5592566 (= e!3450164 e!3450166)))

(declare-fun c!980148 () Bool)

(assert (=> b!5592566 (= c!980148 (isEmpty!34731 (tail!11023 (t!376314 (unfocusZipperList!1007 zl!343)))))))

(declare-fun b!5592567 () Bool)

(assert (=> b!5592567 (= e!3450166 (= lt!2255679 (head!11928 (t!376314 (unfocusZipperList!1007 zl!343)))))))

(declare-fun b!5592568 () Bool)

(assert (=> b!5592568 (= e!3450166 (isUnion!573 lt!2255679))))

(declare-fun b!5592569 () Bool)

(assert (=> b!5592569 (= e!3450169 (Union!15579 (h!69360 (t!376314 (unfocusZipperList!1007 zl!343))) (generalisedUnion!1442 (t!376314 (t!376314 (unfocusZipperList!1007 zl!343))))))))

(assert (= (and d!1767717 res!2372613) b!5592560))

(assert (= (and d!1767717 c!980146) b!5592563))

(assert (= (and d!1767717 (not c!980146)) b!5592564))

(assert (= (and b!5592564 c!980145) b!5592569))

(assert (= (and b!5592564 (not c!980145)) b!5592565))

(assert (= (and d!1767717 res!2372614) b!5592561))

(assert (= (and b!5592561 c!980147) b!5592562))

(assert (= (and b!5592561 (not c!980147)) b!5592566))

(assert (= (and b!5592566 c!980148) b!5592567))

(assert (= (and b!5592566 (not c!980148)) b!5592568))

(declare-fun m!6572388 () Bool)

(assert (=> b!5592569 m!6572388))

(declare-fun m!6572390 () Bool)

(assert (=> b!5592566 m!6572390))

(assert (=> b!5592566 m!6572390))

(declare-fun m!6572392 () Bool)

(assert (=> b!5592566 m!6572392))

(declare-fun m!6572394 () Bool)

(assert (=> b!5592567 m!6572394))

(declare-fun m!6572396 () Bool)

(assert (=> b!5592562 m!6572396))

(declare-fun m!6572398 () Bool)

(assert (=> d!1767717 m!6572398))

(declare-fun m!6572400 () Bool)

(assert (=> d!1767717 m!6572400))

(declare-fun m!6572402 () Bool)

(assert (=> b!5592560 m!6572402))

(assert (=> b!5592561 m!6571266))

(declare-fun m!6572404 () Bool)

(assert (=> b!5592568 m!6572404))

(assert (=> b!5591301 d!1767717))

(declare-fun d!1767719 () Bool)

(assert (=> d!1767719 true))

(declare-fun setRes!37277 () Bool)

(assert (=> d!1767719 setRes!37277))

(declare-fun condSetEmpty!37277 () Bool)

(declare-fun res!2372615 () (InoxSet Context!9926))

(assert (=> d!1767719 (= condSetEmpty!37277 (= res!2372615 ((as const (Array Context!9926 Bool)) false)))))

(assert (=> d!1767719 (= (choose!42401 lt!2255538 lambda!300076) res!2372615)))

(declare-fun setIsEmpty!37277 () Bool)

(assert (=> setIsEmpty!37277 setRes!37277))

(declare-fun e!3450170 () Bool)

(declare-fun setElem!37277 () Context!9926)

(declare-fun tp!1546625 () Bool)

(declare-fun setNonEmpty!37277 () Bool)

(assert (=> setNonEmpty!37277 (= setRes!37277 (and tp!1546625 (inv!82194 setElem!37277) e!3450170))))

(declare-fun setRest!37277 () (InoxSet Context!9926))

(assert (=> setNonEmpty!37277 (= res!2372615 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) setElem!37277 true) setRest!37277))))

(declare-fun b!5592570 () Bool)

(declare-fun tp!1546624 () Bool)

(assert (=> b!5592570 (= e!3450170 tp!1546624)))

(assert (= (and d!1767719 condSetEmpty!37277) setIsEmpty!37277))

(assert (= (and d!1767719 (not condSetEmpty!37277)) setNonEmpty!37277))

(assert (= setNonEmpty!37277 b!5592570))

(declare-fun m!6572406 () Bool)

(assert (=> setNonEmpty!37277 m!6572406))

(assert (=> d!1767205 d!1767719))

(assert (=> d!1767155 d!1767151))

(declare-fun d!1767721 () Bool)

(assert (=> d!1767721 (= (flatMap!1192 z!1189 lambda!300076) (dynLambda!24605 lambda!300076 (h!69362 zl!343)))))

(assert (=> d!1767721 true))

(declare-fun _$13!2193 () Unit!155724)

(assert (=> d!1767721 (= (choose!42402 z!1189 (h!69362 zl!343) lambda!300076) _$13!2193)))

(declare-fun b_lambda!211917 () Bool)

(assert (=> (not b_lambda!211917) (not d!1767721)))

(declare-fun bs!1293170 () Bool)

(assert (= bs!1293170 d!1767721))

(assert (=> bs!1293170 m!6570874))

(assert (=> bs!1293170 m!6571212))

(assert (=> d!1767155 d!1767721))

(declare-fun b!5592571 () Bool)

(declare-fun e!3450177 () Bool)

(assert (=> b!5592571 (= e!3450177 (not (= (head!11927 (_1!35979 (get!21665 lt!2255619))) (c!979652 (regOne!31670 r!7292)))))))

(declare-fun b!5592572 () Bool)

(declare-fun res!2372617 () Bool)

(declare-fun e!3450175 () Bool)

(assert (=> b!5592572 (=> res!2372617 e!3450175)))

(declare-fun e!3450174 () Bool)

(assert (=> b!5592572 (= res!2372617 e!3450174)))

(declare-fun res!2372618 () Bool)

(assert (=> b!5592572 (=> (not res!2372618) (not e!3450174))))

(declare-fun lt!2255680 () Bool)

(assert (=> b!5592572 (= res!2372618 lt!2255680)))

(declare-fun b!5592573 () Bool)

(declare-fun e!3450171 () Bool)

(assert (=> b!5592573 (= e!3450171 (not lt!2255680))))

(declare-fun b!5592574 () Bool)

(declare-fun e!3450173 () Bool)

(assert (=> b!5592574 (= e!3450173 (matchR!7764 (derivativeStep!4427 (regOne!31670 r!7292) (head!11927 (_1!35979 (get!21665 lt!2255619)))) (tail!11022 (_1!35979 (get!21665 lt!2255619)))))))

(declare-fun b!5592575 () Bool)

(declare-fun res!2372622 () Bool)

(assert (=> b!5592575 (=> res!2372622 e!3450175)))

(assert (=> b!5592575 (= res!2372622 (not ((_ is ElementMatch!15579) (regOne!31670 r!7292))))))

(assert (=> b!5592575 (= e!3450171 e!3450175)))

(declare-fun b!5592576 () Bool)

(declare-fun e!3450176 () Bool)

(assert (=> b!5592576 (= e!3450176 e!3450177)))

(declare-fun res!2372619 () Bool)

(assert (=> b!5592576 (=> res!2372619 e!3450177)))

(declare-fun call!419076 () Bool)

(assert (=> b!5592576 (= res!2372619 call!419076)))

(declare-fun b!5592577 () Bool)

(declare-fun res!2372616 () Bool)

(assert (=> b!5592577 (=> res!2372616 e!3450177)))

(assert (=> b!5592577 (= res!2372616 (not (isEmpty!34734 (tail!11022 (_1!35979 (get!21665 lt!2255619))))))))

(declare-fun b!5592578 () Bool)

(declare-fun e!3450172 () Bool)

(assert (=> b!5592578 (= e!3450172 (= lt!2255680 call!419076))))

(declare-fun b!5592579 () Bool)

(declare-fun res!2372620 () Bool)

(assert (=> b!5592579 (=> (not res!2372620) (not e!3450174))))

(assert (=> b!5592579 (= res!2372620 (isEmpty!34734 (tail!11022 (_1!35979 (get!21665 lt!2255619)))))))

(declare-fun b!5592580 () Bool)

(assert (=> b!5592580 (= e!3450173 (nullable!5611 (regOne!31670 r!7292)))))

(declare-fun b!5592581 () Bool)

(assert (=> b!5592581 (= e!3450174 (= (head!11927 (_1!35979 (get!21665 lt!2255619))) (c!979652 (regOne!31670 r!7292))))))

(declare-fun bm!419071 () Bool)

(assert (=> bm!419071 (= call!419076 (isEmpty!34734 (_1!35979 (get!21665 lt!2255619))))))

(declare-fun b!5592582 () Bool)

(assert (=> b!5592582 (= e!3450172 e!3450171)))

(declare-fun c!980149 () Bool)

(assert (=> b!5592582 (= c!980149 ((_ is EmptyLang!15579) (regOne!31670 r!7292)))))

(declare-fun b!5592583 () Bool)

(assert (=> b!5592583 (= e!3450175 e!3450176)))

(declare-fun res!2372621 () Bool)

(assert (=> b!5592583 (=> (not res!2372621) (not e!3450176))))

(assert (=> b!5592583 (= res!2372621 (not lt!2255680))))

(declare-fun d!1767723 () Bool)

(assert (=> d!1767723 e!3450172))

(declare-fun c!980150 () Bool)

(assert (=> d!1767723 (= c!980150 ((_ is EmptyExpr!15579) (regOne!31670 r!7292)))))

(assert (=> d!1767723 (= lt!2255680 e!3450173)))

(declare-fun c!980151 () Bool)

(assert (=> d!1767723 (= c!980151 (isEmpty!34734 (_1!35979 (get!21665 lt!2255619))))))

(assert (=> d!1767723 (validRegex!7315 (regOne!31670 r!7292))))

(assert (=> d!1767723 (= (matchR!7764 (regOne!31670 r!7292) (_1!35979 (get!21665 lt!2255619))) lt!2255680)))

(declare-fun b!5592584 () Bool)

(declare-fun res!2372623 () Bool)

(assert (=> b!5592584 (=> (not res!2372623) (not e!3450174))))

(assert (=> b!5592584 (= res!2372623 (not call!419076))))

(assert (= (and d!1767723 c!980151) b!5592580))

(assert (= (and d!1767723 (not c!980151)) b!5592574))

(assert (= (and d!1767723 c!980150) b!5592578))

(assert (= (and d!1767723 (not c!980150)) b!5592582))

(assert (= (and b!5592582 c!980149) b!5592573))

(assert (= (and b!5592582 (not c!980149)) b!5592575))

(assert (= (and b!5592575 (not res!2372622)) b!5592572))

(assert (= (and b!5592572 res!2372618) b!5592584))

(assert (= (and b!5592584 res!2372623) b!5592579))

(assert (= (and b!5592579 res!2372620) b!5592581))

(assert (= (and b!5592572 (not res!2372617)) b!5592583))

(assert (= (and b!5592583 res!2372621) b!5592576))

(assert (= (and b!5592576 (not res!2372619)) b!5592577))

(assert (= (and b!5592577 (not res!2372616)) b!5592571))

(assert (= (or b!5592578 b!5592576 b!5592584) bm!419071))

(declare-fun m!6572408 () Bool)

(assert (=> b!5592571 m!6572408))

(assert (=> b!5592574 m!6572408))

(assert (=> b!5592574 m!6572408))

(declare-fun m!6572410 () Bool)

(assert (=> b!5592574 m!6572410))

(declare-fun m!6572412 () Bool)

(assert (=> b!5592574 m!6572412))

(assert (=> b!5592574 m!6572410))

(assert (=> b!5592574 m!6572412))

(declare-fun m!6572414 () Bool)

(assert (=> b!5592574 m!6572414))

(declare-fun m!6572416 () Bool)

(assert (=> bm!419071 m!6572416))

(assert (=> b!5592581 m!6572408))

(assert (=> b!5592577 m!6572412))

(assert (=> b!5592577 m!6572412))

(declare-fun m!6572418 () Bool)

(assert (=> b!5592577 m!6572418))

(assert (=> d!1767723 m!6572416))

(assert (=> d!1767723 m!6571282))

(assert (=> b!5592580 m!6570836))

(assert (=> b!5592579 m!6572412))

(assert (=> b!5592579 m!6572412))

(assert (=> b!5592579 m!6572418))

(assert (=> b!5591332 d!1767723))

(assert (=> b!5591332 d!1767617))

(declare-fun b!5592585 () Bool)

(declare-fun e!3450179 () Bool)

(assert (=> b!5592585 (= e!3450179 (nullable!5611 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544)))))))))

(declare-fun b!5592586 () Bool)

(declare-fun e!3450178 () (InoxSet Context!9926))

(assert (=> b!5592586 (= e!3450178 ((as const (Array Context!9926 Bool)) false))))

(declare-fun call!419077 () (InoxSet Context!9926))

(declare-fun e!3450180 () (InoxSet Context!9926))

(declare-fun b!5592587 () Bool)

(assert (=> b!5592587 (= e!3450180 ((_ map or) call!419077 (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544)))))) (h!69361 s!2326))))))

(declare-fun b!5592588 () Bool)

(assert (=> b!5592588 (= e!3450178 call!419077)))

(declare-fun b!5592589 () Bool)

(assert (=> b!5592589 (= e!3450180 e!3450178)))

(declare-fun c!980152 () Bool)

(assert (=> b!5592589 (= c!980152 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544))))))))

(declare-fun bm!419072 () Bool)

(assert (=> bm!419072 (= call!419077 (derivationStepZipperDown!921 (h!69360 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544))))) (Context!9927 (t!376314 (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544)))))) (h!69361 s!2326)))))

(declare-fun d!1767725 () Bool)

(declare-fun c!980153 () Bool)

(assert (=> d!1767725 (= c!980153 e!3450179)))

(declare-fun res!2372624 () Bool)

(assert (=> d!1767725 (=> (not res!2372624) (not e!3450179))))

(assert (=> d!1767725 (= res!2372624 ((_ is Cons!62912) (exprs!5463 (Context!9927 (t!376314 (exprs!5463 lt!2255544))))))))

(assert (=> d!1767725 (= (derivationStepZipperUp!847 (Context!9927 (t!376314 (exprs!5463 lt!2255544))) (h!69361 s!2326)) e!3450180)))

(assert (= (and d!1767725 res!2372624) b!5592585))

(assert (= (and d!1767725 c!980153) b!5592587))

(assert (= (and d!1767725 (not c!980153)) b!5592589))

(assert (= (and b!5592589 c!980152) b!5592588))

(assert (= (and b!5592589 (not c!980152)) b!5592586))

(assert (= (or b!5592587 b!5592588) bm!419072))

(declare-fun m!6572420 () Bool)

(assert (=> b!5592585 m!6572420))

(declare-fun m!6572422 () Bool)

(assert (=> b!5592587 m!6572422))

(declare-fun m!6572424 () Bool)

(assert (=> bm!419072 m!6572424))

(assert (=> b!5591384 d!1767725))

(declare-fun b!5592593 () Bool)

(declare-fun e!3450181 () Bool)

(declare-fun lt!2255681 () List!63037)

(assert (=> b!5592593 (= e!3450181 (or (not (= (t!376315 s!2326) Nil!62913)) (= lt!2255681 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)))))))

(declare-fun b!5592591 () Bool)

(declare-fun e!3450182 () List!63037)

(assert (=> b!5592591 (= e!3450182 (Cons!62913 (h!69361 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913))) (++!13808 (t!376315 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913))) (t!376315 s!2326))))))

(declare-fun d!1767727 () Bool)

(assert (=> d!1767727 e!3450181))

(declare-fun res!2372626 () Bool)

(assert (=> d!1767727 (=> (not res!2372626) (not e!3450181))))

(assert (=> d!1767727 (= res!2372626 (= (content!11354 lt!2255681) ((_ map or) (content!11354 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913))) (content!11354 (t!376315 s!2326)))))))

(assert (=> d!1767727 (= lt!2255681 e!3450182)))

(declare-fun c!980154 () Bool)

(assert (=> d!1767727 (= c!980154 ((_ is Nil!62913) (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913))))))

(assert (=> d!1767727 (= (++!13808 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (t!376315 s!2326)) lt!2255681)))

(declare-fun b!5592590 () Bool)

(assert (=> b!5592590 (= e!3450182 (t!376315 s!2326))))

(declare-fun b!5592592 () Bool)

(declare-fun res!2372625 () Bool)

(assert (=> b!5592592 (=> (not res!2372625) (not e!3450181))))

(assert (=> b!5592592 (= res!2372625 (= (size!39965 lt!2255681) (+ (size!39965 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913))) (size!39965 (t!376315 s!2326)))))))

(assert (= (and d!1767727 c!980154) b!5592590))

(assert (= (and d!1767727 (not c!980154)) b!5592591))

(assert (= (and d!1767727 res!2372626) b!5592592))

(assert (= (and b!5592592 res!2372625) b!5592593))

(declare-fun m!6572426 () Bool)

(assert (=> b!5592591 m!6572426))

(declare-fun m!6572428 () Bool)

(assert (=> d!1767727 m!6572428))

(assert (=> d!1767727 m!6571284))

(declare-fun m!6572430 () Bool)

(assert (=> d!1767727 m!6572430))

(declare-fun m!6572432 () Bool)

(assert (=> d!1767727 m!6572432))

(declare-fun m!6572434 () Bool)

(assert (=> b!5592592 m!6572434))

(assert (=> b!5592592 m!6571284))

(declare-fun m!6572436 () Bool)

(assert (=> b!5592592 m!6572436))

(declare-fun m!6572438 () Bool)

(assert (=> b!5592592 m!6572438))

(assert (=> b!5591328 d!1767727))

(declare-fun b!5592597 () Bool)

(declare-fun e!3450183 () Bool)

(declare-fun lt!2255682 () List!63037)

(assert (=> b!5592597 (= e!3450183 (or (not (= (Cons!62913 (h!69361 s!2326) Nil!62913) Nil!62913)) (= lt!2255682 Nil!62913)))))

(declare-fun b!5592595 () Bool)

(declare-fun e!3450184 () List!63037)

(assert (=> b!5592595 (= e!3450184 (Cons!62913 (h!69361 Nil!62913) (++!13808 (t!376315 Nil!62913) (Cons!62913 (h!69361 s!2326) Nil!62913))))))

(declare-fun d!1767729 () Bool)

(assert (=> d!1767729 e!3450183))

(declare-fun res!2372628 () Bool)

(assert (=> d!1767729 (=> (not res!2372628) (not e!3450183))))

(assert (=> d!1767729 (= res!2372628 (= (content!11354 lt!2255682) ((_ map or) (content!11354 Nil!62913) (content!11354 (Cons!62913 (h!69361 s!2326) Nil!62913)))))))

(assert (=> d!1767729 (= lt!2255682 e!3450184)))

(declare-fun c!980155 () Bool)

(assert (=> d!1767729 (= c!980155 ((_ is Nil!62913) Nil!62913))))

(assert (=> d!1767729 (= (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) lt!2255682)))

(declare-fun b!5592594 () Bool)

(assert (=> b!5592594 (= e!3450184 (Cons!62913 (h!69361 s!2326) Nil!62913))))

(declare-fun b!5592596 () Bool)

(declare-fun res!2372627 () Bool)

(assert (=> b!5592596 (=> (not res!2372627) (not e!3450183))))

(assert (=> b!5592596 (= res!2372627 (= (size!39965 lt!2255682) (+ (size!39965 Nil!62913) (size!39965 (Cons!62913 (h!69361 s!2326) Nil!62913)))))))

(assert (= (and d!1767729 c!980155) b!5592594))

(assert (= (and d!1767729 (not c!980155)) b!5592595))

(assert (= (and d!1767729 res!2372628) b!5592596))

(assert (= (and b!5592596 res!2372627) b!5592597))

(declare-fun m!6572440 () Bool)

(assert (=> b!5592595 m!6572440))

(declare-fun m!6572442 () Bool)

(assert (=> d!1767729 m!6572442))

(declare-fun m!6572444 () Bool)

(assert (=> d!1767729 m!6572444))

(declare-fun m!6572446 () Bool)

(assert (=> d!1767729 m!6572446))

(declare-fun m!6572448 () Bool)

(assert (=> b!5592596 m!6572448))

(declare-fun m!6572450 () Bool)

(assert (=> b!5592596 m!6572450))

(declare-fun m!6572452 () Bool)

(assert (=> b!5592596 m!6572452))

(assert (=> b!5591328 d!1767729))

(declare-fun d!1767731 () Bool)

(assert (=> d!1767731 (= (++!13808 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (t!376315 s!2326)) s!2326)))

(declare-fun lt!2255685 () Unit!155724)

(declare-fun choose!42409 (List!63037 C!31428 List!63037 List!63037) Unit!155724)

(assert (=> d!1767731 (= lt!2255685 (choose!42409 Nil!62913 (h!69361 s!2326) (t!376315 s!2326) s!2326))))

(assert (=> d!1767731 (= (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) (t!376315 s!2326))) s!2326)))

(assert (=> d!1767731 (= (lemmaMoveElementToOtherListKeepsConcatEq!1977 Nil!62913 (h!69361 s!2326) (t!376315 s!2326) s!2326) lt!2255685)))

(declare-fun bs!1293171 () Bool)

(assert (= bs!1293171 d!1767731))

(assert (=> bs!1293171 m!6571284))

(assert (=> bs!1293171 m!6571284))

(assert (=> bs!1293171 m!6571286))

(declare-fun m!6572454 () Bool)

(assert (=> bs!1293171 m!6572454))

(declare-fun m!6572456 () Bool)

(assert (=> bs!1293171 m!6572456))

(assert (=> b!5591328 d!1767731))

(declare-fun b!5592598 () Bool)

(declare-fun e!3450186 () Option!15588)

(declare-fun e!3450185 () Option!15588)

(assert (=> b!5592598 (= e!3450186 e!3450185)))

(declare-fun c!980156 () Bool)

(assert (=> b!5592598 (= c!980156 ((_ is Nil!62913) (t!376315 s!2326)))))

(declare-fun d!1767733 () Bool)

(declare-fun e!3450189 () Bool)

(assert (=> d!1767733 e!3450189))

(declare-fun res!2372629 () Bool)

(assert (=> d!1767733 (=> res!2372629 e!3450189)))

(declare-fun e!3450188 () Bool)

(assert (=> d!1767733 (= res!2372629 e!3450188)))

(declare-fun res!2372632 () Bool)

(assert (=> d!1767733 (=> (not res!2372632) (not e!3450188))))

(declare-fun lt!2255688 () Option!15588)

(assert (=> d!1767733 (= res!2372632 (isDefined!12291 lt!2255688))))

(assert (=> d!1767733 (= lt!2255688 e!3450186)))

(declare-fun c!980157 () Bool)

(declare-fun e!3450187 () Bool)

(assert (=> d!1767733 (= c!980157 e!3450187)))

(declare-fun res!2372630 () Bool)

(assert (=> d!1767733 (=> (not res!2372630) (not e!3450187))))

(assert (=> d!1767733 (= res!2372630 (matchR!7764 (regOne!31670 r!7292) (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913))))))

(assert (=> d!1767733 (validRegex!7315 (regOne!31670 r!7292))))

(assert (=> d!1767733 (= (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (t!376315 s!2326) s!2326) lt!2255688)))

(declare-fun b!5592599 () Bool)

(assert (=> b!5592599 (= e!3450187 (matchR!7764 (regTwo!31670 r!7292) (t!376315 s!2326)))))

(declare-fun b!5592600 () Bool)

(declare-fun lt!2255686 () Unit!155724)

(declare-fun lt!2255687 () Unit!155724)

(assert (=> b!5592600 (= lt!2255686 lt!2255687)))

(assert (=> b!5592600 (= (++!13808 (++!13808 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (Cons!62913 (h!69361 (t!376315 s!2326)) Nil!62913)) (t!376315 (t!376315 s!2326))) s!2326)))

(assert (=> b!5592600 (= lt!2255687 (lemmaMoveElementToOtherListKeepsConcatEq!1977 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (h!69361 (t!376315 s!2326)) (t!376315 (t!376315 s!2326)) s!2326))))

(assert (=> b!5592600 (= e!3450185 (findConcatSeparation!2002 (regOne!31670 r!7292) (regTwo!31670 r!7292) (++!13808 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (Cons!62913 (h!69361 (t!376315 s!2326)) Nil!62913)) (t!376315 (t!376315 s!2326)) s!2326))))

(declare-fun b!5592601 () Bool)

(assert (=> b!5592601 (= e!3450185 None!15587)))

(declare-fun b!5592602 () Bool)

(assert (=> b!5592602 (= e!3450189 (not (isDefined!12291 lt!2255688)))))

(declare-fun b!5592603 () Bool)

(assert (=> b!5592603 (= e!3450188 (= (++!13808 (_1!35979 (get!21665 lt!2255688)) (_2!35979 (get!21665 lt!2255688))) s!2326))))

(declare-fun b!5592604 () Bool)

(declare-fun res!2372633 () Bool)

(assert (=> b!5592604 (=> (not res!2372633) (not e!3450188))))

(assert (=> b!5592604 (= res!2372633 (matchR!7764 (regOne!31670 r!7292) (_1!35979 (get!21665 lt!2255688))))))

(declare-fun b!5592605 () Bool)

(assert (=> b!5592605 (= e!3450186 (Some!15587 (tuple2!65353 (++!13808 Nil!62913 (Cons!62913 (h!69361 s!2326) Nil!62913)) (t!376315 s!2326))))))

(declare-fun b!5592606 () Bool)

(declare-fun res!2372631 () Bool)

(assert (=> b!5592606 (=> (not res!2372631) (not e!3450188))))

(assert (=> b!5592606 (= res!2372631 (matchR!7764 (regTwo!31670 r!7292) (_2!35979 (get!21665 lt!2255688))))))

(assert (= (and d!1767733 res!2372630) b!5592599))

(assert (= (and d!1767733 c!980157) b!5592605))

(assert (= (and d!1767733 (not c!980157)) b!5592598))

(assert (= (and b!5592598 c!980156) b!5592601))

(assert (= (and b!5592598 (not c!980156)) b!5592600))

(assert (= (and d!1767733 res!2372632) b!5592604))

(assert (= (and b!5592604 res!2372633) b!5592606))

(assert (= (and b!5592606 res!2372631) b!5592603))

(assert (= (and d!1767733 (not res!2372629)) b!5592602))

(declare-fun m!6572458 () Bool)

(assert (=> d!1767733 m!6572458))

(assert (=> d!1767733 m!6571284))

(declare-fun m!6572460 () Bool)

(assert (=> d!1767733 m!6572460))

(assert (=> d!1767733 m!6571282))

(assert (=> b!5592600 m!6571284))

(declare-fun m!6572462 () Bool)

(assert (=> b!5592600 m!6572462))

(assert (=> b!5592600 m!6572462))

(declare-fun m!6572464 () Bool)

(assert (=> b!5592600 m!6572464))

(assert (=> b!5592600 m!6571284))

(declare-fun m!6572466 () Bool)

(assert (=> b!5592600 m!6572466))

(assert (=> b!5592600 m!6572462))

(declare-fun m!6572468 () Bool)

(assert (=> b!5592600 m!6572468))

(assert (=> b!5592602 m!6572458))

(declare-fun m!6572470 () Bool)

(assert (=> b!5592599 m!6572470))

(declare-fun m!6572472 () Bool)

(assert (=> b!5592604 m!6572472))

(declare-fun m!6572474 () Bool)

(assert (=> b!5592604 m!6572474))

(assert (=> b!5592606 m!6572472))

(declare-fun m!6572476 () Bool)

(assert (=> b!5592606 m!6572476))

(assert (=> b!5592603 m!6572472))

(declare-fun m!6572478 () Bool)

(assert (=> b!5592603 m!6572478))

(assert (=> b!5591328 d!1767733))

(assert (=> d!1767141 d!1767549))

(declare-fun b!5592607 () Bool)

(declare-fun res!2372638 () Bool)

(declare-fun e!3450192 () Bool)

(assert (=> b!5592607 (=> (not res!2372638) (not e!3450192))))

(declare-fun call!419079 () Bool)

(assert (=> b!5592607 (= res!2372638 call!419079)))

(declare-fun e!3450190 () Bool)

(assert (=> b!5592607 (= e!3450190 e!3450192)))

(declare-fun b!5592608 () Bool)

(declare-fun e!3450195 () Bool)

(declare-fun call!419078 () Bool)

(assert (=> b!5592608 (= e!3450195 call!419078)))

(declare-fun bm!419073 () Bool)

(assert (=> bm!419073 (= call!419079 call!419078)))

(declare-fun b!5592609 () Bool)

(declare-fun e!3450193 () Bool)

(declare-fun e!3450196 () Bool)

(assert (=> b!5592609 (= e!3450193 e!3450196)))

(declare-fun c!980158 () Bool)

(assert (=> b!5592609 (= c!980158 ((_ is Star!15579) lt!2255607))))

(declare-fun b!5592611 () Bool)

(declare-fun res!2372634 () Bool)

(declare-fun e!3450191 () Bool)

(assert (=> b!5592611 (=> res!2372634 e!3450191)))

(assert (=> b!5592611 (= res!2372634 (not ((_ is Concat!24424) lt!2255607)))))

(assert (=> b!5592611 (= e!3450190 e!3450191)))

(declare-fun b!5592612 () Bool)

(declare-fun call!419080 () Bool)

(assert (=> b!5592612 (= e!3450192 call!419080)))

(declare-fun b!5592613 () Bool)

(declare-fun e!3450194 () Bool)

(assert (=> b!5592613 (= e!3450194 call!419080)))

(declare-fun bm!419074 () Bool)

(declare-fun c!980159 () Bool)

(assert (=> bm!419074 (= call!419080 (validRegex!7315 (ite c!980159 (regTwo!31671 lt!2255607) (regTwo!31670 lt!2255607))))))

(declare-fun b!5592614 () Bool)

(assert (=> b!5592614 (= e!3450191 e!3450194)))

(declare-fun res!2372635 () Bool)

(assert (=> b!5592614 (=> (not res!2372635) (not e!3450194))))

(assert (=> b!5592614 (= res!2372635 call!419079)))

(declare-fun b!5592615 () Bool)

(assert (=> b!5592615 (= e!3450196 e!3450190)))

(assert (=> b!5592615 (= c!980159 ((_ is Union!15579) lt!2255607))))

(declare-fun bm!419075 () Bool)

(assert (=> bm!419075 (= call!419078 (validRegex!7315 (ite c!980158 (reg!15908 lt!2255607) (ite c!980159 (regOne!31671 lt!2255607) (regOne!31670 lt!2255607)))))))

(declare-fun d!1767735 () Bool)

(declare-fun res!2372636 () Bool)

(assert (=> d!1767735 (=> res!2372636 e!3450193)))

(assert (=> d!1767735 (= res!2372636 ((_ is ElementMatch!15579) lt!2255607))))

(assert (=> d!1767735 (= (validRegex!7315 lt!2255607) e!3450193)))

(declare-fun b!5592610 () Bool)

(assert (=> b!5592610 (= e!3450196 e!3450195)))

(declare-fun res!2372637 () Bool)

(assert (=> b!5592610 (= res!2372637 (not (nullable!5611 (reg!15908 lt!2255607))))))

(assert (=> b!5592610 (=> (not res!2372637) (not e!3450195))))

(assert (= (and d!1767735 (not res!2372636)) b!5592609))

(assert (= (and b!5592609 c!980158) b!5592610))

(assert (= (and b!5592609 (not c!980158)) b!5592615))

(assert (= (and b!5592610 res!2372637) b!5592608))

(assert (= (and b!5592615 c!980159) b!5592607))

(assert (= (and b!5592615 (not c!980159)) b!5592611))

(assert (= (and b!5592607 res!2372638) b!5592612))

(assert (= (and b!5592611 (not res!2372634)) b!5592614))

(assert (= (and b!5592614 res!2372635) b!5592613))

(assert (= (or b!5592612 b!5592613) bm!419074))

(assert (= (or b!5592607 b!5592614) bm!419073))

(assert (= (or b!5592608 bm!419073) bm!419075))

(declare-fun m!6572480 () Bool)

(assert (=> bm!419074 m!6572480))

(declare-fun m!6572482 () Bool)

(assert (=> bm!419075 m!6572482))

(declare-fun m!6572484 () Bool)

(assert (=> b!5592610 m!6572484))

(assert (=> d!1767169 d!1767735))

(declare-fun d!1767737 () Bool)

(declare-fun res!2372639 () Bool)

(declare-fun e!3450197 () Bool)

(assert (=> d!1767737 (=> res!2372639 e!3450197)))

(assert (=> d!1767737 (= res!2372639 ((_ is Nil!62912) (unfocusZipperList!1007 zl!343)))))

(assert (=> d!1767737 (= (forall!14745 (unfocusZipperList!1007 zl!343) lambda!300107) e!3450197)))

(declare-fun b!5592616 () Bool)

(declare-fun e!3450198 () Bool)

(assert (=> b!5592616 (= e!3450197 e!3450198)))

(declare-fun res!2372640 () Bool)

(assert (=> b!5592616 (=> (not res!2372640) (not e!3450198))))

(assert (=> b!5592616 (= res!2372640 (dynLambda!24607 lambda!300107 (h!69360 (unfocusZipperList!1007 zl!343))))))

(declare-fun b!5592617 () Bool)

(assert (=> b!5592617 (= e!3450198 (forall!14745 (t!376314 (unfocusZipperList!1007 zl!343)) lambda!300107))))

(assert (= (and d!1767737 (not res!2372639)) b!5592616))

(assert (= (and b!5592616 res!2372640) b!5592617))

(declare-fun b_lambda!211919 () Bool)

(assert (=> (not b_lambda!211919) (not b!5592616)))

(declare-fun m!6572486 () Bool)

(assert (=> b!5592616 m!6572486))

(declare-fun m!6572488 () Bool)

(assert (=> b!5592617 m!6572488))

(assert (=> d!1767169 d!1767737))

(declare-fun d!1767739 () Bool)

(assert (=> d!1767739 (= ($colon$colon!1642 (exprs!5463 lt!2255535) (ite (or c!979844 c!979846) (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (regTwo!31671 (regOne!31670 r!7292)))) (Cons!62912 (ite (or c!979844 c!979846) (regTwo!31670 (regTwo!31671 (regOne!31670 r!7292))) (regTwo!31671 (regOne!31670 r!7292))) (exprs!5463 lt!2255535)))))

(assert (=> bm!418834 d!1767739))

(declare-fun d!1767741 () Bool)

(declare-fun c!980160 () Bool)

(assert (=> d!1767741 (= c!980160 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3450199 () Bool)

(assert (=> d!1767741 (= (matchZipper!1717 (derivationStepZipper!1678 lt!2255547 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3450199)))

(declare-fun b!5592618 () Bool)

(assert (=> b!5592618 (= e!3450199 (nullableZipper!1574 (derivationStepZipper!1678 lt!2255547 (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592619 () Bool)

(assert (=> b!5592619 (= e!3450199 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 lt!2255547 (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767741 c!980160) b!5592618))

(assert (= (and d!1767741 (not c!980160)) b!5592619))

(assert (=> d!1767741 m!6571176))

(assert (=> d!1767741 m!6572060))

(assert (=> b!5592618 m!6571204))

(declare-fun m!6572490 () Bool)

(assert (=> b!5592618 m!6572490))

(assert (=> b!5592619 m!6571176))

(assert (=> b!5592619 m!6572064))

(assert (=> b!5592619 m!6571204))

(assert (=> b!5592619 m!6572064))

(declare-fun m!6572492 () Bool)

(assert (=> b!5592619 m!6572492))

(assert (=> b!5592619 m!6571176))

(assert (=> b!5592619 m!6572068))

(assert (=> b!5592619 m!6572492))

(assert (=> b!5592619 m!6572068))

(declare-fun m!6572494 () Bool)

(assert (=> b!5592619 m!6572494))

(assert (=> b!5591210 d!1767741))

(declare-fun bs!1293172 () Bool)

(declare-fun d!1767743 () Bool)

(assert (= bs!1293172 (and d!1767743 d!1767679)))

(declare-fun lambda!300202 () Int)

(assert (=> bs!1293172 (= lambda!300202 lambda!300199)))

(declare-fun bs!1293173 () Bool)

(assert (= bs!1293173 (and d!1767743 b!5590764)))

(assert (=> bs!1293173 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300202 lambda!300076))))

(declare-fun bs!1293174 () Bool)

(assert (= bs!1293174 (and d!1767743 d!1767663)))

(assert (=> bs!1293174 (= lambda!300202 lambda!300196)))

(declare-fun bs!1293175 () Bool)

(assert (= bs!1293175 (and d!1767743 d!1767585)))

(assert (=> bs!1293175 (= lambda!300202 lambda!300183)))

(declare-fun bs!1293176 () Bool)

(assert (= bs!1293176 (and d!1767743 d!1767593)))

(assert (=> bs!1293176 (= (= (head!11927 (t!376315 s!2326)) (head!11927 s!2326)) (= lambda!300202 lambda!300185))))

(declare-fun bs!1293177 () Bool)

(assert (= bs!1293177 (and d!1767743 d!1767599)))

(assert (=> bs!1293177 (= lambda!300202 lambda!300186)))

(declare-fun bs!1293178 () Bool)

(assert (= bs!1293178 (and d!1767743 d!1767559)))

(assert (=> bs!1293178 (= lambda!300202 lambda!300180)))

(declare-fun bs!1293179 () Bool)

(assert (= bs!1293179 (and d!1767743 d!1767647)))

(assert (=> bs!1293179 (= lambda!300202 lambda!300191)))

(assert (=> d!1767743 true))

(assert (=> d!1767743 (= (derivationStepZipper!1678 lt!2255547 (head!11927 (t!376315 s!2326))) (flatMap!1192 lt!2255547 lambda!300202))))

(declare-fun bs!1293180 () Bool)

(assert (= bs!1293180 d!1767743))

(declare-fun m!6572496 () Bool)

(assert (=> bs!1293180 m!6572496))

(assert (=> b!5591210 d!1767743))

(assert (=> b!5591210 d!1767561))

(assert (=> b!5591210 d!1767563))

(assert (=> bs!1292822 d!1767157))

(declare-fun d!1767745 () Bool)

(assert (=> d!1767745 (= (Exists!2679 lambda!300118) (choose!42403 lambda!300118))))

(declare-fun bs!1293181 () Bool)

(assert (= bs!1293181 d!1767745))

(declare-fun m!6572498 () Bool)

(assert (=> bs!1293181 m!6572498))

(assert (=> d!1767181 d!1767745))

(declare-fun d!1767747 () Bool)

(assert (=> d!1767747 (= (Exists!2679 lambda!300119) (choose!42403 lambda!300119))))

(declare-fun bs!1293182 () Bool)

(assert (= bs!1293182 d!1767747))

(declare-fun m!6572500 () Bool)

(assert (=> bs!1293182 m!6572500))

(assert (=> d!1767181 d!1767747))

(declare-fun bs!1293183 () Bool)

(declare-fun d!1767749 () Bool)

(assert (= bs!1293183 (and d!1767749 b!5592464)))

(declare-fun lambda!300207 () Int)

(assert (=> bs!1293183 (not (= lambda!300207 lambda!300198))))

(declare-fun bs!1293184 () Bool)

(assert (= bs!1293184 (and d!1767749 b!5590791)))

(assert (=> bs!1293184 (not (= lambda!300207 lambda!300075))))

(declare-fun bs!1293185 () Bool)

(assert (= bs!1293185 (and d!1767749 b!5592458)))

(assert (=> bs!1293185 (not (= lambda!300207 lambda!300197))))

(declare-fun bs!1293186 () Bool)

(assert (= bs!1293186 (and d!1767749 d!1767181)))

(assert (=> bs!1293186 (not (= lambda!300207 lambda!300119))))

(declare-fun bs!1293187 () Bool)

(assert (= bs!1293187 (and d!1767749 d!1767179)))

(assert (=> bs!1293187 (= lambda!300207 lambda!300113)))

(assert (=> bs!1293184 (= lambda!300207 lambda!300074)))

(declare-fun bs!1293188 () Bool)

(assert (= bs!1293188 (and d!1767749 b!5591481)))

(assert (=> bs!1293188 (not (= lambda!300207 lambda!300131))))

(assert (=> bs!1293186 (= lambda!300207 lambda!300118)))

(declare-fun bs!1293189 () Bool)

(assert (= bs!1293189 (and d!1767749 b!5591487)))

(assert (=> bs!1293189 (not (= lambda!300207 lambda!300132))))

(declare-fun bs!1293190 () Bool)

(assert (= bs!1293190 (and d!1767749 d!1767653)))

(assert (=> bs!1293190 (= lambda!300207 lambda!300194)))

(assert (=> d!1767749 true))

(assert (=> d!1767749 true))

(assert (=> d!1767749 true))

(declare-fun lambda!300208 () Int)

(assert (=> bs!1293183 (= (and (= (regOne!31670 r!7292) (regOne!31670 (regOne!31671 r!7292))) (= (regTwo!31670 r!7292) (regTwo!31670 (regOne!31671 r!7292)))) (= lambda!300208 lambda!300198))))

(assert (=> bs!1293184 (= lambda!300208 lambda!300075)))

(assert (=> bs!1293185 (not (= lambda!300208 lambda!300197))))

(assert (=> bs!1293186 (= lambda!300208 lambda!300119)))

(assert (=> bs!1293187 (not (= lambda!300208 lambda!300113))))

(assert (=> bs!1293184 (not (= lambda!300208 lambda!300074))))

(declare-fun bs!1293191 () Bool)

(assert (= bs!1293191 d!1767749))

(assert (=> bs!1293191 (not (= lambda!300208 lambda!300207))))

(assert (=> bs!1293188 (not (= lambda!300208 lambda!300131))))

(assert (=> bs!1293186 (not (= lambda!300208 lambda!300118))))

(assert (=> bs!1293189 (= lambda!300208 lambda!300132)))

(assert (=> bs!1293190 (not (= lambda!300208 lambda!300194))))

(assert (=> d!1767749 true))

(assert (=> d!1767749 true))

(assert (=> d!1767749 true))

(assert (=> d!1767749 (= (Exists!2679 lambda!300207) (Exists!2679 lambda!300208))))

(assert (=> d!1767749 true))

(declare-fun _$90!1325 () Unit!155724)

(assert (=> d!1767749 (= (choose!42405 (regOne!31670 r!7292) (regTwo!31670 r!7292) s!2326) _$90!1325)))

(declare-fun m!6572502 () Bool)

(assert (=> bs!1293191 m!6572502))

(declare-fun m!6572504 () Bool)

(assert (=> bs!1293191 m!6572504))

(assert (=> d!1767181 d!1767749))

(assert (=> d!1767181 d!1767649))

(assert (=> b!5591367 d!1767139))

(declare-fun d!1767751 () Bool)

(assert (=> d!1767751 (= (nullable!5611 (reg!15908 r!7292)) (nullableFct!1720 (reg!15908 r!7292)))))

(declare-fun bs!1293192 () Bool)

(assert (= bs!1293192 d!1767751))

(declare-fun m!6572506 () Bool)

(assert (=> bs!1293192 m!6572506))

(assert (=> b!5591413 d!1767751))

(declare-fun d!1767753 () Bool)

(assert (=> d!1767753 true))

(declare-fun setRes!37278 () Bool)

(assert (=> d!1767753 setRes!37278))

(declare-fun condSetEmpty!37278 () Bool)

(declare-fun res!2372649 () (InoxSet Context!9926))

(assert (=> d!1767753 (= condSetEmpty!37278 (= res!2372649 ((as const (Array Context!9926 Bool)) false)))))

(assert (=> d!1767753 (= (choose!42401 z!1189 lambda!300076) res!2372649)))

(declare-fun setIsEmpty!37278 () Bool)

(assert (=> setIsEmpty!37278 setRes!37278))

(declare-fun tp!1546627 () Bool)

(declare-fun setElem!37278 () Context!9926)

(declare-fun e!3450204 () Bool)

(declare-fun setNonEmpty!37278 () Bool)

(assert (=> setNonEmpty!37278 (= setRes!37278 (and tp!1546627 (inv!82194 setElem!37278) e!3450204))))

(declare-fun setRest!37278 () (InoxSet Context!9926))

(assert (=> setNonEmpty!37278 (= res!2372649 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) setElem!37278 true) setRest!37278))))

(declare-fun b!5592628 () Bool)

(declare-fun tp!1546626 () Bool)

(assert (=> b!5592628 (= e!3450204 tp!1546626)))

(assert (= (and d!1767753 condSetEmpty!37278) setIsEmpty!37278))

(assert (= (and d!1767753 (not condSetEmpty!37278)) setNonEmpty!37278))

(assert (= setNonEmpty!37278 b!5592628))

(declare-fun m!6572508 () Bool)

(assert (=> setNonEmpty!37278 m!6572508))

(assert (=> d!1767151 d!1767753))

(declare-fun bm!419076 () Bool)

(declare-fun call!419082 () (InoxSet Context!9926))

(declare-fun call!419083 () (InoxSet Context!9926))

(assert (=> bm!419076 (= call!419082 call!419083)))

(declare-fun c!980162 () Bool)

(declare-fun d!1767755 () Bool)

(assert (=> d!1767755 (= c!980162 (and ((_ is ElementMatch!15579) (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (= (c!979652 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (h!69361 s!2326))))))

(declare-fun e!3450205 () (InoxSet Context!9926))

(assert (=> d!1767755 (= (derivationStepZipperDown!921 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))) (ite c!979786 lt!2255535 (Context!9927 call!418824)) (h!69361 s!2326)) e!3450205)))

(declare-fun b!5592629 () Bool)

(declare-fun e!3450208 () (InoxSet Context!9926))

(assert (=> b!5592629 (= e!3450208 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592630 () Bool)

(declare-fun e!3450209 () (InoxSet Context!9926))

(assert (=> b!5592630 (= e!3450205 e!3450209)))

(declare-fun c!980161 () Bool)

(assert (=> b!5592630 (= c!980161 ((_ is Union!15579) (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun b!5592631 () Bool)

(assert (=> b!5592631 (= e!3450205 (store ((as const (Array Context!9926 Bool)) false) (ite c!979786 lt!2255535 (Context!9927 call!418824)) true))))

(declare-fun b!5592632 () Bool)

(declare-fun e!3450210 () (InoxSet Context!9926))

(assert (=> b!5592632 (= e!3450210 call!419082)))

(declare-fun c!980163 () Bool)

(declare-fun bm!419077 () Bool)

(declare-fun call!419086 () List!63036)

(declare-fun c!980165 () Bool)

(assert (=> bm!419077 (= call!419086 ($colon$colon!1642 (exprs!5463 (ite c!979786 lt!2255535 (Context!9927 call!418824))) (ite (or c!980163 c!980165) (regTwo!31670 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))))))

(declare-fun b!5592633 () Bool)

(assert (=> b!5592633 (= e!3450208 call!419082)))

(declare-fun bm!419078 () Bool)

(declare-fun call!419081 () List!63036)

(assert (=> bm!419078 (= call!419081 call!419086)))

(declare-fun bm!419079 () Bool)

(declare-fun call!419084 () (InoxSet Context!9926))

(assert (=> bm!419079 (= call!419083 call!419084)))

(declare-fun b!5592634 () Bool)

(declare-fun e!3450206 () Bool)

(assert (=> b!5592634 (= c!980163 e!3450206)))

(declare-fun res!2372650 () Bool)

(assert (=> b!5592634 (=> (not res!2372650) (not e!3450206))))

(assert (=> b!5592634 (= res!2372650 ((_ is Concat!24424) (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun e!3450207 () (InoxSet Context!9926))

(assert (=> b!5592634 (= e!3450209 e!3450207)))

(declare-fun b!5592635 () Bool)

(declare-fun c!980164 () Bool)

(assert (=> b!5592635 (= c!980164 ((_ is Star!15579) (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(assert (=> b!5592635 (= e!3450210 e!3450208)))

(declare-fun bm!419080 () Bool)

(assert (=> bm!419080 (= call!419084 (derivationStepZipperDown!921 (ite c!980161 (regOne!31671 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (ite c!980163 (regTwo!31670 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (ite c!980165 (regOne!31670 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (reg!15908 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))))) (ite (or c!980161 c!980163) (ite c!979786 lt!2255535 (Context!9927 call!418824)) (Context!9927 call!419081)) (h!69361 s!2326)))))

(declare-fun b!5592636 () Bool)

(declare-fun call!419085 () (InoxSet Context!9926))

(assert (=> b!5592636 (= e!3450209 ((_ map or) call!419084 call!419085))))

(declare-fun b!5592637 () Bool)

(assert (=> b!5592637 (= e!3450207 e!3450210)))

(assert (=> b!5592637 (= c!980165 ((_ is Concat!24424) (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))))))

(declare-fun bm!419081 () Bool)

(assert (=> bm!419081 (= call!419085 (derivationStepZipperDown!921 (ite c!980161 (regTwo!31671 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343)))))) (regOne!31670 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))) (ite c!980161 (ite c!979786 lt!2255535 (Context!9927 call!418824)) (Context!9927 call!419086)) (h!69361 s!2326)))))

(declare-fun b!5592638 () Bool)

(assert (=> b!5592638 (= e!3450207 ((_ map or) call!419085 call!419083))))

(declare-fun b!5592639 () Bool)

(assert (=> b!5592639 (= e!3450206 (nullable!5611 (regOne!31670 (ite c!979786 (regTwo!31671 (h!69360 (exprs!5463 (h!69362 zl!343)))) (regOne!31670 (h!69360 (exprs!5463 (h!69362 zl!343))))))))))

(assert (= (and d!1767755 c!980162) b!5592631))

(assert (= (and d!1767755 (not c!980162)) b!5592630))

(assert (= (and b!5592630 c!980161) b!5592636))

(assert (= (and b!5592630 (not c!980161)) b!5592634))

(assert (= (and b!5592634 res!2372650) b!5592639))

(assert (= (and b!5592634 c!980163) b!5592638))

(assert (= (and b!5592634 (not c!980163)) b!5592637))

(assert (= (and b!5592637 c!980165) b!5592632))

(assert (= (and b!5592637 (not c!980165)) b!5592635))

(assert (= (and b!5592635 c!980164) b!5592633))

(assert (= (and b!5592635 (not c!980164)) b!5592629))

(assert (= (or b!5592632 b!5592633) bm!419078))

(assert (= (or b!5592632 b!5592633) bm!419076))

(assert (= (or b!5592638 bm!419078) bm!419077))

(assert (= (or b!5592638 bm!419076) bm!419079))

(assert (= (or b!5592636 b!5592638) bm!419081))

(assert (= (or b!5592636 bm!419079) bm!419080))

(declare-fun m!6572510 () Bool)

(assert (=> b!5592639 m!6572510))

(declare-fun m!6572512 () Bool)

(assert (=> b!5592631 m!6572512))

(declare-fun m!6572514 () Bool)

(assert (=> bm!419080 m!6572514))

(declare-fun m!6572516 () Bool)

(assert (=> bm!419081 m!6572516))

(declare-fun m!6572518 () Bool)

(assert (=> bm!419077 m!6572518))

(assert (=> bm!418819 d!1767755))

(declare-fun d!1767757 () Bool)

(assert (=> d!1767757 (= (nullable!5611 r!7292) (nullableFct!1720 r!7292))))

(declare-fun bs!1293193 () Bool)

(assert (= bs!1293193 d!1767757))

(declare-fun m!6572520 () Bool)

(assert (=> bs!1293193 m!6572520))

(assert (=> b!5591527 d!1767757))

(declare-fun d!1767759 () Bool)

(declare-fun c!980166 () Bool)

(assert (=> d!1767759 (= c!980166 (isEmpty!34734 (tail!11022 (t!376315 s!2326))))))

(declare-fun e!3450211 () Bool)

(assert (=> d!1767759 (= (matchZipper!1717 (derivationStepZipper!1678 lt!2255521 (head!11927 (t!376315 s!2326))) (tail!11022 (t!376315 s!2326))) e!3450211)))

(declare-fun b!5592640 () Bool)

(assert (=> b!5592640 (= e!3450211 (nullableZipper!1574 (derivationStepZipper!1678 lt!2255521 (head!11927 (t!376315 s!2326)))))))

(declare-fun b!5592641 () Bool)

(assert (=> b!5592641 (= e!3450211 (matchZipper!1717 (derivationStepZipper!1678 (derivationStepZipper!1678 lt!2255521 (head!11927 (t!376315 s!2326))) (head!11927 (tail!11022 (t!376315 s!2326)))) (tail!11022 (tail!11022 (t!376315 s!2326)))))))

(assert (= (and d!1767759 c!980166) b!5592640))

(assert (= (and d!1767759 (not c!980166)) b!5592641))

(assert (=> d!1767759 m!6571176))

(assert (=> d!1767759 m!6572060))

(assert (=> b!5592640 m!6571182))

(declare-fun m!6572522 () Bool)

(assert (=> b!5592640 m!6572522))

(assert (=> b!5592641 m!6571176))

(assert (=> b!5592641 m!6572064))

(assert (=> b!5592641 m!6571182))

(assert (=> b!5592641 m!6572064))

(declare-fun m!6572524 () Bool)

(assert (=> b!5592641 m!6572524))

(assert (=> b!5592641 m!6571176))

(assert (=> b!5592641 m!6572068))

(assert (=> b!5592641 m!6572524))

(assert (=> b!5592641 m!6572068))

(declare-fun m!6572526 () Bool)

(assert (=> b!5592641 m!6572526))

(assert (=> b!5591201 d!1767759))

(declare-fun bs!1293194 () Bool)

(declare-fun d!1767761 () Bool)

(assert (= bs!1293194 (and d!1767761 d!1767679)))

(declare-fun lambda!300209 () Int)

(assert (=> bs!1293194 (= lambda!300209 lambda!300199)))

(declare-fun bs!1293195 () Bool)

(assert (= bs!1293195 (and d!1767761 b!5590764)))

(assert (=> bs!1293195 (= (= (head!11927 (t!376315 s!2326)) (h!69361 s!2326)) (= lambda!300209 lambda!300076))))

(declare-fun bs!1293196 () Bool)

(assert (= bs!1293196 (and d!1767761 d!1767585)))

(assert (=> bs!1293196 (= lambda!300209 lambda!300183)))

(declare-fun bs!1293197 () Bool)

(assert (= bs!1293197 (and d!1767761 d!1767593)))

(assert (=> bs!1293197 (= (= (head!11927 (t!376315 s!2326)) (head!11927 s!2326)) (= lambda!300209 lambda!300185))))

(declare-fun bs!1293198 () Bool)

(assert (= bs!1293198 (and d!1767761 d!1767599)))

(assert (=> bs!1293198 (= lambda!300209 lambda!300186)))

(declare-fun bs!1293199 () Bool)

(assert (= bs!1293199 (and d!1767761 d!1767663)))

(assert (=> bs!1293199 (= lambda!300209 lambda!300196)))

(declare-fun bs!1293200 () Bool)

(assert (= bs!1293200 (and d!1767761 d!1767743)))

(assert (=> bs!1293200 (= lambda!300209 lambda!300202)))

(declare-fun bs!1293201 () Bool)

(assert (= bs!1293201 (and d!1767761 d!1767559)))

(assert (=> bs!1293201 (= lambda!300209 lambda!300180)))

(declare-fun bs!1293202 () Bool)

(assert (= bs!1293202 (and d!1767761 d!1767647)))

(assert (=> bs!1293202 (= lambda!300209 lambda!300191)))

(assert (=> d!1767761 true))

(assert (=> d!1767761 (= (derivationStepZipper!1678 lt!2255521 (head!11927 (t!376315 s!2326))) (flatMap!1192 lt!2255521 lambda!300209))))

(declare-fun bs!1293203 () Bool)

(assert (= bs!1293203 d!1767761))

(declare-fun m!6572528 () Bool)

(assert (=> bs!1293203 m!6572528))

(assert (=> b!5591201 d!1767761))

(assert (=> b!5591201 d!1767561))

(assert (=> b!5591201 d!1767563))

(declare-fun d!1767763 () Bool)

(assert (=> d!1767763 (= (isEmpty!34731 (t!376314 (unfocusZipperList!1007 zl!343))) ((_ is Nil!62912) (t!376314 (unfocusZipperList!1007 zl!343))))))

(assert (=> b!5591292 d!1767763))

(declare-fun bm!419082 () Bool)

(declare-fun call!419088 () Bool)

(declare-fun c!980167 () Bool)

(assert (=> bm!419082 (= call!419088 (nullable!5611 (ite c!980167 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regTwo!31670 (regOne!31671 (regOne!31670 r!7292))))))))

(declare-fun d!1767765 () Bool)

(declare-fun res!2372653 () Bool)

(declare-fun e!3450213 () Bool)

(assert (=> d!1767765 (=> res!2372653 e!3450213)))

(assert (=> d!1767765 (= res!2372653 ((_ is EmptyExpr!15579) (regOne!31671 (regOne!31670 r!7292))))))

(assert (=> d!1767765 (= (nullableFct!1720 (regOne!31671 (regOne!31670 r!7292))) e!3450213)))

(declare-fun b!5592642 () Bool)

(declare-fun e!3450214 () Bool)

(assert (=> b!5592642 (= e!3450214 call!419088)))

(declare-fun b!5592643 () Bool)

(declare-fun e!3450216 () Bool)

(declare-fun e!3450215 () Bool)

(assert (=> b!5592643 (= e!3450216 e!3450215)))

(declare-fun res!2372652 () Bool)

(declare-fun call!419087 () Bool)

(assert (=> b!5592643 (= res!2372652 call!419087)))

(assert (=> b!5592643 (=> res!2372652 e!3450215)))

(declare-fun b!5592644 () Bool)

(declare-fun e!3450217 () Bool)

(assert (=> b!5592644 (= e!3450213 e!3450217)))

(declare-fun res!2372654 () Bool)

(assert (=> b!5592644 (=> (not res!2372654) (not e!3450217))))

(assert (=> b!5592644 (= res!2372654 (and (not ((_ is EmptyLang!15579) (regOne!31671 (regOne!31670 r!7292)))) (not ((_ is ElementMatch!15579) (regOne!31671 (regOne!31670 r!7292))))))))

(declare-fun bm!419083 () Bool)

(assert (=> bm!419083 (= call!419087 (nullable!5611 (ite c!980167 (regOne!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))))))

(declare-fun b!5592645 () Bool)

(assert (=> b!5592645 (= e!3450215 call!419088)))

(declare-fun b!5592646 () Bool)

(assert (=> b!5592646 (= e!3450216 e!3450214)))

(declare-fun res!2372651 () Bool)

(assert (=> b!5592646 (= res!2372651 call!419087)))

(assert (=> b!5592646 (=> (not res!2372651) (not e!3450214))))

(declare-fun b!5592647 () Bool)

(declare-fun e!3450212 () Bool)

(assert (=> b!5592647 (= e!3450212 e!3450216)))

(assert (=> b!5592647 (= c!980167 ((_ is Union!15579) (regOne!31671 (regOne!31670 r!7292))))))

(declare-fun b!5592648 () Bool)

(assert (=> b!5592648 (= e!3450217 e!3450212)))

(declare-fun res!2372655 () Bool)

(assert (=> b!5592648 (=> res!2372655 e!3450212)))

(assert (=> b!5592648 (= res!2372655 ((_ is Star!15579) (regOne!31671 (regOne!31670 r!7292))))))

(assert (= (and d!1767765 (not res!2372653)) b!5592644))

(assert (= (and b!5592644 res!2372654) b!5592648))

(assert (= (and b!5592648 (not res!2372655)) b!5592647))

(assert (= (and b!5592647 c!980167) b!5592643))

(assert (= (and b!5592647 (not c!980167)) b!5592646))

(assert (= (and b!5592643 (not res!2372652)) b!5592645))

(assert (= (and b!5592646 res!2372651) b!5592642))

(assert (= (or b!5592645 b!5592642) bm!419082))

(assert (= (or b!5592643 b!5592646) bm!419083))

(declare-fun m!6572530 () Bool)

(assert (=> bm!419082 m!6572530))

(declare-fun m!6572532 () Bool)

(assert (=> bm!419083 m!6572532))

(assert (=> d!1767211 d!1767765))

(declare-fun b!5592649 () Bool)

(declare-fun res!2372660 () Bool)

(declare-fun e!3450220 () Bool)

(assert (=> b!5592649 (=> (not res!2372660) (not e!3450220))))

(declare-fun call!419090 () Bool)

(assert (=> b!5592649 (= res!2372660 call!419090)))

(declare-fun e!3450218 () Bool)

(assert (=> b!5592649 (= e!3450218 e!3450220)))

(declare-fun b!5592650 () Bool)

(declare-fun e!3450223 () Bool)

(declare-fun call!419089 () Bool)

(assert (=> b!5592650 (= e!3450223 call!419089)))

(declare-fun bm!419084 () Bool)

(assert (=> bm!419084 (= call!419090 call!419089)))

(declare-fun b!5592651 () Bool)

(declare-fun e!3450221 () Bool)

(declare-fun e!3450224 () Bool)

(assert (=> b!5592651 (= e!3450221 e!3450224)))

(declare-fun c!980168 () Bool)

(assert (=> b!5592651 (= c!980168 ((_ is Star!15579) lt!2255628))))

(declare-fun b!5592653 () Bool)

(declare-fun res!2372656 () Bool)

(declare-fun e!3450219 () Bool)

(assert (=> b!5592653 (=> res!2372656 e!3450219)))

(assert (=> b!5592653 (= res!2372656 (not ((_ is Concat!24424) lt!2255628)))))

(assert (=> b!5592653 (= e!3450218 e!3450219)))

(declare-fun b!5592654 () Bool)

(declare-fun call!419091 () Bool)

(assert (=> b!5592654 (= e!3450220 call!419091)))

(declare-fun b!5592655 () Bool)

(declare-fun e!3450222 () Bool)

(assert (=> b!5592655 (= e!3450222 call!419091)))

(declare-fun bm!419085 () Bool)

(declare-fun c!980169 () Bool)

(assert (=> bm!419085 (= call!419091 (validRegex!7315 (ite c!980169 (regTwo!31671 lt!2255628) (regTwo!31670 lt!2255628))))))

(declare-fun b!5592656 () Bool)

(assert (=> b!5592656 (= e!3450219 e!3450222)))

(declare-fun res!2372657 () Bool)

(assert (=> b!5592656 (=> (not res!2372657) (not e!3450222))))

(assert (=> b!5592656 (= res!2372657 call!419090)))

(declare-fun b!5592657 () Bool)

(assert (=> b!5592657 (= e!3450224 e!3450218)))

(assert (=> b!5592657 (= c!980169 ((_ is Union!15579) lt!2255628))))

(declare-fun bm!419086 () Bool)

(assert (=> bm!419086 (= call!419089 (validRegex!7315 (ite c!980168 (reg!15908 lt!2255628) (ite c!980169 (regOne!31671 lt!2255628) (regOne!31670 lt!2255628)))))))

(declare-fun d!1767767 () Bool)

(declare-fun res!2372658 () Bool)

(assert (=> d!1767767 (=> res!2372658 e!3450221)))

(assert (=> d!1767767 (= res!2372658 ((_ is ElementMatch!15579) lt!2255628))))

(assert (=> d!1767767 (= (validRegex!7315 lt!2255628) e!3450221)))

(declare-fun b!5592652 () Bool)

(assert (=> b!5592652 (= e!3450224 e!3450223)))

(declare-fun res!2372659 () Bool)

(assert (=> b!5592652 (= res!2372659 (not (nullable!5611 (reg!15908 lt!2255628))))))

(assert (=> b!5592652 (=> (not res!2372659) (not e!3450223))))

(assert (= (and d!1767767 (not res!2372658)) b!5592651))

(assert (= (and b!5592651 c!980168) b!5592652))

(assert (= (and b!5592651 (not c!980168)) b!5592657))

(assert (= (and b!5592652 res!2372659) b!5592650))

(assert (= (and b!5592657 c!980169) b!5592649))

(assert (= (and b!5592657 (not c!980169)) b!5592653))

(assert (= (and b!5592649 res!2372660) b!5592654))

(assert (= (and b!5592653 (not res!2372656)) b!5592656))

(assert (= (and b!5592656 res!2372657) b!5592655))

(assert (= (or b!5592654 b!5592655) bm!419085))

(assert (= (or b!5592649 b!5592656) bm!419084))

(assert (= (or b!5592650 bm!419084) bm!419086))

(declare-fun m!6572534 () Bool)

(assert (=> bm!419085 m!6572534))

(declare-fun m!6572536 () Bool)

(assert (=> bm!419086 m!6572536))

(declare-fun m!6572538 () Bool)

(assert (=> b!5592652 m!6572538))

(assert (=> d!1767185 d!1767767))

(declare-fun d!1767769 () Bool)

(declare-fun res!2372661 () Bool)

(declare-fun e!3450225 () Bool)

(assert (=> d!1767769 (=> res!2372661 e!3450225)))

(assert (=> d!1767769 (= res!2372661 ((_ is Nil!62912) (exprs!5463 (h!69362 zl!343))))))

(assert (=> d!1767769 (= (forall!14745 (exprs!5463 (h!69362 zl!343)) lambda!300122) e!3450225)))

(declare-fun b!5592658 () Bool)

(declare-fun e!3450226 () Bool)

(assert (=> b!5592658 (= e!3450225 e!3450226)))

(declare-fun res!2372662 () Bool)

(assert (=> b!5592658 (=> (not res!2372662) (not e!3450226))))

(assert (=> b!5592658 (= res!2372662 (dynLambda!24607 lambda!300122 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun b!5592659 () Bool)

(assert (=> b!5592659 (= e!3450226 (forall!14745 (t!376314 (exprs!5463 (h!69362 zl!343))) lambda!300122))))

(assert (= (and d!1767769 (not res!2372661)) b!5592658))

(assert (= (and b!5592658 res!2372662) b!5592659))

(declare-fun b_lambda!211921 () Bool)

(assert (=> (not b_lambda!211921) (not b!5592658)))

(declare-fun m!6572540 () Bool)

(assert (=> b!5592658 m!6572540))

(declare-fun m!6572542 () Bool)

(assert (=> b!5592659 m!6572542))

(assert (=> d!1767185 d!1767769))

(declare-fun d!1767771 () Bool)

(assert (=> d!1767771 (= (isEmpty!34731 (tail!11023 (exprs!5463 (h!69362 zl!343)))) ((_ is Nil!62912) (tail!11023 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> b!5591371 d!1767771))

(declare-fun d!1767773 () Bool)

(assert (=> d!1767773 (= (tail!11023 (exprs!5463 (h!69362 zl!343))) (t!376314 (exprs!5463 (h!69362 zl!343))))))

(assert (=> b!5591371 d!1767773))

(declare-fun b!5592660 () Bool)

(declare-fun res!2372667 () Bool)

(declare-fun e!3450229 () Bool)

(assert (=> b!5592660 (=> (not res!2372667) (not e!3450229))))

(declare-fun call!419093 () Bool)

(assert (=> b!5592660 (= res!2372667 call!419093)))

(declare-fun e!3450227 () Bool)

(assert (=> b!5592660 (= e!3450227 e!3450229)))

(declare-fun b!5592661 () Bool)

(declare-fun e!3450232 () Bool)

(declare-fun call!419092 () Bool)

(assert (=> b!5592661 (= e!3450232 call!419092)))

(declare-fun bm!419087 () Bool)

(assert (=> bm!419087 (= call!419093 call!419092)))

(declare-fun b!5592662 () Bool)

(declare-fun e!3450230 () Bool)

(declare-fun e!3450233 () Bool)

(assert (=> b!5592662 (= e!3450230 e!3450233)))

(declare-fun c!980170 () Bool)

(assert (=> b!5592662 (= c!980170 ((_ is Star!15579) (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))))))

(declare-fun b!5592664 () Bool)

(declare-fun res!2372663 () Bool)

(declare-fun e!3450228 () Bool)

(assert (=> b!5592664 (=> res!2372663 e!3450228)))

(assert (=> b!5592664 (= res!2372663 (not ((_ is Concat!24424) (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292)))))))

(assert (=> b!5592664 (= e!3450227 e!3450228)))

(declare-fun b!5592665 () Bool)

(declare-fun call!419094 () Bool)

(assert (=> b!5592665 (= e!3450229 call!419094)))

(declare-fun b!5592666 () Bool)

(declare-fun e!3450231 () Bool)

(assert (=> b!5592666 (= e!3450231 call!419094)))

(declare-fun c!980171 () Bool)

(declare-fun bm!419088 () Bool)

(assert (=> bm!419088 (= call!419094 (validRegex!7315 (ite c!980171 (regTwo!31671 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))) (regTwo!31670 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))))))))

(declare-fun b!5592667 () Bool)

(assert (=> b!5592667 (= e!3450228 e!3450231)))

(declare-fun res!2372664 () Bool)

(assert (=> b!5592667 (=> (not res!2372664) (not e!3450231))))

(assert (=> b!5592667 (= res!2372664 call!419093)))

(declare-fun b!5592668 () Bool)

(assert (=> b!5592668 (= e!3450233 e!3450227)))

(assert (=> b!5592668 (= c!980171 ((_ is Union!15579) (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))))))

(declare-fun bm!419089 () Bool)

(assert (=> bm!419089 (= call!419092 (validRegex!7315 (ite c!980170 (reg!15908 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))) (ite c!980171 (regOne!31671 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))) (regOne!31670 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292)))))))))

(declare-fun d!1767775 () Bool)

(declare-fun res!2372665 () Bool)

(assert (=> d!1767775 (=> res!2372665 e!3450230)))

(assert (=> d!1767775 (= res!2372665 ((_ is ElementMatch!15579) (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))))))

(assert (=> d!1767775 (= (validRegex!7315 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))) e!3450230)))

(declare-fun b!5592663 () Bool)

(assert (=> b!5592663 (= e!3450233 e!3450232)))

(declare-fun res!2372666 () Bool)

(assert (=> b!5592663 (= res!2372666 (not (nullable!5611 (reg!15908 (ite c!979840 (regTwo!31671 r!7292) (regTwo!31670 r!7292))))))))

(assert (=> b!5592663 (=> (not res!2372666) (not e!3450232))))

(assert (= (and d!1767775 (not res!2372665)) b!5592662))

(assert (= (and b!5592662 c!980170) b!5592663))

(assert (= (and b!5592662 (not c!980170)) b!5592668))

(assert (= (and b!5592663 res!2372666) b!5592661))

(assert (= (and b!5592668 c!980171) b!5592660))

(assert (= (and b!5592668 (not c!980171)) b!5592664))

(assert (= (and b!5592660 res!2372667) b!5592665))

(assert (= (and b!5592664 (not res!2372663)) b!5592667))

(assert (= (and b!5592667 res!2372664) b!5592666))

(assert (= (or b!5592665 b!5592666) bm!419088))

(assert (= (or b!5592660 b!5592667) bm!419087))

(assert (= (or b!5592661 bm!419087) bm!419089))

(declare-fun m!6572544 () Bool)

(assert (=> bm!419088 m!6572544))

(declare-fun m!6572546 () Bool)

(assert (=> bm!419089 m!6572546))

(declare-fun m!6572548 () Bool)

(assert (=> b!5592663 m!6572548))

(assert (=> bm!418831 d!1767775))

(assert (=> d!1767217 d!1767219))

(assert (=> d!1767217 d!1767141))

(declare-fun e!3450234 () Bool)

(declare-fun d!1767777 () Bool)

(assert (=> d!1767777 (= (matchZipper!1717 ((_ map or) lt!2255521 lt!2255546) (t!376315 s!2326)) e!3450234)))

(declare-fun res!2372668 () Bool)

(assert (=> d!1767777 (=> res!2372668 e!3450234)))

(assert (=> d!1767777 (= res!2372668 (matchZipper!1717 lt!2255521 (t!376315 s!2326)))))

(assert (=> d!1767777 true))

(declare-fun _$48!1175 () Unit!155724)

(assert (=> d!1767777 (= (choose!42400 lt!2255521 lt!2255546 (t!376315 s!2326)) _$48!1175)))

(declare-fun b!5592669 () Bool)

(assert (=> b!5592669 (= e!3450234 (matchZipper!1717 lt!2255546 (t!376315 s!2326)))))

(assert (= (and d!1767777 (not res!2372668)) b!5592669))

(assert (=> d!1767777 m!6570870))

(assert (=> d!1767777 m!6570848))

(assert (=> b!5592669 m!6570786))

(assert (=> d!1767217 d!1767777))

(declare-fun bs!1293204 () Bool)

(declare-fun b!5592672 () Bool)

(assert (= bs!1293204 (and b!5592672 b!5592464)))

(declare-fun lambda!300210 () Int)

(assert (=> bs!1293204 (not (= lambda!300210 lambda!300198))))

(declare-fun bs!1293205 () Bool)

(assert (= bs!1293205 (and b!5592672 b!5590791)))

(assert (=> bs!1293205 (not (= lambda!300210 lambda!300075))))

(declare-fun bs!1293206 () Bool)

(assert (= bs!1293206 (and b!5592672 b!5592458)))

(assert (=> bs!1293206 (= (and (= (reg!15908 (regTwo!31671 r!7292)) (reg!15908 (regOne!31671 r!7292))) (= (regTwo!31671 r!7292) (regOne!31671 r!7292))) (= lambda!300210 lambda!300197))))

(declare-fun bs!1293207 () Bool)

(assert (= bs!1293207 (and b!5592672 d!1767181)))

(assert (=> bs!1293207 (not (= lambda!300210 lambda!300119))))

(declare-fun bs!1293208 () Bool)

(assert (= bs!1293208 (and b!5592672 d!1767179)))

(assert (=> bs!1293208 (not (= lambda!300210 lambda!300113))))

(declare-fun bs!1293209 () Bool)

(assert (= bs!1293209 (and b!5592672 d!1767749)))

(assert (=> bs!1293209 (not (= lambda!300210 lambda!300208))))

(assert (=> bs!1293205 (not (= lambda!300210 lambda!300074))))

(assert (=> bs!1293209 (not (= lambda!300210 lambda!300207))))

(declare-fun bs!1293210 () Bool)

(assert (= bs!1293210 (and b!5592672 b!5591481)))

(assert (=> bs!1293210 (= (and (= (reg!15908 (regTwo!31671 r!7292)) (reg!15908 r!7292)) (= (regTwo!31671 r!7292) r!7292)) (= lambda!300210 lambda!300131))))

(assert (=> bs!1293207 (not (= lambda!300210 lambda!300118))))

(declare-fun bs!1293211 () Bool)

(assert (= bs!1293211 (and b!5592672 b!5591487)))

(assert (=> bs!1293211 (not (= lambda!300210 lambda!300132))))

(declare-fun bs!1293212 () Bool)

(assert (= bs!1293212 (and b!5592672 d!1767653)))

(assert (=> bs!1293212 (not (= lambda!300210 lambda!300194))))

(assert (=> b!5592672 true))

(assert (=> b!5592672 true))

(declare-fun bs!1293213 () Bool)

(declare-fun b!5592678 () Bool)

(assert (= bs!1293213 (and b!5592678 b!5592464)))

(declare-fun lambda!300211 () Int)

(assert (=> bs!1293213 (= (and (= (regOne!31670 (regTwo!31671 r!7292)) (regOne!31670 (regOne!31671 r!7292))) (= (regTwo!31670 (regTwo!31671 r!7292)) (regTwo!31670 (regOne!31671 r!7292)))) (= lambda!300211 lambda!300198))))

(declare-fun bs!1293214 () Bool)

(assert (= bs!1293214 (and b!5592678 b!5590791)))

(assert (=> bs!1293214 (= (and (= (regOne!31670 (regTwo!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regTwo!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300211 lambda!300075))))

(declare-fun bs!1293215 () Bool)

(assert (= bs!1293215 (and b!5592678 b!5592672)))

(assert (=> bs!1293215 (not (= lambda!300211 lambda!300210))))

(declare-fun bs!1293216 () Bool)

(assert (= bs!1293216 (and b!5592678 b!5592458)))

(assert (=> bs!1293216 (not (= lambda!300211 lambda!300197))))

(declare-fun bs!1293217 () Bool)

(assert (= bs!1293217 (and b!5592678 d!1767181)))

(assert (=> bs!1293217 (= (and (= (regOne!31670 (regTwo!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regTwo!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300211 lambda!300119))))

(declare-fun bs!1293218 () Bool)

(assert (= bs!1293218 (and b!5592678 d!1767179)))

(assert (=> bs!1293218 (not (= lambda!300211 lambda!300113))))

(declare-fun bs!1293219 () Bool)

(assert (= bs!1293219 (and b!5592678 d!1767749)))

(assert (=> bs!1293219 (= (and (= (regOne!31670 (regTwo!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regTwo!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300211 lambda!300208))))

(assert (=> bs!1293214 (not (= lambda!300211 lambda!300074))))

(assert (=> bs!1293219 (not (= lambda!300211 lambda!300207))))

(declare-fun bs!1293220 () Bool)

(assert (= bs!1293220 (and b!5592678 b!5591481)))

(assert (=> bs!1293220 (not (= lambda!300211 lambda!300131))))

(assert (=> bs!1293217 (not (= lambda!300211 lambda!300118))))

(declare-fun bs!1293221 () Bool)

(assert (= bs!1293221 (and b!5592678 b!5591487)))

(assert (=> bs!1293221 (= (and (= (regOne!31670 (regTwo!31671 r!7292)) (regOne!31670 r!7292)) (= (regTwo!31670 (regTwo!31671 r!7292)) (regTwo!31670 r!7292))) (= lambda!300211 lambda!300132))))

(declare-fun bs!1293222 () Bool)

(assert (= bs!1293222 (and b!5592678 d!1767653)))

(assert (=> bs!1293222 (not (= lambda!300211 lambda!300194))))

(assert (=> b!5592678 true))

(assert (=> b!5592678 true))

(declare-fun bm!419090 () Bool)

(declare-fun call!419095 () Bool)

(declare-fun c!980172 () Bool)

(assert (=> bm!419090 (= call!419095 (Exists!2679 (ite c!980172 lambda!300210 lambda!300211)))))

(declare-fun b!5592670 () Bool)

(declare-fun e!3450240 () Bool)

(declare-fun e!3450239 () Bool)

(assert (=> b!5592670 (= e!3450240 e!3450239)))

(declare-fun res!2372669 () Bool)

(assert (=> b!5592670 (= res!2372669 (not ((_ is EmptyLang!15579) (regTwo!31671 r!7292))))))

(assert (=> b!5592670 (=> (not res!2372669) (not e!3450239))))

(declare-fun b!5592671 () Bool)

(declare-fun res!2372671 () Bool)

(declare-fun e!3450238 () Bool)

(assert (=> b!5592671 (=> res!2372671 e!3450238)))

(declare-fun call!419096 () Bool)

(assert (=> b!5592671 (= res!2372671 call!419096)))

(declare-fun e!3450237 () Bool)

(assert (=> b!5592671 (= e!3450237 e!3450238)))

(assert (=> b!5592672 (= e!3450238 call!419095)))

(declare-fun bm!419091 () Bool)

(assert (=> bm!419091 (= call!419096 (isEmpty!34734 s!2326))))

(declare-fun b!5592674 () Bool)

(declare-fun e!3450235 () Bool)

(declare-fun e!3450236 () Bool)

(assert (=> b!5592674 (= e!3450235 e!3450236)))

(declare-fun res!2372670 () Bool)

(assert (=> b!5592674 (= res!2372670 (matchRSpec!2682 (regOne!31671 (regTwo!31671 r!7292)) s!2326))))

(assert (=> b!5592674 (=> res!2372670 e!3450236)))

(declare-fun b!5592675 () Bool)

(assert (=> b!5592675 (= e!3450235 e!3450237)))

(assert (=> b!5592675 (= c!980172 ((_ is Star!15579) (regTwo!31671 r!7292)))))

(declare-fun b!5592676 () Bool)

(declare-fun c!980174 () Bool)

(assert (=> b!5592676 (= c!980174 ((_ is ElementMatch!15579) (regTwo!31671 r!7292)))))

(declare-fun e!3450241 () Bool)

(assert (=> b!5592676 (= e!3450239 e!3450241)))

(declare-fun b!5592677 () Bool)

(assert (=> b!5592677 (= e!3450240 call!419096)))

(assert (=> b!5592678 (= e!3450237 call!419095)))

(declare-fun b!5592673 () Bool)

(declare-fun c!980173 () Bool)

(assert (=> b!5592673 (= c!980173 ((_ is Union!15579) (regTwo!31671 r!7292)))))

(assert (=> b!5592673 (= e!3450241 e!3450235)))

(declare-fun d!1767779 () Bool)

(declare-fun c!980175 () Bool)

(assert (=> d!1767779 (= c!980175 ((_ is EmptyExpr!15579) (regTwo!31671 r!7292)))))

(assert (=> d!1767779 (= (matchRSpec!2682 (regTwo!31671 r!7292) s!2326) e!3450240)))

(declare-fun b!5592679 () Bool)

(assert (=> b!5592679 (= e!3450236 (matchRSpec!2682 (regTwo!31671 (regTwo!31671 r!7292)) s!2326))))

(declare-fun b!5592680 () Bool)

(assert (=> b!5592680 (= e!3450241 (= s!2326 (Cons!62913 (c!979652 (regTwo!31671 r!7292)) Nil!62913)))))

(assert (= (and d!1767779 c!980175) b!5592677))

(assert (= (and d!1767779 (not c!980175)) b!5592670))

(assert (= (and b!5592670 res!2372669) b!5592676))

(assert (= (and b!5592676 c!980174) b!5592680))

(assert (= (and b!5592676 (not c!980174)) b!5592673))

(assert (= (and b!5592673 c!980173) b!5592674))

(assert (= (and b!5592673 (not c!980173)) b!5592675))

(assert (= (and b!5592674 (not res!2372670)) b!5592679))

(assert (= (and b!5592675 c!980172) b!5592671))

(assert (= (and b!5592675 (not c!980172)) b!5592678))

(assert (= (and b!5592671 (not res!2372671)) b!5592672))

(assert (= (or b!5592672 b!5592678) bm!419090))

(assert (= (or b!5592677 b!5592671) bm!419091))

(declare-fun m!6572550 () Bool)

(assert (=> bm!419090 m!6572550))

(assert (=> bm!419091 m!6571334))

(declare-fun m!6572552 () Bool)

(assert (=> b!5592674 m!6572552))

(declare-fun m!6572554 () Bool)

(assert (=> b!5592679 m!6572554))

(assert (=> b!5591488 d!1767779))

(assert (=> d!1767143 d!1767549))

(declare-fun d!1767781 () Bool)

(assert (=> d!1767781 (= (isUnion!573 lt!2255607) ((_ is Union!15579) lt!2255607))))

(assert (=> b!5591300 d!1767781))

(declare-fun bm!419092 () Bool)

(declare-fun call!419098 () (InoxSet Context!9926))

(declare-fun call!419099 () (InoxSet Context!9926))

(assert (=> bm!419092 (= call!419098 call!419099)))

(declare-fun c!980177 () Bool)

(declare-fun d!1767783 () Bool)

(assert (=> d!1767783 (= c!980177 (and ((_ is ElementMatch!15579) (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (= (c!979652 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (h!69361 s!2326))))))

(declare-fun e!3450242 () (InoxSet Context!9926))

(assert (=> d!1767783 (= (derivationStepZipperDown!921 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))) (ite c!979847 lt!2255535 (Context!9927 call!418849)) (h!69361 s!2326)) e!3450242)))

(declare-fun b!5592681 () Bool)

(declare-fun e!3450245 () (InoxSet Context!9926))

(assert (=> b!5592681 (= e!3450245 ((as const (Array Context!9926 Bool)) false))))

(declare-fun b!5592682 () Bool)

(declare-fun e!3450246 () (InoxSet Context!9926))

(assert (=> b!5592682 (= e!3450242 e!3450246)))

(declare-fun c!980176 () Bool)

(assert (=> b!5592682 (= c!980176 ((_ is Union!15579) (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))))))

(declare-fun b!5592683 () Bool)

(assert (=> b!5592683 (= e!3450242 (store ((as const (Array Context!9926 Bool)) false) (ite c!979847 lt!2255535 (Context!9927 call!418849)) true))))

(declare-fun b!5592684 () Bool)

(declare-fun e!3450247 () (InoxSet Context!9926))

(assert (=> b!5592684 (= e!3450247 call!419098)))

(declare-fun c!980178 () Bool)

(declare-fun call!419102 () List!63036)

(declare-fun bm!419093 () Bool)

(declare-fun c!980180 () Bool)

(assert (=> bm!419093 (= call!419102 ($colon$colon!1642 (exprs!5463 (ite c!979847 lt!2255535 (Context!9927 call!418849))) (ite (or c!980178 c!980180) (regTwo!31670 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))))))))

(declare-fun b!5592685 () Bool)

(assert (=> b!5592685 (= e!3450245 call!419098)))

(declare-fun bm!419094 () Bool)

(declare-fun call!419097 () List!63036)

(assert (=> bm!419094 (= call!419097 call!419102)))

(declare-fun bm!419095 () Bool)

(declare-fun call!419100 () (InoxSet Context!9926))

(assert (=> bm!419095 (= call!419099 call!419100)))

(declare-fun b!5592686 () Bool)

(declare-fun e!3450243 () Bool)

(assert (=> b!5592686 (= c!980178 e!3450243)))

(declare-fun res!2372672 () Bool)

(assert (=> b!5592686 (=> (not res!2372672) (not e!3450243))))

(assert (=> b!5592686 (= res!2372672 ((_ is Concat!24424) (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))))))

(declare-fun e!3450244 () (InoxSet Context!9926))

(assert (=> b!5592686 (= e!3450246 e!3450244)))

(declare-fun b!5592687 () Bool)

(declare-fun c!980179 () Bool)

(assert (=> b!5592687 (= c!980179 ((_ is Star!15579) (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))))))

(assert (=> b!5592687 (= e!3450247 e!3450245)))

(declare-fun bm!419096 () Bool)

(assert (=> bm!419096 (= call!419100 (derivationStepZipperDown!921 (ite c!980176 (regOne!31671 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (ite c!980178 (regTwo!31670 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (ite c!980180 (regOne!31670 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (reg!15908 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))))))) (ite (or c!980176 c!980178) (ite c!979847 lt!2255535 (Context!9927 call!418849)) (Context!9927 call!419097)) (h!69361 s!2326)))))

(declare-fun b!5592688 () Bool)

(declare-fun call!419101 () (InoxSet Context!9926))

(assert (=> b!5592688 (= e!3450246 ((_ map or) call!419100 call!419101))))

(declare-fun b!5592689 () Bool)

(assert (=> b!5592689 (= e!3450244 e!3450247)))

(assert (=> b!5592689 (= c!980180 ((_ is Concat!24424) (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))))))

(declare-fun bm!419097 () Bool)

(assert (=> bm!419097 (= call!419101 (derivationStepZipperDown!921 (ite c!980176 (regTwo!31671 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292))))) (regOne!31670 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))))) (ite c!980176 (ite c!979847 lt!2255535 (Context!9927 call!418849)) (Context!9927 call!419102)) (h!69361 s!2326)))))

(declare-fun b!5592690 () Bool)

(assert (=> b!5592690 (= e!3450244 ((_ map or) call!419101 call!419099))))

(declare-fun b!5592691 () Bool)

(assert (=> b!5592691 (= e!3450243 (nullable!5611 (regOne!31670 (ite c!979847 (regTwo!31671 (regOne!31671 (regOne!31670 r!7292))) (regOne!31670 (regOne!31671 (regOne!31670 r!7292)))))))))

(assert (= (and d!1767783 c!980177) b!5592683))

(assert (= (and d!1767783 (not c!980177)) b!5592682))

(assert (= (and b!5592682 c!980176) b!5592688))

(assert (= (and b!5592682 (not c!980176)) b!5592686))

(assert (= (and b!5592686 res!2372672) b!5592691))

(assert (= (and b!5592686 c!980178) b!5592690))

(assert (= (and b!5592686 (not c!980178)) b!5592689))

(assert (= (and b!5592689 c!980180) b!5592684))

(assert (= (and b!5592689 (not c!980180)) b!5592687))

(assert (= (and b!5592687 c!980179) b!5592685))

(assert (= (and b!5592687 (not c!980179)) b!5592681))

(assert (= (or b!5592684 b!5592685) bm!419094))

(assert (= (or b!5592684 b!5592685) bm!419092))

(assert (= (or b!5592690 bm!419094) bm!419093))

(assert (= (or b!5592690 bm!419092) bm!419095))

(assert (= (or b!5592688 b!5592690) bm!419097))

(assert (= (or b!5592688 bm!419095) bm!419096))

(declare-fun m!6572556 () Bool)

(assert (=> b!5592691 m!6572556))

(declare-fun m!6572558 () Bool)

(assert (=> b!5592683 m!6572558))

(declare-fun m!6572560 () Bool)

(assert (=> bm!419096 m!6572560))

(declare-fun m!6572562 () Bool)

(assert (=> bm!419097 m!6572562))

(declare-fun m!6572564 () Bool)

(assert (=> bm!419093 m!6572564))

(assert (=> bm!418844 d!1767783))

(declare-fun bs!1293223 () Bool)

(declare-fun d!1767785 () Bool)

(assert (= bs!1293223 (and d!1767785 d!1767613)))

(declare-fun lambda!300212 () Int)

(assert (=> bs!1293223 (= lambda!300212 lambda!300187)))

(declare-fun bs!1293224 () Bool)

(assert (= bs!1293224 (and d!1767785 d!1767521)))

(assert (=> bs!1293224 (= lambda!300212 lambda!300175)))

(declare-fun bs!1293225 () Bool)

(assert (= bs!1293225 (and d!1767785 d!1767641)))

(assert (=> bs!1293225 (= lambda!300212 lambda!300190)))

(declare-fun bs!1293226 () Bool)

(assert (= bs!1293226 (and d!1767785 d!1767533)))

(assert (=> bs!1293226 (= lambda!300212 lambda!300177)))

(declare-fun bs!1293227 () Bool)

(assert (= bs!1293227 (and d!1767785 d!1767657)))

(assert (=> bs!1293227 (= lambda!300212 lambda!300195)))

(declare-fun bs!1293228 () Bool)

(assert (= bs!1293228 (and d!1767785 d!1767527)))

(assert (=> bs!1293228 (= lambda!300212 lambda!300176)))

(declare-fun bs!1293229 () Bool)

(assert (= bs!1293229 (and d!1767785 d!1767579)))

(assert (=> bs!1293229 (= lambda!300212 lambda!300181)))

(declare-fun bs!1293230 () Bool)

(assert (= bs!1293230 (and d!1767785 d!1767589)))

(assert (=> bs!1293230 (= lambda!300212 lambda!300184)))

(assert (=> d!1767785 (= (nullableZipper!1574 ((_ map or) lt!2255547 lt!2255546)) (exists!2168 ((_ map or) lt!2255547 lt!2255546) lambda!300212))))

(declare-fun bs!1293231 () Bool)

(assert (= bs!1293231 d!1767785))

(declare-fun m!6572566 () Bool)

(assert (=> bs!1293231 m!6572566))

(assert (=> b!5591270 d!1767785))

(declare-fun d!1767787 () Bool)

(assert (=> d!1767787 (= (nullable!5611 (h!69360 (exprs!5463 lt!2255536))) (nullableFct!1720 (h!69360 (exprs!5463 lt!2255536))))))

(declare-fun bs!1293232 () Bool)

(assert (= bs!1293232 d!1767787))

(declare-fun m!6572568 () Bool)

(assert (=> bs!1293232 m!6572568))

(assert (=> b!5591387 d!1767787))

(declare-fun b!5592695 () Bool)

(declare-fun e!3450248 () Bool)

(declare-fun tp!1546628 () Bool)

(declare-fun tp!1546630 () Bool)

(assert (=> b!5592695 (= e!3450248 (and tp!1546628 tp!1546630))))

(declare-fun b!5592693 () Bool)

(declare-fun tp!1546632 () Bool)

(declare-fun tp!1546631 () Bool)

(assert (=> b!5592693 (= e!3450248 (and tp!1546632 tp!1546631))))

(declare-fun b!5592694 () Bool)

(declare-fun tp!1546629 () Bool)

(assert (=> b!5592694 (= e!3450248 tp!1546629)))

(assert (=> b!5591571 (= tp!1546425 e!3450248)))

(declare-fun b!5592692 () Bool)

(assert (=> b!5592692 (= e!3450248 tp_is_empty!40411)))

(assert (= (and b!5591571 ((_ is ElementMatch!15579) (regOne!31671 (reg!15908 r!7292)))) b!5592692))

(assert (= (and b!5591571 ((_ is Concat!24424) (regOne!31671 (reg!15908 r!7292)))) b!5592693))

(assert (= (and b!5591571 ((_ is Star!15579) (regOne!31671 (reg!15908 r!7292)))) b!5592694))

(assert (= (and b!5591571 ((_ is Union!15579) (regOne!31671 (reg!15908 r!7292)))) b!5592695))

(declare-fun b!5592699 () Bool)

(declare-fun e!3450249 () Bool)

(declare-fun tp!1546633 () Bool)

(declare-fun tp!1546635 () Bool)

(assert (=> b!5592699 (= e!3450249 (and tp!1546633 tp!1546635))))

(declare-fun b!5592697 () Bool)

(declare-fun tp!1546637 () Bool)

(declare-fun tp!1546636 () Bool)

(assert (=> b!5592697 (= e!3450249 (and tp!1546637 tp!1546636))))

(declare-fun b!5592698 () Bool)

(declare-fun tp!1546634 () Bool)

(assert (=> b!5592698 (= e!3450249 tp!1546634)))

(assert (=> b!5591571 (= tp!1546427 e!3450249)))

(declare-fun b!5592696 () Bool)

(assert (=> b!5592696 (= e!3450249 tp_is_empty!40411)))

(assert (= (and b!5591571 ((_ is ElementMatch!15579) (regTwo!31671 (reg!15908 r!7292)))) b!5592696))

(assert (= (and b!5591571 ((_ is Concat!24424) (regTwo!31671 (reg!15908 r!7292)))) b!5592697))

(assert (= (and b!5591571 ((_ is Star!15579) (regTwo!31671 (reg!15908 r!7292)))) b!5592698))

(assert (= (and b!5591571 ((_ is Union!15579) (regTwo!31671 (reg!15908 r!7292)))) b!5592699))

(declare-fun b!5592703 () Bool)

(declare-fun e!3450250 () Bool)

(declare-fun tp!1546638 () Bool)

(declare-fun tp!1546640 () Bool)

(assert (=> b!5592703 (= e!3450250 (and tp!1546638 tp!1546640))))

(declare-fun b!5592701 () Bool)

(declare-fun tp!1546642 () Bool)

(declare-fun tp!1546641 () Bool)

(assert (=> b!5592701 (= e!3450250 (and tp!1546642 tp!1546641))))

(declare-fun b!5592702 () Bool)

(declare-fun tp!1546639 () Bool)

(assert (=> b!5592702 (= e!3450250 tp!1546639)))

(assert (=> b!5591557 (= tp!1546411 e!3450250)))

(declare-fun b!5592700 () Bool)

(assert (=> b!5592700 (= e!3450250 tp_is_empty!40411)))

(assert (= (and b!5591557 ((_ is ElementMatch!15579) (regOne!31671 (regTwo!31670 r!7292)))) b!5592700))

(assert (= (and b!5591557 ((_ is Concat!24424) (regOne!31671 (regTwo!31670 r!7292)))) b!5592701))

(assert (= (and b!5591557 ((_ is Star!15579) (regOne!31671 (regTwo!31670 r!7292)))) b!5592702))

(assert (= (and b!5591557 ((_ is Union!15579) (regOne!31671 (regTwo!31670 r!7292)))) b!5592703))

(declare-fun b!5592707 () Bool)

(declare-fun e!3450251 () Bool)

(declare-fun tp!1546643 () Bool)

(declare-fun tp!1546645 () Bool)

(assert (=> b!5592707 (= e!3450251 (and tp!1546643 tp!1546645))))

(declare-fun b!5592705 () Bool)

(declare-fun tp!1546647 () Bool)

(declare-fun tp!1546646 () Bool)

(assert (=> b!5592705 (= e!3450251 (and tp!1546647 tp!1546646))))

(declare-fun b!5592706 () Bool)

(declare-fun tp!1546644 () Bool)

(assert (=> b!5592706 (= e!3450251 tp!1546644)))

(assert (=> b!5591557 (= tp!1546413 e!3450251)))

(declare-fun b!5592704 () Bool)

(assert (=> b!5592704 (= e!3450251 tp_is_empty!40411)))

(assert (= (and b!5591557 ((_ is ElementMatch!15579) (regTwo!31671 (regTwo!31670 r!7292)))) b!5592704))

(assert (= (and b!5591557 ((_ is Concat!24424) (regTwo!31671 (regTwo!31670 r!7292)))) b!5592705))

(assert (= (and b!5591557 ((_ is Star!15579) (regTwo!31671 (regTwo!31670 r!7292)))) b!5592706))

(assert (= (and b!5591557 ((_ is Union!15579) (regTwo!31671 (regTwo!31670 r!7292)))) b!5592707))

(declare-fun b!5592711 () Bool)

(declare-fun e!3450252 () Bool)

(declare-fun tp!1546648 () Bool)

(declare-fun tp!1546650 () Bool)

(assert (=> b!5592711 (= e!3450252 (and tp!1546648 tp!1546650))))

(declare-fun b!5592709 () Bool)

(declare-fun tp!1546652 () Bool)

(declare-fun tp!1546651 () Bool)

(assert (=> b!5592709 (= e!3450252 (and tp!1546652 tp!1546651))))

(declare-fun b!5592710 () Bool)

(declare-fun tp!1546649 () Bool)

(assert (=> b!5592710 (= e!3450252 tp!1546649)))

(assert (=> b!5591578 (= tp!1546436 e!3450252)))

(declare-fun b!5592708 () Bool)

(assert (=> b!5592708 (= e!3450252 tp_is_empty!40411)))

(assert (= (and b!5591578 ((_ is ElementMatch!15579) (reg!15908 (regTwo!31671 r!7292)))) b!5592708))

(assert (= (and b!5591578 ((_ is Concat!24424) (reg!15908 (regTwo!31671 r!7292)))) b!5592709))

(assert (= (and b!5591578 ((_ is Star!15579) (reg!15908 (regTwo!31671 r!7292)))) b!5592710))

(assert (= (and b!5591578 ((_ is Union!15579) (reg!15908 (regTwo!31671 r!7292)))) b!5592711))

(declare-fun b!5592715 () Bool)

(declare-fun e!3450253 () Bool)

(declare-fun tp!1546653 () Bool)

(declare-fun tp!1546655 () Bool)

(assert (=> b!5592715 (= e!3450253 (and tp!1546653 tp!1546655))))

(declare-fun b!5592713 () Bool)

(declare-fun tp!1546657 () Bool)

(declare-fun tp!1546656 () Bool)

(assert (=> b!5592713 (= e!3450253 (and tp!1546657 tp!1546656))))

(declare-fun b!5592714 () Bool)

(declare-fun tp!1546654 () Bool)

(assert (=> b!5592714 (= e!3450253 tp!1546654)))

(assert (=> b!5591555 (= tp!1546415 e!3450253)))

(declare-fun b!5592712 () Bool)

(assert (=> b!5592712 (= e!3450253 tp_is_empty!40411)))

(assert (= (and b!5591555 ((_ is ElementMatch!15579) (regOne!31670 (regTwo!31670 r!7292)))) b!5592712))

(assert (= (and b!5591555 ((_ is Concat!24424) (regOne!31670 (regTwo!31670 r!7292)))) b!5592713))

(assert (= (and b!5591555 ((_ is Star!15579) (regOne!31670 (regTwo!31670 r!7292)))) b!5592714))

(assert (= (and b!5591555 ((_ is Union!15579) (regOne!31670 (regTwo!31670 r!7292)))) b!5592715))

(declare-fun b!5592719 () Bool)

(declare-fun e!3450254 () Bool)

(declare-fun tp!1546658 () Bool)

(declare-fun tp!1546660 () Bool)

(assert (=> b!5592719 (= e!3450254 (and tp!1546658 tp!1546660))))

(declare-fun b!5592717 () Bool)

(declare-fun tp!1546662 () Bool)

(declare-fun tp!1546661 () Bool)

(assert (=> b!5592717 (= e!3450254 (and tp!1546662 tp!1546661))))

(declare-fun b!5592718 () Bool)

(declare-fun tp!1546659 () Bool)

(assert (=> b!5592718 (= e!3450254 tp!1546659)))

(assert (=> b!5591555 (= tp!1546414 e!3450254)))

(declare-fun b!5592716 () Bool)

(assert (=> b!5592716 (= e!3450254 tp_is_empty!40411)))

(assert (= (and b!5591555 ((_ is ElementMatch!15579) (regTwo!31670 (regTwo!31670 r!7292)))) b!5592716))

(assert (= (and b!5591555 ((_ is Concat!24424) (regTwo!31670 (regTwo!31670 r!7292)))) b!5592717))

(assert (= (and b!5591555 ((_ is Star!15579) (regTwo!31670 (regTwo!31670 r!7292)))) b!5592718))

(assert (= (and b!5591555 ((_ is Union!15579) (regTwo!31670 (regTwo!31670 r!7292)))) b!5592719))

(declare-fun b!5592723 () Bool)

(declare-fun e!3450255 () Bool)

(declare-fun tp!1546663 () Bool)

(declare-fun tp!1546665 () Bool)

(assert (=> b!5592723 (= e!3450255 (and tp!1546663 tp!1546665))))

(declare-fun b!5592721 () Bool)

(declare-fun tp!1546667 () Bool)

(declare-fun tp!1546666 () Bool)

(assert (=> b!5592721 (= e!3450255 (and tp!1546667 tp!1546666))))

(declare-fun b!5592722 () Bool)

(declare-fun tp!1546664 () Bool)

(assert (=> b!5592722 (= e!3450255 tp!1546664)))

(assert (=> b!5591577 (= tp!1546439 e!3450255)))

(declare-fun b!5592720 () Bool)

(assert (=> b!5592720 (= e!3450255 tp_is_empty!40411)))

(assert (= (and b!5591577 ((_ is ElementMatch!15579) (regOne!31670 (regTwo!31671 r!7292)))) b!5592720))

(assert (= (and b!5591577 ((_ is Concat!24424) (regOne!31670 (regTwo!31671 r!7292)))) b!5592721))

(assert (= (and b!5591577 ((_ is Star!15579) (regOne!31670 (regTwo!31671 r!7292)))) b!5592722))

(assert (= (and b!5591577 ((_ is Union!15579) (regOne!31670 (regTwo!31671 r!7292)))) b!5592723))

(declare-fun b!5592727 () Bool)

(declare-fun e!3450256 () Bool)

(declare-fun tp!1546668 () Bool)

(declare-fun tp!1546670 () Bool)

(assert (=> b!5592727 (= e!3450256 (and tp!1546668 tp!1546670))))

(declare-fun b!5592725 () Bool)

(declare-fun tp!1546672 () Bool)

(declare-fun tp!1546671 () Bool)

(assert (=> b!5592725 (= e!3450256 (and tp!1546672 tp!1546671))))

(declare-fun b!5592726 () Bool)

(declare-fun tp!1546669 () Bool)

(assert (=> b!5592726 (= e!3450256 tp!1546669)))

(assert (=> b!5591577 (= tp!1546438 e!3450256)))

(declare-fun b!5592724 () Bool)

(assert (=> b!5592724 (= e!3450256 tp_is_empty!40411)))

(assert (= (and b!5591577 ((_ is ElementMatch!15579) (regTwo!31670 (regTwo!31671 r!7292)))) b!5592724))

(assert (= (and b!5591577 ((_ is Concat!24424) (regTwo!31670 (regTwo!31671 r!7292)))) b!5592725))

(assert (= (and b!5591577 ((_ is Star!15579) (regTwo!31670 (regTwo!31671 r!7292)))) b!5592726))

(assert (= (and b!5591577 ((_ is Union!15579) (regTwo!31670 (regTwo!31671 r!7292)))) b!5592727))

(declare-fun b!5592731 () Bool)

(declare-fun e!3450257 () Bool)

(declare-fun tp!1546673 () Bool)

(declare-fun tp!1546675 () Bool)

(assert (=> b!5592731 (= e!3450257 (and tp!1546673 tp!1546675))))

(declare-fun b!5592729 () Bool)

(declare-fun tp!1546677 () Bool)

(declare-fun tp!1546676 () Bool)

(assert (=> b!5592729 (= e!3450257 (and tp!1546677 tp!1546676))))

(declare-fun b!5592730 () Bool)

(declare-fun tp!1546674 () Bool)

(assert (=> b!5592730 (= e!3450257 tp!1546674)))

(assert (=> b!5591579 (= tp!1546435 e!3450257)))

(declare-fun b!5592728 () Bool)

(assert (=> b!5592728 (= e!3450257 tp_is_empty!40411)))

(assert (= (and b!5591579 ((_ is ElementMatch!15579) (regOne!31671 (regTwo!31671 r!7292)))) b!5592728))

(assert (= (and b!5591579 ((_ is Concat!24424) (regOne!31671 (regTwo!31671 r!7292)))) b!5592729))

(assert (= (and b!5591579 ((_ is Star!15579) (regOne!31671 (regTwo!31671 r!7292)))) b!5592730))

(assert (= (and b!5591579 ((_ is Union!15579) (regOne!31671 (regTwo!31671 r!7292)))) b!5592731))

(declare-fun b!5592735 () Bool)

(declare-fun e!3450258 () Bool)

(declare-fun tp!1546678 () Bool)

(declare-fun tp!1546680 () Bool)

(assert (=> b!5592735 (= e!3450258 (and tp!1546678 tp!1546680))))

(declare-fun b!5592733 () Bool)

(declare-fun tp!1546682 () Bool)

(declare-fun tp!1546681 () Bool)

(assert (=> b!5592733 (= e!3450258 (and tp!1546682 tp!1546681))))

(declare-fun b!5592734 () Bool)

(declare-fun tp!1546679 () Bool)

(assert (=> b!5592734 (= e!3450258 tp!1546679)))

(assert (=> b!5591579 (= tp!1546437 e!3450258)))

(declare-fun b!5592732 () Bool)

(assert (=> b!5592732 (= e!3450258 tp_is_empty!40411)))

(assert (= (and b!5591579 ((_ is ElementMatch!15579) (regTwo!31671 (regTwo!31671 r!7292)))) b!5592732))

(assert (= (and b!5591579 ((_ is Concat!24424) (regTwo!31671 (regTwo!31671 r!7292)))) b!5592733))

(assert (= (and b!5591579 ((_ is Star!15579) (regTwo!31671 (regTwo!31671 r!7292)))) b!5592734))

(assert (= (and b!5591579 ((_ is Union!15579) (regTwo!31671 (regTwo!31671 r!7292)))) b!5592735))

(declare-fun b!5592739 () Bool)

(declare-fun e!3450259 () Bool)

(declare-fun tp!1546683 () Bool)

(declare-fun tp!1546685 () Bool)

(assert (=> b!5592739 (= e!3450259 (and tp!1546683 tp!1546685))))

(declare-fun b!5592737 () Bool)

(declare-fun tp!1546687 () Bool)

(declare-fun tp!1546686 () Bool)

(assert (=> b!5592737 (= e!3450259 (and tp!1546687 tp!1546686))))

(declare-fun b!5592738 () Bool)

(declare-fun tp!1546684 () Bool)

(assert (=> b!5592738 (= e!3450259 tp!1546684)))

(assert (=> b!5591556 (= tp!1546412 e!3450259)))

(declare-fun b!5592736 () Bool)

(assert (=> b!5592736 (= e!3450259 tp_is_empty!40411)))

(assert (= (and b!5591556 ((_ is ElementMatch!15579) (reg!15908 (regTwo!31670 r!7292)))) b!5592736))

(assert (= (and b!5591556 ((_ is Concat!24424) (reg!15908 (regTwo!31670 r!7292)))) b!5592737))

(assert (= (and b!5591556 ((_ is Star!15579) (reg!15908 (regTwo!31670 r!7292)))) b!5592738))

(assert (= (and b!5591556 ((_ is Union!15579) (reg!15908 (regTwo!31670 r!7292)))) b!5592739))

(declare-fun b!5592743 () Bool)

(declare-fun e!3450260 () Bool)

(declare-fun tp!1546688 () Bool)

(declare-fun tp!1546690 () Bool)

(assert (=> b!5592743 (= e!3450260 (and tp!1546688 tp!1546690))))

(declare-fun b!5592741 () Bool)

(declare-fun tp!1546692 () Bool)

(declare-fun tp!1546691 () Bool)

(assert (=> b!5592741 (= e!3450260 (and tp!1546692 tp!1546691))))

(declare-fun b!5592742 () Bool)

(declare-fun tp!1546689 () Bool)

(assert (=> b!5592742 (= e!3450260 tp!1546689)))

(assert (=> b!5591570 (= tp!1546426 e!3450260)))

(declare-fun b!5592740 () Bool)

(assert (=> b!5592740 (= e!3450260 tp_is_empty!40411)))

(assert (= (and b!5591570 ((_ is ElementMatch!15579) (reg!15908 (reg!15908 r!7292)))) b!5592740))

(assert (= (and b!5591570 ((_ is Concat!24424) (reg!15908 (reg!15908 r!7292)))) b!5592741))

(assert (= (and b!5591570 ((_ is Star!15579) (reg!15908 (reg!15908 r!7292)))) b!5592742))

(assert (= (and b!5591570 ((_ is Union!15579) (reg!15908 (reg!15908 r!7292)))) b!5592743))

(declare-fun b!5592747 () Bool)

(declare-fun e!3450261 () Bool)

(declare-fun tp!1546693 () Bool)

(declare-fun tp!1546695 () Bool)

(assert (=> b!5592747 (= e!3450261 (and tp!1546693 tp!1546695))))

(declare-fun b!5592745 () Bool)

(declare-fun tp!1546697 () Bool)

(declare-fun tp!1546696 () Bool)

(assert (=> b!5592745 (= e!3450261 (and tp!1546697 tp!1546696))))

(declare-fun b!5592746 () Bool)

(declare-fun tp!1546694 () Bool)

(assert (=> b!5592746 (= e!3450261 tp!1546694)))

(assert (=> b!5591569 (= tp!1546429 e!3450261)))

(declare-fun b!5592744 () Bool)

(assert (=> b!5592744 (= e!3450261 tp_is_empty!40411)))

(assert (= (and b!5591569 ((_ is ElementMatch!15579) (regOne!31670 (reg!15908 r!7292)))) b!5592744))

(assert (= (and b!5591569 ((_ is Concat!24424) (regOne!31670 (reg!15908 r!7292)))) b!5592745))

(assert (= (and b!5591569 ((_ is Star!15579) (regOne!31670 (reg!15908 r!7292)))) b!5592746))

(assert (= (and b!5591569 ((_ is Union!15579) (regOne!31670 (reg!15908 r!7292)))) b!5592747))

(declare-fun b!5592751 () Bool)

(declare-fun e!3450262 () Bool)

(declare-fun tp!1546698 () Bool)

(declare-fun tp!1546700 () Bool)

(assert (=> b!5592751 (= e!3450262 (and tp!1546698 tp!1546700))))

(declare-fun b!5592749 () Bool)

(declare-fun tp!1546702 () Bool)

(declare-fun tp!1546701 () Bool)

(assert (=> b!5592749 (= e!3450262 (and tp!1546702 tp!1546701))))

(declare-fun b!5592750 () Bool)

(declare-fun tp!1546699 () Bool)

(assert (=> b!5592750 (= e!3450262 tp!1546699)))

(assert (=> b!5591569 (= tp!1546428 e!3450262)))

(declare-fun b!5592748 () Bool)

(assert (=> b!5592748 (= e!3450262 tp_is_empty!40411)))

(assert (= (and b!5591569 ((_ is ElementMatch!15579) (regTwo!31670 (reg!15908 r!7292)))) b!5592748))

(assert (= (and b!5591569 ((_ is Concat!24424) (regTwo!31670 (reg!15908 r!7292)))) b!5592749))

(assert (= (and b!5591569 ((_ is Star!15579) (regTwo!31670 (reg!15908 r!7292)))) b!5592750))

(assert (= (and b!5591569 ((_ is Union!15579) (regTwo!31670 (reg!15908 r!7292)))) b!5592751))

(declare-fun b!5592755 () Bool)

(declare-fun e!3450263 () Bool)

(declare-fun tp!1546703 () Bool)

(declare-fun tp!1546705 () Bool)

(assert (=> b!5592755 (= e!3450263 (and tp!1546703 tp!1546705))))

(declare-fun b!5592753 () Bool)

(declare-fun tp!1546707 () Bool)

(declare-fun tp!1546706 () Bool)

(assert (=> b!5592753 (= e!3450263 (and tp!1546707 tp!1546706))))

(declare-fun b!5592754 () Bool)

(declare-fun tp!1546704 () Bool)

(assert (=> b!5592754 (= e!3450263 tp!1546704)))

(assert (=> b!5591580 (= tp!1546440 e!3450263)))

(declare-fun b!5592752 () Bool)

(assert (=> b!5592752 (= e!3450263 tp_is_empty!40411)))

(assert (= (and b!5591580 ((_ is ElementMatch!15579) (h!69360 (exprs!5463 (h!69362 zl!343))))) b!5592752))

(assert (= (and b!5591580 ((_ is Concat!24424) (h!69360 (exprs!5463 (h!69362 zl!343))))) b!5592753))

(assert (= (and b!5591580 ((_ is Star!15579) (h!69360 (exprs!5463 (h!69362 zl!343))))) b!5592754))

(assert (= (and b!5591580 ((_ is Union!15579) (h!69360 (exprs!5463 (h!69362 zl!343))))) b!5592755))

(declare-fun b!5592756 () Bool)

(declare-fun e!3450264 () Bool)

(declare-fun tp!1546708 () Bool)

(declare-fun tp!1546709 () Bool)

(assert (=> b!5592756 (= e!3450264 (and tp!1546708 tp!1546709))))

(assert (=> b!5591580 (= tp!1546441 e!3450264)))

(assert (= (and b!5591580 ((_ is Cons!62912) (t!376314 (exprs!5463 (h!69362 zl!343))))) b!5592756))

(declare-fun b!5592760 () Bool)

(declare-fun e!3450265 () Bool)

(declare-fun tp!1546710 () Bool)

(declare-fun tp!1546712 () Bool)

(assert (=> b!5592760 (= e!3450265 (and tp!1546710 tp!1546712))))

(declare-fun b!5592758 () Bool)

(declare-fun tp!1546714 () Bool)

(declare-fun tp!1546713 () Bool)

(assert (=> b!5592758 (= e!3450265 (and tp!1546714 tp!1546713))))

(declare-fun b!5592759 () Bool)

(declare-fun tp!1546711 () Bool)

(assert (=> b!5592759 (= e!3450265 tp!1546711)))

(assert (=> b!5591553 (= tp!1546406 e!3450265)))

(declare-fun b!5592757 () Bool)

(assert (=> b!5592757 (= e!3450265 tp_is_empty!40411)))

(assert (= (and b!5591553 ((_ is ElementMatch!15579) (regOne!31671 (regOne!31670 r!7292)))) b!5592757))

(assert (= (and b!5591553 ((_ is Concat!24424) (regOne!31671 (regOne!31670 r!7292)))) b!5592758))

(assert (= (and b!5591553 ((_ is Star!15579) (regOne!31671 (regOne!31670 r!7292)))) b!5592759))

(assert (= (and b!5591553 ((_ is Union!15579) (regOne!31671 (regOne!31670 r!7292)))) b!5592760))

(declare-fun b!5592764 () Bool)

(declare-fun e!3450266 () Bool)

(declare-fun tp!1546715 () Bool)

(declare-fun tp!1546717 () Bool)

(assert (=> b!5592764 (= e!3450266 (and tp!1546715 tp!1546717))))

(declare-fun b!5592762 () Bool)

(declare-fun tp!1546719 () Bool)

(declare-fun tp!1546718 () Bool)

(assert (=> b!5592762 (= e!3450266 (and tp!1546719 tp!1546718))))

(declare-fun b!5592763 () Bool)

(declare-fun tp!1546716 () Bool)

(assert (=> b!5592763 (= e!3450266 tp!1546716)))

(assert (=> b!5591553 (= tp!1546408 e!3450266)))

(declare-fun b!5592761 () Bool)

(assert (=> b!5592761 (= e!3450266 tp_is_empty!40411)))

(assert (= (and b!5591553 ((_ is ElementMatch!15579) (regTwo!31671 (regOne!31670 r!7292)))) b!5592761))

(assert (= (and b!5591553 ((_ is Concat!24424) (regTwo!31671 (regOne!31670 r!7292)))) b!5592762))

(assert (= (and b!5591553 ((_ is Star!15579) (regTwo!31671 (regOne!31670 r!7292)))) b!5592763))

(assert (= (and b!5591553 ((_ is Union!15579) (regTwo!31671 (regOne!31670 r!7292)))) b!5592764))

(declare-fun b!5592768 () Bool)

(declare-fun e!3450267 () Bool)

(declare-fun tp!1546720 () Bool)

(declare-fun tp!1546722 () Bool)

(assert (=> b!5592768 (= e!3450267 (and tp!1546720 tp!1546722))))

(declare-fun b!5592766 () Bool)

(declare-fun tp!1546724 () Bool)

(declare-fun tp!1546723 () Bool)

(assert (=> b!5592766 (= e!3450267 (and tp!1546724 tp!1546723))))

(declare-fun b!5592767 () Bool)

(declare-fun tp!1546721 () Bool)

(assert (=> b!5592767 (= e!3450267 tp!1546721)))

(assert (=> b!5591575 (= tp!1546430 e!3450267)))

(declare-fun b!5592765 () Bool)

(assert (=> b!5592765 (= e!3450267 tp_is_empty!40411)))

(assert (= (and b!5591575 ((_ is ElementMatch!15579) (regOne!31671 (regOne!31671 r!7292)))) b!5592765))

(assert (= (and b!5591575 ((_ is Concat!24424) (regOne!31671 (regOne!31671 r!7292)))) b!5592766))

(assert (= (and b!5591575 ((_ is Star!15579) (regOne!31671 (regOne!31671 r!7292)))) b!5592767))

(assert (= (and b!5591575 ((_ is Union!15579) (regOne!31671 (regOne!31671 r!7292)))) b!5592768))

(declare-fun b!5592772 () Bool)

(declare-fun e!3450268 () Bool)

(declare-fun tp!1546725 () Bool)

(declare-fun tp!1546727 () Bool)

(assert (=> b!5592772 (= e!3450268 (and tp!1546725 tp!1546727))))

(declare-fun b!5592770 () Bool)

(declare-fun tp!1546729 () Bool)

(declare-fun tp!1546728 () Bool)

(assert (=> b!5592770 (= e!3450268 (and tp!1546729 tp!1546728))))

(declare-fun b!5592771 () Bool)

(declare-fun tp!1546726 () Bool)

(assert (=> b!5592771 (= e!3450268 tp!1546726)))

(assert (=> b!5591575 (= tp!1546432 e!3450268)))

(declare-fun b!5592769 () Bool)

(assert (=> b!5592769 (= e!3450268 tp_is_empty!40411)))

(assert (= (and b!5591575 ((_ is ElementMatch!15579) (regTwo!31671 (regOne!31671 r!7292)))) b!5592769))

(assert (= (and b!5591575 ((_ is Concat!24424) (regTwo!31671 (regOne!31671 r!7292)))) b!5592770))

(assert (= (and b!5591575 ((_ is Star!15579) (regTwo!31671 (regOne!31671 r!7292)))) b!5592771))

(assert (= (and b!5591575 ((_ is Union!15579) (regTwo!31671 (regOne!31671 r!7292)))) b!5592772))

(declare-fun b!5592776 () Bool)

(declare-fun e!3450269 () Bool)

(declare-fun tp!1546730 () Bool)

(declare-fun tp!1546732 () Bool)

(assert (=> b!5592776 (= e!3450269 (and tp!1546730 tp!1546732))))

(declare-fun b!5592774 () Bool)

(declare-fun tp!1546734 () Bool)

(declare-fun tp!1546733 () Bool)

(assert (=> b!5592774 (= e!3450269 (and tp!1546734 tp!1546733))))

(declare-fun b!5592775 () Bool)

(declare-fun tp!1546731 () Bool)

(assert (=> b!5592775 (= e!3450269 tp!1546731)))

(assert (=> b!5591552 (= tp!1546407 e!3450269)))

(declare-fun b!5592773 () Bool)

(assert (=> b!5592773 (= e!3450269 tp_is_empty!40411)))

(assert (= (and b!5591552 ((_ is ElementMatch!15579) (reg!15908 (regOne!31670 r!7292)))) b!5592773))

(assert (= (and b!5591552 ((_ is Concat!24424) (reg!15908 (regOne!31670 r!7292)))) b!5592774))

(assert (= (and b!5591552 ((_ is Star!15579) (reg!15908 (regOne!31670 r!7292)))) b!5592775))

(assert (= (and b!5591552 ((_ is Union!15579) (reg!15908 (regOne!31670 r!7292)))) b!5592776))

(declare-fun b!5592780 () Bool)

(declare-fun e!3450270 () Bool)

(declare-fun tp!1546735 () Bool)

(declare-fun tp!1546737 () Bool)

(assert (=> b!5592780 (= e!3450270 (and tp!1546735 tp!1546737))))

(declare-fun b!5592778 () Bool)

(declare-fun tp!1546739 () Bool)

(declare-fun tp!1546738 () Bool)

(assert (=> b!5592778 (= e!3450270 (and tp!1546739 tp!1546738))))

(declare-fun b!5592779 () Bool)

(declare-fun tp!1546736 () Bool)

(assert (=> b!5592779 (= e!3450270 tp!1546736)))

(assert (=> b!5591567 (= tp!1546423 e!3450270)))

(declare-fun b!5592777 () Bool)

(assert (=> b!5592777 (= e!3450270 tp_is_empty!40411)))

(assert (= (and b!5591567 ((_ is ElementMatch!15579) (h!69360 (exprs!5463 setElem!37261)))) b!5592777))

(assert (= (and b!5591567 ((_ is Concat!24424) (h!69360 (exprs!5463 setElem!37261)))) b!5592778))

(assert (= (and b!5591567 ((_ is Star!15579) (h!69360 (exprs!5463 setElem!37261)))) b!5592779))

(assert (= (and b!5591567 ((_ is Union!15579) (h!69360 (exprs!5463 setElem!37261)))) b!5592780))

(declare-fun b!5592781 () Bool)

(declare-fun e!3450271 () Bool)

(declare-fun tp!1546740 () Bool)

(declare-fun tp!1546741 () Bool)

(assert (=> b!5592781 (= e!3450271 (and tp!1546740 tp!1546741))))

(assert (=> b!5591567 (= tp!1546424 e!3450271)))

(assert (= (and b!5591567 ((_ is Cons!62912) (t!376314 (exprs!5463 setElem!37261)))) b!5592781))

(declare-fun b!5592785 () Bool)

(declare-fun e!3450272 () Bool)

(declare-fun tp!1546742 () Bool)

(declare-fun tp!1546744 () Bool)

(assert (=> b!5592785 (= e!3450272 (and tp!1546742 tp!1546744))))

(declare-fun b!5592783 () Bool)

(declare-fun tp!1546746 () Bool)

(declare-fun tp!1546745 () Bool)

(assert (=> b!5592783 (= e!3450272 (and tp!1546746 tp!1546745))))

(declare-fun b!5592784 () Bool)

(declare-fun tp!1546743 () Bool)

(assert (=> b!5592784 (= e!3450272 tp!1546743)))

(assert (=> b!5591573 (= tp!1546434 e!3450272)))

(declare-fun b!5592782 () Bool)

(assert (=> b!5592782 (= e!3450272 tp_is_empty!40411)))

(assert (= (and b!5591573 ((_ is ElementMatch!15579) (regOne!31670 (regOne!31671 r!7292)))) b!5592782))

(assert (= (and b!5591573 ((_ is Concat!24424) (regOne!31670 (regOne!31671 r!7292)))) b!5592783))

(assert (= (and b!5591573 ((_ is Star!15579) (regOne!31670 (regOne!31671 r!7292)))) b!5592784))

(assert (= (and b!5591573 ((_ is Union!15579) (regOne!31670 (regOne!31671 r!7292)))) b!5592785))

(declare-fun b!5592789 () Bool)

(declare-fun e!3450273 () Bool)

(declare-fun tp!1546747 () Bool)

(declare-fun tp!1546749 () Bool)

(assert (=> b!5592789 (= e!3450273 (and tp!1546747 tp!1546749))))

(declare-fun b!5592787 () Bool)

(declare-fun tp!1546751 () Bool)

(declare-fun tp!1546750 () Bool)

(assert (=> b!5592787 (= e!3450273 (and tp!1546751 tp!1546750))))

(declare-fun b!5592788 () Bool)

(declare-fun tp!1546748 () Bool)

(assert (=> b!5592788 (= e!3450273 tp!1546748)))

(assert (=> b!5591573 (= tp!1546433 e!3450273)))

(declare-fun b!5592786 () Bool)

(assert (=> b!5592786 (= e!3450273 tp_is_empty!40411)))

(assert (= (and b!5591573 ((_ is ElementMatch!15579) (regTwo!31670 (regOne!31671 r!7292)))) b!5592786))

(assert (= (and b!5591573 ((_ is Concat!24424) (regTwo!31670 (regOne!31671 r!7292)))) b!5592787))

(assert (= (and b!5591573 ((_ is Star!15579) (regTwo!31670 (regOne!31671 r!7292)))) b!5592788))

(assert (= (and b!5591573 ((_ is Union!15579) (regTwo!31670 (regOne!31671 r!7292)))) b!5592789))

(declare-fun b!5592793 () Bool)

(declare-fun e!3450274 () Bool)

(declare-fun tp!1546752 () Bool)

(declare-fun tp!1546754 () Bool)

(assert (=> b!5592793 (= e!3450274 (and tp!1546752 tp!1546754))))

(declare-fun b!5592791 () Bool)

(declare-fun tp!1546756 () Bool)

(declare-fun tp!1546755 () Bool)

(assert (=> b!5592791 (= e!3450274 (and tp!1546756 tp!1546755))))

(declare-fun b!5592792 () Bool)

(declare-fun tp!1546753 () Bool)

(assert (=> b!5592792 (= e!3450274 tp!1546753)))

(assert (=> b!5591574 (= tp!1546431 e!3450274)))

(declare-fun b!5592790 () Bool)

(assert (=> b!5592790 (= e!3450274 tp_is_empty!40411)))

(assert (= (and b!5591574 ((_ is ElementMatch!15579) (reg!15908 (regOne!31671 r!7292)))) b!5592790))

(assert (= (and b!5591574 ((_ is Concat!24424) (reg!15908 (regOne!31671 r!7292)))) b!5592791))

(assert (= (and b!5591574 ((_ is Star!15579) (reg!15908 (regOne!31671 r!7292)))) b!5592792))

(assert (= (and b!5591574 ((_ is Union!15579) (reg!15908 (regOne!31671 r!7292)))) b!5592793))

(declare-fun b!5592797 () Bool)

(declare-fun e!3450275 () Bool)

(declare-fun tp!1546757 () Bool)

(declare-fun tp!1546759 () Bool)

(assert (=> b!5592797 (= e!3450275 (and tp!1546757 tp!1546759))))

(declare-fun b!5592795 () Bool)

(declare-fun tp!1546761 () Bool)

(declare-fun tp!1546760 () Bool)

(assert (=> b!5592795 (= e!3450275 (and tp!1546761 tp!1546760))))

(declare-fun b!5592796 () Bool)

(declare-fun tp!1546758 () Bool)

(assert (=> b!5592796 (= e!3450275 tp!1546758)))

(assert (=> b!5591551 (= tp!1546410 e!3450275)))

(declare-fun b!5592794 () Bool)

(assert (=> b!5592794 (= e!3450275 tp_is_empty!40411)))

(assert (= (and b!5591551 ((_ is ElementMatch!15579) (regOne!31670 (regOne!31670 r!7292)))) b!5592794))

(assert (= (and b!5591551 ((_ is Concat!24424) (regOne!31670 (regOne!31670 r!7292)))) b!5592795))

(assert (= (and b!5591551 ((_ is Star!15579) (regOne!31670 (regOne!31670 r!7292)))) b!5592796))

(assert (= (and b!5591551 ((_ is Union!15579) (regOne!31670 (regOne!31670 r!7292)))) b!5592797))

(declare-fun b!5592801 () Bool)

(declare-fun e!3450276 () Bool)

(declare-fun tp!1546762 () Bool)

(declare-fun tp!1546764 () Bool)

(assert (=> b!5592801 (= e!3450276 (and tp!1546762 tp!1546764))))

(declare-fun b!5592799 () Bool)

(declare-fun tp!1546766 () Bool)

(declare-fun tp!1546765 () Bool)

(assert (=> b!5592799 (= e!3450276 (and tp!1546766 tp!1546765))))

(declare-fun b!5592800 () Bool)

(declare-fun tp!1546763 () Bool)

(assert (=> b!5592800 (= e!3450276 tp!1546763)))

(assert (=> b!5591551 (= tp!1546409 e!3450276)))

(declare-fun b!5592798 () Bool)

(assert (=> b!5592798 (= e!3450276 tp_is_empty!40411)))

(assert (= (and b!5591551 ((_ is ElementMatch!15579) (regTwo!31670 (regOne!31670 r!7292)))) b!5592798))

(assert (= (and b!5591551 ((_ is Concat!24424) (regTwo!31670 (regOne!31670 r!7292)))) b!5592799))

(assert (= (and b!5591551 ((_ is Star!15579) (regTwo!31670 (regOne!31670 r!7292)))) b!5592800))

(assert (= (and b!5591551 ((_ is Union!15579) (regTwo!31670 (regOne!31670 r!7292)))) b!5592801))

(declare-fun condSetEmpty!37279 () Bool)

(assert (=> setNonEmpty!37267 (= condSetEmpty!37279 (= setRest!37267 ((as const (Array Context!9926 Bool)) false)))))

(declare-fun setRes!37279 () Bool)

(assert (=> setNonEmpty!37267 (= tp!1546447 setRes!37279)))

(declare-fun setIsEmpty!37279 () Bool)

(assert (=> setIsEmpty!37279 setRes!37279))

(declare-fun e!3450277 () Bool)

(declare-fun setElem!37279 () Context!9926)

(declare-fun tp!1546768 () Bool)

(declare-fun setNonEmpty!37279 () Bool)

(assert (=> setNonEmpty!37279 (= setRes!37279 (and tp!1546768 (inv!82194 setElem!37279) e!3450277))))

(declare-fun setRest!37279 () (InoxSet Context!9926))

(assert (=> setNonEmpty!37279 (= setRest!37267 ((_ map or) (store ((as const (Array Context!9926 Bool)) false) setElem!37279 true) setRest!37279))))

(declare-fun b!5592802 () Bool)

(declare-fun tp!1546767 () Bool)

(assert (=> b!5592802 (= e!3450277 tp!1546767)))

(assert (= (and setNonEmpty!37267 condSetEmpty!37279) setIsEmpty!37279))

(assert (= (and setNonEmpty!37267 (not condSetEmpty!37279)) setNonEmpty!37279))

(assert (= setNonEmpty!37279 b!5592802))

(declare-fun m!6572570 () Bool)

(assert (=> setNonEmpty!37279 m!6572570))

(declare-fun b!5592803 () Bool)

(declare-fun e!3450278 () Bool)

(declare-fun tp!1546769 () Bool)

(declare-fun tp!1546770 () Bool)

(assert (=> b!5592803 (= e!3450278 (and tp!1546769 tp!1546770))))

(assert (=> b!5591539 (= tp!1546394 e!3450278)))

(assert (= (and b!5591539 ((_ is Cons!62912) (exprs!5463 (h!69362 (t!376316 zl!343))))) b!5592803))

(declare-fun b!5592804 () Bool)

(declare-fun e!3450279 () Bool)

(declare-fun tp!1546771 () Bool)

(declare-fun tp!1546772 () Bool)

(assert (=> b!5592804 (= e!3450279 (and tp!1546771 tp!1546772))))

(assert (=> b!5591585 (= tp!1546446 e!3450279)))

(assert (= (and b!5591585 ((_ is Cons!62912) (exprs!5463 setElem!37267))) b!5592804))

(declare-fun b!5592806 () Bool)

(declare-fun e!3450281 () Bool)

(declare-fun tp!1546773 () Bool)

(assert (=> b!5592806 (= e!3450281 tp!1546773)))

(declare-fun b!5592805 () Bool)

(declare-fun e!3450280 () Bool)

(declare-fun tp!1546774 () Bool)

(assert (=> b!5592805 (= e!3450280 (and (inv!82194 (h!69362 (t!376316 (t!376316 zl!343)))) e!3450281 tp!1546774))))

(assert (=> b!5591538 (= tp!1546395 e!3450280)))

(assert (= b!5592805 b!5592806))

(assert (= (and b!5591538 ((_ is Cons!62914) (t!376316 (t!376316 zl!343)))) b!5592805))

(declare-fun m!6572572 () Bool)

(assert (=> b!5592805 m!6572572))

(declare-fun b!5592807 () Bool)

(declare-fun e!3450282 () Bool)

(declare-fun tp!1546775 () Bool)

(assert (=> b!5592807 (= e!3450282 (and tp_is_empty!40411 tp!1546775))))

(assert (=> b!5591562 (= tp!1546418 e!3450282)))

(assert (= (and b!5591562 ((_ is Cons!62913) (t!376315 (t!376315 s!2326)))) b!5592807))

(declare-fun b_lambda!211923 () Bool)

(assert (= b_lambda!211919 (or d!1767169 b_lambda!211923)))

(declare-fun bs!1293233 () Bool)

(declare-fun d!1767789 () Bool)

(assert (= bs!1293233 (and d!1767789 d!1767169)))

(assert (=> bs!1293233 (= (dynLambda!24607 lambda!300107 (h!69360 (unfocusZipperList!1007 zl!343))) (validRegex!7315 (h!69360 (unfocusZipperList!1007 zl!343))))))

(declare-fun m!6572574 () Bool)

(assert (=> bs!1293233 m!6572574))

(assert (=> b!5592616 d!1767789))

(declare-fun b_lambda!211925 () Bool)

(assert (= b_lambda!211911 (or d!1767171 b_lambda!211925)))

(declare-fun bs!1293234 () Bool)

(declare-fun d!1767791 () Bool)

(assert (= bs!1293234 (and d!1767791 d!1767171)))

(assert (=> bs!1293234 (= (dynLambda!24607 lambda!300110 (h!69360 lt!2255610)) (validRegex!7315 (h!69360 lt!2255610)))))

(declare-fun m!6572576 () Bool)

(assert (=> bs!1293234 m!6572576))

(assert (=> b!5592259 d!1767791))

(declare-fun b_lambda!211927 () Bool)

(assert (= b_lambda!211907 (or b!5590764 b_lambda!211927)))

(assert (=> d!1767537 d!1767237))

(declare-fun b_lambda!211929 () Bool)

(assert (= b_lambda!211915 (or d!1767189 b_lambda!211929)))

(declare-fun bs!1293235 () Bool)

(declare-fun d!1767793 () Bool)

(assert (= bs!1293235 (and d!1767793 d!1767189)))

(assert (=> bs!1293235 (= (dynLambda!24607 lambda!300125 (h!69360 (exprs!5463 (h!69362 zl!343)))) (validRegex!7315 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(declare-fun m!6572578 () Bool)

(assert (=> bs!1293235 m!6572578))

(assert (=> b!5592406 d!1767793))

(declare-fun b_lambda!211931 () Bool)

(assert (= b_lambda!211917 (or b!5590764 b_lambda!211931)))

(assert (=> d!1767721 d!1767239))

(declare-fun b_lambda!211933 () Bool)

(assert (= b_lambda!211921 (or d!1767185 b_lambda!211933)))

(declare-fun bs!1293236 () Bool)

(declare-fun d!1767795 () Bool)

(assert (= bs!1293236 (and d!1767795 d!1767185)))

(assert (=> bs!1293236 (= (dynLambda!24607 lambda!300122 (h!69360 (exprs!5463 (h!69362 zl!343)))) (validRegex!7315 (h!69360 (exprs!5463 (h!69362 zl!343)))))))

(assert (=> bs!1293236 m!6572578))

(assert (=> b!5592658 d!1767795))

(declare-fun b_lambda!211935 () Bool)

(assert (= b_lambda!211913 (or d!1767215 b_lambda!211935)))

(declare-fun bs!1293237 () Bool)

(declare-fun d!1767797 () Bool)

(assert (= bs!1293237 (and d!1767797 d!1767215)))

(assert (=> bs!1293237 (= (dynLambda!24607 lambda!300126 (h!69360 (exprs!5463 setElem!37261))) (validRegex!7315 (h!69360 (exprs!5463 setElem!37261))))))

(declare-fun m!6572580 () Bool)

(assert (=> bs!1293237 m!6572580))

(assert (=> b!5592265 d!1767797))

(declare-fun b_lambda!211937 () Bool)

(assert (= b_lambda!211909 (or b!5590764 b_lambda!211937)))

(assert (=> d!1767567 d!1767241))

(check-sat (not bm!419062) (not bm!419029) (not bm!418993) (not b!5592436) (not b!5592450) (not b!5592279) (not b!5592390) (not b!5592579) (not bm!419055) (not b!5592336) (not b!5592602) (not bm!419035) (not b!5592269) (not b!5592721) (not bm!419007) (not bm!419091) (not b!5592552) (not b!5592479) (not b!5592441) (not d!1767661) (not bm!419017) (not b!5592663) (not b!5592260) (not b!5592600) (not b!5592585) (not bm!418989) (not d!1767521) (not bm!419043) (not bm!419074) (not b!5592770) (not bm!419038) (not d!1767613) (not b!5592791) (not b!5592603) (not b!5592571) (not b!5592789) (not b!5592628) (not b!5592519) (not b!5592717) (not b!5592698) (not b!5592619) (not b_lambda!211871) (not bm!418996) (not bm!419044) (not b!5592734) (not b!5592280) (not b!5592710) (not b!5592566) (not bm!419050) (not bm!418981) (not b!5592596) (not b!5592267) (not b!5592535) (not d!1767529) (not b!5592560) (not d!1767663) (not b!5592277) (not b!5592731) (not d!1767757) (not bm!419048) (not d!1767731) (not b!5592480) (not b!5592771) (not bm!419040) (not d!1767677) (not b_lambda!211931) (not b!5592759) (not d!1767749) (not b!5592792) (not bm!419069) (not b!5592270) (not b!5592238) (not bm!419011) (not d!1767603) (not b!5592252) (not bm!419060) tp_is_empty!40411 (not d!1767637) (not b!5592679) (not bm!419022) (not d!1767641) (not bm!418977) (not d!1767579) (not b!5592503) (not b!5592595) (not b!5592652) (not b!5592767) (not b!5592806) (not b!5592439) (not b!5592722) (not b_lambda!211935) (not d!1767701) (not b!5592409) (not b!5592706) (not b!5592253) (not d!1767647) (not b!5592742) (not b!5592719) (not b!5592332) (not b!5592691) (not d!1767585) (not d!1767559) (not b!5592340) (not d!1767527) (not b!5592800) (not b!5592532) (not b!5592490) (not d!1767693) (not d!1767761) (not b!5592263) (not setNonEmpty!37277) (not b!5592483) (not b_lambda!211937) (not bm!419009) (not b!5592805) (not b!5592520) (not b!5592587) (not b!5592199) (not b!5592266) (not b!5592788) (not d!1767787) (not d!1767657) (not b!5592784) (not b!5592747) (not b_lambda!211873) (not d!1767723) (not b!5592561) (not bm!419045) (not bm!419015) (not d!1767581) (not bm!418987) (not b!5592718) (not bm!419088) (not b!5592733) (not d!1767727) (not d!1767679) (not b!5592753) (not b!5592366) (not b!5592570) (not b!5592766) (not b!5592329) (not b!5592768) (not bm!419023) (not b!5592239) (not b!5592774) (not b!5592695) (not b!5592392) (not b_lambda!211927) (not b!5592795) (not b!5592489) (not b!5592407) (not b!5592355) (not d!1767591) (not b!5592760) (not b!5592779) (not d!1767567) (not b!5592793) (not b!5592574) (not b!5592521) (not bm!419071) (not b!5592254) (not b!5592580) (not d!1767671) (not b!5592709) (not b!5592312) (not b!5592591) (not d!1767751) (not b!5592797) (not b!5592697) (not bm!419083) (not b!5592420) (not bm!419052) (not b!5592465) (not b_lambda!211933) (not b!5592536) (not b!5592569) (not d!1767653) (not b!5592725) (not bm!419016) (not bm!419093) (not b!5592780) (not bs!1293234) (not d!1767705) (not bm!419025) (not b!5592396) (not bs!1293233) (not b!5592460) (not b!5592562) (not b!5592443) (not b!5592751) (not bs!1293236) (not b!5592804) (not b!5592527) (not b!5592335) (not b!5592408) (not b!5592796) (not setNonEmpty!37279) (not d!1767573) (not d!1767605) (not bm!419090) (not b!5592274) (not bm!419064) (not b!5592714) (not b!5592268) (not bm!419059) (not d!1767593) (not b!5592534) (not b!5592606) (not b!5592618) (not b!5592246) (not b!5592541) (not b!5592764) (not b!5592221) (not b!5592783) (not d!1767743) (not b!5592342) (not b!5592592) (not b!5592467) (not b!5592726) (not d!1767547) (not b!5592325) (not b!5592758) (not d!1767729) (not b_lambda!211869) (not bm!418980) (not b!5592617) (not b!5592762) (not b!5592539) (not bm!419072) (not b!5592567) (not b!5592281) (not d!1767645) (not d!1767557) (not d!1767621) (not d!1767583) (not b!5592703) (not b!5592523) (not b!5592738) (not b!5592713) (not b!5592326) (not bm!419057) (not b!5592568) (not bm!419097) (not bm!419037) (not b!5592486) (not b!5592610) (not bm!419068) (not bm!419014) (not b!5592750) (not b!5592577) (not b!5592802) (not bm!419056) (not b!5592669) (not bm!419096) (not b!5592693) (not d!1767651) (not bm!419089) (not bm!418986) (not d!1767633) (not b!5592468) (not b!5592754) (not d!1767623) (not bm!419058) (not d!1767785) (not b!5592737) (not b_lambda!211929) (not b!5592776) (not b!5592604) (not d!1767687) (not b!5592803) (not bs!1293237) (not b!5592501) (not b!5592772) (not bm!419085) (not b!5592715) (not b!5592707) (not b!5592739) (not d!1767589) (not bm!419047) (not d!1767747) (not bm!419067) (not bm!418983) (not b!5592749) (not b!5592787) (not b!5592510) (not b!5592746) (not bm!419019) (not b!5592799) (not bm!419086) (not bm!419070) (not b!5592741) (not bm!419075) (not setNonEmpty!37278) (not d!1767733) (not bm!419049) (not b!5592432) (not bm!419077) (not d!1767575) (not b!5592674) (not b!5592727) (not b!5592264) (not b!5592745) (not b!5592334) (not d!1767543) (not b!5592529) (not b!5592639) (not d!1767601) (not b!5592730) (not d!1767759) (not b!5592599) (not d!1767717) (not b!5592261) (not d!1767721) (not b!5592781) (not b!5592699) (not d!1767531) (not d!1767741) (not d!1767533) (not b!5592778) (not b!5592433) (not b!5592391) (not b!5592227) (not d!1767709) (not d!1767597) (not b!5592659) (not b!5592488) (not bm!419080) (not b!5592271) (not b!5592735) (not bm!419081) (not b!5592511) (not b!5592240) (not d!1767615) (not d!1767595) (not bm!419034) (not b!5592755) (not b!5592775) (not b!5592694) (not b!5592581) (not setNonEmpty!37276) (not b!5592705) (not d!1767599) (not b!5592526) (not bm!419061) (not d!1767537) (not b!5592640) (not b!5592807) (not b!5592723) (not d!1767607) (not b!5592729) (not d!1767777) (not b!5592442) (not b!5592801) (not d!1767745) (not bm!419028) (not b!5592711) (not bm!419082) (not b_lambda!211923) (not b!5592743) (not bm!418997) (not b!5592533) (not b!5592419) (not b!5592701) (not b!5592210) (not b!5592702) (not d!1767665) (not bm!418992) (not b!5592518) (not b!5592641) (not b!5592763) (not b_lambda!211925) (not b!5592785) (not b!5592756) (not bs!1293235) (not bm!418995))
(check-sat)
