; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25436 () Bool)

(assert start!25436)

(declare-fun res!129284 () Bool)

(declare-fun e!171496 () Bool)

(assert (=> start!25436 (=> (not res!129284) (not e!171496))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25436 (= res!129284 (validMask!0 mask!4002))))

(assert (=> start!25436 e!171496))

(assert (=> start!25436 true))

(declare-datatypes ((array!12719 0))(
  ( (array!12720 (arr!6018 (Array (_ BitVec 32) (_ BitVec 64))) (size!6370 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12719)

(declare-fun array_inv!3972 (array!12719) Bool)

(assert (=> start!25436 (array_inv!3972 a!3436)))

(declare-fun b!264732 () Bool)

(declare-fun res!129283 () Bool)

(assert (=> b!264732 (=> (not res!129283) (not e!171496))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264732 (= res!129283 (and (= (size!6370 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6370 a!3436))))))

(declare-fun b!264734 () Bool)

(declare-fun res!129282 () Bool)

(assert (=> b!264734 (=> (not res!129282) (not e!171496))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264734 (= res!129282 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264735 () Bool)

(assert (=> b!264735 (= e!171496 false)))

(declare-datatypes ((SeekEntryResult!1220 0))(
  ( (MissingZero!1220 (index!7050 (_ BitVec 32))) (Found!1220 (index!7051 (_ BitVec 32))) (Intermediate!1220 (undefined!2032 Bool) (index!7052 (_ BitVec 32)) (x!25345 (_ BitVec 32))) (Undefined!1220) (MissingVacant!1220 (index!7053 (_ BitVec 32))) )
))
(declare-fun lt!133925 () SeekEntryResult!1220)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12719 (_ BitVec 32)) SeekEntryResult!1220)

(assert (=> b!264735 (= lt!133925 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264733 () Bool)

(declare-fun res!129285 () Bool)

(assert (=> b!264733 (=> (not res!129285) (not e!171496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264733 (= res!129285 (validKeyInArray!0 k!2698))))

(assert (= (and start!25436 res!129284) b!264732))

(assert (= (and b!264732 res!129283) b!264733))

(assert (= (and b!264733 res!129285) b!264734))

(assert (= (and b!264734 res!129282) b!264735))

(declare-fun m!281743 () Bool)

(assert (=> start!25436 m!281743))

(declare-fun m!281745 () Bool)

(assert (=> start!25436 m!281745))

(declare-fun m!281747 () Bool)

(assert (=> b!264734 m!281747))

(declare-fun m!281749 () Bool)

(assert (=> b!264735 m!281749))

(declare-fun m!281751 () Bool)

(assert (=> b!264733 m!281751))

(push 1)

(assert (not b!264733))

(assert (not b!264735))

(assert (not b!264734))

(assert (not start!25436))

(check-sat)

(pop 1)

