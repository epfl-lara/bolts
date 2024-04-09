; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26616 () Bool)

(assert start!26616)

(declare-fun b!276190 () Bool)

(declare-fun res!140218 () Bool)

(declare-fun e!176484 () Bool)

(assert (=> b!276190 (=> (not res!140218) (not e!176484))))

(declare-datatypes ((array!13702 0))(
  ( (array!13703 (arr!6500 (Array (_ BitVec 32) (_ BitVec 64))) (size!6852 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13702)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276190 (= res!140218 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276191 () Bool)

(declare-fun res!140221 () Bool)

(assert (=> b!276191 (=> (not res!140221) (not e!176484))))

(declare-datatypes ((List!4329 0))(
  ( (Nil!4326) (Cons!4325 (h!4992 (_ BitVec 64)) (t!9419 List!4329)) )
))
(declare-fun arrayNoDuplicates!0 (array!13702 (_ BitVec 32) List!4329) Bool)

(assert (=> b!276191 (= res!140221 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4326))))

(declare-fun b!276192 () Bool)

(declare-fun e!176485 () Bool)

(assert (=> b!276192 (= e!176484 e!176485)))

(declare-fun res!140222 () Bool)

(assert (=> b!276192 (=> (not res!140222) (not e!176485))))

(declare-datatypes ((SeekEntryResult!1669 0))(
  ( (MissingZero!1669 (index!8846 (_ BitVec 32))) (Found!1669 (index!8847 (_ BitVec 32))) (Intermediate!1669 (undefined!2481 Bool) (index!8848 (_ BitVec 32)) (x!27082 (_ BitVec 32))) (Undefined!1669) (MissingVacant!1669 (index!8849 (_ BitVec 32))) )
))
(declare-fun lt!137596 () SeekEntryResult!1669)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276192 (= res!140222 (or (= lt!137596 (MissingZero!1669 i!1267)) (= lt!137596 (MissingVacant!1669 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13702 (_ BitVec 32)) SeekEntryResult!1669)

(assert (=> b!276192 (= lt!137596 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276193 () Bool)

(declare-fun res!140220 () Bool)

(assert (=> b!276193 (=> (not res!140220) (not e!176484))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276193 (= res!140220 (and (= (size!6852 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6852 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6852 a!3325))))))

(declare-fun res!140219 () Bool)

(assert (=> start!26616 (=> (not res!140219) (not e!176484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26616 (= res!140219 (validMask!0 mask!3868))))

(assert (=> start!26616 e!176484))

(declare-fun array_inv!4454 (array!13702) Bool)

(assert (=> start!26616 (array_inv!4454 a!3325)))

(assert (=> start!26616 true))

(declare-fun b!276194 () Bool)

(declare-fun res!140223 () Bool)

(assert (=> b!276194 (=> (not res!140223) (not e!176484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276194 (= res!140223 (validKeyInArray!0 k0!2581))))

(declare-fun b!276195 () Bool)

(assert (=> b!276195 (= e!176485 false)))

(declare-fun lt!137597 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13702 (_ BitVec 32)) Bool)

(assert (=> b!276195 (= lt!137597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26616 res!140219) b!276193))

(assert (= (and b!276193 res!140220) b!276194))

(assert (= (and b!276194 res!140223) b!276191))

(assert (= (and b!276191 res!140221) b!276190))

(assert (= (and b!276190 res!140218) b!276192))

(assert (= (and b!276192 res!140222) b!276195))

(declare-fun m!291615 () Bool)

(assert (=> b!276191 m!291615))

(declare-fun m!291617 () Bool)

(assert (=> b!276195 m!291617))

(declare-fun m!291619 () Bool)

(assert (=> start!26616 m!291619))

(declare-fun m!291621 () Bool)

(assert (=> start!26616 m!291621))

(declare-fun m!291623 () Bool)

(assert (=> b!276190 m!291623))

(declare-fun m!291625 () Bool)

(assert (=> b!276194 m!291625))

(declare-fun m!291627 () Bool)

(assert (=> b!276192 m!291627))

(check-sat (not b!276194) (not b!276190) (not b!276191) (not b!276192) (not b!276195) (not start!26616))
(check-sat)
