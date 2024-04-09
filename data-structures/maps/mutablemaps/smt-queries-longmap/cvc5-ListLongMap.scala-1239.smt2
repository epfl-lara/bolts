; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26002 () Bool)

(assert start!26002)

(declare-fun b!268144 () Bool)

(declare-fun res!132460 () Bool)

(declare-fun e!173244 () Bool)

(assert (=> b!268144 (=> (not res!132460) (not e!173244))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268144 (= res!132460 (validKeyInArray!0 k!2581))))

(declare-fun b!268145 () Bool)

(declare-fun res!132465 () Bool)

(assert (=> b!268145 (=> (not res!132465) (not e!173244))))

(declare-datatypes ((array!13088 0))(
  ( (array!13089 (arr!6193 (Array (_ BitVec 32) (_ BitVec 64))) (size!6545 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13088)

(declare-fun arrayContainsKey!0 (array!13088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268145 (= res!132465 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268146 () Bool)

(declare-fun res!132462 () Bool)

(assert (=> b!268146 (=> (not res!132462) (not e!173244))))

(declare-datatypes ((List!4022 0))(
  ( (Nil!4019) (Cons!4018 (h!4685 (_ BitVec 64)) (t!9112 List!4022)) )
))
(declare-fun arrayNoDuplicates!0 (array!13088 (_ BitVec 32) List!4022) Bool)

(assert (=> b!268146 (= res!132462 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4019))))

(declare-fun b!268147 () Bool)

(declare-fun e!173245 () Bool)

(assert (=> b!268147 (= e!173244 e!173245)))

(declare-fun res!132463 () Bool)

(assert (=> b!268147 (=> (not res!132463) (not e!173245))))

(declare-datatypes ((SeekEntryResult!1362 0))(
  ( (MissingZero!1362 (index!7618 (_ BitVec 32))) (Found!1362 (index!7619 (_ BitVec 32))) (Intermediate!1362 (undefined!2174 Bool) (index!7620 (_ BitVec 32)) (x!25959 (_ BitVec 32))) (Undefined!1362) (MissingVacant!1362 (index!7621 (_ BitVec 32))) )
))
(declare-fun lt!134828 () SeekEntryResult!1362)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268147 (= res!132463 (or (= lt!134828 (MissingZero!1362 i!1267)) (= lt!134828 (MissingVacant!1362 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13088 (_ BitVec 32)) SeekEntryResult!1362)

(assert (=> b!268147 (= lt!134828 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!132461 () Bool)

(assert (=> start!26002 (=> (not res!132461) (not e!173244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26002 (= res!132461 (validMask!0 mask!3868))))

(assert (=> start!26002 e!173244))

(declare-fun array_inv!4147 (array!13088) Bool)

(assert (=> start!26002 (array_inv!4147 a!3325)))

(assert (=> start!26002 true))

(declare-fun b!268148 () Bool)

(declare-fun res!132464 () Bool)

(assert (=> b!268148 (=> (not res!132464) (not e!173244))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268148 (= res!132464 (and (= (size!6545 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6545 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6545 a!3325))))))

(declare-fun b!268149 () Bool)

(assert (=> b!268149 (= e!173245 false)))

(declare-fun lt!134827 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13088 (_ BitVec 32)) Bool)

(assert (=> b!268149 (= lt!134827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26002 res!132461) b!268148))

(assert (= (and b!268148 res!132464) b!268144))

(assert (= (and b!268144 res!132460) b!268146))

(assert (= (and b!268146 res!132462) b!268145))

(assert (= (and b!268145 res!132465) b!268147))

(assert (= (and b!268147 res!132463) b!268149))

(declare-fun m!284377 () Bool)

(assert (=> b!268144 m!284377))

(declare-fun m!284379 () Bool)

(assert (=> b!268146 m!284379))

(declare-fun m!284381 () Bool)

(assert (=> b!268145 m!284381))

(declare-fun m!284383 () Bool)

(assert (=> b!268149 m!284383))

(declare-fun m!284385 () Bool)

(assert (=> b!268147 m!284385))

(declare-fun m!284387 () Bool)

(assert (=> start!26002 m!284387))

(declare-fun m!284389 () Bool)

(assert (=> start!26002 m!284389))

(push 1)

(assert (not b!268149))

(assert (not b!268145))

