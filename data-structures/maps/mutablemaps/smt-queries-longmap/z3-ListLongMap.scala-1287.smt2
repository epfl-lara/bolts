; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26292 () Bool)

(assert start!26292)

(declare-fun b!272182 () Bool)

(declare-fun res!136214 () Bool)

(declare-fun e!174765 () Bool)

(assert (=> b!272182 (=> (not res!136214) (not e!174765))))

(declare-datatypes ((array!13378 0))(
  ( (array!13379 (arr!6338 (Array (_ BitVec 32) (_ BitVec 64))) (size!6690 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13378)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272182 (= res!136214 (and (= (size!6690 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6690 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6690 a!3325))))))

(declare-fun b!272183 () Bool)

(declare-fun e!174766 () Bool)

(assert (=> b!272183 (= e!174765 e!174766)))

(declare-fun res!136212 () Bool)

(assert (=> b!272183 (=> (not res!136212) (not e!174766))))

(declare-datatypes ((SeekEntryResult!1507 0))(
  ( (MissingZero!1507 (index!8198 (_ BitVec 32))) (Found!1507 (index!8199 (_ BitVec 32))) (Intermediate!1507 (undefined!2319 Bool) (index!8200 (_ BitVec 32)) (x!26488 (_ BitVec 32))) (Undefined!1507) (MissingVacant!1507 (index!8201 (_ BitVec 32))) )
))
(declare-fun lt!135977 () SeekEntryResult!1507)

(assert (=> b!272183 (= res!136212 (or (= lt!135977 (MissingZero!1507 i!1267)) (= lt!135977 (MissingVacant!1507 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13378 (_ BitVec 32)) SeekEntryResult!1507)

(assert (=> b!272183 (= lt!135977 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272184 () Bool)

(declare-fun res!136211 () Bool)

(assert (=> b!272184 (=> (not res!136211) (not e!174765))))

(declare-fun arrayContainsKey!0 (array!13378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272184 (= res!136211 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272185 () Bool)

(declare-fun res!136210 () Bool)

(assert (=> b!272185 (=> (not res!136210) (not e!174765))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272185 (= res!136210 (validKeyInArray!0 k0!2581))))

(declare-fun b!272187 () Bool)

(assert (=> b!272187 (= e!174766 (not true))))

(declare-datatypes ((List!4167 0))(
  ( (Nil!4164) (Cons!4163 (h!4830 (_ BitVec 64)) (t!9257 List!4167)) )
))
(declare-fun arrayNoDuplicates!0 (array!13378 (_ BitVec 32) List!4167) Bool)

(assert (=> b!272187 (arrayNoDuplicates!0 (array!13379 (store (arr!6338 a!3325) i!1267 k0!2581) (size!6690 a!3325)) #b00000000000000000000000000000000 Nil!4164)))

(declare-datatypes ((Unit!8480 0))(
  ( (Unit!8481) )
))
(declare-fun lt!135976 () Unit!8480)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13378 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4167) Unit!8480)

(assert (=> b!272187 (= lt!135976 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4164))))

(declare-fun b!272188 () Bool)

(declare-fun res!136217 () Bool)

(assert (=> b!272188 (=> (not res!136217) (not e!174765))))

(assert (=> b!272188 (= res!136217 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4164))))

(declare-fun b!272189 () Bool)

(declare-fun res!136213 () Bool)

(assert (=> b!272189 (=> (not res!136213) (not e!174766))))

(assert (=> b!272189 (= res!136213 (validKeyInArray!0 (select (arr!6338 a!3325) startIndex!26)))))

(declare-fun b!272190 () Bool)

(declare-fun res!136215 () Bool)

(assert (=> b!272190 (=> (not res!136215) (not e!174766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13378 (_ BitVec 32)) Bool)

(assert (=> b!272190 (= res!136215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!136216 () Bool)

(assert (=> start!26292 (=> (not res!136216) (not e!174765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26292 (= res!136216 (validMask!0 mask!3868))))

(assert (=> start!26292 e!174765))

(declare-fun array_inv!4292 (array!13378) Bool)

(assert (=> start!26292 (array_inv!4292 a!3325)))

(assert (=> start!26292 true))

(declare-fun b!272186 () Bool)

(declare-fun res!136218 () Bool)

(assert (=> b!272186 (=> (not res!136218) (not e!174766))))

(assert (=> b!272186 (= res!136218 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26292 res!136216) b!272182))

(assert (= (and b!272182 res!136214) b!272185))

(assert (= (and b!272185 res!136210) b!272188))

(assert (= (and b!272188 res!136217) b!272184))

(assert (= (and b!272184 res!136211) b!272183))

(assert (= (and b!272183 res!136212) b!272190))

(assert (= (and b!272190 res!136215) b!272186))

(assert (= (and b!272186 res!136218) b!272189))

(assert (= (and b!272189 res!136213) b!272187))

(declare-fun m!287347 () Bool)

(assert (=> b!272185 m!287347))

(declare-fun m!287349 () Bool)

(assert (=> start!26292 m!287349))

(declare-fun m!287351 () Bool)

(assert (=> start!26292 m!287351))

(declare-fun m!287353 () Bool)

(assert (=> b!272184 m!287353))

(declare-fun m!287355 () Bool)

(assert (=> b!272190 m!287355))

(declare-fun m!287357 () Bool)

(assert (=> b!272188 m!287357))

(declare-fun m!287359 () Bool)

(assert (=> b!272183 m!287359))

(declare-fun m!287361 () Bool)

(assert (=> b!272189 m!287361))

(assert (=> b!272189 m!287361))

(declare-fun m!287363 () Bool)

(assert (=> b!272189 m!287363))

(declare-fun m!287365 () Bool)

(assert (=> b!272187 m!287365))

(declare-fun m!287367 () Bool)

(assert (=> b!272187 m!287367))

(declare-fun m!287369 () Bool)

(assert (=> b!272187 m!287369))

(check-sat (not b!272185) (not b!272187) (not start!26292) (not b!272188) (not b!272184) (not b!272190) (not b!272183) (not b!272189))
(check-sat)
