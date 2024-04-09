; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58872 () Bool)

(assert start!58872)

(declare-fun b!648429 () Bool)

(declare-fun e!371913 () Bool)

(declare-datatypes ((SeekEntryResult!6894 0))(
  ( (MissingZero!6894 (index!29922 (_ BitVec 32))) (Found!6894 (index!29923 (_ BitVec 32))) (Intermediate!6894 (undefined!7706 Bool) (index!29924 (_ BitVec 32)) (x!58740 (_ BitVec 32))) (Undefined!6894) (MissingVacant!6894 (index!29925 (_ BitVec 32))) )
))
(declare-fun lt!301026 () SeekEntryResult!6894)

(declare-fun lt!301013 () SeekEntryResult!6894)

(assert (=> b!648429 (= e!371913 (= lt!301026 lt!301013))))

(declare-fun b!648430 () Bool)

(declare-fun res!420218 () Bool)

(declare-fun e!371912 () Bool)

(assert (=> b!648430 (=> (not res!420218) (not e!371912))))

(declare-datatypes ((array!38490 0))(
  ( (array!38491 (arr!18447 (Array (_ BitVec 32) (_ BitVec 64))) (size!18811 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38490)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648430 (= res!420218 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648431 () Bool)

(declare-fun e!371925 () Bool)

(declare-fun e!371924 () Bool)

(assert (=> b!648431 (= e!371925 e!371924)))

(declare-fun res!420231 () Bool)

(assert (=> b!648431 (=> (not res!420231) (not e!371924))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301020 () array!38490)

(assert (=> b!648431 (= res!420231 (arrayContainsKey!0 lt!301020 (select (arr!18447 a!2986) j!136) j!136))))

(declare-fun b!648432 () Bool)

(declare-fun res!420224 () Bool)

(declare-fun e!371916 () Bool)

(assert (=> b!648432 (=> (not res!420224) (not e!371916))))

(declare-datatypes ((List!12541 0))(
  ( (Nil!12538) (Cons!12537 (h!13582 (_ BitVec 64)) (t!18777 List!12541)) )
))
(declare-fun arrayNoDuplicates!0 (array!38490 (_ BitVec 32) List!12541) Bool)

(assert (=> b!648432 (= res!420224 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12538))))

(declare-fun b!648433 () Bool)

(assert (=> b!648433 (= e!371912 e!371916)))

(declare-fun res!420238 () Bool)

(assert (=> b!648433 (=> (not res!420238) (not e!371916))))

(declare-fun lt!301019 () SeekEntryResult!6894)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!648433 (= res!420238 (or (= lt!301019 (MissingZero!6894 i!1108)) (= lt!301019 (MissingVacant!6894 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38490 (_ BitVec 32)) SeekEntryResult!6894)

(assert (=> b!648433 (= lt!301019 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648434 () Bool)

(declare-fun res!420234 () Bool)

(declare-fun e!371911 () Bool)

(assert (=> b!648434 (=> res!420234 e!371911)))

(declare-fun noDuplicate!424 (List!12541) Bool)

(assert (=> b!648434 (= res!420234 (not (noDuplicate!424 Nil!12538)))))

(declare-fun b!648435 () Bool)

(declare-datatypes ((Unit!22036 0))(
  ( (Unit!22037) )
))
(declare-fun e!371926 () Unit!22036)

(declare-fun Unit!22038 () Unit!22036)

(assert (=> b!648435 (= e!371926 Unit!22038)))

(declare-fun res!420235 () Bool)

(assert (=> start!58872 (=> (not res!420235) (not e!371912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58872 (= res!420235 (validMask!0 mask!3053))))

(assert (=> start!58872 e!371912))

(assert (=> start!58872 true))

(declare-fun array_inv!14221 (array!38490) Bool)

(assert (=> start!58872 (array_inv!14221 a!2986)))

(declare-fun b!648436 () Bool)

(declare-fun res!420220 () Bool)

(assert (=> b!648436 (=> (not res!420220) (not e!371916))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!648436 (= res!420220 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18447 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648437 () Bool)

(declare-fun res!420228 () Bool)

(assert (=> b!648437 (=> res!420228 e!371911)))

(declare-fun contains!3164 (List!12541 (_ BitVec 64)) Bool)

(assert (=> b!648437 (= res!420228 (contains!3164 Nil!12538 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371922 () Bool)

(declare-fun b!648438 () Bool)

(assert (=> b!648438 (= e!371922 (arrayContainsKey!0 lt!301020 (select (arr!18447 a!2986) j!136) index!984))))

(declare-fun b!648439 () Bool)

(declare-fun res!420219 () Bool)

(assert (=> b!648439 (=> res!420219 e!371911)))

(assert (=> b!648439 (= res!420219 (contains!3164 Nil!12538 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648440 () Bool)

(declare-fun e!371917 () Bool)

(declare-fun e!371923 () Bool)

(assert (=> b!648440 (= e!371917 e!371923)))

(declare-fun res!420229 () Bool)

(assert (=> b!648440 (=> (not res!420229) (not e!371923))))

(assert (=> b!648440 (= res!420229 (and (= lt!301026 (Found!6894 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18447 a!2986) index!984) (select (arr!18447 a!2986) j!136))) (not (= (select (arr!18447 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38490 (_ BitVec 32)) SeekEntryResult!6894)

(assert (=> b!648440 (= lt!301026 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18447 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648441 () Bool)

(declare-fun e!371914 () Bool)

(assert (=> b!648441 (= e!371914 e!371911)))

(declare-fun res!420227 () Bool)

(assert (=> b!648441 (=> res!420227 e!371911)))

(assert (=> b!648441 (= res!420227 (or (bvsge (size!18811 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18811 a!2986))))))

(assert (=> b!648441 (arrayContainsKey!0 lt!301020 (select (arr!18447 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301014 () Unit!22036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38490 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22036)

(assert (=> b!648441 (= lt!301014 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301020 (select (arr!18447 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648441 e!371922))

(declare-fun res!420230 () Bool)

(assert (=> b!648441 (=> (not res!420230) (not e!371922))))

(assert (=> b!648441 (= res!420230 (arrayContainsKey!0 lt!301020 (select (arr!18447 a!2986) j!136) j!136))))

(declare-fun b!648442 () Bool)

(declare-fun e!371920 () Unit!22036)

(declare-fun Unit!22039 () Unit!22036)

(assert (=> b!648442 (= e!371920 Unit!22039)))

(declare-fun b!648443 () Bool)

(assert (=> b!648443 (= e!371911 true)))

(declare-fun lt!301023 () Bool)

(assert (=> b!648443 (= lt!301023 (contains!3164 Nil!12538 k!1786))))

(declare-fun b!648444 () Bool)

(assert (=> b!648444 (= e!371924 (arrayContainsKey!0 lt!301020 (select (arr!18447 a!2986) j!136) index!984))))

(declare-fun b!648445 () Bool)

(declare-fun res!420237 () Bool)

(assert (=> b!648445 (=> (not res!420237) (not e!371912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648445 (= res!420237 (validKeyInArray!0 k!1786))))

(declare-fun b!648446 () Bool)

(declare-fun e!371919 () Bool)

(assert (=> b!648446 (= e!371919 e!371925)))

(declare-fun res!420239 () Bool)

(assert (=> b!648446 (=> res!420239 e!371925)))

(declare-fun lt!301011 () (_ BitVec 64))

(declare-fun lt!301012 () (_ BitVec 64))

(assert (=> b!648446 (= res!420239 (or (not (= (select (arr!18447 a!2986) j!136) lt!301011)) (not (= (select (arr!18447 a!2986) j!136) lt!301012)) (bvsge j!136 index!984)))))

(declare-fun b!648447 () Bool)

(declare-fun Unit!22040 () Unit!22036)

(assert (=> b!648447 (= e!371926 Unit!22040)))

(declare-fun lt!301017 () Unit!22036)

(assert (=> b!648447 (= lt!301017 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301020 (select (arr!18447 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!648447 (arrayContainsKey!0 lt!301020 (select (arr!18447 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301015 () Unit!22036)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38490 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12541) Unit!22036)

(assert (=> b!648447 (= lt!301015 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12538))))

(assert (=> b!648447 (arrayNoDuplicates!0 lt!301020 #b00000000000000000000000000000000 Nil!12538)))

(declare-fun lt!301010 () Unit!22036)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38490 (_ BitVec 32) (_ BitVec 32)) Unit!22036)

(assert (=> b!648447 (= lt!301010 (lemmaNoDuplicateFromThenFromBigger!0 lt!301020 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648447 (arrayNoDuplicates!0 lt!301020 j!136 Nil!12538)))

(declare-fun lt!301021 () Unit!22036)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38490 (_ BitVec 64) (_ BitVec 32) List!12541) Unit!22036)

(assert (=> b!648447 (= lt!301021 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301020 (select (arr!18447 a!2986) j!136) j!136 Nil!12538))))

(assert (=> b!648447 false))

(declare-fun b!648448 () Bool)

(declare-fun res!420217 () Bool)

(assert (=> b!648448 (=> (not res!420217) (not e!371912))))

(assert (=> b!648448 (= res!420217 (validKeyInArray!0 (select (arr!18447 a!2986) j!136)))))

(declare-fun b!648449 () Bool)

(declare-fun res!420223 () Bool)

(assert (=> b!648449 (=> (not res!420223) (not e!371916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38490 (_ BitVec 32)) Bool)

(assert (=> b!648449 (= res!420223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648450 () Bool)

(assert (=> b!648450 (= e!371916 e!371917)))

(declare-fun res!420226 () Bool)

(assert (=> b!648450 (=> (not res!420226) (not e!371917))))

(assert (=> b!648450 (= res!420226 (= (select (store (arr!18447 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648450 (= lt!301020 (array!38491 (store (arr!18447 a!2986) i!1108 k!1786) (size!18811 a!2986)))))

(declare-fun b!648451 () Bool)

(declare-fun e!371918 () Bool)

(assert (=> b!648451 (= e!371918 e!371914)))

(declare-fun res!420236 () Bool)

(assert (=> b!648451 (=> res!420236 e!371914)))

(assert (=> b!648451 (= res!420236 (bvsge index!984 j!136))))

(declare-fun lt!301016 () Unit!22036)

(assert (=> b!648451 (= lt!301016 e!371926)))

(declare-fun c!74473 () Bool)

(assert (=> b!648451 (= c!74473 (bvslt j!136 index!984))))

(declare-fun b!648452 () Bool)

(declare-fun e!371921 () Bool)

(assert (=> b!648452 (= e!371921 e!371918)))

(declare-fun res!420233 () Bool)

(assert (=> b!648452 (=> res!420233 e!371918)))

(assert (=> b!648452 (= res!420233 (or (not (= (select (arr!18447 a!2986) j!136) lt!301011)) (not (= (select (arr!18447 a!2986) j!136) lt!301012))))))

(assert (=> b!648452 e!371919))

(declare-fun res!420222 () Bool)

(assert (=> b!648452 (=> (not res!420222) (not e!371919))))

(assert (=> b!648452 (= res!420222 (= lt!301012 (select (arr!18447 a!2986) j!136)))))

(assert (=> b!648452 (= lt!301012 (select (store (arr!18447 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!648453 () Bool)

(assert (=> b!648453 (= e!371923 (not e!371921))))

(declare-fun res!420225 () Bool)

(assert (=> b!648453 (=> res!420225 e!371921)))

(declare-fun lt!301018 () SeekEntryResult!6894)

(assert (=> b!648453 (= res!420225 (not (= lt!301018 (Found!6894 index!984))))))

(declare-fun lt!301024 () Unit!22036)

(assert (=> b!648453 (= lt!301024 e!371920)))

(declare-fun c!74474 () Bool)

(assert (=> b!648453 (= c!74474 (= lt!301018 Undefined!6894))))

(assert (=> b!648453 (= lt!301018 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301011 lt!301020 mask!3053))))

(assert (=> b!648453 e!371913))

(declare-fun res!420232 () Bool)

(assert (=> b!648453 (=> (not res!420232) (not e!371913))))

(declare-fun lt!301022 () (_ BitVec 32))

(assert (=> b!648453 (= res!420232 (= lt!301013 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301022 vacantSpotIndex!68 lt!301011 lt!301020 mask!3053)))))

(assert (=> b!648453 (= lt!301013 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301022 vacantSpotIndex!68 (select (arr!18447 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648453 (= lt!301011 (select (store (arr!18447 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301025 () Unit!22036)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38490 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22036)

(assert (=> b!648453 (= lt!301025 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301022 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648453 (= lt!301022 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648454 () Bool)

(declare-fun Unit!22041 () Unit!22036)

(assert (=> b!648454 (= e!371920 Unit!22041)))

(assert (=> b!648454 false))

(declare-fun b!648455 () Bool)

(declare-fun res!420221 () Bool)

(assert (=> b!648455 (=> (not res!420221) (not e!371912))))

(assert (=> b!648455 (= res!420221 (and (= (size!18811 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18811 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18811 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!58872 res!420235) b!648455))

(assert (= (and b!648455 res!420221) b!648448))

(assert (= (and b!648448 res!420217) b!648445))

(assert (= (and b!648445 res!420237) b!648430))

(assert (= (and b!648430 res!420218) b!648433))

(assert (= (and b!648433 res!420238) b!648449))

(assert (= (and b!648449 res!420223) b!648432))

(assert (= (and b!648432 res!420224) b!648436))

(assert (= (and b!648436 res!420220) b!648450))

(assert (= (and b!648450 res!420226) b!648440))

(assert (= (and b!648440 res!420229) b!648453))

(assert (= (and b!648453 res!420232) b!648429))

(assert (= (and b!648453 c!74474) b!648454))

(assert (= (and b!648453 (not c!74474)) b!648442))

(assert (= (and b!648453 (not res!420225)) b!648452))

(assert (= (and b!648452 res!420222) b!648446))

(assert (= (and b!648446 (not res!420239)) b!648431))

(assert (= (and b!648431 res!420231) b!648444))

(assert (= (and b!648452 (not res!420233)) b!648451))

(assert (= (and b!648451 c!74473) b!648447))

(assert (= (and b!648451 (not c!74473)) b!648435))

(assert (= (and b!648451 (not res!420236)) b!648441))

(assert (= (and b!648441 res!420230) b!648438))

(assert (= (and b!648441 (not res!420227)) b!648434))

(assert (= (and b!648434 (not res!420234)) b!648439))

(assert (= (and b!648439 (not res!420219)) b!648437))

(assert (= (and b!648437 (not res!420228)) b!648443))

(declare-fun m!621843 () Bool)

(assert (=> b!648439 m!621843))

(declare-fun m!621845 () Bool)

(assert (=> b!648431 m!621845))

(assert (=> b!648431 m!621845))

(declare-fun m!621847 () Bool)

(assert (=> b!648431 m!621847))

(assert (=> b!648444 m!621845))

(assert (=> b!648444 m!621845))

(declare-fun m!621849 () Bool)

(assert (=> b!648444 m!621849))

(declare-fun m!621851 () Bool)

(assert (=> b!648449 m!621851))

(declare-fun m!621853 () Bool)

(assert (=> b!648437 m!621853))

(assert (=> b!648452 m!621845))

(declare-fun m!621855 () Bool)

(assert (=> b!648452 m!621855))

(declare-fun m!621857 () Bool)

(assert (=> b!648452 m!621857))

(assert (=> b!648446 m!621845))

(declare-fun m!621859 () Bool)

(assert (=> b!648432 m!621859))

(assert (=> b!648447 m!621845))

(declare-fun m!621861 () Bool)

(assert (=> b!648447 m!621861))

(assert (=> b!648447 m!621845))

(assert (=> b!648447 m!621845))

(declare-fun m!621863 () Bool)

(assert (=> b!648447 m!621863))

(declare-fun m!621865 () Bool)

(assert (=> b!648447 m!621865))

(assert (=> b!648447 m!621845))

(declare-fun m!621867 () Bool)

(assert (=> b!648447 m!621867))

(declare-fun m!621869 () Bool)

(assert (=> b!648447 m!621869))

(declare-fun m!621871 () Bool)

(assert (=> b!648447 m!621871))

(declare-fun m!621873 () Bool)

(assert (=> b!648447 m!621873))

(declare-fun m!621875 () Bool)

(assert (=> b!648434 m!621875))

(declare-fun m!621877 () Bool)

(assert (=> b!648443 m!621877))

(assert (=> b!648441 m!621845))

(assert (=> b!648441 m!621845))

(declare-fun m!621879 () Bool)

(assert (=> b!648441 m!621879))

(assert (=> b!648441 m!621845))

(declare-fun m!621881 () Bool)

(assert (=> b!648441 m!621881))

(assert (=> b!648441 m!621845))

(assert (=> b!648441 m!621847))

(declare-fun m!621883 () Bool)

(assert (=> b!648430 m!621883))

(declare-fun m!621885 () Bool)

(assert (=> b!648436 m!621885))

(assert (=> b!648450 m!621855))

(declare-fun m!621887 () Bool)

(assert (=> b!648450 m!621887))

(declare-fun m!621889 () Bool)

(assert (=> b!648433 m!621889))

(declare-fun m!621891 () Bool)

(assert (=> b!648440 m!621891))

(assert (=> b!648440 m!621845))

(assert (=> b!648440 m!621845))

(declare-fun m!621893 () Bool)

(assert (=> b!648440 m!621893))

(assert (=> b!648448 m!621845))

(assert (=> b!648448 m!621845))

(declare-fun m!621895 () Bool)

(assert (=> b!648448 m!621895))

(declare-fun m!621897 () Bool)

(assert (=> b!648445 m!621897))

(declare-fun m!621899 () Bool)

(assert (=> start!58872 m!621899))

(declare-fun m!621901 () Bool)

(assert (=> start!58872 m!621901))

(assert (=> b!648438 m!621845))

(assert (=> b!648438 m!621845))

(assert (=> b!648438 m!621849))

(declare-fun m!621903 () Bool)

(assert (=> b!648453 m!621903))

(declare-fun m!621905 () Bool)

(assert (=> b!648453 m!621905))

(declare-fun m!621907 () Bool)

(assert (=> b!648453 m!621907))

(assert (=> b!648453 m!621845))

(assert (=> b!648453 m!621845))

(declare-fun m!621909 () Bool)

(assert (=> b!648453 m!621909))

(declare-fun m!621911 () Bool)

(assert (=> b!648453 m!621911))

(declare-fun m!621913 () Bool)

(assert (=> b!648453 m!621913))

(assert (=> b!648453 m!621855))

(push 1)

