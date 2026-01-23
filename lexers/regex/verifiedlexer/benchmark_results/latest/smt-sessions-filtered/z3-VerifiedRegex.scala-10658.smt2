; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546420 () Bool)

(assert start!546420)

(declare-fun b!5164891 () Bool)

(declare-fun e!3218186 () Bool)

(declare-fun tp!1448810 () Bool)

(assert (=> b!5164891 (= e!3218186 tp!1448810)))

(declare-fun setIsEmpty!31575 () Bool)

(declare-fun setRes!31576 () Bool)

(assert (=> setIsEmpty!31575 setRes!31576))

(declare-fun b!5164892 () Bool)

(declare-fun e!3218183 () Bool)

(declare-fun tp_is_empty!38379 () Bool)

(declare-fun tp!1448811 () Bool)

(assert (=> b!5164892 (= e!3218183 (and tp_is_empty!38379 tp!1448811))))

(declare-fun b!5164893 () Bool)

(declare-fun e!3218182 () Bool)

(declare-fun tp!1448807 () Bool)

(assert (=> b!5164893 (= e!3218182 (and tp_is_empty!38379 tp!1448807))))

(declare-fun b!5164894 () Bool)

(declare-fun e!3218184 () Bool)

(declare-fun e!3218185 () Bool)

(assert (=> b!5164894 (= e!3218184 e!3218185)))

(declare-fun res!2195642 () Bool)

(assert (=> b!5164894 (=> (not res!2195642) (not e!3218185))))

(declare-datatypes ((C!29396 0))(
  ( (C!29397 (val!24400 Int)) )
))
(declare-datatypes ((List!60081 0))(
  ( (Nil!59957) (Cons!59957 (h!66405 C!29396) (t!373234 List!60081)) )
))
(declare-fun input!5817 () List!60081)

(declare-fun lt!2124080 () List!60081)

(declare-fun lt!2124082 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14563 0))(
  ( (ElementMatch!14563 (c!888634 C!29396)) (Concat!23408 (regOne!29638 Regex!14563) (regTwo!29638 Regex!14563)) (EmptyExpr!14563) (Star!14563 (reg!14892 Regex!14563)) (EmptyLang!14563) (Union!14563 (regOne!29639 Regex!14563) (regTwo!29639 Regex!14563)) )
))
(declare-datatypes ((List!60082 0))(
  ( (Nil!59958) (Cons!59958 (h!66406 Regex!14563) (t!373235 List!60082)) )
))
(declare-datatypes ((Context!7894 0))(
  ( (Context!7895 (exprs!4447 List!60082)) )
))
(declare-fun z!4581 () (InoxSet Context!7894))

(declare-fun testedP!294 () List!60081)

(declare-fun isEmpty!32101 (List!60081) Bool)

(declare-datatypes ((tuple2!63680 0))(
  ( (tuple2!63681 (_1!35143 List!60081) (_2!35143 List!60081)) )
))
(declare-fun findLongestMatchInnerZipper!221 ((InoxSet Context!7894) List!60081 Int List!60081 List!60081 Int) tuple2!63680)

(declare-fun size!39599 (List!60081) Int)

(assert (=> b!5164894 (= res!2195642 (isEmpty!32101 (_1!35143 (findLongestMatchInnerZipper!221 z!4581 testedP!294 lt!2124082 lt!2124080 input!5817 (size!39599 input!5817)))))))

(declare-fun getSuffix!3346 (List!60081 List!60081) List!60081)

(assert (=> b!5164894 (= lt!2124080 (getSuffix!3346 input!5817 testedP!294))))

(assert (=> b!5164894 (= lt!2124082 (size!39599 testedP!294))))

(declare-fun b!5164895 () Bool)

(assert (=> b!5164895 (= e!3218185 false)))

(declare-fun lt!2124081 () List!60081)

(declare-fun ++!13103 (List!60081 List!60081) List!60081)

(assert (=> b!5164895 (= lt!2124081 (++!13103 testedP!294 lt!2124080))))

(declare-fun tp!1448809 () Bool)

(declare-fun setElem!31576 () Context!7894)

(declare-fun e!3218181 () Bool)

(declare-fun setNonEmpty!31575 () Bool)

(declare-fun inv!79654 (Context!7894) Bool)

(assert (=> setNonEmpty!31575 (= setRes!31576 (and tp!1448809 (inv!79654 setElem!31576) e!3218181))))

(declare-fun baseZ!62 () (InoxSet Context!7894))

(declare-fun setRest!31575 () (InoxSet Context!7894))

(assert (=> setNonEmpty!31575 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7894 Bool)) false) setElem!31576 true) setRest!31575))))

(declare-fun b!5164896 () Bool)

(declare-fun tp!1448808 () Bool)

(assert (=> b!5164896 (= e!3218181 tp!1448808)))

(declare-fun res!2195644 () Bool)

(assert (=> start!546420 (=> (not res!2195644) (not e!3218184))))

(declare-fun isPrefix!5696 (List!60081 List!60081) Bool)

(assert (=> start!546420 (= res!2195644 (isPrefix!5696 testedP!294 input!5817))))

(assert (=> start!546420 e!3218184))

(assert (=> start!546420 e!3218182))

(assert (=> start!546420 e!3218183))

(declare-fun condSetEmpty!31575 () Bool)

(assert (=> start!546420 (= condSetEmpty!31575 (= baseZ!62 ((as const (Array Context!7894 Bool)) false)))))

(assert (=> start!546420 setRes!31576))

(declare-fun condSetEmpty!31576 () Bool)

(assert (=> start!546420 (= condSetEmpty!31576 (= z!4581 ((as const (Array Context!7894 Bool)) false)))))

(declare-fun setRes!31575 () Bool)

(assert (=> start!546420 setRes!31575))

(declare-fun setElem!31575 () Context!7894)

(declare-fun setNonEmpty!31576 () Bool)

(declare-fun tp!1448806 () Bool)

(assert (=> setNonEmpty!31576 (= setRes!31575 (and tp!1448806 (inv!79654 setElem!31575) e!3218186))))

(declare-fun setRest!31576 () (InoxSet Context!7894))

(assert (=> setNonEmpty!31576 (= z!4581 ((_ map or) (store ((as const (Array Context!7894 Bool)) false) setElem!31575 true) setRest!31576))))

(declare-fun b!5164897 () Bool)

(declare-fun res!2195643 () Bool)

(assert (=> b!5164897 (=> (not res!2195643) (not e!3218184))))

(declare-fun derivationZipper!186 ((InoxSet Context!7894) List!60081) (InoxSet Context!7894))

(assert (=> b!5164897 (= res!2195643 (= (derivationZipper!186 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31576 () Bool)

(assert (=> setIsEmpty!31576 setRes!31575))

(assert (= (and start!546420 res!2195644) b!5164897))

(assert (= (and b!5164897 res!2195643) b!5164894))

(assert (= (and b!5164894 res!2195642) b!5164895))

(get-info :version)

(assert (= (and start!546420 ((_ is Cons!59957) testedP!294)) b!5164893))

(assert (= (and start!546420 ((_ is Cons!59957) input!5817)) b!5164892))

(assert (= (and start!546420 condSetEmpty!31575) setIsEmpty!31575))

(assert (= (and start!546420 (not condSetEmpty!31575)) setNonEmpty!31575))

(assert (= setNonEmpty!31575 b!5164896))

(assert (= (and start!546420 condSetEmpty!31576) setIsEmpty!31576))

(assert (= (and start!546420 (not condSetEmpty!31576)) setNonEmpty!31576))

(assert (= setNonEmpty!31576 b!5164891))

(declare-fun m!6215396 () Bool)

(assert (=> b!5164895 m!6215396))

(declare-fun m!6215398 () Bool)

(assert (=> setNonEmpty!31575 m!6215398))

(declare-fun m!6215400 () Bool)

(assert (=> start!546420 m!6215400))

(declare-fun m!6215402 () Bool)

(assert (=> b!5164894 m!6215402))

(declare-fun m!6215404 () Bool)

(assert (=> b!5164894 m!6215404))

(declare-fun m!6215406 () Bool)

(assert (=> b!5164894 m!6215406))

(declare-fun m!6215408 () Bool)

(assert (=> b!5164894 m!6215408))

(assert (=> b!5164894 m!6215402))

(declare-fun m!6215410 () Bool)

(assert (=> b!5164894 m!6215410))

(declare-fun m!6215412 () Bool)

(assert (=> b!5164897 m!6215412))

(declare-fun m!6215414 () Bool)

(assert (=> setNonEmpty!31576 m!6215414))

(check-sat (not b!5164892) (not b!5164894) (not b!5164891) (not setNonEmpty!31576) (not setNonEmpty!31575) (not start!546420) (not b!5164895) (not b!5164897) (not b!5164896) (not b!5164893) tp_is_empty!38379)
(check-sat)
