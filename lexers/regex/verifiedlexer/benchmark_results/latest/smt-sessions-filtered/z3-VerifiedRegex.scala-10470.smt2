; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540684 () Bool)

(assert start!540684)

(declare-fun b!5122266 () Bool)

(declare-fun res!2181074 () Bool)

(declare-fun e!3194578 () Bool)

(assert (=> b!5122266 (=> res!2181074 e!3194578)))

(declare-datatypes ((C!28728 0))(
  ( (C!28729 (val!24016 Int)) )
))
(declare-datatypes ((List!59385 0))(
  ( (Nil!59261) (Cons!59261 (h!65709 C!28728) (t!372404 List!59385)) )
))
(declare-fun input!5745 () List!59385)

(declare-fun lt!2111738 () List!59385)

(declare-fun testedP!265 () List!59385)

(declare-fun ++!13044 (List!59385 List!59385) List!59385)

(assert (=> b!5122266 (= res!2181074 (not (= (++!13044 testedP!265 lt!2111738) input!5745)))))

(declare-fun b!5122267 () Bool)

(declare-fun e!3194584 () Bool)

(declare-fun e!3194581 () Bool)

(assert (=> b!5122267 (= e!3194584 e!3194581)))

(declare-fun res!2181077 () Bool)

(assert (=> b!5122267 (=> res!2181077 e!3194581)))

(declare-fun lt!2111745 () List!59385)

(declare-fun knownP!20 () List!59385)

(assert (=> b!5122267 (= res!2181077 (not (= lt!2111745 knownP!20)))))

(declare-fun lt!2111742 () List!59385)

(declare-fun lt!2111735 () List!59385)

(assert (=> b!5122267 (= lt!2111745 (++!13044 lt!2111742 lt!2111735))))

(declare-fun b!5122268 () Bool)

(declare-fun res!2181070 () Bool)

(assert (=> b!5122268 (=> res!2181070 e!3194584)))

(declare-fun lt!2111736 () List!59385)

(assert (=> b!5122268 (= res!2181070 (not (= lt!2111736 knownP!20)))))

(declare-fun b!5122269 () Bool)

(declare-fun e!3194582 () Bool)

(declare-fun e!3194577 () Bool)

(assert (=> b!5122269 (= e!3194582 e!3194577)))

(declare-fun res!2181075 () Bool)

(assert (=> b!5122269 (=> res!2181075 e!3194577)))

(declare-fun lt!2111746 () List!59385)

(assert (=> b!5122269 (= res!2181075 (not (= (++!13044 knownP!20 lt!2111746) input!5745)))))

(declare-fun getSuffix!3308 (List!59385 List!59385) List!59385)

(assert (=> b!5122269 (= lt!2111746 (getSuffix!3308 input!5745 knownP!20))))

(assert (=> b!5122269 (= lt!2111735 (getSuffix!3308 knownP!20 lt!2111742))))

(declare-fun isPrefix!5636 (List!59385 List!59385) Bool)

(assert (=> b!5122269 (isPrefix!5636 lt!2111742 knownP!20)))

(declare-datatypes ((Unit!150401 0))(
  ( (Unit!150402) )
))
(declare-fun lt!2111744 () Unit!150401)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!771 (List!59385 List!59385 List!59385) Unit!150401)

(assert (=> b!5122269 (= lt!2111744 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!771 knownP!20 lt!2111742 input!5745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14231 0))(
  ( (ElementMatch!14231 (c!880271 C!28728)) (Concat!23076 (regOne!28974 Regex!14231) (regTwo!28974 Regex!14231)) (EmptyExpr!14231) (Star!14231 (reg!14560 Regex!14231)) (EmptyLang!14231) (Union!14231 (regOne!28975 Regex!14231) (regTwo!28975 Regex!14231)) )
))
(declare-datatypes ((List!59386 0))(
  ( (Nil!59262) (Cons!59262 (h!65710 Regex!14231) (t!372405 List!59386)) )
))
(declare-datatypes ((Context!7230 0))(
  ( (Context!7231 (exprs!4115 List!59386)) )
))
(declare-fun z!4463 () (InoxSet Context!7230))

(declare-fun baseZ!46 () (InoxSet Context!7230))

(declare-fun lt!2111741 () C!28728)

(declare-fun derivationZipper!128 ((InoxSet Context!7230) List!59385) (InoxSet Context!7230))

(declare-fun derivationStepZipper!854 ((InoxSet Context!7230) C!28728) (InoxSet Context!7230))

(assert (=> b!5122269 (= (derivationZipper!128 baseZ!46 lt!2111742) (derivationStepZipper!854 z!4463 lt!2111741))))

(declare-fun lt!2111730 () Unit!150401)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!75 ((InoxSet Context!7230) (InoxSet Context!7230) List!59385 C!28728) Unit!150401)

(assert (=> b!5122269 (= lt!2111730 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!75 baseZ!46 z!4463 testedP!265 lt!2111741))))

(assert (=> b!5122269 (isPrefix!5636 lt!2111742 input!5745)))

(declare-fun lt!2111728 () Unit!150401)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1010 (List!59385 List!59385) Unit!150401)

(assert (=> b!5122269 (= lt!2111728 (lemmaAddHeadSuffixToPrefixStillPrefix!1010 testedP!265 input!5745))))

(declare-fun lt!2111725 () List!59385)

(assert (=> b!5122269 (= lt!2111742 (++!13044 testedP!265 lt!2111725))))

(assert (=> b!5122269 (= lt!2111725 (Cons!59261 lt!2111741 Nil!59261))))

(declare-fun head!10947 (List!59385) C!28728)

(assert (=> b!5122269 (= lt!2111741 (head!10947 lt!2111738))))

(assert (=> b!5122269 (= lt!2111738 (getSuffix!3308 input!5745 testedP!265))))

(declare-fun b!5122270 () Bool)

(declare-fun e!3194576 () Bool)

(declare-fun tp_is_empty!37735 () Bool)

(declare-fun tp!1429113 () Bool)

(assert (=> b!5122270 (= e!3194576 (and tp_is_empty!37735 tp!1429113))))

(declare-fun b!5122271 () Bool)

(declare-fun e!3194580 () Bool)

(declare-fun tp!1429111 () Bool)

(assert (=> b!5122271 (= e!3194580 tp!1429111)))

(declare-fun b!5122272 () Bool)

(declare-fun res!2181079 () Bool)

(declare-fun e!3194586 () Bool)

(assert (=> b!5122272 (=> (not res!2181079) (not e!3194586))))

(declare-fun matchZipper!899 ((InoxSet Context!7230) List!59385) Bool)

(assert (=> b!5122272 (= res!2181079 (matchZipper!899 baseZ!46 knownP!20))))

(declare-fun b!5122273 () Bool)

(assert (=> b!5122273 (= e!3194586 (not e!3194582))))

(declare-fun res!2181072 () Bool)

(assert (=> b!5122273 (=> res!2181072 e!3194582)))

(declare-fun lt!2111739 () List!59385)

(assert (=> b!5122273 (= res!2181072 (not (matchZipper!899 z!4463 lt!2111739)))))

(assert (=> b!5122273 (= lt!2111739 (getSuffix!3308 knownP!20 testedP!265))))

(assert (=> b!5122273 (isPrefix!5636 testedP!265 knownP!20)))

(declare-fun lt!2111740 () Unit!150401)

(assert (=> b!5122273 (= lt!2111740 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!771 knownP!20 testedP!265 input!5745))))

(declare-fun setIsEmpty!30458 () Bool)

(declare-fun setRes!30458 () Bool)

(assert (=> setIsEmpty!30458 setRes!30458))

(declare-fun b!5122274 () Bool)

(declare-fun e!3194575 () Bool)

(assert (=> b!5122274 (= e!3194575 e!3194584)))

(declare-fun res!2181065 () Bool)

(assert (=> b!5122274 (=> res!2181065 e!3194584)))

(assert (=> b!5122274 (= res!2181065 (not (= (head!10947 lt!2111739) lt!2111741)))))

(declare-fun lt!2111731 () List!59385)

(assert (=> b!5122274 (= lt!2111731 lt!2111738)))

(declare-fun lt!2111724 () Unit!150401)

(declare-fun lemmaSamePrefixThenSameSuffix!2654 (List!59385 List!59385 List!59385 List!59385 List!59385) Unit!150401)

(assert (=> b!5122274 (= lt!2111724 (lemmaSamePrefixThenSameSuffix!2654 testedP!265 lt!2111731 testedP!265 lt!2111738 input!5745))))

(declare-fun b!5122275 () Bool)

(declare-fun res!2181078 () Bool)

(assert (=> b!5122275 (=> res!2181078 e!3194582)))

(declare-fun lostCauseZipper!1113 ((InoxSet Context!7230)) Bool)

(assert (=> b!5122275 (= res!2181078 (lostCauseZipper!1113 z!4463))))

(declare-fun b!5122276 () Bool)

(declare-fun res!2181066 () Bool)

(assert (=> b!5122276 (=> res!2181066 e!3194584)))

(declare-fun $colon$colon!1145 (List!59385 C!28728) List!59385)

(declare-fun tail!10082 (List!59385) List!59385)

(assert (=> b!5122276 (= res!2181066 (not (= lt!2111739 ($colon$colon!1145 (tail!10082 lt!2111739) lt!2111741))))))

(declare-fun b!5122277 () Bool)

(declare-fun res!2181071 () Bool)

(assert (=> b!5122277 (=> res!2181071 e!3194582)))

(declare-fun lt!2111726 () Int)

(declare-fun lt!2111737 () Int)

(assert (=> b!5122277 (= res!2181071 (= lt!2111726 lt!2111737))))

(declare-fun b!5122278 () Bool)

(declare-fun e!3194585 () Bool)

(declare-fun tp!1429108 () Bool)

(assert (=> b!5122278 (= e!3194585 (and tp_is_empty!37735 tp!1429108))))

(declare-fun b!5122279 () Bool)

(declare-fun res!2181068 () Bool)

(assert (=> b!5122279 (=> res!2181068 e!3194582)))

(declare-fun size!39537 (List!59385) Int)

(assert (=> b!5122279 (= res!2181068 (>= lt!2111726 (size!39537 input!5745)))))

(declare-fun b!5122280 () Bool)

(assert (=> b!5122280 (= e!3194577 e!3194578)))

(declare-fun res!2181067 () Bool)

(assert (=> b!5122280 (=> res!2181067 e!3194578)))

(declare-fun lt!2111727 () List!59385)

(assert (=> b!5122280 (= res!2181067 (not (= lt!2111727 input!5745)))))

(assert (=> b!5122280 (= lt!2111727 (++!13044 lt!2111736 lt!2111746))))

(assert (=> b!5122280 (= lt!2111736 (++!13044 testedP!265 lt!2111739))))

(declare-fun b!5122281 () Bool)

(assert (=> b!5122281 (= e!3194581 true)))

(declare-fun lt!2111732 () List!59385)

(assert (=> b!5122281 (= lt!2111732 lt!2111739)))

(declare-fun lt!2111733 () Unit!150401)

(assert (=> b!5122281 (= lt!2111733 (lemmaSamePrefixThenSameSuffix!2654 testedP!265 lt!2111732 testedP!265 lt!2111739 knownP!20))))

(assert (=> b!5122281 (= lt!2111745 (++!13044 testedP!265 lt!2111732))))

(assert (=> b!5122281 (= lt!2111732 (++!13044 lt!2111725 lt!2111735))))

(declare-fun lt!2111729 () Unit!150401)

(declare-fun lemmaConcatAssociativity!2788 (List!59385 List!59385 List!59385) Unit!150401)

(assert (=> b!5122281 (= lt!2111729 (lemmaConcatAssociativity!2788 testedP!265 lt!2111725 lt!2111735))))

(declare-fun setIsEmpty!30457 () Bool)

(declare-fun setRes!30457 () Bool)

(assert (=> setIsEmpty!30457 setRes!30457))

(declare-fun res!2181073 () Bool)

(declare-fun e!3194579 () Bool)

(assert (=> start!540684 (=> (not res!2181073) (not e!3194579))))

(assert (=> start!540684 (= res!2181073 (isPrefix!5636 testedP!265 input!5745))))

(assert (=> start!540684 e!3194579))

(declare-fun e!3194587 () Bool)

(assert (=> start!540684 e!3194587))

(declare-fun condSetEmpty!30458 () Bool)

(assert (=> start!540684 (= condSetEmpty!30458 (= z!4463 ((as const (Array Context!7230 Bool)) false)))))

(assert (=> start!540684 setRes!30457))

(assert (=> start!540684 e!3194585))

(declare-fun condSetEmpty!30457 () Bool)

(assert (=> start!540684 (= condSetEmpty!30457 (= baseZ!46 ((as const (Array Context!7230 Bool)) false)))))

(assert (=> start!540684 setRes!30458))

(assert (=> start!540684 e!3194576))

(declare-fun b!5122282 () Bool)

(assert (=> b!5122282 (= e!3194579 e!3194586)))

(declare-fun res!2181069 () Bool)

(assert (=> b!5122282 (=> (not res!2181069) (not e!3194586))))

(assert (=> b!5122282 (= res!2181069 (>= lt!2111737 lt!2111726))))

(assert (=> b!5122282 (= lt!2111726 (size!39537 testedP!265))))

(assert (=> b!5122282 (= lt!2111737 (size!39537 knownP!20))))

(declare-fun b!5122283 () Bool)

(declare-fun e!3194583 () Bool)

(declare-fun tp!1429112 () Bool)

(assert (=> b!5122283 (= e!3194583 tp!1429112)))

(declare-fun b!5122284 () Bool)

(declare-fun tp!1429107 () Bool)

(assert (=> b!5122284 (= e!3194587 (and tp_is_empty!37735 tp!1429107))))

(declare-fun setNonEmpty!30457 () Bool)

(declare-fun setElem!30457 () Context!7230)

(declare-fun tp!1429109 () Bool)

(declare-fun inv!78758 (Context!7230) Bool)

(assert (=> setNonEmpty!30457 (= setRes!30457 (and tp!1429109 (inv!78758 setElem!30457) e!3194580))))

(declare-fun setRest!30457 () (InoxSet Context!7230))

(assert (=> setNonEmpty!30457 (= z!4463 ((_ map or) (store ((as const (Array Context!7230 Bool)) false) setElem!30457 true) setRest!30457))))

(declare-fun b!5122285 () Bool)

(declare-fun res!2181080 () Bool)

(assert (=> b!5122285 (=> (not res!2181080) (not e!3194579))))

(assert (=> b!5122285 (= res!2181080 (isPrefix!5636 knownP!20 input!5745))))

(declare-fun tp!1429110 () Bool)

(declare-fun setNonEmpty!30458 () Bool)

(declare-fun setElem!30458 () Context!7230)

(assert (=> setNonEmpty!30458 (= setRes!30458 (and tp!1429110 (inv!78758 setElem!30458) e!3194583))))

(declare-fun setRest!30458 () (InoxSet Context!7230))

(assert (=> setNonEmpty!30458 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7230 Bool)) false) setElem!30458 true) setRest!30458))))

(declare-fun b!5122286 () Bool)

(assert (=> b!5122286 (= e!3194578 e!3194575)))

(declare-fun res!2181076 () Bool)

(assert (=> b!5122286 (=> res!2181076 e!3194575)))

(declare-fun lt!2111743 () List!59385)

(assert (=> b!5122286 (= res!2181076 (not (= lt!2111743 input!5745)))))

(assert (=> b!5122286 (= lt!2111727 lt!2111743)))

(assert (=> b!5122286 (= lt!2111743 (++!13044 testedP!265 lt!2111731))))

(assert (=> b!5122286 (= lt!2111731 (++!13044 lt!2111739 lt!2111746))))

(declare-fun lt!2111734 () Unit!150401)

(assert (=> b!5122286 (= lt!2111734 (lemmaConcatAssociativity!2788 testedP!265 lt!2111739 lt!2111746))))

(declare-fun b!5122287 () Bool)

(declare-fun res!2181064 () Bool)

(assert (=> b!5122287 (=> res!2181064 e!3194582)))

(assert (=> b!5122287 (= res!2181064 (not (= (derivationZipper!128 baseZ!46 testedP!265) z!4463)))))

(assert (= (and start!540684 res!2181073) b!5122285))

(assert (= (and b!5122285 res!2181080) b!5122282))

(assert (= (and b!5122282 res!2181069) b!5122272))

(assert (= (and b!5122272 res!2181079) b!5122273))

(assert (= (and b!5122273 (not res!2181072)) b!5122287))

(assert (= (and b!5122287 (not res!2181064)) b!5122275))

(assert (= (and b!5122275 (not res!2181078)) b!5122277))

(assert (= (and b!5122277 (not res!2181071)) b!5122279))

(assert (= (and b!5122279 (not res!2181068)) b!5122269))

(assert (= (and b!5122269 (not res!2181075)) b!5122280))

(assert (= (and b!5122280 (not res!2181067)) b!5122266))

(assert (= (and b!5122266 (not res!2181074)) b!5122286))

(assert (= (and b!5122286 (not res!2181076)) b!5122274))

(assert (= (and b!5122274 (not res!2181065)) b!5122276))

(assert (= (and b!5122276 (not res!2181066)) b!5122268))

(assert (= (and b!5122268 (not res!2181070)) b!5122267))

(assert (= (and b!5122267 (not res!2181077)) b!5122281))

(get-info :version)

(assert (= (and start!540684 ((_ is Cons!59261) input!5745)) b!5122284))

(assert (= (and start!540684 condSetEmpty!30458) setIsEmpty!30457))

(assert (= (and start!540684 (not condSetEmpty!30458)) setNonEmpty!30457))

(assert (= setNonEmpty!30457 b!5122271))

(assert (= (and start!540684 ((_ is Cons!59261) testedP!265)) b!5122278))

(assert (= (and start!540684 condSetEmpty!30457) setIsEmpty!30458))

(assert (= (and start!540684 (not condSetEmpty!30457)) setNonEmpty!30458))

(assert (= setNonEmpty!30458 b!5122283))

(assert (= (and start!540684 ((_ is Cons!59261) knownP!20)) b!5122270))

(declare-fun m!6183642 () Bool)

(assert (=> b!5122276 m!6183642))

(assert (=> b!5122276 m!6183642))

(declare-fun m!6183644 () Bool)

(assert (=> b!5122276 m!6183644))

(declare-fun m!6183646 () Bool)

(assert (=> b!5122266 m!6183646))

(declare-fun m!6183648 () Bool)

(assert (=> b!5122279 m!6183648))

(declare-fun m!6183650 () Bool)

(assert (=> b!5122273 m!6183650))

(declare-fun m!6183652 () Bool)

(assert (=> b!5122273 m!6183652))

(declare-fun m!6183654 () Bool)

(assert (=> b!5122273 m!6183654))

(declare-fun m!6183656 () Bool)

(assert (=> b!5122273 m!6183656))

(declare-fun m!6183658 () Bool)

(assert (=> b!5122269 m!6183658))

(declare-fun m!6183660 () Bool)

(assert (=> b!5122269 m!6183660))

(declare-fun m!6183662 () Bool)

(assert (=> b!5122269 m!6183662))

(declare-fun m!6183664 () Bool)

(assert (=> b!5122269 m!6183664))

(declare-fun m!6183666 () Bool)

(assert (=> b!5122269 m!6183666))

(declare-fun m!6183668 () Bool)

(assert (=> b!5122269 m!6183668))

(declare-fun m!6183670 () Bool)

(assert (=> b!5122269 m!6183670))

(declare-fun m!6183672 () Bool)

(assert (=> b!5122269 m!6183672))

(declare-fun m!6183674 () Bool)

(assert (=> b!5122269 m!6183674))

(declare-fun m!6183676 () Bool)

(assert (=> b!5122269 m!6183676))

(declare-fun m!6183678 () Bool)

(assert (=> b!5122269 m!6183678))

(declare-fun m!6183680 () Bool)

(assert (=> b!5122269 m!6183680))

(declare-fun m!6183682 () Bool)

(assert (=> b!5122269 m!6183682))

(declare-fun m!6183684 () Bool)

(assert (=> b!5122272 m!6183684))

(declare-fun m!6183686 () Bool)

(assert (=> b!5122280 m!6183686))

(declare-fun m!6183688 () Bool)

(assert (=> b!5122280 m!6183688))

(declare-fun m!6183690 () Bool)

(assert (=> b!5122286 m!6183690))

(declare-fun m!6183692 () Bool)

(assert (=> b!5122286 m!6183692))

(declare-fun m!6183694 () Bool)

(assert (=> b!5122286 m!6183694))

(declare-fun m!6183696 () Bool)

(assert (=> b!5122267 m!6183696))

(declare-fun m!6183698 () Bool)

(assert (=> setNonEmpty!30457 m!6183698))

(declare-fun m!6183700 () Bool)

(assert (=> b!5122282 m!6183700))

(declare-fun m!6183702 () Bool)

(assert (=> b!5122282 m!6183702))

(declare-fun m!6183704 () Bool)

(assert (=> setNonEmpty!30458 m!6183704))

(declare-fun m!6183706 () Bool)

(assert (=> start!540684 m!6183706))

(declare-fun m!6183708 () Bool)

(assert (=> b!5122287 m!6183708))

(declare-fun m!6183710 () Bool)

(assert (=> b!5122285 m!6183710))

(declare-fun m!6183712 () Bool)

(assert (=> b!5122281 m!6183712))

(declare-fun m!6183714 () Bool)

(assert (=> b!5122281 m!6183714))

(declare-fun m!6183716 () Bool)

(assert (=> b!5122281 m!6183716))

(declare-fun m!6183718 () Bool)

(assert (=> b!5122281 m!6183718))

(declare-fun m!6183720 () Bool)

(assert (=> b!5122274 m!6183720))

(declare-fun m!6183722 () Bool)

(assert (=> b!5122274 m!6183722))

(declare-fun m!6183724 () Bool)

(assert (=> b!5122275 m!6183724))

(check-sat (not b!5122275) (not b!5122266) (not b!5122287) (not start!540684) (not b!5122271) (not b!5122284) (not b!5122279) (not b!5122278) (not b!5122283) (not b!5122274) (not b!5122267) (not b!5122280) tp_is_empty!37735 (not b!5122270) (not b!5122285) (not setNonEmpty!30457) (not b!5122286) (not b!5122281) (not setNonEmpty!30458) (not b!5122273) (not b!5122272) (not b!5122276) (not b!5122282) (not b!5122269))
(check-sat)
