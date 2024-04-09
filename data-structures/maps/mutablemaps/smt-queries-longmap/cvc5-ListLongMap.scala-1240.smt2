; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26008 () Bool)

(assert start!26008)

(declare-fun b!268198 () Bool)

(declare-fun e!173270 () Bool)

(declare-fun e!173272 () Bool)

(assert (=> b!268198 (= e!173270 e!173272)))

(declare-fun res!132519 () Bool)

(assert (=> b!268198 (=> (not res!132519) (not e!173272))))

(declare-datatypes ((SeekEntryResult!1365 0))(
  ( (MissingZero!1365 (index!7630 (_ BitVec 32))) (Found!1365 (index!7631 (_ BitVec 32))) (Intermediate!1365 (undefined!2177 Bool) (index!7632 (_ BitVec 32)) (x!25970 (_ BitVec 32))) (Undefined!1365) (MissingVacant!1365 (index!7633 (_ BitVec 32))) )
))
(declare-fun lt!134845 () SeekEntryResult!1365)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268198 (= res!132519 (or (= lt!134845 (MissingZero!1365 i!1267)) (= lt!134845 (MissingVacant!1365 i!1267))))))

(declare-datatypes ((array!13094 0))(
  ( (array!13095 (arr!6196 (Array (_ BitVec 32) (_ BitVec 64))) (size!6548 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13094)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13094 (_ BitVec 32)) SeekEntryResult!1365)

(assert (=> b!268198 (= lt!134845 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268199 () Bool)

(assert (=> b!268199 (= e!173272 false)))

(declare-fun lt!134846 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13094 (_ BitVec 32)) Bool)

(assert (=> b!268199 (= lt!134846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!132515 () Bool)

(assert (=> start!26008 (=> (not res!132515) (not e!173270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26008 (= res!132515 (validMask!0 mask!3868))))

(assert (=> start!26008 e!173270))

(declare-fun array_inv!4150 (array!13094) Bool)

(assert (=> start!26008 (array_inv!4150 a!3325)))

(assert (=> start!26008 true))

(declare-fun b!268200 () Bool)

(declare-fun res!132517 () Bool)

(assert (=> b!268200 (=> (not res!132517) (not e!173270))))

(declare-fun arrayContainsKey!0 (array!13094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268200 (= res!132517 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268201 () Bool)

(declare-fun res!132518 () Bool)

(assert (=> b!268201 (=> (not res!132518) (not e!173270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268201 (= res!132518 (validKeyInArray!0 k!2581))))

(declare-fun b!268202 () Bool)

(declare-fun res!132516 () Bool)

(assert (=> b!268202 (=> (not res!132516) (not e!173270))))

(declare-datatypes ((List!4025 0))(
  ( (Nil!4022) (Cons!4021 (h!4688 (_ BitVec 64)) (t!9115 List!4025)) )
))
(declare-fun arrayNoDuplicates!0 (array!13094 (_ BitVec 32) List!4025) Bool)

(assert (=> b!268202 (= res!132516 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4022))))

(declare-fun b!268203 () Bool)

(declare-fun res!132514 () Bool)

(assert (=> b!268203 (=> (not res!132514) (not e!173270))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268203 (= res!132514 (and (= (size!6548 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6548 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6548 a!3325))))))

(assert (= (and start!26008 res!132515) b!268203))

(assert (= (and b!268203 res!132514) b!268201))

(assert (= (and b!268201 res!132518) b!268202))

(assert (= (and b!268202 res!132516) b!268200))

(assert (= (and b!268200 res!132517) b!268198))

(assert (= (and b!268198 res!132519) b!268199))

(declare-fun m!284419 () Bool)

(assert (=> start!26008 m!284419))

(declare-fun m!284421 () Bool)

(assert (=> start!26008 m!284421))

(declare-fun m!284423 () Bool)

(assert (=> b!268200 m!284423))

(declare-fun m!284425 () Bool)

(assert (=> b!268202 m!284425))

(declare-fun m!284427 () Bool)

(assert (=> b!268201 m!284427))

(declare-fun m!284429 () Bool)

(assert (=> b!268198 m!284429))

(declare-fun m!284431 () Bool)

(assert (=> b!268199 m!284431))

(push 1)

(assert (not b!268202))

(assert (not b!268201))

(assert (not b!268199))

(assert (not b!268200))

