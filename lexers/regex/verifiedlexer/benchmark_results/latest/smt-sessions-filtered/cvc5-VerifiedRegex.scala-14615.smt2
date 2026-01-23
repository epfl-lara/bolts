; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756286 () Bool)

(assert start!756286)

(declare-fun b!8029116 () Bool)

(declare-fun res!3175474 () Bool)

(declare-fun e!4730276 () Bool)

(assert (=> b!8029116 (=> (not res!3175474) (not e!4730276))))

(declare-datatypes ((B!4455 0))(
  ( (B!4456 (val!32627 Int)) )
))
(declare-datatypes ((List!75143 0))(
  ( (Nil!75017) (Cons!75017 (h!81465 B!4455) (t!390899 List!75143)) )
))
(declare-fun prefix!66 () List!75143)

(declare-fun l!2919 () List!75143)

(declare-fun head!16500 (List!75143) B!4455)

(assert (=> b!8029116 (= res!3175474 (= (head!16500 prefix!66) (head!16500 l!2919)))))

(declare-fun b!8029118 () Bool)

(declare-fun e!4730274 () Bool)

(declare-fun tp_is_empty!54359 () Bool)

(declare-fun tp!2402672 () Bool)

(assert (=> b!8029118 (= e!4730274 (and tp_is_empty!54359 tp!2402672))))

(declare-fun b!8029117 () Bool)

(assert (=> b!8029117 (= e!4730276 (= l!2919 Nil!75017))))

(declare-fun res!3175475 () Bool)

(assert (=> start!756286 (=> (not res!3175475) (not e!4730276))))

(assert (=> start!756286 (= res!3175475 (and (not (is-Nil!75017 prefix!66)) (not (is-Nil!75017 l!2919))))))

(assert (=> start!756286 e!4730276))

(assert (=> start!756286 e!4730274))

(declare-fun e!4730275 () Bool)

(assert (=> start!756286 e!4730275))

(declare-fun b!8029119 () Bool)

(declare-fun tp!2402673 () Bool)

(assert (=> b!8029119 (= e!4730275 (and tp_is_empty!54359 tp!2402673))))

(assert (= (and start!756286 res!3175475) b!8029116))

(assert (= (and b!8029116 res!3175474) b!8029117))

(assert (= (and start!756286 (is-Cons!75017 prefix!66)) b!8029118))

(assert (= (and start!756286 (is-Cons!75017 l!2919)) b!8029119))

(declare-fun m!8391234 () Bool)

(assert (=> b!8029116 m!8391234))

(declare-fun m!8391236 () Bool)

(assert (=> b!8029116 m!8391236))

(push 1)

(assert (not b!8029116))

(assert (not b!8029118))

(assert (not b!8029119))

(assert tp_is_empty!54359)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

