; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55014 () Bool)

(assert start!55014)

(declare-fun b!601769 () Bool)

(declare-fun e!344134 () Bool)

(declare-fun e!344143 () Bool)

(assert (=> b!601769 (= e!344134 e!344143)))

(declare-fun res!386459 () Bool)

(assert (=> b!601769 (=> res!386459 e!344143)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37131 0))(
  ( (array!37132 (arr!17820 (Array (_ BitVec 32) (_ BitVec 64))) (size!18184 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37131)

(declare-fun lt!274048 () (_ BitVec 64))

(declare-fun lt!274062 () (_ BitVec 64))

(assert (=> b!601769 (= res!386459 (or (not (= (select (arr!17820 a!2986) j!136) lt!274062)) (not (= (select (arr!17820 a!2986) j!136) lt!274048))))))

(declare-fun e!344144 () Bool)

(assert (=> b!601769 e!344144))

(declare-fun res!386454 () Bool)

(assert (=> b!601769 (=> (not res!386454) (not e!344144))))

(assert (=> b!601769 (= res!386454 (= lt!274048 (select (arr!17820 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!601769 (= lt!274048 (select (store (arr!17820 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601770 () Bool)

(declare-fun e!344145 () Bool)

(declare-datatypes ((SeekEntryResult!6267 0))(
  ( (MissingZero!6267 (index!27327 (_ BitVec 32))) (Found!6267 (index!27328 (_ BitVec 32))) (Intermediate!6267 (undefined!7079 Bool) (index!27329 (_ BitVec 32)) (x!56156 (_ BitVec 32))) (Undefined!6267) (MissingVacant!6267 (index!27330 (_ BitVec 32))) )
))
(declare-fun lt!274061 () SeekEntryResult!6267)

(declare-fun lt!274060 () SeekEntryResult!6267)

(assert (=> b!601770 (= e!344145 (= lt!274061 lt!274060))))

(declare-fun b!601771 () Bool)

(declare-fun e!344138 () Bool)

(declare-fun e!344135 () Bool)

(assert (=> b!601771 (= e!344138 e!344135)))

(declare-fun res!386452 () Bool)

(assert (=> b!601771 (=> (not res!386452) (not e!344135))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!601771 (= res!386452 (= (select (store (arr!17820 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!274053 () array!37131)

(assert (=> b!601771 (= lt!274053 (array!37132 (store (arr!17820 a!2986) i!1108 k!1786) (size!18184 a!2986)))))

(declare-fun b!601772 () Bool)

(declare-fun e!344136 () Bool)

(assert (=> b!601772 (= e!344143 e!344136)))

(declare-fun res!386462 () Bool)

(assert (=> b!601772 (=> res!386462 e!344136)))

(assert (=> b!601772 (= res!386462 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19030 0))(
  ( (Unit!19031) )
))
(declare-fun lt!274056 () Unit!19030)

(declare-fun e!344146 () Unit!19030)

(assert (=> b!601772 (= lt!274056 e!344146)))

(declare-fun c!68027 () Bool)

(assert (=> b!601772 (= c!68027 (bvslt j!136 index!984))))

(declare-fun e!344133 () Bool)

(declare-fun b!601773 () Bool)

(declare-fun arrayContainsKey!0 (array!37131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601773 (= e!344133 (arrayContainsKey!0 lt!274053 (select (arr!17820 a!2986) j!136) index!984))))

(declare-fun b!601774 () Bool)

(declare-fun e!344140 () Bool)

(assert (=> b!601774 (= e!344135 e!344140)))

(declare-fun res!386467 () Bool)

(assert (=> b!601774 (=> (not res!386467) (not e!344140))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!601774 (= res!386467 (and (= lt!274061 (Found!6267 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17820 a!2986) index!984) (select (arr!17820 a!2986) j!136))) (not (= (select (arr!17820 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37131 (_ BitVec 32)) SeekEntryResult!6267)

(assert (=> b!601774 (= lt!274061 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17820 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!386468 () Bool)

(declare-fun e!344137 () Bool)

(assert (=> start!55014 (=> (not res!386468) (not e!344137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55014 (= res!386468 (validMask!0 mask!3053))))

(assert (=> start!55014 e!344137))

(assert (=> start!55014 true))

(declare-fun array_inv!13594 (array!37131) Bool)

(assert (=> start!55014 (array_inv!13594 a!2986)))

(declare-fun b!601775 () Bool)

(assert (=> b!601775 (= e!344136 true)))

(assert (=> b!601775 (arrayContainsKey!0 lt!274053 (select (arr!17820 a!2986) j!136) j!136)))

(declare-fun b!601776 () Bool)

(declare-fun res!386461 () Bool)

(assert (=> b!601776 (=> (not res!386461) (not e!344138))))

(assert (=> b!601776 (= res!386461 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17820 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601777 () Bool)

(declare-fun res!386455 () Bool)

(assert (=> b!601777 (=> (not res!386455) (not e!344138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37131 (_ BitVec 32)) Bool)

(assert (=> b!601777 (= res!386455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601778 () Bool)

(declare-fun e!344141 () Unit!19030)

(declare-fun Unit!19032 () Unit!19030)

(assert (=> b!601778 (= e!344141 Unit!19032)))

(assert (=> b!601778 false))

(declare-fun b!601779 () Bool)

(declare-fun res!386451 () Bool)

(assert (=> b!601779 (=> (not res!386451) (not e!344137))))

(assert (=> b!601779 (= res!386451 (and (= (size!18184 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18184 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18184 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601780 () Bool)

(declare-fun Unit!19033 () Unit!19030)

(assert (=> b!601780 (= e!344146 Unit!19033)))

(declare-fun b!601781 () Bool)

(declare-fun e!344142 () Bool)

(assert (=> b!601781 (= e!344144 e!344142)))

(declare-fun res!386458 () Bool)

(assert (=> b!601781 (=> res!386458 e!344142)))

(assert (=> b!601781 (= res!386458 (or (not (= (select (arr!17820 a!2986) j!136) lt!274062)) (not (= (select (arr!17820 a!2986) j!136) lt!274048)) (bvsge j!136 index!984)))))

(declare-fun b!601782 () Bool)

(assert (=> b!601782 (= e!344142 e!344133)))

(declare-fun res!386465 () Bool)

(assert (=> b!601782 (=> (not res!386465) (not e!344133))))

(assert (=> b!601782 (= res!386465 (arrayContainsKey!0 lt!274053 (select (arr!17820 a!2986) j!136) j!136))))

(declare-fun b!601783 () Bool)

(declare-fun res!386457 () Bool)

(assert (=> b!601783 (=> (not res!386457) (not e!344137))))

(assert (=> b!601783 (= res!386457 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601784 () Bool)

(declare-fun res!386466 () Bool)

(assert (=> b!601784 (=> (not res!386466) (not e!344138))))

(declare-datatypes ((List!11914 0))(
  ( (Nil!11911) (Cons!11910 (h!12955 (_ BitVec 64)) (t!18150 List!11914)) )
))
(declare-fun arrayNoDuplicates!0 (array!37131 (_ BitVec 32) List!11914) Bool)

(assert (=> b!601784 (= res!386466 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11911))))

(declare-fun b!601785 () Bool)

(assert (=> b!601785 (= e!344140 (not e!344134))))

(declare-fun res!386464 () Bool)

(assert (=> b!601785 (=> res!386464 e!344134)))

(declare-fun lt!274058 () SeekEntryResult!6267)

(assert (=> b!601785 (= res!386464 (not (= lt!274058 (Found!6267 index!984))))))

(declare-fun lt!274049 () Unit!19030)

(assert (=> b!601785 (= lt!274049 e!344141)))

(declare-fun c!68026 () Bool)

(assert (=> b!601785 (= c!68026 (= lt!274058 Undefined!6267))))

(assert (=> b!601785 (= lt!274058 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274062 lt!274053 mask!3053))))

(assert (=> b!601785 e!344145))

(declare-fun res!386453 () Bool)

(assert (=> b!601785 (=> (not res!386453) (not e!344145))))

(declare-fun lt!274050 () (_ BitVec 32))

(assert (=> b!601785 (= res!386453 (= lt!274060 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274050 vacantSpotIndex!68 lt!274062 lt!274053 mask!3053)))))

(assert (=> b!601785 (= lt!274060 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274050 vacantSpotIndex!68 (select (arr!17820 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601785 (= lt!274062 (select (store (arr!17820 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274052 () Unit!19030)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19030)

(assert (=> b!601785 (= lt!274052 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274050 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601785 (= lt!274050 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601786 () Bool)

(declare-fun res!386463 () Bool)

(assert (=> b!601786 (=> (not res!386463) (not e!344137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601786 (= res!386463 (validKeyInArray!0 k!1786))))

(declare-fun b!601787 () Bool)

(declare-fun Unit!19034 () Unit!19030)

(assert (=> b!601787 (= e!344146 Unit!19034)))

(declare-fun lt!274055 () Unit!19030)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37131 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19030)

(assert (=> b!601787 (= lt!274055 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274053 (select (arr!17820 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601787 (arrayContainsKey!0 lt!274053 (select (arr!17820 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274054 () Unit!19030)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37131 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11914) Unit!19030)

(assert (=> b!601787 (= lt!274054 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11911))))

(assert (=> b!601787 (arrayNoDuplicates!0 lt!274053 #b00000000000000000000000000000000 Nil!11911)))

(declare-fun lt!274057 () Unit!19030)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37131 (_ BitVec 32) (_ BitVec 32)) Unit!19030)

(assert (=> b!601787 (= lt!274057 (lemmaNoDuplicateFromThenFromBigger!0 lt!274053 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601787 (arrayNoDuplicates!0 lt!274053 j!136 Nil!11911)))

(declare-fun lt!274051 () Unit!19030)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37131 (_ BitVec 64) (_ BitVec 32) List!11914) Unit!19030)

(assert (=> b!601787 (= lt!274051 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274053 (select (arr!17820 a!2986) j!136) j!136 Nil!11911))))

(assert (=> b!601787 false))

(declare-fun b!601788 () Bool)

(declare-fun res!386460 () Bool)

(assert (=> b!601788 (=> (not res!386460) (not e!344137))))

(assert (=> b!601788 (= res!386460 (validKeyInArray!0 (select (arr!17820 a!2986) j!136)))))

(declare-fun b!601789 () Bool)

(assert (=> b!601789 (= e!344137 e!344138)))

(declare-fun res!386456 () Bool)

(assert (=> b!601789 (=> (not res!386456) (not e!344138))))

(declare-fun lt!274059 () SeekEntryResult!6267)

(assert (=> b!601789 (= res!386456 (or (= lt!274059 (MissingZero!6267 i!1108)) (= lt!274059 (MissingVacant!6267 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37131 (_ BitVec 32)) SeekEntryResult!6267)

(assert (=> b!601789 (= lt!274059 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!601790 () Bool)

(declare-fun Unit!19035 () Unit!19030)

(assert (=> b!601790 (= e!344141 Unit!19035)))

(assert (= (and start!55014 res!386468) b!601779))

(assert (= (and b!601779 res!386451) b!601788))

(assert (= (and b!601788 res!386460) b!601786))

(assert (= (and b!601786 res!386463) b!601783))

(assert (= (and b!601783 res!386457) b!601789))

(assert (= (and b!601789 res!386456) b!601777))

(assert (= (and b!601777 res!386455) b!601784))

(assert (= (and b!601784 res!386466) b!601776))

(assert (= (and b!601776 res!386461) b!601771))

(assert (= (and b!601771 res!386452) b!601774))

(assert (= (and b!601774 res!386467) b!601785))

(assert (= (and b!601785 res!386453) b!601770))

(assert (= (and b!601785 c!68026) b!601778))

(assert (= (and b!601785 (not c!68026)) b!601790))

(assert (= (and b!601785 (not res!386464)) b!601769))

(assert (= (and b!601769 res!386454) b!601781))

(assert (= (and b!601781 (not res!386458)) b!601782))

(assert (= (and b!601782 res!386465) b!601773))

(assert (= (and b!601769 (not res!386459)) b!601772))

(assert (= (and b!601772 c!68027) b!601787))

(assert (= (and b!601772 (not c!68027)) b!601780))

(assert (= (and b!601772 (not res!386462)) b!601775))

(declare-fun m!578979 () Bool)

(assert (=> b!601776 m!578979))

(declare-fun m!578981 () Bool)

(assert (=> b!601773 m!578981))

(assert (=> b!601773 m!578981))

(declare-fun m!578983 () Bool)

(assert (=> b!601773 m!578983))

(assert (=> b!601788 m!578981))

(assert (=> b!601788 m!578981))

(declare-fun m!578985 () Bool)

(assert (=> b!601788 m!578985))

(declare-fun m!578987 () Bool)

(assert (=> b!601771 m!578987))

(declare-fun m!578989 () Bool)

(assert (=> b!601771 m!578989))

(declare-fun m!578991 () Bool)

(assert (=> b!601786 m!578991))

(declare-fun m!578993 () Bool)

(assert (=> b!601785 m!578993))

(declare-fun m!578995 () Bool)

(assert (=> b!601785 m!578995))

(declare-fun m!578997 () Bool)

(assert (=> b!601785 m!578997))

(assert (=> b!601785 m!578981))

(assert (=> b!601785 m!578987))

(declare-fun m!578999 () Bool)

(assert (=> b!601785 m!578999))

(assert (=> b!601785 m!578981))

(declare-fun m!579001 () Bool)

(assert (=> b!601785 m!579001))

(declare-fun m!579003 () Bool)

(assert (=> b!601785 m!579003))

(declare-fun m!579005 () Bool)

(assert (=> b!601783 m!579005))

(assert (=> b!601782 m!578981))

(assert (=> b!601782 m!578981))

(declare-fun m!579007 () Bool)

(assert (=> b!601782 m!579007))

(declare-fun m!579009 () Bool)

(assert (=> b!601777 m!579009))

(declare-fun m!579011 () Bool)

(assert (=> b!601789 m!579011))

(declare-fun m!579013 () Bool)

(assert (=> b!601774 m!579013))

(assert (=> b!601774 m!578981))

(assert (=> b!601774 m!578981))

(declare-fun m!579015 () Bool)

(assert (=> b!601774 m!579015))

(assert (=> b!601787 m!578981))

(declare-fun m!579017 () Bool)

(assert (=> b!601787 m!579017))

(assert (=> b!601787 m!578981))

(declare-fun m!579019 () Bool)

(assert (=> b!601787 m!579019))

(assert (=> b!601787 m!578981))

(declare-fun m!579021 () Bool)

(assert (=> b!601787 m!579021))

(declare-fun m!579023 () Bool)

(assert (=> b!601787 m!579023))

(assert (=> b!601787 m!578981))

(declare-fun m!579025 () Bool)

(assert (=> b!601787 m!579025))

(declare-fun m!579027 () Bool)

(assert (=> b!601787 m!579027))

(declare-fun m!579029 () Bool)

(assert (=> b!601787 m!579029))

(declare-fun m!579031 () Bool)

(assert (=> b!601784 m!579031))

(declare-fun m!579033 () Bool)

(assert (=> start!55014 m!579033))

(declare-fun m!579035 () Bool)

(assert (=> start!55014 m!579035))

(assert (=> b!601769 m!578981))

(assert (=> b!601769 m!578987))

(declare-fun m!579037 () Bool)

(assert (=> b!601769 m!579037))

(assert (=> b!601775 m!578981))

(assert (=> b!601775 m!578981))

(assert (=> b!601775 m!579007))

(assert (=> b!601781 m!578981))

(push 1)

