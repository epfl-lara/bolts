; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26268 () Bool)

(assert start!26268)

(declare-fun res!135887 () Bool)

(declare-fun e!174657 () Bool)

(assert (=> start!26268 (=> (not res!135887) (not e!174657))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26268 (= res!135887 (validMask!0 mask!3868))))

(assert (=> start!26268 e!174657))

(declare-datatypes ((array!13354 0))(
  ( (array!13355 (arr!6326 (Array (_ BitVec 32) (_ BitVec 64))) (size!6678 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13354)

(declare-fun array_inv!4280 (array!13354) Bool)

(assert (=> start!26268 (array_inv!4280 a!3325)))

(assert (=> start!26268 true))

(declare-fun b!271858 () Bool)

(declare-fun res!135892 () Bool)

(assert (=> b!271858 (=> (not res!135892) (not e!174657))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271858 (= res!135892 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271859 () Bool)

(declare-fun res!135893 () Bool)

(assert (=> b!271859 (=> (not res!135893) (not e!174657))))

(declare-datatypes ((List!4155 0))(
  ( (Nil!4152) (Cons!4151 (h!4818 (_ BitVec 64)) (t!9245 List!4155)) )
))
(declare-fun arrayNoDuplicates!0 (array!13354 (_ BitVec 32) List!4155) Bool)

(assert (=> b!271859 (= res!135893 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4152))))

(declare-fun b!271860 () Bool)

(declare-fun res!135891 () Bool)

(assert (=> b!271860 (=> (not res!135891) (not e!174657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271860 (= res!135891 (validKeyInArray!0 k0!2581))))

(declare-fun b!271861 () Bool)

(declare-fun e!174658 () Bool)

(assert (=> b!271861 (= e!174657 e!174658)))

(declare-fun res!135894 () Bool)

(assert (=> b!271861 (=> (not res!135894) (not e!174658))))

(declare-datatypes ((SeekEntryResult!1495 0))(
  ( (MissingZero!1495 (index!8150 (_ BitVec 32))) (Found!1495 (index!8151 (_ BitVec 32))) (Intermediate!1495 (undefined!2307 Bool) (index!8152 (_ BitVec 32)) (x!26444 (_ BitVec 32))) (Undefined!1495) (MissingVacant!1495 (index!8153 (_ BitVec 32))) )
))
(declare-fun lt!135905 () SeekEntryResult!1495)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271861 (= res!135894 (or (= lt!135905 (MissingZero!1495 i!1267)) (= lt!135905 (MissingVacant!1495 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13354 (_ BitVec 32)) SeekEntryResult!1495)

(assert (=> b!271861 (= lt!135905 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271862 () Bool)

(declare-fun res!135888 () Bool)

(assert (=> b!271862 (=> (not res!135888) (not e!174658))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271862 (= res!135888 (not (= startIndex!26 i!1267)))))

(declare-fun b!271863 () Bool)

(assert (=> b!271863 (= e!174658 (not true))))

(assert (=> b!271863 (arrayNoDuplicates!0 (array!13355 (store (arr!6326 a!3325) i!1267 k0!2581) (size!6678 a!3325)) #b00000000000000000000000000000000 Nil!4152)))

(declare-datatypes ((Unit!8456 0))(
  ( (Unit!8457) )
))
(declare-fun lt!135904 () Unit!8456)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13354 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4155) Unit!8456)

(assert (=> b!271863 (= lt!135904 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4152))))

(declare-fun b!271864 () Bool)

(declare-fun res!135890 () Bool)

(assert (=> b!271864 (=> (not res!135890) (not e!174657))))

(assert (=> b!271864 (= res!135890 (and (= (size!6678 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6678 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6678 a!3325))))))

(declare-fun b!271865 () Bool)

(declare-fun res!135886 () Bool)

(assert (=> b!271865 (=> (not res!135886) (not e!174658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13354 (_ BitVec 32)) Bool)

(assert (=> b!271865 (= res!135886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271866 () Bool)

(declare-fun res!135889 () Bool)

(assert (=> b!271866 (=> (not res!135889) (not e!174658))))

(assert (=> b!271866 (= res!135889 (validKeyInArray!0 (select (arr!6326 a!3325) startIndex!26)))))

(assert (= (and start!26268 res!135887) b!271864))

(assert (= (and b!271864 res!135890) b!271860))

(assert (= (and b!271860 res!135891) b!271859))

(assert (= (and b!271859 res!135893) b!271858))

(assert (= (and b!271858 res!135892) b!271861))

(assert (= (and b!271861 res!135894) b!271865))

(assert (= (and b!271865 res!135886) b!271862))

(assert (= (and b!271862 res!135888) b!271866))

(assert (= (and b!271866 res!135889) b!271863))

(declare-fun m!287059 () Bool)

(assert (=> b!271865 m!287059))

(declare-fun m!287061 () Bool)

(assert (=> b!271859 m!287061))

(declare-fun m!287063 () Bool)

(assert (=> b!271861 m!287063))

(declare-fun m!287065 () Bool)

(assert (=> b!271860 m!287065))

(declare-fun m!287067 () Bool)

(assert (=> b!271866 m!287067))

(assert (=> b!271866 m!287067))

(declare-fun m!287069 () Bool)

(assert (=> b!271866 m!287069))

(declare-fun m!287071 () Bool)

(assert (=> b!271858 m!287071))

(declare-fun m!287073 () Bool)

(assert (=> start!26268 m!287073))

(declare-fun m!287075 () Bool)

(assert (=> start!26268 m!287075))

(declare-fun m!287077 () Bool)

(assert (=> b!271863 m!287077))

(declare-fun m!287079 () Bool)

(assert (=> b!271863 m!287079))

(declare-fun m!287081 () Bool)

(assert (=> b!271863 m!287081))

(check-sat (not b!271858) (not b!271866) (not b!271861) (not b!271863) (not b!271860) (not start!26268) (not b!271859) (not b!271865))
(check-sat)
