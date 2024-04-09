; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26644 () Bool)

(assert start!26644)

(declare-fun res!140472 () Bool)

(declare-fun e!176609 () Bool)

(assert (=> start!26644 (=> (not res!140472) (not e!176609))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26644 (= res!140472 (validMask!0 mask!3868))))

(assert (=> start!26644 e!176609))

(declare-datatypes ((array!13730 0))(
  ( (array!13731 (arr!6514 (Array (_ BitVec 32) (_ BitVec 64))) (size!6866 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13730)

(declare-fun array_inv!4468 (array!13730) Bool)

(assert (=> start!26644 (array_inv!4468 a!3325)))

(assert (=> start!26644 true))

(declare-fun b!276444 () Bool)

(declare-fun res!140474 () Bool)

(assert (=> b!276444 (=> (not res!140474) (not e!176609))))

(declare-datatypes ((List!4343 0))(
  ( (Nil!4340) (Cons!4339 (h!5006 (_ BitVec 64)) (t!9433 List!4343)) )
))
(declare-fun arrayNoDuplicates!0 (array!13730 (_ BitVec 32) List!4343) Bool)

(assert (=> b!276444 (= res!140474 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4340))))

(declare-fun b!276445 () Bool)

(declare-fun res!140475 () Bool)

(assert (=> b!276445 (=> (not res!140475) (not e!176609))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276445 (= res!140475 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276446 () Bool)

(declare-fun res!140477 () Bool)

(assert (=> b!276446 (=> (not res!140477) (not e!176609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276446 (= res!140477 (validKeyInArray!0 k!2581))))

(declare-fun b!276447 () Bool)

(declare-fun res!140478 () Bool)

(declare-fun e!176611 () Bool)

(assert (=> b!276447 (=> (not res!140478) (not e!176611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13730 (_ BitVec 32)) Bool)

(assert (=> b!276447 (= res!140478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276448 () Bool)

(assert (=> b!276448 (= e!176609 e!176611)))

(declare-fun res!140473 () Bool)

(assert (=> b!276448 (=> (not res!140473) (not e!176611))))

(declare-datatypes ((SeekEntryResult!1683 0))(
  ( (MissingZero!1683 (index!8902 (_ BitVec 32))) (Found!1683 (index!8903 (_ BitVec 32))) (Intermediate!1683 (undefined!2495 Bool) (index!8904 (_ BitVec 32)) (x!27136 (_ BitVec 32))) (Undefined!1683) (MissingVacant!1683 (index!8905 (_ BitVec 32))) )
))
(declare-fun lt!137678 () SeekEntryResult!1683)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276448 (= res!140473 (or (= lt!137678 (MissingZero!1683 i!1267)) (= lt!137678 (MissingVacant!1683 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13730 (_ BitVec 32)) SeekEntryResult!1683)

(assert (=> b!276448 (= lt!137678 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun b!276449 () Bool)

(assert (=> b!276449 (= e!176611 (and (= startIndex!26 i!1267) (bvslt startIndex!26 (bvsub (size!6866 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!276450 () Bool)

(declare-fun res!140476 () Bool)

(assert (=> b!276450 (=> (not res!140476) (not e!176609))))

(assert (=> b!276450 (= res!140476 (and (= (size!6866 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6866 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6866 a!3325))))))

(assert (= (and start!26644 res!140472) b!276450))

(assert (= (and b!276450 res!140476) b!276446))

(assert (= (and b!276446 res!140477) b!276444))

(assert (= (and b!276444 res!140474) b!276445))

(assert (= (and b!276445 res!140475) b!276448))

(assert (= (and b!276448 res!140473) b!276447))

(assert (= (and b!276447 res!140478) b!276449))

(declare-fun m!291811 () Bool)

(assert (=> b!276445 m!291811))

(declare-fun m!291813 () Bool)

(assert (=> b!276446 m!291813))

(declare-fun m!291815 () Bool)

(assert (=> start!26644 m!291815))

(declare-fun m!291817 () Bool)

(assert (=> start!26644 m!291817))

(declare-fun m!291819 () Bool)

(assert (=> b!276447 m!291819))

(declare-fun m!291821 () Bool)

(assert (=> b!276444 m!291821))

(declare-fun m!291823 () Bool)

(assert (=> b!276448 m!291823))

(push 1)

(assert (not start!26644))

(assert (not b!276448))

(assert (not b!276444))

(assert (not b!276446))

(assert (not b!276445))

(assert (not b!276447))

(check-sat)

