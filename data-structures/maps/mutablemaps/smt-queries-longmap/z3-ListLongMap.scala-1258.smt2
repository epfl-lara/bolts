; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26118 () Bool)

(assert start!26118)

(declare-fun b!269325 () Bool)

(declare-fun res!133581 () Bool)

(declare-fun e!173797 () Bool)

(assert (=> b!269325 (=> (not res!133581) (not e!173797))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269325 (= res!133581 (= startIndex!26 i!1267))))

(declare-fun b!269326 () Bool)

(declare-fun res!133583 () Bool)

(declare-fun e!173800 () Bool)

(assert (=> b!269326 (=> (not res!133583) (not e!173800))))

(declare-datatypes ((array!13204 0))(
  ( (array!13205 (arr!6251 (Array (_ BitVec 32) (_ BitVec 64))) (size!6603 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13204)

(declare-datatypes ((List!4080 0))(
  ( (Nil!4077) (Cons!4076 (h!4743 (_ BitVec 64)) (t!9170 List!4080)) )
))
(declare-fun arrayNoDuplicates!0 (array!13204 (_ BitVec 32) List!4080) Bool)

(assert (=> b!269326 (= res!133583 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4077))))

(declare-fun b!269327 () Bool)

(declare-datatypes ((Unit!8334 0))(
  ( (Unit!8335) )
))
(declare-fun e!173799 () Unit!8334)

(declare-fun lt!135198 () Unit!8334)

(assert (=> b!269327 (= e!173799 lt!135198)))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13204 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8334)

(assert (=> b!269327 (= lt!135198 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13204 (_ BitVec 32)) Bool)

(assert (=> b!269327 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13205 (store (arr!6251 a!3325) i!1267 k0!2581) (size!6603 a!3325)) mask!3868)))

(declare-fun b!269328 () Bool)

(declare-fun res!133582 () Bool)

(assert (=> b!269328 (=> (not res!133582) (not e!173800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269328 (= res!133582 (validKeyInArray!0 k0!2581))))

(declare-fun b!269329 () Bool)

(declare-fun res!133584 () Bool)

(assert (=> b!269329 (=> (not res!133584) (not e!173800))))

(declare-fun arrayContainsKey!0 (array!13204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269329 (= res!133584 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!133577 () Bool)

(assert (=> start!26118 (=> (not res!133577) (not e!173800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26118 (= res!133577 (validMask!0 mask!3868))))

(assert (=> start!26118 e!173800))

(declare-fun array_inv!4205 (array!13204) Bool)

(assert (=> start!26118 (array_inv!4205 a!3325)))

(assert (=> start!26118 true))

(declare-fun b!269330 () Bool)

(declare-fun res!133578 () Bool)

(assert (=> b!269330 (=> (not res!133578) (not e!173800))))

(assert (=> b!269330 (= res!133578 (and (= (size!6603 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6603 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6603 a!3325))))))

(declare-fun b!269331 () Bool)

(assert (=> b!269331 (= e!173800 e!173797)))

(declare-fun res!133580 () Bool)

(assert (=> b!269331 (=> (not res!133580) (not e!173797))))

(declare-datatypes ((SeekEntryResult!1420 0))(
  ( (MissingZero!1420 (index!7850 (_ BitVec 32))) (Found!1420 (index!7851 (_ BitVec 32))) (Intermediate!1420 (undefined!2232 Bool) (index!7852 (_ BitVec 32)) (x!26169 (_ BitVec 32))) (Undefined!1420) (MissingVacant!1420 (index!7853 (_ BitVec 32))) )
))
(declare-fun lt!135199 () SeekEntryResult!1420)

(assert (=> b!269331 (= res!133580 (or (= lt!135199 (MissingZero!1420 i!1267)) (= lt!135199 (MissingVacant!1420 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13204 (_ BitVec 32)) SeekEntryResult!1420)

(assert (=> b!269331 (= lt!135199 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269332 () Bool)

(assert (=> b!269332 (= e!173797 false)))

(declare-fun lt!135200 () Unit!8334)

(assert (=> b!269332 (= lt!135200 e!173799)))

(declare-fun c!45425 () Bool)

(assert (=> b!269332 (= c!45425 (bvslt startIndex!26 (bvsub (size!6603 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269333 () Bool)

(declare-fun Unit!8336 () Unit!8334)

(assert (=> b!269333 (= e!173799 Unit!8336)))

(declare-fun b!269334 () Bool)

(declare-fun res!133579 () Bool)

(assert (=> b!269334 (=> (not res!133579) (not e!173797))))

(assert (=> b!269334 (= res!133579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26118 res!133577) b!269330))

(assert (= (and b!269330 res!133578) b!269328))

(assert (= (and b!269328 res!133582) b!269326))

(assert (= (and b!269326 res!133583) b!269329))

(assert (= (and b!269329 res!133584) b!269331))

(assert (= (and b!269331 res!133580) b!269334))

(assert (= (and b!269334 res!133579) b!269325))

(assert (= (and b!269325 res!133581) b!269332))

(assert (= (and b!269332 c!45425) b!269327))

(assert (= (and b!269332 (not c!45425)) b!269333))

(declare-fun m!285249 () Bool)

(assert (=> b!269334 m!285249))

(declare-fun m!285251 () Bool)

(assert (=> b!269327 m!285251))

(declare-fun m!285253 () Bool)

(assert (=> b!269327 m!285253))

(declare-fun m!285255 () Bool)

(assert (=> b!269327 m!285255))

(declare-fun m!285257 () Bool)

(assert (=> b!269331 m!285257))

(declare-fun m!285259 () Bool)

(assert (=> b!269328 m!285259))

(declare-fun m!285261 () Bool)

(assert (=> b!269326 m!285261))

(declare-fun m!285263 () Bool)

(assert (=> b!269329 m!285263))

(declare-fun m!285265 () Bool)

(assert (=> start!26118 m!285265))

(declare-fun m!285267 () Bool)

(assert (=> start!26118 m!285267))

(check-sat (not b!269329) (not b!269334) (not start!26118) (not b!269326) (not b!269327) (not b!269328) (not b!269331))
(check-sat)
