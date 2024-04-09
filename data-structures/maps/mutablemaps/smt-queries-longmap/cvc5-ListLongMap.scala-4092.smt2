; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56058 () Bool)

(assert start!56058)

(declare-fun b!616964 () Bool)

(declare-fun res!397559 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616964 (= res!397559 (bvsge j!136 index!984))))

(declare-fun e!353786 () Bool)

(assert (=> b!616964 (=> res!397559 e!353786)))

(declare-fun e!353777 () Bool)

(assert (=> b!616964 (= e!353777 e!353786)))

(declare-fun b!616965 () Bool)

(declare-datatypes ((Unit!20170 0))(
  ( (Unit!20171) )
))
(declare-fun e!353787 () Unit!20170)

(declare-fun Unit!20172 () Unit!20170)

(assert (=> b!616965 (= e!353787 Unit!20172)))

(declare-fun e!353782 () Bool)

(declare-fun b!616966 () Bool)

(declare-datatypes ((array!37491 0))(
  ( (array!37492 (arr!17988 (Array (_ BitVec 32) (_ BitVec 64))) (size!18352 (_ BitVec 32))) )
))
(declare-fun lt!284072 () array!37491)

(declare-fun a!2986 () array!37491)

(declare-fun arrayContainsKey!0 (array!37491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616966 (= e!353782 (arrayContainsKey!0 lt!284072 (select (arr!17988 a!2986) j!136) index!984))))

(declare-fun b!616967 () Bool)

(declare-fun e!353779 () Unit!20170)

(declare-fun Unit!20173 () Unit!20170)

(assert (=> b!616967 (= e!353779 Unit!20173)))

(assert (=> b!616967 false))

(declare-fun b!616968 () Bool)

(assert (=> b!616968 false))

(declare-fun lt!284073 () Unit!20170)

(declare-datatypes ((List!12082 0))(
  ( (Nil!12079) (Cons!12078 (h!13123 (_ BitVec 64)) (t!18318 List!12082)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37491 (_ BitVec 64) (_ BitVec 32) List!12082) Unit!20170)

(assert (=> b!616968 (= lt!284073 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284072 (select (arr!17988 a!2986) j!136) j!136 Nil!12079))))

(declare-fun arrayNoDuplicates!0 (array!37491 (_ BitVec 32) List!12082) Bool)

(assert (=> b!616968 (arrayNoDuplicates!0 lt!284072 j!136 Nil!12079)))

(declare-fun lt!284075 () Unit!20170)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37491 (_ BitVec 32) (_ BitVec 32)) Unit!20170)

(assert (=> b!616968 (= lt!284075 (lemmaNoDuplicateFromThenFromBigger!0 lt!284072 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616968 (arrayNoDuplicates!0 lt!284072 #b00000000000000000000000000000000 Nil!12079)))

(declare-fun lt!284064 () Unit!20170)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37491 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12082) Unit!20170)

(assert (=> b!616968 (= lt!284064 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12079))))

(assert (=> b!616968 (arrayContainsKey!0 lt!284072 (select (arr!17988 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284070 () Unit!20170)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37491 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20170)

(assert (=> b!616968 (= lt!284070 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284072 (select (arr!17988 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20174 () Unit!20170)

(assert (=> b!616968 (= e!353787 Unit!20174)))

(declare-fun b!616969 () Bool)

(declare-fun res!397557 () Bool)

(declare-fun e!353789 () Bool)

(assert (=> b!616969 (=> (not res!397557) (not e!353789))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616969 (= res!397557 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17988 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616970 () Bool)

(declare-fun e!353791 () Bool)

(declare-datatypes ((SeekEntryResult!6435 0))(
  ( (MissingZero!6435 (index!28023 (_ BitVec 32))) (Found!6435 (index!28024 (_ BitVec 32))) (Intermediate!6435 (undefined!7247 Bool) (index!28025 (_ BitVec 32)) (x!56844 (_ BitVec 32))) (Undefined!6435) (MissingVacant!6435 (index!28026 (_ BitVec 32))) )
))
(declare-fun lt!284062 () SeekEntryResult!6435)

(declare-fun lt!284060 () SeekEntryResult!6435)

(assert (=> b!616970 (= e!353791 (= lt!284062 lt!284060))))

(declare-fun b!616971 () Bool)

(declare-fun res!397550 () Bool)

(declare-fun e!353778 () Bool)

(assert (=> b!616971 (=> (not res!397550) (not e!353778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616971 (= res!397550 (validKeyInArray!0 (select (arr!17988 a!2986) j!136)))))

(declare-fun b!616972 () Bool)

(declare-fun e!353788 () Unit!20170)

(declare-fun Unit!20175 () Unit!20170)

(assert (=> b!616972 (= e!353788 Unit!20175)))

(declare-fun res!397548 () Bool)

(assert (=> b!616972 (= res!397548 (= (select (store (arr!17988 a!2986) i!1108 k!1786) index!984) (select (arr!17988 a!2986) j!136)))))

(assert (=> b!616972 (=> (not res!397548) (not e!353777))))

(assert (=> b!616972 e!353777))

(declare-fun c!70078 () Bool)

(assert (=> b!616972 (= c!70078 (bvslt j!136 index!984))))

(declare-fun lt!284068 () Unit!20170)

(assert (=> b!616972 (= lt!284068 e!353787)))

(declare-fun c!70079 () Bool)

(assert (=> b!616972 (= c!70079 (bvslt index!984 j!136))))

(declare-fun lt!284063 () Unit!20170)

(declare-fun e!353783 () Unit!20170)

(assert (=> b!616972 (= lt!284063 e!353783)))

(assert (=> b!616972 false))

(declare-fun res!397552 () Bool)

(assert (=> start!56058 (=> (not res!397552) (not e!353778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56058 (= res!397552 (validMask!0 mask!3053))))

(assert (=> start!56058 e!353778))

(assert (=> start!56058 true))

(declare-fun array_inv!13762 (array!37491) Bool)

(assert (=> start!56058 (array_inv!13762 a!2986)))

(declare-fun b!616973 () Bool)

(declare-fun Unit!20176 () Unit!20170)

(assert (=> b!616973 (= e!353788 Unit!20176)))

(declare-fun b!616974 () Bool)

(declare-fun res!397555 () Bool)

(assert (=> b!616974 (=> (not res!397555) (not e!353778))))

(assert (=> b!616974 (= res!397555 (and (= (size!18352 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18352 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18352 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616975 () Bool)

(declare-fun e!353781 () Bool)

(declare-fun e!353784 () Bool)

(assert (=> b!616975 (= e!353781 e!353784)))

(declare-fun res!397549 () Bool)

(assert (=> b!616975 (=> (not res!397549) (not e!353784))))

(assert (=> b!616975 (= res!397549 (and (= lt!284062 (Found!6435 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17988 a!2986) index!984) (select (arr!17988 a!2986) j!136))) (not (= (select (arr!17988 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37491 (_ BitVec 32)) SeekEntryResult!6435)

(assert (=> b!616975 (= lt!284062 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17988 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616976 () Bool)

(declare-fun e!353780 () Bool)

(assert (=> b!616976 (= e!353784 (not e!353780))))

(declare-fun res!397561 () Bool)

(assert (=> b!616976 (=> res!397561 e!353780)))

(declare-fun lt!284057 () SeekEntryResult!6435)

(assert (=> b!616976 (= res!397561 (not (= lt!284057 (MissingVacant!6435 vacantSpotIndex!68))))))

(declare-fun lt!284058 () Unit!20170)

(assert (=> b!616976 (= lt!284058 e!353788)))

(declare-fun c!70076 () Bool)

(assert (=> b!616976 (= c!70076 (= lt!284057 (Found!6435 index!984)))))

(declare-fun lt!284067 () Unit!20170)

(assert (=> b!616976 (= lt!284067 e!353779)))

(declare-fun c!70077 () Bool)

(assert (=> b!616976 (= c!70077 (= lt!284057 Undefined!6435))))

(declare-fun lt!284076 () (_ BitVec 64))

(assert (=> b!616976 (= lt!284057 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284076 lt!284072 mask!3053))))

(assert (=> b!616976 e!353791))

(declare-fun res!397558 () Bool)

(assert (=> b!616976 (=> (not res!397558) (not e!353791))))

(declare-fun lt!284061 () (_ BitVec 32))

(assert (=> b!616976 (= res!397558 (= lt!284060 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284061 vacantSpotIndex!68 lt!284076 lt!284072 mask!3053)))))

(assert (=> b!616976 (= lt!284060 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284061 vacantSpotIndex!68 (select (arr!17988 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616976 (= lt!284076 (select (store (arr!17988 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284065 () Unit!20170)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20170)

(assert (=> b!616976 (= lt!284065 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284061 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616976 (= lt!284061 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616977 () Bool)

(declare-fun res!397556 () Bool)

(assert (=> b!616977 (= res!397556 (arrayContainsKey!0 lt!284072 (select (arr!17988 a!2986) j!136) j!136))))

(assert (=> b!616977 (=> (not res!397556) (not e!353782))))

(assert (=> b!616977 (= e!353786 e!353782)))

(declare-fun b!616978 () Bool)

(declare-fun res!397554 () Bool)

(assert (=> b!616978 (=> (not res!397554) (not e!353789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37491 (_ BitVec 32)) Bool)

(assert (=> b!616978 (= res!397554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616979 () Bool)

(assert (=> b!616979 (= e!353778 e!353789)))

(declare-fun res!397547 () Bool)

(assert (=> b!616979 (=> (not res!397547) (not e!353789))))

(declare-fun lt!284066 () SeekEntryResult!6435)

(assert (=> b!616979 (= res!397547 (or (= lt!284066 (MissingZero!6435 i!1108)) (= lt!284066 (MissingVacant!6435 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37491 (_ BitVec 32)) SeekEntryResult!6435)

(assert (=> b!616979 (= lt!284066 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616980 () Bool)

(declare-fun res!397546 () Bool)

(assert (=> b!616980 (=> (not res!397546) (not e!353778))))

(assert (=> b!616980 (= res!397546 (validKeyInArray!0 k!1786))))

(declare-fun b!616981 () Bool)

(declare-fun res!397551 () Bool)

(assert (=> b!616981 (=> (not res!397551) (not e!353789))))

(assert (=> b!616981 (= res!397551 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12079))))

(declare-fun b!616982 () Bool)

(declare-fun Unit!20177 () Unit!20170)

(assert (=> b!616982 (= e!353783 Unit!20177)))

(declare-fun b!616983 () Bool)

(assert (=> b!616983 (= e!353780 true)))

(assert (=> b!616983 (= (select (store (arr!17988 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616984 () Bool)

(declare-fun res!397560 () Bool)

(assert (=> b!616984 (=> (not res!397560) (not e!353778))))

(assert (=> b!616984 (= res!397560 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616985 () Bool)

(assert (=> b!616985 false))

(declare-fun lt!284071 () Unit!20170)

(assert (=> b!616985 (= lt!284071 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284072 (select (arr!17988 a!2986) j!136) index!984 Nil!12079))))

(assert (=> b!616985 (arrayNoDuplicates!0 lt!284072 index!984 Nil!12079)))

(declare-fun lt!284074 () Unit!20170)

(assert (=> b!616985 (= lt!284074 (lemmaNoDuplicateFromThenFromBigger!0 lt!284072 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616985 (arrayNoDuplicates!0 lt!284072 #b00000000000000000000000000000000 Nil!12079)))

(declare-fun lt!284059 () Unit!20170)

(assert (=> b!616985 (= lt!284059 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12079))))

(assert (=> b!616985 (arrayContainsKey!0 lt!284072 (select (arr!17988 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284069 () Unit!20170)

(assert (=> b!616985 (= lt!284069 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284072 (select (arr!17988 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353790 () Bool)

(assert (=> b!616985 e!353790))

(declare-fun res!397562 () Bool)

(assert (=> b!616985 (=> (not res!397562) (not e!353790))))

(assert (=> b!616985 (= res!397562 (arrayContainsKey!0 lt!284072 (select (arr!17988 a!2986) j!136) j!136))))

(declare-fun Unit!20178 () Unit!20170)

(assert (=> b!616985 (= e!353783 Unit!20178)))

(declare-fun b!616986 () Bool)

(declare-fun Unit!20179 () Unit!20170)

(assert (=> b!616986 (= e!353779 Unit!20179)))

(declare-fun b!616987 () Bool)

(assert (=> b!616987 (= e!353790 (arrayContainsKey!0 lt!284072 (select (arr!17988 a!2986) j!136) index!984))))

(declare-fun b!616988 () Bool)

(assert (=> b!616988 (= e!353789 e!353781)))

(declare-fun res!397553 () Bool)

(assert (=> b!616988 (=> (not res!397553) (not e!353781))))

(assert (=> b!616988 (= res!397553 (= (select (store (arr!17988 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616988 (= lt!284072 (array!37492 (store (arr!17988 a!2986) i!1108 k!1786) (size!18352 a!2986)))))

(assert (= (and start!56058 res!397552) b!616974))

(assert (= (and b!616974 res!397555) b!616971))

(assert (= (and b!616971 res!397550) b!616980))

(assert (= (and b!616980 res!397546) b!616984))

(assert (= (and b!616984 res!397560) b!616979))

(assert (= (and b!616979 res!397547) b!616978))

(assert (= (and b!616978 res!397554) b!616981))

(assert (= (and b!616981 res!397551) b!616969))

(assert (= (and b!616969 res!397557) b!616988))

(assert (= (and b!616988 res!397553) b!616975))

(assert (= (and b!616975 res!397549) b!616976))

(assert (= (and b!616976 res!397558) b!616970))

(assert (= (and b!616976 c!70077) b!616967))

(assert (= (and b!616976 (not c!70077)) b!616986))

(assert (= (and b!616976 c!70076) b!616972))

(assert (= (and b!616976 (not c!70076)) b!616973))

(assert (= (and b!616972 res!397548) b!616964))

(assert (= (and b!616964 (not res!397559)) b!616977))

(assert (= (and b!616977 res!397556) b!616966))

(assert (= (and b!616972 c!70078) b!616968))

(assert (= (and b!616972 (not c!70078)) b!616965))

(assert (= (and b!616972 c!70079) b!616985))

(assert (= (and b!616972 (not c!70079)) b!616982))

(assert (= (and b!616985 res!397562) b!616987))

(assert (= (and b!616976 (not res!397561)) b!616983))

(declare-fun m!593139 () Bool)

(assert (=> b!616981 m!593139))

(declare-fun m!593141 () Bool)

(assert (=> b!616966 m!593141))

(assert (=> b!616966 m!593141))

(declare-fun m!593143 () Bool)

(assert (=> b!616966 m!593143))

(declare-fun m!593145 () Bool)

(assert (=> b!616979 m!593145))

(declare-fun m!593147 () Bool)

(assert (=> b!616975 m!593147))

(assert (=> b!616975 m!593141))

(assert (=> b!616975 m!593141))

(declare-fun m!593149 () Bool)

(assert (=> b!616975 m!593149))

(assert (=> b!616987 m!593141))

(assert (=> b!616987 m!593141))

(assert (=> b!616987 m!593143))

(assert (=> b!616977 m!593141))

(assert (=> b!616977 m!593141))

(declare-fun m!593151 () Bool)

(assert (=> b!616977 m!593151))

(declare-fun m!593153 () Bool)

(assert (=> b!616980 m!593153))

(assert (=> b!616968 m!593141))

(assert (=> b!616968 m!593141))

(declare-fun m!593155 () Bool)

(assert (=> b!616968 m!593155))

(assert (=> b!616968 m!593141))

(declare-fun m!593157 () Bool)

(assert (=> b!616968 m!593157))

(declare-fun m!593159 () Bool)

(assert (=> b!616968 m!593159))

(assert (=> b!616968 m!593141))

(declare-fun m!593161 () Bool)

(assert (=> b!616968 m!593161))

(declare-fun m!593163 () Bool)

(assert (=> b!616968 m!593163))

(declare-fun m!593165 () Bool)

(assert (=> b!616968 m!593165))

(declare-fun m!593167 () Bool)

(assert (=> b!616968 m!593167))

(declare-fun m!593169 () Bool)

(assert (=> b!616988 m!593169))

(declare-fun m!593171 () Bool)

(assert (=> b!616988 m!593171))

(declare-fun m!593173 () Bool)

(assert (=> start!56058 m!593173))

(declare-fun m!593175 () Bool)

(assert (=> start!56058 m!593175))

(assert (=> b!616972 m!593169))

(declare-fun m!593177 () Bool)

(assert (=> b!616972 m!593177))

(assert (=> b!616972 m!593141))

(declare-fun m!593179 () Bool)

(assert (=> b!616976 m!593179))

(declare-fun m!593181 () Bool)

(assert (=> b!616976 m!593181))

(assert (=> b!616976 m!593141))

(assert (=> b!616976 m!593169))

(assert (=> b!616976 m!593141))

(declare-fun m!593183 () Bool)

(assert (=> b!616976 m!593183))

(declare-fun m!593185 () Bool)

(assert (=> b!616976 m!593185))

(declare-fun m!593187 () Bool)

(assert (=> b!616976 m!593187))

(declare-fun m!593189 () Bool)

(assert (=> b!616976 m!593189))

(declare-fun m!593191 () Bool)

(assert (=> b!616978 m!593191))

(assert (=> b!616971 m!593141))

(assert (=> b!616971 m!593141))

(declare-fun m!593193 () Bool)

(assert (=> b!616971 m!593193))

(declare-fun m!593195 () Bool)

(assert (=> b!616985 m!593195))

(assert (=> b!616985 m!593141))

(declare-fun m!593197 () Bool)

(assert (=> b!616985 m!593197))

(assert (=> b!616985 m!593141))

(assert (=> b!616985 m!593141))

(declare-fun m!593199 () Bool)

(assert (=> b!616985 m!593199))

(assert (=> b!616985 m!593141))

(declare-fun m!593201 () Bool)

(assert (=> b!616985 m!593201))

(declare-fun m!593203 () Bool)

(assert (=> b!616985 m!593203))

(assert (=> b!616985 m!593141))

(assert (=> b!616985 m!593151))

(assert (=> b!616985 m!593159))

(assert (=> b!616985 m!593167))

(assert (=> b!616983 m!593169))

(assert (=> b!616983 m!593177))

(declare-fun m!593205 () Bool)

(assert (=> b!616969 m!593205))

(declare-fun m!593207 () Bool)

(assert (=> b!616984 m!593207))

(push 1)

