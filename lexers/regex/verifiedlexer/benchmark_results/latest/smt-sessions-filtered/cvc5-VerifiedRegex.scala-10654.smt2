; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546342 () Bool)

(assert start!546342)

(declare-datatypes ((C!29378 0))(
  ( (C!29379 (val!24391 Int)) )
))
(declare-datatypes ((Regex!14554 0))(
  ( (ElementMatch!14554 (c!888507 C!29378)) (Concat!23399 (regOne!29620 Regex!14554) (regTwo!29620 Regex!14554)) (EmptyExpr!14554) (Star!14554 (reg!14883 Regex!14554)) (EmptyLang!14554) (Union!14554 (regOne!29621 Regex!14554) (regTwo!29621 Regex!14554)) )
))
(declare-datatypes ((List!60063 0))(
  ( (Nil!59939) (Cons!59939 (h!66387 Regex!14554) (t!373216 List!60063)) )
))
(declare-datatypes ((Context!7876 0))(
  ( (Context!7877 (exprs!4438 List!60063)) )
))
(declare-fun setElem!31506 () Context!7876)

(declare-fun setRes!31505 () Bool)

(declare-fun tp!1448564 () Bool)

(declare-fun e!3217800 () Bool)

(declare-fun setNonEmpty!31505 () Bool)

(declare-fun inv!79633 (Context!7876) Bool)

(assert (=> setNonEmpty!31505 (= setRes!31505 (and tp!1448564 (inv!79633 setElem!31506) e!3217800))))

(declare-fun baseZ!62 () (Set Context!7876))

(declare-fun setRest!31505 () (Set Context!7876))

(assert (=> setNonEmpty!31505 (= baseZ!62 (set.union (set.insert setElem!31506 (as set.empty (Set Context!7876))) setRest!31505))))

(declare-fun b!5164320 () Bool)

(declare-fun res!2195488 () Bool)

(declare-fun e!3217799 () Bool)

(assert (=> b!5164320 (=> (not res!2195488) (not e!3217799))))

(declare-datatypes ((List!60064 0))(
  ( (Nil!59940) (Cons!59940 (h!66388 C!29378) (t!373217 List!60064)) )
))
(declare-fun testedP!294 () List!60064)

(declare-fun z!4581 () (Set Context!7876))

(declare-fun derivationZipper!177 ((Set Context!7876) List!60064) (Set Context!7876))

(assert (=> b!5164320 (= res!2195488 (= (derivationZipper!177 baseZ!62 testedP!294) z!4581))))

(declare-fun tp!1448569 () Bool)

(declare-fun setRes!31506 () Bool)

(declare-fun e!3217798 () Bool)

(declare-fun setElem!31505 () Context!7876)

(declare-fun setNonEmpty!31506 () Bool)

(assert (=> setNonEmpty!31506 (= setRes!31506 (and tp!1448569 (inv!79633 setElem!31505) e!3217798))))

(declare-fun setRest!31506 () (Set Context!7876))

(assert (=> setNonEmpty!31506 (= z!4581 (set.union (set.insert setElem!31505 (as set.empty (Set Context!7876))) setRest!31506))))

(declare-fun b!5164321 () Bool)

(declare-fun tp!1448566 () Bool)

(assert (=> b!5164321 (= e!3217798 tp!1448566)))

(declare-fun b!5164323 () Bool)

(declare-fun tp!1448568 () Bool)

(assert (=> b!5164323 (= e!3217800 tp!1448568)))

(declare-fun b!5164324 () Bool)

(assert (=> b!5164324 (= e!3217799 false)))

(declare-fun lt!2123657 () List!60064)

(declare-fun lt!2123658 () List!60064)

(declare-fun ++!13097 (List!60064 List!60064) List!60064)

(assert (=> b!5164324 (= lt!2123657 (++!13097 testedP!294 lt!2123658))))

(declare-fun lt!2123655 () Int)

(declare-fun input!5817 () List!60064)

(declare-fun size!39590 (List!60064) Int)

(assert (=> b!5164324 (= lt!2123655 (size!39590 input!5817))))

(declare-fun getSuffix!3337 (List!60064 List!60064) List!60064)

(assert (=> b!5164324 (= lt!2123658 (getSuffix!3337 input!5817 testedP!294))))

(declare-fun lt!2123656 () Int)

(assert (=> b!5164324 (= lt!2123656 (size!39590 testedP!294))))

(declare-fun setIsEmpty!31505 () Bool)

(assert (=> setIsEmpty!31505 setRes!31506))

(declare-fun b!5164325 () Bool)

(declare-fun e!3217801 () Bool)

(declare-fun tp_is_empty!38361 () Bool)

(declare-fun tp!1448565 () Bool)

(assert (=> b!5164325 (= e!3217801 (and tp_is_empty!38361 tp!1448565))))

(declare-fun setIsEmpty!31506 () Bool)

(assert (=> setIsEmpty!31506 setRes!31505))

(declare-fun b!5164322 () Bool)

(declare-fun e!3217797 () Bool)

(declare-fun tp!1448567 () Bool)

(assert (=> b!5164322 (= e!3217797 (and tp_is_empty!38361 tp!1448567))))

(declare-fun res!2195487 () Bool)

(assert (=> start!546342 (=> (not res!2195487) (not e!3217799))))

(declare-fun isPrefix!5687 (List!60064 List!60064) Bool)

(assert (=> start!546342 (= res!2195487 (isPrefix!5687 testedP!294 input!5817))))

(assert (=> start!546342 e!3217799))

(assert (=> start!546342 e!3217797))

(assert (=> start!546342 e!3217801))

(declare-fun condSetEmpty!31505 () Bool)

(assert (=> start!546342 (= condSetEmpty!31505 (= baseZ!62 (as set.empty (Set Context!7876))))))

(assert (=> start!546342 setRes!31505))

(declare-fun condSetEmpty!31506 () Bool)

(assert (=> start!546342 (= condSetEmpty!31506 (= z!4581 (as set.empty (Set Context!7876))))))

(assert (=> start!546342 setRes!31506))

(assert (= (and start!546342 res!2195487) b!5164320))

(assert (= (and b!5164320 res!2195488) b!5164324))

(assert (= (and start!546342 (is-Cons!59940 testedP!294)) b!5164322))

(assert (= (and start!546342 (is-Cons!59940 input!5817)) b!5164325))

(assert (= (and start!546342 condSetEmpty!31505) setIsEmpty!31506))

(assert (= (and start!546342 (not condSetEmpty!31505)) setNonEmpty!31505))

(assert (= setNonEmpty!31505 b!5164323))

(assert (= (and start!546342 condSetEmpty!31506) setIsEmpty!31505))

(assert (= (and start!546342 (not condSetEmpty!31506)) setNonEmpty!31506))

(assert (= setNonEmpty!31506 b!5164321))

(declare-fun m!6214888 () Bool)

(assert (=> setNonEmpty!31505 m!6214888))

(declare-fun m!6214890 () Bool)

(assert (=> start!546342 m!6214890))

(declare-fun m!6214892 () Bool)

(assert (=> b!5164320 m!6214892))

(declare-fun m!6214894 () Bool)

(assert (=> setNonEmpty!31506 m!6214894))

(declare-fun m!6214896 () Bool)

(assert (=> b!5164324 m!6214896))

(declare-fun m!6214898 () Bool)

(assert (=> b!5164324 m!6214898))

(declare-fun m!6214900 () Bool)

(assert (=> b!5164324 m!6214900))

(declare-fun m!6214902 () Bool)

(assert (=> b!5164324 m!6214902))

(push 1)

(assert tp_is_empty!38361)

(assert (not start!546342))

(assert (not setNonEmpty!31506))

(assert (not b!5164322))

(assert (not setNonEmpty!31505))

(assert (not b!5164321))

(assert (not b!5164324))

(assert (not b!5164323))

(assert (not b!5164320))

(assert (not b!5164325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

