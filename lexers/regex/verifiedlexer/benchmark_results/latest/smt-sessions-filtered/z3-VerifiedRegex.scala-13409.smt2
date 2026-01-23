; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725810 () Bool)

(assert start!725810)

(declare-fun b!7501882 () Bool)

(declare-fun e!4472582 () Bool)

(declare-fun tp_is_empty!49651 () Bool)

(declare-fun tp!2177667 () Bool)

(assert (=> b!7501882 (= e!4472582 (and tp_is_empty!49651 tp!2177667))))

(declare-fun b!7501883 () Bool)

(declare-fun e!4472580 () Bool)

(declare-fun e!4472585 () Bool)

(assert (=> b!7501883 (= e!4472580 (not e!4472585))))

(declare-fun res!3009472 () Bool)

(assert (=> b!7501883 (=> res!3009472 e!4472585)))

(declare-datatypes ((C!39636 0))(
  ( (C!39637 (val!30216 Int)) )
))
(declare-datatypes ((List!72400 0))(
  ( (Nil!72276) (Cons!72276 (h!78724 C!39636) (t!386969 List!72400)) )
))
(declare-fun testedP!204 () List!72400)

(declare-fun totalInput!779 () List!72400)

(declare-fun isPrefix!5951 (List!72400 List!72400) Bool)

(assert (=> b!7501883 (= res!3009472 (not (isPrefix!5951 testedP!204 totalInput!779)))))

(declare-fun lt!2632106 () List!72400)

(assert (=> b!7501883 (isPrefix!5951 testedP!204 lt!2632106)))

(declare-datatypes ((Unit!166196 0))(
  ( (Unit!166197) )
))
(declare-fun lt!2632105 () Unit!166196)

(declare-fun testedSuffix!164 () List!72400)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3664 (List!72400 List!72400) Unit!166196)

(assert (=> b!7501883 (= lt!2632105 (lemmaConcatTwoListThenFirstIsPrefix!3664 testedP!204 testedSuffix!164))))

(declare-fun b!7501884 () Bool)

(declare-fun e!4472584 () Bool)

(assert (=> b!7501884 (= e!4472584 true)))

(assert (=> b!7501884 (isPrefix!5951 totalInput!779 totalInput!779)))

(declare-fun lt!2632104 () Unit!166196)

(declare-fun lemmaIsPrefixRefl!3802 (List!72400 List!72400) Unit!166196)

(assert (=> b!7501884 (= lt!2632104 (lemmaIsPrefixRefl!3802 totalInput!779 totalInput!779))))

(declare-fun b!7501885 () Bool)

(declare-fun res!3009470 () Bool)

(assert (=> b!7501885 (=> (not res!3009470) (not e!4472580))))

(declare-fun testedPSize!164 () Int)

(declare-fun size!42226 (List!72400) Int)

(assert (=> b!7501885 (= res!3009470 (= testedPSize!164 (size!42226 testedP!204)))))

(declare-fun b!7501886 () Bool)

(declare-fun res!3009471 () Bool)

(assert (=> b!7501886 (=> (not res!3009471) (not e!4472580))))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7501886 (= res!3009471 (= totalInputSize!226 (size!42226 totalInput!779)))))

(declare-fun b!7501887 () Bool)

(declare-fun e!4472583 () Bool)

(declare-fun tp!2177666 () Bool)

(assert (=> b!7501887 (= e!4472583 (and tp_is_empty!49651 tp!2177666))))

(declare-fun e!4472586 () Bool)

(declare-datatypes ((Regex!19665 0))(
  ( (ElementMatch!19665 (c!1384896 C!39636)) (Concat!28510 (regOne!39842 Regex!19665) (regTwo!39842 Regex!19665)) (EmptyExpr!19665) (Star!19665 (reg!19994 Regex!19665)) (EmptyLang!19665) (Union!19665 (regOne!39843 Regex!19665) (regTwo!39843 Regex!19665)) )
))
(declare-datatypes ((List!72401 0))(
  ( (Nil!72277) (Cons!72277 (h!78725 Regex!19665) (t!386970 List!72401)) )
))
(declare-datatypes ((Context!16834 0))(
  ( (Context!16835 (exprs!8917 List!72401)) )
))
(declare-fun setElem!56822 () Context!16834)

(declare-fun setNonEmpty!56822 () Bool)

(declare-fun setRes!56822 () Bool)

(declare-fun tp!2177669 () Bool)

(declare-fun inv!92377 (Context!16834) Bool)

(assert (=> setNonEmpty!56822 (= setRes!56822 (and tp!2177669 (inv!92377 setElem!56822) e!4472586))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3716 () (InoxSet Context!16834))

(declare-fun setRest!56822 () (InoxSet Context!16834))

(assert (=> setNonEmpty!56822 (= z!3716 ((_ map or) (store ((as const (Array Context!16834 Bool)) false) setElem!56822 true) setRest!56822))))

(declare-fun b!7501888 () Bool)

(declare-fun res!3009468 () Bool)

(assert (=> b!7501888 (=> res!3009468 e!4472584)))

(assert (=> b!7501888 (= res!3009468 (not (= testedPSize!164 totalInputSize!226)))))

(declare-fun setIsEmpty!56822 () Bool)

(assert (=> setIsEmpty!56822 setRes!56822))

(declare-fun b!7501889 () Bool)

(assert (=> b!7501889 (= e!4472585 e!4472584)))

(declare-fun res!3009469 () Bool)

(assert (=> b!7501889 (=> res!3009469 e!4472584)))

(declare-fun lostCauseZipper!1353 ((InoxSet Context!16834)) Bool)

(assert (=> b!7501889 (= res!3009469 (lostCauseZipper!1353 z!3716))))

(declare-fun lt!2632103 () List!72400)

(assert (=> b!7501889 (and (= testedSuffix!164 lt!2632103) (= lt!2632103 testedSuffix!164))))

(declare-fun lt!2632102 () Unit!166196)

(declare-fun lemmaSamePrefixThenSameSuffix!2756 (List!72400 List!72400 List!72400 List!72400 List!72400) Unit!166196)

(assert (=> b!7501889 (= lt!2632102 (lemmaSamePrefixThenSameSuffix!2756 testedP!204 testedSuffix!164 testedP!204 lt!2632103 totalInput!779))))

(declare-fun getSuffix!3453 (List!72400 List!72400) List!72400)

(assert (=> b!7501889 (= lt!2632103 (getSuffix!3453 totalInput!779 testedP!204))))

(declare-fun res!3009467 () Bool)

(assert (=> start!725810 (=> (not res!3009467) (not e!4472580))))

(assert (=> start!725810 (= res!3009467 (= lt!2632106 totalInput!779))))

(declare-fun ++!17284 (List!72400 List!72400) List!72400)

(assert (=> start!725810 (= lt!2632106 (++!17284 testedP!204 testedSuffix!164))))

(assert (=> start!725810 e!4472580))

(assert (=> start!725810 e!4472582))

(assert (=> start!725810 true))

(declare-fun e!4472581 () Bool)

(assert (=> start!725810 e!4472581))

(assert (=> start!725810 e!4472583))

(declare-fun condSetEmpty!56822 () Bool)

(assert (=> start!725810 (= condSetEmpty!56822 (= z!3716 ((as const (Array Context!16834 Bool)) false)))))

(assert (=> start!725810 setRes!56822))

(declare-fun b!7501890 () Bool)

(declare-fun tp!2177668 () Bool)

(assert (=> b!7501890 (= e!4472581 (and tp_is_empty!49651 tp!2177668))))

(declare-fun b!7501891 () Bool)

(declare-fun tp!2177665 () Bool)

(assert (=> b!7501891 (= e!4472586 tp!2177665)))

(assert (= (and start!725810 res!3009467) b!7501885))

(assert (= (and b!7501885 res!3009470) b!7501886))

(assert (= (and b!7501886 res!3009471) b!7501883))

(assert (= (and b!7501883 (not res!3009472)) b!7501889))

(assert (= (and b!7501889 (not res!3009469)) b!7501888))

(assert (= (and b!7501888 (not res!3009468)) b!7501884))

(get-info :version)

(assert (= (and start!725810 ((_ is Cons!72276) testedSuffix!164)) b!7501882))

(assert (= (and start!725810 ((_ is Cons!72276) totalInput!779)) b!7501890))

(assert (= (and start!725810 ((_ is Cons!72276) testedP!204)) b!7501887))

(assert (= (and start!725810 condSetEmpty!56822) setIsEmpty!56822))

(assert (= (and start!725810 (not condSetEmpty!56822)) setNonEmpty!56822))

(assert (= setNonEmpty!56822 b!7501891))

(declare-fun m!8083474 () Bool)

(assert (=> b!7501884 m!8083474))

(declare-fun m!8083476 () Bool)

(assert (=> b!7501884 m!8083476))

(declare-fun m!8083478 () Bool)

(assert (=> b!7501883 m!8083478))

(declare-fun m!8083480 () Bool)

(assert (=> b!7501883 m!8083480))

(declare-fun m!8083482 () Bool)

(assert (=> b!7501883 m!8083482))

(declare-fun m!8083484 () Bool)

(assert (=> b!7501886 m!8083484))

(declare-fun m!8083486 () Bool)

(assert (=> start!725810 m!8083486))

(declare-fun m!8083488 () Bool)

(assert (=> b!7501889 m!8083488))

(declare-fun m!8083490 () Bool)

(assert (=> b!7501889 m!8083490))

(declare-fun m!8083492 () Bool)

(assert (=> b!7501889 m!8083492))

(declare-fun m!8083494 () Bool)

(assert (=> setNonEmpty!56822 m!8083494))

(declare-fun m!8083496 () Bool)

(assert (=> b!7501885 m!8083496))

(check-sat tp_is_empty!49651 (not b!7501889) (not b!7501887) (not b!7501885) (not b!7501891) (not b!7501882) (not start!725810) (not setNonEmpty!56822) (not b!7501883) (not b!7501886) (not b!7501884) (not b!7501890))
(check-sat)
