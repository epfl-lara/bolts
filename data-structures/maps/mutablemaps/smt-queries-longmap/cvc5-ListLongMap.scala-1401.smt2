; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27268 () Bool)

(assert start!27268)

(declare-fun b!282265 () Bool)

(declare-fun res!145379 () Bool)

(declare-fun e!179238 () Bool)

(assert (=> b!282265 (=> (not res!145379) (not e!179238))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282265 (= res!145379 (validKeyInArray!0 k!2581))))

(declare-fun res!145373 () Bool)

(assert (=> start!27268 (=> (not res!145373) (not e!179238))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27268 (= res!145373 (validMask!0 mask!3868))))

(assert (=> start!27268 e!179238))

(declare-datatypes ((array!14075 0))(
  ( (array!14076 (arr!6679 (Array (_ BitVec 32) (_ BitVec 64))) (size!7031 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14075)

(declare-fun array_inv!4633 (array!14075) Bool)

(assert (=> start!27268 (array_inv!4633 a!3325)))

(assert (=> start!27268 true))

(declare-fun b!282266 () Bool)

(declare-fun e!179237 () Bool)

(assert (=> b!282266 (= e!179237 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14075 (_ BitVec 32)) Bool)

(assert (=> b!282266 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8959 0))(
  ( (Unit!8960) )
))
(declare-fun lt!139499 () Unit!8959)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8959)

(assert (=> b!282266 (= lt!139499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139497 () array!14075)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1848 0))(
  ( (MissingZero!1848 (index!9562 (_ BitVec 32))) (Found!1848 (index!9563 (_ BitVec 32))) (Intermediate!1848 (undefined!2660 Bool) (index!9564 (_ BitVec 32)) (x!27750 (_ BitVec 32))) (Undefined!1848) (MissingVacant!1848 (index!9565 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14075 (_ BitVec 32)) SeekEntryResult!1848)

(assert (=> b!282266 (= (seekEntryOrOpen!0 (select (arr!6679 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6679 a!3325) i!1267 k!2581) startIndex!26) lt!139497 mask!3868))))

(declare-fun lt!139498 () Unit!8959)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14075 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8959)

(assert (=> b!282266 (= lt!139498 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4508 0))(
  ( (Nil!4505) (Cons!4504 (h!5174 (_ BitVec 64)) (t!9598 List!4508)) )
))
(declare-fun arrayNoDuplicates!0 (array!14075 (_ BitVec 32) List!4508) Bool)

(assert (=> b!282266 (arrayNoDuplicates!0 lt!139497 #b00000000000000000000000000000000 Nil!4505)))

(declare-fun lt!139495 () Unit!8959)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14075 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4508) Unit!8959)

(assert (=> b!282266 (= lt!139495 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4505))))

(declare-fun b!282267 () Bool)

(declare-fun e!179239 () Bool)

(assert (=> b!282267 (= e!179238 e!179239)))

(declare-fun res!145374 () Bool)

(assert (=> b!282267 (=> (not res!145374) (not e!179239))))

(declare-fun lt!139496 () SeekEntryResult!1848)

(assert (=> b!282267 (= res!145374 (or (= lt!139496 (MissingZero!1848 i!1267)) (= lt!139496 (MissingVacant!1848 i!1267))))))

(assert (=> b!282267 (= lt!139496 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282268 () Bool)

(declare-fun res!145372 () Bool)

(assert (=> b!282268 (=> (not res!145372) (not e!179238))))

(declare-fun arrayContainsKey!0 (array!14075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282268 (= res!145372 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282269 () Bool)

(declare-fun res!145378 () Bool)

(assert (=> b!282269 (=> (not res!145378) (not e!179238))))

(assert (=> b!282269 (= res!145378 (and (= (size!7031 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7031 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7031 a!3325))))))

(declare-fun b!282270 () Bool)

(declare-fun res!145375 () Bool)

(assert (=> b!282270 (=> (not res!145375) (not e!179238))))

(assert (=> b!282270 (= res!145375 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4505))))

(declare-fun b!282271 () Bool)

(assert (=> b!282271 (= e!179239 e!179237)))

(declare-fun res!145376 () Bool)

(assert (=> b!282271 (=> (not res!145376) (not e!179237))))

(assert (=> b!282271 (= res!145376 (not (= startIndex!26 i!1267)))))

(assert (=> b!282271 (= lt!139497 (array!14076 (store (arr!6679 a!3325) i!1267 k!2581) (size!7031 a!3325)))))

(declare-fun b!282272 () Bool)

(declare-fun res!145377 () Bool)

(assert (=> b!282272 (=> (not res!145377) (not e!179239))))

(assert (=> b!282272 (= res!145377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282273 () Bool)

(declare-fun res!145380 () Bool)

(assert (=> b!282273 (=> (not res!145380) (not e!179237))))

(assert (=> b!282273 (= res!145380 (validKeyInArray!0 (select (arr!6679 a!3325) startIndex!26)))))

(assert (= (and start!27268 res!145373) b!282269))

(assert (= (and b!282269 res!145378) b!282265))

(assert (= (and b!282265 res!145379) b!282270))

(assert (= (and b!282270 res!145375) b!282268))

(assert (= (and b!282268 res!145372) b!282267))

(assert (= (and b!282267 res!145374) b!282272))

(assert (= (and b!282272 res!145377) b!282271))

(assert (= (and b!282271 res!145376) b!282273))

(assert (= (and b!282273 res!145380) b!282266))

(declare-fun m!296833 () Bool)

(assert (=> start!27268 m!296833))

(declare-fun m!296835 () Bool)

(assert (=> start!27268 m!296835))

(declare-fun m!296837 () Bool)

(assert (=> b!282272 m!296837))

(declare-fun m!296839 () Bool)

(assert (=> b!282267 m!296839))

(declare-fun m!296841 () Bool)

(assert (=> b!282273 m!296841))

(assert (=> b!282273 m!296841))

(declare-fun m!296843 () Bool)

(assert (=> b!282273 m!296843))

(declare-fun m!296845 () Bool)

(assert (=> b!282270 m!296845))

(declare-fun m!296847 () Bool)

(assert (=> b!282271 m!296847))

(declare-fun m!296849 () Bool)

(assert (=> b!282265 m!296849))

(declare-fun m!296851 () Bool)

(assert (=> b!282268 m!296851))

(declare-fun m!296853 () Bool)

(assert (=> b!282266 m!296853))

(declare-fun m!296855 () Bool)

(assert (=> b!282266 m!296855))

(assert (=> b!282266 m!296847))

(declare-fun m!296857 () Bool)

(assert (=> b!282266 m!296857))

(assert (=> b!282266 m!296855))

(declare-fun m!296859 () Bool)

(assert (=> b!282266 m!296859))

(assert (=> b!282266 m!296841))

(declare-fun m!296861 () Bool)

(assert (=> b!282266 m!296861))

(declare-fun m!296863 () Bool)

(assert (=> b!282266 m!296863))

(assert (=> b!282266 m!296841))

(declare-fun m!296865 () Bool)

(assert (=> b!282266 m!296865))

(declare-fun m!296867 () Bool)

(assert (=> b!282266 m!296867))

(push 1)

