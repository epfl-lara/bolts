; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539288 () Bool)

(assert start!539288)

(declare-fun res!2176348 () Bool)

(declare-fun e!3188746 () Bool)

(assert (=> start!539288 (=> (not res!2176348) (not e!3188746))))

(declare-datatypes ((C!28588 0))(
  ( (C!28589 (val!23946 Int)) )
))
(declare-datatypes ((List!59211 0))(
  ( (Nil!59087) (Cons!59087 (h!65535 C!28588) (t!372212 List!59211)) )
))
(declare-fun testedP!265 () List!59211)

(declare-fun input!5745 () List!59211)

(declare-fun isPrefix!5566 (List!59211 List!59211) Bool)

(assert (=> start!539288 (= res!2176348 (isPrefix!5566 testedP!265 input!5745))))

(assert (=> start!539288 e!3188746))

(declare-fun e!3188744 () Bool)

(assert (=> start!539288 e!3188744))

(declare-fun condSetEmpty!29881 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14161 0))(
  ( (ElementMatch!14161 (c!878387 C!28588)) (Concat!23006 (regOne!28834 Regex!14161) (regTwo!28834 Regex!14161)) (EmptyExpr!14161) (Star!14161 (reg!14490 Regex!14161)) (EmptyLang!14161) (Union!14161 (regOne!28835 Regex!14161) (regTwo!28835 Regex!14161)) )
))
(declare-datatypes ((List!59212 0))(
  ( (Nil!59088) (Cons!59088 (h!65536 Regex!14161) (t!372213 List!59212)) )
))
(declare-datatypes ((Context!7090 0))(
  ( (Context!7091 (exprs!4045 List!59212)) )
))
(declare-fun z!4463 () (InoxSet Context!7090))

(assert (=> start!539288 (= condSetEmpty!29881 (= z!4463 ((as const (Array Context!7090 Bool)) false)))))

(declare-fun setRes!29882 () Bool)

(assert (=> start!539288 setRes!29882))

(declare-fun e!3188755 () Bool)

(assert (=> start!539288 e!3188755))

(declare-fun condSetEmpty!29882 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7090))

(assert (=> start!539288 (= condSetEmpty!29882 (= baseZ!46 ((as const (Array Context!7090 Bool)) false)))))

(declare-fun setRes!29881 () Bool)

(assert (=> start!539288 setRes!29881))

(declare-fun e!3188747 () Bool)

(assert (=> start!539288 e!3188747))

(declare-fun tp!1426556 () Bool)

(declare-fun e!3188751 () Bool)

(declare-fun setNonEmpty!29881 () Bool)

(declare-fun setElem!29881 () Context!7090)

(declare-fun inv!78583 (Context!7090) Bool)

(assert (=> setNonEmpty!29881 (= setRes!29882 (and tp!1426556 (inv!78583 setElem!29881) e!3188751))))

(declare-fun setRest!29881 () (InoxSet Context!7090))

(assert (=> setNonEmpty!29881 (= z!4463 ((_ map or) (store ((as const (Array Context!7090 Bool)) false) setElem!29881 true) setRest!29881))))

(declare-fun b!5112721 () Bool)

(declare-fun tp_is_empty!37595 () Bool)

(declare-fun tp!1426553 () Bool)

(assert (=> b!5112721 (= e!3188744 (and tp_is_empty!37595 tp!1426553))))

(declare-fun setIsEmpty!29881 () Bool)

(assert (=> setIsEmpty!29881 setRes!29882))

(declare-fun setIsEmpty!29882 () Bool)

(assert (=> setIsEmpty!29882 setRes!29881))

(declare-fun b!5112722 () Bool)

(declare-fun e!3188752 () Bool)

(declare-fun e!3188754 () Bool)

(assert (=> b!5112722 (= e!3188752 e!3188754)))

(declare-fun res!2176353 () Bool)

(assert (=> b!5112722 (=> res!2176353 e!3188754)))

(declare-fun lt!2105904 () List!59211)

(assert (=> b!5112722 (= res!2176353 (not (= lt!2105904 input!5745)))))

(declare-fun lt!2105911 () List!59211)

(declare-fun lt!2105912 () List!59211)

(declare-fun ++!12986 (List!59211 List!59211) List!59211)

(assert (=> b!5112722 (= lt!2105904 (++!12986 (++!12986 testedP!265 lt!2105912) lt!2105911))))

(declare-fun b!5112723 () Bool)

(declare-fun res!2176354 () Bool)

(declare-fun e!3188749 () Bool)

(assert (=> b!5112723 (=> res!2176354 e!3188749)))

(declare-fun lt!2105908 () Int)

(declare-fun size!39467 (List!59211) Int)

(assert (=> b!5112723 (= res!2176354 (>= lt!2105908 (size!39467 input!5745)))))

(declare-fun b!5112724 () Bool)

(declare-fun e!3188745 () Bool)

(assert (=> b!5112724 (= e!3188754 e!3188745)))

(declare-fun res!2176347 () Bool)

(assert (=> b!5112724 (=> res!2176347 e!3188745)))

(declare-fun lt!2105902 () List!59211)

(assert (=> b!5112724 (= res!2176347 (not (= lt!2105902 input!5745)))))

(assert (=> b!5112724 (= lt!2105904 lt!2105902)))

(declare-fun lt!2105907 () List!59211)

(assert (=> b!5112724 (= lt!2105902 (++!12986 testedP!265 lt!2105907))))

(assert (=> b!5112724 (= lt!2105907 (++!12986 lt!2105912 lt!2105911))))

(declare-datatypes ((Unit!150197 0))(
  ( (Unit!150198) )
))
(declare-fun lt!2105910 () Unit!150197)

(declare-fun lemmaConcatAssociativity!2744 (List!59211 List!59211 List!59211) Unit!150197)

(assert (=> b!5112724 (= lt!2105910 (lemmaConcatAssociativity!2744 testedP!265 lt!2105912 lt!2105911))))

(declare-fun e!3188753 () Bool)

(declare-fun setElem!29882 () Context!7090)

(declare-fun setNonEmpty!29882 () Bool)

(declare-fun tp!1426554 () Bool)

(assert (=> setNonEmpty!29882 (= setRes!29881 (and tp!1426554 (inv!78583 setElem!29882) e!3188753))))

(declare-fun setRest!29882 () (InoxSet Context!7090))

(assert (=> setNonEmpty!29882 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7090 Bool)) false) setElem!29882 true) setRest!29882))))

(declare-fun b!5112725 () Bool)

(declare-fun e!3188748 () Bool)

(declare-fun lt!2105917 () List!59211)

(assert (=> b!5112725 (= e!3188748 (not (= lt!2105917 Nil!59087)))))

(declare-fun b!5112726 () Bool)

(declare-fun res!2176346 () Bool)

(assert (=> b!5112726 (=> res!2176346 e!3188749)))

(declare-fun lt!2105906 () Int)

(assert (=> b!5112726 (= res!2176346 (= lt!2105908 lt!2105906))))

(declare-fun b!5112727 () Bool)

(declare-fun res!2176356 () Bool)

(assert (=> b!5112727 (=> res!2176356 e!3188749)))

(declare-fun derivationZipper!60 ((InoxSet Context!7090) List!59211) (InoxSet Context!7090))

(assert (=> b!5112727 (= res!2176356 (not (= (derivationZipper!60 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5112728 () Bool)

(declare-fun res!2176352 () Bool)

(assert (=> b!5112728 (=> res!2176352 e!3188754)))

(assert (=> b!5112728 (= res!2176352 (not (= (++!12986 testedP!265 lt!2105917) input!5745)))))

(declare-fun b!5112729 () Bool)

(declare-fun res!2176357 () Bool)

(declare-fun e!3188750 () Bool)

(assert (=> b!5112729 (=> (not res!2176357) (not e!3188750))))

(declare-fun knownP!20 () List!59211)

(declare-fun matchZipper!829 ((InoxSet Context!7090) List!59211) Bool)

(assert (=> b!5112729 (= res!2176357 (matchZipper!829 baseZ!46 knownP!20))))

(declare-fun b!5112730 () Bool)

(assert (=> b!5112730 (= e!3188746 e!3188750)))

(declare-fun res!2176355 () Bool)

(assert (=> b!5112730 (=> (not res!2176355) (not e!3188750))))

(assert (=> b!5112730 (= res!2176355 (>= lt!2105906 lt!2105908))))

(assert (=> b!5112730 (= lt!2105908 (size!39467 testedP!265))))

(assert (=> b!5112730 (= lt!2105906 (size!39467 knownP!20))))

(declare-fun b!5112731 () Bool)

(declare-fun tp!1426555 () Bool)

(assert (=> b!5112731 (= e!3188747 (and tp_is_empty!37595 tp!1426555))))

(declare-fun b!5112732 () Bool)

(declare-fun res!2176350 () Bool)

(assert (=> b!5112732 (=> (not res!2176350) (not e!3188746))))

(assert (=> b!5112732 (= res!2176350 (isPrefix!5566 knownP!20 input!5745))))

(declare-fun b!5112733 () Bool)

(declare-fun tp!1426552 () Bool)

(assert (=> b!5112733 (= e!3188755 (and tp_is_empty!37595 tp!1426552))))

(declare-fun b!5112734 () Bool)

(assert (=> b!5112734 (= e!3188749 e!3188752)))

(declare-fun res!2176349 () Bool)

(assert (=> b!5112734 (=> res!2176349 e!3188752)))

(assert (=> b!5112734 (= res!2176349 (not (= (++!12986 knownP!20 lt!2105911) input!5745)))))

(declare-fun getSuffix!3240 (List!59211 List!59211) List!59211)

(assert (=> b!5112734 (= lt!2105911 (getSuffix!3240 input!5745 knownP!20))))

(declare-fun lt!2105915 () List!59211)

(declare-fun lt!2105913 () List!59211)

(assert (=> b!5112734 (= lt!2105915 (getSuffix!3240 knownP!20 lt!2105913))))

(assert (=> b!5112734 (isPrefix!5566 lt!2105913 knownP!20)))

(declare-fun lt!2105914 () Unit!150197)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!703 (List!59211 List!59211 List!59211) Unit!150197)

(assert (=> b!5112734 (= lt!2105914 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!703 knownP!20 lt!2105913 input!5745))))

(declare-fun lt!2105918 () C!28588)

(declare-fun derivationStepZipper!796 ((InoxSet Context!7090) C!28588) (InoxSet Context!7090))

(assert (=> b!5112734 (= (derivationZipper!60 baseZ!46 lt!2105913) (derivationStepZipper!796 z!4463 lt!2105918))))

(declare-fun lt!2105905 () Unit!150197)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!21 ((InoxSet Context!7090) (InoxSet Context!7090) List!59211 C!28588) Unit!150197)

(assert (=> b!5112734 (= lt!2105905 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!21 baseZ!46 z!4463 testedP!265 lt!2105918))))

(assert (=> b!5112734 (isPrefix!5566 lt!2105913 input!5745)))

(declare-fun lt!2105909 () Unit!150197)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!956 (List!59211 List!59211) Unit!150197)

(assert (=> b!5112734 (= lt!2105909 (lemmaAddHeadSuffixToPrefixStillPrefix!956 testedP!265 input!5745))))

(assert (=> b!5112734 (= lt!2105913 (++!12986 testedP!265 (Cons!59087 lt!2105918 Nil!59087)))))

(declare-fun head!10889 (List!59211) C!28588)

(assert (=> b!5112734 (= lt!2105918 (head!10889 lt!2105917))))

(assert (=> b!5112734 (= lt!2105917 (getSuffix!3240 input!5745 testedP!265))))

(declare-fun b!5112735 () Bool)

(declare-fun tp!1426551 () Bool)

(assert (=> b!5112735 (= e!3188753 tp!1426551)))

(declare-fun b!5112736 () Bool)

(declare-fun res!2176351 () Bool)

(assert (=> b!5112736 (=> res!2176351 e!3188749)))

(declare-fun lostCauseZipper!1047 ((InoxSet Context!7090)) Bool)

(assert (=> b!5112736 (= res!2176351 (lostCauseZipper!1047 z!4463))))

(declare-fun b!5112737 () Bool)

(assert (=> b!5112737 (= e!3188745 e!3188748)))

(declare-fun res!2176358 () Bool)

(assert (=> b!5112737 (=> res!2176358 e!3188748)))

(assert (=> b!5112737 (= res!2176358 (not (= (head!10889 lt!2105912) lt!2105918)))))

(assert (=> b!5112737 (= lt!2105907 lt!2105917)))

(declare-fun lt!2105916 () Unit!150197)

(declare-fun lemmaSamePrefixThenSameSuffix!2612 (List!59211 List!59211 List!59211 List!59211 List!59211) Unit!150197)

(assert (=> b!5112737 (= lt!2105916 (lemmaSamePrefixThenSameSuffix!2612 testedP!265 lt!2105907 testedP!265 lt!2105917 input!5745))))

(declare-fun b!5112738 () Bool)

(assert (=> b!5112738 (= e!3188750 (not e!3188749))))

(declare-fun res!2176345 () Bool)

(assert (=> b!5112738 (=> res!2176345 e!3188749)))

(assert (=> b!5112738 (= res!2176345 (not (matchZipper!829 z!4463 lt!2105912)))))

(assert (=> b!5112738 (= lt!2105912 (getSuffix!3240 knownP!20 testedP!265))))

(assert (=> b!5112738 (isPrefix!5566 testedP!265 knownP!20)))

(declare-fun lt!2105903 () Unit!150197)

(assert (=> b!5112738 (= lt!2105903 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!703 knownP!20 testedP!265 input!5745))))

(declare-fun b!5112739 () Bool)

(declare-fun tp!1426557 () Bool)

(assert (=> b!5112739 (= e!3188751 tp!1426557)))

(assert (= (and start!539288 res!2176348) b!5112732))

(assert (= (and b!5112732 res!2176350) b!5112730))

(assert (= (and b!5112730 res!2176355) b!5112729))

(assert (= (and b!5112729 res!2176357) b!5112738))

(assert (= (and b!5112738 (not res!2176345)) b!5112727))

(assert (= (and b!5112727 (not res!2176356)) b!5112736))

(assert (= (and b!5112736 (not res!2176351)) b!5112726))

(assert (= (and b!5112726 (not res!2176346)) b!5112723))

(assert (= (and b!5112723 (not res!2176354)) b!5112734))

(assert (= (and b!5112734 (not res!2176349)) b!5112722))

(assert (= (and b!5112722 (not res!2176353)) b!5112728))

(assert (= (and b!5112728 (not res!2176352)) b!5112724))

(assert (= (and b!5112724 (not res!2176347)) b!5112737))

(assert (= (and b!5112737 (not res!2176358)) b!5112725))

(get-info :version)

(assert (= (and start!539288 ((_ is Cons!59087) input!5745)) b!5112721))

(assert (= (and start!539288 condSetEmpty!29881) setIsEmpty!29881))

(assert (= (and start!539288 (not condSetEmpty!29881)) setNonEmpty!29881))

(assert (= setNonEmpty!29881 b!5112739))

(assert (= (and start!539288 ((_ is Cons!59087) testedP!265)) b!5112733))

(assert (= (and start!539288 condSetEmpty!29882) setIsEmpty!29882))

(assert (= (and start!539288 (not condSetEmpty!29882)) setNonEmpty!29882))

(assert (= setNonEmpty!29882 b!5112735))

(assert (= (and start!539288 ((_ is Cons!59087) knownP!20)) b!5112731))

(declare-fun m!6170632 () Bool)

(assert (=> b!5112738 m!6170632))

(declare-fun m!6170634 () Bool)

(assert (=> b!5112738 m!6170634))

(declare-fun m!6170636 () Bool)

(assert (=> b!5112738 m!6170636))

(declare-fun m!6170638 () Bool)

(assert (=> b!5112738 m!6170638))

(declare-fun m!6170640 () Bool)

(assert (=> setNonEmpty!29882 m!6170640))

(declare-fun m!6170642 () Bool)

(assert (=> b!5112734 m!6170642))

(declare-fun m!6170644 () Bool)

(assert (=> b!5112734 m!6170644))

(declare-fun m!6170646 () Bool)

(assert (=> b!5112734 m!6170646))

(declare-fun m!6170648 () Bool)

(assert (=> b!5112734 m!6170648))

(declare-fun m!6170650 () Bool)

(assert (=> b!5112734 m!6170650))

(declare-fun m!6170652 () Bool)

(assert (=> b!5112734 m!6170652))

(declare-fun m!6170654 () Bool)

(assert (=> b!5112734 m!6170654))

(declare-fun m!6170656 () Bool)

(assert (=> b!5112734 m!6170656))

(declare-fun m!6170658 () Bool)

(assert (=> b!5112734 m!6170658))

(declare-fun m!6170660 () Bool)

(assert (=> b!5112734 m!6170660))

(declare-fun m!6170662 () Bool)

(assert (=> b!5112734 m!6170662))

(declare-fun m!6170664 () Bool)

(assert (=> b!5112734 m!6170664))

(declare-fun m!6170666 () Bool)

(assert (=> b!5112734 m!6170666))

(declare-fun m!6170668 () Bool)

(assert (=> b!5112723 m!6170668))

(declare-fun m!6170670 () Bool)

(assert (=> b!5112732 m!6170670))

(declare-fun m!6170672 () Bool)

(assert (=> b!5112730 m!6170672))

(declare-fun m!6170674 () Bool)

(assert (=> b!5112730 m!6170674))

(declare-fun m!6170676 () Bool)

(assert (=> b!5112737 m!6170676))

(declare-fun m!6170678 () Bool)

(assert (=> b!5112737 m!6170678))

(declare-fun m!6170680 () Bool)

(assert (=> b!5112728 m!6170680))

(declare-fun m!6170682 () Bool)

(assert (=> setNonEmpty!29881 m!6170682))

(declare-fun m!6170684 () Bool)

(assert (=> start!539288 m!6170684))

(declare-fun m!6170686 () Bool)

(assert (=> b!5112727 m!6170686))

(declare-fun m!6170688 () Bool)

(assert (=> b!5112729 m!6170688))

(declare-fun m!6170690 () Bool)

(assert (=> b!5112724 m!6170690))

(declare-fun m!6170692 () Bool)

(assert (=> b!5112724 m!6170692))

(declare-fun m!6170694 () Bool)

(assert (=> b!5112724 m!6170694))

(declare-fun m!6170696 () Bool)

(assert (=> b!5112722 m!6170696))

(assert (=> b!5112722 m!6170696))

(declare-fun m!6170698 () Bool)

(assert (=> b!5112722 m!6170698))

(declare-fun m!6170700 () Bool)

(assert (=> b!5112736 m!6170700))

(check-sat (not b!5112735) (not b!5112733) tp_is_empty!37595 (not b!5112724) (not b!5112738) (not start!539288) (not setNonEmpty!29882) (not b!5112739) (not b!5112729) (not b!5112736) (not setNonEmpty!29881) (not b!5112727) (not b!5112722) (not b!5112737) (not b!5112730) (not b!5112728) (not b!5112732) (not b!5112721) (not b!5112731) (not b!5112723) (not b!5112734))
(check-sat)
(get-model)

(declare-fun b!5112750 () Bool)

(declare-fun res!2176363 () Bool)

(declare-fun e!3188761 () Bool)

(assert (=> b!5112750 (=> (not res!2176363) (not e!3188761))))

(declare-fun lt!2105921 () List!59211)

(assert (=> b!5112750 (= res!2176363 (= (size!39467 lt!2105921) (+ (size!39467 testedP!265) (size!39467 lt!2105917))))))

(declare-fun b!5112748 () Bool)

(declare-fun e!3188760 () List!59211)

(assert (=> b!5112748 (= e!3188760 lt!2105917)))

(declare-fun d!1652284 () Bool)

(assert (=> d!1652284 e!3188761))

(declare-fun res!2176364 () Bool)

(assert (=> d!1652284 (=> (not res!2176364) (not e!3188761))))

(declare-fun content!10501 (List!59211) (InoxSet C!28588))

(assert (=> d!1652284 (= res!2176364 (= (content!10501 lt!2105921) ((_ map or) (content!10501 testedP!265) (content!10501 lt!2105917))))))

(assert (=> d!1652284 (= lt!2105921 e!3188760)))

(declare-fun c!878390 () Bool)

(assert (=> d!1652284 (= c!878390 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652284 (= (++!12986 testedP!265 lt!2105917) lt!2105921)))

(declare-fun b!5112749 () Bool)

(assert (=> b!5112749 (= e!3188760 (Cons!59087 (h!65535 testedP!265) (++!12986 (t!372212 testedP!265) lt!2105917)))))

(declare-fun b!5112751 () Bool)

(assert (=> b!5112751 (= e!3188761 (or (not (= lt!2105917 Nil!59087)) (= lt!2105921 testedP!265)))))

(assert (= (and d!1652284 c!878390) b!5112748))

(assert (= (and d!1652284 (not c!878390)) b!5112749))

(assert (= (and d!1652284 res!2176364) b!5112750))

(assert (= (and b!5112750 res!2176363) b!5112751))

(declare-fun m!6170702 () Bool)

(assert (=> b!5112750 m!6170702))

(assert (=> b!5112750 m!6170672))

(declare-fun m!6170704 () Bool)

(assert (=> b!5112750 m!6170704))

(declare-fun m!6170706 () Bool)

(assert (=> d!1652284 m!6170706))

(declare-fun m!6170708 () Bool)

(assert (=> d!1652284 m!6170708))

(declare-fun m!6170710 () Bool)

(assert (=> d!1652284 m!6170710))

(declare-fun m!6170712 () Bool)

(assert (=> b!5112749 m!6170712))

(assert (=> b!5112728 d!1652284))

(declare-fun d!1652286 () Bool)

(declare-fun e!3188769 () Bool)

(assert (=> d!1652286 e!3188769))

(declare-fun res!2176376 () Bool)

(assert (=> d!1652286 (=> res!2176376 e!3188769)))

(declare-fun lt!2105924 () Bool)

(assert (=> d!1652286 (= res!2176376 (not lt!2105924))))

(declare-fun e!3188770 () Bool)

(assert (=> d!1652286 (= lt!2105924 e!3188770)))

(declare-fun res!2176374 () Bool)

(assert (=> d!1652286 (=> res!2176374 e!3188770)))

(assert (=> d!1652286 (= res!2176374 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652286 (= (isPrefix!5566 testedP!265 input!5745) lt!2105924)))

(declare-fun b!5112762 () Bool)

(declare-fun e!3188768 () Bool)

(declare-fun tail!10030 (List!59211) List!59211)

(assert (=> b!5112762 (= e!3188768 (isPrefix!5566 (tail!10030 testedP!265) (tail!10030 input!5745)))))

(declare-fun b!5112761 () Bool)

(declare-fun res!2176373 () Bool)

(assert (=> b!5112761 (=> (not res!2176373) (not e!3188768))))

(assert (=> b!5112761 (= res!2176373 (= (head!10889 testedP!265) (head!10889 input!5745)))))

(declare-fun b!5112760 () Bool)

(assert (=> b!5112760 (= e!3188770 e!3188768)))

(declare-fun res!2176375 () Bool)

(assert (=> b!5112760 (=> (not res!2176375) (not e!3188768))))

(assert (=> b!5112760 (= res!2176375 (not ((_ is Nil!59087) input!5745)))))

(declare-fun b!5112763 () Bool)

(assert (=> b!5112763 (= e!3188769 (>= (size!39467 input!5745) (size!39467 testedP!265)))))

(assert (= (and d!1652286 (not res!2176374)) b!5112760))

(assert (= (and b!5112760 res!2176375) b!5112761))

(assert (= (and b!5112761 res!2176373) b!5112762))

(assert (= (and d!1652286 (not res!2176376)) b!5112763))

(declare-fun m!6170714 () Bool)

(assert (=> b!5112762 m!6170714))

(declare-fun m!6170716 () Bool)

(assert (=> b!5112762 m!6170716))

(assert (=> b!5112762 m!6170714))

(assert (=> b!5112762 m!6170716))

(declare-fun m!6170718 () Bool)

(assert (=> b!5112762 m!6170718))

(declare-fun m!6170720 () Bool)

(assert (=> b!5112761 m!6170720))

(declare-fun m!6170722 () Bool)

(assert (=> b!5112761 m!6170722))

(assert (=> b!5112763 m!6170668))

(assert (=> b!5112763 m!6170672))

(assert (=> start!539288 d!1652286))

(declare-fun d!1652290 () Bool)

(declare-fun c!878393 () Bool)

(declare-fun isEmpty!31874 (List!59211) Bool)

(assert (=> d!1652290 (= c!878393 (isEmpty!31874 knownP!20))))

(declare-fun e!3188785 () Bool)

(assert (=> d!1652290 (= (matchZipper!829 baseZ!46 knownP!20) e!3188785)))

(declare-fun b!5112784 () Bool)

(declare-fun nullableZipper!997 ((InoxSet Context!7090)) Bool)

(assert (=> b!5112784 (= e!3188785 (nullableZipper!997 baseZ!46))))

(declare-fun b!5112785 () Bool)

(assert (=> b!5112785 (= e!3188785 (matchZipper!829 (derivationStepZipper!796 baseZ!46 (head!10889 knownP!20)) (tail!10030 knownP!20)))))

(assert (= (and d!1652290 c!878393) b!5112784))

(assert (= (and d!1652290 (not c!878393)) b!5112785))

(declare-fun m!6170740 () Bool)

(assert (=> d!1652290 m!6170740))

(declare-fun m!6170742 () Bool)

(assert (=> b!5112784 m!6170742))

(declare-fun m!6170744 () Bool)

(assert (=> b!5112785 m!6170744))

(assert (=> b!5112785 m!6170744))

(declare-fun m!6170746 () Bool)

(assert (=> b!5112785 m!6170746))

(declare-fun m!6170748 () Bool)

(assert (=> b!5112785 m!6170748))

(assert (=> b!5112785 m!6170746))

(assert (=> b!5112785 m!6170748))

(declare-fun m!6170750 () Bool)

(assert (=> b!5112785 m!6170750))

(assert (=> b!5112729 d!1652290))

(declare-fun d!1652296 () Bool)

(declare-fun lt!2105934 () Int)

(assert (=> d!1652296 (>= lt!2105934 0)))

(declare-fun e!3188794 () Int)

(assert (=> d!1652296 (= lt!2105934 e!3188794)))

(declare-fun c!878399 () Bool)

(assert (=> d!1652296 (= c!878399 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652296 (= (size!39467 testedP!265) lt!2105934)))

(declare-fun b!5112802 () Bool)

(assert (=> b!5112802 (= e!3188794 0)))

(declare-fun b!5112803 () Bool)

(assert (=> b!5112803 (= e!3188794 (+ 1 (size!39467 (t!372212 testedP!265))))))

(assert (= (and d!1652296 c!878399) b!5112802))

(assert (= (and d!1652296 (not c!878399)) b!5112803))

(declare-fun m!6170764 () Bool)

(assert (=> b!5112803 m!6170764))

(assert (=> b!5112730 d!1652296))

(declare-fun d!1652300 () Bool)

(declare-fun lt!2105935 () Int)

(assert (=> d!1652300 (>= lt!2105935 0)))

(declare-fun e!3188795 () Int)

(assert (=> d!1652300 (= lt!2105935 e!3188795)))

(declare-fun c!878400 () Bool)

(assert (=> d!1652300 (= c!878400 ((_ is Nil!59087) knownP!20))))

(assert (=> d!1652300 (= (size!39467 knownP!20) lt!2105935)))

(declare-fun b!5112804 () Bool)

(assert (=> b!5112804 (= e!3188795 0)))

(declare-fun b!5112805 () Bool)

(assert (=> b!5112805 (= e!3188795 (+ 1 (size!39467 (t!372212 knownP!20))))))

(assert (= (and d!1652300 c!878400) b!5112804))

(assert (= (and d!1652300 (not c!878400)) b!5112805))

(declare-fun m!6170766 () Bool)

(assert (=> b!5112805 m!6170766))

(assert (=> b!5112730 d!1652300))

(declare-fun b!5112808 () Bool)

(declare-fun res!2176399 () Bool)

(declare-fun e!3188797 () Bool)

(assert (=> b!5112808 (=> (not res!2176399) (not e!3188797))))

(declare-fun lt!2105936 () List!59211)

(assert (=> b!5112808 (= res!2176399 (= (size!39467 lt!2105936) (+ (size!39467 (++!12986 testedP!265 lt!2105912)) (size!39467 lt!2105911))))))

(declare-fun b!5112806 () Bool)

(declare-fun e!3188796 () List!59211)

(assert (=> b!5112806 (= e!3188796 lt!2105911)))

(declare-fun d!1652302 () Bool)

(assert (=> d!1652302 e!3188797))

(declare-fun res!2176400 () Bool)

(assert (=> d!1652302 (=> (not res!2176400) (not e!3188797))))

(assert (=> d!1652302 (= res!2176400 (= (content!10501 lt!2105936) ((_ map or) (content!10501 (++!12986 testedP!265 lt!2105912)) (content!10501 lt!2105911))))))

(assert (=> d!1652302 (= lt!2105936 e!3188796)))

(declare-fun c!878401 () Bool)

(assert (=> d!1652302 (= c!878401 ((_ is Nil!59087) (++!12986 testedP!265 lt!2105912)))))

(assert (=> d!1652302 (= (++!12986 (++!12986 testedP!265 lt!2105912) lt!2105911) lt!2105936)))

(declare-fun b!5112807 () Bool)

(assert (=> b!5112807 (= e!3188796 (Cons!59087 (h!65535 (++!12986 testedP!265 lt!2105912)) (++!12986 (t!372212 (++!12986 testedP!265 lt!2105912)) lt!2105911)))))

(declare-fun b!5112809 () Bool)

(assert (=> b!5112809 (= e!3188797 (or (not (= lt!2105911 Nil!59087)) (= lt!2105936 (++!12986 testedP!265 lt!2105912))))))

(assert (= (and d!1652302 c!878401) b!5112806))

(assert (= (and d!1652302 (not c!878401)) b!5112807))

(assert (= (and d!1652302 res!2176400) b!5112808))

(assert (= (and b!5112808 res!2176399) b!5112809))

(declare-fun m!6170768 () Bool)

(assert (=> b!5112808 m!6170768))

(assert (=> b!5112808 m!6170696))

(declare-fun m!6170770 () Bool)

(assert (=> b!5112808 m!6170770))

(declare-fun m!6170772 () Bool)

(assert (=> b!5112808 m!6170772))

(declare-fun m!6170774 () Bool)

(assert (=> d!1652302 m!6170774))

(assert (=> d!1652302 m!6170696))

(declare-fun m!6170776 () Bool)

(assert (=> d!1652302 m!6170776))

(declare-fun m!6170778 () Bool)

(assert (=> d!1652302 m!6170778))

(declare-fun m!6170780 () Bool)

(assert (=> b!5112807 m!6170780))

(assert (=> b!5112722 d!1652302))

(declare-fun b!5112816 () Bool)

(declare-fun res!2176401 () Bool)

(declare-fun e!3188801 () Bool)

(assert (=> b!5112816 (=> (not res!2176401) (not e!3188801))))

(declare-fun lt!2105939 () List!59211)

(assert (=> b!5112816 (= res!2176401 (= (size!39467 lt!2105939) (+ (size!39467 testedP!265) (size!39467 lt!2105912))))))

(declare-fun b!5112814 () Bool)

(declare-fun e!3188800 () List!59211)

(assert (=> b!5112814 (= e!3188800 lt!2105912)))

(declare-fun d!1652304 () Bool)

(assert (=> d!1652304 e!3188801))

(declare-fun res!2176402 () Bool)

(assert (=> d!1652304 (=> (not res!2176402) (not e!3188801))))

(assert (=> d!1652304 (= res!2176402 (= (content!10501 lt!2105939) ((_ map or) (content!10501 testedP!265) (content!10501 lt!2105912))))))

(assert (=> d!1652304 (= lt!2105939 e!3188800)))

(declare-fun c!878404 () Bool)

(assert (=> d!1652304 (= c!878404 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652304 (= (++!12986 testedP!265 lt!2105912) lt!2105939)))

(declare-fun b!5112815 () Bool)

(assert (=> b!5112815 (= e!3188800 (Cons!59087 (h!65535 testedP!265) (++!12986 (t!372212 testedP!265) lt!2105912)))))

(declare-fun b!5112817 () Bool)

(assert (=> b!5112817 (= e!3188801 (or (not (= lt!2105912 Nil!59087)) (= lt!2105939 testedP!265)))))

(assert (= (and d!1652304 c!878404) b!5112814))

(assert (= (and d!1652304 (not c!878404)) b!5112815))

(assert (= (and d!1652304 res!2176402) b!5112816))

(assert (= (and b!5112816 res!2176401) b!5112817))

(declare-fun m!6170782 () Bool)

(assert (=> b!5112816 m!6170782))

(assert (=> b!5112816 m!6170672))

(declare-fun m!6170784 () Bool)

(assert (=> b!5112816 m!6170784))

(declare-fun m!6170786 () Bool)

(assert (=> d!1652304 m!6170786))

(assert (=> d!1652304 m!6170708))

(declare-fun m!6170788 () Bool)

(assert (=> d!1652304 m!6170788))

(declare-fun m!6170790 () Bool)

(assert (=> b!5112815 m!6170790))

(assert (=> b!5112722 d!1652304))

(declare-fun d!1652306 () Bool)

(declare-fun e!3188803 () Bool)

(assert (=> d!1652306 e!3188803))

(declare-fun res!2176406 () Bool)

(assert (=> d!1652306 (=> res!2176406 e!3188803)))

(declare-fun lt!2105940 () Bool)

(assert (=> d!1652306 (= res!2176406 (not lt!2105940))))

(declare-fun e!3188804 () Bool)

(assert (=> d!1652306 (= lt!2105940 e!3188804)))

(declare-fun res!2176404 () Bool)

(assert (=> d!1652306 (=> res!2176404 e!3188804)))

(assert (=> d!1652306 (= res!2176404 ((_ is Nil!59087) knownP!20))))

(assert (=> d!1652306 (= (isPrefix!5566 knownP!20 input!5745) lt!2105940)))

(declare-fun b!5112820 () Bool)

(declare-fun e!3188802 () Bool)

(assert (=> b!5112820 (= e!3188802 (isPrefix!5566 (tail!10030 knownP!20) (tail!10030 input!5745)))))

(declare-fun b!5112819 () Bool)

(declare-fun res!2176403 () Bool)

(assert (=> b!5112819 (=> (not res!2176403) (not e!3188802))))

(assert (=> b!5112819 (= res!2176403 (= (head!10889 knownP!20) (head!10889 input!5745)))))

(declare-fun b!5112818 () Bool)

(assert (=> b!5112818 (= e!3188804 e!3188802)))

(declare-fun res!2176405 () Bool)

(assert (=> b!5112818 (=> (not res!2176405) (not e!3188802))))

(assert (=> b!5112818 (= res!2176405 (not ((_ is Nil!59087) input!5745)))))

(declare-fun b!5112821 () Bool)

(assert (=> b!5112821 (= e!3188803 (>= (size!39467 input!5745) (size!39467 knownP!20)))))

(assert (= (and d!1652306 (not res!2176404)) b!5112818))

(assert (= (and b!5112818 res!2176405) b!5112819))

(assert (= (and b!5112819 res!2176403) b!5112820))

(assert (= (and d!1652306 (not res!2176406)) b!5112821))

(assert (=> b!5112820 m!6170748))

(assert (=> b!5112820 m!6170716))

(assert (=> b!5112820 m!6170748))

(assert (=> b!5112820 m!6170716))

(declare-fun m!6170796 () Bool)

(assert (=> b!5112820 m!6170796))

(assert (=> b!5112819 m!6170744))

(assert (=> b!5112819 m!6170722))

(assert (=> b!5112821 m!6170668))

(assert (=> b!5112821 m!6170674))

(assert (=> b!5112732 d!1652306))

(declare-fun d!1652310 () Bool)

(declare-fun lt!2105942 () Int)

(assert (=> d!1652310 (>= lt!2105942 0)))

(declare-fun e!3188806 () Int)

(assert (=> d!1652310 (= lt!2105942 e!3188806)))

(declare-fun c!878406 () Bool)

(assert (=> d!1652310 (= c!878406 ((_ is Nil!59087) input!5745))))

(assert (=> d!1652310 (= (size!39467 input!5745) lt!2105942)))

(declare-fun b!5112824 () Bool)

(assert (=> b!5112824 (= e!3188806 0)))

(declare-fun b!5112825 () Bool)

(assert (=> b!5112825 (= e!3188806 (+ 1 (size!39467 (t!372212 input!5745))))))

(assert (= (and d!1652310 c!878406) b!5112824))

(assert (= (and d!1652310 (not c!878406)) b!5112825))

(declare-fun m!6170798 () Bool)

(assert (=> b!5112825 m!6170798))

(assert (=> b!5112723 d!1652310))

(declare-fun b!5112828 () Bool)

(declare-fun res!2176407 () Bool)

(declare-fun e!3188808 () Bool)

(assert (=> b!5112828 (=> (not res!2176407) (not e!3188808))))

(declare-fun lt!2105943 () List!59211)

(assert (=> b!5112828 (= res!2176407 (= (size!39467 lt!2105943) (+ (size!39467 testedP!265) (size!39467 lt!2105907))))))

(declare-fun b!5112826 () Bool)

(declare-fun e!3188807 () List!59211)

(assert (=> b!5112826 (= e!3188807 lt!2105907)))

(declare-fun d!1652312 () Bool)

(assert (=> d!1652312 e!3188808))

(declare-fun res!2176408 () Bool)

(assert (=> d!1652312 (=> (not res!2176408) (not e!3188808))))

(assert (=> d!1652312 (= res!2176408 (= (content!10501 lt!2105943) ((_ map or) (content!10501 testedP!265) (content!10501 lt!2105907))))))

(assert (=> d!1652312 (= lt!2105943 e!3188807)))

(declare-fun c!878407 () Bool)

(assert (=> d!1652312 (= c!878407 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652312 (= (++!12986 testedP!265 lt!2105907) lt!2105943)))

(declare-fun b!5112827 () Bool)

(assert (=> b!5112827 (= e!3188807 (Cons!59087 (h!65535 testedP!265) (++!12986 (t!372212 testedP!265) lt!2105907)))))

(declare-fun b!5112829 () Bool)

(assert (=> b!5112829 (= e!3188808 (or (not (= lt!2105907 Nil!59087)) (= lt!2105943 testedP!265)))))

(assert (= (and d!1652312 c!878407) b!5112826))

(assert (= (and d!1652312 (not c!878407)) b!5112827))

(assert (= (and d!1652312 res!2176408) b!5112828))

(assert (= (and b!5112828 res!2176407) b!5112829))

(declare-fun m!6170800 () Bool)

(assert (=> b!5112828 m!6170800))

(assert (=> b!5112828 m!6170672))

(declare-fun m!6170802 () Bool)

(assert (=> b!5112828 m!6170802))

(declare-fun m!6170804 () Bool)

(assert (=> d!1652312 m!6170804))

(assert (=> d!1652312 m!6170708))

(declare-fun m!6170806 () Bool)

(assert (=> d!1652312 m!6170806))

(declare-fun m!6170808 () Bool)

(assert (=> b!5112827 m!6170808))

(assert (=> b!5112724 d!1652312))

(declare-fun b!5112832 () Bool)

(declare-fun res!2176409 () Bool)

(declare-fun e!3188810 () Bool)

(assert (=> b!5112832 (=> (not res!2176409) (not e!3188810))))

(declare-fun lt!2105946 () List!59211)

(assert (=> b!5112832 (= res!2176409 (= (size!39467 lt!2105946) (+ (size!39467 lt!2105912) (size!39467 lt!2105911))))))

(declare-fun b!5112830 () Bool)

(declare-fun e!3188809 () List!59211)

(assert (=> b!5112830 (= e!3188809 lt!2105911)))

(declare-fun d!1652314 () Bool)

(assert (=> d!1652314 e!3188810))

(declare-fun res!2176410 () Bool)

(assert (=> d!1652314 (=> (not res!2176410) (not e!3188810))))

(assert (=> d!1652314 (= res!2176410 (= (content!10501 lt!2105946) ((_ map or) (content!10501 lt!2105912) (content!10501 lt!2105911))))))

(assert (=> d!1652314 (= lt!2105946 e!3188809)))

(declare-fun c!878408 () Bool)

(assert (=> d!1652314 (= c!878408 ((_ is Nil!59087) lt!2105912))))

(assert (=> d!1652314 (= (++!12986 lt!2105912 lt!2105911) lt!2105946)))

(declare-fun b!5112831 () Bool)

(assert (=> b!5112831 (= e!3188809 (Cons!59087 (h!65535 lt!2105912) (++!12986 (t!372212 lt!2105912) lt!2105911)))))

(declare-fun b!5112833 () Bool)

(assert (=> b!5112833 (= e!3188810 (or (not (= lt!2105911 Nil!59087)) (= lt!2105946 lt!2105912)))))

(assert (= (and d!1652314 c!878408) b!5112830))

(assert (= (and d!1652314 (not c!878408)) b!5112831))

(assert (= (and d!1652314 res!2176410) b!5112832))

(assert (= (and b!5112832 res!2176409) b!5112833))

(declare-fun m!6170812 () Bool)

(assert (=> b!5112832 m!6170812))

(assert (=> b!5112832 m!6170784))

(assert (=> b!5112832 m!6170772))

(declare-fun m!6170814 () Bool)

(assert (=> d!1652314 m!6170814))

(assert (=> d!1652314 m!6170788))

(assert (=> d!1652314 m!6170778))

(declare-fun m!6170816 () Bool)

(assert (=> b!5112831 m!6170816))

(assert (=> b!5112724 d!1652314))

(declare-fun d!1652318 () Bool)

(assert (=> d!1652318 (= (++!12986 (++!12986 testedP!265 lt!2105912) lt!2105911) (++!12986 testedP!265 (++!12986 lt!2105912 lt!2105911)))))

(declare-fun lt!2105953 () Unit!150197)

(declare-fun choose!37501 (List!59211 List!59211 List!59211) Unit!150197)

(assert (=> d!1652318 (= lt!2105953 (choose!37501 testedP!265 lt!2105912 lt!2105911))))

(assert (=> d!1652318 (= (lemmaConcatAssociativity!2744 testedP!265 lt!2105912 lt!2105911) lt!2105953)))

(declare-fun bs!1192155 () Bool)

(assert (= bs!1192155 d!1652318))

(assert (=> bs!1192155 m!6170696))

(assert (=> bs!1192155 m!6170692))

(assert (=> bs!1192155 m!6170692))

(declare-fun m!6170824 () Bool)

(assert (=> bs!1192155 m!6170824))

(declare-fun m!6170826 () Bool)

(assert (=> bs!1192155 m!6170826))

(assert (=> bs!1192155 m!6170696))

(assert (=> bs!1192155 m!6170698))

(assert (=> b!5112724 d!1652318))

(declare-fun d!1652322 () Bool)

(declare-fun lt!2105964 () List!59211)

(assert (=> d!1652322 (= (++!12986 testedP!265 lt!2105964) input!5745)))

(declare-fun e!3188823 () List!59211)

(assert (=> d!1652322 (= lt!2105964 e!3188823)))

(declare-fun c!878415 () Bool)

(assert (=> d!1652322 (= c!878415 ((_ is Cons!59087) testedP!265))))

(assert (=> d!1652322 (>= (size!39467 input!5745) (size!39467 testedP!265))))

(assert (=> d!1652322 (= (getSuffix!3240 input!5745 testedP!265) lt!2105964)))

(declare-fun b!5112854 () Bool)

(assert (=> b!5112854 (= e!3188823 (getSuffix!3240 (tail!10030 input!5745) (t!372212 testedP!265)))))

(declare-fun b!5112855 () Bool)

(assert (=> b!5112855 (= e!3188823 input!5745)))

(assert (= (and d!1652322 c!878415) b!5112854))

(assert (= (and d!1652322 (not c!878415)) b!5112855))

(declare-fun m!6170862 () Bool)

(assert (=> d!1652322 m!6170862))

(assert (=> d!1652322 m!6170668))

(assert (=> d!1652322 m!6170672))

(assert (=> b!5112854 m!6170716))

(assert (=> b!5112854 m!6170716))

(declare-fun m!6170864 () Bool)

(assert (=> b!5112854 m!6170864))

(assert (=> b!5112734 d!1652322))

(declare-fun b!5112862 () Bool)

(declare-fun res!2176423 () Bool)

(declare-fun e!3188827 () Bool)

(assert (=> b!5112862 (=> (not res!2176423) (not e!3188827))))

(declare-fun lt!2105966 () List!59211)

(assert (=> b!5112862 (= res!2176423 (= (size!39467 lt!2105966) (+ (size!39467 knownP!20) (size!39467 lt!2105911))))))

(declare-fun b!5112860 () Bool)

(declare-fun e!3188826 () List!59211)

(assert (=> b!5112860 (= e!3188826 lt!2105911)))

(declare-fun d!1652336 () Bool)

(assert (=> d!1652336 e!3188827))

(declare-fun res!2176424 () Bool)

(assert (=> d!1652336 (=> (not res!2176424) (not e!3188827))))

(assert (=> d!1652336 (= res!2176424 (= (content!10501 lt!2105966) ((_ map or) (content!10501 knownP!20) (content!10501 lt!2105911))))))

(assert (=> d!1652336 (= lt!2105966 e!3188826)))

(declare-fun c!878417 () Bool)

(assert (=> d!1652336 (= c!878417 ((_ is Nil!59087) knownP!20))))

(assert (=> d!1652336 (= (++!12986 knownP!20 lt!2105911) lt!2105966)))

(declare-fun b!5112861 () Bool)

(assert (=> b!5112861 (= e!3188826 (Cons!59087 (h!65535 knownP!20) (++!12986 (t!372212 knownP!20) lt!2105911)))))

(declare-fun b!5112863 () Bool)

(assert (=> b!5112863 (= e!3188827 (or (not (= lt!2105911 Nil!59087)) (= lt!2105966 knownP!20)))))

(assert (= (and d!1652336 c!878417) b!5112860))

(assert (= (and d!1652336 (not c!878417)) b!5112861))

(assert (= (and d!1652336 res!2176424) b!5112862))

(assert (= (and b!5112862 res!2176423) b!5112863))

(declare-fun m!6170878 () Bool)

(assert (=> b!5112862 m!6170878))

(assert (=> b!5112862 m!6170674))

(assert (=> b!5112862 m!6170772))

(declare-fun m!6170880 () Bool)

(assert (=> d!1652336 m!6170880))

(declare-fun m!6170882 () Bool)

(assert (=> d!1652336 m!6170882))

(assert (=> d!1652336 m!6170778))

(declare-fun m!6170884 () Bool)

(assert (=> b!5112861 m!6170884))

(assert (=> b!5112734 d!1652336))

(declare-fun d!1652340 () Bool)

(declare-fun e!3188829 () Bool)

(assert (=> d!1652340 e!3188829))

(declare-fun res!2176428 () Bool)

(assert (=> d!1652340 (=> res!2176428 e!3188829)))

(declare-fun lt!2105967 () Bool)

(assert (=> d!1652340 (= res!2176428 (not lt!2105967))))

(declare-fun e!3188830 () Bool)

(assert (=> d!1652340 (= lt!2105967 e!3188830)))

(declare-fun res!2176426 () Bool)

(assert (=> d!1652340 (=> res!2176426 e!3188830)))

(assert (=> d!1652340 (= res!2176426 ((_ is Nil!59087) lt!2105913))))

(assert (=> d!1652340 (= (isPrefix!5566 lt!2105913 knownP!20) lt!2105967)))

(declare-fun b!5112866 () Bool)

(declare-fun e!3188828 () Bool)

(assert (=> b!5112866 (= e!3188828 (isPrefix!5566 (tail!10030 lt!2105913) (tail!10030 knownP!20)))))

(declare-fun b!5112865 () Bool)

(declare-fun res!2176425 () Bool)

(assert (=> b!5112865 (=> (not res!2176425) (not e!3188828))))

(assert (=> b!5112865 (= res!2176425 (= (head!10889 lt!2105913) (head!10889 knownP!20)))))

(declare-fun b!5112864 () Bool)

(assert (=> b!5112864 (= e!3188830 e!3188828)))

(declare-fun res!2176427 () Bool)

(assert (=> b!5112864 (=> (not res!2176427) (not e!3188828))))

(assert (=> b!5112864 (= res!2176427 (not ((_ is Nil!59087) knownP!20)))))

(declare-fun b!5112867 () Bool)

(assert (=> b!5112867 (= e!3188829 (>= (size!39467 knownP!20) (size!39467 lt!2105913)))))

(assert (= (and d!1652340 (not res!2176426)) b!5112864))

(assert (= (and b!5112864 res!2176427) b!5112865))

(assert (= (and b!5112865 res!2176425) b!5112866))

(assert (= (and d!1652340 (not res!2176428)) b!5112867))

(declare-fun m!6170886 () Bool)

(assert (=> b!5112866 m!6170886))

(assert (=> b!5112866 m!6170748))

(assert (=> b!5112866 m!6170886))

(assert (=> b!5112866 m!6170748))

(declare-fun m!6170888 () Bool)

(assert (=> b!5112866 m!6170888))

(declare-fun m!6170890 () Bool)

(assert (=> b!5112865 m!6170890))

(assert (=> b!5112865 m!6170744))

(assert (=> b!5112867 m!6170674))

(declare-fun m!6170892 () Bool)

(assert (=> b!5112867 m!6170892))

(assert (=> b!5112734 d!1652340))

(declare-fun d!1652342 () Bool)

(assert (=> d!1652342 (= (derivationZipper!60 baseZ!46 (++!12986 testedP!265 (Cons!59087 lt!2105918 Nil!59087))) (derivationStepZipper!796 z!4463 lt!2105918))))

(declare-fun lt!2105970 () Unit!150197)

(declare-fun choose!37502 ((InoxSet Context!7090) (InoxSet Context!7090) List!59211 C!28588) Unit!150197)

(assert (=> d!1652342 (= lt!2105970 (choose!37502 baseZ!46 z!4463 testedP!265 lt!2105918))))

(assert (=> d!1652342 (= (derivationZipper!60 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652342 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!21 baseZ!46 z!4463 testedP!265 lt!2105918) lt!2105970)))

(declare-fun bs!1192158 () Bool)

(assert (= bs!1192158 d!1652342))

(assert (=> bs!1192158 m!6170662))

(declare-fun m!6170894 () Bool)

(assert (=> bs!1192158 m!6170894))

(assert (=> bs!1192158 m!6170664))

(declare-fun m!6170896 () Bool)

(assert (=> bs!1192158 m!6170896))

(assert (=> bs!1192158 m!6170662))

(assert (=> bs!1192158 m!6170686))

(assert (=> b!5112734 d!1652342))

(declare-fun d!1652344 () Bool)

(declare-fun lt!2105971 () List!59211)

(assert (=> d!1652344 (= (++!12986 lt!2105913 lt!2105971) knownP!20)))

(declare-fun e!3188831 () List!59211)

(assert (=> d!1652344 (= lt!2105971 e!3188831)))

(declare-fun c!878421 () Bool)

(assert (=> d!1652344 (= c!878421 ((_ is Cons!59087) lt!2105913))))

(assert (=> d!1652344 (>= (size!39467 knownP!20) (size!39467 lt!2105913))))

(assert (=> d!1652344 (= (getSuffix!3240 knownP!20 lt!2105913) lt!2105971)))

(declare-fun b!5112868 () Bool)

(assert (=> b!5112868 (= e!3188831 (getSuffix!3240 (tail!10030 knownP!20) (t!372212 lt!2105913)))))

(declare-fun b!5112869 () Bool)

(assert (=> b!5112869 (= e!3188831 knownP!20)))

(assert (= (and d!1652344 c!878421) b!5112868))

(assert (= (and d!1652344 (not c!878421)) b!5112869))

(declare-fun m!6170898 () Bool)

(assert (=> d!1652344 m!6170898))

(assert (=> d!1652344 m!6170674))

(assert (=> d!1652344 m!6170892))

(assert (=> b!5112868 m!6170748))

(assert (=> b!5112868 m!6170748))

(declare-fun m!6170900 () Bool)

(assert (=> b!5112868 m!6170900))

(assert (=> b!5112734 d!1652344))

(declare-fun b!5112872 () Bool)

(declare-fun res!2176429 () Bool)

(declare-fun e!3188833 () Bool)

(assert (=> b!5112872 (=> (not res!2176429) (not e!3188833))))

(declare-fun lt!2105972 () List!59211)

(assert (=> b!5112872 (= res!2176429 (= (size!39467 lt!2105972) (+ (size!39467 testedP!265) (size!39467 (Cons!59087 lt!2105918 Nil!59087)))))))

(declare-fun b!5112870 () Bool)

(declare-fun e!3188832 () List!59211)

(assert (=> b!5112870 (= e!3188832 (Cons!59087 lt!2105918 Nil!59087))))

(declare-fun d!1652346 () Bool)

(assert (=> d!1652346 e!3188833))

(declare-fun res!2176430 () Bool)

(assert (=> d!1652346 (=> (not res!2176430) (not e!3188833))))

(assert (=> d!1652346 (= res!2176430 (= (content!10501 lt!2105972) ((_ map or) (content!10501 testedP!265) (content!10501 (Cons!59087 lt!2105918 Nil!59087)))))))

(assert (=> d!1652346 (= lt!2105972 e!3188832)))

(declare-fun c!878422 () Bool)

(assert (=> d!1652346 (= c!878422 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652346 (= (++!12986 testedP!265 (Cons!59087 lt!2105918 Nil!59087)) lt!2105972)))

(declare-fun b!5112871 () Bool)

(assert (=> b!5112871 (= e!3188832 (Cons!59087 (h!65535 testedP!265) (++!12986 (t!372212 testedP!265) (Cons!59087 lt!2105918 Nil!59087))))))

(declare-fun b!5112873 () Bool)

(assert (=> b!5112873 (= e!3188833 (or (not (= (Cons!59087 lt!2105918 Nil!59087) Nil!59087)) (= lt!2105972 testedP!265)))))

(assert (= (and d!1652346 c!878422) b!5112870))

(assert (= (and d!1652346 (not c!878422)) b!5112871))

(assert (= (and d!1652346 res!2176430) b!5112872))

(assert (= (and b!5112872 res!2176429) b!5112873))

(declare-fun m!6170902 () Bool)

(assert (=> b!5112872 m!6170902))

(assert (=> b!5112872 m!6170672))

(declare-fun m!6170904 () Bool)

(assert (=> b!5112872 m!6170904))

(declare-fun m!6170906 () Bool)

(assert (=> d!1652346 m!6170906))

(assert (=> d!1652346 m!6170708))

(declare-fun m!6170908 () Bool)

(assert (=> d!1652346 m!6170908))

(declare-fun m!6170910 () Bool)

(assert (=> b!5112871 m!6170910))

(assert (=> b!5112734 d!1652346))

(declare-fun d!1652348 () Bool)

(assert (=> d!1652348 (isPrefix!5566 lt!2105913 knownP!20)))

(declare-fun lt!2105975 () Unit!150197)

(declare-fun choose!37503 (List!59211 List!59211 List!59211) Unit!150197)

(assert (=> d!1652348 (= lt!2105975 (choose!37503 knownP!20 lt!2105913 input!5745))))

(assert (=> d!1652348 (isPrefix!5566 knownP!20 input!5745)))

(assert (=> d!1652348 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!703 knownP!20 lt!2105913 input!5745) lt!2105975)))

(declare-fun bs!1192159 () Bool)

(assert (= bs!1192159 d!1652348))

(assert (=> bs!1192159 m!6170646))

(declare-fun m!6170912 () Bool)

(assert (=> bs!1192159 m!6170912))

(assert (=> bs!1192159 m!6170670))

(assert (=> b!5112734 d!1652348))

(declare-fun d!1652350 () Bool)

(assert (=> d!1652350 (isPrefix!5566 (++!12986 testedP!265 (Cons!59087 (head!10889 (getSuffix!3240 input!5745 testedP!265)) Nil!59087)) input!5745)))

(declare-fun lt!2105978 () Unit!150197)

(declare-fun choose!37504 (List!59211 List!59211) Unit!150197)

(assert (=> d!1652350 (= lt!2105978 (choose!37504 testedP!265 input!5745))))

(assert (=> d!1652350 (isPrefix!5566 testedP!265 input!5745)))

(assert (=> d!1652350 (= (lemmaAddHeadSuffixToPrefixStillPrefix!956 testedP!265 input!5745) lt!2105978)))

(declare-fun bs!1192160 () Bool)

(assert (= bs!1192160 d!1652350))

(declare-fun m!6170914 () Bool)

(assert (=> bs!1192160 m!6170914))

(assert (=> bs!1192160 m!6170642))

(declare-fun m!6170916 () Bool)

(assert (=> bs!1192160 m!6170916))

(assert (=> bs!1192160 m!6170642))

(declare-fun m!6170918 () Bool)

(assert (=> bs!1192160 m!6170918))

(assert (=> bs!1192160 m!6170914))

(declare-fun m!6170920 () Bool)

(assert (=> bs!1192160 m!6170920))

(assert (=> bs!1192160 m!6170684))

(assert (=> b!5112734 d!1652350))

(declare-fun d!1652352 () Bool)

(declare-fun lt!2105979 () List!59211)

(assert (=> d!1652352 (= (++!12986 knownP!20 lt!2105979) input!5745)))

(declare-fun e!3188834 () List!59211)

(assert (=> d!1652352 (= lt!2105979 e!3188834)))

(declare-fun c!878423 () Bool)

(assert (=> d!1652352 (= c!878423 ((_ is Cons!59087) knownP!20))))

(assert (=> d!1652352 (>= (size!39467 input!5745) (size!39467 knownP!20))))

(assert (=> d!1652352 (= (getSuffix!3240 input!5745 knownP!20) lt!2105979)))

(declare-fun b!5112874 () Bool)

(assert (=> b!5112874 (= e!3188834 (getSuffix!3240 (tail!10030 input!5745) (t!372212 knownP!20)))))

(declare-fun b!5112875 () Bool)

(assert (=> b!5112875 (= e!3188834 input!5745)))

(assert (= (and d!1652352 c!878423) b!5112874))

(assert (= (and d!1652352 (not c!878423)) b!5112875))

(declare-fun m!6170922 () Bool)

(assert (=> d!1652352 m!6170922))

(assert (=> d!1652352 m!6170668))

(assert (=> d!1652352 m!6170674))

(assert (=> b!5112874 m!6170716))

(assert (=> b!5112874 m!6170716))

(declare-fun m!6170924 () Bool)

(assert (=> b!5112874 m!6170924))

(assert (=> b!5112734 d!1652352))

(declare-fun d!1652354 () Bool)

(declare-fun e!3188836 () Bool)

(assert (=> d!1652354 e!3188836))

(declare-fun res!2176434 () Bool)

(assert (=> d!1652354 (=> res!2176434 e!3188836)))

(declare-fun lt!2105980 () Bool)

(assert (=> d!1652354 (= res!2176434 (not lt!2105980))))

(declare-fun e!3188837 () Bool)

(assert (=> d!1652354 (= lt!2105980 e!3188837)))

(declare-fun res!2176432 () Bool)

(assert (=> d!1652354 (=> res!2176432 e!3188837)))

(assert (=> d!1652354 (= res!2176432 ((_ is Nil!59087) lt!2105913))))

(assert (=> d!1652354 (= (isPrefix!5566 lt!2105913 input!5745) lt!2105980)))

(declare-fun b!5112878 () Bool)

(declare-fun e!3188835 () Bool)

(assert (=> b!5112878 (= e!3188835 (isPrefix!5566 (tail!10030 lt!2105913) (tail!10030 input!5745)))))

(declare-fun b!5112877 () Bool)

(declare-fun res!2176431 () Bool)

(assert (=> b!5112877 (=> (not res!2176431) (not e!3188835))))

(assert (=> b!5112877 (= res!2176431 (= (head!10889 lt!2105913) (head!10889 input!5745)))))

(declare-fun b!5112876 () Bool)

(assert (=> b!5112876 (= e!3188837 e!3188835)))

(declare-fun res!2176433 () Bool)

(assert (=> b!5112876 (=> (not res!2176433) (not e!3188835))))

(assert (=> b!5112876 (= res!2176433 (not ((_ is Nil!59087) input!5745)))))

(declare-fun b!5112879 () Bool)

(assert (=> b!5112879 (= e!3188836 (>= (size!39467 input!5745) (size!39467 lt!2105913)))))

(assert (= (and d!1652354 (not res!2176432)) b!5112876))

(assert (= (and b!5112876 res!2176433) b!5112877))

(assert (= (and b!5112877 res!2176431) b!5112878))

(assert (= (and d!1652354 (not res!2176434)) b!5112879))

(assert (=> b!5112878 m!6170886))

(assert (=> b!5112878 m!6170716))

(assert (=> b!5112878 m!6170886))

(assert (=> b!5112878 m!6170716))

(declare-fun m!6170926 () Bool)

(assert (=> b!5112878 m!6170926))

(assert (=> b!5112877 m!6170890))

(assert (=> b!5112877 m!6170722))

(assert (=> b!5112879 m!6170668))

(assert (=> b!5112879 m!6170892))

(assert (=> b!5112734 d!1652354))

(declare-fun d!1652356 () Bool)

(declare-fun c!878426 () Bool)

(assert (=> d!1652356 (= c!878426 ((_ is Cons!59087) lt!2105913))))

(declare-fun e!3188840 () (InoxSet Context!7090))

(assert (=> d!1652356 (= (derivationZipper!60 baseZ!46 lt!2105913) e!3188840)))

(declare-fun b!5112884 () Bool)

(assert (=> b!5112884 (= e!3188840 (derivationZipper!60 (derivationStepZipper!796 baseZ!46 (h!65535 lt!2105913)) (t!372212 lt!2105913)))))

(declare-fun b!5112885 () Bool)

(assert (=> b!5112885 (= e!3188840 baseZ!46)))

(assert (= (and d!1652356 c!878426) b!5112884))

(assert (= (and d!1652356 (not c!878426)) b!5112885))

(declare-fun m!6170928 () Bool)

(assert (=> b!5112884 m!6170928))

(assert (=> b!5112884 m!6170928))

(declare-fun m!6170930 () Bool)

(assert (=> b!5112884 m!6170930))

(assert (=> b!5112734 d!1652356))

(declare-fun d!1652358 () Bool)

(assert (=> d!1652358 true))

(declare-fun lambda!250551 () Int)

(declare-fun flatMap!332 ((InoxSet Context!7090) Int) (InoxSet Context!7090))

(assert (=> d!1652358 (= (derivationStepZipper!796 z!4463 lt!2105918) (flatMap!332 z!4463 lambda!250551))))

(declare-fun bs!1192171 () Bool)

(assert (= bs!1192171 d!1652358))

(declare-fun m!6171038 () Bool)

(assert (=> bs!1192171 m!6171038))

(assert (=> b!5112734 d!1652358))

(declare-fun d!1652402 () Bool)

(assert (=> d!1652402 (= (head!10889 lt!2105917) (h!65535 lt!2105917))))

(assert (=> b!5112734 d!1652402))

(declare-fun d!1652404 () Bool)

(declare-fun lambda!250554 () Int)

(declare-fun forall!13551 (List!59212 Int) Bool)

(assert (=> d!1652404 (= (inv!78583 setElem!29882) (forall!13551 (exprs!4045 setElem!29882) lambda!250554))))

(declare-fun bs!1192172 () Bool)

(assert (= bs!1192172 d!1652404))

(declare-fun m!6171040 () Bool)

(assert (=> bs!1192172 m!6171040))

(assert (=> setNonEmpty!29882 d!1652404))

(declare-fun bs!1192173 () Bool)

(declare-fun b!5112967 () Bool)

(declare-fun d!1652406 () Bool)

(assert (= bs!1192173 (and b!5112967 d!1652406)))

(declare-fun lambda!250568 () Int)

(declare-fun lambda!250567 () Int)

(assert (=> bs!1192173 (not (= lambda!250568 lambda!250567))))

(declare-fun bs!1192174 () Bool)

(declare-fun b!5112968 () Bool)

(assert (= bs!1192174 (and b!5112968 d!1652406)))

(declare-fun lambda!250569 () Int)

(assert (=> bs!1192174 (not (= lambda!250569 lambda!250567))))

(declare-fun bs!1192175 () Bool)

(assert (= bs!1192175 (and b!5112968 b!5112967)))

(assert (=> bs!1192175 (= lambda!250569 lambda!250568)))

(declare-fun bm!356431 () Bool)

(declare-datatypes ((List!59214 0))(
  ( (Nil!59090) (Cons!59090 (h!65538 Context!7090) (t!372215 List!59214)) )
))
(declare-fun call!356437 () List!59214)

(declare-fun toList!8234 ((InoxSet Context!7090)) List!59214)

(assert (=> bm!356431 (= call!356437 (toList!8234 z!4463))))

(declare-fun e!3188892 () Unit!150197)

(declare-fun Unit!150201 () Unit!150197)

(assert (=> b!5112967 (= e!3188892 Unit!150201)))

(declare-fun lt!2106045 () List!59214)

(assert (=> b!5112967 (= lt!2106045 call!356437)))

(declare-fun lt!2106041 () Unit!150197)

(declare-fun lemmaNotForallThenExists!308 (List!59214 Int) Unit!150197)

(assert (=> b!5112967 (= lt!2106041 (lemmaNotForallThenExists!308 lt!2106045 lambda!250567))))

(declare-fun call!356436 () Bool)

(assert (=> b!5112967 call!356436))

(declare-fun lt!2106043 () Unit!150197)

(assert (=> b!5112967 (= lt!2106043 lt!2106041)))

(declare-fun lt!2106046 () Bool)

(declare-datatypes ((Option!14668 0))(
  ( (None!14667) (Some!14667 (v!50680 List!59211)) )
))
(declare-fun isEmpty!31877 (Option!14668) Bool)

(declare-fun getLanguageWitness!785 ((InoxSet Context!7090)) Option!14668)

(assert (=> d!1652406 (= lt!2106046 (isEmpty!31877 (getLanguageWitness!785 z!4463)))))

(declare-fun forall!13552 ((InoxSet Context!7090) Int) Bool)

(assert (=> d!1652406 (= lt!2106046 (forall!13552 z!4463 lambda!250567))))

(declare-fun lt!2106040 () Unit!150197)

(assert (=> d!1652406 (= lt!2106040 e!3188892)))

(declare-fun c!878468 () Bool)

(assert (=> d!1652406 (= c!878468 (not (forall!13552 z!4463 lambda!250567)))))

(assert (=> d!1652406 (= (lostCauseZipper!1047 z!4463) lt!2106046)))

(declare-fun Unit!150202 () Unit!150197)

(assert (=> b!5112968 (= e!3188892 Unit!150202)))

(declare-fun lt!2106039 () List!59214)

(assert (=> b!5112968 (= lt!2106039 call!356437)))

(declare-fun lt!2106042 () Unit!150197)

(declare-fun lemmaForallThenNotExists!291 (List!59214 Int) Unit!150197)

(assert (=> b!5112968 (= lt!2106042 (lemmaForallThenNotExists!291 lt!2106039 lambda!250567))))

(assert (=> b!5112968 (not call!356436)))

(declare-fun lt!2106044 () Unit!150197)

(assert (=> b!5112968 (= lt!2106044 lt!2106042)))

(declare-fun bm!356432 () Bool)

(declare-fun exists!1445 (List!59214 Int) Bool)

(assert (=> bm!356432 (= call!356436 (exists!1445 (ite c!878468 lt!2106045 lt!2106039) (ite c!878468 lambda!250568 lambda!250569)))))

(assert (= (and d!1652406 c!878468) b!5112967))

(assert (= (and d!1652406 (not c!878468)) b!5112968))

(assert (= (or b!5112967 b!5112968) bm!356431))

(assert (= (or b!5112967 b!5112968) bm!356432))

(declare-fun m!6171042 () Bool)

(assert (=> b!5112968 m!6171042))

(declare-fun m!6171044 () Bool)

(assert (=> d!1652406 m!6171044))

(assert (=> d!1652406 m!6171044))

(declare-fun m!6171046 () Bool)

(assert (=> d!1652406 m!6171046))

(declare-fun m!6171048 () Bool)

(assert (=> d!1652406 m!6171048))

(assert (=> d!1652406 m!6171048))

(declare-fun m!6171050 () Bool)

(assert (=> b!5112967 m!6171050))

(declare-fun m!6171052 () Bool)

(assert (=> bm!356431 m!6171052))

(declare-fun m!6171054 () Bool)

(assert (=> bm!356432 m!6171054))

(assert (=> b!5112736 d!1652406))

(declare-fun d!1652408 () Bool)

(assert (=> d!1652408 (= (head!10889 lt!2105912) (h!65535 lt!2105912))))

(assert (=> b!5112737 d!1652408))

(declare-fun d!1652410 () Bool)

(assert (=> d!1652410 (= lt!2105907 lt!2105917)))

(declare-fun lt!2106049 () Unit!150197)

(declare-fun choose!37506 (List!59211 List!59211 List!59211 List!59211 List!59211) Unit!150197)

(assert (=> d!1652410 (= lt!2106049 (choose!37506 testedP!265 lt!2105907 testedP!265 lt!2105917 input!5745))))

(assert (=> d!1652410 (isPrefix!5566 testedP!265 input!5745)))

(assert (=> d!1652410 (= (lemmaSamePrefixThenSameSuffix!2612 testedP!265 lt!2105907 testedP!265 lt!2105917 input!5745) lt!2106049)))

(declare-fun bs!1192176 () Bool)

(assert (= bs!1192176 d!1652410))

(declare-fun m!6171056 () Bool)

(assert (=> bs!1192176 m!6171056))

(assert (=> bs!1192176 m!6170684))

(assert (=> b!5112737 d!1652410))

(declare-fun d!1652412 () Bool)

(declare-fun c!878469 () Bool)

(assert (=> d!1652412 (= c!878469 ((_ is Cons!59087) testedP!265))))

(declare-fun e!3188893 () (InoxSet Context!7090))

(assert (=> d!1652412 (= (derivationZipper!60 baseZ!46 testedP!265) e!3188893)))

(declare-fun b!5112969 () Bool)

(assert (=> b!5112969 (= e!3188893 (derivationZipper!60 (derivationStepZipper!796 baseZ!46 (h!65535 testedP!265)) (t!372212 testedP!265)))))

(declare-fun b!5112970 () Bool)

(assert (=> b!5112970 (= e!3188893 baseZ!46)))

(assert (= (and d!1652412 c!878469) b!5112969))

(assert (= (and d!1652412 (not c!878469)) b!5112970))

(declare-fun m!6171058 () Bool)

(assert (=> b!5112969 m!6171058))

(assert (=> b!5112969 m!6171058))

(declare-fun m!6171060 () Bool)

(assert (=> b!5112969 m!6171060))

(assert (=> b!5112727 d!1652412))

(declare-fun d!1652414 () Bool)

(declare-fun c!878470 () Bool)

(assert (=> d!1652414 (= c!878470 (isEmpty!31874 lt!2105912))))

(declare-fun e!3188894 () Bool)

(assert (=> d!1652414 (= (matchZipper!829 z!4463 lt!2105912) e!3188894)))

(declare-fun b!5112971 () Bool)

(assert (=> b!5112971 (= e!3188894 (nullableZipper!997 z!4463))))

(declare-fun b!5112972 () Bool)

(assert (=> b!5112972 (= e!3188894 (matchZipper!829 (derivationStepZipper!796 z!4463 (head!10889 lt!2105912)) (tail!10030 lt!2105912)))))

(assert (= (and d!1652414 c!878470) b!5112971))

(assert (= (and d!1652414 (not c!878470)) b!5112972))

(declare-fun m!6171062 () Bool)

(assert (=> d!1652414 m!6171062))

(declare-fun m!6171064 () Bool)

(assert (=> b!5112971 m!6171064))

(assert (=> b!5112972 m!6170676))

(assert (=> b!5112972 m!6170676))

(declare-fun m!6171066 () Bool)

(assert (=> b!5112972 m!6171066))

(declare-fun m!6171068 () Bool)

(assert (=> b!5112972 m!6171068))

(assert (=> b!5112972 m!6171066))

(assert (=> b!5112972 m!6171068))

(declare-fun m!6171070 () Bool)

(assert (=> b!5112972 m!6171070))

(assert (=> b!5112738 d!1652414))

(declare-fun d!1652416 () Bool)

(declare-fun lt!2106050 () List!59211)

(assert (=> d!1652416 (= (++!12986 testedP!265 lt!2106050) knownP!20)))

(declare-fun e!3188895 () List!59211)

(assert (=> d!1652416 (= lt!2106050 e!3188895)))

(declare-fun c!878471 () Bool)

(assert (=> d!1652416 (= c!878471 ((_ is Cons!59087) testedP!265))))

(assert (=> d!1652416 (>= (size!39467 knownP!20) (size!39467 testedP!265))))

(assert (=> d!1652416 (= (getSuffix!3240 knownP!20 testedP!265) lt!2106050)))

(declare-fun b!5112973 () Bool)

(assert (=> b!5112973 (= e!3188895 (getSuffix!3240 (tail!10030 knownP!20) (t!372212 testedP!265)))))

(declare-fun b!5112974 () Bool)

(assert (=> b!5112974 (= e!3188895 knownP!20)))

(assert (= (and d!1652416 c!878471) b!5112973))

(assert (= (and d!1652416 (not c!878471)) b!5112974))

(declare-fun m!6171072 () Bool)

(assert (=> d!1652416 m!6171072))

(assert (=> d!1652416 m!6170674))

(assert (=> d!1652416 m!6170672))

(assert (=> b!5112973 m!6170748))

(assert (=> b!5112973 m!6170748))

(declare-fun m!6171074 () Bool)

(assert (=> b!5112973 m!6171074))

(assert (=> b!5112738 d!1652416))

(declare-fun d!1652418 () Bool)

(declare-fun e!3188897 () Bool)

(assert (=> d!1652418 e!3188897))

(declare-fun res!2176450 () Bool)

(assert (=> d!1652418 (=> res!2176450 e!3188897)))

(declare-fun lt!2106051 () Bool)

(assert (=> d!1652418 (= res!2176450 (not lt!2106051))))

(declare-fun e!3188898 () Bool)

(assert (=> d!1652418 (= lt!2106051 e!3188898)))

(declare-fun res!2176448 () Bool)

(assert (=> d!1652418 (=> res!2176448 e!3188898)))

(assert (=> d!1652418 (= res!2176448 ((_ is Nil!59087) testedP!265))))

(assert (=> d!1652418 (= (isPrefix!5566 testedP!265 knownP!20) lt!2106051)))

(declare-fun b!5112977 () Bool)

(declare-fun e!3188896 () Bool)

(assert (=> b!5112977 (= e!3188896 (isPrefix!5566 (tail!10030 testedP!265) (tail!10030 knownP!20)))))

(declare-fun b!5112976 () Bool)

(declare-fun res!2176447 () Bool)

(assert (=> b!5112976 (=> (not res!2176447) (not e!3188896))))

(assert (=> b!5112976 (= res!2176447 (= (head!10889 testedP!265) (head!10889 knownP!20)))))

(declare-fun b!5112975 () Bool)

(assert (=> b!5112975 (= e!3188898 e!3188896)))

(declare-fun res!2176449 () Bool)

(assert (=> b!5112975 (=> (not res!2176449) (not e!3188896))))

(assert (=> b!5112975 (= res!2176449 (not ((_ is Nil!59087) knownP!20)))))

(declare-fun b!5112978 () Bool)

(assert (=> b!5112978 (= e!3188897 (>= (size!39467 knownP!20) (size!39467 testedP!265)))))

(assert (= (and d!1652418 (not res!2176448)) b!5112975))

(assert (= (and b!5112975 res!2176449) b!5112976))

(assert (= (and b!5112976 res!2176447) b!5112977))

(assert (= (and d!1652418 (not res!2176450)) b!5112978))

(assert (=> b!5112977 m!6170714))

(assert (=> b!5112977 m!6170748))

(assert (=> b!5112977 m!6170714))

(assert (=> b!5112977 m!6170748))

(declare-fun m!6171076 () Bool)

(assert (=> b!5112977 m!6171076))

(assert (=> b!5112976 m!6170720))

(assert (=> b!5112976 m!6170744))

(assert (=> b!5112978 m!6170674))

(assert (=> b!5112978 m!6170672))

(assert (=> b!5112738 d!1652418))

(declare-fun d!1652420 () Bool)

(assert (=> d!1652420 (isPrefix!5566 testedP!265 knownP!20)))

(declare-fun lt!2106052 () Unit!150197)

(assert (=> d!1652420 (= lt!2106052 (choose!37503 knownP!20 testedP!265 input!5745))))

(assert (=> d!1652420 (isPrefix!5566 knownP!20 input!5745)))

(assert (=> d!1652420 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!703 knownP!20 testedP!265 input!5745) lt!2106052)))

(declare-fun bs!1192177 () Bool)

(assert (= bs!1192177 d!1652420))

(assert (=> bs!1192177 m!6170636))

(declare-fun m!6171078 () Bool)

(assert (=> bs!1192177 m!6171078))

(assert (=> bs!1192177 m!6170670))

(assert (=> b!5112738 d!1652420))

(declare-fun bs!1192178 () Bool)

(declare-fun d!1652422 () Bool)

(assert (= bs!1192178 (and d!1652422 d!1652404)))

(declare-fun lambda!250570 () Int)

(assert (=> bs!1192178 (= lambda!250570 lambda!250554)))

(assert (=> d!1652422 (= (inv!78583 setElem!29881) (forall!13551 (exprs!4045 setElem!29881) lambda!250570))))

(declare-fun bs!1192179 () Bool)

(assert (= bs!1192179 d!1652422))

(declare-fun m!6171080 () Bool)

(assert (=> bs!1192179 m!6171080))

(assert (=> setNonEmpty!29881 d!1652422))

(declare-fun b!5112983 () Bool)

(declare-fun e!3188901 () Bool)

(declare-fun tp!1426583 () Bool)

(declare-fun tp!1426584 () Bool)

(assert (=> b!5112983 (= e!3188901 (and tp!1426583 tp!1426584))))

(assert (=> b!5112739 (= tp!1426557 e!3188901)))

(assert (= (and b!5112739 ((_ is Cons!59088) (exprs!4045 setElem!29881))) b!5112983))

(declare-fun b!5112988 () Bool)

(declare-fun e!3188904 () Bool)

(declare-fun tp!1426587 () Bool)

(assert (=> b!5112988 (= e!3188904 (and tp_is_empty!37595 tp!1426587))))

(assert (=> b!5112721 (= tp!1426553 e!3188904)))

(assert (= (and b!5112721 ((_ is Cons!59087) (t!372212 input!5745))) b!5112988))

(declare-fun condSetEmpty!29889 () Bool)

(assert (=> setNonEmpty!29882 (= condSetEmpty!29889 (= setRest!29882 ((as const (Array Context!7090 Bool)) false)))))

(declare-fun setRes!29889 () Bool)

(assert (=> setNonEmpty!29882 (= tp!1426554 setRes!29889)))

(declare-fun setIsEmpty!29889 () Bool)

(assert (=> setIsEmpty!29889 setRes!29889))

(declare-fun e!3188907 () Bool)

(declare-fun setNonEmpty!29889 () Bool)

(declare-fun tp!1426592 () Bool)

(declare-fun setElem!29889 () Context!7090)

(assert (=> setNonEmpty!29889 (= setRes!29889 (and tp!1426592 (inv!78583 setElem!29889) e!3188907))))

(declare-fun setRest!29889 () (InoxSet Context!7090))

(assert (=> setNonEmpty!29889 (= setRest!29882 ((_ map or) (store ((as const (Array Context!7090 Bool)) false) setElem!29889 true) setRest!29889))))

(declare-fun b!5112993 () Bool)

(declare-fun tp!1426593 () Bool)

(assert (=> b!5112993 (= e!3188907 tp!1426593)))

(assert (= (and setNonEmpty!29882 condSetEmpty!29889) setIsEmpty!29889))

(assert (= (and setNonEmpty!29882 (not condSetEmpty!29889)) setNonEmpty!29889))

(assert (= setNonEmpty!29889 b!5112993))

(declare-fun m!6171082 () Bool)

(assert (=> setNonEmpty!29889 m!6171082))

(declare-fun b!5112994 () Bool)

(declare-fun e!3188908 () Bool)

(declare-fun tp!1426594 () Bool)

(declare-fun tp!1426595 () Bool)

(assert (=> b!5112994 (= e!3188908 (and tp!1426594 tp!1426595))))

(assert (=> b!5112735 (= tp!1426551 e!3188908)))

(assert (= (and b!5112735 ((_ is Cons!59088) (exprs!4045 setElem!29882))) b!5112994))

(declare-fun b!5112995 () Bool)

(declare-fun e!3188909 () Bool)

(declare-fun tp!1426596 () Bool)

(assert (=> b!5112995 (= e!3188909 (and tp_is_empty!37595 tp!1426596))))

(assert (=> b!5112731 (= tp!1426555 e!3188909)))

(assert (= (and b!5112731 ((_ is Cons!59087) (t!372212 knownP!20))) b!5112995))

(declare-fun b!5112996 () Bool)

(declare-fun e!3188910 () Bool)

(declare-fun tp!1426597 () Bool)

(assert (=> b!5112996 (= e!3188910 (and tp_is_empty!37595 tp!1426597))))

(assert (=> b!5112733 (= tp!1426552 e!3188910)))

(assert (= (and b!5112733 ((_ is Cons!59087) (t!372212 testedP!265))) b!5112996))

(declare-fun condSetEmpty!29890 () Bool)

(assert (=> setNonEmpty!29881 (= condSetEmpty!29890 (= setRest!29881 ((as const (Array Context!7090 Bool)) false)))))

(declare-fun setRes!29890 () Bool)

(assert (=> setNonEmpty!29881 (= tp!1426556 setRes!29890)))

(declare-fun setIsEmpty!29890 () Bool)

(assert (=> setIsEmpty!29890 setRes!29890))

(declare-fun setElem!29890 () Context!7090)

(declare-fun e!3188911 () Bool)

(declare-fun tp!1426598 () Bool)

(declare-fun setNonEmpty!29890 () Bool)

(assert (=> setNonEmpty!29890 (= setRes!29890 (and tp!1426598 (inv!78583 setElem!29890) e!3188911))))

(declare-fun setRest!29890 () (InoxSet Context!7090))

(assert (=> setNonEmpty!29890 (= setRest!29881 ((_ map or) (store ((as const (Array Context!7090 Bool)) false) setElem!29890 true) setRest!29890))))

(declare-fun b!5112997 () Bool)

(declare-fun tp!1426599 () Bool)

(assert (=> b!5112997 (= e!3188911 tp!1426599)))

(assert (= (and setNonEmpty!29881 condSetEmpty!29890) setIsEmpty!29890))

(assert (= (and setNonEmpty!29881 (not condSetEmpty!29890)) setNonEmpty!29890))

(assert (= setNonEmpty!29890 b!5112997))

(declare-fun m!6171084 () Bool)

(assert (=> setNonEmpty!29890 m!6171084))

(check-sat (not b!5112854) (not d!1652344) (not b!5112977) (not b!5112972) (not d!1652358) (not b!5112871) (not d!1652314) (not b!5112978) (not b!5112884) (not d!1652422) (not bm!356432) (not b!5112808) (not b!5112867) (not d!1652318) (not b!5112763) (not b!5112861) (not d!1652348) (not b!5112828) (not d!1652336) (not b!5112877) (not b!5112971) (not b!5112807) (not d!1652342) (not b!5112996) (not b!5112994) (not b!5112968) (not d!1652414) (not b!5112997) (not b!5112821) (not b!5112976) (not b!5112865) (not b!5112816) (not b!5112866) (not d!1652290) (not d!1652406) (not b!5112820) (not b!5112973) (not b!5112969) (not d!1652322) (not d!1652416) (not b!5112878) (not bm!356431) (not d!1652352) (not b!5112868) (not b!5112988) (not d!1652284) (not b!5112874) (not b!5112862) (not b!5112819) (not b!5112827) (not d!1652350) (not setNonEmpty!29890) (not b!5112761) (not setNonEmpty!29889) (not d!1652420) (not b!5112995) (not b!5112815) tp_is_empty!37595 (not b!5112825) (not b!5112967) (not d!1652302) (not d!1652346) (not b!5112749) (not b!5112879) (not b!5112831) (not d!1652304) (not b!5112832) (not b!5112872) (not b!5112784) (not d!1652312) (not d!1652404) (not b!5112750) (not b!5112803) (not b!5112983) (not b!5112762) (not b!5112993) (not b!5112785) (not d!1652410) (not b!5112805))
(check-sat)
