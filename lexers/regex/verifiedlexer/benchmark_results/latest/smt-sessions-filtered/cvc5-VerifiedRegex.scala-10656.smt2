; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546378 () Bool)

(assert start!546378)

(declare-fun setIsEmpty!31537 () Bool)

(declare-fun setRes!31537 () Bool)

(assert (=> setIsEmpty!31537 setRes!31537))

(declare-fun b!5164582 () Bool)

(declare-fun e!3217975 () Bool)

(declare-fun tp!1448677 () Bool)

(assert (=> b!5164582 (= e!3217975 tp!1448677)))

(declare-fun setIsEmpty!31538 () Bool)

(declare-fun setRes!31538 () Bool)

(assert (=> setIsEmpty!31538 setRes!31538))

(declare-fun res!2195553 () Bool)

(declare-fun e!3217977 () Bool)

(assert (=> start!546378 (=> (not res!2195553) (not e!3217977))))

(declare-datatypes ((C!29386 0))(
  ( (C!29387 (val!24395 Int)) )
))
(declare-datatypes ((List!60071 0))(
  ( (Nil!59947) (Cons!59947 (h!66395 C!29386) (t!373224 List!60071)) )
))
(declare-fun testedP!294 () List!60071)

(declare-fun input!5817 () List!60071)

(declare-fun isPrefix!5691 (List!60071 List!60071) Bool)

(assert (=> start!546378 (= res!2195553 (isPrefix!5691 testedP!294 input!5817))))

(assert (=> start!546378 e!3217977))

(declare-fun e!3217973 () Bool)

(assert (=> start!546378 e!3217973))

(declare-fun e!3217974 () Bool)

(assert (=> start!546378 e!3217974))

(declare-fun condSetEmpty!31538 () Bool)

(declare-datatypes ((Regex!14558 0))(
  ( (ElementMatch!14558 (c!888567 C!29386)) (Concat!23403 (regOne!29628 Regex!14558) (regTwo!29628 Regex!14558)) (EmptyExpr!14558) (Star!14558 (reg!14887 Regex!14558)) (EmptyLang!14558) (Union!14558 (regOne!29629 Regex!14558) (regTwo!29629 Regex!14558)) )
))
(declare-datatypes ((List!60072 0))(
  ( (Nil!59948) (Cons!59948 (h!66396 Regex!14558) (t!373225 List!60072)) )
))
(declare-datatypes ((Context!7884 0))(
  ( (Context!7885 (exprs!4442 List!60072)) )
))
(declare-fun baseZ!62 () (Set Context!7884))

(assert (=> start!546378 (= condSetEmpty!31538 (= baseZ!62 (as set.empty (Set Context!7884))))))

(assert (=> start!546378 setRes!31538))

(declare-fun condSetEmpty!31537 () Bool)

(declare-fun z!4581 () (Set Context!7884))

(assert (=> start!546378 (= condSetEmpty!31537 (= z!4581 (as set.empty (Set Context!7884))))))

(assert (=> start!546378 setRes!31537))

(declare-fun setElem!31538 () Context!7884)

(declare-fun tp!1448678 () Bool)

(declare-fun e!3217976 () Bool)

(declare-fun setNonEmpty!31537 () Bool)

(declare-fun inv!79643 (Context!7884) Bool)

(assert (=> setNonEmpty!31537 (= setRes!31537 (and tp!1448678 (inv!79643 setElem!31538) e!3217976))))

(declare-fun setRest!31537 () (Set Context!7884))

(assert (=> setNonEmpty!31537 (= z!4581 (set.union (set.insert setElem!31538 (as set.empty (Set Context!7884))) setRest!31537))))

(declare-fun b!5164583 () Bool)

(declare-fun tp_is_empty!38369 () Bool)

(declare-fun tp!1448681 () Bool)

(assert (=> b!5164583 (= e!3217973 (and tp_is_empty!38369 tp!1448681))))

(declare-fun b!5164584 () Bool)

(declare-fun tp!1448679 () Bool)

(assert (=> b!5164584 (= e!3217976 tp!1448679)))

(declare-fun b!5164585 () Bool)

(assert (=> b!5164585 (= e!3217977 false)))

(declare-datatypes ((tuple2!63670 0))(
  ( (tuple2!63671 (_1!35138 List!60071) (_2!35138 List!60071)) )
))
(declare-fun lt!2123867 () tuple2!63670)

(declare-fun findLongestMatchInnerZipper!216 ((Set Context!7884) List!60071 Int List!60071 List!60071 Int) tuple2!63670)

(declare-fun size!39594 (List!60071) Int)

(declare-fun getSuffix!3341 (List!60071 List!60071) List!60071)

(assert (=> b!5164585 (= lt!2123867 (findLongestMatchInnerZipper!216 z!4581 testedP!294 (size!39594 testedP!294) (getSuffix!3341 input!5817 testedP!294) input!5817 (size!39594 input!5817)))))

(declare-fun b!5164586 () Bool)

(declare-fun tp!1448676 () Bool)

(assert (=> b!5164586 (= e!3217974 (and tp_is_empty!38369 tp!1448676))))

(declare-fun setElem!31537 () Context!7884)

(declare-fun tp!1448680 () Bool)

(declare-fun setNonEmpty!31538 () Bool)

(assert (=> setNonEmpty!31538 (= setRes!31538 (and tp!1448680 (inv!79643 setElem!31537) e!3217975))))

(declare-fun setRest!31538 () (Set Context!7884))

(assert (=> setNonEmpty!31538 (= baseZ!62 (set.union (set.insert setElem!31537 (as set.empty (Set Context!7884))) setRest!31538))))

(declare-fun b!5164587 () Bool)

(declare-fun res!2195554 () Bool)

(assert (=> b!5164587 (=> (not res!2195554) (not e!3217977))))

(declare-fun derivationZipper!181 ((Set Context!7884) List!60071) (Set Context!7884))

(assert (=> b!5164587 (= res!2195554 (= (derivationZipper!181 baseZ!62 testedP!294) z!4581))))

(assert (= (and start!546378 res!2195553) b!5164587))

(assert (= (and b!5164587 res!2195554) b!5164585))

(assert (= (and start!546378 (is-Cons!59947 testedP!294)) b!5164583))

(assert (= (and start!546378 (is-Cons!59947 input!5817)) b!5164586))

(assert (= (and start!546378 condSetEmpty!31538) setIsEmpty!31538))

(assert (= (and start!546378 (not condSetEmpty!31538)) setNonEmpty!31538))

(assert (= setNonEmpty!31538 b!5164582))

(assert (= (and start!546378 condSetEmpty!31537) setIsEmpty!31537))

(assert (= (and start!546378 (not condSetEmpty!31537)) setNonEmpty!31537))

(assert (= setNonEmpty!31537 b!5164584))

(declare-fun m!6215120 () Bool)

(assert (=> setNonEmpty!31538 m!6215120))

(declare-fun m!6215122 () Bool)

(assert (=> setNonEmpty!31537 m!6215122))

(declare-fun m!6215124 () Bool)

(assert (=> b!5164585 m!6215124))

(declare-fun m!6215126 () Bool)

(assert (=> b!5164585 m!6215126))

(declare-fun m!6215128 () Bool)

(assert (=> b!5164585 m!6215128))

(assert (=> b!5164585 m!6215124))

(assert (=> b!5164585 m!6215126))

(assert (=> b!5164585 m!6215128))

(declare-fun m!6215130 () Bool)

(assert (=> b!5164585 m!6215130))

(declare-fun m!6215132 () Bool)

(assert (=> start!546378 m!6215132))

(declare-fun m!6215134 () Bool)

(assert (=> b!5164587 m!6215134))

(push 1)

(assert (not b!5164584))

(assert (not b!5164583))

(assert (not b!5164586))

(assert tp_is_empty!38369)

(assert (not setNonEmpty!31537))

(assert (not b!5164585))

(assert (not b!5164582))

(assert (not b!5164587))

(assert (not start!546378))

(assert (not setNonEmpty!31538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

