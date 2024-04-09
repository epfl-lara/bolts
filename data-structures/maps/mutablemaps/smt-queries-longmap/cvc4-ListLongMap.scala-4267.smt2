; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59362 () Bool)

(assert start!59362)

(declare-fun b!654810 () Bool)

(declare-datatypes ((Unit!22464 0))(
  ( (Unit!22465) )
))
(declare-fun e!376060 () Unit!22464)

(declare-fun Unit!22466 () Unit!22464)

(assert (=> b!654810 (= e!376060 Unit!22466)))

(declare-fun b!654811 () Bool)

(declare-fun e!376051 () Unit!22464)

(declare-fun Unit!22467 () Unit!22464)

(assert (=> b!654811 (= e!376051 Unit!22467)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!424870 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38638 0))(
  ( (array!38639 (arr!18515 (Array (_ BitVec 32) (_ BitVec 64))) (size!18879 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38638)

(assert (=> b!654811 (= res!424870 (= (select (store (arr!18515 a!2986) i!1108 k!1786) index!984) (select (arr!18515 a!2986) j!136)))))

(declare-fun e!376053 () Bool)

(assert (=> b!654811 (=> (not res!424870) (not e!376053))))

(assert (=> b!654811 e!376053))

(declare-fun c!75344 () Bool)

(assert (=> b!654811 (= c!75344 (bvslt j!136 index!984))))

(declare-fun lt!305299 () Unit!22464)

(assert (=> b!654811 (= lt!305299 e!376060)))

(declare-fun c!75345 () Bool)

(assert (=> b!654811 (= c!75345 (bvslt index!984 j!136))))

(declare-fun lt!305285 () Unit!22464)

(declare-fun e!376062 () Unit!22464)

(assert (=> b!654811 (= lt!305285 e!376062)))

(assert (=> b!654811 false))

(declare-fun b!654812 () Bool)

(declare-fun res!424866 () Bool)

(declare-fun e!376059 () Bool)

(assert (=> b!654812 (=> (not res!424866) (not e!376059))))

(declare-datatypes ((List!12609 0))(
  ( (Nil!12606) (Cons!12605 (h!13650 (_ BitVec 64)) (t!18845 List!12609)) )
))
(declare-fun arrayNoDuplicates!0 (array!38638 (_ BitVec 32) List!12609) Bool)

(assert (=> b!654812 (= res!424866 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12606))))

(declare-fun b!654813 () Bool)

(declare-fun res!424865 () Bool)

(assert (=> b!654813 (=> (not res!424865) (not e!376059))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38638 (_ BitVec 32)) Bool)

(assert (=> b!654813 (= res!424865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654814 () Bool)

(declare-fun e!376054 () Bool)

(assert (=> b!654814 (= e!376054 e!376059)))

(declare-fun res!424869 () Bool)

(assert (=> b!654814 (=> (not res!424869) (not e!376059))))

(declare-datatypes ((SeekEntryResult!6962 0))(
  ( (MissingZero!6962 (index!30206 (_ BitVec 32))) (Found!6962 (index!30207 (_ BitVec 32))) (Intermediate!6962 (undefined!7774 Bool) (index!30208 (_ BitVec 32)) (x!59020 (_ BitVec 32))) (Undefined!6962) (MissingVacant!6962 (index!30209 (_ BitVec 32))) )
))
(declare-fun lt!305293 () SeekEntryResult!6962)

(assert (=> b!654814 (= res!424869 (or (= lt!305293 (MissingZero!6962 i!1108)) (= lt!305293 (MissingVacant!6962 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38638 (_ BitVec 32)) SeekEntryResult!6962)

(assert (=> b!654814 (= lt!305293 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!424859 () Bool)

(declare-fun lt!305286 () array!38638)

(declare-fun b!654815 () Bool)

(declare-fun arrayContainsKey!0 (array!38638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654815 (= res!424859 (arrayContainsKey!0 lt!305286 (select (arr!18515 a!2986) j!136) j!136))))

(declare-fun e!376061 () Bool)

(assert (=> b!654815 (=> (not res!424859) (not e!376061))))

(declare-fun e!376058 () Bool)

(assert (=> b!654815 (= e!376058 e!376061)))

(declare-fun b!654816 () Bool)

(assert (=> b!654816 (= e!376061 (arrayContainsKey!0 lt!305286 (select (arr!18515 a!2986) j!136) index!984))))

(declare-fun b!654818 () Bool)

(assert (=> b!654818 false))

(declare-fun lt!305301 () Unit!22464)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38638 (_ BitVec 64) (_ BitVec 32) List!12609) Unit!22464)

(assert (=> b!654818 (= lt!305301 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305286 (select (arr!18515 a!2986) j!136) index!984 Nil!12606))))

(assert (=> b!654818 (arrayNoDuplicates!0 lt!305286 index!984 Nil!12606)))

(declare-fun lt!305295 () Unit!22464)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38638 (_ BitVec 32) (_ BitVec 32)) Unit!22464)

(assert (=> b!654818 (= lt!305295 (lemmaNoDuplicateFromThenFromBigger!0 lt!305286 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654818 (arrayNoDuplicates!0 lt!305286 #b00000000000000000000000000000000 Nil!12606)))

(declare-fun lt!305290 () Unit!22464)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38638 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12609) Unit!22464)

(assert (=> b!654818 (= lt!305290 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12606))))

(assert (=> b!654818 (arrayContainsKey!0 lt!305286 (select (arr!18515 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305287 () Unit!22464)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38638 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22464)

(assert (=> b!654818 (= lt!305287 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305286 (select (arr!18515 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!376056 () Bool)

(assert (=> b!654818 e!376056))

(declare-fun res!424864 () Bool)

(assert (=> b!654818 (=> (not res!424864) (not e!376056))))

(assert (=> b!654818 (= res!424864 (arrayContainsKey!0 lt!305286 (select (arr!18515 a!2986) j!136) j!136))))

(declare-fun Unit!22468 () Unit!22464)

(assert (=> b!654818 (= e!376062 Unit!22468)))

(declare-fun b!654819 () Bool)

(declare-fun e!376052 () Bool)

(assert (=> b!654819 (= e!376059 e!376052)))

(declare-fun res!424863 () Bool)

(assert (=> b!654819 (=> (not res!424863) (not e!376052))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!654819 (= res!424863 (= (select (store (arr!18515 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654819 (= lt!305286 (array!38639 (store (arr!18515 a!2986) i!1108 k!1786) (size!18879 a!2986)))))

(declare-fun b!654820 () Bool)

(declare-fun res!424867 () Bool)

(assert (=> b!654820 (=> (not res!424867) (not e!376054))))

(assert (=> b!654820 (= res!424867 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654821 () Bool)

(declare-fun res!424856 () Bool)

(assert (=> b!654821 (=> (not res!424856) (not e!376059))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654821 (= res!424856 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18515 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654822 () Bool)

(assert (=> b!654822 false))

(declare-fun lt!305291 () Unit!22464)

(assert (=> b!654822 (= lt!305291 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305286 (select (arr!18515 a!2986) j!136) j!136 Nil!12606))))

(assert (=> b!654822 (arrayNoDuplicates!0 lt!305286 j!136 Nil!12606)))

(declare-fun lt!305296 () Unit!22464)

(assert (=> b!654822 (= lt!305296 (lemmaNoDuplicateFromThenFromBigger!0 lt!305286 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654822 (arrayNoDuplicates!0 lt!305286 #b00000000000000000000000000000000 Nil!12606)))

(declare-fun lt!305289 () Unit!22464)

(assert (=> b!654822 (= lt!305289 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12606))))

(assert (=> b!654822 (arrayContainsKey!0 lt!305286 (select (arr!18515 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305283 () Unit!22464)

(assert (=> b!654822 (= lt!305283 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305286 (select (arr!18515 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22469 () Unit!22464)

(assert (=> b!654822 (= e!376060 Unit!22469)))

(declare-fun b!654823 () Bool)

(declare-fun Unit!22470 () Unit!22464)

(assert (=> b!654823 (= e!376062 Unit!22470)))

(declare-fun b!654824 () Bool)

(declare-fun Unit!22471 () Unit!22464)

(assert (=> b!654824 (= e!376051 Unit!22471)))

(declare-fun b!654825 () Bool)

(assert (=> b!654825 (= e!376056 (arrayContainsKey!0 lt!305286 (select (arr!18515 a!2986) j!136) index!984))))

(declare-fun b!654826 () Bool)

(declare-fun res!424871 () Bool)

(assert (=> b!654826 (=> (not res!424871) (not e!376054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654826 (= res!424871 (validKeyInArray!0 k!1786))))

(declare-fun b!654817 () Bool)

(declare-fun res!424868 () Bool)

(assert (=> b!654817 (=> (not res!424868) (not e!376054))))

(assert (=> b!654817 (= res!424868 (validKeyInArray!0 (select (arr!18515 a!2986) j!136)))))

(declare-fun res!424862 () Bool)

(assert (=> start!59362 (=> (not res!424862) (not e!376054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59362 (= res!424862 (validMask!0 mask!3053))))

(assert (=> start!59362 e!376054))

(assert (=> start!59362 true))

(declare-fun array_inv!14289 (array!38638) Bool)

(assert (=> start!59362 (array_inv!14289 a!2986)))

(declare-fun b!654827 () Bool)

(declare-fun e!376057 () Unit!22464)

(declare-fun Unit!22472 () Unit!22464)

(assert (=> b!654827 (= e!376057 Unit!22472)))

(declare-fun b!654828 () Bool)

(declare-fun e!376055 () Bool)

(assert (=> b!654828 (= e!376055 (not true))))

(declare-fun lt!305292 () Unit!22464)

(assert (=> b!654828 (= lt!305292 e!376051)))

(declare-fun c!75346 () Bool)

(declare-fun lt!305298 () SeekEntryResult!6962)

(assert (=> b!654828 (= c!75346 (= lt!305298 (Found!6962 index!984)))))

(declare-fun lt!305284 () Unit!22464)

(assert (=> b!654828 (= lt!305284 e!376057)))

(declare-fun c!75347 () Bool)

(assert (=> b!654828 (= c!75347 (= lt!305298 Undefined!6962))))

(declare-fun lt!305288 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38638 (_ BitVec 32)) SeekEntryResult!6962)

(assert (=> b!654828 (= lt!305298 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305288 lt!305286 mask!3053))))

(declare-fun e!376063 () Bool)

(assert (=> b!654828 e!376063))

(declare-fun res!424860 () Bool)

(assert (=> b!654828 (=> (not res!424860) (not e!376063))))

(declare-fun lt!305294 () (_ BitVec 32))

(declare-fun lt!305297 () SeekEntryResult!6962)

(assert (=> b!654828 (= res!424860 (= lt!305297 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305294 vacantSpotIndex!68 lt!305288 lt!305286 mask!3053)))))

(assert (=> b!654828 (= lt!305297 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305294 vacantSpotIndex!68 (select (arr!18515 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654828 (= lt!305288 (select (store (arr!18515 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305300 () Unit!22464)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38638 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22464)

(assert (=> b!654828 (= lt!305300 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305294 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654828 (= lt!305294 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654829 () Bool)

(declare-fun res!424861 () Bool)

(assert (=> b!654829 (=> (not res!424861) (not e!376054))))

(assert (=> b!654829 (= res!424861 (and (= (size!18879 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18879 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18879 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654830 () Bool)

(assert (=> b!654830 (= e!376052 e!376055)))

(declare-fun res!424857 () Bool)

(assert (=> b!654830 (=> (not res!424857) (not e!376055))))

(declare-fun lt!305282 () SeekEntryResult!6962)

(assert (=> b!654830 (= res!424857 (and (= lt!305282 (Found!6962 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18515 a!2986) index!984) (select (arr!18515 a!2986) j!136))) (not (= (select (arr!18515 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!654830 (= lt!305282 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18515 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654831 () Bool)

(declare-fun Unit!22473 () Unit!22464)

(assert (=> b!654831 (= e!376057 Unit!22473)))

(assert (=> b!654831 false))

(declare-fun b!654832 () Bool)

(assert (=> b!654832 (= e!376063 (= lt!305282 lt!305297))))

(declare-fun b!654833 () Bool)

(declare-fun res!424858 () Bool)

(assert (=> b!654833 (= res!424858 (bvsge j!136 index!984))))

(assert (=> b!654833 (=> res!424858 e!376058)))

(assert (=> b!654833 (= e!376053 e!376058)))

(assert (= (and start!59362 res!424862) b!654829))

(assert (= (and b!654829 res!424861) b!654817))

(assert (= (and b!654817 res!424868) b!654826))

(assert (= (and b!654826 res!424871) b!654820))

(assert (= (and b!654820 res!424867) b!654814))

(assert (= (and b!654814 res!424869) b!654813))

(assert (= (and b!654813 res!424865) b!654812))

(assert (= (and b!654812 res!424866) b!654821))

(assert (= (and b!654821 res!424856) b!654819))

(assert (= (and b!654819 res!424863) b!654830))

(assert (= (and b!654830 res!424857) b!654828))

(assert (= (and b!654828 res!424860) b!654832))

(assert (= (and b!654828 c!75347) b!654831))

(assert (= (and b!654828 (not c!75347)) b!654827))

(assert (= (and b!654828 c!75346) b!654811))

(assert (= (and b!654828 (not c!75346)) b!654824))

(assert (= (and b!654811 res!424870) b!654833))

(assert (= (and b!654833 (not res!424858)) b!654815))

(assert (= (and b!654815 res!424859) b!654816))

(assert (= (and b!654811 c!75344) b!654822))

(assert (= (and b!654811 (not c!75344)) b!654810))

(assert (= (and b!654811 c!75345) b!654818))

(assert (= (and b!654811 (not c!75345)) b!654823))

(assert (= (and b!654818 res!424864) b!654825))

(declare-fun m!627971 () Bool)

(assert (=> b!654822 m!627971))

(declare-fun m!627973 () Bool)

(assert (=> b!654822 m!627973))

(assert (=> b!654822 m!627973))

(declare-fun m!627975 () Bool)

(assert (=> b!654822 m!627975))

(declare-fun m!627977 () Bool)

(assert (=> b!654822 m!627977))

(assert (=> b!654822 m!627973))

(declare-fun m!627979 () Bool)

(assert (=> b!654822 m!627979))

(declare-fun m!627981 () Bool)

(assert (=> b!654822 m!627981))

(declare-fun m!627983 () Bool)

(assert (=> b!654822 m!627983))

(assert (=> b!654822 m!627973))

(declare-fun m!627985 () Bool)

(assert (=> b!654822 m!627985))

(assert (=> b!654818 m!627973))

(assert (=> b!654818 m!627973))

(declare-fun m!627987 () Bool)

(assert (=> b!654818 m!627987))

(assert (=> b!654818 m!627973))

(declare-fun m!627989 () Bool)

(assert (=> b!654818 m!627989))

(assert (=> b!654818 m!627973))

(declare-fun m!627991 () Bool)

(assert (=> b!654818 m!627991))

(assert (=> b!654818 m!627981))

(assert (=> b!654818 m!627971))

(declare-fun m!627993 () Bool)

(assert (=> b!654818 m!627993))

(assert (=> b!654818 m!627973))

(declare-fun m!627995 () Bool)

(assert (=> b!654818 m!627995))

(declare-fun m!627997 () Bool)

(assert (=> b!654818 m!627997))

(declare-fun m!627999 () Bool)

(assert (=> b!654828 m!627999))

(declare-fun m!628001 () Bool)

(assert (=> b!654828 m!628001))

(declare-fun m!628003 () Bool)

(assert (=> b!654828 m!628003))

(assert (=> b!654828 m!627973))

(declare-fun m!628005 () Bool)

(assert (=> b!654828 m!628005))

(assert (=> b!654828 m!627973))

(declare-fun m!628007 () Bool)

(assert (=> b!654828 m!628007))

(declare-fun m!628009 () Bool)

(assert (=> b!654828 m!628009))

(declare-fun m!628011 () Bool)

(assert (=> b!654828 m!628011))

(assert (=> b!654819 m!628005))

(declare-fun m!628013 () Bool)

(assert (=> b!654819 m!628013))

(assert (=> b!654815 m!627973))

(assert (=> b!654815 m!627973))

(assert (=> b!654815 m!627991))

(assert (=> b!654817 m!627973))

(assert (=> b!654817 m!627973))

(declare-fun m!628015 () Bool)

(assert (=> b!654817 m!628015))

(assert (=> b!654811 m!628005))

(declare-fun m!628017 () Bool)

(assert (=> b!654811 m!628017))

(assert (=> b!654811 m!627973))

(declare-fun m!628019 () Bool)

(assert (=> b!654826 m!628019))

(declare-fun m!628021 () Bool)

(assert (=> start!59362 m!628021))

(declare-fun m!628023 () Bool)

(assert (=> start!59362 m!628023))

(declare-fun m!628025 () Bool)

(assert (=> b!654830 m!628025))

(assert (=> b!654830 m!627973))

(assert (=> b!654830 m!627973))

(declare-fun m!628027 () Bool)

(assert (=> b!654830 m!628027))

(assert (=> b!654816 m!627973))

(assert (=> b!654816 m!627973))

(declare-fun m!628029 () Bool)

(assert (=> b!654816 m!628029))

(declare-fun m!628031 () Bool)

(assert (=> b!654821 m!628031))

(declare-fun m!628033 () Bool)

(assert (=> b!654813 m!628033))

(declare-fun m!628035 () Bool)

(assert (=> b!654820 m!628035))

(declare-fun m!628037 () Bool)

(assert (=> b!654812 m!628037))

(declare-fun m!628039 () Bool)

(assert (=> b!654814 m!628039))

(assert (=> b!654825 m!627973))

(assert (=> b!654825 m!627973))

(assert (=> b!654825 m!628029))

(push 1)

