; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58562 () Bool)

(assert start!58562)

(declare-fun b!646240 () Bool)

(declare-datatypes ((Unit!21952 0))(
  ( (Unit!21953) )
))
(declare-fun e!370446 () Unit!21952)

(declare-fun Unit!21954 () Unit!21952)

(assert (=> b!646240 (= e!370446 Unit!21954)))

(declare-fun b!646241 () Bool)

(declare-fun res!418841 () Bool)

(declare-fun e!370445 () Bool)

(assert (=> b!646241 (=> (not res!418841) (not e!370445))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38453 0))(
  ( (array!38454 (arr!18433 (Array (_ BitVec 32) (_ BitVec 64))) (size!18797 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38453)

(assert (=> b!646241 (= res!418841 (and (= (size!18797 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18797 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18797 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!370442 () Bool)

(declare-fun b!646242 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!299873 () array!38453)

(declare-fun arrayContainsKey!0 (array!38453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646242 (= e!370442 (arrayContainsKey!0 lt!299873 (select (arr!18433 a!2986) j!136) index!984))))

(declare-fun b!646243 () Bool)

(declare-fun e!370456 () Bool)

(declare-fun e!370448 () Bool)

(assert (=> b!646243 (= e!370456 e!370448)))

(declare-fun res!418840 () Bool)

(assert (=> b!646243 (=> res!418840 e!370448)))

(declare-fun lt!299864 () (_ BitVec 64))

(declare-fun lt!299863 () (_ BitVec 64))

(assert (=> b!646243 (= res!418840 (or (not (= (select (arr!18433 a!2986) j!136) lt!299864)) (not (= (select (arr!18433 a!2986) j!136) lt!299863))))))

(declare-fun e!370453 () Bool)

(assert (=> b!646243 e!370453))

(declare-fun res!418830 () Bool)

(assert (=> b!646243 (=> (not res!418830) (not e!370453))))

(assert (=> b!646243 (= res!418830 (= lt!299863 (select (arr!18433 a!2986) j!136)))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!646243 (= lt!299863 (select (store (arr!18433 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!646244 () Bool)

(declare-fun res!418834 () Bool)

(assert (=> b!646244 (=> (not res!418834) (not e!370445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646244 (= res!418834 (validKeyInArray!0 k0!1786))))

(declare-fun b!646245 () Bool)

(declare-fun e!370449 () Bool)

(assert (=> b!646245 (= e!370448 e!370449)))

(declare-fun res!418828 () Bool)

(assert (=> b!646245 (=> res!418828 e!370449)))

(assert (=> b!646245 (= res!418828 (bvsge index!984 j!136))))

(declare-fun lt!299869 () Unit!21952)

(declare-fun e!370454 () Unit!21952)

(assert (=> b!646245 (= lt!299869 e!370454)))

(declare-fun c!74075 () Bool)

(assert (=> b!646245 (= c!74075 (bvslt j!136 index!984))))

(declare-fun b!646246 () Bool)

(declare-fun e!370452 () Bool)

(assert (=> b!646246 (= e!370452 e!370442)))

(declare-fun res!418842 () Bool)

(assert (=> b!646246 (=> (not res!418842) (not e!370442))))

(assert (=> b!646246 (= res!418842 (arrayContainsKey!0 lt!299873 (select (arr!18433 a!2986) j!136) j!136))))

(declare-fun res!418837 () Bool)

(assert (=> start!58562 (=> (not res!418837) (not e!370445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58562 (= res!418837 (validMask!0 mask!3053))))

(assert (=> start!58562 e!370445))

(assert (=> start!58562 true))

(declare-fun array_inv!14207 (array!38453) Bool)

(assert (=> start!58562 (array_inv!14207 a!2986)))

(declare-fun b!646247 () Bool)

(declare-fun e!370444 () Bool)

(declare-fun e!370455 () Bool)

(assert (=> b!646247 (= e!370444 e!370455)))

(declare-fun res!418835 () Bool)

(assert (=> b!646247 (=> (not res!418835) (not e!370455))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!646247 (= res!418835 (= (select (store (arr!18433 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646247 (= lt!299873 (array!38454 (store (arr!18433 a!2986) i!1108 k0!1786) (size!18797 a!2986)))))

(declare-fun b!646248 () Bool)

(assert (=> b!646248 (= e!370449 (or (bvsge (size!18797 a!2986) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!18797 a!2986))))))

(assert (=> b!646248 (arrayContainsKey!0 lt!299873 (select (arr!18433 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299865 () Unit!21952)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38453 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21952)

(assert (=> b!646248 (= lt!299865 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299873 (select (arr!18433 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!370447 () Bool)

(assert (=> b!646248 e!370447))

(declare-fun res!418833 () Bool)

(assert (=> b!646248 (=> (not res!418833) (not e!370447))))

(assert (=> b!646248 (= res!418833 (arrayContainsKey!0 lt!299873 (select (arr!18433 a!2986) j!136) j!136))))

(declare-fun b!646249 () Bool)

(declare-fun res!418836 () Bool)

(assert (=> b!646249 (=> (not res!418836) (not e!370444))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!646249 (= res!418836 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18433 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646250 () Bool)

(declare-fun Unit!21955 () Unit!21952)

(assert (=> b!646250 (= e!370446 Unit!21955)))

(assert (=> b!646250 false))

(declare-fun b!646251 () Bool)

(declare-fun res!418839 () Bool)

(assert (=> b!646251 (=> (not res!418839) (not e!370445))))

(assert (=> b!646251 (= res!418839 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646252 () Bool)

(declare-fun res!418827 () Bool)

(assert (=> b!646252 (=> (not res!418827) (not e!370444))))

(declare-datatypes ((List!12527 0))(
  ( (Nil!12524) (Cons!12523 (h!13568 (_ BitVec 64)) (t!18763 List!12527)) )
))
(declare-fun arrayNoDuplicates!0 (array!38453 (_ BitVec 32) List!12527) Bool)

(assert (=> b!646252 (= res!418827 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12524))))

(declare-fun b!646253 () Bool)

(assert (=> b!646253 (= e!370445 e!370444)))

(declare-fun res!418832 () Bool)

(assert (=> b!646253 (=> (not res!418832) (not e!370444))))

(declare-datatypes ((SeekEntryResult!6880 0))(
  ( (MissingZero!6880 (index!29857 (_ BitVec 32))) (Found!6880 (index!29858 (_ BitVec 32))) (Intermediate!6880 (undefined!7692 Bool) (index!29859 (_ BitVec 32)) (x!58659 (_ BitVec 32))) (Undefined!6880) (MissingVacant!6880 (index!29860 (_ BitVec 32))) )
))
(declare-fun lt!299861 () SeekEntryResult!6880)

(assert (=> b!646253 (= res!418832 (or (= lt!299861 (MissingZero!6880 i!1108)) (= lt!299861 (MissingVacant!6880 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38453 (_ BitVec 32)) SeekEntryResult!6880)

(assert (=> b!646253 (= lt!299861 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!646254 () Bool)

(declare-fun e!370450 () Bool)

(assert (=> b!646254 (= e!370450 (not e!370456))))

(declare-fun res!418843 () Bool)

(assert (=> b!646254 (=> res!418843 e!370456)))

(declare-fun lt!299860 () SeekEntryResult!6880)

(assert (=> b!646254 (= res!418843 (not (= lt!299860 (Found!6880 index!984))))))

(declare-fun lt!299872 () Unit!21952)

(assert (=> b!646254 (= lt!299872 e!370446)))

(declare-fun c!74074 () Bool)

(assert (=> b!646254 (= c!74074 (= lt!299860 Undefined!6880))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38453 (_ BitVec 32)) SeekEntryResult!6880)

(assert (=> b!646254 (= lt!299860 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299864 lt!299873 mask!3053))))

(declare-fun e!370451 () Bool)

(assert (=> b!646254 e!370451))

(declare-fun res!418826 () Bool)

(assert (=> b!646254 (=> (not res!418826) (not e!370451))))

(declare-fun lt!299870 () SeekEntryResult!6880)

(declare-fun lt!299871 () (_ BitVec 32))

(assert (=> b!646254 (= res!418826 (= lt!299870 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299871 vacantSpotIndex!68 lt!299864 lt!299873 mask!3053)))))

(assert (=> b!646254 (= lt!299870 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299871 vacantSpotIndex!68 (select (arr!18433 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646254 (= lt!299864 (select (store (arr!18433 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!299867 () Unit!21952)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38453 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21952)

(assert (=> b!646254 (= lt!299867 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299871 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646254 (= lt!299871 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646255 () Bool)

(assert (=> b!646255 (= e!370455 e!370450)))

(declare-fun res!418829 () Bool)

(assert (=> b!646255 (=> (not res!418829) (not e!370450))))

(declare-fun lt!299859 () SeekEntryResult!6880)

(assert (=> b!646255 (= res!418829 (and (= lt!299859 (Found!6880 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18433 a!2986) index!984) (select (arr!18433 a!2986) j!136))) (not (= (select (arr!18433 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646255 (= lt!299859 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18433 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646256 () Bool)

(assert (=> b!646256 (= e!370453 e!370452)))

(declare-fun res!418831 () Bool)

(assert (=> b!646256 (=> res!418831 e!370452)))

(assert (=> b!646256 (= res!418831 (or (not (= (select (arr!18433 a!2986) j!136) lt!299864)) (not (= (select (arr!18433 a!2986) j!136) lt!299863)) (bvsge j!136 index!984)))))

(declare-fun b!646257 () Bool)

(assert (=> b!646257 (= e!370447 (arrayContainsKey!0 lt!299873 (select (arr!18433 a!2986) j!136) index!984))))

(declare-fun b!646258 () Bool)

(assert (=> b!646258 (= e!370451 (= lt!299859 lt!299870))))

(declare-fun b!646259 () Bool)

(declare-fun Unit!21956 () Unit!21952)

(assert (=> b!646259 (= e!370454 Unit!21956)))

(declare-fun b!646260 () Bool)

(declare-fun res!418844 () Bool)

(assert (=> b!646260 (=> (not res!418844) (not e!370445))))

(assert (=> b!646260 (= res!418844 (validKeyInArray!0 (select (arr!18433 a!2986) j!136)))))

(declare-fun b!646261 () Bool)

(declare-fun Unit!21957 () Unit!21952)

(assert (=> b!646261 (= e!370454 Unit!21957)))

(declare-fun lt!299868 () Unit!21952)

(assert (=> b!646261 (= lt!299868 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299873 (select (arr!18433 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!646261 (arrayContainsKey!0 lt!299873 (select (arr!18433 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299862 () Unit!21952)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38453 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12527) Unit!21952)

(assert (=> b!646261 (= lt!299862 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12524))))

(assert (=> b!646261 (arrayNoDuplicates!0 lt!299873 #b00000000000000000000000000000000 Nil!12524)))

(declare-fun lt!299866 () Unit!21952)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38453 (_ BitVec 32) (_ BitVec 32)) Unit!21952)

(assert (=> b!646261 (= lt!299866 (lemmaNoDuplicateFromThenFromBigger!0 lt!299873 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646261 (arrayNoDuplicates!0 lt!299873 j!136 Nil!12524)))

(declare-fun lt!299874 () Unit!21952)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38453 (_ BitVec 64) (_ BitVec 32) List!12527) Unit!21952)

(assert (=> b!646261 (= lt!299874 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299873 (select (arr!18433 a!2986) j!136) j!136 Nil!12524))))

(assert (=> b!646261 false))

(declare-fun b!646262 () Bool)

(declare-fun res!418838 () Bool)

(assert (=> b!646262 (=> (not res!418838) (not e!370444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38453 (_ BitVec 32)) Bool)

(assert (=> b!646262 (= res!418838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!58562 res!418837) b!646241))

(assert (= (and b!646241 res!418841) b!646260))

(assert (= (and b!646260 res!418844) b!646244))

(assert (= (and b!646244 res!418834) b!646251))

(assert (= (and b!646251 res!418839) b!646253))

(assert (= (and b!646253 res!418832) b!646262))

(assert (= (and b!646262 res!418838) b!646252))

(assert (= (and b!646252 res!418827) b!646249))

(assert (= (and b!646249 res!418836) b!646247))

(assert (= (and b!646247 res!418835) b!646255))

(assert (= (and b!646255 res!418829) b!646254))

(assert (= (and b!646254 res!418826) b!646258))

(assert (= (and b!646254 c!74074) b!646250))

(assert (= (and b!646254 (not c!74074)) b!646240))

(assert (= (and b!646254 (not res!418843)) b!646243))

(assert (= (and b!646243 res!418830) b!646256))

(assert (= (and b!646256 (not res!418831)) b!646246))

(assert (= (and b!646246 res!418842) b!646242))

(assert (= (and b!646243 (not res!418840)) b!646245))

(assert (= (and b!646245 c!74075) b!646261))

(assert (= (and b!646245 (not c!74075)) b!646259))

(assert (= (and b!646245 (not res!418828)) b!646248))

(assert (= (and b!646248 res!418833) b!646257))

(declare-fun m!619777 () Bool)

(assert (=> b!646260 m!619777))

(assert (=> b!646260 m!619777))

(declare-fun m!619779 () Bool)

(assert (=> b!646260 m!619779))

(assert (=> b!646257 m!619777))

(assert (=> b!646257 m!619777))

(declare-fun m!619781 () Bool)

(assert (=> b!646257 m!619781))

(declare-fun m!619783 () Bool)

(assert (=> b!646253 m!619783))

(assert (=> b!646248 m!619777))

(assert (=> b!646248 m!619777))

(declare-fun m!619785 () Bool)

(assert (=> b!646248 m!619785))

(assert (=> b!646248 m!619777))

(declare-fun m!619787 () Bool)

(assert (=> b!646248 m!619787))

(assert (=> b!646248 m!619777))

(declare-fun m!619789 () Bool)

(assert (=> b!646248 m!619789))

(declare-fun m!619791 () Bool)

(assert (=> b!646252 m!619791))

(assert (=> b!646243 m!619777))

(declare-fun m!619793 () Bool)

(assert (=> b!646243 m!619793))

(declare-fun m!619795 () Bool)

(assert (=> b!646243 m!619795))

(assert (=> b!646256 m!619777))

(declare-fun m!619797 () Bool)

(assert (=> b!646251 m!619797))

(assert (=> b!646247 m!619793))

(declare-fun m!619799 () Bool)

(assert (=> b!646247 m!619799))

(declare-fun m!619801 () Bool)

(assert (=> start!58562 m!619801))

(declare-fun m!619803 () Bool)

(assert (=> start!58562 m!619803))

(assert (=> b!646242 m!619777))

(assert (=> b!646242 m!619777))

(assert (=> b!646242 m!619781))

(declare-fun m!619805 () Bool)

(assert (=> b!646262 m!619805))

(assert (=> b!646261 m!619777))

(declare-fun m!619807 () Bool)

(assert (=> b!646261 m!619807))

(assert (=> b!646261 m!619777))

(declare-fun m!619809 () Bool)

(assert (=> b!646261 m!619809))

(assert (=> b!646261 m!619777))

(declare-fun m!619811 () Bool)

(assert (=> b!646261 m!619811))

(declare-fun m!619813 () Bool)

(assert (=> b!646261 m!619813))

(assert (=> b!646261 m!619777))

(declare-fun m!619815 () Bool)

(assert (=> b!646261 m!619815))

(declare-fun m!619817 () Bool)

(assert (=> b!646261 m!619817))

(declare-fun m!619819 () Bool)

(assert (=> b!646261 m!619819))

(declare-fun m!619821 () Bool)

(assert (=> b!646244 m!619821))

(declare-fun m!619823 () Bool)

(assert (=> b!646254 m!619823))

(assert (=> b!646254 m!619777))

(assert (=> b!646254 m!619793))

(assert (=> b!646254 m!619777))

(declare-fun m!619825 () Bool)

(assert (=> b!646254 m!619825))

(declare-fun m!619827 () Bool)

(assert (=> b!646254 m!619827))

(declare-fun m!619829 () Bool)

(assert (=> b!646254 m!619829))

(declare-fun m!619831 () Bool)

(assert (=> b!646254 m!619831))

(declare-fun m!619833 () Bool)

(assert (=> b!646254 m!619833))

(assert (=> b!646246 m!619777))

(assert (=> b!646246 m!619777))

(assert (=> b!646246 m!619789))

(declare-fun m!619835 () Bool)

(assert (=> b!646255 m!619835))

(assert (=> b!646255 m!619777))

(assert (=> b!646255 m!619777))

(declare-fun m!619837 () Bool)

(assert (=> b!646255 m!619837))

(declare-fun m!619839 () Bool)

(assert (=> b!646249 m!619839))

(check-sat (not start!58562) (not b!646260) (not b!646262) (not b!646257) (not b!646253) (not b!646261) (not b!646244) (not b!646246) (not b!646252) (not b!646251) (not b!646255) (not b!646242) (not b!646248) (not b!646254))
(check-sat)
