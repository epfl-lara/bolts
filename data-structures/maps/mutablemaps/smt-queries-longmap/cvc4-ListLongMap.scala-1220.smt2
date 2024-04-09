; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25802 () Bool)

(assert start!25802)

(declare-fun res!131649 () Bool)

(declare-fun e!172806 () Bool)

(assert (=> start!25802 (=> (not res!131649) (not e!172806))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25802 (= res!131649 (validMask!0 mask!3868))))

(assert (=> start!25802 e!172806))

(declare-datatypes ((array!12968 0))(
  ( (array!12969 (arr!6138 (Array (_ BitVec 32) (_ BitVec 64))) (size!6490 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12968)

(declare-fun array_inv!4092 (array!12968) Bool)

(assert (=> start!25802 (array_inv!4092 a!3325)))

(assert (=> start!25802 true))

(declare-fun b!267313 () Bool)

(declare-fun res!131647 () Bool)

(assert (=> b!267313 (=> (not res!131647) (not e!172806))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267313 (= res!131647 (and (= (size!6490 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6490 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6490 a!3325))))))

(declare-fun b!267314 () Bool)

(declare-fun res!131648 () Bool)

(assert (=> b!267314 (=> (not res!131648) (not e!172806))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267314 (= res!131648 (validKeyInArray!0 k!2581))))

(declare-fun b!267315 () Bool)

(assert (=> b!267315 (= e!172806 (bvsgt #b00000000000000000000000000000000 (size!6490 a!3325)))))

(assert (= (and start!25802 res!131649) b!267313))

(assert (= (and b!267313 res!131647) b!267314))

(assert (= (and b!267314 res!131648) b!267315))

(declare-fun m!283757 () Bool)

(assert (=> start!25802 m!283757))

(declare-fun m!283759 () Bool)

(assert (=> start!25802 m!283759))

(declare-fun m!283761 () Bool)

(assert (=> b!267314 m!283761))

(push 1)

(assert (not b!267314))

(assert (not start!25802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

