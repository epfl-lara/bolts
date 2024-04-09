; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26446 () Bool)

(assert start!26446)

(declare-fun b!274272 () Bool)

(declare-fun res!138306 () Bool)

(declare-fun e!175636 () Bool)

(assert (=> b!274272 (=> (not res!138306) (not e!175636))))

(declare-datatypes ((array!13532 0))(
  ( (array!13533 (arr!6415 (Array (_ BitVec 32) (_ BitVec 64))) (size!6767 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13532)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274272 (= res!138306 (and (= (size!6767 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6767 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6767 a!3325))))))

(declare-fun b!274273 () Bool)

(declare-fun res!138305 () Bool)

(assert (=> b!274273 (=> (not res!138305) (not e!175636))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274273 (= res!138305 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274274 () Bool)

(declare-fun e!175632 () Bool)

(declare-fun e!175633 () Bool)

(assert (=> b!274274 (= e!175632 e!175633)))

(declare-fun res!138300 () Bool)

(assert (=> b!274274 (=> (not res!138300) (not e!175633))))

(assert (=> b!274274 (= res!138300 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136897 () array!13532)

(assert (=> b!274274 (= lt!136897 (array!13533 (store (arr!6415 a!3325) i!1267 k!2581) (size!6767 a!3325)))))

(declare-fun b!274275 () Bool)

(declare-fun res!138302 () Bool)

(assert (=> b!274275 (=> (not res!138302) (not e!175636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274275 (= res!138302 (validKeyInArray!0 k!2581))))

(declare-fun b!274276 () Bool)

(assert (=> b!274276 (= e!175636 e!175632)))

(declare-fun res!138301 () Bool)

(assert (=> b!274276 (=> (not res!138301) (not e!175632))))

(declare-datatypes ((SeekEntryResult!1584 0))(
  ( (MissingZero!1584 (index!8506 (_ BitVec 32))) (Found!1584 (index!8507 (_ BitVec 32))) (Intermediate!1584 (undefined!2396 Bool) (index!8508 (_ BitVec 32)) (x!26773 (_ BitVec 32))) (Undefined!1584) (MissingVacant!1584 (index!8509 (_ BitVec 32))) )
))
(declare-fun lt!136899 () SeekEntryResult!1584)

(assert (=> b!274276 (= res!138301 (or (= lt!136899 (MissingZero!1584 i!1267)) (= lt!136899 (MissingVacant!1584 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13532 (_ BitVec 32)) SeekEntryResult!1584)

(assert (=> b!274276 (= lt!136899 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274277 () Bool)

(declare-fun res!138308 () Bool)

(assert (=> b!274277 (=> (not res!138308) (not e!175633))))

(assert (=> b!274277 (= res!138308 (validKeyInArray!0 (select (arr!6415 a!3325) startIndex!26)))))

(declare-fun b!274278 () Bool)

(declare-fun e!175635 () Bool)

(assert (=> b!274278 (= e!175635 true)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13532 (_ BitVec 32)) Bool)

(assert (=> b!274278 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136897 mask!3868)))

(declare-datatypes ((Unit!8634 0))(
  ( (Unit!8635) )
))
(declare-fun lt!136898 () Unit!8634)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13532 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8634)

(assert (=> b!274278 (= lt!136898 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274279 () Bool)

(assert (=> b!274279 (= e!175633 (not e!175635))))

(declare-fun res!138303 () Bool)

(assert (=> b!274279 (=> res!138303 e!175635)))

(assert (=> b!274279 (= res!138303 (or (bvsge startIndex!26 (bvsub (size!6767 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274279 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!136900 () Unit!8634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8634)

(assert (=> b!274279 (= lt!136900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274279 (= (seekEntryOrOpen!0 (select (arr!6415 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6415 a!3325) i!1267 k!2581) startIndex!26) lt!136897 mask!3868))))

(declare-fun lt!136901 () Unit!8634)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13532 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8634)

(assert (=> b!274279 (= lt!136901 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4244 0))(
  ( (Nil!4241) (Cons!4240 (h!4907 (_ BitVec 64)) (t!9334 List!4244)) )
))
(declare-fun arrayNoDuplicates!0 (array!13532 (_ BitVec 32) List!4244) Bool)

(assert (=> b!274279 (arrayNoDuplicates!0 lt!136897 #b00000000000000000000000000000000 Nil!4241)))

(declare-fun lt!136896 () Unit!8634)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13532 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4244) Unit!8634)

(assert (=> b!274279 (= lt!136896 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4241))))

(declare-fun b!274280 () Bool)

(declare-fun res!138307 () Bool)

(assert (=> b!274280 (=> (not res!138307) (not e!175636))))

(assert (=> b!274280 (= res!138307 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4241))))

(declare-fun res!138309 () Bool)

(assert (=> start!26446 (=> (not res!138309) (not e!175636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26446 (= res!138309 (validMask!0 mask!3868))))

(assert (=> start!26446 e!175636))

(declare-fun array_inv!4369 (array!13532) Bool)

(assert (=> start!26446 (array_inv!4369 a!3325)))

(assert (=> start!26446 true))

(declare-fun b!274281 () Bool)

(declare-fun res!138304 () Bool)

(assert (=> b!274281 (=> (not res!138304) (not e!175632))))

(assert (=> b!274281 (= res!138304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26446 res!138309) b!274272))

(assert (= (and b!274272 res!138306) b!274275))

(assert (= (and b!274275 res!138302) b!274280))

(assert (= (and b!274280 res!138307) b!274273))

(assert (= (and b!274273 res!138305) b!274276))

(assert (= (and b!274276 res!138301) b!274281))

(assert (= (and b!274281 res!138304) b!274274))

(assert (= (and b!274274 res!138300) b!274277))

(assert (= (and b!274277 res!138308) b!274279))

(assert (= (and b!274279 (not res!138303)) b!274278))

(declare-fun m!289795 () Bool)

(assert (=> b!274281 m!289795))

(declare-fun m!289797 () Bool)

(assert (=> b!274273 m!289797))

(declare-fun m!289799 () Bool)

(assert (=> b!274277 m!289799))

(assert (=> b!274277 m!289799))

(declare-fun m!289801 () Bool)

(assert (=> b!274277 m!289801))

(declare-fun m!289803 () Bool)

(assert (=> b!274279 m!289803))

(declare-fun m!289805 () Bool)

(assert (=> b!274279 m!289805))

(declare-fun m!289807 () Bool)

(assert (=> b!274279 m!289807))

(assert (=> b!274279 m!289805))

(declare-fun m!289809 () Bool)

(assert (=> b!274279 m!289809))

(declare-fun m!289811 () Bool)

(assert (=> b!274279 m!289811))

(declare-fun m!289813 () Bool)

(assert (=> b!274279 m!289813))

(assert (=> b!274279 m!289799))

(declare-fun m!289815 () Bool)

(assert (=> b!274279 m!289815))

(declare-fun m!289817 () Bool)

(assert (=> b!274279 m!289817))

(assert (=> b!274279 m!289799))

(declare-fun m!289819 () Bool)

(assert (=> b!274279 m!289819))

(declare-fun m!289821 () Bool)

(assert (=> b!274280 m!289821))

(assert (=> b!274274 m!289809))

(declare-fun m!289823 () Bool)

(assert (=> start!26446 m!289823))

(declare-fun m!289825 () Bool)

(assert (=> start!26446 m!289825))

(declare-fun m!289827 () Bool)

(assert (=> b!274275 m!289827))

(declare-fun m!289829 () Bool)

(assert (=> b!274278 m!289829))

(declare-fun m!289831 () Bool)

(assert (=> b!274278 m!289831))

(declare-fun m!289833 () Bool)

(assert (=> b!274276 m!289833))

(push 1)

