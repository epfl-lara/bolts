; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722774 () Bool)

(assert start!722774)

(declare-fun b!7442064 () Bool)

(assert (=> b!7442064 true))

(declare-fun b!7442057 () Bool)

(declare-fun e!4443841 () Bool)

(declare-fun tp!2151655 () Bool)

(assert (=> b!7442057 (= e!4443841 tp!2151655)))

(declare-fun b!7442058 () Bool)

(declare-fun e!4443843 () Bool)

(declare-fun lt!2619402 () Bool)

(assert (=> b!7442058 (= e!4443843 (not lt!2619402))))

(declare-datatypes ((Unit!165755 0))(
  ( (Unit!165756) )
))
(declare-fun lt!2619400 () Unit!165755)

(declare-fun e!4443842 () Unit!165755)

(assert (=> b!7442058 (= lt!2619400 e!4443842)))

(declare-fun c!1377176 () Bool)

(assert (=> b!7442058 (= c!1377176 (not lt!2619402))))

(declare-datatypes ((C!39178 0))(
  ( (C!39179 (val!29963 Int)) )
))
(declare-datatypes ((Regex!19452 0))(
  ( (ElementMatch!19452 (c!1377177 C!39178)) (Concat!28297 (regOne!39416 Regex!19452) (regTwo!39416 Regex!19452)) (EmptyExpr!19452) (Star!19452 (reg!19781 Regex!19452)) (EmptyLang!19452) (Union!19452 (regOne!39417 Regex!19452) (regTwo!39417 Regex!19452)) )
))
(declare-datatypes ((List!72126 0))(
  ( (Nil!72002) (Cons!72002 (h!78450 Regex!19452) (t!386691 List!72126)) )
))
(declare-datatypes ((Context!16784 0))(
  ( (Context!16785 (exprs!8892 List!72126)) )
))
(declare-fun lt!2619401 () (Set Context!16784))

(assert (=> b!7442058 (= lt!2619402 (= lt!2619401 (as set.empty (Set Context!16784))))))

(declare-fun b!7442059 () Bool)

(declare-fun Unit!165757 () Unit!165755)

(assert (=> b!7442059 (= e!4443842 Unit!165757)))

(declare-fun b!7442060 () Bool)

(declare-fun e!4443840 () Bool)

(assert (=> b!7442060 (= e!4443840 false)))

(declare-fun b!7442061 () Bool)

(declare-fun e!4443838 () Bool)

(declare-fun tp_is_empty!49163 () Bool)

(declare-fun tp!2151658 () Bool)

(assert (=> b!7442061 (= e!4443838 (and tp_is_empty!49163 tp!2151658))))

(declare-fun tp!2151656 () Bool)

(declare-fun setElem!56584 () Context!16784)

(declare-fun setRes!56584 () Bool)

(declare-fun setNonEmpty!56584 () Bool)

(declare-fun inv!91992 (Context!16784) Bool)

(assert (=> setNonEmpty!56584 (= setRes!56584 (and tp!2151656 (inv!91992 setElem!56584) e!4443841))))

(declare-fun z!3488 () (Set Context!16784))

(declare-fun setRest!56584 () (Set Context!16784))

(assert (=> setNonEmpty!56584 (= z!3488 (set.union (set.insert setElem!56584 (as set.empty (Set Context!16784))) setRest!56584))))

(declare-fun b!7442063 () Bool)

(declare-fun e!4443837 () Bool)

(assert (=> b!7442063 (= e!4443837 e!4443843)))

(declare-fun res!2986670 () Bool)

(assert (=> b!7442063 (=> (not res!2986670) (not e!4443843))))

(declare-fun lt!2619399 () Context!16784)

(declare-datatypes ((List!72127 0))(
  ( (Nil!72003) (Cons!72003 (h!78451 C!39178) (t!386692 List!72127)) )
))
(declare-fun s!7945 () List!72127)

(declare-fun derivationStepZipperUp!2842 (Context!16784 C!39178) (Set Context!16784))

(assert (=> b!7442063 (= res!2986670 (= (derivationStepZipperUp!2842 lt!2619399 (h!78451 s!7945)) (as set.empty (Set Context!16784))))))

(declare-fun derivationStepZipper!3712 ((Set Context!16784) C!39178) (Set Context!16784))

(assert (=> b!7442063 (= lt!2619401 (derivationStepZipper!3712 z!3488 (h!78451 s!7945)))))

(declare-fun setIsEmpty!56584 () Bool)

(assert (=> setIsEmpty!56584 setRes!56584))

(declare-fun Unit!165758 () Unit!165755)

(assert (=> b!7442064 (= e!4443842 Unit!165758)))

(declare-fun empty!3667 () Context!16784)

(declare-fun e!4443839 () Bool)

(assert (=> b!7442064 (and (inv!91992 empty!3667) e!4443839)))

(assert (=> b!7442064 true))

(declare-fun lambda!460440 () Int)

(declare-fun res!2986672 () Bool)

(declare-fun flatMapPost!237 ((Set Context!16784) Int Context!16784) Context!16784)

(declare-datatypes ((List!72128 0))(
  ( (Nil!72004) (Cons!72004 (h!78452 Context!16784) (t!386693 List!72128)) )
))
(declare-fun head!15264 (List!72128) Context!16784)

(declare-fun toList!11789 ((Set Context!16784)) List!72128)

(assert (=> b!7442064 (= res!2986672 (= (flatMapPost!237 z!3488 lambda!460440 (head!15264 (toList!11789 lt!2619401))) empty!3667))))

(assert (=> b!7442064 (=> (not res!2986672) (not e!4443840))))

(assert (=> b!7442064 e!4443840))

(declare-fun res!2986671 () Bool)

(assert (=> start!722774 (=> (not res!2986671) (not e!4443837))))

(assert (=> start!722774 (= res!2986671 (and (= z!3488 (set.insert lt!2619399 (as set.empty (Set Context!16784)))) (is-Cons!72003 s!7945)))))

(assert (=> start!722774 (= lt!2619399 (Context!16785 Nil!72002))))

(assert (=> start!722774 e!4443837))

(declare-fun condSetEmpty!56584 () Bool)

(assert (=> start!722774 (= condSetEmpty!56584 (= z!3488 (as set.empty (Set Context!16784))))))

(assert (=> start!722774 setRes!56584))

(assert (=> start!722774 e!4443838))

(declare-fun b!7442062 () Bool)

(declare-fun tp!2151657 () Bool)

(assert (=> b!7442062 (= e!4443839 tp!2151657)))

(assert (= (and start!722774 res!2986671) b!7442063))

(assert (= (and b!7442063 res!2986670) b!7442058))

(assert (= (and b!7442058 c!1377176) b!7442064))

(assert (= (and b!7442058 (not c!1377176)) b!7442059))

(assert (= b!7442064 b!7442062))

(assert (= (and b!7442064 res!2986672) b!7442060))

(assert (= (and start!722774 condSetEmpty!56584) setIsEmpty!56584))

(assert (= (and start!722774 (not condSetEmpty!56584)) setNonEmpty!56584))

(assert (= setNonEmpty!56584 b!7442057))

(assert (= (and start!722774 (is-Cons!72003 s!7945)) b!7442061))

(declare-fun m!8053596 () Bool)

(assert (=> setNonEmpty!56584 m!8053596))

(declare-fun m!8053598 () Bool)

(assert (=> b!7442063 m!8053598))

(declare-fun m!8053600 () Bool)

(assert (=> b!7442063 m!8053600))

(declare-fun m!8053602 () Bool)

(assert (=> b!7442064 m!8053602))

(declare-fun m!8053604 () Bool)

(assert (=> b!7442064 m!8053604))

(assert (=> b!7442064 m!8053604))

(declare-fun m!8053606 () Bool)

(assert (=> b!7442064 m!8053606))

(assert (=> b!7442064 m!8053606))

(declare-fun m!8053608 () Bool)

(assert (=> b!7442064 m!8053608))

(declare-fun m!8053610 () Bool)

(assert (=> start!722774 m!8053610))

(push 1)

(assert tp_is_empty!49163)

(assert (not setNonEmpty!56584))

(assert (not b!7442062))

(assert (not b!7442057))

(assert (not b!7442061))

(assert (not b!7442063))

(assert (not b!7442064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

