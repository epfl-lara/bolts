; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541628 () Bool)

(assert start!541628)

(declare-fun b!5127862 () Bool)

(declare-fun e!3198007 () Bool)

(declare-datatypes ((C!28822 0))(
  ( (C!28823 (val!24063 Int)) )
))
(declare-datatypes ((Regex!14278 0))(
  ( (ElementMatch!14278 (c!881758 C!28822)) (Concat!23123 (regOne!29068 Regex!14278) (regTwo!29068 Regex!14278)) (EmptyExpr!14278) (Star!14278 (reg!14607 Regex!14278)) (EmptyLang!14278) (Union!14278 (regOne!29069 Regex!14278) (regTwo!29069 Regex!14278)) )
))
(declare-datatypes ((List!59499 0))(
  ( (Nil!59375) (Cons!59375 (h!65823 Regex!14278) (t!372526 List!59499)) )
))
(declare-datatypes ((Context!7324 0))(
  ( (Context!7325 (exprs!4162 List!59499)) )
))
(declare-fun z!1113 () (Set Context!7324))

(declare-fun lambda!252234 () Int)

(declare-fun exists!1524 ((Set Context!7324) Int) Bool)

(assert (=> b!5127862 (= e!3198007 (not (exists!1524 z!1113 lambda!252234)))))

(declare-fun b!5127863 () Bool)

(declare-fun res!2183194 () Bool)

(assert (=> b!5127863 (=> (not res!2183194) (not e!3198007))))

(assert (=> b!5127863 (= res!2183194 (exists!1524 z!1113 lambda!252234))))

(declare-fun setIsEmpty!30791 () Bool)

(declare-fun setRes!30791 () Bool)

(assert (=> setIsEmpty!30791 setRes!30791))

(declare-fun b!5127864 () Bool)

(declare-fun e!3198006 () Bool)

(declare-fun tp!1430623 () Bool)

(assert (=> b!5127864 (= e!3198006 tp!1430623)))

(declare-fun tp!1430622 () Bool)

(declare-fun setNonEmpty!30791 () Bool)

(declare-fun setElem!30791 () Context!7324)

(declare-fun inv!78877 (Context!7324) Bool)

(assert (=> setNonEmpty!30791 (= setRes!30791 (and tp!1430622 (inv!78877 setElem!30791) e!3198006))))

(declare-fun setRest!30791 () (Set Context!7324))

(assert (=> setNonEmpty!30791 (= z!1113 (set.union (set.insert setElem!30791 (as set.empty (Set Context!7324))) setRest!30791))))

(declare-fun res!2183193 () Bool)

(assert (=> start!541628 (=> (not res!2183193) (not e!3198007))))

(declare-fun nullableZipper!1063 ((Set Context!7324)) Bool)

(assert (=> start!541628 (= res!2183193 (nullableZipper!1063 z!1113))))

(assert (=> start!541628 e!3198007))

(declare-fun condSetEmpty!30791 () Bool)

(assert (=> start!541628 (= condSetEmpty!30791 (= z!1113 (as set.empty (Set Context!7324))))))

(assert (=> start!541628 setRes!30791))

(assert (= (and start!541628 res!2183193) b!5127863))

(assert (= (and b!5127863 res!2183194) b!5127862))

(assert (= (and start!541628 condSetEmpty!30791) setIsEmpty!30791))

(assert (= (and start!541628 (not condSetEmpty!30791)) setNonEmpty!30791))

(assert (= setNonEmpty!30791 b!5127864))

(declare-fun m!6192070 () Bool)

(assert (=> b!5127862 m!6192070))

(assert (=> b!5127863 m!6192070))

(declare-fun m!6192072 () Bool)

(assert (=> setNonEmpty!30791 m!6192072))

(declare-fun m!6192074 () Bool)

(assert (=> start!541628 m!6192074))

(push 1)

(assert (not start!541628))

(assert (not b!5127863))

(assert (not b!5127864))

(assert (not setNonEmpty!30791))

(assert (not b!5127862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

