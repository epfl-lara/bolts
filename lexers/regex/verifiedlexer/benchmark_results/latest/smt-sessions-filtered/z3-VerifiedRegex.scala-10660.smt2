; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546428 () Bool)

(assert start!546428)

(declare-fun setNonEmpty!31599 () Bool)

(declare-fun tp!1448882 () Bool)

(declare-datatypes ((C!29404 0))(
  ( (C!29405 (val!24404 Int)) )
))
(declare-datatypes ((Regex!14567 0))(
  ( (ElementMatch!14567 (c!888638 C!29404)) (Concat!23412 (regOne!29646 Regex!14567) (regTwo!29646 Regex!14567)) (EmptyExpr!14567) (Star!14567 (reg!14896 Regex!14567)) (EmptyLang!14567) (Union!14567 (regOne!29647 Regex!14567) (regTwo!29647 Regex!14567)) )
))
(declare-datatypes ((List!60089 0))(
  ( (Nil!59965) (Cons!59965 (h!66413 Regex!14567) (t!373242 List!60089)) )
))
(declare-datatypes ((Context!7902 0))(
  ( (Context!7903 (exprs!4451 List!60089)) )
))
(declare-fun setElem!31600 () Context!7902)

(declare-fun setRes!31600 () Bool)

(declare-fun e!3218264 () Bool)

(declare-fun inv!79664 (Context!7902) Bool)

(assert (=> setNonEmpty!31599 (= setRes!31600 (and tp!1448882 (inv!79664 setElem!31600) e!3218264))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!7902))

(declare-fun setRest!31599 () (InoxSet Context!7902))

(assert (=> setNonEmpty!31599 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7902 Bool)) false) setElem!31600 true) setRest!31599))))

(declare-fun tp!1448880 () Bool)

(declare-fun e!3218259 () Bool)

(declare-fun setNonEmpty!31600 () Bool)

(declare-fun setRes!31599 () Bool)

(declare-fun setElem!31599 () Context!7902)

(assert (=> setNonEmpty!31600 (= setRes!31599 (and tp!1448880 (inv!79664 setElem!31599) e!3218259))))

(declare-fun z!4581 () (InoxSet Context!7902))

(declare-fun setRest!31600 () (InoxSet Context!7902))

(assert (=> setNonEmpty!31600 (= z!4581 ((_ map or) (store ((as const (Array Context!7902 Bool)) false) setElem!31599 true) setRest!31600))))

(declare-fun b!5164997 () Bool)

(declare-fun res!2195703 () Bool)

(declare-fun e!3218261 () Bool)

(assert (=> b!5164997 (=> (not res!2195703) (not e!3218261))))

(declare-fun nullableZipper!1123 ((InoxSet Context!7902)) Bool)

(assert (=> b!5164997 (= res!2195703 (nullableZipper!1123 z!4581))))

(declare-fun b!5164998 () Bool)

(declare-fun e!3218263 () Bool)

(declare-fun tp_is_empty!38387 () Bool)

(declare-fun tp!1448883 () Bool)

(assert (=> b!5164998 (= e!3218263 (and tp_is_empty!38387 tp!1448883))))

(declare-fun res!2195701 () Bool)

(declare-fun e!3218260 () Bool)

(assert (=> start!546428 (=> (not res!2195701) (not e!3218260))))

(declare-datatypes ((List!60090 0))(
  ( (Nil!59966) (Cons!59966 (h!66414 C!29404) (t!373243 List!60090)) )
))
(declare-fun testedP!294 () List!60090)

(declare-fun input!5817 () List!60090)

(declare-fun isPrefix!5700 (List!60090 List!60090) Bool)

(assert (=> start!546428 (= res!2195701 (isPrefix!5700 testedP!294 input!5817))))

(assert (=> start!546428 e!3218260))

(assert (=> start!546428 e!3218263))

(declare-fun e!3218262 () Bool)

(assert (=> start!546428 e!3218262))

(declare-fun condSetEmpty!31600 () Bool)

(assert (=> start!546428 (= condSetEmpty!31600 (= z!4581 ((as const (Array Context!7902 Bool)) false)))))

(assert (=> start!546428 setRes!31599))

(declare-fun condSetEmpty!31599 () Bool)

(assert (=> start!546428 (= condSetEmpty!31599 (= baseZ!62 ((as const (Array Context!7902 Bool)) false)))))

(assert (=> start!546428 setRes!31600))

(declare-fun b!5164999 () Bool)

(declare-fun res!2195700 () Bool)

(assert (=> b!5164999 (=> (not res!2195700) (not e!3218261))))

(assert (=> b!5164999 (= res!2195700 (= testedP!294 input!5817))))

(declare-fun setIsEmpty!31599 () Bool)

(assert (=> setIsEmpty!31599 setRes!31599))

(declare-fun b!5165000 () Bool)

(declare-fun tp!1448881 () Bool)

(assert (=> b!5165000 (= e!3218262 (and tp_is_empty!38387 tp!1448881))))

(declare-fun b!5165001 () Bool)

(declare-fun tp!1448878 () Bool)

(assert (=> b!5165001 (= e!3218259 tp!1448878)))

(declare-fun setIsEmpty!31600 () Bool)

(assert (=> setIsEmpty!31600 setRes!31600))

(declare-fun b!5165002 () Bool)

(assert (=> b!5165002 (= e!3218261 (not true))))

(declare-fun lt!2124123 () (InoxSet Context!7902))

(declare-fun matchZipper!951 ((InoxSet Context!7902) List!60090) Bool)

(assert (=> b!5165002 (= (matchZipper!951 baseZ!62 testedP!294) (matchZipper!951 lt!2124123 Nil!59966))))

(declare-datatypes ((Unit!151408 0))(
  ( (Unit!151409) )
))
(declare-fun lt!2124124 () Unit!151408)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!32 ((InoxSet Context!7902) List!60090) Unit!151408)

(assert (=> b!5165002 (= lt!2124124 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!32 baseZ!62 testedP!294))))

(declare-fun b!5165003 () Bool)

(declare-fun res!2195702 () Bool)

(assert (=> b!5165003 (=> (not res!2195702) (not e!3218261))))

(declare-fun isEmpty!32105 (List!60090) Bool)

(declare-datatypes ((tuple2!63688 0))(
  ( (tuple2!63689 (_1!35147 List!60090) (_2!35147 List!60090)) )
))
(declare-fun findLongestMatchInnerZipper!225 ((InoxSet Context!7902) List!60090 Int List!60090 List!60090 Int) tuple2!63688)

(declare-fun size!39603 (List!60090) Int)

(declare-fun getSuffix!3350 (List!60090 List!60090) List!60090)

(assert (=> b!5165003 (= res!2195702 (not (isEmpty!32105 (_1!35147 (findLongestMatchInnerZipper!225 z!4581 testedP!294 (size!39603 testedP!294) (getSuffix!3350 input!5817 testedP!294) input!5817 (size!39603 input!5817))))))))

(declare-fun b!5165004 () Bool)

(declare-fun tp!1448879 () Bool)

(assert (=> b!5165004 (= e!3218264 tp!1448879)))

(declare-fun b!5165005 () Bool)

(assert (=> b!5165005 (= e!3218260 e!3218261)))

(declare-fun res!2195704 () Bool)

(assert (=> b!5165005 (=> (not res!2195704) (not e!3218261))))

(assert (=> b!5165005 (= res!2195704 (= lt!2124123 z!4581))))

(declare-fun derivationZipper!190 ((InoxSet Context!7902) List!60090) (InoxSet Context!7902))

(assert (=> b!5165005 (= lt!2124123 (derivationZipper!190 baseZ!62 testedP!294))))

(assert (= (and start!546428 res!2195701) b!5165005))

(assert (= (and b!5165005 res!2195704) b!5165003))

(assert (= (and b!5165003 res!2195702) b!5164999))

(assert (= (and b!5164999 res!2195700) b!5164997))

(assert (= (and b!5164997 res!2195703) b!5165002))

(get-info :version)

(assert (= (and start!546428 ((_ is Cons!59966) testedP!294)) b!5164998))

(assert (= (and start!546428 ((_ is Cons!59966) input!5817)) b!5165000))

(assert (= (and start!546428 condSetEmpty!31600) setIsEmpty!31599))

(assert (= (and start!546428 (not condSetEmpty!31600)) setNonEmpty!31600))

(assert (= setNonEmpty!31600 b!5165001))

(assert (= (and start!546428 condSetEmpty!31599) setIsEmpty!31600))

(assert (= (and start!546428 (not condSetEmpty!31599)) setNonEmpty!31599))

(assert (= setNonEmpty!31599 b!5165004))

(declare-fun m!6215494 () Bool)

(assert (=> start!546428 m!6215494))

(declare-fun m!6215496 () Bool)

(assert (=> setNonEmpty!31600 m!6215496))

(declare-fun m!6215498 () Bool)

(assert (=> setNonEmpty!31599 m!6215498))

(declare-fun m!6215500 () Bool)

(assert (=> b!5164997 m!6215500))

(declare-fun m!6215502 () Bool)

(assert (=> b!5165003 m!6215502))

(declare-fun m!6215504 () Bool)

(assert (=> b!5165003 m!6215504))

(declare-fun m!6215506 () Bool)

(assert (=> b!5165003 m!6215506))

(declare-fun m!6215508 () Bool)

(assert (=> b!5165003 m!6215508))

(assert (=> b!5165003 m!6215502))

(assert (=> b!5165003 m!6215506))

(assert (=> b!5165003 m!6215508))

(declare-fun m!6215510 () Bool)

(assert (=> b!5165003 m!6215510))

(declare-fun m!6215512 () Bool)

(assert (=> b!5165005 m!6215512))

(declare-fun m!6215514 () Bool)

(assert (=> b!5165002 m!6215514))

(declare-fun m!6215516 () Bool)

(assert (=> b!5165002 m!6215516))

(declare-fun m!6215518 () Bool)

(assert (=> b!5165002 m!6215518))

(check-sat (not b!5165004) (not b!5164998) (not setNonEmpty!31600) (not b!5165001) (not b!5165002) (not setNonEmpty!31599) (not start!546428) (not b!5165005) (not b!5165000) (not b!5164997) tp_is_empty!38387 (not b!5165003))
(check-sat)
