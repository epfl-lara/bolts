; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2044 () Bool)

(assert start!2044)

(declare-fun b!13850 () Bool)

(assert (=> b!13850 true))

(declare-fun b!13849 () Bool)

(declare-fun res!10861 () Bool)

(declare-fun e!8254 () Bool)

(assert (=> b!13849 (=> (not res!10861) (not e!8254))))

(declare-datatypes ((B!518 0))(
  ( (B!519 (val!357 Int)) )
))
(declare-datatypes ((tuple2!496 0))(
  ( (tuple2!497 (_1!248 (_ BitVec 64)) (_2!248 B!518)) )
))
(declare-datatypes ((List!407 0))(
  ( (Nil!404) (Cons!403 (h!969 tuple2!496) (t!2803 List!407)) )
))
(declare-fun l!522 () List!407)

(declare-fun value!159 () B!518)

(assert (=> b!13849 (= res!10861 (and (or (not (is-Cons!403 l!522)) (not (= (_2!248 (h!969 l!522)) value!159))) (or (not (is-Cons!403 l!522)) (= (_2!248 (h!969 l!522)) value!159)) (not (is-Nil!404 l!522))))))

(declare-fun res!10858 () Bool)

(declare-fun e!8255 () Bool)

(assert (=> b!13850 (=> (not res!10858) (not e!8255))))

(declare-fun lt!3546 () List!407)

(declare-fun lambda!125 () Int)

(declare-fun forall!89 (List!407 Int) Bool)

(assert (=> b!13850 (= res!10858 (forall!89 lt!3546 lambda!125))))

(declare-fun b!13851 () Bool)

(declare-fun e!8257 () Bool)

(declare-fun tp_is_empty!697 () Bool)

(declare-fun tp!2251 () Bool)

(assert (=> b!13851 (= e!8257 (and tp_is_empty!697 tp!2251))))

(declare-fun b!13852 () Bool)

(assert (=> b!13852 (= e!8255 (= l!522 Nil!404))))

(declare-fun b!13853 () Bool)

(assert (=> b!13853 (= e!8254 e!8255)))

(declare-fun res!10856 () Bool)

(assert (=> b!13853 (=> (not res!10856) (not e!8255))))

(declare-fun isStrictlySorted!98 (List!407) Bool)

(assert (=> b!13853 (= res!10856 (isStrictlySorted!98 lt!3546))))

(declare-fun err!15 () List!407)

(assert (=> b!13853 (= lt!3546 err!15)))

(assert (=> b!13853 true))

(declare-fun e!8256 () Bool)

(assert (=> b!13853 e!8256))

(declare-fun b!13854 () Bool)

(declare-fun res!10859 () Bool)

(assert (=> b!13854 (=> (not res!10859) (not e!8255))))

(declare-fun isEmpty!96 (List!407) Bool)

(assert (=> b!13854 (= res!10859 (not (isEmpty!96 l!522)))))

(declare-fun res!10857 () Bool)

(assert (=> start!2044 (=> (not res!10857) (not e!8254))))

(assert (=> start!2044 (= res!10857 (isStrictlySorted!98 l!522))))

(assert (=> start!2044 e!8254))

(assert (=> start!2044 e!8257))

(assert (=> start!2044 tp_is_empty!697))

(declare-fun b!13855 () Bool)

(declare-fun res!10860 () Bool)

(assert (=> b!13855 (=> (not res!10860) (not e!8255))))

(assert (=> b!13855 (= res!10860 (not (isEmpty!96 lt!3546)))))

(declare-fun b!13856 () Bool)

(declare-fun tp!2252 () Bool)

(assert (=> b!13856 (= e!8256 (and tp_is_empty!697 tp!2252))))

(assert (= (and start!2044 res!10857) b!13849))

(assert (= (and b!13849 res!10861) b!13853))

(assert (= (and b!13853 (is-Cons!403 err!15)) b!13856))

(assert (= (and b!13853 res!10856) b!13850))

(assert (= (and b!13850 res!10858) b!13854))

(assert (= (and b!13854 res!10859) b!13855))

(assert (= (and b!13855 res!10860) b!13852))

(assert (= (and start!2044 (is-Cons!403 l!522)) b!13851))

(declare-fun m!9301 () Bool)

(assert (=> b!13854 m!9301))

(declare-fun m!9303 () Bool)

(assert (=> b!13850 m!9303))

(declare-fun m!9305 () Bool)

(assert (=> b!13855 m!9305))

(declare-fun m!9307 () Bool)

(assert (=> b!13853 m!9307))

(declare-fun m!9309 () Bool)

(assert (=> start!2044 m!9309))

(push 1)

(assert (not b!13855))

(assert tp_is_empty!697)

(assert (not b!13851))

(assert (not b!13854))

(assert (not start!2044))

(assert (not b!13856))

(assert (not b!13850))

(assert (not b!13853))

(check-sat)

(pop 1)

