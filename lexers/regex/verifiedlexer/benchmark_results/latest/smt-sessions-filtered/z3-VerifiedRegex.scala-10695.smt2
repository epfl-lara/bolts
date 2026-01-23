; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547680 () Bool)

(assert start!547680)

(declare-fun b!5173057 () Bool)

(declare-datatypes ((Unit!151844 0))(
  ( (Unit!151845) )
))
(declare-fun e!3223361 () Unit!151844)

(declare-fun Unit!151846 () Unit!151844)

(assert (=> b!5173057 (= e!3223361 Unit!151846)))

(declare-fun tp!1451271 () Bool)

(declare-fun e!3223360 () Bool)

(declare-fun setRes!32147 () Bool)

(declare-fun setNonEmpty!32147 () Bool)

(declare-datatypes ((C!29544 0))(
  ( (C!29545 (val!24474 Int)) )
))
(declare-datatypes ((Regex!14637 0))(
  ( (ElementMatch!14637 (c!890586 C!29544)) (Concat!23482 (regOne!29786 Regex!14637) (regTwo!29786 Regex!14637)) (EmptyExpr!14637) (Star!14637 (reg!14966 Regex!14637)) (EmptyLang!14637) (Union!14637 (regOne!29787 Regex!14637) (regTwo!29787 Regex!14637)) )
))
(declare-datatypes ((List!60243 0))(
  ( (Nil!60119) (Cons!60119 (h!66567 Regex!14637) (t!373396 List!60243)) )
))
(declare-datatypes ((Context!8042 0))(
  ( (Context!8043 (exprs!4521 List!60243)) )
))
(declare-fun setElem!32147 () Context!8042)

(declare-fun inv!79839 (Context!8042) Bool)

(assert (=> setNonEmpty!32147 (= setRes!32147 (and tp!1451271 (inv!79839 setElem!32147) e!3223360))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!8042))

(declare-fun setRest!32148 () (InoxSet Context!8042))

(assert (=> setNonEmpty!32147 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8042 Bool)) false) setElem!32147 true) setRest!32148))))

(declare-fun b!5173058 () Bool)

(declare-fun e!3223364 () Bool)

(declare-fun e!3223359 () Bool)

(assert (=> b!5173058 (= e!3223364 (not e!3223359))))

(declare-fun res!2198644 () Bool)

(assert (=> b!5173058 (=> res!2198644 e!3223359)))

(declare-fun lt!2130395 () Int)

(declare-fun lt!2130404 () Int)

(assert (=> b!5173058 (= res!2198644 (>= lt!2130395 lt!2130404))))

(declare-fun lt!2130407 () Unit!151844)

(assert (=> b!5173058 (= lt!2130407 e!3223361)))

(declare-fun c!890585 () Bool)

(assert (=> b!5173058 (= c!890585 (= lt!2130395 lt!2130404))))

(assert (=> b!5173058 (<= lt!2130395 lt!2130404)))

(declare-fun lt!2130397 () Unit!151844)

(declare-datatypes ((List!60244 0))(
  ( (Nil!60120) (Cons!60120 (h!66568 C!29544) (t!373397 List!60244)) )
))
(declare-fun testedP!294 () List!60244)

(declare-fun input!5817 () List!60244)

(declare-fun lemmaIsPrefixThenSmallerEqSize!933 (List!60244 List!60244) Unit!151844)

(assert (=> b!5173058 (= lt!2130397 (lemmaIsPrefixThenSmallerEqSize!933 testedP!294 input!5817))))

(declare-fun setIsEmpty!32147 () Bool)

(assert (=> setIsEmpty!32147 setRes!32147))

(declare-fun b!5173059 () Bool)

(declare-fun Unit!151847 () Unit!151844)

(assert (=> b!5173059 (= e!3223361 Unit!151847)))

(declare-fun lt!2130405 () Unit!151844)

(declare-fun lemmaIsPrefixRefl!3777 (List!60244 List!60244) Unit!151844)

(assert (=> b!5173059 (= lt!2130405 (lemmaIsPrefixRefl!3777 input!5817 input!5817))))

(declare-fun isPrefix!5770 (List!60244 List!60244) Bool)

(assert (=> b!5173059 (isPrefix!5770 input!5817 input!5817)))

(declare-fun lt!2130399 () Unit!151844)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1419 (List!60244 List!60244 List!60244) Unit!151844)

(assert (=> b!5173059 (= lt!2130399 (lemmaIsPrefixSameLengthThenSameList!1419 input!5817 testedP!294 input!5817))))

(assert (=> b!5173059 false))

(declare-fun b!5173060 () Bool)

(declare-fun res!2198642 () Bool)

(declare-fun e!3223366 () Bool)

(assert (=> b!5173060 (=> (not res!2198642) (not e!3223366))))

(declare-fun z!4581 () (InoxSet Context!8042))

(declare-fun derivationZipper!260 ((InoxSet Context!8042) List!60244) (InoxSet Context!8042))

(assert (=> b!5173060 (= res!2198642 (= (derivationZipper!260 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5173061 () Bool)

(declare-fun e!3223365 () Bool)

(declare-datatypes ((tuple2!63828 0))(
  ( (tuple2!63829 (_1!35217 List!60244) (_2!35217 List!60244)) )
))
(declare-fun lt!2130408 () tuple2!63828)

(declare-fun matchZipper!977 ((InoxSet Context!8042) List!60244) Bool)

(assert (=> b!5173061 (= e!3223365 (matchZipper!977 baseZ!62 (_1!35217 lt!2130408)))))

(declare-fun b!5173062 () Bool)

(declare-fun e!3223358 () Bool)

(declare-fun tp_is_empty!38527 () Bool)

(declare-fun tp!1451275 () Bool)

(assert (=> b!5173062 (= e!3223358 (and tp_is_empty!38527 tp!1451275))))

(declare-fun b!5173063 () Bool)

(declare-fun e!3223362 () Bool)

(declare-fun tp!1451273 () Bool)

(assert (=> b!5173063 (= e!3223362 (and tp_is_empty!38527 tp!1451273))))

(declare-fun res!2198645 () Bool)

(assert (=> start!547680 (=> (not res!2198645) (not e!3223366))))

(assert (=> start!547680 (= res!2198645 (isPrefix!5770 testedP!294 input!5817))))

(assert (=> start!547680 e!3223366))

(assert (=> start!547680 e!3223358))

(assert (=> start!547680 e!3223362))

(declare-fun condSetEmpty!32147 () Bool)

(assert (=> start!547680 (= condSetEmpty!32147 (= baseZ!62 ((as const (Array Context!8042 Bool)) false)))))

(assert (=> start!547680 setRes!32147))

(declare-fun condSetEmpty!32148 () Bool)

(assert (=> start!547680 (= condSetEmpty!32148 (= z!4581 ((as const (Array Context!8042 Bool)) false)))))

(declare-fun setRes!32148 () Bool)

(assert (=> start!547680 setRes!32148))

(declare-fun b!5173064 () Bool)

(declare-fun res!2198646 () Bool)

(assert (=> b!5173064 (=> (not res!2198646) (not e!3223364))))

(assert (=> b!5173064 (= res!2198646 (not (= testedP!294 input!5817)))))

(declare-fun e!3223357 () Bool)

(declare-fun b!5173065 () Bool)

(declare-fun lt!2130400 () List!60244)

(declare-fun ++!13161 (List!60244 List!60244) List!60244)

(assert (=> b!5173065 (= e!3223357 (= (++!13161 testedP!294 lt!2130400) input!5817))))

(assert (=> b!5173065 e!3223365))

(declare-fun res!2198640 () Bool)

(assert (=> b!5173065 (=> res!2198640 e!3223365)))

(declare-fun isEmpty!32189 (List!60244) Bool)

(assert (=> b!5173065 (= res!2198640 (isEmpty!32189 (_1!35217 lt!2130408)))))

(declare-fun lt!2130406 () (InoxSet Context!8042))

(declare-fun lt!2130401 () List!60244)

(declare-fun findLongestMatchInnerZipper!295 ((InoxSet Context!8042) List!60244 Int List!60244 List!60244 Int) tuple2!63828)

(declare-fun size!39673 (List!60244) Int)

(declare-fun getSuffix!3420 (List!60244 List!60244) List!60244)

(assert (=> b!5173065 (= lt!2130408 (findLongestMatchInnerZipper!295 lt!2130406 lt!2130401 (size!39673 lt!2130401) (getSuffix!3420 input!5817 lt!2130401) input!5817 lt!2130404))))

(declare-fun lt!2130403 () Unit!151844)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!25 ((InoxSet Context!8042) (InoxSet Context!8042) List!60244 List!60244) Unit!151844)

(assert (=> b!5173065 (= lt!2130403 (longestMatchIsAcceptedByMatchOrIsEmptyRec!25 baseZ!62 lt!2130406 lt!2130401 input!5817))))

(assert (=> b!5173065 (= (derivationZipper!260 baseZ!62 lt!2130401) lt!2130406)))

(declare-fun lt!2130402 () C!29544)

(declare-fun derivationStepZipper!989 ((InoxSet Context!8042) C!29544) (InoxSet Context!8042))

(assert (=> b!5173065 (= lt!2130406 (derivationStepZipper!989 z!4581 lt!2130402))))

(declare-fun lt!2130396 () Unit!151844)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!107 ((InoxSet Context!8042) (InoxSet Context!8042) List!60244 C!29544) Unit!151844)

(assert (=> b!5173065 (= lt!2130396 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!107 baseZ!62 z!4581 testedP!294 lt!2130402))))

(declare-fun b!5173066 () Bool)

(assert (=> b!5173066 (= e!3223359 e!3223357)))

(declare-fun res!2198643 () Bool)

(assert (=> b!5173066 (=> res!2198643 e!3223357)))

(declare-fun nullableZipper!1183 ((InoxSet Context!8042)) Bool)

(assert (=> b!5173066 (= res!2198643 (nullableZipper!1183 z!4581))))

(assert (=> b!5173066 (isPrefix!5770 lt!2130401 input!5817)))

(declare-fun lt!2130398 () Unit!151844)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1083 (List!60244 List!60244) Unit!151844)

(assert (=> b!5173066 (= lt!2130398 (lemmaAddHeadSuffixToPrefixStillPrefix!1083 testedP!294 input!5817))))

(assert (=> b!5173066 (= lt!2130401 (++!13161 testedP!294 (Cons!60120 lt!2130402 Nil!60120)))))

(declare-fun head!11061 (List!60244) C!29544)

(assert (=> b!5173066 (= lt!2130402 (head!11061 lt!2130400))))

(declare-fun b!5173067 () Bool)

(declare-fun e!3223363 () Bool)

(declare-fun tp!1451274 () Bool)

(assert (=> b!5173067 (= e!3223363 tp!1451274)))

(declare-fun setElem!32148 () Context!8042)

(declare-fun setNonEmpty!32148 () Bool)

(declare-fun tp!1451272 () Bool)

(assert (=> setNonEmpty!32148 (= setRes!32148 (and tp!1451272 (inv!79839 setElem!32148) e!3223363))))

(declare-fun setRest!32147 () (InoxSet Context!8042))

(assert (=> setNonEmpty!32148 (= z!4581 ((_ map or) (store ((as const (Array Context!8042 Bool)) false) setElem!32148 true) setRest!32147))))

(declare-fun setIsEmpty!32148 () Bool)

(assert (=> setIsEmpty!32148 setRes!32148))

(declare-fun b!5173068 () Bool)

(assert (=> b!5173068 (= e!3223366 e!3223364)))

(declare-fun res!2198641 () Bool)

(assert (=> b!5173068 (=> (not res!2198641) (not e!3223364))))

(assert (=> b!5173068 (= res!2198641 (not (isEmpty!32189 (_1!35217 (findLongestMatchInnerZipper!295 z!4581 testedP!294 lt!2130395 lt!2130400 input!5817 lt!2130404)))))))

(assert (=> b!5173068 (= lt!2130404 (size!39673 input!5817))))

(assert (=> b!5173068 (= lt!2130400 (getSuffix!3420 input!5817 testedP!294))))

(assert (=> b!5173068 (= lt!2130395 (size!39673 testedP!294))))

(declare-fun b!5173069 () Bool)

(declare-fun tp!1451270 () Bool)

(assert (=> b!5173069 (= e!3223360 tp!1451270)))

(assert (= (and start!547680 res!2198645) b!5173060))

(assert (= (and b!5173060 res!2198642) b!5173068))

(assert (= (and b!5173068 res!2198641) b!5173064))

(assert (= (and b!5173064 res!2198646) b!5173058))

(assert (= (and b!5173058 c!890585) b!5173059))

(assert (= (and b!5173058 (not c!890585)) b!5173057))

(assert (= (and b!5173058 (not res!2198644)) b!5173066))

(assert (= (and b!5173066 (not res!2198643)) b!5173065))

(assert (= (and b!5173065 (not res!2198640)) b!5173061))

(get-info :version)

(assert (= (and start!547680 ((_ is Cons!60120) testedP!294)) b!5173062))

(assert (= (and start!547680 ((_ is Cons!60120) input!5817)) b!5173063))

(assert (= (and start!547680 condSetEmpty!32147) setIsEmpty!32147))

(assert (= (and start!547680 (not condSetEmpty!32147)) setNonEmpty!32147))

(assert (= setNonEmpty!32147 b!5173069))

(assert (= (and start!547680 condSetEmpty!32148) setIsEmpty!32148))

(assert (= (and start!547680 (not condSetEmpty!32148)) setNonEmpty!32148))

(assert (= setNonEmpty!32148 b!5173067))

(declare-fun m!6226608 () Bool)

(assert (=> b!5173058 m!6226608))

(declare-fun m!6226610 () Bool)

(assert (=> setNonEmpty!32147 m!6226610))

(declare-fun m!6226612 () Bool)

(assert (=> setNonEmpty!32148 m!6226612))

(declare-fun m!6226614 () Bool)

(assert (=> b!5173059 m!6226614))

(declare-fun m!6226616 () Bool)

(assert (=> b!5173059 m!6226616))

(declare-fun m!6226618 () Bool)

(assert (=> b!5173059 m!6226618))

(declare-fun m!6226620 () Bool)

(assert (=> b!5173065 m!6226620))

(declare-fun m!6226622 () Bool)

(assert (=> b!5173065 m!6226622))

(declare-fun m!6226624 () Bool)

(assert (=> b!5173065 m!6226624))

(declare-fun m!6226626 () Bool)

(assert (=> b!5173065 m!6226626))

(declare-fun m!6226628 () Bool)

(assert (=> b!5173065 m!6226628))

(assert (=> b!5173065 m!6226622))

(assert (=> b!5173065 m!6226624))

(declare-fun m!6226630 () Bool)

(assert (=> b!5173065 m!6226630))

(declare-fun m!6226632 () Bool)

(assert (=> b!5173065 m!6226632))

(declare-fun m!6226634 () Bool)

(assert (=> b!5173065 m!6226634))

(declare-fun m!6226636 () Bool)

(assert (=> b!5173065 m!6226636))

(declare-fun m!6226638 () Bool)

(assert (=> b!5173060 m!6226638))

(declare-fun m!6226640 () Bool)

(assert (=> b!5173061 m!6226640))

(declare-fun m!6226642 () Bool)

(assert (=> b!5173068 m!6226642))

(declare-fun m!6226644 () Bool)

(assert (=> b!5173068 m!6226644))

(declare-fun m!6226646 () Bool)

(assert (=> b!5173068 m!6226646))

(declare-fun m!6226648 () Bool)

(assert (=> b!5173068 m!6226648))

(declare-fun m!6226650 () Bool)

(assert (=> b!5173068 m!6226650))

(declare-fun m!6226652 () Bool)

(assert (=> b!5173066 m!6226652))

(declare-fun m!6226654 () Bool)

(assert (=> b!5173066 m!6226654))

(declare-fun m!6226656 () Bool)

(assert (=> b!5173066 m!6226656))

(declare-fun m!6226658 () Bool)

(assert (=> b!5173066 m!6226658))

(declare-fun m!6226660 () Bool)

(assert (=> b!5173066 m!6226660))

(declare-fun m!6226662 () Bool)

(assert (=> start!547680 m!6226662))

(check-sat (not start!547680) (not b!5173063) (not b!5173065) (not b!5173060) (not b!5173067) tp_is_empty!38527 (not setNonEmpty!32148) (not b!5173062) (not b!5173061) (not b!5173059) (not b!5173058) (not b!5173066) (not b!5173068) (not b!5173069) (not setNonEmpty!32147))
(check-sat)
(get-model)

(declare-fun d!1669588 () Bool)

(assert (=> d!1669588 (isPrefix!5770 input!5817 input!5817)))

(declare-fun lt!2130420 () Unit!151844)

(declare-fun choose!38367 (List!60244 List!60244) Unit!151844)

(assert (=> d!1669588 (= lt!2130420 (choose!38367 input!5817 input!5817))))

(assert (=> d!1669588 (= (lemmaIsPrefixRefl!3777 input!5817 input!5817) lt!2130420)))

(declare-fun bs!1203784 () Bool)

(assert (= bs!1203784 d!1669588))

(assert (=> bs!1203784 m!6226616))

(declare-fun m!6226674 () Bool)

(assert (=> bs!1203784 m!6226674))

(assert (=> b!5173059 d!1669588))

(declare-fun b!5173096 () Bool)

(declare-fun e!3223386 () Bool)

(declare-fun e!3223387 () Bool)

(assert (=> b!5173096 (= e!3223386 e!3223387)))

(declare-fun res!2198670 () Bool)

(assert (=> b!5173096 (=> (not res!2198670) (not e!3223387))))

(assert (=> b!5173096 (= res!2198670 (not ((_ is Nil!60120) input!5817)))))

(declare-fun b!5173098 () Bool)

(declare-fun tail!10162 (List!60244) List!60244)

(assert (=> b!5173098 (= e!3223387 (isPrefix!5770 (tail!10162 input!5817) (tail!10162 input!5817)))))

(declare-fun d!1669592 () Bool)

(declare-fun e!3223385 () Bool)

(assert (=> d!1669592 e!3223385))

(declare-fun res!2198668 () Bool)

(assert (=> d!1669592 (=> res!2198668 e!3223385)))

(declare-fun lt!2130423 () Bool)

(assert (=> d!1669592 (= res!2198668 (not lt!2130423))))

(assert (=> d!1669592 (= lt!2130423 e!3223386)))

(declare-fun res!2198667 () Bool)

(assert (=> d!1669592 (=> res!2198667 e!3223386)))

(assert (=> d!1669592 (= res!2198667 ((_ is Nil!60120) input!5817))))

(assert (=> d!1669592 (= (isPrefix!5770 input!5817 input!5817) lt!2130423)))

(declare-fun b!5173099 () Bool)

(assert (=> b!5173099 (= e!3223385 (>= (size!39673 input!5817) (size!39673 input!5817)))))

(declare-fun b!5173097 () Bool)

(declare-fun res!2198669 () Bool)

(assert (=> b!5173097 (=> (not res!2198669) (not e!3223387))))

(assert (=> b!5173097 (= res!2198669 (= (head!11061 input!5817) (head!11061 input!5817)))))

(assert (= (and d!1669592 (not res!2198667)) b!5173096))

(assert (= (and b!5173096 res!2198670) b!5173097))

(assert (= (and b!5173097 res!2198669) b!5173098))

(assert (= (and d!1669592 (not res!2198668)) b!5173099))

(declare-fun m!6226686 () Bool)

(assert (=> b!5173098 m!6226686))

(assert (=> b!5173098 m!6226686))

(assert (=> b!5173098 m!6226686))

(assert (=> b!5173098 m!6226686))

(declare-fun m!6226688 () Bool)

(assert (=> b!5173098 m!6226688))

(assert (=> b!5173099 m!6226650))

(assert (=> b!5173099 m!6226650))

(declare-fun m!6226690 () Bool)

(assert (=> b!5173097 m!6226690))

(assert (=> b!5173097 m!6226690))

(assert (=> b!5173059 d!1669592))

(declare-fun d!1669596 () Bool)

(assert (=> d!1669596 (= input!5817 testedP!294)))

(declare-fun lt!2130426 () Unit!151844)

(declare-fun choose!38368 (List!60244 List!60244 List!60244) Unit!151844)

(assert (=> d!1669596 (= lt!2130426 (choose!38368 input!5817 testedP!294 input!5817))))

(assert (=> d!1669596 (isPrefix!5770 input!5817 input!5817)))

(assert (=> d!1669596 (= (lemmaIsPrefixSameLengthThenSameList!1419 input!5817 testedP!294 input!5817) lt!2130426)))

(declare-fun bs!1203785 () Bool)

(assert (= bs!1203785 d!1669596))

(declare-fun m!6226692 () Bool)

(assert (=> bs!1203785 m!6226692))

(assert (=> bs!1203785 m!6226616))

(assert (=> b!5173059 d!1669596))

(declare-fun d!1669598 () Bool)

(declare-fun lt!2130429 () Int)

(assert (=> d!1669598 (>= lt!2130429 0)))

(declare-fun e!3223390 () Int)

(assert (=> d!1669598 (= lt!2130429 e!3223390)))

(declare-fun c!890594 () Bool)

(assert (=> d!1669598 (= c!890594 ((_ is Nil!60120) input!5817))))

(assert (=> d!1669598 (= (size!39673 input!5817) lt!2130429)))

(declare-fun b!5173104 () Bool)

(assert (=> b!5173104 (= e!3223390 0)))

(declare-fun b!5173105 () Bool)

(assert (=> b!5173105 (= e!3223390 (+ 1 (size!39673 (t!373397 input!5817))))))

(assert (= (and d!1669598 c!890594) b!5173104))

(assert (= (and d!1669598 (not c!890594)) b!5173105))

(declare-fun m!6226694 () Bool)

(assert (=> b!5173105 m!6226694))

(assert (=> b!5173068 d!1669598))

(declare-fun d!1669600 () Bool)

(declare-fun lt!2130432 () List!60244)

(assert (=> d!1669600 (= (++!13161 testedP!294 lt!2130432) input!5817)))

(declare-fun e!3223393 () List!60244)

(assert (=> d!1669600 (= lt!2130432 e!3223393)))

(declare-fun c!890597 () Bool)

(assert (=> d!1669600 (= c!890597 ((_ is Cons!60120) testedP!294))))

(assert (=> d!1669600 (>= (size!39673 input!5817) (size!39673 testedP!294))))

(assert (=> d!1669600 (= (getSuffix!3420 input!5817 testedP!294) lt!2130432)))

(declare-fun b!5173110 () Bool)

(assert (=> b!5173110 (= e!3223393 (getSuffix!3420 (tail!10162 input!5817) (t!373397 testedP!294)))))

(declare-fun b!5173111 () Bool)

(assert (=> b!5173111 (= e!3223393 input!5817)))

(assert (= (and d!1669600 c!890597) b!5173110))

(assert (= (and d!1669600 (not c!890597)) b!5173111))

(declare-fun m!6226696 () Bool)

(assert (=> d!1669600 m!6226696))

(assert (=> d!1669600 m!6226650))

(assert (=> d!1669600 m!6226646))

(assert (=> b!5173110 m!6226686))

(assert (=> b!5173110 m!6226686))

(declare-fun m!6226698 () Bool)

(assert (=> b!5173110 m!6226698))

(assert (=> b!5173068 d!1669600))

(declare-fun b!5173140 () Bool)

(declare-fun c!890611 () Bool)

(declare-fun call!363240 () Bool)

(assert (=> b!5173140 (= c!890611 call!363240)))

(declare-fun lt!2130490 () Unit!151844)

(declare-fun lt!2130509 () Unit!151844)

(assert (=> b!5173140 (= lt!2130490 lt!2130509)))

(declare-fun lt!2130507 () C!29544)

(declare-fun lt!2130498 () List!60244)

(assert (=> b!5173140 (= (++!13161 (++!13161 testedP!294 (Cons!60120 lt!2130507 Nil!60120)) lt!2130498) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1582 (List!60244 C!29544 List!60244 List!60244) Unit!151844)

(assert (=> b!5173140 (= lt!2130509 (lemmaMoveElementToOtherListKeepsConcatEq!1582 testedP!294 lt!2130507 lt!2130498 input!5817))))

(assert (=> b!5173140 (= lt!2130498 (tail!10162 lt!2130400))))

(assert (=> b!5173140 (= lt!2130507 (head!11061 lt!2130400))))

(declare-fun lt!2130496 () Unit!151844)

(declare-fun lt!2130495 () Unit!151844)

(assert (=> b!5173140 (= lt!2130496 lt!2130495)))

(assert (=> b!5173140 (isPrefix!5770 (++!13161 testedP!294 (Cons!60120 (head!11061 (getSuffix!3420 input!5817 testedP!294)) Nil!60120)) input!5817)))

(assert (=> b!5173140 (= lt!2130495 (lemmaAddHeadSuffixToPrefixStillPrefix!1083 testedP!294 input!5817))))

(declare-fun lt!2130486 () List!60244)

(assert (=> b!5173140 (= lt!2130486 (++!13161 testedP!294 (Cons!60120 (head!11061 lt!2130400) Nil!60120)))))

(declare-fun lt!2130508 () Unit!151844)

(declare-fun e!3223417 () Unit!151844)

(assert (=> b!5173140 (= lt!2130508 e!3223417)))

(declare-fun c!890610 () Bool)

(assert (=> b!5173140 (= c!890610 (= (size!39673 testedP!294) (size!39673 input!5817)))))

(declare-fun lt!2130501 () Unit!151844)

(declare-fun lt!2130489 () Unit!151844)

(assert (=> b!5173140 (= lt!2130501 lt!2130489)))

(assert (=> b!5173140 (<= (size!39673 testedP!294) (size!39673 input!5817))))

(assert (=> b!5173140 (= lt!2130489 (lemmaIsPrefixThenSmallerEqSize!933 testedP!294 input!5817))))

(declare-fun e!3223416 () tuple2!63828)

(declare-fun e!3223411 () tuple2!63828)

(assert (=> b!5173140 (= e!3223416 e!3223411)))

(declare-fun b!5173141 () Bool)

(declare-fun c!890612 () Bool)

(assert (=> b!5173141 (= c!890612 call!363240)))

(declare-fun lt!2130493 () Unit!151844)

(declare-fun lt!2130510 () Unit!151844)

(assert (=> b!5173141 (= lt!2130493 lt!2130510)))

(assert (=> b!5173141 (= input!5817 testedP!294)))

(declare-fun call!363237 () Unit!151844)

(assert (=> b!5173141 (= lt!2130510 call!363237)))

(declare-fun lt!2130491 () Unit!151844)

(declare-fun lt!2130485 () Unit!151844)

(assert (=> b!5173141 (= lt!2130491 lt!2130485)))

(declare-fun call!363241 () Bool)

(assert (=> b!5173141 call!363241))

(declare-fun call!363236 () Unit!151844)

(assert (=> b!5173141 (= lt!2130485 call!363236)))

(declare-fun e!3223410 () tuple2!63828)

(assert (=> b!5173141 (= e!3223416 e!3223410)))

(declare-fun b!5173142 () Bool)

(declare-fun e!3223413 () tuple2!63828)

(assert (=> b!5173142 (= e!3223413 (tuple2!63829 Nil!60120 input!5817))))

(declare-fun b!5173143 () Bool)

(declare-fun Unit!151854 () Unit!151844)

(assert (=> b!5173143 (= e!3223417 Unit!151854)))

(declare-fun lt!2130506 () Unit!151844)

(assert (=> b!5173143 (= lt!2130506 call!363236)))

(assert (=> b!5173143 call!363241))

(declare-fun lt!2130494 () Unit!151844)

(assert (=> b!5173143 (= lt!2130494 lt!2130506)))

(declare-fun lt!2130503 () Unit!151844)

(assert (=> b!5173143 (= lt!2130503 call!363237)))

(assert (=> b!5173143 (= input!5817 testedP!294)))

(declare-fun lt!2130504 () Unit!151844)

(assert (=> b!5173143 (= lt!2130504 lt!2130503)))

(assert (=> b!5173143 false))

(declare-fun b!5173145 () Bool)

(assert (=> b!5173145 (= e!3223413 e!3223416)))

(declare-fun c!890613 () Bool)

(assert (=> b!5173145 (= c!890613 (= lt!2130395 lt!2130404))))

(declare-fun b!5173146 () Bool)

(declare-fun e!3223415 () Bool)

(declare-fun lt!2130500 () tuple2!63828)

(assert (=> b!5173146 (= e!3223415 (>= (size!39673 (_1!35217 lt!2130500)) (size!39673 testedP!294)))))

(declare-fun call!363238 () (InoxSet Context!8042))

(declare-fun call!363239 () tuple2!63828)

(declare-fun bm!363231 () Bool)

(declare-fun call!363242 () List!60244)

(assert (=> bm!363231 (= call!363239 (findLongestMatchInnerZipper!295 call!363238 lt!2130486 (+ lt!2130395 1) call!363242 input!5817 lt!2130404))))

(declare-fun bm!363232 () Bool)

(assert (=> bm!363232 (= call!363236 (lemmaIsPrefixRefl!3777 input!5817 input!5817))))

(declare-fun bm!363233 () Bool)

(assert (=> bm!363233 (= call!363242 (tail!10162 lt!2130400))))

(declare-fun b!5173147 () Bool)

(declare-fun Unit!151855 () Unit!151844)

(assert (=> b!5173147 (= e!3223417 Unit!151855)))

(declare-fun bm!363234 () Bool)

(assert (=> bm!363234 (= call!363241 (isPrefix!5770 input!5817 input!5817))))

(declare-fun bm!363235 () Bool)

(declare-fun call!363243 () C!29544)

(assert (=> bm!363235 (= call!363238 (derivationStepZipper!989 z!4581 call!363243))))

(declare-fun b!5173148 () Bool)

(declare-fun e!3223412 () tuple2!63828)

(assert (=> b!5173148 (= e!3223412 (tuple2!63829 testedP!294 lt!2130400))))

(declare-fun b!5173149 () Bool)

(assert (=> b!5173149 (= e!3223411 e!3223412)))

(declare-fun lt!2130492 () tuple2!63828)

(assert (=> b!5173149 (= lt!2130492 call!363239)))

(declare-fun c!890615 () Bool)

(assert (=> b!5173149 (= c!890615 (isEmpty!32189 (_1!35217 lt!2130492)))))

(declare-fun b!5173150 () Bool)

(assert (=> b!5173150 (= e!3223410 (tuple2!63829 testedP!294 Nil!60120))))

(declare-fun b!5173151 () Bool)

(assert (=> b!5173151 (= e!3223411 call!363239)))

(declare-fun bm!363236 () Bool)

(assert (=> bm!363236 (= call!363240 (nullableZipper!1183 z!4581))))

(declare-fun bm!363237 () Bool)

(assert (=> bm!363237 (= call!363237 (lemmaIsPrefixSameLengthThenSameList!1419 input!5817 testedP!294 input!5817))))

(declare-fun b!5173152 () Bool)

(declare-fun e!3223414 () Bool)

(assert (=> b!5173152 (= e!3223414 e!3223415)))

(declare-fun res!2198675 () Bool)

(assert (=> b!5173152 (=> res!2198675 e!3223415)))

(assert (=> b!5173152 (= res!2198675 (isEmpty!32189 (_1!35217 lt!2130500)))))

(declare-fun d!1669602 () Bool)

(assert (=> d!1669602 e!3223414))

(declare-fun res!2198676 () Bool)

(assert (=> d!1669602 (=> (not res!2198676) (not e!3223414))))

(assert (=> d!1669602 (= res!2198676 (= (++!13161 (_1!35217 lt!2130500) (_2!35217 lt!2130500)) input!5817))))

(assert (=> d!1669602 (= lt!2130500 e!3223413)))

(declare-fun c!890614 () Bool)

(declare-fun lostCauseZipper!1334 ((InoxSet Context!8042)) Bool)

(assert (=> d!1669602 (= c!890614 (lostCauseZipper!1334 z!4581))))

(declare-fun lt!2130497 () Unit!151844)

(declare-fun Unit!151856 () Unit!151844)

(assert (=> d!1669602 (= lt!2130497 Unit!151856)))

(assert (=> d!1669602 (= (getSuffix!3420 input!5817 testedP!294) lt!2130400)))

(declare-fun lt!2130502 () Unit!151844)

(declare-fun lt!2130499 () Unit!151844)

(assert (=> d!1669602 (= lt!2130502 lt!2130499)))

(declare-fun lt!2130505 () List!60244)

(assert (=> d!1669602 (= lt!2130400 lt!2130505)))

(declare-fun lemmaSamePrefixThenSameSuffix!2701 (List!60244 List!60244 List!60244 List!60244 List!60244) Unit!151844)

(assert (=> d!1669602 (= lt!2130499 (lemmaSamePrefixThenSameSuffix!2701 testedP!294 lt!2130400 testedP!294 lt!2130505 input!5817))))

(assert (=> d!1669602 (= lt!2130505 (getSuffix!3420 input!5817 testedP!294))))

(declare-fun lt!2130487 () Unit!151844)

(declare-fun lt!2130488 () Unit!151844)

(assert (=> d!1669602 (= lt!2130487 lt!2130488)))

(assert (=> d!1669602 (isPrefix!5770 testedP!294 (++!13161 testedP!294 lt!2130400))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3595 (List!60244 List!60244) Unit!151844)

(assert (=> d!1669602 (= lt!2130488 (lemmaConcatTwoListThenFirstIsPrefix!3595 testedP!294 lt!2130400))))

(assert (=> d!1669602 (= (++!13161 testedP!294 lt!2130400) input!5817)))

(assert (=> d!1669602 (= (findLongestMatchInnerZipper!295 z!4581 testedP!294 lt!2130395 lt!2130400 input!5817 lt!2130404) lt!2130500)))

(declare-fun b!5173144 () Bool)

(assert (=> b!5173144 (= e!3223410 (tuple2!63829 Nil!60120 input!5817))))

(declare-fun bm!363238 () Bool)

(assert (=> bm!363238 (= call!363243 (head!11061 lt!2130400))))

(declare-fun b!5173153 () Bool)

(assert (=> b!5173153 (= e!3223412 lt!2130492)))

(assert (= (and d!1669602 c!890614) b!5173142))

(assert (= (and d!1669602 (not c!890614)) b!5173145))

(assert (= (and b!5173145 c!890613) b!5173141))

(assert (= (and b!5173145 (not c!890613)) b!5173140))

(assert (= (and b!5173141 c!890612) b!5173150))

(assert (= (and b!5173141 (not c!890612)) b!5173144))

(assert (= (and b!5173140 c!890610) b!5173143))

(assert (= (and b!5173140 (not c!890610)) b!5173147))

(assert (= (and b!5173140 c!890611) b!5173149))

(assert (= (and b!5173140 (not c!890611)) b!5173151))

(assert (= (and b!5173149 c!890615) b!5173148))

(assert (= (and b!5173149 (not c!890615)) b!5173153))

(assert (= (or b!5173149 b!5173151) bm!363233))

(assert (= (or b!5173149 b!5173151) bm!363238))

(assert (= (or b!5173149 b!5173151) bm!363235))

(assert (= (or b!5173149 b!5173151) bm!363231))

(assert (= (or b!5173141 b!5173143) bm!363232))

(assert (= (or b!5173141 b!5173140) bm!363236))

(assert (= (or b!5173141 b!5173143) bm!363234))

(assert (= (or b!5173141 b!5173143) bm!363237))

(assert (= (and d!1669602 res!2198676) b!5173152))

(assert (= (and b!5173152 (not res!2198675)) b!5173146))

(assert (=> bm!363237 m!6226618))

(declare-fun m!6226700 () Bool)

(assert (=> bm!363231 m!6226700))

(declare-fun m!6226702 () Bool)

(assert (=> bm!363233 m!6226702))

(assert (=> bm!363232 m!6226614))

(assert (=> bm!363234 m!6226616))

(declare-fun m!6226704 () Bool)

(assert (=> b!5173152 m!6226704))

(declare-fun m!6226706 () Bool)

(assert (=> bm!363235 m!6226706))

(assert (=> bm!363236 m!6226658))

(declare-fun m!6226708 () Bool)

(assert (=> b!5173140 m!6226708))

(declare-fun m!6226710 () Bool)

(assert (=> b!5173140 m!6226710))

(assert (=> b!5173140 m!6226702))

(assert (=> b!5173140 m!6226650))

(declare-fun m!6226712 () Bool)

(assert (=> b!5173140 m!6226712))

(assert (=> b!5173140 m!6226648))

(declare-fun m!6226714 () Bool)

(assert (=> b!5173140 m!6226714))

(assert (=> b!5173140 m!6226654))

(assert (=> b!5173140 m!6226648))

(assert (=> b!5173140 m!6226646))

(declare-fun m!6226716 () Bool)

(assert (=> b!5173140 m!6226716))

(assert (=> b!5173140 m!6226652))

(assert (=> b!5173140 m!6226608))

(assert (=> b!5173140 m!6226710))

(declare-fun m!6226718 () Bool)

(assert (=> b!5173140 m!6226718))

(assert (=> b!5173140 m!6226716))

(declare-fun m!6226720 () Bool)

(assert (=> b!5173140 m!6226720))

(declare-fun m!6226722 () Bool)

(assert (=> b!5173149 m!6226722))

(declare-fun m!6226724 () Bool)

(assert (=> d!1669602 m!6226724))

(assert (=> d!1669602 m!6226636))

(declare-fun m!6226726 () Bool)

(assert (=> d!1669602 m!6226726))

(declare-fun m!6226728 () Bool)

(assert (=> d!1669602 m!6226728))

(declare-fun m!6226730 () Bool)

(assert (=> d!1669602 m!6226730))

(assert (=> d!1669602 m!6226648))

(assert (=> d!1669602 m!6226636))

(declare-fun m!6226732 () Bool)

(assert (=> d!1669602 m!6226732))

(assert (=> bm!363238 m!6226654))

(declare-fun m!6226734 () Bool)

(assert (=> b!5173146 m!6226734))

(assert (=> b!5173146 m!6226646))

(assert (=> b!5173068 d!1669602))

(declare-fun d!1669604 () Bool)

(declare-fun lt!2130511 () Int)

(assert (=> d!1669604 (>= lt!2130511 0)))

(declare-fun e!3223418 () Int)

(assert (=> d!1669604 (= lt!2130511 e!3223418)))

(declare-fun c!890616 () Bool)

(assert (=> d!1669604 (= c!890616 ((_ is Nil!60120) testedP!294))))

(assert (=> d!1669604 (= (size!39673 testedP!294) lt!2130511)))

(declare-fun b!5173154 () Bool)

(assert (=> b!5173154 (= e!3223418 0)))

(declare-fun b!5173155 () Bool)

(assert (=> b!5173155 (= e!3223418 (+ 1 (size!39673 (t!373397 testedP!294))))))

(assert (= (and d!1669604 c!890616) b!5173154))

(assert (= (and d!1669604 (not c!890616)) b!5173155))

(declare-fun m!6226736 () Bool)

(assert (=> b!5173155 m!6226736))

(assert (=> b!5173068 d!1669604))

(declare-fun d!1669606 () Bool)

(assert (=> d!1669606 (= (isEmpty!32189 (_1!35217 (findLongestMatchInnerZipper!295 z!4581 testedP!294 lt!2130395 lt!2130400 input!5817 lt!2130404))) ((_ is Nil!60120) (_1!35217 (findLongestMatchInnerZipper!295 z!4581 testedP!294 lt!2130395 lt!2130400 input!5817 lt!2130404))))))

(assert (=> b!5173068 d!1669606))

(declare-fun b!5173166 () Bool)

(declare-fun res!2198681 () Bool)

(declare-fun e!3223424 () Bool)

(assert (=> b!5173166 (=> (not res!2198681) (not e!3223424))))

(declare-fun lt!2130514 () List!60244)

(assert (=> b!5173166 (= res!2198681 (= (size!39673 lt!2130514) (+ (size!39673 testedP!294) (size!39673 lt!2130400))))))

(declare-fun b!5173165 () Bool)

(declare-fun e!3223423 () List!60244)

(assert (=> b!5173165 (= e!3223423 (Cons!60120 (h!66568 testedP!294) (++!13161 (t!373397 testedP!294) lt!2130400)))))

(declare-fun b!5173167 () Bool)

(assert (=> b!5173167 (= e!3223424 (or (not (= lt!2130400 Nil!60120)) (= lt!2130514 testedP!294)))))

(declare-fun b!5173164 () Bool)

(assert (=> b!5173164 (= e!3223423 lt!2130400)))

(declare-fun d!1669608 () Bool)

(assert (=> d!1669608 e!3223424))

(declare-fun res!2198682 () Bool)

(assert (=> d!1669608 (=> (not res!2198682) (not e!3223424))))

(declare-fun content!10653 (List!60244) (InoxSet C!29544))

(assert (=> d!1669608 (= res!2198682 (= (content!10653 lt!2130514) ((_ map or) (content!10653 testedP!294) (content!10653 lt!2130400))))))

(assert (=> d!1669608 (= lt!2130514 e!3223423)))

(declare-fun c!890619 () Bool)

(assert (=> d!1669608 (= c!890619 ((_ is Nil!60120) testedP!294))))

(assert (=> d!1669608 (= (++!13161 testedP!294 lt!2130400) lt!2130514)))

(assert (= (and d!1669608 c!890619) b!5173164))

(assert (= (and d!1669608 (not c!890619)) b!5173165))

(assert (= (and d!1669608 res!2198682) b!5173166))

(assert (= (and b!5173166 res!2198681) b!5173167))

(declare-fun m!6226738 () Bool)

(assert (=> b!5173166 m!6226738))

(assert (=> b!5173166 m!6226646))

(declare-fun m!6226740 () Bool)

(assert (=> b!5173166 m!6226740))

(declare-fun m!6226742 () Bool)

(assert (=> b!5173165 m!6226742))

(declare-fun m!6226744 () Bool)

(assert (=> d!1669608 m!6226744))

(declare-fun m!6226746 () Bool)

(assert (=> d!1669608 m!6226746))

(declare-fun m!6226748 () Bool)

(assert (=> d!1669608 m!6226748))

(assert (=> b!5173065 d!1669608))

(declare-fun d!1669610 () Bool)

(assert (=> d!1669610 (= (derivationZipper!260 baseZ!62 (++!13161 testedP!294 (Cons!60120 lt!2130402 Nil!60120))) (derivationStepZipper!989 z!4581 lt!2130402))))

(declare-fun lt!2130517 () Unit!151844)

(declare-fun choose!38369 ((InoxSet Context!8042) (InoxSet Context!8042) List!60244 C!29544) Unit!151844)

(assert (=> d!1669610 (= lt!2130517 (choose!38369 baseZ!62 z!4581 testedP!294 lt!2130402))))

(assert (=> d!1669610 (= (derivationZipper!260 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1669610 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!107 baseZ!62 z!4581 testedP!294 lt!2130402) lt!2130517)))

(declare-fun bs!1203786 () Bool)

(assert (= bs!1203786 d!1669610))

(assert (=> bs!1203786 m!6226660))

(assert (=> bs!1203786 m!6226638))

(declare-fun m!6226750 () Bool)

(assert (=> bs!1203786 m!6226750))

(assert (=> bs!1203786 m!6226634))

(assert (=> bs!1203786 m!6226660))

(declare-fun m!6226752 () Bool)

(assert (=> bs!1203786 m!6226752))

(assert (=> b!5173065 d!1669610))

(declare-fun d!1669612 () Bool)

(declare-fun lt!2130518 () List!60244)

(assert (=> d!1669612 (= (++!13161 lt!2130401 lt!2130518) input!5817)))

(declare-fun e!3223425 () List!60244)

(assert (=> d!1669612 (= lt!2130518 e!3223425)))

(declare-fun c!890621 () Bool)

(assert (=> d!1669612 (= c!890621 ((_ is Cons!60120) lt!2130401))))

(assert (=> d!1669612 (>= (size!39673 input!5817) (size!39673 lt!2130401))))

(assert (=> d!1669612 (= (getSuffix!3420 input!5817 lt!2130401) lt!2130518)))

(declare-fun b!5173168 () Bool)

(assert (=> b!5173168 (= e!3223425 (getSuffix!3420 (tail!10162 input!5817) (t!373397 lt!2130401)))))

(declare-fun b!5173169 () Bool)

(assert (=> b!5173169 (= e!3223425 input!5817)))

(assert (= (and d!1669612 c!890621) b!5173168))

(assert (= (and d!1669612 (not c!890621)) b!5173169))

(declare-fun m!6226754 () Bool)

(assert (=> d!1669612 m!6226754))

(assert (=> d!1669612 m!6226650))

(assert (=> d!1669612 m!6226622))

(assert (=> b!5173168 m!6226686))

(assert (=> b!5173168 m!6226686))

(declare-fun m!6226756 () Bool)

(assert (=> b!5173168 m!6226756))

(assert (=> b!5173065 d!1669612))

(declare-fun d!1669614 () Bool)

(assert (=> d!1669614 (= (isEmpty!32189 (_1!35217 lt!2130408)) ((_ is Nil!60120) (_1!35217 lt!2130408)))))

(assert (=> b!5173065 d!1669614))

(declare-fun d!1669616 () Bool)

(declare-fun lt!2130519 () Int)

(assert (=> d!1669616 (>= lt!2130519 0)))

(declare-fun e!3223426 () Int)

(assert (=> d!1669616 (= lt!2130519 e!3223426)))

(declare-fun c!890622 () Bool)

(assert (=> d!1669616 (= c!890622 ((_ is Nil!60120) lt!2130401))))

(assert (=> d!1669616 (= (size!39673 lt!2130401) lt!2130519)))

(declare-fun b!5173170 () Bool)

(assert (=> b!5173170 (= e!3223426 0)))

(declare-fun b!5173171 () Bool)

(assert (=> b!5173171 (= e!3223426 (+ 1 (size!39673 (t!373397 lt!2130401))))))

(assert (= (and d!1669616 c!890622) b!5173170))

(assert (= (and d!1669616 (not c!890622)) b!5173171))

(declare-fun m!6226758 () Bool)

(assert (=> b!5173171 m!6226758))

(assert (=> b!5173065 d!1669616))

(declare-fun b!5173172 () Bool)

(declare-fun c!890624 () Bool)

(declare-fun call!363248 () Bool)

(assert (=> b!5173172 (= c!890624 call!363248)))

(declare-fun lt!2130525 () Unit!151844)

(declare-fun lt!2130544 () Unit!151844)

(assert (=> b!5173172 (= lt!2130525 lt!2130544)))

(declare-fun lt!2130533 () List!60244)

(declare-fun lt!2130542 () C!29544)

(assert (=> b!5173172 (= (++!13161 (++!13161 lt!2130401 (Cons!60120 lt!2130542 Nil!60120)) lt!2130533) input!5817)))

(assert (=> b!5173172 (= lt!2130544 (lemmaMoveElementToOtherListKeepsConcatEq!1582 lt!2130401 lt!2130542 lt!2130533 input!5817))))

(assert (=> b!5173172 (= lt!2130533 (tail!10162 (getSuffix!3420 input!5817 lt!2130401)))))

(assert (=> b!5173172 (= lt!2130542 (head!11061 (getSuffix!3420 input!5817 lt!2130401)))))

(declare-fun lt!2130531 () Unit!151844)

(declare-fun lt!2130530 () Unit!151844)

(assert (=> b!5173172 (= lt!2130531 lt!2130530)))

(assert (=> b!5173172 (isPrefix!5770 (++!13161 lt!2130401 (Cons!60120 (head!11061 (getSuffix!3420 input!5817 lt!2130401)) Nil!60120)) input!5817)))

(assert (=> b!5173172 (= lt!2130530 (lemmaAddHeadSuffixToPrefixStillPrefix!1083 lt!2130401 input!5817))))

(declare-fun lt!2130521 () List!60244)

(assert (=> b!5173172 (= lt!2130521 (++!13161 lt!2130401 (Cons!60120 (head!11061 (getSuffix!3420 input!5817 lt!2130401)) Nil!60120)))))

(declare-fun lt!2130543 () Unit!151844)

(declare-fun e!3223434 () Unit!151844)

(assert (=> b!5173172 (= lt!2130543 e!3223434)))

(declare-fun c!890623 () Bool)

(assert (=> b!5173172 (= c!890623 (= (size!39673 lt!2130401) (size!39673 input!5817)))))

(declare-fun lt!2130536 () Unit!151844)

(declare-fun lt!2130524 () Unit!151844)

(assert (=> b!5173172 (= lt!2130536 lt!2130524)))

(assert (=> b!5173172 (<= (size!39673 lt!2130401) (size!39673 input!5817))))

(assert (=> b!5173172 (= lt!2130524 (lemmaIsPrefixThenSmallerEqSize!933 lt!2130401 input!5817))))

(declare-fun e!3223433 () tuple2!63828)

(declare-fun e!3223428 () tuple2!63828)

(assert (=> b!5173172 (= e!3223433 e!3223428)))

(declare-fun b!5173173 () Bool)

(declare-fun c!890625 () Bool)

(assert (=> b!5173173 (= c!890625 call!363248)))

(declare-fun lt!2130528 () Unit!151844)

(declare-fun lt!2130545 () Unit!151844)

(assert (=> b!5173173 (= lt!2130528 lt!2130545)))

(assert (=> b!5173173 (= input!5817 lt!2130401)))

(declare-fun call!363245 () Unit!151844)

(assert (=> b!5173173 (= lt!2130545 call!363245)))

(declare-fun lt!2130526 () Unit!151844)

(declare-fun lt!2130520 () Unit!151844)

(assert (=> b!5173173 (= lt!2130526 lt!2130520)))

(declare-fun call!363249 () Bool)

(assert (=> b!5173173 call!363249))

(declare-fun call!363244 () Unit!151844)

(assert (=> b!5173173 (= lt!2130520 call!363244)))

(declare-fun e!3223427 () tuple2!63828)

(assert (=> b!5173173 (= e!3223433 e!3223427)))

(declare-fun b!5173174 () Bool)

(declare-fun e!3223430 () tuple2!63828)

(assert (=> b!5173174 (= e!3223430 (tuple2!63829 Nil!60120 input!5817))))

(declare-fun b!5173175 () Bool)

(declare-fun Unit!151857 () Unit!151844)

(assert (=> b!5173175 (= e!3223434 Unit!151857)))

(declare-fun lt!2130541 () Unit!151844)

(assert (=> b!5173175 (= lt!2130541 call!363244)))

(assert (=> b!5173175 call!363249))

(declare-fun lt!2130529 () Unit!151844)

(assert (=> b!5173175 (= lt!2130529 lt!2130541)))

(declare-fun lt!2130538 () Unit!151844)

(assert (=> b!5173175 (= lt!2130538 call!363245)))

(assert (=> b!5173175 (= input!5817 lt!2130401)))

(declare-fun lt!2130539 () Unit!151844)

(assert (=> b!5173175 (= lt!2130539 lt!2130538)))

(assert (=> b!5173175 false))

(declare-fun b!5173177 () Bool)

(assert (=> b!5173177 (= e!3223430 e!3223433)))

(declare-fun c!890626 () Bool)

(assert (=> b!5173177 (= c!890626 (= (size!39673 lt!2130401) lt!2130404))))

(declare-fun b!5173178 () Bool)

(declare-fun e!3223432 () Bool)

(declare-fun lt!2130535 () tuple2!63828)

(assert (=> b!5173178 (= e!3223432 (>= (size!39673 (_1!35217 lt!2130535)) (size!39673 lt!2130401)))))

(declare-fun bm!363239 () Bool)

(declare-fun call!363247 () tuple2!63828)

(declare-fun call!363250 () List!60244)

(declare-fun call!363246 () (InoxSet Context!8042))

(assert (=> bm!363239 (= call!363247 (findLongestMatchInnerZipper!295 call!363246 lt!2130521 (+ (size!39673 lt!2130401) 1) call!363250 input!5817 lt!2130404))))

(declare-fun bm!363240 () Bool)

(assert (=> bm!363240 (= call!363244 (lemmaIsPrefixRefl!3777 input!5817 input!5817))))

(declare-fun bm!363241 () Bool)

(assert (=> bm!363241 (= call!363250 (tail!10162 (getSuffix!3420 input!5817 lt!2130401)))))

(declare-fun b!5173179 () Bool)

(declare-fun Unit!151858 () Unit!151844)

(assert (=> b!5173179 (= e!3223434 Unit!151858)))

(declare-fun bm!363242 () Bool)

(assert (=> bm!363242 (= call!363249 (isPrefix!5770 input!5817 input!5817))))

(declare-fun bm!363243 () Bool)

(declare-fun call!363251 () C!29544)

(assert (=> bm!363243 (= call!363246 (derivationStepZipper!989 lt!2130406 call!363251))))

(declare-fun b!5173180 () Bool)

(declare-fun e!3223429 () tuple2!63828)

(assert (=> b!5173180 (= e!3223429 (tuple2!63829 lt!2130401 (getSuffix!3420 input!5817 lt!2130401)))))

(declare-fun b!5173181 () Bool)

(assert (=> b!5173181 (= e!3223428 e!3223429)))

(declare-fun lt!2130527 () tuple2!63828)

(assert (=> b!5173181 (= lt!2130527 call!363247)))

(declare-fun c!890628 () Bool)

(assert (=> b!5173181 (= c!890628 (isEmpty!32189 (_1!35217 lt!2130527)))))

(declare-fun b!5173182 () Bool)

(assert (=> b!5173182 (= e!3223427 (tuple2!63829 lt!2130401 Nil!60120))))

(declare-fun b!5173183 () Bool)

(assert (=> b!5173183 (= e!3223428 call!363247)))

(declare-fun bm!363244 () Bool)

(assert (=> bm!363244 (= call!363248 (nullableZipper!1183 lt!2130406))))

(declare-fun bm!363245 () Bool)

(assert (=> bm!363245 (= call!363245 (lemmaIsPrefixSameLengthThenSameList!1419 input!5817 lt!2130401 input!5817))))

(declare-fun b!5173184 () Bool)

(declare-fun e!3223431 () Bool)

(assert (=> b!5173184 (= e!3223431 e!3223432)))

(declare-fun res!2198683 () Bool)

(assert (=> b!5173184 (=> res!2198683 e!3223432)))

(assert (=> b!5173184 (= res!2198683 (isEmpty!32189 (_1!35217 lt!2130535)))))

(declare-fun d!1669618 () Bool)

(assert (=> d!1669618 e!3223431))

(declare-fun res!2198684 () Bool)

(assert (=> d!1669618 (=> (not res!2198684) (not e!3223431))))

(assert (=> d!1669618 (= res!2198684 (= (++!13161 (_1!35217 lt!2130535) (_2!35217 lt!2130535)) input!5817))))

(assert (=> d!1669618 (= lt!2130535 e!3223430)))

(declare-fun c!890627 () Bool)

(assert (=> d!1669618 (= c!890627 (lostCauseZipper!1334 lt!2130406))))

(declare-fun lt!2130532 () Unit!151844)

(declare-fun Unit!151859 () Unit!151844)

(assert (=> d!1669618 (= lt!2130532 Unit!151859)))

(assert (=> d!1669618 (= (getSuffix!3420 input!5817 lt!2130401) (getSuffix!3420 input!5817 lt!2130401))))

(declare-fun lt!2130537 () Unit!151844)

(declare-fun lt!2130534 () Unit!151844)

(assert (=> d!1669618 (= lt!2130537 lt!2130534)))

(declare-fun lt!2130540 () List!60244)

(assert (=> d!1669618 (= (getSuffix!3420 input!5817 lt!2130401) lt!2130540)))

(assert (=> d!1669618 (= lt!2130534 (lemmaSamePrefixThenSameSuffix!2701 lt!2130401 (getSuffix!3420 input!5817 lt!2130401) lt!2130401 lt!2130540 input!5817))))

(assert (=> d!1669618 (= lt!2130540 (getSuffix!3420 input!5817 lt!2130401))))

(declare-fun lt!2130522 () Unit!151844)

(declare-fun lt!2130523 () Unit!151844)

(assert (=> d!1669618 (= lt!2130522 lt!2130523)))

(assert (=> d!1669618 (isPrefix!5770 lt!2130401 (++!13161 lt!2130401 (getSuffix!3420 input!5817 lt!2130401)))))

(assert (=> d!1669618 (= lt!2130523 (lemmaConcatTwoListThenFirstIsPrefix!3595 lt!2130401 (getSuffix!3420 input!5817 lt!2130401)))))

(assert (=> d!1669618 (= (++!13161 lt!2130401 (getSuffix!3420 input!5817 lt!2130401)) input!5817)))

(assert (=> d!1669618 (= (findLongestMatchInnerZipper!295 lt!2130406 lt!2130401 (size!39673 lt!2130401) (getSuffix!3420 input!5817 lt!2130401) input!5817 lt!2130404) lt!2130535)))

(declare-fun b!5173176 () Bool)

(assert (=> b!5173176 (= e!3223427 (tuple2!63829 Nil!60120 input!5817))))

(declare-fun bm!363246 () Bool)

(assert (=> bm!363246 (= call!363251 (head!11061 (getSuffix!3420 input!5817 lt!2130401)))))

(declare-fun b!5173185 () Bool)

(assert (=> b!5173185 (= e!3223429 lt!2130527)))

(assert (= (and d!1669618 c!890627) b!5173174))

(assert (= (and d!1669618 (not c!890627)) b!5173177))

(assert (= (and b!5173177 c!890626) b!5173173))

(assert (= (and b!5173177 (not c!890626)) b!5173172))

(assert (= (and b!5173173 c!890625) b!5173182))

(assert (= (and b!5173173 (not c!890625)) b!5173176))

(assert (= (and b!5173172 c!890623) b!5173175))

(assert (= (and b!5173172 (not c!890623)) b!5173179))

(assert (= (and b!5173172 c!890624) b!5173181))

(assert (= (and b!5173172 (not c!890624)) b!5173183))

(assert (= (and b!5173181 c!890628) b!5173180))

(assert (= (and b!5173181 (not c!890628)) b!5173185))

(assert (= (or b!5173181 b!5173183) bm!363241))

(assert (= (or b!5173181 b!5173183) bm!363246))

(assert (= (or b!5173181 b!5173183) bm!363243))

(assert (= (or b!5173181 b!5173183) bm!363239))

(assert (= (or b!5173173 b!5173175) bm!363240))

(assert (= (or b!5173173 b!5173172) bm!363244))

(assert (= (or b!5173173 b!5173175) bm!363242))

(assert (= (or b!5173173 b!5173175) bm!363245))

(assert (= (and d!1669618 res!2198684) b!5173184))

(assert (= (and b!5173184 (not res!2198683)) b!5173178))

(declare-fun m!6226760 () Bool)

(assert (=> bm!363245 m!6226760))

(declare-fun m!6226762 () Bool)

(assert (=> bm!363239 m!6226762))

(assert (=> bm!363241 m!6226624))

(declare-fun m!6226764 () Bool)

(assert (=> bm!363241 m!6226764))

(assert (=> bm!363240 m!6226614))

(assert (=> bm!363242 m!6226616))

(declare-fun m!6226766 () Bool)

(assert (=> b!5173184 m!6226766))

(declare-fun m!6226768 () Bool)

(assert (=> bm!363243 m!6226768))

(declare-fun m!6226770 () Bool)

(assert (=> bm!363244 m!6226770))

(declare-fun m!6226772 () Bool)

(assert (=> b!5173172 m!6226772))

(declare-fun m!6226774 () Bool)

(assert (=> b!5173172 m!6226774))

(assert (=> b!5173172 m!6226624))

(assert (=> b!5173172 m!6226764))

(assert (=> b!5173172 m!6226650))

(declare-fun m!6226776 () Bool)

(assert (=> b!5173172 m!6226776))

(assert (=> b!5173172 m!6226624))

(declare-fun m!6226778 () Bool)

(assert (=> b!5173172 m!6226778))

(assert (=> b!5173172 m!6226624))

(assert (=> b!5173172 m!6226778))

(assert (=> b!5173172 m!6226624))

(assert (=> b!5173172 m!6226622))

(assert (=> b!5173172 m!6226776))

(declare-fun m!6226780 () Bool)

(assert (=> b!5173172 m!6226780))

(declare-fun m!6226782 () Bool)

(assert (=> b!5173172 m!6226782))

(assert (=> b!5173172 m!6226774))

(declare-fun m!6226784 () Bool)

(assert (=> b!5173172 m!6226784))

(assert (=> b!5173172 m!6226776))

(declare-fun m!6226786 () Bool)

(assert (=> b!5173172 m!6226786))

(declare-fun m!6226788 () Bool)

(assert (=> b!5173181 m!6226788))

(declare-fun m!6226790 () Bool)

(assert (=> d!1669618 m!6226790))

(declare-fun m!6226792 () Bool)

(assert (=> d!1669618 m!6226792))

(declare-fun m!6226794 () Bool)

(assert (=> d!1669618 m!6226794))

(assert (=> d!1669618 m!6226624))

(declare-fun m!6226796 () Bool)

(assert (=> d!1669618 m!6226796))

(assert (=> d!1669618 m!6226624))

(declare-fun m!6226798 () Bool)

(assert (=> d!1669618 m!6226798))

(assert (=> d!1669618 m!6226624))

(assert (=> d!1669618 m!6226624))

(assert (=> d!1669618 m!6226792))

(declare-fun m!6226800 () Bool)

(assert (=> d!1669618 m!6226800))

(assert (=> bm!363246 m!6226624))

(assert (=> bm!363246 m!6226778))

(declare-fun m!6226802 () Bool)

(assert (=> b!5173178 m!6226802))

(assert (=> b!5173178 m!6226622))

(assert (=> b!5173065 d!1669618))

(declare-fun d!1669620 () Bool)

(assert (=> d!1669620 true))

(declare-fun lambda!258322 () Int)

(declare-fun flatMap!452 ((InoxSet Context!8042) Int) (InoxSet Context!8042))

(assert (=> d!1669620 (= (derivationStepZipper!989 z!4581 lt!2130402) (flatMap!452 z!4581 lambda!258322))))

(declare-fun bs!1203795 () Bool)

(assert (= bs!1203795 d!1669620))

(declare-fun m!6226968 () Bool)

(assert (=> bs!1203795 m!6226968))

(assert (=> b!5173065 d!1669620))

(declare-fun d!1669668 () Bool)

(declare-fun e!3223511 () Bool)

(assert (=> d!1669668 e!3223511))

(declare-fun res!2198714 () Bool)

(assert (=> d!1669668 (=> res!2198714 e!3223511)))

(assert (=> d!1669668 (= res!2198714 (isEmpty!32189 (_1!35217 (findLongestMatchInnerZipper!295 lt!2130406 lt!2130401 (size!39673 lt!2130401) (getSuffix!3420 input!5817 lt!2130401) input!5817 (size!39673 input!5817)))))))

(declare-fun lt!2130679 () Unit!151844)

(declare-fun choose!38372 ((InoxSet Context!8042) (InoxSet Context!8042) List!60244 List!60244) Unit!151844)

(assert (=> d!1669668 (= lt!2130679 (choose!38372 baseZ!62 lt!2130406 lt!2130401 input!5817))))

(assert (=> d!1669668 (isPrefix!5770 lt!2130401 input!5817)))

(assert (=> d!1669668 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!25 baseZ!62 lt!2130406 lt!2130401 input!5817) lt!2130679)))

(declare-fun b!5173319 () Bool)

(assert (=> b!5173319 (= e!3223511 (matchZipper!977 baseZ!62 (_1!35217 (findLongestMatchInnerZipper!295 lt!2130406 lt!2130401 (size!39673 lt!2130401) (getSuffix!3420 input!5817 lt!2130401) input!5817 (size!39673 input!5817)))))))

(assert (= (and d!1669668 (not res!2198714)) b!5173319))

(assert (=> d!1669668 m!6226624))

(assert (=> d!1669668 m!6226656))

(assert (=> d!1669668 m!6226622))

(assert (=> d!1669668 m!6226622))

(assert (=> d!1669668 m!6226624))

(assert (=> d!1669668 m!6226650))

(declare-fun m!6226970 () Bool)

(assert (=> d!1669668 m!6226970))

(declare-fun m!6226972 () Bool)

(assert (=> d!1669668 m!6226972))

(declare-fun m!6226974 () Bool)

(assert (=> d!1669668 m!6226974))

(assert (=> d!1669668 m!6226650))

(assert (=> b!5173319 m!6226624))

(assert (=> b!5173319 m!6226650))

(declare-fun m!6226976 () Bool)

(assert (=> b!5173319 m!6226976))

(assert (=> b!5173319 m!6226622))

(assert (=> b!5173319 m!6226622))

(assert (=> b!5173319 m!6226624))

(assert (=> b!5173319 m!6226650))

(assert (=> b!5173319 m!6226970))

(assert (=> b!5173065 d!1669668))

(declare-fun d!1669670 () Bool)

(declare-fun c!890677 () Bool)

(assert (=> d!1669670 (= c!890677 ((_ is Cons!60120) lt!2130401))))

(declare-fun e!3223514 () (InoxSet Context!8042))

(assert (=> d!1669670 (= (derivationZipper!260 baseZ!62 lt!2130401) e!3223514)))

(declare-fun b!5173324 () Bool)

(assert (=> b!5173324 (= e!3223514 (derivationZipper!260 (derivationStepZipper!989 baseZ!62 (h!66568 lt!2130401)) (t!373397 lt!2130401)))))

(declare-fun b!5173325 () Bool)

(assert (=> b!5173325 (= e!3223514 baseZ!62)))

(assert (= (and d!1669670 c!890677) b!5173324))

(assert (= (and d!1669670 (not c!890677)) b!5173325))

(declare-fun m!6226978 () Bool)

(assert (=> b!5173324 m!6226978))

(assert (=> b!5173324 m!6226978))

(declare-fun m!6226980 () Bool)

(assert (=> b!5173324 m!6226980))

(assert (=> b!5173065 d!1669670))

(declare-fun d!1669672 () Bool)

(declare-fun c!890678 () Bool)

(assert (=> d!1669672 (= c!890678 ((_ is Cons!60120) testedP!294))))

(declare-fun e!3223515 () (InoxSet Context!8042))

(assert (=> d!1669672 (= (derivationZipper!260 baseZ!62 testedP!294) e!3223515)))

(declare-fun b!5173326 () Bool)

(assert (=> b!5173326 (= e!3223515 (derivationZipper!260 (derivationStepZipper!989 baseZ!62 (h!66568 testedP!294)) (t!373397 testedP!294)))))

(declare-fun b!5173327 () Bool)

(assert (=> b!5173327 (= e!3223515 baseZ!62)))

(assert (= (and d!1669672 c!890678) b!5173326))

(assert (= (and d!1669672 (not c!890678)) b!5173327))

(declare-fun m!6226982 () Bool)

(assert (=> b!5173326 m!6226982))

(assert (=> b!5173326 m!6226982))

(declare-fun m!6226984 () Bool)

(assert (=> b!5173326 m!6226984))

(assert (=> b!5173060 d!1669672))

(declare-fun b!5173330 () Bool)

(declare-fun res!2198715 () Bool)

(declare-fun e!3223517 () Bool)

(assert (=> b!5173330 (=> (not res!2198715) (not e!3223517))))

(declare-fun lt!2130680 () List!60244)

(assert (=> b!5173330 (= res!2198715 (= (size!39673 lt!2130680) (+ (size!39673 testedP!294) (size!39673 (Cons!60120 lt!2130402 Nil!60120)))))))

(declare-fun b!5173329 () Bool)

(declare-fun e!3223516 () List!60244)

(assert (=> b!5173329 (= e!3223516 (Cons!60120 (h!66568 testedP!294) (++!13161 (t!373397 testedP!294) (Cons!60120 lt!2130402 Nil!60120))))))

(declare-fun b!5173331 () Bool)

(assert (=> b!5173331 (= e!3223517 (or (not (= (Cons!60120 lt!2130402 Nil!60120) Nil!60120)) (= lt!2130680 testedP!294)))))

(declare-fun b!5173328 () Bool)

(assert (=> b!5173328 (= e!3223516 (Cons!60120 lt!2130402 Nil!60120))))

(declare-fun d!1669674 () Bool)

(assert (=> d!1669674 e!3223517))

(declare-fun res!2198716 () Bool)

(assert (=> d!1669674 (=> (not res!2198716) (not e!3223517))))

(assert (=> d!1669674 (= res!2198716 (= (content!10653 lt!2130680) ((_ map or) (content!10653 testedP!294) (content!10653 (Cons!60120 lt!2130402 Nil!60120)))))))

(assert (=> d!1669674 (= lt!2130680 e!3223516)))

(declare-fun c!890679 () Bool)

(assert (=> d!1669674 (= c!890679 ((_ is Nil!60120) testedP!294))))

(assert (=> d!1669674 (= (++!13161 testedP!294 (Cons!60120 lt!2130402 Nil!60120)) lt!2130680)))

(assert (= (and d!1669674 c!890679) b!5173328))

(assert (= (and d!1669674 (not c!890679)) b!5173329))

(assert (= (and d!1669674 res!2198716) b!5173330))

(assert (= (and b!5173330 res!2198715) b!5173331))

(declare-fun m!6226986 () Bool)

(assert (=> b!5173330 m!6226986))

(assert (=> b!5173330 m!6226646))

(declare-fun m!6226988 () Bool)

(assert (=> b!5173330 m!6226988))

(declare-fun m!6226990 () Bool)

(assert (=> b!5173329 m!6226990))

(declare-fun m!6226992 () Bool)

(assert (=> d!1669674 m!6226992))

(assert (=> d!1669674 m!6226746))

(declare-fun m!6226994 () Bool)

(assert (=> d!1669674 m!6226994))

(assert (=> b!5173066 d!1669674))

(declare-fun b!5173332 () Bool)

(declare-fun e!3223519 () Bool)

(declare-fun e!3223520 () Bool)

(assert (=> b!5173332 (= e!3223519 e!3223520)))

(declare-fun res!2198720 () Bool)

(assert (=> b!5173332 (=> (not res!2198720) (not e!3223520))))

(assert (=> b!5173332 (= res!2198720 (not ((_ is Nil!60120) input!5817)))))

(declare-fun b!5173334 () Bool)

(assert (=> b!5173334 (= e!3223520 (isPrefix!5770 (tail!10162 lt!2130401) (tail!10162 input!5817)))))

(declare-fun d!1669676 () Bool)

(declare-fun e!3223518 () Bool)

(assert (=> d!1669676 e!3223518))

(declare-fun res!2198718 () Bool)

(assert (=> d!1669676 (=> res!2198718 e!3223518)))

(declare-fun lt!2130681 () Bool)

(assert (=> d!1669676 (= res!2198718 (not lt!2130681))))

(assert (=> d!1669676 (= lt!2130681 e!3223519)))

(declare-fun res!2198717 () Bool)

(assert (=> d!1669676 (=> res!2198717 e!3223519)))

(assert (=> d!1669676 (= res!2198717 ((_ is Nil!60120) lt!2130401))))

(assert (=> d!1669676 (= (isPrefix!5770 lt!2130401 input!5817) lt!2130681)))

(declare-fun b!5173335 () Bool)

(assert (=> b!5173335 (= e!3223518 (>= (size!39673 input!5817) (size!39673 lt!2130401)))))

(declare-fun b!5173333 () Bool)

(declare-fun res!2198719 () Bool)

(assert (=> b!5173333 (=> (not res!2198719) (not e!3223520))))

(assert (=> b!5173333 (= res!2198719 (= (head!11061 lt!2130401) (head!11061 input!5817)))))

(assert (= (and d!1669676 (not res!2198717)) b!5173332))

(assert (= (and b!5173332 res!2198720) b!5173333))

(assert (= (and b!5173333 res!2198719) b!5173334))

(assert (= (and d!1669676 (not res!2198718)) b!5173335))

(declare-fun m!6226996 () Bool)

(assert (=> b!5173334 m!6226996))

(assert (=> b!5173334 m!6226686))

(assert (=> b!5173334 m!6226996))

(assert (=> b!5173334 m!6226686))

(declare-fun m!6226998 () Bool)

(assert (=> b!5173334 m!6226998))

(assert (=> b!5173335 m!6226650))

(assert (=> b!5173335 m!6226622))

(declare-fun m!6227000 () Bool)

(assert (=> b!5173333 m!6227000))

(assert (=> b!5173333 m!6226690))

(assert (=> b!5173066 d!1669676))

(declare-fun d!1669678 () Bool)

(assert (=> d!1669678 (isPrefix!5770 (++!13161 testedP!294 (Cons!60120 (head!11061 (getSuffix!3420 input!5817 testedP!294)) Nil!60120)) input!5817)))

(declare-fun lt!2130684 () Unit!151844)

(declare-fun choose!38373 (List!60244 List!60244) Unit!151844)

(assert (=> d!1669678 (= lt!2130684 (choose!38373 testedP!294 input!5817))))

(assert (=> d!1669678 (isPrefix!5770 testedP!294 input!5817)))

(assert (=> d!1669678 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1083 testedP!294 input!5817) lt!2130684)))

(declare-fun bs!1203796 () Bool)

(assert (= bs!1203796 d!1669678))

(assert (=> bs!1203796 m!6226648))

(assert (=> bs!1203796 m!6226648))

(assert (=> bs!1203796 m!6226714))

(declare-fun m!6227002 () Bool)

(assert (=> bs!1203796 m!6227002))

(assert (=> bs!1203796 m!6226662))

(assert (=> bs!1203796 m!6226716))

(assert (=> bs!1203796 m!6226720))

(assert (=> bs!1203796 m!6226716))

(assert (=> b!5173066 d!1669678))

(declare-fun d!1669680 () Bool)

(declare-fun lambda!258325 () Int)

(declare-fun exists!1926 ((InoxSet Context!8042) Int) Bool)

(assert (=> d!1669680 (= (nullableZipper!1183 z!4581) (exists!1926 z!4581 lambda!258325))))

(declare-fun bs!1203797 () Bool)

(assert (= bs!1203797 d!1669680))

(declare-fun m!6227004 () Bool)

(assert (=> bs!1203797 m!6227004))

(assert (=> b!5173066 d!1669680))

(declare-fun d!1669682 () Bool)

(assert (=> d!1669682 (= (head!11061 lt!2130400) (h!66568 lt!2130400))))

(assert (=> b!5173066 d!1669682))

(declare-fun d!1669684 () Bool)

(declare-fun c!890684 () Bool)

(assert (=> d!1669684 (= c!890684 (isEmpty!32189 (_1!35217 lt!2130408)))))

(declare-fun e!3223523 () Bool)

(assert (=> d!1669684 (= (matchZipper!977 baseZ!62 (_1!35217 lt!2130408)) e!3223523)))

(declare-fun b!5173340 () Bool)

(assert (=> b!5173340 (= e!3223523 (nullableZipper!1183 baseZ!62))))

(declare-fun b!5173341 () Bool)

(assert (=> b!5173341 (= e!3223523 (matchZipper!977 (derivationStepZipper!989 baseZ!62 (head!11061 (_1!35217 lt!2130408))) (tail!10162 (_1!35217 lt!2130408))))))

(assert (= (and d!1669684 c!890684) b!5173340))

(assert (= (and d!1669684 (not c!890684)) b!5173341))

(assert (=> d!1669684 m!6226628))

(declare-fun m!6227006 () Bool)

(assert (=> b!5173340 m!6227006))

(declare-fun m!6227008 () Bool)

(assert (=> b!5173341 m!6227008))

(assert (=> b!5173341 m!6227008))

(declare-fun m!6227010 () Bool)

(assert (=> b!5173341 m!6227010))

(declare-fun m!6227012 () Bool)

(assert (=> b!5173341 m!6227012))

(assert (=> b!5173341 m!6227010))

(assert (=> b!5173341 m!6227012))

(declare-fun m!6227014 () Bool)

(assert (=> b!5173341 m!6227014))

(assert (=> b!5173061 d!1669684))

(declare-fun b!5173342 () Bool)

(declare-fun e!3223525 () Bool)

(declare-fun e!3223526 () Bool)

(assert (=> b!5173342 (= e!3223525 e!3223526)))

(declare-fun res!2198724 () Bool)

(assert (=> b!5173342 (=> (not res!2198724) (not e!3223526))))

(assert (=> b!5173342 (= res!2198724 (not ((_ is Nil!60120) input!5817)))))

(declare-fun b!5173344 () Bool)

(assert (=> b!5173344 (= e!3223526 (isPrefix!5770 (tail!10162 testedP!294) (tail!10162 input!5817)))))

(declare-fun d!1669686 () Bool)

(declare-fun e!3223524 () Bool)

(assert (=> d!1669686 e!3223524))

(declare-fun res!2198722 () Bool)

(assert (=> d!1669686 (=> res!2198722 e!3223524)))

(declare-fun lt!2130685 () Bool)

(assert (=> d!1669686 (= res!2198722 (not lt!2130685))))

(assert (=> d!1669686 (= lt!2130685 e!3223525)))

(declare-fun res!2198721 () Bool)

(assert (=> d!1669686 (=> res!2198721 e!3223525)))

(assert (=> d!1669686 (= res!2198721 ((_ is Nil!60120) testedP!294))))

(assert (=> d!1669686 (= (isPrefix!5770 testedP!294 input!5817) lt!2130685)))

(declare-fun b!5173345 () Bool)

(assert (=> b!5173345 (= e!3223524 (>= (size!39673 input!5817) (size!39673 testedP!294)))))

(declare-fun b!5173343 () Bool)

(declare-fun res!2198723 () Bool)

(assert (=> b!5173343 (=> (not res!2198723) (not e!3223526))))

(assert (=> b!5173343 (= res!2198723 (= (head!11061 testedP!294) (head!11061 input!5817)))))

(assert (= (and d!1669686 (not res!2198721)) b!5173342))

(assert (= (and b!5173342 res!2198724) b!5173343))

(assert (= (and b!5173343 res!2198723) b!5173344))

(assert (= (and d!1669686 (not res!2198722)) b!5173345))

(declare-fun m!6227016 () Bool)

(assert (=> b!5173344 m!6227016))

(assert (=> b!5173344 m!6226686))

(assert (=> b!5173344 m!6227016))

(assert (=> b!5173344 m!6226686))

(declare-fun m!6227018 () Bool)

(assert (=> b!5173344 m!6227018))

(assert (=> b!5173345 m!6226650))

(assert (=> b!5173345 m!6226646))

(declare-fun m!6227020 () Bool)

(assert (=> b!5173343 m!6227020))

(assert (=> b!5173343 m!6226690))

(assert (=> start!547680 d!1669686))

(declare-fun d!1669688 () Bool)

(declare-fun lambda!258328 () Int)

(declare-fun forall!14143 (List!60243 Int) Bool)

(assert (=> d!1669688 (= (inv!79839 setElem!32147) (forall!14143 (exprs!4521 setElem!32147) lambda!258328))))

(declare-fun bs!1203798 () Bool)

(assert (= bs!1203798 d!1669688))

(declare-fun m!6227022 () Bool)

(assert (=> bs!1203798 m!6227022))

(assert (=> setNonEmpty!32147 d!1669688))

(declare-fun d!1669690 () Bool)

(assert (=> d!1669690 (<= (size!39673 testedP!294) (size!39673 input!5817))))

(declare-fun lt!2130688 () Unit!151844)

(declare-fun choose!38374 (List!60244 List!60244) Unit!151844)

(assert (=> d!1669690 (= lt!2130688 (choose!38374 testedP!294 input!5817))))

(assert (=> d!1669690 (isPrefix!5770 testedP!294 input!5817)))

(assert (=> d!1669690 (= (lemmaIsPrefixThenSmallerEqSize!933 testedP!294 input!5817) lt!2130688)))

(declare-fun bs!1203799 () Bool)

(assert (= bs!1203799 d!1669690))

(assert (=> bs!1203799 m!6226646))

(assert (=> bs!1203799 m!6226650))

(declare-fun m!6227024 () Bool)

(assert (=> bs!1203799 m!6227024))

(assert (=> bs!1203799 m!6226662))

(assert (=> b!5173058 d!1669690))

(declare-fun bs!1203800 () Bool)

(declare-fun d!1669692 () Bool)

(assert (= bs!1203800 (and d!1669692 d!1669688)))

(declare-fun lambda!258329 () Int)

(assert (=> bs!1203800 (= lambda!258329 lambda!258328)))

(assert (=> d!1669692 (= (inv!79839 setElem!32148) (forall!14143 (exprs!4521 setElem!32148) lambda!258329))))

(declare-fun bs!1203801 () Bool)

(assert (= bs!1203801 d!1669692))

(declare-fun m!6227026 () Bool)

(assert (=> bs!1203801 m!6227026))

(assert (=> setNonEmpty!32148 d!1669692))

(declare-fun b!5173350 () Bool)

(declare-fun e!3223529 () Bool)

(declare-fun tp!1451300 () Bool)

(declare-fun tp!1451301 () Bool)

(assert (=> b!5173350 (= e!3223529 (and tp!1451300 tp!1451301))))

(assert (=> b!5173069 (= tp!1451270 e!3223529)))

(assert (= (and b!5173069 ((_ is Cons!60119) (exprs!4521 setElem!32147))) b!5173350))

(declare-fun condSetEmpty!32155 () Bool)

(assert (=> setNonEmpty!32147 (= condSetEmpty!32155 (= setRest!32148 ((as const (Array Context!8042 Bool)) false)))))

(declare-fun setRes!32155 () Bool)

(assert (=> setNonEmpty!32147 (= tp!1451271 setRes!32155)))

(declare-fun setIsEmpty!32155 () Bool)

(assert (=> setIsEmpty!32155 setRes!32155))

(declare-fun setElem!32155 () Context!8042)

(declare-fun setNonEmpty!32155 () Bool)

(declare-fun e!3223532 () Bool)

(declare-fun tp!1451307 () Bool)

(assert (=> setNonEmpty!32155 (= setRes!32155 (and tp!1451307 (inv!79839 setElem!32155) e!3223532))))

(declare-fun setRest!32155 () (InoxSet Context!8042))

(assert (=> setNonEmpty!32155 (= setRest!32148 ((_ map or) (store ((as const (Array Context!8042 Bool)) false) setElem!32155 true) setRest!32155))))

(declare-fun b!5173355 () Bool)

(declare-fun tp!1451306 () Bool)

(assert (=> b!5173355 (= e!3223532 tp!1451306)))

(assert (= (and setNonEmpty!32147 condSetEmpty!32155) setIsEmpty!32155))

(assert (= (and setNonEmpty!32147 (not condSetEmpty!32155)) setNonEmpty!32155))

(assert (= setNonEmpty!32155 b!5173355))

(declare-fun m!6227028 () Bool)

(assert (=> setNonEmpty!32155 m!6227028))

(declare-fun b!5173356 () Bool)

(declare-fun e!3223533 () Bool)

(declare-fun tp!1451308 () Bool)

(declare-fun tp!1451309 () Bool)

(assert (=> b!5173356 (= e!3223533 (and tp!1451308 tp!1451309))))

(assert (=> b!5173067 (= tp!1451274 e!3223533)))

(assert (= (and b!5173067 ((_ is Cons!60119) (exprs!4521 setElem!32148))) b!5173356))

(declare-fun b!5173361 () Bool)

(declare-fun e!3223536 () Bool)

(declare-fun tp!1451312 () Bool)

(assert (=> b!5173361 (= e!3223536 (and tp_is_empty!38527 tp!1451312))))

(assert (=> b!5173062 (= tp!1451275 e!3223536)))

(assert (= (and b!5173062 ((_ is Cons!60120) (t!373397 testedP!294))) b!5173361))

(declare-fun condSetEmpty!32156 () Bool)

(assert (=> setNonEmpty!32148 (= condSetEmpty!32156 (= setRest!32147 ((as const (Array Context!8042 Bool)) false)))))

(declare-fun setRes!32156 () Bool)

(assert (=> setNonEmpty!32148 (= tp!1451272 setRes!32156)))

(declare-fun setIsEmpty!32156 () Bool)

(assert (=> setIsEmpty!32156 setRes!32156))

(declare-fun setElem!32156 () Context!8042)

(declare-fun e!3223537 () Bool)

(declare-fun setNonEmpty!32156 () Bool)

(declare-fun tp!1451314 () Bool)

(assert (=> setNonEmpty!32156 (= setRes!32156 (and tp!1451314 (inv!79839 setElem!32156) e!3223537))))

(declare-fun setRest!32156 () (InoxSet Context!8042))

(assert (=> setNonEmpty!32156 (= setRest!32147 ((_ map or) (store ((as const (Array Context!8042 Bool)) false) setElem!32156 true) setRest!32156))))

(declare-fun b!5173362 () Bool)

(declare-fun tp!1451313 () Bool)

(assert (=> b!5173362 (= e!3223537 tp!1451313)))

(assert (= (and setNonEmpty!32148 condSetEmpty!32156) setIsEmpty!32156))

(assert (= (and setNonEmpty!32148 (not condSetEmpty!32156)) setNonEmpty!32156))

(assert (= setNonEmpty!32156 b!5173362))

(declare-fun m!6227030 () Bool)

(assert (=> setNonEmpty!32156 m!6227030))

(declare-fun b!5173363 () Bool)

(declare-fun e!3223538 () Bool)

(declare-fun tp!1451315 () Bool)

(assert (=> b!5173363 (= e!3223538 (and tp_is_empty!38527 tp!1451315))))

(assert (=> b!5173063 (= tp!1451273 e!3223538)))

(assert (= (and b!5173063 ((_ is Cons!60120) (t!373397 input!5817))) b!5173363))

(check-sat (not bm!363235) (not bm!363237) (not d!1669674) (not setNonEmpty!32156) (not b!5173098) (not d!1669618) (not bm!363231) (not b!5173344) (not b!5173334) (not b!5173099) (not b!5173181) (not b!5173165) (not b!5173350) (not b!5173324) (not d!1669680) (not b!5173361) (not bm!363236) (not bm!363233) (not b!5173152) (not b!5173146) (not b!5173097) (not b!5173105) (not b!5173149) (not d!1669684) (not d!1669688) (not d!1669600) (not b!5173330) (not setNonEmpty!32155) (not bm!363244) (not b!5173345) (not d!1669668) (not bm!363238) (not bm!363245) (not d!1669602) (not b!5173335) (not b!5173140) (not bm!363242) (not d!1669690) (not b!5173343) (not b!5173168) (not d!1669596) (not b!5173355) tp_is_empty!38527 (not d!1669588) (not b!5173340) (not b!5173356) (not d!1669610) (not d!1669612) (not b!5173341) (not bm!363241) (not b!5173155) (not bm!363240) (not d!1669678) (not d!1669608) (not b!5173329) (not b!5173362) (not b!5173333) (not b!5173184) (not b!5173178) (not b!5173319) (not d!1669620) (not b!5173326) (not bm!363243) (not b!5173166) (not bm!363234) (not bm!363232) (not bm!363239) (not d!1669692) (not bm!363246) (not b!5173110) (not b!5173363) (not b!5173171) (not b!5173172))
(check-sat)
