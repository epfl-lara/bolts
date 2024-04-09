; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55996 () Bool)

(assert start!55996)

(declare-fun b!614694 () Bool)

(declare-fun e!352447 () Bool)

(declare-fun e!352441 () Bool)

(assert (=> b!614694 (= e!352447 e!352441)))

(declare-fun res!396033 () Bool)

(assert (=> b!614694 (=> (not res!396033) (not e!352441))))

(declare-datatypes ((SeekEntryResult!6404 0))(
  ( (MissingZero!6404 (index!27899 (_ BitVec 32))) (Found!6404 (index!27900 (_ BitVec 32))) (Intermediate!6404 (undefined!7216 Bool) (index!27901 (_ BitVec 32)) (x!56725 (_ BitVec 32))) (Undefined!6404) (MissingVacant!6404 (index!27902 (_ BitVec 32))) )
))
(declare-fun lt!282215 () SeekEntryResult!6404)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!614694 (= res!396033 (or (= lt!282215 (MissingZero!6404 i!1108)) (= lt!282215 (MissingVacant!6404 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37429 0))(
  ( (array!37430 (arr!17957 (Array (_ BitVec 32) (_ BitVec 64))) (size!18321 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37429)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37429 (_ BitVec 32)) SeekEntryResult!6404)

(assert (=> b!614694 (= lt!282215 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!614695 () Bool)

(declare-datatypes ((Unit!19860 0))(
  ( (Unit!19861) )
))
(declare-fun e!352442 () Unit!19860)

(declare-fun Unit!19862 () Unit!19860)

(assert (=> b!614695 (= e!352442 Unit!19862)))

(assert (=> b!614695 false))

(declare-fun b!614696 () Bool)

(declare-fun res!396030 () Bool)

(assert (=> b!614696 (=> (not res!396030) (not e!352441))))

(declare-datatypes ((List!12051 0))(
  ( (Nil!12048) (Cons!12047 (h!13092 (_ BitVec 64)) (t!18287 List!12051)) )
))
(declare-fun arrayNoDuplicates!0 (array!37429 (_ BitVec 32) List!12051) Bool)

(assert (=> b!614696 (= res!396030 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12048))))

(declare-fun b!614697 () Bool)

(declare-fun e!352446 () Bool)

(declare-fun e!352444 () Bool)

(assert (=> b!614697 (= e!352446 e!352444)))

(declare-fun res!396032 () Bool)

(assert (=> b!614697 (=> (not res!396032) (not e!352444))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!282203 () SeekEntryResult!6404)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!614697 (= res!396032 (and (= lt!282203 (Found!6404 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17957 a!2986) index!984) (select (arr!17957 a!2986) j!136))) (not (= (select (arr!17957 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37429 (_ BitVec 32)) SeekEntryResult!6404)

(assert (=> b!614697 (= lt!282203 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17957 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614698 () Bool)

(declare-fun res!396027 () Bool)

(assert (=> b!614698 (=> (not res!396027) (not e!352447))))

(assert (=> b!614698 (= res!396027 (and (= (size!18321 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18321 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18321 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614699 () Bool)

(declare-fun e!352443 () Unit!19860)

(declare-fun Unit!19863 () Unit!19860)

(assert (=> b!614699 (= e!352443 Unit!19863)))

(declare-fun b!614700 () Bool)

(assert (=> b!614700 false))

(declare-fun lt!282216 () Unit!19860)

(declare-fun lt!282208 () array!37429)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37429 (_ BitVec 64) (_ BitVec 32) List!12051) Unit!19860)

(assert (=> b!614700 (= lt!282216 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282208 (select (arr!17957 a!2986) j!136) j!136 Nil!12048))))

(assert (=> b!614700 (arrayNoDuplicates!0 lt!282208 j!136 Nil!12048)))

(declare-fun lt!282211 () Unit!19860)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37429 (_ BitVec 32) (_ BitVec 32)) Unit!19860)

(assert (=> b!614700 (= lt!282211 (lemmaNoDuplicateFromThenFromBigger!0 lt!282208 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614700 (arrayNoDuplicates!0 lt!282208 #b00000000000000000000000000000000 Nil!12048)))

(declare-fun lt!282214 () Unit!19860)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37429 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12051) Unit!19860)

(assert (=> b!614700 (= lt!282214 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12048))))

(declare-fun arrayContainsKey!0 (array!37429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614700 (arrayContainsKey!0 lt!282208 (select (arr!17957 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282199 () Unit!19860)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37429 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19860)

(assert (=> b!614700 (= lt!282199 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282208 (select (arr!17957 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19864 () Unit!19860)

(assert (=> b!614700 (= e!352443 Unit!19864)))

(declare-fun res!396031 () Bool)

(declare-fun b!614701 () Bool)

(assert (=> b!614701 (= res!396031 (arrayContainsKey!0 lt!282208 (select (arr!17957 a!2986) j!136) j!136))))

(declare-fun e!352440 () Bool)

(assert (=> b!614701 (=> (not res!396031) (not e!352440))))

(declare-fun e!352439 () Bool)

(assert (=> b!614701 (= e!352439 e!352440)))

(declare-fun b!614702 () Bool)

(declare-fun res!396034 () Bool)

(assert (=> b!614702 (=> (not res!396034) (not e!352447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614702 (= res!396034 (validKeyInArray!0 (select (arr!17957 a!2986) j!136)))))

(declare-fun b!614703 () Bool)

(declare-fun e!352445 () Unit!19860)

(declare-fun Unit!19865 () Unit!19860)

(assert (=> b!614703 (= e!352445 Unit!19865)))

(declare-fun b!614704 () Bool)

(declare-fun res!396020 () Bool)

(assert (=> b!614704 (=> (not res!396020) (not e!352441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37429 (_ BitVec 32)) Bool)

(assert (=> b!614704 (= res!396020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614705 () Bool)

(declare-fun Unit!19866 () Unit!19860)

(assert (=> b!614705 (= e!352445 Unit!19866)))

(declare-fun res!396022 () Bool)

(assert (=> b!614705 (= res!396022 (= (select (store (arr!17957 a!2986) i!1108 k!1786) index!984) (select (arr!17957 a!2986) j!136)))))

(declare-fun e!352450 () Bool)

(assert (=> b!614705 (=> (not res!396022) (not e!352450))))

(assert (=> b!614705 e!352450))

(declare-fun c!69704 () Bool)

(assert (=> b!614705 (= c!69704 (bvslt j!136 index!984))))

(declare-fun lt!282210 () Unit!19860)

(assert (=> b!614705 (= lt!282210 e!352443)))

(declare-fun c!69706 () Bool)

(assert (=> b!614705 (= c!69706 (bvslt index!984 j!136))))

(declare-fun lt!282205 () Unit!19860)

(declare-fun e!352438 () Unit!19860)

(assert (=> b!614705 (= lt!282205 e!352438)))

(assert (=> b!614705 false))

(declare-fun b!614706 () Bool)

(declare-fun res!396026 () Bool)

(assert (=> b!614706 (= res!396026 (bvsge j!136 index!984))))

(assert (=> b!614706 (=> res!396026 e!352439)))

(assert (=> b!614706 (= e!352450 e!352439)))

(declare-fun b!614707 () Bool)

(declare-fun Unit!19867 () Unit!19860)

(assert (=> b!614707 (= e!352442 Unit!19867)))

(declare-fun b!614708 () Bool)

(assert (=> b!614708 (= e!352440 (arrayContainsKey!0 lt!282208 (select (arr!17957 a!2986) j!136) index!984))))

(declare-fun b!614709 () Bool)

(assert (=> b!614709 (= e!352441 e!352446)))

(declare-fun res!396035 () Bool)

(assert (=> b!614709 (=> (not res!396035) (not e!352446))))

(assert (=> b!614709 (= res!396035 (= (select (store (arr!17957 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!614709 (= lt!282208 (array!37430 (store (arr!17957 a!2986) i!1108 k!1786) (size!18321 a!2986)))))

(declare-fun b!614710 () Bool)

(declare-fun res!396029 () Bool)

(assert (=> b!614710 (=> (not res!396029) (not e!352447))))

(assert (=> b!614710 (= res!396029 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614711 () Bool)

(declare-fun res!396023 () Bool)

(assert (=> b!614711 (=> (not res!396023) (not e!352441))))

(assert (=> b!614711 (= res!396023 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17957 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614712 () Bool)

(assert (=> b!614712 (= e!352444 (not true))))

(declare-fun lt!282213 () Unit!19860)

(assert (=> b!614712 (= lt!282213 e!352445)))

(declare-fun c!69705 () Bool)

(declare-fun lt!282202 () SeekEntryResult!6404)

(assert (=> b!614712 (= c!69705 (= lt!282202 (Found!6404 index!984)))))

(declare-fun lt!282209 () Unit!19860)

(assert (=> b!614712 (= lt!282209 e!352442)))

(declare-fun c!69707 () Bool)

(assert (=> b!614712 (= c!69707 (= lt!282202 Undefined!6404))))

(declare-fun lt!282197 () (_ BitVec 64))

(assert (=> b!614712 (= lt!282202 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282197 lt!282208 mask!3053))))

(declare-fun e!352449 () Bool)

(assert (=> b!614712 e!352449))

(declare-fun res!396024 () Bool)

(assert (=> b!614712 (=> (not res!396024) (not e!352449))))

(declare-fun lt!282200 () (_ BitVec 32))

(declare-fun lt!282212 () SeekEntryResult!6404)

(assert (=> b!614712 (= res!396024 (= lt!282212 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282200 vacantSpotIndex!68 lt!282197 lt!282208 mask!3053)))))

(assert (=> b!614712 (= lt!282212 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282200 vacantSpotIndex!68 (select (arr!17957 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!614712 (= lt!282197 (select (store (arr!17957 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282201 () Unit!19860)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37429 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19860)

(assert (=> b!614712 (= lt!282201 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282200 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614712 (= lt!282200 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614713 () Bool)

(declare-fun Unit!19868 () Unit!19860)

(assert (=> b!614713 (= e!352438 Unit!19868)))

(declare-fun b!614714 () Bool)

(assert (=> b!614714 (= e!352449 (= lt!282203 lt!282212))))

(declare-fun e!352448 () Bool)

(declare-fun b!614715 () Bool)

(assert (=> b!614715 (= e!352448 (arrayContainsKey!0 lt!282208 (select (arr!17957 a!2986) j!136) index!984))))

(declare-fun b!614716 () Bool)

(assert (=> b!614716 false))

(declare-fun lt!282204 () Unit!19860)

(assert (=> b!614716 (= lt!282204 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282208 (select (arr!17957 a!2986) j!136) index!984 Nil!12048))))

(assert (=> b!614716 (arrayNoDuplicates!0 lt!282208 index!984 Nil!12048)))

(declare-fun lt!282206 () Unit!19860)

(assert (=> b!614716 (= lt!282206 (lemmaNoDuplicateFromThenFromBigger!0 lt!282208 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614716 (arrayNoDuplicates!0 lt!282208 #b00000000000000000000000000000000 Nil!12048)))

(declare-fun lt!282207 () Unit!19860)

(assert (=> b!614716 (= lt!282207 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12048))))

(assert (=> b!614716 (arrayContainsKey!0 lt!282208 (select (arr!17957 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282198 () Unit!19860)

(assert (=> b!614716 (= lt!282198 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282208 (select (arr!17957 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614716 e!352448))

(declare-fun res!396021 () Bool)

(assert (=> b!614716 (=> (not res!396021) (not e!352448))))

(assert (=> b!614716 (= res!396021 (arrayContainsKey!0 lt!282208 (select (arr!17957 a!2986) j!136) j!136))))

(declare-fun Unit!19869 () Unit!19860)

(assert (=> b!614716 (= e!352438 Unit!19869)))

(declare-fun b!614717 () Bool)

(declare-fun res!396028 () Bool)

(assert (=> b!614717 (=> (not res!396028) (not e!352447))))

(assert (=> b!614717 (= res!396028 (validKeyInArray!0 k!1786))))

(declare-fun res!396025 () Bool)

(assert (=> start!55996 (=> (not res!396025) (not e!352447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55996 (= res!396025 (validMask!0 mask!3053))))

(assert (=> start!55996 e!352447))

(assert (=> start!55996 true))

(declare-fun array_inv!13731 (array!37429) Bool)

(assert (=> start!55996 (array_inv!13731 a!2986)))

(assert (= (and start!55996 res!396025) b!614698))

(assert (= (and b!614698 res!396027) b!614702))

(assert (= (and b!614702 res!396034) b!614717))

(assert (= (and b!614717 res!396028) b!614710))

(assert (= (and b!614710 res!396029) b!614694))

(assert (= (and b!614694 res!396033) b!614704))

(assert (= (and b!614704 res!396020) b!614696))

(assert (= (and b!614696 res!396030) b!614711))

(assert (= (and b!614711 res!396023) b!614709))

(assert (= (and b!614709 res!396035) b!614697))

(assert (= (and b!614697 res!396032) b!614712))

(assert (= (and b!614712 res!396024) b!614714))

(assert (= (and b!614712 c!69707) b!614695))

(assert (= (and b!614712 (not c!69707)) b!614707))

(assert (= (and b!614712 c!69705) b!614705))

(assert (= (and b!614712 (not c!69705)) b!614703))

(assert (= (and b!614705 res!396022) b!614706))

(assert (= (and b!614706 (not res!396026)) b!614701))

(assert (= (and b!614701 res!396031) b!614708))

(assert (= (and b!614705 c!69704) b!614700))

(assert (= (and b!614705 (not c!69704)) b!614699))

(assert (= (and b!614705 c!69706) b!614716))

(assert (= (and b!614705 (not c!69706)) b!614713))

(assert (= (and b!614716 res!396021) b!614715))

(declare-fun m!590963 () Bool)

(assert (=> b!614697 m!590963))

(declare-fun m!590965 () Bool)

(assert (=> b!614697 m!590965))

(assert (=> b!614697 m!590965))

(declare-fun m!590967 () Bool)

(assert (=> b!614697 m!590967))

(assert (=> b!614708 m!590965))

(assert (=> b!614708 m!590965))

(declare-fun m!590969 () Bool)

(assert (=> b!614708 m!590969))

(assert (=> b!614715 m!590965))

(assert (=> b!614715 m!590965))

(assert (=> b!614715 m!590969))

(declare-fun m!590971 () Bool)

(assert (=> b!614716 m!590971))

(declare-fun m!590973 () Bool)

(assert (=> b!614716 m!590973))

(declare-fun m!590975 () Bool)

(assert (=> b!614716 m!590975))

(assert (=> b!614716 m!590965))

(declare-fun m!590977 () Bool)

(assert (=> b!614716 m!590977))

(assert (=> b!614716 m!590965))

(declare-fun m!590979 () Bool)

(assert (=> b!614716 m!590979))

(assert (=> b!614716 m!590965))

(assert (=> b!614716 m!590965))

(declare-fun m!590981 () Bool)

(assert (=> b!614716 m!590981))

(assert (=> b!614716 m!590965))

(declare-fun m!590983 () Bool)

(assert (=> b!614716 m!590983))

(declare-fun m!590985 () Bool)

(assert (=> b!614716 m!590985))

(declare-fun m!590987 () Bool)

(assert (=> b!614710 m!590987))

(declare-fun m!590989 () Bool)

(assert (=> b!614712 m!590989))

(declare-fun m!590991 () Bool)

(assert (=> b!614712 m!590991))

(declare-fun m!590993 () Bool)

(assert (=> b!614712 m!590993))

(declare-fun m!590995 () Bool)

(assert (=> b!614712 m!590995))

(assert (=> b!614712 m!590965))

(declare-fun m!590997 () Bool)

(assert (=> b!614712 m!590997))

(declare-fun m!590999 () Bool)

(assert (=> b!614712 m!590999))

(assert (=> b!614712 m!590965))

(declare-fun m!591001 () Bool)

(assert (=> b!614712 m!591001))

(assert (=> b!614709 m!590995))

(declare-fun m!591003 () Bool)

(assert (=> b!614709 m!591003))

(declare-fun m!591005 () Bool)

(assert (=> b!614696 m!591005))

(assert (=> b!614705 m!590995))

(declare-fun m!591007 () Bool)

(assert (=> b!614705 m!591007))

(assert (=> b!614705 m!590965))

(assert (=> b!614701 m!590965))

(assert (=> b!614701 m!590965))

(assert (=> b!614701 m!590979))

(declare-fun m!591009 () Bool)

(assert (=> b!614704 m!591009))

(assert (=> b!614702 m!590965))

(assert (=> b!614702 m!590965))

(declare-fun m!591011 () Bool)

(assert (=> b!614702 m!591011))

(declare-fun m!591013 () Bool)

(assert (=> b!614717 m!591013))

(declare-fun m!591015 () Bool)

(assert (=> b!614711 m!591015))

(declare-fun m!591017 () Bool)

(assert (=> b!614694 m!591017))

(declare-fun m!591019 () Bool)

(assert (=> start!55996 m!591019))

(declare-fun m!591021 () Bool)

(assert (=> start!55996 m!591021))

(assert (=> b!614700 m!590965))

(assert (=> b!614700 m!590973))

(assert (=> b!614700 m!590965))

(declare-fun m!591023 () Bool)

(assert (=> b!614700 m!591023))

(assert (=> b!614700 m!590965))

(declare-fun m!591025 () Bool)

(assert (=> b!614700 m!591025))

(declare-fun m!591027 () Bool)

(assert (=> b!614700 m!591027))

(declare-fun m!591029 () Bool)

(assert (=> b!614700 m!591029))

(assert (=> b!614700 m!590965))

(declare-fun m!591031 () Bool)

(assert (=> b!614700 m!591031))

(assert (=> b!614700 m!590985))

(push 1)

