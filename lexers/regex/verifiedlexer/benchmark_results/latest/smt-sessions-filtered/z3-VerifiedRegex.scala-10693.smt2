; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547672 () Bool)

(assert start!547672)

(declare-fun setNonEmpty!32123 () Bool)

(declare-fun e!3223242 () Bool)

(declare-fun setRes!32124 () Bool)

(declare-datatypes ((C!29536 0))(
  ( (C!29537 (val!24470 Int)) )
))
(declare-datatypes ((Regex!14633 0))(
  ( (ElementMatch!14633 (c!890570 C!29536)) (Concat!23478 (regOne!29778 Regex!14633) (regTwo!29778 Regex!14633)) (EmptyExpr!14633) (Star!14633 (reg!14962 Regex!14633)) (EmptyLang!14633) (Union!14633 (regOne!29779 Regex!14633) (regTwo!29779 Regex!14633)) )
))
(declare-datatypes ((List!60235 0))(
  ( (Nil!60111) (Cons!60111 (h!66559 Regex!14633) (t!373388 List!60235)) )
))
(declare-datatypes ((Context!8034 0))(
  ( (Context!8035 (exprs!4517 List!60235)) )
))
(declare-fun setElem!32123 () Context!8034)

(declare-fun tp!1451198 () Bool)

(declare-fun inv!79829 (Context!8034) Bool)

(assert (=> setNonEmpty!32123 (= setRes!32124 (and tp!1451198 (inv!79829 setElem!32123) e!3223242))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4581 () (InoxSet Context!8034))

(declare-fun setRest!32123 () (InoxSet Context!8034))

(assert (=> setNonEmpty!32123 (= z!4581 ((_ map or) (store ((as const (Array Context!8034 Bool)) false) setElem!32123 true) setRest!32123))))

(declare-fun b!5172902 () Bool)

(declare-fun e!3223246 () Bool)

(declare-fun tp!1451199 () Bool)

(assert (=> b!5172902 (= e!3223246 tp!1451199)))

(declare-fun b!5172903 () Bool)

(declare-fun e!3223239 () Bool)

(declare-fun e!3223241 () Bool)

(assert (=> b!5172903 (= e!3223239 e!3223241)))

(declare-fun res!2198562 () Bool)

(assert (=> b!5172903 (=> res!2198562 e!3223241)))

(declare-fun nullableZipper!1179 ((InoxSet Context!8034)) Bool)

(assert (=> b!5172903 (= res!2198562 (nullableZipper!1179 z!4581))))

(declare-datatypes ((List!60236 0))(
  ( (Nil!60112) (Cons!60112 (h!66560 C!29536) (t!373389 List!60236)) )
))
(declare-fun lt!2130238 () List!60236)

(declare-fun input!5817 () List!60236)

(declare-fun isPrefix!5766 (List!60236 List!60236) Bool)

(assert (=> b!5172903 (isPrefix!5766 lt!2130238 input!5817)))

(declare-datatypes ((Unit!151828 0))(
  ( (Unit!151829) )
))
(declare-fun lt!2130232 () Unit!151828)

(declare-fun testedP!294 () List!60236)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1079 (List!60236 List!60236) Unit!151828)

(assert (=> b!5172903 (= lt!2130232 (lemmaAddHeadSuffixToPrefixStillPrefix!1079 testedP!294 input!5817))))

(declare-fun lt!2130235 () C!29536)

(declare-fun ++!13157 (List!60236 List!60236) List!60236)

(assert (=> b!5172903 (= lt!2130238 (++!13157 testedP!294 (Cons!60112 lt!2130235 Nil!60112)))))

(declare-fun lt!2130227 () List!60236)

(declare-fun head!11057 (List!60236) C!29536)

(assert (=> b!5172903 (= lt!2130235 (head!11057 lt!2130227))))

(declare-fun b!5172904 () Bool)

(declare-fun res!2198558 () Bool)

(declare-fun e!3223243 () Bool)

(assert (=> b!5172904 (=> (not res!2198558) (not e!3223243))))

(assert (=> b!5172904 (= res!2198558 (not (= testedP!294 input!5817)))))

(declare-fun b!5172905 () Bool)

(declare-fun lt!2130234 () Int)

(declare-fun lt!2130237 () Int)

(assert (=> b!5172905 (= e!3223241 (>= lt!2130234 lt!2130237))))

(declare-fun e!3223240 () Bool)

(assert (=> b!5172905 e!3223240))

(declare-fun res!2198559 () Bool)

(assert (=> b!5172905 (=> res!2198559 e!3223240)))

(declare-datatypes ((tuple2!63820 0))(
  ( (tuple2!63821 (_1!35213 List!60236) (_2!35213 List!60236)) )
))
(declare-fun lt!2130236 () tuple2!63820)

(declare-fun isEmpty!32185 (List!60236) Bool)

(assert (=> b!5172905 (= res!2198559 (isEmpty!32185 (_1!35213 lt!2130236)))))

(declare-fun lt!2130229 () (InoxSet Context!8034))

(declare-fun findLongestMatchInnerZipper!291 ((InoxSet Context!8034) List!60236 Int List!60236 List!60236 Int) tuple2!63820)

(declare-fun size!39669 (List!60236) Int)

(declare-fun getSuffix!3416 (List!60236 List!60236) List!60236)

(assert (=> b!5172905 (= lt!2130236 (findLongestMatchInnerZipper!291 lt!2130229 lt!2130238 (size!39669 lt!2130238) (getSuffix!3416 input!5817 lt!2130238) input!5817 lt!2130234))))

(declare-fun lt!2130233 () Unit!151828)

(declare-fun baseZ!62 () (InoxSet Context!8034))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!21 ((InoxSet Context!8034) (InoxSet Context!8034) List!60236 List!60236) Unit!151828)

(assert (=> b!5172905 (= lt!2130233 (longestMatchIsAcceptedByMatchOrIsEmptyRec!21 baseZ!62 lt!2130229 lt!2130238 input!5817))))

(declare-fun derivationZipper!256 ((InoxSet Context!8034) List!60236) (InoxSet Context!8034))

(assert (=> b!5172905 (= (derivationZipper!256 baseZ!62 lt!2130238) lt!2130229)))

(declare-fun derivationStepZipper!985 ((InoxSet Context!8034) C!29536) (InoxSet Context!8034))

(assert (=> b!5172905 (= lt!2130229 (derivationStepZipper!985 z!4581 lt!2130235))))

(declare-fun lt!2130230 () Unit!151828)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!103 ((InoxSet Context!8034) (InoxSet Context!8034) List!60236 C!29536) Unit!151828)

(assert (=> b!5172905 (= lt!2130230 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!103 baseZ!62 z!4581 testedP!294 lt!2130235))))

(declare-fun b!5172906 () Bool)

(declare-fun res!2198560 () Bool)

(declare-fun e!3223237 () Bool)

(assert (=> b!5172906 (=> (not res!2198560) (not e!3223237))))

(assert (=> b!5172906 (= res!2198560 (= (derivationZipper!256 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5172907 () Bool)

(declare-fun tp!1451201 () Bool)

(assert (=> b!5172907 (= e!3223242 tp!1451201)))

(declare-fun setIsEmpty!32123 () Bool)

(assert (=> setIsEmpty!32123 setRes!32124))

(declare-fun b!5172908 () Bool)

(assert (=> b!5172908 (= e!3223237 e!3223243)))

(declare-fun res!2198556 () Bool)

(assert (=> b!5172908 (=> (not res!2198556) (not e!3223243))))

(assert (=> b!5172908 (= res!2198556 (not (isEmpty!32185 (_1!35213 (findLongestMatchInnerZipper!291 z!4581 testedP!294 lt!2130237 lt!2130227 input!5817 lt!2130234)))))))

(assert (=> b!5172908 (= lt!2130234 (size!39669 input!5817))))

(assert (=> b!5172908 (= lt!2130227 (getSuffix!3416 input!5817 testedP!294))))

(assert (=> b!5172908 (= lt!2130237 (size!39669 testedP!294))))

(declare-fun setIsEmpty!32124 () Bool)

(declare-fun setRes!32123 () Bool)

(assert (=> setIsEmpty!32124 setRes!32123))

(declare-fun res!2198557 () Bool)

(assert (=> start!547672 (=> (not res!2198557) (not e!3223237))))

(assert (=> start!547672 (= res!2198557 (isPrefix!5766 testedP!294 input!5817))))

(assert (=> start!547672 e!3223237))

(declare-fun e!3223238 () Bool)

(assert (=> start!547672 e!3223238))

(declare-fun e!3223245 () Bool)

(assert (=> start!547672 e!3223245))

(declare-fun condSetEmpty!32124 () Bool)

(assert (=> start!547672 (= condSetEmpty!32124 (= baseZ!62 ((as const (Array Context!8034 Bool)) false)))))

(assert (=> start!547672 setRes!32123))

(declare-fun condSetEmpty!32123 () Bool)

(assert (=> start!547672 (= condSetEmpty!32123 (= z!4581 ((as const (Array Context!8034 Bool)) false)))))

(assert (=> start!547672 setRes!32124))

(declare-fun b!5172901 () Bool)

(declare-fun tp_is_empty!38519 () Bool)

(declare-fun tp!1451200 () Bool)

(assert (=> b!5172901 (= e!3223245 (and tp_is_empty!38519 tp!1451200))))

(declare-fun b!5172909 () Bool)

(declare-fun matchZipper!973 ((InoxSet Context!8034) List!60236) Bool)

(assert (=> b!5172909 (= e!3223240 (matchZipper!973 baseZ!62 (_1!35213 lt!2130236)))))

(declare-fun b!5172910 () Bool)

(declare-fun e!3223244 () Unit!151828)

(declare-fun Unit!151830 () Unit!151828)

(assert (=> b!5172910 (= e!3223244 Unit!151830)))

(declare-fun setElem!32124 () Context!8034)

(declare-fun tp!1451202 () Bool)

(declare-fun setNonEmpty!32124 () Bool)

(assert (=> setNonEmpty!32124 (= setRes!32123 (and tp!1451202 (inv!79829 setElem!32124) e!3223246))))

(declare-fun setRest!32124 () (InoxSet Context!8034))

(assert (=> setNonEmpty!32124 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8034 Bool)) false) setElem!32124 true) setRest!32124))))

(declare-fun b!5172911 () Bool)

(assert (=> b!5172911 (= e!3223243 (not e!3223239))))

(declare-fun res!2198561 () Bool)

(assert (=> b!5172911 (=> res!2198561 e!3223239)))

(assert (=> b!5172911 (= res!2198561 (>= lt!2130237 lt!2130234))))

(declare-fun lt!2130231 () Unit!151828)

(assert (=> b!5172911 (= lt!2130231 e!3223244)))

(declare-fun c!890569 () Bool)

(assert (=> b!5172911 (= c!890569 (= lt!2130237 lt!2130234))))

(assert (=> b!5172911 (<= lt!2130237 lt!2130234)))

(declare-fun lt!2130240 () Unit!151828)

(declare-fun lemmaIsPrefixThenSmallerEqSize!929 (List!60236 List!60236) Unit!151828)

(assert (=> b!5172911 (= lt!2130240 (lemmaIsPrefixThenSmallerEqSize!929 testedP!294 input!5817))))

(declare-fun b!5172912 () Bool)

(declare-fun Unit!151831 () Unit!151828)

(assert (=> b!5172912 (= e!3223244 Unit!151831)))

(declare-fun lt!2130239 () Unit!151828)

(declare-fun lemmaIsPrefixRefl!3773 (List!60236 List!60236) Unit!151828)

(assert (=> b!5172912 (= lt!2130239 (lemmaIsPrefixRefl!3773 input!5817 input!5817))))

(assert (=> b!5172912 (isPrefix!5766 input!5817 input!5817)))

(declare-fun lt!2130228 () Unit!151828)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1415 (List!60236 List!60236 List!60236) Unit!151828)

(assert (=> b!5172912 (= lt!2130228 (lemmaIsPrefixSameLengthThenSameList!1415 input!5817 testedP!294 input!5817))))

(assert (=> b!5172912 false))

(declare-fun b!5172913 () Bool)

(declare-fun tp!1451203 () Bool)

(assert (=> b!5172913 (= e!3223238 (and tp_is_empty!38519 tp!1451203))))

(assert (= (and start!547672 res!2198557) b!5172906))

(assert (= (and b!5172906 res!2198560) b!5172908))

(assert (= (and b!5172908 res!2198556) b!5172904))

(assert (= (and b!5172904 res!2198558) b!5172911))

(assert (= (and b!5172911 c!890569) b!5172912))

(assert (= (and b!5172911 (not c!890569)) b!5172910))

(assert (= (and b!5172911 (not res!2198561)) b!5172903))

(assert (= (and b!5172903 (not res!2198562)) b!5172905))

(assert (= (and b!5172905 (not res!2198559)) b!5172909))

(get-info :version)

(assert (= (and start!547672 ((_ is Cons!60112) testedP!294)) b!5172913))

(assert (= (and start!547672 ((_ is Cons!60112) input!5817)) b!5172901))

(assert (= (and start!547672 condSetEmpty!32124) setIsEmpty!32124))

(assert (= (and start!547672 (not condSetEmpty!32124)) setNonEmpty!32124))

(assert (= setNonEmpty!32124 b!5172902))

(assert (= (and start!547672 condSetEmpty!32123) setIsEmpty!32123))

(assert (= (and start!547672 (not condSetEmpty!32123)) setNonEmpty!32123))

(assert (= setNonEmpty!32123 b!5172907))

(declare-fun m!6226390 () Bool)

(assert (=> b!5172903 m!6226390))

(declare-fun m!6226392 () Bool)

(assert (=> b!5172903 m!6226392))

(declare-fun m!6226394 () Bool)

(assert (=> b!5172903 m!6226394))

(declare-fun m!6226396 () Bool)

(assert (=> b!5172903 m!6226396))

(declare-fun m!6226398 () Bool)

(assert (=> b!5172903 m!6226398))

(declare-fun m!6226400 () Bool)

(assert (=> setNonEmpty!32123 m!6226400))

(declare-fun m!6226402 () Bool)

(assert (=> b!5172911 m!6226402))

(declare-fun m!6226404 () Bool)

(assert (=> start!547672 m!6226404))

(declare-fun m!6226406 () Bool)

(assert (=> b!5172905 m!6226406))

(declare-fun m!6226408 () Bool)

(assert (=> b!5172905 m!6226408))

(declare-fun m!6226410 () Bool)

(assert (=> b!5172905 m!6226410))

(declare-fun m!6226412 () Bool)

(assert (=> b!5172905 m!6226412))

(assert (=> b!5172905 m!6226408))

(declare-fun m!6226414 () Bool)

(assert (=> b!5172905 m!6226414))

(assert (=> b!5172905 m!6226406))

(declare-fun m!6226416 () Bool)

(assert (=> b!5172905 m!6226416))

(declare-fun m!6226418 () Bool)

(assert (=> b!5172905 m!6226418))

(declare-fun m!6226420 () Bool)

(assert (=> b!5172905 m!6226420))

(declare-fun m!6226422 () Bool)

(assert (=> setNonEmpty!32124 m!6226422))

(declare-fun m!6226424 () Bool)

(assert (=> b!5172912 m!6226424))

(declare-fun m!6226426 () Bool)

(assert (=> b!5172912 m!6226426))

(declare-fun m!6226428 () Bool)

(assert (=> b!5172912 m!6226428))

(declare-fun m!6226430 () Bool)

(assert (=> b!5172909 m!6226430))

(declare-fun m!6226432 () Bool)

(assert (=> b!5172908 m!6226432))

(declare-fun m!6226434 () Bool)

(assert (=> b!5172908 m!6226434))

(declare-fun m!6226436 () Bool)

(assert (=> b!5172908 m!6226436))

(declare-fun m!6226438 () Bool)

(assert (=> b!5172908 m!6226438))

(declare-fun m!6226440 () Bool)

(assert (=> b!5172908 m!6226440))

(declare-fun m!6226442 () Bool)

(assert (=> b!5172906 m!6226442))

(check-sat (not b!5172905) (not b!5172913) (not b!5172903) (not b!5172907) (not b!5172902) (not b!5172912) (not b!5172901) (not start!547672) tp_is_empty!38519 (not b!5172906) (not setNonEmpty!32124) (not b!5172911) (not setNonEmpty!32123) (not b!5172908) (not b!5172909))
(check-sat)
