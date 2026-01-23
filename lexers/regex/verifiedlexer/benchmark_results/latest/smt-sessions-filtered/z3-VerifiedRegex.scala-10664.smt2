; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546488 () Bool)

(assert start!546488)

(declare-fun setIsEmpty!31655 () Bool)

(declare-fun setRes!31655 () Bool)

(assert (=> setIsEmpty!31655 setRes!31655))

(declare-fun b!5165432 () Bool)

(declare-fun e!3218544 () Bool)

(assert (=> b!5165432 (= e!3218544 false)))

(declare-fun lt!2124390 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29420 0))(
  ( (C!29421 (val!24412 Int)) )
))
(declare-datatypes ((Regex!14575 0))(
  ( (ElementMatch!14575 (c!888720 C!29420)) (Concat!23420 (regOne!29662 Regex!14575) (regTwo!29662 Regex!14575)) (EmptyExpr!14575) (Star!14575 (reg!14904 Regex!14575)) (EmptyLang!14575) (Union!14575 (regOne!29663 Regex!14575) (regTwo!29663 Regex!14575)) )
))
(declare-datatypes ((List!60105 0))(
  ( (Nil!59981) (Cons!59981 (h!66429 Regex!14575) (t!373258 List!60105)) )
))
(declare-datatypes ((Context!7918 0))(
  ( (Context!7919 (exprs!4459 List!60105)) )
))
(declare-fun z!4581 () (InoxSet Context!7918))

(declare-fun nullableZipper!1131 ((InoxSet Context!7918)) Bool)

(assert (=> b!5165432 (= lt!2124390 (nullableZipper!1131 z!4581))))

(declare-fun b!5165433 () Bool)

(declare-fun e!3218543 () Bool)

(declare-fun tp!1449066 () Bool)

(assert (=> b!5165433 (= e!3218543 tp!1449066)))

(declare-fun b!5165434 () Bool)

(declare-fun e!3218540 () Bool)

(declare-fun tp_is_empty!38403 () Bool)

(declare-fun tp!1449067 () Bool)

(assert (=> b!5165434 (= e!3218540 (and tp_is_empty!38403 tp!1449067))))

(declare-fun b!5165435 () Bool)

(declare-fun res!2195866 () Bool)

(assert (=> b!5165435 (=> (not res!2195866) (not e!3218544))))

(declare-datatypes ((List!60106 0))(
  ( (Nil!59982) (Cons!59982 (h!66430 C!29420) (t!373259 List!60106)) )
))
(declare-fun testedP!294 () List!60106)

(declare-fun baseZ!62 () (InoxSet Context!7918))

(declare-fun derivationZipper!198 ((InoxSet Context!7918) List!60106) (InoxSet Context!7918))

(assert (=> b!5165435 (= res!2195866 (= (derivationZipper!198 baseZ!62 testedP!294) z!4581))))

(declare-fun res!2195865 () Bool)

(assert (=> start!546488 (=> (not res!2195865) (not e!3218544))))

(declare-fun input!5817 () List!60106)

(declare-fun isPrefix!5708 (List!60106 List!60106) Bool)

(assert (=> start!546488 (= res!2195865 (isPrefix!5708 testedP!294 input!5817))))

(assert (=> start!546488 e!3218544))

(assert (=> start!546488 e!3218540))

(declare-fun e!3218542 () Bool)

(assert (=> start!546488 e!3218542))

(declare-fun condSetEmpty!31655 () Bool)

(assert (=> start!546488 (= condSetEmpty!31655 (= baseZ!62 ((as const (Array Context!7918 Bool)) false)))))

(assert (=> start!546488 setRes!31655))

(declare-fun condSetEmpty!31656 () Bool)

(assert (=> start!546488 (= condSetEmpty!31656 (= z!4581 ((as const (Array Context!7918 Bool)) false)))))

(declare-fun setRes!31656 () Bool)

(assert (=> start!546488 setRes!31656))

(declare-fun setElem!31655 () Context!7918)

(declare-fun setNonEmpty!31655 () Bool)

(declare-fun e!3218541 () Bool)

(declare-fun tp!1449062 () Bool)

(declare-fun inv!79684 (Context!7918) Bool)

(assert (=> setNonEmpty!31655 (= setRes!31655 (and tp!1449062 (inv!79684 setElem!31655) e!3218541))))

(declare-fun setRest!31655 () (InoxSet Context!7918))

(assert (=> setNonEmpty!31655 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7918 Bool)) false) setElem!31655 true) setRest!31655))))

(declare-fun setNonEmpty!31656 () Bool)

(declare-fun setElem!31656 () Context!7918)

(declare-fun tp!1449065 () Bool)

(assert (=> setNonEmpty!31656 (= setRes!31656 (and tp!1449065 (inv!79684 setElem!31656) e!3218543))))

(declare-fun setRest!31656 () (InoxSet Context!7918))

(assert (=> setNonEmpty!31656 (= z!4581 ((_ map or) (store ((as const (Array Context!7918 Bool)) false) setElem!31656 true) setRest!31656))))

(declare-fun setIsEmpty!31656 () Bool)

(assert (=> setIsEmpty!31656 setRes!31656))

(declare-fun b!5165436 () Bool)

(declare-fun tp!1449064 () Bool)

(assert (=> b!5165436 (= e!3218541 tp!1449064)))

(declare-fun b!5165437 () Bool)

(declare-fun res!2195864 () Bool)

(assert (=> b!5165437 (=> (not res!2195864) (not e!3218544))))

(declare-fun isEmpty!32113 (List!60106) Bool)

(declare-datatypes ((tuple2!63704 0))(
  ( (tuple2!63705 (_1!35155 List!60106) (_2!35155 List!60106)) )
))
(declare-fun findLongestMatchInnerZipper!233 ((InoxSet Context!7918) List!60106 Int List!60106 List!60106 Int) tuple2!63704)

(declare-fun size!39611 (List!60106) Int)

(declare-fun getSuffix!3358 (List!60106 List!60106) List!60106)

(assert (=> b!5165437 (= res!2195864 (not (isEmpty!32113 (_1!35155 (findLongestMatchInnerZipper!233 z!4581 testedP!294 (size!39611 testedP!294) (getSuffix!3358 input!5817 testedP!294) input!5817 (size!39611 input!5817))))))))

(declare-fun b!5165438 () Bool)

(declare-fun res!2195863 () Bool)

(assert (=> b!5165438 (=> (not res!2195863) (not e!3218544))))

(assert (=> b!5165438 (= res!2195863 (= testedP!294 input!5817))))

(declare-fun b!5165439 () Bool)

(declare-fun tp!1449063 () Bool)

(assert (=> b!5165439 (= e!3218542 (and tp_is_empty!38403 tp!1449063))))

(assert (= (and start!546488 res!2195865) b!5165435))

(assert (= (and b!5165435 res!2195866) b!5165437))

(assert (= (and b!5165437 res!2195864) b!5165438))

(assert (= (and b!5165438 res!2195863) b!5165432))

(get-info :version)

(assert (= (and start!546488 ((_ is Cons!59982) testedP!294)) b!5165434))

(assert (= (and start!546488 ((_ is Cons!59982) input!5817)) b!5165439))

(assert (= (and start!546488 condSetEmpty!31655) setIsEmpty!31655))

(assert (= (and start!546488 (not condSetEmpty!31655)) setNonEmpty!31655))

(assert (= setNonEmpty!31655 b!5165436))

(assert (= (and start!546488 condSetEmpty!31656) setIsEmpty!31656))

(assert (= (and start!546488 (not condSetEmpty!31656)) setNonEmpty!31656))

(assert (= setNonEmpty!31656 b!5165433))

(declare-fun m!6215924 () Bool)

(assert (=> start!546488 m!6215924))

(declare-fun m!6215926 () Bool)

(assert (=> b!5165435 m!6215926))

(declare-fun m!6215928 () Bool)

(assert (=> setNonEmpty!31656 m!6215928))

(declare-fun m!6215930 () Bool)

(assert (=> b!5165437 m!6215930))

(declare-fun m!6215932 () Bool)

(assert (=> b!5165437 m!6215932))

(declare-fun m!6215934 () Bool)

(assert (=> b!5165437 m!6215934))

(declare-fun m!6215936 () Bool)

(assert (=> b!5165437 m!6215936))

(assert (=> b!5165437 m!6215930))

(assert (=> b!5165437 m!6215934))

(assert (=> b!5165437 m!6215936))

(declare-fun m!6215938 () Bool)

(assert (=> b!5165437 m!6215938))

(declare-fun m!6215940 () Bool)

(assert (=> b!5165432 m!6215940))

(declare-fun m!6215942 () Bool)

(assert (=> setNonEmpty!31655 m!6215942))

(check-sat (not setNonEmpty!31655) tp_is_empty!38403 (not start!546488) (not b!5165434) (not b!5165432) (not b!5165439) (not b!5165435) (not setNonEmpty!31656) (not b!5165437) (not b!5165433) (not b!5165436))
(check-sat)
