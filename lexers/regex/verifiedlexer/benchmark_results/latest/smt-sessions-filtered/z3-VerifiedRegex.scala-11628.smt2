; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!648078 () Bool)

(assert start!648078)

(declare-fun b!6636112 () Bool)

(assert (=> b!6636112 true))

(assert (=> b!6636112 true))

(declare-fun lambda!370826 () Int)

(declare-fun lambda!370825 () Int)

(assert (=> b!6636112 (not (= lambda!370826 lambda!370825))))

(assert (=> b!6636112 true))

(assert (=> b!6636112 true))

(declare-fun b!6636122 () Bool)

(assert (=> b!6636122 true))

(declare-fun e!4013491 () Bool)

(declare-fun e!4013483 () Bool)

(assert (=> b!6636112 (= e!4013491 e!4013483)))

(declare-fun res!2719603 () Bool)

(assert (=> b!6636112 (=> res!2719603 e!4013483)))

(declare-datatypes ((C!33276 0))(
  ( (C!33277 (val!26340 Int)) )
))
(declare-datatypes ((List!65808 0))(
  ( (Nil!65684) (Cons!65684 (h!72132 C!33276) (t!379474 List!65808)) )
))
(declare-fun s!2326 () List!65808)

(declare-fun lt!2419600 () Bool)

(declare-fun lt!2419596 () Bool)

(get-info :version)

(assert (=> b!6636112 (= res!2719603 (or (not (= lt!2419600 lt!2419596)) ((_ is Nil!65684) s!2326)))))

(declare-fun Exists!3573 (Int) Bool)

(assert (=> b!6636112 (= (Exists!3573 lambda!370825) (Exists!3573 lambda!370826))))

(declare-datatypes ((Unit!159367 0))(
  ( (Unit!159368) )
))
(declare-fun lt!2419599 () Unit!159367)

(declare-datatypes ((Regex!16503 0))(
  ( (ElementMatch!16503 (c!1224076 C!33276)) (Concat!25348 (regOne!33518 Regex!16503) (regTwo!33518 Regex!16503)) (EmptyExpr!16503) (Star!16503 (reg!16832 Regex!16503)) (EmptyLang!16503) (Union!16503 (regOne!33519 Regex!16503) (regTwo!33519 Regex!16503)) )
))
(declare-fun r!7292 () Regex!16503)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2110 (Regex!16503 Regex!16503 List!65808) Unit!159367)

(assert (=> b!6636112 (= lt!2419599 (lemmaExistCutMatchRandMatchRSpecEquivalent!2110 (regOne!33518 r!7292) (regTwo!33518 r!7292) s!2326))))

(assert (=> b!6636112 (= lt!2419596 (Exists!3573 lambda!370825))))

(declare-datatypes ((tuple2!66964 0))(
  ( (tuple2!66965 (_1!36785 List!65808) (_2!36785 List!65808)) )
))
(declare-datatypes ((Option!16394 0))(
  ( (None!16393) (Some!16393 (v!52586 tuple2!66964)) )
))
(declare-fun isDefined!13097 (Option!16394) Bool)

(declare-fun findConcatSeparation!2808 (Regex!16503 Regex!16503 List!65808 List!65808 List!65808) Option!16394)

(assert (=> b!6636112 (= lt!2419596 (isDefined!13097 (findConcatSeparation!2808 (regOne!33518 r!7292) (regTwo!33518 r!7292) Nil!65684 s!2326 s!2326)))))

(declare-fun lt!2419588 () Unit!159367)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2572 (Regex!16503 Regex!16503 List!65808) Unit!159367)

(assert (=> b!6636112 (= lt!2419588 (lemmaFindConcatSeparationEquivalentToExists!2572 (regOne!33518 r!7292) (regTwo!33518 r!7292) s!2326))))

(declare-fun b!6636113 () Bool)

(declare-fun e!4013485 () Unit!159367)

(declare-fun Unit!159369 () Unit!159367)

(assert (=> b!6636113 (= e!4013485 Unit!159369)))

(declare-fun b!6636114 () Bool)

(declare-fun res!2719610 () Bool)

(assert (=> b!6636114 (=> res!2719610 e!4013491)))

(declare-datatypes ((List!65809 0))(
  ( (Nil!65685) (Cons!65685 (h!72133 Regex!16503) (t!379475 List!65809)) )
))
(declare-datatypes ((Context!11774 0))(
  ( (Context!11775 (exprs!6387 List!65809)) )
))
(declare-datatypes ((List!65810 0))(
  ( (Nil!65686) (Cons!65686 (h!72134 Context!11774) (t!379476 List!65810)) )
))
(declare-fun zl!343 () List!65810)

(declare-fun generalisedConcat!2100 (List!65809) Regex!16503)

(assert (=> b!6636114 (= res!2719610 (not (= r!7292 (generalisedConcat!2100 (exprs!6387 (h!72134 zl!343))))))))

(declare-fun b!6636115 () Bool)

(declare-fun e!4013493 () Bool)

(declare-fun tp!1827932 () Bool)

(assert (=> b!6636115 (= e!4013493 tp!1827932)))

(declare-fun b!6636116 () Bool)

(declare-fun res!2719602 () Bool)

(declare-fun e!4013486 () Bool)

(assert (=> b!6636116 (=> res!2719602 e!4013486)))

(assert (=> b!6636116 (= res!2719602 (or ((_ is Concat!25348) (regOne!33518 r!7292)) ((_ is Star!16503) (regOne!33518 r!7292)) ((_ is EmptyExpr!16503) (regOne!33518 r!7292))))))

(declare-fun b!6636117 () Bool)

(declare-fun e!4013488 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2419591 () (InoxSet Context!11774))

(declare-fun matchZipper!2515 ((InoxSet Context!11774) List!65808) Bool)

(assert (=> b!6636117 (= e!4013488 (matchZipper!2515 lt!2419591 (t!379474 s!2326)))))

(declare-fun b!6636118 () Bool)

(declare-fun tp!1827927 () Bool)

(declare-fun tp!1827935 () Bool)

(assert (=> b!6636118 (= e!4013493 (and tp!1827927 tp!1827935))))

(declare-fun b!6636119 () Bool)

(declare-fun tp_is_empty!42259 () Bool)

(assert (=> b!6636119 (= e!4013493 tp_is_empty!42259)))

(declare-fun b!6636120 () Bool)

(declare-fun e!4013490 () Bool)

(declare-fun tp!1827930 () Bool)

(assert (=> b!6636120 (= e!4013490 tp!1827930)))

(declare-fun b!6636121 () Bool)

(declare-fun res!2719599 () Bool)

(assert (=> b!6636121 (=> res!2719599 e!4013483)))

(declare-fun isEmpty!37983 (List!65809) Bool)

(assert (=> b!6636121 (= res!2719599 (isEmpty!37983 (t!379475 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun res!2719600 () Bool)

(declare-fun e!4013484 () Bool)

(assert (=> start!648078 (=> (not res!2719600) (not e!4013484))))

(declare-fun validRegex!8239 (Regex!16503) Bool)

(assert (=> start!648078 (= res!2719600 (validRegex!8239 r!7292))))

(assert (=> start!648078 e!4013484))

(assert (=> start!648078 e!4013493))

(declare-fun condSetEmpty!45370 () Bool)

(declare-fun z!1189 () (InoxSet Context!11774))

(assert (=> start!648078 (= condSetEmpty!45370 (= z!1189 ((as const (Array Context!11774 Bool)) false)))))

(declare-fun setRes!45370 () Bool)

(assert (=> start!648078 setRes!45370))

(declare-fun e!4013494 () Bool)

(assert (=> start!648078 e!4013494))

(declare-fun e!4013482 () Bool)

(assert (=> start!648078 e!4013482))

(assert (=> b!6636122 (= e!4013483 e!4013486)))

(declare-fun res!2719607 () Bool)

(assert (=> b!6636122 (=> res!2719607 e!4013486)))

(assert (=> b!6636122 (= res!2719607 (or (and ((_ is ElementMatch!16503) (regOne!33518 r!7292)) (= (c!1224076 (regOne!33518 r!7292)) (h!72132 s!2326))) ((_ is Union!16503) (regOne!33518 r!7292))))))

(declare-fun lt!2419595 () Unit!159367)

(assert (=> b!6636122 (= lt!2419595 e!4013485)))

(declare-fun c!1224075 () Bool)

(declare-fun nullable!6496 (Regex!16503) Bool)

(assert (=> b!6636122 (= c!1224075 (nullable!6496 (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun lambda!370827 () Int)

(declare-fun flatMap!2008 ((InoxSet Context!11774) Int) (InoxSet Context!11774))

(declare-fun derivationStepZipperUp!1677 (Context!11774 C!33276) (InoxSet Context!11774))

(assert (=> b!6636122 (= (flatMap!2008 z!1189 lambda!370827) (derivationStepZipperUp!1677 (h!72134 zl!343) (h!72132 s!2326)))))

(declare-fun lt!2419594 () Unit!159367)

(declare-fun lemmaFlatMapOnSingletonSet!1534 ((InoxSet Context!11774) Context!11774 Int) Unit!159367)

(assert (=> b!6636122 (= lt!2419594 (lemmaFlatMapOnSingletonSet!1534 z!1189 (h!72134 zl!343) lambda!370827))))

(declare-fun lt!2419589 () Context!11774)

(assert (=> b!6636122 (= lt!2419591 (derivationStepZipperUp!1677 lt!2419589 (h!72132 s!2326)))))

(declare-fun lt!2419592 () (InoxSet Context!11774))

(declare-fun derivationStepZipperDown!1751 (Regex!16503 Context!11774 C!33276) (InoxSet Context!11774))

(assert (=> b!6636122 (= lt!2419592 (derivationStepZipperDown!1751 (h!72133 (exprs!6387 (h!72134 zl!343))) lt!2419589 (h!72132 s!2326)))))

(assert (=> b!6636122 (= lt!2419589 (Context!11775 (t!379475 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun lt!2419598 () (InoxSet Context!11774))

(assert (=> b!6636122 (= lt!2419598 (derivationStepZipperUp!1677 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343))))) (h!72132 s!2326)))))

(declare-fun setNonEmpty!45370 () Bool)

(declare-fun tp!1827933 () Bool)

(declare-fun setElem!45370 () Context!11774)

(declare-fun inv!84504 (Context!11774) Bool)

(assert (=> setNonEmpty!45370 (= setRes!45370 (and tp!1827933 (inv!84504 setElem!45370) e!4013490))))

(declare-fun setRest!45370 () (InoxSet Context!11774))

(assert (=> setNonEmpty!45370 (= z!1189 ((_ map or) (store ((as const (Array Context!11774 Bool)) false) setElem!45370 true) setRest!45370))))

(declare-fun b!6636123 () Bool)

(declare-fun tp!1827931 () Bool)

(declare-fun tp!1827929 () Bool)

(assert (=> b!6636123 (= e!4013493 (and tp!1827931 tp!1827929))))

(declare-fun b!6636124 () Bool)

(declare-fun res!2719605 () Bool)

(assert (=> b!6636124 (=> (not res!2719605) (not e!4013484))))

(declare-fun unfocusZipper!2245 (List!65810) Regex!16503)

(assert (=> b!6636124 (= res!2719605 (= r!7292 (unfocusZipper!2245 zl!343)))))

(declare-fun setIsEmpty!45370 () Bool)

(assert (=> setIsEmpty!45370 setRes!45370))

(declare-fun b!6636125 () Bool)

(declare-fun res!2719598 () Bool)

(assert (=> b!6636125 (=> res!2719598 e!4013491)))

(declare-fun isEmpty!37984 (List!65810) Bool)

(assert (=> b!6636125 (= res!2719598 (not (isEmpty!37984 (t!379476 zl!343))))))

(declare-fun e!4013492 () Bool)

(declare-fun tp!1827926 () Bool)

(declare-fun b!6636126 () Bool)

(assert (=> b!6636126 (= e!4013494 (and (inv!84504 (h!72134 zl!343)) e!4013492 tp!1827926))))

(declare-fun b!6636127 () Bool)

(declare-fun Unit!159370 () Unit!159367)

(assert (=> b!6636127 (= e!4013485 Unit!159370)))

(declare-fun lt!2419597 () Unit!159367)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1334 ((InoxSet Context!11774) (InoxSet Context!11774) List!65808) Unit!159367)

(assert (=> b!6636127 (= lt!2419597 (lemmaZipperConcatMatchesSameAsBothZippers!1334 lt!2419592 lt!2419591 (t!379474 s!2326)))))

(declare-fun res!2719604 () Bool)

(assert (=> b!6636127 (= res!2719604 (matchZipper!2515 lt!2419592 (t!379474 s!2326)))))

(assert (=> b!6636127 (=> res!2719604 e!4013488)))

(assert (=> b!6636127 (= (matchZipper!2515 ((_ map or) lt!2419592 lt!2419591) (t!379474 s!2326)) e!4013488)))

(declare-fun b!6636128 () Bool)

(declare-fun tp!1827928 () Bool)

(assert (=> b!6636128 (= e!4013492 tp!1827928)))

(declare-fun b!6636129 () Bool)

(declare-fun res!2719594 () Bool)

(assert (=> b!6636129 (=> res!2719594 e!4013486)))

(declare-fun e!4013487 () Bool)

(assert (=> b!6636129 (= res!2719594 e!4013487)))

(declare-fun res!2719606 () Bool)

(assert (=> b!6636129 (=> (not res!2719606) (not e!4013487))))

(assert (=> b!6636129 (= res!2719606 ((_ is Concat!25348) (regOne!33518 r!7292)))))

(declare-fun b!6636130 () Bool)

(declare-fun res!2719601 () Bool)

(assert (=> b!6636130 (=> res!2719601 e!4013491)))

(assert (=> b!6636130 (= res!2719601 (or ((_ is EmptyExpr!16503) r!7292) ((_ is EmptyLang!16503) r!7292) ((_ is ElementMatch!16503) r!7292) ((_ is Union!16503) r!7292) (not ((_ is Concat!25348) r!7292))))))

(declare-fun b!6636131 () Bool)

(assert (=> b!6636131 (= e!4013484 (not e!4013491))))

(declare-fun res!2719596 () Bool)

(assert (=> b!6636131 (=> res!2719596 e!4013491)))

(assert (=> b!6636131 (= res!2719596 (not ((_ is Cons!65686) zl!343)))))

(declare-fun matchRSpec!3604 (Regex!16503 List!65808) Bool)

(assert (=> b!6636131 (= lt!2419600 (matchRSpec!3604 r!7292 s!2326))))

(declare-fun matchR!8686 (Regex!16503 List!65808) Bool)

(assert (=> b!6636131 (= lt!2419600 (matchR!8686 r!7292 s!2326))))

(declare-fun lt!2419590 () Unit!159367)

(declare-fun mainMatchTheorem!3604 (Regex!16503 List!65808) Unit!159367)

(assert (=> b!6636131 (= lt!2419590 (mainMatchTheorem!3604 r!7292 s!2326))))

(declare-fun b!6636132 () Bool)

(declare-fun tp!1827934 () Bool)

(assert (=> b!6636132 (= e!4013482 (and tp_is_empty!42259 tp!1827934))))

(declare-fun b!6636133 () Bool)

(declare-fun e!4013489 () Bool)

(assert (=> b!6636133 (= e!4013486 e!4013489)))

(declare-fun res!2719597 () Bool)

(assert (=> b!6636133 (=> res!2719597 e!4013489)))

(assert (=> b!6636133 (= res!2719597 (or (not (= lt!2419592 ((as const (Array Context!11774 Bool)) false))) (not (= r!7292 (Concat!25348 (regOne!33518 r!7292) (regTwo!33518 r!7292))))))))

(assert (=> b!6636133 (not (matchZipper!2515 lt!2419592 (t!379474 s!2326)))))

(declare-fun lt!2419593 () Unit!159367)

(declare-fun lemmaEmptyZipperMatchesNothing!96 ((InoxSet Context!11774) List!65808) Unit!159367)

(assert (=> b!6636133 (= lt!2419593 (lemmaEmptyZipperMatchesNothing!96 lt!2419592 (t!379474 s!2326)))))

(declare-fun b!6636134 () Bool)

(declare-fun res!2719608 () Bool)

(assert (=> b!6636134 (=> res!2719608 e!4013491)))

(declare-fun generalisedUnion!2347 (List!65809) Regex!16503)

(declare-fun unfocusZipperList!1924 (List!65810) List!65809)

(assert (=> b!6636134 (= res!2719608 (not (= r!7292 (generalisedUnion!2347 (unfocusZipperList!1924 zl!343)))))))

(declare-fun b!6636135 () Bool)

(declare-fun res!2719595 () Bool)

(assert (=> b!6636135 (=> (not res!2719595) (not e!4013484))))

(declare-fun toList!10287 ((InoxSet Context!11774)) List!65810)

(assert (=> b!6636135 (= res!2719595 (= (toList!10287 z!1189) zl!343))))

(declare-fun b!6636136 () Bool)

(declare-fun res!2719609 () Bool)

(assert (=> b!6636136 (=> res!2719609 e!4013491)))

(assert (=> b!6636136 (= res!2719609 (not ((_ is Cons!65685) (exprs!6387 (h!72134 zl!343)))))))

(declare-fun b!6636137 () Bool)

(assert (=> b!6636137 (= e!4013489 (validRegex!8239 (regOne!33518 r!7292)))))

(declare-fun b!6636138 () Bool)

(assert (=> b!6636138 (= e!4013487 (nullable!6496 (regOne!33518 (regOne!33518 r!7292))))))

(assert (= (and start!648078 res!2719600) b!6636135))

(assert (= (and b!6636135 res!2719595) b!6636124))

(assert (= (and b!6636124 res!2719605) b!6636131))

(assert (= (and b!6636131 (not res!2719596)) b!6636125))

(assert (= (and b!6636125 (not res!2719598)) b!6636114))

(assert (= (and b!6636114 (not res!2719610)) b!6636136))

(assert (= (and b!6636136 (not res!2719609)) b!6636134))

(assert (= (and b!6636134 (not res!2719608)) b!6636130))

(assert (= (and b!6636130 (not res!2719601)) b!6636112))

(assert (= (and b!6636112 (not res!2719603)) b!6636121))

(assert (= (and b!6636121 (not res!2719599)) b!6636122))

(assert (= (and b!6636122 c!1224075) b!6636127))

(assert (= (and b!6636122 (not c!1224075)) b!6636113))

(assert (= (and b!6636127 (not res!2719604)) b!6636117))

(assert (= (and b!6636122 (not res!2719607)) b!6636129))

(assert (= (and b!6636129 res!2719606) b!6636138))

(assert (= (and b!6636129 (not res!2719594)) b!6636116))

(assert (= (and b!6636116 (not res!2719602)) b!6636133))

(assert (= (and b!6636133 (not res!2719597)) b!6636137))

(assert (= (and start!648078 ((_ is ElementMatch!16503) r!7292)) b!6636119))

(assert (= (and start!648078 ((_ is Concat!25348) r!7292)) b!6636118))

(assert (= (and start!648078 ((_ is Star!16503) r!7292)) b!6636115))

(assert (= (and start!648078 ((_ is Union!16503) r!7292)) b!6636123))

(assert (= (and start!648078 condSetEmpty!45370) setIsEmpty!45370))

(assert (= (and start!648078 (not condSetEmpty!45370)) setNonEmpty!45370))

(assert (= setNonEmpty!45370 b!6636120))

(assert (= b!6636126 b!6636128))

(assert (= (and start!648078 ((_ is Cons!65686) zl!343)) b!6636126))

(assert (= (and start!648078 ((_ is Cons!65684) s!2326)) b!6636132))

(declare-fun m!7403790 () Bool)

(assert (=> b!6636135 m!7403790))

(declare-fun m!7403792 () Bool)

(assert (=> b!6636126 m!7403792))

(declare-fun m!7403794 () Bool)

(assert (=> b!6636117 m!7403794))

(declare-fun m!7403796 () Bool)

(assert (=> b!6636121 m!7403796))

(declare-fun m!7403798 () Bool)

(assert (=> b!6636112 m!7403798))

(declare-fun m!7403800 () Bool)

(assert (=> b!6636112 m!7403800))

(declare-fun m!7403802 () Bool)

(assert (=> b!6636112 m!7403802))

(declare-fun m!7403804 () Bool)

(assert (=> b!6636112 m!7403804))

(declare-fun m!7403806 () Bool)

(assert (=> b!6636112 m!7403806))

(assert (=> b!6636112 m!7403800))

(declare-fun m!7403808 () Bool)

(assert (=> b!6636112 m!7403808))

(assert (=> b!6636112 m!7403798))

(declare-fun m!7403810 () Bool)

(assert (=> b!6636114 m!7403810))

(declare-fun m!7403812 () Bool)

(assert (=> b!6636138 m!7403812))

(declare-fun m!7403814 () Bool)

(assert (=> b!6636124 m!7403814))

(declare-fun m!7403816 () Bool)

(assert (=> b!6636127 m!7403816))

(declare-fun m!7403818 () Bool)

(assert (=> b!6636127 m!7403818))

(declare-fun m!7403820 () Bool)

(assert (=> b!6636127 m!7403820))

(assert (=> b!6636133 m!7403818))

(declare-fun m!7403822 () Bool)

(assert (=> b!6636133 m!7403822))

(declare-fun m!7403824 () Bool)

(assert (=> b!6636134 m!7403824))

(assert (=> b!6636134 m!7403824))

(declare-fun m!7403826 () Bool)

(assert (=> b!6636134 m!7403826))

(declare-fun m!7403828 () Bool)

(assert (=> start!648078 m!7403828))

(declare-fun m!7403830 () Bool)

(assert (=> b!6636122 m!7403830))

(declare-fun m!7403832 () Bool)

(assert (=> b!6636122 m!7403832))

(declare-fun m!7403834 () Bool)

(assert (=> b!6636122 m!7403834))

(declare-fun m!7403836 () Bool)

(assert (=> b!6636122 m!7403836))

(declare-fun m!7403838 () Bool)

(assert (=> b!6636122 m!7403838))

(declare-fun m!7403840 () Bool)

(assert (=> b!6636122 m!7403840))

(declare-fun m!7403842 () Bool)

(assert (=> b!6636122 m!7403842))

(declare-fun m!7403844 () Bool)

(assert (=> b!6636137 m!7403844))

(declare-fun m!7403846 () Bool)

(assert (=> b!6636125 m!7403846))

(declare-fun m!7403848 () Bool)

(assert (=> b!6636131 m!7403848))

(declare-fun m!7403850 () Bool)

(assert (=> b!6636131 m!7403850))

(declare-fun m!7403852 () Bool)

(assert (=> b!6636131 m!7403852))

(declare-fun m!7403854 () Bool)

(assert (=> setNonEmpty!45370 m!7403854))

(check-sat (not b!6636115) (not b!6636127) (not b!6636120) tp_is_empty!42259 (not b!6636133) (not b!6636137) (not b!6636138) (not b!6636122) (not b!6636118) (not b!6636114) (not b!6636124) (not b!6636125) (not setNonEmpty!45370) (not b!6636126) (not b!6636132) (not b!6636121) (not b!6636134) (not b!6636128) (not b!6636117) (not b!6636135) (not start!648078) (not b!6636131) (not b!6636123) (not b!6636112))
(check-sat)
(get-model)

(declare-fun b!6636212 () Bool)

(declare-fun e!4013534 () Regex!16503)

(assert (=> b!6636212 (= e!4013534 EmptyLang!16503)))

(declare-fun b!6636213 () Bool)

(declare-fun e!4013537 () Bool)

(assert (=> b!6636213 (= e!4013537 (isEmpty!37983 (t!379475 (unfocusZipperList!1924 zl!343))))))

(declare-fun b!6636214 () Bool)

(declare-fun e!4013538 () Bool)

(declare-fun e!4013535 () Bool)

(assert (=> b!6636214 (= e!4013538 e!4013535)))

(declare-fun c!1224108 () Bool)

(declare-fun tail!12534 (List!65809) List!65809)

(assert (=> b!6636214 (= c!1224108 (isEmpty!37983 (tail!12534 (unfocusZipperList!1924 zl!343))))))

(declare-fun b!6636215 () Bool)

(declare-fun lt!2419606 () Regex!16503)

(declare-fun isUnion!1316 (Regex!16503) Bool)

(assert (=> b!6636215 (= e!4013535 (isUnion!1316 lt!2419606))))

(declare-fun b!6636216 () Bool)

(declare-fun e!4013536 () Regex!16503)

(assert (=> b!6636216 (= e!4013536 e!4013534)))

(declare-fun c!1224105 () Bool)

(assert (=> b!6636216 (= c!1224105 ((_ is Cons!65685) (unfocusZipperList!1924 zl!343)))))

(declare-fun b!6636217 () Bool)

(declare-fun e!4013539 () Bool)

(assert (=> b!6636217 (= e!4013539 e!4013538)))

(declare-fun c!1224106 () Bool)

(assert (=> b!6636217 (= c!1224106 (isEmpty!37983 (unfocusZipperList!1924 zl!343)))))

(declare-fun d!2080175 () Bool)

(assert (=> d!2080175 e!4013539))

(declare-fun res!2719623 () Bool)

(assert (=> d!2080175 (=> (not res!2719623) (not e!4013539))))

(assert (=> d!2080175 (= res!2719623 (validRegex!8239 lt!2419606))))

(assert (=> d!2080175 (= lt!2419606 e!4013536)))

(declare-fun c!1224107 () Bool)

(assert (=> d!2080175 (= c!1224107 e!4013537)))

(declare-fun res!2719622 () Bool)

(assert (=> d!2080175 (=> (not res!2719622) (not e!4013537))))

(assert (=> d!2080175 (= res!2719622 ((_ is Cons!65685) (unfocusZipperList!1924 zl!343)))))

(declare-fun lambda!370830 () Int)

(declare-fun forall!15699 (List!65809 Int) Bool)

(assert (=> d!2080175 (forall!15699 (unfocusZipperList!1924 zl!343) lambda!370830)))

(assert (=> d!2080175 (= (generalisedUnion!2347 (unfocusZipperList!1924 zl!343)) lt!2419606)))

(declare-fun b!6636218 () Bool)

(declare-fun head!13449 (List!65809) Regex!16503)

(assert (=> b!6636218 (= e!4013535 (= lt!2419606 (head!13449 (unfocusZipperList!1924 zl!343))))))

(declare-fun b!6636219 () Bool)

(assert (=> b!6636219 (= e!4013534 (Union!16503 (h!72133 (unfocusZipperList!1924 zl!343)) (generalisedUnion!2347 (t!379475 (unfocusZipperList!1924 zl!343)))))))

(declare-fun b!6636220 () Bool)

(declare-fun isEmptyLang!1886 (Regex!16503) Bool)

(assert (=> b!6636220 (= e!4013538 (isEmptyLang!1886 lt!2419606))))

(declare-fun b!6636221 () Bool)

(assert (=> b!6636221 (= e!4013536 (h!72133 (unfocusZipperList!1924 zl!343)))))

(assert (= (and d!2080175 res!2719622) b!6636213))

(assert (= (and d!2080175 c!1224107) b!6636221))

(assert (= (and d!2080175 (not c!1224107)) b!6636216))

(assert (= (and b!6636216 c!1224105) b!6636219))

(assert (= (and b!6636216 (not c!1224105)) b!6636212))

(assert (= (and d!2080175 res!2719623) b!6636217))

(assert (= (and b!6636217 c!1224106) b!6636220))

(assert (= (and b!6636217 (not c!1224106)) b!6636214))

(assert (= (and b!6636214 c!1224108) b!6636218))

(assert (= (and b!6636214 (not c!1224108)) b!6636215))

(declare-fun m!7403878 () Bool)

(assert (=> b!6636220 m!7403878))

(declare-fun m!7403880 () Bool)

(assert (=> d!2080175 m!7403880))

(assert (=> d!2080175 m!7403824))

(declare-fun m!7403882 () Bool)

(assert (=> d!2080175 m!7403882))

(assert (=> b!6636217 m!7403824))

(declare-fun m!7403884 () Bool)

(assert (=> b!6636217 m!7403884))

(declare-fun m!7403886 () Bool)

(assert (=> b!6636213 m!7403886))

(declare-fun m!7403888 () Bool)

(assert (=> b!6636215 m!7403888))

(assert (=> b!6636214 m!7403824))

(declare-fun m!7403890 () Bool)

(assert (=> b!6636214 m!7403890))

(assert (=> b!6636214 m!7403890))

(declare-fun m!7403892 () Bool)

(assert (=> b!6636214 m!7403892))

(declare-fun m!7403894 () Bool)

(assert (=> b!6636219 m!7403894))

(assert (=> b!6636218 m!7403824))

(declare-fun m!7403896 () Bool)

(assert (=> b!6636218 m!7403896))

(assert (=> b!6636134 d!2080175))

(declare-fun bs!1705464 () Bool)

(declare-fun d!2080193 () Bool)

(assert (= bs!1705464 (and d!2080193 d!2080175)))

(declare-fun lambda!370834 () Int)

(assert (=> bs!1705464 (= lambda!370834 lambda!370830)))

(declare-fun lt!2419612 () List!65809)

(assert (=> d!2080193 (forall!15699 lt!2419612 lambda!370834)))

(declare-fun e!4013548 () List!65809)

(assert (=> d!2080193 (= lt!2419612 e!4013548)))

(declare-fun c!1224116 () Bool)

(assert (=> d!2080193 (= c!1224116 ((_ is Cons!65686) zl!343))))

(assert (=> d!2080193 (= (unfocusZipperList!1924 zl!343) lt!2419612)))

(declare-fun b!6636237 () Bool)

(assert (=> b!6636237 (= e!4013548 (Cons!65685 (generalisedConcat!2100 (exprs!6387 (h!72134 zl!343))) (unfocusZipperList!1924 (t!379476 zl!343))))))

(declare-fun b!6636238 () Bool)

(assert (=> b!6636238 (= e!4013548 Nil!65685)))

(assert (= (and d!2080193 c!1224116) b!6636237))

(assert (= (and d!2080193 (not c!1224116)) b!6636238))

(declare-fun m!7403914 () Bool)

(assert (=> d!2080193 m!7403914))

(assert (=> b!6636237 m!7403810))

(declare-fun m!7403916 () Bool)

(assert (=> b!6636237 m!7403916))

(assert (=> b!6636134 d!2080193))

(declare-fun bs!1705467 () Bool)

(declare-fun d!2080199 () Bool)

(assert (= bs!1705467 (and d!2080199 d!2080175)))

(declare-fun lambda!370842 () Int)

(assert (=> bs!1705467 (= lambda!370842 lambda!370830)))

(declare-fun bs!1705468 () Bool)

(assert (= bs!1705468 (and d!2080199 d!2080193)))

(assert (=> bs!1705468 (= lambda!370842 lambda!370834)))

(declare-fun b!6636322 () Bool)

(declare-fun e!4013608 () Bool)

(declare-fun e!4013606 () Bool)

(assert (=> b!6636322 (= e!4013608 e!4013606)))

(declare-fun c!1224149 () Bool)

(assert (=> b!6636322 (= c!1224149 (isEmpty!37983 (exprs!6387 (h!72134 zl!343))))))

(declare-fun b!6636323 () Bool)

(declare-fun e!4013603 () Regex!16503)

(assert (=> b!6636323 (= e!4013603 (h!72133 (exprs!6387 (h!72134 zl!343))))))

(assert (=> d!2080199 e!4013608))

(declare-fun res!2719651 () Bool)

(assert (=> d!2080199 (=> (not res!2719651) (not e!4013608))))

(declare-fun lt!2419621 () Regex!16503)

(assert (=> d!2080199 (= res!2719651 (validRegex!8239 lt!2419621))))

(assert (=> d!2080199 (= lt!2419621 e!4013603)))

(declare-fun c!1224146 () Bool)

(declare-fun e!4013605 () Bool)

(assert (=> d!2080199 (= c!1224146 e!4013605)))

(declare-fun res!2719650 () Bool)

(assert (=> d!2080199 (=> (not res!2719650) (not e!4013605))))

(assert (=> d!2080199 (= res!2719650 ((_ is Cons!65685) (exprs!6387 (h!72134 zl!343))))))

(assert (=> d!2080199 (forall!15699 (exprs!6387 (h!72134 zl!343)) lambda!370842)))

(assert (=> d!2080199 (= (generalisedConcat!2100 (exprs!6387 (h!72134 zl!343))) lt!2419621)))

(declare-fun b!6636324 () Bool)

(declare-fun e!4013607 () Bool)

(assert (=> b!6636324 (= e!4013607 (= lt!2419621 (head!13449 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun b!6636325 () Bool)

(declare-fun e!4013604 () Regex!16503)

(assert (=> b!6636325 (= e!4013603 e!4013604)))

(declare-fun c!1224147 () Bool)

(assert (=> b!6636325 (= c!1224147 ((_ is Cons!65685) (exprs!6387 (h!72134 zl!343))))))

(declare-fun b!6636326 () Bool)

(assert (=> b!6636326 (= e!4013606 e!4013607)))

(declare-fun c!1224148 () Bool)

(assert (=> b!6636326 (= c!1224148 (isEmpty!37983 (tail!12534 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun b!6636327 () Bool)

(declare-fun isConcat!1400 (Regex!16503) Bool)

(assert (=> b!6636327 (= e!4013607 (isConcat!1400 lt!2419621))))

(declare-fun b!6636328 () Bool)

(assert (=> b!6636328 (= e!4013605 (isEmpty!37983 (t!379475 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun b!6636329 () Bool)

(assert (=> b!6636329 (= e!4013604 EmptyExpr!16503)))

(declare-fun b!6636330 () Bool)

(declare-fun isEmptyExpr!1877 (Regex!16503) Bool)

(assert (=> b!6636330 (= e!4013606 (isEmptyExpr!1877 lt!2419621))))

(declare-fun b!6636331 () Bool)

(assert (=> b!6636331 (= e!4013604 (Concat!25348 (h!72133 (exprs!6387 (h!72134 zl!343))) (generalisedConcat!2100 (t!379475 (exprs!6387 (h!72134 zl!343))))))))

(assert (= (and d!2080199 res!2719650) b!6636328))

(assert (= (and d!2080199 c!1224146) b!6636323))

(assert (= (and d!2080199 (not c!1224146)) b!6636325))

(assert (= (and b!6636325 c!1224147) b!6636331))

(assert (= (and b!6636325 (not c!1224147)) b!6636329))

(assert (= (and d!2080199 res!2719651) b!6636322))

(assert (= (and b!6636322 c!1224149) b!6636330))

(assert (= (and b!6636322 (not c!1224149)) b!6636326))

(assert (= (and b!6636326 c!1224148) b!6636324))

(assert (= (and b!6636326 (not c!1224148)) b!6636327))

(declare-fun m!7403952 () Bool)

(assert (=> b!6636324 m!7403952))

(declare-fun m!7403954 () Bool)

(assert (=> b!6636331 m!7403954))

(declare-fun m!7403956 () Bool)

(assert (=> b!6636322 m!7403956))

(declare-fun m!7403958 () Bool)

(assert (=> b!6636326 m!7403958))

(assert (=> b!6636326 m!7403958))

(declare-fun m!7403960 () Bool)

(assert (=> b!6636326 m!7403960))

(declare-fun m!7403962 () Bool)

(assert (=> d!2080199 m!7403962))

(declare-fun m!7403964 () Bool)

(assert (=> d!2080199 m!7403964))

(declare-fun m!7403966 () Bool)

(assert (=> b!6636327 m!7403966))

(assert (=> b!6636328 m!7403796))

(declare-fun m!7403968 () Bool)

(assert (=> b!6636330 m!7403968))

(assert (=> b!6636114 d!2080199))

(declare-fun d!2080211 () Bool)

(declare-fun lt!2419627 () Regex!16503)

(assert (=> d!2080211 (validRegex!8239 lt!2419627)))

(assert (=> d!2080211 (= lt!2419627 (generalisedUnion!2347 (unfocusZipperList!1924 zl!343)))))

(assert (=> d!2080211 (= (unfocusZipper!2245 zl!343) lt!2419627)))

(declare-fun bs!1705469 () Bool)

(assert (= bs!1705469 d!2080211))

(declare-fun m!7403988 () Bool)

(assert (=> bs!1705469 m!7403988))

(assert (=> bs!1705469 m!7403824))

(assert (=> bs!1705469 m!7403824))

(assert (=> bs!1705469 m!7403826))

(assert (=> b!6636124 d!2080211))

(declare-fun d!2080219 () Bool)

(assert (=> d!2080219 (= (isEmpty!37984 (t!379476 zl!343)) ((_ is Nil!65686) (t!379476 zl!343)))))

(assert (=> b!6636125 d!2080219))

(declare-fun d!2080221 () Bool)

(declare-fun e!4013618 () Bool)

(assert (=> d!2080221 e!4013618))

(declare-fun res!2719657 () Bool)

(assert (=> d!2080221 (=> (not res!2719657) (not e!4013618))))

(declare-fun lt!2419630 () List!65810)

(declare-fun noDuplicate!2303 (List!65810) Bool)

(assert (=> d!2080221 (= res!2719657 (noDuplicate!2303 lt!2419630))))

(declare-fun choose!49582 ((InoxSet Context!11774)) List!65810)

(assert (=> d!2080221 (= lt!2419630 (choose!49582 z!1189))))

(assert (=> d!2080221 (= (toList!10287 z!1189) lt!2419630)))

(declare-fun b!6636345 () Bool)

(declare-fun content!12689 (List!65810) (InoxSet Context!11774))

(assert (=> b!6636345 (= e!4013618 (= (content!12689 lt!2419630) z!1189))))

(assert (= (and d!2080221 res!2719657) b!6636345))

(declare-fun m!7403990 () Bool)

(assert (=> d!2080221 m!7403990))

(declare-fun m!7403992 () Bool)

(assert (=> d!2080221 m!7403992))

(declare-fun m!7403994 () Bool)

(assert (=> b!6636345 m!7403994))

(assert (=> b!6636135 d!2080221))

(declare-fun b!6636412 () Bool)

(declare-fun e!4013660 () Bool)

(declare-fun lt!2419652 () Option!16394)

(assert (=> b!6636412 (= e!4013660 (not (isDefined!13097 lt!2419652)))))

(declare-fun b!6636413 () Bool)

(declare-fun res!2719700 () Bool)

(declare-fun e!4013659 () Bool)

(assert (=> b!6636413 (=> (not res!2719700) (not e!4013659))))

(declare-fun get!22836 (Option!16394) tuple2!66964)

(assert (=> b!6636413 (= res!2719700 (matchR!8686 (regTwo!33518 r!7292) (_2!36785 (get!22836 lt!2419652))))))

(declare-fun b!6636414 () Bool)

(declare-fun e!4013661 () Option!16394)

(assert (=> b!6636414 (= e!4013661 None!16393)))

(declare-fun b!6636415 () Bool)

(declare-fun lt!2419653 () Unit!159367)

(declare-fun lt!2419654 () Unit!159367)

(assert (=> b!6636415 (= lt!2419653 lt!2419654)))

(declare-fun ++!14653 (List!65808 List!65808) List!65808)

(assert (=> b!6636415 (= (++!14653 (++!14653 Nil!65684 (Cons!65684 (h!72132 s!2326) Nil!65684)) (t!379474 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2642 (List!65808 C!33276 List!65808 List!65808) Unit!159367)

(assert (=> b!6636415 (= lt!2419654 (lemmaMoveElementToOtherListKeepsConcatEq!2642 Nil!65684 (h!72132 s!2326) (t!379474 s!2326) s!2326))))

(assert (=> b!6636415 (= e!4013661 (findConcatSeparation!2808 (regOne!33518 r!7292) (regTwo!33518 r!7292) (++!14653 Nil!65684 (Cons!65684 (h!72132 s!2326) Nil!65684)) (t!379474 s!2326) s!2326))))

(declare-fun b!6636416 () Bool)

(declare-fun e!4013658 () Bool)

(assert (=> b!6636416 (= e!4013658 (matchR!8686 (regTwo!33518 r!7292) s!2326))))

(declare-fun d!2080223 () Bool)

(assert (=> d!2080223 e!4013660))

(declare-fun res!2719701 () Bool)

(assert (=> d!2080223 (=> res!2719701 e!4013660)))

(assert (=> d!2080223 (= res!2719701 e!4013659)))

(declare-fun res!2719703 () Bool)

(assert (=> d!2080223 (=> (not res!2719703) (not e!4013659))))

(assert (=> d!2080223 (= res!2719703 (isDefined!13097 lt!2419652))))

(declare-fun e!4013657 () Option!16394)

(assert (=> d!2080223 (= lt!2419652 e!4013657)))

(declare-fun c!1224167 () Bool)

(assert (=> d!2080223 (= c!1224167 e!4013658)))

(declare-fun res!2719704 () Bool)

(assert (=> d!2080223 (=> (not res!2719704) (not e!4013658))))

(assert (=> d!2080223 (= res!2719704 (matchR!8686 (regOne!33518 r!7292) Nil!65684))))

(assert (=> d!2080223 (validRegex!8239 (regOne!33518 r!7292))))

(assert (=> d!2080223 (= (findConcatSeparation!2808 (regOne!33518 r!7292) (regTwo!33518 r!7292) Nil!65684 s!2326 s!2326) lt!2419652)))

(declare-fun b!6636417 () Bool)

(declare-fun res!2719702 () Bool)

(assert (=> b!6636417 (=> (not res!2719702) (not e!4013659))))

(assert (=> b!6636417 (= res!2719702 (matchR!8686 (regOne!33518 r!7292) (_1!36785 (get!22836 lt!2419652))))))

(declare-fun b!6636418 () Bool)

(assert (=> b!6636418 (= e!4013657 e!4013661)))

(declare-fun c!1224166 () Bool)

(assert (=> b!6636418 (= c!1224166 ((_ is Nil!65684) s!2326))))

(declare-fun b!6636419 () Bool)

(assert (=> b!6636419 (= e!4013659 (= (++!14653 (_1!36785 (get!22836 lt!2419652)) (_2!36785 (get!22836 lt!2419652))) s!2326))))

(declare-fun b!6636420 () Bool)

(assert (=> b!6636420 (= e!4013657 (Some!16393 (tuple2!66965 Nil!65684 s!2326)))))

(assert (= (and d!2080223 res!2719704) b!6636416))

(assert (= (and d!2080223 c!1224167) b!6636420))

(assert (= (and d!2080223 (not c!1224167)) b!6636418))

(assert (= (and b!6636418 c!1224166) b!6636414))

(assert (= (and b!6636418 (not c!1224166)) b!6636415))

(assert (= (and d!2080223 res!2719703) b!6636417))

(assert (= (and b!6636417 res!2719702) b!6636413))

(assert (= (and b!6636413 res!2719700) b!6636419))

(assert (= (and d!2080223 (not res!2719701)) b!6636412))

(declare-fun m!7404042 () Bool)

(assert (=> b!6636416 m!7404042))

(declare-fun m!7404044 () Bool)

(assert (=> b!6636412 m!7404044))

(declare-fun m!7404046 () Bool)

(assert (=> b!6636417 m!7404046))

(declare-fun m!7404048 () Bool)

(assert (=> b!6636417 m!7404048))

(assert (=> b!6636419 m!7404046))

(declare-fun m!7404050 () Bool)

(assert (=> b!6636419 m!7404050))

(assert (=> d!2080223 m!7404044))

(declare-fun m!7404052 () Bool)

(assert (=> d!2080223 m!7404052))

(assert (=> d!2080223 m!7403844))

(assert (=> b!6636413 m!7404046))

(declare-fun m!7404054 () Bool)

(assert (=> b!6636413 m!7404054))

(declare-fun m!7404056 () Bool)

(assert (=> b!6636415 m!7404056))

(assert (=> b!6636415 m!7404056))

(declare-fun m!7404058 () Bool)

(assert (=> b!6636415 m!7404058))

(declare-fun m!7404060 () Bool)

(assert (=> b!6636415 m!7404060))

(assert (=> b!6636415 m!7404056))

(declare-fun m!7404062 () Bool)

(assert (=> b!6636415 m!7404062))

(assert (=> b!6636112 d!2080223))

(declare-fun d!2080241 () Bool)

(declare-fun choose!49583 (Int) Bool)

(assert (=> d!2080241 (= (Exists!3573 lambda!370826) (choose!49583 lambda!370826))))

(declare-fun bs!1705481 () Bool)

(assert (= bs!1705481 d!2080241))

(declare-fun m!7404064 () Bool)

(assert (=> bs!1705481 m!7404064))

(assert (=> b!6636112 d!2080241))

(declare-fun d!2080243 () Bool)

(assert (=> d!2080243 (= (Exists!3573 lambda!370825) (choose!49583 lambda!370825))))

(declare-fun bs!1705482 () Bool)

(assert (= bs!1705482 d!2080243))

(declare-fun m!7404066 () Bool)

(assert (=> bs!1705482 m!7404066))

(assert (=> b!6636112 d!2080243))

(declare-fun bs!1705487 () Bool)

(declare-fun d!2080245 () Bool)

(assert (= bs!1705487 (and d!2080245 b!6636112)))

(declare-fun lambda!370862 () Int)

(assert (=> bs!1705487 (= lambda!370862 lambda!370825)))

(assert (=> bs!1705487 (not (= lambda!370862 lambda!370826))))

(assert (=> d!2080245 true))

(assert (=> d!2080245 true))

(assert (=> d!2080245 true))

(assert (=> d!2080245 (= (isDefined!13097 (findConcatSeparation!2808 (regOne!33518 r!7292) (regTwo!33518 r!7292) Nil!65684 s!2326 s!2326)) (Exists!3573 lambda!370862))))

(declare-fun lt!2419663 () Unit!159367)

(declare-fun choose!49584 (Regex!16503 Regex!16503 List!65808) Unit!159367)

(assert (=> d!2080245 (= lt!2419663 (choose!49584 (regOne!33518 r!7292) (regTwo!33518 r!7292) s!2326))))

(assert (=> d!2080245 (validRegex!8239 (regOne!33518 r!7292))))

(assert (=> d!2080245 (= (lemmaFindConcatSeparationEquivalentToExists!2572 (regOne!33518 r!7292) (regTwo!33518 r!7292) s!2326) lt!2419663)))

(declare-fun bs!1705488 () Bool)

(assert (= bs!1705488 d!2080245))

(declare-fun m!7404094 () Bool)

(assert (=> bs!1705488 m!7404094))

(assert (=> bs!1705488 m!7403800))

(assert (=> bs!1705488 m!7403802))

(declare-fun m!7404096 () Bool)

(assert (=> bs!1705488 m!7404096))

(assert (=> bs!1705488 m!7403844))

(assert (=> bs!1705488 m!7403800))

(assert (=> b!6636112 d!2080245))

(declare-fun bs!1705496 () Bool)

(declare-fun d!2080253 () Bool)

(assert (= bs!1705496 (and d!2080253 b!6636112)))

(declare-fun lambda!370871 () Int)

(assert (=> bs!1705496 (= lambda!370871 lambda!370825)))

(assert (=> bs!1705496 (not (= lambda!370871 lambda!370826))))

(declare-fun bs!1705497 () Bool)

(assert (= bs!1705497 (and d!2080253 d!2080245)))

(assert (=> bs!1705497 (= lambda!370871 lambda!370862)))

(assert (=> d!2080253 true))

(assert (=> d!2080253 true))

(assert (=> d!2080253 true))

(declare-fun lambda!370872 () Int)

(assert (=> bs!1705496 (not (= lambda!370872 lambda!370825))))

(assert (=> bs!1705496 (= lambda!370872 lambda!370826)))

(assert (=> bs!1705497 (not (= lambda!370872 lambda!370862))))

(declare-fun bs!1705498 () Bool)

(assert (= bs!1705498 d!2080253))

(assert (=> bs!1705498 (not (= lambda!370872 lambda!370871))))

(assert (=> d!2080253 true))

(assert (=> d!2080253 true))

(assert (=> d!2080253 true))

(assert (=> d!2080253 (= (Exists!3573 lambda!370871) (Exists!3573 lambda!370872))))

(declare-fun lt!2419668 () Unit!159367)

(declare-fun choose!49586 (Regex!16503 Regex!16503 List!65808) Unit!159367)

(assert (=> d!2080253 (= lt!2419668 (choose!49586 (regOne!33518 r!7292) (regTwo!33518 r!7292) s!2326))))

(assert (=> d!2080253 (validRegex!8239 (regOne!33518 r!7292))))

(assert (=> d!2080253 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2110 (regOne!33518 r!7292) (regTwo!33518 r!7292) s!2326) lt!2419668)))

(declare-fun m!7404118 () Bool)

(assert (=> bs!1705498 m!7404118))

(declare-fun m!7404120 () Bool)

(assert (=> bs!1705498 m!7404120))

(declare-fun m!7404122 () Bool)

(assert (=> bs!1705498 m!7404122))

(assert (=> bs!1705498 m!7403844))

(assert (=> b!6636112 d!2080253))

(declare-fun d!2080259 () Bool)

(declare-fun isEmpty!37987 (Option!16394) Bool)

(assert (=> d!2080259 (= (isDefined!13097 (findConcatSeparation!2808 (regOne!33518 r!7292) (regTwo!33518 r!7292) Nil!65684 s!2326 s!2326)) (not (isEmpty!37987 (findConcatSeparation!2808 (regOne!33518 r!7292) (regTwo!33518 r!7292) Nil!65684 s!2326 s!2326))))))

(declare-fun bs!1705499 () Bool)

(assert (= bs!1705499 d!2080259))

(assert (=> bs!1705499 m!7403800))

(declare-fun m!7404124 () Bool)

(assert (=> bs!1705499 m!7404124))

(assert (=> b!6636112 d!2080259))

(declare-fun bs!1705506 () Bool)

(declare-fun d!2080261 () Bool)

(assert (= bs!1705506 (and d!2080261 d!2080175)))

(declare-fun lambda!370876 () Int)

(assert (=> bs!1705506 (= lambda!370876 lambda!370830)))

(declare-fun bs!1705507 () Bool)

(assert (= bs!1705507 (and d!2080261 d!2080193)))

(assert (=> bs!1705507 (= lambda!370876 lambda!370834)))

(declare-fun bs!1705508 () Bool)

(assert (= bs!1705508 (and d!2080261 d!2080199)))

(assert (=> bs!1705508 (= lambda!370876 lambda!370842)))

(assert (=> d!2080261 (= (inv!84504 setElem!45370) (forall!15699 (exprs!6387 setElem!45370) lambda!370876))))

(declare-fun bs!1705509 () Bool)

(assert (= bs!1705509 d!2080261))

(declare-fun m!7404130 () Bool)

(assert (=> bs!1705509 m!7404130))

(assert (=> setNonEmpty!45370 d!2080261))

(declare-fun bm!582619 () Bool)

(declare-fun call!582624 () (InoxSet Context!11774))

(declare-fun call!582627 () (InoxSet Context!11774))

(assert (=> bm!582619 (= call!582624 call!582627)))

(declare-fun c!1224212 () Bool)

(declare-fun call!582626 () List!65809)

(declare-fun call!582625 () (InoxSet Context!11774))

(declare-fun bm!582620 () Bool)

(assert (=> bm!582620 (= call!582625 (derivationStepZipperDown!1751 (ite c!1224212 (regOne!33519 (h!72133 (exprs!6387 (h!72134 zl!343)))) (regOne!33518 (h!72133 (exprs!6387 (h!72134 zl!343))))) (ite c!1224212 lt!2419589 (Context!11775 call!582626)) (h!72132 s!2326)))))

(declare-fun b!6636629 () Bool)

(declare-fun e!4013772 () (InoxSet Context!11774))

(declare-fun call!582628 () (InoxSet Context!11774))

(assert (=> b!6636629 (= e!4013772 ((_ map or) call!582625 call!582628))))

(declare-fun b!6636630 () Bool)

(declare-fun e!4013771 () (InoxSet Context!11774))

(assert (=> b!6636630 (= e!4013771 (store ((as const (Array Context!11774 Bool)) false) lt!2419589 true))))

(declare-fun b!6636631 () Bool)

(assert (=> b!6636631 (= e!4013771 e!4013772)))

(assert (=> b!6636631 (= c!1224212 ((_ is Union!16503) (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun b!6636632 () Bool)

(declare-fun c!1224214 () Bool)

(declare-fun e!4013773 () Bool)

(assert (=> b!6636632 (= c!1224214 e!4013773)))

(declare-fun res!2719771 () Bool)

(assert (=> b!6636632 (=> (not res!2719771) (not e!4013773))))

(assert (=> b!6636632 (= res!2719771 ((_ is Concat!25348) (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun e!4013776 () (InoxSet Context!11774))

(assert (=> b!6636632 (= e!4013772 e!4013776)))

(declare-fun b!6636633 () Bool)

(assert (=> b!6636633 (= e!4013776 ((_ map or) call!582625 call!582627))))

(declare-fun bm!582621 () Bool)

(assert (=> bm!582621 (= call!582627 call!582628)))

(declare-fun bm!582622 () Bool)

(declare-fun c!1224216 () Bool)

(declare-fun call!582629 () List!65809)

(assert (=> bm!582622 (= call!582628 (derivationStepZipperDown!1751 (ite c!1224212 (regTwo!33519 (h!72133 (exprs!6387 (h!72134 zl!343)))) (ite c!1224214 (regTwo!33518 (h!72133 (exprs!6387 (h!72134 zl!343)))) (ite c!1224216 (regOne!33518 (h!72133 (exprs!6387 (h!72134 zl!343)))) (reg!16832 (h!72133 (exprs!6387 (h!72134 zl!343))))))) (ite (or c!1224212 c!1224214) lt!2419589 (Context!11775 call!582629)) (h!72132 s!2326)))))

(declare-fun b!6636634 () Bool)

(declare-fun e!4013774 () (InoxSet Context!11774))

(assert (=> b!6636634 (= e!4013774 call!582624)))

(declare-fun bm!582623 () Bool)

(assert (=> bm!582623 (= call!582629 call!582626)))

(declare-fun bm!582624 () Bool)

(declare-fun $colon$colon!2340 (List!65809 Regex!16503) List!65809)

(assert (=> bm!582624 (= call!582626 ($colon$colon!2340 (exprs!6387 lt!2419589) (ite (or c!1224214 c!1224216) (regTwo!33518 (h!72133 (exprs!6387 (h!72134 zl!343)))) (h!72133 (exprs!6387 (h!72134 zl!343))))))))

(declare-fun b!6636635 () Bool)

(declare-fun e!4013775 () (InoxSet Context!11774))

(assert (=> b!6636635 (= e!4013775 ((as const (Array Context!11774 Bool)) false))))

(declare-fun b!6636636 () Bool)

(declare-fun c!1224213 () Bool)

(assert (=> b!6636636 (= c!1224213 ((_ is Star!16503) (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(assert (=> b!6636636 (= e!4013774 e!4013775)))

(declare-fun b!6636637 () Bool)

(assert (=> b!6636637 (= e!4013776 e!4013774)))

(assert (=> b!6636637 (= c!1224216 ((_ is Concat!25348) (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun b!6636638 () Bool)

(assert (=> b!6636638 (= e!4013773 (nullable!6496 (regOne!33518 (h!72133 (exprs!6387 (h!72134 zl!343))))))))

(declare-fun b!6636639 () Bool)

(assert (=> b!6636639 (= e!4013775 call!582624)))

(declare-fun d!2080267 () Bool)

(declare-fun c!1224215 () Bool)

(assert (=> d!2080267 (= c!1224215 (and ((_ is ElementMatch!16503) (h!72133 (exprs!6387 (h!72134 zl!343)))) (= (c!1224076 (h!72133 (exprs!6387 (h!72134 zl!343)))) (h!72132 s!2326))))))

(assert (=> d!2080267 (= (derivationStepZipperDown!1751 (h!72133 (exprs!6387 (h!72134 zl!343))) lt!2419589 (h!72132 s!2326)) e!4013771)))

(assert (= (and d!2080267 c!1224215) b!6636630))

(assert (= (and d!2080267 (not c!1224215)) b!6636631))

(assert (= (and b!6636631 c!1224212) b!6636629))

(assert (= (and b!6636631 (not c!1224212)) b!6636632))

(assert (= (and b!6636632 res!2719771) b!6636638))

(assert (= (and b!6636632 c!1224214) b!6636633))

(assert (= (and b!6636632 (not c!1224214)) b!6636637))

(assert (= (and b!6636637 c!1224216) b!6636634))

(assert (= (and b!6636637 (not c!1224216)) b!6636636))

(assert (= (and b!6636636 c!1224213) b!6636639))

(assert (= (and b!6636636 (not c!1224213)) b!6636635))

(assert (= (or b!6636634 b!6636639) bm!582623))

(assert (= (or b!6636634 b!6636639) bm!582619))

(assert (= (or b!6636633 bm!582623) bm!582624))

(assert (= (or b!6636633 bm!582619) bm!582621))

(assert (= (or b!6636629 bm!582621) bm!582622))

(assert (= (or b!6636629 b!6636633) bm!582620))

(declare-fun m!7404142 () Bool)

(assert (=> bm!582624 m!7404142))

(declare-fun m!7404144 () Bool)

(assert (=> b!6636638 m!7404144))

(declare-fun m!7404146 () Bool)

(assert (=> bm!582620 m!7404146))

(declare-fun m!7404148 () Bool)

(assert (=> b!6636630 m!7404148))

(declare-fun m!7404150 () Bool)

(assert (=> bm!582622 m!7404150))

(assert (=> b!6636122 d!2080267))

(declare-fun d!2080271 () Bool)

(declare-fun nullableFct!2418 (Regex!16503) Bool)

(assert (=> d!2080271 (= (nullable!6496 (h!72133 (exprs!6387 (h!72134 zl!343)))) (nullableFct!2418 (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun bs!1705511 () Bool)

(assert (= bs!1705511 d!2080271))

(declare-fun m!7404152 () Bool)

(assert (=> bs!1705511 m!7404152))

(assert (=> b!6636122 d!2080271))

(declare-fun d!2080273 () Bool)

(declare-fun c!1224221 () Bool)

(declare-fun e!4013783 () Bool)

(assert (=> d!2080273 (= c!1224221 e!4013783)))

(declare-fun res!2719774 () Bool)

(assert (=> d!2080273 (=> (not res!2719774) (not e!4013783))))

(assert (=> d!2080273 (= res!2719774 ((_ is Cons!65685) (exprs!6387 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343))))))))))

(declare-fun e!4013784 () (InoxSet Context!11774))

(assert (=> d!2080273 (= (derivationStepZipperUp!1677 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343))))) (h!72132 s!2326)) e!4013784)))

(declare-fun b!6636650 () Bool)

(declare-fun e!4013785 () (InoxSet Context!11774))

(assert (=> b!6636650 (= e!4013784 e!4013785)))

(declare-fun c!1224222 () Bool)

(assert (=> b!6636650 (= c!1224222 ((_ is Cons!65685) (exprs!6387 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343))))))))))

(declare-fun b!6636651 () Bool)

(assert (=> b!6636651 (= e!4013783 (nullable!6496 (h!72133 (exprs!6387 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343)))))))))))

(declare-fun bm!582627 () Bool)

(declare-fun call!582632 () (InoxSet Context!11774))

(assert (=> bm!582627 (= call!582632 (derivationStepZipperDown!1751 (h!72133 (exprs!6387 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343))))))) (Context!11775 (t!379475 (exprs!6387 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343)))))))) (h!72132 s!2326)))))

(declare-fun b!6636652 () Bool)

(assert (=> b!6636652 (= e!4013785 ((as const (Array Context!11774 Bool)) false))))

(declare-fun b!6636653 () Bool)

(assert (=> b!6636653 (= e!4013784 ((_ map or) call!582632 (derivationStepZipperUp!1677 (Context!11775 (t!379475 (exprs!6387 (Context!11775 (Cons!65685 (h!72133 (exprs!6387 (h!72134 zl!343))) (t!379475 (exprs!6387 (h!72134 zl!343)))))))) (h!72132 s!2326))))))

(declare-fun b!6636654 () Bool)

(assert (=> b!6636654 (= e!4013785 call!582632)))

(assert (= (and d!2080273 res!2719774) b!6636651))

(assert (= (and d!2080273 c!1224221) b!6636653))

(assert (= (and d!2080273 (not c!1224221)) b!6636650))

(assert (= (and b!6636650 c!1224222) b!6636654))

(assert (= (and b!6636650 (not c!1224222)) b!6636652))

(assert (= (or b!6636653 b!6636654) bm!582627))

(declare-fun m!7404154 () Bool)

(assert (=> b!6636651 m!7404154))

(declare-fun m!7404156 () Bool)

(assert (=> bm!582627 m!7404156))

(declare-fun m!7404158 () Bool)

(assert (=> b!6636653 m!7404158))

(assert (=> b!6636122 d!2080273))

(declare-fun d!2080275 () Bool)

(declare-fun choose!49588 ((InoxSet Context!11774) Int) (InoxSet Context!11774))

(assert (=> d!2080275 (= (flatMap!2008 z!1189 lambda!370827) (choose!49588 z!1189 lambda!370827))))

(declare-fun bs!1705512 () Bool)

(assert (= bs!1705512 d!2080275))

(declare-fun m!7404160 () Bool)

(assert (=> bs!1705512 m!7404160))

(assert (=> b!6636122 d!2080275))

(declare-fun d!2080277 () Bool)

(declare-fun c!1224223 () Bool)

(declare-fun e!4013786 () Bool)

(assert (=> d!2080277 (= c!1224223 e!4013786)))

(declare-fun res!2719775 () Bool)

(assert (=> d!2080277 (=> (not res!2719775) (not e!4013786))))

(assert (=> d!2080277 (= res!2719775 ((_ is Cons!65685) (exprs!6387 (h!72134 zl!343))))))

(declare-fun e!4013787 () (InoxSet Context!11774))

(assert (=> d!2080277 (= (derivationStepZipperUp!1677 (h!72134 zl!343) (h!72132 s!2326)) e!4013787)))

(declare-fun b!6636655 () Bool)

(declare-fun e!4013788 () (InoxSet Context!11774))

(assert (=> b!6636655 (= e!4013787 e!4013788)))

(declare-fun c!1224224 () Bool)

(assert (=> b!6636655 (= c!1224224 ((_ is Cons!65685) (exprs!6387 (h!72134 zl!343))))))

(declare-fun b!6636656 () Bool)

(assert (=> b!6636656 (= e!4013786 (nullable!6496 (h!72133 (exprs!6387 (h!72134 zl!343)))))))

(declare-fun bm!582628 () Bool)

(declare-fun call!582633 () (InoxSet Context!11774))

(assert (=> bm!582628 (= call!582633 (derivationStepZipperDown!1751 (h!72133 (exprs!6387 (h!72134 zl!343))) (Context!11775 (t!379475 (exprs!6387 (h!72134 zl!343)))) (h!72132 s!2326)))))

(declare-fun b!6636657 () Bool)

(assert (=> b!6636657 (= e!4013788 ((as const (Array Context!11774 Bool)) false))))

(declare-fun b!6636658 () Bool)

(assert (=> b!6636658 (= e!4013787 ((_ map or) call!582633 (derivationStepZipperUp!1677 (Context!11775 (t!379475 (exprs!6387 (h!72134 zl!343)))) (h!72132 s!2326))))))

(declare-fun b!6636659 () Bool)

(assert (=> b!6636659 (= e!4013788 call!582633)))

(assert (= (and d!2080277 res!2719775) b!6636656))

(assert (= (and d!2080277 c!1224223) b!6636658))

(assert (= (and d!2080277 (not c!1224223)) b!6636655))

(assert (= (and b!6636655 c!1224224) b!6636659))

(assert (= (and b!6636655 (not c!1224224)) b!6636657))

(assert (= (or b!6636658 b!6636659) bm!582628))

(assert (=> b!6636656 m!7403840))

(declare-fun m!7404162 () Bool)

(assert (=> bm!582628 m!7404162))

(declare-fun m!7404164 () Bool)

(assert (=> b!6636658 m!7404164))

(assert (=> b!6636122 d!2080277))

(declare-fun d!2080279 () Bool)

(declare-fun dynLambda!26166 (Int Context!11774) (InoxSet Context!11774))

(assert (=> d!2080279 (= (flatMap!2008 z!1189 lambda!370827) (dynLambda!26166 lambda!370827 (h!72134 zl!343)))))

(declare-fun lt!2419678 () Unit!159367)

(declare-fun choose!49589 ((InoxSet Context!11774) Context!11774 Int) Unit!159367)

(assert (=> d!2080279 (= lt!2419678 (choose!49589 z!1189 (h!72134 zl!343) lambda!370827))))

(assert (=> d!2080279 (= z!1189 (store ((as const (Array Context!11774 Bool)) false) (h!72134 zl!343) true))))

(assert (=> d!2080279 (= (lemmaFlatMapOnSingletonSet!1534 z!1189 (h!72134 zl!343) lambda!370827) lt!2419678)))

(declare-fun b_lambda!250845 () Bool)

(assert (=> (not b_lambda!250845) (not d!2080279)))

(declare-fun bs!1705513 () Bool)

(assert (= bs!1705513 d!2080279))

(assert (=> bs!1705513 m!7403842))

(declare-fun m!7404166 () Bool)

(assert (=> bs!1705513 m!7404166))

(declare-fun m!7404168 () Bool)

(assert (=> bs!1705513 m!7404168))

(declare-fun m!7404170 () Bool)

(assert (=> bs!1705513 m!7404170))

(assert (=> b!6636122 d!2080279))

(declare-fun d!2080281 () Bool)

(declare-fun c!1224225 () Bool)

(declare-fun e!4013789 () Bool)

(assert (=> d!2080281 (= c!1224225 e!4013789)))

(declare-fun res!2719776 () Bool)

(assert (=> d!2080281 (=> (not res!2719776) (not e!4013789))))

(assert (=> d!2080281 (= res!2719776 ((_ is Cons!65685) (exprs!6387 lt!2419589)))))

(declare-fun e!4013790 () (InoxSet Context!11774))

(assert (=> d!2080281 (= (derivationStepZipperUp!1677 lt!2419589 (h!72132 s!2326)) e!4013790)))

(declare-fun b!6636660 () Bool)

(declare-fun e!4013791 () (InoxSet Context!11774))

(assert (=> b!6636660 (= e!4013790 e!4013791)))

(declare-fun c!1224226 () Bool)

(assert (=> b!6636660 (= c!1224226 ((_ is Cons!65685) (exprs!6387 lt!2419589)))))

(declare-fun b!6636661 () Bool)

(assert (=> b!6636661 (= e!4013789 (nullable!6496 (h!72133 (exprs!6387 lt!2419589))))))

(declare-fun bm!582629 () Bool)

(declare-fun call!582634 () (InoxSet Context!11774))

(assert (=> bm!582629 (= call!582634 (derivationStepZipperDown!1751 (h!72133 (exprs!6387 lt!2419589)) (Context!11775 (t!379475 (exprs!6387 lt!2419589))) (h!72132 s!2326)))))

(declare-fun b!6636662 () Bool)

(assert (=> b!6636662 (= e!4013791 ((as const (Array Context!11774 Bool)) false))))

(declare-fun b!6636663 () Bool)

(assert (=> b!6636663 (= e!4013790 ((_ map or) call!582634 (derivationStepZipperUp!1677 (Context!11775 (t!379475 (exprs!6387 lt!2419589))) (h!72132 s!2326))))))

(declare-fun b!6636664 () Bool)

(assert (=> b!6636664 (= e!4013791 call!582634)))

(assert (= (and d!2080281 res!2719776) b!6636661))

(assert (= (and d!2080281 c!1224225) b!6636663))

(assert (= (and d!2080281 (not c!1224225)) b!6636660))

(assert (= (and b!6636660 c!1224226) b!6636664))

(assert (= (and b!6636660 (not c!1224226)) b!6636662))

(assert (= (or b!6636663 b!6636664) bm!582629))

(declare-fun m!7404172 () Bool)

(assert (=> b!6636661 m!7404172))

(declare-fun m!7404174 () Bool)

(assert (=> bm!582629 m!7404174))

(declare-fun m!7404176 () Bool)

(assert (=> b!6636663 m!7404176))

(assert (=> b!6636122 d!2080281))

(declare-fun bs!1705514 () Bool)

(declare-fun b!6636704 () Bool)

(assert (= bs!1705514 (and b!6636704 d!2080245)))

(declare-fun lambda!370881 () Int)

(assert (=> bs!1705514 (not (= lambda!370881 lambda!370862))))

(declare-fun bs!1705515 () Bool)

(assert (= bs!1705515 (and b!6636704 d!2080253)))

(assert (=> bs!1705515 (not (= lambda!370881 lambda!370872))))

(declare-fun bs!1705516 () Bool)

(assert (= bs!1705516 (and b!6636704 b!6636112)))

(assert (=> bs!1705516 (not (= lambda!370881 lambda!370826))))

(assert (=> bs!1705515 (not (= lambda!370881 lambda!370871))))

(assert (=> bs!1705516 (not (= lambda!370881 lambda!370825))))

(assert (=> b!6636704 true))

(assert (=> b!6636704 true))

(declare-fun bs!1705517 () Bool)

(declare-fun b!6636705 () Bool)

(assert (= bs!1705517 (and b!6636705 d!2080245)))

(declare-fun lambda!370882 () Int)

(assert (=> bs!1705517 (not (= lambda!370882 lambda!370862))))

(declare-fun bs!1705518 () Bool)

(assert (= bs!1705518 (and b!6636705 b!6636704)))

(assert (=> bs!1705518 (not (= lambda!370882 lambda!370881))))

(declare-fun bs!1705519 () Bool)

(assert (= bs!1705519 (and b!6636705 d!2080253)))

(assert (=> bs!1705519 (= lambda!370882 lambda!370872)))

(declare-fun bs!1705520 () Bool)

(assert (= bs!1705520 (and b!6636705 b!6636112)))

(assert (=> bs!1705520 (= lambda!370882 lambda!370826)))

(assert (=> bs!1705519 (not (= lambda!370882 lambda!370871))))

(assert (=> bs!1705520 (not (= lambda!370882 lambda!370825))))

(assert (=> b!6636705 true))

(assert (=> b!6636705 true))

(declare-fun b!6636697 () Bool)

(declare-fun e!4013810 () Bool)

(assert (=> b!6636697 (= e!4013810 (matchRSpec!3604 (regTwo!33519 r!7292) s!2326))))

(declare-fun b!6636698 () Bool)

(declare-fun e!4013813 () Bool)

(assert (=> b!6636698 (= e!4013813 e!4013810)))

(declare-fun res!2719795 () Bool)

(assert (=> b!6636698 (= res!2719795 (matchRSpec!3604 (regOne!33519 r!7292) s!2326))))

(assert (=> b!6636698 (=> res!2719795 e!4013810)))

(declare-fun bm!582634 () Bool)

(declare-fun call!582639 () Bool)

(declare-fun isEmpty!37988 (List!65808) Bool)

(assert (=> bm!582634 (= call!582639 (isEmpty!37988 s!2326))))

(declare-fun b!6636699 () Bool)

(declare-fun e!4013812 () Bool)

(assert (=> b!6636699 (= e!4013813 e!4013812)))

(declare-fun c!1224238 () Bool)

(assert (=> b!6636699 (= c!1224238 ((_ is Star!16503) r!7292))))

(declare-fun b!6636700 () Bool)

(declare-fun e!4013815 () Bool)

(assert (=> b!6636700 (= e!4013815 (= s!2326 (Cons!65684 (c!1224076 r!7292) Nil!65684)))))

(declare-fun b!6636701 () Bool)

(declare-fun e!4013811 () Bool)

(assert (=> b!6636701 (= e!4013811 call!582639)))

(declare-fun d!2080283 () Bool)

(declare-fun c!1224237 () Bool)

(assert (=> d!2080283 (= c!1224237 ((_ is EmptyExpr!16503) r!7292))))

(assert (=> d!2080283 (= (matchRSpec!3604 r!7292 s!2326) e!4013811)))

(declare-fun b!6636702 () Bool)

(declare-fun res!2719794 () Bool)

(declare-fun e!4013814 () Bool)

(assert (=> b!6636702 (=> res!2719794 e!4013814)))

(assert (=> b!6636702 (= res!2719794 call!582639)))

(assert (=> b!6636702 (= e!4013812 e!4013814)))

(declare-fun b!6636703 () Bool)

(declare-fun c!1224235 () Bool)

(assert (=> b!6636703 (= c!1224235 ((_ is Union!16503) r!7292))))

(assert (=> b!6636703 (= e!4013815 e!4013813)))

(declare-fun call!582640 () Bool)

(assert (=> b!6636704 (= e!4013814 call!582640)))

(declare-fun bm!582635 () Bool)

(assert (=> bm!582635 (= call!582640 (Exists!3573 (ite c!1224238 lambda!370881 lambda!370882)))))

(assert (=> b!6636705 (= e!4013812 call!582640)))

(declare-fun b!6636706 () Bool)

(declare-fun e!4013816 () Bool)

(assert (=> b!6636706 (= e!4013811 e!4013816)))

(declare-fun res!2719793 () Bool)

(assert (=> b!6636706 (= res!2719793 (not ((_ is EmptyLang!16503) r!7292)))))

(assert (=> b!6636706 (=> (not res!2719793) (not e!4013816))))

(declare-fun b!6636707 () Bool)

(declare-fun c!1224236 () Bool)

(assert (=> b!6636707 (= c!1224236 ((_ is ElementMatch!16503) r!7292))))

(assert (=> b!6636707 (= e!4013816 e!4013815)))

(assert (= (and d!2080283 c!1224237) b!6636701))

(assert (= (and d!2080283 (not c!1224237)) b!6636706))

(assert (= (and b!6636706 res!2719793) b!6636707))

(assert (= (and b!6636707 c!1224236) b!6636700))

(assert (= (and b!6636707 (not c!1224236)) b!6636703))

(assert (= (and b!6636703 c!1224235) b!6636698))

(assert (= (and b!6636703 (not c!1224235)) b!6636699))

(assert (= (and b!6636698 (not res!2719795)) b!6636697))

(assert (= (and b!6636699 c!1224238) b!6636702))

(assert (= (and b!6636699 (not c!1224238)) b!6636705))

(assert (= (and b!6636702 (not res!2719794)) b!6636704))

(assert (= (or b!6636704 b!6636705) bm!582635))

(assert (= (or b!6636701 b!6636702) bm!582634))

(declare-fun m!7404178 () Bool)

(assert (=> b!6636697 m!7404178))

(declare-fun m!7404180 () Bool)

(assert (=> b!6636698 m!7404180))

(declare-fun m!7404182 () Bool)

(assert (=> bm!582634 m!7404182))

(declare-fun m!7404184 () Bool)

(assert (=> bm!582635 m!7404184))

(assert (=> b!6636131 d!2080283))

(declare-fun b!6636736 () Bool)

(declare-fun e!4013832 () Bool)

(declare-fun e!4013836 () Bool)

(assert (=> b!6636736 (= e!4013832 e!4013836)))

(declare-fun res!2719817 () Bool)

(assert (=> b!6636736 (=> (not res!2719817) (not e!4013836))))

(declare-fun lt!2419681 () Bool)

(assert (=> b!6636736 (= res!2719817 (not lt!2419681))))

(declare-fun b!6636737 () Bool)

(declare-fun e!4013833 () Bool)

(assert (=> b!6636737 (= e!4013833 (not lt!2419681))))

(declare-fun d!2080285 () Bool)

(declare-fun e!4013831 () Bool)

(assert (=> d!2080285 e!4013831))

(declare-fun c!1224245 () Bool)

(assert (=> d!2080285 (= c!1224245 ((_ is EmptyExpr!16503) r!7292))))

(declare-fun e!4013837 () Bool)

(assert (=> d!2080285 (= lt!2419681 e!4013837)))

(declare-fun c!1224246 () Bool)

(assert (=> d!2080285 (= c!1224246 (isEmpty!37988 s!2326))))

(assert (=> d!2080285 (validRegex!8239 r!7292)))

(assert (=> d!2080285 (= (matchR!8686 r!7292 s!2326) lt!2419681)))

(declare-fun b!6636738 () Bool)

(declare-fun res!2719816 () Bool)

(assert (=> b!6636738 (=> res!2719816 e!4013832)))

(assert (=> b!6636738 (= res!2719816 (not ((_ is ElementMatch!16503) r!7292)))))

(assert (=> b!6636738 (= e!4013833 e!4013832)))

(declare-fun b!6636739 () Bool)

(declare-fun res!2719819 () Bool)

(declare-fun e!4013835 () Bool)

(assert (=> b!6636739 (=> (not res!2719819) (not e!4013835))))

(declare-fun call!582643 () Bool)

(assert (=> b!6636739 (= res!2719819 (not call!582643))))

(declare-fun b!6636740 () Bool)

(declare-fun res!2719815 () Bool)

(assert (=> b!6636740 (=> res!2719815 e!4013832)))

(assert (=> b!6636740 (= res!2719815 e!4013835)))

(declare-fun res!2719818 () Bool)

(assert (=> b!6636740 (=> (not res!2719818) (not e!4013835))))

(assert (=> b!6636740 (= res!2719818 lt!2419681)))

(declare-fun b!6636741 () Bool)

(assert (=> b!6636741 (= e!4013831 (= lt!2419681 call!582643))))

(declare-fun b!6636742 () Bool)

(declare-fun e!4013834 () Bool)

(declare-fun head!13450 (List!65808) C!33276)

(assert (=> b!6636742 (= e!4013834 (not (= (head!13450 s!2326) (c!1224076 r!7292))))))

(declare-fun b!6636743 () Bool)

(declare-fun derivativeStep!5183 (Regex!16503 C!33276) Regex!16503)

(declare-fun tail!12535 (List!65808) List!65808)

(assert (=> b!6636743 (= e!4013837 (matchR!8686 (derivativeStep!5183 r!7292 (head!13450 s!2326)) (tail!12535 s!2326)))))

(declare-fun b!6636744 () Bool)

(declare-fun res!2719813 () Bool)

(assert (=> b!6636744 (=> (not res!2719813) (not e!4013835))))

(assert (=> b!6636744 (= res!2719813 (isEmpty!37988 (tail!12535 s!2326)))))

(declare-fun bm!582638 () Bool)

(assert (=> bm!582638 (= call!582643 (isEmpty!37988 s!2326))))

(declare-fun b!6636745 () Bool)

(assert (=> b!6636745 (= e!4013836 e!4013834)))

(declare-fun res!2719814 () Bool)

(assert (=> b!6636745 (=> res!2719814 e!4013834)))

(assert (=> b!6636745 (= res!2719814 call!582643)))

(declare-fun b!6636746 () Bool)

(assert (=> b!6636746 (= e!4013837 (nullable!6496 r!7292))))

(declare-fun b!6636747 () Bool)

(assert (=> b!6636747 (= e!4013831 e!4013833)))

(declare-fun c!1224247 () Bool)

(assert (=> b!6636747 (= c!1224247 ((_ is EmptyLang!16503) r!7292))))

(declare-fun b!6636748 () Bool)

(assert (=> b!6636748 (= e!4013835 (= (head!13450 s!2326) (c!1224076 r!7292)))))

(declare-fun b!6636749 () Bool)

(declare-fun res!2719812 () Bool)

(assert (=> b!6636749 (=> res!2719812 e!4013834)))

(assert (=> b!6636749 (= res!2719812 (not (isEmpty!37988 (tail!12535 s!2326))))))

(assert (= (and d!2080285 c!1224246) b!6636746))

(assert (= (and d!2080285 (not c!1224246)) b!6636743))

(assert (= (and d!2080285 c!1224245) b!6636741))

(assert (= (and d!2080285 (not c!1224245)) b!6636747))

(assert (= (and b!6636747 c!1224247) b!6636737))

(assert (= (and b!6636747 (not c!1224247)) b!6636738))

(assert (= (and b!6636738 (not res!2719816)) b!6636740))

(assert (= (and b!6636740 res!2719818) b!6636739))

(assert (= (and b!6636739 res!2719819) b!6636744))

(assert (= (and b!6636744 res!2719813) b!6636748))

(assert (= (and b!6636740 (not res!2719815)) b!6636736))

(assert (= (and b!6636736 res!2719817) b!6636745))

(assert (= (and b!6636745 (not res!2719814)) b!6636749))

(assert (= (and b!6636749 (not res!2719812)) b!6636742))

(assert (= (or b!6636741 b!6636739 b!6636745) bm!582638))

(declare-fun m!7404186 () Bool)

(assert (=> b!6636746 m!7404186))

(declare-fun m!7404188 () Bool)

(assert (=> b!6636743 m!7404188))

(assert (=> b!6636743 m!7404188))

(declare-fun m!7404190 () Bool)

(assert (=> b!6636743 m!7404190))

(declare-fun m!7404192 () Bool)

(assert (=> b!6636743 m!7404192))

(assert (=> b!6636743 m!7404190))

(assert (=> b!6636743 m!7404192))

(declare-fun m!7404194 () Bool)

(assert (=> b!6636743 m!7404194))

(assert (=> b!6636748 m!7404188))

(assert (=> bm!582638 m!7404182))

(assert (=> b!6636749 m!7404192))

(assert (=> b!6636749 m!7404192))

(declare-fun m!7404196 () Bool)

(assert (=> b!6636749 m!7404196))

(assert (=> b!6636742 m!7404188))

(assert (=> d!2080285 m!7404182))

(assert (=> d!2080285 m!7403828))

(assert (=> b!6636744 m!7404192))

(assert (=> b!6636744 m!7404192))

(assert (=> b!6636744 m!7404196))

(assert (=> b!6636131 d!2080285))

(declare-fun d!2080287 () Bool)

(assert (=> d!2080287 (= (matchR!8686 r!7292 s!2326) (matchRSpec!3604 r!7292 s!2326))))

(declare-fun lt!2419684 () Unit!159367)

(declare-fun choose!49590 (Regex!16503 List!65808) Unit!159367)

(assert (=> d!2080287 (= lt!2419684 (choose!49590 r!7292 s!2326))))

(assert (=> d!2080287 (validRegex!8239 r!7292)))

(assert (=> d!2080287 (= (mainMatchTheorem!3604 r!7292 s!2326) lt!2419684)))

(declare-fun bs!1705521 () Bool)

(assert (= bs!1705521 d!2080287))

(assert (=> bs!1705521 m!7403850))

(assert (=> bs!1705521 m!7403848))

(declare-fun m!7404198 () Bool)

(assert (=> bs!1705521 m!7404198))

(assert (=> bs!1705521 m!7403828))

(assert (=> b!6636131 d!2080287))

(declare-fun d!2080289 () Bool)

(declare-fun c!1224250 () Bool)

(assert (=> d!2080289 (= c!1224250 (isEmpty!37988 (t!379474 s!2326)))))

(declare-fun e!4013840 () Bool)

(assert (=> d!2080289 (= (matchZipper!2515 lt!2419592 (t!379474 s!2326)) e!4013840)))

(declare-fun b!6636754 () Bool)

(declare-fun nullableZipper!2244 ((InoxSet Context!11774)) Bool)

(assert (=> b!6636754 (= e!4013840 (nullableZipper!2244 lt!2419592))))

(declare-fun b!6636755 () Bool)

(declare-fun derivationStepZipper!2469 ((InoxSet Context!11774) C!33276) (InoxSet Context!11774))

(assert (=> b!6636755 (= e!4013840 (matchZipper!2515 (derivationStepZipper!2469 lt!2419592 (head!13450 (t!379474 s!2326))) (tail!12535 (t!379474 s!2326))))))

(assert (= (and d!2080289 c!1224250) b!6636754))

(assert (= (and d!2080289 (not c!1224250)) b!6636755))

(declare-fun m!7404200 () Bool)

(assert (=> d!2080289 m!7404200))

(declare-fun m!7404202 () Bool)

(assert (=> b!6636754 m!7404202))

(declare-fun m!7404204 () Bool)

(assert (=> b!6636755 m!7404204))

(assert (=> b!6636755 m!7404204))

(declare-fun m!7404206 () Bool)

(assert (=> b!6636755 m!7404206))

(declare-fun m!7404208 () Bool)

(assert (=> b!6636755 m!7404208))

(assert (=> b!6636755 m!7404206))

(assert (=> b!6636755 m!7404208))

(declare-fun m!7404210 () Bool)

(assert (=> b!6636755 m!7404210))

(assert (=> b!6636133 d!2080289))

(declare-fun d!2080291 () Bool)

(assert (=> d!2080291 (not (matchZipper!2515 lt!2419592 (t!379474 s!2326)))))

(declare-fun lt!2419687 () Unit!159367)

(declare-fun choose!49591 ((InoxSet Context!11774) List!65808) Unit!159367)

(assert (=> d!2080291 (= lt!2419687 (choose!49591 lt!2419592 (t!379474 s!2326)))))

(assert (=> d!2080291 (= lt!2419592 ((as const (Array Context!11774 Bool)) false))))

(assert (=> d!2080291 (= (lemmaEmptyZipperMatchesNothing!96 lt!2419592 (t!379474 s!2326)) lt!2419687)))

(declare-fun bs!1705522 () Bool)

(assert (= bs!1705522 d!2080291))

(assert (=> bs!1705522 m!7403818))

(declare-fun m!7404212 () Bool)

(assert (=> bs!1705522 m!7404212))

(assert (=> b!6636133 d!2080291))

(declare-fun b!6636774 () Bool)

(declare-fun e!4013856 () Bool)

(declare-fun e!4013858 () Bool)

(assert (=> b!6636774 (= e!4013856 e!4013858)))

(declare-fun res!2719833 () Bool)

(assert (=> b!6636774 (=> (not res!2719833) (not e!4013858))))

(declare-fun call!582652 () Bool)

(assert (=> b!6636774 (= res!2719833 call!582652)))

(declare-fun bm!582645 () Bool)

(declare-fun call!582650 () Bool)

(assert (=> bm!582645 (= call!582652 call!582650)))

(declare-fun b!6636775 () Bool)

(declare-fun res!2719834 () Bool)

(assert (=> b!6636775 (=> res!2719834 e!4013856)))

(assert (=> b!6636775 (= res!2719834 (not ((_ is Concat!25348) r!7292)))))

(declare-fun e!4013860 () Bool)

(assert (=> b!6636775 (= e!4013860 e!4013856)))

(declare-fun b!6636776 () Bool)

(declare-fun e!4013861 () Bool)

(declare-fun e!4013855 () Bool)

(assert (=> b!6636776 (= e!4013861 e!4013855)))

(declare-fun c!1224256 () Bool)

(assert (=> b!6636776 (= c!1224256 ((_ is Star!16503) r!7292))))

(declare-fun b!6636777 () Bool)

(declare-fun call!582651 () Bool)

(assert (=> b!6636777 (= e!4013858 call!582651)))

(declare-fun bm!582646 () Bool)

(declare-fun c!1224255 () Bool)

(assert (=> bm!582646 (= call!582651 (validRegex!8239 (ite c!1224255 (regTwo!33519 r!7292) (regTwo!33518 r!7292))))))

(declare-fun bm!582647 () Bool)

(assert (=> bm!582647 (= call!582650 (validRegex!8239 (ite c!1224256 (reg!16832 r!7292) (ite c!1224255 (regOne!33519 r!7292) (regOne!33518 r!7292)))))))

(declare-fun d!2080293 () Bool)

(declare-fun res!2719831 () Bool)

(assert (=> d!2080293 (=> res!2719831 e!4013861)))

(assert (=> d!2080293 (= res!2719831 ((_ is ElementMatch!16503) r!7292))))

(assert (=> d!2080293 (= (validRegex!8239 r!7292) e!4013861)))

(declare-fun b!6636778 () Bool)

(declare-fun e!4013857 () Bool)

(assert (=> b!6636778 (= e!4013857 call!582650)))

(declare-fun b!6636779 () Bool)

(assert (=> b!6636779 (= e!4013855 e!4013857)))

(declare-fun res!2719832 () Bool)

(assert (=> b!6636779 (= res!2719832 (not (nullable!6496 (reg!16832 r!7292))))))

(assert (=> b!6636779 (=> (not res!2719832) (not e!4013857))))

(declare-fun b!6636780 () Bool)

(declare-fun e!4013859 () Bool)

(assert (=> b!6636780 (= e!4013859 call!582651)))

(declare-fun b!6636781 () Bool)

(declare-fun res!2719830 () Bool)

(assert (=> b!6636781 (=> (not res!2719830) (not e!4013859))))

(assert (=> b!6636781 (= res!2719830 call!582652)))

(assert (=> b!6636781 (= e!4013860 e!4013859)))

(declare-fun b!6636782 () Bool)

(assert (=> b!6636782 (= e!4013855 e!4013860)))

(assert (=> b!6636782 (= c!1224255 ((_ is Union!16503) r!7292))))

(assert (= (and d!2080293 (not res!2719831)) b!6636776))

(assert (= (and b!6636776 c!1224256) b!6636779))

(assert (= (and b!6636776 (not c!1224256)) b!6636782))

(assert (= (and b!6636779 res!2719832) b!6636778))

(assert (= (and b!6636782 c!1224255) b!6636781))

(assert (= (and b!6636782 (not c!1224255)) b!6636775))

(assert (= (and b!6636781 res!2719830) b!6636780))

(assert (= (and b!6636775 (not res!2719834)) b!6636774))

(assert (= (and b!6636774 res!2719833) b!6636777))

(assert (= (or b!6636780 b!6636777) bm!582646))

(assert (= (or b!6636781 b!6636774) bm!582645))

(assert (= (or b!6636778 bm!582645) bm!582647))

(declare-fun m!7404214 () Bool)

(assert (=> bm!582646 m!7404214))

(declare-fun m!7404216 () Bool)

(assert (=> bm!582647 m!7404216))

(declare-fun m!7404218 () Bool)

(assert (=> b!6636779 m!7404218))

(assert (=> start!648078 d!2080293))

(declare-fun d!2080295 () Bool)

(assert (=> d!2080295 (= (isEmpty!37983 (t!379475 (exprs!6387 (h!72134 zl!343)))) ((_ is Nil!65685) (t!379475 (exprs!6387 (h!72134 zl!343)))))))

(assert (=> b!6636121 d!2080295))

(declare-fun bs!1705523 () Bool)

(declare-fun d!2080297 () Bool)

(assert (= bs!1705523 (and d!2080297 d!2080175)))

(declare-fun lambda!370883 () Int)

(assert (=> bs!1705523 (= lambda!370883 lambda!370830)))

(declare-fun bs!1705524 () Bool)

(assert (= bs!1705524 (and d!2080297 d!2080193)))

(assert (=> bs!1705524 (= lambda!370883 lambda!370834)))

(declare-fun bs!1705525 () Bool)

(assert (= bs!1705525 (and d!2080297 d!2080199)))

(assert (=> bs!1705525 (= lambda!370883 lambda!370842)))

(declare-fun bs!1705526 () Bool)

(assert (= bs!1705526 (and d!2080297 d!2080261)))

(assert (=> bs!1705526 (= lambda!370883 lambda!370876)))

(assert (=> d!2080297 (= (inv!84504 (h!72134 zl!343)) (forall!15699 (exprs!6387 (h!72134 zl!343)) lambda!370883))))

(declare-fun bs!1705527 () Bool)

(assert (= bs!1705527 d!2080297))

(declare-fun m!7404220 () Bool)

(assert (=> bs!1705527 m!7404220))

(assert (=> b!6636126 d!2080297))

(declare-fun b!6636783 () Bool)

(declare-fun e!4013863 () Bool)

(declare-fun e!4013865 () Bool)

(assert (=> b!6636783 (= e!4013863 e!4013865)))

(declare-fun res!2719838 () Bool)

(assert (=> b!6636783 (=> (not res!2719838) (not e!4013865))))

(declare-fun call!582655 () Bool)

(assert (=> b!6636783 (= res!2719838 call!582655)))

(declare-fun bm!582648 () Bool)

(declare-fun call!582653 () Bool)

(assert (=> bm!582648 (= call!582655 call!582653)))

(declare-fun b!6636784 () Bool)

(declare-fun res!2719839 () Bool)

(assert (=> b!6636784 (=> res!2719839 e!4013863)))

(assert (=> b!6636784 (= res!2719839 (not ((_ is Concat!25348) (regOne!33518 r!7292))))))

(declare-fun e!4013867 () Bool)

(assert (=> b!6636784 (= e!4013867 e!4013863)))

(declare-fun b!6636785 () Bool)

(declare-fun e!4013868 () Bool)

(declare-fun e!4013862 () Bool)

(assert (=> b!6636785 (= e!4013868 e!4013862)))

(declare-fun c!1224258 () Bool)

(assert (=> b!6636785 (= c!1224258 ((_ is Star!16503) (regOne!33518 r!7292)))))

(declare-fun b!6636786 () Bool)

(declare-fun call!582654 () Bool)

(assert (=> b!6636786 (= e!4013865 call!582654)))

(declare-fun bm!582649 () Bool)

(declare-fun c!1224257 () Bool)

(assert (=> bm!582649 (= call!582654 (validRegex!8239 (ite c!1224257 (regTwo!33519 (regOne!33518 r!7292)) (regTwo!33518 (regOne!33518 r!7292)))))))

(declare-fun bm!582650 () Bool)

(assert (=> bm!582650 (= call!582653 (validRegex!8239 (ite c!1224258 (reg!16832 (regOne!33518 r!7292)) (ite c!1224257 (regOne!33519 (regOne!33518 r!7292)) (regOne!33518 (regOne!33518 r!7292))))))))

(declare-fun d!2080299 () Bool)

(declare-fun res!2719836 () Bool)

(assert (=> d!2080299 (=> res!2719836 e!4013868)))

(assert (=> d!2080299 (= res!2719836 ((_ is ElementMatch!16503) (regOne!33518 r!7292)))))

(assert (=> d!2080299 (= (validRegex!8239 (regOne!33518 r!7292)) e!4013868)))

(declare-fun b!6636787 () Bool)

(declare-fun e!4013864 () Bool)

(assert (=> b!6636787 (= e!4013864 call!582653)))

(declare-fun b!6636788 () Bool)

(assert (=> b!6636788 (= e!4013862 e!4013864)))

(declare-fun res!2719837 () Bool)

(assert (=> b!6636788 (= res!2719837 (not (nullable!6496 (reg!16832 (regOne!33518 r!7292)))))))

(assert (=> b!6636788 (=> (not res!2719837) (not e!4013864))))

(declare-fun b!6636789 () Bool)

(declare-fun e!4013866 () Bool)

(assert (=> b!6636789 (= e!4013866 call!582654)))

(declare-fun b!6636790 () Bool)

(declare-fun res!2719835 () Bool)

(assert (=> b!6636790 (=> (not res!2719835) (not e!4013866))))

(assert (=> b!6636790 (= res!2719835 call!582655)))

(assert (=> b!6636790 (= e!4013867 e!4013866)))

(declare-fun b!6636791 () Bool)

(assert (=> b!6636791 (= e!4013862 e!4013867)))

(assert (=> b!6636791 (= c!1224257 ((_ is Union!16503) (regOne!33518 r!7292)))))

(assert (= (and d!2080299 (not res!2719836)) b!6636785))

(assert (= (and b!6636785 c!1224258) b!6636788))

(assert (= (and b!6636785 (not c!1224258)) b!6636791))

(assert (= (and b!6636788 res!2719837) b!6636787))

(assert (= (and b!6636791 c!1224257) b!6636790))

(assert (= (and b!6636791 (not c!1224257)) b!6636784))

(assert (= (and b!6636790 res!2719835) b!6636789))

(assert (= (and b!6636784 (not res!2719839)) b!6636783))

(assert (= (and b!6636783 res!2719838) b!6636786))

(assert (= (or b!6636789 b!6636786) bm!582649))

(assert (= (or b!6636790 b!6636783) bm!582648))

(assert (= (or b!6636787 bm!582648) bm!582650))

(declare-fun m!7404222 () Bool)

(assert (=> bm!582649 m!7404222))

(declare-fun m!7404224 () Bool)

(assert (=> bm!582650 m!7404224))

(declare-fun m!7404226 () Bool)

(assert (=> b!6636788 m!7404226))

(assert (=> b!6636137 d!2080299))

(declare-fun d!2080301 () Bool)

(declare-fun c!1224259 () Bool)

(assert (=> d!2080301 (= c!1224259 (isEmpty!37988 (t!379474 s!2326)))))

(declare-fun e!4013869 () Bool)

(assert (=> d!2080301 (= (matchZipper!2515 lt!2419591 (t!379474 s!2326)) e!4013869)))

(declare-fun b!6636792 () Bool)

(assert (=> b!6636792 (= e!4013869 (nullableZipper!2244 lt!2419591))))

(declare-fun b!6636793 () Bool)

(assert (=> b!6636793 (= e!4013869 (matchZipper!2515 (derivationStepZipper!2469 lt!2419591 (head!13450 (t!379474 s!2326))) (tail!12535 (t!379474 s!2326))))))

(assert (= (and d!2080301 c!1224259) b!6636792))

(assert (= (and d!2080301 (not c!1224259)) b!6636793))

(assert (=> d!2080301 m!7404200))

(declare-fun m!7404228 () Bool)

(assert (=> b!6636792 m!7404228))

(assert (=> b!6636793 m!7404204))

(assert (=> b!6636793 m!7404204))

(declare-fun m!7404230 () Bool)

(assert (=> b!6636793 m!7404230))

(assert (=> b!6636793 m!7404208))

(assert (=> b!6636793 m!7404230))

(assert (=> b!6636793 m!7404208))

(declare-fun m!7404232 () Bool)

(assert (=> b!6636793 m!7404232))

(assert (=> b!6636117 d!2080301))

(declare-fun d!2080303 () Bool)

(assert (=> d!2080303 (= (nullable!6496 (regOne!33518 (regOne!33518 r!7292))) (nullableFct!2418 (regOne!33518 (regOne!33518 r!7292))))))

(declare-fun bs!1705528 () Bool)

(assert (= bs!1705528 d!2080303))

(declare-fun m!7404234 () Bool)

(assert (=> bs!1705528 m!7404234))

(assert (=> b!6636138 d!2080303))

(declare-fun d!2080305 () Bool)

(declare-fun e!4013872 () Bool)

(assert (=> d!2080305 (= (matchZipper!2515 ((_ map or) lt!2419592 lt!2419591) (t!379474 s!2326)) e!4013872)))

(declare-fun res!2719842 () Bool)

(assert (=> d!2080305 (=> res!2719842 e!4013872)))

(assert (=> d!2080305 (= res!2719842 (matchZipper!2515 lt!2419592 (t!379474 s!2326)))))

(declare-fun lt!2419690 () Unit!159367)

(declare-fun choose!49592 ((InoxSet Context!11774) (InoxSet Context!11774) List!65808) Unit!159367)

(assert (=> d!2080305 (= lt!2419690 (choose!49592 lt!2419592 lt!2419591 (t!379474 s!2326)))))

(assert (=> d!2080305 (= (lemmaZipperConcatMatchesSameAsBothZippers!1334 lt!2419592 lt!2419591 (t!379474 s!2326)) lt!2419690)))

(declare-fun b!6636796 () Bool)

(assert (=> b!6636796 (= e!4013872 (matchZipper!2515 lt!2419591 (t!379474 s!2326)))))

(assert (= (and d!2080305 (not res!2719842)) b!6636796))

(assert (=> d!2080305 m!7403820))

(assert (=> d!2080305 m!7403818))

(declare-fun m!7404236 () Bool)

(assert (=> d!2080305 m!7404236))

(assert (=> b!6636796 m!7403794))

(assert (=> b!6636127 d!2080305))

(assert (=> b!6636127 d!2080289))

(declare-fun d!2080307 () Bool)

(declare-fun c!1224260 () Bool)

(assert (=> d!2080307 (= c!1224260 (isEmpty!37988 (t!379474 s!2326)))))

(declare-fun e!4013873 () Bool)

(assert (=> d!2080307 (= (matchZipper!2515 ((_ map or) lt!2419592 lt!2419591) (t!379474 s!2326)) e!4013873)))

(declare-fun b!6636797 () Bool)

(assert (=> b!6636797 (= e!4013873 (nullableZipper!2244 ((_ map or) lt!2419592 lt!2419591)))))

(declare-fun b!6636798 () Bool)

(assert (=> b!6636798 (= e!4013873 (matchZipper!2515 (derivationStepZipper!2469 ((_ map or) lt!2419592 lt!2419591) (head!13450 (t!379474 s!2326))) (tail!12535 (t!379474 s!2326))))))

(assert (= (and d!2080307 c!1224260) b!6636797))

(assert (= (and d!2080307 (not c!1224260)) b!6636798))

(assert (=> d!2080307 m!7404200))

(declare-fun m!7404238 () Bool)

(assert (=> b!6636797 m!7404238))

(assert (=> b!6636798 m!7404204))

(assert (=> b!6636798 m!7404204))

(declare-fun m!7404240 () Bool)

(assert (=> b!6636798 m!7404240))

(assert (=> b!6636798 m!7404208))

(assert (=> b!6636798 m!7404240))

(assert (=> b!6636798 m!7404208))

(declare-fun m!7404242 () Bool)

(assert (=> b!6636798 m!7404242))

(assert (=> b!6636127 d!2080307))

(declare-fun b!6636803 () Bool)

(declare-fun e!4013876 () Bool)

(declare-fun tp!1827998 () Bool)

(declare-fun tp!1827999 () Bool)

(assert (=> b!6636803 (= e!4013876 (and tp!1827998 tp!1827999))))

(assert (=> b!6636120 (= tp!1827930 e!4013876)))

(assert (= (and b!6636120 ((_ is Cons!65685) (exprs!6387 setElem!45370))) b!6636803))

(declare-fun b!6636816 () Bool)

(declare-fun e!4013879 () Bool)

(declare-fun tp!1828012 () Bool)

(assert (=> b!6636816 (= e!4013879 tp!1828012)))

(declare-fun b!6636817 () Bool)

(declare-fun tp!1828010 () Bool)

(declare-fun tp!1828011 () Bool)

(assert (=> b!6636817 (= e!4013879 (and tp!1828010 tp!1828011))))

(declare-fun b!6636814 () Bool)

(assert (=> b!6636814 (= e!4013879 tp_is_empty!42259)))

(assert (=> b!6636115 (= tp!1827932 e!4013879)))

(declare-fun b!6636815 () Bool)

(declare-fun tp!1828014 () Bool)

(declare-fun tp!1828013 () Bool)

(assert (=> b!6636815 (= e!4013879 (and tp!1828014 tp!1828013))))

(assert (= (and b!6636115 ((_ is ElementMatch!16503) (reg!16832 r!7292))) b!6636814))

(assert (= (and b!6636115 ((_ is Concat!25348) (reg!16832 r!7292))) b!6636815))

(assert (= (and b!6636115 ((_ is Star!16503) (reg!16832 r!7292))) b!6636816))

(assert (= (and b!6636115 ((_ is Union!16503) (reg!16832 r!7292))) b!6636817))

(declare-fun b!6636818 () Bool)

(declare-fun e!4013880 () Bool)

(declare-fun tp!1828015 () Bool)

(declare-fun tp!1828016 () Bool)

(assert (=> b!6636818 (= e!4013880 (and tp!1828015 tp!1828016))))

(assert (=> b!6636128 (= tp!1827928 e!4013880)))

(assert (= (and b!6636128 ((_ is Cons!65685) (exprs!6387 (h!72134 zl!343)))) b!6636818))

(declare-fun b!6636826 () Bool)

(declare-fun e!4013886 () Bool)

(declare-fun tp!1828021 () Bool)

(assert (=> b!6636826 (= e!4013886 tp!1828021)))

(declare-fun b!6636825 () Bool)

(declare-fun e!4013885 () Bool)

(declare-fun tp!1828022 () Bool)

(assert (=> b!6636825 (= e!4013885 (and (inv!84504 (h!72134 (t!379476 zl!343))) e!4013886 tp!1828022))))

(assert (=> b!6636126 (= tp!1827926 e!4013885)))

(assert (= b!6636825 b!6636826))

(assert (= (and b!6636126 ((_ is Cons!65686) (t!379476 zl!343))) b!6636825))

(declare-fun m!7404244 () Bool)

(assert (=> b!6636825 m!7404244))

(declare-fun condSetEmpty!45376 () Bool)

(assert (=> setNonEmpty!45370 (= condSetEmpty!45376 (= setRest!45370 ((as const (Array Context!11774 Bool)) false)))))

(declare-fun setRes!45376 () Bool)

(assert (=> setNonEmpty!45370 (= tp!1827933 setRes!45376)))

(declare-fun setIsEmpty!45376 () Bool)

(assert (=> setIsEmpty!45376 setRes!45376))

(declare-fun e!4013889 () Bool)

(declare-fun tp!1828027 () Bool)

(declare-fun setNonEmpty!45376 () Bool)

(declare-fun setElem!45376 () Context!11774)

(assert (=> setNonEmpty!45376 (= setRes!45376 (and tp!1828027 (inv!84504 setElem!45376) e!4013889))))

(declare-fun setRest!45376 () (InoxSet Context!11774))

(assert (=> setNonEmpty!45376 (= setRest!45370 ((_ map or) (store ((as const (Array Context!11774 Bool)) false) setElem!45376 true) setRest!45376))))

(declare-fun b!6636831 () Bool)

(declare-fun tp!1828028 () Bool)

(assert (=> b!6636831 (= e!4013889 tp!1828028)))

(assert (= (and setNonEmpty!45370 condSetEmpty!45376) setIsEmpty!45376))

(assert (= (and setNonEmpty!45370 (not condSetEmpty!45376)) setNonEmpty!45376))

(assert (= setNonEmpty!45376 b!6636831))

(declare-fun m!7404246 () Bool)

(assert (=> setNonEmpty!45376 m!7404246))

(declare-fun b!6636834 () Bool)

(declare-fun e!4013890 () Bool)

(declare-fun tp!1828031 () Bool)

(assert (=> b!6636834 (= e!4013890 tp!1828031)))

(declare-fun b!6636835 () Bool)

(declare-fun tp!1828029 () Bool)

(declare-fun tp!1828030 () Bool)

(assert (=> b!6636835 (= e!4013890 (and tp!1828029 tp!1828030))))

(declare-fun b!6636832 () Bool)

(assert (=> b!6636832 (= e!4013890 tp_is_empty!42259)))

(assert (=> b!6636123 (= tp!1827931 e!4013890)))

(declare-fun b!6636833 () Bool)

(declare-fun tp!1828033 () Bool)

(declare-fun tp!1828032 () Bool)

(assert (=> b!6636833 (= e!4013890 (and tp!1828033 tp!1828032))))

(assert (= (and b!6636123 ((_ is ElementMatch!16503) (regOne!33519 r!7292))) b!6636832))

(assert (= (and b!6636123 ((_ is Concat!25348) (regOne!33519 r!7292))) b!6636833))

(assert (= (and b!6636123 ((_ is Star!16503) (regOne!33519 r!7292))) b!6636834))

(assert (= (and b!6636123 ((_ is Union!16503) (regOne!33519 r!7292))) b!6636835))

(declare-fun b!6636838 () Bool)

(declare-fun e!4013891 () Bool)

(declare-fun tp!1828036 () Bool)

(assert (=> b!6636838 (= e!4013891 tp!1828036)))

(declare-fun b!6636839 () Bool)

(declare-fun tp!1828034 () Bool)

(declare-fun tp!1828035 () Bool)

(assert (=> b!6636839 (= e!4013891 (and tp!1828034 tp!1828035))))

(declare-fun b!6636836 () Bool)

(assert (=> b!6636836 (= e!4013891 tp_is_empty!42259)))

(assert (=> b!6636123 (= tp!1827929 e!4013891)))

(declare-fun b!6636837 () Bool)

(declare-fun tp!1828038 () Bool)

(declare-fun tp!1828037 () Bool)

(assert (=> b!6636837 (= e!4013891 (and tp!1828038 tp!1828037))))

(assert (= (and b!6636123 ((_ is ElementMatch!16503) (regTwo!33519 r!7292))) b!6636836))

(assert (= (and b!6636123 ((_ is Concat!25348) (regTwo!33519 r!7292))) b!6636837))

(assert (= (and b!6636123 ((_ is Star!16503) (regTwo!33519 r!7292))) b!6636838))

(assert (= (and b!6636123 ((_ is Union!16503) (regTwo!33519 r!7292))) b!6636839))

(declare-fun b!6636842 () Bool)

(declare-fun e!4013892 () Bool)

(declare-fun tp!1828041 () Bool)

(assert (=> b!6636842 (= e!4013892 tp!1828041)))

(declare-fun b!6636843 () Bool)

(declare-fun tp!1828039 () Bool)

(declare-fun tp!1828040 () Bool)

(assert (=> b!6636843 (= e!4013892 (and tp!1828039 tp!1828040))))

(declare-fun b!6636840 () Bool)

(assert (=> b!6636840 (= e!4013892 tp_is_empty!42259)))

(assert (=> b!6636118 (= tp!1827927 e!4013892)))

(declare-fun b!6636841 () Bool)

(declare-fun tp!1828043 () Bool)

(declare-fun tp!1828042 () Bool)

(assert (=> b!6636841 (= e!4013892 (and tp!1828043 tp!1828042))))

(assert (= (and b!6636118 ((_ is ElementMatch!16503) (regOne!33518 r!7292))) b!6636840))

(assert (= (and b!6636118 ((_ is Concat!25348) (regOne!33518 r!7292))) b!6636841))

(assert (= (and b!6636118 ((_ is Star!16503) (regOne!33518 r!7292))) b!6636842))

(assert (= (and b!6636118 ((_ is Union!16503) (regOne!33518 r!7292))) b!6636843))

(declare-fun b!6636846 () Bool)

(declare-fun e!4013893 () Bool)

(declare-fun tp!1828046 () Bool)

(assert (=> b!6636846 (= e!4013893 tp!1828046)))

(declare-fun b!6636847 () Bool)

(declare-fun tp!1828044 () Bool)

(declare-fun tp!1828045 () Bool)

(assert (=> b!6636847 (= e!4013893 (and tp!1828044 tp!1828045))))

(declare-fun b!6636844 () Bool)

(assert (=> b!6636844 (= e!4013893 tp_is_empty!42259)))

(assert (=> b!6636118 (= tp!1827935 e!4013893)))

(declare-fun b!6636845 () Bool)

(declare-fun tp!1828048 () Bool)

(declare-fun tp!1828047 () Bool)

(assert (=> b!6636845 (= e!4013893 (and tp!1828048 tp!1828047))))

(assert (= (and b!6636118 ((_ is ElementMatch!16503) (regTwo!33518 r!7292))) b!6636844))

(assert (= (and b!6636118 ((_ is Concat!25348) (regTwo!33518 r!7292))) b!6636845))

(assert (= (and b!6636118 ((_ is Star!16503) (regTwo!33518 r!7292))) b!6636846))

(assert (= (and b!6636118 ((_ is Union!16503) (regTwo!33518 r!7292))) b!6636847))

(declare-fun b!6636852 () Bool)

(declare-fun e!4013896 () Bool)

(declare-fun tp!1828051 () Bool)

(assert (=> b!6636852 (= e!4013896 (and tp_is_empty!42259 tp!1828051))))

(assert (=> b!6636132 (= tp!1827934 e!4013896)))

(assert (= (and b!6636132 ((_ is Cons!65684) (t!379474 s!2326))) b!6636852))

(declare-fun b_lambda!250847 () Bool)

(assert (= b_lambda!250845 (or b!6636122 b_lambda!250847)))

(declare-fun bs!1705529 () Bool)

(declare-fun d!2080309 () Bool)

(assert (= bs!1705529 (and d!2080309 b!6636122)))

(assert (=> bs!1705529 (= (dynLambda!26166 lambda!370827 (h!72134 zl!343)) (derivationStepZipperUp!1677 (h!72134 zl!343) (h!72132 s!2326)))))

(assert (=> bs!1705529 m!7403832))

(assert (=> d!2080279 d!2080309))

(check-sat (not d!2080253) (not b!6636416) (not setNonEmpty!45376) (not bm!582629) (not bm!582628) (not b!6636846) (not d!2080307) (not d!2080193) (not b!6636658) (not b!6636218) (not b!6636839) (not b!6636841) (not b!6636661) (not d!2080303) (not b!6636415) (not b!6636653) (not d!2080175) (not b!6636748) (not b!6636326) (not b!6636838) (not b!6636845) (not b!6636833) (not b!6636215) (not b!6636213) (not b!6636817) (not b!6636419) (not bm!582647) (not b!6636746) (not d!2080291) (not b!6636826) (not b!6636330) (not b!6636656) (not b!6636417) (not b!6636220) (not bm!582638) (not bm!582634) (not bs!1705529) (not b!6636755) (not b!6636798) (not d!2080243) (not b!6636217) (not b!6636742) (not b!6636754) (not b!6636322) (not b!6636331) (not b!6636842) (not d!2080221) (not b!6636779) (not b!6636743) (not d!2080259) (not d!2080271) (not d!2080211) (not d!2080301) tp_is_empty!42259 (not b!6636837) (not b!6636663) (not b!6636797) (not b!6636327) (not bm!582635) (not b!6636413) (not bm!582624) (not bm!582620) (not b!6636825) (not bm!582649) (not b!6636818) (not b!6636847) (not d!2080289) (not b!6636324) (not b!6636796) (not b!6636793) (not bm!582622) (not b!6636219) (not b!6636345) (not b!6636214) (not bm!582627) (not b!6636328) (not b!6636749) (not d!2080305) (not b!6636852) (not d!2080279) (not b!6636697) (not d!2080275) (not d!2080287) (not b!6636815) (not b!6636412) (not d!2080223) (not b!6636834) (not b_lambda!250847) (not b!6636788) (not b!6636698) (not b!6636638) (not d!2080199) (not b!6636835) (not bm!582646) (not d!2080297) (not d!2080245) (not b!6636237) (not b!6636744) (not b!6636816) (not d!2080241) (not d!2080285) (not bm!582650) (not b!6636843) (not b!6636831) (not b!6636792) (not b!6636803) (not d!2080261) (not b!6636651))
(check-sat)
