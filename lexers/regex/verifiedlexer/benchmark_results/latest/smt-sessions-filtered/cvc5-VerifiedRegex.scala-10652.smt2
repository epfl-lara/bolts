; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546318 () Bool)

(assert start!546318)

(declare-fun b!5164162 () Bool)

(declare-fun e!3217686 () Bool)

(declare-fun tp!1448453 () Bool)

(assert (=> b!5164162 (= e!3217686 tp!1448453)))

(declare-fun b!5164163 () Bool)

(declare-fun e!3217688 () Bool)

(declare-fun tp!1448452 () Bool)

(assert (=> b!5164163 (= e!3217688 tp!1448452)))

(declare-fun res!2195446 () Bool)

(declare-fun e!3217685 () Bool)

(assert (=> start!546318 (=> (not res!2195446) (not e!3217685))))

(declare-datatypes ((C!29370 0))(
  ( (C!29371 (val!24387 Int)) )
))
(declare-datatypes ((List!60055 0))(
  ( (Nil!59931) (Cons!59931 (h!66379 C!29370) (t!373208 List!60055)) )
))
(declare-fun testedP!294 () List!60055)

(declare-fun input!5817 () List!60055)

(declare-fun isPrefix!5683 (List!60055 List!60055) Bool)

(assert (=> start!546318 (= res!2195446 (isPrefix!5683 testedP!294 input!5817))))

(assert (=> start!546318 e!3217685))

(declare-fun e!3217689 () Bool)

(assert (=> start!546318 e!3217689))

(declare-fun e!3217687 () Bool)

(assert (=> start!546318 e!3217687))

(declare-fun condSetEmpty!31473 () Bool)

(declare-datatypes ((Regex!14550 0))(
  ( (ElementMatch!14550 (c!888487 C!29370)) (Concat!23395 (regOne!29612 Regex!14550) (regTwo!29612 Regex!14550)) (EmptyExpr!14550) (Star!14550 (reg!14879 Regex!14550)) (EmptyLang!14550) (Union!14550 (regOne!29613 Regex!14550) (regTwo!29613 Regex!14550)) )
))
(declare-datatypes ((List!60056 0))(
  ( (Nil!59932) (Cons!59932 (h!66380 Regex!14550) (t!373209 List!60056)) )
))
(declare-datatypes ((Context!7868 0))(
  ( (Context!7869 (exprs!4434 List!60056)) )
))
(declare-fun baseZ!62 () (Set Context!7868))

(assert (=> start!546318 (= condSetEmpty!31473 (= baseZ!62 (as set.empty (Set Context!7868))))))

(declare-fun setRes!31473 () Bool)

(assert (=> start!546318 setRes!31473))

(declare-fun condSetEmpty!31474 () Bool)

(declare-fun z!4581 () (Set Context!7868))

(assert (=> start!546318 (= condSetEmpty!31474 (= z!4581 (as set.empty (Set Context!7868))))))

(declare-fun setRes!31474 () Bool)

(assert (=> start!546318 setRes!31474))

(declare-fun setElem!31474 () Context!7868)

(declare-fun tp!1448454 () Bool)

(declare-fun setNonEmpty!31473 () Bool)

(declare-fun inv!79623 (Context!7868) Bool)

(assert (=> setNonEmpty!31473 (= setRes!31474 (and tp!1448454 (inv!79623 setElem!31474) e!3217686))))

(declare-fun setRest!31473 () (Set Context!7868))

(assert (=> setNonEmpty!31473 (= z!4581 (set.union (set.insert setElem!31474 (as set.empty (Set Context!7868))) setRest!31473))))

(declare-fun setIsEmpty!31473 () Bool)

(assert (=> setIsEmpty!31473 setRes!31473))

(declare-fun b!5164164 () Bool)

(declare-fun tp_is_empty!38353 () Bool)

(declare-fun tp!1448456 () Bool)

(assert (=> b!5164164 (= e!3217687 (and tp_is_empty!38353 tp!1448456))))

(declare-fun setElem!31473 () Context!7868)

(declare-fun tp!1448455 () Bool)

(declare-fun setNonEmpty!31474 () Bool)

(assert (=> setNonEmpty!31474 (= setRes!31473 (and tp!1448455 (inv!79623 setElem!31473) e!3217688))))

(declare-fun setRest!31474 () (Set Context!7868))

(assert (=> setNonEmpty!31474 (= baseZ!62 (set.union (set.insert setElem!31473 (as set.empty (Set Context!7868))) setRest!31474))))

(declare-fun setIsEmpty!31474 () Bool)

(assert (=> setIsEmpty!31474 setRes!31474))

(declare-fun b!5164165 () Bool)

(declare-fun res!2195445 () Bool)

(assert (=> b!5164165 (=> (not res!2195445) (not e!3217685))))

(declare-fun derivationZipper!173 ((Set Context!7868) List!60055) (Set Context!7868))

(assert (=> b!5164165 (= res!2195445 (= (derivationZipper!173 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5164166 () Bool)

(declare-fun tp!1448457 () Bool)

(assert (=> b!5164166 (= e!3217689 (and tp_is_empty!38353 tp!1448457))))

(declare-fun b!5164167 () Bool)

(assert (=> b!5164167 (= e!3217685 false)))

(declare-fun lt!2123609 () Int)

(declare-fun size!39586 (List!60055) Int)

(assert (=> b!5164167 (= lt!2123609 (size!39586 input!5817))))

(declare-fun lt!2123608 () Int)

(assert (=> b!5164167 (= lt!2123608 (size!39586 testedP!294))))

(assert (= (and start!546318 res!2195446) b!5164165))

(assert (= (and b!5164165 res!2195445) b!5164167))

(assert (= (and start!546318 (is-Cons!59931 testedP!294)) b!5164166))

(assert (= (and start!546318 (is-Cons!59931 input!5817)) b!5164164))

(assert (= (and start!546318 condSetEmpty!31473) setIsEmpty!31473))

(assert (= (and start!546318 (not condSetEmpty!31473)) setNonEmpty!31474))

(assert (= setNonEmpty!31474 b!5164163))

(assert (= (and start!546318 condSetEmpty!31474) setIsEmpty!31474))

(assert (= (and start!546318 (not condSetEmpty!31474)) setNonEmpty!31473))

(assert (= setNonEmpty!31473 b!5164162))

(declare-fun m!6214786 () Bool)

(assert (=> start!546318 m!6214786))

(declare-fun m!6214788 () Bool)

(assert (=> b!5164167 m!6214788))

(declare-fun m!6214790 () Bool)

(assert (=> b!5164167 m!6214790))

(declare-fun m!6214792 () Bool)

(assert (=> setNonEmpty!31474 m!6214792))

(declare-fun m!6214794 () Bool)

(assert (=> b!5164165 m!6214794))

(declare-fun m!6214796 () Bool)

(assert (=> setNonEmpty!31473 m!6214796))

(push 1)

(assert (not b!5164162))

(assert (not b!5164167))

(assert (not setNonEmpty!31474))

(assert (not b!5164163))

(assert (not b!5164164))

(assert (not b!5164165))

(assert (not b!5164166))

(assert (not setNonEmpty!31473))

(assert (not start!546318))

(assert tp_is_empty!38353)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

