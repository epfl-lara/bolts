; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27144 () Bool)

(assert start!27144)

(declare-fun b!280591 () Bool)

(declare-fun res!143699 () Bool)

(declare-fun e!178586 () Bool)

(assert (=> b!280591 (=> (not res!143699) (not e!178586))))

(declare-datatypes ((array!13951 0))(
  ( (array!13952 (arr!6617 (Array (_ BitVec 32) (_ BitVec 64))) (size!6969 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13951)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13951 (_ BitVec 32)) Bool)

(assert (=> b!280591 (= res!143699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280592 () Bool)

(declare-fun res!143698 () Bool)

(declare-fun e!178588 () Bool)

(assert (=> b!280592 (=> (not res!143698) (not e!178588))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280592 (= res!143698 (and (= (size!6969 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6969 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6969 a!3325))))))

(declare-fun b!280593 () Bool)

(declare-fun res!143704 () Bool)

(assert (=> b!280593 (=> (not res!143704) (not e!178588))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280593 (= res!143704 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280594 () Bool)

(declare-fun res!143702 () Bool)

(assert (=> b!280594 (=> (not res!143702) (not e!178586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280594 (= res!143702 (validKeyInArray!0 (select (arr!6617 a!3325) startIndex!26)))))

(declare-fun b!280595 () Bool)

(declare-fun res!143705 () Bool)

(assert (=> b!280595 (=> (not res!143705) (not e!178588))))

(assert (=> b!280595 (= res!143705 (validKeyInArray!0 k0!2581))))

(declare-fun b!280596 () Bool)

(assert (=> b!280596 (= e!178586 (not true))))

(declare-datatypes ((List!4446 0))(
  ( (Nil!4443) (Cons!4442 (h!5112 (_ BitVec 64)) (t!9536 List!4446)) )
))
(declare-fun arrayNoDuplicates!0 (array!13951 (_ BitVec 32) List!4446) Bool)

(assert (=> b!280596 (arrayNoDuplicates!0 (array!13952 (store (arr!6617 a!3325) i!1267 k0!2581) (size!6969 a!3325)) #b00000000000000000000000000000000 Nil!4443)))

(declare-datatypes ((Unit!8835 0))(
  ( (Unit!8836) )
))
(declare-fun lt!138893 () Unit!8835)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13951 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4446) Unit!8835)

(assert (=> b!280596 (= lt!138893 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4443))))

(declare-fun res!143703 () Bool)

(assert (=> start!27144 (=> (not res!143703) (not e!178588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27144 (= res!143703 (validMask!0 mask!3868))))

(assert (=> start!27144 e!178588))

(declare-fun array_inv!4571 (array!13951) Bool)

(assert (=> start!27144 (array_inv!4571 a!3325)))

(assert (=> start!27144 true))

(declare-fun b!280597 () Bool)

(assert (=> b!280597 (= e!178588 e!178586)))

(declare-fun res!143706 () Bool)

(assert (=> b!280597 (=> (not res!143706) (not e!178586))))

(declare-datatypes ((SeekEntryResult!1786 0))(
  ( (MissingZero!1786 (index!9314 (_ BitVec 32))) (Found!1786 (index!9315 (_ BitVec 32))) (Intermediate!1786 (undefined!2598 Bool) (index!9316 (_ BitVec 32)) (x!27520 (_ BitVec 32))) (Undefined!1786) (MissingVacant!1786 (index!9317 (_ BitVec 32))) )
))
(declare-fun lt!138892 () SeekEntryResult!1786)

(assert (=> b!280597 (= res!143706 (or (= lt!138892 (MissingZero!1786 i!1267)) (= lt!138892 (MissingVacant!1786 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13951 (_ BitVec 32)) SeekEntryResult!1786)

(assert (=> b!280597 (= lt!138892 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280598 () Bool)

(declare-fun res!143701 () Bool)

(assert (=> b!280598 (=> (not res!143701) (not e!178588))))

(assert (=> b!280598 (= res!143701 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4443))))

(declare-fun b!280599 () Bool)

(declare-fun res!143700 () Bool)

(assert (=> b!280599 (=> (not res!143700) (not e!178586))))

(assert (=> b!280599 (= res!143700 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27144 res!143703) b!280592))

(assert (= (and b!280592 res!143698) b!280595))

(assert (= (and b!280595 res!143705) b!280598))

(assert (= (and b!280598 res!143701) b!280593))

(assert (= (and b!280593 res!143704) b!280597))

(assert (= (and b!280597 res!143706) b!280591))

(assert (= (and b!280591 res!143699) b!280599))

(assert (= (and b!280599 res!143700) b!280594))

(assert (= (and b!280594 res!143702) b!280596))

(declare-fun m!295045 () Bool)

(assert (=> start!27144 m!295045))

(declare-fun m!295047 () Bool)

(assert (=> start!27144 m!295047))

(declare-fun m!295049 () Bool)

(assert (=> b!280594 m!295049))

(assert (=> b!280594 m!295049))

(declare-fun m!295051 () Bool)

(assert (=> b!280594 m!295051))

(declare-fun m!295053 () Bool)

(assert (=> b!280598 m!295053))

(declare-fun m!295055 () Bool)

(assert (=> b!280597 m!295055))

(declare-fun m!295057 () Bool)

(assert (=> b!280591 m!295057))

(declare-fun m!295059 () Bool)

(assert (=> b!280595 m!295059))

(declare-fun m!295061 () Bool)

(assert (=> b!280596 m!295061))

(declare-fun m!295063 () Bool)

(assert (=> b!280596 m!295063))

(declare-fun m!295065 () Bool)

(assert (=> b!280596 m!295065))

(declare-fun m!295067 () Bool)

(assert (=> b!280593 m!295067))

(check-sat (not b!280598) (not b!280593) (not b!280596) (not b!280597) (not b!280595) (not start!27144) (not b!280591) (not b!280594))
(check-sat)
