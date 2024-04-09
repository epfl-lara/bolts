; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26360 () Bool)

(assert start!26360)

(declare-fun b!273100 () Bool)

(declare-fun e!175105 () Bool)

(declare-fun e!175108 () Bool)

(assert (=> b!273100 (= e!175105 e!175108)))

(declare-fun res!137136 () Bool)

(assert (=> b!273100 (=> (not res!137136) (not e!175108))))

(declare-datatypes ((SeekEntryResult!1541 0))(
  ( (MissingZero!1541 (index!8334 (_ BitVec 32))) (Found!1541 (index!8335 (_ BitVec 32))) (Intermediate!1541 (undefined!2353 Bool) (index!8336 (_ BitVec 32)) (x!26610 (_ BitVec 32))) (Undefined!1541) (MissingVacant!1541 (index!8337 (_ BitVec 32))) )
))
(declare-fun lt!136253 () SeekEntryResult!1541)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273100 (= res!137136 (or (= lt!136253 (MissingZero!1541 i!1267)) (= lt!136253 (MissingVacant!1541 i!1267))))))

(declare-datatypes ((array!13446 0))(
  ( (array!13447 (arr!6372 (Array (_ BitVec 32) (_ BitVec 64))) (size!6724 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13446)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13446 (_ BitVec 32)) SeekEntryResult!1541)

(assert (=> b!273100 (= lt!136253 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273101 () Bool)

(declare-fun res!137135 () Bool)

(assert (=> b!273101 (=> (not res!137135) (not e!175105))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273101 (= res!137135 (and (= (size!6724 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6724 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6724 a!3325))))))

(declare-fun b!273102 () Bool)

(declare-fun e!175107 () Bool)

(assert (=> b!273102 (= e!175107 (not true))))

(declare-fun lt!136250 () array!13446)

(assert (=> b!273102 (= (seekEntryOrOpen!0 (select (arr!6372 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6372 a!3325) i!1267 k!2581) startIndex!26) lt!136250 mask!3868))))

(declare-datatypes ((Unit!8548 0))(
  ( (Unit!8549) )
))
(declare-fun lt!136252 () Unit!8548)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8548)

(assert (=> b!273102 (= lt!136252 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4201 0))(
  ( (Nil!4198) (Cons!4197 (h!4864 (_ BitVec 64)) (t!9291 List!4201)) )
))
(declare-fun arrayNoDuplicates!0 (array!13446 (_ BitVec 32) List!4201) Bool)

(assert (=> b!273102 (arrayNoDuplicates!0 lt!136250 #b00000000000000000000000000000000 Nil!4198)))

(declare-fun lt!136251 () Unit!8548)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13446 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4201) Unit!8548)

(assert (=> b!273102 (= lt!136251 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4198))))

(declare-fun b!273103 () Bool)

(assert (=> b!273103 (= e!175108 e!175107)))

(declare-fun res!137133 () Bool)

(assert (=> b!273103 (=> (not res!137133) (not e!175107))))

(assert (=> b!273103 (= res!137133 (not (= startIndex!26 i!1267)))))

(assert (=> b!273103 (= lt!136250 (array!13447 (store (arr!6372 a!3325) i!1267 k!2581) (size!6724 a!3325)))))

(declare-fun res!137130 () Bool)

(assert (=> start!26360 (=> (not res!137130) (not e!175105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26360 (= res!137130 (validMask!0 mask!3868))))

(assert (=> start!26360 e!175105))

(declare-fun array_inv!4326 (array!13446) Bool)

(assert (=> start!26360 (array_inv!4326 a!3325)))

(assert (=> start!26360 true))

(declare-fun b!273104 () Bool)

(declare-fun res!137128 () Bool)

(assert (=> b!273104 (=> (not res!137128) (not e!175105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273104 (= res!137128 (validKeyInArray!0 k!2581))))

(declare-fun b!273105 () Bool)

(declare-fun res!137132 () Bool)

(assert (=> b!273105 (=> (not res!137132) (not e!175105))))

(declare-fun arrayContainsKey!0 (array!13446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273105 (= res!137132 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273106 () Bool)

(declare-fun res!137131 () Bool)

(assert (=> b!273106 (=> (not res!137131) (not e!175108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13446 (_ BitVec 32)) Bool)

(assert (=> b!273106 (= res!137131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273107 () Bool)

(declare-fun res!137134 () Bool)

(assert (=> b!273107 (=> (not res!137134) (not e!175107))))

(assert (=> b!273107 (= res!137134 (validKeyInArray!0 (select (arr!6372 a!3325) startIndex!26)))))

(declare-fun b!273108 () Bool)

(declare-fun res!137129 () Bool)

(assert (=> b!273108 (=> (not res!137129) (not e!175105))))

(assert (=> b!273108 (= res!137129 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4198))))

(assert (= (and start!26360 res!137130) b!273101))

(assert (= (and b!273101 res!137135) b!273104))

(assert (= (and b!273104 res!137128) b!273108))

(assert (= (and b!273108 res!137129) b!273105))

(assert (= (and b!273105 res!137132) b!273100))

(assert (= (and b!273100 res!137136) b!273106))

(assert (= (and b!273106 res!137131) b!273103))

(assert (= (and b!273103 res!137133) b!273107))

(assert (= (and b!273107 res!137134) b!273102))

(declare-fun m!288251 () Bool)

(assert (=> b!273108 m!288251))

(declare-fun m!288253 () Bool)

(assert (=> b!273100 m!288253))

(declare-fun m!288255 () Bool)

(assert (=> b!273102 m!288255))

(declare-fun m!288257 () Bool)

(assert (=> b!273102 m!288257))

(assert (=> b!273102 m!288255))

(declare-fun m!288259 () Bool)

(assert (=> b!273102 m!288259))

(declare-fun m!288261 () Bool)

(assert (=> b!273102 m!288261))

(declare-fun m!288263 () Bool)

(assert (=> b!273102 m!288263))

(declare-fun m!288265 () Bool)

(assert (=> b!273102 m!288265))

(assert (=> b!273102 m!288261))

(declare-fun m!288267 () Bool)

(assert (=> b!273102 m!288267))

(declare-fun m!288269 () Bool)

(assert (=> b!273102 m!288269))

(declare-fun m!288271 () Bool)

(assert (=> b!273105 m!288271))

(assert (=> b!273103 m!288259))

(declare-fun m!288273 () Bool)

(assert (=> b!273106 m!288273))

(assert (=> b!273107 m!288261))

(assert (=> b!273107 m!288261))

(declare-fun m!288275 () Bool)

(assert (=> b!273107 m!288275))

(declare-fun m!288277 () Bool)

(assert (=> b!273104 m!288277))

(declare-fun m!288279 () Bool)

(assert (=> start!26360 m!288279))

(declare-fun m!288281 () Bool)

(assert (=> start!26360 m!288281))

(push 1)

