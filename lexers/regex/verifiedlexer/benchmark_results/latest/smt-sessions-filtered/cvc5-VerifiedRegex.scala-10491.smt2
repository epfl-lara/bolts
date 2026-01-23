; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541518 () Bool)

(assert start!541518)

(declare-fun b!5127584 () Bool)

(declare-fun e!3197820 () Bool)

(assert (=> b!5127584 (= e!3197820 false)))

(declare-fun lt!2114720 () Bool)

(declare-datatypes ((C!28810 0))(
  ( (C!28811 (val!24057 Int)) )
))
(declare-datatypes ((Regex!14272 0))(
  ( (ElementMatch!14272 (c!881653 C!28810)) (Concat!23117 (regOne!29056 Regex!14272) (regTwo!29056 Regex!14272)) (EmptyExpr!14272) (Star!14272 (reg!14601 Regex!14272)) (EmptyLang!14272) (Union!14272 (regOne!29057 Regex!14272) (regTwo!29057 Regex!14272)) )
))
(declare-datatypes ((List!59484 0))(
  ( (Nil!59360) (Cons!59360 (h!65808 Regex!14272) (t!372511 List!59484)) )
))
(declare-datatypes ((Context!7312 0))(
  ( (Context!7313 (exprs!4156 List!59484)) )
))
(declare-fun z!1006 () (Set Context!7312))

(declare-datatypes ((List!59485 0))(
  ( (Nil!59361) (Cons!59361 (h!65809 C!28810) (t!372512 List!59485)) )
))
(declare-fun s!2272 () List!59485)

(declare-fun matchZipper!934 ((Set Context!7312) List!59485) Bool)

(assert (=> b!5127584 (= lt!2114720 (matchZipper!934 z!1006 s!2272))))

(declare-fun b!5127585 () Bool)

(declare-fun res!2183137 () Bool)

(assert (=> b!5127585 (=> (not res!2183137) (not e!3197820))))

(assert (=> b!5127585 (= res!2183137 (is-Nil!59361 s!2272))))

(declare-fun b!5127586 () Bool)

(declare-fun e!3197821 () Bool)

(declare-fun tp_is_empty!37813 () Bool)

(declare-fun tp!1430466 () Bool)

(assert (=> b!5127586 (= e!3197821 (and tp_is_empty!37813 tp!1430466))))

(declare-fun res!2183138 () Bool)

(assert (=> start!541518 (=> (not res!2183138) (not e!3197820))))

(declare-fun lostCauseZipper!1150 ((Set Context!7312)) Bool)

(assert (=> start!541518 (= res!2183138 (lostCauseZipper!1150 z!1006))))

(assert (=> start!541518 e!3197820))

(declare-fun condSetEmpty!30759 () Bool)

(assert (=> start!541518 (= condSetEmpty!30759 (= z!1006 (as set.empty (Set Context!7312))))))

(declare-fun setRes!30759 () Bool)

(assert (=> start!541518 setRes!30759))

(assert (=> start!541518 e!3197821))

(declare-fun setIsEmpty!30759 () Bool)

(assert (=> setIsEmpty!30759 setRes!30759))

(declare-fun tp!1430467 () Bool)

(declare-fun setNonEmpty!30759 () Bool)

(declare-fun setElem!30759 () Context!7312)

(declare-fun e!3197819 () Bool)

(declare-fun inv!78862 (Context!7312) Bool)

(assert (=> setNonEmpty!30759 (= setRes!30759 (and tp!1430467 (inv!78862 setElem!30759) e!3197819))))

(declare-fun setRest!30759 () (Set Context!7312))

(assert (=> setNonEmpty!30759 (= z!1006 (set.union (set.insert setElem!30759 (as set.empty (Set Context!7312))) setRest!30759))))

(declare-fun b!5127587 () Bool)

(declare-fun tp!1430468 () Bool)

(assert (=> b!5127587 (= e!3197819 tp!1430468)))

(assert (= (and start!541518 res!2183138) b!5127585))

(assert (= (and b!5127585 res!2183137) b!5127584))

(assert (= (and start!541518 condSetEmpty!30759) setIsEmpty!30759))

(assert (= (and start!541518 (not condSetEmpty!30759)) setNonEmpty!30759))

(assert (= setNonEmpty!30759 b!5127587))

(assert (= (and start!541518 (is-Cons!59361 s!2272)) b!5127586))

(declare-fun m!6191586 () Bool)

(assert (=> b!5127584 m!6191586))

(declare-fun m!6191588 () Bool)

(assert (=> start!541518 m!6191588))

(declare-fun m!6191590 () Bool)

(assert (=> setNonEmpty!30759 m!6191590))

(push 1)

(assert (not b!5127584))

(assert (not setNonEmpty!30759))

(assert tp_is_empty!37813)

(assert (not b!5127587))

(assert (not start!541518))

(assert (not b!5127586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

