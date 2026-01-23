; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754546 () Bool)

(assert start!754546)

(declare-fun res!3170015 () Bool)

(declare-fun e!4722900 () Bool)

(assert (=> start!754546 (=> (not res!3170015) (not e!4722900))))

(declare-datatypes ((B!4043 0))(
  ( (B!4044 (val!32411 Int)) )
))
(declare-datatypes ((List!74923 0))(
  ( (Nil!74799) (Cons!74799 (h!81247 B!4043) (t!390666 List!74923)) )
))
(declare-fun p!2003 () List!74923)

(declare-fun l!3425 () List!74923)

(declare-fun isPrefix!6746 (List!74923 List!74923) Bool)

(assert (=> start!754546 (= res!3170015 (isPrefix!6746 p!2003 l!3425))))

(assert (=> start!754546 e!4722900))

(declare-fun e!4722899 () Bool)

(assert (=> start!754546 e!4722899))

(declare-fun e!4722898 () Bool)

(assert (=> start!754546 e!4722898))

(declare-fun b!8017729 () Bool)

(assert (=> b!8017729 (= e!4722900 (and (not (is-Nil!74799 p!2003)) (not (is-Nil!74799 l!3425)) (= l!3425 Nil!74799)))))

(declare-fun b!8017730 () Bool)

(declare-fun tp_is_empty!53931 () Bool)

(declare-fun tp!2399899 () Bool)

(assert (=> b!8017730 (= e!4722899 (and tp_is_empty!53931 tp!2399899))))

(declare-fun b!8017731 () Bool)

(declare-fun tp!2399900 () Bool)

(assert (=> b!8017731 (= e!4722898 (and tp_is_empty!53931 tp!2399900))))

(assert (= (and start!754546 res!3170015) b!8017729))

(assert (= (and start!754546 (is-Cons!74799 p!2003)) b!8017730))

(assert (= (and start!754546 (is-Cons!74799 l!3425)) b!8017731))

(declare-fun m!8380858 () Bool)

(assert (=> start!754546 m!8380858))

(push 1)

(assert (not start!754546))

(assert (not b!8017731))

(assert (not b!8017730))

(assert tp_is_empty!53931)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

