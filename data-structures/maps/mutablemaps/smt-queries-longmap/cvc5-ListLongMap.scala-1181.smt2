; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25438 () Bool)

(assert start!25438)

(declare-fun b!264744 () Bool)

(declare-fun res!129295 () Bool)

(declare-fun e!171502 () Bool)

(assert (=> b!264744 (=> (not res!129295) (not e!171502))))

(declare-datatypes ((array!12721 0))(
  ( (array!12722 (arr!6019 (Array (_ BitVec 32) (_ BitVec 64))) (size!6371 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12721)

(declare-fun i!1355 () (_ BitVec 32))

(declare-fun mask!4002 () (_ BitVec 32))

(assert (=> b!264744 (= res!129295 (and (= (size!6371 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6371 a!3436))))))

(declare-fun b!264746 () Bool)

(declare-fun res!129297 () Bool)

(assert (=> b!264746 (=> (not res!129297) (not e!171502))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264746 (= res!129297 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264745 () Bool)

(declare-fun res!129294 () Bool)

(assert (=> b!264745 (=> (not res!129294) (not e!171502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264745 (= res!129294 (validKeyInArray!0 k!2698))))

(declare-fun b!264747 () Bool)

(assert (=> b!264747 (= e!171502 false)))

(declare-datatypes ((SeekEntryResult!1221 0))(
  ( (MissingZero!1221 (index!7054 (_ BitVec 32))) (Found!1221 (index!7055 (_ BitVec 32))) (Intermediate!1221 (undefined!2033 Bool) (index!7056 (_ BitVec 32)) (x!25354 (_ BitVec 32))) (Undefined!1221) (MissingVacant!1221 (index!7057 (_ BitVec 32))) )
))
(declare-fun lt!133928 () SeekEntryResult!1221)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12721 (_ BitVec 32)) SeekEntryResult!1221)

(assert (=> b!264747 (= lt!133928 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!129296 () Bool)

(assert (=> start!25438 (=> (not res!129296) (not e!171502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25438 (= res!129296 (validMask!0 mask!4002))))

(assert (=> start!25438 e!171502))

(assert (=> start!25438 true))

(declare-fun array_inv!3973 (array!12721) Bool)

(assert (=> start!25438 (array_inv!3973 a!3436)))

(assert (= (and start!25438 res!129296) b!264744))

(assert (= (and b!264744 res!129295) b!264745))

(assert (= (and b!264745 res!129294) b!264746))

(assert (= (and b!264746 res!129297) b!264747))

(declare-fun m!281753 () Bool)

(assert (=> b!264746 m!281753))

(declare-fun m!281755 () Bool)

(assert (=> b!264745 m!281755))

(declare-fun m!281757 () Bool)

(assert (=> b!264747 m!281757))

(declare-fun m!281759 () Bool)

(assert (=> start!25438 m!281759))

(declare-fun m!281761 () Bool)

(assert (=> start!25438 m!281761))

(push 1)

(assert (not b!264747))

(assert (not start!25438))

(assert (not b!264746))

(assert (not b!264745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

