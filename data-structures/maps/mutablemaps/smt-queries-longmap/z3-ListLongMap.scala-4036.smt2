; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55016 () Bool)

(assert start!55016)

(declare-fun b!601835 () Bool)

(declare-fun res!386514 () Bool)

(declare-fun e!344186 () Bool)

(assert (=> b!601835 (=> (not res!386514) (not e!344186))))

(declare-datatypes ((array!37133 0))(
  ( (array!37134 (arr!17821 (Array (_ BitVec 32) (_ BitVec 64))) (size!18185 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37133)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37133 (_ BitVec 32)) Bool)

(assert (=> b!601835 (= res!386514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!386519 () Bool)

(declare-fun e!344177 () Bool)

(assert (=> start!55016 (=> (not res!386519) (not e!344177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55016 (= res!386519 (validMask!0 mask!3053))))

(assert (=> start!55016 e!344177))

(assert (=> start!55016 true))

(declare-fun array_inv!13595 (array!37133) Bool)

(assert (=> start!55016 (array_inv!13595 a!2986)))

(declare-fun b!601836 () Bool)

(declare-datatypes ((Unit!19036 0))(
  ( (Unit!19037) )
))
(declare-fun e!344179 () Unit!19036)

(declare-fun Unit!19038 () Unit!19036)

(assert (=> b!601836 (= e!344179 Unit!19038)))

(declare-fun b!601837 () Bool)

(declare-fun e!344175 () Bool)

(declare-fun e!344181 () Bool)

(assert (=> b!601837 (= e!344175 e!344181)))

(declare-fun res!386511 () Bool)

(assert (=> b!601837 (=> (not res!386511) (not e!344181))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!274093 () array!37133)

(declare-fun arrayContainsKey!0 (array!37133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601837 (= res!386511 (arrayContainsKey!0 lt!274093 (select (arr!17821 a!2986) j!136) j!136))))

(declare-fun b!601838 () Bool)

(declare-fun e!344178 () Bool)

(assert (=> b!601838 (= e!344186 e!344178)))

(declare-fun res!386505 () Bool)

(assert (=> b!601838 (=> (not res!386505) (not e!344178))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!601838 (= res!386505 (= (select (store (arr!17821 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601838 (= lt!274093 (array!37134 (store (arr!17821 a!2986) i!1108 k0!1786) (size!18185 a!2986)))))

(declare-fun b!601839 () Bool)

(assert (=> b!601839 (= e!344177 e!344186)))

(declare-fun res!386517 () Bool)

(assert (=> b!601839 (=> (not res!386517) (not e!344186))))

(declare-datatypes ((SeekEntryResult!6268 0))(
  ( (MissingZero!6268 (index!27331 (_ BitVec 32))) (Found!6268 (index!27332 (_ BitVec 32))) (Intermediate!6268 (undefined!7080 Bool) (index!27333 (_ BitVec 32)) (x!56157 (_ BitVec 32))) (Undefined!6268) (MissingVacant!6268 (index!27334 (_ BitVec 32))) )
))
(declare-fun lt!274106 () SeekEntryResult!6268)

(assert (=> b!601839 (= res!386517 (or (= lt!274106 (MissingZero!6268 i!1108)) (= lt!274106 (MissingVacant!6268 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37133 (_ BitVec 32)) SeekEntryResult!6268)

(assert (=> b!601839 (= lt!274106 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!601840 () Bool)

(declare-fun e!344184 () Bool)

(declare-fun e!344182 () Bool)

(assert (=> b!601840 (= e!344184 e!344182)))

(declare-fun res!386512 () Bool)

(assert (=> b!601840 (=> res!386512 e!344182)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!601840 (= res!386512 (bvsge index!984 j!136))))

(declare-fun lt!274099 () Unit!19036)

(assert (=> b!601840 (= lt!274099 e!344179)))

(declare-fun c!68033 () Bool)

(assert (=> b!601840 (= c!68033 (bvslt j!136 index!984))))

(declare-fun b!601841 () Bool)

(declare-fun res!386508 () Bool)

(assert (=> b!601841 (=> (not res!386508) (not e!344177))))

(assert (=> b!601841 (= res!386508 (and (= (size!18185 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18185 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18185 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601842 () Bool)

(assert (=> b!601842 (= e!344181 (arrayContainsKey!0 lt!274093 (select (arr!17821 a!2986) j!136) index!984))))

(declare-fun b!601843 () Bool)

(declare-fun res!386518 () Bool)

(assert (=> b!601843 (=> (not res!386518) (not e!344186))))

(declare-datatypes ((List!11915 0))(
  ( (Nil!11912) (Cons!11911 (h!12956 (_ BitVec 64)) (t!18151 List!11915)) )
))
(declare-fun arrayNoDuplicates!0 (array!37133 (_ BitVec 32) List!11915) Bool)

(assert (=> b!601843 (= res!386518 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11912))))

(declare-fun b!601844 () Bool)

(declare-fun res!386510 () Bool)

(assert (=> b!601844 (=> (not res!386510) (not e!344177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601844 (= res!386510 (validKeyInArray!0 (select (arr!17821 a!2986) j!136)))))

(declare-fun b!601845 () Bool)

(declare-fun e!344183 () Bool)

(assert (=> b!601845 (= e!344183 e!344175)))

(declare-fun res!386507 () Bool)

(assert (=> b!601845 (=> res!386507 e!344175)))

(declare-fun lt!274103 () (_ BitVec 64))

(declare-fun lt!274107 () (_ BitVec 64))

(assert (=> b!601845 (= res!386507 (or (not (= (select (arr!17821 a!2986) j!136) lt!274103)) (not (= (select (arr!17821 a!2986) j!136) lt!274107)) (bvsge j!136 index!984)))))

(declare-fun b!601846 () Bool)

(assert (=> b!601846 (= e!344182 true)))

(assert (=> b!601846 (arrayContainsKey!0 lt!274093 (select (arr!17821 a!2986) j!136) j!136)))

(declare-fun b!601847 () Bool)

(declare-fun e!344185 () Bool)

(declare-fun e!344187 () Bool)

(assert (=> b!601847 (= e!344185 (not e!344187))))

(declare-fun res!386516 () Bool)

(assert (=> b!601847 (=> res!386516 e!344187)))

(declare-fun lt!274102 () SeekEntryResult!6268)

(assert (=> b!601847 (= res!386516 (not (= lt!274102 (Found!6268 index!984))))))

(declare-fun lt!274098 () Unit!19036)

(declare-fun e!344180 () Unit!19036)

(assert (=> b!601847 (= lt!274098 e!344180)))

(declare-fun c!68032 () Bool)

(assert (=> b!601847 (= c!68032 (= lt!274102 Undefined!6268))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37133 (_ BitVec 32)) SeekEntryResult!6268)

(assert (=> b!601847 (= lt!274102 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274103 lt!274093 mask!3053))))

(declare-fun e!344176 () Bool)

(assert (=> b!601847 e!344176))

(declare-fun res!386506 () Bool)

(assert (=> b!601847 (=> (not res!386506) (not e!344176))))

(declare-fun lt!274101 () SeekEntryResult!6268)

(declare-fun lt!274097 () (_ BitVec 32))

(assert (=> b!601847 (= res!386506 (= lt!274101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274097 vacantSpotIndex!68 lt!274103 lt!274093 mask!3053)))))

(assert (=> b!601847 (= lt!274101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274097 vacantSpotIndex!68 (select (arr!17821 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601847 (= lt!274103 (select (store (arr!17821 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!274105 () Unit!19036)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19036)

(assert (=> b!601847 (= lt!274105 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274097 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601847 (= lt!274097 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601848 () Bool)

(declare-fun res!386509 () Bool)

(assert (=> b!601848 (=> (not res!386509) (not e!344186))))

(assert (=> b!601848 (= res!386509 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17821 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601849 () Bool)

(declare-fun Unit!19039 () Unit!19036)

(assert (=> b!601849 (= e!344180 Unit!19039)))

(assert (=> b!601849 false))

(declare-fun b!601850 () Bool)

(declare-fun res!386520 () Bool)

(assert (=> b!601850 (=> (not res!386520) (not e!344177))))

(assert (=> b!601850 (= res!386520 (validKeyInArray!0 k0!1786))))

(declare-fun b!601851 () Bool)

(declare-fun res!386513 () Bool)

(assert (=> b!601851 (=> (not res!386513) (not e!344177))))

(assert (=> b!601851 (= res!386513 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601852 () Bool)

(declare-fun lt!274094 () SeekEntryResult!6268)

(assert (=> b!601852 (= e!344176 (= lt!274094 lt!274101))))

(declare-fun b!601853 () Bool)

(declare-fun Unit!19040 () Unit!19036)

(assert (=> b!601853 (= e!344179 Unit!19040)))

(declare-fun lt!274096 () Unit!19036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37133 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19036)

(assert (=> b!601853 (= lt!274096 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274093 (select (arr!17821 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601853 (arrayContainsKey!0 lt!274093 (select (arr!17821 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274095 () Unit!19036)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37133 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11915) Unit!19036)

(assert (=> b!601853 (= lt!274095 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11912))))

(assert (=> b!601853 (arrayNoDuplicates!0 lt!274093 #b00000000000000000000000000000000 Nil!11912)))

(declare-fun lt!274100 () Unit!19036)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37133 (_ BitVec 32) (_ BitVec 32)) Unit!19036)

(assert (=> b!601853 (= lt!274100 (lemmaNoDuplicateFromThenFromBigger!0 lt!274093 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601853 (arrayNoDuplicates!0 lt!274093 j!136 Nil!11912)))

(declare-fun lt!274104 () Unit!19036)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37133 (_ BitVec 64) (_ BitVec 32) List!11915) Unit!19036)

(assert (=> b!601853 (= lt!274104 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274093 (select (arr!17821 a!2986) j!136) j!136 Nil!11912))))

(assert (=> b!601853 false))

(declare-fun b!601854 () Bool)

(declare-fun Unit!19041 () Unit!19036)

(assert (=> b!601854 (= e!344180 Unit!19041)))

(declare-fun b!601855 () Bool)

(assert (=> b!601855 (= e!344178 e!344185)))

(declare-fun res!386515 () Bool)

(assert (=> b!601855 (=> (not res!386515) (not e!344185))))

(assert (=> b!601855 (= res!386515 (and (= lt!274094 (Found!6268 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17821 a!2986) index!984) (select (arr!17821 a!2986) j!136))) (not (= (select (arr!17821 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!601855 (= lt!274094 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17821 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601856 () Bool)

(assert (=> b!601856 (= e!344187 e!344184)))

(declare-fun res!386522 () Bool)

(assert (=> b!601856 (=> res!386522 e!344184)))

(assert (=> b!601856 (= res!386522 (or (not (= (select (arr!17821 a!2986) j!136) lt!274103)) (not (= (select (arr!17821 a!2986) j!136) lt!274107))))))

(assert (=> b!601856 e!344183))

(declare-fun res!386521 () Bool)

(assert (=> b!601856 (=> (not res!386521) (not e!344183))))

(assert (=> b!601856 (= res!386521 (= lt!274107 (select (arr!17821 a!2986) j!136)))))

(assert (=> b!601856 (= lt!274107 (select (store (arr!17821 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!55016 res!386519) b!601841))

(assert (= (and b!601841 res!386508) b!601844))

(assert (= (and b!601844 res!386510) b!601850))

(assert (= (and b!601850 res!386520) b!601851))

(assert (= (and b!601851 res!386513) b!601839))

(assert (= (and b!601839 res!386517) b!601835))

(assert (= (and b!601835 res!386514) b!601843))

(assert (= (and b!601843 res!386518) b!601848))

(assert (= (and b!601848 res!386509) b!601838))

(assert (= (and b!601838 res!386505) b!601855))

(assert (= (and b!601855 res!386515) b!601847))

(assert (= (and b!601847 res!386506) b!601852))

(assert (= (and b!601847 c!68032) b!601849))

(assert (= (and b!601847 (not c!68032)) b!601854))

(assert (= (and b!601847 (not res!386516)) b!601856))

(assert (= (and b!601856 res!386521) b!601845))

(assert (= (and b!601845 (not res!386507)) b!601837))

(assert (= (and b!601837 res!386511) b!601842))

(assert (= (and b!601856 (not res!386522)) b!601840))

(assert (= (and b!601840 c!68033) b!601853))

(assert (= (and b!601840 (not c!68033)) b!601836))

(assert (= (and b!601840 (not res!386512)) b!601846))

(declare-fun m!579039 () Bool)

(assert (=> b!601838 m!579039))

(declare-fun m!579041 () Bool)

(assert (=> b!601838 m!579041))

(declare-fun m!579043 () Bool)

(assert (=> b!601848 m!579043))

(declare-fun m!579045 () Bool)

(assert (=> b!601846 m!579045))

(assert (=> b!601846 m!579045))

(declare-fun m!579047 () Bool)

(assert (=> b!601846 m!579047))

(declare-fun m!579049 () Bool)

(assert (=> b!601835 m!579049))

(declare-fun m!579051 () Bool)

(assert (=> b!601843 m!579051))

(declare-fun m!579053 () Bool)

(assert (=> b!601839 m!579053))

(declare-fun m!579055 () Bool)

(assert (=> start!55016 m!579055))

(declare-fun m!579057 () Bool)

(assert (=> start!55016 m!579057))

(declare-fun m!579059 () Bool)

(assert (=> b!601847 m!579059))

(declare-fun m!579061 () Bool)

(assert (=> b!601847 m!579061))

(assert (=> b!601847 m!579045))

(assert (=> b!601847 m!579039))

(declare-fun m!579063 () Bool)

(assert (=> b!601847 m!579063))

(assert (=> b!601847 m!579045))

(declare-fun m!579065 () Bool)

(assert (=> b!601847 m!579065))

(declare-fun m!579067 () Bool)

(assert (=> b!601847 m!579067))

(declare-fun m!579069 () Bool)

(assert (=> b!601847 m!579069))

(assert (=> b!601845 m!579045))

(declare-fun m!579071 () Bool)

(assert (=> b!601851 m!579071))

(assert (=> b!601837 m!579045))

(assert (=> b!601837 m!579045))

(assert (=> b!601837 m!579047))

(assert (=> b!601856 m!579045))

(assert (=> b!601856 m!579039))

(declare-fun m!579073 () Bool)

(assert (=> b!601856 m!579073))

(assert (=> b!601844 m!579045))

(assert (=> b!601844 m!579045))

(declare-fun m!579075 () Bool)

(assert (=> b!601844 m!579075))

(declare-fun m!579077 () Bool)

(assert (=> b!601853 m!579077))

(assert (=> b!601853 m!579045))

(declare-fun m!579079 () Bool)

(assert (=> b!601853 m!579079))

(assert (=> b!601853 m!579045))

(assert (=> b!601853 m!579045))

(declare-fun m!579081 () Bool)

(assert (=> b!601853 m!579081))

(declare-fun m!579083 () Bool)

(assert (=> b!601853 m!579083))

(declare-fun m!579085 () Bool)

(assert (=> b!601853 m!579085))

(assert (=> b!601853 m!579045))

(declare-fun m!579087 () Bool)

(assert (=> b!601853 m!579087))

(declare-fun m!579089 () Bool)

(assert (=> b!601853 m!579089))

(declare-fun m!579091 () Bool)

(assert (=> b!601850 m!579091))

(declare-fun m!579093 () Bool)

(assert (=> b!601855 m!579093))

(assert (=> b!601855 m!579045))

(assert (=> b!601855 m!579045))

(declare-fun m!579095 () Bool)

(assert (=> b!601855 m!579095))

(assert (=> b!601842 m!579045))

(assert (=> b!601842 m!579045))

(declare-fun m!579097 () Bool)

(assert (=> b!601842 m!579097))

(check-sat (not b!601850) (not b!601846) (not b!601837) (not b!601835) (not b!601853) (not b!601839) (not start!55016) (not b!601843) (not b!601851) (not b!601855) (not b!601847) (not b!601844) (not b!601842))
(check-sat)
