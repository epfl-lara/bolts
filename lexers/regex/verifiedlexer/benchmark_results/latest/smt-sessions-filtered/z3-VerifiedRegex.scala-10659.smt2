; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546424 () Bool)

(assert start!546424)

(declare-fun setRes!31588 () Bool)

(declare-fun tp!1448842 () Bool)

(declare-fun e!3218222 () Bool)

(declare-fun setNonEmpty!31587 () Bool)

(declare-datatypes ((C!29400 0))(
  ( (C!29401 (val!24402 Int)) )
))
(declare-datatypes ((Regex!14565 0))(
  ( (ElementMatch!14565 (c!888636 C!29400)) (Concat!23410 (regOne!29642 Regex!14565) (regTwo!29642 Regex!14565)) (EmptyExpr!14565) (Star!14565 (reg!14894 Regex!14565)) (EmptyLang!14565) (Union!14565 (regOne!29643 Regex!14565) (regTwo!29643 Regex!14565)) )
))
(declare-datatypes ((List!60085 0))(
  ( (Nil!59961) (Cons!59961 (h!66409 Regex!14565) (t!373238 List!60085)) )
))
(declare-datatypes ((Context!7898 0))(
  ( (Context!7899 (exprs!4449 List!60085)) )
))
(declare-fun setElem!31587 () Context!7898)

(declare-fun inv!79659 (Context!7898) Bool)

(assert (=> setNonEmpty!31587 (= setRes!31588 (and tp!1448842 (inv!79659 setElem!31587) e!3218222))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4581 () (InoxSet Context!7898))

(declare-fun setRest!31587 () (InoxSet Context!7898))

(assert (=> setNonEmpty!31587 (= z!4581 ((_ map or) (store ((as const (Array Context!7898 Bool)) false) setElem!31587 true) setRest!31587))))

(declare-fun res!2195673 () Bool)

(declare-fun e!3218226 () Bool)

(assert (=> start!546424 (=> (not res!2195673) (not e!3218226))))

(declare-datatypes ((List!60086 0))(
  ( (Nil!59962) (Cons!59962 (h!66410 C!29400) (t!373239 List!60086)) )
))
(declare-fun testedP!294 () List!60086)

(declare-fun input!5817 () List!60086)

(declare-fun isPrefix!5698 (List!60086 List!60086) Bool)

(assert (=> start!546424 (= res!2195673 (isPrefix!5698 testedP!294 input!5817))))

(assert (=> start!546424 e!3218226))

(declare-fun e!3218228 () Bool)

(assert (=> start!546424 e!3218228))

(declare-fun e!3218223 () Bool)

(assert (=> start!546424 e!3218223))

(declare-fun condSetEmpty!31588 () Bool)

(assert (=> start!546424 (= condSetEmpty!31588 (= z!4581 ((as const (Array Context!7898 Bool)) false)))))

(assert (=> start!546424 setRes!31588))

(declare-fun condSetEmpty!31587 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7898))

(assert (=> start!546424 (= condSetEmpty!31587 (= baseZ!62 ((as const (Array Context!7898 Bool)) false)))))

(declare-fun setRes!31587 () Bool)

(assert (=> start!546424 setRes!31587))

(declare-fun b!5164943 () Bool)

(declare-fun res!2195671 () Bool)

(declare-fun e!3218227 () Bool)

(assert (=> b!5164943 (=> (not res!2195671) (not e!3218227))))

(declare-fun nullableZipper!1121 ((InoxSet Context!7898)) Bool)

(assert (=> b!5164943 (= res!2195671 (nullableZipper!1121 z!4581))))

(declare-fun b!5164944 () Bool)

(declare-fun tp!1448843 () Bool)

(assert (=> b!5164944 (= e!3218222 tp!1448843)))

(declare-fun b!5164945 () Bool)

(declare-fun res!2195670 () Bool)

(assert (=> b!5164945 (=> (not res!2195670) (not e!3218227))))

(assert (=> b!5164945 (= res!2195670 (= testedP!294 input!5817))))

(declare-fun b!5164946 () Bool)

(declare-fun tp_is_empty!38383 () Bool)

(declare-fun tp!1448846 () Bool)

(assert (=> b!5164946 (= e!3218228 (and tp_is_empty!38383 tp!1448846))))

(declare-fun b!5164947 () Bool)

(declare-fun e!3218224 () Bool)

(assert (=> b!5164947 (= e!3218224 e!3218227)))

(declare-fun res!2195674 () Bool)

(assert (=> b!5164947 (=> (not res!2195674) (not e!3218227))))

(declare-fun lt!2124112 () List!60086)

(declare-fun lt!2124110 () Int)

(declare-fun lt!2124109 () Int)

(declare-fun isEmpty!32103 (List!60086) Bool)

(declare-datatypes ((tuple2!63684 0))(
  ( (tuple2!63685 (_1!35145 List!60086) (_2!35145 List!60086)) )
))
(declare-fun findLongestMatchInnerZipper!223 ((InoxSet Context!7898) List!60086 Int List!60086 List!60086 Int) tuple2!63684)

(assert (=> b!5164947 (= res!2195674 (not (isEmpty!32103 (_1!35145 (findLongestMatchInnerZipper!223 z!4581 testedP!294 lt!2124109 lt!2124112 input!5817 lt!2124110)))))))

(declare-fun size!39601 (List!60086) Int)

(assert (=> b!5164947 (= lt!2124110 (size!39601 input!5817))))

(declare-fun getSuffix!3348 (List!60086 List!60086) List!60086)

(assert (=> b!5164947 (= lt!2124112 (getSuffix!3348 input!5817 testedP!294))))

(assert (=> b!5164947 (= lt!2124109 (size!39601 testedP!294))))

(declare-fun setIsEmpty!31587 () Bool)

(assert (=> setIsEmpty!31587 setRes!31587))

(declare-fun b!5164948 () Bool)

(declare-fun tp!1448847 () Bool)

(assert (=> b!5164948 (= e!3218223 (and tp_is_empty!38383 tp!1448847))))

(declare-fun setIsEmpty!31588 () Bool)

(assert (=> setIsEmpty!31588 setRes!31588))

(declare-fun b!5164949 () Bool)

(assert (=> b!5164949 (= e!3218226 e!3218224)))

(declare-fun res!2195672 () Bool)

(assert (=> b!5164949 (=> (not res!2195672) (not e!3218224))))

(declare-fun lt!2124111 () (InoxSet Context!7898))

(assert (=> b!5164949 (= res!2195672 (= lt!2124111 z!4581))))

(declare-fun derivationZipper!188 ((InoxSet Context!7898) List!60086) (InoxSet Context!7898))

(assert (=> b!5164949 (= lt!2124111 (derivationZipper!188 baseZ!62 testedP!294))))

(declare-fun b!5164950 () Bool)

(assert (=> b!5164950 (= e!3218227 (not (>= lt!2124110 lt!2124109)))))

(declare-fun matchZipper!949 ((InoxSet Context!7898) List!60086) Bool)

(assert (=> b!5164950 (= (matchZipper!949 baseZ!62 testedP!294) (matchZipper!949 lt!2124111 Nil!59962))))

(declare-datatypes ((Unit!151404 0))(
  ( (Unit!151405) )
))
(declare-fun lt!2124108 () Unit!151404)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!30 ((InoxSet Context!7898) List!60086) Unit!151404)

(assert (=> b!5164950 (= lt!2124108 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!30 baseZ!62 testedP!294))))

(declare-fun e!3218225 () Bool)

(declare-fun setNonEmpty!31588 () Bool)

(declare-fun tp!1448844 () Bool)

(declare-fun setElem!31588 () Context!7898)

(assert (=> setNonEmpty!31588 (= setRes!31587 (and tp!1448844 (inv!79659 setElem!31588) e!3218225))))

(declare-fun setRest!31588 () (InoxSet Context!7898))

(assert (=> setNonEmpty!31588 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7898 Bool)) false) setElem!31588 true) setRest!31588))))

(declare-fun b!5164951 () Bool)

(declare-fun tp!1448845 () Bool)

(assert (=> b!5164951 (= e!3218225 tp!1448845)))

(assert (= (and start!546424 res!2195673) b!5164949))

(assert (= (and b!5164949 res!2195672) b!5164947))

(assert (= (and b!5164947 res!2195674) b!5164945))

(assert (= (and b!5164945 res!2195670) b!5164943))

(assert (= (and b!5164943 res!2195671) b!5164950))

(get-info :version)

(assert (= (and start!546424 ((_ is Cons!59962) testedP!294)) b!5164946))

(assert (= (and start!546424 ((_ is Cons!59962) input!5817)) b!5164948))

(assert (= (and start!546424 condSetEmpty!31588) setIsEmpty!31588))

(assert (= (and start!546424 (not condSetEmpty!31588)) setNonEmpty!31587))

(assert (= setNonEmpty!31587 b!5164944))

(assert (= (and start!546424 condSetEmpty!31587) setIsEmpty!31587))

(assert (= (and start!546424 (not condSetEmpty!31587)) setNonEmpty!31588))

(assert (= setNonEmpty!31588 b!5164951))

(declare-fun m!6215442 () Bool)

(assert (=> b!5164943 m!6215442))

(declare-fun m!6215444 () Bool)

(assert (=> setNonEmpty!31587 m!6215444))

(declare-fun m!6215446 () Bool)

(assert (=> b!5164950 m!6215446))

(declare-fun m!6215448 () Bool)

(assert (=> b!5164950 m!6215448))

(declare-fun m!6215450 () Bool)

(assert (=> b!5164950 m!6215450))

(declare-fun m!6215452 () Bool)

(assert (=> start!546424 m!6215452))

(declare-fun m!6215454 () Bool)

(assert (=> setNonEmpty!31588 m!6215454))

(declare-fun m!6215456 () Bool)

(assert (=> b!5164949 m!6215456))

(declare-fun m!6215458 () Bool)

(assert (=> b!5164947 m!6215458))

(declare-fun m!6215460 () Bool)

(assert (=> b!5164947 m!6215460))

(declare-fun m!6215462 () Bool)

(assert (=> b!5164947 m!6215462))

(declare-fun m!6215464 () Bool)

(assert (=> b!5164947 m!6215464))

(declare-fun m!6215466 () Bool)

(assert (=> b!5164947 m!6215466))

(check-sat (not setNonEmpty!31588) (not b!5164950) (not b!5164948) (not b!5164951) (not b!5164946) (not b!5164943) (not b!5164947) (not start!546424) tp_is_empty!38383 (not setNonEmpty!31587) (not b!5164944) (not b!5164949))
(check-sat)
