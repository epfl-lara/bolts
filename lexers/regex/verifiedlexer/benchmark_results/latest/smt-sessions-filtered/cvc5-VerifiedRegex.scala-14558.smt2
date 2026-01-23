; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755282 () Bool)

(assert start!755282)

(declare-fun b!8023640 () Bool)

(declare-fun res!3173012 () Bool)

(declare-fun e!4726645 () Bool)

(assert (=> b!8023640 (=> (not res!3173012) (not e!4726645))))

(declare-datatypes ((B!4247 0))(
  ( (B!4248 (val!32513 Int)) )
))
(declare-datatypes ((List!75025 0))(
  ( (Nil!74901) (Cons!74901 (h!81349 B!4247) (t!390768 List!75025)) )
))
(declare-fun l!3411 () List!75025)

(declare-fun p1!179 () List!75025)

(declare-fun s1!490 () List!75025)

(declare-fun ++!18569 (List!75025 List!75025) List!75025)

(assert (=> b!8023640 (= res!3173012 (= (++!18569 p1!179 s1!490) l!3411))))

(declare-fun b!8023641 () Bool)

(assert (=> b!8023641 (= e!4726645 false)))

(declare-fun lt!2720443 () List!75025)

(declare-fun p2!179 () List!75025)

(declare-fun s2!455 () List!75025)

(assert (=> b!8023641 (= lt!2720443 (++!18569 p2!179 s2!455))))

(declare-fun b!8023642 () Bool)

(declare-fun e!4726647 () Bool)

(declare-fun tp_is_empty!54135 () Bool)

(declare-fun tp!2401292 () Bool)

(assert (=> b!8023642 (= e!4726647 (and tp_is_empty!54135 tp!2401292))))

(declare-fun res!3173011 () Bool)

(assert (=> start!755282 (=> (not res!3173011) (not e!4726645))))

(declare-fun isPrefix!6832 (List!75025 List!75025) Bool)

(assert (=> start!755282 (= res!3173011 (isPrefix!6832 p1!179 l!3411))))

(assert (=> start!755282 e!4726645))

(declare-fun e!4726646 () Bool)

(assert (=> start!755282 e!4726646))

(declare-fun e!4726644 () Bool)

(assert (=> start!755282 e!4726644))

(declare-fun e!4726648 () Bool)

(assert (=> start!755282 e!4726648))

(declare-fun e!4726649 () Bool)

(assert (=> start!755282 e!4726649))

(assert (=> start!755282 e!4726647))

(declare-fun b!8023643 () Bool)

(declare-fun tp!2401289 () Bool)

(assert (=> b!8023643 (= e!4726649 (and tp_is_empty!54135 tp!2401289))))

(declare-fun b!8023644 () Bool)

(declare-fun tp!2401288 () Bool)

(assert (=> b!8023644 (= e!4726646 (and tp_is_empty!54135 tp!2401288))))

(declare-fun b!8023645 () Bool)

(declare-fun tp!2401291 () Bool)

(assert (=> b!8023645 (= e!4726648 (and tp_is_empty!54135 tp!2401291))))

(declare-fun b!8023646 () Bool)

(declare-fun tp!2401290 () Bool)

(assert (=> b!8023646 (= e!4726644 (and tp_is_empty!54135 tp!2401290))))

(declare-fun b!8023647 () Bool)

(declare-fun res!3173013 () Bool)

(assert (=> b!8023647 (=> (not res!3173013) (not e!4726645))))

(assert (=> b!8023647 (= res!3173013 (isPrefix!6832 p2!179 l!3411))))

(assert (= (and start!755282 res!3173011) b!8023647))

(assert (= (and b!8023647 res!3173013) b!8023640))

(assert (= (and b!8023640 res!3173012) b!8023641))

(assert (= (and start!755282 (is-Cons!74901 p2!179)) b!8023644))

(assert (= (and start!755282 (is-Cons!74901 s2!455)) b!8023646))

(assert (= (and start!755282 (is-Cons!74901 l!3411)) b!8023645))

(assert (= (and start!755282 (is-Cons!74901 p1!179)) b!8023643))

(assert (= (and start!755282 (is-Cons!74901 s1!490)) b!8023642))

(declare-fun m!8386286 () Bool)

(assert (=> b!8023640 m!8386286))

(declare-fun m!8386288 () Bool)

(assert (=> b!8023641 m!8386288))

(declare-fun m!8386290 () Bool)

(assert (=> start!755282 m!8386290))

(declare-fun m!8386292 () Bool)

(assert (=> b!8023647 m!8386292))

(push 1)

(assert (not b!8023643))

(assert (not b!8023646))

(assert (not b!8023644))

(assert (not b!8023641))

(assert (not b!8023640))

(assert tp_is_empty!54135)

(assert (not b!8023647))

(assert (not start!755282))

(assert (not b!8023642))

(assert (not b!8023645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

