; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58870 () Bool)

(assert start!58870)

(declare-fun b!648348 () Bool)

(declare-fun res!420167 () Bool)

(declare-fun e!371872 () Bool)

(assert (=> b!648348 (=> (not res!420167) (not e!371872))))

(declare-datatypes ((array!38488 0))(
  ( (array!38489 (arr!18446 (Array (_ BitVec 32) (_ BitVec 64))) (size!18810 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38488)

(declare-datatypes ((List!12540 0))(
  ( (Nil!12537) (Cons!12536 (h!13581 (_ BitVec 64)) (t!18776 List!12540)) )
))
(declare-fun arrayNoDuplicates!0 (array!38488 (_ BitVec 32) List!12540) Bool)

(assert (=> b!648348 (= res!420167 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12537))))

(declare-fun b!648349 () Bool)

(declare-datatypes ((Unit!22030 0))(
  ( (Unit!22031) )
))
(declare-fun e!371877 () Unit!22030)

(declare-fun Unit!22032 () Unit!22030)

(assert (=> b!648349 (= e!371877 Unit!22032)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!300963 () Unit!22030)

(declare-fun lt!300961 () array!38488)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38488 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22030)

(assert (=> b!648349 (= lt!300963 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300961 (select (arr!18446 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648349 (arrayContainsKey!0 lt!300961 (select (arr!18446 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!300968 () Unit!22030)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38488 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12540) Unit!22030)

(assert (=> b!648349 (= lt!300968 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12537))))

(assert (=> b!648349 (arrayNoDuplicates!0 lt!300961 #b00000000000000000000000000000000 Nil!12537)))

(declare-fun lt!300970 () Unit!22030)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38488 (_ BitVec 32) (_ BitVec 32)) Unit!22030)

(assert (=> b!648349 (= lt!300970 (lemmaNoDuplicateFromThenFromBigger!0 lt!300961 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648349 (arrayNoDuplicates!0 lt!300961 j!136 Nil!12537)))

(declare-fun lt!300972 () Unit!22030)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38488 (_ BitVec 64) (_ BitVec 32) List!12540) Unit!22030)

(assert (=> b!648349 (= lt!300972 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300961 (select (arr!18446 a!2986) j!136) j!136 Nil!12537))))

(assert (=> b!648349 false))

(declare-fun b!648350 () Bool)

(declare-fun res!420160 () Bool)

(assert (=> b!648350 (=> (not res!420160) (not e!371872))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38488 (_ BitVec 32)) Bool)

(assert (=> b!648350 (= res!420160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648351 () Bool)

(declare-fun e!371866 () Bool)

(declare-fun e!371868 () Bool)

(assert (=> b!648351 (= e!371866 e!371868)))

(declare-fun res!420166 () Bool)

(assert (=> b!648351 (=> res!420166 e!371868)))

(declare-fun lt!300971 () (_ BitVec 64))

(declare-fun lt!300967 () (_ BitVec 64))

(assert (=> b!648351 (= res!420166 (or (not (= (select (arr!18446 a!2986) j!136) lt!300971)) (not (= (select (arr!18446 a!2986) j!136) lt!300967)) (bvsge j!136 index!984)))))

(declare-fun b!648352 () Bool)

(declare-fun e!371870 () Bool)

(declare-fun e!371871 () Bool)

(assert (=> b!648352 (= e!371870 (not e!371871))))

(declare-fun res!420157 () Bool)

(assert (=> b!648352 (=> res!420157 e!371871)))

(declare-datatypes ((SeekEntryResult!6893 0))(
  ( (MissingZero!6893 (index!29918 (_ BitVec 32))) (Found!6893 (index!29919 (_ BitVec 32))) (Intermediate!6893 (undefined!7705 Bool) (index!29920 (_ BitVec 32)) (x!58731 (_ BitVec 32))) (Undefined!6893) (MissingVacant!6893 (index!29921 (_ BitVec 32))) )
))
(declare-fun lt!300973 () SeekEntryResult!6893)

(assert (=> b!648352 (= res!420157 (not (= lt!300973 (Found!6893 index!984))))))

(declare-fun lt!300964 () Unit!22030)

(declare-fun e!371874 () Unit!22030)

(assert (=> b!648352 (= lt!300964 e!371874)))

(declare-fun c!74468 () Bool)

(assert (=> b!648352 (= c!74468 (= lt!300973 Undefined!6893))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38488 (_ BitVec 32)) SeekEntryResult!6893)

(assert (=> b!648352 (= lt!300973 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300971 lt!300961 mask!3053))))

(declare-fun e!371878 () Bool)

(assert (=> b!648352 e!371878))

(declare-fun res!420161 () Bool)

(assert (=> b!648352 (=> (not res!420161) (not e!371878))))

(declare-fun lt!300969 () (_ BitVec 32))

(declare-fun lt!300962 () SeekEntryResult!6893)

(assert (=> b!648352 (= res!420161 (= lt!300962 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300969 vacantSpotIndex!68 lt!300971 lt!300961 mask!3053)))))

(assert (=> b!648352 (= lt!300962 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300969 vacantSpotIndex!68 (select (arr!18446 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648352 (= lt!300971 (select (store (arr!18446 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300966 () Unit!22030)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38488 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22030)

(assert (=> b!648352 (= lt!300966 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300969 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648352 (= lt!300969 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648353 () Bool)

(declare-fun res!420154 () Bool)

(declare-fun e!371875 () Bool)

(assert (=> b!648353 (=> res!420154 e!371875)))

(declare-fun contains!3163 (List!12540 (_ BitVec 64)) Bool)

(assert (=> b!648353 (= res!420154 (contains!3163 Nil!12537 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648354 () Bool)

(declare-fun e!371863 () Bool)

(assert (=> b!648354 (= e!371872 e!371863)))

(declare-fun res!420169 () Bool)

(assert (=> b!648354 (=> (not res!420169) (not e!371863))))

(assert (=> b!648354 (= res!420169 (= (select (store (arr!18446 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648354 (= lt!300961 (array!38489 (store (arr!18446 a!2986) i!1108 k!1786) (size!18810 a!2986)))))

(declare-fun b!648355 () Bool)

(declare-fun res!420156 () Bool)

(declare-fun e!371867 () Bool)

(assert (=> b!648355 (=> (not res!420156) (not e!371867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648355 (= res!420156 (validKeyInArray!0 (select (arr!18446 a!2986) j!136)))))

(declare-fun b!648356 () Bool)

(declare-fun e!371873 () Bool)

(assert (=> b!648356 (= e!371868 e!371873)))

(declare-fun res!420149 () Bool)

(assert (=> b!648356 (=> (not res!420149) (not e!371873))))

(assert (=> b!648356 (= res!420149 (arrayContainsKey!0 lt!300961 (select (arr!18446 a!2986) j!136) j!136))))

(declare-fun b!648357 () Bool)

(declare-fun res!420153 () Bool)

(assert (=> b!648357 (=> (not res!420153) (not e!371867))))

(assert (=> b!648357 (= res!420153 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun e!371865 () Bool)

(declare-fun b!648358 () Bool)

(assert (=> b!648358 (= e!371865 (arrayContainsKey!0 lt!300961 (select (arr!18446 a!2986) j!136) index!984))))

(declare-fun b!648359 () Bool)

(declare-fun res!420164 () Bool)

(assert (=> b!648359 (=> (not res!420164) (not e!371872))))

(assert (=> b!648359 (= res!420164 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18446 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648360 () Bool)

(declare-fun res!420162 () Bool)

(assert (=> b!648360 (=> (not res!420162) (not e!371867))))

(assert (=> b!648360 (= res!420162 (and (= (size!18810 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18810 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18810 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648361 () Bool)

(declare-fun e!371876 () Bool)

(assert (=> b!648361 (= e!371871 e!371876)))

(declare-fun res!420150 () Bool)

(assert (=> b!648361 (=> res!420150 e!371876)))

(assert (=> b!648361 (= res!420150 (or (not (= (select (arr!18446 a!2986) j!136) lt!300971)) (not (= (select (arr!18446 a!2986) j!136) lt!300967))))))

(assert (=> b!648361 e!371866))

(declare-fun res!420158 () Bool)

(assert (=> b!648361 (=> (not res!420158) (not e!371866))))

(assert (=> b!648361 (= res!420158 (= lt!300967 (select (arr!18446 a!2986) j!136)))))

(assert (=> b!648361 (= lt!300967 (select (store (arr!18446 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!648362 () Bool)

(declare-fun e!371869 () Bool)

(assert (=> b!648362 (= e!371869 e!371875)))

(declare-fun res!420168 () Bool)

(assert (=> b!648362 (=> res!420168 e!371875)))

(assert (=> b!648362 (= res!420168 (or (bvsge (size!18810 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18810 a!2986))))))

(assert (=> b!648362 (arrayContainsKey!0 lt!300961 (select (arr!18446 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300959 () Unit!22030)

(assert (=> b!648362 (= lt!300959 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300961 (select (arr!18446 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648362 e!371865))

(declare-fun res!420163 () Bool)

(assert (=> b!648362 (=> (not res!420163) (not e!371865))))

(assert (=> b!648362 (= res!420163 (arrayContainsKey!0 lt!300961 (select (arr!18446 a!2986) j!136) j!136))))

(declare-fun b!648363 () Bool)

(declare-fun Unit!22033 () Unit!22030)

(assert (=> b!648363 (= e!371874 Unit!22033)))

(declare-fun b!648364 () Bool)

(declare-fun res!420151 () Bool)

(assert (=> b!648364 (=> (not res!420151) (not e!371867))))

(assert (=> b!648364 (= res!420151 (validKeyInArray!0 k!1786))))

(declare-fun res!420159 () Bool)

(assert (=> start!58870 (=> (not res!420159) (not e!371867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58870 (= res!420159 (validMask!0 mask!3053))))

(assert (=> start!58870 e!371867))

(assert (=> start!58870 true))

(declare-fun array_inv!14220 (array!38488) Bool)

(assert (=> start!58870 (array_inv!14220 a!2986)))

(declare-fun b!648365 () Bool)

(declare-fun lt!300960 () SeekEntryResult!6893)

(assert (=> b!648365 (= e!371878 (= lt!300960 lt!300962))))

(declare-fun b!648366 () Bool)

(assert (=> b!648366 (= e!371873 (arrayContainsKey!0 lt!300961 (select (arr!18446 a!2986) j!136) index!984))))

(declare-fun b!648367 () Bool)

(declare-fun Unit!22034 () Unit!22030)

(assert (=> b!648367 (= e!371874 Unit!22034)))

(assert (=> b!648367 false))

(declare-fun b!648368 () Bool)

(assert (=> b!648368 (= e!371875 true)))

(declare-fun lt!300975 () Bool)

(assert (=> b!648368 (= lt!300975 (contains!3163 Nil!12537 k!1786))))

(declare-fun b!648369 () Bool)

(assert (=> b!648369 (= e!371876 e!371869)))

(declare-fun res!420170 () Bool)

(assert (=> b!648369 (=> res!420170 e!371869)))

(assert (=> b!648369 (= res!420170 (bvsge index!984 j!136))))

(declare-fun lt!300974 () Unit!22030)

(assert (=> b!648369 (= lt!300974 e!371877)))

(declare-fun c!74467 () Bool)

(assert (=> b!648369 (= c!74467 (bvslt j!136 index!984))))

(declare-fun b!648370 () Bool)

(declare-fun Unit!22035 () Unit!22030)

(assert (=> b!648370 (= e!371877 Unit!22035)))

(declare-fun b!648371 () Bool)

(assert (=> b!648371 (= e!371867 e!371872)))

(declare-fun res!420152 () Bool)

(assert (=> b!648371 (=> (not res!420152) (not e!371872))))

(declare-fun lt!300965 () SeekEntryResult!6893)

(assert (=> b!648371 (= res!420152 (or (= lt!300965 (MissingZero!6893 i!1108)) (= lt!300965 (MissingVacant!6893 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38488 (_ BitVec 32)) SeekEntryResult!6893)

(assert (=> b!648371 (= lt!300965 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648372 () Bool)

(declare-fun res!420148 () Bool)

(assert (=> b!648372 (=> res!420148 e!371875)))

(declare-fun noDuplicate!423 (List!12540) Bool)

(assert (=> b!648372 (= res!420148 (not (noDuplicate!423 Nil!12537)))))

(declare-fun b!648373 () Bool)

(declare-fun res!420155 () Bool)

(assert (=> b!648373 (=> res!420155 e!371875)))

(assert (=> b!648373 (= res!420155 (contains!3163 Nil!12537 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648374 () Bool)

(assert (=> b!648374 (= e!371863 e!371870)))

(declare-fun res!420165 () Bool)

(assert (=> b!648374 (=> (not res!420165) (not e!371870))))

(assert (=> b!648374 (= res!420165 (and (= lt!300960 (Found!6893 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18446 a!2986) index!984) (select (arr!18446 a!2986) j!136))) (not (= (select (arr!18446 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!648374 (= lt!300960 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18446 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!58870 res!420159) b!648360))

(assert (= (and b!648360 res!420162) b!648355))

(assert (= (and b!648355 res!420156) b!648364))

(assert (= (and b!648364 res!420151) b!648357))

(assert (= (and b!648357 res!420153) b!648371))

(assert (= (and b!648371 res!420152) b!648350))

(assert (= (and b!648350 res!420160) b!648348))

(assert (= (and b!648348 res!420167) b!648359))

(assert (= (and b!648359 res!420164) b!648354))

(assert (= (and b!648354 res!420169) b!648374))

(assert (= (and b!648374 res!420165) b!648352))

(assert (= (and b!648352 res!420161) b!648365))

(assert (= (and b!648352 c!74468) b!648367))

(assert (= (and b!648352 (not c!74468)) b!648363))

(assert (= (and b!648352 (not res!420157)) b!648361))

(assert (= (and b!648361 res!420158) b!648351))

(assert (= (and b!648351 (not res!420166)) b!648356))

(assert (= (and b!648356 res!420149) b!648366))

(assert (= (and b!648361 (not res!420150)) b!648369))

(assert (= (and b!648369 c!74467) b!648349))

(assert (= (and b!648369 (not c!74467)) b!648370))

(assert (= (and b!648369 (not res!420170)) b!648362))

(assert (= (and b!648362 res!420163) b!648358))

(assert (= (and b!648362 (not res!420168)) b!648372))

(assert (= (and b!648372 (not res!420148)) b!648353))

(assert (= (and b!648353 (not res!420154)) b!648373))

(assert (= (and b!648373 (not res!420155)) b!648368))

(declare-fun m!621771 () Bool)

(assert (=> b!648354 m!621771))

(declare-fun m!621773 () Bool)

(assert (=> b!648354 m!621773))

(declare-fun m!621775 () Bool)

(assert (=> b!648374 m!621775))

(declare-fun m!621777 () Bool)

(assert (=> b!648374 m!621777))

(assert (=> b!648374 m!621777))

(declare-fun m!621779 () Bool)

(assert (=> b!648374 m!621779))

(assert (=> b!648356 m!621777))

(assert (=> b!648356 m!621777))

(declare-fun m!621781 () Bool)

(assert (=> b!648356 m!621781))

(assert (=> b!648349 m!621777))

(declare-fun m!621783 () Bool)

(assert (=> b!648349 m!621783))

(declare-fun m!621785 () Bool)

(assert (=> b!648349 m!621785))

(declare-fun m!621787 () Bool)

(assert (=> b!648349 m!621787))

(declare-fun m!621789 () Bool)

(assert (=> b!648349 m!621789))

(assert (=> b!648349 m!621777))

(declare-fun m!621791 () Bool)

(assert (=> b!648349 m!621791))

(assert (=> b!648349 m!621777))

(declare-fun m!621793 () Bool)

(assert (=> b!648349 m!621793))

(assert (=> b!648349 m!621777))

(declare-fun m!621795 () Bool)

(assert (=> b!648349 m!621795))

(assert (=> b!648355 m!621777))

(assert (=> b!648355 m!621777))

(declare-fun m!621797 () Bool)

(assert (=> b!648355 m!621797))

(declare-fun m!621799 () Bool)

(assert (=> start!58870 m!621799))

(declare-fun m!621801 () Bool)

(assert (=> start!58870 m!621801))

(assert (=> b!648351 m!621777))

(assert (=> b!648362 m!621777))

(assert (=> b!648362 m!621777))

(declare-fun m!621803 () Bool)

(assert (=> b!648362 m!621803))

(assert (=> b!648362 m!621777))

(declare-fun m!621805 () Bool)

(assert (=> b!648362 m!621805))

(assert (=> b!648362 m!621777))

(assert (=> b!648362 m!621781))

(assert (=> b!648358 m!621777))

(assert (=> b!648358 m!621777))

(declare-fun m!621807 () Bool)

(assert (=> b!648358 m!621807))

(assert (=> b!648361 m!621777))

(assert (=> b!648361 m!621771))

(declare-fun m!621809 () Bool)

(assert (=> b!648361 m!621809))

(declare-fun m!621811 () Bool)

(assert (=> b!648357 m!621811))

(declare-fun m!621813 () Bool)

(assert (=> b!648352 m!621813))

(assert (=> b!648352 m!621777))

(assert (=> b!648352 m!621771))

(assert (=> b!648352 m!621777))

(declare-fun m!621815 () Bool)

(assert (=> b!648352 m!621815))

(declare-fun m!621817 () Bool)

(assert (=> b!648352 m!621817))

(declare-fun m!621819 () Bool)

(assert (=> b!648352 m!621819))

(declare-fun m!621821 () Bool)

(assert (=> b!648352 m!621821))

(declare-fun m!621823 () Bool)

(assert (=> b!648352 m!621823))

(declare-fun m!621825 () Bool)

(assert (=> b!648371 m!621825))

(declare-fun m!621827 () Bool)

(assert (=> b!648373 m!621827))

(declare-fun m!621829 () Bool)

(assert (=> b!648364 m!621829))

(declare-fun m!621831 () Bool)

(assert (=> b!648359 m!621831))

(declare-fun m!621833 () Bool)

(assert (=> b!648353 m!621833))

(declare-fun m!621835 () Bool)

(assert (=> b!648350 m!621835))

(declare-fun m!621837 () Bool)

(assert (=> b!648368 m!621837))

(declare-fun m!621839 () Bool)

(assert (=> b!648372 m!621839))

(assert (=> b!648366 m!621777))

(assert (=> b!648366 m!621777))

(assert (=> b!648366 m!621807))

(declare-fun m!621841 () Bool)

(assert (=> b!648348 m!621841))

(push 1)

