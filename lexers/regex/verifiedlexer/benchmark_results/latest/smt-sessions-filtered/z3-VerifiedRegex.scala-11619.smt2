; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!646362 () Bool)

(assert start!646362)

(declare-fun b!6612680 () Bool)

(assert (=> b!6612680 true))

(assert (=> b!6612680 true))

(declare-fun lambda!369332 () Int)

(declare-fun lambda!369331 () Int)

(assert (=> b!6612680 (not (= lambda!369332 lambda!369331))))

(assert (=> b!6612680 true))

(assert (=> b!6612680 true))

(declare-fun b!6612694 () Bool)

(assert (=> b!6612694 true))

(declare-fun b!6612676 () Bool)

(declare-fun e!4000660 () Bool)

(declare-fun tp_is_empty!42223 () Bool)

(declare-fun tp!1821471 () Bool)

(assert (=> b!6612676 (= e!4000660 (and tp_is_empty!42223 tp!1821471))))

(declare-fun b!6612677 () Bool)

(declare-fun res!2711667 () Bool)

(declare-fun e!4000663 () Bool)

(assert (=> b!6612677 (=> res!2711667 e!4000663)))

(declare-datatypes ((C!33240 0))(
  ( (C!33241 (val!26322 Int)) )
))
(declare-datatypes ((Regex!16485 0))(
  ( (ElementMatch!16485 (c!1218776 C!33240)) (Concat!25330 (regOne!33482 Regex!16485) (regTwo!33482 Regex!16485)) (EmptyExpr!16485) (Star!16485 (reg!16814 Regex!16485)) (EmptyLang!16485) (Union!16485 (regOne!33483 Regex!16485) (regTwo!33483 Regex!16485)) )
))
(declare-datatypes ((List!65754 0))(
  ( (Nil!65630) (Cons!65630 (h!72078 Regex!16485) (t!379408 List!65754)) )
))
(declare-datatypes ((Context!11738 0))(
  ( (Context!11739 (exprs!6369 List!65754)) )
))
(declare-datatypes ((List!65755 0))(
  ( (Nil!65631) (Cons!65631 (h!72079 Context!11738) (t!379409 List!65755)) )
))
(declare-fun zl!343 () List!65755)

(declare-fun isEmpty!37911 (List!65755) Bool)

(assert (=> b!6612677 (= res!2711667 (not (isEmpty!37911 (t!379409 zl!343))))))

(declare-fun b!6612678 () Bool)

(declare-fun e!4000665 () Bool)

(assert (=> b!6612678 (= e!4000665 tp_is_empty!42223)))

(declare-fun b!6612679 () Bool)

(declare-fun tp!1821464 () Bool)

(declare-fun tp!1821466 () Bool)

(assert (=> b!6612679 (= e!4000665 (and tp!1821464 tp!1821466))))

(declare-fun e!4000655 () Bool)

(assert (=> b!6612680 (= e!4000663 e!4000655)))

(declare-fun res!2711680 () Bool)

(assert (=> b!6612680 (=> res!2711680 e!4000655)))

(declare-fun lt!2417010 () Bool)

(declare-datatypes ((List!65756 0))(
  ( (Nil!65632) (Cons!65632 (h!72080 C!33240) (t!379410 List!65756)) )
))
(declare-fun s!2326 () List!65756)

(declare-fun lt!2417017 () Bool)

(get-info :version)

(assert (=> b!6612680 (= res!2711680 (or (not (= lt!2417017 lt!2417010)) ((_ is Nil!65632) s!2326)))))

(declare-fun Exists!3555 (Int) Bool)

(assert (=> b!6612680 (= (Exists!3555 lambda!369331) (Exists!3555 lambda!369332))))

(declare-datatypes ((Unit!159295 0))(
  ( (Unit!159296) )
))
(declare-fun lt!2417013 () Unit!159295)

(declare-fun r!7292 () Regex!16485)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2092 (Regex!16485 Regex!16485 List!65756) Unit!159295)

(assert (=> b!6612680 (= lt!2417013 (lemmaExistCutMatchRandMatchRSpecEquivalent!2092 (regOne!33482 r!7292) (regTwo!33482 r!7292) s!2326))))

(assert (=> b!6612680 (= lt!2417010 (Exists!3555 lambda!369331))))

(declare-datatypes ((tuple2!66928 0))(
  ( (tuple2!66929 (_1!36767 List!65756) (_2!36767 List!65756)) )
))
(declare-datatypes ((Option!16376 0))(
  ( (None!16375) (Some!16375 (v!52564 tuple2!66928)) )
))
(declare-fun isDefined!13079 (Option!16376) Bool)

(declare-fun findConcatSeparation!2790 (Regex!16485 Regex!16485 List!65756 List!65756 List!65756) Option!16376)

(assert (=> b!6612680 (= lt!2417010 (isDefined!13079 (findConcatSeparation!2790 (regOne!33482 r!7292) (regTwo!33482 r!7292) Nil!65632 s!2326 s!2326)))))

(declare-fun lt!2417018 () Unit!159295)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2554 (Regex!16485 Regex!16485 List!65756) Unit!159295)

(assert (=> b!6612680 (= lt!2417018 (lemmaFindConcatSeparationEquivalentToExists!2554 (regOne!33482 r!7292) (regTwo!33482 r!7292) s!2326))))

(declare-fun b!6612681 () Bool)

(declare-fun res!2711666 () Bool)

(assert (=> b!6612681 (=> res!2711666 e!4000663)))

(assert (=> b!6612681 (= res!2711666 (or ((_ is EmptyExpr!16485) r!7292) ((_ is EmptyLang!16485) r!7292) ((_ is ElementMatch!16485) r!7292) ((_ is Union!16485) r!7292) (not ((_ is Concat!25330) r!7292))))))

(declare-fun b!6612682 () Bool)

(declare-fun res!2711670 () Bool)

(assert (=> b!6612682 (=> res!2711670 e!4000663)))

(declare-fun generalisedUnion!2329 (List!65754) Regex!16485)

(declare-fun unfocusZipperList!1906 (List!65755) List!65754)

(assert (=> b!6612682 (= res!2711670 (not (= r!7292 (generalisedUnion!2329 (unfocusZipperList!1906 zl!343)))))))

(declare-fun res!2711671 () Bool)

(declare-fun e!4000664 () Bool)

(assert (=> start!646362 (=> (not res!2711671) (not e!4000664))))

(declare-fun validRegex!8221 (Regex!16485) Bool)

(assert (=> start!646362 (= res!2711671 (validRegex!8221 r!7292))))

(assert (=> start!646362 e!4000664))

(assert (=> start!646362 e!4000665))

(declare-fun condSetEmpty!45184 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11738))

(assert (=> start!646362 (= condSetEmpty!45184 (= z!1189 ((as const (Array Context!11738 Bool)) false)))))

(declare-fun setRes!45184 () Bool)

(assert (=> start!646362 setRes!45184))

(declare-fun e!4000657 () Bool)

(assert (=> start!646362 e!4000657))

(assert (=> start!646362 e!4000660))

(declare-fun b!6612683 () Bool)

(declare-fun res!2711679 () Bool)

(assert (=> b!6612683 (=> res!2711679 e!4000663)))

(assert (=> b!6612683 (= res!2711679 (not ((_ is Cons!65630) (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612684 () Bool)

(declare-fun res!2711669 () Bool)

(assert (=> b!6612684 (=> res!2711669 e!4000663)))

(declare-fun generalisedConcat!2082 (List!65754) Regex!16485)

(assert (=> b!6612684 (= res!2711669 (not (= r!7292 (generalisedConcat!2082 (exprs!6369 (h!72079 zl!343))))))))

(declare-fun b!6612685 () Bool)

(declare-fun e!4000662 () Bool)

(declare-fun e!4000658 () Bool)

(assert (=> b!6612685 (= e!4000662 e!4000658)))

(declare-fun res!2711673 () Bool)

(assert (=> b!6612685 (=> res!2711673 e!4000658)))

(declare-fun lt!2417011 () (InoxSet Context!11738))

(assert (=> b!6612685 (= res!2711673 (or (not (= lt!2417011 ((as const (Array Context!11738 Bool)) false))) (not (= r!7292 (Concat!25330 (regOne!33482 r!7292) (regTwo!33482 r!7292)))) (not (= (regOne!33482 r!7292) EmptyExpr!16485))))))

(declare-fun matchZipper!2497 ((InoxSet Context!11738) List!65756) Bool)

(assert (=> b!6612685 (not (matchZipper!2497 lt!2417011 (t!379410 s!2326)))))

(declare-fun lt!2417006 () Unit!159295)

(declare-fun lemmaEmptyZipperMatchesNothing!80 ((InoxSet Context!11738) List!65756) Unit!159295)

(assert (=> b!6612685 (= lt!2417006 (lemmaEmptyZipperMatchesNothing!80 lt!2417011 (t!379410 s!2326)))))

(declare-fun b!6612686 () Bool)

(declare-fun e!4000656 () Bool)

(declare-fun nullable!6478 (Regex!16485) Bool)

(assert (=> b!6612686 (= e!4000656 (nullable!6478 (regOne!33482 (regOne!33482 r!7292))))))

(declare-fun b!6612687 () Bool)

(declare-fun e!4000659 () Unit!159295)

(declare-fun Unit!159297 () Unit!159295)

(assert (=> b!6612687 (= e!4000659 Unit!159297)))

(declare-fun b!6612688 () Bool)

(declare-fun tp!1821463 () Bool)

(declare-fun tp!1821465 () Bool)

(assert (=> b!6612688 (= e!4000665 (and tp!1821463 tp!1821465))))

(declare-fun b!6612689 () Bool)

(declare-fun e!4000666 () Bool)

(declare-fun tp!1821467 () Bool)

(assert (=> b!6612689 (= e!4000666 tp!1821467)))

(declare-fun b!6612690 () Bool)

(declare-fun res!2711674 () Bool)

(assert (=> b!6612690 (=> res!2711674 e!4000662)))

(assert (=> b!6612690 (= res!2711674 e!4000656)))

(declare-fun res!2711672 () Bool)

(assert (=> b!6612690 (=> (not res!2711672) (not e!4000656))))

(assert (=> b!6612690 (= res!2711672 ((_ is Concat!25330) (regOne!33482 r!7292)))))

(declare-fun setIsEmpty!45184 () Bool)

(assert (=> setIsEmpty!45184 setRes!45184))

(declare-fun b!6612691 () Bool)

(declare-fun res!2711664 () Bool)

(assert (=> b!6612691 (=> (not res!2711664) (not e!4000664))))

(declare-fun unfocusZipper!2227 (List!65755) Regex!16485)

(assert (=> b!6612691 (= res!2711664 (= r!7292 (unfocusZipper!2227 zl!343)))))

(declare-fun b!6612692 () Bool)

(assert (=> b!6612692 (= e!4000664 (not e!4000663))))

(declare-fun res!2711668 () Bool)

(assert (=> b!6612692 (=> res!2711668 e!4000663)))

(assert (=> b!6612692 (= res!2711668 (not ((_ is Cons!65631) zl!343)))))

(declare-fun matchRSpec!3586 (Regex!16485 List!65756) Bool)

(assert (=> b!6612692 (= lt!2417017 (matchRSpec!3586 r!7292 s!2326))))

(declare-fun matchR!8668 (Regex!16485 List!65756) Bool)

(assert (=> b!6612692 (= lt!2417017 (matchR!8668 r!7292 s!2326))))

(declare-fun lt!2417014 () Unit!159295)

(declare-fun mainMatchTheorem!3586 (Regex!16485 List!65756) Unit!159295)

(assert (=> b!6612692 (= lt!2417014 (mainMatchTheorem!3586 r!7292 s!2326))))

(declare-fun b!6612693 () Bool)

(declare-fun res!2711678 () Bool)

(assert (=> b!6612693 (=> (not res!2711678) (not e!4000664))))

(declare-fun toList!10269 ((InoxSet Context!11738)) List!65755)

(assert (=> b!6612693 (= res!2711678 (= (toList!10269 z!1189) zl!343))))

(assert (=> b!6612694 (= e!4000655 e!4000662)))

(declare-fun res!2711677 () Bool)

(assert (=> b!6612694 (=> res!2711677 e!4000662)))

(assert (=> b!6612694 (= res!2711677 (or (and ((_ is ElementMatch!16485) (regOne!33482 r!7292)) (= (c!1218776 (regOne!33482 r!7292)) (h!72080 s!2326))) ((_ is Union!16485) (regOne!33482 r!7292))))))

(declare-fun lt!2417012 () Unit!159295)

(assert (=> b!6612694 (= lt!2417012 e!4000659)))

(declare-fun c!1218775 () Bool)

(assert (=> b!6612694 (= c!1218775 (nullable!6478 (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun lambda!369333 () Int)

(declare-fun flatMap!1990 ((InoxSet Context!11738) Int) (InoxSet Context!11738))

(declare-fun derivationStepZipperUp!1659 (Context!11738 C!33240) (InoxSet Context!11738))

(assert (=> b!6612694 (= (flatMap!1990 z!1189 lambda!369333) (derivationStepZipperUp!1659 (h!72079 zl!343) (h!72080 s!2326)))))

(declare-fun lt!2417005 () Unit!159295)

(declare-fun lemmaFlatMapOnSingletonSet!1516 ((InoxSet Context!11738) Context!11738 Int) Unit!159295)

(assert (=> b!6612694 (= lt!2417005 (lemmaFlatMapOnSingletonSet!1516 z!1189 (h!72079 zl!343) lambda!369333))))

(declare-fun lt!2417015 () (InoxSet Context!11738))

(declare-fun lt!2417016 () Context!11738)

(assert (=> b!6612694 (= lt!2417015 (derivationStepZipperUp!1659 lt!2417016 (h!72080 s!2326)))))

(declare-fun derivationStepZipperDown!1733 (Regex!16485 Context!11738 C!33240) (InoxSet Context!11738))

(assert (=> b!6612694 (= lt!2417011 (derivationStepZipperDown!1733 (h!72078 (exprs!6369 (h!72079 zl!343))) lt!2417016 (h!72080 s!2326)))))

(assert (=> b!6612694 (= lt!2417016 (Context!11739 (t!379408 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun lt!2417007 () (InoxSet Context!11738))

(assert (=> b!6612694 (= lt!2417007 (derivationStepZipperUp!1659 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343))))) (h!72080 s!2326)))))

(declare-fun b!6612695 () Bool)

(declare-fun e!4000654 () Bool)

(assert (=> b!6612695 (= e!4000654 (matchZipper!2497 lt!2417015 (t!379410 s!2326)))))

(declare-fun e!4000661 () Bool)

(declare-fun b!6612696 () Bool)

(declare-fun tp!1821468 () Bool)

(declare-fun inv!84459 (Context!11738) Bool)

(assert (=> b!6612696 (= e!4000657 (and (inv!84459 (h!72079 zl!343)) e!4000661 tp!1821468))))

(declare-fun b!6612697 () Bool)

(declare-fun tp!1821462 () Bool)

(assert (=> b!6612697 (= e!4000665 tp!1821462)))

(declare-fun b!6612698 () Bool)

(assert (=> b!6612698 (= e!4000658 (validRegex!8221 (regTwo!33482 r!7292)))))

(assert (=> b!6612698 (= (matchR!8668 (regOne!33482 r!7292) s!2326) (matchRSpec!3586 (regOne!33482 r!7292) s!2326))))

(declare-fun lt!2417008 () Unit!159295)

(assert (=> b!6612698 (= lt!2417008 (mainMatchTheorem!3586 (regOne!33482 r!7292) s!2326))))

(declare-fun b!6612699 () Bool)

(declare-fun Unit!159298 () Unit!159295)

(assert (=> b!6612699 (= e!4000659 Unit!159298)))

(declare-fun lt!2417009 () Unit!159295)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1316 ((InoxSet Context!11738) (InoxSet Context!11738) List!65756) Unit!159295)

(assert (=> b!6612699 (= lt!2417009 (lemmaZipperConcatMatchesSameAsBothZippers!1316 lt!2417011 lt!2417015 (t!379410 s!2326)))))

(declare-fun res!2711676 () Bool)

(assert (=> b!6612699 (= res!2711676 (matchZipper!2497 lt!2417011 (t!379410 s!2326)))))

(assert (=> b!6612699 (=> res!2711676 e!4000654)))

(assert (=> b!6612699 (= (matchZipper!2497 ((_ map or) lt!2417011 lt!2417015) (t!379410 s!2326)) e!4000654)))

(declare-fun b!6612700 () Bool)

(declare-fun res!2711675 () Bool)

(assert (=> b!6612700 (=> res!2711675 e!4000662)))

(assert (=> b!6612700 (= res!2711675 (or ((_ is Concat!25330) (regOne!33482 r!7292)) ((_ is Star!16485) (regOne!33482 r!7292)) (not ((_ is EmptyExpr!16485) (regOne!33482 r!7292)))))))

(declare-fun tp!1821469 () Bool)

(declare-fun setElem!45184 () Context!11738)

(declare-fun setNonEmpty!45184 () Bool)

(assert (=> setNonEmpty!45184 (= setRes!45184 (and tp!1821469 (inv!84459 setElem!45184) e!4000666))))

(declare-fun setRest!45184 () (InoxSet Context!11738))

(assert (=> setNonEmpty!45184 (= z!1189 ((_ map or) (store ((as const (Array Context!11738 Bool)) false) setElem!45184 true) setRest!45184))))

(declare-fun b!6612701 () Bool)

(declare-fun tp!1821470 () Bool)

(assert (=> b!6612701 (= e!4000661 tp!1821470)))

(declare-fun b!6612702 () Bool)

(declare-fun res!2711665 () Bool)

(assert (=> b!6612702 (=> res!2711665 e!4000655)))

(declare-fun isEmpty!37912 (List!65754) Bool)

(assert (=> b!6612702 (= res!2711665 (isEmpty!37912 (t!379408 (exprs!6369 (h!72079 zl!343)))))))

(assert (= (and start!646362 res!2711671) b!6612693))

(assert (= (and b!6612693 res!2711678) b!6612691))

(assert (= (and b!6612691 res!2711664) b!6612692))

(assert (= (and b!6612692 (not res!2711668)) b!6612677))

(assert (= (and b!6612677 (not res!2711667)) b!6612684))

(assert (= (and b!6612684 (not res!2711669)) b!6612683))

(assert (= (and b!6612683 (not res!2711679)) b!6612682))

(assert (= (and b!6612682 (not res!2711670)) b!6612681))

(assert (= (and b!6612681 (not res!2711666)) b!6612680))

(assert (= (and b!6612680 (not res!2711680)) b!6612702))

(assert (= (and b!6612702 (not res!2711665)) b!6612694))

(assert (= (and b!6612694 c!1218775) b!6612699))

(assert (= (and b!6612694 (not c!1218775)) b!6612687))

(assert (= (and b!6612699 (not res!2711676)) b!6612695))

(assert (= (and b!6612694 (not res!2711677)) b!6612690))

(assert (= (and b!6612690 res!2711672) b!6612686))

(assert (= (and b!6612690 (not res!2711674)) b!6612700))

(assert (= (and b!6612700 (not res!2711675)) b!6612685))

(assert (= (and b!6612685 (not res!2711673)) b!6612698))

(assert (= (and start!646362 ((_ is ElementMatch!16485) r!7292)) b!6612678))

(assert (= (and start!646362 ((_ is Concat!25330) r!7292)) b!6612679))

(assert (= (and start!646362 ((_ is Star!16485) r!7292)) b!6612697))

(assert (= (and start!646362 ((_ is Union!16485) r!7292)) b!6612688))

(assert (= (and start!646362 condSetEmpty!45184) setIsEmpty!45184))

(assert (= (and start!646362 (not condSetEmpty!45184)) setNonEmpty!45184))

(assert (= setNonEmpty!45184 b!6612689))

(assert (= b!6612696 b!6612701))

(assert (= (and start!646362 ((_ is Cons!65631) zl!343)) b!6612696))

(assert (= (and start!646362 ((_ is Cons!65632) s!2326)) b!6612676))

(declare-fun m!7386612 () Bool)

(assert (=> b!6612696 m!7386612))

(declare-fun m!7386614 () Bool)

(assert (=> b!6612692 m!7386614))

(declare-fun m!7386616 () Bool)

(assert (=> b!6612692 m!7386616))

(declare-fun m!7386618 () Bool)

(assert (=> b!6612692 m!7386618))

(declare-fun m!7386620 () Bool)

(assert (=> b!6612702 m!7386620))

(declare-fun m!7386622 () Bool)

(assert (=> b!6612693 m!7386622))

(declare-fun m!7386624 () Bool)

(assert (=> b!6612682 m!7386624))

(assert (=> b!6612682 m!7386624))

(declare-fun m!7386626 () Bool)

(assert (=> b!6612682 m!7386626))

(declare-fun m!7386628 () Bool)

(assert (=> b!6612695 m!7386628))

(declare-fun m!7386630 () Bool)

(assert (=> b!6612677 m!7386630))

(declare-fun m!7386632 () Bool)

(assert (=> b!6612698 m!7386632))

(declare-fun m!7386634 () Bool)

(assert (=> b!6612698 m!7386634))

(declare-fun m!7386636 () Bool)

(assert (=> b!6612698 m!7386636))

(declare-fun m!7386638 () Bool)

(assert (=> b!6612698 m!7386638))

(declare-fun m!7386640 () Bool)

(assert (=> setNonEmpty!45184 m!7386640))

(declare-fun m!7386642 () Bool)

(assert (=> b!6612680 m!7386642))

(declare-fun m!7386644 () Bool)

(assert (=> b!6612680 m!7386644))

(declare-fun m!7386646 () Bool)

(assert (=> b!6612680 m!7386646))

(assert (=> b!6612680 m!7386642))

(declare-fun m!7386648 () Bool)

(assert (=> b!6612680 m!7386648))

(declare-fun m!7386650 () Bool)

(assert (=> b!6612680 m!7386650))

(assert (=> b!6612680 m!7386648))

(declare-fun m!7386652 () Bool)

(assert (=> b!6612680 m!7386652))

(declare-fun m!7386654 () Bool)

(assert (=> b!6612685 m!7386654))

(declare-fun m!7386656 () Bool)

(assert (=> b!6612685 m!7386656))

(declare-fun m!7386658 () Bool)

(assert (=> b!6612686 m!7386658))

(declare-fun m!7386660 () Bool)

(assert (=> b!6612694 m!7386660))

(declare-fun m!7386662 () Bool)

(assert (=> b!6612694 m!7386662))

(declare-fun m!7386664 () Bool)

(assert (=> b!6612694 m!7386664))

(declare-fun m!7386666 () Bool)

(assert (=> b!6612694 m!7386666))

(declare-fun m!7386668 () Bool)

(assert (=> b!6612694 m!7386668))

(declare-fun m!7386670 () Bool)

(assert (=> b!6612694 m!7386670))

(declare-fun m!7386672 () Bool)

(assert (=> b!6612694 m!7386672))

(declare-fun m!7386674 () Bool)

(assert (=> start!646362 m!7386674))

(declare-fun m!7386676 () Bool)

(assert (=> b!6612691 m!7386676))

(declare-fun m!7386678 () Bool)

(assert (=> b!6612699 m!7386678))

(assert (=> b!6612699 m!7386654))

(declare-fun m!7386680 () Bool)

(assert (=> b!6612699 m!7386680))

(declare-fun m!7386682 () Bool)

(assert (=> b!6612684 m!7386682))

(check-sat (not setNonEmpty!45184) (not b!6612679) (not start!646362) (not b!6612702) (not b!6612695) (not b!6612699) (not b!6612693) (not b!6612688) (not b!6612697) (not b!6612680) (not b!6612696) (not b!6612701) (not b!6612685) (not b!6612686) (not b!6612692) (not b!6612677) (not b!6612691) (not b!6612676) (not b!6612689) (not b!6612682) (not b!6612684) tp_is_empty!42223 (not b!6612698) (not b!6612694))
(check-sat)
(get-model)

(declare-fun b!6612759 () Bool)

(declare-fun e!4000697 () Bool)

(declare-fun lt!2417030 () Regex!16485)

(declare-fun isEmptyExpr!1858 (Regex!16485) Bool)

(assert (=> b!6612759 (= e!4000697 (isEmptyExpr!1858 lt!2417030))))

(declare-fun b!6612760 () Bool)

(declare-fun e!4000699 () Bool)

(assert (=> b!6612760 (= e!4000699 (isEmpty!37912 (t!379408 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612761 () Bool)

(declare-fun e!4000695 () Bool)

(declare-fun head!13413 (List!65754) Regex!16485)

(assert (=> b!6612761 (= e!4000695 (= lt!2417030 (head!13413 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612762 () Bool)

(declare-fun e!4000698 () Bool)

(assert (=> b!6612762 (= e!4000698 e!4000697)))

(declare-fun c!1218801 () Bool)

(assert (=> b!6612762 (= c!1218801 (isEmpty!37912 (exprs!6369 (h!72079 zl!343))))))

(declare-fun b!6612764 () Bool)

(declare-fun isConcat!1381 (Regex!16485) Bool)

(assert (=> b!6612764 (= e!4000695 (isConcat!1381 lt!2417030))))

(declare-fun b!6612765 () Bool)

(assert (=> b!6612765 (= e!4000697 e!4000695)))

(declare-fun c!1218799 () Bool)

(declare-fun tail!12498 (List!65754) List!65754)

(assert (=> b!6612765 (= c!1218799 (isEmpty!37912 (tail!12498 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612766 () Bool)

(declare-fun e!4000700 () Regex!16485)

(assert (=> b!6612766 (= e!4000700 EmptyExpr!16485)))

(declare-fun b!6612767 () Bool)

(assert (=> b!6612767 (= e!4000700 (Concat!25330 (h!72078 (exprs!6369 (h!72079 zl!343))) (generalisedConcat!2082 (t!379408 (exprs!6369 (h!72079 zl!343))))))))

(declare-fun b!6612768 () Bool)

(declare-fun e!4000696 () Regex!16485)

(assert (=> b!6612768 (= e!4000696 e!4000700)))

(declare-fun c!1218800 () Bool)

(assert (=> b!6612768 (= c!1218800 ((_ is Cons!65630) (exprs!6369 (h!72079 zl!343))))))

(declare-fun b!6612763 () Bool)

(assert (=> b!6612763 (= e!4000696 (h!72078 (exprs!6369 (h!72079 zl!343))))))

(declare-fun d!2073116 () Bool)

(assert (=> d!2073116 e!4000698))

(declare-fun res!2711688 () Bool)

(assert (=> d!2073116 (=> (not res!2711688) (not e!4000698))))

(assert (=> d!2073116 (= res!2711688 (validRegex!8221 lt!2417030))))

(assert (=> d!2073116 (= lt!2417030 e!4000696)))

(declare-fun c!1218802 () Bool)

(assert (=> d!2073116 (= c!1218802 e!4000699)))

(declare-fun res!2711687 () Bool)

(assert (=> d!2073116 (=> (not res!2711687) (not e!4000699))))

(assert (=> d!2073116 (= res!2711687 ((_ is Cons!65630) (exprs!6369 (h!72079 zl!343))))))

(declare-fun lambda!369339 () Int)

(declare-fun forall!15681 (List!65754 Int) Bool)

(assert (=> d!2073116 (forall!15681 (exprs!6369 (h!72079 zl!343)) lambda!369339)))

(assert (=> d!2073116 (= (generalisedConcat!2082 (exprs!6369 (h!72079 zl!343))) lt!2417030)))

(assert (= (and d!2073116 res!2711687) b!6612760))

(assert (= (and d!2073116 c!1218802) b!6612763))

(assert (= (and d!2073116 (not c!1218802)) b!6612768))

(assert (= (and b!6612768 c!1218800) b!6612767))

(assert (= (and b!6612768 (not c!1218800)) b!6612766))

(assert (= (and d!2073116 res!2711688) b!6612762))

(assert (= (and b!6612762 c!1218801) b!6612759))

(assert (= (and b!6612762 (not c!1218801)) b!6612765))

(assert (= (and b!6612765 c!1218799) b!6612761))

(assert (= (and b!6612765 (not c!1218799)) b!6612764))

(declare-fun m!7386718 () Bool)

(assert (=> b!6612759 m!7386718))

(assert (=> b!6612760 m!7386620))

(declare-fun m!7386720 () Bool)

(assert (=> b!6612765 m!7386720))

(assert (=> b!6612765 m!7386720))

(declare-fun m!7386722 () Bool)

(assert (=> b!6612765 m!7386722))

(declare-fun m!7386724 () Bool)

(assert (=> d!2073116 m!7386724))

(declare-fun m!7386726 () Bool)

(assert (=> d!2073116 m!7386726))

(declare-fun m!7386728 () Bool)

(assert (=> b!6612767 m!7386728))

(declare-fun m!7386730 () Bool)

(assert (=> b!6612764 m!7386730))

(declare-fun m!7386732 () Bool)

(assert (=> b!6612762 m!7386732))

(declare-fun m!7386734 () Bool)

(assert (=> b!6612761 m!7386734))

(assert (=> b!6612684 d!2073116))

(declare-fun d!2073138 () Bool)

(declare-fun e!4000709 () Bool)

(assert (=> d!2073138 e!4000709))

(declare-fun res!2711692 () Bool)

(assert (=> d!2073138 (=> (not res!2711692) (not e!4000709))))

(declare-fun lt!2417033 () List!65755)

(declare-fun noDuplicate!2285 (List!65755) Bool)

(assert (=> d!2073138 (= res!2711692 (noDuplicate!2285 lt!2417033))))

(declare-fun choose!49403 ((InoxSet Context!11738)) List!65755)

(assert (=> d!2073138 (= lt!2417033 (choose!49403 z!1189))))

(assert (=> d!2073138 (= (toList!10269 z!1189) lt!2417033)))

(declare-fun b!6612782 () Bool)

(declare-fun content!12659 (List!65755) (InoxSet Context!11738))

(assert (=> b!6612782 (= e!4000709 (= (content!12659 lt!2417033) z!1189))))

(assert (= (and d!2073138 res!2711692) b!6612782))

(declare-fun m!7386748 () Bool)

(assert (=> d!2073138 m!7386748))

(declare-fun m!7386750 () Bool)

(assert (=> d!2073138 m!7386750))

(declare-fun m!7386752 () Bool)

(assert (=> b!6612782 m!7386752))

(assert (=> b!6612693 d!2073138))

(declare-fun d!2073144 () Bool)

(declare-fun c!1218820 () Bool)

(declare-fun isEmpty!37915 (List!65756) Bool)

(assert (=> d!2073144 (= c!1218820 (isEmpty!37915 (t!379410 s!2326)))))

(declare-fun e!4000727 () Bool)

(assert (=> d!2073144 (= (matchZipper!2497 lt!2417015 (t!379410 s!2326)) e!4000727)))

(declare-fun b!6612812 () Bool)

(declare-fun nullableZipper!2226 ((InoxSet Context!11738)) Bool)

(assert (=> b!6612812 (= e!4000727 (nullableZipper!2226 lt!2417015))))

(declare-fun b!6612813 () Bool)

(declare-fun derivationStepZipper!2451 ((InoxSet Context!11738) C!33240) (InoxSet Context!11738))

(declare-fun head!13414 (List!65756) C!33240)

(declare-fun tail!12499 (List!65756) List!65756)

(assert (=> b!6612813 (= e!4000727 (matchZipper!2497 (derivationStepZipper!2451 lt!2417015 (head!13414 (t!379410 s!2326))) (tail!12499 (t!379410 s!2326))))))

(assert (= (and d!2073144 c!1218820) b!6612812))

(assert (= (and d!2073144 (not c!1218820)) b!6612813))

(declare-fun m!7386770 () Bool)

(assert (=> d!2073144 m!7386770))

(declare-fun m!7386772 () Bool)

(assert (=> b!6612812 m!7386772))

(declare-fun m!7386774 () Bool)

(assert (=> b!6612813 m!7386774))

(assert (=> b!6612813 m!7386774))

(declare-fun m!7386776 () Bool)

(assert (=> b!6612813 m!7386776))

(declare-fun m!7386778 () Bool)

(assert (=> b!6612813 m!7386778))

(assert (=> b!6612813 m!7386776))

(assert (=> b!6612813 m!7386778))

(declare-fun m!7386780 () Bool)

(assert (=> b!6612813 m!7386780))

(assert (=> b!6612695 d!2073144))

(declare-fun d!2073152 () Bool)

(declare-fun c!1218821 () Bool)

(assert (=> d!2073152 (= c!1218821 (isEmpty!37915 (t!379410 s!2326)))))

(declare-fun e!4000728 () Bool)

(assert (=> d!2073152 (= (matchZipper!2497 lt!2417011 (t!379410 s!2326)) e!4000728)))

(declare-fun b!6612814 () Bool)

(assert (=> b!6612814 (= e!4000728 (nullableZipper!2226 lt!2417011))))

(declare-fun b!6612815 () Bool)

(assert (=> b!6612815 (= e!4000728 (matchZipper!2497 (derivationStepZipper!2451 lt!2417011 (head!13414 (t!379410 s!2326))) (tail!12499 (t!379410 s!2326))))))

(assert (= (and d!2073152 c!1218821) b!6612814))

(assert (= (and d!2073152 (not c!1218821)) b!6612815))

(assert (=> d!2073152 m!7386770))

(declare-fun m!7386782 () Bool)

(assert (=> b!6612814 m!7386782))

(assert (=> b!6612815 m!7386774))

(assert (=> b!6612815 m!7386774))

(declare-fun m!7386784 () Bool)

(assert (=> b!6612815 m!7386784))

(assert (=> b!6612815 m!7386778))

(assert (=> b!6612815 m!7386784))

(assert (=> b!6612815 m!7386778))

(declare-fun m!7386786 () Bool)

(assert (=> b!6612815 m!7386786))

(assert (=> b!6612685 d!2073152))

(declare-fun d!2073154 () Bool)

(assert (=> d!2073154 (not (matchZipper!2497 lt!2417011 (t!379410 s!2326)))))

(declare-fun lt!2417042 () Unit!159295)

(declare-fun choose!49404 ((InoxSet Context!11738) List!65756) Unit!159295)

(assert (=> d!2073154 (= lt!2417042 (choose!49404 lt!2417011 (t!379410 s!2326)))))

(assert (=> d!2073154 (= lt!2417011 ((as const (Array Context!11738 Bool)) false))))

(assert (=> d!2073154 (= (lemmaEmptyZipperMatchesNothing!80 lt!2417011 (t!379410 s!2326)) lt!2417042)))

(declare-fun bs!1695385 () Bool)

(assert (= bs!1695385 d!2073154))

(assert (=> bs!1695385 m!7386654))

(declare-fun m!7386788 () Bool)

(assert (=> bs!1695385 m!7386788))

(assert (=> b!6612685 d!2073154))

(declare-fun d!2073156 () Bool)

(declare-fun nullableFct!2400 (Regex!16485) Bool)

(assert (=> d!2073156 (= (nullable!6478 (h!72078 (exprs!6369 (h!72079 zl!343)))) (nullableFct!2400 (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun bs!1695386 () Bool)

(assert (= bs!1695386 d!2073156))

(declare-fun m!7386790 () Bool)

(assert (=> bs!1695386 m!7386790))

(assert (=> b!6612694 d!2073156))

(declare-fun b!6612857 () Bool)

(declare-fun e!4000754 () (InoxSet Context!11738))

(declare-fun call!579311 () (InoxSet Context!11738))

(assert (=> b!6612857 (= e!4000754 call!579311)))

(declare-fun b!6612858 () Bool)

(declare-fun e!4000753 () (InoxSet Context!11738))

(assert (=> b!6612858 (= e!4000753 ((_ map or) call!579311 (derivationStepZipperUp!1659 (Context!11739 (t!379408 (exprs!6369 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343)))))))) (h!72080 s!2326))))))

(declare-fun b!6612859 () Bool)

(assert (=> b!6612859 (= e!4000754 ((as const (Array Context!11738 Bool)) false))))

(declare-fun bm!579306 () Bool)

(assert (=> bm!579306 (= call!579311 (derivationStepZipperDown!1733 (h!72078 (exprs!6369 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343))))))) (Context!11739 (t!379408 (exprs!6369 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343)))))))) (h!72080 s!2326)))))

(declare-fun b!6612861 () Bool)

(declare-fun e!4000752 () Bool)

(assert (=> b!6612861 (= e!4000752 (nullable!6478 (h!72078 (exprs!6369 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343)))))))))))

(declare-fun b!6612860 () Bool)

(assert (=> b!6612860 (= e!4000753 e!4000754)))

(declare-fun c!1218833 () Bool)

(assert (=> b!6612860 (= c!1218833 ((_ is Cons!65630) (exprs!6369 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343))))))))))

(declare-fun d!2073158 () Bool)

(declare-fun c!1218832 () Bool)

(assert (=> d!2073158 (= c!1218832 e!4000752)))

(declare-fun res!2711719 () Bool)

(assert (=> d!2073158 (=> (not res!2711719) (not e!4000752))))

(assert (=> d!2073158 (= res!2711719 ((_ is Cons!65630) (exprs!6369 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343))))))))))

(assert (=> d!2073158 (= (derivationStepZipperUp!1659 (Context!11739 (Cons!65630 (h!72078 (exprs!6369 (h!72079 zl!343))) (t!379408 (exprs!6369 (h!72079 zl!343))))) (h!72080 s!2326)) e!4000753)))

(assert (= (and d!2073158 res!2711719) b!6612861))

(assert (= (and d!2073158 c!1218832) b!6612858))

(assert (= (and d!2073158 (not c!1218832)) b!6612860))

(assert (= (and b!6612860 c!1218833) b!6612857))

(assert (= (and b!6612860 (not c!1218833)) b!6612859))

(assert (= (or b!6612858 b!6612857) bm!579306))

(declare-fun m!7386824 () Bool)

(assert (=> b!6612858 m!7386824))

(declare-fun m!7386826 () Bool)

(assert (=> bm!579306 m!7386826))

(declare-fun m!7386828 () Bool)

(assert (=> b!6612861 m!7386828))

(assert (=> b!6612694 d!2073158))

(declare-fun b!6612946 () Bool)

(declare-fun e!4000807 () (InoxSet Context!11738))

(declare-fun call!579328 () (InoxSet Context!11738))

(declare-fun call!579332 () (InoxSet Context!11738))

(assert (=> b!6612946 (= e!4000807 ((_ map or) call!579328 call!579332))))

(declare-fun b!6612947 () Bool)

(declare-fun e!4000809 () (InoxSet Context!11738))

(declare-fun call!579330 () (InoxSet Context!11738))

(assert (=> b!6612947 (= e!4000809 ((_ map or) call!579332 call!579330))))

(declare-fun call!579329 () List!65754)

(declare-fun c!1218865 () Bool)

(declare-fun c!1218866 () Bool)

(declare-fun bm!579323 () Bool)

(declare-fun c!1218864 () Bool)

(assert (=> bm!579323 (= call!579328 (derivationStepZipperDown!1733 (ite c!1218866 (regOne!33483 (h!72078 (exprs!6369 (h!72079 zl!343)))) (ite c!1218865 (regTwo!33482 (h!72078 (exprs!6369 (h!72079 zl!343)))) (ite c!1218864 (regOne!33482 (h!72078 (exprs!6369 (h!72079 zl!343)))) (reg!16814 (h!72078 (exprs!6369 (h!72079 zl!343))))))) (ite (or c!1218866 c!1218865) lt!2417016 (Context!11739 call!579329)) (h!72080 s!2326)))))

(declare-fun b!6612948 () Bool)

(declare-fun e!4000810 () (InoxSet Context!11738))

(assert (=> b!6612948 (= e!4000810 (store ((as const (Array Context!11738 Bool)) false) lt!2417016 true))))

(declare-fun b!6612949 () Bool)

(declare-fun c!1218863 () Bool)

(assert (=> b!6612949 (= c!1218863 ((_ is Star!16485) (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun e!4000808 () (InoxSet Context!11738))

(declare-fun e!4000806 () (InoxSet Context!11738))

(assert (=> b!6612949 (= e!4000808 e!4000806)))

(declare-fun bm!579324 () Bool)

(assert (=> bm!579324 (= call!579330 call!579328)))

(declare-fun call!579335 () List!65754)

(declare-fun bm!579325 () Bool)

(declare-fun $colon$colon!2322 (List!65754 Regex!16485) List!65754)

(assert (=> bm!579325 (= call!579335 ($colon$colon!2322 (exprs!6369 lt!2417016) (ite (or c!1218865 c!1218864) (regTwo!33482 (h!72078 (exprs!6369 (h!72079 zl!343)))) (h!72078 (exprs!6369 (h!72079 zl!343))))))))

(declare-fun b!6612950 () Bool)

(assert (=> b!6612950 (= e!4000810 e!4000807)))

(assert (=> b!6612950 (= c!1218866 ((_ is Union!16485) (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612951 () Bool)

(assert (=> b!6612951 (= e!4000809 e!4000808)))

(assert (=> b!6612951 (= c!1218864 ((_ is Concat!25330) (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612952 () Bool)

(declare-fun call!579331 () (InoxSet Context!11738))

(assert (=> b!6612952 (= e!4000806 call!579331)))

(declare-fun bm!579326 () Bool)

(assert (=> bm!579326 (= call!579331 call!579330)))

(declare-fun b!6612953 () Bool)

(declare-fun e!4000811 () Bool)

(assert (=> b!6612953 (= e!4000811 (nullable!6478 (regOne!33482 (h!72078 (exprs!6369 (h!72079 zl!343))))))))

(declare-fun bm!579327 () Bool)

(assert (=> bm!579327 (= call!579332 (derivationStepZipperDown!1733 (ite c!1218866 (regTwo!33483 (h!72078 (exprs!6369 (h!72079 zl!343)))) (regOne!33482 (h!72078 (exprs!6369 (h!72079 zl!343))))) (ite c!1218866 lt!2417016 (Context!11739 call!579335)) (h!72080 s!2326)))))

(declare-fun d!2073168 () Bool)

(declare-fun c!1218867 () Bool)

(assert (=> d!2073168 (= c!1218867 (and ((_ is ElementMatch!16485) (h!72078 (exprs!6369 (h!72079 zl!343)))) (= (c!1218776 (h!72078 (exprs!6369 (h!72079 zl!343)))) (h!72080 s!2326))))))

(assert (=> d!2073168 (= (derivationStepZipperDown!1733 (h!72078 (exprs!6369 (h!72079 zl!343))) lt!2417016 (h!72080 s!2326)) e!4000810)))

(declare-fun b!6612954 () Bool)

(assert (=> b!6612954 (= e!4000808 call!579331)))

(declare-fun b!6612955 () Bool)

(assert (=> b!6612955 (= c!1218865 e!4000811)))

(declare-fun res!2711746 () Bool)

(assert (=> b!6612955 (=> (not res!2711746) (not e!4000811))))

(assert (=> b!6612955 (= res!2711746 ((_ is Concat!25330) (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(assert (=> b!6612955 (= e!4000807 e!4000809)))

(declare-fun b!6612956 () Bool)

(assert (=> b!6612956 (= e!4000806 ((as const (Array Context!11738 Bool)) false))))

(declare-fun bm!579328 () Bool)

(assert (=> bm!579328 (= call!579329 call!579335)))

(assert (= (and d!2073168 c!1218867) b!6612948))

(assert (= (and d!2073168 (not c!1218867)) b!6612950))

(assert (= (and b!6612950 c!1218866) b!6612946))

(assert (= (and b!6612950 (not c!1218866)) b!6612955))

(assert (= (and b!6612955 res!2711746) b!6612953))

(assert (= (and b!6612955 c!1218865) b!6612947))

(assert (= (and b!6612955 (not c!1218865)) b!6612951))

(assert (= (and b!6612951 c!1218864) b!6612954))

(assert (= (and b!6612951 (not c!1218864)) b!6612949))

(assert (= (and b!6612949 c!1218863) b!6612952))

(assert (= (and b!6612949 (not c!1218863)) b!6612956))

(assert (= (or b!6612954 b!6612952) bm!579328))

(assert (= (or b!6612954 b!6612952) bm!579326))

(assert (= (or b!6612947 bm!579328) bm!579325))

(assert (= (or b!6612947 bm!579326) bm!579324))

(assert (= (or b!6612946 b!6612947) bm!579327))

(assert (= (or b!6612946 bm!579324) bm!579323))

(declare-fun m!7386862 () Bool)

(assert (=> b!6612953 m!7386862))

(declare-fun m!7386864 () Bool)

(assert (=> bm!579327 m!7386864))

(declare-fun m!7386866 () Bool)

(assert (=> bm!579325 m!7386866))

(declare-fun m!7386868 () Bool)

(assert (=> bm!579323 m!7386868))

(declare-fun m!7386870 () Bool)

(assert (=> b!6612948 m!7386870))

(assert (=> b!6612694 d!2073168))

(declare-fun d!2073178 () Bool)

(declare-fun dynLambda!26136 (Int Context!11738) (InoxSet Context!11738))

(assert (=> d!2073178 (= (flatMap!1990 z!1189 lambda!369333) (dynLambda!26136 lambda!369333 (h!72079 zl!343)))))

(declare-fun lt!2417062 () Unit!159295)

(declare-fun choose!49407 ((InoxSet Context!11738) Context!11738 Int) Unit!159295)

(assert (=> d!2073178 (= lt!2417062 (choose!49407 z!1189 (h!72079 zl!343) lambda!369333))))

(assert (=> d!2073178 (= z!1189 (store ((as const (Array Context!11738 Bool)) false) (h!72079 zl!343) true))))

(assert (=> d!2073178 (= (lemmaFlatMapOnSingletonSet!1516 z!1189 (h!72079 zl!343) lambda!369333) lt!2417062)))

(declare-fun b_lambda!250155 () Bool)

(assert (=> (not b_lambda!250155) (not d!2073178)))

(declare-fun bs!1695398 () Bool)

(assert (= bs!1695398 d!2073178))

(assert (=> bs!1695398 m!7386666))

(declare-fun m!7386878 () Bool)

(assert (=> bs!1695398 m!7386878))

(declare-fun m!7386880 () Bool)

(assert (=> bs!1695398 m!7386880))

(declare-fun m!7386882 () Bool)

(assert (=> bs!1695398 m!7386882))

(assert (=> b!6612694 d!2073178))

(declare-fun d!2073182 () Bool)

(declare-fun choose!49408 ((InoxSet Context!11738) Int) (InoxSet Context!11738))

(assert (=> d!2073182 (= (flatMap!1990 z!1189 lambda!369333) (choose!49408 z!1189 lambda!369333))))

(declare-fun bs!1695399 () Bool)

(assert (= bs!1695399 d!2073182))

(declare-fun m!7386884 () Bool)

(assert (=> bs!1695399 m!7386884))

(assert (=> b!6612694 d!2073182))

(declare-fun b!6612994 () Bool)

(declare-fun e!4000835 () (InoxSet Context!11738))

(declare-fun call!579341 () (InoxSet Context!11738))

(assert (=> b!6612994 (= e!4000835 call!579341)))

(declare-fun e!4000834 () (InoxSet Context!11738))

(declare-fun b!6612995 () Bool)

(assert (=> b!6612995 (= e!4000834 ((_ map or) call!579341 (derivationStepZipperUp!1659 (Context!11739 (t!379408 (exprs!6369 (h!72079 zl!343)))) (h!72080 s!2326))))))

(declare-fun b!6612996 () Bool)

(assert (=> b!6612996 (= e!4000835 ((as const (Array Context!11738 Bool)) false))))

(declare-fun bm!579336 () Bool)

(assert (=> bm!579336 (= call!579341 (derivationStepZipperDown!1733 (h!72078 (exprs!6369 (h!72079 zl!343))) (Context!11739 (t!379408 (exprs!6369 (h!72079 zl!343)))) (h!72080 s!2326)))))

(declare-fun b!6612998 () Bool)

(declare-fun e!4000833 () Bool)

(assert (=> b!6612998 (= e!4000833 (nullable!6478 (h!72078 (exprs!6369 (h!72079 zl!343)))))))

(declare-fun b!6612997 () Bool)

(assert (=> b!6612997 (= e!4000834 e!4000835)))

(declare-fun c!1218877 () Bool)

(assert (=> b!6612997 (= c!1218877 ((_ is Cons!65630) (exprs!6369 (h!72079 zl!343))))))

(declare-fun d!2073184 () Bool)

(declare-fun c!1218876 () Bool)

(assert (=> d!2073184 (= c!1218876 e!4000833)))

(declare-fun res!2711768 () Bool)

(assert (=> d!2073184 (=> (not res!2711768) (not e!4000833))))

(assert (=> d!2073184 (= res!2711768 ((_ is Cons!65630) (exprs!6369 (h!72079 zl!343))))))

(assert (=> d!2073184 (= (derivationStepZipperUp!1659 (h!72079 zl!343) (h!72080 s!2326)) e!4000834)))

(assert (= (and d!2073184 res!2711768) b!6612998))

(assert (= (and d!2073184 c!1218876) b!6612995))

(assert (= (and d!2073184 (not c!1218876)) b!6612997))

(assert (= (and b!6612997 c!1218877) b!6612994))

(assert (= (and b!6612997 (not c!1218877)) b!6612996))

(assert (= (or b!6612995 b!6612994) bm!579336))

(declare-fun m!7386886 () Bool)

(assert (=> b!6612995 m!7386886))

(declare-fun m!7386888 () Bool)

(assert (=> bm!579336 m!7386888))

(assert (=> b!6612998 m!7386668))

(assert (=> b!6612694 d!2073184))

(declare-fun b!6612999 () Bool)

(declare-fun e!4000838 () (InoxSet Context!11738))

(declare-fun call!579342 () (InoxSet Context!11738))

(assert (=> b!6612999 (= e!4000838 call!579342)))

(declare-fun e!4000837 () (InoxSet Context!11738))

(declare-fun b!6613000 () Bool)

(assert (=> b!6613000 (= e!4000837 ((_ map or) call!579342 (derivationStepZipperUp!1659 (Context!11739 (t!379408 (exprs!6369 lt!2417016))) (h!72080 s!2326))))))

(declare-fun b!6613001 () Bool)

(assert (=> b!6613001 (= e!4000838 ((as const (Array Context!11738 Bool)) false))))

(declare-fun bm!579337 () Bool)

(assert (=> bm!579337 (= call!579342 (derivationStepZipperDown!1733 (h!72078 (exprs!6369 lt!2417016)) (Context!11739 (t!379408 (exprs!6369 lt!2417016))) (h!72080 s!2326)))))

(declare-fun b!6613003 () Bool)

(declare-fun e!4000836 () Bool)

(assert (=> b!6613003 (= e!4000836 (nullable!6478 (h!72078 (exprs!6369 lt!2417016))))))

(declare-fun b!6613002 () Bool)

(assert (=> b!6613002 (= e!4000837 e!4000838)))

(declare-fun c!1218879 () Bool)

(assert (=> b!6613002 (= c!1218879 ((_ is Cons!65630) (exprs!6369 lt!2417016)))))

(declare-fun d!2073186 () Bool)

(declare-fun c!1218878 () Bool)

(assert (=> d!2073186 (= c!1218878 e!4000836)))

(declare-fun res!2711769 () Bool)

(assert (=> d!2073186 (=> (not res!2711769) (not e!4000836))))

(assert (=> d!2073186 (= res!2711769 ((_ is Cons!65630) (exprs!6369 lt!2417016)))))

(assert (=> d!2073186 (= (derivationStepZipperUp!1659 lt!2417016 (h!72080 s!2326)) e!4000837)))

(assert (= (and d!2073186 res!2711769) b!6613003))

(assert (= (and d!2073186 c!1218878) b!6613000))

(assert (= (and d!2073186 (not c!1218878)) b!6613002))

(assert (= (and b!6613002 c!1218879) b!6612999))

(assert (= (and b!6613002 (not c!1218879)) b!6613001))

(assert (= (or b!6613000 b!6612999) bm!579337))

(declare-fun m!7386890 () Bool)

(assert (=> b!6613000 m!7386890))

(declare-fun m!7386892 () Bool)

(assert (=> bm!579337 m!7386892))

(declare-fun m!7386894 () Bool)

(assert (=> b!6613003 m!7386894))

(assert (=> b!6612694 d!2073186))

(declare-fun bs!1695400 () Bool)

(declare-fun d!2073188 () Bool)

(assert (= bs!1695400 (and d!2073188 d!2073116)))

(declare-fun lambda!369357 () Int)

(assert (=> bs!1695400 (= lambda!369357 lambda!369339)))

(assert (=> d!2073188 (= (inv!84459 (h!72079 zl!343)) (forall!15681 (exprs!6369 (h!72079 zl!343)) lambda!369357))))

(declare-fun bs!1695401 () Bool)

(assert (= bs!1695401 d!2073188))

(declare-fun m!7386910 () Bool)

(assert (=> bs!1695401 m!7386910))

(assert (=> b!6612696 d!2073188))

(declare-fun d!2073192 () Bool)

(assert (=> d!2073192 (= (nullable!6478 (regOne!33482 (regOne!33482 r!7292))) (nullableFct!2400 (regOne!33482 (regOne!33482 r!7292))))))

(declare-fun bs!1695402 () Bool)

(assert (= bs!1695402 d!2073192))

(declare-fun m!7386912 () Bool)

(assert (=> bs!1695402 m!7386912))

(assert (=> b!6612686 d!2073192))

(declare-fun d!2073194 () Bool)

(assert (=> d!2073194 (= (isEmpty!37911 (t!379409 zl!343)) ((_ is Nil!65631) (t!379409 zl!343)))))

(assert (=> b!6612677 d!2073194))

(declare-fun e!4000866 () Bool)

(declare-fun d!2073196 () Bool)

(assert (=> d!2073196 (= (matchZipper!2497 ((_ map or) lt!2417011 lt!2417015) (t!379410 s!2326)) e!4000866)))

(declare-fun res!2711796 () Bool)

(assert (=> d!2073196 (=> res!2711796 e!4000866)))

(assert (=> d!2073196 (= res!2711796 (matchZipper!2497 lt!2417011 (t!379410 s!2326)))))

(declare-fun lt!2417066 () Unit!159295)

(declare-fun choose!49410 ((InoxSet Context!11738) (InoxSet Context!11738) List!65756) Unit!159295)

(assert (=> d!2073196 (= lt!2417066 (choose!49410 lt!2417011 lt!2417015 (t!379410 s!2326)))))

(assert (=> d!2073196 (= (lemmaZipperConcatMatchesSameAsBothZippers!1316 lt!2417011 lt!2417015 (t!379410 s!2326)) lt!2417066)))

(declare-fun b!6613052 () Bool)

(assert (=> b!6613052 (= e!4000866 (matchZipper!2497 lt!2417015 (t!379410 s!2326)))))

(assert (= (and d!2073196 (not res!2711796)) b!6613052))

(assert (=> d!2073196 m!7386680))

(assert (=> d!2073196 m!7386654))

(declare-fun m!7386914 () Bool)

(assert (=> d!2073196 m!7386914))

(assert (=> b!6613052 m!7386628))

(assert (=> b!6612699 d!2073196))

(assert (=> b!6612699 d!2073152))

(declare-fun d!2073198 () Bool)

(declare-fun c!1218895 () Bool)

(assert (=> d!2073198 (= c!1218895 (isEmpty!37915 (t!379410 s!2326)))))

(declare-fun e!4000874 () Bool)

(assert (=> d!2073198 (= (matchZipper!2497 ((_ map or) lt!2417011 lt!2417015) (t!379410 s!2326)) e!4000874)))

(declare-fun b!6613064 () Bool)

(assert (=> b!6613064 (= e!4000874 (nullableZipper!2226 ((_ map or) lt!2417011 lt!2417015)))))

(declare-fun b!6613065 () Bool)

(assert (=> b!6613065 (= e!4000874 (matchZipper!2497 (derivationStepZipper!2451 ((_ map or) lt!2417011 lt!2417015) (head!13414 (t!379410 s!2326))) (tail!12499 (t!379410 s!2326))))))

(assert (= (and d!2073198 c!1218895) b!6613064))

(assert (= (and d!2073198 (not c!1218895)) b!6613065))

(assert (=> d!2073198 m!7386770))

(declare-fun m!7386916 () Bool)

(assert (=> b!6613064 m!7386916))

(assert (=> b!6613065 m!7386774))

(assert (=> b!6613065 m!7386774))

(declare-fun m!7386918 () Bool)

(assert (=> b!6613065 m!7386918))

(assert (=> b!6613065 m!7386778))

(assert (=> b!6613065 m!7386918))

(assert (=> b!6613065 m!7386778))

(declare-fun m!7386920 () Bool)

(assert (=> b!6613065 m!7386920))

(assert (=> b!6612699 d!2073198))

(declare-fun b!6613089 () Bool)

(declare-fun res!2711815 () Bool)

(declare-fun e!4000897 () Bool)

(assert (=> b!6613089 (=> (not res!2711815) (not e!4000897))))

(declare-fun call!579357 () Bool)

(assert (=> b!6613089 (= res!2711815 call!579357)))

(declare-fun e!4000895 () Bool)

(assert (=> b!6613089 (= e!4000895 e!4000897)))

(declare-fun b!6613090 () Bool)

(declare-fun e!4000899 () Bool)

(declare-fun e!4000898 () Bool)

(assert (=> b!6613090 (= e!4000899 e!4000898)))

(declare-fun c!1218901 () Bool)

(assert (=> b!6613090 (= c!1218901 ((_ is Star!16485) (regTwo!33482 r!7292)))))

(declare-fun c!1218902 () Bool)

(declare-fun call!579358 () Bool)

(declare-fun bm!579351 () Bool)

(assert (=> bm!579351 (= call!579358 (validRegex!8221 (ite c!1218901 (reg!16814 (regTwo!33482 r!7292)) (ite c!1218902 (regTwo!33483 (regTwo!33482 r!7292)) (regTwo!33482 (regTwo!33482 r!7292))))))))

(declare-fun b!6613091 () Bool)

(declare-fun e!4000894 () Bool)

(assert (=> b!6613091 (= e!4000894 call!579358)))

(declare-fun b!6613092 () Bool)

(declare-fun call!579356 () Bool)

(assert (=> b!6613092 (= e!4000897 call!579356)))

(declare-fun bm!579352 () Bool)

(assert (=> bm!579352 (= call!579357 (validRegex!8221 (ite c!1218902 (regOne!33483 (regTwo!33482 r!7292)) (regOne!33482 (regTwo!33482 r!7292)))))))

(declare-fun b!6613093 () Bool)

(declare-fun e!4000896 () Bool)

(assert (=> b!6613093 (= e!4000896 call!579356)))

(declare-fun d!2073200 () Bool)

(declare-fun res!2711813 () Bool)

(assert (=> d!2073200 (=> res!2711813 e!4000899)))

(assert (=> d!2073200 (= res!2711813 ((_ is ElementMatch!16485) (regTwo!33482 r!7292)))))

(assert (=> d!2073200 (= (validRegex!8221 (regTwo!33482 r!7292)) e!4000899)))

(declare-fun b!6613094 () Bool)

(assert (=> b!6613094 (= e!4000898 e!4000894)))

(declare-fun res!2711816 () Bool)

(assert (=> b!6613094 (= res!2711816 (not (nullable!6478 (reg!16814 (regTwo!33482 r!7292)))))))

(assert (=> b!6613094 (=> (not res!2711816) (not e!4000894))))

(declare-fun b!6613095 () Bool)

(declare-fun e!4000893 () Bool)

(assert (=> b!6613095 (= e!4000893 e!4000896)))

(declare-fun res!2711814 () Bool)

(assert (=> b!6613095 (=> (not res!2711814) (not e!4000896))))

(assert (=> b!6613095 (= res!2711814 call!579357)))

(declare-fun b!6613096 () Bool)

(declare-fun res!2711817 () Bool)

(assert (=> b!6613096 (=> res!2711817 e!4000893)))

(assert (=> b!6613096 (= res!2711817 (not ((_ is Concat!25330) (regTwo!33482 r!7292))))))

(assert (=> b!6613096 (= e!4000895 e!4000893)))

(declare-fun b!6613097 () Bool)

(assert (=> b!6613097 (= e!4000898 e!4000895)))

(assert (=> b!6613097 (= c!1218902 ((_ is Union!16485) (regTwo!33482 r!7292)))))

(declare-fun bm!579353 () Bool)

(assert (=> bm!579353 (= call!579356 call!579358)))

(assert (= (and d!2073200 (not res!2711813)) b!6613090))

(assert (= (and b!6613090 c!1218901) b!6613094))

(assert (= (and b!6613090 (not c!1218901)) b!6613097))

(assert (= (and b!6613094 res!2711816) b!6613091))

(assert (= (and b!6613097 c!1218902) b!6613089))

(assert (= (and b!6613097 (not c!1218902)) b!6613096))

(assert (= (and b!6613089 res!2711815) b!6613092))

(assert (= (and b!6613096 (not res!2711817)) b!6613095))

(assert (= (and b!6613095 res!2711814) b!6613093))

(assert (= (or b!6613092 b!6613093) bm!579353))

(assert (= (or b!6613089 b!6613095) bm!579352))

(assert (= (or b!6613091 bm!579353) bm!579351))

(declare-fun m!7386938 () Bool)

(assert (=> bm!579351 m!7386938))

(declare-fun m!7386940 () Bool)

(assert (=> bm!579352 m!7386940))

(declare-fun m!7386942 () Bool)

(assert (=> b!6613094 m!7386942))

(assert (=> b!6612698 d!2073200))

(declare-fun b!6613247 () Bool)

(declare-fun e!4000980 () Bool)

(declare-fun e!4000984 () Bool)

(assert (=> b!6613247 (= e!4000980 e!4000984)))

(declare-fun c!1218932 () Bool)

(assert (=> b!6613247 (= c!1218932 ((_ is EmptyLang!16485) (regOne!33482 r!7292)))))

(declare-fun b!6613248 () Bool)

(declare-fun e!4000985 () Bool)

(assert (=> b!6613248 (= e!4000985 (= (head!13414 s!2326) (c!1218776 (regOne!33482 r!7292))))))

(declare-fun b!6613249 () Bool)

(declare-fun res!2711864 () Bool)

(declare-fun e!4000983 () Bool)

(assert (=> b!6613249 (=> res!2711864 e!4000983)))

(assert (=> b!6613249 (= res!2711864 (not ((_ is ElementMatch!16485) (regOne!33482 r!7292))))))

(assert (=> b!6613249 (= e!4000984 e!4000983)))

(declare-fun d!2073210 () Bool)

(assert (=> d!2073210 e!4000980))

(declare-fun c!1218930 () Bool)

(assert (=> d!2073210 (= c!1218930 ((_ is EmptyExpr!16485) (regOne!33482 r!7292)))))

(declare-fun lt!2417083 () Bool)

(declare-fun e!4000981 () Bool)

(assert (=> d!2073210 (= lt!2417083 e!4000981)))

(declare-fun c!1218931 () Bool)

(assert (=> d!2073210 (= c!1218931 (isEmpty!37915 s!2326))))

(assert (=> d!2073210 (validRegex!8221 (regOne!33482 r!7292))))

(assert (=> d!2073210 (= (matchR!8668 (regOne!33482 r!7292) s!2326) lt!2417083)))

(declare-fun b!6613250 () Bool)

(declare-fun res!2711860 () Bool)

(assert (=> b!6613250 (=> (not res!2711860) (not e!4000985))))

(assert (=> b!6613250 (= res!2711860 (isEmpty!37915 (tail!12499 s!2326)))))

(declare-fun b!6613251 () Bool)

(assert (=> b!6613251 (= e!4000984 (not lt!2417083))))

(declare-fun bm!579362 () Bool)

(declare-fun call!579367 () Bool)

(assert (=> bm!579362 (= call!579367 (isEmpty!37915 s!2326))))

(declare-fun b!6613252 () Bool)

(declare-fun res!2711862 () Bool)

(assert (=> b!6613252 (=> (not res!2711862) (not e!4000985))))

(assert (=> b!6613252 (= res!2711862 (not call!579367))))

(declare-fun b!6613253 () Bool)

(declare-fun e!4000979 () Bool)

(assert (=> b!6613253 (= e!4000983 e!4000979)))

(declare-fun res!2711859 () Bool)

(assert (=> b!6613253 (=> (not res!2711859) (not e!4000979))))

(assert (=> b!6613253 (= res!2711859 (not lt!2417083))))

(declare-fun b!6613254 () Bool)

(declare-fun e!4000982 () Bool)

(assert (=> b!6613254 (= e!4000979 e!4000982)))

(declare-fun res!2711863 () Bool)

(assert (=> b!6613254 (=> res!2711863 e!4000982)))

(assert (=> b!6613254 (= res!2711863 call!579367)))

(declare-fun b!6613255 () Bool)

(declare-fun res!2711866 () Bool)

(assert (=> b!6613255 (=> res!2711866 e!4000982)))

(assert (=> b!6613255 (= res!2711866 (not (isEmpty!37915 (tail!12499 s!2326))))))

(declare-fun b!6613256 () Bool)

(declare-fun derivativeStep!5165 (Regex!16485 C!33240) Regex!16485)

(assert (=> b!6613256 (= e!4000981 (matchR!8668 (derivativeStep!5165 (regOne!33482 r!7292) (head!13414 s!2326)) (tail!12499 s!2326)))))

(declare-fun b!6613257 () Bool)

(assert (=> b!6613257 (= e!4000980 (= lt!2417083 call!579367))))

(declare-fun b!6613258 () Bool)

(assert (=> b!6613258 (= e!4000982 (not (= (head!13414 s!2326) (c!1218776 (regOne!33482 r!7292)))))))

(declare-fun b!6613259 () Bool)

(assert (=> b!6613259 (= e!4000981 (nullable!6478 (regOne!33482 r!7292)))))

(declare-fun b!6613260 () Bool)

(declare-fun res!2711861 () Bool)

(assert (=> b!6613260 (=> res!2711861 e!4000983)))

(assert (=> b!6613260 (= res!2711861 e!4000985)))

(declare-fun res!2711865 () Bool)

(assert (=> b!6613260 (=> (not res!2711865) (not e!4000985))))

(assert (=> b!6613260 (= res!2711865 lt!2417083)))

(assert (= (and d!2073210 c!1218931) b!6613259))

(assert (= (and d!2073210 (not c!1218931)) b!6613256))

(assert (= (and d!2073210 c!1218930) b!6613257))

(assert (= (and d!2073210 (not c!1218930)) b!6613247))

(assert (= (and b!6613247 c!1218932) b!6613251))

(assert (= (and b!6613247 (not c!1218932)) b!6613249))

(assert (= (and b!6613249 (not res!2711864)) b!6613260))

(assert (= (and b!6613260 res!2711865) b!6613252))

(assert (= (and b!6613252 res!2711862) b!6613250))

(assert (= (and b!6613250 res!2711860) b!6613248))

(assert (= (and b!6613260 (not res!2711861)) b!6613253))

(assert (= (and b!6613253 res!2711859) b!6613254))

(assert (= (and b!6613254 (not res!2711863)) b!6613255))

(assert (= (and b!6613255 (not res!2711866)) b!6613258))

(assert (= (or b!6613257 b!6613252 b!6613254) bm!579362))

(declare-fun m!7386994 () Bool)

(assert (=> b!6613250 m!7386994))

(assert (=> b!6613250 m!7386994))

(declare-fun m!7386996 () Bool)

(assert (=> b!6613250 m!7386996))

(declare-fun m!7386998 () Bool)

(assert (=> b!6613248 m!7386998))

(assert (=> b!6613256 m!7386998))

(assert (=> b!6613256 m!7386998))

(declare-fun m!7387000 () Bool)

(assert (=> b!6613256 m!7387000))

(assert (=> b!6613256 m!7386994))

(assert (=> b!6613256 m!7387000))

(assert (=> b!6613256 m!7386994))

(declare-fun m!7387002 () Bool)

(assert (=> b!6613256 m!7387002))

(declare-fun m!7387004 () Bool)

(assert (=> bm!579362 m!7387004))

(declare-fun m!7387006 () Bool)

(assert (=> b!6613259 m!7387006))

(assert (=> b!6613258 m!7386998))

(assert (=> d!2073210 m!7387004))

(declare-fun m!7387008 () Bool)

(assert (=> d!2073210 m!7387008))

(assert (=> b!6613255 m!7386994))

(assert (=> b!6613255 m!7386994))

(assert (=> b!6613255 m!7386996))

(assert (=> b!6612698 d!2073210))

(declare-fun bs!1695432 () Bool)

(declare-fun b!6613300 () Bool)

(assert (= bs!1695432 (and b!6613300 b!6612680)))

(declare-fun lambda!369374 () Int)

(assert (=> bs!1695432 (not (= lambda!369374 lambda!369331))))

(assert (=> bs!1695432 (not (= lambda!369374 lambda!369332))))

(assert (=> b!6613300 true))

(assert (=> b!6613300 true))

(declare-fun bs!1695433 () Bool)

(declare-fun b!6613302 () Bool)

(assert (= bs!1695433 (and b!6613302 b!6612680)))

(declare-fun lambda!369375 () Int)

(assert (=> bs!1695433 (not (= lambda!369375 lambda!369331))))

(assert (=> bs!1695433 (= (and (= (regOne!33482 (regOne!33482 r!7292)) (regOne!33482 r!7292)) (= (regTwo!33482 (regOne!33482 r!7292)) (regTwo!33482 r!7292))) (= lambda!369375 lambda!369332))))

(declare-fun bs!1695434 () Bool)

(assert (= bs!1695434 (and b!6613302 b!6613300)))

(assert (=> bs!1695434 (not (= lambda!369375 lambda!369374))))

(assert (=> b!6613302 true))

(assert (=> b!6613302 true))

(declare-fun b!6613293 () Bool)

(declare-fun e!4001007 () Bool)

(assert (=> b!6613293 (= e!4001007 (= s!2326 (Cons!65632 (c!1218776 (regOne!33482 r!7292)) Nil!65632)))))

(declare-fun b!6613294 () Bool)

(declare-fun e!4001005 () Bool)

(assert (=> b!6613294 (= e!4001005 (matchRSpec!3586 (regTwo!33483 (regOne!33482 r!7292)) s!2326))))

(declare-fun b!6613295 () Bool)

(declare-fun res!2711885 () Bool)

(declare-fun e!4001008 () Bool)

(assert (=> b!6613295 (=> res!2711885 e!4001008)))

(declare-fun call!579373 () Bool)

(assert (=> b!6613295 (= res!2711885 call!579373)))

(declare-fun e!4001004 () Bool)

(assert (=> b!6613295 (= e!4001004 e!4001008)))

(declare-fun b!6613296 () Bool)

(declare-fun c!1218943 () Bool)

(assert (=> b!6613296 (= c!1218943 ((_ is ElementMatch!16485) (regOne!33482 r!7292)))))

(declare-fun e!4001010 () Bool)

(assert (=> b!6613296 (= e!4001010 e!4001007)))

(declare-fun b!6613297 () Bool)

(declare-fun c!1218941 () Bool)

(assert (=> b!6613297 (= c!1218941 ((_ is Union!16485) (regOne!33482 r!7292)))))

(declare-fun e!4001006 () Bool)

(assert (=> b!6613297 (= e!4001007 e!4001006)))

(declare-fun d!2073226 () Bool)

(declare-fun c!1218944 () Bool)

(assert (=> d!2073226 (= c!1218944 ((_ is EmptyExpr!16485) (regOne!33482 r!7292)))))

(declare-fun e!4001009 () Bool)

(assert (=> d!2073226 (= (matchRSpec!3586 (regOne!33482 r!7292) s!2326) e!4001009)))

(declare-fun bm!579367 () Bool)

(assert (=> bm!579367 (= call!579373 (isEmpty!37915 s!2326))))

(declare-fun b!6613298 () Bool)

(assert (=> b!6613298 (= e!4001009 e!4001010)))

(declare-fun res!2711883 () Bool)

(assert (=> b!6613298 (= res!2711883 (not ((_ is EmptyLang!16485) (regOne!33482 r!7292))))))

(assert (=> b!6613298 (=> (not res!2711883) (not e!4001010))))

(declare-fun b!6613299 () Bool)

(assert (=> b!6613299 (= e!4001006 e!4001005)))

(declare-fun res!2711884 () Bool)

(assert (=> b!6613299 (= res!2711884 (matchRSpec!3586 (regOne!33483 (regOne!33482 r!7292)) s!2326))))

(assert (=> b!6613299 (=> res!2711884 e!4001005)))

(declare-fun call!579372 () Bool)

(assert (=> b!6613300 (= e!4001008 call!579372)))

(declare-fun b!6613301 () Bool)

(assert (=> b!6613301 (= e!4001006 e!4001004)))

(declare-fun c!1218942 () Bool)

(assert (=> b!6613301 (= c!1218942 ((_ is Star!16485) (regOne!33482 r!7292)))))

(assert (=> b!6613302 (= e!4001004 call!579372)))

(declare-fun b!6613303 () Bool)

(assert (=> b!6613303 (= e!4001009 call!579373)))

(declare-fun bm!579368 () Bool)

(assert (=> bm!579368 (= call!579372 (Exists!3555 (ite c!1218942 lambda!369374 lambda!369375)))))

(assert (= (and d!2073226 c!1218944) b!6613303))

(assert (= (and d!2073226 (not c!1218944)) b!6613298))

(assert (= (and b!6613298 res!2711883) b!6613296))

(assert (= (and b!6613296 c!1218943) b!6613293))

(assert (= (and b!6613296 (not c!1218943)) b!6613297))

(assert (= (and b!6613297 c!1218941) b!6613299))

(assert (= (and b!6613297 (not c!1218941)) b!6613301))

(assert (= (and b!6613299 (not res!2711884)) b!6613294))

(assert (= (and b!6613301 c!1218942) b!6613295))

(assert (= (and b!6613301 (not c!1218942)) b!6613302))

(assert (= (and b!6613295 (not res!2711885)) b!6613300))

(assert (= (or b!6613300 b!6613302) bm!579368))

(assert (= (or b!6613303 b!6613295) bm!579367))

(declare-fun m!7387010 () Bool)

(assert (=> b!6613294 m!7387010))

(assert (=> bm!579367 m!7387004))

(declare-fun m!7387012 () Bool)

(assert (=> b!6613299 m!7387012))

(declare-fun m!7387014 () Bool)

(assert (=> bm!579368 m!7387014))

(assert (=> b!6612698 d!2073226))

(declare-fun d!2073228 () Bool)

(assert (=> d!2073228 (= (matchR!8668 (regOne!33482 r!7292) s!2326) (matchRSpec!3586 (regOne!33482 r!7292) s!2326))))

(declare-fun lt!2417086 () Unit!159295)

(declare-fun choose!49411 (Regex!16485 List!65756) Unit!159295)

(assert (=> d!2073228 (= lt!2417086 (choose!49411 (regOne!33482 r!7292) s!2326))))

(assert (=> d!2073228 (validRegex!8221 (regOne!33482 r!7292))))

(assert (=> d!2073228 (= (mainMatchTheorem!3586 (regOne!33482 r!7292) s!2326) lt!2417086)))

(declare-fun bs!1695435 () Bool)

(assert (= bs!1695435 d!2073228))

(assert (=> bs!1695435 m!7386634))

(assert (=> bs!1695435 m!7386636))

(declare-fun m!7387016 () Bool)

(assert (=> bs!1695435 m!7387016))

(assert (=> bs!1695435 m!7387008))

(assert (=> b!6612698 d!2073228))

(declare-fun d!2073230 () Bool)

(declare-fun e!4001022 () Bool)

(assert (=> d!2073230 e!4001022))

(declare-fun res!2711896 () Bool)

(assert (=> d!2073230 (=> res!2711896 e!4001022)))

(declare-fun e!4001024 () Bool)

(assert (=> d!2073230 (= res!2711896 e!4001024)))

(declare-fun res!2711898 () Bool)

(assert (=> d!2073230 (=> (not res!2711898) (not e!4001024))))

(declare-fun lt!2417093 () Option!16376)

(assert (=> d!2073230 (= res!2711898 (isDefined!13079 lt!2417093))))

(declare-fun e!4001025 () Option!16376)

(assert (=> d!2073230 (= lt!2417093 e!4001025)))

(declare-fun c!1218949 () Bool)

(declare-fun e!4001023 () Bool)

(assert (=> d!2073230 (= c!1218949 e!4001023)))

(declare-fun res!2711900 () Bool)

(assert (=> d!2073230 (=> (not res!2711900) (not e!4001023))))

(assert (=> d!2073230 (= res!2711900 (matchR!8668 (regOne!33482 r!7292) Nil!65632))))

(assert (=> d!2073230 (validRegex!8221 (regOne!33482 r!7292))))

(assert (=> d!2073230 (= (findConcatSeparation!2790 (regOne!33482 r!7292) (regTwo!33482 r!7292) Nil!65632 s!2326 s!2326) lt!2417093)))

(declare-fun b!6613322 () Bool)

(assert (=> b!6613322 (= e!4001023 (matchR!8668 (regTwo!33482 r!7292) s!2326))))

(declare-fun b!6613323 () Bool)

(declare-fun e!4001021 () Option!16376)

(assert (=> b!6613323 (= e!4001025 e!4001021)))

(declare-fun c!1218950 () Bool)

(assert (=> b!6613323 (= c!1218950 ((_ is Nil!65632) s!2326))))

(declare-fun b!6613324 () Bool)

(declare-fun res!2711899 () Bool)

(assert (=> b!6613324 (=> (not res!2711899) (not e!4001024))))

(declare-fun get!22809 (Option!16376) tuple2!66928)

(assert (=> b!6613324 (= res!2711899 (matchR!8668 (regTwo!33482 r!7292) (_2!36767 (get!22809 lt!2417093))))))

(declare-fun b!6613325 () Bool)

(declare-fun res!2711897 () Bool)

(assert (=> b!6613325 (=> (not res!2711897) (not e!4001024))))

(assert (=> b!6613325 (= res!2711897 (matchR!8668 (regOne!33482 r!7292) (_1!36767 (get!22809 lt!2417093))))))

(declare-fun b!6613326 () Bool)

(declare-fun ++!14635 (List!65756 List!65756) List!65756)

(assert (=> b!6613326 (= e!4001024 (= (++!14635 (_1!36767 (get!22809 lt!2417093)) (_2!36767 (get!22809 lt!2417093))) s!2326))))

(declare-fun b!6613327 () Bool)

(assert (=> b!6613327 (= e!4001021 None!16375)))

(declare-fun b!6613328 () Bool)

(assert (=> b!6613328 (= e!4001022 (not (isDefined!13079 lt!2417093)))))

(declare-fun b!6613329 () Bool)

(assert (=> b!6613329 (= e!4001025 (Some!16375 (tuple2!66929 Nil!65632 s!2326)))))

(declare-fun b!6613330 () Bool)

(declare-fun lt!2417095 () Unit!159295)

(declare-fun lt!2417094 () Unit!159295)

(assert (=> b!6613330 (= lt!2417095 lt!2417094)))

(assert (=> b!6613330 (= (++!14635 (++!14635 Nil!65632 (Cons!65632 (h!72080 s!2326) Nil!65632)) (t!379410 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2624 (List!65756 C!33240 List!65756 List!65756) Unit!159295)

(assert (=> b!6613330 (= lt!2417094 (lemmaMoveElementToOtherListKeepsConcatEq!2624 Nil!65632 (h!72080 s!2326) (t!379410 s!2326) s!2326))))

(assert (=> b!6613330 (= e!4001021 (findConcatSeparation!2790 (regOne!33482 r!7292) (regTwo!33482 r!7292) (++!14635 Nil!65632 (Cons!65632 (h!72080 s!2326) Nil!65632)) (t!379410 s!2326) s!2326))))

(assert (= (and d!2073230 res!2711900) b!6613322))

(assert (= (and d!2073230 c!1218949) b!6613329))

(assert (= (and d!2073230 (not c!1218949)) b!6613323))

(assert (= (and b!6613323 c!1218950) b!6613327))

(assert (= (and b!6613323 (not c!1218950)) b!6613330))

(assert (= (and d!2073230 res!2711898) b!6613325))

(assert (= (and b!6613325 res!2711897) b!6613324))

(assert (= (and b!6613324 res!2711899) b!6613326))

(assert (= (and d!2073230 (not res!2711896)) b!6613328))

(declare-fun m!7387018 () Bool)

(assert (=> b!6613328 m!7387018))

(declare-fun m!7387020 () Bool)

(assert (=> b!6613330 m!7387020))

(assert (=> b!6613330 m!7387020))

(declare-fun m!7387022 () Bool)

(assert (=> b!6613330 m!7387022))

(declare-fun m!7387024 () Bool)

(assert (=> b!6613330 m!7387024))

(assert (=> b!6613330 m!7387020))

(declare-fun m!7387026 () Bool)

(assert (=> b!6613330 m!7387026))

(declare-fun m!7387028 () Bool)

(assert (=> b!6613324 m!7387028))

(declare-fun m!7387030 () Bool)

(assert (=> b!6613324 m!7387030))

(assert (=> b!6613325 m!7387028))

(declare-fun m!7387032 () Bool)

(assert (=> b!6613325 m!7387032))

(assert (=> d!2073230 m!7387018))

(declare-fun m!7387034 () Bool)

(assert (=> d!2073230 m!7387034))

(assert (=> d!2073230 m!7387008))

(declare-fun m!7387036 () Bool)

(assert (=> b!6613322 m!7387036))

(assert (=> b!6613326 m!7387028))

(declare-fun m!7387038 () Bool)

(assert (=> b!6613326 m!7387038))

(assert (=> b!6612680 d!2073230))

(declare-fun d!2073232 () Bool)

(declare-fun choose!49412 (Int) Bool)

(assert (=> d!2073232 (= (Exists!3555 lambda!369332) (choose!49412 lambda!369332))))

(declare-fun bs!1695436 () Bool)

(assert (= bs!1695436 d!2073232))

(declare-fun m!7387040 () Bool)

(assert (=> bs!1695436 m!7387040))

(assert (=> b!6612680 d!2073232))

(declare-fun d!2073234 () Bool)

(assert (=> d!2073234 (= (Exists!3555 lambda!369331) (choose!49412 lambda!369331))))

(declare-fun bs!1695437 () Bool)

(assert (= bs!1695437 d!2073234))

(declare-fun m!7387042 () Bool)

(assert (=> bs!1695437 m!7387042))

(assert (=> b!6612680 d!2073234))

(declare-fun bs!1695438 () Bool)

(declare-fun d!2073236 () Bool)

(assert (= bs!1695438 (and d!2073236 b!6612680)))

(declare-fun lambda!369378 () Int)

(assert (=> bs!1695438 (= lambda!369378 lambda!369331)))

(assert (=> bs!1695438 (not (= lambda!369378 lambda!369332))))

(declare-fun bs!1695439 () Bool)

(assert (= bs!1695439 (and d!2073236 b!6613300)))

(assert (=> bs!1695439 (not (= lambda!369378 lambda!369374))))

(declare-fun bs!1695440 () Bool)

(assert (= bs!1695440 (and d!2073236 b!6613302)))

(assert (=> bs!1695440 (not (= lambda!369378 lambda!369375))))

(assert (=> d!2073236 true))

(assert (=> d!2073236 true))

(assert (=> d!2073236 true))

(assert (=> d!2073236 (= (isDefined!13079 (findConcatSeparation!2790 (regOne!33482 r!7292) (regTwo!33482 r!7292) Nil!65632 s!2326 s!2326)) (Exists!3555 lambda!369378))))

(declare-fun lt!2417098 () Unit!159295)

(declare-fun choose!49413 (Regex!16485 Regex!16485 List!65756) Unit!159295)

(assert (=> d!2073236 (= lt!2417098 (choose!49413 (regOne!33482 r!7292) (regTwo!33482 r!7292) s!2326))))

(assert (=> d!2073236 (validRegex!8221 (regOne!33482 r!7292))))

(assert (=> d!2073236 (= (lemmaFindConcatSeparationEquivalentToExists!2554 (regOne!33482 r!7292) (regTwo!33482 r!7292) s!2326) lt!2417098)))

(declare-fun bs!1695441 () Bool)

(assert (= bs!1695441 d!2073236))

(assert (=> bs!1695441 m!7386648))

(assert (=> bs!1695441 m!7386650))

(declare-fun m!7387044 () Bool)

(assert (=> bs!1695441 m!7387044))

(assert (=> bs!1695441 m!7387008))

(declare-fun m!7387046 () Bool)

(assert (=> bs!1695441 m!7387046))

(assert (=> bs!1695441 m!7386648))

(assert (=> b!6612680 d!2073236))

(declare-fun bs!1695442 () Bool)

(declare-fun d!2073238 () Bool)

(assert (= bs!1695442 (and d!2073238 b!6613300)))

(declare-fun lambda!369383 () Int)

(assert (=> bs!1695442 (not (= lambda!369383 lambda!369374))))

(declare-fun bs!1695443 () Bool)

(assert (= bs!1695443 (and d!2073238 b!6613302)))

(assert (=> bs!1695443 (not (= lambda!369383 lambda!369375))))

(declare-fun bs!1695444 () Bool)

(assert (= bs!1695444 (and d!2073238 b!6612680)))

(assert (=> bs!1695444 (= lambda!369383 lambda!369331)))

(assert (=> bs!1695444 (not (= lambda!369383 lambda!369332))))

(declare-fun bs!1695445 () Bool)

(assert (= bs!1695445 (and d!2073238 d!2073236)))

(assert (=> bs!1695445 (= lambda!369383 lambda!369378)))

(assert (=> d!2073238 true))

(assert (=> d!2073238 true))

(assert (=> d!2073238 true))

(declare-fun lambda!369384 () Int)

(assert (=> bs!1695442 (not (= lambda!369384 lambda!369374))))

(declare-fun bs!1695446 () Bool)

(assert (= bs!1695446 d!2073238))

(assert (=> bs!1695446 (not (= lambda!369384 lambda!369383))))

(assert (=> bs!1695443 (= (and (= (regOne!33482 r!7292) (regOne!33482 (regOne!33482 r!7292))) (= (regTwo!33482 r!7292) (regTwo!33482 (regOne!33482 r!7292)))) (= lambda!369384 lambda!369375))))

(assert (=> bs!1695444 (not (= lambda!369384 lambda!369331))))

(assert (=> bs!1695444 (= lambda!369384 lambda!369332)))

(assert (=> bs!1695445 (not (= lambda!369384 lambda!369378))))

(assert (=> d!2073238 true))

(assert (=> d!2073238 true))

(assert (=> d!2073238 true))

(assert (=> d!2073238 (= (Exists!3555 lambda!369383) (Exists!3555 lambda!369384))))

(declare-fun lt!2417101 () Unit!159295)

(declare-fun choose!49414 (Regex!16485 Regex!16485 List!65756) Unit!159295)

(assert (=> d!2073238 (= lt!2417101 (choose!49414 (regOne!33482 r!7292) (regTwo!33482 r!7292) s!2326))))

(assert (=> d!2073238 (validRegex!8221 (regOne!33482 r!7292))))

(assert (=> d!2073238 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2092 (regOne!33482 r!7292) (regTwo!33482 r!7292) s!2326) lt!2417101)))

(declare-fun m!7387048 () Bool)

(assert (=> bs!1695446 m!7387048))

(declare-fun m!7387050 () Bool)

(assert (=> bs!1695446 m!7387050))

(declare-fun m!7387052 () Bool)

(assert (=> bs!1695446 m!7387052))

(assert (=> bs!1695446 m!7387008))

(assert (=> b!6612680 d!2073238))

(declare-fun d!2073240 () Bool)

(declare-fun isEmpty!37916 (Option!16376) Bool)

(assert (=> d!2073240 (= (isDefined!13079 (findConcatSeparation!2790 (regOne!33482 r!7292) (regTwo!33482 r!7292) Nil!65632 s!2326 s!2326)) (not (isEmpty!37916 (findConcatSeparation!2790 (regOne!33482 r!7292) (regTwo!33482 r!7292) Nil!65632 s!2326 s!2326))))))

(declare-fun bs!1695447 () Bool)

(assert (= bs!1695447 d!2073240))

(assert (=> bs!1695447 m!7386648))

(declare-fun m!7387054 () Bool)

(assert (=> bs!1695447 m!7387054))

(assert (=> b!6612680 d!2073240))

(declare-fun d!2073242 () Bool)

(declare-fun lt!2417104 () Regex!16485)

(assert (=> d!2073242 (validRegex!8221 lt!2417104)))

(assert (=> d!2073242 (= lt!2417104 (generalisedUnion!2329 (unfocusZipperList!1906 zl!343)))))

(assert (=> d!2073242 (= (unfocusZipper!2227 zl!343) lt!2417104)))

(declare-fun bs!1695448 () Bool)

(assert (= bs!1695448 d!2073242))

(declare-fun m!7387056 () Bool)

(assert (=> bs!1695448 m!7387056))

(assert (=> bs!1695448 m!7386624))

(assert (=> bs!1695448 m!7386624))

(assert (=> bs!1695448 m!7386626))

(assert (=> b!6612691 d!2073242))

(declare-fun bs!1695449 () Bool)

(declare-fun d!2073244 () Bool)

(assert (= bs!1695449 (and d!2073244 d!2073116)))

(declare-fun lambda!369385 () Int)

(assert (=> bs!1695449 (= lambda!369385 lambda!369339)))

(declare-fun bs!1695450 () Bool)

(assert (= bs!1695450 (and d!2073244 d!2073188)))

(assert (=> bs!1695450 (= lambda!369385 lambda!369357)))

(assert (=> d!2073244 (= (inv!84459 setElem!45184) (forall!15681 (exprs!6369 setElem!45184) lambda!369385))))

(declare-fun bs!1695451 () Bool)

(assert (= bs!1695451 d!2073244))

(declare-fun m!7387058 () Bool)

(assert (=> bs!1695451 m!7387058))

(assert (=> setNonEmpty!45184 d!2073244))

(declare-fun d!2073246 () Bool)

(assert (=> d!2073246 (= (isEmpty!37912 (t!379408 (exprs!6369 (h!72079 zl!343)))) ((_ is Nil!65630) (t!379408 (exprs!6369 (h!72079 zl!343)))))))

(assert (=> b!6612702 d!2073246))

(declare-fun b!6613343 () Bool)

(declare-fun res!2711915 () Bool)

(declare-fun e!4001036 () Bool)

(assert (=> b!6613343 (=> (not res!2711915) (not e!4001036))))

(declare-fun call!579375 () Bool)

(assert (=> b!6613343 (= res!2711915 call!579375)))

(declare-fun e!4001034 () Bool)

(assert (=> b!6613343 (= e!4001034 e!4001036)))

(declare-fun b!6613344 () Bool)

(declare-fun e!4001038 () Bool)

(declare-fun e!4001037 () Bool)

(assert (=> b!6613344 (= e!4001038 e!4001037)))

(declare-fun c!1218951 () Bool)

(assert (=> b!6613344 (= c!1218951 ((_ is Star!16485) r!7292))))

(declare-fun bm!579369 () Bool)

(declare-fun call!579376 () Bool)

(declare-fun c!1218952 () Bool)

(assert (=> bm!579369 (= call!579376 (validRegex!8221 (ite c!1218951 (reg!16814 r!7292) (ite c!1218952 (regTwo!33483 r!7292) (regTwo!33482 r!7292)))))))

(declare-fun b!6613345 () Bool)

(declare-fun e!4001033 () Bool)

(assert (=> b!6613345 (= e!4001033 call!579376)))

(declare-fun b!6613346 () Bool)

(declare-fun call!579374 () Bool)

(assert (=> b!6613346 (= e!4001036 call!579374)))

(declare-fun bm!579370 () Bool)

(assert (=> bm!579370 (= call!579375 (validRegex!8221 (ite c!1218952 (regOne!33483 r!7292) (regOne!33482 r!7292))))))

(declare-fun b!6613347 () Bool)

(declare-fun e!4001035 () Bool)

(assert (=> b!6613347 (= e!4001035 call!579374)))

(declare-fun d!2073248 () Bool)

(declare-fun res!2711913 () Bool)

(assert (=> d!2073248 (=> res!2711913 e!4001038)))

(assert (=> d!2073248 (= res!2711913 ((_ is ElementMatch!16485) r!7292))))

(assert (=> d!2073248 (= (validRegex!8221 r!7292) e!4001038)))

(declare-fun b!6613348 () Bool)

(assert (=> b!6613348 (= e!4001037 e!4001033)))

(declare-fun res!2711916 () Bool)

(assert (=> b!6613348 (= res!2711916 (not (nullable!6478 (reg!16814 r!7292))))))

(assert (=> b!6613348 (=> (not res!2711916) (not e!4001033))))

(declare-fun b!6613349 () Bool)

(declare-fun e!4001032 () Bool)

(assert (=> b!6613349 (= e!4001032 e!4001035)))

(declare-fun res!2711914 () Bool)

(assert (=> b!6613349 (=> (not res!2711914) (not e!4001035))))

(assert (=> b!6613349 (= res!2711914 call!579375)))

(declare-fun b!6613350 () Bool)

(declare-fun res!2711917 () Bool)

(assert (=> b!6613350 (=> res!2711917 e!4001032)))

(assert (=> b!6613350 (= res!2711917 (not ((_ is Concat!25330) r!7292)))))

(assert (=> b!6613350 (= e!4001034 e!4001032)))

(declare-fun b!6613351 () Bool)

(assert (=> b!6613351 (= e!4001037 e!4001034)))

(assert (=> b!6613351 (= c!1218952 ((_ is Union!16485) r!7292))))

(declare-fun bm!579371 () Bool)

(assert (=> bm!579371 (= call!579374 call!579376)))

(assert (= (and d!2073248 (not res!2711913)) b!6613344))

(assert (= (and b!6613344 c!1218951) b!6613348))

(assert (= (and b!6613344 (not c!1218951)) b!6613351))

(assert (= (and b!6613348 res!2711916) b!6613345))

(assert (= (and b!6613351 c!1218952) b!6613343))

(assert (= (and b!6613351 (not c!1218952)) b!6613350))

(assert (= (and b!6613343 res!2711915) b!6613346))

(assert (= (and b!6613350 (not res!2711917)) b!6613349))

(assert (= (and b!6613349 res!2711914) b!6613347))

(assert (= (or b!6613346 b!6613347) bm!579371))

(assert (= (or b!6613343 b!6613349) bm!579370))

(assert (= (or b!6613345 bm!579371) bm!579369))

(declare-fun m!7387060 () Bool)

(assert (=> bm!579369 m!7387060))

(declare-fun m!7387062 () Bool)

(assert (=> bm!579370 m!7387062))

(declare-fun m!7387064 () Bool)

(assert (=> b!6613348 m!7387064))

(assert (=> start!646362 d!2073248))

(declare-fun bs!1695452 () Bool)

(declare-fun b!6613359 () Bool)

(assert (= bs!1695452 (and b!6613359 b!6613300)))

(declare-fun lambda!369386 () Int)

(assert (=> bs!1695452 (= (and (= (reg!16814 r!7292) (reg!16814 (regOne!33482 r!7292))) (= r!7292 (regOne!33482 r!7292))) (= lambda!369386 lambda!369374))))

(declare-fun bs!1695453 () Bool)

(assert (= bs!1695453 (and b!6613359 d!2073238)))

(assert (=> bs!1695453 (not (= lambda!369386 lambda!369383))))

(declare-fun bs!1695454 () Bool)

(assert (= bs!1695454 (and b!6613359 b!6612680)))

(assert (=> bs!1695454 (not (= lambda!369386 lambda!369331))))

(assert (=> bs!1695454 (not (= lambda!369386 lambda!369332))))

(declare-fun bs!1695455 () Bool)

(assert (= bs!1695455 (and b!6613359 d!2073236)))

(assert (=> bs!1695455 (not (= lambda!369386 lambda!369378))))

(assert (=> bs!1695453 (not (= lambda!369386 lambda!369384))))

(declare-fun bs!1695456 () Bool)

(assert (= bs!1695456 (and b!6613359 b!6613302)))

(assert (=> bs!1695456 (not (= lambda!369386 lambda!369375))))

(assert (=> b!6613359 true))

(assert (=> b!6613359 true))

(declare-fun bs!1695457 () Bool)

(declare-fun b!6613361 () Bool)

(assert (= bs!1695457 (and b!6613361 b!6613300)))

(declare-fun lambda!369387 () Int)

(assert (=> bs!1695457 (not (= lambda!369387 lambda!369374))))

(declare-fun bs!1695458 () Bool)

(assert (= bs!1695458 (and b!6613361 d!2073238)))

(assert (=> bs!1695458 (not (= lambda!369387 lambda!369383))))

(declare-fun bs!1695459 () Bool)

(assert (= bs!1695459 (and b!6613361 b!6612680)))

(assert (=> bs!1695459 (not (= lambda!369387 lambda!369331))))

(assert (=> bs!1695459 (= lambda!369387 lambda!369332)))

(declare-fun bs!1695460 () Bool)

(assert (= bs!1695460 (and b!6613361 b!6613359)))

(assert (=> bs!1695460 (not (= lambda!369387 lambda!369386))))

(declare-fun bs!1695461 () Bool)

(assert (= bs!1695461 (and b!6613361 d!2073236)))

(assert (=> bs!1695461 (not (= lambda!369387 lambda!369378))))

(assert (=> bs!1695458 (= lambda!369387 lambda!369384)))

(declare-fun bs!1695462 () Bool)

(assert (= bs!1695462 (and b!6613361 b!6613302)))

(assert (=> bs!1695462 (= (and (= (regOne!33482 r!7292) (regOne!33482 (regOne!33482 r!7292))) (= (regTwo!33482 r!7292) (regTwo!33482 (regOne!33482 r!7292)))) (= lambda!369387 lambda!369375))))

(assert (=> b!6613361 true))

(assert (=> b!6613361 true))

(declare-fun b!6613352 () Bool)

(declare-fun e!4001042 () Bool)

(assert (=> b!6613352 (= e!4001042 (= s!2326 (Cons!65632 (c!1218776 r!7292) Nil!65632)))))

(declare-fun b!6613353 () Bool)

(declare-fun e!4001040 () Bool)

(assert (=> b!6613353 (= e!4001040 (matchRSpec!3586 (regTwo!33483 r!7292) s!2326))))

(declare-fun b!6613354 () Bool)

(declare-fun res!2711920 () Bool)

(declare-fun e!4001043 () Bool)

(assert (=> b!6613354 (=> res!2711920 e!4001043)))

(declare-fun call!579378 () Bool)

(assert (=> b!6613354 (= res!2711920 call!579378)))

(declare-fun e!4001039 () Bool)

(assert (=> b!6613354 (= e!4001039 e!4001043)))

(declare-fun b!6613355 () Bool)

(declare-fun c!1218955 () Bool)

(assert (=> b!6613355 (= c!1218955 ((_ is ElementMatch!16485) r!7292))))

(declare-fun e!4001045 () Bool)

(assert (=> b!6613355 (= e!4001045 e!4001042)))

(declare-fun b!6613356 () Bool)

(declare-fun c!1218953 () Bool)

(assert (=> b!6613356 (= c!1218953 ((_ is Union!16485) r!7292))))

(declare-fun e!4001041 () Bool)

(assert (=> b!6613356 (= e!4001042 e!4001041)))

(declare-fun d!2073250 () Bool)

(declare-fun c!1218956 () Bool)

(assert (=> d!2073250 (= c!1218956 ((_ is EmptyExpr!16485) r!7292))))

(declare-fun e!4001044 () Bool)

(assert (=> d!2073250 (= (matchRSpec!3586 r!7292 s!2326) e!4001044)))

(declare-fun bm!579372 () Bool)

(assert (=> bm!579372 (= call!579378 (isEmpty!37915 s!2326))))

(declare-fun b!6613357 () Bool)

(assert (=> b!6613357 (= e!4001044 e!4001045)))

(declare-fun res!2711918 () Bool)

(assert (=> b!6613357 (= res!2711918 (not ((_ is EmptyLang!16485) r!7292)))))

(assert (=> b!6613357 (=> (not res!2711918) (not e!4001045))))

(declare-fun b!6613358 () Bool)

(assert (=> b!6613358 (= e!4001041 e!4001040)))

(declare-fun res!2711919 () Bool)

(assert (=> b!6613358 (= res!2711919 (matchRSpec!3586 (regOne!33483 r!7292) s!2326))))

(assert (=> b!6613358 (=> res!2711919 e!4001040)))

(declare-fun call!579377 () Bool)

(assert (=> b!6613359 (= e!4001043 call!579377)))

(declare-fun b!6613360 () Bool)

(assert (=> b!6613360 (= e!4001041 e!4001039)))

(declare-fun c!1218954 () Bool)

(assert (=> b!6613360 (= c!1218954 ((_ is Star!16485) r!7292))))

(assert (=> b!6613361 (= e!4001039 call!579377)))

(declare-fun b!6613362 () Bool)

(assert (=> b!6613362 (= e!4001044 call!579378)))

(declare-fun bm!579373 () Bool)

(assert (=> bm!579373 (= call!579377 (Exists!3555 (ite c!1218954 lambda!369386 lambda!369387)))))

(assert (= (and d!2073250 c!1218956) b!6613362))

(assert (= (and d!2073250 (not c!1218956)) b!6613357))

(assert (= (and b!6613357 res!2711918) b!6613355))

(assert (= (and b!6613355 c!1218955) b!6613352))

(assert (= (and b!6613355 (not c!1218955)) b!6613356))

(assert (= (and b!6613356 c!1218953) b!6613358))

(assert (= (and b!6613356 (not c!1218953)) b!6613360))

(assert (= (and b!6613358 (not res!2711919)) b!6613353))

(assert (= (and b!6613360 c!1218954) b!6613354))

(assert (= (and b!6613360 (not c!1218954)) b!6613361))

(assert (= (and b!6613354 (not res!2711920)) b!6613359))

(assert (= (or b!6613359 b!6613361) bm!579373))

(assert (= (or b!6613362 b!6613354) bm!579372))

(declare-fun m!7387066 () Bool)

(assert (=> b!6613353 m!7387066))

(assert (=> bm!579372 m!7387004))

(declare-fun m!7387068 () Bool)

(assert (=> b!6613358 m!7387068))

(declare-fun m!7387070 () Bool)

(assert (=> bm!579373 m!7387070))

(assert (=> b!6612692 d!2073250))

(declare-fun b!6613363 () Bool)

(declare-fun e!4001047 () Bool)

(declare-fun e!4001051 () Bool)

(assert (=> b!6613363 (= e!4001047 e!4001051)))

(declare-fun c!1218959 () Bool)

(assert (=> b!6613363 (= c!1218959 ((_ is EmptyLang!16485) r!7292))))

(declare-fun b!6613364 () Bool)

(declare-fun e!4001052 () Bool)

(assert (=> b!6613364 (= e!4001052 (= (head!13414 s!2326) (c!1218776 r!7292)))))

(declare-fun b!6613365 () Bool)

(declare-fun res!2711926 () Bool)

(declare-fun e!4001050 () Bool)

(assert (=> b!6613365 (=> res!2711926 e!4001050)))

(assert (=> b!6613365 (= res!2711926 (not ((_ is ElementMatch!16485) r!7292)))))

(assert (=> b!6613365 (= e!4001051 e!4001050)))

(declare-fun d!2073252 () Bool)

(assert (=> d!2073252 e!4001047))

(declare-fun c!1218957 () Bool)

(assert (=> d!2073252 (= c!1218957 ((_ is EmptyExpr!16485) r!7292))))

(declare-fun lt!2417105 () Bool)

(declare-fun e!4001048 () Bool)

(assert (=> d!2073252 (= lt!2417105 e!4001048)))

(declare-fun c!1218958 () Bool)

(assert (=> d!2073252 (= c!1218958 (isEmpty!37915 s!2326))))

(assert (=> d!2073252 (validRegex!8221 r!7292)))

(assert (=> d!2073252 (= (matchR!8668 r!7292 s!2326) lt!2417105)))

(declare-fun b!6613366 () Bool)

(declare-fun res!2711922 () Bool)

(assert (=> b!6613366 (=> (not res!2711922) (not e!4001052))))

(assert (=> b!6613366 (= res!2711922 (isEmpty!37915 (tail!12499 s!2326)))))

(declare-fun b!6613367 () Bool)

(assert (=> b!6613367 (= e!4001051 (not lt!2417105))))

(declare-fun bm!579374 () Bool)

(declare-fun call!579379 () Bool)

(assert (=> bm!579374 (= call!579379 (isEmpty!37915 s!2326))))

(declare-fun b!6613368 () Bool)

(declare-fun res!2711924 () Bool)

(assert (=> b!6613368 (=> (not res!2711924) (not e!4001052))))

(assert (=> b!6613368 (= res!2711924 (not call!579379))))

(declare-fun b!6613369 () Bool)

(declare-fun e!4001046 () Bool)

(assert (=> b!6613369 (= e!4001050 e!4001046)))

(declare-fun res!2711921 () Bool)

(assert (=> b!6613369 (=> (not res!2711921) (not e!4001046))))

(assert (=> b!6613369 (= res!2711921 (not lt!2417105))))

(declare-fun b!6613370 () Bool)

(declare-fun e!4001049 () Bool)

(assert (=> b!6613370 (= e!4001046 e!4001049)))

(declare-fun res!2711925 () Bool)

(assert (=> b!6613370 (=> res!2711925 e!4001049)))

(assert (=> b!6613370 (= res!2711925 call!579379)))

(declare-fun b!6613371 () Bool)

(declare-fun res!2711928 () Bool)

(assert (=> b!6613371 (=> res!2711928 e!4001049)))

(assert (=> b!6613371 (= res!2711928 (not (isEmpty!37915 (tail!12499 s!2326))))))

(declare-fun b!6613372 () Bool)

(assert (=> b!6613372 (= e!4001048 (matchR!8668 (derivativeStep!5165 r!7292 (head!13414 s!2326)) (tail!12499 s!2326)))))

(declare-fun b!6613373 () Bool)

(assert (=> b!6613373 (= e!4001047 (= lt!2417105 call!579379))))

(declare-fun b!6613374 () Bool)

(assert (=> b!6613374 (= e!4001049 (not (= (head!13414 s!2326) (c!1218776 r!7292))))))

(declare-fun b!6613375 () Bool)

(assert (=> b!6613375 (= e!4001048 (nullable!6478 r!7292))))

(declare-fun b!6613376 () Bool)

(declare-fun res!2711923 () Bool)

(assert (=> b!6613376 (=> res!2711923 e!4001050)))

(assert (=> b!6613376 (= res!2711923 e!4001052)))

(declare-fun res!2711927 () Bool)

(assert (=> b!6613376 (=> (not res!2711927) (not e!4001052))))

(assert (=> b!6613376 (= res!2711927 lt!2417105)))

(assert (= (and d!2073252 c!1218958) b!6613375))

(assert (= (and d!2073252 (not c!1218958)) b!6613372))

(assert (= (and d!2073252 c!1218957) b!6613373))

(assert (= (and d!2073252 (not c!1218957)) b!6613363))

(assert (= (and b!6613363 c!1218959) b!6613367))

(assert (= (and b!6613363 (not c!1218959)) b!6613365))

(assert (= (and b!6613365 (not res!2711926)) b!6613376))

(assert (= (and b!6613376 res!2711927) b!6613368))

(assert (= (and b!6613368 res!2711924) b!6613366))

(assert (= (and b!6613366 res!2711922) b!6613364))

(assert (= (and b!6613376 (not res!2711923)) b!6613369))

(assert (= (and b!6613369 res!2711921) b!6613370))

(assert (= (and b!6613370 (not res!2711925)) b!6613371))

(assert (= (and b!6613371 (not res!2711928)) b!6613374))

(assert (= (or b!6613373 b!6613368 b!6613370) bm!579374))

(assert (=> b!6613366 m!7386994))

(assert (=> b!6613366 m!7386994))

(assert (=> b!6613366 m!7386996))

(assert (=> b!6613364 m!7386998))

(assert (=> b!6613372 m!7386998))

(assert (=> b!6613372 m!7386998))

(declare-fun m!7387072 () Bool)

(assert (=> b!6613372 m!7387072))

(assert (=> b!6613372 m!7386994))

(assert (=> b!6613372 m!7387072))

(assert (=> b!6613372 m!7386994))

(declare-fun m!7387074 () Bool)

(assert (=> b!6613372 m!7387074))

(assert (=> bm!579374 m!7387004))

(declare-fun m!7387076 () Bool)

(assert (=> b!6613375 m!7387076))

(assert (=> b!6613374 m!7386998))

(assert (=> d!2073252 m!7387004))

(assert (=> d!2073252 m!7386674))

(assert (=> b!6613371 m!7386994))

(assert (=> b!6613371 m!7386994))

(assert (=> b!6613371 m!7386996))

(assert (=> b!6612692 d!2073252))

(declare-fun d!2073254 () Bool)

(assert (=> d!2073254 (= (matchR!8668 r!7292 s!2326) (matchRSpec!3586 r!7292 s!2326))))

(declare-fun lt!2417106 () Unit!159295)

(assert (=> d!2073254 (= lt!2417106 (choose!49411 r!7292 s!2326))))

(assert (=> d!2073254 (validRegex!8221 r!7292)))

(assert (=> d!2073254 (= (mainMatchTheorem!3586 r!7292 s!2326) lt!2417106)))

(declare-fun bs!1695463 () Bool)

(assert (= bs!1695463 d!2073254))

(assert (=> bs!1695463 m!7386616))

(assert (=> bs!1695463 m!7386614))

(declare-fun m!7387078 () Bool)

(assert (=> bs!1695463 m!7387078))

(assert (=> bs!1695463 m!7386674))

(assert (=> b!6612692 d!2073254))

(declare-fun bs!1695464 () Bool)

(declare-fun d!2073256 () Bool)

(assert (= bs!1695464 (and d!2073256 d!2073116)))

(declare-fun lambda!369390 () Int)

(assert (=> bs!1695464 (= lambda!369390 lambda!369339)))

(declare-fun bs!1695465 () Bool)

(assert (= bs!1695465 (and d!2073256 d!2073188)))

(assert (=> bs!1695465 (= lambda!369390 lambda!369357)))

(declare-fun bs!1695466 () Bool)

(assert (= bs!1695466 (and d!2073256 d!2073244)))

(assert (=> bs!1695466 (= lambda!369390 lambda!369385)))

(declare-fun b!6613397 () Bool)

(declare-fun e!4001068 () Bool)

(declare-fun e!4001067 () Bool)

(assert (=> b!6613397 (= e!4001068 e!4001067)))

(declare-fun c!1218970 () Bool)

(assert (=> b!6613397 (= c!1218970 (isEmpty!37912 (tail!12498 (unfocusZipperList!1906 zl!343))))))

(declare-fun b!6613398 () Bool)

(declare-fun lt!2417109 () Regex!16485)

(assert (=> b!6613398 (= e!4001067 (= lt!2417109 (head!13413 (unfocusZipperList!1906 zl!343))))))

(declare-fun b!6613399 () Bool)

(declare-fun e!4001065 () Regex!16485)

(assert (=> b!6613399 (= e!4001065 (Union!16485 (h!72078 (unfocusZipperList!1906 zl!343)) (generalisedUnion!2329 (t!379408 (unfocusZipperList!1906 zl!343)))))))

(declare-fun b!6613400 () Bool)

(declare-fun isUnion!1298 (Regex!16485) Bool)

(assert (=> b!6613400 (= e!4001067 (isUnion!1298 lt!2417109))))

(declare-fun b!6613401 () Bool)

(declare-fun isEmptyLang!1868 (Regex!16485) Bool)

(assert (=> b!6613401 (= e!4001068 (isEmptyLang!1868 lt!2417109))))

(declare-fun b!6613402 () Bool)

(declare-fun e!4001070 () Bool)

(assert (=> b!6613402 (= e!4001070 (isEmpty!37912 (t!379408 (unfocusZipperList!1906 zl!343))))))

(declare-fun b!6613403 () Bool)

(declare-fun e!4001066 () Regex!16485)

(assert (=> b!6613403 (= e!4001066 e!4001065)))

(declare-fun c!1218969 () Bool)

(assert (=> b!6613403 (= c!1218969 ((_ is Cons!65630) (unfocusZipperList!1906 zl!343)))))

(declare-fun e!4001069 () Bool)

(assert (=> d!2073256 e!4001069))

(declare-fun res!2711933 () Bool)

(assert (=> d!2073256 (=> (not res!2711933) (not e!4001069))))

(assert (=> d!2073256 (= res!2711933 (validRegex!8221 lt!2417109))))

(assert (=> d!2073256 (= lt!2417109 e!4001066)))

(declare-fun c!1218968 () Bool)

(assert (=> d!2073256 (= c!1218968 e!4001070)))

(declare-fun res!2711934 () Bool)

(assert (=> d!2073256 (=> (not res!2711934) (not e!4001070))))

(assert (=> d!2073256 (= res!2711934 ((_ is Cons!65630) (unfocusZipperList!1906 zl!343)))))

(assert (=> d!2073256 (forall!15681 (unfocusZipperList!1906 zl!343) lambda!369390)))

(assert (=> d!2073256 (= (generalisedUnion!2329 (unfocusZipperList!1906 zl!343)) lt!2417109)))

(declare-fun b!6613404 () Bool)

(assert (=> b!6613404 (= e!4001069 e!4001068)))

(declare-fun c!1218971 () Bool)

(assert (=> b!6613404 (= c!1218971 (isEmpty!37912 (unfocusZipperList!1906 zl!343)))))

(declare-fun b!6613405 () Bool)

(assert (=> b!6613405 (= e!4001065 EmptyLang!16485)))

(declare-fun b!6613406 () Bool)

(assert (=> b!6613406 (= e!4001066 (h!72078 (unfocusZipperList!1906 zl!343)))))

(assert (= (and d!2073256 res!2711934) b!6613402))

(assert (= (and d!2073256 c!1218968) b!6613406))

(assert (= (and d!2073256 (not c!1218968)) b!6613403))

(assert (= (and b!6613403 c!1218969) b!6613399))

(assert (= (and b!6613403 (not c!1218969)) b!6613405))

(assert (= (and d!2073256 res!2711933) b!6613404))

(assert (= (and b!6613404 c!1218971) b!6613401))

(assert (= (and b!6613404 (not c!1218971)) b!6613397))

(assert (= (and b!6613397 c!1218970) b!6613398))

(assert (= (and b!6613397 (not c!1218970)) b!6613400))

(declare-fun m!7387080 () Bool)

(assert (=> b!6613401 m!7387080))

(declare-fun m!7387082 () Bool)

(assert (=> d!2073256 m!7387082))

(assert (=> d!2073256 m!7386624))

(declare-fun m!7387084 () Bool)

(assert (=> d!2073256 m!7387084))

(declare-fun m!7387086 () Bool)

(assert (=> b!6613400 m!7387086))

(assert (=> b!6613398 m!7386624))

(declare-fun m!7387088 () Bool)

(assert (=> b!6613398 m!7387088))

(declare-fun m!7387090 () Bool)

(assert (=> b!6613399 m!7387090))

(assert (=> b!6613404 m!7386624))

(declare-fun m!7387092 () Bool)

(assert (=> b!6613404 m!7387092))

(declare-fun m!7387094 () Bool)

(assert (=> b!6613402 m!7387094))

(assert (=> b!6613397 m!7386624))

(declare-fun m!7387096 () Bool)

(assert (=> b!6613397 m!7387096))

(assert (=> b!6613397 m!7387096))

(declare-fun m!7387098 () Bool)

(assert (=> b!6613397 m!7387098))

(assert (=> b!6612682 d!2073256))

(declare-fun bs!1695467 () Bool)

(declare-fun d!2073258 () Bool)

(assert (= bs!1695467 (and d!2073258 d!2073116)))

(declare-fun lambda!369393 () Int)

(assert (=> bs!1695467 (= lambda!369393 lambda!369339)))

(declare-fun bs!1695468 () Bool)

(assert (= bs!1695468 (and d!2073258 d!2073188)))

(assert (=> bs!1695468 (= lambda!369393 lambda!369357)))

(declare-fun bs!1695469 () Bool)

(assert (= bs!1695469 (and d!2073258 d!2073244)))

(assert (=> bs!1695469 (= lambda!369393 lambda!369385)))

(declare-fun bs!1695470 () Bool)

(assert (= bs!1695470 (and d!2073258 d!2073256)))

(assert (=> bs!1695470 (= lambda!369393 lambda!369390)))

(declare-fun lt!2417112 () List!65754)

(assert (=> d!2073258 (forall!15681 lt!2417112 lambda!369393)))

(declare-fun e!4001073 () List!65754)

(assert (=> d!2073258 (= lt!2417112 e!4001073)))

(declare-fun c!1218974 () Bool)

(assert (=> d!2073258 (= c!1218974 ((_ is Cons!65631) zl!343))))

(assert (=> d!2073258 (= (unfocusZipperList!1906 zl!343) lt!2417112)))

(declare-fun b!6613411 () Bool)

(assert (=> b!6613411 (= e!4001073 (Cons!65630 (generalisedConcat!2082 (exprs!6369 (h!72079 zl!343))) (unfocusZipperList!1906 (t!379409 zl!343))))))

(declare-fun b!6613412 () Bool)

(assert (=> b!6613412 (= e!4001073 Nil!65630)))

(assert (= (and d!2073258 c!1218974) b!6613411))

(assert (= (and d!2073258 (not c!1218974)) b!6613412))

(declare-fun m!7387100 () Bool)

(assert (=> d!2073258 m!7387100))

(assert (=> b!6613411 m!7386682))

(declare-fun m!7387102 () Bool)

(assert (=> b!6613411 m!7387102))

(assert (=> b!6612682 d!2073258))

(declare-fun b!6613417 () Bool)

(declare-fun e!4001076 () Bool)

(declare-fun tp!1821534 () Bool)

(declare-fun tp!1821535 () Bool)

(assert (=> b!6613417 (= e!4001076 (and tp!1821534 tp!1821535))))

(assert (=> b!6612689 (= tp!1821467 e!4001076)))

(assert (= (and b!6612689 ((_ is Cons!65630) (exprs!6369 setElem!45184))) b!6613417))

(declare-fun e!4001079 () Bool)

(assert (=> b!6612679 (= tp!1821464 e!4001079)))

(declare-fun b!6613430 () Bool)

(declare-fun tp!1821547 () Bool)

(assert (=> b!6613430 (= e!4001079 tp!1821547)))

(declare-fun b!6613428 () Bool)

(assert (=> b!6613428 (= e!4001079 tp_is_empty!42223)))

(declare-fun b!6613431 () Bool)

(declare-fun tp!1821546 () Bool)

(declare-fun tp!1821550 () Bool)

(assert (=> b!6613431 (= e!4001079 (and tp!1821546 tp!1821550))))

(declare-fun b!6613429 () Bool)

(declare-fun tp!1821548 () Bool)

(declare-fun tp!1821549 () Bool)

(assert (=> b!6613429 (= e!4001079 (and tp!1821548 tp!1821549))))

(assert (= (and b!6612679 ((_ is ElementMatch!16485) (regOne!33482 r!7292))) b!6613428))

(assert (= (and b!6612679 ((_ is Concat!25330) (regOne!33482 r!7292))) b!6613429))

(assert (= (and b!6612679 ((_ is Star!16485) (regOne!33482 r!7292))) b!6613430))

(assert (= (and b!6612679 ((_ is Union!16485) (regOne!33482 r!7292))) b!6613431))

(declare-fun e!4001080 () Bool)

(assert (=> b!6612679 (= tp!1821466 e!4001080)))

(declare-fun b!6613434 () Bool)

(declare-fun tp!1821552 () Bool)

(assert (=> b!6613434 (= e!4001080 tp!1821552)))

(declare-fun b!6613432 () Bool)

(assert (=> b!6613432 (= e!4001080 tp_is_empty!42223)))

(declare-fun b!6613435 () Bool)

(declare-fun tp!1821551 () Bool)

(declare-fun tp!1821555 () Bool)

(assert (=> b!6613435 (= e!4001080 (and tp!1821551 tp!1821555))))

(declare-fun b!6613433 () Bool)

(declare-fun tp!1821553 () Bool)

(declare-fun tp!1821554 () Bool)

(assert (=> b!6613433 (= e!4001080 (and tp!1821553 tp!1821554))))

(assert (= (and b!6612679 ((_ is ElementMatch!16485) (regTwo!33482 r!7292))) b!6613432))

(assert (= (and b!6612679 ((_ is Concat!25330) (regTwo!33482 r!7292))) b!6613433))

(assert (= (and b!6612679 ((_ is Star!16485) (regTwo!33482 r!7292))) b!6613434))

(assert (= (and b!6612679 ((_ is Union!16485) (regTwo!33482 r!7292))) b!6613435))

(declare-fun b!6613440 () Bool)

(declare-fun e!4001083 () Bool)

(declare-fun tp!1821558 () Bool)

(assert (=> b!6613440 (= e!4001083 (and tp_is_empty!42223 tp!1821558))))

(assert (=> b!6612676 (= tp!1821471 e!4001083)))

(assert (= (and b!6612676 ((_ is Cons!65632) (t!379410 s!2326))) b!6613440))

(declare-fun b!6613448 () Bool)

(declare-fun e!4001089 () Bool)

(declare-fun tp!1821563 () Bool)

(assert (=> b!6613448 (= e!4001089 tp!1821563)))

(declare-fun tp!1821564 () Bool)

(declare-fun b!6613447 () Bool)

(declare-fun e!4001088 () Bool)

(assert (=> b!6613447 (= e!4001088 (and (inv!84459 (h!72079 (t!379409 zl!343))) e!4001089 tp!1821564))))

(assert (=> b!6612696 (= tp!1821468 e!4001088)))

(assert (= b!6613447 b!6613448))

(assert (= (and b!6612696 ((_ is Cons!65631) (t!379409 zl!343))) b!6613447))

(declare-fun m!7387104 () Bool)

(assert (=> b!6613447 m!7387104))

(declare-fun condSetEmpty!45190 () Bool)

(assert (=> setNonEmpty!45184 (= condSetEmpty!45190 (= setRest!45184 ((as const (Array Context!11738 Bool)) false)))))

(declare-fun setRes!45190 () Bool)

(assert (=> setNonEmpty!45184 (= tp!1821469 setRes!45190)))

(declare-fun setIsEmpty!45190 () Bool)

(assert (=> setIsEmpty!45190 setRes!45190))

(declare-fun setElem!45190 () Context!11738)

(declare-fun e!4001092 () Bool)

(declare-fun setNonEmpty!45190 () Bool)

(declare-fun tp!1821570 () Bool)

(assert (=> setNonEmpty!45190 (= setRes!45190 (and tp!1821570 (inv!84459 setElem!45190) e!4001092))))

(declare-fun setRest!45190 () (InoxSet Context!11738))

(assert (=> setNonEmpty!45190 (= setRest!45184 ((_ map or) (store ((as const (Array Context!11738 Bool)) false) setElem!45190 true) setRest!45190))))

(declare-fun b!6613453 () Bool)

(declare-fun tp!1821569 () Bool)

(assert (=> b!6613453 (= e!4001092 tp!1821569)))

(assert (= (and setNonEmpty!45184 condSetEmpty!45190) setIsEmpty!45190))

(assert (= (and setNonEmpty!45184 (not condSetEmpty!45190)) setNonEmpty!45190))

(assert (= setNonEmpty!45190 b!6613453))

(declare-fun m!7387106 () Bool)

(assert (=> setNonEmpty!45190 m!7387106))

(declare-fun e!4001093 () Bool)

(assert (=> b!6612688 (= tp!1821463 e!4001093)))

(declare-fun b!6613456 () Bool)

(declare-fun tp!1821572 () Bool)

(assert (=> b!6613456 (= e!4001093 tp!1821572)))

(declare-fun b!6613454 () Bool)

(assert (=> b!6613454 (= e!4001093 tp_is_empty!42223)))

(declare-fun b!6613457 () Bool)

(declare-fun tp!1821571 () Bool)

(declare-fun tp!1821575 () Bool)

(assert (=> b!6613457 (= e!4001093 (and tp!1821571 tp!1821575))))

(declare-fun b!6613455 () Bool)

(declare-fun tp!1821573 () Bool)

(declare-fun tp!1821574 () Bool)

(assert (=> b!6613455 (= e!4001093 (and tp!1821573 tp!1821574))))

(assert (= (and b!6612688 ((_ is ElementMatch!16485) (regOne!33483 r!7292))) b!6613454))

(assert (= (and b!6612688 ((_ is Concat!25330) (regOne!33483 r!7292))) b!6613455))

(assert (= (and b!6612688 ((_ is Star!16485) (regOne!33483 r!7292))) b!6613456))

(assert (= (and b!6612688 ((_ is Union!16485) (regOne!33483 r!7292))) b!6613457))

(declare-fun e!4001094 () Bool)

(assert (=> b!6612688 (= tp!1821465 e!4001094)))

(declare-fun b!6613460 () Bool)

(declare-fun tp!1821577 () Bool)

(assert (=> b!6613460 (= e!4001094 tp!1821577)))

(declare-fun b!6613458 () Bool)

(assert (=> b!6613458 (= e!4001094 tp_is_empty!42223)))

(declare-fun b!6613461 () Bool)

(declare-fun tp!1821576 () Bool)

(declare-fun tp!1821580 () Bool)

(assert (=> b!6613461 (= e!4001094 (and tp!1821576 tp!1821580))))

(declare-fun b!6613459 () Bool)

(declare-fun tp!1821578 () Bool)

(declare-fun tp!1821579 () Bool)

(assert (=> b!6613459 (= e!4001094 (and tp!1821578 tp!1821579))))

(assert (= (and b!6612688 ((_ is ElementMatch!16485) (regTwo!33483 r!7292))) b!6613458))

(assert (= (and b!6612688 ((_ is Concat!25330) (regTwo!33483 r!7292))) b!6613459))

(assert (= (and b!6612688 ((_ is Star!16485) (regTwo!33483 r!7292))) b!6613460))

(assert (= (and b!6612688 ((_ is Union!16485) (regTwo!33483 r!7292))) b!6613461))

(declare-fun e!4001095 () Bool)

(assert (=> b!6612697 (= tp!1821462 e!4001095)))

(declare-fun b!6613464 () Bool)

(declare-fun tp!1821582 () Bool)

(assert (=> b!6613464 (= e!4001095 tp!1821582)))

(declare-fun b!6613462 () Bool)

(assert (=> b!6613462 (= e!4001095 tp_is_empty!42223)))

(declare-fun b!6613465 () Bool)

(declare-fun tp!1821581 () Bool)

(declare-fun tp!1821585 () Bool)

(assert (=> b!6613465 (= e!4001095 (and tp!1821581 tp!1821585))))

(declare-fun b!6613463 () Bool)

(declare-fun tp!1821583 () Bool)

(declare-fun tp!1821584 () Bool)

(assert (=> b!6613463 (= e!4001095 (and tp!1821583 tp!1821584))))

(assert (= (and b!6612697 ((_ is ElementMatch!16485) (reg!16814 r!7292))) b!6613462))

(assert (= (and b!6612697 ((_ is Concat!25330) (reg!16814 r!7292))) b!6613463))

(assert (= (and b!6612697 ((_ is Star!16485) (reg!16814 r!7292))) b!6613464))

(assert (= (and b!6612697 ((_ is Union!16485) (reg!16814 r!7292))) b!6613465))

(declare-fun b!6613466 () Bool)

(declare-fun e!4001096 () Bool)

(declare-fun tp!1821586 () Bool)

(declare-fun tp!1821587 () Bool)

(assert (=> b!6613466 (= e!4001096 (and tp!1821586 tp!1821587))))

(assert (=> b!6612701 (= tp!1821470 e!4001096)))

(assert (= (and b!6612701 ((_ is Cons!65630) (exprs!6369 (h!72079 zl!343)))) b!6613466))

(declare-fun b_lambda!250159 () Bool)

(assert (= b_lambda!250155 (or b!6612694 b_lambda!250159)))

(declare-fun bs!1695471 () Bool)

(declare-fun d!2073260 () Bool)

(assert (= bs!1695471 (and d!2073260 b!6612694)))

(assert (=> bs!1695471 (= (dynLambda!26136 lambda!369333 (h!72079 zl!343)) (derivationStepZipperUp!1659 (h!72079 zl!343) (h!72080 s!2326)))))

(assert (=> bs!1695471 m!7386664))

(assert (=> d!2073178 d!2073260))

(check-sat (not b!6613255) (not b!6612759) (not setNonEmpty!45190) (not d!2073188) (not d!2073236) (not b!6612767) (not b!6612760) (not d!2073254) (not d!2073198) (not d!2073196) (not b!6613400) (not bm!579325) (not b!6613464) (not b!6612998) (not b!6612995) (not d!2073244) (not d!2073228) (not b!6613429) (not bm!579370) (not b!6613440) (not bm!579323) (not b!6613258) (not b!6613417) (not d!2073154) (not b!6612762) (not b!6613348) (not bm!579306) (not b_lambda!250159) (not b!6612761) (not d!2073156) (not b!6613430) (not bm!579367) (not b!6613433) (not d!2073178) tp_is_empty!42223 (not b!6612812) (not b!6612814) (not d!2073240) (not b!6613453) (not d!2073192) (not b!6612813) (not d!2073144) (not b!6612764) (not b!6613463) (not b!6613065) (not bs!1695471) (not b!6613448) (not b!6613358) (not b!6613364) (not d!2073230) (not b!6612858) (not b!6613052) (not b!6613404) (not b!6613003) (not b!6613401) (not b!6613324) (not b!6613259) (not b!6613294) (not d!2073242) (not b!6613372) (not bm!579327) (not b!6613459) (not b!6613366) (not d!2073252) (not b!6613457) (not b!6613325) (not d!2073210) (not b!6612765) (not b!6613094) (not b!6613000) (not b!6613322) (not b!6612953) (not d!2073238) (not b!6613299) (not b!6613328) (not b!6613371) (not bm!579352) (not bm!579336) (not b!6613250) (not bm!579373) (not bm!579372) (not b!6613353) (not d!2073234) (not b!6613256) (not b!6613398) (not d!2073116) (not b!6613330) (not b!6613465) (not d!2073182) (not b!6613374) (not d!2073138) (not b!6613460) (not b!6613248) (not b!6613375) (not b!6613461) (not b!6613447) (not b!6613399) (not b!6612815) (not bm!579337) (not b!6613326) (not d!2073232) (not b!6613455) (not d!2073258) (not bm!579374) (not b!6613402) (not b!6613435) (not b!6613466) (not b!6612782) (not b!6613431) (not d!2073152) (not b!6613411) (not b!6613434) (not bm!579369) (not bm!579368) (not b!6613456) (not b!6613064) (not d!2073256) (not bm!579362) (not b!6612861) (not b!6613397) (not bm!579351))
(check-sat)
