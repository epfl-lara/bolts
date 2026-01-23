; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694866 () Bool)

(assert start!694866)

(declare-fun b!7132776 () Bool)

(declare-fun e!4286654 () Bool)

(declare-fun tp!1966023 () Bool)

(assert (=> b!7132776 (= e!4286654 tp!1966023)))

(declare-fun b!7132777 () Bool)

(declare-fun e!4286651 () Bool)

(declare-fun tp_is_empty!45793 () Bool)

(declare-fun tp!1966027 () Bool)

(assert (=> b!7132777 (= e!4286651 (and tp_is_empty!45793 tp!1966027))))

(declare-fun b!7132778 () Bool)

(declare-fun res!2910394 () Bool)

(declare-fun e!4286652 () Bool)

(assert (=> b!7132778 (=> (not res!2910394) (not e!4286652))))

(declare-datatypes ((C!36462 0))(
  ( (C!36463 (val!28157 Int)) )
))
(declare-datatypes ((List!69244 0))(
  ( (Nil!69120) (Cons!69120 (h!75568 C!36462) (t!383221 List!69244)) )
))
(declare-fun s2!1615 () List!69244)

(assert (=> b!7132778 (= res!2910394 (not (is-Nil!69120 s2!1615)))))

(declare-fun b!7132779 () Bool)

(declare-fun e!4286653 () Bool)

(declare-fun tp!1966022 () Bool)

(assert (=> b!7132779 (= e!4286653 tp!1966022)))

(declare-datatypes ((Regex!18094 0))(
  ( (ElementMatch!18094 (c!1330326 C!36462)) (Concat!26939 (regOne!36700 Regex!18094) (regTwo!36700 Regex!18094)) (EmptyExpr!18094) (Star!18094 (reg!18423 Regex!18094)) (EmptyLang!18094) (Union!18094 (regOne!36701 Regex!18094) (regTwo!36701 Regex!18094)) )
))
(declare-datatypes ((List!69245 0))(
  ( (Nil!69121) (Cons!69121 (h!75569 Regex!18094) (t!383222 List!69245)) )
))
(declare-datatypes ((Context!14176 0))(
  ( (Context!14177 (exprs!7588 List!69245)) )
))
(declare-fun setElem!52237 () Context!14176)

(declare-fun tp!1966024 () Bool)

(declare-fun setNonEmpty!52236 () Bool)

(declare-fun setRes!52236 () Bool)

(declare-fun inv!88267 (Context!14176) Bool)

(assert (=> setNonEmpty!52236 (= setRes!52236 (and tp!1966024 (inv!88267 setElem!52237) e!4286654))))

(declare-fun z1!538 () (Set Context!14176))

(declare-fun setRest!52237 () (Set Context!14176))

(assert (=> setNonEmpty!52236 (= z1!538 (set.union (set.insert setElem!52237 (as set.empty (Set Context!14176))) setRest!52237))))

(declare-fun setIsEmpty!52236 () Bool)

(assert (=> setIsEmpty!52236 setRes!52236))

(declare-fun b!7132780 () Bool)

(declare-fun res!2910395 () Bool)

(assert (=> b!7132780 (=> (not res!2910395) (not e!4286652))))

(declare-fun e!4286656 () Bool)

(assert (=> b!7132780 (= res!2910395 e!4286656)))

(declare-fun res!2910392 () Bool)

(assert (=> b!7132780 (=> res!2910392 e!4286656)))

(declare-fun s1!1678 () List!69244)

(declare-fun matchZipper!3350 ((Set Context!14176) List!69244) Bool)

(assert (=> b!7132780 (= res!2910392 (not (matchZipper!3350 z1!538 s1!1678)))))

(declare-fun b!7132781 () Bool)

(declare-fun z2!457 () (Set Context!14176))

(assert (=> b!7132781 (= e!4286656 (not (matchZipper!3350 z2!457 s2!1615)))))

(declare-fun res!2910393 () Bool)

(assert (=> start!694866 (=> (not res!2910393) (not e!4286652))))

(declare-fun s!7358 () List!69244)

(declare-fun ++!16234 (List!69244 List!69244) List!69244)

(assert (=> start!694866 (= res!2910393 (= (++!16234 s1!1678 s2!1615) s!7358))))

(assert (=> start!694866 e!4286652))

(declare-fun condSetEmpty!52237 () Bool)

(assert (=> start!694866 (= condSetEmpty!52237 (= z2!457 (as set.empty (Set Context!14176))))))

(declare-fun setRes!52237 () Bool)

(assert (=> start!694866 setRes!52237))

(declare-fun e!4286657 () Bool)

(assert (=> start!694866 e!4286657))

(declare-fun condSetEmpty!52236 () Bool)

(assert (=> start!694866 (= condSetEmpty!52236 (= z1!538 (as set.empty (Set Context!14176))))))

(assert (=> start!694866 setRes!52236))

(declare-fun e!4286655 () Bool)

(assert (=> start!694866 e!4286655))

(assert (=> start!694866 e!4286651))

(declare-fun setIsEmpty!52237 () Bool)

(assert (=> setIsEmpty!52237 setRes!52237))

(declare-fun b!7132782 () Bool)

(assert (=> b!7132782 (= e!4286652 (not (= (++!16234 s1!1678 s2!1615) s!7358)))))

(declare-fun setElem!52236 () Context!14176)

(declare-fun tp!1966025 () Bool)

(declare-fun setNonEmpty!52237 () Bool)

(assert (=> setNonEmpty!52237 (= setRes!52237 (and tp!1966025 (inv!88267 setElem!52236) e!4286653))))

(declare-fun setRest!52236 () (Set Context!14176))

(assert (=> setNonEmpty!52237 (= z2!457 (set.union (set.insert setElem!52236 (as set.empty (Set Context!14176))) setRest!52236))))

(declare-fun b!7132783 () Bool)

(declare-fun tp!1966028 () Bool)

(assert (=> b!7132783 (= e!4286657 (and tp_is_empty!45793 tp!1966028))))

(declare-fun b!7132784 () Bool)

(declare-fun tp!1966026 () Bool)

(assert (=> b!7132784 (= e!4286655 (and tp_is_empty!45793 tp!1966026))))

(assert (= (and start!694866 res!2910393) b!7132780))

(assert (= (and b!7132780 (not res!2910392)) b!7132781))

(assert (= (and b!7132780 res!2910395) b!7132778))

(assert (= (and b!7132778 res!2910394) b!7132782))

(assert (= (and start!694866 condSetEmpty!52237) setIsEmpty!52237))

(assert (= (and start!694866 (not condSetEmpty!52237)) setNonEmpty!52237))

(assert (= setNonEmpty!52237 b!7132779))

(assert (= (and start!694866 (is-Cons!69120 s2!1615)) b!7132783))

(assert (= (and start!694866 condSetEmpty!52236) setIsEmpty!52236))

(assert (= (and start!694866 (not condSetEmpty!52236)) setNonEmpty!52236))

(assert (= setNonEmpty!52236 b!7132776))

(assert (= (and start!694866 (is-Cons!69120 s1!1678)) b!7132784))

(assert (= (and start!694866 (is-Cons!69120 s!7358)) b!7132777))

(declare-fun m!7849886 () Bool)

(assert (=> start!694866 m!7849886))

(assert (=> b!7132782 m!7849886))

(declare-fun m!7849888 () Bool)

(assert (=> b!7132781 m!7849888))

(declare-fun m!7849890 () Bool)

(assert (=> setNonEmpty!52237 m!7849890))

(declare-fun m!7849892 () Bool)

(assert (=> b!7132780 m!7849892))

(declare-fun m!7849894 () Bool)

(assert (=> setNonEmpty!52236 m!7849894))

(push 1)

(assert (not b!7132782))

(assert (not setNonEmpty!52236))

(assert (not b!7132781))

(assert (not b!7132780))

(assert (not setNonEmpty!52237))

(assert (not b!7132779))

(assert tp_is_empty!45793)

(assert (not start!694866))

(assert (not b!7132784))

(assert (not b!7132783))

(assert (not b!7132776))

(assert (not b!7132777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

