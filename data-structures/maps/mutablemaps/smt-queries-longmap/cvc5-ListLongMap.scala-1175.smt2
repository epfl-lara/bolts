; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25388 () Bool)

(assert start!25388)

(declare-fun res!129086 () Bool)

(declare-fun e!171394 () Bool)

(assert (=> start!25388 (=> (not res!129086) (not e!171394))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25388 (= res!129086 (validMask!0 mask!4002))))

(assert (=> start!25388 e!171394))

(assert (=> start!25388 true))

(declare-datatypes ((array!12684 0))(
  ( (array!12685 (arr!6001 (Array (_ BitVec 32) (_ BitVec 64))) (size!6353 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12684)

(declare-fun array_inv!3955 (array!12684) Bool)

(assert (=> start!25388 (array_inv!3955 a!3436)))

(declare-fun b!264535 () Bool)

(declare-fun res!129087 () Bool)

(assert (=> b!264535 (=> (not res!129087) (not e!171394))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264535 (= res!129087 (and (= (size!6353 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6353 a!3436))))))

(declare-fun b!264536 () Bool)

(declare-fun res!129085 () Bool)

(assert (=> b!264536 (=> (not res!129085) (not e!171394))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264536 (= res!129085 (validKeyInArray!0 k!2698))))

(declare-fun b!264537 () Bool)

(assert (=> b!264537 (= e!171394 (bvsge #b00000000000000000000000000000000 (size!6353 a!3436)))))

(assert (= (and start!25388 res!129086) b!264535))

(assert (= (and b!264535 res!129087) b!264536))

(assert (= (and b!264536 res!129085) b!264537))

(declare-fun m!281603 () Bool)

(assert (=> start!25388 m!281603))

(declare-fun m!281605 () Bool)

(assert (=> start!25388 m!281605))

(declare-fun m!281607 () Bool)

(assert (=> b!264536 m!281607))

(push 1)

(assert (not start!25388))

(assert (not b!264536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

