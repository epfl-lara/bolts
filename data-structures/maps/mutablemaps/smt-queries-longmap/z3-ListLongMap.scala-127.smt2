; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2220 () Bool)

(assert start!2220)

(declare-fun res!11389 () Bool)

(declare-fun e!8928 () Bool)

(assert (=> start!2220 (=> (not res!11389) (not e!8928))))

(declare-datatypes ((B!562 0))(
  ( (B!563 (val!379 Int)) )
))
(declare-datatypes ((tuple2!540 0))(
  ( (tuple2!541 (_1!270 (_ BitVec 64)) (_2!270 B!562)) )
))
(declare-datatypes ((List!429 0))(
  ( (Nil!426) (Cons!425 (h!991 tuple2!540) (t!2831 List!429)) )
))
(declare-fun l!522 () List!429)

(declare-fun isStrictlySorted!120 (List!429) Bool)

(assert (=> start!2220 (= res!11389 (isStrictlySorted!120 l!522))))

(assert (=> start!2220 e!8928))

(declare-fun e!8929 () Bool)

(assert (=> start!2220 e!8929))

(declare-fun tp_is_empty!741 () Bool)

(assert (=> start!2220 tp_is_empty!741))

(declare-fun b!14839 () Bool)

(declare-fun value!159 () B!562)

(get-info :version)

(assert (=> b!14839 (= e!8928 (and (or (not ((_ is Cons!425) l!522)) (not (= (_2!270 (h!991 l!522)) value!159))) (or (not ((_ is Cons!425) l!522)) (= (_2!270 (h!991 l!522)) value!159)) (not ((_ is Nil!426) l!522))))))

(declare-fun b!14840 () Bool)

(declare-fun tp!2384 () Bool)

(assert (=> b!14840 (= e!8929 (and tp_is_empty!741 tp!2384))))

(assert (= (and start!2220 res!11389) b!14839))

(assert (= (and start!2220 ((_ is Cons!425) l!522)) b!14840))

(declare-fun m!9891 () Bool)

(assert (=> start!2220 m!9891))

(check-sat (not start!2220) (not b!14840) tp_is_empty!741)
(check-sat)
