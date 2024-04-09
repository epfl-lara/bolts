; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27266 () Bool)

(assert start!27266)

(declare-fun b!282238 () Bool)

(declare-fun e!179224 () Bool)

(declare-fun e!179226 () Bool)

(assert (=> b!282238 (= e!179224 e!179226)))

(declare-fun res!145346 () Bool)

(assert (=> b!282238 (=> (not res!145346) (not e!179226))))

(declare-datatypes ((SeekEntryResult!1847 0))(
  ( (MissingZero!1847 (index!9558 (_ BitVec 32))) (Found!1847 (index!9559 (_ BitVec 32))) (Intermediate!1847 (undefined!2659 Bool) (index!9560 (_ BitVec 32)) (x!27741 (_ BitVec 32))) (Undefined!1847) (MissingVacant!1847 (index!9561 (_ BitVec 32))) )
))
(declare-fun lt!139484 () SeekEntryResult!1847)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282238 (= res!145346 (or (= lt!139484 (MissingZero!1847 i!1267)) (= lt!139484 (MissingVacant!1847 i!1267))))))

(declare-datatypes ((array!14073 0))(
  ( (array!14074 (arr!6678 (Array (_ BitVec 32) (_ BitVec 64))) (size!7030 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14073)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14073 (_ BitVec 32)) SeekEntryResult!1847)

(assert (=> b!282238 (= lt!139484 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!145345 () Bool)

(assert (=> start!27266 (=> (not res!145345) (not e!179224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27266 (= res!145345 (validMask!0 mask!3868))))

(assert (=> start!27266 e!179224))

(declare-fun array_inv!4632 (array!14073) Bool)

(assert (=> start!27266 (array_inv!4632 a!3325)))

(assert (=> start!27266 true))

(declare-fun b!282239 () Bool)

(declare-fun res!145352 () Bool)

(assert (=> b!282239 (=> (not res!145352) (not e!179224))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282239 (= res!145352 (and (= (size!7030 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7030 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7030 a!3325))))))

(declare-fun b!282240 () Bool)

(declare-fun e!179227 () Bool)

(assert (=> b!282240 (= e!179227 (not (or (bvsge startIndex!26 (bvsub (size!7030 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14073 (_ BitVec 32)) Bool)

(assert (=> b!282240 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8957 0))(
  ( (Unit!8958) )
))
(declare-fun lt!139480 () Unit!8957)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8957)

(assert (=> b!282240 (= lt!139480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139481 () array!14073)

(assert (=> b!282240 (= (seekEntryOrOpen!0 (select (arr!6678 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6678 a!3325) i!1267 k!2581) startIndex!26) lt!139481 mask!3868))))

(declare-fun lt!139482 () Unit!8957)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14073 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8957)

(assert (=> b!282240 (= lt!139482 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4507 0))(
  ( (Nil!4504) (Cons!4503 (h!5173 (_ BitVec 64)) (t!9597 List!4507)) )
))
(declare-fun arrayNoDuplicates!0 (array!14073 (_ BitVec 32) List!4507) Bool)

(assert (=> b!282240 (arrayNoDuplicates!0 lt!139481 #b00000000000000000000000000000000 Nil!4504)))

(declare-fun lt!139483 () Unit!8957)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14073 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4507) Unit!8957)

(assert (=> b!282240 (= lt!139483 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4504))))

(declare-fun b!282241 () Bool)

(declare-fun res!145347 () Bool)

(assert (=> b!282241 (=> (not res!145347) (not e!179224))))

(declare-fun arrayContainsKey!0 (array!14073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282241 (= res!145347 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282242 () Bool)

(declare-fun res!145353 () Bool)

(assert (=> b!282242 (=> (not res!145353) (not e!179227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282242 (= res!145353 (validKeyInArray!0 (select (arr!6678 a!3325) startIndex!26)))))

(declare-fun b!282243 () Bool)

(declare-fun res!145350 () Bool)

(assert (=> b!282243 (=> (not res!145350) (not e!179224))))

(assert (=> b!282243 (= res!145350 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4504))))

(declare-fun b!282244 () Bool)

(declare-fun res!145349 () Bool)

(assert (=> b!282244 (=> (not res!145349) (not e!179226))))

(assert (=> b!282244 (= res!145349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282245 () Bool)

(assert (=> b!282245 (= e!179226 e!179227)))

(declare-fun res!145348 () Bool)

(assert (=> b!282245 (=> (not res!145348) (not e!179227))))

(assert (=> b!282245 (= res!145348 (not (= startIndex!26 i!1267)))))

(assert (=> b!282245 (= lt!139481 (array!14074 (store (arr!6678 a!3325) i!1267 k!2581) (size!7030 a!3325)))))

(declare-fun b!282246 () Bool)

(declare-fun res!145351 () Bool)

(assert (=> b!282246 (=> (not res!145351) (not e!179224))))

(assert (=> b!282246 (= res!145351 (validKeyInArray!0 k!2581))))

(assert (= (and start!27266 res!145345) b!282239))

(assert (= (and b!282239 res!145352) b!282246))

(assert (= (and b!282246 res!145351) b!282243))

(assert (= (and b!282243 res!145350) b!282241))

(assert (= (and b!282241 res!145347) b!282238))

(assert (= (and b!282238 res!145346) b!282244))

(assert (= (and b!282244 res!145349) b!282245))

(assert (= (and b!282245 res!145348) b!282242))

(assert (= (and b!282242 res!145353) b!282240))

(declare-fun m!296797 () Bool)

(assert (=> b!282241 m!296797))

(declare-fun m!296799 () Bool)

(assert (=> b!282242 m!296799))

(assert (=> b!282242 m!296799))

(declare-fun m!296801 () Bool)

(assert (=> b!282242 m!296801))

(declare-fun m!296803 () Bool)

(assert (=> b!282243 m!296803))

(declare-fun m!296805 () Bool)

(assert (=> start!27266 m!296805))

(declare-fun m!296807 () Bool)

(assert (=> start!27266 m!296807))

(declare-fun m!296809 () Bool)

(assert (=> b!282240 m!296809))

(declare-fun m!296811 () Bool)

(assert (=> b!282240 m!296811))

(declare-fun m!296813 () Bool)

(assert (=> b!282240 m!296813))

(assert (=> b!282240 m!296799))

(declare-fun m!296815 () Bool)

(assert (=> b!282240 m!296815))

(declare-fun m!296817 () Bool)

(assert (=> b!282240 m!296817))

(assert (=> b!282240 m!296799))

(declare-fun m!296819 () Bool)

(assert (=> b!282240 m!296819))

(declare-fun m!296821 () Bool)

(assert (=> b!282240 m!296821))

(declare-fun m!296823 () Bool)

(assert (=> b!282240 m!296823))

(assert (=> b!282240 m!296821))

(declare-fun m!296825 () Bool)

(assert (=> b!282240 m!296825))

(declare-fun m!296827 () Bool)

(assert (=> b!282246 m!296827))

(assert (=> b!282245 m!296811))

(declare-fun m!296829 () Bool)

(assert (=> b!282244 m!296829))

(declare-fun m!296831 () Bool)

(assert (=> b!282238 m!296831))

(push 1)

(assert (not start!27266))

(assert (not b!282241))

(assert (not b!282246))

(assert (not b!282243))

(assert (not b!282244))

(assert (not b!282238))

(assert (not b!282240))

