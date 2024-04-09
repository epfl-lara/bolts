; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25462 () Bool)

(assert start!25462)

(declare-fun res!129439 () Bool)

(declare-fun e!171573 () Bool)

(assert (=> start!25462 (=> (not res!129439) (not e!171573))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25462 (= res!129439 (validMask!0 mask!4002))))

(assert (=> start!25462 e!171573))

(assert (=> start!25462 true))

(declare-datatypes ((array!12745 0))(
  ( (array!12746 (arr!6031 (Array (_ BitVec 32) (_ BitVec 64))) (size!6383 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12745)

(declare-fun array_inv!3985 (array!12745) Bool)

(assert (=> start!25462 (array_inv!3985 a!3436)))

(declare-fun b!264889 () Bool)

(declare-fun res!129440 () Bool)

(assert (=> b!264889 (=> (not res!129440) (not e!171573))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264889 (= res!129440 (validKeyInArray!0 k!2698))))

(declare-fun b!264888 () Bool)

(declare-fun res!129438 () Bool)

(assert (=> b!264888 (=> (not res!129438) (not e!171573))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264888 (= res!129438 (and (= (size!6383 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6383 a!3436))))))

(declare-fun b!264890 () Bool)

(declare-fun res!129441 () Bool)

(assert (=> b!264890 (=> (not res!129441) (not e!171573))))

(declare-fun arrayContainsKey!0 (array!12745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264890 (= res!129441 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264891 () Bool)

(declare-datatypes ((SeekEntryResult!1233 0))(
  ( (MissingZero!1233 (index!7102 (_ BitVec 32))) (Found!1233 (index!7103 (_ BitVec 32))) (Intermediate!1233 (undefined!2045 Bool) (index!7104 (_ BitVec 32)) (x!25398 (_ BitVec 32))) (Undefined!1233) (MissingVacant!1233 (index!7105 (_ BitVec 32))) )
))
(declare-fun lt!133964 () SeekEntryResult!1233)

(assert (=> b!264891 (= e!171573 (and (or (= lt!133964 (MissingZero!1233 i!1355)) (= lt!133964 (MissingVacant!1233 i!1355))) (bvsgt #b00000000000000000000000000000000 (size!6383 a!3436))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12745 (_ BitVec 32)) SeekEntryResult!1233)

(assert (=> b!264891 (= lt!133964 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25462 res!129439) b!264888))

(assert (= (and b!264888 res!129438) b!264889))

(assert (= (and b!264889 res!129440) b!264890))

(assert (= (and b!264890 res!129441) b!264891))

(declare-fun m!281873 () Bool)

(assert (=> start!25462 m!281873))

(declare-fun m!281875 () Bool)

(assert (=> start!25462 m!281875))

(declare-fun m!281877 () Bool)

(assert (=> b!264889 m!281877))

(declare-fun m!281879 () Bool)

(assert (=> b!264890 m!281879))

(declare-fun m!281881 () Bool)

(assert (=> b!264891 m!281881))

(push 1)

(assert (not b!264891))

(assert (not b!264890))

(assert (not start!25462))

(assert (not b!264889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

