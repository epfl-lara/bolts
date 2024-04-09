; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27228 () Bool)

(assert start!27228)

(declare-fun b!281725 () Bool)

(declare-fun res!144833 () Bool)

(declare-fun e!178996 () Bool)

(assert (=> b!281725 (=> (not res!144833) (not e!178996))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281725 (= res!144833 (validKeyInArray!0 k0!2581))))

(declare-fun b!281726 () Bool)

(declare-fun res!144838 () Bool)

(assert (=> b!281726 (=> (not res!144838) (not e!178996))))

(declare-datatypes ((array!14035 0))(
  ( (array!14036 (arr!6659 (Array (_ BitVec 32) (_ BitVec 64))) (size!7011 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14035)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!281726 (= res!144838 (and (= (size!7011 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7011 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7011 a!3325))))))

(declare-fun res!144837 () Bool)

(assert (=> start!27228 (=> (not res!144837) (not e!178996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27228 (= res!144837 (validMask!0 mask!3868))))

(assert (=> start!27228 e!178996))

(declare-fun array_inv!4613 (array!14035) Bool)

(assert (=> start!27228 (array_inv!4613 a!3325)))

(assert (=> start!27228 true))

(declare-fun b!281727 () Bool)

(declare-fun res!144836 () Bool)

(assert (=> b!281727 (=> (not res!144836) (not e!178996))))

(declare-fun arrayContainsKey!0 (array!14035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281727 (= res!144836 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281728 () Bool)

(declare-fun res!144832 () Bool)

(declare-fun e!178999 () Bool)

(assert (=> b!281728 (=> (not res!144832) (not e!178999))))

(assert (=> b!281728 (= res!144832 (validKeyInArray!0 (select (arr!6659 a!3325) startIndex!26)))))

(declare-fun b!281729 () Bool)

(declare-fun res!144840 () Bool)

(declare-fun e!178998 () Bool)

(assert (=> b!281729 (=> (not res!144840) (not e!178998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14035 (_ BitVec 32)) Bool)

(assert (=> b!281729 (= res!144840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281730 () Bool)

(declare-fun res!144834 () Bool)

(assert (=> b!281730 (=> (not res!144834) (not e!178996))))

(declare-datatypes ((List!4488 0))(
  ( (Nil!4485) (Cons!4484 (h!5154 (_ BitVec 64)) (t!9578 List!4488)) )
))
(declare-fun arrayNoDuplicates!0 (array!14035 (_ BitVec 32) List!4488) Bool)

(assert (=> b!281730 (= res!144834 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4485))))

(declare-fun b!281731 () Bool)

(assert (=> b!281731 (= e!178996 e!178998)))

(declare-fun res!144839 () Bool)

(assert (=> b!281731 (=> (not res!144839) (not e!178998))))

(declare-datatypes ((SeekEntryResult!1828 0))(
  ( (MissingZero!1828 (index!9482 (_ BitVec 32))) (Found!1828 (index!9483 (_ BitVec 32))) (Intermediate!1828 (undefined!2640 Bool) (index!9484 (_ BitVec 32)) (x!27674 (_ BitVec 32))) (Undefined!1828) (MissingVacant!1828 (index!9485 (_ BitVec 32))) )
))
(declare-fun lt!139210 () SeekEntryResult!1828)

(assert (=> b!281731 (= res!144839 (or (= lt!139210 (MissingZero!1828 i!1267)) (= lt!139210 (MissingVacant!1828 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14035 (_ BitVec 32)) SeekEntryResult!1828)

(assert (=> b!281731 (= lt!139210 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281732 () Bool)

(assert (=> b!281732 (= e!178999 (not (or (bvsgt #b00000000000000000000000000000000 (size!7011 a!3325)) (bvsle startIndex!26 (size!7011 a!3325)))))))

(declare-fun lt!139209 () array!14035)

(assert (=> b!281732 (= (seekEntryOrOpen!0 (select (arr!6659 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6659 a!3325) i!1267 k0!2581) startIndex!26) lt!139209 mask!3868))))

(declare-datatypes ((Unit!8919 0))(
  ( (Unit!8920) )
))
(declare-fun lt!139211 () Unit!8919)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8919)

(assert (=> b!281732 (= lt!139211 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!281732 (arrayNoDuplicates!0 lt!139209 #b00000000000000000000000000000000 Nil!4485)))

(declare-fun lt!139208 () Unit!8919)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14035 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4488) Unit!8919)

(assert (=> b!281732 (= lt!139208 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4485))))

(declare-fun b!281733 () Bool)

(assert (=> b!281733 (= e!178998 e!178999)))

(declare-fun res!144835 () Bool)

(assert (=> b!281733 (=> (not res!144835) (not e!178999))))

(assert (=> b!281733 (= res!144835 (not (= startIndex!26 i!1267)))))

(assert (=> b!281733 (= lt!139209 (array!14036 (store (arr!6659 a!3325) i!1267 k0!2581) (size!7011 a!3325)))))

(assert (= (and start!27228 res!144837) b!281726))

(assert (= (and b!281726 res!144838) b!281725))

(assert (= (and b!281725 res!144833) b!281730))

(assert (= (and b!281730 res!144834) b!281727))

(assert (= (and b!281727 res!144836) b!281731))

(assert (= (and b!281731 res!144839) b!281729))

(assert (= (and b!281729 res!144840) b!281733))

(assert (= (and b!281733 res!144835) b!281728))

(assert (= (and b!281728 res!144832) b!281732))

(declare-fun m!296133 () Bool)

(assert (=> b!281731 m!296133))

(declare-fun m!296135 () Bool)

(assert (=> b!281725 m!296135))

(declare-fun m!296137 () Bool)

(assert (=> b!281729 m!296137))

(declare-fun m!296139 () Bool)

(assert (=> b!281733 m!296139))

(declare-fun m!296141 () Bool)

(assert (=> b!281727 m!296141))

(declare-fun m!296143 () Bool)

(assert (=> b!281728 m!296143))

(assert (=> b!281728 m!296143))

(declare-fun m!296145 () Bool)

(assert (=> b!281728 m!296145))

(declare-fun m!296147 () Bool)

(assert (=> b!281730 m!296147))

(declare-fun m!296149 () Bool)

(assert (=> start!27228 m!296149))

(declare-fun m!296151 () Bool)

(assert (=> start!27228 m!296151))

(declare-fun m!296153 () Bool)

(assert (=> b!281732 m!296153))

(declare-fun m!296155 () Bool)

(assert (=> b!281732 m!296155))

(assert (=> b!281732 m!296139))

(assert (=> b!281732 m!296143))

(declare-fun m!296157 () Bool)

(assert (=> b!281732 m!296157))

(declare-fun m!296159 () Bool)

(assert (=> b!281732 m!296159))

(assert (=> b!281732 m!296153))

(declare-fun m!296161 () Bool)

(assert (=> b!281732 m!296161))

(assert (=> b!281732 m!296143))

(declare-fun m!296163 () Bool)

(assert (=> b!281732 m!296163))

(check-sat (not b!281729) (not start!27228) (not b!281730) (not b!281731) (not b!281728) (not b!281725) (not b!281732) (not b!281727))
(check-sat)
