; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27276 () Bool)

(assert start!27276)

(declare-fun b!282373 () Bool)

(declare-fun res!145485 () Bool)

(declare-fun e!179286 () Bool)

(assert (=> b!282373 (=> (not res!145485) (not e!179286))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282373 (= res!145485 (validKeyInArray!0 k0!2581))))

(declare-fun b!282374 () Bool)

(declare-fun e!179287 () Bool)

(assert (=> b!282374 (= e!179287 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14083 0))(
  ( (array!14084 (arr!6683 (Array (_ BitVec 32) (_ BitVec 64))) (size!7035 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14083)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14083 (_ BitVec 32)) Bool)

(assert (=> b!282374 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8967 0))(
  ( (Unit!8968) )
))
(declare-fun lt!139555 () Unit!8967)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8967)

(assert (=> b!282374 (= lt!139555 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139557 () array!14083)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1852 0))(
  ( (MissingZero!1852 (index!9578 (_ BitVec 32))) (Found!1852 (index!9579 (_ BitVec 32))) (Intermediate!1852 (undefined!2664 Bool) (index!9580 (_ BitVec 32)) (x!27762 (_ BitVec 32))) (Undefined!1852) (MissingVacant!1852 (index!9581 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14083 (_ BitVec 32)) SeekEntryResult!1852)

(assert (=> b!282374 (= (seekEntryOrOpen!0 (select (arr!6683 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6683 a!3325) i!1267 k0!2581) startIndex!26) lt!139557 mask!3868))))

(declare-fun lt!139556 () Unit!8967)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14083 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8967)

(assert (=> b!282374 (= lt!139556 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4512 0))(
  ( (Nil!4509) (Cons!4508 (h!5178 (_ BitVec 64)) (t!9602 List!4512)) )
))
(declare-fun arrayNoDuplicates!0 (array!14083 (_ BitVec 32) List!4512) Bool)

(assert (=> b!282374 (arrayNoDuplicates!0 lt!139557 #b00000000000000000000000000000000 Nil!4509)))

(declare-fun lt!139558 () Unit!8967)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14083 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4512) Unit!8967)

(assert (=> b!282374 (= lt!139558 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4509))))

(declare-fun res!145482 () Bool)

(assert (=> start!27276 (=> (not res!145482) (not e!179286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27276 (= res!145482 (validMask!0 mask!3868))))

(assert (=> start!27276 e!179286))

(declare-fun array_inv!4637 (array!14083) Bool)

(assert (=> start!27276 (array_inv!4637 a!3325)))

(assert (=> start!27276 true))

(declare-fun b!282375 () Bool)

(declare-fun res!145486 () Bool)

(assert (=> b!282375 (=> (not res!145486) (not e!179287))))

(assert (=> b!282375 (= res!145486 (validKeyInArray!0 (select (arr!6683 a!3325) startIndex!26)))))

(declare-fun b!282376 () Bool)

(declare-fun res!145488 () Bool)

(assert (=> b!282376 (=> (not res!145488) (not e!179286))))

(assert (=> b!282376 (= res!145488 (and (= (size!7035 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7035 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7035 a!3325))))))

(declare-fun b!282377 () Bool)

(declare-fun res!145481 () Bool)

(assert (=> b!282377 (=> (not res!145481) (not e!179286))))

(assert (=> b!282377 (= res!145481 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4509))))

(declare-fun b!282378 () Bool)

(declare-fun e!179284 () Bool)

(assert (=> b!282378 (= e!179286 e!179284)))

(declare-fun res!145487 () Bool)

(assert (=> b!282378 (=> (not res!145487) (not e!179284))))

(declare-fun lt!139559 () SeekEntryResult!1852)

(assert (=> b!282378 (= res!145487 (or (= lt!139559 (MissingZero!1852 i!1267)) (= lt!139559 (MissingVacant!1852 i!1267))))))

(assert (=> b!282378 (= lt!139559 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282379 () Bool)

(declare-fun res!145483 () Bool)

(assert (=> b!282379 (=> (not res!145483) (not e!179286))))

(declare-fun arrayContainsKey!0 (array!14083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282379 (= res!145483 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282380 () Bool)

(assert (=> b!282380 (= e!179284 e!179287)))

(declare-fun res!145480 () Bool)

(assert (=> b!282380 (=> (not res!145480) (not e!179287))))

(assert (=> b!282380 (= res!145480 (not (= startIndex!26 i!1267)))))

(assert (=> b!282380 (= lt!139557 (array!14084 (store (arr!6683 a!3325) i!1267 k0!2581) (size!7035 a!3325)))))

(declare-fun b!282381 () Bool)

(declare-fun res!145484 () Bool)

(assert (=> b!282381 (=> (not res!145484) (not e!179284))))

(assert (=> b!282381 (= res!145484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27276 res!145482) b!282376))

(assert (= (and b!282376 res!145488) b!282373))

(assert (= (and b!282373 res!145485) b!282377))

(assert (= (and b!282377 res!145481) b!282379))

(assert (= (and b!282379 res!145483) b!282378))

(assert (= (and b!282378 res!145487) b!282381))

(assert (= (and b!282381 res!145484) b!282380))

(assert (= (and b!282380 res!145480) b!282375))

(assert (= (and b!282375 res!145486) b!282374))

(declare-fun m!296977 () Bool)

(assert (=> b!282380 m!296977))

(declare-fun m!296979 () Bool)

(assert (=> b!282381 m!296979))

(declare-fun m!296981 () Bool)

(assert (=> b!282374 m!296981))

(declare-fun m!296983 () Bool)

(assert (=> b!282374 m!296983))

(declare-fun m!296985 () Bool)

(assert (=> b!282374 m!296985))

(assert (=> b!282374 m!296983))

(declare-fun m!296987 () Bool)

(assert (=> b!282374 m!296987))

(assert (=> b!282374 m!296977))

(declare-fun m!296989 () Bool)

(assert (=> b!282374 m!296989))

(declare-fun m!296991 () Bool)

(assert (=> b!282374 m!296991))

(declare-fun m!296993 () Bool)

(assert (=> b!282374 m!296993))

(declare-fun m!296995 () Bool)

(assert (=> b!282374 m!296995))

(assert (=> b!282374 m!296991))

(declare-fun m!296997 () Bool)

(assert (=> b!282374 m!296997))

(declare-fun m!296999 () Bool)

(assert (=> b!282378 m!296999))

(declare-fun m!297001 () Bool)

(assert (=> b!282373 m!297001))

(declare-fun m!297003 () Bool)

(assert (=> b!282377 m!297003))

(declare-fun m!297005 () Bool)

(assert (=> b!282379 m!297005))

(declare-fun m!297007 () Bool)

(assert (=> start!27276 m!297007))

(declare-fun m!297009 () Bool)

(assert (=> start!27276 m!297009))

(assert (=> b!282375 m!296991))

(assert (=> b!282375 m!296991))

(declare-fun m!297011 () Bool)

(assert (=> b!282375 m!297011))

(check-sat (not b!282373) (not b!282375) (not b!282379) (not b!282381) (not b!282374) (not b!282378) (not b!282377) (not start!27276))
(check-sat)
