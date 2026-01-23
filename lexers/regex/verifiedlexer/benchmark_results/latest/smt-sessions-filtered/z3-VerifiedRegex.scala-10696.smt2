; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547756 () Bool)

(assert start!547756)

(declare-fun setIsEmpty!32167 () Bool)

(declare-fun setRes!32168 () Bool)

(assert (=> setIsEmpty!32167 setRes!32168))

(declare-fun b!5173429 () Bool)

(declare-fun e!3223593 () Bool)

(declare-fun tp_is_empty!38531 () Bool)

(declare-fun tp!1451350 () Bool)

(assert (=> b!5173429 (= e!3223593 (and tp_is_empty!38531 tp!1451350))))

(declare-fun b!5173430 () Bool)

(declare-datatypes ((Unit!151864 0))(
  ( (Unit!151865) )
))
(declare-fun e!3223596 () Unit!151864)

(declare-fun Unit!151866 () Unit!151864)

(assert (=> b!5173430 (= e!3223596 Unit!151866)))

(declare-fun lt!2130773 () Unit!151864)

(declare-datatypes ((C!29548 0))(
  ( (C!29549 (val!24476 Int)) )
))
(declare-datatypes ((List!60247 0))(
  ( (Nil!60123) (Cons!60123 (h!66571 C!29548) (t!373400 List!60247)) )
))
(declare-fun input!5817 () List!60247)

(declare-fun lemmaIsPrefixRefl!3779 (List!60247 List!60247) Unit!151864)

(assert (=> b!5173430 (= lt!2130773 (lemmaIsPrefixRefl!3779 input!5817 input!5817))))

(declare-fun isPrefix!5772 (List!60247 List!60247) Bool)

(assert (=> b!5173430 (isPrefix!5772 input!5817 input!5817)))

(declare-fun lt!2130777 () Unit!151864)

(declare-fun testedP!294 () List!60247)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1421 (List!60247 List!60247 List!60247) Unit!151864)

(assert (=> b!5173430 (= lt!2130777 (lemmaIsPrefixSameLengthThenSameList!1421 input!5817 testedP!294 input!5817))))

(assert (=> b!5173430 false))

(declare-fun b!5173431 () Bool)

(declare-fun res!2198766 () Bool)

(declare-fun e!3223589 () Bool)

(assert (=> b!5173431 (=> (not res!2198766) (not e!3223589))))

(assert (=> b!5173431 (= res!2198766 (not (= testedP!294 input!5817)))))

(declare-fun setNonEmpty!32167 () Bool)

(declare-fun tp!1451346 () Bool)

(declare-fun e!3223592 () Bool)

(declare-datatypes ((Regex!14639 0))(
  ( (ElementMatch!14639 (c!890692 C!29548)) (Concat!23484 (regOne!29790 Regex!14639) (regTwo!29790 Regex!14639)) (EmptyExpr!14639) (Star!14639 (reg!14968 Regex!14639)) (EmptyLang!14639) (Union!14639 (regOne!29791 Regex!14639) (regTwo!29791 Regex!14639)) )
))
(declare-datatypes ((List!60248 0))(
  ( (Nil!60124) (Cons!60124 (h!66572 Regex!14639) (t!373401 List!60248)) )
))
(declare-datatypes ((Context!8046 0))(
  ( (Context!8047 (exprs!4523 List!60248)) )
))
(declare-fun setElem!32167 () Context!8046)

(declare-fun inv!79844 (Context!8046) Bool)

(assert (=> setNonEmpty!32167 (= setRes!32168 (and tp!1451346 (inv!79844 setElem!32167) e!3223592))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!8046))

(declare-fun setRest!32168 () (InoxSet Context!8046))

(assert (=> setNonEmpty!32167 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8046 Bool)) false) setElem!32167 true) setRest!32168))))

(declare-fun b!5173432 () Bool)

(declare-fun e!3223598 () Bool)

(declare-fun tp!1451351 () Bool)

(assert (=> b!5173432 (= e!3223598 tp!1451351)))

(declare-fun b!5173433 () Bool)

(declare-fun e!3223594 () Bool)

(declare-datatypes ((tuple2!63832 0))(
  ( (tuple2!63833 (_1!35219 List!60247) (_2!35219 List!60247)) )
))
(declare-fun lt!2130772 () tuple2!63832)

(declare-fun matchZipper!979 ((InoxSet Context!8046) List!60247) Bool)

(assert (=> b!5173433 (= e!3223594 (matchZipper!979 baseZ!62 (_1!35219 lt!2130772)))))

(declare-fun b!5173434 () Bool)

(declare-fun e!3223595 () Bool)

(assert (=> b!5173434 (= e!3223589 (not e!3223595))))

(declare-fun res!2198765 () Bool)

(assert (=> b!5173434 (=> res!2198765 e!3223595)))

(declare-fun lt!2130766 () Int)

(declare-fun lt!2130771 () Int)

(assert (=> b!5173434 (= res!2198765 (>= lt!2130766 lt!2130771))))

(declare-fun lt!2130775 () Unit!151864)

(assert (=> b!5173434 (= lt!2130775 e!3223596)))

(declare-fun c!890691 () Bool)

(assert (=> b!5173434 (= c!890691 (= lt!2130766 lt!2130771))))

(assert (=> b!5173434 (<= lt!2130766 lt!2130771)))

(declare-fun lt!2130778 () Unit!151864)

(declare-fun lemmaIsPrefixThenSmallerEqSize!935 (List!60247 List!60247) Unit!151864)

(assert (=> b!5173434 (= lt!2130778 (lemmaIsPrefixThenSmallerEqSize!935 testedP!294 input!5817))))

(declare-fun b!5173435 () Bool)

(declare-fun tp!1451347 () Bool)

(assert (=> b!5173435 (= e!3223592 tp!1451347)))

(declare-fun res!2198761 () Bool)

(declare-fun e!3223591 () Bool)

(assert (=> start!547756 (=> (not res!2198761) (not e!3223591))))

(assert (=> start!547756 (= res!2198761 (isPrefix!5772 testedP!294 input!5817))))

(assert (=> start!547756 e!3223591))

(declare-fun e!3223590 () Bool)

(assert (=> start!547756 e!3223590))

(assert (=> start!547756 e!3223593))

(declare-fun condSetEmpty!32167 () Bool)

(assert (=> start!547756 (= condSetEmpty!32167 (= baseZ!62 ((as const (Array Context!8046 Bool)) false)))))

(assert (=> start!547756 setRes!32168))

(declare-fun condSetEmpty!32168 () Bool)

(declare-fun z!4581 () (InoxSet Context!8046))

(assert (=> start!547756 (= condSetEmpty!32168 (= z!4581 ((as const (Array Context!8046 Bool)) false)))))

(declare-fun setRes!32167 () Bool)

(assert (=> start!547756 setRes!32167))

(declare-fun b!5173436 () Bool)

(declare-fun Unit!151867 () Unit!151864)

(assert (=> b!5173436 (= e!3223596 Unit!151867)))

(declare-fun b!5173437 () Bool)

(assert (=> b!5173437 (= e!3223591 e!3223589)))

(declare-fun res!2198764 () Bool)

(assert (=> b!5173437 (=> (not res!2198764) (not e!3223589))))

(declare-fun lt!2130767 () List!60247)

(declare-fun isEmpty!32191 (List!60247) Bool)

(declare-fun findLongestMatchInnerZipper!297 ((InoxSet Context!8046) List!60247 Int List!60247 List!60247 Int) tuple2!63832)

(assert (=> b!5173437 (= res!2198764 (not (isEmpty!32191 (_1!35219 (findLongestMatchInnerZipper!297 z!4581 testedP!294 lt!2130766 lt!2130767 input!5817 lt!2130771)))))))

(declare-fun size!39675 (List!60247) Int)

(assert (=> b!5173437 (= lt!2130771 (size!39675 input!5817))))

(declare-fun getSuffix!3422 (List!60247 List!60247) List!60247)

(assert (=> b!5173437 (= lt!2130767 (getSuffix!3422 input!5817 testedP!294))))

(assert (=> b!5173437 (= lt!2130766 (size!39675 testedP!294))))

(declare-fun b!5173438 () Bool)

(declare-fun res!2198763 () Bool)

(assert (=> b!5173438 (=> (not res!2198763) (not e!3223591))))

(declare-fun derivationZipper!262 ((InoxSet Context!8046) List!60247) (InoxSet Context!8046))

(assert (=> b!5173438 (= res!2198763 (= (derivationZipper!262 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!32168 () Bool)

(assert (=> setIsEmpty!32168 setRes!32167))

(declare-fun b!5173439 () Bool)

(declare-fun e!3223597 () Bool)

(assert (=> b!5173439 (= e!3223597 true)))

(declare-fun lt!2130765 () List!60247)

(declare-fun ++!13163 (List!60247 List!60247) List!60247)

(assert (=> b!5173439 (= lt!2130765 (++!13163 testedP!294 lt!2130767))))

(assert (=> b!5173439 e!3223594))

(declare-fun res!2198760 () Bool)

(assert (=> b!5173439 (=> res!2198760 e!3223594)))

(assert (=> b!5173439 (= res!2198760 (isEmpty!32191 (_1!35219 lt!2130772)))))

(declare-fun lt!2130776 () List!60247)

(declare-fun lt!2130768 () (InoxSet Context!8046))

(assert (=> b!5173439 (= lt!2130772 (findLongestMatchInnerZipper!297 lt!2130768 lt!2130776 (size!39675 lt!2130776) (getSuffix!3422 input!5817 lt!2130776) input!5817 lt!2130771))))

(declare-fun lt!2130770 () Unit!151864)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!27 ((InoxSet Context!8046) (InoxSet Context!8046) List!60247 List!60247) Unit!151864)

(assert (=> b!5173439 (= lt!2130770 (longestMatchIsAcceptedByMatchOrIsEmptyRec!27 baseZ!62 lt!2130768 lt!2130776 input!5817))))

(assert (=> b!5173439 (= (derivationZipper!262 baseZ!62 lt!2130776) lt!2130768)))

(declare-fun lt!2130764 () C!29548)

(declare-fun derivationStepZipper!991 ((InoxSet Context!8046) C!29548) (InoxSet Context!8046))

(assert (=> b!5173439 (= lt!2130768 (derivationStepZipper!991 z!4581 lt!2130764))))

(declare-fun lt!2130769 () Unit!151864)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!109 ((InoxSet Context!8046) (InoxSet Context!8046) List!60247 C!29548) Unit!151864)

(assert (=> b!5173439 (= lt!2130769 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!109 baseZ!62 z!4581 testedP!294 lt!2130764))))

(declare-fun b!5173440 () Bool)

(assert (=> b!5173440 (= e!3223595 e!3223597)))

(declare-fun res!2198762 () Bool)

(assert (=> b!5173440 (=> res!2198762 e!3223597)))

(declare-fun nullableZipper!1185 ((InoxSet Context!8046)) Bool)

(assert (=> b!5173440 (= res!2198762 (nullableZipper!1185 z!4581))))

(assert (=> b!5173440 (isPrefix!5772 lt!2130776 input!5817)))

(declare-fun lt!2130774 () Unit!151864)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1085 (List!60247 List!60247) Unit!151864)

(assert (=> b!5173440 (= lt!2130774 (lemmaAddHeadSuffixToPrefixStillPrefix!1085 testedP!294 input!5817))))

(assert (=> b!5173440 (= lt!2130776 (++!13163 testedP!294 (Cons!60123 lt!2130764 Nil!60123)))))

(declare-fun head!11063 (List!60247) C!29548)

(assert (=> b!5173440 (= lt!2130764 (head!11063 lt!2130767))))

(declare-fun setElem!32168 () Context!8046)

(declare-fun tp!1451349 () Bool)

(declare-fun setNonEmpty!32168 () Bool)

(assert (=> setNonEmpty!32168 (= setRes!32167 (and tp!1451349 (inv!79844 setElem!32168) e!3223598))))

(declare-fun setRest!32167 () (InoxSet Context!8046))

(assert (=> setNonEmpty!32168 (= z!4581 ((_ map or) (store ((as const (Array Context!8046 Bool)) false) setElem!32168 true) setRest!32167))))

(declare-fun b!5173441 () Bool)

(declare-fun tp!1451348 () Bool)

(assert (=> b!5173441 (= e!3223590 (and tp_is_empty!38531 tp!1451348))))

(assert (= (and start!547756 res!2198761) b!5173438))

(assert (= (and b!5173438 res!2198763) b!5173437))

(assert (= (and b!5173437 res!2198764) b!5173431))

(assert (= (and b!5173431 res!2198766) b!5173434))

(assert (= (and b!5173434 c!890691) b!5173430))

(assert (= (and b!5173434 (not c!890691)) b!5173436))

(assert (= (and b!5173434 (not res!2198765)) b!5173440))

(assert (= (and b!5173440 (not res!2198762)) b!5173439))

(assert (= (and b!5173439 (not res!2198760)) b!5173433))

(get-info :version)

(assert (= (and start!547756 ((_ is Cons!60123) testedP!294)) b!5173441))

(assert (= (and start!547756 ((_ is Cons!60123) input!5817)) b!5173429))

(assert (= (and start!547756 condSetEmpty!32167) setIsEmpty!32167))

(assert (= (and start!547756 (not condSetEmpty!32167)) setNonEmpty!32167))

(assert (= setNonEmpty!32167 b!5173435))

(assert (= (and start!547756 condSetEmpty!32168) setIsEmpty!32168))

(assert (= (and start!547756 (not condSetEmpty!32168)) setNonEmpty!32168))

(assert (= setNonEmpty!32168 b!5173432))

(declare-fun m!6227088 () Bool)

(assert (=> b!5173433 m!6227088))

(declare-fun m!6227090 () Bool)

(assert (=> start!547756 m!6227090))

(declare-fun m!6227092 () Bool)

(assert (=> b!5173439 m!6227092))

(declare-fun m!6227094 () Bool)

(assert (=> b!5173439 m!6227094))

(declare-fun m!6227096 () Bool)

(assert (=> b!5173439 m!6227096))

(declare-fun m!6227098 () Bool)

(assert (=> b!5173439 m!6227098))

(declare-fun m!6227100 () Bool)

(assert (=> b!5173439 m!6227100))

(declare-fun m!6227102 () Bool)

(assert (=> b!5173439 m!6227102))

(declare-fun m!6227104 () Bool)

(assert (=> b!5173439 m!6227104))

(declare-fun m!6227106 () Bool)

(assert (=> b!5173439 m!6227106))

(assert (=> b!5173439 m!6227094))

(assert (=> b!5173439 m!6227100))

(declare-fun m!6227108 () Bool)

(assert (=> b!5173439 m!6227108))

(declare-fun m!6227110 () Bool)

(assert (=> b!5173430 m!6227110))

(declare-fun m!6227112 () Bool)

(assert (=> b!5173430 m!6227112))

(declare-fun m!6227114 () Bool)

(assert (=> b!5173430 m!6227114))

(declare-fun m!6227116 () Bool)

(assert (=> setNonEmpty!32168 m!6227116))

(declare-fun m!6227118 () Bool)

(assert (=> b!5173438 m!6227118))

(declare-fun m!6227120 () Bool)

(assert (=> setNonEmpty!32167 m!6227120))

(declare-fun m!6227122 () Bool)

(assert (=> b!5173434 m!6227122))

(declare-fun m!6227124 () Bool)

(assert (=> b!5173437 m!6227124))

(declare-fun m!6227126 () Bool)

(assert (=> b!5173437 m!6227126))

(declare-fun m!6227128 () Bool)

(assert (=> b!5173437 m!6227128))

(declare-fun m!6227130 () Bool)

(assert (=> b!5173437 m!6227130))

(declare-fun m!6227132 () Bool)

(assert (=> b!5173437 m!6227132))

(declare-fun m!6227134 () Bool)

(assert (=> b!5173440 m!6227134))

(declare-fun m!6227136 () Bool)

(assert (=> b!5173440 m!6227136))

(declare-fun m!6227138 () Bool)

(assert (=> b!5173440 m!6227138))

(declare-fun m!6227140 () Bool)

(assert (=> b!5173440 m!6227140))

(declare-fun m!6227142 () Bool)

(assert (=> b!5173440 m!6227142))

(check-sat (not start!547756) (not b!5173440) tp_is_empty!38531 (not b!5173430) (not b!5173435) (not b!5173441) (not b!5173438) (not b!5173437) (not b!5173434) (not b!5173433) (not b!5173432) (not setNonEmpty!32167) (not b!5173429) (not setNonEmpty!32168) (not b!5173439))
(check-sat)
