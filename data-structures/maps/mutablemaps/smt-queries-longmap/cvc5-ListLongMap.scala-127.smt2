; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2218 () Bool)

(assert start!2218)

(declare-fun res!11386 () Bool)

(declare-fun e!8922 () Bool)

(assert (=> start!2218 (=> (not res!11386) (not e!8922))))

(declare-datatypes ((B!560 0))(
  ( (B!561 (val!378 Int)) )
))
(declare-datatypes ((tuple2!538 0))(
  ( (tuple2!539 (_1!269 (_ BitVec 64)) (_2!269 B!560)) )
))
(declare-datatypes ((List!428 0))(
  ( (Nil!425) (Cons!424 (h!990 tuple2!538) (t!2830 List!428)) )
))
(declare-fun l!522 () List!428)

(declare-fun isStrictlySorted!119 (List!428) Bool)

(assert (=> start!2218 (= res!11386 (isStrictlySorted!119 l!522))))

(assert (=> start!2218 e!8922))

(declare-fun e!8923 () Bool)

(assert (=> start!2218 e!8923))

(declare-fun tp_is_empty!739 () Bool)

(assert (=> start!2218 tp_is_empty!739))

(declare-fun b!14833 () Bool)

(declare-fun value!159 () B!560)

(assert (=> b!14833 (= e!8922 (and (or (not (is-Cons!424 l!522)) (not (= (_2!269 (h!990 l!522)) value!159))) (or (not (is-Cons!424 l!522)) (= (_2!269 (h!990 l!522)) value!159)) (not (is-Nil!425 l!522))))))

(declare-fun b!14834 () Bool)

(declare-fun tp!2381 () Bool)

(assert (=> b!14834 (= e!8923 (and tp_is_empty!739 tp!2381))))

(assert (= (and start!2218 res!11386) b!14833))

(assert (= (and start!2218 (is-Cons!424 l!522)) b!14834))

(declare-fun m!9889 () Bool)

(assert (=> start!2218 m!9889))

(push 1)

(assert (not start!2218))

(assert (not b!14834))

(assert tp_is_empty!739)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

