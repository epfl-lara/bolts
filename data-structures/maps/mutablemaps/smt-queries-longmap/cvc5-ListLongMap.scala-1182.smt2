; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25444 () Bool)

(assert start!25444)

(declare-fun res!129330 () Bool)

(declare-fun e!171519 () Bool)

(assert (=> start!25444 (=> (not res!129330) (not e!171519))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25444 (= res!129330 (validMask!0 mask!4002))))

(assert (=> start!25444 e!171519))

(assert (=> start!25444 true))

(declare-datatypes ((array!12727 0))(
  ( (array!12728 (arr!6022 (Array (_ BitVec 32) (_ BitVec 64))) (size!6374 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12727)

(declare-fun array_inv!3976 (array!12727) Bool)

(assert (=> start!25444 (array_inv!3976 a!3436)))

(declare-fun b!264781 () Bool)

(declare-fun res!129332 () Bool)

(assert (=> b!264781 (=> (not res!129332) (not e!171519))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264781 (= res!129332 (validKeyInArray!0 k!2698))))

(declare-fun b!264782 () Bool)

(declare-fun res!129333 () Bool)

(assert (=> b!264782 (=> (not res!129333) (not e!171519))))

(declare-fun arrayContainsKey!0 (array!12727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264782 (= res!129333 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264783 () Bool)

(assert (=> b!264783 (= e!171519 false)))

(declare-datatypes ((SeekEntryResult!1224 0))(
  ( (MissingZero!1224 (index!7066 (_ BitVec 32))) (Found!1224 (index!7067 (_ BitVec 32))) (Intermediate!1224 (undefined!2036 Bool) (index!7068 (_ BitVec 32)) (x!25365 (_ BitVec 32))) (Undefined!1224) (MissingVacant!1224 (index!7069 (_ BitVec 32))) )
))
(declare-fun lt!133937 () SeekEntryResult!1224)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12727 (_ BitVec 32)) SeekEntryResult!1224)

(assert (=> b!264783 (= lt!133937 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264780 () Bool)

(declare-fun res!129331 () Bool)

(assert (=> b!264780 (=> (not res!129331) (not e!171519))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264780 (= res!129331 (and (= (size!6374 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6374 a!3436))))))

(assert (= (and start!25444 res!129330) b!264780))

(assert (= (and b!264780 res!129331) b!264781))

(assert (= (and b!264781 res!129332) b!264782))

(assert (= (and b!264782 res!129333) b!264783))

(declare-fun m!281783 () Bool)

(assert (=> start!25444 m!281783))

(declare-fun m!281785 () Bool)

(assert (=> start!25444 m!281785))

(declare-fun m!281787 () Bool)

(assert (=> b!264781 m!281787))

(declare-fun m!281789 () Bool)

(assert (=> b!264782 m!281789))

(declare-fun m!281791 () Bool)

(assert (=> b!264783 m!281791))

(push 1)

(assert (not b!264783))

(assert (not b!264782))

(assert (not start!25444))

(assert (not b!264781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

