; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725818 () Bool)

(assert start!725818)

(declare-fun b!7502007 () Bool)

(declare-fun e!4472694 () Bool)

(declare-fun tp!2177728 () Bool)

(assert (=> b!7502007 (= e!4472694 tp!2177728)))

(declare-fun b!7502008 () Bool)

(declare-fun e!4472700 () Bool)

(declare-fun e!4472691 () Bool)

(assert (=> b!7502008 (= e!4472700 e!4472691)))

(declare-fun res!3009548 () Bool)

(assert (=> b!7502008 (=> (not res!3009548) (not e!4472691))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2632193 () Int)

(assert (=> b!7502008 (= res!3009548 (= testedPSize!164 lt!2632193))))

(declare-datatypes ((C!39644 0))(
  ( (C!39645 (val!30220 Int)) )
))
(declare-datatypes ((List!72408 0))(
  ( (Nil!72284) (Cons!72284 (h!78732 C!39644) (t!386977 List!72408)) )
))
(declare-fun testedP!204 () List!72408)

(declare-fun size!42230 (List!72408) Int)

(assert (=> b!7502008 (= lt!2632193 (size!42230 testedP!204))))

(declare-fun b!7502009 () Bool)

(declare-fun e!4472695 () Bool)

(declare-fun tp_is_empty!49659 () Bool)

(declare-fun tp!2177727 () Bool)

(assert (=> b!7502009 (= e!4472695 (and tp_is_empty!49659 tp!2177727))))

(declare-fun b!7502010 () Bool)

(declare-fun e!4472693 () Bool)

(declare-fun e!4472699 () Bool)

(assert (=> b!7502010 (= e!4472693 e!4472699)))

(declare-fun res!3009545 () Bool)

(assert (=> b!7502010 (=> res!3009545 e!4472699)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19669 0))(
  ( (ElementMatch!19669 (c!1384900 C!39644)) (Concat!28514 (regOne!39850 Regex!19669) (regTwo!39850 Regex!19669)) (EmptyExpr!19669) (Star!19669 (reg!19998 Regex!19669)) (EmptyLang!19669) (Union!19669 (regOne!39851 Regex!19669) (regTwo!39851 Regex!19669)) )
))
(declare-datatypes ((List!72409 0))(
  ( (Nil!72285) (Cons!72285 (h!78733 Regex!19669) (t!386978 List!72409)) )
))
(declare-datatypes ((Context!16842 0))(
  ( (Context!16843 (exprs!8921 List!72409)) )
))
(declare-fun z!3716 () (InoxSet Context!16842))

(declare-fun lostCauseZipper!1357 ((InoxSet Context!16842)) Bool)

(assert (=> b!7502010 (= res!3009545 (lostCauseZipper!1357 z!3716))))

(declare-fun testedSuffix!164 () List!72408)

(declare-fun lt!2632194 () List!72408)

(assert (=> b!7502010 (and (= testedSuffix!164 lt!2632194) (= lt!2632194 testedSuffix!164))))

(declare-fun totalInput!779 () List!72408)

(declare-datatypes ((Unit!166204 0))(
  ( (Unit!166205) )
))
(declare-fun lt!2632190 () Unit!166204)

(declare-fun lemmaSamePrefixThenSameSuffix!2760 (List!72408 List!72408 List!72408 List!72408 List!72408) Unit!166204)

(assert (=> b!7502010 (= lt!2632190 (lemmaSamePrefixThenSameSuffix!2760 testedP!204 testedSuffix!164 testedP!204 lt!2632194 totalInput!779))))

(declare-fun getSuffix!3457 (List!72408 List!72408) List!72408)

(assert (=> b!7502010 (= lt!2632194 (getSuffix!3457 totalInput!779 testedP!204))))

(declare-fun setRes!56834 () Bool)

(declare-fun setElem!56834 () Context!16842)

(declare-fun setNonEmpty!56834 () Bool)

(declare-fun tp!2177729 () Bool)

(declare-fun inv!92387 (Context!16842) Bool)

(assert (=> setNonEmpty!56834 (= setRes!56834 (and tp!2177729 (inv!92387 setElem!56834) e!4472694))))

(declare-fun setRest!56834 () (InoxSet Context!16842))

(assert (=> setNonEmpty!56834 (= z!3716 ((_ map or) (store ((as const (Array Context!16842 Bool)) false) setElem!56834 true) setRest!56834))))

(declare-fun b!7502011 () Bool)

(declare-fun e!4472697 () Bool)

(assert (=> b!7502011 (= e!4472691 e!4472697)))

(declare-fun res!3009546 () Bool)

(assert (=> b!7502011 (=> (not res!3009546) (not e!4472697))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2632192 () Int)

(assert (=> b!7502011 (= res!3009546 (= totalInputSize!226 lt!2632192))))

(assert (=> b!7502011 (= lt!2632192 (size!42230 totalInput!779))))

(declare-fun b!7502012 () Bool)

(declare-fun e!4472696 () Bool)

(declare-fun tp!2177726 () Bool)

(assert (=> b!7502012 (= e!4472696 (and tp_is_empty!49659 tp!2177726))))

(declare-fun b!7502013 () Bool)

(declare-fun e!4472692 () Bool)

(declare-fun tp!2177725 () Bool)

(assert (=> b!7502013 (= e!4472692 (and tp_is_empty!49659 tp!2177725))))

(declare-fun b!7502014 () Bool)

(declare-fun res!3009549 () Bool)

(assert (=> b!7502014 (=> res!3009549 e!4472699)))

(assert (=> b!7502014 (= res!3009549 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502015 () Bool)

(declare-fun e!4472698 () Bool)

(assert (=> b!7502015 (= e!4472699 e!4472698)))

(declare-fun res!3009550 () Bool)

(assert (=> b!7502015 (=> res!3009550 e!4472698)))

(assert (=> b!7502015 (= res!3009550 (not (= lt!2632193 lt!2632192)))))

(assert (=> b!7502015 (<= lt!2632193 lt!2632192)))

(declare-fun lt!2632196 () Unit!166204)

(declare-fun lemmaIsPrefixThenSmallerEqSize!960 (List!72408 List!72408) Unit!166204)

(assert (=> b!7502015 (= lt!2632196 (lemmaIsPrefixThenSmallerEqSize!960 testedP!204 totalInput!779))))

(declare-fun setIsEmpty!56834 () Bool)

(assert (=> setIsEmpty!56834 setRes!56834))

(declare-fun res!3009544 () Bool)

(assert (=> start!725818 (=> (not res!3009544) (not e!4472700))))

(declare-fun lt!2632195 () List!72408)

(assert (=> start!725818 (= res!3009544 (= lt!2632195 totalInput!779))))

(declare-fun ++!17288 (List!72408 List!72408) List!72408)

(assert (=> start!725818 (= lt!2632195 (++!17288 testedP!204 testedSuffix!164))))

(assert (=> start!725818 e!4472700))

(assert (=> start!725818 e!4472695))

(assert (=> start!725818 true))

(assert (=> start!725818 e!4472692))

(assert (=> start!725818 e!4472696))

(declare-fun condSetEmpty!56834 () Bool)

(assert (=> start!725818 (= condSetEmpty!56834 (= z!3716 ((as const (Array Context!16842 Bool)) false)))))

(assert (=> start!725818 setRes!56834))

(declare-fun b!7502016 () Bool)

(assert (=> b!7502016 (= e!4472697 (not e!4472693))))

(declare-fun res!3009547 () Bool)

(assert (=> b!7502016 (=> res!3009547 e!4472693)))

(declare-fun isPrefix!5955 (List!72408 List!72408) Bool)

(assert (=> b!7502016 (= res!3009547 (not (isPrefix!5955 testedP!204 totalInput!779)))))

(assert (=> b!7502016 (isPrefix!5955 testedP!204 lt!2632195)))

(declare-fun lt!2632189 () Unit!166204)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3668 (List!72408 List!72408) Unit!166204)

(assert (=> b!7502016 (= lt!2632189 (lemmaConcatTwoListThenFirstIsPrefix!3668 testedP!204 testedSuffix!164))))

(declare-fun b!7502017 () Bool)

(assert (=> b!7502017 (= e!4472698 true)))

(assert (=> b!7502017 (isPrefix!5955 totalInput!779 totalInput!779)))

(declare-fun lt!2632191 () Unit!166204)

(declare-fun lemmaIsPrefixRefl!3804 (List!72408 List!72408) Unit!166204)

(assert (=> b!7502017 (= lt!2632191 (lemmaIsPrefixRefl!3804 totalInput!779 totalInput!779))))

(assert (= (and start!725818 res!3009544) b!7502008))

(assert (= (and b!7502008 res!3009548) b!7502011))

(assert (= (and b!7502011 res!3009546) b!7502016))

(assert (= (and b!7502016 (not res!3009547)) b!7502010))

(assert (= (and b!7502010 (not res!3009545)) b!7502014))

(assert (= (and b!7502014 (not res!3009549)) b!7502015))

(assert (= (and b!7502015 (not res!3009550)) b!7502017))

(get-info :version)

(assert (= (and start!725818 ((_ is Cons!72284) testedSuffix!164)) b!7502009))

(assert (= (and start!725818 ((_ is Cons!72284) totalInput!779)) b!7502013))

(assert (= (and start!725818 ((_ is Cons!72284) testedP!204)) b!7502012))

(assert (= (and start!725818 condSetEmpty!56834) setIsEmpty!56834))

(assert (= (and start!725818 (not condSetEmpty!56834)) setNonEmpty!56834))

(assert (= setNonEmpty!56834 b!7502007))

(declare-fun m!8083568 () Bool)

(assert (=> b!7502016 m!8083568))

(declare-fun m!8083570 () Bool)

(assert (=> b!7502016 m!8083570))

(declare-fun m!8083572 () Bool)

(assert (=> b!7502016 m!8083572))

(declare-fun m!8083574 () Bool)

(assert (=> b!7502010 m!8083574))

(declare-fun m!8083576 () Bool)

(assert (=> b!7502010 m!8083576))

(declare-fun m!8083578 () Bool)

(assert (=> b!7502010 m!8083578))

(declare-fun m!8083580 () Bool)

(assert (=> b!7502011 m!8083580))

(declare-fun m!8083582 () Bool)

(assert (=> b!7502008 m!8083582))

(declare-fun m!8083584 () Bool)

(assert (=> b!7502015 m!8083584))

(declare-fun m!8083586 () Bool)

(assert (=> setNonEmpty!56834 m!8083586))

(declare-fun m!8083588 () Bool)

(assert (=> b!7502017 m!8083588))

(declare-fun m!8083590 () Bool)

(assert (=> b!7502017 m!8083590))

(declare-fun m!8083592 () Bool)

(assert (=> start!725818 m!8083592))

(check-sat tp_is_empty!49659 (not b!7502010) (not b!7502007) (not b!7502009) (not b!7502017) (not start!725818) (not b!7502016) (not setNonEmpty!56834) (not b!7502008) (not b!7502013) (not b!7502012) (not b!7502011) (not b!7502015))
(check-sat)
