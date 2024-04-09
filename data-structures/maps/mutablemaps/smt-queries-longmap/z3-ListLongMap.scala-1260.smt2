; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26130 () Bool)

(assert start!26130)

(declare-fun b!269505 () Bool)

(declare-fun res!133725 () Bool)

(declare-fun e!173871 () Bool)

(assert (=> b!269505 (=> (not res!133725) (not e!173871))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269505 (= res!133725 (validKeyInArray!0 k0!2581))))

(declare-fun b!269506 () Bool)

(declare-datatypes ((Unit!8352 0))(
  ( (Unit!8353) )
))
(declare-fun e!173870 () Unit!8352)

(declare-fun lt!135252 () Unit!8352)

(assert (=> b!269506 (= e!173870 lt!135252)))

(declare-datatypes ((array!13216 0))(
  ( (array!13217 (arr!6257 (Array (_ BitVec 32) (_ BitVec 64))) (size!6609 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13216)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13216 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8352)

(assert (=> b!269506 (= lt!135252 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13216 (_ BitVec 32)) Bool)

(assert (=> b!269506 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13217 (store (arr!6257 a!3325) i!1267 k0!2581) (size!6609 a!3325)) mask!3868)))

(declare-fun b!269507 () Bool)

(declare-fun Unit!8354 () Unit!8352)

(assert (=> b!269507 (= e!173870 Unit!8354)))

(declare-fun b!269508 () Bool)

(declare-fun res!133724 () Bool)

(declare-fun e!173869 () Bool)

(assert (=> b!269508 (=> (not res!133724) (not e!173869))))

(assert (=> b!269508 (= res!133724 (= startIndex!26 i!1267))))

(declare-fun b!269509 () Bool)

(declare-fun res!133722 () Bool)

(assert (=> b!269509 (=> (not res!133722) (not e!173871))))

(declare-datatypes ((List!4086 0))(
  ( (Nil!4083) (Cons!4082 (h!4749 (_ BitVec 64)) (t!9176 List!4086)) )
))
(declare-fun arrayNoDuplicates!0 (array!13216 (_ BitVec 32) List!4086) Bool)

(assert (=> b!269509 (= res!133722 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4083))))

(declare-fun b!269510 () Bool)

(declare-fun res!133723 () Bool)

(assert (=> b!269510 (=> (not res!133723) (not e!173869))))

(assert (=> b!269510 (= res!133723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269511 () Bool)

(assert (=> b!269511 (= e!173871 e!173869)))

(declare-fun res!133727 () Bool)

(assert (=> b!269511 (=> (not res!133727) (not e!173869))))

(declare-datatypes ((SeekEntryResult!1426 0))(
  ( (MissingZero!1426 (index!7874 (_ BitVec 32))) (Found!1426 (index!7875 (_ BitVec 32))) (Intermediate!1426 (undefined!2238 Bool) (index!7876 (_ BitVec 32)) (x!26191 (_ BitVec 32))) (Undefined!1426) (MissingVacant!1426 (index!7877 (_ BitVec 32))) )
))
(declare-fun lt!135254 () SeekEntryResult!1426)

(assert (=> b!269511 (= res!133727 (or (= lt!135254 (MissingZero!1426 i!1267)) (= lt!135254 (MissingVacant!1426 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13216 (_ BitVec 32)) SeekEntryResult!1426)

(assert (=> b!269511 (= lt!135254 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!133726 () Bool)

(assert (=> start!26130 (=> (not res!133726) (not e!173871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26130 (= res!133726 (validMask!0 mask!3868))))

(assert (=> start!26130 e!173871))

(declare-fun array_inv!4211 (array!13216) Bool)

(assert (=> start!26130 (array_inv!4211 a!3325)))

(assert (=> start!26130 true))

(declare-fun b!269512 () Bool)

(assert (=> b!269512 (= e!173869 false)))

(declare-fun lt!135253 () Unit!8352)

(assert (=> b!269512 (= lt!135253 e!173870)))

(declare-fun c!45443 () Bool)

(assert (=> b!269512 (= c!45443 (bvslt startIndex!26 (bvsub (size!6609 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269513 () Bool)

(declare-fun res!133721 () Bool)

(assert (=> b!269513 (=> (not res!133721) (not e!173871))))

(declare-fun arrayContainsKey!0 (array!13216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269513 (= res!133721 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269514 () Bool)

(declare-fun res!133728 () Bool)

(assert (=> b!269514 (=> (not res!133728) (not e!173871))))

(assert (=> b!269514 (= res!133728 (and (= (size!6609 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6609 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6609 a!3325))))))

(assert (= (and start!26130 res!133726) b!269514))

(assert (= (and b!269514 res!133728) b!269505))

(assert (= (and b!269505 res!133725) b!269509))

(assert (= (and b!269509 res!133722) b!269513))

(assert (= (and b!269513 res!133721) b!269511))

(assert (= (and b!269511 res!133727) b!269510))

(assert (= (and b!269510 res!133723) b!269508))

(assert (= (and b!269508 res!133724) b!269512))

(assert (= (and b!269512 c!45443) b!269506))

(assert (= (and b!269512 (not c!45443)) b!269507))

(declare-fun m!285369 () Bool)

(assert (=> b!269513 m!285369))

(declare-fun m!285371 () Bool)

(assert (=> start!26130 m!285371))

(declare-fun m!285373 () Bool)

(assert (=> start!26130 m!285373))

(declare-fun m!285375 () Bool)

(assert (=> b!269509 m!285375))

(declare-fun m!285377 () Bool)

(assert (=> b!269510 m!285377))

(declare-fun m!285379 () Bool)

(assert (=> b!269511 m!285379))

(declare-fun m!285381 () Bool)

(assert (=> b!269506 m!285381))

(declare-fun m!285383 () Bool)

(assert (=> b!269506 m!285383))

(declare-fun m!285385 () Bool)

(assert (=> b!269506 m!285385))

(declare-fun m!285387 () Bool)

(assert (=> b!269505 m!285387))

(check-sat (not b!269506) (not b!269513) (not start!26130) (not b!269511) (not b!269509) (not b!269510) (not b!269505))
(check-sat)
