; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25996 () Bool)

(assert start!25996)

(declare-fun b!268097 () Bool)

(declare-fun res!132413 () Bool)

(declare-fun e!173223 () Bool)

(assert (=> b!268097 (=> (not res!132413) (not e!173223))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268097 (= res!132413 (validKeyInArray!0 k!2581))))

(declare-fun res!132415 () Bool)

(assert (=> start!25996 (=> (not res!132415) (not e!173223))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25996 (= res!132415 (validMask!0 mask!3868))))

(assert (=> start!25996 e!173223))

(declare-datatypes ((array!13082 0))(
  ( (array!13083 (arr!6190 (Array (_ BitVec 32) (_ BitVec 64))) (size!6542 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13082)

(declare-fun array_inv!4144 (array!13082) Bool)

(assert (=> start!25996 (array_inv!4144 a!3325)))

(assert (=> start!25996 true))

(declare-fun b!268098 () Bool)

(declare-fun res!132416 () Bool)

(assert (=> b!268098 (=> (not res!132416) (not e!173223))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268098 (= res!132416 (and (= (size!6542 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6542 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6542 a!3325))))))

(declare-fun b!268099 () Bool)

(declare-fun res!132417 () Bool)

(assert (=> b!268099 (=> (not res!132417) (not e!173223))))

(declare-fun arrayContainsKey!0 (array!13082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268099 (= res!132417 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!1359 0))(
  ( (MissingZero!1359 (index!7606 (_ BitVec 32))) (Found!1359 (index!7607 (_ BitVec 32))) (Intermediate!1359 (undefined!2171 Bool) (index!7608 (_ BitVec 32)) (x!25948 (_ BitVec 32))) (Undefined!1359) (MissingVacant!1359 (index!7609 (_ BitVec 32))) )
))
(declare-fun lt!134816 () SeekEntryResult!1359)

(declare-fun b!268100 () Bool)

(assert (=> b!268100 (= e!173223 (and (or (= lt!134816 (MissingZero!1359 i!1267)) (= lt!134816 (MissingVacant!1359 i!1267))) (bvsgt #b00000000000000000000000000000000 (size!6542 a!3325))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13082 (_ BitVec 32)) SeekEntryResult!1359)

(assert (=> b!268100 (= lt!134816 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268101 () Bool)

(declare-fun res!132414 () Bool)

(assert (=> b!268101 (=> (not res!132414) (not e!173223))))

(declare-datatypes ((List!4019 0))(
  ( (Nil!4016) (Cons!4015 (h!4682 (_ BitVec 64)) (t!9109 List!4019)) )
))
(declare-fun arrayNoDuplicates!0 (array!13082 (_ BitVec 32) List!4019) Bool)

(assert (=> b!268101 (= res!132414 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4016))))

(assert (= (and start!25996 res!132415) b!268098))

(assert (= (and b!268098 res!132416) b!268097))

(assert (= (and b!268097 res!132413) b!268101))

(assert (= (and b!268101 res!132414) b!268099))

(assert (= (and b!268099 res!132417) b!268100))

(declare-fun m!284341 () Bool)

(assert (=> b!268099 m!284341))

(declare-fun m!284343 () Bool)

(assert (=> b!268100 m!284343))

(declare-fun m!284345 () Bool)

(assert (=> b!268101 m!284345))

(declare-fun m!284347 () Bool)

(assert (=> b!268097 m!284347))

(declare-fun m!284349 () Bool)

(assert (=> start!25996 m!284349))

(declare-fun m!284351 () Bool)

(assert (=> start!25996 m!284351))

(push 1)

(assert (not b!268099))

(assert (not start!25996))

(assert (not b!268101))

