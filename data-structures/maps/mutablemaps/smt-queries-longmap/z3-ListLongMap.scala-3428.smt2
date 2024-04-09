; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47700 () Bool)

(assert start!47700)

(declare-fun b!524086 () Bool)

(declare-fun res!321165 () Bool)

(declare-fun e!305668 () Bool)

(assert (=> b!524086 (=> (not res!321165) (not e!305668))))

(declare-datatypes ((array!33297 0))(
  ( (array!33298 (arr!15997 (Array (_ BitVec 32) (_ BitVec 64))) (size!16361 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33297)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524086 (= res!321165 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524087 () Bool)

(declare-datatypes ((Unit!16350 0))(
  ( (Unit!16351) )
))
(declare-fun e!305671 () Unit!16350)

(declare-fun Unit!16352 () Unit!16350)

(assert (=> b!524087 (= e!305671 Unit!16352)))

(declare-fun lt!240550 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4471 0))(
  ( (MissingZero!4471 (index!20096 (_ BitVec 32))) (Found!4471 (index!20097 (_ BitVec 32))) (Intermediate!4471 (undefined!5283 Bool) (index!20098 (_ BitVec 32)) (x!49111 (_ BitVec 32))) (Undefined!4471) (MissingVacant!4471 (index!20099 (_ BitVec 32))) )
))
(declare-fun lt!240556 () SeekEntryResult!4471)

(declare-fun lt!240553 () Unit!16350)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16350)

(assert (=> b!524087 (= lt!240553 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240550 #b00000000000000000000000000000000 (index!20098 lt!240556) (x!49111 lt!240556) mask!3524))))

(declare-fun lt!240552 () array!33297)

(declare-fun lt!240555 () (_ BitVec 64))

(declare-fun res!321172 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33297 (_ BitVec 32)) SeekEntryResult!4471)

(assert (=> b!524087 (= res!321172 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240550 lt!240555 lt!240552 mask!3524) (Intermediate!4471 false (index!20098 lt!240556) (x!49111 lt!240556))))))

(declare-fun e!305673 () Bool)

(assert (=> b!524087 (=> (not res!321172) (not e!305673))))

(assert (=> b!524087 e!305673))

(declare-fun b!524088 () Bool)

(declare-fun res!321169 () Bool)

(declare-fun e!305674 () Bool)

(assert (=> b!524088 (=> (not res!321169) (not e!305674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33297 (_ BitVec 32)) Bool)

(assert (=> b!524088 (= res!321169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524089 () Bool)

(declare-fun res!321175 () Bool)

(declare-fun e!305670 () Bool)

(assert (=> b!524089 (=> res!321175 e!305670)))

(get-info :version)

(assert (=> b!524089 (= res!321175 (or (undefined!5283 lt!240556) (not ((_ is Intermediate!4471) lt!240556))))))

(declare-fun b!524090 () Bool)

(declare-fun res!321171 () Bool)

(assert (=> b!524090 (=> (not res!321171) (not e!305674))))

(declare-datatypes ((List!10208 0))(
  ( (Nil!10205) (Cons!10204 (h!11135 (_ BitVec 64)) (t!16444 List!10208)) )
))
(declare-fun arrayNoDuplicates!0 (array!33297 (_ BitVec 32) List!10208) Bool)

(assert (=> b!524090 (= res!321171 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10205))))

(declare-fun b!524092 () Bool)

(declare-fun res!321176 () Bool)

(assert (=> b!524092 (=> (not res!321176) (not e!305668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524092 (= res!321176 (validKeyInArray!0 (select (arr!15997 a!3235) j!176)))))

(declare-fun b!524093 () Bool)

(assert (=> b!524093 (= e!305673 false)))

(declare-fun b!524094 () Bool)

(assert (=> b!524094 (= e!305670 (or (bvsgt #b00000000000000000000000000000000 (x!49111 lt!240556)) (bvsgt (x!49111 lt!240556) #b01111111111111111111111111111110) (bvslt lt!240550 #b00000000000000000000000000000000) (bvsge lt!240550 (size!16361 a!3235)) (bvslt (index!20098 lt!240556) #b00000000000000000000000000000000) (bvsge (index!20098 lt!240556) (size!16361 a!3235)) (= lt!240556 (Intermediate!4471 false (index!20098 lt!240556) (x!49111 lt!240556)))))))

(assert (=> b!524094 (and (or (= (select (arr!15997 a!3235) (index!20098 lt!240556)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15997 a!3235) (index!20098 lt!240556)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15997 a!3235) (index!20098 lt!240556)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15997 a!3235) (index!20098 lt!240556)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240549 () Unit!16350)

(assert (=> b!524094 (= lt!240549 e!305671)))

(declare-fun c!61766 () Bool)

(assert (=> b!524094 (= c!61766 (= (select (arr!15997 a!3235) (index!20098 lt!240556)) (select (arr!15997 a!3235) j!176)))))

(assert (=> b!524094 (and (bvslt (x!49111 lt!240556) #b01111111111111111111111111111110) (or (= (select (arr!15997 a!3235) (index!20098 lt!240556)) (select (arr!15997 a!3235) j!176)) (= (select (arr!15997 a!3235) (index!20098 lt!240556)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15997 a!3235) (index!20098 lt!240556)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524095 () Bool)

(assert (=> b!524095 (= e!305674 (not e!305670))))

(declare-fun res!321170 () Bool)

(assert (=> b!524095 (=> res!321170 e!305670)))

(declare-fun lt!240554 () (_ BitVec 32))

(assert (=> b!524095 (= res!321170 (= lt!240556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240554 lt!240555 lt!240552 mask!3524)))))

(assert (=> b!524095 (= lt!240556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240550 (select (arr!15997 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524095 (= lt!240554 (toIndex!0 lt!240555 mask!3524))))

(assert (=> b!524095 (= lt!240555 (select (store (arr!15997 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524095 (= lt!240550 (toIndex!0 (select (arr!15997 a!3235) j!176) mask!3524))))

(assert (=> b!524095 (= lt!240552 (array!33298 (store (arr!15997 a!3235) i!1204 k0!2280) (size!16361 a!3235)))))

(declare-fun e!305669 () Bool)

(assert (=> b!524095 e!305669))

(declare-fun res!321166 () Bool)

(assert (=> b!524095 (=> (not res!321166) (not e!305669))))

(assert (=> b!524095 (= res!321166 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240551 () Unit!16350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16350)

(assert (=> b!524095 (= lt!240551 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524096 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33297 (_ BitVec 32)) SeekEntryResult!4471)

(assert (=> b!524096 (= e!305669 (= (seekEntryOrOpen!0 (select (arr!15997 a!3235) j!176) a!3235 mask!3524) (Found!4471 j!176)))))

(declare-fun b!524097 () Bool)

(declare-fun Unit!16353 () Unit!16350)

(assert (=> b!524097 (= e!305671 Unit!16353)))

(declare-fun b!524091 () Bool)

(declare-fun res!321168 () Bool)

(assert (=> b!524091 (=> (not res!321168) (not e!305668))))

(assert (=> b!524091 (= res!321168 (validKeyInArray!0 k0!2280))))

(declare-fun res!321173 () Bool)

(assert (=> start!47700 (=> (not res!321173) (not e!305668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47700 (= res!321173 (validMask!0 mask!3524))))

(assert (=> start!47700 e!305668))

(assert (=> start!47700 true))

(declare-fun array_inv!11771 (array!33297) Bool)

(assert (=> start!47700 (array_inv!11771 a!3235)))

(declare-fun b!524098 () Bool)

(assert (=> b!524098 (= e!305668 e!305674)))

(declare-fun res!321167 () Bool)

(assert (=> b!524098 (=> (not res!321167) (not e!305674))))

(declare-fun lt!240557 () SeekEntryResult!4471)

(assert (=> b!524098 (= res!321167 (or (= lt!240557 (MissingZero!4471 i!1204)) (= lt!240557 (MissingVacant!4471 i!1204))))))

(assert (=> b!524098 (= lt!240557 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524099 () Bool)

(declare-fun res!321174 () Bool)

(assert (=> b!524099 (=> (not res!321174) (not e!305668))))

(assert (=> b!524099 (= res!321174 (and (= (size!16361 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16361 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16361 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47700 res!321173) b!524099))

(assert (= (and b!524099 res!321174) b!524092))

(assert (= (and b!524092 res!321176) b!524091))

(assert (= (and b!524091 res!321168) b!524086))

(assert (= (and b!524086 res!321165) b!524098))

(assert (= (and b!524098 res!321167) b!524088))

(assert (= (and b!524088 res!321169) b!524090))

(assert (= (and b!524090 res!321171) b!524095))

(assert (= (and b!524095 res!321166) b!524096))

(assert (= (and b!524095 (not res!321170)) b!524089))

(assert (= (and b!524089 (not res!321175)) b!524094))

(assert (= (and b!524094 c!61766) b!524087))

(assert (= (and b!524094 (not c!61766)) b!524097))

(assert (= (and b!524087 res!321172) b!524093))

(declare-fun m!504757 () Bool)

(assert (=> start!47700 m!504757))

(declare-fun m!504759 () Bool)

(assert (=> start!47700 m!504759))

(declare-fun m!504761 () Bool)

(assert (=> b!524092 m!504761))

(assert (=> b!524092 m!504761))

(declare-fun m!504763 () Bool)

(assert (=> b!524092 m!504763))

(declare-fun m!504765 () Bool)

(assert (=> b!524095 m!504765))

(declare-fun m!504767 () Bool)

(assert (=> b!524095 m!504767))

(declare-fun m!504769 () Bool)

(assert (=> b!524095 m!504769))

(declare-fun m!504771 () Bool)

(assert (=> b!524095 m!504771))

(declare-fun m!504773 () Bool)

(assert (=> b!524095 m!504773))

(assert (=> b!524095 m!504761))

(declare-fun m!504775 () Bool)

(assert (=> b!524095 m!504775))

(assert (=> b!524095 m!504761))

(declare-fun m!504777 () Bool)

(assert (=> b!524095 m!504777))

(assert (=> b!524095 m!504761))

(declare-fun m!504779 () Bool)

(assert (=> b!524095 m!504779))

(assert (=> b!524096 m!504761))

(assert (=> b!524096 m!504761))

(declare-fun m!504781 () Bool)

(assert (=> b!524096 m!504781))

(declare-fun m!504783 () Bool)

(assert (=> b!524087 m!504783))

(declare-fun m!504785 () Bool)

(assert (=> b!524087 m!504785))

(declare-fun m!504787 () Bool)

(assert (=> b!524088 m!504787))

(declare-fun m!504789 () Bool)

(assert (=> b!524091 m!504789))

(declare-fun m!504791 () Bool)

(assert (=> b!524098 m!504791))

(declare-fun m!504793 () Bool)

(assert (=> b!524086 m!504793))

(declare-fun m!504795 () Bool)

(assert (=> b!524094 m!504795))

(assert (=> b!524094 m!504761))

(declare-fun m!504797 () Bool)

(assert (=> b!524090 m!504797))

(check-sat (not b!524096) (not b!524091) (not b!524090) (not b!524087) (not start!47700) (not b!524086) (not b!524098) (not b!524088) (not b!524095) (not b!524092))
(check-sat)
