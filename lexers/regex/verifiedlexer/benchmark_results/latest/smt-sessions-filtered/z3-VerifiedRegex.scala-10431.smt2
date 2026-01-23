; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539152 () Bool)

(assert start!539152)

(declare-fun b!5111778 () Bool)

(declare-fun e!3188176 () Bool)

(declare-fun tp_is_empty!37579 () Bool)

(declare-fun tp!1426305 () Bool)

(assert (=> b!5111778 (= e!3188176 (and tp_is_empty!37579 tp!1426305))))

(declare-fun b!5111779 () Bool)

(declare-fun res!2175859 () Bool)

(declare-fun e!3188175 () Bool)

(assert (=> b!5111779 (=> (not res!2175859) (not e!3188175))))

(declare-datatypes ((C!28572 0))(
  ( (C!28573 (val!23938 Int)) )
))
(declare-datatypes ((List!59191 0))(
  ( (Nil!59067) (Cons!59067 (h!65515 C!28572) (t!372192 List!59191)) )
))
(declare-fun knownP!20 () List!59191)

(declare-fun input!5745 () List!59191)

(declare-fun isPrefix!5558 (List!59191 List!59191) Bool)

(assert (=> b!5111779 (= res!2175859 (isPrefix!5558 knownP!20 input!5745))))

(declare-fun setIsEmpty!29817 () Bool)

(declare-fun setRes!29818 () Bool)

(assert (=> setIsEmpty!29817 setRes!29818))

(declare-fun b!5111780 () Bool)

(declare-fun e!3188173 () Bool)

(declare-fun tp!1426303 () Bool)

(assert (=> b!5111780 (= e!3188173 tp!1426303)))

(declare-fun b!5111781 () Bool)

(declare-fun res!2175856 () Bool)

(declare-fun e!3188172 () Bool)

(assert (=> b!5111781 (=> res!2175856 e!3188172)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14153 0))(
  ( (ElementMatch!14153 (c!878211 C!28572)) (Concat!22998 (regOne!28818 Regex!14153) (regTwo!28818 Regex!14153)) (EmptyExpr!14153) (Star!14153 (reg!14482 Regex!14153)) (EmptyLang!14153) (Union!14153 (regOne!28819 Regex!14153) (regTwo!28819 Regex!14153)) )
))
(declare-datatypes ((List!59192 0))(
  ( (Nil!59068) (Cons!59068 (h!65516 Regex!14153) (t!372193 List!59192)) )
))
(declare-datatypes ((Context!7074 0))(
  ( (Context!7075 (exprs!4037 List!59192)) )
))
(declare-fun z!4463 () (InoxSet Context!7074))

(declare-fun baseZ!46 () (InoxSet Context!7074))

(declare-fun testedP!265 () List!59191)

(declare-fun derivationZipper!52 ((InoxSet Context!7074) List!59191) (InoxSet Context!7074))

(assert (=> b!5111781 (= res!2175856 (not (= (derivationZipper!52 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5111782 () Bool)

(declare-fun res!2175857 () Bool)

(assert (=> b!5111782 (=> res!2175857 e!3188172)))

(declare-fun lostCauseZipper!1039 ((InoxSet Context!7074)) Bool)

(assert (=> b!5111782 (= res!2175857 (lostCauseZipper!1039 z!4463))))

(declare-fun b!5111783 () Bool)

(declare-fun res!2175858 () Bool)

(declare-fun e!3188177 () Bool)

(assert (=> b!5111783 (=> (not res!2175858) (not e!3188177))))

(declare-fun matchZipper!821 ((InoxSet Context!7074) List!59191) Bool)

(assert (=> b!5111783 (= res!2175858 (matchZipper!821 baseZ!46 knownP!20))))

(declare-fun b!5111784 () Bool)

(assert (=> b!5111784 (= e!3188177 (not e!3188172))))

(declare-fun res!2175854 () Bool)

(assert (=> b!5111784 (=> res!2175854 e!3188172)))

(declare-fun getSuffix!3232 (List!59191 List!59191) List!59191)

(assert (=> b!5111784 (= res!2175854 (not (matchZipper!821 z!4463 (getSuffix!3232 knownP!20 testedP!265))))))

(assert (=> b!5111784 (isPrefix!5558 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150173 0))(
  ( (Unit!150174) )
))
(declare-fun lt!2105255 () Unit!150173)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!695 (List!59191 List!59191 List!59191) Unit!150173)

(assert (=> b!5111784 (= lt!2105255 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!695 knownP!20 testedP!265 input!5745))))

(declare-fun res!2175860 () Bool)

(assert (=> start!539152 (=> (not res!2175860) (not e!3188175))))

(assert (=> start!539152 (= res!2175860 (isPrefix!5558 testedP!265 input!5745))))

(assert (=> start!539152 e!3188175))

(declare-fun e!3188174 () Bool)

(assert (=> start!539152 e!3188174))

(declare-fun condSetEmpty!29817 () Bool)

(assert (=> start!539152 (= condSetEmpty!29817 (= z!4463 ((as const (Array Context!7074 Bool)) false)))))

(assert (=> start!539152 setRes!29818))

(declare-fun e!3188179 () Bool)

(assert (=> start!539152 e!3188179))

(declare-fun condSetEmpty!29818 () Bool)

(assert (=> start!539152 (= condSetEmpty!29818 (= baseZ!46 ((as const (Array Context!7074 Bool)) false)))))

(declare-fun setRes!29817 () Bool)

(assert (=> start!539152 setRes!29817))

(assert (=> start!539152 e!3188176))

(declare-fun b!5111785 () Bool)

(declare-fun res!2175862 () Bool)

(assert (=> b!5111785 (=> res!2175862 e!3188172)))

(declare-fun lt!2105258 () Int)

(declare-fun lt!2105260 () Int)

(assert (=> b!5111785 (= res!2175862 (= lt!2105258 lt!2105260))))

(declare-fun b!5111786 () Bool)

(assert (=> b!5111786 (= e!3188172 true)))

(declare-fun lt!2105252 () List!59191)

(declare-fun lt!2105257 () List!59191)

(assert (=> b!5111786 (= lt!2105252 (getSuffix!3232 knownP!20 lt!2105257))))

(assert (=> b!5111786 (isPrefix!5558 lt!2105257 knownP!20)))

(declare-fun lt!2105254 () Unit!150173)

(assert (=> b!5111786 (= lt!2105254 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!695 knownP!20 lt!2105257 input!5745))))

(declare-fun lt!2105256 () C!28572)

(declare-fun derivationStepZipper!788 ((InoxSet Context!7074) C!28572) (InoxSet Context!7074))

(assert (=> b!5111786 (= (derivationZipper!52 baseZ!46 lt!2105257) (derivationStepZipper!788 z!4463 lt!2105256))))

(declare-fun lt!2105259 () Unit!150173)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!13 ((InoxSet Context!7074) (InoxSet Context!7074) List!59191 C!28572) Unit!150173)

(assert (=> b!5111786 (= lt!2105259 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!13 baseZ!46 z!4463 testedP!265 lt!2105256))))

(assert (=> b!5111786 (isPrefix!5558 lt!2105257 input!5745)))

(declare-fun lt!2105253 () Unit!150173)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!948 (List!59191 List!59191) Unit!150173)

(assert (=> b!5111786 (= lt!2105253 (lemmaAddHeadSuffixToPrefixStillPrefix!948 testedP!265 input!5745))))

(declare-fun ++!12978 (List!59191 List!59191) List!59191)

(assert (=> b!5111786 (= lt!2105257 (++!12978 testedP!265 (Cons!59067 lt!2105256 Nil!59067)))))

(declare-fun head!10881 (List!59191) C!28572)

(assert (=> b!5111786 (= lt!2105256 (head!10881 (getSuffix!3232 input!5745 testedP!265)))))

(declare-fun setIsEmpty!29818 () Bool)

(assert (=> setIsEmpty!29818 setRes!29817))

(declare-fun b!5111787 () Bool)

(declare-fun tp!1426299 () Bool)

(assert (=> b!5111787 (= e!3188174 (and tp_is_empty!37579 tp!1426299))))

(declare-fun setNonEmpty!29817 () Bool)

(declare-fun setElem!29817 () Context!7074)

(declare-fun tp!1426304 () Bool)

(declare-fun inv!78563 (Context!7074) Bool)

(assert (=> setNonEmpty!29817 (= setRes!29817 (and tp!1426304 (inv!78563 setElem!29817) e!3188173))))

(declare-fun setRest!29818 () (InoxSet Context!7074))

(assert (=> setNonEmpty!29817 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7074 Bool)) false) setElem!29817 true) setRest!29818))))

(declare-fun b!5111788 () Bool)

(declare-fun e!3188178 () Bool)

(declare-fun tp!1426300 () Bool)

(assert (=> b!5111788 (= e!3188178 tp!1426300)))

(declare-fun b!5111789 () Bool)

(declare-fun tp!1426302 () Bool)

(assert (=> b!5111789 (= e!3188179 (and tp_is_empty!37579 tp!1426302))))

(declare-fun b!5111790 () Bool)

(declare-fun res!2175861 () Bool)

(assert (=> b!5111790 (=> res!2175861 e!3188172)))

(declare-fun size!39459 (List!59191) Int)

(assert (=> b!5111790 (= res!2175861 (>= lt!2105258 (size!39459 input!5745)))))

(declare-fun b!5111791 () Bool)

(assert (=> b!5111791 (= e!3188175 e!3188177)))

(declare-fun res!2175855 () Bool)

(assert (=> b!5111791 (=> (not res!2175855) (not e!3188177))))

(assert (=> b!5111791 (= res!2175855 (>= lt!2105260 lt!2105258))))

(assert (=> b!5111791 (= lt!2105258 (size!39459 testedP!265))))

(assert (=> b!5111791 (= lt!2105260 (size!39459 knownP!20))))

(declare-fun setElem!29818 () Context!7074)

(declare-fun setNonEmpty!29818 () Bool)

(declare-fun tp!1426301 () Bool)

(assert (=> setNonEmpty!29818 (= setRes!29818 (and tp!1426301 (inv!78563 setElem!29818) e!3188178))))

(declare-fun setRest!29817 () (InoxSet Context!7074))

(assert (=> setNonEmpty!29818 (= z!4463 ((_ map or) (store ((as const (Array Context!7074 Bool)) false) setElem!29818 true) setRest!29817))))

(assert (= (and start!539152 res!2175860) b!5111779))

(assert (= (and b!5111779 res!2175859) b!5111791))

(assert (= (and b!5111791 res!2175855) b!5111783))

(assert (= (and b!5111783 res!2175858) b!5111784))

(assert (= (and b!5111784 (not res!2175854)) b!5111781))

(assert (= (and b!5111781 (not res!2175856)) b!5111782))

(assert (= (and b!5111782 (not res!2175857)) b!5111785))

(assert (= (and b!5111785 (not res!2175862)) b!5111790))

(assert (= (and b!5111790 (not res!2175861)) b!5111786))

(get-info :version)

(assert (= (and start!539152 ((_ is Cons!59067) input!5745)) b!5111787))

(assert (= (and start!539152 condSetEmpty!29817) setIsEmpty!29817))

(assert (= (and start!539152 (not condSetEmpty!29817)) setNonEmpty!29818))

(assert (= setNonEmpty!29818 b!5111788))

(assert (= (and start!539152 ((_ is Cons!59067) testedP!265)) b!5111789))

(assert (= (and start!539152 condSetEmpty!29818) setIsEmpty!29818))

(assert (= (and start!539152 (not condSetEmpty!29818)) setNonEmpty!29817))

(assert (= setNonEmpty!29817 b!5111780))

(assert (= (and start!539152 ((_ is Cons!59067) knownP!20)) b!5111778))

(declare-fun m!6169332 () Bool)

(assert (=> b!5111784 m!6169332))

(assert (=> b!5111784 m!6169332))

(declare-fun m!6169334 () Bool)

(assert (=> b!5111784 m!6169334))

(declare-fun m!6169336 () Bool)

(assert (=> b!5111784 m!6169336))

(declare-fun m!6169338 () Bool)

(assert (=> b!5111784 m!6169338))

(declare-fun m!6169340 () Bool)

(assert (=> b!5111782 m!6169340))

(declare-fun m!6169342 () Bool)

(assert (=> setNonEmpty!29817 m!6169342))

(declare-fun m!6169344 () Bool)

(assert (=> b!5111791 m!6169344))

(declare-fun m!6169346 () Bool)

(assert (=> b!5111791 m!6169346))

(declare-fun m!6169348 () Bool)

(assert (=> b!5111790 m!6169348))

(declare-fun m!6169350 () Bool)

(assert (=> b!5111781 m!6169350))

(declare-fun m!6169352 () Bool)

(assert (=> b!5111786 m!6169352))

(declare-fun m!6169354 () Bool)

(assert (=> b!5111786 m!6169354))

(declare-fun m!6169356 () Bool)

(assert (=> b!5111786 m!6169356))

(declare-fun m!6169358 () Bool)

(assert (=> b!5111786 m!6169358))

(declare-fun m!6169360 () Bool)

(assert (=> b!5111786 m!6169360))

(declare-fun m!6169362 () Bool)

(assert (=> b!5111786 m!6169362))

(declare-fun m!6169364 () Bool)

(assert (=> b!5111786 m!6169364))

(declare-fun m!6169366 () Bool)

(assert (=> b!5111786 m!6169366))

(declare-fun m!6169368 () Bool)

(assert (=> b!5111786 m!6169368))

(assert (=> b!5111786 m!6169352))

(declare-fun m!6169370 () Bool)

(assert (=> b!5111786 m!6169370))

(declare-fun m!6169372 () Bool)

(assert (=> b!5111786 m!6169372))

(declare-fun m!6169374 () Bool)

(assert (=> start!539152 m!6169374))

(declare-fun m!6169376 () Bool)

(assert (=> b!5111783 m!6169376))

(declare-fun m!6169378 () Bool)

(assert (=> setNonEmpty!29818 m!6169378))

(declare-fun m!6169380 () Bool)

(assert (=> b!5111779 m!6169380))

(check-sat tp_is_empty!37579 (not b!5111786) (not b!5111791) (not setNonEmpty!29818) (not b!5111788) (not setNonEmpty!29817) (not b!5111781) (not b!5111787) (not start!539152) (not b!5111789) (not b!5111782) (not b!5111779) (not b!5111790) (not b!5111784) (not b!5111783) (not b!5111780) (not b!5111778))
(check-sat)
