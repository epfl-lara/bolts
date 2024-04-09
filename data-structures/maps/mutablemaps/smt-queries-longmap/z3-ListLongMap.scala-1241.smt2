; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26016 () Bool)

(assert start!26016)

(declare-fun b!268270 () Bool)

(declare-fun res!132588 () Bool)

(declare-fun e!173308 () Bool)

(assert (=> b!268270 (=> (not res!132588) (not e!173308))))

(declare-datatypes ((array!13102 0))(
  ( (array!13103 (arr!6200 (Array (_ BitVec 32) (_ BitVec 64))) (size!6552 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13102)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268270 (= res!132588 (and (= (size!6552 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6552 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6552 a!3325))))))

(declare-fun b!268271 () Bool)

(declare-fun e!173306 () Bool)

(assert (=> b!268271 (= e!173308 e!173306)))

(declare-fun res!132590 () Bool)

(assert (=> b!268271 (=> (not res!132590) (not e!173306))))

(declare-datatypes ((SeekEntryResult!1369 0))(
  ( (MissingZero!1369 (index!7646 (_ BitVec 32))) (Found!1369 (index!7647 (_ BitVec 32))) (Intermediate!1369 (undefined!2181 Bool) (index!7648 (_ BitVec 32)) (x!25982 (_ BitVec 32))) (Undefined!1369) (MissingVacant!1369 (index!7649 (_ BitVec 32))) )
))
(declare-fun lt!134870 () SeekEntryResult!1369)

(assert (=> b!268271 (= res!132590 (or (= lt!134870 (MissingZero!1369 i!1267)) (= lt!134870 (MissingVacant!1369 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13102 (_ BitVec 32)) SeekEntryResult!1369)

(assert (=> b!268271 (= lt!134870 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268272 () Bool)

(assert (=> b!268272 (= e!173306 false)))

(declare-fun lt!134869 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13102 (_ BitVec 32)) Bool)

(assert (=> b!268272 (= lt!134869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268273 () Bool)

(declare-fun res!132589 () Bool)

(assert (=> b!268273 (=> (not res!132589) (not e!173308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268273 (= res!132589 (validKeyInArray!0 k0!2581))))

(declare-fun b!268274 () Bool)

(declare-fun res!132586 () Bool)

(assert (=> b!268274 (=> (not res!132586) (not e!173308))))

(declare-datatypes ((List!4029 0))(
  ( (Nil!4026) (Cons!4025 (h!4692 (_ BitVec 64)) (t!9119 List!4029)) )
))
(declare-fun arrayNoDuplicates!0 (array!13102 (_ BitVec 32) List!4029) Bool)

(assert (=> b!268274 (= res!132586 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4026))))

(declare-fun b!268275 () Bool)

(declare-fun res!132591 () Bool)

(assert (=> b!268275 (=> (not res!132591) (not e!173308))))

(declare-fun arrayContainsKey!0 (array!13102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268275 (= res!132591 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132587 () Bool)

(assert (=> start!26016 (=> (not res!132587) (not e!173308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26016 (= res!132587 (validMask!0 mask!3868))))

(assert (=> start!26016 e!173308))

(declare-fun array_inv!4154 (array!13102) Bool)

(assert (=> start!26016 (array_inv!4154 a!3325)))

(assert (=> start!26016 true))

(assert (= (and start!26016 res!132587) b!268270))

(assert (= (and b!268270 res!132588) b!268273))

(assert (= (and b!268273 res!132589) b!268274))

(assert (= (and b!268274 res!132586) b!268275))

(assert (= (and b!268275 res!132591) b!268271))

(assert (= (and b!268271 res!132590) b!268272))

(declare-fun m!284475 () Bool)

(assert (=> start!26016 m!284475))

(declare-fun m!284477 () Bool)

(assert (=> start!26016 m!284477))

(declare-fun m!284479 () Bool)

(assert (=> b!268274 m!284479))

(declare-fun m!284481 () Bool)

(assert (=> b!268275 m!284481))

(declare-fun m!284483 () Bool)

(assert (=> b!268271 m!284483))

(declare-fun m!284485 () Bool)

(assert (=> b!268272 m!284485))

(declare-fun m!284487 () Bool)

(assert (=> b!268273 m!284487))

(check-sat (not start!26016) (not b!268273) (not b!268271) (not b!268274) (not b!268275) (not b!268272))
(check-sat)
