; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561978 () Bool)

(assert start!561978)

(declare-fun b!5332261 () Bool)

(assert (=> b!5332261 true))

(assert (=> b!5332261 true))

(declare-fun lambda!272574 () Int)

(declare-fun lambda!272573 () Int)

(assert (=> b!5332261 (not (= lambda!272574 lambda!272573))))

(assert (=> b!5332261 true))

(assert (=> b!5332261 true))

(declare-fun b!5332244 () Bool)

(assert (=> b!5332244 true))

(declare-fun bs!1236662 () Bool)

(declare-fun b!5332253 () Bool)

(assert (= bs!1236662 (and b!5332253 b!5332261)))

(declare-datatypes ((C!30268 0))(
  ( (C!30269 (val!24836 Int)) )
))
(declare-datatypes ((Regex!14999 0))(
  ( (ElementMatch!14999 (c!927403 C!30268)) (Concat!23844 (regOne!30510 Regex!14999) (regTwo!30510 Regex!14999)) (EmptyExpr!14999) (Star!14999 (reg!15328 Regex!14999)) (EmptyLang!14999) (Union!14999 (regOne!30511 Regex!14999) (regTwo!30511 Regex!14999)) )
))
(declare-fun r!7292 () Regex!14999)

(declare-fun lambda!272576 () Int)

(declare-fun lt!2174804 () Regex!14999)

(assert (=> bs!1236662 (= (and (= (regOne!30510 (regOne!30510 r!7292)) (regOne!30510 r!7292)) (= lt!2174804 (regTwo!30510 r!7292))) (= lambda!272576 lambda!272573))))

(assert (=> bs!1236662 (not (= lambda!272576 lambda!272574))))

(assert (=> b!5332253 true))

(assert (=> b!5332253 true))

(assert (=> b!5332253 true))

(declare-fun lambda!272577 () Int)

(assert (=> bs!1236662 (not (= lambda!272577 lambda!272573))))

(assert (=> bs!1236662 (= (and (= (regOne!30510 (regOne!30510 r!7292)) (regOne!30510 r!7292)) (= lt!2174804 (regTwo!30510 r!7292))) (= lambda!272577 lambda!272574))))

(assert (=> b!5332253 (not (= lambda!272577 lambda!272576))))

(assert (=> b!5332253 true))

(assert (=> b!5332253 true))

(assert (=> b!5332253 true))

(declare-fun b!5332240 () Bool)

(declare-fun e!3311809 () Bool)

(declare-fun tp!1483800 () Bool)

(assert (=> b!5332240 (= e!3311809 tp!1483800)))

(declare-fun tp!1483807 () Bool)

(declare-datatypes ((List!61296 0))(
  ( (Nil!61172) (Cons!61172 (h!67620 Regex!14999) (t!374513 List!61296)) )
))
(declare-datatypes ((Context!8766 0))(
  ( (Context!8767 (exprs!4883 List!61296)) )
))
(declare-datatypes ((List!61297 0))(
  ( (Nil!61173) (Cons!61173 (h!67621 Context!8766) (t!374514 List!61297)) )
))
(declare-fun zl!343 () List!61297)

(declare-fun b!5332241 () Bool)

(declare-fun e!3311808 () Bool)

(declare-fun inv!80744 (Context!8766) Bool)

(assert (=> b!5332241 (= e!3311808 (and (inv!80744 (h!67621 zl!343)) e!3311809 tp!1483807))))

(declare-fun b!5332242 () Bool)

(declare-fun res!2261646 () Bool)

(declare-fun e!3311801 () Bool)

(assert (=> b!5332242 (=> res!2261646 e!3311801)))

(declare-fun isEmpty!33143 (List!61297) Bool)

(assert (=> b!5332242 (= res!2261646 (not (isEmpty!33143 (t!374514 zl!343))))))

(declare-fun b!5332243 () Bool)

(declare-fun e!3311803 () Bool)

(declare-fun tp!1483802 () Bool)

(declare-fun tp!1483804 () Bool)

(assert (=> b!5332243 (= e!3311803 (and tp!1483802 tp!1483804))))

(declare-fun e!3311811 () Bool)

(declare-fun e!3311802 () Bool)

(assert (=> b!5332244 (= e!3311811 e!3311802)))

(declare-fun res!2261656 () Bool)

(assert (=> b!5332244 (=> res!2261656 e!3311802)))

(declare-datatypes ((List!61298 0))(
  ( (Nil!61174) (Cons!61174 (h!67622 C!30268) (t!374515 List!61298)) )
))
(declare-fun s!2326 () List!61298)

(get-info :version)

(assert (=> b!5332244 (= res!2261656 (or (and ((_ is ElementMatch!14999) (regOne!30510 r!7292)) (= (c!927403 (regOne!30510 r!7292)) (h!67622 s!2326))) ((_ is Union!14999) (regOne!30510 r!7292))))))

(declare-datatypes ((Unit!153514 0))(
  ( (Unit!153515) )
))
(declare-fun lt!2174815 () Unit!153514)

(declare-fun e!3311816 () Unit!153514)

(assert (=> b!5332244 (= lt!2174815 e!3311816)))

(declare-fun c!927402 () Bool)

(declare-fun nullable!5168 (Regex!14999) Bool)

(assert (=> b!5332244 (= c!927402 (nullable!5168 (h!67620 (exprs!4883 (h!67621 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8766))

(declare-fun lambda!272575 () Int)

(declare-fun flatMap!726 ((InoxSet Context!8766) Int) (InoxSet Context!8766))

(declare-fun derivationStepZipperUp!371 (Context!8766 C!30268) (InoxSet Context!8766))

(assert (=> b!5332244 (= (flatMap!726 z!1189 lambda!272575) (derivationStepZipperUp!371 (h!67621 zl!343) (h!67622 s!2326)))))

(declare-fun lt!2174814 () Unit!153514)

(declare-fun lemmaFlatMapOnSingletonSet!258 ((InoxSet Context!8766) Context!8766 Int) Unit!153514)

(assert (=> b!5332244 (= lt!2174814 (lemmaFlatMapOnSingletonSet!258 z!1189 (h!67621 zl!343) lambda!272575))))

(declare-fun lt!2174808 () (InoxSet Context!8766))

(declare-fun lt!2174816 () Context!8766)

(assert (=> b!5332244 (= lt!2174808 (derivationStepZipperUp!371 lt!2174816 (h!67622 s!2326)))))

(declare-fun lt!2174807 () (InoxSet Context!8766))

(declare-fun derivationStepZipperDown!447 (Regex!14999 Context!8766 C!30268) (InoxSet Context!8766))

(assert (=> b!5332244 (= lt!2174807 (derivationStepZipperDown!447 (h!67620 (exprs!4883 (h!67621 zl!343))) lt!2174816 (h!67622 s!2326)))))

(assert (=> b!5332244 (= lt!2174816 (Context!8767 (t!374513 (exprs!4883 (h!67621 zl!343)))))))

(declare-fun lt!2174800 () (InoxSet Context!8766))

(assert (=> b!5332244 (= lt!2174800 (derivationStepZipperUp!371 (Context!8767 (Cons!61172 (h!67620 (exprs!4883 (h!67621 zl!343))) (t!374513 (exprs!4883 (h!67621 zl!343))))) (h!67622 s!2326)))))

(declare-fun b!5332245 () Bool)

(declare-fun tp_is_empty!39251 () Bool)

(assert (=> b!5332245 (= e!3311803 tp_is_empty!39251)))

(declare-fun b!5332246 () Bool)

(declare-fun e!3311810 () Bool)

(assert (=> b!5332246 (= e!3311810 (not e!3311801))))

(declare-fun res!2261655 () Bool)

(assert (=> b!5332246 (=> res!2261655 e!3311801)))

(assert (=> b!5332246 (= res!2261655 (not ((_ is Cons!61173) zl!343)))))

(declare-fun lt!2174820 () Bool)

(declare-fun matchRSpec!2102 (Regex!14999 List!61298) Bool)

(assert (=> b!5332246 (= lt!2174820 (matchRSpec!2102 r!7292 s!2326))))

(declare-fun matchR!7184 (Regex!14999 List!61298) Bool)

(assert (=> b!5332246 (= lt!2174820 (matchR!7184 r!7292 s!2326))))

(declare-fun lt!2174817 () Unit!153514)

(declare-fun mainMatchTheorem!2102 (Regex!14999 List!61298) Unit!153514)

(assert (=> b!5332246 (= lt!2174817 (mainMatchTheorem!2102 r!7292 s!2326))))

(declare-fun b!5332247 () Bool)

(declare-fun res!2261648 () Bool)

(assert (=> b!5332247 (=> res!2261648 e!3311802)))

(declare-fun e!3311807 () Bool)

(assert (=> b!5332247 (= res!2261648 e!3311807)))

(declare-fun res!2261661 () Bool)

(assert (=> b!5332247 (=> (not res!2261661) (not e!3311807))))

(assert (=> b!5332247 (= res!2261661 ((_ is Concat!23844) (regOne!30510 r!7292)))))

(declare-fun b!5332248 () Bool)

(declare-fun res!2261647 () Bool)

(declare-fun e!3311814 () Bool)

(assert (=> b!5332248 (=> res!2261647 e!3311814)))

(declare-fun lt!2174801 () (InoxSet Context!8766))

(declare-fun lt!2174803 () Bool)

(declare-fun matchZipper!1243 ((InoxSet Context!8766) List!61298) Bool)

(assert (=> b!5332248 (= res!2261647 (not (= lt!2174803 (matchZipper!1243 lt!2174801 (t!374515 s!2326)))))))

(declare-fun b!5332250 () Bool)

(declare-fun res!2261650 () Bool)

(assert (=> b!5332250 (=> (not res!2261650) (not e!3311810))))

(declare-fun unfocusZipper!741 (List!61297) Regex!14999)

(assert (=> b!5332250 (= res!2261650 (= r!7292 (unfocusZipper!741 zl!343)))))

(declare-fun b!5332251 () Bool)

(declare-fun e!3311815 () Bool)

(assert (=> b!5332251 (= e!3311815 e!3311814)))

(declare-fun res!2261645 () Bool)

(assert (=> b!5332251 (=> res!2261645 e!3311814)))

(declare-fun lt!2174813 () (InoxSet Context!8766))

(assert (=> b!5332251 (= res!2261645 (not (= lt!2174801 lt!2174813)))))

(declare-fun lt!2174819 () (InoxSet Context!8766))

(declare-fun lt!2174809 () Context!8766)

(assert (=> b!5332251 (= (flatMap!726 lt!2174819 lambda!272575) (derivationStepZipperUp!371 lt!2174809 (h!67622 s!2326)))))

(declare-fun lt!2174810 () Unit!153514)

(assert (=> b!5332251 (= lt!2174810 (lemmaFlatMapOnSingletonSet!258 lt!2174819 lt!2174809 lambda!272575))))

(declare-fun lt!2174802 () (InoxSet Context!8766))

(assert (=> b!5332251 (= lt!2174802 (derivationStepZipperUp!371 lt!2174809 (h!67622 s!2326)))))

(declare-fun derivationStepZipper!1240 ((InoxSet Context!8766) C!30268) (InoxSet Context!8766))

(assert (=> b!5332251 (= lt!2174801 (derivationStepZipper!1240 lt!2174819 (h!67622 s!2326)))))

(assert (=> b!5332251 (= lt!2174819 (store ((as const (Array Context!8766 Bool)) false) lt!2174809 true))))

(declare-fun lt!2174811 () List!61296)

(assert (=> b!5332251 (= lt!2174809 (Context!8767 lt!2174811))))

(declare-fun lt!2174796 () List!61296)

(assert (=> b!5332251 (= lt!2174811 (Cons!61172 (regOne!30510 (regOne!30510 r!7292)) lt!2174796))))

(declare-fun b!5332252 () Bool)

(declare-fun e!3311813 () Bool)

(assert (=> b!5332252 (= e!3311814 e!3311813)))

(declare-fun res!2261654 () Bool)

(assert (=> b!5332252 (=> res!2261654 e!3311813)))

(declare-fun lt!2174792 () List!61297)

(declare-fun zipperDepthTotal!152 (List!61297) Int)

(assert (=> b!5332252 (= res!2261654 (>= (zipperDepthTotal!152 lt!2174792) (zipperDepthTotal!152 zl!343)))))

(assert (=> b!5332252 (= lt!2174792 (Cons!61173 lt!2174809 Nil!61173))))

(assert (=> b!5332253 (= e!3311813 true)))

(declare-fun lt!2174822 () Regex!14999)

(declare-fun generalisedConcat!668 (List!61296) Regex!14999)

(assert (=> b!5332253 (= lt!2174822 (generalisedConcat!668 (t!374513 (exprs!4883 (h!67621 zl!343)))))))

(assert (=> b!5332253 (= (matchR!7184 lt!2174804 s!2326) (matchRSpec!2102 lt!2174804 s!2326))))

(declare-fun lt!2174806 () Unit!153514)

(assert (=> b!5332253 (= lt!2174806 (mainMatchTheorem!2102 lt!2174804 s!2326))))

(declare-fun Exists!2180 (Int) Bool)

(assert (=> b!5332253 (= (Exists!2180 lambda!272576) (Exists!2180 lambda!272577))))

(declare-fun lt!2174805 () Unit!153514)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!834 (Regex!14999 Regex!14999 List!61298) Unit!153514)

(assert (=> b!5332253 (= lt!2174805 (lemmaExistCutMatchRandMatchRSpecEquivalent!834 (regOne!30510 (regOne!30510 r!7292)) lt!2174804 s!2326))))

(declare-datatypes ((tuple2!64396 0))(
  ( (tuple2!64397 (_1!35501 List!61298) (_2!35501 List!61298)) )
))
(declare-datatypes ((Option!15110 0))(
  ( (None!15109) (Some!15109 (v!51138 tuple2!64396)) )
))
(declare-fun isDefined!11813 (Option!15110) Bool)

(declare-fun findConcatSeparation!1524 (Regex!14999 Regex!14999 List!61298 List!61298 List!61298) Option!15110)

(assert (=> b!5332253 (= (isDefined!11813 (findConcatSeparation!1524 (regOne!30510 (regOne!30510 r!7292)) lt!2174804 Nil!61174 s!2326 s!2326)) (Exists!2180 lambda!272576))))

(declare-fun lt!2174821 () Unit!153514)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1288 (Regex!14999 Regex!14999 List!61298) Unit!153514)

(assert (=> b!5332253 (= lt!2174821 (lemmaFindConcatSeparationEquivalentToExists!1288 (regOne!30510 (regOne!30510 r!7292)) lt!2174804 s!2326))))

(assert (=> b!5332253 (= lt!2174804 (generalisedConcat!668 lt!2174796))))

(declare-fun lt!2174797 () Bool)

(declare-fun lt!2174795 () Regex!14999)

(assert (=> b!5332253 (= lt!2174797 (matchRSpec!2102 lt!2174795 s!2326))))

(declare-fun lt!2174793 () Unit!153514)

(assert (=> b!5332253 (= lt!2174793 (mainMatchTheorem!2102 lt!2174795 s!2326))))

(assert (=> b!5332253 (= lt!2174797 (matchZipper!1243 lt!2174819 s!2326))))

(assert (=> b!5332253 (= lt!2174797 (matchR!7184 lt!2174795 s!2326))))

(declare-fun lt!2174818 () Unit!153514)

(declare-fun theoremZipperRegexEquiv!397 ((InoxSet Context!8766) List!61297 Regex!14999 List!61298) Unit!153514)

(assert (=> b!5332253 (= lt!2174818 (theoremZipperRegexEquiv!397 lt!2174819 lt!2174792 lt!2174795 s!2326))))

(assert (=> b!5332253 (= lt!2174795 (generalisedConcat!668 lt!2174811))))

(declare-fun setIsEmpty!34375 () Bool)

(declare-fun setRes!34375 () Bool)

(assert (=> setIsEmpty!34375 setRes!34375))

(declare-fun b!5332254 () Bool)

(declare-fun e!3311812 () Bool)

(declare-fun tp!1483806 () Bool)

(assert (=> b!5332254 (= e!3311812 tp!1483806)))

(declare-fun b!5332255 () Bool)

(declare-fun res!2261662 () Bool)

(assert (=> b!5332255 (=> res!2261662 e!3311801)))

(assert (=> b!5332255 (= res!2261662 (not (= r!7292 (generalisedConcat!668 (exprs!4883 (h!67621 zl!343))))))))

(declare-fun b!5332256 () Bool)

(declare-fun tp!1483805 () Bool)

(declare-fun tp!1483809 () Bool)

(assert (=> b!5332256 (= e!3311803 (and tp!1483805 tp!1483809))))

(declare-fun b!5332257 () Bool)

(declare-fun res!2261644 () Bool)

(assert (=> b!5332257 (=> res!2261644 e!3311814)))

(assert (=> b!5332257 (= res!2261644 (not (= (exprs!4883 (h!67621 zl!343)) (Cons!61172 (Concat!23844 (regOne!30510 (regOne!30510 r!7292)) (regTwo!30510 (regOne!30510 r!7292))) (t!374513 (exprs!4883 (h!67621 zl!343)))))))))

(declare-fun b!5332258 () Bool)

(declare-fun tp!1483801 () Bool)

(assert (=> b!5332258 (= e!3311803 tp!1483801)))

(declare-fun b!5332259 () Bool)

(declare-fun res!2261658 () Bool)

(assert (=> b!5332259 (=> res!2261658 e!3311801)))

(declare-fun generalisedUnion!928 (List!61296) Regex!14999)

(declare-fun unfocusZipperList!441 (List!61297) List!61296)

(assert (=> b!5332259 (= res!2261658 (not (= r!7292 (generalisedUnion!928 (unfocusZipperList!441 zl!343)))))))

(declare-fun b!5332260 () Bool)

(declare-fun Unit!153516 () Unit!153514)

(assert (=> b!5332260 (= e!3311816 Unit!153516)))

(assert (=> b!5332261 (= e!3311801 e!3311811)))

(declare-fun res!2261651 () Bool)

(assert (=> b!5332261 (=> res!2261651 e!3311811)))

(declare-fun lt!2174812 () Bool)

(assert (=> b!5332261 (= res!2261651 (or (not (= lt!2174820 lt!2174812)) ((_ is Nil!61174) s!2326)))))

(assert (=> b!5332261 (= (Exists!2180 lambda!272573) (Exists!2180 lambda!272574))))

(declare-fun lt!2174799 () Unit!153514)

(assert (=> b!5332261 (= lt!2174799 (lemmaExistCutMatchRandMatchRSpecEquivalent!834 (regOne!30510 r!7292) (regTwo!30510 r!7292) s!2326))))

(assert (=> b!5332261 (= lt!2174812 (Exists!2180 lambda!272573))))

(assert (=> b!5332261 (= lt!2174812 (isDefined!11813 (findConcatSeparation!1524 (regOne!30510 r!7292) (regTwo!30510 r!7292) Nil!61174 s!2326 s!2326)))))

(declare-fun lt!2174794 () Unit!153514)

(assert (=> b!5332261 (= lt!2174794 (lemmaFindConcatSeparationEquivalentToExists!1288 (regOne!30510 r!7292) (regTwo!30510 r!7292) s!2326))))

(declare-fun b!5332262 () Bool)

(declare-fun e!3311806 () Bool)

(assert (=> b!5332262 (= e!3311806 (matchZipper!1243 lt!2174808 (t!374515 s!2326)))))

(declare-fun setNonEmpty!34375 () Bool)

(declare-fun setElem!34375 () Context!8766)

(declare-fun tp!1483808 () Bool)

(assert (=> setNonEmpty!34375 (= setRes!34375 (and tp!1483808 (inv!80744 setElem!34375) e!3311812))))

(declare-fun setRest!34375 () (InoxSet Context!8766))

(assert (=> setNonEmpty!34375 (= z!1189 ((_ map or) (store ((as const (Array Context!8766 Bool)) false) setElem!34375 true) setRest!34375))))

(declare-fun b!5332263 () Bool)

(declare-fun e!3311805 () Bool)

(assert (=> b!5332263 (= e!3311802 e!3311805)))

(declare-fun res!2261657 () Bool)

(assert (=> b!5332263 (=> res!2261657 e!3311805)))

(assert (=> b!5332263 (= res!2261657 (not (= lt!2174807 lt!2174813)))))

(assert (=> b!5332263 (= lt!2174813 (derivationStepZipperDown!447 (regOne!30510 (regOne!30510 r!7292)) (Context!8767 lt!2174796) (h!67622 s!2326)))))

(assert (=> b!5332263 (= lt!2174796 (Cons!61172 (regTwo!30510 (regOne!30510 r!7292)) (t!374513 (exprs!4883 (h!67621 zl!343)))))))

(declare-fun b!5332264 () Bool)

(declare-fun res!2261653 () Bool)

(assert (=> b!5332264 (=> res!2261653 e!3311814)))

(declare-fun contextDepthTotal!132 (Context!8766) Int)

(assert (=> b!5332264 (= res!2261653 (>= (contextDepthTotal!132 lt!2174809) (contextDepthTotal!132 (h!67621 zl!343))))))

(declare-fun b!5332265 () Bool)

(declare-fun res!2261649 () Bool)

(assert (=> b!5332265 (=> res!2261649 e!3311811)))

(declare-fun isEmpty!33144 (List!61296) Bool)

(assert (=> b!5332265 (= res!2261649 (isEmpty!33144 (t!374513 (exprs!4883 (h!67621 zl!343)))))))

(declare-fun res!2261659 () Bool)

(assert (=> start!561978 (=> (not res!2261659) (not e!3311810))))

(declare-fun validRegex!6735 (Regex!14999) Bool)

(assert (=> start!561978 (= res!2261659 (validRegex!6735 r!7292))))

(assert (=> start!561978 e!3311810))

(assert (=> start!561978 e!3311803))

(declare-fun condSetEmpty!34375 () Bool)

(assert (=> start!561978 (= condSetEmpty!34375 (= z!1189 ((as const (Array Context!8766 Bool)) false)))))

(assert (=> start!561978 setRes!34375))

(assert (=> start!561978 e!3311808))

(declare-fun e!3311804 () Bool)

(assert (=> start!561978 e!3311804))

(declare-fun b!5332249 () Bool)

(declare-fun Unit!153517 () Unit!153514)

(assert (=> b!5332249 (= e!3311816 Unit!153517)))

(declare-fun lt!2174798 () Unit!153514)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!236 ((InoxSet Context!8766) (InoxSet Context!8766) List!61298) Unit!153514)

(assert (=> b!5332249 (= lt!2174798 (lemmaZipperConcatMatchesSameAsBothZippers!236 lt!2174807 lt!2174808 (t!374515 s!2326)))))

(declare-fun res!2261663 () Bool)

(assert (=> b!5332249 (= res!2261663 (matchZipper!1243 lt!2174807 (t!374515 s!2326)))))

(assert (=> b!5332249 (=> res!2261663 e!3311806)))

(assert (=> b!5332249 (= (matchZipper!1243 ((_ map or) lt!2174807 lt!2174808) (t!374515 s!2326)) e!3311806)))

(declare-fun b!5332266 () Bool)

(declare-fun res!2261660 () Bool)

(assert (=> b!5332266 (=> res!2261660 e!3311801)))

(assert (=> b!5332266 (= res!2261660 (not ((_ is Cons!61172) (exprs!4883 (h!67621 zl!343)))))))

(declare-fun b!5332267 () Bool)

(assert (=> b!5332267 (= e!3311805 e!3311815)))

(declare-fun res!2261667 () Bool)

(assert (=> b!5332267 (=> res!2261667 e!3311815)))

(assert (=> b!5332267 (= res!2261667 (not (= lt!2174803 (matchZipper!1243 lt!2174813 (t!374515 s!2326)))))))

(assert (=> b!5332267 (= lt!2174803 (matchZipper!1243 lt!2174807 (t!374515 s!2326)))))

(declare-fun b!5332268 () Bool)

(declare-fun res!2261666 () Bool)

(assert (=> b!5332268 (=> res!2261666 e!3311813)))

(declare-fun zipperDepth!108 (List!61297) Int)

(assert (=> b!5332268 (= res!2261666 (> (zipperDepth!108 lt!2174792) (zipperDepth!108 zl!343)))))

(declare-fun b!5332269 () Bool)

(assert (=> b!5332269 (= e!3311807 (nullable!5168 (regOne!30510 (regOne!30510 r!7292))))))

(declare-fun b!5332270 () Bool)

(declare-fun res!2261664 () Bool)

(assert (=> b!5332270 (=> res!2261664 e!3311801)))

(assert (=> b!5332270 (= res!2261664 (or ((_ is EmptyExpr!14999) r!7292) ((_ is EmptyLang!14999) r!7292) ((_ is ElementMatch!14999) r!7292) ((_ is Union!14999) r!7292) (not ((_ is Concat!23844) r!7292))))))

(declare-fun b!5332271 () Bool)

(declare-fun res!2261652 () Bool)

(assert (=> b!5332271 (=> (not res!2261652) (not e!3311810))))

(declare-fun toList!8783 ((InoxSet Context!8766)) List!61297)

(assert (=> b!5332271 (= res!2261652 (= (toList!8783 z!1189) zl!343))))

(declare-fun b!5332272 () Bool)

(declare-fun res!2261665 () Bool)

(assert (=> b!5332272 (=> res!2261665 e!3311802)))

(assert (=> b!5332272 (= res!2261665 (not ((_ is Concat!23844) (regOne!30510 r!7292))))))

(declare-fun b!5332273 () Bool)

(declare-fun tp!1483803 () Bool)

(assert (=> b!5332273 (= e!3311804 (and tp_is_empty!39251 tp!1483803))))

(assert (= (and start!561978 res!2261659) b!5332271))

(assert (= (and b!5332271 res!2261652) b!5332250))

(assert (= (and b!5332250 res!2261650) b!5332246))

(assert (= (and b!5332246 (not res!2261655)) b!5332242))

(assert (= (and b!5332242 (not res!2261646)) b!5332255))

(assert (= (and b!5332255 (not res!2261662)) b!5332266))

(assert (= (and b!5332266 (not res!2261660)) b!5332259))

(assert (= (and b!5332259 (not res!2261658)) b!5332270))

(assert (= (and b!5332270 (not res!2261664)) b!5332261))

(assert (= (and b!5332261 (not res!2261651)) b!5332265))

(assert (= (and b!5332265 (not res!2261649)) b!5332244))

(assert (= (and b!5332244 c!927402) b!5332249))

(assert (= (and b!5332244 (not c!927402)) b!5332260))

(assert (= (and b!5332249 (not res!2261663)) b!5332262))

(assert (= (and b!5332244 (not res!2261656)) b!5332247))

(assert (= (and b!5332247 res!2261661) b!5332269))

(assert (= (and b!5332247 (not res!2261648)) b!5332272))

(assert (= (and b!5332272 (not res!2261665)) b!5332263))

(assert (= (and b!5332263 (not res!2261657)) b!5332267))

(assert (= (and b!5332267 (not res!2261667)) b!5332251))

(assert (= (and b!5332251 (not res!2261645)) b!5332248))

(assert (= (and b!5332248 (not res!2261647)) b!5332257))

(assert (= (and b!5332257 (not res!2261644)) b!5332264))

(assert (= (and b!5332264 (not res!2261653)) b!5332252))

(assert (= (and b!5332252 (not res!2261654)) b!5332268))

(assert (= (and b!5332268 (not res!2261666)) b!5332253))

(assert (= (and start!561978 ((_ is ElementMatch!14999) r!7292)) b!5332245))

(assert (= (and start!561978 ((_ is Concat!23844) r!7292)) b!5332256))

(assert (= (and start!561978 ((_ is Star!14999) r!7292)) b!5332258))

(assert (= (and start!561978 ((_ is Union!14999) r!7292)) b!5332243))

(assert (= (and start!561978 condSetEmpty!34375) setIsEmpty!34375))

(assert (= (and start!561978 (not condSetEmpty!34375)) setNonEmpty!34375))

(assert (= setNonEmpty!34375 b!5332254))

(assert (= b!5332241 b!5332240))

(assert (= (and start!561978 ((_ is Cons!61173) zl!343)) b!5332241))

(assert (= (and start!561978 ((_ is Cons!61174) s!2326)) b!5332273))

(declare-fun m!6365512 () Bool)

(assert (=> b!5332263 m!6365512))

(declare-fun m!6365514 () Bool)

(assert (=> b!5332248 m!6365514))

(declare-fun m!6365516 () Bool)

(assert (=> b!5332251 m!6365516))

(declare-fun m!6365518 () Bool)

(assert (=> b!5332251 m!6365518))

(declare-fun m!6365520 () Bool)

(assert (=> b!5332251 m!6365520))

(declare-fun m!6365522 () Bool)

(assert (=> b!5332251 m!6365522))

(declare-fun m!6365524 () Bool)

(assert (=> b!5332251 m!6365524))

(declare-fun m!6365526 () Bool)

(assert (=> b!5332267 m!6365526))

(declare-fun m!6365528 () Bool)

(assert (=> b!5332267 m!6365528))

(declare-fun m!6365530 () Bool)

(assert (=> b!5332259 m!6365530))

(assert (=> b!5332259 m!6365530))

(declare-fun m!6365532 () Bool)

(assert (=> b!5332259 m!6365532))

(declare-fun m!6365534 () Bool)

(assert (=> b!5332261 m!6365534))

(declare-fun m!6365536 () Bool)

(assert (=> b!5332261 m!6365536))

(declare-fun m!6365538 () Bool)

(assert (=> b!5332261 m!6365538))

(declare-fun m!6365540 () Bool)

(assert (=> b!5332261 m!6365540))

(declare-fun m!6365542 () Bool)

(assert (=> b!5332261 m!6365542))

(assert (=> b!5332261 m!6365536))

(assert (=> b!5332261 m!6365538))

(declare-fun m!6365544 () Bool)

(assert (=> b!5332261 m!6365544))

(declare-fun m!6365546 () Bool)

(assert (=> b!5332255 m!6365546))

(declare-fun m!6365548 () Bool)

(assert (=> b!5332244 m!6365548))

(declare-fun m!6365550 () Bool)

(assert (=> b!5332244 m!6365550))

(declare-fun m!6365552 () Bool)

(assert (=> b!5332244 m!6365552))

(declare-fun m!6365554 () Bool)

(assert (=> b!5332244 m!6365554))

(declare-fun m!6365556 () Bool)

(assert (=> b!5332244 m!6365556))

(declare-fun m!6365558 () Bool)

(assert (=> b!5332244 m!6365558))

(declare-fun m!6365560 () Bool)

(assert (=> b!5332244 m!6365560))

(declare-fun m!6365562 () Bool)

(assert (=> b!5332269 m!6365562))

(declare-fun m!6365564 () Bool)

(assert (=> b!5332242 m!6365564))

(declare-fun m!6365566 () Bool)

(assert (=> b!5332271 m!6365566))

(declare-fun m!6365568 () Bool)

(assert (=> b!5332249 m!6365568))

(assert (=> b!5332249 m!6365528))

(declare-fun m!6365570 () Bool)

(assert (=> b!5332249 m!6365570))

(declare-fun m!6365572 () Bool)

(assert (=> b!5332262 m!6365572))

(declare-fun m!6365574 () Bool)

(assert (=> setNonEmpty!34375 m!6365574))

(declare-fun m!6365576 () Bool)

(assert (=> b!5332253 m!6365576))

(declare-fun m!6365578 () Bool)

(assert (=> b!5332253 m!6365578))

(declare-fun m!6365580 () Bool)

(assert (=> b!5332253 m!6365580))

(declare-fun m!6365582 () Bool)

(assert (=> b!5332253 m!6365582))

(assert (=> b!5332253 m!6365582))

(declare-fun m!6365584 () Bool)

(assert (=> b!5332253 m!6365584))

(declare-fun m!6365586 () Bool)

(assert (=> b!5332253 m!6365586))

(declare-fun m!6365588 () Bool)

(assert (=> b!5332253 m!6365588))

(assert (=> b!5332253 m!6365576))

(declare-fun m!6365590 () Bool)

(assert (=> b!5332253 m!6365590))

(declare-fun m!6365592 () Bool)

(assert (=> b!5332253 m!6365592))

(declare-fun m!6365594 () Bool)

(assert (=> b!5332253 m!6365594))

(declare-fun m!6365596 () Bool)

(assert (=> b!5332253 m!6365596))

(declare-fun m!6365598 () Bool)

(assert (=> b!5332253 m!6365598))

(declare-fun m!6365600 () Bool)

(assert (=> b!5332253 m!6365600))

(declare-fun m!6365602 () Bool)

(assert (=> b!5332253 m!6365602))

(declare-fun m!6365604 () Bool)

(assert (=> b!5332253 m!6365604))

(declare-fun m!6365606 () Bool)

(assert (=> b!5332253 m!6365606))

(declare-fun m!6365608 () Bool)

(assert (=> b!5332253 m!6365608))

(declare-fun m!6365610 () Bool)

(assert (=> b!5332241 m!6365610))

(declare-fun m!6365612 () Bool)

(assert (=> b!5332265 m!6365612))

(declare-fun m!6365614 () Bool)

(assert (=> b!5332268 m!6365614))

(declare-fun m!6365616 () Bool)

(assert (=> b!5332268 m!6365616))

(declare-fun m!6365618 () Bool)

(assert (=> start!561978 m!6365618))

(declare-fun m!6365620 () Bool)

(assert (=> b!5332264 m!6365620))

(declare-fun m!6365622 () Bool)

(assert (=> b!5332264 m!6365622))

(declare-fun m!6365624 () Bool)

(assert (=> b!5332246 m!6365624))

(declare-fun m!6365626 () Bool)

(assert (=> b!5332246 m!6365626))

(declare-fun m!6365628 () Bool)

(assert (=> b!5332246 m!6365628))

(declare-fun m!6365630 () Bool)

(assert (=> b!5332252 m!6365630))

(declare-fun m!6365632 () Bool)

(assert (=> b!5332252 m!6365632))

(declare-fun m!6365634 () Bool)

(assert (=> b!5332250 m!6365634))

(check-sat (not b!5332255) (not b!5332244) (not b!5332267) (not b!5332273) (not b!5332240) (not b!5332259) (not b!5332269) (not b!5332249) (not b!5332241) (not b!5332253) (not setNonEmpty!34375) (not b!5332254) (not b!5332263) (not b!5332242) (not b!5332271) (not b!5332243) (not b!5332262) (not b!5332258) (not b!5332256) tp_is_empty!39251 (not b!5332268) (not b!5332252) (not b!5332246) (not b!5332265) (not start!561978) (not b!5332264) (not b!5332248) (not b!5332261) (not b!5332251) (not b!5332250))
(check-sat)
