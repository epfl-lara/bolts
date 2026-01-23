; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!551500 () Bool)

(assert start!551500)

(declare-fun b!5213645 () Bool)

(assert (=> b!5213645 true))

(assert (=> b!5213645 true))

(declare-fun lambda!261481 () Int)

(declare-fun lambda!261480 () Int)

(assert (=> b!5213645 (not (= lambda!261481 lambda!261480))))

(assert (=> b!5213645 true))

(assert (=> b!5213645 true))

(declare-fun b!5213634 () Bool)

(assert (=> b!5213634 true))

(declare-fun b!5213630 () Bool)

(declare-fun res!2214277 () Bool)

(declare-fun e!3245586 () Bool)

(assert (=> b!5213630 (=> res!2214277 e!3245586)))

(declare-datatypes ((C!29874 0))(
  ( (C!29875 (val!24639 Int)) )
))
(declare-datatypes ((Regex!14802 0))(
  ( (ElementMatch!14802 (c!899215 C!29874)) (Concat!23647 (regOne!30116 Regex!14802) (regTwo!30116 Regex!14802)) (EmptyExpr!14802) (Star!14802 (reg!15131 Regex!14802)) (EmptyLang!14802) (Union!14802 (regOne!30117 Regex!14802) (regTwo!30117 Regex!14802)) )
))
(declare-datatypes ((List!60705 0))(
  ( (Nil!60581) (Cons!60581 (h!67029 Regex!14802) (t!373870 List!60705)) )
))
(declare-datatypes ((Context!8372 0))(
  ( (Context!8373 (exprs!4686 List!60705)) )
))
(declare-fun lt!2142488 () (Set Context!8372))

(declare-fun lt!2142487 () (Set Context!8372))

(declare-fun lt!2142485 () (Set Context!8372))

(assert (=> b!5213630 (= res!2214277 (not (= lt!2142485 (set.union lt!2142488 lt!2142487))))))

(declare-fun b!5213631 () Bool)

(declare-fun e!3245598 () Bool)

(declare-fun tp!1462034 () Bool)

(assert (=> b!5213631 (= e!3245598 tp!1462034)))

(declare-fun b!5213632 () Bool)

(declare-fun e!3245592 () Bool)

(declare-fun lt!2142497 () (Set Context!8372))

(declare-datatypes ((List!60706 0))(
  ( (Nil!60582) (Cons!60582 (h!67030 C!29874) (t!373871 List!60706)) )
))
(declare-fun s!2326 () List!60706)

(declare-fun matchZipper!1046 ((Set Context!8372) List!60706) Bool)

(assert (=> b!5213632 (= e!3245592 (matchZipper!1046 lt!2142497 (t!373871 s!2326)))))

(declare-fun b!5213633 () Bool)

(declare-fun res!2214282 () Bool)

(declare-fun e!3245590 () Bool)

(assert (=> b!5213633 (=> res!2214282 e!3245590)))

(declare-fun r!7292 () Regex!14802)

(assert (=> b!5213633 (= res!2214282 (or (is-EmptyExpr!14802 r!7292) (is-EmptyLang!14802 r!7292) (is-ElementMatch!14802 r!7292) (is-Union!14802 r!7292) (not (is-Concat!23647 r!7292))))))

(declare-fun e!3245594 () Bool)

(declare-fun e!3245589 () Bool)

(assert (=> b!5213634 (= e!3245594 e!3245589)))

(declare-fun res!2214285 () Bool)

(assert (=> b!5213634 (=> res!2214285 e!3245589)))

(assert (=> b!5213634 (= res!2214285 (or (and (is-ElementMatch!14802 (regOne!30116 r!7292)) (= (c!899215 (regOne!30116 r!7292)) (h!67030 s!2326))) (not (is-Union!14802 (regOne!30116 r!7292)))))))

(declare-datatypes ((Unit!152474 0))(
  ( (Unit!152475) )
))
(declare-fun lt!2142482 () Unit!152474)

(declare-fun e!3245587 () Unit!152474)

(assert (=> b!5213634 (= lt!2142482 e!3245587)))

(declare-fun c!899214 () Bool)

(declare-datatypes ((List!60707 0))(
  ( (Nil!60583) (Cons!60583 (h!67031 Context!8372) (t!373872 List!60707)) )
))
(declare-fun zl!343 () List!60707)

(declare-fun nullable!4971 (Regex!14802) Bool)

(assert (=> b!5213634 (= c!899214 (nullable!4971 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun lambda!261482 () Int)

(declare-fun z!1189 () (Set Context!8372))

(declare-fun flatMap!529 ((Set Context!8372) Int) (Set Context!8372))

(declare-fun derivationStepZipperUp!174 (Context!8372 C!29874) (Set Context!8372))

(assert (=> b!5213634 (= (flatMap!529 z!1189 lambda!261482) (derivationStepZipperUp!174 (h!67031 zl!343) (h!67030 s!2326)))))

(declare-fun lt!2142500 () Unit!152474)

(declare-fun lemmaFlatMapOnSingletonSet!61 ((Set Context!8372) Context!8372 Int) Unit!152474)

(assert (=> b!5213634 (= lt!2142500 (lemmaFlatMapOnSingletonSet!61 z!1189 (h!67031 zl!343) lambda!261482))))

(declare-fun lt!2142491 () Context!8372)

(assert (=> b!5213634 (= lt!2142487 (derivationStepZipperUp!174 lt!2142491 (h!67030 s!2326)))))

(declare-fun lt!2142499 () (Set Context!8372))

(declare-fun derivationStepZipperDown!250 (Regex!14802 Context!8372 C!29874) (Set Context!8372))

(assert (=> b!5213634 (= lt!2142499 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (h!67031 zl!343))) lt!2142491 (h!67030 s!2326)))))

(assert (=> b!5213634 (= lt!2142491 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun lt!2142498 () (Set Context!8372))

(assert (=> b!5213634 (= lt!2142498 (derivationStepZipperUp!174 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))) (h!67030 s!2326)))))

(declare-fun b!5213635 () Bool)

(declare-fun validRegex!6538 (Regex!14802) Bool)

(assert (=> b!5213635 (= e!3245586 (validRegex!6538 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun b!5213636 () Bool)

(declare-fun e!3245588 () Bool)

(declare-fun tp!1462035 () Bool)

(assert (=> b!5213636 (= e!3245588 tp!1462035)))

(declare-fun b!5213638 () Bool)

(declare-fun res!2214278 () Bool)

(declare-fun e!3245591 () Bool)

(assert (=> b!5213638 (=> (not res!2214278) (not e!3245591))))

(declare-fun unfocusZipper!544 (List!60707) Regex!14802)

(assert (=> b!5213638 (= res!2214278 (= r!7292 (unfocusZipper!544 zl!343)))))

(declare-fun b!5213639 () Bool)

(declare-fun e!3245597 () Bool)

(declare-fun tp_is_empty!38857 () Bool)

(declare-fun tp!1462027 () Bool)

(assert (=> b!5213639 (= e!3245597 (and tp_is_empty!38857 tp!1462027))))

(declare-fun b!5213640 () Bool)

(declare-fun res!2214269 () Bool)

(assert (=> b!5213640 (=> (not res!2214269) (not e!3245591))))

(declare-fun toList!8586 ((Set Context!8372)) List!60707)

(assert (=> b!5213640 (= res!2214269 (= (toList!8586 z!1189) zl!343))))

(declare-fun b!5213641 () Bool)

(declare-fun e!3245599 () Bool)

(assert (=> b!5213641 (= e!3245589 e!3245599)))

(declare-fun res!2214271 () Bool)

(assert (=> b!5213641 (=> res!2214271 e!3245599)))

(declare-fun lt!2142494 () (Set Context!8372))

(assert (=> b!5213641 (= res!2214271 (not (= lt!2142499 lt!2142494)))))

(assert (=> b!5213641 (= lt!2142494 (set.union lt!2142488 lt!2142497))))

(assert (=> b!5213641 (= lt!2142497 (derivationStepZipperDown!250 (regTwo!30117 (regOne!30116 r!7292)) lt!2142491 (h!67030 s!2326)))))

(assert (=> b!5213641 (= lt!2142488 (derivationStepZipperDown!250 (regOne!30117 (regOne!30116 r!7292)) lt!2142491 (h!67030 s!2326)))))

(declare-fun b!5213642 () Bool)

(declare-fun e!3245595 () Bool)

(declare-fun tp!1462028 () Bool)

(declare-fun tp!1462033 () Bool)

(assert (=> b!5213642 (= e!3245595 (and tp!1462028 tp!1462033))))

(declare-fun b!5213643 () Bool)

(declare-fun res!2214275 () Bool)

(assert (=> b!5213643 (=> res!2214275 e!3245590)))

(assert (=> b!5213643 (= res!2214275 (not (is-Cons!60581 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5213637 () Bool)

(declare-fun res!2214267 () Bool)

(assert (=> b!5213637 (=> res!2214267 e!3245590)))

(declare-fun isEmpty!32495 (List!60707) Bool)

(assert (=> b!5213637 (= res!2214267 (not (isEmpty!32495 (t!373872 zl!343))))))

(declare-fun res!2214273 () Bool)

(assert (=> start!551500 (=> (not res!2214273) (not e!3245591))))

(assert (=> start!551500 (= res!2214273 (validRegex!6538 r!7292))))

(assert (=> start!551500 e!3245591))

(assert (=> start!551500 e!3245595))

(declare-fun condSetEmpty!33129 () Bool)

(assert (=> start!551500 (= condSetEmpty!33129 (= z!1189 (as set.empty (Set Context!8372))))))

(declare-fun setRes!33129 () Bool)

(assert (=> start!551500 setRes!33129))

(declare-fun e!3245585 () Bool)

(assert (=> start!551500 e!3245585))

(assert (=> start!551500 e!3245597))

(declare-fun b!5213644 () Bool)

(declare-fun e!3245593 () Bool)

(assert (=> b!5213644 (= e!3245593 e!3245586)))

(declare-fun res!2214274 () Bool)

(assert (=> b!5213644 (=> res!2214274 e!3245586)))

(assert (=> b!5213644 (= res!2214274 (not (nullable!4971 (regOne!30117 (regOne!30116 r!7292)))))))

(declare-fun lt!2142496 () Context!8372)

(declare-fun lt!2142484 () (Set Context!8372))

(assert (=> b!5213644 (= (flatMap!529 lt!2142484 lambda!261482) (derivationStepZipperUp!174 lt!2142496 (h!67030 s!2326)))))

(declare-fun lt!2142493 () Unit!152474)

(assert (=> b!5213644 (= lt!2142493 (lemmaFlatMapOnSingletonSet!61 lt!2142484 lt!2142496 lambda!261482))))

(assert (=> b!5213644 (= lt!2142485 (derivationStepZipperUp!174 lt!2142496 (h!67030 s!2326)))))

(assert (=> b!5213644 (= lt!2142484 (set.insert lt!2142496 (as set.empty (Set Context!8372))))))

(assert (=> b!5213644 (= lt!2142496 (Context!8373 (Cons!60581 (regOne!30117 (regOne!30116 r!7292)) (t!373870 (exprs!4686 (h!67031 zl!343))))))))

(assert (=> b!5213645 (= e!3245590 e!3245594)))

(declare-fun res!2214279 () Bool)

(assert (=> b!5213645 (=> res!2214279 e!3245594)))

(declare-fun lt!2142492 () Bool)

(declare-fun lt!2142495 () Bool)

(assert (=> b!5213645 (= res!2214279 (or (not (= lt!2142495 lt!2142492)) (is-Nil!60582 s!2326)))))

(declare-fun Exists!1983 (Int) Bool)

(assert (=> b!5213645 (= (Exists!1983 lambda!261480) (Exists!1983 lambda!261481))))

(declare-fun lt!2142490 () Unit!152474)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!637 (Regex!14802 Regex!14802 List!60706) Unit!152474)

(assert (=> b!5213645 (= lt!2142490 (lemmaExistCutMatchRandMatchRSpecEquivalent!637 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326))))

(assert (=> b!5213645 (= lt!2142492 (Exists!1983 lambda!261480))))

(declare-datatypes ((tuple2!64002 0))(
  ( (tuple2!64003 (_1!35304 List!60706) (_2!35304 List!60706)) )
))
(declare-datatypes ((Option!14913 0))(
  ( (None!14912) (Some!14912 (v!50941 tuple2!64002)) )
))
(declare-fun isDefined!11616 (Option!14913) Bool)

(declare-fun findConcatSeparation!1327 (Regex!14802 Regex!14802 List!60706 List!60706 List!60706) Option!14913)

(assert (=> b!5213645 (= lt!2142492 (isDefined!11616 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326)))))

(declare-fun lt!2142486 () Unit!152474)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1091 (Regex!14802 Regex!14802 List!60706) Unit!152474)

(assert (=> b!5213645 (= lt!2142486 (lemmaFindConcatSeparationEquivalentToExists!1091 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326))))

(declare-fun b!5213646 () Bool)

(declare-fun e!3245596 () Bool)

(assert (=> b!5213646 (= e!3245596 (matchZipper!1046 lt!2142487 (t!373871 s!2326)))))

(declare-fun setIsEmpty!33129 () Bool)

(assert (=> setIsEmpty!33129 setRes!33129))

(declare-fun b!5213647 () Bool)

(declare-fun Unit!152476 () Unit!152474)

(assert (=> b!5213647 (= e!3245587 Unit!152476)))

(declare-fun lt!2142480 () Unit!152474)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!39 ((Set Context!8372) (Set Context!8372) List!60706) Unit!152474)

(assert (=> b!5213647 (= lt!2142480 (lemmaZipperConcatMatchesSameAsBothZippers!39 lt!2142499 lt!2142487 (t!373871 s!2326)))))

(declare-fun res!2214281 () Bool)

(assert (=> b!5213647 (= res!2214281 (matchZipper!1046 lt!2142499 (t!373871 s!2326)))))

(assert (=> b!5213647 (=> res!2214281 e!3245596)))

(assert (=> b!5213647 (= (matchZipper!1046 (set.union lt!2142499 lt!2142487) (t!373871 s!2326)) e!3245596)))

(declare-fun setNonEmpty!33129 () Bool)

(declare-fun tp!1462026 () Bool)

(declare-fun setElem!33129 () Context!8372)

(declare-fun inv!80253 (Context!8372) Bool)

(assert (=> setNonEmpty!33129 (= setRes!33129 (and tp!1462026 (inv!80253 setElem!33129) e!3245598))))

(declare-fun setRest!33129 () (Set Context!8372))

(assert (=> setNonEmpty!33129 (= z!1189 (set.union (set.insert setElem!33129 (as set.empty (Set Context!8372))) setRest!33129))))

(declare-fun b!5213648 () Bool)

(declare-fun res!2214272 () Bool)

(assert (=> b!5213648 (=> res!2214272 e!3245590)))

(declare-fun generalisedUnion!731 (List!60705) Regex!14802)

(declare-fun unfocusZipperList!244 (List!60707) List!60705)

(assert (=> b!5213648 (= res!2214272 (not (= r!7292 (generalisedUnion!731 (unfocusZipperList!244 zl!343)))))))

(declare-fun b!5213649 () Bool)

(declare-fun tp!1462030 () Bool)

(declare-fun tp!1462032 () Bool)

(assert (=> b!5213649 (= e!3245595 (and tp!1462030 tp!1462032))))

(declare-fun b!5213650 () Bool)

(declare-fun res!2214276 () Bool)

(assert (=> b!5213650 (=> res!2214276 e!3245594)))

(declare-fun isEmpty!32496 (List!60705) Bool)

(assert (=> b!5213650 (= res!2214276 (isEmpty!32496 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5213651 () Bool)

(assert (=> b!5213651 (= e!3245595 tp_is_empty!38857)))

(declare-fun b!5213652 () Bool)

(assert (=> b!5213652 (= e!3245599 e!3245593)))

(declare-fun res!2214270 () Bool)

(assert (=> b!5213652 (=> res!2214270 e!3245593)))

(declare-fun e!3245584 () Bool)

(assert (=> b!5213652 (= res!2214270 e!3245584)))

(declare-fun res!2214268 () Bool)

(assert (=> b!5213652 (=> (not res!2214268) (not e!3245584))))

(declare-fun lt!2142483 () Bool)

(assert (=> b!5213652 (= res!2214268 (not (= (matchZipper!1046 lt!2142499 (t!373871 s!2326)) lt!2142483)))))

(assert (=> b!5213652 (= (matchZipper!1046 lt!2142494 (t!373871 s!2326)) e!3245592)))

(declare-fun res!2214283 () Bool)

(assert (=> b!5213652 (=> res!2214283 e!3245592)))

(assert (=> b!5213652 (= res!2214283 lt!2142483)))

(assert (=> b!5213652 (= lt!2142483 (matchZipper!1046 lt!2142488 (t!373871 s!2326)))))

(declare-fun lt!2142489 () Unit!152474)

(assert (=> b!5213652 (= lt!2142489 (lemmaZipperConcatMatchesSameAsBothZippers!39 lt!2142488 lt!2142497 (t!373871 s!2326)))))

(declare-fun b!5213653 () Bool)

(assert (=> b!5213653 (= e!3245591 (not e!3245590))))

(declare-fun res!2214280 () Bool)

(assert (=> b!5213653 (=> res!2214280 e!3245590)))

(assert (=> b!5213653 (= res!2214280 (not (is-Cons!60583 zl!343)))))

(declare-fun matchRSpec!1905 (Regex!14802 List!60706) Bool)

(assert (=> b!5213653 (= lt!2142495 (matchRSpec!1905 r!7292 s!2326))))

(declare-fun matchR!6987 (Regex!14802 List!60706) Bool)

(assert (=> b!5213653 (= lt!2142495 (matchR!6987 r!7292 s!2326))))

(declare-fun lt!2142481 () Unit!152474)

(declare-fun mainMatchTheorem!1905 (Regex!14802 List!60706) Unit!152474)

(assert (=> b!5213653 (= lt!2142481 (mainMatchTheorem!1905 r!7292 s!2326))))

(declare-fun b!5213654 () Bool)

(declare-fun Unit!152477 () Unit!152474)

(assert (=> b!5213654 (= e!3245587 Unit!152477)))

(declare-fun tp!1462031 () Bool)

(declare-fun b!5213655 () Bool)

(assert (=> b!5213655 (= e!3245585 (and (inv!80253 (h!67031 zl!343)) e!3245588 tp!1462031))))

(declare-fun b!5213656 () Bool)

(assert (=> b!5213656 (= e!3245584 (not (matchZipper!1046 lt!2142497 (t!373871 s!2326))))))

(declare-fun b!5213657 () Bool)

(declare-fun tp!1462029 () Bool)

(assert (=> b!5213657 (= e!3245595 tp!1462029)))

(declare-fun b!5213658 () Bool)

(declare-fun res!2214284 () Bool)

(assert (=> b!5213658 (=> res!2214284 e!3245590)))

(declare-fun generalisedConcat!471 (List!60705) Regex!14802)

(assert (=> b!5213658 (= res!2214284 (not (= r!7292 (generalisedConcat!471 (exprs!4686 (h!67031 zl!343))))))))

(assert (= (and start!551500 res!2214273) b!5213640))

(assert (= (and b!5213640 res!2214269) b!5213638))

(assert (= (and b!5213638 res!2214278) b!5213653))

(assert (= (and b!5213653 (not res!2214280)) b!5213637))

(assert (= (and b!5213637 (not res!2214267)) b!5213658))

(assert (= (and b!5213658 (not res!2214284)) b!5213643))

(assert (= (and b!5213643 (not res!2214275)) b!5213648))

(assert (= (and b!5213648 (not res!2214272)) b!5213633))

(assert (= (and b!5213633 (not res!2214282)) b!5213645))

(assert (= (and b!5213645 (not res!2214279)) b!5213650))

(assert (= (and b!5213650 (not res!2214276)) b!5213634))

(assert (= (and b!5213634 c!899214) b!5213647))

(assert (= (and b!5213634 (not c!899214)) b!5213654))

(assert (= (and b!5213647 (not res!2214281)) b!5213646))

(assert (= (and b!5213634 (not res!2214285)) b!5213641))

(assert (= (and b!5213641 (not res!2214271)) b!5213652))

(assert (= (and b!5213652 (not res!2214283)) b!5213632))

(assert (= (and b!5213652 res!2214268) b!5213656))

(assert (= (and b!5213652 (not res!2214270)) b!5213644))

(assert (= (and b!5213644 (not res!2214274)) b!5213630))

(assert (= (and b!5213630 (not res!2214277)) b!5213635))

(assert (= (and start!551500 (is-ElementMatch!14802 r!7292)) b!5213651))

(assert (= (and start!551500 (is-Concat!23647 r!7292)) b!5213642))

(assert (= (and start!551500 (is-Star!14802 r!7292)) b!5213657))

(assert (= (and start!551500 (is-Union!14802 r!7292)) b!5213649))

(assert (= (and start!551500 condSetEmpty!33129) setIsEmpty!33129))

(assert (= (and start!551500 (not condSetEmpty!33129)) setNonEmpty!33129))

(assert (= setNonEmpty!33129 b!5213631))

(assert (= b!5213655 b!5213636))

(assert (= (and start!551500 (is-Cons!60583 zl!343)) b!5213655))

(assert (= (and start!551500 (is-Cons!60582 s!2326)) b!5213639))

(declare-fun m!6262726 () Bool)

(assert (=> b!5213647 m!6262726))

(declare-fun m!6262728 () Bool)

(assert (=> b!5213647 m!6262728))

(declare-fun m!6262730 () Bool)

(assert (=> b!5213647 m!6262730))

(declare-fun m!6262732 () Bool)

(assert (=> b!5213644 m!6262732))

(declare-fun m!6262734 () Bool)

(assert (=> b!5213644 m!6262734))

(declare-fun m!6262736 () Bool)

(assert (=> b!5213644 m!6262736))

(declare-fun m!6262738 () Bool)

(assert (=> b!5213644 m!6262738))

(declare-fun m!6262740 () Bool)

(assert (=> b!5213644 m!6262740))

(declare-fun m!6262742 () Bool)

(assert (=> start!551500 m!6262742))

(declare-fun m!6262744 () Bool)

(assert (=> setNonEmpty!33129 m!6262744))

(declare-fun m!6262746 () Bool)

(assert (=> b!5213640 m!6262746))

(declare-fun m!6262748 () Bool)

(assert (=> b!5213634 m!6262748))

(declare-fun m!6262750 () Bool)

(assert (=> b!5213634 m!6262750))

(declare-fun m!6262752 () Bool)

(assert (=> b!5213634 m!6262752))

(declare-fun m!6262754 () Bool)

(assert (=> b!5213634 m!6262754))

(declare-fun m!6262756 () Bool)

(assert (=> b!5213634 m!6262756))

(declare-fun m!6262758 () Bool)

(assert (=> b!5213634 m!6262758))

(declare-fun m!6262760 () Bool)

(assert (=> b!5213634 m!6262760))

(declare-fun m!6262762 () Bool)

(assert (=> b!5213638 m!6262762))

(declare-fun m!6262764 () Bool)

(assert (=> b!5213650 m!6262764))

(declare-fun m!6262766 () Bool)

(assert (=> b!5213648 m!6262766))

(assert (=> b!5213648 m!6262766))

(declare-fun m!6262768 () Bool)

(assert (=> b!5213648 m!6262768))

(declare-fun m!6262770 () Bool)

(assert (=> b!5213645 m!6262770))

(declare-fun m!6262772 () Bool)

(assert (=> b!5213645 m!6262772))

(declare-fun m!6262774 () Bool)

(assert (=> b!5213645 m!6262774))

(assert (=> b!5213645 m!6262770))

(declare-fun m!6262776 () Bool)

(assert (=> b!5213645 m!6262776))

(declare-fun m!6262778 () Bool)

(assert (=> b!5213645 m!6262778))

(assert (=> b!5213645 m!6262772))

(declare-fun m!6262780 () Bool)

(assert (=> b!5213645 m!6262780))

(declare-fun m!6262782 () Bool)

(assert (=> b!5213635 m!6262782))

(declare-fun m!6262784 () Bool)

(assert (=> b!5213656 m!6262784))

(declare-fun m!6262786 () Bool)

(assert (=> b!5213658 m!6262786))

(declare-fun m!6262788 () Bool)

(assert (=> b!5213646 m!6262788))

(declare-fun m!6262790 () Bool)

(assert (=> b!5213653 m!6262790))

(declare-fun m!6262792 () Bool)

(assert (=> b!5213653 m!6262792))

(declare-fun m!6262794 () Bool)

(assert (=> b!5213653 m!6262794))

(declare-fun m!6262796 () Bool)

(assert (=> b!5213655 m!6262796))

(declare-fun m!6262798 () Bool)

(assert (=> b!5213641 m!6262798))

(declare-fun m!6262800 () Bool)

(assert (=> b!5213641 m!6262800))

(assert (=> b!5213652 m!6262728))

(declare-fun m!6262802 () Bool)

(assert (=> b!5213652 m!6262802))

(declare-fun m!6262804 () Bool)

(assert (=> b!5213652 m!6262804))

(declare-fun m!6262806 () Bool)

(assert (=> b!5213652 m!6262806))

(assert (=> b!5213632 m!6262784))

(declare-fun m!6262808 () Bool)

(assert (=> b!5213637 m!6262808))

(push 1)

(assert (not b!5213649))

(assert (not b!5213638))

(assert (not b!5213655))

(assert (not b!5213645))

(assert (not b!5213631))

(assert (not b!5213647))

(assert (not b!5213656))

(assert (not b!5213636))

(assert tp_is_empty!38857)

(assert (not b!5213646))

(assert (not b!5213637))

(assert (not b!5213639))

(assert (not b!5213652))

(assert (not b!5213641))

(assert (not b!5213642))

(assert (not start!551500))

(assert (not setNonEmpty!33129))

(assert (not b!5213632))

(assert (not b!5213650))

(assert (not b!5213635))

(assert (not b!5213644))

(assert (not b!5213648))

(assert (not b!5213657))

(assert (not b!5213634))

(assert (not b!5213640))

(assert (not b!5213658))

(assert (not b!5213653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1681093 () Bool)

(declare-fun c!899227 () Bool)

(declare-fun isEmpty!32499 (List!60706) Bool)

(assert (=> d!1681093 (= c!899227 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3245656 () Bool)

(assert (=> d!1681093 (= (matchZipper!1046 lt!2142497 (t!373871 s!2326)) e!3245656)))

(declare-fun b!5213774 () Bool)

(declare-fun nullableZipper!1228 ((Set Context!8372)) Bool)

(assert (=> b!5213774 (= e!3245656 (nullableZipper!1228 lt!2142497))))

(declare-fun b!5213775 () Bool)

(declare-fun derivationStepZipper!1072 ((Set Context!8372) C!29874) (Set Context!8372))

(declare-fun head!11175 (List!60706) C!29874)

(declare-fun tail!10272 (List!60706) List!60706)

(assert (=> b!5213775 (= e!3245656 (matchZipper!1046 (derivationStepZipper!1072 lt!2142497 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681093 c!899227) b!5213774))

(assert (= (and d!1681093 (not c!899227)) b!5213775))

(declare-fun m!6262894 () Bool)

(assert (=> d!1681093 m!6262894))

(declare-fun m!6262896 () Bool)

(assert (=> b!5213774 m!6262896))

(declare-fun m!6262898 () Bool)

(assert (=> b!5213775 m!6262898))

(assert (=> b!5213775 m!6262898))

(declare-fun m!6262900 () Bool)

(assert (=> b!5213775 m!6262900))

(declare-fun m!6262902 () Bool)

(assert (=> b!5213775 m!6262902))

(assert (=> b!5213775 m!6262900))

(assert (=> b!5213775 m!6262902))

(declare-fun m!6262904 () Bool)

(assert (=> b!5213775 m!6262904))

(assert (=> b!5213632 d!1681093))

(declare-fun bm!367353 () Bool)

(declare-fun call!367363 () (Set Context!8372))

(declare-fun call!367361 () (Set Context!8372))

(assert (=> bm!367353 (= call!367363 call!367361)))

(declare-fun c!899241 () Bool)

(declare-fun c!899242 () Bool)

(declare-fun bm!367354 () Bool)

(declare-fun call!367358 () List!60705)

(declare-fun $colon$colon!1278 (List!60705 Regex!14802) List!60705)

(assert (=> bm!367354 (= call!367358 ($colon$colon!1278 (exprs!4686 lt!2142491) (ite (or c!899241 c!899242) (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (regTwo!30117 (regOne!30116 r!7292)))))))

(declare-fun b!5213798 () Bool)

(declare-fun e!3245669 () (Set Context!8372))

(declare-fun e!3245673 () (Set Context!8372))

(assert (=> b!5213798 (= e!3245669 e!3245673)))

(declare-fun c!899240 () Bool)

(assert (=> b!5213798 (= c!899240 (is-Union!14802 (regTwo!30117 (regOne!30116 r!7292))))))

(declare-fun b!5213799 () Bool)

(declare-fun e!3245671 () (Set Context!8372))

(declare-fun call!367360 () (Set Context!8372))

(assert (=> b!5213799 (= e!3245671 call!367360)))

(declare-fun call!367362 () List!60705)

(declare-fun bm!367355 () Bool)

(assert (=> bm!367355 (= call!367361 (derivationStepZipperDown!250 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292)))))) (ite (or c!899240 c!899241) lt!2142491 (Context!8373 call!367362)) (h!67030 s!2326)))))

(declare-fun b!5213800 () Bool)

(assert (=> b!5213800 (= e!3245669 (set.insert lt!2142491 (as set.empty (Set Context!8372))))))

(declare-fun b!5213801 () Bool)

(declare-fun e!3245670 () (Set Context!8372))

(assert (=> b!5213801 (= e!3245670 (as set.empty (Set Context!8372)))))

(declare-fun b!5213802 () Bool)

(declare-fun e!3245674 () (Set Context!8372))

(declare-fun call!367359 () (Set Context!8372))

(assert (=> b!5213802 (= e!3245674 (set.union call!367359 call!367363))))

(declare-fun b!5213803 () Bool)

(assert (=> b!5213803 (= e!3245670 call!367360)))

(declare-fun b!5213804 () Bool)

(declare-fun e!3245672 () Bool)

(assert (=> b!5213804 (= e!3245672 (nullable!4971 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))))))

(declare-fun bm!367356 () Bool)

(assert (=> bm!367356 (= call!367362 call!367358)))

(declare-fun b!5213805 () Bool)

(assert (=> b!5213805 (= c!899241 e!3245672)))

(declare-fun res!2214357 () Bool)

(assert (=> b!5213805 (=> (not res!2214357) (not e!3245672))))

(assert (=> b!5213805 (= res!2214357 (is-Concat!23647 (regTwo!30117 (regOne!30116 r!7292))))))

(assert (=> b!5213805 (= e!3245673 e!3245674)))

(declare-fun b!5213806 () Bool)

(assert (=> b!5213806 (= e!3245674 e!3245671)))

(assert (=> b!5213806 (= c!899242 (is-Concat!23647 (regTwo!30117 (regOne!30116 r!7292))))))

(declare-fun bm!367357 () Bool)

(assert (=> bm!367357 (= call!367359 (derivationStepZipperDown!250 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))) (ite c!899240 lt!2142491 (Context!8373 call!367358)) (h!67030 s!2326)))))

(declare-fun b!5213807 () Bool)

(declare-fun c!899238 () Bool)

(assert (=> b!5213807 (= c!899238 (is-Star!14802 (regTwo!30117 (regOne!30116 r!7292))))))

(assert (=> b!5213807 (= e!3245671 e!3245670)))

(declare-fun b!5213808 () Bool)

(assert (=> b!5213808 (= e!3245673 (set.union call!367361 call!367359))))

(declare-fun d!1681095 () Bool)

(declare-fun c!899239 () Bool)

(assert (=> d!1681095 (= c!899239 (and (is-ElementMatch!14802 (regTwo!30117 (regOne!30116 r!7292))) (= (c!899215 (regTwo!30117 (regOne!30116 r!7292))) (h!67030 s!2326))))))

(assert (=> d!1681095 (= (derivationStepZipperDown!250 (regTwo!30117 (regOne!30116 r!7292)) lt!2142491 (h!67030 s!2326)) e!3245669)))

(declare-fun bm!367358 () Bool)

(assert (=> bm!367358 (= call!367360 call!367363)))

(assert (= (and d!1681095 c!899239) b!5213800))

(assert (= (and d!1681095 (not c!899239)) b!5213798))

(assert (= (and b!5213798 c!899240) b!5213808))

(assert (= (and b!5213798 (not c!899240)) b!5213805))

(assert (= (and b!5213805 res!2214357) b!5213804))

(assert (= (and b!5213805 c!899241) b!5213802))

(assert (= (and b!5213805 (not c!899241)) b!5213806))

(assert (= (and b!5213806 c!899242) b!5213799))

(assert (= (and b!5213806 (not c!899242)) b!5213807))

(assert (= (and b!5213807 c!899238) b!5213803))

(assert (= (and b!5213807 (not c!899238)) b!5213801))

(assert (= (or b!5213799 b!5213803) bm!367356))

(assert (= (or b!5213799 b!5213803) bm!367358))

(assert (= (or b!5213802 bm!367356) bm!367354))

(assert (= (or b!5213802 bm!367358) bm!367353))

(assert (= (or b!5213808 b!5213802) bm!367357))

(assert (= (or b!5213808 bm!367353) bm!367355))

(declare-fun m!6262906 () Bool)

(assert (=> bm!367357 m!6262906))

(declare-fun m!6262908 () Bool)

(assert (=> b!5213804 m!6262908))

(declare-fun m!6262910 () Bool)

(assert (=> bm!367354 m!6262910))

(declare-fun m!6262912 () Bool)

(assert (=> b!5213800 m!6262912))

(declare-fun m!6262914 () Bool)

(assert (=> bm!367355 m!6262914))

(assert (=> b!5213641 d!1681095))

(declare-fun bm!367359 () Bool)

(declare-fun call!367369 () (Set Context!8372))

(declare-fun call!367367 () (Set Context!8372))

(assert (=> bm!367359 (= call!367369 call!367367)))

(declare-fun c!899246 () Bool)

(declare-fun call!367364 () List!60705)

(declare-fun c!899247 () Bool)

(declare-fun bm!367360 () Bool)

(assert (=> bm!367360 (= call!367364 ($colon$colon!1278 (exprs!4686 lt!2142491) (ite (or c!899246 c!899247) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (regOne!30117 (regOne!30116 r!7292)))))))

(declare-fun b!5213809 () Bool)

(declare-fun e!3245675 () (Set Context!8372))

(declare-fun e!3245679 () (Set Context!8372))

(assert (=> b!5213809 (= e!3245675 e!3245679)))

(declare-fun c!899245 () Bool)

(assert (=> b!5213809 (= c!899245 (is-Union!14802 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun b!5213810 () Bool)

(declare-fun e!3245677 () (Set Context!8372))

(declare-fun call!367366 () (Set Context!8372))

(assert (=> b!5213810 (= e!3245677 call!367366)))

(declare-fun call!367368 () List!60705)

(declare-fun bm!367361 () Bool)

(assert (=> bm!367361 (= call!367367 (derivationStepZipperDown!250 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))) (ite (or c!899245 c!899246) lt!2142491 (Context!8373 call!367368)) (h!67030 s!2326)))))

(declare-fun b!5213811 () Bool)

(assert (=> b!5213811 (= e!3245675 (set.insert lt!2142491 (as set.empty (Set Context!8372))))))

(declare-fun b!5213812 () Bool)

(declare-fun e!3245676 () (Set Context!8372))

(assert (=> b!5213812 (= e!3245676 (as set.empty (Set Context!8372)))))

(declare-fun b!5213813 () Bool)

(declare-fun e!3245680 () (Set Context!8372))

(declare-fun call!367365 () (Set Context!8372))

(assert (=> b!5213813 (= e!3245680 (set.union call!367365 call!367369))))

(declare-fun b!5213814 () Bool)

(assert (=> b!5213814 (= e!3245676 call!367366)))

(declare-fun b!5213815 () Bool)

(declare-fun e!3245678 () Bool)

(assert (=> b!5213815 (= e!3245678 (nullable!4971 (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))

(declare-fun bm!367362 () Bool)

(assert (=> bm!367362 (= call!367368 call!367364)))

(declare-fun b!5213816 () Bool)

(assert (=> b!5213816 (= c!899246 e!3245678)))

(declare-fun res!2214358 () Bool)

(assert (=> b!5213816 (=> (not res!2214358) (not e!3245678))))

(assert (=> b!5213816 (= res!2214358 (is-Concat!23647 (regOne!30117 (regOne!30116 r!7292))))))

(assert (=> b!5213816 (= e!3245679 e!3245680)))

(declare-fun b!5213817 () Bool)

(assert (=> b!5213817 (= e!3245680 e!3245677)))

(assert (=> b!5213817 (= c!899247 (is-Concat!23647 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun bm!367363 () Bool)

(assert (=> bm!367363 (= call!367365 (derivationStepZipperDown!250 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))) (ite c!899245 lt!2142491 (Context!8373 call!367364)) (h!67030 s!2326)))))

(declare-fun b!5213818 () Bool)

(declare-fun c!899243 () Bool)

(assert (=> b!5213818 (= c!899243 (is-Star!14802 (regOne!30117 (regOne!30116 r!7292))))))

(assert (=> b!5213818 (= e!3245677 e!3245676)))

(declare-fun b!5213819 () Bool)

(assert (=> b!5213819 (= e!3245679 (set.union call!367367 call!367365))))

(declare-fun d!1681097 () Bool)

(declare-fun c!899244 () Bool)

(assert (=> d!1681097 (= c!899244 (and (is-ElementMatch!14802 (regOne!30117 (regOne!30116 r!7292))) (= (c!899215 (regOne!30117 (regOne!30116 r!7292))) (h!67030 s!2326))))))

(assert (=> d!1681097 (= (derivationStepZipperDown!250 (regOne!30117 (regOne!30116 r!7292)) lt!2142491 (h!67030 s!2326)) e!3245675)))

(declare-fun bm!367364 () Bool)

(assert (=> bm!367364 (= call!367366 call!367369)))

(assert (= (and d!1681097 c!899244) b!5213811))

(assert (= (and d!1681097 (not c!899244)) b!5213809))

(assert (= (and b!5213809 c!899245) b!5213819))

(assert (= (and b!5213809 (not c!899245)) b!5213816))

(assert (= (and b!5213816 res!2214358) b!5213815))

(assert (= (and b!5213816 c!899246) b!5213813))

(assert (= (and b!5213816 (not c!899246)) b!5213817))

(assert (= (and b!5213817 c!899247) b!5213810))

(assert (= (and b!5213817 (not c!899247)) b!5213818))

(assert (= (and b!5213818 c!899243) b!5213814))

(assert (= (and b!5213818 (not c!899243)) b!5213812))

(assert (= (or b!5213810 b!5213814) bm!367362))

(assert (= (or b!5213810 b!5213814) bm!367364))

(assert (= (or b!5213813 bm!367362) bm!367360))

(assert (= (or b!5213813 bm!367364) bm!367359))

(assert (= (or b!5213819 b!5213813) bm!367363))

(assert (= (or b!5213819 bm!367359) bm!367361))

(declare-fun m!6262916 () Bool)

(assert (=> bm!367363 m!6262916))

(declare-fun m!6262918 () Bool)

(assert (=> b!5213815 m!6262918))

(declare-fun m!6262920 () Bool)

(assert (=> bm!367360 m!6262920))

(assert (=> b!5213811 m!6262912))

(declare-fun m!6262922 () Bool)

(assert (=> bm!367361 m!6262922))

(assert (=> b!5213641 d!1681097))

(declare-fun d!1681099 () Bool)

(assert (=> d!1681099 (= (isEmpty!32496 (t!373870 (exprs!4686 (h!67031 zl!343)))) (is-Nil!60581 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> b!5213650 d!1681099))

(declare-fun b!5213838 () Bool)

(declare-fun e!3245693 () Bool)

(assert (=> b!5213838 (= e!3245693 (matchR!6987 (regTwo!30116 r!7292) s!2326))))

(declare-fun b!5213839 () Bool)

(declare-fun e!3245691 () Option!14913)

(declare-fun e!3245692 () Option!14913)

(assert (=> b!5213839 (= e!3245691 e!3245692)))

(declare-fun c!899252 () Bool)

(assert (=> b!5213839 (= c!899252 (is-Nil!60582 s!2326))))

(declare-fun d!1681101 () Bool)

(declare-fun e!3245695 () Bool)

(assert (=> d!1681101 e!3245695))

(declare-fun res!2214372 () Bool)

(assert (=> d!1681101 (=> res!2214372 e!3245695)))

(declare-fun e!3245694 () Bool)

(assert (=> d!1681101 (= res!2214372 e!3245694)))

(declare-fun res!2214371 () Bool)

(assert (=> d!1681101 (=> (not res!2214371) (not e!3245694))))

(declare-fun lt!2142572 () Option!14913)

(assert (=> d!1681101 (= res!2214371 (isDefined!11616 lt!2142572))))

(assert (=> d!1681101 (= lt!2142572 e!3245691)))

(declare-fun c!899253 () Bool)

(assert (=> d!1681101 (= c!899253 e!3245693)))

(declare-fun res!2214370 () Bool)

(assert (=> d!1681101 (=> (not res!2214370) (not e!3245693))))

(assert (=> d!1681101 (= res!2214370 (matchR!6987 (regOne!30116 r!7292) Nil!60582))))

(assert (=> d!1681101 (validRegex!6538 (regOne!30116 r!7292))))

(assert (=> d!1681101 (= (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326) lt!2142572)))

(declare-fun b!5213840 () Bool)

(declare-fun res!2214373 () Bool)

(assert (=> b!5213840 (=> (not res!2214373) (not e!3245694))))

(declare-fun get!20815 (Option!14913) tuple2!64002)

(assert (=> b!5213840 (= res!2214373 (matchR!6987 (regOne!30116 r!7292) (_1!35304 (get!20815 lt!2142572))))))

(declare-fun b!5213841 () Bool)

(declare-fun res!2214369 () Bool)

(assert (=> b!5213841 (=> (not res!2214369) (not e!3245694))))

(assert (=> b!5213841 (= res!2214369 (matchR!6987 (regTwo!30116 r!7292) (_2!35304 (get!20815 lt!2142572))))))

(declare-fun b!5213842 () Bool)

(declare-fun lt!2142570 () Unit!152474)

(declare-fun lt!2142571 () Unit!152474)

(assert (=> b!5213842 (= lt!2142570 lt!2142571)))

(declare-fun ++!13208 (List!60706 List!60706) List!60706)

(assert (=> b!5213842 (= (++!13208 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (t!373871 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1623 (List!60706 C!29874 List!60706 List!60706) Unit!152474)

(assert (=> b!5213842 (= lt!2142571 (lemmaMoveElementToOtherListKeepsConcatEq!1623 Nil!60582 (h!67030 s!2326) (t!373871 s!2326) s!2326))))

(assert (=> b!5213842 (= e!3245692 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (t!373871 s!2326) s!2326))))

(declare-fun b!5213843 () Bool)

(assert (=> b!5213843 (= e!3245695 (not (isDefined!11616 lt!2142572)))))

(declare-fun b!5213844 () Bool)

(assert (=> b!5213844 (= e!3245692 None!14912)))

(declare-fun b!5213845 () Bool)

(assert (=> b!5213845 (= e!3245694 (= (++!13208 (_1!35304 (get!20815 lt!2142572)) (_2!35304 (get!20815 lt!2142572))) s!2326))))

(declare-fun b!5213846 () Bool)

(assert (=> b!5213846 (= e!3245691 (Some!14912 (tuple2!64003 Nil!60582 s!2326)))))

(assert (= (and d!1681101 res!2214370) b!5213838))

(assert (= (and d!1681101 c!899253) b!5213846))

(assert (= (and d!1681101 (not c!899253)) b!5213839))

(assert (= (and b!5213839 c!899252) b!5213844))

(assert (= (and b!5213839 (not c!899252)) b!5213842))

(assert (= (and d!1681101 res!2214371) b!5213840))

(assert (= (and b!5213840 res!2214373) b!5213841))

(assert (= (and b!5213841 res!2214369) b!5213845))

(assert (= (and d!1681101 (not res!2214372)) b!5213843))

(declare-fun m!6262924 () Bool)

(assert (=> b!5213845 m!6262924))

(declare-fun m!6262926 () Bool)

(assert (=> b!5213845 m!6262926))

(declare-fun m!6262928 () Bool)

(assert (=> b!5213843 m!6262928))

(declare-fun m!6262930 () Bool)

(assert (=> b!5213838 m!6262930))

(assert (=> d!1681101 m!6262928))

(declare-fun m!6262932 () Bool)

(assert (=> d!1681101 m!6262932))

(declare-fun m!6262934 () Bool)

(assert (=> d!1681101 m!6262934))

(assert (=> b!5213841 m!6262924))

(declare-fun m!6262936 () Bool)

(assert (=> b!5213841 m!6262936))

(declare-fun m!6262938 () Bool)

(assert (=> b!5213842 m!6262938))

(assert (=> b!5213842 m!6262938))

(declare-fun m!6262940 () Bool)

(assert (=> b!5213842 m!6262940))

(declare-fun m!6262942 () Bool)

(assert (=> b!5213842 m!6262942))

(assert (=> b!5213842 m!6262938))

(declare-fun m!6262944 () Bool)

(assert (=> b!5213842 m!6262944))

(assert (=> b!5213840 m!6262924))

(declare-fun m!6262946 () Bool)

(assert (=> b!5213840 m!6262946))

(assert (=> b!5213645 d!1681101))

(declare-fun d!1681103 () Bool)

(declare-fun choose!38759 (Int) Bool)

(assert (=> d!1681103 (= (Exists!1983 lambda!261481) (choose!38759 lambda!261481))))

(declare-fun bs!1211200 () Bool)

(assert (= bs!1211200 d!1681103))

(declare-fun m!6262948 () Bool)

(assert (=> bs!1211200 m!6262948))

(assert (=> b!5213645 d!1681103))

(declare-fun d!1681105 () Bool)

(assert (=> d!1681105 (= (Exists!1983 lambda!261480) (choose!38759 lambda!261480))))

(declare-fun bs!1211201 () Bool)

(assert (= bs!1211201 d!1681105))

(declare-fun m!6262950 () Bool)

(assert (=> bs!1211201 m!6262950))

(assert (=> b!5213645 d!1681105))

(declare-fun bs!1211202 () Bool)

(declare-fun d!1681107 () Bool)

(assert (= bs!1211202 (and d!1681107 b!5213645)))

(declare-fun lambda!261498 () Int)

(assert (=> bs!1211202 (= lambda!261498 lambda!261480)))

(assert (=> bs!1211202 (not (= lambda!261498 lambda!261481))))

(assert (=> d!1681107 true))

(assert (=> d!1681107 true))

(assert (=> d!1681107 true))

(assert (=> d!1681107 (= (isDefined!11616 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326)) (Exists!1983 lambda!261498))))

(declare-fun lt!2142575 () Unit!152474)

(declare-fun choose!38760 (Regex!14802 Regex!14802 List!60706) Unit!152474)

(assert (=> d!1681107 (= lt!2142575 (choose!38760 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326))))

(assert (=> d!1681107 (validRegex!6538 (regOne!30116 r!7292))))

(assert (=> d!1681107 (= (lemmaFindConcatSeparationEquivalentToExists!1091 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326) lt!2142575)))

(declare-fun bs!1211203 () Bool)

(assert (= bs!1211203 d!1681107))

(assert (=> bs!1211203 m!6262772))

(declare-fun m!6262952 () Bool)

(assert (=> bs!1211203 m!6262952))

(assert (=> bs!1211203 m!6262934))

(assert (=> bs!1211203 m!6262772))

(assert (=> bs!1211203 m!6262774))

(declare-fun m!6262954 () Bool)

(assert (=> bs!1211203 m!6262954))

(assert (=> b!5213645 d!1681107))

(declare-fun bs!1211204 () Bool)

(declare-fun d!1681109 () Bool)

(assert (= bs!1211204 (and d!1681109 b!5213645)))

(declare-fun lambda!261503 () Int)

(assert (=> bs!1211204 (= lambda!261503 lambda!261480)))

(assert (=> bs!1211204 (not (= lambda!261503 lambda!261481))))

(declare-fun bs!1211205 () Bool)

(assert (= bs!1211205 (and d!1681109 d!1681107)))

(assert (=> bs!1211205 (= lambda!261503 lambda!261498)))

(assert (=> d!1681109 true))

(assert (=> d!1681109 true))

(assert (=> d!1681109 true))

(declare-fun lambda!261504 () Int)

(assert (=> bs!1211204 (not (= lambda!261504 lambda!261480))))

(assert (=> bs!1211204 (= lambda!261504 lambda!261481)))

(assert (=> bs!1211205 (not (= lambda!261504 lambda!261498))))

(declare-fun bs!1211206 () Bool)

(assert (= bs!1211206 d!1681109))

(assert (=> bs!1211206 (not (= lambda!261504 lambda!261503))))

(assert (=> d!1681109 true))

(assert (=> d!1681109 true))

(assert (=> d!1681109 true))

(assert (=> d!1681109 (= (Exists!1983 lambda!261503) (Exists!1983 lambda!261504))))

(declare-fun lt!2142578 () Unit!152474)

(declare-fun choose!38761 (Regex!14802 Regex!14802 List!60706) Unit!152474)

(assert (=> d!1681109 (= lt!2142578 (choose!38761 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326))))

(assert (=> d!1681109 (validRegex!6538 (regOne!30116 r!7292))))

(assert (=> d!1681109 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!637 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326) lt!2142578)))

(declare-fun m!6262956 () Bool)

(assert (=> bs!1211206 m!6262956))

(declare-fun m!6262958 () Bool)

(assert (=> bs!1211206 m!6262958))

(declare-fun m!6262960 () Bool)

(assert (=> bs!1211206 m!6262960))

(assert (=> bs!1211206 m!6262934))

(assert (=> b!5213645 d!1681109))

(declare-fun d!1681111 () Bool)

(declare-fun isEmpty!32500 (Option!14913) Bool)

(assert (=> d!1681111 (= (isDefined!11616 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326)) (not (isEmpty!32500 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326))))))

(declare-fun bs!1211207 () Bool)

(assert (= bs!1211207 d!1681111))

(assert (=> bs!1211207 m!6262772))

(declare-fun m!6262962 () Bool)

(assert (=> bs!1211207 m!6262962))

(assert (=> b!5213645 d!1681111))

(declare-fun bs!1211208 () Bool)

(declare-fun b!5213898 () Bool)

(assert (= bs!1211208 (and b!5213898 d!1681109)))

(declare-fun lambda!261509 () Int)

(assert (=> bs!1211208 (not (= lambda!261509 lambda!261503))))

(assert (=> bs!1211208 (not (= lambda!261509 lambda!261504))))

(declare-fun bs!1211209 () Bool)

(assert (= bs!1211209 (and b!5213898 d!1681107)))

(assert (=> bs!1211209 (not (= lambda!261509 lambda!261498))))

(declare-fun bs!1211210 () Bool)

(assert (= bs!1211210 (and b!5213898 b!5213645)))

(assert (=> bs!1211210 (not (= lambda!261509 lambda!261480))))

(assert (=> bs!1211210 (not (= lambda!261509 lambda!261481))))

(assert (=> b!5213898 true))

(assert (=> b!5213898 true))

(declare-fun bs!1211211 () Bool)

(declare-fun b!5213899 () Bool)

(assert (= bs!1211211 (and b!5213899 d!1681109)))

(declare-fun lambda!261510 () Int)

(assert (=> bs!1211211 (not (= lambda!261510 lambda!261503))))

(assert (=> bs!1211211 (= lambda!261510 lambda!261504)))

(declare-fun bs!1211212 () Bool)

(assert (= bs!1211212 (and b!5213899 d!1681107)))

(assert (=> bs!1211212 (not (= lambda!261510 lambda!261498))))

(declare-fun bs!1211213 () Bool)

(assert (= bs!1211213 (and b!5213899 b!5213645)))

(assert (=> bs!1211213 (not (= lambda!261510 lambda!261480))))

(assert (=> bs!1211213 (= lambda!261510 lambda!261481)))

(declare-fun bs!1211214 () Bool)

(assert (= bs!1211214 (and b!5213899 b!5213898)))

(assert (=> bs!1211214 (not (= lambda!261510 lambda!261509))))

(assert (=> b!5213899 true))

(assert (=> b!5213899 true))

(declare-fun d!1681113 () Bool)

(declare-fun c!899262 () Bool)

(assert (=> d!1681113 (= c!899262 (is-EmptyExpr!14802 r!7292))))

(declare-fun e!3245724 () Bool)

(assert (=> d!1681113 (= (matchRSpec!1905 r!7292 s!2326) e!3245724)))

(declare-fun b!5213891 () Bool)

(declare-fun e!3245726 () Bool)

(assert (=> b!5213891 (= e!3245726 (= s!2326 (Cons!60582 (c!899215 r!7292) Nil!60582)))))

(declare-fun b!5213892 () Bool)

(declare-fun e!3245725 () Bool)

(assert (=> b!5213892 (= e!3245725 (matchRSpec!1905 (regTwo!30117 r!7292) s!2326))))

(declare-fun b!5213893 () Bool)

(declare-fun e!3245723 () Bool)

(assert (=> b!5213893 (= e!3245723 e!3245725)))

(declare-fun res!2214402 () Bool)

(assert (=> b!5213893 (= res!2214402 (matchRSpec!1905 (regOne!30117 r!7292) s!2326))))

(assert (=> b!5213893 (=> res!2214402 e!3245725)))

(declare-fun b!5213894 () Bool)

(declare-fun e!3245721 () Bool)

(assert (=> b!5213894 (= e!3245723 e!3245721)))

(declare-fun c!899263 () Bool)

(assert (=> b!5213894 (= c!899263 (is-Star!14802 r!7292))))

(declare-fun b!5213895 () Bool)

(declare-fun call!367375 () Bool)

(assert (=> b!5213895 (= e!3245724 call!367375)))

(declare-fun b!5213896 () Bool)

(declare-fun c!899265 () Bool)

(assert (=> b!5213896 (= c!899265 (is-Union!14802 r!7292))))

(assert (=> b!5213896 (= e!3245726 e!3245723)))

(declare-fun b!5213897 () Bool)

(declare-fun res!2214404 () Bool)

(declare-fun e!3245720 () Bool)

(assert (=> b!5213897 (=> res!2214404 e!3245720)))

(assert (=> b!5213897 (= res!2214404 call!367375)))

(assert (=> b!5213897 (= e!3245721 e!3245720)))

(declare-fun call!367374 () Bool)

(assert (=> b!5213898 (= e!3245720 call!367374)))

(assert (=> b!5213899 (= e!3245721 call!367374)))

(declare-fun b!5213900 () Bool)

(declare-fun e!3245722 () Bool)

(assert (=> b!5213900 (= e!3245724 e!3245722)))

(declare-fun res!2214403 () Bool)

(assert (=> b!5213900 (= res!2214403 (not (is-EmptyLang!14802 r!7292)))))

(assert (=> b!5213900 (=> (not res!2214403) (not e!3245722))))

(declare-fun bm!367369 () Bool)

(assert (=> bm!367369 (= call!367374 (Exists!1983 (ite c!899263 lambda!261509 lambda!261510)))))

(declare-fun b!5213901 () Bool)

(declare-fun c!899264 () Bool)

(assert (=> b!5213901 (= c!899264 (is-ElementMatch!14802 r!7292))))

(assert (=> b!5213901 (= e!3245722 e!3245726)))

(declare-fun bm!367370 () Bool)

(assert (=> bm!367370 (= call!367375 (isEmpty!32499 s!2326))))

(assert (= (and d!1681113 c!899262) b!5213895))

(assert (= (and d!1681113 (not c!899262)) b!5213900))

(assert (= (and b!5213900 res!2214403) b!5213901))

(assert (= (and b!5213901 c!899264) b!5213891))

(assert (= (and b!5213901 (not c!899264)) b!5213896))

(assert (= (and b!5213896 c!899265) b!5213893))

(assert (= (and b!5213896 (not c!899265)) b!5213894))

(assert (= (and b!5213893 (not res!2214402)) b!5213892))

(assert (= (and b!5213894 c!899263) b!5213897))

(assert (= (and b!5213894 (not c!899263)) b!5213899))

(assert (= (and b!5213897 (not res!2214404)) b!5213898))

(assert (= (or b!5213898 b!5213899) bm!367369))

(assert (= (or b!5213895 b!5213897) bm!367370))

(declare-fun m!6262964 () Bool)

(assert (=> b!5213892 m!6262964))

(declare-fun m!6262966 () Bool)

(assert (=> b!5213893 m!6262966))

(declare-fun m!6262968 () Bool)

(assert (=> bm!367369 m!6262968))

(declare-fun m!6262970 () Bool)

(assert (=> bm!367370 m!6262970))

(assert (=> b!5213653 d!1681113))

(declare-fun b!5213930 () Bool)

(declare-fun e!3245747 () Bool)

(declare-fun lt!2142581 () Bool)

(declare-fun call!367378 () Bool)

(assert (=> b!5213930 (= e!3245747 (= lt!2142581 call!367378))))

(declare-fun b!5213931 () Bool)

(declare-fun e!3245744 () Bool)

(assert (=> b!5213931 (= e!3245744 (= (head!11175 s!2326) (c!899215 r!7292)))))

(declare-fun b!5213932 () Bool)

(declare-fun res!2214425 () Bool)

(assert (=> b!5213932 (=> (not res!2214425) (not e!3245744))))

(assert (=> b!5213932 (= res!2214425 (isEmpty!32499 (tail!10272 s!2326)))))

(declare-fun b!5213933 () Bool)

(declare-fun res!2214428 () Bool)

(declare-fun e!3245743 () Bool)

(assert (=> b!5213933 (=> res!2214428 e!3245743)))

(assert (=> b!5213933 (= res!2214428 (not (is-ElementMatch!14802 r!7292)))))

(declare-fun e!3245742 () Bool)

(assert (=> b!5213933 (= e!3245742 e!3245743)))

(declare-fun b!5213934 () Bool)

(declare-fun e!3245746 () Bool)

(declare-fun derivativeStep!4050 (Regex!14802 C!29874) Regex!14802)

(assert (=> b!5213934 (= e!3245746 (matchR!6987 (derivativeStep!4050 r!7292 (head!11175 s!2326)) (tail!10272 s!2326)))))

(declare-fun d!1681115 () Bool)

(assert (=> d!1681115 e!3245747))

(declare-fun c!899273 () Bool)

(assert (=> d!1681115 (= c!899273 (is-EmptyExpr!14802 r!7292))))

(assert (=> d!1681115 (= lt!2142581 e!3245746)))

(declare-fun c!899274 () Bool)

(assert (=> d!1681115 (= c!899274 (isEmpty!32499 s!2326))))

(assert (=> d!1681115 (validRegex!6538 r!7292)))

(assert (=> d!1681115 (= (matchR!6987 r!7292 s!2326) lt!2142581)))

(declare-fun b!5213935 () Bool)

(declare-fun e!3245741 () Bool)

(declare-fun e!3245745 () Bool)

(assert (=> b!5213935 (= e!3245741 e!3245745)))

(declare-fun res!2214426 () Bool)

(assert (=> b!5213935 (=> res!2214426 e!3245745)))

(assert (=> b!5213935 (= res!2214426 call!367378)))

(declare-fun b!5213936 () Bool)

(assert (=> b!5213936 (= e!3245745 (not (= (head!11175 s!2326) (c!899215 r!7292))))))

(declare-fun b!5213937 () Bool)

(declare-fun res!2214423 () Bool)

(assert (=> b!5213937 (=> res!2214423 e!3245745)))

(assert (=> b!5213937 (= res!2214423 (not (isEmpty!32499 (tail!10272 s!2326))))))

(declare-fun b!5213938 () Bool)

(declare-fun res!2214427 () Bool)

(assert (=> b!5213938 (=> (not res!2214427) (not e!3245744))))

(assert (=> b!5213938 (= res!2214427 (not call!367378))))

(declare-fun bm!367373 () Bool)

(assert (=> bm!367373 (= call!367378 (isEmpty!32499 s!2326))))

(declare-fun b!5213939 () Bool)

(assert (=> b!5213939 (= e!3245747 e!3245742)))

(declare-fun c!899272 () Bool)

(assert (=> b!5213939 (= c!899272 (is-EmptyLang!14802 r!7292))))

(declare-fun b!5213940 () Bool)

(declare-fun res!2214421 () Bool)

(assert (=> b!5213940 (=> res!2214421 e!3245743)))

(assert (=> b!5213940 (= res!2214421 e!3245744)))

(declare-fun res!2214424 () Bool)

(assert (=> b!5213940 (=> (not res!2214424) (not e!3245744))))

(assert (=> b!5213940 (= res!2214424 lt!2142581)))

(declare-fun b!5213941 () Bool)

(assert (=> b!5213941 (= e!3245746 (nullable!4971 r!7292))))

(declare-fun b!5213942 () Bool)

(assert (=> b!5213942 (= e!3245743 e!3245741)))

(declare-fun res!2214422 () Bool)

(assert (=> b!5213942 (=> (not res!2214422) (not e!3245741))))

(assert (=> b!5213942 (= res!2214422 (not lt!2142581))))

(declare-fun b!5213943 () Bool)

(assert (=> b!5213943 (= e!3245742 (not lt!2142581))))

(assert (= (and d!1681115 c!899274) b!5213941))

(assert (= (and d!1681115 (not c!899274)) b!5213934))

(assert (= (and d!1681115 c!899273) b!5213930))

(assert (= (and d!1681115 (not c!899273)) b!5213939))

(assert (= (and b!5213939 c!899272) b!5213943))

(assert (= (and b!5213939 (not c!899272)) b!5213933))

(assert (= (and b!5213933 (not res!2214428)) b!5213940))

(assert (= (and b!5213940 res!2214424) b!5213938))

(assert (= (and b!5213938 res!2214427) b!5213932))

(assert (= (and b!5213932 res!2214425) b!5213931))

(assert (= (and b!5213940 (not res!2214421)) b!5213942))

(assert (= (and b!5213942 res!2214422) b!5213935))

(assert (= (and b!5213935 (not res!2214426)) b!5213937))

(assert (= (and b!5213937 (not res!2214423)) b!5213936))

(assert (= (or b!5213930 b!5213935 b!5213938) bm!367373))

(declare-fun m!6262972 () Bool)

(assert (=> b!5213932 m!6262972))

(assert (=> b!5213932 m!6262972))

(declare-fun m!6262974 () Bool)

(assert (=> b!5213932 m!6262974))

(declare-fun m!6262976 () Bool)

(assert (=> b!5213936 m!6262976))

(assert (=> d!1681115 m!6262970))

(assert (=> d!1681115 m!6262742))

(assert (=> b!5213937 m!6262972))

(assert (=> b!5213937 m!6262972))

(assert (=> b!5213937 m!6262974))

(declare-fun m!6262978 () Bool)

(assert (=> b!5213941 m!6262978))

(assert (=> b!5213934 m!6262976))

(assert (=> b!5213934 m!6262976))

(declare-fun m!6262980 () Bool)

(assert (=> b!5213934 m!6262980))

(assert (=> b!5213934 m!6262972))

(assert (=> b!5213934 m!6262980))

(assert (=> b!5213934 m!6262972))

(declare-fun m!6262982 () Bool)

(assert (=> b!5213934 m!6262982))

(assert (=> bm!367373 m!6262970))

(assert (=> b!5213931 m!6262976))

(assert (=> b!5213653 d!1681115))

(declare-fun d!1681117 () Bool)

(assert (=> d!1681117 (= (matchR!6987 r!7292 s!2326) (matchRSpec!1905 r!7292 s!2326))))

(declare-fun lt!2142584 () Unit!152474)

(declare-fun choose!38762 (Regex!14802 List!60706) Unit!152474)

(assert (=> d!1681117 (= lt!2142584 (choose!38762 r!7292 s!2326))))

(assert (=> d!1681117 (validRegex!6538 r!7292)))

(assert (=> d!1681117 (= (mainMatchTheorem!1905 r!7292 s!2326) lt!2142584)))

(declare-fun bs!1211215 () Bool)

(assert (= bs!1211215 d!1681117))

(assert (=> bs!1211215 m!6262792))

(assert (=> bs!1211215 m!6262790))

(declare-fun m!6262984 () Bool)

(assert (=> bs!1211215 m!6262984))

(assert (=> bs!1211215 m!6262742))

(assert (=> b!5213653 d!1681117))

(declare-fun d!1681119 () Bool)

(declare-fun nullableFct!1380 (Regex!14802) Bool)

(assert (=> d!1681119 (= (nullable!4971 (h!67029 (exprs!4686 (h!67031 zl!343)))) (nullableFct!1380 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun bs!1211216 () Bool)

(assert (= bs!1211216 d!1681119))

(declare-fun m!6262986 () Bool)

(assert (=> bs!1211216 m!6262986))

(assert (=> b!5213634 d!1681119))

(declare-fun b!5213954 () Bool)

(declare-fun call!367381 () (Set Context!8372))

(declare-fun e!3245755 () (Set Context!8372))

(assert (=> b!5213954 (= e!3245755 (set.union call!367381 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (h!67030 s!2326))))))

(declare-fun b!5213955 () Bool)

(declare-fun e!3245754 () Bool)

(assert (=> b!5213955 (= e!3245754 (nullable!4971 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun d!1681121 () Bool)

(declare-fun c!899279 () Bool)

(assert (=> d!1681121 (= c!899279 e!3245754)))

(declare-fun res!2214431 () Bool)

(assert (=> d!1681121 (=> (not res!2214431) (not e!3245754))))

(assert (=> d!1681121 (= res!2214431 (is-Cons!60581 (exprs!4686 (h!67031 zl!343))))))

(assert (=> d!1681121 (= (derivationStepZipperUp!174 (h!67031 zl!343) (h!67030 s!2326)) e!3245755)))

(declare-fun b!5213956 () Bool)

(declare-fun e!3245756 () (Set Context!8372))

(assert (=> b!5213956 (= e!3245755 e!3245756)))

(declare-fun c!899280 () Bool)

(assert (=> b!5213956 (= c!899280 (is-Cons!60581 (exprs!4686 (h!67031 zl!343))))))

(declare-fun b!5213957 () Bool)

(assert (=> b!5213957 (= e!3245756 (as set.empty (Set Context!8372)))))

(declare-fun bm!367376 () Bool)

(assert (=> bm!367376 (= call!367381 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (h!67031 zl!343))) (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (h!67030 s!2326)))))

(declare-fun b!5213958 () Bool)

(assert (=> b!5213958 (= e!3245756 call!367381)))

(assert (= (and d!1681121 res!2214431) b!5213955))

(assert (= (and d!1681121 c!899279) b!5213954))

(assert (= (and d!1681121 (not c!899279)) b!5213956))

(assert (= (and b!5213956 c!899280) b!5213958))

(assert (= (and b!5213956 (not c!899280)) b!5213957))

(assert (= (or b!5213954 b!5213958) bm!367376))

(declare-fun m!6262988 () Bool)

(assert (=> b!5213954 m!6262988))

(assert (=> b!5213955 m!6262756))

(declare-fun m!6262990 () Bool)

(assert (=> bm!367376 m!6262990))

(assert (=> b!5213634 d!1681121))

(declare-fun d!1681123 () Bool)

(declare-fun choose!38763 ((Set Context!8372) Int) (Set Context!8372))

(assert (=> d!1681123 (= (flatMap!529 z!1189 lambda!261482) (choose!38763 z!1189 lambda!261482))))

(declare-fun bs!1211217 () Bool)

(assert (= bs!1211217 d!1681123))

(declare-fun m!6262992 () Bool)

(assert (=> bs!1211217 m!6262992))

(assert (=> b!5213634 d!1681123))

(declare-fun call!367382 () (Set Context!8372))

(declare-fun b!5213959 () Bool)

(declare-fun e!3245758 () (Set Context!8372))

(assert (=> b!5213959 (= e!3245758 (set.union call!367382 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (h!67030 s!2326))))))

(declare-fun b!5213960 () Bool)

(declare-fun e!3245757 () Bool)

(assert (=> b!5213960 (= e!3245757 (nullable!4971 (h!67029 (exprs!4686 lt!2142491))))))

(declare-fun d!1681125 () Bool)

(declare-fun c!899281 () Bool)

(assert (=> d!1681125 (= c!899281 e!3245757)))

(declare-fun res!2214432 () Bool)

(assert (=> d!1681125 (=> (not res!2214432) (not e!3245757))))

(assert (=> d!1681125 (= res!2214432 (is-Cons!60581 (exprs!4686 lt!2142491)))))

(assert (=> d!1681125 (= (derivationStepZipperUp!174 lt!2142491 (h!67030 s!2326)) e!3245758)))

(declare-fun b!5213961 () Bool)

(declare-fun e!3245759 () (Set Context!8372))

(assert (=> b!5213961 (= e!3245758 e!3245759)))

(declare-fun c!899282 () Bool)

(assert (=> b!5213961 (= c!899282 (is-Cons!60581 (exprs!4686 lt!2142491)))))

(declare-fun b!5213962 () Bool)

(assert (=> b!5213962 (= e!3245759 (as set.empty (Set Context!8372)))))

(declare-fun bm!367377 () Bool)

(assert (=> bm!367377 (= call!367382 (derivationStepZipperDown!250 (h!67029 (exprs!4686 lt!2142491)) (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (h!67030 s!2326)))))

(declare-fun b!5213963 () Bool)

(assert (=> b!5213963 (= e!3245759 call!367382)))

(assert (= (and d!1681125 res!2214432) b!5213960))

(assert (= (and d!1681125 c!899281) b!5213959))

(assert (= (and d!1681125 (not c!899281)) b!5213961))

(assert (= (and b!5213961 c!899282) b!5213963))

(assert (= (and b!5213961 (not c!899282)) b!5213962))

(assert (= (or b!5213959 b!5213963) bm!367377))

(declare-fun m!6262994 () Bool)

(assert (=> b!5213959 m!6262994))

(declare-fun m!6262996 () Bool)

(assert (=> b!5213960 m!6262996))

(declare-fun m!6262998 () Bool)

(assert (=> bm!367377 m!6262998))

(assert (=> b!5213634 d!1681125))

(declare-fun bm!367378 () Bool)

(declare-fun call!367388 () (Set Context!8372))

(declare-fun call!367386 () (Set Context!8372))

(assert (=> bm!367378 (= call!367388 call!367386)))

(declare-fun c!899286 () Bool)

(declare-fun call!367383 () List!60705)

(declare-fun bm!367379 () Bool)

(declare-fun c!899287 () Bool)

(assert (=> bm!367379 (= call!367383 ($colon$colon!1278 (exprs!4686 lt!2142491) (ite (or c!899286 c!899287) (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (h!67029 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun b!5213964 () Bool)

(declare-fun e!3245760 () (Set Context!8372))

(declare-fun e!3245764 () (Set Context!8372))

(assert (=> b!5213964 (= e!3245760 e!3245764)))

(declare-fun c!899285 () Bool)

(assert (=> b!5213964 (= c!899285 (is-Union!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5213965 () Bool)

(declare-fun e!3245762 () (Set Context!8372))

(declare-fun call!367385 () (Set Context!8372))

(assert (=> b!5213965 (= e!3245762 call!367385)))

(declare-fun bm!367380 () Bool)

(declare-fun call!367387 () List!60705)

(assert (=> bm!367380 (= call!367386 (derivationStepZipperDown!250 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))) (ite (or c!899285 c!899286) lt!2142491 (Context!8373 call!367387)) (h!67030 s!2326)))))

(declare-fun b!5213966 () Bool)

(assert (=> b!5213966 (= e!3245760 (set.insert lt!2142491 (as set.empty (Set Context!8372))))))

(declare-fun b!5213967 () Bool)

(declare-fun e!3245761 () (Set Context!8372))

(assert (=> b!5213967 (= e!3245761 (as set.empty (Set Context!8372)))))

(declare-fun b!5213968 () Bool)

(declare-fun e!3245765 () (Set Context!8372))

(declare-fun call!367384 () (Set Context!8372))

(assert (=> b!5213968 (= e!3245765 (set.union call!367384 call!367388))))

(declare-fun b!5213969 () Bool)

(assert (=> b!5213969 (= e!3245761 call!367385)))

(declare-fun b!5213970 () Bool)

(declare-fun e!3245763 () Bool)

(assert (=> b!5213970 (= e!3245763 (nullable!4971 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun bm!367381 () Bool)

(assert (=> bm!367381 (= call!367387 call!367383)))

(declare-fun b!5213971 () Bool)

(assert (=> b!5213971 (= c!899286 e!3245763)))

(declare-fun res!2214433 () Bool)

(assert (=> b!5213971 (=> (not res!2214433) (not e!3245763))))

(assert (=> b!5213971 (= res!2214433 (is-Concat!23647 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> b!5213971 (= e!3245764 e!3245765)))

(declare-fun b!5213972 () Bool)

(assert (=> b!5213972 (= e!3245765 e!3245762)))

(assert (=> b!5213972 (= c!899287 (is-Concat!23647 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun bm!367382 () Bool)

(assert (=> bm!367382 (= call!367384 (derivationStepZipperDown!250 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))) (ite c!899285 lt!2142491 (Context!8373 call!367383)) (h!67030 s!2326)))))

(declare-fun b!5213973 () Bool)

(declare-fun c!899283 () Bool)

(assert (=> b!5213973 (= c!899283 (is-Star!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> b!5213973 (= e!3245762 e!3245761)))

(declare-fun b!5213974 () Bool)

(assert (=> b!5213974 (= e!3245764 (set.union call!367386 call!367384))))

(declare-fun d!1681127 () Bool)

(declare-fun c!899284 () Bool)

(assert (=> d!1681127 (= c!899284 (and (is-ElementMatch!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))) (= (c!899215 (h!67029 (exprs!4686 (h!67031 zl!343)))) (h!67030 s!2326))))))

(assert (=> d!1681127 (= (derivationStepZipperDown!250 (h!67029 (exprs!4686 (h!67031 zl!343))) lt!2142491 (h!67030 s!2326)) e!3245760)))

(declare-fun bm!367383 () Bool)

(assert (=> bm!367383 (= call!367385 call!367388)))

(assert (= (and d!1681127 c!899284) b!5213966))

(assert (= (and d!1681127 (not c!899284)) b!5213964))

(assert (= (and b!5213964 c!899285) b!5213974))

(assert (= (and b!5213964 (not c!899285)) b!5213971))

(assert (= (and b!5213971 res!2214433) b!5213970))

(assert (= (and b!5213971 c!899286) b!5213968))

(assert (= (and b!5213971 (not c!899286)) b!5213972))

(assert (= (and b!5213972 c!899287) b!5213965))

(assert (= (and b!5213972 (not c!899287)) b!5213973))

(assert (= (and b!5213973 c!899283) b!5213969))

(assert (= (and b!5213973 (not c!899283)) b!5213967))

(assert (= (or b!5213965 b!5213969) bm!367381))

(assert (= (or b!5213965 b!5213969) bm!367383))

(assert (= (or b!5213968 bm!367381) bm!367379))

(assert (= (or b!5213968 bm!367383) bm!367378))

(assert (= (or b!5213974 b!5213968) bm!367382))

(assert (= (or b!5213974 bm!367378) bm!367380))

(declare-fun m!6263000 () Bool)

(assert (=> bm!367382 m!6263000))

(declare-fun m!6263002 () Bool)

(assert (=> b!5213970 m!6263002))

(declare-fun m!6263004 () Bool)

(assert (=> bm!367379 m!6263004))

(assert (=> b!5213966 m!6262912))

(declare-fun m!6263006 () Bool)

(assert (=> bm!367380 m!6263006))

(assert (=> b!5213634 d!1681127))

(declare-fun d!1681129 () Bool)

(declare-fun dynLambda!23934 (Int Context!8372) (Set Context!8372))

(assert (=> d!1681129 (= (flatMap!529 z!1189 lambda!261482) (dynLambda!23934 lambda!261482 (h!67031 zl!343)))))

(declare-fun lt!2142587 () Unit!152474)

(declare-fun choose!38764 ((Set Context!8372) Context!8372 Int) Unit!152474)

(assert (=> d!1681129 (= lt!2142587 (choose!38764 z!1189 (h!67031 zl!343) lambda!261482))))

(assert (=> d!1681129 (= z!1189 (set.insert (h!67031 zl!343) (as set.empty (Set Context!8372))))))

(assert (=> d!1681129 (= (lemmaFlatMapOnSingletonSet!61 z!1189 (h!67031 zl!343) lambda!261482) lt!2142587)))

(declare-fun b_lambda!201653 () Bool)

(assert (=> (not b_lambda!201653) (not d!1681129)))

(declare-fun bs!1211218 () Bool)

(assert (= bs!1211218 d!1681129))

(assert (=> bs!1211218 m!6262750))

(declare-fun m!6263008 () Bool)

(assert (=> bs!1211218 m!6263008))

(declare-fun m!6263010 () Bool)

(assert (=> bs!1211218 m!6263010))

(declare-fun m!6263012 () Bool)

(assert (=> bs!1211218 m!6263012))

(assert (=> b!5213634 d!1681129))

(declare-fun e!3245767 () (Set Context!8372))

(declare-fun b!5213975 () Bool)

(declare-fun call!367389 () (Set Context!8372))

(assert (=> b!5213975 (= e!3245767 (set.union call!367389 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (h!67030 s!2326))))))

(declare-fun b!5213976 () Bool)

(declare-fun e!3245766 () Bool)

(assert (=> b!5213976 (= e!3245766 (nullable!4971 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))

(declare-fun d!1681131 () Bool)

(declare-fun c!899288 () Bool)

(assert (=> d!1681131 (= c!899288 e!3245766)))

(declare-fun res!2214434 () Bool)

(assert (=> d!1681131 (=> (not res!2214434) (not e!3245766))))

(assert (=> d!1681131 (= res!2214434 (is-Cons!60581 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))

(assert (=> d!1681131 (= (derivationStepZipperUp!174 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))) (h!67030 s!2326)) e!3245767)))

(declare-fun b!5213977 () Bool)

(declare-fun e!3245768 () (Set Context!8372))

(assert (=> b!5213977 (= e!3245767 e!3245768)))

(declare-fun c!899289 () Bool)

(assert (=> b!5213977 (= c!899289 (is-Cons!60581 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))

(declare-fun b!5213978 () Bool)

(assert (=> b!5213978 (= e!3245768 (as set.empty (Set Context!8372)))))

(declare-fun bm!367384 () Bool)

(assert (=> bm!367384 (= call!367389 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (h!67030 s!2326)))))

(declare-fun b!5213979 () Bool)

(assert (=> b!5213979 (= e!3245768 call!367389)))

(assert (= (and d!1681131 res!2214434) b!5213976))

(assert (= (and d!1681131 c!899288) b!5213975))

(assert (= (and d!1681131 (not c!899288)) b!5213977))

(assert (= (and b!5213977 c!899289) b!5213979))

(assert (= (and b!5213977 (not c!899289)) b!5213978))

(assert (= (or b!5213975 b!5213979) bm!367384))

(declare-fun m!6263014 () Bool)

(assert (=> b!5213975 m!6263014))

(declare-fun m!6263016 () Bool)

(assert (=> b!5213976 m!6263016))

(declare-fun m!6263018 () Bool)

(assert (=> bm!367384 m!6263018))

(assert (=> b!5213634 d!1681131))

(declare-fun bm!367391 () Bool)

(declare-fun call!367396 () Bool)

(declare-fun call!367398 () Bool)

(assert (=> bm!367391 (= call!367396 call!367398)))

(declare-fun b!5213998 () Bool)

(declare-fun e!3245788 () Bool)

(declare-fun e!3245785 () Bool)

(assert (=> b!5213998 (= e!3245788 e!3245785)))

(declare-fun c!899294 () Bool)

(assert (=> b!5213998 (= c!899294 (is-Star!14802 r!7292))))

(declare-fun bm!367392 () Bool)

(declare-fun call!367397 () Bool)

(declare-fun c!899295 () Bool)

(assert (=> bm!367392 (= call!367397 (validRegex!6538 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))))))

(declare-fun b!5213999 () Bool)

(declare-fun res!2214447 () Bool)

(declare-fun e!3245783 () Bool)

(assert (=> b!5213999 (=> res!2214447 e!3245783)))

(assert (=> b!5213999 (= res!2214447 (not (is-Concat!23647 r!7292)))))

(declare-fun e!3245787 () Bool)

(assert (=> b!5213999 (= e!3245787 e!3245783)))

(declare-fun b!5214000 () Bool)

(declare-fun e!3245784 () Bool)

(assert (=> b!5214000 (= e!3245783 e!3245784)))

(declare-fun res!2214448 () Bool)

(assert (=> b!5214000 (=> (not res!2214448) (not e!3245784))))

(assert (=> b!5214000 (= res!2214448 call!367396)))

(declare-fun b!5214001 () Bool)

(assert (=> b!5214001 (= e!3245785 e!3245787)))

(assert (=> b!5214001 (= c!899295 (is-Union!14802 r!7292))))

(declare-fun d!1681135 () Bool)

(declare-fun res!2214445 () Bool)

(assert (=> d!1681135 (=> res!2214445 e!3245788)))

(assert (=> d!1681135 (= res!2214445 (is-ElementMatch!14802 r!7292))))

(assert (=> d!1681135 (= (validRegex!6538 r!7292) e!3245788)))

(declare-fun b!5214002 () Bool)

(declare-fun res!2214449 () Bool)

(declare-fun e!3245786 () Bool)

(assert (=> b!5214002 (=> (not res!2214449) (not e!3245786))))

(assert (=> b!5214002 (= res!2214449 call!367396)))

(assert (=> b!5214002 (= e!3245787 e!3245786)))

(declare-fun b!5214003 () Bool)

(declare-fun e!3245789 () Bool)

(assert (=> b!5214003 (= e!3245789 call!367398)))

(declare-fun b!5214004 () Bool)

(assert (=> b!5214004 (= e!3245784 call!367397)))

(declare-fun bm!367393 () Bool)

(assert (=> bm!367393 (= call!367398 (validRegex!6538 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))))))

(declare-fun b!5214005 () Bool)

(assert (=> b!5214005 (= e!3245786 call!367397)))

(declare-fun b!5214006 () Bool)

(assert (=> b!5214006 (= e!3245785 e!3245789)))

(declare-fun res!2214446 () Bool)

(assert (=> b!5214006 (= res!2214446 (not (nullable!4971 (reg!15131 r!7292))))))

(assert (=> b!5214006 (=> (not res!2214446) (not e!3245789))))

(assert (= (and d!1681135 (not res!2214445)) b!5213998))

(assert (= (and b!5213998 c!899294) b!5214006))

(assert (= (and b!5213998 (not c!899294)) b!5214001))

(assert (= (and b!5214006 res!2214446) b!5214003))

(assert (= (and b!5214001 c!899295) b!5214002))

(assert (= (and b!5214001 (not c!899295)) b!5213999))

(assert (= (and b!5214002 res!2214449) b!5214005))

(assert (= (and b!5213999 (not res!2214447)) b!5214000))

(assert (= (and b!5214000 res!2214448) b!5214004))

(assert (= (or b!5214005 b!5214004) bm!367392))

(assert (= (or b!5214002 b!5214000) bm!367391))

(assert (= (or b!5214003 bm!367391) bm!367393))

(declare-fun m!6263020 () Bool)

(assert (=> bm!367392 m!6263020))

(declare-fun m!6263022 () Bool)

(assert (=> bm!367393 m!6263022))

(declare-fun m!6263024 () Bool)

(assert (=> b!5214006 m!6263024))

(assert (=> start!551500 d!1681135))

(declare-fun d!1681139 () Bool)

(assert (=> d!1681139 (= (nullable!4971 (regOne!30117 (regOne!30116 r!7292))) (nullableFct!1380 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun bs!1211219 () Bool)

(assert (= bs!1211219 d!1681139))

(declare-fun m!6263026 () Bool)

(assert (=> bs!1211219 m!6263026))

(assert (=> b!5213644 d!1681139))

(declare-fun d!1681141 () Bool)

(assert (=> d!1681141 (= (flatMap!529 lt!2142484 lambda!261482) (choose!38763 lt!2142484 lambda!261482))))

(declare-fun bs!1211220 () Bool)

(assert (= bs!1211220 d!1681141))

(declare-fun m!6263028 () Bool)

(assert (=> bs!1211220 m!6263028))

(assert (=> b!5213644 d!1681141))

(declare-fun e!3245793 () (Set Context!8372))

(declare-fun call!367399 () (Set Context!8372))

(declare-fun b!5214011 () Bool)

(assert (=> b!5214011 (= e!3245793 (set.union call!367399 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (h!67030 s!2326))))))

(declare-fun b!5214012 () Bool)

(declare-fun e!3245792 () Bool)

(assert (=> b!5214012 (= e!3245792 (nullable!4971 (h!67029 (exprs!4686 lt!2142496))))))

(declare-fun d!1681143 () Bool)

(declare-fun c!899298 () Bool)

(assert (=> d!1681143 (= c!899298 e!3245792)))

(declare-fun res!2214450 () Bool)

(assert (=> d!1681143 (=> (not res!2214450) (not e!3245792))))

(assert (=> d!1681143 (= res!2214450 (is-Cons!60581 (exprs!4686 lt!2142496)))))

(assert (=> d!1681143 (= (derivationStepZipperUp!174 lt!2142496 (h!67030 s!2326)) e!3245793)))

(declare-fun b!5214013 () Bool)

(declare-fun e!3245794 () (Set Context!8372))

(assert (=> b!5214013 (= e!3245793 e!3245794)))

(declare-fun c!899299 () Bool)

(assert (=> b!5214013 (= c!899299 (is-Cons!60581 (exprs!4686 lt!2142496)))))

(declare-fun b!5214014 () Bool)

(assert (=> b!5214014 (= e!3245794 (as set.empty (Set Context!8372)))))

(declare-fun bm!367394 () Bool)

(assert (=> bm!367394 (= call!367399 (derivationStepZipperDown!250 (h!67029 (exprs!4686 lt!2142496)) (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (h!67030 s!2326)))))

(declare-fun b!5214015 () Bool)

(assert (=> b!5214015 (= e!3245794 call!367399)))

(assert (= (and d!1681143 res!2214450) b!5214012))

(assert (= (and d!1681143 c!899298) b!5214011))

(assert (= (and d!1681143 (not c!899298)) b!5214013))

(assert (= (and b!5214013 c!899299) b!5214015))

(assert (= (and b!5214013 (not c!899299)) b!5214014))

(assert (= (or b!5214011 b!5214015) bm!367394))

(declare-fun m!6263030 () Bool)

(assert (=> b!5214011 m!6263030))

(declare-fun m!6263032 () Bool)

(assert (=> b!5214012 m!6263032))

(declare-fun m!6263034 () Bool)

(assert (=> bm!367394 m!6263034))

(assert (=> b!5213644 d!1681143))

(declare-fun d!1681145 () Bool)

(assert (=> d!1681145 (= (flatMap!529 lt!2142484 lambda!261482) (dynLambda!23934 lambda!261482 lt!2142496))))

(declare-fun lt!2142588 () Unit!152474)

(assert (=> d!1681145 (= lt!2142588 (choose!38764 lt!2142484 lt!2142496 lambda!261482))))

(assert (=> d!1681145 (= lt!2142484 (set.insert lt!2142496 (as set.empty (Set Context!8372))))))

(assert (=> d!1681145 (= (lemmaFlatMapOnSingletonSet!61 lt!2142484 lt!2142496 lambda!261482) lt!2142588)))

(declare-fun b_lambda!201655 () Bool)

(assert (=> (not b_lambda!201655) (not d!1681145)))

(declare-fun bs!1211221 () Bool)

(assert (= bs!1211221 d!1681145))

(assert (=> bs!1211221 m!6262738))

(declare-fun m!6263036 () Bool)

(assert (=> bs!1211221 m!6263036))

(declare-fun m!6263038 () Bool)

(assert (=> bs!1211221 m!6263038))

(assert (=> bs!1211221 m!6262734))

(assert (=> b!5213644 d!1681145))

(declare-fun d!1681147 () Bool)

(declare-fun c!899300 () Bool)

(assert (=> d!1681147 (= c!899300 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3245795 () Bool)

(assert (=> d!1681147 (= (matchZipper!1046 lt!2142499 (t!373871 s!2326)) e!3245795)))

(declare-fun b!5214016 () Bool)

(assert (=> b!5214016 (= e!3245795 (nullableZipper!1228 lt!2142499))))

(declare-fun b!5214017 () Bool)

(assert (=> b!5214017 (= e!3245795 (matchZipper!1046 (derivationStepZipper!1072 lt!2142499 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681147 c!899300) b!5214016))

(assert (= (and d!1681147 (not c!899300)) b!5214017))

(assert (=> d!1681147 m!6262894))

(declare-fun m!6263040 () Bool)

(assert (=> b!5214016 m!6263040))

(assert (=> b!5214017 m!6262898))

(assert (=> b!5214017 m!6262898))

(declare-fun m!6263042 () Bool)

(assert (=> b!5214017 m!6263042))

(assert (=> b!5214017 m!6262902))

(assert (=> b!5214017 m!6263042))

(assert (=> b!5214017 m!6262902))

(declare-fun m!6263044 () Bool)

(assert (=> b!5214017 m!6263044))

(assert (=> b!5213652 d!1681147))

(declare-fun d!1681149 () Bool)

(declare-fun c!899301 () Bool)

(assert (=> d!1681149 (= c!899301 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3245796 () Bool)

(assert (=> d!1681149 (= (matchZipper!1046 lt!2142494 (t!373871 s!2326)) e!3245796)))

(declare-fun b!5214018 () Bool)

(assert (=> b!5214018 (= e!3245796 (nullableZipper!1228 lt!2142494))))

(declare-fun b!5214019 () Bool)

(assert (=> b!5214019 (= e!3245796 (matchZipper!1046 (derivationStepZipper!1072 lt!2142494 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681149 c!899301) b!5214018))

(assert (= (and d!1681149 (not c!899301)) b!5214019))

(assert (=> d!1681149 m!6262894))

(declare-fun m!6263046 () Bool)

(assert (=> b!5214018 m!6263046))

(assert (=> b!5214019 m!6262898))

(assert (=> b!5214019 m!6262898))

(declare-fun m!6263048 () Bool)

(assert (=> b!5214019 m!6263048))

(assert (=> b!5214019 m!6262902))

(assert (=> b!5214019 m!6263048))

(assert (=> b!5214019 m!6262902))

(declare-fun m!6263050 () Bool)

(assert (=> b!5214019 m!6263050))

(assert (=> b!5213652 d!1681149))

(declare-fun d!1681151 () Bool)

(declare-fun c!899302 () Bool)

(assert (=> d!1681151 (= c!899302 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3245797 () Bool)

(assert (=> d!1681151 (= (matchZipper!1046 lt!2142488 (t!373871 s!2326)) e!3245797)))

(declare-fun b!5214020 () Bool)

(assert (=> b!5214020 (= e!3245797 (nullableZipper!1228 lt!2142488))))

(declare-fun b!5214021 () Bool)

(assert (=> b!5214021 (= e!3245797 (matchZipper!1046 (derivationStepZipper!1072 lt!2142488 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681151 c!899302) b!5214020))

(assert (= (and d!1681151 (not c!899302)) b!5214021))

(assert (=> d!1681151 m!6262894))

(declare-fun m!6263052 () Bool)

(assert (=> b!5214020 m!6263052))

(assert (=> b!5214021 m!6262898))

(assert (=> b!5214021 m!6262898))

(declare-fun m!6263054 () Bool)

(assert (=> b!5214021 m!6263054))

(assert (=> b!5214021 m!6262902))

(assert (=> b!5214021 m!6263054))

(assert (=> b!5214021 m!6262902))

(declare-fun m!6263056 () Bool)

(assert (=> b!5214021 m!6263056))

(assert (=> b!5213652 d!1681151))

(declare-fun d!1681153 () Bool)

(declare-fun e!3245801 () Bool)

(assert (=> d!1681153 (= (matchZipper!1046 (set.union lt!2142488 lt!2142497) (t!373871 s!2326)) e!3245801)))

(declare-fun res!2214453 () Bool)

(assert (=> d!1681153 (=> res!2214453 e!3245801)))

(assert (=> d!1681153 (= res!2214453 (matchZipper!1046 lt!2142488 (t!373871 s!2326)))))

(declare-fun lt!2142591 () Unit!152474)

(declare-fun choose!38765 ((Set Context!8372) (Set Context!8372) List!60706) Unit!152474)

(assert (=> d!1681153 (= lt!2142591 (choose!38765 lt!2142488 lt!2142497 (t!373871 s!2326)))))

(assert (=> d!1681153 (= (lemmaZipperConcatMatchesSameAsBothZippers!39 lt!2142488 lt!2142497 (t!373871 s!2326)) lt!2142591)))

(declare-fun b!5214026 () Bool)

(assert (=> b!5214026 (= e!3245801 (matchZipper!1046 lt!2142497 (t!373871 s!2326)))))

(assert (= (and d!1681153 (not res!2214453)) b!5214026))

(declare-fun m!6263070 () Bool)

(assert (=> d!1681153 m!6263070))

(assert (=> d!1681153 m!6262804))

(declare-fun m!6263072 () Bool)

(assert (=> d!1681153 m!6263072))

(assert (=> b!5214026 m!6262784))

(assert (=> b!5213652 d!1681153))

(declare-fun d!1681157 () Bool)

(assert (=> d!1681157 (= (isEmpty!32495 (t!373872 zl!343)) (is-Nil!60583 (t!373872 zl!343)))))

(assert (=> b!5213637 d!1681157))

(declare-fun d!1681159 () Bool)

(declare-fun e!3245802 () Bool)

(assert (=> d!1681159 (= (matchZipper!1046 (set.union lt!2142499 lt!2142487) (t!373871 s!2326)) e!3245802)))

(declare-fun res!2214454 () Bool)

(assert (=> d!1681159 (=> res!2214454 e!3245802)))

(assert (=> d!1681159 (= res!2214454 (matchZipper!1046 lt!2142499 (t!373871 s!2326)))))

(declare-fun lt!2142592 () Unit!152474)

(assert (=> d!1681159 (= lt!2142592 (choose!38765 lt!2142499 lt!2142487 (t!373871 s!2326)))))

(assert (=> d!1681159 (= (lemmaZipperConcatMatchesSameAsBothZippers!39 lt!2142499 lt!2142487 (t!373871 s!2326)) lt!2142592)))

(declare-fun b!5214027 () Bool)

(assert (=> b!5214027 (= e!3245802 (matchZipper!1046 lt!2142487 (t!373871 s!2326)))))

(assert (= (and d!1681159 (not res!2214454)) b!5214027))

(assert (=> d!1681159 m!6262730))

(assert (=> d!1681159 m!6262728))

(declare-fun m!6263074 () Bool)

(assert (=> d!1681159 m!6263074))

(assert (=> b!5214027 m!6262788))

(assert (=> b!5213647 d!1681159))

(assert (=> b!5213647 d!1681147))

(declare-fun d!1681161 () Bool)

(declare-fun c!899304 () Bool)

(assert (=> d!1681161 (= c!899304 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3245803 () Bool)

(assert (=> d!1681161 (= (matchZipper!1046 (set.union lt!2142499 lt!2142487) (t!373871 s!2326)) e!3245803)))

(declare-fun b!5214028 () Bool)

(assert (=> b!5214028 (= e!3245803 (nullableZipper!1228 (set.union lt!2142499 lt!2142487)))))

(declare-fun b!5214029 () Bool)

(assert (=> b!5214029 (= e!3245803 (matchZipper!1046 (derivationStepZipper!1072 (set.union lt!2142499 lt!2142487) (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681161 c!899304) b!5214028))

(assert (= (and d!1681161 (not c!899304)) b!5214029))

(assert (=> d!1681161 m!6262894))

(declare-fun m!6263076 () Bool)

(assert (=> b!5214028 m!6263076))

(assert (=> b!5214029 m!6262898))

(assert (=> b!5214029 m!6262898))

(declare-fun m!6263078 () Bool)

(assert (=> b!5214029 m!6263078))

(assert (=> b!5214029 m!6262902))

(assert (=> b!5214029 m!6263078))

(assert (=> b!5214029 m!6262902))

(declare-fun m!6263080 () Bool)

(assert (=> b!5214029 m!6263080))

(assert (=> b!5213647 d!1681161))

(assert (=> b!5213656 d!1681093))

(declare-fun d!1681163 () Bool)

(declare-fun lambda!261513 () Int)

(declare-fun forall!14236 (List!60705 Int) Bool)

(assert (=> d!1681163 (= (inv!80253 (h!67031 zl!343)) (forall!14236 (exprs!4686 (h!67031 zl!343)) lambda!261513))))

(declare-fun bs!1211222 () Bool)

(assert (= bs!1211222 d!1681163))

(declare-fun m!6263082 () Bool)

(assert (=> bs!1211222 m!6263082))

(assert (=> b!5213655 d!1681163))

(declare-fun bm!367395 () Bool)

(declare-fun call!367400 () Bool)

(declare-fun call!367402 () Bool)

(assert (=> bm!367395 (= call!367400 call!367402)))

(declare-fun b!5214030 () Bool)

(declare-fun e!3245809 () Bool)

(declare-fun e!3245806 () Bool)

(assert (=> b!5214030 (= e!3245809 e!3245806)))

(declare-fun c!899305 () Bool)

(assert (=> b!5214030 (= c!899305 (is-Star!14802 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun bm!367396 () Bool)

(declare-fun call!367401 () Bool)

(declare-fun c!899306 () Bool)

(assert (=> bm!367396 (= call!367401 (validRegex!6538 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun b!5214031 () Bool)

(declare-fun res!2214457 () Bool)

(declare-fun e!3245804 () Bool)

(assert (=> b!5214031 (=> res!2214457 e!3245804)))

(assert (=> b!5214031 (= res!2214457 (not (is-Concat!23647 (regOne!30117 (regOne!30116 r!7292)))))))

(declare-fun e!3245808 () Bool)

(assert (=> b!5214031 (= e!3245808 e!3245804)))

(declare-fun b!5214032 () Bool)

(declare-fun e!3245805 () Bool)

(assert (=> b!5214032 (= e!3245804 e!3245805)))

(declare-fun res!2214458 () Bool)

(assert (=> b!5214032 (=> (not res!2214458) (not e!3245805))))

(assert (=> b!5214032 (= res!2214458 call!367400)))

(declare-fun b!5214033 () Bool)

(assert (=> b!5214033 (= e!3245806 e!3245808)))

(assert (=> b!5214033 (= c!899306 (is-Union!14802 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun d!1681165 () Bool)

(declare-fun res!2214455 () Bool)

(assert (=> d!1681165 (=> res!2214455 e!3245809)))

(assert (=> d!1681165 (= res!2214455 (is-ElementMatch!14802 (regOne!30117 (regOne!30116 r!7292))))))

(assert (=> d!1681165 (= (validRegex!6538 (regOne!30117 (regOne!30116 r!7292))) e!3245809)))

(declare-fun b!5214034 () Bool)

(declare-fun res!2214459 () Bool)

(declare-fun e!3245807 () Bool)

(assert (=> b!5214034 (=> (not res!2214459) (not e!3245807))))

(assert (=> b!5214034 (= res!2214459 call!367400)))

(assert (=> b!5214034 (= e!3245808 e!3245807)))

(declare-fun b!5214035 () Bool)

(declare-fun e!3245810 () Bool)

(assert (=> b!5214035 (= e!3245810 call!367402)))

(declare-fun b!5214036 () Bool)

(assert (=> b!5214036 (= e!3245805 call!367401)))

(declare-fun bm!367397 () Bool)

(assert (=> bm!367397 (= call!367402 (validRegex!6538 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(declare-fun b!5214037 () Bool)

(assert (=> b!5214037 (= e!3245807 call!367401)))

(declare-fun b!5214038 () Bool)

(assert (=> b!5214038 (= e!3245806 e!3245810)))

(declare-fun res!2214456 () Bool)

(assert (=> b!5214038 (= res!2214456 (not (nullable!4971 (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))))

(assert (=> b!5214038 (=> (not res!2214456) (not e!3245810))))

(assert (= (and d!1681165 (not res!2214455)) b!5214030))

(assert (= (and b!5214030 c!899305) b!5214038))

(assert (= (and b!5214030 (not c!899305)) b!5214033))

(assert (= (and b!5214038 res!2214456) b!5214035))

(assert (= (and b!5214033 c!899306) b!5214034))

(assert (= (and b!5214033 (not c!899306)) b!5214031))

(assert (= (and b!5214034 res!2214459) b!5214037))

(assert (= (and b!5214031 (not res!2214457)) b!5214032))

(assert (= (and b!5214032 res!2214458) b!5214036))

(assert (= (or b!5214037 b!5214036) bm!367396))

(assert (= (or b!5214034 b!5214032) bm!367395))

(assert (= (or b!5214035 bm!367395) bm!367397))

(declare-fun m!6263084 () Bool)

(assert (=> bm!367396 m!6263084))

(declare-fun m!6263086 () Bool)

(assert (=> bm!367397 m!6263086))

(declare-fun m!6263088 () Bool)

(assert (=> b!5214038 m!6263088))

(assert (=> b!5213635 d!1681165))

(declare-fun d!1681167 () Bool)

(declare-fun c!899307 () Bool)

(assert (=> d!1681167 (= c!899307 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3245811 () Bool)

(assert (=> d!1681167 (= (matchZipper!1046 lt!2142487 (t!373871 s!2326)) e!3245811)))

(declare-fun b!5214039 () Bool)

(assert (=> b!5214039 (= e!3245811 (nullableZipper!1228 lt!2142487))))

(declare-fun b!5214040 () Bool)

(assert (=> b!5214040 (= e!3245811 (matchZipper!1046 (derivationStepZipper!1072 lt!2142487 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681167 c!899307) b!5214039))

(assert (= (and d!1681167 (not c!899307)) b!5214040))

(assert (=> d!1681167 m!6262894))

(declare-fun m!6263090 () Bool)

(assert (=> b!5214039 m!6263090))

(assert (=> b!5214040 m!6262898))

(assert (=> b!5214040 m!6262898))

(declare-fun m!6263092 () Bool)

(assert (=> b!5214040 m!6263092))

(assert (=> b!5214040 m!6262902))

(assert (=> b!5214040 m!6263092))

(assert (=> b!5214040 m!6262902))

(declare-fun m!6263094 () Bool)

(assert (=> b!5214040 m!6263094))

(assert (=> b!5213646 d!1681167))

(declare-fun d!1681169 () Bool)

(declare-fun e!3245814 () Bool)

(assert (=> d!1681169 e!3245814))

(declare-fun res!2214462 () Bool)

(assert (=> d!1681169 (=> (not res!2214462) (not e!3245814))))

(declare-fun lt!2142595 () List!60707)

(declare-fun noDuplicate!1184 (List!60707) Bool)

(assert (=> d!1681169 (= res!2214462 (noDuplicate!1184 lt!2142595))))

(declare-fun choose!38766 ((Set Context!8372)) List!60707)

(assert (=> d!1681169 (= lt!2142595 (choose!38766 z!1189))))

(assert (=> d!1681169 (= (toList!8586 z!1189) lt!2142595)))

(declare-fun b!5214043 () Bool)

(declare-fun content!10734 (List!60707) (Set Context!8372))

(assert (=> b!5214043 (= e!3245814 (= (content!10734 lt!2142595) z!1189))))

(assert (= (and d!1681169 res!2214462) b!5214043))

(declare-fun m!6263096 () Bool)

(assert (=> d!1681169 m!6263096))

(declare-fun m!6263098 () Bool)

(assert (=> d!1681169 m!6263098))

(declare-fun m!6263100 () Bool)

(assert (=> b!5214043 m!6263100))

(assert (=> b!5213640 d!1681169))

(declare-fun bs!1211223 () Bool)

(declare-fun d!1681171 () Bool)

(assert (= bs!1211223 (and d!1681171 d!1681163)))

(declare-fun lambda!261516 () Int)

(assert (=> bs!1211223 (= lambda!261516 lambda!261513)))

(declare-fun b!5214064 () Bool)

(declare-fun e!3245828 () Regex!14802)

(assert (=> b!5214064 (= e!3245828 (Union!14802 (h!67029 (unfocusZipperList!244 zl!343)) (generalisedUnion!731 (t!373870 (unfocusZipperList!244 zl!343)))))))

(declare-fun b!5214065 () Bool)

(declare-fun e!3245830 () Bool)

(declare-fun lt!2142600 () Regex!14802)

(declare-fun head!11176 (List!60705) Regex!14802)

(assert (=> b!5214065 (= e!3245830 (= lt!2142600 (head!11176 (unfocusZipperList!244 zl!343))))))

(declare-fun b!5214067 () Bool)

(declare-fun isUnion!205 (Regex!14802) Bool)

(assert (=> b!5214067 (= e!3245830 (isUnion!205 lt!2142600))))

(declare-fun b!5214068 () Bool)

(declare-fun e!3245831 () Bool)

(declare-fun e!3245832 () Bool)

(assert (=> b!5214068 (= e!3245831 e!3245832)))

(declare-fun c!899316 () Bool)

(assert (=> b!5214068 (= c!899316 (isEmpty!32496 (unfocusZipperList!244 zl!343)))))

(declare-fun b!5214069 () Bool)

(declare-fun e!3245827 () Regex!14802)

(assert (=> b!5214069 (= e!3245827 e!3245828)))

(declare-fun c!899318 () Bool)

(assert (=> b!5214069 (= c!899318 (is-Cons!60581 (unfocusZipperList!244 zl!343)))))

(declare-fun b!5214070 () Bool)

(declare-fun isEmptyLang!773 (Regex!14802) Bool)

(assert (=> b!5214070 (= e!3245832 (isEmptyLang!773 lt!2142600))))

(declare-fun b!5214071 () Bool)

(assert (=> b!5214071 (= e!3245827 (h!67029 (unfocusZipperList!244 zl!343)))))

(assert (=> d!1681171 e!3245831))

(declare-fun res!2214467 () Bool)

(assert (=> d!1681171 (=> (not res!2214467) (not e!3245831))))

(assert (=> d!1681171 (= res!2214467 (validRegex!6538 lt!2142600))))

(assert (=> d!1681171 (= lt!2142600 e!3245827)))

(declare-fun c!899317 () Bool)

(declare-fun e!3245829 () Bool)

(assert (=> d!1681171 (= c!899317 e!3245829)))

(declare-fun res!2214468 () Bool)

(assert (=> d!1681171 (=> (not res!2214468) (not e!3245829))))

(assert (=> d!1681171 (= res!2214468 (is-Cons!60581 (unfocusZipperList!244 zl!343)))))

(assert (=> d!1681171 (forall!14236 (unfocusZipperList!244 zl!343) lambda!261516)))

(assert (=> d!1681171 (= (generalisedUnion!731 (unfocusZipperList!244 zl!343)) lt!2142600)))

(declare-fun b!5214066 () Bool)

(assert (=> b!5214066 (= e!3245829 (isEmpty!32496 (t!373870 (unfocusZipperList!244 zl!343))))))

(declare-fun b!5214072 () Bool)

(assert (=> b!5214072 (= e!3245828 EmptyLang!14802)))

(declare-fun b!5214073 () Bool)

(assert (=> b!5214073 (= e!3245832 e!3245830)))

(declare-fun c!899319 () Bool)

(declare-fun tail!10273 (List!60705) List!60705)

(assert (=> b!5214073 (= c!899319 (isEmpty!32496 (tail!10273 (unfocusZipperList!244 zl!343))))))

(assert (= (and d!1681171 res!2214468) b!5214066))

(assert (= (and d!1681171 c!899317) b!5214071))

(assert (= (and d!1681171 (not c!899317)) b!5214069))

(assert (= (and b!5214069 c!899318) b!5214064))

(assert (= (and b!5214069 (not c!899318)) b!5214072))

(assert (= (and d!1681171 res!2214467) b!5214068))

(assert (= (and b!5214068 c!899316) b!5214070))

(assert (= (and b!5214068 (not c!899316)) b!5214073))

(assert (= (and b!5214073 c!899319) b!5214065))

(assert (= (and b!5214073 (not c!899319)) b!5214067))

(assert (=> b!5214065 m!6262766))

(declare-fun m!6263102 () Bool)

(assert (=> b!5214065 m!6263102))

(declare-fun m!6263104 () Bool)

(assert (=> d!1681171 m!6263104))

(assert (=> d!1681171 m!6262766))

(declare-fun m!6263106 () Bool)

(assert (=> d!1681171 m!6263106))

(assert (=> b!5214068 m!6262766))

(declare-fun m!6263108 () Bool)

(assert (=> b!5214068 m!6263108))

(assert (=> b!5214073 m!6262766))

(declare-fun m!6263110 () Bool)

(assert (=> b!5214073 m!6263110))

(assert (=> b!5214073 m!6263110))

(declare-fun m!6263112 () Bool)

(assert (=> b!5214073 m!6263112))

(declare-fun m!6263114 () Bool)

(assert (=> b!5214067 m!6263114))

(declare-fun m!6263116 () Bool)

(assert (=> b!5214064 m!6263116))

(declare-fun m!6263118 () Bool)

(assert (=> b!5214066 m!6263118))

(declare-fun m!6263120 () Bool)

(assert (=> b!5214070 m!6263120))

(assert (=> b!5213648 d!1681171))

(declare-fun bs!1211224 () Bool)

(declare-fun d!1681173 () Bool)

(assert (= bs!1211224 (and d!1681173 d!1681163)))

(declare-fun lambda!261519 () Int)

(assert (=> bs!1211224 (= lambda!261519 lambda!261513)))

(declare-fun bs!1211225 () Bool)

(assert (= bs!1211225 (and d!1681173 d!1681171)))

(assert (=> bs!1211225 (= lambda!261519 lambda!261516)))

(declare-fun lt!2142607 () List!60705)

(assert (=> d!1681173 (forall!14236 lt!2142607 lambda!261519)))

(declare-fun e!3245845 () List!60705)

(assert (=> d!1681173 (= lt!2142607 e!3245845)))

(declare-fun c!899326 () Bool)

(assert (=> d!1681173 (= c!899326 (is-Cons!60583 zl!343))))

(assert (=> d!1681173 (= (unfocusZipperList!244 zl!343) lt!2142607)))

(declare-fun b!5214096 () Bool)

(assert (=> b!5214096 (= e!3245845 (Cons!60581 (generalisedConcat!471 (exprs!4686 (h!67031 zl!343))) (unfocusZipperList!244 (t!373872 zl!343))))))

(declare-fun b!5214097 () Bool)

(assert (=> b!5214097 (= e!3245845 Nil!60581)))

(assert (= (and d!1681173 c!899326) b!5214096))

(assert (= (and d!1681173 (not c!899326)) b!5214097))

(declare-fun m!6263122 () Bool)

(assert (=> d!1681173 m!6263122))

(assert (=> b!5214096 m!6262786))

(declare-fun m!6263124 () Bool)

(assert (=> b!5214096 m!6263124))

(assert (=> b!5213648 d!1681173))

(declare-fun bs!1211226 () Bool)

(declare-fun d!1681175 () Bool)

(assert (= bs!1211226 (and d!1681175 d!1681163)))

(declare-fun lambda!261520 () Int)

(assert (=> bs!1211226 (= lambda!261520 lambda!261513)))

(declare-fun bs!1211227 () Bool)

(assert (= bs!1211227 (and d!1681175 d!1681171)))

(assert (=> bs!1211227 (= lambda!261520 lambda!261516)))

(declare-fun bs!1211228 () Bool)

(assert (= bs!1211228 (and d!1681175 d!1681173)))

(assert (=> bs!1211228 (= lambda!261520 lambda!261519)))

(assert (=> d!1681175 (= (inv!80253 setElem!33129) (forall!14236 (exprs!4686 setElem!33129) lambda!261520))))

(declare-fun bs!1211229 () Bool)

(assert (= bs!1211229 d!1681175))

(declare-fun m!6263126 () Bool)

(assert (=> bs!1211229 m!6263126))

(assert (=> setNonEmpty!33129 d!1681175))

(declare-fun bs!1211232 () Bool)

(declare-fun d!1681177 () Bool)

(assert (= bs!1211232 (and d!1681177 d!1681163)))

(declare-fun lambda!261523 () Int)

(assert (=> bs!1211232 (= lambda!261523 lambda!261513)))

(declare-fun bs!1211233 () Bool)

(assert (= bs!1211233 (and d!1681177 d!1681171)))

(assert (=> bs!1211233 (= lambda!261523 lambda!261516)))

(declare-fun bs!1211234 () Bool)

(assert (= bs!1211234 (and d!1681177 d!1681173)))

(assert (=> bs!1211234 (= lambda!261523 lambda!261519)))

(declare-fun bs!1211235 () Bool)

(assert (= bs!1211235 (and d!1681177 d!1681175)))

(assert (=> bs!1211235 (= lambda!261523 lambda!261520)))

(declare-fun b!5214127 () Bool)

(declare-fun e!3245868 () Bool)

(declare-fun lt!2142613 () Regex!14802)

(declare-fun isConcat!287 (Regex!14802) Bool)

(assert (=> b!5214127 (= e!3245868 (isConcat!287 lt!2142613))))

(declare-fun b!5214128 () Bool)

(declare-fun e!3245864 () Bool)

(declare-fun isEmptyExpr!764 (Regex!14802) Bool)

(assert (=> b!5214128 (= e!3245864 (isEmptyExpr!764 lt!2142613))))

(declare-fun b!5214129 () Bool)

(declare-fun e!3245863 () Regex!14802)

(assert (=> b!5214129 (= e!3245863 EmptyExpr!14802)))

(declare-fun b!5214130 () Bool)

(assert (=> b!5214130 (= e!3245864 e!3245868)))

(declare-fun c!899340 () Bool)

(assert (=> b!5214130 (= c!899340 (isEmpty!32496 (tail!10273 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun e!3245866 () Bool)

(assert (=> d!1681177 e!3245866))

(declare-fun res!2214488 () Bool)

(assert (=> d!1681177 (=> (not res!2214488) (not e!3245866))))

(assert (=> d!1681177 (= res!2214488 (validRegex!6538 lt!2142613))))

(declare-fun e!3245865 () Regex!14802)

(assert (=> d!1681177 (= lt!2142613 e!3245865)))

(declare-fun c!899337 () Bool)

(declare-fun e!3245867 () Bool)

(assert (=> d!1681177 (= c!899337 e!3245867)))

(declare-fun res!2214489 () Bool)

(assert (=> d!1681177 (=> (not res!2214489) (not e!3245867))))

(assert (=> d!1681177 (= res!2214489 (is-Cons!60581 (exprs!4686 (h!67031 zl!343))))))

(assert (=> d!1681177 (forall!14236 (exprs!4686 (h!67031 zl!343)) lambda!261523)))

(assert (=> d!1681177 (= (generalisedConcat!471 (exprs!4686 (h!67031 zl!343))) lt!2142613)))

(declare-fun b!5214131 () Bool)

(assert (=> b!5214131 (= e!3245865 (h!67029 (exprs!4686 (h!67031 zl!343))))))

(declare-fun b!5214132 () Bool)

(assert (=> b!5214132 (= e!3245866 e!3245864)))

(declare-fun c!899338 () Bool)

(assert (=> b!5214132 (= c!899338 (isEmpty!32496 (exprs!4686 (h!67031 zl!343))))))

(declare-fun b!5214133 () Bool)

(assert (=> b!5214133 (= e!3245868 (= lt!2142613 (head!11176 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214134 () Bool)

(assert (=> b!5214134 (= e!3245865 e!3245863)))

(declare-fun c!899339 () Bool)

(assert (=> b!5214134 (= c!899339 (is-Cons!60581 (exprs!4686 (h!67031 zl!343))))))

(declare-fun b!5214135 () Bool)

(assert (=> b!5214135 (= e!3245867 (isEmpty!32496 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214136 () Bool)

(assert (=> b!5214136 (= e!3245863 (Concat!23647 (h!67029 (exprs!4686 (h!67031 zl!343))) (generalisedConcat!471 (t!373870 (exprs!4686 (h!67031 zl!343))))))))

(assert (= (and d!1681177 res!2214489) b!5214135))

(assert (= (and d!1681177 c!899337) b!5214131))

(assert (= (and d!1681177 (not c!899337)) b!5214134))

(assert (= (and b!5214134 c!899339) b!5214136))

(assert (= (and b!5214134 (not c!899339)) b!5214129))

(assert (= (and d!1681177 res!2214488) b!5214132))

(assert (= (and b!5214132 c!899338) b!5214128))

(assert (= (and b!5214132 (not c!899338)) b!5214130))

(assert (= (and b!5214130 c!899340) b!5214133))

(assert (= (and b!5214130 (not c!899340)) b!5214127))

(declare-fun m!6263156 () Bool)

(assert (=> b!5214133 m!6263156))

(declare-fun m!6263158 () Bool)

(assert (=> b!5214127 m!6263158))

(declare-fun m!6263160 () Bool)

(assert (=> d!1681177 m!6263160))

(declare-fun m!6263162 () Bool)

(assert (=> d!1681177 m!6263162))

(assert (=> b!5214135 m!6262764))

(declare-fun m!6263164 () Bool)

(assert (=> b!5214130 m!6263164))

(assert (=> b!5214130 m!6263164))

(declare-fun m!6263166 () Bool)

(assert (=> b!5214130 m!6263166))

(declare-fun m!6263168 () Bool)

(assert (=> b!5214132 m!6263168))

(declare-fun m!6263170 () Bool)

(assert (=> b!5214128 m!6263170))

(declare-fun m!6263172 () Bool)

(assert (=> b!5214136 m!6263172))

(assert (=> b!5213658 d!1681177))

(declare-fun d!1681185 () Bool)

(declare-fun lt!2142616 () Regex!14802)

(assert (=> d!1681185 (validRegex!6538 lt!2142616)))

(assert (=> d!1681185 (= lt!2142616 (generalisedUnion!731 (unfocusZipperList!244 zl!343)))))

(assert (=> d!1681185 (= (unfocusZipper!544 zl!343) lt!2142616)))

(declare-fun bs!1211236 () Bool)

(assert (= bs!1211236 d!1681185))

(declare-fun m!6263174 () Bool)

(assert (=> bs!1211236 m!6263174))

(assert (=> bs!1211236 m!6262766))

(assert (=> bs!1211236 m!6262766))

(assert (=> bs!1211236 m!6262768))

(assert (=> b!5213638 d!1681185))

(declare-fun b!5214141 () Bool)

(declare-fun e!3245871 () Bool)

(declare-fun tp!1462070 () Bool)

(declare-fun tp!1462071 () Bool)

(assert (=> b!5214141 (= e!3245871 (and tp!1462070 tp!1462071))))

(assert (=> b!5213631 (= tp!1462034 e!3245871)))

(assert (= (and b!5213631 (is-Cons!60581 (exprs!4686 setElem!33129))) b!5214141))

(declare-fun e!3245874 () Bool)

(assert (=> b!5213642 (= tp!1462028 e!3245874)))

(declare-fun b!5214153 () Bool)

(declare-fun tp!1462084 () Bool)

(declare-fun tp!1462086 () Bool)

(assert (=> b!5214153 (= e!3245874 (and tp!1462084 tp!1462086))))

(declare-fun b!5214155 () Bool)

(declare-fun tp!1462083 () Bool)

(declare-fun tp!1462082 () Bool)

(assert (=> b!5214155 (= e!3245874 (and tp!1462083 tp!1462082))))

(declare-fun b!5214154 () Bool)

(declare-fun tp!1462085 () Bool)

(assert (=> b!5214154 (= e!3245874 tp!1462085)))

(declare-fun b!5214152 () Bool)

(assert (=> b!5214152 (= e!3245874 tp_is_empty!38857)))

(assert (= (and b!5213642 (is-ElementMatch!14802 (regOne!30116 r!7292))) b!5214152))

(assert (= (and b!5213642 (is-Concat!23647 (regOne!30116 r!7292))) b!5214153))

(assert (= (and b!5213642 (is-Star!14802 (regOne!30116 r!7292))) b!5214154))

(assert (= (and b!5213642 (is-Union!14802 (regOne!30116 r!7292))) b!5214155))

(declare-fun e!3245875 () Bool)

(assert (=> b!5213642 (= tp!1462033 e!3245875)))

(declare-fun b!5214157 () Bool)

(declare-fun tp!1462089 () Bool)

(declare-fun tp!1462091 () Bool)

(assert (=> b!5214157 (= e!3245875 (and tp!1462089 tp!1462091))))

(declare-fun b!5214159 () Bool)

(declare-fun tp!1462088 () Bool)

(declare-fun tp!1462087 () Bool)

(assert (=> b!5214159 (= e!3245875 (and tp!1462088 tp!1462087))))

(declare-fun b!5214158 () Bool)

(declare-fun tp!1462090 () Bool)

(assert (=> b!5214158 (= e!3245875 tp!1462090)))

(declare-fun b!5214156 () Bool)

(assert (=> b!5214156 (= e!3245875 tp_is_empty!38857)))

(assert (= (and b!5213642 (is-ElementMatch!14802 (regTwo!30116 r!7292))) b!5214156))

(assert (= (and b!5213642 (is-Concat!23647 (regTwo!30116 r!7292))) b!5214157))

(assert (= (and b!5213642 (is-Star!14802 (regTwo!30116 r!7292))) b!5214158))

(assert (= (and b!5213642 (is-Union!14802 (regTwo!30116 r!7292))) b!5214159))

(declare-fun b!5214167 () Bool)

(declare-fun e!3245881 () Bool)

(declare-fun tp!1462096 () Bool)

(assert (=> b!5214167 (= e!3245881 tp!1462096)))

(declare-fun tp!1462097 () Bool)

(declare-fun e!3245880 () Bool)

(declare-fun b!5214166 () Bool)

(assert (=> b!5214166 (= e!3245880 (and (inv!80253 (h!67031 (t!373872 zl!343))) e!3245881 tp!1462097))))

(assert (=> b!5213655 (= tp!1462031 e!3245880)))

(assert (= b!5214166 b!5214167))

(assert (= (and b!5213655 (is-Cons!60583 (t!373872 zl!343))) b!5214166))

(declare-fun m!6263176 () Bool)

(assert (=> b!5214166 m!6263176))

(declare-fun b!5214168 () Bool)

(declare-fun e!3245882 () Bool)

(declare-fun tp!1462098 () Bool)

(declare-fun tp!1462099 () Bool)

(assert (=> b!5214168 (= e!3245882 (and tp!1462098 tp!1462099))))

(assert (=> b!5213636 (= tp!1462035 e!3245882)))

(assert (= (and b!5213636 (is-Cons!60581 (exprs!4686 (h!67031 zl!343)))) b!5214168))

(declare-fun e!3245883 () Bool)

(assert (=> b!5213649 (= tp!1462030 e!3245883)))

(declare-fun b!5214170 () Bool)

(declare-fun tp!1462102 () Bool)

(declare-fun tp!1462104 () Bool)

(assert (=> b!5214170 (= e!3245883 (and tp!1462102 tp!1462104))))

(declare-fun b!5214172 () Bool)

(declare-fun tp!1462101 () Bool)

(declare-fun tp!1462100 () Bool)

(assert (=> b!5214172 (= e!3245883 (and tp!1462101 tp!1462100))))

(declare-fun b!5214171 () Bool)

(declare-fun tp!1462103 () Bool)

(assert (=> b!5214171 (= e!3245883 tp!1462103)))

(declare-fun b!5214169 () Bool)

(assert (=> b!5214169 (= e!3245883 tp_is_empty!38857)))

(assert (= (and b!5213649 (is-ElementMatch!14802 (regOne!30117 r!7292))) b!5214169))

(assert (= (and b!5213649 (is-Concat!23647 (regOne!30117 r!7292))) b!5214170))

(assert (= (and b!5213649 (is-Star!14802 (regOne!30117 r!7292))) b!5214171))

(assert (= (and b!5213649 (is-Union!14802 (regOne!30117 r!7292))) b!5214172))

(declare-fun e!3245884 () Bool)

(assert (=> b!5213649 (= tp!1462032 e!3245884)))

(declare-fun b!5214174 () Bool)

(declare-fun tp!1462107 () Bool)

(declare-fun tp!1462109 () Bool)

(assert (=> b!5214174 (= e!3245884 (and tp!1462107 tp!1462109))))

(declare-fun b!5214176 () Bool)

(declare-fun tp!1462106 () Bool)

(declare-fun tp!1462105 () Bool)

(assert (=> b!5214176 (= e!3245884 (and tp!1462106 tp!1462105))))

(declare-fun b!5214175 () Bool)

(declare-fun tp!1462108 () Bool)

(assert (=> b!5214175 (= e!3245884 tp!1462108)))

(declare-fun b!5214173 () Bool)

(assert (=> b!5214173 (= e!3245884 tp_is_empty!38857)))

(assert (= (and b!5213649 (is-ElementMatch!14802 (regTwo!30117 r!7292))) b!5214173))

(assert (= (and b!5213649 (is-Concat!23647 (regTwo!30117 r!7292))) b!5214174))

(assert (= (and b!5213649 (is-Star!14802 (regTwo!30117 r!7292))) b!5214175))

(assert (= (and b!5213649 (is-Union!14802 (regTwo!30117 r!7292))) b!5214176))

(declare-fun b!5214181 () Bool)

(declare-fun e!3245887 () Bool)

(declare-fun tp!1462112 () Bool)

(assert (=> b!5214181 (= e!3245887 (and tp_is_empty!38857 tp!1462112))))

(assert (=> b!5213639 (= tp!1462027 e!3245887)))

(assert (= (and b!5213639 (is-Cons!60582 (t!373871 s!2326))) b!5214181))

(declare-fun condSetEmpty!33135 () Bool)

(assert (=> setNonEmpty!33129 (= condSetEmpty!33135 (= setRest!33129 (as set.empty (Set Context!8372))))))

(declare-fun setRes!33135 () Bool)

(assert (=> setNonEmpty!33129 (= tp!1462026 setRes!33135)))

(declare-fun setIsEmpty!33135 () Bool)

(assert (=> setIsEmpty!33135 setRes!33135))

(declare-fun setElem!33135 () Context!8372)

(declare-fun tp!1462117 () Bool)

(declare-fun e!3245890 () Bool)

(declare-fun setNonEmpty!33135 () Bool)

(assert (=> setNonEmpty!33135 (= setRes!33135 (and tp!1462117 (inv!80253 setElem!33135) e!3245890))))

(declare-fun setRest!33135 () (Set Context!8372))

(assert (=> setNonEmpty!33135 (= setRest!33129 (set.union (set.insert setElem!33135 (as set.empty (Set Context!8372))) setRest!33135))))

(declare-fun b!5214186 () Bool)

(declare-fun tp!1462118 () Bool)

(assert (=> b!5214186 (= e!3245890 tp!1462118)))

(assert (= (and setNonEmpty!33129 condSetEmpty!33135) setIsEmpty!33135))

(assert (= (and setNonEmpty!33129 (not condSetEmpty!33135)) setNonEmpty!33135))

(assert (= setNonEmpty!33135 b!5214186))

(declare-fun m!6263178 () Bool)

(assert (=> setNonEmpty!33135 m!6263178))

(declare-fun e!3245891 () Bool)

(assert (=> b!5213657 (= tp!1462029 e!3245891)))

(declare-fun b!5214188 () Bool)

(declare-fun tp!1462121 () Bool)

(declare-fun tp!1462123 () Bool)

(assert (=> b!5214188 (= e!3245891 (and tp!1462121 tp!1462123))))

(declare-fun b!5214190 () Bool)

(declare-fun tp!1462120 () Bool)

(declare-fun tp!1462119 () Bool)

(assert (=> b!5214190 (= e!3245891 (and tp!1462120 tp!1462119))))

(declare-fun b!5214189 () Bool)

(declare-fun tp!1462122 () Bool)

(assert (=> b!5214189 (= e!3245891 tp!1462122)))

(declare-fun b!5214187 () Bool)

(assert (=> b!5214187 (= e!3245891 tp_is_empty!38857)))

(assert (= (and b!5213657 (is-ElementMatch!14802 (reg!15131 r!7292))) b!5214187))

(assert (= (and b!5213657 (is-Concat!23647 (reg!15131 r!7292))) b!5214188))

(assert (= (and b!5213657 (is-Star!14802 (reg!15131 r!7292))) b!5214189))

(assert (= (and b!5213657 (is-Union!14802 (reg!15131 r!7292))) b!5214190))

(declare-fun b_lambda!201657 () Bool)

(assert (= b_lambda!201653 (or b!5213634 b_lambda!201657)))

(declare-fun bs!1211237 () Bool)

(declare-fun d!1681187 () Bool)

(assert (= bs!1211237 (and d!1681187 b!5213634)))

(assert (=> bs!1211237 (= (dynLambda!23934 lambda!261482 (h!67031 zl!343)) (derivationStepZipperUp!174 (h!67031 zl!343) (h!67030 s!2326)))))

(assert (=> bs!1211237 m!6262752))

(assert (=> d!1681129 d!1681187))

(declare-fun b_lambda!201659 () Bool)

(assert (= b_lambda!201655 (or b!5213634 b_lambda!201659)))

(declare-fun bs!1211238 () Bool)

(declare-fun d!1681189 () Bool)

(assert (= bs!1211238 (and d!1681189 b!5213634)))

(assert (=> bs!1211238 (= (dynLambda!23934 lambda!261482 lt!2142496) (derivationStepZipperUp!174 lt!2142496 (h!67030 s!2326)))))

(assert (=> bs!1211238 m!6262740))

(assert (=> d!1681145 d!1681189))

(push 1)

(assert (not bm!367357))

(assert (not bs!1211237))

(assert (not d!1681109))

(assert (not b!5214043))

(assert (not b!5214168))

(assert (not bm!367397))

(assert (not b!5213954))

(assert (not d!1681175))

(assert (not d!1681129))

(assert (not b!5214181))

(assert (not b!5214132))

(assert (not d!1681111))

(assert (not setNonEmpty!33135))

(assert (not b!5213937))

(assert (not b!5213815))

(assert (not d!1681167))

(assert (not b!5214175))

(assert (not b!5214017))

(assert (not b!5214176))

(assert (not bm!367370))

(assert (not b!5214130))

(assert (not d!1681145))

(assert (not bm!367396))

(assert (not bs!1211238))

(assert (not d!1681169))

(assert (not b!5214028))

(assert (not b!5214188))

(assert (not d!1681147))

(assert (not b!5213893))

(assert (not b!5213932))

(assert (not d!1681107))

(assert (not bm!367354))

(assert (not b!5214127))

(assert (not b!5214016))

(assert (not d!1681115))

(assert (not b!5213955))

(assert (not b!5213775))

(assert (not b!5213845))

(assert (not b!5214154))

(assert (not b!5213838))

(assert (not b!5214096))

(assert (not b!5213842))

(assert (not d!1681161))

(assert (not b!5214133))

(assert (not b!5214020))

(assert (not b!5214171))

(assert (not d!1681185))

(assert (not d!1681141))

(assert (not d!1681119))

(assert (not bm!367379))

(assert (not d!1681163))

(assert (not b!5214067))

(assert (not bm!367393))

(assert (not b!5213960))

(assert (not b!5213843))

(assert (not d!1681093))

(assert (not d!1681123))

(assert (not b!5214066))

(assert (not b!5214026))

(assert (not b!5214158))

(assert (not bm!367361))

(assert (not b!5214027))

(assert (not b!5214068))

(assert (not b!5214040))

(assert (not b!5213892))

(assert (not d!1681171))

(assert (not d!1681173))

(assert (not b!5214153))

(assert (not b!5213841))

(assert (not b!5214065))

(assert (not b!5214141))

(assert (not bm!367355))

(assert (not b!5214167))

(assert (not bm!367394))

(assert (not b!5213936))

(assert (not b_lambda!201657))

(assert (not b!5214135))

(assert (not b!5213976))

(assert (not b!5213934))

(assert (not d!1681139))

(assert (not bm!367363))

(assert (not b!5214159))

(assert (not bm!367376))

(assert (not bm!367380))

(assert (not b_lambda!201659))

(assert (not b!5213840))

(assert (not b!5213941))

(assert (not d!1681149))

(assert (not b!5214070))

(assert (not b!5214157))

(assert (not d!1681117))

(assert (not b!5214186))

(assert (not bm!367369))

(assert (not b!5214039))

(assert (not d!1681177))

(assert (not b!5214011))

(assert (not b!5214172))

(assert (not d!1681103))

(assert (not b!5214073))

(assert (not b!5214190))

(assert tp_is_empty!38857)

(assert (not d!1681101))

(assert (not d!1681159))

(assert (not b!5214038))

(assert (not bm!367392))

(assert (not b!5213931))

(assert (not b!5214166))

(assert (not d!1681151))

(assert (not b!5213804))

(assert (not b!5214189))

(assert (not bm!367384))

(assert (not b!5213970))

(assert (not b!5213959))

(assert (not bm!367373))

(assert (not b!5214006))

(assert (not b!5214029))

(assert (not d!1681105))

(assert (not b!5214021))

(assert (not b!5214136))

(assert (not b!5213975))

(assert (not b!5214012))

(assert (not b!5214064))

(assert (not b!5214170))

(assert (not b!5214128))

(assert (not bm!367360))

(assert (not bm!367377))

(assert (not b!5214018))

(assert (not bm!367382))

(assert (not b!5214155))

(assert (not d!1681153))

(assert (not b!5213774))

(assert (not b!5214019))

(assert (not b!5214174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1681265 () Bool)

(assert (=> d!1681265 true))

(assert (=> d!1681265 true))

(declare-fun res!2214597 () Bool)

(assert (=> d!1681265 (= (choose!38759 lambda!261481) res!2214597)))

(assert (=> d!1681103 d!1681265))

(declare-fun d!1681267 () Bool)

(assert (=> d!1681267 (= (isEmpty!32499 (t!373871 s!2326)) (is-Nil!60582 (t!373871 s!2326)))))

(assert (=> d!1681147 d!1681267))

(declare-fun d!1681269 () Bool)

(assert (=> d!1681269 (= (isDefined!11616 lt!2142572) (not (isEmpty!32500 lt!2142572)))))

(declare-fun bs!1211274 () Bool)

(assert (= bs!1211274 d!1681269))

(declare-fun m!6263386 () Bool)

(assert (=> bs!1211274 m!6263386))

(assert (=> d!1681101 d!1681269))

(declare-fun b!5214546 () Bool)

(declare-fun e!3246100 () Bool)

(declare-fun lt!2142652 () Bool)

(declare-fun call!367460 () Bool)

(assert (=> b!5214546 (= e!3246100 (= lt!2142652 call!367460))))

(declare-fun b!5214547 () Bool)

(declare-fun e!3246097 () Bool)

(assert (=> b!5214547 (= e!3246097 (= (head!11175 Nil!60582) (c!899215 (regOne!30116 r!7292))))))

(declare-fun b!5214548 () Bool)

(declare-fun res!2214602 () Bool)

(assert (=> b!5214548 (=> (not res!2214602) (not e!3246097))))

(assert (=> b!5214548 (= res!2214602 (isEmpty!32499 (tail!10272 Nil!60582)))))

(declare-fun b!5214549 () Bool)

(declare-fun res!2214605 () Bool)

(declare-fun e!3246096 () Bool)

(assert (=> b!5214549 (=> res!2214605 e!3246096)))

(assert (=> b!5214549 (= res!2214605 (not (is-ElementMatch!14802 (regOne!30116 r!7292))))))

(declare-fun e!3246095 () Bool)

(assert (=> b!5214549 (= e!3246095 e!3246096)))

(declare-fun b!5214550 () Bool)

(declare-fun e!3246099 () Bool)

(assert (=> b!5214550 (= e!3246099 (matchR!6987 (derivativeStep!4050 (regOne!30116 r!7292) (head!11175 Nil!60582)) (tail!10272 Nil!60582)))))

(declare-fun d!1681271 () Bool)

(assert (=> d!1681271 e!3246100))

(declare-fun c!899440 () Bool)

(assert (=> d!1681271 (= c!899440 (is-EmptyExpr!14802 (regOne!30116 r!7292)))))

(assert (=> d!1681271 (= lt!2142652 e!3246099)))

(declare-fun c!899441 () Bool)

(assert (=> d!1681271 (= c!899441 (isEmpty!32499 Nil!60582))))

(assert (=> d!1681271 (validRegex!6538 (regOne!30116 r!7292))))

(assert (=> d!1681271 (= (matchR!6987 (regOne!30116 r!7292) Nil!60582) lt!2142652)))

(declare-fun b!5214551 () Bool)

(declare-fun e!3246094 () Bool)

(declare-fun e!3246098 () Bool)

(assert (=> b!5214551 (= e!3246094 e!3246098)))

(declare-fun res!2214603 () Bool)

(assert (=> b!5214551 (=> res!2214603 e!3246098)))

(assert (=> b!5214551 (= res!2214603 call!367460)))

(declare-fun b!5214552 () Bool)

(assert (=> b!5214552 (= e!3246098 (not (= (head!11175 Nil!60582) (c!899215 (regOne!30116 r!7292)))))))

(declare-fun b!5214553 () Bool)

(declare-fun res!2214600 () Bool)

(assert (=> b!5214553 (=> res!2214600 e!3246098)))

(assert (=> b!5214553 (= res!2214600 (not (isEmpty!32499 (tail!10272 Nil!60582))))))

(declare-fun b!5214554 () Bool)

(declare-fun res!2214604 () Bool)

(assert (=> b!5214554 (=> (not res!2214604) (not e!3246097))))

(assert (=> b!5214554 (= res!2214604 (not call!367460))))

(declare-fun bm!367455 () Bool)

(assert (=> bm!367455 (= call!367460 (isEmpty!32499 Nil!60582))))

(declare-fun b!5214555 () Bool)

(assert (=> b!5214555 (= e!3246100 e!3246095)))

(declare-fun c!899439 () Bool)

(assert (=> b!5214555 (= c!899439 (is-EmptyLang!14802 (regOne!30116 r!7292)))))

(declare-fun b!5214556 () Bool)

(declare-fun res!2214598 () Bool)

(assert (=> b!5214556 (=> res!2214598 e!3246096)))

(assert (=> b!5214556 (= res!2214598 e!3246097)))

(declare-fun res!2214601 () Bool)

(assert (=> b!5214556 (=> (not res!2214601) (not e!3246097))))

(assert (=> b!5214556 (= res!2214601 lt!2142652)))

(declare-fun b!5214557 () Bool)

(assert (=> b!5214557 (= e!3246099 (nullable!4971 (regOne!30116 r!7292)))))

(declare-fun b!5214558 () Bool)

(assert (=> b!5214558 (= e!3246096 e!3246094)))

(declare-fun res!2214599 () Bool)

(assert (=> b!5214558 (=> (not res!2214599) (not e!3246094))))

(assert (=> b!5214558 (= res!2214599 (not lt!2142652))))

(declare-fun b!5214559 () Bool)

(assert (=> b!5214559 (= e!3246095 (not lt!2142652))))

(assert (= (and d!1681271 c!899441) b!5214557))

(assert (= (and d!1681271 (not c!899441)) b!5214550))

(assert (= (and d!1681271 c!899440) b!5214546))

(assert (= (and d!1681271 (not c!899440)) b!5214555))

(assert (= (and b!5214555 c!899439) b!5214559))

(assert (= (and b!5214555 (not c!899439)) b!5214549))

(assert (= (and b!5214549 (not res!2214605)) b!5214556))

(assert (= (and b!5214556 res!2214601) b!5214554))

(assert (= (and b!5214554 res!2214604) b!5214548))

(assert (= (and b!5214548 res!2214602) b!5214547))

(assert (= (and b!5214556 (not res!2214598)) b!5214558))

(assert (= (and b!5214558 res!2214599) b!5214551))

(assert (= (and b!5214551 (not res!2214603)) b!5214553))

(assert (= (and b!5214553 (not res!2214600)) b!5214552))

(assert (= (or b!5214546 b!5214551 b!5214554) bm!367455))

(declare-fun m!6263388 () Bool)

(assert (=> b!5214548 m!6263388))

(assert (=> b!5214548 m!6263388))

(declare-fun m!6263390 () Bool)

(assert (=> b!5214548 m!6263390))

(declare-fun m!6263392 () Bool)

(assert (=> b!5214552 m!6263392))

(declare-fun m!6263394 () Bool)

(assert (=> d!1681271 m!6263394))

(assert (=> d!1681271 m!6262934))

(assert (=> b!5214553 m!6263388))

(assert (=> b!5214553 m!6263388))

(assert (=> b!5214553 m!6263390))

(declare-fun m!6263396 () Bool)

(assert (=> b!5214557 m!6263396))

(assert (=> b!5214550 m!6263392))

(assert (=> b!5214550 m!6263392))

(declare-fun m!6263398 () Bool)

(assert (=> b!5214550 m!6263398))

(assert (=> b!5214550 m!6263388))

(assert (=> b!5214550 m!6263398))

(assert (=> b!5214550 m!6263388))

(declare-fun m!6263400 () Bool)

(assert (=> b!5214550 m!6263400))

(assert (=> bm!367455 m!6263394))

(assert (=> b!5214547 m!6263392))

(assert (=> d!1681101 d!1681271))

(declare-fun bm!367456 () Bool)

(declare-fun call!367461 () Bool)

(declare-fun call!367463 () Bool)

(assert (=> bm!367456 (= call!367461 call!367463)))

(declare-fun b!5214560 () Bool)

(declare-fun e!3246106 () Bool)

(declare-fun e!3246103 () Bool)

(assert (=> b!5214560 (= e!3246106 e!3246103)))

(declare-fun c!899442 () Bool)

(assert (=> b!5214560 (= c!899442 (is-Star!14802 (regOne!30116 r!7292)))))

(declare-fun bm!367457 () Bool)

(declare-fun call!367462 () Bool)

(declare-fun c!899443 () Bool)

(assert (=> bm!367457 (= call!367462 (validRegex!6538 (ite c!899443 (regTwo!30117 (regOne!30116 r!7292)) (regTwo!30116 (regOne!30116 r!7292)))))))

(declare-fun b!5214561 () Bool)

(declare-fun res!2214608 () Bool)

(declare-fun e!3246101 () Bool)

(assert (=> b!5214561 (=> res!2214608 e!3246101)))

(assert (=> b!5214561 (= res!2214608 (not (is-Concat!23647 (regOne!30116 r!7292))))))

(declare-fun e!3246105 () Bool)

(assert (=> b!5214561 (= e!3246105 e!3246101)))

(declare-fun b!5214562 () Bool)

(declare-fun e!3246102 () Bool)

(assert (=> b!5214562 (= e!3246101 e!3246102)))

(declare-fun res!2214609 () Bool)

(assert (=> b!5214562 (=> (not res!2214609) (not e!3246102))))

(assert (=> b!5214562 (= res!2214609 call!367461)))

(declare-fun b!5214563 () Bool)

(assert (=> b!5214563 (= e!3246103 e!3246105)))

(assert (=> b!5214563 (= c!899443 (is-Union!14802 (regOne!30116 r!7292)))))

(declare-fun d!1681273 () Bool)

(declare-fun res!2214606 () Bool)

(assert (=> d!1681273 (=> res!2214606 e!3246106)))

(assert (=> d!1681273 (= res!2214606 (is-ElementMatch!14802 (regOne!30116 r!7292)))))

(assert (=> d!1681273 (= (validRegex!6538 (regOne!30116 r!7292)) e!3246106)))

(declare-fun b!5214564 () Bool)

(declare-fun res!2214610 () Bool)

(declare-fun e!3246104 () Bool)

(assert (=> b!5214564 (=> (not res!2214610) (not e!3246104))))

(assert (=> b!5214564 (= res!2214610 call!367461)))

(assert (=> b!5214564 (= e!3246105 e!3246104)))

(declare-fun b!5214565 () Bool)

(declare-fun e!3246107 () Bool)

(assert (=> b!5214565 (= e!3246107 call!367463)))

(declare-fun b!5214566 () Bool)

(assert (=> b!5214566 (= e!3246102 call!367462)))

(declare-fun bm!367458 () Bool)

(assert (=> bm!367458 (= call!367463 (validRegex!6538 (ite c!899442 (reg!15131 (regOne!30116 r!7292)) (ite c!899443 (regOne!30117 (regOne!30116 r!7292)) (regOne!30116 (regOne!30116 r!7292))))))))

(declare-fun b!5214567 () Bool)

(assert (=> b!5214567 (= e!3246104 call!367462)))

(declare-fun b!5214568 () Bool)

(assert (=> b!5214568 (= e!3246103 e!3246107)))

(declare-fun res!2214607 () Bool)

(assert (=> b!5214568 (= res!2214607 (not (nullable!4971 (reg!15131 (regOne!30116 r!7292)))))))

(assert (=> b!5214568 (=> (not res!2214607) (not e!3246107))))

(assert (= (and d!1681273 (not res!2214606)) b!5214560))

(assert (= (and b!5214560 c!899442) b!5214568))

(assert (= (and b!5214560 (not c!899442)) b!5214563))

(assert (= (and b!5214568 res!2214607) b!5214565))

(assert (= (and b!5214563 c!899443) b!5214564))

(assert (= (and b!5214563 (not c!899443)) b!5214561))

(assert (= (and b!5214564 res!2214610) b!5214567))

(assert (= (and b!5214561 (not res!2214608)) b!5214562))

(assert (= (and b!5214562 res!2214609) b!5214566))

(assert (= (or b!5214567 b!5214566) bm!367457))

(assert (= (or b!5214564 b!5214562) bm!367456))

(assert (= (or b!5214565 bm!367456) bm!367458))

(declare-fun m!6263402 () Bool)

(assert (=> bm!367457 m!6263402))

(declare-fun m!6263404 () Bool)

(assert (=> bm!367458 m!6263404))

(declare-fun m!6263406 () Bool)

(assert (=> b!5214568 m!6263406))

(assert (=> d!1681101 d!1681273))

(declare-fun bm!367459 () Bool)

(declare-fun call!367464 () Bool)

(declare-fun call!367466 () Bool)

(assert (=> bm!367459 (= call!367464 call!367466)))

(declare-fun b!5214569 () Bool)

(declare-fun e!3246113 () Bool)

(declare-fun e!3246110 () Bool)

(assert (=> b!5214569 (= e!3246113 e!3246110)))

(declare-fun c!899444 () Bool)

(assert (=> b!5214569 (= c!899444 (is-Star!14802 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))))))

(declare-fun bm!367460 () Bool)

(declare-fun c!899445 () Bool)

(declare-fun call!367465 () Bool)

(assert (=> bm!367460 (= call!367465 (validRegex!6538 (ite c!899445 (regTwo!30117 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))) (regTwo!30116 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))))))))

(declare-fun b!5214570 () Bool)

(declare-fun res!2214613 () Bool)

(declare-fun e!3246108 () Bool)

(assert (=> b!5214570 (=> res!2214613 e!3246108)))

(assert (=> b!5214570 (= res!2214613 (not (is-Concat!23647 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292))))))))

(declare-fun e!3246112 () Bool)

(assert (=> b!5214570 (= e!3246112 e!3246108)))

(declare-fun b!5214571 () Bool)

(declare-fun e!3246109 () Bool)

(assert (=> b!5214571 (= e!3246108 e!3246109)))

(declare-fun res!2214614 () Bool)

(assert (=> b!5214571 (=> (not res!2214614) (not e!3246109))))

(assert (=> b!5214571 (= res!2214614 call!367464)))

(declare-fun b!5214572 () Bool)

(assert (=> b!5214572 (= e!3246110 e!3246112)))

(assert (=> b!5214572 (= c!899445 (is-Union!14802 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))))))

(declare-fun d!1681275 () Bool)

(declare-fun res!2214611 () Bool)

(assert (=> d!1681275 (=> res!2214611 e!3246113)))

(assert (=> d!1681275 (= res!2214611 (is-ElementMatch!14802 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))))))

(assert (=> d!1681275 (= (validRegex!6538 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))) e!3246113)))

(declare-fun b!5214573 () Bool)

(declare-fun res!2214615 () Bool)

(declare-fun e!3246111 () Bool)

(assert (=> b!5214573 (=> (not res!2214615) (not e!3246111))))

(assert (=> b!5214573 (= res!2214615 call!367464)))

(assert (=> b!5214573 (= e!3246112 e!3246111)))

(declare-fun b!5214574 () Bool)

(declare-fun e!3246114 () Bool)

(assert (=> b!5214574 (= e!3246114 call!367466)))

(declare-fun b!5214575 () Bool)

(assert (=> b!5214575 (= e!3246109 call!367465)))

(declare-fun bm!367461 () Bool)

(assert (=> bm!367461 (= call!367466 (validRegex!6538 (ite c!899444 (reg!15131 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))) (ite c!899445 (regOne!30117 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))) (regOne!30116 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292))))))))))

(declare-fun b!5214576 () Bool)

(assert (=> b!5214576 (= e!3246111 call!367465)))

(declare-fun b!5214577 () Bool)

(assert (=> b!5214577 (= e!3246110 e!3246114)))

(declare-fun res!2214612 () Bool)

(assert (=> b!5214577 (= res!2214612 (not (nullable!4971 (reg!15131 (ite c!899294 (reg!15131 r!7292) (ite c!899295 (regOne!30117 r!7292) (regOne!30116 r!7292)))))))))

(assert (=> b!5214577 (=> (not res!2214612) (not e!3246114))))

(assert (= (and d!1681275 (not res!2214611)) b!5214569))

(assert (= (and b!5214569 c!899444) b!5214577))

(assert (= (and b!5214569 (not c!899444)) b!5214572))

(assert (= (and b!5214577 res!2214612) b!5214574))

(assert (= (and b!5214572 c!899445) b!5214573))

(assert (= (and b!5214572 (not c!899445)) b!5214570))

(assert (= (and b!5214573 res!2214615) b!5214576))

(assert (= (and b!5214570 (not res!2214613)) b!5214571))

(assert (= (and b!5214571 res!2214614) b!5214575))

(assert (= (or b!5214576 b!5214575) bm!367460))

(assert (= (or b!5214573 b!5214571) bm!367459))

(assert (= (or b!5214574 bm!367459) bm!367461))

(declare-fun m!6263408 () Bool)

(assert (=> bm!367460 m!6263408))

(declare-fun m!6263410 () Bool)

(assert (=> bm!367461 m!6263410))

(declare-fun m!6263412 () Bool)

(assert (=> b!5214577 m!6263412))

(assert (=> bm!367393 d!1681275))

(declare-fun bm!367462 () Bool)

(declare-fun call!367467 () Bool)

(declare-fun call!367469 () Bool)

(assert (=> bm!367462 (= call!367467 call!367469)))

(declare-fun b!5214578 () Bool)

(declare-fun e!3246120 () Bool)

(declare-fun e!3246117 () Bool)

(assert (=> b!5214578 (= e!3246120 e!3246117)))

(declare-fun c!899446 () Bool)

(assert (=> b!5214578 (= c!899446 (is-Star!14802 lt!2142613))))

(declare-fun bm!367463 () Bool)

(declare-fun call!367468 () Bool)

(declare-fun c!899447 () Bool)

(assert (=> bm!367463 (= call!367468 (validRegex!6538 (ite c!899447 (regTwo!30117 lt!2142613) (regTwo!30116 lt!2142613))))))

(declare-fun b!5214579 () Bool)

(declare-fun res!2214618 () Bool)

(declare-fun e!3246115 () Bool)

(assert (=> b!5214579 (=> res!2214618 e!3246115)))

(assert (=> b!5214579 (= res!2214618 (not (is-Concat!23647 lt!2142613)))))

(declare-fun e!3246119 () Bool)

(assert (=> b!5214579 (= e!3246119 e!3246115)))

(declare-fun b!5214580 () Bool)

(declare-fun e!3246116 () Bool)

(assert (=> b!5214580 (= e!3246115 e!3246116)))

(declare-fun res!2214619 () Bool)

(assert (=> b!5214580 (=> (not res!2214619) (not e!3246116))))

(assert (=> b!5214580 (= res!2214619 call!367467)))

(declare-fun b!5214581 () Bool)

(assert (=> b!5214581 (= e!3246117 e!3246119)))

(assert (=> b!5214581 (= c!899447 (is-Union!14802 lt!2142613))))

(declare-fun d!1681277 () Bool)

(declare-fun res!2214616 () Bool)

(assert (=> d!1681277 (=> res!2214616 e!3246120)))

(assert (=> d!1681277 (= res!2214616 (is-ElementMatch!14802 lt!2142613))))

(assert (=> d!1681277 (= (validRegex!6538 lt!2142613) e!3246120)))

(declare-fun b!5214582 () Bool)

(declare-fun res!2214620 () Bool)

(declare-fun e!3246118 () Bool)

(assert (=> b!5214582 (=> (not res!2214620) (not e!3246118))))

(assert (=> b!5214582 (= res!2214620 call!367467)))

(assert (=> b!5214582 (= e!3246119 e!3246118)))

(declare-fun b!5214583 () Bool)

(declare-fun e!3246121 () Bool)

(assert (=> b!5214583 (= e!3246121 call!367469)))

(declare-fun b!5214584 () Bool)

(assert (=> b!5214584 (= e!3246116 call!367468)))

(declare-fun bm!367464 () Bool)

(assert (=> bm!367464 (= call!367469 (validRegex!6538 (ite c!899446 (reg!15131 lt!2142613) (ite c!899447 (regOne!30117 lt!2142613) (regOne!30116 lt!2142613)))))))

(declare-fun b!5214585 () Bool)

(assert (=> b!5214585 (= e!3246118 call!367468)))

(declare-fun b!5214586 () Bool)

(assert (=> b!5214586 (= e!3246117 e!3246121)))

(declare-fun res!2214617 () Bool)

(assert (=> b!5214586 (= res!2214617 (not (nullable!4971 (reg!15131 lt!2142613))))))

(assert (=> b!5214586 (=> (not res!2214617) (not e!3246121))))

(assert (= (and d!1681277 (not res!2214616)) b!5214578))

(assert (= (and b!5214578 c!899446) b!5214586))

(assert (= (and b!5214578 (not c!899446)) b!5214581))

(assert (= (and b!5214586 res!2214617) b!5214583))

(assert (= (and b!5214581 c!899447) b!5214582))

(assert (= (and b!5214581 (not c!899447)) b!5214579))

(assert (= (and b!5214582 res!2214620) b!5214585))

(assert (= (and b!5214579 (not res!2214618)) b!5214580))

(assert (= (and b!5214580 res!2214619) b!5214584))

(assert (= (or b!5214585 b!5214584) bm!367463))

(assert (= (or b!5214582 b!5214580) bm!367462))

(assert (= (or b!5214583 bm!367462) bm!367464))

(declare-fun m!6263414 () Bool)

(assert (=> bm!367463 m!6263414))

(declare-fun m!6263416 () Bool)

(assert (=> bm!367464 m!6263416))

(declare-fun m!6263418 () Bool)

(assert (=> b!5214586 m!6263418))

(assert (=> d!1681177 d!1681277))

(declare-fun d!1681279 () Bool)

(declare-fun res!2214625 () Bool)

(declare-fun e!3246126 () Bool)

(assert (=> d!1681279 (=> res!2214625 e!3246126)))

(assert (=> d!1681279 (= res!2214625 (is-Nil!60581 (exprs!4686 (h!67031 zl!343))))))

(assert (=> d!1681279 (= (forall!14236 (exprs!4686 (h!67031 zl!343)) lambda!261523) e!3246126)))

(declare-fun b!5214591 () Bool)

(declare-fun e!3246127 () Bool)

(assert (=> b!5214591 (= e!3246126 e!3246127)))

(declare-fun res!2214626 () Bool)

(assert (=> b!5214591 (=> (not res!2214626) (not e!3246127))))

(declare-fun dynLambda!23936 (Int Regex!14802) Bool)

(assert (=> b!5214591 (= res!2214626 (dynLambda!23936 lambda!261523 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214592 () Bool)

(assert (=> b!5214592 (= e!3246127 (forall!14236 (t!373870 (exprs!4686 (h!67031 zl!343))) lambda!261523))))

(assert (= (and d!1681279 (not res!2214625)) b!5214591))

(assert (= (and b!5214591 res!2214626) b!5214592))

(declare-fun b_lambda!201669 () Bool)

(assert (=> (not b_lambda!201669) (not b!5214591)))

(declare-fun m!6263420 () Bool)

(assert (=> b!5214591 m!6263420))

(declare-fun m!6263422 () Bool)

(assert (=> b!5214592 m!6263422))

(assert (=> d!1681177 d!1681279))

(declare-fun d!1681281 () Bool)

(declare-fun c!899448 () Bool)

(assert (=> d!1681281 (= c!899448 (isEmpty!32499 (t!373871 s!2326)))))

(declare-fun e!3246128 () Bool)

(assert (=> d!1681281 (= (matchZipper!1046 (set.union lt!2142488 lt!2142497) (t!373871 s!2326)) e!3246128)))

(declare-fun b!5214593 () Bool)

(assert (=> b!5214593 (= e!3246128 (nullableZipper!1228 (set.union lt!2142488 lt!2142497)))))

(declare-fun b!5214594 () Bool)

(assert (=> b!5214594 (= e!3246128 (matchZipper!1046 (derivationStepZipper!1072 (set.union lt!2142488 lt!2142497) (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))))))

(assert (= (and d!1681281 c!899448) b!5214593))

(assert (= (and d!1681281 (not c!899448)) b!5214594))

(assert (=> d!1681281 m!6262894))

(declare-fun m!6263424 () Bool)

(assert (=> b!5214593 m!6263424))

(assert (=> b!5214594 m!6262898))

(assert (=> b!5214594 m!6262898))

(declare-fun m!6263426 () Bool)

(assert (=> b!5214594 m!6263426))

(assert (=> b!5214594 m!6262902))

(assert (=> b!5214594 m!6263426))

(assert (=> b!5214594 m!6262902))

(declare-fun m!6263428 () Bool)

(assert (=> b!5214594 m!6263428))

(assert (=> d!1681153 d!1681281))

(assert (=> d!1681153 d!1681151))

(declare-fun d!1681283 () Bool)

(declare-fun e!3246131 () Bool)

(assert (=> d!1681283 (= (matchZipper!1046 (set.union lt!2142488 lt!2142497) (t!373871 s!2326)) e!3246131)))

(declare-fun res!2214629 () Bool)

(assert (=> d!1681283 (=> res!2214629 e!3246131)))

(assert (=> d!1681283 (= res!2214629 (matchZipper!1046 lt!2142488 (t!373871 s!2326)))))

(assert (=> d!1681283 true))

(declare-fun _$48!807 () Unit!152474)

(assert (=> d!1681283 (= (choose!38765 lt!2142488 lt!2142497 (t!373871 s!2326)) _$48!807)))

(declare-fun b!5214597 () Bool)

(assert (=> b!5214597 (= e!3246131 (matchZipper!1046 lt!2142497 (t!373871 s!2326)))))

(assert (= (and d!1681283 (not res!2214629)) b!5214597))

(assert (=> d!1681283 m!6263070))

(assert (=> d!1681283 m!6262804))

(assert (=> b!5214597 m!6262784))

(assert (=> d!1681153 d!1681283))

(declare-fun bm!367465 () Bool)

(declare-fun call!367470 () Bool)

(declare-fun call!367472 () Bool)

(assert (=> bm!367465 (= call!367470 call!367472)))

(declare-fun b!5214598 () Bool)

(declare-fun e!3246137 () Bool)

(declare-fun e!3246134 () Bool)

(assert (=> b!5214598 (= e!3246137 e!3246134)))

(declare-fun c!899449 () Bool)

(assert (=> b!5214598 (= c!899449 (is-Star!14802 lt!2142616))))

(declare-fun bm!367466 () Bool)

(declare-fun call!367471 () Bool)

(declare-fun c!899450 () Bool)

(assert (=> bm!367466 (= call!367471 (validRegex!6538 (ite c!899450 (regTwo!30117 lt!2142616) (regTwo!30116 lt!2142616))))))

(declare-fun b!5214599 () Bool)

(declare-fun res!2214632 () Bool)

(declare-fun e!3246132 () Bool)

(assert (=> b!5214599 (=> res!2214632 e!3246132)))

(assert (=> b!5214599 (= res!2214632 (not (is-Concat!23647 lt!2142616)))))

(declare-fun e!3246136 () Bool)

(assert (=> b!5214599 (= e!3246136 e!3246132)))

(declare-fun b!5214600 () Bool)

(declare-fun e!3246133 () Bool)

(assert (=> b!5214600 (= e!3246132 e!3246133)))

(declare-fun res!2214633 () Bool)

(assert (=> b!5214600 (=> (not res!2214633) (not e!3246133))))

(assert (=> b!5214600 (= res!2214633 call!367470)))

(declare-fun b!5214601 () Bool)

(assert (=> b!5214601 (= e!3246134 e!3246136)))

(assert (=> b!5214601 (= c!899450 (is-Union!14802 lt!2142616))))

(declare-fun d!1681285 () Bool)

(declare-fun res!2214630 () Bool)

(assert (=> d!1681285 (=> res!2214630 e!3246137)))

(assert (=> d!1681285 (= res!2214630 (is-ElementMatch!14802 lt!2142616))))

(assert (=> d!1681285 (= (validRegex!6538 lt!2142616) e!3246137)))

(declare-fun b!5214602 () Bool)

(declare-fun res!2214634 () Bool)

(declare-fun e!3246135 () Bool)

(assert (=> b!5214602 (=> (not res!2214634) (not e!3246135))))

(assert (=> b!5214602 (= res!2214634 call!367470)))

(assert (=> b!5214602 (= e!3246136 e!3246135)))

(declare-fun b!5214603 () Bool)

(declare-fun e!3246138 () Bool)

(assert (=> b!5214603 (= e!3246138 call!367472)))

(declare-fun b!5214604 () Bool)

(assert (=> b!5214604 (= e!3246133 call!367471)))

(declare-fun bm!367467 () Bool)

(assert (=> bm!367467 (= call!367472 (validRegex!6538 (ite c!899449 (reg!15131 lt!2142616) (ite c!899450 (regOne!30117 lt!2142616) (regOne!30116 lt!2142616)))))))

(declare-fun b!5214605 () Bool)

(assert (=> b!5214605 (= e!3246135 call!367471)))

(declare-fun b!5214606 () Bool)

(assert (=> b!5214606 (= e!3246134 e!3246138)))

(declare-fun res!2214631 () Bool)

(assert (=> b!5214606 (= res!2214631 (not (nullable!4971 (reg!15131 lt!2142616))))))

(assert (=> b!5214606 (=> (not res!2214631) (not e!3246138))))

(assert (= (and d!1681285 (not res!2214630)) b!5214598))

(assert (= (and b!5214598 c!899449) b!5214606))

(assert (= (and b!5214598 (not c!899449)) b!5214601))

(assert (= (and b!5214606 res!2214631) b!5214603))

(assert (= (and b!5214601 c!899450) b!5214602))

(assert (= (and b!5214601 (not c!899450)) b!5214599))

(assert (= (and b!5214602 res!2214634) b!5214605))

(assert (= (and b!5214599 (not res!2214632)) b!5214600))

(assert (= (and b!5214600 res!2214633) b!5214604))

(assert (= (or b!5214605 b!5214604) bm!367466))

(assert (= (or b!5214602 b!5214600) bm!367465))

(assert (= (or b!5214603 bm!367465) bm!367467))

(declare-fun m!6263430 () Bool)

(assert (=> bm!367466 m!6263430))

(declare-fun m!6263432 () Bool)

(assert (=> bm!367467 m!6263432))

(declare-fun m!6263434 () Bool)

(assert (=> b!5214606 m!6263434))

(assert (=> d!1681185 d!1681285))

(assert (=> d!1681185 d!1681171))

(assert (=> d!1681185 d!1681173))

(declare-fun d!1681287 () Bool)

(assert (=> d!1681287 (= (isEmpty!32499 s!2326) (is-Nil!60582 s!2326))))

(assert (=> bm!367373 d!1681287))

(declare-fun d!1681289 () Bool)

(declare-fun res!2214639 () Bool)

(declare-fun e!3246143 () Bool)

(assert (=> d!1681289 (=> res!2214639 e!3246143)))

(assert (=> d!1681289 (= res!2214639 (is-Nil!60583 lt!2142595))))

(assert (=> d!1681289 (= (noDuplicate!1184 lt!2142595) e!3246143)))

(declare-fun b!5214611 () Bool)

(declare-fun e!3246144 () Bool)

(assert (=> b!5214611 (= e!3246143 e!3246144)))

(declare-fun res!2214640 () Bool)

(assert (=> b!5214611 (=> (not res!2214640) (not e!3246144))))

(declare-fun contains!19667 (List!60707 Context!8372) Bool)

(assert (=> b!5214611 (= res!2214640 (not (contains!19667 (t!373872 lt!2142595) (h!67031 lt!2142595))))))

(declare-fun b!5214612 () Bool)

(assert (=> b!5214612 (= e!3246144 (noDuplicate!1184 (t!373872 lt!2142595)))))

(assert (= (and d!1681289 (not res!2214639)) b!5214611))

(assert (= (and b!5214611 res!2214640) b!5214612))

(declare-fun m!6263436 () Bool)

(assert (=> b!5214611 m!6263436))

(declare-fun m!6263438 () Bool)

(assert (=> b!5214612 m!6263438))

(assert (=> d!1681169 d!1681289))

(declare-fun d!1681291 () Bool)

(declare-fun e!3246153 () Bool)

(assert (=> d!1681291 e!3246153))

(declare-fun res!2214645 () Bool)

(assert (=> d!1681291 (=> (not res!2214645) (not e!3246153))))

(declare-fun res!2214646 () List!60707)

(assert (=> d!1681291 (= res!2214645 (noDuplicate!1184 res!2214646))))

(declare-fun e!3246152 () Bool)

(assert (=> d!1681291 e!3246152))

(assert (=> d!1681291 (= (choose!38766 z!1189) res!2214646)))

(declare-fun b!5214620 () Bool)

(declare-fun e!3246151 () Bool)

(declare-fun tp!1462187 () Bool)

(assert (=> b!5214620 (= e!3246151 tp!1462187)))

(declare-fun b!5214619 () Bool)

(declare-fun tp!1462186 () Bool)

(assert (=> b!5214619 (= e!3246152 (and (inv!80253 (h!67031 res!2214646)) e!3246151 tp!1462186))))

(declare-fun b!5214621 () Bool)

(assert (=> b!5214621 (= e!3246153 (= (content!10734 res!2214646) z!1189))))

(assert (= b!5214619 b!5214620))

(assert (= (and d!1681291 (is-Cons!60583 res!2214646)) b!5214619))

(assert (= (and d!1681291 res!2214645) b!5214621))

(declare-fun m!6263440 () Bool)

(assert (=> d!1681291 m!6263440))

(declare-fun m!6263442 () Bool)

(assert (=> b!5214619 m!6263442))

(declare-fun m!6263444 () Bool)

(assert (=> b!5214621 m!6263444))

(assert (=> d!1681169 d!1681291))

(declare-fun d!1681293 () Bool)

(assert (=> d!1681293 (= (isEmptyLang!773 lt!2142600) (is-EmptyLang!14802 lt!2142600))))

(assert (=> b!5214070 d!1681293))

(declare-fun d!1681295 () Bool)

(assert (=> d!1681295 true))

(declare-fun setRes!33141 () Bool)

(assert (=> d!1681295 setRes!33141))

(declare-fun condSetEmpty!33141 () Bool)

(declare-fun res!2214649 () (Set Context!8372))

(assert (=> d!1681295 (= condSetEmpty!33141 (= res!2214649 (as set.empty (Set Context!8372))))))

(assert (=> d!1681295 (= (choose!38763 z!1189 lambda!261482) res!2214649)))

(declare-fun setIsEmpty!33141 () Bool)

(assert (=> setIsEmpty!33141 setRes!33141))

(declare-fun tp!1462192 () Bool)

(declare-fun setNonEmpty!33141 () Bool)

(declare-fun e!3246156 () Bool)

(declare-fun setElem!33141 () Context!8372)

(assert (=> setNonEmpty!33141 (= setRes!33141 (and tp!1462192 (inv!80253 setElem!33141) e!3246156))))

(declare-fun setRest!33141 () (Set Context!8372))

(assert (=> setNonEmpty!33141 (= res!2214649 (set.union (set.insert setElem!33141 (as set.empty (Set Context!8372))) setRest!33141))))

(declare-fun b!5214624 () Bool)

(declare-fun tp!1462193 () Bool)

(assert (=> b!5214624 (= e!3246156 tp!1462193)))

(assert (= (and d!1681295 condSetEmpty!33141) setIsEmpty!33141))

(assert (= (and d!1681295 (not condSetEmpty!33141)) setNonEmpty!33141))

(assert (= setNonEmpty!33141 b!5214624))

(declare-fun m!6263446 () Bool)

(assert (=> setNonEmpty!33141 m!6263446))

(assert (=> d!1681123 d!1681295))

(declare-fun d!1681297 () Bool)

(declare-fun lambda!261554 () Int)

(declare-fun exists!1965 ((Set Context!8372) Int) Bool)

(assert (=> d!1681297 (= (nullableZipper!1228 lt!2142487) (exists!1965 lt!2142487 lambda!261554))))

(declare-fun bs!1211275 () Bool)

(assert (= bs!1211275 d!1681297))

(declare-fun m!6263448 () Bool)

(assert (=> bs!1211275 m!6263448))

(assert (=> b!5214039 d!1681297))

(declare-fun b!5214625 () Bool)

(declare-fun e!3246163 () Bool)

(declare-fun lt!2142653 () Bool)

(declare-fun call!367473 () Bool)

(assert (=> b!5214625 (= e!3246163 (= lt!2142653 call!367473))))

(declare-fun b!5214626 () Bool)

(declare-fun e!3246160 () Bool)

(assert (=> b!5214626 (= e!3246160 (= (head!11175 (tail!10272 s!2326)) (c!899215 (derivativeStep!4050 r!7292 (head!11175 s!2326)))))))

(declare-fun b!5214627 () Bool)

(declare-fun res!2214654 () Bool)

(assert (=> b!5214627 (=> (not res!2214654) (not e!3246160))))

(assert (=> b!5214627 (= res!2214654 (isEmpty!32499 (tail!10272 (tail!10272 s!2326))))))

(declare-fun b!5214628 () Bool)

(declare-fun res!2214657 () Bool)

(declare-fun e!3246159 () Bool)

(assert (=> b!5214628 (=> res!2214657 e!3246159)))

(assert (=> b!5214628 (= res!2214657 (not (is-ElementMatch!14802 (derivativeStep!4050 r!7292 (head!11175 s!2326)))))))

(declare-fun e!3246158 () Bool)

(assert (=> b!5214628 (= e!3246158 e!3246159)))

(declare-fun b!5214629 () Bool)

(declare-fun e!3246162 () Bool)

(assert (=> b!5214629 (= e!3246162 (matchR!6987 (derivativeStep!4050 (derivativeStep!4050 r!7292 (head!11175 s!2326)) (head!11175 (tail!10272 s!2326))) (tail!10272 (tail!10272 s!2326))))))

(declare-fun d!1681299 () Bool)

(assert (=> d!1681299 e!3246163))

(declare-fun c!899454 () Bool)

(assert (=> d!1681299 (= c!899454 (is-EmptyExpr!14802 (derivativeStep!4050 r!7292 (head!11175 s!2326))))))

(assert (=> d!1681299 (= lt!2142653 e!3246162)))

(declare-fun c!899455 () Bool)

(assert (=> d!1681299 (= c!899455 (isEmpty!32499 (tail!10272 s!2326)))))

(assert (=> d!1681299 (validRegex!6538 (derivativeStep!4050 r!7292 (head!11175 s!2326)))))

(assert (=> d!1681299 (= (matchR!6987 (derivativeStep!4050 r!7292 (head!11175 s!2326)) (tail!10272 s!2326)) lt!2142653)))

(declare-fun b!5214630 () Bool)

(declare-fun e!3246157 () Bool)

(declare-fun e!3246161 () Bool)

(assert (=> b!5214630 (= e!3246157 e!3246161)))

(declare-fun res!2214655 () Bool)

(assert (=> b!5214630 (=> res!2214655 e!3246161)))

(assert (=> b!5214630 (= res!2214655 call!367473)))

(declare-fun b!5214631 () Bool)

(assert (=> b!5214631 (= e!3246161 (not (= (head!11175 (tail!10272 s!2326)) (c!899215 (derivativeStep!4050 r!7292 (head!11175 s!2326))))))))

(declare-fun b!5214632 () Bool)

(declare-fun res!2214652 () Bool)

(assert (=> b!5214632 (=> res!2214652 e!3246161)))

(assert (=> b!5214632 (= res!2214652 (not (isEmpty!32499 (tail!10272 (tail!10272 s!2326)))))))

(declare-fun b!5214633 () Bool)

(declare-fun res!2214656 () Bool)

(assert (=> b!5214633 (=> (not res!2214656) (not e!3246160))))

(assert (=> b!5214633 (= res!2214656 (not call!367473))))

(declare-fun bm!367468 () Bool)

(assert (=> bm!367468 (= call!367473 (isEmpty!32499 (tail!10272 s!2326)))))

(declare-fun b!5214634 () Bool)

(assert (=> b!5214634 (= e!3246163 e!3246158)))

(declare-fun c!899453 () Bool)

(assert (=> b!5214634 (= c!899453 (is-EmptyLang!14802 (derivativeStep!4050 r!7292 (head!11175 s!2326))))))

(declare-fun b!5214635 () Bool)

(declare-fun res!2214650 () Bool)

(assert (=> b!5214635 (=> res!2214650 e!3246159)))

(assert (=> b!5214635 (= res!2214650 e!3246160)))

(declare-fun res!2214653 () Bool)

(assert (=> b!5214635 (=> (not res!2214653) (not e!3246160))))

(assert (=> b!5214635 (= res!2214653 lt!2142653)))

(declare-fun b!5214636 () Bool)

(assert (=> b!5214636 (= e!3246162 (nullable!4971 (derivativeStep!4050 r!7292 (head!11175 s!2326))))))

(declare-fun b!5214637 () Bool)

(assert (=> b!5214637 (= e!3246159 e!3246157)))

(declare-fun res!2214651 () Bool)

(assert (=> b!5214637 (=> (not res!2214651) (not e!3246157))))

(assert (=> b!5214637 (= res!2214651 (not lt!2142653))))

(declare-fun b!5214638 () Bool)

(assert (=> b!5214638 (= e!3246158 (not lt!2142653))))

(assert (= (and d!1681299 c!899455) b!5214636))

(assert (= (and d!1681299 (not c!899455)) b!5214629))

(assert (= (and d!1681299 c!899454) b!5214625))

(assert (= (and d!1681299 (not c!899454)) b!5214634))

(assert (= (and b!5214634 c!899453) b!5214638))

(assert (= (and b!5214634 (not c!899453)) b!5214628))

(assert (= (and b!5214628 (not res!2214657)) b!5214635))

(assert (= (and b!5214635 res!2214653) b!5214633))

(assert (= (and b!5214633 res!2214656) b!5214627))

(assert (= (and b!5214627 res!2214654) b!5214626))

(assert (= (and b!5214635 (not res!2214650)) b!5214637))

(assert (= (and b!5214637 res!2214651) b!5214630))

(assert (= (and b!5214630 (not res!2214655)) b!5214632))

(assert (= (and b!5214632 (not res!2214652)) b!5214631))

(assert (= (or b!5214625 b!5214630 b!5214633) bm!367468))

(assert (=> b!5214627 m!6262972))

(declare-fun m!6263450 () Bool)

(assert (=> b!5214627 m!6263450))

(assert (=> b!5214627 m!6263450))

(declare-fun m!6263452 () Bool)

(assert (=> b!5214627 m!6263452))

(assert (=> b!5214631 m!6262972))

(declare-fun m!6263454 () Bool)

(assert (=> b!5214631 m!6263454))

(assert (=> d!1681299 m!6262972))

(assert (=> d!1681299 m!6262974))

(assert (=> d!1681299 m!6262980))

(declare-fun m!6263456 () Bool)

(assert (=> d!1681299 m!6263456))

(assert (=> b!5214632 m!6262972))

(assert (=> b!5214632 m!6263450))

(assert (=> b!5214632 m!6263450))

(assert (=> b!5214632 m!6263452))

(assert (=> b!5214636 m!6262980))

(declare-fun m!6263458 () Bool)

(assert (=> b!5214636 m!6263458))

(assert (=> b!5214629 m!6262972))

(assert (=> b!5214629 m!6263454))

(assert (=> b!5214629 m!6262980))

(assert (=> b!5214629 m!6263454))

(declare-fun m!6263460 () Bool)

(assert (=> b!5214629 m!6263460))

(assert (=> b!5214629 m!6262972))

(assert (=> b!5214629 m!6263450))

(assert (=> b!5214629 m!6263460))

(assert (=> b!5214629 m!6263450))

(declare-fun m!6263462 () Bool)

(assert (=> b!5214629 m!6263462))

(assert (=> bm!367468 m!6262972))

(assert (=> bm!367468 m!6262974))

(assert (=> b!5214626 m!6262972))

(assert (=> b!5214626 m!6263454))

(assert (=> b!5213934 d!1681299))

(declare-fun bm!367477 () Bool)

(declare-fun call!367484 () Regex!14802)

(declare-fun call!367482 () Regex!14802)

(assert (=> bm!367477 (= call!367484 call!367482)))

(declare-fun b!5214659 () Bool)

(declare-fun e!3246177 () Regex!14802)

(assert (=> b!5214659 (= e!3246177 EmptyLang!14802)))

(declare-fun b!5214660 () Bool)

(declare-fun e!3246178 () Regex!14802)

(assert (=> b!5214660 (= e!3246178 (Concat!23647 call!367484 r!7292))))

(declare-fun b!5214662 () Bool)

(declare-fun e!3246176 () Regex!14802)

(assert (=> b!5214662 (= e!3246177 e!3246176)))

(declare-fun c!899468 () Bool)

(assert (=> b!5214662 (= c!899468 (is-ElementMatch!14802 r!7292))))

(declare-fun b!5214663 () Bool)

(declare-fun c!899467 () Bool)

(assert (=> b!5214663 (= c!899467 (is-Union!14802 r!7292))))

(declare-fun e!3246174 () Regex!14802)

(assert (=> b!5214663 (= e!3246176 e!3246174)))

(declare-fun b!5214664 () Bool)

(assert (=> b!5214664 (= e!3246176 (ite (= (head!11175 s!2326) (c!899215 r!7292)) EmptyExpr!14802 EmptyLang!14802))))

(declare-fun bm!367478 () Bool)

(declare-fun call!367485 () Regex!14802)

(declare-fun call!367483 () Regex!14802)

(assert (=> bm!367478 (= call!367485 call!367483)))

(declare-fun b!5214665 () Bool)

(assert (=> b!5214665 (= e!3246174 (Union!14802 call!367483 call!367482))))

(declare-fun b!5214666 () Bool)

(declare-fun e!3246175 () Regex!14802)

(assert (=> b!5214666 (= e!3246175 (Union!14802 (Concat!23647 call!367484 (regTwo!30116 r!7292)) call!367485))))

(declare-fun b!5214667 () Bool)

(declare-fun c!899466 () Bool)

(assert (=> b!5214667 (= c!899466 (nullable!4971 (regOne!30116 r!7292)))))

(assert (=> b!5214667 (= e!3246178 e!3246175)))

(declare-fun bm!367479 () Bool)

(assert (=> bm!367479 (= call!367483 (derivativeStep!4050 (ite c!899467 (regOne!30117 r!7292) (ite c!899466 (regTwo!30116 r!7292) (regOne!30116 r!7292))) (head!11175 s!2326)))))

(declare-fun b!5214661 () Bool)

(assert (=> b!5214661 (= e!3246174 e!3246178)))

(declare-fun c!899469 () Bool)

(assert (=> b!5214661 (= c!899469 (is-Star!14802 r!7292))))

(declare-fun d!1681301 () Bool)

(declare-fun lt!2142656 () Regex!14802)

(assert (=> d!1681301 (validRegex!6538 lt!2142656)))

(assert (=> d!1681301 (= lt!2142656 e!3246177)))

(declare-fun c!899470 () Bool)

(assert (=> d!1681301 (= c!899470 (or (is-EmptyExpr!14802 r!7292) (is-EmptyLang!14802 r!7292)))))

(assert (=> d!1681301 (validRegex!6538 r!7292)))

(assert (=> d!1681301 (= (derivativeStep!4050 r!7292 (head!11175 s!2326)) lt!2142656)))

(declare-fun b!5214668 () Bool)

(assert (=> b!5214668 (= e!3246175 (Union!14802 (Concat!23647 call!367485 (regTwo!30116 r!7292)) EmptyLang!14802))))

(declare-fun bm!367480 () Bool)

(assert (=> bm!367480 (= call!367482 (derivativeStep!4050 (ite c!899467 (regTwo!30117 r!7292) (ite c!899469 (reg!15131 r!7292) (regOne!30116 r!7292))) (head!11175 s!2326)))))

(assert (= (and d!1681301 c!899470) b!5214659))

(assert (= (and d!1681301 (not c!899470)) b!5214662))

(assert (= (and b!5214662 c!899468) b!5214664))

(assert (= (and b!5214662 (not c!899468)) b!5214663))

(assert (= (and b!5214663 c!899467) b!5214665))

(assert (= (and b!5214663 (not c!899467)) b!5214661))

(assert (= (and b!5214661 c!899469) b!5214660))

(assert (= (and b!5214661 (not c!899469)) b!5214667))

(assert (= (and b!5214667 c!899466) b!5214666))

(assert (= (and b!5214667 (not c!899466)) b!5214668))

(assert (= (or b!5214666 b!5214668) bm!367478))

(assert (= (or b!5214660 b!5214666) bm!367477))

(assert (= (or b!5214665 bm!367477) bm!367480))

(assert (= (or b!5214665 bm!367478) bm!367479))

(assert (=> b!5214667 m!6263396))

(assert (=> bm!367479 m!6262976))

(declare-fun m!6263464 () Bool)

(assert (=> bm!367479 m!6263464))

(declare-fun m!6263466 () Bool)

(assert (=> d!1681301 m!6263466))

(assert (=> d!1681301 m!6262742))

(assert (=> bm!367480 m!6262976))

(declare-fun m!6263468 () Bool)

(assert (=> bm!367480 m!6263468))

(assert (=> b!5213934 d!1681301))

(declare-fun d!1681303 () Bool)

(assert (=> d!1681303 (= (head!11175 s!2326) (h!67030 s!2326))))

(assert (=> b!5213934 d!1681303))

(declare-fun d!1681305 () Bool)

(assert (=> d!1681305 (= (tail!10272 s!2326) (t!373871 s!2326))))

(assert (=> b!5213934 d!1681305))

(declare-fun d!1681307 () Bool)

(assert (=> d!1681307 (= ($colon$colon!1278 (exprs!4686 lt!2142491) (ite (or c!899246 c!899247) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (regOne!30117 (regOne!30116 r!7292)))) (Cons!60581 (ite (or c!899246 c!899247) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (regOne!30117 (regOne!30116 r!7292))) (exprs!4686 lt!2142491)))))

(assert (=> bm!367360 d!1681307))

(declare-fun d!1681309 () Bool)

(assert (=> d!1681309 (= (head!11176 (unfocusZipperList!244 zl!343)) (h!67029 (unfocusZipperList!244 zl!343)))))

(assert (=> b!5214065 d!1681309))

(assert (=> d!1681149 d!1681267))

(assert (=> d!1681093 d!1681267))

(declare-fun b!5214679 () Bool)

(declare-fun res!2214663 () Bool)

(declare-fun e!3246184 () Bool)

(assert (=> b!5214679 (=> (not res!2214663) (not e!3246184))))

(declare-fun lt!2142659 () List!60706)

(declare-fun size!39720 (List!60706) Int)

(assert (=> b!5214679 (= res!2214663 (= (size!39720 lt!2142659) (+ (size!39720 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582))) (size!39720 (t!373871 s!2326)))))))

(declare-fun b!5214680 () Bool)

(assert (=> b!5214680 (= e!3246184 (or (not (= (t!373871 s!2326) Nil!60582)) (= lt!2142659 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)))))))

(declare-fun b!5214678 () Bool)

(declare-fun e!3246183 () List!60706)

(assert (=> b!5214678 (= e!3246183 (Cons!60582 (h!67030 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582))) (++!13208 (t!373871 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582))) (t!373871 s!2326))))))

(declare-fun b!5214677 () Bool)

(assert (=> b!5214677 (= e!3246183 (t!373871 s!2326))))

(declare-fun d!1681311 () Bool)

(assert (=> d!1681311 e!3246184))

(declare-fun res!2214662 () Bool)

(assert (=> d!1681311 (=> (not res!2214662) (not e!3246184))))

(declare-fun content!10736 (List!60706) (Set C!29874))

(assert (=> d!1681311 (= res!2214662 (= (content!10736 lt!2142659) (set.union (content!10736 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582))) (content!10736 (t!373871 s!2326)))))))

(assert (=> d!1681311 (= lt!2142659 e!3246183)))

(declare-fun c!899473 () Bool)

(assert (=> d!1681311 (= c!899473 (is-Nil!60582 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582))))))

(assert (=> d!1681311 (= (++!13208 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (t!373871 s!2326)) lt!2142659)))

(assert (= (and d!1681311 c!899473) b!5214677))

(assert (= (and d!1681311 (not c!899473)) b!5214678))

(assert (= (and d!1681311 res!2214662) b!5214679))

(assert (= (and b!5214679 res!2214663) b!5214680))

(declare-fun m!6263470 () Bool)

(assert (=> b!5214679 m!6263470))

(assert (=> b!5214679 m!6262938))

(declare-fun m!6263472 () Bool)

(assert (=> b!5214679 m!6263472))

(declare-fun m!6263474 () Bool)

(assert (=> b!5214679 m!6263474))

(declare-fun m!6263476 () Bool)

(assert (=> b!5214678 m!6263476))

(declare-fun m!6263478 () Bool)

(assert (=> d!1681311 m!6263478))

(assert (=> d!1681311 m!6262938))

(declare-fun m!6263480 () Bool)

(assert (=> d!1681311 m!6263480))

(declare-fun m!6263482 () Bool)

(assert (=> d!1681311 m!6263482))

(assert (=> b!5213842 d!1681311))

(declare-fun b!5214683 () Bool)

(declare-fun res!2214665 () Bool)

(declare-fun e!3246186 () Bool)

(assert (=> b!5214683 (=> (not res!2214665) (not e!3246186))))

(declare-fun lt!2142660 () List!60706)

(assert (=> b!5214683 (= res!2214665 (= (size!39720 lt!2142660) (+ (size!39720 Nil!60582) (size!39720 (Cons!60582 (h!67030 s!2326) Nil!60582)))))))

(declare-fun b!5214684 () Bool)

(assert (=> b!5214684 (= e!3246186 (or (not (= (Cons!60582 (h!67030 s!2326) Nil!60582) Nil!60582)) (= lt!2142660 Nil!60582)))))

(declare-fun b!5214682 () Bool)

(declare-fun e!3246185 () List!60706)

(assert (=> b!5214682 (= e!3246185 (Cons!60582 (h!67030 Nil!60582) (++!13208 (t!373871 Nil!60582) (Cons!60582 (h!67030 s!2326) Nil!60582))))))

(declare-fun b!5214681 () Bool)

(assert (=> b!5214681 (= e!3246185 (Cons!60582 (h!67030 s!2326) Nil!60582))))

(declare-fun d!1681313 () Bool)

(assert (=> d!1681313 e!3246186))

(declare-fun res!2214664 () Bool)

(assert (=> d!1681313 (=> (not res!2214664) (not e!3246186))))

(assert (=> d!1681313 (= res!2214664 (= (content!10736 lt!2142660) (set.union (content!10736 Nil!60582) (content!10736 (Cons!60582 (h!67030 s!2326) Nil!60582)))))))

(assert (=> d!1681313 (= lt!2142660 e!3246185)))

(declare-fun c!899474 () Bool)

(assert (=> d!1681313 (= c!899474 (is-Nil!60582 Nil!60582))))

(assert (=> d!1681313 (= (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) lt!2142660)))

(assert (= (and d!1681313 c!899474) b!5214681))

(assert (= (and d!1681313 (not c!899474)) b!5214682))

(assert (= (and d!1681313 res!2214664) b!5214683))

(assert (= (and b!5214683 res!2214665) b!5214684))

(declare-fun m!6263484 () Bool)

(assert (=> b!5214683 m!6263484))

(declare-fun m!6263486 () Bool)

(assert (=> b!5214683 m!6263486))

(declare-fun m!6263488 () Bool)

(assert (=> b!5214683 m!6263488))

(declare-fun m!6263490 () Bool)

(assert (=> b!5214682 m!6263490))

(declare-fun m!6263492 () Bool)

(assert (=> d!1681313 m!6263492))

(declare-fun m!6263494 () Bool)

(assert (=> d!1681313 m!6263494))

(declare-fun m!6263496 () Bool)

(assert (=> d!1681313 m!6263496))

(assert (=> b!5213842 d!1681313))

(declare-fun d!1681315 () Bool)

(assert (=> d!1681315 (= (++!13208 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (t!373871 s!2326)) s!2326)))

(declare-fun lt!2142663 () Unit!152474)

(declare-fun choose!38775 (List!60706 C!29874 List!60706 List!60706) Unit!152474)

(assert (=> d!1681315 (= lt!2142663 (choose!38775 Nil!60582 (h!67030 s!2326) (t!373871 s!2326) s!2326))))

(assert (=> d!1681315 (= (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) (t!373871 s!2326))) s!2326)))

(assert (=> d!1681315 (= (lemmaMoveElementToOtherListKeepsConcatEq!1623 Nil!60582 (h!67030 s!2326) (t!373871 s!2326) s!2326) lt!2142663)))

(declare-fun bs!1211276 () Bool)

(assert (= bs!1211276 d!1681315))

(assert (=> bs!1211276 m!6262938))

(assert (=> bs!1211276 m!6262938))

(assert (=> bs!1211276 m!6262940))

(declare-fun m!6263498 () Bool)

(assert (=> bs!1211276 m!6263498))

(declare-fun m!6263500 () Bool)

(assert (=> bs!1211276 m!6263500))

(assert (=> b!5213842 d!1681315))

(declare-fun b!5214685 () Bool)

(declare-fun e!3246189 () Bool)

(assert (=> b!5214685 (= e!3246189 (matchR!6987 (regTwo!30116 r!7292) (t!373871 s!2326)))))

(declare-fun b!5214686 () Bool)

(declare-fun e!3246187 () Option!14913)

(declare-fun e!3246188 () Option!14913)

(assert (=> b!5214686 (= e!3246187 e!3246188)))

(declare-fun c!899475 () Bool)

(assert (=> b!5214686 (= c!899475 (is-Nil!60582 (t!373871 s!2326)))))

(declare-fun d!1681317 () Bool)

(declare-fun e!3246191 () Bool)

(assert (=> d!1681317 e!3246191))

(declare-fun res!2214669 () Bool)

(assert (=> d!1681317 (=> res!2214669 e!3246191)))

(declare-fun e!3246190 () Bool)

(assert (=> d!1681317 (= res!2214669 e!3246190)))

(declare-fun res!2214668 () Bool)

(assert (=> d!1681317 (=> (not res!2214668) (not e!3246190))))

(declare-fun lt!2142666 () Option!14913)

(assert (=> d!1681317 (= res!2214668 (isDefined!11616 lt!2142666))))

(assert (=> d!1681317 (= lt!2142666 e!3246187)))

(declare-fun c!899476 () Bool)

(assert (=> d!1681317 (= c!899476 e!3246189)))

(declare-fun res!2214667 () Bool)

(assert (=> d!1681317 (=> (not res!2214667) (not e!3246189))))

(assert (=> d!1681317 (= res!2214667 (matchR!6987 (regOne!30116 r!7292) (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582))))))

(assert (=> d!1681317 (validRegex!6538 (regOne!30116 r!7292))))

(assert (=> d!1681317 (= (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (t!373871 s!2326) s!2326) lt!2142666)))

(declare-fun b!5214687 () Bool)

(declare-fun res!2214670 () Bool)

(assert (=> b!5214687 (=> (not res!2214670) (not e!3246190))))

(assert (=> b!5214687 (= res!2214670 (matchR!6987 (regOne!30116 r!7292) (_1!35304 (get!20815 lt!2142666))))))

(declare-fun b!5214688 () Bool)

(declare-fun res!2214666 () Bool)

(assert (=> b!5214688 (=> (not res!2214666) (not e!3246190))))

(assert (=> b!5214688 (= res!2214666 (matchR!6987 (regTwo!30116 r!7292) (_2!35304 (get!20815 lt!2142666))))))

(declare-fun b!5214689 () Bool)

(declare-fun lt!2142664 () Unit!152474)

(declare-fun lt!2142665 () Unit!152474)

(assert (=> b!5214689 (= lt!2142664 lt!2142665)))

(assert (=> b!5214689 (= (++!13208 (++!13208 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (Cons!60582 (h!67030 (t!373871 s!2326)) Nil!60582)) (t!373871 (t!373871 s!2326))) s!2326)))

(assert (=> b!5214689 (= lt!2142665 (lemmaMoveElementToOtherListKeepsConcatEq!1623 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (h!67030 (t!373871 s!2326)) (t!373871 (t!373871 s!2326)) s!2326))))

(assert (=> b!5214689 (= e!3246188 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) (++!13208 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (Cons!60582 (h!67030 (t!373871 s!2326)) Nil!60582)) (t!373871 (t!373871 s!2326)) s!2326))))

(declare-fun b!5214690 () Bool)

(assert (=> b!5214690 (= e!3246191 (not (isDefined!11616 lt!2142666)))))

(declare-fun b!5214691 () Bool)

(assert (=> b!5214691 (= e!3246188 None!14912)))

(declare-fun b!5214692 () Bool)

(assert (=> b!5214692 (= e!3246190 (= (++!13208 (_1!35304 (get!20815 lt!2142666)) (_2!35304 (get!20815 lt!2142666))) s!2326))))

(declare-fun b!5214693 () Bool)

(assert (=> b!5214693 (= e!3246187 (Some!14912 (tuple2!64003 (++!13208 Nil!60582 (Cons!60582 (h!67030 s!2326) Nil!60582)) (t!373871 s!2326))))))

(assert (= (and d!1681317 res!2214667) b!5214685))

(assert (= (and d!1681317 c!899476) b!5214693))

(assert (= (and d!1681317 (not c!899476)) b!5214686))

(assert (= (and b!5214686 c!899475) b!5214691))

(assert (= (and b!5214686 (not c!899475)) b!5214689))

(assert (= (and d!1681317 res!2214668) b!5214687))

(assert (= (and b!5214687 res!2214670) b!5214688))

(assert (= (and b!5214688 res!2214666) b!5214692))

(assert (= (and d!1681317 (not res!2214669)) b!5214690))

(declare-fun m!6263502 () Bool)

(assert (=> b!5214692 m!6263502))

(declare-fun m!6263504 () Bool)

(assert (=> b!5214692 m!6263504))

(declare-fun m!6263506 () Bool)

(assert (=> b!5214690 m!6263506))

(declare-fun m!6263508 () Bool)

(assert (=> b!5214685 m!6263508))

(assert (=> d!1681317 m!6263506))

(assert (=> d!1681317 m!6262938))

(declare-fun m!6263510 () Bool)

(assert (=> d!1681317 m!6263510))

(assert (=> d!1681317 m!6262934))

(assert (=> b!5214688 m!6263502))

(declare-fun m!6263512 () Bool)

(assert (=> b!5214688 m!6263512))

(assert (=> b!5214689 m!6262938))

(declare-fun m!6263514 () Bool)

(assert (=> b!5214689 m!6263514))

(assert (=> b!5214689 m!6263514))

(declare-fun m!6263516 () Bool)

(assert (=> b!5214689 m!6263516))

(assert (=> b!5214689 m!6262938))

(declare-fun m!6263518 () Bool)

(assert (=> b!5214689 m!6263518))

(assert (=> b!5214689 m!6263514))

(declare-fun m!6263520 () Bool)

(assert (=> b!5214689 m!6263520))

(assert (=> b!5214687 m!6263502))

(declare-fun m!6263522 () Bool)

(assert (=> b!5214687 m!6263522))

(assert (=> b!5213842 d!1681317))

(declare-fun bs!1211277 () Bool)

(declare-fun d!1681319 () Bool)

(assert (= bs!1211277 (and d!1681319 d!1681177)))

(declare-fun lambda!261555 () Int)

(assert (=> bs!1211277 (= lambda!261555 lambda!261523)))

(declare-fun bs!1211278 () Bool)

(assert (= bs!1211278 (and d!1681319 d!1681171)))

(assert (=> bs!1211278 (= lambda!261555 lambda!261516)))

(declare-fun bs!1211279 () Bool)

(assert (= bs!1211279 (and d!1681319 d!1681163)))

(assert (=> bs!1211279 (= lambda!261555 lambda!261513)))

(declare-fun bs!1211280 () Bool)

(assert (= bs!1211280 (and d!1681319 d!1681175)))

(assert (=> bs!1211280 (= lambda!261555 lambda!261520)))

(declare-fun bs!1211281 () Bool)

(assert (= bs!1211281 (and d!1681319 d!1681173)))

(assert (=> bs!1211281 (= lambda!261555 lambda!261519)))

(assert (=> d!1681319 (= (inv!80253 (h!67031 (t!373872 zl!343))) (forall!14236 (exprs!4686 (h!67031 (t!373872 zl!343))) lambda!261555))))

(declare-fun bs!1211282 () Bool)

(assert (= bs!1211282 d!1681319))

(declare-fun m!6263524 () Bool)

(assert (=> bs!1211282 m!6263524))

(assert (=> b!5214166 d!1681319))

(declare-fun d!1681321 () Bool)

(declare-fun c!899477 () Bool)

(assert (=> d!1681321 (= c!899477 (isEmpty!32499 (tail!10272 (t!373871 s!2326))))))

(declare-fun e!3246192 () Bool)

(assert (=> d!1681321 (= (matchZipper!1046 (derivationStepZipper!1072 lt!2142499 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))) e!3246192)))

(declare-fun b!5214694 () Bool)

(assert (=> b!5214694 (= e!3246192 (nullableZipper!1228 (derivationStepZipper!1072 lt!2142499 (head!11175 (t!373871 s!2326)))))))

(declare-fun b!5214695 () Bool)

(assert (=> b!5214695 (= e!3246192 (matchZipper!1046 (derivationStepZipper!1072 (derivationStepZipper!1072 lt!2142499 (head!11175 (t!373871 s!2326))) (head!11175 (tail!10272 (t!373871 s!2326)))) (tail!10272 (tail!10272 (t!373871 s!2326)))))))

(assert (= (and d!1681321 c!899477) b!5214694))

(assert (= (and d!1681321 (not c!899477)) b!5214695))

(assert (=> d!1681321 m!6262902))

(declare-fun m!6263526 () Bool)

(assert (=> d!1681321 m!6263526))

(assert (=> b!5214694 m!6263042))

(declare-fun m!6263528 () Bool)

(assert (=> b!5214694 m!6263528))

(assert (=> b!5214695 m!6262902))

(declare-fun m!6263530 () Bool)

(assert (=> b!5214695 m!6263530))

(assert (=> b!5214695 m!6263042))

(assert (=> b!5214695 m!6263530))

(declare-fun m!6263532 () Bool)

(assert (=> b!5214695 m!6263532))

(assert (=> b!5214695 m!6262902))

(declare-fun m!6263534 () Bool)

(assert (=> b!5214695 m!6263534))

(assert (=> b!5214695 m!6263532))

(assert (=> b!5214695 m!6263534))

(declare-fun m!6263536 () Bool)

(assert (=> b!5214695 m!6263536))

(assert (=> b!5214017 d!1681321))

(declare-fun bs!1211283 () Bool)

(declare-fun d!1681323 () Bool)

(assert (= bs!1211283 (and d!1681323 b!5213634)))

(declare-fun lambda!261558 () Int)

(assert (=> bs!1211283 (= (= (head!11175 (t!373871 s!2326)) (h!67030 s!2326)) (= lambda!261558 lambda!261482))))

(assert (=> d!1681323 true))

(assert (=> d!1681323 (= (derivationStepZipper!1072 lt!2142499 (head!11175 (t!373871 s!2326))) (flatMap!529 lt!2142499 lambda!261558))))

(declare-fun bs!1211284 () Bool)

(assert (= bs!1211284 d!1681323))

(declare-fun m!6263538 () Bool)

(assert (=> bs!1211284 m!6263538))

(assert (=> b!5214017 d!1681323))

(declare-fun d!1681325 () Bool)

(assert (=> d!1681325 (= (head!11175 (t!373871 s!2326)) (h!67030 (t!373871 s!2326)))))

(assert (=> b!5214017 d!1681325))

(declare-fun d!1681327 () Bool)

(assert (=> d!1681327 (= (tail!10272 (t!373871 s!2326)) (t!373871 (t!373871 s!2326)))))

(assert (=> b!5214017 d!1681327))

(declare-fun d!1681329 () Bool)

(assert (=> d!1681329 (= ($colon$colon!1278 (exprs!4686 lt!2142491) (ite (or c!899286 c!899287) (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (h!67029 (exprs!4686 (h!67031 zl!343))))) (Cons!60581 (ite (or c!899286 c!899287) (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (h!67029 (exprs!4686 (h!67031 zl!343)))) (exprs!4686 lt!2142491)))))

(assert (=> bm!367379 d!1681329))

(declare-fun d!1681331 () Bool)

(assert (=> d!1681331 true))

(assert (=> d!1681331 true))

(declare-fun res!2214671 () Bool)

(assert (=> d!1681331 (= (choose!38759 lambda!261480) res!2214671)))

(assert (=> d!1681105 d!1681331))

(declare-fun b!5214698 () Bool)

(declare-fun e!3246199 () Bool)

(declare-fun lt!2142667 () Bool)

(declare-fun call!367486 () Bool)

(assert (=> b!5214698 (= e!3246199 (= lt!2142667 call!367486))))

(declare-fun b!5214699 () Bool)

(declare-fun e!3246196 () Bool)

(assert (=> b!5214699 (= e!3246196 (= (head!11175 s!2326) (c!899215 (regTwo!30116 r!7292))))))

(declare-fun b!5214700 () Bool)

(declare-fun res!2214676 () Bool)

(assert (=> b!5214700 (=> (not res!2214676) (not e!3246196))))

(assert (=> b!5214700 (= res!2214676 (isEmpty!32499 (tail!10272 s!2326)))))

(declare-fun b!5214701 () Bool)

(declare-fun res!2214679 () Bool)

(declare-fun e!3246195 () Bool)

(assert (=> b!5214701 (=> res!2214679 e!3246195)))

(assert (=> b!5214701 (= res!2214679 (not (is-ElementMatch!14802 (regTwo!30116 r!7292))))))

(declare-fun e!3246194 () Bool)

(assert (=> b!5214701 (= e!3246194 e!3246195)))

(declare-fun b!5214702 () Bool)

(declare-fun e!3246198 () Bool)

(assert (=> b!5214702 (= e!3246198 (matchR!6987 (derivativeStep!4050 (regTwo!30116 r!7292) (head!11175 s!2326)) (tail!10272 s!2326)))))

(declare-fun d!1681333 () Bool)

(assert (=> d!1681333 e!3246199))

(declare-fun c!899481 () Bool)

(assert (=> d!1681333 (= c!899481 (is-EmptyExpr!14802 (regTwo!30116 r!7292)))))

(assert (=> d!1681333 (= lt!2142667 e!3246198)))

(declare-fun c!899482 () Bool)

(assert (=> d!1681333 (= c!899482 (isEmpty!32499 s!2326))))

(assert (=> d!1681333 (validRegex!6538 (regTwo!30116 r!7292))))

(assert (=> d!1681333 (= (matchR!6987 (regTwo!30116 r!7292) s!2326) lt!2142667)))

(declare-fun b!5214703 () Bool)

(declare-fun e!3246193 () Bool)

(declare-fun e!3246197 () Bool)

(assert (=> b!5214703 (= e!3246193 e!3246197)))

(declare-fun res!2214677 () Bool)

(assert (=> b!5214703 (=> res!2214677 e!3246197)))

(assert (=> b!5214703 (= res!2214677 call!367486)))

(declare-fun b!5214704 () Bool)

(assert (=> b!5214704 (= e!3246197 (not (= (head!11175 s!2326) (c!899215 (regTwo!30116 r!7292)))))))

(declare-fun b!5214705 () Bool)

(declare-fun res!2214674 () Bool)

(assert (=> b!5214705 (=> res!2214674 e!3246197)))

(assert (=> b!5214705 (= res!2214674 (not (isEmpty!32499 (tail!10272 s!2326))))))

(declare-fun b!5214706 () Bool)

(declare-fun res!2214678 () Bool)

(assert (=> b!5214706 (=> (not res!2214678) (not e!3246196))))

(assert (=> b!5214706 (= res!2214678 (not call!367486))))

(declare-fun bm!367481 () Bool)

(assert (=> bm!367481 (= call!367486 (isEmpty!32499 s!2326))))

(declare-fun b!5214707 () Bool)

(assert (=> b!5214707 (= e!3246199 e!3246194)))

(declare-fun c!899480 () Bool)

(assert (=> b!5214707 (= c!899480 (is-EmptyLang!14802 (regTwo!30116 r!7292)))))

(declare-fun b!5214708 () Bool)

(declare-fun res!2214672 () Bool)

(assert (=> b!5214708 (=> res!2214672 e!3246195)))

(assert (=> b!5214708 (= res!2214672 e!3246196)))

(declare-fun res!2214675 () Bool)

(assert (=> b!5214708 (=> (not res!2214675) (not e!3246196))))

(assert (=> b!5214708 (= res!2214675 lt!2142667)))

(declare-fun b!5214709 () Bool)

(assert (=> b!5214709 (= e!3246198 (nullable!4971 (regTwo!30116 r!7292)))))

(declare-fun b!5214710 () Bool)

(assert (=> b!5214710 (= e!3246195 e!3246193)))

(declare-fun res!2214673 () Bool)

(assert (=> b!5214710 (=> (not res!2214673) (not e!3246193))))

(assert (=> b!5214710 (= res!2214673 (not lt!2142667))))

(declare-fun b!5214711 () Bool)

(assert (=> b!5214711 (= e!3246194 (not lt!2142667))))

(assert (= (and d!1681333 c!899482) b!5214709))

(assert (= (and d!1681333 (not c!899482)) b!5214702))

(assert (= (and d!1681333 c!899481) b!5214698))

(assert (= (and d!1681333 (not c!899481)) b!5214707))

(assert (= (and b!5214707 c!899480) b!5214711))

(assert (= (and b!5214707 (not c!899480)) b!5214701))

(assert (= (and b!5214701 (not res!2214679)) b!5214708))

(assert (= (and b!5214708 res!2214675) b!5214706))

(assert (= (and b!5214706 res!2214678) b!5214700))

(assert (= (and b!5214700 res!2214676) b!5214699))

(assert (= (and b!5214708 (not res!2214672)) b!5214710))

(assert (= (and b!5214710 res!2214673) b!5214703))

(assert (= (and b!5214703 (not res!2214677)) b!5214705))

(assert (= (and b!5214705 (not res!2214674)) b!5214704))

(assert (= (or b!5214698 b!5214703 b!5214706) bm!367481))

(assert (=> b!5214700 m!6262972))

(assert (=> b!5214700 m!6262972))

(assert (=> b!5214700 m!6262974))

(assert (=> b!5214704 m!6262976))

(assert (=> d!1681333 m!6262970))

(declare-fun m!6263540 () Bool)

(assert (=> d!1681333 m!6263540))

(assert (=> b!5214705 m!6262972))

(assert (=> b!5214705 m!6262972))

(assert (=> b!5214705 m!6262974))

(declare-fun m!6263542 () Bool)

(assert (=> b!5214709 m!6263542))

(assert (=> b!5214702 m!6262976))

(assert (=> b!5214702 m!6262976))

(declare-fun m!6263544 () Bool)

(assert (=> b!5214702 m!6263544))

(assert (=> b!5214702 m!6262972))

(assert (=> b!5214702 m!6263544))

(assert (=> b!5214702 m!6262972))

(declare-fun m!6263546 () Bool)

(assert (=> b!5214702 m!6263546))

(assert (=> bm!367481 m!6262970))

(assert (=> b!5214699 m!6262976))

(assert (=> b!5213838 d!1681333))

(assert (=> bs!1211238 d!1681143))

(assert (=> b!5214026 d!1681093))

(declare-fun d!1681335 () Bool)

(assert (=> d!1681335 (= (head!11176 (exprs!4686 (h!67031 zl!343))) (h!67029 (exprs!4686 (h!67031 zl!343))))))

(assert (=> b!5214133 d!1681335))

(declare-fun b!5214712 () Bool)

(declare-fun e!3246201 () (Set Context!8372))

(declare-fun call!367487 () (Set Context!8372))

(assert (=> b!5214712 (= e!3246201 (set.union call!367487 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))) (h!67030 s!2326))))))

(declare-fun b!5214713 () Bool)

(declare-fun e!3246200 () Bool)

(assert (=> b!5214713 (= e!3246200 (nullable!4971 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))))))

(declare-fun d!1681337 () Bool)

(declare-fun c!899483 () Bool)

(assert (=> d!1681337 (= c!899483 e!3246200)))

(declare-fun res!2214680 () Bool)

(assert (=> d!1681337 (=> (not res!2214680) (not e!3246200))))

(assert (=> d!1681337 (= res!2214680 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))))

(assert (=> d!1681337 (= (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (h!67030 s!2326)) e!3246201)))

(declare-fun b!5214714 () Bool)

(declare-fun e!3246202 () (Set Context!8372))

(assert (=> b!5214714 (= e!3246201 e!3246202)))

(declare-fun c!899484 () Bool)

(assert (=> b!5214714 (= c!899484 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))))

(declare-fun b!5214715 () Bool)

(assert (=> b!5214715 (= e!3246202 (as set.empty (Set Context!8372)))))

(declare-fun bm!367482 () Bool)

(assert (=> bm!367482 (= call!367487 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))) (h!67030 s!2326)))))

(declare-fun b!5214716 () Bool)

(assert (=> b!5214716 (= e!3246202 call!367487)))

(assert (= (and d!1681337 res!2214680) b!5214713))

(assert (= (and d!1681337 c!899483) b!5214712))

(assert (= (and d!1681337 (not c!899483)) b!5214714))

(assert (= (and b!5214714 c!899484) b!5214716))

(assert (= (and b!5214714 (not c!899484)) b!5214715))

(assert (= (or b!5214712 b!5214716) bm!367482))

(declare-fun m!6263548 () Bool)

(assert (=> b!5214712 m!6263548))

(declare-fun m!6263550 () Bool)

(assert (=> b!5214713 m!6263550))

(declare-fun m!6263552 () Bool)

(assert (=> bm!367482 m!6263552))

(assert (=> b!5213975 d!1681337))

(declare-fun d!1681339 () Bool)

(assert (=> d!1681339 (= (nullable!4971 (reg!15131 (regOne!30117 (regOne!30116 r!7292)))) (nullableFct!1380 (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))))

(declare-fun bs!1211285 () Bool)

(assert (= bs!1211285 d!1681339))

(declare-fun m!6263554 () Bool)

(assert (=> bs!1211285 m!6263554))

(assert (=> b!5214038 d!1681339))

(declare-fun d!1681341 () Bool)

(declare-fun res!2214681 () Bool)

(declare-fun e!3246203 () Bool)

(assert (=> d!1681341 (=> res!2214681 e!3246203)))

(assert (=> d!1681341 (= res!2214681 (is-Nil!60581 (exprs!4686 (h!67031 zl!343))))))

(assert (=> d!1681341 (= (forall!14236 (exprs!4686 (h!67031 zl!343)) lambda!261513) e!3246203)))

(declare-fun b!5214717 () Bool)

(declare-fun e!3246204 () Bool)

(assert (=> b!5214717 (= e!3246203 e!3246204)))

(declare-fun res!2214682 () Bool)

(assert (=> b!5214717 (=> (not res!2214682) (not e!3246204))))

(assert (=> b!5214717 (= res!2214682 (dynLambda!23936 lambda!261513 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214718 () Bool)

(assert (=> b!5214718 (= e!3246204 (forall!14236 (t!373870 (exprs!4686 (h!67031 zl!343))) lambda!261513))))

(assert (= (and d!1681341 (not res!2214681)) b!5214717))

(assert (= (and b!5214717 res!2214682) b!5214718))

(declare-fun b_lambda!201671 () Bool)

(assert (=> (not b_lambda!201671) (not b!5214717)))

(declare-fun m!6263556 () Bool)

(assert (=> b!5214717 m!6263556))

(declare-fun m!6263558 () Bool)

(assert (=> b!5214718 m!6263558))

(assert (=> d!1681163 d!1681341))

(declare-fun bm!367483 () Bool)

(declare-fun call!367488 () Bool)

(declare-fun call!367490 () Bool)

(assert (=> bm!367483 (= call!367488 call!367490)))

(declare-fun b!5214719 () Bool)

(declare-fun e!3246210 () Bool)

(declare-fun e!3246207 () Bool)

(assert (=> b!5214719 (= e!3246210 e!3246207)))

(declare-fun c!899485 () Bool)

(assert (=> b!5214719 (= c!899485 (is-Star!14802 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))))))

(declare-fun call!367489 () Bool)

(declare-fun bm!367484 () Bool)

(declare-fun c!899486 () Bool)

(assert (=> bm!367484 (= call!367489 (validRegex!6538 (ite c!899486 (regTwo!30117 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))) (regTwo!30116 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))))))))

(declare-fun b!5214720 () Bool)

(declare-fun res!2214685 () Bool)

(declare-fun e!3246205 () Bool)

(assert (=> b!5214720 (=> res!2214685 e!3246205)))

(assert (=> b!5214720 (= res!2214685 (not (is-Concat!23647 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292)))))))

(declare-fun e!3246209 () Bool)

(assert (=> b!5214720 (= e!3246209 e!3246205)))

(declare-fun b!5214721 () Bool)

(declare-fun e!3246206 () Bool)

(assert (=> b!5214721 (= e!3246205 e!3246206)))

(declare-fun res!2214686 () Bool)

(assert (=> b!5214721 (=> (not res!2214686) (not e!3246206))))

(assert (=> b!5214721 (= res!2214686 call!367488)))

(declare-fun b!5214722 () Bool)

(assert (=> b!5214722 (= e!3246207 e!3246209)))

(assert (=> b!5214722 (= c!899486 (is-Union!14802 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))))))

(declare-fun d!1681343 () Bool)

(declare-fun res!2214683 () Bool)

(assert (=> d!1681343 (=> res!2214683 e!3246210)))

(assert (=> d!1681343 (= res!2214683 (is-ElementMatch!14802 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))))))

(assert (=> d!1681343 (= (validRegex!6538 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))) e!3246210)))

(declare-fun b!5214723 () Bool)

(declare-fun res!2214687 () Bool)

(declare-fun e!3246208 () Bool)

(assert (=> b!5214723 (=> (not res!2214687) (not e!3246208))))

(assert (=> b!5214723 (= res!2214687 call!367488)))

(assert (=> b!5214723 (= e!3246209 e!3246208)))

(declare-fun b!5214724 () Bool)

(declare-fun e!3246211 () Bool)

(assert (=> b!5214724 (= e!3246211 call!367490)))

(declare-fun b!5214725 () Bool)

(assert (=> b!5214725 (= e!3246206 call!367489)))

(declare-fun bm!367485 () Bool)

(assert (=> bm!367485 (= call!367490 (validRegex!6538 (ite c!899485 (reg!15131 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))) (ite c!899486 (regOne!30117 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))) (regOne!30116 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292)))))))))

(declare-fun b!5214726 () Bool)

(assert (=> b!5214726 (= e!3246208 call!367489)))

(declare-fun b!5214727 () Bool)

(assert (=> b!5214727 (= e!3246207 e!3246211)))

(declare-fun res!2214684 () Bool)

(assert (=> b!5214727 (= res!2214684 (not (nullable!4971 (reg!15131 (ite c!899295 (regTwo!30117 r!7292) (regTwo!30116 r!7292))))))))

(assert (=> b!5214727 (=> (not res!2214684) (not e!3246211))))

(assert (= (and d!1681343 (not res!2214683)) b!5214719))

(assert (= (and b!5214719 c!899485) b!5214727))

(assert (= (and b!5214719 (not c!899485)) b!5214722))

(assert (= (and b!5214727 res!2214684) b!5214724))

(assert (= (and b!5214722 c!899486) b!5214723))

(assert (= (and b!5214722 (not c!899486)) b!5214720))

(assert (= (and b!5214723 res!2214687) b!5214726))

(assert (= (and b!5214720 (not res!2214685)) b!5214721))

(assert (= (and b!5214721 res!2214686) b!5214725))

(assert (= (or b!5214726 b!5214725) bm!367484))

(assert (= (or b!5214723 b!5214721) bm!367483))

(assert (= (or b!5214724 bm!367483) bm!367485))

(declare-fun m!6263560 () Bool)

(assert (=> bm!367484 m!6263560))

(declare-fun m!6263562 () Bool)

(assert (=> bm!367485 m!6263562))

(declare-fun m!6263564 () Bool)

(assert (=> b!5214727 m!6263564))

(assert (=> bm!367392 d!1681343))

(declare-fun bs!1211286 () Bool)

(declare-fun d!1681345 () Bool)

(assert (= bs!1211286 (and d!1681345 d!1681177)))

(declare-fun lambda!261559 () Int)

(assert (=> bs!1211286 (= lambda!261559 lambda!261523)))

(declare-fun bs!1211287 () Bool)

(assert (= bs!1211287 (and d!1681345 d!1681171)))

(assert (=> bs!1211287 (= lambda!261559 lambda!261516)))

(declare-fun bs!1211288 () Bool)

(assert (= bs!1211288 (and d!1681345 d!1681319)))

(assert (=> bs!1211288 (= lambda!261559 lambda!261555)))

(declare-fun bs!1211289 () Bool)

(assert (= bs!1211289 (and d!1681345 d!1681163)))

(assert (=> bs!1211289 (= lambda!261559 lambda!261513)))

(declare-fun bs!1211290 () Bool)

(assert (= bs!1211290 (and d!1681345 d!1681175)))

(assert (=> bs!1211290 (= lambda!261559 lambda!261520)))

(declare-fun bs!1211291 () Bool)

(assert (= bs!1211291 (and d!1681345 d!1681173)))

(assert (=> bs!1211291 (= lambda!261559 lambda!261519)))

(assert (=> d!1681345 (= (inv!80253 setElem!33135) (forall!14236 (exprs!4686 setElem!33135) lambda!261559))))

(declare-fun bs!1211292 () Bool)

(assert (= bs!1211292 d!1681345))

(declare-fun m!6263566 () Bool)

(assert (=> bs!1211292 m!6263566))

(assert (=> setNonEmpty!33135 d!1681345))

(declare-fun d!1681347 () Bool)

(declare-fun c!899487 () Bool)

(assert (=> d!1681347 (= c!899487 (isEmpty!32499 (tail!10272 (t!373871 s!2326))))))

(declare-fun e!3246212 () Bool)

(assert (=> d!1681347 (= (matchZipper!1046 (derivationStepZipper!1072 lt!2142487 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))) e!3246212)))

(declare-fun b!5214728 () Bool)

(assert (=> b!5214728 (= e!3246212 (nullableZipper!1228 (derivationStepZipper!1072 lt!2142487 (head!11175 (t!373871 s!2326)))))))

(declare-fun b!5214729 () Bool)

(assert (=> b!5214729 (= e!3246212 (matchZipper!1046 (derivationStepZipper!1072 (derivationStepZipper!1072 lt!2142487 (head!11175 (t!373871 s!2326))) (head!11175 (tail!10272 (t!373871 s!2326)))) (tail!10272 (tail!10272 (t!373871 s!2326)))))))

(assert (= (and d!1681347 c!899487) b!5214728))

(assert (= (and d!1681347 (not c!899487)) b!5214729))

(assert (=> d!1681347 m!6262902))

(assert (=> d!1681347 m!6263526))

(assert (=> b!5214728 m!6263092))

(declare-fun m!6263568 () Bool)

(assert (=> b!5214728 m!6263568))

(assert (=> b!5214729 m!6262902))

(assert (=> b!5214729 m!6263530))

(assert (=> b!5214729 m!6263092))

(assert (=> b!5214729 m!6263530))

(declare-fun m!6263570 () Bool)

(assert (=> b!5214729 m!6263570))

(assert (=> b!5214729 m!6262902))

(assert (=> b!5214729 m!6263534))

(assert (=> b!5214729 m!6263570))

(assert (=> b!5214729 m!6263534))

(declare-fun m!6263572 () Bool)

(assert (=> b!5214729 m!6263572))

(assert (=> b!5214040 d!1681347))

(declare-fun bs!1211293 () Bool)

(declare-fun d!1681349 () Bool)

(assert (= bs!1211293 (and d!1681349 b!5213634)))

(declare-fun lambda!261560 () Int)

(assert (=> bs!1211293 (= (= (head!11175 (t!373871 s!2326)) (h!67030 s!2326)) (= lambda!261560 lambda!261482))))

(declare-fun bs!1211294 () Bool)

(assert (= bs!1211294 (and d!1681349 d!1681323)))

(assert (=> bs!1211294 (= lambda!261560 lambda!261558)))

(assert (=> d!1681349 true))

(assert (=> d!1681349 (= (derivationStepZipper!1072 lt!2142487 (head!11175 (t!373871 s!2326))) (flatMap!529 lt!2142487 lambda!261560))))

(declare-fun bs!1211295 () Bool)

(assert (= bs!1211295 d!1681349))

(declare-fun m!6263574 () Bool)

(assert (=> bs!1211295 m!6263574))

(assert (=> b!5214040 d!1681349))

(assert (=> b!5214040 d!1681325))

(assert (=> b!5214040 d!1681327))

(declare-fun bm!367486 () Bool)

(declare-fun call!367491 () Bool)

(declare-fun call!367493 () Bool)

(assert (=> bm!367486 (= call!367491 call!367493)))

(declare-fun b!5214730 () Bool)

(declare-fun e!3246218 () Bool)

(declare-fun e!3246215 () Bool)

(assert (=> b!5214730 (= e!3246218 e!3246215)))

(declare-fun c!899488 () Bool)

(assert (=> b!5214730 (= c!899488 (is-Star!14802 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun call!367492 () Bool)

(declare-fun c!899489 () Bool)

(declare-fun bm!367487 () Bool)

(assert (=> bm!367487 (= call!367492 (validRegex!6538 (ite c!899489 (regTwo!30117 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))) (regTwo!30116 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))))

(declare-fun b!5214731 () Bool)

(declare-fun res!2214690 () Bool)

(declare-fun e!3246213 () Bool)

(assert (=> b!5214731 (=> res!2214690 e!3246213)))

(assert (=> b!5214731 (= res!2214690 (not (is-Concat!23647 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(declare-fun e!3246217 () Bool)

(assert (=> b!5214731 (= e!3246217 e!3246213)))

(declare-fun b!5214732 () Bool)

(declare-fun e!3246214 () Bool)

(assert (=> b!5214732 (= e!3246213 e!3246214)))

(declare-fun res!2214691 () Bool)

(assert (=> b!5214732 (=> (not res!2214691) (not e!3246214))))

(assert (=> b!5214732 (= res!2214691 call!367491)))

(declare-fun b!5214733 () Bool)

(assert (=> b!5214733 (= e!3246215 e!3246217)))

(assert (=> b!5214733 (= c!899489 (is-Union!14802 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun d!1681351 () Bool)

(declare-fun res!2214688 () Bool)

(assert (=> d!1681351 (=> res!2214688 e!3246218)))

(assert (=> d!1681351 (= res!2214688 (is-ElementMatch!14802 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(assert (=> d!1681351 (= (validRegex!6538 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))) e!3246218)))

(declare-fun b!5214734 () Bool)

(declare-fun res!2214692 () Bool)

(declare-fun e!3246216 () Bool)

(assert (=> b!5214734 (=> (not res!2214692) (not e!3246216))))

(assert (=> b!5214734 (= res!2214692 call!367491)))

(assert (=> b!5214734 (= e!3246217 e!3246216)))

(declare-fun b!5214735 () Bool)

(declare-fun e!3246219 () Bool)

(assert (=> b!5214735 (= e!3246219 call!367493)))

(declare-fun b!5214736 () Bool)

(assert (=> b!5214736 (= e!3246214 call!367492)))

(declare-fun bm!367488 () Bool)

(assert (=> bm!367488 (= call!367493 (validRegex!6538 (ite c!899488 (reg!15131 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))) (ite c!899489 (regOne!30117 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))) (regOne!30116 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292)))))))))))

(declare-fun b!5214737 () Bool)

(assert (=> b!5214737 (= e!3246216 call!367492)))

(declare-fun b!5214738 () Bool)

(assert (=> b!5214738 (= e!3246215 e!3246219)))

(declare-fun res!2214689 () Bool)

(assert (=> b!5214738 (= res!2214689 (not (nullable!4971 (reg!15131 (ite c!899306 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))))

(assert (=> b!5214738 (=> (not res!2214689) (not e!3246219))))

(assert (= (and d!1681351 (not res!2214688)) b!5214730))

(assert (= (and b!5214730 c!899488) b!5214738))

(assert (= (and b!5214730 (not c!899488)) b!5214733))

(assert (= (and b!5214738 res!2214689) b!5214735))

(assert (= (and b!5214733 c!899489) b!5214734))

(assert (= (and b!5214733 (not c!899489)) b!5214731))

(assert (= (and b!5214734 res!2214692) b!5214737))

(assert (= (and b!5214731 (not res!2214690)) b!5214732))

(assert (= (and b!5214732 res!2214691) b!5214736))

(assert (= (or b!5214737 b!5214736) bm!367487))

(assert (= (or b!5214734 b!5214732) bm!367486))

(assert (= (or b!5214735 bm!367486) bm!367488))

(declare-fun m!6263576 () Bool)

(assert (=> bm!367487 m!6263576))

(declare-fun m!6263578 () Bool)

(assert (=> bm!367488 m!6263578))

(declare-fun m!6263580 () Bool)

(assert (=> b!5214738 m!6263580))

(assert (=> bm!367396 d!1681351))

(assert (=> b!5213843 d!1681269))

(declare-fun d!1681353 () Bool)

(assert (=> d!1681353 (= (isEmpty!32496 (t!373870 (unfocusZipperList!244 zl!343))) (is-Nil!60581 (t!373870 (unfocusZipperList!244 zl!343))))))

(assert (=> b!5214066 d!1681353))

(assert (=> d!1681107 d!1681101))

(assert (=> d!1681107 d!1681273))

(assert (=> d!1681107 d!1681111))

(declare-fun bs!1211296 () Bool)

(declare-fun d!1681355 () Bool)

(assert (= bs!1211296 (and d!1681355 d!1681109)))

(declare-fun lambda!261563 () Int)

(assert (=> bs!1211296 (= lambda!261563 lambda!261503)))

(declare-fun bs!1211297 () Bool)

(assert (= bs!1211297 (and d!1681355 b!5213899)))

(assert (=> bs!1211297 (not (= lambda!261563 lambda!261510))))

(assert (=> bs!1211296 (not (= lambda!261563 lambda!261504))))

(declare-fun bs!1211298 () Bool)

(assert (= bs!1211298 (and d!1681355 d!1681107)))

(assert (=> bs!1211298 (= lambda!261563 lambda!261498)))

(declare-fun bs!1211299 () Bool)

(assert (= bs!1211299 (and d!1681355 b!5213645)))

(assert (=> bs!1211299 (= lambda!261563 lambda!261480)))

(assert (=> bs!1211299 (not (= lambda!261563 lambda!261481))))

(declare-fun bs!1211300 () Bool)

(assert (= bs!1211300 (and d!1681355 b!5213898)))

(assert (=> bs!1211300 (not (= lambda!261563 lambda!261509))))

(assert (=> d!1681355 true))

(assert (=> d!1681355 true))

(assert (=> d!1681355 true))

(assert (=> d!1681355 (= (isDefined!11616 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326)) (Exists!1983 lambda!261563))))

(assert (=> d!1681355 true))

(declare-fun _$89!1379 () Unit!152474)

(assert (=> d!1681355 (= (choose!38760 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326) _$89!1379)))

(declare-fun bs!1211301 () Bool)

(assert (= bs!1211301 d!1681355))

(assert (=> bs!1211301 m!6262772))

(assert (=> bs!1211301 m!6262772))

(assert (=> bs!1211301 m!6262774))

(declare-fun m!6263582 () Bool)

(assert (=> bs!1211301 m!6263582))

(assert (=> d!1681107 d!1681355))

(declare-fun d!1681357 () Bool)

(assert (=> d!1681357 (= (Exists!1983 lambda!261498) (choose!38759 lambda!261498))))

(declare-fun bs!1211302 () Bool)

(assert (= bs!1211302 d!1681357))

(declare-fun m!6263584 () Bool)

(assert (=> bs!1211302 m!6263584))

(assert (=> d!1681107 d!1681357))

(declare-fun bs!1211303 () Bool)

(declare-fun d!1681359 () Bool)

(assert (= bs!1211303 (and d!1681359 d!1681177)))

(declare-fun lambda!261564 () Int)

(assert (=> bs!1211303 (= lambda!261564 lambda!261523)))

(declare-fun bs!1211304 () Bool)

(assert (= bs!1211304 (and d!1681359 d!1681171)))

(assert (=> bs!1211304 (= lambda!261564 lambda!261516)))

(declare-fun bs!1211305 () Bool)

(assert (= bs!1211305 (and d!1681359 d!1681319)))

(assert (=> bs!1211305 (= lambda!261564 lambda!261555)))

(declare-fun bs!1211306 () Bool)

(assert (= bs!1211306 (and d!1681359 d!1681345)))

(assert (=> bs!1211306 (= lambda!261564 lambda!261559)))

(declare-fun bs!1211307 () Bool)

(assert (= bs!1211307 (and d!1681359 d!1681163)))

(assert (=> bs!1211307 (= lambda!261564 lambda!261513)))

(declare-fun bs!1211308 () Bool)

(assert (= bs!1211308 (and d!1681359 d!1681175)))

(assert (=> bs!1211308 (= lambda!261564 lambda!261520)))

(declare-fun bs!1211309 () Bool)

(assert (= bs!1211309 (and d!1681359 d!1681173)))

(assert (=> bs!1211309 (= lambda!261564 lambda!261519)))

(declare-fun b!5214743 () Bool)

(declare-fun e!3246227 () Bool)

(declare-fun lt!2142668 () Regex!14802)

(assert (=> b!5214743 (= e!3246227 (isConcat!287 lt!2142668))))

(declare-fun b!5214744 () Bool)

(declare-fun e!3246223 () Bool)

(assert (=> b!5214744 (= e!3246223 (isEmptyExpr!764 lt!2142668))))

(declare-fun b!5214745 () Bool)

(declare-fun e!3246222 () Regex!14802)

(assert (=> b!5214745 (= e!3246222 EmptyExpr!14802)))

(declare-fun b!5214746 () Bool)

(assert (=> b!5214746 (= e!3246223 e!3246227)))

(declare-fun c!899493 () Bool)

(assert (=> b!5214746 (= c!899493 (isEmpty!32496 (tail!10273 (t!373870 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun e!3246225 () Bool)

(assert (=> d!1681359 e!3246225))

(declare-fun res!2214697 () Bool)

(assert (=> d!1681359 (=> (not res!2214697) (not e!3246225))))

(assert (=> d!1681359 (= res!2214697 (validRegex!6538 lt!2142668))))

(declare-fun e!3246224 () Regex!14802)

(assert (=> d!1681359 (= lt!2142668 e!3246224)))

(declare-fun c!899490 () Bool)

(declare-fun e!3246226 () Bool)

(assert (=> d!1681359 (= c!899490 e!3246226)))

(declare-fun res!2214698 () Bool)

(assert (=> d!1681359 (=> (not res!2214698) (not e!3246226))))

(assert (=> d!1681359 (= res!2214698 (is-Cons!60581 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> d!1681359 (forall!14236 (t!373870 (exprs!4686 (h!67031 zl!343))) lambda!261564)))

(assert (=> d!1681359 (= (generalisedConcat!471 (t!373870 (exprs!4686 (h!67031 zl!343)))) lt!2142668)))

(declare-fun b!5214747 () Bool)

(assert (=> b!5214747 (= e!3246224 (h!67029 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214748 () Bool)

(assert (=> b!5214748 (= e!3246225 e!3246223)))

(declare-fun c!899491 () Bool)

(assert (=> b!5214748 (= c!899491 (isEmpty!32496 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214749 () Bool)

(assert (=> b!5214749 (= e!3246227 (= lt!2142668 (head!11176 (t!373870 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun b!5214750 () Bool)

(assert (=> b!5214750 (= e!3246224 e!3246222)))

(declare-fun c!899492 () Bool)

(assert (=> b!5214750 (= c!899492 (is-Cons!60581 (t!373870 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214751 () Bool)

(assert (=> b!5214751 (= e!3246226 (isEmpty!32496 (t!373870 (t!373870 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun b!5214752 () Bool)

(assert (=> b!5214752 (= e!3246222 (Concat!23647 (h!67029 (t!373870 (exprs!4686 (h!67031 zl!343)))) (generalisedConcat!471 (t!373870 (t!373870 (exprs!4686 (h!67031 zl!343)))))))))

(assert (= (and d!1681359 res!2214698) b!5214751))

(assert (= (and d!1681359 c!899490) b!5214747))

(assert (= (and d!1681359 (not c!899490)) b!5214750))

(assert (= (and b!5214750 c!899492) b!5214752))

(assert (= (and b!5214750 (not c!899492)) b!5214745))

(assert (= (and d!1681359 res!2214697) b!5214748))

(assert (= (and b!5214748 c!899491) b!5214744))

(assert (= (and b!5214748 (not c!899491)) b!5214746))

(assert (= (and b!5214746 c!899493) b!5214749))

(assert (= (and b!5214746 (not c!899493)) b!5214743))

(declare-fun m!6263586 () Bool)

(assert (=> b!5214749 m!6263586))

(declare-fun m!6263588 () Bool)

(assert (=> b!5214743 m!6263588))

(declare-fun m!6263590 () Bool)

(assert (=> d!1681359 m!6263590))

(declare-fun m!6263592 () Bool)

(assert (=> d!1681359 m!6263592))

(declare-fun m!6263594 () Bool)

(assert (=> b!5214751 m!6263594))

(declare-fun m!6263596 () Bool)

(assert (=> b!5214746 m!6263596))

(assert (=> b!5214746 m!6263596))

(declare-fun m!6263598 () Bool)

(assert (=> b!5214746 m!6263598))

(assert (=> b!5214748 m!6262764))

(declare-fun m!6263600 () Bool)

(assert (=> b!5214744 m!6263600))

(declare-fun m!6263602 () Bool)

(assert (=> b!5214752 m!6263602))

(assert (=> b!5214136 d!1681359))

(declare-fun bs!1211310 () Bool)

(declare-fun b!5214760 () Bool)

(assert (= bs!1211310 (and b!5214760 d!1681355)))

(declare-fun lambda!261565 () Int)

(assert (=> bs!1211310 (not (= lambda!261565 lambda!261563))))

(declare-fun bs!1211311 () Bool)

(assert (= bs!1211311 (and b!5214760 d!1681109)))

(assert (=> bs!1211311 (not (= lambda!261565 lambda!261503))))

(declare-fun bs!1211312 () Bool)

(assert (= bs!1211312 (and b!5214760 b!5213899)))

(assert (=> bs!1211312 (not (= lambda!261565 lambda!261510))))

(assert (=> bs!1211311 (not (= lambda!261565 lambda!261504))))

(declare-fun bs!1211313 () Bool)

(assert (= bs!1211313 (and b!5214760 d!1681107)))

(assert (=> bs!1211313 (not (= lambda!261565 lambda!261498))))

(declare-fun bs!1211314 () Bool)

(assert (= bs!1211314 (and b!5214760 b!5213645)))

(assert (=> bs!1211314 (not (= lambda!261565 lambda!261480))))

(assert (=> bs!1211314 (not (= lambda!261565 lambda!261481))))

(declare-fun bs!1211315 () Bool)

(assert (= bs!1211315 (and b!5214760 b!5213898)))

(assert (=> bs!1211315 (= (and (= (reg!15131 (regTwo!30117 r!7292)) (reg!15131 r!7292)) (= (regTwo!30117 r!7292) r!7292)) (= lambda!261565 lambda!261509))))

(assert (=> b!5214760 true))

(assert (=> b!5214760 true))

(declare-fun bs!1211316 () Bool)

(declare-fun b!5214761 () Bool)

(assert (= bs!1211316 (and b!5214761 d!1681355)))

(declare-fun lambda!261566 () Int)

(assert (=> bs!1211316 (not (= lambda!261566 lambda!261563))))

(declare-fun bs!1211317 () Bool)

(assert (= bs!1211317 (and b!5214761 d!1681109)))

(assert (=> bs!1211317 (not (= lambda!261566 lambda!261503))))

(declare-fun bs!1211318 () Bool)

(assert (= bs!1211318 (and b!5214761 b!5213899)))

(assert (=> bs!1211318 (= (and (= (regOne!30116 (regTwo!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regTwo!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261566 lambda!261510))))

(assert (=> bs!1211317 (= (and (= (regOne!30116 (regTwo!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regTwo!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261566 lambda!261504))))

(declare-fun bs!1211319 () Bool)

(assert (= bs!1211319 (and b!5214761 d!1681107)))

(assert (=> bs!1211319 (not (= lambda!261566 lambda!261498))))

(declare-fun bs!1211320 () Bool)

(assert (= bs!1211320 (and b!5214761 b!5213645)))

(assert (=> bs!1211320 (not (= lambda!261566 lambda!261480))))

(assert (=> bs!1211320 (= (and (= (regOne!30116 (regTwo!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regTwo!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261566 lambda!261481))))

(declare-fun bs!1211321 () Bool)

(assert (= bs!1211321 (and b!5214761 b!5214760)))

(assert (=> bs!1211321 (not (= lambda!261566 lambda!261565))))

(declare-fun bs!1211322 () Bool)

(assert (= bs!1211322 (and b!5214761 b!5213898)))

(assert (=> bs!1211322 (not (= lambda!261566 lambda!261509))))

(assert (=> b!5214761 true))

(assert (=> b!5214761 true))

(declare-fun d!1681361 () Bool)

(declare-fun c!899494 () Bool)

(assert (=> d!1681361 (= c!899494 (is-EmptyExpr!14802 (regTwo!30117 r!7292)))))

(declare-fun e!3246232 () Bool)

(assert (=> d!1681361 (= (matchRSpec!1905 (regTwo!30117 r!7292) s!2326) e!3246232)))

(declare-fun b!5214753 () Bool)

(declare-fun e!3246234 () Bool)

(assert (=> b!5214753 (= e!3246234 (= s!2326 (Cons!60582 (c!899215 (regTwo!30117 r!7292)) Nil!60582)))))

(declare-fun b!5214754 () Bool)

(declare-fun e!3246233 () Bool)

(assert (=> b!5214754 (= e!3246233 (matchRSpec!1905 (regTwo!30117 (regTwo!30117 r!7292)) s!2326))))

(declare-fun b!5214755 () Bool)

(declare-fun e!3246231 () Bool)

(assert (=> b!5214755 (= e!3246231 e!3246233)))

(declare-fun res!2214699 () Bool)

(assert (=> b!5214755 (= res!2214699 (matchRSpec!1905 (regOne!30117 (regTwo!30117 r!7292)) s!2326))))

(assert (=> b!5214755 (=> res!2214699 e!3246233)))

(declare-fun b!5214756 () Bool)

(declare-fun e!3246229 () Bool)

(assert (=> b!5214756 (= e!3246231 e!3246229)))

(declare-fun c!899495 () Bool)

(assert (=> b!5214756 (= c!899495 (is-Star!14802 (regTwo!30117 r!7292)))))

(declare-fun b!5214757 () Bool)

(declare-fun call!367495 () Bool)

(assert (=> b!5214757 (= e!3246232 call!367495)))

(declare-fun b!5214758 () Bool)

(declare-fun c!899497 () Bool)

(assert (=> b!5214758 (= c!899497 (is-Union!14802 (regTwo!30117 r!7292)))))

(assert (=> b!5214758 (= e!3246234 e!3246231)))

(declare-fun b!5214759 () Bool)

(declare-fun res!2214701 () Bool)

(declare-fun e!3246228 () Bool)

(assert (=> b!5214759 (=> res!2214701 e!3246228)))

(assert (=> b!5214759 (= res!2214701 call!367495)))

(assert (=> b!5214759 (= e!3246229 e!3246228)))

(declare-fun call!367494 () Bool)

(assert (=> b!5214760 (= e!3246228 call!367494)))

(assert (=> b!5214761 (= e!3246229 call!367494)))

(declare-fun b!5214762 () Bool)

(declare-fun e!3246230 () Bool)

(assert (=> b!5214762 (= e!3246232 e!3246230)))

(declare-fun res!2214700 () Bool)

(assert (=> b!5214762 (= res!2214700 (not (is-EmptyLang!14802 (regTwo!30117 r!7292))))))

(assert (=> b!5214762 (=> (not res!2214700) (not e!3246230))))

(declare-fun bm!367489 () Bool)

(assert (=> bm!367489 (= call!367494 (Exists!1983 (ite c!899495 lambda!261565 lambda!261566)))))

(declare-fun b!5214763 () Bool)

(declare-fun c!899496 () Bool)

(assert (=> b!5214763 (= c!899496 (is-ElementMatch!14802 (regTwo!30117 r!7292)))))

(assert (=> b!5214763 (= e!3246230 e!3246234)))

(declare-fun bm!367490 () Bool)

(assert (=> bm!367490 (= call!367495 (isEmpty!32499 s!2326))))

(assert (= (and d!1681361 c!899494) b!5214757))

(assert (= (and d!1681361 (not c!899494)) b!5214762))

(assert (= (and b!5214762 res!2214700) b!5214763))

(assert (= (and b!5214763 c!899496) b!5214753))

(assert (= (and b!5214763 (not c!899496)) b!5214758))

(assert (= (and b!5214758 c!899497) b!5214755))

(assert (= (and b!5214758 (not c!899497)) b!5214756))

(assert (= (and b!5214755 (not res!2214699)) b!5214754))

(assert (= (and b!5214756 c!899495) b!5214759))

(assert (= (and b!5214756 (not c!899495)) b!5214761))

(assert (= (and b!5214759 (not res!2214701)) b!5214760))

(assert (= (or b!5214760 b!5214761) bm!367489))

(assert (= (or b!5214757 b!5214759) bm!367490))

(declare-fun m!6263604 () Bool)

(assert (=> b!5214754 m!6263604))

(declare-fun m!6263606 () Bool)

(assert (=> b!5214755 m!6263606))

(declare-fun m!6263608 () Bool)

(assert (=> bm!367489 m!6263608))

(assert (=> bm!367490 m!6262970))

(assert (=> b!5213892 d!1681361))

(declare-fun d!1681363 () Bool)

(assert (=> d!1681363 (= (Exists!1983 lambda!261503) (choose!38759 lambda!261503))))

(declare-fun bs!1211323 () Bool)

(assert (= bs!1211323 d!1681363))

(declare-fun m!6263610 () Bool)

(assert (=> bs!1211323 m!6263610))

(assert (=> d!1681109 d!1681363))

(declare-fun d!1681365 () Bool)

(assert (=> d!1681365 (= (Exists!1983 lambda!261504) (choose!38759 lambda!261504))))

(declare-fun bs!1211324 () Bool)

(assert (= bs!1211324 d!1681365))

(declare-fun m!6263612 () Bool)

(assert (=> bs!1211324 m!6263612))

(assert (=> d!1681109 d!1681365))

(declare-fun bs!1211325 () Bool)

(declare-fun d!1681367 () Bool)

(assert (= bs!1211325 (and d!1681367 d!1681355)))

(declare-fun lambda!261571 () Int)

(assert (=> bs!1211325 (= lambda!261571 lambda!261563)))

(declare-fun bs!1211326 () Bool)

(assert (= bs!1211326 (and d!1681367 d!1681109)))

(assert (=> bs!1211326 (= lambda!261571 lambda!261503)))

(declare-fun bs!1211327 () Bool)

(assert (= bs!1211327 (and d!1681367 b!5213899)))

(assert (=> bs!1211327 (not (= lambda!261571 lambda!261510))))

(assert (=> bs!1211326 (not (= lambda!261571 lambda!261504))))

(declare-fun bs!1211328 () Bool)

(assert (= bs!1211328 (and d!1681367 b!5214761)))

(assert (=> bs!1211328 (not (= lambda!261571 lambda!261566))))

(declare-fun bs!1211329 () Bool)

(assert (= bs!1211329 (and d!1681367 d!1681107)))

(assert (=> bs!1211329 (= lambda!261571 lambda!261498)))

(declare-fun bs!1211330 () Bool)

(assert (= bs!1211330 (and d!1681367 b!5213645)))

(assert (=> bs!1211330 (= lambda!261571 lambda!261480)))

(assert (=> bs!1211330 (not (= lambda!261571 lambda!261481))))

(declare-fun bs!1211331 () Bool)

(assert (= bs!1211331 (and d!1681367 b!5214760)))

(assert (=> bs!1211331 (not (= lambda!261571 lambda!261565))))

(declare-fun bs!1211332 () Bool)

(assert (= bs!1211332 (and d!1681367 b!5213898)))

(assert (=> bs!1211332 (not (= lambda!261571 lambda!261509))))

(assert (=> d!1681367 true))

(assert (=> d!1681367 true))

(assert (=> d!1681367 true))

(declare-fun lambda!261572 () Int)

(assert (=> bs!1211325 (not (= lambda!261572 lambda!261563))))

(assert (=> bs!1211326 (not (= lambda!261572 lambda!261503))))

(assert (=> bs!1211327 (= lambda!261572 lambda!261510)))

(assert (=> bs!1211326 (= lambda!261572 lambda!261504)))

(declare-fun bs!1211333 () Bool)

(assert (= bs!1211333 d!1681367))

(assert (=> bs!1211333 (not (= lambda!261572 lambda!261571))))

(assert (=> bs!1211328 (= (and (= (regOne!30116 r!7292) (regOne!30116 (regTwo!30117 r!7292))) (= (regTwo!30116 r!7292) (regTwo!30116 (regTwo!30117 r!7292)))) (= lambda!261572 lambda!261566))))

(assert (=> bs!1211329 (not (= lambda!261572 lambda!261498))))

(assert (=> bs!1211330 (not (= lambda!261572 lambda!261480))))

(assert (=> bs!1211330 (= lambda!261572 lambda!261481)))

(assert (=> bs!1211331 (not (= lambda!261572 lambda!261565))))

(assert (=> bs!1211332 (not (= lambda!261572 lambda!261509))))

(assert (=> d!1681367 true))

(assert (=> d!1681367 true))

(assert (=> d!1681367 true))

(assert (=> d!1681367 (= (Exists!1983 lambda!261571) (Exists!1983 lambda!261572))))

(assert (=> d!1681367 true))

(declare-fun _$90!1003 () Unit!152474)

(assert (=> d!1681367 (= (choose!38761 (regOne!30116 r!7292) (regTwo!30116 r!7292) s!2326) _$90!1003)))

(declare-fun m!6263614 () Bool)

(assert (=> bs!1211333 m!6263614))

(declare-fun m!6263616 () Bool)

(assert (=> bs!1211333 m!6263616))

(assert (=> d!1681109 d!1681367))

(assert (=> d!1681109 d!1681273))

(declare-fun bm!367491 () Bool)

(declare-fun call!367501 () (Set Context!8372))

(declare-fun call!367499 () (Set Context!8372))

(assert (=> bm!367491 (= call!367501 call!367499)))

(declare-fun bm!367492 () Bool)

(declare-fun c!899502 () Bool)

(declare-fun c!899501 () Bool)

(declare-fun call!367496 () List!60705)

(assert (=> bm!367492 (= call!367496 ($colon$colon!1278 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))) (ite (or c!899501 c!899502) (regTwo!30116 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))))

(declare-fun b!5214772 () Bool)

(declare-fun e!3246239 () (Set Context!8372))

(declare-fun e!3246243 () (Set Context!8372))

(assert (=> b!5214772 (= e!3246239 e!3246243)))

(declare-fun c!899500 () Bool)

(assert (=> b!5214772 (= c!899500 (is-Union!14802 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))

(declare-fun b!5214773 () Bool)

(declare-fun e!3246241 () (Set Context!8372))

(declare-fun call!367498 () (Set Context!8372))

(assert (=> b!5214773 (= e!3246241 call!367498)))

(declare-fun bm!367493 () Bool)

(declare-fun call!367500 () List!60705)

(assert (=> bm!367493 (= call!367499 (derivationStepZipperDown!250 (ite c!899500 (regOne!30117 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (ite c!899501 (regTwo!30116 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (ite c!899502 (regOne!30116 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (reg!15131 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))) (ite (or c!899500 c!899501) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (Context!8373 call!367500)) (h!67030 s!2326)))))

(declare-fun b!5214774 () Bool)

(assert (=> b!5214774 (= e!3246239 (set.insert (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (as set.empty (Set Context!8372))))))

(declare-fun b!5214775 () Bool)

(declare-fun e!3246240 () (Set Context!8372))

(assert (=> b!5214775 (= e!3246240 (as set.empty (Set Context!8372)))))

(declare-fun b!5214776 () Bool)

(declare-fun e!3246244 () (Set Context!8372))

(declare-fun call!367497 () (Set Context!8372))

(assert (=> b!5214776 (= e!3246244 (set.union call!367497 call!367501))))

(declare-fun b!5214777 () Bool)

(assert (=> b!5214777 (= e!3246240 call!367498)))

(declare-fun b!5214778 () Bool)

(declare-fun e!3246242 () Bool)

(assert (=> b!5214778 (= e!3246242 (nullable!4971 (regOne!30116 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))))))

(declare-fun bm!367494 () Bool)

(assert (=> bm!367494 (= call!367500 call!367496)))

(declare-fun b!5214779 () Bool)

(assert (=> b!5214779 (= c!899501 e!3246242)))

(declare-fun res!2214710 () Bool)

(assert (=> b!5214779 (=> (not res!2214710) (not e!3246242))))

(assert (=> b!5214779 (= res!2214710 (is-Concat!23647 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))

(assert (=> b!5214779 (= e!3246243 e!3246244)))

(declare-fun b!5214780 () Bool)

(assert (=> b!5214780 (= e!3246244 e!3246241)))

(assert (=> b!5214780 (= c!899502 (is-Concat!23647 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))

(declare-fun bm!367495 () Bool)

(assert (=> bm!367495 (= call!367497 (derivationStepZipperDown!250 (ite c!899500 (regTwo!30117 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (regOne!30116 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))))) (ite c!899500 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (Context!8373 call!367496)) (h!67030 s!2326)))))

(declare-fun b!5214781 () Bool)

(declare-fun c!899498 () Bool)

(assert (=> b!5214781 (= c!899498 (is-Star!14802 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))

(assert (=> b!5214781 (= e!3246241 e!3246240)))

(declare-fun b!5214782 () Bool)

(assert (=> b!5214782 (= e!3246243 (set.union call!367499 call!367497))))

(declare-fun d!1681369 () Bool)

(declare-fun c!899499 () Bool)

(assert (=> d!1681369 (= c!899499 (and (is-ElementMatch!14802 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (= (c!899215 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (h!67030 s!2326))))))

(assert (=> d!1681369 (= (derivationStepZipperDown!250 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (h!67030 s!2326)) e!3246239)))

(declare-fun bm!367496 () Bool)

(assert (=> bm!367496 (= call!367498 call!367501)))

(assert (= (and d!1681369 c!899499) b!5214774))

(assert (= (and d!1681369 (not c!899499)) b!5214772))

(assert (= (and b!5214772 c!899500) b!5214782))

(assert (= (and b!5214772 (not c!899500)) b!5214779))

(assert (= (and b!5214779 res!2214710) b!5214778))

(assert (= (and b!5214779 c!899501) b!5214776))

(assert (= (and b!5214779 (not c!899501)) b!5214780))

(assert (= (and b!5214780 c!899502) b!5214773))

(assert (= (and b!5214780 (not c!899502)) b!5214781))

(assert (= (and b!5214781 c!899498) b!5214777))

(assert (= (and b!5214781 (not c!899498)) b!5214775))

(assert (= (or b!5214773 b!5214777) bm!367494))

(assert (= (or b!5214773 b!5214777) bm!367496))

(assert (= (or b!5214776 bm!367494) bm!367492))

(assert (= (or b!5214776 bm!367496) bm!367491))

(assert (= (or b!5214782 b!5214776) bm!367495))

(assert (= (or b!5214782 bm!367491) bm!367493))

(declare-fun m!6263618 () Bool)

(assert (=> bm!367495 m!6263618))

(declare-fun m!6263620 () Bool)

(assert (=> b!5214778 m!6263620))

(declare-fun m!6263622 () Bool)

(assert (=> bm!367492 m!6263622))

(declare-fun m!6263624 () Bool)

(assert (=> b!5214774 m!6263624))

(declare-fun m!6263626 () Bool)

(assert (=> bm!367493 m!6263626))

(assert (=> bm!367384 d!1681369))

(assert (=> bs!1211237 d!1681121))

(declare-fun d!1681371 () Bool)

(assert (=> d!1681371 (= (isEmpty!32496 (tail!10273 (exprs!4686 (h!67031 zl!343)))) (is-Nil!60581 (tail!10273 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> b!5214130 d!1681371))

(declare-fun d!1681373 () Bool)

(assert (=> d!1681373 (= (tail!10273 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343))))))

(assert (=> b!5214130 d!1681373))

(declare-fun bs!1211334 () Bool)

(declare-fun d!1681375 () Bool)

(assert (= bs!1211334 (and d!1681375 d!1681297)))

(declare-fun lambda!261573 () Int)

(assert (=> bs!1211334 (= lambda!261573 lambda!261554)))

(assert (=> d!1681375 (= (nullableZipper!1228 (set.union lt!2142499 lt!2142487)) (exists!1965 (set.union lt!2142499 lt!2142487) lambda!261573))))

(declare-fun bs!1211335 () Bool)

(assert (= bs!1211335 d!1681375))

(declare-fun m!6263628 () Bool)

(assert (=> bs!1211335 m!6263628))

(assert (=> b!5214028 d!1681375))

(assert (=> d!1681167 d!1681267))

(assert (=> b!5213931 d!1681303))

(declare-fun d!1681377 () Bool)

(assert (=> d!1681377 (= (isEmpty!32500 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326)) (not (is-Some!14912 (findConcatSeparation!1327 (regOne!30116 r!7292) (regTwo!30116 r!7292) Nil!60582 s!2326 s!2326))))))

(assert (=> d!1681111 d!1681377))

(declare-fun bm!367497 () Bool)

(declare-fun call!367507 () (Set Context!8372))

(declare-fun call!367505 () (Set Context!8372))

(assert (=> bm!367497 (= call!367507 call!367505)))

(declare-fun c!899507 () Bool)

(declare-fun bm!367498 () Bool)

(declare-fun c!899506 () Bool)

(declare-fun call!367502 () List!60705)

(assert (=> bm!367498 (= call!367502 ($colon$colon!1278 (exprs!4686 (ite c!899240 lt!2142491 (Context!8373 call!367358))) (ite (or c!899506 c!899507) (regTwo!30116 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))))))))

(declare-fun b!5214783 () Bool)

(declare-fun e!3246245 () (Set Context!8372))

(declare-fun e!3246249 () (Set Context!8372))

(assert (=> b!5214783 (= e!3246245 e!3246249)))

(declare-fun c!899505 () Bool)

(assert (=> b!5214783 (= c!899505 (is-Union!14802 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))))))

(declare-fun b!5214784 () Bool)

(declare-fun e!3246247 () (Set Context!8372))

(declare-fun call!367504 () (Set Context!8372))

(assert (=> b!5214784 (= e!3246247 call!367504)))

(declare-fun bm!367499 () Bool)

(declare-fun call!367506 () List!60705)

(assert (=> bm!367499 (= call!367505 (derivationStepZipperDown!250 (ite c!899505 (regOne!30117 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (ite c!899506 (regTwo!30116 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (ite c!899507 (regOne!30116 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (reg!15131 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))))))) (ite (or c!899505 c!899506) (ite c!899240 lt!2142491 (Context!8373 call!367358)) (Context!8373 call!367506)) (h!67030 s!2326)))))

(declare-fun b!5214785 () Bool)

(assert (=> b!5214785 (= e!3246245 (set.insert (ite c!899240 lt!2142491 (Context!8373 call!367358)) (as set.empty (Set Context!8372))))))

(declare-fun b!5214786 () Bool)

(declare-fun e!3246246 () (Set Context!8372))

(assert (=> b!5214786 (= e!3246246 (as set.empty (Set Context!8372)))))

(declare-fun b!5214787 () Bool)

(declare-fun e!3246250 () (Set Context!8372))

(declare-fun call!367503 () (Set Context!8372))

(assert (=> b!5214787 (= e!3246250 (set.union call!367503 call!367507))))

(declare-fun b!5214788 () Bool)

(assert (=> b!5214788 (= e!3246246 call!367504)))

(declare-fun b!5214789 () Bool)

(declare-fun e!3246248 () Bool)

(assert (=> b!5214789 (= e!3246248 (nullable!4971 (regOne!30116 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))))))))

(declare-fun bm!367500 () Bool)

(assert (=> bm!367500 (= call!367506 call!367502)))

(declare-fun b!5214790 () Bool)

(assert (=> b!5214790 (= c!899506 e!3246248)))

(declare-fun res!2214711 () Bool)

(assert (=> b!5214790 (=> (not res!2214711) (not e!3246248))))

(assert (=> b!5214790 (= res!2214711 (is-Concat!23647 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))))))

(assert (=> b!5214790 (= e!3246249 e!3246250)))

(declare-fun b!5214791 () Bool)

(assert (=> b!5214791 (= e!3246250 e!3246247)))

(assert (=> b!5214791 (= c!899507 (is-Concat!23647 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))))))

(declare-fun bm!367501 () Bool)

(assert (=> bm!367501 (= call!367503 (derivationStepZipperDown!250 (ite c!899505 (regTwo!30117 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (regOne!30116 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))))) (ite c!899505 (ite c!899240 lt!2142491 (Context!8373 call!367358)) (Context!8373 call!367502)) (h!67030 s!2326)))))

(declare-fun b!5214792 () Bool)

(declare-fun c!899503 () Bool)

(assert (=> b!5214792 (= c!899503 (is-Star!14802 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))))))

(assert (=> b!5214792 (= e!3246247 e!3246246)))

(declare-fun b!5214793 () Bool)

(assert (=> b!5214793 (= e!3246249 (set.union call!367505 call!367503))))

(declare-fun d!1681379 () Bool)

(declare-fun c!899504 () Bool)

(assert (=> d!1681379 (= c!899504 (and (is-ElementMatch!14802 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (= (c!899215 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))))) (h!67030 s!2326))))))

(assert (=> d!1681379 (= (derivationStepZipperDown!250 (ite c!899240 (regTwo!30117 (regTwo!30117 (regOne!30116 r!7292))) (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))) (ite c!899240 lt!2142491 (Context!8373 call!367358)) (h!67030 s!2326)) e!3246245)))

(declare-fun bm!367502 () Bool)

(assert (=> bm!367502 (= call!367504 call!367507)))

(assert (= (and d!1681379 c!899504) b!5214785))

(assert (= (and d!1681379 (not c!899504)) b!5214783))

(assert (= (and b!5214783 c!899505) b!5214793))

(assert (= (and b!5214783 (not c!899505)) b!5214790))

(assert (= (and b!5214790 res!2214711) b!5214789))

(assert (= (and b!5214790 c!899506) b!5214787))

(assert (= (and b!5214790 (not c!899506)) b!5214791))

(assert (= (and b!5214791 c!899507) b!5214784))

(assert (= (and b!5214791 (not c!899507)) b!5214792))

(assert (= (and b!5214792 c!899503) b!5214788))

(assert (= (and b!5214792 (not c!899503)) b!5214786))

(assert (= (or b!5214784 b!5214788) bm!367500))

(assert (= (or b!5214784 b!5214788) bm!367502))

(assert (= (or b!5214787 bm!367500) bm!367498))

(assert (= (or b!5214787 bm!367502) bm!367497))

(assert (= (or b!5214793 b!5214787) bm!367501))

(assert (= (or b!5214793 bm!367497) bm!367499))

(declare-fun m!6263630 () Bool)

(assert (=> bm!367501 m!6263630))

(declare-fun m!6263632 () Bool)

(assert (=> b!5214789 m!6263632))

(declare-fun m!6263634 () Bool)

(assert (=> bm!367498 m!6263634))

(declare-fun m!6263636 () Bool)

(assert (=> b!5214785 m!6263636))

(declare-fun m!6263638 () Bool)

(assert (=> bm!367499 m!6263638))

(assert (=> bm!367357 d!1681379))

(declare-fun d!1681381 () Bool)

(assert (=> d!1681381 (= (nullable!4971 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))) (nullableFct!1380 (h!67029 (exprs!4686 (Context!8373 (Cons!60581 (h!67029 (exprs!4686 (h!67031 zl!343))) (t!373870 (exprs!4686 (h!67031 zl!343)))))))))))

(declare-fun bs!1211336 () Bool)

(assert (= bs!1211336 d!1681381))

(declare-fun m!6263640 () Bool)

(assert (=> bs!1211336 m!6263640))

(assert (=> b!5213976 d!1681381))

(assert (=> b!5214027 d!1681167))

(declare-fun e!3246252 () (Set Context!8372))

(declare-fun b!5214794 () Bool)

(declare-fun call!367508 () (Set Context!8372))

(assert (=> b!5214794 (= e!3246252 (set.union call!367508 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496)))))) (h!67030 s!2326))))))

(declare-fun b!5214795 () Bool)

(declare-fun e!3246251 () Bool)

(assert (=> b!5214795 (= e!3246251 (nullable!4971 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496)))))))))

(declare-fun d!1681383 () Bool)

(declare-fun c!899508 () Bool)

(assert (=> d!1681383 (= c!899508 e!3246251)))

(declare-fun res!2214712 () Bool)

(assert (=> d!1681383 (=> (not res!2214712) (not e!3246251))))

(assert (=> d!1681383 (= res!2214712 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496))))))))

(assert (=> d!1681383 (= (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (h!67030 s!2326)) e!3246252)))

(declare-fun b!5214796 () Bool)

(declare-fun e!3246253 () (Set Context!8372))

(assert (=> b!5214796 (= e!3246252 e!3246253)))

(declare-fun c!899509 () Bool)

(assert (=> b!5214796 (= c!899509 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496))))))))

(declare-fun b!5214797 () Bool)

(assert (=> b!5214797 (= e!3246253 (as set.empty (Set Context!8372)))))

(declare-fun bm!367503 () Bool)

(assert (=> bm!367503 (= call!367508 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496))))) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496)))))) (h!67030 s!2326)))))

(declare-fun b!5214798 () Bool)

(assert (=> b!5214798 (= e!3246253 call!367508)))

(assert (= (and d!1681383 res!2214712) b!5214795))

(assert (= (and d!1681383 c!899508) b!5214794))

(assert (= (and d!1681383 (not c!899508)) b!5214796))

(assert (= (and b!5214796 c!899509) b!5214798))

(assert (= (and b!5214796 (not c!899509)) b!5214797))

(assert (= (or b!5214794 b!5214798) bm!367503))

(declare-fun m!6263642 () Bool)

(assert (=> b!5214794 m!6263642))

(declare-fun m!6263644 () Bool)

(assert (=> b!5214795 m!6263644))

(declare-fun m!6263646 () Bool)

(assert (=> bm!367503 m!6263646))

(assert (=> b!5214011 d!1681383))

(declare-fun bm!367504 () Bool)

(declare-fun call!367509 () Bool)

(declare-fun call!367511 () Bool)

(assert (=> bm!367504 (= call!367509 call!367511)))

(declare-fun b!5214799 () Bool)

(declare-fun e!3246259 () Bool)

(declare-fun e!3246256 () Bool)

(assert (=> b!5214799 (= e!3246259 e!3246256)))

(declare-fun c!899510 () Bool)

(assert (=> b!5214799 (= c!899510 (is-Star!14802 lt!2142600))))

(declare-fun bm!367505 () Bool)

(declare-fun call!367510 () Bool)

(declare-fun c!899511 () Bool)

(assert (=> bm!367505 (= call!367510 (validRegex!6538 (ite c!899511 (regTwo!30117 lt!2142600) (regTwo!30116 lt!2142600))))))

(declare-fun b!5214800 () Bool)

(declare-fun res!2214715 () Bool)

(declare-fun e!3246254 () Bool)

(assert (=> b!5214800 (=> res!2214715 e!3246254)))

(assert (=> b!5214800 (= res!2214715 (not (is-Concat!23647 lt!2142600)))))

(declare-fun e!3246258 () Bool)

(assert (=> b!5214800 (= e!3246258 e!3246254)))

(declare-fun b!5214801 () Bool)

(declare-fun e!3246255 () Bool)

(assert (=> b!5214801 (= e!3246254 e!3246255)))

(declare-fun res!2214716 () Bool)

(assert (=> b!5214801 (=> (not res!2214716) (not e!3246255))))

(assert (=> b!5214801 (= res!2214716 call!367509)))

(declare-fun b!5214802 () Bool)

(assert (=> b!5214802 (= e!3246256 e!3246258)))

(assert (=> b!5214802 (= c!899511 (is-Union!14802 lt!2142600))))

(declare-fun d!1681385 () Bool)

(declare-fun res!2214713 () Bool)

(assert (=> d!1681385 (=> res!2214713 e!3246259)))

(assert (=> d!1681385 (= res!2214713 (is-ElementMatch!14802 lt!2142600))))

(assert (=> d!1681385 (= (validRegex!6538 lt!2142600) e!3246259)))

(declare-fun b!5214803 () Bool)

(declare-fun res!2214717 () Bool)

(declare-fun e!3246257 () Bool)

(assert (=> b!5214803 (=> (not res!2214717) (not e!3246257))))

(assert (=> b!5214803 (= res!2214717 call!367509)))

(assert (=> b!5214803 (= e!3246258 e!3246257)))

(declare-fun b!5214804 () Bool)

(declare-fun e!3246260 () Bool)

(assert (=> b!5214804 (= e!3246260 call!367511)))

(declare-fun b!5214805 () Bool)

(assert (=> b!5214805 (= e!3246255 call!367510)))

(declare-fun bm!367506 () Bool)

(assert (=> bm!367506 (= call!367511 (validRegex!6538 (ite c!899510 (reg!15131 lt!2142600) (ite c!899511 (regOne!30117 lt!2142600) (regOne!30116 lt!2142600)))))))

(declare-fun b!5214806 () Bool)

(assert (=> b!5214806 (= e!3246257 call!367510)))

(declare-fun b!5214807 () Bool)

(assert (=> b!5214807 (= e!3246256 e!3246260)))

(declare-fun res!2214714 () Bool)

(assert (=> b!5214807 (= res!2214714 (not (nullable!4971 (reg!15131 lt!2142600))))))

(assert (=> b!5214807 (=> (not res!2214714) (not e!3246260))))

(assert (= (and d!1681385 (not res!2214713)) b!5214799))

(assert (= (and b!5214799 c!899510) b!5214807))

(assert (= (and b!5214799 (not c!899510)) b!5214802))

(assert (= (and b!5214807 res!2214714) b!5214804))

(assert (= (and b!5214802 c!899511) b!5214803))

(assert (= (and b!5214802 (not c!899511)) b!5214800))

(assert (= (and b!5214803 res!2214717) b!5214806))

(assert (= (and b!5214800 (not res!2214715)) b!5214801))

(assert (= (and b!5214801 res!2214716) b!5214805))

(assert (= (or b!5214806 b!5214805) bm!367505))

(assert (= (or b!5214803 b!5214801) bm!367504))

(assert (= (or b!5214804 bm!367504) bm!367506))

(declare-fun m!6263648 () Bool)

(assert (=> bm!367505 m!6263648))

(declare-fun m!6263650 () Bool)

(assert (=> bm!367506 m!6263650))

(declare-fun m!6263652 () Bool)

(assert (=> b!5214807 m!6263652))

(assert (=> d!1681171 d!1681385))

(declare-fun d!1681387 () Bool)

(declare-fun res!2214718 () Bool)

(declare-fun e!3246261 () Bool)

(assert (=> d!1681387 (=> res!2214718 e!3246261)))

(assert (=> d!1681387 (= res!2214718 (is-Nil!60581 (unfocusZipperList!244 zl!343)))))

(assert (=> d!1681387 (= (forall!14236 (unfocusZipperList!244 zl!343) lambda!261516) e!3246261)))

(declare-fun b!5214808 () Bool)

(declare-fun e!3246262 () Bool)

(assert (=> b!5214808 (= e!3246261 e!3246262)))

(declare-fun res!2214719 () Bool)

(assert (=> b!5214808 (=> (not res!2214719) (not e!3246262))))

(assert (=> b!5214808 (= res!2214719 (dynLambda!23936 lambda!261516 (h!67029 (unfocusZipperList!244 zl!343))))))

(declare-fun b!5214809 () Bool)

(assert (=> b!5214809 (= e!3246262 (forall!14236 (t!373870 (unfocusZipperList!244 zl!343)) lambda!261516))))

(assert (= (and d!1681387 (not res!2214718)) b!5214808))

(assert (= (and b!5214808 res!2214719) b!5214809))

(declare-fun b_lambda!201673 () Bool)

(assert (=> (not b_lambda!201673) (not b!5214808)))

(declare-fun m!6263654 () Bool)

(assert (=> b!5214808 m!6263654))

(declare-fun m!6263656 () Bool)

(assert (=> b!5214809 m!6263656))

(assert (=> d!1681171 d!1681387))

(declare-fun bm!367507 () Bool)

(declare-fun call!367517 () (Set Context!8372))

(declare-fun call!367515 () (Set Context!8372))

(assert (=> bm!367507 (= call!367517 call!367515)))

(declare-fun bm!367508 () Bool)

(declare-fun call!367512 () List!60705)

(declare-fun c!899516 () Bool)

(declare-fun c!899515 () Bool)

(assert (=> bm!367508 (= call!367512 ($colon$colon!1278 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142496)))) (ite (or c!899515 c!899516) (regTwo!30116 (h!67029 (exprs!4686 lt!2142496))) (h!67029 (exprs!4686 lt!2142496)))))))

(declare-fun b!5214810 () Bool)

(declare-fun e!3246263 () (Set Context!8372))

(declare-fun e!3246267 () (Set Context!8372))

(assert (=> b!5214810 (= e!3246263 e!3246267)))

(declare-fun c!899514 () Bool)

(assert (=> b!5214810 (= c!899514 (is-Union!14802 (h!67029 (exprs!4686 lt!2142496))))))

(declare-fun b!5214811 () Bool)

(declare-fun e!3246265 () (Set Context!8372))

(declare-fun call!367514 () (Set Context!8372))

(assert (=> b!5214811 (= e!3246265 call!367514)))

(declare-fun call!367516 () List!60705)

(declare-fun bm!367509 () Bool)

(assert (=> bm!367509 (= call!367515 (derivationStepZipperDown!250 (ite c!899514 (regOne!30117 (h!67029 (exprs!4686 lt!2142496))) (ite c!899515 (regTwo!30116 (h!67029 (exprs!4686 lt!2142496))) (ite c!899516 (regOne!30116 (h!67029 (exprs!4686 lt!2142496))) (reg!15131 (h!67029 (exprs!4686 lt!2142496)))))) (ite (or c!899514 c!899515) (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (Context!8373 call!367516)) (h!67030 s!2326)))))

(declare-fun b!5214812 () Bool)

(assert (=> b!5214812 (= e!3246263 (set.insert (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (as set.empty (Set Context!8372))))))

(declare-fun b!5214813 () Bool)

(declare-fun e!3246264 () (Set Context!8372))

(assert (=> b!5214813 (= e!3246264 (as set.empty (Set Context!8372)))))

(declare-fun b!5214814 () Bool)

(declare-fun e!3246268 () (Set Context!8372))

(declare-fun call!367513 () (Set Context!8372))

(assert (=> b!5214814 (= e!3246268 (set.union call!367513 call!367517))))

(declare-fun b!5214815 () Bool)

(assert (=> b!5214815 (= e!3246264 call!367514)))

(declare-fun b!5214816 () Bool)

(declare-fun e!3246266 () Bool)

(assert (=> b!5214816 (= e!3246266 (nullable!4971 (regOne!30116 (h!67029 (exprs!4686 lt!2142496)))))))

(declare-fun bm!367510 () Bool)

(assert (=> bm!367510 (= call!367516 call!367512)))

(declare-fun b!5214817 () Bool)

(assert (=> b!5214817 (= c!899515 e!3246266)))

(declare-fun res!2214720 () Bool)

(assert (=> b!5214817 (=> (not res!2214720) (not e!3246266))))

(assert (=> b!5214817 (= res!2214720 (is-Concat!23647 (h!67029 (exprs!4686 lt!2142496))))))

(assert (=> b!5214817 (= e!3246267 e!3246268)))

(declare-fun b!5214818 () Bool)

(assert (=> b!5214818 (= e!3246268 e!3246265)))

(assert (=> b!5214818 (= c!899516 (is-Concat!23647 (h!67029 (exprs!4686 lt!2142496))))))

(declare-fun bm!367511 () Bool)

(assert (=> bm!367511 (= call!367513 (derivationStepZipperDown!250 (ite c!899514 (regTwo!30117 (h!67029 (exprs!4686 lt!2142496))) (regOne!30116 (h!67029 (exprs!4686 lt!2142496)))) (ite c!899514 (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (Context!8373 call!367512)) (h!67030 s!2326)))))

(declare-fun b!5214819 () Bool)

(declare-fun c!899512 () Bool)

(assert (=> b!5214819 (= c!899512 (is-Star!14802 (h!67029 (exprs!4686 lt!2142496))))))

(assert (=> b!5214819 (= e!3246265 e!3246264)))

(declare-fun b!5214820 () Bool)

(assert (=> b!5214820 (= e!3246267 (set.union call!367515 call!367513))))

(declare-fun d!1681389 () Bool)

(declare-fun c!899513 () Bool)

(assert (=> d!1681389 (= c!899513 (and (is-ElementMatch!14802 (h!67029 (exprs!4686 lt!2142496))) (= (c!899215 (h!67029 (exprs!4686 lt!2142496))) (h!67030 s!2326))))))

(assert (=> d!1681389 (= (derivationStepZipperDown!250 (h!67029 (exprs!4686 lt!2142496)) (Context!8373 (t!373870 (exprs!4686 lt!2142496))) (h!67030 s!2326)) e!3246263)))

(declare-fun bm!367512 () Bool)

(assert (=> bm!367512 (= call!367514 call!367517)))

(assert (= (and d!1681389 c!899513) b!5214812))

(assert (= (and d!1681389 (not c!899513)) b!5214810))

(assert (= (and b!5214810 c!899514) b!5214820))

(assert (= (and b!5214810 (not c!899514)) b!5214817))

(assert (= (and b!5214817 res!2214720) b!5214816))

(assert (= (and b!5214817 c!899515) b!5214814))

(assert (= (and b!5214817 (not c!899515)) b!5214818))

(assert (= (and b!5214818 c!899516) b!5214811))

(assert (= (and b!5214818 (not c!899516)) b!5214819))

(assert (= (and b!5214819 c!899512) b!5214815))

(assert (= (and b!5214819 (not c!899512)) b!5214813))

(assert (= (or b!5214811 b!5214815) bm!367510))

(assert (= (or b!5214811 b!5214815) bm!367512))

(assert (= (or b!5214814 bm!367510) bm!367508))

(assert (= (or b!5214814 bm!367512) bm!367507))

(assert (= (or b!5214820 b!5214814) bm!367511))

(assert (= (or b!5214820 bm!367507) bm!367509))

(declare-fun m!6263658 () Bool)

(assert (=> bm!367511 m!6263658))

(declare-fun m!6263660 () Bool)

(assert (=> b!5214816 m!6263660))

(declare-fun m!6263662 () Bool)

(assert (=> bm!367508 m!6263662))

(declare-fun m!6263664 () Bool)

(assert (=> b!5214812 m!6263664))

(declare-fun m!6263666 () Bool)

(assert (=> bm!367509 m!6263666))

(assert (=> bm!367394 d!1681389))

(declare-fun d!1681391 () Bool)

(assert (=> d!1681391 (= (isConcat!287 lt!2142613) (is-Concat!23647 lt!2142613))))

(assert (=> b!5214127 d!1681391))

(declare-fun d!1681393 () Bool)

(assert (=> d!1681393 (= (nullable!4971 (reg!15131 r!7292)) (nullableFct!1380 (reg!15131 r!7292)))))

(declare-fun bs!1211337 () Bool)

(assert (= bs!1211337 d!1681393))

(declare-fun m!6263668 () Bool)

(assert (=> bs!1211337 m!6263668))

(assert (=> b!5214006 d!1681393))

(declare-fun b!5214835 () Bool)

(declare-fun e!3246283 () Bool)

(declare-fun call!367522 () Bool)

(assert (=> b!5214835 (= e!3246283 call!367522)))

(declare-fun b!5214836 () Bool)

(declare-fun e!3246282 () Bool)

(declare-fun e!3246286 () Bool)

(assert (=> b!5214836 (= e!3246282 e!3246286)))

(declare-fun c!899519 () Bool)

(assert (=> b!5214836 (= c!899519 (is-Union!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun bm!367517 () Bool)

(assert (=> bm!367517 (= call!367522 (nullable!4971 (ite c!899519 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(declare-fun b!5214837 () Bool)

(declare-fun e!3246285 () Bool)

(assert (=> b!5214837 (= e!3246285 call!367522)))

(declare-fun b!5214838 () Bool)

(assert (=> b!5214838 (= e!3246286 e!3246285)))

(declare-fun res!2214735 () Bool)

(declare-fun call!367523 () Bool)

(assert (=> b!5214838 (= res!2214735 call!367523)))

(assert (=> b!5214838 (=> (not res!2214735) (not e!3246285))))

(declare-fun b!5214839 () Bool)

(declare-fun e!3246281 () Bool)

(declare-fun e!3246284 () Bool)

(assert (=> b!5214839 (= e!3246281 e!3246284)))

(declare-fun res!2214732 () Bool)

(assert (=> b!5214839 (=> (not res!2214732) (not e!3246284))))

(assert (=> b!5214839 (= res!2214732 (and (not (is-EmptyLang!14802 (h!67029 (exprs!4686 (h!67031 zl!343))))) (not (is-ElementMatch!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(declare-fun b!5214840 () Bool)

(assert (=> b!5214840 (= e!3246284 e!3246282)))

(declare-fun res!2214731 () Bool)

(assert (=> b!5214840 (=> res!2214731 e!3246282)))

(assert (=> b!5214840 (= res!2214731 (is-Star!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun d!1681395 () Bool)

(declare-fun res!2214734 () Bool)

(assert (=> d!1681395 (=> res!2214734 e!3246281)))

(assert (=> d!1681395 (= res!2214734 (is-EmptyExpr!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> d!1681395 (= (nullableFct!1380 (h!67029 (exprs!4686 (h!67031 zl!343)))) e!3246281)))

(declare-fun bm!367518 () Bool)

(assert (=> bm!367518 (= call!367523 (nullable!4971 (ite c!899519 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(declare-fun b!5214841 () Bool)

(assert (=> b!5214841 (= e!3246286 e!3246283)))

(declare-fun res!2214733 () Bool)

(assert (=> b!5214841 (= res!2214733 call!367523)))

(assert (=> b!5214841 (=> res!2214733 e!3246283)))

(assert (= (and d!1681395 (not res!2214734)) b!5214839))

(assert (= (and b!5214839 res!2214732) b!5214840))

(assert (= (and b!5214840 (not res!2214731)) b!5214836))

(assert (= (and b!5214836 c!899519) b!5214841))

(assert (= (and b!5214836 (not c!899519)) b!5214838))

(assert (= (and b!5214841 (not res!2214733)) b!5214835))

(assert (= (and b!5214838 res!2214735) b!5214837))

(assert (= (or b!5214835 b!5214837) bm!367517))

(assert (= (or b!5214841 b!5214838) bm!367518))

(declare-fun m!6263670 () Bool)

(assert (=> bm!367517 m!6263670))

(declare-fun m!6263672 () Bool)

(assert (=> bm!367518 m!6263672))

(assert (=> d!1681119 d!1681395))

(declare-fun d!1681397 () Bool)

(assert (=> d!1681397 true))

(declare-fun setRes!33142 () Bool)

(assert (=> d!1681397 setRes!33142))

(declare-fun condSetEmpty!33142 () Bool)

(declare-fun res!2214736 () (Set Context!8372))

(assert (=> d!1681397 (= condSetEmpty!33142 (= res!2214736 (as set.empty (Set Context!8372))))))

(assert (=> d!1681397 (= (choose!38763 lt!2142484 lambda!261482) res!2214736)))

(declare-fun setIsEmpty!33142 () Bool)

(assert (=> setIsEmpty!33142 setRes!33142))

(declare-fun setNonEmpty!33142 () Bool)

(declare-fun tp!1462194 () Bool)

(declare-fun setElem!33142 () Context!8372)

(declare-fun e!3246287 () Bool)

(assert (=> setNonEmpty!33142 (= setRes!33142 (and tp!1462194 (inv!80253 setElem!33142) e!3246287))))

(declare-fun setRest!33142 () (Set Context!8372))

(assert (=> setNonEmpty!33142 (= res!2214736 (set.union (set.insert setElem!33142 (as set.empty (Set Context!8372))) setRest!33142))))

(declare-fun b!5214842 () Bool)

(declare-fun tp!1462195 () Bool)

(assert (=> b!5214842 (= e!3246287 tp!1462195)))

(assert (= (and d!1681397 condSetEmpty!33142) setIsEmpty!33142))

(assert (= (and d!1681397 (not condSetEmpty!33142)) setNonEmpty!33142))

(assert (= setNonEmpty!33142 b!5214842))

(declare-fun m!6263674 () Bool)

(assert (=> setNonEmpty!33142 m!6263674))

(assert (=> d!1681141 d!1681397))

(declare-fun b!5214845 () Bool)

(declare-fun res!2214738 () Bool)

(declare-fun e!3246289 () Bool)

(assert (=> b!5214845 (=> (not res!2214738) (not e!3246289))))

(declare-fun lt!2142669 () List!60706)

(assert (=> b!5214845 (= res!2214738 (= (size!39720 lt!2142669) (+ (size!39720 (_1!35304 (get!20815 lt!2142572))) (size!39720 (_2!35304 (get!20815 lt!2142572))))))))

(declare-fun b!5214846 () Bool)

(assert (=> b!5214846 (= e!3246289 (or (not (= (_2!35304 (get!20815 lt!2142572)) Nil!60582)) (= lt!2142669 (_1!35304 (get!20815 lt!2142572)))))))

(declare-fun b!5214844 () Bool)

(declare-fun e!3246288 () List!60706)

(assert (=> b!5214844 (= e!3246288 (Cons!60582 (h!67030 (_1!35304 (get!20815 lt!2142572))) (++!13208 (t!373871 (_1!35304 (get!20815 lt!2142572))) (_2!35304 (get!20815 lt!2142572)))))))

(declare-fun b!5214843 () Bool)

(assert (=> b!5214843 (= e!3246288 (_2!35304 (get!20815 lt!2142572)))))

(declare-fun d!1681399 () Bool)

(assert (=> d!1681399 e!3246289))

(declare-fun res!2214737 () Bool)

(assert (=> d!1681399 (=> (not res!2214737) (not e!3246289))))

(assert (=> d!1681399 (= res!2214737 (= (content!10736 lt!2142669) (set.union (content!10736 (_1!35304 (get!20815 lt!2142572))) (content!10736 (_2!35304 (get!20815 lt!2142572))))))))

(assert (=> d!1681399 (= lt!2142669 e!3246288)))

(declare-fun c!899520 () Bool)

(assert (=> d!1681399 (= c!899520 (is-Nil!60582 (_1!35304 (get!20815 lt!2142572))))))

(assert (=> d!1681399 (= (++!13208 (_1!35304 (get!20815 lt!2142572)) (_2!35304 (get!20815 lt!2142572))) lt!2142669)))

(assert (= (and d!1681399 c!899520) b!5214843))

(assert (= (and d!1681399 (not c!899520)) b!5214844))

(assert (= (and d!1681399 res!2214737) b!5214845))

(assert (= (and b!5214845 res!2214738) b!5214846))

(declare-fun m!6263676 () Bool)

(assert (=> b!5214845 m!6263676))

(declare-fun m!6263678 () Bool)

(assert (=> b!5214845 m!6263678))

(declare-fun m!6263680 () Bool)

(assert (=> b!5214845 m!6263680))

(declare-fun m!6263682 () Bool)

(assert (=> b!5214844 m!6263682))

(declare-fun m!6263684 () Bool)

(assert (=> d!1681399 m!6263684))

(declare-fun m!6263686 () Bool)

(assert (=> d!1681399 m!6263686))

(declare-fun m!6263688 () Bool)

(assert (=> d!1681399 m!6263688))

(assert (=> b!5213845 d!1681399))

(declare-fun d!1681401 () Bool)

(assert (=> d!1681401 (= (get!20815 lt!2142572) (v!50941 lt!2142572))))

(assert (=> b!5213845 d!1681401))

(declare-fun d!1681403 () Bool)

(assert (=> d!1681403 (= (isEmpty!32496 (unfocusZipperList!244 zl!343)) (is-Nil!60581 (unfocusZipperList!244 zl!343)))))

(assert (=> b!5214068 d!1681403))

(declare-fun bs!1211338 () Bool)

(declare-fun d!1681405 () Bool)

(assert (= bs!1211338 (and d!1681405 d!1681297)))

(declare-fun lambda!261574 () Int)

(assert (=> bs!1211338 (= lambda!261574 lambda!261554)))

(declare-fun bs!1211339 () Bool)

(assert (= bs!1211339 (and d!1681405 d!1681375)))

(assert (=> bs!1211339 (= lambda!261574 lambda!261573)))

(assert (=> d!1681405 (= (nullableZipper!1228 lt!2142494) (exists!1965 lt!2142494 lambda!261574))))

(declare-fun bs!1211340 () Bool)

(assert (= bs!1211340 d!1681405))

(declare-fun m!6263690 () Bool)

(assert (=> bs!1211340 m!6263690))

(assert (=> b!5214018 d!1681405))

(declare-fun e!3246291 () (Set Context!8372))

(declare-fun call!367524 () (Set Context!8372))

(declare-fun b!5214847 () Bool)

(assert (=> b!5214847 (= e!3246291 (set.union call!367524 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491)))))) (h!67030 s!2326))))))

(declare-fun b!5214848 () Bool)

(declare-fun e!3246290 () Bool)

(assert (=> b!5214848 (= e!3246290 (nullable!4971 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491)))))))))

(declare-fun d!1681407 () Bool)

(declare-fun c!899521 () Bool)

(assert (=> d!1681407 (= c!899521 e!3246290)))

(declare-fun res!2214739 () Bool)

(assert (=> d!1681407 (=> (not res!2214739) (not e!3246290))))

(assert (=> d!1681407 (= res!2214739 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491))))))))

(assert (=> d!1681407 (= (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (h!67030 s!2326)) e!3246291)))

(declare-fun b!5214849 () Bool)

(declare-fun e!3246292 () (Set Context!8372))

(assert (=> b!5214849 (= e!3246291 e!3246292)))

(declare-fun c!899522 () Bool)

(assert (=> b!5214849 (= c!899522 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491))))))))

(declare-fun b!5214850 () Bool)

(assert (=> b!5214850 (= e!3246292 (as set.empty (Set Context!8372)))))

(declare-fun bm!367519 () Bool)

(assert (=> bm!367519 (= call!367524 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491))))) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491)))))) (h!67030 s!2326)))))

(declare-fun b!5214851 () Bool)

(assert (=> b!5214851 (= e!3246292 call!367524)))

(assert (= (and d!1681407 res!2214739) b!5214848))

(assert (= (and d!1681407 c!899521) b!5214847))

(assert (= (and d!1681407 (not c!899521)) b!5214849))

(assert (= (and b!5214849 c!899522) b!5214851))

(assert (= (and b!5214849 (not c!899522)) b!5214850))

(assert (= (or b!5214847 b!5214851) bm!367519))

(declare-fun m!6263692 () Bool)

(assert (=> b!5214847 m!6263692))

(declare-fun m!6263694 () Bool)

(assert (=> b!5214848 m!6263694))

(declare-fun m!6263696 () Bool)

(assert (=> bm!367519 m!6263696))

(assert (=> b!5213959 d!1681407))

(declare-fun bm!367520 () Bool)

(declare-fun call!367530 () (Set Context!8372))

(declare-fun call!367528 () (Set Context!8372))

(assert (=> bm!367520 (= call!367530 call!367528)))

(declare-fun c!899526 () Bool)

(declare-fun call!367525 () List!60705)

(declare-fun c!899527 () Bool)

(declare-fun bm!367521 () Bool)

(assert (=> bm!367521 (= call!367525 ($colon$colon!1278 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 lt!2142491)))) (ite (or c!899526 c!899527) (regTwo!30116 (h!67029 (exprs!4686 lt!2142491))) (h!67029 (exprs!4686 lt!2142491)))))))

(declare-fun b!5214852 () Bool)

(declare-fun e!3246293 () (Set Context!8372))

(declare-fun e!3246297 () (Set Context!8372))

(assert (=> b!5214852 (= e!3246293 e!3246297)))

(declare-fun c!899525 () Bool)

(assert (=> b!5214852 (= c!899525 (is-Union!14802 (h!67029 (exprs!4686 lt!2142491))))))

(declare-fun b!5214853 () Bool)

(declare-fun e!3246295 () (Set Context!8372))

(declare-fun call!367527 () (Set Context!8372))

(assert (=> b!5214853 (= e!3246295 call!367527)))

(declare-fun bm!367522 () Bool)

(declare-fun call!367529 () List!60705)

(assert (=> bm!367522 (= call!367528 (derivationStepZipperDown!250 (ite c!899525 (regOne!30117 (h!67029 (exprs!4686 lt!2142491))) (ite c!899526 (regTwo!30116 (h!67029 (exprs!4686 lt!2142491))) (ite c!899527 (regOne!30116 (h!67029 (exprs!4686 lt!2142491))) (reg!15131 (h!67029 (exprs!4686 lt!2142491)))))) (ite (or c!899525 c!899526) (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (Context!8373 call!367529)) (h!67030 s!2326)))))

(declare-fun b!5214854 () Bool)

(assert (=> b!5214854 (= e!3246293 (set.insert (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (as set.empty (Set Context!8372))))))

(declare-fun b!5214855 () Bool)

(declare-fun e!3246294 () (Set Context!8372))

(assert (=> b!5214855 (= e!3246294 (as set.empty (Set Context!8372)))))

(declare-fun b!5214856 () Bool)

(declare-fun e!3246298 () (Set Context!8372))

(declare-fun call!367526 () (Set Context!8372))

(assert (=> b!5214856 (= e!3246298 (set.union call!367526 call!367530))))

(declare-fun b!5214857 () Bool)

(assert (=> b!5214857 (= e!3246294 call!367527)))

(declare-fun b!5214858 () Bool)

(declare-fun e!3246296 () Bool)

(assert (=> b!5214858 (= e!3246296 (nullable!4971 (regOne!30116 (h!67029 (exprs!4686 lt!2142491)))))))

(declare-fun bm!367523 () Bool)

(assert (=> bm!367523 (= call!367529 call!367525)))

(declare-fun b!5214859 () Bool)

(assert (=> b!5214859 (= c!899526 e!3246296)))

(declare-fun res!2214740 () Bool)

(assert (=> b!5214859 (=> (not res!2214740) (not e!3246296))))

(assert (=> b!5214859 (= res!2214740 (is-Concat!23647 (h!67029 (exprs!4686 lt!2142491))))))

(assert (=> b!5214859 (= e!3246297 e!3246298)))

(declare-fun b!5214860 () Bool)

(assert (=> b!5214860 (= e!3246298 e!3246295)))

(assert (=> b!5214860 (= c!899527 (is-Concat!23647 (h!67029 (exprs!4686 lt!2142491))))))

(declare-fun bm!367524 () Bool)

(assert (=> bm!367524 (= call!367526 (derivationStepZipperDown!250 (ite c!899525 (regTwo!30117 (h!67029 (exprs!4686 lt!2142491))) (regOne!30116 (h!67029 (exprs!4686 lt!2142491)))) (ite c!899525 (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (Context!8373 call!367525)) (h!67030 s!2326)))))

(declare-fun b!5214861 () Bool)

(declare-fun c!899523 () Bool)

(assert (=> b!5214861 (= c!899523 (is-Star!14802 (h!67029 (exprs!4686 lt!2142491))))))

(assert (=> b!5214861 (= e!3246295 e!3246294)))

(declare-fun b!5214862 () Bool)

(assert (=> b!5214862 (= e!3246297 (set.union call!367528 call!367526))))

(declare-fun d!1681409 () Bool)

(declare-fun c!899524 () Bool)

(assert (=> d!1681409 (= c!899524 (and (is-ElementMatch!14802 (h!67029 (exprs!4686 lt!2142491))) (= (c!899215 (h!67029 (exprs!4686 lt!2142491))) (h!67030 s!2326))))))

(assert (=> d!1681409 (= (derivationStepZipperDown!250 (h!67029 (exprs!4686 lt!2142491)) (Context!8373 (t!373870 (exprs!4686 lt!2142491))) (h!67030 s!2326)) e!3246293)))

(declare-fun bm!367525 () Bool)

(assert (=> bm!367525 (= call!367527 call!367530)))

(assert (= (and d!1681409 c!899524) b!5214854))

(assert (= (and d!1681409 (not c!899524)) b!5214852))

(assert (= (and b!5214852 c!899525) b!5214862))

(assert (= (and b!5214852 (not c!899525)) b!5214859))

(assert (= (and b!5214859 res!2214740) b!5214858))

(assert (= (and b!5214859 c!899526) b!5214856))

(assert (= (and b!5214859 (not c!899526)) b!5214860))

(assert (= (and b!5214860 c!899527) b!5214853))

(assert (= (and b!5214860 (not c!899527)) b!5214861))

(assert (= (and b!5214861 c!899523) b!5214857))

(assert (= (and b!5214861 (not c!899523)) b!5214855))

(assert (= (or b!5214853 b!5214857) bm!367523))

(assert (= (or b!5214853 b!5214857) bm!367525))

(assert (= (or b!5214856 bm!367523) bm!367521))

(assert (= (or b!5214856 bm!367525) bm!367520))

(assert (= (or b!5214862 b!5214856) bm!367524))

(assert (= (or b!5214862 bm!367520) bm!367522))

(declare-fun m!6263698 () Bool)

(assert (=> bm!367524 m!6263698))

(declare-fun m!6263700 () Bool)

(assert (=> b!5214858 m!6263700))

(declare-fun m!6263702 () Bool)

(assert (=> bm!367521 m!6263702))

(declare-fun m!6263704 () Bool)

(assert (=> b!5214854 m!6263704))

(declare-fun m!6263706 () Bool)

(assert (=> bm!367522 m!6263706))

(assert (=> bm!367377 d!1681409))

(declare-fun bm!367526 () Bool)

(declare-fun call!367536 () (Set Context!8372))

(declare-fun call!367534 () (Set Context!8372))

(assert (=> bm!367526 (= call!367536 call!367534)))

(declare-fun bm!367527 () Bool)

(declare-fun c!899531 () Bool)

(declare-fun call!367531 () List!60705)

(declare-fun c!899532 () Bool)

(assert (=> bm!367527 (= call!367531 ($colon$colon!1278 (exprs!4686 (ite (or c!899245 c!899246) lt!2142491 (Context!8373 call!367368))) (ite (or c!899531 c!899532) (regTwo!30116 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))))))))

(declare-fun b!5214863 () Bool)

(declare-fun e!3246299 () (Set Context!8372))

(declare-fun e!3246303 () (Set Context!8372))

(assert (=> b!5214863 (= e!3246299 e!3246303)))

(declare-fun c!899530 () Bool)

(assert (=> b!5214863 (= c!899530 (is-Union!14802 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))))))

(declare-fun b!5214864 () Bool)

(declare-fun e!3246301 () (Set Context!8372))

(declare-fun call!367533 () (Set Context!8372))

(assert (=> b!5214864 (= e!3246301 call!367533)))

(declare-fun bm!367528 () Bool)

(declare-fun call!367535 () List!60705)

(assert (=> bm!367528 (= call!367534 (derivationStepZipperDown!250 (ite c!899530 (regOne!30117 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (ite c!899531 (regTwo!30116 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (ite c!899532 (regOne!30116 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (reg!15131 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))))))) (ite (or c!899530 c!899531) (ite (or c!899245 c!899246) lt!2142491 (Context!8373 call!367368)) (Context!8373 call!367535)) (h!67030 s!2326)))))

(declare-fun b!5214865 () Bool)

(assert (=> b!5214865 (= e!3246299 (set.insert (ite (or c!899245 c!899246) lt!2142491 (Context!8373 call!367368)) (as set.empty (Set Context!8372))))))

(declare-fun b!5214866 () Bool)

(declare-fun e!3246300 () (Set Context!8372))

(assert (=> b!5214866 (= e!3246300 (as set.empty (Set Context!8372)))))

(declare-fun b!5214867 () Bool)

(declare-fun e!3246304 () (Set Context!8372))

(declare-fun call!367532 () (Set Context!8372))

(assert (=> b!5214867 (= e!3246304 (set.union call!367532 call!367536))))

(declare-fun b!5214868 () Bool)

(assert (=> b!5214868 (= e!3246300 call!367533)))

(declare-fun b!5214869 () Bool)

(declare-fun e!3246302 () Bool)

(assert (=> b!5214869 (= e!3246302 (nullable!4971 (regOne!30116 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))))))))

(declare-fun bm!367529 () Bool)

(assert (=> bm!367529 (= call!367535 call!367531)))

(declare-fun b!5214870 () Bool)

(assert (=> b!5214870 (= c!899531 e!3246302)))

(declare-fun res!2214741 () Bool)

(assert (=> b!5214870 (=> (not res!2214741) (not e!3246302))))

(assert (=> b!5214870 (= res!2214741 (is-Concat!23647 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))))))

(assert (=> b!5214870 (= e!3246303 e!3246304)))

(declare-fun b!5214871 () Bool)

(assert (=> b!5214871 (= e!3246304 e!3246301)))

(assert (=> b!5214871 (= c!899532 (is-Concat!23647 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))))))

(declare-fun bm!367530 () Bool)

(assert (=> bm!367530 (= call!367532 (derivationStepZipperDown!250 (ite c!899530 (regTwo!30117 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (regOne!30116 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))))) (ite c!899530 (ite (or c!899245 c!899246) lt!2142491 (Context!8373 call!367368)) (Context!8373 call!367531)) (h!67030 s!2326)))))

(declare-fun c!899528 () Bool)

(declare-fun b!5214872 () Bool)

(assert (=> b!5214872 (= c!899528 (is-Star!14802 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))))))

(assert (=> b!5214872 (= e!3246301 e!3246300)))

(declare-fun b!5214873 () Bool)

(assert (=> b!5214873 (= e!3246303 (set.union call!367534 call!367532))))

(declare-fun d!1681411 () Bool)

(declare-fun c!899529 () Bool)

(assert (=> d!1681411 (= c!899529 (and (is-ElementMatch!14802 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (= (c!899215 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292))))))) (h!67030 s!2326))))))

(assert (=> d!1681411 (= (derivationStepZipperDown!250 (ite c!899245 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (ite c!899246 (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))) (ite c!899247 (regOne!30116 (regOne!30117 (regOne!30116 r!7292))) (reg!15131 (regOne!30117 (regOne!30116 r!7292)))))) (ite (or c!899245 c!899246) lt!2142491 (Context!8373 call!367368)) (h!67030 s!2326)) e!3246299)))

(declare-fun bm!367531 () Bool)

(assert (=> bm!367531 (= call!367533 call!367536)))

(assert (= (and d!1681411 c!899529) b!5214865))

(assert (= (and d!1681411 (not c!899529)) b!5214863))

(assert (= (and b!5214863 c!899530) b!5214873))

(assert (= (and b!5214863 (not c!899530)) b!5214870))

(assert (= (and b!5214870 res!2214741) b!5214869))

(assert (= (and b!5214870 c!899531) b!5214867))

(assert (= (and b!5214870 (not c!899531)) b!5214871))

(assert (= (and b!5214871 c!899532) b!5214864))

(assert (= (and b!5214871 (not c!899532)) b!5214872))

(assert (= (and b!5214872 c!899528) b!5214868))

(assert (= (and b!5214872 (not c!899528)) b!5214866))

(assert (= (or b!5214864 b!5214868) bm!367529))

(assert (= (or b!5214864 b!5214868) bm!367531))

(assert (= (or b!5214867 bm!367529) bm!367527))

(assert (= (or b!5214867 bm!367531) bm!367526))

(assert (= (or b!5214873 b!5214867) bm!367530))

(assert (= (or b!5214873 bm!367526) bm!367528))

(declare-fun m!6263708 () Bool)

(assert (=> bm!367530 m!6263708))

(declare-fun m!6263710 () Bool)

(assert (=> b!5214869 m!6263710))

(declare-fun m!6263712 () Bool)

(assert (=> bm!367527 m!6263712))

(declare-fun m!6263714 () Bool)

(assert (=> b!5214865 m!6263714))

(declare-fun m!6263716 () Bool)

(assert (=> bm!367528 m!6263716))

(assert (=> bm!367361 d!1681411))

(declare-fun d!1681413 () Bool)

(assert (=> d!1681413 (= (nullable!4971 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))) (nullableFct!1380 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292)))))))

(declare-fun bs!1211341 () Bool)

(assert (= bs!1211341 d!1681413))

(declare-fun m!6263718 () Bool)

(assert (=> bs!1211341 m!6263718))

(assert (=> b!5213804 d!1681413))

(assert (=> d!1681159 d!1681161))

(assert (=> d!1681159 d!1681147))

(declare-fun e!3246305 () Bool)

(declare-fun d!1681415 () Bool)

(assert (=> d!1681415 (= (matchZipper!1046 (set.union lt!2142499 lt!2142487) (t!373871 s!2326)) e!3246305)))

(declare-fun res!2214742 () Bool)

(assert (=> d!1681415 (=> res!2214742 e!3246305)))

(assert (=> d!1681415 (= res!2214742 (matchZipper!1046 lt!2142499 (t!373871 s!2326)))))

(assert (=> d!1681415 true))

(declare-fun _$48!808 () Unit!152474)

(assert (=> d!1681415 (= (choose!38765 lt!2142499 lt!2142487 (t!373871 s!2326)) _$48!808)))

(declare-fun b!5214874 () Bool)

(assert (=> b!5214874 (= e!3246305 (matchZipper!1046 lt!2142487 (t!373871 s!2326)))))

(assert (= (and d!1681415 (not res!2214742)) b!5214874))

(assert (=> d!1681415 m!6262730))

(assert (=> d!1681415 m!6262728))

(assert (=> b!5214874 m!6262788))

(assert (=> d!1681159 d!1681415))

(assert (=> b!5214135 d!1681099))

(declare-fun b!5214875 () Bool)

(declare-fun e!3246312 () Bool)

(declare-fun lt!2142670 () Bool)

(declare-fun call!367537 () Bool)

(assert (=> b!5214875 (= e!3246312 (= lt!2142670 call!367537))))

(declare-fun b!5214876 () Bool)

(declare-fun e!3246309 () Bool)

(assert (=> b!5214876 (= e!3246309 (= (head!11175 (_1!35304 (get!20815 lt!2142572))) (c!899215 (regOne!30116 r!7292))))))

(declare-fun b!5214877 () Bool)

(declare-fun res!2214747 () Bool)

(assert (=> b!5214877 (=> (not res!2214747) (not e!3246309))))

(assert (=> b!5214877 (= res!2214747 (isEmpty!32499 (tail!10272 (_1!35304 (get!20815 lt!2142572)))))))

(declare-fun b!5214878 () Bool)

(declare-fun res!2214750 () Bool)

(declare-fun e!3246308 () Bool)

(assert (=> b!5214878 (=> res!2214750 e!3246308)))

(assert (=> b!5214878 (= res!2214750 (not (is-ElementMatch!14802 (regOne!30116 r!7292))))))

(declare-fun e!3246307 () Bool)

(assert (=> b!5214878 (= e!3246307 e!3246308)))

(declare-fun b!5214879 () Bool)

(declare-fun e!3246311 () Bool)

(assert (=> b!5214879 (= e!3246311 (matchR!6987 (derivativeStep!4050 (regOne!30116 r!7292) (head!11175 (_1!35304 (get!20815 lt!2142572)))) (tail!10272 (_1!35304 (get!20815 lt!2142572)))))))

(declare-fun d!1681417 () Bool)

(assert (=> d!1681417 e!3246312))

(declare-fun c!899534 () Bool)

(assert (=> d!1681417 (= c!899534 (is-EmptyExpr!14802 (regOne!30116 r!7292)))))

(assert (=> d!1681417 (= lt!2142670 e!3246311)))

(declare-fun c!899535 () Bool)

(assert (=> d!1681417 (= c!899535 (isEmpty!32499 (_1!35304 (get!20815 lt!2142572))))))

(assert (=> d!1681417 (validRegex!6538 (regOne!30116 r!7292))))

(assert (=> d!1681417 (= (matchR!6987 (regOne!30116 r!7292) (_1!35304 (get!20815 lt!2142572))) lt!2142670)))

(declare-fun b!5214880 () Bool)

(declare-fun e!3246306 () Bool)

(declare-fun e!3246310 () Bool)

(assert (=> b!5214880 (= e!3246306 e!3246310)))

(declare-fun res!2214748 () Bool)

(assert (=> b!5214880 (=> res!2214748 e!3246310)))

(assert (=> b!5214880 (= res!2214748 call!367537)))

(declare-fun b!5214881 () Bool)

(assert (=> b!5214881 (= e!3246310 (not (= (head!11175 (_1!35304 (get!20815 lt!2142572))) (c!899215 (regOne!30116 r!7292)))))))

(declare-fun b!5214882 () Bool)

(declare-fun res!2214745 () Bool)

(assert (=> b!5214882 (=> res!2214745 e!3246310)))

(assert (=> b!5214882 (= res!2214745 (not (isEmpty!32499 (tail!10272 (_1!35304 (get!20815 lt!2142572))))))))

(declare-fun b!5214883 () Bool)

(declare-fun res!2214749 () Bool)

(assert (=> b!5214883 (=> (not res!2214749) (not e!3246309))))

(assert (=> b!5214883 (= res!2214749 (not call!367537))))

(declare-fun bm!367532 () Bool)

(assert (=> bm!367532 (= call!367537 (isEmpty!32499 (_1!35304 (get!20815 lt!2142572))))))

(declare-fun b!5214884 () Bool)

(assert (=> b!5214884 (= e!3246312 e!3246307)))

(declare-fun c!899533 () Bool)

(assert (=> b!5214884 (= c!899533 (is-EmptyLang!14802 (regOne!30116 r!7292)))))

(declare-fun b!5214885 () Bool)

(declare-fun res!2214743 () Bool)

(assert (=> b!5214885 (=> res!2214743 e!3246308)))

(assert (=> b!5214885 (= res!2214743 e!3246309)))

(declare-fun res!2214746 () Bool)

(assert (=> b!5214885 (=> (not res!2214746) (not e!3246309))))

(assert (=> b!5214885 (= res!2214746 lt!2142670)))

(declare-fun b!5214886 () Bool)

(assert (=> b!5214886 (= e!3246311 (nullable!4971 (regOne!30116 r!7292)))))

(declare-fun b!5214887 () Bool)

(assert (=> b!5214887 (= e!3246308 e!3246306)))

(declare-fun res!2214744 () Bool)

(assert (=> b!5214887 (=> (not res!2214744) (not e!3246306))))

(assert (=> b!5214887 (= res!2214744 (not lt!2142670))))

(declare-fun b!5214888 () Bool)

(assert (=> b!5214888 (= e!3246307 (not lt!2142670))))

(assert (= (and d!1681417 c!899535) b!5214886))

(assert (= (and d!1681417 (not c!899535)) b!5214879))

(assert (= (and d!1681417 c!899534) b!5214875))

(assert (= (and d!1681417 (not c!899534)) b!5214884))

(assert (= (and b!5214884 c!899533) b!5214888))

(assert (= (and b!5214884 (not c!899533)) b!5214878))

(assert (= (and b!5214878 (not res!2214750)) b!5214885))

(assert (= (and b!5214885 res!2214746) b!5214883))

(assert (= (and b!5214883 res!2214749) b!5214877))

(assert (= (and b!5214877 res!2214747) b!5214876))

(assert (= (and b!5214885 (not res!2214743)) b!5214887))

(assert (= (and b!5214887 res!2214744) b!5214880))

(assert (= (and b!5214880 (not res!2214748)) b!5214882))

(assert (= (and b!5214882 (not res!2214745)) b!5214881))

(assert (= (or b!5214875 b!5214880 b!5214883) bm!367532))

(declare-fun m!6263720 () Bool)

(assert (=> b!5214877 m!6263720))

(assert (=> b!5214877 m!6263720))

(declare-fun m!6263722 () Bool)

(assert (=> b!5214877 m!6263722))

(declare-fun m!6263724 () Bool)

(assert (=> b!5214881 m!6263724))

(declare-fun m!6263726 () Bool)

(assert (=> d!1681417 m!6263726))

(assert (=> d!1681417 m!6262934))

(assert (=> b!5214882 m!6263720))

(assert (=> b!5214882 m!6263720))

(assert (=> b!5214882 m!6263722))

(assert (=> b!5214886 m!6263396))

(assert (=> b!5214879 m!6263724))

(assert (=> b!5214879 m!6263724))

(declare-fun m!6263728 () Bool)

(assert (=> b!5214879 m!6263728))

(assert (=> b!5214879 m!6263720))

(assert (=> b!5214879 m!6263728))

(assert (=> b!5214879 m!6263720))

(declare-fun m!6263730 () Bool)

(assert (=> b!5214879 m!6263730))

(assert (=> bm!367532 m!6263726))

(assert (=> b!5214876 m!6263724))

(assert (=> b!5213840 d!1681417))

(assert (=> b!5213840 d!1681401))

(declare-fun bm!367533 () Bool)

(declare-fun call!367543 () (Set Context!8372))

(declare-fun call!367541 () (Set Context!8372))

(assert (=> bm!367533 (= call!367543 call!367541)))

(declare-fun c!899540 () Bool)

(declare-fun c!899539 () Bool)

(declare-fun bm!367534 () Bool)

(declare-fun call!367538 () List!60705)

(assert (=> bm!367534 (= call!367538 ($colon$colon!1278 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343))))) (ite (or c!899539 c!899540) (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (h!67029 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun b!5214889 () Bool)

(declare-fun e!3246313 () (Set Context!8372))

(declare-fun e!3246317 () (Set Context!8372))

(assert (=> b!5214889 (= e!3246313 e!3246317)))

(declare-fun c!899538 () Bool)

(assert (=> b!5214889 (= c!899538 (is-Union!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun b!5214890 () Bool)

(declare-fun e!3246315 () (Set Context!8372))

(declare-fun call!367540 () (Set Context!8372))

(assert (=> b!5214890 (= e!3246315 call!367540)))

(declare-fun bm!367535 () Bool)

(declare-fun call!367542 () List!60705)

(assert (=> bm!367535 (= call!367541 (derivationStepZipperDown!250 (ite c!899538 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899539 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899540 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))) (ite (or c!899538 c!899539) (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (Context!8373 call!367542)) (h!67030 s!2326)))))

(declare-fun b!5214891 () Bool)

(assert (=> b!5214891 (= e!3246313 (set.insert (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (as set.empty (Set Context!8372))))))

(declare-fun b!5214892 () Bool)

(declare-fun e!3246314 () (Set Context!8372))

(assert (=> b!5214892 (= e!3246314 (as set.empty (Set Context!8372)))))

(declare-fun b!5214893 () Bool)

(declare-fun e!3246318 () (Set Context!8372))

(declare-fun call!367539 () (Set Context!8372))

(assert (=> b!5214893 (= e!3246318 (set.union call!367539 call!367543))))

(declare-fun b!5214894 () Bool)

(assert (=> b!5214894 (= e!3246314 call!367540)))

(declare-fun b!5214895 () Bool)

(declare-fun e!3246316 () Bool)

(assert (=> b!5214895 (= e!3246316 (nullable!4971 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun bm!367536 () Bool)

(assert (=> bm!367536 (= call!367542 call!367538)))

(declare-fun b!5214896 () Bool)

(assert (=> b!5214896 (= c!899539 e!3246316)))

(declare-fun res!2214751 () Bool)

(assert (=> b!5214896 (=> (not res!2214751) (not e!3246316))))

(assert (=> b!5214896 (= res!2214751 (is-Concat!23647 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> b!5214896 (= e!3246317 e!3246318)))

(declare-fun b!5214897 () Bool)

(assert (=> b!5214897 (= e!3246318 e!3246315)))

(assert (=> b!5214897 (= c!899540 (is-Concat!23647 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun bm!367537 () Bool)

(assert (=> bm!367537 (= call!367539 (derivationStepZipperDown!250 (ite c!899538 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))) (ite c!899538 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (Context!8373 call!367538)) (h!67030 s!2326)))))

(declare-fun b!5214898 () Bool)

(declare-fun c!899536 () Bool)

(assert (=> b!5214898 (= c!899536 (is-Star!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> b!5214898 (= e!3246315 e!3246314)))

(declare-fun b!5214899 () Bool)

(assert (=> b!5214899 (= e!3246317 (set.union call!367541 call!367539))))

(declare-fun d!1681419 () Bool)

(declare-fun c!899537 () Bool)

(assert (=> d!1681419 (= c!899537 (and (is-ElementMatch!14802 (h!67029 (exprs!4686 (h!67031 zl!343)))) (= (c!899215 (h!67029 (exprs!4686 (h!67031 zl!343)))) (h!67030 s!2326))))))

(assert (=> d!1681419 (= (derivationStepZipperDown!250 (h!67029 (exprs!4686 (h!67031 zl!343))) (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (h!67030 s!2326)) e!3246313)))

(declare-fun bm!367538 () Bool)

(assert (=> bm!367538 (= call!367540 call!367543)))

(assert (= (and d!1681419 c!899537) b!5214891))

(assert (= (and d!1681419 (not c!899537)) b!5214889))

(assert (= (and b!5214889 c!899538) b!5214899))

(assert (= (and b!5214889 (not c!899538)) b!5214896))

(assert (= (and b!5214896 res!2214751) b!5214895))

(assert (= (and b!5214896 c!899539) b!5214893))

(assert (= (and b!5214896 (not c!899539)) b!5214897))

(assert (= (and b!5214897 c!899540) b!5214890))

(assert (= (and b!5214897 (not c!899540)) b!5214898))

(assert (= (and b!5214898 c!899536) b!5214894))

(assert (= (and b!5214898 (not c!899536)) b!5214892))

(assert (= (or b!5214890 b!5214894) bm!367536))

(assert (= (or b!5214890 b!5214894) bm!367538))

(assert (= (or b!5214893 bm!367536) bm!367534))

(assert (= (or b!5214893 bm!367538) bm!367533))

(assert (= (or b!5214899 b!5214893) bm!367537))

(assert (= (or b!5214899 bm!367533) bm!367535))

(declare-fun m!6263732 () Bool)

(assert (=> bm!367537 m!6263732))

(assert (=> b!5214895 m!6263002))

(declare-fun m!6263734 () Bool)

(assert (=> bm!367534 m!6263734))

(declare-fun m!6263736 () Bool)

(assert (=> b!5214891 m!6263736))

(declare-fun m!6263738 () Bool)

(assert (=> bm!367535 m!6263738))

(assert (=> bm!367376 d!1681419))

(declare-fun b!5214900 () Bool)

(declare-fun e!3246321 () Bool)

(declare-fun call!367544 () Bool)

(assert (=> b!5214900 (= e!3246321 call!367544)))

(declare-fun b!5214901 () Bool)

(declare-fun e!3246320 () Bool)

(declare-fun e!3246324 () Bool)

(assert (=> b!5214901 (= e!3246320 e!3246324)))

(declare-fun c!899541 () Bool)

(assert (=> b!5214901 (= c!899541 (is-Union!14802 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun bm!367539 () Bool)

(assert (=> bm!367539 (= call!367544 (nullable!4971 (ite c!899541 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regTwo!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun b!5214902 () Bool)

(declare-fun e!3246323 () Bool)

(assert (=> b!5214902 (= e!3246323 call!367544)))

(declare-fun b!5214903 () Bool)

(assert (=> b!5214903 (= e!3246324 e!3246323)))

(declare-fun res!2214756 () Bool)

(declare-fun call!367545 () Bool)

(assert (=> b!5214903 (= res!2214756 call!367545)))

(assert (=> b!5214903 (=> (not res!2214756) (not e!3246323))))

(declare-fun b!5214904 () Bool)

(declare-fun e!3246319 () Bool)

(declare-fun e!3246322 () Bool)

(assert (=> b!5214904 (= e!3246319 e!3246322)))

(declare-fun res!2214753 () Bool)

(assert (=> b!5214904 (=> (not res!2214753) (not e!3246322))))

(assert (=> b!5214904 (= res!2214753 (and (not (is-EmptyLang!14802 (regOne!30117 (regOne!30116 r!7292)))) (not (is-ElementMatch!14802 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun b!5214905 () Bool)

(assert (=> b!5214905 (= e!3246322 e!3246320)))

(declare-fun res!2214752 () Bool)

(assert (=> b!5214905 (=> res!2214752 e!3246320)))

(assert (=> b!5214905 (= res!2214752 (is-Star!14802 (regOne!30117 (regOne!30116 r!7292))))))

(declare-fun d!1681421 () Bool)

(declare-fun res!2214755 () Bool)

(assert (=> d!1681421 (=> res!2214755 e!3246319)))

(assert (=> d!1681421 (= res!2214755 (is-EmptyExpr!14802 (regOne!30117 (regOne!30116 r!7292))))))

(assert (=> d!1681421 (= (nullableFct!1380 (regOne!30117 (regOne!30116 r!7292))) e!3246319)))

(declare-fun bm!367540 () Bool)

(assert (=> bm!367540 (= call!367545 (nullable!4971 (ite c!899541 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun b!5214906 () Bool)

(assert (=> b!5214906 (= e!3246324 e!3246321)))

(declare-fun res!2214754 () Bool)

(assert (=> b!5214906 (= res!2214754 call!367545)))

(assert (=> b!5214906 (=> res!2214754 e!3246321)))

(assert (= (and d!1681421 (not res!2214755)) b!5214904))

(assert (= (and b!5214904 res!2214753) b!5214905))

(assert (= (and b!5214905 (not res!2214752)) b!5214901))

(assert (= (and b!5214901 c!899541) b!5214906))

(assert (= (and b!5214901 (not c!899541)) b!5214903))

(assert (= (and b!5214906 (not res!2214754)) b!5214900))

(assert (= (and b!5214903 res!2214756) b!5214902))

(assert (= (or b!5214900 b!5214902) bm!367539))

(assert (= (or b!5214906 b!5214903) bm!367540))

(declare-fun m!6263740 () Bool)

(assert (=> bm!367539 m!6263740))

(declare-fun m!6263742 () Bool)

(assert (=> bm!367540 m!6263742))

(assert (=> d!1681139 d!1681421))

(assert (=> d!1681129 d!1681123))

(declare-fun d!1681423 () Bool)

(assert (=> d!1681423 (= (flatMap!529 z!1189 lambda!261482) (dynLambda!23934 lambda!261482 (h!67031 zl!343)))))

(assert (=> d!1681423 true))

(declare-fun _$13!1698 () Unit!152474)

(assert (=> d!1681423 (= (choose!38764 z!1189 (h!67031 zl!343) lambda!261482) _$13!1698)))

(declare-fun b_lambda!201675 () Bool)

(assert (=> (not b_lambda!201675) (not d!1681423)))

(declare-fun bs!1211342 () Bool)

(assert (= bs!1211342 d!1681423))

(assert (=> bs!1211342 m!6262750))

(assert (=> bs!1211342 m!6263008))

(assert (=> d!1681129 d!1681423))

(assert (=> d!1681115 d!1681287))

(assert (=> d!1681115 d!1681135))

(declare-fun d!1681425 () Bool)

(assert (=> d!1681425 (= (Exists!1983 (ite c!899263 lambda!261509 lambda!261510)) (choose!38759 (ite c!899263 lambda!261509 lambda!261510)))))

(declare-fun bs!1211343 () Bool)

(assert (= bs!1211343 d!1681425))

(declare-fun m!6263744 () Bool)

(assert (=> bs!1211343 m!6263744))

(assert (=> bm!367369 d!1681425))

(declare-fun d!1681427 () Bool)

(assert (=> d!1681427 (= (isUnion!205 lt!2142600) (is-Union!14802 lt!2142600))))

(assert (=> b!5214067 d!1681427))

(assert (=> b!5213936 d!1681303))

(declare-fun bm!367541 () Bool)

(declare-fun call!367551 () (Set Context!8372))

(declare-fun call!367549 () (Set Context!8372))

(assert (=> bm!367541 (= call!367551 call!367549)))

(declare-fun c!899545 () Bool)

(declare-fun c!899546 () Bool)

(declare-fun call!367546 () List!60705)

(declare-fun bm!367542 () Bool)

(assert (=> bm!367542 (= call!367546 ($colon$colon!1278 (exprs!4686 (ite (or c!899240 c!899241) lt!2142491 (Context!8373 call!367362))) (ite (or c!899545 c!899546) (regTwo!30116 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292)))))))))))

(declare-fun b!5214907 () Bool)

(declare-fun e!3246325 () (Set Context!8372))

(declare-fun e!3246329 () (Set Context!8372))

(assert (=> b!5214907 (= e!3246325 e!3246329)))

(declare-fun c!899544 () Bool)

(assert (=> b!5214907 (= c!899544 (is-Union!14802 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))))))

(declare-fun b!5214908 () Bool)

(declare-fun e!3246327 () (Set Context!8372))

(declare-fun call!367548 () (Set Context!8372))

(assert (=> b!5214908 (= e!3246327 call!367548)))

(declare-fun bm!367543 () Bool)

(declare-fun call!367550 () List!60705)

(assert (=> bm!367543 (= call!367549 (derivationStepZipperDown!250 (ite c!899544 (regOne!30117 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (ite c!899545 (regTwo!30116 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (ite c!899546 (regOne!30116 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (reg!15131 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292)))))))))) (ite (or c!899544 c!899545) (ite (or c!899240 c!899241) lt!2142491 (Context!8373 call!367362)) (Context!8373 call!367550)) (h!67030 s!2326)))))

(declare-fun b!5214909 () Bool)

(assert (=> b!5214909 (= e!3246325 (set.insert (ite (or c!899240 c!899241) lt!2142491 (Context!8373 call!367362)) (as set.empty (Set Context!8372))))))

(declare-fun b!5214910 () Bool)

(declare-fun e!3246326 () (Set Context!8372))

(assert (=> b!5214910 (= e!3246326 (as set.empty (Set Context!8372)))))

(declare-fun b!5214911 () Bool)

(declare-fun e!3246330 () (Set Context!8372))

(declare-fun call!367547 () (Set Context!8372))

(assert (=> b!5214911 (= e!3246330 (set.union call!367547 call!367551))))

(declare-fun b!5214912 () Bool)

(assert (=> b!5214912 (= e!3246326 call!367548)))

(declare-fun b!5214913 () Bool)

(declare-fun e!3246328 () Bool)

(assert (=> b!5214913 (= e!3246328 (nullable!4971 (regOne!30116 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292)))))))))))

(declare-fun bm!367544 () Bool)

(assert (=> bm!367544 (= call!367550 call!367546)))

(declare-fun b!5214914 () Bool)

(assert (=> b!5214914 (= c!899545 e!3246328)))

(declare-fun res!2214757 () Bool)

(assert (=> b!5214914 (=> (not res!2214757) (not e!3246328))))

(assert (=> b!5214914 (= res!2214757 (is-Concat!23647 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))))))

(assert (=> b!5214914 (= e!3246329 e!3246330)))

(declare-fun b!5214915 () Bool)

(assert (=> b!5214915 (= e!3246330 e!3246327)))

(assert (=> b!5214915 (= c!899546 (is-Concat!23647 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))))))

(declare-fun bm!367545 () Bool)

(assert (=> bm!367545 (= call!367547 (derivationStepZipperDown!250 (ite c!899544 (regTwo!30117 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (regOne!30116 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292)))))))) (ite c!899544 (ite (or c!899240 c!899241) lt!2142491 (Context!8373 call!367362)) (Context!8373 call!367546)) (h!67030 s!2326)))))

(declare-fun b!5214916 () Bool)

(declare-fun c!899542 () Bool)

(assert (=> b!5214916 (= c!899542 (is-Star!14802 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))))))

(assert (=> b!5214916 (= e!3246327 e!3246326)))

(declare-fun b!5214917 () Bool)

(assert (=> b!5214917 (= e!3246329 (set.union call!367549 call!367547))))

(declare-fun d!1681429 () Bool)

(declare-fun c!899543 () Bool)

(assert (=> d!1681429 (= c!899543 (and (is-ElementMatch!14802 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (= (c!899215 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292))))))) (h!67030 s!2326))))))

(assert (=> d!1681429 (= (derivationStepZipperDown!250 (ite c!899240 (regOne!30117 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899241 (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (ite c!899242 (regOne!30116 (regTwo!30117 (regOne!30116 r!7292))) (reg!15131 (regTwo!30117 (regOne!30116 r!7292)))))) (ite (or c!899240 c!899241) lt!2142491 (Context!8373 call!367362)) (h!67030 s!2326)) e!3246325)))

(declare-fun bm!367546 () Bool)

(assert (=> bm!367546 (= call!367548 call!367551)))

(assert (= (and d!1681429 c!899543) b!5214909))

(assert (= (and d!1681429 (not c!899543)) b!5214907))

(assert (= (and b!5214907 c!899544) b!5214917))

(assert (= (and b!5214907 (not c!899544)) b!5214914))

(assert (= (and b!5214914 res!2214757) b!5214913))

(assert (= (and b!5214914 c!899545) b!5214911))

(assert (= (and b!5214914 (not c!899545)) b!5214915))

(assert (= (and b!5214915 c!899546) b!5214908))

(assert (= (and b!5214915 (not c!899546)) b!5214916))

(assert (= (and b!5214916 c!899542) b!5214912))

(assert (= (and b!5214916 (not c!899542)) b!5214910))

(assert (= (or b!5214908 b!5214912) bm!367544))

(assert (= (or b!5214908 b!5214912) bm!367546))

(assert (= (or b!5214911 bm!367544) bm!367542))

(assert (= (or b!5214911 bm!367546) bm!367541))

(assert (= (or b!5214917 b!5214911) bm!367545))

(assert (= (or b!5214917 bm!367541) bm!367543))

(declare-fun m!6263746 () Bool)

(assert (=> bm!367545 m!6263746))

(declare-fun m!6263748 () Bool)

(assert (=> b!5214913 m!6263748))

(declare-fun m!6263750 () Bool)

(assert (=> bm!367542 m!6263750))

(declare-fun m!6263752 () Bool)

(assert (=> b!5214909 m!6263752))

(declare-fun m!6263754 () Bool)

(assert (=> bm!367543 m!6263754))

(assert (=> bm!367355 d!1681429))

(declare-fun bs!1211344 () Bool)

(declare-fun d!1681431 () Bool)

(assert (= bs!1211344 (and d!1681431 d!1681297)))

(declare-fun lambda!261575 () Int)

(assert (=> bs!1211344 (= lambda!261575 lambda!261554)))

(declare-fun bs!1211345 () Bool)

(assert (= bs!1211345 (and d!1681431 d!1681375)))

(assert (=> bs!1211345 (= lambda!261575 lambda!261573)))

(declare-fun bs!1211346 () Bool)

(assert (= bs!1211346 (and d!1681431 d!1681405)))

(assert (=> bs!1211346 (= lambda!261575 lambda!261574)))

(assert (=> d!1681431 (= (nullableZipper!1228 lt!2142488) (exists!1965 lt!2142488 lambda!261575))))

(declare-fun bs!1211347 () Bool)

(assert (= bs!1211347 d!1681431))

(declare-fun m!6263756 () Bool)

(assert (=> bs!1211347 m!6263756))

(assert (=> b!5214020 d!1681431))

(declare-fun bs!1211348 () Bool)

(declare-fun b!5214925 () Bool)

(assert (= bs!1211348 (and b!5214925 d!1681355)))

(declare-fun lambda!261576 () Int)

(assert (=> bs!1211348 (not (= lambda!261576 lambda!261563))))

(declare-fun bs!1211349 () Bool)

(assert (= bs!1211349 (and b!5214925 d!1681109)))

(assert (=> bs!1211349 (not (= lambda!261576 lambda!261503))))

(declare-fun bs!1211350 () Bool)

(assert (= bs!1211350 (and b!5214925 b!5213899)))

(assert (=> bs!1211350 (not (= lambda!261576 lambda!261510))))

(assert (=> bs!1211349 (not (= lambda!261576 lambda!261504))))

(declare-fun bs!1211351 () Bool)

(assert (= bs!1211351 (and b!5214925 d!1681367)))

(assert (=> bs!1211351 (not (= lambda!261576 lambda!261571))))

(declare-fun bs!1211352 () Bool)

(assert (= bs!1211352 (and b!5214925 b!5214761)))

(assert (=> bs!1211352 (not (= lambda!261576 lambda!261566))))

(declare-fun bs!1211353 () Bool)

(assert (= bs!1211353 (and b!5214925 d!1681107)))

(assert (=> bs!1211353 (not (= lambda!261576 lambda!261498))))

(declare-fun bs!1211354 () Bool)

(assert (= bs!1211354 (and b!5214925 b!5213645)))

(assert (=> bs!1211354 (not (= lambda!261576 lambda!261480))))

(assert (=> bs!1211354 (not (= lambda!261576 lambda!261481))))

(declare-fun bs!1211355 () Bool)

(assert (= bs!1211355 (and b!5214925 b!5213898)))

(assert (=> bs!1211355 (= (and (= (reg!15131 (regOne!30117 r!7292)) (reg!15131 r!7292)) (= (regOne!30117 r!7292) r!7292)) (= lambda!261576 lambda!261509))))

(declare-fun bs!1211356 () Bool)

(assert (= bs!1211356 (and b!5214925 b!5214760)))

(assert (=> bs!1211356 (= (and (= (reg!15131 (regOne!30117 r!7292)) (reg!15131 (regTwo!30117 r!7292))) (= (regOne!30117 r!7292) (regTwo!30117 r!7292))) (= lambda!261576 lambda!261565))))

(assert (=> bs!1211351 (not (= lambda!261576 lambda!261572))))

(assert (=> b!5214925 true))

(assert (=> b!5214925 true))

(declare-fun bs!1211357 () Bool)

(declare-fun b!5214926 () Bool)

(assert (= bs!1211357 (and b!5214926 d!1681355)))

(declare-fun lambda!261577 () Int)

(assert (=> bs!1211357 (not (= lambda!261577 lambda!261563))))

(declare-fun bs!1211358 () Bool)

(assert (= bs!1211358 (and b!5214926 d!1681109)))

(assert (=> bs!1211358 (not (= lambda!261577 lambda!261503))))

(declare-fun bs!1211359 () Bool)

(assert (= bs!1211359 (and b!5214926 b!5213899)))

(assert (=> bs!1211359 (= (and (= (regOne!30116 (regOne!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regOne!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261577 lambda!261510))))

(assert (=> bs!1211358 (= (and (= (regOne!30116 (regOne!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regOne!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261577 lambda!261504))))

(declare-fun bs!1211360 () Bool)

(assert (= bs!1211360 (and b!5214926 d!1681367)))

(assert (=> bs!1211360 (not (= lambda!261577 lambda!261571))))

(declare-fun bs!1211361 () Bool)

(assert (= bs!1211361 (and b!5214926 b!5214761)))

(assert (=> bs!1211361 (= (and (= (regOne!30116 (regOne!30117 r!7292)) (regOne!30116 (regTwo!30117 r!7292))) (= (regTwo!30116 (regOne!30117 r!7292)) (regTwo!30116 (regTwo!30117 r!7292)))) (= lambda!261577 lambda!261566))))

(declare-fun bs!1211362 () Bool)

(assert (= bs!1211362 (and b!5214926 d!1681107)))

(assert (=> bs!1211362 (not (= lambda!261577 lambda!261498))))

(declare-fun bs!1211363 () Bool)

(assert (= bs!1211363 (and b!5214926 b!5213645)))

(assert (=> bs!1211363 (not (= lambda!261577 lambda!261480))))

(assert (=> bs!1211363 (= (and (= (regOne!30116 (regOne!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regOne!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261577 lambda!261481))))

(declare-fun bs!1211364 () Bool)

(assert (= bs!1211364 (and b!5214926 b!5214925)))

(assert (=> bs!1211364 (not (= lambda!261577 lambda!261576))))

(declare-fun bs!1211365 () Bool)

(assert (= bs!1211365 (and b!5214926 b!5213898)))

(assert (=> bs!1211365 (not (= lambda!261577 lambda!261509))))

(declare-fun bs!1211366 () Bool)

(assert (= bs!1211366 (and b!5214926 b!5214760)))

(assert (=> bs!1211366 (not (= lambda!261577 lambda!261565))))

(assert (=> bs!1211360 (= (and (= (regOne!30116 (regOne!30117 r!7292)) (regOne!30116 r!7292)) (= (regTwo!30116 (regOne!30117 r!7292)) (regTwo!30116 r!7292))) (= lambda!261577 lambda!261572))))

(assert (=> b!5214926 true))

(assert (=> b!5214926 true))

(declare-fun d!1681433 () Bool)

(declare-fun c!899547 () Bool)

(assert (=> d!1681433 (= c!899547 (is-EmptyExpr!14802 (regOne!30117 r!7292)))))

(declare-fun e!3246335 () Bool)

(assert (=> d!1681433 (= (matchRSpec!1905 (regOne!30117 r!7292) s!2326) e!3246335)))

(declare-fun b!5214918 () Bool)

(declare-fun e!3246337 () Bool)

(assert (=> b!5214918 (= e!3246337 (= s!2326 (Cons!60582 (c!899215 (regOne!30117 r!7292)) Nil!60582)))))

(declare-fun b!5214919 () Bool)

(declare-fun e!3246336 () Bool)

(assert (=> b!5214919 (= e!3246336 (matchRSpec!1905 (regTwo!30117 (regOne!30117 r!7292)) s!2326))))

(declare-fun b!5214920 () Bool)

(declare-fun e!3246334 () Bool)

(assert (=> b!5214920 (= e!3246334 e!3246336)))

(declare-fun res!2214758 () Bool)

(assert (=> b!5214920 (= res!2214758 (matchRSpec!1905 (regOne!30117 (regOne!30117 r!7292)) s!2326))))

(assert (=> b!5214920 (=> res!2214758 e!3246336)))

(declare-fun b!5214921 () Bool)

(declare-fun e!3246332 () Bool)

(assert (=> b!5214921 (= e!3246334 e!3246332)))

(declare-fun c!899548 () Bool)

(assert (=> b!5214921 (= c!899548 (is-Star!14802 (regOne!30117 r!7292)))))

(declare-fun b!5214922 () Bool)

(declare-fun call!367553 () Bool)

(assert (=> b!5214922 (= e!3246335 call!367553)))

(declare-fun b!5214923 () Bool)

(declare-fun c!899550 () Bool)

(assert (=> b!5214923 (= c!899550 (is-Union!14802 (regOne!30117 r!7292)))))

(assert (=> b!5214923 (= e!3246337 e!3246334)))

(declare-fun b!5214924 () Bool)

(declare-fun res!2214760 () Bool)

(declare-fun e!3246331 () Bool)

(assert (=> b!5214924 (=> res!2214760 e!3246331)))

(assert (=> b!5214924 (= res!2214760 call!367553)))

(assert (=> b!5214924 (= e!3246332 e!3246331)))

(declare-fun call!367552 () Bool)

(assert (=> b!5214925 (= e!3246331 call!367552)))

(assert (=> b!5214926 (= e!3246332 call!367552)))

(declare-fun b!5214927 () Bool)

(declare-fun e!3246333 () Bool)

(assert (=> b!5214927 (= e!3246335 e!3246333)))

(declare-fun res!2214759 () Bool)

(assert (=> b!5214927 (= res!2214759 (not (is-EmptyLang!14802 (regOne!30117 r!7292))))))

(assert (=> b!5214927 (=> (not res!2214759) (not e!3246333))))

(declare-fun bm!367547 () Bool)

(assert (=> bm!367547 (= call!367552 (Exists!1983 (ite c!899548 lambda!261576 lambda!261577)))))

(declare-fun b!5214928 () Bool)

(declare-fun c!899549 () Bool)

(assert (=> b!5214928 (= c!899549 (is-ElementMatch!14802 (regOne!30117 r!7292)))))

(assert (=> b!5214928 (= e!3246333 e!3246337)))

(declare-fun bm!367548 () Bool)

(assert (=> bm!367548 (= call!367553 (isEmpty!32499 s!2326))))

(assert (= (and d!1681433 c!899547) b!5214922))

(assert (= (and d!1681433 (not c!899547)) b!5214927))

(assert (= (and b!5214927 res!2214759) b!5214928))

(assert (= (and b!5214928 c!899549) b!5214918))

(assert (= (and b!5214928 (not c!899549)) b!5214923))

(assert (= (and b!5214923 c!899550) b!5214920))

(assert (= (and b!5214923 (not c!899550)) b!5214921))

(assert (= (and b!5214920 (not res!2214758)) b!5214919))

(assert (= (and b!5214921 c!899548) b!5214924))

(assert (= (and b!5214921 (not c!899548)) b!5214926))

(assert (= (and b!5214924 (not res!2214760)) b!5214925))

(assert (= (or b!5214925 b!5214926) bm!367547))

(assert (= (or b!5214922 b!5214924) bm!367548))

(declare-fun m!6263758 () Bool)

(assert (=> b!5214919 m!6263758))

(declare-fun m!6263760 () Bool)

(assert (=> b!5214920 m!6263760))

(declare-fun m!6263762 () Bool)

(assert (=> bm!367547 m!6263762))

(assert (=> bm!367548 m!6262970))

(assert (=> b!5213893 d!1681433))

(assert (=> b!5214096 d!1681177))

(declare-fun bs!1211367 () Bool)

(declare-fun d!1681435 () Bool)

(assert (= bs!1211367 (and d!1681435 d!1681177)))

(declare-fun lambda!261578 () Int)

(assert (=> bs!1211367 (= lambda!261578 lambda!261523)))

(declare-fun bs!1211368 () Bool)

(assert (= bs!1211368 (and d!1681435 d!1681171)))

(assert (=> bs!1211368 (= lambda!261578 lambda!261516)))

(declare-fun bs!1211369 () Bool)

(assert (= bs!1211369 (and d!1681435 d!1681319)))

(assert (=> bs!1211369 (= lambda!261578 lambda!261555)))

(declare-fun bs!1211370 () Bool)

(assert (= bs!1211370 (and d!1681435 d!1681345)))

(assert (=> bs!1211370 (= lambda!261578 lambda!261559)))

(declare-fun bs!1211371 () Bool)

(assert (= bs!1211371 (and d!1681435 d!1681175)))

(assert (=> bs!1211371 (= lambda!261578 lambda!261520)))

(declare-fun bs!1211372 () Bool)

(assert (= bs!1211372 (and d!1681435 d!1681173)))

(assert (=> bs!1211372 (= lambda!261578 lambda!261519)))

(declare-fun bs!1211373 () Bool)

(assert (= bs!1211373 (and d!1681435 d!1681359)))

(assert (=> bs!1211373 (= lambda!261578 lambda!261564)))

(declare-fun bs!1211374 () Bool)

(assert (= bs!1211374 (and d!1681435 d!1681163)))

(assert (=> bs!1211374 (= lambda!261578 lambda!261513)))

(declare-fun lt!2142671 () List!60705)

(assert (=> d!1681435 (forall!14236 lt!2142671 lambda!261578)))

(declare-fun e!3246338 () List!60705)

(assert (=> d!1681435 (= lt!2142671 e!3246338)))

(declare-fun c!899551 () Bool)

(assert (=> d!1681435 (= c!899551 (is-Cons!60583 (t!373872 zl!343)))))

(assert (=> d!1681435 (= (unfocusZipperList!244 (t!373872 zl!343)) lt!2142671)))

(declare-fun b!5214929 () Bool)

(assert (=> b!5214929 (= e!3246338 (Cons!60581 (generalisedConcat!471 (exprs!4686 (h!67031 (t!373872 zl!343)))) (unfocusZipperList!244 (t!373872 (t!373872 zl!343)))))))

(declare-fun b!5214930 () Bool)

(assert (=> b!5214930 (= e!3246338 Nil!60581)))

(assert (= (and d!1681435 c!899551) b!5214929))

(assert (= (and d!1681435 (not c!899551)) b!5214930))

(declare-fun m!6263764 () Bool)

(assert (=> d!1681435 m!6263764))

(declare-fun m!6263766 () Bool)

(assert (=> b!5214929 m!6263766))

(declare-fun m!6263768 () Bool)

(assert (=> b!5214929 m!6263768))

(assert (=> b!5214096 d!1681435))

(assert (=> d!1681161 d!1681267))

(declare-fun d!1681437 () Bool)

(assert (=> d!1681437 (= (isEmpty!32499 (tail!10272 s!2326)) (is-Nil!60582 (tail!10272 s!2326)))))

(assert (=> b!5213932 d!1681437))

(assert (=> b!5213932 d!1681305))

(declare-fun d!1681439 () Bool)

(declare-fun c!899552 () Bool)

(assert (=> d!1681439 (= c!899552 (isEmpty!32499 (tail!10272 (t!373871 s!2326))))))

(declare-fun e!3246339 () Bool)

(assert (=> d!1681439 (= (matchZipper!1046 (derivationStepZipper!1072 (set.union lt!2142499 lt!2142487) (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))) e!3246339)))

(declare-fun b!5214931 () Bool)

(assert (=> b!5214931 (= e!3246339 (nullableZipper!1228 (derivationStepZipper!1072 (set.union lt!2142499 lt!2142487) (head!11175 (t!373871 s!2326)))))))

(declare-fun b!5214932 () Bool)

(assert (=> b!5214932 (= e!3246339 (matchZipper!1046 (derivationStepZipper!1072 (derivationStepZipper!1072 (set.union lt!2142499 lt!2142487) (head!11175 (t!373871 s!2326))) (head!11175 (tail!10272 (t!373871 s!2326)))) (tail!10272 (tail!10272 (t!373871 s!2326)))))))

(assert (= (and d!1681439 c!899552) b!5214931))

(assert (= (and d!1681439 (not c!899552)) b!5214932))

(assert (=> d!1681439 m!6262902))

(assert (=> d!1681439 m!6263526))

(assert (=> b!5214931 m!6263078))

(declare-fun m!6263770 () Bool)

(assert (=> b!5214931 m!6263770))

(assert (=> b!5214932 m!6262902))

(assert (=> b!5214932 m!6263530))

(assert (=> b!5214932 m!6263078))

(assert (=> b!5214932 m!6263530))

(declare-fun m!6263772 () Bool)

(assert (=> b!5214932 m!6263772))

(assert (=> b!5214932 m!6262902))

(assert (=> b!5214932 m!6263534))

(assert (=> b!5214932 m!6263772))

(assert (=> b!5214932 m!6263534))

(declare-fun m!6263774 () Bool)

(assert (=> b!5214932 m!6263774))

(assert (=> b!5214029 d!1681439))

(declare-fun bs!1211375 () Bool)

(declare-fun d!1681441 () Bool)

(assert (= bs!1211375 (and d!1681441 b!5213634)))

(declare-fun lambda!261579 () Int)

(assert (=> bs!1211375 (= (= (head!11175 (t!373871 s!2326)) (h!67030 s!2326)) (= lambda!261579 lambda!261482))))

(declare-fun bs!1211376 () Bool)

(assert (= bs!1211376 (and d!1681441 d!1681323)))

(assert (=> bs!1211376 (= lambda!261579 lambda!261558)))

(declare-fun bs!1211377 () Bool)

(assert (= bs!1211377 (and d!1681441 d!1681349)))

(assert (=> bs!1211377 (= lambda!261579 lambda!261560)))

(assert (=> d!1681441 true))

(assert (=> d!1681441 (= (derivationStepZipper!1072 (set.union lt!2142499 lt!2142487) (head!11175 (t!373871 s!2326))) (flatMap!529 (set.union lt!2142499 lt!2142487) lambda!261579))))

(declare-fun bs!1211378 () Bool)

(assert (= bs!1211378 d!1681441))

(declare-fun m!6263776 () Bool)

(assert (=> bs!1211378 m!6263776))

(assert (=> b!5214029 d!1681441))

(assert (=> b!5214029 d!1681325))

(assert (=> b!5214029 d!1681327))

(declare-fun bs!1211379 () Bool)

(declare-fun d!1681443 () Bool)

(assert (= bs!1211379 (and d!1681443 d!1681297)))

(declare-fun lambda!261580 () Int)

(assert (=> bs!1211379 (= lambda!261580 lambda!261554)))

(declare-fun bs!1211380 () Bool)

(assert (= bs!1211380 (and d!1681443 d!1681375)))

(assert (=> bs!1211380 (= lambda!261580 lambda!261573)))

(declare-fun bs!1211381 () Bool)

(assert (= bs!1211381 (and d!1681443 d!1681405)))

(assert (=> bs!1211381 (= lambda!261580 lambda!261574)))

(declare-fun bs!1211382 () Bool)

(assert (= bs!1211382 (and d!1681443 d!1681431)))

(assert (=> bs!1211382 (= lambda!261580 lambda!261575)))

(assert (=> d!1681443 (= (nullableZipper!1228 lt!2142497) (exists!1965 lt!2142497 lambda!261580))))

(declare-fun bs!1211383 () Bool)

(assert (= bs!1211383 d!1681443))

(declare-fun m!6263778 () Bool)

(assert (=> bs!1211383 m!6263778))

(assert (=> b!5213774 d!1681443))

(declare-fun call!367554 () (Set Context!8372))

(declare-fun e!3246341 () (Set Context!8372))

(declare-fun b!5214933 () Bool)

(assert (=> b!5214933 (= e!3246341 (set.union call!367554 (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343))))))) (h!67030 s!2326))))))

(declare-fun b!5214934 () Bool)

(declare-fun e!3246340 () Bool)

(assert (=> b!5214934 (= e!3246340 (nullable!4971 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343))))))))))

(declare-fun d!1681445 () Bool)

(declare-fun c!899553 () Bool)

(assert (=> d!1681445 (= c!899553 e!3246340)))

(declare-fun res!2214761 () Bool)

(assert (=> d!1681445 (=> (not res!2214761) (not e!3246340))))

(assert (=> d!1681445 (= res!2214761 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))))))))

(assert (=> d!1681445 (= (derivationStepZipperUp!174 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))) (h!67030 s!2326)) e!3246341)))

(declare-fun b!5214935 () Bool)

(declare-fun e!3246342 () (Set Context!8372))

(assert (=> b!5214935 (= e!3246341 e!3246342)))

(declare-fun c!899554 () Bool)

(assert (=> b!5214935 (= c!899554 (is-Cons!60581 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))))))))

(declare-fun b!5214936 () Bool)

(assert (=> b!5214936 (= e!3246342 (as set.empty (Set Context!8372)))))

(declare-fun bm!367549 () Bool)

(assert (=> bm!367549 (= call!367554 (derivationStepZipperDown!250 (h!67029 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343)))))) (Context!8373 (t!373870 (exprs!4686 (Context!8373 (t!373870 (exprs!4686 (h!67031 zl!343))))))) (h!67030 s!2326)))))

(declare-fun b!5214937 () Bool)

(assert (=> b!5214937 (= e!3246342 call!367554)))

(assert (= (and d!1681445 res!2214761) b!5214934))

(assert (= (and d!1681445 c!899553) b!5214933))

(assert (= (and d!1681445 (not c!899553)) b!5214935))

(assert (= (and b!5214935 c!899554) b!5214937))

(assert (= (and b!5214935 (not c!899554)) b!5214936))

(assert (= (or b!5214933 b!5214937) bm!367549))

(declare-fun m!6263780 () Bool)

(assert (=> b!5214933 m!6263780))

(declare-fun m!6263782 () Bool)

(assert (=> b!5214934 m!6263782))

(declare-fun m!6263784 () Bool)

(assert (=> bm!367549 m!6263784))

(assert (=> b!5213954 d!1681445))

(declare-fun d!1681447 () Bool)

(assert (=> d!1681447 (= (nullable!4971 (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))) (nullableFct!1380 (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))

(declare-fun bs!1211384 () Bool)

(assert (= bs!1211384 d!1681447))

(declare-fun m!6263786 () Bool)

(assert (=> bs!1211384 m!6263786))

(assert (=> b!5213815 d!1681447))

(declare-fun bm!367550 () Bool)

(declare-fun call!367560 () (Set Context!8372))

(declare-fun call!367558 () (Set Context!8372))

(assert (=> bm!367550 (= call!367560 call!367558)))

(declare-fun c!899558 () Bool)

(declare-fun c!899559 () Bool)

(declare-fun call!367555 () List!60705)

(declare-fun bm!367551 () Bool)

(assert (=> bm!367551 (= call!367555 ($colon$colon!1278 (exprs!4686 (ite c!899285 lt!2142491 (Context!8373 call!367383))) (ite (or c!899558 c!899559) (regTwo!30116 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))))))

(declare-fun b!5214938 () Bool)

(declare-fun e!3246343 () (Set Context!8372))

(declare-fun e!3246347 () (Set Context!8372))

(assert (=> b!5214938 (= e!3246343 e!3246347)))

(declare-fun c!899557 () Bool)

(assert (=> b!5214938 (= c!899557 (is-Union!14802 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(declare-fun b!5214939 () Bool)

(declare-fun e!3246345 () (Set Context!8372))

(declare-fun call!367557 () (Set Context!8372))

(assert (=> b!5214939 (= e!3246345 call!367557)))

(declare-fun call!367559 () List!60705)

(declare-fun bm!367552 () Bool)

(assert (=> bm!367552 (= call!367558 (derivationStepZipperDown!250 (ite c!899557 (regOne!30117 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (ite c!899558 (regTwo!30116 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (ite c!899559 (regOne!30116 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (reg!15131 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))))) (ite (or c!899557 c!899558) (ite c!899285 lt!2142491 (Context!8373 call!367383)) (Context!8373 call!367559)) (h!67030 s!2326)))))

(declare-fun b!5214940 () Bool)

(assert (=> b!5214940 (= e!3246343 (set.insert (ite c!899285 lt!2142491 (Context!8373 call!367383)) (as set.empty (Set Context!8372))))))

(declare-fun b!5214941 () Bool)

(declare-fun e!3246344 () (Set Context!8372))

(assert (=> b!5214941 (= e!3246344 (as set.empty (Set Context!8372)))))

(declare-fun b!5214942 () Bool)

(declare-fun e!3246348 () (Set Context!8372))

(declare-fun call!367556 () (Set Context!8372))

(assert (=> b!5214942 (= e!3246348 (set.union call!367556 call!367560))))

(declare-fun b!5214943 () Bool)

(assert (=> b!5214943 (= e!3246344 call!367557)))

(declare-fun b!5214944 () Bool)

(declare-fun e!3246346 () Bool)

(assert (=> b!5214944 (= e!3246346 (nullable!4971 (regOne!30116 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))))))

(declare-fun bm!367553 () Bool)

(assert (=> bm!367553 (= call!367559 call!367555)))

(declare-fun b!5214945 () Bool)

(assert (=> b!5214945 (= c!899558 e!3246346)))

(declare-fun res!2214762 () Bool)

(assert (=> b!5214945 (=> (not res!2214762) (not e!3246346))))

(assert (=> b!5214945 (= res!2214762 (is-Concat!23647 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(assert (=> b!5214945 (= e!3246347 e!3246348)))

(declare-fun b!5214946 () Bool)

(assert (=> b!5214946 (= e!3246348 e!3246345)))

(assert (=> b!5214946 (= c!899559 (is-Concat!23647 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(declare-fun bm!367554 () Bool)

(assert (=> bm!367554 (= call!367556 (derivationStepZipperDown!250 (ite c!899557 (regTwo!30117 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (regOne!30116 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))) (ite c!899557 (ite c!899285 lt!2142491 (Context!8373 call!367383)) (Context!8373 call!367555)) (h!67030 s!2326)))))

(declare-fun b!5214947 () Bool)

(declare-fun c!899555 () Bool)

(assert (=> b!5214947 (= c!899555 (is-Star!14802 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))

(assert (=> b!5214947 (= e!3246345 e!3246344)))

(declare-fun b!5214948 () Bool)

(assert (=> b!5214948 (= e!3246347 (set.union call!367558 call!367556))))

(declare-fun c!899556 () Bool)

(declare-fun d!1681449 () Bool)

(assert (=> d!1681449 (= c!899556 (and (is-ElementMatch!14802 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (= (c!899215 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))))) (h!67030 s!2326))))))

(assert (=> d!1681449 (= (derivationStepZipperDown!250 (ite c!899285 (regTwo!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))) (ite c!899285 lt!2142491 (Context!8373 call!367383)) (h!67030 s!2326)) e!3246343)))

(declare-fun bm!367555 () Bool)

(assert (=> bm!367555 (= call!367557 call!367560)))

(assert (= (and d!1681449 c!899556) b!5214940))

(assert (= (and d!1681449 (not c!899556)) b!5214938))

(assert (= (and b!5214938 c!899557) b!5214948))

(assert (= (and b!5214938 (not c!899557)) b!5214945))

(assert (= (and b!5214945 res!2214762) b!5214944))

(assert (= (and b!5214945 c!899558) b!5214942))

(assert (= (and b!5214945 (not c!899558)) b!5214946))

(assert (= (and b!5214946 c!899559) b!5214939))

(assert (= (and b!5214946 (not c!899559)) b!5214947))

(assert (= (and b!5214947 c!899555) b!5214943))

(assert (= (and b!5214947 (not c!899555)) b!5214941))

(assert (= (or b!5214939 b!5214943) bm!367553))

(assert (= (or b!5214939 b!5214943) bm!367555))

(assert (= (or b!5214942 bm!367553) bm!367551))

(assert (= (or b!5214942 bm!367555) bm!367550))

(assert (= (or b!5214948 b!5214942) bm!367554))

(assert (= (or b!5214948 bm!367550) bm!367552))

(declare-fun m!6263788 () Bool)

(assert (=> bm!367554 m!6263788))

(declare-fun m!6263790 () Bool)

(assert (=> b!5214944 m!6263790))

(declare-fun m!6263792 () Bool)

(assert (=> bm!367551 m!6263792))

(declare-fun m!6263794 () Bool)

(assert (=> b!5214940 m!6263794))

(declare-fun m!6263796 () Bool)

(assert (=> bm!367552 m!6263796))

(assert (=> bm!367382 d!1681449))

(declare-fun d!1681451 () Bool)

(assert (=> d!1681451 (= (isEmpty!32496 (tail!10273 (unfocusZipperList!244 zl!343))) (is-Nil!60581 (tail!10273 (unfocusZipperList!244 zl!343))))))

(assert (=> b!5214073 d!1681451))

(declare-fun d!1681453 () Bool)

(assert (=> d!1681453 (= (tail!10273 (unfocusZipperList!244 zl!343)) (t!373870 (unfocusZipperList!244 zl!343)))))

(assert (=> b!5214073 d!1681453))

(declare-fun d!1681455 () Bool)

(assert (=> d!1681455 (= (nullable!4971 (h!67029 (exprs!4686 lt!2142496))) (nullableFct!1380 (h!67029 (exprs!4686 lt!2142496))))))

(declare-fun bs!1211385 () Bool)

(assert (= bs!1211385 d!1681455))

(declare-fun m!6263798 () Bool)

(assert (=> bs!1211385 m!6263798))

(assert (=> b!5214012 d!1681455))

(assert (=> d!1681151 d!1681267))

(declare-fun bs!1211386 () Bool)

(declare-fun d!1681457 () Bool)

(assert (= bs!1211386 (and d!1681457 d!1681405)))

(declare-fun lambda!261581 () Int)

(assert (=> bs!1211386 (= lambda!261581 lambda!261574)))

(declare-fun bs!1211387 () Bool)

(assert (= bs!1211387 (and d!1681457 d!1681431)))

(assert (=> bs!1211387 (= lambda!261581 lambda!261575)))

(declare-fun bs!1211388 () Bool)

(assert (= bs!1211388 (and d!1681457 d!1681375)))

(assert (=> bs!1211388 (= lambda!261581 lambda!261573)))

(declare-fun bs!1211389 () Bool)

(assert (= bs!1211389 (and d!1681457 d!1681297)))

(assert (=> bs!1211389 (= lambda!261581 lambda!261554)))

(declare-fun bs!1211390 () Bool)

(assert (= bs!1211390 (and d!1681457 d!1681443)))

(assert (=> bs!1211390 (= lambda!261581 lambda!261580)))

(assert (=> d!1681457 (= (nullableZipper!1228 lt!2142499) (exists!1965 lt!2142499 lambda!261581))))

(declare-fun bs!1211391 () Bool)

(assert (= bs!1211391 d!1681457))

(declare-fun m!6263800 () Bool)

(assert (=> bs!1211391 m!6263800))

(assert (=> b!5214016 d!1681457))

(declare-fun d!1681459 () Bool)

(assert (=> d!1681459 (= (isEmptyExpr!764 lt!2142613) (is-EmptyExpr!14802 lt!2142613))))

(assert (=> b!5214128 d!1681459))

(declare-fun d!1681461 () Bool)

(assert (=> d!1681461 (= (nullable!4971 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))) (nullableFct!1380 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343))))))))

(declare-fun bs!1211392 () Bool)

(assert (= bs!1211392 d!1681461))

(declare-fun m!6263802 () Bool)

(assert (=> bs!1211392 m!6263802))

(assert (=> b!5213970 d!1681461))

(assert (=> bm!367370 d!1681287))

(declare-fun d!1681463 () Bool)

(declare-fun c!899560 () Bool)

(assert (=> d!1681463 (= c!899560 (isEmpty!32499 (tail!10272 (t!373871 s!2326))))))

(declare-fun e!3246349 () Bool)

(assert (=> d!1681463 (= (matchZipper!1046 (derivationStepZipper!1072 lt!2142494 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))) e!3246349)))

(declare-fun b!5214949 () Bool)

(assert (=> b!5214949 (= e!3246349 (nullableZipper!1228 (derivationStepZipper!1072 lt!2142494 (head!11175 (t!373871 s!2326)))))))

(declare-fun b!5214950 () Bool)

(assert (=> b!5214950 (= e!3246349 (matchZipper!1046 (derivationStepZipper!1072 (derivationStepZipper!1072 lt!2142494 (head!11175 (t!373871 s!2326))) (head!11175 (tail!10272 (t!373871 s!2326)))) (tail!10272 (tail!10272 (t!373871 s!2326)))))))

(assert (= (and d!1681463 c!899560) b!5214949))

(assert (= (and d!1681463 (not c!899560)) b!5214950))

(assert (=> d!1681463 m!6262902))

(assert (=> d!1681463 m!6263526))

(assert (=> b!5214949 m!6263048))

(declare-fun m!6263804 () Bool)

(assert (=> b!5214949 m!6263804))

(assert (=> b!5214950 m!6262902))

(assert (=> b!5214950 m!6263530))

(assert (=> b!5214950 m!6263048))

(assert (=> b!5214950 m!6263530))

(declare-fun m!6263806 () Bool)

(assert (=> b!5214950 m!6263806))

(assert (=> b!5214950 m!6262902))

(assert (=> b!5214950 m!6263534))

(assert (=> b!5214950 m!6263806))

(assert (=> b!5214950 m!6263534))

(declare-fun m!6263808 () Bool)

(assert (=> b!5214950 m!6263808))

(assert (=> b!5214019 d!1681463))

(declare-fun bs!1211393 () Bool)

(declare-fun d!1681465 () Bool)

(assert (= bs!1211393 (and d!1681465 b!5213634)))

(declare-fun lambda!261582 () Int)

(assert (=> bs!1211393 (= (= (head!11175 (t!373871 s!2326)) (h!67030 s!2326)) (= lambda!261582 lambda!261482))))

(declare-fun bs!1211394 () Bool)

(assert (= bs!1211394 (and d!1681465 d!1681323)))

(assert (=> bs!1211394 (= lambda!261582 lambda!261558)))

(declare-fun bs!1211395 () Bool)

(assert (= bs!1211395 (and d!1681465 d!1681349)))

(assert (=> bs!1211395 (= lambda!261582 lambda!261560)))

(declare-fun bs!1211396 () Bool)

(assert (= bs!1211396 (and d!1681465 d!1681441)))

(assert (=> bs!1211396 (= lambda!261582 lambda!261579)))

(assert (=> d!1681465 true))

(assert (=> d!1681465 (= (derivationStepZipper!1072 lt!2142494 (head!11175 (t!373871 s!2326))) (flatMap!529 lt!2142494 lambda!261582))))

(declare-fun bs!1211397 () Bool)

(assert (= bs!1211397 d!1681465))

(declare-fun m!6263810 () Bool)

(assert (=> bs!1211397 m!6263810))

(assert (=> b!5214019 d!1681465))

(assert (=> b!5214019 d!1681325))

(assert (=> b!5214019 d!1681327))

(declare-fun d!1681467 () Bool)

(assert (=> d!1681467 (= (nullable!4971 (h!67029 (exprs!4686 lt!2142491))) (nullableFct!1380 (h!67029 (exprs!4686 lt!2142491))))))

(declare-fun bs!1211398 () Bool)

(assert (= bs!1211398 d!1681467))

(declare-fun m!6263812 () Bool)

(assert (=> bs!1211398 m!6263812))

(assert (=> b!5213960 d!1681467))

(declare-fun d!1681469 () Bool)

(declare-fun res!2214763 () Bool)

(declare-fun e!3246350 () Bool)

(assert (=> d!1681469 (=> res!2214763 e!3246350)))

(assert (=> d!1681469 (= res!2214763 (is-Nil!60581 (exprs!4686 setElem!33129)))))

(assert (=> d!1681469 (= (forall!14236 (exprs!4686 setElem!33129) lambda!261520) e!3246350)))

(declare-fun b!5214951 () Bool)

(declare-fun e!3246351 () Bool)

(assert (=> b!5214951 (= e!3246350 e!3246351)))

(declare-fun res!2214764 () Bool)

(assert (=> b!5214951 (=> (not res!2214764) (not e!3246351))))

(assert (=> b!5214951 (= res!2214764 (dynLambda!23936 lambda!261520 (h!67029 (exprs!4686 setElem!33129))))))

(declare-fun b!5214952 () Bool)

(assert (=> b!5214952 (= e!3246351 (forall!14236 (t!373870 (exprs!4686 setElem!33129)) lambda!261520))))

(assert (= (and d!1681469 (not res!2214763)) b!5214951))

(assert (= (and b!5214951 res!2214764) b!5214952))

(declare-fun b_lambda!201677 () Bool)

(assert (=> (not b_lambda!201677) (not b!5214951)))

(declare-fun m!6263814 () Bool)

(assert (=> b!5214951 m!6263814))

(declare-fun m!6263816 () Bool)

(assert (=> b!5214952 m!6263816))

(assert (=> d!1681175 d!1681469))

(declare-fun d!1681471 () Bool)

(assert (=> d!1681471 (= (nullable!4971 r!7292) (nullableFct!1380 r!7292))))

(declare-fun bs!1211399 () Bool)

(assert (= bs!1211399 d!1681471))

(declare-fun m!6263818 () Bool)

(assert (=> bs!1211399 m!6263818))

(assert (=> b!5213941 d!1681471))

(declare-fun bm!367556 () Bool)

(declare-fun call!367561 () Bool)

(declare-fun call!367563 () Bool)

(assert (=> bm!367556 (= call!367561 call!367563)))

(declare-fun b!5214953 () Bool)

(declare-fun e!3246357 () Bool)

(declare-fun e!3246354 () Bool)

(assert (=> b!5214953 (= e!3246357 e!3246354)))

(declare-fun c!899561 () Bool)

(assert (=> b!5214953 (= c!899561 (is-Star!14802 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(declare-fun c!899562 () Bool)

(declare-fun bm!367557 () Bool)

(declare-fun call!367562 () Bool)

(assert (=> bm!367557 (= call!367562 (validRegex!6538 (ite c!899562 (regTwo!30117 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))) (regTwo!30116 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))))

(declare-fun b!5214954 () Bool)

(declare-fun res!2214767 () Bool)

(declare-fun e!3246352 () Bool)

(assert (=> b!5214954 (=> res!2214767 e!3246352)))

(assert (=> b!5214954 (= res!2214767 (not (is-Concat!23647 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))))

(declare-fun e!3246356 () Bool)

(assert (=> b!5214954 (= e!3246356 e!3246352)))

(declare-fun b!5214955 () Bool)

(declare-fun e!3246353 () Bool)

(assert (=> b!5214955 (= e!3246352 e!3246353)))

(declare-fun res!2214768 () Bool)

(assert (=> b!5214955 (=> (not res!2214768) (not e!3246353))))

(assert (=> b!5214955 (= res!2214768 call!367561)))

(declare-fun b!5214956 () Bool)

(assert (=> b!5214956 (= e!3246354 e!3246356)))

(assert (=> b!5214956 (= c!899562 (is-Union!14802 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(declare-fun d!1681473 () Bool)

(declare-fun res!2214765 () Bool)

(assert (=> d!1681473 (=> res!2214765 e!3246357)))

(assert (=> d!1681473 (= res!2214765 (is-ElementMatch!14802 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(assert (=> d!1681473 (= (validRegex!6538 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))) e!3246357)))

(declare-fun b!5214957 () Bool)

(declare-fun res!2214769 () Bool)

(declare-fun e!3246355 () Bool)

(assert (=> b!5214957 (=> (not res!2214769) (not e!3246355))))

(assert (=> b!5214957 (= res!2214769 call!367561)))

(assert (=> b!5214957 (= e!3246356 e!3246355)))

(declare-fun b!5214958 () Bool)

(declare-fun e!3246358 () Bool)

(assert (=> b!5214958 (= e!3246358 call!367563)))

(declare-fun b!5214959 () Bool)

(assert (=> b!5214959 (= e!3246353 call!367562)))

(declare-fun bm!367558 () Bool)

(assert (=> bm!367558 (= call!367563 (validRegex!6538 (ite c!899561 (reg!15131 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))) (ite c!899562 (regOne!30117 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))) (regOne!30116 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))))))

(declare-fun b!5214960 () Bool)

(assert (=> b!5214960 (= e!3246355 call!367562)))

(declare-fun b!5214961 () Bool)

(assert (=> b!5214961 (= e!3246354 e!3246358)))

(declare-fun res!2214766 () Bool)

(assert (=> b!5214961 (= res!2214766 (not (nullable!4971 (reg!15131 (ite c!899305 (reg!15131 (regOne!30117 (regOne!30116 r!7292))) (ite c!899306 (regOne!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))))

(assert (=> b!5214961 (=> (not res!2214766) (not e!3246358))))

(assert (= (and d!1681473 (not res!2214765)) b!5214953))

(assert (= (and b!5214953 c!899561) b!5214961))

(assert (= (and b!5214953 (not c!899561)) b!5214956))

(assert (= (and b!5214961 res!2214766) b!5214958))

(assert (= (and b!5214956 c!899562) b!5214957))

(assert (= (and b!5214956 (not c!899562)) b!5214954))

(assert (= (and b!5214957 res!2214769) b!5214960))

(assert (= (and b!5214954 (not res!2214767)) b!5214955))

(assert (= (and b!5214955 res!2214768) b!5214959))

(assert (= (or b!5214960 b!5214959) bm!367557))

(assert (= (or b!5214957 b!5214955) bm!367556))

(assert (= (or b!5214958 bm!367556) bm!367558))

(declare-fun m!6263820 () Bool)

(assert (=> bm!367557 m!6263820))

(declare-fun m!6263822 () Bool)

(assert (=> bm!367558 m!6263822))

(declare-fun m!6263824 () Bool)

(assert (=> b!5214961 m!6263824))

(assert (=> bm!367397 d!1681473))

(declare-fun bm!367559 () Bool)

(declare-fun call!367569 () (Set Context!8372))

(declare-fun call!367567 () (Set Context!8372))

(assert (=> bm!367559 (= call!367569 call!367567)))

(declare-fun call!367564 () List!60705)

(declare-fun c!899566 () Bool)

(declare-fun bm!367560 () Bool)

(declare-fun c!899567 () Bool)

(assert (=> bm!367560 (= call!367564 ($colon$colon!1278 (exprs!4686 (ite (or c!899285 c!899286) lt!2142491 (Context!8373 call!367387))) (ite (or c!899566 c!899567) (regTwo!30116 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))))))))

(declare-fun b!5214962 () Bool)

(declare-fun e!3246359 () (Set Context!8372))

(declare-fun e!3246363 () (Set Context!8372))

(assert (=> b!5214962 (= e!3246359 e!3246363)))

(declare-fun c!899565 () Bool)

(assert (=> b!5214962 (= c!899565 (is-Union!14802 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))))

(declare-fun b!5214963 () Bool)

(declare-fun e!3246361 () (Set Context!8372))

(declare-fun call!367566 () (Set Context!8372))

(assert (=> b!5214963 (= e!3246361 call!367566)))

(declare-fun call!367568 () List!60705)

(declare-fun bm!367561 () Bool)

(assert (=> bm!367561 (= call!367567 (derivationStepZipperDown!250 (ite c!899565 (regOne!30117 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (ite c!899566 (regTwo!30116 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (ite c!899567 (regOne!30116 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (reg!15131 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))))))) (ite (or c!899565 c!899566) (ite (or c!899285 c!899286) lt!2142491 (Context!8373 call!367387)) (Context!8373 call!367568)) (h!67030 s!2326)))))

(declare-fun b!5214964 () Bool)

(assert (=> b!5214964 (= e!3246359 (set.insert (ite (or c!899285 c!899286) lt!2142491 (Context!8373 call!367387)) (as set.empty (Set Context!8372))))))

(declare-fun b!5214965 () Bool)

(declare-fun e!3246360 () (Set Context!8372))

(assert (=> b!5214965 (= e!3246360 (as set.empty (Set Context!8372)))))

(declare-fun b!5214966 () Bool)

(declare-fun e!3246364 () (Set Context!8372))

(declare-fun call!367565 () (Set Context!8372))

(assert (=> b!5214966 (= e!3246364 (set.union call!367565 call!367569))))

(declare-fun b!5214967 () Bool)

(assert (=> b!5214967 (= e!3246360 call!367566)))

(declare-fun e!3246362 () Bool)

(declare-fun b!5214968 () Bool)

(assert (=> b!5214968 (= e!3246362 (nullable!4971 (regOne!30116 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))))))))

(declare-fun bm!367562 () Bool)

(assert (=> bm!367562 (= call!367568 call!367564)))

(declare-fun b!5214969 () Bool)

(assert (=> b!5214969 (= c!899566 e!3246362)))

(declare-fun res!2214770 () Bool)

(assert (=> b!5214969 (=> (not res!2214770) (not e!3246362))))

(assert (=> b!5214969 (= res!2214770 (is-Concat!23647 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))))

(assert (=> b!5214969 (= e!3246363 e!3246364)))

(declare-fun b!5214970 () Bool)

(assert (=> b!5214970 (= e!3246364 e!3246361)))

(assert (=> b!5214970 (= c!899567 (is-Concat!23647 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))))

(declare-fun bm!367563 () Bool)

(assert (=> bm!367563 (= call!367565 (derivationStepZipperDown!250 (ite c!899565 (regTwo!30117 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (regOne!30116 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))))) (ite c!899565 (ite (or c!899285 c!899286) lt!2142491 (Context!8373 call!367387)) (Context!8373 call!367564)) (h!67030 s!2326)))))

(declare-fun b!5214971 () Bool)

(declare-fun c!899563 () Bool)

(assert (=> b!5214971 (= c!899563 (is-Star!14802 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))))))

(assert (=> b!5214971 (= e!3246361 e!3246360)))

(declare-fun b!5214972 () Bool)

(assert (=> b!5214972 (= e!3246363 (set.union call!367567 call!367565))))

(declare-fun c!899564 () Bool)

(declare-fun d!1681475 () Bool)

(assert (=> d!1681475 (= c!899564 (and (is-ElementMatch!14802 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (= (c!899215 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343)))))))) (h!67030 s!2326))))))

(assert (=> d!1681475 (= (derivationStepZipperDown!250 (ite c!899285 (regOne!30117 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899286 (regTwo!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (ite c!899287 (regOne!30116 (h!67029 (exprs!4686 (h!67031 zl!343)))) (reg!15131 (h!67029 (exprs!4686 (h!67031 zl!343))))))) (ite (or c!899285 c!899286) lt!2142491 (Context!8373 call!367387)) (h!67030 s!2326)) e!3246359)))

(declare-fun bm!367564 () Bool)

(assert (=> bm!367564 (= call!367566 call!367569)))

(assert (= (and d!1681475 c!899564) b!5214964))

(assert (= (and d!1681475 (not c!899564)) b!5214962))

(assert (= (and b!5214962 c!899565) b!5214972))

(assert (= (and b!5214962 (not c!899565)) b!5214969))

(assert (= (and b!5214969 res!2214770) b!5214968))

(assert (= (and b!5214969 c!899566) b!5214966))

(assert (= (and b!5214969 (not c!899566)) b!5214970))

(assert (= (and b!5214970 c!899567) b!5214963))

(assert (= (and b!5214970 (not c!899567)) b!5214971))

(assert (= (and b!5214971 c!899563) b!5214967))

(assert (= (and b!5214971 (not c!899563)) b!5214965))

(assert (= (or b!5214963 b!5214967) bm!367562))

(assert (= (or b!5214963 b!5214967) bm!367564))

(assert (= (or b!5214966 bm!367562) bm!367560))

(assert (= (or b!5214966 bm!367564) bm!367559))

(assert (= (or b!5214972 b!5214966) bm!367563))

(assert (= (or b!5214972 bm!367559) bm!367561))

(declare-fun m!6263826 () Bool)

(assert (=> bm!367563 m!6263826))

(declare-fun m!6263828 () Bool)

(assert (=> b!5214968 m!6263828))

(declare-fun m!6263830 () Bool)

(assert (=> bm!367560 m!6263830))

(declare-fun m!6263832 () Bool)

(assert (=> b!5214964 m!6263832))

(declare-fun m!6263834 () Bool)

(assert (=> bm!367561 m!6263834))

(assert (=> bm!367380 d!1681475))

(declare-fun b!5214973 () Bool)

(declare-fun e!3246371 () Bool)

(declare-fun lt!2142672 () Bool)

(declare-fun call!367570 () Bool)

(assert (=> b!5214973 (= e!3246371 (= lt!2142672 call!367570))))

(declare-fun b!5214974 () Bool)

(declare-fun e!3246368 () Bool)

(assert (=> b!5214974 (= e!3246368 (= (head!11175 (_2!35304 (get!20815 lt!2142572))) (c!899215 (regTwo!30116 r!7292))))))

(declare-fun b!5214975 () Bool)

(declare-fun res!2214775 () Bool)

(assert (=> b!5214975 (=> (not res!2214775) (not e!3246368))))

(assert (=> b!5214975 (= res!2214775 (isEmpty!32499 (tail!10272 (_2!35304 (get!20815 lt!2142572)))))))

(declare-fun b!5214976 () Bool)

(declare-fun res!2214778 () Bool)

(declare-fun e!3246367 () Bool)

(assert (=> b!5214976 (=> res!2214778 e!3246367)))

(assert (=> b!5214976 (= res!2214778 (not (is-ElementMatch!14802 (regTwo!30116 r!7292))))))

(declare-fun e!3246366 () Bool)

(assert (=> b!5214976 (= e!3246366 e!3246367)))

(declare-fun b!5214977 () Bool)

(declare-fun e!3246370 () Bool)

(assert (=> b!5214977 (= e!3246370 (matchR!6987 (derivativeStep!4050 (regTwo!30116 r!7292) (head!11175 (_2!35304 (get!20815 lt!2142572)))) (tail!10272 (_2!35304 (get!20815 lt!2142572)))))))

(declare-fun d!1681477 () Bool)

(assert (=> d!1681477 e!3246371))

(declare-fun c!899569 () Bool)

(assert (=> d!1681477 (= c!899569 (is-EmptyExpr!14802 (regTwo!30116 r!7292)))))

(assert (=> d!1681477 (= lt!2142672 e!3246370)))

(declare-fun c!899570 () Bool)

(assert (=> d!1681477 (= c!899570 (isEmpty!32499 (_2!35304 (get!20815 lt!2142572))))))

(assert (=> d!1681477 (validRegex!6538 (regTwo!30116 r!7292))))

(assert (=> d!1681477 (= (matchR!6987 (regTwo!30116 r!7292) (_2!35304 (get!20815 lt!2142572))) lt!2142672)))

(declare-fun b!5214978 () Bool)

(declare-fun e!3246365 () Bool)

(declare-fun e!3246369 () Bool)

(assert (=> b!5214978 (= e!3246365 e!3246369)))

(declare-fun res!2214776 () Bool)

(assert (=> b!5214978 (=> res!2214776 e!3246369)))

(assert (=> b!5214978 (= res!2214776 call!367570)))

(declare-fun b!5214979 () Bool)

(assert (=> b!5214979 (= e!3246369 (not (= (head!11175 (_2!35304 (get!20815 lt!2142572))) (c!899215 (regTwo!30116 r!7292)))))))

(declare-fun b!5214980 () Bool)

(declare-fun res!2214773 () Bool)

(assert (=> b!5214980 (=> res!2214773 e!3246369)))

(assert (=> b!5214980 (= res!2214773 (not (isEmpty!32499 (tail!10272 (_2!35304 (get!20815 lt!2142572))))))))

(declare-fun b!5214981 () Bool)

(declare-fun res!2214777 () Bool)

(assert (=> b!5214981 (=> (not res!2214777) (not e!3246368))))

(assert (=> b!5214981 (= res!2214777 (not call!367570))))

(declare-fun bm!367565 () Bool)

(assert (=> bm!367565 (= call!367570 (isEmpty!32499 (_2!35304 (get!20815 lt!2142572))))))

(declare-fun b!5214982 () Bool)

(assert (=> b!5214982 (= e!3246371 e!3246366)))

(declare-fun c!899568 () Bool)

(assert (=> b!5214982 (= c!899568 (is-EmptyLang!14802 (regTwo!30116 r!7292)))))

(declare-fun b!5214983 () Bool)

(declare-fun res!2214771 () Bool)

(assert (=> b!5214983 (=> res!2214771 e!3246367)))

(assert (=> b!5214983 (= res!2214771 e!3246368)))

(declare-fun res!2214774 () Bool)

(assert (=> b!5214983 (=> (not res!2214774) (not e!3246368))))

(assert (=> b!5214983 (= res!2214774 lt!2142672)))

(declare-fun b!5214984 () Bool)

(assert (=> b!5214984 (= e!3246370 (nullable!4971 (regTwo!30116 r!7292)))))

(declare-fun b!5214985 () Bool)

(assert (=> b!5214985 (= e!3246367 e!3246365)))

(declare-fun res!2214772 () Bool)

(assert (=> b!5214985 (=> (not res!2214772) (not e!3246365))))

(assert (=> b!5214985 (= res!2214772 (not lt!2142672))))

(declare-fun b!5214986 () Bool)

(assert (=> b!5214986 (= e!3246366 (not lt!2142672))))

(assert (= (and d!1681477 c!899570) b!5214984))

(assert (= (and d!1681477 (not c!899570)) b!5214977))

(assert (= (and d!1681477 c!899569) b!5214973))

(assert (= (and d!1681477 (not c!899569)) b!5214982))

(assert (= (and b!5214982 c!899568) b!5214986))

(assert (= (and b!5214982 (not c!899568)) b!5214976))

(assert (= (and b!5214976 (not res!2214778)) b!5214983))

(assert (= (and b!5214983 res!2214774) b!5214981))

(assert (= (and b!5214981 res!2214777) b!5214975))

(assert (= (and b!5214975 res!2214775) b!5214974))

(assert (= (and b!5214983 (not res!2214771)) b!5214985))

(assert (= (and b!5214985 res!2214772) b!5214978))

(assert (= (and b!5214978 (not res!2214776)) b!5214980))

(assert (= (and b!5214980 (not res!2214773)) b!5214979))

(assert (= (or b!5214973 b!5214978 b!5214981) bm!367565))

(declare-fun m!6263836 () Bool)

(assert (=> b!5214975 m!6263836))

(assert (=> b!5214975 m!6263836))

(declare-fun m!6263838 () Bool)

(assert (=> b!5214975 m!6263838))

(declare-fun m!6263840 () Bool)

(assert (=> b!5214979 m!6263840))

(declare-fun m!6263842 () Bool)

(assert (=> d!1681477 m!6263842))

(assert (=> d!1681477 m!6263540))

(assert (=> b!5214980 m!6263836))

(assert (=> b!5214980 m!6263836))

(assert (=> b!5214980 m!6263838))

(assert (=> b!5214984 m!6263542))

(assert (=> b!5214977 m!6263840))

(assert (=> b!5214977 m!6263840))

(declare-fun m!6263844 () Bool)

(assert (=> b!5214977 m!6263844))

(assert (=> b!5214977 m!6263836))

(assert (=> b!5214977 m!6263844))

(assert (=> b!5214977 m!6263836))

(declare-fun m!6263846 () Bool)

(assert (=> b!5214977 m!6263846))

(assert (=> bm!367565 m!6263842))

(assert (=> b!5214974 m!6263840))

(assert (=> b!5213841 d!1681477))

(assert (=> b!5213841 d!1681401))

(declare-fun bs!1211400 () Bool)

(declare-fun d!1681479 () Bool)

(assert (= bs!1211400 (and d!1681479 d!1681177)))

(declare-fun lambda!261583 () Int)

(assert (=> bs!1211400 (= lambda!261583 lambda!261523)))

(declare-fun bs!1211401 () Bool)

(assert (= bs!1211401 (and d!1681479 d!1681171)))

(assert (=> bs!1211401 (= lambda!261583 lambda!261516)))

(declare-fun bs!1211402 () Bool)

(assert (= bs!1211402 (and d!1681479 d!1681319)))

(assert (=> bs!1211402 (= lambda!261583 lambda!261555)))

(declare-fun bs!1211403 () Bool)

(assert (= bs!1211403 (and d!1681479 d!1681345)))

(assert (=> bs!1211403 (= lambda!261583 lambda!261559)))

(declare-fun bs!1211404 () Bool)

(assert (= bs!1211404 (and d!1681479 d!1681175)))

(assert (=> bs!1211404 (= lambda!261583 lambda!261520)))

(declare-fun bs!1211405 () Bool)

(assert (= bs!1211405 (and d!1681479 d!1681173)))

(assert (=> bs!1211405 (= lambda!261583 lambda!261519)))

(declare-fun bs!1211406 () Bool)

(assert (= bs!1211406 (and d!1681479 d!1681435)))

(assert (=> bs!1211406 (= lambda!261583 lambda!261578)))

(declare-fun bs!1211407 () Bool)

(assert (= bs!1211407 (and d!1681479 d!1681359)))

(assert (=> bs!1211407 (= lambda!261583 lambda!261564)))

(declare-fun bs!1211408 () Bool)

(assert (= bs!1211408 (and d!1681479 d!1681163)))

(assert (=> bs!1211408 (= lambda!261583 lambda!261513)))

(declare-fun b!5214987 () Bool)

(declare-fun e!3246373 () Regex!14802)

(assert (=> b!5214987 (= e!3246373 (Union!14802 (h!67029 (t!373870 (unfocusZipperList!244 zl!343))) (generalisedUnion!731 (t!373870 (t!373870 (unfocusZipperList!244 zl!343))))))))

(declare-fun b!5214988 () Bool)

(declare-fun e!3246375 () Bool)

(declare-fun lt!2142673 () Regex!14802)

(assert (=> b!5214988 (= e!3246375 (= lt!2142673 (head!11176 (t!373870 (unfocusZipperList!244 zl!343)))))))

(declare-fun b!5214990 () Bool)

(assert (=> b!5214990 (= e!3246375 (isUnion!205 lt!2142673))))

(declare-fun b!5214991 () Bool)

(declare-fun e!3246376 () Bool)

(declare-fun e!3246377 () Bool)

(assert (=> b!5214991 (= e!3246376 e!3246377)))

(declare-fun c!899571 () Bool)

(assert (=> b!5214991 (= c!899571 (isEmpty!32496 (t!373870 (unfocusZipperList!244 zl!343))))))

(declare-fun b!5214992 () Bool)

(declare-fun e!3246372 () Regex!14802)

(assert (=> b!5214992 (= e!3246372 e!3246373)))

(declare-fun c!899573 () Bool)

(assert (=> b!5214992 (= c!899573 (is-Cons!60581 (t!373870 (unfocusZipperList!244 zl!343))))))

(declare-fun b!5214993 () Bool)

(assert (=> b!5214993 (= e!3246377 (isEmptyLang!773 lt!2142673))))

(declare-fun b!5214994 () Bool)

(assert (=> b!5214994 (= e!3246372 (h!67029 (t!373870 (unfocusZipperList!244 zl!343))))))

(assert (=> d!1681479 e!3246376))

(declare-fun res!2214779 () Bool)

(assert (=> d!1681479 (=> (not res!2214779) (not e!3246376))))

(assert (=> d!1681479 (= res!2214779 (validRegex!6538 lt!2142673))))

(assert (=> d!1681479 (= lt!2142673 e!3246372)))

(declare-fun c!899572 () Bool)

(declare-fun e!3246374 () Bool)

(assert (=> d!1681479 (= c!899572 e!3246374)))

(declare-fun res!2214780 () Bool)

(assert (=> d!1681479 (=> (not res!2214780) (not e!3246374))))

(assert (=> d!1681479 (= res!2214780 (is-Cons!60581 (t!373870 (unfocusZipperList!244 zl!343))))))

(assert (=> d!1681479 (forall!14236 (t!373870 (unfocusZipperList!244 zl!343)) lambda!261583)))

(assert (=> d!1681479 (= (generalisedUnion!731 (t!373870 (unfocusZipperList!244 zl!343))) lt!2142673)))

(declare-fun b!5214989 () Bool)

(assert (=> b!5214989 (= e!3246374 (isEmpty!32496 (t!373870 (t!373870 (unfocusZipperList!244 zl!343)))))))

(declare-fun b!5214995 () Bool)

(assert (=> b!5214995 (= e!3246373 EmptyLang!14802)))

(declare-fun b!5214996 () Bool)

(assert (=> b!5214996 (= e!3246377 e!3246375)))

(declare-fun c!899574 () Bool)

(assert (=> b!5214996 (= c!899574 (isEmpty!32496 (tail!10273 (t!373870 (unfocusZipperList!244 zl!343)))))))

(assert (= (and d!1681479 res!2214780) b!5214989))

(assert (= (and d!1681479 c!899572) b!5214994))

(assert (= (and d!1681479 (not c!899572)) b!5214992))

(assert (= (and b!5214992 c!899573) b!5214987))

(assert (= (and b!5214992 (not c!899573)) b!5214995))

(assert (= (and d!1681479 res!2214779) b!5214991))

(assert (= (and b!5214991 c!899571) b!5214993))

(assert (= (and b!5214991 (not c!899571)) b!5214996))

(assert (= (and b!5214996 c!899574) b!5214988))

(assert (= (and b!5214996 (not c!899574)) b!5214990))

(declare-fun m!6263848 () Bool)

(assert (=> b!5214988 m!6263848))

(declare-fun m!6263850 () Bool)

(assert (=> d!1681479 m!6263850))

(declare-fun m!6263852 () Bool)

(assert (=> d!1681479 m!6263852))

(assert (=> b!5214991 m!6263118))

(declare-fun m!6263854 () Bool)

(assert (=> b!5214996 m!6263854))

(assert (=> b!5214996 m!6263854))

(declare-fun m!6263856 () Bool)

(assert (=> b!5214996 m!6263856))

(declare-fun m!6263858 () Bool)

(assert (=> b!5214990 m!6263858))

(declare-fun m!6263860 () Bool)

(assert (=> b!5214987 m!6263860))

(declare-fun m!6263862 () Bool)

(assert (=> b!5214989 m!6263862))

(declare-fun m!6263864 () Bool)

(assert (=> b!5214993 m!6263864))

(assert (=> b!5214064 d!1681479))

(assert (=> d!1681145 d!1681141))

(declare-fun d!1681481 () Bool)

(assert (=> d!1681481 (= (flatMap!529 lt!2142484 lambda!261482) (dynLambda!23934 lambda!261482 lt!2142496))))

(assert (=> d!1681481 true))

(declare-fun _$13!1699 () Unit!152474)

(assert (=> d!1681481 (= (choose!38764 lt!2142484 lt!2142496 lambda!261482) _$13!1699)))

(declare-fun b_lambda!201679 () Bool)

(assert (=> (not b_lambda!201679) (not d!1681481)))

(declare-fun bs!1211409 () Bool)

(assert (= bs!1211409 d!1681481))

(assert (=> bs!1211409 m!6262738))

(assert (=> bs!1211409 m!6263036))

(assert (=> d!1681145 d!1681481))

(declare-fun d!1681483 () Bool)

(assert (=> d!1681483 (= ($colon$colon!1278 (exprs!4686 lt!2142491) (ite (or c!899241 c!899242) (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (regTwo!30117 (regOne!30116 r!7292)))) (Cons!60581 (ite (or c!899241 c!899242) (regTwo!30116 (regTwo!30117 (regOne!30116 r!7292))) (regTwo!30117 (regOne!30116 r!7292))) (exprs!4686 lt!2142491)))))

(assert (=> bm!367354 d!1681483))

(assert (=> b!5213937 d!1681437))

(assert (=> b!5213937 d!1681305))

(declare-fun d!1681485 () Bool)

(declare-fun c!899577 () Bool)

(assert (=> d!1681485 (= c!899577 (is-Nil!60583 lt!2142595))))

(declare-fun e!3246380 () (Set Context!8372))

(assert (=> d!1681485 (= (content!10734 lt!2142595) e!3246380)))

(declare-fun b!5215001 () Bool)

(assert (=> b!5215001 (= e!3246380 (as set.empty (Set Context!8372)))))

(declare-fun b!5215002 () Bool)

(assert (=> b!5215002 (= e!3246380 (set.union (set.insert (h!67031 lt!2142595) (as set.empty (Set Context!8372))) (content!10734 (t!373872 lt!2142595))))))

(assert (= (and d!1681485 c!899577) b!5215001))

(assert (= (and d!1681485 (not c!899577)) b!5215002))

(declare-fun m!6263866 () Bool)

(assert (=> b!5215002 m!6263866))

(declare-fun m!6263868 () Bool)

(assert (=> b!5215002 m!6263868))

(assert (=> b!5214043 d!1681485))

(assert (=> d!1681117 d!1681115))

(assert (=> d!1681117 d!1681113))

(declare-fun d!1681487 () Bool)

(assert (=> d!1681487 (= (matchR!6987 r!7292 s!2326) (matchRSpec!1905 r!7292 s!2326))))

(assert (=> d!1681487 true))

(declare-fun _$88!3471 () Unit!152474)

(assert (=> d!1681487 (= (choose!38762 r!7292 s!2326) _$88!3471)))

(declare-fun bs!1211410 () Bool)

(assert (= bs!1211410 d!1681487))

(assert (=> bs!1211410 m!6262792))

(assert (=> bs!1211410 m!6262790))

(assert (=> d!1681117 d!1681487))

(assert (=> d!1681117 d!1681135))

(declare-fun d!1681489 () Bool)

(declare-fun res!2214781 () Bool)

(declare-fun e!3246381 () Bool)

(assert (=> d!1681489 (=> res!2214781 e!3246381)))

(assert (=> d!1681489 (= res!2214781 (is-Nil!60581 lt!2142607))))

(assert (=> d!1681489 (= (forall!14236 lt!2142607 lambda!261519) e!3246381)))

(declare-fun b!5215003 () Bool)

(declare-fun e!3246382 () Bool)

(assert (=> b!5215003 (= e!3246381 e!3246382)))

(declare-fun res!2214782 () Bool)

(assert (=> b!5215003 (=> (not res!2214782) (not e!3246382))))

(assert (=> b!5215003 (= res!2214782 (dynLambda!23936 lambda!261519 (h!67029 lt!2142607)))))

(declare-fun b!5215004 () Bool)

(assert (=> b!5215004 (= e!3246382 (forall!14236 (t!373870 lt!2142607) lambda!261519))))

(assert (= (and d!1681489 (not res!2214781)) b!5215003))

(assert (= (and b!5215003 res!2214782) b!5215004))

(declare-fun b_lambda!201681 () Bool)

(assert (=> (not b_lambda!201681) (not b!5215003)))

(declare-fun m!6263870 () Bool)

(assert (=> b!5215003 m!6263870))

(declare-fun m!6263872 () Bool)

(assert (=> b!5215004 m!6263872))

(assert (=> d!1681173 d!1681489))

(declare-fun bm!367566 () Bool)

(declare-fun call!367576 () (Set Context!8372))

(declare-fun call!367574 () (Set Context!8372))

(assert (=> bm!367566 (= call!367576 call!367574)))

(declare-fun c!899581 () Bool)

(declare-fun call!367571 () List!60705)

(declare-fun c!899582 () Bool)

(declare-fun bm!367567 () Bool)

(assert (=> bm!367567 (= call!367571 ($colon$colon!1278 (exprs!4686 (ite c!899245 lt!2142491 (Context!8373 call!367364))) (ite (or c!899581 c!899582) (regTwo!30116 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(declare-fun b!5215005 () Bool)

(declare-fun e!3246383 () (Set Context!8372))

(declare-fun e!3246387 () (Set Context!8372))

(assert (=> b!5215005 (= e!3246383 e!3246387)))

(declare-fun c!899580 () Bool)

(assert (=> b!5215005 (= c!899580 (is-Union!14802 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun b!5215006 () Bool)

(declare-fun e!3246385 () (Set Context!8372))

(declare-fun call!367573 () (Set Context!8372))

(assert (=> b!5215006 (= e!3246385 call!367573)))

(declare-fun call!367575 () List!60705)

(declare-fun bm!367568 () Bool)

(assert (=> bm!367568 (= call!367574 (derivationStepZipperDown!250 (ite c!899580 (regOne!30117 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (ite c!899581 (regTwo!30116 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (ite c!899582 (regOne!30116 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (reg!15131 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))) (ite (or c!899580 c!899581) (ite c!899245 lt!2142491 (Context!8373 call!367364)) (Context!8373 call!367575)) (h!67030 s!2326)))))

(declare-fun b!5215007 () Bool)

(assert (=> b!5215007 (= e!3246383 (set.insert (ite c!899245 lt!2142491 (Context!8373 call!367364)) (as set.empty (Set Context!8372))))))

(declare-fun b!5215008 () Bool)

(declare-fun e!3246384 () (Set Context!8372))

(assert (=> b!5215008 (= e!3246384 (as set.empty (Set Context!8372)))))

(declare-fun b!5215009 () Bool)

(declare-fun e!3246388 () (Set Context!8372))

(declare-fun call!367572 () (Set Context!8372))

(assert (=> b!5215009 (= e!3246388 (set.union call!367572 call!367576))))

(declare-fun b!5215010 () Bool)

(assert (=> b!5215010 (= e!3246384 call!367573)))

(declare-fun b!5215011 () Bool)

(declare-fun e!3246386 () Bool)

(assert (=> b!5215011 (= e!3246386 (nullable!4971 (regOne!30116 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))))))

(declare-fun bm!367569 () Bool)

(assert (=> bm!367569 (= call!367575 call!367571)))

(declare-fun b!5215012 () Bool)

(assert (=> b!5215012 (= c!899581 e!3246386)))

(declare-fun res!2214783 () Bool)

(assert (=> b!5215012 (=> (not res!2214783) (not e!3246386))))

(assert (=> b!5215012 (= res!2214783 (is-Concat!23647 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(assert (=> b!5215012 (= e!3246387 e!3246388)))

(declare-fun b!5215013 () Bool)

(assert (=> b!5215013 (= e!3246388 e!3246385)))

(assert (=> b!5215013 (= c!899582 (is-Concat!23647 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(declare-fun bm!367570 () Bool)

(assert (=> bm!367570 (= call!367572 (derivationStepZipperDown!250 (ite c!899580 (regTwo!30117 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (regOne!30116 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))))) (ite c!899580 (ite c!899245 lt!2142491 (Context!8373 call!367364)) (Context!8373 call!367571)) (h!67030 s!2326)))))

(declare-fun b!5215014 () Bool)

(declare-fun c!899578 () Bool)

(assert (=> b!5215014 (= c!899578 (is-Star!14802 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))))))

(assert (=> b!5215014 (= e!3246385 e!3246384)))

(declare-fun b!5215015 () Bool)

(assert (=> b!5215015 (= e!3246387 (set.union call!367574 call!367572))))

(declare-fun c!899579 () Bool)

(declare-fun d!1681491 () Bool)

(assert (=> d!1681491 (= c!899579 (and (is-ElementMatch!14802 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (= (c!899215 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292))))) (h!67030 s!2326))))))

(assert (=> d!1681491 (= (derivationStepZipperDown!250 (ite c!899245 (regTwo!30117 (regOne!30117 (regOne!30116 r!7292))) (regOne!30116 (regOne!30117 (regOne!30116 r!7292)))) (ite c!899245 lt!2142491 (Context!8373 call!367364)) (h!67030 s!2326)) e!3246383)))

(declare-fun bm!367571 () Bool)

(assert (=> bm!367571 (= call!367573 call!367576)))

(assert (= (and d!1681491 c!899579) b!5215007))

(assert (= (and d!1681491 (not c!899579)) b!5215005))

(assert (= (and b!5215005 c!899580) b!5215015))

(assert (= (and b!5215005 (not c!899580)) b!5215012))

(assert (= (and b!5215012 res!2214783) b!5215011))

(assert (= (and b!5215012 c!899581) b!5215009))

(assert (= (and b!5215012 (not c!899581)) b!5215013))

(assert (= (and b!5215013 c!899582) b!5215006))

(assert (= (and b!5215013 (not c!899582)) b!5215014))

(assert (= (and b!5215014 c!899578) b!5215010))

(assert (= (and b!5215014 (not c!899578)) b!5215008))

(assert (= (or b!5215006 b!5215010) bm!367569))

(assert (= (or b!5215006 b!5215010) bm!367571))

(assert (= (or b!5215009 bm!367569) bm!367567))

(assert (= (or b!5215009 bm!367571) bm!367566))

(assert (= (or b!5215015 b!5215009) bm!367570))

(assert (= (or b!5215015 bm!367566) bm!367568))

(declare-fun m!6263874 () Bool)

(assert (=> bm!367570 m!6263874))

(declare-fun m!6263876 () Bool)

(assert (=> b!5215011 m!6263876))

(declare-fun m!6263878 () Bool)

(assert (=> bm!367567 m!6263878))

(declare-fun m!6263880 () Bool)

(assert (=> b!5215007 m!6263880))

(declare-fun m!6263882 () Bool)

(assert (=> bm!367568 m!6263882))

(assert (=> bm!367363 d!1681491))

(assert (=> b!5213955 d!1681119))

(declare-fun d!1681493 () Bool)

(assert (=> d!1681493 (= (isEmpty!32496 (exprs!4686 (h!67031 zl!343))) (is-Nil!60581 (exprs!4686 (h!67031 zl!343))))))

(assert (=> b!5214132 d!1681493))

(declare-fun d!1681495 () Bool)

(declare-fun c!899583 () Bool)

(assert (=> d!1681495 (= c!899583 (isEmpty!32499 (tail!10272 (t!373871 s!2326))))))

(declare-fun e!3246389 () Bool)

(assert (=> d!1681495 (= (matchZipper!1046 (derivationStepZipper!1072 lt!2142488 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))) e!3246389)))

(declare-fun b!5215016 () Bool)

(assert (=> b!5215016 (= e!3246389 (nullableZipper!1228 (derivationStepZipper!1072 lt!2142488 (head!11175 (t!373871 s!2326)))))))

(declare-fun b!5215017 () Bool)

(assert (=> b!5215017 (= e!3246389 (matchZipper!1046 (derivationStepZipper!1072 (derivationStepZipper!1072 lt!2142488 (head!11175 (t!373871 s!2326))) (head!11175 (tail!10272 (t!373871 s!2326)))) (tail!10272 (tail!10272 (t!373871 s!2326)))))))

(assert (= (and d!1681495 c!899583) b!5215016))

(assert (= (and d!1681495 (not c!899583)) b!5215017))

(assert (=> d!1681495 m!6262902))

(assert (=> d!1681495 m!6263526))

(assert (=> b!5215016 m!6263054))

(declare-fun m!6263884 () Bool)

(assert (=> b!5215016 m!6263884))

(assert (=> b!5215017 m!6262902))

(assert (=> b!5215017 m!6263530))

(assert (=> b!5215017 m!6263054))

(assert (=> b!5215017 m!6263530))

(declare-fun m!6263886 () Bool)

(assert (=> b!5215017 m!6263886))

(assert (=> b!5215017 m!6262902))

(assert (=> b!5215017 m!6263534))

(assert (=> b!5215017 m!6263886))

(assert (=> b!5215017 m!6263534))

(declare-fun m!6263888 () Bool)

(assert (=> b!5215017 m!6263888))

(assert (=> b!5214021 d!1681495))

(declare-fun bs!1211411 () Bool)

(declare-fun d!1681497 () Bool)

(assert (= bs!1211411 (and d!1681497 d!1681441)))

(declare-fun lambda!261584 () Int)

(assert (=> bs!1211411 (= lambda!261584 lambda!261579)))

(declare-fun bs!1211412 () Bool)

(assert (= bs!1211412 (and d!1681497 d!1681349)))

(assert (=> bs!1211412 (= lambda!261584 lambda!261560)))

(declare-fun bs!1211413 () Bool)

(assert (= bs!1211413 (and d!1681497 b!5213634)))

(assert (=> bs!1211413 (= (= (head!11175 (t!373871 s!2326)) (h!67030 s!2326)) (= lambda!261584 lambda!261482))))

(declare-fun bs!1211414 () Bool)

(assert (= bs!1211414 (and d!1681497 d!1681465)))

(assert (=> bs!1211414 (= lambda!261584 lambda!261582)))

(declare-fun bs!1211415 () Bool)

(assert (= bs!1211415 (and d!1681497 d!1681323)))

(assert (=> bs!1211415 (= lambda!261584 lambda!261558)))

(assert (=> d!1681497 true))

(assert (=> d!1681497 (= (derivationStepZipper!1072 lt!2142488 (head!11175 (t!373871 s!2326))) (flatMap!529 lt!2142488 lambda!261584))))

(declare-fun bs!1211416 () Bool)

(assert (= bs!1211416 d!1681497))

(declare-fun m!6263890 () Bool)

(assert (=> bs!1211416 m!6263890))

(assert (=> b!5214021 d!1681497))

(assert (=> b!5214021 d!1681325))

(assert (=> b!5214021 d!1681327))

(declare-fun d!1681499 () Bool)

(declare-fun c!899584 () Bool)

(assert (=> d!1681499 (= c!899584 (isEmpty!32499 (tail!10272 (t!373871 s!2326))))))

(declare-fun e!3246390 () Bool)

(assert (=> d!1681499 (= (matchZipper!1046 (derivationStepZipper!1072 lt!2142497 (head!11175 (t!373871 s!2326))) (tail!10272 (t!373871 s!2326))) e!3246390)))

(declare-fun b!5215018 () Bool)

(assert (=> b!5215018 (= e!3246390 (nullableZipper!1228 (derivationStepZipper!1072 lt!2142497 (head!11175 (t!373871 s!2326)))))))

(declare-fun b!5215019 () Bool)

(assert (=> b!5215019 (= e!3246390 (matchZipper!1046 (derivationStepZipper!1072 (derivationStepZipper!1072 lt!2142497 (head!11175 (t!373871 s!2326))) (head!11175 (tail!10272 (t!373871 s!2326)))) (tail!10272 (tail!10272 (t!373871 s!2326)))))))

(assert (= (and d!1681499 c!899584) b!5215018))

(assert (= (and d!1681499 (not c!899584)) b!5215019))

(assert (=> d!1681499 m!6262902))

(assert (=> d!1681499 m!6263526))

(assert (=> b!5215018 m!6262900))

(declare-fun m!6263892 () Bool)

(assert (=> b!5215018 m!6263892))

(assert (=> b!5215019 m!6262902))

(assert (=> b!5215019 m!6263530))

(assert (=> b!5215019 m!6262900))

(assert (=> b!5215019 m!6263530))

(declare-fun m!6263894 () Bool)

(assert (=> b!5215019 m!6263894))

(assert (=> b!5215019 m!6262902))

(assert (=> b!5215019 m!6263534))

(assert (=> b!5215019 m!6263894))

(assert (=> b!5215019 m!6263534))

(declare-fun m!6263896 () Bool)

(assert (=> b!5215019 m!6263896))

(assert (=> b!5213775 d!1681499))

(declare-fun bs!1211417 () Bool)

(declare-fun d!1681501 () Bool)

(assert (= bs!1211417 (and d!1681501 d!1681441)))

(declare-fun lambda!261585 () Int)

(assert (=> bs!1211417 (= lambda!261585 lambda!261579)))

(declare-fun bs!1211418 () Bool)

(assert (= bs!1211418 (and d!1681501 d!1681497)))

(assert (=> bs!1211418 (= lambda!261585 lambda!261584)))

(declare-fun bs!1211419 () Bool)

(assert (= bs!1211419 (and d!1681501 d!1681349)))

(assert (=> bs!1211419 (= lambda!261585 lambda!261560)))

(declare-fun bs!1211420 () Bool)

(assert (= bs!1211420 (and d!1681501 b!5213634)))

(assert (=> bs!1211420 (= (= (head!11175 (t!373871 s!2326)) (h!67030 s!2326)) (= lambda!261585 lambda!261482))))

(declare-fun bs!1211421 () Bool)

(assert (= bs!1211421 (and d!1681501 d!1681465)))

(assert (=> bs!1211421 (= lambda!261585 lambda!261582)))

(declare-fun bs!1211422 () Bool)

(assert (= bs!1211422 (and d!1681501 d!1681323)))

(assert (=> bs!1211422 (= lambda!261585 lambda!261558)))

(assert (=> d!1681501 true))

(assert (=> d!1681501 (= (derivationStepZipper!1072 lt!2142497 (head!11175 (t!373871 s!2326))) (flatMap!529 lt!2142497 lambda!261585))))

(declare-fun bs!1211423 () Bool)

(assert (= bs!1211423 d!1681501))

(declare-fun m!6263898 () Bool)

(assert (=> bs!1211423 m!6263898))

(assert (=> b!5213775 d!1681501))

(assert (=> b!5213775 d!1681325))

(assert (=> b!5213775 d!1681327))

(declare-fun b!5215020 () Bool)

(declare-fun e!3246391 () Bool)

(declare-fun tp!1462196 () Bool)

(declare-fun tp!1462197 () Bool)

(assert (=> b!5215020 (= e!3246391 (and tp!1462196 tp!1462197))))

(assert (=> b!5214186 (= tp!1462118 e!3246391)))

(assert (= (and b!5214186 (is-Cons!60581 (exprs!4686 setElem!33135))) b!5215020))

(declare-fun e!3246392 () Bool)

(assert (=> b!5214171 (= tp!1462103 e!3246392)))

(declare-fun b!5215022 () Bool)

(declare-fun tp!1462200 () Bool)

(declare-fun tp!1462202 () Bool)

(assert (=> b!5215022 (= e!3246392 (and tp!1462200 tp!1462202))))

(declare-fun b!5215024 () Bool)

(declare-fun tp!1462199 () Bool)

(declare-fun tp!1462198 () Bool)

(assert (=> b!5215024 (= e!3246392 (and tp!1462199 tp!1462198))))

(declare-fun b!5215023 () Bool)

(declare-fun tp!1462201 () Bool)

(assert (=> b!5215023 (= e!3246392 tp!1462201)))

(declare-fun b!5215021 () Bool)

(assert (=> b!5215021 (= e!3246392 tp_is_empty!38857)))

(assert (= (and b!5214171 (is-ElementMatch!14802 (reg!15131 (regOne!30117 r!7292)))) b!5215021))

(assert (= (and b!5214171 (is-Concat!23647 (reg!15131 (regOne!30117 r!7292)))) b!5215022))

(assert (= (and b!5214171 (is-Star!14802 (reg!15131 (regOne!30117 r!7292)))) b!5215023))

(assert (= (and b!5214171 (is-Union!14802 (reg!15131 (regOne!30117 r!7292)))) b!5215024))

(declare-fun e!3246393 () Bool)

(assert (=> b!5214170 (= tp!1462102 e!3246393)))

(declare-fun b!5215026 () Bool)

(declare-fun tp!1462205 () Bool)

(declare-fun tp!1462207 () Bool)

(assert (=> b!5215026 (= e!3246393 (and tp!1462205 tp!1462207))))

(declare-fun b!5215028 () Bool)

(declare-fun tp!1462204 () Bool)

(declare-fun tp!1462203 () Bool)

(assert (=> b!5215028 (= e!3246393 (and tp!1462204 tp!1462203))))

(declare-fun b!5215027 () Bool)

(declare-fun tp!1462206 () Bool)

(assert (=> b!5215027 (= e!3246393 tp!1462206)))

(declare-fun b!5215025 () Bool)

(assert (=> b!5215025 (= e!3246393 tp_is_empty!38857)))

(assert (= (and b!5214170 (is-ElementMatch!14802 (regOne!30116 (regOne!30117 r!7292)))) b!5215025))

(assert (= (and b!5214170 (is-Concat!23647 (regOne!30116 (regOne!30117 r!7292)))) b!5215026))

(assert (= (and b!5214170 (is-Star!14802 (regOne!30116 (regOne!30117 r!7292)))) b!5215027))

(assert (= (and b!5214170 (is-Union!14802 (regOne!30116 (regOne!30117 r!7292)))) b!5215028))

(declare-fun e!3246394 () Bool)

(assert (=> b!5214170 (= tp!1462104 e!3246394)))

(declare-fun b!5215030 () Bool)

(declare-fun tp!1462210 () Bool)

(declare-fun tp!1462212 () Bool)

(assert (=> b!5215030 (= e!3246394 (and tp!1462210 tp!1462212))))

(declare-fun b!5215032 () Bool)

(declare-fun tp!1462209 () Bool)

(declare-fun tp!1462208 () Bool)

(assert (=> b!5215032 (= e!3246394 (and tp!1462209 tp!1462208))))

(declare-fun b!5215031 () Bool)

(declare-fun tp!1462211 () Bool)

(assert (=> b!5215031 (= e!3246394 tp!1462211)))

(declare-fun b!5215029 () Bool)

(assert (=> b!5215029 (= e!3246394 tp_is_empty!38857)))

(assert (= (and b!5214170 (is-ElementMatch!14802 (regTwo!30116 (regOne!30117 r!7292)))) b!5215029))

(assert (= (and b!5214170 (is-Concat!23647 (regTwo!30116 (regOne!30117 r!7292)))) b!5215030))

(assert (= (and b!5214170 (is-Star!14802 (regTwo!30116 (regOne!30117 r!7292)))) b!5215031))

(assert (= (and b!5214170 (is-Union!14802 (regTwo!30116 (regOne!30117 r!7292)))) b!5215032))

(declare-fun e!3246395 () Bool)

(assert (=> b!5214172 (= tp!1462101 e!3246395)))

(declare-fun b!5215034 () Bool)

(declare-fun tp!1462215 () Bool)

(declare-fun tp!1462217 () Bool)

(assert (=> b!5215034 (= e!3246395 (and tp!1462215 tp!1462217))))

(declare-fun b!5215036 () Bool)

(declare-fun tp!1462214 () Bool)

(declare-fun tp!1462213 () Bool)

(assert (=> b!5215036 (= e!3246395 (and tp!1462214 tp!1462213))))

(declare-fun b!5215035 () Bool)

(declare-fun tp!1462216 () Bool)

(assert (=> b!5215035 (= e!3246395 tp!1462216)))

(declare-fun b!5215033 () Bool)

(assert (=> b!5215033 (= e!3246395 tp_is_empty!38857)))

(assert (= (and b!5214172 (is-ElementMatch!14802 (regOne!30117 (regOne!30117 r!7292)))) b!5215033))

(assert (= (and b!5214172 (is-Concat!23647 (regOne!30117 (regOne!30117 r!7292)))) b!5215034))

(assert (= (and b!5214172 (is-Star!14802 (regOne!30117 (regOne!30117 r!7292)))) b!5215035))

(assert (= (and b!5214172 (is-Union!14802 (regOne!30117 (regOne!30117 r!7292)))) b!5215036))

(declare-fun e!3246396 () Bool)

(assert (=> b!5214172 (= tp!1462100 e!3246396)))

(declare-fun b!5215038 () Bool)

(declare-fun tp!1462220 () Bool)

(declare-fun tp!1462222 () Bool)

(assert (=> b!5215038 (= e!3246396 (and tp!1462220 tp!1462222))))

(declare-fun b!5215040 () Bool)

(declare-fun tp!1462219 () Bool)

(declare-fun tp!1462218 () Bool)

(assert (=> b!5215040 (= e!3246396 (and tp!1462219 tp!1462218))))

(declare-fun b!5215039 () Bool)

(declare-fun tp!1462221 () Bool)

(assert (=> b!5215039 (= e!3246396 tp!1462221)))

(declare-fun b!5215037 () Bool)

(assert (=> b!5215037 (= e!3246396 tp_is_empty!38857)))

(assert (= (and b!5214172 (is-ElementMatch!14802 (regTwo!30117 (regOne!30117 r!7292)))) b!5215037))

(assert (= (and b!5214172 (is-Concat!23647 (regTwo!30117 (regOne!30117 r!7292)))) b!5215038))

(assert (= (and b!5214172 (is-Star!14802 (regTwo!30117 (regOne!30117 r!7292)))) b!5215039))

(assert (= (and b!5214172 (is-Union!14802 (regTwo!30117 (regOne!30117 r!7292)))) b!5215040))

(declare-fun e!3246397 () Bool)

(assert (=> b!5214141 (= tp!1462070 e!3246397)))

(declare-fun b!5215042 () Bool)

(declare-fun tp!1462225 () Bool)

(declare-fun tp!1462227 () Bool)

(assert (=> b!5215042 (= e!3246397 (and tp!1462225 tp!1462227))))

(declare-fun b!5215044 () Bool)

(declare-fun tp!1462224 () Bool)

(declare-fun tp!1462223 () Bool)

(assert (=> b!5215044 (= e!3246397 (and tp!1462224 tp!1462223))))

(declare-fun b!5215043 () Bool)

(declare-fun tp!1462226 () Bool)

(assert (=> b!5215043 (= e!3246397 tp!1462226)))

(declare-fun b!5215041 () Bool)

(assert (=> b!5215041 (= e!3246397 tp_is_empty!38857)))

(assert (= (and b!5214141 (is-ElementMatch!14802 (h!67029 (exprs!4686 setElem!33129)))) b!5215041))

(assert (= (and b!5214141 (is-Concat!23647 (h!67029 (exprs!4686 setElem!33129)))) b!5215042))

(assert (= (and b!5214141 (is-Star!14802 (h!67029 (exprs!4686 setElem!33129)))) b!5215043))

(assert (= (and b!5214141 (is-Union!14802 (h!67029 (exprs!4686 setElem!33129)))) b!5215044))

(declare-fun b!5215045 () Bool)

(declare-fun e!3246398 () Bool)

(declare-fun tp!1462228 () Bool)

(declare-fun tp!1462229 () Bool)

(assert (=> b!5215045 (= e!3246398 (and tp!1462228 tp!1462229))))

(assert (=> b!5214141 (= tp!1462071 e!3246398)))

(assert (= (and b!5214141 (is-Cons!60581 (t!373870 (exprs!4686 setElem!33129)))) b!5215045))

(declare-fun e!3246399 () Bool)

(assert (=> b!5214158 (= tp!1462090 e!3246399)))

(declare-fun b!5215047 () Bool)

(declare-fun tp!1462232 () Bool)

(declare-fun tp!1462234 () Bool)

(assert (=> b!5215047 (= e!3246399 (and tp!1462232 tp!1462234))))

(declare-fun b!5215049 () Bool)

(declare-fun tp!1462231 () Bool)

(declare-fun tp!1462230 () Bool)

(assert (=> b!5215049 (= e!3246399 (and tp!1462231 tp!1462230))))

(declare-fun b!5215048 () Bool)

(declare-fun tp!1462233 () Bool)

(assert (=> b!5215048 (= e!3246399 tp!1462233)))

(declare-fun b!5215046 () Bool)

(assert (=> b!5215046 (= e!3246399 tp_is_empty!38857)))

(assert (= (and b!5214158 (is-ElementMatch!14802 (reg!15131 (regTwo!30116 r!7292)))) b!5215046))

(assert (= (and b!5214158 (is-Concat!23647 (reg!15131 (regTwo!30116 r!7292)))) b!5215047))

(assert (= (and b!5214158 (is-Star!14802 (reg!15131 (regTwo!30116 r!7292)))) b!5215048))

(assert (= (and b!5214158 (is-Union!14802 (reg!15131 (regTwo!30116 r!7292)))) b!5215049))

(declare-fun e!3246400 () Bool)

(assert (=> b!5214157 (= tp!1462089 e!3246400)))

(declare-fun b!5215051 () Bool)

(declare-fun tp!1462237 () Bool)

(declare-fun tp!1462239 () Bool)

(assert (=> b!5215051 (= e!3246400 (and tp!1462237 tp!1462239))))

(declare-fun b!5215053 () Bool)

(declare-fun tp!1462236 () Bool)

(declare-fun tp!1462235 () Bool)

(assert (=> b!5215053 (= e!3246400 (and tp!1462236 tp!1462235))))

(declare-fun b!5215052 () Bool)

(declare-fun tp!1462238 () Bool)

(assert (=> b!5215052 (= e!3246400 tp!1462238)))

(declare-fun b!5215050 () Bool)

(assert (=> b!5215050 (= e!3246400 tp_is_empty!38857)))

(assert (= (and b!5214157 (is-ElementMatch!14802 (regOne!30116 (regTwo!30116 r!7292)))) b!5215050))

(assert (= (and b!5214157 (is-Concat!23647 (regOne!30116 (regTwo!30116 r!7292)))) b!5215051))

(assert (= (and b!5214157 (is-Star!14802 (regOne!30116 (regTwo!30116 r!7292)))) b!5215052))

(assert (= (and b!5214157 (is-Union!14802 (regOne!30116 (regTwo!30116 r!7292)))) b!5215053))

(declare-fun e!3246401 () Bool)

(assert (=> b!5214157 (= tp!1462091 e!3246401)))

(declare-fun b!5215055 () Bool)

(declare-fun tp!1462242 () Bool)

(declare-fun tp!1462244 () Bool)

(assert (=> b!5215055 (= e!3246401 (and tp!1462242 tp!1462244))))

(declare-fun b!5215057 () Bool)

(declare-fun tp!1462241 () Bool)

(declare-fun tp!1462240 () Bool)

(assert (=> b!5215057 (= e!3246401 (and tp!1462241 tp!1462240))))

(declare-fun b!5215056 () Bool)

(declare-fun tp!1462243 () Bool)

(assert (=> b!5215056 (= e!3246401 tp!1462243)))

(declare-fun b!5215054 () Bool)

(assert (=> b!5215054 (= e!3246401 tp_is_empty!38857)))

(assert (= (and b!5214157 (is-ElementMatch!14802 (regTwo!30116 (regTwo!30116 r!7292)))) b!5215054))

(assert (= (and b!5214157 (is-Concat!23647 (regTwo!30116 (regTwo!30116 r!7292)))) b!5215055))

(assert (= (and b!5214157 (is-Star!14802 (regTwo!30116 (regTwo!30116 r!7292)))) b!5215056))

(assert (= (and b!5214157 (is-Union!14802 (regTwo!30116 (regTwo!30116 r!7292)))) b!5215057))

(declare-fun e!3246402 () Bool)

(assert (=> b!5214154 (= tp!1462085 e!3246402)))

(declare-fun b!5215059 () Bool)

(declare-fun tp!1462247 () Bool)

(declare-fun tp!1462249 () Bool)

(assert (=> b!5215059 (= e!3246402 (and tp!1462247 tp!1462249))))

(declare-fun b!5215061 () Bool)

(declare-fun tp!1462246 () Bool)

(declare-fun tp!1462245 () Bool)

(assert (=> b!5215061 (= e!3246402 (and tp!1462246 tp!1462245))))

(declare-fun b!5215060 () Bool)

(declare-fun tp!1462248 () Bool)

(assert (=> b!5215060 (= e!3246402 tp!1462248)))

(declare-fun b!5215058 () Bool)

(assert (=> b!5215058 (= e!3246402 tp_is_empty!38857)))

(assert (= (and b!5214154 (is-ElementMatch!14802 (reg!15131 (regOne!30116 r!7292)))) b!5215058))

(assert (= (and b!5214154 (is-Concat!23647 (reg!15131 (regOne!30116 r!7292)))) b!5215059))

(assert (= (and b!5214154 (is-Star!14802 (reg!15131 (regOne!30116 r!7292)))) b!5215060))

(assert (= (and b!5214154 (is-Union!14802 (reg!15131 (regOne!30116 r!7292)))) b!5215061))

(declare-fun e!3246403 () Bool)

(assert (=> b!5214189 (= tp!1462122 e!3246403)))

(declare-fun b!5215063 () Bool)

(declare-fun tp!1462252 () Bool)

(declare-fun tp!1462254 () Bool)

(assert (=> b!5215063 (= e!3246403 (and tp!1462252 tp!1462254))))

(declare-fun b!5215065 () Bool)

(declare-fun tp!1462251 () Bool)

(declare-fun tp!1462250 () Bool)

(assert (=> b!5215065 (= e!3246403 (and tp!1462251 tp!1462250))))

(declare-fun b!5215064 () Bool)

(declare-fun tp!1462253 () Bool)

(assert (=> b!5215064 (= e!3246403 tp!1462253)))

(declare-fun b!5215062 () Bool)

(assert (=> b!5215062 (= e!3246403 tp_is_empty!38857)))

(assert (= (and b!5214189 (is-ElementMatch!14802 (reg!15131 (reg!15131 r!7292)))) b!5215062))

(assert (= (and b!5214189 (is-Concat!23647 (reg!15131 (reg!15131 r!7292)))) b!5215063))

(assert (= (and b!5214189 (is-Star!14802 (reg!15131 (reg!15131 r!7292)))) b!5215064))

(assert (= (and b!5214189 (is-Union!14802 (reg!15131 (reg!15131 r!7292)))) b!5215065))

(declare-fun e!3246404 () Bool)

(assert (=> b!5214188 (= tp!1462121 e!3246404)))

(declare-fun b!5215067 () Bool)

(declare-fun tp!1462257 () Bool)

(declare-fun tp!1462259 () Bool)

(assert (=> b!5215067 (= e!3246404 (and tp!1462257 tp!1462259))))

(declare-fun b!5215069 () Bool)

(declare-fun tp!1462256 () Bool)

(declare-fun tp!1462255 () Bool)

(assert (=> b!5215069 (= e!3246404 (and tp!1462256 tp!1462255))))

(declare-fun b!5215068 () Bool)

(declare-fun tp!1462258 () Bool)

(assert (=> b!5215068 (= e!3246404 tp!1462258)))

(declare-fun b!5215066 () Bool)

(assert (=> b!5215066 (= e!3246404 tp_is_empty!38857)))

(assert (= (and b!5214188 (is-ElementMatch!14802 (regOne!30116 (reg!15131 r!7292)))) b!5215066))

(assert (= (and b!5214188 (is-Concat!23647 (regOne!30116 (reg!15131 r!7292)))) b!5215067))

(assert (= (and b!5214188 (is-Star!14802 (regOne!30116 (reg!15131 r!7292)))) b!5215068))

(assert (= (and b!5214188 (is-Union!14802 (regOne!30116 (reg!15131 r!7292)))) b!5215069))

(declare-fun e!3246405 () Bool)

(assert (=> b!5214188 (= tp!1462123 e!3246405)))

(declare-fun b!5215071 () Bool)

(declare-fun tp!1462262 () Bool)

(declare-fun tp!1462264 () Bool)

(assert (=> b!5215071 (= e!3246405 (and tp!1462262 tp!1462264))))

(declare-fun b!5215073 () Bool)

(declare-fun tp!1462261 () Bool)

(declare-fun tp!1462260 () Bool)

(assert (=> b!5215073 (= e!3246405 (and tp!1462261 tp!1462260))))

(declare-fun b!5215072 () Bool)

(declare-fun tp!1462263 () Bool)

(assert (=> b!5215072 (= e!3246405 tp!1462263)))

(declare-fun b!5215070 () Bool)

(assert (=> b!5215070 (= e!3246405 tp_is_empty!38857)))

(assert (= (and b!5214188 (is-ElementMatch!14802 (regTwo!30116 (reg!15131 r!7292)))) b!5215070))

(assert (= (and b!5214188 (is-Concat!23647 (regTwo!30116 (reg!15131 r!7292)))) b!5215071))

(assert (= (and b!5214188 (is-Star!14802 (regTwo!30116 (reg!15131 r!7292)))) b!5215072))

(assert (= (and b!5214188 (is-Union!14802 (regTwo!30116 (reg!15131 r!7292)))) b!5215073))

(declare-fun e!3246406 () Bool)

(assert (=> b!5214155 (= tp!1462083 e!3246406)))

(declare-fun b!5215075 () Bool)

(declare-fun tp!1462267 () Bool)

(declare-fun tp!1462269 () Bool)

(assert (=> b!5215075 (= e!3246406 (and tp!1462267 tp!1462269))))

(declare-fun b!5215077 () Bool)

(declare-fun tp!1462266 () Bool)

(declare-fun tp!1462265 () Bool)

(assert (=> b!5215077 (= e!3246406 (and tp!1462266 tp!1462265))))

(declare-fun b!5215076 () Bool)

(declare-fun tp!1462268 () Bool)

(assert (=> b!5215076 (= e!3246406 tp!1462268)))

(declare-fun b!5215074 () Bool)

(assert (=> b!5215074 (= e!3246406 tp_is_empty!38857)))

(assert (= (and b!5214155 (is-ElementMatch!14802 (regOne!30117 (regOne!30116 r!7292)))) b!5215074))

(assert (= (and b!5214155 (is-Concat!23647 (regOne!30117 (regOne!30116 r!7292)))) b!5215075))

(assert (= (and b!5214155 (is-Star!14802 (regOne!30117 (regOne!30116 r!7292)))) b!5215076))

(assert (= (and b!5214155 (is-Union!14802 (regOne!30117 (regOne!30116 r!7292)))) b!5215077))

(declare-fun e!3246407 () Bool)

(assert (=> b!5214155 (= tp!1462082 e!3246407)))

(declare-fun b!5215079 () Bool)

(declare-fun tp!1462272 () Bool)

(declare-fun tp!1462274 () Bool)

(assert (=> b!5215079 (= e!3246407 (and tp!1462272 tp!1462274))))

(declare-fun b!5215081 () Bool)

(declare-fun tp!1462271 () Bool)

(declare-fun tp!1462270 () Bool)

(assert (=> b!5215081 (= e!3246407 (and tp!1462271 tp!1462270))))

(declare-fun b!5215080 () Bool)

(declare-fun tp!1462273 () Bool)

(assert (=> b!5215080 (= e!3246407 tp!1462273)))

(declare-fun b!5215078 () Bool)

(assert (=> b!5215078 (= e!3246407 tp_is_empty!38857)))

(assert (= (and b!5214155 (is-ElementMatch!14802 (regTwo!30117 (regOne!30116 r!7292)))) b!5215078))

(assert (= (and b!5214155 (is-Concat!23647 (regTwo!30117 (regOne!30116 r!7292)))) b!5215079))

(assert (= (and b!5214155 (is-Star!14802 (regTwo!30117 (regOne!30116 r!7292)))) b!5215080))

(assert (= (and b!5214155 (is-Union!14802 (regTwo!30117 (regOne!30116 r!7292)))) b!5215081))

(declare-fun e!3246408 () Bool)

(assert (=> b!5214190 (= tp!1462120 e!3246408)))

(declare-fun b!5215083 () Bool)

(declare-fun tp!1462277 () Bool)

(declare-fun tp!1462279 () Bool)

(assert (=> b!5215083 (= e!3246408 (and tp!1462277 tp!1462279))))

(declare-fun b!5215085 () Bool)

(declare-fun tp!1462276 () Bool)

(declare-fun tp!1462275 () Bool)

(assert (=> b!5215085 (= e!3246408 (and tp!1462276 tp!1462275))))

(declare-fun b!5215084 () Bool)

(declare-fun tp!1462278 () Bool)

(assert (=> b!5215084 (= e!3246408 tp!1462278)))

(declare-fun b!5215082 () Bool)

(assert (=> b!5215082 (= e!3246408 tp_is_empty!38857)))

(assert (= (and b!5214190 (is-ElementMatch!14802 (regOne!30117 (reg!15131 r!7292)))) b!5215082))

(assert (= (and b!5214190 (is-Concat!23647 (regOne!30117 (reg!15131 r!7292)))) b!5215083))

(assert (= (and b!5214190 (is-Star!14802 (regOne!30117 (reg!15131 r!7292)))) b!5215084))

(assert (= (and b!5214190 (is-Union!14802 (regOne!30117 (reg!15131 r!7292)))) b!5215085))

(declare-fun e!3246409 () Bool)

(assert (=> b!5214190 (= tp!1462119 e!3246409)))

(declare-fun b!5215087 () Bool)

(declare-fun tp!1462282 () Bool)

(declare-fun tp!1462284 () Bool)

(assert (=> b!5215087 (= e!3246409 (and tp!1462282 tp!1462284))))

(declare-fun b!5215089 () Bool)

(declare-fun tp!1462281 () Bool)

(declare-fun tp!1462280 () Bool)

(assert (=> b!5215089 (= e!3246409 (and tp!1462281 tp!1462280))))

(declare-fun b!5215088 () Bool)

(declare-fun tp!1462283 () Bool)

(assert (=> b!5215088 (= e!3246409 tp!1462283)))

(declare-fun b!5215086 () Bool)

(assert (=> b!5215086 (= e!3246409 tp_is_empty!38857)))

(assert (= (and b!5214190 (is-ElementMatch!14802 (regTwo!30117 (reg!15131 r!7292)))) b!5215086))

(assert (= (and b!5214190 (is-Concat!23647 (regTwo!30117 (reg!15131 r!7292)))) b!5215087))

(assert (= (and b!5214190 (is-Star!14802 (regTwo!30117 (reg!15131 r!7292)))) b!5215088))

(assert (= (and b!5214190 (is-Union!14802 (regTwo!30117 (reg!15131 r!7292)))) b!5215089))

(declare-fun condSetEmpty!33143 () Bool)

(assert (=> setNonEmpty!33135 (= condSetEmpty!33143 (= setRest!33135 (as set.empty (Set Context!8372))))))

(declare-fun setRes!33143 () Bool)

(assert (=> setNonEmpty!33135 (= tp!1462117 setRes!33143)))

(declare-fun setIsEmpty!33143 () Bool)

(assert (=> setIsEmpty!33143 setRes!33143))

(declare-fun setNonEmpty!33143 () Bool)

(declare-fun tp!1462285 () Bool)

(declare-fun setElem!33143 () Context!8372)

(declare-fun e!3246410 () Bool)

(assert (=> setNonEmpty!33143 (= setRes!33143 (and tp!1462285 (inv!80253 setElem!33143) e!3246410))))

(declare-fun setRest!33143 () (Set Context!8372))

(assert (=> setNonEmpty!33143 (= setRest!33135 (set.union (set.insert setElem!33143 (as set.empty (Set Context!8372))) setRest!33143))))

(declare-fun b!5215090 () Bool)

(declare-fun tp!1462286 () Bool)

(assert (=> b!5215090 (= e!3246410 tp!1462286)))

(assert (= (and setNonEmpty!33135 condSetEmpty!33143) setIsEmpty!33143))

(assert (= (and setNonEmpty!33135 (not condSetEmpty!33143)) setNonEmpty!33143))

(assert (= setNonEmpty!33143 b!5215090))

(declare-fun m!6263900 () Bool)

(assert (=> setNonEmpty!33143 m!6263900))

(declare-fun e!3246411 () Bool)

(assert (=> b!5214174 (= tp!1462107 e!3246411)))

(declare-fun b!5215092 () Bool)

(declare-fun tp!1462289 () Bool)

(declare-fun tp!1462291 () Bool)

(assert (=> b!5215092 (= e!3246411 (and tp!1462289 tp!1462291))))

(declare-fun b!5215094 () Bool)

(declare-fun tp!1462288 () Bool)

(declare-fun tp!1462287 () Bool)

(assert (=> b!5215094 (= e!3246411 (and tp!1462288 tp!1462287))))

(declare-fun b!5215093 () Bool)

(declare-fun tp!1462290 () Bool)

(assert (=> b!5215093 (= e!3246411 tp!1462290)))

(declare-fun b!5215091 () Bool)

(assert (=> b!5215091 (= e!3246411 tp_is_empty!38857)))

(assert (= (and b!5214174 (is-ElementMatch!14802 (regOne!30116 (regTwo!30117 r!7292)))) b!5215091))

(assert (= (and b!5214174 (is-Concat!23647 (regOne!30116 (regTwo!30117 r!7292)))) b!5215092))

(assert (= (and b!5214174 (is-Star!14802 (regOne!30116 (regTwo!30117 r!7292)))) b!5215093))

(assert (= (and b!5214174 (is-Union!14802 (regOne!30116 (regTwo!30117 r!7292)))) b!5215094))

(declare-fun e!3246412 () Bool)

(assert (=> b!5214174 (= tp!1462109 e!3246412)))

(declare-fun b!5215096 () Bool)

(declare-fun tp!1462294 () Bool)

(declare-fun tp!1462296 () Bool)

(assert (=> b!5215096 (= e!3246412 (and tp!1462294 tp!1462296))))

(declare-fun b!5215098 () Bool)

(declare-fun tp!1462293 () Bool)

(declare-fun tp!1462292 () Bool)

(assert (=> b!5215098 (= e!3246412 (and tp!1462293 tp!1462292))))

(declare-fun b!5215097 () Bool)

(declare-fun tp!1462295 () Bool)

(assert (=> b!5215097 (= e!3246412 tp!1462295)))

(declare-fun b!5215095 () Bool)

(assert (=> b!5215095 (= e!3246412 tp_is_empty!38857)))

(assert (= (and b!5214174 (is-ElementMatch!14802 (regTwo!30116 (regTwo!30117 r!7292)))) b!5215095))

(assert (= (and b!5214174 (is-Concat!23647 (regTwo!30116 (regTwo!30117 r!7292)))) b!5215096))

(assert (= (and b!5214174 (is-Star!14802 (regTwo!30116 (regTwo!30117 r!7292)))) b!5215097))

(assert (= (and b!5214174 (is-Union!14802 (regTwo!30116 (regTwo!30117 r!7292)))) b!5215098))

(declare-fun e!3246413 () Bool)

(assert (=> b!5214175 (= tp!1462108 e!3246413)))

(declare-fun b!5215100 () Bool)

(declare-fun tp!1462299 () Bool)

(declare-fun tp!1462301 () Bool)

(assert (=> b!5215100 (= e!3246413 (and tp!1462299 tp!1462301))))

(declare-fun b!5215102 () Bool)

(declare-fun tp!1462298 () Bool)

(declare-fun tp!1462297 () Bool)

(assert (=> b!5215102 (= e!3246413 (and tp!1462298 tp!1462297))))

(declare-fun b!5215101 () Bool)

(declare-fun tp!1462300 () Bool)

(assert (=> b!5215101 (= e!3246413 tp!1462300)))

(declare-fun b!5215099 () Bool)

(assert (=> b!5215099 (= e!3246413 tp_is_empty!38857)))

(assert (= (and b!5214175 (is-ElementMatch!14802 (reg!15131 (regTwo!30117 r!7292)))) b!5215099))

(assert (= (and b!5214175 (is-Concat!23647 (reg!15131 (regTwo!30117 r!7292)))) b!5215100))

(assert (= (and b!5214175 (is-Star!14802 (reg!15131 (regTwo!30117 r!7292)))) b!5215101))

(assert (= (and b!5214175 (is-Union!14802 (reg!15131 (regTwo!30117 r!7292)))) b!5215102))

(declare-fun e!3246414 () Bool)

(assert (=> b!5214176 (= tp!1462106 e!3246414)))

(declare-fun b!5215104 () Bool)

(declare-fun tp!1462304 () Bool)

(declare-fun tp!1462306 () Bool)

(assert (=> b!5215104 (= e!3246414 (and tp!1462304 tp!1462306))))

(declare-fun b!5215106 () Bool)

(declare-fun tp!1462303 () Bool)

(declare-fun tp!1462302 () Bool)

(assert (=> b!5215106 (= e!3246414 (and tp!1462303 tp!1462302))))

(declare-fun b!5215105 () Bool)

(declare-fun tp!1462305 () Bool)

(assert (=> b!5215105 (= e!3246414 tp!1462305)))

(declare-fun b!5215103 () Bool)

(assert (=> b!5215103 (= e!3246414 tp_is_empty!38857)))

(assert (= (and b!5214176 (is-ElementMatch!14802 (regOne!30117 (regTwo!30117 r!7292)))) b!5215103))

(assert (= (and b!5214176 (is-Concat!23647 (regOne!30117 (regTwo!30117 r!7292)))) b!5215104))

(assert (= (and b!5214176 (is-Star!14802 (regOne!30117 (regTwo!30117 r!7292)))) b!5215105))

(assert (= (and b!5214176 (is-Union!14802 (regOne!30117 (regTwo!30117 r!7292)))) b!5215106))

(declare-fun e!3246415 () Bool)

(assert (=> b!5214176 (= tp!1462105 e!3246415)))

(declare-fun b!5215108 () Bool)

(declare-fun tp!1462309 () Bool)

(declare-fun tp!1462311 () Bool)

(assert (=> b!5215108 (= e!3246415 (and tp!1462309 tp!1462311))))

(declare-fun b!5215110 () Bool)

(declare-fun tp!1462308 () Bool)

(declare-fun tp!1462307 () Bool)

(assert (=> b!5215110 (= e!3246415 (and tp!1462308 tp!1462307))))

(declare-fun b!5215109 () Bool)

(declare-fun tp!1462310 () Bool)

(assert (=> b!5215109 (= e!3246415 tp!1462310)))

(declare-fun b!5215107 () Bool)

(assert (=> b!5215107 (= e!3246415 tp_is_empty!38857)))

(assert (= (and b!5214176 (is-ElementMatch!14802 (regTwo!30117 (regTwo!30117 r!7292)))) b!5215107))

(assert (= (and b!5214176 (is-Concat!23647 (regTwo!30117 (regTwo!30117 r!7292)))) b!5215108))

(assert (= (and b!5214176 (is-Star!14802 (regTwo!30117 (regTwo!30117 r!7292)))) b!5215109))

(assert (= (and b!5214176 (is-Union!14802 (regTwo!30117 (regTwo!30117 r!7292)))) b!5215110))

(declare-fun e!3246416 () Bool)

(assert (=> b!5214153 (= tp!1462084 e!3246416)))

(declare-fun b!5215112 () Bool)

(declare-fun tp!1462314 () Bool)

(declare-fun tp!1462316 () Bool)

(assert (=> b!5215112 (= e!3246416 (and tp!1462314 tp!1462316))))

(declare-fun b!5215114 () Bool)

(declare-fun tp!1462313 () Bool)

(declare-fun tp!1462312 () Bool)

(assert (=> b!5215114 (= e!3246416 (and tp!1462313 tp!1462312))))

(declare-fun b!5215113 () Bool)

(declare-fun tp!1462315 () Bool)

(assert (=> b!5215113 (= e!3246416 tp!1462315)))

(declare-fun b!5215111 () Bool)

(assert (=> b!5215111 (= e!3246416 tp_is_empty!38857)))

(assert (= (and b!5214153 (is-ElementMatch!14802 (regOne!30116 (regOne!30116 r!7292)))) b!5215111))

(assert (= (and b!5214153 (is-Concat!23647 (regOne!30116 (regOne!30116 r!7292)))) b!5215112))

(assert (= (and b!5214153 (is-Star!14802 (regOne!30116 (regOne!30116 r!7292)))) b!5215113))

(assert (= (and b!5214153 (is-Union!14802 (regOne!30116 (regOne!30116 r!7292)))) b!5215114))

(declare-fun e!3246417 () Bool)

(assert (=> b!5214153 (= tp!1462086 e!3246417)))

(declare-fun b!5215116 () Bool)

(declare-fun tp!1462319 () Bool)

(declare-fun tp!1462321 () Bool)

(assert (=> b!5215116 (= e!3246417 (and tp!1462319 tp!1462321))))

(declare-fun b!5215118 () Bool)

(declare-fun tp!1462318 () Bool)

(declare-fun tp!1462317 () Bool)

(assert (=> b!5215118 (= e!3246417 (and tp!1462318 tp!1462317))))

(declare-fun b!5215117 () Bool)

(declare-fun tp!1462320 () Bool)

(assert (=> b!5215117 (= e!3246417 tp!1462320)))

(declare-fun b!5215115 () Bool)

(assert (=> b!5215115 (= e!3246417 tp_is_empty!38857)))

(assert (= (and b!5214153 (is-ElementMatch!14802 (regTwo!30116 (regOne!30116 r!7292)))) b!5215115))

(assert (= (and b!5214153 (is-Concat!23647 (regTwo!30116 (regOne!30116 r!7292)))) b!5215116))

(assert (= (and b!5214153 (is-Star!14802 (regTwo!30116 (regOne!30116 r!7292)))) b!5215117))

(assert (= (and b!5214153 (is-Union!14802 (regTwo!30116 (regOne!30116 r!7292)))) b!5215118))

(declare-fun e!3246418 () Bool)

(assert (=> b!5214168 (= tp!1462098 e!3246418)))

(declare-fun b!5215120 () Bool)

(declare-fun tp!1462324 () Bool)

(declare-fun tp!1462326 () Bool)

(assert (=> b!5215120 (= e!3246418 (and tp!1462324 tp!1462326))))

(declare-fun b!5215122 () Bool)

(declare-fun tp!1462323 () Bool)

(declare-fun tp!1462322 () Bool)

(assert (=> b!5215122 (= e!3246418 (and tp!1462323 tp!1462322))))

(declare-fun b!5215121 () Bool)

(declare-fun tp!1462325 () Bool)

(assert (=> b!5215121 (= e!3246418 tp!1462325)))

(declare-fun b!5215119 () Bool)

(assert (=> b!5215119 (= e!3246418 tp_is_empty!38857)))

(assert (= (and b!5214168 (is-ElementMatch!14802 (h!67029 (exprs!4686 (h!67031 zl!343))))) b!5215119))

(assert (= (and b!5214168 (is-Concat!23647 (h!67029 (exprs!4686 (h!67031 zl!343))))) b!5215120))

(assert (= (and b!5214168 (is-Star!14802 (h!67029 (exprs!4686 (h!67031 zl!343))))) b!5215121))

(assert (= (and b!5214168 (is-Union!14802 (h!67029 (exprs!4686 (h!67031 zl!343))))) b!5215122))

(declare-fun b!5215123 () Bool)

(declare-fun e!3246419 () Bool)

(declare-fun tp!1462327 () Bool)

(declare-fun tp!1462328 () Bool)

(assert (=> b!5215123 (= e!3246419 (and tp!1462327 tp!1462328))))

(assert (=> b!5214168 (= tp!1462099 e!3246419)))

(assert (= (and b!5214168 (is-Cons!60581 (t!373870 (exprs!4686 (h!67031 zl!343))))) b!5215123))

(declare-fun e!3246420 () Bool)

(assert (=> b!5214159 (= tp!1462088 e!3246420)))

(declare-fun b!5215125 () Bool)

(declare-fun tp!1462331 () Bool)

(declare-fun tp!1462333 () Bool)

(assert (=> b!5215125 (= e!3246420 (and tp!1462331 tp!1462333))))

(declare-fun b!5215127 () Bool)

(declare-fun tp!1462330 () Bool)

(declare-fun tp!1462329 () Bool)

(assert (=> b!5215127 (= e!3246420 (and tp!1462330 tp!1462329))))

(declare-fun b!5215126 () Bool)

(declare-fun tp!1462332 () Bool)

(assert (=> b!5215126 (= e!3246420 tp!1462332)))

(declare-fun b!5215124 () Bool)

(assert (=> b!5215124 (= e!3246420 tp_is_empty!38857)))

(assert (= (and b!5214159 (is-ElementMatch!14802 (regOne!30117 (regTwo!30116 r!7292)))) b!5215124))

(assert (= (and b!5214159 (is-Concat!23647 (regOne!30117 (regTwo!30116 r!7292)))) b!5215125))

(assert (= (and b!5214159 (is-Star!14802 (regOne!30117 (regTwo!30116 r!7292)))) b!5215126))

(assert (= (and b!5214159 (is-Union!14802 (regOne!30117 (regTwo!30116 r!7292)))) b!5215127))

(declare-fun e!3246421 () Bool)

(assert (=> b!5214159 (= tp!1462087 e!3246421)))

(declare-fun b!5215129 () Bool)

(declare-fun tp!1462336 () Bool)

(declare-fun tp!1462338 () Bool)

(assert (=> b!5215129 (= e!3246421 (and tp!1462336 tp!1462338))))

(declare-fun b!5215131 () Bool)

(declare-fun tp!1462335 () Bool)

(declare-fun tp!1462334 () Bool)

(assert (=> b!5215131 (= e!3246421 (and tp!1462335 tp!1462334))))

(declare-fun b!5215130 () Bool)

(declare-fun tp!1462337 () Bool)

(assert (=> b!5215130 (= e!3246421 tp!1462337)))

(declare-fun b!5215128 () Bool)

(assert (=> b!5215128 (= e!3246421 tp_is_empty!38857)))

(assert (= (and b!5214159 (is-ElementMatch!14802 (regTwo!30117 (regTwo!30116 r!7292)))) b!5215128))

(assert (= (and b!5214159 (is-Concat!23647 (regTwo!30117 (regTwo!30116 r!7292)))) b!5215129))

(assert (= (and b!5214159 (is-Star!14802 (regTwo!30117 (regTwo!30116 r!7292)))) b!5215130))

(assert (= (and b!5214159 (is-Union!14802 (regTwo!30117 (regTwo!30116 r!7292)))) b!5215131))

(declare-fun b!5215133 () Bool)

(declare-fun e!3246423 () Bool)

(declare-fun tp!1462339 () Bool)

(assert (=> b!5215133 (= e!3246423 tp!1462339)))

(declare-fun tp!1462340 () Bool)

(declare-fun b!5215132 () Bool)

(declare-fun e!3246422 () Bool)

(assert (=> b!5215132 (= e!3246422 (and (inv!80253 (h!67031 (t!373872 (t!373872 zl!343)))) e!3246423 tp!1462340))))

(assert (=> b!5214166 (= tp!1462097 e!3246422)))

(assert (= b!5215132 b!5215133))

(assert (= (and b!5214166 (is-Cons!60583 (t!373872 (t!373872 zl!343)))) b!5215132))

(declare-fun m!6263902 () Bool)

(assert (=> b!5215132 m!6263902))

(declare-fun b!5215134 () Bool)

(declare-fun e!3246424 () Bool)

(declare-fun tp!1462341 () Bool)

(assert (=> b!5215134 (= e!3246424 (and tp_is_empty!38857 tp!1462341))))

(assert (=> b!5214181 (= tp!1462112 e!3246424)))

(assert (= (and b!5214181 (is-Cons!60582 (t!373871 (t!373871 s!2326)))) b!5215134))

(declare-fun b!5215135 () Bool)

(declare-fun e!3246425 () Bool)

(declare-fun tp!1462342 () Bool)

(declare-fun tp!1462343 () Bool)

(assert (=> b!5215135 (= e!3246425 (and tp!1462342 tp!1462343))))

(assert (=> b!5214167 (= tp!1462096 e!3246425)))

(assert (= (and b!5214167 (is-Cons!60581 (exprs!4686 (h!67031 (t!373872 zl!343))))) b!5215135))

(declare-fun b_lambda!201683 () Bool)

(assert (= b_lambda!201679 (or b!5213634 b_lambda!201683)))

(assert (=> d!1681481 d!1681189))

(declare-fun b_lambda!201685 () Bool)

(assert (= b_lambda!201671 (or d!1681163 b_lambda!201685)))

(declare-fun bs!1211424 () Bool)

(declare-fun d!1681503 () Bool)

(assert (= bs!1211424 (and d!1681503 d!1681163)))

(assert (=> bs!1211424 (= (dynLambda!23936 lambda!261513 (h!67029 (exprs!4686 (h!67031 zl!343)))) (validRegex!6538 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(declare-fun m!6263904 () Bool)

(assert (=> bs!1211424 m!6263904))

(assert (=> b!5214717 d!1681503))

(declare-fun b_lambda!201687 () Bool)

(assert (= b_lambda!201675 (or b!5213634 b_lambda!201687)))

(assert (=> d!1681423 d!1681187))

(declare-fun b_lambda!201689 () Bool)

(assert (= b_lambda!201669 (or d!1681177 b_lambda!201689)))

(declare-fun bs!1211425 () Bool)

(declare-fun d!1681505 () Bool)

(assert (= bs!1211425 (and d!1681505 d!1681177)))

(assert (=> bs!1211425 (= (dynLambda!23936 lambda!261523 (h!67029 (exprs!4686 (h!67031 zl!343)))) (validRegex!6538 (h!67029 (exprs!4686 (h!67031 zl!343)))))))

(assert (=> bs!1211425 m!6263904))

(assert (=> b!5214591 d!1681505))

(declare-fun b_lambda!201691 () Bool)

(assert (= b_lambda!201677 (or d!1681175 b_lambda!201691)))

(declare-fun bs!1211426 () Bool)

(declare-fun d!1681507 () Bool)

(assert (= bs!1211426 (and d!1681507 d!1681175)))

(assert (=> bs!1211426 (= (dynLambda!23936 lambda!261520 (h!67029 (exprs!4686 setElem!33129))) (validRegex!6538 (h!67029 (exprs!4686 setElem!33129))))))

(declare-fun m!6263906 () Bool)

(assert (=> bs!1211426 m!6263906))

(assert (=> b!5214951 d!1681507))

(declare-fun b_lambda!201693 () Bool)

(assert (= b_lambda!201681 (or d!1681173 b_lambda!201693)))

(declare-fun bs!1211427 () Bool)

(declare-fun d!1681509 () Bool)

(assert (= bs!1211427 (and d!1681509 d!1681173)))

(assert (=> bs!1211427 (= (dynLambda!23936 lambda!261519 (h!67029 lt!2142607)) (validRegex!6538 (h!67029 lt!2142607)))))

(declare-fun m!6263908 () Bool)

(assert (=> bs!1211427 m!6263908))

(assert (=> b!5215003 d!1681509))

(declare-fun b_lambda!201695 () Bool)

(assert (= b_lambda!201673 (or d!1681171 b_lambda!201695)))

(declare-fun bs!1211428 () Bool)

(declare-fun d!1681511 () Bool)

(assert (= bs!1211428 (and d!1681511 d!1681171)))

(assert (=> bs!1211428 (= (dynLambda!23936 lambda!261516 (h!67029 (unfocusZipperList!244 zl!343))) (validRegex!6538 (h!67029 (unfocusZipperList!244 zl!343))))))

(declare-fun m!6263910 () Bool)

(assert (=> bs!1211428 m!6263910))

(assert (=> b!5214808 d!1681511))

(push 1)

(assert (not b!5215087))

(assert (not bm!367517))

(assert (not b!5214816))

(assert (not b!5214754))

(assert (not b!5214612))

(assert (not b!5215079))

(assert (not b!5215114))

(assert (not bm!367570))

(assert (not b!5215080))

(assert (not d!1681365))

(assert (not b!5215064))

(assert (not bm!367511))

(assert (not b!5214795))

(assert (not b!5215112))

(assert (not b!5214611))

(assert (not b!5215019))

(assert (not b!5215105))

(assert (not b!5215027))

(assert (not b!5214952))

(assert (not b!5214980))

(assert (not d!1681455))

(assert (not bm!367455))

(assert (not b!5214944))

(assert (not b!5215036))

(assert (not b!5215047))

(assert (not b_lambda!201689))

(assert (not d!1681417))

(assert (not b!5214751))

(assert (not bm!367498))

(assert (not b!5214624))

(assert (not d!1681319))

(assert (not bm!367551))

(assert (not b!5215059))

(assert (not b!5214987))

(assert (not b!5214794))

(assert (not bm!367558))

(assert (not b!5214749))

(assert (not b!5214699))

(assert (not b!5215073))

(assert (not bm!367487))

(assert (not bs!1211426))

(assert (not bm!367482))

(assert (not b!5215094))

(assert (not b!5215068))

(assert (not b!5215016))

(assert (not b!5214920))

(assert (not b!5215052))

(assert (not d!1681283))

(assert (not d!1681441))

(assert (not bm!367457))

(assert (not d!1681399))

(assert (not d!1681487))

(assert (not b!5214553))

(assert (not b!5214620))

(assert (not b!5214626))

(assert (not d!1681461))

(assert (not b!5214778))

(assert (not b!5215034))

(assert (not bm!367527))

(assert (not b!5215076))

(assert (not bm!367545))

(assert (not b!5215032))

(assert (not bm!367467))

(assert (not d!1681349))

(assert (not d!1681499))

(assert (not bm!367484))

(assert (not bm!367505))

(assert (not b_lambda!201685))

(assert (not d!1681431))

(assert (not b!5214597))

(assert (not d!1681405))

(assert (not bm!367501))

(assert (not bs!1211427))

(assert (not bm!367499))

(assert (not b!5215083))

(assert (not b!5214950))

(assert (not b!5215044))

(assert (not bm!367532))

(assert (not b!5215133))

(assert (not b!5214848))

(assert (not b!5215057))

(assert (not b_lambda!201693))

(assert (not d!1681357))

(assert (not b!5215043))

(assert (not d!1681281))

(assert (not d!1681479))

(assert (not b!5214845))

(assert (not b!5214990))

(assert (not b!5214632))

(assert (not b!5215113))

(assert (not b!5215102))

(assert (not bm!367560))

(assert (not bm!367563))

(assert (not bm!367543))

(assert (not b!5215038))

(assert (not d!1681471))

(assert (not b!5215131))

(assert (not bm!367524))

(assert (not b!5215028))

(assert (not b!5214993))

(assert (not b!5214682))

(assert (not b!5214919))

(assert (not b!5214876))

(assert (not bs!1211425))

(assert (not b!5215098))

(assert (not bs!1211428))

(assert (not b!5214552))

(assert (not setNonEmpty!33143))

(assert (not bm!367488))

(assert (not b!5215093))

(assert (not b!5215135))

(assert (not d!1681363))

(assert (not d!1681413))

(assert (not d!1681317))

(assert (not b!5214929))

(assert (not b!5215106))

(assert (not b!5214984))

(assert (not d!1681467))

(assert (not b!5215132))

(assert (not b!5215081))

(assert (not b!5215092))

(assert (not b!5214692))

(assert (not b!5214729))

(assert (not b!5214847))

(assert (not bm!367552))

(assert (not b!5215130))

(assert (not b!5214557))

(assert (not b!5215017))

(assert (not d!1681367))

(assert (not bm!367568))

(assert (not b!5215063))

(assert (not bm!367540))

(assert (not d!1681497))

(assert (not b!5214895))

(assert (not b!5214606))

(assert (not b!5215122))

(assert (not b!5214705))

(assert (not b!5214713))

(assert (not d!1681425))

(assert (not b!5215002))

(assert (not b!5215104))

(assert (not b!5214690))

(assert (not bm!367460))

(assert (not bm!367554))

(assert (not b!5214949))

(assert (not bm!367522))

(assert (not b!5214974))

(assert (not b!5214548))

(assert (not bm!367479))

(assert (not b!5214977))

(assert (not bs!1211424))

(assert (not bm!367542))

(assert (not d!1681269))

(assert (not d!1681355))

(assert (not b!5215004))

(assert (not b!5215055))

(assert (not d!1681359))

(assert (not b!5214877))

(assert (not b!5214636))

(assert (not b!5215101))

(assert (not b!5214934))

(assert (not b!5214858))

(assert (not bm!367528))

(assert (not b!5215071))

(assert (not b!5214667))

(assert (not b!5215035))

(assert (not b_lambda!201695))

(assert (not b!5215065))

(assert (not b!5215011))

(assert (not bm!367468))

(assert (not b!5215031))

(assert (not b!5214629))

(assert (not d!1681315))

(assert (not b!5214881))

(assert (not b!5214879))

(assert (not b!5214727))

(assert (not b!5214547))

(assert (not b!5214695))

(assert (not b!5215121))

(assert (not b!5215090))

(assert (not b!5214996))

(assert (not bm!367480))

(assert (not b!5214592))

(assert (not b!5214874))

(assert (not b!5214700))

(assert (not b!5215120))

(assert (not b!5214991))

(assert (not b!5215048))

(assert (not b!5215026))

(assert (not d!1681465))

(assert (not b!5214702))

(assert (not d!1681321))

(assert (not b_lambda!201657))

(assert (not bm!367537))

(assert (not b!5215022))

(assert (not b!5214744))

(assert (not b!5214586))

(assert (not bm!367534))

(assert (not b!5214961))

(assert (not b!5214594))

(assert (not bm!367489))

(assert (not b!5215125))

(assert (not d!1681313))

(assert (not b!5214932))

(assert (not b!5214869))

(assert (not d!1681323))

(assert (not bm!367506))

(assert (not b!5214679))

(assert (not b!5214738))

(assert (not b!5214728))

(assert (not bm!367490))

(assert (not bm!367481))

(assert (not b!5215100))

(assert (not b!5215116))

(assert (not b!5215053))

(assert (not b!5215084))

(assert (not b!5215030))

(assert (not b!5215108))

(assert (not d!1681495))

(assert (not b!5215042))

(assert (not bm!367492))

(assert (not b_lambda!201659))

(assert (not d!1681375))

(assert (not b!5215069))

(assert (not b!5215096))

(assert (not b!5214550))

(assert (not bm!367561))

(assert (not b!5214913))

(assert (not bm!367548))

(assert (not b!5215040))

(assert (not b!5215061))

(assert (not bm!367565))

(assert (not b!5214678))

(assert (not b!5214687))

(assert (not d!1681477))

(assert (not b!5214631))

(assert (not b!5214933))

(assert (not b!5215134))

(assert (not b!5214746))

(assert (not b!5215020))

(assert (not bm!367461))

(assert (not b!5214593))

(assert (not b!5215097))

(assert (not d!1681301))

(assert (not b!5214842))

(assert (not d!1681423))

(assert (not b!5214789))

(assert (not setNonEmpty!33142))

(assert (not b!5215075))

(assert (not d!1681291))

(assert (not b_lambda!201683))

(assert (not b!5214748))

(assert (not b!5214755))

(assert (not bm!367463))

(assert (not b!5215056))

(assert (not bm!367521))

(assert (not bm!367547))

(assert (not b!5215110))

(assert (not b!5214621))

(assert (not b!5214688))

(assert (not b!5215024))

(assert (not d!1681501))

(assert (not bm!367518))

(assert (not b!5214979))

(assert (not b!5214683))

(assert (not d!1681299))

(assert (not b!5215129))

(assert (not b!5214886))

(assert (not b!5214989))

(assert (not bm!367567))

(assert (not d!1681381))

(assert (not b!5214709))

(assert (not bm!367530))

(assert (not b!5214718))

(assert tp_is_empty!38857)

(assert (not bm!367508))

(assert (not bm!367535))

(assert (not b!5215089))

(assert (not d!1681345))

(assert (not b!5214712))

(assert (not bm!367503))

(assert (not b!5215123))

(assert (not d!1681333))

(assert (not b!5214752))

(assert (not b!5214968))

(assert (not bm!367495))

(assert (not b!5215039))

(assert (not d!1681447))

(assert (not b!5214807))

(assert (not setNonEmpty!33141))

(assert (not d!1681443))

(assert (not b!5214577))

(assert (not d!1681393))

(assert (not b!5214627))

(assert (not d!1681339))

(assert (not b!5215067))

(assert (not b!5215018))

(assert (not d!1681435))

(assert (not b!5215060))

(assert (not b!5214689))

(assert (not b!5214743))

(assert (not bm!367509))

(assert (not bm!367464))

(assert (not b!5215088))

(assert (not b!5214988))

(assert (not b!5214809))

(assert (not b!5215085))

(assert (not bm!367549))

(assert (not b_lambda!201691))

(assert (not b!5215118))

(assert (not bm!367539))

(assert (not d!1681415))

(assert (not b!5215126))

(assert (not b!5215049))

(assert (not b!5214931))

(assert (not b!5214844))

(assert (not b!5215117))

(assert (not b!5215077))

(assert (not b!5215127))

(assert (not bm!367485))

(assert (not b!5215072))

(assert (not d!1681439))

(assert (not b!5214619))

(assert (not d!1681463))

(assert (not d!1681271))

(assert (not d!1681297))

(assert (not bm!367458))

(assert (not bm!367493))

(assert (not d!1681457))

(assert (not b!5214975))

(assert (not bm!367466))

(assert (not b_lambda!201687))

(assert (not b!5214704))

(assert (not b!5215051))

(assert (not d!1681311))

(assert (not b!5214882))

(assert (not b!5214685))

(assert (not d!1681481))

(assert (not d!1681347))

(assert (not b!5214694))

(assert (not b!5215109))

(assert (not b!5215023))

(assert (not bm!367557))

(assert (not b!5215045))

(assert (not b!5214568))

(assert (not bm!367519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

