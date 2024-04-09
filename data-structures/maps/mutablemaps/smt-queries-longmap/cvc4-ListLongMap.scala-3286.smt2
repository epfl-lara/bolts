; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45674 () Bool)

(assert start!45674)

(declare-fun b!503665 () Bool)

(declare-fun e!294941 () Bool)

(declare-fun e!294938 () Bool)

(assert (=> b!503665 (= e!294941 (not e!294938))))

(declare-fun res!305067 () Bool)

(assert (=> b!503665 (=> res!305067 e!294938)))

(declare-fun lt!229258 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!229261 () (_ BitVec 32))

(declare-datatypes ((array!32390 0))(
  ( (array!32391 (arr!15572 (Array (_ BitVec 32) (_ BitVec 64))) (size!15936 (_ BitVec 32))) )
))
(declare-fun lt!229268 () array!32390)

(declare-datatypes ((SeekEntryResult!4046 0))(
  ( (MissingZero!4046 (index!18372 (_ BitVec 32))) (Found!4046 (index!18373 (_ BitVec 32))) (Intermediate!4046 (undefined!4858 Bool) (index!18374 (_ BitVec 32)) (x!47418 (_ BitVec 32))) (Undefined!4046) (MissingVacant!4046 (index!18375 (_ BitVec 32))) )
))
(declare-fun lt!229264 () SeekEntryResult!4046)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32390 (_ BitVec 32)) SeekEntryResult!4046)

(assert (=> b!503665 (= res!305067 (= lt!229264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229261 lt!229258 lt!229268 mask!3524)))))

(declare-fun a!3235 () array!32390)

(declare-fun lt!229260 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!503665 (= lt!229264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229260 (select (arr!15572 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503665 (= lt!229261 (toIndex!0 lt!229258 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503665 (= lt!229258 (select (store (arr!15572 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503665 (= lt!229260 (toIndex!0 (select (arr!15572 a!3235) j!176) mask!3524))))

(assert (=> b!503665 (= lt!229268 (array!32391 (store (arr!15572 a!3235) i!1204 k!2280) (size!15936 a!3235)))))

(declare-fun e!294943 () Bool)

(assert (=> b!503665 e!294943))

(declare-fun res!305072 () Bool)

(assert (=> b!503665 (=> (not res!305072) (not e!294943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32390 (_ BitVec 32)) Bool)

(assert (=> b!503665 (= res!305072 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15274 0))(
  ( (Unit!15275) )
))
(declare-fun lt!229267 () Unit!15274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32390 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15274)

(assert (=> b!503665 (= lt!229267 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503666 () Bool)

(declare-fun e!294944 () Bool)

(assert (=> b!503666 (= e!294944 true)))

(declare-fun lt!229262 () SeekEntryResult!4046)

(assert (=> b!503666 (= lt!229262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229260 lt!229258 lt!229268 mask!3524))))

(declare-fun b!503667 () Bool)

(declare-fun e!294946 () Bool)

(assert (=> b!503667 (= e!294946 e!294941)))

(declare-fun res!305073 () Bool)

(assert (=> b!503667 (=> (not res!305073) (not e!294941))))

(declare-fun lt!229263 () SeekEntryResult!4046)

(assert (=> b!503667 (= res!305073 (or (= lt!229263 (MissingZero!4046 i!1204)) (= lt!229263 (MissingVacant!4046 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32390 (_ BitVec 32)) SeekEntryResult!4046)

(assert (=> b!503667 (= lt!229263 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503668 () Bool)

(declare-fun res!305065 () Bool)

(assert (=> b!503668 (=> (not res!305065) (not e!294946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503668 (= res!305065 (validKeyInArray!0 (select (arr!15572 a!3235) j!176)))))

(declare-fun b!503669 () Bool)

(assert (=> b!503669 (= e!294943 (= (seekEntryOrOpen!0 (select (arr!15572 a!3235) j!176) a!3235 mask!3524) (Found!4046 j!176)))))

(declare-fun b!503670 () Bool)

(declare-fun res!305064 () Bool)

(assert (=> b!503670 (=> (not res!305064) (not e!294946))))

(assert (=> b!503670 (= res!305064 (and (= (size!15936 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15936 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15936 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503672 () Bool)

(declare-fun res!305070 () Bool)

(assert (=> b!503672 (=> (not res!305070) (not e!294941))))

(assert (=> b!503672 (= res!305070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503673 () Bool)

(assert (=> b!503673 (= e!294938 e!294944)))

(declare-fun res!305075 () Bool)

(assert (=> b!503673 (=> res!305075 e!294944)))

(assert (=> b!503673 (= res!305075 (or (bvsgt (x!47418 lt!229264) #b01111111111111111111111111111110) (bvslt lt!229260 #b00000000000000000000000000000000) (bvsge lt!229260 (size!15936 a!3235)) (bvslt (index!18374 lt!229264) #b00000000000000000000000000000000) (bvsge (index!18374 lt!229264) (size!15936 a!3235)) (not (= lt!229264 (Intermediate!4046 false (index!18374 lt!229264) (x!47418 lt!229264))))))))

(assert (=> b!503673 (= (index!18374 lt!229264) i!1204)))

(declare-fun lt!229265 () Unit!15274)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32390 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15274)

(assert (=> b!503673 (= lt!229265 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229260 #b00000000000000000000000000000000 (index!18374 lt!229264) (x!47418 lt!229264) mask!3524))))

(assert (=> b!503673 (and (or (= (select (arr!15572 a!3235) (index!18374 lt!229264)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15572 a!3235) (index!18374 lt!229264)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15572 a!3235) (index!18374 lt!229264)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15572 a!3235) (index!18374 lt!229264)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229259 () Unit!15274)

(declare-fun e!294945 () Unit!15274)

(assert (=> b!503673 (= lt!229259 e!294945)))

(declare-fun c!59579 () Bool)

(assert (=> b!503673 (= c!59579 (= (select (arr!15572 a!3235) (index!18374 lt!229264)) (select (arr!15572 a!3235) j!176)))))

(assert (=> b!503673 (and (bvslt (x!47418 lt!229264) #b01111111111111111111111111111110) (or (= (select (arr!15572 a!3235) (index!18374 lt!229264)) (select (arr!15572 a!3235) j!176)) (= (select (arr!15572 a!3235) (index!18374 lt!229264)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15572 a!3235) (index!18374 lt!229264)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503674 () Bool)

(declare-fun res!305074 () Bool)

(assert (=> b!503674 (=> res!305074 e!294938)))

(assert (=> b!503674 (= res!305074 (or (undefined!4858 lt!229264) (not (is-Intermediate!4046 lt!229264))))))

(declare-fun b!503675 () Bool)

(declare-fun res!305076 () Bool)

(assert (=> b!503675 (=> res!305076 e!294944)))

(declare-fun e!294939 () Bool)

(assert (=> b!503675 (= res!305076 e!294939)))

(declare-fun res!305078 () Bool)

(assert (=> b!503675 (=> (not res!305078) (not e!294939))))

(assert (=> b!503675 (= res!305078 (bvsgt #b00000000000000000000000000000000 (x!47418 lt!229264)))))

(declare-fun b!503676 () Bool)

(declare-fun res!305069 () Bool)

(assert (=> b!503676 (=> (not res!305069) (not e!294946))))

(assert (=> b!503676 (= res!305069 (validKeyInArray!0 k!2280))))

(declare-fun b!503677 () Bool)

(declare-fun res!305071 () Bool)

(assert (=> b!503677 (=> (not res!305071) (not e!294946))))

(declare-fun arrayContainsKey!0 (array!32390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503677 (= res!305071 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503678 () Bool)

(declare-fun Unit!15276 () Unit!15274)

(assert (=> b!503678 (= e!294945 Unit!15276)))

(declare-fun b!503679 () Bool)

(declare-fun e!294940 () Bool)

(assert (=> b!503679 (= e!294940 false)))

(declare-fun b!503680 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32390 (_ BitVec 32)) SeekEntryResult!4046)

(assert (=> b!503680 (= e!294939 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229260 (index!18374 lt!229264) (select (arr!15572 a!3235) j!176) a!3235 mask!3524) (Found!4046 j!176))))))

(declare-fun b!503681 () Bool)

(declare-fun Unit!15277 () Unit!15274)

(assert (=> b!503681 (= e!294945 Unit!15277)))

(declare-fun lt!229266 () Unit!15274)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32390 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15274)

(assert (=> b!503681 (= lt!229266 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229260 #b00000000000000000000000000000000 (index!18374 lt!229264) (x!47418 lt!229264) mask!3524))))

(declare-fun res!305068 () Bool)

(assert (=> b!503681 (= res!305068 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229260 lt!229258 lt!229268 mask!3524) (Intermediate!4046 false (index!18374 lt!229264) (x!47418 lt!229264))))))

(assert (=> b!503681 (=> (not res!305068) (not e!294940))))

(assert (=> b!503681 e!294940))

(declare-fun b!503671 () Bool)

(declare-fun res!305077 () Bool)

(assert (=> b!503671 (=> (not res!305077) (not e!294941))))

(declare-datatypes ((List!9783 0))(
  ( (Nil!9780) (Cons!9779 (h!10656 (_ BitVec 64)) (t!16019 List!9783)) )
))
(declare-fun arrayNoDuplicates!0 (array!32390 (_ BitVec 32) List!9783) Bool)

(assert (=> b!503671 (= res!305077 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9780))))

(declare-fun res!305066 () Bool)

(assert (=> start!45674 (=> (not res!305066) (not e!294946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45674 (= res!305066 (validMask!0 mask!3524))))

(assert (=> start!45674 e!294946))

(assert (=> start!45674 true))

(declare-fun array_inv!11346 (array!32390) Bool)

(assert (=> start!45674 (array_inv!11346 a!3235)))

(assert (= (and start!45674 res!305066) b!503670))

(assert (= (and b!503670 res!305064) b!503668))

(assert (= (and b!503668 res!305065) b!503676))

(assert (= (and b!503676 res!305069) b!503677))

(assert (= (and b!503677 res!305071) b!503667))

(assert (= (and b!503667 res!305073) b!503672))

(assert (= (and b!503672 res!305070) b!503671))

(assert (= (and b!503671 res!305077) b!503665))

(assert (= (and b!503665 res!305072) b!503669))

(assert (= (and b!503665 (not res!305067)) b!503674))

(assert (= (and b!503674 (not res!305074)) b!503673))

(assert (= (and b!503673 c!59579) b!503681))

(assert (= (and b!503673 (not c!59579)) b!503678))

(assert (= (and b!503681 res!305068) b!503679))

(assert (= (and b!503673 (not res!305075)) b!503675))

(assert (= (and b!503675 res!305078) b!503680))

(assert (= (and b!503675 (not res!305076)) b!503666))

(declare-fun m!484497 () Bool)

(assert (=> b!503668 m!484497))

(assert (=> b!503668 m!484497))

(declare-fun m!484499 () Bool)

(assert (=> b!503668 m!484499))

(declare-fun m!484501 () Bool)

(assert (=> b!503672 m!484501))

(declare-fun m!484503 () Bool)

(assert (=> b!503665 m!484503))

(declare-fun m!484505 () Bool)

(assert (=> b!503665 m!484505))

(declare-fun m!484507 () Bool)

(assert (=> b!503665 m!484507))

(declare-fun m!484509 () Bool)

(assert (=> b!503665 m!484509))

(assert (=> b!503665 m!484497))

(declare-fun m!484511 () Bool)

(assert (=> b!503665 m!484511))

(assert (=> b!503665 m!484497))

(declare-fun m!484513 () Bool)

(assert (=> b!503665 m!484513))

(assert (=> b!503665 m!484497))

(declare-fun m!484515 () Bool)

(assert (=> b!503665 m!484515))

(declare-fun m!484517 () Bool)

(assert (=> b!503665 m!484517))

(declare-fun m!484519 () Bool)

(assert (=> b!503671 m!484519))

(declare-fun m!484521 () Bool)

(assert (=> b!503666 m!484521))

(declare-fun m!484523 () Bool)

(assert (=> b!503673 m!484523))

(declare-fun m!484525 () Bool)

(assert (=> b!503673 m!484525))

(assert (=> b!503673 m!484497))

(declare-fun m!484527 () Bool)

(assert (=> b!503667 m!484527))

(declare-fun m!484529 () Bool)

(assert (=> b!503676 m!484529))

(declare-fun m!484531 () Bool)

(assert (=> start!45674 m!484531))

(declare-fun m!484533 () Bool)

(assert (=> start!45674 m!484533))

(declare-fun m!484535 () Bool)

(assert (=> b!503681 m!484535))

(assert (=> b!503681 m!484521))

(declare-fun m!484537 () Bool)

(assert (=> b!503677 m!484537))

(assert (=> b!503680 m!484497))

(assert (=> b!503680 m!484497))

(declare-fun m!484539 () Bool)

(assert (=> b!503680 m!484539))

(assert (=> b!503669 m!484497))

(assert (=> b!503669 m!484497))

(declare-fun m!484541 () Bool)

(assert (=> b!503669 m!484541))

(push 1)

