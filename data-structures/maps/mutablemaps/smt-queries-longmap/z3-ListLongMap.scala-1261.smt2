; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26136 () Bool)

(assert start!26136)

(declare-fun b!269595 () Bool)

(declare-fun res!133796 () Bool)

(declare-fun e!173908 () Bool)

(assert (=> b!269595 (=> (not res!133796) (not e!173908))))

(declare-datatypes ((array!13222 0))(
  ( (array!13223 (arr!6260 (Array (_ BitVec 32) (_ BitVec 64))) (size!6612 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13222)

(declare-datatypes ((List!4089 0))(
  ( (Nil!4086) (Cons!4085 (h!4752 (_ BitVec 64)) (t!9179 List!4089)) )
))
(declare-fun arrayNoDuplicates!0 (array!13222 (_ BitVec 32) List!4089) Bool)

(assert (=> b!269595 (= res!133796 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4086))))

(declare-fun b!269596 () Bool)

(declare-fun res!133799 () Bool)

(assert (=> b!269596 (=> (not res!133799) (not e!173908))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269596 (= res!133799 (and (= (size!6612 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6612 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6612 a!3325))))))

(declare-fun b!269597 () Bool)

(declare-fun res!133793 () Bool)

(declare-fun e!173905 () Bool)

(assert (=> b!269597 (=> (not res!133793) (not e!173905))))

(assert (=> b!269597 (= res!133793 (= startIndex!26 i!1267))))

(declare-fun b!269599 () Bool)

(declare-fun res!133800 () Bool)

(assert (=> b!269599 (=> (not res!133800) (not e!173908))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269599 (= res!133800 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269600 () Bool)

(declare-datatypes ((Unit!8361 0))(
  ( (Unit!8362) )
))
(declare-fun e!173906 () Unit!8361)

(declare-fun Unit!8363 () Unit!8361)

(assert (=> b!269600 (= e!173906 Unit!8363)))

(declare-fun b!269601 () Bool)

(declare-fun lt!135281 () Unit!8361)

(assert (=> b!269601 (= e!173906 lt!135281)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13222 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8361)

(assert (=> b!269601 (= lt!135281 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13222 (_ BitVec 32)) Bool)

(assert (=> b!269601 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13223 (store (arr!6260 a!3325) i!1267 k0!2581) (size!6612 a!3325)) mask!3868)))

(declare-fun b!269602 () Bool)

(declare-fun res!133798 () Bool)

(assert (=> b!269602 (=> (not res!133798) (not e!173905))))

(assert (=> b!269602 (= res!133798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269603 () Bool)

(declare-fun res!133797 () Bool)

(assert (=> b!269603 (=> (not res!133797) (not e!173908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269603 (= res!133797 (validKeyInArray!0 k0!2581))))

(declare-fun b!269604 () Bool)

(assert (=> b!269604 (= e!173905 false)))

(declare-fun lt!135280 () Unit!8361)

(assert (=> b!269604 (= lt!135280 e!173906)))

(declare-fun c!45452 () Bool)

(assert (=> b!269604 (= c!45452 (bvslt startIndex!26 (bvsub (size!6612 a!3325) #b00000000000000000000000000000001)))))

(declare-fun res!133794 () Bool)

(assert (=> start!26136 (=> (not res!133794) (not e!173908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26136 (= res!133794 (validMask!0 mask!3868))))

(assert (=> start!26136 e!173908))

(declare-fun array_inv!4214 (array!13222) Bool)

(assert (=> start!26136 (array_inv!4214 a!3325)))

(assert (=> start!26136 true))

(declare-fun b!269598 () Bool)

(assert (=> b!269598 (= e!173908 e!173905)))

(declare-fun res!133795 () Bool)

(assert (=> b!269598 (=> (not res!133795) (not e!173905))))

(declare-datatypes ((SeekEntryResult!1429 0))(
  ( (MissingZero!1429 (index!7886 (_ BitVec 32))) (Found!1429 (index!7887 (_ BitVec 32))) (Intermediate!1429 (undefined!2241 Bool) (index!7888 (_ BitVec 32)) (x!26202 (_ BitVec 32))) (Undefined!1429) (MissingVacant!1429 (index!7889 (_ BitVec 32))) )
))
(declare-fun lt!135279 () SeekEntryResult!1429)

(assert (=> b!269598 (= res!133795 (or (= lt!135279 (MissingZero!1429 i!1267)) (= lt!135279 (MissingVacant!1429 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13222 (_ BitVec 32)) SeekEntryResult!1429)

(assert (=> b!269598 (= lt!135279 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26136 res!133794) b!269596))

(assert (= (and b!269596 res!133799) b!269603))

(assert (= (and b!269603 res!133797) b!269595))

(assert (= (and b!269595 res!133796) b!269599))

(assert (= (and b!269599 res!133800) b!269598))

(assert (= (and b!269598 res!133795) b!269602))

(assert (= (and b!269602 res!133798) b!269597))

(assert (= (and b!269597 res!133793) b!269604))

(assert (= (and b!269604 c!45452) b!269601))

(assert (= (and b!269604 (not c!45452)) b!269600))

(declare-fun m!285429 () Bool)

(assert (=> b!269602 m!285429))

(declare-fun m!285431 () Bool)

(assert (=> b!269598 m!285431))

(declare-fun m!285433 () Bool)

(assert (=> b!269599 m!285433))

(declare-fun m!285435 () Bool)

(assert (=> b!269595 m!285435))

(declare-fun m!285437 () Bool)

(assert (=> b!269601 m!285437))

(declare-fun m!285439 () Bool)

(assert (=> b!269601 m!285439))

(declare-fun m!285441 () Bool)

(assert (=> b!269601 m!285441))

(declare-fun m!285443 () Bool)

(assert (=> start!26136 m!285443))

(declare-fun m!285445 () Bool)

(assert (=> start!26136 m!285445))

(declare-fun m!285447 () Bool)

(assert (=> b!269603 m!285447))

(check-sat (not start!26136) (not b!269601) (not b!269598) (not b!269595) (not b!269603) (not b!269602) (not b!269599))
