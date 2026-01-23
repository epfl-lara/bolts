; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694798 () Bool)

(assert start!694798)

(declare-fun b!7132050 () Bool)

(declare-fun e!4286121 () Bool)

(declare-fun tp_is_empty!45753 () Bool)

(declare-fun tp!1965577 () Bool)

(assert (=> b!7132050 (= e!4286121 (and tp_is_empty!45753 tp!1965577))))

(declare-fun b!7132051 () Bool)

(declare-fun e!4286116 () Bool)

(declare-fun tp!1965579 () Bool)

(assert (=> b!7132051 (= e!4286116 (and tp_is_empty!45753 tp!1965579))))

(declare-fun setIsEmpty!52120 () Bool)

(declare-fun setRes!52120 () Bool)

(assert (=> setIsEmpty!52120 setRes!52120))

(declare-fun b!7132052 () Bool)

(declare-fun e!4286119 () Bool)

(assert (=> b!7132052 (= e!4286119 false)))

(declare-fun lt!2564939 () Bool)

(declare-datatypes ((C!36422 0))(
  ( (C!36423 (val!28137 Int)) )
))
(declare-datatypes ((Regex!18076 0))(
  ( (ElementMatch!18076 (c!1330278 C!36422)) (Concat!26921 (regOne!36664 Regex!18076) (regTwo!36664 Regex!18076)) (EmptyExpr!18076) (Star!18076 (reg!18405 Regex!18076)) (EmptyLang!18076) (Union!18076 (regOne!36665 Regex!18076) (regTwo!36665 Regex!18076)) )
))
(declare-datatypes ((List!69206 0))(
  ( (Nil!69082) (Cons!69082 (h!75530 Regex!18076) (t!383183 List!69206)) )
))
(declare-datatypes ((Context!14140 0))(
  ( (Context!14141 (exprs!7570 List!69206)) )
))
(declare-fun z1!538 () (Set Context!14140))

(declare-datatypes ((List!69207 0))(
  ( (Nil!69083) (Cons!69083 (h!75531 C!36422) (t!383184 List!69207)) )
))
(declare-fun matchZipper!3332 ((Set Context!14140) List!69207) Bool)

(declare-datatypes ((tuple2!68382 0))(
  ( (tuple2!68383 (_1!37494 List!69207) (_2!37494 List!69207)) )
))
(declare-datatypes ((Option!17023 0))(
  ( (None!17022) (Some!17022 (v!53516 tuple2!68382)) )
))
(declare-fun get!24257 (Option!17023) tuple2!68382)

(assert (=> b!7132052 (= lt!2564939 (matchZipper!3332 z1!538 (_1!37494 (get!24257 None!17022))))))

(declare-fun b!7132053 () Bool)

(declare-fun e!4286122 () Bool)

(declare-fun tp!1965576 () Bool)

(assert (=> b!7132053 (= e!4286122 tp!1965576)))

(declare-fun b!7132055 () Bool)

(declare-fun e!4286117 () Bool)

(declare-fun z2!457 () (Set Context!14140))

(declare-fun s2!1615 () List!69207)

(assert (=> b!7132055 (= e!4286117 (not (matchZipper!3332 z2!457 s2!1615)))))

(declare-fun setNonEmpty!52120 () Bool)

(declare-fun tp!1965578 () Bool)

(declare-fun setRes!52121 () Bool)

(declare-fun setElem!52121 () Context!14140)

(declare-fun inv!88219 (Context!14140) Bool)

(assert (=> setNonEmpty!52120 (= setRes!52121 (and tp!1965578 (inv!88219 setElem!52121) e!4286122))))

(declare-fun setRest!52121 () (Set Context!14140))

(assert (=> setNonEmpty!52120 (= z1!538 (set.union (set.insert setElem!52121 (as set.empty (Set Context!14140))) setRest!52121))))

(declare-fun tp!1965575 () Bool)

(declare-fun e!4286118 () Bool)

(declare-fun setElem!52120 () Context!14140)

(declare-fun setNonEmpty!52121 () Bool)

(assert (=> setNonEmpty!52121 (= setRes!52120 (and tp!1965575 (inv!88219 setElem!52120) e!4286118))))

(declare-fun setRest!52120 () (Set Context!14140))

(assert (=> setNonEmpty!52121 (= z2!457 (set.union (set.insert setElem!52120 (as set.empty (Set Context!14140))) setRest!52120))))

(declare-fun b!7132056 () Bool)

(declare-fun tp!1965580 () Bool)

(assert (=> b!7132056 (= e!4286118 tp!1965580)))

(declare-fun res!2910067 () Bool)

(assert (=> start!694798 (=> (not res!2910067) (not e!4286119))))

(declare-fun s1!1678 () List!69207)

(declare-fun s!7358 () List!69207)

(declare-fun ++!16214 (List!69207 List!69207) List!69207)

(assert (=> start!694798 (= res!2910067 (= (++!16214 s1!1678 s2!1615) s!7358))))

(assert (=> start!694798 e!4286119))

(declare-fun condSetEmpty!52121 () Bool)

(assert (=> start!694798 (= condSetEmpty!52121 (= z2!457 (as set.empty (Set Context!14140))))))

(assert (=> start!694798 setRes!52120))

(assert (=> start!694798 e!4286121))

(declare-fun condSetEmpty!52120 () Bool)

(assert (=> start!694798 (= condSetEmpty!52120 (= z1!538 (as set.empty (Set Context!14140))))))

(assert (=> start!694798 setRes!52121))

(declare-fun e!4286120 () Bool)

(assert (=> start!694798 e!4286120))

(assert (=> start!694798 e!4286116))

(declare-fun b!7132054 () Bool)

(declare-fun res!2910068 () Bool)

(assert (=> b!7132054 (=> (not res!2910068) (not e!4286119))))

(assert (=> b!7132054 (= res!2910068 false)))

(declare-fun b!7132057 () Bool)

(declare-fun res!2910066 () Bool)

(assert (=> b!7132057 (=> (not res!2910066) (not e!4286119))))

(assert (=> b!7132057 (= res!2910066 e!4286117)))

(declare-fun res!2910069 () Bool)

(assert (=> b!7132057 (=> res!2910069 e!4286117)))

(assert (=> b!7132057 (= res!2910069 (not (matchZipper!3332 z1!538 s1!1678)))))

(declare-fun setIsEmpty!52121 () Bool)

(assert (=> setIsEmpty!52121 setRes!52121))

(declare-fun b!7132058 () Bool)

(declare-fun tp!1965574 () Bool)

(assert (=> b!7132058 (= e!4286120 (and tp_is_empty!45753 tp!1965574))))

(assert (= (and start!694798 res!2910067) b!7132057))

(assert (= (and b!7132057 (not res!2910069)) b!7132055))

(assert (= (and b!7132057 res!2910066) b!7132054))

(assert (= (and b!7132054 res!2910068) b!7132052))

(assert (= (and start!694798 condSetEmpty!52121) setIsEmpty!52120))

(assert (= (and start!694798 (not condSetEmpty!52121)) setNonEmpty!52121))

(assert (= setNonEmpty!52121 b!7132056))

(assert (= (and start!694798 (is-Cons!69083 s2!1615)) b!7132050))

(assert (= (and start!694798 condSetEmpty!52120) setIsEmpty!52121))

(assert (= (and start!694798 (not condSetEmpty!52120)) setNonEmpty!52120))

(assert (= setNonEmpty!52120 b!7132053))

(assert (= (and start!694798 (is-Cons!69083 s1!1678)) b!7132058))

(assert (= (and start!694798 (is-Cons!69083 s!7358)) b!7132051))

(declare-fun m!7849404 () Bool)

(assert (=> setNonEmpty!52121 m!7849404))

(declare-fun m!7849406 () Bool)

(assert (=> b!7132057 m!7849406))

(declare-fun m!7849408 () Bool)

(assert (=> b!7132055 m!7849408))

(declare-fun m!7849410 () Bool)

(assert (=> start!694798 m!7849410))

(declare-fun m!7849412 () Bool)

(assert (=> b!7132052 m!7849412))

(declare-fun m!7849414 () Bool)

(assert (=> b!7132052 m!7849414))

(declare-fun m!7849416 () Bool)

(assert (=> setNonEmpty!52120 m!7849416))

(push 1)

(assert (not b!7132055))

(assert (not b!7132051))

(assert (not setNonEmpty!52121))

(assert (not b!7132050))

(assert (not start!694798))

(assert (not setNonEmpty!52120))

(assert (not b!7132056))

(assert (not b!7132057))

(assert (not b!7132052))

(assert (not b!7132058))

(assert tp_is_empty!45753)

(assert (not b!7132053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

