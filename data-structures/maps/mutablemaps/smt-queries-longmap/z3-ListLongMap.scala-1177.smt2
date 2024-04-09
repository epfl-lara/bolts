; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25416 () Bool)

(assert start!25416)

(declare-fun b!264606 () Bool)

(declare-fun e!171436 () Bool)

(declare-fun mask!4002 () (_ BitVec 32))

(assert (=> b!264606 (= e!171436 (bvslt mask!4002 #b00000000000000000000000000000000))))

(declare-fun res!129154 () Bool)

(assert (=> start!25416 (=> (not res!129154) (not e!171436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25416 (= res!129154 (validMask!0 mask!4002))))

(assert (=> start!25416 e!171436))

(assert (=> start!25416 true))

(declare-datatypes ((array!12699 0))(
  ( (array!12700 (arr!6008 (Array (_ BitVec 32) (_ BitVec 64))) (size!6360 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12699)

(declare-fun array_inv!3962 (array!12699) Bool)

(assert (=> start!25416 (array_inv!3962 a!3436)))

(declare-fun b!264604 () Bool)

(declare-fun res!129156 () Bool)

(assert (=> b!264604 (=> (not res!129156) (not e!171436))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264604 (= res!129156 (validKeyInArray!0 k0!2698))))

(declare-fun b!264603 () Bool)

(declare-fun res!129153 () Bool)

(assert (=> b!264603 (=> (not res!129153) (not e!171436))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264603 (= res!129153 (and (= (size!6360 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6360 a!3436))))))

(declare-fun b!264605 () Bool)

(declare-fun res!129155 () Bool)

(assert (=> b!264605 (=> (not res!129155) (not e!171436))))

(declare-fun arrayContainsKey!0 (array!12699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264605 (= res!129155 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25416 res!129154) b!264603))

(assert (= (and b!264603 res!129153) b!264604))

(assert (= (and b!264604 res!129156) b!264605))

(assert (= (and b!264605 res!129155) b!264606))

(declare-fun m!281647 () Bool)

(assert (=> start!25416 m!281647))

(declare-fun m!281649 () Bool)

(assert (=> start!25416 m!281649))

(declare-fun m!281651 () Bool)

(assert (=> b!264604 m!281651))

(declare-fun m!281653 () Bool)

(assert (=> b!264605 m!281653))

(check-sat (not start!25416) (not b!264604) (not b!264605))
(check-sat)
