; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754542 () Bool)

(assert start!754542)

(declare-fun res!3170009 () Bool)

(declare-fun e!4722881 () Bool)

(assert (=> start!754542 (=> (not res!3170009) (not e!4722881))))

(declare-datatypes ((B!4039 0))(
  ( (B!4040 (val!32409 Int)) )
))
(declare-datatypes ((List!74921 0))(
  ( (Nil!74797) (Cons!74797 (h!81245 B!4039) (t!390664 List!74921)) )
))
(declare-fun p!2003 () List!74921)

(declare-fun l!3425 () List!74921)

(declare-fun isPrefix!6744 (List!74921 List!74921) Bool)

(assert (=> start!754542 (= res!3170009 (isPrefix!6744 p!2003 l!3425))))

(assert (=> start!754542 e!4722881))

(declare-fun e!4722882 () Bool)

(assert (=> start!754542 e!4722882))

(declare-fun e!4722880 () Bool)

(assert (=> start!754542 e!4722880))

(declare-fun b!8017711 () Bool)

(assert (=> b!8017711 (= e!4722881 (and (not (is-Nil!74797 p!2003)) (not (is-Nil!74797 l!3425)) (= p!2003 Nil!74797)))))

(declare-fun b!8017712 () Bool)

(declare-fun tp_is_empty!53927 () Bool)

(declare-fun tp!2399887 () Bool)

(assert (=> b!8017712 (= e!4722882 (and tp_is_empty!53927 tp!2399887))))

(declare-fun b!8017713 () Bool)

(declare-fun tp!2399888 () Bool)

(assert (=> b!8017713 (= e!4722880 (and tp_is_empty!53927 tp!2399888))))

(assert (= (and start!754542 res!3170009) b!8017711))

(assert (= (and start!754542 (is-Cons!74797 p!2003)) b!8017712))

(assert (= (and start!754542 (is-Cons!74797 l!3425)) b!8017713))

(declare-fun m!8380854 () Bool)

(assert (=> start!754542 m!8380854))

(push 1)

(assert (not start!754542))

(assert (not b!8017713))

(assert (not b!8017712))

(assert tp_is_empty!53927)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

