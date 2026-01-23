; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539784 () Bool)

(assert start!539784)

(declare-fun b!5115779 () Bool)

(declare-fun e!3190598 () Bool)

(declare-fun tp_is_empty!37631 () Bool)

(declare-fun tp!1427223 () Bool)

(assert (=> b!5115779 (= e!3190598 (and tp_is_empty!37631 tp!1427223))))

(declare-fun setIsEmpty!30045 () Bool)

(declare-fun setRes!30045 () Bool)

(assert (=> setIsEmpty!30045 setRes!30045))

(declare-fun setIsEmpty!30046 () Bool)

(declare-fun setRes!30046 () Bool)

(assert (=> setIsEmpty!30046 setRes!30046))

(declare-fun e!3190593 () Bool)

(declare-fun tp!1427226 () Bool)

(declare-fun setNonEmpty!30045 () Bool)

(declare-datatypes ((C!28624 0))(
  ( (C!28625 (val!23964 Int)) )
))
(declare-datatypes ((Regex!14179 0))(
  ( (ElementMatch!14179 (c!879013 C!28624)) (Concat!23024 (regOne!28870 Regex!14179) (regTwo!28870 Regex!14179)) (EmptyExpr!14179) (Star!14179 (reg!14508 Regex!14179)) (EmptyLang!14179) (Union!14179 (regOne!28871 Regex!14179) (regTwo!28871 Regex!14179)) )
))
(declare-datatypes ((List!59261 0))(
  ( (Nil!59137) (Cons!59137 (h!65585 Regex!14179) (t!372272 List!59261)) )
))
(declare-datatypes ((Context!7126 0))(
  ( (Context!7127 (exprs!4063 List!59261)) )
))
(declare-fun setElem!30046 () Context!7126)

(declare-fun inv!78628 (Context!7126) Bool)

(assert (=> setNonEmpty!30045 (= setRes!30046 (and tp!1427226 (inv!78628 setElem!30046) e!3190593))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7126))

(declare-fun setRest!30045 () (InoxSet Context!7126))

(assert (=> setNonEmpty!30045 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7126 Bool)) false) setElem!30046 true) setRest!30045))))

(declare-fun b!5115781 () Bool)

(declare-fun e!3190597 () Bool)

(declare-fun tp!1427229 () Bool)

(assert (=> b!5115781 (= e!3190597 (and tp_is_empty!37631 tp!1427229))))

(declare-fun b!5115782 () Bool)

(declare-fun e!3190600 () Bool)

(declare-fun e!3190592 () Bool)

(assert (=> b!5115782 (= e!3190600 e!3190592)))

(declare-fun res!2177936 () Bool)

(assert (=> b!5115782 (=> res!2177936 e!3190592)))

(declare-fun lt!2108055 () Int)

(declare-fun lt!2108053 () Int)

(assert (=> b!5115782 (= res!2177936 (>= lt!2108055 lt!2108053))))

(declare-datatypes ((List!59262 0))(
  ( (Nil!59138) (Cons!59138 (h!65586 C!28624) (t!372273 List!59262)) )
))
(declare-fun input!5745 () List!59262)

(declare-fun size!39485 (List!59262) Int)

(assert (=> b!5115782 (= lt!2108053 (size!39485 input!5745))))

(declare-fun b!5115783 () Bool)

(declare-fun e!3190595 () Bool)

(declare-fun tp!1427228 () Bool)

(assert (=> b!5115783 (= e!3190595 (and tp_is_empty!37631 tp!1427228))))

(declare-fun b!5115784 () Bool)

(declare-fun e!3190604 () Bool)

(declare-fun e!3190603 () Bool)

(assert (=> b!5115784 (= e!3190604 e!3190603)))

(declare-fun res!2177945 () Bool)

(assert (=> b!5115784 (=> res!2177945 e!3190603)))

(declare-fun lt!2108041 () List!59262)

(declare-fun knownP!20 () List!59262)

(assert (=> b!5115784 (= res!2177945 (not (= lt!2108041 knownP!20)))))

(declare-fun lt!2108056 () List!59262)

(declare-fun lt!2108040 () List!59262)

(declare-fun ++!13004 (List!59262 List!59262) List!59262)

(assert (=> b!5115784 (= lt!2108041 (++!13004 lt!2108056 lt!2108040))))

(declare-fun b!5115785 () Bool)

(declare-fun e!3190594 () Bool)

(declare-fun e!3190606 () Bool)

(assert (=> b!5115785 (= e!3190594 e!3190606)))

(declare-fun res!2177946 () Bool)

(assert (=> b!5115785 (=> res!2177946 e!3190606)))

(declare-fun lt!2108045 () List!59262)

(declare-fun lt!2108032 () C!28624)

(declare-fun head!10907 (List!59262) C!28624)

(assert (=> b!5115785 (= res!2177946 (not (= (head!10907 lt!2108045) lt!2108032)))))

(declare-fun lt!2108043 () List!59262)

(declare-fun lt!2108034 () List!59262)

(assert (=> b!5115785 (= lt!2108043 lt!2108034)))

(declare-datatypes ((Unit!150261 0))(
  ( (Unit!150262) )
))
(declare-fun lt!2108031 () Unit!150261)

(declare-fun testedP!265 () List!59262)

(declare-fun lemmaSamePrefixThenSameSuffix!2630 (List!59262 List!59262 List!59262 List!59262 List!59262) Unit!150261)

(assert (=> b!5115785 (= lt!2108031 (lemmaSamePrefixThenSameSuffix!2630 testedP!265 lt!2108043 testedP!265 lt!2108034 input!5745))))

(declare-fun b!5115786 () Bool)

(declare-fun e!3190599 () Bool)

(assert (=> b!5115786 (= e!3190599 (>= lt!2108053 lt!2108055))))

(declare-fun lt!2108048 () Int)

(declare-fun lt!2108046 () (InoxSet Context!7126))

(declare-datatypes ((tuple2!63620 0))(
  ( (tuple2!63621 (_1!35113 List!59262) (_2!35113 List!59262)) )
))
(declare-fun findLongestMatchInnerZipper!191 ((InoxSet Context!7126) List!59262 Int List!59262 List!59262 Int) tuple2!63620)

(declare-fun getSuffix!3258 (List!59262 List!59262) List!59262)

(assert (=> b!5115786 (>= (size!39485 (_1!35113 (findLongestMatchInnerZipper!191 lt!2108046 lt!2108056 (size!39485 lt!2108056) (getSuffix!3258 input!5745 lt!2108056) input!5745 lt!2108053))) lt!2108048)))

(declare-fun lt!2108030 () Unit!150261)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!7 ((InoxSet Context!7126) (InoxSet Context!7126) List!59262 List!59262 List!59262) Unit!150261)

(assert (=> b!5115786 (= lt!2108030 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!7 baseZ!46 lt!2108046 input!5745 lt!2108056 knownP!20))))

(declare-fun b!5115787 () Bool)

(declare-fun e!3190601 () Bool)

(declare-fun tp!1427224 () Bool)

(assert (=> b!5115787 (= e!3190601 tp!1427224)))

(declare-fun b!5115780 () Bool)

(declare-fun e!3190605 () Bool)

(assert (=> b!5115780 (= e!3190605 (not e!3190600))))

(declare-fun res!2177933 () Bool)

(assert (=> b!5115780 (=> res!2177933 e!3190600)))

(declare-fun z!4463 () (InoxSet Context!7126))

(declare-fun matchZipper!847 ((InoxSet Context!7126) List!59262) Bool)

(assert (=> b!5115780 (= res!2177933 (not (matchZipper!847 z!4463 lt!2108045)))))

(assert (=> b!5115780 (= lt!2108045 (getSuffix!3258 knownP!20 testedP!265))))

(declare-fun isPrefix!5584 (List!59262 List!59262) Bool)

(assert (=> b!5115780 (isPrefix!5584 testedP!265 knownP!20)))

(declare-fun lt!2108037 () Unit!150261)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!721 (List!59262 List!59262 List!59262) Unit!150261)

(assert (=> b!5115780 (= lt!2108037 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!721 knownP!20 testedP!265 input!5745))))

(declare-fun res!2177942 () Bool)

(declare-fun e!3190602 () Bool)

(assert (=> start!539784 (=> (not res!2177942) (not e!3190602))))

(assert (=> start!539784 (= res!2177942 (isPrefix!5584 testedP!265 input!5745))))

(assert (=> start!539784 e!3190602))

(assert (=> start!539784 e!3190595))

(declare-fun condSetEmpty!30045 () Bool)

(assert (=> start!539784 (= condSetEmpty!30045 (= z!4463 ((as const (Array Context!7126 Bool)) false)))))

(assert (=> start!539784 setRes!30045))

(assert (=> start!539784 e!3190598))

(declare-fun condSetEmpty!30046 () Bool)

(assert (=> start!539784 (= condSetEmpty!30046 (= baseZ!46 ((as const (Array Context!7126 Bool)) false)))))

(assert (=> start!539784 setRes!30046))

(assert (=> start!539784 e!3190597))

(declare-fun b!5115788 () Bool)

(declare-fun e!3190596 () Bool)

(assert (=> b!5115788 (= e!3190592 e!3190596)))

(declare-fun res!2177944 () Bool)

(assert (=> b!5115788 (=> res!2177944 e!3190596)))

(declare-fun lt!2108035 () List!59262)

(assert (=> b!5115788 (= res!2177944 (not (= (++!13004 knownP!20 lt!2108035) input!5745)))))

(assert (=> b!5115788 (= lt!2108035 (getSuffix!3258 input!5745 knownP!20))))

(assert (=> b!5115788 (= lt!2108040 (getSuffix!3258 knownP!20 lt!2108056))))

(assert (=> b!5115788 (isPrefix!5584 lt!2108056 knownP!20)))

(declare-fun lt!2108050 () Unit!150261)

(assert (=> b!5115788 (= lt!2108050 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!721 knownP!20 lt!2108056 input!5745))))

(declare-fun derivationZipper!78 ((InoxSet Context!7126) List!59262) (InoxSet Context!7126))

(assert (=> b!5115788 (= (derivationZipper!78 baseZ!46 lt!2108056) lt!2108046)))

(declare-fun derivationStepZipper!814 ((InoxSet Context!7126) C!28624) (InoxSet Context!7126))

(assert (=> b!5115788 (= lt!2108046 (derivationStepZipper!814 z!4463 lt!2108032))))

(declare-fun lt!2108044 () Unit!150261)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!39 ((InoxSet Context!7126) (InoxSet Context!7126) List!59262 C!28624) Unit!150261)

(assert (=> b!5115788 (= lt!2108044 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!39 baseZ!46 z!4463 testedP!265 lt!2108032))))

(assert (=> b!5115788 (isPrefix!5584 lt!2108056 input!5745)))

(declare-fun lt!2108054 () Unit!150261)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!974 (List!59262 List!59262) Unit!150261)

(assert (=> b!5115788 (= lt!2108054 (lemmaAddHeadSuffixToPrefixStillPrefix!974 testedP!265 input!5745))))

(declare-fun lt!2108049 () List!59262)

(assert (=> b!5115788 (= lt!2108056 (++!13004 testedP!265 lt!2108049))))

(assert (=> b!5115788 (= lt!2108049 (Cons!59138 lt!2108032 Nil!59138))))

(assert (=> b!5115788 (= lt!2108032 (head!10907 lt!2108034))))

(assert (=> b!5115788 (= lt!2108034 (getSuffix!3258 input!5745 testedP!265))))

(declare-fun tp!1427225 () Bool)

(declare-fun setElem!30045 () Context!7126)

(declare-fun setNonEmpty!30046 () Bool)

(assert (=> setNonEmpty!30046 (= setRes!30045 (and tp!1427225 (inv!78628 setElem!30045) e!3190601))))

(declare-fun setRest!30046 () (InoxSet Context!7126))

(assert (=> setNonEmpty!30046 (= z!4463 ((_ map or) (store ((as const (Array Context!7126 Bool)) false) setElem!30045 true) setRest!30046))))

(declare-fun b!5115789 () Bool)

(assert (=> b!5115789 (= e!3190602 e!3190605)))

(declare-fun res!2177931 () Bool)

(assert (=> b!5115789 (=> (not res!2177931) (not e!3190605))))

(assert (=> b!5115789 (= res!2177931 (>= lt!2108048 lt!2108055))))

(assert (=> b!5115789 (= lt!2108055 (size!39485 testedP!265))))

(assert (=> b!5115789 (= lt!2108048 (size!39485 knownP!20))))

(declare-fun b!5115790 () Bool)

(declare-fun res!2177934 () Bool)

(assert (=> b!5115790 (=> (not res!2177934) (not e!3190605))))

(assert (=> b!5115790 (= res!2177934 (matchZipper!847 baseZ!46 knownP!20))))

(declare-fun b!5115791 () Bool)

(declare-fun tp!1427227 () Bool)

(assert (=> b!5115791 (= e!3190593 tp!1427227)))

(declare-fun b!5115792 () Bool)

(assert (=> b!5115792 (= e!3190606 e!3190604)))

(declare-fun res!2177938 () Bool)

(assert (=> b!5115792 (=> res!2177938 e!3190604)))

(declare-fun lt!2108036 () List!59262)

(declare-fun $colon$colon!1125 (List!59262 C!28624) List!59262)

(assert (=> b!5115792 (= res!2177938 (not (= lt!2108045 ($colon$colon!1125 lt!2108036 lt!2108032))))))

(declare-fun tail!10048 (List!59262) List!59262)

(assert (=> b!5115792 (= lt!2108036 (tail!10048 lt!2108045))))

(declare-fun b!5115793 () Bool)

(assert (=> b!5115793 (= e!3190603 e!3190599)))

(declare-fun res!2177948 () Bool)

(assert (=> b!5115793 (=> res!2177948 e!3190599)))

(assert (=> b!5115793 (= res!2177948 (not (= lt!2108036 lt!2108040)))))

(declare-fun lt!2108042 () List!59262)

(assert (=> b!5115793 (= lt!2108042 lt!2108045)))

(declare-fun lt!2108047 () Unit!150261)

(assert (=> b!5115793 (= lt!2108047 (lemmaSamePrefixThenSameSuffix!2630 testedP!265 lt!2108042 testedP!265 lt!2108045 knownP!20))))

(assert (=> b!5115793 (= lt!2108041 (++!13004 testedP!265 lt!2108042))))

(assert (=> b!5115793 (= lt!2108042 (++!13004 lt!2108049 lt!2108040))))

(declare-fun lt!2108038 () Unit!150261)

(declare-fun lemmaConcatAssociativity!2762 (List!59262 List!59262 List!59262) Unit!150261)

(assert (=> b!5115793 (= lt!2108038 (lemmaConcatAssociativity!2762 testedP!265 lt!2108049 lt!2108040))))

(declare-fun b!5115794 () Bool)

(declare-fun res!2177932 () Bool)

(assert (=> b!5115794 (=> res!2177932 e!3190604)))

(declare-fun lt!2108051 () List!59262)

(assert (=> b!5115794 (= res!2177932 (not (= lt!2108051 knownP!20)))))

(declare-fun b!5115795 () Bool)

(declare-fun res!2177937 () Bool)

(assert (=> b!5115795 (=> (not res!2177937) (not e!3190602))))

(assert (=> b!5115795 (= res!2177937 (isPrefix!5584 knownP!20 input!5745))))

(declare-fun b!5115796 () Bool)

(declare-fun res!2177947 () Bool)

(assert (=> b!5115796 (=> res!2177947 e!3190600)))

(declare-fun lostCauseZipper!1065 ((InoxSet Context!7126)) Bool)

(assert (=> b!5115796 (= res!2177947 (lostCauseZipper!1065 z!4463))))

(declare-fun b!5115797 () Bool)

(declare-fun res!2177943 () Bool)

(assert (=> b!5115797 (=> res!2177943 e!3190600)))

(assert (=> b!5115797 (= res!2177943 (not (= (derivationZipper!78 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5115798 () Bool)

(declare-fun res!2177941 () Bool)

(declare-fun e!3190607 () Bool)

(assert (=> b!5115798 (=> res!2177941 e!3190607)))

(assert (=> b!5115798 (= res!2177941 (not (= (++!13004 testedP!265 lt!2108034) input!5745)))))

(declare-fun b!5115799 () Bool)

(assert (=> b!5115799 (= e!3190607 e!3190594)))

(declare-fun res!2177940 () Bool)

(assert (=> b!5115799 (=> res!2177940 e!3190594)))

(declare-fun lt!2108039 () List!59262)

(assert (=> b!5115799 (= res!2177940 (not (= lt!2108039 input!5745)))))

(declare-fun lt!2108052 () List!59262)

(assert (=> b!5115799 (= lt!2108052 lt!2108039)))

(assert (=> b!5115799 (= lt!2108039 (++!13004 testedP!265 lt!2108043))))

(assert (=> b!5115799 (= lt!2108043 (++!13004 lt!2108045 lt!2108035))))

(declare-fun lt!2108033 () Unit!150261)

(assert (=> b!5115799 (= lt!2108033 (lemmaConcatAssociativity!2762 testedP!265 lt!2108045 lt!2108035))))

(declare-fun b!5115800 () Bool)

(declare-fun res!2177939 () Bool)

(assert (=> b!5115800 (=> res!2177939 e!3190600)))

(assert (=> b!5115800 (= res!2177939 (= lt!2108055 lt!2108048))))

(declare-fun b!5115801 () Bool)

(assert (=> b!5115801 (= e!3190596 e!3190607)))

(declare-fun res!2177935 () Bool)

(assert (=> b!5115801 (=> res!2177935 e!3190607)))

(assert (=> b!5115801 (= res!2177935 (not (= lt!2108052 input!5745)))))

(assert (=> b!5115801 (= lt!2108052 (++!13004 lt!2108051 lt!2108035))))

(assert (=> b!5115801 (= lt!2108051 (++!13004 testedP!265 lt!2108045))))

(assert (= (and start!539784 res!2177942) b!5115795))

(assert (= (and b!5115795 res!2177937) b!5115789))

(assert (= (and b!5115789 res!2177931) b!5115790))

(assert (= (and b!5115790 res!2177934) b!5115780))

(assert (= (and b!5115780 (not res!2177933)) b!5115797))

(assert (= (and b!5115797 (not res!2177943)) b!5115796))

(assert (= (and b!5115796 (not res!2177947)) b!5115800))

(assert (= (and b!5115800 (not res!2177939)) b!5115782))

(assert (= (and b!5115782 (not res!2177936)) b!5115788))

(assert (= (and b!5115788 (not res!2177944)) b!5115801))

(assert (= (and b!5115801 (not res!2177935)) b!5115798))

(assert (= (and b!5115798 (not res!2177941)) b!5115799))

(assert (= (and b!5115799 (not res!2177940)) b!5115785))

(assert (= (and b!5115785 (not res!2177946)) b!5115792))

(assert (= (and b!5115792 (not res!2177938)) b!5115794))

(assert (= (and b!5115794 (not res!2177932)) b!5115784))

(assert (= (and b!5115784 (not res!2177945)) b!5115793))

(assert (= (and b!5115793 (not res!2177948)) b!5115786))

(get-info :version)

(assert (= (and start!539784 ((_ is Cons!59138) input!5745)) b!5115783))

(assert (= (and start!539784 condSetEmpty!30045) setIsEmpty!30045))

(assert (= (and start!539784 (not condSetEmpty!30045)) setNonEmpty!30046))

(assert (= setNonEmpty!30046 b!5115787))

(assert (= (and start!539784 ((_ is Cons!59138) testedP!265)) b!5115779))

(assert (= (and start!539784 condSetEmpty!30046) setIsEmpty!30046))

(assert (= (and start!539784 (not condSetEmpty!30046)) setNonEmpty!30045))

(assert (= setNonEmpty!30045 b!5115791))

(assert (= (and start!539784 ((_ is Cons!59138) knownP!20)) b!5115781))

(declare-fun m!6175008 () Bool)

(assert (=> b!5115789 m!6175008))

(declare-fun m!6175010 () Bool)

(assert (=> b!5115789 m!6175010))

(declare-fun m!6175012 () Bool)

(assert (=> b!5115782 m!6175012))

(declare-fun m!6175014 () Bool)

(assert (=> b!5115799 m!6175014))

(declare-fun m!6175016 () Bool)

(assert (=> b!5115799 m!6175016))

(declare-fun m!6175018 () Bool)

(assert (=> b!5115799 m!6175018))

(declare-fun m!6175020 () Bool)

(assert (=> b!5115780 m!6175020))

(declare-fun m!6175022 () Bool)

(assert (=> b!5115780 m!6175022))

(declare-fun m!6175024 () Bool)

(assert (=> b!5115780 m!6175024))

(declare-fun m!6175026 () Bool)

(assert (=> b!5115780 m!6175026))

(declare-fun m!6175028 () Bool)

(assert (=> b!5115790 m!6175028))

(declare-fun m!6175030 () Bool)

(assert (=> b!5115797 m!6175030))

(declare-fun m!6175032 () Bool)

(assert (=> b!5115798 m!6175032))

(declare-fun m!6175034 () Bool)

(assert (=> b!5115784 m!6175034))

(declare-fun m!6175036 () Bool)

(assert (=> b!5115786 m!6175036))

(declare-fun m!6175038 () Bool)

(assert (=> b!5115786 m!6175038))

(declare-fun m!6175040 () Bool)

(assert (=> b!5115786 m!6175040))

(assert (=> b!5115786 m!6175038))

(declare-fun m!6175042 () Bool)

(assert (=> b!5115786 m!6175042))

(declare-fun m!6175044 () Bool)

(assert (=> b!5115786 m!6175044))

(assert (=> b!5115786 m!6175042))

(declare-fun m!6175046 () Bool)

(assert (=> b!5115795 m!6175046))

(declare-fun m!6175048 () Bool)

(assert (=> setNonEmpty!30045 m!6175048))

(declare-fun m!6175050 () Bool)

(assert (=> setNonEmpty!30046 m!6175050))

(declare-fun m!6175052 () Bool)

(assert (=> b!5115785 m!6175052))

(declare-fun m!6175054 () Bool)

(assert (=> b!5115785 m!6175054))

(declare-fun m!6175056 () Bool)

(assert (=> start!539784 m!6175056))

(declare-fun m!6175058 () Bool)

(assert (=> b!5115796 m!6175058))

(declare-fun m!6175060 () Bool)

(assert (=> b!5115801 m!6175060))

(declare-fun m!6175062 () Bool)

(assert (=> b!5115801 m!6175062))

(declare-fun m!6175064 () Bool)

(assert (=> b!5115792 m!6175064))

(declare-fun m!6175066 () Bool)

(assert (=> b!5115792 m!6175066))

(declare-fun m!6175068 () Bool)

(assert (=> b!5115793 m!6175068))

(declare-fun m!6175070 () Bool)

(assert (=> b!5115793 m!6175070))

(declare-fun m!6175072 () Bool)

(assert (=> b!5115793 m!6175072))

(declare-fun m!6175074 () Bool)

(assert (=> b!5115793 m!6175074))

(declare-fun m!6175076 () Bool)

(assert (=> b!5115788 m!6175076))

(declare-fun m!6175078 () Bool)

(assert (=> b!5115788 m!6175078))

(declare-fun m!6175080 () Bool)

(assert (=> b!5115788 m!6175080))

(declare-fun m!6175082 () Bool)

(assert (=> b!5115788 m!6175082))

(declare-fun m!6175084 () Bool)

(assert (=> b!5115788 m!6175084))

(declare-fun m!6175086 () Bool)

(assert (=> b!5115788 m!6175086))

(declare-fun m!6175088 () Bool)

(assert (=> b!5115788 m!6175088))

(declare-fun m!6175090 () Bool)

(assert (=> b!5115788 m!6175090))

(declare-fun m!6175092 () Bool)

(assert (=> b!5115788 m!6175092))

(declare-fun m!6175094 () Bool)

(assert (=> b!5115788 m!6175094))

(declare-fun m!6175096 () Bool)

(assert (=> b!5115788 m!6175096))

(declare-fun m!6175098 () Bool)

(assert (=> b!5115788 m!6175098))

(declare-fun m!6175100 () Bool)

(assert (=> b!5115788 m!6175100))

(check-sat (not b!5115797) (not b!5115796) (not b!5115790) (not start!539784) (not b!5115792) (not b!5115801) (not setNonEmpty!30045) (not b!5115785) (not b!5115784) (not b!5115795) (not b!5115799) (not b!5115788) (not b!5115791) (not b!5115779) (not setNonEmpty!30046) (not b!5115793) (not b!5115787) (not b!5115782) (not b!5115780) (not b!5115789) (not b!5115781) (not b!5115786) (not b!5115783) tp_is_empty!37631 (not b!5115798))
(check-sat)
