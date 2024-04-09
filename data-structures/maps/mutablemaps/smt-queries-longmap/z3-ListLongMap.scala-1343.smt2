; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26628 () Bool)

(assert start!26628)

(declare-fun b!276298 () Bool)

(declare-fun res!140329 () Bool)

(declare-fun e!176538 () Bool)

(assert (=> b!276298 (=> (not res!140329) (not e!176538))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276298 (= res!140329 (validKeyInArray!0 k0!2581))))

(declare-fun b!276299 () Bool)

(declare-fun e!176539 () Bool)

(assert (=> b!276299 (= e!176538 e!176539)))

(declare-fun res!140327 () Bool)

(assert (=> b!276299 (=> (not res!140327) (not e!176539))))

(declare-datatypes ((SeekEntryResult!1675 0))(
  ( (MissingZero!1675 (index!8870 (_ BitVec 32))) (Found!1675 (index!8871 (_ BitVec 32))) (Intermediate!1675 (undefined!2487 Bool) (index!8872 (_ BitVec 32)) (x!27104 (_ BitVec 32))) (Undefined!1675) (MissingVacant!1675 (index!8873 (_ BitVec 32))) )
))
(declare-fun lt!137632 () SeekEntryResult!1675)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276299 (= res!140327 (or (= lt!137632 (MissingZero!1675 i!1267)) (= lt!137632 (MissingVacant!1675 i!1267))))))

(declare-datatypes ((array!13714 0))(
  ( (array!13715 (arr!6506 (Array (_ BitVec 32) (_ BitVec 64))) (size!6858 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13714)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13714 (_ BitVec 32)) SeekEntryResult!1675)

(assert (=> b!276299 (= lt!137632 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276300 () Bool)

(assert (=> b!276300 (= e!176539 false)))

(declare-fun lt!137633 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13714 (_ BitVec 32)) Bool)

(assert (=> b!276300 (= lt!137633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276301 () Bool)

(declare-fun res!140331 () Bool)

(assert (=> b!276301 (=> (not res!140331) (not e!176538))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276301 (= res!140331 (and (= (size!6858 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6858 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6858 a!3325))))))

(declare-fun b!276302 () Bool)

(declare-fun res!140330 () Bool)

(assert (=> b!276302 (=> (not res!140330) (not e!176538))))

(declare-datatypes ((List!4335 0))(
  ( (Nil!4332) (Cons!4331 (h!4998 (_ BitVec 64)) (t!9425 List!4335)) )
))
(declare-fun arrayNoDuplicates!0 (array!13714 (_ BitVec 32) List!4335) Bool)

(assert (=> b!276302 (= res!140330 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4332))))

(declare-fun res!140328 () Bool)

(assert (=> start!26628 (=> (not res!140328) (not e!176538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26628 (= res!140328 (validMask!0 mask!3868))))

(assert (=> start!26628 e!176538))

(declare-fun array_inv!4460 (array!13714) Bool)

(assert (=> start!26628 (array_inv!4460 a!3325)))

(assert (=> start!26628 true))

(declare-fun b!276303 () Bool)

(declare-fun res!140326 () Bool)

(assert (=> b!276303 (=> (not res!140326) (not e!176538))))

(declare-fun arrayContainsKey!0 (array!13714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276303 (= res!140326 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26628 res!140328) b!276301))

(assert (= (and b!276301 res!140331) b!276298))

(assert (= (and b!276298 res!140329) b!276302))

(assert (= (and b!276302 res!140330) b!276303))

(assert (= (and b!276303 res!140326) b!276299))

(assert (= (and b!276299 res!140327) b!276300))

(declare-fun m!291699 () Bool)

(assert (=> b!276302 m!291699))

(declare-fun m!291701 () Bool)

(assert (=> b!276299 m!291701))

(declare-fun m!291703 () Bool)

(assert (=> b!276300 m!291703))

(declare-fun m!291705 () Bool)

(assert (=> b!276298 m!291705))

(declare-fun m!291707 () Bool)

(assert (=> start!26628 m!291707))

(declare-fun m!291709 () Bool)

(assert (=> start!26628 m!291709))

(declare-fun m!291711 () Bool)

(assert (=> b!276303 m!291711))

(check-sat (not start!26628) (not b!276299) (not b!276300) (not b!276298) (not b!276302) (not b!276303))
(check-sat)
