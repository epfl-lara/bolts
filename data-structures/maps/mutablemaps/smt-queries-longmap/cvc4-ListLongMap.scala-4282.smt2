; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59620 () Bool)

(assert start!59620)

(declare-fun b!658800 () Bool)

(declare-datatypes ((Unit!22914 0))(
  ( (Unit!22915) )
))
(declare-fun e!378482 () Unit!22914)

(declare-fun Unit!22916 () Unit!22914)

(assert (=> b!658800 (= e!378482 Unit!22916)))

(declare-fun b!658801 () Bool)

(declare-fun res!427338 () Bool)

(declare-fun e!378481 () Bool)

(assert (=> b!658801 (=> (not res!427338) (not e!378481))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38734 0))(
  ( (array!38735 (arr!18560 (Array (_ BitVec 32) (_ BitVec 64))) (size!18924 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38734)

(assert (=> b!658801 (= res!427338 (and (= (size!18924 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18924 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18924 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!308295 () array!38734)

(declare-fun b!658802 () Bool)

(declare-fun res!427345 () Bool)

(declare-fun arrayContainsKey!0 (array!38734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658802 (= res!427345 (arrayContainsKey!0 lt!308295 (select (arr!18560 a!2986) j!136) j!136))))

(declare-fun e!378479 () Bool)

(assert (=> b!658802 (=> (not res!427345) (not e!378479))))

(declare-fun e!378475 () Bool)

(assert (=> b!658802 (= e!378475 e!378479)))

(declare-fun b!658803 () Bool)

(declare-fun e!378487 () Unit!22914)

(declare-fun Unit!22917 () Unit!22914)

(assert (=> b!658803 (= e!378487 Unit!22917)))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!427335 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!658803 (= res!427335 (= (select (store (arr!18560 a!2986) i!1108 k!1786) index!984) (select (arr!18560 a!2986) j!136)))))

(declare-fun e!378474 () Bool)

(assert (=> b!658803 (=> (not res!427335) (not e!378474))))

(assert (=> b!658803 e!378474))

(declare-fun c!76102 () Bool)

(assert (=> b!658803 (= c!76102 (bvslt j!136 index!984))))

(declare-fun lt!308288 () Unit!22914)

(assert (=> b!658803 (= lt!308288 e!378482)))

(declare-fun c!76101 () Bool)

(assert (=> b!658803 (= c!76101 (bvslt index!984 j!136))))

(declare-fun lt!308302 () Unit!22914)

(declare-fun e!378480 () Unit!22914)

(assert (=> b!658803 (= lt!308302 e!378480)))

(assert (=> b!658803 false))

(declare-fun b!658804 () Bool)

(declare-fun res!427347 () Bool)

(declare-fun e!378483 () Bool)

(assert (=> b!658804 (=> (not res!427347) (not e!378483))))

(declare-datatypes ((List!12654 0))(
  ( (Nil!12651) (Cons!12650 (h!13695 (_ BitVec 64)) (t!18890 List!12654)) )
))
(declare-fun arrayNoDuplicates!0 (array!38734 (_ BitVec 32) List!12654) Bool)

(assert (=> b!658804 (= res!427347 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12651))))

(declare-fun res!427346 () Bool)

(assert (=> start!59620 (=> (not res!427346) (not e!378481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59620 (= res!427346 (validMask!0 mask!3053))))

(assert (=> start!59620 e!378481))

(assert (=> start!59620 true))

(declare-fun array_inv!14334 (array!38734) Bool)

(assert (=> start!59620 (array_inv!14334 a!2986)))

(declare-fun b!658805 () Bool)

(declare-fun e!378484 () Bool)

(assert (=> b!658805 (= e!378483 e!378484)))

(declare-fun res!427337 () Bool)

(assert (=> b!658805 (=> (not res!427337) (not e!378484))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!658805 (= res!427337 (= (select (store (arr!18560 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658805 (= lt!308295 (array!38735 (store (arr!18560 a!2986) i!1108 k!1786) (size!18924 a!2986)))))

(declare-fun b!658806 () Bool)

(declare-fun e!378478 () Unit!22914)

(declare-fun Unit!22918 () Unit!22914)

(assert (=> b!658806 (= e!378478 Unit!22918)))

(declare-fun b!658807 () Bool)

(assert (=> b!658807 (= e!378481 e!378483)))

(declare-fun res!427334 () Bool)

(assert (=> b!658807 (=> (not res!427334) (not e!378483))))

(declare-datatypes ((SeekEntryResult!7007 0))(
  ( (MissingZero!7007 (index!30392 (_ BitVec 32))) (Found!7007 (index!30393 (_ BitVec 32))) (Intermediate!7007 (undefined!7819 Bool) (index!30394 (_ BitVec 32)) (x!59203 (_ BitVec 32))) (Undefined!7007) (MissingVacant!7007 (index!30395 (_ BitVec 32))) )
))
(declare-fun lt!308299 () SeekEntryResult!7007)

(assert (=> b!658807 (= res!427334 (or (= lt!308299 (MissingZero!7007 i!1108)) (= lt!308299 (MissingVacant!7007 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38734 (_ BitVec 32)) SeekEntryResult!7007)

(assert (=> b!658807 (= lt!308299 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658808 () Bool)

(declare-fun e!378477 () Bool)

(assert (=> b!658808 (= e!378477 (not true))))

(declare-fun lt!308296 () Unit!22914)

(assert (=> b!658808 (= lt!308296 e!378487)))

(declare-fun c!76103 () Bool)

(declare-fun lt!308297 () SeekEntryResult!7007)

(assert (=> b!658808 (= c!76103 (= lt!308297 (Found!7007 index!984)))))

(declare-fun lt!308291 () Unit!22914)

(assert (=> b!658808 (= lt!308291 e!378478)))

(declare-fun c!76100 () Bool)

(assert (=> b!658808 (= c!76100 (= lt!308297 Undefined!7007))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!308304 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38734 (_ BitVec 32)) SeekEntryResult!7007)

(assert (=> b!658808 (= lt!308297 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308304 lt!308295 mask!3053))))

(declare-fun e!378486 () Bool)

(assert (=> b!658808 e!378486))

(declare-fun res!427344 () Bool)

(assert (=> b!658808 (=> (not res!427344) (not e!378486))))

(declare-fun lt!308301 () SeekEntryResult!7007)

(declare-fun lt!308290 () (_ BitVec 32))

(assert (=> b!658808 (= res!427344 (= lt!308301 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308290 vacantSpotIndex!68 lt!308304 lt!308295 mask!3053)))))

(assert (=> b!658808 (= lt!308301 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308290 vacantSpotIndex!68 (select (arr!18560 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658808 (= lt!308304 (select (store (arr!18560 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!308303 () Unit!22914)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38734 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22914)

(assert (=> b!658808 (= lt!308303 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308290 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658808 (= lt!308290 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658809 () Bool)

(declare-fun res!427342 () Bool)

(assert (=> b!658809 (=> (not res!427342) (not e!378481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658809 (= res!427342 (validKeyInArray!0 (select (arr!18560 a!2986) j!136)))))

(declare-fun b!658810 () Bool)

(declare-fun res!427340 () Bool)

(assert (=> b!658810 (=> (not res!427340) (not e!378481))))

(assert (=> b!658810 (= res!427340 (validKeyInArray!0 k!1786))))

(declare-fun b!658811 () Bool)

(declare-fun res!427341 () Bool)

(assert (=> b!658811 (=> (not res!427341) (not e!378483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38734 (_ BitVec 32)) Bool)

(assert (=> b!658811 (= res!427341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658812 () Bool)

(declare-fun res!427343 () Bool)

(assert (=> b!658812 (=> (not res!427343) (not e!378483))))

(assert (=> b!658812 (= res!427343 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18560 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658813 () Bool)

(declare-fun Unit!22919 () Unit!22914)

(assert (=> b!658813 (= e!378487 Unit!22919)))

(declare-fun b!658814 () Bool)

(declare-fun e!378485 () Bool)

(assert (=> b!658814 (= e!378485 (arrayContainsKey!0 lt!308295 (select (arr!18560 a!2986) j!136) index!984))))

(declare-fun b!658815 () Bool)

(assert (=> b!658815 false))

(declare-fun lt!308298 () Unit!22914)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38734 (_ BitVec 64) (_ BitVec 32) List!12654) Unit!22914)

(assert (=> b!658815 (= lt!308298 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308295 (select (arr!18560 a!2986) j!136) index!984 Nil!12651))))

(assert (=> b!658815 (arrayNoDuplicates!0 lt!308295 index!984 Nil!12651)))

(declare-fun lt!308289 () Unit!22914)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38734 (_ BitVec 32) (_ BitVec 32)) Unit!22914)

(assert (=> b!658815 (= lt!308289 (lemmaNoDuplicateFromThenFromBigger!0 lt!308295 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658815 (arrayNoDuplicates!0 lt!308295 #b00000000000000000000000000000000 Nil!12651)))

(declare-fun lt!308294 () Unit!22914)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38734 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12654) Unit!22914)

(assert (=> b!658815 (= lt!308294 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12651))))

(assert (=> b!658815 (arrayContainsKey!0 lt!308295 (select (arr!18560 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308307 () Unit!22914)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38734 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22914)

(assert (=> b!658815 (= lt!308307 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308295 (select (arr!18560 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658815 e!378485))

(declare-fun res!427348 () Bool)

(assert (=> b!658815 (=> (not res!427348) (not e!378485))))

(assert (=> b!658815 (= res!427348 (arrayContainsKey!0 lt!308295 (select (arr!18560 a!2986) j!136) j!136))))

(declare-fun Unit!22920 () Unit!22914)

(assert (=> b!658815 (= e!378480 Unit!22920)))

(declare-fun b!658816 () Bool)

(declare-fun lt!308300 () SeekEntryResult!7007)

(assert (=> b!658816 (= e!378486 (= lt!308300 lt!308301))))

(declare-fun b!658817 () Bool)

(assert (=> b!658817 false))

(declare-fun lt!308306 () Unit!22914)

(assert (=> b!658817 (= lt!308306 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308295 (select (arr!18560 a!2986) j!136) j!136 Nil!12651))))

(assert (=> b!658817 (arrayNoDuplicates!0 lt!308295 j!136 Nil!12651)))

(declare-fun lt!308293 () Unit!22914)

(assert (=> b!658817 (= lt!308293 (lemmaNoDuplicateFromThenFromBigger!0 lt!308295 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658817 (arrayNoDuplicates!0 lt!308295 #b00000000000000000000000000000000 Nil!12651)))

(declare-fun lt!308292 () Unit!22914)

(assert (=> b!658817 (= lt!308292 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12651))))

(assert (=> b!658817 (arrayContainsKey!0 lt!308295 (select (arr!18560 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308305 () Unit!22914)

(assert (=> b!658817 (= lt!308305 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308295 (select (arr!18560 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22921 () Unit!22914)

(assert (=> b!658817 (= e!378482 Unit!22921)))

(declare-fun b!658818 () Bool)

(declare-fun Unit!22922 () Unit!22914)

(assert (=> b!658818 (= e!378480 Unit!22922)))

(declare-fun b!658819 () Bool)

(declare-fun res!427349 () Bool)

(assert (=> b!658819 (= res!427349 (bvsge j!136 index!984))))

(assert (=> b!658819 (=> res!427349 e!378475)))

(assert (=> b!658819 (= e!378474 e!378475)))

(declare-fun b!658820 () Bool)

(declare-fun res!427336 () Bool)

(assert (=> b!658820 (=> (not res!427336) (not e!378481))))

(assert (=> b!658820 (= res!427336 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658821 () Bool)

(assert (=> b!658821 (= e!378479 (arrayContainsKey!0 lt!308295 (select (arr!18560 a!2986) j!136) index!984))))

(declare-fun b!658822 () Bool)

(declare-fun Unit!22923 () Unit!22914)

(assert (=> b!658822 (= e!378478 Unit!22923)))

(assert (=> b!658822 false))

(declare-fun b!658823 () Bool)

(assert (=> b!658823 (= e!378484 e!378477)))

(declare-fun res!427339 () Bool)

(assert (=> b!658823 (=> (not res!427339) (not e!378477))))

(assert (=> b!658823 (= res!427339 (and (= lt!308300 (Found!7007 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18560 a!2986) index!984) (select (arr!18560 a!2986) j!136))) (not (= (select (arr!18560 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658823 (= lt!308300 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18560 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59620 res!427346) b!658801))

(assert (= (and b!658801 res!427338) b!658809))

(assert (= (and b!658809 res!427342) b!658810))

(assert (= (and b!658810 res!427340) b!658820))

(assert (= (and b!658820 res!427336) b!658807))

(assert (= (and b!658807 res!427334) b!658811))

(assert (= (and b!658811 res!427341) b!658804))

(assert (= (and b!658804 res!427347) b!658812))

(assert (= (and b!658812 res!427343) b!658805))

(assert (= (and b!658805 res!427337) b!658823))

(assert (= (and b!658823 res!427339) b!658808))

(assert (= (and b!658808 res!427344) b!658816))

(assert (= (and b!658808 c!76100) b!658822))

(assert (= (and b!658808 (not c!76100)) b!658806))

(assert (= (and b!658808 c!76103) b!658803))

(assert (= (and b!658808 (not c!76103)) b!658813))

(assert (= (and b!658803 res!427335) b!658819))

(assert (= (and b!658819 (not res!427349)) b!658802))

(assert (= (and b!658802 res!427345) b!658821))

(assert (= (and b!658803 c!76102) b!658817))

(assert (= (and b!658803 (not c!76102)) b!658800))

(assert (= (and b!658803 c!76101) b!658815))

(assert (= (and b!658803 (not c!76101)) b!658818))

(assert (= (and b!658815 res!427348) b!658814))

(declare-fun m!631841 () Bool)

(assert (=> b!658821 m!631841))

(assert (=> b!658821 m!631841))

(declare-fun m!631843 () Bool)

(assert (=> b!658821 m!631843))

(declare-fun m!631845 () Bool)

(assert (=> b!658808 m!631845))

(declare-fun m!631847 () Bool)

(assert (=> b!658808 m!631847))

(assert (=> b!658808 m!631841))

(declare-fun m!631849 () Bool)

(assert (=> b!658808 m!631849))

(assert (=> b!658808 m!631841))

(declare-fun m!631851 () Bool)

(assert (=> b!658808 m!631851))

(declare-fun m!631853 () Bool)

(assert (=> b!658808 m!631853))

(declare-fun m!631855 () Bool)

(assert (=> b!658808 m!631855))

(declare-fun m!631857 () Bool)

(assert (=> b!658808 m!631857))

(assert (=> b!658814 m!631841))

(assert (=> b!658814 m!631841))

(assert (=> b!658814 m!631843))

(declare-fun m!631859 () Bool)

(assert (=> b!658812 m!631859))

(declare-fun m!631861 () Bool)

(assert (=> b!658811 m!631861))

(assert (=> b!658802 m!631841))

(assert (=> b!658802 m!631841))

(declare-fun m!631863 () Bool)

(assert (=> b!658802 m!631863))

(declare-fun m!631865 () Bool)

(assert (=> b!658807 m!631865))

(declare-fun m!631867 () Bool)

(assert (=> b!658810 m!631867))

(assert (=> b!658805 m!631849))

(declare-fun m!631869 () Bool)

(assert (=> b!658805 m!631869))

(assert (=> b!658809 m!631841))

(assert (=> b!658809 m!631841))

(declare-fun m!631871 () Bool)

(assert (=> b!658809 m!631871))

(declare-fun m!631873 () Bool)

(assert (=> b!658820 m!631873))

(assert (=> b!658803 m!631849))

(declare-fun m!631875 () Bool)

(assert (=> b!658803 m!631875))

(assert (=> b!658803 m!631841))

(declare-fun m!631877 () Bool)

(assert (=> start!59620 m!631877))

(declare-fun m!631879 () Bool)

(assert (=> start!59620 m!631879))

(declare-fun m!631881 () Bool)

(assert (=> b!658823 m!631881))

(assert (=> b!658823 m!631841))

(assert (=> b!658823 m!631841))

(declare-fun m!631883 () Bool)

(assert (=> b!658823 m!631883))

(assert (=> b!658817 m!631841))

(declare-fun m!631885 () Bool)

(assert (=> b!658817 m!631885))

(declare-fun m!631887 () Bool)

(assert (=> b!658817 m!631887))

(assert (=> b!658817 m!631841))

(declare-fun m!631889 () Bool)

(assert (=> b!658817 m!631889))

(declare-fun m!631891 () Bool)

(assert (=> b!658817 m!631891))

(assert (=> b!658817 m!631841))

(declare-fun m!631893 () Bool)

(assert (=> b!658817 m!631893))

(assert (=> b!658817 m!631841))

(declare-fun m!631895 () Bool)

(assert (=> b!658817 m!631895))

(declare-fun m!631897 () Bool)

(assert (=> b!658817 m!631897))

(declare-fun m!631899 () Bool)

(assert (=> b!658804 m!631899))

(assert (=> b!658815 m!631841))

(assert (=> b!658815 m!631863))

(assert (=> b!658815 m!631841))

(assert (=> b!658815 m!631887))

(assert (=> b!658815 m!631841))

(declare-fun m!631901 () Bool)

(assert (=> b!658815 m!631901))

(declare-fun m!631903 () Bool)

(assert (=> b!658815 m!631903))

(assert (=> b!658815 m!631841))

(declare-fun m!631905 () Bool)

(assert (=> b!658815 m!631905))

(assert (=> b!658815 m!631841))

(declare-fun m!631907 () Bool)

(assert (=> b!658815 m!631907))

(declare-fun m!631909 () Bool)

(assert (=> b!658815 m!631909))

(assert (=> b!658815 m!631897))

(push 1)

(assert (not b!658809))

(assert (not b!658821))

(assert (not b!658810))

(assert (not b!658820))

(assert (not b!658802))

(assert (not b!658815))

(assert (not b!658814))

(assert (not b!658811))

(assert (not b!658808))

(assert (not b!658817))

(assert (not b!658804))

(assert (not b!658807))

(assert (not start!59620))

(assert (not b!658823))

(check-sat)

(pop 1)

