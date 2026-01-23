; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540688 () Bool)

(assert start!540688)

(declare-fun setIsEmpty!30469 () Bool)

(declare-fun setRes!30469 () Bool)

(assert (=> setIsEmpty!30469 setRes!30469))

(declare-fun b!5122403 () Bool)

(declare-fun e!3194665 () Bool)

(declare-fun tp_is_empty!37739 () Bool)

(declare-fun tp!1429154 () Bool)

(assert (=> b!5122403 (= e!3194665 (and tp_is_empty!37739 tp!1429154))))

(declare-fun setIsEmpty!30470 () Bool)

(declare-fun setRes!30470 () Bool)

(assert (=> setIsEmpty!30470 setRes!30470))

(declare-fun b!5122404 () Bool)

(declare-fun e!3194667 () Bool)

(declare-fun lt!2111886 () Int)

(declare-datatypes ((C!28732 0))(
  ( (C!28733 (val!24018 Int)) )
))
(declare-datatypes ((List!59389 0))(
  ( (Nil!59265) (Cons!59265 (h!65713 C!28732) (t!372408 List!59389)) )
))
(declare-fun lt!2111881 () List!59389)

(declare-fun size!39539 (List!59389) Int)

(assert (=> b!5122404 (= e!3194667 (>= lt!2111886 (size!39539 lt!2111881)))))

(declare-fun b!5122405 () Bool)

(declare-fun res!2181176 () Bool)

(declare-fun e!3194663 () Bool)

(assert (=> b!5122405 (=> res!2181176 e!3194663)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14233 0))(
  ( (ElementMatch!14233 (c!880273 C!28732)) (Concat!23078 (regOne!28978 Regex!14233) (regTwo!28978 Regex!14233)) (EmptyExpr!14233) (Star!14233 (reg!14562 Regex!14233)) (EmptyLang!14233) (Union!14233 (regOne!28979 Regex!14233) (regTwo!28979 Regex!14233)) )
))
(declare-datatypes ((List!59390 0))(
  ( (Nil!59266) (Cons!59266 (h!65714 Regex!14233) (t!372409 List!59390)) )
))
(declare-datatypes ((Context!7234 0))(
  ( (Context!7235 (exprs!4117 List!59390)) )
))
(declare-fun z!4463 () (InoxSet Context!7234))

(declare-fun testedP!265 () List!59389)

(declare-fun baseZ!46 () (InoxSet Context!7234))

(declare-fun derivationZipper!130 ((InoxSet Context!7234) List!59389) (InoxSet Context!7234))

(assert (=> b!5122405 (= res!2181176 (not (= (derivationZipper!130 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5122406 () Bool)

(declare-fun e!3194668 () Bool)

(declare-fun e!3194674 () Bool)

(assert (=> b!5122406 (= e!3194668 e!3194674)))

(declare-fun res!2181187 () Bool)

(assert (=> b!5122406 (=> res!2181187 e!3194674)))

(declare-fun lt!2111874 () List!59389)

(declare-fun input!5745 () List!59389)

(assert (=> b!5122406 (= res!2181187 (not (= lt!2111874 input!5745)))))

(declare-fun lt!2111888 () List!59389)

(assert (=> b!5122406 (= lt!2111888 lt!2111874)))

(declare-fun lt!2111877 () List!59389)

(declare-fun ++!13046 (List!59389 List!59389) List!59389)

(assert (=> b!5122406 (= lt!2111874 (++!13046 testedP!265 lt!2111877))))

(declare-fun lt!2111882 () List!59389)

(declare-fun lt!2111870 () List!59389)

(assert (=> b!5122406 (= lt!2111877 (++!13046 lt!2111882 lt!2111870))))

(declare-datatypes ((Unit!150405 0))(
  ( (Unit!150406) )
))
(declare-fun lt!2111890 () Unit!150405)

(declare-fun lemmaConcatAssociativity!2790 (List!59389 List!59389 List!59389) Unit!150405)

(assert (=> b!5122406 (= lt!2111890 (lemmaConcatAssociativity!2790 testedP!265 lt!2111882 lt!2111870))))

(declare-fun b!5122407 () Bool)

(declare-fun e!3194672 () Bool)

(declare-fun e!3194664 () Bool)

(assert (=> b!5122407 (= e!3194672 e!3194664)))

(declare-fun res!2181180 () Bool)

(assert (=> b!5122407 (=> res!2181180 e!3194664)))

(declare-fun lt!2111869 () List!59389)

(declare-fun knownP!20 () List!59389)

(assert (=> b!5122407 (= res!2181180 (not (= lt!2111869 knownP!20)))))

(declare-fun lt!2111875 () List!59389)

(assert (=> b!5122407 (= lt!2111869 (++!13046 lt!2111881 lt!2111875))))

(declare-fun setElem!30469 () Context!7234)

(declare-fun e!3194676 () Bool)

(declare-fun setNonEmpty!30469 () Bool)

(declare-fun tp!1429152 () Bool)

(declare-fun inv!78763 (Context!7234) Bool)

(assert (=> setNonEmpty!30469 (= setRes!30470 (and tp!1429152 (inv!78763 setElem!30469) e!3194676))))

(declare-fun setRest!30470 () (InoxSet Context!7234))

(assert (=> setNonEmpty!30469 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7234 Bool)) false) setElem!30469 true) setRest!30470))))

(declare-fun b!5122408 () Bool)

(declare-fun e!3194669 () Bool)

(assert (=> b!5122408 (= e!3194669 e!3194668)))

(declare-fun res!2181182 () Bool)

(assert (=> b!5122408 (=> res!2181182 e!3194668)))

(assert (=> b!5122408 (= res!2181182 (not (= lt!2111888 input!5745)))))

(declare-fun lt!2111872 () List!59389)

(assert (=> b!5122408 (= lt!2111888 (++!13046 lt!2111872 lt!2111870))))

(assert (=> b!5122408 (= lt!2111872 (++!13046 testedP!265 lt!2111882))))

(declare-fun b!5122409 () Bool)

(declare-fun e!3194677 () Bool)

(declare-fun tp!1429153 () Bool)

(assert (=> b!5122409 (= e!3194677 tp!1429153)))

(declare-fun b!5122410 () Bool)

(declare-fun res!2181172 () Bool)

(declare-fun e!3194666 () Bool)

(assert (=> b!5122410 (=> (not res!2181172) (not e!3194666))))

(declare-fun matchZipper!901 ((InoxSet Context!7234) List!59389) Bool)

(assert (=> b!5122410 (= res!2181172 (matchZipper!901 baseZ!46 knownP!20))))

(declare-fun b!5122411 () Bool)

(declare-fun e!3194671 () Bool)

(assert (=> b!5122411 (= e!3194671 e!3194672)))

(declare-fun res!2181175 () Bool)

(assert (=> b!5122411 (=> res!2181175 e!3194672)))

(declare-fun lt!2111868 () C!28732)

(declare-fun lt!2111885 () List!59389)

(declare-fun $colon$colon!1147 (List!59389 C!28732) List!59389)

(assert (=> b!5122411 (= res!2181175 (not (= lt!2111882 ($colon$colon!1147 lt!2111885 lt!2111868))))))

(declare-fun tail!10084 (List!59389) List!59389)

(assert (=> b!5122411 (= lt!2111885 (tail!10084 lt!2111882))))

(declare-fun b!5122412 () Bool)

(assert (=> b!5122412 (= e!3194663 e!3194669)))

(declare-fun res!2181179 () Bool)

(assert (=> b!5122412 (=> res!2181179 e!3194669)))

(assert (=> b!5122412 (= res!2181179 (not (= (++!13046 knownP!20 lt!2111870) input!5745)))))

(declare-fun getSuffix!3310 (List!59389 List!59389) List!59389)

(assert (=> b!5122412 (= lt!2111870 (getSuffix!3310 input!5745 knownP!20))))

(assert (=> b!5122412 (= lt!2111875 (getSuffix!3310 knownP!20 lt!2111881))))

(declare-fun isPrefix!5638 (List!59389 List!59389) Bool)

(assert (=> b!5122412 (isPrefix!5638 lt!2111881 knownP!20)))

(declare-fun lt!2111889 () Unit!150405)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!773 (List!59389 List!59389 List!59389) Unit!150405)

(assert (=> b!5122412 (= lt!2111889 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!773 knownP!20 lt!2111881 input!5745))))

(declare-fun derivationStepZipper!856 ((InoxSet Context!7234) C!28732) (InoxSet Context!7234))

(assert (=> b!5122412 (= (derivationZipper!130 baseZ!46 lt!2111881) (derivationStepZipper!856 z!4463 lt!2111868))))

(declare-fun lt!2111871 () Unit!150405)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!77 ((InoxSet Context!7234) (InoxSet Context!7234) List!59389 C!28732) Unit!150405)

(assert (=> b!5122412 (= lt!2111871 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!77 baseZ!46 z!4463 testedP!265 lt!2111868))))

(assert (=> b!5122412 (isPrefix!5638 lt!2111881 input!5745)))

(declare-fun lt!2111878 () Unit!150405)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1012 (List!59389 List!59389) Unit!150405)

(assert (=> b!5122412 (= lt!2111878 (lemmaAddHeadSuffixToPrefixStillPrefix!1012 testedP!265 input!5745))))

(declare-fun lt!2111880 () List!59389)

(assert (=> b!5122412 (= lt!2111881 (++!13046 testedP!265 lt!2111880))))

(assert (=> b!5122412 (= lt!2111880 (Cons!59265 lt!2111868 Nil!59265))))

(declare-fun lt!2111883 () List!59389)

(declare-fun head!10949 (List!59389) C!28732)

(assert (=> b!5122412 (= lt!2111868 (head!10949 lt!2111883))))

(assert (=> b!5122412 (= lt!2111883 (getSuffix!3310 input!5745 testedP!265))))

(declare-fun b!5122413 () Bool)

(declare-fun res!2181188 () Bool)

(declare-fun e!3194670 () Bool)

(assert (=> b!5122413 (=> (not res!2181188) (not e!3194670))))

(assert (=> b!5122413 (= res!2181188 (isPrefix!5638 knownP!20 input!5745))))

(declare-fun b!5122414 () Bool)

(declare-fun e!3194673 () Bool)

(declare-fun tp!1429151 () Bool)

(assert (=> b!5122414 (= e!3194673 (and tp_is_empty!37739 tp!1429151))))

(declare-fun b!5122415 () Bool)

(declare-fun res!2181173 () Bool)

(assert (=> b!5122415 (=> res!2181173 e!3194663)))

(declare-fun lt!2111876 () Int)

(assert (=> b!5122415 (= res!2181173 (>= lt!2111876 (size!39539 input!5745)))))

(declare-fun b!5122416 () Bool)

(declare-fun res!2181184 () Bool)

(assert (=> b!5122416 (=> res!2181184 e!3194668)))

(assert (=> b!5122416 (= res!2181184 (not (= (++!13046 testedP!265 lt!2111883) input!5745)))))

(declare-fun res!2181186 () Bool)

(assert (=> start!540688 (=> (not res!2181186) (not e!3194670))))

(assert (=> start!540688 (= res!2181186 (isPrefix!5638 testedP!265 input!5745))))

(assert (=> start!540688 e!3194670))

(assert (=> start!540688 e!3194673))

(declare-fun condSetEmpty!30470 () Bool)

(assert (=> start!540688 (= condSetEmpty!30470 (= z!4463 ((as const (Array Context!7234 Bool)) false)))))

(assert (=> start!540688 setRes!30469))

(assert (=> start!540688 e!3194665))

(declare-fun condSetEmpty!30469 () Bool)

(assert (=> start!540688 (= condSetEmpty!30469 (= baseZ!46 ((as const (Array Context!7234 Bool)) false)))))

(assert (=> start!540688 setRes!30470))

(declare-fun e!3194675 () Bool)

(assert (=> start!540688 e!3194675))

(declare-fun b!5122417 () Bool)

(assert (=> b!5122417 (= e!3194666 (not e!3194663))))

(declare-fun res!2181178 () Bool)

(assert (=> b!5122417 (=> res!2181178 e!3194663)))

(assert (=> b!5122417 (= res!2181178 (not (matchZipper!901 z!4463 lt!2111882)))))

(assert (=> b!5122417 (= lt!2111882 (getSuffix!3310 knownP!20 testedP!265))))

(assert (=> b!5122417 (isPrefix!5638 testedP!265 knownP!20)))

(declare-fun lt!2111879 () Unit!150405)

(assert (=> b!5122417 (= lt!2111879 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!773 knownP!20 testedP!265 input!5745))))

(declare-fun b!5122418 () Bool)

(declare-fun res!2181174 () Bool)

(assert (=> b!5122418 (=> res!2181174 e!3194663)))

(assert (=> b!5122418 (= res!2181174 (= lt!2111876 lt!2111886))))

(declare-fun b!5122419 () Bool)

(assert (=> b!5122419 (= e!3194674 e!3194671)))

(declare-fun res!2181183 () Bool)

(assert (=> b!5122419 (=> res!2181183 e!3194671)))

(assert (=> b!5122419 (= res!2181183 (not (= (head!10949 lt!2111882) lt!2111868)))))

(assert (=> b!5122419 (= lt!2111877 lt!2111883)))

(declare-fun lt!2111884 () Unit!150405)

(declare-fun lemmaSamePrefixThenSameSuffix!2656 (List!59389 List!59389 List!59389 List!59389 List!59389) Unit!150405)

(assert (=> b!5122419 (= lt!2111884 (lemmaSamePrefixThenSameSuffix!2656 testedP!265 lt!2111877 testedP!265 lt!2111883 input!5745))))

(declare-fun setElem!30470 () Context!7234)

(declare-fun setNonEmpty!30470 () Bool)

(declare-fun tp!1429150 () Bool)

(assert (=> setNonEmpty!30470 (= setRes!30469 (and tp!1429150 (inv!78763 setElem!30470) e!3194677))))

(declare-fun setRest!30469 () (InoxSet Context!7234))

(assert (=> setNonEmpty!30470 (= z!4463 ((_ map or) (store ((as const (Array Context!7234 Bool)) false) setElem!30470 true) setRest!30469))))

(declare-fun b!5122420 () Bool)

(declare-fun tp!1429149 () Bool)

(assert (=> b!5122420 (= e!3194676 tp!1429149)))

(declare-fun b!5122421 () Bool)

(assert (=> b!5122421 (= e!3194664 e!3194667)))

(declare-fun res!2181181 () Bool)

(assert (=> b!5122421 (=> res!2181181 e!3194667)))

(assert (=> b!5122421 (= res!2181181 (not (= lt!2111885 lt!2111875)))))

(declare-fun lt!2111867 () List!59389)

(assert (=> b!5122421 (= lt!2111867 lt!2111882)))

(declare-fun lt!2111887 () Unit!150405)

(assert (=> b!5122421 (= lt!2111887 (lemmaSamePrefixThenSameSuffix!2656 testedP!265 lt!2111867 testedP!265 lt!2111882 knownP!20))))

(assert (=> b!5122421 (= lt!2111869 (++!13046 testedP!265 lt!2111867))))

(assert (=> b!5122421 (= lt!2111867 (++!13046 lt!2111880 lt!2111875))))

(declare-fun lt!2111873 () Unit!150405)

(assert (=> b!5122421 (= lt!2111873 (lemmaConcatAssociativity!2790 testedP!265 lt!2111880 lt!2111875))))

(declare-fun b!5122422 () Bool)

(declare-fun res!2181185 () Bool)

(assert (=> b!5122422 (=> res!2181185 e!3194672)))

(assert (=> b!5122422 (= res!2181185 (not (= lt!2111872 knownP!20)))))

(declare-fun b!5122423 () Bool)

(assert (=> b!5122423 (= e!3194670 e!3194666)))

(declare-fun res!2181177 () Bool)

(assert (=> b!5122423 (=> (not res!2181177) (not e!3194666))))

(assert (=> b!5122423 (= res!2181177 (>= lt!2111886 lt!2111876))))

(assert (=> b!5122423 (= lt!2111876 (size!39539 testedP!265))))

(assert (=> b!5122423 (= lt!2111886 (size!39539 knownP!20))))

(declare-fun b!5122424 () Bool)

(declare-fun res!2181171 () Bool)

(assert (=> b!5122424 (=> res!2181171 e!3194663)))

(declare-fun lostCauseZipper!1115 ((InoxSet Context!7234)) Bool)

(assert (=> b!5122424 (= res!2181171 (lostCauseZipper!1115 z!4463))))

(declare-fun b!5122425 () Bool)

(declare-fun tp!1429155 () Bool)

(assert (=> b!5122425 (= e!3194675 (and tp_is_empty!37739 tp!1429155))))

(assert (= (and start!540688 res!2181186) b!5122413))

(assert (= (and b!5122413 res!2181188) b!5122423))

(assert (= (and b!5122423 res!2181177) b!5122410))

(assert (= (and b!5122410 res!2181172) b!5122417))

(assert (= (and b!5122417 (not res!2181178)) b!5122405))

(assert (= (and b!5122405 (not res!2181176)) b!5122424))

(assert (= (and b!5122424 (not res!2181171)) b!5122418))

(assert (= (and b!5122418 (not res!2181174)) b!5122415))

(assert (= (and b!5122415 (not res!2181173)) b!5122412))

(assert (= (and b!5122412 (not res!2181179)) b!5122408))

(assert (= (and b!5122408 (not res!2181182)) b!5122416))

(assert (= (and b!5122416 (not res!2181184)) b!5122406))

(assert (= (and b!5122406 (not res!2181187)) b!5122419))

(assert (= (and b!5122419 (not res!2181183)) b!5122411))

(assert (= (and b!5122411 (not res!2181175)) b!5122422))

(assert (= (and b!5122422 (not res!2181185)) b!5122407))

(assert (= (and b!5122407 (not res!2181180)) b!5122421))

(assert (= (and b!5122421 (not res!2181181)) b!5122404))

(get-info :version)

(assert (= (and start!540688 ((_ is Cons!59265) input!5745)) b!5122414))

(assert (= (and start!540688 condSetEmpty!30470) setIsEmpty!30469))

(assert (= (and start!540688 (not condSetEmpty!30470)) setNonEmpty!30470))

(assert (= setNonEmpty!30470 b!5122409))

(assert (= (and start!540688 ((_ is Cons!59265) testedP!265)) b!5122403))

(assert (= (and start!540688 condSetEmpty!30469) setIsEmpty!30470))

(assert (= (and start!540688 (not condSetEmpty!30469)) setNonEmpty!30469))

(assert (= setNonEmpty!30469 b!5122420))

(assert (= (and start!540688 ((_ is Cons!59265) knownP!20)) b!5122425))

(declare-fun m!6183812 () Bool)

(assert (=> start!540688 m!6183812))

(declare-fun m!6183814 () Bool)

(assert (=> b!5122408 m!6183814))

(declare-fun m!6183816 () Bool)

(assert (=> b!5122408 m!6183816))

(declare-fun m!6183818 () Bool)

(assert (=> b!5122424 m!6183818))

(declare-fun m!6183820 () Bool)

(assert (=> b!5122407 m!6183820))

(declare-fun m!6183822 () Bool)

(assert (=> b!5122416 m!6183822))

(declare-fun m!6183824 () Bool)

(assert (=> b!5122412 m!6183824))

(declare-fun m!6183826 () Bool)

(assert (=> b!5122412 m!6183826))

(declare-fun m!6183828 () Bool)

(assert (=> b!5122412 m!6183828))

(declare-fun m!6183830 () Bool)

(assert (=> b!5122412 m!6183830))

(declare-fun m!6183832 () Bool)

(assert (=> b!5122412 m!6183832))

(declare-fun m!6183834 () Bool)

(assert (=> b!5122412 m!6183834))

(declare-fun m!6183836 () Bool)

(assert (=> b!5122412 m!6183836))

(declare-fun m!6183838 () Bool)

(assert (=> b!5122412 m!6183838))

(declare-fun m!6183840 () Bool)

(assert (=> b!5122412 m!6183840))

(declare-fun m!6183842 () Bool)

(assert (=> b!5122412 m!6183842))

(declare-fun m!6183844 () Bool)

(assert (=> b!5122412 m!6183844))

(declare-fun m!6183846 () Bool)

(assert (=> b!5122412 m!6183846))

(declare-fun m!6183848 () Bool)

(assert (=> b!5122412 m!6183848))

(declare-fun m!6183850 () Bool)

(assert (=> b!5122417 m!6183850))

(declare-fun m!6183852 () Bool)

(assert (=> b!5122417 m!6183852))

(declare-fun m!6183854 () Bool)

(assert (=> b!5122417 m!6183854))

(declare-fun m!6183856 () Bool)

(assert (=> b!5122417 m!6183856))

(declare-fun m!6183858 () Bool)

(assert (=> setNonEmpty!30470 m!6183858))

(declare-fun m!6183860 () Bool)

(assert (=> b!5122423 m!6183860))

(declare-fun m!6183862 () Bool)

(assert (=> b!5122423 m!6183862))

(declare-fun m!6183864 () Bool)

(assert (=> b!5122421 m!6183864))

(declare-fun m!6183866 () Bool)

(assert (=> b!5122421 m!6183866))

(declare-fun m!6183868 () Bool)

(assert (=> b!5122421 m!6183868))

(declare-fun m!6183870 () Bool)

(assert (=> b!5122421 m!6183870))

(declare-fun m!6183872 () Bool)

(assert (=> b!5122413 m!6183872))

(declare-fun m!6183874 () Bool)

(assert (=> b!5122406 m!6183874))

(declare-fun m!6183876 () Bool)

(assert (=> b!5122406 m!6183876))

(declare-fun m!6183878 () Bool)

(assert (=> b!5122406 m!6183878))

(declare-fun m!6183880 () Bool)

(assert (=> b!5122404 m!6183880))

(declare-fun m!6183882 () Bool)

(assert (=> b!5122419 m!6183882))

(declare-fun m!6183884 () Bool)

(assert (=> b!5122419 m!6183884))

(declare-fun m!6183886 () Bool)

(assert (=> b!5122415 m!6183886))

(declare-fun m!6183888 () Bool)

(assert (=> b!5122405 m!6183888))

(declare-fun m!6183890 () Bool)

(assert (=> b!5122411 m!6183890))

(declare-fun m!6183892 () Bool)

(assert (=> b!5122411 m!6183892))

(declare-fun m!6183894 () Bool)

(assert (=> b!5122410 m!6183894))

(declare-fun m!6183896 () Bool)

(assert (=> setNonEmpty!30469 m!6183896))

(check-sat (not b!5122403) tp_is_empty!37739 (not b!5122408) (not b!5122410) (not b!5122417) (not b!5122405) (not b!5122419) (not b!5122411) (not b!5122420) (not start!540688) (not b!5122414) (not b!5122406) (not b!5122409) (not b!5122423) (not b!5122407) (not b!5122413) (not b!5122404) (not setNonEmpty!30470) (not b!5122425) (not b!5122412) (not b!5122424) (not b!5122416) (not b!5122415) (not setNonEmpty!30469) (not b!5122421))
(check-sat)
(get-model)

(declare-fun d!1655854 () Bool)

(declare-fun lt!2111897 () Int)

(assert (=> d!1655854 (>= lt!2111897 0)))

(declare-fun e!3194682 () Int)

(assert (=> d!1655854 (= lt!2111897 e!3194682)))

(declare-fun c!880280 () Bool)

(assert (=> d!1655854 (= c!880280 ((_ is Nil!59265) input!5745))))

(assert (=> d!1655854 (= (size!39539 input!5745) lt!2111897)))

(declare-fun b!5122434 () Bool)

(assert (=> b!5122434 (= e!3194682 0)))

(declare-fun b!5122435 () Bool)

(assert (=> b!5122435 (= e!3194682 (+ 1 (size!39539 (t!372408 input!5745))))))

(assert (= (and d!1655854 c!880280) b!5122434))

(assert (= (and d!1655854 (not c!880280)) b!5122435))

(declare-fun m!6183898 () Bool)

(assert (=> b!5122435 m!6183898))

(assert (=> b!5122415 d!1655854))

(declare-fun b!5122445 () Bool)

(declare-fun res!2181199 () Bool)

(declare-fun e!3194691 () Bool)

(assert (=> b!5122445 (=> (not res!2181199) (not e!3194691))))

(assert (=> b!5122445 (= res!2181199 (= (head!10949 testedP!265) (head!10949 input!5745)))))

(declare-fun b!5122444 () Bool)

(declare-fun e!3194689 () Bool)

(assert (=> b!5122444 (= e!3194689 e!3194691)))

(declare-fun res!2181200 () Bool)

(assert (=> b!5122444 (=> (not res!2181200) (not e!3194691))))

(assert (=> b!5122444 (= res!2181200 (not ((_ is Nil!59265) input!5745)))))

(declare-fun b!5122447 () Bool)

(declare-fun e!3194690 () Bool)

(assert (=> b!5122447 (= e!3194690 (>= (size!39539 input!5745) (size!39539 testedP!265)))))

(declare-fun d!1655856 () Bool)

(assert (=> d!1655856 e!3194690))

(declare-fun res!2181198 () Bool)

(assert (=> d!1655856 (=> res!2181198 e!3194690)))

(declare-fun lt!2111900 () Bool)

(assert (=> d!1655856 (= res!2181198 (not lt!2111900))))

(assert (=> d!1655856 (= lt!2111900 e!3194689)))

(declare-fun res!2181197 () Bool)

(assert (=> d!1655856 (=> res!2181197 e!3194689)))

(assert (=> d!1655856 (= res!2181197 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1655856 (= (isPrefix!5638 testedP!265 input!5745) lt!2111900)))

(declare-fun b!5122446 () Bool)

(assert (=> b!5122446 (= e!3194691 (isPrefix!5638 (tail!10084 testedP!265) (tail!10084 input!5745)))))

(assert (= (and d!1655856 (not res!2181197)) b!5122444))

(assert (= (and b!5122444 res!2181200) b!5122445))

(assert (= (and b!5122445 res!2181199) b!5122446))

(assert (= (and d!1655856 (not res!2181198)) b!5122447))

(declare-fun m!6183900 () Bool)

(assert (=> b!5122445 m!6183900))

(declare-fun m!6183902 () Bool)

(assert (=> b!5122445 m!6183902))

(assert (=> b!5122447 m!6183886))

(assert (=> b!5122447 m!6183860))

(declare-fun m!6183904 () Bool)

(assert (=> b!5122446 m!6183904))

(declare-fun m!6183906 () Bool)

(assert (=> b!5122446 m!6183906))

(assert (=> b!5122446 m!6183904))

(assert (=> b!5122446 m!6183906))

(declare-fun m!6183908 () Bool)

(assert (=> b!5122446 m!6183908))

(assert (=> start!540688 d!1655856))

(declare-fun bs!1193253 () Bool)

(declare-fun b!5122591 () Bool)

(declare-fun d!1655858 () Bool)

(assert (= bs!1193253 (and b!5122591 d!1655858)))

(declare-fun lambda!251486 () Int)

(declare-fun lambda!251485 () Int)

(assert (=> bs!1193253 (not (= lambda!251486 lambda!251485))))

(declare-fun bs!1193254 () Bool)

(declare-fun b!5122592 () Bool)

(assert (= bs!1193254 (and b!5122592 d!1655858)))

(declare-fun lambda!251487 () Int)

(assert (=> bs!1193254 (not (= lambda!251487 lambda!251485))))

(declare-fun bs!1193255 () Bool)

(assert (= bs!1193255 (and b!5122592 b!5122591)))

(assert (=> bs!1193255 (= lambda!251487 lambda!251486)))

(declare-fun bm!356671 () Bool)

(declare-datatypes ((List!59392 0))(
  ( (Nil!59268) (Cons!59268 (h!65716 Context!7234) (t!372413 List!59392)) )
))
(declare-fun call!356677 () List!59392)

(declare-fun toList!8268 ((InoxSet Context!7234)) List!59392)

(assert (=> bm!356671 (= call!356677 (toList!8268 z!4463))))

(declare-fun lt!2111986 () List!59392)

(declare-fun c!880333 () Bool)

(declare-fun call!356676 () Bool)

(declare-fun lt!2111992 () List!59392)

(declare-fun bm!356672 () Bool)

(declare-fun exists!1485 (List!59392 Int) Bool)

(assert (=> bm!356672 (= call!356676 (exists!1485 (ite c!880333 lt!2111992 lt!2111986) (ite c!880333 lambda!251486 lambda!251487)))))

(declare-fun lt!2111991 () Bool)

(declare-datatypes ((Option!14702 0))(
  ( (None!14701) (Some!14701 (v!50714 List!59389)) )
))
(declare-fun isEmpty!31944 (Option!14702) Bool)

(declare-fun getLanguageWitness!825 ((InoxSet Context!7234)) Option!14702)

(assert (=> d!1655858 (= lt!2111991 (isEmpty!31944 (getLanguageWitness!825 z!4463)))))

(declare-fun forall!13623 ((InoxSet Context!7234) Int) Bool)

(assert (=> d!1655858 (= lt!2111991 (forall!13623 z!4463 lambda!251485))))

(declare-fun lt!2111989 () Unit!150405)

(declare-fun e!3194781 () Unit!150405)

(assert (=> d!1655858 (= lt!2111989 e!3194781)))

(assert (=> d!1655858 (= c!880333 (not (forall!13623 z!4463 lambda!251485)))))

(assert (=> d!1655858 (= (lostCauseZipper!1115 z!4463) lt!2111991)))

(declare-fun Unit!150409 () Unit!150405)

(assert (=> b!5122591 (= e!3194781 Unit!150409)))

(assert (=> b!5122591 (= lt!2111992 call!356677)))

(declare-fun lt!2111993 () Unit!150405)

(declare-fun lemmaNotForallThenExists!342 (List!59392 Int) Unit!150405)

(assert (=> b!5122591 (= lt!2111993 (lemmaNotForallThenExists!342 lt!2111992 lambda!251485))))

(assert (=> b!5122591 call!356676))

(declare-fun lt!2111990 () Unit!150405)

(assert (=> b!5122591 (= lt!2111990 lt!2111993)))

(declare-fun Unit!150410 () Unit!150405)

(assert (=> b!5122592 (= e!3194781 Unit!150410)))

(assert (=> b!5122592 (= lt!2111986 call!356677)))

(declare-fun lt!2111988 () Unit!150405)

(declare-fun lemmaForallThenNotExists!325 (List!59392 Int) Unit!150405)

(assert (=> b!5122592 (= lt!2111988 (lemmaForallThenNotExists!325 lt!2111986 lambda!251485))))

(assert (=> b!5122592 (not call!356676)))

(declare-fun lt!2111987 () Unit!150405)

(assert (=> b!5122592 (= lt!2111987 lt!2111988)))

(assert (= (and d!1655858 c!880333) b!5122591))

(assert (= (and d!1655858 (not c!880333)) b!5122592))

(assert (= (or b!5122591 b!5122592) bm!356671))

(assert (= (or b!5122591 b!5122592) bm!356672))

(declare-fun m!6184140 () Bool)

(assert (=> bm!356672 m!6184140))

(declare-fun m!6184142 () Bool)

(assert (=> b!5122591 m!6184142))

(declare-fun m!6184144 () Bool)

(assert (=> d!1655858 m!6184144))

(assert (=> d!1655858 m!6184144))

(declare-fun m!6184146 () Bool)

(assert (=> d!1655858 m!6184146))

(declare-fun m!6184148 () Bool)

(assert (=> d!1655858 m!6184148))

(assert (=> d!1655858 m!6184148))

(declare-fun m!6184150 () Bool)

(assert (=> bm!356671 m!6184150))

(declare-fun m!6184152 () Bool)

(assert (=> b!5122592 m!6184152))

(assert (=> b!5122424 d!1655858))

(declare-fun d!1655944 () Bool)

(declare-fun c!880336 () Bool)

(assert (=> d!1655944 (= c!880336 ((_ is Cons!59265) testedP!265))))

(declare-fun e!3194784 () (InoxSet Context!7234))

(assert (=> d!1655944 (= (derivationZipper!130 baseZ!46 testedP!265) e!3194784)))

(declare-fun b!5122597 () Bool)

(assert (=> b!5122597 (= e!3194784 (derivationZipper!130 (derivationStepZipper!856 baseZ!46 (h!65713 testedP!265)) (t!372408 testedP!265)))))

(declare-fun b!5122598 () Bool)

(assert (=> b!5122598 (= e!3194784 baseZ!46)))

(assert (= (and d!1655944 c!880336) b!5122597))

(assert (= (and d!1655944 (not c!880336)) b!5122598))

(declare-fun m!6184154 () Bool)

(assert (=> b!5122597 m!6184154))

(assert (=> b!5122597 m!6184154))

(declare-fun m!6184156 () Bool)

(assert (=> b!5122597 m!6184156))

(assert (=> b!5122405 d!1655944))

(declare-fun lt!2111996 () List!59389)

(declare-fun b!5122610 () Bool)

(declare-fun e!3194789 () Bool)

(assert (=> b!5122610 (= e!3194789 (or (not (= lt!2111875 Nil!59265)) (= lt!2111996 lt!2111881)))))

(declare-fun b!5122609 () Bool)

(declare-fun res!2181258 () Bool)

(assert (=> b!5122609 (=> (not res!2181258) (not e!3194789))))

(assert (=> b!5122609 (= res!2181258 (= (size!39539 lt!2111996) (+ (size!39539 lt!2111881) (size!39539 lt!2111875))))))

(declare-fun d!1655946 () Bool)

(assert (=> d!1655946 e!3194789))

(declare-fun res!2181257 () Bool)

(assert (=> d!1655946 (=> (not res!2181257) (not e!3194789))))

(declare-fun content!10539 (List!59389) (InoxSet C!28732))

(assert (=> d!1655946 (= res!2181257 (= (content!10539 lt!2111996) ((_ map or) (content!10539 lt!2111881) (content!10539 lt!2111875))))))

(declare-fun e!3194790 () List!59389)

(assert (=> d!1655946 (= lt!2111996 e!3194790)))

(declare-fun c!880339 () Bool)

(assert (=> d!1655946 (= c!880339 ((_ is Nil!59265) lt!2111881))))

(assert (=> d!1655946 (= (++!13046 lt!2111881 lt!2111875) lt!2111996)))

(declare-fun b!5122607 () Bool)

(assert (=> b!5122607 (= e!3194790 lt!2111875)))

(declare-fun b!5122608 () Bool)

(assert (=> b!5122608 (= e!3194790 (Cons!59265 (h!65713 lt!2111881) (++!13046 (t!372408 lt!2111881) lt!2111875)))))

(assert (= (and d!1655946 c!880339) b!5122607))

(assert (= (and d!1655946 (not c!880339)) b!5122608))

(assert (= (and d!1655946 res!2181257) b!5122609))

(assert (= (and b!5122609 res!2181258) b!5122610))

(declare-fun m!6184158 () Bool)

(assert (=> b!5122609 m!6184158))

(assert (=> b!5122609 m!6183880))

(declare-fun m!6184160 () Bool)

(assert (=> b!5122609 m!6184160))

(declare-fun m!6184162 () Bool)

(assert (=> d!1655946 m!6184162))

(declare-fun m!6184164 () Bool)

(assert (=> d!1655946 m!6184164))

(declare-fun m!6184166 () Bool)

(assert (=> d!1655946 m!6184166))

(declare-fun m!6184168 () Bool)

(assert (=> b!5122608 m!6184168))

(assert (=> b!5122407 d!1655946))

(declare-fun b!5122614 () Bool)

(declare-fun lt!2111997 () List!59389)

(declare-fun e!3194791 () Bool)

(assert (=> b!5122614 (= e!3194791 (or (not (= lt!2111877 Nil!59265)) (= lt!2111997 testedP!265)))))

(declare-fun b!5122613 () Bool)

(declare-fun res!2181260 () Bool)

(assert (=> b!5122613 (=> (not res!2181260) (not e!3194791))))

(assert (=> b!5122613 (= res!2181260 (= (size!39539 lt!2111997) (+ (size!39539 testedP!265) (size!39539 lt!2111877))))))

(declare-fun d!1655948 () Bool)

(assert (=> d!1655948 e!3194791))

(declare-fun res!2181259 () Bool)

(assert (=> d!1655948 (=> (not res!2181259) (not e!3194791))))

(assert (=> d!1655948 (= res!2181259 (= (content!10539 lt!2111997) ((_ map or) (content!10539 testedP!265) (content!10539 lt!2111877))))))

(declare-fun e!3194792 () List!59389)

(assert (=> d!1655948 (= lt!2111997 e!3194792)))

(declare-fun c!880340 () Bool)

(assert (=> d!1655948 (= c!880340 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1655948 (= (++!13046 testedP!265 lt!2111877) lt!2111997)))

(declare-fun b!5122611 () Bool)

(assert (=> b!5122611 (= e!3194792 lt!2111877)))

(declare-fun b!5122612 () Bool)

(assert (=> b!5122612 (= e!3194792 (Cons!59265 (h!65713 testedP!265) (++!13046 (t!372408 testedP!265) lt!2111877)))))

(assert (= (and d!1655948 c!880340) b!5122611))

(assert (= (and d!1655948 (not c!880340)) b!5122612))

(assert (= (and d!1655948 res!2181259) b!5122613))

(assert (= (and b!5122613 res!2181260) b!5122614))

(declare-fun m!6184170 () Bool)

(assert (=> b!5122613 m!6184170))

(assert (=> b!5122613 m!6183860))

(declare-fun m!6184172 () Bool)

(assert (=> b!5122613 m!6184172))

(declare-fun m!6184174 () Bool)

(assert (=> d!1655948 m!6184174))

(declare-fun m!6184176 () Bool)

(assert (=> d!1655948 m!6184176))

(declare-fun m!6184178 () Bool)

(assert (=> d!1655948 m!6184178))

(declare-fun m!6184180 () Bool)

(assert (=> b!5122612 m!6184180))

(assert (=> b!5122406 d!1655948))

(declare-fun e!3194793 () Bool)

(declare-fun lt!2111998 () List!59389)

(declare-fun b!5122618 () Bool)

(assert (=> b!5122618 (= e!3194793 (or (not (= lt!2111870 Nil!59265)) (= lt!2111998 lt!2111882)))))

(declare-fun b!5122617 () Bool)

(declare-fun res!2181262 () Bool)

(assert (=> b!5122617 (=> (not res!2181262) (not e!3194793))))

(assert (=> b!5122617 (= res!2181262 (= (size!39539 lt!2111998) (+ (size!39539 lt!2111882) (size!39539 lt!2111870))))))

(declare-fun d!1655950 () Bool)

(assert (=> d!1655950 e!3194793))

(declare-fun res!2181261 () Bool)

(assert (=> d!1655950 (=> (not res!2181261) (not e!3194793))))

(assert (=> d!1655950 (= res!2181261 (= (content!10539 lt!2111998) ((_ map or) (content!10539 lt!2111882) (content!10539 lt!2111870))))))

(declare-fun e!3194794 () List!59389)

(assert (=> d!1655950 (= lt!2111998 e!3194794)))

(declare-fun c!880341 () Bool)

(assert (=> d!1655950 (= c!880341 ((_ is Nil!59265) lt!2111882))))

(assert (=> d!1655950 (= (++!13046 lt!2111882 lt!2111870) lt!2111998)))

(declare-fun b!5122615 () Bool)

(assert (=> b!5122615 (= e!3194794 lt!2111870)))

(declare-fun b!5122616 () Bool)

(assert (=> b!5122616 (= e!3194794 (Cons!59265 (h!65713 lt!2111882) (++!13046 (t!372408 lt!2111882) lt!2111870)))))

(assert (= (and d!1655950 c!880341) b!5122615))

(assert (= (and d!1655950 (not c!880341)) b!5122616))

(assert (= (and d!1655950 res!2181261) b!5122617))

(assert (= (and b!5122617 res!2181262) b!5122618))

(declare-fun m!6184182 () Bool)

(assert (=> b!5122617 m!6184182))

(declare-fun m!6184184 () Bool)

(assert (=> b!5122617 m!6184184))

(declare-fun m!6184186 () Bool)

(assert (=> b!5122617 m!6184186))

(declare-fun m!6184188 () Bool)

(assert (=> d!1655950 m!6184188))

(declare-fun m!6184190 () Bool)

(assert (=> d!1655950 m!6184190))

(declare-fun m!6184192 () Bool)

(assert (=> d!1655950 m!6184192))

(declare-fun m!6184194 () Bool)

(assert (=> b!5122616 m!6184194))

(assert (=> b!5122406 d!1655950))

(declare-fun d!1655952 () Bool)

(assert (=> d!1655952 (= (++!13046 (++!13046 testedP!265 lt!2111882) lt!2111870) (++!13046 testedP!265 (++!13046 lt!2111882 lt!2111870)))))

(declare-fun lt!2112001 () Unit!150405)

(declare-fun choose!37670 (List!59389 List!59389 List!59389) Unit!150405)

(assert (=> d!1655952 (= lt!2112001 (choose!37670 testedP!265 lt!2111882 lt!2111870))))

(assert (=> d!1655952 (= (lemmaConcatAssociativity!2790 testedP!265 lt!2111882 lt!2111870) lt!2112001)))

(declare-fun bs!1193256 () Bool)

(assert (= bs!1193256 d!1655952))

(assert (=> bs!1193256 m!6183876))

(declare-fun m!6184196 () Bool)

(assert (=> bs!1193256 m!6184196))

(assert (=> bs!1193256 m!6183876))

(declare-fun m!6184198 () Bool)

(assert (=> bs!1193256 m!6184198))

(assert (=> bs!1193256 m!6183816))

(assert (=> bs!1193256 m!6183816))

(declare-fun m!6184200 () Bool)

(assert (=> bs!1193256 m!6184200))

(assert (=> b!5122406 d!1655952))

(declare-fun e!3194795 () Bool)

(declare-fun lt!2112002 () List!59389)

(declare-fun b!5122622 () Bool)

(assert (=> b!5122622 (= e!3194795 (or (not (= lt!2111883 Nil!59265)) (= lt!2112002 testedP!265)))))

(declare-fun b!5122621 () Bool)

(declare-fun res!2181264 () Bool)

(assert (=> b!5122621 (=> (not res!2181264) (not e!3194795))))

(assert (=> b!5122621 (= res!2181264 (= (size!39539 lt!2112002) (+ (size!39539 testedP!265) (size!39539 lt!2111883))))))

(declare-fun d!1655954 () Bool)

(assert (=> d!1655954 e!3194795))

(declare-fun res!2181263 () Bool)

(assert (=> d!1655954 (=> (not res!2181263) (not e!3194795))))

(assert (=> d!1655954 (= res!2181263 (= (content!10539 lt!2112002) ((_ map or) (content!10539 testedP!265) (content!10539 lt!2111883))))))

(declare-fun e!3194796 () List!59389)

(assert (=> d!1655954 (= lt!2112002 e!3194796)))

(declare-fun c!880342 () Bool)

(assert (=> d!1655954 (= c!880342 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1655954 (= (++!13046 testedP!265 lt!2111883) lt!2112002)))

(declare-fun b!5122619 () Bool)

(assert (=> b!5122619 (= e!3194796 lt!2111883)))

(declare-fun b!5122620 () Bool)

(assert (=> b!5122620 (= e!3194796 (Cons!59265 (h!65713 testedP!265) (++!13046 (t!372408 testedP!265) lt!2111883)))))

(assert (= (and d!1655954 c!880342) b!5122619))

(assert (= (and d!1655954 (not c!880342)) b!5122620))

(assert (= (and d!1655954 res!2181263) b!5122621))

(assert (= (and b!5122621 res!2181264) b!5122622))

(declare-fun m!6184202 () Bool)

(assert (=> b!5122621 m!6184202))

(assert (=> b!5122621 m!6183860))

(declare-fun m!6184204 () Bool)

(assert (=> b!5122621 m!6184204))

(declare-fun m!6184206 () Bool)

(assert (=> d!1655954 m!6184206))

(assert (=> d!1655954 m!6184176))

(declare-fun m!6184208 () Bool)

(assert (=> d!1655954 m!6184208))

(declare-fun m!6184210 () Bool)

(assert (=> b!5122620 m!6184210))

(assert (=> b!5122416 d!1655954))

(declare-fun d!1655956 () Bool)

(declare-fun lambda!251490 () Int)

(declare-fun forall!13624 (List!59390 Int) Bool)

(assert (=> d!1655956 (= (inv!78763 setElem!30469) (forall!13624 (exprs!4117 setElem!30469) lambda!251490))))

(declare-fun bs!1193257 () Bool)

(assert (= bs!1193257 d!1655956))

(declare-fun m!6184212 () Bool)

(assert (=> bs!1193257 m!6184212))

(assert (=> setNonEmpty!30469 d!1655956))

(declare-fun d!1655958 () Bool)

(declare-fun c!880345 () Bool)

(declare-fun isEmpty!31945 (List!59389) Bool)

(assert (=> d!1655958 (= c!880345 (isEmpty!31945 lt!2111882))))

(declare-fun e!3194799 () Bool)

(assert (=> d!1655958 (= (matchZipper!901 z!4463 lt!2111882) e!3194799)))

(declare-fun b!5122627 () Bool)

(declare-fun nullableZipper!1032 ((InoxSet Context!7234)) Bool)

(assert (=> b!5122627 (= e!3194799 (nullableZipper!1032 z!4463))))

(declare-fun b!5122628 () Bool)

(assert (=> b!5122628 (= e!3194799 (matchZipper!901 (derivationStepZipper!856 z!4463 (head!10949 lt!2111882)) (tail!10084 lt!2111882)))))

(assert (= (and d!1655958 c!880345) b!5122627))

(assert (= (and d!1655958 (not c!880345)) b!5122628))

(declare-fun m!6184214 () Bool)

(assert (=> d!1655958 m!6184214))

(declare-fun m!6184216 () Bool)

(assert (=> b!5122627 m!6184216))

(assert (=> b!5122628 m!6183882))

(assert (=> b!5122628 m!6183882))

(declare-fun m!6184218 () Bool)

(assert (=> b!5122628 m!6184218))

(assert (=> b!5122628 m!6183892))

(assert (=> b!5122628 m!6184218))

(assert (=> b!5122628 m!6183892))

(declare-fun m!6184220 () Bool)

(assert (=> b!5122628 m!6184220))

(assert (=> b!5122417 d!1655958))

(declare-fun d!1655960 () Bool)

(declare-fun lt!2112005 () List!59389)

(assert (=> d!1655960 (= (++!13046 testedP!265 lt!2112005) knownP!20)))

(declare-fun e!3194802 () List!59389)

(assert (=> d!1655960 (= lt!2112005 e!3194802)))

(declare-fun c!880348 () Bool)

(assert (=> d!1655960 (= c!880348 ((_ is Cons!59265) testedP!265))))

(assert (=> d!1655960 (>= (size!39539 knownP!20) (size!39539 testedP!265))))

(assert (=> d!1655960 (= (getSuffix!3310 knownP!20 testedP!265) lt!2112005)))

(declare-fun b!5122633 () Bool)

(assert (=> b!5122633 (= e!3194802 (getSuffix!3310 (tail!10084 knownP!20) (t!372408 testedP!265)))))

(declare-fun b!5122634 () Bool)

(assert (=> b!5122634 (= e!3194802 knownP!20)))

(assert (= (and d!1655960 c!880348) b!5122633))

(assert (= (and d!1655960 (not c!880348)) b!5122634))

(declare-fun m!6184222 () Bool)

(assert (=> d!1655960 m!6184222))

(assert (=> d!1655960 m!6183862))

(assert (=> d!1655960 m!6183860))

(declare-fun m!6184224 () Bool)

(assert (=> b!5122633 m!6184224))

(assert (=> b!5122633 m!6184224))

(declare-fun m!6184226 () Bool)

(assert (=> b!5122633 m!6184226))

(assert (=> b!5122417 d!1655960))

(declare-fun b!5122636 () Bool)

(declare-fun res!2181267 () Bool)

(declare-fun e!3194805 () Bool)

(assert (=> b!5122636 (=> (not res!2181267) (not e!3194805))))

(assert (=> b!5122636 (= res!2181267 (= (head!10949 testedP!265) (head!10949 knownP!20)))))

(declare-fun b!5122635 () Bool)

(declare-fun e!3194803 () Bool)

(assert (=> b!5122635 (= e!3194803 e!3194805)))

(declare-fun res!2181268 () Bool)

(assert (=> b!5122635 (=> (not res!2181268) (not e!3194805))))

(assert (=> b!5122635 (= res!2181268 (not ((_ is Nil!59265) knownP!20)))))

(declare-fun b!5122638 () Bool)

(declare-fun e!3194804 () Bool)

(assert (=> b!5122638 (= e!3194804 (>= (size!39539 knownP!20) (size!39539 testedP!265)))))

(declare-fun d!1655962 () Bool)

(assert (=> d!1655962 e!3194804))

(declare-fun res!2181266 () Bool)

(assert (=> d!1655962 (=> res!2181266 e!3194804)))

(declare-fun lt!2112006 () Bool)

(assert (=> d!1655962 (= res!2181266 (not lt!2112006))))

(assert (=> d!1655962 (= lt!2112006 e!3194803)))

(declare-fun res!2181265 () Bool)

(assert (=> d!1655962 (=> res!2181265 e!3194803)))

(assert (=> d!1655962 (= res!2181265 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1655962 (= (isPrefix!5638 testedP!265 knownP!20) lt!2112006)))

(declare-fun b!5122637 () Bool)

(assert (=> b!5122637 (= e!3194805 (isPrefix!5638 (tail!10084 testedP!265) (tail!10084 knownP!20)))))

(assert (= (and d!1655962 (not res!2181265)) b!5122635))

(assert (= (and b!5122635 res!2181268) b!5122636))

(assert (= (and b!5122636 res!2181267) b!5122637))

(assert (= (and d!1655962 (not res!2181266)) b!5122638))

(assert (=> b!5122636 m!6183900))

(declare-fun m!6184228 () Bool)

(assert (=> b!5122636 m!6184228))

(assert (=> b!5122638 m!6183862))

(assert (=> b!5122638 m!6183860))

(assert (=> b!5122637 m!6183904))

(assert (=> b!5122637 m!6184224))

(assert (=> b!5122637 m!6183904))

(assert (=> b!5122637 m!6184224))

(declare-fun m!6184230 () Bool)

(assert (=> b!5122637 m!6184230))

(assert (=> b!5122417 d!1655962))

(declare-fun d!1655964 () Bool)

(assert (=> d!1655964 (isPrefix!5638 testedP!265 knownP!20)))

(declare-fun lt!2112009 () Unit!150405)

(declare-fun choose!37672 (List!59389 List!59389 List!59389) Unit!150405)

(assert (=> d!1655964 (= lt!2112009 (choose!37672 knownP!20 testedP!265 input!5745))))

(assert (=> d!1655964 (isPrefix!5638 knownP!20 input!5745)))

(assert (=> d!1655964 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!773 knownP!20 testedP!265 input!5745) lt!2112009)))

(declare-fun bs!1193258 () Bool)

(assert (= bs!1193258 d!1655964))

(assert (=> bs!1193258 m!6183854))

(declare-fun m!6184232 () Bool)

(assert (=> bs!1193258 m!6184232))

(assert (=> bs!1193258 m!6183872))

(assert (=> b!5122417 d!1655964))

(declare-fun d!1655966 () Bool)

(assert (=> d!1655966 (= (head!10949 lt!2111882) (h!65713 lt!2111882))))

(assert (=> b!5122419 d!1655966))

(declare-fun d!1655968 () Bool)

(assert (=> d!1655968 (= lt!2111877 lt!2111883)))

(declare-fun lt!2112012 () Unit!150405)

(declare-fun choose!37673 (List!59389 List!59389 List!59389 List!59389 List!59389) Unit!150405)

(assert (=> d!1655968 (= lt!2112012 (choose!37673 testedP!265 lt!2111877 testedP!265 lt!2111883 input!5745))))

(assert (=> d!1655968 (isPrefix!5638 testedP!265 input!5745)))

(assert (=> d!1655968 (= (lemmaSamePrefixThenSameSuffix!2656 testedP!265 lt!2111877 testedP!265 lt!2111883 input!5745) lt!2112012)))

(declare-fun bs!1193259 () Bool)

(assert (= bs!1193259 d!1655968))

(declare-fun m!6184234 () Bool)

(assert (=> bs!1193259 m!6184234))

(assert (=> bs!1193259 m!6183812))

(assert (=> b!5122419 d!1655968))

(declare-fun b!5122642 () Bool)

(declare-fun lt!2112013 () List!59389)

(declare-fun e!3194806 () Bool)

(assert (=> b!5122642 (= e!3194806 (or (not (= lt!2111870 Nil!59265)) (= lt!2112013 lt!2111872)))))

(declare-fun b!5122641 () Bool)

(declare-fun res!2181270 () Bool)

(assert (=> b!5122641 (=> (not res!2181270) (not e!3194806))))

(assert (=> b!5122641 (= res!2181270 (= (size!39539 lt!2112013) (+ (size!39539 lt!2111872) (size!39539 lt!2111870))))))

(declare-fun d!1655970 () Bool)

(assert (=> d!1655970 e!3194806))

(declare-fun res!2181269 () Bool)

(assert (=> d!1655970 (=> (not res!2181269) (not e!3194806))))

(assert (=> d!1655970 (= res!2181269 (= (content!10539 lt!2112013) ((_ map or) (content!10539 lt!2111872) (content!10539 lt!2111870))))))

(declare-fun e!3194807 () List!59389)

(assert (=> d!1655970 (= lt!2112013 e!3194807)))

(declare-fun c!880349 () Bool)

(assert (=> d!1655970 (= c!880349 ((_ is Nil!59265) lt!2111872))))

(assert (=> d!1655970 (= (++!13046 lt!2111872 lt!2111870) lt!2112013)))

(declare-fun b!5122639 () Bool)

(assert (=> b!5122639 (= e!3194807 lt!2111870)))

(declare-fun b!5122640 () Bool)

(assert (=> b!5122640 (= e!3194807 (Cons!59265 (h!65713 lt!2111872) (++!13046 (t!372408 lt!2111872) lt!2111870)))))

(assert (= (and d!1655970 c!880349) b!5122639))

(assert (= (and d!1655970 (not c!880349)) b!5122640))

(assert (= (and d!1655970 res!2181269) b!5122641))

(assert (= (and b!5122641 res!2181270) b!5122642))

(declare-fun m!6184236 () Bool)

(assert (=> b!5122641 m!6184236))

(declare-fun m!6184238 () Bool)

(assert (=> b!5122641 m!6184238))

(assert (=> b!5122641 m!6184186))

(declare-fun m!6184240 () Bool)

(assert (=> d!1655970 m!6184240))

(declare-fun m!6184242 () Bool)

(assert (=> d!1655970 m!6184242))

(assert (=> d!1655970 m!6184192))

(declare-fun m!6184244 () Bool)

(assert (=> b!5122640 m!6184244))

(assert (=> b!5122408 d!1655970))

(declare-fun lt!2112014 () List!59389)

(declare-fun e!3194808 () Bool)

(declare-fun b!5122646 () Bool)

(assert (=> b!5122646 (= e!3194808 (or (not (= lt!2111882 Nil!59265)) (= lt!2112014 testedP!265)))))

(declare-fun b!5122645 () Bool)

(declare-fun res!2181272 () Bool)

(assert (=> b!5122645 (=> (not res!2181272) (not e!3194808))))

(assert (=> b!5122645 (= res!2181272 (= (size!39539 lt!2112014) (+ (size!39539 testedP!265) (size!39539 lt!2111882))))))

(declare-fun d!1655972 () Bool)

(assert (=> d!1655972 e!3194808))

(declare-fun res!2181271 () Bool)

(assert (=> d!1655972 (=> (not res!2181271) (not e!3194808))))

(assert (=> d!1655972 (= res!2181271 (= (content!10539 lt!2112014) ((_ map or) (content!10539 testedP!265) (content!10539 lt!2111882))))))

(declare-fun e!3194809 () List!59389)

(assert (=> d!1655972 (= lt!2112014 e!3194809)))

(declare-fun c!880350 () Bool)

(assert (=> d!1655972 (= c!880350 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1655972 (= (++!13046 testedP!265 lt!2111882) lt!2112014)))

(declare-fun b!5122643 () Bool)

(assert (=> b!5122643 (= e!3194809 lt!2111882)))

(declare-fun b!5122644 () Bool)

(assert (=> b!5122644 (= e!3194809 (Cons!59265 (h!65713 testedP!265) (++!13046 (t!372408 testedP!265) lt!2111882)))))

(assert (= (and d!1655972 c!880350) b!5122643))

(assert (= (and d!1655972 (not c!880350)) b!5122644))

(assert (= (and d!1655972 res!2181271) b!5122645))

(assert (= (and b!5122645 res!2181272) b!5122646))

(declare-fun m!6184246 () Bool)

(assert (=> b!5122645 m!6184246))

(assert (=> b!5122645 m!6183860))

(assert (=> b!5122645 m!6184184))

(declare-fun m!6184248 () Bool)

(assert (=> d!1655972 m!6184248))

(assert (=> d!1655972 m!6184176))

(assert (=> d!1655972 m!6184190))

(declare-fun m!6184250 () Bool)

(assert (=> b!5122644 m!6184250))

(assert (=> b!5122408 d!1655972))

(declare-fun d!1655974 () Bool)

(declare-fun c!880351 () Bool)

(assert (=> d!1655974 (= c!880351 (isEmpty!31945 knownP!20))))

(declare-fun e!3194810 () Bool)

(assert (=> d!1655974 (= (matchZipper!901 baseZ!46 knownP!20) e!3194810)))

(declare-fun b!5122647 () Bool)

(assert (=> b!5122647 (= e!3194810 (nullableZipper!1032 baseZ!46))))

(declare-fun b!5122648 () Bool)

(assert (=> b!5122648 (= e!3194810 (matchZipper!901 (derivationStepZipper!856 baseZ!46 (head!10949 knownP!20)) (tail!10084 knownP!20)))))

(assert (= (and d!1655974 c!880351) b!5122647))

(assert (= (and d!1655974 (not c!880351)) b!5122648))

(declare-fun m!6184252 () Bool)

(assert (=> d!1655974 m!6184252))

(declare-fun m!6184254 () Bool)

(assert (=> b!5122647 m!6184254))

(assert (=> b!5122648 m!6184228))

(assert (=> b!5122648 m!6184228))

(declare-fun m!6184256 () Bool)

(assert (=> b!5122648 m!6184256))

(assert (=> b!5122648 m!6184224))

(assert (=> b!5122648 m!6184256))

(assert (=> b!5122648 m!6184224))

(declare-fun m!6184258 () Bool)

(assert (=> b!5122648 m!6184258))

(assert (=> b!5122410 d!1655974))

(declare-fun bs!1193260 () Bool)

(declare-fun d!1655976 () Bool)

(assert (= bs!1193260 (and d!1655976 d!1655956)))

(declare-fun lambda!251491 () Int)

(assert (=> bs!1193260 (= lambda!251491 lambda!251490)))

(assert (=> d!1655976 (= (inv!78763 setElem!30470) (forall!13624 (exprs!4117 setElem!30470) lambda!251491))))

(declare-fun bs!1193261 () Bool)

(assert (= bs!1193261 d!1655976))

(declare-fun m!6184260 () Bool)

(assert (=> bs!1193261 m!6184260))

(assert (=> setNonEmpty!30470 d!1655976))

(declare-fun d!1655978 () Bool)

(assert (=> d!1655978 (= ($colon$colon!1147 lt!2111885 lt!2111868) (Cons!59265 lt!2111868 lt!2111885))))

(assert (=> b!5122411 d!1655978))

(declare-fun d!1655980 () Bool)

(assert (=> d!1655980 (= (tail!10084 lt!2111882) (t!372408 lt!2111882))))

(assert (=> b!5122411 d!1655980))

(declare-fun d!1655982 () Bool)

(assert (=> d!1655982 (= lt!2111867 lt!2111882)))

(declare-fun lt!2112015 () Unit!150405)

(assert (=> d!1655982 (= lt!2112015 (choose!37673 testedP!265 lt!2111867 testedP!265 lt!2111882 knownP!20))))

(assert (=> d!1655982 (isPrefix!5638 testedP!265 knownP!20)))

(assert (=> d!1655982 (= (lemmaSamePrefixThenSameSuffix!2656 testedP!265 lt!2111867 testedP!265 lt!2111882 knownP!20) lt!2112015)))

(declare-fun bs!1193262 () Bool)

(assert (= bs!1193262 d!1655982))

(declare-fun m!6184262 () Bool)

(assert (=> bs!1193262 m!6184262))

(assert (=> bs!1193262 m!6183854))

(assert (=> b!5122421 d!1655982))

(declare-fun lt!2112016 () List!59389)

(declare-fun e!3194811 () Bool)

(declare-fun b!5122652 () Bool)

(assert (=> b!5122652 (= e!3194811 (or (not (= lt!2111867 Nil!59265)) (= lt!2112016 testedP!265)))))

(declare-fun b!5122651 () Bool)

(declare-fun res!2181274 () Bool)

(assert (=> b!5122651 (=> (not res!2181274) (not e!3194811))))

(assert (=> b!5122651 (= res!2181274 (= (size!39539 lt!2112016) (+ (size!39539 testedP!265) (size!39539 lt!2111867))))))

(declare-fun d!1655984 () Bool)

(assert (=> d!1655984 e!3194811))

(declare-fun res!2181273 () Bool)

(assert (=> d!1655984 (=> (not res!2181273) (not e!3194811))))

(assert (=> d!1655984 (= res!2181273 (= (content!10539 lt!2112016) ((_ map or) (content!10539 testedP!265) (content!10539 lt!2111867))))))

(declare-fun e!3194812 () List!59389)

(assert (=> d!1655984 (= lt!2112016 e!3194812)))

(declare-fun c!880352 () Bool)

(assert (=> d!1655984 (= c!880352 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1655984 (= (++!13046 testedP!265 lt!2111867) lt!2112016)))

(declare-fun b!5122649 () Bool)

(assert (=> b!5122649 (= e!3194812 lt!2111867)))

(declare-fun b!5122650 () Bool)

(assert (=> b!5122650 (= e!3194812 (Cons!59265 (h!65713 testedP!265) (++!13046 (t!372408 testedP!265) lt!2111867)))))

(assert (= (and d!1655984 c!880352) b!5122649))

(assert (= (and d!1655984 (not c!880352)) b!5122650))

(assert (= (and d!1655984 res!2181273) b!5122651))

(assert (= (and b!5122651 res!2181274) b!5122652))

(declare-fun m!6184264 () Bool)

(assert (=> b!5122651 m!6184264))

(assert (=> b!5122651 m!6183860))

(declare-fun m!6184266 () Bool)

(assert (=> b!5122651 m!6184266))

(declare-fun m!6184268 () Bool)

(assert (=> d!1655984 m!6184268))

(assert (=> d!1655984 m!6184176))

(declare-fun m!6184270 () Bool)

(assert (=> d!1655984 m!6184270))

(declare-fun m!6184272 () Bool)

(assert (=> b!5122650 m!6184272))

(assert (=> b!5122421 d!1655984))

(declare-fun e!3194813 () Bool)

(declare-fun lt!2112017 () List!59389)

(declare-fun b!5122656 () Bool)

(assert (=> b!5122656 (= e!3194813 (or (not (= lt!2111875 Nil!59265)) (= lt!2112017 lt!2111880)))))

(declare-fun b!5122655 () Bool)

(declare-fun res!2181276 () Bool)

(assert (=> b!5122655 (=> (not res!2181276) (not e!3194813))))

(assert (=> b!5122655 (= res!2181276 (= (size!39539 lt!2112017) (+ (size!39539 lt!2111880) (size!39539 lt!2111875))))))

(declare-fun d!1655986 () Bool)

(assert (=> d!1655986 e!3194813))

(declare-fun res!2181275 () Bool)

(assert (=> d!1655986 (=> (not res!2181275) (not e!3194813))))

(assert (=> d!1655986 (= res!2181275 (= (content!10539 lt!2112017) ((_ map or) (content!10539 lt!2111880) (content!10539 lt!2111875))))))

(declare-fun e!3194814 () List!59389)

(assert (=> d!1655986 (= lt!2112017 e!3194814)))

(declare-fun c!880353 () Bool)

(assert (=> d!1655986 (= c!880353 ((_ is Nil!59265) lt!2111880))))

(assert (=> d!1655986 (= (++!13046 lt!2111880 lt!2111875) lt!2112017)))

(declare-fun b!5122653 () Bool)

(assert (=> b!5122653 (= e!3194814 lt!2111875)))

(declare-fun b!5122654 () Bool)

(assert (=> b!5122654 (= e!3194814 (Cons!59265 (h!65713 lt!2111880) (++!13046 (t!372408 lt!2111880) lt!2111875)))))

(assert (= (and d!1655986 c!880353) b!5122653))

(assert (= (and d!1655986 (not c!880353)) b!5122654))

(assert (= (and d!1655986 res!2181275) b!5122655))

(assert (= (and b!5122655 res!2181276) b!5122656))

(declare-fun m!6184274 () Bool)

(assert (=> b!5122655 m!6184274))

(declare-fun m!6184276 () Bool)

(assert (=> b!5122655 m!6184276))

(assert (=> b!5122655 m!6184160))

(declare-fun m!6184278 () Bool)

(assert (=> d!1655986 m!6184278))

(declare-fun m!6184280 () Bool)

(assert (=> d!1655986 m!6184280))

(assert (=> d!1655986 m!6184166))

(declare-fun m!6184282 () Bool)

(assert (=> b!5122654 m!6184282))

(assert (=> b!5122421 d!1655986))

(declare-fun d!1655988 () Bool)

(assert (=> d!1655988 (= (++!13046 (++!13046 testedP!265 lt!2111880) lt!2111875) (++!13046 testedP!265 (++!13046 lt!2111880 lt!2111875)))))

(declare-fun lt!2112018 () Unit!150405)

(assert (=> d!1655988 (= lt!2112018 (choose!37670 testedP!265 lt!2111880 lt!2111875))))

(assert (=> d!1655988 (= (lemmaConcatAssociativity!2790 testedP!265 lt!2111880 lt!2111875) lt!2112018)))

(declare-fun bs!1193263 () Bool)

(assert (= bs!1193263 d!1655988))

(assert (=> bs!1193263 m!6183868))

(declare-fun m!6184284 () Bool)

(assert (=> bs!1193263 m!6184284))

(assert (=> bs!1193263 m!6183868))

(declare-fun m!6184286 () Bool)

(assert (=> bs!1193263 m!6184286))

(assert (=> bs!1193263 m!6183828))

(assert (=> bs!1193263 m!6183828))

(declare-fun m!6184288 () Bool)

(assert (=> bs!1193263 m!6184288))

(assert (=> b!5122421 d!1655988))

(declare-fun d!1655990 () Bool)

(declare-fun lt!2112019 () List!59389)

(assert (=> d!1655990 (= (++!13046 testedP!265 lt!2112019) input!5745)))

(declare-fun e!3194815 () List!59389)

(assert (=> d!1655990 (= lt!2112019 e!3194815)))

(declare-fun c!880354 () Bool)

(assert (=> d!1655990 (= c!880354 ((_ is Cons!59265) testedP!265))))

(assert (=> d!1655990 (>= (size!39539 input!5745) (size!39539 testedP!265))))

(assert (=> d!1655990 (= (getSuffix!3310 input!5745 testedP!265) lt!2112019)))

(declare-fun b!5122657 () Bool)

(assert (=> b!5122657 (= e!3194815 (getSuffix!3310 (tail!10084 input!5745) (t!372408 testedP!265)))))

(declare-fun b!5122658 () Bool)

(assert (=> b!5122658 (= e!3194815 input!5745)))

(assert (= (and d!1655990 c!880354) b!5122657))

(assert (= (and d!1655990 (not c!880354)) b!5122658))

(declare-fun m!6184290 () Bool)

(assert (=> d!1655990 m!6184290))

(assert (=> d!1655990 m!6183886))

(assert (=> d!1655990 m!6183860))

(assert (=> b!5122657 m!6183906))

(assert (=> b!5122657 m!6183906))

(declare-fun m!6184292 () Bool)

(assert (=> b!5122657 m!6184292))

(assert (=> b!5122412 d!1655990))

(declare-fun b!5122660 () Bool)

(declare-fun res!2181279 () Bool)

(declare-fun e!3194818 () Bool)

(assert (=> b!5122660 (=> (not res!2181279) (not e!3194818))))

(assert (=> b!5122660 (= res!2181279 (= (head!10949 lt!2111881) (head!10949 input!5745)))))

(declare-fun b!5122659 () Bool)

(declare-fun e!3194816 () Bool)

(assert (=> b!5122659 (= e!3194816 e!3194818)))

(declare-fun res!2181280 () Bool)

(assert (=> b!5122659 (=> (not res!2181280) (not e!3194818))))

(assert (=> b!5122659 (= res!2181280 (not ((_ is Nil!59265) input!5745)))))

(declare-fun b!5122662 () Bool)

(declare-fun e!3194817 () Bool)

(assert (=> b!5122662 (= e!3194817 (>= (size!39539 input!5745) (size!39539 lt!2111881)))))

(declare-fun d!1655992 () Bool)

(assert (=> d!1655992 e!3194817))

(declare-fun res!2181278 () Bool)

(assert (=> d!1655992 (=> res!2181278 e!3194817)))

(declare-fun lt!2112020 () Bool)

(assert (=> d!1655992 (= res!2181278 (not lt!2112020))))

(assert (=> d!1655992 (= lt!2112020 e!3194816)))

(declare-fun res!2181277 () Bool)

(assert (=> d!1655992 (=> res!2181277 e!3194816)))

(assert (=> d!1655992 (= res!2181277 ((_ is Nil!59265) lt!2111881))))

(assert (=> d!1655992 (= (isPrefix!5638 lt!2111881 input!5745) lt!2112020)))

(declare-fun b!5122661 () Bool)

(assert (=> b!5122661 (= e!3194818 (isPrefix!5638 (tail!10084 lt!2111881) (tail!10084 input!5745)))))

(assert (= (and d!1655992 (not res!2181277)) b!5122659))

(assert (= (and b!5122659 res!2181280) b!5122660))

(assert (= (and b!5122660 res!2181279) b!5122661))

(assert (= (and d!1655992 (not res!2181278)) b!5122662))

(declare-fun m!6184294 () Bool)

(assert (=> b!5122660 m!6184294))

(assert (=> b!5122660 m!6183902))

(assert (=> b!5122662 m!6183886))

(assert (=> b!5122662 m!6183880))

(declare-fun m!6184296 () Bool)

(assert (=> b!5122661 m!6184296))

(assert (=> b!5122661 m!6183906))

(assert (=> b!5122661 m!6184296))

(assert (=> b!5122661 m!6183906))

(declare-fun m!6184298 () Bool)

(assert (=> b!5122661 m!6184298))

(assert (=> b!5122412 d!1655992))

(declare-fun d!1655994 () Bool)

(assert (=> d!1655994 (= (head!10949 lt!2111883) (h!65713 lt!2111883))))

(assert (=> b!5122412 d!1655994))

(declare-fun d!1655996 () Bool)

(declare-fun c!880355 () Bool)

(assert (=> d!1655996 (= c!880355 ((_ is Cons!59265) lt!2111881))))

(declare-fun e!3194819 () (InoxSet Context!7234))

(assert (=> d!1655996 (= (derivationZipper!130 baseZ!46 lt!2111881) e!3194819)))

(declare-fun b!5122663 () Bool)

(assert (=> b!5122663 (= e!3194819 (derivationZipper!130 (derivationStepZipper!856 baseZ!46 (h!65713 lt!2111881)) (t!372408 lt!2111881)))))

(declare-fun b!5122664 () Bool)

(assert (=> b!5122664 (= e!3194819 baseZ!46)))

(assert (= (and d!1655996 c!880355) b!5122663))

(assert (= (and d!1655996 (not c!880355)) b!5122664))

(declare-fun m!6184300 () Bool)

(assert (=> b!5122663 m!6184300))

(assert (=> b!5122663 m!6184300))

(declare-fun m!6184302 () Bool)

(assert (=> b!5122663 m!6184302))

(assert (=> b!5122412 d!1655996))

(declare-fun d!1655998 () Bool)

(assert (=> d!1655998 true))

(declare-fun lambda!251494 () Int)

(declare-fun flatMap!363 ((InoxSet Context!7234) Int) (InoxSet Context!7234))

(assert (=> d!1655998 (= (derivationStepZipper!856 z!4463 lt!2111868) (flatMap!363 z!4463 lambda!251494))))

(declare-fun bs!1193264 () Bool)

(assert (= bs!1193264 d!1655998))

(declare-fun m!6184304 () Bool)

(assert (=> bs!1193264 m!6184304))

(assert (=> b!5122412 d!1655998))

(declare-fun d!1656000 () Bool)

(declare-fun lt!2112021 () List!59389)

(assert (=> d!1656000 (= (++!13046 lt!2111881 lt!2112021) knownP!20)))

(declare-fun e!3194820 () List!59389)

(assert (=> d!1656000 (= lt!2112021 e!3194820)))

(declare-fun c!880358 () Bool)

(assert (=> d!1656000 (= c!880358 ((_ is Cons!59265) lt!2111881))))

(assert (=> d!1656000 (>= (size!39539 knownP!20) (size!39539 lt!2111881))))

(assert (=> d!1656000 (= (getSuffix!3310 knownP!20 lt!2111881) lt!2112021)))

(declare-fun b!5122667 () Bool)

(assert (=> b!5122667 (= e!3194820 (getSuffix!3310 (tail!10084 knownP!20) (t!372408 lt!2111881)))))

(declare-fun b!5122668 () Bool)

(assert (=> b!5122668 (= e!3194820 knownP!20)))

(assert (= (and d!1656000 c!880358) b!5122667))

(assert (= (and d!1656000 (not c!880358)) b!5122668))

(declare-fun m!6184306 () Bool)

(assert (=> d!1656000 m!6184306))

(assert (=> d!1656000 m!6183862))

(assert (=> d!1656000 m!6183880))

(assert (=> b!5122667 m!6184224))

(assert (=> b!5122667 m!6184224))

(declare-fun m!6184308 () Bool)

(assert (=> b!5122667 m!6184308))

(assert (=> b!5122412 d!1656000))

(declare-fun d!1656002 () Bool)

(assert (=> d!1656002 (isPrefix!5638 (++!13046 testedP!265 (Cons!59265 (head!10949 (getSuffix!3310 input!5745 testedP!265)) Nil!59265)) input!5745)))

(declare-fun lt!2112024 () Unit!150405)

(declare-fun choose!37674 (List!59389 List!59389) Unit!150405)

(assert (=> d!1656002 (= lt!2112024 (choose!37674 testedP!265 input!5745))))

(assert (=> d!1656002 (isPrefix!5638 testedP!265 input!5745)))

(assert (=> d!1656002 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1012 testedP!265 input!5745) lt!2112024)))

(declare-fun bs!1193265 () Bool)

(assert (= bs!1193265 d!1656002))

(assert (=> bs!1193265 m!6183824))

(declare-fun m!6184310 () Bool)

(assert (=> bs!1193265 m!6184310))

(declare-fun m!6184312 () Bool)

(assert (=> bs!1193265 m!6184312))

(assert (=> bs!1193265 m!6183824))

(declare-fun m!6184314 () Bool)

(assert (=> bs!1193265 m!6184314))

(assert (=> bs!1193265 m!6183812))

(assert (=> bs!1193265 m!6184310))

(declare-fun m!6184316 () Bool)

(assert (=> bs!1193265 m!6184316))

(assert (=> b!5122412 d!1656002))

(declare-fun b!5122672 () Bool)

(declare-fun e!3194821 () Bool)

(declare-fun lt!2112025 () List!59389)

(assert (=> b!5122672 (= e!3194821 (or (not (= lt!2111870 Nil!59265)) (= lt!2112025 knownP!20)))))

(declare-fun b!5122671 () Bool)

(declare-fun res!2181282 () Bool)

(assert (=> b!5122671 (=> (not res!2181282) (not e!3194821))))

(assert (=> b!5122671 (= res!2181282 (= (size!39539 lt!2112025) (+ (size!39539 knownP!20) (size!39539 lt!2111870))))))

(declare-fun d!1656004 () Bool)

(assert (=> d!1656004 e!3194821))

(declare-fun res!2181281 () Bool)

(assert (=> d!1656004 (=> (not res!2181281) (not e!3194821))))

(assert (=> d!1656004 (= res!2181281 (= (content!10539 lt!2112025) ((_ map or) (content!10539 knownP!20) (content!10539 lt!2111870))))))

(declare-fun e!3194822 () List!59389)

(assert (=> d!1656004 (= lt!2112025 e!3194822)))

(declare-fun c!880359 () Bool)

(assert (=> d!1656004 (= c!880359 ((_ is Nil!59265) knownP!20))))

(assert (=> d!1656004 (= (++!13046 knownP!20 lt!2111870) lt!2112025)))

(declare-fun b!5122669 () Bool)

(assert (=> b!5122669 (= e!3194822 lt!2111870)))

(declare-fun b!5122670 () Bool)

(assert (=> b!5122670 (= e!3194822 (Cons!59265 (h!65713 knownP!20) (++!13046 (t!372408 knownP!20) lt!2111870)))))

(assert (= (and d!1656004 c!880359) b!5122669))

(assert (= (and d!1656004 (not c!880359)) b!5122670))

(assert (= (and d!1656004 res!2181281) b!5122671))

(assert (= (and b!5122671 res!2181282) b!5122672))

(declare-fun m!6184318 () Bool)

(assert (=> b!5122671 m!6184318))

(assert (=> b!5122671 m!6183862))

(assert (=> b!5122671 m!6184186))

(declare-fun m!6184320 () Bool)

(assert (=> d!1656004 m!6184320))

(declare-fun m!6184322 () Bool)

(assert (=> d!1656004 m!6184322))

(assert (=> d!1656004 m!6184192))

(declare-fun m!6184324 () Bool)

(assert (=> b!5122670 m!6184324))

(assert (=> b!5122412 d!1656004))

(declare-fun e!3194823 () Bool)

(declare-fun lt!2112026 () List!59389)

(declare-fun b!5122676 () Bool)

(assert (=> b!5122676 (= e!3194823 (or (not (= lt!2111880 Nil!59265)) (= lt!2112026 testedP!265)))))

(declare-fun b!5122675 () Bool)

(declare-fun res!2181284 () Bool)

(assert (=> b!5122675 (=> (not res!2181284) (not e!3194823))))

(assert (=> b!5122675 (= res!2181284 (= (size!39539 lt!2112026) (+ (size!39539 testedP!265) (size!39539 lt!2111880))))))

(declare-fun d!1656006 () Bool)

(assert (=> d!1656006 e!3194823))

(declare-fun res!2181283 () Bool)

(assert (=> d!1656006 (=> (not res!2181283) (not e!3194823))))

(assert (=> d!1656006 (= res!2181283 (= (content!10539 lt!2112026) ((_ map or) (content!10539 testedP!265) (content!10539 lt!2111880))))))

(declare-fun e!3194824 () List!59389)

(assert (=> d!1656006 (= lt!2112026 e!3194824)))

(declare-fun c!880360 () Bool)

(assert (=> d!1656006 (= c!880360 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1656006 (= (++!13046 testedP!265 lt!2111880) lt!2112026)))

(declare-fun b!5122673 () Bool)

(assert (=> b!5122673 (= e!3194824 lt!2111880)))

(declare-fun b!5122674 () Bool)

(assert (=> b!5122674 (= e!3194824 (Cons!59265 (h!65713 testedP!265) (++!13046 (t!372408 testedP!265) lt!2111880)))))

(assert (= (and d!1656006 c!880360) b!5122673))

(assert (= (and d!1656006 (not c!880360)) b!5122674))

(assert (= (and d!1656006 res!2181283) b!5122675))

(assert (= (and b!5122675 res!2181284) b!5122676))

(declare-fun m!6184326 () Bool)

(assert (=> b!5122675 m!6184326))

(assert (=> b!5122675 m!6183860))

(assert (=> b!5122675 m!6184276))

(declare-fun m!6184328 () Bool)

(assert (=> d!1656006 m!6184328))

(assert (=> d!1656006 m!6184176))

(assert (=> d!1656006 m!6184280))

(declare-fun m!6184330 () Bool)

(assert (=> b!5122674 m!6184330))

(assert (=> b!5122412 d!1656006))

(declare-fun d!1656008 () Bool)

(declare-fun lt!2112027 () List!59389)

(assert (=> d!1656008 (= (++!13046 knownP!20 lt!2112027) input!5745)))

(declare-fun e!3194825 () List!59389)

(assert (=> d!1656008 (= lt!2112027 e!3194825)))

(declare-fun c!880361 () Bool)

(assert (=> d!1656008 (= c!880361 ((_ is Cons!59265) knownP!20))))

(assert (=> d!1656008 (>= (size!39539 input!5745) (size!39539 knownP!20))))

(assert (=> d!1656008 (= (getSuffix!3310 input!5745 knownP!20) lt!2112027)))

(declare-fun b!5122677 () Bool)

(assert (=> b!5122677 (= e!3194825 (getSuffix!3310 (tail!10084 input!5745) (t!372408 knownP!20)))))

(declare-fun b!5122678 () Bool)

(assert (=> b!5122678 (= e!3194825 input!5745)))

(assert (= (and d!1656008 c!880361) b!5122677))

(assert (= (and d!1656008 (not c!880361)) b!5122678))

(declare-fun m!6184332 () Bool)

(assert (=> d!1656008 m!6184332))

(assert (=> d!1656008 m!6183886))

(assert (=> d!1656008 m!6183862))

(assert (=> b!5122677 m!6183906))

(assert (=> b!5122677 m!6183906))

(declare-fun m!6184334 () Bool)

(assert (=> b!5122677 m!6184334))

(assert (=> b!5122412 d!1656008))

(declare-fun d!1656010 () Bool)

(assert (=> d!1656010 (= (derivationZipper!130 baseZ!46 (++!13046 testedP!265 (Cons!59265 lt!2111868 Nil!59265))) (derivationStepZipper!856 z!4463 lt!2111868))))

(declare-fun lt!2112030 () Unit!150405)

(declare-fun choose!37675 ((InoxSet Context!7234) (InoxSet Context!7234) List!59389 C!28732) Unit!150405)

(assert (=> d!1656010 (= lt!2112030 (choose!37675 baseZ!46 z!4463 testedP!265 lt!2111868))))

(assert (=> d!1656010 (= (derivationZipper!130 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1656010 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!77 baseZ!46 z!4463 testedP!265 lt!2111868) lt!2112030)))

(declare-fun bs!1193266 () Bool)

(assert (= bs!1193266 d!1656010))

(assert (=> bs!1193266 m!6183848))

(declare-fun m!6184336 () Bool)

(assert (=> bs!1193266 m!6184336))

(declare-fun m!6184338 () Bool)

(assert (=> bs!1193266 m!6184338))

(assert (=> bs!1193266 m!6184336))

(declare-fun m!6184340 () Bool)

(assert (=> bs!1193266 m!6184340))

(assert (=> bs!1193266 m!6183888))

(assert (=> b!5122412 d!1656010))

(declare-fun d!1656012 () Bool)

(assert (=> d!1656012 (isPrefix!5638 lt!2111881 knownP!20)))

(declare-fun lt!2112031 () Unit!150405)

(assert (=> d!1656012 (= lt!2112031 (choose!37672 knownP!20 lt!2111881 input!5745))))

(assert (=> d!1656012 (isPrefix!5638 knownP!20 input!5745)))

(assert (=> d!1656012 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!773 knownP!20 lt!2111881 input!5745) lt!2112031)))

(declare-fun bs!1193267 () Bool)

(assert (= bs!1193267 d!1656012))

(assert (=> bs!1193267 m!6183842))

(declare-fun m!6184342 () Bool)

(assert (=> bs!1193267 m!6184342))

(assert (=> bs!1193267 m!6183872))

(assert (=> b!5122412 d!1656012))

(declare-fun b!5122680 () Bool)

(declare-fun res!2181287 () Bool)

(declare-fun e!3194828 () Bool)

(assert (=> b!5122680 (=> (not res!2181287) (not e!3194828))))

(assert (=> b!5122680 (= res!2181287 (= (head!10949 lt!2111881) (head!10949 knownP!20)))))

(declare-fun b!5122679 () Bool)

(declare-fun e!3194826 () Bool)

(assert (=> b!5122679 (= e!3194826 e!3194828)))

(declare-fun res!2181288 () Bool)

(assert (=> b!5122679 (=> (not res!2181288) (not e!3194828))))

(assert (=> b!5122679 (= res!2181288 (not ((_ is Nil!59265) knownP!20)))))

(declare-fun b!5122682 () Bool)

(declare-fun e!3194827 () Bool)

(assert (=> b!5122682 (= e!3194827 (>= (size!39539 knownP!20) (size!39539 lt!2111881)))))

(declare-fun d!1656014 () Bool)

(assert (=> d!1656014 e!3194827))

(declare-fun res!2181286 () Bool)

(assert (=> d!1656014 (=> res!2181286 e!3194827)))

(declare-fun lt!2112032 () Bool)

(assert (=> d!1656014 (= res!2181286 (not lt!2112032))))

(assert (=> d!1656014 (= lt!2112032 e!3194826)))

(declare-fun res!2181285 () Bool)

(assert (=> d!1656014 (=> res!2181285 e!3194826)))

(assert (=> d!1656014 (= res!2181285 ((_ is Nil!59265) lt!2111881))))

(assert (=> d!1656014 (= (isPrefix!5638 lt!2111881 knownP!20) lt!2112032)))

(declare-fun b!5122681 () Bool)

(assert (=> b!5122681 (= e!3194828 (isPrefix!5638 (tail!10084 lt!2111881) (tail!10084 knownP!20)))))

(assert (= (and d!1656014 (not res!2181285)) b!5122679))

(assert (= (and b!5122679 res!2181288) b!5122680))

(assert (= (and b!5122680 res!2181287) b!5122681))

(assert (= (and d!1656014 (not res!2181286)) b!5122682))

(assert (=> b!5122680 m!6184294))

(assert (=> b!5122680 m!6184228))

(assert (=> b!5122682 m!6183862))

(assert (=> b!5122682 m!6183880))

(assert (=> b!5122681 m!6184296))

(assert (=> b!5122681 m!6184224))

(assert (=> b!5122681 m!6184296))

(assert (=> b!5122681 m!6184224))

(declare-fun m!6184344 () Bool)

(assert (=> b!5122681 m!6184344))

(assert (=> b!5122412 d!1656014))

(declare-fun d!1656016 () Bool)

(declare-fun lt!2112033 () Int)

(assert (=> d!1656016 (>= lt!2112033 0)))

(declare-fun e!3194829 () Int)

(assert (=> d!1656016 (= lt!2112033 e!3194829)))

(declare-fun c!880363 () Bool)

(assert (=> d!1656016 (= c!880363 ((_ is Nil!59265) lt!2111881))))

(assert (=> d!1656016 (= (size!39539 lt!2111881) lt!2112033)))

(declare-fun b!5122683 () Bool)

(assert (=> b!5122683 (= e!3194829 0)))

(declare-fun b!5122684 () Bool)

(assert (=> b!5122684 (= e!3194829 (+ 1 (size!39539 (t!372408 lt!2111881))))))

(assert (= (and d!1656016 c!880363) b!5122683))

(assert (= (and d!1656016 (not c!880363)) b!5122684))

(declare-fun m!6184346 () Bool)

(assert (=> b!5122684 m!6184346))

(assert (=> b!5122404 d!1656016))

(declare-fun b!5122686 () Bool)

(declare-fun res!2181291 () Bool)

(declare-fun e!3194832 () Bool)

(assert (=> b!5122686 (=> (not res!2181291) (not e!3194832))))

(assert (=> b!5122686 (= res!2181291 (= (head!10949 knownP!20) (head!10949 input!5745)))))

(declare-fun b!5122685 () Bool)

(declare-fun e!3194830 () Bool)

(assert (=> b!5122685 (= e!3194830 e!3194832)))

(declare-fun res!2181292 () Bool)

(assert (=> b!5122685 (=> (not res!2181292) (not e!3194832))))

(assert (=> b!5122685 (= res!2181292 (not ((_ is Nil!59265) input!5745)))))

(declare-fun b!5122688 () Bool)

(declare-fun e!3194831 () Bool)

(assert (=> b!5122688 (= e!3194831 (>= (size!39539 input!5745) (size!39539 knownP!20)))))

(declare-fun d!1656018 () Bool)

(assert (=> d!1656018 e!3194831))

(declare-fun res!2181290 () Bool)

(assert (=> d!1656018 (=> res!2181290 e!3194831)))

(declare-fun lt!2112034 () Bool)

(assert (=> d!1656018 (= res!2181290 (not lt!2112034))))

(assert (=> d!1656018 (= lt!2112034 e!3194830)))

(declare-fun res!2181289 () Bool)

(assert (=> d!1656018 (=> res!2181289 e!3194830)))

(assert (=> d!1656018 (= res!2181289 ((_ is Nil!59265) knownP!20))))

(assert (=> d!1656018 (= (isPrefix!5638 knownP!20 input!5745) lt!2112034)))

(declare-fun b!5122687 () Bool)

(assert (=> b!5122687 (= e!3194832 (isPrefix!5638 (tail!10084 knownP!20) (tail!10084 input!5745)))))

(assert (= (and d!1656018 (not res!2181289)) b!5122685))

(assert (= (and b!5122685 res!2181292) b!5122686))

(assert (= (and b!5122686 res!2181291) b!5122687))

(assert (= (and d!1656018 (not res!2181290)) b!5122688))

(assert (=> b!5122686 m!6184228))

(assert (=> b!5122686 m!6183902))

(assert (=> b!5122688 m!6183886))

(assert (=> b!5122688 m!6183862))

(assert (=> b!5122687 m!6184224))

(assert (=> b!5122687 m!6183906))

(assert (=> b!5122687 m!6184224))

(assert (=> b!5122687 m!6183906))

(declare-fun m!6184348 () Bool)

(assert (=> b!5122687 m!6184348))

(assert (=> b!5122413 d!1656018))

(declare-fun d!1656020 () Bool)

(declare-fun lt!2112035 () Int)

(assert (=> d!1656020 (>= lt!2112035 0)))

(declare-fun e!3194833 () Int)

(assert (=> d!1656020 (= lt!2112035 e!3194833)))

(declare-fun c!880364 () Bool)

(assert (=> d!1656020 (= c!880364 ((_ is Nil!59265) testedP!265))))

(assert (=> d!1656020 (= (size!39539 testedP!265) lt!2112035)))

(declare-fun b!5122689 () Bool)

(assert (=> b!5122689 (= e!3194833 0)))

(declare-fun b!5122690 () Bool)

(assert (=> b!5122690 (= e!3194833 (+ 1 (size!39539 (t!372408 testedP!265))))))

(assert (= (and d!1656020 c!880364) b!5122689))

(assert (= (and d!1656020 (not c!880364)) b!5122690))

(declare-fun m!6184350 () Bool)

(assert (=> b!5122690 m!6184350))

(assert (=> b!5122423 d!1656020))

(declare-fun d!1656022 () Bool)

(declare-fun lt!2112036 () Int)

(assert (=> d!1656022 (>= lt!2112036 0)))

(declare-fun e!3194834 () Int)

(assert (=> d!1656022 (= lt!2112036 e!3194834)))

(declare-fun c!880365 () Bool)

(assert (=> d!1656022 (= c!880365 ((_ is Nil!59265) knownP!20))))

(assert (=> d!1656022 (= (size!39539 knownP!20) lt!2112036)))

(declare-fun b!5122691 () Bool)

(assert (=> b!5122691 (= e!3194834 0)))

(declare-fun b!5122692 () Bool)

(assert (=> b!5122692 (= e!3194834 (+ 1 (size!39539 (t!372408 knownP!20))))))

(assert (= (and d!1656022 c!880365) b!5122691))

(assert (= (and d!1656022 (not c!880365)) b!5122692))

(declare-fun m!6184352 () Bool)

(assert (=> b!5122692 m!6184352))

(assert (=> b!5122423 d!1656022))

(declare-fun b!5122697 () Bool)

(declare-fun e!3194837 () Bool)

(declare-fun tp!1429179 () Bool)

(assert (=> b!5122697 (= e!3194837 (and tp_is_empty!37739 tp!1429179))))

(assert (=> b!5122425 (= tp!1429155 e!3194837)))

(assert (= (and b!5122425 ((_ is Cons!59265) (t!372408 knownP!20))) b!5122697))

(declare-fun b!5122702 () Bool)

(declare-fun e!3194840 () Bool)

(declare-fun tp!1429184 () Bool)

(declare-fun tp!1429185 () Bool)

(assert (=> b!5122702 (= e!3194840 (and tp!1429184 tp!1429185))))

(assert (=> b!5122409 (= tp!1429153 e!3194840)))

(assert (= (and b!5122409 ((_ is Cons!59266) (exprs!4117 setElem!30470))) b!5122702))

(declare-fun condSetEmpty!30477 () Bool)

(assert (=> setNonEmpty!30470 (= condSetEmpty!30477 (= setRest!30469 ((as const (Array Context!7234 Bool)) false)))))

(declare-fun setRes!30477 () Bool)

(assert (=> setNonEmpty!30470 (= tp!1429150 setRes!30477)))

(declare-fun setIsEmpty!30477 () Bool)

(assert (=> setIsEmpty!30477 setRes!30477))

(declare-fun tp!1429190 () Bool)

(declare-fun e!3194843 () Bool)

(declare-fun setNonEmpty!30477 () Bool)

(declare-fun setElem!30477 () Context!7234)

(assert (=> setNonEmpty!30477 (= setRes!30477 (and tp!1429190 (inv!78763 setElem!30477) e!3194843))))

(declare-fun setRest!30477 () (InoxSet Context!7234))

(assert (=> setNonEmpty!30477 (= setRest!30469 ((_ map or) (store ((as const (Array Context!7234 Bool)) false) setElem!30477 true) setRest!30477))))

(declare-fun b!5122707 () Bool)

(declare-fun tp!1429191 () Bool)

(assert (=> b!5122707 (= e!3194843 tp!1429191)))

(assert (= (and setNonEmpty!30470 condSetEmpty!30477) setIsEmpty!30477))

(assert (= (and setNonEmpty!30470 (not condSetEmpty!30477)) setNonEmpty!30477))

(assert (= setNonEmpty!30477 b!5122707))

(declare-fun m!6184354 () Bool)

(assert (=> setNonEmpty!30477 m!6184354))

(declare-fun b!5122708 () Bool)

(declare-fun e!3194844 () Bool)

(declare-fun tp!1429192 () Bool)

(declare-fun tp!1429193 () Bool)

(assert (=> b!5122708 (= e!3194844 (and tp!1429192 tp!1429193))))

(assert (=> b!5122420 (= tp!1429149 e!3194844)))

(assert (= (and b!5122420 ((_ is Cons!59266) (exprs!4117 setElem!30469))) b!5122708))

(declare-fun condSetEmpty!30478 () Bool)

(assert (=> setNonEmpty!30469 (= condSetEmpty!30478 (= setRest!30470 ((as const (Array Context!7234 Bool)) false)))))

(declare-fun setRes!30478 () Bool)

(assert (=> setNonEmpty!30469 (= tp!1429152 setRes!30478)))

(declare-fun setIsEmpty!30478 () Bool)

(assert (=> setIsEmpty!30478 setRes!30478))

(declare-fun e!3194845 () Bool)

(declare-fun setNonEmpty!30478 () Bool)

(declare-fun setElem!30478 () Context!7234)

(declare-fun tp!1429194 () Bool)

(assert (=> setNonEmpty!30478 (= setRes!30478 (and tp!1429194 (inv!78763 setElem!30478) e!3194845))))

(declare-fun setRest!30478 () (InoxSet Context!7234))

(assert (=> setNonEmpty!30478 (= setRest!30470 ((_ map or) (store ((as const (Array Context!7234 Bool)) false) setElem!30478 true) setRest!30478))))

(declare-fun b!5122709 () Bool)

(declare-fun tp!1429195 () Bool)

(assert (=> b!5122709 (= e!3194845 tp!1429195)))

(assert (= (and setNonEmpty!30469 condSetEmpty!30478) setIsEmpty!30478))

(assert (= (and setNonEmpty!30469 (not condSetEmpty!30478)) setNonEmpty!30478))

(assert (= setNonEmpty!30478 b!5122709))

(declare-fun m!6184356 () Bool)

(assert (=> setNonEmpty!30478 m!6184356))

(declare-fun b!5122710 () Bool)

(declare-fun e!3194846 () Bool)

(declare-fun tp!1429196 () Bool)

(assert (=> b!5122710 (= e!3194846 (and tp_is_empty!37739 tp!1429196))))

(assert (=> b!5122403 (= tp!1429154 e!3194846)))

(assert (= (and b!5122403 ((_ is Cons!59265) (t!372408 testedP!265))) b!5122710))

(declare-fun b!5122711 () Bool)

(declare-fun e!3194847 () Bool)

(declare-fun tp!1429197 () Bool)

(assert (=> b!5122711 (= e!3194847 (and tp_is_empty!37739 tp!1429197))))

(assert (=> b!5122414 (= tp!1429151 e!3194847)))

(assert (= (and b!5122414 ((_ is Cons!59265) (t!372408 input!5745))) b!5122711))

(check-sat (not b!5122613) (not b!5122662) (not b!5122688) (not d!1656004) (not d!1656000) (not d!1656012) (not d!1655968) (not b!5122680) (not b!5122667) (not d!1655948) (not d!1655984) (not d!1655952) (not b!5122592) (not b!5122617) (not b!5122709) tp_is_empty!37739 (not b!5122640) (not b!5122660) (not b!5122671) (not b!5122591) (not b!5122687) (not b!5122702) (not b!5122661) (not setNonEmpty!30478) (not d!1656008) (not d!1655974) (not d!1655998) (not b!5122620) (not b!5122447) (not b!5122637) (not b!5122641) (not b!5122633) (not b!5122446) (not b!5122651) (not d!1655970) (not d!1655956) (not b!5122609) (not b!5122645) (not d!1656010) (not b!5122692) (not d!1655964) (not d!1655986) (not b!5122674) (not b!5122710) (not b!5122644) (not d!1656002) (not b!5122636) (not b!5122681) (not b!5122708) (not d!1655976) (not d!1655946) (not b!5122682) (not d!1655982) (not b!5122657) (not d!1656006) (not b!5122707) (not bm!356672) (not bm!356671) (not setNonEmpty!30477) (not b!5122612) (not b!5122711) (not b!5122648) (not b!5122627) (not b!5122686) (not d!1655858) (not d!1655958) (not b!5122650) (not b!5122445) (not b!5122616) (not b!5122638) (not b!5122654) (not b!5122663) (not b!5122670) (not d!1655988) (not b!5122655) (not b!5122608) (not d!1655954) (not b!5122684) (not b!5122675) (not b!5122628) (not b!5122647) (not b!5122697) (not d!1655990) (not d!1655972) (not b!5122690) (not b!5122677) (not b!5122597) (not d!1655950) (not b!5122435) (not d!1655960) (not b!5122621))
(check-sat)
