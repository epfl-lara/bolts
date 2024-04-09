; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54920 () Bool)

(assert start!54920)

(declare-fun b!601125 () Bool)

(declare-fun res!386082 () Bool)

(declare-fun e!343715 () Bool)

(assert (=> b!601125 (=> (not res!386082) (not e!343715))))

(declare-datatypes ((array!37118 0))(
  ( (array!37119 (arr!17815 (Array (_ BitVec 32) (_ BitVec 64))) (size!18179 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37118)

(declare-datatypes ((List!11909 0))(
  ( (Nil!11906) (Cons!11905 (h!12950 (_ BitVec 64)) (t!18145 List!11909)) )
))
(declare-fun arrayNoDuplicates!0 (array!37118 (_ BitVec 32) List!11909) Bool)

(assert (=> b!601125 (= res!386082 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11906))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!343725 () Bool)

(declare-fun b!601126 () Bool)

(declare-fun lt!273690 () array!37118)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601126 (= e!343725 (arrayContainsKey!0 lt!273690 (select (arr!17815 a!2986) j!136) index!984))))

(declare-fun b!601127 () Bool)

(declare-fun e!343718 () Bool)

(declare-fun e!343714 () Bool)

(assert (=> b!601127 (= e!343718 e!343714)))

(declare-fun res!386091 () Bool)

(assert (=> b!601127 (=> res!386091 e!343714)))

(declare-fun lt!273682 () (_ BitVec 64))

(declare-fun lt!273680 () (_ BitVec 64))

(assert (=> b!601127 (= res!386091 (or (not (= (select (arr!17815 a!2986) j!136) lt!273682)) (not (= (select (arr!17815 a!2986) j!136) lt!273680))))))

(declare-fun e!343723 () Bool)

(assert (=> b!601127 e!343723))

(declare-fun res!386085 () Bool)

(assert (=> b!601127 (=> (not res!386085) (not e!343723))))

(assert (=> b!601127 (= res!386085 (= lt!273680 (select (arr!17815 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!601127 (= lt!273680 (select (store (arr!17815 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!601128 () Bool)

(declare-fun res!386081 () Bool)

(declare-fun e!343724 () Bool)

(assert (=> b!601128 (=> (not res!386081) (not e!343724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601128 (= res!386081 (validKeyInArray!0 (select (arr!17815 a!2986) j!136)))))

(declare-fun b!601129 () Bool)

(assert (=> b!601129 (= e!343724 e!343715)))

(declare-fun res!386084 () Bool)

(assert (=> b!601129 (=> (not res!386084) (not e!343715))))

(declare-datatypes ((SeekEntryResult!6262 0))(
  ( (MissingZero!6262 (index!27304 (_ BitVec 32))) (Found!6262 (index!27305 (_ BitVec 32))) (Intermediate!6262 (undefined!7074 Bool) (index!27306 (_ BitVec 32)) (x!56126 (_ BitVec 32))) (Undefined!6262) (MissingVacant!6262 (index!27307 (_ BitVec 32))) )
))
(declare-fun lt!273687 () SeekEntryResult!6262)

(assert (=> b!601129 (= res!386084 (or (= lt!273687 (MissingZero!6262 i!1108)) (= lt!273687 (MissingVacant!6262 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37118 (_ BitVec 32)) SeekEntryResult!6262)

(assert (=> b!601129 (= lt!273687 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!601130 () Bool)

(declare-fun res!386080 () Bool)

(assert (=> b!601130 (=> (not res!386080) (not e!343724))))

(assert (=> b!601130 (= res!386080 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601131 () Bool)

(declare-fun res!386093 () Bool)

(assert (=> b!601131 (=> (not res!386093) (not e!343724))))

(assert (=> b!601131 (= res!386093 (validKeyInArray!0 k0!1786))))

(declare-fun res!386083 () Bool)

(assert (=> start!54920 (=> (not res!386083) (not e!343724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54920 (= res!386083 (validMask!0 mask!3053))))

(assert (=> start!54920 e!343724))

(assert (=> start!54920 true))

(declare-fun array_inv!13589 (array!37118) Bool)

(assert (=> start!54920 (array_inv!13589 a!2986)))

(declare-fun b!601132 () Bool)

(declare-fun res!386086 () Bool)

(assert (=> b!601132 (=> (not res!386086) (not e!343715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37118 (_ BitVec 32)) Bool)

(assert (=> b!601132 (= res!386086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601133 () Bool)

(declare-fun e!343722 () Bool)

(assert (=> b!601133 (= e!343723 e!343722)))

(declare-fun res!386077 () Bool)

(assert (=> b!601133 (=> res!386077 e!343722)))

(assert (=> b!601133 (= res!386077 (or (not (= (select (arr!17815 a!2986) j!136) lt!273682)) (not (= (select (arr!17815 a!2986) j!136) lt!273680)) (bvsge j!136 index!984)))))

(declare-fun b!601134 () Bool)

(declare-datatypes ((Unit!19000 0))(
  ( (Unit!19001) )
))
(declare-fun e!343726 () Unit!19000)

(declare-fun Unit!19002 () Unit!19000)

(assert (=> b!601134 (= e!343726 Unit!19002)))

(declare-fun lt!273683 () Unit!19000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37118 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19000)

(assert (=> b!601134 (= lt!273683 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273690 (select (arr!17815 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601134 (arrayContainsKey!0 lt!273690 (select (arr!17815 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273685 () Unit!19000)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37118 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11909) Unit!19000)

(assert (=> b!601134 (= lt!273685 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11906))))

(assert (=> b!601134 (arrayNoDuplicates!0 lt!273690 #b00000000000000000000000000000000 Nil!11906)))

(declare-fun lt!273689 () Unit!19000)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37118 (_ BitVec 32) (_ BitVec 32)) Unit!19000)

(assert (=> b!601134 (= lt!273689 (lemmaNoDuplicateFromThenFromBigger!0 lt!273690 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601134 (arrayNoDuplicates!0 lt!273690 j!136 Nil!11906)))

(declare-fun lt!273693 () Unit!19000)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37118 (_ BitVec 64) (_ BitVec 32) List!11909) Unit!19000)

(assert (=> b!601134 (= lt!273693 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273690 (select (arr!17815 a!2986) j!136) j!136 Nil!11906))))

(assert (=> b!601134 false))

(declare-fun b!601135 () Bool)

(declare-fun Unit!19003 () Unit!19000)

(assert (=> b!601135 (= e!343726 Unit!19003)))

(declare-fun b!601136 () Bool)

(declare-fun e!343721 () Unit!19000)

(declare-fun Unit!19004 () Unit!19000)

(assert (=> b!601136 (= e!343721 Unit!19004)))

(declare-fun b!601137 () Bool)

(declare-fun e!343719 () Bool)

(assert (=> b!601137 (= e!343719 (not e!343718))))

(declare-fun res!386090 () Bool)

(assert (=> b!601137 (=> res!386090 e!343718)))

(declare-fun lt!273686 () SeekEntryResult!6262)

(assert (=> b!601137 (= res!386090 (not (= lt!273686 (Found!6262 index!984))))))

(declare-fun lt!273691 () Unit!19000)

(assert (=> b!601137 (= lt!273691 e!343721)))

(declare-fun c!67891 () Bool)

(assert (=> b!601137 (= c!67891 (= lt!273686 Undefined!6262))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37118 (_ BitVec 32)) SeekEntryResult!6262)

(assert (=> b!601137 (= lt!273686 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273682 lt!273690 mask!3053))))

(declare-fun e!343716 () Bool)

(assert (=> b!601137 e!343716))

(declare-fun res!386092 () Bool)

(assert (=> b!601137 (=> (not res!386092) (not e!343716))))

(declare-fun lt!273684 () SeekEntryResult!6262)

(declare-fun lt!273692 () (_ BitVec 32))

(assert (=> b!601137 (= res!386092 (= lt!273684 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273692 vacantSpotIndex!68 lt!273682 lt!273690 mask!3053)))))

(assert (=> b!601137 (= lt!273684 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273692 vacantSpotIndex!68 (select (arr!17815 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601137 (= lt!273682 (select (store (arr!17815 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273681 () Unit!19000)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37118 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19000)

(assert (=> b!601137 (= lt!273681 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273692 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601137 (= lt!273692 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601138 () Bool)

(declare-fun Unit!19005 () Unit!19000)

(assert (=> b!601138 (= e!343721 Unit!19005)))

(assert (=> b!601138 false))

(declare-fun b!601139 () Bool)

(declare-fun e!343717 () Bool)

(assert (=> b!601139 (= e!343715 e!343717)))

(declare-fun res!386088 () Bool)

(assert (=> b!601139 (=> (not res!386088) (not e!343717))))

(assert (=> b!601139 (= res!386088 (= (select (store (arr!17815 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601139 (= lt!273690 (array!37119 (store (arr!17815 a!2986) i!1108 k0!1786) (size!18179 a!2986)))))

(declare-fun b!601140 () Bool)

(declare-fun lt!273688 () SeekEntryResult!6262)

(assert (=> b!601140 (= e!343716 (= lt!273688 lt!273684))))

(declare-fun b!601141 () Bool)

(declare-fun res!386089 () Bool)

(assert (=> b!601141 (=> (not res!386089) (not e!343724))))

(assert (=> b!601141 (= res!386089 (and (= (size!18179 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18179 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18179 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601142 () Bool)

(assert (=> b!601142 (= e!343722 e!343725)))

(declare-fun res!386079 () Bool)

(assert (=> b!601142 (=> (not res!386079) (not e!343725))))

(assert (=> b!601142 (= res!386079 (arrayContainsKey!0 lt!273690 (select (arr!17815 a!2986) j!136) j!136))))

(declare-fun b!601143 () Bool)

(assert (=> b!601143 (= e!343714 true)))

(declare-fun lt!273679 () Unit!19000)

(assert (=> b!601143 (= lt!273679 e!343726)))

(declare-fun c!67892 () Bool)

(assert (=> b!601143 (= c!67892 (bvslt j!136 index!984))))

(declare-fun b!601144 () Bool)

(declare-fun res!386078 () Bool)

(assert (=> b!601144 (=> (not res!386078) (not e!343715))))

(assert (=> b!601144 (= res!386078 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17815 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601145 () Bool)

(assert (=> b!601145 (= e!343717 e!343719)))

(declare-fun res!386087 () Bool)

(assert (=> b!601145 (=> (not res!386087) (not e!343719))))

(assert (=> b!601145 (= res!386087 (and (= lt!273688 (Found!6262 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17815 a!2986) index!984) (select (arr!17815 a!2986) j!136))) (not (= (select (arr!17815 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!601145 (= lt!273688 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17815 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54920 res!386083) b!601141))

(assert (= (and b!601141 res!386089) b!601128))

(assert (= (and b!601128 res!386081) b!601131))

(assert (= (and b!601131 res!386093) b!601130))

(assert (= (and b!601130 res!386080) b!601129))

(assert (= (and b!601129 res!386084) b!601132))

(assert (= (and b!601132 res!386086) b!601125))

(assert (= (and b!601125 res!386082) b!601144))

(assert (= (and b!601144 res!386078) b!601139))

(assert (= (and b!601139 res!386088) b!601145))

(assert (= (and b!601145 res!386087) b!601137))

(assert (= (and b!601137 res!386092) b!601140))

(assert (= (and b!601137 c!67891) b!601138))

(assert (= (and b!601137 (not c!67891)) b!601136))

(assert (= (and b!601137 (not res!386090)) b!601127))

(assert (= (and b!601127 res!386085) b!601133))

(assert (= (and b!601133 (not res!386077)) b!601142))

(assert (= (and b!601142 res!386079) b!601126))

(assert (= (and b!601127 (not res!386091)) b!601143))

(assert (= (and b!601143 c!67892) b!601134))

(assert (= (and b!601143 (not c!67892)) b!601135))

(declare-fun m!578367 () Bool)

(assert (=> b!601134 m!578367))

(declare-fun m!578369 () Bool)

(assert (=> b!601134 m!578369))

(declare-fun m!578371 () Bool)

(assert (=> b!601134 m!578371))

(declare-fun m!578373 () Bool)

(assert (=> b!601134 m!578373))

(assert (=> b!601134 m!578371))

(assert (=> b!601134 m!578371))

(declare-fun m!578375 () Bool)

(assert (=> b!601134 m!578375))

(assert (=> b!601134 m!578371))

(declare-fun m!578377 () Bool)

(assert (=> b!601134 m!578377))

(declare-fun m!578379 () Bool)

(assert (=> b!601134 m!578379))

(declare-fun m!578381 () Bool)

(assert (=> b!601134 m!578381))

(declare-fun m!578383 () Bool)

(assert (=> b!601130 m!578383))

(declare-fun m!578385 () Bool)

(assert (=> b!601137 m!578385))

(declare-fun m!578387 () Bool)

(assert (=> b!601137 m!578387))

(assert (=> b!601137 m!578371))

(declare-fun m!578389 () Bool)

(assert (=> b!601137 m!578389))

(assert (=> b!601137 m!578371))

(declare-fun m!578391 () Bool)

(assert (=> b!601137 m!578391))

(declare-fun m!578393 () Bool)

(assert (=> b!601137 m!578393))

(declare-fun m!578395 () Bool)

(assert (=> b!601137 m!578395))

(declare-fun m!578397 () Bool)

(assert (=> b!601137 m!578397))

(assert (=> b!601133 m!578371))

(declare-fun m!578399 () Bool)

(assert (=> b!601125 m!578399))

(declare-fun m!578401 () Bool)

(assert (=> b!601145 m!578401))

(assert (=> b!601145 m!578371))

(assert (=> b!601145 m!578371))

(declare-fun m!578403 () Bool)

(assert (=> b!601145 m!578403))

(assert (=> b!601142 m!578371))

(assert (=> b!601142 m!578371))

(declare-fun m!578405 () Bool)

(assert (=> b!601142 m!578405))

(assert (=> b!601139 m!578389))

(declare-fun m!578407 () Bool)

(assert (=> b!601139 m!578407))

(declare-fun m!578409 () Bool)

(assert (=> b!601132 m!578409))

(assert (=> b!601127 m!578371))

(assert (=> b!601127 m!578389))

(declare-fun m!578411 () Bool)

(assert (=> b!601127 m!578411))

(declare-fun m!578413 () Bool)

(assert (=> b!601131 m!578413))

(declare-fun m!578415 () Bool)

(assert (=> start!54920 m!578415))

(declare-fun m!578417 () Bool)

(assert (=> start!54920 m!578417))

(assert (=> b!601126 m!578371))

(assert (=> b!601126 m!578371))

(declare-fun m!578419 () Bool)

(assert (=> b!601126 m!578419))

(declare-fun m!578421 () Bool)

(assert (=> b!601144 m!578421))

(declare-fun m!578423 () Bool)

(assert (=> b!601129 m!578423))

(assert (=> b!601128 m!578371))

(assert (=> b!601128 m!578371))

(declare-fun m!578425 () Bool)

(assert (=> b!601128 m!578425))

(check-sat (not b!601137) (not b!601134) (not b!601130) (not b!601126) (not b!601132) (not b!601142) (not b!601128) (not b!601129) (not b!601131) (not b!601125) (not b!601145) (not start!54920))
(check-sat)
