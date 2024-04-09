; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59598 () Bool)

(assert start!59598)

(declare-fun b!658008 () Bool)

(assert (=> b!658008 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38712 0))(
  ( (array!38713 (arr!18549 (Array (_ BitVec 32) (_ BitVec 64))) (size!18913 (_ BitVec 32))) )
))
(declare-fun lt!307640 () array!38712)

(declare-datatypes ((Unit!22804 0))(
  ( (Unit!22805) )
))
(declare-fun lt!307635 () Unit!22804)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38712)

(declare-datatypes ((List!12643 0))(
  ( (Nil!12640) (Cons!12639 (h!13684 (_ BitVec 64)) (t!18879 List!12643)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38712 (_ BitVec 64) (_ BitVec 32) List!12643) Unit!22804)

(assert (=> b!658008 (= lt!307635 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307640 (select (arr!18549 a!2986) j!136) index!984 Nil!12640))))

(declare-fun arrayNoDuplicates!0 (array!38712 (_ BitVec 32) List!12643) Bool)

(assert (=> b!658008 (arrayNoDuplicates!0 lt!307640 index!984 Nil!12640)))

(declare-fun lt!307632 () Unit!22804)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38712 (_ BitVec 32) (_ BitVec 32)) Unit!22804)

(assert (=> b!658008 (= lt!307632 (lemmaNoDuplicateFromThenFromBigger!0 lt!307640 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658008 (arrayNoDuplicates!0 lt!307640 #b00000000000000000000000000000000 Nil!12640)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!307637 () Unit!22804)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38712 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12643) Unit!22804)

(assert (=> b!658008 (= lt!307637 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12640))))

(declare-fun arrayContainsKey!0 (array!38712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658008 (arrayContainsKey!0 lt!307640 (select (arr!18549 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307642 () Unit!22804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38712 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22804)

(assert (=> b!658008 (= lt!307642 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307640 (select (arr!18549 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378014 () Bool)

(assert (=> b!658008 e!378014))

(declare-fun res!426814 () Bool)

(assert (=> b!658008 (=> (not res!426814) (not e!378014))))

(assert (=> b!658008 (= res!426814 (arrayContainsKey!0 lt!307640 (select (arr!18549 a!2986) j!136) j!136))))

(declare-fun e!378013 () Unit!22804)

(declare-fun Unit!22806 () Unit!22804)

(assert (=> b!658008 (= e!378013 Unit!22806)))

(declare-fun b!658009 () Bool)

(assert (=> b!658009 false))

(declare-fun lt!307645 () Unit!22804)

(assert (=> b!658009 (= lt!307645 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307640 (select (arr!18549 a!2986) j!136) j!136 Nil!12640))))

(assert (=> b!658009 (arrayNoDuplicates!0 lt!307640 j!136 Nil!12640)))

(declare-fun lt!307631 () Unit!22804)

(assert (=> b!658009 (= lt!307631 (lemmaNoDuplicateFromThenFromBigger!0 lt!307640 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658009 (arrayNoDuplicates!0 lt!307640 #b00000000000000000000000000000000 Nil!12640)))

(declare-fun lt!307634 () Unit!22804)

(assert (=> b!658009 (= lt!307634 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12640))))

(assert (=> b!658009 (arrayContainsKey!0 lt!307640 (select (arr!18549 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307630 () Unit!22804)

(assert (=> b!658009 (= lt!307630 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307640 (select (arr!18549 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!378021 () Unit!22804)

(declare-fun Unit!22807 () Unit!22804)

(assert (=> b!658009 (= e!378021 Unit!22807)))

(declare-fun b!658010 () Bool)

(declare-fun Unit!22808 () Unit!22804)

(assert (=> b!658010 (= e!378021 Unit!22808)))

(declare-fun b!658011 () Bool)

(declare-fun e!378018 () Unit!22804)

(declare-fun Unit!22809 () Unit!22804)

(assert (=> b!658011 (= e!378018 Unit!22809)))

(declare-fun res!426807 () Bool)

(assert (=> b!658011 (= res!426807 (= (select (store (arr!18549 a!2986) i!1108 k!1786) index!984) (select (arr!18549 a!2986) j!136)))))

(declare-fun e!378023 () Bool)

(assert (=> b!658011 (=> (not res!426807) (not e!378023))))

(assert (=> b!658011 e!378023))

(declare-fun c!75971 () Bool)

(assert (=> b!658011 (= c!75971 (bvslt j!136 index!984))))

(declare-fun lt!307643 () Unit!22804)

(assert (=> b!658011 (= lt!307643 e!378021)))

(declare-fun c!75968 () Bool)

(assert (=> b!658011 (= c!75968 (bvslt index!984 j!136))))

(declare-fun lt!307644 () Unit!22804)

(assert (=> b!658011 (= lt!307644 e!378013)))

(assert (=> b!658011 false))

(declare-fun b!658012 () Bool)

(declare-fun e!378024 () Bool)

(assert (=> b!658012 (= e!378024 (not true))))

(declare-fun lt!307638 () Unit!22804)

(assert (=> b!658012 (= lt!307638 e!378018)))

(declare-fun c!75970 () Bool)

(declare-datatypes ((SeekEntryResult!6996 0))(
  ( (MissingZero!6996 (index!30348 (_ BitVec 32))) (Found!6996 (index!30349 (_ BitVec 32))) (Intermediate!6996 (undefined!7808 Bool) (index!30350 (_ BitVec 32)) (x!59168 (_ BitVec 32))) (Undefined!6996) (MissingVacant!6996 (index!30351 (_ BitVec 32))) )
))
(declare-fun lt!307636 () SeekEntryResult!6996)

(assert (=> b!658012 (= c!75970 (= lt!307636 (Found!6996 index!984)))))

(declare-fun lt!307633 () Unit!22804)

(declare-fun e!378019 () Unit!22804)

(assert (=> b!658012 (= lt!307633 e!378019)))

(declare-fun c!75969 () Bool)

(assert (=> b!658012 (= c!75969 (= lt!307636 Undefined!6996))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!307646 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38712 (_ BitVec 32)) SeekEntryResult!6996)

(assert (=> b!658012 (= lt!307636 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307646 lt!307640 mask!3053))))

(declare-fun e!378025 () Bool)

(assert (=> b!658012 e!378025))

(declare-fun res!426819 () Bool)

(assert (=> b!658012 (=> (not res!426819) (not e!378025))))

(declare-fun lt!307647 () (_ BitVec 32))

(declare-fun lt!307641 () SeekEntryResult!6996)

(assert (=> b!658012 (= res!426819 (= lt!307641 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307647 vacantSpotIndex!68 lt!307646 lt!307640 mask!3053)))))

(assert (=> b!658012 (= lt!307641 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307647 vacantSpotIndex!68 (select (arr!18549 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658012 (= lt!307646 (select (store (arr!18549 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307639 () Unit!22804)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38712 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22804)

(assert (=> b!658012 (= lt!307639 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307647 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658012 (= lt!307647 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658013 () Bool)

(declare-fun Unit!22810 () Unit!22804)

(assert (=> b!658013 (= e!378013 Unit!22810)))

(declare-fun b!658014 () Bool)

(declare-fun e!378020 () Bool)

(assert (=> b!658014 (= e!378020 (arrayContainsKey!0 lt!307640 (select (arr!18549 a!2986) j!136) index!984))))

(declare-fun b!658015 () Bool)

(declare-fun res!426809 () Bool)

(assert (=> b!658015 (= res!426809 (bvsge j!136 index!984))))

(declare-fun e!378017 () Bool)

(assert (=> b!658015 (=> res!426809 e!378017)))

(assert (=> b!658015 (= e!378023 e!378017)))

(declare-fun b!658016 () Bool)

(declare-fun e!378015 () Bool)

(assert (=> b!658016 (= e!378015 e!378024)))

(declare-fun res!426816 () Bool)

(assert (=> b!658016 (=> (not res!426816) (not e!378024))))

(declare-fun lt!307629 () SeekEntryResult!6996)

(assert (=> b!658016 (= res!426816 (and (= lt!307629 (Found!6996 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18549 a!2986) index!984) (select (arr!18549 a!2986) j!136))) (not (= (select (arr!18549 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658016 (= lt!307629 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18549 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658017 () Bool)

(declare-fun Unit!22811 () Unit!22804)

(assert (=> b!658017 (= e!378019 Unit!22811)))

(declare-fun b!658019 () Bool)

(declare-fun res!426813 () Bool)

(declare-fun e!378016 () Bool)

(assert (=> b!658019 (=> (not res!426813) (not e!378016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658019 (= res!426813 (validKeyInArray!0 k!1786))))

(declare-fun b!658020 () Bool)

(declare-fun Unit!22812 () Unit!22804)

(assert (=> b!658020 (= e!378019 Unit!22812)))

(assert (=> b!658020 false))

(declare-fun b!658021 () Bool)

(declare-fun res!426810 () Bool)

(assert (=> b!658021 (=> (not res!426810) (not e!378016))))

(assert (=> b!658021 (= res!426810 (validKeyInArray!0 (select (arr!18549 a!2986) j!136)))))

(declare-fun b!658022 () Bool)

(declare-fun res!426812 () Bool)

(declare-fun e!378012 () Bool)

(assert (=> b!658022 (=> (not res!426812) (not e!378012))))

(assert (=> b!658022 (= res!426812 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12640))))

(declare-fun b!658023 () Bool)

(assert (=> b!658023 (= e!378014 (arrayContainsKey!0 lt!307640 (select (arr!18549 a!2986) j!136) index!984))))

(declare-fun b!658024 () Bool)

(assert (=> b!658024 (= e!378012 e!378015)))

(declare-fun res!426820 () Bool)

(assert (=> b!658024 (=> (not res!426820) (not e!378015))))

(assert (=> b!658024 (= res!426820 (= (select (store (arr!18549 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658024 (= lt!307640 (array!38713 (store (arr!18549 a!2986) i!1108 k!1786) (size!18913 a!2986)))))

(declare-fun b!658025 () Bool)

(declare-fun Unit!22813 () Unit!22804)

(assert (=> b!658025 (= e!378018 Unit!22813)))

(declare-fun b!658026 () Bool)

(declare-fun res!426808 () Bool)

(assert (=> b!658026 (= res!426808 (arrayContainsKey!0 lt!307640 (select (arr!18549 a!2986) j!136) j!136))))

(assert (=> b!658026 (=> (not res!426808) (not e!378020))))

(assert (=> b!658026 (= e!378017 e!378020)))

(declare-fun b!658027 () Bool)

(declare-fun res!426806 () Bool)

(assert (=> b!658027 (=> (not res!426806) (not e!378016))))

(assert (=> b!658027 (= res!426806 (and (= (size!18913 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18913 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18913 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658028 () Bool)

(assert (=> b!658028 (= e!378016 e!378012)))

(declare-fun res!426815 () Bool)

(assert (=> b!658028 (=> (not res!426815) (not e!378012))))

(declare-fun lt!307628 () SeekEntryResult!6996)

(assert (=> b!658028 (= res!426815 (or (= lt!307628 (MissingZero!6996 i!1108)) (= lt!307628 (MissingVacant!6996 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38712 (_ BitVec 32)) SeekEntryResult!6996)

(assert (=> b!658028 (= lt!307628 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658029 () Bool)

(assert (=> b!658029 (= e!378025 (= lt!307629 lt!307641))))

(declare-fun b!658030 () Bool)

(declare-fun res!426817 () Bool)

(assert (=> b!658030 (=> (not res!426817) (not e!378016))))

(assert (=> b!658030 (= res!426817 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658031 () Bool)

(declare-fun res!426811 () Bool)

(assert (=> b!658031 (=> (not res!426811) (not e!378012))))

(assert (=> b!658031 (= res!426811 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18549 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658018 () Bool)

(declare-fun res!426821 () Bool)

(assert (=> b!658018 (=> (not res!426821) (not e!378012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38712 (_ BitVec 32)) Bool)

(assert (=> b!658018 (= res!426821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!426818 () Bool)

(assert (=> start!59598 (=> (not res!426818) (not e!378016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59598 (= res!426818 (validMask!0 mask!3053))))

(assert (=> start!59598 e!378016))

(assert (=> start!59598 true))

(declare-fun array_inv!14323 (array!38712) Bool)

(assert (=> start!59598 (array_inv!14323 a!2986)))

(assert (= (and start!59598 res!426818) b!658027))

(assert (= (and b!658027 res!426806) b!658021))

(assert (= (and b!658021 res!426810) b!658019))

(assert (= (and b!658019 res!426813) b!658030))

(assert (= (and b!658030 res!426817) b!658028))

(assert (= (and b!658028 res!426815) b!658018))

(assert (= (and b!658018 res!426821) b!658022))

(assert (= (and b!658022 res!426812) b!658031))

(assert (= (and b!658031 res!426811) b!658024))

(assert (= (and b!658024 res!426820) b!658016))

(assert (= (and b!658016 res!426816) b!658012))

(assert (= (and b!658012 res!426819) b!658029))

(assert (= (and b!658012 c!75969) b!658020))

(assert (= (and b!658012 (not c!75969)) b!658017))

(assert (= (and b!658012 c!75970) b!658011))

(assert (= (and b!658012 (not c!75970)) b!658025))

(assert (= (and b!658011 res!426807) b!658015))

(assert (= (and b!658015 (not res!426809)) b!658026))

(assert (= (and b!658026 res!426808) b!658014))

(assert (= (and b!658011 c!75971) b!658009))

(assert (= (and b!658011 (not c!75971)) b!658010))

(assert (= (and b!658011 c!75968) b!658008))

(assert (= (and b!658011 (not c!75968)) b!658013))

(assert (= (and b!658008 res!426814) b!658023))

(declare-fun m!631071 () Bool)

(assert (=> b!658028 m!631071))

(declare-fun m!631073 () Bool)

(assert (=> b!658014 m!631073))

(assert (=> b!658014 m!631073))

(declare-fun m!631075 () Bool)

(assert (=> b!658014 m!631075))

(assert (=> b!658009 m!631073))

(declare-fun m!631077 () Bool)

(assert (=> b!658009 m!631077))

(assert (=> b!658009 m!631073))

(declare-fun m!631079 () Bool)

(assert (=> b!658009 m!631079))

(declare-fun m!631081 () Bool)

(assert (=> b!658009 m!631081))

(assert (=> b!658009 m!631073))

(declare-fun m!631083 () Bool)

(assert (=> b!658009 m!631083))

(assert (=> b!658009 m!631073))

(declare-fun m!631085 () Bool)

(assert (=> b!658009 m!631085))

(declare-fun m!631087 () Bool)

(assert (=> b!658009 m!631087))

(declare-fun m!631089 () Bool)

(assert (=> b!658009 m!631089))

(declare-fun m!631091 () Bool)

(assert (=> b!658030 m!631091))

(declare-fun m!631093 () Bool)

(assert (=> b!658016 m!631093))

(assert (=> b!658016 m!631073))

(assert (=> b!658016 m!631073))

(declare-fun m!631095 () Bool)

(assert (=> b!658016 m!631095))

(assert (=> b!658021 m!631073))

(assert (=> b!658021 m!631073))

(declare-fun m!631097 () Bool)

(assert (=> b!658021 m!631097))

(assert (=> b!658026 m!631073))

(assert (=> b!658026 m!631073))

(declare-fun m!631099 () Bool)

(assert (=> b!658026 m!631099))

(assert (=> b!658023 m!631073))

(assert (=> b!658023 m!631073))

(assert (=> b!658023 m!631075))

(assert (=> b!658008 m!631073))

(assert (=> b!658008 m!631073))

(assert (=> b!658008 m!631099))

(assert (=> b!658008 m!631073))

(declare-fun m!631101 () Bool)

(assert (=> b!658008 m!631101))

(assert (=> b!658008 m!631073))

(declare-fun m!631103 () Bool)

(assert (=> b!658008 m!631103))

(assert (=> b!658008 m!631081))

(assert (=> b!658008 m!631073))

(declare-fun m!631105 () Bool)

(assert (=> b!658008 m!631105))

(declare-fun m!631107 () Bool)

(assert (=> b!658008 m!631107))

(declare-fun m!631109 () Bool)

(assert (=> b!658008 m!631109))

(assert (=> b!658008 m!631089))

(declare-fun m!631111 () Bool)

(assert (=> b!658022 m!631111))

(declare-fun m!631113 () Bool)

(assert (=> b!658018 m!631113))

(declare-fun m!631115 () Bool)

(assert (=> b!658011 m!631115))

(declare-fun m!631117 () Bool)

(assert (=> b!658011 m!631117))

(assert (=> b!658011 m!631073))

(assert (=> b!658024 m!631115))

(declare-fun m!631119 () Bool)

(assert (=> b!658024 m!631119))

(declare-fun m!631121 () Bool)

(assert (=> b!658019 m!631121))

(declare-fun m!631123 () Bool)

(assert (=> b!658012 m!631123))

(assert (=> b!658012 m!631073))

(assert (=> b!658012 m!631115))

(declare-fun m!631125 () Bool)

(assert (=> b!658012 m!631125))

(declare-fun m!631127 () Bool)

(assert (=> b!658012 m!631127))

(declare-fun m!631129 () Bool)

(assert (=> b!658012 m!631129))

(declare-fun m!631131 () Bool)

(assert (=> b!658012 m!631131))

(assert (=> b!658012 m!631073))

(declare-fun m!631133 () Bool)

(assert (=> b!658012 m!631133))

(declare-fun m!631135 () Bool)

(assert (=> start!59598 m!631135))

(declare-fun m!631137 () Bool)

(assert (=> start!59598 m!631137))

(declare-fun m!631139 () Bool)

(assert (=> b!658031 m!631139))

(push 1)

