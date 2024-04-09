; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45716 () Bool)

(assert start!45716)

(declare-fun b!504736 () Bool)

(declare-fun e!295507 () Bool)

(declare-fun e!295510 () Bool)

(assert (=> b!504736 (= e!295507 e!295510)))

(declare-fun res!306014 () Bool)

(assert (=> b!504736 (=> (not res!306014) (not e!295510))))

(declare-datatypes ((SeekEntryResult!4067 0))(
  ( (MissingZero!4067 (index!18456 (_ BitVec 32))) (Found!4067 (index!18457 (_ BitVec 32))) (Intermediate!4067 (undefined!4879 Bool) (index!18458 (_ BitVec 32)) (x!47495 (_ BitVec 32))) (Undefined!4067) (MissingVacant!4067 (index!18459 (_ BitVec 32))) )
))
(declare-fun lt!229956 () SeekEntryResult!4067)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504736 (= res!306014 (or (= lt!229956 (MissingZero!4067 i!1204)) (= lt!229956 (MissingVacant!4067 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((array!32432 0))(
  ( (array!32433 (arr!15593 (Array (_ BitVec 32) (_ BitVec 64))) (size!15957 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32432)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32432 (_ BitVec 32)) SeekEntryResult!4067)

(assert (=> b!504736 (= lt!229956 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504737 () Bool)

(declare-fun res!306020 () Bool)

(assert (=> b!504737 (=> (not res!306020) (not e!295510))))

(declare-datatypes ((List!9804 0))(
  ( (Nil!9801) (Cons!9800 (h!10677 (_ BitVec 64)) (t!16040 List!9804)) )
))
(declare-fun arrayNoDuplicates!0 (array!32432 (_ BitVec 32) List!9804) Bool)

(assert (=> b!504737 (= res!306020 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9801))))

(declare-fun b!504738 () Bool)

(declare-fun e!295512 () Bool)

(assert (=> b!504738 (= e!295510 (not e!295512))))

(declare-fun res!306017 () Bool)

(assert (=> b!504738 (=> res!306017 e!295512)))

(declare-fun lt!229960 () SeekEntryResult!4067)

(declare-fun lt!229953 () array!32432)

(declare-fun lt!229961 () (_ BitVec 64))

(declare-fun lt!229959 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32432 (_ BitVec 32)) SeekEntryResult!4067)

(assert (=> b!504738 (= res!306017 (= lt!229960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229959 lt!229961 lt!229953 mask!3524)))))

(declare-fun lt!229957 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504738 (= lt!229960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229957 (select (arr!15593 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504738 (= lt!229959 (toIndex!0 lt!229961 mask!3524))))

(assert (=> b!504738 (= lt!229961 (select (store (arr!15593 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504738 (= lt!229957 (toIndex!0 (select (arr!15593 a!3235) j!176) mask!3524))))

(assert (=> b!504738 (= lt!229953 (array!32433 (store (arr!15593 a!3235) i!1204 k!2280) (size!15957 a!3235)))))

(declare-fun e!295509 () Bool)

(assert (=> b!504738 e!295509))

(declare-fun res!306012 () Bool)

(assert (=> b!504738 (=> (not res!306012) (not e!295509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32432 (_ BitVec 32)) Bool)

(assert (=> b!504738 (= res!306012 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15358 0))(
  ( (Unit!15359) )
))
(declare-fun lt!229958 () Unit!15358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32432 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15358)

(assert (=> b!504738 (= lt!229958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504739 () Bool)

(declare-fun res!306019 () Bool)

(assert (=> b!504739 (=> (not res!306019) (not e!295507))))

(declare-fun arrayContainsKey!0 (array!32432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504739 (= res!306019 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504740 () Bool)

(declare-fun res!306021 () Bool)

(assert (=> b!504740 (=> (not res!306021) (not e!295507))))

(assert (=> b!504740 (= res!306021 (and (= (size!15957 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15957 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15957 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504741 () Bool)

(declare-fun res!306013 () Bool)

(assert (=> b!504741 (=> res!306013 e!295512)))

(assert (=> b!504741 (= res!306013 (or (undefined!4879 lt!229960) (not (is-Intermediate!4067 lt!229960))))))

(declare-fun b!504742 () Bool)

(declare-fun e!295513 () Bool)

(assert (=> b!504742 (= e!295512 e!295513)))

(declare-fun res!306010 () Bool)

(assert (=> b!504742 (=> res!306010 e!295513)))

(assert (=> b!504742 (= res!306010 (or (bvsgt (x!47495 lt!229960) #b01111111111111111111111111111110) (bvslt lt!229957 #b00000000000000000000000000000000) (bvsge lt!229957 (size!15957 a!3235)) (bvslt (index!18458 lt!229960) #b00000000000000000000000000000000) (bvsge (index!18458 lt!229960) (size!15957 a!3235)) (not (= lt!229960 (Intermediate!4067 false (index!18458 lt!229960) (x!47495 lt!229960))))))))

(assert (=> b!504742 (= (index!18458 lt!229960) i!1204)))

(declare-fun lt!229951 () Unit!15358)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15358)

(assert (=> b!504742 (= lt!229951 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229957 #b00000000000000000000000000000000 (index!18458 lt!229960) (x!47495 lt!229960) mask!3524))))

(assert (=> b!504742 (and (or (= (select (arr!15593 a!3235) (index!18458 lt!229960)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15593 a!3235) (index!18458 lt!229960)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15593 a!3235) (index!18458 lt!229960)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15593 a!3235) (index!18458 lt!229960)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229954 () Unit!15358)

(declare-fun e!295511 () Unit!15358)

(assert (=> b!504742 (= lt!229954 e!295511)))

(declare-fun c!59642 () Bool)

(assert (=> b!504742 (= c!59642 (= (select (arr!15593 a!3235) (index!18458 lt!229960)) (select (arr!15593 a!3235) j!176)))))

(assert (=> b!504742 (and (bvslt (x!47495 lt!229960) #b01111111111111111111111111111110) (or (= (select (arr!15593 a!3235) (index!18458 lt!229960)) (select (arr!15593 a!3235) j!176)) (= (select (arr!15593 a!3235) (index!18458 lt!229960)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15593 a!3235) (index!18458 lt!229960)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504743 () Bool)

(declare-fun e!295508 () Bool)

(assert (=> b!504743 (= e!295508 false)))

(declare-fun res!306009 () Bool)

(assert (=> start!45716 (=> (not res!306009) (not e!295507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45716 (= res!306009 (validMask!0 mask!3524))))

(assert (=> start!45716 e!295507))

(assert (=> start!45716 true))

(declare-fun array_inv!11367 (array!32432) Bool)

(assert (=> start!45716 (array_inv!11367 a!3235)))

(declare-fun b!504744 () Bool)

(declare-fun res!306023 () Bool)

(assert (=> b!504744 (=> (not res!306023) (not e!295507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504744 (= res!306023 (validKeyInArray!0 (select (arr!15593 a!3235) j!176)))))

(declare-fun b!504745 () Bool)

(declare-fun res!306016 () Bool)

(assert (=> b!504745 (=> (not res!306016) (not e!295510))))

(assert (=> b!504745 (= res!306016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504746 () Bool)

(assert (=> b!504746 (= e!295513 true)))

(declare-fun lt!229952 () SeekEntryResult!4067)

(assert (=> b!504746 (= lt!229952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229957 lt!229961 lt!229953 mask!3524))))

(declare-fun e!295506 () Bool)

(declare-fun b!504747 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32432 (_ BitVec 32)) SeekEntryResult!4067)

(assert (=> b!504747 (= e!295506 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229957 (index!18458 lt!229960) (select (arr!15593 a!3235) j!176) a!3235 mask!3524) (Found!4067 j!176))))))

(declare-fun b!504748 () Bool)

(declare-fun res!306015 () Bool)

(assert (=> b!504748 (=> res!306015 e!295513)))

(assert (=> b!504748 (= res!306015 e!295506)))

(declare-fun res!306018 () Bool)

(assert (=> b!504748 (=> (not res!306018) (not e!295506))))

(assert (=> b!504748 (= res!306018 (bvsgt #b00000000000000000000000000000000 (x!47495 lt!229960)))))

(declare-fun b!504749 () Bool)

(assert (=> b!504749 (= e!295509 (= (seekEntryOrOpen!0 (select (arr!15593 a!3235) j!176) a!3235 mask!3524) (Found!4067 j!176)))))

(declare-fun b!504750 () Bool)

(declare-fun Unit!15360 () Unit!15358)

(assert (=> b!504750 (= e!295511 Unit!15360)))

(declare-fun b!504751 () Bool)

(declare-fun Unit!15361 () Unit!15358)

(assert (=> b!504751 (= e!295511 Unit!15361)))

(declare-fun lt!229955 () Unit!15358)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15358)

(assert (=> b!504751 (= lt!229955 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229957 #b00000000000000000000000000000000 (index!18458 lt!229960) (x!47495 lt!229960) mask!3524))))

(declare-fun res!306011 () Bool)

(assert (=> b!504751 (= res!306011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229957 lt!229961 lt!229953 mask!3524) (Intermediate!4067 false (index!18458 lt!229960) (x!47495 lt!229960))))))

(assert (=> b!504751 (=> (not res!306011) (not e!295508))))

(assert (=> b!504751 e!295508))

(declare-fun b!504752 () Bool)

(declare-fun res!306022 () Bool)

(assert (=> b!504752 (=> (not res!306022) (not e!295507))))

(assert (=> b!504752 (= res!306022 (validKeyInArray!0 k!2280))))

(assert (= (and start!45716 res!306009) b!504740))

(assert (= (and b!504740 res!306021) b!504744))

(assert (= (and b!504744 res!306023) b!504752))

(assert (= (and b!504752 res!306022) b!504739))

(assert (= (and b!504739 res!306019) b!504736))

(assert (= (and b!504736 res!306014) b!504745))

(assert (= (and b!504745 res!306016) b!504737))

(assert (= (and b!504737 res!306020) b!504738))

(assert (= (and b!504738 res!306012) b!504749))

(assert (= (and b!504738 (not res!306017)) b!504741))

(assert (= (and b!504741 (not res!306013)) b!504742))

(assert (= (and b!504742 c!59642) b!504751))

(assert (= (and b!504742 (not c!59642)) b!504750))

(assert (= (and b!504751 res!306011) b!504743))

(assert (= (and b!504742 (not res!306010)) b!504748))

(assert (= (and b!504748 res!306018) b!504747))

(assert (= (and b!504748 (not res!306015)) b!504746))

(declare-fun m!485463 () Bool)

(assert (=> b!504751 m!485463))

(declare-fun m!485465 () Bool)

(assert (=> b!504751 m!485465))

(assert (=> b!504746 m!485465))

(declare-fun m!485467 () Bool)

(assert (=> b!504742 m!485467))

(declare-fun m!485469 () Bool)

(assert (=> b!504742 m!485469))

(declare-fun m!485471 () Bool)

(assert (=> b!504742 m!485471))

(declare-fun m!485473 () Bool)

(assert (=> b!504737 m!485473))

(assert (=> b!504749 m!485471))

(assert (=> b!504749 m!485471))

(declare-fun m!485475 () Bool)

(assert (=> b!504749 m!485475))

(assert (=> b!504744 m!485471))

(assert (=> b!504744 m!485471))

(declare-fun m!485477 () Bool)

(assert (=> b!504744 m!485477))

(declare-fun m!485479 () Bool)

(assert (=> b!504739 m!485479))

(declare-fun m!485481 () Bool)

(assert (=> b!504752 m!485481))

(declare-fun m!485483 () Bool)

(assert (=> b!504738 m!485483))

(declare-fun m!485485 () Bool)

(assert (=> b!504738 m!485485))

(declare-fun m!485487 () Bool)

(assert (=> b!504738 m!485487))

(declare-fun m!485489 () Bool)

(assert (=> b!504738 m!485489))

(declare-fun m!485491 () Bool)

(assert (=> b!504738 m!485491))

(assert (=> b!504738 m!485471))

(declare-fun m!485493 () Bool)

(assert (=> b!504738 m!485493))

(assert (=> b!504738 m!485471))

(declare-fun m!485495 () Bool)

(assert (=> b!504738 m!485495))

(assert (=> b!504738 m!485471))

(declare-fun m!485497 () Bool)

(assert (=> b!504738 m!485497))

(assert (=> b!504747 m!485471))

(assert (=> b!504747 m!485471))

(declare-fun m!485499 () Bool)

(assert (=> b!504747 m!485499))

(declare-fun m!485501 () Bool)

(assert (=> b!504745 m!485501))

(declare-fun m!485503 () Bool)

(assert (=> b!504736 m!485503))

(declare-fun m!485505 () Bool)

(assert (=> start!45716 m!485505))

(declare-fun m!485507 () Bool)

(assert (=> start!45716 m!485507))

(push 1)

