; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2034 () Bool)

(assert start!2034)

(declare-fun b!13733 () Bool)

(assert (=> b!13733 true))

(declare-fun b!13731 () Bool)

(declare-fun e!8202 () Bool)

(declare-fun tp_is_empty!687 () Bool)

(declare-fun tp!2225 () Bool)

(assert (=> b!13731 (= e!8202 (and tp_is_empty!687 tp!2225))))

(declare-fun res!10775 () Bool)

(declare-fun e!8203 () Bool)

(assert (=> start!2034 (=> (not res!10775) (not e!8203))))

(declare-datatypes ((B!508 0))(
  ( (B!509 (val!352 Int)) )
))
(declare-datatypes ((tuple2!486 0))(
  ( (tuple2!487 (_1!243 (_ BitVec 64)) (_2!243 B!508)) )
))
(declare-datatypes ((List!402 0))(
  ( (Nil!399) (Cons!398 (h!964 tuple2!486) (t!2798 List!402)) )
))
(declare-fun l!522 () List!402)

(declare-fun isStrictlySorted!93 (List!402) Bool)

(assert (=> start!2034 (= res!10775 (isStrictlySorted!93 l!522))))

(assert (=> start!2034 e!8203))

(assert (=> start!2034 e!8202))

(assert (=> start!2034 tp_is_empty!687))

(declare-fun b!13732 () Bool)

(declare-fun res!10776 () Bool)

(assert (=> b!13732 (=> (not res!10776) (not e!8203))))

(declare-fun isEmpty!91 (List!402) Bool)

(assert (=> b!13732 (= res!10776 (not (isEmpty!91 l!522)))))

(declare-fun res!10777 () Bool)

(assert (=> b!13733 (=> (not res!10777) (not e!8203))))

(declare-fun lambda!110 () Int)

(declare-fun forall!84 (List!402 Int) Bool)

(assert (=> b!13733 (= res!10777 (forall!84 Nil!399 lambda!110))))

(declare-fun b!13734 () Bool)

(declare-fun res!10774 () Bool)

(assert (=> b!13734 (=> (not res!10774) (not e!8203))))

(declare-fun value!159 () B!508)

(get-info :version)

(assert (=> b!13734 (= res!10774 (and (or (not ((_ is Cons!398) l!522)) (not (= (_2!243 (h!964 l!522)) value!159))) (or (not ((_ is Cons!398) l!522)) (= (_2!243 (h!964 l!522)) value!159)) ((_ is Nil!399) l!522)))))

(declare-fun b!13735 () Bool)

(assert (=> b!13735 (= e!8203 false)))

(assert (= (and start!2034 res!10775) b!13734))

(assert (= (and b!13734 res!10774) b!13733))

(assert (= (and b!13733 res!10777) b!13732))

(assert (= (and b!13732 res!10776) b!13735))

(assert (= (and start!2034 ((_ is Cons!398) l!522)) b!13731))

(declare-fun m!9259 () Bool)

(assert (=> start!2034 m!9259))

(declare-fun m!9261 () Bool)

(assert (=> b!13732 m!9261))

(declare-fun m!9263 () Bool)

(assert (=> b!13733 m!9263))

(check-sat (not start!2034) (not b!13731) (not b!13732) tp_is_empty!687 (not b!13733))
(check-sat)
