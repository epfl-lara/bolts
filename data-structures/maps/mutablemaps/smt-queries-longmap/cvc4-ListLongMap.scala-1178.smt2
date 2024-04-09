; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25424 () Bool)

(assert start!25424)

(declare-fun b!264654 () Bool)

(declare-fun e!171460 () Bool)

(assert (=> b!264654 (= e!171460 false)))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12707 0))(
  ( (array!12708 (arr!6012 (Array (_ BitVec 32) (_ BitVec 64))) (size!6364 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12707)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1214 0))(
  ( (MissingZero!1214 (index!7026 (_ BitVec 32))) (Found!1214 (index!7027 (_ BitVec 32))) (Intermediate!1214 (undefined!2026 Bool) (index!7028 (_ BitVec 32)) (x!25323 (_ BitVec 32))) (Undefined!1214) (MissingVacant!1214 (index!7029 (_ BitVec 32))) )
))
(declare-fun lt!133916 () SeekEntryResult!1214)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12707 (_ BitVec 32)) SeekEntryResult!1214)

(assert (=> b!264654 (= lt!133916 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264653 () Bool)

(declare-fun res!129203 () Bool)

(assert (=> b!264653 (=> (not res!129203) (not e!171460))))

(declare-fun arrayContainsKey!0 (array!12707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264653 (= res!129203 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!129201 () Bool)

(assert (=> start!25424 (=> (not res!129201) (not e!171460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25424 (= res!129201 (validMask!0 mask!4002))))

(assert (=> start!25424 e!171460))

(assert (=> start!25424 true))

(declare-fun array_inv!3966 (array!12707) Bool)

(assert (=> start!25424 (array_inv!3966 a!3436)))

(declare-fun b!264651 () Bool)

(declare-fun res!129204 () Bool)

(assert (=> b!264651 (=> (not res!129204) (not e!171460))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264651 (= res!129204 (and (= (size!6364 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6364 a!3436))))))

(declare-fun b!264652 () Bool)

(declare-fun res!129202 () Bool)

(assert (=> b!264652 (=> (not res!129202) (not e!171460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264652 (= res!129202 (validKeyInArray!0 k!2698))))

(assert (= (and start!25424 res!129201) b!264651))

(assert (= (and b!264651 res!129204) b!264652))

(assert (= (and b!264652 res!129202) b!264653))

(assert (= (and b!264653 res!129203) b!264654))

(declare-fun m!281683 () Bool)

(assert (=> b!264654 m!281683))

(declare-fun m!281685 () Bool)

(assert (=> b!264653 m!281685))

(declare-fun m!281687 () Bool)

(assert (=> start!25424 m!281687))

(declare-fun m!281689 () Bool)

(assert (=> start!25424 m!281689))

(declare-fun m!281691 () Bool)

(assert (=> b!264652 m!281691))

(push 1)

(assert (not b!264652))

(assert (not b!264653))

(assert (not start!25424))

(assert (not b!264654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

