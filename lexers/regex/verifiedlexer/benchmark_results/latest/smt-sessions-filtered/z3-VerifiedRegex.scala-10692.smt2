; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547668 () Bool)

(assert start!547668)

(declare-fun b!5172824 () Bool)

(declare-fun e!3223186 () Bool)

(declare-fun e!3223182 () Bool)

(assert (=> b!5172824 (= e!3223186 (not e!3223182))))

(declare-fun res!2198519 () Bool)

(assert (=> b!5172824 (=> res!2198519 e!3223182)))

(declare-fun lt!2130154 () Int)

(declare-fun lt!2130147 () Int)

(assert (=> b!5172824 (= res!2198519 (>= lt!2130154 lt!2130147))))

(declare-datatypes ((Unit!151820 0))(
  ( (Unit!151821) )
))
(declare-fun lt!2130146 () Unit!151820)

(declare-fun e!3223183 () Unit!151820)

(assert (=> b!5172824 (= lt!2130146 e!3223183)))

(declare-fun c!890561 () Bool)

(assert (=> b!5172824 (= c!890561 (= lt!2130154 lt!2130147))))

(assert (=> b!5172824 (<= lt!2130154 lt!2130147)))

(declare-fun lt!2130155 () Unit!151820)

(declare-datatypes ((C!29532 0))(
  ( (C!29533 (val!24468 Int)) )
))
(declare-datatypes ((List!60231 0))(
  ( (Nil!60107) (Cons!60107 (h!66555 C!29532) (t!373384 List!60231)) )
))
(declare-fun testedP!294 () List!60231)

(declare-fun input!5817 () List!60231)

(declare-fun lemmaIsPrefixThenSmallerEqSize!927 (List!60231 List!60231) Unit!151820)

(assert (=> b!5172824 (= lt!2130155 (lemmaIsPrefixThenSmallerEqSize!927 testedP!294 input!5817))))

(declare-fun b!5172825 () Bool)

(declare-fun e!3223179 () Bool)

(assert (=> b!5172825 (= e!3223179 true)))

(declare-fun lt!2130151 () C!29532)

(declare-fun lt!2130148 () List!60231)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14631 0))(
  ( (ElementMatch!14631 (c!890562 C!29532)) (Concat!23476 (regOne!29774 Regex!14631) (regTwo!29774 Regex!14631)) (EmptyExpr!14631) (Star!14631 (reg!14960 Regex!14631)) (EmptyLang!14631) (Union!14631 (regOne!29775 Regex!14631) (regTwo!29775 Regex!14631)) )
))
(declare-datatypes ((List!60232 0))(
  ( (Nil!60108) (Cons!60108 (h!66556 Regex!14631) (t!373385 List!60232)) )
))
(declare-datatypes ((Context!8030 0))(
  ( (Context!8031 (exprs!4515 List!60232)) )
))
(declare-fun z!4581 () (InoxSet Context!8030))

(declare-fun baseZ!62 () (InoxSet Context!8030))

(declare-fun derivationZipper!254 ((InoxSet Context!8030) List!60231) (InoxSet Context!8030))

(declare-fun derivationStepZipper!983 ((InoxSet Context!8030) C!29532) (InoxSet Context!8030))

(assert (=> b!5172825 (= (derivationZipper!254 baseZ!62 lt!2130148) (derivationStepZipper!983 z!4581 lt!2130151))))

(declare-fun lt!2130150 () Unit!151820)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!101 ((InoxSet Context!8030) (InoxSet Context!8030) List!60231 C!29532) Unit!151820)

(assert (=> b!5172825 (= lt!2130150 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!101 baseZ!62 z!4581 testedP!294 lt!2130151))))

(declare-fun b!5172826 () Bool)

(declare-fun Unit!151822 () Unit!151820)

(assert (=> b!5172826 (= e!3223183 Unit!151822)))

(declare-fun setIsEmpty!32111 () Bool)

(declare-fun setRes!32111 () Bool)

(assert (=> setIsEmpty!32111 setRes!32111))

(declare-fun b!5172827 () Bool)

(declare-fun e!3223185 () Bool)

(declare-fun tp!1451165 () Bool)

(assert (=> b!5172827 (= e!3223185 tp!1451165)))

(declare-fun b!5172828 () Bool)

(declare-fun Unit!151823 () Unit!151820)

(assert (=> b!5172828 (= e!3223183 Unit!151823)))

(declare-fun lt!2130149 () Unit!151820)

(declare-fun lemmaIsPrefixRefl!3771 (List!60231 List!60231) Unit!151820)

(assert (=> b!5172828 (= lt!2130149 (lemmaIsPrefixRefl!3771 input!5817 input!5817))))

(declare-fun isPrefix!5764 (List!60231 List!60231) Bool)

(assert (=> b!5172828 (isPrefix!5764 input!5817 input!5817)))

(declare-fun lt!2130156 () Unit!151820)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1413 (List!60231 List!60231 List!60231) Unit!151820)

(assert (=> b!5172828 (= lt!2130156 (lemmaIsPrefixSameLengthThenSameList!1413 input!5817 testedP!294 input!5817))))

(assert (=> b!5172828 false))

(declare-fun res!2198517 () Bool)

(declare-fun e!3223181 () Bool)

(assert (=> start!547668 (=> (not res!2198517) (not e!3223181))))

(assert (=> start!547668 (= res!2198517 (isPrefix!5764 testedP!294 input!5817))))

(assert (=> start!547668 e!3223181))

(declare-fun e!3223178 () Bool)

(assert (=> start!547668 e!3223178))

(declare-fun e!3223180 () Bool)

(assert (=> start!547668 e!3223180))

(declare-fun condSetEmpty!32111 () Bool)

(assert (=> start!547668 (= condSetEmpty!32111 (= baseZ!62 ((as const (Array Context!8030 Bool)) false)))))

(declare-fun setRes!32112 () Bool)

(assert (=> start!547668 setRes!32112))

(declare-fun condSetEmpty!32112 () Bool)

(assert (=> start!547668 (= condSetEmpty!32112 (= z!4581 ((as const (Array Context!8030 Bool)) false)))))

(assert (=> start!547668 setRes!32111))

(declare-fun b!5172829 () Bool)

(assert (=> b!5172829 (= e!3223182 e!3223179)))

(declare-fun res!2198520 () Bool)

(assert (=> b!5172829 (=> res!2198520 e!3223179)))

(declare-fun nullableZipper!1177 ((InoxSet Context!8030)) Bool)

(assert (=> b!5172829 (= res!2198520 (nullableZipper!1177 z!4581))))

(assert (=> b!5172829 (isPrefix!5764 lt!2130148 input!5817)))

(declare-fun lt!2130152 () Unit!151820)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1077 (List!60231 List!60231) Unit!151820)

(assert (=> b!5172829 (= lt!2130152 (lemmaAddHeadSuffixToPrefixStillPrefix!1077 testedP!294 input!5817))))

(declare-fun ++!13155 (List!60231 List!60231) List!60231)

(assert (=> b!5172829 (= lt!2130148 (++!13155 testedP!294 (Cons!60107 lt!2130151 Nil!60107)))))

(declare-fun lt!2130153 () List!60231)

(declare-fun head!11055 (List!60231) C!29532)

(assert (=> b!5172829 (= lt!2130151 (head!11055 lt!2130153))))

(declare-fun b!5172830 () Bool)

(declare-fun e!3223184 () Bool)

(declare-fun tp!1451167 () Bool)

(assert (=> b!5172830 (= e!3223184 tp!1451167)))

(declare-fun b!5172831 () Bool)

(declare-fun res!2198516 () Bool)

(assert (=> b!5172831 (=> (not res!2198516) (not e!3223181))))

(assert (=> b!5172831 (= res!2198516 (= (derivationZipper!254 baseZ!62 testedP!294) z!4581))))

(declare-fun setNonEmpty!32111 () Bool)

(declare-fun tp!1451164 () Bool)

(declare-fun setElem!32112 () Context!8030)

(declare-fun inv!79824 (Context!8030) Bool)

(assert (=> setNonEmpty!32111 (= setRes!32112 (and tp!1451164 (inv!79824 setElem!32112) e!3223185))))

(declare-fun setRest!32111 () (InoxSet Context!8030))

(assert (=> setNonEmpty!32111 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8030 Bool)) false) setElem!32112 true) setRest!32111))))

(declare-fun b!5172832 () Bool)

(assert (=> b!5172832 (= e!3223181 e!3223186)))

(declare-fun res!2198518 () Bool)

(assert (=> b!5172832 (=> (not res!2198518) (not e!3223186))))

(declare-fun isEmpty!32183 (List!60231) Bool)

(declare-datatypes ((tuple2!63816 0))(
  ( (tuple2!63817 (_1!35211 List!60231) (_2!35211 List!60231)) )
))
(declare-fun findLongestMatchInnerZipper!289 ((InoxSet Context!8030) List!60231 Int List!60231 List!60231 Int) tuple2!63816)

(assert (=> b!5172832 (= res!2198518 (not (isEmpty!32183 (_1!35211 (findLongestMatchInnerZipper!289 z!4581 testedP!294 lt!2130154 lt!2130153 input!5817 lt!2130147)))))))

(declare-fun size!39667 (List!60231) Int)

(assert (=> b!5172832 (= lt!2130147 (size!39667 input!5817))))

(declare-fun getSuffix!3414 (List!60231 List!60231) List!60231)

(assert (=> b!5172832 (= lt!2130153 (getSuffix!3414 input!5817 testedP!294))))

(assert (=> b!5172832 (= lt!2130154 (size!39667 testedP!294))))

(declare-fun b!5172833 () Bool)

(declare-fun res!2198515 () Bool)

(assert (=> b!5172833 (=> (not res!2198515) (not e!3223186))))

(assert (=> b!5172833 (= res!2198515 (not (= testedP!294 input!5817)))))

(declare-fun b!5172834 () Bool)

(declare-fun tp_is_empty!38515 () Bool)

(declare-fun tp!1451163 () Bool)

(assert (=> b!5172834 (= e!3223178 (and tp_is_empty!38515 tp!1451163))))

(declare-fun tp!1451162 () Bool)

(declare-fun setElem!32111 () Context!8030)

(declare-fun setNonEmpty!32112 () Bool)

(assert (=> setNonEmpty!32112 (= setRes!32111 (and tp!1451162 (inv!79824 setElem!32111) e!3223184))))

(declare-fun setRest!32112 () (InoxSet Context!8030))

(assert (=> setNonEmpty!32112 (= z!4581 ((_ map or) (store ((as const (Array Context!8030 Bool)) false) setElem!32111 true) setRest!32112))))

(declare-fun b!5172835 () Bool)

(declare-fun tp!1451166 () Bool)

(assert (=> b!5172835 (= e!3223180 (and tp_is_empty!38515 tp!1451166))))

(declare-fun setIsEmpty!32112 () Bool)

(assert (=> setIsEmpty!32112 setRes!32112))

(assert (= (and start!547668 res!2198517) b!5172831))

(assert (= (and b!5172831 res!2198516) b!5172832))

(assert (= (and b!5172832 res!2198518) b!5172833))

(assert (= (and b!5172833 res!2198515) b!5172824))

(assert (= (and b!5172824 c!890561) b!5172828))

(assert (= (and b!5172824 (not c!890561)) b!5172826))

(assert (= (and b!5172824 (not res!2198519)) b!5172829))

(assert (= (and b!5172829 (not res!2198520)) b!5172825))

(get-info :version)

(assert (= (and start!547668 ((_ is Cons!60107) testedP!294)) b!5172834))

(assert (= (and start!547668 ((_ is Cons!60107) input!5817)) b!5172835))

(assert (= (and start!547668 condSetEmpty!32111) setIsEmpty!32112))

(assert (= (and start!547668 (not condSetEmpty!32111)) setNonEmpty!32111))

(assert (= setNonEmpty!32111 b!5172827))

(assert (= (and start!547668 condSetEmpty!32112) setIsEmpty!32111))

(assert (= (and start!547668 (not condSetEmpty!32112)) setNonEmpty!32112))

(assert (= setNonEmpty!32112 b!5172830))

(declare-fun m!6226294 () Bool)

(assert (=> setNonEmpty!32112 m!6226294))

(declare-fun m!6226296 () Bool)

(assert (=> b!5172825 m!6226296))

(declare-fun m!6226298 () Bool)

(assert (=> b!5172825 m!6226298))

(declare-fun m!6226300 () Bool)

(assert (=> b!5172825 m!6226300))

(declare-fun m!6226302 () Bool)

(assert (=> start!547668 m!6226302))

(declare-fun m!6226304 () Bool)

(assert (=> setNonEmpty!32111 m!6226304))

(declare-fun m!6226306 () Bool)

(assert (=> b!5172832 m!6226306))

(declare-fun m!6226308 () Bool)

(assert (=> b!5172832 m!6226308))

(declare-fun m!6226310 () Bool)

(assert (=> b!5172832 m!6226310))

(declare-fun m!6226312 () Bool)

(assert (=> b!5172832 m!6226312))

(declare-fun m!6226314 () Bool)

(assert (=> b!5172832 m!6226314))

(declare-fun m!6226316 () Bool)

(assert (=> b!5172831 m!6226316))

(declare-fun m!6226318 () Bool)

(assert (=> b!5172828 m!6226318))

(declare-fun m!6226320 () Bool)

(assert (=> b!5172828 m!6226320))

(declare-fun m!6226322 () Bool)

(assert (=> b!5172828 m!6226322))

(declare-fun m!6226324 () Bool)

(assert (=> b!5172829 m!6226324))

(declare-fun m!6226326 () Bool)

(assert (=> b!5172829 m!6226326))

(declare-fun m!6226328 () Bool)

(assert (=> b!5172829 m!6226328))

(declare-fun m!6226330 () Bool)

(assert (=> b!5172829 m!6226330))

(declare-fun m!6226332 () Bool)

(assert (=> b!5172829 m!6226332))

(declare-fun m!6226334 () Bool)

(assert (=> b!5172824 m!6226334))

(check-sat tp_is_empty!38515 (not b!5172827) (not start!547668) (not b!5172835) (not setNonEmpty!32111) (not b!5172825) (not b!5172834) (not b!5172832) (not b!5172831) (not b!5172829) (not b!5172824) (not b!5172830) (not b!5172828) (not setNonEmpty!32112))
(check-sat)
