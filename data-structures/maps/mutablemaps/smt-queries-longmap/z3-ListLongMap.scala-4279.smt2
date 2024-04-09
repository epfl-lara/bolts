; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59600 () Bool)

(assert start!59600)

(declare-fun b!658080 () Bool)

(declare-fun res!426858 () Bool)

(declare-fun e!378059 () Bool)

(assert (=> b!658080 (=> (not res!426858) (not e!378059))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38714 0))(
  ( (array!38715 (arr!18550 (Array (_ BitVec 32) (_ BitVec 64))) (size!18914 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38714)

(assert (=> b!658080 (= res!426858 (and (= (size!18914 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18914 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18914 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658081 () Bool)

(declare-fun e!378067 () Bool)

(declare-fun e!378058 () Bool)

(assert (=> b!658081 (= e!378067 e!378058)))

(declare-fun res!426854 () Bool)

(assert (=> b!658081 (=> (not res!426854) (not e!378058))))

(declare-datatypes ((SeekEntryResult!6997 0))(
  ( (MissingZero!6997 (index!30352 (_ BitVec 32))) (Found!6997 (index!30353 (_ BitVec 32))) (Intermediate!6997 (undefined!7809 Bool) (index!30354 (_ BitVec 32)) (x!59169 (_ BitVec 32))) (Undefined!6997) (MissingVacant!6997 (index!30355 (_ BitVec 32))) )
))
(declare-fun lt!307701 () SeekEntryResult!6997)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!658081 (= res!426854 (and (= lt!307701 (Found!6997 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18550 a!2986) index!984) (select (arr!18550 a!2986) j!136))) (not (= (select (arr!18550 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38714 (_ BitVec 32)) SeekEntryResult!6997)

(assert (=> b!658081 (= lt!307701 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18550 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658082 () Bool)

(declare-fun res!426864 () Bool)

(assert (=> b!658082 (= res!426864 (bvsge j!136 index!984))))

(declare-fun e!378063 () Bool)

(assert (=> b!658082 (=> res!426864 e!378063)))

(declare-fun e!378066 () Bool)

(assert (=> b!658082 (= e!378066 e!378063)))

(declare-fun b!658083 () Bool)

(declare-datatypes ((Unit!22814 0))(
  ( (Unit!22815) )
))
(declare-fun e!378065 () Unit!22814)

(declare-fun Unit!22816 () Unit!22814)

(assert (=> b!658083 (= e!378065 Unit!22816)))

(declare-fun b!658084 () Bool)

(declare-fun e!378054 () Bool)

(assert (=> b!658084 (= e!378059 e!378054)))

(declare-fun res!426867 () Bool)

(assert (=> b!658084 (=> (not res!426867) (not e!378054))))

(declare-fun lt!307707 () SeekEntryResult!6997)

(assert (=> b!658084 (= res!426867 (or (= lt!307707 (MissingZero!6997 i!1108)) (= lt!307707 (MissingVacant!6997 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38714 (_ BitVec 32)) SeekEntryResult!6997)

(assert (=> b!658084 (= lt!307707 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!658085 () Bool)

(declare-fun e!378064 () Unit!22814)

(declare-fun Unit!22817 () Unit!22814)

(assert (=> b!658085 (= e!378064 Unit!22817)))

(assert (=> b!658085 false))

(declare-fun b!658086 () Bool)

(assert (=> b!658086 false))

(declare-fun lt!307706 () Unit!22814)

(declare-fun lt!307699 () array!38714)

(declare-datatypes ((List!12644 0))(
  ( (Nil!12641) (Cons!12640 (h!13685 (_ BitVec 64)) (t!18880 List!12644)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38714 (_ BitVec 64) (_ BitVec 32) List!12644) Unit!22814)

(assert (=> b!658086 (= lt!307706 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307699 (select (arr!18550 a!2986) j!136) index!984 Nil!12641))))

(declare-fun arrayNoDuplicates!0 (array!38714 (_ BitVec 32) List!12644) Bool)

(assert (=> b!658086 (arrayNoDuplicates!0 lt!307699 index!984 Nil!12641)))

(declare-fun lt!307693 () Unit!22814)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38714 (_ BitVec 32) (_ BitVec 32)) Unit!22814)

(assert (=> b!658086 (= lt!307693 (lemmaNoDuplicateFromThenFromBigger!0 lt!307699 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658086 (arrayNoDuplicates!0 lt!307699 #b00000000000000000000000000000000 Nil!12641)))

(declare-fun lt!307702 () Unit!22814)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12644) Unit!22814)

(assert (=> b!658086 (= lt!307702 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12641))))

(declare-fun arrayContainsKey!0 (array!38714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658086 (arrayContainsKey!0 lt!307699 (select (arr!18550 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307697 () Unit!22814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22814)

(assert (=> b!658086 (= lt!307697 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307699 (select (arr!18550 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378062 () Bool)

(assert (=> b!658086 e!378062))

(declare-fun res!426860 () Bool)

(assert (=> b!658086 (=> (not res!426860) (not e!378062))))

(assert (=> b!658086 (= res!426860 (arrayContainsKey!0 lt!307699 (select (arr!18550 a!2986) j!136) j!136))))

(declare-fun e!378061 () Unit!22814)

(declare-fun Unit!22818 () Unit!22814)

(assert (=> b!658086 (= e!378061 Unit!22818)))

(declare-fun b!658087 () Bool)

(declare-fun res!426868 () Bool)

(assert (=> b!658087 (=> (not res!426868) (not e!378054))))

(assert (=> b!658087 (= res!426868 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12641))))

(declare-fun b!658088 () Bool)

(declare-fun res!426866 () Bool)

(assert (=> b!658088 (=> (not res!426866) (not e!378059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658088 (= res!426866 (validKeyInArray!0 (select (arr!18550 a!2986) j!136)))))

(declare-fun res!426869 () Bool)

(assert (=> start!59600 (=> (not res!426869) (not e!378059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59600 (= res!426869 (validMask!0 mask!3053))))

(assert (=> start!59600 e!378059))

(assert (=> start!59600 true))

(declare-fun array_inv!14324 (array!38714) Bool)

(assert (=> start!59600 (array_inv!14324 a!2986)))

(declare-fun b!658089 () Bool)

(declare-fun res!426861 () Bool)

(assert (=> b!658089 (=> (not res!426861) (not e!378059))))

(assert (=> b!658089 (= res!426861 (validKeyInArray!0 k0!1786))))

(declare-fun b!658090 () Bool)

(declare-fun e!378057 () Unit!22814)

(declare-fun Unit!22819 () Unit!22814)

(assert (=> b!658090 (= e!378057 Unit!22819)))

(declare-fun res!426857 () Bool)

(assert (=> b!658090 (= res!426857 (= (select (store (arr!18550 a!2986) i!1108 k0!1786) index!984) (select (arr!18550 a!2986) j!136)))))

(assert (=> b!658090 (=> (not res!426857) (not e!378066))))

(assert (=> b!658090 e!378066))

(declare-fun c!75982 () Bool)

(assert (=> b!658090 (= c!75982 (bvslt j!136 index!984))))

(declare-fun lt!307705 () Unit!22814)

(assert (=> b!658090 (= lt!307705 e!378065)))

(declare-fun c!75980 () Bool)

(assert (=> b!658090 (= c!75980 (bvslt index!984 j!136))))

(declare-fun lt!307689 () Unit!22814)

(assert (=> b!658090 (= lt!307689 e!378061)))

(assert (=> b!658090 false))

(declare-fun b!658091 () Bool)

(declare-fun e!378060 () Bool)

(assert (=> b!658091 (= e!378060 (arrayContainsKey!0 lt!307699 (select (arr!18550 a!2986) j!136) index!984))))

(declare-fun b!658092 () Bool)

(assert (=> b!658092 false))

(declare-fun lt!307688 () Unit!22814)

(assert (=> b!658092 (= lt!307688 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307699 (select (arr!18550 a!2986) j!136) j!136 Nil!12641))))

(assert (=> b!658092 (arrayNoDuplicates!0 lt!307699 j!136 Nil!12641)))

(declare-fun lt!307690 () Unit!22814)

(assert (=> b!658092 (= lt!307690 (lemmaNoDuplicateFromThenFromBigger!0 lt!307699 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658092 (arrayNoDuplicates!0 lt!307699 #b00000000000000000000000000000000 Nil!12641)))

(declare-fun lt!307700 () Unit!22814)

(assert (=> b!658092 (= lt!307700 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12641))))

(assert (=> b!658092 (arrayContainsKey!0 lt!307699 (select (arr!18550 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307694 () Unit!22814)

(assert (=> b!658092 (= lt!307694 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307699 (select (arr!18550 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22820 () Unit!22814)

(assert (=> b!658092 (= e!378065 Unit!22820)))

(declare-fun b!658093 () Bool)

(declare-fun res!426865 () Bool)

(assert (=> b!658093 (=> (not res!426865) (not e!378059))))

(assert (=> b!658093 (= res!426865 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658094 () Bool)

(declare-fun Unit!22821 () Unit!22814)

(assert (=> b!658094 (= e!378057 Unit!22821)))

(declare-fun b!658095 () Bool)

(declare-fun e!378056 () Bool)

(declare-fun lt!307696 () SeekEntryResult!6997)

(assert (=> b!658095 (= e!378056 (= lt!307701 lt!307696))))

(declare-fun b!658096 () Bool)

(assert (=> b!658096 (= e!378062 (arrayContainsKey!0 lt!307699 (select (arr!18550 a!2986) j!136) index!984))))

(declare-fun b!658097 () Bool)

(assert (=> b!658097 (= e!378058 (not true))))

(declare-fun lt!307698 () Unit!22814)

(assert (=> b!658097 (= lt!307698 e!378057)))

(declare-fun c!75981 () Bool)

(declare-fun lt!307691 () SeekEntryResult!6997)

(assert (=> b!658097 (= c!75981 (= lt!307691 (Found!6997 index!984)))))

(declare-fun lt!307692 () Unit!22814)

(assert (=> b!658097 (= lt!307692 e!378064)))

(declare-fun c!75983 () Bool)

(assert (=> b!658097 (= c!75983 (= lt!307691 Undefined!6997))))

(declare-fun lt!307704 () (_ BitVec 64))

(assert (=> b!658097 (= lt!307691 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307704 lt!307699 mask!3053))))

(assert (=> b!658097 e!378056))

(declare-fun res!426862 () Bool)

(assert (=> b!658097 (=> (not res!426862) (not e!378056))))

(declare-fun lt!307703 () (_ BitVec 32))

(assert (=> b!658097 (= res!426862 (= lt!307696 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307703 vacantSpotIndex!68 lt!307704 lt!307699 mask!3053)))))

(assert (=> b!658097 (= lt!307696 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307703 vacantSpotIndex!68 (select (arr!18550 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658097 (= lt!307704 (select (store (arr!18550 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!307695 () Unit!22814)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38714 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22814)

(assert (=> b!658097 (= lt!307695 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307703 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658097 (= lt!307703 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658098 () Bool)

(declare-fun res!426855 () Bool)

(assert (=> b!658098 (=> (not res!426855) (not e!378054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38714 (_ BitVec 32)) Bool)

(assert (=> b!658098 (= res!426855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658099 () Bool)

(declare-fun res!426863 () Bool)

(assert (=> b!658099 (=> (not res!426863) (not e!378054))))

(assert (=> b!658099 (= res!426863 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18550 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658100 () Bool)

(assert (=> b!658100 (= e!378054 e!378067)))

(declare-fun res!426859 () Bool)

(assert (=> b!658100 (=> (not res!426859) (not e!378067))))

(assert (=> b!658100 (= res!426859 (= (select (store (arr!18550 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658100 (= lt!307699 (array!38715 (store (arr!18550 a!2986) i!1108 k0!1786) (size!18914 a!2986)))))

(declare-fun b!658101 () Bool)

(declare-fun Unit!22822 () Unit!22814)

(assert (=> b!658101 (= e!378061 Unit!22822)))

(declare-fun b!658102 () Bool)

(declare-fun Unit!22823 () Unit!22814)

(assert (=> b!658102 (= e!378064 Unit!22823)))

(declare-fun b!658103 () Bool)

(declare-fun res!426856 () Bool)

(assert (=> b!658103 (= res!426856 (arrayContainsKey!0 lt!307699 (select (arr!18550 a!2986) j!136) j!136))))

(assert (=> b!658103 (=> (not res!426856) (not e!378060))))

(assert (=> b!658103 (= e!378063 e!378060)))

(assert (= (and start!59600 res!426869) b!658080))

(assert (= (and b!658080 res!426858) b!658088))

(assert (= (and b!658088 res!426866) b!658089))

(assert (= (and b!658089 res!426861) b!658093))

(assert (= (and b!658093 res!426865) b!658084))

(assert (= (and b!658084 res!426867) b!658098))

(assert (= (and b!658098 res!426855) b!658087))

(assert (= (and b!658087 res!426868) b!658099))

(assert (= (and b!658099 res!426863) b!658100))

(assert (= (and b!658100 res!426859) b!658081))

(assert (= (and b!658081 res!426854) b!658097))

(assert (= (and b!658097 res!426862) b!658095))

(assert (= (and b!658097 c!75983) b!658085))

(assert (= (and b!658097 (not c!75983)) b!658102))

(assert (= (and b!658097 c!75981) b!658090))

(assert (= (and b!658097 (not c!75981)) b!658094))

(assert (= (and b!658090 res!426857) b!658082))

(assert (= (and b!658082 (not res!426864)) b!658103))

(assert (= (and b!658103 res!426856) b!658091))

(assert (= (and b!658090 c!75982) b!658092))

(assert (= (and b!658090 (not c!75982)) b!658083))

(assert (= (and b!658090 c!75980) b!658086))

(assert (= (and b!658090 (not c!75980)) b!658101))

(assert (= (and b!658086 res!426860) b!658096))

(declare-fun m!631141 () Bool)

(assert (=> b!658088 m!631141))

(assert (=> b!658088 m!631141))

(declare-fun m!631143 () Bool)

(assert (=> b!658088 m!631143))

(declare-fun m!631145 () Bool)

(assert (=> b!658087 m!631145))

(assert (=> b!658103 m!631141))

(assert (=> b!658103 m!631141))

(declare-fun m!631147 () Bool)

(assert (=> b!658103 m!631147))

(declare-fun m!631149 () Bool)

(assert (=> b!658081 m!631149))

(assert (=> b!658081 m!631141))

(assert (=> b!658081 m!631141))

(declare-fun m!631151 () Bool)

(assert (=> b!658081 m!631151))

(declare-fun m!631153 () Bool)

(assert (=> b!658099 m!631153))

(declare-fun m!631155 () Bool)

(assert (=> start!59600 m!631155))

(declare-fun m!631157 () Bool)

(assert (=> start!59600 m!631157))

(declare-fun m!631159 () Bool)

(assert (=> b!658086 m!631159))

(assert (=> b!658086 m!631141))

(declare-fun m!631161 () Bool)

(assert (=> b!658086 m!631161))

(assert (=> b!658086 m!631141))

(declare-fun m!631163 () Bool)

(assert (=> b!658086 m!631163))

(assert (=> b!658086 m!631141))

(declare-fun m!631165 () Bool)

(assert (=> b!658086 m!631165))

(assert (=> b!658086 m!631141))

(assert (=> b!658086 m!631147))

(declare-fun m!631167 () Bool)

(assert (=> b!658086 m!631167))

(assert (=> b!658086 m!631141))

(declare-fun m!631169 () Bool)

(assert (=> b!658086 m!631169))

(declare-fun m!631171 () Bool)

(assert (=> b!658086 m!631171))

(assert (=> b!658096 m!631141))

(assert (=> b!658096 m!631141))

(declare-fun m!631173 () Bool)

(assert (=> b!658096 m!631173))

(declare-fun m!631175 () Bool)

(assert (=> b!658084 m!631175))

(assert (=> b!658092 m!631159))

(assert (=> b!658092 m!631141))

(assert (=> b!658092 m!631141))

(declare-fun m!631177 () Bool)

(assert (=> b!658092 m!631177))

(declare-fun m!631179 () Bool)

(assert (=> b!658092 m!631179))

(assert (=> b!658092 m!631141))

(declare-fun m!631181 () Bool)

(assert (=> b!658092 m!631181))

(assert (=> b!658092 m!631167))

(declare-fun m!631183 () Bool)

(assert (=> b!658092 m!631183))

(assert (=> b!658092 m!631141))

(declare-fun m!631185 () Bool)

(assert (=> b!658092 m!631185))

(declare-fun m!631187 () Bool)

(assert (=> b!658089 m!631187))

(assert (=> b!658091 m!631141))

(assert (=> b!658091 m!631141))

(assert (=> b!658091 m!631173))

(declare-fun m!631189 () Bool)

(assert (=> b!658100 m!631189))

(declare-fun m!631191 () Bool)

(assert (=> b!658100 m!631191))

(declare-fun m!631193 () Bool)

(assert (=> b!658098 m!631193))

(declare-fun m!631195 () Bool)

(assert (=> b!658097 m!631195))

(declare-fun m!631197 () Bool)

(assert (=> b!658097 m!631197))

(assert (=> b!658097 m!631141))

(assert (=> b!658097 m!631189))

(declare-fun m!631199 () Bool)

(assert (=> b!658097 m!631199))

(assert (=> b!658097 m!631141))

(declare-fun m!631201 () Bool)

(assert (=> b!658097 m!631201))

(declare-fun m!631203 () Bool)

(assert (=> b!658097 m!631203))

(declare-fun m!631205 () Bool)

(assert (=> b!658097 m!631205))

(assert (=> b!658090 m!631189))

(declare-fun m!631207 () Bool)

(assert (=> b!658090 m!631207))

(assert (=> b!658090 m!631141))

(declare-fun m!631209 () Bool)

(assert (=> b!658093 m!631209))

(check-sat (not b!658093) (not start!59600) (not b!658086) (not b!658097) (not b!658103) (not b!658087) (not b!658088) (not b!658089) (not b!658091) (not b!658081) (not b!658084) (not b!658096) (not b!658092) (not b!658098))
(check-sat)
