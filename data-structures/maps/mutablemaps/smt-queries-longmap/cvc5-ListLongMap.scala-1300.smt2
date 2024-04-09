; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26368 () Bool)

(assert start!26368)

(declare-fun b!273208 () Bool)

(declare-fun res!137238 () Bool)

(declare-fun e!175156 () Bool)

(assert (=> b!273208 (=> (not res!137238) (not e!175156))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273208 (= res!137238 (validKeyInArray!0 k!2581))))

(declare-fun b!273209 () Bool)

(declare-fun e!175154 () Bool)

(assert (=> b!273209 (= e!175154 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13454 0))(
  ( (array!13455 (arr!6376 (Array (_ BitVec 32) (_ BitVec 64))) (size!6728 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13454)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13454 (_ BitVec 32)) Bool)

(assert (=> b!273209 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8556 0))(
  ( (Unit!8557) )
))
(declare-fun lt!136304 () Unit!8556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8556)

(assert (=> b!273209 (= lt!136304 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136301 () array!13454)

(declare-datatypes ((SeekEntryResult!1545 0))(
  ( (MissingZero!1545 (index!8350 (_ BitVec 32))) (Found!1545 (index!8351 (_ BitVec 32))) (Intermediate!1545 (undefined!2357 Bool) (index!8352 (_ BitVec 32)) (x!26630 (_ BitVec 32))) (Undefined!1545) (MissingVacant!1545 (index!8353 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13454 (_ BitVec 32)) SeekEntryResult!1545)

(assert (=> b!273209 (= (seekEntryOrOpen!0 (select (arr!6376 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6376 a!3325) i!1267 k!2581) startIndex!26) lt!136301 mask!3868))))

(declare-fun lt!136300 () Unit!8556)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8556)

(assert (=> b!273209 (= lt!136300 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4205 0))(
  ( (Nil!4202) (Cons!4201 (h!4868 (_ BitVec 64)) (t!9295 List!4205)) )
))
(declare-fun arrayNoDuplicates!0 (array!13454 (_ BitVec 32) List!4205) Bool)

(assert (=> b!273209 (arrayNoDuplicates!0 lt!136301 #b00000000000000000000000000000000 Nil!4202)))

(declare-fun lt!136303 () Unit!8556)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13454 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4205) Unit!8556)

(assert (=> b!273209 (= lt!136303 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4202))))

(declare-fun b!273210 () Bool)

(declare-fun res!137241 () Bool)

(assert (=> b!273210 (=> (not res!137241) (not e!175154))))

(assert (=> b!273210 (= res!137241 (validKeyInArray!0 (select (arr!6376 a!3325) startIndex!26)))))

(declare-fun b!273211 () Bool)

(declare-fun res!137243 () Bool)

(assert (=> b!273211 (=> (not res!137243) (not e!175156))))

(declare-fun arrayContainsKey!0 (array!13454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273211 (= res!137243 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273212 () Bool)

(declare-fun res!137237 () Bool)

(assert (=> b!273212 (=> (not res!137237) (not e!175156))))

(assert (=> b!273212 (= res!137237 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4202))))

(declare-fun b!273213 () Bool)

(declare-fun res!137236 () Bool)

(declare-fun e!175155 () Bool)

(assert (=> b!273213 (=> (not res!137236) (not e!175155))))

(assert (=> b!273213 (= res!137236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273215 () Bool)

(declare-fun res!137240 () Bool)

(assert (=> b!273215 (=> (not res!137240) (not e!175156))))

(assert (=> b!273215 (= res!137240 (and (= (size!6728 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6728 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6728 a!3325))))))

(declare-fun b!273216 () Bool)

(assert (=> b!273216 (= e!175156 e!175155)))

(declare-fun res!137244 () Bool)

(assert (=> b!273216 (=> (not res!137244) (not e!175155))))

(declare-fun lt!136302 () SeekEntryResult!1545)

(assert (=> b!273216 (= res!137244 (or (= lt!136302 (MissingZero!1545 i!1267)) (= lt!136302 (MissingVacant!1545 i!1267))))))

(assert (=> b!273216 (= lt!136302 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!137242 () Bool)

(assert (=> start!26368 (=> (not res!137242) (not e!175156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26368 (= res!137242 (validMask!0 mask!3868))))

(assert (=> start!26368 e!175156))

(declare-fun array_inv!4330 (array!13454) Bool)

(assert (=> start!26368 (array_inv!4330 a!3325)))

(assert (=> start!26368 true))

(declare-fun b!273214 () Bool)

(assert (=> b!273214 (= e!175155 e!175154)))

(declare-fun res!137239 () Bool)

(assert (=> b!273214 (=> (not res!137239) (not e!175154))))

(assert (=> b!273214 (= res!137239 (not (= startIndex!26 i!1267)))))

(assert (=> b!273214 (= lt!136301 (array!13455 (store (arr!6376 a!3325) i!1267 k!2581) (size!6728 a!3325)))))

(assert (= (and start!26368 res!137242) b!273215))

(assert (= (and b!273215 res!137240) b!273208))

(assert (= (and b!273208 res!137238) b!273212))

(assert (= (and b!273212 res!137237) b!273211))

(assert (= (and b!273211 res!137243) b!273216))

(assert (= (and b!273216 res!137244) b!273213))

(assert (= (and b!273213 res!137236) b!273214))

(assert (= (and b!273214 res!137239) b!273210))

(assert (= (and b!273210 res!137241) b!273209))

(declare-fun m!288379 () Bool)

(assert (=> start!26368 m!288379))

(declare-fun m!288381 () Bool)

(assert (=> start!26368 m!288381))

(declare-fun m!288383 () Bool)

(assert (=> b!273211 m!288383))

(declare-fun m!288385 () Bool)

(assert (=> b!273210 m!288385))

(assert (=> b!273210 m!288385))

(declare-fun m!288387 () Bool)

(assert (=> b!273210 m!288387))

(declare-fun m!288389 () Bool)

(assert (=> b!273216 m!288389))

(declare-fun m!288391 () Bool)

(assert (=> b!273209 m!288391))

(declare-fun m!288393 () Bool)

(assert (=> b!273209 m!288393))

(declare-fun m!288395 () Bool)

(assert (=> b!273209 m!288395))

(declare-fun m!288397 () Bool)

(assert (=> b!273209 m!288397))

(declare-fun m!288399 () Bool)

(assert (=> b!273209 m!288399))

(assert (=> b!273209 m!288393))

(declare-fun m!288401 () Bool)

(assert (=> b!273209 m!288401))

(assert (=> b!273209 m!288385))

(declare-fun m!288403 () Bool)

(assert (=> b!273209 m!288403))

(declare-fun m!288405 () Bool)

(assert (=> b!273209 m!288405))

(assert (=> b!273209 m!288385))

(declare-fun m!288407 () Bool)

(assert (=> b!273209 m!288407))

(declare-fun m!288409 () Bool)

(assert (=> b!273212 m!288409))

(declare-fun m!288411 () Bool)

(assert (=> b!273213 m!288411))

(declare-fun m!288413 () Bool)

(assert (=> b!273208 m!288413))

(assert (=> b!273214 m!288395))

(push 1)

