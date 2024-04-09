; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26304 () Bool)

(assert start!26304)

(declare-fun b!272344 () Bool)

(declare-fun e!174818 () Bool)

(declare-fun e!174820 () Bool)

(assert (=> b!272344 (= e!174818 e!174820)))

(declare-fun res!136373 () Bool)

(assert (=> b!272344 (=> (not res!136373) (not e!174820))))

(declare-datatypes ((SeekEntryResult!1513 0))(
  ( (MissingZero!1513 (index!8222 (_ BitVec 32))) (Found!1513 (index!8223 (_ BitVec 32))) (Intermediate!1513 (undefined!2325 Bool) (index!8224 (_ BitVec 32)) (x!26510 (_ BitVec 32))) (Undefined!1513) (MissingVacant!1513 (index!8225 (_ BitVec 32))) )
))
(declare-fun lt!136013 () SeekEntryResult!1513)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272344 (= res!136373 (or (= lt!136013 (MissingZero!1513 i!1267)) (= lt!136013 (MissingVacant!1513 i!1267))))))

(declare-datatypes ((array!13390 0))(
  ( (array!13391 (arr!6344 (Array (_ BitVec 32) (_ BitVec 64))) (size!6696 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13390)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13390 (_ BitVec 32)) SeekEntryResult!1513)

(assert (=> b!272344 (= lt!136013 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272345 () Bool)

(declare-fun res!136378 () Bool)

(assert (=> b!272345 (=> (not res!136378) (not e!174818))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272345 (= res!136378 (and (= (size!6696 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6696 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6696 a!3325))))))

(declare-fun b!272346 () Bool)

(declare-fun res!136376 () Bool)

(assert (=> b!272346 (=> (not res!136376) (not e!174820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272346 (= res!136376 (validKeyInArray!0 (select (arr!6344 a!3325) startIndex!26)))))

(declare-fun b!272347 () Bool)

(declare-fun res!136374 () Bool)

(assert (=> b!272347 (=> (not res!136374) (not e!174818))))

(declare-datatypes ((List!4173 0))(
  ( (Nil!4170) (Cons!4169 (h!4836 (_ BitVec 64)) (t!9263 List!4173)) )
))
(declare-fun arrayNoDuplicates!0 (array!13390 (_ BitVec 32) List!4173) Bool)

(assert (=> b!272347 (= res!136374 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4170))))

(declare-fun b!272348 () Bool)

(declare-fun res!136377 () Bool)

(assert (=> b!272348 (=> (not res!136377) (not e!174818))))

(declare-fun arrayContainsKey!0 (array!13390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272348 (= res!136377 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!136379 () Bool)

(assert (=> start!26304 (=> (not res!136379) (not e!174818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26304 (= res!136379 (validMask!0 mask!3868))))

(assert (=> start!26304 e!174818))

(declare-fun array_inv!4298 (array!13390) Bool)

(assert (=> start!26304 (array_inv!4298 a!3325)))

(assert (=> start!26304 true))

(declare-fun b!272349 () Bool)

(assert (=> b!272349 (= e!174820 (not true))))

(assert (=> b!272349 (arrayNoDuplicates!0 (array!13391 (store (arr!6344 a!3325) i!1267 k0!2581) (size!6696 a!3325)) #b00000000000000000000000000000000 Nil!4170)))

(declare-datatypes ((Unit!8492 0))(
  ( (Unit!8493) )
))
(declare-fun lt!136012 () Unit!8492)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13390 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4173) Unit!8492)

(assert (=> b!272349 (= lt!136012 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4170))))

(declare-fun b!272350 () Bool)

(declare-fun res!136375 () Bool)

(assert (=> b!272350 (=> (not res!136375) (not e!174818))))

(assert (=> b!272350 (= res!136375 (validKeyInArray!0 k0!2581))))

(declare-fun b!272351 () Bool)

(declare-fun res!136380 () Bool)

(assert (=> b!272351 (=> (not res!136380) (not e!174820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13390 (_ BitVec 32)) Bool)

(assert (=> b!272351 (= res!136380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272352 () Bool)

(declare-fun res!136372 () Bool)

(assert (=> b!272352 (=> (not res!136372) (not e!174820))))

(assert (=> b!272352 (= res!136372 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26304 res!136379) b!272345))

(assert (= (and b!272345 res!136378) b!272350))

(assert (= (and b!272350 res!136375) b!272347))

(assert (= (and b!272347 res!136374) b!272348))

(assert (= (and b!272348 res!136377) b!272344))

(assert (= (and b!272344 res!136373) b!272351))

(assert (= (and b!272351 res!136380) b!272352))

(assert (= (and b!272352 res!136372) b!272346))

(assert (= (and b!272346 res!136376) b!272349))

(declare-fun m!287491 () Bool)

(assert (=> b!272349 m!287491))

(declare-fun m!287493 () Bool)

(assert (=> b!272349 m!287493))

(declare-fun m!287495 () Bool)

(assert (=> b!272349 m!287495))

(declare-fun m!287497 () Bool)

(assert (=> start!26304 m!287497))

(declare-fun m!287499 () Bool)

(assert (=> start!26304 m!287499))

(declare-fun m!287501 () Bool)

(assert (=> b!272350 m!287501))

(declare-fun m!287503 () Bool)

(assert (=> b!272351 m!287503))

(declare-fun m!287505 () Bool)

(assert (=> b!272346 m!287505))

(assert (=> b!272346 m!287505))

(declare-fun m!287507 () Bool)

(assert (=> b!272346 m!287507))

(declare-fun m!287509 () Bool)

(assert (=> b!272347 m!287509))

(declare-fun m!287511 () Bool)

(assert (=> b!272344 m!287511))

(declare-fun m!287513 () Bool)

(assert (=> b!272348 m!287513))

(check-sat (not b!272346) (not b!272350) (not b!272347) (not b!272351) (not b!272349) (not b!272348) (not start!26304) (not b!272344))
(check-sat)
