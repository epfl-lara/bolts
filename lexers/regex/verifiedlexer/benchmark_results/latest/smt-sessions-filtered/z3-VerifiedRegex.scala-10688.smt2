; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547424 () Bool)

(assert start!547424)

(declare-fun b!5171552 () Bool)

(declare-fun e!3222390 () Bool)

(declare-fun tp!1450802 () Bool)

(assert (=> b!5171552 (= e!3222390 tp!1450802)))

(declare-fun b!5171553 () Bool)

(declare-datatypes ((Unit!151756 0))(
  ( (Unit!151757) )
))
(declare-fun e!3222384 () Unit!151756)

(declare-fun Unit!151758 () Unit!151756)

(assert (=> b!5171553 (= e!3222384 Unit!151758)))

(declare-fun b!5171554 () Bool)

(declare-fun e!3222389 () Bool)

(declare-fun e!3222385 () Bool)

(assert (=> b!5171554 (= e!3222389 e!3222385)))

(declare-fun res!2198069 () Bool)

(assert (=> b!5171554 (=> res!2198069 e!3222385)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29516 0))(
  ( (C!29517 (val!24460 Int)) )
))
(declare-datatypes ((Regex!14623 0))(
  ( (ElementMatch!14623 (c!890230 C!29516)) (Concat!23468 (regOne!29758 Regex!14623) (regTwo!29758 Regex!14623)) (EmptyExpr!14623) (Star!14623 (reg!14952 Regex!14623)) (EmptyLang!14623) (Union!14623 (regOne!29759 Regex!14623) (regTwo!29759 Regex!14623)) )
))
(declare-datatypes ((List!60211 0))(
  ( (Nil!60087) (Cons!60087 (h!66535 Regex!14623) (t!373364 List!60211)) )
))
(declare-datatypes ((Context!8014 0))(
  ( (Context!8015 (exprs!4507 List!60211)) )
))
(declare-fun z!4581 () (InoxSet Context!8014))

(declare-fun nullableZipper!1169 ((InoxSet Context!8014)) Bool)

(assert (=> b!5171554 (= res!2198069 (not (nullableZipper!1169 z!4581)))))

(declare-datatypes ((List!60212 0))(
  ( (Nil!60088) (Cons!60088 (h!66536 C!29516) (t!373365 List!60212)) )
))
(declare-fun lt!2129155 () List!60212)

(declare-fun input!5817 () List!60212)

(declare-fun isPrefix!5756 (List!60212 List!60212) Bool)

(assert (=> b!5171554 (isPrefix!5756 lt!2129155 input!5817)))

(declare-fun lt!2129145 () Unit!151756)

(declare-fun testedP!294 () List!60212)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1069 (List!60212 List!60212) Unit!151756)

(assert (=> b!5171554 (= lt!2129145 (lemmaAddHeadSuffixToPrefixStillPrefix!1069 testedP!294 input!5817))))

(declare-fun lt!2129144 () C!29516)

(declare-fun ++!13147 (List!60212 List!60212) List!60212)

(assert (=> b!5171554 (= lt!2129155 (++!13147 testedP!294 (Cons!60088 lt!2129144 Nil!60088)))))

(declare-fun lt!2129146 () List!60212)

(declare-fun head!11047 (List!60212) C!29516)

(assert (=> b!5171554 (= lt!2129144 (head!11047 lt!2129146))))

(declare-fun b!5171555 () Bool)

(declare-fun e!3222388 () Bool)

(assert (=> b!5171555 (= e!3222388 (not e!3222389))))

(declare-fun res!2198074 () Bool)

(assert (=> b!5171555 (=> res!2198074 e!3222389)))

(declare-fun lt!2129156 () Int)

(declare-fun lt!2129152 () Int)

(assert (=> b!5171555 (= res!2198074 (>= lt!2129156 lt!2129152))))

(declare-fun lt!2129158 () Unit!151756)

(assert (=> b!5171555 (= lt!2129158 e!3222384)))

(declare-fun c!890229 () Bool)

(assert (=> b!5171555 (= c!890229 (= lt!2129156 lt!2129152))))

(assert (=> b!5171555 (<= lt!2129156 lt!2129152)))

(declare-fun lt!2129151 () Unit!151756)

(declare-fun lemmaIsPrefixThenSmallerEqSize!919 (List!60212 List!60212) Unit!151756)

(assert (=> b!5171555 (= lt!2129151 (lemmaIsPrefixThenSmallerEqSize!919 testedP!294 input!5817))))

(declare-fun setNonEmpty!32039 () Bool)

(declare-fun setRes!32040 () Bool)

(declare-fun tp!1450806 () Bool)

(declare-fun setElem!32040 () Context!8014)

(declare-fun inv!79804 (Context!8014) Bool)

(assert (=> setNonEmpty!32039 (= setRes!32040 (and tp!1450806 (inv!79804 setElem!32040) e!3222390))))

(declare-fun setRest!32040 () (InoxSet Context!8014))

(assert (=> setNonEmpty!32039 (= z!4581 ((_ map or) (store ((as const (Array Context!8014 Bool)) false) setElem!32040 true) setRest!32040))))

(declare-fun b!5171556 () Bool)

(declare-fun res!2198073 () Bool)

(declare-fun e!3222387 () Bool)

(assert (=> b!5171556 (=> (not res!2198073) (not e!3222387))))

(declare-fun baseZ!62 () (InoxSet Context!8014))

(declare-fun derivationZipper!246 ((InoxSet Context!8014) List!60212) (InoxSet Context!8014))

(assert (=> b!5171556 (= res!2198073 (= (derivationZipper!246 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5171557 () Bool)

(declare-fun e!3222383 () Bool)

(assert (=> b!5171557 (= e!3222385 e!3222383)))

(declare-fun res!2198070 () Bool)

(assert (=> b!5171557 (=> res!2198070 e!3222383)))

(declare-fun lt!2129153 () (InoxSet Context!8014))

(declare-fun isEmpty!32171 (List!60212) Bool)

(declare-datatypes ((tuple2!63800 0))(
  ( (tuple2!63801 (_1!35203 List!60212) (_2!35203 List!60212)) )
))
(declare-fun findLongestMatchInnerZipper!281 ((InoxSet Context!8014) List!60212 Int List!60212 List!60212 Int) tuple2!63800)

(declare-fun tail!10156 (List!60212) List!60212)

(assert (=> b!5171557 (= res!2198070 (isEmpty!32171 (_1!35203 (findLongestMatchInnerZipper!281 lt!2129153 lt!2129155 (+ 1 lt!2129156) (tail!10156 lt!2129146) input!5817 lt!2129152))))))

(declare-fun derivationStepZipper!977 ((InoxSet Context!8014) C!29516) (InoxSet Context!8014))

(assert (=> b!5171557 (= lt!2129153 (derivationStepZipper!977 z!4581 lt!2129144))))

(declare-fun res!2198068 () Bool)

(assert (=> start!547424 (=> (not res!2198068) (not e!3222387))))

(assert (=> start!547424 (= res!2198068 (isPrefix!5756 testedP!294 input!5817))))

(assert (=> start!547424 e!3222387))

(declare-fun e!3222381 () Bool)

(assert (=> start!547424 e!3222381))

(declare-fun e!3222386 () Bool)

(assert (=> start!547424 e!3222386))

(declare-fun condSetEmpty!32039 () Bool)

(assert (=> start!547424 (= condSetEmpty!32039 (= baseZ!62 ((as const (Array Context!8014 Bool)) false)))))

(declare-fun setRes!32039 () Bool)

(assert (=> start!547424 setRes!32039))

(declare-fun condSetEmpty!32040 () Bool)

(assert (=> start!547424 (= condSetEmpty!32040 (= z!4581 ((as const (Array Context!8014 Bool)) false)))))

(assert (=> start!547424 setRes!32040))

(declare-fun b!5171558 () Bool)

(declare-fun res!2198072 () Bool)

(assert (=> b!5171558 (=> (not res!2198072) (not e!3222388))))

(assert (=> b!5171558 (= res!2198072 (not (= testedP!294 input!5817)))))

(declare-fun setIsEmpty!32039 () Bool)

(assert (=> setIsEmpty!32039 setRes!32039))

(declare-fun setIsEmpty!32040 () Bool)

(assert (=> setIsEmpty!32040 setRes!32040))

(declare-fun b!5171559 () Bool)

(declare-fun tp_is_empty!38499 () Bool)

(declare-fun tp!1450803 () Bool)

(assert (=> b!5171559 (= e!3222386 (and tp_is_empty!38499 tp!1450803))))

(declare-fun b!5171560 () Bool)

(assert (=> b!5171560 (= e!3222387 e!3222388)))

(declare-fun res!2198071 () Bool)

(assert (=> b!5171560 (=> (not res!2198071) (not e!3222388))))

(assert (=> b!5171560 (= res!2198071 (not (isEmpty!32171 (_1!35203 (findLongestMatchInnerZipper!281 z!4581 testedP!294 lt!2129156 lt!2129146 input!5817 lt!2129152)))))))

(declare-fun size!39659 (List!60212) Int)

(assert (=> b!5171560 (= lt!2129152 (size!39659 input!5817))))

(declare-fun getSuffix!3406 (List!60212 List!60212) List!60212)

(assert (=> b!5171560 (= lt!2129146 (getSuffix!3406 input!5817 testedP!294))))

(assert (=> b!5171560 (= lt!2129156 (size!39659 testedP!294))))

(declare-fun b!5171561 () Bool)

(declare-fun e!3222380 () Bool)

(declare-fun tp!1450805 () Bool)

(assert (=> b!5171561 (= e!3222380 tp!1450805)))

(declare-fun b!5171562 () Bool)

(declare-fun e!3222382 () Bool)

(declare-fun lt!2129157 () tuple2!63800)

(declare-fun matchZipper!971 ((InoxSet Context!8014) List!60212) Bool)

(assert (=> b!5171562 (= e!3222382 (matchZipper!971 baseZ!62 (_1!35203 lt!2129157)))))

(declare-fun b!5171563 () Bool)

(declare-fun Unit!151759 () Unit!151756)

(assert (=> b!5171563 (= e!3222384 Unit!151759)))

(declare-fun lt!2129148 () Unit!151756)

(declare-fun lemmaIsPrefixRefl!3763 (List!60212 List!60212) Unit!151756)

(assert (=> b!5171563 (= lt!2129148 (lemmaIsPrefixRefl!3763 input!5817 input!5817))))

(assert (=> b!5171563 (isPrefix!5756 input!5817 input!5817)))

(declare-fun lt!2129154 () Unit!151756)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1405 (List!60212 List!60212 List!60212) Unit!151756)

(assert (=> b!5171563 (= lt!2129154 (lemmaIsPrefixSameLengthThenSameList!1405 input!5817 testedP!294 input!5817))))

(assert (=> b!5171563 false))

(declare-fun b!5171564 () Bool)

(assert (=> b!5171564 (= e!3222383 true)))

(declare-fun lt!2129150 () List!60212)

(assert (=> b!5171564 (= lt!2129150 (++!13147 testedP!294 lt!2129146))))

(assert (=> b!5171564 e!3222382))

(declare-fun res!2198067 () Bool)

(assert (=> b!5171564 (=> res!2198067 e!3222382)))

(assert (=> b!5171564 (= res!2198067 (isEmpty!32171 (_1!35203 lt!2129157)))))

(assert (=> b!5171564 (= lt!2129157 (findLongestMatchInnerZipper!281 lt!2129153 lt!2129155 (size!39659 lt!2129155) (getSuffix!3406 input!5817 lt!2129155) input!5817 lt!2129152))))

(declare-fun lt!2129147 () Unit!151756)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!19 ((InoxSet Context!8014) (InoxSet Context!8014) List!60212 List!60212) Unit!151756)

(assert (=> b!5171564 (= lt!2129147 (longestMatchIsAcceptedByMatchOrIsEmptyRec!19 baseZ!62 lt!2129153 lt!2129155 input!5817))))

(assert (=> b!5171564 (= (derivationZipper!246 baseZ!62 lt!2129155) lt!2129153)))

(declare-fun lt!2129149 () Unit!151756)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!97 ((InoxSet Context!8014) (InoxSet Context!8014) List!60212 C!29516) Unit!151756)

(assert (=> b!5171564 (= lt!2129149 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!97 baseZ!62 z!4581 testedP!294 lt!2129144))))

(declare-fun setElem!32039 () Context!8014)

(declare-fun tp!1450807 () Bool)

(declare-fun setNonEmpty!32040 () Bool)

(assert (=> setNonEmpty!32040 (= setRes!32039 (and tp!1450807 (inv!79804 setElem!32039) e!3222380))))

(declare-fun setRest!32039 () (InoxSet Context!8014))

(assert (=> setNonEmpty!32040 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8014 Bool)) false) setElem!32039 true) setRest!32039))))

(declare-fun b!5171565 () Bool)

(declare-fun tp!1450804 () Bool)

(assert (=> b!5171565 (= e!3222381 (and tp_is_empty!38499 tp!1450804))))

(assert (= (and start!547424 res!2198068) b!5171556))

(assert (= (and b!5171556 res!2198073) b!5171560))

(assert (= (and b!5171560 res!2198071) b!5171558))

(assert (= (and b!5171558 res!2198072) b!5171555))

(assert (= (and b!5171555 c!890229) b!5171563))

(assert (= (and b!5171555 (not c!890229)) b!5171553))

(assert (= (and b!5171555 (not res!2198074)) b!5171554))

(assert (= (and b!5171554 (not res!2198069)) b!5171557))

(assert (= (and b!5171557 (not res!2198070)) b!5171564))

(assert (= (and b!5171564 (not res!2198067)) b!5171562))

(get-info :version)

(assert (= (and start!547424 ((_ is Cons!60088) testedP!294)) b!5171565))

(assert (= (and start!547424 ((_ is Cons!60088) input!5817)) b!5171559))

(assert (= (and start!547424 condSetEmpty!32039) setIsEmpty!32039))

(assert (= (and start!547424 (not condSetEmpty!32039)) setNonEmpty!32040))

(assert (= setNonEmpty!32040 b!5171561))

(assert (= (and start!547424 condSetEmpty!32040) setIsEmpty!32040))

(assert (= (and start!547424 (not condSetEmpty!32040)) setNonEmpty!32039))

(assert (= setNonEmpty!32039 b!5171552))

(declare-fun m!6224518 () Bool)

(assert (=> setNonEmpty!32039 m!6224518))

(declare-fun m!6224520 () Bool)

(assert (=> b!5171557 m!6224520))

(assert (=> b!5171557 m!6224520))

(declare-fun m!6224522 () Bool)

(assert (=> b!5171557 m!6224522))

(declare-fun m!6224524 () Bool)

(assert (=> b!5171557 m!6224524))

(declare-fun m!6224526 () Bool)

(assert (=> b!5171557 m!6224526))

(declare-fun m!6224528 () Bool)

(assert (=> b!5171562 m!6224528))

(declare-fun m!6224530 () Bool)

(assert (=> b!5171563 m!6224530))

(declare-fun m!6224532 () Bool)

(assert (=> b!5171563 m!6224532))

(declare-fun m!6224534 () Bool)

(assert (=> b!5171563 m!6224534))

(declare-fun m!6224536 () Bool)

(assert (=> b!5171560 m!6224536))

(declare-fun m!6224538 () Bool)

(assert (=> b!5171560 m!6224538))

(declare-fun m!6224540 () Bool)

(assert (=> b!5171560 m!6224540))

(declare-fun m!6224542 () Bool)

(assert (=> b!5171560 m!6224542))

(declare-fun m!6224544 () Bool)

(assert (=> b!5171560 m!6224544))

(declare-fun m!6224546 () Bool)

(assert (=> b!5171555 m!6224546))

(declare-fun m!6224548 () Bool)

(assert (=> setNonEmpty!32040 m!6224548))

(declare-fun m!6224550 () Bool)

(assert (=> b!5171556 m!6224550))

(declare-fun m!6224552 () Bool)

(assert (=> b!5171564 m!6224552))

(declare-fun m!6224554 () Bool)

(assert (=> b!5171564 m!6224554))

(assert (=> b!5171564 m!6224552))

(declare-fun m!6224556 () Bool)

(assert (=> b!5171564 m!6224556))

(declare-fun m!6224558 () Bool)

(assert (=> b!5171564 m!6224558))

(declare-fun m!6224560 () Bool)

(assert (=> b!5171564 m!6224560))

(declare-fun m!6224562 () Bool)

(assert (=> b!5171564 m!6224562))

(declare-fun m!6224564 () Bool)

(assert (=> b!5171564 m!6224564))

(declare-fun m!6224566 () Bool)

(assert (=> b!5171564 m!6224566))

(assert (=> b!5171564 m!6224554))

(declare-fun m!6224568 () Bool)

(assert (=> b!5171554 m!6224568))

(declare-fun m!6224570 () Bool)

(assert (=> b!5171554 m!6224570))

(declare-fun m!6224572 () Bool)

(assert (=> b!5171554 m!6224572))

(declare-fun m!6224574 () Bool)

(assert (=> b!5171554 m!6224574))

(declare-fun m!6224576 () Bool)

(assert (=> b!5171554 m!6224576))

(declare-fun m!6224578 () Bool)

(assert (=> start!547424 m!6224578))

(check-sat (not b!5171559) (not b!5171552) (not b!5171556) (not b!5171565) (not start!547424) (not setNonEmpty!32040) (not setNonEmpty!32039) (not b!5171555) (not b!5171562) (not b!5171554) (not b!5171564) (not b!5171561) (not b!5171557) tp_is_empty!38499 (not b!5171563) (not b!5171560))
(check-sat)
