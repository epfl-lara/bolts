; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546480 () Bool)

(assert start!546480)

(declare-fun b!5165329 () Bool)

(declare-fun res!2195811 () Bool)

(declare-fun e!3218476 () Bool)

(assert (=> b!5165329 (=> (not res!2195811) (not e!3218476))))

(declare-datatypes ((C!29412 0))(
  ( (C!29413 (val!24408 Int)) )
))
(declare-datatypes ((List!60097 0))(
  ( (Nil!59973) (Cons!59973 (h!66421 C!29412) (t!373250 List!60097)) )
))
(declare-fun testedP!294 () List!60097)

(declare-fun input!5817 () List!60097)

(assert (=> b!5165329 (= res!2195811 (= testedP!294 input!5817))))

(declare-fun b!5165330 () Bool)

(declare-fun e!3218475 () Bool)

(declare-fun tp!1448995 () Bool)

(assert (=> b!5165330 (= e!3218475 tp!1448995)))

(declare-fun b!5165331 () Bool)

(declare-fun e!3218474 () Bool)

(declare-fun tp_is_empty!38395 () Bool)

(declare-fun tp!1448993 () Bool)

(assert (=> b!5165331 (= e!3218474 (and tp_is_empty!38395 tp!1448993))))

(declare-fun setIsEmpty!31631 () Bool)

(declare-fun setRes!31631 () Bool)

(assert (=> setIsEmpty!31631 setRes!31631))

(declare-fun b!5165332 () Bool)

(assert (=> b!5165332 (= e!3218476 (not true))))

(declare-fun lt!2124366 () List!60097)

(declare-fun lt!2124362 () List!60097)

(declare-fun ++!13107 (List!60097 List!60097) List!60097)

(assert (=> b!5165332 (= lt!2124366 (++!13107 testedP!294 lt!2124362))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14571 0))(
  ( (ElementMatch!14571 (c!888716 C!29412)) (Concat!23416 (regOne!29654 Regex!14571) (regTwo!29654 Regex!14571)) (EmptyExpr!14571) (Star!14571 (reg!14900 Regex!14571)) (EmptyLang!14571) (Union!14571 (regOne!29655 Regex!14571) (regTwo!29655 Regex!14571)) )
))
(declare-datatypes ((List!60098 0))(
  ( (Nil!59974) (Cons!59974 (h!66422 Regex!14571) (t!373251 List!60098)) )
))
(declare-datatypes ((Context!7910 0))(
  ( (Context!7911 (exprs!4455 List!60098)) )
))
(declare-fun baseZ!62 () (InoxSet Context!7910))

(declare-fun lt!2124364 () (InoxSet Context!7910))

(declare-fun matchZipper!955 ((InoxSet Context!7910) List!60097) Bool)

(assert (=> b!5165332 (= (matchZipper!955 baseZ!62 testedP!294) (matchZipper!955 lt!2124364 Nil!59973))))

(declare-datatypes ((Unit!151422 0))(
  ( (Unit!151423) )
))
(declare-fun lt!2124365 () Unit!151422)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!36 ((InoxSet Context!7910) List!60097) Unit!151422)

(assert (=> b!5165332 (= lt!2124365 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!36 baseZ!62 testedP!294))))

(declare-fun b!5165333 () Bool)

(declare-fun e!3218478 () Bool)

(declare-fun e!3218477 () Bool)

(assert (=> b!5165333 (= e!3218478 e!3218477)))

(declare-fun res!2195812 () Bool)

(assert (=> b!5165333 (=> (not res!2195812) (not e!3218477))))

(declare-fun z!4581 () (InoxSet Context!7910))

(assert (=> b!5165333 (= res!2195812 (= lt!2124364 z!4581))))

(declare-fun derivationZipper!194 ((InoxSet Context!7910) List!60097) (InoxSet Context!7910))

(assert (=> b!5165333 (= lt!2124364 (derivationZipper!194 baseZ!62 testedP!294))))

(declare-fun b!5165334 () Bool)

(declare-fun e!3218472 () Bool)

(declare-fun tp!1448990 () Bool)

(assert (=> b!5165334 (= e!3218472 tp!1448990)))

(declare-fun b!5165335 () Bool)

(declare-fun res!2195810 () Bool)

(assert (=> b!5165335 (=> (not res!2195810) (not e!3218476))))

(declare-fun nullableZipper!1127 ((InoxSet Context!7910)) Bool)

(assert (=> b!5165335 (= res!2195810 (nullableZipper!1127 z!4581))))

(declare-fun setIsEmpty!31632 () Bool)

(declare-fun setRes!31632 () Bool)

(assert (=> setIsEmpty!31632 setRes!31632))

(declare-fun setElem!31632 () Context!7910)

(declare-fun setNonEmpty!31632 () Bool)

(declare-fun tp!1448994 () Bool)

(declare-fun inv!79674 (Context!7910) Bool)

(assert (=> setNonEmpty!31632 (= setRes!31632 (and tp!1448994 (inv!79674 setElem!31632) e!3218472))))

(declare-fun setRest!31631 () (InoxSet Context!7910))

(assert (=> setNonEmpty!31632 (= z!4581 ((_ map or) (store ((as const (Array Context!7910 Bool)) false) setElem!31632 true) setRest!31631))))

(declare-fun b!5165336 () Bool)

(declare-fun e!3218473 () Bool)

(declare-fun tp!1448992 () Bool)

(assert (=> b!5165336 (= e!3218473 (and tp_is_empty!38395 tp!1448992))))

(declare-fun b!5165337 () Bool)

(assert (=> b!5165337 (= e!3218477 e!3218476)))

(declare-fun res!2195808 () Bool)

(assert (=> b!5165337 (=> (not res!2195808) (not e!3218476))))

(declare-fun lt!2124363 () Int)

(declare-fun isEmpty!32109 (List!60097) Bool)

(declare-datatypes ((tuple2!63696 0))(
  ( (tuple2!63697 (_1!35151 List!60097) (_2!35151 List!60097)) )
))
(declare-fun findLongestMatchInnerZipper!229 ((InoxSet Context!7910) List!60097 Int List!60097 List!60097 Int) tuple2!63696)

(declare-fun size!39607 (List!60097) Int)

(assert (=> b!5165337 (= res!2195808 (not (isEmpty!32109 (_1!35151 (findLongestMatchInnerZipper!229 z!4581 testedP!294 lt!2124363 lt!2124362 input!5817 (size!39607 input!5817))))))))

(declare-fun getSuffix!3354 (List!60097 List!60097) List!60097)

(assert (=> b!5165337 (= lt!2124362 (getSuffix!3354 input!5817 testedP!294))))

(assert (=> b!5165337 (= lt!2124363 (size!39607 testedP!294))))

(declare-fun setElem!31631 () Context!7910)

(declare-fun setNonEmpty!31631 () Bool)

(declare-fun tp!1448991 () Bool)

(assert (=> setNonEmpty!31631 (= setRes!31631 (and tp!1448991 (inv!79674 setElem!31631) e!3218475))))

(declare-fun setRest!31632 () (InoxSet Context!7910))

(assert (=> setNonEmpty!31631 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7910 Bool)) false) setElem!31631 true) setRest!31632))))

(declare-fun res!2195809 () Bool)

(assert (=> start!546480 (=> (not res!2195809) (not e!3218478))))

(declare-fun isPrefix!5704 (List!60097 List!60097) Bool)

(assert (=> start!546480 (= res!2195809 (isPrefix!5704 testedP!294 input!5817))))

(assert (=> start!546480 e!3218478))

(assert (=> start!546480 e!3218474))

(assert (=> start!546480 e!3218473))

(declare-fun condSetEmpty!31632 () Bool)

(assert (=> start!546480 (= condSetEmpty!31632 (= z!4581 ((as const (Array Context!7910 Bool)) false)))))

(assert (=> start!546480 setRes!31632))

(declare-fun condSetEmpty!31631 () Bool)

(assert (=> start!546480 (= condSetEmpty!31631 (= baseZ!62 ((as const (Array Context!7910 Bool)) false)))))

(assert (=> start!546480 setRes!31631))

(assert (= (and start!546480 res!2195809) b!5165333))

(assert (= (and b!5165333 res!2195812) b!5165337))

(assert (= (and b!5165337 res!2195808) b!5165329))

(assert (= (and b!5165329 res!2195811) b!5165335))

(assert (= (and b!5165335 res!2195810) b!5165332))

(get-info :version)

(assert (= (and start!546480 ((_ is Cons!59973) testedP!294)) b!5165331))

(assert (= (and start!546480 ((_ is Cons!59973) input!5817)) b!5165336))

(assert (= (and start!546480 condSetEmpty!31632) setIsEmpty!31632))

(assert (= (and start!546480 (not condSetEmpty!31632)) setNonEmpty!31632))

(assert (= setNonEmpty!31632 b!5165334))

(assert (= (and start!546480 condSetEmpty!31631) setIsEmpty!31631))

(assert (= (and start!546480 (not condSetEmpty!31631)) setNonEmpty!31631))

(assert (= setNonEmpty!31631 b!5165330))

(declare-fun m!6215836 () Bool)

(assert (=> start!546480 m!6215836))

(declare-fun m!6215838 () Bool)

(assert (=> b!5165332 m!6215838))

(declare-fun m!6215840 () Bool)

(assert (=> b!5165332 m!6215840))

(declare-fun m!6215842 () Bool)

(assert (=> b!5165332 m!6215842))

(declare-fun m!6215844 () Bool)

(assert (=> b!5165332 m!6215844))

(declare-fun m!6215846 () Bool)

(assert (=> b!5165337 m!6215846))

(declare-fun m!6215848 () Bool)

(assert (=> b!5165337 m!6215848))

(declare-fun m!6215850 () Bool)

(assert (=> b!5165337 m!6215850))

(declare-fun m!6215852 () Bool)

(assert (=> b!5165337 m!6215852))

(declare-fun m!6215854 () Bool)

(assert (=> b!5165337 m!6215854))

(assert (=> b!5165337 m!6215846))

(declare-fun m!6215856 () Bool)

(assert (=> b!5165333 m!6215856))

(declare-fun m!6215858 () Bool)

(assert (=> b!5165335 m!6215858))

(declare-fun m!6215860 () Bool)

(assert (=> setNonEmpty!31632 m!6215860))

(declare-fun m!6215862 () Bool)

(assert (=> setNonEmpty!31631 m!6215862))

(check-sat (not b!5165334) (not b!5165332) (not b!5165333) (not b!5165331) tp_is_empty!38395 (not start!546480) (not setNonEmpty!31631) (not b!5165337) (not b!5165336) (not setNonEmpty!31632) (not b!5165330) (not b!5165335))
(check-sat)
