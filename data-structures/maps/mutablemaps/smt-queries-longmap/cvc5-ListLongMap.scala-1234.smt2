; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25972 () Bool)

(assert start!25972)

(declare-fun b!267917 () Bool)

(declare-fun res!132237 () Bool)

(declare-fun e!173151 () Bool)

(assert (=> b!267917 (=> (not res!132237) (not e!173151))))

(declare-datatypes ((array!13058 0))(
  ( (array!13059 (arr!6178 (Array (_ BitVec 32) (_ BitVec 64))) (size!6530 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13058)

(declare-datatypes ((List!4007 0))(
  ( (Nil!4004) (Cons!4003 (h!4670 (_ BitVec 64)) (t!9097 List!4007)) )
))
(declare-fun arrayNoDuplicates!0 (array!13058 (_ BitVec 32) List!4007) Bool)

(assert (=> b!267917 (= res!132237 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4004))))

(declare-fun b!267918 () Bool)

(assert (=> b!267918 (= e!173151 false)))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1347 0))(
  ( (MissingZero!1347 (index!7558 (_ BitVec 32))) (Found!1347 (index!7559 (_ BitVec 32))) (Intermediate!1347 (undefined!2159 Bool) (index!7560 (_ BitVec 32)) (x!25904 (_ BitVec 32))) (Undefined!1347) (MissingVacant!1347 (index!7561 (_ BitVec 32))) )
))
(declare-fun lt!134780 () SeekEntryResult!1347)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13058 (_ BitVec 32)) SeekEntryResult!1347)

(assert (=> b!267918 (= lt!134780 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267919 () Bool)

(declare-fun res!132233 () Bool)

(assert (=> b!267919 (=> (not res!132233) (not e!173151))))

(declare-fun arrayContainsKey!0 (array!13058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267919 (= res!132233 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267920 () Bool)

(declare-fun res!132234 () Bool)

(assert (=> b!267920 (=> (not res!132234) (not e!173151))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267920 (= res!132234 (and (= (size!6530 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6530 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6530 a!3325))))))

(declare-fun b!267921 () Bool)

(declare-fun res!132236 () Bool)

(assert (=> b!267921 (=> (not res!132236) (not e!173151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267921 (= res!132236 (validKeyInArray!0 k!2581))))

(declare-fun res!132235 () Bool)

(assert (=> start!25972 (=> (not res!132235) (not e!173151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25972 (= res!132235 (validMask!0 mask!3868))))

(assert (=> start!25972 e!173151))

(declare-fun array_inv!4132 (array!13058) Bool)

(assert (=> start!25972 (array_inv!4132 a!3325)))

(assert (=> start!25972 true))

(assert (= (and start!25972 res!132235) b!267920))

(assert (= (and b!267920 res!132234) b!267921))

(assert (= (and b!267921 res!132236) b!267917))

(assert (= (and b!267917 res!132237) b!267919))

(assert (= (and b!267919 res!132233) b!267918))

(declare-fun m!284197 () Bool)

(assert (=> b!267921 m!284197))

(declare-fun m!284199 () Bool)

(assert (=> b!267919 m!284199))

(declare-fun m!284201 () Bool)

(assert (=> start!25972 m!284201))

(declare-fun m!284203 () Bool)

(assert (=> start!25972 m!284203))

(declare-fun m!284205 () Bool)

(assert (=> b!267918 m!284205))

(declare-fun m!284207 () Bool)

(assert (=> b!267917 m!284207))

(push 1)

(assert (not b!267918))

(assert (not b!267917))

(assert (not b!267919))

(assert (not start!25972))

(assert (not b!267921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

