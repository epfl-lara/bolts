; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25678 () Bool)

(assert start!25678)

(declare-fun b!266104 () Bool)

(declare-fun res!130441 () Bool)

(declare-fun e!172257 () Bool)

(assert (=> b!266104 (=> (not res!130441) (not e!172257))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266104 (= res!130441 (validKeyInArray!0 k!2698))))

(declare-fun res!130443 () Bool)

(assert (=> start!25678 (=> (not res!130443) (not e!172257))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25678 (= res!130443 (validMask!0 mask!4002))))

(assert (=> start!25678 e!172257))

(assert (=> start!25678 true))

(declare-datatypes ((array!12844 0))(
  ( (array!12845 (arr!6076 (Array (_ BitVec 32) (_ BitVec 64))) (size!6428 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12844)

(declare-fun array_inv!4030 (array!12844) Bool)

(assert (=> start!25678 (array_inv!4030 a!3436)))

(declare-fun b!266105 () Bool)

(declare-fun e!172258 () Bool)

(assert (=> b!266105 (= e!172257 e!172258)))

(declare-fun res!130440 () Bool)

(assert (=> b!266105 (=> (not res!130440) (not e!172258))))

(declare-datatypes ((SeekEntryResult!1278 0))(
  ( (MissingZero!1278 (index!7282 (_ BitVec 32))) (Found!1278 (index!7283 (_ BitVec 32))) (Intermediate!1278 (undefined!2090 Bool) (index!7284 (_ BitVec 32)) (x!25563 (_ BitVec 32))) (Undefined!1278) (MissingVacant!1278 (index!7285 (_ BitVec 32))) )
))
(declare-fun lt!134366 () SeekEntryResult!1278)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266105 (= res!130440 (or (= lt!134366 (MissingZero!1278 i!1355)) (= lt!134366 (MissingVacant!1278 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12844 (_ BitVec 32)) SeekEntryResult!1278)

(assert (=> b!266105 (= lt!134366 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266106 () Bool)

(declare-fun res!130439 () Bool)

(assert (=> b!266106 (=> (not res!130439) (not e!172257))))

(declare-fun arrayContainsKey!0 (array!12844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266106 (= res!130439 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266107 () Bool)

(assert (=> b!266107 (= e!172258 false)))

(declare-fun lt!134365 () Bool)

(declare-datatypes ((List!3911 0))(
  ( (Nil!3908) (Cons!3907 (h!4574 (_ BitVec 64)) (t!9001 List!3911)) )
))
(declare-fun arrayNoDuplicates!0 (array!12844 (_ BitVec 32) List!3911) Bool)

(assert (=> b!266107 (= lt!134365 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3908))))

(declare-fun b!266108 () Bool)

(declare-fun res!130442 () Bool)

(assert (=> b!266108 (=> (not res!130442) (not e!172258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12844 (_ BitVec 32)) Bool)

(assert (=> b!266108 (= res!130442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266109 () Bool)

(declare-fun res!130438 () Bool)

(assert (=> b!266109 (=> (not res!130438) (not e!172257))))

(assert (=> b!266109 (= res!130438 (and (= (size!6428 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6428 a!3436))))))

(assert (= (and start!25678 res!130443) b!266109))

(assert (= (and b!266109 res!130438) b!266104))

(assert (= (and b!266104 res!130441) b!266106))

(assert (= (and b!266106 res!130439) b!266105))

(assert (= (and b!266105 res!130440) b!266108))

(assert (= (and b!266108 res!130442) b!266107))

(declare-fun m!282797 () Bool)

(assert (=> start!25678 m!282797))

(declare-fun m!282799 () Bool)

(assert (=> start!25678 m!282799))

(declare-fun m!282801 () Bool)

(assert (=> b!266106 m!282801))

(declare-fun m!282803 () Bool)

(assert (=> b!266105 m!282803))

(declare-fun m!282805 () Bool)

(assert (=> b!266107 m!282805))

(declare-fun m!282807 () Bool)

(assert (=> b!266104 m!282807))

(declare-fun m!282809 () Bool)

(assert (=> b!266108 m!282809))

(push 1)

(assert (not b!266106))

(assert (not b!266108))

(assert (not start!25678))

(assert (not b!266107))

(assert (not b!266104))

(assert (not b!266105))

(check-sat)

(pop 1)

