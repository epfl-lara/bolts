; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25418 () Bool)

(assert start!25418)

(declare-fun b!264618 () Bool)

(declare-fun e!171442 () Bool)

(declare-fun mask!4002 () (_ BitVec 32))

(assert (=> b!264618 (= e!171442 (bvslt mask!4002 #b00000000000000000000000000000000))))

(declare-fun b!264616 () Bool)

(declare-fun res!129168 () Bool)

(assert (=> b!264616 (=> (not res!129168) (not e!171442))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264616 (= res!129168 (validKeyInArray!0 k!2698))))

(declare-fun b!264617 () Bool)

(declare-fun res!129166 () Bool)

(assert (=> b!264617 (=> (not res!129166) (not e!171442))))

(declare-datatypes ((array!12701 0))(
  ( (array!12702 (arr!6009 (Array (_ BitVec 32) (_ BitVec 64))) (size!6361 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12701)

(declare-fun arrayContainsKey!0 (array!12701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264617 (= res!129166 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!129167 () Bool)

(assert (=> start!25418 (=> (not res!129167) (not e!171442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25418 (= res!129167 (validMask!0 mask!4002))))

(assert (=> start!25418 e!171442))

(assert (=> start!25418 true))

(declare-fun array_inv!3963 (array!12701) Bool)

(assert (=> start!25418 (array_inv!3963 a!3436)))

(declare-fun b!264615 () Bool)

(declare-fun res!129165 () Bool)

(assert (=> b!264615 (=> (not res!129165) (not e!171442))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264615 (= res!129165 (and (= (size!6361 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6361 a!3436))))))

(assert (= (and start!25418 res!129167) b!264615))

(assert (= (and b!264615 res!129165) b!264616))

(assert (= (and b!264616 res!129168) b!264617))

(assert (= (and b!264617 res!129166) b!264618))

(declare-fun m!281655 () Bool)

(assert (=> b!264616 m!281655))

(declare-fun m!281657 () Bool)

(assert (=> b!264617 m!281657))

(declare-fun m!281659 () Bool)

(assert (=> start!25418 m!281659))

(declare-fun m!281661 () Bool)

(assert (=> start!25418 m!281661))

(push 1)

(assert (not b!264616))

(assert (not b!264617))

(assert (not start!25418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

