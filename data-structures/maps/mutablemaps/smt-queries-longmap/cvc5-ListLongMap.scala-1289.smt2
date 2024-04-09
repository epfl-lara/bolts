; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26302 () Bool)

(assert start!26302)

(declare-fun b!272317 () Bool)

(declare-fun res!136348 () Bool)

(declare-fun e!174811 () Bool)

(assert (=> b!272317 (=> (not res!136348) (not e!174811))))

(declare-datatypes ((array!13388 0))(
  ( (array!13389 (arr!6343 (Array (_ BitVec 32) (_ BitVec 64))) (size!6695 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13388)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!272317 (= res!136348 (and (= (size!6695 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6695 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6695 a!3325))))))

(declare-fun b!272318 () Bool)

(declare-fun res!136353 () Bool)

(declare-fun e!174809 () Bool)

(assert (=> b!272318 (=> (not res!136353) (not e!174809))))

(assert (=> b!272318 (= res!136353 (not (= startIndex!26 i!1267)))))

(declare-fun b!272319 () Bool)

(declare-fun res!136345 () Bool)

(assert (=> b!272319 (=> (not res!136345) (not e!174811))))

(declare-datatypes ((List!4172 0))(
  ( (Nil!4169) (Cons!4168 (h!4835 (_ BitVec 64)) (t!9262 List!4172)) )
))
(declare-fun arrayNoDuplicates!0 (array!13388 (_ BitVec 32) List!4172) Bool)

(assert (=> b!272319 (= res!136345 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4169))))

(declare-fun b!272320 () Bool)

(declare-fun res!136349 () Bool)

(assert (=> b!272320 (=> (not res!136349) (not e!174811))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272320 (= res!136349 (validKeyInArray!0 k!2581))))

(declare-fun b!272321 () Bool)

(assert (=> b!272321 (= e!174809 (not true))))

(assert (=> b!272321 (arrayNoDuplicates!0 (array!13389 (store (arr!6343 a!3325) i!1267 k!2581) (size!6695 a!3325)) #b00000000000000000000000000000000 Nil!4169)))

(declare-datatypes ((Unit!8490 0))(
  ( (Unit!8491) )
))
(declare-fun lt!136006 () Unit!8490)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13388 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4172) Unit!8490)

(assert (=> b!272321 (= lt!136006 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4169))))

(declare-fun b!272322 () Bool)

(declare-fun res!136351 () Bool)

(assert (=> b!272322 (=> (not res!136351) (not e!174809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13388 (_ BitVec 32)) Bool)

(assert (=> b!272322 (= res!136351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!136346 () Bool)

(assert (=> start!26302 (=> (not res!136346) (not e!174811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26302 (= res!136346 (validMask!0 mask!3868))))

(assert (=> start!26302 e!174811))

(declare-fun array_inv!4297 (array!13388) Bool)

(assert (=> start!26302 (array_inv!4297 a!3325)))

(assert (=> start!26302 true))

(declare-fun b!272323 () Bool)

(declare-fun res!136350 () Bool)

(assert (=> b!272323 (=> (not res!136350) (not e!174809))))

(assert (=> b!272323 (= res!136350 (validKeyInArray!0 (select (arr!6343 a!3325) startIndex!26)))))

(declare-fun b!272324 () Bool)

(declare-fun res!136347 () Bool)

(assert (=> b!272324 (=> (not res!136347) (not e!174811))))

(declare-fun arrayContainsKey!0 (array!13388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272324 (= res!136347 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272325 () Bool)

(assert (=> b!272325 (= e!174811 e!174809)))

(declare-fun res!136352 () Bool)

(assert (=> b!272325 (=> (not res!136352) (not e!174809))))

(declare-datatypes ((SeekEntryResult!1512 0))(
  ( (MissingZero!1512 (index!8218 (_ BitVec 32))) (Found!1512 (index!8219 (_ BitVec 32))) (Intermediate!1512 (undefined!2324 Bool) (index!8220 (_ BitVec 32)) (x!26509 (_ BitVec 32))) (Undefined!1512) (MissingVacant!1512 (index!8221 (_ BitVec 32))) )
))
(declare-fun lt!136007 () SeekEntryResult!1512)

(assert (=> b!272325 (= res!136352 (or (= lt!136007 (MissingZero!1512 i!1267)) (= lt!136007 (MissingVacant!1512 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13388 (_ BitVec 32)) SeekEntryResult!1512)

(assert (=> b!272325 (= lt!136007 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26302 res!136346) b!272317))

(assert (= (and b!272317 res!136348) b!272320))

(assert (= (and b!272320 res!136349) b!272319))

(assert (= (and b!272319 res!136345) b!272324))

(assert (= (and b!272324 res!136347) b!272325))

(assert (= (and b!272325 res!136352) b!272322))

(assert (= (and b!272322 res!136351) b!272318))

(assert (= (and b!272318 res!136353) b!272323))

(assert (= (and b!272323 res!136350) b!272321))

(declare-fun m!287467 () Bool)

(assert (=> b!272322 m!287467))

(declare-fun m!287469 () Bool)

(assert (=> b!272319 m!287469))

(declare-fun m!287471 () Bool)

(assert (=> start!26302 m!287471))

(declare-fun m!287473 () Bool)

(assert (=> start!26302 m!287473))

(declare-fun m!287475 () Bool)

(assert (=> b!272321 m!287475))

(declare-fun m!287477 () Bool)

(assert (=> b!272321 m!287477))

(declare-fun m!287479 () Bool)

(assert (=> b!272321 m!287479))

(declare-fun m!287481 () Bool)

(assert (=> b!272325 m!287481))

(declare-fun m!287483 () Bool)

(assert (=> b!272320 m!287483))

(declare-fun m!287485 () Bool)

(assert (=> b!272324 m!287485))

(declare-fun m!287487 () Bool)

(assert (=> b!272323 m!287487))

(assert (=> b!272323 m!287487))

(declare-fun m!287489 () Bool)

(assert (=> b!272323 m!287489))

(push 1)

