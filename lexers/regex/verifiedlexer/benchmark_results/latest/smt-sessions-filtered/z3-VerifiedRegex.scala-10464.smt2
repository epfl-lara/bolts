; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540492 () Bool)

(assert start!540492)

(declare-fun b!5120689 () Bool)

(declare-fun res!2180341 () Bool)

(declare-fun e!3193623 () Bool)

(assert (=> b!5120689 (=> (not res!2180341) (not e!3193623))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28704 0))(
  ( (C!28705 (val!24004 Int)) )
))
(declare-datatypes ((Regex!14219 0))(
  ( (ElementMatch!14219 (c!879997 C!28704)) (Concat!23064 (regOne!28950 Regex!14219) (regTwo!28950 Regex!14219)) (EmptyExpr!14219) (Star!14219 (reg!14548 Regex!14219)) (EmptyLang!14219) (Union!14219 (regOne!28951 Regex!14219) (regTwo!28951 Regex!14219)) )
))
(declare-datatypes ((List!59359 0))(
  ( (Nil!59235) (Cons!59235 (h!65683 Regex!14219) (t!372378 List!59359)) )
))
(declare-datatypes ((Context!7206 0))(
  ( (Context!7207 (exprs!4103 List!59359)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7206))

(declare-datatypes ((List!59360 0))(
  ( (Nil!59236) (Cons!59236 (h!65684 C!28704) (t!372379 List!59360)) )
))
(declare-fun knownP!20 () List!59360)

(declare-fun matchZipper!887 ((InoxSet Context!7206) List!59360) Bool)

(assert (=> b!5120689 (= res!2180341 (matchZipper!887 baseZ!46 knownP!20))))

(declare-fun setIsEmpty!30363 () Bool)

(declare-fun setRes!30363 () Bool)

(assert (=> setIsEmpty!30363 setRes!30363))

(declare-fun b!5120690 () Bool)

(declare-fun e!3193622 () Bool)

(declare-fun tp_is_empty!37711 () Bool)

(declare-fun tp!1428544 () Bool)

(assert (=> b!5120690 (= e!3193622 (and tp_is_empty!37711 tp!1428544))))

(declare-fun b!5120691 () Bool)

(declare-fun e!3193624 () Bool)

(declare-fun tp!1428542 () Bool)

(assert (=> b!5120691 (= e!3193624 tp!1428542)))

(declare-fun res!2180342 () Bool)

(declare-fun e!3193625 () Bool)

(assert (=> start!540492 (=> (not res!2180342) (not e!3193625))))

(declare-fun testedP!265 () List!59360)

(declare-fun input!5745 () List!59360)

(declare-fun isPrefix!5624 (List!59360 List!59360) Bool)

(assert (=> start!540492 (= res!2180342 (isPrefix!5624 testedP!265 input!5745))))

(assert (=> start!540492 e!3193625))

(assert (=> start!540492 e!3193622))

(declare-fun condSetEmpty!30363 () Bool)

(declare-fun z!4463 () (InoxSet Context!7206))

(assert (=> start!540492 (= condSetEmpty!30363 (= z!4463 ((as const (Array Context!7206 Bool)) false)))))

(declare-fun setRes!30364 () Bool)

(assert (=> start!540492 setRes!30364))

(declare-fun e!3193621 () Bool)

(assert (=> start!540492 e!3193621))

(declare-fun condSetEmpty!30364 () Bool)

(assert (=> start!540492 (= condSetEmpty!30364 (= baseZ!46 ((as const (Array Context!7206 Bool)) false)))))

(assert (=> start!540492 setRes!30363))

(declare-fun e!3193627 () Bool)

(assert (=> start!540492 e!3193627))

(declare-fun setIsEmpty!30364 () Bool)

(assert (=> setIsEmpty!30364 setRes!30364))

(declare-fun b!5120692 () Bool)

(declare-fun res!2180348 () Bool)

(declare-fun e!3193626 () Bool)

(assert (=> b!5120692 (=> res!2180348 e!3193626)))

(declare-fun lostCauseZipper!1101 ((InoxSet Context!7206)) Bool)

(assert (=> b!5120692 (= res!2180348 (lostCauseZipper!1101 z!4463))))

(declare-fun b!5120693 () Bool)

(declare-fun tp!1428541 () Bool)

(assert (=> b!5120693 (= e!3193621 (and tp_is_empty!37711 tp!1428541))))

(declare-fun b!5120694 () Bool)

(assert (=> b!5120694 (= e!3193625 e!3193623)))

(declare-fun res!2180344 () Bool)

(assert (=> b!5120694 (=> (not res!2180344) (not e!3193623))))

(declare-fun lt!2111066 () Int)

(declare-fun lt!2111067 () Int)

(assert (=> b!5120694 (= res!2180344 (>= lt!2111066 lt!2111067))))

(declare-fun size!39525 (List!59360) Int)

(assert (=> b!5120694 (= lt!2111067 (size!39525 testedP!265))))

(assert (=> b!5120694 (= lt!2111066 (size!39525 knownP!20))))

(declare-fun b!5120695 () Bool)

(assert (=> b!5120695 (= e!3193626 true)))

(assert (=> b!5120695 (= testedP!265 knownP!20)))

(declare-datatypes ((Unit!150373 0))(
  ( (Unit!150374) )
))
(declare-fun lt!2111068 () Unit!150373)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1344 (List!59360 List!59360 List!59360) Unit!150373)

(assert (=> b!5120695 (= lt!2111068 (lemmaIsPrefixSameLengthThenSameList!1344 testedP!265 knownP!20 input!5745))))

(declare-fun tp!1428545 () Bool)

(declare-fun setNonEmpty!30363 () Bool)

(declare-fun setElem!30364 () Context!7206)

(declare-fun inv!78728 (Context!7206) Bool)

(assert (=> setNonEmpty!30363 (= setRes!30364 (and tp!1428545 (inv!78728 setElem!30364) e!3193624))))

(declare-fun setRest!30363 () (InoxSet Context!7206))

(assert (=> setNonEmpty!30363 (= z!4463 ((_ map or) (store ((as const (Array Context!7206 Bool)) false) setElem!30364 true) setRest!30363))))

(declare-fun b!5120696 () Bool)

(declare-fun tp!1428543 () Bool)

(assert (=> b!5120696 (= e!3193627 (and tp_is_empty!37711 tp!1428543))))

(declare-fun b!5120697 () Bool)

(declare-fun res!2180347 () Bool)

(assert (=> b!5120697 (=> res!2180347 e!3193626)))

(assert (=> b!5120697 (= res!2180347 (not (= lt!2111067 lt!2111066)))))

(declare-fun b!5120698 () Bool)

(assert (=> b!5120698 (= e!3193623 (not e!3193626))))

(declare-fun res!2180346 () Bool)

(assert (=> b!5120698 (=> res!2180346 e!3193626)))

(declare-fun getSuffix!3296 (List!59360 List!59360) List!59360)

(assert (=> b!5120698 (= res!2180346 (not (matchZipper!887 z!4463 (getSuffix!3296 knownP!20 testedP!265))))))

(assert (=> b!5120698 (isPrefix!5624 testedP!265 knownP!20)))

(declare-fun lt!2111065 () Unit!150373)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!759 (List!59360 List!59360 List!59360) Unit!150373)

(assert (=> b!5120698 (= lt!2111065 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!759 knownP!20 testedP!265 input!5745))))

(declare-fun b!5120699 () Bool)

(declare-fun res!2180345 () Bool)

(assert (=> b!5120699 (=> (not res!2180345) (not e!3193625))))

(assert (=> b!5120699 (= res!2180345 (isPrefix!5624 knownP!20 input!5745))))

(declare-fun b!5120700 () Bool)

(declare-fun res!2180343 () Bool)

(assert (=> b!5120700 (=> res!2180343 e!3193626)))

(declare-fun derivationZipper!116 ((InoxSet Context!7206) List!59360) (InoxSet Context!7206))

(assert (=> b!5120700 (= res!2180343 (not (= (derivationZipper!116 baseZ!46 testedP!265) z!4463)))))

(declare-fun setNonEmpty!30364 () Bool)

(declare-fun e!3193620 () Bool)

(declare-fun tp!1428546 () Bool)

(declare-fun setElem!30363 () Context!7206)

(assert (=> setNonEmpty!30364 (= setRes!30363 (and tp!1428546 (inv!78728 setElem!30363) e!3193620))))

(declare-fun setRest!30364 () (InoxSet Context!7206))

(assert (=> setNonEmpty!30364 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7206 Bool)) false) setElem!30363 true) setRest!30364))))

(declare-fun b!5120701 () Bool)

(declare-fun tp!1428547 () Bool)

(assert (=> b!5120701 (= e!3193620 tp!1428547)))

(assert (= (and start!540492 res!2180342) b!5120699))

(assert (= (and b!5120699 res!2180345) b!5120694))

(assert (= (and b!5120694 res!2180344) b!5120689))

(assert (= (and b!5120689 res!2180341) b!5120698))

(assert (= (and b!5120698 (not res!2180346)) b!5120700))

(assert (= (and b!5120700 (not res!2180343)) b!5120692))

(assert (= (and b!5120692 (not res!2180348)) b!5120697))

(assert (= (and b!5120697 (not res!2180347)) b!5120695))

(get-info :version)

(assert (= (and start!540492 ((_ is Cons!59236) input!5745)) b!5120690))

(assert (= (and start!540492 condSetEmpty!30363) setIsEmpty!30364))

(assert (= (and start!540492 (not condSetEmpty!30363)) setNonEmpty!30363))

(assert (= setNonEmpty!30363 b!5120691))

(assert (= (and start!540492 ((_ is Cons!59236) testedP!265)) b!5120693))

(assert (= (and start!540492 condSetEmpty!30364) setIsEmpty!30363))

(assert (= (and start!540492 (not condSetEmpty!30364)) setNonEmpty!30364))

(assert (= setNonEmpty!30364 b!5120701))

(assert (= (and start!540492 ((_ is Cons!59236) knownP!20)) b!5120696))

(declare-fun m!6181710 () Bool)

(assert (=> b!5120700 m!6181710))

(declare-fun m!6181712 () Bool)

(assert (=> b!5120694 m!6181712))

(declare-fun m!6181714 () Bool)

(assert (=> b!5120694 m!6181714))

(declare-fun m!6181716 () Bool)

(assert (=> start!540492 m!6181716))

(declare-fun m!6181718 () Bool)

(assert (=> b!5120692 m!6181718))

(declare-fun m!6181720 () Bool)

(assert (=> setNonEmpty!30363 m!6181720))

(declare-fun m!6181722 () Bool)

(assert (=> b!5120698 m!6181722))

(assert (=> b!5120698 m!6181722))

(declare-fun m!6181724 () Bool)

(assert (=> b!5120698 m!6181724))

(declare-fun m!6181726 () Bool)

(assert (=> b!5120698 m!6181726))

(declare-fun m!6181728 () Bool)

(assert (=> b!5120698 m!6181728))

(declare-fun m!6181730 () Bool)

(assert (=> b!5120695 m!6181730))

(declare-fun m!6181732 () Bool)

(assert (=> setNonEmpty!30364 m!6181732))

(declare-fun m!6181734 () Bool)

(assert (=> b!5120699 m!6181734))

(declare-fun m!6181736 () Bool)

(assert (=> b!5120689 m!6181736))

(check-sat (not b!5120696) (not b!5120694) (not b!5120690) (not setNonEmpty!30363) (not start!540492) (not b!5120701) (not b!5120692) (not b!5120693) (not b!5120698) tp_is_empty!37711 (not b!5120691) (not b!5120699) (not b!5120700) (not setNonEmpty!30364) (not b!5120689) (not b!5120695))
(check-sat)
