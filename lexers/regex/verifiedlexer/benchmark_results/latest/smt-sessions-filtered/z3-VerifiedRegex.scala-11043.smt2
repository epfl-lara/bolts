; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572394 () Bool)

(assert start!572394)

(declare-fun b!5469008 () Bool)

(assert (=> b!5469008 true))

(assert (=> b!5469008 true))

(declare-fun lambda!290901 () Int)

(declare-fun lambda!290900 () Int)

(assert (=> b!5469008 (not (= lambda!290901 lambda!290900))))

(assert (=> b!5469008 true))

(assert (=> b!5469008 true))

(declare-fun lambda!290902 () Int)

(assert (=> b!5469008 (not (= lambda!290902 lambda!290900))))

(assert (=> b!5469008 (not (= lambda!290902 lambda!290901))))

(assert (=> b!5469008 true))

(assert (=> b!5469008 true))

(declare-fun b!5469010 () Bool)

(assert (=> b!5469010 true))

(declare-fun b!5469006 () Bool)

(declare-fun res!2330546 () Bool)

(declare-fun e!3385690 () Bool)

(assert (=> b!5469006 (=> res!2330546 e!3385690)))

(declare-datatypes ((C!30936 0))(
  ( (C!30937 (val!25170 Int)) )
))
(declare-datatypes ((Regex!15333 0))(
  ( (ElementMatch!15333 (c!955399 C!30936)) (Concat!24178 (regOne!31178 Regex!15333) (regTwo!31178 Regex!15333)) (EmptyExpr!15333) (Star!15333 (reg!15662 Regex!15333)) (EmptyLang!15333) (Union!15333 (regOne!31179 Regex!15333) (regTwo!31179 Regex!15333)) )
))
(declare-datatypes ((List!62298 0))(
  ( (Nil!62174) (Cons!62174 (h!68622 Regex!15333) (t!375527 List!62298)) )
))
(declare-datatypes ((Context!9434 0))(
  ( (Context!9435 (exprs!5217 List!62298)) )
))
(declare-fun lt!2234589 () Context!9434)

(declare-fun r!7292 () Regex!15333)

(declare-datatypes ((List!62299 0))(
  ( (Nil!62175) (Cons!62175 (h!68623 Context!9434) (t!375528 List!62299)) )
))
(declare-fun unfocusZipper!1075 (List!62299) Regex!15333)

(assert (=> b!5469006 (= res!2330546 (not (= (unfocusZipper!1075 (Cons!62175 lt!2234589 Nil!62175)) r!7292)))))

(declare-fun b!5469007 () Bool)

(declare-fun e!3385688 () Bool)

(declare-fun e!3385681 () Bool)

(assert (=> b!5469007 (= e!3385688 (not e!3385681))))

(declare-fun res!2330567 () Bool)

(assert (=> b!5469007 (=> res!2330567 e!3385681)))

(declare-fun zl!343 () List!62299)

(get-info :version)

(assert (=> b!5469007 (= res!2330567 (not ((_ is Cons!62175) zl!343)))))

(declare-fun lt!2234595 () Bool)

(declare-datatypes ((List!62300 0))(
  ( (Nil!62176) (Cons!62176 (h!68624 C!30936) (t!375529 List!62300)) )
))
(declare-fun s!2326 () List!62300)

(declare-fun matchRSpec!2436 (Regex!15333 List!62300) Bool)

(assert (=> b!5469007 (= lt!2234595 (matchRSpec!2436 r!7292 s!2326))))

(declare-fun matchR!7518 (Regex!15333 List!62300) Bool)

(assert (=> b!5469007 (= lt!2234595 (matchR!7518 r!7292 s!2326))))

(declare-datatypes ((Unit!155116 0))(
  ( (Unit!155117) )
))
(declare-fun lt!2234593 () Unit!155116)

(declare-fun mainMatchTheorem!2436 (Regex!15333 List!62300) Unit!155116)

(assert (=> b!5469007 (= lt!2234593 (mainMatchTheorem!2436 r!7292 s!2326))))

(declare-fun e!3385685 () Bool)

(assert (=> b!5469008 (= e!3385681 e!3385685)))

(declare-fun res!2330559 () Bool)

(assert (=> b!5469008 (=> res!2330559 e!3385685)))

(declare-fun e!3385689 () Bool)

(assert (=> b!5469008 (= res!2330559 (not (= lt!2234595 e!3385689)))))

(declare-fun res!2330552 () Bool)

(assert (=> b!5469008 (=> res!2330552 e!3385689)))

(declare-fun isEmpty!34130 (List!62300) Bool)

(assert (=> b!5469008 (= res!2330552 (isEmpty!34130 s!2326))))

(declare-fun Exists!2512 (Int) Bool)

(assert (=> b!5469008 (= (Exists!2512 lambda!290900) (Exists!2512 lambda!290902))))

(declare-fun lt!2234602 () Unit!155116)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1162 (Regex!15333 Regex!15333 List!62300) Unit!155116)

(assert (=> b!5469008 (= lt!2234602 (lemmaExistCutMatchRandMatchRSpecEquivalent!1162 (reg!15662 r!7292) r!7292 s!2326))))

(assert (=> b!5469008 (= (Exists!2512 lambda!290900) (Exists!2512 lambda!290901))))

(declare-fun lt!2234607 () Unit!155116)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!486 (Regex!15333 List!62300) Unit!155116)

(assert (=> b!5469008 (= lt!2234607 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!486 (reg!15662 r!7292) s!2326))))

(declare-fun lt!2234604 () Bool)

(assert (=> b!5469008 (= lt!2234604 (Exists!2512 lambda!290900))))

(declare-datatypes ((tuple2!65060 0))(
  ( (tuple2!65061 (_1!35833 List!62300) (_2!35833 List!62300)) )
))
(declare-datatypes ((Option!15442 0))(
  ( (None!15441) (Some!15441 (v!51470 tuple2!65060)) )
))
(declare-fun isDefined!12145 (Option!15442) Bool)

(declare-fun findConcatSeparation!1856 (Regex!15333 Regex!15333 List!62300 List!62300 List!62300) Option!15442)

(assert (=> b!5469008 (= lt!2234604 (isDefined!12145 (findConcatSeparation!1856 (reg!15662 r!7292) r!7292 Nil!62176 s!2326 s!2326)))))

(declare-fun lt!2234592 () Unit!155116)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1620 (Regex!15333 Regex!15333 List!62300) Unit!155116)

(assert (=> b!5469008 (= lt!2234592 (lemmaFindConcatSeparationEquivalentToExists!1620 (reg!15662 r!7292) r!7292 s!2326))))

(declare-fun res!2330560 () Bool)

(declare-fun e!3385679 () Bool)

(assert (=> start!572394 (=> (not res!2330560) (not e!3385679))))

(declare-fun validRegex!7069 (Regex!15333) Bool)

(assert (=> start!572394 (= res!2330560 (validRegex!7069 r!7292))))

(assert (=> start!572394 e!3385679))

(declare-fun e!3385694 () Bool)

(assert (=> start!572394 e!3385694))

(declare-fun condSetEmpty!35887 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9434))

(assert (=> start!572394 (= condSetEmpty!35887 (= z!1189 ((as const (Array Context!9434 Bool)) false)))))

(declare-fun setRes!35887 () Bool)

(assert (=> start!572394 setRes!35887))

(declare-fun e!3385696 () Bool)

(assert (=> start!572394 e!3385696))

(declare-fun e!3385693 () Bool)

(assert (=> start!572394 e!3385693))

(declare-fun b!5469009 () Bool)

(declare-fun res!2330568 () Bool)

(declare-fun e!3385680 () Bool)

(assert (=> b!5469009 (=> res!2330568 e!3385680)))

(declare-fun lt!2234596 () (InoxSet Context!9434))

(declare-fun matchZipper!1551 ((InoxSet Context!9434) List!62300) Bool)

(declare-fun derivationStepZipper!1528 ((InoxSet Context!9434) C!30936) (InoxSet Context!9434))

(assert (=> b!5469009 (= res!2330568 (not (= (matchZipper!1551 lt!2234596 s!2326) (matchZipper!1551 (derivationStepZipper!1528 lt!2234596 (h!68624 s!2326)) (t!375529 s!2326)))))))

(declare-fun e!3385678 () Bool)

(declare-fun e!3385683 () Bool)

(assert (=> b!5469010 (= e!3385678 e!3385683)))

(declare-fun res!2330566 () Bool)

(assert (=> b!5469010 (=> res!2330566 e!3385683)))

(declare-fun lt!2234598 () (InoxSet Context!9434))

(declare-fun lt!2234601 () (InoxSet Context!9434))

(assert (=> b!5469010 (= res!2330566 (not (= lt!2234598 lt!2234601)))))

(declare-fun lambda!290903 () Int)

(declare-fun flatMap!1036 ((InoxSet Context!9434) Int) (InoxSet Context!9434))

(declare-fun derivationStepZipperUp!685 (Context!9434 C!30936) (InoxSet Context!9434))

(assert (=> b!5469010 (= (flatMap!1036 z!1189 lambda!290903) (derivationStepZipperUp!685 (h!68623 zl!343) (h!68624 s!2326)))))

(declare-fun lt!2234606 () Unit!155116)

(declare-fun lemmaFlatMapOnSingletonSet!568 ((InoxSet Context!9434) Context!9434 Int) Unit!155116)

(assert (=> b!5469010 (= lt!2234606 (lemmaFlatMapOnSingletonSet!568 z!1189 (h!68623 zl!343) lambda!290903))))

(declare-fun setElem!35887 () Context!9434)

(declare-fun e!3385682 () Bool)

(declare-fun tp!1504071 () Bool)

(declare-fun setNonEmpty!35887 () Bool)

(declare-fun inv!81579 (Context!9434) Bool)

(assert (=> setNonEmpty!35887 (= setRes!35887 (and tp!1504071 (inv!81579 setElem!35887) e!3385682))))

(declare-fun setRest!35887 () (InoxSet Context!9434))

(assert (=> setNonEmpty!35887 (= z!1189 ((_ map or) (store ((as const (Array Context!9434 Bool)) false) setElem!35887 true) setRest!35887))))

(declare-fun b!5469011 () Bool)

(assert (=> b!5469011 (= e!3385689 lt!2234604)))

(declare-fun b!5469012 () Bool)

(assert (=> b!5469012 (= e!3385679 e!3385688)))

(declare-fun res!2330561 () Bool)

(assert (=> b!5469012 (=> (not res!2330561) (not e!3385688))))

(declare-fun lt!2234588 () Regex!15333)

(assert (=> b!5469012 (= res!2330561 (= r!7292 lt!2234588))))

(assert (=> b!5469012 (= lt!2234588 (unfocusZipper!1075 zl!343))))

(declare-fun b!5469013 () Bool)

(declare-fun res!2330549 () Bool)

(assert (=> b!5469013 (=> res!2330549 e!3385680)))

(assert (=> b!5469013 (= res!2330549 (or (not (= lt!2234588 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5469014 () Bool)

(declare-fun tp!1504070 () Bool)

(assert (=> b!5469014 (= e!3385682 tp!1504070)))

(declare-fun b!5469015 () Bool)

(declare-fun tp!1504077 () Bool)

(declare-fun tp!1504074 () Bool)

(assert (=> b!5469015 (= e!3385694 (and tp!1504077 tp!1504074))))

(declare-fun b!5469016 () Bool)

(declare-fun e!3385684 () Bool)

(declare-fun e!3385687 () Bool)

(assert (=> b!5469016 (= e!3385684 e!3385687)))

(declare-fun res!2330554 () Bool)

(assert (=> b!5469016 (=> (not res!2330554) (not e!3385687))))

(assert (=> b!5469016 (= res!2330554 (= (Exists!2512 lambda!290900) (Exists!2512 lambda!290901)))))

(declare-fun b!5469017 () Bool)

(declare-fun res!2330551 () Bool)

(assert (=> b!5469017 (=> res!2330551 e!3385681)))

(declare-fun isEmpty!34131 (List!62299) Bool)

(assert (=> b!5469017 (= res!2330551 (not (isEmpty!34131 (t!375528 zl!343))))))

(declare-fun b!5469018 () Bool)

(declare-fun e!3385686 () Bool)

(assert (=> b!5469018 (= e!3385680 e!3385686)))

(declare-fun res!2330558 () Bool)

(assert (=> b!5469018 (=> res!2330558 e!3385686)))

(declare-fun lt!2234583 () Context!9434)

(declare-fun lt!2234608 () Regex!15333)

(assert (=> b!5469018 (= res!2330558 (not (= (unfocusZipper!1075 (Cons!62175 lt!2234583 Nil!62175)) lt!2234608)))))

(assert (=> b!5469018 (= lt!2234608 (Concat!24178 (reg!15662 r!7292) r!7292))))

(declare-fun b!5469019 () Bool)

(declare-fun tp!1504073 () Bool)

(declare-fun tp!1504069 () Bool)

(assert (=> b!5469019 (= e!3385694 (and tp!1504073 tp!1504069))))

(declare-fun b!5469020 () Bool)

(declare-fun tp!1504076 () Bool)

(assert (=> b!5469020 (= e!3385694 tp!1504076)))

(declare-fun b!5469021 () Bool)

(declare-fun res!2330544 () Bool)

(assert (=> b!5469021 (=> res!2330544 e!3385685)))

(assert (=> b!5469021 (= res!2330544 ((_ is Nil!62176) s!2326))))

(declare-fun b!5469022 () Bool)

(declare-fun e!3385695 () Bool)

(declare-fun tp!1504075 () Bool)

(assert (=> b!5469022 (= e!3385695 tp!1504075)))

(declare-fun b!5469023 () Bool)

(declare-fun res!2330555 () Bool)

(assert (=> b!5469023 (=> (not res!2330555) (not e!3385679))))

(declare-fun toList!9117 ((InoxSet Context!9434)) List!62299)

(assert (=> b!5469023 (= res!2330555 (= (toList!9117 z!1189) zl!343))))

(declare-fun b!5469024 () Bool)

(assert (=> b!5469024 (= e!3385686 e!3385690)))

(declare-fun res!2330565 () Bool)

(assert (=> b!5469024 (=> res!2330565 e!3385690)))

(declare-fun lt!2234599 () (InoxSet Context!9434))

(assert (=> b!5469024 (= res!2330565 (not (= lt!2234598 (derivationStepZipper!1528 lt!2234599 (h!68624 s!2326)))))))

(assert (=> b!5469024 (= (flatMap!1036 lt!2234599 lambda!290903) (derivationStepZipperUp!685 lt!2234589 (h!68624 s!2326)))))

(declare-fun lt!2234584 () Unit!155116)

(assert (=> b!5469024 (= lt!2234584 (lemmaFlatMapOnSingletonSet!568 lt!2234599 lt!2234589 lambda!290903))))

(declare-fun lt!2234605 () (InoxSet Context!9434))

(declare-fun lt!2234594 () Context!9434)

(assert (=> b!5469024 (= (flatMap!1036 lt!2234605 lambda!290903) (derivationStepZipperUp!685 lt!2234594 (h!68624 s!2326)))))

(declare-fun lt!2234586 () Unit!155116)

(assert (=> b!5469024 (= lt!2234586 (lemmaFlatMapOnSingletonSet!568 lt!2234605 lt!2234594 lambda!290903))))

(declare-fun lt!2234591 () (InoxSet Context!9434))

(assert (=> b!5469024 (= lt!2234591 (derivationStepZipperUp!685 lt!2234589 (h!68624 s!2326)))))

(declare-fun lt!2234603 () (InoxSet Context!9434))

(assert (=> b!5469024 (= lt!2234603 (derivationStepZipperUp!685 lt!2234594 (h!68624 s!2326)))))

(assert (=> b!5469024 (= lt!2234599 (store ((as const (Array Context!9434 Bool)) false) lt!2234589 true))))

(assert (=> b!5469024 (= lt!2234605 (store ((as const (Array Context!9434 Bool)) false) lt!2234594 true))))

(assert (=> b!5469024 (= lt!2234594 (Context!9435 (Cons!62174 (reg!15662 r!7292) Nil!62174)))))

(declare-fun b!5469025 () Bool)

(assert (=> b!5469025 (= e!3385685 e!3385678)))

(declare-fun res!2330564 () Bool)

(assert (=> b!5469025 (=> res!2330564 e!3385678)))

(declare-fun lt!2234600 () (InoxSet Context!9434))

(assert (=> b!5469025 (= res!2330564 (not (= lt!2234600 lt!2234601)))))

(declare-fun derivationStepZipperDown!759 (Regex!15333 Context!9434 C!30936) (InoxSet Context!9434))

(assert (=> b!5469025 (= lt!2234601 (derivationStepZipperDown!759 r!7292 (Context!9435 Nil!62174) (h!68624 s!2326)))))

(assert (=> b!5469025 (= lt!2234600 (derivationStepZipperUp!685 (Context!9435 (Cons!62174 r!7292 Nil!62174)) (h!68624 s!2326)))))

(assert (=> b!5469025 (= lt!2234598 (derivationStepZipper!1528 z!1189 (h!68624 s!2326)))))

(declare-fun b!5469026 () Bool)

(declare-fun res!2330550 () Bool)

(assert (=> b!5469026 (=> res!2330550 e!3385681)))

(declare-fun generalisedUnion!1262 (List!62298) Regex!15333)

(declare-fun unfocusZipperList!775 (List!62299) List!62298)

(assert (=> b!5469026 (= res!2330550 (not (= r!7292 (generalisedUnion!1262 (unfocusZipperList!775 zl!343)))))))

(declare-fun b!5469027 () Bool)

(declare-fun res!2330562 () Bool)

(assert (=> b!5469027 (=> res!2330562 e!3385681)))

(assert (=> b!5469027 (= res!2330562 (not ((_ is Cons!62174) (exprs!5217 (h!68623 zl!343)))))))

(declare-fun b!5469028 () Bool)

(declare-fun tp_is_empty!39919 () Bool)

(assert (=> b!5469028 (= e!3385694 tp_is_empty!39919)))

(declare-fun b!5469029 () Bool)

(declare-fun tp!1504072 () Bool)

(assert (=> b!5469029 (= e!3385693 (and tp_is_empty!39919 tp!1504072))))

(declare-fun b!5469030 () Bool)

(declare-fun e!3385691 () Bool)

(assert (=> b!5469030 (= e!3385690 e!3385691)))

(declare-fun res!2330547 () Bool)

(assert (=> b!5469030 (=> res!2330547 e!3385691)))

(declare-fun lt!2234590 () Bool)

(assert (=> b!5469030 (= res!2330547 (not lt!2234590))))

(declare-fun e!3385692 () Bool)

(assert (=> b!5469030 e!3385692))

(declare-fun res!2330553 () Bool)

(assert (=> b!5469030 (=> (not res!2330553) (not e!3385692))))

(assert (=> b!5469030 (= res!2330553 (= lt!2234590 (matchRSpec!2436 lt!2234608 s!2326)))))

(assert (=> b!5469030 (= lt!2234590 (matchR!7518 lt!2234608 s!2326))))

(declare-fun lt!2234609 () Unit!155116)

(assert (=> b!5469030 (= lt!2234609 (mainMatchTheorem!2436 lt!2234608 s!2326))))

(declare-fun b!5469031 () Bool)

(assert (=> b!5469031 (= e!3385687 (= lt!2234604 (Exists!2512 lambda!290900)))))

(declare-fun b!5469032 () Bool)

(declare-fun res!2330556 () Bool)

(assert (=> b!5469032 (=> res!2330556 e!3385681)))

(assert (=> b!5469032 (= res!2330556 (or ((_ is EmptyExpr!15333) r!7292) ((_ is EmptyLang!15333) r!7292) ((_ is ElementMatch!15333) r!7292) ((_ is Union!15333) r!7292) ((_ is Concat!24178) r!7292)))))

(declare-fun setIsEmpty!35887 () Bool)

(assert (=> setIsEmpty!35887 setRes!35887))

(declare-fun b!5469033 () Bool)

(declare-fun tp!1504068 () Bool)

(assert (=> b!5469033 (= e!3385696 (and (inv!81579 (h!68623 zl!343)) e!3385695 tp!1504068))))

(declare-fun b!5469034 () Bool)

(declare-fun res!2330548 () Bool)

(assert (=> b!5469034 (=> res!2330548 e!3385690)))

(assert (=> b!5469034 (= res!2330548 (not (= (unfocusZipper!1075 (Cons!62175 lt!2234594 Nil!62175)) (reg!15662 r!7292))))))

(declare-fun b!5469035 () Bool)

(declare-fun res!2330563 () Bool)

(assert (=> b!5469035 (=> res!2330563 e!3385681)))

(declare-fun generalisedConcat!1002 (List!62298) Regex!15333)

(assert (=> b!5469035 (= res!2330563 (not (= r!7292 (generalisedConcat!1002 (exprs!5217 (h!68623 zl!343))))))))

(declare-fun b!5469036 () Bool)

(assert (=> b!5469036 (= e!3385691 (validRegex!7069 (reg!15662 r!7292)))))

(declare-fun b!5469037 () Bool)

(assert (=> b!5469037 (= e!3385683 e!3385680)))

(declare-fun res!2330557 () Bool)

(assert (=> b!5469037 (=> res!2330557 e!3385680)))

(assert (=> b!5469037 (= res!2330557 (not (= lt!2234598 (derivationStepZipperDown!759 (reg!15662 r!7292) lt!2234589 (h!68624 s!2326)))))))

(declare-fun lt!2234597 () List!62298)

(assert (=> b!5469037 (= lt!2234589 (Context!9435 lt!2234597))))

(assert (=> b!5469037 (= (flatMap!1036 lt!2234596 lambda!290903) (derivationStepZipperUp!685 lt!2234583 (h!68624 s!2326)))))

(declare-fun lt!2234587 () Unit!155116)

(assert (=> b!5469037 (= lt!2234587 (lemmaFlatMapOnSingletonSet!568 lt!2234596 lt!2234583 lambda!290903))))

(declare-fun lt!2234585 () (InoxSet Context!9434))

(assert (=> b!5469037 (= lt!2234585 (derivationStepZipperUp!685 lt!2234583 (h!68624 s!2326)))))

(assert (=> b!5469037 (= lt!2234596 (store ((as const (Array Context!9434 Bool)) false) lt!2234583 true))))

(assert (=> b!5469037 (= lt!2234583 (Context!9435 (Cons!62174 (reg!15662 r!7292) lt!2234597)))))

(assert (=> b!5469037 (= lt!2234597 (Cons!62174 r!7292 Nil!62174))))

(declare-fun b!5469038 () Bool)

(assert (=> b!5469038 (= e!3385692 e!3385684)))

(declare-fun res!2330545 () Bool)

(assert (=> b!5469038 (=> res!2330545 e!3385684)))

(assert (=> b!5469038 (= res!2330545 (not lt!2234590))))

(assert (= (and start!572394 res!2330560) b!5469023))

(assert (= (and b!5469023 res!2330555) b!5469012))

(assert (= (and b!5469012 res!2330561) b!5469007))

(assert (= (and b!5469007 (not res!2330567)) b!5469017))

(assert (= (and b!5469017 (not res!2330551)) b!5469035))

(assert (= (and b!5469035 (not res!2330563)) b!5469027))

(assert (= (and b!5469027 (not res!2330562)) b!5469026))

(assert (= (and b!5469026 (not res!2330550)) b!5469032))

(assert (= (and b!5469032 (not res!2330556)) b!5469008))

(assert (= (and b!5469008 (not res!2330552)) b!5469011))

(assert (= (and b!5469008 (not res!2330559)) b!5469021))

(assert (= (and b!5469021 (not res!2330544)) b!5469025))

(assert (= (and b!5469025 (not res!2330564)) b!5469010))

(assert (= (and b!5469010 (not res!2330566)) b!5469037))

(assert (= (and b!5469037 (not res!2330557)) b!5469009))

(assert (= (and b!5469009 (not res!2330568)) b!5469013))

(assert (= (and b!5469013 (not res!2330549)) b!5469018))

(assert (= (and b!5469018 (not res!2330558)) b!5469024))

(assert (= (and b!5469024 (not res!2330565)) b!5469034))

(assert (= (and b!5469034 (not res!2330548)) b!5469006))

(assert (= (and b!5469006 (not res!2330546)) b!5469030))

(assert (= (and b!5469030 res!2330553) b!5469038))

(assert (= (and b!5469038 (not res!2330545)) b!5469016))

(assert (= (and b!5469016 res!2330554) b!5469031))

(assert (= (and b!5469030 (not res!2330547)) b!5469036))

(assert (= (and start!572394 ((_ is ElementMatch!15333) r!7292)) b!5469028))

(assert (= (and start!572394 ((_ is Concat!24178) r!7292)) b!5469015))

(assert (= (and start!572394 ((_ is Star!15333) r!7292)) b!5469020))

(assert (= (and start!572394 ((_ is Union!15333) r!7292)) b!5469019))

(assert (= (and start!572394 condSetEmpty!35887) setIsEmpty!35887))

(assert (= (and start!572394 (not condSetEmpty!35887)) setNonEmpty!35887))

(assert (= setNonEmpty!35887 b!5469014))

(assert (= b!5469033 b!5469022))

(assert (= (and start!572394 ((_ is Cons!62175) zl!343)) b!5469033))

(assert (= (and start!572394 ((_ is Cons!62176) s!2326)) b!5469029))

(declare-fun m!6487690 () Bool)

(assert (=> b!5469018 m!6487690))

(declare-fun m!6487692 () Bool)

(assert (=> b!5469030 m!6487692))

(declare-fun m!6487694 () Bool)

(assert (=> b!5469030 m!6487694))

(declare-fun m!6487696 () Bool)

(assert (=> b!5469030 m!6487696))

(declare-fun m!6487698 () Bool)

(assert (=> b!5469034 m!6487698))

(declare-fun m!6487700 () Bool)

(assert (=> b!5469016 m!6487700))

(declare-fun m!6487702 () Bool)

(assert (=> b!5469016 m!6487702))

(assert (=> b!5469008 m!6487702))

(declare-fun m!6487704 () Bool)

(assert (=> b!5469008 m!6487704))

(declare-fun m!6487706 () Bool)

(assert (=> b!5469008 m!6487706))

(assert (=> b!5469008 m!6487700))

(declare-fun m!6487708 () Bool)

(assert (=> b!5469008 m!6487708))

(declare-fun m!6487710 () Bool)

(assert (=> b!5469008 m!6487710))

(assert (=> b!5469008 m!6487700))

(declare-fun m!6487712 () Bool)

(assert (=> b!5469008 m!6487712))

(declare-fun m!6487714 () Bool)

(assert (=> b!5469008 m!6487714))

(assert (=> b!5469008 m!6487700))

(assert (=> b!5469008 m!6487710))

(declare-fun m!6487716 () Bool)

(assert (=> b!5469008 m!6487716))

(declare-fun m!6487718 () Bool)

(assert (=> b!5469007 m!6487718))

(declare-fun m!6487720 () Bool)

(assert (=> b!5469007 m!6487720))

(declare-fun m!6487722 () Bool)

(assert (=> b!5469007 m!6487722))

(declare-fun m!6487724 () Bool)

(assert (=> b!5469025 m!6487724))

(declare-fun m!6487726 () Bool)

(assert (=> b!5469025 m!6487726))

(declare-fun m!6487728 () Bool)

(assert (=> b!5469025 m!6487728))

(declare-fun m!6487730 () Bool)

(assert (=> b!5469023 m!6487730))

(declare-fun m!6487732 () Bool)

(assert (=> start!572394 m!6487732))

(declare-fun m!6487734 () Bool)

(assert (=> b!5469033 m!6487734))

(declare-fun m!6487736 () Bool)

(assert (=> b!5469012 m!6487736))

(declare-fun m!6487738 () Bool)

(assert (=> b!5469010 m!6487738))

(declare-fun m!6487740 () Bool)

(assert (=> b!5469010 m!6487740))

(declare-fun m!6487742 () Bool)

(assert (=> b!5469010 m!6487742))

(declare-fun m!6487744 () Bool)

(assert (=> b!5469035 m!6487744))

(declare-fun m!6487746 () Bool)

(assert (=> b!5469017 m!6487746))

(declare-fun m!6487748 () Bool)

(assert (=> b!5469024 m!6487748))

(declare-fun m!6487750 () Bool)

(assert (=> b!5469024 m!6487750))

(declare-fun m!6487752 () Bool)

(assert (=> b!5469024 m!6487752))

(declare-fun m!6487754 () Bool)

(assert (=> b!5469024 m!6487754))

(declare-fun m!6487756 () Bool)

(assert (=> b!5469024 m!6487756))

(declare-fun m!6487758 () Bool)

(assert (=> b!5469024 m!6487758))

(declare-fun m!6487760 () Bool)

(assert (=> b!5469024 m!6487760))

(declare-fun m!6487762 () Bool)

(assert (=> b!5469024 m!6487762))

(declare-fun m!6487764 () Bool)

(assert (=> b!5469024 m!6487764))

(declare-fun m!6487766 () Bool)

(assert (=> b!5469006 m!6487766))

(declare-fun m!6487768 () Bool)

(assert (=> b!5469037 m!6487768))

(declare-fun m!6487770 () Bool)

(assert (=> b!5469037 m!6487770))

(declare-fun m!6487772 () Bool)

(assert (=> b!5469037 m!6487772))

(declare-fun m!6487774 () Bool)

(assert (=> b!5469037 m!6487774))

(declare-fun m!6487776 () Bool)

(assert (=> b!5469037 m!6487776))

(declare-fun m!6487778 () Bool)

(assert (=> setNonEmpty!35887 m!6487778))

(declare-fun m!6487780 () Bool)

(assert (=> b!5469009 m!6487780))

(declare-fun m!6487782 () Bool)

(assert (=> b!5469009 m!6487782))

(assert (=> b!5469009 m!6487782))

(declare-fun m!6487784 () Bool)

(assert (=> b!5469009 m!6487784))

(declare-fun m!6487786 () Bool)

(assert (=> b!5469036 m!6487786))

(declare-fun m!6487788 () Bool)

(assert (=> b!5469026 m!6487788))

(assert (=> b!5469026 m!6487788))

(declare-fun m!6487790 () Bool)

(assert (=> b!5469026 m!6487790))

(assert (=> b!5469031 m!6487700))

(check-sat (not b!5469018) (not b!5469016) (not b!5469031) (not b!5469017) (not b!5469008) (not b!5469035) (not b!5469034) (not b!5469020) (not b!5469014) (not b!5469037) (not b!5469010) (not b!5469012) (not setNonEmpty!35887) tp_is_empty!39919 (not b!5469006) (not b!5469019) (not b!5469023) (not b!5469033) (not b!5469025) (not b!5469029) (not b!5469022) (not start!572394) (not b!5469036) (not b!5469030) (not b!5469007) (not b!5469026) (not b!5469024) (not b!5469015) (not b!5469009))
(check-sat)
(get-model)

(declare-fun d!1738870 () Bool)

(declare-fun lt!2234612 () Regex!15333)

(assert (=> d!1738870 (validRegex!7069 lt!2234612)))

(assert (=> d!1738870 (= lt!2234612 (generalisedUnion!1262 (unfocusZipperList!775 zl!343)))))

(assert (=> d!1738870 (= (unfocusZipper!1075 zl!343) lt!2234612)))

(declare-fun bs!1264735 () Bool)

(assert (= bs!1264735 d!1738870))

(declare-fun m!6487792 () Bool)

(assert (=> bs!1264735 m!6487792))

(assert (=> bs!1264735 m!6487788))

(assert (=> bs!1264735 m!6487788))

(assert (=> bs!1264735 m!6487790))

(assert (=> b!5469012 d!1738870))

(declare-fun b!5469063 () Bool)

(declare-fun e!3385717 () Bool)

(declare-fun e!3385711 () Bool)

(assert (=> b!5469063 (= e!3385717 e!3385711)))

(declare-fun c!955405 () Bool)

(assert (=> b!5469063 (= c!955405 ((_ is Union!15333) r!7292))))

(declare-fun b!5469064 () Bool)

(declare-fun e!3385712 () Bool)

(declare-fun call!403482 () Bool)

(assert (=> b!5469064 (= e!3385712 call!403482)))

(declare-fun b!5469065 () Bool)

(declare-fun e!3385716 () Bool)

(assert (=> b!5469065 (= e!3385717 e!3385716)))

(declare-fun res!2330579 () Bool)

(declare-fun nullable!5474 (Regex!15333) Bool)

(assert (=> b!5469065 (= res!2330579 (not (nullable!5474 (reg!15662 r!7292))))))

(assert (=> b!5469065 (=> (not res!2330579) (not e!3385716))))

(declare-fun d!1738872 () Bool)

(declare-fun res!2330583 () Bool)

(declare-fun e!3385715 () Bool)

(assert (=> d!1738872 (=> res!2330583 e!3385715)))

(assert (=> d!1738872 (= res!2330583 ((_ is ElementMatch!15333) r!7292))))

(assert (=> d!1738872 (= (validRegex!7069 r!7292) e!3385715)))

(declare-fun bm!403477 () Bool)

(assert (=> bm!403477 (= call!403482 (validRegex!7069 (ite c!955405 (regTwo!31179 r!7292) (regTwo!31178 r!7292))))))

(declare-fun b!5469066 () Bool)

(assert (=> b!5469066 (= e!3385715 e!3385717)))

(declare-fun c!955404 () Bool)

(assert (=> b!5469066 (= c!955404 ((_ is Star!15333) r!7292))))

(declare-fun b!5469067 () Bool)

(declare-fun e!3385714 () Bool)

(assert (=> b!5469067 (= e!3385714 call!403482)))

(declare-fun b!5469068 () Bool)

(declare-fun res!2330582 () Bool)

(assert (=> b!5469068 (=> (not res!2330582) (not e!3385714))))

(declare-fun call!403483 () Bool)

(assert (=> b!5469068 (= res!2330582 call!403483)))

(assert (=> b!5469068 (= e!3385711 e!3385714)))

(declare-fun bm!403478 () Bool)

(declare-fun call!403484 () Bool)

(assert (=> bm!403478 (= call!403483 call!403484)))

(declare-fun bm!403479 () Bool)

(assert (=> bm!403479 (= call!403484 (validRegex!7069 (ite c!955404 (reg!15662 r!7292) (ite c!955405 (regOne!31179 r!7292) (regOne!31178 r!7292)))))))

(declare-fun b!5469069 () Bool)

(declare-fun e!3385713 () Bool)

(assert (=> b!5469069 (= e!3385713 e!3385712)))

(declare-fun res!2330580 () Bool)

(assert (=> b!5469069 (=> (not res!2330580) (not e!3385712))))

(assert (=> b!5469069 (= res!2330580 call!403483)))

(declare-fun b!5469070 () Bool)

(declare-fun res!2330581 () Bool)

(assert (=> b!5469070 (=> res!2330581 e!3385713)))

(assert (=> b!5469070 (= res!2330581 (not ((_ is Concat!24178) r!7292)))))

(assert (=> b!5469070 (= e!3385711 e!3385713)))

(declare-fun b!5469071 () Bool)

(assert (=> b!5469071 (= e!3385716 call!403484)))

(assert (= (and d!1738872 (not res!2330583)) b!5469066))

(assert (= (and b!5469066 c!955404) b!5469065))

(assert (= (and b!5469066 (not c!955404)) b!5469063))

(assert (= (and b!5469065 res!2330579) b!5469071))

(assert (= (and b!5469063 c!955405) b!5469068))

(assert (= (and b!5469063 (not c!955405)) b!5469070))

(assert (= (and b!5469068 res!2330582) b!5469067))

(assert (= (and b!5469070 (not res!2330581)) b!5469069))

(assert (= (and b!5469069 res!2330580) b!5469064))

(assert (= (or b!5469067 b!5469064) bm!403477))

(assert (= (or b!5469068 b!5469069) bm!403478))

(assert (= (or b!5469071 bm!403478) bm!403479))

(declare-fun m!6487794 () Bool)

(assert (=> b!5469065 m!6487794))

(declare-fun m!6487796 () Bool)

(assert (=> bm!403477 m!6487796))

(declare-fun m!6487798 () Bool)

(assert (=> bm!403479 m!6487798))

(assert (=> start!572394 d!1738872))

(declare-fun d!1738876 () Bool)

(declare-fun e!3385720 () Bool)

(assert (=> d!1738876 e!3385720))

(declare-fun res!2330586 () Bool)

(assert (=> d!1738876 (=> (not res!2330586) (not e!3385720))))

(declare-fun lt!2234617 () List!62299)

(declare-fun noDuplicate!1447 (List!62299) Bool)

(assert (=> d!1738876 (= res!2330586 (noDuplicate!1447 lt!2234617))))

(declare-fun choose!41581 ((InoxSet Context!9434)) List!62299)

(assert (=> d!1738876 (= lt!2234617 (choose!41581 z!1189))))

(assert (=> d!1738876 (= (toList!9117 z!1189) lt!2234617)))

(declare-fun b!5469076 () Bool)

(declare-fun content!11188 (List!62299) (InoxSet Context!9434))

(assert (=> b!5469076 (= e!3385720 (= (content!11188 lt!2234617) z!1189))))

(assert (= (and d!1738876 res!2330586) b!5469076))

(declare-fun m!6487800 () Bool)

(assert (=> d!1738876 m!6487800))

(declare-fun m!6487802 () Bool)

(assert (=> d!1738876 m!6487802))

(declare-fun m!6487804 () Bool)

(assert (=> b!5469076 m!6487804))

(assert (=> b!5469023 d!1738876))

(declare-fun d!1738878 () Bool)

(declare-fun lambda!290908 () Int)

(declare-fun forall!14604 (List!62298 Int) Bool)

(assert (=> d!1738878 (= (inv!81579 setElem!35887) (forall!14604 (exprs!5217 setElem!35887) lambda!290908))))

(declare-fun bs!1264736 () Bool)

(assert (= bs!1264736 d!1738878))

(declare-fun m!6487806 () Bool)

(assert (=> bs!1264736 m!6487806))

(assert (=> setNonEmpty!35887 d!1738878))

(declare-fun bs!1264739 () Bool)

(declare-fun d!1738880 () Bool)

(assert (= bs!1264739 (and d!1738880 d!1738878)))

(declare-fun lambda!290915 () Int)

(assert (=> bs!1264739 (= lambda!290915 lambda!290908)))

(declare-fun b!5469141 () Bool)

(declare-fun e!3385761 () Bool)

(declare-fun isEmpty!34133 (List!62298) Bool)

(assert (=> b!5469141 (= e!3385761 (isEmpty!34133 (t!375527 (exprs!5217 (h!68623 zl!343)))))))

(declare-fun b!5469142 () Bool)

(declare-fun e!3385762 () Bool)

(declare-fun e!3385763 () Bool)

(assert (=> b!5469142 (= e!3385762 e!3385763)))

(declare-fun c!955436 () Bool)

(declare-fun tail!10809 (List!62298) List!62298)

(assert (=> b!5469142 (= c!955436 (isEmpty!34133 (tail!10809 (exprs!5217 (h!68623 zl!343)))))))

(declare-fun b!5469143 () Bool)

(declare-fun e!3385760 () Regex!15333)

(declare-fun e!3385765 () Regex!15333)

(assert (=> b!5469143 (= e!3385760 e!3385765)))

(declare-fun c!955435 () Bool)

(assert (=> b!5469143 (= c!955435 ((_ is Cons!62174) (exprs!5217 (h!68623 zl!343))))))

(declare-fun b!5469144 () Bool)

(declare-fun lt!2234624 () Regex!15333)

(declare-fun isConcat!552 (Regex!15333) Bool)

(assert (=> b!5469144 (= e!3385763 (isConcat!552 lt!2234624))))

(declare-fun b!5469145 () Bool)

(assert (=> b!5469145 (= e!3385765 (Concat!24178 (h!68622 (exprs!5217 (h!68623 zl!343))) (generalisedConcat!1002 (t!375527 (exprs!5217 (h!68623 zl!343))))))))

(declare-fun b!5469146 () Bool)

(declare-fun isEmptyExpr!1029 (Regex!15333) Bool)

(assert (=> b!5469146 (= e!3385762 (isEmptyExpr!1029 lt!2234624))))

(declare-fun b!5469147 () Bool)

(declare-fun e!3385764 () Bool)

(assert (=> b!5469147 (= e!3385764 e!3385762)))

(declare-fun c!955433 () Bool)

(assert (=> b!5469147 (= c!955433 (isEmpty!34133 (exprs!5217 (h!68623 zl!343))))))

(assert (=> d!1738880 e!3385764))

(declare-fun res!2330600 () Bool)

(assert (=> d!1738880 (=> (not res!2330600) (not e!3385764))))

(assert (=> d!1738880 (= res!2330600 (validRegex!7069 lt!2234624))))

(assert (=> d!1738880 (= lt!2234624 e!3385760)))

(declare-fun c!955434 () Bool)

(assert (=> d!1738880 (= c!955434 e!3385761)))

(declare-fun res!2330599 () Bool)

(assert (=> d!1738880 (=> (not res!2330599) (not e!3385761))))

(assert (=> d!1738880 (= res!2330599 ((_ is Cons!62174) (exprs!5217 (h!68623 zl!343))))))

(assert (=> d!1738880 (forall!14604 (exprs!5217 (h!68623 zl!343)) lambda!290915)))

(assert (=> d!1738880 (= (generalisedConcat!1002 (exprs!5217 (h!68623 zl!343))) lt!2234624)))

(declare-fun b!5469148 () Bool)

(assert (=> b!5469148 (= e!3385760 (h!68622 (exprs!5217 (h!68623 zl!343))))))

(declare-fun b!5469149 () Bool)

(declare-fun head!11712 (List!62298) Regex!15333)

(assert (=> b!5469149 (= e!3385763 (= lt!2234624 (head!11712 (exprs!5217 (h!68623 zl!343)))))))

(declare-fun b!5469150 () Bool)

(assert (=> b!5469150 (= e!3385765 EmptyExpr!15333)))

(assert (= (and d!1738880 res!2330599) b!5469141))

(assert (= (and d!1738880 c!955434) b!5469148))

(assert (= (and d!1738880 (not c!955434)) b!5469143))

(assert (= (and b!5469143 c!955435) b!5469145))

(assert (= (and b!5469143 (not c!955435)) b!5469150))

(assert (= (and d!1738880 res!2330600) b!5469147))

(assert (= (and b!5469147 c!955433) b!5469146))

(assert (= (and b!5469147 (not c!955433)) b!5469142))

(assert (= (and b!5469142 c!955436) b!5469149))

(assert (= (and b!5469142 (not c!955436)) b!5469144))

(declare-fun m!6487840 () Bool)

(assert (=> b!5469145 m!6487840))

(declare-fun m!6487842 () Bool)

(assert (=> b!5469147 m!6487842))

(declare-fun m!6487844 () Bool)

(assert (=> b!5469146 m!6487844))

(declare-fun m!6487846 () Bool)

(assert (=> d!1738880 m!6487846))

(declare-fun m!6487848 () Bool)

(assert (=> d!1738880 m!6487848))

(declare-fun m!6487850 () Bool)

(assert (=> b!5469141 m!6487850))

(declare-fun m!6487852 () Bool)

(assert (=> b!5469144 m!6487852))

(declare-fun m!6487854 () Bool)

(assert (=> b!5469142 m!6487854))

(assert (=> b!5469142 m!6487854))

(declare-fun m!6487856 () Bool)

(assert (=> b!5469142 m!6487856))

(declare-fun m!6487858 () Bool)

(assert (=> b!5469149 m!6487858))

(assert (=> b!5469035 d!1738880))

(declare-fun c!955460 () Bool)

(declare-fun c!955463 () Bool)

(declare-fun c!955459 () Bool)

(declare-fun bm!403507 () Bool)

(declare-fun call!403513 () (InoxSet Context!9434))

(declare-fun call!403516 () List!62298)

(assert (=> bm!403507 (= call!403513 (derivationStepZipperDown!759 (ite c!955463 (regTwo!31179 r!7292) (ite c!955459 (regTwo!31178 r!7292) (ite c!955460 (regOne!31178 r!7292) (reg!15662 r!7292)))) (ite (or c!955463 c!955459) (Context!9435 Nil!62174) (Context!9435 call!403516)) (h!68624 s!2326)))))

(declare-fun bm!403508 () Bool)

(declare-fun call!403514 () (InoxSet Context!9434))

(declare-fun call!403517 () (InoxSet Context!9434))

(assert (=> bm!403508 (= call!403514 call!403517)))

(declare-fun b!5469214 () Bool)

(declare-fun e!3385812 () (InoxSet Context!9434))

(declare-fun call!403512 () (InoxSet Context!9434))

(assert (=> b!5469214 (= e!3385812 ((_ map or) call!403512 call!403517))))

(declare-fun bm!403509 () Bool)

(declare-fun call!403515 () List!62298)

(assert (=> bm!403509 (= call!403516 call!403515)))

(declare-fun b!5469215 () Bool)

(declare-fun e!3385809 () (InoxSet Context!9434))

(assert (=> b!5469215 (= e!3385809 ((as const (Array Context!9434 Bool)) false))))

(declare-fun b!5469216 () Bool)

(declare-fun e!3385813 () (InoxSet Context!9434))

(assert (=> b!5469216 (= e!3385813 call!403514)))

(declare-fun d!1738890 () Bool)

(declare-fun c!955462 () Bool)

(assert (=> d!1738890 (= c!955462 (and ((_ is ElementMatch!15333) r!7292) (= (c!955399 r!7292) (h!68624 s!2326))))))

(declare-fun e!3385811 () (InoxSet Context!9434))

(assert (=> d!1738890 (= (derivationStepZipperDown!759 r!7292 (Context!9435 Nil!62174) (h!68624 s!2326)) e!3385811)))

(declare-fun b!5469217 () Bool)

(declare-fun e!3385814 () (InoxSet Context!9434))

(assert (=> b!5469217 (= e!3385811 e!3385814)))

(assert (=> b!5469217 (= c!955463 ((_ is Union!15333) r!7292))))

(declare-fun bm!403510 () Bool)

(assert (=> bm!403510 (= call!403512 (derivationStepZipperDown!759 (ite c!955463 (regOne!31179 r!7292) (regOne!31178 r!7292)) (ite c!955463 (Context!9435 Nil!62174) (Context!9435 call!403515)) (h!68624 s!2326)))))

(declare-fun bm!403511 () Bool)

(assert (=> bm!403511 (= call!403517 call!403513)))

(declare-fun b!5469218 () Bool)

(assert (=> b!5469218 (= e!3385809 call!403514)))

(declare-fun b!5469219 () Bool)

(declare-fun e!3385810 () Bool)

(assert (=> b!5469219 (= e!3385810 (nullable!5474 (regOne!31178 r!7292)))))

(declare-fun b!5469220 () Bool)

(declare-fun c!955461 () Bool)

(assert (=> b!5469220 (= c!955461 ((_ is Star!15333) r!7292))))

(assert (=> b!5469220 (= e!3385813 e!3385809)))

(declare-fun b!5469221 () Bool)

(assert (=> b!5469221 (= e!3385814 ((_ map or) call!403512 call!403513))))

(declare-fun b!5469222 () Bool)

(assert (=> b!5469222 (= e!3385811 (store ((as const (Array Context!9434 Bool)) false) (Context!9435 Nil!62174) true))))

(declare-fun b!5469223 () Bool)

(assert (=> b!5469223 (= c!955459 e!3385810)))

(declare-fun res!2330624 () Bool)

(assert (=> b!5469223 (=> (not res!2330624) (not e!3385810))))

(assert (=> b!5469223 (= res!2330624 ((_ is Concat!24178) r!7292))))

(assert (=> b!5469223 (= e!3385814 e!3385812)))

(declare-fun b!5469224 () Bool)

(assert (=> b!5469224 (= e!3385812 e!3385813)))

(assert (=> b!5469224 (= c!955460 ((_ is Concat!24178) r!7292))))

(declare-fun bm!403512 () Bool)

(declare-fun $colon$colon!1543 (List!62298 Regex!15333) List!62298)

(assert (=> bm!403512 (= call!403515 ($colon$colon!1543 (exprs!5217 (Context!9435 Nil!62174)) (ite (or c!955459 c!955460) (regTwo!31178 r!7292) r!7292)))))

(assert (= (and d!1738890 c!955462) b!5469222))

(assert (= (and d!1738890 (not c!955462)) b!5469217))

(assert (= (and b!5469217 c!955463) b!5469221))

(assert (= (and b!5469217 (not c!955463)) b!5469223))

(assert (= (and b!5469223 res!2330624) b!5469219))

(assert (= (and b!5469223 c!955459) b!5469214))

(assert (= (and b!5469223 (not c!955459)) b!5469224))

(assert (= (and b!5469224 c!955460) b!5469216))

(assert (= (and b!5469224 (not c!955460)) b!5469220))

(assert (= (and b!5469220 c!955461) b!5469218))

(assert (= (and b!5469220 (not c!955461)) b!5469215))

(assert (= (or b!5469216 b!5469218) bm!403509))

(assert (= (or b!5469216 b!5469218) bm!403508))

(assert (= (or b!5469214 bm!403509) bm!403512))

(assert (= (or b!5469214 bm!403508) bm!403511))

(assert (= (or b!5469221 bm!403511) bm!403507))

(assert (= (or b!5469221 b!5469214) bm!403510))

(declare-fun m!6487904 () Bool)

(assert (=> b!5469222 m!6487904))

(declare-fun m!6487906 () Bool)

(assert (=> bm!403512 m!6487906))

(declare-fun m!6487908 () Bool)

(assert (=> b!5469219 m!6487908))

(declare-fun m!6487910 () Bool)

(assert (=> bm!403510 m!6487910))

(declare-fun m!6487916 () Bool)

(assert (=> bm!403507 m!6487916))

(assert (=> b!5469025 d!1738890))

(declare-fun d!1738914 () Bool)

(declare-fun c!955477 () Bool)

(declare-fun e!3385833 () Bool)

(assert (=> d!1738914 (= c!955477 e!3385833)))

(declare-fun res!2330631 () Bool)

(assert (=> d!1738914 (=> (not res!2330631) (not e!3385833))))

(assert (=> d!1738914 (= res!2330631 ((_ is Cons!62174) (exprs!5217 (Context!9435 (Cons!62174 r!7292 Nil!62174)))))))

(declare-fun e!3385834 () (InoxSet Context!9434))

(assert (=> d!1738914 (= (derivationStepZipperUp!685 (Context!9435 (Cons!62174 r!7292 Nil!62174)) (h!68624 s!2326)) e!3385834)))

(declare-fun call!403522 () (InoxSet Context!9434))

(declare-fun b!5469257 () Bool)

(assert (=> b!5469257 (= e!3385834 ((_ map or) call!403522 (derivationStepZipperUp!685 (Context!9435 (t!375527 (exprs!5217 (Context!9435 (Cons!62174 r!7292 Nil!62174))))) (h!68624 s!2326))))))

(declare-fun b!5469258 () Bool)

(declare-fun e!3385835 () (InoxSet Context!9434))

(assert (=> b!5469258 (= e!3385834 e!3385835)))

(declare-fun c!955476 () Bool)

(assert (=> b!5469258 (= c!955476 ((_ is Cons!62174) (exprs!5217 (Context!9435 (Cons!62174 r!7292 Nil!62174)))))))

(declare-fun b!5469259 () Bool)

(assert (=> b!5469259 (= e!3385833 (nullable!5474 (h!68622 (exprs!5217 (Context!9435 (Cons!62174 r!7292 Nil!62174))))))))

(declare-fun bm!403517 () Bool)

(assert (=> bm!403517 (= call!403522 (derivationStepZipperDown!759 (h!68622 (exprs!5217 (Context!9435 (Cons!62174 r!7292 Nil!62174)))) (Context!9435 (t!375527 (exprs!5217 (Context!9435 (Cons!62174 r!7292 Nil!62174))))) (h!68624 s!2326)))))

(declare-fun b!5469260 () Bool)

(assert (=> b!5469260 (= e!3385835 call!403522)))

(declare-fun b!5469261 () Bool)

(assert (=> b!5469261 (= e!3385835 ((as const (Array Context!9434 Bool)) false))))

(assert (= (and d!1738914 res!2330631) b!5469259))

(assert (= (and d!1738914 c!955477) b!5469257))

(assert (= (and d!1738914 (not c!955477)) b!5469258))

(assert (= (and b!5469258 c!955476) b!5469260))

(assert (= (and b!5469258 (not c!955476)) b!5469261))

(assert (= (or b!5469257 b!5469260) bm!403517))

(declare-fun m!6487930 () Bool)

(assert (=> b!5469257 m!6487930))

(declare-fun m!6487932 () Bool)

(assert (=> b!5469259 m!6487932))

(declare-fun m!6487934 () Bool)

(assert (=> bm!403517 m!6487934))

(assert (=> b!5469025 d!1738914))

(declare-fun bs!1264760 () Bool)

(declare-fun d!1738922 () Bool)

(assert (= bs!1264760 (and d!1738922 b!5469010)))

(declare-fun lambda!290928 () Int)

(assert (=> bs!1264760 (= lambda!290928 lambda!290903)))

(assert (=> d!1738922 true))

(assert (=> d!1738922 (= (derivationStepZipper!1528 z!1189 (h!68624 s!2326)) (flatMap!1036 z!1189 lambda!290928))))

(declare-fun bs!1264761 () Bool)

(assert (= bs!1264761 d!1738922))

(declare-fun m!6487936 () Bool)

(assert (=> bs!1264761 m!6487936))

(assert (=> b!5469025 d!1738922))

(declare-fun d!1738924 () Bool)

(declare-fun dynLambda!24421 (Int Context!9434) (InoxSet Context!9434))

(assert (=> d!1738924 (= (flatMap!1036 lt!2234599 lambda!290903) (dynLambda!24421 lambda!290903 lt!2234589))))

(declare-fun lt!2234639 () Unit!155116)

(declare-fun choose!41582 ((InoxSet Context!9434) Context!9434 Int) Unit!155116)

(assert (=> d!1738924 (= lt!2234639 (choose!41582 lt!2234599 lt!2234589 lambda!290903))))

(assert (=> d!1738924 (= lt!2234599 (store ((as const (Array Context!9434 Bool)) false) lt!2234589 true))))

(assert (=> d!1738924 (= (lemmaFlatMapOnSingletonSet!568 lt!2234599 lt!2234589 lambda!290903) lt!2234639)))

(declare-fun b_lambda!207921 () Bool)

(assert (=> (not b_lambda!207921) (not d!1738924)))

(declare-fun bs!1264763 () Bool)

(assert (= bs!1264763 d!1738924))

(assert (=> bs!1264763 m!6487764))

(declare-fun m!6487960 () Bool)

(assert (=> bs!1264763 m!6487960))

(declare-fun m!6487962 () Bool)

(assert (=> bs!1264763 m!6487962))

(assert (=> bs!1264763 m!6487748))

(assert (=> b!5469024 d!1738924))

(declare-fun d!1738930 () Bool)

(assert (=> d!1738930 (= (flatMap!1036 lt!2234605 lambda!290903) (dynLambda!24421 lambda!290903 lt!2234594))))

(declare-fun lt!2234640 () Unit!155116)

(assert (=> d!1738930 (= lt!2234640 (choose!41582 lt!2234605 lt!2234594 lambda!290903))))

(assert (=> d!1738930 (= lt!2234605 (store ((as const (Array Context!9434 Bool)) false) lt!2234594 true))))

(assert (=> d!1738930 (= (lemmaFlatMapOnSingletonSet!568 lt!2234605 lt!2234594 lambda!290903) lt!2234640)))

(declare-fun b_lambda!207923 () Bool)

(assert (=> (not b_lambda!207923) (not d!1738930)))

(declare-fun bs!1264764 () Bool)

(assert (= bs!1264764 d!1738930))

(assert (=> bs!1264764 m!6487762))

(declare-fun m!6487964 () Bool)

(assert (=> bs!1264764 m!6487964))

(declare-fun m!6487966 () Bool)

(assert (=> bs!1264764 m!6487966))

(assert (=> bs!1264764 m!6487750))

(assert (=> b!5469024 d!1738930))

(declare-fun d!1738932 () Bool)

(declare-fun c!955489 () Bool)

(declare-fun e!3385848 () Bool)

(assert (=> d!1738932 (= c!955489 e!3385848)))

(declare-fun res!2330636 () Bool)

(assert (=> d!1738932 (=> (not res!2330636) (not e!3385848))))

(assert (=> d!1738932 (= res!2330636 ((_ is Cons!62174) (exprs!5217 lt!2234589)))))

(declare-fun e!3385849 () (InoxSet Context!9434))

(assert (=> d!1738932 (= (derivationStepZipperUp!685 lt!2234589 (h!68624 s!2326)) e!3385849)))

(declare-fun b!5469284 () Bool)

(declare-fun call!403523 () (InoxSet Context!9434))

(assert (=> b!5469284 (= e!3385849 ((_ map or) call!403523 (derivationStepZipperUp!685 (Context!9435 (t!375527 (exprs!5217 lt!2234589))) (h!68624 s!2326))))))

(declare-fun b!5469285 () Bool)

(declare-fun e!3385850 () (InoxSet Context!9434))

(assert (=> b!5469285 (= e!3385849 e!3385850)))

(declare-fun c!955488 () Bool)

(assert (=> b!5469285 (= c!955488 ((_ is Cons!62174) (exprs!5217 lt!2234589)))))

(declare-fun b!5469286 () Bool)

(assert (=> b!5469286 (= e!3385848 (nullable!5474 (h!68622 (exprs!5217 lt!2234589))))))

(declare-fun bm!403518 () Bool)

(assert (=> bm!403518 (= call!403523 (derivationStepZipperDown!759 (h!68622 (exprs!5217 lt!2234589)) (Context!9435 (t!375527 (exprs!5217 lt!2234589))) (h!68624 s!2326)))))

(declare-fun b!5469287 () Bool)

(assert (=> b!5469287 (= e!3385850 call!403523)))

(declare-fun b!5469288 () Bool)

(assert (=> b!5469288 (= e!3385850 ((as const (Array Context!9434 Bool)) false))))

(assert (= (and d!1738932 res!2330636) b!5469286))

(assert (= (and d!1738932 c!955489) b!5469284))

(assert (= (and d!1738932 (not c!955489)) b!5469285))

(assert (= (and b!5469285 c!955488) b!5469287))

(assert (= (and b!5469285 (not c!955488)) b!5469288))

(assert (= (or b!5469284 b!5469287) bm!403518))

(declare-fun m!6487968 () Bool)

(assert (=> b!5469284 m!6487968))

(declare-fun m!6487970 () Bool)

(assert (=> b!5469286 m!6487970))

(declare-fun m!6487972 () Bool)

(assert (=> bm!403518 m!6487972))

(assert (=> b!5469024 d!1738932))

(declare-fun d!1738934 () Bool)

(declare-fun c!955491 () Bool)

(declare-fun e!3385851 () Bool)

(assert (=> d!1738934 (= c!955491 e!3385851)))

(declare-fun res!2330637 () Bool)

(assert (=> d!1738934 (=> (not res!2330637) (not e!3385851))))

(assert (=> d!1738934 (= res!2330637 ((_ is Cons!62174) (exprs!5217 lt!2234594)))))

(declare-fun e!3385852 () (InoxSet Context!9434))

(assert (=> d!1738934 (= (derivationStepZipperUp!685 lt!2234594 (h!68624 s!2326)) e!3385852)))

(declare-fun call!403524 () (InoxSet Context!9434))

(declare-fun b!5469289 () Bool)

(assert (=> b!5469289 (= e!3385852 ((_ map or) call!403524 (derivationStepZipperUp!685 (Context!9435 (t!375527 (exprs!5217 lt!2234594))) (h!68624 s!2326))))))

(declare-fun b!5469290 () Bool)

(declare-fun e!3385853 () (InoxSet Context!9434))

(assert (=> b!5469290 (= e!3385852 e!3385853)))

(declare-fun c!955490 () Bool)

(assert (=> b!5469290 (= c!955490 ((_ is Cons!62174) (exprs!5217 lt!2234594)))))

(declare-fun b!5469291 () Bool)

(assert (=> b!5469291 (= e!3385851 (nullable!5474 (h!68622 (exprs!5217 lt!2234594))))))

(declare-fun bm!403519 () Bool)

(assert (=> bm!403519 (= call!403524 (derivationStepZipperDown!759 (h!68622 (exprs!5217 lt!2234594)) (Context!9435 (t!375527 (exprs!5217 lt!2234594))) (h!68624 s!2326)))))

(declare-fun b!5469292 () Bool)

(assert (=> b!5469292 (= e!3385853 call!403524)))

(declare-fun b!5469293 () Bool)

(assert (=> b!5469293 (= e!3385853 ((as const (Array Context!9434 Bool)) false))))

(assert (= (and d!1738934 res!2330637) b!5469291))

(assert (= (and d!1738934 c!955491) b!5469289))

(assert (= (and d!1738934 (not c!955491)) b!5469290))

(assert (= (and b!5469290 c!955490) b!5469292))

(assert (= (and b!5469290 (not c!955490)) b!5469293))

(assert (= (or b!5469289 b!5469292) bm!403519))

(declare-fun m!6487974 () Bool)

(assert (=> b!5469289 m!6487974))

(declare-fun m!6487976 () Bool)

(assert (=> b!5469291 m!6487976))

(declare-fun m!6487978 () Bool)

(assert (=> bm!403519 m!6487978))

(assert (=> b!5469024 d!1738934))

(declare-fun d!1738936 () Bool)

(declare-fun choose!41583 ((InoxSet Context!9434) Int) (InoxSet Context!9434))

(assert (=> d!1738936 (= (flatMap!1036 lt!2234605 lambda!290903) (choose!41583 lt!2234605 lambda!290903))))

(declare-fun bs!1264765 () Bool)

(assert (= bs!1264765 d!1738936))

(declare-fun m!6487980 () Bool)

(assert (=> bs!1264765 m!6487980))

(assert (=> b!5469024 d!1738936))

(declare-fun bs!1264766 () Bool)

(declare-fun d!1738938 () Bool)

(assert (= bs!1264766 (and d!1738938 b!5469010)))

(declare-fun lambda!290929 () Int)

(assert (=> bs!1264766 (= lambda!290929 lambda!290903)))

(declare-fun bs!1264767 () Bool)

(assert (= bs!1264767 (and d!1738938 d!1738922)))

(assert (=> bs!1264767 (= lambda!290929 lambda!290928)))

(assert (=> d!1738938 true))

(assert (=> d!1738938 (= (derivationStepZipper!1528 lt!2234599 (h!68624 s!2326)) (flatMap!1036 lt!2234599 lambda!290929))))

(declare-fun bs!1264768 () Bool)

(assert (= bs!1264768 d!1738938))

(declare-fun m!6487982 () Bool)

(assert (=> bs!1264768 m!6487982))

(assert (=> b!5469024 d!1738938))

(declare-fun d!1738940 () Bool)

(assert (=> d!1738940 (= (flatMap!1036 lt!2234599 lambda!290903) (choose!41583 lt!2234599 lambda!290903))))

(declare-fun bs!1264769 () Bool)

(assert (= bs!1264769 d!1738940))

(declare-fun m!6487984 () Bool)

(assert (=> bs!1264769 m!6487984))

(assert (=> b!5469024 d!1738940))

(declare-fun d!1738942 () Bool)

(declare-fun lt!2234643 () Regex!15333)

(assert (=> d!1738942 (validRegex!7069 lt!2234643)))

(assert (=> d!1738942 (= lt!2234643 (generalisedUnion!1262 (unfocusZipperList!775 (Cons!62175 lt!2234594 Nil!62175))))))

(assert (=> d!1738942 (= (unfocusZipper!1075 (Cons!62175 lt!2234594 Nil!62175)) lt!2234643)))

(declare-fun bs!1264770 () Bool)

(assert (= bs!1264770 d!1738942))

(declare-fun m!6487986 () Bool)

(assert (=> bs!1264770 m!6487986))

(declare-fun m!6487988 () Bool)

(assert (=> bs!1264770 m!6487988))

(assert (=> bs!1264770 m!6487988))

(declare-fun m!6487990 () Bool)

(assert (=> bs!1264770 m!6487990))

(assert (=> b!5469034 d!1738942))

(declare-fun bs!1264771 () Bool)

(declare-fun d!1738944 () Bool)

(assert (= bs!1264771 (and d!1738944 d!1738878)))

(declare-fun lambda!290930 () Int)

(assert (=> bs!1264771 (= lambda!290930 lambda!290908)))

(declare-fun bs!1264772 () Bool)

(assert (= bs!1264772 (and d!1738944 d!1738880)))

(assert (=> bs!1264772 (= lambda!290930 lambda!290915)))

(assert (=> d!1738944 (= (inv!81579 (h!68623 zl!343)) (forall!14604 (exprs!5217 (h!68623 zl!343)) lambda!290930))))

(declare-fun bs!1264773 () Bool)

(assert (= bs!1264773 d!1738944))

(declare-fun m!6487992 () Bool)

(assert (=> bs!1264773 m!6487992))

(assert (=> b!5469033 d!1738944))

(declare-fun d!1738946 () Bool)

(declare-fun choose!41584 (Int) Bool)

(assert (=> d!1738946 (= (Exists!2512 lambda!290900) (choose!41584 lambda!290900))))

(declare-fun bs!1264774 () Bool)

(assert (= bs!1264774 d!1738946))

(declare-fun m!6487994 () Bool)

(assert (=> bs!1264774 m!6487994))

(assert (=> b!5469008 d!1738946))

(declare-fun d!1738948 () Bool)

(declare-fun isEmpty!34134 (Option!15442) Bool)

(assert (=> d!1738948 (= (isDefined!12145 (findConcatSeparation!1856 (reg!15662 r!7292) r!7292 Nil!62176 s!2326 s!2326)) (not (isEmpty!34134 (findConcatSeparation!1856 (reg!15662 r!7292) r!7292 Nil!62176 s!2326 s!2326))))))

(declare-fun bs!1264775 () Bool)

(assert (= bs!1264775 d!1738948))

(assert (=> bs!1264775 m!6487710))

(declare-fun m!6487996 () Bool)

(assert (=> bs!1264775 m!6487996))

(assert (=> b!5469008 d!1738948))

(declare-fun bs!1264781 () Bool)

(declare-fun d!1738950 () Bool)

(assert (= bs!1264781 (and d!1738950 b!5469008)))

(declare-fun lambda!290943 () Int)

(assert (=> bs!1264781 (= lambda!290943 lambda!290900)))

(assert (=> bs!1264781 (not (= lambda!290943 lambda!290901))))

(assert (=> bs!1264781 (not (= lambda!290943 lambda!290902))))

(assert (=> d!1738950 true))

(assert (=> d!1738950 true))

(assert (=> d!1738950 true))

(declare-fun lambda!290946 () Int)

(assert (=> bs!1264781 (not (= lambda!290946 lambda!290900))))

(assert (=> bs!1264781 (not (= lambda!290946 lambda!290901))))

(assert (=> bs!1264781 (= lambda!290946 lambda!290902)))

(declare-fun bs!1264782 () Bool)

(assert (= bs!1264782 d!1738950))

(assert (=> bs!1264782 (not (= lambda!290946 lambda!290943))))

(assert (=> d!1738950 true))

(assert (=> d!1738950 true))

(assert (=> d!1738950 true))

(assert (=> d!1738950 (= (Exists!2512 lambda!290943) (Exists!2512 lambda!290946))))

(declare-fun lt!2234649 () Unit!155116)

(declare-fun choose!41585 (Regex!15333 Regex!15333 List!62300) Unit!155116)

(assert (=> d!1738950 (= lt!2234649 (choose!41585 (reg!15662 r!7292) r!7292 s!2326))))

(assert (=> d!1738950 (validRegex!7069 (reg!15662 r!7292))))

(assert (=> d!1738950 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1162 (reg!15662 r!7292) r!7292 s!2326) lt!2234649)))

(declare-fun m!6488010 () Bool)

(assert (=> bs!1264782 m!6488010))

(declare-fun m!6488012 () Bool)

(assert (=> bs!1264782 m!6488012))

(declare-fun m!6488014 () Bool)

(assert (=> bs!1264782 m!6488014))

(assert (=> bs!1264782 m!6487786))

(assert (=> b!5469008 d!1738950))

(declare-fun bs!1264786 () Bool)

(declare-fun d!1738962 () Bool)

(assert (= bs!1264786 (and d!1738962 b!5469008)))

(declare-fun lambda!290953 () Int)

(assert (=> bs!1264786 (= (= (Star!15333 (reg!15662 r!7292)) r!7292) (= lambda!290953 lambda!290900))))

(declare-fun bs!1264787 () Bool)

(assert (= bs!1264787 (and d!1738962 d!1738950)))

(assert (=> bs!1264787 (not (= lambda!290953 lambda!290946))))

(assert (=> bs!1264787 (= (= (Star!15333 (reg!15662 r!7292)) r!7292) (= lambda!290953 lambda!290943))))

(assert (=> bs!1264786 (not (= lambda!290953 lambda!290901))))

(assert (=> bs!1264786 (not (= lambda!290953 lambda!290902))))

(assert (=> d!1738962 true))

(assert (=> d!1738962 true))

(declare-fun lambda!290954 () Int)

(assert (=> bs!1264786 (not (= lambda!290954 lambda!290900))))

(declare-fun bs!1264788 () Bool)

(assert (= bs!1264788 d!1738962))

(assert (=> bs!1264788 (not (= lambda!290954 lambda!290953))))

(assert (=> bs!1264787 (not (= lambda!290954 lambda!290946))))

(assert (=> bs!1264787 (not (= lambda!290954 lambda!290943))))

(assert (=> bs!1264786 (= (= (Star!15333 (reg!15662 r!7292)) r!7292) (= lambda!290954 lambda!290901))))

(assert (=> bs!1264786 (not (= lambda!290954 lambda!290902))))

(assert (=> d!1738962 true))

(assert (=> d!1738962 true))

(assert (=> d!1738962 (= (Exists!2512 lambda!290953) (Exists!2512 lambda!290954))))

(declare-fun lt!2234659 () Unit!155116)

(declare-fun choose!41586 (Regex!15333 List!62300) Unit!155116)

(assert (=> d!1738962 (= lt!2234659 (choose!41586 (reg!15662 r!7292) s!2326))))

(assert (=> d!1738962 (validRegex!7069 (reg!15662 r!7292))))

(assert (=> d!1738962 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!486 (reg!15662 r!7292) s!2326) lt!2234659)))

(declare-fun m!6488022 () Bool)

(assert (=> bs!1264788 m!6488022))

(declare-fun m!6488024 () Bool)

(assert (=> bs!1264788 m!6488024))

(declare-fun m!6488026 () Bool)

(assert (=> bs!1264788 m!6488026))

(assert (=> bs!1264788 m!6487786))

(assert (=> b!5469008 d!1738962))

(declare-fun d!1738966 () Bool)

(assert (=> d!1738966 (= (Exists!2512 lambda!290902) (choose!41584 lambda!290902))))

(declare-fun bs!1264789 () Bool)

(assert (= bs!1264789 d!1738966))

(declare-fun m!6488032 () Bool)

(assert (=> bs!1264789 m!6488032))

(assert (=> b!5469008 d!1738966))

(declare-fun d!1738968 () Bool)

(assert (=> d!1738968 (= (isEmpty!34130 s!2326) ((_ is Nil!62176) s!2326))))

(assert (=> b!5469008 d!1738968))

(declare-fun b!5469391 () Bool)

(declare-fun e!3385902 () Option!15442)

(assert (=> b!5469391 (= e!3385902 None!15441)))

(declare-fun b!5469392 () Bool)

(declare-fun res!2330703 () Bool)

(declare-fun e!3385907 () Bool)

(assert (=> b!5469392 (=> (not res!2330703) (not e!3385907))))

(declare-fun lt!2234672 () Option!15442)

(declare-fun get!21431 (Option!15442) tuple2!65060)

(assert (=> b!5469392 (= res!2330703 (matchR!7518 r!7292 (_2!35833 (get!21431 lt!2234672))))))

(declare-fun b!5469393 () Bool)

(declare-fun res!2330707 () Bool)

(assert (=> b!5469393 (=> (not res!2330707) (not e!3385907))))

(assert (=> b!5469393 (= res!2330707 (matchR!7518 (reg!15662 r!7292) (_1!35833 (get!21431 lt!2234672))))))

(declare-fun d!1738972 () Bool)

(declare-fun e!3385906 () Bool)

(assert (=> d!1738972 e!3385906))

(declare-fun res!2330705 () Bool)

(assert (=> d!1738972 (=> res!2330705 e!3385906)))

(assert (=> d!1738972 (= res!2330705 e!3385907)))

(declare-fun res!2330704 () Bool)

(assert (=> d!1738972 (=> (not res!2330704) (not e!3385907))))

(assert (=> d!1738972 (= res!2330704 (isDefined!12145 lt!2234672))))

(declare-fun e!3385904 () Option!15442)

(assert (=> d!1738972 (= lt!2234672 e!3385904)))

(declare-fun c!955509 () Bool)

(declare-fun e!3385901 () Bool)

(assert (=> d!1738972 (= c!955509 e!3385901)))

(declare-fun res!2330706 () Bool)

(assert (=> d!1738972 (=> (not res!2330706) (not e!3385901))))

(assert (=> d!1738972 (= res!2330706 (matchR!7518 (reg!15662 r!7292) Nil!62176))))

(assert (=> d!1738972 (validRegex!7069 (reg!15662 r!7292))))

(assert (=> d!1738972 (= (findConcatSeparation!1856 (reg!15662 r!7292) r!7292 Nil!62176 s!2326 s!2326) lt!2234672)))

(declare-fun b!5469394 () Bool)

(assert (=> b!5469394 (= e!3385904 (Some!15441 (tuple2!65061 Nil!62176 s!2326)))))

(declare-fun b!5469395 () Bool)

(assert (=> b!5469395 (= e!3385901 (matchR!7518 r!7292 s!2326))))

(declare-fun b!5469396 () Bool)

(assert (=> b!5469396 (= e!3385906 (not (isDefined!12145 lt!2234672)))))

(declare-fun b!5469397 () Bool)

(assert (=> b!5469397 (= e!3385904 e!3385902)))

(declare-fun c!955508 () Bool)

(assert (=> b!5469397 (= c!955508 ((_ is Nil!62176) s!2326))))

(declare-fun b!5469398 () Bool)

(declare-fun ++!13671 (List!62300 List!62300) List!62300)

(assert (=> b!5469398 (= e!3385907 (= (++!13671 (_1!35833 (get!21431 lt!2234672)) (_2!35833 (get!21431 lt!2234672))) s!2326))))

(declare-fun b!5469399 () Bool)

(declare-fun lt!2234673 () Unit!155116)

(declare-fun lt!2234674 () Unit!155116)

(assert (=> b!5469399 (= lt!2234673 lt!2234674)))

(assert (=> b!5469399 (= (++!13671 (++!13671 Nil!62176 (Cons!62176 (h!68624 s!2326) Nil!62176)) (t!375529 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1892 (List!62300 C!30936 List!62300 List!62300) Unit!155116)

(assert (=> b!5469399 (= lt!2234674 (lemmaMoveElementToOtherListKeepsConcatEq!1892 Nil!62176 (h!68624 s!2326) (t!375529 s!2326) s!2326))))

(assert (=> b!5469399 (= e!3385902 (findConcatSeparation!1856 (reg!15662 r!7292) r!7292 (++!13671 Nil!62176 (Cons!62176 (h!68624 s!2326) Nil!62176)) (t!375529 s!2326) s!2326))))

(assert (= (and d!1738972 res!2330706) b!5469395))

(assert (= (and d!1738972 c!955509) b!5469394))

(assert (= (and d!1738972 (not c!955509)) b!5469397))

(assert (= (and b!5469397 c!955508) b!5469391))

(assert (= (and b!5469397 (not c!955508)) b!5469399))

(assert (= (and d!1738972 res!2330704) b!5469393))

(assert (= (and b!5469393 res!2330707) b!5469392))

(assert (= (and b!5469392 res!2330703) b!5469398))

(assert (= (and d!1738972 (not res!2330705)) b!5469396))

(declare-fun m!6488078 () Bool)

(assert (=> b!5469392 m!6488078))

(declare-fun m!6488080 () Bool)

(assert (=> b!5469392 m!6488080))

(assert (=> b!5469393 m!6488078))

(declare-fun m!6488082 () Bool)

(assert (=> b!5469393 m!6488082))

(declare-fun m!6488084 () Bool)

(assert (=> b!5469399 m!6488084))

(assert (=> b!5469399 m!6488084))

(declare-fun m!6488086 () Bool)

(assert (=> b!5469399 m!6488086))

(declare-fun m!6488088 () Bool)

(assert (=> b!5469399 m!6488088))

(assert (=> b!5469399 m!6488084))

(declare-fun m!6488090 () Bool)

(assert (=> b!5469399 m!6488090))

(declare-fun m!6488092 () Bool)

(assert (=> b!5469396 m!6488092))

(assert (=> b!5469395 m!6487720))

(assert (=> b!5469398 m!6488078))

(declare-fun m!6488094 () Bool)

(assert (=> b!5469398 m!6488094))

(assert (=> d!1738972 m!6488092))

(declare-fun m!6488096 () Bool)

(assert (=> d!1738972 m!6488096))

(assert (=> d!1738972 m!6487786))

(assert (=> b!5469008 d!1738972))

(declare-fun d!1738982 () Bool)

(assert (=> d!1738982 (= (Exists!2512 lambda!290901) (choose!41584 lambda!290901))))

(declare-fun bs!1264797 () Bool)

(assert (= bs!1264797 d!1738982))

(declare-fun m!6488098 () Bool)

(assert (=> bs!1264797 m!6488098))

(assert (=> b!5469008 d!1738982))

(declare-fun bs!1264802 () Bool)

(declare-fun d!1738984 () Bool)

(assert (= bs!1264802 (and d!1738984 d!1738962)))

(declare-fun lambda!290962 () Int)

(assert (=> bs!1264802 (not (= lambda!290962 lambda!290954))))

(declare-fun bs!1264803 () Bool)

(assert (= bs!1264803 (and d!1738984 b!5469008)))

(assert (=> bs!1264803 (= lambda!290962 lambda!290900)))

(assert (=> bs!1264802 (= (= r!7292 (Star!15333 (reg!15662 r!7292))) (= lambda!290962 lambda!290953))))

(declare-fun bs!1264804 () Bool)

(assert (= bs!1264804 (and d!1738984 d!1738950)))

(assert (=> bs!1264804 (not (= lambda!290962 lambda!290946))))

(assert (=> bs!1264804 (= lambda!290962 lambda!290943)))

(assert (=> bs!1264803 (not (= lambda!290962 lambda!290901))))

(assert (=> bs!1264803 (not (= lambda!290962 lambda!290902))))

(assert (=> d!1738984 true))

(assert (=> d!1738984 true))

(assert (=> d!1738984 true))

(assert (=> d!1738984 (= (isDefined!12145 (findConcatSeparation!1856 (reg!15662 r!7292) r!7292 Nil!62176 s!2326 s!2326)) (Exists!2512 lambda!290962))))

(declare-fun lt!2234677 () Unit!155116)

(declare-fun choose!41589 (Regex!15333 Regex!15333 List!62300) Unit!155116)

(assert (=> d!1738984 (= lt!2234677 (choose!41589 (reg!15662 r!7292) r!7292 s!2326))))

(assert (=> d!1738984 (validRegex!7069 (reg!15662 r!7292))))

(assert (=> d!1738984 (= (lemmaFindConcatSeparationEquivalentToExists!1620 (reg!15662 r!7292) r!7292 s!2326) lt!2234677)))

(declare-fun bs!1264805 () Bool)

(assert (= bs!1264805 d!1738984))

(declare-fun m!6488118 () Bool)

(assert (=> bs!1264805 m!6488118))

(assert (=> bs!1264805 m!6487710))

(assert (=> bs!1264805 m!6487716))

(declare-fun m!6488120 () Bool)

(assert (=> bs!1264805 m!6488120))

(assert (=> bs!1264805 m!6487786))

(assert (=> bs!1264805 m!6487710))

(assert (=> b!5469008 d!1738984))

(declare-fun c!955531 () Bool)

(declare-fun call!403548 () List!62298)

(declare-fun c!955528 () Bool)

(declare-fun c!955527 () Bool)

(declare-fun bm!403539 () Bool)

(declare-fun call!403545 () (InoxSet Context!9434))

(assert (=> bm!403539 (= call!403545 (derivationStepZipperDown!759 (ite c!955531 (regTwo!31179 (reg!15662 r!7292)) (ite c!955527 (regTwo!31178 (reg!15662 r!7292)) (ite c!955528 (regOne!31178 (reg!15662 r!7292)) (reg!15662 (reg!15662 r!7292))))) (ite (or c!955531 c!955527) lt!2234589 (Context!9435 call!403548)) (h!68624 s!2326)))))

(declare-fun bm!403540 () Bool)

(declare-fun call!403546 () (InoxSet Context!9434))

(declare-fun call!403549 () (InoxSet Context!9434))

(assert (=> bm!403540 (= call!403546 call!403549)))

(declare-fun b!5469442 () Bool)

(declare-fun e!3385934 () (InoxSet Context!9434))

(declare-fun call!403544 () (InoxSet Context!9434))

(assert (=> b!5469442 (= e!3385934 ((_ map or) call!403544 call!403549))))

(declare-fun bm!403541 () Bool)

(declare-fun call!403547 () List!62298)

(assert (=> bm!403541 (= call!403548 call!403547)))

(declare-fun b!5469443 () Bool)

(declare-fun e!3385931 () (InoxSet Context!9434))

(assert (=> b!5469443 (= e!3385931 ((as const (Array Context!9434 Bool)) false))))

(declare-fun b!5469444 () Bool)

(declare-fun e!3385935 () (InoxSet Context!9434))

(assert (=> b!5469444 (= e!3385935 call!403546)))

(declare-fun d!1738992 () Bool)

(declare-fun c!955530 () Bool)

(assert (=> d!1738992 (= c!955530 (and ((_ is ElementMatch!15333) (reg!15662 r!7292)) (= (c!955399 (reg!15662 r!7292)) (h!68624 s!2326))))))

(declare-fun e!3385933 () (InoxSet Context!9434))

(assert (=> d!1738992 (= (derivationStepZipperDown!759 (reg!15662 r!7292) lt!2234589 (h!68624 s!2326)) e!3385933)))

(declare-fun b!5469445 () Bool)

(declare-fun e!3385936 () (InoxSet Context!9434))

(assert (=> b!5469445 (= e!3385933 e!3385936)))

(assert (=> b!5469445 (= c!955531 ((_ is Union!15333) (reg!15662 r!7292)))))

(declare-fun bm!403542 () Bool)

(assert (=> bm!403542 (= call!403544 (derivationStepZipperDown!759 (ite c!955531 (regOne!31179 (reg!15662 r!7292)) (regOne!31178 (reg!15662 r!7292))) (ite c!955531 lt!2234589 (Context!9435 call!403547)) (h!68624 s!2326)))))

(declare-fun bm!403543 () Bool)

(assert (=> bm!403543 (= call!403549 call!403545)))

(declare-fun b!5469446 () Bool)

(assert (=> b!5469446 (= e!3385931 call!403546)))

(declare-fun b!5469447 () Bool)

(declare-fun e!3385932 () Bool)

(assert (=> b!5469447 (= e!3385932 (nullable!5474 (regOne!31178 (reg!15662 r!7292))))))

(declare-fun b!5469448 () Bool)

(declare-fun c!955529 () Bool)

(assert (=> b!5469448 (= c!955529 ((_ is Star!15333) (reg!15662 r!7292)))))

(assert (=> b!5469448 (= e!3385935 e!3385931)))

(declare-fun b!5469449 () Bool)

(assert (=> b!5469449 (= e!3385936 ((_ map or) call!403544 call!403545))))

(declare-fun b!5469450 () Bool)

(assert (=> b!5469450 (= e!3385933 (store ((as const (Array Context!9434 Bool)) false) lt!2234589 true))))

(declare-fun b!5469451 () Bool)

(assert (=> b!5469451 (= c!955527 e!3385932)))

(declare-fun res!2330716 () Bool)

(assert (=> b!5469451 (=> (not res!2330716) (not e!3385932))))

(assert (=> b!5469451 (= res!2330716 ((_ is Concat!24178) (reg!15662 r!7292)))))

(assert (=> b!5469451 (= e!3385936 e!3385934)))

(declare-fun b!5469452 () Bool)

(assert (=> b!5469452 (= e!3385934 e!3385935)))

(assert (=> b!5469452 (= c!955528 ((_ is Concat!24178) (reg!15662 r!7292)))))

(declare-fun bm!403544 () Bool)

(assert (=> bm!403544 (= call!403547 ($colon$colon!1543 (exprs!5217 lt!2234589) (ite (or c!955527 c!955528) (regTwo!31178 (reg!15662 r!7292)) (reg!15662 r!7292))))))

(assert (= (and d!1738992 c!955530) b!5469450))

(assert (= (and d!1738992 (not c!955530)) b!5469445))

(assert (= (and b!5469445 c!955531) b!5469449))

(assert (= (and b!5469445 (not c!955531)) b!5469451))

(assert (= (and b!5469451 res!2330716) b!5469447))

(assert (= (and b!5469451 c!955527) b!5469442))

(assert (= (and b!5469451 (not c!955527)) b!5469452))

(assert (= (and b!5469452 c!955528) b!5469444))

(assert (= (and b!5469452 (not c!955528)) b!5469448))

(assert (= (and b!5469448 c!955529) b!5469446))

(assert (= (and b!5469448 (not c!955529)) b!5469443))

(assert (= (or b!5469444 b!5469446) bm!403541))

(assert (= (or b!5469444 b!5469446) bm!403540))

(assert (= (or b!5469442 bm!403541) bm!403544))

(assert (= (or b!5469442 bm!403540) bm!403543))

(assert (= (or b!5469449 bm!403543) bm!403539))

(assert (= (or b!5469449 b!5469442) bm!403542))

(assert (=> b!5469450 m!6487748))

(declare-fun m!6488122 () Bool)

(assert (=> bm!403544 m!6488122))

(declare-fun m!6488124 () Bool)

(assert (=> b!5469447 m!6488124))

(declare-fun m!6488126 () Bool)

(assert (=> bm!403542 m!6488126))

(declare-fun m!6488128 () Bool)

(assert (=> bm!403539 m!6488128))

(assert (=> b!5469037 d!1738992))

(declare-fun d!1738994 () Bool)

(assert (=> d!1738994 (= (flatMap!1036 lt!2234596 lambda!290903) (choose!41583 lt!2234596 lambda!290903))))

(declare-fun bs!1264806 () Bool)

(assert (= bs!1264806 d!1738994))

(declare-fun m!6488130 () Bool)

(assert (=> bs!1264806 m!6488130))

(assert (=> b!5469037 d!1738994))

(declare-fun d!1738996 () Bool)

(declare-fun c!955539 () Bool)

(declare-fun e!3385951 () Bool)

(assert (=> d!1738996 (= c!955539 e!3385951)))

(declare-fun res!2330729 () Bool)

(assert (=> d!1738996 (=> (not res!2330729) (not e!3385951))))

(assert (=> d!1738996 (= res!2330729 ((_ is Cons!62174) (exprs!5217 lt!2234583)))))

(declare-fun e!3385952 () (InoxSet Context!9434))

(assert (=> d!1738996 (= (derivationStepZipperUp!685 lt!2234583 (h!68624 s!2326)) e!3385952)))

(declare-fun b!5469477 () Bool)

(declare-fun call!403550 () (InoxSet Context!9434))

(assert (=> b!5469477 (= e!3385952 ((_ map or) call!403550 (derivationStepZipperUp!685 (Context!9435 (t!375527 (exprs!5217 lt!2234583))) (h!68624 s!2326))))))

(declare-fun b!5469478 () Bool)

(declare-fun e!3385953 () (InoxSet Context!9434))

(assert (=> b!5469478 (= e!3385952 e!3385953)))

(declare-fun c!955538 () Bool)

(assert (=> b!5469478 (= c!955538 ((_ is Cons!62174) (exprs!5217 lt!2234583)))))

(declare-fun b!5469479 () Bool)

(assert (=> b!5469479 (= e!3385951 (nullable!5474 (h!68622 (exprs!5217 lt!2234583))))))

(declare-fun bm!403545 () Bool)

(assert (=> bm!403545 (= call!403550 (derivationStepZipperDown!759 (h!68622 (exprs!5217 lt!2234583)) (Context!9435 (t!375527 (exprs!5217 lt!2234583))) (h!68624 s!2326)))))

(declare-fun b!5469480 () Bool)

(assert (=> b!5469480 (= e!3385953 call!403550)))

(declare-fun b!5469481 () Bool)

(assert (=> b!5469481 (= e!3385953 ((as const (Array Context!9434 Bool)) false))))

(assert (= (and d!1738996 res!2330729) b!5469479))

(assert (= (and d!1738996 c!955539) b!5469477))

(assert (= (and d!1738996 (not c!955539)) b!5469478))

(assert (= (and b!5469478 c!955538) b!5469480))

(assert (= (and b!5469478 (not c!955538)) b!5469481))

(assert (= (or b!5469477 b!5469480) bm!403545))

(declare-fun m!6488132 () Bool)

(assert (=> b!5469477 m!6488132))

(declare-fun m!6488134 () Bool)

(assert (=> b!5469479 m!6488134))

(declare-fun m!6488136 () Bool)

(assert (=> bm!403545 m!6488136))

(assert (=> b!5469037 d!1738996))

(declare-fun d!1738998 () Bool)

(assert (=> d!1738998 (= (flatMap!1036 lt!2234596 lambda!290903) (dynLambda!24421 lambda!290903 lt!2234583))))

(declare-fun lt!2234678 () Unit!155116)

(assert (=> d!1738998 (= lt!2234678 (choose!41582 lt!2234596 lt!2234583 lambda!290903))))

(assert (=> d!1738998 (= lt!2234596 (store ((as const (Array Context!9434 Bool)) false) lt!2234583 true))))

(assert (=> d!1738998 (= (lemmaFlatMapOnSingletonSet!568 lt!2234596 lt!2234583 lambda!290903) lt!2234678)))

(declare-fun b_lambda!207925 () Bool)

(assert (=> (not b_lambda!207925) (not d!1738998)))

(declare-fun bs!1264807 () Bool)

(assert (= bs!1264807 d!1738998))

(assert (=> bs!1264807 m!6487772))

(declare-fun m!6488138 () Bool)

(assert (=> bs!1264807 m!6488138))

(declare-fun m!6488140 () Bool)

(assert (=> bs!1264807 m!6488140))

(assert (=> bs!1264807 m!6487768))

(assert (=> b!5469037 d!1738998))

(declare-fun bs!1264817 () Bool)

(declare-fun b!5469548 () Bool)

(assert (= bs!1264817 (and b!5469548 d!1738962)))

(declare-fun lambda!290973 () Int)

(assert (=> bs!1264817 (= (= r!7292 (Star!15333 (reg!15662 r!7292))) (= lambda!290973 lambda!290954))))

(declare-fun bs!1264818 () Bool)

(assert (= bs!1264818 (and b!5469548 b!5469008)))

(assert (=> bs!1264818 (not (= lambda!290973 lambda!290900))))

(assert (=> bs!1264817 (not (= lambda!290973 lambda!290953))))

(declare-fun bs!1264819 () Bool)

(assert (= bs!1264819 (and b!5469548 d!1738984)))

(assert (=> bs!1264819 (not (= lambda!290973 lambda!290962))))

(declare-fun bs!1264820 () Bool)

(assert (= bs!1264820 (and b!5469548 d!1738950)))

(assert (=> bs!1264820 (not (= lambda!290973 lambda!290946))))

(assert (=> bs!1264820 (not (= lambda!290973 lambda!290943))))

(assert (=> bs!1264818 (= lambda!290973 lambda!290901)))

(assert (=> bs!1264818 (not (= lambda!290973 lambda!290902))))

(assert (=> b!5469548 true))

(assert (=> b!5469548 true))

(declare-fun bs!1264821 () Bool)

(declare-fun b!5469550 () Bool)

(assert (= bs!1264821 (and b!5469550 d!1738962)))

(declare-fun lambda!290974 () Int)

(assert (=> bs!1264821 (not (= lambda!290974 lambda!290954))))

(declare-fun bs!1264822 () Bool)

(assert (= bs!1264822 (and b!5469550 b!5469548)))

(assert (=> bs!1264822 (not (= lambda!290974 lambda!290973))))

(declare-fun bs!1264823 () Bool)

(assert (= bs!1264823 (and b!5469550 b!5469008)))

(assert (=> bs!1264823 (not (= lambda!290974 lambda!290900))))

(assert (=> bs!1264821 (not (= lambda!290974 lambda!290953))))

(declare-fun bs!1264824 () Bool)

(assert (= bs!1264824 (and b!5469550 d!1738984)))

(assert (=> bs!1264824 (not (= lambda!290974 lambda!290962))))

(declare-fun bs!1264825 () Bool)

(assert (= bs!1264825 (and b!5469550 d!1738950)))

(assert (=> bs!1264825 (= (and (= (regOne!31178 r!7292) (reg!15662 r!7292)) (= (regTwo!31178 r!7292) r!7292)) (= lambda!290974 lambda!290946))))

(assert (=> bs!1264825 (not (= lambda!290974 lambda!290943))))

(assert (=> bs!1264823 (not (= lambda!290974 lambda!290901))))

(assert (=> bs!1264823 (= (and (= (regOne!31178 r!7292) (reg!15662 r!7292)) (= (regTwo!31178 r!7292) r!7292)) (= lambda!290974 lambda!290902))))

(assert (=> b!5469550 true))

(assert (=> b!5469550 true))

(declare-fun d!1739000 () Bool)

(declare-fun c!955561 () Bool)

(assert (=> d!1739000 (= c!955561 ((_ is EmptyExpr!15333) r!7292))))

(declare-fun e!3385992 () Bool)

(assert (=> d!1739000 (= (matchRSpec!2436 r!7292 s!2326) e!3385992)))

(declare-fun b!5469543 () Bool)

(declare-fun c!955558 () Bool)

(assert (=> b!5469543 (= c!955558 ((_ is ElementMatch!15333) r!7292))))

(declare-fun e!3385995 () Bool)

(declare-fun e!3385989 () Bool)

(assert (=> b!5469543 (= e!3385995 e!3385989)))

(declare-fun b!5469545 () Bool)

(assert (=> b!5469545 (= e!3385989 (= s!2326 (Cons!62176 (c!955399 r!7292) Nil!62176)))))

(declare-fun b!5469547 () Bool)

(declare-fun res!2330757 () Bool)

(declare-fun e!3385991 () Bool)

(assert (=> b!5469547 (=> res!2330757 e!3385991)))

(declare-fun call!403562 () Bool)

(assert (=> b!5469547 (= res!2330757 call!403562)))

(declare-fun e!3385994 () Bool)

(assert (=> b!5469547 (= e!3385994 e!3385991)))

(declare-fun call!403561 () Bool)

(assert (=> b!5469548 (= e!3385991 call!403561)))

(declare-fun bm!403556 () Bool)

(assert (=> bm!403556 (= call!403562 (isEmpty!34130 s!2326))))

(declare-fun b!5469549 () Bool)

(assert (=> b!5469549 (= e!3385992 e!3385995)))

(declare-fun res!2330758 () Bool)

(assert (=> b!5469549 (= res!2330758 (not ((_ is EmptyLang!15333) r!7292)))))

(assert (=> b!5469549 (=> (not res!2330758) (not e!3385995))))

(declare-fun bm!403557 () Bool)

(declare-fun c!955560 () Bool)

(assert (=> bm!403557 (= call!403561 (Exists!2512 (ite c!955560 lambda!290973 lambda!290974)))))

(assert (=> b!5469550 (= e!3385994 call!403561)))

(declare-fun b!5469551 () Bool)

(declare-fun e!3385990 () Bool)

(declare-fun e!3385993 () Bool)

(assert (=> b!5469551 (= e!3385990 e!3385993)))

(declare-fun res!2330759 () Bool)

(assert (=> b!5469551 (= res!2330759 (matchRSpec!2436 (regOne!31179 r!7292) s!2326))))

(assert (=> b!5469551 (=> res!2330759 e!3385993)))

(declare-fun b!5469552 () Bool)

(assert (=> b!5469552 (= e!3385993 (matchRSpec!2436 (regTwo!31179 r!7292) s!2326))))

(declare-fun b!5469553 () Bool)

(declare-fun c!955559 () Bool)

(assert (=> b!5469553 (= c!955559 ((_ is Union!15333) r!7292))))

(assert (=> b!5469553 (= e!3385989 e!3385990)))

(declare-fun b!5469554 () Bool)

(assert (=> b!5469554 (= e!3385990 e!3385994)))

(assert (=> b!5469554 (= c!955560 ((_ is Star!15333) r!7292))))

(declare-fun b!5469555 () Bool)

(assert (=> b!5469555 (= e!3385992 call!403562)))

(assert (= (and d!1739000 c!955561) b!5469555))

(assert (= (and d!1739000 (not c!955561)) b!5469549))

(assert (= (and b!5469549 res!2330758) b!5469543))

(assert (= (and b!5469543 c!955558) b!5469545))

(assert (= (and b!5469543 (not c!955558)) b!5469553))

(assert (= (and b!5469553 c!955559) b!5469551))

(assert (= (and b!5469553 (not c!955559)) b!5469554))

(assert (= (and b!5469551 (not res!2330759)) b!5469552))

(assert (= (and b!5469554 c!955560) b!5469547))

(assert (= (and b!5469554 (not c!955560)) b!5469550))

(assert (= (and b!5469547 (not res!2330757)) b!5469548))

(assert (= (or b!5469548 b!5469550) bm!403557))

(assert (= (or b!5469555 b!5469547) bm!403556))

(assert (=> bm!403556 m!6487704))

(declare-fun m!6488148 () Bool)

(assert (=> bm!403557 m!6488148))

(declare-fun m!6488150 () Bool)

(assert (=> b!5469551 m!6488150))

(declare-fun m!6488152 () Bool)

(assert (=> b!5469552 m!6488152))

(assert (=> b!5469007 d!1739000))

(declare-fun b!5469640 () Bool)

(declare-fun e!3386046 () Bool)

(declare-fun lt!2234691 () Bool)

(declare-fun call!403577 () Bool)

(assert (=> b!5469640 (= e!3386046 (= lt!2234691 call!403577))))

(declare-fun d!1739004 () Bool)

(assert (=> d!1739004 e!3386046))

(declare-fun c!955582 () Bool)

(assert (=> d!1739004 (= c!955582 ((_ is EmptyExpr!15333) r!7292))))

(declare-fun e!3386047 () Bool)

(assert (=> d!1739004 (= lt!2234691 e!3386047)))

(declare-fun c!955583 () Bool)

(assert (=> d!1739004 (= c!955583 (isEmpty!34130 s!2326))))

(assert (=> d!1739004 (validRegex!7069 r!7292)))

(assert (=> d!1739004 (= (matchR!7518 r!7292 s!2326) lt!2234691)))

(declare-fun b!5469641 () Bool)

(declare-fun e!3386048 () Bool)

(declare-fun head!11714 (List!62300) C!30936)

(assert (=> b!5469641 (= e!3386048 (not (= (head!11714 s!2326) (c!955399 r!7292))))))

(declare-fun b!5469642 () Bool)

(declare-fun e!3386044 () Bool)

(assert (=> b!5469642 (= e!3386046 e!3386044)))

(declare-fun c!955584 () Bool)

(assert (=> b!5469642 (= c!955584 ((_ is EmptyLang!15333) r!7292))))

(declare-fun b!5469643 () Bool)

(declare-fun res!2330807 () Bool)

(assert (=> b!5469643 (=> res!2330807 e!3386048)))

(declare-fun tail!10811 (List!62300) List!62300)

(assert (=> b!5469643 (= res!2330807 (not (isEmpty!34130 (tail!10811 s!2326))))))

(declare-fun b!5469644 () Bool)

(declare-fun res!2330809 () Bool)

(declare-fun e!3386045 () Bool)

(assert (=> b!5469644 (=> res!2330809 e!3386045)))

(declare-fun e!3386043 () Bool)

(assert (=> b!5469644 (= res!2330809 e!3386043)))

(declare-fun res!2330806 () Bool)

(assert (=> b!5469644 (=> (not res!2330806) (not e!3386043))))

(assert (=> b!5469644 (= res!2330806 lt!2234691)))

(declare-fun b!5469645 () Bool)

(assert (=> b!5469645 (= e!3386043 (= (head!11714 s!2326) (c!955399 r!7292)))))

(declare-fun b!5469646 () Bool)

(assert (=> b!5469646 (= e!3386044 (not lt!2234691))))

(declare-fun b!5469647 () Bool)

(assert (=> b!5469647 (= e!3386047 (nullable!5474 r!7292))))

(declare-fun b!5469648 () Bool)

(declare-fun derivativeStep!4318 (Regex!15333 C!30936) Regex!15333)

(assert (=> b!5469648 (= e!3386047 (matchR!7518 (derivativeStep!4318 r!7292 (head!11714 s!2326)) (tail!10811 s!2326)))))

(declare-fun b!5469649 () Bool)

(declare-fun res!2330808 () Bool)

(assert (=> b!5469649 (=> (not res!2330808) (not e!3386043))))

(assert (=> b!5469649 (= res!2330808 (isEmpty!34130 (tail!10811 s!2326)))))

(declare-fun b!5469650 () Bool)

(declare-fun res!2330805 () Bool)

(assert (=> b!5469650 (=> res!2330805 e!3386045)))

(assert (=> b!5469650 (= res!2330805 (not ((_ is ElementMatch!15333) r!7292)))))

(assert (=> b!5469650 (= e!3386044 e!3386045)))

(declare-fun b!5469651 () Bool)

(declare-fun res!2330811 () Bool)

(assert (=> b!5469651 (=> (not res!2330811) (not e!3386043))))

(assert (=> b!5469651 (= res!2330811 (not call!403577))))

(declare-fun b!5469652 () Bool)

(declare-fun e!3386042 () Bool)

(assert (=> b!5469652 (= e!3386045 e!3386042)))

(declare-fun res!2330804 () Bool)

(assert (=> b!5469652 (=> (not res!2330804) (not e!3386042))))

(assert (=> b!5469652 (= res!2330804 (not lt!2234691))))

(declare-fun b!5469653 () Bool)

(assert (=> b!5469653 (= e!3386042 e!3386048)))

(declare-fun res!2330810 () Bool)

(assert (=> b!5469653 (=> res!2330810 e!3386048)))

(assert (=> b!5469653 (= res!2330810 call!403577)))

(declare-fun bm!403572 () Bool)

(assert (=> bm!403572 (= call!403577 (isEmpty!34130 s!2326))))

(assert (= (and d!1739004 c!955583) b!5469647))

(assert (= (and d!1739004 (not c!955583)) b!5469648))

(assert (= (and d!1739004 c!955582) b!5469640))

(assert (= (and d!1739004 (not c!955582)) b!5469642))

(assert (= (and b!5469642 c!955584) b!5469646))

(assert (= (and b!5469642 (not c!955584)) b!5469650))

(assert (= (and b!5469650 (not res!2330805)) b!5469644))

(assert (= (and b!5469644 res!2330806) b!5469651))

(assert (= (and b!5469651 res!2330811) b!5469649))

(assert (= (and b!5469649 res!2330808) b!5469645))

(assert (= (and b!5469644 (not res!2330809)) b!5469652))

(assert (= (and b!5469652 res!2330804) b!5469653))

(assert (= (and b!5469653 (not res!2330810)) b!5469643))

(assert (= (and b!5469643 (not res!2330807)) b!5469641))

(assert (= (or b!5469640 b!5469653 b!5469651) bm!403572))

(declare-fun m!6488190 () Bool)

(assert (=> b!5469641 m!6488190))

(assert (=> b!5469645 m!6488190))

(assert (=> b!5469648 m!6488190))

(assert (=> b!5469648 m!6488190))

(declare-fun m!6488192 () Bool)

(assert (=> b!5469648 m!6488192))

(declare-fun m!6488194 () Bool)

(assert (=> b!5469648 m!6488194))

(assert (=> b!5469648 m!6488192))

(assert (=> b!5469648 m!6488194))

(declare-fun m!6488196 () Bool)

(assert (=> b!5469648 m!6488196))

(assert (=> bm!403572 m!6487704))

(assert (=> d!1739004 m!6487704))

(assert (=> d!1739004 m!6487732))

(assert (=> b!5469643 m!6488194))

(assert (=> b!5469643 m!6488194))

(declare-fun m!6488198 () Bool)

(assert (=> b!5469643 m!6488198))

(assert (=> b!5469649 m!6488194))

(assert (=> b!5469649 m!6488194))

(assert (=> b!5469649 m!6488198))

(declare-fun m!6488200 () Bool)

(assert (=> b!5469647 m!6488200))

(assert (=> b!5469007 d!1739004))

(declare-fun d!1739020 () Bool)

(assert (=> d!1739020 (= (matchR!7518 r!7292 s!2326) (matchRSpec!2436 r!7292 s!2326))))

(declare-fun lt!2234695 () Unit!155116)

(declare-fun choose!41592 (Regex!15333 List!62300) Unit!155116)

(assert (=> d!1739020 (= lt!2234695 (choose!41592 r!7292 s!2326))))

(assert (=> d!1739020 (validRegex!7069 r!7292)))

(assert (=> d!1739020 (= (mainMatchTheorem!2436 r!7292 s!2326) lt!2234695)))

(declare-fun bs!1264842 () Bool)

(assert (= bs!1264842 d!1739020))

(assert (=> bs!1264842 m!6487720))

(assert (=> bs!1264842 m!6487718))

(declare-fun m!6488208 () Bool)

(assert (=> bs!1264842 m!6488208))

(assert (=> bs!1264842 m!6487732))

(assert (=> b!5469007 d!1739020))

(declare-fun d!1739024 () Bool)

(assert (=> d!1739024 (= (isEmpty!34131 (t!375528 zl!343)) ((_ is Nil!62175) (t!375528 zl!343)))))

(assert (=> b!5469017 d!1739024))

(assert (=> b!5469016 d!1738946))

(assert (=> b!5469016 d!1738982))

(declare-fun bs!1264850 () Bool)

(declare-fun d!1739030 () Bool)

(assert (= bs!1264850 (and d!1739030 d!1738878)))

(declare-fun lambda!290979 () Int)

(assert (=> bs!1264850 (= lambda!290979 lambda!290908)))

(declare-fun bs!1264851 () Bool)

(assert (= bs!1264851 (and d!1739030 d!1738880)))

(assert (=> bs!1264851 (= lambda!290979 lambda!290915)))

(declare-fun bs!1264852 () Bool)

(assert (= bs!1264852 (and d!1739030 d!1738944)))

(assert (=> bs!1264852 (= lambda!290979 lambda!290930)))

(declare-fun b!5469742 () Bool)

(declare-fun e!3386091 () Regex!15333)

(assert (=> b!5469742 (= e!3386091 (Union!15333 (h!68622 (unfocusZipperList!775 zl!343)) (generalisedUnion!1262 (t!375527 (unfocusZipperList!775 zl!343)))))))

(declare-fun b!5469743 () Bool)

(assert (=> b!5469743 (= e!3386091 EmptyLang!15333)))

(declare-fun e!3386096 () Bool)

(assert (=> d!1739030 e!3386096))

(declare-fun res!2330825 () Bool)

(assert (=> d!1739030 (=> (not res!2330825) (not e!3386096))))

(declare-fun lt!2234701 () Regex!15333)

(assert (=> d!1739030 (= res!2330825 (validRegex!7069 lt!2234701))))

(declare-fun e!3386095 () Regex!15333)

(assert (=> d!1739030 (= lt!2234701 e!3386095)))

(declare-fun c!955598 () Bool)

(declare-fun e!3386093 () Bool)

(assert (=> d!1739030 (= c!955598 e!3386093)))

(declare-fun res!2330824 () Bool)

(assert (=> d!1739030 (=> (not res!2330824) (not e!3386093))))

(assert (=> d!1739030 (= res!2330824 ((_ is Cons!62174) (unfocusZipperList!775 zl!343)))))

(assert (=> d!1739030 (forall!14604 (unfocusZipperList!775 zl!343) lambda!290979)))

(assert (=> d!1739030 (= (generalisedUnion!1262 (unfocusZipperList!775 zl!343)) lt!2234701)))

(declare-fun b!5469744 () Bool)

(declare-fun e!3386094 () Bool)

(declare-fun isEmptyLang!1039 (Regex!15333) Bool)

(assert (=> b!5469744 (= e!3386094 (isEmptyLang!1039 lt!2234701))))

(declare-fun b!5469745 () Bool)

(assert (=> b!5469745 (= e!3386095 e!3386091)))

(declare-fun c!955596 () Bool)

(assert (=> b!5469745 (= c!955596 ((_ is Cons!62174) (unfocusZipperList!775 zl!343)))))

(declare-fun b!5469746 () Bool)

(assert (=> b!5469746 (= e!3386096 e!3386094)))

(declare-fun c!955597 () Bool)

(assert (=> b!5469746 (= c!955597 (isEmpty!34133 (unfocusZipperList!775 zl!343)))))

(declare-fun b!5469747 () Bool)

(declare-fun e!3386092 () Bool)

(assert (=> b!5469747 (= e!3386092 (= lt!2234701 (head!11712 (unfocusZipperList!775 zl!343))))))

(declare-fun b!5469748 () Bool)

(assert (=> b!5469748 (= e!3386093 (isEmpty!34133 (t!375527 (unfocusZipperList!775 zl!343))))))

(declare-fun b!5469749 () Bool)

(declare-fun isUnion!471 (Regex!15333) Bool)

(assert (=> b!5469749 (= e!3386092 (isUnion!471 lt!2234701))))

(declare-fun b!5469750 () Bool)

(assert (=> b!5469750 (= e!3386094 e!3386092)))

(declare-fun c!955599 () Bool)

(assert (=> b!5469750 (= c!955599 (isEmpty!34133 (tail!10809 (unfocusZipperList!775 zl!343))))))

(declare-fun b!5469751 () Bool)

(assert (=> b!5469751 (= e!3386095 (h!68622 (unfocusZipperList!775 zl!343)))))

(assert (= (and d!1739030 res!2330824) b!5469748))

(assert (= (and d!1739030 c!955598) b!5469751))

(assert (= (and d!1739030 (not c!955598)) b!5469745))

(assert (= (and b!5469745 c!955596) b!5469742))

(assert (= (and b!5469745 (not c!955596)) b!5469743))

(assert (= (and d!1739030 res!2330825) b!5469746))

(assert (= (and b!5469746 c!955597) b!5469744))

(assert (= (and b!5469746 (not c!955597)) b!5469750))

(assert (= (and b!5469750 c!955599) b!5469747))

(assert (= (and b!5469750 (not c!955599)) b!5469749))

(assert (=> b!5469747 m!6487788))

(declare-fun m!6488232 () Bool)

(assert (=> b!5469747 m!6488232))

(declare-fun m!6488234 () Bool)

(assert (=> b!5469748 m!6488234))

(assert (=> b!5469746 m!6487788))

(declare-fun m!6488236 () Bool)

(assert (=> b!5469746 m!6488236))

(declare-fun m!6488238 () Bool)

(assert (=> d!1739030 m!6488238))

(assert (=> d!1739030 m!6487788))

(declare-fun m!6488240 () Bool)

(assert (=> d!1739030 m!6488240))

(declare-fun m!6488242 () Bool)

(assert (=> b!5469744 m!6488242))

(declare-fun m!6488244 () Bool)

(assert (=> b!5469742 m!6488244))

(declare-fun m!6488246 () Bool)

(assert (=> b!5469749 m!6488246))

(assert (=> b!5469750 m!6487788))

(declare-fun m!6488248 () Bool)

(assert (=> b!5469750 m!6488248))

(assert (=> b!5469750 m!6488248))

(declare-fun m!6488250 () Bool)

(assert (=> b!5469750 m!6488250))

(assert (=> b!5469026 d!1739030))

(declare-fun bs!1264853 () Bool)

(declare-fun d!1739044 () Bool)

(assert (= bs!1264853 (and d!1739044 d!1738878)))

(declare-fun lambda!290982 () Int)

(assert (=> bs!1264853 (= lambda!290982 lambda!290908)))

(declare-fun bs!1264854 () Bool)

(assert (= bs!1264854 (and d!1739044 d!1738880)))

(assert (=> bs!1264854 (= lambda!290982 lambda!290915)))

(declare-fun bs!1264855 () Bool)

(assert (= bs!1264855 (and d!1739044 d!1738944)))

(assert (=> bs!1264855 (= lambda!290982 lambda!290930)))

(declare-fun bs!1264856 () Bool)

(assert (= bs!1264856 (and d!1739044 d!1739030)))

(assert (=> bs!1264856 (= lambda!290982 lambda!290979)))

(declare-fun lt!2234704 () List!62298)

(assert (=> d!1739044 (forall!14604 lt!2234704 lambda!290982)))

(declare-fun e!3386099 () List!62298)

(assert (=> d!1739044 (= lt!2234704 e!3386099)))

(declare-fun c!955602 () Bool)

(assert (=> d!1739044 (= c!955602 ((_ is Cons!62175) zl!343))))

(assert (=> d!1739044 (= (unfocusZipperList!775 zl!343) lt!2234704)))

(declare-fun b!5469756 () Bool)

(assert (=> b!5469756 (= e!3386099 (Cons!62174 (generalisedConcat!1002 (exprs!5217 (h!68623 zl!343))) (unfocusZipperList!775 (t!375528 zl!343))))))

(declare-fun b!5469757 () Bool)

(assert (=> b!5469757 (= e!3386099 Nil!62174)))

(assert (= (and d!1739044 c!955602) b!5469756))

(assert (= (and d!1739044 (not c!955602)) b!5469757))

(declare-fun m!6488252 () Bool)

(assert (=> d!1739044 m!6488252))

(assert (=> b!5469756 m!6487744))

(declare-fun m!6488254 () Bool)

(assert (=> b!5469756 m!6488254))

(assert (=> b!5469026 d!1739044))

(declare-fun b!5469758 () Bool)

(declare-fun e!3386106 () Bool)

(declare-fun e!3386100 () Bool)

(assert (=> b!5469758 (= e!3386106 e!3386100)))

(declare-fun c!955604 () Bool)

(assert (=> b!5469758 (= c!955604 ((_ is Union!15333) (reg!15662 r!7292)))))

(declare-fun b!5469759 () Bool)

(declare-fun e!3386101 () Bool)

(declare-fun call!403579 () Bool)

(assert (=> b!5469759 (= e!3386101 call!403579)))

(declare-fun b!5469760 () Bool)

(declare-fun e!3386105 () Bool)

(assert (=> b!5469760 (= e!3386106 e!3386105)))

(declare-fun res!2330826 () Bool)

(assert (=> b!5469760 (= res!2330826 (not (nullable!5474 (reg!15662 (reg!15662 r!7292)))))))

(assert (=> b!5469760 (=> (not res!2330826) (not e!3386105))))

(declare-fun d!1739046 () Bool)

(declare-fun res!2330830 () Bool)

(declare-fun e!3386104 () Bool)

(assert (=> d!1739046 (=> res!2330830 e!3386104)))

(assert (=> d!1739046 (= res!2330830 ((_ is ElementMatch!15333) (reg!15662 r!7292)))))

(assert (=> d!1739046 (= (validRegex!7069 (reg!15662 r!7292)) e!3386104)))

(declare-fun bm!403574 () Bool)

(assert (=> bm!403574 (= call!403579 (validRegex!7069 (ite c!955604 (regTwo!31179 (reg!15662 r!7292)) (regTwo!31178 (reg!15662 r!7292)))))))

(declare-fun b!5469761 () Bool)

(assert (=> b!5469761 (= e!3386104 e!3386106)))

(declare-fun c!955603 () Bool)

(assert (=> b!5469761 (= c!955603 ((_ is Star!15333) (reg!15662 r!7292)))))

(declare-fun b!5469762 () Bool)

(declare-fun e!3386103 () Bool)

(assert (=> b!5469762 (= e!3386103 call!403579)))

(declare-fun b!5469763 () Bool)

(declare-fun res!2330829 () Bool)

(assert (=> b!5469763 (=> (not res!2330829) (not e!3386103))))

(declare-fun call!403580 () Bool)

(assert (=> b!5469763 (= res!2330829 call!403580)))

(assert (=> b!5469763 (= e!3386100 e!3386103)))

(declare-fun bm!403575 () Bool)

(declare-fun call!403581 () Bool)

(assert (=> bm!403575 (= call!403580 call!403581)))

(declare-fun bm!403576 () Bool)

(assert (=> bm!403576 (= call!403581 (validRegex!7069 (ite c!955603 (reg!15662 (reg!15662 r!7292)) (ite c!955604 (regOne!31179 (reg!15662 r!7292)) (regOne!31178 (reg!15662 r!7292))))))))

(declare-fun b!5469764 () Bool)

(declare-fun e!3386102 () Bool)

(assert (=> b!5469764 (= e!3386102 e!3386101)))

(declare-fun res!2330827 () Bool)

(assert (=> b!5469764 (=> (not res!2330827) (not e!3386101))))

(assert (=> b!5469764 (= res!2330827 call!403580)))

(declare-fun b!5469765 () Bool)

(declare-fun res!2330828 () Bool)

(assert (=> b!5469765 (=> res!2330828 e!3386102)))

(assert (=> b!5469765 (= res!2330828 (not ((_ is Concat!24178) (reg!15662 r!7292))))))

(assert (=> b!5469765 (= e!3386100 e!3386102)))

(declare-fun b!5469766 () Bool)

(assert (=> b!5469766 (= e!3386105 call!403581)))

(assert (= (and d!1739046 (not res!2330830)) b!5469761))

(assert (= (and b!5469761 c!955603) b!5469760))

(assert (= (and b!5469761 (not c!955603)) b!5469758))

(assert (= (and b!5469760 res!2330826) b!5469766))

(assert (= (and b!5469758 c!955604) b!5469763))

(assert (= (and b!5469758 (not c!955604)) b!5469765))

(assert (= (and b!5469763 res!2330829) b!5469762))

(assert (= (and b!5469765 (not res!2330828)) b!5469764))

(assert (= (and b!5469764 res!2330827) b!5469759))

(assert (= (or b!5469762 b!5469759) bm!403574))

(assert (= (or b!5469763 b!5469764) bm!403575))

(assert (= (or b!5469766 bm!403575) bm!403576))

(declare-fun m!6488256 () Bool)

(assert (=> b!5469760 m!6488256))

(declare-fun m!6488258 () Bool)

(assert (=> bm!403574 m!6488258))

(declare-fun m!6488260 () Bool)

(assert (=> bm!403576 m!6488260))

(assert (=> b!5469036 d!1739046))

(declare-fun d!1739048 () Bool)

(declare-fun lt!2234705 () Regex!15333)

(assert (=> d!1739048 (validRegex!7069 lt!2234705)))

(assert (=> d!1739048 (= lt!2234705 (generalisedUnion!1262 (unfocusZipperList!775 (Cons!62175 lt!2234589 Nil!62175))))))

(assert (=> d!1739048 (= (unfocusZipper!1075 (Cons!62175 lt!2234589 Nil!62175)) lt!2234705)))

(declare-fun bs!1264857 () Bool)

(assert (= bs!1264857 d!1739048))

(declare-fun m!6488262 () Bool)

(assert (=> bs!1264857 m!6488262))

(declare-fun m!6488264 () Bool)

(assert (=> bs!1264857 m!6488264))

(assert (=> bs!1264857 m!6488264))

(declare-fun m!6488266 () Bool)

(assert (=> bs!1264857 m!6488266))

(assert (=> b!5469006 d!1739048))

(assert (=> b!5469031 d!1738946))

(declare-fun bs!1264858 () Bool)

(declare-fun b!5469770 () Bool)

(assert (= bs!1264858 (and b!5469770 d!1738962)))

(declare-fun lambda!290983 () Int)

(assert (=> bs!1264858 (= (and (= (reg!15662 lt!2234608) (reg!15662 r!7292)) (= lt!2234608 (Star!15333 (reg!15662 r!7292)))) (= lambda!290983 lambda!290954))))

(declare-fun bs!1264859 () Bool)

(assert (= bs!1264859 (and b!5469770 b!5469548)))

(assert (=> bs!1264859 (= (and (= (reg!15662 lt!2234608) (reg!15662 r!7292)) (= lt!2234608 r!7292)) (= lambda!290983 lambda!290973))))

(declare-fun bs!1264860 () Bool)

(assert (= bs!1264860 (and b!5469770 b!5469008)))

(assert (=> bs!1264860 (not (= lambda!290983 lambda!290900))))

(declare-fun bs!1264861 () Bool)

(assert (= bs!1264861 (and b!5469770 b!5469550)))

(assert (=> bs!1264861 (not (= lambda!290983 lambda!290974))))

(assert (=> bs!1264858 (not (= lambda!290983 lambda!290953))))

(declare-fun bs!1264862 () Bool)

(assert (= bs!1264862 (and b!5469770 d!1738984)))

(assert (=> bs!1264862 (not (= lambda!290983 lambda!290962))))

(declare-fun bs!1264863 () Bool)

(assert (= bs!1264863 (and b!5469770 d!1738950)))

(assert (=> bs!1264863 (not (= lambda!290983 lambda!290946))))

(assert (=> bs!1264863 (not (= lambda!290983 lambda!290943))))

(assert (=> bs!1264860 (= (and (= (reg!15662 lt!2234608) (reg!15662 r!7292)) (= lt!2234608 r!7292)) (= lambda!290983 lambda!290901))))

(assert (=> bs!1264860 (not (= lambda!290983 lambda!290902))))

(assert (=> b!5469770 true))

(assert (=> b!5469770 true))

(declare-fun bs!1264864 () Bool)

(declare-fun b!5469772 () Bool)

(assert (= bs!1264864 (and b!5469772 d!1738962)))

(declare-fun lambda!290984 () Int)

(assert (=> bs!1264864 (not (= lambda!290984 lambda!290954))))

(declare-fun bs!1264865 () Bool)

(assert (= bs!1264865 (and b!5469772 b!5469548)))

(assert (=> bs!1264865 (not (= lambda!290984 lambda!290973))))

(declare-fun bs!1264866 () Bool)

(assert (= bs!1264866 (and b!5469772 b!5469008)))

(assert (=> bs!1264866 (not (= lambda!290984 lambda!290900))))

(declare-fun bs!1264867 () Bool)

(assert (= bs!1264867 (and b!5469772 b!5469550)))

(assert (=> bs!1264867 (= (and (= (regOne!31178 lt!2234608) (regOne!31178 r!7292)) (= (regTwo!31178 lt!2234608) (regTwo!31178 r!7292))) (= lambda!290984 lambda!290974))))

(assert (=> bs!1264864 (not (= lambda!290984 lambda!290953))))

(declare-fun bs!1264868 () Bool)

(assert (= bs!1264868 (and b!5469772 d!1738984)))

(assert (=> bs!1264868 (not (= lambda!290984 lambda!290962))))

(declare-fun bs!1264869 () Bool)

(assert (= bs!1264869 (and b!5469772 b!5469770)))

(assert (=> bs!1264869 (not (= lambda!290984 lambda!290983))))

(declare-fun bs!1264870 () Bool)

(assert (= bs!1264870 (and b!5469772 d!1738950)))

(assert (=> bs!1264870 (= (and (= (regOne!31178 lt!2234608) (reg!15662 r!7292)) (= (regTwo!31178 lt!2234608) r!7292)) (= lambda!290984 lambda!290946))))

(assert (=> bs!1264870 (not (= lambda!290984 lambda!290943))))

(assert (=> bs!1264866 (not (= lambda!290984 lambda!290901))))

(assert (=> bs!1264866 (= (and (= (regOne!31178 lt!2234608) (reg!15662 r!7292)) (= (regTwo!31178 lt!2234608) r!7292)) (= lambda!290984 lambda!290902))))

(assert (=> b!5469772 true))

(assert (=> b!5469772 true))

(declare-fun d!1739050 () Bool)

(declare-fun c!955608 () Bool)

(assert (=> d!1739050 (= c!955608 ((_ is EmptyExpr!15333) lt!2234608))))

(declare-fun e!3386110 () Bool)

(assert (=> d!1739050 (= (matchRSpec!2436 lt!2234608 s!2326) e!3386110)))

(declare-fun b!5469767 () Bool)

(declare-fun c!955605 () Bool)

(assert (=> b!5469767 (= c!955605 ((_ is ElementMatch!15333) lt!2234608))))

(declare-fun e!3386113 () Bool)

(declare-fun e!3386107 () Bool)

(assert (=> b!5469767 (= e!3386113 e!3386107)))

(declare-fun b!5469768 () Bool)

(assert (=> b!5469768 (= e!3386107 (= s!2326 (Cons!62176 (c!955399 lt!2234608) Nil!62176)))))

(declare-fun b!5469769 () Bool)

(declare-fun res!2330831 () Bool)

(declare-fun e!3386109 () Bool)

(assert (=> b!5469769 (=> res!2330831 e!3386109)))

(declare-fun call!403583 () Bool)

(assert (=> b!5469769 (= res!2330831 call!403583)))

(declare-fun e!3386112 () Bool)

(assert (=> b!5469769 (= e!3386112 e!3386109)))

(declare-fun call!403582 () Bool)

(assert (=> b!5469770 (= e!3386109 call!403582)))

(declare-fun bm!403577 () Bool)

(assert (=> bm!403577 (= call!403583 (isEmpty!34130 s!2326))))

(declare-fun b!5469771 () Bool)

(assert (=> b!5469771 (= e!3386110 e!3386113)))

(declare-fun res!2330832 () Bool)

(assert (=> b!5469771 (= res!2330832 (not ((_ is EmptyLang!15333) lt!2234608)))))

(assert (=> b!5469771 (=> (not res!2330832) (not e!3386113))))

(declare-fun c!955607 () Bool)

(declare-fun bm!403578 () Bool)

(assert (=> bm!403578 (= call!403582 (Exists!2512 (ite c!955607 lambda!290983 lambda!290984)))))

(assert (=> b!5469772 (= e!3386112 call!403582)))

(declare-fun b!5469773 () Bool)

(declare-fun e!3386108 () Bool)

(declare-fun e!3386111 () Bool)

(assert (=> b!5469773 (= e!3386108 e!3386111)))

(declare-fun res!2330833 () Bool)

(assert (=> b!5469773 (= res!2330833 (matchRSpec!2436 (regOne!31179 lt!2234608) s!2326))))

(assert (=> b!5469773 (=> res!2330833 e!3386111)))

(declare-fun b!5469774 () Bool)

(assert (=> b!5469774 (= e!3386111 (matchRSpec!2436 (regTwo!31179 lt!2234608) s!2326))))

(declare-fun b!5469775 () Bool)

(declare-fun c!955606 () Bool)

(assert (=> b!5469775 (= c!955606 ((_ is Union!15333) lt!2234608))))

(assert (=> b!5469775 (= e!3386107 e!3386108)))

(declare-fun b!5469776 () Bool)

(assert (=> b!5469776 (= e!3386108 e!3386112)))

(assert (=> b!5469776 (= c!955607 ((_ is Star!15333) lt!2234608))))

(declare-fun b!5469777 () Bool)

(assert (=> b!5469777 (= e!3386110 call!403583)))

(assert (= (and d!1739050 c!955608) b!5469777))

(assert (= (and d!1739050 (not c!955608)) b!5469771))

(assert (= (and b!5469771 res!2330832) b!5469767))

(assert (= (and b!5469767 c!955605) b!5469768))

(assert (= (and b!5469767 (not c!955605)) b!5469775))

(assert (= (and b!5469775 c!955606) b!5469773))

(assert (= (and b!5469775 (not c!955606)) b!5469776))

(assert (= (and b!5469773 (not res!2330833)) b!5469774))

(assert (= (and b!5469776 c!955607) b!5469769))

(assert (= (and b!5469776 (not c!955607)) b!5469772))

(assert (= (and b!5469769 (not res!2330831)) b!5469770))

(assert (= (or b!5469770 b!5469772) bm!403578))

(assert (= (or b!5469777 b!5469769) bm!403577))

(assert (=> bm!403577 m!6487704))

(declare-fun m!6488268 () Bool)

(assert (=> bm!403578 m!6488268))

(declare-fun m!6488270 () Bool)

(assert (=> b!5469773 m!6488270))

(declare-fun m!6488272 () Bool)

(assert (=> b!5469774 m!6488272))

(assert (=> b!5469030 d!1739050))

(declare-fun b!5469778 () Bool)

(declare-fun e!3386118 () Bool)

(declare-fun lt!2234706 () Bool)

(declare-fun call!403584 () Bool)

(assert (=> b!5469778 (= e!3386118 (= lt!2234706 call!403584))))

(declare-fun d!1739052 () Bool)

(assert (=> d!1739052 e!3386118))

(declare-fun c!955609 () Bool)

(assert (=> d!1739052 (= c!955609 ((_ is EmptyExpr!15333) lt!2234608))))

(declare-fun e!3386119 () Bool)

(assert (=> d!1739052 (= lt!2234706 e!3386119)))

(declare-fun c!955610 () Bool)

(assert (=> d!1739052 (= c!955610 (isEmpty!34130 s!2326))))

(assert (=> d!1739052 (validRegex!7069 lt!2234608)))

(assert (=> d!1739052 (= (matchR!7518 lt!2234608 s!2326) lt!2234706)))

(declare-fun b!5469779 () Bool)

(declare-fun e!3386120 () Bool)

(assert (=> b!5469779 (= e!3386120 (not (= (head!11714 s!2326) (c!955399 lt!2234608))))))

(declare-fun b!5469780 () Bool)

(declare-fun e!3386116 () Bool)

(assert (=> b!5469780 (= e!3386118 e!3386116)))

(declare-fun c!955611 () Bool)

(assert (=> b!5469780 (= c!955611 ((_ is EmptyLang!15333) lt!2234608))))

(declare-fun b!5469781 () Bool)

(declare-fun res!2330837 () Bool)

(assert (=> b!5469781 (=> res!2330837 e!3386120)))

(assert (=> b!5469781 (= res!2330837 (not (isEmpty!34130 (tail!10811 s!2326))))))

(declare-fun b!5469782 () Bool)

(declare-fun res!2330839 () Bool)

(declare-fun e!3386117 () Bool)

(assert (=> b!5469782 (=> res!2330839 e!3386117)))

(declare-fun e!3386115 () Bool)

(assert (=> b!5469782 (= res!2330839 e!3386115)))

(declare-fun res!2330836 () Bool)

(assert (=> b!5469782 (=> (not res!2330836) (not e!3386115))))

(assert (=> b!5469782 (= res!2330836 lt!2234706)))

(declare-fun b!5469783 () Bool)

(assert (=> b!5469783 (= e!3386115 (= (head!11714 s!2326) (c!955399 lt!2234608)))))

(declare-fun b!5469784 () Bool)

(assert (=> b!5469784 (= e!3386116 (not lt!2234706))))

(declare-fun b!5469785 () Bool)

(assert (=> b!5469785 (= e!3386119 (nullable!5474 lt!2234608))))

(declare-fun b!5469786 () Bool)

(assert (=> b!5469786 (= e!3386119 (matchR!7518 (derivativeStep!4318 lt!2234608 (head!11714 s!2326)) (tail!10811 s!2326)))))

(declare-fun b!5469787 () Bool)

(declare-fun res!2330838 () Bool)

(assert (=> b!5469787 (=> (not res!2330838) (not e!3386115))))

(assert (=> b!5469787 (= res!2330838 (isEmpty!34130 (tail!10811 s!2326)))))

(declare-fun b!5469788 () Bool)

(declare-fun res!2330835 () Bool)

(assert (=> b!5469788 (=> res!2330835 e!3386117)))

(assert (=> b!5469788 (= res!2330835 (not ((_ is ElementMatch!15333) lt!2234608)))))

(assert (=> b!5469788 (= e!3386116 e!3386117)))

(declare-fun b!5469789 () Bool)

(declare-fun res!2330841 () Bool)

(assert (=> b!5469789 (=> (not res!2330841) (not e!3386115))))

(assert (=> b!5469789 (= res!2330841 (not call!403584))))

(declare-fun b!5469790 () Bool)

(declare-fun e!3386114 () Bool)

(assert (=> b!5469790 (= e!3386117 e!3386114)))

(declare-fun res!2330834 () Bool)

(assert (=> b!5469790 (=> (not res!2330834) (not e!3386114))))

(assert (=> b!5469790 (= res!2330834 (not lt!2234706))))

(declare-fun b!5469791 () Bool)

(assert (=> b!5469791 (= e!3386114 e!3386120)))

(declare-fun res!2330840 () Bool)

(assert (=> b!5469791 (=> res!2330840 e!3386120)))

(assert (=> b!5469791 (= res!2330840 call!403584)))

(declare-fun bm!403579 () Bool)

(assert (=> bm!403579 (= call!403584 (isEmpty!34130 s!2326))))

(assert (= (and d!1739052 c!955610) b!5469785))

(assert (= (and d!1739052 (not c!955610)) b!5469786))

(assert (= (and d!1739052 c!955609) b!5469778))

(assert (= (and d!1739052 (not c!955609)) b!5469780))

(assert (= (and b!5469780 c!955611) b!5469784))

(assert (= (and b!5469780 (not c!955611)) b!5469788))

(assert (= (and b!5469788 (not res!2330835)) b!5469782))

(assert (= (and b!5469782 res!2330836) b!5469789))

(assert (= (and b!5469789 res!2330841) b!5469787))

(assert (= (and b!5469787 res!2330838) b!5469783))

(assert (= (and b!5469782 (not res!2330839)) b!5469790))

(assert (= (and b!5469790 res!2330834) b!5469791))

(assert (= (and b!5469791 (not res!2330840)) b!5469781))

(assert (= (and b!5469781 (not res!2330837)) b!5469779))

(assert (= (or b!5469778 b!5469791 b!5469789) bm!403579))

(assert (=> b!5469779 m!6488190))

(assert (=> b!5469783 m!6488190))

(assert (=> b!5469786 m!6488190))

(assert (=> b!5469786 m!6488190))

(declare-fun m!6488274 () Bool)

(assert (=> b!5469786 m!6488274))

(assert (=> b!5469786 m!6488194))

(assert (=> b!5469786 m!6488274))

(assert (=> b!5469786 m!6488194))

(declare-fun m!6488276 () Bool)

(assert (=> b!5469786 m!6488276))

(assert (=> bm!403579 m!6487704))

(assert (=> d!1739052 m!6487704))

(declare-fun m!6488278 () Bool)

(assert (=> d!1739052 m!6488278))

(assert (=> b!5469781 m!6488194))

(assert (=> b!5469781 m!6488194))

(assert (=> b!5469781 m!6488198))

(assert (=> b!5469787 m!6488194))

(assert (=> b!5469787 m!6488194))

(assert (=> b!5469787 m!6488198))

(declare-fun m!6488280 () Bool)

(assert (=> b!5469785 m!6488280))

(assert (=> b!5469030 d!1739052))

(declare-fun d!1739054 () Bool)

(assert (=> d!1739054 (= (matchR!7518 lt!2234608 s!2326) (matchRSpec!2436 lt!2234608 s!2326))))

(declare-fun lt!2234707 () Unit!155116)

(assert (=> d!1739054 (= lt!2234707 (choose!41592 lt!2234608 s!2326))))

(assert (=> d!1739054 (validRegex!7069 lt!2234608)))

(assert (=> d!1739054 (= (mainMatchTheorem!2436 lt!2234608 s!2326) lt!2234707)))

(declare-fun bs!1264871 () Bool)

(assert (= bs!1264871 d!1739054))

(assert (=> bs!1264871 m!6487694))

(assert (=> bs!1264871 m!6487692))

(declare-fun m!6488282 () Bool)

(assert (=> bs!1264871 m!6488282))

(assert (=> bs!1264871 m!6488278))

(assert (=> b!5469030 d!1739054))

(declare-fun d!1739056 () Bool)

(assert (=> d!1739056 (= (flatMap!1036 z!1189 lambda!290903) (choose!41583 z!1189 lambda!290903))))

(declare-fun bs!1264872 () Bool)

(assert (= bs!1264872 d!1739056))

(declare-fun m!6488284 () Bool)

(assert (=> bs!1264872 m!6488284))

(assert (=> b!5469010 d!1739056))

(declare-fun d!1739058 () Bool)

(declare-fun c!955613 () Bool)

(declare-fun e!3386121 () Bool)

(assert (=> d!1739058 (= c!955613 e!3386121)))

(declare-fun res!2330842 () Bool)

(assert (=> d!1739058 (=> (not res!2330842) (not e!3386121))))

(assert (=> d!1739058 (= res!2330842 ((_ is Cons!62174) (exprs!5217 (h!68623 zl!343))))))

(declare-fun e!3386122 () (InoxSet Context!9434))

(assert (=> d!1739058 (= (derivationStepZipperUp!685 (h!68623 zl!343) (h!68624 s!2326)) e!3386122)))

(declare-fun call!403585 () (InoxSet Context!9434))

(declare-fun b!5469792 () Bool)

(assert (=> b!5469792 (= e!3386122 ((_ map or) call!403585 (derivationStepZipperUp!685 (Context!9435 (t!375527 (exprs!5217 (h!68623 zl!343)))) (h!68624 s!2326))))))

(declare-fun b!5469793 () Bool)

(declare-fun e!3386123 () (InoxSet Context!9434))

(assert (=> b!5469793 (= e!3386122 e!3386123)))

(declare-fun c!955612 () Bool)

(assert (=> b!5469793 (= c!955612 ((_ is Cons!62174) (exprs!5217 (h!68623 zl!343))))))

(declare-fun b!5469794 () Bool)

(assert (=> b!5469794 (= e!3386121 (nullable!5474 (h!68622 (exprs!5217 (h!68623 zl!343)))))))

(declare-fun bm!403580 () Bool)

(assert (=> bm!403580 (= call!403585 (derivationStepZipperDown!759 (h!68622 (exprs!5217 (h!68623 zl!343))) (Context!9435 (t!375527 (exprs!5217 (h!68623 zl!343)))) (h!68624 s!2326)))))

(declare-fun b!5469795 () Bool)

(assert (=> b!5469795 (= e!3386123 call!403585)))

(declare-fun b!5469796 () Bool)

(assert (=> b!5469796 (= e!3386123 ((as const (Array Context!9434 Bool)) false))))

(assert (= (and d!1739058 res!2330842) b!5469794))

(assert (= (and d!1739058 c!955613) b!5469792))

(assert (= (and d!1739058 (not c!955613)) b!5469793))

(assert (= (and b!5469793 c!955612) b!5469795))

(assert (= (and b!5469793 (not c!955612)) b!5469796))

(assert (= (or b!5469792 b!5469795) bm!403580))

(declare-fun m!6488286 () Bool)

(assert (=> b!5469792 m!6488286))

(declare-fun m!6488288 () Bool)

(assert (=> b!5469794 m!6488288))

(declare-fun m!6488290 () Bool)

(assert (=> bm!403580 m!6488290))

(assert (=> b!5469010 d!1739058))

(declare-fun d!1739060 () Bool)

(assert (=> d!1739060 (= (flatMap!1036 z!1189 lambda!290903) (dynLambda!24421 lambda!290903 (h!68623 zl!343)))))

(declare-fun lt!2234708 () Unit!155116)

(assert (=> d!1739060 (= lt!2234708 (choose!41582 z!1189 (h!68623 zl!343) lambda!290903))))

(assert (=> d!1739060 (= z!1189 (store ((as const (Array Context!9434 Bool)) false) (h!68623 zl!343) true))))

(assert (=> d!1739060 (= (lemmaFlatMapOnSingletonSet!568 z!1189 (h!68623 zl!343) lambda!290903) lt!2234708)))

(declare-fun b_lambda!207937 () Bool)

(assert (=> (not b_lambda!207937) (not d!1739060)))

(declare-fun bs!1264873 () Bool)

(assert (= bs!1264873 d!1739060))

(assert (=> bs!1264873 m!6487738))

(declare-fun m!6488292 () Bool)

(assert (=> bs!1264873 m!6488292))

(declare-fun m!6488294 () Bool)

(assert (=> bs!1264873 m!6488294))

(declare-fun m!6488296 () Bool)

(assert (=> bs!1264873 m!6488296))

(assert (=> b!5469010 d!1739060))

(declare-fun d!1739062 () Bool)

(declare-fun c!955616 () Bool)

(assert (=> d!1739062 (= c!955616 (isEmpty!34130 s!2326))))

(declare-fun e!3386126 () Bool)

(assert (=> d!1739062 (= (matchZipper!1551 lt!2234596 s!2326) e!3386126)))

(declare-fun b!5469801 () Bool)

(declare-fun nullableZipper!1496 ((InoxSet Context!9434)) Bool)

(assert (=> b!5469801 (= e!3386126 (nullableZipper!1496 lt!2234596))))

(declare-fun b!5469802 () Bool)

(assert (=> b!5469802 (= e!3386126 (matchZipper!1551 (derivationStepZipper!1528 lt!2234596 (head!11714 s!2326)) (tail!10811 s!2326)))))

(assert (= (and d!1739062 c!955616) b!5469801))

(assert (= (and d!1739062 (not c!955616)) b!5469802))

(assert (=> d!1739062 m!6487704))

(declare-fun m!6488298 () Bool)

(assert (=> b!5469801 m!6488298))

(assert (=> b!5469802 m!6488190))

(assert (=> b!5469802 m!6488190))

(declare-fun m!6488300 () Bool)

(assert (=> b!5469802 m!6488300))

(assert (=> b!5469802 m!6488194))

(assert (=> b!5469802 m!6488300))

(assert (=> b!5469802 m!6488194))

(declare-fun m!6488302 () Bool)

(assert (=> b!5469802 m!6488302))

(assert (=> b!5469009 d!1739062))

(declare-fun d!1739064 () Bool)

(declare-fun c!955617 () Bool)

(assert (=> d!1739064 (= c!955617 (isEmpty!34130 (t!375529 s!2326)))))

(declare-fun e!3386127 () Bool)

(assert (=> d!1739064 (= (matchZipper!1551 (derivationStepZipper!1528 lt!2234596 (h!68624 s!2326)) (t!375529 s!2326)) e!3386127)))

(declare-fun b!5469803 () Bool)

(assert (=> b!5469803 (= e!3386127 (nullableZipper!1496 (derivationStepZipper!1528 lt!2234596 (h!68624 s!2326))))))

(declare-fun b!5469804 () Bool)

(assert (=> b!5469804 (= e!3386127 (matchZipper!1551 (derivationStepZipper!1528 (derivationStepZipper!1528 lt!2234596 (h!68624 s!2326)) (head!11714 (t!375529 s!2326))) (tail!10811 (t!375529 s!2326))))))

(assert (= (and d!1739064 c!955617) b!5469803))

(assert (= (and d!1739064 (not c!955617)) b!5469804))

(declare-fun m!6488304 () Bool)

(assert (=> d!1739064 m!6488304))

(assert (=> b!5469803 m!6487782))

(declare-fun m!6488306 () Bool)

(assert (=> b!5469803 m!6488306))

(declare-fun m!6488308 () Bool)

(assert (=> b!5469804 m!6488308))

(assert (=> b!5469804 m!6487782))

(assert (=> b!5469804 m!6488308))

(declare-fun m!6488310 () Bool)

(assert (=> b!5469804 m!6488310))

(declare-fun m!6488312 () Bool)

(assert (=> b!5469804 m!6488312))

(assert (=> b!5469804 m!6488310))

(assert (=> b!5469804 m!6488312))

(declare-fun m!6488314 () Bool)

(assert (=> b!5469804 m!6488314))

(assert (=> b!5469009 d!1739064))

(declare-fun bs!1264874 () Bool)

(declare-fun d!1739066 () Bool)

(assert (= bs!1264874 (and d!1739066 b!5469010)))

(declare-fun lambda!290985 () Int)

(assert (=> bs!1264874 (= lambda!290985 lambda!290903)))

(declare-fun bs!1264875 () Bool)

(assert (= bs!1264875 (and d!1739066 d!1738922)))

(assert (=> bs!1264875 (= lambda!290985 lambda!290928)))

(declare-fun bs!1264876 () Bool)

(assert (= bs!1264876 (and d!1739066 d!1738938)))

(assert (=> bs!1264876 (= lambda!290985 lambda!290929)))

(assert (=> d!1739066 true))

(assert (=> d!1739066 (= (derivationStepZipper!1528 lt!2234596 (h!68624 s!2326)) (flatMap!1036 lt!2234596 lambda!290985))))

(declare-fun bs!1264877 () Bool)

(assert (= bs!1264877 d!1739066))

(declare-fun m!6488316 () Bool)

(assert (=> bs!1264877 m!6488316))

(assert (=> b!5469009 d!1739066))

(declare-fun d!1739068 () Bool)

(declare-fun lt!2234709 () Regex!15333)

(assert (=> d!1739068 (validRegex!7069 lt!2234709)))

(assert (=> d!1739068 (= lt!2234709 (generalisedUnion!1262 (unfocusZipperList!775 (Cons!62175 lt!2234583 Nil!62175))))))

(assert (=> d!1739068 (= (unfocusZipper!1075 (Cons!62175 lt!2234583 Nil!62175)) lt!2234709)))

(declare-fun bs!1264878 () Bool)

(assert (= bs!1264878 d!1739068))

(declare-fun m!6488318 () Bool)

(assert (=> bs!1264878 m!6488318))

(declare-fun m!6488320 () Bool)

(assert (=> bs!1264878 m!6488320))

(assert (=> bs!1264878 m!6488320))

(declare-fun m!6488322 () Bool)

(assert (=> bs!1264878 m!6488322))

(assert (=> b!5469018 d!1739068))

(declare-fun b!5469809 () Bool)

(declare-fun e!3386130 () Bool)

(declare-fun tp!1504140 () Bool)

(declare-fun tp!1504141 () Bool)

(assert (=> b!5469809 (= e!3386130 (and tp!1504140 tp!1504141))))

(assert (=> b!5469022 (= tp!1504075 e!3386130)))

(assert (= (and b!5469022 ((_ is Cons!62174) (exprs!5217 (h!68623 zl!343)))) b!5469809))

(declare-fun condSetEmpty!35893 () Bool)

(assert (=> setNonEmpty!35887 (= condSetEmpty!35893 (= setRest!35887 ((as const (Array Context!9434 Bool)) false)))))

(declare-fun setRes!35893 () Bool)

(assert (=> setNonEmpty!35887 (= tp!1504071 setRes!35893)))

(declare-fun setIsEmpty!35893 () Bool)

(assert (=> setIsEmpty!35893 setRes!35893))

(declare-fun setElem!35893 () Context!9434)

(declare-fun tp!1504146 () Bool)

(declare-fun setNonEmpty!35893 () Bool)

(declare-fun e!3386133 () Bool)

(assert (=> setNonEmpty!35893 (= setRes!35893 (and tp!1504146 (inv!81579 setElem!35893) e!3386133))))

(declare-fun setRest!35893 () (InoxSet Context!9434))

(assert (=> setNonEmpty!35893 (= setRest!35887 ((_ map or) (store ((as const (Array Context!9434 Bool)) false) setElem!35893 true) setRest!35893))))

(declare-fun b!5469814 () Bool)

(declare-fun tp!1504147 () Bool)

(assert (=> b!5469814 (= e!3386133 tp!1504147)))

(assert (= (and setNonEmpty!35887 condSetEmpty!35893) setIsEmpty!35893))

(assert (= (and setNonEmpty!35887 (not condSetEmpty!35893)) setNonEmpty!35893))

(assert (= setNonEmpty!35893 b!5469814))

(declare-fun m!6488324 () Bool)

(assert (=> setNonEmpty!35893 m!6488324))

(declare-fun b!5469825 () Bool)

(declare-fun e!3386136 () Bool)

(assert (=> b!5469825 (= e!3386136 tp_is_empty!39919)))

(declare-fun b!5469828 () Bool)

(declare-fun tp!1504159 () Bool)

(declare-fun tp!1504160 () Bool)

(assert (=> b!5469828 (= e!3386136 (and tp!1504159 tp!1504160))))

(declare-fun b!5469826 () Bool)

(declare-fun tp!1504158 () Bool)

(declare-fun tp!1504161 () Bool)

(assert (=> b!5469826 (= e!3386136 (and tp!1504158 tp!1504161))))

(declare-fun b!5469827 () Bool)

(declare-fun tp!1504162 () Bool)

(assert (=> b!5469827 (= e!3386136 tp!1504162)))

(assert (=> b!5469020 (= tp!1504076 e!3386136)))

(assert (= (and b!5469020 ((_ is ElementMatch!15333) (reg!15662 r!7292))) b!5469825))

(assert (= (and b!5469020 ((_ is Concat!24178) (reg!15662 r!7292))) b!5469826))

(assert (= (and b!5469020 ((_ is Star!15333) (reg!15662 r!7292))) b!5469827))

(assert (= (and b!5469020 ((_ is Union!15333) (reg!15662 r!7292))) b!5469828))

(declare-fun b!5469829 () Bool)

(declare-fun e!3386137 () Bool)

(assert (=> b!5469829 (= e!3386137 tp_is_empty!39919)))

(declare-fun b!5469832 () Bool)

(declare-fun tp!1504164 () Bool)

(declare-fun tp!1504165 () Bool)

(assert (=> b!5469832 (= e!3386137 (and tp!1504164 tp!1504165))))

(declare-fun b!5469830 () Bool)

(declare-fun tp!1504163 () Bool)

(declare-fun tp!1504166 () Bool)

(assert (=> b!5469830 (= e!3386137 (and tp!1504163 tp!1504166))))

(declare-fun b!5469831 () Bool)

(declare-fun tp!1504167 () Bool)

(assert (=> b!5469831 (= e!3386137 tp!1504167)))

(assert (=> b!5469015 (= tp!1504077 e!3386137)))

(assert (= (and b!5469015 ((_ is ElementMatch!15333) (regOne!31178 r!7292))) b!5469829))

(assert (= (and b!5469015 ((_ is Concat!24178) (regOne!31178 r!7292))) b!5469830))

(assert (= (and b!5469015 ((_ is Star!15333) (regOne!31178 r!7292))) b!5469831))

(assert (= (and b!5469015 ((_ is Union!15333) (regOne!31178 r!7292))) b!5469832))

(declare-fun b!5469833 () Bool)

(declare-fun e!3386138 () Bool)

(assert (=> b!5469833 (= e!3386138 tp_is_empty!39919)))

(declare-fun b!5469836 () Bool)

(declare-fun tp!1504169 () Bool)

(declare-fun tp!1504170 () Bool)

(assert (=> b!5469836 (= e!3386138 (and tp!1504169 tp!1504170))))

(declare-fun b!5469834 () Bool)

(declare-fun tp!1504168 () Bool)

(declare-fun tp!1504171 () Bool)

(assert (=> b!5469834 (= e!3386138 (and tp!1504168 tp!1504171))))

(declare-fun b!5469835 () Bool)

(declare-fun tp!1504172 () Bool)

(assert (=> b!5469835 (= e!3386138 tp!1504172)))

(assert (=> b!5469015 (= tp!1504074 e!3386138)))

(assert (= (and b!5469015 ((_ is ElementMatch!15333) (regTwo!31178 r!7292))) b!5469833))

(assert (= (and b!5469015 ((_ is Concat!24178) (regTwo!31178 r!7292))) b!5469834))

(assert (= (and b!5469015 ((_ is Star!15333) (regTwo!31178 r!7292))) b!5469835))

(assert (= (and b!5469015 ((_ is Union!15333) (regTwo!31178 r!7292))) b!5469836))

(declare-fun b!5469837 () Bool)

(declare-fun e!3386139 () Bool)

(declare-fun tp!1504173 () Bool)

(declare-fun tp!1504174 () Bool)

(assert (=> b!5469837 (= e!3386139 (and tp!1504173 tp!1504174))))

(assert (=> b!5469014 (= tp!1504070 e!3386139)))

(assert (= (and b!5469014 ((_ is Cons!62174) (exprs!5217 setElem!35887))) b!5469837))

(declare-fun b!5469838 () Bool)

(declare-fun e!3386140 () Bool)

(assert (=> b!5469838 (= e!3386140 tp_is_empty!39919)))

(declare-fun b!5469841 () Bool)

(declare-fun tp!1504176 () Bool)

(declare-fun tp!1504177 () Bool)

(assert (=> b!5469841 (= e!3386140 (and tp!1504176 tp!1504177))))

(declare-fun b!5469839 () Bool)

(declare-fun tp!1504175 () Bool)

(declare-fun tp!1504178 () Bool)

(assert (=> b!5469839 (= e!3386140 (and tp!1504175 tp!1504178))))

(declare-fun b!5469840 () Bool)

(declare-fun tp!1504179 () Bool)

(assert (=> b!5469840 (= e!3386140 tp!1504179)))

(assert (=> b!5469019 (= tp!1504073 e!3386140)))

(assert (= (and b!5469019 ((_ is ElementMatch!15333) (regOne!31179 r!7292))) b!5469838))

(assert (= (and b!5469019 ((_ is Concat!24178) (regOne!31179 r!7292))) b!5469839))

(assert (= (and b!5469019 ((_ is Star!15333) (regOne!31179 r!7292))) b!5469840))

(assert (= (and b!5469019 ((_ is Union!15333) (regOne!31179 r!7292))) b!5469841))

(declare-fun b!5469842 () Bool)

(declare-fun e!3386141 () Bool)

(assert (=> b!5469842 (= e!3386141 tp_is_empty!39919)))

(declare-fun b!5469845 () Bool)

(declare-fun tp!1504181 () Bool)

(declare-fun tp!1504182 () Bool)

(assert (=> b!5469845 (= e!3386141 (and tp!1504181 tp!1504182))))

(declare-fun b!5469843 () Bool)

(declare-fun tp!1504180 () Bool)

(declare-fun tp!1504183 () Bool)

(assert (=> b!5469843 (= e!3386141 (and tp!1504180 tp!1504183))))

(declare-fun b!5469844 () Bool)

(declare-fun tp!1504184 () Bool)

(assert (=> b!5469844 (= e!3386141 tp!1504184)))

(assert (=> b!5469019 (= tp!1504069 e!3386141)))

(assert (= (and b!5469019 ((_ is ElementMatch!15333) (regTwo!31179 r!7292))) b!5469842))

(assert (= (and b!5469019 ((_ is Concat!24178) (regTwo!31179 r!7292))) b!5469843))

(assert (= (and b!5469019 ((_ is Star!15333) (regTwo!31179 r!7292))) b!5469844))

(assert (= (and b!5469019 ((_ is Union!15333) (regTwo!31179 r!7292))) b!5469845))

(declare-fun b!5469853 () Bool)

(declare-fun e!3386147 () Bool)

(declare-fun tp!1504189 () Bool)

(assert (=> b!5469853 (= e!3386147 tp!1504189)))

(declare-fun tp!1504190 () Bool)

(declare-fun e!3386146 () Bool)

(declare-fun b!5469852 () Bool)

(assert (=> b!5469852 (= e!3386146 (and (inv!81579 (h!68623 (t!375528 zl!343))) e!3386147 tp!1504190))))

(assert (=> b!5469033 (= tp!1504068 e!3386146)))

(assert (= b!5469852 b!5469853))

(assert (= (and b!5469033 ((_ is Cons!62175) (t!375528 zl!343))) b!5469852))

(declare-fun m!6488326 () Bool)

(assert (=> b!5469852 m!6488326))

(declare-fun b!5469858 () Bool)

(declare-fun e!3386150 () Bool)

(declare-fun tp!1504193 () Bool)

(assert (=> b!5469858 (= e!3386150 (and tp_is_empty!39919 tp!1504193))))

(assert (=> b!5469029 (= tp!1504072 e!3386150)))

(assert (= (and b!5469029 ((_ is Cons!62176) (t!375529 s!2326))) b!5469858))

(declare-fun b_lambda!207939 () Bool)

(assert (= b_lambda!207921 (or b!5469010 b_lambda!207939)))

(declare-fun bs!1264879 () Bool)

(declare-fun d!1739070 () Bool)

(assert (= bs!1264879 (and d!1739070 b!5469010)))

(assert (=> bs!1264879 (= (dynLambda!24421 lambda!290903 lt!2234589) (derivationStepZipperUp!685 lt!2234589 (h!68624 s!2326)))))

(assert (=> bs!1264879 m!6487756))

(assert (=> d!1738924 d!1739070))

(declare-fun b_lambda!207941 () Bool)

(assert (= b_lambda!207923 (or b!5469010 b_lambda!207941)))

(declare-fun bs!1264880 () Bool)

(declare-fun d!1739072 () Bool)

(assert (= bs!1264880 (and d!1739072 b!5469010)))

(assert (=> bs!1264880 (= (dynLambda!24421 lambda!290903 lt!2234594) (derivationStepZipperUp!685 lt!2234594 (h!68624 s!2326)))))

(assert (=> bs!1264880 m!6487758))

(assert (=> d!1738930 d!1739072))

(declare-fun b_lambda!207943 () Bool)

(assert (= b_lambda!207937 (or b!5469010 b_lambda!207943)))

(declare-fun bs!1264881 () Bool)

(declare-fun d!1739074 () Bool)

(assert (= bs!1264881 (and d!1739074 b!5469010)))

(assert (=> bs!1264881 (= (dynLambda!24421 lambda!290903 (h!68623 zl!343)) (derivationStepZipperUp!685 (h!68623 zl!343) (h!68624 s!2326)))))

(assert (=> bs!1264881 m!6487740))

(assert (=> d!1739060 d!1739074))

(declare-fun b_lambda!207945 () Bool)

(assert (= b_lambda!207925 (or b!5469010 b_lambda!207945)))

(declare-fun bs!1264882 () Bool)

(declare-fun d!1739076 () Bool)

(assert (= bs!1264882 (and d!1739076 b!5469010)))

(assert (=> bs!1264882 (= (dynLambda!24421 lambda!290903 lt!2234583) (derivationStepZipperUp!685 lt!2234583 (h!68624 s!2326)))))

(assert (=> bs!1264882 m!6487774))

(assert (=> d!1738998 d!1739076))

(check-sat (not bm!403578) (not bm!403577) (not b!5469832) (not bs!1264882) (not d!1739020) (not b!5469141) (not b!5469781) (not bm!403477) (not b!5469392) (not b!5469649) (not bm!403576) (not d!1739048) (not d!1738870) (not b!5469149) (not b!5469774) (not d!1739030) (not b!5469144) (not d!1738972) (not d!1739044) (not b!5469803) (not b!5469648) (not bm!403510) (not bm!403542) (not b!5469647) (not bm!403579) (not b!5469552) (not b!5469219) (not b!5469749) (not b!5469836) (not b!5469393) (not d!1739054) (not b!5469826) (not b!5469076) (not bm!403507) (not b!5469858) (not d!1738948) (not bm!403479) (not d!1738880) (not b!5469801) (not d!1739056) (not b!5469786) (not b!5469395) (not d!1738998) (not b!5469773) (not b!5469291) (not b_lambda!207939) (not b_lambda!207945) (not b!5469447) (not b!5469289) (not b!5469794) (not d!1738946) (not b!5469756) (not b!5469284) (not b!5469827) (not d!1739068) (not b!5469398) (not d!1739060) (not b!5469147) (not d!1738878) (not b!5469783) (not b!5469840) (not d!1739066) (not b!5469551) (not b!5469844) (not b!5469814) (not bm!403557) (not b!5469142) (not b!5469146) (not bm!403544) (not d!1738950) (not d!1738922) (not b!5469845) (not b!5469748) (not b!5469837) (not d!1738962) (not b!5469804) (not d!1738936) (not b!5469835) (not bs!1264880) (not d!1738984) (not d!1739004) (not bm!403517) (not b!5469479) (not b!5469744) (not b!5469779) (not b!5469828) (not b!5469853) (not b!5469760) (not b_lambda!207941) (not b!5469809) (not b!5469742) (not d!1738994) (not b!5469830) (not d!1738966) (not b!5469831) (not bm!403512) (not bm!403539) (not bm!403580) (not b!5469843) (not b!5469259) (not b!5469396) (not d!1739064) (not d!1739062) (not bm!403518) (not b!5469787) (not b!5469065) (not d!1738876) (not b!5469257) (not d!1738930) (not b!5469641) (not b!5469477) (not b!5469746) (not b!5469802) (not setNonEmpty!35893) (not b!5469750) (not b!5469839) (not b!5469399) (not bm!403574) (not b!5469841) (not bs!1264879) (not b!5469286) (not d!1739052) (not b!5469145) (not bs!1264881) (not b!5469747) (not d!1738942) (not d!1738982) (not d!1738924) (not d!1738938) (not b!5469852) (not b!5469785) (not b!5469792) (not b_lambda!207943) (not b!5469643) (not b!5469834) (not bm!403572) (not b!5469645) tp_is_empty!39919 (not d!1738940) (not bm!403556) (not d!1738944) (not bm!403545) (not bm!403519))
(check-sat)
