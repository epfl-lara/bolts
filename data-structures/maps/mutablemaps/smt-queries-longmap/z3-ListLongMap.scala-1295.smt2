; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26340 () Bool)

(assert start!26340)

(declare-fun b!272830 () Bool)

(declare-fun e!174988 () Bool)

(assert (=> b!272830 (= e!174988 (not true))))

(declare-datatypes ((array!13426 0))(
  ( (array!13427 (arr!6362 (Array (_ BitVec 32) (_ BitVec 64))) (size!6714 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13426)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!136131 () array!13426)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1531 0))(
  ( (MissingZero!1531 (index!8294 (_ BitVec 32))) (Found!1531 (index!8295 (_ BitVec 32))) (Intermediate!1531 (undefined!2343 Bool) (index!8296 (_ BitVec 32)) (x!26576 (_ BitVec 32))) (Undefined!1531) (MissingVacant!1531 (index!8297 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13426 (_ BitVec 32)) SeekEntryResult!1531)

(assert (=> b!272830 (= (seekEntryOrOpen!0 (select (arr!6362 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6362 a!3325) i!1267 k0!2581) startIndex!26) lt!136131 mask!3868))))

(declare-datatypes ((Unit!8528 0))(
  ( (Unit!8529) )
))
(declare-fun lt!136130 () Unit!8528)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13426 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8528)

(assert (=> b!272830 (= lt!136130 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4191 0))(
  ( (Nil!4188) (Cons!4187 (h!4854 (_ BitVec 64)) (t!9281 List!4191)) )
))
(declare-fun arrayNoDuplicates!0 (array!13426 (_ BitVec 32) List!4191) Bool)

(assert (=> b!272830 (arrayNoDuplicates!0 lt!136131 #b00000000000000000000000000000000 Nil!4188)))

(declare-fun lt!136132 () Unit!8528)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13426 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4191) Unit!8528)

(assert (=> b!272830 (= lt!136132 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4188))))

(declare-fun b!272831 () Bool)

(declare-fun res!136865 () Bool)

(assert (=> b!272831 (=> (not res!136865) (not e!174988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272831 (= res!136865 (validKeyInArray!0 (select (arr!6362 a!3325) startIndex!26)))))

(declare-fun res!136862 () Bool)

(declare-fun e!174986 () Bool)

(assert (=> start!26340 (=> (not res!136862) (not e!174986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26340 (= res!136862 (validMask!0 mask!3868))))

(assert (=> start!26340 e!174986))

(declare-fun array_inv!4316 (array!13426) Bool)

(assert (=> start!26340 (array_inv!4316 a!3325)))

(assert (=> start!26340 true))

(declare-fun b!272832 () Bool)

(declare-fun res!136858 () Bool)

(assert (=> b!272832 (=> (not res!136858) (not e!174986))))

(assert (=> b!272832 (= res!136858 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4188))))

(declare-fun b!272833 () Bool)

(declare-fun res!136861 () Bool)

(assert (=> b!272833 (=> (not res!136861) (not e!174986))))

(declare-fun arrayContainsKey!0 (array!13426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272833 (= res!136861 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272834 () Bool)

(declare-fun e!174987 () Bool)

(assert (=> b!272834 (= e!174987 e!174988)))

(declare-fun res!136864 () Bool)

(assert (=> b!272834 (=> (not res!136864) (not e!174988))))

(assert (=> b!272834 (= res!136864 (not (= startIndex!26 i!1267)))))

(assert (=> b!272834 (= lt!136131 (array!13427 (store (arr!6362 a!3325) i!1267 k0!2581) (size!6714 a!3325)))))

(declare-fun b!272835 () Bool)

(declare-fun res!136863 () Bool)

(assert (=> b!272835 (=> (not res!136863) (not e!174987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13426 (_ BitVec 32)) Bool)

(assert (=> b!272835 (= res!136863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272836 () Bool)

(declare-fun res!136859 () Bool)

(assert (=> b!272836 (=> (not res!136859) (not e!174986))))

(assert (=> b!272836 (= res!136859 (and (= (size!6714 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6714 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6714 a!3325))))))

(declare-fun b!272837 () Bool)

(assert (=> b!272837 (= e!174986 e!174987)))

(declare-fun res!136866 () Bool)

(assert (=> b!272837 (=> (not res!136866) (not e!174987))))

(declare-fun lt!136133 () SeekEntryResult!1531)

(assert (=> b!272837 (= res!136866 (or (= lt!136133 (MissingZero!1531 i!1267)) (= lt!136133 (MissingVacant!1531 i!1267))))))

(assert (=> b!272837 (= lt!136133 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272838 () Bool)

(declare-fun res!136860 () Bool)

(assert (=> b!272838 (=> (not res!136860) (not e!174986))))

(assert (=> b!272838 (= res!136860 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26340 res!136862) b!272836))

(assert (= (and b!272836 res!136859) b!272838))

(assert (= (and b!272838 res!136860) b!272832))

(assert (= (and b!272832 res!136858) b!272833))

(assert (= (and b!272833 res!136861) b!272837))

(assert (= (and b!272837 res!136866) b!272835))

(assert (= (and b!272835 res!136863) b!272834))

(assert (= (and b!272834 res!136864) b!272831))

(assert (= (and b!272831 res!136865) b!272830))

(declare-fun m!287931 () Bool)

(assert (=> start!26340 m!287931))

(declare-fun m!287933 () Bool)

(assert (=> start!26340 m!287933))

(declare-fun m!287935 () Bool)

(assert (=> b!272830 m!287935))

(declare-fun m!287937 () Bool)

(assert (=> b!272830 m!287937))

(declare-fun m!287939 () Bool)

(assert (=> b!272830 m!287939))

(assert (=> b!272830 m!287937))

(declare-fun m!287941 () Bool)

(assert (=> b!272830 m!287941))

(declare-fun m!287943 () Bool)

(assert (=> b!272830 m!287943))

(declare-fun m!287945 () Bool)

(assert (=> b!272830 m!287945))

(declare-fun m!287947 () Bool)

(assert (=> b!272830 m!287947))

(assert (=> b!272830 m!287943))

(declare-fun m!287949 () Bool)

(assert (=> b!272830 m!287949))

(assert (=> b!272834 m!287939))

(assert (=> b!272831 m!287943))

(assert (=> b!272831 m!287943))

(declare-fun m!287951 () Bool)

(assert (=> b!272831 m!287951))

(declare-fun m!287953 () Bool)

(assert (=> b!272838 m!287953))

(declare-fun m!287955 () Bool)

(assert (=> b!272837 m!287955))

(declare-fun m!287957 () Bool)

(assert (=> b!272832 m!287957))

(declare-fun m!287959 () Bool)

(assert (=> b!272833 m!287959))

(declare-fun m!287961 () Bool)

(assert (=> b!272835 m!287961))

(check-sat (not b!272833) (not b!272831) (not b!272835) (not b!272838) (not b!272837) (not b!272830) (not start!26340) (not b!272832))
(check-sat)
