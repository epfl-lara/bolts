; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25432 () Bool)

(assert start!25432)

(declare-fun b!264709 () Bool)

(declare-fun res!129259 () Bool)

(declare-fun e!171483 () Bool)

(assert (=> b!264709 (=> (not res!129259) (not e!171483))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264709 (= res!129259 (validKeyInArray!0 k!2698))))

(declare-fun b!264708 () Bool)

(declare-fun res!129258 () Bool)

(assert (=> b!264708 (=> (not res!129258) (not e!171483))))

(declare-datatypes ((array!12715 0))(
  ( (array!12716 (arr!6016 (Array (_ BitVec 32) (_ BitVec 64))) (size!6368 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12715)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264708 (= res!129258 (and (= (size!6368 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6368 a!3436))))))

(declare-fun res!129261 () Bool)

(assert (=> start!25432 (=> (not res!129261) (not e!171483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25432 (= res!129261 (validMask!0 mask!4002))))

(assert (=> start!25432 e!171483))

(assert (=> start!25432 true))

(declare-fun array_inv!3970 (array!12715) Bool)

(assert (=> start!25432 (array_inv!3970 a!3436)))

(declare-fun b!264711 () Bool)

(assert (=> b!264711 (= e!171483 false)))

(declare-datatypes ((SeekEntryResult!1218 0))(
  ( (MissingZero!1218 (index!7042 (_ BitVec 32))) (Found!1218 (index!7043 (_ BitVec 32))) (Intermediate!1218 (undefined!2030 Bool) (index!7044 (_ BitVec 32)) (x!25343 (_ BitVec 32))) (Undefined!1218) (MissingVacant!1218 (index!7045 (_ BitVec 32))) )
))
(declare-fun lt!133919 () SeekEntryResult!1218)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12715 (_ BitVec 32)) SeekEntryResult!1218)

(assert (=> b!264711 (= lt!133919 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264710 () Bool)

(declare-fun res!129260 () Bool)

(assert (=> b!264710 (=> (not res!129260) (not e!171483))))

(declare-fun arrayContainsKey!0 (array!12715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264710 (= res!129260 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25432 res!129261) b!264708))

(assert (= (and b!264708 res!129258) b!264709))

(assert (= (and b!264709 res!129259) b!264710))

(assert (= (and b!264710 res!129260) b!264711))

(declare-fun m!281723 () Bool)

(assert (=> b!264709 m!281723))

(declare-fun m!281725 () Bool)

(assert (=> start!25432 m!281725))

(declare-fun m!281727 () Bool)

(assert (=> start!25432 m!281727))

(declare-fun m!281729 () Bool)

(assert (=> b!264711 m!281729))

(declare-fun m!281731 () Bool)

(assert (=> b!264710 m!281731))

(push 1)

(assert (not b!264710))

(assert (not start!25432))

(assert (not b!264709))

(assert (not b!264711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

