; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546532 () Bool)

(assert start!546532)

(declare-fun b!5165747 () Bool)

(declare-fun e!3218734 () Bool)

(declare-fun e!3218738 () Bool)

(assert (=> b!5165747 (= e!3218734 e!3218738)))

(declare-fun res!2195974 () Bool)

(assert (=> b!5165747 (=> (not res!2195974) (not e!3218738))))

(declare-datatypes ((C!29428 0))(
  ( (C!29429 (val!24416 Int)) )
))
(declare-datatypes ((List!60113 0))(
  ( (Nil!59989) (Cons!59989 (h!66437 C!29428) (t!373266 List!60113)) )
))
(declare-fun input!5817 () List!60113)

(declare-fun testedP!294 () List!60113)

(declare-fun lt!2124602 () Int)

(declare-fun lt!2124601 () List!60113)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14579 0))(
  ( (ElementMatch!14579 (c!888790 C!29428)) (Concat!23424 (regOne!29670 Regex!14579) (regTwo!29670 Regex!14579)) (EmptyExpr!14579) (Star!14579 (reg!14908 Regex!14579)) (EmptyLang!14579) (Union!14579 (regOne!29671 Regex!14579) (regTwo!29671 Regex!14579)) )
))
(declare-datatypes ((List!60114 0))(
  ( (Nil!59990) (Cons!59990 (h!66438 Regex!14579) (t!373267 List!60114)) )
))
(declare-datatypes ((Context!7926 0))(
  ( (Context!7927 (exprs!4463 List!60114)) )
))
(declare-fun z!4581 () (InoxSet Context!7926))

(declare-fun isEmpty!32117 (List!60113) Bool)

(declare-datatypes ((tuple2!63712 0))(
  ( (tuple2!63713 (_1!35159 List!60113) (_2!35159 List!60113)) )
))
(declare-fun findLongestMatchInnerZipper!237 ((InoxSet Context!7926) List!60113 Int List!60113 List!60113 Int) tuple2!63712)

(declare-fun size!39615 (List!60113) Int)

(assert (=> b!5165747 (= res!2195974 (not (isEmpty!32117 (_1!35159 (findLongestMatchInnerZipper!237 z!4581 testedP!294 lt!2124602 lt!2124601 input!5817 (size!39615 input!5817))))))))

(declare-fun getSuffix!3362 (List!60113 List!60113) List!60113)

(assert (=> b!5165747 (= lt!2124601 (getSuffix!3362 input!5817 testedP!294))))

(assert (=> b!5165747 (= lt!2124602 (size!39615 testedP!294))))

(declare-fun b!5165748 () Bool)

(declare-fun e!3218735 () Bool)

(declare-fun tp!1449175 () Bool)

(assert (=> b!5165748 (= e!3218735 tp!1449175)))

(declare-fun tp!1449176 () Bool)

(declare-fun setRes!31687 () Bool)

(declare-fun setElem!31687 () Context!7926)

(declare-fun setNonEmpty!31687 () Bool)

(declare-fun e!3218733 () Bool)

(declare-fun inv!79694 (Context!7926) Bool)

(assert (=> setNonEmpty!31687 (= setRes!31687 (and tp!1449176 (inv!79694 setElem!31687) e!3218733))))

(declare-fun baseZ!62 () (InoxSet Context!7926))

(declare-fun setRest!31687 () (InoxSet Context!7926))

(assert (=> setNonEmpty!31687 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7926 Bool)) false) setElem!31687 true) setRest!31687))))

(declare-fun setIsEmpty!31687 () Bool)

(assert (=> setIsEmpty!31687 setRes!31687))

(declare-fun setIsEmpty!31688 () Bool)

(declare-fun setRes!31688 () Bool)

(assert (=> setIsEmpty!31688 setRes!31688))

(declare-fun res!2195973 () Bool)

(assert (=> start!546532 (=> (not res!2195973) (not e!3218734))))

(declare-fun isPrefix!5712 (List!60113 List!60113) Bool)

(assert (=> start!546532 (= res!2195973 (isPrefix!5712 testedP!294 input!5817))))

(assert (=> start!546532 e!3218734))

(declare-fun e!3218736 () Bool)

(assert (=> start!546532 e!3218736))

(declare-fun e!3218737 () Bool)

(assert (=> start!546532 e!3218737))

(declare-fun condSetEmpty!31688 () Bool)

(assert (=> start!546532 (= condSetEmpty!31688 (= baseZ!62 ((as const (Array Context!7926 Bool)) false)))))

(assert (=> start!546532 setRes!31687))

(declare-fun condSetEmpty!31687 () Bool)

(assert (=> start!546532 (= condSetEmpty!31687 (= z!4581 ((as const (Array Context!7926 Bool)) false)))))

(assert (=> start!546532 setRes!31688))

(declare-fun b!5165749 () Bool)

(declare-fun tp_is_empty!38411 () Bool)

(declare-fun tp!1449178 () Bool)

(assert (=> b!5165749 (= e!3218737 (and tp_is_empty!38411 tp!1449178))))

(declare-fun b!5165750 () Bool)

(declare-fun tp!1449177 () Bool)

(assert (=> b!5165750 (= e!3218733 tp!1449177)))

(declare-fun b!5165751 () Bool)

(declare-fun tp!1449174 () Bool)

(assert (=> b!5165751 (= e!3218736 (and tp_is_empty!38411 tp!1449174))))

(declare-fun b!5165752 () Bool)

(declare-fun res!2195971 () Bool)

(assert (=> b!5165752 (=> (not res!2195971) (not e!3218734))))

(declare-fun derivationZipper!202 ((InoxSet Context!7926) List!60113) (InoxSet Context!7926))

(assert (=> b!5165752 (= res!2195971 (= (derivationZipper!202 baseZ!62 testedP!294) z!4581))))

(declare-fun setNonEmpty!31688 () Bool)

(declare-fun tp!1449179 () Bool)

(declare-fun setElem!31688 () Context!7926)

(assert (=> setNonEmpty!31688 (= setRes!31688 (and tp!1449179 (inv!79694 setElem!31688) e!3218735))))

(declare-fun setRest!31688 () (InoxSet Context!7926))

(assert (=> setNonEmpty!31688 (= z!4581 ((_ map or) (store ((as const (Array Context!7926 Bool)) false) setElem!31688 true) setRest!31688))))

(declare-fun b!5165753 () Bool)

(assert (=> b!5165753 (= e!3218738 false)))

(declare-fun lt!2124600 () List!60113)

(declare-fun ++!13111 (List!60113 List!60113) List!60113)

(assert (=> b!5165753 (= lt!2124600 (++!13111 testedP!294 lt!2124601))))

(declare-fun b!5165754 () Bool)

(declare-fun res!2195970 () Bool)

(assert (=> b!5165754 (=> (not res!2195970) (not e!3218738))))

(declare-fun nullableZipper!1135 ((InoxSet Context!7926)) Bool)

(assert (=> b!5165754 (= res!2195970 (not (nullableZipper!1135 z!4581)))))

(declare-fun b!5165755 () Bool)

(declare-fun res!2195972 () Bool)

(assert (=> b!5165755 (=> (not res!2195972) (not e!3218738))))

(assert (=> b!5165755 (= res!2195972 (= testedP!294 input!5817))))

(assert (= (and start!546532 res!2195973) b!5165752))

(assert (= (and b!5165752 res!2195971) b!5165747))

(assert (= (and b!5165747 res!2195974) b!5165755))

(assert (= (and b!5165755 res!2195972) b!5165754))

(assert (= (and b!5165754 res!2195970) b!5165753))

(get-info :version)

(assert (= (and start!546532 ((_ is Cons!59989) testedP!294)) b!5165751))

(assert (= (and start!546532 ((_ is Cons!59989) input!5817)) b!5165749))

(assert (= (and start!546532 condSetEmpty!31688) setIsEmpty!31687))

(assert (= (and start!546532 (not condSetEmpty!31688)) setNonEmpty!31687))

(assert (= setNonEmpty!31687 b!5165750))

(assert (= (and start!546532 condSetEmpty!31687) setIsEmpty!31688))

(assert (= (and start!546532 (not condSetEmpty!31687)) setNonEmpty!31688))

(assert (= setNonEmpty!31688 b!5165748))

(declare-fun m!6216194 () Bool)

(assert (=> b!5165753 m!6216194))

(declare-fun m!6216196 () Bool)

(assert (=> start!546532 m!6216196))

(declare-fun m!6216198 () Bool)

(assert (=> b!5165752 m!6216198))

(declare-fun m!6216200 () Bool)

(assert (=> setNonEmpty!31687 m!6216200))

(declare-fun m!6216202 () Bool)

(assert (=> b!5165754 m!6216202))

(declare-fun m!6216204 () Bool)

(assert (=> setNonEmpty!31688 m!6216204))

(declare-fun m!6216206 () Bool)

(assert (=> b!5165747 m!6216206))

(declare-fun m!6216208 () Bool)

(assert (=> b!5165747 m!6216208))

(declare-fun m!6216210 () Bool)

(assert (=> b!5165747 m!6216210))

(declare-fun m!6216212 () Bool)

(assert (=> b!5165747 m!6216212))

(assert (=> b!5165747 m!6216212))

(declare-fun m!6216214 () Bool)

(assert (=> b!5165747 m!6216214))

(check-sat (not b!5165747) (not b!5165752) (not b!5165750) (not b!5165753) (not b!5165749) (not b!5165754) (not b!5165748) (not setNonEmpty!31687) (not start!546532) (not setNonEmpty!31688) tp_is_empty!38411 (not b!5165751))
(check-sat)
