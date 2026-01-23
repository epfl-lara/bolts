; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584782 () Bool)

(assert start!584782)

(declare-fun b!5655138 () Bool)

(assert (=> b!5655138 true))

(assert (=> b!5655138 true))

(declare-fun lambda!304334 () Int)

(declare-fun lambda!304333 () Int)

(assert (=> b!5655138 (not (= lambda!304334 lambda!304333))))

(assert (=> b!5655138 true))

(assert (=> b!5655138 true))

(declare-fun b!5655130 () Bool)

(assert (=> b!5655130 true))

(declare-fun b!5655123 () Bool)

(declare-fun res!2392187 () Bool)

(declare-fun e!3483128 () Bool)

(assert (=> b!5655123 (=> res!2392187 e!3483128)))

(declare-datatypes ((C!31564 0))(
  ( (C!31565 (val!25484 Int)) )
))
(declare-datatypes ((Regex!15647 0))(
  ( (ElementMatch!15647 (c!994153 C!31564)) (Concat!24492 (regOne!31806 Regex!15647) (regTwo!31806 Regex!15647)) (EmptyExpr!15647) (Star!15647 (reg!15976 Regex!15647)) (EmptyLang!15647) (Union!15647 (regOne!31807 Regex!15647) (regTwo!31807 Regex!15647)) )
))
(declare-datatypes ((List!63240 0))(
  ( (Nil!63116) (Cons!63116 (h!69564 Regex!15647) (t!376542 List!63240)) )
))
(declare-datatypes ((Context!10062 0))(
  ( (Context!10063 (exprs!5531 List!63240)) )
))
(declare-datatypes ((List!63241 0))(
  ( (Nil!63117) (Cons!63117 (h!69565 Context!10062) (t!376543 List!63241)) )
))
(declare-fun zl!343 () List!63241)

(declare-fun isEmpty!34961 (List!63241) Bool)

(assert (=> b!5655123 (= res!2392187 (not (isEmpty!34961 (t!376543 zl!343))))))

(declare-fun b!5655125 () Bool)

(declare-fun e!3483133 () Bool)

(declare-fun e!3483139 () Bool)

(assert (=> b!5655125 (= e!3483133 e!3483139)))

(declare-fun res!2392179 () Bool)

(assert (=> b!5655125 (=> res!2392179 e!3483139)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2266497 () (InoxSet Context!10062))

(declare-fun lt!2266510 () (InoxSet Context!10062))

(assert (=> b!5655125 (= res!2392179 (not (= lt!2266497 lt!2266510)))))

(declare-fun lt!2266511 () (InoxSet Context!10062))

(declare-fun lt!2266512 () Context!10062)

(declare-datatypes ((List!63242 0))(
  ( (Nil!63118) (Cons!63118 (h!69566 C!31564) (t!376544 List!63242)) )
))
(declare-fun s!2326 () List!63242)

(declare-fun lambda!304335 () Int)

(declare-fun flatMap!1260 ((InoxSet Context!10062) Int) (InoxSet Context!10062))

(declare-fun derivationStepZipperUp!915 (Context!10062 C!31564) (InoxSet Context!10062))

(assert (=> b!5655125 (= (flatMap!1260 lt!2266511 lambda!304335) (derivationStepZipperUp!915 lt!2266512 (h!69566 s!2326)))))

(declare-datatypes ((Unit!156120 0))(
  ( (Unit!156121) )
))
(declare-fun lt!2266513 () Unit!156120)

(declare-fun lemmaFlatMapOnSingletonSet!792 ((InoxSet Context!10062) Context!10062 Int) Unit!156120)

(assert (=> b!5655125 (= lt!2266513 (lemmaFlatMapOnSingletonSet!792 lt!2266511 lt!2266512 lambda!304335))))

(declare-fun lt!2266516 () (InoxSet Context!10062))

(assert (=> b!5655125 (= lt!2266516 (derivationStepZipperUp!915 lt!2266512 (h!69566 s!2326)))))

(declare-fun derivationStepZipper!1732 ((InoxSet Context!10062) C!31564) (InoxSet Context!10062))

(assert (=> b!5655125 (= lt!2266497 (derivationStepZipper!1732 lt!2266511 (h!69566 s!2326)))))

(assert (=> b!5655125 (= lt!2266511 (store ((as const (Array Context!10062 Bool)) false) lt!2266512 true))))

(declare-fun r!7292 () Regex!15647)

(declare-fun lt!2266500 () List!63240)

(assert (=> b!5655125 (= lt!2266512 (Context!10063 (Cons!63116 (regOne!31806 (regOne!31806 r!7292)) lt!2266500)))))

(declare-fun b!5655126 () Bool)

(declare-fun e!3483135 () Bool)

(assert (=> b!5655126 (= e!3483135 (not e!3483128))))

(declare-fun res!2392174 () Bool)

(assert (=> b!5655126 (=> res!2392174 e!3483128)))

(get-info :version)

(assert (=> b!5655126 (= res!2392174 (not ((_ is Cons!63117) zl!343)))))

(declare-fun lt!2266514 () Bool)

(declare-fun matchRSpec!2750 (Regex!15647 List!63242) Bool)

(assert (=> b!5655126 (= lt!2266514 (matchRSpec!2750 r!7292 s!2326))))

(declare-fun matchR!7832 (Regex!15647 List!63242) Bool)

(assert (=> b!5655126 (= lt!2266514 (matchR!7832 r!7292 s!2326))))

(declare-fun lt!2266501 () Unit!156120)

(declare-fun mainMatchTheorem!2750 (Regex!15647 List!63242) Unit!156120)

(assert (=> b!5655126 (= lt!2266501 (mainMatchTheorem!2750 r!7292 s!2326))))

(declare-fun b!5655127 () Bool)

(declare-fun e!3483127 () Bool)

(declare-fun e!3483138 () Bool)

(assert (=> b!5655127 (= e!3483127 e!3483138)))

(declare-fun res!2392189 () Bool)

(assert (=> b!5655127 (=> res!2392189 e!3483138)))

(declare-fun lt!2266504 () (InoxSet Context!10062))

(assert (=> b!5655127 (= res!2392189 (not (= lt!2266504 lt!2266510)))))

(declare-fun derivationStepZipperDown!989 (Regex!15647 Context!10062 C!31564) (InoxSet Context!10062))

(assert (=> b!5655127 (= lt!2266510 (derivationStepZipperDown!989 (regOne!31806 (regOne!31806 r!7292)) (Context!10063 lt!2266500) (h!69566 s!2326)))))

(assert (=> b!5655127 (= lt!2266500 (Cons!63116 (regTwo!31806 (regOne!31806 r!7292)) (t!376542 (exprs!5531 (h!69565 zl!343)))))))

(declare-fun b!5655128 () Bool)

(declare-fun res!2392191 () Bool)

(assert (=> b!5655128 (=> res!2392191 e!3483128)))

(assert (=> b!5655128 (= res!2392191 (or ((_ is EmptyExpr!15647) r!7292) ((_ is EmptyLang!15647) r!7292) ((_ is ElementMatch!15647) r!7292) ((_ is Union!15647) r!7292) (not ((_ is Concat!24492) r!7292))))))

(declare-fun b!5655129 () Bool)

(declare-fun res!2392188 () Bool)

(assert (=> b!5655129 (=> (not res!2392188) (not e!3483135))))

(declare-fun z!1189 () (InoxSet Context!10062))

(declare-fun toList!9431 ((InoxSet Context!10062)) List!63241)

(assert (=> b!5655129 (= res!2392188 (= (toList!9431 z!1189) zl!343))))

(declare-fun e!3483132 () Bool)

(assert (=> b!5655130 (= e!3483132 e!3483127)))

(declare-fun res!2392184 () Bool)

(assert (=> b!5655130 (=> res!2392184 e!3483127)))

(assert (=> b!5655130 (= res!2392184 (or (and ((_ is ElementMatch!15647) (regOne!31806 r!7292)) (= (c!994153 (regOne!31806 r!7292)) (h!69566 s!2326))) ((_ is Union!15647) (regOne!31806 r!7292))))))

(declare-fun lt!2266509 () Unit!156120)

(declare-fun e!3483130 () Unit!156120)

(assert (=> b!5655130 (= lt!2266509 e!3483130)))

(declare-fun c!994152 () Bool)

(declare-fun nullable!5679 (Regex!15647) Bool)

(assert (=> b!5655130 (= c!994152 (nullable!5679 (h!69564 (exprs!5531 (h!69565 zl!343)))))))

(assert (=> b!5655130 (= (flatMap!1260 z!1189 lambda!304335) (derivationStepZipperUp!915 (h!69565 zl!343) (h!69566 s!2326)))))

(declare-fun lt!2266508 () Unit!156120)

(assert (=> b!5655130 (= lt!2266508 (lemmaFlatMapOnSingletonSet!792 z!1189 (h!69565 zl!343) lambda!304335))))

(declare-fun lt!2266503 () (InoxSet Context!10062))

(declare-fun lt!2266502 () Context!10062)

(assert (=> b!5655130 (= lt!2266503 (derivationStepZipperUp!915 lt!2266502 (h!69566 s!2326)))))

(assert (=> b!5655130 (= lt!2266504 (derivationStepZipperDown!989 (h!69564 (exprs!5531 (h!69565 zl!343))) lt!2266502 (h!69566 s!2326)))))

(assert (=> b!5655130 (= lt!2266502 (Context!10063 (t!376542 (exprs!5531 (h!69565 zl!343)))))))

(declare-fun lt!2266499 () (InoxSet Context!10062))

(assert (=> b!5655130 (= lt!2266499 (derivationStepZipperUp!915 (Context!10063 (Cons!63116 (h!69564 (exprs!5531 (h!69565 zl!343))) (t!376542 (exprs!5531 (h!69565 zl!343))))) (h!69566 s!2326)))))

(declare-fun setIsEmpty!37804 () Bool)

(declare-fun setRes!37804 () Bool)

(assert (=> setIsEmpty!37804 setRes!37804))

(declare-fun b!5655131 () Bool)

(declare-fun res!2392180 () Bool)

(assert (=> b!5655131 (=> res!2392180 e!3483127)))

(declare-fun e!3483137 () Bool)

(assert (=> b!5655131 (= res!2392180 e!3483137)))

(declare-fun res!2392178 () Bool)

(assert (=> b!5655131 (=> (not res!2392178) (not e!3483137))))

(assert (=> b!5655131 (= res!2392178 ((_ is Concat!24492) (regOne!31806 r!7292)))))

(declare-fun b!5655132 () Bool)

(declare-fun e!3483126 () Bool)

(declare-fun tp!1566641 () Bool)

(declare-fun tp!1566639 () Bool)

(assert (=> b!5655132 (= e!3483126 (and tp!1566641 tp!1566639))))

(declare-fun b!5655133 () Bool)

(declare-fun e!3483134 () Bool)

(declare-fun matchZipper!1785 ((InoxSet Context!10062) List!63242) Bool)

(assert (=> b!5655133 (= e!3483134 (matchZipper!1785 lt!2266503 (t!376544 s!2326)))))

(declare-fun b!5655134 () Bool)

(declare-fun res!2392186 () Bool)

(assert (=> b!5655134 (=> res!2392186 e!3483127)))

(assert (=> b!5655134 (= res!2392186 (not ((_ is Concat!24492) (regOne!31806 r!7292))))))

(declare-fun b!5655135 () Bool)

(declare-fun Unit!156122 () Unit!156120)

(assert (=> b!5655135 (= e!3483130 Unit!156122)))

(declare-fun b!5655136 () Bool)

(declare-fun res!2392177 () Bool)

(assert (=> b!5655136 (=> res!2392177 e!3483128)))

(declare-fun generalisedConcat!1262 (List!63240) Regex!15647)

(assert (=> b!5655136 (= res!2392177 (not (= r!7292 (generalisedConcat!1262 (exprs!5531 (h!69565 zl!343))))))))

(declare-fun b!5655137 () Bool)

(declare-fun tp!1566640 () Bool)

(declare-fun tp!1566632 () Bool)

(assert (=> b!5655137 (= e!3483126 (and tp!1566640 tp!1566632))))

(assert (=> b!5655138 (= e!3483128 e!3483132)))

(declare-fun res!2392185 () Bool)

(assert (=> b!5655138 (=> res!2392185 e!3483132)))

(declare-fun lt!2266515 () Bool)

(assert (=> b!5655138 (= res!2392185 (or (not (= lt!2266514 lt!2266515)) ((_ is Nil!63118) s!2326)))))

(declare-fun Exists!2747 (Int) Bool)

(assert (=> b!5655138 (= (Exists!2747 lambda!304333) (Exists!2747 lambda!304334))))

(declare-fun lt!2266507 () Unit!156120)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1376 (Regex!15647 Regex!15647 List!63242) Unit!156120)

(assert (=> b!5655138 (= lt!2266507 (lemmaExistCutMatchRandMatchRSpecEquivalent!1376 (regOne!31806 r!7292) (regTwo!31806 r!7292) s!2326))))

(assert (=> b!5655138 (= lt!2266515 (Exists!2747 lambda!304333))))

(declare-datatypes ((tuple2!65488 0))(
  ( (tuple2!65489 (_1!36047 List!63242) (_2!36047 List!63242)) )
))
(declare-datatypes ((Option!15656 0))(
  ( (None!15655) (Some!15655 (v!51702 tuple2!65488)) )
))
(declare-fun isDefined!12359 (Option!15656) Bool)

(declare-fun findConcatSeparation!2070 (Regex!15647 Regex!15647 List!63242 List!63242 List!63242) Option!15656)

(assert (=> b!5655138 (= lt!2266515 (isDefined!12359 (findConcatSeparation!2070 (regOne!31806 r!7292) (regTwo!31806 r!7292) Nil!63118 s!2326 s!2326)))))

(declare-fun lt!2266506 () Unit!156120)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1834 (Regex!15647 Regex!15647 List!63242) Unit!156120)

(assert (=> b!5655138 (= lt!2266506 (lemmaFindConcatSeparationEquivalentToExists!1834 (regOne!31806 r!7292) (regTwo!31806 r!7292) s!2326))))

(declare-fun b!5655124 () Bool)

(declare-fun res!2392182 () Bool)

(assert (=> b!5655124 (=> res!2392182 e!3483128)))

(declare-fun generalisedUnion!1510 (List!63240) Regex!15647)

(declare-fun unfocusZipperList!1075 (List!63241) List!63240)

(assert (=> b!5655124 (= res!2392182 (not (= r!7292 (generalisedUnion!1510 (unfocusZipperList!1075 zl!343)))))))

(declare-fun res!2392181 () Bool)

(assert (=> start!584782 (=> (not res!2392181) (not e!3483135))))

(declare-fun validRegex!7383 (Regex!15647) Bool)

(assert (=> start!584782 (= res!2392181 (validRegex!7383 r!7292))))

(assert (=> start!584782 e!3483135))

(assert (=> start!584782 e!3483126))

(declare-fun condSetEmpty!37804 () Bool)

(assert (=> start!584782 (= condSetEmpty!37804 (= z!1189 ((as const (Array Context!10062 Bool)) false)))))

(assert (=> start!584782 setRes!37804))

(declare-fun e!3483136 () Bool)

(assert (=> start!584782 e!3483136))

(declare-fun e!3483131 () Bool)

(assert (=> start!584782 e!3483131))

(declare-fun b!5655139 () Bool)

(declare-fun lt!2266498 () Bool)

(assert (=> b!5655139 (= e!3483139 (= lt!2266498 (matchZipper!1785 lt!2266497 (t!376544 s!2326))))))

(declare-fun b!5655140 () Bool)

(declare-fun Unit!156123 () Unit!156120)

(assert (=> b!5655140 (= e!3483130 Unit!156123)))

(declare-fun lt!2266505 () Unit!156120)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!672 ((InoxSet Context!10062) (InoxSet Context!10062) List!63242) Unit!156120)

(assert (=> b!5655140 (= lt!2266505 (lemmaZipperConcatMatchesSameAsBothZippers!672 lt!2266504 lt!2266503 (t!376544 s!2326)))))

(declare-fun res!2392192 () Bool)

(assert (=> b!5655140 (= res!2392192 (matchZipper!1785 lt!2266504 (t!376544 s!2326)))))

(assert (=> b!5655140 (=> res!2392192 e!3483134)))

(assert (=> b!5655140 (= (matchZipper!1785 ((_ map or) lt!2266504 lt!2266503) (t!376544 s!2326)) e!3483134)))

(declare-fun b!5655141 () Bool)

(declare-fun res!2392176 () Bool)

(assert (=> b!5655141 (=> res!2392176 e!3483128)))

(assert (=> b!5655141 (= res!2392176 (not ((_ is Cons!63116) (exprs!5531 (h!69565 zl!343)))))))

(declare-fun e!3483129 () Bool)

(declare-fun setElem!37804 () Context!10062)

(declare-fun tp!1566633 () Bool)

(declare-fun setNonEmpty!37804 () Bool)

(declare-fun inv!82364 (Context!10062) Bool)

(assert (=> setNonEmpty!37804 (= setRes!37804 (and tp!1566633 (inv!82364 setElem!37804) e!3483129))))

(declare-fun setRest!37804 () (InoxSet Context!10062))

(assert (=> setNonEmpty!37804 (= z!1189 ((_ map or) (store ((as const (Array Context!10062 Bool)) false) setElem!37804 true) setRest!37804))))

(declare-fun b!5655142 () Bool)

(declare-fun e!3483140 () Bool)

(declare-fun tp!1566636 () Bool)

(assert (=> b!5655142 (= e!3483140 tp!1566636)))

(declare-fun b!5655143 () Bool)

(assert (=> b!5655143 (= e!3483137 (nullable!5679 (regOne!31806 (regOne!31806 r!7292))))))

(declare-fun b!5655144 () Bool)

(declare-fun res!2392175 () Bool)

(assert (=> b!5655144 (=> res!2392175 e!3483132)))

(declare-fun isEmpty!34962 (List!63240) Bool)

(assert (=> b!5655144 (= res!2392175 (isEmpty!34962 (t!376542 (exprs!5531 (h!69565 zl!343)))))))

(declare-fun b!5655145 () Bool)

(declare-fun tp!1566637 () Bool)

(assert (=> b!5655145 (= e!3483126 tp!1566637)))

(declare-fun b!5655146 () Bool)

(declare-fun tp!1566638 () Bool)

(assert (=> b!5655146 (= e!3483129 tp!1566638)))

(declare-fun tp!1566635 () Bool)

(declare-fun b!5655147 () Bool)

(assert (=> b!5655147 (= e!3483136 (and (inv!82364 (h!69565 zl!343)) e!3483140 tp!1566635))))

(declare-fun b!5655148 () Bool)

(declare-fun tp_is_empty!40547 () Bool)

(declare-fun tp!1566634 () Bool)

(assert (=> b!5655148 (= e!3483131 (and tp_is_empty!40547 tp!1566634))))

(declare-fun b!5655149 () Bool)

(assert (=> b!5655149 (= e!3483138 e!3483133)))

(declare-fun res!2392183 () Bool)

(assert (=> b!5655149 (=> res!2392183 e!3483133)))

(assert (=> b!5655149 (= res!2392183 (not (= lt!2266498 (matchZipper!1785 lt!2266510 (t!376544 s!2326)))))))

(assert (=> b!5655149 (= lt!2266498 (matchZipper!1785 lt!2266504 (t!376544 s!2326)))))

(declare-fun b!5655150 () Bool)

(assert (=> b!5655150 (= e!3483126 tp_is_empty!40547)))

(declare-fun b!5655151 () Bool)

(declare-fun res!2392190 () Bool)

(assert (=> b!5655151 (=> (not res!2392190) (not e!3483135))))

(declare-fun unfocusZipper!1389 (List!63241) Regex!15647)

(assert (=> b!5655151 (= res!2392190 (= r!7292 (unfocusZipper!1389 zl!343)))))

(assert (= (and start!584782 res!2392181) b!5655129))

(assert (= (and b!5655129 res!2392188) b!5655151))

(assert (= (and b!5655151 res!2392190) b!5655126))

(assert (= (and b!5655126 (not res!2392174)) b!5655123))

(assert (= (and b!5655123 (not res!2392187)) b!5655136))

(assert (= (and b!5655136 (not res!2392177)) b!5655141))

(assert (= (and b!5655141 (not res!2392176)) b!5655124))

(assert (= (and b!5655124 (not res!2392182)) b!5655128))

(assert (= (and b!5655128 (not res!2392191)) b!5655138))

(assert (= (and b!5655138 (not res!2392185)) b!5655144))

(assert (= (and b!5655144 (not res!2392175)) b!5655130))

(assert (= (and b!5655130 c!994152) b!5655140))

(assert (= (and b!5655130 (not c!994152)) b!5655135))

(assert (= (and b!5655140 (not res!2392192)) b!5655133))

(assert (= (and b!5655130 (not res!2392184)) b!5655131))

(assert (= (and b!5655131 res!2392178) b!5655143))

(assert (= (and b!5655131 (not res!2392180)) b!5655134))

(assert (= (and b!5655134 (not res!2392186)) b!5655127))

(assert (= (and b!5655127 (not res!2392189)) b!5655149))

(assert (= (and b!5655149 (not res!2392183)) b!5655125))

(assert (= (and b!5655125 (not res!2392179)) b!5655139))

(assert (= (and start!584782 ((_ is ElementMatch!15647) r!7292)) b!5655150))

(assert (= (and start!584782 ((_ is Concat!24492) r!7292)) b!5655132))

(assert (= (and start!584782 ((_ is Star!15647) r!7292)) b!5655145))

(assert (= (and start!584782 ((_ is Union!15647) r!7292)) b!5655137))

(assert (= (and start!584782 condSetEmpty!37804) setIsEmpty!37804))

(assert (= (and start!584782 (not condSetEmpty!37804)) setNonEmpty!37804))

(assert (= setNonEmpty!37804 b!5655146))

(assert (= b!5655147 b!5655142))

(assert (= (and start!584782 ((_ is Cons!63117) zl!343)) b!5655147))

(assert (= (and start!584782 ((_ is Cons!63118) s!2326)) b!5655148))

(declare-fun m!6621462 () Bool)

(assert (=> b!5655143 m!6621462))

(declare-fun m!6621464 () Bool)

(assert (=> b!5655124 m!6621464))

(assert (=> b!5655124 m!6621464))

(declare-fun m!6621466 () Bool)

(assert (=> b!5655124 m!6621466))

(declare-fun m!6621468 () Bool)

(assert (=> b!5655138 m!6621468))

(declare-fun m!6621470 () Bool)

(assert (=> b!5655138 m!6621470))

(declare-fun m!6621472 () Bool)

(assert (=> b!5655138 m!6621472))

(declare-fun m!6621474 () Bool)

(assert (=> b!5655138 m!6621474))

(declare-fun m!6621476 () Bool)

(assert (=> b!5655138 m!6621476))

(assert (=> b!5655138 m!6621468))

(assert (=> b!5655138 m!6621470))

(declare-fun m!6621478 () Bool)

(assert (=> b!5655138 m!6621478))

(declare-fun m!6621480 () Bool)

(assert (=> b!5655144 m!6621480))

(declare-fun m!6621482 () Bool)

(assert (=> b!5655139 m!6621482))

(declare-fun m!6621484 () Bool)

(assert (=> b!5655133 m!6621484))

(declare-fun m!6621486 () Bool)

(assert (=> b!5655129 m!6621486))

(declare-fun m!6621488 () Bool)

(assert (=> b!5655125 m!6621488))

(declare-fun m!6621490 () Bool)

(assert (=> b!5655125 m!6621490))

(declare-fun m!6621492 () Bool)

(assert (=> b!5655125 m!6621492))

(declare-fun m!6621494 () Bool)

(assert (=> b!5655125 m!6621494))

(declare-fun m!6621496 () Bool)

(assert (=> b!5655125 m!6621496))

(declare-fun m!6621498 () Bool)

(assert (=> b!5655151 m!6621498))

(declare-fun m!6621500 () Bool)

(assert (=> b!5655147 m!6621500))

(declare-fun m!6621502 () Bool)

(assert (=> b!5655130 m!6621502))

(declare-fun m!6621504 () Bool)

(assert (=> b!5655130 m!6621504))

(declare-fun m!6621506 () Bool)

(assert (=> b!5655130 m!6621506))

(declare-fun m!6621508 () Bool)

(assert (=> b!5655130 m!6621508))

(declare-fun m!6621510 () Bool)

(assert (=> b!5655130 m!6621510))

(declare-fun m!6621512 () Bool)

(assert (=> b!5655130 m!6621512))

(declare-fun m!6621514 () Bool)

(assert (=> b!5655130 m!6621514))

(declare-fun m!6621516 () Bool)

(assert (=> b!5655136 m!6621516))

(declare-fun m!6621518 () Bool)

(assert (=> b!5655127 m!6621518))

(declare-fun m!6621520 () Bool)

(assert (=> b!5655123 m!6621520))

(declare-fun m!6621522 () Bool)

(assert (=> b!5655149 m!6621522))

(declare-fun m!6621524 () Bool)

(assert (=> b!5655149 m!6621524))

(declare-fun m!6621526 () Bool)

(assert (=> start!584782 m!6621526))

(declare-fun m!6621528 () Bool)

(assert (=> b!5655126 m!6621528))

(declare-fun m!6621530 () Bool)

(assert (=> b!5655126 m!6621530))

(declare-fun m!6621532 () Bool)

(assert (=> b!5655126 m!6621532))

(declare-fun m!6621534 () Bool)

(assert (=> setNonEmpty!37804 m!6621534))

(declare-fun m!6621536 () Bool)

(assert (=> b!5655140 m!6621536))

(assert (=> b!5655140 m!6621524))

(declare-fun m!6621538 () Bool)

(assert (=> b!5655140 m!6621538))

(check-sat (not b!5655143) (not b!5655132) (not b!5655125) (not b!5655129) (not b!5655142) (not b!5655136) (not b!5655127) (not b!5655123) (not b!5655151) (not b!5655130) tp_is_empty!40547 (not setNonEmpty!37804) (not start!584782) (not b!5655133) (not b!5655146) (not b!5655148) (not b!5655137) (not b!5655144) (not b!5655138) (not b!5655149) (not b!5655145) (not b!5655124) (not b!5655126) (not b!5655139) (not b!5655140) (not b!5655147))
(check-sat)
