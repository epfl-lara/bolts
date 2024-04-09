; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25772 () Bool)

(assert start!25772)

(declare-fun b!267031 () Bool)

(declare-fun res!131368 () Bool)

(declare-fun e!172680 () Bool)

(assert (=> b!267031 (=> (not res!131368) (not e!172680))))

(declare-datatypes ((array!12938 0))(
  ( (array!12939 (arr!6123 (Array (_ BitVec 32) (_ BitVec 64))) (size!6475 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12938)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12938 (_ BitVec 32)) Bool)

(assert (=> b!267031 (= res!131368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267032 () Bool)

(declare-fun res!131370 () Bool)

(declare-fun e!172681 () Bool)

(assert (=> b!267032 (=> (not res!131370) (not e!172681))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267032 (= res!131370 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267033 () Bool)

(assert (=> b!267033 (= e!172681 e!172680)))

(declare-fun res!131365 () Bool)

(assert (=> b!267033 (=> (not res!131365) (not e!172680))))

(declare-datatypes ((SeekEntryResult!1325 0))(
  ( (MissingZero!1325 (index!7470 (_ BitVec 32))) (Found!1325 (index!7471 (_ BitVec 32))) (Intermediate!1325 (undefined!2137 Bool) (index!7472 (_ BitVec 32)) (x!25730 (_ BitVec 32))) (Undefined!1325) (MissingVacant!1325 (index!7473 (_ BitVec 32))) )
))
(declare-fun lt!134638 () SeekEntryResult!1325)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267033 (= res!131365 (or (= lt!134638 (MissingZero!1325 i!1355)) (= lt!134638 (MissingVacant!1325 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12938 (_ BitVec 32)) SeekEntryResult!1325)

(assert (=> b!267033 (= lt!134638 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!131369 () Bool)

(assert (=> start!25772 (=> (not res!131369) (not e!172681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25772 (= res!131369 (validMask!0 mask!4002))))

(assert (=> start!25772 e!172681))

(assert (=> start!25772 true))

(declare-fun array_inv!4077 (array!12938) Bool)

(assert (=> start!25772 (array_inv!4077 a!3436)))

(declare-fun b!267034 () Bool)

(assert (=> b!267034 (= e!172680 false)))

(declare-fun lt!134639 () Bool)

(declare-datatypes ((List!3958 0))(
  ( (Nil!3955) (Cons!3954 (h!4621 (_ BitVec 64)) (t!9048 List!3958)) )
))
(declare-fun arrayNoDuplicates!0 (array!12938 (_ BitVec 32) List!3958) Bool)

(assert (=> b!267034 (= lt!134639 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3955))))

(declare-fun b!267035 () Bool)

(declare-fun res!131367 () Bool)

(assert (=> b!267035 (=> (not res!131367) (not e!172681))))

(assert (=> b!267035 (= res!131367 (and (= (size!6475 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6475 a!3436))))))

(declare-fun b!267036 () Bool)

(declare-fun res!131366 () Bool)

(assert (=> b!267036 (=> (not res!131366) (not e!172681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267036 (= res!131366 (validKeyInArray!0 k!2698))))

(assert (= (and start!25772 res!131369) b!267035))

(assert (= (and b!267035 res!131367) b!267036))

(assert (= (and b!267036 res!131366) b!267032))

(assert (= (and b!267032 res!131370) b!267033))

(assert (= (and b!267033 res!131365) b!267031))

(assert (= (and b!267031 res!131368) b!267034))

(declare-fun m!283527 () Bool)

(assert (=> b!267031 m!283527))

(declare-fun m!283529 () Bool)

(assert (=> b!267033 m!283529))

(declare-fun m!283531 () Bool)

(assert (=> b!267036 m!283531))

(declare-fun m!283533 () Bool)

(assert (=> b!267032 m!283533))

(declare-fun m!283535 () Bool)

(assert (=> start!25772 m!283535))

(declare-fun m!283537 () Bool)

(assert (=> start!25772 m!283537))

(declare-fun m!283539 () Bool)

(assert (=> b!267034 m!283539))

(push 1)

(assert (not b!267032))

(assert (not b!267031))

(assert (not b!267036))

(assert (not b!267034))

(assert (not start!25772))

(assert (not b!267033))

(check-sat)

