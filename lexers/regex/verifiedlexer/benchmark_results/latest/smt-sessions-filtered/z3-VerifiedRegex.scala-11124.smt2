; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!575462 () Bool)

(assert start!575462)

(declare-fun b!5510565 () Bool)

(assert (=> b!5510565 true))

(assert (=> b!5510565 true))

(declare-fun lambda!295188 () Int)

(declare-fun lambda!295187 () Int)

(assert (=> b!5510565 (not (= lambda!295188 lambda!295187))))

(assert (=> b!5510565 true))

(assert (=> b!5510565 true))

(declare-fun b!5510575 () Bool)

(assert (=> b!5510575 true))

(declare-fun b!5510557 () Bool)

(declare-fun e!3407933 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31260 0))(
  ( (C!31261 (val!25332 Int)) )
))
(declare-datatypes ((Regex!15495 0))(
  ( (ElementMatch!15495 (c!962991 C!31260)) (Concat!24340 (regOne!31502 Regex!15495) (regTwo!31502 Regex!15495)) (EmptyExpr!15495) (Star!15495 (reg!15824 Regex!15495)) (EmptyLang!15495) (Union!15495 (regOne!31503 Regex!15495) (regTwo!31503 Regex!15495)) )
))
(declare-datatypes ((List!62784 0))(
  ( (Nil!62660) (Cons!62660 (h!69108 Regex!15495) (t!376029 List!62784)) )
))
(declare-datatypes ((Context!9758 0))(
  ( (Context!9759 (exprs!5379 List!62784)) )
))
(declare-fun lt!2244996 () (InoxSet Context!9758))

(declare-datatypes ((List!62785 0))(
  ( (Nil!62661) (Cons!62661 (h!69109 C!31260) (t!376030 List!62785)) )
))
(declare-fun s!2326 () List!62785)

(declare-fun matchZipper!1653 ((InoxSet Context!9758) List!62785) Bool)

(assert (=> b!5510557 (= e!3407933 (matchZipper!1653 lt!2244996 (t!376030 s!2326)))))

(declare-fun b!5510558 () Bool)

(declare-fun res!2348165 () Bool)

(declare-fun e!3407926 () Bool)

(assert (=> b!5510558 (=> res!2348165 e!3407926)))

(declare-datatypes ((List!62786 0))(
  ( (Nil!62662) (Cons!62662 (h!69110 Context!9758) (t!376031 List!62786)) )
))
(declare-fun zl!343 () List!62786)

(declare-fun isEmpty!34441 (List!62786) Bool)

(assert (=> b!5510558 (= res!2348165 (not (isEmpty!34441 (t!376031 zl!343))))))

(declare-fun b!5510559 () Bool)

(declare-fun res!2348158 () Bool)

(assert (=> b!5510559 (=> res!2348158 e!3407926)))

(declare-fun r!7292 () Regex!15495)

(get-info :version)

(assert (=> b!5510559 (= res!2348158 (or ((_ is EmptyExpr!15495) r!7292) ((_ is EmptyLang!15495) r!7292) ((_ is ElementMatch!15495) r!7292) ((_ is Union!15495) r!7292) (not ((_ is Concat!24340) r!7292))))))

(declare-fun b!5510561 () Bool)

(declare-fun res!2348163 () Bool)

(declare-fun e!3407929 () Bool)

(assert (=> b!5510561 (=> (not res!2348163) (not e!3407929))))

(declare-fun z!1189 () (InoxSet Context!9758))

(declare-fun toList!9279 ((InoxSet Context!9758)) List!62786)

(assert (=> b!5510561 (= res!2348163 (= (toList!9279 z!1189) zl!343))))

(declare-fun b!5510562 () Bool)

(declare-fun e!3407931 () Bool)

(declare-fun tp!1516200 () Bool)

(assert (=> b!5510562 (= e!3407931 tp!1516200)))

(declare-fun b!5510563 () Bool)

(declare-fun e!3407937 () Bool)

(declare-fun tp!1516205 () Bool)

(assert (=> b!5510563 (= e!3407937 tp!1516205)))

(declare-fun b!5510564 () Bool)

(declare-fun e!3407928 () Bool)

(declare-fun tp!1516198 () Bool)

(declare-fun tp!1516199 () Bool)

(assert (=> b!5510564 (= e!3407928 (and tp!1516198 tp!1516199))))

(declare-fun e!3407930 () Bool)

(assert (=> b!5510565 (= e!3407926 e!3407930)))

(declare-fun res!2348166 () Bool)

(assert (=> b!5510565 (=> res!2348166 e!3407930)))

(declare-fun lt!2245002 () Bool)

(declare-fun lt!2245011 () Bool)

(assert (=> b!5510565 (= res!2348166 (or (not (= lt!2245011 lt!2245002)) ((_ is Nil!62661) s!2326)))))

(declare-fun Exists!2595 (Int) Bool)

(assert (=> b!5510565 (= (Exists!2595 lambda!295187) (Exists!2595 lambda!295188))))

(declare-datatypes ((Unit!155450 0))(
  ( (Unit!155451) )
))
(declare-fun lt!2244993 () Unit!155450)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1224 (Regex!15495 Regex!15495 List!62785) Unit!155450)

(assert (=> b!5510565 (= lt!2244993 (lemmaExistCutMatchRandMatchRSpecEquivalent!1224 (regOne!31502 r!7292) (regTwo!31502 r!7292) s!2326))))

(assert (=> b!5510565 (= lt!2245002 (Exists!2595 lambda!295187))))

(declare-datatypes ((tuple2!65184 0))(
  ( (tuple2!65185 (_1!35895 List!62785) (_2!35895 List!62785)) )
))
(declare-datatypes ((Option!15504 0))(
  ( (None!15503) (Some!15503 (v!51538 tuple2!65184)) )
))
(declare-fun isDefined!12207 (Option!15504) Bool)

(declare-fun findConcatSeparation!1918 (Regex!15495 Regex!15495 List!62785 List!62785 List!62785) Option!15504)

(assert (=> b!5510565 (= lt!2245002 (isDefined!12207 (findConcatSeparation!1918 (regOne!31502 r!7292) (regTwo!31502 r!7292) Nil!62661 s!2326 s!2326)))))

(declare-fun lt!2245005 () Unit!155450)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1682 (Regex!15495 Regex!15495 List!62785) Unit!155450)

(assert (=> b!5510565 (= lt!2245005 (lemmaFindConcatSeparationEquivalentToExists!1682 (regOne!31502 r!7292) (regTwo!31502 r!7292) s!2326))))

(declare-fun b!5510566 () Bool)

(declare-fun e!3407936 () Bool)

(assert (=> b!5510566 (= e!3407930 e!3407936)))

(declare-fun res!2348160 () Bool)

(assert (=> b!5510566 (=> res!2348160 e!3407936)))

(declare-fun lt!2244995 () (InoxSet Context!9758))

(declare-fun lt!2244994 () (InoxSet Context!9758))

(assert (=> b!5510566 (= res!2348160 (not (= lt!2244995 lt!2244994)))))

(declare-fun lt!2244992 () Context!9758)

(declare-fun derivationStepZipperDown!837 (Regex!15495 Context!9758 C!31260) (InoxSet Context!9758))

(assert (=> b!5510566 (= lt!2244994 (derivationStepZipperDown!837 r!7292 lt!2244992 (h!69109 s!2326)))))

(assert (=> b!5510566 (= lt!2244992 (Context!9759 Nil!62660))))

(declare-fun derivationStepZipperUp!763 (Context!9758 C!31260) (InoxSet Context!9758))

(assert (=> b!5510566 (= lt!2244995 (derivationStepZipperUp!763 (Context!9759 (Cons!62660 r!7292 Nil!62660)) (h!69109 s!2326)))))

(declare-fun lt!2245012 () (InoxSet Context!9758))

(declare-fun derivationStepZipper!1600 ((InoxSet Context!9758) C!31260) (InoxSet Context!9758))

(assert (=> b!5510566 (= lt!2245012 (derivationStepZipper!1600 z!1189 (h!69109 s!2326)))))

(declare-fun b!5510567 () Bool)

(declare-fun tp_is_empty!40243 () Bool)

(assert (=> b!5510567 (= e!3407928 tp_is_empty!40243)))

(declare-fun b!5510568 () Bool)

(declare-fun res!2348159 () Bool)

(assert (=> b!5510568 (=> res!2348159 e!3407926)))

(assert (=> b!5510568 (= res!2348159 (not ((_ is Cons!62660) (exprs!5379 (h!69110 zl!343)))))))

(declare-fun b!5510569 () Bool)

(declare-fun tp!1516203 () Bool)

(assert (=> b!5510569 (= e!3407928 tp!1516203)))

(declare-fun e!3407938 () Bool)

(declare-fun tp!1516202 () Bool)

(declare-fun b!5510570 () Bool)

(declare-fun inv!81984 (Context!9758) Bool)

(assert (=> b!5510570 (= e!3407938 (and (inv!81984 (h!69110 zl!343)) e!3407931 tp!1516202))))

(declare-fun setIsEmpty!36591 () Bool)

(declare-fun setRes!36591 () Bool)

(assert (=> setIsEmpty!36591 setRes!36591))

(declare-fun b!5510571 () Bool)

(declare-fun res!2348161 () Bool)

(assert (=> b!5510571 (=> res!2348161 e!3407930)))

(declare-fun isEmpty!34442 (List!62784) Bool)

(assert (=> b!5510571 (= res!2348161 (not (isEmpty!34442 (t!376029 (exprs!5379 (h!69110 zl!343))))))))

(declare-fun b!5510560 () Bool)

(declare-fun e!3407935 () Bool)

(declare-fun tp!1516204 () Bool)

(assert (=> b!5510560 (= e!3407935 (and tp_is_empty!40243 tp!1516204))))

(declare-fun res!2348168 () Bool)

(assert (=> start!575462 (=> (not res!2348168) (not e!3407929))))

(declare-fun validRegex!7231 (Regex!15495) Bool)

(assert (=> start!575462 (= res!2348168 (validRegex!7231 r!7292))))

(assert (=> start!575462 e!3407929))

(assert (=> start!575462 e!3407928))

(declare-fun condSetEmpty!36591 () Bool)

(assert (=> start!575462 (= condSetEmpty!36591 (= z!1189 ((as const (Array Context!9758 Bool)) false)))))

(assert (=> start!575462 setRes!36591))

(assert (=> start!575462 e!3407938))

(assert (=> start!575462 e!3407935))

(declare-fun b!5510572 () Bool)

(assert (=> b!5510572 (= e!3407929 (not e!3407926))))

(declare-fun res!2348154 () Bool)

(assert (=> b!5510572 (=> res!2348154 e!3407926)))

(assert (=> b!5510572 (= res!2348154 (not ((_ is Cons!62662) zl!343)))))

(declare-fun matchRSpec!2598 (Regex!15495 List!62785) Bool)

(assert (=> b!5510572 (= lt!2245011 (matchRSpec!2598 r!7292 s!2326))))

(declare-fun matchR!7680 (Regex!15495 List!62785) Bool)

(assert (=> b!5510572 (= lt!2245011 (matchR!7680 r!7292 s!2326))))

(declare-fun lt!2245010 () Unit!155450)

(declare-fun mainMatchTheorem!2598 (Regex!15495 List!62785) Unit!155450)

(assert (=> b!5510572 (= lt!2245010 (mainMatchTheorem!2598 r!7292 s!2326))))

(declare-fun b!5510573 () Bool)

(declare-fun res!2348164 () Bool)

(assert (=> b!5510573 (=> res!2348164 e!3407926)))

(declare-fun generalisedConcat!1110 (List!62784) Regex!15495)

(assert (=> b!5510573 (= res!2348164 (not (= r!7292 (generalisedConcat!1110 (exprs!5379 (h!69110 zl!343))))))))

(declare-fun b!5510574 () Bool)

(declare-fun e!3407934 () Bool)

(declare-fun e!3407932 () Bool)

(assert (=> b!5510574 (= e!3407934 e!3407932)))

(declare-fun res!2348155 () Bool)

(assert (=> b!5510574 (=> res!2348155 e!3407932)))

(declare-fun lt!2245009 () (InoxSet Context!9758))

(assert (=> b!5510574 (= res!2348155 (not (= lt!2245012 lt!2245009)))))

(declare-fun lt!2244998 () (InoxSet Context!9758))

(assert (=> b!5510574 (= lt!2245009 ((_ map or) lt!2244998 lt!2244996))))

(declare-fun e!3407927 () Bool)

(assert (=> b!5510575 (= e!3407936 e!3407927)))

(declare-fun res!2348153 () Bool)

(assert (=> b!5510575 (=> res!2348153 e!3407927)))

(assert (=> b!5510575 (= res!2348153 (not (= lt!2245012 lt!2244994)))))

(declare-fun lambda!295189 () Int)

(declare-fun flatMap!1108 ((InoxSet Context!9758) Int) (InoxSet Context!9758))

(assert (=> b!5510575 (= (flatMap!1108 z!1189 lambda!295189) (derivationStepZipperUp!763 (h!69110 zl!343) (h!69109 s!2326)))))

(declare-fun lt!2245001 () Unit!155450)

(declare-fun lemmaFlatMapOnSingletonSet!640 ((InoxSet Context!9758) Context!9758 Int) Unit!155450)

(assert (=> b!5510575 (= lt!2245001 (lemmaFlatMapOnSingletonSet!640 z!1189 (h!69110 zl!343) lambda!295189))))

(declare-fun b!5510576 () Bool)

(assert (=> b!5510576 (= e!3407927 e!3407934)))

(declare-fun res!2348162 () Bool)

(assert (=> b!5510576 (=> res!2348162 e!3407934)))

(declare-fun nullable!5529 (Regex!15495) Bool)

(assert (=> b!5510576 (= res!2348162 (not (nullable!5529 (regOne!31502 r!7292))))))

(assert (=> b!5510576 (= lt!2244996 (derivationStepZipperDown!837 (regTwo!31502 r!7292) lt!2244992 (h!69109 s!2326)))))

(declare-fun lt!2244989 () Context!9758)

(assert (=> b!5510576 (= lt!2244998 (derivationStepZipperDown!837 (regOne!31502 r!7292) lt!2244989 (h!69109 s!2326)))))

(declare-fun lt!2245004 () (InoxSet Context!9758))

(assert (=> b!5510576 (= (flatMap!1108 lt!2245004 lambda!295189) (derivationStepZipperUp!763 lt!2244989 (h!69109 s!2326)))))

(declare-fun lt!2244997 () Unit!155450)

(assert (=> b!5510576 (= lt!2244997 (lemmaFlatMapOnSingletonSet!640 lt!2245004 lt!2244989 lambda!295189))))

(declare-fun lt!2245007 () Context!9758)

(declare-fun lt!2245008 () (InoxSet Context!9758))

(assert (=> b!5510576 (= (flatMap!1108 lt!2245008 lambda!295189) (derivationStepZipperUp!763 lt!2245007 (h!69109 s!2326)))))

(declare-fun lt!2245000 () Unit!155450)

(assert (=> b!5510576 (= lt!2245000 (lemmaFlatMapOnSingletonSet!640 lt!2245008 lt!2245007 lambda!295189))))

(declare-fun lt!2244999 () (InoxSet Context!9758))

(assert (=> b!5510576 (= lt!2244999 (derivationStepZipperUp!763 lt!2244989 (h!69109 s!2326)))))

(declare-fun lt!2245013 () (InoxSet Context!9758))

(assert (=> b!5510576 (= lt!2245013 (derivationStepZipperUp!763 lt!2245007 (h!69109 s!2326)))))

(assert (=> b!5510576 (= lt!2245004 (store ((as const (Array Context!9758 Bool)) false) lt!2244989 true))))

(declare-fun lt!2245006 () List!62784)

(assert (=> b!5510576 (= lt!2244989 (Context!9759 lt!2245006))))

(assert (=> b!5510576 (= lt!2245008 (store ((as const (Array Context!9758 Bool)) false) lt!2245007 true))))

(assert (=> b!5510576 (= lt!2245007 (Context!9759 (Cons!62660 (regOne!31502 r!7292) lt!2245006)))))

(assert (=> b!5510576 (= lt!2245006 (Cons!62660 (regTwo!31502 r!7292) Nil!62660))))

(declare-fun b!5510577 () Bool)

(declare-fun tp!1516206 () Bool)

(declare-fun tp!1516207 () Bool)

(assert (=> b!5510577 (= e!3407928 (and tp!1516206 tp!1516207))))

(declare-fun setNonEmpty!36591 () Bool)

(declare-fun setElem!36591 () Context!9758)

(declare-fun tp!1516201 () Bool)

(assert (=> setNonEmpty!36591 (= setRes!36591 (and tp!1516201 (inv!81984 setElem!36591) e!3407937))))

(declare-fun setRest!36591 () (InoxSet Context!9758))

(assert (=> setNonEmpty!36591 (= z!1189 ((_ map or) (store ((as const (Array Context!9758 Bool)) false) setElem!36591 true) setRest!36591))))

(declare-fun b!5510578 () Bool)

(declare-fun res!2348157 () Bool)

(assert (=> b!5510578 (=> res!2348157 e!3407926)))

(declare-fun generalisedUnion!1358 (List!62784) Regex!15495)

(declare-fun unfocusZipperList!923 (List!62786) List!62784)

(assert (=> b!5510578 (= res!2348157 (not (= r!7292 (generalisedUnion!1358 (unfocusZipperList!923 zl!343)))))))

(declare-fun b!5510579 () Bool)

(declare-fun res!2348156 () Bool)

(assert (=> b!5510579 (=> (not res!2348156) (not e!3407929))))

(declare-fun unfocusZipper!1237 (List!62786) Regex!15495)

(assert (=> b!5510579 (= res!2348156 (= r!7292 (unfocusZipper!1237 zl!343)))))

(declare-fun b!5510580 () Bool)

(declare-fun lt!2244988 () Bool)

(assert (=> b!5510580 (= e!3407932 (= lt!2244988 (matchZipper!1653 lt!2245012 (t!376030 s!2326))))))

(declare-fun lt!2244991 () Bool)

(assert (=> b!5510580 (= lt!2244991 lt!2244988)))

(assert (=> b!5510580 (= lt!2244988 e!3407933)))

(declare-fun res!2348167 () Bool)

(assert (=> b!5510580 (=> res!2348167 e!3407933)))

(declare-fun lt!2244990 () Bool)

(assert (=> b!5510580 (= res!2348167 lt!2244990)))

(assert (=> b!5510580 (= lt!2244991 (matchZipper!1653 lt!2245009 (t!376030 s!2326)))))

(assert (=> b!5510580 (= lt!2244990 (matchZipper!1653 lt!2244998 (t!376030 s!2326)))))

(declare-fun lt!2245003 () Unit!155450)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!542 ((InoxSet Context!9758) (InoxSet Context!9758) List!62785) Unit!155450)

(assert (=> b!5510580 (= lt!2245003 (lemmaZipperConcatMatchesSameAsBothZippers!542 lt!2244998 lt!2244996 (t!376030 s!2326)))))

(assert (= (and start!575462 res!2348168) b!5510561))

(assert (= (and b!5510561 res!2348163) b!5510579))

(assert (= (and b!5510579 res!2348156) b!5510572))

(assert (= (and b!5510572 (not res!2348154)) b!5510558))

(assert (= (and b!5510558 (not res!2348165)) b!5510573))

(assert (= (and b!5510573 (not res!2348164)) b!5510568))

(assert (= (and b!5510568 (not res!2348159)) b!5510578))

(assert (= (and b!5510578 (not res!2348157)) b!5510559))

(assert (= (and b!5510559 (not res!2348158)) b!5510565))

(assert (= (and b!5510565 (not res!2348166)) b!5510571))

(assert (= (and b!5510571 (not res!2348161)) b!5510566))

(assert (= (and b!5510566 (not res!2348160)) b!5510575))

(assert (= (and b!5510575 (not res!2348153)) b!5510576))

(assert (= (and b!5510576 (not res!2348162)) b!5510574))

(assert (= (and b!5510574 (not res!2348155)) b!5510580))

(assert (= (and b!5510580 (not res!2348167)) b!5510557))

(assert (= (and start!575462 ((_ is ElementMatch!15495) r!7292)) b!5510567))

(assert (= (and start!575462 ((_ is Concat!24340) r!7292)) b!5510577))

(assert (= (and start!575462 ((_ is Star!15495) r!7292)) b!5510569))

(assert (= (and start!575462 ((_ is Union!15495) r!7292)) b!5510564))

(assert (= (and start!575462 condSetEmpty!36591) setIsEmpty!36591))

(assert (= (and start!575462 (not condSetEmpty!36591)) setNonEmpty!36591))

(assert (= setNonEmpty!36591 b!5510563))

(assert (= b!5510570 b!5510562))

(assert (= (and start!575462 ((_ is Cons!62662) zl!343)) b!5510570))

(assert (= (and start!575462 ((_ is Cons!62661) s!2326)) b!5510560))

(declare-fun m!6515682 () Bool)

(assert (=> b!5510580 m!6515682))

(declare-fun m!6515684 () Bool)

(assert (=> b!5510580 m!6515684))

(declare-fun m!6515686 () Bool)

(assert (=> b!5510580 m!6515686))

(declare-fun m!6515688 () Bool)

(assert (=> b!5510580 m!6515688))

(declare-fun m!6515690 () Bool)

(assert (=> b!5510572 m!6515690))

(declare-fun m!6515692 () Bool)

(assert (=> b!5510572 m!6515692))

(declare-fun m!6515694 () Bool)

(assert (=> b!5510572 m!6515694))

(declare-fun m!6515696 () Bool)

(assert (=> b!5510573 m!6515696))

(declare-fun m!6515698 () Bool)

(assert (=> b!5510566 m!6515698))

(declare-fun m!6515700 () Bool)

(assert (=> b!5510566 m!6515700))

(declare-fun m!6515702 () Bool)

(assert (=> b!5510566 m!6515702))

(declare-fun m!6515704 () Bool)

(assert (=> b!5510561 m!6515704))

(declare-fun m!6515706 () Bool)

(assert (=> b!5510565 m!6515706))

(declare-fun m!6515708 () Bool)

(assert (=> b!5510565 m!6515708))

(declare-fun m!6515710 () Bool)

(assert (=> b!5510565 m!6515710))

(declare-fun m!6515712 () Bool)

(assert (=> b!5510565 m!6515712))

(declare-fun m!6515714 () Bool)

(assert (=> b!5510565 m!6515714))

(assert (=> b!5510565 m!6515706))

(assert (=> b!5510565 m!6515708))

(declare-fun m!6515716 () Bool)

(assert (=> b!5510565 m!6515716))

(declare-fun m!6515718 () Bool)

(assert (=> b!5510578 m!6515718))

(assert (=> b!5510578 m!6515718))

(declare-fun m!6515720 () Bool)

(assert (=> b!5510578 m!6515720))

(declare-fun m!6515722 () Bool)

(assert (=> setNonEmpty!36591 m!6515722))

(declare-fun m!6515724 () Bool)

(assert (=> b!5510558 m!6515724))

(declare-fun m!6515726 () Bool)

(assert (=> b!5510570 m!6515726))

(declare-fun m!6515728 () Bool)

(assert (=> b!5510575 m!6515728))

(declare-fun m!6515730 () Bool)

(assert (=> b!5510575 m!6515730))

(declare-fun m!6515732 () Bool)

(assert (=> b!5510575 m!6515732))

(declare-fun m!6515734 () Bool)

(assert (=> b!5510576 m!6515734))

(declare-fun m!6515736 () Bool)

(assert (=> b!5510576 m!6515736))

(declare-fun m!6515738 () Bool)

(assert (=> b!5510576 m!6515738))

(declare-fun m!6515740 () Bool)

(assert (=> b!5510576 m!6515740))

(declare-fun m!6515742 () Bool)

(assert (=> b!5510576 m!6515742))

(declare-fun m!6515744 () Bool)

(assert (=> b!5510576 m!6515744))

(declare-fun m!6515746 () Bool)

(assert (=> b!5510576 m!6515746))

(declare-fun m!6515748 () Bool)

(assert (=> b!5510576 m!6515748))

(declare-fun m!6515750 () Bool)

(assert (=> b!5510576 m!6515750))

(declare-fun m!6515752 () Bool)

(assert (=> b!5510576 m!6515752))

(declare-fun m!6515754 () Bool)

(assert (=> b!5510576 m!6515754))

(declare-fun m!6515756 () Bool)

(assert (=> b!5510579 m!6515756))

(declare-fun m!6515758 () Bool)

(assert (=> start!575462 m!6515758))

(declare-fun m!6515760 () Bool)

(assert (=> b!5510571 m!6515760))

(declare-fun m!6515762 () Bool)

(assert (=> b!5510557 m!6515762))

(check-sat (not setNonEmpty!36591) (not b!5510579) (not b!5510563) (not b!5510580) (not b!5510566) (not b!5510562) (not b!5510558) (not b!5510572) tp_is_empty!40243 (not b!5510560) (not b!5510575) (not b!5510564) (not b!5510576) (not b!5510565) (not b!5510573) (not b!5510561) (not start!575462) (not b!5510578) (not b!5510569) (not b!5510571) (not b!5510577) (not b!5510557) (not b!5510570))
(check-sat)
