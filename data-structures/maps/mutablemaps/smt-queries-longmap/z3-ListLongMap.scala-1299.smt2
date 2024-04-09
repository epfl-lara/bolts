; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26364 () Bool)

(assert start!26364)

(declare-fun b!273154 () Bool)

(declare-fun res!137184 () Bool)

(declare-fun e!175132 () Bool)

(assert (=> b!273154 (=> (not res!137184) (not e!175132))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273154 (= res!137184 (validKeyInArray!0 k0!2581))))

(declare-fun b!273155 () Bool)

(declare-fun e!175130 () Bool)

(declare-fun e!175129 () Bool)

(assert (=> b!273155 (= e!175130 e!175129)))

(declare-fun res!137187 () Bool)

(assert (=> b!273155 (=> (not res!137187) (not e!175129))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273155 (= res!137187 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!13450 0))(
  ( (array!13451 (arr!6374 (Array (_ BitVec 32) (_ BitVec 64))) (size!6726 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13450)

(declare-fun lt!136277 () array!13450)

(assert (=> b!273155 (= lt!136277 (array!13451 (store (arr!6374 a!3325) i!1267 k0!2581) (size!6726 a!3325)))))

(declare-fun b!273156 () Bool)

(assert (=> b!273156 (= e!175132 e!175130)))

(declare-fun res!137190 () Bool)

(assert (=> b!273156 (=> (not res!137190) (not e!175130))))

(declare-datatypes ((SeekEntryResult!1543 0))(
  ( (MissingZero!1543 (index!8342 (_ BitVec 32))) (Found!1543 (index!8343 (_ BitVec 32))) (Intermediate!1543 (undefined!2355 Bool) (index!8344 (_ BitVec 32)) (x!26620 (_ BitVec 32))) (Undefined!1543) (MissingVacant!1543 (index!8345 (_ BitVec 32))) )
))
(declare-fun lt!136275 () SeekEntryResult!1543)

(assert (=> b!273156 (= res!137190 (or (= lt!136275 (MissingZero!1543 i!1267)) (= lt!136275 (MissingVacant!1543 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13450 (_ BitVec 32)) SeekEntryResult!1543)

(assert (=> b!273156 (= lt!136275 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273157 () Bool)

(declare-fun res!137186 () Bool)

(assert (=> b!273157 (=> (not res!137186) (not e!175132))))

(assert (=> b!273157 (= res!137186 (and (= (size!6726 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6726 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6726 a!3325))))))

(declare-fun res!137189 () Bool)

(assert (=> start!26364 (=> (not res!137189) (not e!175132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26364 (= res!137189 (validMask!0 mask!3868))))

(assert (=> start!26364 e!175132))

(declare-fun array_inv!4328 (array!13450) Bool)

(assert (=> start!26364 (array_inv!4328 a!3325)))

(assert (=> start!26364 true))

(declare-fun b!273158 () Bool)

(declare-fun res!137188 () Bool)

(assert (=> b!273158 (=> (not res!137188) (not e!175132))))

(declare-datatypes ((List!4203 0))(
  ( (Nil!4200) (Cons!4199 (h!4866 (_ BitVec 64)) (t!9293 List!4203)) )
))
(declare-fun arrayNoDuplicates!0 (array!13450 (_ BitVec 32) List!4203) Bool)

(assert (=> b!273158 (= res!137188 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4200))))

(declare-fun b!273159 () Bool)

(declare-fun res!137182 () Bool)

(assert (=> b!273159 (=> (not res!137182) (not e!175129))))

(assert (=> b!273159 (= res!137182 (validKeyInArray!0 (select (arr!6374 a!3325) startIndex!26)))))

(declare-fun b!273160 () Bool)

(declare-fun res!137183 () Bool)

(assert (=> b!273160 (=> (not res!137183) (not e!175132))))

(declare-fun arrayContainsKey!0 (array!13450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273160 (= res!137183 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273161 () Bool)

(declare-fun res!137185 () Bool)

(assert (=> b!273161 (=> (not res!137185) (not e!175130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13450 (_ BitVec 32)) Bool)

(assert (=> b!273161 (= res!137185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273162 () Bool)

(assert (=> b!273162 (= e!175129 (not true))))

(assert (=> b!273162 (= (seekEntryOrOpen!0 (select (arr!6374 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6374 a!3325) i!1267 k0!2581) startIndex!26) lt!136277 mask!3868))))

(declare-datatypes ((Unit!8552 0))(
  ( (Unit!8553) )
))
(declare-fun lt!136274 () Unit!8552)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8552)

(assert (=> b!273162 (= lt!136274 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!273162 (arrayNoDuplicates!0 lt!136277 #b00000000000000000000000000000000 Nil!4200)))

(declare-fun lt!136276 () Unit!8552)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13450 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4203) Unit!8552)

(assert (=> b!273162 (= lt!136276 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4200))))

(assert (= (and start!26364 res!137189) b!273157))

(assert (= (and b!273157 res!137186) b!273154))

(assert (= (and b!273154 res!137184) b!273158))

(assert (= (and b!273158 res!137188) b!273160))

(assert (= (and b!273160 res!137183) b!273156))

(assert (= (and b!273156 res!137190) b!273161))

(assert (= (and b!273161 res!137185) b!273155))

(assert (= (and b!273155 res!137187) b!273159))

(assert (= (and b!273159 res!137182) b!273162))

(declare-fun m!288315 () Bool)

(assert (=> b!273158 m!288315))

(declare-fun m!288317 () Bool)

(assert (=> b!273156 m!288317))

(declare-fun m!288319 () Bool)

(assert (=> b!273162 m!288319))

(declare-fun m!288321 () Bool)

(assert (=> b!273162 m!288321))

(declare-fun m!288323 () Bool)

(assert (=> b!273162 m!288323))

(declare-fun m!288325 () Bool)

(assert (=> b!273162 m!288325))

(declare-fun m!288327 () Bool)

(assert (=> b!273162 m!288327))

(assert (=> b!273162 m!288321))

(declare-fun m!288329 () Bool)

(assert (=> b!273162 m!288329))

(declare-fun m!288331 () Bool)

(assert (=> b!273162 m!288331))

(assert (=> b!273162 m!288325))

(declare-fun m!288333 () Bool)

(assert (=> b!273162 m!288333))

(declare-fun m!288335 () Bool)

(assert (=> start!26364 m!288335))

(declare-fun m!288337 () Bool)

(assert (=> start!26364 m!288337))

(assert (=> b!273159 m!288325))

(assert (=> b!273159 m!288325))

(declare-fun m!288339 () Bool)

(assert (=> b!273159 m!288339))

(declare-fun m!288341 () Bool)

(assert (=> b!273160 m!288341))

(declare-fun m!288343 () Bool)

(assert (=> b!273161 m!288343))

(declare-fun m!288345 () Bool)

(assert (=> b!273154 m!288345))

(assert (=> b!273155 m!288323))

(check-sat (not start!26364) (not b!273154) (not b!273161) (not b!273159) (not b!273162) (not b!273160) (not b!273158) (not b!273156))
(check-sat)
