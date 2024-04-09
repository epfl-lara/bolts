; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26142 () Bool)

(assert start!26142)

(declare-fun b!269685 () Bool)

(declare-fun res!133870 () Bool)

(declare-fun e!173944 () Bool)

(assert (=> b!269685 (=> (not res!133870) (not e!173944))))

(declare-datatypes ((array!13228 0))(
  ( (array!13229 (arr!6263 (Array (_ BitVec 32) (_ BitVec 64))) (size!6615 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13228)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13228 (_ BitVec 32)) Bool)

(assert (=> b!269685 (= res!133870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269686 () Bool)

(declare-fun res!133867 () Bool)

(declare-fun e!173943 () Bool)

(assert (=> b!269686 (=> (not res!133867) (not e!173943))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269686 (= res!133867 (and (= (size!6615 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6615 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6615 a!3325))))))

(declare-fun b!269687 () Bool)

(declare-fun res!133865 () Bool)

(assert (=> b!269687 (=> (not res!133865) (not e!173944))))

(assert (=> b!269687 (= res!133865 (= startIndex!26 i!1267))))

(declare-fun b!269688 () Bool)

(declare-fun res!133866 () Bool)

(assert (=> b!269688 (=> (not res!133866) (not e!173943))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269688 (= res!133866 (validKeyInArray!0 k0!2581))))

(declare-fun res!133872 () Bool)

(assert (=> start!26142 (=> (not res!133872) (not e!173943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26142 (= res!133872 (validMask!0 mask!3868))))

(assert (=> start!26142 e!173943))

(declare-fun array_inv!4217 (array!13228) Bool)

(assert (=> start!26142 (array_inv!4217 a!3325)))

(assert (=> start!26142 true))

(declare-fun b!269689 () Bool)

(declare-fun res!133868 () Bool)

(assert (=> b!269689 (=> (not res!133868) (not e!173943))))

(declare-datatypes ((List!4092 0))(
  ( (Nil!4089) (Cons!4088 (h!4755 (_ BitVec 64)) (t!9182 List!4092)) )
))
(declare-fun arrayNoDuplicates!0 (array!13228 (_ BitVec 32) List!4092) Bool)

(assert (=> b!269689 (= res!133868 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4089))))

(declare-fun b!269690 () Bool)

(assert (=> b!269690 (= e!173944 false)))

(declare-datatypes ((Unit!8370 0))(
  ( (Unit!8371) )
))
(declare-fun lt!135307 () Unit!8370)

(declare-fun e!173942 () Unit!8370)

(assert (=> b!269690 (= lt!135307 e!173942)))

(declare-fun c!45461 () Bool)

(assert (=> b!269690 (= c!45461 (bvslt startIndex!26 (bvsub (size!6615 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269691 () Bool)

(declare-fun Unit!8372 () Unit!8370)

(assert (=> b!269691 (= e!173942 Unit!8372)))

(declare-fun b!269692 () Bool)

(declare-fun res!133869 () Bool)

(assert (=> b!269692 (=> (not res!133869) (not e!173943))))

(declare-fun arrayContainsKey!0 (array!13228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269692 (= res!133869 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269693 () Bool)

(assert (=> b!269693 (= e!173943 e!173944)))

(declare-fun res!133871 () Bool)

(assert (=> b!269693 (=> (not res!133871) (not e!173944))))

(declare-datatypes ((SeekEntryResult!1432 0))(
  ( (MissingZero!1432 (index!7898 (_ BitVec 32))) (Found!1432 (index!7899 (_ BitVec 32))) (Intermediate!1432 (undefined!2244 Bool) (index!7900 (_ BitVec 32)) (x!26213 (_ BitVec 32))) (Undefined!1432) (MissingVacant!1432 (index!7901 (_ BitVec 32))) )
))
(declare-fun lt!135308 () SeekEntryResult!1432)

(assert (=> b!269693 (= res!133871 (or (= lt!135308 (MissingZero!1432 i!1267)) (= lt!135308 (MissingVacant!1432 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13228 (_ BitVec 32)) SeekEntryResult!1432)

(assert (=> b!269693 (= lt!135308 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269694 () Bool)

(declare-fun lt!135306 () Unit!8370)

(assert (=> b!269694 (= e!173942 lt!135306)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13228 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8370)

(assert (=> b!269694 (= lt!135306 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269694 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13229 (store (arr!6263 a!3325) i!1267 k0!2581) (size!6615 a!3325)) mask!3868)))

(assert (= (and start!26142 res!133872) b!269686))

(assert (= (and b!269686 res!133867) b!269688))

(assert (= (and b!269688 res!133866) b!269689))

(assert (= (and b!269689 res!133868) b!269692))

(assert (= (and b!269692 res!133869) b!269693))

(assert (= (and b!269693 res!133871) b!269685))

(assert (= (and b!269685 res!133870) b!269687))

(assert (= (and b!269687 res!133865) b!269690))

(assert (= (and b!269690 c!45461) b!269694))

(assert (= (and b!269690 (not c!45461)) b!269691))

(declare-fun m!285489 () Bool)

(assert (=> b!269692 m!285489))

(declare-fun m!285491 () Bool)

(assert (=> b!269689 m!285491))

(declare-fun m!285493 () Bool)

(assert (=> start!26142 m!285493))

(declare-fun m!285495 () Bool)

(assert (=> start!26142 m!285495))

(declare-fun m!285497 () Bool)

(assert (=> b!269685 m!285497))

(declare-fun m!285499 () Bool)

(assert (=> b!269693 m!285499))

(declare-fun m!285501 () Bool)

(assert (=> b!269688 m!285501))

(declare-fun m!285503 () Bool)

(assert (=> b!269694 m!285503))

(declare-fun m!285505 () Bool)

(assert (=> b!269694 m!285505))

(declare-fun m!285507 () Bool)

(assert (=> b!269694 m!285507))

(check-sat (not b!269692) (not b!269693) (not start!26142) (not b!269694) (not b!269689) (not b!269688) (not b!269685))
(check-sat)
