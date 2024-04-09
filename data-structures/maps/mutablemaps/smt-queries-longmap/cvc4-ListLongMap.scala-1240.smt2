; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26012 () Bool)

(assert start!26012)

(declare-fun b!268234 () Bool)

(declare-fun res!132551 () Bool)

(declare-fun e!173290 () Bool)

(assert (=> b!268234 (=> (not res!132551) (not e!173290))))

(declare-datatypes ((array!13098 0))(
  ( (array!13099 (arr!6198 (Array (_ BitVec 32) (_ BitVec 64))) (size!6550 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13098)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268234 (= res!132551 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268235 () Bool)

(declare-fun e!173288 () Bool)

(assert (=> b!268235 (= e!173288 false)))

(declare-fun lt!134857 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13098 (_ BitVec 32)) Bool)

(assert (=> b!268235 (= lt!134857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!132550 () Bool)

(assert (=> start!26012 (=> (not res!132550) (not e!173290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26012 (= res!132550 (validMask!0 mask!3868))))

(assert (=> start!26012 e!173290))

(declare-fun array_inv!4152 (array!13098) Bool)

(assert (=> start!26012 (array_inv!4152 a!3325)))

(assert (=> start!26012 true))

(declare-fun b!268236 () Bool)

(declare-fun res!132552 () Bool)

(assert (=> b!268236 (=> (not res!132552) (not e!173290))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268236 (= res!132552 (and (= (size!6550 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6550 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6550 a!3325))))))

(declare-fun b!268237 () Bool)

(declare-fun res!132553 () Bool)

(assert (=> b!268237 (=> (not res!132553) (not e!173290))))

(declare-datatypes ((List!4027 0))(
  ( (Nil!4024) (Cons!4023 (h!4690 (_ BitVec 64)) (t!9117 List!4027)) )
))
(declare-fun arrayNoDuplicates!0 (array!13098 (_ BitVec 32) List!4027) Bool)

(assert (=> b!268237 (= res!132553 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4024))))

(declare-fun b!268238 () Bool)

(declare-fun res!132555 () Bool)

(assert (=> b!268238 (=> (not res!132555) (not e!173290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268238 (= res!132555 (validKeyInArray!0 k!2581))))

(declare-fun b!268239 () Bool)

(assert (=> b!268239 (= e!173290 e!173288)))

(declare-fun res!132554 () Bool)

(assert (=> b!268239 (=> (not res!132554) (not e!173288))))

(declare-datatypes ((SeekEntryResult!1367 0))(
  ( (MissingZero!1367 (index!7638 (_ BitVec 32))) (Found!1367 (index!7639 (_ BitVec 32))) (Intermediate!1367 (undefined!2179 Bool) (index!7640 (_ BitVec 32)) (x!25972 (_ BitVec 32))) (Undefined!1367) (MissingVacant!1367 (index!7641 (_ BitVec 32))) )
))
(declare-fun lt!134858 () SeekEntryResult!1367)

(assert (=> b!268239 (= res!132554 (or (= lt!134858 (MissingZero!1367 i!1267)) (= lt!134858 (MissingVacant!1367 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13098 (_ BitVec 32)) SeekEntryResult!1367)

(assert (=> b!268239 (= lt!134858 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26012 res!132550) b!268236))

(assert (= (and b!268236 res!132552) b!268238))

(assert (= (and b!268238 res!132555) b!268237))

(assert (= (and b!268237 res!132553) b!268234))

(assert (= (and b!268234 res!132551) b!268239))

(assert (= (and b!268239 res!132554) b!268235))

(declare-fun m!284447 () Bool)

(assert (=> b!268235 m!284447))

(declare-fun m!284449 () Bool)

(assert (=> b!268234 m!284449))

(declare-fun m!284451 () Bool)

(assert (=> b!268237 m!284451))

(declare-fun m!284453 () Bool)

(assert (=> b!268238 m!284453))

(declare-fun m!284455 () Bool)

(assert (=> b!268239 m!284455))

(declare-fun m!284457 () Bool)

(assert (=> start!26012 m!284457))

(declare-fun m!284459 () Bool)

(assert (=> start!26012 m!284459))

(push 1)

(assert (not b!268234))

(assert (not start!26012))

(assert (not b!268237))

(assert (not b!268239))

(assert (not b!268235))

(assert (not b!268238))

(check-sat)

(pop 1)

