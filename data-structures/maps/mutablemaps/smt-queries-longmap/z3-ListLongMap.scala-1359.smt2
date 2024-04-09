; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26724 () Bool)

(assert start!26724)

(declare-fun b!277344 () Bool)

(declare-fun e!177010 () Bool)

(declare-fun e!177012 () Bool)

(assert (=> b!277344 (= e!177010 e!177012)))

(declare-fun res!141297 () Bool)

(assert (=> b!277344 (=> (not res!141297) (not e!177012))))

(declare-datatypes ((SeekEntryResult!1723 0))(
  ( (MissingZero!1723 (index!9062 (_ BitVec 32))) (Found!1723 (index!9063 (_ BitVec 32))) (Intermediate!1723 (undefined!2535 Bool) (index!9064 (_ BitVec 32)) (x!27280 (_ BitVec 32))) (Undefined!1723) (MissingVacant!1723 (index!9065 (_ BitVec 32))) )
))
(declare-fun lt!137943 () SeekEntryResult!1723)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277344 (= res!141297 (or (= lt!137943 (MissingZero!1723 i!1267)) (= lt!137943 (MissingVacant!1723 i!1267))))))

(declare-datatypes ((array!13810 0))(
  ( (array!13811 (arr!6554 (Array (_ BitVec 32) (_ BitVec 64))) (size!6906 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13810)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13810 (_ BitVec 32)) SeekEntryResult!1723)

(assert (=> b!277344 (= lt!137943 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277345 () Bool)

(declare-fun res!141291 () Bool)

(assert (=> b!277345 (=> (not res!141291) (not e!177012))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277345 (= res!141291 (= startIndex!26 i!1267))))

(declare-fun b!277346 () Bool)

(declare-datatypes ((Unit!8739 0))(
  ( (Unit!8740) )
))
(declare-fun e!177011 () Unit!8739)

(declare-fun Unit!8741 () Unit!8739)

(assert (=> b!277346 (= e!177011 Unit!8741)))

(declare-fun b!277348 () Bool)

(declare-fun res!141292 () Bool)

(assert (=> b!277348 (=> (not res!141292) (not e!177010))))

(declare-datatypes ((List!4383 0))(
  ( (Nil!4380) (Cons!4379 (h!5046 (_ BitVec 64)) (t!9473 List!4383)) )
))
(declare-fun arrayNoDuplicates!0 (array!13810 (_ BitVec 32) List!4383) Bool)

(assert (=> b!277348 (= res!141292 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4380))))

(declare-fun b!277349 () Bool)

(declare-fun res!141290 () Bool)

(assert (=> b!277349 (=> (not res!141290) (not e!177010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277349 (= res!141290 (validKeyInArray!0 k0!2581))))

(declare-fun b!277350 () Bool)

(assert (=> b!277350 (= e!177012 false)))

(declare-fun lt!137944 () Unit!8739)

(assert (=> b!277350 (= lt!137944 e!177011)))

(declare-fun c!45578 () Bool)

(assert (=> b!277350 (= c!45578 (bvslt startIndex!26 (bvsub (size!6906 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277351 () Bool)

(declare-fun res!141295 () Bool)

(assert (=> b!277351 (=> (not res!141295) (not e!177010))))

(assert (=> b!277351 (= res!141295 (and (= (size!6906 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6906 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6906 a!3325))))))

(declare-fun b!277347 () Bool)

(declare-fun res!141296 () Bool)

(assert (=> b!277347 (=> (not res!141296) (not e!177010))))

(declare-fun arrayContainsKey!0 (array!13810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277347 (= res!141296 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!141294 () Bool)

(assert (=> start!26724 (=> (not res!141294) (not e!177010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26724 (= res!141294 (validMask!0 mask!3868))))

(assert (=> start!26724 e!177010))

(declare-fun array_inv!4508 (array!13810) Bool)

(assert (=> start!26724 (array_inv!4508 a!3325)))

(assert (=> start!26724 true))

(declare-fun b!277352 () Bool)

(declare-fun lt!137945 () Unit!8739)

(assert (=> b!277352 (= e!177011 lt!137945)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13810 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8739)

(assert (=> b!277352 (= lt!137945 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13810 (_ BitVec 32)) Bool)

(assert (=> b!277352 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13811 (store (arr!6554 a!3325) i!1267 k0!2581) (size!6906 a!3325)) mask!3868)))

(declare-fun b!277353 () Bool)

(declare-fun res!141293 () Bool)

(assert (=> b!277353 (=> (not res!141293) (not e!177012))))

(assert (=> b!277353 (= res!141293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26724 res!141294) b!277351))

(assert (= (and b!277351 res!141295) b!277349))

(assert (= (and b!277349 res!141290) b!277348))

(assert (= (and b!277348 res!141292) b!277347))

(assert (= (and b!277347 res!141296) b!277344))

(assert (= (and b!277344 res!141297) b!277353))

(assert (= (and b!277353 res!141293) b!277345))

(assert (= (and b!277345 res!141291) b!277350))

(assert (= (and b!277350 c!45578) b!277352))

(assert (= (and b!277350 (not c!45578)) b!277346))

(declare-fun m!292449 () Bool)

(assert (=> b!277344 m!292449))

(declare-fun m!292451 () Bool)

(assert (=> b!277347 m!292451))

(declare-fun m!292453 () Bool)

(assert (=> b!277352 m!292453))

(declare-fun m!292455 () Bool)

(assert (=> b!277352 m!292455))

(declare-fun m!292457 () Bool)

(assert (=> b!277352 m!292457))

(declare-fun m!292459 () Bool)

(assert (=> b!277348 m!292459))

(declare-fun m!292461 () Bool)

(assert (=> b!277349 m!292461))

(declare-fun m!292463 () Bool)

(assert (=> b!277353 m!292463))

(declare-fun m!292465 () Bool)

(assert (=> start!26724 m!292465))

(declare-fun m!292467 () Bool)

(assert (=> start!26724 m!292467))

(check-sat (not b!277348) (not b!277352) (not b!277349) (not b!277347) (not b!277344) (not start!26724) (not b!277353))
(check-sat)
