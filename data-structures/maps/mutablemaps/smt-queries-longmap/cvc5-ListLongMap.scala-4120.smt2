; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56226 () Bool)

(assert start!56226)

(declare-fun b!623129 () Bool)

(declare-fun e!357434 () Bool)

(declare-fun e!357426 () Bool)

(assert (=> b!623129 (= e!357434 e!357426)))

(declare-fun res!401699 () Bool)

(assert (=> b!623129 (=> (not res!401699) (not e!357426))))

(declare-datatypes ((SeekEntryResult!6519 0))(
  ( (MissingZero!6519 (index!28359 (_ BitVec 32))) (Found!6519 (index!28360 (_ BitVec 32))) (Intermediate!6519 (undefined!7331 Bool) (index!28361 (_ BitVec 32)) (x!57152 (_ BitVec 32))) (Undefined!6519) (MissingVacant!6519 (index!28362 (_ BitVec 32))) )
))
(declare-fun lt!289103 () SeekEntryResult!6519)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623129 (= res!401699 (or (= lt!289103 (MissingZero!6519 i!1108)) (= lt!289103 (MissingVacant!6519 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37659 0))(
  ( (array!37660 (arr!18072 (Array (_ BitVec 32) (_ BitVec 64))) (size!18436 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37659)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37659 (_ BitVec 32)) SeekEntryResult!6519)

(assert (=> b!623129 (= lt!289103 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!401710 () Bool)

(declare-fun lt!289111 () array!37659)

(declare-fun b!623130 () Bool)

(declare-fun arrayContainsKey!0 (array!37659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623130 (= res!401710 (arrayContainsKey!0 lt!289111 (select (arr!18072 a!2986) j!136) j!136))))

(declare-fun e!357431 () Bool)

(assert (=> b!623130 (=> (not res!401710) (not e!357431))))

(declare-fun e!357425 () Bool)

(assert (=> b!623130 (= e!357425 e!357431)))

(declare-fun b!623131 () Bool)

(declare-fun res!401707 () Bool)

(assert (=> b!623131 (=> (not res!401707) (not e!357434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623131 (= res!401707 (validKeyInArray!0 (select (arr!18072 a!2986) j!136)))))

(declare-fun b!623132 () Bool)

(declare-fun e!357436 () Bool)

(declare-fun e!357423 () Bool)

(assert (=> b!623132 (= e!357436 e!357423)))

(declare-fun res!401700 () Bool)

(assert (=> b!623132 (=> (not res!401700) (not e!357423))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!289099 () SeekEntryResult!6519)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623132 (= res!401700 (and (= lt!289099 (Found!6519 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18072 a!2986) index!984) (select (arr!18072 a!2986) j!136))) (not (= (select (arr!18072 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37659 (_ BitVec 32)) SeekEntryResult!6519)

(assert (=> b!623132 (= lt!289099 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18072 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!401697 () Bool)

(assert (=> start!56226 (=> (not res!401697) (not e!357434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56226 (= res!401697 (validMask!0 mask!3053))))

(assert (=> start!56226 e!357434))

(assert (=> start!56226 true))

(declare-fun array_inv!13846 (array!37659) Bool)

(assert (=> start!56226 (array_inv!13846 a!2986)))

(declare-fun b!623133 () Bool)

(declare-fun res!401703 () Bool)

(assert (=> b!623133 (=> (not res!401703) (not e!357434))))

(assert (=> b!623133 (= res!401703 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623134 () Bool)

(assert (=> b!623134 false))

(declare-datatypes ((Unit!21010 0))(
  ( (Unit!21011) )
))
(declare-fun lt!289113 () Unit!21010)

(declare-datatypes ((List!12166 0))(
  ( (Nil!12163) (Cons!12162 (h!13207 (_ BitVec 64)) (t!18402 List!12166)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37659 (_ BitVec 64) (_ BitVec 32) List!12166) Unit!21010)

(assert (=> b!623134 (= lt!289113 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289111 (select (arr!18072 a!2986) j!136) index!984 Nil!12163))))

(declare-fun arrayNoDuplicates!0 (array!37659 (_ BitVec 32) List!12166) Bool)

(assert (=> b!623134 (arrayNoDuplicates!0 lt!289111 index!984 Nil!12163)))

(declare-fun lt!289112 () Unit!21010)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37659 (_ BitVec 32) (_ BitVec 32)) Unit!21010)

(assert (=> b!623134 (= lt!289112 (lemmaNoDuplicateFromThenFromBigger!0 lt!289111 #b00000000000000000000000000000000 index!984))))

(assert (=> b!623134 (arrayNoDuplicates!0 lt!289111 #b00000000000000000000000000000000 Nil!12163)))

(declare-fun lt!289098 () Unit!21010)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37659 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12166) Unit!21010)

(assert (=> b!623134 (= lt!289098 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12163))))

(assert (=> b!623134 (arrayContainsKey!0 lt!289111 (select (arr!18072 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!289104 () Unit!21010)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37659 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21010)

(assert (=> b!623134 (= lt!289104 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289111 (select (arr!18072 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357428 () Bool)

(assert (=> b!623134 e!357428))

(declare-fun res!401711 () Bool)

(assert (=> b!623134 (=> (not res!401711) (not e!357428))))

(assert (=> b!623134 (= res!401711 (arrayContainsKey!0 lt!289111 (select (arr!18072 a!2986) j!136) j!136))))

(declare-fun e!357433 () Unit!21010)

(declare-fun Unit!21012 () Unit!21010)

(assert (=> b!623134 (= e!357433 Unit!21012)))

(declare-fun b!623135 () Bool)

(declare-fun e!357435 () Unit!21010)

(declare-fun Unit!21013 () Unit!21010)

(assert (=> b!623135 (= e!357435 Unit!21013)))

(declare-fun b!623136 () Bool)

(assert (=> b!623136 (= e!357428 (arrayContainsKey!0 lt!289111 (select (arr!18072 a!2986) j!136) index!984))))

(declare-fun b!623137 () Bool)

(assert (=> b!623137 false))

(declare-fun lt!289110 () Unit!21010)

(assert (=> b!623137 (= lt!289110 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289111 (select (arr!18072 a!2986) j!136) j!136 Nil!12163))))

(assert (=> b!623137 (arrayNoDuplicates!0 lt!289111 j!136 Nil!12163)))

(declare-fun lt!289100 () Unit!21010)

(assert (=> b!623137 (= lt!289100 (lemmaNoDuplicateFromThenFromBigger!0 lt!289111 #b00000000000000000000000000000000 j!136))))

(assert (=> b!623137 (arrayNoDuplicates!0 lt!289111 #b00000000000000000000000000000000 Nil!12163)))

(declare-fun lt!289097 () Unit!21010)

(assert (=> b!623137 (= lt!289097 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12163))))

(assert (=> b!623137 (arrayContainsKey!0 lt!289111 (select (arr!18072 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!289106 () Unit!21010)

(assert (=> b!623137 (= lt!289106 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289111 (select (arr!18072 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357427 () Unit!21010)

(declare-fun Unit!21014 () Unit!21010)

(assert (=> b!623137 (= e!357427 Unit!21014)))

(declare-fun b!623138 () Bool)

(declare-fun e!357429 () Unit!21010)

(declare-fun Unit!21015 () Unit!21010)

(assert (=> b!623138 (= e!357429 Unit!21015)))

(declare-fun b!623139 () Bool)

(declare-fun e!357424 () Bool)

(assert (=> b!623139 (= e!357423 (not e!357424))))

(declare-fun res!401698 () Bool)

(assert (=> b!623139 (=> res!401698 e!357424)))

(declare-fun lt!289114 () SeekEntryResult!6519)

(assert (=> b!623139 (= res!401698 (or (= lt!289114 (MissingVacant!6519 vacantSpotIndex!68)) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!289102 () Unit!21010)

(assert (=> b!623139 (= lt!289102 e!357435)))

(declare-fun c!71086 () Bool)

(assert (=> b!623139 (= c!71086 (= lt!289114 (Found!6519 index!984)))))

(declare-fun lt!289108 () Unit!21010)

(assert (=> b!623139 (= lt!289108 e!357429)))

(declare-fun c!71084 () Bool)

(assert (=> b!623139 (= c!71084 (= lt!289114 Undefined!6519))))

(declare-fun lt!289109 () (_ BitVec 64))

(assert (=> b!623139 (= lt!289114 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289109 lt!289111 mask!3053))))

(declare-fun e!357430 () Bool)

(assert (=> b!623139 e!357430))

(declare-fun res!401708 () Bool)

(assert (=> b!623139 (=> (not res!401708) (not e!357430))))

(declare-fun lt!289101 () SeekEntryResult!6519)

(declare-fun lt!289115 () (_ BitVec 32))

(assert (=> b!623139 (= res!401708 (= lt!289101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289115 vacantSpotIndex!68 lt!289109 lt!289111 mask!3053)))))

(assert (=> b!623139 (= lt!289101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289115 vacantSpotIndex!68 (select (arr!18072 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623139 (= lt!289109 (select (store (arr!18072 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289116 () Unit!21010)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21010)

(assert (=> b!623139 (= lt!289116 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289115 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623139 (= lt!289115 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623140 () Bool)

(declare-fun res!401706 () Bool)

(assert (=> b!623140 (=> (not res!401706) (not e!357434))))

(assert (=> b!623140 (= res!401706 (validKeyInArray!0 k!1786))))

(declare-fun b!623141 () Bool)

(assert (=> b!623141 (= e!357431 (arrayContainsKey!0 lt!289111 (select (arr!18072 a!2986) j!136) index!984))))

(declare-fun b!623142 () Bool)

(declare-fun res!401704 () Bool)

(assert (=> b!623142 (= res!401704 (bvsge j!136 index!984))))

(assert (=> b!623142 (=> res!401704 e!357425)))

(declare-fun e!357432 () Bool)

(assert (=> b!623142 (= e!357432 e!357425)))

(declare-fun b!623143 () Bool)

(declare-fun Unit!21016 () Unit!21010)

(assert (=> b!623143 (= e!357427 Unit!21016)))

(declare-fun b!623144 () Bool)

(declare-fun res!401709 () Bool)

(assert (=> b!623144 (=> (not res!401709) (not e!357434))))

(assert (=> b!623144 (= res!401709 (and (= (size!18436 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18436 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18436 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623145 () Bool)

(declare-fun Unit!21017 () Unit!21010)

(assert (=> b!623145 (= e!357435 Unit!21017)))

(declare-fun res!401696 () Bool)

(assert (=> b!623145 (= res!401696 (= (select (store (arr!18072 a!2986) i!1108 k!1786) index!984) (select (arr!18072 a!2986) j!136)))))

(assert (=> b!623145 (=> (not res!401696) (not e!357432))))

(assert (=> b!623145 e!357432))

(declare-fun c!71085 () Bool)

(assert (=> b!623145 (= c!71085 (bvslt j!136 index!984))))

(declare-fun lt!289105 () Unit!21010)

(assert (=> b!623145 (= lt!289105 e!357427)))

(declare-fun c!71087 () Bool)

(assert (=> b!623145 (= c!71087 (bvslt index!984 j!136))))

(declare-fun lt!289107 () Unit!21010)

(assert (=> b!623145 (= lt!289107 e!357433)))

(assert (=> b!623145 false))

(declare-fun b!623146 () Bool)

(declare-fun res!401705 () Bool)

(assert (=> b!623146 (=> (not res!401705) (not e!357426))))

(assert (=> b!623146 (= res!401705 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12163))))

(declare-fun b!623147 () Bool)

(declare-fun res!401701 () Bool)

(assert (=> b!623147 (=> (not res!401701) (not e!357426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37659 (_ BitVec 32)) Bool)

(assert (=> b!623147 (= res!401701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623148 () Bool)

(declare-fun res!401695 () Bool)

(assert (=> b!623148 (=> (not res!401695) (not e!357426))))

(assert (=> b!623148 (= res!401695 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18072 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623149 () Bool)

(assert (=> b!623149 (= e!357424 (validKeyInArray!0 lt!289109))))

(declare-fun b!623150 () Bool)

(declare-fun Unit!21018 () Unit!21010)

(assert (=> b!623150 (= e!357433 Unit!21018)))

(declare-fun b!623151 () Bool)

(declare-fun Unit!21019 () Unit!21010)

(assert (=> b!623151 (= e!357429 Unit!21019)))

(assert (=> b!623151 false))

(declare-fun b!623152 () Bool)

(assert (=> b!623152 (= e!357426 e!357436)))

(declare-fun res!401702 () Bool)

(assert (=> b!623152 (=> (not res!401702) (not e!357436))))

(assert (=> b!623152 (= res!401702 (= (select (store (arr!18072 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623152 (= lt!289111 (array!37660 (store (arr!18072 a!2986) i!1108 k!1786) (size!18436 a!2986)))))

(declare-fun b!623153 () Bool)

(assert (=> b!623153 (= e!357430 (= lt!289099 lt!289101))))

(assert (= (and start!56226 res!401697) b!623144))

(assert (= (and b!623144 res!401709) b!623131))

(assert (= (and b!623131 res!401707) b!623140))

(assert (= (and b!623140 res!401706) b!623133))

(assert (= (and b!623133 res!401703) b!623129))

(assert (= (and b!623129 res!401699) b!623147))

(assert (= (and b!623147 res!401701) b!623146))

(assert (= (and b!623146 res!401705) b!623148))

(assert (= (and b!623148 res!401695) b!623152))

(assert (= (and b!623152 res!401702) b!623132))

(assert (= (and b!623132 res!401700) b!623139))

(assert (= (and b!623139 res!401708) b!623153))

(assert (= (and b!623139 c!71084) b!623151))

(assert (= (and b!623139 (not c!71084)) b!623138))

(assert (= (and b!623139 c!71086) b!623145))

(assert (= (and b!623139 (not c!71086)) b!623135))

(assert (= (and b!623145 res!401696) b!623142))

(assert (= (and b!623142 (not res!401704)) b!623130))

(assert (= (and b!623130 res!401710) b!623141))

(assert (= (and b!623145 c!71085) b!623137))

(assert (= (and b!623145 (not c!71085)) b!623143))

(assert (= (and b!623145 c!71087) b!623134))

(assert (= (and b!623145 (not c!71087)) b!623150))

(assert (= (and b!623134 res!401711) b!623136))

(assert (= (and b!623139 (not res!401698)) b!623149))

(declare-fun m!599019 () Bool)

(assert (=> b!623149 m!599019))

(declare-fun m!599021 () Bool)

(assert (=> b!623141 m!599021))

(assert (=> b!623141 m!599021))

(declare-fun m!599023 () Bool)

(assert (=> b!623141 m!599023))

(assert (=> b!623137 m!599021))

(assert (=> b!623137 m!599021))

(declare-fun m!599025 () Bool)

(assert (=> b!623137 m!599025))

(assert (=> b!623137 m!599021))

(declare-fun m!599027 () Bool)

(assert (=> b!623137 m!599027))

(declare-fun m!599029 () Bool)

(assert (=> b!623137 m!599029))

(assert (=> b!623137 m!599021))

(declare-fun m!599031 () Bool)

(assert (=> b!623137 m!599031))

(declare-fun m!599033 () Bool)

(assert (=> b!623137 m!599033))

(declare-fun m!599035 () Bool)

(assert (=> b!623137 m!599035))

(declare-fun m!599037 () Bool)

(assert (=> b!623137 m!599037))

(declare-fun m!599039 () Bool)

(assert (=> start!56226 m!599039))

(declare-fun m!599041 () Bool)

(assert (=> start!56226 m!599041))

(declare-fun m!599043 () Bool)

(assert (=> b!623132 m!599043))

(assert (=> b!623132 m!599021))

(assert (=> b!623132 m!599021))

(declare-fun m!599045 () Bool)

(assert (=> b!623132 m!599045))

(declare-fun m!599047 () Bool)

(assert (=> b!623140 m!599047))

(assert (=> b!623130 m!599021))

(assert (=> b!623130 m!599021))

(declare-fun m!599049 () Bool)

(assert (=> b!623130 m!599049))

(declare-fun m!599051 () Bool)

(assert (=> b!623145 m!599051))

(declare-fun m!599053 () Bool)

(assert (=> b!623145 m!599053))

(assert (=> b!623145 m!599021))

(declare-fun m!599055 () Bool)

(assert (=> b!623129 m!599055))

(assert (=> b!623134 m!599021))

(declare-fun m!599057 () Bool)

(assert (=> b!623134 m!599057))

(assert (=> b!623134 m!599021))

(declare-fun m!599059 () Bool)

(assert (=> b!623134 m!599059))

(assert (=> b!623134 m!599021))

(declare-fun m!599061 () Bool)

(assert (=> b!623134 m!599061))

(assert (=> b!623134 m!599035))

(assert (=> b!623134 m!599021))

(assert (=> b!623134 m!599049))

(assert (=> b!623134 m!599021))

(declare-fun m!599063 () Bool)

(assert (=> b!623134 m!599063))

(declare-fun m!599065 () Bool)

(assert (=> b!623134 m!599065))

(assert (=> b!623134 m!599033))

(assert (=> b!623152 m!599051))

(declare-fun m!599067 () Bool)

(assert (=> b!623152 m!599067))

(declare-fun m!599069 () Bool)

(assert (=> b!623147 m!599069))

(declare-fun m!599071 () Bool)

(assert (=> b!623146 m!599071))

(declare-fun m!599073 () Bool)

(assert (=> b!623148 m!599073))

(assert (=> b!623131 m!599021))

(assert (=> b!623131 m!599021))

(declare-fun m!599075 () Bool)

(assert (=> b!623131 m!599075))

(declare-fun m!599077 () Bool)

(assert (=> b!623133 m!599077))

(declare-fun m!599079 () Bool)

(assert (=> b!623139 m!599079))

(declare-fun m!599081 () Bool)

(assert (=> b!623139 m!599081))

(declare-fun m!599083 () Bool)

(assert (=> b!623139 m!599083))

(assert (=> b!623139 m!599021))

(assert (=> b!623139 m!599051))

(declare-fun m!599085 () Bool)

(assert (=> b!623139 m!599085))

(declare-fun m!599087 () Bool)

(assert (=> b!623139 m!599087))

(assert (=> b!623139 m!599021))

(declare-fun m!599089 () Bool)

(assert (=> b!623139 m!599089))

(assert (=> b!623136 m!599021))

(assert (=> b!623136 m!599021))

(assert (=> b!623136 m!599023))

(push 1)

